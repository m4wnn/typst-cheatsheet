#import "@preview/tablem:0.1.0": tablem

= Modes

`Typst` has three syntactical modes: Markup, math, and code.

*Markup mode is the default in a Typst document*, math mode lets you write mathematical formulas, and code mode lets you use Typst's scripting features.

You can switch to a specific mode at any point by referring to the following table:

#tablem[
  | *New mode* | *Syntax* | *Example* |
  |-|-|-|
  | Code | Prefix the code with `#` | Number: `#(1 + 2)` |
  | Math | Surround equation with `$..$` | `$-x$ is the opposite of $x$` |
  | Markup | Surround markup with `[..]` | `let name = [*Typst!*]` |
]

== Markup Mode

Most of the syntax elements are just shortcuts for a corresponding function.

#tablem[
  | *Name* | *Example* | *Function Name* |
  |-|-|-|
  | Paragraph break | Blank line | parbreak |
  | Strong emphasis | *`*strong*`* | strong |
  | Emphasis | _`_emphasis_`_ | emph |
  | Raw text | \``print(1)`\` | raw |
  | Link | https://typst.app/ | link |
  | Label | `<intro>` | label |
  | Reference | `@intro` | ref |
  | Heading | `= Heading` | heading |
  | Bullet list | `- item` | list |
  | Numbered list | `+ item` | enum |
  | Term list | `/ Term: description` | terms |
  | Math | `$x^2$` | Math |
  | Line break | `\` | linebreak |
  | Smart quote | `'single' or "double"` | smartquote |
  | Symbol shorthand | `~, ---` | Symbols |
  | Code expression | `#rect(width: 1cm)` | Scripting |
  | Character escape | `Tweet at us \#ad` | Below |
  | Comment | `/* block */, // line` | Below |
]

== Math Mode

It is entered by wrapping an equation in \$ characters. This works both in markup and code.

- The equation will be typeset into its own block if it starts and ends with at least one space (e.g. `$ x^2 $`).
- Inline math can be produced by omitting the whitespace (e.g. $x^2$)

#tablem[
  | *Name* | *Example* | *Function Name* |
  |-|-|-|
  | Inline math | `$x^2$` | Math |
  | Block-level math | `$ x^2 $` | Math |
  | Bottom attachment | `$x_1$` | attach |
  | Top attachment | `$x^2$` | attach |
  | Fraction | `$1 + (a+b)/5$` | frac |
  | Line break | `$x \ y$` | linebreak |
  | Alignment point | `$x &= 2 \ &= 3$` | Math |
  | Variable access | `$#x$, $pi$` | Math |
  | Field access | `$arrow.r.long$` | Scripting |
  | Implied multiplication | `$x y$` | Math |
  | Symbol shorthand | `$->$, $!=$` | Symbols |
  | Text/string in math | `$a "is natural"$` | Math |
  | Math function call | `$floor(x)$` | Math |
  | Code expression | `$#rect(width: 1cm)$` | Scripting |
  | Character escape | `$x\^2$` | Below |
  | Comment | `$/* comment */$` | Below |
]

== Code Mode

Within code blocks and expressions, new expressions can start without a leading `#` character. Many syntactic elements are specific to expressions. Below is a table listing all syntax that is available in code mode:

#tablem[
  | Name | Example | See |
  |-|-|-|
  | None | `none` | none |
  | Auto | `auto` | auto |
  | Boolean | `false, true` | bool |
  | Integer | `10, 0xff` | int |
  | Floating-point number | `3.14, 1e5` | float |
  | Length | `2pt, 3mm, 1em, ..` | Length |
  | Angle | `90deg, 1rad` | angle |
  | Fraction | `2fr` | fraction |
  | Ratio | `50%` | ratio |
  | String | `"hello"` | str |
  | Label | `<intro>` | label |
  | Math | `$x^2$` | Math |
  | Raw text | `` `print(1)` `` | raw |
  | Variable access | `x` | Scripting |
  | Code block | `{ let x = 1; x + 2 }` | Scripting |
  | Content block | `[+Hello+]` | Scripting |
  | Parenthesized expression | `(1 + 2)` | Scripting |
  | Array | `(1, 2, 3)` | Array |
  | Dictionary | `(a: "hi", b: 2)` | Dictionary |
  | Unary operator | `-x` | Scripting |
  | Binary operator | `x + y` | Scripting |
  | Assignment | `x = 1` | Scripting |
  | Field access | `x.y` | Scripting |
  | Method call | `x.flatten()` | Scripting |
  | Function call | `min(x, y)` | Function |
  | Argument spreading | `min(..nums)` | Arguments |
  | Unnamed function | `(x, y) => x + y` | Function |
  | Let binding | `let x = 1` | Scripting |
  | Named function | `let f(x) = 2 * x` | Scripting |
  | Set rule | `set text(14pt)` | Styling |
  | Show-set rule | `show heading: set block(..)` | Styling |
  | Show rule with function | `show raw: x + {.}` | Styling |
  | Show-everything rule | `show: template` | Styling |
  | Context expression | `context text.lang` | Context |
  | Conditional | `if x == 1 {..} else {..}` | Scripting |
  | For loop | `for x in (1, 2, 3) {..}` | Scripting |
  | While loop | `while x < 10 {..}` | Scripting |
  | Loop control flow | `break, continue` | Scripting |
  | Return from function | `return x` | Function |
  | Include module | `include "bar.typ"` | Scripting |
  | Import module | `import "bar.typ"` | Scripting |
  | Import items from module | `import "bar.typ": a, b, c` | Scripting |
  | Comment | `/* block */ // line` | Below |
]
