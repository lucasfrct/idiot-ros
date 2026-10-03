# Makefile — wrapper para PlatformIO (projeto: idiot-ros, env: esp12e)

PLATFORMIO := pio
ENV := esp12e

.PHONY: build upload monitor test clean help

# Compila o firmware
build:
	$(PLATFORMIO) run -e $(ENV)

# Grava o firmware na placa (porta autodetectada)
upload:
	$(PLATFORMIO) run -e $(ENV) -t upload

# Abre o monitor serial
monitor:
	$(PLATFORMIO) device monitor

# Executa os testes
test:
	$(PLATFORMIO) test -e $(ENV)

# Limpa artefatos de build (.pio)
clean:
	$(PLATFORMIO) run -e $(ENV) -t clean

help:
	@echo "Targets: build | upload | monitor | test | clean"
	@echo "Exemplo: make upload"
