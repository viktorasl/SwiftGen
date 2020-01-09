// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name
internal enum L10n {
  internal enum Localizable {
    /// Some alert body there
    internal static let alertMessage = L10n.tr("Localizable", "alert_message")
    /// Title of the alert
    internal static let alertTitle = L10n.tr("Localizable", "alert_title")
    /// These are %3$@'s %1$d %2$@.
    internal static func objectOwnership(_ p1: Int, _ p2: String, _ p3: String) -> String {
      return L10n.tr("Localizable", "ObjectOwnership", p1, p2, p3)
    }
    /// This is a %% character.
    internal static let percent = L10n.tr("Localizable", "percent")
    /// Hello, my name is %@ and I'm %d
    internal static func `private`(_ p1: String, _ p2: Int) -> String {
      return L10n.tr("Localizable", "private", p1, p2)
    }
    /// Object: '%@', Character: '%c', Integer: '%d', Float: '%f', CString: '%s', Pointer: '%p'
    internal static func types(_ p1: String, _ p2: CChar, _ p3: Int, _ p4: Float, _ p5: UnsafePointer<CChar>, _ p6: UnsafeRawPointer) -> String {
      return L10n.tr("Localizable", "types", p1, p2, p3, p4, p5, Int(bitPattern: p6))
    }
    internal enum Apples {
      /// You have %d apples
      internal static func count(_ p1: Int) -> String {
        return L10n.tr("Localizable", "apples.count", p1)
      }
    }
    internal enum Bananas {
      /// Those %d bananas belong to %@.
      internal static func owner(_ p1: Int, _ p2: String) -> String {
        return L10n.tr("Localizable", "bananas.owner", p1, p2)
      }
    }
    internal enum Settings {
      internal enum NavigationBar {
        /// Some Reserved Keyword there
        internal static let `self` = L10n.tr("Localizable", "settings.navigation-bar.self")
        internal enum Title {
          internal enum Deeper {
            internal enum Than {
              internal enum We {
                internal enum Can {
                  internal enum Handle {
                    internal enum No {
                      internal enum Really {
                        internal enum This {
                          internal enum Is {
                            /// DeepSettings
                            internal static let deep = L10n.tr("Localizable", "settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep")
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          internal enum Even {
            /// Settings
            internal static let deeper = L10n.tr("Localizable", "settings.navigation-bar.title.even.deeper")
          }
        }
      }
      internal enum UserProfileSection {
        /// Here you can change some user profile settings.
        internal static let footerText = L10n.tr("Localizable", "settings.user_profile_section.footer_text")
        /// User Profile Settings
        internal static let headerTitle = L10n.tr("Localizable", "settings.user_profile_section.HEADER_TITLE")
      }
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name

// MARK: - Implementation Details

extension L10n {
  fileprivate static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    // swiftlint:disable:next nslocalizedstring_key
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {}
