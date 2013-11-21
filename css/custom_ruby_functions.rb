module Sass::Script::Functions
  module USW_Random
    ## Create random Color
    #  inspired by: http://victorcoulon.fr/generating-random-color-in-sass/
    #
    def usw_randomColor()
      Sass::Script::Color.new([rand(255), rand(255), rand(255)])
    end

    ## Create random Number
    #  int max [optional] if max is not supplied a float between 0 and 1 is returned.
    #                     if max is supplied, an Integer between 0 and max (both inclusive) will be returned.
    #  int min [optional] if min is supplied too, an Integer between min and max (both inclusive) will be returned.
    #
    def usw_random(max=-1, min=0)
        Sass::Script::Number.new( max.to_i < 0 ? rand() : rand(min.to_i .. max.to_i ))
    end
  end
  include USW_Random
end