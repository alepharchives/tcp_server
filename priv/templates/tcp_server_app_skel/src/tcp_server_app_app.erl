-module({{appid}}_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
  {{appid}}:start_link().

stop(_State) ->
  ok.
