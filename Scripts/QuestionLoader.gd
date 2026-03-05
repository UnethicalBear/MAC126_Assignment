extends Node

const QUESTIONS: String = \
"""Topic;Question;Type;Option1;Option2;Option3;Option4;Correct;Written By;
Nomenclature;what is the symbol of gibbs free energy;MC;~g;G;Eg;G0;~g;Samuel;1
Nomenclature;what quantity has the units Wm^(-2)K^(-4);MC;Heat Transfer Coeffient;Exergy;Thermal conductivity;Stefan - Bolzman constant;Stefan - Bolzman constant;Samuel;1
Nomenclature;what subscript would you use to indicate the standard condition;NUMERICAL;;;;;0;Samuel;1
Nomenclature;What is the sybol for the quantity which has units kgkmol^(-1);MC;m;M;N;Mr;M;Samuel;1
Nomenclature;What does the subscript s incidicate?;WRITTEN;;;;;Isentropic;Samuel;1
Nomenclature;"what are the units of the quantity ""λ""?";MC;-;m;m^(-1);m^(-2);-;Samuel;1
Nomenclature;what symbol indicates a quantity has no unit;WRITTEN;;;;;-;Samuel;1
Nomenclature;what subscript would you use to indicate something is saturated;WRITTEN;;;;;sat;Samuel;1
Nomenclature;what page would you find Thermodynamic Nomenclature;NUMERICAL;;;;;4;Samuel;1
Nomenclature;what are the units of Specific Entropy;MC;epsilom;kJ/kgK;W/m^2K;kJ/kgs;kJ/kgK;Samuel;1
Nomenclature;what subscript would you use to indicate irreversablitity;WRITTEN;;;;;irrev;Samuel;1
Nomenclature;what subscript would you use to indicate reversablitity;WRITTEN;;;;;rev;Samuel;1
Nomenclature;what does the subscript f incidicate;MC;Subcritical fluid;Feild refence frame;Saturated liquid;Frequency dependent;Saturated liquid;Samuel;1
Nomenclature;"What is the abbreviation of \"number of transfer units\";WRITTEN;;;;;NTU;Samuel;1
Nomenclature;What are the units of the Thermal resistance;MC;W/K;W/mK;W/m^2K;W/m^3K;W/m^2K;Samuel;1
Fundementals;vtotal = vf + x(vf-vg);MC;TRUE;FALSE;;;FALSE;Samuel;1
Fundamentals;If there is 100kJ input and 24kJ output to the system, what is the thermal efficienty of the system to 2 d.p.?;NUMERICAL;;;;;0.24;Alex;1
Fundementals;? <= 1-T(low)/T(high);MC;COP(R);COP(HP);n(Th);n(c);n(Th);Samuel;1
Fundementals;what is R(u)/M;WRITTEN;;;;;R;Samuel;1
Fundementals;what is Ru;NUMERICAL;;;;;8.314;Samuel;1
Fundementals;what is v(total)?;MC;v(f)+x(v(f)-v(g));v(g) + x(v(f)-v(g));v(f)+x(v(g)-v(f));v(g)+x(v(g)-v(f));v(f)+x(v(g)-v(f));Samuel;1
Fundementals;For what type of process is n = λ?;MC;isotropic;isentropic;isothermal;isobaric;isentropic;Samuel;1
Fundementals;is W = (p(1)V(1)-p(2)V(2))/(n-1) for a polytropic or isothermal process;MC;polytropic;isothermal;;;polytropic;Samuel;1
Fundementals;what page might be useful if asked about streams or flow;NUMERICAL;;;;;6;Samuel;1
Fundementals;what is (λ-n)/(λ-1) equal to;MC;W/Q;c(p);c(v);Q/W;Q/W;Samuel;1
Fundementals;? = Q(in)/W(in);MC;n(Th);COP(HP);n(R);COP(R);COP(R);Samuel;1
Fundementals;what page might be useful if asked about cycle efficiency;NUMERICAL;;;;;6;Samuel;1
Fundementals;COP(R) - COP(HP);NUMERICAL;;;;;-1;Samuel;1
Fundementals;For a steady flow through a turbine, which of the following is not true;MC;q=0;w>=0;h(2)<h(1);C(2) ~= C(1);w>=0;Samuel;1
Fundementals;For a steady flow through a diffuser, which of the following is not true;MC;p(1)>p(2);C(1) > C(2);h(1) < h(2);w = 0;p(1)>p(2);Samuel;1
Fundementals;For a steady flow through a nozzle, which of the following is not true;MC;s(2) >= s(1);C(2) > C(1);h(1) < h(2);p(2) < p(1);h(1) < h(2);Samuel;1
Fundementals;For steady flow through s Compressor, which of the following is not true;MC;0 > w;h(1) < h(2);s(1) <= s(2);C(1) < C(2);C(1) < C(2);Samuel;1
Properties;what is the molar mass of isobutane (g/mol) to 2 d.p.;NUMERICAL;;;;;58.12;Samuel;1
Properties;what is C(p) of R134a at 10 kPa and 303K (J/kgK) to the nearest integer?;NUMERICAL;;;;;9089;Samuel;1
Properties;What is the critical temperature for Oxygen in K? Answer to 3 sig fig;NUMERICAL;;;;;155;Josh;1
Properties;What is the critical temperature for Ammonia in 'C? Answer to 3 sig fig;NUMERICAL;;;;;132;Josh;1
Properties;Which gas has a very low critical pressure of just 0.2275?;MC;Helium;Propane;Hydrogen;Isobutane;Helium;Josh;1
Properties;What is the reduced pressure of air at 17MPa? Answer to 2dp;NUMERICAL;;;;;4.49;Josh;1
Properties;What is the reduced temperature of nitrogen at 95K? Answer to 2dp;NUMERICAL;;;;;0.75;Josh;1
Properties;The reduced temperature of CO2 is 5.01, what temperature is it at in 'C? Answer to the nearest whole number;NUMERICAL;;;;;1797;Josh;1
Properties;The reduced pressure of Argon is 0.74, what pressure is it at in atm? Answer to 1 dp;NUMERICAL;;;;;35.5;Josh;1
Properties;What is the viscosity of Gaseous R134a at 37'C and low pressure (4sf);NUMERICAL;;;;;0.00001234;Samuel;1
Properties;What is the thermal conductivity of Gaseous steam at 742'C (5sf);NUMERICAL;;;;;0.099226;Samuel;1
Properties;What is the ratio of specific heats for Helium at 100 kPa and 27'C (4sf);NUMERICAL;;;;;1.667;Samuel;1
Properties;What is C(v) of Air at 200 kPa and 700'C (3sf);NUMERICAL;;;;;0.788;Samuel;1
Properties;What is the density of Engine Oil-SAE60 at 82'C (3sf);NUMERICAL;;;;;845;Samuel;1
Properties;What is the heat of fusion for Sulfur (2sf);NUMERICAL;;;;;54;Samuel;1
Properties;What is the emissivity of Snow;NUMERICAL;;;;;0.86;Samuel;1
Properties;What is the Thermal conductivity of Vermiculitite flakes (2sf);NUMERICAL;;;;;0.069;Samuel;1
Properties;What page might be useful if you neede to know a molecular mass,density or specific gas constant;NUMERICAL;;;;;10;Samuel;1
Specific;What is the general formula for calculating specific heat of a mixture?;MC;(c1/m1)+(c2/m2);(m1c2 + m2c1)/(m1 + m2);c1 + c2;(m1c1 +m2c2)/(m1 + m2);(m1c1 +m2c2)/(m1 + m2);Josh;1
Specific;Air at atmospheric pressure is heated to 927'C, what is it's specific heat?;MC;1.56;5.72;1.18;0.84;1.18;Josh;1
Specific;What is the enthalpy of oxygen in the room around you currently? Answer to the nearest round number;NUMERICAL;;;;;0;Josh;1
Specific;Hydrogen is cooled to -53'C, what is it's specific heat at this temperature?;MC;13.84;14.03;14.56;1.11;13.84;Josh;1
Specific;What is the specific heat of carbon dioxide at 1500K at atmospheric pressure?;MC;1.35;1.25;1.01;1.32;1.32;Josh;1
Specific;CH4 has enthalpy of 63,882 at atmospheric pressure. What temperature must it be at in 'C?;MC;2100;20;1827;2373;1827;Josh;1
Specific;What is the difference in the specific heat for the air in the room if you assume air is 80% Nitrogen and 20% Oxygen compared to the true value given?;MC;0.03615;0.01058;0.00234;0.00736;0.01058;Josh;1
Specific;In an old combustion engine, per mile, 600g of CO2 and 40g of CO are emitted, if they leave the engine at 600K and 1atm what is the specific heat of this mixture?;MC;1.0766;1.1895;1.3549;1.6873;1.0766;Josh;1
Specific;In a hydrocarbon cracking process, 6.2kg of C3H8 and 2.6kg of C7H16 are mixed together at 1050K, what is their combined specific heat capacity at 1atm.;MC;0.91016;5.7637;1.0874;4.0061;4.0061;Josh;1
Specific;What is the difference in the Specific heat between 2kg of Hydrogen compared to 2kg of Hydrogen and 1kg of Oxygen at 25'C and 1atm?;MC;No difference;7.98;0.04;1.56;7.98;Josh;1
Specific;Thomas' Fart has a mass of 2g, what is the magnitude of the enthalpy change of his fart (in J) as it cools to room temperature (assume body at 37'C room temp 20'C and his farts are pure methane (2sf);NUMERICAL;;;;;76;Samuel;1
Specific;Which of the following has the greatest C(p) at 500'C;MC;Oxygen;Air;Carbon Monoxide;Carbon Dioxide;Carbon Monoxide;Samuel;1
Specific;Which of these can store the most thermal energy per unit mass (per degree);MC;Water;Nitrogen;Hydrogen;C7H16;Water;Samuel;1
Specific;You think a question needs you to calculate enthalpy changes in air, which page might be useful;NUMERICAL;;;;;14;Samuel;1
Specific;What pages contain information about Enthalpy and specific heat of non steam gases at aptmospheric pressure?;MC;7-9;10 -13;14-19;24-27;14-19;Samuel;1
Steam;What is the enthapy of vapourisation of saturated steam at 600kPa (Using the steam tables in the LBOFT, answer to 3 s.f.);NUMERICAL;;;;;2090;Alex;1
Steam;For saturated steam give the saturation pressure at 5'C in Pa to 4sf;NUMERICAL;;;;;872.5;Samuel;1
Steam;For saturated steam at 320'C give v(f)   in m^3/kg (4sf);NUMERICAL;;;;;0.001498;Samuel;1
Steam;For saturated steam at 9500 kPa give the specific internal energy of the saturated fluid in kJ/kg (5sf);NUMERICAL;;;;;1372.4;Samuel;1
Steam;Find the specific volume of saturated steam at 1.425 MPa  in m^3/kg (4sf);NUMERICAL;;;;;0.1385;Samuel;1
Steam;In steam at 17MPa and 350'C past it's saturation point;MC;TRUE;FALSE;;;FALSE;Samuel;1
Steam;In steam at 5'C at 8755 Pa past it's saturation point;MC;TRUE;FALSE;;;TRUE;Samuel;1
Steam;What is the specific enthalpy of superheated steam at 250'C and 200 kPa (4sf);NUMERICAL;;;;;2971;Samuel;1
Steam;What is the specific entropy of superheated steam at 3500 kPa and 700'C (4sf);NUMERICAL;;;;;7.685;Samuel;1
Steam;What is the specific enthaly of superheated steam at 500'C and 7 MPa (4sf);NUMERICAL;;;;;3411;Samuel;1
Steam;Calculate the specific enthalpy of superheated steam at 540'C and 1125 kPa (4sf);NUMERICAL;;;;;3543;Samuel;1
Steam;Can the specific entropy of superheated steam at 14MPa and 212'C be found with the LBoT?;MC;YES;NO;;;NO;Samuel;1
Steam;Can the specific enthalpy of superheated steam at  19215 kPa and 682'C be found with the LBoT?;MC;YES;NO;;;YES;Samuel;1
Steam;Can the specific enthalpy of superheated steam at  1 MPa and 3000'C be found with the LBoT?;MC;YES;NO;;;NO;Samuel;1
Steam;What is the internal energy of  of supercritical steam at 24MPa and 1000'C (4sf);NUMERICAL;;;;;3994;Samuel;1
Steam;What is the specific volume of steam at 160MPa and 600'C (4sf);NUMERICAL;;;;;2391;Samuel;1
Steam;What is the specific enthalpy of steam at 65 MPa and 720'C (4sf);NUMERICAL;;;;;3410;Samuel;1
Steam;A question asks about steam, which pages might be useful;MC;20-29;30 - 35;40 - 44;11 - 13;20-29;Samuel;1
Thermo;How many MPa is the critical point of R-134a? Answer to nearest whole number;NUMERICAL;;;;;4;Josh;1
Thermo;What state is R-134a in when it is at 1000kPa and h=60?;MC;Gas;Liquid;Solid;Plasma;Liquid;Josh;1
Thermo;To the nearrest 10 degree Celsius, what is the temperature of R134a at 300 kPa with an enthalpy of 160 kJ/kg? (No Units);NUMERICAL;;;;;0;Alex;1
Thermo;To the nearrest 10 degree Celsius, what is the temperature of R134a at 10000 kPa with an enthalpy of 120 kJ/kg? (No Units);NUMERICAL;;;;;40;Alex;1
Thermo;To the nearrest 10 degree Celsius, what is the temperature of R134a at 600 kPa with an enthalpy of 300 kJ/kg? (No Units);NUMERICAL;;;;;60;Alex;1
Thermo;To the nearrest 10 degree Celsius, what is the temperature of R134a at 40 kPa with an enthalpy of 300 kJ/kg? (No Units);NUMERICAL;;;;;50;Alex;1
Thermo;To the nearrest 0.2, what is the vapour quality of R134a at 200 kPa with an enthalpy of 80 kJ/kg? (No Units);NUMERICAL;;;;;0.2;Alex;1
Thermo;To the nearrest 0.2, what is the vapour quality of R134a at 400 kPa with an enthalpy of 180 kJ/kg? (No Units);NUMERICAL;;;;;0.6;Alex;1
Thermo;To the nearrest 0.2, what is the vapour quality of R134a at 1000 kPa with an enthalpy of 240 kJ/kg? (No Units);NUMERICAL;;;;;0.8;Alex;1
Thermo;What is the specific volume of vapour of R134a at 60 kPa with an enthalpy of 360 kJ/kg?;MC;0.500 m^3/kg;0.300 m^3/kg;0.100 m^3/kg;0.050 m^3/kg;0.500 m^3/kg;Alex;1
Thermo;What is the specific volume of vapour of R134a at 300 kPa with an enthalpy of 340 kJ/kg?;MC;0.200 m^3/kg;0.100 m^3/kg;0.050 m^3/kg;0.030 m^3/kg;0.100 m^3/kg;Alex;1
Thermo;What is the specific volume of vapour of R134a at 500 kPa with an enthalpy of 300 kJ/kg?;MC;0.200 m^3/kg;0.100 m^3/kg;0.050 m^3/kg;0.030 m^3/kg;0.050 m^3/kg;Alex;1
Thermo;What is the enthalpy of R134a at 500 kPa with a temperature of -10 degree Celsius?;MC;40 kJ/kg;60 kJ/kg;80 kJ/kg;100 kJ/kg;40;Alex;1
Thermo;What is the enthalpy of R134a at 2000 kPa with a temperature of 60 degree Celsius?;MC;120 kJ/kg;140 kJ/kg;180 kJ/kg;240 kJ/kg;140;Alex;1
Thermo;What is the enthalpy of R134a at 100 kPa with a temperature of 30 degree Celsius?;MC;220 kJ/kg;240 kJ/kg;260 kJ/kg;280 kJ/kg;280;Alex;1
Thermo;What is the enthalpy of R134a at 600 kPa with a temperature of 40 degree Celsius?;MC;221 kJ/kg;241 kJ/kg;261 kJ/kg;281 kJ/kg;280;Alex;1
Thermo;What the pressure of R134a with a specific volume of 0.500m^3/kg with an enthalpy of 340 kJ/kg?;MC;40 kPa;50 kPa;60 kPa;70 kPa;60;Alex;1
Thermo;What the pressure of R134a with a specific volume of 0.050m^3/kg with an enthalpy of 360 kJ/kg?;MC;600 kPa;700 kPa;800 kPa;900 kPa;600;Alex;1
Thermo;What the pressure of R134a with a specific volume of 0.005m^3/kg with an enthalpy of 320 kJ/kg?;MC;200 kPa;300 kPa;400 kPa;500 kPa;4000;Alex;1
Thermo;A question asks about R134a, what page(s) might be useful;MC;36-37;31-35;20-29;14-19;31-35;Samuel;1
Specific;Which statement correctly describes how to calculate an extensive property (like total enthalpy) of a gas mixture?;MC;Sum temperatures of each component;Multiply all component properties together;Take the average of the pressures;Sum contributions of each component;Sum contributions of each component;Thomas;1
Specific;A gas mixture contains 60% nitrogen (1.04kJ/kgK) and 40% oxygen (0.92kJ/kgK). What is the isobaric mixture specific heat? (2sf);NUMERICAL;;;;;0.99;Thomas;1
Specific;A gas mixture contains 2kg of A (400kJ/kg) and 3kg of B (250kJ/kg). What is the total enthalpy of the mixture? (3sf);NUMERICAL;;;;;1550kJ;Thomas;1
Specific;An ideal gas in a mixture undergoes a pressure change from 200 kPa to 100 kPa at constant temperature. What happens to the entropy?;MC;Decreases;Increases;No change;Not enough information;Increases;Thomas;1
Specific;How do you calculate the total enthalpy of a gas mixture?;MC;Sum enthalpies;Multiply enthalpies together;Multiply each specific enthalpy by its mass, then  sum;Find mean of specific enthalpies;Multiply each specific enthalpy by its mass, then  sum;Thomas;1
Specific;If you are calculating specific enthalpy on a mass basis, what should you use?;MC;Mole fractions;Mass fractions;Partial pressures;Total pressure;Mass fractions;Thomas;1
Convert;Express 25 degrees Celsius to the nearest degree Fahrenheit? (No Units);NUMERICAL;;;;;77;Alex;1
Convert;What is 1 day in seconds? (No units);NUMERICAL;;;;;86400;Alex;1
Convert;Express 97 degrees Celsius in degrees Kelvin? (No Units);MC;370.13;366.15;370.15;372.13;370.15;Alex;1
Convert;What is 1 Btu in kJ? (3 s.f.) (no units);MC;1.05506;1.05;1.06;1.055;1.06;Alex;1
Convert;Which has the greatest magnitude?;MC;55 mph;25 m/s;50 knots;95 km/h;95 km/h;Alex;1
Convert;Which has the greatest magnitude?;MC;0.9 miles;1.5 km;1700 yd;0.85 nautical miles;1700 yd;Alex;1
Convert;How many miles are in 1m, use the conversion factor given in the LBoTf and answer to 2sig fig;NUMERICAL;;;;;0.00062;Josh;1
Convert;Express 72 degrees Rankine to the nearest Kelvin (No Units);NUMERICAL;;;;;40;Alex;1
Convert;Express 3 atmosphere in pascals (No Units, to 3 d.p.);NUMERICAL;;;;;303975;Alex;1
Convert;Express 2 oil barrel in liters (No Units, to 3 s.f.);NUMERICAL;;;;;318;Alex;1
Convert;Express 54 kcal into Joules (No Units, to 3 s.f.);NUMERICAL;;;;;226000;Alex;1
Convert;Express 80 degrees Fahrenheit to the nearest Kelvin (No Units, to 3 d.p.);NUMERICAL;;;;;300;Alex;1
Convert;Which has the greatest magnitude?;MC;82 degrees Celsius;353 Kelvin;640 Rankine;180 degrees Faheinheit;640 Rankine;Alex;1
Convert;Express 243 kg into Pounds (No Units, to 3 s.f.);NUMERICAL;;;;;536;Alex;1
Convert;Express 1 ha into inch^2;MC;15.5 x10^6;15.5 x10^7;15.5 x10^8;15.5 x10^9;15.5 x10^7;Alex;1
Convert;You need to know a unit conversion, what page might be helpful;NUMERICAL;;;;;82;Samuel;1
General;What is the rest of the formula for linear interpolation? y=....?;MC;y1 + x * ((y2-y1)/2);y1 + (x-x1) * ((y2 - y1)/(x2 - x1));y1 + (y-y1) * ((y2 - y1)/(x2 - x1));y1 + y * ((x1+x2)/2);y1 + (x-x1) * ((y2 - y1)/(x2 - x1));Josh;1
General;What is the correct value of the Avogadro constant;MC;6.022 x10^23;6.03 x10^24;6.020 x10^24;6.22 x10^23;6.022 x10^23;Alex;1
General;How many electrons in the order of x10^19 are in a charge of magnitude 1O C? Answer to 1dp and use value of e from LBoTf;NUMERICAL;;;;;6.2;Josh;1
General;Using the LBoTf, what is the true percentage of Nitrogen in the air to 3dp?;NUMERICAL;;;;;78.084;Josh;1
General;Using the LBoTf, what is the density of air at 101.325kPa and 20'C? Answer to 1dp in kgm^-3;NUMERICAL;;;;;1.2;Josh;1
General;What is the molar gas constant in KJ/ (Kmol 'C)? Answer to 3dp;NUMERICAL;;;;;8.314;Josh;1
General;What is standard aptmospheric pressure to 6 signifcant figures in Pa;NUMERICAL;;;;;101325;Samuel;1
General;You are asked about steam in a question, what are the chances you need the little book of thermofluids;MC;High;Moderate;Low;0;High;Samuel;1
General;You are asked about R134a refrigerant, what are the chances you need the little book of thermofluids;MC;~1;High;Moderate;Low;~1;Samuel;1
General;You are asked about air at low temperature and pressure, what are the chances you need the little book of thermofluids;MC;High;Moderate;Low;0;Moderate;Samuel;1
General;You need to know a scientific constant, what page might be useful;NUMERICAL;;;;;83;Samuel;1
General;What % of the air is argon (4sf);NUMERICAL;;;;;0.934;Samuel;1
General;What is the value of (the volume of a sphere)/(the volume of a cone with a height equal to the base radius) (1sf);NUMERICAL;;;;;4;Samuel;1
General;Google maps says it's 1.5 miles to the Diamond from the Edge (endcliffe), if Josh leaves at precisly 8:59:50 represented in Mach (a fraction of the speed of sound) how fast does he need to travel to get to Jonny's 9am lecture on time? (2sf);NUMERICAL;;;;;0.71;Samuel;1
General;What is the stephan bolzman constant in nW/m^2k^4 (5sf);NUMERICAL;;;;;56.704;Samuel;1"""

var ALL: Array[Question]
var ALL_DICT: Dictionary

var tmp: Question

func _ready() -> void:
	# load in the questions	
	for listItem in QUESTIONS.split("\n"):
		var data: PackedStringArray = listItem.split(";")
		tmp = Question.new(data[0], data[1], data[2], data.slice(3,7), data[7])
		
		ALL.append(tmp)	
		if ALL_DICT.has(data[0]):
			ALL_DICT[data[0]].append(tmp)
		else:
			ALL_DICT[data[0]] = [tmp]
		
func GetQuestion(category: String = "") -> Question:
	# if cateogry is empty; assign a random question
	if category == "":
		return ALL.pick_random()
	
	# else get the dictionary to find by category
	else:
		return ALL_DICT[category].pick_random()
	
