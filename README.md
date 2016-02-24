# Unirer Bootstrap Bootstrap资源表现引擎

[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)
[![Gem Version](https://badge.fury.io/rb/unirer-bootstrap.svg)](https://badge.fury.io/rb/unirer-bootstrap)

Unirer (UNIfied Resource Representation) is a series of resource representation engines. The Bootstrap resource representation engine includes Bootstrap-based resource representation templates & snippets.
Unirer (统一资源表现)是一系列的资源表现引擎。Bootstrap 资源表现引擎包括基于Bootstrap的资源表现模版和片段。

## Usage in Gemfile
```ruby
gem 'unirer-bootstrap'
```

## Render the Pre-defined Partials
```erb
<%= render partial: 'unirer/bootstrap/meta'   %>
<%= render partial: 'unirer/bootstrap/script' %>
<%= render partial: 'unirer/bootstrap/style'  %>
<%= render partial: 'unirer/bootstrap/form_field', locals: { options: { model: model, form: f, name: :phone_number, type: :telephone_field } } %>
```

### Render the Meta
The Meta partial includes the HTML meta tags for Bootstrap.
```erb
<%= render partial: 'unirer/bootstrap/meta' %>
```

The source codes of the Meta partial:
```html
<meta charset="UTF-8" />
<meta name="format-detection" content="telephone=no" />
<meta name="msapplication-tap-highlight" content="no" />
<meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, height=device-height" />
<meta name="renderer" content="webkit" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
```

### Render the Script
The Script partial includes the HTML script tags for jQuery, Bootstrap, and React. All the CDN servers of the JavaScript libraries are optimized for China only.
```erb
<%= render partial: 'unirer/bootstrap/script' %>
```

The source codes of the Script partial:
```html
<%= javascript_include_tag '//cdn.bootcss.com/jquery/2.2.0/jquery.min.js'          %>
<%= javascript_include_tag '//cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js' %>

<%= javascript_include_tag '//cdn.bootcss.com/moment.js/2.11.1/moment-with-locales.min.js'                         %>
<%= javascript_include_tag '//cdn.bootcss.com/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js' %>

<%= javascript_include_tag '//cdn.bootcss.com/react/0.14.6/react.min.js'     %>
<%= javascript_include_tag '//cdn.bootcss.com/react/0.14.6/react-dom.min.js' %>
```

### Render the Style
The Style partial includes the HTML style tags for Bootstrap and Font Awesome. All the CDN servers of the CSS libraries are optimized for China only.
```erb
<%= render partial: 'unirer/bootstrap/style' %>
```

The source codes of the Style partial:
```html
<%= stylesheet_link_tag '//cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css',       media: 'all' %>
<%= stylesheet_link_tag '//cdn.bootcss.com/font-awesome/4.5.0/css/font-awesome.min.css', media: 'all' %>

<%= stylesheet_link_tag '//cdn.bootcss.com/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css', media: 'all' %>
```

### Render the Form Field
The Form Field partial includes the HTML form field tags for Rails Form Builder and Bootstrap.
```erb
<%= render partial: 'unirer/bootstrap/form_field', locals: { options: { model: model, form: f, name: :phone_number, type: :tel_field } } %>
```

The 4 options are required: model, form, name, and type.
Here are more options:
- label: the customized label text.
- label_class: the CSS class for the label tag.
- field_class: the CSS class for the wrapper of the form control.
- error_class: the CSS class for the validation error block of this field.
- prefix: the HTML source codes of input group addon before the form control.
- suffix: the HTML source codes of input group addon after the form control.
