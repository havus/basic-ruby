# frozen_string_literal: true

require 'bigdecimal'
require 'bigdecimal/util'

class TonCallculator
  def initialize
    # materials trade price
    @coal_ore_price     = 84.to_d
    @gravel_price       = 50.to_d
    @iron_ore_price     = 56.to_d
    @copper_ore_price   = 167.to_d
    @gold_ore_price     = 224.to_d
    @rainbow_ore_price  = 280.to_d

    # product trade price
    @coal_making_price          = 2800.to_d
    @coal_buy_price             = 4680.to_d
    @coal_sell_price            = 4620.to_d

    @iron_ingot_making_price    = 2800.to_d
    @iron_ingot_buy_price       = 8175.to_d
    @iron_ingot_sell_price      = 8053.to_d

    @copper_ingot_making_price  = 5300.to_d
    @copper_ingot_buy_price     = 12194.to_d
    @copper_ingot_sell_price    = 12012.to_d

    @silver_ingot_making_price  = 5560.to_d
    @silver_ingot_buy_price     = 17304.to_d
    @silver_ingot_sell_price    = 17040.to_d

    @gold_ingot_making_price    = 7600.to_d
    @gold_ingot_buy_price       = 21594.to_d
    @gold_ingot_sell_price      = 21210.to_d

    @rainbow_ingot_making_price = 9625.to_d
    @rainbow_ingot_buy_price    = 25981.to_d
    @rainbow_ingot_sell_price   = 25515.to_d
  end

  def crafting_from_scratch
    # ================ coal ================
    @cost_making_coal   = (@coal_ore_price * 5.to_d) + (@gravel_price * 5.to_d) + 0
    @benefit_sell_coal  = @coal_sell_price - @cost_making_coal

    # ================ iron ingot ================
    @cost_making_iron_ingot     = calculate_ingredients(@iron_ore_price, 5, @cost_making_coal, 1, @coal_making_price)
    @benefit_sell_iron_ingot    = @iron_ingot_sell_price - @cost_making_iron_ingot

    # ================ copper ingot ================
    @cost_making_copper_ingot   = calculate_ingredients(@copper_ore_price, 8, @cost_making_coal, 1, @copper_ingot_making_price)
    @benefit_sell_copper_ingot  = @copper_ingot_sell_price - @cost_making_copper_ingot

    # ================ silver ingot ================
    @cost_making_silver_ingot   = calculate_ingredients(@silver_ore_price, 10, @cost_making_coal, 2, @silver_ingot_making_price)
    @benefit_sell_silver_ingot  = @silver_ingot_sell_price - @cost_making_silver_ingot

    # ================ gold ingot ================
    @cost_making_gold_ingot     = calculate_ingredients(@gold_ore_price, 12, @cost_making_coal, 3, @gold_ingot_making_price)
    @benefit_sell_gold_ingot    = @gold_ingot_sell_price - @cost_making_gold_ingot

    # ================ rainbow ingot ================
    @cost_making_rainbow_ingot  = calculate_ingredients(@rainbow_ore_price, 18, @cost_making_coal, 3, @rainbow_ingot_making_price)
    @benefit_sell_rainbow_ingot = @rainbow_ingot_sell_price - @cost_making_rainbow_ingot

    puts "benefit_sell_coal, #{@benefit_sell_coal.to_f}"
    puts "benefit_sell_iron_ingot, #{@benefit_sell_iron_ingot.to_f}"
    puts "benefit_sell_copper_ingot, #{@benefit_sell_copper_ingot.to_f}"
    puts "benefit_sell_silver_ingot, #{@benefit_sell_silver_ingot.to_f}"
    puts "benefit_sell_gold_ingot, #{@benefit_sell_gold_ingot.to_f}"
    puts "benefit_sell_rainbow_ingot, #{@benefit_sell_rainbow_ingot.to_f}"
  end

  def calculate_ingredients(material_1, qty_1, meterial_2, qty_2, cost_making = 0)
    (material_1.to_d * qty_1.to_d) + (meterial_2.to_d * qty_2.to_d) + cost_making.to_d
  end
end

# puts (150.to_d / 100.to_d * 224.to_d).round(2).to_i

TonCallculator.new.crafting_from_scratch