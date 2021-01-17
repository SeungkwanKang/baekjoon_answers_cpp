CC:=g++
CFLAGS:=-g -Wall -Werror --std=c++17
IN_CPP_DIR:=src
OUT_O_DIR:=build

problems=\
	1000 \
	1001 \
	1002 \
	1003 \
	1008 \
	1011 \
	1018 \
	1065 \
	1085 \
	1110 \
	1152 \
	1157 \
	1181 \
	1193 \
	1316 \
	1330 \
	1427 \
	1436 \
	1546 \
	1712 \
	1929 \
	1978 \
	2108 \
	2231 \
	2292 \
	2438 \
	2439 \
	2447 \
	2557 \
	2562 \
	2581 \
	2588 \
	2675 \
	2741 \
	2742 \
	2750 \
	2751 \
	2753 \
	2775 \
	2798 \
	2839 \
	2869 \
	2884 \
	2908 \
	2941 \
	3009 \
	3052 \
	3053 \
	4153 \
	4344 \
	4673 \
	4948 \
	5622 \
	7568 \
	8393 \
	8958 \
	9020 \
	9498 \
	10171 \
	10172 \
	10250 \
	10430 \
	10718 \
	10757 \
	10809 \
	10814 \
	10818 \
	10869 \
	10870 \
	10871 \
	10872 \
	10950 \
	10951 \
	10952 \
	10989 \
	10998 \
	11021 \
	11022 \
	11720 \
	11729 \
	11650 \
	11651 \
	11653 \
	11654 \
	14681 \
	15552

answers=$(addprefix $(OUT_O_DIR)/,$(problems))

all: $(answers)

$(OUT_O_DIR)/%: $(IN_CPP_DIR)/%.cpp src/includes/basics.hpp
	mkdir -p $(OUT_O_DIR)
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf $(OUT_O_DIR)