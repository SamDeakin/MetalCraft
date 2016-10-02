CXX     = clang++
AR      = ar

LIB     = libimgui.a
DESTDIR = ../../lib
TARGET  = $(DESTDIR)/$(LIB)

COMPCMD = $(CXX) -MMD -c -o
LINKCMD = $(AR) -rcs $(TARGET) $(OBJECTS)

OBJECTS = imgui_demo.o imgui_draw.o imgui.o
DEPENDS = $(OBJECTS:%.o=%.d)

all: $(OBJECTS) $(TARGET)

$(TARGET):
	$(LINKCMD)

$(OBJECTS): $(@:%.o=%.cpp)
	$(COMPCMD) $@ $(@:.o=.cpp)

-include $(DEPENDS)

.PHONY: clean

clean:
	rm $(OBJECTS) $(DEPENDS)
