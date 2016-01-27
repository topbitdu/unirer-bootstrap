# Unirer Bootstrap

[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)
[![Gem Version](https://badge.fury.io/rb/unirer-bootstrap.svg)](https://badge.fury.io/rb/unirer-bootstrap)

Unirer (UNIfied Resource Representation) is a series of resource representation engines. The Bootstrap resource representation engine includes Bootstrap-based resource representation templates & snippets.
Unirer (统一资源表现)是一系列的资源表现引擎。Bootstrap 资源表现引擎包括基于Bootstrap的资源表现模版和片段。

## Usage in Gemfile:
```ruby
gem 'unirer-bootstrap'
```

## Render the Pre-defined Partials:
```erb
<%= render partial: 'unirer/bootstrap/meta'   %>
<%= render partial: 'unirer/bootstrap/script' %>
<%= render partial: 'unirer/bootstrap/style'  %>
<%= render partial: 'unirer/bootstrap/form_field', locals: { model: model, form: f, name: :phone_number, type: :tel_field } %>
```
