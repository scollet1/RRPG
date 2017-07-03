# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    create.rb                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/07/01 17:02:50 by scollet           #+#    #+#              #
#    Updated: 2017/07/01 17:02:51 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

require_relative '../graphics/display.rb'
require_relative '../classes/player.rb'
require_relative './write.rb'

def create
  opts = create_opts 1
  name = create_opts 2
  if opts == 1
    object = Player.new name
  elsif opts == 2
    object = Npc.new name
  elsif opts == 3
    object = Monster.new name
  else
    error "create"
  end
  animate
  puts "Internal object #{object} has been created, attempting write to file."
  write object
  run
end
