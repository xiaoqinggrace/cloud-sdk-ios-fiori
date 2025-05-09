// Generated using Sourcery 2.1.7 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
import SwiftUI

extension _SignatureCaptureView where StartActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder restartAction: () -> RestartActionView,
		@ViewBuilder cancelAction: () -> CancelActionView,
		@ViewBuilder clearAction: () -> ClearActionView,
		@ViewBuilder saveAction: () -> SaveActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: restartAction,
			cancelAction: cancelAction,
			clearAction: clearAction,
			saveAction: saveAction,
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where RestartActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder startAction: () -> StartActionView,
		@ViewBuilder cancelAction: () -> CancelActionView,
		@ViewBuilder clearAction: () -> ClearActionView,
		@ViewBuilder saveAction: () -> SaveActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: startAction,
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: cancelAction,
			clearAction: clearAction,
			saveAction: saveAction,
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where CancelActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder startAction: () -> StartActionView,
		@ViewBuilder restartAction: () -> RestartActionView,
		@ViewBuilder clearAction: () -> ClearActionView,
		@ViewBuilder saveAction: () -> SaveActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: startAction,
			restartAction: restartAction,
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: clearAction,
			saveAction: saveAction,
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where ClearActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder startAction: () -> StartActionView,
		@ViewBuilder restartAction: () -> RestartActionView,
		@ViewBuilder cancelAction: () -> CancelActionView,
		@ViewBuilder saveAction: () -> SaveActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: startAction,
			restartAction: restartAction,
			cancelAction: cancelAction,
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: saveAction,
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder startAction: () -> StartActionView,
		@ViewBuilder restartAction: () -> RestartActionView,
		@ViewBuilder cancelAction: () -> CancelActionView,
		@ViewBuilder clearAction: () -> ClearActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: startAction,
			restartAction: restartAction,
			cancelAction: cancelAction,
			clearAction: clearAction,
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where StartActionView == _Action, RestartActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder cancelAction: () -> CancelActionView,
		@ViewBuilder clearAction: () -> ClearActionView,
		@ViewBuilder saveAction: () -> SaveActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: cancelAction,
			clearAction: clearAction,
			saveAction: saveAction,
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where StartActionView == _Action, CancelActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder restartAction: () -> RestartActionView,
		@ViewBuilder clearAction: () -> ClearActionView,
		@ViewBuilder saveAction: () -> SaveActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: restartAction,
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: clearAction,
			saveAction: saveAction,
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where StartActionView == _Action, ClearActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder restartAction: () -> RestartActionView,
		@ViewBuilder cancelAction: () -> CancelActionView,
		@ViewBuilder saveAction: () -> SaveActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: restartAction,
			cancelAction: cancelAction,
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: saveAction,
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where StartActionView == _Action, SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder restartAction: () -> RestartActionView,
		@ViewBuilder cancelAction: () -> CancelActionView,
		@ViewBuilder clearAction: () -> ClearActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: restartAction,
			cancelAction: cancelAction,
			clearAction: clearAction,
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where RestartActionView == _Action, CancelActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder startAction: () -> StartActionView,
		@ViewBuilder clearAction: () -> ClearActionView,
		@ViewBuilder saveAction: () -> SaveActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: startAction,
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: clearAction,
			saveAction: saveAction,
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where RestartActionView == _Action, ClearActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder startAction: () -> StartActionView,
		@ViewBuilder cancelAction: () -> CancelActionView,
		@ViewBuilder saveAction: () -> SaveActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: startAction,
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: cancelAction,
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: saveAction,
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where RestartActionView == _Action, SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder startAction: () -> StartActionView,
		@ViewBuilder cancelAction: () -> CancelActionView,
		@ViewBuilder clearAction: () -> ClearActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: startAction,
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: cancelAction,
			clearAction: clearAction,
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where CancelActionView == _Action, ClearActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder startAction: () -> StartActionView,
		@ViewBuilder restartAction: () -> RestartActionView,
		@ViewBuilder saveAction: () -> SaveActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: startAction,
			restartAction: restartAction,
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: saveAction,
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where CancelActionView == _Action, SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder startAction: () -> StartActionView,
		@ViewBuilder restartAction: () -> RestartActionView,
		@ViewBuilder clearAction: () -> ClearActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: startAction,
			restartAction: restartAction,
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: clearAction,
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where ClearActionView == _Action, SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder startAction: () -> StartActionView,
		@ViewBuilder restartAction: () -> RestartActionView,
		@ViewBuilder cancelAction: () -> CancelActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: startAction,
			restartAction: restartAction,
			cancelAction: cancelAction,
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where StartActionView == _Action, RestartActionView == _Action, CancelActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder clearAction: () -> ClearActionView,
		@ViewBuilder saveAction: () -> SaveActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: clearAction,
			saveAction: saveAction,
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where StartActionView == _Action, RestartActionView == _Action, ClearActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder cancelAction: () -> CancelActionView,
		@ViewBuilder saveAction: () -> SaveActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: cancelAction,
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: saveAction,
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where StartActionView == _Action, RestartActionView == _Action, SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder cancelAction: () -> CancelActionView,
		@ViewBuilder clearAction: () -> ClearActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: cancelAction,
			clearAction: clearAction,
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where StartActionView == _Action, CancelActionView == _Action, ClearActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder restartAction: () -> RestartActionView,
		@ViewBuilder saveAction: () -> SaveActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: restartAction,
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: saveAction,
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where StartActionView == _Action, CancelActionView == _Action, SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder restartAction: () -> RestartActionView,
		@ViewBuilder clearAction: () -> ClearActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: restartAction,
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: clearAction,
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where StartActionView == _Action, ClearActionView == _Action, SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder restartAction: () -> RestartActionView,
		@ViewBuilder cancelAction: () -> CancelActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: restartAction,
			cancelAction: cancelAction,
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where RestartActionView == _Action, CancelActionView == _Action, ClearActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder startAction: () -> StartActionView,
		@ViewBuilder saveAction: () -> SaveActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: startAction,
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: saveAction,
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where RestartActionView == _Action, CancelActionView == _Action, SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder startAction: () -> StartActionView,
		@ViewBuilder clearAction: () -> ClearActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: startAction,
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: clearAction,
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where RestartActionView == _Action, ClearActionView == _Action, SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder startAction: () -> StartActionView,
		@ViewBuilder cancelAction: () -> CancelActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: startAction,
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: cancelAction,
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where CancelActionView == _Action, ClearActionView == _Action, SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder startAction: () -> StartActionView,
		@ViewBuilder restartAction: () -> RestartActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: startAction,
			restartAction: restartAction,
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where StartActionView == _Action, RestartActionView == _Action, CancelActionView == _Action, ClearActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder saveAction: () -> SaveActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: saveAction,
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where StartActionView == _Action, RestartActionView == _Action, CancelActionView == _Action, SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder clearAction: () -> ClearActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: clearAction,
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where StartActionView == _Action, RestartActionView == _Action, ClearActionView == _Action, SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder cancelAction: () -> CancelActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: cancelAction,
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where StartActionView == _Action, CancelActionView == _Action, ClearActionView == _Action, SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder restartAction: () -> RestartActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: restartAction,
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where RestartActionView == _Action, CancelActionView == _Action, ClearActionView == _Action, SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		@ViewBuilder startAction: () -> StartActionView,
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: startAction,
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}

extension _SignatureCaptureView where StartActionView == _Action, RestartActionView == _Action, CancelActionView == _Action, ClearActionView == _Action, SaveActionView == _Action {
    public init(
    title: String? = nil,
		mandatoryIndicator: String? = "*",
		signatureImage: UIImage? = nil,
		onSave: ((UIImage) -> Void)? = nil,
		onDelete: (() -> Void)? = nil
    ) {
        self.init(
            title: title,
			mandatoryIndicator: mandatoryIndicator,
			startAction: { _Action(model: _TapToSignActionDefault()) },
			restartAction: { _Action(model: _ReEnterSignatureActionDefault()) },
			cancelAction: { _Action(model: _CancelActionDefault()) },
			clearAction: { _Action(model: _ClearActionDefault()) },
			saveAction: { _Action(model: _SaveActionDefault()) },
			signatureImage: signatureImage,
			onSave: onSave,
			onDelete: onDelete
        )
    }
}
