## Template Information

| Name      | Description       |
| --------- | ----------------- |
| File name | strings/flat-swift4.stencil |
| Configuration example | <pre>strings:<br />  inputs: path/to/Localizable.strings<br />  outputs:<br />    templateName: flat-swift4<br />    output: Strings.swift</pre> |
| Language | Swift 4 |
| Author | Olivier Halligon |

## When to use it

- When you need to generate *Swift 4* code.
- If you use unstructured key names for your strings, or a structure that we don't support (yet). If you use "dot-syntax" keys, please check out the [structured-swift4](structured-swift4.md) template.

## Customization

You can customize some elements of this template by overriding the following parameters when invoking `swiftgen`. See the [dedicated documentation](../../ConfigFile.md).

| Parameter Name | Default Value | Description |
| -------------- | ------------- | ----------- |
| `enumName` | `L10n` | Allows you to change the name of the generated `enum` containing all string tables. |
| `noComments` | N/A | Setting this parameter will disable the comments describing the translation of a key. |
| `publicAccess` | N/A | If set, the generated constants will be marked as `public`. Otherwise, they'll be declared `internal`. |
| `forceFileNameEnum` | N/A | Setting this parameter will generate `enum` for file even if only single is provided. |

## Generated Code

**Extract:**

```swift
enum L10n {
  /// Some alert body there
  case alertMessage
  /// Title of the alert
  case alertTitle
  /// You have %d apples
  case applesCount(Int)
  /// Those %d bananas belong to %@.
  case bananasOwner(Int, String)
}
```

[Full generated code](../../../Tests/Fixtures/Generated/Strings/flat-swift4-context-localizable.swift)

## Usage example

```swift
// Simple strings
let message = L10n.alertMessage
let title = L10n.alertTitle

// with parameters, note that each argument needs to be of the correct type
let apples = L10n.applesCount(3)
let bananas = L10n.bananasOwner(5, "Olivier")
```
