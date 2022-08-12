BEGIN {
	limit = 10000000;
	i = 0;
	while (i < limit) {
		array[i] = 1;
		i++;
	}
	i = 2;
	while (i < limit) {
		if (array[i]) {
			print i;
			e = i;
			while (e < limit) {
				array[e] = 0;
				e = e + i;	
			}
		}
		i++;
	}
	exit
}
