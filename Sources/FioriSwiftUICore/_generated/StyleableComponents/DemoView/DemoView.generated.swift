// Generated using Sourcery 2.1.7 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
import Foundation
import SwiftUI

struct DemoView {
    let title: any View
    let subtitle: any View
    let status: any View
    let action: any View
    @Binding var isOn: Bool

    @Environment(\.demoViewStyle) var style

    var componentIdentifier: String = DemoView.identifier

    fileprivate var _shouldApplyDefaultStyle = true

    public init(@ViewBuilder title: () -> any View,
                @ViewBuilder subtitle: () -> any View = { EmptyView() },
                @ViewBuilder status: () -> any View = { EmptyView() },
                @ViewBuilder action: () -> any View = { EmptyView() },
                isOn: Binding<Bool>,
                componentIdentifier: String? = DemoView.identifier)
    {
        self.title = Title(title: title, componentIdentifier: componentIdentifier)
        self.subtitle = Subtitle(subtitle: subtitle, componentIdentifier: componentIdentifier)
        self.status = Status(status: status, componentIdentifier: componentIdentifier)
        self.action = Action(action: action, componentIdentifier: componentIdentifier)
        self._isOn = isOn
        self.componentIdentifier = componentIdentifier ?? DemoView.identifier
    }
}

extension DemoView {
    public static let identifier = "fiori_demoview_component"
}

extension DemoView {
    init(title: AttributedString,
         subtitle: AttributedString? = nil,
         status: TextOrIcon? = nil,
         action: FioriButton? = nil,
         isOn: Binding<Bool>)
    {
        self.init(title: { Text(title) }, subtitle: { OptionalText(subtitle) }, status: { TextOrIconView(status) }, action: { action }, isOn: isOn)
    }
}

extension DemoView {
    init(_ configuration: DemoViewConfiguration) {
        self.init(configuration, shouldApplyDefaultStyle: false)
    }

    init(_ configuration: DemoViewConfiguration, shouldApplyDefaultStyle: Bool) {
        self.title = configuration.title
        self.subtitle = configuration.subtitle
        self.status = configuration.status
        self.action = configuration.action
        self._isOn = configuration.$isOn
        self._shouldApplyDefaultStyle = shouldApplyDefaultStyle
        self.componentIdentifier = configuration.componentIdentifier
    }
}

extension DemoView: View {
    public var body: some View {
        if self._shouldApplyDefaultStyle {
            self.defaultStyle()
        } else {
            self.style.resolve(configuration: .init(componentIdentifier: self.componentIdentifier, title: .init(self.title), subtitle: .init(self.subtitle), status: .init(self.status), action: .init(self.action), isOn: self.$isOn)).typeErased
                .transformEnvironment(\.demoViewStyleStack) { stack in
                    if !stack.isEmpty {
                        stack.removeLast()
                    }
                }
        }
    }
}

private extension DemoView {
    func shouldApplyDefaultStyle(_ bool: Bool) -> some View {
        var s = self
        s._shouldApplyDefaultStyle = bool
        return s
    }

    func defaultStyle() -> some View {
        DemoView(.init(componentIdentifier: self.componentIdentifier, title: .init(self.title), subtitle: .init(self.subtitle), status: .init(self.status), action: .init(self.action), isOn: self.$isOn))
            .shouldApplyDefaultStyle(false)
            .demoViewStyle(DemoViewFioriStyle.ContentFioriStyle())
            .typeErased
    }
}
