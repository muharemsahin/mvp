--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: kk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kk (
    fnr character varying NOT NULL,
    benennung_deutsch character varying NOT NULL,
    benennung_english character varying NOT NULL
);


ALTER TABLE public.kk OWNER TO postgres;

--
-- Name: snr; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.snr (
    fnr character varying NOT NULL,
    benennung_deutsch character varying NOT NULL,
    benennung_english character varying NOT NULL,
    code character varying,
    sachnummersnr character varying NOT NULL,
    typid character varying NOT NULL,
    my character varying NOT NULL,
    mbr numeric NOT NULL,
    fbr numeric NOT NULL,
    fbm numeric NOT NULL,
    model_name character varying NOT NULL,
    cop_typ_bezeichnung character varying NOT NULL
);


ALTER TABLE public.snr OWNER TO postgres;

--
-- Name: typen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.typen (
    typid character varying NOT NULL,
    mbr numeric NOT NULL,
    fbr numeric NOT NULL,
    fbm numeric NOT NULL,
    model_name character varying NOT NULL,
    cop_typ_bezeichnung character varying NOT NULL,
    my numeric NOT NULL
);


ALTER TABLE public.typen OWNER TO postgres;

--
-- Data for Name: kk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kk (fnr, benennung_deutsch, benennung_english) FROM stdin;
01.00	Motor	Engine
01.09	Oel-Einfuellverschluss	Oil filler cap
01.30	Kolbenspritze	Piston syringe
02.00	Zuendung	Ignition
02.04	Zuendspule	Ignition coil
02.07	Zuendkerze	Spark plug
02.09	Gluehkerze	Glow plug
02.15	Positionssensor Kurbelwelle	Crankshaft position sensor
02.19	Positionssensor Nockenwelle	Camshaft position sensor
02.39	Zuendmodul	Ignition module
03.00	Ansaugsystem	Intake system
03.01	Daempferfilter	Air cleaner
03.02	Ladeluftverteiler	Intake manifold
03.10	Oelabscheider	Oil separator
03.23	KGH-Entlueftungsventil	Crankcase ventilation valve
03.29	Mischgehaeuse	Mixing chamber
03.41	E-Gassteller	Electr. throttle valve
03.46	U-Dose Steuerklappe (Saugrohr)	Actuator VIS
03.52	Stellmotor (EKAS)	Intake-port shutoff
03.60	Ansaugluftdrosselung elektr.	Intake air throttle electric
03.62	Druckregelventil (KGH-Entlueftung)	Pressure regulator (crankcase ventilation)
03.64	Oeleinfuellrohr	Oil filler pipe
03.65	Saugstrahlpumpe	Suction jet pump
03.66	Reinluftleitung	Clean air line
03.67	Drucksensor KGH-Entlueftung	Pressure sensor crankcase ventilation
03.68	Oelabscheider, elektrisch	Oil separator, electrical
03.69	Heizelement KGH-Entlueftung	Crankcase ventilation heater
04.00	Direkt-Einspritzung	Direct fuel injection
04.31	Steuergeraet GZE (Gluehzeitendstufe)	Glow-time control modul 
04.32	Hochdruckpumpe	High-pressure pump
04.33	Injektor	Fuel injector
05.00	Aufladung	Turbo charging
05.01	Abgasturbolader	Turbocharger
05.03	Waste-Gate Steller	Waste gate valve
05.16	Ladeluftkuehler	Charge air cooler
05.17	Lader mech.	Supercharger
05.18	Umluftsteller	SCB valve
05.25	Turbolader, VTG	Turbocharger, VNT
05.27	Schubumluftventil	Decel air valve
05.29	Ladeluftleitung 	Charge air line
05.33	Zusatzverdichter, elektrisch (EZV)	Supplemental charger, electrical
05.34	Rueckschlagventil, Ladeluft	Check valve, charge air
05.35	Ladedruckregelklappe	Charging pressure flap
05.37	Ladeluftkuehler mit Klappe	Charge air cooler with cooler flap
05.38	Ladeluftverteiler mit Ladeluftkuehler	Intake manifold with charge air cooler
05.39	Elektrisch unterstuetzter Turbolader	Electrically assisted turbo charger
06.00	Vergaser	Carburetor
07.00	Einspritzsystem	Fuel injection system
07.01	Druck- und Temperatursensor (Kraftstoff, Niederdruck)	Pressure and temperature sensor (fuel, low pressure)
07.03	Kraftstoffpumpe	Fuel Pump
07.04	Kraftstoffverteiler (Niederdruck)	Fuel rail (low pressure)
07.67	Druckregler CNG	Pressure regulator, CNG
07.69	Kraftstoff-Druckregelventil	Fuel pressure regulator
07.70	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)
07.71	Einspritzventil	Injection valve
07.73	Hochdruckinjektor	High pressure injector
07.79	Niederdruckschalter, CNG	Low pressure switch, CNG
07.80	Hochdruckabschaltventil, CNG	High pressure shut-off valve, CNG
07.81	Kraftstoffdruckdaempfer	Fuel pressure damper
07.85	Sicherheitsventil, CNG (Elektromagnetisch)	Shut-off valve, CNG (electromagnetic)
07.87	Einblaseventil, CNG	Gas injector
07.88	Gasverteiler, CNG	Gas distributor, CNG
07.89	Gasfilter, CNG	Gas filter, CNG
07.90	Niederdruckabschaltventil (elektromagnetisch), CNG	Low pressure shut-off valve (electromagnetic), CNG
07.91	Kraftstoffdrucksensor (Niederdruck)	Low pressure fuel sensor
07.92	Pumpensteuergeraet	Pump ECU
07.94	FOerdereinheit	Fuel supply unit
07.97	Kraftstoff-Ueberdruckventil	Fuel pressure relief valve
07.98	DAV (Druckabbauventil)	Pressure drop valve
07.99	Mengensteuerventil (MSV)	Mass flow valve
08.00	Abgasrueckfuehrung	Exhaust gas recirculation
08.01	Abgasrueckfuehrventil (Hochdruck-AGR)	Exhaust gas recirculation valve (high pressure)
08.04	U-Dose Ansaugluftdrosselung	Vacuum motor, intake air control
08.13	Abgaswaermeaustauscher (Hochdruck-AGR)	Exhaust gas recirculation cooler (high pressure)
08.15	Umschaltklappe AGR	EGR cooler bypass flap
08.16	Unterdruckdose AGR	Vacuum actuator EGR
08.17	Abgasrueckfuehrleitung	Exhaust Gas Recirculation Line
08.18	Bypassklappe (Hochdruck-AGR)	Bypass flap (high pressure EGR)
08.19	Abgasgegendruckklappe	Exhaust air flap
08.20	Abgasrueckfuehrventil (Niederdruck-AGR)	Exhaust gas recirculation valve (low pressure)
08.21	Abgaswaermeaustauscher (Niederdruck-AGR)	Exhaust gas recirculation cooler (low pressure)
09.00	Lufteinblasung	AIR
09.08	Luftpumpe	Air injection pump
09.13	Luftpumpe m. Ansaugstutzen	Air pump
09.16	Luftabschaltventil	AIR valve
09.18	Ansaugfilter	Air cleaner, AIR
09.22	Kombiventil	AIR injection valve
09.23	Dichtung fuer Sekundaerluft	Orifice Gasket
09.24	Nebenluftpumpe	Auxiliary air injection pump
09.25	Kombiventil, Nebenluft	Auxiliary air injection valve
10.00	Auspuffanlage	Exhaust system
10.01	Auspuffkruemmer	Exhaust manifold
10.05	Oxidations-Katalysator	Oxidation catalyst
10.09	Kataysator (motornah)	TWC, underhood
10.12	Drucksensor (Abgasgegendruck) 1	Sensor (exhaust back pressure) 1
10.13	Partikelfilter	Particulate filter
10.29	Drucksensor (PF-Differenzdruck)	Sensor (exhaust differential-pressure)
10.34	Auspuffleitung (mit Kat)	Exhaust pipe front (incl catalyst)
10.35	Auspuffkruemmer mit Kat	Exhaust manifold with catalyst
10.38	NOX-Speicherkatalysator	NOX storage catalyst
10.39	Drei-Wege-Katalysator	Three-way-catalyst
10.40	Auspuffkruemmer mit \r\nStirnwand- und Unterbodenkat	Exhaust manifold catalyst \r\nunderhood and underfloor
10.41	SCR Katalysator	SCR catalyst
10.42	Geruchsfilter 	Odor-filter
10.45	Nox-Speicherkat (Unterboden)	Nox-Adsorption catalyst (underfloor)
10.47	Auspuffleitung / Abgasanlage	Exhaust pipe rear
10.48	Drucksensor (Differenzdruck, PF-OBD)	Sensor (exhaust differential-pressure, OBD)
10.49	Partikelfilter inkl. SCR Katalysator	Particulate filter incl. SCR catalyst
10.50	Sperrkatalysator	Ammonia trap
10.51	Oxidations-Katalysator, elektrisch beheizt	Electrically heated oxidation catalyst 
10.52	Differenzdrucksensor (Niederdruck-AGR)	Differential pressure sensor (low pressure EGR)
10.53	Drucksensor (Abgasgegendruck) 2	Sensor (exhaust back pressure) 2
10.54	Partikelfilter mit H2S-Sperrkat	cDPF with H2S anti slip catalyst
10.56	Kombi-Druck-Sensor (Ansaugluft/Differenzdruck (Niederdruck-AGR))	Combined pressure sensor (induction air/differential pressure (low pressure EGR))
10.57	SCR/ASC Katalysator                              	SCR/ASC catalyst
10.58	Oxidations-Katalysator mit NOX-Speicherfunktion	Oxidation catalyst with NOX storage function
10.59	Katalysator, elektrisch beheizt	Catalyst, electrically heated
11.00	Lambda-Regelung	LAMBDA CONTROL
11.01	Lambdasonde 1	Primary O2 sensor
11.07	NOX-Sensor 1	NOX sensor 1
11.14	PM-Sensor	Particulate matter sensor
11.15	NOX-Sensor 2	NOX sensor 2
11.16	Lambdasonde 2	Secondary O2 sensor
11.17	NOX-Sensor 3	NOX sensor 3
11.18	Lambdasonde 3	Tertiary O2 sensor
12.00	Kraftstoffregenerierung	Fuel evaporation
12.01	Kraftstoffbehaelter	Fuel tank
12.03	Ausgleichsbehaelter	Expansion tank
12.05	Tankverschluss	Filler cap
12.07	Tankentlueftungsventil	Tank vent valve
12.09	Aktivkohlefilter	EVAP canister
12.13	Kraftstoffkuehler	Fuel cooler
12.18	Fuellstandssensor Kraftstofftank	Fill level sensor (fuel tank)
12.19	Einfuellstutzen	Filler neck
12.21	Regenerierventil	EVAP canister purge valve
12.22	Drucksensor Additivsystem	Pressure sensor additive system
12.23	Temperatursensor Additivbehaelter 	Additive tank temperature sensor
12.24	Additivbehaelter 	Additive tank
12.25	Pumpe Additiv	Pump additive
12.26	Einspritzventil Additiv 1	Injection valve, additive 1
12.27	Fuellstandsgeber Additivbehaelter	Fluid-level gauge, additive tank
12.28	Absperrventil	EVAP shut-off valve
12.29	Tankdrucksensor (OBD)	Fuel tank pressure sensor (OBD)
12.31	Belueftungsventil	Check valve, EVAP
12.33	Kraftstoffdruckregelventil	Fuel-pressure regulator
12.34	Ueberdruckventil	Pressure relief valve
12.35	Schwimmerventil 	Floating valve
12.36	Schwimmerventil (Roll-over)	Roll-over valve
12.38	Gasbehaelter, CNG	Gas reservoir, CNG
12.39	Absperrventil, CNG	Shut-off valve, CNG
12.40	Schwimmerventil (ORVR/MS)	Float valve MS
12.41	Belueftungsventil	Vent valve
12.42	Rezirkulierungsleitung	Recirculation line
12.45	Umschaltventil 	Switch over valve
12.48	Belueftungs-/Roll-over Ventil	Vent Valve / Roll-over valve
12.49	Fuellventil, CNG	Filling valve, CNG
12.50	Betankungs-Abschaltventil (Roll-over-ventil)	Refueling shut-off valve (Roll-over valve) 
12.51	Druckhalteventil	Overfill protection valve
12.52	Regenerierleitung	EVAP purge line
12.53	Einfuellverschluss Additivtank	Filler cap additiv tank
12.54	Absperrventil, Kraftstoffbehaelter	Fuel tank isolation valve (FTIV)
12.55	Diagnosemodule Tankleck (DM-TL)	Diagnostic module tank leakage
12.58	Drucksensor Regenerierung	Pressure sensor, purge line
12.59	Additivleitung	Additiv line
12.60	Druckentlastungsventil (thermisch), CNG	Pressure relief device, CNG
12.61	Ethanolsensor	Ethanol sensor
12.63	Qualitaetssensor SCR	Quality sensor SCR
12.64	Einspritzventil Additiv 2	Injection valve, additive 2
13.00	Warneinrichtungen	Warning system
13.01	Temperaturfuehler, Kat	Catalytic converter temperature sensor
13.05	Kombiinstrument	Instrument cluster
13.08	Check-Engine-Anzeige	Malfunction indicator lamp
13.09	On-Board-Diagnose-Stecker	OBD plug
13.15	Tankdeckelanzeige (Reservelampe)	Filler cap check light
13.17	Temperaturfuehler (Abgas)	Temperature sensor (exhaust)
13.18	Software Kombiinstrument	Software instrument cluster
14.00	Unterdrucksystem	Vacuum system
14.01	Unterdruckpumpe, elektrisch	Vacuum pump, electrical
14.15	Rueckschlagventil	Vacuum check valve (air)
14.41	Taktventil, EPW	Electro-pneumatic transducer, frequency valve
15.00	Klimaanlage / Kuehlung	Air conditioning / engine cooling
15.04	Thermostat (Kuehlwasser)	Engine thermostat
15.16	Geblaese (Kuehlerluefter)	Cooling fan
15.17	Klimakompressor	air-conditioning compressor
15.19	Wasserkuehler (Ozon reduzierend)	DOR radiator
15.22	Kuehlerjalousie	radiator blind
15.23	Kuehlmittelpumpe elektrisch	Coolant pump electrical
15.24	Geblaese	Blower
15.25	Kuehlmittelkuehler	Coolant radiator
15.26	Bypass-Ventil (Kuehlkreislauf)	Bypass valve, cooling system
15.27	Thermostat (Kuehlwasser), kennfeldgesteuert 	Engine thermostat, MAP controlled
15.28	Regelventil Kuehlmittel	Control valve, coolant
15.29	Expansionsventil (Klimaanlage Verdampfer)	Expansion valve (AC chiller)
15.30	Verdichter (Klimaanlage Kaeltemittel)	Compressor (AC refrigerant)
15.31	Verdampfer	Chiller
15.32	Absperrventil Kuehlmittel	Shut-off valve, coolant
16.00	Getriebe	transmission
16.33	Steuereinheit elektrohydraulisch	Electrohydraulic Control Unit
16.34	Schaltplatte	Gearshift plate
16.35	ZusatzOelpumpe (Getriebe)	Auxiliary transmission oil pump
17.00	Elektr. Schalter/ Bauteile	Electrical switches
17.26	Stellmagnet Nockenwelle	Actuator, CMP
17.44	Relaiseinheit (Kraftstoffpumpe und Luftpumpe)	Relay module, AIR/ FP
17.50	Generator	Generator
17.55	Ventilaktuator (Zylinderabschaltung / ZAS)	Valve actuator (cylinder deactivation)
17.56	Stellmagnet Camtronic	Actuator camtronic
17.57	Oeldruck-Kontrollventil, elektrisch	Oil pressure control valve, electrical
17.58	Aktuator (Kuehlerjalousie oben)	Upper radiator grill shutter
17.59	Aktuator (Kuehlerjalousie unten)	Lower radiator grill shutter
17.60	Oeldruckschaltventil	Oil switching valve
17.61	Schaltventil Kolbenbodenkuehlung	Switching valve piston cooling
17.62	Aktuator Abgasklappe	Actuator exhaust flap
17.63	Luftregelsystem	Air management control system
18.00	Temperaturschalter	Temperature switch
19.00	Thermoventile	Thermo valves
20.00	Sensoren	Sensors
20.11	Temperatursensor	Temperature sensor
20.17	Klopfsensor	Knock sensor
20.22	Drehzahlsensor 	Vehicle speed sensor
20.24	Oelstandsensor	Oil level sensor
20.26	Oeldruckschalter	Oil pressure switch
20.28	Drucksensor (Umgebungsdruck)	Pressure sensor (ATM)
20.29	Fahrpedalmodul	Accelerator-pedal module
20.31	Gasdrucksensor, CNG (Niederdruck)	Gas pressure sensor (low pressure)
20.33	Drucksensor (Ansaugluft) 1	Pressure sensor (induction air) 1
20.34	Oelstandschalter	Oil level switch
20.35	Gasdrucksensor, CNG (Hochdruck)	Gas pressure sensor (high pressure)
20.36	Sensor (DOR-, OBD)	DOR-, OBD-Sensor
20.37	DS Hochdrucksensor	Rail pressure sensor
20.38	Drucksensor (im Abgasturbolader)	Sensor (inside turbo charger)
20.39	Druck- und Temperatursensor (Kraftstoff, Hochdruck)	Pressure and temperature sensor (fuel, high pressure)
20.40	Druck- und Temperatursensor (Ansaugluft) 1	Pressure and temperature sensor (intake air) 1
20.41	Drucksensor (Brennraum)	Pressure sensor (combustion chamber)
20.42	Drucksensor (Ladeluft) 1	Pressure sensor (charge air) 1
20.43	Drucksensor (Ladeluft) 2	Pressure sensor (charge air) 2
20.44	Druck- und Temperatursensor (Ladeluft) 1	Pressure and temperature sensor (charge air) 1
20.45	Druck- und Temperatursensor (Ladeluft) 2	Pressure and temperature sensor (charge air) 2
20.46	Druck- und Temperatursensor (MotorOel)	Pressure and temperature sensor (motor oil)
20.47	Druck- und Temperatursensor (Ladeluft) 3	Pressure and temperature sensor (charge air) 3
20.48	Drucksensor (Sekundaerluft)	Pressure sensor (secondary air)
20.49	Drucksensor (Nebenluft)	Pressure sensor (auxiliary air)
20.50	Drucksensor (MotorOel)	Pressure sensor (motor oil)
20.51	Drucksensor (Oelabscheider)	Pressure sensor (oil separator)
24.00	Temperaturgeber	Temperature sensors
24.01	Temperatursensor (Kuehlwasser)	Temperature sensor (coolant)
24.02	Temperatursensor (Ansaugluft) 1	Intake air temperature sensor 1
24.04	Temperaturgeber, Aussenluft	Temperature sensor, ambient air
24.05	Doppeltemperaturgeber, Kuehlwasser	Dual temperature sensor, coolant
24.16	Temperatursensor Gas, CNG	ECT sensor gas, CNG
24.17	Temperatursensor (Abgas) 1	Temperature sensor (exhaust gas) 1
24.20	Temperatursensor (MotorOel)	Temperature sensor (motor oil)
24.21	Kraftstofftemperatursensor	Fuel temperature sensor
24.22	Temperatursensor, DOR	Temperature sensor, DOR
24.23	Temperatursensor (Niederdruck-AGR)	Temperature sensor (low pressure EGR)
24.24	Temperatursensor (Abgas) 2	Temperature sensor (exhaust gas) 2
24.25	Temperatursensor (Abgas) 3	Temperature sensor (exhaust gas) 3
24.26	Temperatursensor (Abgas) 4	Temperature sensor (exhaust gas) 4
24.27	Temperatursensor (Ladeluft) 1	Temperature sensor (charge air) 1
24.28	Temperatursensor (Ladeluft) 2	Temperature sensor (charge air) 2
24.29	Temperatursensor (Abgas) 5	Temperature sensor (exhaust gas) 5
24.30	Temperatursensor (Umgebungsluft)	Temperature sensor (ambient air)
24.31	Temperatursensor (Hochdruck-AGR)	Temperature sensor (high pressure EGR)
24.32	Temperatursensor (Kuehlwasser, NT-Kreislauf)	Temperature sensor (coolant, low temperature circuit)
24.33	Temperatursensor (Ansaugluft) 2	Intake air temperature sensor 2
24.34	Temperatursensor (Abgas) 6	Temperature sensor (exhaust gas) 6
24.35	Temperatursensor (Klimaanlage Verdampfer)	Temperature sensor (AC chiller)
24.36	Temperatursensor (Elektromotor)	Temperature sensor (electric motor)
33.00	Elektroumschaltventile	Switching valve
33.06	EUV Lufteinblasung	Switching valve, AIR
33.08	EUV Schubumluft	Switching valve, (deceleration air)
33.21	EUV Steuerklappe (Saugrohr)	Switching valve, VIS
33.24	EUV Waste-Gate	Switching valve, waste-gate
33.36	EUV Schaltwalze (Saugrohr)	Shifting drum
33.40	EUV Tumbleklappe	Switching valve, tumble flap
33.42	EUV Wasserpumpe	Switching valve, water pump
36.00	Luftmengen-/-massenmessung	Air flow systems
36.01	Luftmassenmesser	Mass air flow sensor
36.06	Luftmassenmesser mit Temperatursensor	MAF sensor with IAT sensor
36.07	Luftmassenmesser mit Temperatur- und Feuchtesensor	MAF sensor with IAT and air humidity sensor
36.08	Luftmassenmesser mit Temperatur- und Drucksensor	MAF sensor with IAT and pressure sensor
36.09	Luftmassenmesser mit Temperatur-, Druck- und Feuchtesensor	MAF sensor with IAT, pressure and air humidity sensor
38.00	Steuergeraete	Control module
38.31	Steuergeraet ESP Hardware	Control module ESP hardware
38.36	Steuergeraet ETS	Control module, electronic traction syst.
38.46	Steuergeraet Motorregelung Hardware	Control module engine hardware
38.47	Steuergeraet Motorregelung Software	Control module engine software
38.48	Steuergeraet Motorregelung Parameterdaten	Control module engine parameters
38.49	Interface, CNG	Interface, CNG
38.50	Programm, Automatikgetriebe	Program automatic transmission
38.51	Steuergeraet CVT	Transmission control module, CVT
38.53	Steuergeraet  Automatikgetriebe Hardware	Control module automatic transmission hardware
38.56	Steuergeraet  Kraftstoffsystem Software	Control module fuel system software
38.57	Steuergeraet  Kraftstoffsystem Parameterdaten	Control module fuel system parameters
38.58	Steuergeraet Abgasnachbehandlung Software	Control module exhaust aftertreatment software
38.59	Steuergeraet Abgasnachbehandlung Parameterdaten	Control module exhaust aftertreatment parameters
38.60	Steuergeraet ESP Software	Control module ESP software
38.61	Steuergeraet CPC Hardware	Central powertrain controller hardware
38.62	Steuergeraet CPC Software	Central powertrain controller software
38.63	Steuergeraet CPC Parameterdaten	Central powertrain controller parameters
38.64	Steuergeraet  Kraftstoffsystem Hardware	Control module fuel system hardware
38.65	Steuergeraet Abgasnachbehandlung Hardware	Control module exhaust aftertreatment hardware
38.68	Parameterdaten Automatikgetriebe	Parameters automatic transmission
38.69	Steuergeraet EHOC	Control module EHOC
38.70	Steuergeraet ESP Parameterdaten	Control module ESP parameters
38.74	Steuergeraet eKAT-Heizung Hardware	Control module catalyst electrical heater hardware
38.75	Steuergeraet eKAT-Heizung Software	Control module catalyst electrical heater software
38.76	Steuergeraet eKAT-Heizung Parameterdaten	Control module catalyst electrical heater parameters
38.78	Steuergeraet SAM Hardware	Control unit SAM (BC-F) hardware
38.79	Steuergeraet SAM Software	Control unit SAM (BC-F) software
38.80	Steuergeraet elektronisches Zuendschloss Hardware	Control unit electronic ignition switch hardware
38.81	Steuergeraet elektronisches Zuendschloss Software	Control unit electronic ignition switch software
38.82	Steuergeraet Airbag Hardware	Control unit airbag (ORC) hardware
38.83	Steuergeraet Airbag Software	Control unit airbag (ORC) software
38.84	Steuergeraet Airbag Parameterdaten	Control unit airbag (ORC) parameters
38.86	Steuergeraet Mantelrohrschaltermodul Hardware	Control unit steering column (SCCM) hardware
38.87	Steuergeraet Mantelrohrschaltermodul Software	Control unit steering column (SCCM) software
38.88	Steuergeraet Fahrprogramm Hardware	Control unit driving mode (Drive Unit) hardware
38.89	Steuergeraet Fahrprogramm Software	Control unit driving mode (Drive Unit) software
38.90	Batteriesensor	Battery sensor (IBS)
38.91	Batteriesensor Software	Battery sensor (IBS) software
38.92	Batteriesensor Parameterdaten	Battery sensor (IBS) parameters
38.93	Steuergeraet Fahrprogramm Parameterdaten	Control unit driving mode (Drive Unit) parameters
39.00	Hybrid	Hybrid
39.01	Steuergeraet Elektromotor Hardware	Control module electric motor hardware
39.02	Steuergeraet Rekuperatives Bremssystem	Recuperative Braking Controller (RBC)
39.04	Steuergeraet Batterie Management (BMS) Hardware	Control module battery management (BMS) hardware
39.05	Elektromotor	Electric motor (EM)
39.07	Hochvolt Batterie	High Voltage Battery (HVB)
39.08	Bremspedalmodul	Brake-pedal modul
39.09	Motorhaubensensor	Engine hood sensor
39.10	Steuergeraet Elektromotor Software	Control module electric motor software
39.11	Steuergeraet Elektromotor Parameterdaten	Control module electric motor parameters
39.12	Steuergeraet Batterie Management (BMS) Software	Control module battery management (BMS) software
39.15	Steuergeraet DC/DC-Wandler Hardware	Control module DC/DC converter hardware
39.16	Steuergeraet DC/DC-Wandler Software	Control module DC/DC converter software
39.18	Steuergeraet Batterie Ladegeraet (OBL) Hardware	Control module battery charger (OBL) hardware
39.19	Steuergeraet Batterie Ladegeraet (OBL) Software 	Control module battery charger (OBL) software
39.20	Starterbatterie 48V	Starter battery 48V
39.21	Steuergeraet Multimediaanlage Hardware	Control module multimedia system hardware
39.22	Steuergeraet Energiemanagement Software	Control module energy management software
39.25	Steuergeraet Klimaanlage Hardware	Control module AC-System hardware
39.26	Steuergeraet Klimaanlage Software	Control module AC-System software
39.27	Steuergeraet Batteriezellenueberwachung Hardware	Control module battery cell monitoring hardware
39.28	Steuergeraet Batteriezellenueberwachung Software	Control module battery cell monitoring software
39.29	Drucksensor Bremspedal	Pressure sensor brake pedal
39.30	Steuergeraet Batterie Ladegeraet (OBL) Parameterdaten 	Control module battery charger (OBL)software
39.31	Steuergeraet Batterie Management (BMS) Parameterdaten	Control module battery management (BMS) parameters
39.32	Steuergeraet DC/DC-Wandler Parameterdaten	Control module DC/DC converter parameters
39.33	Ladedose	Charging socket
39.34	Kontakttraeger (HV Batterie)	Control Unit Board (HV battery)
39.35	Positionssensor (Elektromotor)	Resolver (electric motor)
39.36	Steuergeraet Bremsgeraet Hardware	Control module brake unit hardware
39.37	Steuergeraet Bremsgeraet Software 	Control module brake unit software
39.38	Steuergeraet Getriebe E-Antrieb (GSM) Hardware	Control module electric drive transmission (GSM) hardware
39.39	Steuergeraet Getriebe E-Antrieb (GSM) Software	Control module electric drive transmission (GSM) software
39.40	Steuergeraet Turbolader (ETC)  Hardware	Control module turbo charger (ETC) hardware
39.41	Steuergeraet Turbolader (ETC) Software	Control module turbo charger (ETC) software
39.42	Steuergeraet Startergenerator (RSG-HV) Hardware	Control module belt-driven starter generator (RSG-HV) hardware
39.43	Steuergeraet Startergenerator (RSG-HV) Software	Control module starter belt-driven generator (RSG-HV) software
39.44	Steuergeraet Startergenerator (RSG-HV) Parameterdaten	Control module belt-driven starter generator (RSG-HV) parameters
39.45	Steuergeraet Startergenerator (RSG) Hardware	Control module belt-driven starter generator (RSG) hardware
39.46	Steuergeraet Startergenerator (RSG) Software	Control module belt-driven starter generator (RSG) software
39.47	Steuergeraet Startergenerator (RSG) Parameterdaten	Control module belt-driven starter generator (RSG) parameters
39.48	Steuergeraet Batterie Gateway (BCU) Hardware	Control module battery gateway (BCU) hardware
39.49	Steuergeraet Batterie Gateway (BCU) Software	Control module battery gateway (BCU) software
39.50	Steuergeraet Strombegrenzer Hybrid (ITM) Hardware	Control module Current Limiter Hybrid (ITM) hardware
40.00	Nebenaggregate	Secondary components
40.01	Wasserpumpe	Water pump
40.02	Wasserpumpe, Niedertemperaturkreis 1	Duty cycle water pump 1
40.03	Bypass-Pumpe Niedertemperatur	Bypass water pump, low temperature
40.04	Wasserpumpe, Niedertemperaturkreis 2	Duty cycle water pump 2
41.01	Startergenerator (ISG)	Starter generator (ISG)
41.02	Startergenerator (RSG)	Belt-driven starter generator (RSG)
41.03	Starter Start-Stopp	Starter Start-Stop
41.04	Startergenerator (RSG-HV)	Belt-driven starter generator (RSG-HV)
\.


--
-- Data for Name: snr; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.snr (fnr, benennung_deutsch, benennung_english, code, sachnummersnr, typid, my, mbr, fbr, fbm, model_name, cop_typ_bezeichnung) FROM stdin;
0109	Oel-Einfuellverschluss	Oil filler cap	\N	P 000 010 03 01	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0204	Zuendspule	Ignition coil	\N	P 276 906 79 00 	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0204	Zuendspule	Ignition coil	\N	P 276 906 12 01	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0207	Zuendkerze	Spark plug	\N	P 004 159 69 03	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0207	Zuendkerze	Spark plug	 	P 004 159 72 03	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0215	Positionssensor Kurbelwelle	Crankshaft position sensor	 	P 276 905 15 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0219	Positionssensor Nockenwelle	Camshaft position sensor	 	P 276 905 09 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0301	Daempferfilter	Air cleaner	 	P 276 090 37 01	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0301	Daempferfilter	Air cleaner	2U3	P 276 090 45 01	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0301	Daempferfilter	Air cleaner	 	P 276 090 38 01	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0301	Daempferfilter	Air cleaner	2U3	P 276 090 46 01	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0302	Ladeluftverteiler	Intake manifold	 	P 276 090 02 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0310	oelabscheider	Oil separator	\N	P 273 010 01 62	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0310	oelabscheider	Oil separator	\N	P 276 010 71 11	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0341	E-Gassteller	Electr. throttle valve	 	P 276 141 01 25	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0366	Reinluftleitung	Clean air line	\N	P 276 094 06 97	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0366	Reinluftleitung	Clean air line	\N	P 276 094 05 97	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0366	Reinluftleitung	Clean air line	\N	P 276 094 04 97	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0432	Hochdruckpumpe	High-pressure pump	 	P 278 070 11 01	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0433	Injektor	Fuel injector	 	P 256 070 56 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0501	Abgasturbolader	Turbocharger	 	P 276 090 20 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0501	Abgasturbolader	Turbocharger	 	P 276 090 19 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0503	Waste-Gate Steller	Waste gate valve	\N	incl. in 05.01	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0527	Schubumluftventil	Decel air valve	\N	P 000 153 11 59	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0529	Ladeluftleitung 	Charge air line	\N	P 276 090 07 37	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0529	Ladeluftleitung 	Charge air line	\N	P 276 090 08 37	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0701	Druck- und Temperatursensor (Kraftstoff, Niederdruck)	Pressure and temperature sensor (fuel, low pressure)	\N	incl. in 07.03	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0703	Kraftstoffpumpe	Fuel Pump	916	P 205 470 49 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	 	P 276 070 23 95	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	 	P 276 070 24 95	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	 	P 276 070 14 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	 	P 276 070 15 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1001	Auspuffkruemmer	Exhaust manifold	 	incl. in 05.01	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1039	Drei-Wege-Katalysator	Three-way-catalyst	 	P 205 490 02 56	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1039	Drei-Wege-Katalysator	Three-way-catalyst	 	P 205 490 03 56	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1101	Lambdasonde 	Primary O2 sensor	 	P 009 542 60 18	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1101	Lambdasonde 	Primary O2 sensor	 	P 009 542 62 18	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1116	Lambdasonde 	Secondary O2 sensor	 	P 000 542 16 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1116	Lambdasonde 	Secondary O2 sensor	 	P 000 542 20 04	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1201	Kraftstoffbehaelter	Fuel tank	\N	P 205 471 13 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1205	Tankverschluss	Filler cap	 	P 222 470 02 05	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1209	Aktivkohlefilter	EVAP canister	 	P 205 470 40 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1218	Fuellstandssensor Kraftstofftank	Fill level sensor (fuel tank)	\N	P 205 905 32 10	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1221	Regenerierventil	EVAP canister purge valve	 	P 001 476 44 32	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1252	Regenerierleitung	EVAP purge line	\N	P 205 471 10 15	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1252	Regenerierleitung	EVAP purge line	\N	P 205 471 15 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1252	Regenerierleitung	EVAP purge line	\N	P 205 470 61 02	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1255	Diagnosemodule Tankleck (DM-TL)	Diagnostic module tank leakage	 	P 000 545 01 41	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1255	Diagnosemodule Tankleck (DM-TL)	Diagnostic module tank leakage	\N	P 000 545 20 36	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1258	Drucksensor Regenerierung	Pressure sensor, purge line	 	P 000 905 50 02	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1527	Thermostat (Kuehlwasser), kennfeldgesteuert 	Engine thermostat, MAP controlled	 	P 276 200 03 15	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1633	Steuereinheit elektrohydraulisch	Electrohydraulic Control Unit	\N	P 725 270 19 05	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1634	Schaltplatte	Gearshift plate	\N	P 725 270 18 05	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1726	Stellmagnet Nockenwelle	Actuator, CMP	ww	P 276 156 07 90	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1726	Stellmagnet Nockenwelle	Actuator, CMP	ww	P 276 156 04 90	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
1757	oeldruck-Kontrollventil, elektrisch	Oil pressure control valve, electrical	\N	P 278 180 04 15	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
2017	Klopfsensor	Knock sensor	\N	P 000 905 09 02	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
2022	Drehzahlsensor 	Vehicle speed sensor	 	P 205 905 85 03	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
2022	Drehzahlsensor 	Vehicle speed sensor	 	P 205 905 76 09	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
2028	Drucksensor (Umgebungsdruck)	Pressure sensor (ATM)	 	incl. in 38.46	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
2033	Drucksensor (Ansaugluft) 	Pressure sensor (induction air) 1	 	P 007 153 05 28	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
2039	Druck- und Temperatursensor (Kraftstoff, Hochdruck)	Pressure and temperature sensor (fuel, high pressure)	 	P 278 905 01 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
2042	Drucksensor (Ladeluft) 	Pressure sensor (charge air) 1	 	P 009 153 33 28	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
2043	Drucksensor (Ladeluft) 	Pressure sensor (charge air) 2	 	P 009 153 33 28	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
2401	Temperatursensor (Kuehlwasser)	Temperature sensor (coolant)	 	P 000 905 61 02	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
2427	Temperatursensor (Ladeluft) 	Temperature sensor (charge air) 1	 	P 276 905 00 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3846	Steuergeraet Motorregelung Hardware	Control module engine hardware	 	P 276 901 63 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3847	Steuergeraet Motorregelung Software	Control module engine software	\N	P 276 902 07 02	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3848	Steuergeraet Motorregelung Parameterdaten	Control module engine parameters	\N	P 276 903 07 05	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3850	Programm, Automatikgetriebe	Program automatic transmission	\N	P 000 902 28 65	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3850	Programm, Automatikgetriebe	Program automatic transmission	\N	P 000 902 42 73	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3853	Steuergeraet  Automatikgetriebe Hardware	Control module automatic transmission hardware	 	P 000 901 50 00	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3856	Steuergeraet  Kraftstoffsystem Software	Control module fuel system software	\N	P 000 902 32 48	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3857	Steuergeraet  Kraftstoffsystem Parameterdaten	Control module fuel system parameters	\N	P 000 903 89 26	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3861	Steuergeraet CPC Hardware	Central powertrain controller hardware	\N	P 000 901 33 13	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3861	Steuergeraet CPC Hardware	Central powertrain controller hardware	U78	P 000 901 30 13	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3862	Steuergeraet CPC Software	Central powertrain controller software	\N	P 000 902 34 61	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3863	Steuergeraet CPC Parameterdaten	Central powertrain controller parameters	\N	P 000 903 40 55	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3864	Steuergeraet  Kraftstoffsystem Hardware	Control module fuel system hardware	 	P 000 901 38 06	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3925	Steuergeraet Klimaanlage Hardware	Control module AC-System hardware	\N	P 000 901 16 16	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3925	Steuergeraet Klimaanlage Hardware	Control module AC-System hardware	\N	P 000 901 76 06	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3925	Steuergeraet Klimaanlage Hardware	Control module AC-System hardware	\N	P 000 901 04 25	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3926	Steuergeraet Klimaanlage Software	Control module AC-System software	\N	P 000 902 66 71	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3926	Steuergeraet Klimaanlage Software	Control module AC-System software	\N	P 000 902 28 48	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3926	Steuergeraet Klimaanlage Software	Control module AC-System software	\N	P 000 902 82 72	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
3926	Steuergeraet Klimaanlage Software	Control module AC-System software	\N	P 000 902 67 71	208-22	22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22
0109	Oel-Einfuellverschluss	Oil filler cap	 	P 000 010 16 85	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0209	Gluehkerze	Glow plug	\N	P 001 159 66 01	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0215	Positionssensor Kurbelwelle	Crankshaft position sensor	 	P 276 905 15 00	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0219	Positionssensor Nockenwelle	Camshaft position sensor	 	P 005 153 13 28	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0301	Daempferfilter	Air cleaner	\N	P 907 528 01 00	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0302	Ladeluftverteiler	Intake manifold	 	P 642 090 69 37	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0302	Ladeluftverteiler	Intake manifold	 	P 642 090 06 37	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0302	Ladeluftverteiler	Intake manifold	 	P 642 098 00 00	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0310	Oelabscheider	Oil separator	\N	P 642 010 03 62	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0352	Stellmotor (EKAS)	Intake-port shutoff	 	P 642 150 05 94	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0360	Ansaugluftdrosselung elektr.	Intake air throttle electric	 	P 642 090 02 70	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0364	Oeleinfuellrohr	Oil filler pipe	\N	P 642 010 81 07	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0366	Reinluftleitung	Clean air line	\N	P 906 528 23 24	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0431	Steuergeraet GZE (Gluehzeitendstufe)	Glow-time control modul 	 	P 642 900 13 02	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0432	Hochdruckpumpe	High-pressure pump	 	P 642 070 11 01	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0433	Injektor	Fuel injector	 	P 642 070 12 87	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0433	Injektor	Fuel injector	\N	P 642 070 12 87	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0516	Ladeluftkuehler 	Charge air cooler	 	P 907 501 17 00	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0525	Turbolader, VTG	Turbocharger, VNT	 	P 642 090 12 00	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0529	Ladeluftleitung 	Charge air line	\N	P 642 090 05 00	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0529	Ladeluftleitung 	Charge air line	\N	P 642 090 59 37	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0769	Kraftstoff-Druckregelventil	Fuel pressure regulator	 	P 642 070 02 46	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	 	P 642 070 27 95	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	 	P 642 070 30 95	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0791	Kraftstoffdrucksensor (Niederdruck)	Low pressure fuel sensor	 	P 004 542 16 18	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0801	Abgasrueckfuehrventil (Hochdruck-AGR)	Exhaust gas recirculation valve (high pressure)	 	P 642 140 14 60	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0813	Abgaswaermeaustauscher (Hochdruck-AGR)	Exhaust gas recirculation cooler (high pressure)	 	P 642 140 21 75	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0818	Bypassklappe (Hochdruck-AGR)	Bypass flap (high pressure EGR)	\N	P 642 140 03 00	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1001	Auspuffkruemmer	Exhaust manifold	 	P 642 140 09 09	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1001	Auspuffkruemmer	Exhaust manifold	 	P 642 140 08 09	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1005	Oxidations-Katalysator	Oxidation catalyst	 	P 205 491 16 14	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1012	Drucksensor (Abgasgegendruck) 	Sensor (exhaust back pressure) 1	 	P 000 905 27 06	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1013	Partikelfilter	Particulate filter	 	P 906 491 14 94	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1029	Drucksensor (PF-Differenzdruck)	Sensor (exhaust differential-pressure)	 	P 000 905 65 03	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1041	SCR Katalysator	SCR catalyst	 	P 906 490 26 14	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1101	Lambdasonde 	Primary O2 sensor	 	P 006 542 49 18	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1107	NOX-Sensor 	NOX sensor 1	 	P 000 905 30 09	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1114	PM-Sensor	Particulate matter sensor	\N	P 000 905 06 08	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1114	PM-Sensor	Particulate matter sensor	\N	P 000 905 02 14	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1115	NOX-Sensor 	NOX sensor 2	 	P 000 905 30 09	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1233	Kraftstoffdruckregelventil	Fuel-pressure regulator	 	incl. in 12.24	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1234	Ueberdruckventil	Pressure relief valve	\N	P 910 470 00 00	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1235	Schwimmerventil 	Floating valve	 	incl. in 12.24	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1236	Schwimmerventil (Roll-over)	Roll-over valve	 	P 000 490 02 00	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1263	Qualitaetssensor SCR	Quality sensor SCR	 	incl. in 12.24	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1504	Thermostat (Kuehlwasser)	Engine thermostat	\N	P 642 200 20 15	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1633	Steuereinheit elektrohydraulisch	Electrohydraulic Control Unit	A98+35A	P 231 270 38 01	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1634	Schaltplatte	Gearshift plate	A98	P 212 270 00 57	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
1757	Oeldruck-Kontrollventil, elektrisch	Oil pressure control valve, electrical	\N	P 278 180 04 15	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
2028	Drucksensor (Umgebungsdruck)	Pressure sensor (ATM)	\N	incl. in 38.46	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
2033	Drucksensor (Ansaugluft) 	Pressure sensor (induction air) 1	 	P 008 153 44 28	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
2037	DS Hochdrucksensor	Rail pressure sensor	 	P 006 153 78 28	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
2042	Drucksensor (Ladeluft) 	Pressure sensor (charge air) 1	 	P 009 153 34 28	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
2401	Temperatursensor (Kuehlwasser)	Temperature sensor (coolant)	 	P 000 905 61 02	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
2417	Temperatursensor (Abgas) 	Temperature sensor (exhaust gas) 1	\N	P 000 905 14 05	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
2420	Temperatursensor (Motoroel)	Temperature sensor (motor oil)	\N	P 005 153 23 28	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
2421	Kraftstofftemperatursensor	Fuel temperature sensor	 	P 005 153 23 28	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
2424	Temperatursensor (Abgas) 	Temperature sensor (exhaust gas) 2	\N	P 000 905 40 05	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
2425	Temperatursensor (Abgas) 	Temperature sensor (exhaust gas) 3	\N	P 000 905 88 04	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
2426	Temperatursensor (Abgas) 	Temperature sensor (exhaust gas) 4	 	P 000 905 99 05	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
2427	Temperatursensor (Ladeluft) 	Temperature sensor (charge air) 1	 	P 651 153 00 28	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
2431	Temperatursensor (Hochdruck-AGR)	Temperature sensor (high pressure EGR)	 	P 000 905 43 05	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3606	Luftmassenmesser mit Temperatursensor	MAF sensor with IAT sensor	 	P 000 094 34 48	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3846	Steuergeraet Motorregelung Hardware	Control module engine hardware	 	P 642 901 41 00	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3847	Steuergeraet Motorregelung Software	Control module engine software	\N	P 642 902 63 04	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3847	Steuergeraet Motorregelung Software	Control module engine software	 	P 642 902 16 04	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3848	Steuergeraet Motorregelung Parameterdaten	Control module engine parameters	\N	P 642 903 77 18	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3848	Steuergeraet Motorregelung Parameterdaten	Control module engine parameters	\N	P 642 903 75 18	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3850	Programm, Automatikgetriebe	Program automatic transmission	 	P 000 902 30 52	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3850	Programm, Automatikgetriebe	Program automatic transmission	\N	P 000 902 54 91	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3853	Steuergeraet  Automatikgetriebe Hardware	Control module automatic transmission hardware	 	P 000 901 71 00	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3858	Steuergeraet Abgasnachbehandlung Software	Control module exhaust aftertreatment software	\N	P 000 902 96 67	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3859	Steuergeraet Abgasnachbehandlung Parameterdaten	Control module exhaust aftertreatment parameters	\N	P 000 903 04 63	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3861	Steuergeraet CPC Hardware	Central powertrain controller hardware	\N	P 000 901 33 13	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3862	Steuergeraet CPC Software	Central powertrain controller software	\N	P 000 902 42 52	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3862	Steuergeraet CPC Software	Central powertrain controller software	\N	P 000 902 56 52	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3863	Steuergeraet CPC Parameterdaten	Central powertrain controller parameters	\N	P 000 903 84 39	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3863	Steuergeraet CPC Parameterdaten	Central powertrain controller parameters	\N	P 000 903 20 63	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
3865	Steuergeraet Abgasnachbehandlung Hardware	Control module exhaust aftertreatment hardware	 	P 000 901 17 03	332-22	22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22
0109	Oel-Einfuellverschluss	Oil filler cap	 	T 000 010 16 85	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0209	Gluehkerze	Glow plug	\N	T 001 159 66 01	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0215	Positionssensor Kurbelwelle	Crankshaft position sensor	 	T 276 905 15 00	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0219	Positionssensor Nockenwelle	Camshaft position sensor	 	T 005 153 13 28	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0301	Daempferfilter	Air cleaner	\N	T 907 528 01 00	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0302	Ladeluftverteiler	Intake manifold	 	T 642 090 69 37	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0302	Ladeluftverteiler	Intake manifold	 	T 642 090 06 37	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0302	Ladeluftverteiler	Intake manifold	 	T 642 098 00 00	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0310	Oelabscheider	Oil separator	\N	T 642 010 03 62	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0352	Stellmotor (EKAS)	Intake-port shutoff	 	T 642 150 05 94	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0360	Ansaugluftdrosselung elektr.	Intake air throttle electric	 	T 642 090 02 70	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0364	Oeleinfuellrohr	Oil filler pipe	\N	T 642 010 81 07	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0366	Reinluftleitung	Clean air line	\N	T 906 528 23 24	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0431	Steuergeraet GZE (Gluehzeitendstufe)	Glow-time control modul 	 	T 642 900 13 02	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0432	Hochdruckpumpe	High-pressure pump	 	T 642 070 11 01	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0433	Injektor	Fuel injector	 	T 642 070 12 87	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0433	Injektor	Fuel injector	\N	T 642 070 12 87	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0516	Ladeluftkuehler 	Charge air cooler	 	T 907 501 17 00	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0525	Abgasturbolader	Turbocharger, VNT	 	T 642 090 12 00	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0529	Ladeluftleitung 	Charge air line	\N	T 642 090 05 00	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0529	Ladeluftleitung 	Charge air line	\N	T 642 090 59 37	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0769	Kraftstoff-Druckregelventil	Fuel pressure regulator	 	T 642 070 02 46	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	 	T 642 070 27 95	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	 	T 642 070 30 95	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0791	Kraftstoffdrucksensor (Niederdruck)	Low pressure fuel sensor	 	T 004 542 16 18	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0801	Abgasrueckfuehrventil (Hochdruck-AGR)	Exhaust gas recirculation valve (high pressure)	 	T 642 140 14 60	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0813	Abgaswaermeaustauscher (Hochdruck-AGR)	Exhaust gas recirculation cooler (high pressure)	 	T 642 140 21 75	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0818	Bypassklappe (Hochdruck-AGR)	Bypass flap (high pressure EGR)	\N	T 642 140 03 00	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1001	Auspuffkruemmer	Exhaust manifold	 	T 642 140 09 09	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1001	Auspuffkruemmer	Exhaust manifold	 	T 642 140 08 09	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1005	Oxidations-Katalysator	Oxidation catalyst	 	T 205 491 16 14	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1012	Drucksensor (Abgasgegendruck) 	Sensor (exhaust back pressure) 1	 	T 000 905 27 06	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1013	Partikelfilter	Particulate filter	 	T 906 491 14 94	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1029	Drucksensor (PF-Differenzdruck)	Sensor (exhaust differential-pressure)	 	T 000 905 65 03	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1041	SCR Katalysator	SCR catalyst	 	T 906 490 26 14	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1101	Lambdasonde 	Primary O2 sensor	 	T 006 542 49 18	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1107	NOX-Sensor 	NOX sensor 1	 	T 000 905 30 09	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1114	PM-Sensor	Particulate matter sensor	\N	T 000 905 06 08	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1114	PM-Sensor	Particulate matter sensor	\N	T 000 905 02 14	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1115	NOX-Sensor 	NOX sensor 2	 	T 000 905 30 09	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1233	Kraftstoffdruckregelventil	Fuel-pressure regulator	 	incl. in 12.24	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1234	Ueberdruckventil	Pressure relief valve	\N	T 910 470 00 00	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1235	Schwimmerventil 	Floating valve	 	incl. in 12.24	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1236	Schwimmerventil (Roll-over)	Roll-over valve	 	T 000 490 02 00	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1263	Qualitaetssensor SCR	Quality sensor SCR	 	incl. in 12.24	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1504	Thermostat (Kuehlwasser)	Engine thermostat	\N	T 642 200 20 15	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1116	Lambdasonde 	Secondary O2 sensor	\N	F 000 542 76 11	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1633	Steuereinheit elektrohydraulisch	Electrohydraulic Control Unit	A98+35A	T 231 270 38 01	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1634	Schaltplatte	Gearshift plate	A98	T 212 270 00 57	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
1757	Oeldruck-Kontrollventil, elektrisch	Oil pressure control valve, electrical	\N	T 278 180 04 15	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
2028	Drucksensor (Umgebungsdruck)	Pressure sensor (ATM)	\N	incl. in 38.46	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
2033	Drucksensor (Ansaugluft) 	Pressure sensor (induction air) 1	 	T 008 153 44 28	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
2037	DS Hochdrucksensor	Rail pressure sensor	 	T 006 153 78 28	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
2042	Drucksensor (Ladeluft) 	Pressure sensor (charge air) 1	 	T 009 153 34 28	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
2401	Temperatursensor (Kuehlwasser)	Temperature sensor (coolant)	 	T 000 905 61 02	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
2417	Temperatursensor (Abgas) 	Temperature sensor (exhaust gas) 1	\N	T 000 905 14 05	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
2420	Temperatursensor (Motoroel)	Temperature sensor (motor oil)	\N	T 005 153 23 28	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
2421	Kraftstofftemperatursensor	Fuel temperature sensor	 	T 005 153 23 28	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
2424	Temperatursensor (Abgas) 	Temperature sensor (exhaust gas) 2	\N	T 000 905 40 05	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
2425	Temperatursensor (Abgas) 	Temperature sensor (exhaust gas) 3	\N	T 000 905 88 04	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
2426	Temperatursensor (Abgas) 	Temperature sensor (exhaust gas) 4	 	T 000 905 99 05	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
2427	Temperatursensor (Ladeluft) 	Temperature sensor (charge air) 1	 	T 651 153 00 28	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
2431	Temperatursensor (Hochdruck-AGR)	Temperature sensor (high pressure EGR)	 	T 000 905 43 05	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3606	Luftmassenmesser mit Temperatursensor	MAF sensor with IAT sensor	 	T 000 094 34 48	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3846	Steuergeraet Motorregelung Hardware	Control module engine hardware	 	T 642 901 41 00	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3847	Steuergeraet Motorregelung Software	Control module engine software	\N	T 642 902 63 04	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3847	Steuergeraet Motorregelung Software	Control module engine software	 	T 642 902 16 04	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3848	Steuergeraet Motorregelung Parameterdaten	Control module engine parameters	\N	T 642 903 77 18	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3848	Steuergeraet Motorregelung Parameterdaten	Control module engine parameters	\N	T 642 903 75 18	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3850	Programm, Automatikgetriebe	Program automatic transmission	 	T 000 902 30 52	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3850	Programm, Automatikgetriebe	Program automatic transmission	\N	T 000 902 54 91	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3853	Steuergeraet  Automatikgetriebe Hardware	Control module automatic transmission hardware	 	T 000 901 71 00	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3858	Steuergeraet Abgasnachbehandlung Software	Control module exhaust aftertreatment software	\N	T 000 902 96 67	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3859	Steuergeraet Abgasnachbehandlung Parameterdaten	Control module exhaust aftertreatment parameters	\N	T 000 903 04 63	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3861	Steuergeraet CPC Hardware	Central powertrain controller hardware	\N	T 000 901 33 13	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3862	Steuergeraet CPC Software	Central powertrain controller software	\N	T 000 902 42 52	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3862	Steuergeraet CPC Software	Central powertrain controller software	\N	T 000 902 56 52	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3863	Steuergeraet CPC Parameterdaten	Central powertrain controller parameters	\N	T 000 903 84 39	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3863	Steuergeraet CPC Parameterdaten	Central powertrain controller parameters	\N	T 000 903 20 63	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
3865	Steuergeraet Abgasnachbehandlung Hardware	Control module exhaust aftertreatment hardware	 	T 000 901 17 03	332-23	23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23
0109	Oel-Einfuellverschluss	Oil filler cap	 	F 000 018 02 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0109	Oel-Einfuellverschluss	Oil filler cap	\N	F 000 018 05 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0204	Zuendspule	Ignition coil	\N	F 256 906 05 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0204	Zuendspule	Ignition coil	\N	F 256 906 06 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0207	Zuendkerze	Spark plug	\N	F 254 159 00 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0215	Positionssensor Kurbelwelle	Crankshaft position sensor	\N	F 256 905 01 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0219	Positionssensor Nockenwelle	Camshaft position sensor	\N	F 654 905 24 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0219	Positionssensor Nockenwelle	Camshaft position sensor	\N	F 254 905 36 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0301	Daempferfilter	Air cleaner	2U3/824	F 654 090 28 01	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0301	Daempferfilter	Air cleaner	\N	F 654 090 26 01	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0310	Oelabscheider	Oil separator	\N	F 256 010 96 02	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0341	E-Gassteller	Electr. throttle valve	 	F 256 141 00 25	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0366	Reinluftleitung	Clean air line	\N	F 256 090 28 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0432	Hochdruckpumpe	High-pressure pump	\N	F 256 070 26 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0433	Injektor	Fuel injector	\N	F 256 070 56 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0501	Abgasturbolader	Turbocharger	AA6	F 256 090 50 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0501	Abgasturbolader	Turbocharger	AA6	F 256 090 14 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0503	Waste-Gate Steller	Waste gate valve	\N	F 256 906 11 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0516	Ladeluftkuehler 	Charge air cooler	\N	F 256 090 20 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0527	Schubumluftventil	Decel air valve	\N	F 000 906 88 04	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0529	Ladeluftleitung 	Charge air line	AA6	F 256 098 02 07	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0529	Ladeluftleitung 	Charge air line	AA6	F 256 098 03 07	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0533	Zusatzverdichter, elektrisch (EZV)	Supplemental charger, electrical	AA6	F 256 090 36 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0533	Zusatzverdichter, elektrisch (EZV)	Supplemental charger, electrical	AA6	F 256 090 48 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0533	Zusatzverdichter, elektrisch (EZV)	Supplemental charger, electrical	AA6	F 256 090 52 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0534	Rueckschlagventil, Ladeluft	Check valve, charge air	AA6	F 256 141 00 58	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0701	Druck- und Temperatursensor (Kraftstoff, Niederdruck)	Pressure and temperature sensor (fuel, low pressure)	 	incl. in 07.03	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0703	Kraftstoffpumpe	Fuel Pump	 	F 167 470 45 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	 	F 256 070 07 95	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	\N	F 256 070 09 95	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	\N	F 256 070 60 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	\N	F 256 070 59 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1001	Auspuffkruemmer	Exhaust manifold	 	F 256 140 00 09	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1039	Drei-Wege-Katalysator	Three-way-catalyst	\N	F 213 491 73 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1039	Drei-Wege-Katalysator	Three-way-catalyst	\N	F 213 491 69 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1039	Drei-Wege-Katalysator	Three-way-catalyst	\N	F 213 491 39 02	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1101	Lambdasonde 	Primary O2 sensor	 	F 000 542 43 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1201	Kraftstoffbehaelter	Fuel tank	\N	F 167 471 00 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1205	Tankverschluss	Filler cap	\N	F 000 470 65 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1209	Aktivkohlefilter	EVAP canister	 	F 167 470 34 03	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1218	Fuellstandssensor Kraftstofftank	Fill level sensor (fuel tank)	\N	incl. in 07.03	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1221	Regenerierventil	EVAP canister purge valve	\N	F 000 470 37 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1252	Regenerierleitung	EVAP purge line	\N	F 256 018 12 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1252	Regenerierleitung	EVAP purge line	\N	F 256 018 22 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1252	Regenerierleitung	EVAP purge line	\N	F 167 470 05 04	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1255	Diagnosemodule Tankleck (DM-TL)	Diagnostic module tank leakage	 	F 000 545 01 41	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1258	Drucksensor Regenerierung	Pressure sensor, purge line	\N	F 000 905 50 02	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1527	Thermostat (Kuehlwasser), kennfeldgesteuert 	Engine thermostat, MAP controlled	\N	F 256 203 00 75	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1527	Thermostat (Kuehlwasser), kennfeldgesteuert 	Engine thermostat, MAP controlled	\N	F 256 203 37 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1527	Thermostat (Kuehlwasser), kennfeldgesteuert 	Engine thermostat, MAP controlled	\N	F 256 203 38 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1633	Steuereinheit elektrohydraulisch	Electrohydraulic Control Unit	\N	F 725 270 19 05	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1634	Schaltplatte	Gearshift plate	\N	F 725 270 18 05	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1726	Stellmagnet Nockenwelle	Actuator, CMP	 	F 276 156 07 90	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1756	Stellmagnet Camtronic	Actuator camtronic	\N	F 177 982 19 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1757	Oeldruck-Kontrollventil, elektrisch	Oil pressure control valve, electrical	\N	F 000 997 48 07	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
1760	Oeldruckschaltventil	Oil switching valve	\N	incl. in Oilpump	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
2017	Klopfsensor	Knock sensor	 	F 000 905 73 04	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
2022	Drehzahlsensor 	Vehicle speed sensor	 	F 247 905 00 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
2022	Drehzahlsensor 	Vehicle speed sensor	 	F 167 905 46 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
2028	Drucksensor (Umgebungsdruck)	Pressure sensor (ATM)	\N	incl. in 38.46	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
2033	Drucksensor (Ansaugluft) 	Pressure sensor (induction air) 1	 	F 000 905 59 06	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
2039	Druck- und Temperatursensor (Kraftstoff, Hochdruck)	Pressure and temperature sensor (fuel, high pressure)	 	F 256 905 02 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
2044	Druck- und Temperatursensor (Ladeluft) 	Pressure and temperature sensor (charge air) 1	 	F 009 153 86 28	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
2045	Druck- und Temperatursensor (Ladeluft) 	Pressure and temperature sensor (charge air) 2	 	F 009 153 86 28	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
2046	Druck- und Temperatursensor (Motoroel)	Pressure and temperature sensor (motor oil)	\N	F 654 905 16 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
2047	Druck- und Temperatursensor (Ladeluft) 	Pressure and temperature sensor (charge air) 3	\N	F 009 153 86 28	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
2401	Temperatursensor (Kuehlwasser)	Temperature sensor (coolant)	\N	F 000 905 23 15	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
2401	Temperatursensor (Kuehlwasser)	Temperature sensor (coolant)	 	F 000 905 61 02	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3831	Steuergeraet ESP Hardware	Control module ESP hardware	\N	F 167 901 66 02	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3846	Steuergeraet Motorregelung Hardware	Control module engine hardware	\N	F 256 901 31 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3847	Steuergeraet Motorregelung Software	Control module engine software	\N	F 256 902 32 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3848	Steuergeraet Motorregelung Parameterdaten	Control module engine parameters	\N	F 256 903 06 01	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3850	Programm, Automatikgetriebe	Program automatic transmission	\N	F 000 902 89 73	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3853	Steuergeraet  Automatikgetriebe Hardware	Control module automatic transmission hardware	 	F 000 901 50 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3856	Steuergeraet  Kraftstoffsystem Software	Control module fuel system software	\N	F 000 902 66 61	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3857	Steuergeraet  Kraftstoffsystem Parameterdaten	Control module fuel system parameters	\N	F 000 903 03 43	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3860	Steuergeraet ESP Software	Control module ESP software	\N	F 167 902 94 10	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3860	Steuergeraet ESP Software	Control module ESP software	\N	F 167 902 53 13	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3860	Steuergeraet ESP Software	Control module ESP software	\N	F 167 902 42 09	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3861	Steuergeraet CPC Hardware	Central powertrain controller hardware	 	F 000 901 30 13	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3862	Steuergeraet CPC Software	Central powertrain controller software	\N	F 000 902 52 60	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3863	Steuergeraet CPC Parameterdaten	Central powertrain controller parameters	\N	F 000 903 62 50	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3864	Steuergeraet  Kraftstoffsystem Hardware	Control module fuel system hardware	 	F 000 901 53 03	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3901	Steuergeraet Elektromotor Hardware	Control module electric motor hardware	 	F 256 901 08 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3904	Steuergeraet Batterie Management (BMS) Hardware	Control module battery management (BMS) hardware	\N	F 000 901 89 14	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3910	Steuergeraet Elektromotor Software	Control module electric motor software	\N	F 256 902 53 02	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3911	Steuergeraet Elektromotor Parameterdaten	Control module electric motor parameters	\N	F 256 903 99 01	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3912	Steuergeraet Batterie Management (BMS) Software	Control module battery management (BMS) software	\N	F 000 902 42 80	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3915	Steuergeraet DC/DC-Wandler Hardware	Control module DC/DC converter hardware	\N	F 000 901 46 09	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3916	Steuergeraet DC/DC-Wandler Software	Control module DC/DC converter software	\N	F 000 902 30 55	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3920	Starterbatterie 48V	Starter battery 48V	\N	F 000 982 44 20	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3925	Steuergeraet Klimaanlage Hardware	Control module AC-System hardware	580	F 000 901 15 16	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3925	Steuergeraet Klimaanlage Hardware	Control module AC-System hardware	581/582	F 000 901 14 16	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3925	Steuergeraet Klimaanlage Hardware	Control module AC-System hardware	581/582	F 000 901 02 25	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3925	Steuergeraet Klimaanlage Hardware	Control module AC-System hardware	580	F 000 901 03 25	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3926	Steuergeraet Klimaanlage Software	Control module AC-System software	\N	F 000 902 50 67	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3926	Steuergeraet Klimaanlage Software	Control module AC-System software	\N	F 000 902 61 71	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3926	Steuergeraet Klimaanlage Software	Control module AC-System software	\N	F 000 902 66 71	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
3926	Steuergeraet Klimaanlage Software	Control module AC-System software	\N	F 000 902 67 71	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
4001	Wasserpumpe	Water pump	\N	F 256 200 14 00	350-21	21	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21
0109	Oel-Einfuellverschluss	Oil filler cap	 	P 000 018 02 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0109	Oel-Einfuellverschluss	Oil filler cap	\N	P 000 018 05 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0204	Zuendspule	Ignition coil	\N	P 256 906 05 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0204	Zuendspule	Ignition coil	\N	P 256 906 06 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0207	Zuendkerze	Spark plug	\N	P 254 159 00 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0215	Positionssensor Kurbelwelle	Crankshaft position sensor	\N	P 256 905 01 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0219	Positionssensor Nockenwelle	Camshaft position sensor	\N	P 654 905 24 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0219	Positionssensor Nockenwelle	Camshaft position sensor	\N	P 254 905 36 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0301	Daempferfilter	Air cleaner	2U3/824	P 654 090 28 01	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0301	Daempferfilter	Air cleaner	\N	P 654 090 26 01	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0310	Oelabscheider	Oil separator	\N	P 256 010 96 02	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0341	E-Gassteller	Electr. throttle valve	 	P 256 141 00 25	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0366	Reinluftleitung	Clean air line	\N	P 256 090 28 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0432	Hochdruckpumpe	High-pressure pump	\N	P 256 070 26 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0433	Injektor	Fuel injector	\N	P 256 070 56 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0501	Abgasturbolader	Turbocharger	AA6	P 256 090 50 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0501	Waste-Gate Steller	Turbocharger	AA6	P 256 090 14 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0503	Ladeluftkuehler 	Waste gate valve	\N	P 256 906 11 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0516	Turbolader, VTG	Charge air cooler	\N	P 256 090 20 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0527	Schubumluftventil	Decel air valve	\N	P 000 906 88 04	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0529	Ladeluftleitung 	Charge air line	AA6	P 256 098 02 07	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0529	Ladeluftleitung 	Charge air line	AA6	P 256 098 03 07	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0533	Zusatzverdichter, elektrisch (EZV)	Supplemental charger, electrical	AA6	P 256 090 36 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0533	Zusatzverdichter, elektrisch (EZV)	Supplemental charger, electrical	AA6	P 256 090 48 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0533	Zusatzverdichter, elektrisch (EZV)	Supplemental charger, electrical	AA6	P 256 090 52 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0534	Rueckschlagventil, Ladeluft	Check valve, charge air	AA6	P 256 141 00 58	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0701	Druck- und Temperatursensor (Kraftstoff, Niederdruck)	Pressure and temperature sensor (fuel, low pressure)	 	incl. in 07.03	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0703	Kraftstoffpumpe	Fuel Pump	 	P 167 470 45 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	 	P 256 070 07 95	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	\N	P 256 070 09 95	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	\N	P 256 070 60 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
0770	Kraftstoffverteiler (Hochdruck)	Fuel rail (high pressure)	\N	P 256 070 59 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1001	Auspuffkruemmer	Exhaust manifold	 	P 256 140 00 09	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1039	Drei-Wege-Katalysator	Three-way-catalyst	\N	P 213 491 73 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1039	Drei-Wege-Katalysator	Three-way-catalyst	\N	P 213 491 69 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1039	Drei-Wege-Katalysator	Three-way-catalyst	\N	P 213 491 39 02	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1101	Lambdasonde 	Primary O2 sensor	 	P 000 542 43 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1116	Lambdasonde 	Secondary O2 sensor	\N	P 000 542 76 11	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1201	Kraftstoffbehaelter	Fuel tank	\N	P 167 471 00 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1205	Tankverschluss	Filler cap	\N	P 000 470 65 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1209	Aktivkohlefilter	EVAP canister	 	P 167 470 34 03	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1218	Fuellstandssensor Kraftstofftank	Fill level sensor (fuel tank)	\N	incl. in 07.03	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1221	Regenerierventil	EVAP canister purge valve	\N	P 000 470 37 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1252	Regenerierleitung	EVAP purge line	\N	P 256 018 12 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1252	Regenerierleitung	EVAP purge line	\N	P 256 018 22 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1252	Regenerierleitung	EVAP purge line	\N	P 167 470 05 04	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1255	Diagnosemodule Tankleck (DM-TL)	Diagnostic module tank leakage	 	P 000 545 01 41	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1258	Drucksensor Regenerierung	Pressure sensor, purge line	\N	P 000 905 50 02	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1527	Thermostat (Kuehlwasser), kennfeldgesteuert 	Engine thermostat, MAP controlled	\N	P 256 203 00 75	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1527	Thermostat (Kuehlwasser), kennfeldgesteuert 	Engine thermostat, MAP controlled	\N	P 256 203 37 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1527	Thermostat (Kuehlwasser), kennfeldgesteuert 	Engine thermostat, MAP controlled	\N	P 256 203 38 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1633	Steuereinheit elektrohydraulisch	Electrohydraulic Control Unit	\N	P 725 270 19 05	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1634	Schaltplatte	Gearshift plate	\N	P 725 270 18 05	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1726	Stellmagnet Nockenwelle	Actuator, CMP	 	P 276 156 07 90	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1756	Stellmagnet Camtronic	Actuator camtronic	\N	P 177 982 19 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1757	Oeldruck-Kontrollventil, elektrisch	Oil pressure control valve, electrical	\N	P 000 997 48 07	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
1760	Oeldruckschaltventil	Oil switching valve	\N	incl. in Oilpump	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
2017	Klopfsensor	Knock sensor	 	P 000 905 73 04	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
2022	Drehzahlsensor 	Vehicle speed sensor	 	P 247 905 00 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
2022	Drehzahlsensor 	Vehicle speed sensor	 	P 167 905 46 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
2028	Drucksensor (Umgebungsdruck)	Pressure sensor (ATM)	\N	incl. in 38.46	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
2033	Drucksensor (Ansaugluft) 	Pressure sensor (induction air) 1	 	P 000 905 59 06	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
2039	Druck- und Temperatursensor (Kraftstoff, Hochdruck)	Pressure and temperature sensor (fuel, high pressure)	 	P 256 905 02 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
2044	Druck- und Temperatursensor (Ladeluft) 	Pressure and temperature sensor (charge air) 1	 	P 009 153 86 28	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
2045	Druck- und Temperatursensor (Ladeluft) 	Pressure and temperature sensor (charge air) 2	 	P 009 153 86 28	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
2046	Druck- und Temperatursensor (Motoroel)	Pressure and temperature sensor (motor oil)	\N	P 654 905 16 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
2047	Druck- und Temperatursensor (Ladeluft) 	Pressure and temperature sensor (charge air) 3	\N	P 009 153 86 28	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
2401	Temperatursensor (Kuehlwasser)	Temperature sensor (coolant)	\N	P 000 905 23 15	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
2401	Temperatursensor (Kuehlwasser)	Temperature sensor (coolant)	 	P 000 905 61 02	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3831	Steuergeraet ESP Hardware	Control module ESP hardware	\N	P 167 901 66 02	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3846	Steuergeraet Motorregelung Hardware	Control module engine hardware	\N	P 256 901 31 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3847	Steuergeraet Motorregelung Software	Control module engine software	\N	P 256 902 32 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3848	Steuergeraet Motorregelung Parameterdaten	Control module engine parameters	\N	P 256 903 06 01	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3850	Programm, Automatikgetriebe	Program automatic transmission	\N	P 000 902 89 73	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3853	Steuergeraet  Automatikgetriebe Hardware	Control module automatic transmission hardware	 	P 000 901 50 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3856	Steuergeraet  Kraftstoffsystem Software	Control module fuel system software	\N	P 000 902 66 61	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3857	Steuergeraet  Kraftstoffsystem Parameterdaten	Control module fuel system parameters	\N	P 000 903 03 43	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3860	Steuergeraet ESP Software	Control module ESP software	\N	P 167 902 94 10	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3860	Steuergeraet ESP Software	Control module ESP software	\N	P 167 902 53 13	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3860	Steuergeraet ESP Software	Control module ESP software	\N	P 167 902 42 09	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3861	Steuergeraet CPC Hardware	Central powertrain controller hardware	 	P 000 901 30 13	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3862	Steuergeraet CPC Software	Central powertrain controller software	\N	P 000 902 52 60	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3863	Steuergeraet CPC Parameterdaten	Central powertrain controller parameters	\N	P 000 903 62 50	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3864	Steuergeraet  Kraftstoffsystem Hardware	Control module fuel system hardware	 	P 000 901 53 03	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3901	Steuergeraet Elektromotor Hardware	Control module electric motor hardware	 	P 256 901 08 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3904	Steuergeraet Batterie Management (BMS) Hardware	Control module battery management (BMS) hardware	\N	P 000 901 89 14	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3910	Steuergeraet Elektromotor Software	Control module electric motor software	\N	P 256 902 53 02	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3911	Steuergeraet Elektromotor Parameterdaten	Control module electric motor parameters	\N	P 256 903 99 01	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3912	Steuergeraet Batterie Management (BMS) Software	Control module battery management (BMS) software	\N	P 000 902 42 80	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3915	Steuergeraet DC/DC-Wandler Hardware	Control module DC/DC converter hardware	\N	P 000 901 46 09	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3916	Steuergeraet DC/DC-Wandler Software	Control module DC/DC converter software	\N	P 000 902 30 55	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3920	Starterbatterie 48V	Starter battery 48V	\N	P 000 982 44 20	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3925	Steuergeraet Klimaanlage Hardware	Control module AC-System hardware	580	P 000 901 15 16	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3925	Steuergeraet Klimaanlage Hardware	Control module AC-System hardware	581/582	P 000 901 14 16	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3925	Steuergeraet Klimaanlage Hardware	Control module AC-System hardware	581/582	P 000 901 02 25	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3925	Steuergeraet Klimaanlage Hardware	Control module AC-System hardware	580	P 000 901 03 25	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3926	Steuergeraet Klimaanlage Software	Control module AC-System software	\N	P 000 902 50 67	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3926	Steuergeraet Klimaanlage Software	Control module AC-System software	\N	P 000 902 61 71	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3926	Steuergeraet Klimaanlage Software	Control module AC-System software	\N	P 000 902 66 71	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
3926	Steuergeraet Klimaanlage Software	Control module AC-System software	\N	P 000 902 67 71	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
4001	Wasserpumpe	Water pump	\N	P 256 200 14 00	350-22	22	200	222	167361	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22
\.


--
-- Data for Name: typen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.typen (typid, mbr, fbr, fbm, model_name, cop_typ_bezeichnung, my) FROM stdin;
208-22	100	111	123456	AEG C 43 6Static (convertible)	123456 AEG C 43 6Static (convertible) 100 111 MY22	22
350-22	200	222	654321	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY22	22
332-22	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY22	22
350-21	200	222	654321	AEG GLE 53 6Static+ (coupe)	167361 AEG GLE 53 6Static+ (coupe) 200 222 MY21	21
332-23	300	333	987654	Sprinter 4500 / Freightliner 4500 (5.5t HD)	987654 Sprinter 4500 / Freightliner 4500 (5.5t HD) 300 333 MY23	23
\.


--
-- Name: kk kk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kk
    ADD CONSTRAINT kk_pkey PRIMARY KEY (benennung_english);


--
-- Name: typen typen_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.typen
    ADD CONSTRAINT typen_pkey PRIMARY KEY (typid);


--
-- Name: snr fk_kk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.snr
    ADD CONSTRAINT fk_kk FOREIGN KEY (benennung_english) REFERENCES public.kk(benennung_english);


--
-- Name: snr fk_typen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.snr
    ADD CONSTRAINT fk_typen FOREIGN KEY (typid) REFERENCES public.typen(typid);


--
-- PostgreSQL database dump complete
--

