main = do
     verificaDia 1
     validarMes 1

verificaDia a= do
    putStrLn "Dame un dia"
    a <- getLine
    let aInt = read a::Int
    if( aInt>=1 && aInt <= 31)
        then do 
            putStrLn("Naciste un "++show (aInt))
    else 
        main

validarMes bInt = do 
    putStrLn"Cual es tu mes"
    b <- getLine
    let bInt = read b :: Int
    if bInt>=1 && bInt <=12 
        then do
            elegirMes bInt
    else do
        putStrLn("Mes incorrecto")
        validarMes bInt

elegirMes bInt = do 
    case bInt of 
        1 -> putStrLn "Naciste en Enero \n Tu mes tiene 31 dias" 
        2 -> putStrLn "Naciste en Febrero \n Tu mes tiene 28 dias" 
        3 -> putStrLn "Naciste en Marzo \n Tu mes tiene 31 dias"
        4 -> putStrLn "Naciste en Abril \n Tu mes tiene 30 dias"
        5 -> putStrLn "Naciste en Mayo \n Tu mes tiene 31 dias"
        6 -> putStrLn "Naciste en Junio \n Tu mes tiene 30 dias" 
        7 -> putStrLn "Naciste en Julio \n Tu mes tiene 31 dias" 
        8 -> putStrLn "Naciste en Agosto \n Tu mes tiene 31 dias" 
        9 -> putStrLn "Naciste en Septiembre \n Tu mes tiene 30 dias" 
        10 -> putStrLn "Naciste en Octubre \n Tu mes tiene 31 dias" 
        11 -> putStrLn "Naciste en Noviembre \n Tu mes tiene 30 dias" 
        12 -> putStrLn "Naciste en Diciembre \n Tu mes tiene 31 dias"
    main
       
        
