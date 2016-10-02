# Make all dependancies that shouldn't be modified

DEPENDANCIES := imgui

all: $(DEPENDANCIES)

imgui:
	@${MAKE} -C shared/imgui -f imgui.make
