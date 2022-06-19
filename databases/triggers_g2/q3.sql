USE ASIATICAS_DB

DROP TRIGGER IF EXISTS trg_q3;

DELIMITER $$
CREATE TRIGGER trg_q3 AFTER INSERT ON ITEMCOMPRAS
FOR EACH ROW
BEGIN
    UPDATE PRODUTOS SET quantidade = quantidade + NEW.quantidade WHERE codigo = NEW.codproduto;
END$$
DELIMITER ;

-- INSERT INTO ITEMCOMPRAS VALUES(0312, 0312, 120, 120, 5);
