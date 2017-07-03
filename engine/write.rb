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
