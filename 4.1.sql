
SET @multa = 0.00;
CALL calcular_multa_simple(15, @multa);
SELECT @multa AS monto_multa_calculado;