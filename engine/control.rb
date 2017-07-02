# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    control.rb                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/07/01 17:01:32 by scollet           #+#    #+#              #
#    Updated: 2017/07/01 17:01:33 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#require_relative '../main.rb'
require_relative 'create.rb'

def control option
  if option == 1
    create
  elsif option == 2
    edit
  elsif otpion == 3
    fight
  else
    error "run"
  end
end
