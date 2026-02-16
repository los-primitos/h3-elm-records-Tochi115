module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)



-- FUNCTIONS


add2 : Int -> Int -> Int
add2 x y =
    x + y


add3 : Float -> Float -> Float -> Float
add3 x y z =
    x + y + z


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc x y op =
    op x y



-- TYPES


type alias Language =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


languageNames : List Language -> List String
languageNames languages =
    List.map .name languages


type alias User =
    { name : String
    , uType : String
    }


onlyStudents : List User -> List String
onlyStudents users =
    List.map
        (\u ->
            case u.uType of
                "Student" ->
                    u.name

                _ ->
                    ""
        )
        users


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres videogames =
    List.map .genres videogames



-- LAPTOP DATA


type alias Laptop =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Laptop
myLaptop =
    { ram = "16GB"
    , model = "TUF A15"
    , brand = "ASUS"
    , screenSize = "15.6"
    }



-- HTML


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
