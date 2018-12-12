{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Main where

import Lib
import Web.Scotty
import Data.Monoid ((<>))

main = do
  putStrLn "Starting Server..."
  scotty 6000 $ do
    get "/hello" $ do
      text "Hello"

    get "/hello/:name" $ do
      name <- param "name"
      text ("Hi there, " <> name <> "!")
