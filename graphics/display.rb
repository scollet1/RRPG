# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    display.rb                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/07/01 16:38:07 by scollet           #+#    #+#              #
#    Updated: 2017/07/01 16:38:08 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/usr/ruby
require_relative '../error.rb'

def animate
  system "clear"
end

def menu
  animate
  puts "Welcome to RRPG, choose an option:
  1. Create
  2. Edit
  3. Fight"

  if (option = gets.to_i) != 1..3
    error "menu"
  end
  return option
end

def create_opts option
  animate
  if option == 1
    puts "What would you like to create?
    1. Player
    2. NPC
    3. Monster"

    return gets
  elsif option == 2
    puts "What name is this character?"
    return gets
  else
    error "create_opts"
  end
end

def edit_opts
end

def fight_opts
end
