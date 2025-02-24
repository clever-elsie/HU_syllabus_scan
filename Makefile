SHELL := /bin/bash
OPT=-finput-charset=utf-8 -fexec-charset=utf-8 -std=c++2a
MAIN=src/main.cpp
MAINP=src/main.py

CFL = $(BKE) $(ITR)

build: $(MAIN) $(MAINP)
	cd ~ && sudo apt update && sudo apt upgrade -y && sudo apt install -y build-essential python3 python3-pip python3-venv && cd -
	python3 -m venv venv
	source venv/bin/activate && pip3 install --upgrade pip && pip3 install requests beautifulsoup4
	@if [ -d syll ]; then \
		rm -rf syll; \
	fi
	mkdir syll
	source venv/bin/activate && python3 $(MAINP)
	g++ $(OPT) $(MAIN) -o main
	$(MAKE) test
./main: $(MAIN)
	g++ $(OPT) $(MAIN) -o main

run: ./main
	./main 1

test:$(MAIN)
	./main
