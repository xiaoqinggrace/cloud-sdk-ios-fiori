// Source: https://github.com/siteline/swiftui-introspect
/**
 MIT License:
 
 Copyright 2019 Timber Software
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
#if !os(watchOS)
    import SwiftUI

    typealias IntrospectionViewID = UUID

    @MainActor
    fileprivate enum IntrospectionStore {
        static var shared: [IntrospectionViewID: Pair] = [:]

        struct Pair {
            weak var controller: IntrospectionPlatformViewController?
            weak var anchor: IntrospectionAnchorPlatformViewController?
        }
    }

    extension PlatformEntity {
        var introspectionAnchorEntity: Base? {
            if let introspectionController = self as? IntrospectionPlatformViewController {
                return IntrospectionStore.shared[introspectionController.id]?.anchor~
            }
            if
                let view = self as? PlatformView,
                let introspectionController = view.introspectionController
            {
                return IntrospectionStore.shared[introspectionController.id]?.anchor?.view~
            }
            return nil
        }
    }

    /// ⚓️
    struct IntrospectionAnchorView: PlatformViewControllerRepresentable {
        #if canImport(UIKit)
            typealias UIViewControllerType = IntrospectionAnchorPlatformViewController
        #elseif canImport(AppKit)
            typealias NSViewControllerType = IntrospectionAnchorPlatformViewController
        #endif

        @Binding
        private var observed: Void // workaround for state changes not triggering view updates

        let id: IntrospectionViewID

        init(id: IntrospectionViewID) {
            self._observed = .constant(())
            self.id = id
        }

        func makePlatformViewController(context: Context) -> IntrospectionAnchorPlatformViewController {
            IntrospectionAnchorPlatformViewController(id: self.id)
        }

        func updatePlatformViewController(_ controller: IntrospectionAnchorPlatformViewController, context: Context) {}

        static func dismantlePlatformViewController(_ controller: IntrospectionAnchorPlatformViewController, coordinator: Coordinator) {}
    }

    final class IntrospectionAnchorPlatformViewController: PlatformViewController {
        init(id: IntrospectionViewID) {
            super.init(nibName: nil, bundle: nil)
            self.isIntrospectionPlatformEntity = true
            IntrospectionStore.shared[id, default: .init()].anchor = self
        }

        @available(*, unavailable)
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        #if canImport(UIKit)
            override func viewDidLoad() {
                super.viewDidLoad()
                view.isIntrospectionPlatformEntity = true
            }

        #elseif canImport(AppKit)
            override func loadView() {
                view = NSView()
                view.isIntrospectionPlatformEntity = true
            }
        #endif
    }

    struct IntrospectionView<Target: PlatformEntity>: PlatformViewControllerRepresentable {
        #if canImport(UIKit)
            typealias UIViewControllerType = IntrospectionPlatformViewController
        #elseif canImport(AppKit)
            typealias NSViewControllerType = IntrospectionPlatformViewController
        #endif

        final class TargetCache {
            weak var target: Target?
        }

        @Binding
        private var observed: Void // workaround for state changes not triggering view updates
        private let id: IntrospectionViewID
        private let selector: (IntrospectionPlatformViewController) -> Target?
        private let customize: (Target) -> Void

        init(
            id: IntrospectionViewID,
            selector: @escaping (IntrospectionPlatformViewController) -> Target?,
            customize: @escaping (Target) -> Void
        ) {
            self._observed = .constant(())
            self.id = id
            self.selector = selector
            self.customize = customize
        }

        func makeCoordinator() -> TargetCache {
            TargetCache()
        }

        func makePlatformViewController(context: Context) -> IntrospectionPlatformViewController {
            let controller = IntrospectionPlatformViewController(id: id) { controller in
                guard let target = selector(controller) else {
                    return
                }
                context.coordinator.target = target
                self.customize(target)
                controller.handler = nil
            }

            // - Workaround -
            // iOS/tvOS 13 sometimes need a nudge on the next run loop.
            if #available(iOS 14, tvOS 14, *) {} else {
                DispatchQueue.main.async { [weak controller] in
                    controller?.handler?()
                }
            }

            return controller
        }

        func updatePlatformViewController(_ controller: IntrospectionPlatformViewController, context: Context) {
            guard let target = context.coordinator.target ?? selector(controller) else {
                return
            }
            self.customize(target)
        }

        static func dismantlePlatformViewController(_ controller: IntrospectionPlatformViewController, coordinator: Coordinator) {
            controller.handler = nil
        }
    }

    final class IntrospectionPlatformViewController: PlatformViewController {
        let id: IntrospectionViewID
        var handler: (() -> Void)? = nil

        fileprivate init(
            id: IntrospectionViewID,
            handler: ((IntrospectionPlatformViewController) -> Void)?
        ) {
            self.id = id
            super.init(nibName: nil, bundle: nil)
            self.handler = { [weak self] in
                guard let self else {
                    return
                }
                handler?(self)
            }
            self.isIntrospectionPlatformEntity = true
            IntrospectionStore.shared[id, default: .init()].controller = self
        }

        @available(*, unavailable)
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        #if canImport(UIKit)
            #if os(iOS)
                override var preferredStatusBarStyle: UIStatusBarStyle {
                    parent?.preferredStatusBarStyle ?? super.preferredStatusBarStyle
                }
            #endif

            override func viewDidLoad() {
                super.viewDidLoad()
                view.introspectionController = self
                view.isIntrospectionPlatformEntity = true
                self.handler?()
            }

            override func didMove(toParent parent: UIViewController?) {
                super.didMove(toParent: parent)
                self.handler?()
            }

            override func viewDidLayoutSubviews() {
                super.viewDidLayoutSubviews()
                self.handler?()
            }

            override func viewDidAppear(_ animated: Bool) {
                super.viewDidAppear(animated)
                self.handler?()
            }

        #elseif canImport(AppKit)
            override func loadView() {
                view = NSView()
                view.introspectionController = self
                view.isIntrospectionPlatformEntity = true
            }

            override func viewDidLoad() {
                super.viewDidLoad()
                self.handler?()
            }

            override func viewDidAppear() {
                super.viewDidAppear()
                self.handler?()
            }
        #endif
    }

    import ObjectiveC

    fileprivate extension PlatformView {
        var introspectionController: IntrospectionPlatformViewController? {
            get {
                let key = unsafeBitCast(Selector(#function), to: UnsafeRawPointer.self)
                return objc_getAssociatedObject(self, key) as? IntrospectionPlatformViewController
            }
            set {
                let key = unsafeBitCast(Selector(#function), to: UnsafeRawPointer.self)
                objc_setAssociatedObject(self, key, newValue, .OBJC_ASSOCIATION_ASSIGN)
            }
        }
    }

    extension PlatformEntity {
        var isIntrospectionPlatformEntity: Bool {
            get {
                let key = unsafeBitCast(Selector(#function), to: UnsafeRawPointer.self)
                return objc_getAssociatedObject(self, key) as? Bool ?? false
            }
            set {
                let key = unsafeBitCast(Selector(#function), to: UnsafeRawPointer.self)
                objc_setAssociatedObject(self, key, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
#endif
