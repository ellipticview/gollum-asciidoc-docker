# always include this:
Gollum::Page.send :remove_const, :FORMAT_NAMES if defined? Gollum::Page::FORMAT_NAMES

# ==== Limit supported formats to Asciidoc ====

# first remove all markups:
Gollum::Markup.formats.clear

# and then define the sole markup to be supported:
Gollum::Markup.formats[:adoc] = {
    :name => "AsciiDoc",
    :regexp => /adoc/
}