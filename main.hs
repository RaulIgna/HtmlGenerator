import System.Environment -- Used for args

html :: String -> String -- Creates the main html tag
html content = wrapInComplexTag "html" "lang" "en" content 

body :: String -> String -- Creates the body tag
body content = wrapInTag content "body"

text :: String -> String
text content = wrapInTag content "p"

linkJS :: String -- TODO: add js:
linkJS = wrapInTag "PATH/TO/SCRIPT" "link" 

headTag :: String -> String
headTag content = wrapInTag content "head"

--meta :: String
--meta = wrapInComplexTagOnce "meta" "charset" "UTF-8"

title :: String -> String
title content = wrapInTag content "title"

-- TODO: Check if the tag is a valid html tag
wrapInTag :: String -> String -> String -- General function to wrap content in a html tag
wrapInTag content tag = "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

-- wrapInComplexTag - Used to make longer tags with more attributes
wrapInComplexTag :: String -> String 

-- wrapInComplexTag :: String -> String -> String -> String -> String -- tag -> param -> value -> content
-- wrapInComplexTag tag param value content = "<" <> tag <> " " <> param <> "=\"" <> value <> "\">" <> content <> "</" <> tag <> ">" -- Tag used for cases such as <html lang="en"> 

-- wrapInComplexTagOnce :: String -> String -> String -> String -- The same as the previous BUT without the ending that for cases such as <meta charset="UTF-8">
-- wrapInComplexTagOnce tag param value = "<" <> tag <> " " <> param <> "=\"" <> value <> "\">" -- Tag used for cases such as <html lang="en">



main :: IO()
main =
    putStrLn "da" 
