CREATE TABLE resiliadata."empresa" (
  "id_empresa" SERIAL PRIMARY KEY,
  "cnpj" varchar(15) UNIQUE,
  "nome_empresa" varchar(30) NOT NULL ,
  "endereco" text NOT NULL,
  "tel_empresa" varchar(30) NOT NULL,
  "ativo" bool NOT NULL
);

CREATE TABLE resiliadata."tecnologia" (
  "id_tecnologia" SERIAL PRIMARY KEY,
  "id_areaTec" int NOT NULL,
  "nome_tecnologia" varchar(30) NOT NULL,
  "area_tecnologia" varchar(30) NOT NULL
);

CREATE TABLE resiliadata."colabradores" (
  "id_colaborador" SERIAL PRIMARY KEY,
  "id_empresa" int NOT NULL,
  "nome_colaborador" varchar(50) NOT NULL,
  "email_colaborador" varchar(50) UNIQUE,
  "cargo_colaborador" varchar(30) NOT NULL,
  "data_inicio" date NOT NULL,
  "data_fim" date
);

CREATE TABLE resiliadata."relação_empresa_tecnologia" (
  "id_relacao" SERIAL PRIMARY KEY,
  "id_empresa" int NOT NULL,
  "id_tecnologia" int NOT NULL,
  "data_inicio_relacao" date NOT NULL
);

CREATE TABLE resiliadata."areas_tecnologia" (
  "id_areaTec" SERIAL PRIMARY KEY,
  "nome_area_tecnologia" varchar(30) NOT NULL
);

ALTER TABLE resiliadata."relação_empresa_tecnologia" ADD FOREIGN KEY ("id_empresa") REFERENCES resiliadata."empresa" ("id_empresa");

ALTER TABLE resiliadata."relação_empresa_tecnologia" ADD FOREIGN KEY ("id_tecnologia") REFERENCES resiliadata."tecnologia" ("id_tecnologia");

ALTER TABLE resiliadata."colabradores" ADD FOREIGN KEY ("id_empresa") REFERENCES resiliadata."empresa" ("id_empresa");

ALTER TABLE resiliadata."tecnologia" ADD FOREIGN KEY ("id_areaTec") REFERENCES resiliadata."areas_tecnologia" ("id_areaTec");

