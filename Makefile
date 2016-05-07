CXX 	 := c++
CXXFLAGS := -g -std=gnu++11

ucd-csci2312-pa5: ErrorContext.o TemplateTests.o main.o
	$(CXX) $(CXXFLAGS) -o ucd-csci2312-pa5 ErrorContext.o TemplateTests.o  main.o

main.o: main.cpp ErrorContext.h TemplateTests.h
	$(CXX) $(CXXFLAGS) -c -o main.o main.cpp

ErrorContext.o: ErrorContext.h ErrorContext.cpp
	$(CXX) $(CXXFLAGS) -c -o ErrorContext.o ErrorContext.cpp

TemplateTests.o: TemplateTests.h TemplateTests.cpp
	$(CXX) $(CXXFLAGS) -c -o TemplateTests.o TemplateTests.cpp

.PHONY: test clean

clean:
	rm -f ErrorContext.o TemplateTests.o main.o ucd-csci2312-pa5

test: ucd-csci2312-pa5
	./ucd-csci2312-pa5