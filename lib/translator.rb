# require modules here
require "yaml"

def load_library(path)
  library = YAML.load_file(path)
  e = {:english => {}, :japanese => {}}
  
  library.each_pair do |key, value|
    e[:english][key.to_sym] = value[0]
    e[:japanese][key.to_sym] = value[1]
  end
  pp e
  return e
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end