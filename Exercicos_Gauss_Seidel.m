exer_1_Coef = [ 3 -0.1 -0.2 ; 0.1 7 -0.3 ; 0.3 -0.2 10]; 
exer_1_Const = [ 7.85 -19.3 71.4 ]; 
gauss_Seidel(exer_1_Coef,exer_1_Const,0.000001)

exer_2_Coef = [ 3 -1 1 ; 3 6 2 ; 3 3 7 ];
exer_2_Const = [ 1 0 4 ]; 
gauss_Seidel(exer_2_Coef,exer_2_Const,0.000001)

exer_3_Coef = [ 1 0 -1 ; -1/2 1 -1/4 ;1 -1/2 1 ];
exer_3_Const = [ 0.2 -1.425 2 ]; 
gauss_Seidel(exer_3_Coef,exer_3_Const,0.000001)