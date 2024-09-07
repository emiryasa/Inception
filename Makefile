NAME=Inception

all: $(NAME)

$(NAME):
	@echo "Building $(NAME)..."
	@docker build -t $(NAME) .

clean:
	@echo "Cleaning $(NAME)..."
	@docker rmi $(NAME)

fclean: clean

re: fclean all