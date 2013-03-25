/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of (ground or air) vehicles which can tow towables objects.
 * Liste des noms de classes des v�hicules terrestres pouvant remorquer des objets remorquables.
 */
R3F_LOG_CFG_remorqueurs = [
	"c_offroad",
	"O_Ifrit_MG_F",
    "B_Hunter_F",
    "B_Hunter_RCWS_F",
    "B_Hunter_HMG_F",
    "O_Ifrit_F",
    "O_Ifrit_GMG_F"
];

/**
 * List of class names of towables objects.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_objets_remorquables = [
	"c_offroad",
	"O_Ifrit_MG_F",
    "B_Hunter_F",
    "B_Hunter_RCWS_F",
    "B_Hunter_HMG_F",
    "O_Ifrit_F",
    "O_Ifrit_GMG_F"
];

/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftables objects.
 * Liste des noms de classes des v�hicules a�riens pouvant h�liporter des objets h�liportables.
 */
R3F_LOG_CFG_heliporteurs = [
	"O_Ka60_Unarmed_F",
	"B_MH9_F",
	"O_Ka60_F",
	"B_AH9_F"
];

/**
 * List of class names of liftables objects.
 * Liste des noms de classes des objets h�liportables.
 */
R3F_LOG_CFG_objets_heliportables = [
	"c_offroad",
	"O_Ifrit_MG_F",
    	"B_Hunter_F",
    	"B_Hunter_RCWS_F",
    	"B_Hunter_HMG_F",
    	"O_Ifrit_F",
    	"O_Ifrit_GMG_F",
    	"Land_Cargo_House_V1_F",
    	"Land_Cargo_House_V2_F",
	"Land_Cargo_Patrol_V1_F",
	"Land_Cargo_Patrol_V2_F"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/


R3F_LOG_CFG_transporteurs = [
	["c_offroad", 30],
	["O_Ifrit_MG_F", 20],
	["B_Hunter_F", 20],
	["B_Hunter_RCWS_F", 20],
	["B_Hunter_HMG_F", 20],
	["O_Ifrit_F", 20],
	["O_Ifrit_GMG_F", 20],
	["O_Ka60_Unarmed_F", 10],
	["B_MH9_F", 10],
	["O_Ka60_F", 10],
    	["O_Quadbike_F", 5],
    	["B_Quadbike_F", 5],
	["B_AH9_F", 10]
];

 
R3F_LOG_CFG_objets_transportables =  [
	["Box_East_Support_F", 5],
	["Box_East_Wps_F", 5],
	["Box_East_WpsSpecial_F", 5],
	["Box_NATO_Support_F", 5],
	["Box_NATO_Wps_F", 5],
	["Box_NATO_WpsSpecial_F", 5],
	["Land_CanisterPlastic_F", 1],
	["Land_Fireplace_F", 5],
	["Land_Sack_goods_F", 1],
	["Land_MetalBarrel_F", 1],
	["Land_HBarrierBig_F", 5],
	["Land_HBarrier_3_F", 3],
    	["Land_HBarrier_5_F", 5],
	["Land_CargoBox_V1_F", 2],
    	["O_Quadbike_F", 10],
    	["B_Quadbike_F", 10]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

R3F_LOG_CFG_objets_deplacables = [
	"Box_East_Support_F",
	"Box_East_Wps_F",
	"Box_East_WpsSpecial_F",
	"Box_NATO_Support_F",
	"Box_NATO_Wps_F",
	"Box_NATO_WpsSpecial_F",
	"Land_CanisterPlastic_F",
	"Land_Fireplace_F",
	"Land_Sack_goods_F",
	"Land_MetalBarrel_F",
	"Land_HBarrierBig_F",
	"Land_HBarrier_3_F",
    	"Land_HBarrier_5_F",
	"Land_CargoBox_V1_F",
    	"O_Quadbike_F",
    	"B_Quadbike_F",
    	"Land_Cargo_House_V1_F",
    	"Land_Cargo_House_V2_F",
	"Land_Cargo_Patrol_V1_F",
	"Land_Cargo_Patrol_V2_F"
];

/*
 * List of files adding objects in the arrays of logistics configuration (e.g. R3F_LOG_CFG_remorqueurs)
 * Add an include to the new file here if you want to use the logistics with a new addon.
 * 
 * Liste des fichiers ajoutant des objets dans les tableaux de fonctionnalit�s logistiques (ex : R3F_LOG_CFG_remorqueurs)
 * Ajoutez une inclusion vers votre nouveau fichier ici si vous souhaitez utilisez la logistique avec un nouvel addon.
 */
//#include "addons_config\arma2_CO_objects.sqf"
