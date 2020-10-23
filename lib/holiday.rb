require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter].each {|holiday, items|items << supply}

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # add the second argument to the memorial day array
    holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # remember to return the updated hash
  holiday_hash.each do |full_season, holiday|
    if full_season == season
      holiday_hash[full_season][holiday_name] = supply_array
    end
  end
    holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
       # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holiday|
    season.to_s.split.each {|name| puts "#{name.capitalize!}:"}
    holiday.each do |holiday_name, supply|
      capName = (holiday_name.to_s.gsub("_"," ").split.each {|name| "#{name.capitalize!}"}).join(" ")
      puts "  #{capName.to_s}: #{supply.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
    return_holiday =[]
    holiday_hash.each do |season, holiday_name|
      holiday_name.each do |holiday, supplies|
          if supplies.any?{|item|item.include?('BBQ')}
            return_holiday << holiday
          end
      end
    end
    return_holiday
end







