import Html exposing (text)

type User = Anonymous | Named String

userPhoto : User -> String
userPhoto user =
    case user of
        Anonymous ->
            "anon.png"

        Named name ->
            "users/" ++ name ++ ".png"

activeUsers : List User
activeUsers =
    [ Anonymous, Named "catface420", Named "AzureDiamond", Anonymous ]

photos : List User -> List String
photos users =
    List.map userPhoto users

main =
    activeUsers
    |> photos
    |> toString
    |> text

