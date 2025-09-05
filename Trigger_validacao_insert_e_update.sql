USE sistema_universidade;

DELIMITER //

CREATE TRIGGER ValidarDatasAulaInsert
BEFORE INSERT ON Aula
FOR EACH ROW
BEGIN
	IF NEW.Data_Hora_inicio >= NEW.Data_Hora_fim THEN
		SIGNAL SQLSTATE	 '45000'
        SET MESSAGE_TEXT = 'Erro: Data/hora de início deve ser anterior à data/hora de fim';
	END IF;
END //

DELIMITER ;

DELIMITER //

-- Trigger para validação em UPDATE
CREATE TRIGGER ValidarDatasAulaUpdate
BEFORE UPDATE ON Aula
FOR EACH ROW
BEGIN
	IF NEW.Data_Hora_inicio >= NEW.Data_Hora_fim THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Erro: Data/hora de ínicio deve ser anterior à data/hora de fim';
	END IF;
END //

DELIMITER ;

INSERT INTO Aula (id_turma, id_disciplina, id_professor, Data_Hora_inicio, Data_Hora_fim)
VALUES (1, 1, 1, '2023-06-01 10:00:00', '2023-06-01 08:00:00');

