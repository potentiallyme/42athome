# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmoran <lmoran@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/16 03:44:44 by lmoran            #+#    #+#              #
#    Updated: 2023/12/16 05:57:31 by lmoran           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#...............................................#

NAME	= push_swap
CC		= @clang
CFLAGS	= -Wall -Werror -Wextra
RM		= @rm -f
CLEAR	= @clear
FILE	= $(shell ls -l src/ | grep -F .c | wc -l)
CMP		= 1

#...............................................#

SRC	= ./src/push_swap.c\
	  ./src/ft_utils.c\

OBJ	= $(SRC:.c=.o)

#...............................................#

PRINT_PATH	= ./libft --no-print-directory
PRINT_NAME	= ./libft/libft.a

#...............................................#

GREEN	= \033[38;5;76m
RED		= \033[38;5;160m
YELLOW	= \033[38;5;226m
ORANGE	= \033[38;5;202m
PURPLE	= \033[38;5;213m
LBLUE	= \033[38;5;51m
BLUE	= \033[38;5;117m
INDI	= \033[38;5;99m
RESET	= \033[00m

#...............................................#

RNBW	= @echo "\n$(RED)pu$(ORANGE)sh_$(YELLOW)swa$(GREEN)p i$(LBLUE)s re$(BLUE)ady $(INDI)to r$(PURPLE)un !$(RESET)  \n"

all: $(PRINT_NAME) $(NAME)

%.o: %.c
	@printf "\r$(LBLUE)[$(RESET)$(CMP)$(LBLUE)] $(RESET)Compiling $(GREEN)$<$(BLUE) [$(RESET)$(CMP)$(BLUE)/$(RESET)$(FILE)$(BLUE)]$(RESET)                      \r"
	$(CC) $(CFLAGS) -c $< -o $@
	@$(eval CMP=$(shell echo $$(($(CMP)+1))))
	
$(PRINT_NAME):
	@make -C $(PRINT_PATH)

$(NAME): $(OBJ)
	$(CC) $(OBJ) $(CFLAGS) $(PRINT_NAME) -o $(NAME)
	$(RNBW)

clean:
	@make clean -C $(PRINT_PATH)
	$(RM) $(OBJ)

fclean: clean
	@make fclean -C $(PRINT_PATH)
	$(RM) $(NAME)

re: fclean all

.PHONY: 
	all clean fclean re