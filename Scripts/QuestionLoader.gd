extends Node

const QUESTIONS: String = \
"""Nomenclature;what is the symbol of gibbs free energy;MC;~g;G;Eg;G0;~g;Samuel
Nomenclature;what quantity has the units Wm^(-2)K^(-4);MC;Heat Transfer Coeffient;Exergy;Thermal conductivity;Stefan - Bolzman constant;Stefan - Bolzman constant;Samuel
Nomenclature;what subscript would you use to indicate the standard condition;WRITTEN;;;;;0;Samuel
Nomenclature;What is the sybol for the quantity which has units kgkmol^(-1);MC;m;M;N;Mr;M;Samuel
Nomenclature;What does the subscript s incidicate?;WRITTEN;;;;;Isentropic;Samuel
Nomenclature;what are the units of the quantity λ?;MC;-;m;m^(-1);m^(-2);-;Samuel
Nomenclature;what symbol indicates a quantity has no unit;WRITTEN;;;;;-;Samuel
Nomenclature;what subscript would you use to indicate something is saturated;WRITTEN;;;;;sat;Samuel
Nomenclature;what page would you find Thermodynamic Nomenclature;NUMERICAL;;;;;4;Samuel
Nomenclature;what are the units of Specific Entropy;MC;epsilom;kJ/kgK;W/m^2K;kJ/kgs;kJ/kgK;Samuel
Nomenclature;what subscript would you use to indicate irreversablitity;WRITTEN;;;;;irrev;Samuel
Nomenclature;what subscript would you use to indicate reversablitity;WRITTEN;;;;;rev;Samuel
Nomenclature;what does the subscript f incidicate;MC;Subcritical fluid;Feild refence frame;Saturated liquid;Frequency dependent;Saturated liquid;Samuel
Nomenclature;What is the abbreviation of the number of transfer units?;WRITTEN;;;;;NTU;Samuel
Nomenclature;What are the units of the Thermal resistance;MC;W/K;W/mK;W/m^2K;W/m^3K;W/m^2K;Samuel
Fundamentals;vtotal = vf + x(vf-vg);MC;TRUE;FALSE;;;FALSE;Samuel
Fundamentals;If there is 100kJ input and 24kJ output to the system, what is the thermal efficienty of the system to (as a decimal to 2 d.p.)?;NUMERICAL;;;;;0.24;Alex
Fundamentals;? <= 1-T(low)/T(high);MC;COP(R);COP(HP);n(Th);n(c);n(Th);Samuel
Fundamentals;what is R(u)/M;WRITTEN;;;;;R;Samuel
Fundamentals;what is Ru;NUMERICAL;;;;;8.314;Samuel
Fundamentals;what is v(total)?;MC;v(f)+x(v(f)-v(g));v(g) + x(v(f)-v(g));v(f)+x(v(g)-v(f));v(g)+x(v(g)-v(f));v(f)+x(v(g)-v(f));Samuel
Fundamentals;For what type of process is n = λ?;MC;isotropic;isentropic;isothermal;isobaric;isentropic;Samuel
Fundamentals;is W = (p(1)V(1)-p(2)V(2))/(n-1) for a polytropic or isothermal process;MC;polytropic;isothermal;;;polytropic;Samuel
Fundamentals;what page might be useful if asked about streams or flow;NUMERICAL;;;;;6;Samuel
Fundamentals;what is (λ-n)/(λ-1) equal to;MC;W/Q;c(p);c(v);Q/W;Q/W;Samuel
Fundamentals;? = Q(in)/W(in);MC;n(Th);COP(HP);n(R);COP(R);COP(R);Samuel
Fundamentals;what page might be useful if asked about cycle efficiency;NUMERICAL;;;;;6;Samuel
Fundamentals;COP(R) - COP(HP);NUMERICAL;;;;;-1;Samuel
Fundamentals;For a steady flow through a turbine, which of the following is not true;MC;q=0;w>=0;h(2)<h(1);C(2) ~= C(1);w>=0;Samuel
Fundamentals;For a steady flow through a diffuser, which of the following is not true;MC;p(1)>p(2);C(1) > C(2);h(1) < h(2);w = 0;p(1)>p(2);Samuel
Fundamentals;For a steady flow through a nozzle, which of the following is not true;MC;s(2) >= s(1);C(2) > C(1);h(1) < h(2);p(2) < p(1);h(1) < h(2);Samuel
Fundamentals;For steady flow through s Compressor, which of the following is not true;MC;0 > w;h(1) < h(2);s(1) <= s(2);C(1) < C(2);C(1) < C(2);Samuel
Properties;what is the molar mass of isobutane (g/mol) to 2 d.p.;NUMERICAL;;;;;58.12;Samuel
Properties;what is C(p) of R134a at 10 kPa and 303K (J/kgK) to the nearest integer?;NUMERICAL;;;;;9089;Samuel
Properties;What is the critical temperature for Oxygen in K? Answer to 3 sig fig;NUMERICAL;;;;;155;Josh
Properties;What is the critical temperature for Ammonia in °C? Answer to 3 sig fig;NUMERICAL;;;;;132;Josh
Properties;Which gas has a very low critical pressure of just 0.2275?;MC;Helium;Propane;Hydrogen;Isobutane;Helium;Josh
Properties;What is the reduced pressure of air at 17MPa? Answer to 2dp;NUMERICAL;;;;;4.49;Josh
Properties;What is the reduced temperature of nitrogen at 95K? Answer to 2dp;NUMERICAL;;;;;0.75;Josh
Properties;The reduced temperature of CO2 is 5.01, what temperature is it at in °C? Answer to the nearest whole number;NUMERICAL;;;;;1797;Josh
Properties;The reduced pressure of Argon is 0.74, what pressure is it at in atm? Answer to 1 dp;NUMERICAL;;;;;35.5;Josh
Properties;What is the viscosity of Gaseous R134a at 37°C and low pressure (4sf);NUMERICAL;;;;;0.00001234;Samuel
Properties;What is the thermal conductivity of Gaseous steam at 742°C (5sf);NUMERICAL;;;;;0.099226;Samuel
Properties;What is the ratio of specific heats for Helium at 100 kPa and 27°C (4sf);NUMERICAL;;;;;1.667;Samuel
Properties;What is C(v) of Air at 200 kPa and 700°C (3sf);NUMERICAL;;;;;0.788;Samuel
Properties;What is the density of Engine Oil-SAE60 at 82°C (3sf);NUMERICAL;;;;;845;Samuel
Properties;What is the heat of fusion for Sulfur (2sf);NUMERICAL;;;;;54;Samuel
Properties;What is the emissivity of Snow;NUMERICAL;;;;;0.86;Samuel
Properties;What is the Thermal conductivity of Vermiculitite flakes (2sf);NUMERICAL;;;;;0.069;Samuel
Properties;What page might be useful if you neede to know a molecular mass,density or specific gas constant;NUMERICAL;;;;;10;Samuel
Specific;What is the general formula for calculating specific heat of a mixture?;MC;(c1/m1)+(c2/m2);(m1c2 + m2c1)/(m1 + m2);c1 + c2;(m1c1 +m2c2)/(m1 + m2);(m1c1 +m2c2)/(m1 + m2);Josh
Specific;Air at atmospheric pressure is heated to 927°C, what is it's specific heat?;MC;1.56;5.72;1.18;0.84;1.18;Josh
Specific;What is the enthalpy of oxygen in the room around you currently? Answer to the nearest round number;NUMERICAL;;;;;0;Josh
Specific;Hydrogen is cooled to -53°C, what is it's specific heat at this temperature?;MC;13.84;14.03;14.56;1.11;13.84;Josh
Specific;What is the specific heat of carbon dioxide at 1500K at atmospheric pressure?;MC;1.35;1.25;1.01;1.32;1.32;Josh
Specific;CH4 has enthalpy of 63,882 at atmospheric pressure. What temperature must it be at in °C?;MC;2100;20;1827;2373;1827;Josh
Specific;What is the difference in the specific heat for the air in the room if you assume air is 80% Nitrogen and 20% Oxygen compared to the true value given?;MC;0.03615;0.01058;0.00234;0.00736;0.01058;Josh
Specific;In an old combustion engine, per mile, 600g of CO2 and 40g of CO are emitted, if they leave the engine at 600K and 1atm what is the specific heat of this mixture?;MC;1.0766;1.1895;1.3549;1.6873;1.0766;Josh
Specific;In a hydrocarbon cracking process, 6.2kg of C3H8 and 2.6kg of C7H16 are mixed together at 1050K, what is their combined specific heat capacity at 1atm.;MC;0.91016;5.7637;1.0874;4.0061;4.0061;Josh
Specific;What is the difference in the Specific heat between 2kg of Hydrogen compared to 2kg of Hydrogen and 1kg of Oxygen at 25°C and 1atm?;MC;No difference;7.98;0.04;1.56;7.98;Josh
Specific;Joe's Fart has a mass of 2g. What is the magnitude of the enthalpy change of his fart (in J) as it cools to room temperature? (assume body at 37°C, room temp 20°C and his farts are pure methane (2sf);NUMERICAL;;;;;76;Samuel
Specific;Which of the following has the greatest C(p) at 500°C;MC;Oxygen;Air;Carbon Monoxide;Carbon Dioxide;Carbon Monoxide;Samuel
Specific;Which of these can store the most thermal energy per unit mass (per degree);MC;Water;Nitrogen;Hydrogen;C7H16;Water;Samuel
Specific;You think a question needs you to calculate enthalpy changes in air, which page might be useful;NUMERICAL;;;;;14;Samuel
Specific;What pages contain information about Enthalpy and specific heat of non steam gases at aptmospheric pressure?;MC;7-9;10 -13;14-19;24-27;14-19;Samuel
Steam;What is the enthapy of vapourisation of saturated steam at 600kPa (Using the steam tables in the LBOFT, answer to 3 s.f.);NUMERICAL;;;;;2090;Alex
Steam;For saturated steam give the saturation pressure at 5°C in Pa to 4sf;NUMERICAL;;;;;872.5;Samuel
Steam;For saturated steam at 320°C give v(f)   in m^3/kg (4sf);NUMERICAL;;;;;0.001498;Samuel
Steam;For saturated steam at 9500 kPa give the specific internal energy of the saturated fluid in kJ/kg (5sf);NUMERICAL;;;;;1372.4;Samuel
Steam;Find the specific volume of saturated steam at 1.425 MPa  in m^3/kg (4sf);NUMERICAL;;;;;0.1385;Samuel
Steam;In steam at 17MPa and 350°C past it's saturation point;MC;TRUE;FALSE;;;FALSE;Samuel
Steam;In steam at 5°C at 8755 Pa past it's saturation point;MC;TRUE;FALSE;;;TRUE;Samuel
Steam;What is the specific enthalpy of superheated steam at 250°C and 200 kPa (4sf);NUMERICAL;;;;;2971;Samuel
Steam;What is the specific entropy of superheated steam at 3500 kPa and 700°C (4sf);NUMERICAL;;;;;7.685;Samuel
Steam;What is the specific enthaly of superheated steam at 500°C and 7 MPa (4sf);NUMERICAL;;;;;3411;Samuel
Steam;Calculate the specific enthalpy of superheated steam at 540°C and 1125 kPa (4sf);NUMERICAL;;;;;3543;Samuel
Steam;Can the specific entropy of superheated steam at 14MPa and 212°C be found with the LBoT?;MC;YES;NO;;;NO;Samuel
Steam;Can the specific enthalpy of superheated steam at  19215 kPa and 682°C be found with the LBoT?;MC;YES;NO;;;YES;Samuel
Steam;Can the specific enthalpy of superheated steam at  1 MPa and 3000°C be found with the LBoT?;MC;YES;NO;;;NO;Samuel
Steam;What is the internal energy of  of supercritical steam at 24MPa and 1000°C (4sf);NUMERICAL;;;;;3994;Samuel
Steam;What is the specific volume of steam at 160MPa and 600°C (4sf);NUMERICAL;;;;;2391;Samuel
Steam;What is the specific enthalpy of steam at 65 MPa and 720°C (4sf);NUMERICAL;;;;;3410;Samuel
Steam;A question asks about steam, which pages might be useful;MC;20-29;30 - 35;40 - 44;11 - 13;20-29;Samuel
Thermo;How many MPa is the critical point of R-134a? Answer to nearest whole number;NUMERICAL;;;;;4;Josh
Thermo;What state is R-134a in when it is at 1000kPa and h=60?;MC;Gas;Liquid;Solid;Plasma;Liquid;Josh
Thermo;To the nearest 10° Celsius, what is the temperature of R134a at 300 kPa with an enthalpy of 160 kJ/kg? (No Units);NUMERICAL;;;;;0;Alex
Thermo;To the nearest 10° Celsius, what is the temperature of R134a at 10000 kPa with an enthalpy of 120 kJ/kg? (No Units);NUMERICAL;;;;;40;Alex
Thermo;To the nearest 10° Celsius, what is the temperature of R134a at 600 kPa with an enthalpy of 300 kJ/kg? (No Units);NUMERICAL;;;;;60;Alex
Thermo;To the nearest 10° Celsius, what is the temperature of R134a at 40 kPa with an enthalpy of 300 kJ/kg? (No Units);NUMERICAL;;;;;50;Alex
Thermo;To the nearest 0.2, what is the vapour quality of R134a at 200 kPa with an enthalpy of 80 kJ/kg? (No Units);NUMERICAL;;;;;0.2;Alex
Thermo;To the nearest 0.2, what is the vapour quality of R134a at 400 kPa with an enthalpy of 180 kJ/kg? (No Units);NUMERICAL;;;;;0.6;Alex
Thermo;To the nearest 0.2, what is the vapour quality of R134a at 1000 kPa with an enthalpy of 240 kJ/kg? (No Units);NUMERICAL;;;;;0.8;Alex
Thermo;What is the specific volume of vapour of R134a at 60 kPa with an enthalpy of 360 kJ/kg?;MC;0.500 m^3/kg;0.300 m^3/kg;0.100 m^3/kg;0.050 m^3/kg;0.500 m^3/kg;Alex
Thermo;What is the specific volume of vapour of R134a at 300 kPa with an enthalpy of 340 kJ/kg?;MC;0.200 m^3/kg;0.100 m^3/kg;0.050 m^3/kg;0.030 m^3/kg;0.100 m^3/kg;Alex
Thermo;What is the specific volume of vapour of R134a at 500 kPa with an enthalpy of 300 kJ/kg?;MC;0.200 m^3/kg;0.100 m^3/kg;0.050 m^3/kg;0.030 m^3/kg;0.050 m^3/kg;Alex
Thermo;What is the enthalpy of R134a at 500 kPa with a temperature of -10° C?;MC;40 kJ/kg;60 kJ/kg;80 kJ/kg;100 kJ/kg;40 kJ/kg;Alex
Thermo;What is the enthalpy of R134a at 2000 kPa with a temperature of 60° C?;MC;120 kJ/kg;140 kJ/kg;180 kJ/kg;240 kJ/kg;140 kJ/kg;Alex
Thermo;What is the enthalpy of R134a at 100 kPa with a temperature of 30° C?;MC;220 kJ/kg;240 kJ/kg;260 kJ/kg;280 kJ/kg;280 kJ/kg;Alex
Thermo;What is the enthalpy of R134a at 600 kPa with a temperature of 40° C?;MC;221 kJ/kg;241 kJ/kg;261 kJ/kg;281 kJ/kg;280 kJ/kg;Alex
Thermo;What the pressure of R134a with a specific volume of 0.500m^3/kg with an enthalpy of 340 kJ/kg?;MC;40 kPa;50 kPa;60 kPa;70 kPa;60 kPa;Alex
Thermo;What the pressure of R134a with a specific volume of 0.050m^3/kg with an enthalpy of 360 kJ/kg?;MC;600 kPa;700 kPa;800 kPa;900 kPa;600 kPa;Alex
Thermo;What the pressure of R134a with a specific volume of 0.005m^3/kg with an enthalpy of 320 kJ/kg?;MC;2000 kPa;3000 kPa;4000 kPa;5000 kPa;4000 kPa;Alex
Thermo;A question asks about R134a, what page(s) might be useful;MC;36-37;31-35;20-29;14-19;31-35;Samuel
Specific;Which statement correctly describes how to calculate an extensive property (like total enthalpy) of a gas mixture?;MC;Sum temperatures of each component;Multiply all component properties together;Take the average of the pressures;Sum contributions of each component;Sum contributions of each component;Thomas
Specific;A gas mixture contains 60% nitrogen (1.04kJ/kgK) and 40% oxygen (0.92kJ/kgK). What is the isobaric mixture specific heat? (2sf);NUMERICAL;;;;;0.99;Thomas
Specific;A gas mixture contains 2kg of A (400kJ/kg) and 3kg of B (250kJ/kg). What is the total enthalpy of the mixture? (3sf);NUMERICAL;;;;;1550kJ;Thomas
Specific;An ideal gas in a mixture undergoes a pressure change from 200 kPa to 100 kPa at constant temperature. What happens to the entropy?;MC;Decreases;Increases;No change;Not enough information;Increases;Thomas
Specific;How do you calculate the total enthalpy of a gas mixture?;MC;Sum enthalpies;Multiply enthalpies together;Multiply each specific enthalpy by its mass, then  sum;Find mean of specific enthalpies;Multiply each specific enthalpy by its mass, then  sum;Thomas
Specific;If you are calculating specific enthalpy on a mass basis, what should you use?;MC;Mole fractions;Mass fractions;Partial pressures;Total pressure;Mass fractions;Thomas
Convert;Express 25°C to the nearest °F? (No Units);NUMERICAL;;;;;77;Alex
Convert;What is 1 day in seconds? (No units);NUMERICAL;;;;;86400;Alex
Convert;Express 97°C in °K? (No Units);MC;370.13;366.15;370.15;372.13;370.15;Alex
Convert;What is 1 Btu in kJ? (3 s.f.) (no units);MC;1.05506;1.05;1.06;1.055;1.06;Alex
Convert;Which has the greatest magnitude?;MC;55 mph;25 m/s;50 knots;95 km/h;95 km/h;Alex
Convert;Which has the greatest magnitude?;MC;0.9 miles;1.5 km;1700 yd;0.85 nautical miles;1700 yd;Alex
Convert;How many miles are in 1m, use the conversion factor given in the LBoTf and answer to 2sig fig;NUMERICAL;;;;;0.00062;Josh
Convert;Express 72° R to the nearest Kelvin (No Units);NUMERICAL;;;;;40;Alex
Convert;Express 3 atmosphere in pascals (No Units, to 3 d.p.);NUMERICAL;;;;;303975;Alex
Convert;Express 2 oil barrel in liters (No Units, to 3 s.f.);NUMERICAL;;;;;318;Alex
Convert;Express 54 kcal into Joules (No Units, to 3 s.f.);NUMERICAL;;;;;226000;Alex
Convert;Express 80° F to the nearest Kelvin (No Units, to 3 d.p.);NUMERICAL;;;;;300;Alex
Convert;Which has the greatest magnitude?;MC;82° C;353° K;640° R;180° F;640° R;Alex
Convert;Express 243 kg in lbs (No Units, to 3 s.f.);NUMERICAL;;;;;536;Alex
Convert;Express 1 ha in inch^2;MC;15.5 x10^6;15.5 x10^7;15.5 x10^8;15.5 x10^9;15.5 x10^7;Alex
Convert;You need to know a unit conversion, what page might be helpful;NUMERICAL;;;;;82;Samuel
General;What is the rest of the formula for linear interpolation? y=....?;MC;y1 + x * ((y2-y1)/2);y1 + (x-x1) * ((y2 - y1)/(x2 - x1));y1 + (y-y1) * ((y2 - y1)/(x2 - x1));y1 + y * ((x1+x2)/2);y1 + (x-x1) * ((y2 - y1)/(x2 - x1));Josh
General;What is the correct value of the Avogadro constant;MC;6.022 x10^23;6.03 x10^24;6.020 x10^24;6.22 x10^23;6.022 x10^23;Alex
General;How many electrons in the order of x10^19 are in a charge of magnitude 1O C? Answer to 1dp and use value of e from LBoTf;NUMERICAL;;;;;6.3;Josh
General;Using the LBoTf, what is the true percentage of Nitrogen in the air to 3dp?;NUMERICAL;;;;;78.084;Josh
General;Using the LBoTf, what is the density of air at 101.325kPa and 20°C? Answer to 1dp in kgm^-3;NUMERICAL;;;;;1.2;Josh
General;What is the molar gas constant in KJ/ (Kmol °C)? Answer to 3dp;NUMERICAL;;;;;8.314;Josh
General;What is standard aptmospheric pressure to 6 signifcant figures in Pa;NUMERICAL;;;;;101325;Samuel
General;You are asked about steam in a question, what are the chances you need the LBoTF?;MC;High;Moderate;Low;0;High;Samuel
General;You are asked about R134a refrigerant, what are the chances you need the LBoTF?;MC;~1;High;Moderate;Low;~1;Samuel
General;You are asked about air at low temperature and pressure, what are the chances you need the LBoTF?;MC;High;Moderate;Low;0;Moderate;Samuel
General;You need to know a scientific constant, what page might be useful;NUMERICAL;;;;;83;Samuel
General;What % of the air is argon (4sf);NUMERICAL;;;;;0.934;Samuel
General;What is the value of (the volume of a sphere)/(the volume of a cone with a height equal to the base radius) (1sf);NUMERICAL;;;;;4;Samuel
General;It is 1.5 miles to the Diamond from Endcliffe, if Josh leaves at 8:59:50 how fast (in Mach) does he need to run to get to Jonny's 9am lecture on time? (2sf);NUMERICAL;;;;;0.71;Samuel
General;What is the Stephan-Bolzman constant in nW/m^2k^4 (5sf);NUMERICAL;;;;;56.704;Samuel
General;On what page of the LBOTF could you find the Moody Diagram?;NUMERICAL;;;;;59;Thomas
General;The 0th Law of thermodyamics states that if two systems are each in thermal equilibrium with a third system, what must be true about the first two systems?;MC;They are in thermal equilibrium with each other;We can't tell anything;They are the same system;They are not in thermal equilibrium;They are in thermal equilibrium with each other;Thomas
General;In a constant-pressure process, the heat added to a system is equal to the change in which property?;MC;Entropy;Enthalpy;Internal energy;Nuclear energy;Enthalpy;Thomas
General;On what page of the LBOTF can you find a table of specific heat, enthalpy and entropy at atmospheric pressure?;NUMERICAL;;;;;16;Thomas
General;What is the best definition for the viscosity of a fluid?;MC;How heavy it is;How dense it is;How easily it flows;How toxic it is;How easily it flows;Thomas
General;What dimensionless number is used to predict whether a fluid flow will be laminar or turbulent?;MC;Reynolds Number;Stephan-Boltzman Constant;Avogadro's Number;Ideal Gas Constant;Reynolds Number;Thomas
General;What is the best definition of entropy?;MC;Total heat energy stored in a molecular bond;Measure of randomness or disorder within a system;Speed molecules move at in a vacuum;Ability of a system to perform useful work;Measure of randomness or disorder within a system;Thomas
General;What is the state change called when a substance changes directly from a gas to a solid?;MC;Sublimation;Condensation;Deposition;Evaporation;Deposition;Thomas
General;Which of the following is an extensive property?;MC;Pressure;Density;Temperature;Total Enthalpy;Total Enthalpy;Thomas
General;A process that happens at a constant pressure is:;MC;Isobaric;Isothermal;Isostatic;Isometimespickmynose;Isobaric;Thomas"""

var ALL: Array[Question]
var LIVE: Array[Question]

var ALL_DICT: Dictionary
var LIVE_DICT: Dictionary

var tmp: Question

var RNG: RandomNumberGenerator = RandomNumberGenerator.new()

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
	
	LIVE = ALL.duplicate(true)
	LIVE_DICT = ALL_DICT.duplicate(true)


var index: int
var toReturn: Question
func GetQuestion(category: String = "") -> Question:
	# if cateogry is empty; assign a random question
	if category == "":
		index = RNG.randi_range(0, len(ALL))
		toReturn = LIVE[index]
		LIVE.remove_at(index)
		
		if len(LIVE) == 0:
			LIVE = ALL.duplicate(true)
			LIVE.shuffle()
		return toReturn
	
	# else get the dictionary to find by category
	else:
		index = RNG.randi_range(0, len(LIVE_DICT[category])-1 )
		toReturn = LIVE_DICT[category][index]
		LIVE_DICT[category].remove_at(index)
		
		if len(LIVE_DICT[category]) == 0:
			LIVE_DICT[category] = ALL_DICT[category].duplicate(true)
			LIVE_DICT[category].shuffle()
		
		return toReturn
