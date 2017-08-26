#! /usr/bin/python2.7 -s

from fractions import gcd

def _pause():
	try:
		input("waiting")
	except:
		pass

def decElements(data):
	x = len(str(data).replace('.',''))

	if data < 1:
		return x-1
	else:
		return x - len(str(int(data)).replace('.',''))


def frange(start, stop, step,DECprec):
	i = start
	while i < stop:
		yield round(i,DECprec)
		i += step

def to_gnuDOT(pascal_data,data_range):
	x_start = data_range[0]
	x_step = data_range[1]
	x_end = data_range[2]
	x_prec = decElements(x_step)

	plotter_script = open("./plot_me_sempai.plot","w")
	plotter_script.write("""#! /usr/bin/gnuplot -p
unset key
set grid
plot\t""")

	for polynomial in pascal_data:
		
		n_ref = polynomial[1]
		print "Generating" + str(n_ref) + "\t AKS-MPT polynomie\n"
		coeficient_ref = polynomial[0]
		output_file_name = str(n_ref) + ".dat"
		output_file = open("./Modular/"+output_file_name , 'w')
		output_file.write("x\ty\n")

		plotter_script.write("\"./Modular/"+output_file_name + "\" using 1:2 with dots,\\" +"\n")

		for x in frange(x_start,x_end,x_step,x_prec):
			
			index = len(coeficient_ref) -1
			carry = 0.0
			
			for value in coeficient_ref:
			
				carry += round(value*(x**index),x_prec)				
				index -= 1
				
			"""
			y_integer = int(carry)
			y_decimal = round((carry-y_integer),x_prec)

			mid_y = y_integer%n_ref
			mid_y += y_decimal
			
			y = mid_y
			"""
			y = round(carry%n_ref,x_prec)
			output_file.write(str(x) + "\t" + str(y) +"\n")

		output_file.close()


def _insert(m):
	output = []
	for i in m:
		output.append(i)
	return output

def generate_pascal(max_p):
	pascal_seed = [1,2,1]
	output = []
	mid_output = []
	for i in range(3,max_p +1,1):
		pascal_seed.append(0)
		carry = 0

		for element in pascal_seed:
			mid_output.append(element+carry)
			carry = element

		pascal_seed = mid_output
		mid_output = []
		output.append([_insert(pascal_seed),i])
	
	return output

def AKS_MTP(pascal):
	output = []
	for element in pascal:
		mid_output = []
		sub_pascal = element[0]
		n = element[1]
		for i in sub_pascal:
			if i == 1:
				mid_output.append(0)
			else:
				mid_output.append(i%n)
		output.append([_insert(mid_output),n])
	return output

def to_polynomial(modularPascal):
	output = []
	for pointer in modularPascal:
		mid_string = ""
		index = len(pointer[0])-1
		for element in pointer[0]:
			if element == 0:
				pass
			else:
				mid_string += "+" + str(element) + "*x**" + str(index)
			index -= 1
		output.append([mid_string,pointer[1]])
	return output

def to_gnuFormat(polynomial):
	output_file = open("./toPlot.plot",'w')

	output_file.write("""
#! /usr/bin/gnuplot -p

set grid
unset key
set terminal png size 20000,20000
set output "plot.png"

""")
	carry_functions = []
	for pointer in polynomial:
		if pointer[0] == "":
			pass
		else:
			mid_string = "f_"+ str(pointer[1]) +"(x)"
			output_file.write(mid_string + " = "+ pointer[0]+"\n")
			carry_functions.append(mid_string)

	final_string = "plot [-2:2] [-2:2]"
	for i in carry_functions:
		if i == carry_functions[0]:
			final_string += " " + i
		else:
			final_string += " ,"+i
	output_file.write(final_string)

def carmichael_test(aksData,contrastList):

	output_text = open("./carmichael_test.dat",'w')
	carmichael_counter = 0
	carmichael_list = []
	#carmichael_txt = open("./carmichael_poly.txt",'w')

	for coeficient_row in aksData:
		n = coeficient_row[1]

		sub_primalty = (2**n - 2 - 2*n)%n == 0

		is_carmichael = n in contrastList

		carry = 0

		if is_carmichael:
			#carmichael_carry = "\[ "
			carmichael_carry = []
			index = 0
			for element in coeficient_row[0]:
				carry += element

				if element == 0:
					pass
				else:
					#carmichael_carry += str(element) + "z^{" + str(n - index)+  "} +"
					carmichael_carry.append([element,index])
				index += 1
			#carmichael_carry += carmichael_carry[:len(carmichael_carry)-1] + " \] \n"
			#carmichael_txt.write(carmichael_carry)
			carmichael_list.append([carmichael_carry[:],n])
		else:
			for element in coeficient_row[0]:
				carry += element
		if (carry == 0 and sub_primalty) or (carry != 0 and not(sub_primalty)):
			is_str = "CONSISTENTE\t\t"
			if is_carmichael:
				carmichael_counter += 1
		else:
			is_str = "nonconsiste\t\t"
			if is_carmichael:
				carmichael_counter += 1

		if carry == 0:
			output_text.write(str(n) + " :\t PRIME \t" + \
							  str(sub_primalty)+ "\t\t" + str(carry%n) + "\t\t" \
							  + is_str + str(is_carmichael) +"\n")
		else:
			output_text.write(str(n) + " :\t notpr \t" + \
							 str(sub_primalty) + "\t\t" + str(carry%n) + "\t\t" \
							  + is_str + str(is_carmichael) +"\n")

	output_text.write("Acierto: " + str(len(contrastList)/carmichael_counter*100) +"%" + "\n")

	output_text.close()

	return(carmichael_list)

def gcd_test(coef_list):
	output = []
	for coeficientes in coef_list:
		n = coeficientes[1]
		coprimo = True

		for binomial in coeficientes[0]:
			if gcd(n,binomial[0]) != 1:
				print binomial[0] , n - binomial[1]
			coprimo *= gcd(n,binomial[0]) == 1

		output.append([n,str(coprimo)])
	print output

def main (max_N):
	carmichael = [561, 1105, 1729, 2465, 2821, 6601]
	max_N = int(max_N)
	x = generate_pascal(max_N)
	y = AKS_MTP(x)
	z = carmichael_test(y,carmichael)
	gcd_test(z)
	"""
	to_gnuDOT(y,[-20,0.0001,20])
	z = to_polynomial(y)
	to_gnuFormat(z)
	"""

main(2000)


import sys
main(sys.argv[1])
