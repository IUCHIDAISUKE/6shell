NAME	= main

CC		= clang
CFLAGS	= -Wall -Wextra -Werror -I.
RM		= rm -f

SRCS	= main.c
OBJS	= $(SRCS:.c=.o)

$(NAME): $(OBJS)

all: $(NAME)

clean:
	$(RM) $(OBJS) $(ADV_OBJS)

fclean:	clean
	rm -f $(NAME) $(PISH)

re:	fclean all

.PHONY: valgrind
valgrind: re
	valgrind --leak-check=full --show-leak-kinds=all --track-fds=yes ./$(NAME)


.PHONY: test
test: re
	./$(NAME)