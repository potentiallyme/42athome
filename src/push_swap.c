/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lmoran <lmoran@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/15 21:59:39 by lmoran            #+#    #+#             */
/*   Updated: 2023/12/16 03:41:32 by lmoran           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/push_swap.h"

int	ft_push_swap(int ac, char **av)
{
	return (ft_checker(ac, av));
}

int	main(int ac, char **av)
{
	printf("%i", ft_push_swap(ac, av));
}