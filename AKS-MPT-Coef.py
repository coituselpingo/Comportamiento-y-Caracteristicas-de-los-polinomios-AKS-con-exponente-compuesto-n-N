#! /usr/bin/python2.7 -s

def decElements(data):
    x = len(str(data).replace('.', ''))

    if data < 1:
        return x - 1
    else:
        return x - len(str(int(data)).replace('.', ''))


def frange(start, stop, step, DECprec):
    i = start
    while i < stop:
        yield round(i, DECprec)
        i += step


def to_gnuDOT(pascal_data, data_range):
    x_start = data_range[0]
    x_step = data_range[1]
    x_end = data_range[2]
    x_prec = decElements(x_step)

    plotter_script = open("./plot_me_sempai.plot", "w")
    plotter_script.write("""#! /usr/bin/gnuplot -p
unset key
set grid
plot\t""")

    for polynomial in pascal_data:

        n_ref = polynomial[1]
        print "Generating" + str(n_ref) + "\t AKS-MPT polynomie\n"
        coeficient_ref = polynomial[0]
        output_file_name = str(n_ref) + ".dat"
        output_file = open("./Modular/" + output_file_name, 'w')
        output_file.write("x\ty\n")

        plotter_script.write("\"./Modular/" + output_file_name + "\" using 1:2 with dots,\\" + "\n")

        for x in frange(x_start, x_end, x_step, x_prec):

            index = len(coeficient_ref) - 1
            carry = 0.0

            for value in coeficient_ref:
                carry += round(value * (x ** index), x_prec)
                index -= 1

            """
            y_integer = int(carry)
            y_decimal = round((carry-y_integer),x_prec)

            mid_y = y_integer%n_ref
            mid_y += y_decimal

            y = mid_y
            """
            y = round(carry % n_ref, x_prec)
            output_file.write(str(x) + "\t" + str(y) + "\n")

        output_file.close()


def _insert(m):
    output = []
    for i in m:
        output.append(i)
    return output


def generate_pascal(max_p):
    pascal_seed = [1, 2, 1]
    output = []
    mid_output = []
    for i in range(3, max_p + 1, 1):
        pascal_seed.append(0)
        carry = 0

        for element in pascal_seed:
            mid_output.append(element + carry)
            carry = element

        pascal_seed = mid_output
        mid_output = []
        output.append([_insert(pascal_seed), i])

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
                mid_output.append(i % n)
        output.append([_insert(mid_output), n])
    return output

def to_joy(modularPascal):
    output = []
    for pointer in modularPascal:
        mid_string = ""
        is_prime = True
        first_element = False
        index = len(pointer[0]) - 1
        dude_omg = True
        print pointer[1] , "on Work"
        for element in pointer[0]:
            if element == 0:
                is_prime *= True
            elif not first_element:
                is_prime *= False
                mid_string += str(element) + "\t:\t" + str(index) + "\t:\t" + str(pointer[1] - index)
                if (pointer[1] - index)*element == pointer[1]:
                    mid_string += "\t 7u7"
                first_element = True
            elif element != 0:
                if ((pointer[1] - index)*element)%pointer[1] == 0:
                    dude_omg *= True
                else:
                    dude_omg *= False
            index -= 1
        if is_prime:
            output.append(str(pointer[1]) + "\t:\tIs Prime")
        else:
            if dude_omg:
                output.append(str(pointer[1]) + "\t:\t" + str(mid_string) + "\tUwU")
            else:
                output.append(str(pointer[1]) + "\t:\t" + str(mid_string) + "\t:C")

    text = open("./joy.dat",'w')
    for line in output:
        text.write(line + "\n")
    text.close()

    return output

def to_polynomial(modularPascal):
    output = []
    for pointer in modularPascal:
        mid_string = ""
        index = len(pointer[0]) - 1
        for element in pointer[0]:
            if element == 0:
                pass
            else:
                mid_string += "+" + str(element) + "*x**" + str(index)
            index -= 1
        output.append([mid_string, pointer[1]])
    return output


def to_gnuFormat(polynomial):
    output_file = open("./toPlot.plot", 'w')

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
            mid_string = "f_" + str(pointer[1]) + "(x)"
            output_file.write(mid_string + " = " + pointer[0] + "\n")
            carry_functions.append(mid_string)

    final_string = "plot [-2:2] [-2:2]"
    for i in carry_functions:
        if i == carry_functions[0]:
            final_string += " " + i
        else:
            final_string += " ," + i
    output_file.write(final_string)


def main(max_N):
    max_N = int(max_N)
    x = generate_pascal(max_N)
    y = AKS_MTP(x)
    to_joy(y)
    print "DONE"
    """
    to_gnuDOT(y, [-20, 0.0001, 20])
    z = to_polynomial(y)
    to_gnuFormat(z)
    """

import sys

main(sys.argv[1])
