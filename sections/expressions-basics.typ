#import "../configs/utils.typ": *

= Expressions
To embed code into markup, use the hash (`#`) symbol.

```typ
#emph[Hello] \
#emoji.face \
#"hello".len()
```

Normal markup parsing resumes after the expression is finished.

#table(
  columns: (auto, auto, auto),
  align: center,
  table.header(
    [*Symbol/Expression*],
    [*Meaning*],
    [*Example*],
  ),

  [`#`], [Indicates the beginning of an expression.], [`#1234`],
  [`;`], [Forces the end of an expression.], [`#"End here";`],
  [`\`], [Inserts a line break.], [`#part1` \\ \ `#part2`],
)\

*What can be an expression?*
- Simple operations
- Function calls
- Field accesses
- Method calls

