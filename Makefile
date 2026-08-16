# 定义编译器变量
CC     = gcc
# 编译选项
CFLAGS = -Wall -Wextra -std=c11 -g
TARGET = main

# 含义
# main: main.c
# 这个文件 $(TARGET) 依赖 main.c 文件
$(TARGET): main.c
	# 含义
	# gcc -Wall -Wextra -std=c11 -g -o main main.c
	$(CC) $(CFLAGS) -o $@ $<

run: $(TARGET)
	@# 含义
	# ./main
	./$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: run clean
