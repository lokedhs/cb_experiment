{application,riak_pb,
             [{description,"Riak Protocol Buffers Messages"},
              {vsn,"1.4.1.1"},
              {registered,[]},
              {applications,[kernel,stdlib,protobuffs]},
              {env,[]},
              {modules,[riak_kv_pb,riak_pb,riak_pb_codec,riak_pb_kv_codec,
                        riak_pb_search_codec,riak_search_pb]}]}.
