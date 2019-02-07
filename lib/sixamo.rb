require "sixamo/version"

require 'sixamo/util'
require 'sixamo/core'
require 'sixamo/dictionary'
require 'sixamo/freq'
require 'sixamo/trie'

module Sixamo
  def self.new(*args)
    Core.new(*args)
  end

  def self.init_dictionary(dirname)
    dictionary = Dictionary.new(dirname)
    dictionary.load_text
    dictionary.learn_from_text(true)
    dictionary
  end
end
