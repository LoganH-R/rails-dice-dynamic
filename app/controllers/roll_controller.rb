class RollController < ApplicationController
  def roll_dice
    @num_dice = params.fetch("num_dice").to_i
    @size_die = params.fetch("size_die").to_i

    @rolls = []

    @num_dice.times do
      die = rand(1..@size_die)

      @rolls.push(die)
    end

    render({ :template => "my_templates/flexible" }) 
  end

  def home
    render({ :template => "my_templates/homepage" })
  end
end
