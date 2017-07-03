# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    edit.rb                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: scollet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/07/02 16:07:37 by scollet           #+#    #+#              #
#    Updated: 2017/07/02 16:07:38 by scollet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

require_relative 'read.rb'

def edit
  opts = edit_opts 1
  if opts == 1
    if Dir["./objects/players/*"].empty?
      puts "No files to speak of, press any key to coninue."
      gets
      run
    else
      arr = Array.new
      Dir.open("./objects/players/").each do |file|
        arr.push file
      end
      animate
      puts "Choose a file to edit."
      i = 0
      while i < arr.length
        puts "#{i}: #{arr[i]}"
        i += 1
      end
      read arr[gets.to_i]
    end
  elsif opts == 2
    if Dir["./objects/npcs/*"].empty?
      puts "No files to speak of, press any key to coninue."
      gets
      run
    else
      arr = Array.new
      Dir.open("./objects/npcs/").each do |file|
        arr.push file
      end
      animate
      puts "Choose a file to edit."
      i = 0
      while i < arr.length
        puts "#{i}: #{arr[i]}"
        i += 1
      end
      read arr[gets.to_i]
    end
  elsif opts == 3
    if Dir["./objects/monsters/*"].empty?
      puts "No files to speak of, press any key to coninue."
      gets
      run
    else
      arr = Array.new
      Dir.open("./objects/monsters/").each do |file|
        arr.push file
      end
      animate
      puts "Choose a file to edit."
      i = 0
      while i < arr.length
        puts "#{i}: #{arr[i]}"
        i += 1
      end
      read arr[gets.to_i]
    end
  else
    error "edit"
  end
end
