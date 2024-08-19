; extends

; This resource is GOATED: https://tree-sitter.github.io/tree-sitter/using-parsers

; This matches the first keyword_setting and any following nodes with "    ..." that are inside
; a keyword_definition body; it matches keyword docs and marks it as @spell
(keyword_definition (body . (keyword_setting) @spell . (#match? @spell "    \.\.\.")))
