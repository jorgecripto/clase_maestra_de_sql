CREATE TABLE cuentas_bancarias2 (
    id_cuenta SERIAL PRIMARY KEY,
    cliente_nombre VARCHAR(100) NOT NULL,
    saldo NUMERIC(10.2)
);

INSERT INTO cuentas_bancarias2 (cliente_nombre, saldo) 
    VALUES ('cliente_A', 800.00),
            ('cliente_B', 700.00),
            ('cliente_C', 2000.00);

BEGIN;
UPDATE cuentas_bancarias2
	SET saldo = saldo - 225
	WHERE cliente_nombre = 'cliente_A';
UPDATE cuentas_bancarias2
	SET saldo = saldo + 225
	WHERE cliente_nombre = 'cliente_B';
SAVEPOINT savepoint_transferencia1;
UPDATE cuentas_bancarias2
    SET saldo = saldo - 100
    WHERE cliente_nombre = 'cliente_B';
UPDATE cuentas_bancarias2
    SET saldo = saldo + 100
    WHERE cliente_nombre = 'cliente_C';
ROLLBACK TO savepoint_transferencia1;
COMMIT;

SELECT * FROM cuentas_bancarias2;