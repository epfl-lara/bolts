# a-only and a*b
flex -Cf -o a_and_a_star_b.yy.c a_and_a_star_b.l
cc -O3 -march=native -pipe -o flex_a_and_asb a_and_a_star_b.yy.c