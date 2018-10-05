CXX = g++
CXXFLAGS = -std=c++0x
CXXFLAGS += -Wall
CXXFLAGS += -pedantic-errors
LDFLAGS = -lboost_date_time

OBJS = functions.o lecture1.o

SRCS = main.cpp functions.cpp lecture1.cpp

HEADERS = lecture1.h functions.h

#target: dependencies
#	rule to build

#lecture1: ${SRCS} ${HEADERS}
#	g++ -std=c++0x lecture1.cpp functions.cpp -o lecture1

lecture1: ${SRCS} ${HEADERS}
	${CXX} ${CXXFLAGS} ${SRCS} -o lecture1