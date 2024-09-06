CREATE DATABASE avTEc;

CREATE TABLE Estado (
    est_cd_id_estado_serial SERIAL PRIMARY KEY,
    est_tx_nome_estado VARCHAR(100) NOT NULL,
    est_tx_sigla_estado VARCHAR(2) NOT NULL
);


CREATE TABLE Cliente (
    cli_cd_id_serial SERIAL PRIMARY KEY,
    cli_tx_razao_social VARCHAR(255) NOT NULL,
    cli_fk_estado_id INT NOT NULL,
    FOREIGN KEY (cli_fk_estado_id) REFERENCES Estado(est_cd_id_estado_serial)
);


CREATE TABLE Tipo_Telefone(
	tip_cd_id_tipo SERIAL PRIMARY KEY,
	tip_tx_descricao_tipo VARCHAR(250) NOT NULL
);

CREATE TABLE Telefone (
    tel_int_id SERIAL PRIMARY KEY,
    tel_int_numero VARCHAR(20) NOT NULL,
    tel_fk_tipo_id INT NOT NULL, 
    tel_fk_cliente_id INT NOT NULL,
    FOREIGN KEY (tel_fk_cliente_id) REFERENCES Cliente(cli_cd_id_serial),
    FOREIGN KEY (tel_fk_tipo_id) REFERENCES Tipo_Telefone(tip_cd_id_tipo)

);



