
:- dynamic yes/1,no/1.

start:-
    write("What is the name of the Patient? Enter here: "),
    read(Patient), write("\n\n          ------[SYMPTOMS CHECK]------\n"),
    hypothesis(Patient, Disease), write("\n\n              ------[RESULT]------\n"),
    write(Patient), write(" probably has "), write(Disease), write("."), nl, undo.

start :- nl,
    write("Sorry, I don't seem to be able to"),nl,
    write("diagnose the disease."),nl, undo.

ask(Patient, Question):-
    write(Patient), write(", "), write(Question),
    read(N),
    ((N == yes ; N == y) -> assert(yes(Question)) ; assert(no(Question)), fail).

verify(P,S) :-
    (yes(S) -> true ;
    (no(S) -> fail ; ask(P,S))).

undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.

symptom(Patient, emergency) :-
    verify(Patient, "are you safe and NOT in an EMERGENCY situation? (y/n)").

symptom(Patient, abdominal_pain):-
    verify(Patient, "Have you been experiencing ABDOMINAL PAIN recently (y/n) ?").

symptom(Patient, abdominal_weakness):-
    verify(Patient, "Do you feel some kind of WEAKNESS in your ABDOMEN (y/n) ?").

symptom(Patient, anemia):-
    verify(Patient, "Are you by any chance, ANEMIC (y/n) ?").

symptom(Patient, anxiety):-
    verify(Patient, "Lately, have you been experiencing ANXIETY (y/n) ?").

symptom(Patient, blood_clotting):-
    verify(Patient, "Can the patient's body perform blood clotting (y/n) ?").

symptom(Patient, bladder_issues):-
    verify(Patient, "Do you have BLADDER ISSUES (y/n) ?").

symptom(Patient, cognitive_problems):-
    verify(Patient, "Do you find yourself trying hard to concentrate (y/n) ?").

symptom(Patient, cold_intorelance):-
    verify(Patient, "Hmmm, easily be cold (y/n) ?").

symptom(Patient, constipation):-
    verify(Patient, "Experiencing CONSTIPATION? (y/n) ?").

symptom(Patient, diarrhea):-
    verify(Patient, "Recently having problems with DIARRHEA (y/n) ?").

symptom(Patient, depression):-
    verify(Patient, "Lately or currently having emotional imbalance (y/n) ?").

symptom(Patient, dizziness):-
    verify(Patient, "Feeling DIZZY perhaps (y/n) ?").

symptom(Patient, fever):-
    verify(Patient, "Do you have a fever right now (y/n) ?").

symptom(Patient, fatigue):-
    verify(Patient, "Are you experiencing fatigue (y/n) ?").

symptom(Patient, goiter):-
    verify(Patient, "Does the patient have a goiter (y/n) ?").

symptom(Patient, hair_loss):-
    verify(Patient, "Are you experiencing excessive hair loss (y/n) ?").

symptom(Patient, heat_intolerance):-
    verify(Patient, "Very sensitive to hot climate or weather (y/n) ?").

symptom(Patient, hungry):-
    verify(Patient, "Are you always HUNGRY (y/n) ?").

symptom(Patient, joint_pain):-
    verify(Patient, "Experiencing and JOINT PAIN (y/n) ?").

symptom(Patient, joint_stiffness):-
    verify(Patient, "How about experiencing JOINT STIFFNESS (y/n) ?").

symptom(Patient, joint_swelling):-
    verify(Patient, "Another one, how about JOINT SWELLING? (y/n) ?").

symptom(Patient, kidney_problems):-
    verify(Patient, "Currently experiencing kidney problems (y/n) ?").

symptom(Patient, light_sensitivity):-
    verify(Patient, "Are you sensitive to light (y/n) ?").

symptom(Patient, loss_of_reflexes):-
    verify(Patient, "Recently finding your reflexes slow or not responsive (y/n) ?").

symptom(Patient, loss_of_balance):-
    verify(Patient, "Lately has been LOSING BALANCE (y/n) ?").

symptom(Patient, mouth_sores):-
    verify(Patient, "Does your mouth have SORES (y/n) ?").

symptom(Patient, muscle_pain):-
    verify(Patient, "Do you have muscle pain somewhere in your body (y/n) ?").

symptom(Patient, muscle_weakness):-
    verify(Patient, "Experiencing MUSCLE WEAKNESS (y/n) ?").

symptom(Patient, memory_problems):-
    verify(Patient, "Finding yourself lost or forgetful (y/n) ?").

symptom(Patient, nausea):-
    verify(Patient, "Experiencing NAUSEA (y/n) ?").

symptom(Patient, numbness):-
    verify(Patient, "Experiencing NUMBNESS somewhere in your body (y/n) ?").

symptom(Patient, nervousness_or_irritability):-
    verify(Patient, "Lately, you are IRRITABLE or feeling NERVOUS (y/n) ?").

symptom(Patient, rashes):-
    verify(Patient, "Do you have rashes (y/n) ?").

symptom(Patient, rectal_bleeding):-
    verify(Patient, "Is experiencing rectal bleeding (y/n) ?").

symptom(Patient, sexual_dysfunction):-
    verify(Patient, "Currently suffering from SEXUAL DYSFUNCTION (y/n) ?").

symptom(Patient, tiredness):-
    verify(Patient, "Do you consider yourself TIRED right now (y/n) ?").

symptom(Patient, tingling):-
    verify(Patient, "Feeling something TINGLING (y/n) ?").

symptom(Patient, thirsty):-
    verify(Patient, "Do you consider yourself THIRSTY right now (y/n) ?").

symptom(Patient, trembling_hands):-
    verify(Patient, "Experiencing TREMBLING HANDS (y/n) ?").

symptom(Patient, trouble_sleeping):-
    verify(Patient, "Have TROUBLE SLEEPING (y/n) ?").

symptom(Patient, vision_problems):-
    verify(Patient, "Do you have VISION PROBLEMS (y/n) ?").

symptom(Patient, vomiting):-
    verify(Patient, "Have VOMITED these past few days (y/n) ?").

symptom(Patient, weakness):-
    verify(Patient, "Do you consider yourself WEAK as of now (y/n) ?").

symptom(Patient, weight_loss):-
    verify(Patient, "Do you experience dramatic WEIGHT LOSS (y/n) ?").

symptom(Patient, weight_gain):-
    verify(Patient, "Are you experiencing dramatic WEIGHT GAIN (y/n) ?").

hypothesis(Patient, "nothing to fear. Please refer to a large medical facility") :-
    symptom(Patient, emergency).

hypothesis(Patient, "Rheumatoid arthritis"):-
    symptom(Patient, fatigue),
    symptom(Patient, fever),
    symptom(Patient, joint_pain),
    symptom(Patient, joint_stiffness),
    symptom(Patient, joint_swelling),
    symptom(Patient, tiredness),
    symptom(Patient, weakness),
    symptom(Patient, weight_loss).

hypothesis(Patient, "Systemic lupus erythematosus"):-
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

hypothesis(Patient, "Inflammatory bowel disease"):-
    symptom(Patient, abdominal_pain),
    symptom(Patient, diarrhea),
    symptom(Patient, fatigue),
    symptom(Patient, rectal_bleeding),
    symptom(Patient, weight_loss).

hypothesis(Patient, "Multiple sclerosis"):-
    symptom(Patient, anxiety),
    symptom(Patient, bladder_issues),
    symptom(Patient, cognitive_problems),
    symptom(Patient, depression),
    symptom(Patient, diarrhea),
    symptom(Patient, dizziness),
    symptom(Patient, fatigue),
    symptom(Patient, numbness),
    symptom(Patient, sexual_dysfunction),
    symptom(Patient, tingling),
    symptom(Patient, vision_problems).

hypothesis(Patient, "Type 1 diabetes mellitus"):-
    symptom(Patient, bladder_issues),
    symptom(Patient, fatigue),
    symptom(Patient, hungry),
    symptom(Patient, numbness),
    symptom(Patient, thirsty),
    symptom(Patient, tingling),
    symptom(Patient, weight_loss),
    symptom(Patient, vision_problems).

hypothesis(Patient, "Guillain Barre Syndrome"):-
    symptom(Patient, abdominal_weakness),
    symptom(Patient, diarrhea),
    symptom(Patient, nausea),
    symptom(Patient, tingling),
    symptom(Patient, vomiting).

hypothesis(Patient, "Chronic Inflammatory Demyelinating Polyneuropathy"):-
    symptom(Patient, loss_of_balance),
    symptom(Patient, loss_of_reflexes),
    symptom(Patient, tingling),
    symptom(Patient, weakness).

hypothesis(Patient, "Psoriasis"):-
    symptom(Patient, fatigue),
    symptom(Patient, fever),
    symptom(Patient, joint_pain),
    symptom(Patient, joint_stiffness),
    symptom(Patient, joint_swelling),
    symptom(Patient, weakness),
    symptom(Patient, weight_loss).

hypothesis(Patient, "graves' disease"):-
    symptom(Patient, diarrhea),
    symptom(Patient, fatigue),
    symptom(Patient, goiter),
    symptom(Patient, heat_intolerance),
    symptom(Patient, muscle_weakness),
    symptom(Patient, nervousness_or_irritability),
    symptom(Patient, trembling_hands),
    symptom(Patient, trouble_sleeping),
    symptom(Patient, weight_loss).

hypothesis(Patient, "Hashimoto's thyroiditis"):-
    symptom(Patient, cold_intorelance),
    symptom(Patient, constipation),
    symptom(Patient, depression),
    symptom(Patient, joint_pain),
    symptom(Patient, memory_problems),
    symptom(Patient, muscle_pain),
    symptom(Patient, tiredness),
    symptom(Patient, weight_gain).
