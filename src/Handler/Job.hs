module Handler.Job where

import Import

import Debug.Trace

postJobR :: Handler Html
postJobR = defaultLayout $ do
    trace "home again" [whamlet| success |]