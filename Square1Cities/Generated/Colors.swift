// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit.NSColor
  internal typealias Color = NSColor
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  internal typealias Color = UIColor
#endif

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Colors

// swiftlint:disable identifier_name line_length type_body_length
internal struct ColorName {
  internal let rgbaValue: UInt32
  internal var color: Color { return Color(named: self) }

  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d2042d"></span>
  /// Alpha: 100% <br/> (0xd2042dff)
  internal static let alternateColorPrimary = ColorName(rgbaValue: 0xd2042dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#999999"></span>
  /// Alpha: 100% <br/> (0x999999ff)
  internal static let aluminum = ColorName(rgbaValue: 0x999999ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#aaaaaa"></span>
  /// Alpha: 100% <br/> (0xaaaaaaff)
  internal static let base = ColorName(rgbaValue: 0xaaaaaaff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fb8f3d"></span>
  /// Alpha: 100% <br/> (0xfb8f3dff)
  internal static let blogger = ColorName(rgbaValue: 0xfb8f3dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#33691e"></span>
  /// Alpha: 100% <br/> (0x33691eff)
  internal static let colorAccent = ColorName(rgbaValue: 0x33691eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#616161"></span>
  /// Alpha: 100% <br/> (0x616161ff)
  internal static let colorContextMenu = ColorName(rgbaValue: 0x616161ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#9e9e9e"></span>
  /// Alpha: 100% <br/> (0x9e9e9eff)
  internal static let colorDefault = ColorName(rgbaValue: 0x9e9e9eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#616161"></span>
  /// Alpha: 100% <br/> (0x616161ff)
  internal static let colorDefaultDark = ColorName(rgbaValue: 0x616161ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e0e0e0"></span>
  /// Alpha: 100% <br/> (0xe0e0e0ff)
  internal static let colorDefaultLight = ColorName(rgbaValue: 0xe0e0e0ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f44336"></span>
  /// Alpha: 100% <br/> (0xf44336ff)
  internal static let colorError = ColorName(rgbaValue: 0xf44336ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d32f2f"></span>
  /// Alpha: 100% <br/> (0xd32f2fff)
  internal static let colorErrorDark = ColorName(rgbaValue: 0xd32f2fff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e57373"></span>
  /// Alpha: 100% <br/> (0xe57373ff)
  internal static let colorErrorLight = ColorName(rgbaValue: 0xe57373ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d2042d"></span>
  /// Alpha: 100% <br/> (0xd2042dff)
  internal static let colorPrimary = ColorName(rgbaValue: 0xd2042dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d2042d"></span>
  /// Alpha: 100% <br/> (0xd2042dff)
  internal static let colorPrimaryDark = ColorName(rgbaValue: 0xd2042dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d2042d"></span>
  /// Alpha: 100% <br/> (0xd2042dff)
  internal static let colorPrimaryDarkest = ColorName(rgbaValue: 0xd2042dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#90ee90"></span>
  /// Alpha: 100% <br/> (0x90ee90ff)
  internal static let colorPrimaryLight = ColorName(rgbaValue: 0x90ee90ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a9a9f5"></span>
  /// Alpha: 100% <br/> (0xa9a9f5ff)
  internal static let colorRipple = ColorName(rgbaValue: 0xa9a9f5ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#4caf50"></span>
  /// Alpha: 100% <br/> (0x4caf50ff)
  internal static let colorSuccess = ColorName(rgbaValue: 0x4caf50ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#388e3c"></span>
  /// Alpha: 100% <br/> (0x388e3cff)
  internal static let colorSuccessDark = ColorName(rgbaValue: 0x388e3cff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#81c784"></span>
  /// Alpha: 100% <br/> (0x81c784ff)
  internal static let colorSuccessLight = ColorName(rgbaValue: 0x81c784ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#212121"></span>
  /// Alpha: 100% <br/> (0x212121ff)
  internal static let colorTextPrimary = ColorName(rgbaValue: 0x212121ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#727272"></span>
  /// Alpha: 100% <br/> (0x727272ff)
  internal static let colorTextSecondary = ColorName(rgbaValue: 0x727272ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ff9800"></span>
  /// Alpha: 100% <br/> (0xff9800ff)
  internal static let colorWarning = ColorName(rgbaValue: 0xff9800ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f57c00"></span>
  /// Alpha: 100% <br/> (0xf57c00ff)
  internal static let colorWarningDark = ColorName(rgbaValue: 0xf57c00ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffb74d"></span>
  /// Alpha: 100% <br/> (0xffb74dff)
  internal static let colorWarningLight = ColorName(rgbaValue: 0xffb74dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fafafa"></span>
  /// Alpha: 100% <br/> (0xfafafaff)
  internal static let customLightGray = ColorName(rgbaValue: 0xfafafaff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#b6b6b6"></span>
  /// Alpha: 100% <br/> (0xb6b6b6ff)
  internal static let dashboardInnerRingColor = ColorName(rgbaValue: 0xb6b6b6ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#b6b6b6"></span>
  /// Alpha: 100% <br/> (0xb6b6b6ff)
  internal static let dividerColor = ColorName(rgbaValue: 0xb6b6b6ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ea4c89"></span>
  /// Alpha: 100% <br/> (0xea4c89ff)
  internal static let dribbble = ColorName(rgbaValue: 0xea4c89ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#3b5998"></span>
  /// Alpha: 100% <br/> (0x3b5998ff)
  internal static let facebook = ColorName(rgbaValue: 0x3b5998ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ff0084"></span>
  /// Alpha: 100% <br/> (0xff0084ff)
  internal static let flickr = ColorName(rgbaValue: 0xff0084ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#5b9a68"></span>
  /// Alpha: 100% <br/> (0x5b9a68ff)
  internal static let forrst = ColorName(rgbaValue: 0x5b9a68ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0072b1"></span>
  /// Alpha: 100% <br/> (0x0072b1ff)
  internal static let foursquare = ColorName(rgbaValue: 0x0072b1ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#dd4b39"></span>
  /// Alpha: 100% <br/> (0xdd4b39ff)
  internal static let googleplus = ColorName(rgbaValue: 0xdd4b39ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#517fa4"></span>
  /// Alpha: 100% <br/> (0x517fa4ff)
  internal static let instagram = ColorName(rgbaValue: 0x517fa4ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#cccccc"></span>
  /// Alpha: 100% <br/> (0xccccccff)
  internal static let iron = ColorName(rgbaValue: 0xccccccff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#222222"></span>
  /// Alpha: 100% <br/> (0x222222ff)
  internal static let jet = ColorName(rgbaValue: 0x222222ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#888888"></span>
  /// Alpha: 100% <br/> (0x888888ff)
  internal static let jumbo = ColorName(rgbaValue: 0x888888ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#d2f8d2"></span>
  /// Alpha: 100% <br/> (0xd2f8d2ff)
  internal static let lightGreen = ColorName(rgbaValue: 0xd2f8d2ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#007bb6"></span>
  /// Alpha: 100% <br/> (0x007bb6ff)
  internal static let linkedin = ColorName(rgbaValue: 0x007bb6ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#777777"></span>
  /// Alpha: 100% <br/> (0x777777ff)
  internal static let monsoon = ColorName(rgbaValue: 0x777777ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#333333"></span>
  /// Alpha: 100% <br/> (0x333333ff)
  internal static let oil = ColorName(rgbaValue: 0x333333ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#cb2027"></span>
  /// Alpha: 100% <br/> (0xcb2027ff)
  internal static let pinterest = ColorName(rgbaValue: 0xcb2027ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a82400"></span>
  /// Alpha: 100% <br/> (0xa82400ff)
  internal static let quora = ColorName(rgbaValue: 0xa82400ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ff3a00"></span>
  /// Alpha: 100% <br/> (0xff3a00ff)
  internal static let soundcloud = ColorName(rgbaValue: 0xff3a00ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#eb4823"></span>
  /// Alpha: 100% <br/> (0xeb4823ff)
  internal static let stumbleupon = ColorName(rgbaValue: 0xeb4823ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#90ee90"></span>
  /// Alpha: 100% <br/> (0x90ee90ff)
  internal static let tabsScrollColor = ColorName(rgbaValue: 0x90ee90ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#32506d"></span>
  /// Alpha: 100% <br/> (0x32506dff)
  internal static let tumblr = ColorName(rgbaValue: 0x32506dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#00aced"></span>
  /// Alpha: 100% <br/> (0x00acedff)
  internal static let twitter = ColorName(rgbaValue: 0x00acedff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#aad450"></span>
  /// Alpha: 100% <br/> (0xaad450ff)
  internal static let vimeo = ColorName(rgbaValue: 0xaad450ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#45668e"></span>
  /// Alpha: 100% <br/> (0x45668eff)
  internal static let vk = ColorName(rgbaValue: 0x45668eff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#21759b"></span>
  /// Alpha: 100% <br/> (0x21759bff)
  internal static let wordpress = ColorName(rgbaValue: 0x21759bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#7b0099"></span>
  /// Alpha: 100% <br/> (0x7b0099ff)
  internal static let yahoo = ColorName(rgbaValue: 0x7b0099ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#bb0000"></span>
  /// Alpha: 100% <br/> (0xbb0000ff)
  internal static let youtube = ColorName(rgbaValue: 0xbb0000ff)
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

internal extension Color {
  convenience init(rgbaValue: UInt32) {
    let components = RGBAComponents(rgbaValue: rgbaValue).normalized
    self.init(red: components[0], green: components[1], blue: components[2], alpha: components[3])
  }
}

private struct RGBAComponents {
  let rgbaValue: UInt32

  private var shifts: [UInt32] {
    [
      rgbaValue >> 24, // red
      rgbaValue >> 16, // green
      rgbaValue >> 8,  // blue
      rgbaValue        // alpha
    ]
  }

  private var components: [CGFloat] {
    shifts.map {
      CGFloat($0 & 0xff)
    }
  }

  var normalized: [CGFloat] {
    components.map { $0 / 255.0 }
  }
}

internal extension Color {
  convenience init(named color: ColorName) {
    self.init(rgbaValue: color.rgbaValue)
  }
}
