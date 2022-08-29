import System.Environment   
import System.Directory (doesFileExist)
import System.IO (hPutStrLn, stderr)
import System.Exit
import Data.List  


main = do  
    args <- getArgs                  -- arguments
    progName <- getProgName          -- environment variable
    putStrLn "The arguments are"    -- stdout
    mapM putStrLn args  
    putStrLn "The program name is"  
    putStrLn progName
    putStrLn "write something to stdout"  
    something <- getLine             -- stdin
    putStrLn "you writes"
    putStrLn something 

    -- file IO --

    fileIsHere <- doesFileExist "C:/Users/olial/OneDrive/Escritorio/tendencias en el desarroo de software/haskell/hellowrld.hs" 
    if fileIsHere
    then 
        putStrLn "file is here"
    else do 
        hPutStrLn stderr "No such file exists" -- stderr

    txt <- getLine
    putStrLn "hi"