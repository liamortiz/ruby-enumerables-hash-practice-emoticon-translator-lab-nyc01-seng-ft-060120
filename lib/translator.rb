# require modules here
require "yaml"

def load_library(path)
  library = YAML.load_file(path)
  e = {}
  
  library.each_pair do |key, value|
    e[key] = {:english => value[0], :japanese => value[1]}
  end
  pp e
  return e
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
end

def get_english_meaning(path, emoticon)
  library = load_library(path)
  # (-.-) is the args
  # Needs to return grinning(key)
  library.each_pair do |key, value|
    if value[:japanese] == emoticon
      return key
    end
  end
end