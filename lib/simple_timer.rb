class SimpleTimer
    attr_reader :beginning_time, :end_time, :unit, :factor

    def initialize(options={})
        if options[:unit]
            @unit = options[:unit]
        else
            @unit = "seconds"
            @factor = 1
        end

        #changes unit based on various user inputs
        if @unit == "seconds" || @unit == "s" || @unit == "sec"
            @factor = 1
        elsif @unit == "milliseconds" || @unit == "ms"
            @factor = 1000
        else
            @factor = 1
        end

        if options[:start_now]
            self.start
        end
    end

    def start
        @start_time = lambda{ Time.now }.call
        puts "Timer started at: #{@start_time}"
    end

    def stop
        @end_time = lambda{ Time.now }.call
        puts "Time elapsed: #{((@end_time - @start_time)*@factor)} #{@unit}"
    end


    private
    #setters for priv vars
    def unit=(string)
        @unit = string
    end

    def factor=(num)
        @factor = num
    end
end