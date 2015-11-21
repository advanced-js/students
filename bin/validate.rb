#!/usr/bin/env ruby

require 'active_support/core_ext/object/blank'
require 'yaml'


@exit_code = 0

def err(msg)
  STDERR.puts msg
  @exit_code = 1
end

def validate_extension(file)
  ext_name = File.extname(file)
  unless %(.json .yaml .yml).include?(ext_name)
    err("#{file} needs to be a JSON file.")
  end
end

def validate_fields(file, data)
  emoji = data['emoji']
  if emoji.blank?
    err("#{file} needs an `emoji`.")
  elsif emoji !~ /\A:?\w[\w\-]*\w:?\z/
    err("#{file} has an invalid emoji name – pick one from http://www.emoji-cheat-sheet.com/.")
  end

  if data['introduction'].blank?
    err("#{file} needs a `introduction`.")
  end
end


Dir.glob('_data/**/*.*') do |file|
  validate_extension(file)

  begin
    data = YAML.load_file(file)
  rescue Psych::SyntaxError
    err("#{file} isn't valid JSON.")
  end

  if data
    validate_fields(file, data)
  end
end

exit(@exit_code)
