{- Welcome to your first Elm program

Read up on syntax:
  http://elm-lang.org/learn/Syntax.elm

Learn about the Elm's core libraries:
  http://package.elm-lang.org/packages/elm-lang/core/latest/

-}

import Graphics.Element exposing (flow, down, Element, show)
import String exposing (length)
import List exposing (sum, map, length)

fortyTwo : Int
fortyTwo =
  42

myNames : List String
myNames =
  ["Alice", "Bob", "Chuck"]

book : {title : String, author : String, pages : Int}
book = { title = "Damian", author = "Hesse", pages = 123}


averageNameLength : List String -> Int
averageNameLength names =
  List.sum ( List.map String.length names ) // List.length names

isLong : {record | pages : Int } -> Bool

isLong book =
  book.pages > 400

type Visibility = All | Active | Completed

toString : Visibility -> String

toString visibility =
  case visibility of
    All ->
      "All"
    Active ->
      "Active"
    Completed ->
      "Completed"


type User = Anonymous | LoggedIn String
userPhoto : User -> String
userPhoto user =
  case user of
    Anonymous ->
      "anon.jpg"
    LoggedIn name ->
      "users/" ++ name ++ "/photo.png"

activeUsers : List User
activeUsers = 
    [
       Anonymous
      ,LoggedIn "Tom"
      ,LoggedIn "Steve"
      ,Anonymous
    ]

type Widget =
    ScatterPlot (List (Int Int))
  | LogData (List String)
  | TimePlot (List (Time, Int))




main : Element
main =
    flow down
      [ helloWorld
      , demo
      ]


helloWorld : Element
helloWorld =
    show "Hello, World!" 

demo : Element
demo = 
  show (map userPhoto activeUsers)

