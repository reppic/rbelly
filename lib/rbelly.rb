require 'rbelly/constants'
require 'rbelly/visitable'
require 'rbelly/visitors'
require 'rbelly/parser'
require 'rbelly/runtime'
require 'rbelly/syntax_error'

module RBelly
  class << self
    def parse *args
      RBelly::Parser.new.parse(*args)
    end
  end
end
