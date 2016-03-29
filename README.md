# Unirer Bootstrap Bootstrap资源表现引擎

[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)
[![Gem Version](https://badge.fury.io/rb/unirer-bootstrap.svg)](https://badge.fury.io/rb/unirer-bootstrap)

Unirer (UNIfied Resource Representation) is a series of resource representation engines. The Bootstrap resource representation engine includes Bootstrap-based resource representation templates & snippets.
Unirer (统一资源表现)是一系列的资源表现引擎。Bootstrap 资源表现引擎包括基于Bootstrap的资源表现模版和片段。



## Recent Update
Check out the [Road Map](ROADMAP.md) to find out what's the next.
Check out the [Change Log](CHANGELOG.md) to find out what's new.



## Usage in Gemfile
```ruby
gem 'unirer-bootstrap'
```



## Include the Helper in your Application Controller before Render the Style or Script
```ruby
helper ::Unirer::Bootstrap::ApplicationHelper
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



### Render the Favorite Icon
The Icon partial includes the HTML link tags for Favorite Icons.
```erb
<%= render partial: 'unirer/bootstrap/icon',
           locals: {
             options: {
               safari_mask_icon_color:            '#5bbad5',
               microsoft_application_title_color: '#da532c',
               theme_color:                       '#ffffff'
             }
           }
%>
```



### Render the Script
The Script partial includes the HTML script tags for jQuery, Bootstrap, and React. All the CDN servers of the JavaScript libraries are optimized for China only. The following code snippet does not load React JS.
```erb
<%= render partial: 'unirer/bootstrap/script' %>
```

The following code snippet loads the latest React JS.
```erb
<%= render partial: 'unirer/bootstrap/script', locals: { options: { react: true } } %>
```

The following code snippet loads the React JS with the given version.
```erb
<%= render partial: 'unirer/bootstrap/script',
           locals: {
             options: {
               :jquery => { version: '2.2.0' },
               :'moment-with-locales' => true,
               :'bootstrap-datetimepicker' => true,
               :react => { version: '0.14.6' }
             }
           }
%>
```
The following JavaScript libraries are always enabled, only the version can be configurable:
- :modernizr
- :jquery
- :bootstrap
The following JavaScript libraries are switchable, and the version can be configurable:
- :'moment-with-locales'
- :'bootstrap-datetimepicker'
- :'bootstrap-datepicker'
- :'bootstrap-table'
- :'bootstrap-fileinput'
- :buttons
- :react



### Render the Style
The Style partial includes the HTML style tags for Bootstrap and Font Awesome. All the CDN servers of the CSS libraries are optimized for China only.
```erb
<%= render partial: 'unirer/bootstrap/style', locals: { options: { :'font-awesome' => { version: '4.4.0' }, :'bootstrap-datetimepicker' => true } } %>
```
The following CSS libraries are always enabled, only the version can be configurable:
- :bootstrap
The following JavaScript libraries are switchable, and the version can be configurable:
- :'bootstrap-theme'
- :'font-awesome'
- :'bootstrap-datetimepicker'
- :'bootstrap-datepicker'
- :'bootstrap-table'
- :'bootstrap-fileinput'
- :buttons
- :'animate.css'



### Render the Form Field
The Form Field partial includes the HTML form field tags for Rails Form Builder and Bootstrap.
```erb
<%= render partial: 'unirer/bootstrap/form_field',
           locals: {
             options: {
               model: model,
               form:  f,
               name:  :phone_number,
               type:  :telephone_field
             }
           }
%>
<%= render partial: 'unirer/bootstrap/form_field',
           locals: {
             options: {
               model: model,
               form:  f,
               name:  :photo,
               type:  :file_field,
               input_accept: 'image/*'
             }
           }
%>
```



### Render the Form Select Box
The Form Select Box partial includes the HTML select tags for Rails Form Builder and Bootstrap.
```ruby
<%= render partial: 'unirer/bootstrap/form_field',
           locals: {
             options: {
               model:   model,
               form:    f,
               name:    :country_id,
               choices: @countries.select('id, name').map { |country| [ country.name, country.id ] },
               options: { prompt: '请选择国家' }
             }
           }
%>
```


The 4 options are required: model, form, name, and type.
Here are more options:
- label: the customized label text.
- group_class: The CSS class for the form group wrapper. The .form-group class is mandatory, and can not be removed.
- label_class: the CSS class for the HTML label tag. The .control-label class is mandatory, and can not be removed.
- field_class: the CSS class for the wrapper of the form control. The .input-group class is mandatory, and can not be removed.
- input_class: The CSS class for the HTML input tag. The .form-control class is mandatory, and can not be removed.
- error_class: the CSS class for the validation error block of this field. The .text-danger class is mandatory, and can not be removed.
- input_accept: The HTML 5 attribute for the file input tag.
- input_data: The HTML 5 Data attribute for the input tag.
- error_hidden: Determines whether the error message block should be shown if the field has any error.
- prefix: the HTML source codes of input group addon before the form control.
- suffix: the HTML source codes of input group addon after the form control.
