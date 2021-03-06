require "../lib/matriz.rb"
require "test/unit"
#require "../lib/fraccion.rb"

class Test_Matriz < Test::Unit::TestCase

        def test_simple
		@matriz = MatrizDensa.densa([[8, 16], [21, 34]])
		@matriz2 = MatrizDensa.densa([[1, 2], [3, 4]])
		@m3 = MatrizDispersa.new([0, 1], [0, 1], [1, 2])
		@m4 = MatrizDispersa.new([0, 1], [0, 1], [1, 2])
		
               assert_equal [[7, 14], [18, 30]], (@matriz - @matriz2).m
               assert_equal 8, @matriz.pos(0, 0) 
	       assert_equal [[8, 16], [21, 34]], @matriz.m
	       assert_equal 1, @m3.pos(0,0)
	       assert_equal [[15, 30], [39, 64]], (@matriz + @matriz2).m
	       
	       
	       assert_not_equal [[9, 20], [24, 38]], (@matriz + @matriz2).m 
	       assert_not_equal [[10, 25], [30, 42]], (@matriz * @matriz2).m
	       assert_not_equal 3, @m3.pos(0,0)
	       
	end

      
end
