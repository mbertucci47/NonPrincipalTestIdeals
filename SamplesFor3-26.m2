restart
loadPackage "NonPrincipalTestIdeals";
loadPackage "MultiplierIdeals";
debugLevel = 1
R = ZZ/5[x,y,z]
I = ideal(x^2,y^3,z^4)
elapsedTime testIdealNP(5/4, I)
elapsedTime testIdealNP(1, I)
elapsedTime testIdealNP(2, I)
elapsedTime testIdealNP(51/25, I)
elapsedTime testIdealNP(251/125, I)
elapsedTime testIdealNP((625*2+1)/625, I)
elapsedTime testIdealNP(49/25, I)
elapsedTime testIdealNP(13/12, I)
isFJumpingExponentNP(13/12, I)

S = QQ[a,b,c] 
J = monomialIdeal(a^2,b^3,c^4)
elapsedTime multiplierIdeal(J, 5/4)
elapsedTime multiplierIdeal(J, 13/12)
elapsedTime multiplierIdeal(J, 26/25)

restart
loadPackage "NonPrincipalTestIdeals";
R = ZZ/5[x,y,z]
I2 = ideal(x^3+y^3, y^4, z^2)
trim elapsedTime testIdealNP(8/5, I2)

needsPackage "Dmodules"
S = QQ[a,b,c];
J2 = ideal(a^3+b^3,b^4,c^2)
elapsedTime multiplierIdeal(J2, 8/5)



restart
loadPackage "NonPrincipalTestIdeals";
needsPackage "Dmodules"
R = ZZ/3[x,y,z]/ideal(x^2-y*z)
I = ideal(x,y,z)
elapsedTime testIdealNP(1/1, I)
elapsedTime testIdealNP(26/27, I)
isFPT(1/1, I)
isFPT(6/7, I)
isFPT(28/27,I)

S = QQ[a,b,c]/ideal(a^2-b*c)
J = ideal(a,b,c)
elapsedTime multiplierIdeal(J, 1)

use R
I2 = ideal(x^2+y^3, y^4+ z^2)
tau1 = elapsedTime testIdealNP(1/1, I2)
tau2 = elapsedTime testIdealNP(2, I2)
tau1*I2 == tau2 --checking Skoda

restart
loadPackage "NonPrincipalTestIdeals"; --this is an E6 singularity, the FPT should be 1/3-1/30 according to Takagi-Watanabe
    R = ZZ/5[x,y,z]/ideal(x^2+y^3+z^4);
    J = ideal(x,y,z); 
    elapsedTime testIdealNP(1/3-1/27, J)
    elapsedTime testIdealNP(1/3-1/30, J)
    elapsedTime isFPT(1/3-1/30, J)


