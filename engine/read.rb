# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    read.rb                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/07/02 13:55:27 by scollet           #+#    #+#              #
#    Updated: 2017/07/02 13:55:28 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

require 'pp'
require 'json'
require_relative '../graphics/display.rb'

def iterate h, str
  h.each do |k, v|
    if k == str
      puts v
    #value = v || k
    #if value.is_a? Hash or value.is_a? Array
       #"\e[34m#{k.capitalize}\e[0m:\n"
    #  iterate value, str
    #elsif k == str
    #  puts k[:value]
      #pp v ? "#{k.capitalize}: \e[35m#{v}\n\e[0m" : "\e[41m#{k}\e[0m"
    end
  end
end

def read object
  animate
  path = "./objects/players/#{object}"
  tmp = YAML.load_file(path)
  pp tmp
  puts JSON.pretty_generate tmp
  puts "What would you like to edit?"
  iterate tmp.stats, gets.chomp.to_sym
end
