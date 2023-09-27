# projetoservlet
EXEMPLO DE SISTEMA CONSTRUÍDO COM SERVLETS E JSP


bando de dados: postgres
nome do banco: teste

script criação da tabela

CREATE TABLE public.tarefa
(
  id serial NOT NULL,
  titulo character varying (100) not null,
  descricao character varying not null,
  data_criacao timestamp without time zone not null,
  status character varying(1) not null,
  CONSTRAINT tarefa_pkey PRIMARY KEY (id)
) 
WITH (
  OIDS=FALSE
);
