% function ischance
close all ; clear all ; clc ;


%%%%%%%%%%%%%%%% APHASIA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
SubjectNumber = [2	3	7	11	14	16	20	21	22	23	24	25	27	28	29	30	31	32	33	34	35]; 

            %%%%%%% APHASIA VOC CONDITIONS %%%%%%%
AphasiaVocCorrDetectChange     = [5	144	 0	148	92	122	49	0	0	11	68	57	131	80	165	0	0	21	68	133	68]; %a, #of trials
AphasiaVocIncorrDetectNoChange = [1	9	0	71	59	9	12	1	0	38	32	4	26	8	82	0	0	12	19	5	1]; %b
AphasiaVocIncorrDetectChange   = [65	3	32	1	56	27	99	144	61	78	95	4	37	91	0	164	126	94	29	2	42]; %c
AphasiaVocCorrDectectNoChange  = [31	69	15	0	20	60	55	74	35	8	61	28	67	84	0	73	76	45	41	63	62]; %d

for i = 1 : numel(SubjectNumber)
    K = AphasiaVocCorrDetectChange(i) + AphasiaVocIncorrDetectNoChange(i);
    N = AphasiaVocCorrDetectChange(i) + AphasiaVocIncorrDetectChange(i);
    M = AphasiaVocCorrDetectChange(i) + AphasiaVocIncorrDetectNoChange(i) + AphasiaVocIncorrDetectChange(i) + AphasiaVocCorrDectectNoChange(i);
%  p = fexact( a,M,K,N, options)
p = fexact( AphasiaVocCorrDetectChange(i),M,K,N,'tail','r'); %one tailed chance
% fprintf('Subj\t%d\t%g\n', SubjectNumber(i), p);
% fprintf('Subj\t%d\t%g\t%g\t%g\t%g\t%g\n', SubjectNumber(i), p, AphasiaVocCorrDetectChange(i), K, N, M);
             %%%%% CALCULATE PERFORMANCE %%%%%
AphasiaVocPerformance(i,1) = ((AphasiaVocCorrDetectChange(i) + AphasiaVocCorrDectectNoChange(i)) / M) * 100 ;
end
 



            %%%%%% APHASIA LIS CONDITIONS %%%%%%%
AphasiaLisCorrDetectChange = [3	137	16	143	107	61	31	147	37	40	157	36	120	85	163	0	73	40	26	120	79]; %a, #of trials
AphasiaLisIncorrDetectNoChange = [2	1	9	76	49	4	14	69	13	38	15	10	5	2	84	0	27	3	11	4	10]; %b
AphasiaLisIncorrDetectChange = [59	24	13	0	42	80	107	2	26	50	20	26	60	96	0	150	71	68	79	15	34]; %c
AphasiaLisCorrDectectNoChange = [33	61	8	0	23	73	64	1	17	6	65	20	74	81	0	86	33	52	25	64	45]; %d

for i = 1 : numel(SubjectNumber)
    K = AphasiaLisCorrDetectChange(i) + AphasiaLisIncorrDetectNoChange(i);
    N = AphasiaLisCorrDetectChange(i) + AphasiaLisIncorrDetectChange(i);
    M = AphasiaLisCorrDetectChange(i) + AphasiaLisIncorrDetectNoChange(i) + AphasiaLisIncorrDetectChange(i) + AphasiaLisCorrDectectNoChange(i);
%  p = fexact( a,M,K,N, options)
p = fexact( AphasiaLisCorrDetectChange(i),M,K,N,'tail','r'); %one tailed chance
% fprintf('Subj\t%d\t%g\n', SubjectNumber(i), p);
% fprintf('Subj\t%d\t%g\t%g\t%g\t%g\t%g\n', SubjectNumber(i), p, AphasiaLisCorrDetectChange(i), K, N, M);
             %%%% CALCULATE PERFORMANCE %%%%%
AphasiaLisPerformance(i,1) = ((AphasiaLisCorrDetectChange(i) + AphasiaLisCorrDectectNoChange(i)) / M) * 100 ;
end


%%%%%%%%%%%%%%%%%% CONTROL %%%%%%%%%%%%%%%%%%%%%%%% 
SubjectNumber = [27	30	31	32	33	34	35	36	37	38	39	40	41	42	43	44	45	47	48	49	51	52	53];

            %%%%%%% CONTROL VOC CONDITIONS %%%%%%%
ControlVocCorrDetectChange = [2	28	90	68	36	130	122	137	142	0	128	117	116	141	62	127	114	141	0	101	131	136	135]; %a, #of trials
ControlVocIncorrDetectNoChange = [1	11	1	21	0	1	2	4	22	0	1	7	0	3	39	1	17	1	0	2	2	4	1]; %b
ControlVocIncorrDetectChange = [151	41	1	38	2	0	10	4	1	135	6	24	15	0	53	6	15	12	119	4	7	16	4]; %c
ControlVocCorrDectectNoChange = [61	25	55	36	22	82	72	63	48	73	76	72	69	71	23	66	46	79	57	46	56	67	84]; %d

for i = 1 : numel(SubjectNumber)
    K = ControlVocCorrDetectChange(i) + ControlVocIncorrDetectNoChange(i);
    N = ControlVocCorrDetectChange(i) + ControlVocIncorrDetectChange(i);
    M = ControlVocCorrDetectChange(i) + ControlVocIncorrDetectNoChange(i) + ControlVocIncorrDetectChange(i) + ControlVocCorrDectectNoChange(i);
%  p = fexact( a,M,K,N, options)
p = fexact( ControlVocCorrDetectChange(i),M,K,N,'tail','r'); %one tailed chance
% fprintf('Subj\t%d\t%g\n', SubjectNumber(i), p);
% fprintf('Subj\t%d\t%g\t%g\t%g\t%g\t%g\n', SubjectNumber(i), p, ControlVocCorrDetectChange(i), K, N, M);
             %%%% CALCULATE PERFORMANCE %%%%%
ControlVocPerformance(i,1) = ((ControlVocCorrDetectChange(i) + ControlVocCorrDectectNoChange(i)) / M) * 100 ;
end

             %%%%%% CONTROL LIS CONDITIONS %%%%%%%
ControlLisCorrDetectChange =           [17	38	99	67	38	150	138	134	106	138	147	143	57	143	53	128	116	145	44	74	75	80	131]; %a, #of trials
ControlLisIncorrDetectNoChange =    [10	6	1	12	0	1	4	7	7	5	0	0	0	0	31	0	21	2	23	3	5	4	0]; %b
ControlLisIncorrDetectChange =          [115	31	5	50	0	3	7	1	32	4	0	10	77	0	67	6	11	10	68	27	48	64	27]; %c
ControlLisCorrDectectNoChange = [71	27	42	41	22	54	58	66	66	62	63	69	66	69	25	67	45	76	40	50	69	77	65]; %d

for i = 1 : numel(SubjectNumber)
    K = ControlLisCorrDetectChange(i) + ControlLisIncorrDetectNoChange(i);
    N = ControlLisCorrDetectChange(i) + ControlLisIncorrDetectChange(i);
    M = ControlLisCorrDetectChange(i) + ControlLisIncorrDetectNoChange(i) + ControlLisIncorrDetectChange(i) + ControlLisCorrDectectNoChange(i);
%  p = fexact( a,M,K,N, options)
p = fexact( ControlLisCorrDetectChange(i),M,K,N,'tail','r'); %one tailed chance
% fprintf('Subj\t%d\t%g\n', SubjectNumber(i), p);
% fprintf('Subj\t%d\t%g\t%g\t%g\t%g\t%g\n', SubjectNumber(i), p, ControlLisCorrDetectChange(i), K, N, M);
             %%%% CALCULATE PERFORMANCE %%%%%
ControlLisPerformance(i,1) = ((ControlLisCorrDetectChange(i) + ControlLisCorrDectectNoChange(i)) / M) * 100 ;
end

AphasiaVocPerformance
AphasiaLisPerformance
ControlVocPerformance
ControlLisPerformance


