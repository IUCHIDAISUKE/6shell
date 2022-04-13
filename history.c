#include "include/minishell.h"
//gcc history.c -lreadlineでコンパイル
int main()
{
	char *command;

	command = NULL;
	while (1)
	{
		command = readline("6shell> ");
		if (command == NULL || strlen(command) == 0)
		{
			free(command);
			break;
		}
		//printf("command is '%s'\n", command);
		add_history(command);
		//コマンドの処理
		free(command);
	}
	return 0;
}