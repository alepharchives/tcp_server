REBAR=./rebar

all:
	@$(REBAR) compile

edoc:
	@$(REBAR) doc

ct:
	@$(REBAR) ct

clean:
	@$(REBAR) clean

build_plt:
	@$(REBAR) build_plt

dialyze:
	@$(REBAR) dialyze

typer:
	@typer -I ./include -r ./src --plt ~/.tcp_server_dialyzer_plt

app:
	@$(REBAR) create template=tcp_server_app dest=../$(PROJECT) appid=$(PROJECT)

