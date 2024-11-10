local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- Create a new table for your snippets
local snippets = {
    -- Main function
    s("main", {
        t({"int main(int argc, char *argv[]) {", "\t"}),
        i(1),
        t({"", "\treturn 0;", "}"})
    }),

    -- Printf
    s("pr", {
        t('printf("'),
        i(1, "format"),
        t('\\n"'),
        i(2),
        t(");"),
    }),

    -- For loop
    s("for", {
        t("for ("),
        i(1, "int i = 0"),
        t("; "),
        i(2, "i < n"),
        t("; "),
        i(3, "i++"),
        t({") {", "\t"}),
        i(4),
        t({"", "}"})
    }),

    -- If statement
    s("if", {
        t("if ("),
        i(1, "condition"),
        t({") {", "\t"}),
        i(2),
        t({"", "}"})
    }),
}

-- Register the snippets
ls.add_snippets("c", snippets)