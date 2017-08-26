#! /usr/bin/gnuplot -p

set grid
unset key
set terminal png size 2000,2000
set output "nonAKSp.png"

f_4(x) = +2*x**2
f_6(x) = +3*x**4+2*x**3+3*x**2
f_8(x) = +4*x**6+6*x**4+4*x**2
f_9(x) = +3*x**6+3*x**3
f_10(x) = +5*x**8+2*x**5+5*x**2
f_12(x) = +6*x**10+4*x**9+3*x**8+3*x**4+4*x**3+6*x**2
f_14(x) = +7*x**12+7*x**10+7*x**8+2*x**7+7*x**6+7*x**4+7*x**2
f_15(x) = +5*x**12+3*x**10+10*x**9+10*x**6+3*x**5+5*x**3
f_16(x) = +8*x**14+12*x**12+8*x**10+6*x**8+8*x**6+12*x**4+8*x**2
f_18(x) = +9*x**16+6*x**15+6*x**12+2*x**9+6*x**6+6*x**3+9*x**2
f_20(x) = +10*x**18+5*x**16+4*x**15+10*x**12+16*x**10+10*x**8+4*x**5+5*x**4+10*x**2
f_21(x) = +7*x**18+3*x**14+14*x**12+14*x**9+3*x**7+7*x**3
f_22(x) = +11*x**20+11*x**18+11*x**16+2*x**11+11*x**6+11*x**4+11*x**2
f_24(x) = +12*x**22+8*x**21+18*x**20+4*x**18+15*x**16+8*x**15+4*x**12+8*x**9+15*x**8+4*x**6+18*x**4+8*x**3+12*x**2
f_25(x) = +5*x**20+10*x**15+10*x**10+5*x**5
f_26(x) = +13*x**24+13*x**18+13*x**16+2*x**13+13*x**10+13*x**8+13*x**2
f_27(x) = +9*x**24+9*x**21+3*x**18+18*x**15+18*x**12+3*x**9+9*x**6+9*x**3
f_28(x) = +14*x**26+7*x**24+4*x**21+21*x**20+14*x**18+7*x**16+20*x**14+7*x**12+14*x**10+21*x**8+4*x**7+7*x**4+14*x**2
f_30(x) = +15*x**28+10*x**27+15*x**26+6*x**25+15*x**24+15*x**22+15*x**20+15*x**18+15*x**16+15*x**14+15*x**12+15*x**10+15*x**8+15*x**6+6*x**5+15*x**4+10*x**3+15*x**2
f_32(x) = +16*x**30+24*x**28+16*x**26+28*x**24+16*x**22+8*x**20+16*x**18+6*x**16+16*x**14+8*x**12+16*x**10+28*x**8+16*x**6+24*x**4+16*x**2
f_33(x) = +11*x**30+22*x**27+3*x**22+3*x**11+22*x**6+11*x**3
f_34(x) = +17*x**32+2*x**17+17*x**2
f_35(x) = +7*x**30+5*x**28+21*x**25+10*x**21+10*x**14+21*x**10+5*x**7+7*x**5
f_36(x) = +18*x**34+12*x**33+9*x**32+12*x**30+4*x**27+18*x**20+24*x**18+18*x**16+4*x**9+12*x**6+9*x**4+12*x**3+18*x**2
f_38(x) = +19*x**36+19*x**34+19*x**32+2*x**19+19*x**6+19*x**4+19*x**2
f_39(x) = +13*x**36+13*x**30+13*x**27+3*x**26+3*x**13+13*x**12+13*x**9+13*x**3
f_40(x) = +20*x**38+30*x**36+8*x**35+20*x**34+5*x**32+8*x**30+16*x**25+10*x**24+20*x**20+10*x**16+16*x**15+8*x**10+5*x**8+20*x**6+8*x**5+30*x**4+20*x**2
f_42(x) = +21*x**40+14*x**39+28*x**36+6*x**35+21*x**34+28*x**33+21*x**32+14*x**30+36*x**28+28*x**27+6*x**21+28*x**15+36*x**14+14*x**12+21*x**10+28*x**9+21*x**8+6*x**7+28*x**6+14*x**3+21*x**2
f_44(x) = +22*x**42+11*x**40+11*x**36+22*x**34+4*x**33+33*x**32+22*x**28+22*x**24+28*x**22+22*x**20+22*x**16+33*x**12+4*x**11+22*x**10+11*x**8+11*x**4+22*x**2
f_45(x) = +15*x**42+9*x**40+15*x**39+5*x**36+36*x**35+15*x**33+24*x**30+10*x**27+36*x**25+36*x**20+10*x**18+24*x**15+15*x**12+36*x**10+5*x**9+15*x**6+9*x**5+15*x**3
f_46(x) = +23*x**44+23*x**42+23*x**40+23*x**38+23*x**36+23*x**34+23*x**32+2*x**23+23*x**14+23*x**12+23*x**10+23*x**8+23*x**6+23*x**4+23*x**2
f_48(x) = +24*x**46+16*x**45+36*x**44+24*x**42+18*x**40+32*x**39+24*x**38+20*x**36+24*x**34+15*x**32+16*x**30+24*x**28+16*x**27+12*x**24+16*x**21+24*x**20+16*x**18+15*x**16+24*x**14+20*x**12+24*x**10+32*x**9+18*x**8+24*x**6+36*x**4+16*x**3+24*x**2
f_49(x) = +7*x**42+21*x**35+35*x**28+35*x**21+21*x**14+7*x**7
f_50(x) = +25*x**48+10*x**45+20*x**40+20*x**35+25*x**34+25*x**32+10*x**30+2*x**25+10*x**20+25*x**18+25*x**16+20*x**15+20*x**10+10*x**5+25*x**2
f_51(x) = +17*x**48+34*x**45+17*x**42+34*x**39+17*x**36+3*x**34+34*x**33+17*x**30+34*x**27+34*x**24+17*x**21+34*x**18+3*x**17+17*x**15+34*x**12+17*x**9+34*x**6+17*x**3
f_52(x) = +26*x**50+13*x**48+26*x**44+26*x**40+4*x**39+39*x**36+26*x**34+39*x**32+32*x**26+39*x**20+26*x**18+39*x**16+4*x**13+26*x**12+26*x**8+13*x**4+26*x**2
f_54(x) = +27*x**52+18*x**51+27*x**50+45*x**48+6*x**45+36*x**42+36*x**39+27*x**38+15*x**36+27*x**34+18*x**33+27*x**32+18*x**30+20*x**27+18*x**24+27*x**22+18*x**21+27*x**20+15*x**18+27*x**16+36*x**15+36*x**12+6*x**9+45*x**6+27*x**4+18*x**3+27*x**2
f_55(x) = +11*x**50+5*x**44+10*x**33+22*x**30+22*x**25+10*x**22+5*x**11+11*x**5
f_56(x) = +28*x**54+42*x**52+28*x**50+8*x**49+35*x**48+28*x**44+49*x**40+28*x**38+14*x**36+28*x**34+35*x**32+35*x**24+28*x**22+14*x**20+28*x**18+49*x**16+28*x**12+35*x**8+8*x**7+28*x**6+42*x**4+28*x**2
f_57(x) = +19*x**54+3*x**38+38*x**30+38*x**27+3*x**19+19*x**3
f_58(x) = +29*x**56+29*x**50+29*x**48+29*x**42+29*x**40+29*x**34+29*x**32+2*x**29+29*x**26+29*x**24+29*x**18+29*x**16+29*x**10+29*x**8+29*x**2
f_60(x) = +30*x**58+20*x**57+15*x**56+12*x**55+40*x**54+45*x**52+6*x**50+15*x**48+45*x**44+30*x**42+15*x**40+45*x**36+12*x**35+30*x**34+20*x**33+15*x**32+4*x**30+15*x**28+20*x**27+30*x**26+12*x**25+45*x**24+15*x**20+30*x**18+45*x**16+15*x**12+6*x**10+45*x**8+40*x**6+12*x**5+15*x**4+20*x**3+30*x**2
f_62(x) = +31*x**60+31*x**58+31*x**56+31*x**54+31*x**52+31*x**50+31*x**48+31*x**46+31*x**44+31*x**42+31*x**40+31*x**38+31*x**36+31*x**34+31*x**32+2*x**31+31*x**30+31*x**28+31*x**26+31*x**24+31*x**22+31*x**20+31*x**18+31*x**16+31*x**14+31*x**12+31*x**10+31*x**8+31*x**6+31*x**4+31*x**2
f_63(x) = +21*x**60+21*x**57+9*x**56+7*x**54+36*x**49+21*x**45+35*x**36+42*x**33+42*x**30+35*x**27+21*x**18+36*x**14+7*x**9+9*x**7+21*x**6+21*x**3
f_64(x) = +32*x**62+48*x**60+32*x**58+56*x**56+32*x**54+16*x**52+32*x**50+28*x**48+32*x**46+48*x**44+32*x**42+8*x**40+32*x**38+16*x**36+32*x**34+6*x**32+32*x**30+16*x**28+32*x**26+8*x**24+32*x**22+48*x**20+32*x**18+28*x**16+32*x**14+16*x**12+32*x**10+56*x**8+32*x**6+48*x**4+32*x**2
f_65(x) = +13*x**60+13*x**55+5*x**52+26*x**50+52*x**40+10*x**39+26*x**35+26*x**30+10*x**26+52*x**25+26*x**15+5*x**13+13*x**10+13*x**5
f_66(x) = +33*x**64+22*x**63+22*x**57+6*x**55+22*x**54+48*x**44+44*x**39+44*x**36+42*x**33+44*x**30+44*x**27+48*x**22+22*x**12+6*x**11+22*x**9+22*x**3+33*x**2
f_68(x) = +34*x**66+17*x**64+4*x**51+34*x**36+40*x**34+34*x**32+4*x**17+17*x**4+34*x**2
f_69(x) = +23*x**66+46*x**63+46*x**60+23*x**57+46*x**54+3*x**46+23*x**42+46*x**39+23*x**36+23*x**33+46*x**30+23*x**27+3*x**23+46*x**15+23*x**12+46*x**9+46*x**6+23*x**3
f_70(x) = +35*x**68+35*x**66+14*x**65+35*x**64+10*x**63+56*x**60+10*x**56+14*x**55+56*x**50+50*x**49+42*x**45+28*x**40+42*x**35+28*x**30+42*x**25+50*x**21+56*x**20+14*x**15+10*x**14+56*x**10+10*x**7+35*x**6+14*x**5+35*x**4+35*x**2
f_72(x) = +36*x**70+24*x**69+54*x**68+60*x**66+9*x**64+8*x**63+24*x**60+24*x**57+36*x**56+64*x**54+36*x**48+56*x**45+48*x**42+54*x**40+48*x**39+52*x**36+48*x**33+54*x**32+48*x**30+56*x**27+36*x**24+64*x**18+36*x**16+24*x**15+24*x**12+8*x**9+9*x**8+60*x**6+54*x**4+24*x**3+36*x**2
f_74(x) = +37*x**72+37*x**66+37*x**64+2*x**37+37*x**10+37*x**8+37*x**2
f_75(x) = +25*x**72+15*x**70+50*x**66+30*x**65+50*x**63+30*x**60+25*x**57+15*x**55+25*x**54+3*x**50+50*x**48+5*x**45+60*x**40+25*x**39+25*x**36+60*x**35+5*x**30+50*x**27+3*x**25+25*x**21+15*x**20+25*x**18+30*x**15+50*x**12+30*x**10+50*x**9+15*x**5+25*x**3
f_76(x) = +38*x**74+19*x**72+19*x**68+38*x**66+57*x**64+4*x**57+38*x**44+38*x**40+44*x**38+38*x**36+38*x**32+4*x**19+57*x**12+38*x**10+19*x**8+19*x**4+38*x**2
f_77(x) = +11*x**70+7*x**66+55*x**63+11*x**56+21*x**55+22*x**49+35*x**44+35*x**33+22*x**28+21*x**22+11*x**21+55*x**14+7*x**11+11*x**7
f_78(x) = +39*x**76+26*x**75+39*x**74+13*x**72+39*x**70+26*x**69+39*x**68+13*x**66+6*x**65+39*x**64+26*x**63+52*x**60+26*x**57+52*x**54+54*x**52+26*x**51+52*x**48+26*x**45+52*x**42+20*x**39+52*x**36+26*x**33+52*x**30+26*x**27+54*x**26+52*x**24+26*x**21+52*x**18+26*x**15+39*x**14+6*x**13+13*x**12+39*x**10+26*x**9+39*x**8+13*x**6+39*x**4+26*x**3+39*x**2
f_80(x) = +40*x**78+60*x**76+16*x**75+40*x**74+30*x**72+40*x**70+60*x**68+40*x**66+45*x**64+40*x**56+48*x**55+48*x**50+50*x**48+40*x**44+20*x**40+40*x**36+50*x**32+48*x**30+48*x**25+40*x**24+45*x**16+40*x**14+60*x**12+40*x**10+30*x**8+40*x**6+16*x**5+60*x**4+40*x**2
f_81(x) = +27*x**78+27*x**75+9*x**72+54*x**69+54*x**66+36*x**63+27*x**60+27*x**57+3*x**54+54*x**51+54*x**48+45*x**45+27*x**42+27*x**39+45*x**36+54*x**33+54*x**30+3*x**27+27*x**24+27*x**21+36*x**18+54*x**15+54*x**12+9*x**9+27*x**6+27*x**3
f_82(x) = +41*x**80+41*x**66+41*x**64+2*x**41+41*x**18+41*x**16+41*x**2
f_84(x) = +42*x**82+28*x**81+21*x**80+12*x**77+42*x**76+42*x**72+24*x**70+21*x**68+42*x**66+21*x**64+24*x**63+12*x**56+42*x**52+36*x**49+42*x**48+42*x**36+36*x**35+42*x**32+12*x**28+24*x**21+21*x**20+42*x**18+21*x**16+24*x**14+42*x**12+42*x**8+12*x**7+21*x**4+28*x**3+42*x**2
f_85(x) = +17*x**80+51*x**75+5*x**68+68*x**60+51*x**55+10*x**51+68*x**50+68*x**35+10*x**34+51*x**30+68*x**25+5*x**17+51*x**10+17*x**5
f_86(x) = +43*x**84+43*x**82+43*x**80+43*x**70+43*x**68+43*x**66+43*x**64+2*x**43+43*x**22+43*x**20+43*x**18+43*x**16+43*x**6+43*x**4+43*x**2
f_87(x) = +29*x**84+58*x**81+3*x**58+3*x**29+58*x**6+29*x**3
f_88(x) = +44*x**86+66*x**84+44*x**82+55*x**80+8*x**77+44*x**76+11*x**72+44*x**70+66*x**68+28*x**66+77*x**64+66*x**56+56*x**55+44*x**52+22*x**48+48*x**44+22*x**40+44*x**36+56*x**33+66*x**32+77*x**24+28*x**22+66*x**20+44*x**18+11*x**16+44*x**12+8*x**11+55*x**8+44*x**6+66*x**4+44*x**2
f_90(x) = +45*x**88+30*x**87+18*x**85+30*x**84+45*x**82+10*x**81+63*x**80+36*x**75+45*x**74+45*x**72+45*x**66+18*x**65+45*x**64+30*x**63+54*x**60+54*x**55+30*x**54+18*x**50+18*x**40+30*x**36+54*x**35+54*x**30+30*x**27+45*x**26+18*x**25+45*x**24+45*x**18+45*x**16+36*x**15+63*x**10+10*x**9+45*x**8+30*x**6+18*x**5+30*x**3+45*x**2
f_91(x) = +13*x**84+7*x**78+78*x**77+13*x**70+21*x**65+78*x**63+13*x**56+35*x**52+78*x**49+78*x**42+35*x**39+13*x**35+78*x**28+21*x**26+13*x**21+78*x**14+7*x**13+13*x**7
f_92(x) = +46*x**90+23*x**88+69*x**84+46*x**82+23*x**80+23*x**76+46*x**74+69*x**72+4*x**69+23*x**68+46*x**66+69*x**64+46*x**60+46*x**56+46*x**52+46*x**48+52*x**46+46*x**44+46*x**40+46*x**36+46*x**32+69*x**28+46*x**26+23*x**24+4*x**23+69*x**20+46*x**18+23*x**16+23*x**12+46*x**10+69*x**8+23*x**4+46*x**2
f_93(x) = +31*x**90+31*x**84+31*x**81+3*x**62+3*x**31+31*x**12+31*x**9+31*x**3
f_94(x) = +47*x**92+47*x**90+47*x**88+47*x**86+47*x**84+47*x**82+47*x**80+47*x**78+47*x**76+47*x**74+47*x**72+47*x**70+47*x**68+47*x**66+47*x**64+2*x**47+47*x**30+47*x**28+47*x**26+47*x**24+47*x**22+47*x**20+47*x**18+47*x**16+47*x**14+47*x**12+47*x**10+47*x**8+47*x**6+47*x**4+47*x**2
f_95(x) = +19*x**90+76*x**85+19*x**80+5*x**76+76*x**75+38*x**70+57*x**65+38*x**60+10*x**57+57*x**55+38*x**50+38*x**45+57*x**40+10*x**38+38*x**35+57*x**30+38*x**25+76*x**20+5*x**19+19*x**15+76*x**10+19*x**5
f_96(x) = +48*x**94+32*x**93+72*x**92+16*x**90+84*x**88+64*x**87+48*x**86+56*x**84+48*x**82+64*x**81+66*x**80+48*x**78+24*x**76+48*x**74+36*x**72+48*x**70+72*x**68+48*x**66+15*x**64+48*x**60+72*x**56+48*x**52+60*x**48+48*x**44+72*x**40+48*x**36+15*x**32+48*x**30+72*x**28+48*x**26+36*x**24+48*x**22+24*x**20+48*x**18+66*x**16+64*x**15+48*x**14+56*x**12+48*x**10+64*x**9+84*x**8+16*x**6+72*x**4+32*x**3+48*x**2
f_98(x) = +49*x**96+14*x**91+42*x**84+70*x**77+70*x**70+49*x**66+49*x**64+42*x**63+14*x**56+2*x**49+14*x**42+42*x**35+49*x**34+49*x**32+70*x**28+70*x**21+42*x**14+14*x**7+49*x**2
f_99(x) = +33*x**96+33*x**93+11*x**90+9*x**88+33*x**87+33*x**84+55*x**81+36*x**77+66*x**72+18*x**66+33*x**63+27*x**55+66*x**54+66*x**45+27*x**44+33*x**36+18*x**33+66*x**27+36*x**22+55*x**18+33*x**15+33*x**12+9*x**11+11*x**9+33*x**6+33*x**3
f_100(x) = +50*x**98+25*x**96+20*x**95+40*x**90+40*x**85+50*x**84+70*x**80+4*x**75+60*x**70+75*x**68+50*x**66+20*x**65+75*x**64+20*x**60+60*x**55+56*x**50+60*x**45+20*x**40+75*x**36+20*x**35+50*x**34+75*x**32+60*x**30+4*x**25+70*x**20+50*x**16+40*x**15+40*x**10+20*x**5+25*x**4+50*x**2
plot [-20:20] [-100:100] f_4(x) ,f_6(x) ,f_8(x) ,f_9(x) ,f_10(x) ,f_12(x) ,f_14(x) ,f_15(x) ,f_16(x) ,f_18(x) ,f_20(x) ,f_21(x) ,f_22(x) ,f_24(x) ,f_25(x) ,f_26(x) ,f_27(x) ,f_28(x) ,f_30(x) ,f_32(x) ,f_33(x) ,f_34(x) ,f_35(x) ,f_36(x) ,f_38(x) ,f_39(x) ,f_40(x) ,f_42(x) ,f_44(x) ,f_45(x) ,f_46(x) ,f_48(x) ,f_49(x) ,f_50(x) ,f_51(x) ,f_52(x) ,f_54(x) ,f_55(x) ,f_56(x) ,f_57(x) ,f_58(x) ,f_60(x) ,f_62(x) ,f_63(x) ,f_64(x) ,f_65(x) ,f_66(x) ,f_68(x) ,f_69(x) ,f_70(x) ,f_72(x) ,f_74(x) ,f_75(x) ,f_76(x) ,f_77(x) ,f_78(x) ,f_80(x) ,f_81(x) ,f_82(x) ,f_84(x) ,f_85(x) ,f_86(x) ,f_87(x) ,f_88(x) ,f_90(x) ,f_91(x) ,f_92(x) ,f_93(x) ,f_94(x) ,f_95(x) ,f_96(x) ,f_98(x) ,f_99(x) ,f_100(x)