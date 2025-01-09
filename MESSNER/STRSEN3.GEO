/com Datei: STRSEN3.GEO

/com Silizium-Einfachbalken auf einer Keramik-Grundplatte
/com thermisch angeregter Kraftsensor
/com Berechnung der Abkühlung durch ein Fluid
/com Materialwerte in einem seperaten File: STRSEN.MAT

/title, Stroemungssensor auf einer Keramikgrundplatte in einem Rohr
/sho,x11,,1

/com ------------ Strukturparameter (alle Masse in m)
ROLA=300e-3       !Rohrlaenge
RODU=24e-3        !Rohrdurchmesser
SEPO=12e-3        !Sensorposition im Rohr
VONA=15e-3        !Vor- und Nachlaufbereich
RABE=3e-3         !Randbereich ueber und unter dem Sensor
KEDI=0.63e-3      !Dicke der Keramikplatte
KELA=38e-3        !Laenge der Keramikplatte
KEAU=11e-3        !Aussparung in der Keramikplatte
BALA=10e-3        !Laenge des Balkens
BADI=50e-6        !Dicke des Balkens
WADI=380e-6       !Dicke des Wafers
BAAU=0.234e-3     !Balkenaufhaengung
BAVO=1.8e-3       !Blakenvorlauf
LAE1=0.166e-3     !Korrekturlaenge 1
LAE2=0.176e-3     !Korrekturlaenge 2
LAE3=0.75e-3      !Korrekturlaenge 3
LAE4=0.3e-3       !Korrekturlaenge 4
EKBE=1e-3         !Eckbereich

/com ------------ Hilfsparameter
dvs0=2            !Elementierung
dvs1=4
dvs2=6
dvs3=8
dvs4=10
dvs5=12
dvs6=14
dvs7=16
dvs8=18
dvs9=20
dv10=30

x5=-BALA/2
x4=x5+LAE1
x3=x4+LAE2
x7=-(BALA/2+BAAU)
x8=-KEAU/2
x9=-(KEAU/2+LAE1)
x10=x9-LAE2
x13=-(BALA/2+BAAU+BAVO)
x12=x13+LAE1
x11=x12+LAE2
x14=x13-EKBE
x15=x14-LAE1
x16=x15-LAE2
x17=-KELA/2
x20=x17-VONA
x21=-ROLA/2

y1=SEPO-WADI-KEDI-RABE
y4=SEPO-WADI-KEDI
y5=SEPO-WADI
y6=SEPO-BADI
y7=SEPO-WADI+LAE3
y8=SEPO
y3=y4-(y7-y5)
y9=y8+EKBE
y2=y4-(y9-y5)
y10=y9+RABE
y11=RODU

x2=x8+(y9-y5)
x1=x2+LAE4
x6=x8+(y7-y5)
x18=x17-(y7-y5)
x19=x17-(y9-y5)

/com ------------ Geometrie erstellen
k,1,0,0
k,2,0,y1
k,3,0,y2
k,4,0,y3
k,5,0,y4
k,6,0,y5
k,7,0,y6
k,8,0,y8
k,9,0,y9
k,10,0,y10
k,11,0,y11

k,12,x6,0
k,13,x6,y1
k,14,x6,y2
k,15,x6,y3
k,16,x6,y4
k,17,x7,y5
k,18,x5,y6
k,19,x5,y8
k,20,x4,y9
k,21,x3,y10
k,22,x3,y11

k,23,x10,0
k,24,x10,y1
k,25,x10,y2
k,26,x9,y3
k,27,x8,y4
k,28,x8,y5
k,29,x8,y6
k,30,x8,y8
k,31,x9,y9
k,32,x10,y10
k,33,x10,y11

k,34,x11,0
k,35,x11,y1
k,36,x11,y2
k,37,x12,y3
k,38,x13,y4
k,39,x13,y5
k,40,x13,y6
k,41,x13,y8

k,42,x16,0
k,43,x16,y1
k,44,x16,y2
k,45,x15,y3
k,46,x14,y4
k,47,x14,y5
k,48,x14,y7
k,49,x14,y9
k,50,x14,y10
k,51,x14,y11

k,52,x17,y4
k,53,x17,y5

k,54,x18,y3
k,55,x18,y7

k,56,x19,0
k,57,x19,y1
k,58,x19,y2
k,59,x19,y9
k,60,x19,y10
k,61,x19,y11

k,62,x20,0
k,63,x20,y1
k,64,x20,y2
k,65,x20,y9
k,66,x20,y10
k,67,x20,y11

k,68,x21,0
k,69,x21,y1
k,70,x21,y2
k,71,x21,y9
k,72,x21,y10
k,73,x21,y11

/com ------------ Linien generieren
l,1,2,dvs6,-2
l,12,13,dvs6,-2
l,23,24,dvs6,-2
l,34,35,dvs6,-2
l,42,43,dvs6,-2
l,56,57,dvs6,-2
l,62,63,dvs6,-2
l,68,69,dvs6,-2

l,2,3,dvs1
l,13,14,dvs1
l,24,25,dvs1
l,35,36,dvs1
l,43,44,dvs1
l,57,58,dvs1
l,63,64,dvs1
l,69,70,dvs1

l,3,4,dvs0
l,14,15,dvs0
l,25,26,dvs0
l,36,37,dvs0
l,44,45,dvs0
l,58,54,dvs0
l,55,59,dvs0
l,48,49,dvs0
l,40,41,dvs0
l,29,30,dvs0
l,18,19,dvs0
l,7,8,dvs0

l,4,5,dvs1
l,15,16,dvs1
l,26,27,dvs1
l,37,38,dvs1
l,45,46,dvs1
l,54,52,dvs1
l,53,55,dvs1
l,47,48,dvs1
l,39,40,dvs1
l,28,29,dvs1
l,17,18,dvs1
l,6,7,dvs1

l,5,6,dvs3
l,16,17,dvs3
l,27,28,dvs3
l,38,39,dvs3
l,46,47,dvs3
l,52,53,dvs3
l,54,55,dvs3
l,58,59,dvs3
l,64,65,dvs3
l,70,71,dvs3

l,8,9,dvs1,2
l,19,20,dvs1,2
l,30,31,dvs1,2
l,41,49,dvs1,2
l,40,48,dvs1,2
l,39,47,dvs1,2
l,38,46,dvs1,2
l,37,45,dvs1,2
l,36,44,dvs1,2
l,35,43,dvs1,2
l,34,42,dvs1,2

l,9,10,dvs2
l,20,21,dvs2
l,31,32,dvs2
l,49,50,dvs2
l,59,60,dvs2
l,65,66,dvs2
l,71,72,dvs2

l,10,11,dvs4,-2
l,21,22,dvs4,-2
l,32,33,dvs4,-2
l,50,51,dvs4,-2
l,60,61,dvs4,-2
l,66,67,dvs4,-2
l,72,73,dvs4,-2

l,1,12,dvs6
l,2,13,dvs6
l,3,14,dvs6
l,4,15,dvs6
l,5,16,dvs6
l,6,17,dvs6
l,7,18,dvs6
l,8,19,dvs6
l,9,20,dvs6
l,10,21,dvs6
l,11,22,dvs6

l,12,23,dvs1
l,13,24,dvs1
l,14,25,dvs1
l,15,26,dvs1
l,16,27,dvs1
l,17,28,dvs1
l,18,29,dvs1
l,19,30,dvs1
l,20,31,dvs1
l,21,32,dvs1
l,22,33,dvs1

l,23,34,dvs2,-2
l,24,35,dvs2,-2
l,25,36,dvs2,-2
l,26,37,dvs2,-2
l,27,38,dvs2,-2
l,28,39,dvs2
l,29,40,dvs2
l,30,41,dvs2
l,31,49,dvs2
l,32,50,dvs2
l,33,51,dvs2

l,42,56,dvs9,-3
l,43,57,dvs9,-3
l,44,58,dvs9,-3
l,45,54,dvs9,-3
l,46,52,dvs9,-3
l,47,53,dvs9,-3
l,48,55,dvs9,-3
l,49,59,dvs9,-3
l,50,60,dvs9,-3
l,51,61,dvs9,-3

l,56,62,dvs6,4
l,57,63,dvs6,4
l,58,64,dvs6,4
l,59,65,dvs6,4
l,60,66,dvs6,4
l,61,67,dvs6,4


l,62,68,dvs7,2.5
l,63,69,dvs7,2.5
l,64,70,dvs7,2.5
l,65,71,dvs7,2.5
l,66,72,dvs7,2.5
l,67,73,dvs7,2.5

/com ------------ Flaechen generieren
a,1,2,13,12
a,2,3,14,13
a,3,4,15,14
a,4,5,16,15
a,5,6,17,16
a,6,7,18,17
a,7,8,19,18
a,8,9,20,19
a,9,10,21,20
a,10,11,22,21

a,12,13,24,23
a,13,14,25,24
a,14,15,26,25
a,15,16,27,26
a,16,17,28,27
a,17,18,29,28
a,18,19,30,29
a,19,20,31,30
a,20,21,32,31
a,21,22,33,32

a,23,24,35,34
a,24,25,36,35
a,25,26,37,36
a,26,27,38,37
a,27,28,39,38
a,28,29,40,39
a,29,30,41,40
a,30,31,49,41
a,31,32,50,49
a,32,33,51,50

a,34,35,43,42
a,35,36,44,43
a,36,37,45,44
a,37,38,46,45
a,38,39,47,46
a,39,40,48,47
a,40,41,49,48

a,42,43,57,56
a,43,44,58,57
a,44,45,54,58
a,45,46,52,54
a,46,47,53,52
a,47,48,55,53
a,48,49,59,55
a,49,50,60,59
a,50,51,61,60

a,52,53,55,54
a,54,55,59,58

a,56,57,63,62
a,57,58,64,63
a,58,59,65,64
a,59,60,66,65
a,60,61,67,66

a,62,63,69,68
a,63,64,70,69
a,64,65,71,70
a,65,66,72,71
a,66,67,73,72

/com ------------ Vernetzung
et,1,42           !2-D Isoparametr. Stress Solid
!et,1,13,4         !2-D Multi-Field-Solid (UX, UY, TEMP, MAG)
et,2,1            !2-D Spar
r,1
r,2
r,3
r,4
r,5
r,6
r,7
r,8

/com ------------ Fluid vernetzten
mat,2
type,1
real,2
elsize,,,2        !Es werden nur Viereckelemente verwendet
amesh,1,4
amesh,6,6
amesh,8,14
amesh,18,24
amesh,28,34
amesh,36,41
amesh,43,58

/com ------------ Keramikstruktur vernetzen
mat,3
type,1
real,3
amesh,5,35,10
amesh,42

/com ------------ Siliziumstruktur vernetzen
mat,1
type,1
real,1
amesh,7,27,10
amesh,16,26,10

/com ------------ Heizelemente werden mit anderem Materialtyp gekennzeichnet
esel,elem,3868,3872,2
emodif,all,REAL,4
esel,elem,3846
emodif,all,REAL,5
eall

/com ------------ Spiegeln der Struktur an der y-Achse
arsym,1,all

/com ------------ Erzeugen zusaetzlicher Linien im Ein- und Ausstroembereich
lgen,2,8,16,8,0,0,0
lgen,2,50,50,1,0,0,0
lgen,2,68,75,7,0,0,0
lgen,2,251,251,1,0,0,0
lgen,2,254,260,2,0,0,0

/com ------------ Erzeugen zusaetzlicher Linien auf der Sensoroberflaeche
lgen,2,83,83,1,0,0,0
lgen,2,94,94,1,0,0,0
lgen,2,105,105,1,0,0,0
lgen,2,151,151,1,0,0,0
lgen,2,175,175,1,0,0,0
lgen,2,196,196,1,0,0,0

/com ------------ Einstroembereich vernetzen
type,2
real,6
lssel,line,261,265,1
lmesh,all
real,7
lssel,line,266,270
lmesh,all
lsall

/com----------- Sensoroberflaeche vernetzen
type,2
mat,1
real,8
lssel,line,271,276,1
lmesh,all
lsall

/com ------------ Mergen der Knoten die uebereinander liegen
nummrg,node,1e-12 !Genuegend kleinen Wert waehlen

/com ------------ Knoten neu Durchnummerieren
numcmp,node

/com ------------ Referenztemperatur definieren
tref,20

/com ------------ Definition der Analyseart
kan,0
kay,6,1
kay,8,1

/com ------------ Abspeichern des Modells
save

/com **************************************************
 
