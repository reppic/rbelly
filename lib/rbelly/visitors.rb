require 'rbelly/visitors/visitor'
Dir[File.join(File.dirname(__FILE__), "visitors/*_visitor.rb")].each do |file|
  require file[/rbelly\/visitors\/.*/]
end
