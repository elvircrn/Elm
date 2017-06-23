module Hello exposing (..)

import Html exposing (text)

add1 : Int -> Int
add1 x =
    x + 1

add : Int -> Int -> Int
add x y =
    x + y

multiply : Int -> Int -> Int
multiply x y =
    x * y

divide : Float -> Float -> Float
divide x y =
    x / y

switch : (a, b) -> (b, a)
switch (x, y) =
    (y, x)

type Answer a = Yes | No | Other a

main =
    text "Hello"
