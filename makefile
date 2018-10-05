CXX = g++
CXXFLAGS = -std=c++0x
CXXFLAGS += -Wall
CXXFLAGS += -pedantic-errors
CXXFLAGS += -g
#CXXFLAGS += -03
LDFLAGS = -lboost_date_time

OBJS = functions.o lecture1.o

SRCS = main.cpp functions.cpp lecture1.cpp

HEADERS = lecture1.h functions.h

#target: dependencies
#	rule to build

#lecture1: ${SRCS} ${HEADERS}
#	g++ -std=c++0x lecture1.cpp functions.cpp -o lecture1

#lecture1: ${SRCS} ${HEADERS}
#	${CXX} ${CXXFLAGS} ${SRCS} -o lecture1

#Instead of depending on the sources we can depend on the object files
#We can specify our target as the object and they depend on the sources.
#(@:.o=.cpp) This says the source file ends in .cpp and the target ends
#in .o This will build all of the .o files from the source files.

lecture1: ${OBJS} ${HEADERS}
	${CXX} ${LDFLAGS} ${OBJS} -o lecture1

${OBJS}: ${SRCS}
	${CXX} ${CXXFLAGS} -c $(@:.o=.cpp)