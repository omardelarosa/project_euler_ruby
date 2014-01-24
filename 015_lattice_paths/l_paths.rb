class Grid
  attr_accessor :rows, :columns, :matrix

  def initialize(max_rows, max_columns)
    @rows = max_rows
    @columns = max_columns
    @matrix = []
    (0...max_rows).each do |r|
      @matrix << [] 
      (0...max_columns).each do |c|
        @matrix[r][c] = "#{ "%02d" % r}_#{ "%02d" % c}"
      end 
    end
  end

end