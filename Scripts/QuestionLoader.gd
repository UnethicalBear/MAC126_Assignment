extends Node

const QUESTIONS: String = \
"""Topic;Question;Type;Option1;Option2;Option3;Option4;Correct;Written By
Nomenclature;what is the symbol of gibbs free energy;MC;~g;G;Eg;G0;~g;Samuel
Nomenclature;what quantity has the units Wm^(-2)K^(-4);MC;Heat Transfer Coeffient;Exergy;Thermal conductivity;Stefan - Bolzman constant;Stefan - Bolzman constant;Samuel
Nomenclature;what subscript would you use to indicate the standard condition;NUMERICAL;;;;;0;Samuel
Nomenclature;What is the sybol for the quantity which has units kgkmol^(-1);MC;m;M;N;Mr;M;Samuel
Nomenclature;what does the subscript s mean;WRITTEN;;;;;Isentropic;Samuel
Nomenclature;what are the units of the quantity with the lambda symbol (upside down y);MC;-;m;m^(-1);m^(-2);-;Samuel
Nomenclature;what is the symbol of thermal conductivity;WRITTEN;;;;;k;Samuel
Nomenclature;what symbol indicates a quantity has no unit;WRITTEN;;;;;-;Samuel
Nomenclature;what subscript would you use to indicate something is saturated;WRITTEN;;;;;sat;Samuel
Nomenclature;what page would you find Thermodynamic Nomenclature;NUMERICAL;;;;;4;Samuel
Nomenclature;what are the units of Specific Entropy;MC;epsilom;kJ/kgK;W/m^2K;kJ/kgs;kJ/kgK;Samuel
Nomenclature;what subscript would you use to indicate irreversablitity;WRITTEN;;;;;irrev;Samuel
Nomenclature;what subscript would you use to indicate reversablitity;WRITTEN;;;;;rev;Samuel
Fundementals;vtotal = vf + x(vf-vg);MC;true;false;;;FALSE;Samuel
Fundamentals;"If there is 100kJ input and 24kJ output to the system, what is the thermal efficienty of the system to 2 d.p.?";NUMERICAL;;;;;0.24;Alex
Fundementals;? <= 1-T(low)/T(high);MC;COP(R);COP(HP);n(Th);n(c);n(Th);Samuel
Fundementals;what is R(u)/M;WRITTEN;;;;;R;Samuel
Fundementals;what is Ru;NUMERICAL;;;;;8.314;Samuel
Fundementals;what is v(total);MC;v(f)+x(v(f)-v(g));v(g) + x(v(f)-v(g));v(f)+x(v(g)-v(f));v(g)+x(v(g)-v(f));v(f)+x(v(g)-v(f));Samuel
Fundementals;when is n = lamba (upside down y);MC;For an isotropic process;for an isentropic process;for an isothermal process;for a isobaric process;for an isentropic process;Samuel
Fundementals;is W = (p(1)V(1)-p(2)V(2))/(n-1) for a polytropic or isothermal process;MC;polytropic;isothermal;;;polytropic;Samuel
Fundementals;what page might be useful if asked about streams or flow;NUMERICAL;;;;;6;Samuel
Fundementals;what is (lambda - n)/(lambda-1) equal to;MC;W/Q;c(p);c(v);Q/W;Q/W;Samuel
Fundementals;? = Q(in)/W(in);MC;n(Th);COP(HP);n(R);COP(R);COP(R);Samuel
Fundementals;what page might be useful if asked about cycle efficiency;NUMERICAL;;;;;6;Samuel
Fundementals;COP(R) - COP(HP);NUMERICAL;;;;;-1;Samuel
Fundementals;"For a steady flow through a turbine, which of the following is not true";MC;q=0;w>=0;h(2)<h(1);C(2) ~= C(1);w>=0;Samuel
Fundementals;"For a steady flow through a diffuser, which of the following is not true";MC;p(1)>p(2);C(1) > C(2);h(1) < h(2);w = 0;p(1)>p(2);Samuel
Fundementals;"For a steady flow through a nozzle, which of the following is not true";MC;s(2) >= s(1);C(2) > C(1);h(1) < h(2);p(2) < p(1);h(1) < h(2);Samuel
Fundementals;"For steady flow through s Compressor, which of the following is not true";MC;0 > w;h(1) < h(2);s(1) <= s(2);C(1) < C(2);C(1) < C(2);Samuel
Properties;what is the molar mass of isobutane (g/mol) to 2 d.p.;NUMERICAL;;;;;58.12;Samuel
Properties;what is C(p) of R134a at 10 kPa and 303K (J/kgK) to the nearest integer?;NUMERICAL;;;;;9089;Samuel
General;What is the correct value of the Avogadro constant;MC;6.022 x10^23;6.03 x10^24;6.020 x10^24;6.22 x10^23;6.022 x10^23;Alex
Steam;"What is the enthapy of vapourisation of saturated steam at 600kPa (Using the steam tables in the LBOFT, answer to 3 s.f.)";NUMERICAL;;;;;2090;Alex
Vapour mixtures;Which statement correctly describes how to calculate an extensive property (like total enthalpy) of a gas mixture?;MC;Sum temperatures of each component;Multiply all component properties together;Take the average of the pressures;Sum contributions of each component;Sum contributions of each component;Thomas
Vapour mixtures;A gas mixture contains 60% nitrogen (1.04kJ/kgK) and 40% oxygen (0.92kJ/kgK). What is the isobaric mixture specific heat? (2sf);NUMERICAL;;;;;0.99;Thomas
Vapour mixtures;A gas mixture contains 2kg of A (400kJ/kg) and 3kg of B (250kJ/kg). What is the total enthalpy of the mixture? (3sf);NUMERICAL;;;;;1550kJ;Thomas
Vapour mixtures;An ideal gas in a mixture undergoes a pressure change from 200 kPa to 100 kPa at constant temperature. What happens to the entropy?;MC;Decreases;Increases;No change;Not enough information;Increases;Thomas
Vapour mixtures;How do you calculate the total enthalpy of a gas mixture?;MC;Sum enthalpies;Multiply enthalpies together;"Multiply each specific enthalpy by its mass; then  sum";Find mean of specific enthalpies;"Multiply each specific enthalpy by its mass; then  sum";Thomas
Vapour mixtures;"If you are calculating specific enthalpy on a mass basis, what should you use?";MC;Mole fractions;Mass fractions;Partial pressures;Total pressure;Mass fractions;Thom
Convert;Express 25 degrees Celsius to the nearest degree Fahrenheit? (No Units);NUMERICAL;;;;;77;Alex
Convert;What is 1 day in seconds? (No units);NUMERICAL;;;;;86400;Alex
Convert;Express 97 degrees Celsius in degrees Kelvin? (No Units);MC;370.13;366.15;370.15;372.13;370.15;Alex
Convert;What is 1 Btu in kJ? (3 s.f.) (no units);MC;1.05506;1.05;1.06;1.055;1.06;Alex"""

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
	
