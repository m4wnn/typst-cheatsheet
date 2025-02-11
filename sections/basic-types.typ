#import "../configs/utils.typ": *

= Basic Types

#table(
  columns: (auto, auto, auto),
  align: center,
  table.header(
    [*Type*],
    [*Meaning*],
    [*Example*],
  ),

  [none], [Represents the absence of any value.], [`#none`],
  [float],
  [A floating-point number. `NaN` and positive infinity are available as `float.nan` and `float.inf`, respectively.],
  [`#4.20`],

  [int], [A whole number.], [`#420`],
  [bool], [A type with two possible values.], [`#true` \ `#false`],
  [str], [A sequence of Unicode code points.], [`#"420 as a string"`],
  [array], [A sequence of values. The values do not have to be of the same type.], [`#(1, 7, -3.2, "str")`],
  [dictionary], [A map from string keys to values.], [`#(field1: 420, field2: "Time to smoke.")`],
  [content], [A piece of document content.], [`#[Anything inside `[]` is part of this *content* block.]`],
)

