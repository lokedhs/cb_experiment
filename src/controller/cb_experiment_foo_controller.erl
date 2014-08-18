-module( cb_experiment_foo_controller, [Req] ).
-compile( export_all ).

start() ->
    couchbeam:start(),
    {ok, []}.

message( 'GET', [] ) ->
    {output, "This is a test page"}.

concat( [] ) ->
    "";
concat( [Head | []] ) ->
    Head;
concat( [Head | Tail] ) ->
    Head ++ ", " ++ concat( Tail ).

dbs( 'GET', [] ) ->
    couchbeam:start(),
    Db = couchbeam:server_connection( "http://localhost:5984", [] ),
    case couchbeam:all_dbs( Db ) of
        {ok, List} ->
            {output, concat(List)}
    end.
