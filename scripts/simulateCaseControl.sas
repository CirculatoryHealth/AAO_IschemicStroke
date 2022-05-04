*** Simulates population and creates a dataset with sampleNum cases and controls;

%put Job Started Execution at %sysfunc(time(),timeampm.) on %sysfunc(date(),worddate.).;

%let sampleNum = 1000;
%let sampleSize = 1000;
%let firstdob = 01JAN1900;
%let lastdob = 31DEC2020;

%let gEffect = 1.0, 1.1, 1.2, 1.3, 1.4, 1.5;

%let libName = sim1dr;
%let dsName = ageAtOnset;

proc datasets lib=&libName nolist; delete &dsName ; run;

data 	&libName..&dsName;
	call streaminit(4321);

	do gEffect = &gEffect; 

	do replicate = 1 to &sampleNum;
		*** Initialize Count variables;
		caseCount = 0;		drop caseCount;
		controlCount = 0;	drop controlCount;
	do until (min(caseCount, controlCount) = &sampleSize);

	gEffectStrokeMult = gEffect;
	gEffectStrokeAdd = (1-gEffect)*0.003;
	gEffectDeath = gEffect;
	strkEffectDeath = 3;


	*** Variables assigned at birth;
	dob = "&firstdob"d + rand("uniform")*("&lastdob"d - "&firstdob"d);	format dob date9.;
	sex = rand('Bernoulli', 0.5);										format sex sexF.;
	dateOfStroke = .;													format dateOfStroke date9.;
	dod = . ;															format dod date9.;
	ageAtStroke = .;													format ageAtStroke 5.1;
	stroke = .;															format stroke 1.0;
	ageAtDeath = .;														format ageAtDeath 5.1;
	
	*** Genotypes;
	genoStrokeMult = assignGenotypes(0.10);								format genoStrokeMult genoF.;
	genoStrokeAdd  = assignGenotypes(0.10);								format genoStrokeAdd genoF.;
	genoDeath = assignGenotypes(0.10);									format genoDeath genoF.;
	genoAPOE = rand("Table", .017, .116, .558, .019, .251, .039);		format genoAPOE apoeF.;
		if genoAPOE in (4,5) then e4Carrier = 1; 
			else if genoAPOE = 6 then e4Carrier = 2;
			else e4Carrier = 0;


	*** Age each individual one year at a time;
	do age = 1 to 120;

		*** Simulate non-recurring events;
		dateOfStroke = simStroke(dob, sex, age, genoStrokeMult, gEffectStrokeMult, genoStrokeAdd, gEffectStrokeAdd, dateOfStroke);
		dod = simDOD(dob, sex, age, dateOfStroke, strkEffectDeath, e4Carrier, gEffectDeath);
			
		if dod ne . then LEAVE; 
	end;
	drop age;

	*** Assign variables stroke, ageAtStroke and Age at death;
	if dateOfStroke ne . then do;	
		stroke = 1; 
		ageAtStroke = yrdif(dob, dateOfStroke);
		end;
	else stroke = 0;
	ageAtDeath = yrdif(dob, dod);

	*** Export case control datasets;
	if dod > '1JAN2020'd and yrdif(dob, '1JAN2020'd) > 18 then do;
		if dateOfStroke < '1JAN2020'd then do; 						status = 1;	ageAtStudy = ageAtStroke;				caseCount = caseCount + 1; 			if caseCount le &sampleSize then output &libName..&dsName; 		end;
		if dateOfStroke = . or dateOfStroke > '1JAN2020'd then do;	status = 0; ageAtStudy = yrdif(dob, '1JAN2010'd);	controlCount = controlCount + 1; 	if controlCount le &sampleSize then output &libName..&dsName ;	end;
	end;

	end; ** End sample size loop;
	end; ** End replicate loop;

	end; ** End gEffect loop;
run;

%put Job Ended Execution at %sysfunc(time(),timeampm.) on %sysfunc(date(),worddate.).;

proc sql;
	select 	gEffectStrokeMult,
			gEffectStrokeAdd,
			gEffectDeath,
			strkEffectDeath,
			count(*) as N
	from 	&libName..&dsName
	group by gEffectStrokeMult,
			gEffectStrokeAdd,
			gEffectDeath,
			strkEffectDeath;

quit;

