module Unirer::Bootstrap::ApplicationHelper

  def library_enabled?(name, options)
    defined?(options) && options.try(:[], name).present?
  end

  def library_version(name, default_version, options)
    defined?(options) ? options.try(:[], name).try(:[], :version)||default_version : default_version
  end

  deprecate library_enabled?: :'Repres::HyperText::ApplicationHelper#library_enabled?', deprecator: ActiveSupport::Deprecation.new('0.12', 'unirer-bootstrap')
  deprecate library_version:  :'Repres::HyperText::ApplicationHelper#library_version',  deprecator: ActiveSupport::Deprecation.new('0.12', 'unirer-bootstrap')

end
