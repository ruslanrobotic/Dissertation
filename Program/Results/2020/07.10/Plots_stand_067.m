clear all
clc
%%
% Names=["BAA" "BAG" "BAH" "BAI" "BAJ" "BAK" "BAL" "BAM" "BAB" "BAN" "BAO" "BAP" "BAQ" "BAR" "BAS" "BAT" "BAU" "BAV" "BAC" "BAD" "BAE" "BAF"];
% Names=["BALB"];
% Names=["CB" "CD" "CE" "CF" "CG" "CH" "CI" "CJ" "CK" "CL" "CA" "CC"];
% Names=["CAA" "CAB" "CAC" "CAD" "CAE" "CAF" "CAG" "CAH" "CAI" "CAJ" "CAK" "CAL" "CAM" "CAN" "CAO" "CAP" "CAQ" "CAR" "CAS" "CAT" "CAU" "CAV"];
% Names=["DAA" "DAB" "DAC" "DAD" "DAE" "DAF" "DAG" "DAH" "DAI" "DAJ" "DAK" "DAL" "DAM" "DAN" "DAO" "DAP" "DAQ" "DAR" "DAS" "DAT" "DAU" "DAV"];
% Names=["EAA" "EAB" "EAC" "EAD" "EAE" "EAF" "EAG" "EAH" "EAI" "EAJ" "EAK" "EAL" "EAM" "EAN" "EAO" "EAP" "EAQ" "EAR" "EAS" "EAT" "EAU" "EAV" "EAW"];
% Names=["AAW" "AAV" "AAX" "AAY" "AAZ" "AAWS" "AAWSZ"];
% Names=["AAZA" "AAZB" "AAZD"];
% Names=["FAX" "FAY" "FAA" "FAB" "FAC" "FAD" "FAE" "FAF" "FAG" "FAH" "FAI" "FAJ" "FAK" "FAL" "FAM" "FAN" "FAO" "FAP" "FAQ" "FAR" "FAS" "FAT" "FAU" "FAV" "FAW"];
% Names=["GAA" "GAB" "GAC" "GAD" "GAE" "GAF" "GAG" "GAH" "GAI" "GAJ" "GAK" "GAL" "GAM" "GAN" "GAO" "GAP" "GAQ" "GAR" "GAS" "GAT" "GAU" "GAV" "GAW" "GAX" "GAY" "GAZ"];
% Names=["HAA" "HAB" "HAC" "HAD" "HAE" "HAF" "HAG" "HAH" "HAI" "HAJ" "HAK" "HAL" "HAM" "HAN" "HAO" "HAP" "HAQ" "HAR" "HAS" "HAT" "HAU" "HAV" "HAW" "HAX" "HAY" "HAZ"];
% Names=["GAE" "GAG" "GAN" "GAQ" "GAS"];
% Names=["FA" "FB" "FC" "FD" "FE" "FF" "FG" "FH" "FI" "FJ" "FK"];
% Names=["HAC" "HAD" "HAE" "HAF" "HAG" "HAH" "HAI" "HAJ" "HAK" "HAL" "HAS" "HAT" "HAU" ];
% Names=["GA" "GB" "GC" "GD" "GE"];
% Names=["AA" "AB" "AC" "AD" "AE" "AF" "AG" "AH" "AI" "AJ" "AK" "AL" "AM" "AN" "AO" "AP" "AQ" "AR" "AS" "AT"];
% Names=["BA" "BB" "BC" "BD" "BE" "BF" "BG" "BH" "BI" "BJ" "BK" "BL" "BM" "BN" "BO" "BQ" "BR" "BS" "BT"];
% Names=["CA" "CB" "CC" "CD" "CE" "CF" "CG" "CH" "CI" "CJ" "CK" "CL" "CM" "CN" "CO" "CP" "CQ" "CR" "CS" "CT"];
% Names=["DA" "DB" "DC" "DD" "DE" "DF" "DG" "DH" "DI" "DJ" "DK" "DL" "DM" "DN" "DO" "DP" "DQ" "DR" "DS" "DT"];
% Names=["EA" "EB" "EC" "ED" "EE" "EF" "EG" "EH" "EI" "EJ" "EK" "EL" "EM" "EN" "EO" "EP" "EQ" "ER" "ES" "ET"];
% Names=["EA" "EB" "EC" "ED" "EE" "EF" "EG" "EH" "EI" "EJ" "EK" "EL" "EM" "EN" "EO" "EP" "EQ" "ER" "ES" "ET"];
% Names=["IA" "IB" "IC" "ID" "IE" "IF" "IG" "IH" "II" "IJ" "IK" "IL"];
% Names=["JB" "JC" "JD" "JE" "JF" "JG" "JH" "JI" "JJ" "JK" "JL"];
% Names=["KB" "KC" "KD" "KE" "KF" "KG" "KH" "KI" "KJ" "KK" "KL"];
% Names=["LB" "LC" "LD" "LE" "LF" "LG" "LH" "LI" "LJ" "LK" "LL"];
% Names=["MB" "MC" "MD" "ME" "MF" "MG" "MH" "MI" "MJ" "MK" "ML"];
% Names=["NB" "NC" "ND" "NE" "NF" "NG" "NH" "NI" "NJ" "NK" "NL"];
% Names=["OB" "OC" "OD" "OE" "OF" "OG" "OH" "OI" "OJ" "OK" "OL"];
% Names=["IL" "JK" "KK" "LL" "ML" "NL" "OH"];
% Names=["AAW" "JK" "KK" "LL" "ML" "NL" "OH"];

% Names=["MG" "ML" "MM" "MN" "MO" "MP" "MQ"];
% Names=["NG" "NL" "NM" "NN" "NO" "NP" "NQ"];
% Names=["IG" "IH" "II" "IJ" "IK" "IL" "IM" "IN" "IO" "IP" "IQ"];
% Names=["KM" "KN" "KO" "KP" "KQ"];
% Names=["LM" "LN" "LO" "LP" "LQ"];


% Names=["GA" "GB" "GC" "GD" "GE"];
% Names=["HA" "HB" "HC" "HD" "HE"];
% Names=["AC" "BC" "CD" "CA" "CC" "DB" "EE" "EB" "FE" "FB" "GE" "GB" "HC"];


% Names=["LA" "LB" "LC" "LD" "LE"];
% Names=["MA" "MB" "MC" "MD" "ME"];
% Names=["NA" "NB" "NC" "ND" "NE"];
% Names=["OA" "OB" "OC" "OD" "OE"];
% Names=["IA" "IB" "IC" "ID" "IE"];
% Names=["JA" "JB" "JC" "JD" "JE"];

% Names=["KA" "KB" "KC" "KD" "KE"];

% Names=["PA" "PB" "PC" "PD" "PE"];
% Names=["QA" "QB" "QC" "QD" "QE"];
% Names=["RA" "RB" "RC" "RD" "RE"];

% Names=["DA" "DB" "DC" "DD" "DE"];
% Names=["EA" "EB" "EC" "ED" "EE"];
% Names=["FA" "FB" "FC" "FD" "FE"];

% Names=["WA" "WB" "WC" "WD" "WE"];
% Names=["UA" "UB" "UC" "UD" "UE" "UF" "UG"];
% Names=["VA" "VB" "VC" "VD" "VE" "VF" "VG"];

% Names=["XA" "XB" "XC" "XD" "XE" "XF" "XG"];
% Names=["YA" "YB" "YC" "YD" "YE" "YF" "YG"];

% Names=["ZA" "ZB" "ZC" "ZD" "ZE"];

% Names=["AA" "AB" "AC" "AD" "AE"];
% Names=["BA" "BB" "BC" "BD" "BE"];
% Names=["CA" "CB" "CC" "CD" "CE"];
% Names=["DA" "DB" "DC" "DD" "DE"];
% Names=["EA" "EB" "EC" "ED" "EE"];

% Names=["GA" "GB" "GC" "GD" "GE" "GF" "GG"];
% Names=["HA" "HB" "HC" "HD" "HE" "HF" "HG"];
% Names=["IA" "IB" "IC" "ID" "IE" "IF" "IG"];
% Names=["FA" "FB" "FC" "FD" "FE" "FF" "FG"];

% Names=["IA" "IB" "IC" "ID" "IE"];
% Names=["IF" "IG" "IH" "II" "IJ"];
% Names=["AF" "AG" "AH" "AI" "AJ"];
% Names=["AA" "AB" "AC" "AD" "AE"];
% Names=["BA" "CA" "DA" "EA" "FA"];
% Names=["JF" "KF" "LF" "MF" "NF" "OF" "PF" "CAA" "CBA" "CCA" "CDA" "CEA" "CFA" "CGA" "CHA"];

% Names=["AA" "AB" "AC" "AD" "AE" "AF" "AG" "AH" "AI" "AJ" "AK" "AL" "AM" "AN" "AO" "AP" "AQ" "AR" "AS" "AT" "AU" "AV" "AW" "AX" "AY" "AZ" "BA" "BB" "BC" "BD"];
% Names=["CA" "DA" "EA" "FA" "GA" "HA" "IA" "JA" "KA" "LA" "MA" "NA" "OA" "PA" "QA" "RA" "SA" "TA" "UA" "VA" "WA" "XA" "YA" "ZA"];

% Names=["AA" "AB" "AC" "AD" "AE" "AF" "AG" "AH" "AI" "AJ" "AK" "AL" "AM" "AN" "AO" "AP" "AQ" "AR" "AS" "AT" "AU" "AV" "AW" "AX" "AY" "AZ" "BA" "BB" "BC" "BD" "CA" "DA" "EA" "FA" "GA"];
% Names=["AZ" "BA" "BB"];

% Names=["JF" "KF" "LF" "MF" "NF" "OF" "PF"];
% Names=["UE" "UAA" "UB" "UF" "UD" "UC" "UG" "UH"];
% Names=["UFA" "UFB"];

% Names=["CB" "CC" "CD" "CE" "CF" "CG" "CH" "CI" "CJ" "CK" "CL" "CM" "CN" "CO" "CP" "CQ" "CR" "CS" "CT" "CU" "CV" "CW" "CX" "CY" "CZ"];
% Names=["CF" "CG" "CH" "CI" "CJ" "CK" "CL" "CM" "CN" "CO"];

% Names=["AA" "AB" "AC" "AD" "AE" "AF" "AG" "AH" "AI"];
% Names=["CA" "CB" "CC" "CD" "CE" "CF" "CG" "CH" "CI" "CJ"];
% Names=["DB" "DC" "DD"];
% Names=["DH" "DG"];
% Names=["EA" "EB" "EC" "ED" "EE"];
% Names=["FA" "FB" "FC" "FD" "FE" "FF" "FG" "FH" "FI" "FJ" "FK" "FL" "FM" "FN" "FO" "FP" "FQ" "FR"];
 
% Names=["FI" "FS" "FT" "FU" "FV" "FJ" "FW" "FX" "FY" "FZ" "FK"];
% Names=["BA" "BD" "BG"];

% Names=["KA" "KB" "KC" "KD" "KE"]; % PP 2motor with add.load
% Names=["HA" "HB" "HC" "HD" "HE"]; % PP 2motor without add.load
% Names=["EA" "EB" "EC" "ED" "EE"]; % PP 1motor with add.load
% Names=["IA" "IB" "IC" "ID" "IE"]; % PP 1motor without add.load
% Names=["AA" "AB" "AC" "AD" "AE" "AF" "AG" "AH" "AI"]; % sin 2motor with add.load
% Names=["AJ" "AK" "AL" "AM" "AN" "AO" "AP" "AQ" "AR"]; % sin 2motor without add.load
% Names=["BA" "BB" "BC" "BD" "BE" "BF" "BG" "BH" "BI"]; % sin 1motor with add.load
% Names=["BJ" "BK" "BL" "BM" "BN" "BO" "BP" "BQ" "BR"]; % sin 1motor without add.load
% Names=["LA" "LB" "LC" "LCA" "LCB" "LD" "LE" "LF" "LFA" "LFB" "LG" "LH" "LI" "LIA" "LIB" "LJ" "LK" "LL" "LLA" "LLB"];  
% Names=["LG" "LH" "LI" "LIA" "LIB" "LJ" "LK" "LL" "LLA" "LLB"];
% Names=["LM" "LN" "LO" "LP" "LQ"];
% Names=["LCC" "LFC" "LIC" "LLC"];
% Names=["LID" "LIE" "LIF" "LIG" "LIH"];
% Names=["LLD" "LLE" "LLF" "LLG" "LLH"];

% Names=["LA" "LB" "LC" "LCA" "LCB" "LCC"];
% Names=["LD" "LE" "LF" "LFA" "LFB" "LFC"];

% Names=["MA" "MB" "MC" "MD" "ME" "MF" "MG" "MH" "MI"]; % sin int.drive with loader and k50
% Names=["MJ" "MK" "ML" "MM" "MN" "MO" "MP" "MQ" "MR"]; % sin int.drive with loader and k90 
% Names=["MS" "MT" "MU" "MV" "MW" "MX" "MY" "MZ" "MZA"];% sin int.drive with loader and k90 and velocity Fdb

% Names=["KE"];
% Names=["AD" "AE" "AF"];
% Names=["AA" "AB" "AC"];
% Names=["AG" "AH" "AI"];
% Names=["AJ" "AK" "AL"];
% Names=["AM" "AN" "AO"];
% Names=["AP" "AQ" "AR"];
% Names=["BD" "BE" "BF"];
% Names=["BA" "BB" "BC"];
% Names=["BG" "BH" "BI"];
% Names=["BJ" "BK" "BL"];
% Names=["BM" "BN" "BO"];
% Names=["BP" "BQ" "BR"];
% Names=["AA" "AE" "AH" "AK" "AO" "AR"];
% Names=["BB" "BD" "BI" "BL" "BO" "BQ"];
% Names=["AA" "AF" "AI" "AK" "AO" "AQ"];
% Names=["BA" "BD" "BI" "BL" "BO" "BR"];
Names=["EB"];

for iR = 1:1:length(Names)
    E = Names(iR);
    D=E+'.csv';
    assignin('base',E,dlmread(D,';',1,0));
    A = dlmread(D,';',1,0);
    B = convertStringsToChars(E);
       C = [0.0034364261*A(:,1) -1/(250000*4/2/3.14159265359)*A(:,2) 1/(4096/2/3.14159265359*10)*A(:,3) 1/(4096/2/3.14159265359*10)*A(:,4)];
       % C = [0.0034364261*A(:,1) 1/(4096/2/3.14159265359*10)*A(:,4)+0.00674+1/(250000*4/2/3.14159265359)*A(:,2) 1/(4096/2/3.14159265359*10)*A(:,4)+0.00674-1/(4096/2/3.14159265359*10)*A(:,3)];
       C(:,4)=C(:,4)+0.00674;
      % C = [0.0034364261*A(:,1) -1/(250000*4/2/3.14159265359)*A(:,2) 1/(4096/2/3.14159265359*10)*A(:,3) 1/(250000*4/2/3.14159265359)*A(:,4)];
     
      iR
      mean(C(:,2)-C(:,4))
      GG(iR) = mean(abs(C(:,2)-C(:,4)));
      
      % F=C(500:length(C),:);
      F=C(1:length(C),:);
      
%   Plots_pattern_F;
      % F(:,4)-F(:,2)
      H(iR)=sum(abs(F(:,4)-F(:,2)))/(length(F))
      I(iR) = max(abs(abs(F(:,4)-F(:,2))-H(iR)))
    % H(iR)=sum(abs(F(:,4)-F(:,2)))/(F(length(F),1)-F(1,1))
      %
    % C = [0.0034364261*A(:,1) -1/(250000*4/2/3.14159265359)*10*A(:,2) 1/(4096/2/3.14159265359)*A(:,3) 1/(4096/2/3.14159265359)*A(:,4)];
    % C = [0.0034364261*A(:,1) -1/(250000*4/2/3.14159265359)*A(:,2) 1/(4096/2/3.14159265359*10)*A(:,3) 1/(4096/2/3.14159265359*10)*A(:,4)*sqrt(2)/2];
    % C = [0.0034364261*A(:,1) -1/(250000*4/2/3.14159265359)*A(:,2) 1/(4096/2/3.14159265359)*A(:,3) 1/(4096/2/3.14159265359)*A(:,4)*sqrt(2)/2];
    % C = [0.0034364261*A(:,1) -1/(250000*4/2/3.14159265359)*A(:,2) 1/(4096/2/3.14159265359*10)*A(:,3) 1/(250000*4/2/3.14159265359)*A(:,4)*sqrt(2)/2];
    % C = [0.0034364261*A(:,1) -1/(5000*4/2/3.14159265359)*A(:,2) 1/(4096/2/3.14159265359*10)*A(:,3) 1/(4096/2/3.14159265359*10)*A(:,4)];
    % C = [time q1 q2 q1p];
    % C = [Time Precision_sensor Resolver Precision_sensor_reference];
    %{
    for io = 1:1:length(C(:,2))
        C(io,2)=-1/(250000*4/2/3.14159265359)*(A(io,2) + (io-1)*3249/10186);
    end
    %}
    Plots_pattern;
    % Plots_pattern_Diff;
end

min(GG);
%%
%{
A = ADA;
B = 'ADA';
C = [0.0034364261*A(:,1) -1/(250000*4/2/3.14159265359)*A(:,2) 1/(4096/2/3.14159265359*10)*A(:,3) 1/(4096/2/3.14159265359*10)*A(:,4)];
Plots_pattern;
%}