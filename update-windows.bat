@echo Updaing submodule...
@git submodule update
@echo Replacing configs...
@xcopy %~dp0content %~dp0.. /E/Y 1> nul
@echo Done.