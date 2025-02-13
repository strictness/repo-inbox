module Main where
import System.Environment 
import Data.List

--  Write a main program that takes as a command line argument the name of a file (e.g., myfile), reads the file,
--  sorts the lines of the file alphabetically, and then writes the result to a file 'myfile.result'.

-- > ghc --make IO1.hs            // creates an executable IO1.hs
-- > ./IO1 myfile
-- > myfile:
-- Haskell
-- ML
-- Miranda
-- Java
-- C++
-- Javascript
-- Ruby
-- Python
-- Perl

-- > myfile.result:
-- C++
-- Haskell
-- Java
-- Javascript
-- ML
-- Miranda
-- Perl
-- Python
-- Ruby


-- The following functions might be helpful:
--  getArgs :: IO [String]    
--     When performed, get command-line arguments supplied when invoking compiled program
--  readFile :: FilePath -> IO String     
--     When performing readFile f, get contents of file f as a string
--     Type FilePath is synonymous with String
--  writeFile :: FilePath -> String -> IO ()
--     When performing writeFile f s, writes the value s to the file f.
--  lines :: String -> [String]
--     lines breaks a string up into a list of strings at newline characters. The resulting strings do not contain newlines.
--  unlines :: [String] -> String   
--     unlines is an inverse operation to lines. It joins lines, after appending a terminating newline to each.
--  compare :: String -> String -> Ordering
--     compare indicates whether the first argument is LT, EQ, or GT the second
--  sortBy :: (a -> a -> Ordering) -> [a] -> [a]
--     takes a comparison function and a list and returns a new list sorted by the supplied comparison function.

sortLines :: [String] -> [String]
sortLines = sortBy number

readn :: String -> Int
readn = read

number :: String -> String -> Ordering
number l1 l2 = compare (readn (head $ words l1)) (readn (head $ words l2))

main :: IO () 
main = do 
    fp <- getArgs
    f <- readFile $ head fp
    let sortedFile = (unlines . sortLines . lines) f
    writeFile "myfile.result" sortedFile

