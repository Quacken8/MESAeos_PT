# makefile for mesa eos moudule outside of mesa source directory

include $(MESA_DIR)/utils/makefile_header

LOAD_MESA = $(LOAD_MESA_STAR) $(LOAD_EXTRAS)

SAMPLE      = sample_eos
SAMPLE_OBJS = sample_eos.o
TEST_DIR    = .
SRC_DIR = .

$(SAMPLE) : $(SAMPLE_OBJS)
	  $(LOADER) $(FCopenmp) -o $(TEST_DIR)/$(SAMPLE) $(SAMPLE_OBJS) $(LOAD_MESA) 

%.o: $(SRC_DIR)/%.f90 
	  $(FC) $(FCfree) -I$(MESA_INCLUDE_DIR) -c $<
