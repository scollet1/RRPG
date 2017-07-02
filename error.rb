# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    error.rb                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/07/01 16:45:16 by scollet           #+#    #+#              #
#    Updated: 2017/07/01 16:45:17 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#require_relative 'main.rb'

def error sourcerr
  puts "Error in #{sourcerr}, press any key to continue"
  gets
  run
end
