/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_utils.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lmoran <lmoran@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/16 03:33:05 by lmoran            #+#    #+#             */
/*   Updated: 2023/12/16 04:32:19 by lmoran           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/push_swap.h"

static int	ft_wgb(int ac, char **av)
{
	if (ac == 2)
	{
		while (*av[1]) // non-numeric check 1 arg
		{
			if (!((*av[1] > 47 && *av[1] < 58) || (*av[1] == 32)
					|| (*av[1] == '-')))
				return (0);
			av[1]++;
		}
		return (1);
	}
	else if (ac > 2)
	{
		while (--ac) // non-numeric check mult arg
		{
			while (*av[ac])
			{
				if (!((*av[ac] > 47 && *av[ac] < 58) || (*av[ac] == '-')))
					return (0);
				av[ac]++;
			}
		}
		return (2);
	}
	return (-1);
}
int	ft_checker(int ac, char **av)
{
	int wgb;
	char **s;

	wgb = ft_wgb(ac, av);
	s = NULL;
	if (wgb <= 0)
	{
		if (wgb < 0)
			write(1, "Error\n", 6);
		return (0);
	}
	if (wgb == 1)
		s = ft_split(av[1], ' ');
	int i = 0;
	int j = 0;
	while (s[i])
	{
		j = 0;
		while (s[i][j])
		{
			printf("%c", s[i][j]);
			j++;
		}
		printf("\n");
		i++;
	}
	return (0);
}