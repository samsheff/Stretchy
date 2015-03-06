Stretchy
========

An Elasticsearch client for Crystal Lang, like stretcher is to sinatra.

## Getting Started
- 1) Add to your Projectfile
```crystal
deps do
  github "samsheff/Stretchy"
end
```
- 2) Create a new Instance of the Stretchy class. It defaults to 127.0.0.1:9200, unless you tell it otherwise. For Example: `Stretchy.new(other_host, port)`
- 3) Run Queries. Examples: `Stretchy.new.search("myJsonQuery")`or `Stretchy.new.match_all`

## Status
Currently, there is support for searching with #search and a helper for match_all queries. Other features are coming soon, or feel free to contribute ;)
