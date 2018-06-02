require 'mojiru/version'
require 'mojiru/string'

module Mojiru
  refine ::String do
    include String
  end
end
