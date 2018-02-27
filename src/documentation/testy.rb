#! /bin/ruby
# -*- coding: utf-8 -*-

# Dependencies' declaration
require_relative 'internal_documentation'
require_relative 'internal_commands'

# Declaring a dummy commands' category
module RME
  module Command
    module Event

      Command::declare({:name => :move_to,
                        :namespace => self,
                        :parameters => [
                          {:name        => :id,
                           :description => "Event-to-move's identifier",
                           :type        => ParameterType::PositiveInteger},
                          {:name        => :x,
                           :description => "Targeted x coordinate",
                           :type        => RME::Command::ParameterType::Coordinate},
                          {:name        => :y,
                           :description => "Targeted y coordinate",
                           :type        => RME::Command::ParameterType::Coordinate},
                          {:name        => :ghostly,
                           :description => "Tells whether the event can move through anything or not",
                           :type        => RME::Command::ParameterType::Boolean,
                           :default     => false}
                        ]}) { |id, x, y, ghostly| puts "Moving event n°#{id} to (#{x}, #{y}) (ghostly? #{ghostly})" }
    end
  end
end

# Command's invocation's illustration
RME::Command::Event::move_to(11, 27, 32)

puts "\n\n"
puts "RME::Command::Event's documentation :\n"
puts "#{RME::Doc.schema[RME::Command::Event]}\n"

puts "\n\n"
puts "'doc.Coordinate.description' => #{RME::Doc.default_translation['doc.Coordinate.description']}\n"
