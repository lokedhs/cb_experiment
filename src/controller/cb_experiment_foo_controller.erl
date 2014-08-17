-module( cb_experiment_foo_controller, [Req] ).
-compile( export_all ).

message( 'GET', [] ) ->
    {output, "This is a test page"}.
