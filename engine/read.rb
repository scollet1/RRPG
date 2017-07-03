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

require_relative '../graphics/display.rb'

def iterate h
  h.each do |k, v|
    value = v || k
    if value.is_a? Hash or value.is_a? Array
      puts "\e[34m#{k.capitalize}\e[0m:"
      iterate value
    else
      print v ? "#{k.capitalize}: \e[35m#{v}\n\e[0m" : "\e[41m#{k}\e[0m"
    end
  end
end

def read object
  animate
  path = "./objects/players/#{object}"
  tmp = YAML.load_file(path)
  iterate tmp.stats
end
