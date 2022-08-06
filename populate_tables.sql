INSERT INTO cidade(Ccodigo, Cnome, Cestado, Cpais) VALUES(10, 'Porto Alegre', 'Rio Grande do Sul', 'Brasil');
INSERT INTO cidade(Ccodigo, Cnome, Cestado, Cpais) VALUES(20, 'Calgary', 'Alberta', 'Canadá');
INSERT INTO cidade(Ccodigo, Cnome, Cestado, Cpais) VALUES(30, 'San Francisco', 'California', 'Estados Unidos');

INSERT INTO aeroporto(Acodigo, Ccodigo) VALUE('POA', 10);
INSERT INTO aeroporto(Acodigo, Ccodigo) VALUE('YYC', 20);
INSERT INTO aeroporto(Acodigo, Ccodigo) VALUE('SFO', 30);

INSERT INTO tipoaeronave(TAcodigo, descricao) VALUES(110, 'Boing-1337');
INSERT INTO tipoaeronave(TAcodigo, descricao) VALUES(120, 'C-130 Hercules');
INSERT INTO tipoaeronave(TAcodigo, descricao) VALUES(130, 'Boing-777');

INSERT INTO horario(HdiaSemana, HorarioChegada, HorarioPartida) VALUES('SEGUNDA', '13:00', '18:00');
INSERT INTO horario(HdiaSemana, HorarioChegada, HorarioPartida) VALUES('TERÇA', '14:00', '19:00');
INSERT INTO horario(HdiaSemana, HorarioChegada, HorarioPartida) VALUES('QUARTA', '15:00', '20:00');
INSERT INTO horario(HdiaSemana, HorarioChegada, HorarioPartida) VALUES('QUINTA', '16:00', '21:00');
INSERT INTO horario(HdiaSemana, HorarioChegada, HorarioPartida) VALUES('SEXTA', '17:00', '22:00');

INSERT INTO passageiro(Pcodigo, Pnome) VALUES(210, 'Pietro Piva Vieira');
INSERT INTO passageiro(Pcodigo, Pnome) VALUES(220, 'João Silva');
INSERT INTO passageiro(Pcodigo, Pnome) VALUES(230, 'Maria Antonietta');
INSERT INTO passageiro(Pcodigo, Pnome) VALUES(240, 'André Freitas');
INSERT INTO passageiro(Pcodigo, Pnome) VALUES(250, 'Carlos José');

UPDATE passageiro SET Pnome = 'Pietro P. Vieira' WHERE Pcodigo = 210;
DELETE FROM passageiro WHERE Pcodigo = 250;

INSERT INTO voo(Vcodigo) VALUES(143);
INSERT INTO voo(Vcodigo) VALUES(144);
INSERT INTO voo(Vcodigo) VALUES(145);

INSERT INTO assento(Ascodigo, numero, classe) VALUES(410, 1, 'BSC');
INSERT INTO assento(Ascodigo, numero, classe) VALUES(420, 2, 'BSC');
INSERT INTO assento(Ascodigo, numero, classe) VALUES(430, 3, 'BSC');
INSERT INTO assento(Ascodigo, numero, classe) VALUES(440, 1, 'MDM');
INSERT INTO assento(Ascodigo, numero, classe) VALUES(450, 2, 'MDM');
INSERT INTO assento(Ascodigo, numero, classe) VALUES(460, 3, 'MDM');
INSERT INTO assento(Ascodigo, numero, classe) VALUES(470, 1, 'PRM');
INSERT INTO assento(Ascodigo, numero, classe) VALUES(480, 2, 'PRM');
INSERT INTO assento(Ascodigo, numero, classe) VALUES(490, 3, 'PRM');

INSERT INTO trecho(Tcodigo, HdiaSemana, Vcodigo, TAcodigo, AcodigoPartida, AcodigoChegada) VALUES(
	1010, 'SEGUNDA', 143, 110, 'POA', 'YYC'
);

INSERT INTO trecho(Tcodigo, HdiaSemana, Vcodigo, TAcodigo, AcodigoPartida, AcodigoChegada) VALUES(
	1020, 'TERÇA', 144, 120, 'YYC', 'SFO'
);

INSERT INTO trecho(Tcodigo, HdiaSemana, Vcodigo, TAcodigo, AcodigoPartida, AcodigoChegada) VALUES(
	1030, 'QUARTA', 145, 130, 'SFO', 'POA'
);


INSERT INTO reserva(Rcodigo, Pcodigo, dataReserva, prazoValidade) VALUES(710, 210, '31/07/2022', '05/08/2022');
INSERT INTO reserva(Rcodigo, Pcodigo, dataReserva, prazoValidade) VALUES(720, 220, '31/07/2022', '06/08/2022');
INSERT INTO reserva(Rcodigo, Pcodigo, dataReserva, prazoValidade) VALUES(730, 230, '31/07/2022', '07/08/2022');
INSERT INTO reserva(Rcodigo, Pcodigo, dataReserva, prazoValidade) VALUES(740, 240, '05/08/2022', '15/08/2022');

INSERT INTO reservatrecho(RTcodigo, Rcodigo, Tcodigo, Ascodigo) VALUES(
	910, 710, 1010, 470
);

INSERT INTO reservatrecho(RTcodigo, Rcodigo, Tcodigo, Ascodigo) VALUES(
	920, 720, 1010, 410
);

INSERT INTO reservatrecho(RTcodigo, Rcodigo, Tcodigo, Ascodigo) VALUES(
	930, 730, 1010, 440
);

INSERT INTO reservatrecho(RTcodigo, Rcodigo, Tcodigo, Ascodigo) VALUES(
	940, 740, 1020, 490
);
