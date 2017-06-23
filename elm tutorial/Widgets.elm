import Time exposing(Time)
import Html exposing (Html, text)

type alias LogsInfo =
    { logs : List String }

type alias TimeInfo =
    { events : List (Time, Float)
    , yAxis : String
    }

type alias ScatterInfo =
    { points : List (Float, Float)
    , xAxis : String
    , yAxis : String
    }

type Widget = Logs LogsInfo | TimePlot TimeInfo | ScatterPlot ScatterInfo

viewLogs: LogsInfo -> Html msg
viewLogs logsInfo =
    text toString logsInfo


viewTime: TimeInfo -> Html msg
viewTime timeInfo =
    text toString timeInfo

viewScatter: ScatterInfo -> Html msg
viewScatter scatterInfo =
    text toString scatterInfo

view : Widget -> Html msg
view widget =
    case widget of
        Logs info ->
            viewLogs info

        TimePlot info ->
            viewTime info
        
        ScatterPlot info ->
            viewScatter info

main =
    text widget





