import PGF
import System.Environment
import Control.Applicative
import Data.Maybe
import Data.List
import qualified MorphAnalyser as MA
import qualified MorphDisambiguator as MD



main = do
    args <- getArgs
    case args of
      [p, l, s] -> do
        pgf <- readPGF p 
        let morphAnaOutput = fromMaybe "error in morphAna" $ (MA.parseString pgf) <$> (readLanguage l) <*> pure s
        let morphDisamOutput = fromMaybe "error in morphDisam" $ (MD.parseString pgf) <$> (readLanguage l) <*> pure morphAnaOutput
        
        putStrLn morphDisamOutput
      _ -> putStrLn "usage: ./Main pgf lang str"
     
