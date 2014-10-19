module Foundation where

import           Yesod
import           Yesod.Default.Util
import           Yesod.Form.Jquery
import           Database.Persist
import           Database.Persist.TH

{-

Every Yesod application has a foundation data type. This is a data type
which represents the application itself. It can include any initialization
data necessary for running the application, such as a database connection pool.

In our case, our application has no such initialization data, and therefore
our datatype is very simplistic. By convention, we call this datatype "App" with
a single data constructor, also called "App".

-}
data App = App

{-

The Yesod typeclass allows us to alter a number of the behaviors of Yesod, such
as the default page layout, error handler functions, and how URLs are rendered.
We're going to accept all of the defaults in our application, so our instance
is pretty boring.

-}
instance Yesod App

mkYesodData "App" [parseRoutes|
/         HomeR     GET
/markdown MarkdownR PUT
/fib/#Int FibR      GET
/job      JobR      POST
|]
