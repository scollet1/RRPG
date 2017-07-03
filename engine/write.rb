# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    write.rb                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/07/02 13:55:33 by scollet           #+#    #+#              #
#    Updated: 2017/07/02 13:55:34 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

require 'yaml'

def iterate h, fd
  h.each do |k, v|
    value = v || k
    if value.is_a? Hash or value.is_a? Array
      fd.puts fd.to_yaml "\e[34m#{k.capitalize}\e[0m:"
      iterate value, fd
    else
      fd.print fd.to_yaml v ? "#{k.capitalize}: \e[35m#{v}\n\e[0m" : "\e[41m#{k}\e[0m"
    end
  end
end

def write object
  if (check object) == true
    dir = File.dirname("./objects/#{object.class.to_s.downcase}s/")
    unless File.directory? dir
      FileUtils.mkdir_p dir
    end
    path = "./objects/#{object.class.to_s.downcase}s/#{object.stats[:name].to_s.chomp}.yml"
    File.open(path, "w") { |file|
      file.puts object.to_yaml
    }
    bar = YAML.load_file(path)
    puts "File #{object.stats[:name].to_s.chomp}.rrpg created, press enter to continue."
    gets
  else
    puts "Abandoning write, press any key to continue."
    gets
  end
  run
end

def check object
  if File.exist?"./objects/#{object.class.to_s.downcase}s/#{object.stats[:name].to_s.chomp}.yml"
    puts "File exists, overwrite? [y/n]"
    a = gets.chomp
    if a == "y"
      return true
    elsif a == "n"
      return false
    else
      error "write"
    end
  else
    return true
  end
end
