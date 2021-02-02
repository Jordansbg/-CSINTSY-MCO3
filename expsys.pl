ask(Patient, Question):-
    write(Patient), write(", do you"), write(Question), write("? "),
    read(N),
    ((N == yes ; N == y) -> assert(yes(Question)) ; assert(no(Question)), fail).

:- dynamic yes/1,no/1.	

verify(P,S) :-
    (yes(S) -> true ;
    (no(S) -> fail ; ask(P,S))).

undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.

symptom(Patient, abdominal_pain):-
    verify(Patient, " (y/n) ?").
    
symptom(Patient, abdominal_weakness):-
    verify(Patient, " (y/n) ?").

symptom(Patient, anemia):-
    verify(Patient, " (y/n) ?").

symptom(Patient, anxiety):-
    verify(Patient, " (y/n) ?").

symptom(Patient, blood_clotting):-
    verify(Patient, " (y/n) ?").

symptom(Patient, bladder_issues):-
    verify(Patient, " (y/n) ?").
    
symptom(Patient, cognitive_problems):-
    verify(Patient, " (y/n) ?").

symptom(Patient, cold_intorelance):-
    verify(Patient, " (y/n) ?").

symptom(Patient, constipation):-
    verify(Patient, " (y/n) ?").

symptom(Patient, diarrhea):-
    verify(Patient, " (y/n) ?").

symptom(Patient, depression):-
    verify(Patient, " (y/n) ?").
    
symptom(Patient, dizziness):-
    verify(Patient, " (y/n) ?").

symptom(Patient, fever):-
    verify(Patient, " (y/n) ?").

symptom(Patient, fatigue):-
    verify(Patient, " (y/n) ?").

symptom(Patient, goiter):-
    verify(Patient, " (y/n) ?").

symptom(Patient, hair_loss):-
    verify(Patient, " (y/n) ?").
    
symptom(Patient, heat_intolerance):-
    verify(Patient, " (y/n) ?").

symptom(Patient, hungry):-
    verify(Patient, " (y/n) ?").

symptom(Patient, joint_pain):-
    verify(Patient, " (y/n) ?").

symptom(Patient, joint_stiffness):-
    verify(Patient, " (y/n) ?").

symptom(Patient, joint_swelling):-
    verify(Patient, " (y/n) ?").
    
symptom(Patient, kidney_problems):-
    verify(Patient, " (y/n) ?").

symptom(Patient, light_sensitivity):-
    verify(Patient, " (y/n) ?").

symptom(Patient, loss_of_reflexes):-
    verify(Patient, " (y/n) ?").

symptom(Patient, loss_of_balance):-
    verify(Patient, " (y/n) ?").

symptom(Patient, mouth_sores):-
    verify(Patient, " (y/n) ?").
    
symptom(Patient, muscle_pain):-
    verify(Patient, " (y/n) ?").

symptom(Patient, muscle_weakness):-
    verify(Patient, " (y/n) ?").

symptom(Patient, memory_problems):-
    verify(Patient, " (y/n) ?").

symptom(Patient, nausea):-
    verify(Patient, " (y/n) ?").

symptom(Patient, numbness):-
    verify(Patient, " (y/n) ?").
    
symptom(Patient, nervousness_or_irritability):-
    verify(Patient, " (y/n) ?").

symptom(Patient, rashes):-
    verify(Patient, " (y/n) ?").

symptom(Patient, rectal_bleeding):-
    verify(Patient, " (y/n) ?").

symptom(Patient, sexual_dysfunction):-
    verify(Patient, " (y/n) ?").

symptom(Patient, tiredness):-
    verify(Patient, " (y/n) ?").
    
symptom(Patient, tingling):-
    verify(Patient, " (y/n) ?").

symptom(Patient, thirsty):-
    verify(Patient, " (y/n) ?").

symptom(Patient, trembling_hands):-
    verify(Patient, " (y/n) ?").

symptom(Patient, trouble_sleeping):-
    verify(Patient, " (y/n) ?").

symptom(Patient, vision_problems):-
    verify(Patient, " (y/n) ?").
    
symptom(Patient, vomiting):-
    verify(Patient, " (y/n) ?").

symptom(Patient, weakness):-
    verify(Patient, " (y/n) ?").

symptom(Patient, weight_loss):-
    verify(Patient, " (y/n) ?").

symptom(Patient, weight_gain):-
    verify(Patient, " (y/n) ?").

hypothesis(Patient, rheumatoid_arthritis ):-
    symptom(Patient, fatigue),
    symptom(Patient, fever),
    symptom(Patient, joint_pain),
    symptom(Patient, joint_stiffness),
    symptom(Patient, joint_swelling),
    symptom(Patient, tiredness),
    symptom(Patient, weakness),
    symptom(Patient, weight_loss).

hypothesis(Patient, systemic_lupus_erythematosus):-
    symptom(Patient, abdominal_pain),
    symptom(Patient, anemia),
    symptom(Patient, blood_clotting),
    symptom(Patient, fatigue),
    symptom(Patient, fever),
    symptom(Patient, hair_loss),
    symptom(Patient, joint_pain),
    symptom(Patient, kidney_problems),
    symptom(Patient, light_sensitivity),
    symptom(Patient, memory_problems),
    symptom(Patient, mouth_sores),
    symptom(Patient, muscle_pain),
    symptom(Patient, rashes),
    symptom(Patient, vision_problems).

hypothesis(Patient, inflammatory_bowel_disease):-
    symptom(Patient, abdominal_pain),
    symptom(Patient, diarrhea),
    symptom(Patient, fatigue),
    symptom(Patient, rectal_bleeding),
    symptom(Patient, weight_loss).

hypothesis(Patient, multiple_sclerosis):-
    symptom(Patient, anxiety),
    symptom(Patient, bladder_issues),
    symptom(Patient, cognitive_problems).
    symptom(Patient, depression),
    symptom(Patient, diarrhea),
    symptom(Patient, dizziness),
    symptom(Patient, fatigue),
    symptom(Patient, numbness),
    symptom(Patient, sexual_dysfunction),
    symptom(Patient, tingling),
    symptom(Patient, vision_problems).

hypothesis(Patient, type_1_diabetes_mellitus):-
    symptom(Patient, bladder_issues),
    symptom(Patient, fatigue),
    symptom(Patient, hungry),
    symptom(Patient, numbness),
    symptom(Patient, thirsty),
    symptom(Patient, tingling),
    symptom(Patient, weight_loss),
    symptom(Patient, vision_problems).

hypothesis(Patient, guillain_barre_syndrome):-
    symptom(Patient, abdominal_weakness),
    symptom(Patient, diarrhea),
    symptom(Patient, nausea),
    symptom(Patient, tingling),
    symptom(Patient, vomiting).

hypothesis(Patient, chronic_inflammatory_demyelinating_polyneuropathy):-
    symptom(Patient, loss_of_balance),
    symptom(Patient, loss_of_reflexes),
    symptom(Patient, tingling),
    symptom(Patient, weakness).

hypothesis(Patient, psoriasis):-
    symptom(Patient, fatigue),
    symptom(Patient, fever),
    symptom(Patient, joint_pain),
    symptom(Patient, joint_stiffness),
    symptom(Patient, joint_swelling),
    symptom(Patient, weakness),
    symptom(Patient, weight_loss).

hypothesis(Patient, graves'_disease):-
    symptom(Patient, diarrhea),
    symptom(Patient, fatigue),
    symptom(Patient, goiter),
    symptom(Patient, heat_intolerance),
    symptom(Patient, muscle_weakness),
    symptom(Patient, nervousness_or_irritability),
    symptom(Patient, trembling_hands),
    symptom(Patient, trouble_sleeping),
    symptom(Patient, weight_loss).

hypothesis(Patient, hashimoto's_thyroiditis):-
    symptom(Patient, cold_intorelance),
    symptom(Patient, constipation),
    symptom(Patient, depression),
    symptom(Patient, joint_pain),
    symptom(Patient, memory_problems),
    symptom(Patient, muscle_pain),
    symptom(Patient, tiredness),
    symptom(Patient, weight_gain).

start:-
    write("What is the name of the Patient? "),
    read(Patient),
    hypothesis(Patient, Disease),
    write(Patient), write(" probably has "), write(Disease), write("."), nl.

start :-
    write("Sorry, I don't seem to be able to"),nl,
    write("diagnose the disease."),nl.
