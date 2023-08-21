clear all
clc
%%
%Names=["AAE" "AAF" "AAG"];
%Names = ["AA" "AB" "AC" "AD" "AE" "BA" "BB" "BC" "BD" "BE" "CA" "CB" "CC" "CD" "CE" "EA" "EB" "EC" "ED" "EE"];
%Names = ["LA" "LB" "LC" "LD" "MA" "MB" "MC" "MD" "NA" "NB" "NC" "ND" "OA" "OB" "OC" "OD" "PA" "PB" "PC" "PD"];
%Names=["TA" "TB" "TC" "TD" "TE" "TF"];
%Names=["AAZ" "ABZ"];
%{
Names=["AA" "AB" "AC" "AD" "AE" "AF" "AG" "AH" "AI" "AJ" "AK" "AL" "AM" "AN" "AO" "AP" "AQ" "AR"];
%}
%{
Names=["CA" "CB" "CC" "CD" "CE" "CF" "CG" "CH" "CI" "CJ" "CK" "CL" "CM" "CN" "CO" "CP" "CQ" "CR" "CS" "CT" "CU"...
              "DA" "DB" "DC" "DD" "DE" "DF" "DG" "DH" "DI" "DJ" "DK" "DL" "DM" "DN" "DO" "DP" "DQ" "DR" "DS" "DT" "DU"...
              "IA" "IB" "IC" "ID" "IE" "IF" "IG" "IH" "II" "IJ" "IK" "IL" "IM" "IN" "IO" "IP" "IQ" "IR" "IS" "IT" "IU"...
              "JA" "JB" "JC" "JD" "JE" "JF" "JG" "JH" "JI" "JJ" "JK" "JL" "JM" "JN" "JO" "JP" "JQ" "JR" "JS" "JT" "JU"...
              "MA" "MB" "MC" "MD" "ME" "MF" "MG" "MH" "MI" "MJ" "MK" "ML" "MM" "MN" "MO" "MP" "MQ" "MR" "MS" "MT" "MU"...
              "NA" "NB" "NC" "ND" "NE" "NF" "NG" "NH" "NI" "NJ" "NK" "NL" "NM" "NN" "NO" "NP" "NQ" "NR" "NS" "NT" "NU"];
%}
%{
Names=["IA" "GA" "KA"...
              "HB" "IB" "GB" "KB"...
              "HC" "IC" "GC" "KC"...
              "HE" "IE" "GE" "KE"...
              "HF" "IF" "GF" "KF"...
              "HG" "IG" "GG" "KG"...
              "HH" "IH" "GH" "KH"...
              "HI" "II" "GI" "KI"...
              "HJ" "IJ" "GJ" "KJ"...
              "HK" "IK" "GK" "KK"...
              "HL" "IL" "GL" "KL"...
              "HM" "IM" "GM" "KM"...
              "HN" "IN" "GN" "KN"...
              "HO" "IO" "GO" "KO"...
              "HP" "IP" "GP" "KP"...
              "HQ" "IQ" "GQ" "KQ"...
              "HR" "IR" "GR" "KR"...
              "HS" "IS" "GS" "KS"...
              "HT" "IT" "GT" "KT"...
              "HU" "IU" "GU" "KU"];
%}
%{
Names=["GC" "IE" "GF" "HG" "KH" "GL" "KL" "IM" "IN" "GO" "KP" "GR" "IS" "KT" "HU"];
%}
%{
Names=["AA" "AB" "AC" "AD"...
              "BA" "BB" "BC" "BD"...
              "CA" "CB" "CC" "CD"...
              "DA" "DB" "DC" "DD"...
              "EA" "EB" "EC" "ED"...
              "KA" "KB" "KC" "KD"...
              "LA" "LB" "LC" "LD"...
              "FA" "FB" "FC" "FD"...
              "GA" "GB"...
              "MA" "MB"...
              "NA" "NB"];
%Names=["SA" "SB" "SC" "SD"];
%Names=["SB"];
%}
%{
Names=["XAA" "XAB" "XAC" "XAD" "XAE" "XAF"...
              "XBA" "XBB" "XBC" "XBD" "XBE" "XBF" "XBG" "XBH" "XBI"...
              "XCA" ...
              "XDA"...
              "XEA" "XFA" "XGA" "XHA" "XIA" "XJA" "XKA" "XLA" "XMA" "XNB"];
%}
%{
Names=["AQI" "AQJ" "AQK" "AQL" "AQM"...
              "BQB" "BQC" "BQD" "BQE" "BQF" "BQG" "BQH" "BQI" "BQJ" "BQK"...
              "CQB" "CQC" "CQD" "CQE" "CQF" "CQG" "CQH" "CQI" "CQJ" "CQK" "CQL"...
              "DQB" "DQC" "DQD" "DQE" "DQF" "DQG" "DQH" "DQI" "DQJ" "DQK" "DQL"...
              "AWB" "AYB" "ATB" "AUB" "AVB" "AXB" "AOB" "ARB"];
%}
%{
% Names=["AZA" "AZB" "AZC"];
% Names=["ZA" "ZC" "ZD" "ZF" "ZI" "ZJ" "XA" "XC" "XD" "XF" "XI" "XJ"];
% Names=["ZD" "ZB" "ZE" "ZG"];
% Names=["AL" "AA" "AM" "AC" "AI" "AN" "AO" "AP"];
% Names=["AN" "AO" "AP"];
% Names=["BA" "BB" "BC" "BD" "BE" "BF" "BG" "BH" "BI"];
% Names=["CA" "CB" "CC" "CD" "CE" "CF" "CG" "DA" "DB" "DC" "DD" "DE" "DF" "DG"];
% Names=["BD"];
% Names=["EA" "EB" "EC" "ED" "EE" "EF" "EG" "FA" "FB" "FC" "FD" "FE" "FF" "FG"];
% Names=["GA" "GB" "GC" "GD" "GE" "GF" "GG" "HA" "HB" "HC" "HD" "HE" "HF" "HG"];
% Names=["IA" "IB" "IC" "ID" "IE" "IF" "IG" "JA" "JB" "JC" "JD" "JE" "JF" "JG"];
% Names=["KA" "KB" "KC" "KD" "KE" "KF" "KG" "LA" "LB" "LC" "LD" "LE" "LF" "LG"];
% Names=["la"];
% Names=["BD" "CD" "DE" "EF" "FE" "HB" "IE" "JE" "KB" "LC"];
% Names=["MA" "MB" "NA" "NB"];
% Names=["OA" "OB" "OC" "OD" "OE" "OF" "OFA" "OG" "OH" "OI" "OJ" "OK" "OL" "OM" "ON"];
% Names=["OE" "OO" "OP" "OQ" "OR" "OF" "OS" "OT" "OU" "OV" "OFA"];
% Names=["PA" "PB" "PC" "PD" "PF" "QA" "QB" "QC" "QD" "QE" "QF" "QG" "QH" "QI" "QJ"];
% Names=["CC" "DD" "EE" "FF" "GG" "HH" "II" "JJ" "KK" "LL" "MM" "NN"];
% Names=["Iii" "Jjj" "Ee" "Ff"];
% Names=["VELA" "VELB" "VELC"];
% Names=["BF" "BA" "BG" "BC" "BH" "BD" "BE" "BB"];
% Names=["CA" "CB" "CC" "CD" "CE" "CF" "CG" "CH"];
% Names=["AN" "AO" "AE" "AP" "AQ" "AR" "AS" "AK" "AT" "AU"];
% Names=["CC" "CI" "CJ" "CK" "CL" "CD"];
% Names=["DA" "DC" "DD" "DE" "DF" "DG" "DH" "DI" "DJ" "DK" "DL" "DM"];
% Names=["IA" "IB" "IC" "ID" "IB" "IE"];
%}
% Names=["OSA" "OSB" "OSC" "OSD" "OSE" "OSF" "OSG" "OSH" "OSI" "OSJ" "OSK" "OSL" "OSM" "OSN" "OSO" "OSP"];
% Names=["OAA" "OAB" "OAC" "OAD" "OAE" "OAF" "OAG" "OAH" "OAI" "OAJ" "OAK" "OAL" "OAM" "OAN" "OAO" "OAP"];
% Names=["OBA" "OBB" "OBC" "OBD" "OBE" "OBF" "OBG" "OBH" "OBI" "OBJ" "OBK" "OBL" "OBM" "OBN" "OBO" "OBP"];
% Names=["OCA" "OCB" "OCC" "OCD" "OCE" "OCF" "OCG" "OCH" "OCI" "OCJ" "OCK" "OCL" "OCM" "OCN" "OCO" "OCP"];
% Names=["ODA" "ODM" "ODB" "ODC" "ODD" "ODE" "ODF" "ODG" "ODH" "ODI" "ODJ" "ODN" "ODK" "ODL"];
% Names=["OEA" "OEB" "OEC" "OEM" "OED" "OEN" "OEE" "OEO" "OEF" "OEG" "OEH" "OEI" "OEJ" "OEP" "OEK" "OEL"];
% Names=["OFA" "OFM" "OFB" "OFN" "OFC" "OFO" "OFD" "OFE" "OFP" "OFF" "OFQ" "OFG" "OFH" "OFI" "OFJ" "OFK" "OFL"];
% Names=["OGA" "OGM" "OGB" "OGN" "OGO" "OGC" "OGD" "OGE" "OGF" "OGG" "OGH" "OGI" "OGJ" "OGK" "OGL"];
% Names=["OHA" "OHB" "OHC" "OHD" "OHE" "OHF" "OHL" "OHG" "OHM" "OHH" "OHI" "OHJ" "OHK"];
% Names=["OIA" "OIB" "OIC" "OID" "OIE" "OIF" "OIG" "OIH" "OII" "OIJ" "OIK"];
% Names=["OJA" "OJB" "OJC" "OJD" "OJE" "OJF" "OJG" "OJH" "OJI" "OJJ" "OJK"];
% Names=["ZA" "ZB" "ZC" "ZD" "ZE" "ZF" "ZO" "ZOO" "ZG" "ZP" "ZPP" "ZQ" "ZQQ" "ZR" "ZRR" "ZH" "ZS" "ZSS" "ZT" "ZTT" "ZU" "ZUU" "ZI" "ZJ" "ZK" "ZL" "ZM" "ZN"];
% Names=["ZQ" "ZQQ" "ZR" "ZRR"];
% Names=["XA" "XAA" "XB" "XBB" "XC" "XCC" "XD" "XDD" "XE" "XEE" "XF" "XFF" "XG" "XGG" "XH" "XHH"];
% Names=["SA" "SB" "SC" "SP" "SQ" "SR" "SS" "ST" "SU" "SD" "SE" "SF" "SJ" "SK" "SL" "SG" "SH" "SI" "SY" "SZ" "SZA" "SM" "SN" "SO" "SV" "SW" "SX"];
% Names=["SP" "SQ" "SR" "SS" "ST" "SU" "SJ" "SK" "SL" "SG" "SH" "SI" "SV" "SW" "SX"];
% Names=["AB" "AC" "AD" "AE" "AF" "AG" "AH" "AI" "AJ" "AK" "AL" "AM" "AN" "AO" "AP" "AQ" "AR" "AS" "AT" "AU" "AV" "AW" "AX" "AY" "AZ" "BA" "BB" "BC" "BD" "BE" "BF" "BG" "BH" "BI" "BJ" "BK" "BL" "BM" "BN" "BO" "BP" "BQ" "BR" "BS" "BT" "BU" "BV" "BW" "BX" "BY"];
% Names=["AFA" "AFB" "AFC"];

% Names=["DAA" "DBA" "DCA" "DAB" "DBB" "DCB" "DAC" "DBC" "DCC" "DAD" "DBD" "DCD" "DAE" "DBE" "DCE"];
% Names=["DDA" "DEA" "DFA" "DBB" "DEB" "DFB" "DDC" "DEC" "DFC" "DDD" "DED" "DFD"];
% Names=["DGA" "DHA" "DIA" "DGC" "DHC" "DIC" "DGB" "DHB" "DIB"];
% Names=["DJA" "DKA" "DLA" "DJB" "DKB" "DLB"];
% Names=["DAF" "DBF" "DCF" "DAG" "DBG" "DCG" "DAA" "DBA" "DCA" "DAH" "DBH" "DCH" "DAI" "DBI" "DCI"];
% Names=["QAA" "QAB" "QAC" "QAD" "QAE" "QAF" "QAG" "QAL" "QAO" "QAP" "QAQ" "QAR"];
% Names=["QBA" "QBB" "QBC" "QBD" "QBE" "QBF" "QBG"];
% Names=["QCA" "QCB" "QCC" "QCD" "QCE" "QCF" "QCG" "QCH" "QCI" "QCJ" "QCK" "QCL" "QCM" "QCN" "QCO" "QCP" "QCQ" "QCR"];
% Names=["QDA" "QDB" "QDC" "QDD" "QDE" "QDF" "QDG" "QDH" "QDI" "QDJ"];
% Names=["QEA" "QEB" "QEC" "QED" "QEE" "QEF" "QEG" "QEH" "QEI" "QEJ" "QEK" "QEL" "QEM" "QEN" "QEO" "QEP" "QEQ" "QER"];
% Names=["QFA" "QFB" "QFC" "QFD" "QFE" "QFF" "QFG" "QFH" "QFI" "QFJ" "QFK" "QFL" "QFM" "QFN" "QFO" "QFP" "QFQ" "QFR"];
% Names=["QGA" "QGB" "QGC" "QGD" "QGE" "QGF" "QGG" "QGH" "QGI" "QGJ" "QGK" "QGL" "QGM" "QGN" "QGO" "QGP" "QGQ" "QGR"];
% Names=["QAC" "SAA" "SAB" "SAC" "SAD" "SAE" "SAF" "SAG" "SAH" "SAI" "QAD"];
% Names=["QBB" "SBA" "SBB" "SBC" "SBD" "QBC" "SBE" "SBF" "SBG" "SBH" "SBI" "SBJ" "SBK" "SBL" "SBM" "QBD"];
% Names=["QCF" "SCA" "SCB" "SCC" "SCD" "QCG" "SCE" "SCF" "SCG" "SCH" "QCH" "SCI" "SCJ" "SCK" "SCL" "QCI"];
% Names=["QDD" "SDA" "SDB" "SDC" "SDD" "QDE" "SDE" "SDF" "SDG" "SDH" "QDF"];
% Names=["QEF" "SEA" "SEB" "SEC" "SED" "QEG" "SEE" "SEF" "SEG" "SEH" "QEH"];
% Names=["QFD" "SFA" "SFB" "SFC" "SFD" "QFE" "SFE" "SFF" "SFG" "SFH" "QFF" "SFI" "SFJ" "SFK" "SFL" "QFG" "SFM" "SFN" "SFO" "SFP" "QFH"];
% Names=["QGE" "SGA" "QGF" "SGB" "QGG" "SGC" "QGH" "SGD" "QGI" "SGE" "QGJ" "SGF" "QGK" "SGG" "QGL" "SGH" "QGM"];
% Names=["AAA" "AAB" "AAC" "ABA" "ABB" "ABC" "ACA" "ACB" "ACC" "ADA" "ADB" "ADC" "AEA" "AEB" "AEC" "AFA" "AFB" "AFC" "AGA" "AGB" "AGC" "AHA" "AHB" "AHC" "AIA" "AIB" "AIC" "AJA" "AJB" "AJC" "AKA" "AKB" "AKC" "ALA" "ALB" "ALC" "AMA" "AMB" "AMC" "ANA" "ANB" "ANC" "AOA" "AOB" "AOC"];
% Names=["AOA" "AOB" "AOC"];
% Names=["APA" "APB" "APC"];
% Names=["QCI" "QHA" "QHB" "QHC" "QHD" "QCE" "QHE" "QHF" "QHG" "QHH" "QCF"];
% Names=["QHI" "QHJ" "QHK" "QHL" "QHM" "QHN" "QHO" "QHP" "QHQ"];
% Names=["AAC" "ACC" "QHK" "QHM" "APB" "AJA" "ALB" "AMB" "ANC" "AOB"];
% Names=["TESTA" "TESTB" "TESTC"];
% Names=["SQ" "SR" "SP"];
% Names=["SRB" "SPC"];
% Names=["ANC" "AOB"];

% sin input
% Names=["CAA" "CAB" "CAC" "CAD" "CAE"];
% Names=["CBA" "CBB" "CBC" "CBD" "CBE"];
% Names=["CCA" "CCB" "CCC" "CCD" "CCE" "CCF" "CCG" "CCH" "CCI" "CCJ"];
% Names=["CDA" "CDB" "CDC" "CDD" "CDE" "CDF" "CDG" "CDH" "CDI" "CDJ"];
% Names=["CEA" "CEB" "CEC" "CED" "CEE" "CEF" "CEG" "CEH" "CEI" "CEJ"];
% Names=["CFA" "CFB" "CFC" "CFD" "CFE" "CFF" "CFG" "CFH" "CFI" "CFJ" "CFK"];
% Names=["CGA" "CGB" "CGC" "CGD" "CGE" "CGF" "CGG" "CGH" "CGI" "CGJ" "CGK"];
% Names=["CHA" "CHB" "CHC" "CHD" "CHE" "CHF" "CHG" "CHH" "CHI" "CHJ" "CHK"];
% Names=["CIA" "CIB" "CIC" "CID" "CIE" "CIF" "CIG" "CIH" "CII" "CIJ" "CIK"];
% Names=["CJA" "CJB" "CJC" "CJD" "CJE" "CJF" "CJG" "CJH" "CJI" "CJJ" "CJK"];

% one-motor drive
% Names=["AODA" "AODB" "AODC" "AODD" "AODE" "AODF"];
% Names=["ODA" "ODB" "ODC" "ODD" "ODE" "ODF" "ODG" "ODH" "ODI" "ODJ" "ODK" "ODL" "ODM" "ODN" "ODO" "ODP" "ODQ" "ODR" "ODS" "ODT" "ODU"];
% Names=["AAA" "AAB" "AAC" "ABA" "ABB" "ABC" "ACA" "ACB" "ACC" "ADA" "ADB" "ADC"];

% Names=["AB" "AC" "AD" "AE" "AF" "AG" "AH" "AI" "AJ" "AK" "AL" "AM" "AN" "AO" "AP" "AQ" "AR" "AS" "AT" "AU" "AV" "AW" "AX" "AY" "AZ" "BA" "BB" "BC" "BD" "BE" "BF" "BG" "BH" "BI" "BJ" "BK" "BL" "BM" "BN" "BO" "BP" "BQ" "BR" "BS" "BT" "BU" "BV" "BW" "BX" "BY"];

% Names=["CA" "CB" "CC" "CD" "CE" "CF" "CG" "CH" "CI" "CJ" "CK" "CL" "CM" "CN" "CO" "CP" "CQ" "CR" "CS" "CT" "CU" "CV" "CW" "CX" "CY" "CZ" "DA" "DB" "DC" "DD" "DE" "DF" "DG" "DH" "DI" "DJ" "DK" "DL" "DM" "DN" "DO" "DP" "DQ" "DR" "DS" "DT" "DU" "DV" "DW" "DX" "DY"];

% Names=["EA" "EB" "EC" "ED" "CA" "EE" "EF" "EG" "EH" "CB" "EI" "EJ" "EK" "EL" "EM" "EN" "EO" "EP" "EQ" "CC" "CD" "CE" "CF" "CG" "CH" "CI" "CJ" "CK" "CL" "CM" "CN" "CO" "CP" "CQ" "CR" "CS" "CT" "CU" "CV" "CW" "CX" "CY" "CZ" "DA" "DB" "DC" "DD" "DE" "DF" "DG" "DH" "DI" "DJ" "DK" "DL" "DM" "DN" "DO" "DP" "DQ" "DR" "DS" "DT" "DU" "DV" "DW" "DX" "DY"];

% Names=["KAA" "KAB" "KAC" "KAD" "KAE" "KAF" "KAG" "KAH" "KAI" "KAJ" "KAK" "KAL" "KAM" "KAN" "KAO" "KAP" "KAQ" "KAR" "KAS" "KAT" "KAU" "KAV" "KAW" "KAX" "KAY" "KAZ" "KAZA" "KAZB" "KAZC" "KAZD" "KAZE" "KAZF" "KAZG" "KAZH" "KAZI" "KAZJ" "KAZK"];
% Names=["KBA" "KBB" "KBC" "KBD" "KBE" "KBF" "KBG" "KBH" "KBI" "KBJ" "KBK" "KBL" "KBM" "KBN" "KBO" "KBP" "KBQ" "KBR" "KBS" "KBT" "KBU" "KBV" "KBW" "KBX" "KBY" "KBZ" "KBZA" "KBZB" "KBZC" "KBZD" "KBZE" "KBZF" "KBZG" "KBZH"];
% Names=["KCA" "KCB" "KCC" "KCD" "KCE" "KCF" "KCG" "KCH" "KCI" "KCJ" "KCK" "KCL" "KCM" "KCN" "KCO" "KCP" "KCQ" "KCR" "KCS" "KCT" "KCU" "KCV" "KCW" "KCX" "KCY" "KCZ" "KCZA" "KCZB" "KCZC" "KCZD" "KCZE" "KCZF" "KCZG"];
% Names=["KDA" "KDB" "KDC" "KDD" "KDE" "KDF" "KDG" "KDH" "KDI" "KDJ" "KDK" "KDL" "KDM" "KDN" "KDO" "KDP" "KDQ" "KDR" "KDS" "KDT" "KDU" "KDV" "KDW" "KDX" "KDY" "KDZ" "KDZA" "KDZB" "KDZC" "KDZD" "KDZE" "KDZF"];
% Names=["KEA" "KEB" "KEC" "KED" "KEE" "KEF" "KEG" "KEH" "KEI" "KEJ" "KEK" "KEL" "KEM" "KEN" "KEO" "KEP" "KEQ" "KER" "KES" "KET" "KEU" "KEV" "KEW" "KEX" "KEY" "KEZ" "KEZA" "KEZB" "KEZC" "KEZD" "KEZE"];
% Names=["KBZD" "KBZE" "KBZEA" "KBZEB" "KBZEC" "KBZED" "KBZEE" "KBZEF" "KBZEG" "KBZEH" "KBZEI" "KBZF"];

% Names=["KEA" "KEB" "KEC" "KED" "KEE" "KEF" "KEG" "KEH" "KEI" "KEJ" "KEK" "KEL" "KEM" "KEN" "KEO" "KEP" "KEQ" "KER"];

% Names=["AA" "AB" "AC" "BA" "BB" "BC" "DA" "DB" "DC" "EA" "EB" "EC" "FA" "FB" "FC" "GA" "GB" "GC" "HA" "HB" "HC" "IA" "IB" "IC" "JA" "JB" "JC" "KA" "KB" "KC" "LA" "LB" "LC" "MA" "MB" "MC"];

% Names=["QAA" "QAB" "QAC" "QAD" "QAE" "QAF" "QAG"];
% Names=["QBA" "QBB" "QBC" "QBD" "QBE" "QBF" "QBG"];
% Names=["QCA" "QCB" "QCC" "QCD" "QCE" "QCF" "QCG" "QCH" "QCI" "QCJ" "QCK" "QCL"];
% Names=["QDA" "QDB" "QDC" "QDD" "QDE" "QDF" "QDG" "QDH" "QDI" "QDJ" "QDK" "QDL"];
% Names=["QEA" "QEB" "QEC" "QED" "QEE" "QEF" "QEG" "QEH" "QEI" "QEJ" "QEK" "QEL"];
% Names=["QFA" "QFB" "QFC" "QFD" "QFE" "QFF" "QFG" "QFH" "QFI" "QFJ" "QFK" "QFL"];
% Names=["QGA" "QGB" "QGC" "QGD" "QGE" "QGF" "QGG" "QGH" "QGI" "QGJ" "QGK" "QGL"];
% Names=["QHA" "QHB" "QHC" "QHD" "QHE" "QHF" "QHG" "QHH" "QHI" "QHJ" "QHK" "QHL"];
% Names=["QIA" "QIB" "QIC" "QID" "QIE" "QIF" "QIG" "QIH" "QII" "QIJ" "QIK" "QIL"];
% Names=["QJA" "QJB" "QJC" "QJD" "QJE" "QJF" "QJG" "QJH" "QJI" "QJJ" "QJK" "QJL"];
% Names=["QKA" "QKB" "QKC" "QKD" "QKE" "QKF" "QKG" "QKH" "QKI" "QKJ" "QKK" "QKL"];
% Names=["QLA" "QLB" "QLC" "QLD" "QLE" "QLF" "QLG" "QLH" "QLI" "QLJ" "QLK" "QLL"];
% Names=["QMA" "QMB" "QMC" "QMD" "QME" "QMF" "QMG" "QMH" "QMI" "QMJ"];

% Names=["QAC" "QAM" "QAN" "QAO" "QAP" "QAQ" "QAR" "QAS" "QAT" "QAU" "QAD"];
% Names=["QBC" "QBM" "QBN" "QBO" "QBP" "QBQ" "QBR" "QBS" "QBT" "QBU" "QBD"];
% Names=["QCM" "QCN" "QCO" "QCP" "QCQ" "QCE" "QCR" "QCS" "QCT" "QCU" "QCV" "QCW" "QCX" "QCY" "QCZ" "QCF"];
% Names=["QDD" "QDM" "QDN" "QDO" "QDP" "QDQ" "QDR" "QDS" "QDT" "QDU" "QDE"];
% Names=["QED" "QEM" "QEN" "QEO" "QEP" "QEQ" "QER" "QES" "QET" "QEU" "QEE"];
% Names=["QFE" "QFM" "QFN" "QFO" "QFP" "QFQ" "QFR" "QFS" "QFT" "QFU" "QFF" "QFV" "QFW" "QFX" "QFY" "QFZ" "QFZA" "QFZB" "QFZC" "QFZD" "QFG"];
% Names=["QGE" "QGM" "QGN" "QGO" "QGP" "QGQ" "QGR" "QGS" "QGT" "QGU" "QGF" "QGV" "QGW" "QGX" "QGY" "QGZ"];
% Names=["QHE" "QHM" "QHN" "QHO" "QHP" "QHQ" "QHR" "QHS" "QHT" "QHU" "QHF"];
% Names=["QIG" "QIM" "QIN" "QIO" "QIP" "QIQ" "QIR" "QIS" "QIT" "QIU" "QIH" "QIV" "QIW" "QIX" "QIY" "QIZ" "QIZA" "QIZB" "QIZC" "QIZD" "QII"];
% Names=["QJF" "QJM" "QJN" "QJO" "QJP" "QJQ" "QJR" "QJS" "QJT" "QJU" "QJG" "QJV" "QJW" "QJX" "QJY" "QJZ"];
% Names=["QKG" "QKM" "QKN" "QKO" "QKP" "QKQ" "QKR" "QKS" "QKT" "QKU" "QKH" "QKV" "QKW" "QKX" "QKY" "QKZ" "QKZA" "QKZB" "QKZC" "QKZD" "QKI"];
% Names=["QLG" "QLM" "QLN" "QLO" "QLP" "QLQ" "QLR" "QLS" "QLT" "QLU" "QLH"];
% Names=["QMG" "QMM" "QMN" "QMP" "QMQ" "QMR" "QMS" "QMT" "QMU" "QMH" "QMV" "QMW" "QMX" "QMY" "QMZ" "QMZA" "QMZB" "QMZC" "QMZD" "QMI"];

% Names=["QHV" "QHW" "QHX" "QHY" "QHZ"];
% Names=["QLV" "QLW" "QLX" "QLY" "QLZ" "QLZA"];
%{
Names=["AA" "AB" "AC" "AO" "AP"...
              "BA" "BB" "BC" "BO" "BP"...
              "CA" "CB" "CC" "CO" "CP"...
              "DA" "DB" "DC" "DO" "DP"...
              "EA" "EB" "EC" "EO" "EP"...
              "FA" "FB" "FC" "FO" "FP"...
              "GA" "GB" "GC" "GO" "GP"...
              "HA" "HB" "HC" "HO" "HP"...
              "IA" "IB" "IC" "IO" "IP"...
              "JA" "JB" "JC" "JO" "JP"...
              "KA" "KB" "KC" "KO" "KP"...
              "LA" "LB" "LC" "LO" "LP"...
              "MA" "MB" "MC" "MO" "MP"];
%}
% Names=["AD" "AE" "AF" "AG" "AH" "AI" "AJ" "AK" "AL" "AM" "AN"];
% Names=["BD" "BE" "BF" "BG" "BH" "BI" "BJ" "BK" "BL" "BM" "BN"];
% Names=["CD" "CE" "CF" "CG" "CH" "CI" "CJ" "CK" "CL" "CM" "CN"];
% Names=["DD" "DE" "DF" "DG" "DH" "DI" "DJ" "DK" "DL" "DM" "DN"];
% Names=["ED" "EE" "EF" "EG" "EH" "EI" "EJ" "EK" "EL" "EM" "EN"];
% Names=["FD" "FE" "FF" "FG" "FH" "FI" "FJ" "FK" "FL" "FM" "FN"];
% Names=["GD" "GE" "GF" "GG" "GH" "GI" "GJ" "GK" "GL" "GM" "GN"];
% Names=["HD" "HE" "HF" "HG" "HH" "HI" "HJ" "HK" "HL" "HM" "HN"];
% Names=["ID" "IE" "IF" "IG" "IH" "II" "IJ" "IK" "IL"];
% Names=["JD" "JE" "JF" "JG" "JH" "JI" "JJ" "JK" "JL"];
% Names=["KD" "KE" "KF" "KG" "KI" "KJ" "KK"];
% Names=["LD" "LE" "LF" "LG" "LH" "LI" "LJ" "LK"];
% Names=["MD" "ME" "MF" "MG"];
% Names=["BA" "BB" "BC" "BO" "BP"];
% Names=["QBB" "QBV" "QBW" "QBX" "QBY" "QBC" "QBM" "QBN" "QBO" "QBP" "QBQ" "QBR" "QBS" "QBT" "QBU" "QBD"];

% Names=["ODA" "ODB" "ODC" "ODD" "ODE" "ODF" "ODG" "ODH" "ODI" "ODJ" "ODK" "ODL" "ODM" "ODN" "ODO" "ODP" "ODQ" "ODR" "ODS" "ODT" "ODU" "ODV" "ODW" "ODX" "ODY" "ODZ" "ODZA" "ODZB" "ODZC" "ODZD" "ODZE" "ODZF" "ODZG" "ODZH"];
% Names=["AA" "AB" "AC" "AD" "AE" "BA" "BB" "BC" "BD" "BE"];
% Names=["AA" "AB" "AC" "AD" "AE"];
% Names=["NC" "ND" "NE" "NF" "NG" "NH" "NI" "NJ" "NK"];
% Names=["CA" "CB" "CC" "CD" "CE" "CF" "CG" "CH" "CI" "CJ" "CK" "CL" "CM" "CN" "CO" "CP" "CQ" "CR" "CS" "CT" "CU" "CV"];
% Names=["DA" "DB" "DC" "DD" "DE"];
% Names=["OA" "OB" "OC" "OD" "OE" "OF" "OG" "OH" "OI" "OJ" "OK"];

% Names=["SA" "SB" "SC" "SP" "SQ" "SR" "SS" "ST" "SU" "SD" "SE" "SF" "SJ" "SK" "SL" "SG" "SH" "SI" "SY" "SZ" "SZA" "SM" "SN" "SO" "SV" "SW" "SX"];
% Names=["ASA" "ASB" "ASC" "ASD" "ASE" "BSA" "BSB" "BSC" "BSD" "BSE" "CSA" "CSB" "CSC" "CSD" "CSE" "DSA" "DSB" "DSC" "DSD" "DSE" "ASA" "ASB" "ASC" "ASD" "ASE" "ESA" "ESB" "ESC" "ESD" "ESE" "FSA" "FSB" "FSC" "FSD" "FSE" "GSA" "GSB" "GSC" "GSD" "GSE"];
% Names=["ASA" "ASB" "ASC" "ASD" "ASE"];
% Names=["BSA" "BSB" "BSC" "BSD" "BSE"];
% Names=["CSA" "CSB" "CSC" "CSD" "CSE"];
% Names=["DSA" "DSB" "DSC" "DSD" "DSE"];
% Names=["ASA" "ASB" "ASC" "ASD" "ASE"];
% Names=["ESA" "ESB" "ESC" "ESD" "ESE"];
% Names=["FSA" "FSB" "FSC" "FSD" "FSE"];
% Names=["GSA" "GSB" "GSC" "GSD" "GSE"];
% Names=["AAA" "AAB" "AAC" "ABA" "ABB" "ABC"];
% Names=["BAA" "BAB" "BAC" "BAD" "BAE"];
% Names=["BAA" "BAB" "BAC" "BAD" "BAE" "BBA" "BBB" "BBC" "BCA" "BCB" "BCC" "BDA" "BDB" "BDC" "BEA" "BEB" "BEC" "BFA" "BFB" "BFC" "BGA" "BGB" "BGC" "BHA" "BHB" "BHC" "BIA" "BIB" "BIC" "BJA" "BJB" "BJC" "BKA" "BKB" "BKC" "BLA" "BLB" "BLC" "BMA" "BMB" "BMC" "BNA" "BNB" "BNC"];
% Names=["BAA" "BBA" "BCA" "BDA" "BEA" "BFA" "BGA" "BHA" "BIA" "BJA" "BKA" "BLA" "BMA" "BNA"];
% Names=["BOA" "BPA" "BRA" "BSA" "BTA" "BUA"];
% Names=["BKA"];
% Names=["AAA" "AAB" "AAC" "ABC" "AAD" "ABD" "AAE" "ABE" "AAF" "ABF" "AAG" "ABG" "AAH" "ABH" "AAI" "ABI"];
% Names=["AAD" "AAR" "AAS" "AAT" "AAU" "AAV" "AAW" "AAX" "AAY" "AAZ" "ABD" "ABE" "ABF" "ABG" "ABH" "ABI" "ABJ" "ABK" "ABL" "ABM" "AAE"];
% Names=["BAA" "BAB" "BAC" "BAD" "BAE" "BAF" "BAG" "BAH" "BAI" "BAJ" "BAK" "BAL" "BAM" "BAN" "BAO" "BAP"];
% Names=["CAA" "CAB" "CAC" "CAD" "CAE" "CAF" "CAG" "CAH" "CAI" "CAJ" "CAK" "CAL" "CAM" "CAN" "CAO" "CAP" "CAQ" "CAR" "CAS" "CAT" "CAU" "CAV" "CAW" "CAX" "CAY" "CAZ"];
% Names=["DAA" "DAB" "DAC" "DAD" "DAE" "DAF" "DAG" "DAH" "DAI" "DAJ" "DAK" "DAL" "DAM" "DAN" "DAO" "DAP" "DAQ" "DAR" "DAS" "DAT" "DAU" "DAV" "DAW" "DAX" "DAY" "DAZ"];
% Names=["BBA" "BBB" "BBC" "BBD" "BBE" "BAL" "BAQ" "BAR" "BAS" "BAT" "BAU" "BAV" "BAW" "BAX" "BAY" "BAM"];
% Names=["CBA" "CBB" "CBC" "CBD" "CBE" "CAR" "CBF" "CBG" "CBH" "CBI" "CBJ" "CBK" "CBL" "CBM" "CBN" "CAS"];
% Names=["DBA" "DBB" "DBC" "DBD" "DBE" "DAT" "DBF" "DBG" "DBH" "DBI" "DBJ" "DBK" "DBL" "DBM" "DBN" "DAU"];

% Names=["AA" "AB" "AC" "AD" "AE" "AF" "AG" "AH" "AI" "AJ" "AK" "AL" "AM" "AN" "AO"];
% Names=["BA" "BB" "BC" "BD" "BE" "BF" "BG" "BH" "BI" "BJ" "BK" "BL" "BM" "BN" "BO"];
% Names=["CA" "CB" "CC" "CD" "CE" "CF" "CG" "CH" "CI" "CJ" "CK" "CL" "CM" "CN" "CO"];
% Names=["DA" "DB" "DC" "DD" "DE" "DF" "DG" "DH" "DI" "DJ" "DK" "DL" "DM" "DN" "DO"];
% Names=["BO" "BP" "BQ" "BR" "BS" "BT" "BU" "BV" "BW" "BX" "BY"];
% Names=["CO" "CP" "CQ" "CR" "CS" "CT" "CU" "CV" "CW" "CX" "CY"];
% Names=["DO" "DP" "DQ" "DR" "DS" "DT" "DU" "DV" "DW" "DX" "DY"];
% Names=["ABD" "BAU" "CAR" "DBI"];
% Names=["EA" "EB" "EC" "ED" "EE" "EF" "EG"];
% Names=["FA" "FI" "FB" "FC" "FD" "FE" "FF" "FG" "FH" "FJ" "FK" "FL"];
% Names=["GA" "GB" "GC" "GD" "GE" "GF" "GG" "GH" "GI"];
% Names=["HA" "HB" "HC" "HD" "HE" "HF" "HG" "HH" "HI" "HJ" "HK"];
% Names=["EH" "EI" "EJ" "EK" "EL" "EA" "EM" "EN" "EO" "EP" "EB" "EQ" "ER" "ES" "ET" "EC"];
% Names=["EX" "EY" "EZ"];
% Names=["IA" "IB" "IC" "ID" "IE" "FA" "IF" "IG" "IH" "II" "FI" "IJ" "IK" "IL" "IM" "FB"];
% Names=["FX" "FY" "FZ"];
% Names=["JA" "JB" "JC" "JD" "JE" "JF" "JG" "JH" "JI" "GA" "JJ" "JK" "JL" "JM" "JN" "JO" "JP" "JQ" "JR" "GB" "JS" "JT" "JU" "JV" "JW" "JX" "JY" "JZ" "KA" "GC"];
% Names=["GX" "GY" "GZ"];
% Names=["HF" "LA" "LB" "LC" "LD" "LE" "LF" "LG" "LH" "LI" "HG" "LJ" "LK" "LL" "LM" "LN" "LO" "LP" "LQ" "LR" "HH"];
% Names=["HX" "HY" "HZ"];
% Names=["EB" "ID" "JI" "LK"];
% Names=["GG"];
% Names=["KPPP"];
% Names=["MA" "MB" "MC" "MD" "ME" "MF" "MG" "MH" "MI" "MJ" "MK" "ML"];
%Names=["AAA"];
% Names=["AA" "BA" "AB" "BB" "AC" "BC" "AAA" "AAB" "AAC" "AAD"];
% Names=["EA" "EB" "EC" "ED"];
 Names=["FA" "FB" "FC" "FD" "FE" "FF" "FG" "FH" "FI" "FJ"];
% Names=["GA" "GB" "GC" "GD" "GE" "GF" "GG" "GH" "GI" "GJ"];

for iR = 1:1:length(Names)
    E = Names(iR);
    D=E+'.csv';
    assignin('base',E,dlmread(D,';',1,0));
    A = dlmread(D,';',1,0);
    B = convertStringsToChars(E);
    % C = [0.0034364261*A(:,1) -1/(250000*4/2/3.14159265359)*A(:,2) 1/(4096/2/3.14159265359*10)*A(:,3) 1/(4096/2/3.14159265359*10)*A(:,4)];
     C = [0.0034364261*A(:,1) -1/(250000*4/2/3.14159265359)*10*A(:,2) 1/(4096/2/3.14159265359)*A(:,3) 1/(4096/2/3.14159265359)*A(:,4)];
    % C = [0.0034364261*A(:,1) -1/(250000*4/2/3.14159265359)*A(:,2) 1/(4096/2/3.14159265359*10)*A(:,3) 1/(4096/2/3.14159265359*10)*A(:,4)*sqrt(2)/2];
    % C = [0.0034364261*A(:,1) -1/(250000*4/2/3.14159265359)*A(:,2) 1/(4096/2/3.14159265359)*A(:,3) 1/(4096/2/3.14159265359)*A(:,4)*sqrt(2)/2];
    % C = [0.0034364261*A(:,1) -1/(250000*4/2/3.14159265359)*A(:,2) 1/(4096/2/3.14159265359*10)*A(:,3) 1/(250000*4/2/3.14159265359)*A(:,4)*sqrt(2)/2];
    % C = [0.0034364261*A(:,1) -1/(250000*4/2/3.14159265359)*A(:,2) 1/(4096/2/3.14159265359*10)*A(:,3) 1/(250000*4/2/3.14159265359)*A(:,4)];
    % C = [0.0034364261*A(:,1) -1/(5000*4/2/3.14159265359)*A(:,2) 1/(4096/2/3.14159265359*10)*A(:,3) 1/(4096/2/3.14159265359*10)*A(:,4)];
    % C = [time q1 q2 q1p];
    % C = [Time Precision_sensor Resolver Precision_sensor_reference];
    %{
    for io = 1:1:length(C(:,2))
        C(io,2)=-1/(250000*4/2/3.14159265359)*(A(io,2) + (io-1)*3249/10186);
    end
    %}
    Plots_pattern;
end

%%
%{
A = ADA;
B = 'ADA';
C = [0.0034364261*A(:,1) -1/(250000*4/2/3.14159265359)*A(:,2) 1/(4096/2/3.14159265359*10)*A(:,3) 1/(4096/2/3.14159265359*10)*A(:,4)];
Plots_pattern;
%}