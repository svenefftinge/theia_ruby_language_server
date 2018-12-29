[![Gitpod - Code Now](https://img.shields.io/badge/Gitpod-code%20now-blue.svg?longCache=true)](https://gitpod.io#https://github.com/theia-ide/theia-ruby-extension)
[![Build Status](https://travis-ci.org/theia-ide/theia-ruby-extension.svg?branch=master)](https://travis-ci.org/theia-ide/theia-ruby-extension)

# Ruby Extension for Theia
This extension adds Ruby language support to Theia.
It uses [ruby language server](https://github.com/kwerle/ruby_language_server) to provide lanugage smartness.

# Get started

```
docker build -t theia-ruby .
docker run -it -v RUBY_PROJECT_SOURCE_DIR:/source -p 3000:3000 theia-ruby
open  http://localhost:3000/
```
