f = File.open('./grid.txt','r')

grid = []

f.each_line do |line|
    l = line
    l.chomp!
    l = l.split(' ')
    nums = []
    l.each {|num| nums << num.to_i}
    grid << nums
end

f.close

#debug
# grid.each do |line|
#     line.each do |num|
#         print num
#         print " "
#     end
#     print "\n"
# end



def get_product(grid,row,shift)
    return grid[row][shift+0]*grid[row][shift+1]*grid[row][shift+2]*grid[row][shift+3]
end

def display_clusters(grid,row,shift)
    print "cluster:"
    print grid[row][shift+0]
    print ","
    print grid[row][shift+1]
    print ","
    print grid[row][shift+2]
    print ","
    print grid[row][shift+3]
    print "\n"
    shift += 1
end

best_products = []

#check_rows
shift = 0
rows = (0..19)
best_row_product = 0

rows.each do |row|
    shift = 0
    while shift <= 16
        new_product = grid[row][shift+0]*grid[row][shift+1]*grid[row][shift+2]*grid[row][shift+3]
        if new_product > best_row_product
            best_row_product = new_product
        end
        shift += 1
    end
end

best_products << best_row_product

#check_cols
shift = 0
cols = (0..19)
best_col_product = 0

cols.each do |col|
    shift = 0
    while shift <= 16
        new_product = grid[shift+0][col]*grid[shift+1][col]*grid[shift+2][col]*grid[shift+3][col]
        if new_product > best_col_product
            best_col_product = new_product
        end
        shift += 1
    end
end

best_products << best_col_product
#check diags
# shift = 0
# diag_cols = (0..16)
# best_diag_col_product = 0

# diag_cols.each do |diag_col|
#     shift = 0
#     while shift <= 16
#         new_product = grid[shift][diag_col]*grid[shift+1][diag_col+1]*grid[shift+2][diag_col+2]*grid[shift+3][diag_col+3]
#         # puts new_product
#         if new_product > best_diag_col_product
#             best_diag_col_product = new_product
#         end
#         shift += 1
#     end
# end

#check diag_1
shifts = (0..16)
diag_rows = (0..16)
best_diags_product = 0

diag_rows.each do |diag_row|
    shifts.each do |shift|
        new_product = grid[diag_row][shift]*grid[diag_row+1][shift+1]*grid[diag_row+2][shift+2]*grid[diag_row+3][shift+3]
        # print grid[diag_row][shift+0].to_s+' '+grid[diag_row+1][shift+1].to_s+' '+grid[diag_row+2][shift+2].to_s+' '+grid[diag_row+3][shift+3].to_s
        # print "\n"
        if new_product > best_diags_product
            best_diags_product = new_product
        end
        shift += 1
    end
end

best_products << best_diags_product

#check diag_2
shifts = (0..16)
diag_rows = (0..16)
diag_rows_rev = diag_rows.to_a.reverse
best_diags_2_product = 0

diag_rows_rev.each do |diag_row|
    shifts.each do |shift|
        new_product = grid[diag_row][shift]*grid[diag_row-1][shift+1]*grid[diag_row-2][shift+2]*grid[diag_row-3][shift+3]
        # print grid[diag_row][shift+0].to_s+' '+grid[diag_row+1][shift+1].to_s+' '+grid[diag_row+2][shift+2].to_s+' '+grid[diag_row+3][shift+3].to_s
        # print "\n"
        if new_product > best_diags_2_product
            best_diags_2_product = new_product
        end
        shift += 1
    end
end

best_products << best_diags_2_product

best_product = 0

best_products.each do |product|
    if product > best_product
        best_product = product
    end
end

puts "Best Row Product: "+best_row_product.to_s
puts "Best Col Product: "+best_col_product.to_s
puts "Best Diags Product: "+best_diags_product.to_s
puts "Best Diags 2 Product: "+best_diags_2_product.to_s
puts '==================================='
puts "Best Overall Product: "+best_product.to_s