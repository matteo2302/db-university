

-- 1. Selezionare tutti gli studenti nati nel 1990 (160)
SELECT COUNT(*) FROM `students` WHERE YEAR(`date_of_birth`) = '1990';

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT COUNT(*) FROM `courses` WHERE `cfu` > '10';

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT COUNT(*) FROM `students` WHERE YEAR(`date_of_birth`) > '1993';
SELECT COUNT(*) FROM `students` WHERE YEAR(CURRENT_DATE()) - YEAR(`date_of_birth`) > '30';

-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
SELECT COUNT(*) FROM `courses` WHERE `period` = 'I semestre' AND `year` = '1';

-- 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)
SELECT count(*) FROM `exams` WHERE `date` = '2020-06-20' AND `hour` > '14:00:00';

-- 6. Selezionare tutti i corsi di laurea magistrale (38)
SELECT COUNT(*) FROM `degrees` WHERE `level` = 'magistrale';

-- 7. Da quanti dipartimenti è composta l'università? (12)
SELECT COUNT(*) FROM `departments`;



--  groupby

-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS `studenti`, `enrolment_date` AS `iscrizione` FROM `students` GROUP BY `enrolment_date`;

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) `insegnanti`, `office_address` as `ufficio` FROM `teachers` GROUP BY `office_address` HAVING `insegnanti` > '1';

-- 3. Calcolare la media dei voti di ogni appello d'esame


-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento