NAME	=	tech_hour

RM	    =	rm -f

all:	$(NAME)

$(NAME):
		yarn install
		composer install
		cd assets/js/react-module/add-to-cart && yarn install && cd -
		yarn encore dev
		php bin/console server:run

clean:
		@echo "Fake Cleaning" $(NAME)

fclean:		clean
		@echo "Fake Deleting" $(NAME)

re:		fclean all

.PHONY:		re all clean fclean