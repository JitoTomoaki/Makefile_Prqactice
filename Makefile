OFILES  = $(OUTDIR)/hello.o $(OUTDIR)/print.o
CC      = gcc
CFLAGS  = $(INCLUDE)
INCLUDE = -I $(INCDIR)
OUTDIR  = ./build
SRCDIR  = ./src/cFiles
INCDIR  = ./src/include/
TARGET  = ./$(OUTDIR)/sample

# output
$(TARGET): $(OFILES)
	echo "make sample111" 
	$(CC) $(CFLAGS) -o $@ $^

#Objects
$(OUTDIR)/%.o:$(SRCDIR)/%.c
	echo $@
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -f $(OUTDIR)/*
