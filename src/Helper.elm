module Helper exposing (..)
--1.0
type alias ProgrammingLanguage =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


--1.1
languages : List ProgrammingLanguage
languages =
    [ { name = "elm"
      , releaseYear = 2012
      , currentVersion = "0.19.1"
      }
    , { name = "javascript"
      , releaseYear = 1995
      , currentVersion = "ECMAScript 2025"
      }
    ]



--1.2
languageNames : List ProgrammingLanguage -> List String
languageNames langs =
    List.map (\lang -> lang.name) langs



--2.0
type alias User =
    { name : String
    , uType : String
    }


--2.1
users : List User
users =
    [ { name = "Roberto", uType = "Student" }
    , { name = "Mitsiu", uType = "Professor" }
    ]


--2,2
onlyStudents : List User -> List String
onlyStudents userList =
    List.map
        (\user ->
            if user.uType == "Student" then
                user.name
            else
                ""
        )
        userList

--3.0
type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }

---3.1
videogames : List Videogame
videogames =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 5000000
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Ocarina of Time"
      , releaseYear = 1998
      , available = False
      , downloads = 12000000
      , genres = [ "Action", "Adventure" ]
      }
    ]

--3.2
getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres games =
    List.map (\game -> game.genres) games
