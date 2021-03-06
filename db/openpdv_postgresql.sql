--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ecf_documento; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ecf_documento (
    ecf_documento_id integer NOT NULL,
    ecf_z_id integer DEFAULT NULL,
    ecf_impressora_id integer NOT NULL,
    ecf_documento_usuario integer NOT NULL,
    ecf_documento_coo integer NOT NULL,
    ecf_documento_gnf integer NOT NULL,
    ecf_documento_grg integer NOT NULL,
    ecf_documento_cdc integer NOT NULL,
    ecf_documento_tipo character varying(2) NOT NULL,
    ecf_documento_data timestamp without time zone NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.ecf_documento OWNER TO openpdv;

--
-- Name: ecf_documento_ecf_documento_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE ecf_documento_ecf_documento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecf_documento_ecf_documento_id_seq OWNER TO openpdv;

--
-- Name: ecf_documento_ecf_documento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE ecf_documento_ecf_documento_id_seq OWNED BY ecf_documento.ecf_documento_id;


--
-- Name: ecf_impressora; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ecf_impressora (
    ecf_impressora_id integer NOT NULL,
    ecf_impressora_codigo character varying(2) NOT NULL,
    ecf_impressora_mfadicional character varying(1) NOT NULL,
    ecf_impressora_identificacao character varying(6) NOT NULL,
    ecf_impressora_serie character varying(20) NOT NULL,
    ecf_impressora_tipo character varying(7) NOT NULL,
    ecf_impressora_marca character varying(20) NOT NULL,
    ecf_impressora_modelo character varying(20) NOT NULL,
    ecf_impressora_caixa integer NOT NULL,
    ecf_impressora_ativo boolean NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.ecf_impressora OWNER TO openpdv;

--
-- Name: ecf_impressora_ecf_impressora_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE ecf_impressora_ecf_impressora_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecf_impressora_ecf_impressora_id_seq OWNER TO openpdv;

--
-- Name: ecf_impressora_ecf_impressora_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE ecf_impressora_ecf_impressora_id_seq OWNED BY ecf_impressora.ecf_impressora_id;


--
-- Name: ecf_nota; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ecf_nota (
    ecf_nota_id integer NOT NULL,
    sis_cliente_id integer,
    ecf_nota_serie character varying(3) NOT NULL,
    ecf_nota_subserie character varying(3) NOT NULL,
    ecf_nota_numero integer NOT NULL,
    ecf_nota_data date NOT NULL,
    ecf_nota_bruto numeric(10,2) NOT NULL,
    ecf_nota_desconto numeric(10,2) NOT NULL,
    ecf_nota_liquido numeric(10,2) NOT NULL,
    ecf_nota_pis numeric(10,2) NOT NULL,
    ecf_nota_cofins numeric(10,2) NOT NULL,
    ecf_nota_cancelada boolean NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.ecf_nota OWNER TO openpdv;

--
-- Name: ecf_nota_ecf_nota_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE ecf_nota_ecf_nota_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecf_nota_ecf_nota_id_seq OWNER TO openpdv;

--
-- Name: ecf_nota_ecf_nota_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE ecf_nota_ecf_nota_id_seq OWNED BY ecf_nota.ecf_nota_id;


--
-- Name: ecf_nota_eletronica; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ecf_nota_eletronica (
    ecf_nota_eletronica_id integer NOT NULL,
    sis_cliente_id integer,
    ecf_nota_eletronica_status character varying(15) NOT NULL,
    ecf_nota_eletronica_numero integer NOT NULL,
    ecf_nota_eletronica_data timestamp without time zone NOT NULL,
    ecf_nota_eletronica_valor numeric(10,2) NOT NULL,
    ecf_nota_eletronica_chave character varying(44) NOT NULL,
    ecf_nota_eletronica_protocolo character varying(15) NOT NULL,
    ecf_nota_eletronica_icms numeric(10,2) NOT NULL,
    ecf_nota_eletronica_ipi numeric(10,2) NOT NULL,
    ecf_nota_eletronica_pis numeric(10,2) NOT NULL,
    ecf_nota_eletronica_cofins numeric(10,2) NOT NULL,
    ecf_nota_eletronica_xml text NOT NULL,
    ecf_nota_eletronica_protocolo_cancelado character varying(15) NOT NULL,
    ecf_nota_eletronica_xml_cancelado text NOT NULL,
    ecf_nota_eletronica_recibo character varying(15) NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.ecf_nota_eletronica OWNER TO openpdv;

--
-- Name: ecf_nota_eletronica_ecf_nota_eletronica_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE ecf_nota_eletronica_ecf_nota_eletronica_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecf_nota_eletronica_ecf_nota_eletronica_id_seq OWNER TO openpdv;

--
-- Name: ecf_nota_eletronica_ecf_nota_eletronica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE ecf_nota_eletronica_ecf_nota_eletronica_id_seq OWNED BY ecf_nota_eletronica.ecf_nota_eletronica_id;


--
-- Name: ecf_nota_produto; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ecf_nota_produto (
    ecf_nota_produto_id integer NOT NULL,
    ecf_nota_id integer NOT NULL,
    prod_produto_id integer NOT NULL,
    prod_embalagem_id integer NOT NULL,
    ecf_nota_produto_barra character varying(14) DEFAULT NULL::character varying,
    ecf_nota_produto_quantidade numeric(10,4) NOT NULL,
    ecf_nota_produto_bruto numeric(10,2) NOT NULL,
    ecf_nota_produto_desconto numeric(10,2) NOT NULL,
    ecf_nota_produto_liquido numeric(10,2) NOT NULL,
    ecf_nota_produto_icms numeric(4,2) NOT NULL,
    ecf_nota_produto_ipi numeric(4,2) NOT NULL,
    ecf_nota_produto_ordem integer NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.ecf_nota_produto OWNER TO openpdv;

--
-- Name: ecf_nota_produto_ecf_nota_produto_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE ecf_nota_produto_ecf_nota_produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecf_nota_produto_ecf_nota_produto_id_seq OWNER TO openpdv;

--
-- Name: ecf_nota_produto_ecf_nota_produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE ecf_nota_produto_ecf_nota_produto_id_seq OWNED BY ecf_nota_produto.ecf_nota_produto_id;


--
-- Name: ecf_pagamento; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ecf_pagamento (
    ecf_pagamento_id integer NOT NULL,
    ecf_venda_id integer NOT NULL,
    ecf_pagamento_tipo_id integer NOT NULL,
    ecf_pagamento_gnf integer NOT NULL,
    ecf_pagamento_data timestamp without time zone NOT NULL,
    ecf_pagamento_valor numeric(12,2) NOT NULL,
    ecf_pagamento_nsu character varying(32) NOT NULL,
    ecf_pagamento_estorno character(1) NOT NULL,
    ecf_pagamento_estorno_gnf integer,
    ecf_pagamento_estorno_data timestamp without time zone,
    ecf_pagamento_estorno_valor numeric(12,2) DEFAULT NULL::numeric,
    ecf_pagamento_estorno_nsu character varying(12) DEFAULT NULL::character varying,
    ead character varying(260) NULL
);


ALTER TABLE public.ecf_pagamento OWNER TO openpdv;

--
-- Name: ecf_pagamento_ecf_pagamento_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE ecf_pagamento_ecf_pagamento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecf_pagamento_ecf_pagamento_id_seq OWNER TO openpdv;

--
-- Name: ecf_pagamento_ecf_pagamento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE ecf_pagamento_ecf_pagamento_id_seq OWNED BY ecf_pagamento.ecf_pagamento_id;


--
-- Name: ecf_pagamento_parcela; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ecf_pagamento_parcela (
    ecf_pagamento_parcela_id integer NOT NULL,
    ecf_pagamento_id integer NOT NULL,
    ecf_pagamento_parcela_data date NOT NULL,
    ecf_pagamento_parcela_valor numeric(12,2) NOT NULL,
    ecf_pagamento_parcela_nsu character varying(32) NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.ecf_pagamento_parcela OWNER TO openpdv;

--
-- Name: ecf_pagamento_parcela_ecf_pagamento_parcela_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE ecf_pagamento_parcela_ecf_pagamento_parcela_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecf_pagamento_parcela_ecf_pagamento_parcela_id_seq OWNER TO openpdv;

--
-- Name: ecf_pagamento_parcela_ecf_pagamento_parcela_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE ecf_pagamento_parcela_ecf_pagamento_parcela_id_seq OWNED BY ecf_pagamento_parcela.ecf_pagamento_parcela_id;


--
-- Name: ecf_pagamento_tipo; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ecf_pagamento_tipo (
    ecf_pagamento_tipo_id integer NOT NULL,
    ecf_pagamento_tipo_codigo character varying(2) NOT NULL,
    ecf_pagamento_tipo_descricao character varying(20) NOT NULL,
    ecf_pagamento_tipo_tef boolean NOT NULL,
    ecf_pagamento_tipo_vinculado boolean NOT NULL,
    ecf_pagamento_tipo_debito boolean NOT NULL,
    ecf_pagamento_tipo_rede character varying(20) NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.ecf_pagamento_tipo OWNER TO openpdv;

--
-- Name: ecf_pagamento_tipo_ecf_pagamento_tipo_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE ecf_pagamento_tipo_ecf_pagamento_tipo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecf_pagamento_tipo_ecf_pagamento_tipo_id_seq OWNER TO openpdv;

--
-- Name: ecf_pagamento_tipo_ecf_pagamento_tipo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE ecf_pagamento_tipo_ecf_pagamento_tipo_id_seq OWNED BY ecf_pagamento_tipo.ecf_pagamento_tipo_id;


--
-- Name: ecf_pagamento_totais; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ecf_pagamento_totais (
    ecf_pagamento_totais_id integer NOT NULL,
    ecf_pagamento_tipo_id integer NOT NULL,
    ecf_pagamento_totais_data date NOT NULL,
    ecf_pagamento_totais_documento character varying(20) NOT NULL,
    ecf_pagamento_totais_valor numeric(12,2) NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.ecf_pagamento_totais OWNER TO openpdv;

--
-- Name: ecf_pagamento_totais_ecf_pagamento_totais_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE ecf_pagamento_totais_ecf_pagamento_totais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecf_pagamento_totais_ecf_pagamento_totais_id_seq OWNER TO openpdv;

--
-- Name: ecf_pagamento_totais_ecf_pagamento_totais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE ecf_pagamento_totais_ecf_pagamento_totais_id_seq OWNED BY ecf_pagamento_totais.ecf_pagamento_totais_id;


--
-- Name: ecf_troca; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ecf_troca (
    ecf_troca_id integer NOT NULL,
    ecf_venda_id integer,
    ecf_troca_cliente character varying(18) NOT NULL,
    ecf_troca_data timestamp without time zone NOT NULL,
    ecf_troca_valor numeric(10,2) NOT NULL,
    ecf_troca_ecf integer NOT NULL,
    ecf_troca_coo integer NOT NULL,
    ecf_troca_ativo boolean NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.ecf_troca OWNER TO openpdv;

--
-- Name: ecf_troca_ecf_troca_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE ecf_troca_ecf_troca_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecf_troca_ecf_troca_id_seq OWNER TO openpdv;

--
-- Name: ecf_troca_ecf_troca_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE ecf_troca_ecf_troca_id_seq OWNED BY ecf_troca.ecf_troca_id;


--
-- Name: ecf_troca_produto; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ecf_troca_produto (
    ecf_troca_produto_id integer NOT NULL,
    ecf_troca_id integer NOT NULL,
    prod_produto_id integer NOT NULL,
    prod_embalagem_id integer NOT NULL,
    ecf_troca_produto_barra character varying(14) DEFAULT NULL::character varying,
    ecf_troca_produto_quantidade numeric(10,4) NOT NULL,
    ecf_troca_produto_valor numeric(10,2) NOT NULL,
    ecf_troca_produto_total numeric(10,2) NOT NULL,
    ecf_troca_produto_ordem integer NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.ecf_troca_produto OWNER TO openpdv;

--
-- Name: ecf_troca_produto_ecf_troca_produto_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE ecf_troca_produto_ecf_troca_produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecf_troca_produto_ecf_troca_produto_id_seq OWNER TO openpdv;

--
-- Name: ecf_troca_produto_ecf_troca_produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE ecf_troca_produto_ecf_troca_produto_id_seq OWNED BY ecf_troca_produto.ecf_troca_produto_id;


--
-- Name: ecf_venda; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ecf_venda (
    ecf_venda_id integer NOT NULL,
    sis_usuario_id integer NOT NULL,
    sis_vendedor_id integer,
    sis_gerente_id integer,
    sis_cliente_id integer,
    ecf_impressora_id integer NOT NULL,
    ecf_z_id integer,
    ecf_venda_ccf integer NOT NULL,
    ecf_venda_coo integer NOT NULL,
    ecf_venda_data timestamp without time zone NOT NULL,
    ecf_venda_bruto numeric(10,2) NOT NULL,
    ecf_venda_desconto numeric(10,2) NOT NULL,
    ecf_venda_acrescimo numeric(10,2) NOT NULL,
    ecf_venda_liquido numeric(10,2) NOT NULL,
    ecf_venda_fechada boolean NOT NULL,
    ecf_venda_cancelada boolean NOT NULL,
    ecf_venda_sinc boolean NOT NULL,
    ecf_venda_observacao character varying(255),
    ead character varying(260) NULL
);


ALTER TABLE public.ecf_venda OWNER TO openpdv;

--
-- Name: ecf_venda_ecf_venda_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE ecf_venda_ecf_venda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecf_venda_ecf_venda_id_seq OWNER TO openpdv;

--
-- Name: ecf_venda_ecf_venda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE ecf_venda_ecf_venda_id_seq OWNED BY ecf_venda.ecf_venda_id;


--
-- Name: ecf_venda_produto; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ecf_venda_produto (
    ecf_venda_produto_id integer NOT NULL,
    ecf_venda_id integer NOT NULL,
    prod_embalagem_id integer NOT NULL,
    prod_produto_id integer NOT NULL,
    ecf_venda_produto_barra character varying(14) DEFAULT NULL::character varying,
    ecf_venda_produto_cst_cson character varying(3) NOT NULL,
    ecf_venda_produto_tributacao character(1) NOT NULL,
    ecf_venda_produto_icms numeric(4,2) NOT NULL,
    ecf_venda_produto_issqn numeric(4,2) NOT NULL,
    ecf_venda_produto_quantidade numeric(10,4) NOT NULL,
    ecf_venda_produto_bruto numeric(10,2) NOT NULL,
    ecf_venda_produto_desconto numeric(10,2) NOT NULL,
    ecf_venda_produto_acrescimo numeric(10,2) NOT NULL,
    ecf_venda_produto_liquido numeric(10,2) NOT NULL,
    ecf_venda_produto_total numeric(10,2) NOT NULL,
    ecf_venda_produto_cancelado boolean NOT NULL,
    ecf_venda_produto_ordem integer NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.ecf_venda_produto OWNER TO openpdv;

--
-- Name: ecf_venda_produto_ecf_venda_produto_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE ecf_venda_produto_ecf_venda_produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecf_venda_produto_ecf_venda_produto_id_seq OWNER TO openpdv;

--
-- Name: ecf_venda_produto_ecf_venda_produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE ecf_venda_produto_ecf_venda_produto_id_seq OWNED BY ecf_venda_produto.ecf_venda_produto_id;


--
-- Name: ecf_z; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ecf_z (
    ecf_z_id integer NOT NULL,
    ecf_impressora_id integer NOT NULL,
    ecf_z_usuario integer NOT NULL,
    ecf_z_crz integer NOT NULL,
    ecf_z_coo_ini integer NOT NULL,
    ecf_z_coo_fin integer NOT NULL,
    ecf_z_cro integer NOT NULL,
    ecf_z_movimento date NOT NULL,
    ecf_z_emissao timestamp without time zone NOT NULL,
    ecf_z_bruto numeric(14,2) NOT NULL,
    ecf_z_gt numeric(14,2) NOT NULL,
    ecf_z_issqn boolean NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.ecf_z OWNER TO openpdv;

--
-- Name: ecf_z_ecf_z_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE ecf_z_ecf_z_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecf_z_ecf_z_id_seq OWNER TO openpdv;

--
-- Name: ecf_z_ecf_z_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE ecf_z_ecf_z_id_seq OWNED BY ecf_z.ecf_z_id;


--
-- Name: ecf_z_totais; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ecf_z_totais (
    ecf_z_totais_id integer NOT NULL,
    ecf_z_id integer NOT NULL,
    ecf_z_totais_codigo character varying(7) NOT NULL,
    ecf_z_totais_valor numeric(13,2) NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.ecf_z_totais OWNER TO openpdv;

--
-- Name: ecf_z_totais_ecf_z_totais_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE ecf_z_totais_ecf_z_totais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecf_z_totais_ecf_z_totais_id_seq OWNER TO openpdv;

--
-- Name: ecf_z_totais_ecf_z_totais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE ecf_z_totais_ecf_z_totais_id_seq OWNED BY ecf_z_totais.ecf_z_totais_id;


--
-- Name: ibpt; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE ibpt (
    ibpt_codigo character varying(10) NOT NULL,
    ibpt_ex character varying(100),
    ibpt_tabela integer NOT NULL,
    ibpt_descricao character varying(500) NOT NULL,
    ibpt_aliqnac numeric(10,2) NOT NULL,
    ibpt_aliqimp numeric(10,2) NOT NULL,
    ibpt_versao character varying(5),
    ead character varying(260) NULL
);


ALTER TABLE public.ibpt OWNER TO openpdv;

--
-- Name: prod_composicao; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE prod_composicao (
    prod_composicao_id integer NOT NULL,
    prod_produto_principal integer NOT NULL,
    prod_produto_id integer NOT NULL,
    prod_embalagem_id integer NOT NULL,
    prod_composicao_quantidade numeric(10,4) NOT NULL,
    prod_composicao_valor numeric(10,2) NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.prod_composicao OWNER TO openpdv;

--
-- Name: prod_composicao_prod_composicao_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE prod_composicao_prod_composicao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prod_composicao_prod_composicao_id_seq OWNER TO openpdv;

--
-- Name: prod_composicao_prod_composicao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE prod_composicao_prod_composicao_id_seq OWNED BY prod_composicao.prod_composicao_id;


--
-- Name: prod_embalagem; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE prod_embalagem (
    prod_embalagem_id integer NOT NULL,
    prod_embalagem_nome character varying(6) NOT NULL,
    prod_embalagem_descricao character varying(100) NOT NULL,
    prod_embalagem_unidade integer NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.prod_embalagem OWNER TO openpdv;

--
-- Name: prod_embalagem_prod_embalagem_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE prod_embalagem_prod_embalagem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prod_embalagem_prod_embalagem_id_seq OWNER TO openpdv;

--
-- Name: prod_embalagem_prod_embalagem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE prod_embalagem_prod_embalagem_id_seq OWNED BY prod_embalagem.prod_embalagem_id;


--
-- Name: prod_grade; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE prod_grade (
    prod_grade_id integer NOT NULL,
    prod_produto_id integer NOT NULL,
    prod_grade_barra character varying(14) NOT NULL,
    prod_grade_tamanho character varying(50) NOT NULL,
    prod_grade_cor character varying(50) NOT NULL,
    prod_grade_opcao character varying(50) NOT NULL,
    prod_grade_estoque numeric(10,4) NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.prod_grade OWNER TO openpdv;

--
-- Name: prod_grade_prod_grade_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE prod_grade_prod_grade_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prod_grade_prod_grade_id_seq OWNER TO openpdv;

--
-- Name: prod_grade_prod_grade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE prod_grade_prod_grade_id_seq OWNED BY prod_grade.prod_grade_id;


--
-- Name: prod_preco; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE prod_preco (
    prod_preco_id integer NOT NULL,
    prod_produto_id integer NOT NULL,
    prod_embalagem_id integer NOT NULL,
    prod_preco_valor numeric(10,2) NOT NULL,
    prod_preco_barra character varying(14) DEFAULT NULL::character varying,
    ead character varying(260) NULL
);


ALTER TABLE public.prod_preco OWNER TO openpdv;

--
-- Name: prod_preco_prod_preco_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE prod_preco_prod_preco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prod_preco_prod_preco_id_seq OWNER TO openpdv;

--
-- Name: prod_preco_prod_preco_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE prod_preco_prod_preco_id_seq OWNED BY prod_preco.prod_preco_id;


--
-- Name: prod_produto; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE prod_produto (
    prod_produto_id integer NOT NULL,
    prod_embalagem_id integer NOT NULL,
    prod_produto_ncm character varying(8) NOT NULL,
    prod_produto_barra character varying(14) DEFAULT NULL::character varying,
    prod_produto_descricao character varying(100) NOT NULL,
    prod_produto_referencia character varying(20) NOT NULL,
    prod_produto_preco numeric(10,2) NOT NULL,
    prod_produto_estoque numeric(10,4) NOT NULL,
    prod_produto_tipo character varying(2) NOT NULL,
    prod_produto_origem character(1) NOT NULL,
    prod_produto_cst_cson character varying(3) NOT NULL,
    prod_produto_tributacao character(1) NOT NULL,
    prod_produto_icms numeric(4,2) NOT NULL,
    prod_produto_issqn numeric(4,2) NOT NULL,
    prod_produto_iat character(1) NOT NULL,
    prod_produto_ippt character(1) NOT NULL,
    prod_produto_cadastrado timestamp without time zone NOT NULL,
    prod_produto_alterado timestamp without time zone,
    prod_produto_ativo boolean NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.prod_produto OWNER TO openpdv;

--
-- Name: prod_produto_prod_produto_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE prod_produto_prod_produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prod_produto_prod_produto_id_seq OWNER TO openpdv;

--
-- Name: prod_produto_prod_produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE prod_produto_prod_produto_id_seq OWNED BY prod_produto.prod_produto_id;


--
-- Name: sis_cliente; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE sis_cliente (
    sis_cliente_id integer NOT NULL,
    sis_municipio_id integer NOT NULL,
    sis_cliente_doc character varying(14) NOT NULL,
    sis_cliente_doc1 character varying(20) NOT NULL,
    sis_cliente_nome character varying(60) NOT NULL,
    sis_cliente_endereco character varying(100) NOT NULL,
    sis_cliente_numero integer NOT NULL,
    sis_cliente_complemento character varying(100) NOT NULL,
    sis_cliente_bairro character varying(100) NOT NULL,
    sis_cliente_cep character varying(9) NOT NULL,
    sis_cliente_telefone character varying(100) NOT NULL,
    sis_cliente_email character varying(100) NOT NULL,
    sis_cliente_data timestamp without time zone NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.sis_cliente OWNER TO openpdv;

--
-- Name: sis_cliente_sis_cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE sis_cliente_sis_cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sis_cliente_sis_cliente_id_seq OWNER TO openpdv;

--
-- Name: sis_cliente_sis_cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE sis_cliente_sis_cliente_id_seq OWNED BY sis_cliente.sis_cliente_id;


--
-- Name: sis_empresa; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE sis_empresa (
    sis_empresa_id integer NOT NULL,
    sis_municipio_id integer NOT NULL,
    sis_empresa_razao character varying(100) NOT NULL,
    sis_empresa_fantasia character varying(100) NOT NULL,
    sis_empresa_cnpj character varying(14) NOT NULL,
    sis_empresa_ie character varying(14) NOT NULL,
    sis_empresa_im character varying(14) NOT NULL,
    sis_empresa_logradouro character varying(100) NOT NULL,
    sis_empresa_numero integer NOT NULL,
    sis_empresa_complemento character varying(50) NOT NULL,
    sis_empresa_bairro character varying(50) NOT NULL,
    sis_empresa_cep character varying(8) NOT NULL,
    sis_empresa_responsavel character varying(50) NOT NULL,
    sis_empresa_fone character varying(10) NOT NULL,
    sis_empresa_email character varying(100) NOT NULL,
    sis_empresa_contador boolean NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.sis_empresa OWNER TO openpdv;

--
-- Name: sis_empresa_sis_empresa_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE sis_empresa_sis_empresa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sis_empresa_sis_empresa_id_seq OWNER TO openpdv;

--
-- Name: sis_empresa_sis_empresa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE sis_empresa_sis_empresa_id_seq OWNED BY sis_empresa.sis_empresa_id;


--
-- Name: sis_estado; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE sis_estado (
    sis_estado_id integer NOT NULL,
    sis_estado_ibge integer NOT NULL,
    sis_estado_descricao character varying(100) NOT NULL,
    sis_estado_sigla character(2) NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.sis_estado OWNER TO openpdv;

--
-- Name: sis_estado_sis_estado_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE sis_estado_sis_estado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sis_estado_sis_estado_id_seq OWNER TO openpdv;

--
-- Name: sis_estado_sis_estado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE sis_estado_sis_estado_id_seq OWNED BY sis_estado.sis_estado_id;


--
-- Name: sis_municipio; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE sis_municipio (
    sis_municipio_id integer NOT NULL,
    sis_estado_id integer NOT NULL,
    sis_municipio_ibge integer NOT NULL,
    sis_municipio_descricao character varying(100) NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.sis_municipio OWNER TO openpdv;

--
-- Name: sis_municipio_sis_municipio_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE sis_municipio_sis_municipio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sis_municipio_sis_municipio_id_seq OWNER TO openpdv;

--
-- Name: sis_municipio_sis_municipio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE sis_municipio_sis_municipio_id_seq OWNED BY sis_municipio.sis_municipio_id;


--
-- Name: sis_usuario; Type: TABLE; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE TABLE sis_usuario (
    sis_usuario_id integer NOT NULL,
    sis_usuario_login character varying(40) NOT NULL,
    sis_usuario_senha character varying(40) NOT NULL,
    sis_usuario_desconto integer NOT NULL,
    sis_usuario_ativo boolean NOT NULL,
    sis_usuario_caixa boolean NOT NULL,
    sis_usuario_gerente boolean NOT NULL,
    ead character varying(260) NULL
);


ALTER TABLE public.sis_usuario OWNER TO openpdv;

--
-- Name: sis_usuario_sis_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: openpdv
--

CREATE SEQUENCE sis_usuario_sis_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sis_usuario_sis_usuario_id_seq OWNER TO openpdv;

--
-- Name: sis_usuario_sis_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: openpdv
--

ALTER SEQUENCE sis_usuario_sis_usuario_id_seq OWNED BY sis_usuario.sis_usuario_id;


--
-- Name: ecf_documento_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_documento ALTER COLUMN ecf_documento_id SET DEFAULT nextval('ecf_documento_ecf_documento_id_seq'::regclass);


--
-- Name: ecf_impressora_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_impressora ALTER COLUMN ecf_impressora_id SET DEFAULT nextval('ecf_impressora_ecf_impressora_id_seq'::regclass);


--
-- Name: ecf_nota_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_nota ALTER COLUMN ecf_nota_id SET DEFAULT nextval('ecf_nota_ecf_nota_id_seq'::regclass);


--
-- Name: ecf_nota_eletronica_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_nota_eletronica ALTER COLUMN ecf_nota_eletronica_id SET DEFAULT nextval('ecf_nota_eletronica_ecf_nota_eletronica_id_seq'::regclass);


--
-- Name: ecf_nota_produto_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_nota_produto ALTER COLUMN ecf_nota_produto_id SET DEFAULT nextval('ecf_nota_produto_ecf_nota_produto_id_seq'::regclass);


--
-- Name: ecf_pagamento_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_pagamento ALTER COLUMN ecf_pagamento_id SET DEFAULT nextval('ecf_pagamento_ecf_pagamento_id_seq'::regclass);


--
-- Name: ecf_pagamento_parcela_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_pagamento_parcela ALTER COLUMN ecf_pagamento_parcela_id SET DEFAULT nextval('ecf_pagamento_parcela_ecf_pagamento_parcela_id_seq'::regclass);


--
-- Name: ecf_pagamento_tipo_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_pagamento_tipo ALTER COLUMN ecf_pagamento_tipo_id SET DEFAULT nextval('ecf_pagamento_tipo_ecf_pagamento_tipo_id_seq'::regclass);


--
-- Name: ecf_pagamento_totais_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_pagamento_totais ALTER COLUMN ecf_pagamento_totais_id SET DEFAULT nextval('ecf_pagamento_totais_ecf_pagamento_totais_id_seq'::regclass);


--
-- Name: ecf_troca_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_troca ALTER COLUMN ecf_troca_id SET DEFAULT nextval('ecf_troca_ecf_troca_id_seq'::regclass);


--
-- Name: ecf_troca_produto_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_troca_produto ALTER COLUMN ecf_troca_produto_id SET DEFAULT nextval('ecf_troca_produto_ecf_troca_produto_id_seq'::regclass);


--
-- Name: ecf_venda_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_venda ALTER COLUMN ecf_venda_id SET DEFAULT nextval('ecf_venda_ecf_venda_id_seq'::regclass);


--
-- Name: ecf_venda_produto_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_venda_produto ALTER COLUMN ecf_venda_produto_id SET DEFAULT nextval('ecf_venda_produto_ecf_venda_produto_id_seq'::regclass);


--
-- Name: ecf_z_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_z ALTER COLUMN ecf_z_id SET DEFAULT nextval('ecf_z_ecf_z_id_seq'::regclass);


--
-- Name: ecf_z_totais_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_z_totais ALTER COLUMN ecf_z_totais_id SET DEFAULT nextval('ecf_z_totais_ecf_z_totais_id_seq'::regclass);


--
-- Name: prod_composicao_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY prod_composicao ALTER COLUMN prod_composicao_id SET DEFAULT nextval('prod_composicao_prod_composicao_id_seq'::regclass);


--
-- Name: prod_embalagem_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY prod_embalagem ALTER COLUMN prod_embalagem_id SET DEFAULT nextval('prod_embalagem_prod_embalagem_id_seq'::regclass);


--
-- Name: prod_grade_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY prod_grade ALTER COLUMN prod_grade_id SET DEFAULT nextval('prod_grade_prod_grade_id_seq'::regclass);


--
-- Name: prod_preco_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY prod_preco ALTER COLUMN prod_preco_id SET DEFAULT nextval('prod_preco_prod_preco_id_seq'::regclass);


--
-- Name: prod_produto_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY prod_produto ALTER COLUMN prod_produto_id SET DEFAULT nextval('prod_produto_prod_produto_id_seq'::regclass);


--
-- Name: sis_cliente_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY sis_cliente ALTER COLUMN sis_cliente_id SET DEFAULT nextval('sis_cliente_sis_cliente_id_seq'::regclass);


--
-- Name: sis_empresa_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY sis_empresa ALTER COLUMN sis_empresa_id SET DEFAULT nextval('sis_empresa_sis_empresa_id_seq'::regclass);


--
-- Name: sis_estado_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY sis_estado ALTER COLUMN sis_estado_id SET DEFAULT nextval('sis_estado_sis_estado_id_seq'::regclass);


--
-- Name: sis_municipio_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY sis_municipio ALTER COLUMN sis_municipio_id SET DEFAULT nextval('sis_municipio_sis_municipio_id_seq'::regclass);


--
-- Name: sis_usuario_id; Type: DEFAULT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY sis_usuario ALTER COLUMN sis_usuario_id SET DEFAULT nextval('sis_usuario_sis_usuario_id_seq'::regclass);


--
-- Data for Name: ecf_documento; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ecf_documento (ecf_documento_id, ecf_impressora_id, ecf_documento_usuario, ecf_documento_coo, ecf_documento_gnf, ecf_documento_grg, ecf_documento_cdc, ecf_documento_tipo, ecf_documento_data) FROM stdin;
\.


--
-- Name: ecf_documento_ecf_documento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('ecf_documento_ecf_documento_id_seq', 1, false);


--
-- Data for Name: ecf_impressora; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ecf_impressora (ecf_impressora_id, ecf_impressora_codigo, ecf_impressora_mfadicional, ecf_impressora_identificacao, ecf_impressora_serie, ecf_impressora_tipo, ecf_impressora_marca, ecf_impressora_modelo, ecf_impressora_caixa, ecf_impressora_ativo) FROM stdin;
1	2D	 	010100	EMULADOR	ECF-IF	BEMATECH	MP-2100 TH FI	1	1
\.


--
-- Name: ecf_impressora_ecf_impressora_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('ecf_impressora_ecf_impressora_id_seq', 1, false);


--
-- Data for Name: ecf_nota; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ecf_nota (ecf_nota_id, sis_cliente_id, ecf_nota_serie, ecf_nota_subserie, ecf_nota_numero, ecf_nota_data, ecf_nota_bruto, ecf_nota_desconto, ecf_nota_liquido, ecf_nota_pis, ecf_nota_cofins, ecf_nota_cancelada) FROM stdin;
\.


--
-- Name: ecf_nota_ecf_nota_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('ecf_nota_ecf_nota_id_seq', 1, false);


--
-- Data for Name: ecf_nota_eletronica; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ecf_nota_eletronica (ecf_nota_eletronica_id, sis_cliente_id, ecf_nota_eletronica_status, ecf_nota_eletronica_numero, ecf_nota_eletronica_data, ecf_nota_eletronica_valor, ecf_nota_eletronica_chave, ecf_nota_eletronica_protocolo, ecf_nota_eletronica_icms, ecf_nota_eletronica_ipi, ecf_nota_eletronica_pis, ecf_nota_eletronica_cofins, ecf_nota_eletronica_xml, ecf_nota_eletronica_protocolo_cancelado, ecf_nota_eletronica_xml_cancelado, ecf_nota_eletronica_recibo) FROM stdin;
\.


--
-- Name: ecf_nota_eletronica_ecf_nota_eletronica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('ecf_nota_eletronica_ecf_nota_eletronica_id_seq', 1, false);


--
-- Data for Name: ecf_nota_produto; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ecf_nota_produto (ecf_nota_produto_id, ecf_nota_id, prod_produto_id, prod_embalagem_id, ecf_nota_produto_barra, ecf_nota_produto_quantidade, ecf_nota_produto_bruto, ecf_nota_produto_desconto, ecf_nota_produto_liquido, ecf_nota_produto_icms, ecf_nota_produto_ipi, ecf_nota_produto_ordem) FROM stdin;
\.


--
-- Name: ecf_nota_produto_ecf_nota_produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('ecf_nota_produto_ecf_nota_produto_id_seq', 1, false);


--
-- Data for Name: ecf_pagamento; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ecf_pagamento (ecf_pagamento_id, ecf_venda_id, ecf_pagamento_tipo_id, ecf_pagamento_gnf, ecf_pagamento_data, ecf_pagamento_valor, ecf_pagamento_nsu, ecf_pagamento_estorno, ecf_pagamento_estorno_gnf, ecf_pagamento_estorno_data, ecf_pagamento_estorno_valor, ecf_pagamento_estorno_nsu) FROM stdin;
\.


--
-- Name: ecf_pagamento_ecf_pagamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('ecf_pagamento_ecf_pagamento_id_seq', 1, false);


--
-- Data for Name: ecf_pagamento_parcela; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ecf_pagamento_parcela (ecf_pagamento_parcela_id, ecf_pagamento_id, ecf_pagamento_parcela_data, ecf_pagamento_parcela_valor, ecf_pagamento_parcela_nsu) FROM stdin;
\.


--
-- Name: ecf_pagamento_parcela_ecf_pagamento_parcela_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('ecf_pagamento_parcela_ecf_pagamento_parcela_id_seq', 1, false);


--
-- Data for Name: ecf_pagamento_tipo; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ecf_pagamento_tipo (ecf_pagamento_tipo_id, ecf_pagamento_tipo_codigo, ecf_pagamento_tipo_descricao, ecf_pagamento_tipo_tef, ecf_pagamento_tipo_vinculado, ecf_pagamento_tipo_debito, ecf_pagamento_tipo_rede) FROM stdin;
1	01	DINHEIRO	0	0	0	LOJA
2	02	CHEQUE	1	1	0	REDECARD
3	03	VISA CRED.	1	1	0	VISANET
4	03	VISA DEB.	1	1	1	VISANET
5	03	MASTER CRED.	1	1	0	REDECARD
6	03	MASTER DEB.	1	1	1	REDECARD
7	03	AMERICAN	1	1	0	AMEX
8	03	HIPERCARD	1	1	0	HCARD
9	04	TROCA	0	0	0	LOJA
\.


--
-- Name: ecf_pagamento_tipo_ecf_pagamento_tipo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('ecf_pagamento_tipo_ecf_pagamento_tipo_id_seq', 1, false);


--
-- Data for Name: ecf_pagamento_totais; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ecf_pagamento_totais (ecf_pagamento_totais_id, ecf_pagamento_tipo_id, ecf_pagamento_totais_data, ecf_pagamento_totais_documento, ecf_pagamento_totais_valor) FROM stdin;
\.


--
-- Name: ecf_pagamento_totais_ecf_pagamento_totais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('ecf_pagamento_totais_ecf_pagamento_totais_id_seq', 1, false);


--
-- Data for Name: ecf_troca; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ecf_troca (ecf_troca_id, ecf_troca_cliente, ecf_troca_data, ecf_troca_valor, ecf_troca_ecf, ecf_troca_coo, ecf_troca_ativo) FROM stdin;
\.


--
-- Name: ecf_troca_ecf_troca_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('ecf_troca_ecf_troca_id_seq', 1, false);


--
-- Data for Name: ecf_troca_produto; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ecf_troca_produto (ecf_troca_produto_id, ecf_troca_id, prod_produto_id, prod_embalagem_id, ecf_troca_produto_barra, ecf_troca_produto_quantidade, ecf_troca_produto_valor, ecf_troca_produto_total, ecf_troca_produto_ordem) FROM stdin;
\.


--
-- Name: ecf_troca_produto_ecf_troca_produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('ecf_troca_produto_ecf_troca_produto_id_seq', 1, false);


--
-- Data for Name: ecf_venda; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ecf_venda (ecf_venda_id, sis_usuario_id, sis_vendedor_id, sis_gerente_id, sis_cliente_id, ecf_z_id, ecf_troca_id, ecf_venda_ccf, ecf_venda_coo, ecf_venda_data, ecf_venda_bruto, ecf_venda_desconto, ecf_venda_acrescimo, ecf_venda_liquido, ecf_venda_fechada, ecf_venda_cancelada, ecf_venda_observacao) FROM stdin;
\.


--
-- Name: ecf_venda_ecf_venda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('ecf_venda_ecf_venda_id_seq', 1, false);


--
-- Data for Name: ecf_venda_produto; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ecf_venda_produto (ecf_venda_produto_id, ecf_venda_id, prod_embalagem_id, prod_produto_id, ecf_venda_produto_barra, ecf_venda_produto_cst_cson, ecf_venda_produto_tributacao, ecf_venda_produto_icms, ecf_venda_produto_issqn, ecf_venda_produto_quantidade, ecf_venda_produto_bruto, ecf_venda_produto_desconto, ecf_venda_produto_acrescimo, ecf_venda_produto_liquido, ecf_venda_produto_total, ecf_venda_produto_cancelado, ecf_venda_produto_ordem) FROM stdin;
\.


--
-- Name: ecf_venda_produto_ecf_venda_produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('ecf_venda_produto_ecf_venda_produto_id_seq', 1, false);


--
-- Data for Name: ecf_z; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ecf_z (ecf_z_id, ecf_impressora_id, ecf_z_usuario, ecf_z_crz, ecf_z_coo_ini, ecf_z_coo_fin, ecf_z_cro, ecf_z_movimento, ecf_z_emissao, ecf_z_bruto, ecf_z_gt, ecf_z_issqn) FROM stdin;
\.


--
-- Name: ecf_z_ecf_z_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('ecf_z_ecf_z_id_seq', 1, false);


--
-- Data for Name: ecf_z_totais; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ecf_z_totais (ecf_z_totais_id, ecf_z_id, ecf_z_totais_codigo, ecf_z_totais_valor) FROM stdin;
\.


--
-- Name: ecf_z_totais_ecf_z_totais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('ecf_z_totais_ecf_z_totais_id_seq', 1, false);


--
-- Data for Name: ibpt; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY ibpt (ibpt_codigo, ibpt_ex, ibpt_tabela, ibpt_descricao, ibpt_aliqnac, ibpt_aliqimp, ibpt_versao) FROM stdin;
01012100		0	--Reprodutores de raça pura	26.75	27.35	\\r
01012900		0	--Outros	26.75	28.45	\\r
01013000		0	-Asininos	26.75	29.50	\\r
01019000		0	-Outros	26.75	29.50	\\r
01022110		0	Prenhes ou com cria ao pé	14.80	15.40	\\r
01022190		0	Outros	14.80	15.40	\\r
01022911		0	Prenhes ou com cria ao pé	14.80	16.50	\\r
01022919		0	Outros	14.80	16.50	\\r
01022990		0	Outros	14.80	16.50	\\r
01023110		0	Prenhes ou com cria ao pé	14.80	15.40	\\r
01023190		0	Outros	14.80	15.40	\\r
01023911		0	Prenhes ou com cria ao pé	14.80	16.50	\\r
01023919		0	Outros	14.80	16.50	\\r
01023990		0	Outros	14.80	16.50	\\r
01029000		0	-Outros	14.80	15.40	\\r
01031000		0	-Reprodutores de raça pura	26.75	27.35	\\r
01039100		0	--De peso inferior a 50 kg	26.75	28.45	\\r
01039200		0	--De peso igual ou superior a 50 kg	26.75	28.45	\\r
01041011		0	Prenhes ou com cria ao pé	16.11	16.71	\\r
01041019		0	Outros	16.11	16.71	\\r
01041090		0	Outros	16.11	17.81	\\r
01042010		0	Reprodutores de raça pura	16.11	16.71	\\r
01042090		0	Outros	16.11	17.81	\\r
01051110		0	De linhas puras ou híbridas, para reprodução	16.11	16.71	\\r
01051190		0	Outros	16.11	17.81	\\r
01051200		0	--Peruas e perus	26.75	28.45	\\r
01051300		0	--Patos	26.75	28.45	\\r
01051400		0	--Gansos	26.75	28.45	\\r
01051500		0	--Galinhas-d'angola (pintadas)	26.75	28.45	\\r
01059400		0	--Galos e galinhas	26.75	29.50	\\r
01059900		0	--Outros	26.75	29.50	\\r
01061100		0	--Primatas	26.75	29.50	\\r
01061200		0	--Baleias, golfinhos e botos (mamíferos da ordem dos cetáceos). peixes-boi (manatins) e dugongos (mamíferos da ordem dos sirênios). otárias e focas, leões-marinhos e morsas (mamíferos da subordem dos pinípedes)	26.75	29.50	\\r
01061300		0	--Camelos e outros camelídeos (Camelidae)	26.75	29.50	\\r
01061400		0	--Coelhos e lebres	25.45	28.20	\\r
01061900		0	--Outros	26.75	29.50	\\r
01062000		0	-Répteis (incluindo as serpentes e as tartarugas marinhas)	26.75	29.50	\\r
01063100		0	--Aves de rapina	25.45	28.20	\\r
01063200		0	--Psitaciformes (incluindo os papagaios, os periquitos, as araras e as cacatuas)	25.45	28.20	\\r
01063310		0	Avestruzes (Struthio camelus), para reprodução	25.45	26.05	\\r
01063390		0	Outros	25.45	28.20	\\r
01063900		0	--Outras	25.45	28.20	\\r
01064100		0	--Abelhas	26.75	29.50	\\r
01064900		0	--Outros	26.75	29.50	\\r
01069000		0	-Outros	26.75	29.50	\\r
02011000		0	-Carcaças e meias-carcaças	8.11	13.81	\\r
02012010		0	Quartos dianteiros	8.11	13.81	\\r
02012020		0	Quartos traseiros	8.11	13.81	\\r
02012090		0	Outras	8.11	13.81	\\r
02013000		0	-Desossadas	8.11	14.72	\\r
02021000		0	-Carcaças e meias-carcaças	8.11	13.81	\\r
02022010		0	Quartos dianteiros	8.11	13.81	\\r
02022020		0	Quartos traseiros	8.11	13.81	\\r
02022090		0	Outras	8.11	13.81	\\r
02023000		0	-Desossadas	8.11	14.72	\\r
02031100		0	--Carcaças e meias-carcaças	8.11	13.81	\\r
02031200		0	--Pernas, pás e respectivos pedaços, não desossados	8.11	13.81	\\r
02031900		0	--Outras	8.11	13.81	\\r
02032100		0	--Carcaças e meias-carcaças	8.11	13.81	\\r
02032200		0	--Pernas, pás e respectivos pedaços, não desossados	8.11	13.81	\\r
02032900		0	--Outras	8.11	13.81	\\r
02041000		0	-Carcaças e meias-carcaças de cordeiro, frescas ou refrigeradas	8.11	13.81	\\r
02042100		0	--Carcaças e meias-carcaças	8.11	13.81	\\r
02042200		0	--Outras peças não desossadas	8.11	13.81	\\r
02042300		0	--Desossadas	8.11	13.81	\\r
02043000		0	-Carcaças e meias-carcaças de cordeiro, congeladas	8.11	13.81	\\r
02044100		0	--Carcaças e meias-carcaças	8.11	13.81	\\r
02044200		0	--Outras peças não desossadas	8.11	13.81	\\r
02044300		0	--Desossadas	8.11	13.81	\\r
02045000		0	-Carnes de animais da espécie caprina	8.11	13.81	\\r
02050000		0	Carnes de animais das espécies cavalar, asinina e muar, frescas, refrigeradas ou congeladas.	19.45	25.15	\\r
02061000		0	-Da espécie bovina, frescas ou refrigeradas	6.80	12.50	\\r
02062100		0	--Línguas	6.80	12.50	\\r
02062200		0	--Fígados	6.80	12.50	\\r
02062910		0	Rabos	6.80	12.50	\\r
02062990		0	Outros	6.80	12.50	\\r
02063000		0	-Da espécie suína, frescas ou refrigeradas	8.11	13.81	\\r
02064100		0	--Fígados	8.11	13.81	\\r
02064900		0	--Outras	8.11	13.81	\\r
02068000		0	-Outras, frescas ou refrigeradas	8.11	13.81	\\r
02069000		0	-Outras, congeladas	19.45	25.15	\\r
02071100		0	--Não cortadas em pedaços, frescas ou refrigeradas	6.80	12.50	\\r
02071200		0	--Não cortadas em pedaços, congeladas	6.80	12.50	\\r
02071300		0	--Pedaços e miudezas, frescos ou refrigerados	6.80	12.50	\\r
02071400		0	--Pedaços e miudezas, congelados	6.80	12.50	\\r
02072400		0	--Não cortadas em pedaços, frescas ou refrigeradas	6.80	12.50	\\r
02072500		0	--Não cortadas em pedaços, congeladas	6.80	12.50	\\r
02072600		0	--Pedaços e miudezas, frescos ou refrigerados	6.80	12.50	\\r
02072700		0	--Pedaços e miudezas, congelados	6.80	12.50	\\r
02074100		0	--Não cortadas em pedaços, frescas ou refrigeradas	6.80	12.50	\\r
02074200		0	--Não cortadas em pedaços, congeladas	6.80	12.50	\\r
02074300		0	--Fígados gordos (foies gras), frescos ou refrigerados	6.80	12.50	\\r
02074400		0	--Outras, frescas ou refrigeradas	6.80	12.50	\\r
02074500		0	--Outras, congeladas	6.80	12.50	\\r
02075100		0	--Não cortadas em pedaços, frescas ou refrigeradas	6.80	12.50	\\r
02075200		0	--Não cortadas em pedaços, congeladas	6.80	12.50	\\r
02075300		0	--Fígados gordos (foies gras), frescos ou refrigerados	6.80	12.50	\\r
02075400		0	--Outras, frescas ou refrigeradas	6.80	12.50	\\r
02075500		0	--Outras, congeladas	6.80	12.50	\\r
02076000		0	-De galinhas-d'angola (pintadas)	6.80	12.50	\\r
02081000		0	-De coelhos ou de lebres	18.14	23.84	\\r
02083000		0	-De primatas	27.45	33.15	\\r
02084000		0	-De baleias, golfinhos e botos (mamíferos da ordem dos cetáceos). de peixes-boi (manatins) e dugongos (mamíferos da ordem dos sirênios). de otárias e focas, leões-marinhos e morsas (mamíferos da subordem dos pinípedes)	27.45	33.15	\\r
02085000		0	-De répteis (incluindo as serpentes e as tartarugas marinhas)	27.45	33.15	\\r
02086000		0	-De camelos e de outros camelídeos (Camelidae)	27.45	33.15	\\r
02089000		0	-Outras	27.45	33.15	\\r
02091011		0	Fresco, refrigerado ou congelado	16.11	19.88	\\r
02091019		0	Outros	16.11	19.88	\\r
02091021		0	Fresca, refrigerada ou congelada	16.11	19.88	\\r
02091029		0	Outras	16.11	19.88	\\r
02099000		0	-Outros	16.11	19.88	\\r
02101100		0	--Pernas, pás e respectivos pedaços, não desossados	16.11	21.81	\\r
02101200		0	--Toucinhos entremeados e seus pedaços	16.11	21.81	\\r
02101900		0	--Outras	16.11	21.81	\\r
02102000		0	-Carnes da espécie bovina	16.11	21.81	\\r
02109100		0	--De primatas	27.45	33.15	\\r
02109100	01	0	Ex 01 - Miudezas. farinhas e pós dessas miudezas	31.45	37.15	\\r
02109200		0	--De baleias, golfinhos e botos (mamíferos da ordem dos cetáceos). de peixes-boi (manatins) e dugongos (mamíferos da ordem dos sirênios). de otárias e focas, leões-marinhos e morsas (mamíferos da subordem dos pinípedes)	31.45	37.15	\\r
02109200	01	0	Ex 01 - Miudezas. farinhas e pós dessas miudezas	31.45	37.15	\\r
02109300		0	--De répteis (incluindo as serpentes e as tartarugas marinhas)	31.45	37.15	\\r
02109300	01	0	Ex 01 - Miudezas. farinhas e pós dessas miudezas	31.45	37.15	\\r
02109900		0	--Outras	20.11	25.81	\\r
02109900	01	0	Ex  01 - Miudezas, exceto fígados de aves da posição 01.05. farinhas e pós dessas miudezas	20.11	25.81	\\r
02109900	02	0	Ex 02 - Fígados de aves da posição 01.05, salgados ou em salmora	20.11	25.81	\\r
03011110		0	Aruanã (Osteoglossum bicirrhosum)	31.45	37.15	\\r
03011190		0	Outros	31.45	37.15	\\r
03011900		0	--Outros	31.45	37.15	\\r
03019110		0	Para reprodução	31.45	32.05	\\r
03019190		0	Outras	31.45	37.15	\\r
03019210		0	Para reprodução	31.45	32.05	\\r
03019290		0	Outras	31.45	37.15	\\r
03019310		0	Para reprodução	31.45	32.05	\\r
03019390		0	Outras	31.45	37.15	\\r
03019410		0	Para reprodução	31.45	32.05	\\r
03019490		0	Outras	31.45	37.15	\\r
03019510		0	Para reprodução	31.45	32.05	\\r
03019590		0	Outros	31.45	37.15	\\r
03019911		0	Tilápias (Tilapia spp., Oreochromis spp., Sarotherodon spp., Danakilia spp.. seus híbridos)	31.45	32.05	\\r
03019912		0	Esturjões (Acipenser baeri, Acipenser gueldenstaedtii, Acipenser persicus, Acipenser stellatus)	31.45	32.05	\\r
03019919		0	Outros	31.45	32.05	\\r
03019991		0	Tilápias (Tilapia spp., Oreochromis spp., Sarotherodon spp., Danakilia spp.. seus híbridos)	31.45	37.15	\\r
03019992		0	Esturjões (Acipenser baeri, Acipenser gueldenstaedtii, Acipenser persicus, Acipenser stellatus)	31.45	37.15	\\r
03019999		0	Outros	31.45	37.15	\\r
03021100		0	--Trutas (Salmo trutta, Oncorhynchus mykiss, Oncorhynchus clarki, Oncorhynchus aguabonita, Oncorhynchus gilae, Oncorhynchus apache e Oncorhynchus chrysogaster)	20.11	25.81	\\r
03021300		0	--Salmões-do-pacífico (Oncorhynchus nerka, Oncorhynchus gorbuscha, Oncorhynchus keta, Oncorhynchus tschawytscha, Oncorhynchus kisutch, Oncorhynchus masou e Oncorhynchus rhodurus)	20.11	25.81	\\r
03021400		0	--Salmão-do-atlântico (Salmo salar) e salmão-do-danúbio (Hucho hucho)	20.11	25.81	\\r
03021900		0	--Outros	20.11	25.81	\\r
03022100		0	--Linguados-gigantes (Reinhardtius hippoglossoides, Hippoglossus hippoglossus, Hippoglossus stenolepis)	20.11	25.81	\\r
03022200		0	--Solha (Pleuronectes platessa)	20.11	25.81	\\r
03022300		0	--Linguados (Solea spp.)	20.11	25.81	\\r
03022400		0	--Pregado (Psetta maxima)	20.11	25.81	\\r
03022900		0	--Outros	20.11	25.81	\\r
03023100		0	--Albacora-branca (Thunnus alalunga)	20.11	25.81	\\r
03023200		0	--Albacora-laje (Thunnus albacares)	20.11	25.81	\\r
03023300		0	--Bonito-listrado	20.11	25.81	\\r
03023400		0	--Albacora-bandolim (Thunnus obesus)	20.11	25.81	\\r
03023500		0	--Atuns azuis (Thunnus thynnus, Thunnus orientalis)	20.11	25.81	\\r
03023600		0	--Atum azul do Sul (Thunnus maccoyii)	20.11	25.81	\\r
03023900		0	--Outros	20.11	25.81	\\r
03024100		0	--Arenques (Clupea harengus, Clupea pallasii)	20.11	25.81	\\r
03024210		0	Anchoita (Engraulis anchoita)	20.11	25.81	\\r
03024290		0	Outros	20.11	25.81	\\r
03024300		0	--Sardinhas (Sardina pilchardus, Sardinops spp., Sardinella spp.), anchoveta (Sprattus sprattus)	20.11	25.81	\\r
23012090		0	Outros	30.75	34.52	\\r
03024400		0	--Cavalinhas (Scomber scombrus, Scomber australasicus, Scomber japonicus)	20.11	25.81	\\r
03024500		0	--Chicharros (Trachurus spp.)	20.11	25.81	\\r
03024600		0	--Bijupirá (Rachycentron canadum)	20.11	25.81	\\r
03024700		0	--Espadarte (Xiphias gladius)	20.11	25.81	\\r
03025100		0	--Bacalhau-do-atlântico (Gadus mohrua), bacalhau-da-groelândia (Gadus ogac) e bacalhau-do-pacífico (Gadus macrocephalus)	20.11	20.71	\\r
03025200		0	--Haddock ou lubina (Melanogrammus aeglefinus)	20.11	25.81	\\r
03025300		0	--Saithe (Pollachius virens)	20.11	25.81	\\r
03025400		0	--Merluzas e abróteas (Merluccius spp., Urophycis spp.)	20.11	25.81	\\r
03025500		0	--Merluza-do-alasca (Theragra chalcogramma)	20.11	25.81	\\r
03025600		0	--Verdinhos (Micromesistius poutassou, Micromesistius australis)	20.11	25.81	\\r
03025900		0	--Outros	20.11	25.81	\\r
03027100		0	--Tilápias (Oreochromis spp.)	20.11	25.81	\\r
03027210		0	Bagre (Ictalurus puntactus)	20.11	25.81	\\r
03027290		0	Outros	20.11	25.81	\\r
03027300		0	--Carpas (Cyprinus carpio, Carassius carassius, Ctenopharyngodon idellus, Hypophtalmichtys spp., Mylopharyngodon piceus)	20.11	25.81	\\r
03027400		0	--Enguias (Anguilla spp.)	20.11	25.81	\\r
03027900		0	--Outros	20.11	25.81	\\r
03028100		0	--Cação e outros tubarões	20.11	25.81	\\r
03028200		0	--Raias (Rajidae)	20.11	25.81	\\r
03028310		0	Merluza negra (Dissostichus eleginoides)	20.11	25.81	\\r
03028320		0	Merluza antártica (Dissostichus mawsoni)	20.11	25.81	\\r
03028400		0	--Robalos (Dicentrarchus spp.)	20.11	25.81	\\r
03028500		0	--Pargos ou sargos (Sparidae)	20.11	25.81	\\r
03028911		0	Agulhões (Istiophorus spp., Tetrapturus spp., Makaira spp.)	20.11	25.81	\\r
03028912		0	Pargo (Lutjanus purpureus)	20.11	25.81	\\r
03028921		0	Cherne-poveiro (Polyprion americanus)	20.11	25.81	\\r
03028922		0	Garoupas (Acanthistius spp.)	20.11	25.81	\\r
03028923		0	Esturjão (Acipenser baeri)	20.11	25.81	\\r
03028924		0	Peixes-rei (Atherina spp.)	20.11	25.81	\\r
03028931		0	Curimatãs (Prochilodus spp.)	20.11	25.81	\\r
03028932		0	Tilápias (Tilapia spp., Sarotherodon spp., Danakilia spp.. seus híbridos)	20.11	25.81	\\r
03028933		0	Surubins (Pseudoplatystoma spp.)	20.11	25.81	\\r
03028934		0	Traíra (Hoplias malabaricus & H. cf. lacerdae)	20.11	25.81	\\r
03028935		0	Piaus (Leporinus spp.)	20.11	25.81	\\r
03028936		0	Tainhas (Mugil spp.)	20.11	25.81	\\r
03028937		0	Pirarucu (Arapaima gigas)	20.11	25.81	\\r
03028938		0	Pescadas (Cynocion spp.)	20.11	25.81	\\r
03028941		0	Piramutaba (Brachyplatystoma vaillantii)	20.11	25.81	\\r
03028942		0	Dourada (Brachyplatystoma flavicans)	20.11	25.81	\\r
03028943		0	Pacu (Piaractus mesopotamicus)	20.11	25.81	\\r
03028944		0	Tambaqui (Colossoma macropomum)	20.11	25.81	\\r
03028945		0	Tambacu (híbrido de tambaqui e pacu)	20.11	25.81	\\r
03028990		0	Outros	20.11	25.81	\\r
03029000		0	-Fígados, ovas e sêmen	30.75	36.45	\\r
03031100		0	--Salmão (Oncorhynchus nerka)	20.11	25.81	\\r
03031200		0	--Outros salmões-do-pacífico (Oncorhynchus gorbuscha, Oncorhynchus keta, Oncorhynchus tschawytscha, Oncorhynchus kisutch, Oncorhynchus masou e Oncorhynchus rhodurus)	20.11	25.81	\\r
03031300		0	--Salmão-do-atlântico (Salmo salar) e salmão-do-danúbio (Hucho hucho)	20.11	25.81	\\r
03031400		0	--Trutas (Salmo trutta, Oncorhynchus mykiss, Oncorhynchus clarki, Oncorhynchus aguabonita, Oncorhynchus gilae, Oncorhynchus apache e Oncorhynchus chrysogaster)	20.11	25.81	\\r
03031900		0	--Outros	20.11	25.81	\\r
03032300		0	--Tilápias (Oreochromis spp.)	20.11	25.81	\\r
03032410		0	Bagre (Ictalurus puntactus)	20.11	25.81	\\r
03032490		0	Outros	20.11	25.81	\\r
03032500		0	--Carpas (Cyprinus carpio, Carassius carassius, Ctenopharyngodon idellus, Hypophthalmichthys spp., Cirrhinus spp., Mylopharyngodon piceus)	20.11	25.81	\\r
03032600		0	--Enguias (Anguilla spp.)	20.11	25.81	\\r
03032900		0	--Outros	20.11	25.81	\\r
03033100		0	--Linguados-gigantes (Reinhardtius hippoglossoides, Hippoglossus hippoglossus, Hippoglossus stenolepis)	20.11	25.81	\\r
03033200		0	--Solha (Pleuronectes platessa)	20.11	25.81	\\r
03033300		0	--Linguados (Solea spp.)	20.11	25.81	\\r
03033400		0	--Pregado (Psetta maxima)	20.11	25.81	\\r
03033900		0	--Outros	20.11	25.81	\\r
03034100		0	--Albacora-branca (Thunnus alalunga)	20.11	25.81	\\r
03034200		0	--Albacora-laje (Thunnus albacares)	20.11	25.81	\\r
03034300		0	--Bonito-listrado	20.11	25.81	\\r
03034400		0	--Albacora-bandolim (Thunnus obesus)	20.11	25.81	\\r
03034500		0	--Atuns azuis (Thunnus thynnus, Thunnus orientalis)	20.11	25.81	\\r
03034600		0	--Atum azul do Sul (Thunnus maccoyii)	20.11	25.81	\\r
03034900		0	--Outros	20.11	25.81	\\r
03035100		0	--Arenques (Clupea harengus, Clupea pallasii)	20.11	25.81	\\r
03035300		0	--Sardinhas (Sardina pilchardus, Sardinops spp., Sardinella spp.), anchoveta (Sprattus sprattus)	20.11	25.81	\\r
03035400		0	--Cavalinhas (Scomber scombrus, Scomber australasicus, Scomber japonicus)	20.11	25.81	\\r
03035500		0	--Chicharros (Trachurus spp.)	20.11	25.81	\\r
03035600		0	--Bijupirá (Rachycentron canadum)	20.11	25.81	\\r
03035700		0	--Espadarte (Xiphias gladius)	20.11	25.81	\\r
03036300		0	--Bacalhau-do-atlântico (Gadus mohrua), bacalhau-da-groelândia (Gadus ogac) e bacalhau-do-pacífico (Gadus macrocephalus)	20.11	20.71	\\r
03036400		0	--Haddock ou lubina (Melanogrammus aeglefinus)	20.11	25.81	\\r
25090000		0	Cré.	31.45	34.20	\\r
03036500		0	--Saithe (Pollachius virens)	20.11	25.81	\\r
03036600		0	--Merluzas e abróteas (Merluccius spp., Urophycis spp.)	20.11	25.81	\\r
03036700		0	--Merluza-do-alasca (Theragra chalcogramma)	20.11	25.81	\\r
03036800		0	--Verdinhos (Micromesistius poutassou, Micromesistius australis)	20.11	25.81	\\r
03036910		0	Merluza rosada (Macruronus magellanicus)	20.11	25.81	\\r
03036990		0	Outros	20.11	25.81	\\r
03038111		0	Inteiro	20.11	25.81	\\r
03038112		0	Eviscerado, sem cabeça e sem barbatanas	20.11	25.81	\\r
03038113		0	Em pedaços, com pele	20.11	25.81	\\r
03038114		0	Em pedaços, sem pele	20.11	25.81	\\r
03038119		0	Outros	20.11	25.81	\\r
03038190		0	Outros	20.11	25.81	\\r
03038200		0	--Raias (Rajidae)	20.11	25.81	\\r
03038311		0	Evisceradas, sem cabeça e sem cauda	20.11	25.81	\\r
03038312		0	Cabeças	20.11	25.81	\\r
03038319		0	Outras	20.11	25.81	\\r
03038321		0	Evisceradas, sem cabeça e sem cauda	20.11	25.81	\\r
03038322		0	Cabeças	20.11	25.81	\\r
03038329		0	Outras	20.11	25.81	\\r
03038400		0	--Robalos (Dicentrarchus spp.)	20.11	25.81	\\r
03038910		0	Corvina (Micropogonias furnieri)	20.11	25.81	\\r
03038920		0	Pescadas (Cynoscion spp.)	20.11	25.81	\\r
03038931		0	Agulhões (Istiophorus spp., Tetrapturus spp., Makaira spp.)	20.11	25.81	\\r
03038932		0	Pargo (Lutjanus purpureus)	20.11	25.81	\\r
03038933		0	Peixe-sapo (Lophius gastrophysus)	20.11	25.81	\\r
03038941		0	Cherne-poveiro (Polyprion americanus)	20.11	25.81	\\r
03038942		0	Garoupas (Acanthistius spp.)	20.11	25.81	\\r
03038943		0	Tainhas (Mujil spp.)	20.11	25.81	\\r
03038944		0	Esturjões (Acipenser baeri, Acipenser gueldenstaedtii, Acipenser persicus, Acipenser stellatus)	20.11	25.81	\\r
03038945		0	Peixes-rei (Atherina spp.)	20.11	25.81	\\r
03038946		0	Nototenias (Patagonotothen spp.)	20.11	25.81	\\r
03038951		0	Curimatãs (Prochilodus spp.)	20.11	25.81	\\r
03038952		0	Tilápias (Tilapia spp., Sarotherodon spp., Danakilia spp.. seus híbridos)	20.11	25.81	\\r
03038953		0	Surubins (Pseudoplatystoma spp.)	20.11	25.81	\\r
03038954		0	Traíra (Hoplias malabaricus & H. cf. lacerdae)	20.11	25.81	\\r
03038955		0	Piaus (Leporinus spp.)	20.11	25.81	\\r
03038956		0	Pirarucu (Arapaima gigas)	20.11	25.81	\\r
03038957		0	Anchoita (Engraulis anchoita)	20.11	25.81	\\r
03038961		0	Piramutaba (Brachyplatystoma vaillantii)	20.11	25.81	\\r
03038962		0	Dourada (Brachyplatystoma flavicans)	20.11	25.81	\\r
03038963		0	Pacu (Piaractus Mesopotamicus)	20.11	25.81	\\r
03038964		0	Tambaqui (Colossoma macropomum)	20.11	25.81	\\r
03038965		0	Tambacu (híbrido de tambaqui e pacu)	20.11	25.81	\\r
03038990		0	Outros	20.11	25.81	\\r
03039000		0	-Fígados, ovas e sêmen	20.11	25.81	\\r
03043100		0	--Tilápias (Oreochromis spp.)	20.11	25.81	\\r
03043210		0	Bagre (Ictalurus puntactus)	20.11	25.81	\\r
03043290		0	Outros	20.11	25.81	\\r
03043300		0	--Perca-do-nilo (Lates niloticus)	20.11	25.81	\\r
03043900		0	--Outros	20.11	25.81	\\r
03044100		0	--Salmões-do-pacífico (Oncorhynchus nerka, Oncorhynchus gorbuscha, Oncorhynchus keta, Oncorhynchus tschawytscha, Oncorhynchus kisutch, Oncorhynchus masou e Oncorhynchus rhodurus), salmão-do-atlântico (Salmo salar) e salmão-do-danúbio (Hucho hucho)	20.11	25.81	\\r
03044200		0	--Trutas (Salmo trutta, Oncorhynchus mykiss, Oncorhynchus clarki, Oncorhynchus aguabonita, Oncorhynchus gilae, Oncorhynchus apache e Oncorhynchus chrysogaster)	20.11	25.81	\\r
03044300		0	--Peixes chatos (Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae e Citharidae)	20.11	25.81	\\r
03044400		0	--Peixes das famílias Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae e Muraenolepididae	20.11	25.81	\\r
03044500		0	--Espadarte (Xiphias gladius)	20.11	25.81	\\r
03044600		0	--Merluza negra e merluza antártica (Dissostichus spp.)	20.11	25.81	\\r
03044910		0	Cherne-poveiro (Polyprion americanus)	20.11	25.81	\\r
03044920		0	Garoupas (Acanthistius spp.)	20.11	25.81	\\r
03044990		0	Outros	20.11	25.81	\\r
03045100		0	--Tilápias (Oreochromis spp.), bagres (Pangasius spp., Silurus spp., Clarias spp., Ictalurus spp.), carpas (Cyprinus carpio, Carassius carassius, Ctenopharyngodon idellus, Hypophthalmichthys spp., Cirrhinus spp., Mylopharyngodon piceus), enguias (Anguilla	20.11	25.81	\\r
03045200		0	--Salmonídeos	20.11	25.81	\\r
03045300		0	--Peixes das famílias Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae e Muraenolepididae	20.11	25.81	\\r
03045400		0	--Espadarte (Xiphias gladius)	20.11	25.81	\\r
03045500		0	--Merluza negra e merluza antártica (Dissostichus spp.)	20.11	25.81	\\r
03045900		0	--Outros	20.11	25.81	\\r
03046100		0	--Tilápias (Oreochromis spp.)	20.11	25.81	\\r
03046210		0	Bagre (Ictalurus puntactus)	20.11	25.81	\\r
03046290		0	Outros	20.11	25.81	\\r
03046300		0	--Perca-do-nilo (Lates niloticus)	20.11	25.81	\\r
03046900		0	--Outros	20.11	25.81	\\r
03047100		0	--Bacalhau-do-atlântico (Gadus mohrua), bacalhau-da-groelândia (Gadus ogac) e bacalhau-do-pacífico (Gadus macrocephalus)	20.11	25.81	\\r
03047200		0	--Haddock ou lubina (Melanogrammus aeglefinus)	20.11	25.81	\\r
03047300		0	--Saithe (Pollachius virens)	20.11	25.81	\\r
03047400		0	--Merluzas e abróteas (Merluccius spp., Urophycis spp.)	20.11	25.81	\\r
03047500		0	--Merluza-do-alasca (Theragra chalcogramma)	20.11	25.81	\\r
03047900		0	--Outros	20.11	25.81	\\r
03048100		0	--Salmões-do-pacífico (Oncorhynchus nerka, Oncorhynchus gorbuscha, Oncorhynchus keta, Oncorhynchus tschawytscha, Oncorhynchus kisutch, Oncorhynchus masou e Oncorhynchus rhodurus), salmão-do-atlântico (Salmo salar) e salmão-do-danúbio (Hucho hucho)	20.11	25.81	\\r
03048200		0	--Trutas (Salmo trutta, Oncorhynchus mykiss, Oncorhynchus clarki, Oncorhynchus aguabonita, Oncorhynchus gilae, Oncorhynchus apache e Oncorhynchus chrysogaster)	20.11	25.81	\\r
03048300		0	--Peixes chatos (Pleuronectidae, Bothidae, Cynoglossidae, Soleidae, Scophthalmidae e Citharidae)	20.11	25.81	\\r
03048400		0	--Espadarte (Xiphias gladius)	20.11	25.81	\\r
03048510		0	Merluza negra (Dissostichus eleginoides)	20.11	25.81	\\r
03048520		0	Merluza antártica (Dissostichus mawsoni)	20.11	25.81	\\r
03048600		0	--Arenques (Clupea harengus, Clupea pallasii)	20.11	25.81	\\r
03048700		0	--Atuns (do gênero Thunnus), bonito-listrado (Euthynnus (Katsuwonus) pelamis)	20.11	25.81	\\r
03048910		0	Pargo (Lutjanus purpureus)	20.11	25.81	\\r
03048920		0	Cherne-poveiro (Polyprion americanus)	20.11	25.81	\\r
03048930		0	Garoupas (Acanthistius spp.)	20.11	25.81	\\r
03048940		0	Tubarão-azul (Prionace glauca)	20.11	25.81	\\r
03048990		0	Outros	20.11	25.81	\\r
03049100		0	--Espadarte (Xiphias gladius)	20.11	25.81	\\r
03049211		0	Bochechas (cheeks)	20.11	25.81	\\r
03049212		0	Colares (collars)	20.11	25.81	\\r
03049219		0	Outros	20.11	25.81	\\r
03049221		0	Bochechas (cheeks)	20.11	25.81	\\r
03049222		0	Colares (collars)	20.11	25.81	\\r
03049229		0	Outros	20.11	25.81	\\r
03049300		0	--Tilápias (Oreochromis spp.), bagres (Pangasius spp., Silurus spp., Clarias spp., Ictalurus spp.), carpas (Cyprinus carpio, Carassius carassius, Ctenopharyngodon idellus, Hypophthalmichthys spp., Cirrhinus spp., Mylopharyngodon piceus), enguias (Anguilla	20.11	25.81	\\r
03049400		0	--Merluza-do-alasca (Theragra chalcogramma)	20.11	25.81	\\r
03049500		0	--Peixes das famílias Bregmacerotidae, Euclichthyidae, Gadidae, Macrouridae, Melanonidae, Merlucciidae, Moridae e Muraenolepididae, exceto a merluza-do-alasca (Theragra chalcogramma)	20.11	25.81	\\r
03049900		0	--Outros	20.11	25.81	\\r
03051000		0	-Farinhas, pós e pellets, de peixe, próprios para alimentação humana	31.45	37.15	\\r
03052000		0	-Fígados, ovas e sêmen, de peixes, secos, defumados, salgados ou em salmoura	30.75	36.45	\\r
03053100		0	--Tilápias (Oreochromis spp.), bagres (Pangasius spp., Silurus spp., Clarias spp., Ictalurus spp.), carpas (Cyprinus carpio, Carassius carassius, Ctenopharyngodon idellus, Hypophthalmichthys spp., Cirrhinus spp., Mylopharyngodon piceus), enguias (Anguilla	31.45	37.15	\\r
03053210		0	Bacalhau-do-atlântico (Gadus mohrua), bacalhau-da-groelândia (Gadus ogac) e bacalhau-do-pacífico (Gadus macrocephalus)	31.45	32.05	\\r
03053220		0	Saithe (Pollachius virens)	31.45	37.15	\\r
03053290		0	Outros	31.45	37.15	\\r
03053910		0	Ling (Molva molva) e zarbo (Brosme brosme)	31.45	37.15	\\r
03053990		0	Outros	31.45	37.15	\\r
03054100		0	--Salmões-do-pacífico (Oncorhynchus nerka, Oncorhynchus gorbuscha, Oncorhynchus keta, Oncorhynchus tschawytscha, Oncorhynchus kisutch, Oncorhynchus masou e Oncorhynchus rhodurus), salmão-do-atlântico (Salmo salar) e salmão-do-danúbio (Hucho hucho)	34.12	39.82	\\r
03054200		0	--Arenques (Clupea harengus, Clupea pallasii)	34.12	39.82	\\r
03054300		0	--Trutas (Salmo trutta, Oncorhynchus mykiss, Oncorhynchus clarki, Oncorhynchus aguabonita, Oncorhynchus gilae, Oncorhynchus apache e Oncorhynchus chrysogaster)	31.45	37.15	\\r
03054400		0	--Tilápias (Oreochromis spp.), bagres (Pangasius spp., Silurus spp., Clarias spp., Ictalurus spp.), carpas (Cyprinus carpio, Carassius carassius, Ctenopharyngodon idellus, Hypophthalmichthys spp., Cirrhinus spp., Mylopharyngodon piceus), enguias (Anguilla	31.45	37.15	\\r
03054910		0	Bacalhau-do-atlântico (Gadus mohrua), bacalhau-da-groelândia (Gadus ogac) e bacalhau-do-pacífico (Gadus macrocephalus)	34.12	34.72	\\r
03054920		0	Saithe (Pollachius virens), ling (Molva molva) e zarbo (Brosme brosme)	31.45	37.15	\\r
03054990		0	Outros	31.45	37.15	\\r
03055100		0	--Bacalhau-do-atlântico (Gadus mohrua), bacalhau-da-groelândia (Gadus ogac) e bacalhau-do-pacífico (Gadus macrocephalus)	34.12	34.72	\\r
03055910		0	Das espécies citadas na Nota Complementar 1 deste Capítulo	34.12	34.72	\\r
03055990		0	Outros	34.12	39.82	\\r
03056100		0	--Arenques (Clupea harengus, Clupea pallasii)	34.12	39.82	\\r
03056200		0	--Bacalhau-do-atlântico (Gadus mohrua), bacalhau-da-groelândia (Gadus ogac) e bacalhau-do-pacífico (Gadus macrocephalus)	34.12	34.72	\\r
03056300		0	--Anchovas (Engraulis spp.)	31.45	37.15	\\r
03056400		0	--Tilápias (Oreochromis spp.), bagres (Pangasius spp., Silurus spp., Clarias spp., Ictalurus spp.), carpas (Cyprinus carpio, Carassius carassius, Ctenopharyngodon idellus, Hypophthalmichthys spp., Cirrhinus spp., Mylopharyngodon piceus), enguias (Anguilla	31.45	37.15	\\r
03056910		0	Saithe (Pollachius virens), ling (Molva molva) e zarbo (Brosme brosme)	31.45	37.15	\\r
03056990		0	Outros	31.45	37.15	\\r
03057100		0	--Barbatanas de tubarão	31.45	37.15	\\r
03057100	01	0	Ex 01 - De tubarão seco, mesmo salgado mas não defumado	34.12	39.82	\\r
03057200		0	--Cabeças, caudas e bexigas natatórias, de peixes	34.12	39.82	\\r
03057200	01	0	Ex 01 - De peixes defumados, mesmo em filés, exceto dos códigos 0305.41.00, 0305.42.00 e 0305.49.10	31.45	37.15	\\r
03057200	02	0	Ex 02 - De peixes salgados, não secos nem defumados e peixes em salmoura, exceto dos códigos 0305.61.00 e 0305.62.00	31.45	37.15	\\r
03057900		0	--Outros	34.12	39.82	\\r
03057900	01	0	Ex 01 - De peixes defumados, mesmo em filés, exceto dos códigos 0305.41.00, 0305.42.00 e 0305.49.10	31.45	37.15	\\r
03057900	02	0	Ex 02 - De peixes salgados, não secos nem defumados e peixes em salmoura, exceto dos códigos 0305.61.00 e 0305.62.00	31.45	37.15	\\r
03061110		0	Inteiras	31.45	37.15	\\r
03061190		0	Outras	31.45	37.15	\\r
26100090		0	Outros	31.45	33.15	\\r
03061200		0	--Lavagantes (Homarus spp.)	31.45	37.15	\\r
03061400		0	--Caranguejos	31.45	37.15	\\r
03061500		0	--Lagosta norueguesa (Nephrops norvegicus)	31.45	37.15	\\r
03061610		0	Inteiros	31.45	37.15	\\r
03061690		0	Outros	31.45	37.15	\\r
03061710		0	Inteiros	31.45	37.15	\\r
03061790		0	Outros	31.45	37.15	\\r
03061910		0	Krill (Euphausia superba)	31.45	37.15	\\r
03061990		0	Outros	31.45	37.15	\\r
03062100		0	--Lagostas (Palinurus spp., Panulirus spp., Jasus spp.)	31.45	37.15	\\r
03062200		0	--Lavagantes (Homarus spp.)	31.45	37.15	\\r
03062400		0	--Caranguejos	31.45	37.15	\\r
03062500		0	--Lagosta norueguesa (Nephrops norvegicus)	31.45	37.15	\\r
03062600		0	--Camarões de água fria (Pandalus spp., Crangon crangon)	31.45	37.15	\\r
03062700		0	--Outros camarões	31.45	37.15	\\r
03062910		0	Lagosta de água doce (Cherax quadricarinatus)	31.45	37.15	\\r
03062990		0	Outros	31.45	37.15	\\r
03071100		0	--Vivas, frescas ou refrigeradas	31.45	37.15	\\r
03071900		0	--Outras	31.45	37.15	\\r
03072100		0	--Vivos, frescos ou refrigerados	31.45	37.15	\\r
03072900		0	--Outros	31.45	37.15	\\r
03073100		0	--Vivos, frescos ou refrigerados	31.45	37.15	\\r
03073900		0	--Outros	31.45	37.15	\\r
03074100		0	--Vivas, frescas ou refrigeradas	31.45	37.15	\\r
03074911		0	Lulas (Ommastrephes spp., Loligo spp., Nototodarus spp., Sepioteuthis spp.)	31.45	37.15	\\r
03074919		0	Outras	31.45	37.15	\\r
03074990		0	Outras	31.45	37.15	\\r
03075100		0	--Vivos, frescos ou refrigerados	31.45	37.15	\\r
03075910		0	Congelados	31.45	37.15	\\r
03075990		0	Outros	31.45	37.15	\\r
03076000		0	-Caracóis, exceto os do mar	31.45	37.15	\\r
03077100		0	--Vivos, frescos ou refrigerados	31.45	37.15	\\r
03077900		0	--Outros	31.45	37.15	\\r
03078100		0	--Vivos, frescos ou refrigerados	31.45	37.15	\\r
03078900		0	--Outros	31.45	37.15	\\r
03079100		0	--Vivos, frescos ou refrigerados	31.45	37.15	\\r
03079900		0	--Outros	31.45	37.15	\\r
03081100		0	--Vivos, frescos ou refrigerados	31.45	37.15	\\r
03081900		0	--Outros	31.45	37.15	\\r
03082100		0	--Vivos, frescos ou refrigerados	31.45	37.15	\\r
03082900		0	--Outros	31.45	37.15	\\r
03083000		0	-Medusas (águas-vivas) (Rhopilema spp.)	31.45	37.15	\\r
03089000		0	-Outros	31.45	37.15	\\r
04011010		0	Leite UHT (Ultra High Temperature)	20.11	27.60	\\r
04011090		0	Outros	20.11	26.72	\\r
04012010		0	Leite UHT (Ultra High Temperature)	20.11	27.60	\\r
04012090		0	Outros	20.11	26.72	\\r
04014010		0	Leite	20.11	26.72	\\r
04014021		0	UHT (Ultra High Temperature)	20.11	27.60	\\r
04014021	01	0	Ex 01 - Acondicionado em recipiente metálico hermeticamente fechado	20.11	27.60	\\r
04014029		0	Outros	20.11	26.72	\\r
04014029	01	0	Ex 01 - Acondicionados em recipientes metálicos hermeticamente fechados	20.11	26.72	\\r
04015010		0	Leite	20.11	26.72	\\r
04015021		0	UHT (Ultra High Temperature)	20.11	27.60	\\r
04015021	01	0	Ex 01 - Acondicionado em recipiente metálico hermeticamente fechado	20.11	27.60	\\r
04015029		0	Outros	20.11	26.72	\\r
04015029	01	0	Ex 01 - Acondicionados em recipientes metálicos hermeticamente fechados	20.11	26.72	\\r
04021010		0	Com um teor de arsênio, chumbo ou cobre, considerados isoladamente, inferior a 5 ppm	31.45	44.32	\\r
04021090		0	Outros	31.45	44.32	\\r
04022110		0	Leite integral	31.45	44.32	\\r
04022120		0	Leite parcialmente desnatado	31.45	44.32	\\r
04022130		0	Creme de leite	31.45	39.79	\\r
04022910		0	Leite integral	31.45	44.32	\\r
04022920		0	Leite parcialmente desnatado	31.45	44.32	\\r
04022930		0	Creme de leite	31.45	39.79	\\r
04029100		0	--Sem adição de açúcar ou de outros edulcorantes	31.45	38.94	\\r
04029100	01	0	Ex 01 - Leite em estado líquido	31.45	38.94	\\r
04029900		0	--Outros	31.45	44.32	\\r
04029900	01	0	Ex 01 - Leite em estado líquido	31.45	44.32	\\r
04031000		0	-Iogurte	31.45	39.79	\\r
04031000	01	0	Ex 01 - Acondicionado em embalagem de apresentação	31.45	39.79	\\r
04039000		0	-Outros	31.45	39.79	\\r
04039000	01	0	Ex 01 - Acondicionados em embalagem de apresentação	31.45	39.79	\\r
04041000		0	-Soro de leite, modificado ou não, mesmo concentrado ou adicionado de açúcar ou de outros edulcorantes	20.11	32.98	\\r
04041000	01	0	Ex 01 - Concentrado ou adicionado de açúcar ou de outros edulcorantes, em estado pastoso ou sólido.	20.11	32.98	\\r
04049000		0	-Outros	20.11	27.60	\\r
04049000	01	0	Ex 01 - Concentrado ou adicionado de açúcar ou de outros edulcorantes, em estado pastoso ou sólido.	20.11	27.60	\\r
04051000		0	-Manteiga	20.11	28.45	\\r
04052000		0	-Pasta de espalhar (pasta de barrar) de produtos provenientes do leite	31.45	39.79	\\r
04059010		0	Óleo butírico de manteiga (butter oil)	31.45	39.79	\\r
04059090		0	Outras	31.45	39.79	\\r
04061010		0	Mussarela	20.11	32.98	\\r
04061090		0	Outros	20.11	28.45	\\r
04062000		0	-Queijos ralados ou em pó, de qualquer tipo	20.11	28.45	\\r
04063000		0	-Queijos fundidos, exceto ralados ou em pó	20.11	28.45	\\r
04064000		0	-Queijos de pasta mofada e outros queijos que apresentem veios obtidos utilizando Penicillium roqueforti	20.11	28.45	\\r
04069010		0	Com um teor de umidade inferior a 36,0%, em peso (massa dura)	20.11	32.98	\\r
04069020		0	Com um teor de umidade superior ou igual a 36,0% e inferior a 46,0%, em peso (massa semidura)	20.11	32.98	\\r
04069030		0	Com um teor de umidade superior ou igual a 46,0% e inferior a 55,0%, em peso (massa macia)	20.11	28.45	\\r
04069090		0	Outros	20.11	28.45	\\r
04071100		0	--De aves da espécie Gallus domesticus	20.11	20.71	\\r
04071900		0	--Outros	20.11	20.71	\\r
04072100		0	--De aves da espécie Gallus domesticus	20.11	24.86	\\r
04072900		0	--Outros	20.11	24.86	\\r
04079000		0	-Outros	20.11	24.86	\\r
04081100		0	--Secas	31.45	37.15	\\r
04081900		0	--Outras	31.45	37.15	\\r
04081900	01	0	Ex 01 - Frescas	31.45	37.15	\\r
04089100		0	--Secos	31.45	37.15	\\r
04089900		0	--Outros	24.11	29.81	\\r
04089900	01	0	Ex 01 - Frescos	24.11	29.81	\\r
04090000		0	Mel natural.	31.45	39.79	\\r
04090000	01	0	Ex 01 - Acondicionado em embalagem de apresentação	24.11	32.45	\\r
04100000		0	Produtos comestíveis de origem animal, não especificados nem compreendidos noutras posições.	31.45	38.94	\\r
05010000		0	Cabelos em bruto, mesmo lavados ou desengordurados. desperdícios de cabelo.	31.45	36.20	\\r
05021011		0	Lavadas, alvejadas ou desengorduradas, mesmo tintas	31.45	36.20	\\r
05021019		0	Outras	31.45	36.20	\\r
05021090		0	Outros	31.45	36.20	\\r
05029010		0	Pelos	31.45	36.20	\\r
05029020		0	Desperdícios	31.45	36.20	\\r
05040011		0	De bovinos	31.45	36.20	\\r
05040012		0	De ovinos	31.45	36.20	\\r
05040013		0	De suínos	31.45	36.20	\\r
05040019		0	Outras	31.45	36.20	\\r
05040090		0	Outros	31.45	34.20	\\r
05051000		0	-Penas dos tipos utilizados para enchimento ou estofamento. penugem	31.45	36.20	\\r
05059000		0	-Outros	31.45	36.20	\\r
05061000		0	-Osseína e ossos acidulados	31.45	36.20	\\r
05069000		0	-Outros	20.11	24.86	\\r
05071000		0	-Marfim. pó e desperdícios de marfim	31.45	36.20	\\r
05079000		0	-Outros	31.45	36.20	\\r
05080000		0	Coral e matérias semelhantes, em bruto ou simplesmente preparados, mas não trabalhados de outro modo. conchas e carapaças de moluscos, crustáceos ou de equinodermes e ossos de sépias, em bruto ou simplesmente preparados, mas não cortados em forma determin	31.45	36.20	\\r
05100010		0	Pâncreas de bovino	20.11	20.71	\\r
05100090		0	Outros	31.45	33.15	\\r
05111000		0	-Sêmen de bovino	20.11	20.71	\\r
05119110		0	Ovas de peixe fecundadas, para reprodução	20.11	20.71	\\r
05119190		0	Outros	20.11	24.86	\\r
05119910		0	Embriões de animais	20.11	20.71	\\r
05119920		0	Sêmen animal	20.11	20.71	\\r
05119930		0	Ovos de bicho-da-sêda	20.11	20.71	\\r
05119991		0	Crinas e seus desperdícios, mesmo em mantas, com ou sem suportes	20.11	24.86	\\r
05119999		0	Outros	20.11	24.86	\\r
06011000		0	-Bulbos, tubérculos, raízes tuberosas, rebentos e rizomas, em repouso vegetativo	31.45	32.05	\\r
06012000		0	-Bulbos, tubérculos, raízes tuberosas, rebentos e rizomas, em vegetação ou em flor. mudas, plantas e raízes de chicória	31.45	32.05	\\r
06021000		0	-Estacas não enraizadas e enxertos	31.45	33.15	\\r
06022000		0	-Árvores, arbustos e silvados, de frutos comestíveis, enxertados ou não	31.45	33.15	\\r
06023000		0	-Rododendros e azaleias, enxertados ou não	31.45	33.15	\\r
06024000		0	-Roseiras, enxertadas ou não	31.45	33.15	\\r
06029010		0	Micélios de cogumelos	31.45	33.15	\\r
06029021		0	De orquídea	31.45	32.05	\\r
06029029		0	Outras	31.45	32.05	\\r
06029081		0	De cana-de-açúcar	31.45	32.05	\\r
06029082		0	De videira	31.45	32.05	\\r
06029083		0	De café	31.45	32.05	\\r
06029089		0	Outras	31.45	32.05	\\r
06029090		0	Outras	31.45	33.15	\\r
06031100		0	--Rosas	31.45	37.15	\\r
06031200		0	--Cravos	31.45	37.15	\\r
06031300		0	--Orquídeas	31.45	37.15	\\r
06031400		0	--Crisântemos	31.45	37.15	\\r
06031500		0	--Lírios (Lilium spp.)	31.45	37.15	\\r
06031900		0	--Outros	31.45	37.15	\\r
06039000		0	-Outros	31.45	37.15	\\r
06042000		0	-Frescos	31.45	36.20	\\r
06049000		0	-Outros	31.45	36.20	\\r
07011000		0	-Para semeadura	20.11	20.71	\\r
07019000		0	-Outras	20.11	25.81	\\r
07020000		0	Tomates, frescos ou refrigerados.	20.11	25.81	\\r
07031011		0	Para semeadura	20.11	20.71	\\r
07031019		0	Outras	20.11	25.81	\\r
07031021		0	Para semeadura	20.11	20.71	\\r
07031029		0	Outras	20.11	25.81	\\r
07032010		0	Para semeadura	20.11	20.71	\\r
07032090		0	Outros	20.11	25.81	\\r
07039010		0	Para semeadura	20.11	20.71	\\r
07039090		0	Outros	20.11	25.81	\\r
07041000		0	-Couve-flor e brócolis	20.11	25.81	\\r
07042000		0	-Couve-de-bruxelas	20.11	25.81	\\r
07049000		0	-Outros	20.11	25.81	\\r
07051100		0	--Repolhudas	20.11	25.81	\\r
07051900		0	--Outras	20.11	25.81	\\r
07052100		0	--Endívia (Cichorium intybus var. foliosum)	20.11	25.81	\\r
07052900		0	--Outras	20.11	25.81	\\r
07061000		0	-Cenouras e nabos	20.11	25.81	\\r
07069000		0	-Outros	20.11	25.81	\\r
29042090		0	Outros	20.11	21.81	\\r
07070000		0	Pepinos e pepininhos (cornichons), frescos ou refrigerados.	20.11	25.81	\\r
07081000		0	-Ervilhas (Pisum sativum)	20.11	25.81	\\r
07082000		0	-Feijões (Vigna spp., Phaseolus spp.)	20.11	25.81	\\r
07089000		0	-Outros legumes de vagem	20.11	25.81	\\r
07092000		0	-Aspargos	20.11	25.81	\\r
07093000		0	-Beringelas	20.11	25.81	\\r
07094000		0	-Aipo, exceto aipo-rábano	20.11	25.81	\\r
07095100		0	--Cogumelos do gênero Agaricus	20.11	25.81	\\r
07095900		0	--Outros	20.11	25.81	\\r
07096000		0	-Pimentões e pimentas dos gêneros Capsicum ou Pimenta	20.11	25.81	\\r
07097000		0	-Espinafres, espinafres-da-nova-zelândia e espinafres gigantes	20.11	25.81	\\r
07099100		0	--Alcachofras	20.11	25.81	\\r
07099200		0	--Azeitonas	20.11	25.81	\\r
07099300		0	--Abóboras, abobrinhas e cabaças (Curcubita spp.)	20.11	25.81	\\r
07099911		0	Para semeadura	20.11	20.71	\\r
07099919		0	Outros	20.11	25.81	\\r
07099990		0	Outros	20.11	25.81	\\r
07101000		0	-Batatas	20.11	25.81	\\r
07102100		0	--Ervilhas (Pisum sativum)	20.11	25.81	\\r
07102200		0	--Feijões (Vigna spp., Phaseolus spp.)	20.11	25.81	\\r
07102900		0	--Outros	20.11	25.81	\\r
07103000		0	-Espinafres, espinafres-da-nova-zelândia e espinafres gigantes	20.11	25.81	\\r
07104000		0	-Milho doce	20.11	25.81	\\r
07108000		0	-Outros produtos hortícolas	20.11	25.81	\\r
07109000		0	-Misturas de produtos hortícolas	20.11	25.81	\\r
07112010		0	Com água salgada	20.11	25.81	\\r
07112020		0	Com água sulfurada ou adicionada de outras substâncias	20.11	25.81	\\r
07112090		0	Outras	20.11	25.81	\\r
07114000		0	-Pepinos e pepininhos (cornichons)	20.11	25.81	\\r
07114000	01	0	Ex 01 - Com água salgada, sulfurada ou adiconada de outras substâncias	20.11	25.81	\\r
07115100		0	--Cogumelos do gênero Agaricus	20.11	25.81	\\r
07115100	01	0	Ex 01 - Com água salgada, sulfurada ou adiconada de outras substâncias	20.11	25.81	\\r
07115900		0	--Outros	22.78	28.48	\\r
07115900	01	0	Ex 01 - Com água salgada, sulfurada ou adiconada de outras substâncias	20.11	25.81	\\r
07119000		0	-Outros produtos hortícolas. misturas de produtos hortícolas	20.11	25.81	\\r
07119000	01	0	Ex 01 - Com água salgada, sulfurada ou adiconada de outras substâncias	20.11	25.81	\\r
07122000		0	-Cebolas	20.11	25.81	\\r
07123100		0	--Cogumelos do gênero Agaricus	20.11	25.81	\\r
07123200		0	--Orelhas-de-judas (Auricularia spp.)	20.11	25.81	\\r
07123300		0	--Tremelas (Tremella spp.)	20.11	25.81	\\r
07123900		0	--Outros	20.11	25.81	\\r
07129010		0	Alho em pó	20.11	25.81	\\r
07129090		0	Outros	20.11	25.81	\\r
07129090	01	0	Ex 01 - Milho doce	20.11	25.81	\\r
07131010		0	Para semeadura	20.11	20.71	\\r
07131090		0	Outras	20.11	25.81	\\r
07132010		0	Para semeadura	20.11	20.71	\\r
07132090		0	Outros	20.11	25.81	\\r
07133110		0	Para semeadura	18.80	19.40	\\r
07133190		0	Outros	18.80	24.50	\\r
07133210		0	Para semeadura	11.47	12.07	\\r
07133290		0	Outros	11.47	17.17	\\r
07133311		0	Para semeadura	11.47	12.07	\\r
07133319		0	Outros	11.47	17.17	\\r
07133321		0	Para semeadura	11.47	12.07	\\r
07133329		0	Outros	11.47	17.17	\\r
07133391		0	Para semeadura	11.47	12.07	\\r
07133399		0	Outros	11.47	17.17	\\r
07133410		0	Para semeadura	11.47	12.07	\\r
07133490		0	Outros	11.47	17.17	\\r
07133510		0	Para semeadura	11.47	12.07	\\r
07133590		0	Outros	11.47	17.17	\\r
07133910		0	Para semeadura	18.80	19.40	\\r
07133990		0	Outros	18.80	24.50	\\r
07134010		0	Para semeadura	20.11	20.71	\\r
07134090		0	Outras	20.11	25.81	\\r
07135010		0	Para semeadura	20.11	20.71	\\r
07135090		0	Outras	20.11	25.81	\\r
07136010		0	Para semeadura	12.77	13.37	\\r
07136090		0	Outros	12.77	18.47	\\r
07139010		0	Para semeadura	20.11	20.71	\\r
07139090		0	Outros	20.11	25.81	\\r
07141000		0	-Raízes de mandioca	20.11	25.81	\\r
07142000		0	-Batatas-doces	20.11	25.81	\\r
07143000		0	-Inhames (Dioscorea spp.)	20.11	25.81	\\r
07144000		0	-Taros (Colocasia spp.)	20.11	25.81	\\r
07145000		0	-Mangaritos (Xanthosoma spp.)	20.11	25.81	\\r
07149000		0	-Outros	20.11	25.81	\\r
08011110		0	Sem casca, mesmo ralados	20.11	25.81	\\r
08011110	01	0	Ex 01 - Acondicionados em embalagens de apresentação	20.11	25.81	\\r
08011190		0	Outros	20.11	25.81	\\r
08011190	01	0	Ex 01 - Acondicionados em embalagens de apresentação	20.11	25.81	\\r
08011200		0	--Na casca interna (endocarpo)	20.11	25.81	\\r
08011900		0	--Outros	20.11	25.81	\\r
08012100		0	--Com casca	20.11	25.81	\\r
08012100	01	0	Ex 01 - Seca e acondicionada em embalagem de apresentação	20.11	25.81	\\r
08012200		0	--Sem casca	20.11	25.81	\\r
08012200	01	0	Ex 01 - Seca e acondicionada em embalagem de apresentação	20.11	25.81	\\r
08013100		0	--Com casca	20.11	25.81	\\r
08013100	01	0	Ex 01 - Seca e acondicionada em embalagem de apresentação	20.11	25.81	\\r
08013200		0	--Sem casca	20.11	25.81	\\r
08013200	01	0	Ex 01 - Seca e acondicionada em embalagem de apresentação	20.11	25.81	\\r
08021100		0	--Com casca	20.11	25.81	\\r
08021200		0	--Sem casca	20.11	25.81	\\r
08022100		0	--Com casca	20.11	23.88	\\r
08022200		0	--Sem casca	20.11	23.88	\\r
08023100		0	--Com casca	20.11	25.81	\\r
08023200		0	--Sem casca	20.11	25.81	\\r
08024100		0	--Com casca	20.11	25.81	\\r
08024200		0	--Sem casca	20.11	25.81	\\r
08025100		0	--Com casca	20.11	25.81	\\r
08025200		0	--Sem casca	20.11	25.81	\\r
08026100		0	--Com casca	20.11	25.81	\\r
08026200		0	--Sem casca	20.11	25.81	\\r
08027000		0	-Nozes de cola (Cola spp.)	20.11	25.81	\\r
08028000		0	-Nozes de areca (nozes de bétele)	20.11	25.81	\\r
08029000		0	-Outras	20.11	25.81	\\r
08031000		0	-Bananas-da-terra	20.11	25.81	\\r
08031000	01	0	Ex 01 - Secas e acondicionadas em embalagens de apresentação	20.11	25.81	\\r
08039000		0	-Outras	20.11	25.81	\\r
08039000	01	0	Ex 01 - Secas e acondicionadas em embalagens de apresentação	20.11	25.81	\\r
08041010		0	Frescas	20.11	25.81	\\r
08041020		0	Secas	20.11	25.81	\\r
08042010		0	Frescos	20.11	25.81	\\r
08042020		0	Secos	20.11	25.81	\\r
08043000		0	-Abacaxis (ananases)	20.11	25.81	\\r
08043000	01	0	Ex 01 - Secos e acondicionados em embalagens de apresentação	20.11	25.81	\\r
08044000		0	-Abacates	20.11	25.81	\\r
08044000	01	0	Ex 01 - Secos e acondicionados em embalagens de apresentação	20.11	25.81	\\r
08045010		0	Goiabas	20.11	25.81	\\r
08045010	01	0	Ex 01 - Secas e acondicionadas em embalagens de apresentação	20.11	25.81	\\r
08045020		0	Mangas	20.11	25.81	\\r
08045020	01	0	Ex 01 - Secas e acondicionadas em embalagens de apresentação	20.11	25.81	\\r
08045030		0	Mangostões	20.11	25.81	\\r
08045030	01	0	Ex 01 - Secos	20.11	25.81	\\r
08051000		0	-Laranjas	20.11	25.81	\\r
08051000	01	0	Ex 01 - Secas	20.11	25.81	\\r
08052000		0	-Tangerinas, mandarinas e satsumas. clementinas, wilkings e outros frutos cítricos híbridos semelhantes	20.11	25.81	\\r
08052000	01	0	Ex 01 – Secos	20.11	25.81	\\r
08054000		0	-Toranjas e pomelos	20.11	25.81	\\r
08054000	01	0	Ex 01 - Secos	20.11	25.81	\\r
08055000		0	-Limões (Citrus limon, Citrus limonum) e limas (Citrus aurantifolia, Citrus latifolia)	20.11	25.81	\\r
08055000	01	0	Ex 01 - Secos	20.11	25.81	\\r
08059000		0	-Outros	20.11	25.81	\\r
08059000	01	0	Ex 01 - Secos	20.11	25.81	\\r
08061000		0	-Frescas	20.11	25.81	\\r
08062000		0	-Secas (passas)	20.11	25.81	\\r
08071100		0	--Melancias	20.11	25.81	\\r
08071900		0	--Outros	20.11	25.81	\\r
08072000		0	-Mamões (papaias)	20.11	25.81	\\r
08081000		0	-Maçãs	8.11	13.81	\\r
08083000		0	-Peras	8.11	13.81	\\r
08084000		0	-Marmelos	20.11	25.81	\\r
08091000		0	-Damascos	20.11	25.81	\\r
08092100		0	--Cerejas-ácidas (Prunus cerasus)	20.11	25.81	\\r
08092900		0	--Outras	20.11	25.81	\\r
08093010		0	Pêssegos, excluindo as nectarinas	20.11	25.81	\\r
08093020		0	Nectarinas	20.11	25.81	\\r
08094000		0	-Ameixas e abrunhos	20.11	25.81	\\r
08101000		0	-Morangos	20.11	25.81	\\r
08102000		0	-Framboesas, amoras, incluindo as silvestres, e amoras-framboesas	20.11	25.81	\\r
08103000		0	-Groselhas, incluindo o cassis	20.11	25.81	\\r
08104000		0	-Airelas, mirtilos e outras frutas do gênero Vaccinium	20.11	25.81	\\r
08105000		0	-Kiwis (quivis)	20.11	25.81	\\r
08106000		0	-Duriões (duriangos)	20.11	25.81	\\r
08107000		0	-Caquis (dióspiros)	20.11	25.81	\\r
08109000		0	-Outras	20.11	25.81	\\r
08111000		0	-Morangos	20.11	25.81	\\r
08111000	01	0	Ex 01 - Adicionados de açúcar ou de outros edulcorantes	20.11	25.81	\\r
08112000		0	-Framboesas, amoras, incluindo as silvestres, amoras-framboesas e groselhas	20.11	25.81	\\r
08112000	01	0	Ex 01 - Adicionados de açúcar ou de outros edulcorantes	20.11	25.81	\\r
08119000		0	-Outras	20.11	25.81	\\r
08119000	01	0	Ex 01 - Adicionadas de açúcar ou de outros edulcorantes	20.11	25.81	\\r
08121000		0	-Cerejas	20.11	25.81	\\r
08129000		0	-Outras	20.11	25.81	\\r
08131000		0	-Damascos	20.11	25.81	\\r
08132010		0	Com caroço	20.11	25.81	\\r
08132020		0	Sem caroço	20.11	25.81	\\r
08133000		0	-Maçãs	20.11	25.81	\\r
08134010		0	Pêras	20.11	25.81	\\r
08134090		0	Outras	20.11	25.81	\\r
08135000		0	-Misturas de frutas secas ou de frutas de casca rija, do presente Capítulo	20.11	25.81	\\r
08140000		0	Cascas de frutos cítricos, de melões ou de melancias, frescas, secas, congeladas ou apresentadas em água salgada, sulfurada ou adicionada de outras substâncias destinadas a assegurar transitoriamente a sua conservação.	20.11	25.81	\\r
09011110		0	Em grão	20.11	25.81	\\r
09011190		0	Outros	20.11	25.81	\\r
09011190	01	0	Ex 01 - Moídos	20.11	25.81	\\r
09011200		0	--Descafeinado	20.11	25.81	\\r
09012100		0	--Não descafeinado	20.11	25.81	\\r
09012200		0	--Descafeinado	20.11	25.81	\\r
09019000		0	-Outros	20.11	25.81	\\r
09019000	01	0	Ex 01 - Cascas e películas de café	20.11	25.81	\\r
09021000		0	-Chá verde (não fermentado) em embalagens imediatas de conteúdo não superior a 3 kg	31.45	37.15	\\r
09022000		0	-Chá verde (não fermentado) apresentado de qualquer outra forma	31.45	37.15	\\r
09023000		0	-Chá preto (fermentado) e chá parcialmente fermentado, em embalagens imediatas de conteúdo não superior a 3 kg	31.45	37.15	\\r
09024000		0	-Chá preto (fermentado) e chá parcialmente fermentado, apresentados de qualquer outra forma	31.45	37.15	\\r
09030010		0	Simplesmente cancheado	31.45	37.15	\\r
09030010	01	0	Ex 01 - Embalagens imediatas de conteúdo não superior a 5 kg	31.45	37.15	\\r
09030090		0	Outros	31.45	37.15	\\r
09030090	01	0	Ex 01 - Embalagens imediatas de conteúdo não superior a 5 kg	31.45	37.15	\\r
09041100		0	--Não triturada nem em pó	31.45	37.15	\\r
09041200		0	--Triturada ou em pó	31.45	37.15	\\r
09042100		0	--Secos, não triturados nem em pó	31.45	37.15	\\r
09042200		0	--Triturados ou em pó	31.45	37.15	\\r
09051000		0	-Não triturada nem em pó	31.45	37.15	\\r
09052000		0	-Triturada ou em pó	31.45	37.15	\\r
09061100		0	--Canela (Cinnamomum zeylanicum blume)	31.45	37.15	\\r
09061900		0	--Outras	31.45	37.15	\\r
09062000		0	-Trituradas ou em pó	31.45	37.15	\\r
09071000		0	-Não triturado nem em pó	31.45	37.15	\\r
09072000		0	-Triturado ou em pó	31.45	37.15	\\r
09081100		0	--Não triturada nem em pó	31.45	37.15	\\r
09081200		0	--Triturada ou em pó	31.45	37.15	\\r
09082100		0	--Não triturado nem em pó	31.45	37.15	\\r
09082200		0	--Triturado ou em pó	31.45	37.15	\\r
09083100		0	--Não triturados nem em pó	31.45	37.15	\\r
09083200		0	--Triturados ou em pó	31.45	37.15	\\r
09092100		0	--Não trituradas nem em pó	31.45	37.15	\\r
09092200		0	--Trituradas ou em pó	31.45	37.15	\\r
09093100		0	--Não trituradas nem em pó	31.45	37.15	\\r
09093200		0	--Trituradas ou em pó	31.45	37.15	\\r
09096110		0	De anis (erva-doce)	31.45	37.15	\\r
09096120		0	De badiana (anis-estrelado)	31.45	37.15	\\r
09096190		0	Outras	31.45	37.15	\\r
09096210		0	De anis (erva-doce)	31.45	37.15	\\r
09096220		0	De badiana (anis-estrelado)	31.45	37.15	\\r
09096290		0	Outras	31.45	37.15	\\r
09101100		0	--Não triturado nem em pó	31.45	37.15	\\r
09101200		0	--Triturado ou em pó	31.45	37.15	\\r
09102000		0	-Açafrão	31.45	37.15	\\r
09103000		0	-Açafrão-da-terra	31.45	37.15	\\r
09109100		0	--Misturas mencionadas na Nota 1 b) do presente Capítulo	31.45	37.15	\\r
09109900		0	--Outras	31.45	37.15	\\r
10011100		0	--Para semeadura	20.11	20.71	\\r
10011900		0	--Outros	20.11	25.81	\\r
10019100		0	--Para semeadura	20.11	20.71	\\r
10019900		0	--Outros	20.11	25.81	\\r
10021000		0	-Para semeadura	20.11	20.71	\\r
10029000		0	-Outros	20.11	24.86	\\r
10031000		0	-Para semeadura	20.11	20.71	\\r
10039010		0	Cervejeira	20.11	25.81	\\r
10039080		0	Outras, em grão	20.11	25.81	\\r
10039090		0	Outras	20.11	25.81	\\r
10041000		0	-Para semeadura	20.11	20.71	\\r
10049000		0	-Outras	20.11	24.86	\\r
10051000		0	-Para semeadura	20.11	20.71	\\r
10059010		0	Em grão	20.11	24.86	\\r
10059090		0	Outros	20.11	24.86	\\r
10061010		0	Para semeadura	11.47	12.07	\\r
10061091		0	Parboilizado	11.47	17.17	\\r
10061092		0	Não parboilizado	11.47	17.17	\\r
10062010		0	Parboilizado	11.47	17.17	\\r
10062020		0	Não parboilizado	11.47	17.17	\\r
10063011		0	Polido ou brunido	11.47	18.08	\\r
10063019		0	Outros	11.47	17.17	\\r
10063021		0	Polido ou brunido	11.47	18.08	\\r
10063029		0	Outros	11.47	17.17	\\r
10064000		0	-Arroz quebrado	11.47	17.17	\\r
10071000		0	-Para semeadura	20.11	20.71	\\r
10079000		0	-Outros	20.11	24.86	\\r
10081010		0	Para semeadura	20.11	20.71	\\r
10081090		0	Outros	20.11	24.86	\\r
10082100		0	--Para semeadura	20.11	20.71	\\r
10082900		0	--Outros	20.11	24.86	\\r
10083010		0	Para semeadura	20.11	20.71	\\r
10083090		0	Outros	20.11	24.86	\\r
10084010		0	Para semeadura	20.11	20.71	\\r
10084090		0	Outros	20.11	24.86	\\r
10085010		0	Para semeadura	20.11	20.71	\\r
10085090		0	Outros	20.11	24.86	\\r
10086010		0	Para semeadura	20.11	20.71	\\r
10086090		0	Outros	20.11	24.86	\\r
10089010		0	Para semeadura	20.11	20.71	\\r
10089090		0	Outros	20.11	24.86	\\r
11010010		0	De trigo	16.11	22.72	\\r
11010020		0	De mistura de trigo com centeio (méteil)	27.45	34.06	\\r
11022000		0	-Farinha de milho	20.11	25.81	\\r
11029000		0	-Outras	31.45	37.15	\\r
11031100		0	--De trigo	31.45	37.15	\\r
11031300		0	--De milho	20.11	25.81	\\r
11031900		0	--De outros cereais	31.45	37.15	\\r
11032000		0	-Pellets	31.45	37.15	\\r
11041200		0	--De aveia	31.45	37.15	\\r
11041900		0	--De outros cereais	20.11	25.81	\\r
11042200		0	--De aveia	31.45	37.15	\\r
11042300		0	--De milho	31.45	37.15	\\r
11042900		0	--De outros cereais	31.45	37.15	\\r
11043000		0	-Germes de cereais, inteiros, esmagados, em flocos ou moídos	31.45	37.15	\\r
11051000		0	-Farinha, sêmola e pó	31.45	38.06	\\r
11052000		0	-Flocos, grânulos e pellets	31.45	38.06	\\r
11061000		0	-Dos legumes de vagem, secos, da posição 07.13	31.45	37.15	\\r
11062000		0	-De sagu ou das raízes ou tubérculos, da posição 07.14	20.11	25.81	\\r
11063000		0	-Dos produtos do Capítulo 8	31.45	37.15	\\r
11071010		0	Inteiro ou partido	34.12	41.61	\\r
11071020		0	Moído ou em farinha	34.12	41.61	\\r
11072010		0	Inteiro ou partido	34.12	41.61	\\r
11072020		0	Moído ou em farinha	34.12	41.61	\\r
11081100		0	--Amido de trigo	31.45	37.15	\\r
11081200		0	--Amido de milho	31.45	37.15	\\r
11081300		0	--Fécula de batata	31.45	37.15	\\r
11081400		0	--Fécula de mandioca	24.11	29.81	\\r
11081900		0	--Outros amidos e féculas	31.45	37.15	\\r
11082000		0	-Inulina	31.45	37.15	\\r
11090000		0	Glúten de trigo, mesmo seco.	31.45	37.15	\\r
12011000		0	-Para semeadura	20.11	20.71	\\r
12019000		0	-Outras	29.36	34.11	\\r
12023000		0	-Para semeadura	31.45	32.05	\\r
12024100		0	--Com casca	31.45	36.20	\\r
12024200		0	--Descascados, mesmo triturados	31.45	37.15	\\r
12030000		0	Copra.	31.45	36.20	\\r
12040010		0	Para semeadura	31.45	32.05	\\r
12040090		0	Outras	31.45	36.20	\\r
12051010		0	Para semeadura	31.45	32.05	\\r
12051090		0	Outras	31.45	36.20	\\r
12059010		0	Para semeadura	31.45	32.05	\\r
12059090		0	Outras	31.45	36.20	\\r
12060010		0	Para semeadura	31.45	32.05	\\r
12060090		0	Outras	31.45	36.20	\\r
12071010		0	Para semeadura	31.45	32.05	\\r
12071090		0	Outras	31.45	36.20	\\r
12072100		0	--Para semeadura	31.45	32.05	\\r
12072900		0	--Outras	31.45	36.20	\\r
12073010		0	--Para semeadura	31.45	32.05	\\r
12073090		0	--Outras	31.45	36.20	\\r
12074010		0	Para semeadura	31.45	32.05	\\r
12074090		0	Outras	31.45	36.20	\\r
12075010		0	Para semeadura	31.45	32.05	\\r
12075090		0	Outras	31.45	36.20	\\r
12076010		0	Para semeadura	31.45	32.05	\\r
12076090		0	Outras	31.45	36.20	\\r
12077010		0	Para semeadura	31.45	32.05	\\r
12077090		0	Outras	31.45	36.20	\\r
12079110		0	Para semeadura	31.45	32.05	\\r
12079190		0	Outras	31.45	36.20	\\r
12079910		0	Para semeadura	31.45	32.05	\\r
12079990		0	Outros	31.45	36.20	\\r
12081000		0	-De soja	31.45	37.15	\\r
12089000		0	-Outras	31.45	37.15	\\r
12091000		0	-Sementes de beterraba sacarina	31.45	32.05	\\r
12092100		0	--Sementes de alfafa (luzerna)	31.45	32.05	\\r
12092200		0	--Sementes de trevo (Trifolium spp.)	31.45	32.05	\\r
12092300		0	--Sementes de festuca	31.45	32.05	\\r
12092400		0	--Sementes de pasto dos prados de Kentucky (Poa pratensis L.)	31.45	32.05	\\r
12092500		0	--Sementes de azevém (Lolium multiflorum Lam., Lolium perenne L.)	31.45	32.05	\\r
12092900		0	--Outras	31.45	32.05	\\r
12093000		0	-Sementes de plantas herbáceas cultivadas especialmente pelas suas flores	31.45	32.05	\\r
12099100		0	--Sementes de produtos hortícolas	31.45	32.05	\\r
12099900		0	--Outros	31.45	32.05	\\r
12101000		0	-Cones de lúpulo, não triturados nem moídos nem em pellets	31.45	36.20	\\r
12102010		0	Cones de lúpulo	22.20	26.95	\\r
12102020		0	Lupulina	31.45	36.20	\\r
12112000		0	-Raízes de ginseng	31.45	36.20	\\r
12112000	01	0	Ex 01 - Secas	31.45	36.20	\\r
12113000		0	-Coca (folha de)	31.45	36.20	\\r
12113000	01	0	Ex 01 - Seca	31.45	36.20	\\r
12114000		0	-Palha de dormideira ou papoula	31.45	36.20	\\r
12114000	01	0	Ex 01 - Seca	31.45	36.20	\\r
12119010		0	Orégano (Origanum vulgare)	31.45	36.20	\\r
12119010	01	0	Ex 01 - Seco	31.45	36.20	\\r
12119090		0	Outros	31.45	36.20	\\r
12119090	01	0	Ex 01 - Secos	31.45	36.20	\\r
12122100		0	--Próprias para a alimentação humana	31.45	35.22	\\r
12122100	01	0	Ex 01 - Congeladas	31.45	35.22	\\r
12122900		0	--Outras	31.45	35.22	\\r
12122900	01	0	Ex 01 - Das espécies utilizadas principalmente em medicina, secas	31.45	35.22	\\r
12129100		0	--Beterraba sacarina	31.45	36.20	\\r
12129200		0	--Alfarroba	31.45	36.20	\\r
12129200	01	0	Ex 01 - Seca, incluídas as suas sementes	31.45	36.20	\\r
12129300		0	--Cana-de-açúcar	31.45	36.20	\\r
12129400		0	--Raízes de chicória	31.45	36.20	\\r
12129910		0	Stevia rebaudiana (Ka’a He’?)	31.45	36.20	\\r
12129990		0	Outros	31.45	36.20	\\r
12130000		0	Palhas e cascas de cereais, em bruto, mesmo picadas, moídas, prensadas ou em pellets.	31.45	36.20	\\r
12141000		0	-Farinha e pellets, de alfafa (luzerna)	31.45	36.20	\\r
12149000		0	-Outros	31.45	36.20	\\r
13012000		0	-Goma-arábica	31.45	34.20	\\r
13019010		0	Goma-laca	31.45	34.20	\\r
13019090		0	Outros	31.45	36.20	\\r
13021110		0	Concentrados de palha de papoula	31.45	36.20	\\r
13021190		0	Outros	31.45	36.20	\\r
13021200		0	--De alcaçuz	31.45	36.20	\\r
13021300		0	--De lúpulo	34.12	38.87	\\r
13021910		0	De mamão (Carica papaya), seco	31.45	36.20	\\r
13021920		0	De semente de toranja ou de pomelo	31.45	36.20	\\r
29141910		0	Forona	20.11	21.81	\\r
13021930		0	De gin kgo biloba, seco	31.45	33.15	\\r
13021940		0	Valepotriatos	31.45	33.15	\\r
13021950		0	De ginseng	31.45	33.15	\\r
13021960		0	Silimarina	31.45	38.94	\\r
13021991		0	De piretro ou de raízes de plantas que contenha rotenona	31.45	33.15	\\r
13021999		0	Outros	31.45	36.20	\\r
13022010		0	Matérias pécticas (pectinas)	31.45	36.20	\\r
13022090		0	Outros	31.45	36.20	\\r
13023100		0	--Ágar-ágar	31.45	37.15	\\r
13023211		0	Farinha de endosperma	31.45	36.20	\\r
13023219		0	Outros	31.45	36.20	\\r
13023220		0	De sementes de guaré	31.45	36.20	\\r
13023910		0	Carragenina (musgo-da-irlanda)	31.45	37.15	\\r
13023990		0	Outros	31.45	36.20	\\r
14011000		0	-Bambus	31.45	35.22	\\r
14012000		0	-Rotins	31.45	35.22	\\r
14019000		0	-Outras	31.45	35.22	\\r
14042010		0	Em bruto	31.45	35.22	\\r
14042090		0	Outros	31.45	35.22	\\r
14049010		0	Matérias vegetais das espécies principalmente utilizadas na fabricação de vassouras, escovas, pincéis e artigos semelhantes (por exemplo, sorgo, piaçaba, raiz de grama, tampico), mesmo torcidas ou em feixes	31.45	35.22	\\r
14049090		0	Outros	31.45	35.22	\\r
15011000		0	-Banha	31.45	36.20	\\r
15012000		0	-Outras gorduras de porco	31.45	36.20	\\r
15019000		0	-Outras	31.45	36.20	\\r
15021011		0	Em bruto	20.11	23.88	\\r
15021012		0	Fundido (incluindo o premier jus)	20.11	23.88	\\r
15021019		0	Outros	20.11	23.88	\\r
15021090		0	Outros	31.45	35.22	\\r
15029000		0	-Outras	31.45	35.22	\\r
15030000		0	Estearina solar, óleo de banha de porco, óleo-estearina, óleo-margarina e óleo de sebo, não emulsionados nem misturados, nem preparados de outro modo.	31.45	36.20	\\r
15041011		0	Óleo em bruto	31.45	34.20	\\r
15041019		0	Outros	31.45	34.20	\\r
15041090		0	Outros	31.45	37.15	\\r
15042000		0	-Gorduras e óleos de peixes e respectivas frações, exceto óleos de fígados	31.45	37.15	\\r
15043000		0	-Gorduras e óleos de mamíferos marinhos e respectivas frações	31.45	37.15	\\r
15050010		0	Lanolina	31.45	36.20	\\r
15050090		0	Outras	31.45	35.22	\\r
15060000		0	Outras gorduras e óleos animais, e respectivas frações, mesmo refinados, mas não quimicamente modificados.	31.45	35.22	\\r
15071000		0	-Óleo em bruto, mesmo degomado	20.11	25.81	\\r
15079011		0	Em recipientes com capacidade inferior ou igual a 5 l	20.11	26.72	\\r
15079019		0	Outros	20.11	26.72	\\r
15079090		0	Outros	20.11	25.81	\\r
15081000		0	-Óleo em bruto	20.11	25.81	\\r
15089000		0	-Outros	20.11	26.72	\\r
15091000		0	-Virgens	20.11	25.81	\\r
15099010		0	Refinado	20.11	25.81	\\r
15099090		0	Outros	20.11	25.81	\\r
15100000		0	Outros óleos e respectivas frações, obtidos exclusivamente a partir de azeitonas, mesmo refinados, mas não quimicamente modificados, e misturas desses óleos ou frações com óleos ou frações da posição 15.09.	20.11	25.81	\\r
15111000		0	-Óleo em bruto	20.11	25.81	\\r
15119000		0	-Outros	20.11	25.81	\\r
15121110		0	De girassol	20.11	25.81	\\r
15121120		0	De cártamo	20.11	25.81	\\r
15121911		0	Refinado, em recipientes com capacidade inferior ou igual a 5 l	20.11	26.72	\\r
15121919		0	Outros	20.11	26.72	\\r
15121920		0	De cártamo	20.11	25.81	\\r
15122100		0	--Óleo em bruto, mesmo desprovido de gossipol	20.11	25.81	\\r
15122910		0	Refinado	20.11	25.81	\\r
15122990		0	Outros	20.11	25.81	\\r
15131100		0	--Óleo em bruto	20.11	25.81	\\r
15131900		0	--Outros	20.11	25.81	\\r
15132110		0	De amêndoa de palma (palmiste)	20.11	25.81	\\r
15132120		0	De babaçu	20.11	25.81	\\r
15132910		0	De amêndoa de palma (palmiste)	20.11	25.81	\\r
15132920		0	De babaçu	20.11	25.81	\\r
15141100		0	--Óleos em bruto	20.11	25.81	\\r
15141910		0	Refinados	20.11	25.81	\\r
15141990		0	Outros	20.11	25.81	\\r
15149100		0	--Óleos em bruto	20.11	25.81	\\r
15149910		0	Refinados	20.11	25.81	\\r
15149990		0	Outros	20.11	25.81	\\r
15151100		0	--Óleo em bruto	31.45	37.15	\\r
15151900		0	--Outros	31.45	37.15	\\r
15152100		0	--Óleo em bruto	31.45	37.15	\\r
15152910		0	Refinado, em recipientes com capacidade inferior ou igual a 5 l	31.45	37.15	\\r
15152990		0	Outros	31.45	37.15	\\r
15153000		0	-Óleo de rícino e respectivas frações	31.45	37.15	\\r
15155000		0	-Óleo de gergelim e respectivas frações	31.45	37.15	\\r
15159010		0	Óleo de jojoba e respectivas frações	31.45	37.15	\\r
15159021		0	Em bruto	31.45	37.15	\\r
15159022		0	Refinado	31.45	37.15	\\r
15159090		0	Outros	31.45	37.15	\\r
15161000		0	-Gorduras e óleos animais e respectivas frações	31.45	37.15	\\r
15162000		0	-Gorduras e óleos vegetais e respectivas frações	31.45	37.15	\\r
15171000		0	-Margarina, exceto a margarina líquida	20.11	26.72	\\r
15179010		0	Misturas de óleos refinados, em recipientes com capacidade inferior ou igual a 5 l	31.45	38.06	\\r
15179090		0	Outras	31.45	38.06	\\r
15180010		0	Óleo vegetal epoxidado	31.45	37.15	\\r
15180090		0	Outros	31.45	37.15	\\r
15200010		0	Glicerol em bruto	31.45	36.20	\\r
15200020		0	Águas e lixívias, glicéricas	31.45	37.15	\\r
15211000		0	-Ceras vegetais	31.45	37.15	\\r
15211000	01	0	Ex 01 - Refinadas, branqueadas ou coloridas artificialmente	31.45	37.15	\\r
15219011		0	Em bruto	31.45	37.15	\\r
15219019		0	Outras	31.45	37.15	\\r
15219019	01	0	Ex 01 - Refinadas, branqueadas ou coloridas artificialmente	31.45	37.15	\\r
15219090		0	Outras	31.45	37.15	\\r
15219090	01	0	Ex 01 - Ceras de insetos, refinadas, branqueadas ou coloridas artificialmente	31.45	37.15	\\r
15219090	02	0	Ex 02 - Espermacete, prensado ou refinado	31.45	37.15	\\r
15220000		0	Dégras. resíduos provenientes do tratamento das substâncias gordas ou das ceras animais ou vegetais.	31.45	37.15	\\r
16010000		0	Enchidos e produtos semelhantes, de carne, de miudezas ou de sangue. preparações alimentícias à base de tais produtos.	31.45	39.79	\\r
16021000		0	-Preparações homogeneizadas	31.45	39.79	\\r
16022000		0	-De fígados de quaisquer animais	31.45	39.79	\\r
16023100		0	--De peruas e de perus	31.45	39.79	\\r
16023210		0	Com conteúdo de carne ou de miudezas superior ou igual a 57%, em peso, não cozidas	31.45	39.79	\\r
16023220		0	Com conteúdo de carne ou de miudezas superior ou igual a 57%, em peso, cozidas	31.45	39.79	\\r
16023230		0	Com conteúdo de carne ou de miudezas superior ou igual a 25% e inferior a 57%, em peso	31.45	39.79	\\r
16023290		0	Outras	31.45	39.79	\\r
16023900		0	--Outras	31.45	39.79	\\r
16024100		0	--Pernas e respectivos pedaços	31.45	39.79	\\r
16024200		0	--Pás e respectivos pedaços	31.45	39.79	\\r
16024900		0	--Outras, incluindo as misturas	31.45	39.79	\\r
16025000		0	-Da espécie bovina	31.45	39.79	\\r
16029000		0	-Outras, incluindo as preparações de sangue de quaisquer animais	31.45	39.79	\\r
16030000		0	Extratos e sucos de carne, de peixes ou de crustáceos, de moluscos ou de outros invertebrados aquáticos.	31.45	39.79	\\r
16041100		0	--Salmões	34.12	42.46	\\r
16041200		0	--Arenques	34.12	42.46	\\r
16041310		0	Sardinhas	24.11	32.45	\\r
16041390		0	Outros	24.11	32.45	\\r
16041410		0	Atuns	31.45	39.79	\\r
16041420		0	Bonito-listrado	31.45	39.79	\\r
16041430		0	Bonito-cachorro	31.45	39.79	\\r
16041500		0	--Cavalinhas	31.45	39.79	\\r
16041600		0	--Anchovas	31.45	39.79	\\r
16041700		0	--Enguias	31.45	39.79	\\r
16041900		0	--Outros	31.45	39.79	\\r
16042010		0	De atuns	31.45	39.79	\\r
16042020		0	De bonito-listrado	31.45	39.79	\\r
16042030		0	De sardinhas ou de anchoveta	24.11	32.45	\\r
16042090		0	Outras	31.45	39.79	\\r
16043100		0	--Caviar	34.12	42.46	\\r
16043200		0	--Sucedâneos de caviar	34.12	42.46	\\r
16051000		0	-Caranguejos	31.45	39.79	\\r
16052100		0	--Não acondicionados em recipientes hermeticamente fechados	31.45	39.79	\\r
16052900		0	--Outros	31.45	39.79	\\r
16053000		0	-Lavagantes	31.45	39.79	\\r
16054000		0	-Outros crustáceos	31.45	39.79	\\r
16055100		0	--Ostras	31.45	39.79	\\r
16055200		0	--Vieiras e outros mariscos	31.45	39.79	\\r
16055300		0	--Mexilhões	31.45	39.79	\\r
16055400		0	--Sépias e lulas	31.45	39.79	\\r
16055500		0	--Polvos	31.45	39.79	\\r
16055600		0	--Ameijoas, berbigões e arcas	31.45	39.79	\\r
16055700		0	--Abalones	31.45	39.79	\\r
16055800		0	--Caracóis, exceto os do mar	31.45	39.79	\\r
16055900		0	-Outros	31.45	39.79	\\r
16056100		0	--Pepinos-do-mar	31.45	39.79	\\r
16056200		0	--Ouriços-do-mar	31.45	39.79	\\r
16056300		0	--Medusas (águas-vivas)	31.45	39.79	\\r
16056900		0	--Outros	31.45	39.79	\\r
17011200		0	--De beterraba	34.12	42.46	\\r
17011300		0	--Açúcar de cana mencionado na Nota 2 de subposição do presente Capítulo	34.12	42.46	\\r
17011400		0	--Outros açúcares de cana	34.12	42.46	\\r
17019100		0	--Adicionados de aromatizantes ou de corantes	34.12	42.46	\\r
17019900		0	--Outros	22.78	31.12	\\r
17019900	01	0	Ex 01 - Sacarose quimicamente pura	31.45	39.79	\\r
17021100		0	--Que contenham, em peso, 99% ou mais de lactose, expresso em lactose anidra, calculado sobre a matéria seca	31.45	39.79	\\r
17021900		0	--Outros	31.45	39.79	\\r
17022000		0	-Açúcar e xarope, de bordo (ácer)	31.45	39.79	\\r
17023011		0	Quimicamente pura	31.45	39.79	\\r
17023019		0	Outras	34.12	42.46	\\r
17023020		0	Xarope de glicose	31.45	39.79	\\r
17024010		0	Glicose	31.45	39.79	\\r
17024020		0	Xarope de glicose	31.45	39.79	\\r
17025000		0	-Frutose (levulose) quimicamente pura	31.45	39.79	\\r
17026010		0	Frutose (levulose)	31.45	39.79	\\r
17026020		0	Xarope de frutose (levulose)	31.45	39.79	\\r
17029000		0	-Outros, incluindo o açúcar invertido e os outros açúcares e xaropes de açúcares, que contenham, em peso, no estado seco, 50% de frutose (levulose)	34.12	42.46	\\r
17031000		0	-Melaços de cana	34.12	42.46	\\r
17039000		0	-Outros	34.12	42.46	\\r
17041000		0	-Gomas de mascar, mesmo revestidas de açúcar	34.12	44.07	\\r
17049010		0	Chocolate branco	34.12	44.07	\\r
17049020		0	Caramelos, confeitos, dropes, pastilhas, e produtos semelhantes	34.12	44.07	\\r
17049090		0	Outros	34.12	44.07	\\r
18010000		0	Cacau inteiro ou partido, em bruto ou torrado.	31.45	37.15	\\r
18010000	01	0	Ex 01 - Torrado	31.45	37.15	\\r
18020000		0	Cascas, películas e outros desperdícios de cacau.	31.45	37.15	\\r
18031000		0	-Não desengordurada	31.45	38.06	\\r
18032000		0	-Total ou parcialmente desengordurada	31.45	38.06	\\r
18040000		0	Manteiga, gordura e óleo, de cacau.	31.45	38.06	\\r
18050000		0	Cacau em pó, sem adição de açúcar ou de outros edulcorantes.	31.45	38.94	\\r
18061000		0	-Cacau em pó, com adição de açúcar ou de outros edulcorantes	31.45	40.61	\\r
18062000		0	-Outras preparações em blocos ou em barras, com peso superior a 2 kg, ou no estado líquido, em pasta, em pó, grânulos ou formas semelhantes, em recipientes ou embalagens imediatas de conteúdo superior a 2 kg	31.45	40.61	\\r
18063110		0	Chocolate	34.12	44.07	\\r
18063120		0	Outras preparações	34.12	44.07	\\r
18063210		0	Chocolate	34.12	44.07	\\r
18063220		0	Outras preparações	34.12	44.07	\\r
18069000		0	-Outros	34.12	44.07	\\r
18069000	01	0	Ex 01 - Achocolatados, assim entendidos os produtos à base de chocolate, em pó ou em grânulos, destinados à mistura com água ou leite	31.45	41.40	\\r
19011010		0	Leite modificado	31.45	39.79	\\r
19011020		0	Farinha láctea	31.45	40.61	\\r
19011030		0	À base de farinha, grumos, sêmola ou amido	31.45	40.61	\\r
19011090		0	Outras	31.45	40.61	\\r
19012000		0	-Misturas e pastas para a preparação de produtos de padaria, pastelaria e da indústria de bolachas e biscoitos, da posição 19.05	27.45	34.94	\\r
19012000	01	0	Ex 01 – Pré-misturas próprias para fabricação de pão do tipo comum	16.11	23.60	\\r
19019010		0	Extrato de malte	31.45	38.94	\\r
19019020		0	Doce de leite	31.45	39.79	\\r
19019090		0	Outros	31.45	39.79	\\r
19021100		0	--Que contenham ovos	16.11	24.45	\\r
19021900		0	--Outras	16.11	24.45	\\r
19022000		0	-Massas alimentícias recheadas (mesmo cozidas ou preparadas de outro modo)	16.11	24.45	\\r
19023000		0	-Outras massas alimentícias	16.11	24.45	\\r
19024000		0	-Cuscuz	16.11	24.45	\\r
19030000		0	Tapioca e seus sucedâneos preparados a partir de féculas, em flocos, grumos, grãos, pérolas ou formas semelhantes.	27.45	35.79	\\r
19041000		0	-Produtos à base de cereais, obtidos por expansão ou por torrefação	31.45	39.79	\\r
19042000		0	-Preparações alimentícias obtidas a partir de flocos de cereais não torrados ou de misturas de flocos de cereais não torrados com flocos de cereais torrados ou expandidos	31.45	39.79	\\r
19043000		0	-Trigo bulgur	31.45	39.79	\\r
19049000		0	-Outros	31.45	39.79	\\r
19051000		0	-Pão denominado knäckebrot	22.81	31.97	\\r
19052010		0	Panetone	24.11	33.27	\\r
19052090		0	Outros	24.11	33.27	\\r
19053100		0	--Bolachas e biscoitos, adicionados de edulcorante	31.45	40.61	\\r
19053200		0	--Waffles e wafers	31.45	40.61	\\r
19054000		0	-Torradas, pão torrado e produtos semelhantes torrados	24.11	33.27	\\r
19059010		0	Pão de forma	22.81	31.97	\\r
19059020		0	Bolachas	27.45	36.61	\\r
19059090		0	Outros	27.45	36.61	\\r
19059090	01	0	Ex 01 – Pão do tipo comum	11.47	20.63	\\r
20011000		0	-Pepinos e pepininhos (cornichons)	31.45	38.94	\\r
20019000		0	-Outros	31.45	38.94	\\r
20021000		0	-Tomates inteiros ou em pedaços	31.45	38.94	\\r
20021000	01	0	Ex 01 - Cozidos (exceto em água ou vapor) e congelados	31.45	38.94	\\r
20029010		0	Sucos	31.45	38.94	\\r
20029090		0	Outros	31.45	38.94	\\r
20029090	01	0	Ex 01 - Cozidos (exceto em água ou vapor) e congelados	31.45	38.94	\\r
20031000		0	-Cogumelos do gênero Agaricus	31.45	38.94	\\r
20031000	01	0	Ex 01 - Cozidos (exceto em água ou vapor) e congelados	31.45	38.94	\\r
20039000		0	-Outros	31.45	38.94	\\r
20039000	01	0	Ex 01 - Cozidos (exceto em água ou vapor) e congelados	31.45	38.94	\\r
20039000	02	0	Ex 02 - Trufas cozidas (exceto em água ou vapor) e congeladas	31.45	38.94	\\r
20039000	03	0	Ex 03 - Outras trufas	34.12	41.61	\\r
20041000		0	-Batatas	31.45	38.94	\\r
20041000	01	0	Ex 01 - Cozidas (exceto em água ou vapor)	31.45	38.94	\\r
20049000		0	-Outros produtos hortícolas e misturas de produtos hortícolas	31.45	38.94	\\r
20049000	01	0	Ex 01 - Cozidos (exceto em água ou vapor)	31.45	38.94	\\r
20051000		0	-Produtos hortícolas homogeneizados	31.45	38.94	\\r
20052000		0	-Batatas	31.45	38.94	\\r
20054000		0	-Ervilhas (Pisum sativum)	31.45	38.94	\\r
20055100		0	--Feijões em grãos	31.45	38.94	\\r
20055900		0	--Outros	31.45	38.94	\\r
20056000		0	-Aspargos	31.45	38.94	\\r
20057000		0	-Azeitonas	31.45	38.94	\\r
20058000		0	-Milho doce (Zea mays var. saccharata)	31.45	38.94	\\r
20059100		0	--Brotos de bambu	31.45	38.94	\\r
20059900		0	--Outros	31.45	38.94	\\r
20060000		0	Produtos hortícolas, frutas, cascas de frutas e outras partes de plantas, conservados com açúcar (passados por calda, glaceados ou cristalizados).	31.45	38.94	\\r
20071000		0	-Preparações homogeneizadas	31.45	38.94	\\r
20079100		0	--De frutos cítricos	31.45	38.94	\\r
20079910		0	Geleias e marmelades	31.45	38.94	\\r
20079990		0	Outros	31.45	38.94	\\r
20081100		0	--Amendoins	31.45	38.94	\\r
20081900		0	--Outros, incluindo as misturas	31.45	38.94	\\r
20081900	01	0	Ex 01 - Cozidos (exceto em água e vapor), congelados e sem adição de açúcar ou de outros edulcorantes, excluídas as misturas	31.45	38.94	\\r
29181990		0	Outros	8.11	9.81	\\r
20082010		0	Em água edulcorada, incluindo os xaropes	31.45	38.94	\\r
20082090		0	Outros	31.45	38.94	\\r
20082090	01	0	Ex 01 - Cozidos (exceto em água e vapor), congelados e sem adição de açúcar ou de outros edulcorantes	31.45	38.94	\\r
20083000		0	-Frutos cítricos	31.45	38.94	\\r
20083000	01	0	Ex 01 - Cozidos (exceto em água e vapor), congelados e sem adição de açúcar ou de outros edulcorantes	31.45	38.94	\\r
20084010		0	Em água edulcorada, incluindo os xaropes	31.45	38.94	\\r
20084090		0	Outras	31.45	38.94	\\r
20084090	01	0	Ex 01 - Cozidas (exceto em água e vapor), congeladas e sem adição de açúcar ou de outros edulcorantes	31.45	38.94	\\r
20085000		0	-Damascos	31.45	38.94	\\r
20085000	01	0	Ex 01 - Cozidos (exceto em água e vapor), congelados e sem adição de açúcar ou de outros edulcorantes	31.45	38.94	\\r
20086010		0	Em água edulcorada, incluindo os xaropes	31.45	38.94	\\r
20086090		0	Outras	31.45	38.94	\\r
20086090	01	0	Ex 01 - Cozidas (exceto em água e vapor), congeladas e sem adição de açúcar ou de outros edulcorantes	31.45	38.94	\\r
20087010		0	Em água edulcorada, incluindo os xaropes	31.45	46.60	\\r
20087020		0	Polpa com valor Brix igual ou superior a 20	31.45	38.94	\\r
20087090		0	Outros	31.45	46.60	\\r
20087090	01	0	Ex 01 - Cozidos (exceto em água e vapor), congelados e sem adição de açúcar ou de outros edulcorantes	31.45	46.60	\\r
20088000		0	-Morangos	31.45	38.94	\\r
20088000	01	0	Ex 01 - Cozidos (exceto em água e vapor), congelados e sem adição de açúcar ou de outros edulcorantes	31.45	38.94	\\r
20089100		0	--Palmitos	31.45	38.94	\\r
20089300		0	--Airelas vermelhas (Vaccinium macrocarpon, Vaccinium oxycoccos, Vaccinium vitis-idaea)	31.45	38.94	\\r
20089300	01	0	Ex 01 - Cozidas (exceto em água e vapor), congeladas e sem adição de açúcar ou de outros edulcorantes	31.45	38.94	\\r
20089710		0	Em água edulcorada, incluindo os xaropes	31.45	38.94	\\r
20089790		0	Outras	31.45	38.94	\\r
20089790	01	0	Ex 01 - Cozidas (exceto em água e vapor), congeladas e sem adição de açúcar ou de outros edulcorantes	31.45	38.94	\\r
20089900		0	--Outras	31.45	38.94	\\r
20089900	01	0	Ex 01 - Cozidas (exceto em água e vapor), congeladas e sem adição de açúcar ou de outros edulcorantes	31.45	38.94	\\r
20091100		0	--Congelado	30.75	38.24	\\r
20091200		0	--Não congelado, com valor Brix não superior a 20	30.75	38.24	\\r
20091900		0	--Outros	30.75	38.24	\\r
20092100		0	--Com valor Brix não superior a 20	30.75	38.24	\\r
20092900		0	--Outros	30.75	38.24	\\r
20093100		0	--Com valor Brix não superior a 20	30.75	38.24	\\r
20093900		0	--Outros	30.75	38.24	\\r
20094100		0	--Com valor Brix não superior a 20	30.75	38.24	\\r
20094900		0	--Outros	30.75	38.24	\\r
20095000		0	-Suco (sumo) de tomate	30.75	38.24	\\r
20096100		0	--Com valor Brix não superior a 30	30.75	38.24	\\r
20096900		0	--Outros	30.75	38.24	\\r
20097100		0	--Com valor Brix não superior a 20	30.75	38.24	\\r
20097900		0	--Outros	30.75	38.24	\\r
20098100		0	--Suco (sumo) de airela vermelha (Vaccinium macrocarpon, Vaccinium oxycoccos, Vaccinium vitis-idaea)	30.75	38.24	\\r
20098900		0	--Outros	4.20	4.80	\\r
20098910		0	Suco (sumo) de pêssego, com valor Brix igual ou superior a 60	30.75	38.24	\\r
20098990		0	Outros	30.75	38.24	\\r
20099000		0	-Misturas de sucos (sumos)	30.75	38.24	\\r
21011110		0	Café solúvel, mesmo descafeinado	20.11	28.45	\\r
21011190		0	Outros	20.11	28.45	\\r
21011200		0	--Preparações à base de extratos, essências ou concentrados ou à base de café	20.11	28.45	\\r
21012010		0	De chá	31.45	39.79	\\r
21012020		0	De mate	31.45	39.79	\\r
21013000		0	-Chicória torrada e outros sucedâneos torrados do café e respectivos extratos, essências e concentrados	31.45	38.94	\\r
21021010		0	Saccharomyces boulardii	31.45	33.15	\\r
21021090		0	Outras	31.45	38.94	\\r
21022000		0	-Leveduras mortas. outros microrganismos monocelulares mortos	31.45	38.94	\\r
21022000	01	0	Ex 01 - Leveduras mortas	31.45	38.94	\\r
21023000		0	-Pós para levedar, preparados	31.45	38.94	\\r
21031010		0	Em embalagens imediatas de conteúdo inferior ou igual a 1 kg	31.45	40.61	\\r
21031090		0	Outros	31.45	39.79	\\r
21032010		0	Em embalagens imediatas de conteúdo inferior ou igual a 1 kg	31.45	40.61	\\r
21032090		0	Outros	31.45	39.79	\\r
21033010		0	Farinha de mostarda	31.45	39.79	\\r
21033021		0	Em embalagens imediatas de conteúdo inferior ou igual a 1 kg	31.45	40.61	\\r
21033029		0	Outras	31.45	39.79	\\r
21039011		0	Em embalagens imediatas de conteúdo inferior ou igual a 1 kg	31.45	40.61	\\r
21039019		0	Outra	31.45	39.79	\\r
21039021		0	Em embalagens imediatas de conteúdo inferior ou igual a 1 kg	31.45	40.61	\\r
21039029		0	Outros	31.45	39.79	\\r
21039091		0	Em embalagens imediatas de conteúdo inferior ou igual a 1 kg	31.45	40.61	\\r
21039099		0	Outros	31.45	39.79	\\r
21041011		0	Em embalagens imediatas de conteúdo inferior ou igual a 1 kg	31.45	40.61	\\r
21041019		0	Outras	31.45	39.79	\\r
21041021		0	Em embalagens imediatas de conteúdo inferior ou igual a 1 kg	31.45	40.61	\\r
21041029		0	Outros	31.45	39.79	\\r
21042000		0	-Preparações alimentícias compostas homogeneizadas	31.45	39.79	\\r
21050010		0	Em embalagens imediatas de conteúdo inferior ou igual a 2 kg	34.12	43.28	\\r
21050090		0	Outros	34.12	42.46	\\r
23012010		0	De peixes	30.75	34.52	\\r
21061000		0	-Concentrados de proteínas e substâncias proteicas texturizadas	31.45	38.94	\\r
21069010		0	Preparações dos tipos utilizados para elaboração de bebidas	31.45	38.94	\\r
21069010	01	0	Ex 01 - Preparações compostas, não alcoólicas (extratos concentrados ou sabores concentrados), para elaboração de bebida da posição 22.02, com capacidade de diluição superior a 10 partes da bebida para cada parte do concentrado	29.46	36.95	\\r
21069010	02	0	Ex 02 - Preparações compostas, não alcoólicas (extratos concentrados  ou sabores concentrados), para elaboração de bebida refrigerante do Capítulo 22, com capacidade de diluição  de até 10 partes da bebida para cada parte do concentrado	44.40	51.89	\\r
21069021		0	Para a fabricação de pudins, em embalagens imediatas de conteúdo inferior ou igual a 1 kg	31.45	40.61	\\r
21069029		0	Outros	31.45	39.79	\\r
21069030		0	Complementos alimentares	31.45	39.79	\\r
21069040		0	Misturas à base de ascorbato de sódio e glucose próprias para embutidos	31.45	38.94	\\r
21069050		0	Gomas de mascar, sem açúcar	31.45	39.79	\\r
21069060		0	Caramelos, confeitos, pastilhas e produtos semelhantes, sem açúcar	31.45	39.79	\\r
21069090		0	Outras	30.75	39.09	\\r
22011000		0	-Águas minerais e águas gaseificadas	36.68	46.63	\\r
22011000	01	0	Ex 01 - Águas minerais naturais comercializadas em recipientes com capacidade nominal inferior a 10 (dez) litros	20.11	30.06	\\r
22011000	02	0	Ex 02 - Águas minerais naturais comercializadas em recipientes com capacidade nominal igual ou superior a 10 (dez) litros	20.11	30.06	\\r
22019000		0	-Outros	30.75	40.70	\\r
22021000		0	-Águas, incluindo as águas minerais e as águas gaseificadas, adicionadas de açúcar ou de outros edulcorantes ou aromatizadas	32.04	41.99	\\r
22021000	01	0	Ex 01 - Refrescos	32.04	41.99	\\r
22029000		0	-Outras	32.04	41.99	\\r
22029000	01	0	Ex 01 - Bebidas alimentares à base de soja ou de leite e cacau	20.11	30.06	\\r
22029000	02	0	Ex 02 – Néctares de frutas	20.11	30.06	\\r
22029000	03	0	Ex 03 - Cerveja sem álcool	32.04	41.99	\\r
22029000	04	0	Ex 04 - Alimentos para praticantes de atividade física nos termos da Portaria no 222, de 24 de março de 1998, da extinta Secretaria de Vigilância Sanitária, atual Agência Nacional de Vigilância Sanitária, do Ministério da Saúde: repositores hidroeletrolít	32.04	41.99	\\r
22029000	05	0	Ex 05 - Compostos líquidos pronto para consumo nos termos da Resolução RDC no 273, de 22 de setembro de 2005, da Agência Nacional de Vigilância Sanitária, do Ministério da Saúde	32.04	41.99	\\r
22030000		0	Cervejas de malte.	36.58	46.53	\\r
22030000	01	0	Ex 01 - Chope	49.19	59.14	\\r
22041010		0	Tipo champanha (champagne)	50.87	60.82	\\r
22041090		0	Outros	50.87	60.82	\\r
22042100		0	--Em recipientes de capacidade não superior a 2 l	46.62	56.57	\\r
22042100	01	0	Ex 01 - Vinhos da madeira, do porto e de xerez	57.56	67.51	\\r
22042911		0	Em recipientes de capacidade não superior a 5 l	46.62	56.57	\\r
22042911	01	0	Ex 01 - Vinhos da madeira, do porto e de xerez	57.56	67.51	\\r
22042919		0	Outros	46.62	56.57	\\r
22042919	01	0	Ex 01 - Vinhos da madeira, do porto e de xerez	57.56	67.51	\\r
22042920		0	Mostos	46.62	56.57	\\r
22043000		0	-Outros mostos de uvas	46.62	56.57	\\r
22051000		0	-Em recipientes de capacidade não superior a 2 l	54.47	64.42	\\r
22059000		0	-Outros	54.47	64.42	\\r
22060010		0	Sidra	41.96	51.91	\\r
22060090		0	Outras	41.96	51.91	\\r
22060090	01	0	Ex 01 - Com teor alcoólico superior a 14%	52.89	62.84	\\r
22071010		0	Com um teor de água igual ou inferior a 1% vol	35.58	45.53	\\r
22071010	01	0	Ex 01 - Para fins carburantes, com as especificações determinadas pela ANP	31.58	41.53	\\r
22071010	02	0	Ex 02 - Retificado (álcool neutro)	35.60	45.55	\\r
22071090		0	Outros	31.45	41.40	\\r
22071090	01	0	Ex 01 - Para fins carburantes, com as especificações determinadas pela ANP	27.45	37.40	\\r
22071090	02	0	Ex 02 - Retificado (álcool neutro)	35.60	45.55	\\r
22072011		0	Com um teor de água igual ou inferior a 1% vol	35.60	45.55	\\r
22072011	01	0	Ex 01 - Para fins carburantes, com as especificações determinadas pela ANP	27.45	37.40	\\r
22072019		0	Outros	35.60	45.55	\\r
22072019	01	0	Ex 01 - Para fins carburantes, com as especificações determinadas pela ANP	27.45	37.40	\\r
22072020		0	Aguardente	35.60	45.55	\\r
22082000		0	-Aguardentes de vinho ou de bagaço de uvas	62.57	72.52	\\r
22083010		0	Com um teor alcoólico, em volume, superior a 50% vol, em recipientes de capacidade superior ou igual a 50 l	62.57	69.18	\\r
22083010	01	0	Ex 01 - Destilado alcoólico chamado uísque de malte (“malt Whisky”) com teor alcoólico em volume superior a 54% e inferior a 70%, obtido de cevada maltada	54.47	61.08	\\r
22083010	02	0	Ex 02 - Destilado alcoólico chamado uísque de cereais (“grain Whisky”) com teor alcoólico em volume superior a 54% e inferior a 70%, obtido de cereal não maltado adicionado ou não de cevada maltada	54.47	61.08	\\r
22083020		0	Em embalagens de capacidade inferior ou igual a 2 l	62.57	72.52	\\r
22083090		0	Outros	62.57	72.52	\\r
22084000		0	-Rum e outras aguardentes provenientes da destilação, após fermentação, de produtos da cana-de-açúcar	53.77	63.72	\\r
22085000		0	-Gim (gin) e genebra	62.57	72.52	\\r
22086000		0	-Vodca	62.57	72.52	\\r
22087000		0	-Licores	62.57	72.52	\\r
22089000		0	-Outros	62.57	72.52	\\r
22089000	01	0	Ex 01 - Álcool etílico	45.68	55.63	\\r
22089000	02	0	Ex 02 - Bebida refrescante com teor alcoólico inferior a 8%	57.56	67.51	\\r
22090000		0	Vinagres e seus sucedâneos obtidos a partir do ácido acético, para usos alimentares.	31.45	41.40	\\r
23011010		0	De carne	30.75	34.52	\\r
23011090		0	Outros	30.75	34.52	\\r
23021000		0	-De milho	30.75	34.52	\\r
23023010		0	Farelo	30.75	34.52	\\r
23023090		0	Outros	30.75	34.52	\\r
23024000		0	-De outros cereais	30.75	34.52	\\r
23025000		0	-De leguminosas	30.75	34.52	\\r
23031000		0	-Resíduos da fabricação do amido e resíduos semelhantes	30.75	34.52	\\r
23032000		0	-Polpas de beterraba, bagaços de cana-de-açúcar e outros desperdícios da indústria do açúcar	30.75	34.52	\\r
23033000		0	-Borras e desperdícios da indústria da cerveja e das destilarias	30.75	34.52	\\r
23040010		0	Farinhas e pellets	30.75	34.52	\\r
23040090		0	Outros	30.75	34.52	\\r
23050000		0	Tortas e outros resíduos sólidos, mesmo triturados ou em pellets, da extração do óleo de amendoim.	30.75	34.52	\\r
23061000		0	-De sementes de algodão	30.75	34.52	\\r
23062000		0	-De linhaça (sementes de linho)	30.75	34.52	\\r
23063010		0	Tortas, farinhas e pellets	30.75	34.52	\\r
23063090		0	Outros	30.75	34.52	\\r
23064100		0	--Com baixo teor de ácido erúcico	30.75	34.52	\\r
23064900		0	--Outros	30.75	34.52	\\r
23065000		0	-De coco ou de copra	30.75	34.52	\\r
23066000		0	-De nozes ou de amêndoas de palma (palmiste)	30.75	34.52	\\r
23069010		0	De germe de milho	30.75	34.52	\\r
23069090		0	Outros	30.75	34.52	\\r
23070000		0	Borras de vinho. tártaro em bruto.	30.75	34.52	\\r
23080000		0	Matérias vegetais e desperdícios vegetais, resíduos e subprodutos vegetais, mesmo em pellets, dos tipos utilizados na alimentação de animais, não especificados nem compreendidos noutras posições.	30.75	34.52	\\r
23091000		0	-Alimentos para cães ou gatos, acondicionados para venda a retalho	35.85	43.34	\\r
23099010		0	Preparações destinadas a fornecer ao animal a totalidade dos elementos nutritivos necessários para uma alimentação diária racional e equilibrada (alimentos compostos completos)	30.75	35.50	\\r
23099020		0	Preparações à base de sal iodado, farinha de ossos, farinha de concha, cobre e cobalto	30.75	35.50	\\r
23099030		0	Bolachas e biscoitos	35.85	43.34	\\r
23099040		0	Preparações que contenham Diclazuril	30.75	32.45	\\r
23099050		0	Preparações com teor de cloridrato de ractopamina igual ou superior a 2%, em peso, com suporte de farelo de soja	30.75	32.45	\\r
23099060		0	Preparações que contenham xilanase e betagluconase, com suporte de farinha de trigo	30.75	32.45	\\r
23099060	01	0	Ex 01 - Preparações alimentícias para cães ou gatos, não acondicionadas para a venda a retalho	35.85	37.55	\\r
23099090		0	Outras	30.75	35.50	\\r
23099090	01	0	Ex 01 - Preparações alimentícias para cães ou gatos, não acondicionadas para a venda a retalho	35.85	40.60	\\r
24011010		0	Em folhas, sem secar nem fermentar	39.81	47.30	\\r
24011020		0	Em folhas secas ou fermentadas tipo capeiro	39.81	47.30	\\r
24011030		0	Em folhas secas em secador de ar quente (flue cured), do tipo Virgínia	39.81	47.30	\\r
24011040		0	Em folhas secas, com um conteúdo de óleos voláteis superior a 0,2%, em peso, do tipo turco	39.81	45.51	\\r
24011090		0	Outros	39.81	47.30	\\r
24012010		0	Em folhas, sem secar nem fermentar	52.76	60.25	\\r
24012020		0	Em folhas secas ou fermentadas tipo capeiro	52.76	60.25	\\r
24012030		0	Em folhas secas em secador de ar quente (flue cured), do tipo Virgínia	52.76	60.25	\\r
24012040		0	Em folhas secas (light air cured), do tipo Burley	52.76	60.25	\\r
24012090		0	Outros	52.76	60.25	\\r
24013000		0	-Desperdícios de tabaco	39.81	47.30	\\r
24021000		0	-Charutos e cigarrilhas, que contenham tabaco	54.04	63.99	\\r
24021000	01	0	Ex 01 - Cigarrillhas	83.18	93.13	\\r
24022000		0	-Cigarros que contenham tabaco	83.18	93.13	\\r
24022000	01	0	Ex 01 - Feitos à mão	54.04	63.99	\\r
24029000		0	-Outros	54.04	63.99	\\r
24029000	01	0	Ex 01 - Cigarros não contendo tabaco, exceto os feitos à mão	83.18	93.13	\\r
24031100		0	--Tabaco para narguilé (cachimbo de água) mencionado na Nota 1 de subposição do presente Capítulo	54.04	63.99	\\r
24031900		0	--Outros	54.04	63.99	\\r
24039100		0	--Tabaco “homogeneizado” ou “reconstituído”	54.04	61.53	\\r
24039910		0	Extratos e molhos	54.04	61.53	\\r
24039990		0	Outros	54.04	63.20	\\r
25010011		0	Sal marinho	22.81	25.56	\\r
25010019		0	Outros	22.81	25.56	\\r
25010020		0	Sal de mesa	22.81	25.56	\\r
25010090		0	Outros	22.81	25.56	\\r
25010090	01	0	Ex 01 - Cloreto de sódio puro	22.81	25.56	\\r
25020000		0	Piritas de ferro não ustuladas.	31.45	34.20	\\r
25030010		0	A granel	31.45	32.05	\\r
25030010	01	0	Ex 01 - Em bruto ou não refinado	31.45	32.05	\\r
25030090		0	Outros	31.45	32.05	\\r
25041000		0	-Em pó ou em escamas	31.45	34.20	\\r
25049000		0	-Outra	31.45	34.20	\\r
25051000		0	-Areias siliciosas e areias quartzosas	26.75	29.50	\\r
25059000		0	-Outras areias	26.75	29.50	\\r
25061000		0	-Quartzo	27.45	30.20	\\r
25062000		0	-Quartzitos	27.45	30.20	\\r
25070010		0	Caulim (caulino)	30.75	33.50	\\r
25070090		0	Outros	30.75	33.50	\\r
25081000		0	-Bentonita	30.75	33.50	\\r
25083000		0	-Argilas refratárias	30.75	33.50	\\r
25084010		0	Plásticas, com teor de Fe2O3, em peso, inferior a 1,5% e com perda por calcinação, em peso, superior a 12%	30.75	33.50	\\r
25084090		0	Outras	30.75	33.50	\\r
25085000		0	-Andaluzita, cianita e silimanita	30.75	33.50	\\r
25086000		0	-Mulita	30.75	33.50	\\r
25087000		0	-Barro cozido em pó (terra de chamotte) e terra de dinas	30.75	33.50	\\r
25101010		0	Fosfatos de cálcio naturais	31.45	32.05	\\r
25101090		0	Outros	31.45	32.05	\\r
25102010		0	Fosfatos de cálcio naturais	20.11	20.71	\\r
25102090		0	Outros	31.45	32.05	\\r
25111000		0	-Sulfato de bário natural (baritina)	31.45	34.20	\\r
25112000		0	-Carbonato de bário natural (witherita)	31.45	34.20	\\r
25120000		0	Farinhas siliciosas fósseis (por exemplo, kieselguhr, tripolita, diatomita) e outras terras siliciosas análogas de densidade aparente não superior a 1, mesmo calcinadas.	31.45	34.20	\\r
25131000		0	-Pedra-pomes	31.45	34.20	\\r
25132000		0	-Esmeril, corindo natural, granada natural e outros abrasivos naturais	31.45	34.20	\\r
25140000		0	Ardósia, mesmo desbastada ou simplesmente cortada a serra ou por outro meio, em blocos ou placas de forma quadrada ou retangular.	31.45	34.20	\\r
25151100		0	--Em bruto ou desbastados	31.45	34.20	\\r
25151210		0	Mármores	31.45	35.22	\\r
25151220		0	Travertinos	31.45	35.22	\\r
25152000		0	-Granitos belgas e outras pedras calcárias de cantaria ou de construção. alabastro	31.45	34.20	\\r
25161100		0	--Em bruto ou desbastado	31.45	34.20	\\r
25161200		0	--Simplesmente cortado a serra ou por outro meio, em blocos ou placas de forma quadrada ou retangular	31.45	35.22	\\r
25162000		0	-Arenito	31.45	34.20	\\r
25169000		0	-Outras pedras de cantaria ou de construção	31.45	34.20	\\r
25171000		0	-Calhaus, cascalho, pedras britadas, dos tipos geralmente usados em concreto ou para empedramento de estradas, de vias férreas ou outros balastros, seixos rolados e sílex, mesmo tratados termicamente	27.45	30.20	\\r
25172000		0	-Macadame de escórias de altos-fornos, de outras escórias ou de resíduos industriais semelhantes, mesmo que contenham matérias incluídas na subposição 2517.10	31.45	34.20	\\r
25173000		0	-Tarmacadame	31.45	34.20	\\r
25174100		0	--De mármore	31.45	34.20	\\r
25174900		0	--Outros	31.45	34.20	\\r
25181000		0	-Dolomita não calcinada nem sinterizada, denominada “crua”	31.45	34.20	\\r
25182000		0	-Dolomita calcinada ou sinterizada	31.45	34.20	\\r
25183000		0	-Aglomerados de dolomita	31.45	34.20	\\r
25191000		0	-Carbonato de magnésio natural (magnesita)	31.45	34.20	\\r
25199010		0	Magnésia eletrofundida	31.45	34.20	\\r
25199090		0	Outros	31.45	34.20	\\r
25201011		0	Em pedaços irregulares (pedras)	31.45	34.20	\\r
25201019		0	Outros	31.45	34.20	\\r
25201020		0	Anidrita	31.45	34.20	\\r
25202010		0	Moído, apto para uso odontológico	20.11	22.86	\\r
25202090		0	Outros	30.75	33.50	\\r
25210000		0	Castinas. pedras calcárias utilizadas na fabricação de cal ou de cimento.	30.75	33.50	\\r
25221000		0	-Cal viva	30.75	33.50	\\r
25222000		0	-Cal apagada	30.75	33.50	\\r
25223000		0	-Cal hidráulica	30.75	33.50	\\r
25231000		0	-Cimentos não pulverizados, denominados clinkers	33.60	36.35	\\r
25232100		0	--Cimentos brancos, mesmo corados artificialmente	33.60	36.35	\\r
25232910		0	Cimento comum	33.60	36.35	\\r
25232990		0	Outros	33.60	36.35	\\r
25233000		0	-Cimentos aluminosos	33.60	36.35	\\r
25239000		0	-Outros cimentos hidráulicos	33.60	36.35	\\r
25241000		0	-Crocidolita	31.45	34.20	\\r
25249000		0	-Outros	31.45	34.20	\\r
25251000		0	-Mica em bruto ou clivada em folhas ou lamelas irregulares (splittings)	31.45	34.20	\\r
25252000		0	-Mica em pó	31.45	34.20	\\r
25253000		0	-Desperdícios de mica	31.45	34.20	\\r
25261000		0	-Não triturados nem em pó	31.45	34.20	\\r
25262000		0	-Triturados ou em pó	31.45	34.20	\\r
25280000		0	Boratos naturais e seus concentrados (calcinados ou não), exceto boratos extraídos de salmouras naturais. ácido bórico natural com um teor máximo de 85% de H3BO3, em produto seco.	31.45	34.20	\\r
25291000		0	-Feldspato	31.45	34.20	\\r
25292100		0	--Que contenha, em peso, 97% ou menos de fluoreto de cálcio	31.45	34.20	\\r
25292200		0	--Que contenha, em peso, mais de 97% de fluoreto de cálcio	31.45	34.20	\\r
25293000		0	-Leucita. nefelina e nefelina-sienito	31.45	34.20	\\r
25301010		0	Perlita	31.45	34.20	\\r
25301090		0	Outras	31.45	34.20	\\r
25302000		0	-Quieserita, epsomita (sulfatos de magnésio naturais)	31.45	34.20	\\r
25309010		0	Espodumênio	31.45	34.20	\\r
25309020		0	Areia de zircônio micronizada, própria para a preparação de esmaltes cerâmicos	27.45	30.20	\\r
25309030		0	Minerais de metais das terras raras	31.45	34.20	\\r
25309040		0	Terras corantes	31.45	34.20	\\r
25309090		0	Outras	31.45	34.20	\\r
26011100		0	--Não aglomerados	31.45	33.15	\\r
26011200		0	--Aglomerados	31.45	33.15	\\r
26012000		0	-Piritas de ferro ustuladas (cinzas de piritas)	31.45	33.15	\\r
26020010		0	Aglomerados	31.45	33.15	\\r
26020090		0	Outros	31.45	33.15	\\r
26030010		0	Sulfetos	31.45	33.15	\\r
26030090		0	Outros	31.45	33.15	\\r
26040000		0	Minérios de níquel e seus concentrados.	31.45	33.15	\\r
26050000		0	Minérios de cobalto e seus concentrados.	31.45	33.15	\\r
26060011		0	Não calcinada	31.45	33.15	\\r
26060012		0	Calcinada	31.45	33.15	\\r
26060090		0	Outros	31.45	33.15	\\r
26070000		0	Minérios de chumbo e seus concentrados.	31.45	34.20	\\r
26080010		0	Sulfetos	31.45	33.15	\\r
26080090		0	Outros	31.45	33.15	\\r
26090000		0	Minérios de estanho e seus concentrados.	31.45	33.15	\\r
26100010		0	Cromita	31.45	33.15	\\r
26110000		0	Minérios de tungstênio (volfrâmio) e seus concentrados.	31.45	33.15	\\r
26121000		0	-Minérios de urânio e seus concentrados	31.45	34.20	\\r
26122000		0	-Minérios de tório e seus concentrados	31.45	34.20	\\r
26131010		0	Molibdenita	31.45	33.15	\\r
26131090		0	Outros	31.45	33.15	\\r
26139010		0	Molibdenita	31.45	33.15	\\r
26139090		0	Outros	31.45	33.15	\\r
26140010		0	Ilmenita	31.45	33.15	\\r
26140090		0	Outros	31.45	33.15	\\r
26151010		0	Badeleíta	31.45	33.15	\\r
26151020		0	Zirconita	31.45	33.15	\\r
26151090		0	Outros	31.45	33.15	\\r
26159000		0	-Outros	31.45	33.15	\\r
26161000		0	-Minérios de prata e seus concentrados	31.45	33.15	\\r
26169000		0	-Outros	31.45	34.20	\\r
26171000		0	-Minérios de antimônio e seus concentrados	31.45	33.15	\\r
26179000		0	-Outros	31.45	33.15	\\r
26180000		0	Escória de altos-fornos granulada (areia de escória) proveniente da fabricação de ferro fundido, ferro ou aço.	31.45	34.20	\\r
26190000		0	Escórias (exceto escória de altos-fornos granulada) e outros desperdícios da fabricação de ferro fundido, ferro ou aço.	31.45	34.20	\\r
26201100		0	--Mates de galvanização	31.45	34.20	\\r
26201900		0	--Outros	31.45	34.20	\\r
26202100		0	--Lamas (borras) de gasolina que contenham chumbo e lamas (borras) de compostos antidetonantes que contenham chumbo	31.45	34.20	\\r
26202900		0	--Outros	31.45	34.20	\\r
26203000		0	-Que contenham principalmente cobre	31.45	34.20	\\r
26204000		0	-Que contenham principalmente alumínio	31.45	34.20	\\r
26206000		0	-Que contenham arsênio, mercúrio, tálio ou suas misturas, dos tipos utilizados para extração de arsênio ou destes metais ou para fabricação dos seus compostos químicos	31.45	34.20	\\r
26209100		0	--Que contenham antimônio, berílio, cádmio, cromo ou suas misturas	31.45	34.20	\\r
26209910		0	Que contenham principalmente titânio	31.45	33.15	\\r
26209990		0	Outros	31.45	34.20	\\r
26211000		0	-Cinzas e resíduos provenientes da incineração de lixos municipais	31.45	34.20	\\r
26219010		0	Cinzas de origem vegetal	31.45	34.20	\\r
26219090		0	Outras	31.45	34.20	\\r
27011100		0	--Antracita	31.45	32.05	\\r
27011200		0	--Hulha betuminosa	31.45	32.05	\\r
27011900		0	--Outras hulhas	31.45	32.05	\\r
27012000		0	-Briquetes, bolas em aglomerados e combustíveis sólidos semelhantes, obtidos a partir da hulha	31.45	32.05	\\r
27021000		0	-Linhitas, mesmo em pó, mas não aglomeradas	31.45	32.05	\\r
27022000		0	-Linhitas aglomeradas	31.45	32.05	\\r
27030000		0	Turfa (incluindo a turfa para cama de animais), mesmo aglomerada.	31.45	32.05	\\r
27040010		0	Coques	31.45	32.05	\\r
27040090		0	Outros	31.45	32.05	\\r
27050000		0	Gás de hulha, gás de água, gás pobre (gás de ar) e gases semelhantes, exceto gases de petróleo e outros hidrocarbonetos gasosos.	31.45	32.05	\\r
27060000		0	Alcatrões de hulha, de linhita ou de turfa e outros alcatrões minerais, mesmo desidratados ou parcialmente destilados, incluindo os alcatrões reconstituídos.	31.45	32.05	\\r
27071000		0	-Benzol (benzeno)	31.45	32.05	\\r
27072000		0	-Toluol (tolueno)	31.45	32.05	\\r
27073000		0	-Xilol (xilenos)	31.45	32.05	\\r
27074000		0	-Naftaleno	31.45	32.05	\\r
27075000		0	-Outras misturas de hidrocarbonetos aromáticos que destilem, incluindo as perdas, uma fração igual ou superior a 65%, em volume, a 250 °C, segundo o método ASTM D 86	31.45	32.05	\\r
27079100		0	--Óleos de creosoto	31.45	32.05	\\r
27079910		0	Cresóis	31.45	32.05	\\r
27079990		0	Outros	31.45	32.05	\\r
27081000		0	-Breu	34.12	34.72	\\r
27082000		0	-Coque de breu	34.12	34.72	\\r
27090010		0	De petróleo	31.45	32.05	\\r
27090090		0	Outros	31.45	32.05	\\r
27101210		0	Hexano comercial	35.60	36.20	\\r
27101221		0	Diisobutileno	35.60	36.20	\\r
27101229		0	Outras	35.60	36.20	\\r
27101230		0	Aguarrás mineral (white spirit)	31.45	32.05	\\r
27101241		0	Para petroquímica	31.45	32.05	\\r
27101249		0	Outras	31.45	32.05	\\r
27101251		0	De aviação	26.75	27.35	\\r
27101259		0	Outras	28.61	29.21	\\r
27101260		0	Mistura de hidrocarbonetos acíclicos e cíclicos, saturados, derivados de frações de petróleo, contendo em peso, menos de 2%, de hidrocarbonetos aromáticos, cuja curva de destilação, segundo o método ASTM D 86, apresenta um ponto inicial mínimo de 70 °C e	31.60	32.20	\\r
27101290		0	Outros	31.60	32.20	\\r
27101290	01	0	Ex 01 - Óleos parcialmente refinados	27.45	28.05	\\r
27101290	02	0	Ex 02 - Óleos para lamparina de mecha (“signal-oil”)	27.45	28.05	\\r
27101911		0	De aviação	27.45	28.05	\\r
27101919		0	Outros	31.45	32.05	\\r
27101921		0	“Gasóleo” (óleo diesel)	25.45	26.05	\\r
27101922		0	Fuel-oil	31.45	32.05	\\r
27101929		0	Outros	31.45	32.05	\\r
27101931		0	Sem aditivos	31.45	32.05	\\r
27101932		0	Com aditivos	31.45	35.22	\\r
27101991		0	Óleos minerais brancos (óleos de vaselina ou de parafina)	31.45	34.20	\\r
27101992		0	Líquidos para transmissões hidráulicas	35.60	36.20	\\r
27101993		0	Óleos para isolamento elétrico	35.60	36.20	\\r
27101994		0	Mistura de hidrocarbonetos acíclicos e cíclicos, saturados, derivados de frações de petróleo, contendo, em peso, menos de 2%, de hidrocarbonetos aromáticos, que destila, segundo o método ASTM D 86, uma fração inferior a 90%, em volume, a 210 °C com um pon	35.60	36.20	\\r
27101999		0	Outros	35.60	36.20	\\r
27101999	01	0	Ex 01 - Óleos parcialmente refinados	31.45	32.05	\\r
27101999	02	0	Ex 02 - Óleos para lamparina de mecha (“signal-oil”)	31.45	32.05	\\r
27102000		0	-Óleos de petróleo ou de minerais betuminosos (exceto óleos brutos) e preparações não especificadas nem compreendidas noutras posições, que contenham, como constituintes básicos, 70% ou mais, em peso, de óleos de petróleo ou de minerais betuminosos, que c	31.45	32.05	\\r
27102000	01	0	Ex 01 - Óleos leves e preparações, exceto óleos para lamparina de mecha (“signal-oil”)	35.60	36.20	\\r
27109100		0	--Que contenham difenilas policloradas (PCB), terfenilas policloradas (PCT) ou difenilas polibromadas (PBB)	31.45	32.05	\\r
27109900		0	--Outros	31.45	32.05	\\r
27111100		0	--Gás natural	30.75	31.35	\\r
27111210		0	Bruto	31.45	32.05	\\r
27111290		0	Outros	31.45	32.05	\\r
27111300		0	--Butanos	31.45	32.05	\\r
27111400		0	--Etileno, propileno, butileno e butadieno	31.45	32.05	\\r
27111910		0	Gás liquefeito de petróleo (GLP)	30.75	31.35	\\r
27111990		0	Outros	31.45	32.05	\\r
27112100		0	--Gás natural	30.75	31.35	\\r
27112910		0	Butanos	31.45	32.05	\\r
27112990		0	Outros	30.75	31.35	\\r
27121000		0	-Vaselina	35.60	38.35	\\r
27122000		0	-Parafina que contenha, em peso, menos de 0,75% de óleo	31.45	34.20	\\r
27129000		0	-Outros	31.45	34.20	\\r
27131100		0	--Não calcinado	33.60	34.20	\\r
27131200		0	--Calcinado	33.60	35.30	\\r
27132000		0	-Betume de petróleo	33.60	34.20	\\r
27139000		0	-Outros resíduos dos óleos de petróleo ou de minerais betuminosos	33.60	34.20	\\r
27141000		0	-Xistos e areias betuminosos	31.45	32.05	\\r
27149000		0	-Outros	31.45	32.05	\\r
27150000		0	Misturas betuminosas à base de asfalto ou de betume naturais, de betume de petróleo, de alcatrão mineral ou de breu de alcatrão mineral (por exemplo, mástiques betuminosos e cut-backs).	34.12	34.72	\\r
27160000		0	Energia elétrica.	31.45	32.05	\\r
28011000		0	-Cloro	31.45	36.20	\\r
28012010		0	Sublimado	31.45	33.15	\\r
28012090		0	Outros	31.45	33.15	\\r
28013000		0	-Flúor. bromo	31.45	33.15	\\r
28020000		0	Enxofre sublimado ou precipitado. enxofre coloidal.	31.45	33.15	\\r
28030011		0	Negro de acetileno	31.45	33.15	\\r
28030019		0	Outros	31.45	36.20	\\r
28030090		0	Outros	31.45	36.20	\\r
28041000		0	-Hidrogênio	31.45	35.22	\\r
28042100		0	--Argônio (árgon)	31.45	35.22	\\r
28042910		0	Hélio líquido	31.45	33.15	\\r
28042990		0	Outros	31.45	33.15	\\r
28043000		0	-Nitrogênio (azoto)	31.45	35.22	\\r
28044000		0	-Oxigênio	31.45	35.22	\\r
28045000		0	-Boro. telúrio	31.45	33.15	\\r
28046100		0	--Que contenham, em peso, pelo menos 99,99% de silício	31.45	35.22	\\r
28046900		0	--Outro	31.45	35.22	\\r
28047010		0	Branco	31.45	33.15	\\r
28047020		0	Vermelho ou amorfo	31.45	33.15	\\r
28047030		0	Negro	31.45	33.15	\\r
28048000		0	-Arsênio	31.45	33.15	\\r
28049000		0	-Selênio	31.45	33.15	\\r
28051100		0	--Sódio	31.45	33.15	\\r
28051200		0	--Cálcio	31.45	33.15	\\r
28051910		0	Estrôncio	31.45	33.15	\\r
28051920		0	Bário	31.45	33.15	\\r
28051990		0	Outros	31.45	33.15	\\r
28053010		0	Liga de cério, com teor de ferro inferior ou igual a 5%, em peso (Mischmetal)	31.45	33.15	\\r
28053090		0	Outros	31.45	33.15	\\r
28054000		0	-Mercúrio	31.45	33.15	\\r
28061010		0	Em estado gasoso ou liquefeito	31.45	35.22	\\r
28061020		0	Em solução aquosa	31.45	36.20	\\r
28062000		0	-Ácido clorossulfúrico	31.45	37.15	\\r
28070010		0	Ácido sulfúrico	31.45	34.20	\\r
28070020		0	Ácido sulfúrico fumante (óleum)	31.45	34.20	\\r
28080010		0	Ácido nítrico	31.45	37.15	\\r
28080020		0	Ácidos sulfonítricos	31.45	37.15	\\r
28091000		0	-Pentóxido de difósforo	31.45	33.15	\\r
28092011		0	Com teor de ferro inferior a 750 ppm	31.45	37.15	\\r
28092019		0	Outros	31.45	34.20	\\r
28092020		0	Ácidos metafosfóricos	31.45	33.15	\\r
28092030		0	Ácido pirofosfórico	31.45	33.15	\\r
28092090		0	Outros	31.45	33.15	\\r
28100010		0	Ácido ortobórico	31.45	37.15	\\r
28100090		0	Outros	31.45	37.15	\\r
28111100		0	--Fluoreto de hidrogênio (ácido fluorídrico)	31.45	37.15	\\r
28111910		0	Ácido aminossulfônico (ácido sulfâmico)	31.45	33.15	\\r
28111920		0	Ácido fosfônico (ácido fosforoso)	31.45	33.15	\\r
28111930		0	Ácido perclórico	31.45	37.15	\\r
28111940		0	Fluorácidos e outros compostos de flúor	31.45	37.15	\\r
28111950		0	Cianeto de hidrogênio	31.45	33.15	\\r
28111990		0	Outros	31.45	33.15	\\r
28112100		0	--Dióxido de carbono	31.45	34.20	\\r
28112210		0	Obtido por precipitação química	31.45	37.15	\\r
28112220		0	Tipo aerogel	31.45	33.15	\\r
28112230		0	Gel de sílica	31.45	37.15	\\r
28112290		0	Outros	31.45	33.15	\\r
28112910		0	Dióxido de enxofre	31.45	37.15	\\r
28112990		0	Outros	31.45	33.15	\\r
28121011		0	Tricloreto de fósforo	31.45	33.15	\\r
28121012		0	Pentacloreto de fósforo	31.45	33.15	\\r
28121013		0	Monocloreto de enxofre	31.45	33.15	\\r
28121014		0	Dicloreto de enxofre	31.45	33.15	\\r
28121015		0	Tricloreto de arsênio	31.45	33.15	\\r
28121019		0	Outros	31.45	33.15	\\r
28121021		0	Oxidicloreto de enxofre (cloreto de tionila)	31.45	33.15	\\r
28121022		0	Oxitricloreto de fósforo (cloreto de fosforila)	31.45	33.15	\\r
28121023		0	Oxidicloreto de carbono (fosgênio ou cloreto de carbonila)	31.45	33.15	\\r
28121029		0	Outros	31.45	33.15	\\r
28129000		0	-Outros	31.45	33.15	\\r
28131000		0	-Dissulfeto de carbono	31.45	37.15	\\r
28139010		0	Pentassulfeto de difósforo	31.45	33.15	\\r
28139090		0	Outros	31.45	33.15	\\r
28141000		0	-Amoníaco anidro	31.45	34.20	\\r
28142000		0	-Amoníaco em solução aquosa (amônia)	31.45	34.20	\\r
28151100		0	--Sólido	31.45	36.20	\\r
28151200		0	--Em solução aquosa (lixívia de soda cáustica)	31.45	36.20	\\r
28152000		0	-Hidróxido de potássio (potassa cáustica)	31.45	35.22	\\r
28153000		0	-Peróxidos de sódio ou de potássio	31.45	33.15	\\r
28161010		0	Hidróxido	31.45	37.15	\\r
28161020		0	Peróxido	31.45	33.15	\\r
28164010		0	Hidróxido de bário	31.45	33.15	\\r
28164090		0	Outros	31.45	33.15	\\r
28170010		0	Óxido de zinco (branco de zinco)	31.45	37.15	\\r
28170020		0	Peróxido de zinco	31.45	37.15	\\r
28181010		0	Branco, que passe através de uma peneira com abertura de malha de 63 micrômetros (mícrons) em proporção superior a 90%, em peso	31.45	33.15	\\r
28181090		0	Outros	31.45	33.15	\\r
28182010		0	Alumina calcinada	31.45	32.05	\\r
28182090		0	Outros	31.45	33.15	\\r
28183000		0	-Hidróxido de alumínio	31.45	33.15	\\r
28191000		0	-Trióxido de cromo	31.45	37.15	\\r
28199010		0	Óxidos	31.45	33.15	\\r
28199020		0	Hidróxidos	31.45	33.15	\\r
28201000		0	-Dióxido de manganês	31.45	37.15	\\r
28209010		0	Óxido manganoso	31.45	37.15	\\r
28209020		0	Trióxido de dimanganês (sesquióxido de manganês)	31.45	37.15	\\r
28209030		0	Tetraóxido de trimanganês (óxido salino de manganês)	31.45	37.15	\\r
28209040		0	Heptaóxido de dimanganês (anidrido permangânico)	31.45	37.15	\\r
28211011		0	Com teor de Fe2O3 superior ou igual a 85%, em peso	31.45	37.15	\\r
28211019		0	Outros	31.45	33.15	\\r
28211020		0	Óxido ferroso-férrico (óxido magnético de ferro), com teor de Fe3O4 superior ou igual a 93%, em peso	31.45	33.15	\\r
28211030		0	Hidróxidos de ferro	31.45	37.15	\\r
28211090		0	Outros	31.45	37.15	\\r
28212000		0	-Terras corantes	31.45	33.15	\\r
28220010		0	Tetraóxido de tricobalto (óxido salino de cobalto)	31.45	33.15	\\r
28220090		0	Outros	31.45	33.15	\\r
28230010		0	Tipo anatase	31.45	37.15	\\r
28230090		0	Outros	31.45	36.20	\\r
28241000		0	-Monóxido de chumbo (litargírio, massicote)	31.45	37.15	\\r
28249010		0	Mínio (zarcão) e mínio-laranja (mine-orange)	31.45	37.15	\\r
28249090		0	Outros	31.45	37.15	\\r
28251010		0	Hidrazina e seus sais inorgânicos	31.45	33.15	\\r
28251020		0	Hidroxilamina e seus sais inorgânicos	31.45	33.15	\\r
28252010		0	Óxido	31.45	33.15	\\r
28252020		0	Hidróxido	31.45	37.15	\\r
28253010		0	Pentóxido de divanádio	31.45	33.15	\\r
28253090		0	Outros	31.45	33.15	\\r
28254010		0	Óxido niqueloso	31.45	37.15	\\r
28254090		0	Outros	31.45	33.15	\\r
28255010		0	Óxido cúprico, com teor de CuO superior ou igual a 98%, em peso	31.45	37.15	\\r
28255090		0	Outros	31.45	37.15	\\r
28256010		0	Óxidos de germânio	31.45	33.15	\\r
28256020		0	Dióxido de zircônio	31.45	33.15	\\r
28257010		0	Trióxido de molibdênio	31.45	33.15	\\r
28257090		0	Outros	31.45	33.15	\\r
28258010		0	Trióxido de antimônio	31.45	37.15	\\r
28258090		0	Outros	31.45	37.15	\\r
28259010		0	Óxido de cádmio	31.45	33.15	\\r
28259020		0	Trióxido de tungstênio (volfrâmio)	31.45	33.15	\\r
28259090		0	Outros	31.45	37.15	\\r
28261200		0	--De alumínio	31.45	37.15	\\r
28261910		0	Trifluoreto de cromo	31.45	33.15	\\r
28261920		0	Fluoreto ácido de amônio	31.45	37.15	\\r
28261990		0	Outros	31.45	37.15	\\r
28263000		0	-Hexafluoroaluminato de sódio (criolita sintética)	31.45	37.15	\\r
28269010		0	Fluoroaluminato de potássio	31.45	33.15	\\r
28269020		0	Fluorossilicatos de sódio ou de potássio	31.45	37.15	\\r
28269090		0	Outros	31.45	37.15	\\r
28271000		0	-Cloreto de amônio	31.45	37.15	\\r
28272010		0	Com teor de CaCl2 superior ou igual a 98%, em peso, em base seca	31.45	37.15	\\r
28272090		0	Outros	31.45	37.15	\\r
28273110		0	Com teor de MgCl2 inferior a 98%, em peso, e de cálcio (Ca) inferior ou igual a 0,5%, em peso	31.45	37.15	\\r
28273190		0	Outros	31.45	37.15	\\r
28273200		0	--De alumínio	31.45	37.15	\\r
28273500		0	--De níquel	31.45	37.15	\\r
28273910		0	De cobre I (cloreto cuproso ou monocloreto de cobre)	31.45	33.15	\\r
28273920		0	De titânio	31.45	33.15	\\r
28273940		0	De zircônio	31.45	33.15	\\r
28273950		0	De antimônio	31.45	33.15	\\r
28273960		0	De lítio	31.45	33.15	\\r
28273970		0	De bismuto	31.45	33.15	\\r
28273991		0	De cádmio	31.45	33.15	\\r
28273992		0	De césio	31.45	33.15	\\r
28273993		0	De cromo	31.45	33.15	\\r
28273994		0	De estrôncio	31.45	33.15	\\r
28273995		0	De manganês	31.45	33.15	\\r
28273996		0	De ferro	31.45	37.15	\\r
28273997		0	De cobalto	31.45	37.15	\\r
28273998		0	De zinco	31.45	37.15	\\r
28273999		0	Outros	31.45	37.15	\\r
28274110		0	Oxicloretos	31.45	37.15	\\r
28274120		0	Hidroxicloretos	31.45	37.15	\\r
28274911		0	De bismuto	31.45	33.15	\\r
28274912		0	De zircônio	31.45	33.15	\\r
28274919		0	Outros	31.45	33.15	\\r
28274921		0	De alumínio	31.45	37.15	\\r
28274929		0	Outros	31.45	33.15	\\r
28275100		0	--Brometos de sódio ou de potássio	31.45	33.15	\\r
28275900		0	--Outros	31.45	33.15	\\r
28276011		0	De sódio	31.45	37.15	\\r
28276012		0	De potássio	31.45	37.15	\\r
28276019		0	Outros	31.45	33.15	\\r
28276021		0	De potássio	31.45	33.15	\\r
28276029		0	Outros	31.45	33.15	\\r
28281000		0	-Hipoclorito de cálcio comercial e outros hipocloritos de cálcio	31.45	37.15	\\r
28289011		0	De sódio	31.45	37.15	\\r
28289019		0	Outros	31.45	33.15	\\r
28289020		0	Clorito de sódio	31.45	37.15	\\r
28289090		0	Outros	31.45	33.15	\\r
28291100		0	--De sódio	31.45	37.15	\\r
28291910		0	De cálcio	31.45	33.15	\\r
28291920		0	De potássio	31.45	37.15	\\r
28291990		0	Outros	31.45	33.15	\\r
28299011		0	De sódio	31.45	33.15	\\r
28299012		0	De potássio	31.45	33.15	\\r
28299019		0	Outros	31.45	33.15	\\r
28299021		0	De sódio	31.45	33.15	\\r
28299022		0	De potássio	31.45	33.15	\\r
28299029		0	Outros	31.45	33.15	\\r
28299031		0	De potássio	31.45	37.15	\\r
28299032		0	De cálcio	31.45	37.15	\\r
28299039		0	Outros	31.45	33.15	\\r
28299040		0	Periodatos	31.45	33.15	\\r
28299050		0	Percloratos	31.45	37.15	\\r
28301010		0	De dissódio	31.45	37.15	\\r
28301020		0	De monossódio (hidrogenossulfeto de sódio)	31.45	37.15	\\r
28309011		0	De molibdênio IV (dissulfeto de molibdênio)	31.45	33.15	\\r
28309012		0	De bário	31.45	33.15	\\r
28309013		0	De potássio	31.45	37.15	\\r
28309014		0	De chumbo	31.45	33.15	\\r
28309015		0	De estrôncio	31.45	33.15	\\r
28309016		0	De zinco	31.45	33.15	\\r
28309019		0	Outros	31.45	33.15	\\r
28309020		0	Polissulfetos	31.45	33.15	\\r
28311011		0	Estabilizados	31.45	37.15	\\r
28311019		0	Outros	31.45	37.15	\\r
28311021		0	Estabilizados com formaldeído	31.45	37.15	\\r
28311029		0	Outros	31.45	33.15	\\r
28319010		0	Ditionito de zinco	31.45	33.15	\\r
28319090		0	Outros	31.45	37.15	\\r
28321010		0	De dissódio	31.45	37.15	\\r
28321090		0	Outros	31.45	37.15	\\r
28322000		0	-Outros sulfitos	31.45	33.15	\\r
28323010		0	De amônio	31.45	37.15	\\r
28323020		0	De sódio	31.45	37.15	\\r
28323090		0	Outros	31.45	33.15	\\r
28331110		0	Anidro	31.45	37.15	\\r
28331190		0	Outros	31.45	37.15	\\r
28331900		0	--Outros	31.45	33.15	\\r
28332100		0	--De magnésio	31.45	37.15	\\r
28332200		0	--De alumínio	31.45	37.15	\\r
28332400		0	--De níquel	31.45	37.15	\\r
28332510		0	Cuproso	31.45	37.15	\\r
28332520		0	Cúprico	31.45	37.15	\\r
28332710		0	Com teor de BaSO4 superior ou igual a 97,5%, em peso	31.45	37.15	\\r
28332790		0	Outros	31.45	37.15	\\r
28332910		0	De antimônio	31.45	33.15	\\r
28332920		0	De lítio	31.45	33.15	\\r
28332930		0	De estrôncio	31.45	33.15	\\r
28332940		0	Sulfato ferroso	31.45	37.15	\\r
28332950		0	Neutro de chumbo	31.45	37.15	\\r
28332960		0	De cromo	31.45	37.15	\\r
28332970		0	De zinco	31.45	37.15	\\r
28332990		0	Outros	31.45	37.15	\\r
28333000		0	-Alumes	31.45	37.15	\\r
28334010		0	De sódio	31.45	33.15	\\r
28334020		0	De amônio	31.45	33.15	\\r
28334090		0	Outros	31.45	33.15	\\r
28341010		0	De sódio	31.45	33.15	\\r
28341090		0	Outros	31.45	33.15	\\r
28342110		0	Com teor de KNO3 inferior ou igual a 98%, em peso	31.45	33.15	\\r
28342190		0	Outros	31.45	37.15	\\r
28342910		0	De cálcio, com teor de nitrogênio (azoto) inferior ou igual a 16%, em peso	31.45	34.20	\\r
28342930		0	De alumínio	31.45	33.15	\\r
28342940		0	De lítio	31.45	33.15	\\r
28342990		0	Outros	31.45	37.15	\\r
28351011		0	De sódio	31.45	33.15	\\r
28351019		0	Outros	31.45	33.15	\\r
28351021		0	Dibásico de chumbo	31.45	37.15	\\r
28351029		0	Outros	31.45	33.15	\\r
28352200		0	--Mono ou dissódico	31.45	37.15	\\r
28352400		0	--De potássio	31.45	37.15	\\r
28352500		0	--Hidrogeno-ortofosfato de cálcio (fosfato dicálcico)	31.45	37.15	\\r
28352600		0	--Outros fosfatos de cálcio	31.45	37.15	\\r
28352910		0	De ferro	31.45	33.15	\\r
28352920		0	De cobalto	31.45	33.15	\\r
28352930		0	De cobre	31.45	33.15	\\r
28352940		0	De cromo	31.45	33.15	\\r
28352950		0	De estrôncio	31.45	33.15	\\r
28352960		0	De manganês	31.45	33.15	\\r
28352970		0	De triamônio	31.45	33.15	\\r
28352980		0	De trissódio	31.45	37.15	\\r
28352990		0	Outros	31.45	37.15	\\r
28353110		0	Grau alimentício, de acordo com o estabelecido pela Food and Agriculture Organization - Organização Mundial da Saúde (FAO - OMS) ou pelo Food Chemical Codex (FCC)	31.45	37.15	\\r
28353190		0	Outros	31.45	37.15	\\r
28353910		0	Metafosfatos de sódio	31.45	37.15	\\r
28353920		0	Pirofosfatos de sódio	31.45	37.15	\\r
28353930		0	Pirofosfato de zinco	31.45	33.15	\\r
28353990		0	Outros	31.45	37.15	\\r
28362010		0	Anidro	31.45	37.15	\\r
28362090		0	Outros	31.45	37.15	\\r
28363000		0	-Hidrogenocarbonato (bicarbonato) de sódio	31.45	37.15	\\r
28364000		0	-Carbonatos de potássio	31.45	37.15	\\r
28365000		0	-Carbonato de cálcio	31.45	37.15	\\r
28366000		0	-Carbonato de bário	31.45	37.15	\\r
28369100		0	--Carbonatos de lítio	31.45	37.15	\\r
28369200		0	--Carbonato de estrôncio	31.45	33.15	\\r
28369911		0	De magnésio, de densidade aparente inferior a 200 kg/m3	31.45	37.15	\\r
28369912		0	De zircônio	31.45	33.15	\\r
28369913		0	De amônio comercial e outros carbonatos de amônio	31.45	37.15	\\r
28369919		0	Outros	31.45	37.15	\\r
28369920		0	Peroxocarbonatos (percarbonatos)	31.45	33.15	\\r
28371100		0	--De sódio	31.45	37.15	\\r
28371911		0	De potássio	31.45	33.15	\\r
28371912		0	De zinco	31.45	37.15	\\r
28371914		0	De cobre I (cianeto cuproso)	31.45	37.15	\\r
28371915		0	De cobre II (cianeto cúprico)	31.45	37.15	\\r
28371919		0	Outros	31.45	33.15	\\r
28371920		0	Oxicianetos	31.45	33.15	\\r
28372011		0	De sódio	31.45	33.15	\\r
28372012		0	De ferro II (ferrocianeto ferroso)	31.45	33.15	\\r
28372019		0	Outros	31.45	33.15	\\r
28372021		0	De potássio	31.45	33.15	\\r
28372022		0	De ferro II (ferricianeto ferroso)	31.45	33.15	\\r
28372023		0	De ferro III (ferricianeto férrico)	31.45	33.15	\\r
28372029		0	Outros	31.45	33.15	\\r
28372090		0	Outros	31.45	33.15	\\r
28391100		0	--Metassilicatos	31.45	37.15	\\r
28391900		0	--Outros	31.45	37.15	\\r
28399010		0	De magnésio	31.45	37.15	\\r
28399020		0	De alumínio	31.45	37.15	\\r
28399030		0	De zircônio	31.45	37.15	\\r
28399040		0	De chumbo	31.45	37.15	\\r
28399050		0	De potássio	31.45	37.15	\\r
28399090		0	Outros	31.45	33.15	\\r
28401100		0	--Anidro	31.45	37.15	\\r
28401900		0	--Outro	31.45	37.15	\\r
28402000		0	-Outros boratos	31.45	37.15	\\r
28403000		0	-Peroxoboratos (perboratos)	31.45	33.15	\\r
28413000		0	-Dicromato de sódio	31.45	37.15	\\r
28415011		0	Cromato de amônio. dicromato de amônio	31.45	33.15	\\r
28415012		0	Cromato de potássio	31.45	37.15	\\r
28415013		0	Cromato de sódio	31.45	37.15	\\r
28415014		0	Dicromato de potássio	31.45	37.15	\\r
28415015		0	Cromato de zinco	31.45	37.15	\\r
28415016		0	Cromato de chumbo	31.45	37.15	\\r
28415019		0	Outros	31.45	33.15	\\r
28415020		0	Peroxocromatos	31.45	33.15	\\r
28416100		0	--Permanganato de potássio	31.45	33.15	\\r
28416910		0	Manganitos	31.45	33.15	\\r
28416920		0	Manganatos	31.45	33.15	\\r
28416930		0	Permanganatos	31.45	33.15	\\r
28417010		0	De amônio	31.45	37.15	\\r
28417020		0	De sódio	31.45	37.15	\\r
28417090		0	Outros	31.45	33.15	\\r
28418010		0	De amônio	31.45	37.15	\\r
28418020		0	De chumbo	31.45	37.15	\\r
28418090		0	Outros	31.45	33.15	\\r
28419011		0	De chumbo	31.45	37.15	\\r
28419012		0	De bário ou de bismuto	31.45	37.15	\\r
28419013		0	De cálcio ou de estrôncio	31.45	37.15	\\r
28419014		0	De magnésio	31.45	37.15	\\r
28419015		0	De lantânio ou de neodímio	31.45	37.15	\\r
28419019		0	Outros	31.45	33.15	\\r
28419021		0	Ferrito de bário	31.45	37.15	\\r
28419022		0	Ferrito de estrôncio	31.45	37.15	\\r
28419029		0	Outros	31.45	33.15	\\r
28419030		0	Vanadatos	31.45	33.15	\\r
28419041		0	De bário	31.45	37.15	\\r
28419042		0	De bismuto	31.45	37.15	\\r
28419043		0	De cálcio	31.45	37.15	\\r
28419049		0	Outros	31.45	33.15	\\r
28419050		0	Plumbatos	31.45	33.15	\\r
28419060		0	Antimoniatos	31.45	33.15	\\r
28419070		0	Zincatos	31.45	33.15	\\r
28419081		0	De sódio	31.45	37.15	\\r
28419082		0	De magnésio	31.45	33.15	\\r
28419083		0	De bismuto	31.45	33.15	\\r
28419089		0	Outros	31.45	33.15	\\r
28419090		0	Outros	31.45	37.15	\\r
28421010		0	Zeólitas dos tipos utilizados como trocadores de íons para o tratamento de águas	31.45	33.15	\\r
28421090		0	Outros	31.45	37.15	\\r
28429000		0	-Outros	31.45	33.15	\\r
28431000		0	-Metais preciosos no estado coloidal	31.45	37.15	\\r
28432100		0	--Nitrato de prata	31.45	37.15	\\r
28432910		0	Vitelinato de prata	31.45	33.15	\\r
28432990		0	Outros	31.45	37.15	\\r
28433010		0	Sulfeto de ouro em dispersão de gelatina	31.45	33.15	\\r
28433090		0	Outros	31.45	37.15	\\r
28439011		0	Apresentados como medicamentos	30.75	31.35	\\r
28439019		0	Outros	31.45	33.15	\\r
28439090		0	Outros	31.45	37.15	\\r
28441000		0	-Urânio natural e seus compostos. ligas, dispersões (incluindo os ceramais (cermets)), produtos cerâmicos e misturas que contenham urânio natural ou compostos de urânio natural	31.45	33.15	\\r
28442000		0	-Urânio enriquecido em U235 e seus compostos. plutônio e seus compostos. ligas, dispersões (incluindo os ceramais (cermets)), produtos cerâmicos e misturas que contenham urânio enriquecido em U235, plutônio ou compostos destes produtos	31.45	33.15	\\r
28443000		0	-Urânio empobrecido em U235 e seus compostos. tório e seus compostos. ligas, dispersões (incluindo os ceramais (cermets)), produtos cerâmicos e misturas que contenham urânio empobrecido em U235, tório ou compostos destes produtos	31.45	33.15	\\r
28444010		0	Molibdênio 99 absorvido em alumina, apto para a obtenção de Tecnécio 99 (reativo de diagnóstico para medicina nuclear)	31.45	37.15	\\r
28444020		0	Cobalto 60	31.45	33.15	\\r
28444030		0	Iodo 131	31.45	37.15	\\r
28444090		0	Outros	31.45	33.15	\\r
28445000		0	-Elementos combustíveis (cartuchos) usados (irradiados) de reatores nucleares	31.45	33.15	\\r
28451000		0	-Água pesada (óxido de deutério)	31.45	33.15	\\r
28459000		0	-Outros	31.45	33.15	\\r
28461010		0	Óxido cérico	31.45	33.15	\\r
28461090		0	Outros	31.45	33.15	\\r
28469010		0	Óxido de praseodímio	31.45	33.15	\\r
28469020		0	Cloretos dos demais metais das terras raras	31.45	33.15	\\r
28469030		0	Gadopentetato de dimeglumina	31.45	37.15	\\r
28469090		0	Outros	31.45	33.15	\\r
28470000		0	Peróxido de hidrogênio (água oxigenada), mesmo solidificado com ureia.	31.45	37.15	\\r
28480010		0	De alumínio	31.45	37.15	\\r
28480020		0	De magnésio	31.45	37.15	\\r
28480030		0	De cobre (fosfetos de cobre), contendo mais de 15%, em peso, de fósforo	31.45	33.15	\\r
28480090		0	Outros	31.45	33.15	\\r
28491000		0	-De cálcio	31.45	37.15	\\r
28492000		0	-De silício	31.45	37.15	\\r
28499010		0	De boro	31.45	33.15	\\r
28499020		0	De tântalo	31.45	33.15	\\r
28499030		0	De tungstênio (volfrâmio)	31.45	33.15	\\r
28499090		0	Outros	31.45	33.15	\\r
28500010		0	Nitreto de boro	31.45	33.15	\\r
28500020		0	Silicieto de cálcio	31.45	37.15	\\r
28500090		0	Outros	31.45	33.15	\\r
28521011		0	Óxidos	31.45	37.15	\\r
28521012		0	Cloreto de mercúrio I (cloreto mercuroso)	31.45	33.15	\\r
28521013		0	Cloreto de mercúrio II (cloreto mercúrico), para uso fotográfico, acondicionado para venda a retalho, pronto para utilização	31.45	38.94	\\r
28521014		0	Cloreto de mercúrio II (cloreto mercúrico), apresentado de outro modo	31.45	33.15	\\r
28521019		0	Outros	31.45	33.15	\\r
28521021		0	Acetato de mercúrio	31.45	38.06	\\r
28521022		0	Timerosal	31.45	38.06	\\r
28521023		0	Estearato de mercúrio	31.45	38.06	\\r
28521024		0	Lactato de mercúrio	31.45	38.06	\\r
28521025		0	Salicilato de mercúrio	31.45	38.06	\\r
28521029		0	Outros	31.45	33.15	\\r
28529000		0	-Outros	31.45	38.06	\\r
28530010		0	Cianamida e seus derivados metálicos	31.45	33.15	\\r
28530020		0	Sulfocloretos de fósforo	31.45	33.15	\\r
28530031		0	Cloreto de cianogênio	31.45	33.15	\\r
28530039		0	Outros	31.45	33.15	\\r
28530090		0	Outros	31.45	33.15	\\r
28530090	01	0	Ex 01 - Ar comprimido	31.45	33.15	\\r
29011000		0	-Saturados	20.11	21.81	\\r
29012100		0	--Etileno	20.11	21.81	\\r
29012200		0	--Propeno (propileno)	20.11	21.81	\\r
29012300		0	--Buteno (butileno) e seus isômeros	20.11	21.81	\\r
29012410		0	Buta-1,3-dieno	20.11	21.81	\\r
29012420		0	Isopreno	20.11	21.81	\\r
29012900		0	--Outros	20.11	21.81	\\r
29021100		0	--Cicloexano	20.11	24.86	\\r
29021910		0	Limoneno	20.11	25.81	\\r
29021990		0	Outros	20.11	21.81	\\r
29022000		0	-Benzeno	20.11	22.86	\\r
29023000		0	-Tolueno	20.11	22.86	\\r
29024100		0	--o-Xileno	20.11	22.86	\\r
29024200		0	--m-Xileno	20.11	21.81	\\r
29024300		0	--p-Xileno	20.11	22.86	\\r
29024400		0	--Mistura de isômeros do xileno	20.11	22.86	\\r
29025000		0	-Estireno	20.11	25.81	\\r
29026000		0	-Etilbenzeno	20.11	21.81	\\r
29027000		0	-Cumeno	20.11	24.86	\\r
29029010		0	Difenila (1,1'-bifenila)	20.11	21.81	\\r
29029020		0	Naftaleno	20.11	21.81	\\r
29029030		0	Antraceno	20.11	21.81	\\r
29029040		0	alfa-Metilestireno	20.11	25.81	\\r
29029090		0	Outros	8.11	9.81	\\r
29031110		0	Clorometano (cloreto de metila)	20.11	25.81	\\r
29031120		0	Cloroetano (cloreto de etila)	20.11	25.81	\\r
29031200		0	--Diclorometano (cloreto de metileno)	20.11	21.81	\\r
29031300		0	--Clorofórmio (triclorometano)	20.11	21.81	\\r
29031400		0	--Tetracloreto de carbono	20.11	25.81	\\r
29031500		0	--Dicloreto de etileno (ISO) (1,2-dicloroetano)	20.11	25.81	\\r
29031910		0	1,1,1-Tricloroetano (metilclorofórmio)	20.11	21.81	\\r
29031920		0	1,1,2-Tricloroetano	20.11	21.81	\\r
29031990		0	Outros	20.11	21.81	\\r
39094099		0	Outras	34.12	41.61	\\r
29032100		0	--Cloreto de vinila (cloroetileno)	20.11	25.81	\\r
29032200		0	--Tricloroetileno	20.11	25.81	\\r
29032300		0	--Tetracloroetileno (percloroetileno)	20.11	25.81	\\r
29032900		0	--Outros	20.11	21.81	\\r
29033100		0	--Dibrometo de etileno (ISO) (1,2-dibromoetano)	20.11	21.81	\\r
29033911		0	1,1,1,2-Tetrafluoroetano	20.11	21.81	\\r
29033912		0	1,1,3,3,3-Pentafluoro-2-(trifluorometil)prop-1-eno	20.11	21.81	\\r
29033919		0	Outros	20.11	21.81	\\r
29033921		0	Bromometano	20.11	20.71	\\r
29033929		0	Outros	20.11	21.81	\\r
29033931		0	Iodoetano	20.11	21.81	\\r
29033932		0	Iodofórmio	20.11	21.81	\\r
29033939		0	Outros	20.11	21.81	\\r
29037100		0	--Clorodifluorometanos	20.11	25.81	\\r
29037200		0	--Diclorotrifluoroetanos	20.11	21.81	\\r
29037300		0	--Diclorofluoroetanos	20.11	21.81	\\r
29037400		0	--Clorodifluoroetanos	20.11	21.81	\\r
29037500		0	--Dicloropentafluoropropanos	20.11	21.81	\\r
29037600		0	--Bromoclorodifluorometano, bromotrifluorometano e dibromotetrafluorometanos	20.11	21.81	\\r
29037711		0	Triclorofluorometano	20.11	25.81	\\r
29037712		0	Diclorodifluorometano	20.11	25.81	\\r
29037713		0	Clorotrifluorometano	20.11	21.81	\\r
29037721		0	Triclorotrifluoroetanos	20.11	21.81	\\r
29037722		0	Diclorotetrafluoroetanos e cloropentafluoroetano	20.11	21.81	\\r
29037723		0	Pentaclorofluoroetano	20.11	21.81	\\r
29037724		0	Tetraclorodifluoroetanos	20.11	21.81	\\r
29037731		0	Heptaclorofluoropropanos	20.11	21.81	\\r
29037732		0	Hexaclorodifluoropropanos	20.11	21.81	\\r
29037733		0	Pentaclorotrifluoropropanos	20.11	21.81	\\r
29037734		0	Tetraclorotetrafluoropropanos	20.11	21.81	\\r
29037735		0	Tricloropentafluoropropanos	20.11	21.81	\\r
29037736		0	Dicloroexafluoropropanos	20.11	21.81	\\r
29037737		0	Cloroeptafluoropropanos	20.11	21.81	\\r
29037790		0	Outros	20.11	25.81	\\r
29037800		0	--Outros derivados peralogenados	20.11	21.81	\\r
29037911		0	Clorofluoroetanos	20.11	21.81	\\r
29037912		0	Clorotetrafluoroetanos	20.11	21.81	\\r
29037919		0	Outros	20.11	21.81	\\r
29037920		0	Derivados do metano, etano ou propano, halogenados unicamente com flúor e bromo	20.11	21.81	\\r
29037931		0	Halotano	20.11	21.81	\\r
29037939		0	Outros	20.11	21.81	\\r
29037990		0	Outros	20.11	21.81	\\r
29038110		0	Lindano	20.11	21.81	\\r
29038190		0	Outros	20.11	21.81	\\r
29038210		0	Aldrin	20.11	21.81	\\r
29038220		0	Clordano	20.11	21.81	\\r
29038230		0	Heptacloro	20.11	21.81	\\r
29038910		0	Mirex (dodecacloro)	20.11	21.81	\\r
29038990		0	Outros	20.11	21.81	\\r
29039110		0	Clorobenzeno	20.11	21.81	\\r
29039120		0	o-Diclorobenzeno	20.11	26.72	\\r
29039130		0	p-Diclorobenzeno	20.11	26.72	\\r
29039210		0	Hexaclorobenzeno	20.11	25.81	\\r
29039220		0	DDT	20.11	21.81	\\r
29039911		0	Cloreto de benzila	20.11	21.81	\\r
29039912		0	p-Clorotolueno	20.11	21.81	\\r
29039913		0	Cloreto de neofila	20.11	21.81	\\r
29039914		0	Triclorobenzenos	20.11	26.72	\\r
29039915		0	Cloronaftalenos	20.11	21.81	\\r
29039916		0	Cloreto de benzilideno	20.11	21.81	\\r
29039917		0	Cloretos de xilila	20.11	21.81	\\r
29039918		0	Bifenilas policloradas (PCB). terfenilas policloradas (PCT)	20.11	21.81	\\r
29039919		0	Outros	20.11	21.81	\\r
29039921		0	Bromobenzeno	20.11	21.81	\\r
29039922		0	Brometos de xilila	20.11	21.81	\\r
29039923		0	Bromodifenilmetano	20.11	21.81	\\r
29039924		0	Bifenilas polibromadas (PBB)	20.11	21.81	\\r
29039929		0	Outros	20.11	21.81	\\r
29039931		0	4-Cloro-alfa,alfa,alfa-trifluortolueno	20.11	25.81	\\r
29039939		0	Outros	20.11	21.81	\\r
29039990		0	Outros	20.11	21.81	\\r
29041011		0	Ácido metanossulfônico	20.11	21.81	\\r
29041012		0	Metanossulfonato de chumbo	20.11	21.81	\\r
29041013		0	Metanossulfonato de estanho	20.11	21.81	\\r
29041019		0	Outros	20.11	24.86	\\r
29041020		0	Ácido dodecilbenzenossulfônico e seus sais	20.11	27.60	\\r
29041030		0	Ácidos toluenossulfônicos. ácidos xilenossulfônicos. sais destes ácidos	20.11	27.60	\\r
29041040		0	Ácido etanossulfônico. ácido etilenossulfônico	20.11	27.60	\\r
29041051		0	Naftalenossulfonatos de sódio	20.11	27.60	\\r
29041052		0	Ácido beta-naftalenossulfônico	20.11	27.60	\\r
29041053		0	Ácidos alquil- e dialquilnaftalenossulfônicos. sais destes ácidos	20.11	27.60	\\r
29041059		0	Outros	20.11	21.81	\\r
29041060		0	Ácido benzenossulfônico e seus sais	20.11	27.60	\\r
29041090		0	Outros	20.11	21.81	\\r
29042010		0	Mononitrotoluenos (MNT)	20.11	21.81	\\r
29042020		0	Nitropropanos	20.11	21.81	\\r
29042030		0	Dinitrotoluenos	20.11	26.72	\\r
29042041		0	2,4,6-Trinitrotolueno (TNT)	20.11	26.72	\\r
29042049		0	Outros	20.11	21.81	\\r
29042051		0	Nitrobenzeno	20.11	26.72	\\r
29042052		0	1,3,5-Trinitrobenzeno	20.11	26.72	\\r
29042059		0	Outros	20.11	21.81	\\r
29042060		0	Derivados nitrados do xileno	20.11	26.72	\\r
29042070		0	Mononitroetano. nitrometanos	20.11	26.72	\\r
29049011		0	1-Cloro-4-nitrobenzeno	20.11	21.81	\\r
29049012		0	1-Cloro-2,4-dinitrobenzeno	20.11	21.81	\\r
29049013		0	2-Cloro-1,3-dinitrobenzeno	20.11	21.81	\\r
29049014		0	4-Cloro-alfa,alfa,alfa-trifluor-3,5-dinitrotolueno	20.11	27.60	\\r
29049015		0	o-Nitroclorobenzeno. m-nitroclorobenzeno	20.11	21.81	\\r
29049016		0	1,2-Dicloro-4-nitrobenzeno	20.11	21.81	\\r
29049017		0	Tricloronitrometano (cloropicrina)	20.11	21.81	\\r
29049019		0	Outros	20.11	21.81	\\r
29049021		0	Ácidos dinitroestilbenodissulfônicos	20.11	21.81	\\r
29049029		0	Outros	20.11	21.81	\\r
29049030		0	Cloreto de p-toluenossulfonila (cloreto de tosila)	20.11	21.81	\\r
29049040		0	Cloreto de o-toluenossulfonila	20.11	21.81	\\r
29049090		0	Outros	20.11	21.81	\\r
29051100		0	--Metanol (álcool metílico)	20.11	26.72	\\r
29051210		0	Álcool propílico	20.11	21.81	\\r
29051220		0	Álcool isopropílico	20.11	26.72	\\r
29051300		0	--Butan-1-ol (álcool n-butílico)	20.11	26.72	\\r
29051410		0	Álcool isobutílico (2-metil-1-propanol)	20.11	26.72	\\r
29051420		0	Álcool sec-butílico (2-butanol)	20.11	26.72	\\r
29051430		0	Álcool ter-butílico (2-metil-2-propanol)	20.11	21.81	\\r
29051600		0	--Octanol (álcool octílico) e seus isômeros	20.11	26.72	\\r
29051710		0	Álcool láurico	20.11	21.81	\\r
29051720		0	Álcool cetílico	20.11	21.81	\\r
29051730		0	Álcool esteárico	20.11	21.81	\\r
29051911		0	n-Decanol	20.11	21.81	\\r
29051912		0	Isodecanol	20.11	26.72	\\r
29051919		0	Outros	20.11	21.81	\\r
29051921		0	Etilato de magnésio	20.11	21.81	\\r
29051922		0	Metilato de sódio	20.11	21.81	\\r
29051923		0	Etilato de sódio	20.11	26.72	\\r
29051929		0	Outros	20.11	21.81	\\r
29051991		0	4-Metilpentan-2-ol	20.11	26.72	\\r
29051992		0	Isononanol	20.11	26.72	\\r
29051993		0	Isotridecanol	20.11	26.72	\\r
29051994		0	Tetraidrolinalol (3,7-dimetiloctan-3-ol)	20.11	21.81	\\r
29051995		0	3,3-Dimetilbutan-2-ol (álcool pinacolílico)	20.11	21.81	\\r
29051996		0	Pentanol (álcool amílico) e seus isômeros	20.11	26.72	\\r
29051999		0	Outros	20.11	21.81	\\r
29052210		0	Linalol	20.11	21.81	\\r
29052220		0	Geraniol	20.11	26.72	\\r
29052230		0	Diidromircenol (2,6-dimetil-7-octen-2-ol)	20.11	21.81	\\r
29052290		0	Outros	20.11	26.72	\\r
29052910		0	Álcool alílico	20.11	21.81	\\r
29052990		0	Outros	20.11	21.81	\\r
29053100		0	--Etilenoglicol (etanodiol)	20.11	26.72	\\r
29053200		0	--Propilenoglicol (propano-1,2-diol)	20.11	26.72	\\r
29053910		0	2-Metil-2,4-pentanodiol (hexilenoglicol)	20.11	26.72	\\r
29053920		0	Trimetilenoglicol (1,3-propanodiol)	20.11	26.72	\\r
29053930		0	1,3-Butilenoglicol (1,3-butanodiol)	20.11	26.72	\\r
29053990		0	Outros	20.11	21.81	\\r
29054100		0	--2-Etil-2-(hidroximetil)propano-1,3-diol (trimetilolpropano)	20.11	21.81	\\r
29054200		0	--Pentaeritritol (pentaeritrita)	20.11	27.60	\\r
29054300		0	--Manitol	20.11	27.60	\\r
29054400		0	--D-glucitol (sorbitol)	20.11	27.60	\\r
29054500		0	--Glicerol	20.11	25.81	\\r
29054900		0	--Outros	20.11	21.81	\\r
29055100		0	--Etclorvinol (DCI)	20.11	21.81	\\r
29055910		0	Hidrato de cloral	20.11	21.81	\\r
29055990		0	Outros	20.11	21.81	\\r
29061100		0	--Mentol	20.11	26.72	\\r
29061200		0	--Cicloexanol, metilcicloexanóis e dimetilcicloexanóis	20.11	26.72	\\r
29061300		0	--Esteróis e inositóis	20.11	21.81	\\r
29061910		0	Derivados do mentol	20.11	26.72	\\r
29061920		0	Borneol. isoborneol	20.11	21.81	\\r
29061930		0	Terpina e seu hidrato	20.11	21.81	\\r
29061940		0	Álcool fenchílico (1,3,3-trimetil-2-norbornanol)	20.11	21.81	\\r
29061950		0	Terpineóis	20.11	26.72	\\r
29061990		0	Outros	20.11	21.81	\\r
29062100		0	--Álcool benzílico	20.11	26.72	\\r
29062910		0	2-Feniletanol	20.11	21.81	\\r
29062920		0	Dicofol	20.11	21.81	\\r
29062990		0	Outros	20.11	21.81	\\r
29071100		0	--Fenol (hidroxibenzeno) e seus sais	20.11	24.86	\\r
29071200		0	--Cresóis e seus sais	20.11	21.81	\\r
29071300		0	--Octilfenol, nonilfenol, e seus isômeros. sais destes produtos	20.11	25.81	\\r
29071510		0	beta-Naftol e seus sais	20.11	21.81	\\r
29071590		0	Outros	20.11	21.81	\\r
29071910		0	2,6-Di-ter-butil-p-cresol e seus sais	20.11	21.81	\\r
29071920		0	o-Fenilfenol e seus sais	20.11	21.81	\\r
29071930		0	p-ter-Butilfenol e seus sais	20.11	21.81	\\r
29071940		0	Xilenóis e seus sais	20.11	21.81	\\r
29071990		0	Outros	20.11	21.81	\\r
29072100		0	--Resorcinol e seus sais	20.11	21.81	\\r
29072200		0	--Hidroquinona e seus sais	20.11	21.81	\\r
29072300		0	--4,4'-Isopropilidenodifenol (bisfenol A, difenilolpropano) e seus sais	20.11	26.72	\\r
29072900		0	--Outros	20.11	21.81	\\r
29081100		0	--Pentaclorofenol (ISO)	20.11	21.81	\\r
29081911		0	4-Cloro-m-cresol e seus sais	20.11	21.81	\\r
29081912		0	Diclorofenóis e seus sais	20.11	26.72	\\r
29081913		0	p-Clorofenol	20.11	21.81	\\r
29081914		0	Triclorofenóis e seus sais	20.11	21.81	\\r
40070019		0	Outros	31.45	38.94	\\r
29081915		0	Tetraclorofenóis e seus sais	20.11	21.81	\\r
29081919		0	Outros	20.11	21.81	\\r
29081921		0	2,4,6-Tribromofenol	20.11	21.81	\\r
29081929		0	Outros	20.11	21.81	\\r
29081990		0	Outros	20.11	21.81	\\r
29089100		0	--Dinoseb (ISO) e seus sais	20.11	21.81	\\r
29089200		0	--4,6-Dinitro-o-cresol (DNOC (ISO)) e seus sais	20.11	21.81	\\r
29089912		0	p-Nitrofenol e seus sais	20.11	21.81	\\r
29089913		0	Ácido pícrico	20.11	21.81	\\r
29089919		0	Outros	20.11	21.81	\\r
29089921		0	Disofenol	20.11	27.60	\\r
29089929		0	Outros	20.11	21.81	\\r
29089930		0	Derivados sulfonados do fenol, seus sais e seus ésteres	20.11	26.72	\\r
29089990		0	Outros	20.11	21.81	\\r
29091100		0	--Éter dietílico (óxido de dietila)	20.11	26.72	\\r
29091910		0	Éter metil-ter-butílico (MTBE)	20.11	26.72	\\r
29091990		0	Outros	20.11	21.81	\\r
29092000		0	-Éteres ciclânicos, ciclênicos, cicloterpênicos e seus derivados halogenados, sulfonados, nitrados ou nitrosados	20.11	26.72	\\r
29093011		0	Anetol	20.11	26.72	\\r
29093012		0	Éter difenílico (éter fenílico)	20.11	21.81	\\r
29093013		0	Éter dibenzílico (éter benzílico)	20.11	26.72	\\r
29093014		0	Éter feniletil-isoamílico	20.11	26.72	\\r
29093019		0	Outros	20.11	21.81	\\r
29093021		0	Oxifluorfeno	20.11	21.81	\\r
29093029		0	Outros	20.11	21.81	\\r
29094100		0	--2,2'-Oxidietanol (dietilenoglicol)	20.11	27.60	\\r
29094310		0	Do etilenoglicol	20.11	27.60	\\r
29094320		0	Do dietilenoglicol	20.11	27.60	\\r
29094411		0	Éter etílico	20.11	27.60	\\r
29094412		0	Éter isobutílico	20.11	27.60	\\r
29094413		0	Éter hexílico	20.11	21.81	\\r
29094419		0	Outros	20.11	27.60	\\r
29094421		0	Éter etílico	20.11	27.60	\\r
29094429		0	Outros	20.11	27.60	\\r
29094910		0	Guaifenesina	20.11	21.81	\\r
29094921		0	Trietilenoglicol	20.11	27.60	\\r
29094922		0	Tetraetilenoglicol	20.11	27.60	\\r
29094923		0	Pentaetilenoglicol e seus éteres	20.11	21.81	\\r
29094924		0	Éter fenílico do etilenoglicol	20.11	27.60	\\r
29094929		0	Outros	20.11	21.81	\\r
29094931		0	Dipropilenoglicol	20.11	27.60	\\r
29094932		0	Éteres do mono-, di- e tripropilenoglicol	20.11	27.60	\\r
29094939		0	Outros	20.11	21.81	\\r
29094941		0	Éter etílico do butilenoglicol	20.11	27.60	\\r
29094949		0	Outros	20.11	21.81	\\r
29094950		0	Álcoois fenoxibenzílicos	20.11	21.81	\\r
29094990		0	Outros	20.11	21.81	\\r
29095011		0	Triclosan	20.11	21.81	\\r
29095012		0	Eugenol	20.11	21.81	\\r
29095013		0	Isoeugenol	20.11	21.81	\\r
29095019		0	Outros	20.11	21.81	\\r
29095090		0	Outros	20.11	21.81	\\r
29096011		0	De diisopropilbenzeno	20.11	21.81	\\r
29096012		0	De ter-butila	20.11	21.81	\\r
29096013		0	De p-mentano	20.11	21.81	\\r
29096019		0	Outros	20.11	26.72	\\r
29096020		0	Peróxidos	20.11	26.72	\\r
29101000		0	-Oxirano (óxido de etileno)	20.11	21.81	\\r
29102000		0	-Metiloxirano (óxido de propileno)	20.11	21.81	\\r
29103000		0	-1-Cloro-2,3-epoxipropano (epicloridrina)	20.11	21.81	\\r
29104000		0	-Dieldrin (ISO, DCI)	20.11	21.81	\\r
29109010		0	Óxido de estireno	20.11	21.81	\\r
29109030		0	Endrin	20.11	21.81	\\r
29109090		0	Outros	20.11	21.81	\\r
29110010		0	Dimetilacetal do 2-nitrobenzaldeído	20.11	21.81	\\r
29110090		0	Outros	20.11	21.81	\\r
29121100		0	--Metanal (formaldeído)	20.11	26.72	\\r
29121200		0	--Etanal (acetaldeído)	20.11	26.72	\\r
29121911		0	Glioxal	20.11	21.81	\\r
29121912		0	Glutaraldeído	20.11	21.81	\\r
29121919		0	Outros	20.11	21.81	\\r
29121921		0	Citral	20.11	26.72	\\r
29121922		0	Citronelal (3,7-dimetil-6-octenal)	20.11	26.72	\\r
29121923		0	Bergamal (3,7-dimetil-2-metileno-6-octenal)	20.11	21.81	\\r
29121929		0	Outros	20.11	21.81	\\r
29121991		0	Heptanal	20.11	21.81	\\r
29121999		0	Outros	20.11	21.81	\\r
29122100		0	--Benzaldeído (aldeído benzóico)	20.11	25.81	\\r
29122910		0	Aldeído alfa-amilcinâmico	20.11	21.81	\\r
29122920		0	Aldeído alfa-hexilcinâmico	20.11	21.81	\\r
29122990		0	Outros	20.11	21.81	\\r
29124100		0	--Vanilina (aldeído metilprotocatéquico)	20.11	21.81	\\r
29124200		0	--Etilvanilina (aldeído etilprotocatéquico)	20.11	21.81	\\r
29124910		0	3-Fenoxibenzaldeído	20.11	21.81	\\r
29124920		0	3-Hidroxibenzaldeído	20.11	21.81	\\r
29124930		0	3,4,5-Trimetoxibenzaldeído	20.11	21.81	\\r
29124941		0	4-(4-Hidroxi-4-metilpentil)-3-cicloexeno-1-carboxialdeído	20.11	21.81	\\r
29124949		0	Outros	20.11	26.72	\\r
29124990		0	Outros	20.11	21.81	\\r
29125000		0	-Polímeros cíclicos dos aldeídos	20.11	21.81	\\r
29126000		0	-Paraformaldeído	20.11	21.81	\\r
29130010		0	Tricloroacetaldeído	20.11	21.81	\\r
29130090		0	Outros	20.11	21.81	\\r
29141100		0	--Acetona	20.11	26.72	\\r
29141200		0	--Butanona (metiletilcetona)	20.11	26.72	\\r
29141300		0	--4-Metilpentan-2-ona (metilisobutilcetona)	20.11	26.72	\\r
29141921		0	Acetilacetona	20.11	21.81	\\r
29141922		0	Acetonilacetona	20.11	21.81	\\r
29141923		0	Diacetila	20.11	26.72	\\r
29141929		0	Outras	20.11	26.72	\\r
29141930		0	Metilexilcetona	20.11	21.81	\\r
29141940		0	Pseudoiononas	20.11	21.81	\\r
29141950		0	Metilisopropilcetona	20.11	21.81	\\r
29141990		0	Outras	20.11	26.72	\\r
29142210		0	Cicloexanona	20.11	21.81	\\r
29142220		0	Metilcicloexanonas	20.11	21.81	\\r
29142310		0	Iononas	20.11	21.81	\\r
29142320		0	Metiliononas	20.11	21.81	\\r
29142910		0	Carvona	20.11	26.72	\\r
29142920		0	1-Mentona	20.11	21.81	\\r
29142990		0	Outras	20.11	21.81	\\r
29143100		0	--Fenilacetona (fenilpropan-2-ona)	20.11	21.81	\\r
29143910		0	Acetofenona	20.11	26.72	\\r
29143990		0	Outras	20.11	21.81	\\r
29144010		0	4-Hidroxi-4-metilpentan-2-ona (diacetona álcool)	20.11	26.72	\\r
29144091		0	Benzoína	20.11	21.81	\\r
29144099		0	Outras	20.11	21.81	\\r
29145010		0	Nabumetona	20.11	21.81	\\r
29145020		0	1,8-Diidroxi-3-metil-9-antrona e sua forma enólica (crisarobina ou chrysarobin)	20.11	26.72	\\r
29145090		0	Outras	20.11	21.81	\\r
29146100		0	--Antraquinona	20.11	21.81	\\r
29146910		0	Lapachol	20.11	21.81	\\r
29146920		0	Menadiona	20.11	21.81	\\r
29146990		0	Outras	20.11	21.81	\\r
29147011		0	1-Cloro-5-hexanona	20.11	21.81	\\r
29147019		0	Outros	20.11	21.81	\\r
29147021		0	Bissulfito sódico de menadiona	20.11	24.86	\\r
29147022		0	Ácido 2-hidroxi-4-metoxibenzofenona-5-sulfônico (sulisobenzona)	20.11	26.72	\\r
29147029		0	Outros	20.11	21.81	\\r
29147090		0	Outros	20.11	21.81	\\r
29151100		0	--Ácido fórmico	20.11	26.72	\\r
29151210		0	De sódio	20.11	26.72	\\r
29151290		0	Outros	20.11	21.81	\\r
29151310		0	De geranila	20.11	26.72	\\r
29151390		0	Outros	20.11	21.81	\\r
29152100		0	--Ácido acético	20.11	26.72	\\r
29152400		0	--Anidrido acético	20.11	26.72	\\r
29152910		0	Acetato de sódio	20.11	26.72	\\r
29152920		0	Acetatos de cobalto	20.11	26.72	\\r
29152990		0	Outros	20.11	26.72	\\r
29153100		0	--Acetato de etila	20.11	26.72	\\r
29153200		0	--Acetato de vinila	20.11	21.81	\\r
29153300		0	--Acetato de n-butila	20.11	26.72	\\r
29153600		0	--Acetato de dinoseb (ISO)	20.11	26.72	\\r
29153910		0	Acetato de linalila	20.11	21.81	\\r
29153921		0	Triacetina	20.11	26.72	\\r
29153929		0	Outros	20.11	26.72	\\r
29153931		0	De n-propila	20.11	21.81	\\r
29153932		0	Acetato de 2-etoxietila	20.11	26.72	\\r
29153939		0	Outros	20.11	26.72	\\r
29153941		0	De decila	20.11	21.81	\\r
29153942		0	De hexenila	20.11	21.81	\\r
29153951		0	De benzestrol	20.11	21.81	\\r
29153952		0	De dienoestrol	20.11	21.81	\\r
29153953		0	De hexestrol	20.11	21.81	\\r
29153954		0	De mestilbol	20.11	21.81	\\r
29153955		0	De estilbestrol	20.11	21.81	\\r
29153961		0	De tricloro-alfa-feniletila	20.11	21.81	\\r
29153962		0	De triclorometilfenilcarbinila	20.11	21.81	\\r
29153963		0	Diacetato de etilenoglicol (diacetato de etileno)	20.11	21.81	\\r
29153991		0	De 2-ter-butilcicloexila	20.11	21.81	\\r
29153992		0	De bornila	20.11	21.81	\\r
29153993		0	De dimetilbenzilcarbinila	20.11	21.81	\\r
29153994		0	Bis(p-acetoxifenil)cicloexilidenometano (ciclofenil)	20.11	21.81	\\r
29153999		0	Outros	20.11	26.72	\\r
29154010		0	Ácido monocloroacético	20.11	26.72	\\r
29154020		0	Monocloroacetato de sódio	20.11	26.72	\\r
29154090		0	Outros	20.11	21.81	\\r
29155010		0	Ácido propiônico	20.11	21.81	\\r
29155020		0	Sais	20.11	26.72	\\r
29155030		0	Ésteres	20.11	21.81	\\r
29156011		0	Ácidos butanóicos e seus sais	20.11	21.81	\\r
29156012		0	Butanoato de etila	20.11	21.81	\\r
29156019		0	Outros	20.11	21.81	\\r
29156021		0	Ácido piválico	20.11	21.81	\\r
29156029		0	Outros	20.11	21.81	\\r
29157011		0	Ácido palmítico	20.11	21.81	\\r
29157019		0	Outros	20.11	26.72	\\r
29157020		0	Ácido esteárico	20.11	26.72	\\r
29157031		0	De zinco	20.11	26.72	\\r
29157039		0	Outros	20.11	26.72	\\r
29157040		0	Ésteres do ácido esteárico	20.11	26.72	\\r
29159010		0	Cloreto de cloroacetila	20.11	21.81	\\r
29159021		0	Ácido 2-etilexanóico (ácido 2-etilexóico)	20.11	26.72	\\r
29159022		0	2-Etilexanoato de estanho II	20.11	26.72	\\r
29159023		0	Di(2-etilexanoato) de trietilenoglicol	20.11	21.81	\\r
29159024		0	Cloreto de 2-etilexanoíla	20.11	21.81	\\r
29159029		0	Outros	20.11	26.72	\\r
29159031		0	Ácido mirístico	20.11	21.81	\\r
29159032		0	Ácido caprílico	20.11	21.81	\\r
29159033		0	Miristato de isopropila	20.11	26.72	\\r
29159039		0	Outros	20.11	21.81	\\r
29159041		0	Ácido láurico	20.11	21.81	\\r
29159042		0	Sais e ésteres	20.11	26.72	\\r
29159050		0	Peróxidos de ácidos	20.11	26.72	\\r
29159060		0	Perácidos	20.11	26.72	\\r
29159090		0	Outros	20.11	21.81	\\r
29161110		0	Ácido acrílico	20.11	21.81	\\r
29161120		0	Sais	20.11	21.81	\\r
29161210		0	De metila	20.11	26.72	\\r
29161220		0	De etila	20.11	26.72	\\r
29161230		0	De butila	20.11	26.72	\\r
29161240		0	De 2-etilexila	20.11	21.81	\\r
29161290		0	Outros	20.11	21.81	\\r
29161310		0	Ácido metacrílico	20.11	21.81	\\r
29161320		0	Sais	20.11	21.81	\\r
29161410		0	De metila	20.11	26.72	\\r
29161420		0	De etila	20.11	26.72	\\r
29161430		0	De n-butila	20.11	21.81	\\r
29161490		0	Outros	20.11	21.81	\\r
29161511		0	Oleato de manitol	20.11	21.81	\\r
29161519		0	Outros	20.11	26.72	\\r
29161520		0	Ácido linoleico. ácido linolênico. seus sais e seus ésteres	20.11	21.81	\\r
29161600		0	--Binapacril (ISO)	20.11	21.81	\\r
29161911		0	Sorbato de potássio	20.11	26.72	\\r
29161919		0	Outros	20.11	21.81	\\r
29161921		0	Ácido undecilênico	20.11	21.81	\\r
29161922		0	Undecilenato de metila	20.11	21.81	\\r
29161923		0	Undecilenato de zinco	20.11	21.81	\\r
29161929		0	Outros	20.11	21.81	\\r
29161990		0	Outros	20.11	21.81	\\r
29162011		0	Ácido 3-(2,2-dibromovinil)-2,2-dimetilciclopropanocarboxílico	20.11	21.81	\\r
29162012		0	Cloreto do ácido 3-(2,2-diclorovinil)-2,2-dimetilciclopropanocarboxílico (DVO)	20.11	21.81	\\r
29162013		0	Aletrinas	20.11	21.81	\\r
29162014		0	Permetrina	20.11	26.72	\\r
29162015		0	Bifentrin	20.11	21.81	\\r
29162019		0	Outros	20.11	21.81	\\r
29162090		0	Outros	20.11	21.81	\\r
29163110		0	Ácido benzóico	20.11	26.72	\\r
29163121		0	De sódio	20.11	26.72	\\r
29163122		0	De amônio	20.11	26.72	\\r
29163129		0	Outros	20.11	21.81	\\r
29163131		0	De metila	20.11	26.72	\\r
29163132		0	De benzila	20.11	26.72	\\r
29163139		0	Outros	20.11	21.81	\\r
29163210		0	Peróxido de benzoíla	20.11	26.72	\\r
29163220		0	Cloreto de benzoíla	20.11	21.81	\\r
29163400		0	--Ácido fenilacético e seus sais	20.11	21.81	\\r
29163910		0	Cloreto de 4-cloro-alfa-(1-metiletil)benzenoacetila	20.11	21.81	\\r
29163920		0	Ibuprofeno	20.11	21.81	\\r
29163930		0	Ácido 4-cloro-3-nitrobenzóico	20.11	21.81	\\r
29163940		0	Perbenzoato de ter-butila	20.11	26.72	\\r
29163990		0	Outros	20.11	21.81	\\r
29171110		0	Ácido oxálico e seus sais	20.11	21.81	\\r
29171120		0	Ésteres	20.11	21.81	\\r
29171210		0	Ácido adípico	20.11	25.81	\\r
29171220		0	Sais e ésteres	20.11	26.72	\\r
29171310		0	Ácido azeláico, seus sais e seus ésteres	20.11	21.81	\\r
29171321		0	Ácido sebácico	20.11	21.81	\\r
29171322		0	Sebacato de dibutila	20.11	26.72	\\r
29171323		0	Sebacato de dioctila	20.11	26.72	\\r
29171329		0	Outros	20.11	21.81	\\r
29171400		0	--Anidrido maléico	20.11	26.72	\\r
29171910		0	Dioctilsulfossuccinato de sódio	20.11	26.72	\\r
29171921		0	Ácido maléico	20.11	26.72	\\r
29171922		0	Sais e ésteres	20.11	26.72	\\r
29171930		0	Ácido fumárico, seus sais e seus ésteres	20.11	26.72	\\r
29171990		0	Outros	20.11	21.81	\\r
29172000		0	-Ácidos policarboxílicos ciclânicos, ciclênicos ou cicloterpênicos, seus anidridos, halogenetos, peróxidos, perácidos e seus derivados	20.11	21.81	\\r
29173200		0	--Ortoftalatos de dioctila	20.11	26.72	\\r
29173300		0	--Ortoftalatos de dinonila ou de didecila	20.11	26.72	\\r
29173400		0	--Outros ésteres do ácido ortoftálico	20.11	26.72	\\r
29173500		0	--Anidrido ftálico	20.11	26.72	\\r
29173600		0	--Ácido tereftálico e seus sais	20.11	26.72	\\r
29173700		0	--Tereftalato de dimetila	20.11	26.72	\\r
29173911		0	Ésteres	20.11	21.81	\\r
29173919		0	Outros	20.11	21.81	\\r
29173920		0	Ácido ortoftálico e seus sais	20.11	26.72	\\r
29173931		0	De dioctila	20.11	26.72	\\r
29173939		0	Outros	20.11	21.81	\\r
29173940		0	Sais e ésteres do ácido trimelítico (sais e ésteres do ácido 1,2,4-benzenotricarboxílico)	20.11	23.88	\\r
29173950		0	Anidrido trimelítico (ácido 1,3-dioxo-5-isobenzofuranocarboxílico)	20.11	21.81	\\r
29173990		0	Outros	20.11	21.81	\\r
29181100		0	--Ácido láctico, seus sais e seus ésteres	20.11	26.72	\\r
29181200		0	--Ácido tartárico	20.11	26.72	\\r
29181310		0	Sais	20.11	26.72	\\r
29181320		0	Ésteres	20.11	21.81	\\r
29181400		0	--Ácido cítrico	20.11	26.72	\\r
29181500		0	--Sais e ésteres do ácido cítrico	20.11	26.72	\\r
29181610		0	Gluconato de cálcio	20.11	26.72	\\r
29181690		0	Outros	20.11	26.72	\\r
29181800		0	--Clorobenzilato (ISO)	20.11	21.81	\\r
29181910		0	Bromopropilato	20.11	21.81	\\r
29181921		0	Ursodiol (ácido ursodeoxicólico)	20.11	21.81	\\r
29181922		0	Ácido quenodeoxicólico	20.11	21.81	\\r
29181929		0	Outros	20.11	26.72	\\r
29181930		0	Ácido 12-hidroxiesteárico	20.11	26.72	\\r
29181941		0	Ácido benzílico	20.11	21.81	\\r
29181942		0	Sais	20.11	21.81	\\r
29181943		0	Ésteres	20.11	21.81	\\r
29182110		0	Ácido salicílico	20.11	26.72	\\r
29182120		0	Sais	20.11	26.72	\\r
29182211		0	Ácido O-acetilsalicílico	20.11	26.72	\\r
29182212		0	O-Acetilsalicilato de alumínio	20.11	26.72	\\r
29182219		0	Outros	20.11	21.81	\\r
29182220		0	Ésteres	20.11	21.81	\\r
29182300		0	--Outros ésteres do ácido salicílico e seus sais	20.11	26.72	\\r
29182910		0	Ácidos hidroxinaftóicos	20.11	21.81	\\r
29182921		0	Ácido p-hidroxibenzóico	20.11	21.81	\\r
29182922		0	Metilparabeno	20.11	26.72	\\r
29182923		0	Propilparabeno	20.11	26.72	\\r
29182929		0	Outros	20.11	21.81	\\r
29182930		0	Ácido gálico, seus sais e seus ésteres	20.11	21.81	\\r
29182940		0	Tetrakis(3-(3,5-di-ter-butil-4-hidroxifenil)propionato) de pentaeritritila	20.11	26.72	\\r
29182950		0	3-(3,5-Di-ter-butil-4-hidroxifenil)propionato de octadecila	20.11	26.72	\\r
29182990		0	Outros	20.11	21.81	\\r
29183010		0	Cetoprofeno	20.11	21.81	\\r
29183020		0	Butirilacetato de metila	20.11	21.81	\\r
29183031		0	Ácido deidrocólico	20.11	21.81	\\r
29183032		0	Deidrocolato de sódio	20.11	21.81	\\r
29183033		0	Deidrocolato de magnésio	20.11	27.60	\\r
29183039		0	Outros	20.11	21.81	\\r
29183040		0	Acetilacetato de 2-nitrometilbenzilideno	20.11	21.81	\\r
29183090		0	Outros	20.11	21.81	\\r
29189100		0	--2,4,5-T (ISO) (ácido 2,4,5-triclorofenoxiacético), seus sais e seus ésteres	20.11	21.81	\\r
29189911		0	Ácido fenoxiacético, seus sais e seus ésteres	20.11	26.72	\\r
29189912		0	Ácido 2,4-diclorofenoxiacético (2,4-D), seus sais e seus ésteres	20.11	27.60	\\r
29189919		0	Outros	20.11	21.81	\\r
29189921		0	Ácidos diclorofenoxibutanóicos, seus sais e seus ésteres	20.11	26.72	\\r
29189929		0	Outros	20.11	21.81	\\r
29189930		0	Acifluorfen sódico	20.11	21.81	\\r
29189940		0	Naproxeno	20.11	21.81	\\r
29189950		0	Ácido 3-(2-cloro-alfa, alfa, alfa-trifluor-p-toliloxi)benzóico	20.11	21.81	\\r
29189960		0	Diclofop-metila	20.11	21.81	\\r
29189991		0	Fenofibrato	20.11	21.81	\\r
29189992		0	Ácidos metilclorofenoxiacéticos, seus sais e seus ésteres	20.11	26.72	\\r
29189993		0	5-(2-Cloro-4-trifluorometilfenoxi)-2-nitrobenzoato de 1'-(carboetoxi)etila (lactofen)	20.11	26.72	\\r
29189994		0	Ácido 4-(4-hidroxifenoxi)-3,5-diiodofenilacético	20.11	27.60	\\r
29189999		0	Outros	20.11	21.81	\\r
29191000		0	-Fosfato de tris(2,3-dibromopropila)	20.11	21.81	\\r
29199010		0	De tributila	20.11	21.81	\\r
29199020		0	De tricresila	20.11	21.81	\\r
29199030		0	De trifenila	20.11	25.81	\\r
29199040		0	Diclorvós (DDVP)	20.11	26.72	\\r
29199050		0	Lactofosfato de cálcio	20.11	26.72	\\r
29199060		0	Clorfenvinfós	20.11	27.60	\\r
29199090		0	Outros	20.11	21.81	\\r
29201110		0	Paration (etil paration)	20.11	21.81	\\r
29201120		0	Paration-metila (metil paration)	20.11	21.81	\\r
29201910		0	Fenitrotion	20.11	21.81	\\r
29201920		0	Cloreto de fosforotioato de dimetila	20.11	21.81	\\r
29201990		0	Outros	20.11	21.81	\\r
29209013		0	De alquila de C3 a C13 ou de alquil-arila	20.11	26.72	\\r
29209014		0	De difenila	20.11	21.81	\\r
29209015		0	Outros, de arila	20.11	26.72	\\r
29209016		0	Fosetil Al	20.11	21.81	\\r
29209017		0	De tris(2,4-di-ter-butilfenila)	20.11	26.72	\\r
29209019		0	Outros	20.11	21.81	\\r
29209021		0	Endossulfan	20.11	26.72	\\r
29209022		0	Propargite	20.11	27.60	\\r
29209029		0	Outros	20.11	21.81	\\r
29209031		0	De propatila	20.11	26.72	\\r
29209032		0	Nitroglicerina	20.11	26.72	\\r
29209033		0	Tetranitrato de pentaeritritol (PETN, nitropenta, pentrita)	20.11	26.72	\\r
29209039		0	Outros	20.11	21.81	\\r
29209041		0	De alquila de C6 a C22	20.11	26.72	\\r
29209042		0	De monoalquildietilenoglicol ou de monoalquiltrietilenoglicol	20.11	26.72	\\r
29209049		0	Outros	20.11	21.81	\\r
29209051		0	De etila	20.11	26.72	\\r
29209059		0	Outros	20.11	21.81	\\r
29209061		0	Fosfitos de dimetila	20.11	21.81	\\r
29209062		0	Fosfitos de trimetila	20.11	21.81	\\r
29209063		0	Fosfitos de dietila	20.11	21.81	\\r
29209064		0	Fosfitos de trietila	20.11	21.81	\\r
29209069		0	Outros	20.11	21.81	\\r
29209090		0	Outros	20.11	21.81	\\r
29211111		0	Monometilamina	20.11	26.72	\\r
29211112		0	Sais	20.11	21.81	\\r
29211121		0	Dimetilamina	20.11	26.72	\\r
29211122		0	2,4-Diclorofenoxiacetato de dimetilamina	20.11	26.72	\\r
29211123		0	Metilclorofenoxiacetato de dimetilamina	20.11	26.72	\\r
29211129		0	Outros	20.11	21.81	\\r
29211131		0	Trimetilamina	20.11	26.72	\\r
29211132		0	Cloridrato de trimetilamina	20.11	26.72	\\r
29211139		0	Outros	20.11	21.81	\\r
29211911		0	Monoetilamina e seus sais	20.11	27.60	\\r
29211912		0	Trietilamina	20.11	26.72	\\r
29211913		0	Bis(2-cloroetil)etilamina	20.11	21.81	\\r
29211914		0	Triclormetina (DCI) (tris(2-cloroetil)amina)	20.11	21.81	\\r
29211915		0	Dietilamina e seus sais, exceto etansilato (ethamsylate)	20.11	27.60	\\r
29211919		0	Outros	20.11	21.81	\\r
29211921		0	Mono-n-propilamina e seus sais	20.11	26.72	\\r
29211922		0	Di-n-propilamina e seus sais	20.11	27.60	\\r
29211923		0	Monoisopropilamina e seus sais	20.11	27.60	\\r
29211924		0	Diisopropilamina e seus sais	20.11	27.60	\\r
29211929		0	Outros	20.11	21.81	\\r
29211931		0	Diisobutilamina e seus sais	20.11	27.60	\\r
29211939		0	Outros	20.11	21.81	\\r
29211941		0	Metildialquilaminas	20.11	26.72	\\r
29211949		0	Outras	20.11	26.72	\\r
29211991		0	Clormetina (DCI) (bis(2-cloroetil)metilamina)	20.11	21.81	\\r
29211992		0	N,N-Dialquil-2-cloroetilamina, com grupos alquila de C1 a C3, e seus sais protonados	20.11	21.81	\\r
29211993		0	Mucato de isometepteno	20.11	27.60	\\r
29211999		0	Outros	20.11	21.81	\\r
29212100		0	--Etilenodiamina e seus sais	20.11	21.81	\\r
29212200		0	--Hexametilenodiamina e seus sais	20.11	26.72	\\r
29212910		0	Dietilenotriamina e seus sais	20.11	21.81	\\r
29212920		0	Trietilenotetramina e seus sais	20.11	21.81	\\r
29212990		0	Outros	20.11	21.81	\\r
29213011		0	Monocicloexilamina e seus sais	20.11	27.60	\\r
29213012		0	Dicicloexilamina	20.11	26.72	\\r
29213019		0	Outros	20.11	21.81	\\r
29213020		0	Propilexedrina	20.11	21.81	\\r
29213090		0	Outros	20.11	21.81	\\r
29214100		0	--Anilina e seus sais	20.11	26.72	\\r
29214211		0	Ácido sulfanílico e seus sais	20.11	21.81	\\r
29214219		0	Outros	20.11	21.81	\\r
29214221		0	3,4-Dicloroanilina e seus sais	20.11	26.72	\\r
29214229		0	Outros	8.11	9.81	\\r
29214231		0	4-Nitroanilina	20.11	21.81	\\r
29214239		0	Outros	20.11	21.81	\\r
29214241		0	5-Cloro-2-nitroanilina	20.11	21.81	\\r
29214249		0	Outros	20.11	21.81	\\r
29214290		0	Outros	20.11	21.81	\\r
29214311		0	o-Toluidina	20.11	26.72	\\r
29214319		0	Outros	20.11	21.81	\\r
29214321		0	3-Nitro-4-toluidina e seus sais	20.11	21.81	\\r
29214322		0	Trifluralina	20.11	27.60	\\r
29214323		0	4-Cloro-2-toluidina	20.11	21.81	\\r
29214329		0	Outros	20.11	21.81	\\r
29214410		0	Difenilamina e seus sais	20.11	21.81	\\r
29214421		0	n-Octildifenilamina	20.11	26.72	\\r
29214422		0	n-Nonildifenilamina	20.11	26.72	\\r
29214429		0	Outros	20.11	21.81	\\r
29214500		0	--1-Naftilamina (alfa-naftilamina), 2-naftilamina (beta-naftilamina), e seus derivados. sais destes produtos	20.11	21.81	\\r
29214610		0	Anfetamina e seus sais	20.11	21.81	\\r
29214620		0	Benzofetamina e seus sais	20.11	21.81	\\r
29214630		0	Dexanfetamina e seus sais	20.11	21.81	\\r
29214640		0	Etilanfetamina e seus sais	20.11	21.81	\\r
29214650		0	Fencanfamina e seus sais	20.11	21.81	\\r
29214660		0	Fentermina e seus sais	20.11	21.81	\\r
29214670		0	Lefetamina e seus sais	20.11	21.81	\\r
29214680		0	Levanfetamina e seus sais	20.11	21.81	\\r
29214690		0	Mefenorex e seus sais	20.11	21.81	\\r
29214910		0	Cloridrato de fenfluramina	20.11	21.81	\\r
29214921		0	2,4-Xilidina e seus sais	20.11	21.81	\\r
29214922		0	Pendimetalina	20.11	21.81	\\r
29214929		0	Outros	20.11	21.81	\\r
29214931		0	Sulfato de tranilcipromina	20.11	27.60	\\r
29214939		0	Outros	20.11	21.81	\\r
29214990		0	Outros	20.11	21.81	\\r
29215111		0	m-Fenilenodiamina e seus sais	20.11	21.81	\\r
29215112		0	Diaminotoluenos (toluilenodiaminas)	20.11	26.72	\\r
29215119		0	Outros	20.11	21.81	\\r
29215120		0	Derivados sulfonados das fenilenodiaminas e de seus derivados. sais destes produtos	20.11	21.81	\\r
29215131		0	N,N'-Di-sec-butil-p-fenilenodiamina	20.11	26.72	\\r
29215132		0	N-Isopropil-N'-fenil-p-fenilenodiamina	20.11	26.72	\\r
29215133		0	N-(1,3-Dimetilbutil)-N'-fenil-p-fenilenodiamina	20.11	26.72	\\r
29215134		0	N-(1,4-Dimetilpentil)-N'-fenil-p-fenilenodiamina	20.11	26.72	\\r
29215135		0	N-Fenil-p-fenilenodiamina (4-aminodifenilamina) e seus sais	20.11	21.81	\\r
29215139		0	Outros	20.11	21.81	\\r
29215190		0	Outros	20.11	21.81	\\r
29215911		0	3,3'-Diclorobenzidina	20.11	21.81	\\r
29215919		0	Outros	20.11	21.81	\\r
29215921		0	4,4'-Diaminodifenilmetano	20.11	26.72	\\r
29215929		0	Outros	20.11	21.81	\\r
29215931		0	4,4'-Diaminodifenilamina e seus sais	20.11	26.72	\\r
29215932		0	Ácido 4,4'-diaminodifenilamino-2-sulfônico e seus sais	20.11	21.81	\\r
29215939		0	Outros	20.11	21.81	\\r
29215990		0	Outros	20.11	21.81	\\r
29221100		0	--Monoetanolamina e seus sais	20.11	27.60	\\r
29221200		0	--Dietanolamina e seus sais	20.11	27.60	\\r
29221310		0	Trietanolamina	20.11	27.60	\\r
29221320		0	Sais	20.11	27.60	\\r
29221400		0	--Dextropropoxifeno (DCI) e seus sais	20.11	21.81	\\r
29221911		0	Monoisopropanolamina	20.11	21.81	\\r
29221912		0	2,4-Diclorofenoxiacetato de triisopropanolamina	20.11	27.60	\\r
29221913		0	2,4-Diclorofenoxiacetato de dimetilpropanolamina	20.11	27.60	\\r
29221919		0	Outros	20.11	21.81	\\r
29221921		0	Citrato	20.11	27.60	\\r
29221929		0	Outros	20.11	21.81	\\r
29221931		0	Cloridrato	20.11	21.81	\\r
29221939		0	Outros	20.11	21.81	\\r
29221941		0	Cloridrato	20.11	21.81	\\r
29221949		0	Outros	20.11	21.81	\\r
29221951		0	N,N-Dimetil-2-aminoetanol e seus sais protonados	20.11	21.81	\\r
29221952		0	N,N-Dietil-2-aminoetanol e seus sais protonados	20.11	21.81	\\r
29221959		0	Outros	20.11	21.81	\\r
29221961		0	Metildietanolamina e seus sais	20.11	21.81	\\r
29221962		0	Etildietanolamina e seus sais	20.11	21.81	\\r
29221969		0	Outros	20.11	21.81	\\r
29221991		0	1-p-Nitrofenil-2-amino-1,3-propanodiol	20.11	21.81	\\r
29221992		0	Fumarato de benciclano	20.11	21.81	\\r
29221993		0	Clembuterol (clenbuterol) e seu cloridrato	20.11	27.60	\\r
29221994		0	Mirtecaína	20.11	27.60	\\r
29221995		0	Tamoxifen e seu citrato	20.11	27.60	\\r
29221999		0	Outros	20.11	21.81	\\r
29222100		0	--Ácidos aminonaftolsulfônicos e seus sais	20.11	21.81	\\r
29222911		0	p-Aminofenol	20.11	21.81	\\r
29222919		0	Outros	20.11	21.81	\\r
29222920		0	Nitroanisidinas e seus sais	20.11	21.81	\\r
29222990		0	Outros	20.11	21.81	\\r
29223111		0	Anfepramona	20.11	27.60	\\r
29223112		0	Sais	20.11	21.81	\\r
29223120		0	Metadona e seus sais	20.11	21.81	\\r
29223130		0	Normetadona e seus sais	20.11	21.81	\\r
29223910		0	Aminoantraquinonas e seus sais	20.11	21.81	\\r
29223921		0	Cloridrato	20.11	26.72	\\r
29223929		0	Outros	20.11	21.81	\\r
29223990		0	Outros	20.11	21.81	\\r
29224110		0	Lisina	20.11	26.72	\\r
29224190		0	Outros	20.11	26.72	\\r
29224210		0	Ácido glutâmico	20.11	21.81	\\r
29224220		0	Sais	20.11	24.86	\\r
29224300		0	--Ácido antranílico e seus sais	20.11	21.81	\\r
29224410		0	Tilidina	20.11	21.81	\\r
29224420		0	Sais	20.11	21.81	\\r
29224910		0	Glicina e seus sais	20.11	21.81	\\r
29224920		0	Ácido etilenodiaminotetracético (EDTA) e seus sais	20.11	26.72	\\r
29224931		0	Ácido iminodiacético	20.11	21.81	\\r
29224932		0	Sais	20.11	21.81	\\r
29224940		0	Ácido dietilenotriaminopentacético e seus sais	20.11	26.72	\\r
29224951		0	alfa-Fenilglicina	20.11	21.81	\\r
29224952		0	Cloridrato de cloreto de D(-)alfa-aminobenzenoacetila	20.11	26.72	\\r
29224959		0	Outros	20.11	21.81	\\r
29224961		0	Diclofenaco de sódio	20.11	27.60	\\r
29224962		0	Diclofenaco de potássio	20.11	27.60	\\r
29224963		0	Diclofenaco de dietilamônio	20.11	27.60	\\r
29224964		0	Diclofenaco	20.11	27.60	\\r
29224969		0	Outros	20.11	21.81	\\r
29224990		0	Outros	20.11	21.81	\\r
29225011		0	Cloridrato	20.11	21.81	\\r
29225019		0	Outros	20.11	21.81	\\r
29225021		0	Cloridrato	20.11	21.81	\\r
29225029		0	Outros	20.11	21.81	\\r
29225031		0	Levodopa	20.11	27.60	\\r
29225032		0	Metildopa	20.11	21.81	\\r
29225039		0	Outros	20.11	21.81	\\r
29225041		0	Tartarato	20.11	21.81	\\r
29225049		0	Outros	20.11	21.81	\\r
29225050		0	Propranolol e seus sais	20.11	26.72	\\r
29225091		0	N-(1-(Metoxicarbonil)propen-2-il)-alfa-amino-p-hidroxifenilacetato de sódio (NAPOH)	20.11	21.81	\\r
29225099		0	Outros	20.11	21.81	\\r
29231000		0	-Colina e seus sais	20.11	21.81	\\r
29232000		0	-Lecitinas e outros fosfoaminolipídios	20.11	26.72	\\r
29239010		0	Betaína e seus sais	20.11	26.72	\\r
29239020		0	Derivados da colina	20.11	21.81	\\r
29239030		0	Cloreto de 3-cloro-2-hidroxipropiltrimetilamônio	20.11	26.72	\\r
29239040		0	Halogenetos de alquil-trimetilamônio, com grupo alquila de C6 a C22	20.11	26.72	\\r
29239050		0	Halogenetos de dialquil-dimetilamônio ou de alquil-benzil-dimetilamônio, com grupo alquila de C6 a C22	20.11	26.72	\\r
29239060		0	Halogenetos de pentametil-alquil-propilenodiamônio, com grupo alquila de C6 a C22	20.11	26.72	\\r
29239090		0	Outros	20.11	21.81	\\r
29241100		0	--Meprobamato (DCI)	20.11	21.81	\\r
29241210		0	Fluoroacetamida	20.11	21.81	\\r
29241220		0	Fosfamidona	20.11	21.81	\\r
29241230		0	Monocrotofós	20.11	27.60	\\r
29241911		0	2-Cloro-N-metilacetoacetamida	20.11	21.81	\\r
29241919		0	Outros	20.11	21.81	\\r
29241921		0	N-Metilformamida	20.11	21.81	\\r
29241922		0	N,N-Dimetilformamida	20.11	27.60	\\r
29241929		0	Outras	20.11	21.81	\\r
29241931		0	Acrilamida	20.11	21.81	\\r
29241932		0	Metacrilamidas	20.11	21.81	\\r
29241939		0	Outros	20.11	21.81	\\r
29241942		0	Dicrotofós	20.11	27.60	\\r
29241949		0	Outros	20.11	21.81	\\r
29241991		0	N,N'-Dimetilureia	20.11	21.81	\\r
29241992		0	Carisoprodol	20.11	21.81	\\r
29241993		0	N,N'-(Diestearoil)etilenodiamina (N,N'-etilen-bis-estearamida)	20.11	27.60	\\r
29241994		0	Dietanolamidas de ácidos graxos de C12 a C18	20.11	27.60	\\r
29241999		0	Outros	20.11	21.81	\\r
29242111		0	Hexanitrocarbanilidas	20.11	21.81	\\r
29242119		0	Outros	20.11	21.81	\\r
29242120		0	Diuron	20.11	27.60	\\r
29242190		0	Outros	8.11	9.81	\\r
29242300		0	--Ácido 2-acetamidobenzóico (ácido N-acetilantranílico) e seus sais	20.11	21.81	\\r
29242400		0	--Etinamato (DCI)	20.11	21.81	\\r
29242911		0	Acetanilida	20.11	26.72	\\r
29242912		0	4-Aminoacetanilida	20.11	21.81	\\r
29242913		0	Acetaminofen (paracetamol)	20.11	27.60	\\r
29242914		0	Lidocaína e seu cloridrato	20.11	27.60	\\r
40070020		0	Cordas	31.45	38.94	\\r
29242915		0	2,5-Dimetoxiacetanilida	20.11	27.60	\\r
29242919		0	Outros	20.11	21.81	\\r
29242920		0	Anilidas dos ácidos hidroxinaftóicos e seus derivados. sais destes produtos	20.11	21.81	\\r
29242931		0	Carbaril	20.11	21.81	\\r
29242932		0	Propoxur	20.11	21.81	\\r
29242939		0	Outros	20.11	21.81	\\r
29242941		0	Teclozam	20.11	21.81	\\r
29242942		0	Alaclor	20.11	27.60	\\r
29242943		0	Atenolol. metolaclor	20.11	21.81	\\r
29242944		0	Ácido ioxáglico	20.11	21.81	\\r
29242945		0	Iodamida	20.11	21.81	\\r
29242946		0	Cloreto do ácido p-acetamidobenzenossulfônico	20.11	27.60	\\r
29242947		0	Ácido ioxitalâmico	20.11	21.81	\\r
29242949		0	Outros	20.11	21.81	\\r
29242951		0	Bromoprida	20.11	27.60	\\r
29242952		0	Metoclopramida e seu cloridrato	20.11	27.60	\\r
29242959		0	Outros	20.11	21.81	\\r
29242961		0	Propanil	20.11	27.60	\\r
29242962		0	Flutamida	20.11	27.60	\\r
29242963		0	Prilocaína e seu cloridrato	20.11	27.60	\\r
29242964		0	Iobitridol	20.11	21.81	\\r
29242969		0	Outros	20.11	21.81	\\r
29242991		0	Aspartame	20.11	21.81	\\r
29242992		0	Diflubenzuron	20.11	21.81	\\r
29242993		0	Metalaxil	20.11	21.81	\\r
29242994		0	Triflumuron	20.11	21.81	\\r
29242995		0	Buclosamida	20.11	21.81	\\r
29242996		0	Benzoato de denatônio	20.11	27.60	\\r
29242999		0	Outros	8.11	9.81	\\r
29251100		0	--Sacarina e seus sais	20.11	27.60	\\r
29251200		0	--Glutetimida (DCI)	20.11	21.81	\\r
29251910		0	Talidomida	20.11	27.60	\\r
29251990		0	Outros	20.11	21.81	\\r
29252100		0	--Clordimeforme (ISO)	20.11	21.81	\\r
29252911		0	Aspartato de L-arginina	20.11	21.81	\\r
29252919		0	Outros	20.11	21.81	\\r
29252921		0	Guanidina	20.11	21.81	\\r
29252922		0	N,N'-Difenilguanidina	20.11	21.81	\\r
29252923		0	Clorexidina e seus sais	20.11	26.72	\\r
29252929		0	Outros	20.11	21.81	\\r
29252930		0	Amitraz	20.11	26.72	\\r
29252940		0	Isetionato de pentamidina	20.11	27.60	\\r
29252950		0	N-(3,7-Dimetil-7-hidroxioctilideno)antranilato de metila	20.11	26.72	\\r
29252990		0	Outros	20.11	21.81	\\r
29261000		0	-Acrilonitrila	20.11	26.72	\\r
29262000		0	-1-Cianoguanidina (diciandiamida)	20.11	21.81	\\r
29263011		0	Fenproporex	20.11	27.60	\\r
29263012		0	Sais	20.11	21.81	\\r
29263020		0	Intermediário da metadona	20.11	21.81	\\r
29269011		0	Verapamil	20.11	21.81	\\r
29269012		0	Cloridrato	20.11	21.81	\\r
29269019		0	Outros	20.11	21.81	\\r
29269021		0	Álcool alfa-ciano-3-fenoxibenzílico	20.11	21.81	\\r
29269022		0	Ciflutrin	20.11	21.81	\\r
29269023		0	Cipermetrina	20.11	27.60	\\r
29269024		0	Deltametrina	20.11	21.81	\\r
29269025		0	Fenvalerato	20.11	21.81	\\r
29269026		0	Cialotrin (cyhalothrin)	20.11	21.81	\\r
29269029		0	Outros	20.11	21.81	\\r
29269030		0	Sais de intermediário da metadona	20.11	21.81	\\r
29269091		0	Adiponitrila (1,4-dicianobutano)	20.11	26.72	\\r
29269092		0	Cianidrina de acetona (acetona cianidrina)	20.11	21.81	\\r
29269093		0	Closantel	20.11	27.60	\\r
29269095		0	Clorotalonil	20.11	21.81	\\r
29269096		0	Cianoacrilatos de etila	20.11	26.72	\\r
29269099		0	Outros	20.11	21.81	\\r
29270010		0	Compostos diazóicos	20.11	21.81	\\r
29270021		0	Azodicarbonamida	20.11	27.60	\\r
29270029		0	Outros	20.11	21.81	\\r
29270030		0	Compostos azóxicos	20.11	21.81	\\r
29280011		0	Metiletilacetoxima	20.11	21.81	\\r
29280019		0	Outros	20.11	21.81	\\r
29280020		0	Carbidopa	20.11	21.81	\\r
29280030		0	2-Hidrazinoetanol	20.11	21.81	\\r
29280041		0	Fenilidrazina	20.11	26.72	\\r
29280042		0	Derivados	20.11	26.72	\\r
29280090		0	Outros	20.11	21.81	\\r
29291010		0	Diisocianato de difenilmetano	20.11	27.60	\\r
29291021		0	Mistura de isômeros	20.11	27.60	\\r
29291029		0	Outros	20.11	27.60	\\r
29291030		0	Isocianato de 3,4-diclorofenila	20.11	27.60	\\r
29291090		0	Outros	20.11	21.81	\\r
29299011		0	De sódio	20.11	26.72	\\r
29299012		0	De cálcio	20.11	26.72	\\r
29299019		0	Outros	20.11	21.81	\\r
29299021		0	Dialogenetos de N,N-dialquilfosforoamidatos, com grupos alquila de C1 a C3	20.11	21.81	\\r
29299022		0	N,N-Dialquilfosforoamidatos de dialquila, com grupos alquila de C1 a C3	20.11	21.81	\\r
29299029		0	Outros	20.11	21.81	\\r
29299090		0	Outros	20.11	21.81	\\r
29302011		0	EPTC	20.11	21.81	\\r
29302012		0	Cartap	20.11	21.81	\\r
29302013		0	Tiobencarb (dietiltiocarbamato de S-4-clorobenzila)	20.11	21.81	\\r
29302019		0	Outros	20.11	21.81	\\r
29302021		0	Ziram. dimetilditiocarbamato de sódio	20.11	26.72	\\r
29302022		0	Dietilditiocarbamato de zinco	20.11	26.72	\\r
29302023		0	Dibutilditiocarbamato de zinco	20.11	26.72	\\r
29302024		0	Metam sódio	20.11	27.60	\\r
29302029		0	Outros	20.11	21.81	\\r
29303011		0	De tetrametiltiourama	20.11	26.72	\\r
29303012		0	Sulfiram	20.11	26.72	\\r
29303019		0	Outros	20.11	21.81	\\r
29303021		0	Thiram	20.11	26.72	\\r
29303022		0	Dissulfiram	20.11	21.81	\\r
29303029		0	Outros	20.11	21.81	\\r
29303090		0	Outros	20.11	21.81	\\r
29304010		0	DL-Metionina, com teor de cinzas sulfatadas superior a 0,1%, em peso	20.11	21.81	\\r
29304090		0	Outra	20.11	21.81	\\r
29305010		0	Captafol	20.11	21.81	\\r
29305020		0	Metamidofós	20.11	26.72	\\r
29309011		0	Ácido tioglicólico e seus sais	20.11	21.81	\\r
29309012		0	Cisteína	20.11	21.81	\\r
29309013		0	N,N-Dialquil-2-aminoetanotiol, com grupos alquila de C1 a C3, e seus sais protonados	20.11	21.81	\\r
29309019		0	Outros	20.11	21.81	\\r
29309021		0	Tioureia	20.11	21.81	\\r
29309022		0	Tiofanato-Metila	20.11	21.81	\\r
29309023		0	4-Metil-3-tiosemicarbazida	20.11	21.81	\\r
29309029		0	Outros	20.11	21.81	\\r
29309031		0	2-(Etiltio)etanol, com uma concentração superior ou igual a 98%, em peso	20.11	21.81	\\r
29309032		0	3-(Metiltio)propanal. aldicarb	20.11	21.81	\\r
29309033		0	Clorotioformiato de S-etila	20.11	21.81	\\r
29309034		0	Ácido 2-hidroxi-4-(metiltio)butanóico e seu sal cálcico	20.11	21.81	\\r
29309035		0	Metomil	20.11	21.81	\\r
29309036		0	Carbocisteína	20.11	26.72	\\r
29309037		0	4-Sulfatoetilsulfonil-2,5-dimetoxianilina. 4-sulfatoetilsulfonil-2-metoxi-5-metilanilina. 4-sulfatoetilsulfonil-2-metoxianilina	20.11	26.72	\\r
29309038		0	Tiodiglicol (DCI) (sulfeto de bis(2-hidroxietila))	20.11	21.81	\\r
29309039		0	Outros	8.11	9.81	\\r
29309041		0	Fosforotioato de O,O-dietila e de S-[2-(dietilamino)etila] e seus sais alquilados ou protonados	20.11	21.81	\\r
29309042		0	Fosforotioato de O,O-dimetila e de S-[2-(1-metilcarbamoiletiltio)-etila)] (vamidotion)	20.11	21.81	\\r
29309043		0	Fosforotioato de O-(4-bromo-2-clorofenila) O-etila e de S-propila (profenofós)	20.11	21.81	\\r
29309049		0	Outros	20.11	21.81	\\r
29309051		0	Forato	20.11	21.81	\\r
29309052		0	Dissulfoton	20.11	26.72	\\r
29309053		0	Etion	20.11	21.81	\\r
29309054		0	Dimetoato	20.11	21.81	\\r
29309057		0	Fosforoditioato de O,O-dimetila e de S-[2-(etiltio)etila] (tiometon)	20.11	27.60	\\r
29309059		0	Outros	20.11	21.81	\\r
29309061		0	Acefato	20.11	26.72	\\r
29309069		0	Outros	20.11	21.81	\\r
29309071		0	Tiaprida	20.11	21.81	\\r
29309072		0	Bicalutamida	20.11	27.60	\\r
29309079		0	Outras	20.11	21.81	\\r
29309081		0	Sulfeto de 2-cloroetila e de clorometila	20.11	21.81	\\r
29309082		0	Sulfeto de bis(2-cloroetila)	20.11	21.81	\\r
29309083		0	Bis(2-cloroetiltio)metano	20.11	21.81	\\r
29309084		0	1,2-Bis(2-cloroetiltio)etano	20.11	21.81	\\r
29309085		0	1,3-Bis(2-cloroetiltio)-n-propano	20.11	21.81	\\r
29309086		0	1,4-Bis(2-cloroetiltio)-n-butano	20.11	21.81	\\r
29309087		0	1,5-Bis(2-cloroetiltio)-n-pentano	20.11	21.81	\\r
29309088		0	Óxido de bis(2-cloroetiltiometila)	20.11	21.81	\\r
29309089		0	Óxido de bis(2-cloroetiltioetila)	20.11	21.81	\\r
29309091		0	Captan	20.11	21.81	\\r
29309093		0	Metileno-bis-tiocianato	20.11	26.72	\\r
29309094		0	Dimetiltiofosforamida	20.11	21.81	\\r
29309095		0	Etilditiofosfonato de O-etila e de S-fenila (fonofós)	20.11	21.81	\\r
29309096		0	Hidrogênio alquil(de C1 a C3)fosfonotioatos de [S-2-(dialquil(de C1 a C3)amino)etila], seus ésteres de O-alquila (de até C10, incluindo os cicloalquila). sais alquilados ou protonados destes produtos	20.11	26.72	\\r
29309097		0	Outros compostos que contenham um átomo de fósforo ligado a um grupo alquila (de C1 a C3), sem outros átomos de carbono	20.11	26.72	\\r
29309098		0	Ditiocarbonatos (xantatos e xantogenatos)	20.11	26.72	\\r
29309099		0	Outros	20.11	21.81	\\r
29311000		0	-Chumbo tetrametila e chumbo tetraetileno	20.11	21.81	\\r
29312000		0	-Compostos de tributilestanho	20.11	21.81	\\r
29319021		0	Bis(trimetilsilil)ureia	20.11	21.81	\\r
29319029		0	Outros	20.11	21.81	\\r
29319031		0	Etefon. difenilfosfonato(4,4'-bis((dimetoxifosfinil)metil)difenila)	20.11	21.81	\\r
29319032		0	Glifosato e seu sal de monoisopropilamina	20.11	26.72	\\r
29319033		0	Etidronato dissódico	20.11	27.60	\\r
29319034		0	Triclorfon	20.11	26.72	\\r
29319035		0	Glufosinato de amônio	20.11	21.81	\\r
29319036		0	Hidrogenofosfonato de bis(2-etilexilo)	20.11	21.81	\\r
29319037		0	Ácido fosfonometiliminodiacético. ácido trimetilfosfônico	20.11	26.72	\\r
29319038		0	Ácido clodrônico e seu sal dissódico. fotemustina	20.11	21.81	\\r
29319041		0	Acetato de trifenilestanho	20.11	21.81	\\r
29319042		0	Tetraoctilestanho	20.11	21.81	\\r
29319043		0	Ciexatin	20.11	21.81	\\r
29319044		0	Hidróxido de trifenilestanho	20.11	21.81	\\r
29319045		0	Óxido de fembutatin (óxido de fenbutatin)	20.11	26.72	\\r
29319046		0	Sais de dimetil-estanho, de dibutil-estanho e de dioctil-estanho, dos ácidos carboxílicos ou tioglicólicos e de seus ésteres	20.11	26.72	\\r
29319049		0	Outros	20.11	21.81	\\r
29319051		0	Ácido metilarsínico e seus sais	20.11	21.81	\\r
29319052		0	2-Clorovinil-dicloroarsina	20.11	21.81	\\r
29319053		0	Bis(2-clorovinil)cloroarsina	20.11	21.81	\\r
29319054		0	Tris(2-clorovinil)arsina	20.11	21.81	\\r
29319059		0	Outros	20.11	21.81	\\r
29333383		0	Pipradrol	20.11	21.81	\\r
29319061		0	Tricloreto de etilalumínio (sesquicloreto de etilalumínio)	20.11	26.72	\\r
29319062		0	Cloreto de dietilalumínio	20.11	26.72	\\r
29319069		0	Outros	20.11	21.81	\\r
29319071		0	Alquil(de C1 a C3)fosfonofluoridatos de O-alquila (de até C10, incluindo os cicloalquila)	20.11	26.72	\\r
29319072		0	Metilfosfonocloridato de O-isopropila	20.11	26.72	\\r
29319073		0	Metilfosfonocloridato de O-pinacolila	20.11	26.72	\\r
29319074		0	Difluoreto de alquilfosfonila, com grupo alquila de C1 a C3	20.11	26.72	\\r
29319075		0	Hidrogênio alquil(de C1 a C3)fosfonitos de [O-2-(dialquil(de C1 a C3)amino)etila], seus ésteres de O-alquila (de até C10, incluindo os cicloalquila). sais alquilados ou protonados destes produtos	20.11	26.72	\\r
29319076		0	Outros compostos que contenham um átomo de fósforo ligado a um grupo alquila (de C1 a C3), sem outros átomos de carbono	20.11	26.72	\\r
29319077		0	N,N-Dialquil(de C1 a C3)fosforoamidocianidatos de O-alquila (de até C10, incluindo os cicloalquila)	20.11	26.72	\\r
29319079		0	Outros	20.11	26.72	\\r
29319090		0	Outros	20.11	21.81	\\r
29321100		0	--Tetraidrofurano	20.11	21.81	\\r
29321200		0	--2-Furaldeído (furfural)	20.11	26.72	\\r
29321310		0	Álcool furfurílico	20.11	26.72	\\r
29321320		0	Álcool tetraidrofurfurílico	20.11	21.81	\\r
29321910		0	Ranitidina e seus sais	20.11	21.81	\\r
29321920		0	Nafronil	20.11	21.81	\\r
29321930		0	Nitrovin	20.11	27.60	\\r
29321940		0	Bioresmetrina	20.11	26.72	\\r
29321950		0	Diacetato de 5-nitrofurfurilideno (NFDA)	20.11	26.72	\\r
29321990		0	Outros	20.11	21.81	\\r
29322000		0	-Lactonas	20.11	21.81	\\r
29329100		0	--Isosafrol	20.11	21.81	\\r
29329200		0	--1-(1,3-Benzodioxol-5-il)propan-2-ona	20.11	21.81	\\r
29329300		0	--Piperonal	20.11	26.72	\\r
29329400		0	--Safrol	20.11	21.81	\\r
29329500		0	--Tetraidrocanabinóis (todos os isômeros)	20.11	21.81	\\r
29329911		0	Eucaliptol	20.11	26.72	\\r
29329912		0	Quercetina	20.11	27.60	\\r
29329913		0	Dinitrato de isossorbida	20.11	21.81	\\r
29329914		0	Carbofurano	20.11	21.81	\\r
29329991		0	Cloridrato de amiodarona	20.11	27.60	\\r
29329992		0	1,3,4,6,7,8-Hexaidro-4,6,6,7,8,8-hexametilciclopenta-gama-2-benzopirano	20.11	26.72	\\r
29329993		0	Dibenzilideno-sorbitol	20.11	27.60	\\r
29329994		0	Carbosulfan ((dibutilaminotio)metilcarbamato de 2,3-diidro-2,2-dimetilbenzofuran-7-ila)	20.11	21.81	\\r
29329999		0	Outros	20.11	21.81	\\r
29331111		0	Dipirona	20.11	21.81	\\r
29331112		0	Magnopirol (“dipirona magnésica”)	20.11	21.81	\\r
29331119		0	Outros	20.11	21.81	\\r
29331120		0	Metileno-bis(4-metilamino-1-fenil-2,3-dimetil)pirazolona	20.11	21.81	\\r
29331190		0	Outros	20.11	21.81	\\r
29331911		0	Fenilbutazona cálcica	20.11	21.81	\\r
29331919		0	Outros	20.11	21.81	\\r
29331990		0	Outros	20.11	21.81	\\r
29332110		0	Iprodiona	20.11	21.81	\\r
29332121		0	Fenitoína e seu sal sódico	20.11	27.60	\\r
29332129		0	Outros	20.11	21.81	\\r
29332190		0	Outros	20.11	21.81	\\r
29332911		0	2-Metil-5-nitroimidazol	20.11	21.81	\\r
29332912		0	Metronidazol e seus sais	20.11	27.60	\\r
29332913		0	Tinidazol	20.11	27.60	\\r
29332919		0	Outros	20.11	21.81	\\r
29332921		0	Econazol e seu nitrato	20.11	27.60	\\r
29332922		0	Nitrato de miconazol	20.11	27.60	\\r
29332923		0	Cloridrato de clonidina	20.11	21.81	\\r
29332924		0	Nitrato de isoconazol	20.11	21.81	\\r
29332925		0	Clotrimazol	20.11	21.81	\\r
29332929		0	Outros	20.11	21.81	\\r
29332930		0	Cimetidina e seus sais	20.11	21.81	\\r
29332940		0	4-Metil-5-hidroximetilimidazol e seus sais	20.11	26.72	\\r
29332991		0	Imidazol	20.11	21.81	\\r
29332992		0	Histidina e seus sais	20.11	21.81	\\r
29332993		0	Ondansetron e seus sais	20.11	21.81	\\r
29332994		0	1-Hidroxietil-2-undecanoilimidazolina	20.11	26.72	\\r
29332995		0	1-Hidroxietil-2-(8-heptadecenoil)imidazolina	20.11	26.72	\\r
29332999		0	Outros	20.11	21.81	\\r
29333110		0	Piridina	20.11	21.81	\\r
29333120		0	Sais	20.11	21.81	\\r
29333200		0	--Piperidina e seus sais	20.11	21.81	\\r
29333311		0	Alfentanilo	20.11	21.81	\\r
29333312		0	Anileridina	20.11	21.81	\\r
29333319		0	Outros	20.11	21.81	\\r
29333321		0	Bezitramida	20.11	21.81	\\r
29333322		0	Bromazepam	20.11	26.72	\\r
29333329		0	Outros	20.11	21.81	\\r
29333330		0	Cetobemidona e seus sais	20.11	21.81	\\r
29333341		0	Difenoxilato	20.11	21.81	\\r
29333342		0	Cloridrato de difenoxilato	20.11	27.60	\\r
29333349		0	Outros	20.11	21.81	\\r
29333351		0	Difenoxina	20.11	21.81	\\r
29333352		0	Dipipanona	20.11	21.81	\\r
29333359		0	Outros	20.11	21.81	\\r
29333361		0	Fenciclidina	20.11	21.81	\\r
29333362		0	Fenoperidina	20.11	21.81	\\r
29333363		0	Fentanilo	20.11	21.81	\\r
29333369		0	Outros	20.11	21.81	\\r
29333371		0	Metilfenidato	20.11	21.81	\\r
29333372		0	Pentazocina	20.11	21.81	\\r
29333379		0	Outros	20.11	21.81	\\r
29333381		0	Petidina	20.11	21.81	\\r
29333382		0	Intermediário A da petidina	20.11	21.81	\\r
29333384		0	Cloridrato de petidina	20.11	27.60	\\r
29333389		0	Outros	20.11	21.81	\\r
29333391		0	Piritramida	20.11	21.81	\\r
29333392		0	Propiram	20.11	21.81	\\r
29333393		0	Trimeperidina	20.11	21.81	\\r
29333399		0	Outros	20.11	21.81	\\r
29333912		0	Droperidol	20.11	26.72	\\r
29333913		0	Ácido niflúmico	20.11	21.81	\\r
29333914		0	Haloxifop (ácido (RS)-2-(4-(3-cloro-5-trifluorometil-2-piridiloxi)fenoxi)propiônico)	20.11	21.81	\\r
29333915		0	Haloperidol	20.11	21.81	\\r
29333919		0	Outros	20.11	21.81	\\r
29333921		0	Picloram	20.11	21.81	\\r
29333922		0	Clorpirifós	20.11	21.81	\\r
29333923		0	Malato ácido de cleboprida (malato de cleboprida)	20.11	27.60	\\r
29333924		0	Cloridrato de loperamida	20.11	27.60	\\r
29333925		0	Ácido 2-(2-metil-3-cloroanilino)nicotínico e seu sal de lisina	20.11	27.60	\\r
29333929		0	Outros	8.11	9.81	\\r
29333931		0	Terfenadina	20.11	27.60	\\r
29333932		0	Biperideno e seus sais	20.11	21.81	\\r
29333933		0	Ácido isonicotínico	20.11	21.81	\\r
29333934		0	5-Etil-2,3-dicarboxipiridina (5-EPDC)	20.11	21.81	\\r
29333935		0	Imazetapir (ácido (RS)-5-etil-2-(4-isopropil-4-metil-5-oxo-2-imidazolin-2-il)nicotínico)	20.11	27.60	\\r
29333936		0	Quinuclidin-3-ol	20.11	21.81	\\r
29333939		0	Outros	20.11	21.81	\\r
29333943		0	Nifedipina	20.11	27.60	\\r
29333944		0	Nitrendipina	20.11	27.60	\\r
29333945		0	Maleato de pirilamina	20.11	27.60	\\r
29333946		0	Omeprazol	20.11	21.81	\\r
29333947		0	Benzilato de 3-quinuclidinila	20.11	21.81	\\r
29333948		0	Nimodipina	20.11	26.72	\\r
29333949		0	Outros	20.11	21.81	\\r
29333981		0	Cloridrato de benzetimida	20.11	27.60	\\r
29333982		0	Cloridrato de mepivacaína	20.11	27.60	\\r
29333983		0	Cloridrato de bupivacaína	20.11	27.60	\\r
29333984		0	Dicloreto de paraquat	20.11	26.72	\\r
29333989		0	Outros	20.11	21.81	\\r
29333991		0	Cloridrato de fenazopiridina	20.11	21.81	\\r
29333992		0	Isoniazida	20.11	21.81	\\r
29333993		0	3-Cianopiridina	20.11	21.81	\\r
29333994		0	4,4'-Bipiridina	20.11	21.81	\\r
29333999		0	Outros	20.11	21.81	\\r
29334110		0	Levorfanol	20.11	21.81	\\r
29334120		0	Sais	20.11	21.81	\\r
29334911		0	Ácido 2,3-quinolinodicarboxílico	20.11	21.81	\\r
29334912		0	Rosoxacina	20.11	21.81	\\r
29334913		0	Imazaquin	20.11	27.60	\\r
29334919		0	Outros	20.11	21.81	\\r
29334920		0	Oxaminiquina	20.11	21.81	\\r
29334930		0	Broxiquinolina	20.11	21.81	\\r
29334940		0	Ésteres do levorfanol	20.11	21.81	\\r
29334990		0	Outros	8.11	9.81	\\r
29335200		0	--Malonilureia (ácido barbitúrico) e seus sais	20.11	21.81	\\r
29335311		0	Alobarbital e seus sais	20.11	21.81	\\r
29335312		0	Amobarbital e seus sais	20.11	21.81	\\r
29335321		0	Barbital e seus sais	20.11	21.81	\\r
29335322		0	Butalbital e seus sais	20.11	21.81	\\r
29335323		0	Butobarbital e seus sais	20.11	21.81	\\r
29335330		0	Ciclobarbital e seus sais	20.11	21.81	\\r
29335340		0	Fenobarbital e seus sais	20.11	27.60	\\r
29335350		0	Metilfenobarbital e seus sais	20.11	21.81	\\r
29335360		0	Pentobarbital e seus sais	20.11	21.81	\\r
29335371		0	Secbutabarbital e seus sais	20.11	21.81	\\r
29335372		0	Secobarbital e seus sais	20.11	21.81	\\r
29335380		0	Venilbital e seus sais	20.11	21.81	\\r
29335400		0	--Outros derivados de malonilureia (ácido barbitúrico). sais destes produtos	20.11	21.81	\\r
29335510		0	Loprazolam e seus sais	20.11	21.81	\\r
29335520		0	Mecloqualona e seus sais	20.11	21.81	\\r
29335530		0	Metaqualona e seus sais	20.11	21.81	\\r
29335540		0	Zipeprol e seus sais	20.11	21.81	\\r
29335911		0	Oxatomida	20.11	21.81	\\r
29335912		0	Praziquantel	20.11	27.60	\\r
29335913		0	Norfloxacina e seu nicotinato	20.11	21.81	\\r
29335914		0	Flunarizina e seu dicloridrato	20.11	21.81	\\r
29335915		0	Enrofloxacina. sais de piperazina	20.11	26.72	\\r
29335916		0	Cloridrato de buspirona	20.11	21.81	\\r
29335919		0	Outros	8.11	9.81	\\r
29335921		0	Bromacil	20.11	27.60	\\r
29335922		0	Terbacil	20.11	21.81	\\r
29335923		0	Fluorouracil	20.11	21.81	\\r
29335929		0	Outros	20.11	21.81	\\r
29335931		0	Propiltiouracil	20.11	27.60	\\r
29335932		0	Diazinon	20.11	21.81	\\r
29335933		0	Pirazofós	20.11	21.81	\\r
29335934		0	Azatioprina	20.11	27.60	\\r
29335935		0	6-Mercaptopurina	20.11	27.60	\\r
29335939		0	Outros	20.11	21.81	\\r
29335941		0	Trimetoprima	20.11	27.60	\\r
29335942		0	Aciclovir	20.11	21.81	\\r
29335943		0	Tosilatos de dipiridamol	20.11	21.81	\\r
29335944		0	Nicarbazina	20.11	27.60	\\r
29335945		0	Bissulfito de menadiona dimetilpirimidinol	20.11	24.86	\\r
29335949		0	Outros	20.11	21.81	\\r
29335991		0	Minoxidil	20.11	21.81	\\r
29335992		0	2-Aminopirimidina	20.11	27.60	\\r
29335999		0	Outros	8.11	9.81	\\r
29336100		0	--Melamina	20.11	21.81	\\r
29336911		0	2,4,6-Triclorotriazina (cloreto cianúrico)	20.11	21.81	\\r
29336912		0	Mercaptodiclorotriazina	20.11	21.81	\\r
29336913		0	Atrazina	20.11	26.72	\\r
29336914		0	Simazina	20.11	26.72	\\r
29336915		0	Cianazina	20.11	21.81	\\r
29336916		0	Anilazina	20.11	21.81	\\r
29336919		0	Outros	20.11	21.81	\\r
29336921		0	N,N,N-Triidroxietilexaidrotriazina	20.11	27.60	\\r
29336922		0	Hexazinona	20.11	21.81	\\r
29336923		0	Metribuzim	20.11	21.81	\\r
29336929		0	Outros	20.11	21.81	\\r
29336991		0	Ametrina	20.11	27.60	\\r
29336992		0	Metenamina e seus sais	20.11	27.60	\\r
29336999		0	Outros	20.11	21.81	\\r
29337100		0	--6-Hexanolactama (epsilon-caprolactama)	20.11	26.72	\\r
29337210		0	Clobazam	20.11	21.81	\\r
29337220		0	Metiprilona	20.11	21.81	\\r
29337910		0	Piracetam	20.11	21.81	\\r
29337990		0	Outras	20.11	21.81	\\r
29339111		0	Alprazolam	20.11	26.72	\\r
29339112		0	Camazepam	20.11	21.81	\\r
29339113		0	Clonazepam	20.11	21.81	\\r
29339114		0	Clorazepato	20.11	21.81	\\r
29339115		0	Clordiazepóxido	20.11	26.72	\\r
29339119		0	Outros	20.11	21.81	\\r
29339121		0	Delorazepam	20.11	21.81	\\r
29339122		0	Diazepam	20.11	27.60	\\r
29339123		0	Estazolam	20.11	21.81	\\r
29339129		0	Outros	20.11	21.81	\\r
29339131		0	Fludiazepam	20.11	21.81	\\r
29339132		0	Flunitrazepam	20.11	21.81	\\r
29339133		0	Flurazepam	20.11	21.81	\\r
29339134		0	Halazepam	20.11	21.81	\\r
29339139		0	Outros	20.11	21.81	\\r
29339141		0	Loflazepato de etila	20.11	21.81	\\r
29339142		0	Lorazepam	20.11	21.81	\\r
29339143		0	Lormetazepam	20.11	21.81	\\r
29339149		0	Outros	20.11	21.81	\\r
29339151		0	Mazindol	20.11	27.60	\\r
29339152		0	Medazepam	20.11	21.81	\\r
29339153		0	Midazolam e seus sais	20.11	27.60	\\r
29339159		0	Outros	20.11	21.81	\\r
29339161		0	Nimetazepam	20.11	21.81	\\r
29339162		0	Nitrazepam	20.11	21.81	\\r
29339163		0	Nordazepam	20.11	21.81	\\r
29339164		0	Oxazepam	20.11	21.81	\\r
29339169		0	Outros	20.11	21.81	\\r
29339171		0	Pinazepam	20.11	21.81	\\r
29339172		0	Pirovalerona	20.11	21.81	\\r
29339173		0	Prazepam	20.11	21.81	\\r
29339179		0	Outros	20.11	21.81	\\r
29339181		0	Temazepam	20.11	21.81	\\r
29339182		0	Tetrazepam	20.11	21.81	\\r
29339183		0	Triazolam	20.11	26.72	\\r
29339189		0	Outros	20.11	21.81	\\r
29339911		0	Pirazinamida	20.11	27.60	\\r
29339912		0	Cloridrato de amilorida	20.11	21.81	\\r
29339913		0	Pindolol	20.11	21.81	\\r
29339919		0	Outros	20.11	21.81	\\r
29339920		0	Cuja estrutura contém um ciclo diazepina (hidrogenado ou não)	20.11	21.81	\\r
29339931		0	Dibenzoazepina (iminoestilbeno)	20.11	21.81	\\r
29339932		0	Carbamazepina	20.11	27.60	\\r
29339933		0	Cloridrato de clomipramina	20.11	21.81	\\r
29339934		0	Molinate (hexaidroazepin-1-carbotioato de S-etila)	20.11	21.81	\\r
29339935		0	Hexametilenoimina	20.11	21.81	\\r
29339939		0	Outros	20.11	21.81	\\r
29339941		0	Clemastina e seus derivados. sais destes produtos	20.11	21.81	\\r
29339942		0	Amisulprida	20.11	21.81	\\r
29339943		0	Sultoprida	20.11	21.81	\\r
29339944		0	Alizaprida	20.11	21.81	\\r
29339945		0	Buflomedil e seus derivados. sais destes produtos	20.11	21.81	\\r
29339946		0	Maleato de enalapril	20.11	27.60	\\r
29339947		0	Ketorolac trometamina	20.11	21.81	\\r
29339949		0	Outros	20.11	21.81	\\r
29339951		0	Benomil	20.11	21.81	\\r
29339952		0	Oxifendazol	20.11	27.60	\\r
29339953		0	Albendazol e seu sulfóxido	20.11	27.60	\\r
29339954		0	Mebendazol	20.11	27.60	\\r
29339955		0	Flubendazol	20.11	27.60	\\r
29339956		0	Fembendazol	20.11	27.60	\\r
29339959		0	Outros	20.11	21.81	\\r
29339961		0	Triadimenol	20.11	21.81	\\r
29339962		0	Triadimefon	20.11	21.81	\\r
29339963		0	Triazofós (fosforotioato de O,O-dietila O-(1-fenil-1H-1,2,4-triazol-3-ila))	20.11	21.81	\\r
29339969		0	Outros	20.11	21.81	\\r
29339991		0	Azinfós etílico	20.11	21.81	\\r
29339992		0	Ácido nalidíxico	20.11	21.81	\\r
29339993		0	Clofazimina	20.11	27.60	\\r
29339995		0	Metilssulfato de amezínio	20.11	27.60	\\r
29339996		0	Hidrazida maléica e seus sais	20.11	26.72	\\r
29339999		0	Outros	20.11	21.81	\\r
29341010		0	Fentiazac	20.11	21.81	\\r
29341020		0	Cloridrato de tiazolidina	20.11	27.60	\\r
29341030		0	Tiabendazol	20.11	21.81	\\r
29341090		0	Outros	20.11	21.81	\\r
29342010		0	2-Mercaptobenzotiazol e seus sais	20.11	27.60	\\r
29342020		0	2,2'-Ditio-bis(benzotiazol) (dissulfeto de benzotiazila)	20.11	27.60	\\r
29342031		0	2-(Terbutilaminotio)benzotiazol (N-terbutil-benzotiazol-sulfenamida)	20.11	27.60	\\r
29342032		0	2-(Cicloexilaminotio)benzotiazol (N-cicloexil-benzotiazol-sulfenamida)	20.11	27.60	\\r
29393020		0	Sais	20.11	21.81	\\r
29342033		0	2-(Dicicloexilaminotio)benzotiazol (N,N-dicicloexil-benzotiazol-sulfenamida)	20.11	27.60	\\r
29342034		0	2-(4-Morfoliniltio)benzotiazol (N-oxidietileno-benzotiazol-sulfenamida)	20.11	27.60	\\r
29342039		0	Outras	20.11	27.60	\\r
29342040		0	2-(Tiocianometiltio)benzotiazol (TCMTB)	20.11	27.60	\\r
29342090		0	Outros	20.11	21.81	\\r
29343010		0	Maleato de metotrimeprazina (maleato de levomepromazina)	20.11	21.81	\\r
29343020		0	Enantato de flufenazina	20.11	26.72	\\r
29343030		0	Prometazina	20.11	21.81	\\r
29343090		0	Outros	20.11	21.81	\\r
29349111		0	Aminorex e seus sais	20.11	21.81	\\r
29349112		0	Brotizolam e seus sais	20.11	21.81	\\r
29349121		0	Clotiazepam	20.11	21.81	\\r
29349122		0	Cloxazolam	20.11	26.72	\\r
29349123		0	Dextromoramida	20.11	21.81	\\r
29349129		0	Outros	20.11	21.81	\\r
29349131		0	Fendimetrazina e seus sais	20.11	21.81	\\r
29349132		0	Fenmetrazina e seus sais	20.11	21.81	\\r
29349133		0	Haloxazolam e seus sais	20.11	21.81	\\r
29349141		0	Ketazolam	20.11	27.60	\\r
29349142		0	Mesocarbo	20.11	21.81	\\r
29349149		0	Outros	20.11	21.81	\\r
29349150		0	Oxazolam e seus sais	20.11	21.81	\\r
29349160		0	Pemolina e seus sais	20.11	21.81	\\r
29349170		0	Sufentanila e seus sais	20.11	21.81	\\r
29349911		0	Morfolina e seus sais	20.11	21.81	\\r
29349912		0	Pirenoxina sódica (catalino sódico)	20.11	21.81	\\r
29349913		0	Nimorazol	20.11	21.81	\\r
29349914		0	Anidrido isatóico (2H-3,1-benzoxazina-2,4-(1H)-diona)	20.11	21.81	\\r
29349915		0	4,4'-Ditiodimorfolina	20.11	27.60	\\r
29349919		0	Outros	20.11	21.81	\\r
29349922		0	Zidovudina (AZT)	8.11	14.72	\\r
29349923		0	Timidina	8.11	8.71	\\r
29349924		0	Furazolidona	20.11	26.72	\\r
29349925		0	Citarabina	20.11	21.81	\\r
29349926		0	Oxadiazona	20.11	21.81	\\r
29349927		0	Estavudina	20.11	26.72	\\r
29349929		0	Outros	8.11	9.81	\\r
29349931		0	Cetoconazol	20.11	27.60	\\r
29349932		0	Cloridrato de prazosina	20.11	21.81	\\r
29349933		0	Talniflumato	20.11	27.60	\\r
29349934		0	Ácidos nucléicos e seus sais	20.11	27.60	\\r
29349935		0	Propiconazol	20.11	27.60	\\r
29349939		0	Outros	8.11	9.81	\\r
29349941		0	Tiofeno	20.11	21.81	\\r
29349942		0	Ácido 6-aminopenicilânico	20.11	22.86	\\r
29349943		0	Ácido 7-aminocefalosporânico	20.11	21.81	\\r
29349944		0	Ácido 7-aminodesacetoxicefalosporânico	20.11	21.81	\\r
29349945		0	Clormezanona	20.11	21.81	\\r
29349946		0	9-(N-Metil-4-piperidinilideno)tioxanteno	20.11	27.60	\\r
29349949		0	Outros	20.11	21.81	\\r
29349951		0	Tebutiuron	20.11	21.81	\\r
29349952		0	Tetramisol	20.11	21.81	\\r
29349953		0	Levamisol e seus sais	20.11	21.81	\\r
29349954		0	Tioconazol	20.11	27.60	\\r
29349959		0	Outros	20.11	21.81	\\r
29349961		0	Cloridrato de tizanidina	20.11	26.72	\\r
29349969		0	Outros	20.11	21.81	\\r
29349991		0	Timolol	20.11	21.81	\\r
29349992		0	Maleato ácido de timolol	20.11	21.81	\\r
29349993		0	Lamivudina	8.11	14.72	\\r
29349999		0	Outros	8.11	9.81	\\r
29350011		0	Sulfadiazina e seu sal sódico	20.11	27.60	\\r
29350012		0	Clortalidona	20.11	21.81	\\r
29350013		0	Sulpirida	20.11	21.81	\\r
29350014		0	Veraliprida	20.11	21.81	\\r
29350015		0	Sulfametazina (4,6-dimetil-2-sulfanilamidopirimidina) e seu sal sódico	20.11	21.81	\\r
29350019		0	Outras	20.11	21.81	\\r
29350021		0	Furosemida	20.11	27.60	\\r
29350022		0	Ftalilsulfatiazol	20.11	27.60	\\r
29350023		0	Piroxicam	20.11	26.72	\\r
29350024		0	Tenoxicam	20.11	26.72	\\r
29350025		0	Sulfametoxazol	20.11	27.60	\\r
29350029		0	Outras	20.11	21.81	\\r
29350091		0	Cloramina-B e cloramina-T	20.11	21.81	\\r
29350092		0	Gliburida	20.11	27.60	\\r
29350093		0	Toluenossulfonamidas	20.11	27.60	\\r
29350094		0	Nimesulida	20.11	27.60	\\r
29350095		0	Bumetanida	20.11	21.81	\\r
29350096		0	Sulfaguanidina	20.11	21.81	\\r
29350097		0	Sulfluramida	20.11	27.60	\\r
29350099		0	Outras	20.11	21.81	\\r
29362111		0	Vitamina A1 álcool (retinol)	20.11	21.81	\\r
29362112		0	Acetato	20.11	21.81	\\r
29362113		0	Palmitato	20.11	21.81	\\r
29362119		0	Outros	20.11	21.81	\\r
29362190		0	Outros	20.11	21.81	\\r
29362210		0	Cloridrato de vitamina B1 (cloridrato de tiamina)	20.11	21.81	\\r
29362220		0	Mononitrato de vitamina B1 (mononitrato de tiamina)	20.11	21.81	\\r
29362290		0	Outros	20.11	21.81	\\r
29362310		0	Vitamina B2 (riboflavina)	20.11	21.81	\\r
29362320		0	5'-Fosfato sódico de vitamina B2 (5'-fosfato sódico de riboflavina)	20.11	21.81	\\r
29362390		0	Outros	20.11	21.81	\\r
29362410		0	D-Pantotenato de cálcio	20.11	21.81	\\r
29362490		0	Outros	20.11	21.81	\\r
29362510		0	Vitamina B6	20.11	21.81	\\r
29362520		0	Cloridrato de piridoxina	20.11	21.81	\\r
29362590		0	Outros	20.11	21.81	\\r
37013090		0	Outros	38.77	46.26	\\r
29362610		0	Vitamina B12 (cianocobalamina)	20.11	27.60	\\r
29362620		0	Cobamamida	20.11	21.81	\\r
29362630		0	Hidroxocobalamina e seus sais	20.11	27.60	\\r
29362690		0	Outros	20.11	21.81	\\r
29362710		0	Vitamina C (ácido L- ou DL-ascórbico)	20.11	21.81	\\r
29362720		0	Ascorbato de sódio	20.11	21.81	\\r
29362790		0	Outros	20.11	21.81	\\r
29362811		0	D- ou DL-alfa-Tocoferol	20.11	20.71	\\r
29362812		0	Acetato de D- ou DL-alfa-tocoferol	20.11	20.71	\\r
29362819		0	Outros	20.11	20.71	\\r
29362890		0	Outros	20.11	21.81	\\r
29362911		0	Vitamina B9 (ácido fólico) e seus sais	20.11	21.81	\\r
29362919		0	Outros	20.11	21.81	\\r
29362921		0	Vitamina D3 (colecalciferol)	20.11	21.81	\\r
29362929		0	Outros	20.11	21.81	\\r
29362931		0	Vitamina H (biotina)	20.11	20.71	\\r
29362939		0	Outros	20.11	21.81	\\r
29362940		0	Vitaminas K e seus derivados	20.11	21.81	\\r
29362951		0	Ácido nicotínico	20.11	21.81	\\r
29362952		0	Nicotinamida	20.11	27.60	\\r
29362953		0	Nicotinato de sódio	20.11	21.81	\\r
29362959		0	Outros	20.11	27.60	\\r
29362990		0	Outros	20.11	21.81	\\r
29369000		0	-Outras, incluindo os concentrados naturais	20.11	21.81	\\r
29371100		0	--Somatotropina, seus derivados e análogos estruturais	20.11	21.81	\\r
29371200		0	--Insulina e seus sais	20.11	27.60	\\r
29371910		0	ACTH (corticotropina)	20.11	21.81	\\r
29371920		0	HCG (gonadotropina coriônica)	20.11	27.60	\\r
29371930		0	PMSG (gonadotropina sérica)	20.11	21.81	\\r
29371940		0	Menotropinas	20.11	27.60	\\r
29371950		0	Oxitocina	20.11	26.72	\\r
29371990		0	Outros	20.11	21.81	\\r
29372110		0	Cortisona	20.11	21.81	\\r
29372120		0	Hidrocortisona	20.11	21.81	\\r
29372130		0	Prednisona (deidrocortisona)	20.11	21.81	\\r
29372140		0	Prednisolona (deidroidrocortisona)	20.11	21.81	\\r
29372210		0	Dexametasona e seus acetatos	20.11	21.81	\\r
29372221		0	Acetonida da triancinolona	20.11	21.81	\\r
29372229		0	Outros	20.11	21.81	\\r
29372231		0	Valerato de diflucortolona	20.11	21.81	\\r
29372239		0	Outros	20.11	21.81	\\r
29372290		0	Outros	20.11	21.81	\\r
29372310		0	Medroxiprogesterona e seus derivados	20.11	21.81	\\r
29372321		0	L-Norgestrel (levonorgestrel)	20.11	21.81	\\r
29372322		0	DL-Norgestrel	20.11	21.81	\\r
29372329		0	Outros	20.11	21.81	\\r
29372331		0	Estriol e seu succinato	20.11	26.72	\\r
29372339		0	Outros	20.11	21.81	\\r
29372341		0	Hemissuccinato de estradiol	20.11	27.60	\\r
29372342		0	Fempropionato de estradiol (17-(3-fenilpropionato) de estradiol)	20.11	27.60	\\r
29372349		0	Outros	20.11	21.81	\\r
29372351		0	Alilestrenol	20.11	26.72	\\r
29372359		0	Outros	20.11	21.81	\\r
29372360		0	Desogestrel	20.11	26.72	\\r
29372370		0	Linestrenol	20.11	26.72	\\r
29372391		0	Acetato de etinodiol	20.11	21.81	\\r
29372392		0	Gestodeno	20.11	27.60	\\r
29372399		0	Outros	20.11	21.81	\\r
29372910		0	Metilprednisolona e seus derivados	20.11	21.81	\\r
29372920		0	21-Succinato sódico de hidrocortisona	20.11	21.81	\\r
29372931		0	Acetato de ciproterona	20.11	21.81	\\r
29372939		0	Outros	20.11	21.81	\\r
29372940		0	Mesterolona e seus derivados	20.11	21.81	\\r
29372950		0	Espironolactona	20.11	27.60	\\r
29372960		0	Deflazacorte	20.11	21.81	\\r
29372990		0	Outros	20.11	21.81	\\r
29375000		0	-Prostaglandinas, tromboxanas e leucotrienos, seus derivados e análogos estruturais	20.11	21.81	\\r
29379010		0	Tiratricol (triac) e seu sal sódico	20.11	27.60	\\r
29379030		0	Levotiroxina sódica	20.11	26.72	\\r
29379040		0	Liotironina sódica	20.11	26.72	\\r
29379090		0	Outros	20.11	21.81	\\r
29381000		0	-Rutosídio (rutina) e seus derivados	20.11	26.72	\\r
29389010		0	Deslanosídio	20.11	21.81	\\r
29389020		0	Esteviosídio	20.11	27.60	\\r
29389090		0	Outros	20.11	21.81	\\r
29391110		0	Concentrados de palha de dormideira ou papoula	20.11	21.81	\\r
29391121		0	Buprenorfina e seus sais	20.11	21.81	\\r
29391122		0	Codeína e seus sais	20.11	26.72	\\r
29391123		0	Diidrocodeína e seus sais	20.11	21.81	\\r
29391131		0	Etilmorfina e seus sais	20.11	21.81	\\r
29391132		0	Etorfina e seus sais	20.11	21.81	\\r
29391140		0	Folcodina e seus sais	20.11	21.81	\\r
29391151		0	Heroína e seus sais	20.11	21.81	\\r
29391152		0	Hidrocodona e seus sais	20.11	21.81	\\r
29391153		0	Hidromorfona e seus sais	20.11	21.81	\\r
29391161		0	Morfina	20.11	21.81	\\r
29391162		0	Cloridrato e sulfato de morfina	20.11	21.81	\\r
29391169		0	Outros	20.11	21.81	\\r
29391170		0	Nicomorfina e seus sais	20.11	21.81	\\r
29391181		0	Oxicodona e seus sais	20.11	21.81	\\r
29391182		0	Oximorfona e seus sais	20.11	21.81	\\r
29391191		0	Tebacona e seus sais	20.11	21.81	\\r
29391192		0	Tebaína e seus sais	20.11	21.81	\\r
29391900		0	--Outros	20.11	21.81	\\r
29392000		0	-Alcalóides da quina e seus derivados. sais destes produtos	20.11	21.81	\\r
29393010		0	Cafeína	20.11	21.81	\\r
29394100		0	--Efedrina e seus sais	20.11	21.81	\\r
29394200		0	--Pseudoefedrina (DCI) e seus sais	20.11	21.81	\\r
29394300		0	--Catina (DCI) e seus sais	20.11	21.81	\\r
29394400		0	--Norefedrina e seus sais	20.11	21.81	\\r
29394900		0	--Outros	20.11	21.81	\\r
29395100		0	--Fenetilina (DCI) e seus sais	20.11	21.81	\\r
29395910		0	Teofilina	20.11	21.81	\\r
29395920		0	Aminofilina	20.11	21.81	\\r
29395990		0	Outros	20.11	21.81	\\r
29396100		0	--Ergometrina (DCI) e seus sais	20.11	21.81	\\r
29396200		0	--Ergotamina (DCI) e seus sais	20.11	21.81	\\r
29396300		0	--Ácido lisérgico e seus sais	20.11	21.81	\\r
29396911		0	Maleato de metilergometrina	20.11	21.81	\\r
29396919		0	Outros	20.11	21.81	\\r
29396921		0	Mesilato de diidroergotamina	20.11	21.81	\\r
29396929		0	Outros	20.11	21.81	\\r
29396931		0	Mesilato de diidroergocornina	20.11	21.81	\\r
29396939		0	Outros	20.11	21.81	\\r
29396941		0	Mesilato de alfa-diidroergocriptina	20.11	21.81	\\r
29396942		0	Mesilato de beta-diidroergocriptina	20.11	21.81	\\r
29396949		0	Outros	20.11	21.81	\\r
29396951		0	Ergocristina	20.11	21.81	\\r
29396952		0	Metanossulfonato de diidroergocristina	20.11	21.81	\\r
29396959		0	Outros	20.11	21.81	\\r
29396990		0	Outros	20.11	21.81	\\r
29399111		0	Cocaína e seus sais	20.11	21.81	\\r
29399112		0	Ecgonina e seus sais	20.11	21.81	\\r
29399119		0	Outros	20.11	21.81	\\r
29399120		0	Levometanfetamina, seus sais, ésteres e outros derivados	20.11	21.81	\\r
29399130		0	Metanfetamina, seus sais, ésteres e outros derivados	20.11	21.81	\\r
29399140		0	Racemato de metanfetamina, seus sais, ésteres e outros derivados	20.11	21.81	\\r
29399911		0	Brometo de N-butilescopolamônio	20.11	21.81	\\r
29399919		0	Outros	20.11	21.81	\\r
29399920		0	Teobromina e seus derivados. sais destes produtos	20.11	21.81	\\r
29399931		0	Pilocarpina, seu nitrato e seu cloridrato	20.11	27.60	\\r
29399939		0	Outros	20.11	21.81	\\r
29399940		0	Tiocolquicósido	20.11	27.60	\\r
29399990		0	Outros	20.11	21.81	\\r
29400011		0	Galactose	20.11	21.81	\\r
29400012		0	Arabinose	20.11	27.60	\\r
29400013		0	Ramnose	20.11	27.60	\\r
29400019		0	Outros	20.11	21.81	\\r
29400021		0	Ácido lactobiônico	20.11	26.72	\\r
29400022		0	Lactobionato de cálcio	20.11	26.72	\\r
29400023		0	Bromolactobionato de cálcio	20.11	21.81	\\r
29400029		0	Outros	20.11	21.81	\\r
29400092		0	Frutose-1,6-difosfato de cálcio ou de sódio	20.11	21.81	\\r
29400093		0	Maltitol	20.11	27.60	\\r
29400094		0	Lactogluconato de cálcio	20.11	21.81	\\r
29400099		0	Outros	20.11	21.81	\\r
29411010		0	Ampicilina e seus sais	20.11	21.81	\\r
29411020		0	Amoxicilina e seus sais	20.11	21.81	\\r
29411031		0	Penicilina V potássica	20.11	21.81	\\r
29411039		0	Outros	20.11	21.81	\\r
29411041		0	Penicilina G potássica	20.11	27.60	\\r
29411042		0	Penicilina G benzatínica	20.11	27.60	\\r
29411043		0	Penicilina G procaínica	20.11	27.60	\\r
29411049		0	Outros	20.11	21.81	\\r
29411090		0	Outros	20.11	21.81	\\r
29412010		0	Sulfatos	20.11	21.81	\\r
29412090		0	Outros	20.11	21.81	\\r
29413010		0	Cloridrato de tetraciclina	20.11	21.81	\\r
29413020		0	Oxitetraciclina	20.11	21.81	\\r
29413031		0	Minociclina	20.11	21.81	\\r
29413032		0	Sais	20.11	21.81	\\r
29413090		0	Outros	20.11	21.81	\\r
29414011		0	Cloranfenicol, seu palmitato, seu succinato e seu hemissuccinato	20.11	21.81	\\r
29414019		0	Outros	20.11	21.81	\\r
29414020		0	Tianfenicol e seus ésteres	20.11	21.81	\\r
29414090		0	Outros	20.11	21.81	\\r
29415010		0	Claritromicina	20.11	21.81	\\r
29415020		0	Eritromicina e seus sais	20.11	27.60	\\r
29415090		0	Outros	20.11	21.81	\\r
29419011		0	Rifamicina S	20.11	21.81	\\r
29419012		0	Rifampicina (rifamicina AMP)	20.11	21.81	\\r
29419013		0	Rifamicina SV sódica	20.11	21.81	\\r
29419019		0	Outros	20.11	21.81	\\r
29419021		0	Cloridrato de lincomicina	20.11	21.81	\\r
29419022		0	Fosfato de clindamicina	20.11	21.81	\\r
29419029		0	Outros	20.11	21.81	\\r
29419031		0	Ceftriaxona e seus sais	20.11	21.81	\\r
29419032		0	Cefoperazona e seus sais, cefazolina sódica	20.11	21.81	\\r
29419033		0	Cefaclor e cefalexina monoidratados, cefalotina sódica	20.11	27.60	\\r
29419034		0	Cefadroxil e seus sais	20.11	21.81	\\r
29419035		0	Cefotaxima sódica	20.11	21.81	\\r
29419036		0	Cefoxitina e seus sais	20.11	21.81	\\r
29419037		0	Cefalosporina C	20.11	21.81	\\r
29419039		0	Outros	20.11	21.81	\\r
29419041		0	Sulfato de neomicina	20.11	21.81	\\r
29419042		0	Embonato de gentamicina (pamoato de gentamicina)	20.11	21.81	\\r
29419043		0	Sulfato de gentamicina	20.11	27.60	\\r
29419049		0	Outros	20.11	21.81	\\r
29419051		0	Embonato de espiramicina (pamoato de espiramicina)	20.11	21.81	\\r
29419059		0	Outros	20.11	21.81	\\r
29419061		0	Nistatina e seus sais	20.11	21.81	\\r
39059990		0	Outros	34.12	35.82	\\r
29419062		0	Anfotericina B e seus sais	20.11	21.81	\\r
29419069		0	Outros	20.11	21.81	\\r
29419071		0	Monensina sódica	20.11	21.81	\\r
29419072		0	Narasina	20.11	21.81	\\r
29419073		0	Avilamicinas	20.11	21.81	\\r
29419079		0	Outros	20.11	21.81	\\r
29419081		0	Polimixinas e seus sais	20.11	21.81	\\r
29419082		0	Sulfato de colistina	20.11	21.81	\\r
29419083		0	Virginiamicinas e seus sais	20.11	21.81	\\r
29419089		0	Outros	20.11	21.81	\\r
29419091		0	Griseofulvina e seus sais	20.11	21.81	\\r
29419092		0	Fumarato de tiamulina	20.11	26.72	\\r
29419099		0	Outros	20.11	21.81	\\r
29420000		0	Outros compostos orgânicos.	20.11	21.81	\\r
30012010		0	De fígado	29.36	33.13	\\r
30012090		0	Outros	30.75	34.52	\\r
30019010		0	Heparina e seus sais	30.75	35.50	\\r
30019020		0	Pedaços de pericárdio de origem bovina ou suína	30.75	32.45	\\r
30019031		0	Fígados	30.75	33.50	\\r
30019039		0	Outros	30.75	33.50	\\r
30019090		0	Outros	30.75	32.45	\\r
30021011		0	Antiofídicos e outros antivenenosos	30.75	35.50	\\r
30021012		0	Antitetânico	30.75	33.50	\\r
30021013		0	Anticatarral	30.75	33.50	\\r
30021014		0	Antipiogênico	30.75	33.50	\\r
30021015		0	Antidiftérico	30.75	33.50	\\r
30021016		0	Polivalentes	30.75	33.50	\\r
30021019		0	Outros	30.75	32.45	\\r
30021022		0	Imunoglobulina anti-Rh	20.11	21.81	\\r
30021023		0	Outras imunoglobulinas séricas	20.11	21.81	\\r
30021024		0	Concentrado de fator VIII	20.11	21.81	\\r
30021025		0	Soroalbumina, em forma de gel, para preparação de reagentes de diagnóstico	30.75	32.45	\\r
30021026		0	Anticorpos monoclonais em solução tampão, contendo albumina bovina	30.75	32.45	\\r
30021029		0	Outros	20.11	21.81	\\r
30021031		0	Soroalbumina, exceto a humana	30.75	32.45	\\r
30021032		0	Plasmina (fibrinolisina)	30.75	31.35	\\r
30021033		0	Uroquinase	30.75	31.35	\\r
30021034		0	Imunoglobulina e cloridrato de histamina, associados	30.75	35.50	\\r
30021035		0	Imunoglobulina G, liofilizada ou em solução	30.75	35.50	\\r
30021036		0	Interferon beta. peg interferon alfa-2-a	30.75	31.35	\\r
30021037		0	Soroalbumina humana	30.75	33.50	\\r
30021038		0	Bevacizumab (DCI). daclizumab (DCI). etanercept (DCI). gemtuzumab (DCI)-ozogamicin(DCI). oprelvekin (DCI). rituximab (DCI). trastuzumab (DCI)	30.75	31.35	\\r
30021039		0	Outros	30.75	32.45	\\r
30022011		0	Contra a gripe	30.75	32.45	\\r
30022012		0	Contra a poliomielite	30.75	32.45	\\r
30022013		0	Contra a hepatite B	30.75	32.45	\\r
30022014		0	Contra o sarampo	30.75	32.45	\\r
30022015		0	Contra a meningite	30.75	32.45	\\r
30022016		0	Contra a rubéola, sarampo e caxumba (tríplice)	30.75	32.45	\\r
30022017		0	Outras tríplices	30.75	33.50	\\r
30022018		0	Anticatarral e antipiogênico	30.75	32.45	\\r
30022019		0	Outras	30.75	32.45	\\r
30022021		0	Contra a gripe	30.75	32.45	\\r
30022022		0	Contra a poliomielite	30.75	32.45	\\r
30022023		0	Contra a hepatite B	30.75	32.45	\\r
30022024		0	Contra o sarampo	30.75	32.45	\\r
30022025		0	Contra a meningite	30.75	32.45	\\r
30022026		0	Contra a rubéola, sarampo e caxumba (tríplice)	30.75	32.45	\\r
30022027		0	Outras tríplices	30.75	32.45	\\r
30022028		0	Anticatarral e antipiogênico	30.75	33.50	\\r
30022029		0	Outras	30.75	32.45	\\r
30023010		0	Contra a raiva	20.11	22.86	\\r
30023020		0	Contra a coccidiose	20.11	22.86	\\r
30023030		0	Contra a querato-conjuntivite	20.11	22.86	\\r
30023040		0	Contra a cinomose	20.11	22.86	\\r
30023050		0	Contra a leptospirose	20.11	22.86	\\r
30023060		0	Contra a febre aftosa	20.11	22.86	\\r
30023070		0	Contra as seguintes enfermidades: de Newcastle, a vírus vivo ou vírus inativo. de Gumboro, a vírus vivo ou vírus inativo. bronquite, a vírus vivo ou vírus inativo. difteroviruela, a vírus vivo. síndrome de queda de postura (EDS). salmonelose aviária, elab	20.11	22.86	\\r
30023080		0	Vacinas combinadas contra as enfermidades citadas no item 3002.30.70	20.11	22.86	\\r
30023090		0	Outras	20.11	21.81	\\r
30029010		0	Reagentes de origem microbiana para diagnóstico	20.11	25.81	\\r
30029020		0	Antitoxinas de origem microbiana	30.75	33.50	\\r
30029030		0	Tuberculinas	30.75	33.50	\\r
30029091		0	Para a saúde animal	30.75	33.50	\\r
30029092		0	Para a saúde humana	30.75	33.50	\\r
30029093		0	Saxitoxina	30.75	35.50	\\r
30029094		0	Ricina	30.75	35.50	\\r
30029099		0	Outros	20.11	24.86	\\r
30031011		0	Ampicilina ou seus sais	30.75	38.24	\\r
30031012		0	Amoxicilina ou seus sais	30.75	35.50	\\r
30031013		0	Penicilina G benzatínica	30.75	38.24	\\r
30031014		0	Penicilina G potássica	30.75	38.24	\\r
30031015		0	Penicilina G procaínica	30.75	38.24	\\r
30031019		0	Outros	30.75	35.50	\\r
30031020		0	Que contenham estreptomicinas ou seus derivados	30.75	35.50	\\r
30032011		0	Cloranfenicol, seu palmitato, seu succinato ou seu hemissuccinato	30.75	35.50	\\r
30032019		0	Outros	30.75	35.50	\\r
30032021		0	Eritromicina ou seus sais	30.75	38.24	\\r
30032029		0	Outros	30.75	35.50	\\r
30032031		0	Rifamicina SV sódica	30.75	35.50	\\r
30032032		0	Rifampicina	30.75	35.50	\\r
30032039		0	Outros	30.75	35.50	\\r
30032041		0	Cloridrato de lincomicina	30.75	38.24	\\r
30032049		0	Outros	30.75	35.50	\\r
30032051		0	Cefalotina sódica	30.75	38.24	\\r
30032052		0	Cefaclor ou cefalexina monoidratados	30.75	38.24	\\r
30032059		0	Outros	30.75	35.50	\\r
30032061		0	Sulfato de gentamicina	30.75	38.24	\\r
30032062		0	Daunorubicina	30.75	31.35	\\r
30032063		0	Idarubicina. pirarubicina	30.75	31.35	\\r
30032069		0	Outros	30.75	35.50	\\r
30032071		0	Vancomicina	30.75	35.50	\\r
30032072		0	Actinomicinas	30.75	31.35	\\r
30032073		0	Ciclosporina A	30.75	31.35	\\r
30032079		0	Outros	30.75	35.50	\\r
30032091		0	Mitomicina	30.75	31.35	\\r
30032092		0	Fumarato de tiamulina	30.75	35.50	\\r
30032093		0	Bleomicinas ou seus sais	30.75	31.35	\\r
30032094		0	Imipenem	30.75	31.35	\\r
30032095		0	Anfotericina B em lipossomas	30.75	31.35	\\r
30032099		0	Outros	30.75	35.50	\\r
30033100		0	--Que contenham insulina	30.75	38.24	\\r
30033911		0	Somatotropina	30.75	31.35	\\r
30033912		0	Gonadotropina coriônica (hCG)	30.75	38.24	\\r
30033913		0	Menotropinas	30.75	38.24	\\r
30033914		0	Corticotropina (ACTH)	30.75	35.50	\\r
30033915		0	Gonadotropina sérica (PMSG)	30.75	35.50	\\r
30033916		0	Somatostatina ou seus sais	30.75	31.35	\\r
30033917		0	Buserelina ou seu acetato	30.75	31.35	\\r
30033918		0	Triptorelina ou seus sais	30.75	31.35	\\r
30033919		0	Leuprolida ou seu acetato	30.75	31.35	\\r
30033921		0	LH-RH (gonadorelina)	30.75	31.35	\\r
30033922		0	Oxitocina	30.75	38.24	\\r
30033923		0	Sais de insulina	30.75	38.24	\\r
30033924		0	Timosinas	30.75	31.35	\\r
30033925		0	Octreotida	30.75	31.35	\\r
30033926		0	Goserelina ou seu acetato	30.75	31.35	\\r
30033927		0	Nafarelina ou seu acetato	30.75	31.35	\\r
30033929		0	Outros	30.75	35.50	\\r
30033931		0	Hemissuccinato de estradiol	30.75	38.24	\\r
30033932		0	Fempropionato de estradiol	30.75	38.24	\\r
30033933		0	Estriol ou seu succinato	30.75	38.24	\\r
30033934		0	Alilestrenol	30.75	38.24	\\r
30033935		0	Linestrenol	30.75	38.24	\\r
30033936		0	Acetato de megestrol. formestano. fulvestranto	30.75	31.35	\\r
30033937		0	Desogestrel	30.75	38.24	\\r
30033939		0	Outros	30.75	35.50	\\r
30033981		0	Levotiroxina sódica	30.75	37.36	\\r
30033982		0	Liotironina sódica	30.75	37.36	\\r
30033991		0	Sal sódico ou éster metílico do ácido 9,11,15-triidroxi-16-(3-clorofenoxi)prosta-5,13-dien-1-óico (derivado da prostaglandina F2alfa)	30.75	31.35	\\r
30033992		0	Tiratricol (triac) ou seu sal sódico	30.75	38.24	\\r
30033994		0	Espironolactona	30.75	38.24	\\r
30033995		0	Exemestano	30.75	31.35	\\r
30033999		0	Outros	30.75	35.50	\\r
30034010		0	Vimblastina. vincristina. derivados destes produtos. topotecan ou seu cloridrato	30.75	31.35	\\r
30034020		0	Pilocarpina, seu nitrato ou seu cloridrato	30.75	38.24	\\r
30034030		0	Metanossulfonato de diidroergocristina	30.75	35.50	\\r
30034040		0	Codeína ou seus sais	30.75	38.24	\\r
30034050		0	Granisetron. tropisetrona ou seu cloridrato	30.75	31.35	\\r
30034090		0	Outros	30.75	35.50	\\r
30039011		0	Folinato de cálcio (leucovorina)	30.75	35.50	\\r
30039012		0	Nicotinamida	30.75	38.24	\\r
30039013		0	Hidroxocobalamina ou seus sais. cianocobalamina	30.75	38.24	\\r
30039014		0	Vitamina A1 (retinol) ou seus derivados, exceto o ácido retinóico	30.75	38.24	\\r
30039015		0	D-Pantotenato de cálcio. vitamina D3 (colecalciferol)	30.75	35.50	\\r
30039016		0	Ésteres das vitaminas A e D3, em concentração superior ou igual a 1.500.000 UI/g de vitamina A e superior ou igual a 50.000 UI/g de vitamina D3	30.75	35.50	\\r
30039017		0	Ácido retinóico (tretinoína)	30.75	31.35	\\r
30039019		0	Outros	30.75	35.50	\\r
30039021		0	Estreptoquinase	30.75	31.35	\\r
30039022		0	L-Asparaginase	30.75	31.35	\\r
30039023		0	Deoxirribonuclease	30.75	31.35	\\r
30039029		0	Outros	30.75	35.50	\\r
30039031		0	Permetrina. nitrato de propatila. benzoato de benzila. dioctilsulfossuccinato de sódio	30.75	38.24	\\r
30039032		0	Ácido cólico. ácido deoxicólico. sal magnésico do ácido deidrocólico	30.75	38.24	\\r
30039033		0	Ácido glucônico, seus sais ou seus ésteres	30.75	38.24	\\r
30039034		0	Ácido O-acetilsalicílico. O-acetilsalicilato de alumínio. salicilato de metila. diclorvós	30.75	38.24	\\r
30039035		0	Lactofosfato de cálcio	30.75	38.24	\\r
30039036		0	Ácido láctico, seus sais ou seus ésteres. ácido 4-(4-hidroxifenoxi)-3,5-diiodofenilacético	30.75	38.24	\\r
30039037		0	Ácido fumárico, seus sais ou seus ésteres	30.75	38.24	\\r
30039038		0	Etretinato. fosfestrol ou seus sais de di ou tetrassódio	30.75	31.35	\\r
30039039		0	Outros	30.75	35.50	\\r
30039041		0	Sulfato de tranilcipromina. dietilpropiona	30.75	38.24	\\r
30039042		0	Cloridrato de ketamina	30.75	38.24	\\r
30039043		0	Clembuterol ou seu cloridrato	30.75	38.24	\\r
30039044		0	Tamoxifen ou seu citrato	30.75	38.24	\\r
30039045		0	Levodopa. alfa-metildopa	30.75	38.24	\\r
30039046		0	Cloridrato de fenilefrina. mirtecaína. propranolol ou seus sais	30.75	38.24	\\r
30039047		0	Diclofenaco de sódio. diclofenaco de potássio. diclofenaco de dietilamônio	30.75	38.24	\\r
30039048		0	Clorambucil. clormetina (DCI) ou seu cloridrato. melfalano. toremifene ou seu citrato	30.75	31.35	\\r
30039049		0	Outros	30.75	35.50	\\r
30039051		0	Metoclopramida ou seu cloridrato. closantel	30.75	38.24	\\r
30039052		0	Atenolol. prilocaína ou seu cloridrato. talidomida	30.75	38.24	\\r
30039053		0	Lidocaína ou seu cloridrato. flutamida	30.75	38.24	\\r
30039054		0	Femproporex	30.75	38.24	\\r
30039055		0	Paracetamol. bromoprida	30.75	38.24	\\r
30039056		0	Amitraz. cipermetrina	30.75	38.24	\\r
30039057		0	Clorexidina ou seus sais. isetionato de pentamidina	30.75	38.24	\\r
30039058		0	Aminoglutetimida. carmustina. deferoxamina (desferrioxamina B) ou seus sais, derivados destes produtos. lomustina	30.75	31.35	\\r
30039059		0	Outros	18.75	23.50	\\r
30039061		0	Quercetina	30.75	38.24	\\r
30039062		0	Tiaprida	30.75	35.50	\\r
30039063		0	Etidronato dissódico	30.75	38.24	\\r
30039064		0	Cloridrato de amiodarona	30.75	38.24	\\r
30039065		0	Nitrovin. moxidectina	30.75	38.24	\\r
30039066		0	Ácido clodrônico ou seu sal dissódico. estreptozocina. fotemustina	30.75	31.35	\\r
30039067		0	Carbocisteína. sulfiram	30.75	38.24	\\r
30039069		0	Outros	18.75	23.50	\\r
30039071		0	Terfenadina. talniflumato. malato ácido de cleboprida. econazol ou seu nitrato. nitrato de isoconazol. flubendazol. cloridrato de mepivacaína. trimetoprima. cloridrato de bupivacaína	30.75	38.24	\\r
30039072		0	Cloridrato de loperamida. fembendazol. ketorolac trometamina. nifedipina. nimodipina. nitrendipina	30.75	38.24	\\r
30039073		0	Albendazol ou seu sulfóxido. mebendazol. 6-mercaptopurina. metilsulfato de amezínio. oxifendazol. praziquantel	30.75	38.24	\\r
30039074		0	Alprazolam. bromazepam. clordiazepóxido. cloridrato de petidina. diazepam. droperidol. mazindol. triazolam	30.75	38.24	\\r
30039075		0	Benzetimida ou seu cloridrato. fenitoína ou seu sal sódico. isoniazida. pirazinamida	30.75	38.24	\\r
30039076		0	Ácido 2-(2-metil-3-cloroanilina)nicotínico ou seu sal de lisina. metronidazol ou seus sais. azatioprina. nitrato de miconazol	30.75	38.24	\\r
30039077		0	Enrofloxacina. maleato de enalapril. maleato de pirilamina. nicarbazina. norfloxacina. sais de piperazina	30.75	38.24	\\r
30039078		0	Altretamina. bortezomib. dacarbazina. disoproxilfumarato de tenofovir. enfuvirtida. fluspirileno. letrozol. lopinavir. mesilato de imatinib. nelfinavir ou seu mesilato. nevirapine. pemetrexed. saquinavir. sulfato de abacavir. sulfato de atazanavir. sulfat	30.75	31.35	\\r
30039079		0	Outros	18.75	23.50	\\r
30039081		0	Levamisol ou seus sais. tetramisol	30.75	35.50	\\r
30039082		0	Sulfadiazina ou seu sal sódico. sulfametoxazol	30.75	38.24	\\r
30039083		0	Cloxazolam. ketazolam. piroxicam. tenoxicam	30.75	38.24	\\r
30039084		0	Ftalilsulfatiazol. inosina	30.75	38.24	\\r
30039085		0	Enantato de flufenazina. prometazina. gliburida. rutosídio. deslanosídio	30.75	38.24	\\r
30039086		0	Clortalidona. furosemida	30.75	38.24	\\r
30039087		0	Cloridrato de tizanidina. cetoconazol. furazolidona	30.75	38.24	\\r
30039088		0	Amprenavir. aprepitanto. delavirdina ou seu mesilato. efavirenz. emtricitabina. etopósido. everolimus. fosamprenavir cálcico. fosfato de fludarabina. gencitabina ou seu cloridrato. raltitrexida. ritonavir. sirolimus. tacrolimus. tenipósido	18.75	19.35	\\r
30039089		0	Outros	30.75	35.50	\\r
30039091		0	Extrato de pólen	30.75	35.50	\\r
30039092		0	Crisarobina. disofenol	30.75	38.24	\\r
30039093		0	Diclofenaco resinato	30.75	38.24	\\r
30039094		0	Silimarina	30.75	35.50	\\r
30039095		0	Bussulfano. dexormaplatina. dietilestilbestrol ou seu dipropionato. enloplatina. iproplatina. lobaplatina. miboplatina. miltefosina. mitotano. ormaplatina. procarbazina ou seu cloridrato. propofol. sebriplatina. zeniplatina	30.75	31.35	\\r
30039096		0	Complexo de ferro dextrana	30.75	38.24	\\r
30039099		0	Outros	18.75	23.50	\\r
30041011		0	Ampicilina ou seus sais	30.75	38.24	\\r
30041012		0	Amoxicilina ou seus sais	30.75	35.50	\\r
30041013		0	Penicilina G benzatínica	30.75	38.24	\\r
30041014		0	Penicilina G potássica	30.75	38.24	\\r
30041015		0	Penicilina G procaínica	30.75	38.24	\\r
30041019		0	Outros	30.75	35.50	\\r
30041020		0	Que contenham estreptomicinas ou seus derivados	30.75	35.50	\\r
30042011		0	Cloranfenicol, seu palmitato, seu succinato ou seu hemissuccinato	30.75	35.50	\\r
30042019		0	Outros	30.75	35.50	\\r
30042021		0	Eritromicina ou seus sais	30.75	38.24	\\r
30042029		0	Outros	30.75	35.50	\\r
30042031		0	Rifamicina SV sódica	30.75	35.50	\\r
30042032		0	Rifampicina	30.75	35.50	\\r
30042039		0	Outros	30.75	35.50	\\r
30042041		0	Cloridrato de lincomicina	30.75	38.24	\\r
30042049		0	Outros	30.75	35.50	\\r
30042051		0	Cefalotina sódica	30.75	38.24	\\r
30042052		0	Cefaclor ou cefalexina monoidratados	30.75	38.24	\\r
30042059		0	Outros	30.75	35.50	\\r
30042061		0	Sulfato de gentamicina	30.75	38.24	\\r
30042062		0	Daunorubicina	30.75	31.35	\\r
30042063		0	Idarubicina. pirarubicina	30.75	31.35	\\r
30042069		0	Outros	30.75	35.50	\\r
30042071		0	Vancomicina	30.75	35.50	\\r
30042072		0	Actinomicinas	30.75	31.35	\\r
30042073		0	Ciclosporina A	30.75	31.35	\\r
30042079		0	Outros	30.75	35.50	\\r
30042091		0	Mitomicina	30.75	31.35	\\r
30042092		0	Fumarato de tiamulina	30.75	35.50	\\r
30042093		0	Bleomicinas ou seus sais	30.75	31.35	\\r
30042094		0	Imipenem	30.75	31.35	\\r
30042095		0	Anfotericina B em lipossomas	30.75	31.35	\\r
30042099		0	Outros	30.75	35.50	\\r
30043100		0	--Que contenham insulina	30.75	38.24	\\r
30043210		0	Hormônios corticosteróides	30.75	38.24	\\r
30043220		0	Espironolactona	30.75	38.24	\\r
30043290		0	Outros	30.75	35.50	\\r
30043911		0	Somatotropina	30.75	31.35	\\r
30043912		0	Gonadotropina coriônica (hCG)	30.75	38.24	\\r
30043913		0	Menotropinas	30.75	38.24	\\r
30043914		0	Corticotropina (ACTH)	30.75	35.50	\\r
30043915		0	Gonadotropina sérica (PMSG)	30.75	35.50	\\r
30043916		0	Somatostatina ou seus sais	30.75	31.35	\\r
30043917		0	Buserelina ou seu acetato	30.75	31.35	\\r
30043918		0	Triptorelina ou seus sais	30.75	31.35	\\r
30043919		0	Leuprolida ou seu acetato	30.75	31.35	\\r
30043921		0	LH-RH (gonadorelina)	30.75	31.35	\\r
30043922		0	Oxitocina	30.75	38.24	\\r
30043923		0	Sais de insulina	30.75	38.24	\\r
30043924		0	Timosinas	30.75	31.35	\\r
30043925		0	Calcitonina	30.75	35.50	\\r
30043926		0	Octreotida	30.75	31.35	\\r
30043927		0	Goserelina ou seu acetato	30.75	31.35	\\r
30043928		0	Nafarelina ou seu acetato	30.75	31.35	\\r
30043929		0	Outros	30.75	35.50	\\r
30043931		0	Hemissuccinato de estradiol	30.75	38.24	\\r
30043932		0	Fempropionato de estradiol	30.75	38.24	\\r
30043933		0	Estriol ou seu succinato	30.75	38.24	\\r
30043934		0	Alilestrenol	30.75	38.24	\\r
30043935		0	Linestrenol	30.75	38.24	\\r
30043936		0	Acetato de megestrol. formestano. fulvestranto	30.75	31.35	\\r
30043937		0	Desogestrel	30.75	38.24	\\r
30043939		0	Outros	30.75	35.50	\\r
30043981		0	Levotiroxina sódica	30.75	37.36	\\r
30043982		0	Liotironina sódica	30.75	37.36	\\r
30043991		0	Sal sódico ou éster metílico do ácido 9,11,15-triidroxi-16-(3-clorofenoxi)prosta-5,13-dien-1-óico (derivado da prostaglandina F2alfa)	30.75	31.35	\\r
30043992		0	Tiratricol (triac) ou seu sal sódico	30.75	38.24	\\r
30043994		0	Exemestano	30.75	31.35	\\r
30043999		0	Outros	30.75	35.50	\\r
30044010		0	Vimblastina. vincristina. derivados destes produtos. topotecan ou seu cloridrato	30.75	31.35	\\r
30044020		0	Pilocarpina, seu nitrato ou seu cloridrato	30.75	38.24	\\r
30044030		0	Metanossulfonato de diidroergocristina	30.75	35.50	\\r
30044040		0	Codeína ou seus sais	30.75	38.24	\\r
30044050		0	Granisetron. tropisetrona ou seu cloridrato	30.75	31.35	\\r
30044090		0	Outros	30.75	35.50	\\r
30045010		0	Folinato de cálcio (leucovorina)	30.75	35.50	\\r
30045020		0	Nicotinamida	30.75	38.24	\\r
30045030		0	Hidroxocobalamina ou seus sais. cianocobalamina	30.75	38.24	\\r
30045040		0	Vitamina A1 (retinol) ou seus derivados, exceto o ácido retinóico	30.75	38.24	\\r
30045050		0	D-Pantotenato de cálcio. vitamina D3 (colecalciferol)	30.75	35.50	\\r
30045060		0	Ácido retinóico (tretinoína)	30.75	31.35	\\r
30045090		0	Outros	30.75	35.50	\\r
30049011		0	Estreptoquinase	26.75	27.35	\\r
30049012		0	L-Asparaginase	26.75	27.35	\\r
30049013		0	Deoxirribonuclease	26.75	27.35	\\r
30049019		0	Outros	26.75	31.50	\\r
30049021		0	Permetrina. nitrato de propatila. benzoato de benzila. dioctilsulfossuccinato de sódio	26.75	34.24	\\r
30049022		0	Ácido cólico. ácido deoxicólico. sal magnésico do ácido deidrocólico	26.75	34.24	\\r
30049023		0	Ácido glucônico, seus sais ou seus ésteres	26.75	34.24	\\r
30049024		0	Ácido O-acetilsalicílico. O-acetilsalicilato de alumínio. salicilato de metila. diclorvós	26.75	34.24	\\r
30049025		0	Lactofosfato de cálcio	26.75	34.24	\\r
30049026		0	Ácido láctico, seus sais ou seus ésteres. ácido 4-(4-hidroxifenoxi)-3,5-diiodofenilacético. ácido fumárico, seus sais ou seus ésteres	26.75	34.24	\\r
30049027		0	Nitroglicerina, destinada a ser administrada por via percutânea	26.75	28.45	\\r
30049028		0	Etretinato. fosfestrol ou seus sais de di ou tetrassódio	26.75	27.35	\\r
30049029		0	Outros	26.75	31.50	\\r
30049031		0	Sulfato de tranilcipromina. dietilpropiona	26.75	34.24	\\r
30049032		0	Cloridrato de ketamina	26.75	34.24	\\r
30049033		0	Clembuterol ou seu cloridrato	26.75	34.24	\\r
30049034		0	Tamoxifen ou seu citrato	26.75	34.24	\\r
30049035		0	Levodopa. alfa-metildopa	26.75	34.24	\\r
30049036		0	Cloridrato de fenilefrina. mirtecaína. propranolol ou seus sais	26.75	34.24	\\r
30049037		0	Diclofenaco de sódio. diclofenaco de potássio. diclofenaco de dietilamônio	26.75	34.24	\\r
30049038		0	Clorambucil. clormetina (DCI) ou seu cloridrato. melfalano. toremifene ou seu citrato	26.75	27.35	\\r
30049039		0	Outros	26.75	31.50	\\r
30049041		0	Metoclopramida ou seu cloridrato. closantel	26.75	34.24	\\r
30049042		0	Atenolol. prilocaína ou seu cloridrato. talidomida	26.75	34.24	\\r
30049043		0	Lidocaína ou seu cloridrato. flutamida	26.75	34.24	\\r
30049044		0	Femproporex	26.75	34.24	\\r
30049045		0	Paracetamol. bromoprida	26.75	34.24	\\r
30049046		0	Amitraz. cipermetrina	26.75	34.24	\\r
30049047		0	Clorexidina ou seus sais. isetionato de pentamidina	26.75	34.24	\\r
30049048		0	Aminoglutetimida. carmustina. deferoxamina (desferrioxamina B) ou seus sais, derivados destes produtos. lomustina	26.75	27.35	\\r
30049049		0	Outros	26.75	31.50	\\r
30049051		0	Quercetina	26.75	34.24	\\r
30049052		0	Tiaprida	26.75	31.50	\\r
30049053		0	Etidronato dissódico	26.75	34.24	\\r
30049054		0	Cloridrato de amiodarona	26.75	34.24	\\r
30049055		0	Nitrovin. moxidectina	26.75	34.24	\\r
30049057		0	Carbocisteína. sulfiram	26.75	34.24	\\r
30049058		0	Ácido clodrônico ou seu sal dissódico. estreptozocina. fotemustina	26.75	27.35	\\r
30049059		0	Outros	26.75	31.50	\\r
30049061		0	Terfenadina. talniflumato. malato ácido de cleboprida. econazol ou seu nitrato. nitrato de isoconazol. flubendazol. cloridrato de mepivacaína. trimetoprima. cloridrato de bupivacaína	26.75	34.24	\\r
30049062		0	Cloridrato de loperamida. fembendazol. ketorolac trometamina. nifedipina nimodipina. nitrendipina	26.75	34.24	\\r
30049063		0	Albendazol ou seu sulfóxido. mebendazol. 6-mercaptopurina. metilsulfato de amezínio. oxifendazol. praziquantel	26.75	34.24	\\r
30049064		0	Alprazolam. bromazepam. clordiazepóxido. cloridrato de petidina. diazepam. droperidol. mazindol. triazolam	26.75	34.24	\\r
30049065		0	Benzetimida ou seu cloridrato. fenitoína ou seu sal sódico. isoniazida. pirazinamida	26.75	34.24	\\r
30049066		0	Ácido 2-(2-metil-3-cloroanilina)nicotínico ou seu sal de lisina. metronidazol ou seus sais. azatioprina. nitrato de miconazol	26.75	34.24	\\r
30049067		0	Enrofloxacina. maleato de enalapril. maleato de pirilamina. nicarbazina. norfloxacina. sais de piperazina	26.75	34.24	\\r
30049068		0	Altretamina. bortezomib. dacarbazina. disoproxilfumarato de tenofovir. enfuvirtida. fluspirileno. letrozol. lopinavir. mesilato de imatinib. nelfinavir ou seu mesilato. nevirapine. pemetrexed. saquinavir. sulfato de abacavir. sulfato de atazanavir. sulfat	18.75	19.35	\\r
30049069		0	Outros	18.75	23.50	\\r
30049071		0	Levamisol ou seus sais. tetramisol	26.75	31.50	\\r
30049072		0	Sulfadiazina ou seu sal sódico. sulfametoxazol	26.75	34.24	\\r
30049073		0	Cloxazolam. ketazolam. piroxicam. tenoxicam	26.75	34.24	\\r
30049074		0	Ftalilsulfatiazol. inosina	26.75	34.24	\\r
30049075		0	Enantato de flufenazina. prometazina. gliburida. rutosídio. deslanosídio	26.75	34.24	\\r
30049076		0	Clortalidona. furosemida	26.75	34.24	\\r
30049077		0	Cloridrato de tizanidina. cetoconazol. furazolidona	26.75	34.24	\\r
30049078		0	Amprenavir. aprepitanto. delavirdina ou seu mesilato. efavirenz. emtricitabina. etopósido. everolimus. fosamprenavir cálcico. fosfato de fludarabina. gencitabina ou seu cloridrato. raltitrexida. ritonavir. sirolimus. tacrolimus. tenipósido	18.75	19.35	\\r
30049079		0	Outros	18.75	23.50	\\r
30049091		0	Extrato de pólen	26.75	31.50	\\r
30049092		0	Crisarobina. disofenol	26.75	34.24	\\r
30049093		0	Diclofenaco resinato	26.75	34.24	\\r
30049094		0	Silimarina	26.75	31.50	\\r
30049095		0	Bussulfano. dexormaplatina. dietilestilbestrol ou seu dipropionato. enloplatina. iproplatina. lobaplatina. miboplatina. miltefosina. mitotano. ormaplatina. procarbazina ou seu cloridrato. propofol. sebriplatina. zeniplatina	26.75	27.35	\\r
30049096		0	Complexo de ferro dextrana	26.75	34.24	\\r
30049099		0	Outros	26.75	31.50	\\r
30051010		0	Impregnados ou recobertos de substâncias farmacêuticas	30.75	37.36	\\r
30051020		0	Curativos (pensos) cirúrgicos que permitem a observação direta de feridas	30.75	37.36	\\r
30051030		0	Curativos (pensos) impermeáveis aplicáveis sobre mucosas	30.75	37.36	\\r
30051040		0	Curativos (pensos) com obturador próprios para colostomia (cones obturadores)	30.75	32.45	\\r
30051050		0	Curativos (pensos) com fecho de correr próprios para fechar ferimentos	30.75	32.45	\\r
30051090		0	Outros	30.75	37.36	\\r
30059011		0	De ácido poliglicólico	30.75	32.45	\\r
30059012		0	De copolímeros de ácido glicólico e ácido láctico	30.75	32.45	\\r
30059019		0	Outros	30.75	37.36	\\r
30059020		0	Campos cirúrgicos, de falso tecido	30.75	37.36	\\r
30059090		0	Outros	30.75	37.36	\\r
30061010		0	Materiais para suturas cirúrgicas, de polidiexanona	20.11	21.81	\\r
30061020		0	Materiais para suturas cirúrgicas, de aço inoxidável	20.11	21.81	\\r
30061090		0	Outros	20.11	26.72	\\r
30062000		0	-Reagentes destinados à determinação dos grupos ou dos fatores sanguíneos	20.11	25.81	\\r
30063011		0	À base de ioexol	30.75	32.45	\\r
30063012		0	À base de iocarmato de dimeglumina ou de gadoterato de meglumina	30.75	32.45	\\r
30063013		0	À base de iopamidol	30.75	32.45	\\r
30063015		0	À base de dióxido de zircônio e sulfato de gentamicina	30.75	32.45	\\r
30063016		0	À base de diatrizoato de sódio ou de meglumina	30.75	32.45	\\r
30063017		0	À base de ioversol ou de iopromida	30.75	32.45	\\r
30063018		0	À base de iotalamato de sódio, de iotalamato de meglumina ou de suas misturas	30.75	32.45	\\r
30063019		0	Outras	30.75	37.36	\\r
30063021		0	À base de somatoliberina	20.11	21.81	\\r
30063029		0	Outros	20.11	26.72	\\r
30064011		0	Cimentos	20.11	26.72	\\r
30064012		0	Outros produtos para obturação dentária	20.11	21.81	\\r
30064020		0	Cimentos para reconstituição óssea	20.11	21.81	\\r
30065000		0	-Estojos e caixas de primeiros-socorros, guarnecidos	30.75	38.24	\\r
30066000		0	-Preparações químicas contraceptivas à base de hormônios, de outros produtos da posição 29.37 ou de espermicidas	30.75	37.36	\\r
30067000		0	-Preparações sob a forma de gel, concebidas para uso em medicina humana ou veterinária, como lubrificante para determinadas partes do corpo em intervenções cirúrgicas ou exames médicos, ou como meio de ligação entre o corpo e os instrumentos médicos	20.11	27.60	\\r
30069110		0	Bolsas para colostomia, ileostomia e urostomia	20.11	23.88	\\r
30069190		0	Outros	20.11	29.27	\\r
30069200		0	--Desperdícios farmacêuticos	30.75	38.24	\\r
31010000		0	Adubos (fertilizantes) de origem animal ou vegetal, mesmo misturados entre si ou tratados quimicamente. adubos (fertilizantes) resultantes da mistura ou do tratamento químico de produtos de origem animal ou vegetal.	31.45	34.20	\\r
31021010		0	Com teor de nitrogênio (azoto) superior a 45%, em peso, calculado sobre o produto anidro no estado seco	20.11	23.88	\\r
31021090		0	Outra	20.11	23.88	\\r
31022100		0	--Sulfato de amônio	20.11	22.86	\\r
31022910		0	Sulfonitrato de amônio	20.11	20.71	\\r
31022990		0	Outros	20.11	20.71	\\r
31023000		0	-Nitrato de amônio, mesmo em solução aquosa	20.11	20.71	\\r
31024000		0	-Misturas de nitrato de amônio com carbonato de cálcio ou com outras matérias inorgânicas desprovidas de poder fertilizante	20.11	20.71	\\r
31025011		0	Com teor de nitrogênio (azoto) não superior a 16,3%, em peso	20.11	20.71	\\r
31025019		0	Outro	20.11	20.71	\\r
31025090		0	Outro	20.11	20.71	\\r
31025090	01	0	Ex 01 - Com teor de nitrogênio superior a 16,3% em peso	20.11	20.71	\\r
31026000		0	-Sais duplos e misturas de nitrato de cálcio e nitrato de amônio	20.11	20.71	\\r
31028000		0	-Misturas de ureia com nitrato de amônio em soluções aquosas ou amoniacais	20.11	22.86	\\r
31029000		0	-Outros, incluindo as misturas não mencionadas nas subposições precedentes	20.11	20.71	\\r
31029000	01	0	Ex 01 - Cianamida cálcica com teor de nitrogênio superior a 25% em peso	20.11	20.71	\\r
31031010		0	Com teor de pentóxido de fósforo (P2O5) não superior a 22%, em peso	20.11	23.88	\\r
31031020		0	Com teor de pentóxido de fósforo (P2O5) superior a 22% mas não superior a 45%, em peso	20.11	23.88	\\r
31031030		0	Com teor de pentóxido de fósforo (P2O5) superior a 45%, em peso	20.11	23.88	\\r
31039011		0	Com teor de pentóxido de fósforo (P2O5) não superior a 46%, em peso	20.11	20.71	\\r
31039019		0	Outros	20.11	20.71	\\r
31039090		0	Outros	20.11	20.71	\\r
31042010		0	Com teor de óxido de potássio (K2O) não superior a 60%, em peso	20.11	20.71	\\r
31042090		0	Outros	20.11	20.71	\\r
31043010		0	Com teor de óxido de potássio (K2O) não superior a 52%, em peso	20.11	20.71	\\r
31043090		0	Outros	20.11	20.71	\\r
31049010		0	Sulfato duplo de potássio e magnésio, com teor de óxido de potássio (K2O) superior a 30%, em peso	20.11	23.88	\\r
31049090		0	Outros	20.11	20.71	\\r
31051000		0	-Produtos do presente Capítulo apresentados em tabletes ou formas semelhantes, ou ainda em embalagens com peso bruto não superior a 10 kg	20.11	23.88	\\r
31051000	01	0	Ex 01 - Nitrato de sódio com teor de nitrogênio superior a 16,3% em peso	20.11	23.88	\\r
31051000	02	0	Ex 02 - Cianamida cálcica com teor de nitrogênio superior a 25% em peso	20.11	23.88	\\r
31051000	03	0	Ex 03 - Sulfato de potássio com teor de óxido de potássio (K2O) superior a 52% em peso	20.11	23.88	\\r
31051000	04	0	Ex 04 - Sulfato duplo de magnésio e potássio com teor de óxido de potássio (K2O) com teor superior a 30% em peso	20.11	23.88	\\r
31052000		0	-Adubos (fertilizantes) minerais ou químicos, que contenham os três elementos fertilizantes: nitrogênio (azoto), fósforo e potássio	20.11	23.88	\\r
31053010		0	Com teor de arsênio superior ou igual a 6 mg/kg	20.11	23.88	\\r
31053090		0	Outros	20.11	23.88	\\r
31054000		0	-Diidrogeno-ortofosfato de amônio (fosfato monoamônico ou monoamoniacal), mesmo misturado com hidrogeno-ortofosfato de diamônio (fosfato diamônico ou diamoniacal)	20.11	23.88	\\r
31055100		0	--Que contenham nitratos e fosfatos	20.11	22.86	\\r
31055900		0	--Outros	20.11	22.86	\\r
31056000		0	-Adubos (fertilizantes) minerais ou químicos, que contenham os dois elementos fertilizantes: fósforo e potássio	20.11	22.86	\\r
31059011		0	Com teor de nitrogênio (azoto) não superior a 15%, em peso, e de óxido de potássio (K2O) não superior a 15%, em peso	20.11	20.71	\\r
31059019		0	Outros	20.11	20.71	\\r
31059090		0	Outros	20.11	22.86	\\r
32011000		0	-Extrato de quebracho	31.45	37.15	\\r
32012000		0	-Extrato de mimosa	31.45	37.15	\\r
32019011		0	De gambir	31.45	33.15	\\r
32019012		0	De carvalho ou de castanheiro	31.45	37.15	\\r
32019019		0	Outros	31.45	37.15	\\r
32019020		0	Taninos	31.45	37.15	\\r
32019090		0	Outros	31.45	37.15	\\r
32021000		0	-Produtos tanantes orgânicos sintéticos	31.45	37.15	\\r
32029011		0	À base de sais de cromo	31.45	37.15	\\r
32029012		0	À base de sais de titânio	31.45	33.15	\\r
32029013		0	À base de sais de zircônio	31.45	33.15	\\r
32029019		0	Outros	31.45	37.15	\\r
32029021		0	À base de compostos de cromo	31.45	37.15	\\r
32029029		0	Outros	31.45	37.15	\\r
32029030		0	Preparações enzimáticas para a pré-curtimenta	31.45	37.15	\\r
32030011		0	Hemateína	31.45	33.15	\\r
32030012		0	Fisetina	31.45	33.15	\\r
32030013		0	Morina	31.45	33.15	\\r
32030019		0	Outras	31.45	37.15	\\r
32030021		0	Carmim de cochonilha	31.45	37.15	\\r
32030029		0	Outras	31.45	37.15	\\r
32030030		0	Preparações indicadas na Nota 3 do presente Capítulo, à base de matérias corantes de origem vegetal ou animal	31.45	37.15	\\r
32041100		0	--Corantes dispersos e preparações à base desses corantes	31.45	38.06	\\r
32041210		0	Corantes ácidos, mesmo metalizados, e preparações à base desses corantes	31.45	38.94	\\r
32041220		0	Corantes mordentes e preparações à base desses corantes	31.45	38.06	\\r
32041300		0	--Corantes básicos e preparações à base desses corantes	31.45	38.94	\\r
32041400		0	--Corantes diretos e preparações à base desses corantes	31.45	38.94	\\r
32041510		0	Indigo blue segundo Colour Index 73.000	31.45	38.94	\\r
32041520		0	Dibenzantrona	31.45	33.15	\\r
32041530		0	12,12-Dimetoxidibenzantrona	31.45	33.15	\\r
32041590		0	Outros	31.45	38.94	\\r
32041600		0	--Corantes reagentes e preparações à base desses corantes	31.45	38.94	\\r
32041700		0	--Pigmentos e preparações à base desses pigmentos	31.45	38.94	\\r
32041911		0	Carotenóides	31.45	33.15	\\r
32041912		0	Preparações contendo beta-caroteno, ésteres metílico ou etílico do ácido 8’-apo-beta-carotenóico ou cantaxantina, com óleos ou gorduras vegetais, amido, gelatina, sacarose ou dextrina, próprias para colorir alimentos	31.45	33.15	\\r
32041913		0	Outras preparações próprias para colorir alimentos	31.45	38.06	\\r
32041919		0	Outras	31.45	38.94	\\r
32041920		0	Corantes solúveis em solventes (corantes solventes)	31.45	38.94	\\r
32041930		0	Corantes azóicos	31.45	38.94	\\r
32041990		0	Outras	31.45	38.94	\\r
32042011		0	Derivados do ácido 4,4-bis-(1,3,5)triazinil-6-aminoestilbeno-2,2-dissulfônico	31.45	38.94	\\r
32042019		0	Outros	31.45	38.94	\\r
32042090		0	Outros	31.45	38.94	\\r
32049000		0	-Outros	31.45	38.94	\\r
32050000		0	Lacas corantes. preparações indicadas na Nota 3 do presente Capítulo, à base de lacas corantes.	31.45	38.06	\\r
32061111		0	Com tamanho médio de partícula superior ou igual a 0,6 micrômetros (mícrons), com adição de modificadores	31.45	36.20	\\r
32061119		0	Outros	31.45	38.06	\\r
32061120		0	Outros pigmentos	31.45	38.06	\\r
32061130		0	Preparações	31.45	38.06	\\r
32061910		0	Pigmento constituído por mica revestida com película de dióxido de titânio	31.45	33.15	\\r
32061990		0	Outros	31.45	38.06	\\r
32062000		0	-Pigmentos e preparações à base de compostos de cromo	31.45	38.06	\\r
32064100		0	--Ultramar e suas preparações	31.45	33.15	\\r
32064210		0	Litopônio	31.45	33.15	\\r
32064290		0	Outros	31.45	38.06	\\r
32064910		0	Pigmentos e preparações à base de compostos de cádmio	31.45	38.06	\\r
32064920		0	Pigmentos e preparações à base de hexacianoferratos (ferrocianetos e ferricianetos)	31.45	38.06	\\r
32064990		0	Outras	31.45	38.06	\\r
32065011		0	Halofosfatos de cálcio ou de estrôncio	31.45	33.15	\\r
32065019		0	Outros	31.45	38.06	\\r
32065021		0	Halofosfatos de cálcio ou de estrôncio	31.45	33.15	\\r
32065029		0	Outros	31.45	33.15	\\r
32071010		0	À base de zircônio ou seus sais	31.45	38.06	\\r
32071090		0	Outros	31.45	38.06	\\r
32072010		0	Engobos	31.45	38.06	\\r
32072091		0	Com um teor, em peso, de prata superior ou igual a 25% ou de bismuto superior ou igual a 40%, dos tipos utilizados na fabricação de circuitos impressos	31.45	33.15	\\r
32072099		0	Outras	31.45	38.06	\\r
32073000		0	-Polimentos líquidos e preparações semelhantes	31.45	38.06	\\r
32074010		0	Fritas de vidro	31.45	38.06	\\r
32074090		0	Outros	31.45	38.06	\\r
32081010		0	Tintas	34.12	41.61	\\r
32081020		0	Vernizes	34.12	41.61	\\r
32081030		0	Soluções definidas na Nota 4 do presente Capítulo	34.12	41.61	\\r
32082011		0	À base de polímeros acrílicos, apresentadas em sortidos definidos na Nota 3 da Seção VI, dos tipos utilizados para a fabricação de circuitos impressos	34.12	35.82	\\r
32082019		0	Outras	34.12	41.61	\\r
32082020		0	Vernizes	34.12	41.61	\\r
32082030		0	Soluções definidas na Nota 4 do presente Capítulo	34.12	41.61	\\r
32089010		0	Tintas	34.12	41.61	\\r
32089021		0	À base de derivados de celulose	34.12	41.61	\\r
32089029		0	Outros	34.12	41.61	\\r
32089031		0	De silicones	36.55	44.04	\\r
32089039		0	Outras	36.55	44.04	\\r
32091010		0	Tintas	34.12	41.61	\\r
32091020		0	Vernizes	34.12	41.61	\\r
32099011		0	À base de politetrafluoretileno	34.12	41.61	\\r
32099019		0	Outras	34.12	41.61	\\r
32099020		0	Vernizes	34.12	41.61	\\r
32100010		0	Tintas	36.55	44.04	\\r
32100020		0	Vernizes	36.55	44.04	\\r
32100030		0	Pigmentos a água preparados, dos tipos utilizados para acabamento de couros	36.55	44.04	\\r
32110000		0	Secantes preparados.	36.55	44.04	\\r
32121000		0	-Folhas para marcar a ferro	36.55	44.04	\\r
32129010		0	Alumínio em pó ou em lamelas, empastado com solvente do tipo hidrocarbonetos, com teor de alumínio superior ou igual a 60%, em peso	36.55	44.04	\\r
32129090		0	Outros	36.55	44.04	\\r
32131000		0	-Cores em sortidos	35.85	43.34	\\r
32139000		0	-Outras	35.85	43.34	\\r
32141010		0	Mástique de vidraceiro, cimentos de resina e outros mástiques	36.55	44.04	\\r
32141020		0	Indutos utilizados em pintura	34.12	41.61	\\r
32149000		0	-Outros	30.12	37.61	\\r
32151100		0	--Pretas	31.45	38.94	\\r
32151900		0	--Outras	31.45	38.94	\\r
32159000		0	-Outras	31.45	38.94	\\r
33011210		0	De petit grain	38.25	45.74	\\r
33011290		0	Outros	38.25	45.74	\\r
33011300		0	--De limão	38.25	45.74	\\r
33011910		0	De lima	38.25	45.74	\\r
33011990		0	Outros	38.25	45.74	\\r
33012400		0	--De hortelã-pimenta (Mentha piperita)	38.25	45.74	\\r
33012510		0	De menta japonesa (Mentha arvensis)	38.25	44.86	\\r
33012520		0	De mentha spearmint (Mentha viridis L.)	38.25	39.95	\\r
33012590		0	Outros	38.25	39.95	\\r
33012911		0	De citronela	38.25	45.74	\\r
33012912		0	De cedro	38.25	39.95	\\r
33012913		0	De pau-santo (Bulnesia sarmientoi)	38.25	45.74	\\r
33012914		0	De lemongrass	38.25	45.74	\\r
33012915		0	De pau-rosa	38.25	45.74	\\r
33012916		0	De palma rosa	38.25	45.74	\\r
33012917		0	De coriandro	38.25	45.74	\\r
33012918		0	De cabreúva	38.25	45.74	\\r
33012919		0	De eucalipto	38.25	44.86	\\r
33012921		0	De alfazema ou lavanda	38.25	39.95	\\r
33012922		0	De vetiver	38.25	45.74	\\r
33012990		0	Outros	38.25	39.95	\\r
33013000		0	-Resinóides	38.25	39.95	\\r
33019010		0	Soluções concentradas de óleos essenciais em gorduras, em óleos fixos, em ceras ou em matérias análogas, obtidas por tratamento de flores através de substâncias gordas ou por maceração	38.25	45.74	\\r
33019020		0	Subprodutos terpênicos residuais da desterpenação dos óleos essenciais	38.25	45.74	\\r
33019030		0	Águas destiladas aromáticas e soluções aquosas de óleos essenciais	38.25	45.74	\\r
33019040		0	Oleorresinas de extração	38.25	43.00	\\r
33021000		0	-Dos tipos utilizados para as indústrias alimentares ou de bebidas	38.25	45.74	\\r
33029011		0	Vetiverol	38.25	45.74	\\r
33029019		0	Outras	38.25	45.74	\\r
33029090		0	Outras	38.25	45.74	\\r
33030010		0	Perfumes (extratos)	57.66	66.82	\\r
33030020		0	Águas-de-colônia	47.07	56.23	\\r
33041000		0	-Produtos de maquiagem para os lábios	51.18	60.34	\\r
33042010		0	Sombra, delineador, lápis para sobrancelhas e rímel	51.18	60.34	\\r
33042090		0	Outros	51.18	60.34	\\r
33043000		0	-Preparações para manicuros e pedicuros	51.18	60.34	\\r
33049100		0	--Pós, incluindo os compactos	51.18	60.34	\\r
33049100	01	0	Ex 01 - Talco e polvilho com ou sem perfume	47.07	56.23	\\r
33049910		0	Cremes de beleza e cremes nutritivos. loções tônicas	51.18	60.34	\\r
33049990		0	Outros	51.18	60.34	\\r
33049990	01	0	Ex 01 - Preparados bronzeadores	42.40	51.56	\\r
33049990	02	0	Ex 02 - Preparados anti-solares, exceto os que possuam propriedades de bronzeadores	36.39	45.55	\\r
33051000		0	-Xampus	38.55	47.71	\\r
33052000		0	-Preparações para ondulação ou alisamento, permanentes, dos cabelos	51.18	60.34	\\r
33053000		0	-Laquês para o cabelo	51.18	60.34	\\r
33059000		0	-Outras	51.18	60.34	\\r
33059000	01	0	Ex 01 - Condicionadores	44.73	53.89	\\r
33061000		0	-Dentifrícios (dentífricos)	20.24	29.40	\\r
33062000		0	-Fios utilizados para limpar os espaços interdentais (fios dentais)	24.24	32.58	\\r
33069000		0	-Outras	24.24	33.40	\\r
33071000		0	-Preparações para barbear (antes, durante ou após)	46.51	55.67	\\r
33072010		0	Líquidos	38.55	47.71	\\r
33072090		0	Outros	38.55	47.71	\\r
33073000		0	-Sais perfumados e outras preparações para banhos	51.18	60.34	\\r
33074100		0	--Agarbate e outras preparações odoríferas que atuem por combustão	51.18	60.34	\\r
33074900		0	--Outras	51.18	60.34	\\r
33079000		0	-Outros	51.18	60.34	\\r
33079000	01	0	Ex 01 - Soluções para lentes de contato ou para olhos artificiais	42.40	51.56	\\r
34011110		0	Sabões medicinais	34.12	43.28	\\r
34011190		0	Outros	34.12	43.28	\\r
34011900		0	--Outros	34.12	43.28	\\r
34011900	01	0	Ex 01 - Papel, pastas (“ouates”), feltros e falsos tecidos, impregnados, revestidos ou recobertos de sabão ou de detergentes	36.55	45.71	\\r
34011900	02	0	Ex 02 - Produtos e preparações orgânicos tensoativos utilizados como sabão	36.55	45.71	\\r
34011900	03	0	Ex 03 - Sabão	31.45	40.61	\\r
34012010		0	De toucador	34.12	43.28	\\r
34012090		0	Outros	34.12	43.28	\\r
34013000		0	-Produtos e preparações orgânicos tensoativos para lavagem da pele, em forma de líquido ou de creme, acondicionados para venda a retalho, mesmo que contenham sabão	36.55	45.71	\\r
34021110		0	Dibutilnaftalenossulfato de sódio	34.12	35.82	\\r
34021120		0	N-Metil-N-oleiltaurato de sódio	34.12	35.82	\\r
34021130		0	Alquilsulfonato de sódio, secundário	34.12	35.82	\\r
34021140		0	Misturas de ácidos alquilbenzenossulfônicos	34.12	41.61	\\r
34021190		0	Outros	34.12	41.61	\\r
34021210		0	Acetato de oleilamina	34.12	35.82	\\r
34021290		0	Outros	34.12	41.61	\\r
34021300		0	--Não iônicos	34.12	41.61	\\r
34021900		0	--Outros	34.12	41.61	\\r
34022000		0	-Preparações acondicionadas para venda a retalho	34.12	43.28	\\r
34029011		0	Que contenham exclusivamente produtos não iônicos	34.12	41.61	\\r
34029019		0	Outras	34.12	41.61	\\r
34029021		0	Soluções ou emulsões hidroalcoólicas de (1-perfluoralquil-2-acetoxi)propil-betaína	34.12	35.82	\\r
34029022		0	À base de nonanoiloxibenzenossulfonato de sódio	34.12	35.82	\\r
34029023		0	Soluções ou emulsões hidroalcoólicas de sulfonatos de perfluoralquiltrimetilamônio e de perfluoralquilacrilamida	34.12	35.82	\\r
34029029		0	Outras	34.12	43.28	\\r
34029031		0	À base de nonilfenol etoxilado	34.12	43.28	\\r
34029039		0	Outras	34.12	43.28	\\r
34029090		0	Outras	34.12	43.28	\\r
34031110		0	Para o tratamento de matérias têxteis	38.77	46.26	\\r
34031120		0	Para o tratamento de couros e peles	38.77	46.26	\\r
34031190		0	Outras	38.77	46.26	\\r
34031900		0	--Outras	38.77	46.26	\\r
34039110		0	Para o tratamento de matérias têxteis	38.77	46.26	\\r
34039120		0	Para o tratamento de couros e peles	38.77	46.26	\\r
34039190		0	Outras	38.77	46.26	\\r
34039900		0	--Outras	38.77	46.26	\\r
34042010		0	Ceras artificiais	38.77	46.26	\\r
34042020		0	Ceras preparadas	38.77	46.26	\\r
34049011		0	De polietileno, emulsionáveis	38.77	46.26	\\r
34049012		0	Outras, de polietileno	38.77	46.26	\\r
34049013		0	De polipropilenoglicóis	38.77	46.26	\\r
34049014		0	De dímero de alquilceteno com dois grupos alternados n-alquila de C12, C14 e C16, em grânulos	38.77	40.47	\\r
34049019		0	Outras	38.77	46.26	\\r
34049021		0	À base de vaselina e álcoois de lanolina (eucerina anidra)	38.77	40.47	\\r
34049029		0	Outras	38.77	46.26	\\r
34051000		0	-Pomadas, cremes e preparações semelhantes, para calçados ou para couros	36.55	44.89	\\r
34052000		0	-Encáusticas e preparações semelhantes, para conservação e limpeza de móveis de madeira, soalhos e de outros artigos de madeira	36.55	44.89	\\r
34053000		0	-Preparações para dar brilho a pinturas de carroçarias e produtos semelhantes, exceto preparações para dar brilho a metais	36.55	44.89	\\r
34054000		0	-Pastas, pós e outras preparações para arear	36.55	44.89	\\r
34059000		0	-Outros	36.55	44.89	\\r
34060000		0	Velas, pavios, círios e artigos semelhantes.	31.45	39.79	\\r
34070010		0	Pastas para modelar	36.55	44.89	\\r
34070020		0	“Ceras para dentistas”	36.55	44.89	\\r
34070090		0	Outras	36.55	44.89	\\r
35011000		0	-Caseínas	31.45	38.94	\\r
35019011		0	Caseinato de sódio	31.45	38.94	\\r
35019019		0	Outros	31.45	38.94	\\r
35019020		0	Colas de caseína	31.45	38.94	\\r
35021100		0	--Seca	31.45	38.94	\\r
35021900		0	--Outra	31.45	38.94	\\r
35022000		0	-Lactalbumina, incluindo os concentrados de duas ou mais proteínas de soro de leite	31.45	38.94	\\r
35029010		0	Soroalbumina	31.45	33.15	\\r
35029090		0	Outros	31.45	38.94	\\r
35030011		0	De osseína, com grau de pureza superior ou igual a 99,98%, em peso	31.45	33.15	\\r
35030012		0	De osseína, com grau de pureza inferior a 99,98%, em peso	31.45	38.94	\\r
35030019		0	Outros	31.45	38.94	\\r
35030090		0	Outras	31.45	38.94	\\r
35040011		0	Peptonas e peptonatos	31.45	38.94	\\r
35040019		0	Outros	31.45	38.94	\\r
35040020		0	Proteínas de soja em pó, com teor de proteínas superior ou igual a 90%, em peso, em base seca	31.45	38.94	\\r
35040030		0	Proteínas de batata em pó, com teor de proteínas superior ou igual a 80%, em peso, em base seca	31.45	33.15	\\r
35040090		0	Outros	31.45	38.94	\\r
35051000		0	-Dextrina e outros amidos e féculas modificados	31.45	38.94	\\r
35052000		0	-Colas	31.45	38.94	\\r
35061010		0	À base de cianoacrilatos	30.75	39.09	\\r
35061090		0	Outros	30.75	39.09	\\r
35069110		0	À base de borracha	30.75	39.09	\\r
35069120		0	À base de polímeros das posições 39.01 a 39.13, dispersos ou para dispersar em meio aquoso	30.75	39.09	\\r
35069190		0	Outros	30.75	39.09	\\r
35069900		0	--Outros	30.75	39.09	\\r
35071000		0	-Coalho e seus concentrados	31.45	38.94	\\r
35079011		0	Alfa-amilase (Aspergillus oryzae)	31.45	38.94	\\r
35079019		0	Outros	31.45	38.94	\\r
35079021		0	Fibrinucleases	31.45	38.94	\\r
35079022		0	Bromelina	31.45	33.15	\\r
35079023		0	Estreptoquinase	31.45	38.94	\\r
35079024		0	Estreptodornase	31.45	38.94	\\r
35079025		0	Mistura de estreptoquinase e estreptodornase	31.45	38.94	\\r
35079026		0	Papaína	31.45	38.94	\\r
35079029		0	Outros	31.45	38.94	\\r
35079031		0	Lisozima e seu cloridrato	31.45	33.15	\\r
35079032		0	L-Asparaginase	31.45	33.15	\\r
35079039		0	Outros	31.45	38.94	\\r
35079041		0	À base de celulases	31.45	38.94	\\r
35079042		0	À base de transglutaminase	31.45	33.15	\\r
35079049		0	Outras	31.45	38.94	\\r
36010000		0	Pólvoras propulsivas.	42.67	49.28	\\r
36020000		0	Explosivos preparados, exceto pólvoras propulsivas.	40.80	47.41	\\r
36020000	01	0	Ex 01 - À base de poliácoois (dinamite). outros explosivos preparados com efeito equivalente ao da dinamite	34.12	40.73	\\r
36030000		0	Estopins e rastilhos, de segurança. cordéis detonantes. fulminantes e cápsulas fulminantes. escorvas. detonadores elétricos.	40.80	47.41	\\r
36041000		0	-Fogos de artifício	49.06	56.55	\\r
36049010		0	Foguetes e cartuchos contra o granizo e semelhantes	41.21	43.96	\\r
36049090		0	Outros	49.06	56.55	\\r
36049090	01	0	Ex 01 - Foguetes e artigos semelhantes para sinalização	41.21	48.70	\\r
36050000		0	Fósforos, exceto os artigos de pirotecnia da posição 36.04.	31.45	38.94	\\r
36061000		0	-Combustíveis líquidos e combustíveis gasosos liquefeitos, em recipientes dos tipos utilizados para carregar ou recarregar isqueiros ou acendedores, com capacidade não superior a 300 cm3	40.80	48.29	\\r
36069000		0	-Outros	40.80	48.29	\\r
37011010		0	Sensibilizados em uma face	31.45	38.94	\\r
37011021		0	Próprios para uso odontológico	31.45	33.15	\\r
37011029		0	Outros	31.45	38.94	\\r
37012010		0	Para fotografia a cores (policromo)	38.77	40.47	\\r
37012020		0	Para fotografia monocromática	38.77	40.47	\\r
37013010		0	Para fotografia a cores (policromo)	38.77	40.47	\\r
37013021		0	De alumínio	38.77	46.26	\\r
37013022		0	De poliéster	38.77	40.47	\\r
37013029		0	Outras	38.77	46.26	\\r
37013031		0	De alumínio	38.77	46.26	\\r
37013039		0	Outras	38.77	46.26	\\r
37013040		0	Filmes para as artes gráficas	38.77	46.26	\\r
37013050		0	Filmes heliográficos, de poliéster	38.77	46.26	\\r
37019100		0	--Para fotografia a cores (policromo)	38.77	40.47	\\r
37019900		0	--Outros	38.77	46.26	\\r
37021010		0	Sensibilizados em uma face	31.45	38.94	\\r
37021020		0	Sensibilizados em ambas as faces	31.45	38.94	\\r
37023100		0	--Para fotografia a cores (policromo)	38.77	40.47	\\r
37023200		0	--Outros, que contenham uma emulsão de halogenetos de prata	38.77	40.47	\\r
37023900		0	--Outros	38.77	46.26	\\r
37024100		0	--De largura superior a 610 mm e comprimento superior a 200 m, para fotografia a cores (policromo)	38.77	40.47	\\r
37024210		0	Para as artes gráficas	38.77	46.26	\\r
37024290		0	Outros	38.77	40.47	\\r
37024310		0	Para as artes gráficas	38.77	46.26	\\r
37024320		0	Heliográficos, de poliéster	38.77	46.26	\\r
37024390		0	Outros	38.77	40.47	\\r
37024410		0	Para fotografia a cores (policromo)	38.77	40.47	\\r
37024421		0	Para as artes gráficas	38.77	46.26	\\r
37024422		0	Fotopolimerizáveis, sensibilizadas à base de compostos acrílicos, dos tipos utilizados para a fabricação de circuitos impressos	38.77	40.47	\\r
37024429		0	Outros	38.77	46.26	\\r
37025200		0	--De largura não superior a 16 mm	38.77	40.47	\\r
37025200	01	0	Ex 01 - Filmes cinematográficos de 16 mm de largura e comprimento superior a 14m	31.45	33.15	\\r
37025300		0	--De largura superior a 16 mm, mas não superior a 35 mm, e comprimento não superior a 30 m, para diapositivos	38.77	40.47	\\r
37025411		0	Em bobinas (filmpacks)	38.77	40.47	\\r
37025412		0	De 12 exposições (0,5 m de comprimento), de 24 exposições (1,0 m de comprimento) ou de 36 exposições (1,5 m de comprimento)	38.77	44.47	\\r
37025419		0	Outros	38.77	46.26	\\r
37025491		0	Em bobinas (filmpacks)	38.77	40.47	\\r
37025499		0	Outros	38.77	46.26	\\r
37025510		0	De largura igual a 35 mm	31.45	37.15	\\r
37025590		0	Outros	38.77	46.26	\\r
37025600		0	--De largura superior a 35 mm	38.77	40.47	\\r
37029600		0	--De largura não superior a 35 mm e comprimento não superior a 30 m	38.77	40.47	\\r
37029600	01	0	Ex 01 - De largura não superior a 16mm e comprimento superior a 14 metros	31.45	33.15	\\r
37029700		0	--De largura não superior a 35 mm e comprimento superior a 30 m	31.45	33.15	\\r
37029700	01	0	Ex 01 - De largura não superior a 16mm	38.77	40.47	\\r
37029800		0	--De largura superior a 35 mm	38.77	46.26	\\r
37031010		0	Para fotografia a cores (policromo)	38.77	46.26	\\r
37031021		0	Papel heliográfico	38.77	46.26	\\r
37031029		0	Outros	38.77	46.26	\\r
37032000		0	-Outros, para fotografia a cores (policromo)	38.77	40.47	\\r
37039010		0	Papel para fotocomposição	38.77	46.26	\\r
37039090		0	Outros	38.77	46.26	\\r
37040000		0	Chapas, filmes, papéis, cartões e têxteis, fotográficos, impressionados mas não revelados.	34.12	41.61	\\r
37040000	01	0	Ex 01 - Chapas e filmes	31.45	38.94	\\r
37051000		0	-Para reprodução ofsete	31.45	38.94	\\r
37059010		0	Fotomáscaras sobre vidro plano, positivas, próprias para gravação em pastilhas de silício (chips) para fabricação de microestruturas eletrônicas	31.45	32.05	\\r
37059090		0	Outros	31.45	38.94	\\r
37061000		0	-De largura igual ou superior a 35 mm	31.45	38.94	\\r
37069000		0	-Outros	31.45	38.94	\\r
37071000		0	-Emulsões para sensibilização de superfícies	38.77	46.26	\\r
37079010		0	Fixadores	38.77	46.26	\\r
37079021		0	À base de negro-de-carbono ou de um corante e resinas termoplásticas, para a reprodução de documentos por processo eletrostático	38.77	46.26	\\r
37079029		0	Outros	38.77	46.26	\\r
37079030		0	Compostos diazóicos fotossensíveis para preparação de emulsões	38.77	40.47	\\r
37079090		0	Outros	38.77	46.26	\\r
38011000		0	-Grafita artificial	31.45	33.15	\\r
38012010		0	Suspensão semicoloidal em óleos minerais	36.55	42.25	\\r
38012090		0	Outros	36.55	42.25	\\r
38013010		0	Pasta carbonada para eletrodos	36.55	38.25	\\r
38013090		0	Outras	36.55	38.25	\\r
38019000		0	-Outras	36.55	42.25	\\r
38021000		0	-Carvões ativados	31.45	38.06	\\r
38029010		0	Farinhas siliciosas fósseis	31.45	38.06	\\r
38029020		0	Bentonita	31.45	38.06	\\r
38029030		0	Atapulgita	31.45	33.15	\\r
38029040		0	Outras argilas e terras	31.45	38.06	\\r
38029050		0	Bauxita	31.45	33.15	\\r
38029090		0	Outros	31.45	38.06	\\r
38030000		0	Tall oil, mesmo refinado.	31.45	38.06	\\r
38040011		0	Ao sulfito	31.45	37.15	\\r
38040012		0	À soda ou ao sulfato	36.55	42.25	\\r
38040020		0	Lignossulfonatos	31.45	37.15	\\r
38051000		0	-Essências de terebintina, de pinheiro ou provenientes da fabricação da pasta de papel ao sulfato	31.45	38.94	\\r
38059010		0	Óleo de pinho	36.55	44.04	\\r
38059090		0	Outros	31.45	38.94	\\r
38061000		0	-Colofônias e ácidos resínicos	31.45	38.06	\\r
38062000		0	-Sais de colofônias, de ácidos resínicos ou de derivados de colofônias ou de ácidos resínicos, exceto os sais de aductos de colofônias	31.45	38.94	\\r
38063000		0	-Gomas ésteres	36.55	44.04	\\r
38069011		0	Colofônias oxidadas, hidrogenadas, desidrogenadas, polimerizadas ou modificadas com ácidos fumárico ou maléico ou com anidrido maléico	31.45	38.94	\\r
38069012		0	Abietatos de metila ou de benzila. hidroabietato de metila	31.45	38.94	\\r
38069019		0	Outros	31.45	38.94	\\r
38069090		0	Outros	31.45	38.94	\\r
38069090	01	0	Ex 01 - Gomas fundidas	36.55	44.04	\\r
38070000		0	Alcatrões de madeira. óleos de alcatrão de madeira. creosoto de madeira. metileno. breu (pez) vegetal. breu (pez) para a indústria da cerveja e preparações semelhantes à base de colofônias, de ácidos resínicos ou de breu (pez) vegetal.	31.45	38.94	\\r
38070000	01	0	Ex 01 - Solventes e diluentes compostos para vernizes ou produtos semelhantes	36.55	44.04	\\r
38085010		0	Apresentados em formas ou embalagens exclusivamente para uso direto em aplicações domissanitárias	20.11	27.60	\\r
38085021		0	À base de metamidofós ou monocrotofós	20.11	27.60	\\r
38085029		0	Outros	20.11	24.86	\\r
38085029	01	0	Ex 01 - Desinfetantes sem propriedades acessórias odoríferas e desodorizantes de ambientes, exceto à base de hipoclorito de sódio	22.78	27.53	\\r
38085029	02	0	Ex 02 - Desinfetantes com propriedades acessórias odoríferas ou desodorizantes de ambientes	33.06	37.81	\\r
38089111		0	Que contenham bromometano (brometo de metila) ou bromoclorometano	20.11	27.60	\\r
38089119		0	Outros	20.11	27.60	\\r
38089120		0	Apresentados de outro modo, contendo bromometano (brometo de metila) ou bromoclorometano	20.11	27.60	\\r
38089191		0	À base de acefato ou de Bacillus thuringiensis	20.11	27.60	\\r
38089192		0	À base de cipermetrinas ou de permetrina	20.11	27.60	\\r
38089193		0	À base de dicrotofós	20.11	27.60	\\r
38089194		0	À base de dissulfoton ou de endossulfan	20.11	27.60	\\r
38089195		0	À base de fosfeto de alumínio	20.11	27.60	\\r
38089196		0	À base de diclorvós ou de triclorfon	20.11	27.60	\\r
38089197		0	À base de óleo mineral ou de tiometon	20.11	27.60	\\r
38089198		0	À base de sulfluramida	20.11	26.72	\\r
38089199		0	Outros	20.11	24.86	\\r
38089211		0	Que contenham bromometano (brometo de metila) ou bromoclorometano	20.11	27.60	\\r
38089219		0	Outros	20.11	27.60	\\r
38089220		0	Apresentados de outro modo, contendo bromometano (brometo de metila) ou bromoclorometano	20.11	27.60	\\r
3808929		0	Outros	20.11	20.71	\\r
38089291		0	À base de hidróxido de cobre, de oxicloreto de cobre ou de óxido cuproso	20.11	27.60	\\r
38089292		0	À base de enxofre ou de ziram	20.11	27.60	\\r
38089293		0	À base de mancozeb ou de maneb	20.11	27.60	\\r
38089294		0	À base de sulfiram	20.11	27.60	\\r
38089295		0	À base de compostos de arsênio, cobre ou cromo, exceto os produtos do subitem 3808.92.91	20.11	27.60	\\r
38089296		0	À base de thiram	20.11	27.60	\\r
38089297		0	À base de propiconazol	20.11	26.72	\\r
38089299		0	Outros	20.11	24.86	\\r
38089311		0	Que contenham bromometano (brometo de metila) ou bromoclorometano	20.11	27.60	\\r
38089319		0	Outros	20.11	27.60	\\r
38089321		0	Que contenham bromometano (brometo de metila) ou bromoclorometano	20.11	27.60	\\r
38089322		0	Outros, à base de ácido 2,4-diclorofenoxiacético (2,4-D), de ácido 4-(2,4-diclorofenoxi)butírico (2,4-DB), de ácido (4-cloro-2-metil)fenoxiacético (MCPA) ou de derivados de 2,4-D ou 2,4-DB	20.11	27.60	\\r
38089323		0	Outros, à base de alaclor, de ametrina, de atrazina ou de diuron	20.11	27.60	\\r
38089324		0	Outros, à base de glifosato ou seus sais, de imazaquim ou de lactofen	20.11	27.60	\\r
38089325		0	Outros, à base de dicloreto de paraquat, de propanil ou de simazina	20.11	27.60	\\r
38089326		0	Outros, à base de trifluralina	20.11	27.60	\\r
38089327		0	Outros, à base de imazetapir	20.11	26.72	\\r
38089329		0	Outros	20.11	24.86	\\r
38089331		0	Que contenham bromometano (brometo de metila) ou bromoclorometano	20.11	27.60	\\r
38089332		0	Outros, apresentados em formas ou embalagens exclusivamente para uso direto em aplicações domissanitárias	20.11	27.60	\\r
38089333		0	Outros	20.11	24.86	\\r
38089341		0	Que contenham bromometano (brometo de metila) ou bromoclorometano	20.11	27.60	\\r
38089349		0	Outros	20.11	27.60	\\r
38089351		0	Que contenham bromometano (brometo de metila) ou bromoclorometano	20.11	27.60	\\r
38089352		0	Outros, à base de hidrazida maléica	20.11	27.60	\\r
38089359		0	Outros	20.11	24.86	\\r
38089411		0	Que contenham bromometano (brometo de metila) ou bromoclorometano	22.78	30.27	\\r
38089411	01	0	Ex 01 - Com propriedades acessórias odoríferas ou desodorizantes de ambientes, apresentados em embalagem tipo aerossol	33.06	40.55	\\r
38089419		0	Outros	22.78	30.27	\\r
38089419	01	0	Ex 01 - Com propriedades acessórias odoríferas ou desodorizantes de ambientes, apresentados em embalagem tipo aerossol	33.06	40.55	\\r
38089419	02	0	Ex 02 - À base de hipoclorito de sódio	20.11	27.60	\\r
38089421		0	Que contenham bromometano (brometo de metila) ou bromoclorometano	22.78	30.27	\\r
38089421	01	0	Ex 01 - Com propriedades acessórias odoríferas ou desodorizantes de ambientes	33.06	40.55	\\r
38089422		0	Outros, à base de 2-(tiocianometiltio) benzotiazol	22.78	30.27	\\r
38089422	01	0	Ex 01 - Com propriedades acessórias odoríferas ou desodorizantes de ambientes	33.06	40.55	\\r
38089429		0	Outros	22.78	27.53	\\r
38089429	01	0	Ex 01 - Com propriedades acessórias odoríferas ou desodorizantes de ambientes	33.06	37.81	\\r
38089429	02	0	Ex 02 - À base de hipoclorito de sódio	20.11	24.86	\\r
38089911		0	Que contenham bromometano (brometo de metila) ou bromoclorometano	20.11	27.60	\\r
38089919		0	Outros	20.11	27.60	\\r
38089920		0	Apresentados de outro modo, contendo bromometano (brometo de metila) ou bromoclorometano	20.11	27.60	\\r
38089991		0	Acaricidas à base de amitraz, de clorfenvinfós ou de propargite	20.11	27.60	\\r
38089992		0	Acaricidas à base de ciexatin ou de óxido de fembutatin (óxido de fenbutatin)	20.11	27.60	\\r
38089993		0	Outros acaricidas	20.11	24.86	\\r
38089994		0	Nematicidas à base de metam sódio	20.11	27.60	\\r
38089995		0	Outros nematicidas	20.11	24.86	\\r
38089996		0	Raticidas	20.11	24.86	\\r
38089999		0	Outros	20.11	24.86	\\r
38091010		0	Dos tipos utilizados na indústria têxtil	31.45	38.94	\\r
38091090		0	Outros	31.45	38.94	\\r
38099110		0	Aprestos preparados	31.45	38.94	\\r
38099120		0	Preparações mordentes	31.45	38.94	\\r
38099130		0	Produtos ignífugos	36.55	44.04	\\r
38099141		0	À base de parafina ou de derivados de ácidos graxos	36.55	44.04	\\r
38099149		0	Outros	36.55	44.04	\\r
38099190		0	Outros	31.45	38.94	\\r
38099211		0	À base de parafina ou de derivados de ácidos graxos	36.55	44.04	\\r
38099219		0	Outros	36.55	44.04	\\r
38099290		0	Outros	31.45	38.94	\\r
38099290	01	0	Ex 01 - Preparações ignífugas	36.55	44.04	\\r
38099311		0	À base de parafina ou de derivados de ácidos graxos	36.55	44.04	\\r
38099319		0	Outros	36.55	44.04	\\r
38099390		0	Outros	31.45	38.94	\\r
38099390	01	0	Ex 01 - Preparações ignífugas	36.55	44.04	\\r
38101010		0	Preparações para decapagem de metais	31.45	38.94	\\r
38101020		0	Pastas e pós para soldar	31.45	38.94	\\r
38109000		0	-Outros	31.45	38.94	\\r
38111100		0	--À base de compostos de chumbo	35.60	37.30	\\r
38111900		0	--Outras	35.60	37.30	\\r
38112110		0	Melhoradores do índice de viscosidade	35.60	43.09	\\r
38112120		0	Antidesgastes, anticorrosivos ou antioxidantes, contendo dialquilditiofosfato de zinco ou diarilditiofosfato de zinco	35.60	43.09	\\r
38112130		0	Dispersantes sem cinzas	35.60	43.09	\\r
38112140		0	Detergentes metálicos	35.60	43.09	\\r
38112150		0	Outras preparações contendo, pelo menos, um de quaisquer dos produtos compreendidos nos itens 3811.21.10, 3811.21.20, 3811.21.30 e 3811.21.40	35.60	43.09	\\r
38112190		0	Outros	35.60	37.30	\\r
38112910		0	Dispersantes sem cinzas	35.60	43.09	\\r
38112920		0	Detergentes metálicos	35.60	43.09	\\r
38112990		0	Outros	35.60	43.09	\\r
38119010		0	Dispersantes sem cinzas, para óleos de petróleo combustíveis	35.60	43.09	\\r
38119090		0	Outros	35.60	37.30	\\r
38121000		0	-Preparações denominadas “aceleradores de vulcanização”	36.55	44.04	\\r
38122000		0	-Plastificantes compostos para borracha ou plásticos	36.55	44.04	\\r
38123011		0	Que contenham derivados N-substituídos de p-fenilenodiamina	36.55	44.04	\\r
38123012		0	Que contenham fosfitos de alquila, de arila ou de alquil-arila	36.55	44.04	\\r
38123013		0	Que contenham 2,2,4-trimetil-1,2-diidroquinoleína polimerizada	36.55	44.04	\\r
38123019		0	Outros	36.55	38.25	\\r
38123021		0	Que contenham derivados N-substituídos de p-fenilenodiamina	36.55	44.04	\\r
38123029		0	Outros	36.55	44.04	\\r
38130010		0	Que contenham bromoclorodifluorometano, bromotrifluorometano ou dibromotetrafluoroetanos	35.60	43.09	\\r
38130020		0	Que contenham hidrobromofluorcarbonetos do metano, do etano ou do propano (HBFC)	35.60	43.09	\\r
38130030		0	Que contenham hidroclorofluorcarbonetos do metano, do etano ou do propano (HCFC)	35.60	43.09	\\r
38130040		0	Que contenham bromoclorometano	35.60	43.09	\\r
38130090		0	Outros	35.60	43.09	\\r
38140010		0	Que contenham clorofluorcarbonetos do metano, do etano ou do propano (CFC), mesmo que contenham hidroclorofluorcarbonetos (HCFC)	41.21	48.70	\\r
38140020		0	Que contenham hidroclorofluorcarbonetos do metano, do etano ou do propano (HCFC), mas que não contenham clorofluorcarbonetos (CFC)	41.21	48.70	\\r
38140030		0	Que contenham tetracloreto de carbono, bromoclorometano ou 1,1,1-tricloroetano (metilclorofórmio)	36.55	44.04	\\r
38140090		0	Outros	36.55	44.04	\\r
38151100		0	--Tendo como substância ativa o níquel ou um composto de níquel	36.55	38.25	\\r
38151210		0	Em colméia cerâmica ou metálica para conversão catalítica de gases de escape de veículos	36.55	43.16	\\r
38151220		0	Com tamanho de partícula inferior a 500 micrômetros (mícrons)	36.55	43.16	\\r
38151290		0	Outros	36.55	38.25	\\r
38151900		0	--Outros	36.55	38.25	\\r
38159010		0	Para craqueamento de petróleo	31.45	34.20	\\r
38159091		0	Tendo como substância ativa o isoprenilalumínio (IPRA)	36.55	38.25	\\r
38159092		0	Tendo como substância ativa o óxido de zinco	36.55	43.16	\\r
38159099		0	Outros	36.55	39.30	\\r
38160011		0	À base de magnesita calcinada	34.12	41.61	\\r
38160012		0	À base de silimanita	34.12	35.82	\\r
38160019		0	Outros	34.12	41.61	\\r
38160021		0	Que contenham grafita e 50% ou mais, em peso, de coríndon	36.55	38.25	\\r
38160029		0	Outras	36.55	44.04	\\r
38160090		0	Outros	36.55	44.04	\\r
38170010		0	Misturas de alquilbenzenos	36.55	43.16	\\r
38170020		0	Misturas de alquilnaftalenos	36.55	44.04	\\r
38180010		0	De silício	36.55	38.25	\\r
38180090		0	Outros	36.55	38.25	\\r
38190000		0	Fluidos para freios hidráulicos e outros líquidos preparados para transmissões hidráulicas, que não contenham óleos de petróleo nem de minerais betuminosos, ou que os contenham em proporção inferior a 70%, em peso.	36.55	44.04	\\r
38200000		0	Preparações anticongelantes e líquidos preparados para descongelamento.	36.55	44.04	\\r
38210000		0	Meios de cultura preparados para o desenvolvimento e a manutenção de microrganismos (incluindo os vírus e os organismos similares) ou de células vegetais, humanas ou animais.	31.45	38.94	\\r
38220010		0	Reagentes para determinação de componentes do sangue ou da urina, sobre suporte de papel, em rolos, sem suporte adicional hidrófobo, impróprios para uso direto	31.45	33.15	\\r
38220090		0	Outros	31.45	38.94	\\r
38231100		0	--Ácido esteárico	31.45	35.22	\\r
38231200		0	--Ácido oleico	31.45	35.22	\\r
38231300		0	--Ácidos graxos do tall oil	31.45	33.15	\\r
38231900		0	--Outros	31.45	33.15	\\r
38237010		0	Esteárico	31.45	33.15	\\r
38237020		0	Láurico	31.45	33.15	\\r
38237030		0	Outras misturas de álcoois primários alifáticos	31.45	33.15	\\r
38237090		0	Outros	31.45	33.15	\\r
38237090	01	0	Ex 01 - Com características de ceras artificiais	38.77	40.47	\\r
38241000		0	-Aglutinantes preparados para moldes ou para núcleos de fundição	36.55	44.04	\\r
38243000		0	-Carbonetos metálicos não aglomerados, misturados entre si ou com aglutinantes metálicos	36.55	44.04	\\r
38244000		0	-Aditivos preparados para cimentos, argamassas ou concretos	36.55	44.04	\\r
38245000		0	-Argamassas e concretos, não refratários	34.12	41.61	\\r
38246000		0	-Sorbitol, exceto o da subposição 2905.44	36.55	44.04	\\r
38247110		0	Que contenham triclorotrifluoroetanos	36.55	38.25	\\r
38247190		0	Outras	36.55	44.04	\\r
38247200		0	--Que contenham bromoclorodifluorometano, bromotrifluorometano ou dibromotetrafluoroetanos	36.55	44.04	\\r
38247300		0	--Que contenham hidrobromofluorcarbonetos (HBFC)	36.55	44.04	\\r
38247410		0	Que contenham clorodifluormetano e pentafluoretano	36.55	38.25	\\r
38247420		0	Que contenham clorodifluormetano e clorotetrafluoretano	36.55	38.25	\\r
38247490		0	Outras	36.55	44.04	\\r
38247500		0	--Que contenham tetracloreto de carbono	36.55	44.04	\\r
38247600		0	--Que contenham 1,1,1-tricloroetano (metilclorofórmio)	36.55	44.04	\\r
38247700		0	--Que contenham bromometano (brometo de metila) ou bromoclorometano	36.55	44.04	\\r
38247810		0	Que contenham tetrafluoretano e pentafluoretano	36.55	38.25	\\r
38247890		0	Outras	36.55	44.04	\\r
38247900		0	--Outras	36.55	44.04	\\r
38248110		0	Mistura de óxido de propileno com um conteúdo de óxido de etileno inferior ou igual a 30%, em peso	36.55	44.04	\\r
38248190		0	Outras	36.55	44.04	\\r
38248200		0	--Que contenham polibromobifenilas (PBB), policloroterfenilas (PCT) ou policlorobifenilas (PCB)	36.55	44.04	\\r
38248300		0	--Que contenham fosfato de tris(2,3-dibromopropila)	36.55	44.04	\\r
38249011		0	Salinomicina micelial	36.55	44.04	\\r
38249012		0	Com teor de cianocobalamina inferior ou igual a 55%, em peso	36.55	38.25	\\r
38249013		0	Da fabricação da primicina amônica	36.55	38.25	\\r
38249014		0	Senduramicina sódica, da fabricação da senduramicina	36.55	38.25	\\r
38249015		0	Maduramicina amônica, em solução alcoólica, da fabricação da maduramicina	36.55	38.25	\\r
38249019		0	Outros	36.55	44.04	\\r
38249021		0	Ácidos graxos dimerizados. preparações contendo ácidos graxos dimerizados	36.55	38.25	\\r
38249022		0	Preparações contendo estearoilbenzoilmetano e palmitoilbenzoilmetano. preparações contendo caprilato e caprato de propilenoglicol	36.55	38.25	\\r
38249023		0	Preparações contendo triglicerídios dos ácidos caprílico e cáprico	36.55	44.04	\\r
38249024		0	Ésteres de álcoois graxos de C12 a C20 do ácido metacrílico e suas misturas. ésteres de ácidos monocarboxílicos de C10 ramificados com glicerol	36.55	38.25	\\r
38249025		0	Misturas de ésteres dimetílicos dos ácidos adípico, glutárico e succínico. misturas de ácidos dibásicos de C11 e C12. ácidos naftênicos, seus sais insolúveis em água e seus ésteres	36.55	38.25	\\r
38249029		0	Outros	35.85	43.34	\\r
38249031		0	Que contenham isocianatos de hexametileno ou outros isocianatos	36.55	44.04	\\r
38249032		0	Que contenham aminas graxas de C8 a C22	36.55	44.04	\\r
38249033		0	Que contenham polietilenoaminas e dietilenotriaminas, próprias para a coagulação do látex	36.55	38.25	\\r
38249034		0	Outras, contendo polietilenoaminas	36.55	44.04	\\r
38249035		0	Misturas de mono-, di- e triisopropanolaminas	36.55	44.04	\\r
38249036		0	Reticulantes para silicones	36.55	38.25	\\r
38249039		0	Outras	36.55	44.04	\\r
38249041		0	Preparações desincrustantes, anticorrosivas ou antioxidantes	31.45	38.94	\\r
38249042		0	Mistura eutética de difenila e óxido de difenila	36.55	41.30	\\r
38249043		0	À base de trimetil-3,9-dietildecano	36.55	38.25	\\r
38249049		0	Outros	36.55	44.04	\\r
38249051		0	Antiespumantes contendo fosfato de tributila em solução de álcool isopropílico	36.55	38.25	\\r
38249052		0	Misturas de polietilenoglicóis	36.55	44.04	\\r
38249053		0	Polipropilenoglicol líquido	36.55	44.04	\\r
38249054		0	Retardante de chama contendo misturas de trifenilfosfatos isopropilados	36.55	38.25	\\r
38249059		0	Outros	36.55	44.04	\\r
38249071		0	Cal sodada. carbonato de cálcio hidrófugo	36.55	44.04	\\r
38249072		0	Preparações à base de sílica em suspensão coloidal. nitreto de boro de estrutura cristalina cúbica, compactado com substrato de carbeto de tungstênio (volfrâmio)	36.55	44.04	\\r
38249073		0	Preparações à base de carbeto de tungstênio (volfrâmio) com níquel como aglomerante. brometo de hidrogênio em solução	36.55	38.25	\\r
38249074		0	Preparações à base de hidróxido de níquel ou de cádmio, de óxido de cádmio ou de óxido ferroso férrico, próprios para a fabricação de acumuladores alcalinos	36.55	38.25	\\r
38249075		0	Preparações utilizadas na elaboração de meios de cultura. trocadores de íons para o tratamento de águas. preparações à base de zeólitas artificiais	36.55	38.25	\\r
38249076		0	Compostos absorventes à base de metais para aperfeiçoar o vácuo nos tubos ou válvulas elétricas	36.55	38.25	\\r
38249077		0	Adubos (fertilizantes) foliares contendo zinco ou manganês	31.45	32.05	\\r
39061000		0	-Poli(metacrilato de metila)	34.12	41.61	\\r
48010090		0	Outros	29.52	36.13	\\r
38249078		0	Preparações à base de óxido de alumínio e óxido de zircônio, com um conteúdo de óxido de zircônio superior ou igual a 20%, em peso	36.55	38.25	\\r
38249079		0	Outros	36.55	44.04	\\r
38249079	01	0	Ex 01 - Micronutrientes	31.45	38.94	\\r
38249081		0	Preparações à base de anidrido poliisobutenilsuccínico, em óleo mineral	36.55	44.04	\\r
38249082		0	Halquinol. tetraclorohidroxiglicina de alumínio e zircônio	36.55	38.25	\\r
38249083		0	Triisocianato de tiofosfato de fenila ou de trifenilmetano, em solução de cloreto de metileno ou de acetato de etila. preparações à base de tetraacetiletilenodiamina (TAED), em grânulos	36.55	38.25	\\r
38249085		0	Metilato de sódio em metanol	36.55	44.04	\\r
38249086		0	Maneb. mancozeb. cloreto de benzalcônio	36.55	44.04	\\r
38249087		0	Dispersão aquosa de microcápsulas de poliuretano ou de melamina-formaldeído contendo um precursor de corante em solventes orgânicos	36.55	44.04	\\r
38249088		0	Misturas constituídas essencialmente pelos compostos seguintes: alquilfosfonofluoridatos de O-alquila (de até C10, incluindo os cicloalquilas), N,N-dialquilfosforoamidocianidatos de O-alquila (de até C10, incluindo os cicloalquilas), hidrogênio alquilfosf	36.55	44.04	\\r
38249089		0	Outros	36.55	44.04	\\r
38251000		0	-Lixos municipais	31.45	38.94	\\r
38252000		0	-Lamas de tratamento de esgotos	31.45	38.94	\\r
38253000		0	-Resíduos clínicos	31.45	38.94	\\r
38254100		0	--Halogenados	31.45	38.94	\\r
38254900		0	--Outros	31.45	38.94	\\r
38255000		0	-Resíduos de soluções decapantes para metais, de fluidos hidráulicos, de fluidos para freios e de fluidos anticongelantes	31.45	38.94	\\r
38256100		0	--Que contenham principalmente constituintes orgânicos	31.45	38.94	\\r
38256900		0	--Outros	31.45	38.94	\\r
38259000		0	-Outros	31.45	38.94	\\r
38260000		0	Biodiesel e suas misturas, que não contenham ou que contenham menos de 70%, em peso, de óleos de petróleo ou de óleos minerais betuminosos.	36.55	44.04	\\r
38260000	01	0	Ex 01 - Biodiesel	31.45	38.94	\\r
39011010		0	Linear	34.12	41.61	\\r
39011091		0	Com carga	34.12	41.61	\\r
39011092		0	Sem carga	34.12	41.61	\\r
39012011		0	Vulcanizado, de densidade superior a 1,3	34.12	35.82	\\r
39012019		0	Outros	34.12	41.61	\\r
39012021		0	Vulcanizado, de densidade superior a 1,3	34.12	35.82	\\r
39012029		0	Outros	34.12	41.61	\\r
39013010		0	Nas formas previstas na Nota 6 a) deste Capítulo	34.12	41.61	\\r
39013090		0	Outros	34.12	41.61	\\r
39019010		0	Copolímeros de etileno e ácido acrílico	34.12	41.61	\\r
39019020		0	Copolímeros de etileno e monômeros com radicais carboxílicos, inclusive com metacrilato de metila ou acrilato de metila como terceiro monômero	34.12	41.61	\\r
39019030		0	Polietileno clorossulfonado	34.12	35.82	\\r
39019040		0	Polietileno clorado	34.12	35.82	\\r
39019050		0	Copolímeros de etileno - ácido metacrílico, com um conteúdo de etileno superior ou igual a 60%, em peso	34.12	35.82	\\r
39019090		0	Outros	34.12	41.61	\\r
39021010		0	Com carga	34.12	41.61	\\r
39021020		0	Sem carga	34.12	41.61	\\r
39022000		0	-Poliisobutileno	34.12	41.61	\\r
39023000		0	-Copolímeros de propileno	34.12	41.61	\\r
39029000		0	-Outros	34.12	41.61	\\r
39031110		0	Com carga	34.12	41.61	\\r
39031120		0	Sem carga	34.12	41.61	\\r
39031900		0	--Outros	34.12	41.61	\\r
39032000		0	-Copolímeros de estireno-acrilonitrila (SAN)	34.12	41.61	\\r
39033010		0	Com carga	34.12	41.61	\\r
39033020		0	Sem carga	34.12	41.61	\\r
39039010		0	Copolímeros de metacrilato de metilbutadieno-estireno (MBS)	34.12	41.61	\\r
39039020		0	Copolímeros de acrilonitrilo-estireno-acrilato de butilo (ASA)	34.12	35.82	\\r
39039090		0	Outros	34.12	41.61	\\r
39041010		0	Obtido por processo de suspensão	34.12	41.61	\\r
39041020		0	Obtido por processo de emulsão	34.12	41.61	\\r
39041090		0	Outros	34.12	41.61	\\r
39042100		0	--Não plastificado	34.12	41.61	\\r
39042200		0	--Plastificado	34.12	41.61	\\r
39043000		0	-Copolímeros de cloreto de vinila e acetato de vinila	34.12	41.61	\\r
39044010		0	Com acetato de vinila, com um ácido dibásico ou com álcool vinílico, nas formas previstas na Nota 6 b) deste Capítulo	34.12	41.61	\\r
39044090		0	Outros	34.12	41.61	\\r
39045010		0	Copolímeros de cloreto de vinilideno, sem emulsionante nem plastificante	34.12	35.82	\\r
39045090		0	Outros	34.12	35.82	\\r
39046110		0	Nas formas previstas na Nota 6 a) deste Capítulo	34.12	35.82	\\r
39046190		0	Outros	34.12	35.82	\\r
39046910		0	Copolímero de fluoreto de vinilideno e hexafluorpropileno	34.12	35.82	\\r
39046990		0	Outros	34.12	35.82	\\r
39049000		0	-Outros	34.12	41.61	\\r
39051200		0	--Em dispersão aquosa	34.12	41.61	\\r
39051910		0	Com grupos álcool vinílico, nas formas previstas na Nota 6 b) deste Capítulo	34.12	41.61	\\r
39051990		0	Outros	34.12	41.61	\\r
39052100		0	--Em dispersão aquosa	34.12	41.61	\\r
39052900		0	--Outros	34.12	41.61	\\r
39053000		0	-Poli(álcool vinílico), mesmo que contenham grupos acetato não hidrolisados	34.12	35.82	\\r
39059130		0	De vinilpirrolidona e acetato de vinila, em solução alcoólica	34.12	41.61	\\r
39059190		0	Outros	34.12	35.82	\\r
39059910		0	Poli(vinilformal)	34.12	35.82	\\r
39059920		0	Poli(butiral de vinila)	34.12	35.82	\\r
39059930		0	Poli(vinilpirrolidona) iodada	34.12	40.73	\\r
39061000	01	0	Ex 01 - Em pó, de granulometria de 50 a 400 mesh, próprio para uso odontológico	31.45	38.94	\\r
39069011		0	Poli(ácido acrílico) e seus sais	34.12	41.61	\\r
39069012		0	Sal sódico do poli(ácido acrilamídico), solúvel em água	34.12	41.61	\\r
39069019		0	Outros	34.12	41.61	\\r
39069021		0	Poli(ácido acrílico) e seus sais	34.12	41.61	\\r
39069022		0	Copolímero de metacrilato de 2-diisopropilaminoetila e metacrilato de n-decila, em suspensão de dimetilacetamida	34.12	35.82	\\r
39069029		0	Outros	34.12	41.61	\\r
39069031		0	Poli(ácido acrílico) e seus sais	34.12	41.61	\\r
39069032		0	Sal sódico do poli(ácido acrilamídico), solúvel em água	34.12	41.61	\\r
39069039		0	Outros	34.12	41.61	\\r
39069041		0	Poli(ácido acrílico) e seus sais	34.12	41.61	\\r
39069041	01	0	Ex 01 - Em pó, de granulometria de 50 a 400 mesh, próprios para uso odontológico	31.45	38.94	\\r
39069042		0	Sal sódico do poli(ácido acrilamídico), solúvel em água	34.12	41.61	\\r
39069043		0	Carboxipolimetileno, em pó	34.12	35.82	\\r
39069044		0	Poli(acrilato de sódio), com capacidade de absorção de uma solução aquosa de cloreto de sódio 0,9%, em peso, superior ou igual a vinte vezes seu próprio peso	34.12	35.82	\\r
39069045		0	Copolímero de poli(acrilato de potássio) e poli(acrilamida), com capacidade de absorção de água destilada de até quatrocentas vezes seu próprio peso	34.12	35.82	\\r
39069046		0	Copolímeros de acrilato de metila-etileno com um conteúdo de acrilato de metila superior ou igual a 50%, em peso	34.12	35.82	\\r
39069047		0	Copolímero de acrilato de etila, acrilato de n-butila e acrilato de 2-metoxietila	34.12	35.82	\\r
39069049		0	Outros	34.12	41.61	\\r
39069049	01	0	Ex 01 - Em pó, de granulometria de 50 a 400 mesh, próprios para uso odontológico	31.45	38.94	\\r
39071010		0	Com carga, nas formas previstas na Nota 6 a) deste Capítulo	34.12	41.61	\\r
39071020		0	Com carga, nas formas previstas na Nota 6 b) deste Capítulo	34.12	41.61	\\r
39071031		0	Polidextrose	34.12	35.82	\\r
39071039		0	Outros	34.12	41.61	\\r
39071041		0	Polidextrose	34.12	35.82	\\r
39071042		0	Outros, em pó que passe através de uma peneira com abertura de malha de 0,85 mm em proporção superior a 80%, em peso	34.12	35.82	\\r
39071049		0	Outros	34.12	35.82	\\r
39071091		0	Em grânulos, com diâmetro de partícula superior a 2 mm, segundo a Norma ASTM E 11-70	34.12	41.61	\\r
39071099		0	Outros	34.12	41.61	\\r
39072011		0	Com carga	34.12	41.61	\\r
39072012		0	Sem carga	34.12	35.82	\\r
39072020		0	Politetrametilenoeterglicol	34.12	35.82	\\r
39072031		0	Polietilenoglicol 400	34.12	41.61	\\r
39072039		0	Outros	34.12	41.61	\\r
39072041		0	Poli(epicloridrina)	34.12	35.82	\\r
39072042		0	Copolímeros de óxido de etileno	34.12	35.82	\\r
39072049		0	Outros	34.12	41.61	\\r
39072090		0	Outros	34.12	41.61	\\r
39073011		0	Nas formas previstas na Nota 6 a) deste Capítulo	34.12	41.61	\\r
39073019		0	Outras	34.12	41.61	\\r
39073021		0	Copolímero de tetrabromobisfenol A e epicloridrina (resina epóxida bromada)	34.12	41.61	\\r
39073022		0	Outras, nas formas previstas na Nota 6 a) deste Capítulo	34.12	41.61	\\r
39073029		0	Outras	34.12	41.61	\\r
39074010		0	Nas formas previstas na Nota 6 b) deste Capítulo, com transmissão de luz de comprimento de onda de 550 nm ou 800 nm, superior a 89%, segundo Norma ASTM D 1003-00 e índice de fluidez de massa superior ou igual a 60 g/10 min e inferior ou igual a 80 g/10 mi	34.12	35.82	\\r
39074090		0	Outros	34.12	41.61	\\r
39075010		0	Nas formas previstas na Nota 6 a) deste Capítulo	34.12	41.61	\\r
39075090		0	Outras	34.12	41.61	\\r
39076000		0	-Poli(tereftalato de etileno)	34.12	41.61	\\r
39077000		0	-Poli(ácido láctico)	34.12	41.61	\\r
39079100		0	--Não saturados	34.12	41.61	\\r
39079911		0	Com carga de fibra de vidro	34.12	41.61	\\r
39079912		0	Outros, nas formas previstas na Nota 6 a) deste Capítulo	34.12	35.82	\\r
39079919		0	Outros	34.12	35.82	\\r
39079991		0	Nas formas previstas na Nota 6 a) deste Capítulo	34.12	41.61	\\r
39079992		0	Poli(epsilon caprolactona)	34.12	35.82	\\r
39079999		0	Outros	34.12	41.61	\\r
39081011		0	Poliamida-11	34.12	35.82	\\r
39081012		0	Poliamida-12	34.12	35.82	\\r
39081013		0	Poliamida-6 ou poliamida-6,6, com carga	34.12	41.61	\\r
39081014		0	Poliamida-6 ou poliamida-6,6, sem carga	34.12	41.61	\\r
39081019		0	Outras	34.12	35.82	\\r
39081021		0	Poliamida-11	34.12	35.82	\\r
39081022		0	Poliamida-12	34.12	35.82	\\r
39081023		0	Poliamida-6 ou poliamida-6,6, com carga	34.12	41.61	\\r
39081024		0	Poliamida-6 ou poliamida-6,6, sem carga	34.12	41.61	\\r
39081029		0	Outras	34.12	35.82	\\r
39089010		0	Copolímero de lauril-lactama	34.12	35.82	\\r
39089020		0	Obtidas por condensação de ácidos graxos dimerizados ou trimerizados com etilenaminas	34.12	41.61	\\r
39089090		0	Outras	34.12	35.82	\\r
39091000		0	-Resinas ureicas. resinas de tioureia	34.12	41.61	\\r
39092011		0	Melamina-formaldeído, em pó	34.12	41.61	\\r
39092019		0	Outras	34.12	41.61	\\r
39092021		0	Melamina-formaldeído, em pó	34.12	41.61	\\r
39092029		0	Outras	34.12	41.61	\\r
39093010		0	Com carga	34.12	41.61	\\r
39093020		0	Sem carga	34.12	41.61	\\r
39094011		0	Fenol-formaldeído	34.12	41.61	\\r
39094019		0	Outras	34.12	41.61	\\r
39094091		0	Fenol-formaldeído	34.12	41.61	\\r
39095011		0	Soluções em solventes orgânicos	34.12	41.61	\\r
39095012		0	Em dispersão aquosa	34.12	35.82	\\r
39095019		0	Outros	34.12	41.61	\\r
39095021		0	Hidroxilados, com propriedades adesivas	34.12	35.82	\\r
39095029		0	Outros	33.42	40.91	\\r
39100011		0	Misturas de pré-polímeros lineares e cíclicos, obtidos por hidrólise de dimetildiclorosilano, de peso molecular médio inferior ou igual a 8.800	34.12	35.82	\\r
39100012		0	Polidimetilsiloxano, polimetilidrogenosiloxano ou misturas destes produtos, em dispersão	34.12	41.61	\\r
39100013		0	Copolímeros de dimetilsiloxano com compostos vinílicos, de viscosidade superior ou igual a 1.000.000 cSt	34.12	35.82	\\r
39100019		0	Outros	34.12	41.61	\\r
39100021		0	De vulcanização a quente	34.12	35.82	\\r
39100029		0	Outros	34.12	41.61	\\r
39100030		0	Resinas	34.12	41.61	\\r
39100090		0	Outros	34.12	41.61	\\r
39111010		0	Com carga	34.12	41.61	\\r
39111021		0	Resinas de petróleo, total ou parcialmente hidrogenadas, de Cor Gardner inferior a 3, segundo Norma ASTM D 1544	34.12	35.82	\\r
39111029		0	Outros	34.12	41.61	\\r
39119011		0	Politerpenos modificados quimicamente, exceto com fenóis	34.12	41.61	\\r
39119012		0	Polieterimidas (PEI) e seus copolímeros	34.12	35.82	\\r
39119013		0	Polietersulfonas (PES) e seus copolímeros	34.12	35.82	\\r
39119014		0	Poli(sulfeto de fenileno)	34.12	35.82	\\r
39119019		0	Outros	34.12	41.61	\\r
39119021		0	Politerpenos modificados quimicamente, exceto com fenóis	34.12	41.61	\\r
39119022		0	Poli(sulfeto de fenileno)	34.12	35.82	\\r
39119023		0	Polietilenaminas	34.12	35.82	\\r
39119024		0	Polieterimidas (PEI) e seus copolímeros	34.12	35.82	\\r
39119025		0	Polietersulfonas (PES) e seus copolímeros	34.12	35.82	\\r
39119026		0	Polissulfonas	34.12	35.82	\\r
39119029		0	Outros	34.12	41.61	\\r
39121110		0	Com carga	34.12	38.87	\\r
39121120		0	Sem carga	34.12	35.82	\\r
39121200		0	--Plastificados	34.12	35.82	\\r
39122010		0	Com carga	34.12	41.61	\\r
39122021		0	Em álcool, com um teor de não voláteis superior ou igual a 65%, em peso	34.12	41.61	\\r
39122029		0	Outros	34.12	41.61	\\r
39123111		0	Com um teor de carboximetilcelulose superior ou igual a 75%, em peso	34.12	41.61	\\r
39123119		0	Outros	34.12	41.61	\\r
39123121		0	Com um teor de sais superior ou igual a 75%, em peso	34.12	41.61	\\r
39123129		0	Outros	34.12	41.61	\\r
39123910		0	Metil-, etil- e propilcelulose, hidroxiladas	34.12	35.82	\\r
39123920		0	Outras metilceluloses	34.12	35.82	\\r
39123930		0	Outras etilceluloses	34.12	35.82	\\r
39123990		0	Outros	34.12	35.82	\\r
39129010		0	Propionato de celulose	34.12	35.82	\\r
39129020		0	Acetobutanoato de celulose	34.12	35.82	\\r
39129031		0	Em pó	34.12	41.61	\\r
39129039		0	Outras	34.12	41.61	\\r
39129040		0	Outras celuloses, em pó	34.12	41.61	\\r
39129090		0	Outros	34.12	41.61	\\r
39131000		0	-Ácido algínico, seus sais e seus ésteres	34.12	35.82	\\r
39139011		0	Borracha clorada ou cloridratada, nas formas previstas na Nota 6 b) deste Capítulo	34.12	35.82	\\r
39139012		0	Borracha clorada, noutras formas	34.12	35.82	\\r
39139019		0	Outros	34.12	35.82	\\r
39139020		0	Goma xantana	34.12	35.82	\\r
39139030		0	Dextrana	34.12	35.82	\\r
39139040		0	Proteínas endurecidas	34.12	35.82	\\r
39139050		0	Quitosan (Chitosan), seus sais ou seus derivados	34.12	41.61	\\r
39139060		0	Sulfato de condroitina	34.12	41.61	\\r
39139090		0	Outros	34.12	35.82	\\r
39140011		0	De copolímeros de estireno-divinilbenzeno, sulfonados	34.12	35.82	\\r
39140019		0	Outros	34.12	35.82	\\r
39140090		0	Outros	34.12	35.82	\\r
39151000		0	-De polímeros de etileno	31.45	38.94	\\r
39152000		0	-De polímeros de estireno	31.45	38.94	\\r
39153000		0	-De polímeros de cloreto de vinila	31.45	38.94	\\r
39159000		0	-De outros plásticos	31.45	38.94	\\r
39161000		0	-De polímeros de etileno	36.55	44.89	\\r
39162000		0	-De polímeros de cloreto de vinila	35.85	44.19	\\r
39162000	01	0	Ex 01 – Forros de policloreto de vinil (PVC) utilizados na construção civil.	33.42	41.76	\\r
39169010		0	Monofilamentos	36.55	44.89	\\r
39169090		0	Outros	36.55	44.89	\\r
39171010		0	De proteínas endurecidas	33.42	35.12	\\r
39171021		0	Fibrosas, de celulose regenerada, de diâmetro superior ou igual a 150 mm	33.42	35.12	\\r
39171029		0	Outras	33.42	41.76	\\r
39172100		0	--De polímeros de etileno	30.75	39.09	\\r
39172200		0	--De polímeros de propileno	30.75	39.09	\\r
39172300		0	--De polímeros de cloreto de vinila	30.75	39.09	\\r
39172900		0	--De outros plásticos	30.75	39.09	\\r
39173100		0	--Tubos flexíveis podendo suportar uma pressão mínima de 27,6 MPa	33.42	41.76	\\r
39173210		0	De copolímeros de etileno	33.42	41.76	\\r
39173221		0	Tubos capilares, semipermeáveis, próprios para hemodiálise ou para oxigenação sanguínea	30.75	32.45	\\r
39173229		0	Outros	33.42	41.76	\\r
39173230		0	De poli(tereftalato de etileno)	33.42	41.76	\\r
39173240		0	De silicones	33.42	41.76	\\r
39173251		0	Tubos capilares, semipermeáveis, próprios para hemodiálise	33.42	35.12	\\r
39173259		0	Outros	33.42	41.76	\\r
39173290		0	Outros	33.42	41.76	\\r
39173300		0	--Outros, não reforçados com outras matérias, nem associados de outra forma com outras matérias, com acessórios	33.42	41.76	\\r
39173900		0	--Outros	33.42	41.76	\\r
39174010		0	Dos tipos utilizados em linhas de sangue para hemodiálise	30.75	31.35	\\r
39174090		0	Outros	30.75	39.09	\\r
39181000		0	-De polímeros de cloreto de vinila	30.12	38.46	\\r
39189000		0	-De outros plásticos	34.12	42.46	\\r
39191000		0	-Em rolos de largura não superior a 20 cm	38.77	47.11	\\r
39199000		0	-Outras	38.77	47.11	\\r
39201010		0	De densidade superior ou igual a 0,94, espessura inferior ou igual a 19 micrômetros (mícrons), em rolos de largura inferior ou igual a 66 cm	38.07	39.77	\\r
39201091		0	De densidade inferior a 0,94, com óleo de parafina e carga (sílica e negro-de-carbono), apresentando nervuras paralelas entre si, com uma resistência elétrica superior ou igual a 0,030 ohms.cm2 mas inferior ou igual a 0,120 ohms.cm2, em rolos, dos tipos u	38.07	39.77	\\r
39201099		0	Outras	38.07	46.41	\\r
39202011		0	De largura inferior ou igual a 12,5 cm e espessura inferior ou igual a 10 micrômetros (mícrons), metalizadas	27.43	29.13	\\r
39202012		0	De largura inferior ou igual a 50 cm e espessura inferior ou igual a 25 micrômetros (mícrons), com uma ou ambas as faces rugosas de rugosidade relativa (relação entre a espessura média e a máxima) superior ou igual a 6%, de rigidez dielétrica superior ou	27.43	29.13	\\r
39202019		0	Outras	27.43	35.77	\\r
39202019	01	0	Ex 01 - Substrato de polipropileno biaxialmente orientado, recoberto em ambas as faces da folha por camadas de tinta opacificante que propiciam receber as impressões ofsete seco, calcográfica, tipográfica e vernizes de proteção com cura a ultravioleta	20.11	28.45	\\r
39202090		0	Outras	38.07	46.41	\\r
39203000		0	-De polímeros de estireno	38.07	46.41	\\r
39204310		0	De poli(cloreto de vinila), transparentes, termocontráteis, de espessura inferior ou igual a 250 micrômetros (mícrons)	38.07	46.41	\\r
39204390		0	Outras	38.07	46.41	\\r
39204900		0	--Outras	38.07	46.41	\\r
39204900	01	0	Ex 01 - Laminados rígidos de policloreto de vinil (PVC) utilizados para revestimento de móveis	33.42	41.76	\\r
39205100		0	--De poli(metacrilato de metila)	38.07	46.41	\\r
39205900		0	--Outras	38.07	46.41	\\r
39206100		0	--De policarbonatos	38.07	46.41	\\r
39206211		0	De espessura inferior a 5 micrômetros (mícrons)	38.07	39.77	\\r
39206219		0	Outras	38.07	46.41	\\r
39206291		0	Com largura superior a 12 cm, sem qualquer trabalho à superfície	38.07	46.41	\\r
39206299		0	Outras	38.07	46.41	\\r
39206299	01	0	Ex 01 – Laminados de politereftalato de etileno (PET) para revestimento	33.42	41.76	\\r
39206300		0	--De poliésteres não saturados	38.07	46.41	\\r
39206900		0	--De outros poliésteres	38.07	46.41	\\r
39207100		0	--De celulose regenerada	38.07	46.41	\\r
39207310		0	De espessura inferior ou igual a 0,75 mm	38.07	46.41	\\r
39207390		0	Outras	38.07	46.41	\\r
39207910		0	De fibra vulcanizada, de espessura inferior ou igual a 1 mm	38.07	39.77	\\r
39207990		0	Outros	38.07	46.41	\\r
39209100		0	--De poli(butiral de vinila)	38.07	46.41	\\r
39209200		0	--De poliamidas	38.07	46.41	\\r
39209300		0	--De resinas amínicas	38.07	46.41	\\r
39209400		0	--De resinas fenólicas	38.07	46.41	\\r
39209910		0	De silicone	38.07	46.41	\\r
39209920		0	De poli(álcool vinílico)	38.07	46.41	\\r
39209930		0	De polímeros de fluoreto de vinila	38.07	39.77	\\r
39209940		0	De poliimida	38.07	39.77	\\r
39209950		0	De poli(clorotrifluoretileno)	38.07	39.77	\\r
39209990		0	Outras	38.07	46.41	\\r
39211100		0	--De polímeros de estireno	38.77	47.11	\\r
39211200		0	--De polímeros de cloreto de vinila	38.77	47.11	\\r
39211310		0	Com base poliéster, de células abertas, com um número de poros por decímetro linear superior ou igual a 24 e inferior ou igual a 157 (6 a 40 poros por polegada linear), com resistência à compressão 50% (RC50) superior ou igual a 3,0 kPa e inferior ou igua	38.77	40.47	\\r
39211390		0	Outras	38.77	47.11	\\r
39211400		0	--De celulose regenerada	38.77	47.11	\\r
39211900		0	--De outros plásticos	38.77	47.11	\\r
39219011		0	De resina melamina-formaldeído	30.12	38.46	\\r
39219012		0	De polietileno, com reforço de napas de fibras de polietileno paralelizadas, superpostas entre si em ângulo de 90o e impregnadas com resinas	34.77	36.47	\\r
39219019		0	Outras	34.77	43.11	\\r
39219020		0	De poli(tereftalato de etileno), com camada antiestática à base de gelatina ou de látex em ambas as faces, mesmo com halogenetos de potássio	34.77	36.47	\\r
39219090		0	Outras	34.77	43.11	\\r
39221000		0	-Banheiras, boxes para chuveiros, pias e lavatórios	34.12	43.28	\\r
39222000		0	-Assentos e tampas, de sanitários	34.12	43.28	\\r
39229000		0	-Outros	34.12	43.28	\\r
39231010		0	Estojos de plástico, dos tipos utilizados para acondicionar discos para sistemas de leitura por raio laser	38.07	47.23	\\r
39231090		0	Outros	38.07	47.23	\\r
39232110		0	De capacidade inferior ou igual a 1.000 cm3	38.07	47.23	\\r
39232190		0	Outros	38.07	47.23	\\r
39232910		0	De capacidade inferior ou igual a 1.000 cm3	38.07	47.23	\\r
39232990		0	Outros	38.07	47.23	\\r
39233000		0	-Garrafões, garrafas, frascos e artigos semelhantes	38.07	47.23	\\r
39233000	01	0	Ex 01 - Esboços de garrafas de plástico, fechados em uma extremidade e com a outra aberta e munida de uma rosca sobre a qual irá adaptar-se uma tampa roscada, devendo a parte abaixo da rosca ser transformada, posteriormente, para se obter a dimensão e for	30.75	39.91	\\r
39234000		0	-Bobinas, carretéis, canelas e suportes semelhantes	35.85	45.01	\\r
39235000		0	-Rolhas, tampas, cápsulas e outros dispositivos para fechar recipientes	33.42	42.58	\\r
39239000		0	-Outros	38.07	47.23	\\r
39241000		0	-Serviços de mesa e outros utensílios de mesa ou de cozinha	35.85	45.01	\\r
39249000		0	-Outros	36.55	45.71	\\r
39251000		0	-Reservatórios, cisternas, cubas e recipientes análogos, de capacidade superior a 300 l	31.45	40.61	\\r
39252000		0	-Portas, janelas e seus caixilhos, alizares e soleiras	31.45	40.61	\\r
39253000		0	-Postigos, estores (incluindo as venezianas) e artefatos semelhantes, e suas partes	34.12	43.28	\\r
39259010		0	De poliestireno expandido (EPS)	34.12	43.28	\\r
39259090		0	Outros	34.12	43.28	\\r
39261000		0	-Artigos de escritório e artigos escolares	38.77	47.93	\\r
39262000		0	-Vestuário e seus acessórios (incluindo as luvas, mitenes e semelhantes)	33.42	42.58	\\r
39262000	01	0	Ex 01 - Cintos	35.85	45.01	\\r
39263000		0	-Guarnições para móveis, carroçarias ou semelhantes	34.12	43.28	\\r
39264000		0	-Estatuetas e outros objetos de ornamentação	40.80	49.96	\\r
39269010		0	Arruelas	36.55	45.71	\\r
39269021		0	De transmissão	36.55	45.71	\\r
39269022		0	Transportadoras	36.55	45.71	\\r
39269030		0	Bolsas para uso em medicina (hemodiálise e usos semelhantes)	20.11	20.71	\\r
39269040		0	Artigos de laboratório ou de farmácia	34.46	43.62	\\r
39269040	01	0	Ex 01 - Exclusivamente de laboratório de análises clínicas	20.11	29.27	\\r
39269050		0	Acessórios dos tipos utilizados em linhas de sangue para hemodiálise, tais como: obturadores, incluindo os reguláveis (clamps), clipes e similares	27.43	28.03	\\r
39269061		0	De tetrafluoretileno e éter perfluormetilvinil	38.77	40.47	\\r
39269069		0	Outros	38.77	47.93	\\r
39269090		0	Outras	27.43	36.59	\\r
39269090	01	0	Ex 01 - Forma para fabricação de calçados	20.11	29.27	\\r
39269090	02	0	Ex 02 - Máscara de proteção	20.11	29.27	\\r
39269090	03	0	Ex 03 - Revestimento para canais de irrigação, de PVC flexível ou semelhante, com ilhoses para fixação no solo	24.26	33.42	\\r
39269090	04	0	Ex 04 - Cinto, colete, bóia e equipamento semelhante de salvamento	25.21	34.37	\\r
39269090	05	0	Ex 05 - Brincos e pulseiras para identificação de animais	25.21	34.37	\\r
39269090	06	0	Ex 06 - Cabos para ferramentas, utensílios e aparelhos	25.21	34.37	\\r
39269090	07	0	Ex 07 - Parafusos e porcas	25.21	34.37	\\r
39269090	08	0	Ex 08 - Recipiente com serpentina e depósito para gelo, próprio para gelar bebidas	29.46	38.62	\\r
39269090	09	0	Ex 09 - Leques e ventarolas	29.46	38.62	\\r
39269090	10	0	Ex 10 - Bolsas para coleta de sangue e seus componentes e bolsas de diálise peritoneal (infusão e drenagem)	20.11	29.27	\\r
39269090	11	0	Ex 11 - Kits para aferese	20.11	29.27	\\r
40011000		0	-Látex de borracha natural, mesmo pré-vulcanizado	31.45	34.20	\\r
40012100		0	--Folhas fumadas	31.45	34.20	\\r
40012200		0	--Borracha natural tecnicamente especificada (TSNR)	31.45	34.20	\\r
40012910		0	Crepadas	31.45	34.20	\\r
40012920		0	Granuladas ou prensadas	31.45	34.20	\\r
40012990		0	Outras	31.45	34.20	\\r
40013000		0	-Balata, guta-percha, guaiúle, chicle e gomas naturais análogas	31.45	34.20	\\r
40021110		0	De estireno-butadieno (SBR)	34.12	40.73	\\r
40021120		0	De estireno-butadieno carboxilada (XSBR)	34.12	40.73	\\r
40021911		0	Em chapas, folhas ou tiras	34.12	40.73	\\r
40021912		0	Grau alimentício de acordo com o estabelecido pelo Food Chemical Codex, em formas primárias	34.12	40.73	\\r
40021919		0	Outras	34.12	40.73	\\r
40021920		0	De estireno-butadieno carboxilada (XSBR)	34.12	40.73	\\r
40022010		0	Óleo	34.12	35.82	\\r
40022090		0	Outras	34.12	40.73	\\r
40023100		0	--Borracha de isobuteno-isopreno (butila) (IIR)	34.12	35.82	\\r
40023900		0	--Outras	34.12	35.82	\\r
40024100		0	--Látex	34.12	35.82	\\r
40024900		0	--Outras	34.12	35.82	\\r
40025100		0	--Látex	34.12	40.73	\\r
40025900		0	--Outras	34.12	40.73	\\r
40026000		0	-Borracha de isopreno (IR)	34.12	35.82	\\r
40027000		0	-Borracha de etileno-propileno-dieno não conjugada (EPDM)	34.12	40.73	\\r
40028000		0	-Misturas dos produtos da posição 40.01 com produtos da presente posição	34.12	40.73	\\r
40029100		0	--Látex	34.12	40.73	\\r
40029910		0	Borracha estireno-isopreno-estireno	34.12	40.73	\\r
40029920		0	Borracha etileno-propileno-dieno não conjugado-propileno (EPDM-propileno)	34.12	35.82	\\r
40029930		0	Borracha acrilonitrila-butadieno hidrogenada	34.12	35.82	\\r
40029990		0	Outras	34.12	40.73	\\r
40030000		0	Borracha regenerada, em formas primárias ou em chapas, folhas ou tiras.	34.12	40.73	\\r
40040000		0	Desperdícios, resíduos e aparas, de borracha não endurecida, mesmo reduzidos a pó ou a grânulos.	31.45	38.06	\\r
40051010		0	Borracha etileno-propileno-dieno não conjugado-propileno (EPDM-propileno), com sílica e plastificante, em grânulos	34.12	35.82	\\r
40051090		0	Outras	34.12	41.61	\\r
40052000		0	-Soluções. dispersões, exceto as da subposição 4005.10	34.12	41.61	\\r
40059110		0	Preparações base para a fabricação de gomas de mascar	34.12	41.61	\\r
40059190		0	Outras	34.12	41.61	\\r
40059910		0	Preparações base para a fabricação de gomas de mascar	34.12	41.61	\\r
40059990		0	Outras	34.12	41.61	\\r
40061000		0	-Perfis para recauchutagem	34.12	41.61	\\r
40069000		0	-Outros	34.12	41.61	\\r
40070011		0	Recobertos com silicone, mesmo paralelizados	31.45	38.94	\\r
40081100		0	--Chapas, folhas e tiras	36.55	44.04	\\r
40081900		0	--Outros	36.55	44.04	\\r
40082100		0	--Chapas, folhas e tiras	36.55	44.04	\\r
40082100	01	0	Ex 01 - Remendo e manchão, com superfície recoberta de produtos autovulcanizantes a frio e protegidos por papel, plástico ou outra matéria	34.12	41.61	\\r
40082900		0	--Outros	36.55	44.04	\\r
40091100		0	--Sem acessórios	36.55	44.04	\\r
40091210		0	Com uma pressão de ruptura superior ou igual a 17,3 MPa	36.55	44.04	\\r
40091290		0	Outros	36.55	44.04	\\r
40092110		0	Com uma pressão de ruptura superior ou igual a 17,3 MPa	36.55	44.04	\\r
40092190		0	Outros	36.55	44.04	\\r
40092210		0	Com uma pressão de ruptura superior ou igual a 17,3 MPa	36.55	44.04	\\r
40092290		0	Outros	36.55	44.04	\\r
40093100		0	--Sem acessórios	36.55	44.04	\\r
40093210		0	Com uma pressão de ruptura superior ou igual a 17,3 MPa	36.55	44.04	\\r
40093290		0	Outros	36.55	44.04	\\r
40094100		0	--Sem acessórios	36.55	44.04	\\r
40094210		0	Com uma pressão de ruptura superior ou igual a 17,3 MPa	36.55	44.04	\\r
40094290		0	Outros	36.55	44.04	\\r
40101100		0	--Reforçadas apenas com metal	36.55	44.04	\\r
40101200		0	--Reforçadas apenas com matérias têxteis	36.55	44.04	\\r
40101900		0	--Outras	36.55	44.04	\\r
40103100		0	--Correias de transmissão sem fim, de seção trapezoidal, estriadas, com uma circunferência externa superior a 60 cm, mas não superior a 180 cm	36.55	44.04	\\r
40103200		0	--Correias de transmissão sem fim, de seção trapezoidal, não estriadas, com uma circunferência externa superior a 60 cm, mas não superior a 180 cm	36.55	44.04	\\r
40103300		0	--Correias de transmissão sem fim, de seção trapezoidal, estriadas, com uma circunferência externa superior a 180 cm, mas não superior a 240 cm	36.55	44.04	\\r
40103400		0	--Correias de transmissão sem fim, de seção trapezoidal, não estriadas, com uma circunferência externa superior a 180 cm, mas não superior a 240 cm	36.55	44.04	\\r
40103500		0	--Correias de transmissão sem fim, síncronas, com uma circunferência externa superior a 60 cm, mas não superior a 150 cm	36.55	44.04	\\r
40103600		0	--Correias de transmissão sem fim, síncronas, com uma circunferência externa superior a 150 cm, mas não superior a 198 cm	36.55	44.04	\\r
40103900		0	--Outras	36.55	44.04	\\r
40111000		0	-Dos tipos utilizados em automóveis de passageiros (incluindo os veículos de uso misto (station wagons) e os automóveis de corrida)	38.77	47.11	\\r
40112010		0	De medida 11,00-24	32.55	40.89	\\r
40112090		0	Outros	32.55	40.89	\\r
40113000		0	-Dos tipos utilizados em veículos aéreos	31.45	32.05	\\r
40114000		0	-Dos tipos utilizados em motocicletas	38.77	47.11	\\r
40115000		0	-Dos tipos utilizados em bicicletas	38.77	47.11	\\r
40116100		0	--Dos tipos utilizados em veículos e máquinas agrícolas ou florestais	38.77	47.11	\\r
40116100	01	0	Ex 01 - Para máquinas e tratores agrícolas	32.55	40.89	\\r
40116200		0	--Dos tipos utilizados em veículos e máquinas para a construção civil ou manutenção industrial, para aros de diâmetro inferior ou igual a 61 cm	38.77	47.11	\\r
40116310		0	Radiais, para dumpers concebidos para serem utilizados fora de rodovias, com seção de largura superior ou igual a 940 mm (37”), para aros de diâmetro superior ou igual a 1.448 mm (57”)	38.77	40.47	\\r
40116320		0	Outros, com seção de largura superior ou igual a 1.143 mm (45”), para aros de diâmetro superior ou igual a 1.143 mm (45”)	38.77	40.47	\\r
40116390		0	Outros	38.77	47.11	\\r
40116910		0	Com seção de largura superior ou igual a 1.143 mm (45”), para aros de diâmetro superior ou igual a 1.143 mm (45”)	38.77	40.47	\\r
40116990		0	Outros	38.77	47.11	\\r
40119210		0	Nas seguintes medidas: 4,00-15. 4,00-18. 4,00-19. 5,00-15. 5,00-16. 5,50-16. 6,00-16. 6,00-19. 6,00-20. 6,50-16. 6,50-20. 7,50-16. 7,50-18. 7,50-20	38.77	47.11	\\r
40119290		0	Outros	38.77	47.11	\\r
40119300		0	--Dos tipos utilizados em veículos e máquinas para a construção civil ou manutenção industrial, para aros de diâmetro inferior ou igual a 61 cm	38.77	47.11	\\r
40119410		0	Radiais, para dumpers concebidos para serem utilizados fora de rodovias, com seção de largura superior ou igual a 940 mm (37”), para aros de diâmetro superior ou igual a 1.448 mm (57”)	38.77	40.47	\\r
40119420		0	Outros, com seção de largura superior ou igual a 1.143 mm (45”), para aros de diâmetro superior ou igual a 1.143 mm (45”)	38.77	40.47	\\r
40119490		0	Outros	38.77	47.11	\\r
40119910		0	Com seção de largura superior ou igual a 1.143 mm (45”), para aros de diâmetro superior ou igual a 1.143 mm (45”)	38.77	40.47	\\r
40119990		0	Outros	38.77	47.11	\\r
40121100		0	--Dos tipos utilizados em automóveis de passageiros (incluindo os veículos de uso misto (station wagons) e os automóveis de corrida)	31.45	39.79	\\r
40121100	01	0	Ex 01 - Remoldados	38.77	47.11	\\r
40121200		0	--Dos tipos utilizados em ônibus ou caminhões	31.45	39.79	\\r
40121200	01	0	Ex 01 - Remoldados	32.55	40.89	\\r
40121300		0	--Dos tipos utilizados em veículos aéreos	31.45	39.79	\\r
40121900		0	--Outros	31.45	39.79	\\r
40121900	01	0	Ex 01 – Remoldados, exceto para máquinas e tratores agrícolas	38.77	47.11	\\r
40121900	02	0	Ex 02 – Remoldados, para máquinas e tratores agrícolas	32.55	40.89	\\r
40122000		0	-Pneumáticos usados	31.45	39.79	\\r
40129010		0	Flaps	31.45	39.79	\\r
40129090		0	Outros	31.45	39.79	\\r
40131010		0	Para pneumáticos do tipo dos utilizados em ônibus ou caminhões, de medida 11,00-24	32.55	40.89	\\r
40131090		0	Outras	38.77	47.11	\\r
40131090	01	0	Ex 01 - Dos tipos utilizados em ônibus ou caminhões	32.55	40.89	\\r
40132000		0	-Dos tipos utilizados em bicicletas	38.77	47.11	\\r
40139000		0	-Outras	38.77	47.11	\\r
40139000	01	0	Ex 01 - Dos tipos utilizados em colheitadeiras ou tratores agrícolas	32.55	40.89	\\r
40141000		0	-Preservativos	24.11	29.81	\\r
40149010		0	Bolsas para gelo ou para água quente	38.77	47.11	\\r
40149090		0	Outros	38.77	47.11	\\r
40151100		0	--Para cirurgia	21.50	29.84	\\r
40151900		0	--Outras	28.82	37.16	\\r
40151900	01	0	Ex 01 - De segurança e proteção	21.50	29.84	\\r
40159000		0	-Outros	28.82	37.16	\\r
40159000	01	0	Ex 01 - Vestuário de segurança e proteção, mesmo com seus acessórios	21.50	29.84	\\r
40161010		0	Partes de veículos automóveis ou tratores e de máquinas ou aparelhos, não domésticos, dos Capítulos 84, 85 ou 90	40.01	48.35	\\r
40161090		0	Outras	40.01	48.35	\\r
40169100		0	--Revestimentos para pisos (pavimentos) e capachos	36.55	44.89	\\r
40169200		0	--Borrachas de apagar	30.75	39.09	\\r
40169300		0	--Juntas, gaxetas e semelhantes	35.60	43.94	\\r
40169400		0	--Defensas, mesmo infláveis, para atracação de embarcações	35.60	43.94	\\r
40169510		0	De salvamento	38.77	47.11	\\r
40169590		0	Outros	38.77	47.11	\\r
40169910		0	Tampões vedadores para capacitores, de EPDM, com perfurações para terminais	40.01	41.71	\\r
40169990		0	Outras	40.01	48.35	\\r
40169990	01	0	Ex 01 - Sapatas	31.45	39.79	\\r
40169990	02	0	Ex 02 - Partes dos produtos das posições 8608, 8710 e 8713	31.45	39.79	\\r
40169990	03	0	Ex 03 - Tapetes próprios para ônibus ou caminhões	33.08	41.42	\\r
40169990	04	0	Ex 04 - Viras para calçados	34.12	42.46	\\r
40169990	05	0	Ex 05 - Tapetes próprios para veículos automóveis, exceto ônibus ou caminhões	38.77	47.11	\\r
40170000		0	Borracha endurecida (ebonite, por exemplo) sob qualquer forma, incluindo os desperdícios e resíduos. obras de borracha endurecida.	40.01	48.35	\\r
40170000	01	0	Ex 01 -Placas de borracha endurecida com encaixes de sobreposição, obtidas pela trituração de sucata de pneumáticos	33.60	41.94	\\r
40170000	02	0	Ex 02 - Estrado de borracha endurecida, obtido pela trituração de sucata de pneumáticos	33.60	41.94	\\r
40170000	03	0	Ex 03 - Borracha endurecida sob quaisquer formas, incluídos os desperdícios e resíduos	38.77	47.11	\\r
41012000		0	-Couros e peles em bruto, inteiros, não divididos, de peso unitário não superior a 8 kg quando secos, a 10 kg quando salgados a seco e a 16 kg quando frescos, salgados a úmido ou conservados de outro modo	31.45	33.15	\\r
41015010		0	Sem dividir	31.45	33.15	\\r
41015020		0	Divididos, com o lado flor	31.45	33.15	\\r
41015030		0	Divididos, sem o lado flor	31.45	33.15	\\r
41019010		0	Sem dividir	31.45	33.15	\\r
41019020		0	Divididos, com o lado flor	31.45	33.15	\\r
41019030		0	Divididos, sem o lado flor	31.45	33.15	\\r
41021000		0	-Com lã (não depiladas)	31.45	33.15	\\r
41022100		0	--Piqueladas	31.45	33.15	\\r
41022900		0	--Outras	31.45	33.15	\\r
41032000		0	-De répteis	31.45	33.15	\\r
41033000		0	-De suínos	31.45	33.15	\\r
41039000		0	-Outros	31.45	33.15	\\r
41041111		0	Couros e peles inteiros, de bovinos (incluindo os búfalos), de superfície unitária não superior a 2,6 m2, simplesmente curtidos ao cromo (wet-blue)	31.45	34.20	\\r
41041112		0	Outros couros e peles inteiros, de bovinos (incluindo os búfalos), de superfície unitária não superior a 2,6 m2	31.45	36.20	\\r
41041113		0	Outros couros e peles de bovinos (incluindo os búfalos), com pré-curtimenta vegetal	31.45	37.15	\\r
41041114		0	Outros couros e peles de bovinos (incluindo os búfalos)	31.45	36.20	\\r
41041119		0	Outros	31.45	37.15	\\r
41041121		0	Couros e peles inteiros, de bovinos (incluindo os búfalos), de superfície unitária não superior a 2,6 m2, simplesmente curtidos ao cromo (wet-blue)	31.45	34.20	\\r
41041122		0	Outros couros e peles inteiros, de bovinos (incluindo os búfalos), de superfície unitária não superior a 2,6 m2	31.45	36.20	\\r
41041123		0	Outros couros e peles de bovinos (incluindo os búfalos), com pré-curtimenta vegetal	31.45	37.15	\\r
41041124		0	Outros couros e peles de bovinos (incluindo os búfalos)	31.45	36.20	\\r
41041129		0	Outros	31.45	37.15	\\r
41041910		0	Couros e peles inteiros, de bovinos (incluindo os búfalos), de superfície unitária não superior a 2,6 m2, simplesmente curtidos ao cromo (wet-blue)	31.45	34.20	\\r
41041920		0	Outros couros e peles inteiros, de bovinos (incluindo os búfalos), de superfície unitária não superior a 2,6 m2	31.45	36.20	\\r
41041930		0	Outros couros e peles de bovinos (incluindo os búfalos), com pré-curtimenta vegetal	31.45	37.15	\\r
41041940		0	Outros couros e peles de bovinos (incluindo os búfalos)	31.45	36.20	\\r
41041990		0	Outros	31.45	37.15	\\r
41044110		0	Couros e peles inteiros, de bovinos (incluindo os búfalos), de superfície unitária não superior a 2,6 m2	31.45	36.20	\\r
41044120		0	Outros couros e peles de bovinos (incluindo os búfalos), curtidos ao vegetal, para solas	31.45	37.15	\\r
41044130		0	Outros couros e peles de bovinos (incluindo os búfalos)	31.45	37.15	\\r
41044190		0	Outros	31.45	37.15	\\r
41044910		0	Couros e peles inteiros, de bovinos (incluindo os búfalos), de superfície unitária não superior a 2,6 m2	31.45	36.20	\\r
41044920		0	Outros couros e peles de bovinos (incluindo os búfalos)	31.45	37.15	\\r
41044990		0	Outros	31.45	37.15	\\r
41051010		0	Com pré-curtimenta vegetal	31.45	37.15	\\r
41051021		0	Ao cromo (wet-blue)	31.45	36.20	\\r
41051029		0	Outras	31.45	36.20	\\r
41051090		0	Outras	31.45	37.15	\\r
41053000		0	-No estado seco (crust)	31.45	37.15	\\r
41062110		0	Com pré-curtimenta vegetal	31.45	37.15	\\r
51011190		0	Outras	31.45	36.20	\\r
41062121		0	Ao cromo (wet-blue)	31.45	36.20	\\r
41062129		0	Outros	31.45	37.15	\\r
41062190		0	Outros	31.45	37.15	\\r
41062200		0	--No estado seco (crust)	31.45	37.15	\\r
41063110		0	Simplesmente curtidos ao cromo (wet-blue)	31.45	36.20	\\r
41063190		0	Outros	31.45	37.15	\\r
41063200		0	--No estado seco (crust)	31.45	37.15	\\r
41064000		0	-De répteis	31.45	37.15	\\r
41069100		0	--No estado úmido (incluindo wet-blue)	31.45	37.15	\\r
41069200		0	--No estado seco (crust)	31.45	37.15	\\r
41071110		0	Couros e peles de bovinos (incluindo os búfalos), de superfície unitária não superior a 2,6 m2	31.45	36.20	\\r
41071120		0	Outros couros e peles de bovinos (incluindo os búfalos)	31.45	37.15	\\r
41071190		0	Outros	31.45	37.15	\\r
41071210		0	Couros e peles de bovinos (incluindo os búfalos), de superfície unitária não superior a 2,6 m2	31.45	36.20	\\r
41071220		0	Outros couros e peles de bovinos (incluindo os búfalos)	31.45	37.15	\\r
41071290		0	Outros	31.45	37.15	\\r
41071910		0	Couros e peles de bovinos (incluindo os búfalos), de superfície unitária não superior a 2,6 m2	31.45	36.20	\\r
41071920		0	Outros couros e peles de bovinos (incluindo os búfalos)	31.45	37.15	\\r
41071990		0	Outros	31.45	37.15	\\r
41079110		0	De bovinos (incluindo os búfalos)	31.45	37.15	\\r
41079190		0	Outros	31.45	37.15	\\r
41079210		0	De bovinos (incluindo os búfalos)	31.45	37.15	\\r
41079290		0	Outros	31.45	37.15	\\r
41079910		0	De bovinos (incluindo os búfalos)	31.45	37.15	\\r
41079990		0	Outros	31.45	37.15	\\r
41120000		0	Couros preparados após curtimenta ou após secagem e couros e peles apergaminhados, de ovinos, depilados, mesmo divididos, exceto os da posição 41.14.	31.45	37.15	\\r
41131010		0	Curtidos ao cromo, com acabamento	31.45	37.15	\\r
41131090		0	Outros	31.45	37.15	\\r
41132000		0	-De suínos	31.45	37.15	\\r
41133000		0	-De répteis	31.45	37.15	\\r
41139000		0	-Outros	31.45	37.15	\\r
41141000		0	-Couros e peles acamurçados (incluindo a camurça combinada)	31.45	37.15	\\r
41142010		0	Envernizados ou revestidos	31.45	37.15	\\r
41142020		0	Metalizados	31.45	37.15	\\r
41151000		0	-Couro reconstituído à base de couro ou de fibras de couro, em chapas, folhas ou tiras, mesmo enroladas	31.45	37.15	\\r
41152000		0	-Aparas e outros desperdícios de couros ou de peles preparados ou de couro reconstituído, não utilizáveis para fabricação de obras de couro. serragem, pó e farinha de couro	31.45	37.15	\\r
42010010		0	De couro natural ou reconstituído	31.45	41.40	\\r
42010090		0	Outros	31.45	41.40	\\r
42021100		0	--Com a superfície exterior de couro natural ou reconstituído	36.55	46.50	\\r
42021210		0	De plásticos	36.55	46.50	\\r
42021220		0	De matérias têxteis	36.55	46.50	\\r
42021900		0	--Outros	36.55	46.50	\\r
42022100		0	--Com a superfície exterior de couro natural ou reconstituído	36.55	46.50	\\r
42022210		0	De folhas de plásticos	36.55	51.70	\\r
42022220		0	De matérias têxteis	36.55	51.70	\\r
42022900		0	--Outras	36.55	46.50	\\r
42023100		0	--Com a superfície exterior de couro natural ou reconstituído	36.55	46.50	\\r
42023200		0	--Com a superfície exterior de folhas de plásticos ou de matérias têxteis	36.55	46.50	\\r
42023900		0	--Outros	36.55	46.50	\\r
42029100		0	--Com a superfície exterior de couro natural ou reconstituído	36.55	46.50	\\r
42029200		0	--Com a superfície exterior de folhas de plásticos ou de matérias têxteis	36.55	51.70	\\r
42029900		0	--Outros	36.55	46.50	\\r
42031000		0	-Vestuário	35.85	45.80	\\r
42032100		0	--Especialmente concebidas para a prática de esportes	35.85	45.80	\\r
42032900		0	--Outras	35.85	45.80	\\r
42032900	01	0	Ex 01 - De proteção, para trabalho manual	30.75	40.70	\\r
42033000		0	-Cintos, cinturões e bandoleiras ou talabartes	35.85	45.80	\\r
42034000		0	-Outros acessórios de vestuário	35.85	45.80	\\r
42050000		0	Outras obras de couro natural ou reconstituído.	35.85	45.80	\\r
42060000		0	Obras de tripa, de baudruches, de bexiga ou de tendões.	35.85	45.80	\\r
42060000	01	0	Ex 01 - Cordas de tripa	30.75	40.70	\\r
43011000		0	-De visons, inteiras, com ou sem cabeça, cauda ou patas	36.39	42.09	\\r
43013000		0	-De cordeiros denominados astracã, breitschwanz, caracul, persianer ou semelhantes, de cordeiros da Índia, da China, da Mongólia ou do Tibete, inteiras, com ou sem cabeça, cauda ou patas	36.39	42.09	\\r
43016000		0	-De raposas, inteiras, com ou sem cabeça, cauda ou patas	36.39	42.09	\\r
43018000		0	-De outros animais, inteiras, com ou sem cabeça, cauda ou patas	36.39	42.09	\\r
43019000		0	-Cabeças, caudas, patas e outras partes utilizáveis na indústria de peles	36.39	42.09	\\r
43021100		0	--De visons	57.44	64.93	\\r
43021910		0	De ovinos	41.49	48.98	\\r
43021990		0	Outras	41.49	48.98	\\r
43022000		0	-Cabeças, caudas, patas e outras partes, desperdícios e aparas, não reunidos (não montados)	57.44	64.93	\\r
43022000	01	0	Ex 01 - Cabeças, caudas, patas e outras partes, desperdícios e aparas, de coelho ou de lebre	41.49	48.98	\\r
43022000	02	0	Ex 02 - Cabeças, caudas, patas e outras partes, desperdícios e aparas, de bovino, de ovino ou de caprino	41.49	48.98	\\r
43023000		0	-Peles com pelo inteiras e respectivos pedaços e aparas, reunidos (montados)	57.44	64.93	\\r
43023000	01	0	Ex 01 - De bovino, ovino, caprino, coelho ou de lebre	41.49	48.98	\\r
51011900		0	--Outras	31.45	36.20	\\r
43023000	02	0	Ex 02 - Peles “alongadas”, exceto de bovino, ovino, caprino, coelho ou de lebre	52.43	59.92	\\r
43031000		0	-Vestuário e seus acessórios	52.43	62.38	\\r
43031000	01	0	Ex 01 - De bovino, ovino, caprino, coelho ou de lebre	41.49	51.44	\\r
43039000		0	-Outros	52.43	62.38	\\r
43039000	01	0	Ex 01 - De bovino, ovino, caprino, coelho ou de lebre	41.49	51.44	\\r
43040000		0	Peles com pelo artificiais, e suas obras.	41.49	51.44	\\r
44011000		0	-Lenha em qualquer estado	30.75	32.45	\\r
44012100		0	--De coníferas	30.75	32.45	\\r
44012200		0	--De não coníferas	30.75	32.45	\\r
44013100		0	--Pellets de madeira	30.75	32.45	\\r
44013900		0	--Outros	30.75	32.45	\\r
44021000		0	-De bambu	30.75	32.45	\\r
44029000		0	-Outros	30.75	32.45	\\r
44031000		0	-Tratada com tinta, creosoto ou com outros agentes de conservação	30.75	32.45	\\r
44031000	01	0	Ex 01 - Esquadriada	30.75	32.45	\\r
44032000		0	-Outras, de coníferas	30.75	32.45	\\r
44032000	01	0	Ex 01 - Esquadriadas	30.75	32.45	\\r
44034100		0	--Dark Red Meranti, Light Red Meranti e Meranti Bakau	30.75	32.45	\\r
44034100	01	0	Ex 01 - Esquadriadas	30.75	32.45	\\r
44034900		0	--Outras	30.75	32.45	\\r
44034900	01	0	Ex 01 - Esquadriadas	30.75	32.45	\\r
44039100		0	--De carvalho (Quercus spp.)	30.75	32.45	\\r
44039100	01	0	Ex 01 - Esquadriada	30.75	32.45	\\r
44039200		0	--De faia (Fagus spp.)	30.75	32.45	\\r
44039200	01	0	Ex 01 - Esquadriada	30.75	32.45	\\r
44039900		0	--Outras	30.75	32.45	\\r
44039900	01	0	Ex 01 - Esquadriadas	30.75	32.45	\\r
44041000		0	-De coníferas	30.75	32.45	\\r
44042000		0	-De não coníferas	30.75	32.45	\\r
44050000		0	Lã de madeira. farinha de madeira.	30.75	32.45	\\r
44061000		0	-Não impregnados	30.75	33.50	\\r
44069000		0	-Outros	30.75	33.50	\\r
44071000		0	-De coníferas	30.75	34.52	\\r
44072100		0	--Mahogany (Mogno) (Swietenia spp.)	30.75	34.52	\\r
44072200		0	--Virola, Imbuia e Balsa	30.75	34.52	\\r
44072500		0	--Dark Red Meranti, Light Red Meranti e Meranti Bakau	30.75	34.52	\\r
44072600		0	--White Lauan, White Meranti, White Seraya, Yellow Meranti e Alan	30.75	34.52	\\r
44072700		0	--Sapelli	30.75	34.52	\\r
44072800		0	--Iroko	30.75	34.52	\\r
44072910		0	De cedro	30.75	34.52	\\r
44072920		0	De ipê	30.75	34.52	\\r
44072930		0	De pau-marfim	30.75	34.52	\\r
44072940		0	De louro	30.75	34.52	\\r
44072990		0	Outras	30.75	34.52	\\r
44079100		0	--De carvalho (Quercus spp.)	30.75	34.52	\\r
44079200		0	--De faia (Fagus spp.)	30.75	34.52	\\r
44079300		0	--De ácer (Acer spp.)	30.75	34.52	\\r
44079400		0	--De cerejeira (Prunus spp.)	30.75	34.52	\\r
44079500		0	--De freixo (Fraxinus spp.)	30.75	34.52	\\r
44079910		0	De canafístula (Pelthophorum vogelianum)	30.75	34.52	\\r
44079920		0	De peroba (Paratecoma peroba)	30.75	34.52	\\r
44079930		0	De guaiuvira (Patagonula americana)	30.75	34.52	\\r
44079940		0	De cabreúva Parda (Myrocarpus spp.)	30.75	34.52	\\r
44079950		0	De urundei (Astronium balansae)	30.75	34.52	\\r
44079960		0	De amendoim (Pterogyne nitens)	30.75	34.52	\\r
44079970		0	De angico preto (Piptadenia macrocarpa)	30.75	34.52	\\r
44079990		0	Outras	30.75	34.52	\\r
44081010		0	Obtidas por corte de madeira estratificada	35.85	41.55	\\r
44081091		0	De pinho brasil (Araucaria angustifolia)	33.42	37.19	\\r
44081099		0	Outras	33.42	37.19	\\r
44083110		0	Obtidas por corte de madeira estratificada	35.85	41.55	\\r
44083190		0	Outras	33.42	37.19	\\r
44083910		0	Obtidas por corte de madeira estratificada	35.85	41.55	\\r
44083991		0	De cedro	33.42	37.19	\\r
44083992		0	De pau-marfim	33.42	37.19	\\r
44083999		0	Outras	33.42	37.19	\\r
44089010		0	Obtidas por corte de madeira estratificada	35.85	41.55	\\r
44089090		0	Outras	33.42	37.19	\\r
44091000		0	-De coníferas	35.85	41.55	\\r
44092100		0	--De bambu	35.85	41.55	\\r
44092900		0	--Outras	35.85	41.55	\\r
44101110		0	Em bruto ou simplesmente polidos	33.42	39.12	\\r
44101121		0	Em ambas as faces, com película protetora na face superior e trabalho de encaixe nas quatro laterais, dos tipos utilizados para pisos (pavimentos)	33.42	40.91	\\r
44101129		0	Outros	33.42	39.12	\\r
44101190		0	Outros	33.42	39.12	\\r
44101210		0	Em bruto ou simplesmente polidos	33.42	39.12	\\r
44101290		0	Outros	33.42	39.12	\\r
44101911		0	Em bruto ou simplesmente polidos	33.42	39.12	\\r
44101919		0	Outros	33.42	39.12	\\r
44101991		0	Em bruto ou simplesmente polidos	33.42	39.12	\\r
44101992		0	Recobertos na superfície com papel impregnado de melamina	33.42	39.12	\\r
44101999		0	Outros	33.42	39.12	\\r
44109000		0	-Outros	33.42	39.12	\\r
44111210		0	Não trabalhados mecanicamente nem recobertos à superfície	33.42	39.12	\\r
44111290		0	Outros	33.42	39.12	\\r
44111310		0	Não trabalhados mecanicamente nem recobertos à superfície	33.42	39.12	\\r
44111391		0	Recobertos em ambas as faces com papel impregnado de melamina, película protetora na face superior e trabalho de encaixe nas quatro laterais, dos tipos utilizados para pisos (pavimentos)	33.42	40.91	\\r
44111399		0	Outros	33.42	39.12	\\r
44111410		0	Não trabalhados mecanicamente nem recobertos à superfície	33.42	39.12	\\r
44111490		0	Outros	33.42	39.12	\\r
44119210		0	Não trabalhados mecanicamente nem recobertos à superfície	33.42	39.12	\\r
44119290		0	Outros	33.42	39.12	\\r
44119310		0	Não trabalhados mecanicamente nem recobertos à superfície	33.42	39.12	\\r
44119390		0	Outros	33.42	39.12	\\r
44119410		0	Não trabalhados mecanicamente nem recobertos à superfície	33.42	39.12	\\r
44119490		0	Outros	33.42	39.12	\\r
44121000		0	-De bambu	33.42	39.12	\\r
44123100		0	--Com pelo menos uma face de madeiras tropicais mencionadas na Nota 2 de subposições do presente Capítulo	33.42	39.12	\\r
44123200		0	--Outras, com pelo menos uma face de madeira não conífera	33.42	39.12	\\r
44123900		0	--Outras	33.42	39.12	\\r
44129400		0	--Com alma aglomerada, alveolada ou lamelada	33.42	39.12	\\r
44129900		0	--Outras	33.42	39.12	\\r
44130000		0	Madeira densificada, em blocos, pranchas, lâminas ou perfis.	35.85	41.55	\\r
44140000		0	Molduras de madeira para quadros, fotografias, espelhos ou objetos semelhantes.	35.85	41.55	\\r
44151000		0	-Caixotes, caixas, engradados, barricas e embalagens semelhantes. carretéis para cabos	30.75	36.45	\\r
44152000		0	-Paletes simples, paletes-caixas e outros estrados para carga. taipais de paletes	30.75	36.45	\\r
44160010		0	De carvalho (Quercus spp.)	30.75	32.45	\\r
44160090		0	Outros	30.75	36.45	\\r
44170010		0	Ferramentas	30.75	36.45	\\r
44170020		0	Formas, alargadeiras e esticadores, para calçados	30.75	36.45	\\r
44170090		0	Outros	30.75	36.45	\\r
44181000		0	-Janelas, janelas de sacada e respectivos caixilhos e alizares	30.75	38.24	\\r
44182000		0	-Portas e respectivos caixilhos, alizares e soleiras	30.75	38.24	\\r
44184000		0	-Armações para concreto	33.42	40.91	\\r
44185000		0	-Fasquias para telhados (shingles e shakes)	33.42	40.91	\\r
44186000		0	-Postes e vigas	33.42	40.91	\\r
44187100		0	--Para pisos (pavimentos) em mosaico	33.42	40.91	\\r
44187200		0	--Outros, de camadas múltiplas	33.42	40.91	\\r
44187900		0	--Outros	33.42	40.91	\\r
44189000		0	-Outras	33.42	40.91	\\r
44190000		0	Artefatos de madeira para mesa ou cozinha.	30.75	38.24	\\r
44201000		0	-Estatuetas e outros objetos de ornamentação, de madeira	30.75	38.24	\\r
44209000		0	-Outros	30.75	38.24	\\r
44211000		0	-Cabides para vestuário	30.75	38.24	\\r
44219000		0	-Outras	30.75	38.24	\\r
45011000		0	-Cortiça natural, em bruto ou simplesmente preparada	31.45	33.15	\\r
45019000		0	-Outros	31.45	33.15	\\r
45019000	01	0	Ex 01 - Cortiça triturada, granulada ou pulverizada	31.45	33.15	\\r
45020000		0	Cortiça natural, sem a crosta ou simplesmente esquadriada, ou em cubos, chapas, folhas ou tiras, de forma quadrada ou retangular (incluindo os esboços com arestas vivas, para rolhas).	31.45	34.20	\\r
45031000		0	-Rolhas	31.45	37.15	\\r
45039000		0	-Outras	31.45	37.15	\\r
45041000		0	-Cubos, blocos, chapas, folhas e tiras. ladrilhos de qualquer formato. cilindros maciços, incluindo os discos	31.45	37.15	\\r
45049000		0	-Outras	31.45	37.15	\\r
46012100		0	--De bambu	31.45	38.06	\\r
46012200		0	--De rotim	31.45	38.06	\\r
46012900		0	--Outras	31.45	38.06	\\r
46019200		0	--De bambu	31.45	38.06	\\r
46019300		0	--De rotim	31.45	38.06	\\r
46019400		0	--De outras matérias vegetais	31.45	38.06	\\r
46019900		0	--Outras	31.45	38.06	\\r
46021100		0	--De bambu	31.45	38.06	\\r
46021200		0	--De rotim	31.45	38.06	\\r
46021900		0	--Outras	31.45	38.06	\\r
46029000		0	-Outras	31.45	38.06	\\r
47010000		0	Pastas mecânicas de madeira.	31.45	34.20	\\r
47020000		0	Pastas químicas de madeira, para dissolução.	31.45	34.20	\\r
47031100		0	--De coníferas	31.45	34.20	\\r
47031900		0	--De não coníferas	31.45	34.20	\\r
47032100		0	--De coníferas	31.45	34.20	\\r
47032900		0	--De não coníferas	31.45	34.20	\\r
47041100		0	--De coníferas	31.45	34.20	\\r
47041900		0	--De não coníferas	31.45	34.20	\\r
47042100		0	--De coníferas	31.45	34.20	\\r
47042900		0	--De não coníferas	31.45	34.20	\\r
47050000		0	Pastas de madeira obtidas por combinação de um tratamento mecânico com um tratamento químico.	31.45	34.20	\\r
47061000		0	-Pastas de línteres de algodão	31.45	34.20	\\r
47062000		0	-Pastas de fibras obtidas a partir de papel ou de cartão reciclados (desperdícios e aparas)	31.45	34.20	\\r
47063000		0	-Outras, de bambu	31.45	34.20	\\r
47069100		0	--Mecânicas	31.45	34.20	\\r
47069200		0	--Químicas	31.45	34.20	\\r
47069300		0	--Obtidas por combinação de um tratamento mecânico com um tratamento químico	31.45	34.20	\\r
47071000		0	-Papéis ou cartões, Kraft, crus, ou papéis ou cartões ondulados	31.45	33.15	\\r
47072000		0	-Outros papéis ou cartões, obtidos principalmente a partir de pasta química branqueada, não corada na massa	31.45	33.15	\\r
47073000		0	-Papéis ou cartões, obtidos principalmente a partir de pasta mecânica (por exemplo, jornais, periódicos e impressos semelhantes)	31.45	33.15	\\r
47079000		0	-Outros, incluindo os desperdícios e aparas não selecionados	31.45	33.15	\\r
48010010		0	De peso inferior ou igual a 57 g/m2, em que 65% ou mais, em peso, do conteúdo total de fibras seja constituído por fibras de madeiras obtidas por processo mecânico	29.52	33.29	\\r
48021000		0	-Papel e cartão feitos a mão (folha a folha)	34.12	40.73	\\r
48022010		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48022090		0	Outros	34.12	40.73	\\r
48024010		0	Em tiras ou rolos de largura não superior a 15 cm	34.12	42.46	\\r
48024090		0	Outros	34.12	40.73	\\r
48025410		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48025491		0	Fabricado principalmente a partir de pasta branqueada ou pasta obtida por um processo mecânico, de peso inferior a 19 g/m2	34.12	35.82	\\r
48025499		0	Outros	34.12	40.73	\\r
48025510		0	De largura não superior a 15 cm	34.12	42.46	\\r
48025591		0	De desenho	34.12	40.73	\\r
48025592		0	Kraft	34.12	40.73	\\r
48025599		0	Outros	34.12	40.73	\\r
48025610		0	Em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48025691		0	Para impressão de papel-moeda	31.45	35.22	\\r
48025692		0	De desenho	34.12	40.73	\\r
48025693		0	Kraft	34.12	40.73	\\r
48025699		0	Outros	34.12	40.73	\\r
48025710		0	Em tiras de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48025791		0	Para impressão de papel-moeda	31.45	35.22	\\r
48025792		0	De desenho	34.12	40.73	\\r
48025793		0	Kraft	34.12	40.73	\\r
48025799		0	Outros	34.12	40.73	\\r
48025810		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48025891		0	De desenho	34.12	40.73	\\r
48025892		0	Kraft	34.12	40.73	\\r
48025899		0	Outros	34.12	40.73	\\r
48026110		0	De largura não superior a 15 cm	34.12	42.46	\\r
48026191		0	De peso inferior ou igual a 57 g/m2, em que 65% ou mais, em peso, do conteúdo total de fibras seja constituído por fibras de madeira obtidas por processo mecânico	24.87	28.64	\\r
48026192		0	Kraft	34.12	40.73	\\r
48026199		0	Outros	24.87	31.48	\\r
48026210		0	Em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48026291		0	De peso inferior ou igual a 57 g/m2, em que 65% ou mais, em peso, do conteúdo total de fibras seja constituído por fibras de madeira obtidas por processo mecânico	34.12	37.89	\\r
48026292		0	Kraft	34.12	40.73	\\r
48026299		0	Outros	34.12	40.73	\\r
48026910		0	Em tiras de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48026991		0	De peso inferior ou igual a 57 g/m2, em que 65% ou mais, em peso, do conteúdo total de fibras seja constituído por fibras de madeira obtidas por processo mecânico	34.12	37.89	\\r
48026992		0	Kraft	34.12	40.73	\\r
48026999		0	Outros	34.12	40.73	\\r
48030010		0	Pasta (ouate) de celulose e mantas de fibras de celulose	34.12	40.73	\\r
48030090		0	Outros	34.12	40.73	\\r
48041100		0	--Crus	34.12	40.73	\\r
48041900		0	--Outros	34.12	40.73	\\r
48042100		0	--Crus	34.12	40.73	\\r
48042900		0	--Outros	34.12	40.73	\\r
48043110		0	De rigidez dielétrica igual ou superior a 600 V (método ASTM D 202 ou equivalente)	34.12	35.82	\\r
48043190		0	Outros	34.12	40.73	\\r
48043910		0	De rigidez dielétrica igual ou superior a 600 V (método ASTM D 202 ou equivalente)	34.12	35.82	\\r
48043990		0	Outros	34.12	40.73	\\r
48044100		0	--Crus	34.12	40.73	\\r
48044200		0	--Branqueados uniformemente na massa e em que mais de 95%, em peso, do conteúdo total de fibras seja constituído por fibras de madeira obtidas por processo químico	34.12	40.73	\\r
48044900		0	--Outros	34.12	40.73	\\r
48045100		0	--Crus	34.12	40.73	\\r
48045200		0	--Branqueados uniformemente na massa e em que mais de 95%, em peso, do conteúdo total de fibras seja constituído por fibras de madeira obtidas por processo químico	34.12	40.73	\\r
48045910		0	Semibranqueados, com um conteúdo de 100%, em peso, de fibras de madeira obtidas por processo químico	34.12	35.82	\\r
48045990		0	Outros	34.12	40.73	\\r
48051100		0	--Papel semiquímico para ondular	34.12	40.73	\\r
48051200		0	--Papel palha para ondular	34.12	40.73	\\r
48051900		0	--Outros	34.12	40.73	\\r
48052400		0	--De peso não superior a 150 g/m2	34.12	40.73	\\r
48052500		0	--De peso superior a 150 g/m2	34.12	40.73	\\r
48053000		0	-Papel sulfite de embalagem	34.12	40.73	\\r
48054010		0	De peso superior a 15 g/m2 mas inferior ou igual a 25 g/m2, com um conteúdo de fibras sintéticas termossoldáveis igual ou superior a 20% mas inferior ou igual a 25%, em peso, do conteúdo total de fibras	34.12	35.82	\\r
48054090		0	Outros	34.12	40.73	\\r
48055000		0	-Papel-feltro e cartão-feltro, papel e cartão lanosos	34.12	40.73	\\r
48059100		0	--De peso não superior a 150 g/m2	34.12	40.73	\\r
48059210		0	Com fibras de vidro	34.12	40.73	\\r
48059290		0	Outros	34.12	40.73	\\r
48059300		0	--De peso igual ou superior a 225 g/m2	34.12	40.73	\\r
48061000		0	-Papel-pergaminho e cartão-pergaminho (sulfurizados)	34.12	40.73	\\r
48062000		0	-Papel impermeável a gorduras	34.12	40.73	\\r
48063000		0	-Papel vegetal	34.12	40.73	\\r
48064000		0	-Papel cristal e outros papéis calandrados transparentes ou translúcidos	34.12	40.73	\\r
48070000		0	Papel e cartão obtidos por colagem de folhas sobrepostas, não revestidos na superfície nem impregnados, mesmo reforçados interiormente, em rolos ou em folhas.	34.12	40.73	\\r
48081000		0	-Papel e cartão ondulados, mesmo perfurados	34.12	40.73	\\r
51012100		0	--Lã de tosquia	31.45	36.20	\\r
48084000		0	-Papéis Kraft, encrespados ou plissados, mesmo gofrados, estampados ou perfurados	34.12	40.73	\\r
48089000		0	-Outros	34.12	40.73	\\r
48092000		0	-Papel autocopiativo	34.12	41.61	\\r
48099000		0	-Outros	34.12	41.61	\\r
48101310		0	De largura não superior a 15 cm	34.12	42.46	\\r
48101381		0	Metalizados	34.12	41.61	\\r
48101382		0	Baritados (revestidos de óxido ou sulfato de bário)	34.12	35.82	\\r
48101389		0	Outros	34.12	41.61	\\r
48101390		0	Outros	34.12	41.61	\\r
48101410		0	Em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48101481		0	Metalizados	34.12	41.61	\\r
48101482		0	Baritados (revestidos de óxido ou sulfato de bário)	34.12	35.82	\\r
48101489		0	Outros	34.12	41.61	\\r
48101490		0	Outros	34.12	41.61	\\r
48101910		0	Em tiras de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48101981		0	Metalizados	34.12	41.61	\\r
48101982		0	Baritados (revestidos de óxido ou sulfato de bário)	34.12	35.82	\\r
48101989		0	Outros	24.87	32.36	\\r
48101990		0	Outros	34.12	41.61	\\r
48102210		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48102290		0	Outros	24.87	32.36	\\r
48102910		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48102990		0	Outros	34.12	41.61	\\r
48103110		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48103190		0	Outros	34.12	41.61	\\r
48103210		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48103290		0	Outros	34.12	41.61	\\r
48103910		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48103990		0	Outros	34.12	41.61	\\r
48109210		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48109290		0	Outros	34.12	41.61	\\r
48109910		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48109990		0	Outros	34.12	41.61	\\r
48111010		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48111090		0	Outros	34.12	40.73	\\r
48114110		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48114190		0	Outros	34.12	40.73	\\r
48114910		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48114990		0	Outros	34.12	40.73	\\r
48115110		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48115121		0	De silicone, exceto gofrados na face recoberta ou revestida	34.12	40.73	\\r
48115122		0	De polietileno, estratificado com alumínio, impresso	34.12	40.73	\\r
48115123		0	De polietileno ou polipropileno, em ambas as faces, base para papel fotográfico	34.12	35.82	\\r
48115128		0	Outros, gofrados na face recoberta ou revestida	34.12	35.82	\\r
48115129		0	Outros	34.12	40.73	\\r
48115130		0	Outros, impregnados	34.12	40.73	\\r
48115910		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48115921		0	De polietileno ou polipropileno, em ambas as faces, base para papel fotográfico	34.12	40.73	\\r
48115922		0	De silicone	34.12	40.73	\\r
48115923		0	De polietileno, estratificado com alumínio, impresso	34.12	40.73	\\r
48115929		0	Outros	34.12	40.73	\\r
48115930		0	Outros, impregnados	34.12	40.73	\\r
48116010		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48116090		0	Outros	34.12	40.73	\\r
48119010		0	Em tiras ou rolos de largura não superior a 15 cm ou em folhas em que nenhum lado exceda 360 mm, quando não dobradas	34.12	42.46	\\r
48119090		0	Outros	34.12	40.73	\\r
48120000		0	Blocos e chapas, filtrantes, de pasta de papel.	31.45	38.06	\\r
48131000		0	-Em cadernos ou em tubos	48.87	55.48	\\r
48132000		0	-Em rolos de largura não superior a 5 cm	48.87	55.48	\\r
48139000		0	-Outros	48.87	55.48	\\r
48142000		0	-Papel de parede e revestimentos de parede semelhantes, constituídos por papel revestido ou recoberto, no lado da face, por uma camada de plástico granida, gofrada, colorida, impressa com desenhos ou decorada de qualquer outra forma	40.80	48.29	\\r
48149000		0	-Outros	40.80	48.29	\\r
48162000		0	-Papel autocopiativo	34.12	42.46	\\r
48169010		0	Papel-carbono e semelhantes	38.77	47.11	\\r
48169090		0	Outros	38.77	46.26	\\r
48171000		0	-Envelopes	34.12	42.46	\\r
48172000		0	-Aerogramas, bilhetes-postais não ilustrados e cartões para correspondência	34.12	42.46	\\r
48173000		0	-Caixas, sacos e semelhantes, de papel ou cartão, que contenham um sortido de artigos para correspondência	34.12	42.46	\\r
48181000		0	-Papel higiênico	21.50	29.84	\\r
48182000		0	-Lenços, incluindo os de desmaquiar, e toalhas de mão	34.12	42.46	\\r
48183000		0	-Toalhas de mesa e guardanapos	34.12	42.46	\\r
48185000		0	-Vestuário e seus acessórios	33.42	41.76	\\r
51012900		0	--Outras	31.45	36.20	\\r
48189010		0	Almofadas absorventes dos tipos utilizados em embalagens de produtos alimentícios	34.12	42.46	\\r
48189090		0	Outros	34.12	42.46	\\r
48191000		0	-Caixas de papel ou cartão, ondulados	38.77	47.11	\\r
48192000		0	-Caixas e cartonagens, dobráveis, de papel ou cartão, não ondulados	38.77	47.11	\\r
48193000		0	-Sacos cuja base tenha largura igual ou superior a 40 cm	38.77	47.11	\\r
48194000		0	-Outros sacos. bolsas e cartuchos	38.77	47.11	\\r
48195000		0	-Outras embalagens, incluindo as capas para discos	38.77	47.11	\\r
48196000		0	-Cartonagens para escritórios, lojas e estabelecimentos semelhantes	38.77	47.11	\\r
48201000		0	-Livros de registro e de contabilidade, blocos de notas, de encomendas, de recibos, de apontamentos, de papel para cartas, agendas e artigos semelhantes	38.77	47.11	\\r
48202000		0	-Cadernos	31.45	39.79	\\r
48203000		0	-Classificadores, capas para encadernação (exceto as capas para livros) e capas de processos	38.77	47.11	\\r
48204000		0	-Formulários em blocos tipo manifold, mesmo com folhas intercaladas de papel-carbono	34.12	42.46	\\r
48205000		0	-Álbuns para amostras ou para coleções	38.77	47.11	\\r
48209000		0	-Outros	38.77	47.11	\\r
48211000		0	-Impressas	31.45	39.79	\\r
48219000		0	-Outras	31.45	39.79	\\r
48221000		0	-Dos tipos utilizados para enrolamento de fios têxteis	36.55	44.89	\\r
48229000		0	-Outros	36.55	44.89	\\r
48232010		0	De peso superior a 15 g/m2 mas inferior ou igual a 25 g/m2, com um conteúdo de fibras sintéticas termossoldáveis igual ou superior a 20% mas inferior ou igual a 25%, em peso, do conteúdo total de fibras	38.77	40.47	\\r
48232091		0	Em tiras ou rolos de largura superior a 15 cm mas não superior a 36 cm	38.77	45.38	\\r
48232099		0	Outros	38.77	47.11	\\r
48234000		0	-Papéis-diagrama para aparelhos registradores, em bobinas, em folhas ou em discos	38.77	47.11	\\r
48236100		0	--De bambu	38.77	47.11	\\r
48236900		0	--Outros	38.77	47.11	\\r
48237000		0	-Artigos moldados ou prensados, de pasta de papel	38.77	47.11	\\r
48239010		0	Cartões perfurados para mecanismos Jacquard	38.77	40.47	\\r
48239020		0	De rigidez dielétrica superior ou igual a 600 V (método ASTM D 202 ou equivalente) e de peso inferior ou igual a 60 g/m2	38.77	40.47	\\r
48239091		0	Em tiras ou rolos de largura superior a 15 cm mas não superior a 36 cm	38.77	45.38	\\r
48239099		0	Outros	38.77	47.11	\\r
49011000		0	-Em folhas soltas, mesmo dobradas	20.11	20.71	\\r
49019100		0	--Dicionários e enciclopédias, mesmo em fascículos	31.45	32.05	\\r
49019900		0	--Outros	31.45	32.05	\\r
49021000		0	-Que se publiquem pelo menos quatro vezes por semana	31.45	32.05	\\r
49021000	01	0	Ex 01 - Com publicidade	31.45	32.05	\\r
49029000		0	-Outros	31.45	32.05	\\r
49029000	01	0	Ex 01 - Com publicidade	31.45	32.05	\\r
49030000		0	Álbuns ou livros de ilustrações e álbuns para desenhar ou colorir, para crianças.	31.45	39.79	\\r
49040000		0	Música manuscrita ou impressa, ilustrada ou não, mesmo encadernada.	31.45	32.05	\\r
49051000		0	-Globos	31.45	34.20	\\r
49059100		0	--Sob a forma de livros ou brochuras	31.45	33.15	\\r
49059900		0	--Outros	31.45	34.20	\\r
49060000		0	Planos, plantas e desenhos, de arquitetura, de engenharia e outros planos e desenhos industriais, comerciais, topográficos ou semelhantes, originais, feitos a mão. textos manuscritos. reproduções fotográficas em papel sensibilizado e cópias a papel-carbon	31.45	34.20	\\r
49070010		0	Papéis-moeda	31.45	32.05	\\r
49070020		0	Cheques de viagem	31.45	32.05	\\r
49070030		0	Títulos de ações ou de obrigações e títulos semelhantes, convalidados e firmados	31.45	32.05	\\r
49070090		0	Outros	31.45	39.79	\\r
49081000		0	-Decalcomanias vitrificáveis	31.45	39.79	\\r
49089000		0	-Outras	31.45	39.79	\\r
49090000		0	Cartões-postais impressos ou ilustrados. cartões impressos com votos ou mensagens pessoais, mesmo ilustrados, com ou sem envelopes, guarnições ou aplicações.	31.45	39.79	\\r
49100000		0	Calendários de qualquer espécie, impressos, incluindo os blocos-calendários para desfolhar.	36.55	44.89	\\r
49111010		0	Que contenham informações relativas ao funcionamento, manutenção, reparo ou utilização de máquinas, aparelhos, veículos e outras mercadorias de origem extrazona	31.45	32.05	\\r
49111090		0	Outros	31.45	39.79	\\r
49119100		0	--Estampas, gravuras e fotografias	31.45	39.79	\\r
49119100	01	0	Ex 01 - Fotografias tiradas diretamente	31.45	39.79	\\r
49119900		0	--Outros	31.45	39.79	\\r
49119900	01	0	Ex 01 - Textos manuscritos ou datilografados, e suas cópias obtidas por meio de papel carbono ou fotocópia	31.45	39.79	\\r
50010000		0	Casulos de bicho-da-seda próprios para dobar.	30.75	33.50	\\r
50020000		0	Seda crua (não fiada).	31.45	34.20	\\r
50030010		0	Não cardados nem penteados	31.45	34.20	\\r
50030090		0	Outros	31.45	34.20	\\r
50040000		0	Fios de seda (exceto fios de desperdícios de seda) não acondicionados para venda a retalho.	31.45	40.61	\\r
50050000		0	Fios de desperdícios de seda, não acondicionados para venda a retalho.	31.45	40.61	\\r
50060000		0	Fios de seda ou de desperdícios de seda, acondicionados para venda a retalho. pelo de Messina (crina de Florença).	31.45	40.61	\\r
50071010		0	Estampados, tintos ou de fios de diversas cores	30.75	42.93	\\r
50071090		0	Outros	30.75	42.93	\\r
50072010		0	Estampados, tintos ou de fios de diversas cores	30.75	42.93	\\r
50072090		0	Outros	30.75	42.93	\\r
50079000		0	-Outros tecidos	30.75	42.93	\\r
51011110		0	De finura superior ou igual 22,05 micrômetros (mícrons) mas inferior ou igual a 32,6 micrômetros (mícrons)	31.45	36.20	\\r
51013000		0	-Carbonizada	31.45	36.20	\\r
51021100		0	--De cabra de Caxemira	31.45	36.20	\\r
51021900		0	--Outros	31.45	36.20	\\r
51022000		0	-Pelos grosseiros	31.45	36.20	\\r
51031000		0	-Desperdícios da penteação de lã ou de pelos finos	31.45	35.22	\\r
51032000		0	-Outros desperdícios de lã ou de pelos finos	31.45	35.22	\\r
51033000		0	-Desperdícios de pelos grosseiros	31.45	35.22	\\r
51040000		0	Fiapos de lã ou de pelos finos ou grosseiros.	31.45	35.22	\\r
51051000		0	-Lã cardada	31.45	37.15	\\r
51052100		0	--“Lã penteada a granel”	31.45	37.15	\\r
51052910		0	Tops	31.45	37.15	\\r
51052991		0	De finura inferior a 22,5 micrômetros (mícrons)	31.45	37.15	\\r
51052999		0	Outras	31.45	37.15	\\r
51053100		0	--De cabra de Caxemira	31.45	37.15	\\r
51053900		0	--Outros	31.45	37.15	\\r
51054000		0	-Pelos grosseiros, cardados ou penteados	31.45	37.15	\\r
51061000		0	-Que contenham pelo menos 85%, em peso, de lã	31.45	40.61	\\r
51062000		0	-Que contenham menos de 85%, em peso, de lã	31.45	40.61	\\r
51071011		0	De dois cabos, de título inferior ou igual a 184,58 decitex por cabo	31.45	40.61	\\r
51071019		0	Outros	31.45	40.61	\\r
51071090		0	Outros	31.45	40.61	\\r
51072000		0	-Que contenham menos de 85%, em peso, de lã	31.45	40.61	\\r
51081000		0	-Cardados	31.45	40.61	\\r
51082000		0	-Penteados	31.45	40.61	\\r
51091000		0	-Que contenham pelo menos 85%, em peso, de lã ou de pelos finos	31.45	40.61	\\r
51099000		0	-Outros	31.45	40.61	\\r
51100000		0	Fios de pelos grosseiros ou de crina (incluindo os fios de crina revestidos por enrolamento), mesmo acondicionados para venda a retalho.	31.45	40.61	\\r
51111110		0	De lã	30.75	42.93	\\r
51111120		0	De pelos finos	30.75	42.93	\\r
51111900		0	--Outros	30.75	42.93	\\r
51112000		0	-Outros, combinados, principal ou unicamente, com filamentos sintéticos ou artificiais	30.75	42.93	\\r
51113010		0	De lã, feltrados, com trama combinada exclusivamente com fibras sintéticas e urdidura exclusivamente de algodão, de peso superior ou igual a 600 g/m2, próprios para fabricação de bolas de tênis	31.45	33.15	\\r
51113090		0	Outros	31.45	43.63	\\r
51119000		0	-Outros	31.45	43.63	\\r
51121100		0	--De peso não superior a 200 g/m2	30.75	42.93	\\r
51121910		0	De lã	30.75	42.93	\\r
51121920		0	De pelos finos	30.75	42.93	\\r
51122010		0	De lã	31.45	43.63	\\r
51122020		0	De pelos finos	31.45	43.63	\\r
51123010		0	De lã	31.45	43.63	\\r
51123020		0	De pelos finos	31.45	43.63	\\r
51129000		0	-Outros	31.45	43.63	\\r
51130011		0	Que contenham pelo menos 85%, em peso, de pelos grosseiros	30.75	42.93	\\r
51130012		0	Que contenham menos de 85%, em peso, de pelos grosseiros e que contenham algodão	30.75	42.93	\\r
51130013		0	Que contenham menos de 85%, em peso, de pelos grosseiros e que não contenham algodão	30.75	42.93	\\r
51130020		0	De crina	30.75	42.93	\\r
52010010		0	Não debulhado	31.45	35.22	\\r
52010020		0	Simplesmente debulhado	31.45	35.22	\\r
52010090		0	Outros	31.45	35.22	\\r
52021000		0	-Desperdícios de fios	31.45	35.22	\\r
52029100		0	--Fiapos	31.45	35.22	\\r
52029900		0	--Outros	31.45	35.22	\\r
52030000		0	Algodão cardado ou penteado.	31.45	36.20	\\r
52041111		0	De dois cabos	31.45	40.61	\\r
52041112		0	De três ou mais cabos	31.45	40.61	\\r
52041120		0	De algodão cru, de título superior a 5.000 decitex por fio simples	31.45	40.61	\\r
52041131		0	De dois cabos	31.45	40.61	\\r
52041132		0	De três ou mais cabos	31.45	40.61	\\r
52041140		0	De algodão branqueado ou colorido, de título superior a 5.000 decitex por fio simples	31.45	40.61	\\r
52041911		0	De dois cabos	31.45	40.61	\\r
52041912		0	De três ou mais cabos	31.45	40.61	\\r
52041920		0	De algodão cru, de título superior a 5.000 decitex por fio simples	31.45	40.61	\\r
52041931		0	De dois cabos	31.45	40.61	\\r
52041932		0	De três ou mais cabos	31.45	40.61	\\r
52041940		0	De algodão branqueado ou colorido, de título superior a 5.000 decitex por fio simples	31.45	40.61	\\r
52042000		0	-Acondicionadas para venda a retalho	31.45	40.61	\\r
52051100		0	--De título igual ou superior a 714,29 decitex (número métrico não superior a 14)	31.45	40.61	\\r
52051200		0	--De título inferior a 714,29 decitex mas não inferior a 232,56 decitex (número métrico superior a 14 mas não superior a 43)	31.45	40.61	\\r
52051310		0	Crus	31.45	40.61	\\r
52051390		0	Outros	31.45	40.61	\\r
52051400		0	--De título inferior a 192,31 decitex mas não inferior a 125 decitex (número métrico superior a 52 mas não superior a 80)	31.45	40.61	\\r
52051500		0	--De título inferior a 125 decitex (número métrico superior a 80)	31.45	40.61	\\r
52052100		0	--De título igual ou superior a 714,29 decitex (número métrico não superior a 14)	31.45	40.61	\\r
52052200		0	--De título inferior a 714,29 decitex mas não inferior a 232,56 decitex (número métrico superior a 14 mas não superior a 43)	31.45	40.61	\\r
52052310		0	Crus	31.45	40.61	\\r
52052390		0	Outros	31.45	40.61	\\r
52052400		0	--De título inferior a 192,31 decitex mas não inferior a 125 decitex (número métrico superior a 52 mas não superior a 80)	31.45	40.61	\\r
52052600		0	--De título inferior a 125 decitex mas não inferior a 106,38 decitex (número métrico superior a 80 mas não superior a 94)	31.45	40.61	\\r
53031090		0	Outras	31.45	36.20	\\r
53031090	01	0	Ex 01 - Em bruto	4.20	12.20	\\r
52052700		0	--De título inferior a 106,38 decitex mas não inferior a 83,33 decitex (número métrico superior a 94 mas não superior a 120)	31.45	40.61	\\r
52052800		0	--De título inferior a 83,33 decitex (número métrico superior a 120)	31.45	40.61	\\r
52053100		0	--De título igual ou superior a 714,29 decitex por fio simples (número métrico não superior a 14, por fio simples)	31.45	40.61	\\r
52053200		0	--De título inferior a 714,29 decitex mas não inferior a 232,56 decitex, por fio simples (número métrico superior a 14 mas não superior a 43, por fio simples)	31.45	40.61	\\r
52053300		0	--De título inferior a 232,56 decitex mas não inferior a 192,31 decitex, por fio simples (número métrico superior a 43 mas não superior a 52, por fio simples)	31.45	40.61	\\r
52053400		0	--De título inferior a 192,31 decitex mas não inferior a 125 decitex, por fio simples (número métrico superior a 52 mas não superior a 80, por fio simples)	31.45	40.61	\\r
52053500		0	--De título inferior a 125 decitex por fio simples (número métrico superior a 80, por fio simples)	31.45	40.61	\\r
52054100		0	--De título igual ou superior a 714,29 decitex por fio simples (número métrico não superior a 14, por fio simples)	31.45	40.61	\\r
52054200		0	--De título inferior a 714,29 decitex mas não inferior a 232,56 decitex, por fio simples (número métrico superior a 14 mas não superior a 43, por fio simples)	31.45	40.61	\\r
52054300		0	--De título inferior a 232,56 decitex mas não inferior a 192,31 decitex, por fio simples (número métrico superior a 43 mas não superior a 52, por fio simples)	31.45	40.61	\\r
52054400		0	--De título inferior a 192,31 decitex mas não inferior a 125 decitex, por fio simples (número métrico superior a 52 mas não superior a 80, por fio simples)	31.45	40.61	\\r
52054600		0	--De título inferior a 125 decitex mas não inferior a 106,38 decitex, por fio simples (número métrico superior a 80 mas não superior a 94, por fio simples)	31.45	40.61	\\r
52054700		0	--De título inferior a 106,38 decitex mas não inferior a 83,33 decitex, por fio simples (número métrico superior a 94 mas não superior a 120, por fio simples)	31.45	40.61	\\r
52054800		0	--De título inferior a 83,33 decitex por fio simples (número métrico superior a 120, por fio simples)	31.45	40.61	\\r
52061100		0	--De título igual ou superior a 714,29 decitex (número métrico não superior a 14)	31.45	40.61	\\r
52061200		0	--De título inferior a 714,29 decitex mas não inferior a 232,56 decitex (número métrico superior a 14 mas não superior a 43)	31.45	40.61	\\r
52061300		0	--De título inferior a 232,56 decitex mas não inferior a 192,31 decitex (número métrico superior a 43 mas não superior a 52)	31.45	40.61	\\r
52061400		0	--De título inferior a 192,31 decitex mas não inferior a 125 decitex (número métrico superior a 52 mas não superior a 80)	31.45	40.61	\\r
52061500		0	--De título inferior a 125 decitex (número métrico superior a 80)	31.45	40.61	\\r
52062100		0	--De título igual ou superior a 714,29 decitex (número métrico não superior a 14)	31.45	40.61	\\r
52062200		0	--De título inferior a 714,29 decitex mas não inferior a 232,56 decitex (número métrico superior a 14 mas não superior a 43)	31.45	40.61	\\r
52062300		0	--De título inferior a 232,56 decitex mas não inferior a 192,31 decitex (número métrico superior a 43 mas não superior a 52)	31.45	40.61	\\r
52062400		0	--De título inferior a 192,31 decitex mas não inferior a 125 decitex (número métrico superior a 52 mas não superior a 80)	31.45	40.61	\\r
52062500		0	--De título inferior a 125 decitex (número métrico superior a 80)	31.45	40.61	\\r
52063100		0	--De título igual ou superior a 714,29 decitex por fio simples (número métrico não superior a 14, por fio simples)	31.45	40.61	\\r
52063200		0	--De título inferior a 714,29 decitex mas não inferior a 232,56 decitex, por fio simples (número métrico superior a 14 mas não superior a 43, por fio simples)	31.45	40.61	\\r
52063300		0	--De título inferior a 232,56 decitex mas não inferior a 192,31 decitex, por fio simples (número métrico superior a 43 mas não superior a 52, por fio simples)	31.45	40.61	\\r
52063400		0	--De título inferior a 192,31 decitex mas não inferior a 125 decitex, por fio simples (número métrico superior a 52 mas não superior a 80, por fio simples)	31.45	40.61	\\r
52063500		0	--De título inferior a 125 decitex por fio simples (número métrico superior a 80, por fio simples)	31.45	40.61	\\r
52064100		0	--De título igual ou superior a 714,29 decitex por fio simples (número métrico não superior a 14, por fio simples)	31.45	40.61	\\r
52064200		0	--De título inferior a 714,29 decitex mas não inferior a 232,56 decitex, por fio simples (número métrico superior a 14 mas não superior a 43, por fio simples)	31.45	40.61	\\r
52064300		0	--De título inferior a 232,56 decitex mas não inferior a 192,31 decitex, por fio simples (número métrico superior a 43 mas não superior a 52, por fio simples)	31.45	40.61	\\r
52064400		0	--De título inferior a 192,31 decitex mas não inferior a 125 decitex, por fio simples (número métrico superior a 52 mas não superior a 80, por fio simples)	31.45	40.61	\\r
52064500		0	--De título inferior a 125 decitex por fio simples (número métrico superior a 80, por fio simples)	31.45	40.61	\\r
52071000		0	-Que contenham pelo menos 85%, em peso, de algodão	31.45	40.61	\\r
52079000		0	-Outros	31.45	40.61	\\r
52081100		0	--Em ponto de tafetá, com peso não superior a 100 g/m2	30.75	42.93	\\r
52081200		0	--Em ponto de tafetá, com peso superior a 100 g/m2	30.75	42.93	\\r
52081300		0	--Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
52081900		0	--Outros tecidos	30.75	42.93	\\r
52082100		0	--Em ponto de tafetá, com peso não superior a 100 g/m2	30.75	42.93	\\r
52082200		0	--Em ponto de tafetá, com peso superior a 100 g/m2	30.75	42.93	\\r
52082300		0	--Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
52082900		0	--Outros tecidos	30.75	42.93	\\r
52083100		0	--Em ponto de tafetá, com peso não superior a 100 g/m2	30.75	42.93	\\r
52083200		0	--Em ponto de tafetá, com peso superior a 100 g/m2	30.75	42.93	\\r
53039010		0	Juta	31.45	36.20	\\r
53039090		0	Outros	31.45	36.20	\\r
52083300		0	--Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
52083900		0	--Outros tecidos	30.75	42.93	\\r
52084100		0	--Em ponto de tafetá, com peso não superior a 100 g/m2	30.75	42.93	\\r
52084200		0	--Em ponto de tafetá, com peso superior a 100 g/m2	30.75	42.93	\\r
52084300		0	--Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
52084900		0	--Outros tecidos	30.75	42.93	\\r
52085100		0	--Em ponto de tafetá, com peso não superior a 100 g/m2	30.75	42.93	\\r
52085200		0	--Em ponto de tafetá, com peso superior a 100 g/m2	30.75	42.93	\\r
52085910		0	Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
52085990		0	Outros	30.75	42.93	\\r
52091100		0	--Em ponto de tafetá	30.75	42.93	\\r
52091200		0	--Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
52091900		0	--Outros tecidos	30.75	42.93	\\r
52092100		0	--Em ponto de tafetá	30.75	42.93	\\r
52092200		0	--Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
52092900		0	--Outros tecidos	30.75	42.93	\\r
52093100		0	--Em ponto de tafetá	30.75	42.93	\\r
52093200		0	--Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
52093900		0	--Outros tecidos	30.75	42.93	\\r
52094100		0	--Em ponto de tafetá	30.75	42.93	\\r
52094210		0	Com fios tintos em indigo blue segundo Color Index 73.000	30.75	42.93	\\r
52094290		0	Outros	30.75	42.93	\\r
52094300		0	--Outros tecidos em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
52094900		0	--Outros tecidos	30.75	42.93	\\r
52095100		0	--Em ponto de tafetá	30.75	42.93	\\r
52095200		0	--Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
52095900		0	--Outros tecidos	30.75	42.93	\\r
52101100		0	--Em ponto de tafetá	31.45	43.63	\\r
52101910		0	Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	31.45	43.63	\\r
52101990		0	Outros	31.45	43.63	\\r
52102100		0	--Em ponto de tafetá	31.45	43.63	\\r
52102910		0	Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	31.45	43.63	\\r
52102990		0	Outros	31.45	43.63	\\r
52103100		0	--Em ponto de tafetá	31.45	43.63	\\r
52103200		0	--Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	31.45	43.63	\\r
52103900		0	--Outros tecidos	31.45	43.63	\\r
52104100		0	--Em ponto de tafetá	31.45	43.63	\\r
52104910		0	Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	31.45	43.63	\\r
52104990		0	Outros	31.45	43.63	\\r
52105100		0	--Em ponto de tafetá	31.45	43.63	\\r
52105910		0	Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	31.45	43.63	\\r
52105990		0	Outros	31.45	43.63	\\r
52111100		0	--Em ponto de tafetá	31.45	43.63	\\r
52111200		0	--Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	31.45	43.63	\\r
52111900		0	--Outros tecidos	31.45	43.63	\\r
52112010		0	Em ponto de tafetá	31.45	43.63	\\r
52112020		0	Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	31.45	43.63	\\r
52112090		0	Outros	31.45	43.63	\\r
52113100		0	--Em ponto de tafetá	31.45	43.63	\\r
52113200		0	--Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	31.45	43.63	\\r
52113900		0	--Outros tecidos	31.45	43.63	\\r
52114100		0	--Em ponto de tafetá	31.45	43.63	\\r
52114210		0	Com fios tintos em indigo blue segundo Color Index 73.000	31.45	43.63	\\r
52114290		0	Outros	31.45	43.63	\\r
52114300		0	--Outros tecidos em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	31.45	43.63	\\r
52114900		0	--Outros tecidos	31.45	43.63	\\r
52115100		0	--Em ponto de tafetá	31.45	43.63	\\r
52115200		0	--Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	31.45	43.63	\\r
52115900		0	--Outros tecidos	31.45	43.63	\\r
52121100		0	--Crus	30.75	42.93	\\r
52121200		0	--Branqueados	30.75	42.93	\\r
52121300		0	--Tintos	30.75	42.93	\\r
52121400		0	--De fios de diversas cores	30.75	42.93	\\r
52121500		0	--Estampados	30.75	42.93	\\r
52122100		0	--Crus	30.75	42.93	\\r
52122200		0	--Branqueados	30.75	42.93	\\r
52122300		0	--Tintos	30.75	42.93	\\r
52122400		0	--De fios de diversas cores	30.75	42.93	\\r
52122500		0	--Estampados	30.75	42.93	\\r
53011000		0	-Linho em bruto ou macerado	31.45	35.22	\\r
53011000	01	0	Ex 01 - Em bruto	31.45	35.22	\\r
53012110		0	Quebrado	31.45	35.22	\\r
53012120		0	Espadelado	31.45	35.22	\\r
53012910		0	Penteado	31.45	35.22	\\r
53012990		0	Outro	31.45	35.22	\\r
53013000		0	-Estopas e desperdícios de linho	31.45	35.22	\\r
53021000		0	-Cânhamo em bruto ou macerado	31.45	35.22	\\r
53021000	01	0	Ex 01 - Em bruto	31.45	35.22	\\r
53029000		0	-Outros	31.45	35.22	\\r
53031010		0	Juta	31.45	36.20	\\r
53031010	01	0	Ex 01 - Macerada	31.45	36.20	\\r
53050010		0	De abacá, em bruto	31.45	35.22	\\r
53050090		0	Outros	31.45	35.22	\\r
53050090	01	0	Ex 01 - Estopas e desperdícios, exceto de sisal	31.45	35.22	\\r
53050090	02	0	Ex 02 - Em bruto, exceto sisal	31.45	35.22	\\r
53061000		0	-Simples	31.45	40.61	\\r
53062000		0	-Retorcidos ou retorcidos múltiplos	31.45	40.61	\\r
53071010		0	De juta	31.45	40.61	\\r
53071090		0	Outros	31.45	40.61	\\r
53072010		0	De juta	31.45	40.61	\\r
53072090		0	Outros	31.45	40.61	\\r
53081000		0	-Fios de cairo (fios de fibras de coco)	31.45	40.61	\\r
53082000		0	-Fios de cânhamo	31.45	40.61	\\r
53089000		0	-Outros	31.45	40.61	\\r
53091100		0	--Crus ou branqueados	30.75	42.93	\\r
53091900		0	--Outros	30.75	42.93	\\r
53092100		0	--Crus ou branqueados	30.75	42.93	\\r
53092900		0	--Outros	30.75	42.93	\\r
53101010		0	Aniagem de juta	30.75	42.93	\\r
53101090		0	Outros	30.75	42.93	\\r
53109000		0	-Outros	30.75	42.93	\\r
53110000		0	Tecidos de outras fibras têxteis vegetais. tecidos de fios de papel.	31.45	43.63	\\r
54011011		0	Não acondicionadas para venda a retalho	31.45	40.61	\\r
54011012		0	Acondicionadas para venda a retalho	31.45	40.61	\\r
54011090		0	Outras	31.45	40.61	\\r
54012011		0	Não acondicionadas para venda a retalho	31.45	40.61	\\r
54012012		0	Acondicionadas para venda a retalho	31.45	40.61	\\r
54012090		0	Outras	31.45	40.61	\\r
54021100		0	--De aramidas	31.45	33.15	\\r
54021910		0	De náilon	31.45	40.61	\\r
54021990		0	Outros	31.45	40.61	\\r
54022000		0	-Fios de alta tenacidade, de poliésteres	31.45	40.61	\\r
54023111		0	Tintos	31.45	40.61	\\r
54023119		0	Outros	31.45	40.61	\\r
54023190		0	Outros	31.45	40.61	\\r
54023211		0	Multifilamento com efeito antiestático permanente, de título superior a 110 tex	31.45	40.61	\\r
54023219		0	Outros	31.45	40.61	\\r
54023290		0	Outros	31.45	40.61	\\r
54023300		0	--De poliésteres	31.45	32.05	\\r
54023400		0	--De polipropileno	31.45	40.61	\\r
54023900		0	--Outros	31.45	40.61	\\r
54024400		0	--De elastômeros	31.45	40.61	\\r
54024510		0	De aramidas	31.45	33.15	\\r
54024520		0	De náilon	31.45	40.61	\\r
54024590		0	Outros	31.45	40.61	\\r
54024600		0	--Outros, de poliésteres, parcialmente orientados	31.45	40.61	\\r
54024700		0	--Outros, de poliésteres	31.45	40.61	\\r
54024800		0	--Outros, de polipropileno	31.45	40.61	\\r
54024910		0	De polietileno, com tenacidade superior ou igual a 26 cN/tex	31.45	33.15	\\r
54024990		0	Outros	31.45	40.61	\\r
54025110		0	De aramidas	31.45	33.15	\\r
54025190		0	Outros	31.45	40.61	\\r
54025200		0	--De poliésteres	31.45	40.61	\\r
54025900		0	--Outros	31.45	40.61	\\r
54026110		0	De aramidas	31.45	33.15	\\r
54026190		0	Outros	31.45	40.61	\\r
54026200		0	--De poliésteres	31.45	40.61	\\r
54026900		0	--Outros	31.45	40.61	\\r
54031000		0	-Fios de alta tenacidade, de raiom viscose	31.45	40.61	\\r
54033100		0	--De raiom viscose, sem torção ou com torção não superior a 120 voltas por metro	31.45	40.61	\\r
54033200		0	--De raiom viscose, com torção superior a 120 voltas por metro	31.45	40.61	\\r
54033300		0	--De acetato de celulose	31.45	40.61	\\r
54033900		0	--Outros	31.45	40.61	\\r
54034100		0	--De raiom viscose	31.45	40.61	\\r
54034200		0	--De acetato de celulose	31.45	40.61	\\r
54034900		0	--Outros	31.45	40.61	\\r
54041100		0	--De elastômeros	31.45	40.61	\\r
54041200		0	--Outros, de polipropileno	31.45	40.61	\\r
54041911		0	Reabsorvíveis	31.45	33.15	\\r
54041919		0	Outros	31.45	40.61	\\r
54041990		0	Outros	31.45	40.61	\\r
54049000		0	-Outras	31.45	40.61	\\r
54050000		0	Monofilamentos artificiais, de título superior ou igual a 67 decitex e cuja maior dimensão da seção transversal não seja superior a 1 mm. lâminas e formas semelhantes (palha artificial, por exemplo) de matérias têxteis artificiais, cuja largura aparente n	31.45	40.61	\\r
54060010		0	Fios de filamentos sintéticos	31.45	40.61	\\r
54060020		0	Fios de filamentos artificiais	31.45	40.61	\\r
54071011		0	De aramidas	30.75	32.45	\\r
54071019		0	Outros	30.75	42.93	\\r
54071021		0	De aramidas	30.75	32.45	\\r
54071029		0	Outros	30.75	42.93	\\r
54072000		0	-Tecidos obtidos a partir de lâminas ou de formas semelhantes	30.75	42.93	\\r
54073000		0	-“Tecidos” mencionados na Nota 9 da Seção XI	30.75	42.93	\\r
54074100		0	--Crus ou branqueados	30.75	42.93	\\r
54074200		0	--Tintos	30.75	42.93	\\r
54074300		0	--De fios de diversas cores	30.75	42.93	\\r
54074400		0	--Estampados	30.75	42.93	\\r
54075100		0	--Crus ou branqueados	30.75	42.93	\\r
54075210		0	Sem fios de borracha	30.75	42.93	\\r
54075220		0	Com fios de borracha	30.75	42.93	\\r
54075300		0	--De fios de diversas cores	30.75	42.93	\\r
54075400		0	--Estampados	30.75	42.93	\\r
54076100		0	--Que contenham pelo menos 85%, em peso, de filamentos de poliéster não texturizados	30.75	42.93	\\r
54076900		0	--Outros	30.75	42.93	\\r
54077100		0	--Crus ou branqueados	30.75	42.93	\\r
54077200		0	--Tintos	30.75	42.93	\\r
54077300		0	--De fios de diversas cores	30.75	42.93	\\r
54077400		0	--Estampados	30.75	42.93	\\r
54078100		0	--Crus ou branqueados	30.75	42.93	\\r
54078200		0	--Tintos	30.75	42.93	\\r
54078300		0	--De fios de diversas cores	30.75	42.93	\\r
54078400		0	--Estampados	30.75	42.93	\\r
54079100		0	--Crus ou branqueados	30.75	42.93	\\r
54079200		0	--Tintos	30.75	42.93	\\r
54079300		0	--De fios de diversas cores	30.75	42.93	\\r
54079400		0	--Estampados	30.75	42.93	\\r
54081000		0	-Tecidos obtidos a partir de fios de alta tenacidade, de raiom viscose	30.75	42.93	\\r
54082100		0	--Crus ou branqueados	30.75	42.93	\\r
54082200		0	--Tintos	30.75	42.93	\\r
54082300		0	--De fios de diversas cores	30.75	42.93	\\r
54082400		0	--Estampados	30.75	42.93	\\r
54083100		0	--Crus ou branqueados	30.75	42.93	\\r
54083200		0	--Tintos	30.75	42.93	\\r
54083300		0	--De fios de diversas cores	30.75	42.93	\\r
54083400		0	--Estampados	30.75	42.93	\\r
55011000		0	-De náilon ou de outras poliamidas	31.45	39.79	\\r
55012000		0	-De poliésteres	31.45	39.79	\\r
55013000		0	-Acrílicos ou modacrílicos	31.45	39.79	\\r
55014000		0	-De polipropileno	31.45	39.79	\\r
55019000		0	-Outros	31.45	39.79	\\r
55020010		0	De acetato de celulose	44.40	53.56	\\r
55020020		0	De raiom viscose	31.45	33.15	\\r
55020090		0	Outros	31.45	38.06	\\r
55031100		0	--De aramidas	31.45	33.15	\\r
55031910		0	Bicomponentes, de diferentes pontos de fusão	31.45	33.15	\\r
55031990		0	Outras	31.45	39.79	\\r
55032010		0	Bicomponentes, de diferentes pontos de fusão	31.45	33.15	\\r
55032090		0	Outras	31.45	39.79	\\r
55033000		0	-Acrílicas ou modacrílicas	31.45	39.79	\\r
55034000		0	-De polipropileno	31.45	39.79	\\r
55039010		0	Bicomponentes, de diferentes pontos de fusão	31.45	33.15	\\r
55039020		0	De poli(álcool vinílico)	31.45	33.15	\\r
55039090		0	Outras	31.45	39.79	\\r
55041000		0	-De raiom viscose	31.45	38.06	\\r
55049010		0	Celulósicas, obtidas por extrusão com óxido de N-metilmorfolina	31.45	33.15	\\r
55049090		0	Outras	31.45	38.06	\\r
55051000		0	-De fibras sintéticas	31.45	39.79	\\r
55052000		0	-De fibras artificiais	31.45	38.06	\\r
55061000		0	-De náilon ou de outras poliamidas	31.45	39.79	\\r
55062000		0	-De poliésteres	31.45	39.79	\\r
55063000		0	-Acrílicas ou modacrílicas	31.45	39.79	\\r
55069000		0	-Outras	31.45	39.79	\\r
55070000		0	Fibras artificiais descontínuas, cardadas, penteadas ou transformadas de outro modo para fiação.	31.45	38.06	\\r
55081000		0	-De fibras sintéticas descontínuas	31.45	40.61	\\r
55082000		0	-De fibras artificiais descontínuas	31.45	40.61	\\r
55091100		0	--Simples	31.45	40.61	\\r
55091210		0	De aramidas	31.45	33.15	\\r
55091290		0	Outros	31.45	40.61	\\r
55092100		0	--Simples	31.45	40.61	\\r
55092200		0	--Retorcidos ou retorcidos múltiplos	31.45	40.61	\\r
55093100		0	--Simples	31.45	40.61	\\r
55093200		0	--Retorcidos ou retorcidos múltiplos	31.45	40.61	\\r
55094100		0	--Simples	31.45	40.61	\\r
55094200		0	--Retorcidos ou retorcidos múltiplos	31.45	40.61	\\r
55095100		0	--Combinadas, principal ou unicamente, com fibras artificiais descontínuas	31.45	40.61	\\r
55095200		0	--Combinadas, principal ou unicamente, com lã ou pelos finos	31.45	40.61	\\r
55095300		0	--Combinadas, principal ou unicamente, com algodão	40.01	49.17	\\r
55095900		0	--Outros	31.45	40.61	\\r
55096100		0	--Combinadas, principal ou unicamente, com lã ou pelos finos	31.45	40.61	\\r
55096200		0	--Combinadas, principal ou unicamente, com algodão	31.45	40.61	\\r
55096900		0	--Outros	31.45	40.61	\\r
55099100		0	--Combinados, principal ou unicamente, com lã ou pelos finos	31.45	40.61	\\r
55099200		0	--Combinados, principal ou unicamente, com algodão	31.45	40.61	\\r
55099900		0	--Outros	31.45	40.61	\\r
55101100		0	--Simples	31.45	40.61	\\r
55101200		0	--Retorcidos ou retorcidos múltiplos	31.45	40.61	\\r
55102000		0	-Outros fios, combinados, principal ou unicamente, com lã ou pelos finos	31.45	40.61	\\r
55103000		0	-Outros fios, combinados, principal ou unicamente, com algodão	31.45	40.61	\\r
55109000		0	-Outros fios	31.45	40.61	\\r
55111000		0	-De fibras sintéticas descontínuas, que contenham pelo menos 85%, em peso, destas fibras	31.45	40.61	\\r
55112000		0	-De fibras sintéticas descontínuas, que contenham menos de 85%, em peso, destas fibras	31.45	40.61	\\r
55113000		0	-De fibras artificiais descontínuas	31.45	40.61	\\r
55121100		0	--Crus ou branqueados	30.75	42.93	\\r
55121900		0	--Outros	30.75	42.93	\\r
55122100		0	--Crus ou branqueados	30.75	42.93	\\r
55122900		0	--Outros	30.75	42.93	\\r
55129110		0	De aramidas	30.75	32.45	\\r
55129190		0	Outros	30.75	42.93	\\r
55129910		0	De aramidas	30.75	32.45	\\r
55129990		0	Outros	30.75	42.93	\\r
55131100		0	--De fibras descontínuas de poliéster, em ponto de tafetá	30.75	42.93	\\r
55131200		0	--De fibras descontínuas de poliéster, em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
56031290		0	Outros	31.45	43.63	\\r
55131300		0	--Outros tecidos de fibras descontínuas de poliéster	30.75	42.93	\\r
55131900		0	--Outros tecidos	30.75	42.93	\\r
55132100		0	--De fibras descontínuas de poliéster, em ponto de tafetá	30.75	42.93	\\r
55132310		0	Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
55132390		0	Outros	30.75	42.93	\\r
55132900		0	--Outros tecidos	30.75	42.93	\\r
55133100		0	--De fibras descontínuas de poliéster, em ponto de tafetá	30.75	42.93	\\r
55133911		0	Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
55133919		0	Outros	30.75	42.93	\\r
55133990		0	Outros	30.75	42.93	\\r
55134100		0	--De fibras descontínuas de poliéster, em ponto de tafetá	30.75	42.93	\\r
55134911		0	Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
55134919		0	Outros	30.75	42.93	\\r
55134990		0	Outros	30.75	42.93	\\r
55141100		0	--De fibras descontínuas de poliéster, em ponto de tafetá	30.75	42.93	\\r
55141200		0	--De fibras descontínuas de poliéster, em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
55141910		0	De fibras descontínuas de poliéster	30.75	42.93	\\r
55141990		0	Outros	30.75	42.93	\\r
55142100		0	--De fibras descontínuas de poliéster, em ponto de tafetá	30.75	42.93	\\r
55142200		0	--De fibras descontínuas de poliéster, em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
55142300		0	--Outros tecidos de fibras descontínuas de poliéster	30.75	42.93	\\r
55142900		0	--Outros tecidos	30.75	42.93	\\r
55143011		0	Em ponto de tafetá	30.75	42.93	\\r
55143012		0	Em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
55143019		0	Outros	30.75	42.93	\\r
55143090		0	Outros	30.75	42.93	\\r
55144100		0	--De fibras descontínuas de poliéster, em ponto de tafetá	30.75	42.93	\\r
55144200		0	--De fibras descontínuas de poliéster, em ponto sarjado, incluindo o diagonal, cuja relação de textura não seja superior a 4	30.75	42.93	\\r
55144300		0	--Outros tecidos de fibras descontínuas de poliéster	30.75	42.93	\\r
55144900		0	--Outros tecidos	30.75	42.93	\\r
55151100		0	--Combinadas, principal ou unicamente, com fibras descontínuas de raiom viscose	30.75	42.93	\\r
55151200		0	--Combinadas, principal ou unicamente, com filamentos sintéticos ou artificiais	30.75	42.93	\\r
55151300		0	--Combinadas, principal ou unicamente, com lã ou pelos finos	30.75	42.93	\\r
55151900		0	--Outros	30.75	42.93	\\r
55152100		0	--Combinadas, principal ou unicamente, com filamentos sintéticos ou artificiais	30.75	42.93	\\r
55152200		0	--Combinadas, principal ou unicamente, com lã ou pelos finos	30.75	42.93	\\r
55152900		0	--Outros	30.75	42.93	\\r
55159100		0	--Combinados, principal ou unicamente, com filamentos sintéticos ou artificiais	30.75	42.93	\\r
55159910		0	Combinados, principal ou unicamente, com lã ou pelos finos	30.75	42.93	\\r
55159990		0	Outros	30.75	42.93	\\r
55161100		0	--Crus ou branqueados	30.75	42.93	\\r
55161200		0	--Tintos	30.75	42.93	\\r
55161300		0	--De fios de diversas cores	30.75	42.93	\\r
55161400		0	--Estampados	30.75	42.93	\\r
55162100		0	--Crus ou branqueados	30.75	42.93	\\r
55162200		0	--Tintos	30.75	42.93	\\r
55162300		0	--De fios de diversas cores	30.75	42.93	\\r
55162400		0	--Estampados	30.75	42.93	\\r
55163100		0	--Crus ou branqueados	30.75	42.93	\\r
55163200		0	--Tintos	30.75	42.93	\\r
55163300		0	--De fios de diversas cores	30.75	42.93	\\r
55163400		0	--Estampados	30.75	42.93	\\r
55164100		0	--Crus ou branqueados	30.75	42.93	\\r
55164200		0	--Tintos	30.75	42.93	\\r
55164300		0	--De fios de diversas cores	30.75	42.93	\\r
55164400		0	--Estampados	30.75	42.93	\\r
55169100		0	--Crus ou branqueados	30.75	42.93	\\r
55169200		0	--Tintos	30.75	42.93	\\r
55169300		0	--De fios de diversas cores	30.75	42.93	\\r
55169400		0	--Estampados	30.75	42.93	\\r
56012110		0	Pastas (ouates)	31.45	40.61	\\r
56012190		0	Outros artigos de pastas (ouates)	31.45	40.61	\\r
56012211		0	De aramidas	31.45	33.15	\\r
56012219		0	Outras	31.45	40.61	\\r
56012291		0	Cilindros para filtros de cigarros	44.40	53.56	\\r
56012299		0	Outros	31.45	40.61	\\r
56012900		0	--Outros	31.45	40.61	\\r
56013010		0	De aramidas	31.45	33.15	\\r
56013090		0	Outros	31.45	40.61	\\r
56021000		0	-Feltros agulhados e artefatos obtidos por costura por entrelaçamento (cousus-tricotés)	31.45	43.63	\\r
56022100		0	--De lã ou de pelos finos	31.45	43.63	\\r
56022900		0	--De outras matérias têxteis	31.45	43.63	\\r
56029000		0	-Outros	31.45	43.63	\\r
56031110		0	De aramidas	31.45	33.15	\\r
56031120		0	De poliéster	31.45	43.63	\\r
56031130		0	De polipropileno	31.45	43.63	\\r
56031140		0	De raiom viscose	31.45	43.63	\\r
56031190		0	Outros	31.45	43.63	\\r
56031210		0	De polietileno de alta densidade	31.45	43.63	\\r
56031220		0	De aramidas	31.45	33.15	\\r
56031230		0	De poliéster	31.45	43.63	\\r
56031240		0	De polipropileno	31.45	43.63	\\r
56031250		0	De raiom viscose	31.45	43.63	\\r
56031310		0	De polietileno de alta densidade	31.45	43.63	\\r
56031320		0	De aramidas	31.45	33.15	\\r
56031330		0	De poliéster	31.45	43.63	\\r
56031340		0	De polipropileno	31.45	43.63	\\r
56031350		0	De raiom viscose	31.45	43.63	\\r
56031390		0	Outros	31.45	43.63	\\r
56031410		0	De aramidas	31.45	33.15	\\r
56031420		0	De poliéster	31.45	43.63	\\r
56031430		0	De polipropileno	31.45	43.63	\\r
56031440		0	De raiom viscose	31.45	43.63	\\r
56031490		0	Outros	31.45	43.63	\\r
56039110		0	De poliéster	31.45	43.63	\\r
56039120		0	De polipropileno	31.45	43.63	\\r
56039130		0	De raiom viscose	31.45	43.63	\\r
56039190		0	Outros	31.45	43.63	\\r
56039210		0	De polietileno de alta densidade	31.45	43.63	\\r
56039220		0	De poliéster	31.45	43.63	\\r
56039230		0	De polipropileno	31.45	43.63	\\r
56039240		0	De raiom viscose	31.45	43.63	\\r
56039290		0	Outros	31.45	43.63	\\r
56039310		0	De polietileno de alta densidade	31.45	43.63	\\r
56039320		0	De poliéster	31.45	43.63	\\r
56039330		0	De polipropileno	31.45	43.63	\\r
56039340		0	De raiom viscose	31.45	43.63	\\r
56039390		0	Outros	31.45	43.63	\\r
56039410		0	De poliéster	31.45	43.63	\\r
56039420		0	De polipropileno	31.45	43.63	\\r
56039430		0	De raiom viscose	31.45	43.63	\\r
56039490		0	Outros	31.45	43.63	\\r
56041000		0	-Fios e cordas, de borracha, recobertos de têxteis	31.45	40.61	\\r
56049010		0	Imitações de categute constituídas por fios de seda	31.45	33.15	\\r
56049021		0	Com borracha	31.45	40.61	\\r
56049022		0	Com plástico	31.45	40.61	\\r
56049090		0	Outros	31.45	40.61	\\r
56050010		0	Com metais preciosos	31.45	40.61	\\r
56050020		0	Revestidos por enrolamento, exceto com metais preciosos	31.45	40.61	\\r
56050090		0	Outros	31.45	40.61	\\r
56060000		0	Fios revestidos por enrolamento, lâminas e formas semelhantes das posições 54.04 ou 54.05, revestidas por enrolamento, exceto os da posição 56.05 e os fios de crina revestidos por enrolamento. fios de froco (chenille). fios denominados “de cadeia” (chaîne	31.45	40.61	\\r
56072100		0	--Cordéis para atadeiras ou enfardadeiras	31.45	40.61	\\r
56072900		0	--Outros	31.45	40.61	\\r
56074100		0	--Cordéis para atadeiras ou enfardadeiras	31.45	40.61	\\r
56074900		0	--Outros	31.45	40.61	\\r
56075011		0	De náilon	31.45	40.61	\\r
56075019		0	Outros	31.45	40.61	\\r
56075090		0	Outros	31.45	40.61	\\r
56079010		0	De algodão	31.45	40.61	\\r
56079020		0	De juta, inferior ao número métrico 0,75 por fio simples	31.45	33.15	\\r
56079090		0	Outros	31.45	40.61	\\r
56081100		0	--Redes confeccionadas para a pesca	31.45	40.61	\\r
56081900		0	--Outras	31.45	40.61	\\r
56089000		0	-Outras	31.45	40.61	\\r
56090010		0	De algodão	31.45	40.61	\\r
56090090		0	Outros	31.45	40.61	\\r
57011011		0	Feitos a mão	36.55	51.70	\\r
57011012		0	Feitos a máquina	36.55	51.70	\\r
57011020		0	De pelos finos	36.55	51.70	\\r
57019000		0	-De outras matérias têxteis	36.55	51.70	\\r
57021000		0	-Tapetes denominados Kelim ou Kilim, Schumacks ou Soumak, Karamanie e tapetes semelhantes tecidos a mão	36.55	51.70	\\r
57022000		0	-Revestimentos para pisos (pavimentos), de cairo (fibras de coco)	36.55	51.70	\\r
57023100		0	--De lã ou de pelos finos	36.55	51.70	\\r
57023200		0	--De matérias têxteis sintéticas ou artificiais	36.55	51.70	\\r
57023900		0	--De outras matérias têxteis	36.55	51.70	\\r
57024100		0	--De lã ou de pelos finos	36.55	51.70	\\r
57024200		0	--De matérias têxteis sintéticas ou artificiais	36.55	51.70	\\r
57024900		0	--De outras matérias têxteis	36.55	51.70	\\r
57025010		0	De lã ou de pelos finos	36.55	51.70	\\r
57025020		0	De matérias têxteis sintéticas ou artificiais	36.55	51.70	\\r
57025090		0	Outros	36.55	51.70	\\r
57029100		0	--De lã ou de pelos finos	36.55	51.70	\\r
57029200		0	--De matérias têxteis sintéticas ou artificiais	36.55	51.70	\\r
57029900		0	--De outras matérias têxteis	36.55	51.70	\\r
57031000		0	-De lã ou de pelos finos	36.55	51.70	\\r
57032000		0	-De náilon ou de outras poliamidas	36.55	51.70	\\r
57033000		0	-De outras matérias têxteis sintéticas ou de matérias têxteis artificiais	36.55	51.70	\\r
57039000		0	-De outras matérias têxteis	36.55	51.70	\\r
57041000		0	-“Ladrilhos” de superfície não superior a 0,3 m2	36.55	51.70	\\r
57049000		0	-Outros	36.55	51.70	\\r
57050000		0	Outros tapetes e revestimentos para pisos (pavimentos), de matérias têxteis, mesmo confeccionados.	36.55	51.70	\\r
58011000		0	-De lã ou de pelos finos	30.75	42.93	\\r
58012100		0	--Veludos e pelúcias obtidos por trama, não cortados	30.75	42.93	\\r
58012200		0	--Veludos e pelúcias obtidos por trama, cortados, canelados (côtelés)	30.75	42.93	\\r
58012300		0	--Outros veludos e pelúcias obtidos por trama	30.75	42.93	\\r
58012600		0	--Tecidos de froco (chenille)	30.75	42.93	\\r
58012700		0	--Veludos e pelúcias obtidos por urdidura	30.75	42.93	\\r
58013100		0	--Veludos e pelúcias obtidos por trama, não cortados	30.75	42.93	\\r
58013200		0	--Veludos e pelúcias obtidos por trama, cortados, canelados (côtelés)	30.75	42.93	\\r
58013300		0	--Outros veludos e pelúcias obtidos por trama	30.75	42.93	\\r
58013600		0	--Tecidos de froco (chenille)	30.75	42.93	\\r
58013700		0	--Veludos e pelúcias obtidos por urdidura	30.75	42.93	\\r
58019000		0	-De outras matérias têxteis	30.75	42.93	\\r
58021100		0	--Crus	30.75	42.93	\\r
58021900		0	--Outros	30.75	42.93	\\r
58022000		0	-Tecidos atoalhados, de outras matérias têxteis	30.75	42.93	\\r
58023000		0	-Tecidos tufados	30.75	42.93	\\r
58030010		0	De algodão	30.75	42.93	\\r
58030090		0	Outros	30.75	42.93	\\r
58041010		0	De algodão	30.75	42.93	\\r
58041090		0	Outros	30.75	42.93	\\r
58042100		0	--De fibras sintéticas ou artificiais	30.75	42.93	\\r
58042910		0	De algodão	30.75	42.93	\\r
58042990		0	Outras	30.75	42.93	\\r
58043010		0	De algodão	30.75	42.93	\\r
58043090		0	Outras	30.75	42.93	\\r
58050010		0	De algodão	33.42	45.60	\\r
58050020		0	De fibras sintéticas ou artificiais	33.42	45.60	\\r
58050090		0	De outras matérias têxteis	33.42	45.60	\\r
58061000		0	-Fitas de veludo, de pelúcias, de tecidos de froco (chenille) ou de tecidos atoalhados	30.75	42.93	\\r
58062000		0	-Outras fitas que contenham, em peso, 5% ou mais de fios de elastômeros ou de fios de borracha	31.45	43.63	\\r
58063100		0	--De algodão	31.45	43.63	\\r
58063200		0	--De fibras sintéticas ou artificiais	31.45	43.63	\\r
58063900		0	--De outras matérias têxteis	31.45	43.63	\\r
58064000		0	-Fitas sem trama, de fios ou fibras paralelizados e colados (bolducs)	31.45	43.63	\\r
58071000		0	-Tecidos	30.75	42.93	\\r
58079000		0	-Outros	31.45	43.63	\\r
58081000		0	-Tranças em peça	31.45	43.63	\\r
58089000		0	-Outros	30.75	42.93	\\r
58090000		0	Tecidos de fios de metal e tecidos de fios metálicos ou de fios têxteis metalizados da posição 56.05, dos tipos utilizados em vestuário, para guarnição de interiores ou usos semelhantes, não especificados nem compreendidos noutras posições.	31.45	43.63	\\r
58101000		0	-Bordados químicos ou aéreos e bordados com fundo recortado	31.45	43.63	\\r
58109100		0	--De algodão	31.45	43.63	\\r
58109200		0	--De fibras sintéticas ou artificiais	31.45	43.63	\\r
58109900		0	--De outras matérias têxteis	31.45	43.63	\\r
58110000		0	Artefatos têxteis matelassês em peça, constituídos por uma ou várias camadas de matérias têxteis associadas a uma matéria de enchimento ou estofamento, acolchoados por qualquer processo, exceto os bordados da posição 58.10.	31.45	43.63	\\r
59011000		0	-Tecidos revestidos de cola ou de matérias amiláceas, dos tipos utilizados na encadernação, cartonagem ou usos semelhantes	33.42	41.76	\\r
59019000		0	-Outros	33.42	41.76	\\r
59021010		0	Impregnadas, recobertas ou revestidas com borracha	33.42	41.76	\\r
59021090		0	Outras	33.42	40.91	\\r
59022000		0	-De poliésteres	33.42	41.76	\\r
59029000		0	-Outras	33.42	40.91	\\r
59031000		0	-Com poli(cloreto de vinila)	33.42	45.60	\\r
59032000		0	-Com poliuretano	33.42	45.60	\\r
59039000		0	-Outros	33.42	45.60	\\r
59041000		0	-Linóleos	36.55	44.89	\\r
59049000		0	-Outros	36.55	44.89	\\r
59050000		0	Revestimentos para paredes, de matérias têxteis.	36.55	44.89	\\r
59061000		0	-Fitas adesivas de largura não superior a 20 cm	33.42	41.76	\\r
59069100		0	--De malha	33.42	41.76	\\r
59069900		0	--Outros	33.42	41.76	\\r
59070000		0	Outros tecidos impregnados, revestidos ou recobertos. telas pintadas para cenários teatrais, para fundos de estúdio ou para usos semelhantes.	33.42	41.76	\\r
59080000		0	Mechas de matérias têxteis, tecidas, entrançadas ou tricotadas, para candeeiros, fogareiros, isqueiros, velas e semelhantes. camisas de incandescência e tecidos tubulares tricotados para a sua fabricação, mesmo impregnados.	33.42	41.76	\\r
59090000		0	Mangueiras e tubos semelhantes, de matérias têxteis, mesmo com reforço ou acessórios de outras matérias.	33.42	41.76	\\r
59100000		0	Correias transportadoras ou de transmissão, de matérias têxteis, mesmo impregnadas, revestidas ou recobertas, de plástico, ou estratificadas com plástico ou reforçadas com metal ou com outras matérias.	36.55	44.89	\\r
59111000		0	-Tecidos, feltros e tecidos forrados de feltro, combinados com uma ou mais camadas de borracha, couro ou de outras matérias, dos tipos utilizados na fabricação de guarnições de cardas, e produtos análogos para outros usos técnicos, incluindo as fitas de v	33.42	41.76	\\r
59112010		0	De matéria têxtil sintética ou artificial, em peça	33.42	41.76	\\r
59112090		0	Outras	33.42	41.76	\\r
59113100		0	--De peso inferior a 650 g/m2	33.42	45.60	\\r
59113200		0	--De peso igual ou superior a 650 g/m2	33.42	45.60	\\r
59114000		0	-Tecidos filtrantes e tecidos espessos, compreendendo os de cabelo, dos tipos usados em prensas de óleo ou outros usos técnicos análogos	33.42	45.60	\\r
59119000		0	-Outros	33.42	45.60	\\r
60011010		0	De algodão	30.75	42.93	\\r
60011020		0	De fibras sintéticas ou artificiais	30.75	42.93	\\r
60011090		0	De outras matérias têxteis	30.75	42.93	\\r
60012100		0	--De algodão	30.75	42.93	\\r
60012200		0	--De fibras sintéticas ou artificiais	30.75	42.93	\\r
60012900		0	--De outras matérias têxteis	30.75	42.93	\\r
60019100		0	--De algodão	30.75	42.93	\\r
60019200		0	--De fibras sintéticas ou artificiais	30.75	42.93	\\r
60019900		0	--De outras matérias têxteis	30.75	42.93	\\r
60024010		0	De algodão	30.75	42.93	\\r
60024020		0	De fibras sintéticas ou artificiais	30.75	42.93	\\r
60024090		0	De outras matérias têxteis	30.75	42.93	\\r
60029010		0	De algodão	30.75	42.93	\\r
60029020		0	De fibras sintéticas ou artificiais	30.75	42.93	\\r
60029090		0	De outras matérias têxteis	30.75	42.93	\\r
60031000		0	-De lã ou de pelos finos	30.75	42.93	\\r
60032000		0	-De algodão	30.75	42.93	\\r
60033000		0	-De fibras sintéticas	30.75	42.93	\\r
60034000		0	-De fibras artificiais	30.75	42.93	\\r
60039000		0	-Outros	30.75	42.93	\\r
60041011		0	Crus ou branqueados	30.75	42.93	\\r
60041012		0	Tintos	30.75	42.93	\\r
60041013		0	De fios de diversas cores	30.75	42.93	\\r
60041014		0	Estampados	30.75	42.93	\\r
60041031		0	Crus ou branqueados	30.75	42.93	\\r
60041032		0	Tintos	30.75	42.93	\\r
60041033		0	De fios de diversas cores	30.75	42.93	\\r
60041034		0	Estampados	30.75	42.93	\\r
60041041		0	Crus ou branqueados	30.75	42.93	\\r
60041042		0	Tintos	30.75	42.93	\\r
60041043		0	De fios de diversas cores	30.75	42.93	\\r
60041044		0	Estampados	30.75	42.93	\\r
60041091		0	Crus ou branqueados	30.75	42.93	\\r
60041092		0	Tintos	30.75	42.93	\\r
60041093		0	De fios de diversas cores	30.75	42.93	\\r
60041094		0	Estampados	30.75	42.93	\\r
60049010		0	De algodão	30.75	42.93	\\r
60049030		0	De fibras sintéticas	30.75	42.93	\\r
60049040		0	De fibras artificiais	30.75	42.93	\\r
60049090		0	De outras matérias têxteis	30.75	42.93	\\r
60052100		0	--Crus ou branqueados	30.75	42.93	\\r
60052200		0	--Tintos	30.75	42.93	\\r
60052300		0	--De fios de diversas cores	30.75	42.93	\\r
60052400		0	--Estampados	30.75	42.93	\\r
60053100		0	--Crus ou branqueados	30.75	42.93	\\r
60053200		0	--Tintos	30.75	42.93	\\r
60053300		0	--De fios de diversas cores	30.75	42.93	\\r
60053400		0	--Estampados	30.75	42.93	\\r
60054100		0	--Crus ou branqueados	30.75	42.93	\\r
60054200		0	--Tintos	30.75	42.93	\\r
60054300		0	--De fios de diversas cores	30.75	42.93	\\r
60054400		0	--Estampados	30.75	42.93	\\r
60059010		0	De lã ou de pelos finos	30.75	42.93	\\r
60059090		0	Outros	30.75	42.93	\\r
60061000		0	-De lã ou de pelos finos	30.75	42.93	\\r
60062100		0	--Crus ou branqueados	30.75	42.93	\\r
60062200		0	--Tintos	30.75	42.93	\\r
60062300		0	--De fios de diversas cores	30.75	42.93	\\r
60062400		0	--Estampados	30.75	42.93	\\r
60063100		0	--Crus ou branqueados	30.75	42.93	\\r
60063200		0	--Tintos	30.75	42.93	\\r
60063300		0	--De fios de diversas cores	30.75	42.93	\\r
60063400		0	--Estampados	30.75	42.93	\\r
60064100		0	--Crus ou branqueados	30.75	42.93	\\r
60064200		0	--Tintos	30.75	42.93	\\r
60064300		0	--De fios de diversas cores	30.75	42.93	\\r
60064400		0	--Estampados	30.75	42.93	\\r
60069000		0	-Outros	30.75	42.93	\\r
61012000		0	-De algodão	30.75	45.90	\\r
61013000		0	-De fibras sintéticas ou artificiais	30.75	45.90	\\r
61019010		0	De lã ou de pelos finos	30.75	45.90	\\r
61019090		0	Outros	30.75	45.90	\\r
61021000		0	-De lã ou de pelos finos	30.75	45.90	\\r
61022000		0	-De algodão	30.75	45.90	\\r
61023000		0	-De fibras sintéticas ou artificiais	30.75	45.90	\\r
61029000		0	-De outras matérias têxteis	30.75	45.90	\\r
61031010		0	De lã ou de pelos finos	30.75	45.90	\\r
61031020		0	De fibras sintéticas	30.75	45.90	\\r
61031090		0	De outras matérias têxteis	30.75	45.90	\\r
61032200		0	--De algodão	30.75	45.90	\\r
61032300		0	--De fibras sintéticas	30.75	45.90	\\r
61032910		0	De lã ou de pelos finos	30.75	45.90	\\r
61032990		0	Outros	30.75	45.90	\\r
61033100		0	--De lã ou de pelos finos	30.75	45.90	\\r
61033200		0	--De algodão	30.75	45.90	\\r
61033300		0	--De fibras sintéticas	30.75	45.90	\\r
61033900		0	--De outras matérias têxteis	30.75	45.90	\\r
61034100		0	--De lã ou de pelos finos	30.75	45.90	\\r
61034200		0	--De algodão	30.75	45.90	\\r
61034300		0	--De fibras sintéticas	30.75	45.90	\\r
61034900		0	--De outras matérias têxteis	30.75	45.90	\\r
61041300		0	--De fibras sintéticas	30.75	45.90	\\r
61041910		0	De lã ou de pelos finos	30.75	45.90	\\r
61041920		0	De algodão	30.75	45.90	\\r
61041990		0	De outras matérias têxteis	30.75	45.90	\\r
61042200		0	--De algodão	30.75	45.90	\\r
61042300		0	--De fibras sintéticas	30.75	45.90	\\r
61042910		0	De lã ou de pelos finos	30.75	45.90	\\r
61042990		0	Outros	30.75	45.90	\\r
61043100		0	--De lã ou de pelos finos	30.75	45.90	\\r
61043200		0	--De algodão	30.75	45.90	\\r
61043300		0	--De fibras sintéticas	30.75	45.90	\\r
61043900		0	--De outras matérias têxteis	30.75	45.90	\\r
61044100		0	--De lã ou de pelos finos	30.75	45.90	\\r
61044200		0	--De algodão	30.75	45.90	\\r
61044300		0	--De fibras sintéticas	30.75	45.90	\\r
61044400		0	--De fibras artificiais	30.75	45.90	\\r
61044900		0	--De outras matérias têxteis	30.75	45.90	\\r
61045100		0	--De lã ou de pelos finos	30.75	45.90	\\r
61045200		0	--De algodão	30.75	45.90	\\r
61045300		0	--De fibras sintéticas	30.75	45.90	\\r
61045900		0	--De outras matérias têxteis	30.75	45.90	\\r
61046100		0	--De lã ou de pelos finos	30.75	45.90	\\r
61046200		0	--De algodão	30.75	45.90	\\r
61046300		0	--De fibras sintéticas	30.75	45.90	\\r
61046900		0	--De outras matérias têxteis	30.75	45.90	\\r
61051000		0	-De algodão	30.75	45.90	\\r
61052000		0	-De fibras sintéticas ou artificiais	30.75	45.90	\\r
61059000		0	-De outras matérias têxteis	30.75	45.90	\\r
61061000		0	-De algodão	30.75	45.90	\\r
61062000		0	-De fibras sintéticas ou artificiais	30.75	45.90	\\r
61069000		0	-De outras matérias têxteis	30.75	45.90	\\r
61071100		0	--De algodão	30.75	45.90	\\r
61071200		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
61071900		0	--De outras matérias têxteis	30.75	45.90	\\r
61072100		0	--De algodão	30.75	45.90	\\r
61072200		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
61072900		0	--De outras matérias têxteis	30.75	45.90	\\r
61079100		0	--De algodão	30.75	45.90	\\r
61079910		0	De fibras sintéticas ou artificiais	30.75	45.90	\\r
61079990		0	Outros	30.75	45.90	\\r
61081100		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
61081900		0	--De outras matérias têxteis	30.75	45.90	\\r
61082100		0	--De algodão	30.75	45.90	\\r
61082200		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
61082900		0	--De outras matérias têxteis	30.75	45.90	\\r
61083100		0	--De algodão	30.75	45.90	\\r
61083200		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
61083900		0	--De outras matérias têxteis	30.75	45.90	\\r
61089100		0	--De algodão	30.75	45.90	\\r
61089200		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
61089900		0	--De outras matérias têxteis	30.75	45.90	\\r
61091000		0	-De algodão	30.75	45.90	\\r
61099000		0	-De outras matérias têxteis	30.75	45.90	\\r
61101100		0	--De lã	30.75	45.90	\\r
61101200		0	--De cabra de Caxemira	30.75	45.90	\\r
61101900		0	--Outros	30.75	45.90	\\r
61102000		0	-De algodão	30.75	45.90	\\r
61103000		0	-De fibras sintéticas ou artificiais	30.75	45.90	\\r
61109000		0	-De outras matérias têxteis	30.75	45.90	\\r
61112000		0	-De algodão	30.75	45.90	\\r
61113000		0	-De fibras sintéticas	30.75	45.90	\\r
61119010		0	De lã ou de pelos finos	30.75	45.90	\\r
61119090		0	Outros	30.75	45.90	\\r
61121100		0	--De algodão	30.75	45.90	\\r
61121200		0	--De fibras sintéticas	30.75	45.90	\\r
61121900		0	--De outras matérias têxteis	30.75	45.90	\\r
61122000		0	-Macacões e conjuntos de esqui	30.75	45.90	\\r
61123100		0	--De fibras sintéticas	30.75	45.90	\\r
61123900		0	--De outras matérias têxteis	30.75	45.90	\\r
61124100		0	--De fibras sintéticas	30.75	45.90	\\r
61124900		0	--De outras matérias têxteis	30.75	45.90	\\r
61130000		0	Vestuário confeccionado com tecidos de malha das posições 59.03, 59.06 ou 59.07.	30.75	45.90	\\r
61142000		0	-De algodão	30.75	45.90	\\r
61143000		0	-De fibras sintéticas ou artificiais	30.75	45.90	\\r
61149010		0	De lã ou de pelos finos	30.75	45.90	\\r
61149090		0	Outros	30.75	45.90	\\r
61151011		0	De fibras sintéticas, de título inferior a 67 decitex, por fio simples	30.75	45.90	\\r
61151012		0	De fibras sintéticas, de título igual ou superior a 67 decitex, por fio simples	30.75	45.90	\\r
61151013		0	De lã ou de pelos finos	30.75	45.90	\\r
61151014		0	De algodão	30.75	45.90	\\r
61151019		0	De outras matérias têxteis	30.75	45.90	\\r
61151021		0	De fibras sintéticas ou artificiais	30.75	45.90	\\r
61151022		0	De algodão	30.75	45.90	\\r
61151029		0	De outras matérias têxteis	30.75	45.90	\\r
61151091		0	De lã ou de pelos finos	30.75	45.90	\\r
61151092		0	De algodão	30.75	45.90	\\r
61151093		0	De fibras sintéticas	30.75	45.90	\\r
61151099		0	De outras matérias têxteis	30.75	45.90	\\r
61152100		0	--De fibras sintéticas, de título inferior a 67 decitex, por fio simples	30.75	45.90	\\r
61152200		0	--De fibras sintéticas, de título igual ou superior a 67 decitex, por fio simples	30.75	45.90	\\r
61152910		0	De lã ou de pelos finos	30.75	45.90	\\r
61152920		0	De algodão	30.75	45.90	\\r
61152990		0	Outras	30.75	45.90	\\r
61153010		0	De fibras sintéticas ou artificiais	30.75	45.90	\\r
61153020		0	De algodão	30.75	45.90	\\r
61153090		0	De outras matérias têxteis	30.75	45.90	\\r
61159400		0	--De lã ou de pelos finos	30.75	45.90	\\r
61159500		0	--De algodão	30.75	45.90	\\r
61159600		0	--De fibras sintéticas	30.75	45.90	\\r
61159900		0	--De outras matérias têxteis	30.75	45.90	\\r
61161000		0	-Impregnadas, revestidas ou recobertas, de plásticos ou de borracha	30.75	45.90	\\r
61169100		0	--De lã ou de pelos finos	30.75	45.90	\\r
61169200		0	--De algodão	30.75	45.90	\\r
61169300		0	--De fibras sintéticas	30.75	45.90	\\r
61169900		0	--De outras matérias têxteis	30.75	45.90	\\r
61171000		0	-Xales, echarpes, lenços de pescoço, cachenês, cachecóis, mantilhas, véus e semelhantes	30.75	45.90	\\r
84729029		0	Outras	34.07	42.41	\\r
61178010		0	Gravatas, gravatas-borboletas e plastrons	30.75	45.90	\\r
61178090		0	Outros	30.75	45.90	\\r
61179000		0	-Partes	30.75	45.90	\\r
62011100		0	--De lã ou de pelos finos	30.75	45.90	\\r
62011200		0	--De algodão	30.75	45.90	\\r
62011300		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
62011900		0	--De outras matérias têxteis	30.75	45.90	\\r
62019100		0	--De lã ou de pelos finos	30.75	45.90	\\r
62019200		0	--De algodão	30.75	45.90	\\r
62019300		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
62019900		0	--De outras matérias têxteis	30.75	45.90	\\r
62021100		0	--De lã ou de pelos finos	30.75	45.90	\\r
62021200		0	--De algodão	30.75	45.90	\\r
62021300		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
62021900		0	--De outras matérias têxteis	30.75	45.90	\\r
62029100		0	--De lã ou de pelos finos	30.75	45.90	\\r
62029200		0	--De algodão	30.75	45.90	\\r
62029300		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
62029900		0	--De outras matérias têxteis	30.75	45.90	\\r
62031100		0	--De lã ou de pelos finos	30.75	45.90	\\r
62031200		0	--De fibras sintéticas	30.75	45.90	\\r
62031900		0	--De outras matérias têxteis	30.75	45.90	\\r
62032200		0	--De algodão	30.75	45.90	\\r
62032300		0	--De fibras sintéticas	30.75	45.90	\\r
62032910		0	De lã ou de pelos finos	30.75	45.90	\\r
62032990		0	Outros	30.75	45.90	\\r
62033100		0	--De lã ou de pelos finos	30.75	45.90	\\r
62033200		0	--De algodão	30.75	45.90	\\r
62033300		0	--De fibras sintéticas	30.75	45.90	\\r
62033900		0	--De outras matérias têxteis	30.75	45.90	\\r
62034100		0	--De lã ou de pelos finos	30.75	45.90	\\r
62034200		0	--De algodão	30.75	45.90	\\r
62034300		0	--De fibras sintéticas	30.75	45.90	\\r
62034900		0	--De outras matérias têxteis	30.75	45.90	\\r
62041100		0	--De lã ou de pelos finos	30.75	45.90	\\r
62041200		0	--De algodão	30.75	45.90	\\r
62041300		0	--De fibras sintéticas	30.75	45.90	\\r
62041900		0	--De outras matérias têxteis	30.75	45.90	\\r
62042100		0	--De lã ou de pelos finos	30.75	45.90	\\r
62042200		0	--De algodão	30.75	45.90	\\r
62042300		0	--De fibras sintéticas	30.75	45.90	\\r
62042900		0	--De outras matérias têxteis	30.75	45.90	\\r
62043100		0	--De lã ou de pelos finos	30.75	45.90	\\r
62043200		0	--De algodão	30.75	45.90	\\r
62043300		0	--De fibras sintéticas	30.75	45.90	\\r
62043900		0	--De outras matérias têxteis	30.75	45.90	\\r
62044100		0	--De lã ou de pelos finos	30.75	45.90	\\r
62044200		0	--De algodão	30.75	45.90	\\r
62044300		0	--De fibras sintéticas	30.75	45.90	\\r
62044400		0	--De fibras artificiais	30.75	45.90	\\r
62044900		0	--De outras matérias têxteis	30.75	45.90	\\r
62045100		0	--De lã ou de pelos finos	30.75	45.90	\\r
62045200		0	--De algodão	30.75	45.90	\\r
62045300		0	--De fibras sintéticas	30.75	45.90	\\r
62045900		0	--De outras matérias têxteis	30.75	45.90	\\r
62046100		0	--De lã ou de pelos finos	30.75	45.90	\\r
62046200		0	--De algodão	30.75	45.90	\\r
62046300		0	--De fibras sintéticas	30.75	45.90	\\r
62046900		0	--De outras matérias têxteis	30.75	45.90	\\r
62052000		0	-De algodão	30.75	45.90	\\r
62053000		0	-De fibras sintéticas ou artificiais	30.75	45.90	\\r
62059010		0	De lã ou de pelos finos	30.75	45.90	\\r
62059090		0	Outras	30.75	45.90	\\r
62061000		0	-De seda ou de desperdícios de seda	30.75	45.90	\\r
62062000		0	-De lã ou de pelos finos	30.75	45.90	\\r
62063000		0	-De algodão	30.75	45.90	\\r
62064000		0	-De fibras sintéticas ou artificiais	30.75	45.90	\\r
62069000		0	-De outras matérias têxteis	30.75	45.90	\\r
62071100		0	--De algodão	30.75	45.90	\\r
62071900		0	--De outras matérias têxteis	30.75	45.90	\\r
62072100		0	--De algodão	30.75	45.90	\\r
62072200		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
62072900		0	--De outras matérias têxteis	30.75	45.90	\\r
62079100		0	--De algodão	30.75	45.90	\\r
62079910		0	De fibras sintéticas ou artificiais	30.75	45.90	\\r
62079990		0	Outros	30.75	45.90	\\r
62081100		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
62081900		0	--De outras matérias têxteis	30.75	45.90	\\r
62082100		0	--De algodão	30.75	45.90	\\r
62082200		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
62082900		0	--De outras matérias têxteis	30.75	45.90	\\r
62089100		0	--De algodão	30.75	45.90	\\r
62089200		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
62089900		0	--De outras matérias têxteis	30.75	45.90	\\r
62092000		0	-De algodão	30.75	45.90	\\r
62093000		0	-De fibras sintéticas	30.75	45.90	\\r
62099010		0	De lã ou de pelos finos	30.75	45.90	\\r
62099090		0	Outras	30.75	45.90	\\r
62101000		0	-Com as matérias das posições 56.02 ou 56.03	30.75	45.90	\\r
62102000		0	-Outro vestuário, dos tipos abrangidos pelas subposições 6201.11 a 6201.19	30.75	45.90	\\r
62103000		0	-Outro vestuário, dos tipos abrangidos pelas subposições 6202.11 a 6202.19	30.75	45.90	\\r
62104000		0	-Outro vestuário de uso masculino	30.75	45.90	\\r
62105000		0	-Outro vestuário de uso feminino	30.75	45.90	\\r
62111100		0	--De uso masculino	30.75	45.90	\\r
62111200		0	--De uso feminino	30.75	45.90	\\r
62112000		0	-Macacões e conjuntos de esqui	30.75	45.90	\\r
62113200		0	--De algodão	30.75	45.90	\\r
62113300		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
62113910		0	De lã ou de pelos finos	30.75	45.90	\\r
62113990		0	Outras	30.75	45.90	\\r
62114200		0	--De algodão	30.75	45.90	\\r
62114300		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
62114900		0	--De outras matérias têxteis	30.75	45.90	\\r
62121000		0	-Sutiãs e bustiês	30.75	45.90	\\r
62122000		0	-Cintas e cintas-calças	30.75	45.90	\\r
62123000		0	-Modeladores de torso inteiro	30.75	45.90	\\r
62129000		0	-Outros	30.75	45.90	\\r
62132000		0	-De algodão	30.75	45.90	\\r
62139010		0	De seda ou de desperdícios de seda	30.75	45.90	\\r
62139090		0	Outros	30.75	45.90	\\r
62141000		0	-De seda ou de desperdícios de seda	30.75	45.90	\\r
62142000		0	-De lã ou de pelos finos	30.75	45.90	\\r
62143000		0	-De fibras sintéticas	30.75	45.90	\\r
62144000		0	-De fibras artificiais	30.75	45.90	\\r
62149010		0	De algodão	30.75	45.90	\\r
62149090		0	Outros	30.75	45.90	\\r
62151000		0	-De seda ou de desperdícios de seda	30.75	45.90	\\r
62152000		0	-De fibras sintéticas ou artificiais	30.75	45.90	\\r
62159000		0	-De outras matérias têxteis	30.75	45.90	\\r
62160000		0	Luvas, mitenes e semelhantes.	30.75	45.90	\\r
62171000		0	-Acessórios	30.75	45.90	\\r
62179000		0	-Partes	30.75	45.90	\\r
63011000		0	-Cobertores e mantas, elétricos	30.75	45.90	\\r
63012000		0	-Cobertores e mantas (exceto os elétricos), de lã ou de pelos finos	30.75	45.90	\\r
63013000		0	-Cobertores e mantas (exceto os elétricos), de algodão	30.75	45.90	\\r
63014000		0	-Cobertores e mantas (exceto os elétricos), de fibras sintéticas	30.75	45.90	\\r
63019000		0	-Outros cobertores e mantas	30.75	45.90	\\r
63021000		0	-Roupas de cama, de malha	30.75	45.90	\\r
63022100		0	--De algodão	30.75	45.90	\\r
63022200		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
63022900		0	--De outras matérias têxteis	30.75	45.90	\\r
63023100		0	--De algodão	30.75	45.90	\\r
63023200		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
63023900		0	--De outras matérias têxteis	30.75	45.90	\\r
63024000		0	-Roupas de mesa, de malha	30.75	45.90	\\r
63025100		0	--De algodão	30.75	45.90	\\r
63025300		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
63025910		0	De linho	30.75	45.90	\\r
63025990		0	Outras	30.75	45.90	\\r
63026000		0	-Roupas de toucador ou de cozinha, de tecidos atoalhados de algodão	30.75	45.90	\\r
63029100		0	--De algodão	30.75	45.90	\\r
63029300		0	--De fibras sintéticas ou artificiais	30.75	45.90	\\r
63029910		0	De linho	30.75	45.90	\\r
63029990		0	Outras	30.75	45.90	\\r
63031200		0	--De fibras sintéticas	30.75	45.90	\\r
63031910		0	De algodão	30.75	45.90	\\r
63031990		0	Outros	30.75	45.90	\\r
63039100		0	--De algodão	30.75	45.90	\\r
63039200		0	--De fibras sintéticas	30.75	45.90	\\r
63039900		0	--De outras matérias têxteis	30.75	45.90	\\r
63041100		0	--De malha	30.75	45.90	\\r
63041910		0	De algodão	30.75	45.90	\\r
63041990		0	De outras matérias têxteis	30.75	45.90	\\r
63049100		0	--De malha	30.75	45.90	\\r
63049200		0	--De algodão, exceto de malha	30.75	45.90	\\r
63049300		0	--De fibras sintéticas, exceto de malha	30.75	45.90	\\r
63049900		0	--De outras matérias têxteis, exceto de malha	30.75	45.90	\\r
63051000		0	-De juta ou de outras fibras têxteis liberianas da posição 53.03	38.07	53.22	\\r
63052000		0	-De algodão	38.07	53.22	\\r
63053200		0	--Recipientes flexíveis para produtos a granel	38.07	53.22	\\r
63053310		0	De malha	38.07	53.22	\\r
63053390		0	Outros	38.07	53.22	\\r
63053900		0	--Outros	38.07	53.22	\\r
63059000		0	-De outras matérias têxteis	38.07	53.22	\\r
63061200		0	--De fibras sintéticas	33.42	48.57	\\r
63061910		0	De algodão	33.42	48.57	\\r
63061990		0	Outros	33.42	48.57	\\r
63062200		0	--De fibras sintéticas	35.85	51.00	\\r
63062910		0	De algodão	35.85	51.00	\\r
63062990		0	Outros	35.85	51.00	\\r
63063010		0	De fibras sintéticas	35.85	51.00	\\r
63063090		0	De outras matérias têxteis	35.85	51.00	\\r
63064010		0	De algodão	33.42	48.57	\\r
63064090		0	De outras matérias têxteis	33.42	48.57	\\r
63069000		0	-Outros	33.42	48.57	\\r
63071000		0	-Rodilhas, esfregões, panos de prato ou de cozinha, flanelas e artefatos de limpeza semelhantes	30.75	45.90	\\r
63072000		0	-Cintos e coletes salva-vidas	30.75	45.90	\\r
63079010		0	De falso tecido	30.75	45.90	\\r
63079020		0	Artefato tubular com tratamento ignífugo, próprio para saída de emergência de pessoas, mesmo com seus elementos de montagem	30.75	32.45	\\r
63079090		0	Outros	30.75	45.90	\\r
70031200	01	0	Ex 01 - De vidro óptico	30.75	36.45	\\r
63080000		0	Sortidos constituídos por cortes de tecido e fios, mesmo com acessórios, para confecção de tapetes, tapeçarias, toalhas de mesa ou guardanapos, bordados, ou artefatos têxteis semelhantes, em embalagens para venda a retalho.	30.75	45.90	\\r
63090010		0	Vestuário, seus acessórios, e suas partes	30.75	45.90	\\r
63090090		0	Outros	30.75	45.90	\\r
63101000		0	-Escolhidos	30.75	45.90	\\r
63109000		0	-Outros	30.75	45.90	\\r
64011000		0	-Calçados com biqueira protetora de metal	30.75	45.90	\\r
64019200		0	--Cobrindo o tornozelo, mas não o joelho	30.75	45.90	\\r
64019910		0	Cobrindo o joelho	30.75	45.90	\\r
64019990		0	Outros	30.75	45.90	\\r
64021200		0	--Calçados para esqui e para surfe de neve	30.75	40.70	\\r
64021900		0	--Outros	30.75	45.90	\\r
64022000		0	-Calçados com parte superior em tiras ou correias, fixados à sola por pregos, tachas, pinos e semelhantes	30.75	45.90	\\r
64029110		0	Com biqueira protetora de metal	30.75	45.90	\\r
64029190		0	Outros	30.75	45.90	\\r
64029910		0	Com biqueira protetora de metal	30.75	45.90	\\r
64029990		0	Outros	30.75	45.90	\\r
64031200		0	--Calçados para esqui e para surfe de neve	30.75	40.70	\\r
64031900		0	--Outros	30.75	45.90	\\r
64032000		0	-Calçados com sola exterior de couro natural e parte superior constituída por tiras de couro natural passando pelo peito do pé e envolvendo o dedo grande	30.75	45.90	\\r
64034000		0	-Outros calçados, com biqueira protetora de metal	30.75	45.90	\\r
64035110		0	Com sola de madeira e desprovidos de palmilhas	30.75	45.90	\\r
64035190		0	Outros	30.75	45.90	\\r
64035910		0	Com sola de madeira e desprovidos de palmilhas	30.75	45.90	\\r
64035990		0	Outros	30.75	45.90	\\r
64039110		0	Com sola de madeira e desprovidos de palmilhas	30.75	45.90	\\r
64039190		0	Outros	30.75	45.90	\\r
64039910		0	Com sola de madeira e desprovidos de palmilhas	30.75	45.90	\\r
64039990		0	Outros	30.75	45.90	\\r
64041100		0	--Calçados para esporte. calçados para tênis, basquetebol, ginástica, treino e semelhantes	30.75	45.90	\\r
64041900		0	--Outros	30.75	45.90	\\r
64042000		0	-Calçados com sola exterior de couro natural ou reconstituído	30.75	45.90	\\r
64051010		0	Com sola exterior de borracha ou plástico e parte superior de couro reconstituído	30.75	45.90	\\r
64051020		0	Com sola exterior de couro natural ou reconstituído e parte superior de couro reconstituído	30.75	45.90	\\r
64051090		0	Outros	30.75	45.90	\\r
64052000		0	-Com parte superior de matérias têxteis	30.75	45.90	\\r
64059000		0	-Outros	30.75	45.90	\\r
64061000		0	-Partes superiores de calçados e seus componentes, exceto contrafortes e biqueiras rígidas	30.75	39.91	\\r
64062000		0	-Solas exteriores e saltos, de borracha ou plásticos	30.75	39.91	\\r
64069010		0	Solas exteriores e saltos, de couro natural ou reconstituído	30.75	39.91	\\r
64069020		0	Palmilhas	30.75	39.91	\\r
64069090		0	Outras	30.75	39.91	\\r
65010000		0	Esboços não enformados nem na copa nem na aba, discos e cilindros, mesmo cortados no sentido da altura, de feltro, para chapéus.	31.45	40.61	\\r
65020010		0	De palha fina (manila, panamá e semelhantes)	31.45	40.61	\\r
65020090		0	Outros	31.45	40.61	\\r
65040010		0	De palha fina (manila, panamá e semelhantes)	31.45	41.40	\\r
65040090		0	Outros	31.45	41.40	\\r
65050011		0	De algodão	31.45	41.40	\\r
65050012		0	De fibras sintéticas ou artificiais	31.45	41.40	\\r
65050019		0	De outras matérias têxteis	31.45	41.40	\\r
65050021		0	De algodão	31.45	41.40	\\r
65050022		0	De fibras sintéticas ou artificiais	31.45	41.40	\\r
65050029		0	De outras matérias têxteis	31.45	41.40	\\r
65050031		0	De algodão	31.45	41.40	\\r
65050032		0	De fibras sintéticas ou artificiais	31.45	41.40	\\r
65050039		0	De outras matérias têxteis	31.45	41.40	\\r
65050090		0	Outros	31.45	41.40	\\r
65061000		0	-Capacetes e artefatos de uso semelhante, de proteção	31.45	41.40	\\r
65069100		0	--De borracha ou de plástico	31.45	41.40	\\r
65069900		0	--De outras matérias	31.45	41.40	\\r
65070000		0	Carneiras, forros, capas, armações, palas e barbicachos, para chapéus e artefatos de uso semelhante.	31.45	40.61	\\r
66011000		0	-Guarda-sóis de jardim e artefatos semelhantes	34.12	44.07	\\r
66019110		0	Cobertos de tecido de seda ou de matérias têxteis sintéticas ou artificiais	31.45	41.40	\\r
66019190		0	Outros	31.45	41.40	\\r
66019900		0	--Outros	31.45	41.40	\\r
66020000		0	Bengalas, bengalas-assentos, chicotes, pingalins e artefatos semelhantes.	31.45	41.40	\\r
66032000		0	-Armações montadas, mesmo com hastes ou cabos, para guarda-chuvas, sombrinhas ou guarda-sóis	31.45	40.61	\\r
66039000		0	-Outros	31.45	40.61	\\r
67010000		0	Peles e outras partes de aves, com as suas penas ou penugem, penas, partes de penas, penugem e artefatos destas matérias, exceto os produtos da posição 05.05, bem como os cálamos e outros canos de penas, trabalhados.	31.45	39.79	\\r
67010000	01	0	Ex 01 - Pena solta. pele com pena, inteira, em parte, emendada ou não	31.45	39.79	\\r
67010000	02	0	Ex 02 - Artefatos de peles de aves providas de suas penas, de penas, de partes de penas e de penugem, exceto leques e ventarolas	40.80	49.14	\\r
67010000	03	0	Ex 03 - Leques e ventarolas	40.80	49.14	\\r
67021000		0	-De plásticos	38.77	47.11	\\r
67029000		0	-De outras matérias	38.77	47.11	\\r
70031200		0	--Coradas na massa, opacificadas, folheadas (chapeadas), ou com camada absorvente, refletora ou não	33.42	39.12	\\r
67030000		0	Cabelos dispostos no mesmo sentido, adelgaçados, branqueados ou preparados de outro modo. lã, pelos e outras matérias têxteis, preparados para a fabricação de perucas ou de artefatos semelhantes.	38.77	47.11	\\r
67041100		0	--Perucas completas	38.77	47.11	\\r
67041900		0	--Outros	38.77	47.11	\\r
67042000		0	-De cabelo	38.77	47.11	\\r
67049000		0	-De outras matérias	38.77	47.11	\\r
68010000		0	Pedras para calcetar, meios-fios e placas (lajes) para pavimentação, de pedra natural (exceto a ardósia).	31.45	35.22	\\r
68021000		0	-Ladrilhos, cubos, pastilhas e artigos semelhantes, mesmo de forma diferente da quadrada ou retangular, cuja maior superfície possa ser inscrita num quadrado de lado inferior a 7 cm. grânulos, fragmentos e pós, corados artificialmente	34.12	38.87	\\r
68022100		0	--Mármore, travertino e alabastro	34.12	38.87	\\r
68022300		0	--Granito	34.12	37.89	\\r
68022900		0	--Outras pedras	34.12	37.89	\\r
68029100		0	--Mármore, travertino e alabastro	34.12	37.89	\\r
68029200		0	--Outras pedras calcárias	34.12	37.89	\\r
68029310		0	Esferas para moinho	34.12	37.89	\\r
68029390		0	Outros	34.12	37.89	\\r
68029910		0	Esferas para moinho	34.12	37.89	\\r
68029990		0	Outras	34.12	37.89	\\r
68030000		0	Ardósia natural trabalhada e obras de ardósia natural ou aglomerada.	34.12	37.89	\\r
68041000		0	-Mós para moer ou desfibrar	31.45	35.22	\\r
68042111		0	Aglomerados com resina	31.45	35.22	\\r
68042119		0	Outros	31.45	35.22	\\r
68042190		0	Outros	31.45	35.22	\\r
68042211		0	Aglomerados com resina	31.45	35.22	\\r
68042219		0	Outros	31.45	35.22	\\r
68042290		0	Outros	31.45	35.22	\\r
68042300		0	--De pedras naturais	31.45	35.22	\\r
68043000		0	-Pedras para amolar ou para polir, manualmente	31.45	35.22	\\r
68051000		0	-Aplicados apenas sobre tecidos de matérias têxteis	31.45	37.15	\\r
68052000		0	-Aplicados apenas sobre papel ou cartão	31.45	37.15	\\r
68053010		0	Com suporte de papel ou cartão combinados com matérias têxteis	31.45	37.15	\\r
68053020		0	Discos de fibra vulcanizada recobertos com óxido de alumínio ou carboneto de silício	31.45	37.15	\\r
68053090		0	Outros	31.45	37.15	\\r
68061000		0	-Lãs de escórias de altos-fornos, lãs de outras escórias, lã de rocha e lãs minerais semelhantes, mesmo misturadas entre si, a granel, em folhas ou em rolos	31.45	36.20	\\r
68061000	01	0	Ex 01 - Lã de rocha e lã mineral	36.55	41.30	\\r
68062000		0	-Vermiculita e argilas, expandidas, espuma de escórias e produtos minerais semelhantes, expandidos, mesmo misturados entre si	31.45	36.20	\\r
68069010		0	Aluminosos ou silicoaluminosos	31.45	36.20	\\r
68069090		0	Outros	31.45	36.20	\\r
68069090	01	0	Ex 01 - Obras de lã de rocha e de lã mineral	36.55	41.30	\\r
68071000		0	-Em rolos	34.12	38.87	\\r
68079000		0	-Outras	34.12	38.87	\\r
68080000		0	Painéis, chapas, ladrilhos, blocos e semelhantes, de fibras vegetais, de palha ou de aparas, partículas, serragem ou de outros desperdícios de madeira, aglomerados com cimento, gesso ou outros aglutinantes minerais.	36.55	41.30	\\r
68091100		0	--Revestidos ou reforçados exclusivamente com papel ou cartão	34.12	39.82	\\r
68091900		0	--Outros	34.12	38.87	\\r
68099000		0	-Outras obras	34.12	38.87	\\r
68101100		0	--Blocos e tijolos para a construção	26.75	31.50	\\r
68101900		0	--Outros	26.75	31.50	\\r
68109100		0	--Elementos pré-fabricados para a construção ou engenharia civil	27.45	32.20	\\r
68109900		0	--Outras	27.45	32.20	\\r
68114000		0	-Que contenham amianto	30.12	34.87	\\r
68118100		0	--Chapas onduladas	30.12	34.87	\\r
68118200		0	--Outras chapas, painéis, ladrilhos, telhas e artigos semelhantes	29.42	34.17	\\r
68118900		0	--Outras obras	30.12	34.87	\\r
68128000		0	-De crocidolita	36.55	44.04	\\r
68129100		0	--Vestuário, acessórios de vestuário, calçados e chapéus	30.75	38.24	\\r
68129200		0	--Papéis, cartões e feltros	36.55	44.04	\\r
68129300		0	--Folhas de amianto e elastômeros, comprimidos, para juntas, mesmo apresentadas em rolos	36.55	44.04	\\r
68129910		0	Juntas e outros elementos com função semelhante de vedação	36.55	44.04	\\r
68129920		0	Amianto trabalhado, em fibras	36.55	43.16	\\r
68129930		0	Misturas à base de amianto ou à base de amianto e carbonato de magnésio	36.55	43.16	\\r
68129990		0	Outras	36.55	44.04	\\r
68132000		0	-Que contenham amianto	36.55	44.04	\\r
68132000	01	0	Ex 01 - Guarnições para freios e disco de fricção para embreagens	38.77	46.26	\\r
68138110		0	Pastilhas	38.77	46.26	\\r
68138190		0	Outras	38.77	46.26	\\r
68138910		0	Disco de fricção para embreagens	38.77	46.26	\\r
68138990		0	Outras	36.55	44.04	\\r
68141000		0	-Placas, folhas ou tiras, de mica aglomerada ou reconstituída, mesmo com suporte	31.45	38.94	\\r
68149000		0	-Outras	31.45	38.94	\\r
68151010		0	Fibras de carbono	36.55	38.25	\\r
68151020		0	Tecidos de fibras de carbono	36.55	38.25	\\r
68151090		0	Outras	36.55	44.04	\\r
68152000		0	-Obras de turfa	36.55	44.04	\\r
68159110		0	Crus, aglomerados com aglutinante químico	36.55	44.04	\\r
68159190		0	Outras	36.55	44.04	\\r
68159911		0	Com um teor de alumina (Al2O3), superior ou igual a 90%, em peso	36.55	38.25	\\r
68159912		0	Com um teor de silica (SiO2) superior ou igual a 90%, em peso	36.55	38.25	\\r
68159913		0	Com um teor, em peso, de óxido de zircônio (ZrO2) superior ou igual a 50% mesmo com um conteúdo de alumina inferior a 45%	36.55	38.25	\\r
68159914		0	Constituídas por uma mistura ou combinação de alumina (Al2O3), silica (SiO2) e óxido de zircônio (ZrO2), com um teor, em peso, de alumina superior ou igual a 45% mas inferior a 90% ou com um conteúdo, em peso, de óxido de zircônio (ZrO2) superior ou igual	36.55	38.25	\\r
68159919		0	Outras	36.55	44.04	\\r
68159990		0	Outras	36.55	44.04	\\r
69010000		0	Tijolos, placas (lajes), ladrilhos e outras peças cerâmicas de farinhas siliciosas fósseis (por exemplo, kieselguhr, tripolita, diatomita) ou de terras siliciosas semelhantes.	34.91	40.61	\\r
69021011		0	Tijolos ou placas, contendo, em peso, mais de 90% de trióxido de dicromo	34.91	36.61	\\r
69021018		0	Outros tijolos	34.91	40.61	\\r
69021019		0	Outros	34.91	40.61	\\r
69021090		0	Outros	34.91	40.61	\\r
69022010		0	Tijolos sílico-aluminosos	34.91	40.61	\\r
69022091		0	Sílico-aluminosos	34.91	40.61	\\r
69022092		0	Silicoso, semi-silicoso ou de sílica	34.91	40.61	\\r
69022093		0	De silimanita	34.91	40.61	\\r
69022099		0	Outros	34.91	40.61	\\r
69029010		0	De grafita	34.91	40.61	\\r
69029020		0	Não fundidos, com um teor de óxido de zircônio (ZrO2) superior a 25%, em peso	34.91	40.61	\\r
69029030		0	Com um teor de carbono superior a 85%, em peso, e diâmetro médio de poro inferior ou igual a 5 micrômetros (mícrons), do tipo dos utilizados em altos-fornos	34.91	36.61	\\r
69029040		0	De carboneto de silício	34.91	40.61	\\r
69029090		0	Outros	34.91	40.61	\\r
69031011		0	De grafita, exceto os do subitem 6903.10.12	35.60	41.30	\\r
69031012		0	Elaborados com uma mistura de grafita e carboneto de silício	35.60	41.30	\\r
69031019		0	Outros	35.60	41.30	\\r
69031020		0	Retortas elaboradas com uma mistura de grafita e carboneto de silício	35.60	41.30	\\r
69031030		0	Tampas e tampões	35.60	41.30	\\r
69031040		0	Tubos	35.60	41.30	\\r
69031090		0	Outros	35.60	41.30	\\r
69032010		0	Cadinhos	35.60	41.30	\\r
69032020		0	Tampas e tampões	35.60	41.30	\\r
69032030		0	Tubos	35.60	41.30	\\r
69032090		0	Outros	35.60	41.30	\\r
69039011		0	De carboneto de silício	35.60	41.30	\\r
69039012		0	De compostos de zircônio	35.60	41.30	\\r
69039019		0	Outros	35.60	41.30	\\r
69039091		0	De carboneto de silício	35.60	41.30	\\r
69039092		0	De compostos de zircônio	35.60	41.30	\\r
69039099		0	Outros	35.60	41.30	\\r
69041000		0	-Tijolos para construção	26.75	33.36	\\r
69049000		0	-Outros	26.75	33.36	\\r
69051000		0	-Telhas	26.75	33.36	\\r
69059000		0	-Outros	31.45	38.06	\\r
69060000		0	Tubos, calhas ou algerozes e acessórios para canalizações, de cerâmica.	26.75	33.36	\\r
69071000		0	-Ladrilhos, cubos, pastilhas e artigos semelhantes, mesmo de forma diferente da quadrada ou retangular, cuja maior superfície possa ser inscrita num quadrado de lado inferior a 7 cm	29.42	36.03	\\r
69079000		0	-Outros	29.42	36.03	\\r
69081000		0	-Ladrilhos, cubos, pastilhas e artigos semelhantes, mesmo de forma diferente da quadrada ou retangular, cuja maior superfície possa ser inscrita num quadrado de lado inferior a 7 cm	29.42	36.91	\\r
69089000		0	-Outros	29.42	36.91	\\r
69091100		0	--De porcelana	36.55	43.16	\\r
69091210		0	Guia-fios para máquina têxtil	36.55	43.16	\\r
69091220		0	Guias de agulhas para cabeças de impressão	36.55	37.15	\\r
69091230		0	Anéis de carboneto de silício para juntas de vedação mecânicas	36.55	38.25	\\r
69091290		0	Outros	36.55	43.16	\\r
69091910		0	Guia-fios para máquina têxtil	36.55	43.16	\\r
69091920		0	Guias de agulhas para cabeças de impressão	36.55	37.15	\\r
69091930		0	Colméia de cerâmica à base de alumina (Al2O3), sílica (SiO2) e óxido de magnésio (MgO), de depuradores por conversão catalítica de gases de escape de veículos	36.55	38.25	\\r
69091990		0	Outros	36.55	43.16	\\r
69099000		0	-Outros	36.55	43.16	\\r
69101000		0	-De porcelana	29.42	38.58	\\r
69109000		0	-Outros	29.42	38.58	\\r
69111010		0	Conjunto (jogo ou aparelho) para jantar, café ou chá, apresentado em embalagem comum	38.07	48.02	\\r
69111090		0	Outros	38.07	48.02	\\r
69119000		0	-Outros	38.77	48.72	\\r
69120000		0	Louça, outros artigos de uso doméstico e artigos de higiene ou de toucador, de cerâmica, exceto de porcelana.	35.85	45.80	\\r
69131000		0	-De porcelana	40.80	50.75	\\r
69139000		0	-Outros	40.80	50.75	\\r
69141000		0	-De porcelana	36.55	46.50	\\r
69149000		0	-Outras	36.55	46.50	\\r
70010000		0	Cacos, fragmentos e outros desperdícios e resíduos de vidro. vidro em blocos ou massas.	36.55	38.25	\\r
70010000	01	0	Ex 01 - Cacos, fragmentos e outros desperdícios e resíduos, exceto os de vidro óptico	31.45	33.15	\\r
70010000	02	0	Ex 02 - De vidro óptico, inclusive cacos, fragmentos e outros desperdícios e resíduos	31.45	33.15	\\r
70021000		0	-Esferas	36.55	39.30	\\r
70021000	01	0	Ex 01 - De vidro óptico	31.45	34.20	\\r
70022000		0	-Barras ou varetas	36.55	39.30	\\r
70022000	01	0	Ex 01 - De vidro óptico	31.45	34.20	\\r
70023100		0	--De quartzo ou de outras sílicas fundidos	36.55	39.30	\\r
70023100	01	0	Ex 01 - De vidro óptico	31.45	34.20	\\r
70023200		0	--De outro vidro com um coeficiente de dilatação linear não superior a 5x10-6 por Kelvin, entre 0 °C e 300 °C	36.55	39.30	\\r
70023200	01	0	Ex 01 - De vidro óptico	31.45	34.20	\\r
70023900		0	--Outros	36.55	39.30	\\r
70023900	01	0	Ex 01 - De vidro óptico	31.45	34.20	\\r
70031900		0	--Outras	33.42	39.12	\\r
70031900	01	0	Ex 01 - De vidro óptico	30.75	36.45	\\r
70032000		0	-Chapas e folhas, armadas	35.85	41.55	\\r
70033000		0	-Perfis	35.85	41.55	\\r
70042000		0	-Vidro corado na massa, opacificado, folheado (chapeado), ou com camada absorvente, refletora ou não	36.55	42.25	\\r
70042000	01	0	Ex 01 - De vidro óptico	31.45	37.15	\\r
70049000		0	-Outro vidro	36.55	42.25	\\r
70049000	01	0	Ex 01 - De vidro óptico	31.45	37.15	\\r
70051000		0	-Vidro não armado, com camada absorvente, refletora ou não	36.55	42.25	\\r
70051000	01	0	Ex 01 - De vidro óptico	31.45	37.15	\\r
70052100		0	--Corado na massa, opacificado, folheado (chapeado) ou simplesmente desbastado	34.12	39.82	\\r
70052100	01	0	Ex 01 - De vidro óptico	31.45	37.15	\\r
70052900		0	--Outro	34.12	39.82	\\r
70052900	01	0	Ex 01 - De vidro óptico	31.45	37.15	\\r
70053000		0	-Vidro armado	36.55	42.25	\\r
70060000		0	Vidro das posições 70.03, 70.04 ou 70.05, recurvado, biselado, gravado, brocado, esmaltado ou trabalhado de outro modo, mas não emoldurado nem associado a outras matérias.	36.55	43.16	\\r
70060000	01	0	Ex 01 - De vidro óptico	31.45	38.06	\\r
70071100		0	--De dimensões e formatos que permitam a sua aplicação em automóveis, veículos aéreos, barcos ou outros veículos	38.77	45.38	\\r
70071100	01	0	Ex 01 - Para ônibus ou caminhões, nas seguintes dimensões (admitida a tolerância de até 5%, para mais ou para menos): 1.693 x 575 x 6,75mm. 1.305 x 489 x 6mm. 728 x 489 x 6mm. 640 x 220 x 4,8mm. e 600 x 595 x 4,8mm	33.08	39.69	\\r
70071900		0	--Outros	36.55	43.16	\\r
70072100		0	--De dimensões e formatos que permitam a sua aplicação em automóveis, veículos aéreos, barcos ou outros veículos	38.77	45.38	\\r
70072100	01	0	Ex 01 - Para ônibus ou caminhões, nas seguintes dimensões (admitida a tolerância de até 5%, para mais ou para menos): 2.075 x 787 x 6,76mm. 1.950 x 800 x 6mm. 1.800 x 800 x 6mm. 1.693 x 575 x 6,75mm. e 1.300 x 1.235 x 6mm	33.08	39.69	\\r
70072900		0	--Outros	36.55	43.16	\\r
70080000		0	Vidros isolantes de paredes múltiplas.	36.55	43.16	\\r
70091000		0	-Espelhos retrovisores para veículos	38.77	46.26	\\r
70091000	01	0	Ex 01 - Para ônibus ou caminhões	33.08	40.57	\\r
70099100		0	--Não emoldurados	38.77	46.26	\\r
70099200		0	--Emoldurados	38.77	46.26	\\r
70101000		0	-Ampolas	31.45	37.15	\\r
70102000		0	-Rolhas, tampas e outros dispositivos de uso semelhante	38.77	44.47	\\r
70109011		0	Garrafões e garrafas	38.77	44.47	\\r
70109012		0	Frascos, boiões, vasos, embalagens tubulares e outros recipientes próprios para transporte ou embalagem. boiões para conservas	38.77	44.47	\\r
70109021		0	Garrafões e garrafas	38.77	44.47	\\r
70109022		0	Frascos, boiões, vasos, embalagens tubulares e outros recipientes próprios para transporte ou embalagem. boiões para conservas	38.77	44.47	\\r
70109090		0	Outros	38.77	44.47	\\r
70111010		0	Para lâmpadas ou tubos de descarga, incluindo os de luz-relâmpago (flash)	36.55	42.25	\\r
70111021		0	Bulbos de diâmetro inferior ou igual a 90 mm	36.55	42.25	\\r
70111029		0	Outros	36.55	42.25	\\r
70111090		0	Outros	36.55	42.25	\\r
70112000		0	-Para tubos catódicos	36.55	42.25	\\r
70119000		0	-Outros	36.55	42.25	\\r
70131000		0	-Objetos de vitrocerâmica	36.55	45.71	\\r
70132200		0	--De cristal de chumbo	38.77	47.93	\\r
70132800		0	--Outros	38.77	47.93	\\r
70133300		0	--De cristal de chumbo	38.77	47.93	\\r
70133700		0	--Outros	38.77	47.93	\\r
70134100		0	--De cristal de chumbo	36.55	45.71	\\r
70134210		0	Cafeteiras e chaleiras	36.55	45.71	\\r
70134290		0	Outros	36.55	45.71	\\r
70134290	01	0	Ex 01 - Decantadores de vinho	38.77	47.93	\\r
70134900		0	--Outros	36.55	45.71	\\r
70134900	01	0	Ex 01 - Decantadores de vinho	38.77	47.93	\\r
70139110		0	Para ornamentação de interiores	38.77	47.93	\\r
70139190		0	Outros	38.77	47.93	\\r
70139900		0	--Outros	38.77	47.93	\\r
70140000		0	Artefatos de vidro para sinalização e elementos de óptica de vidro (exceto os da posição 70.15), não trabalhados opticamente.	38.77	46.26	\\r
70140000	01	0	Ex 01 - De vidro óptico	31.45	38.94	\\r
70151010		0	Fotocromáticos	31.45	33.15	\\r
70151091		0	Brancos	31.45	33.15	\\r
70151092		0	Coloridos	31.45	38.94	\\r
70159010		0	Vidros de relojoaria	38.77	46.26	\\r
70159020		0	Vidros para máscaras, óculos ou anteparos, protetores	38.77	46.26	\\r
70159030		0	Vidros para os demais óculos	38.77	46.26	\\r
70159090		0	Outros	38.77	46.26	\\r
70161000		0	-Cubos, pastilhas e outros artigos semelhantes de vidro, mesmo com suporte, para mosaicos ou decorações semelhantes	38.77	46.26	\\r
70169000		0	-Outros	38.77	46.26	\\r
70171000		0	-De quartzo ou de outras sílicas, fundidos	31.45	38.94	\\r
70172000		0	-De outro vidro com um coeficiente de dilatação linear não superior a 5x10-6 por Kelvin, entre 0 °C e 300 °C	31.45	38.94	\\r
70179000		0	-Outros	31.45	38.94	\\r
70181010		0	Contas de vidro	40.80	49.96	\\r
70181020		0	Imitações de pérolas naturais ou cultivadas, pedras preciosas ou semipreciosas	40.80	49.96	\\r
70181090		0	Outros	40.80	49.96	\\r
70182000		0	-Microsferas de vidro, de diâmetro não superior a 1 mm	40.80	49.96	\\r
70189000		0	-Outros	40.80	49.96	\\r
70191100		0	--Fios cortados (chopped strands), de comprimento não superior a 50 mm	36.55	43.16	\\r
71142000		0	-De metais comuns folheados ou chapeados de metais preciosos (plaquê)	37.46	46.62	\\r
70191210		0	Impregnadas ou recobertas com resina de poliuretano ou borracha de estireno-butadieno	36.55	38.25	\\r
70191290		0	Outras	36.55	43.16	\\r
70191900		0	--Outros	36.55	43.16	\\r
70193100		0	--Esteiras (mats)	36.55	43.16	\\r
70193200		0	--Véus	36.55	43.16	\\r
70193900		0	--Outros	36.55	43.16	\\r
70194000		0	-Tecidos de mechas ligeiramente torcidas (rovings)	36.55	43.16	\\r
70195100		0	--De largura não superior a 30 cm	36.55	43.16	\\r
70195210		0	Com um teor de matéria orgânica superior ou igual a 0,075% e inferior ou igual a 0,3%, em peso, segundo Norma ANSI/IPC-EG-140, próprios para fabricação de placas para circuitos impressos	36.55	38.25	\\r
70195290		0	Outros	36.55	43.16	\\r
70195900		0	--Outros	36.55	43.16	\\r
70199010		0	Rede constituída por fios paralelizados e superpostos entre si em ângulo de 90°, impregnados e soldados nos pontos de interseção com resina termoplástica, com densidade superior ou igual a 3 e inferior ou igual a 7 fios por centímetro	36.55	38.25	\\r
70199090		0	Outras	36.55	43.16	\\r
70200010		0	Ampolas de vidro para garrrafas térmicas ou para outros recipientes isotérmicos, cujo isolamento seja assegurado pelo vácuo	38.77	44.47	\\r
70200090		0	Outras	38.77	47.93	\\r
71011000		0	-Pérolas naturais	44.40	50.10	\\r
71012100		0	--Em bruto	44.40	50.10	\\r
71012200		0	--Trabalhadas	44.40	50.10	\\r
71021000		0	-Não selecionados	31.45	37.15	\\r
71021000	01	0	Ex 01 - Em bruto	31.45	37.15	\\r
71022100		0	--Em bruto ou simplesmente serrados, clivados ou desbastados	31.45	33.15	\\r
71022900		0	--Outros	31.45	33.15	\\r
71023100		0	--Em bruto ou simplesmente serrados, clivados ou desbastados	31.45	36.20	\\r
71023100	01	0	Ex 01 - Em bruto	31.45	36.20	\\r
71023900		0	--Outros	31.45	37.15	\\r
71031000		0	-Em bruto ou simplesmente serradas ou desbastadas	31.45	36.20	\\r
71039100		0	--Rubis, safiras e esmeraldas	31.45	37.15	\\r
71039900		0	--Outras	31.45	37.15	\\r
71041000		0	-Quartzo piezelétrico	37.46	43.16	\\r
71042010		0	Diamantes	37.46	39.16	\\r
71042090		0	Outras	37.46	43.16	\\r
71049000		0	-Outras	37.46	43.16	\\r
71051000		0	-De diamantes	31.45	35.22	\\r
71059000		0	-Outros	31.45	35.22	\\r
71061000		0	-Pós	31.45	35.22	\\r
71069100		0	--Em formas brutas	31.45	35.22	\\r
71069210		0	Barras, fios e perfis de seção maciça	31.45	38.06	\\r
71069220		0	Chapas, lâminas, folhas e tiras	31.45	38.06	\\r
71069290		0	Outras	31.45	38.06	\\r
71070000		0	Metais comuns folheados ou chapeados (plaquê) de prata, em formas brutas ou semimanufaturadas.	36.55	43.16	\\r
71081100		0	--Pós	31.45	32.05	\\r
71081210		0	Bulhão dourado (bullion doré)	31.45	32.05	\\r
71081290		0	Outras	31.45	32.05	\\r
71081310		0	Barras, fios e perfis de seção maciça	31.45	38.06	\\r
71081390		0	Outros	31.45	38.06	\\r
71082000		0	-Para uso monetário	31.45	32.05	\\r
71090000		0	Metais comuns ou prata, folheados ou chapeados (plaquê) de ouro, em formas brutas ou semimanufaturadas.	36.55	43.16	\\r
71101100		0	--Em formas brutas ou em pó	31.45	33.15	\\r
71101910		0	Barras, fios e perfis de seção maciça	31.45	38.06	\\r
71101990		0	Outras	31.45	38.06	\\r
71102100		0	--Em formas brutas ou em pó	31.45	33.15	\\r
71102900		0	--Outras	31.45	38.06	\\r
71103100		0	--Em formas brutas ou em pó	31.45	33.15	\\r
71103900		0	--Outras	31.45	38.06	\\r
71104100		0	--Em formas brutas ou em pó	31.45	33.15	\\r
71104900		0	--Outras	31.45	38.06	\\r
71110000		0	Metais comuns, prata ou ouro, folheados ou chapeados (plaquê) de platina, em formas brutas ou semimanufaturadas.	36.55	43.16	\\r
71123010		0	Que contenham ouro, mas que não contenham outros metais preciosos	31.45	33.15	\\r
71123010	01	0	Ex 01 - Do tipo dos utilizados principalmente para recuperação de metal precioso, exceto cinzas ou lixo de ourivessaria	31.45	33.15	\\r
71123020		0	Que contenham platina, mas que não contenham outros metais preciosos	31.45	33.15	\\r
71123020	01	0	Ex 01 - Do tipo dos utilizados principalmente para recuperação de metal precioso, exceto cinzas ou lixo de ourivessaria	31.45	33.15	\\r
71123090		0	Outros	31.45	35.22	\\r
71123090	01	0	Ex 01 - Do tipo dos utilizados principalmente para recuperação de metal precioso, exceto cinzas ou lixo de ourivessaria	31.45	35.22	\\r
71129100		0	--De ouro, de metais folheados ou chapeados (plaquê) de ouro, exceto varreduras que contenham outros metais preciosos	31.45	33.15	\\r
71129100	01	0	Ex 01 - Resíduos do tipo dos utilizados para recuperação desse metal	31.45	33.15	\\r
71129200		0	--De platina, de metais folheados ou chapeados (plaquê) de platina, exceto varreduras que contenham outros metais preciosos	31.45	33.15	\\r
71129200	01	0	Ex 01 - Resíduos do tipo dos utilizados para recuperação desse metal	31.45	33.15	\\r
71129900		0	--Outros	31.45	35.22	\\r
71129900	01	0	Ex 01 - Resíduos do tipo dos utilizados para recuperação de metal precioso	31.45	35.22	\\r
71131100		0	--De prata, mesmo revestida, folheada ou chapeada de outros metais preciosos (plaquê)	37.46	46.62	\\r
71131900		0	--De outros metais preciosos, mesmo revestidos, folheados ou chapeados de metais preciosos (plaquê)	37.46	46.62	\\r
71132000		0	-De metais comuns folheados ou chapeados de metais preciosos (plaquê)	37.46	46.62	\\r
71141100		0	--De prata, mesmo revestida, folheada ou chapeada de outros metais preciosos (plaquê)	37.46	46.62	\\r
71141900		0	--De outros metais preciosos, mesmo revestidos, folheados ou chapeados de metais preciosos (plaquê)	37.46	46.62	\\r
71151000		0	-Telas ou grades catalisadoras, de platina	36.55	45.71	\\r
71159000		0	-Outras	36.55	45.71	\\r
71161000		0	-De pérolas naturais ou cultivadas	37.46	46.62	\\r
71162010		0	De diamantes sintéticos	37.46	46.62	\\r
71162020		0	Guias de agulhas, de rubi, para cabeças de impressão	37.46	38.06	\\r
71162090		0	Outras	37.46	46.62	\\r
71171100		0	--Abotoaduras e artefatos semelhantes	37.46	46.62	\\r
71171900		0	--Outras	37.46	46.62	\\r
71179000		0	-Outras	37.46	46.62	\\r
71181010		0	Destinadas a ter curso legal no país importador	31.45	39.79	\\r
71181090		0	Outras	31.45	32.05	\\r
71189000		0	-Outras	31.45	40.61	\\r
72011000		0	-Ferro fundido bruto não ligado, que contenha, em peso, 0,5% ou menos de fósforo	34.12	36.87	\\r
72012000		0	-Ferro fundido bruto não ligado, que contenha, em peso, mais de 0,5% de fósforo	34.12	36.87	\\r
72015000		0	-Ligas de ferro fundido bruto. ferro spiegel (especular)	34.12	36.87	\\r
72021100		0	--Que contenham, em peso, mais de 2% de carbono	34.12	37.89	\\r
72021900		0	--Outras	34.12	37.89	\\r
72022100		0	--Que contenham, em peso, mais de 55% de silício	34.12	37.89	\\r
72022900		0	--Outras	34.12	37.89	\\r
72023000		0	-Ferro-silício-manganês	34.12	37.89	\\r
72024100		0	--Que contenham, em peso, mais de 4% de carbono	34.12	37.89	\\r
72024900		0	--Outras	34.12	37.89	\\r
72025000		0	-Ferro-silício-cromo	34.12	37.89	\\r
72026000		0	-Ferro-níquel	34.12	37.89	\\r
72027000		0	-Ferro-molibdênio	34.12	37.89	\\r
72028000		0	-Ferro-tungstênio (ferro-volfrâmio) e ferro-silício-tungstênio (ferro-silício-volfrâmio)	34.12	37.89	\\r
72029100		0	--Ferro-titânio e ferro-silício-titânio	34.12	37.89	\\r
72029200		0	--Ferro-vanádio	34.12	37.89	\\r
72029300		0	--Ferro-nióbio	34.12	37.89	\\r
72029910		0	Ferrofósforo	34.12	37.89	\\r
72029990		0	Outras	34.12	37.89	\\r
72031000		0	-Produtos ferrosos obtidos por redução direta dos minérios de ferro	34.12	35.82	\\r
72039000		0	-Outros	34.12	35.82	\\r
72041000		0	-Desperdícios e resíduos de ferro fundido	31.45	32.05	\\r
72042100		0	--De aços inoxidáveis	31.45	32.05	\\r
72042900		0	--Outros	31.45	32.05	\\r
72043000		0	-Desperdícios e resíduos de ferro ou aço, estanhados	31.45	32.05	\\r
72044100		0	--Resíduos do torno e da fresa, aparas, lascas (meulures), pó de serra, limalhas e desperdícios da estampagem ou do corte, mesmo em fardos	31.45	32.05	\\r
72044900		0	--Outros	31.45	32.05	\\r
72045000		0	-Desperdícios em lingotes	34.12	34.72	\\r
72051000		0	-Granalhas	34.12	37.89	\\r
72052100		0	--De ligas de aço	34.12	35.82	\\r
72052910		0	De ferro esponjoso, com um teor de ferro superior ou igual a 98%, em peso	34.12	35.82	\\r
72052920		0	De ferro revestido com resina termoplástica, com um teor de ferro superior ou igual a 98%, em peso	34.12	35.82	\\r
72052990		0	Outros	34.12	37.89	\\r
72061000		0	-Lingotes	34.12	37.89	\\r
72069000		0	-Outros	34.12	37.89	\\r
72071110		0	Billets	34.12	38.87	\\r
72071190		0	Outros	34.12	38.87	\\r
72071200		0	--Outros, de seção transversal retangular	34.12	38.87	\\r
72071900		0	--Outros	34.12	38.87	\\r
72072000		0	-Que contenham, em peso, 0,25% ou mais de carbono	34.12	38.87	\\r
72081000		0	-Em rolos, simplesmente laminados a quente, apresentando motivos em relevo	34.12	40.73	\\r
72082500		0	--De espessura igual ou superior a 4,75 mm	34.12	40.73	\\r
72082610		0	Com um limite mínimo de elasticidade de 355 MPa	34.12	39.82	\\r
72082690		0	Outros	34.12	40.73	\\r
72082710		0	Com um limite mínimo de elasticidade de 275 MPa	34.12	39.82	\\r
72082790		0	Outros	34.12	40.73	\\r
72083610		0	Com um limite mínimo de elasticidade de 355 MPa	34.12	39.82	\\r
72083690		0	Outros	34.12	40.73	\\r
72083700		0	--De espessura igual ou superior a 4,75 mm, mas não superior a 10 mm	34.12	40.73	\\r
72083810		0	Com um limite mínimo de elasticidade de 355 MPa	34.12	39.82	\\r
72083890		0	Outros	34.12	40.73	\\r
72083910		0	Com um limite mínimo de elasticidade de 275 MPa	34.12	39.82	\\r
72083990		0	Outros	34.12	40.73	\\r
72084000		0	-Não enrolados, simplesmente laminados a quente, apresentando motivos em relevo	34.12	40.73	\\r
72085100		0	--De espessura superior a 10 mm	34.12	40.73	\\r
72085200		0	--De espessura igual ou superior a 4,75 mm, mas não superior a 10 mm	34.12	40.73	\\r
72085300		0	--De espessura igual ou superior a 3 mm, mas inferior a 4,75 mm	34.12	40.73	\\r
72085400		0	--De espessura inferior a 3 mm	34.12	40.73	\\r
72089000		0	-Outros	34.12	40.73	\\r
72091500		0	--De espessura igual ou superior a 3 mm	34.12	40.73	\\r
72091600		0	--De espessura superior a 1 mm, mas inferior a 3 mm	34.12	40.73	\\r
72091700		0	--De espessura igual ou superior a 0,5 mm, mas não superior a 1 mm	34.12	40.73	\\r
72091800		0	--De espessura inferior a 0,5 mm	34.12	40.73	\\r
72092500		0	--De espessura igual ou superior a 3 mm	34.12	40.73	\\r
72092600		0	--De espessura superior a 1 mm, mas inferior a 3 mm	34.12	40.73	\\r
72092700		0	--De espessura igual ou superior a 0,5 mm, mas não superior a 1 mm	34.12	40.73	\\r
72092800		0	--De espessura inferior a 0,5 mm	34.12	40.73	\\r
72099000		0	-Outros	34.12	40.73	\\r
72191100		0	--De espessura superior a 10 mm	34.12	41.61	\\r
72101100		0	--De espessura igual ou superior a 0,5 mm	34.12	40.73	\\r
72101200		0	--De espessura inferior a 0,5 mm	34.12	40.73	\\r
72102000		0	-Revestidos de chumbo, incluindo os revestidos de uma liga de chumbo-estanho	34.12	40.73	\\r
72103010		0	De espessura inferior a 4,75 mm	34.12	40.73	\\r
72103090		0	Outros	34.12	40.73	\\r
72104110		0	De espessura inferior a 4,75 mm	34.12	40.73	\\r
72104190		0	Outros	34.12	40.73	\\r
72104910		0	De espessura inferior a 4,75 mm	34.12	40.73	\\r
72104990		0	Outros	34.12	40.73	\\r
72105000		0	-Revestidos de óxidos de cromo ou de cromo e óxidos de cromo	34.12	40.73	\\r
72106100		0	--Revestidos de ligas de alumínio-zinco	34.12	40.73	\\r
72106911		0	Com peso superior ou igual a 120 g/m2 e com conteúdo de silício superior ou igual a 5% porém inferior ou igual a 11%, em peso	34.12	35.82	\\r
72106919		0	Outros	34.12	40.73	\\r
72106990		0	Outros	34.12	40.73	\\r
72107010		0	Pintados ou envernizados	34.12	40.73	\\r
72107020		0	Revestidos de plásticos	34.12	40.73	\\r
72109000		0	-Outros	34.12	40.73	\\r
72111300		0	--Laminados nas quatro faces ou em caixa fechada, de largura superior a 150 mm e de espessura igual ou superior a 4 mm, não enrolados e não apresentando motivos em relevo	34.12	40.73	\\r
72111400		0	--Outros, de espessura igual ou superior a 4,75 mm	34.12	40.73	\\r
72111900		0	--Outros	34.12	40.73	\\r
72112300		0	--Que contenham, em peso, menos de 0,25% de carbono	34.12	40.73	\\r
72112910		0	Com um teor de carbono superior ou igual a 0,25%, mas inferior a 0,6%, em peso	34.12	40.73	\\r
72112920		0	Com um teor de carbono superior ou igual a 0,6%, em peso	34.12	40.73	\\r
72119010		0	Com um teor de carbono superior ou igual a 0,6%, em peso	34.12	40.73	\\r
72119090		0	Outros	34.12	40.73	\\r
72121000		0	-Estanhados	34.12	40.73	\\r
72122010		0	De espessura inferior a 4,75 mm	34.12	40.73	\\r
72122090		0	Outros	34.12	40.73	\\r
72123000		0	-Galvanizados por outro processo	34.12	40.73	\\r
72124010		0	Pintados ou envernizados	34.12	40.73	\\r
72124021		0	Com uma camada intermediária de liga cobre-estanho ou cobre-estanho-chumbo, aplicada por sinterização	34.12	35.82	\\r
72124029		0	Outros	34.12	40.73	\\r
72125010		0	Com uma camada de liga cobre-estanho ou cobre-estanho-chumbo, aplicada por sinterização, inclusive com revestimento misto metal-plástico ou metal-plástico-fibra de carbono	34.12	35.82	\\r
72125090		0	Outros	34.12	40.73	\\r
72126000		0	-Folheados ou chapeados	34.12	40.73	\\r
72131000		0	-Dentados, com nervuras, sulcos ou relevos, obtidos durante a laminagem	27.45	34.06	\\r
72132000		0	-Outros, de aços para tornear	27.45	34.06	\\r
72139110		0	Com um teor de carbono superior ou igual a 0,6%, em peso	31.45	38.06	\\r
72139190		0	Outros	31.45	38.06	\\r
72139910		0	Com um teor de carbono superior ou igual a 0,6%, em peso	31.45	38.06	\\r
72139990		0	Outros	31.45	38.06	\\r
72141010		0	Com um teor de carbono inferior ou igual a 0,6%, em peso	31.45	38.06	\\r
72141090		0	Outras	31.45	38.06	\\r
72142000		0	-Dentadas, com nervuras, sulcos ou relevos, obtidos durante a laminagem, ou torcidas após laminagem	27.45	34.06	\\r
72143000		0	-Outras, de aços para tornear	31.45	38.06	\\r
72149100		0	--De seção transversal retangular	27.45	34.06	\\r
72149910		0	De seção circular	27.45	34.06	\\r
72149990		0	Outras	27.45	34.06	\\r
72151000		0	-De aços para tornear, simplesmente obtidas ou completamente acabadas a frio	34.12	40.73	\\r
72155000		0	-Outras, simplesmente obtidas ou completamente acabadas a frio	34.12	40.73	\\r
72159010		0	Com um teor de carbono inferior ou igual a 0,6%, em peso	34.12	40.73	\\r
72159090		0	Outras	34.12	40.73	\\r
72161000		0	-Perfis em U, I ou H, simplesmente laminados, estirados ou extrudados, a quente, de altura inferior a 80 mm	27.45	34.06	\\r
72162100		0	--Perfis em L	27.45	34.06	\\r
72162200		0	--Perfis em T	27.45	34.06	\\r
72163100		0	--Perfis em U	27.45	34.06	\\r
72163200		0	--Perfis em I	27.45	34.06	\\r
72163300		0	--Perfis em H	27.45	34.06	\\r
72164010		0	De altura inferior ou igual a 200 mm	31.45	38.06	\\r
72164090		0	Outros	31.45	38.06	\\r
72165000		0	-Outros perfis, simplesmente laminados, estirados ou extrudados, a quente	31.45	38.06	\\r
72166110		0	De altura inferior a 80 mm	31.45	38.06	\\r
72166190		0	Outros	31.45	38.06	\\r
72166910		0	De altura inferior a 80 mm	31.45	38.06	\\r
72166990		0	Outros	31.45	38.06	\\r
72169100		0	--Obtidos ou acabados a frio a partir de produtos laminados planos	31.45	38.06	\\r
72169900		0	--Outros	31.45	38.06	\\r
72171011		0	Com um teor, em peso, de fósforo inferior a 0,035% e de enxofre inferior a 0,035%, temperado e revenido, flexa máxima sem carga de 1 cm em 1 m, resistência à tração superior ou igual a 1.960 MPa e cuja maior dimensão da seção transversal seja inferior ou	34.12	35.82	\\r
72171019		0	Outros	34.12	40.73	\\r
72171090		0	Outros	30.12	36.73	\\r
72172010		0	Com um teor de carbono superior ou igual a 0,6%, em peso	34.12	40.73	\\r
72172090		0	Outros	30.12	36.73	\\r
72173010		0	Com um teor de carbono superior ou igual a 0,6%, em peso	34.12	40.73	\\r
72173090		0	Outros	34.12	40.73	\\r
72179000		0	-Outros	30.12	36.73	\\r
72181000		0	-Lingotes e outras formas primárias	34.12	38.87	\\r
72189100		0	--De seção transversal retangular	34.12	38.87	\\r
72189900		0	--Outros	34.12	38.87	\\r
72191200		0	--De espessura igual ou superior a 4,75 mm, mas não superior a 10 mm	34.12	41.61	\\r
72191300		0	--De espessura igual ou superior a 3 mm, mas inferior a 4,75 mm	34.12	41.61	\\r
72191400		0	--De espessura inferior a 3 mm	34.12	41.61	\\r
72192100		0	--De espessura superior a 10 mm	34.12	41.61	\\r
72192200		0	--De espessura igual ou superior a 4,75 mm, mas não superior a 10 mm	34.12	41.61	\\r
72192300		0	--De espessura igual ou superior a 3 mm, mas inferior a 4,75 mm	34.12	41.61	\\r
72192400		0	--De espessura inferior a 3 mm	34.12	41.61	\\r
72193100		0	--De espessura igual ou superior a 4,75 mm	34.12	41.61	\\r
72193200		0	--De espessura igual ou superior a 3 mm, mas inferior a 4,75 mm	34.12	41.61	\\r
72193300		0	--De espessura superior a 1 mm, mas inferior a 3 mm	34.12	41.61	\\r
72193400		0	--De espessura igual ou superior a 0,5 mm, mas não superior a 1 mm	34.12	41.61	\\r
72193500		0	--De espessura inferior a 0,5 mm	34.12	41.61	\\r
72199010		0	De espessura inferior a 4,75 mm e dureza superior ou igual a 42 HRC	34.12	35.82	\\r
72199090		0	Outros	34.12	41.61	\\r
72201100		0	--De espessura igual ou superior a 4,75 mm	34.12	41.61	\\r
72201210		0	De espessura inferior ou igual a 1,5 mm	34.12	41.61	\\r
72201220		0	De espessura superior a 1,5 mm, mas inferior ou igual a 3 mm	34.12	41.61	\\r
72201290		0	Outros	34.12	41.61	\\r
72202010		0	De largura inferior ou igual a 23 mm e espessura inferior ou igual a 0,1 mm	24.87	26.57	\\r
72202090		0	Outros	34.12	41.61	\\r
72209000		0	-Outros	34.12	41.61	\\r
72210000		0	Fio-máquina de aço inoxidável.	34.12	41.61	\\r
72221100		0	--De seção circular	34.12	41.61	\\r
72221910		0	De seção transversal retangular	34.12	41.61	\\r
72221990		0	Outras	34.12	41.61	\\r
72222000		0	-Barras simplesmente obtidas ou completamente acabadas a frio	34.12	41.61	\\r
72223000		0	-Outras barras	34.12	41.61	\\r
72224010		0	De altura superior ou igual a 80 mm	34.12	35.82	\\r
72224090		0	Outros	34.12	41.61	\\r
72230000		0	Fios de aço inoxidável.	34.12	41.61	\\r
72241000		0	-Lingotes e outras formas primárias	34.12	38.87	\\r
72249000		0	-Outros	34.12	38.87	\\r
72251100		0	--De grãos orientados	34.12	41.61	\\r
72251900		0	--Outros	34.12	41.61	\\r
72253000		0	-Outros, simplesmente laminados a quente, em rolos	34.12	41.61	\\r
72254010		0	De aço, segundo normas AISI D2, D3 ou D6, de espessura inferior ou igual a 7 mm	34.12	35.82	\\r
72254020		0	De aços de corte rápido	34.12	35.82	\\r
72254090		0	Outros	34.12	41.61	\\r
72255010		0	De aços de corte rápido	34.12	35.82	\\r
72255090		0	Outros	34.12	41.61	\\r
72259100		0	--Galvanizados eletroliticamente	34.12	41.61	\\r
72259200		0	--Galvanizados por outro processo	34.12	41.61	\\r
72259910		0	De aços de corte rápido	34.12	35.82	\\r
72259990		0	Outros	34.12	41.61	\\r
72261100		0	--De grãos orientados	34.12	41.61	\\r
72261900		0	--Outros	34.12	41.61	\\r
72262010		0	De espessura superior ou igual a 1 mm mas inferior ou igual a 4 mm	34.12	35.82	\\r
72262090		0	Outros	34.12	41.61	\\r
72269100		0	--Simplesmente laminados a quente	34.12	41.61	\\r
72269200		0	--Simplesmente laminados a frio	34.12	41.61	\\r
72269900		0	--Outros	34.12	41.61	\\r
72271000		0	-De aços de corte rápido	34.12	41.61	\\r
72272000		0	-De aços silício-manganês	34.12	41.61	\\r
72279000		0	-Outros	34.12	41.61	\\r
72281010		0	Simplesmente laminadas, estiradas ou extrudadas, a quente	34.12	41.61	\\r
72281090		0	Outras	34.12	41.61	\\r
72282000		0	-Barras de aços silício-manganês	34.12	41.61	\\r
72283000		0	-Outras barras, simplesmente laminadas, estiradas ou extrudadas, a quente	34.12	41.61	\\r
72284000		0	-Outras barras, simplesmente forjadas	34.12	41.61	\\r
72285000		0	-Outras barras, simplesmente obtidas ou completamente acabadas a frio	34.12	41.61	\\r
72286000		0	-Outras barras	34.12	41.61	\\r
72287000		0	-Perfis	34.12	41.61	\\r
72288000		0	-Barras ocas para perfuração	34.12	41.61	\\r
72292000		0	-De aços silício-manganês	34.12	41.61	\\r
72299000		0	-Outros	34.12	41.61	\\r
73011000		0	-Estacas-pranchas	31.45	37.15	\\r
73012000		0	-Perfis	36.55	42.25	\\r
73021010		0	De aço, de peso linear superior ou igual a 44,5 kg/m	31.45	32.05	\\r
73021090		0	Outros	31.45	38.06	\\r
73023000		0	-Agulhas, cróssimas, alavancas para comando de agulhas e outros elementos de cruzamentos e desvios	31.45	38.06	\\r
73024000		0	-Talas de junção e placas de apoio ou assentamento	31.45	38.06	\\r
73029000		0	-Outros	31.45	38.06	\\r
73030000		0	Tubos e perfis ocos, de ferro fundido.	34.12	40.73	\\r
73041100		0	--De aço inoxidável	31.45	39.79	\\r
73041900		0	--Outros	31.45	39.79	\\r
73042200		0	--Hastes de perfuração de aço inoxidável	31.45	39.79	\\r
73042310		0	De aço não ligado	31.45	39.79	\\r
73042390		0	Outros	31.45	39.79	\\r
73042400		0	--Outros, de aço inoxidável	31.45	39.79	\\r
73042910		0	De aço não ligado	31.45	39.79	\\r
73042931		0	De diâmetro exterior inferior ou igual a 229 mm	31.45	39.79	\\r
73042939		0	Outros	31.45	39.79	\\r
73042990		0	Outros	31.45	39.79	\\r
73043110		0	Tubos não revestidos	34.12	42.46	\\r
73043190		0	Outros	34.12	42.46	\\r
73043910		0	Tubos não revestidos, de diâmetro exterior inferior ou igual a 229 mm	34.12	42.46	\\r
73043920		0	Tubos revestidos, de diâmetro exterior inferior ou igual a 229 mm	34.12	42.46	\\r
73043990		0	Outros	34.12	42.46	\\r
73044110		0	Tubos capilares de diâmetro exterior inferior ou igual a 3 mm e diâmetro interior inferior ou igual a 0,2 mm	34.12	35.82	\\r
73044190		0	Outros	34.12	42.46	\\r
73044900		0	--Outros	34.12	42.46	\\r
73045111		0	Tubos capilares de diâmetro exterior inferior ou igual a 3 mm e diâmetro interior inferior ou igual a 0,2 mm	34.12	35.82	\\r
73045119		0	Outros	34.12	42.46	\\r
73045190		0	Outros	34.12	42.46	\\r
73045911		0	Com um teor, em peso, de carbono superior ou igual a 0,98% e inferior ou igual a 1,10%, de cromo superior ou igual a 1,30% e inferior ou igual a 1,60%, de silício superior ou igual a 0,15% e inferior ou igual a 0,35%, de manganês superior ou igual a 0,25%	34.12	35.82	\\r
73045919		0	Outros	34.12	42.46	\\r
73045990		0	Outros	34.12	42.46	\\r
73049011		0	De aço inoxidável	34.12	42.46	\\r
73049019		0	Outros	34.12	42.46	\\r
73049090		0	Outros	34.12	42.46	\\r
73051100		0	--Soldados longitudinalmente por arco imerso	31.45	38.94	\\r
73051200		0	--Outros, soldados longitudinalmente	31.45	38.94	\\r
73051900		0	--Outros	31.45	38.94	\\r
73052000		0	-Tubos para revestimento de poços, dos tipos utilizados na extração de petróleo ou de gás	31.45	38.94	\\r
73053100		0	--Soldados longitudinalmente	34.12	41.61	\\r
73053900		0	--Outros	34.12	41.61	\\r
73059000		0	-Outros	34.12	41.61	\\r
73061100		0	--Soldados, de aço inoxidável	31.45	38.94	\\r
73061900		0	--Outros	31.45	38.94	\\r
73062100		0	--Soldados, de aço inoxidável	31.45	38.94	\\r
73062900		0	--Outros	31.45	38.94	\\r
73063000		0	-Outros, soldados, de seção circular, de ferro ou aço não ligado	34.12	41.61	\\r
73064000		0	-Outros, soldados, de seção circular, de aço inoxidável	34.12	41.61	\\r
73065000		0	-Outros, soldados, de seção circular, de outras ligas de aço	34.12	41.61	\\r
73066100		0	--De seção quadrada ou retangular	34.12	41.61	\\r
73066900		0	--De outras seções	34.12	41.61	\\r
73069010		0	De ferro ou aço não ligado	34.12	41.61	\\r
73069020		0	De aço inoxidável	34.12	41.61	\\r
73069090		0	Outros	34.12	41.61	\\r
73071100		0	--De ferro fundido não maleável	34.12	41.61	\\r
73071910		0	De ferro fundido maleável, de diâmetro interior superior a 50,8 mm	34.12	41.61	\\r
73071920		0	De aço	34.12	41.61	\\r
73071990		0	Outros	34.12	41.61	\\r
73072100		0	--Flanges	34.12	41.61	\\r
73072200		0	--Cotovelos, curvas e luvas, roscados	34.12	41.61	\\r
73072300		0	--Acessórios para soldar topo a topo	34.12	41.61	\\r
73072900		0	--Outros	34.12	41.61	\\r
73079100		0	--Flanges	34.12	41.61	\\r
73079200		0	--Cotovelos, curvas e luvas, roscados	34.12	41.61	\\r
73079300		0	--Acessórios para soldar topo a topo	34.12	41.61	\\r
73079900		0	--Outros	34.12	41.61	\\r
73081000		0	-Pontes e elementos de pontes	31.45	38.94	\\r
73082000		0	-Torres e pórticos	31.45	38.94	\\r
73083000		0	-Portas e janelas, e seus caixilhos, alizares e soleiras	31.45	38.94	\\r
73084000		0	-Material para andaimes, para armações ou para escoramentos	27.45	34.94	\\r
73089010		0	Chapas, barras, perfis, tubos e semelhantes, próprios para construções	31.45	38.94	\\r
73089090		0	Outros	22.12	29.61	\\r
73090010		0	Para armazenamento de grãos e outras matérias sólidas	34.12	41.61	\\r
73090010	01	0	Ex 01 - Para armazenamento de grãos de produtos agrícolas	31.45	38.94	\\r
73090020		0	Recipientes isotérmicos refrigerados a nitrogênio (azoto) líquido, dos tipos utilizados para sêmen, sangue, tecidos biológicos e outros produtos similares	31.45	32.05	\\r
73090090		0	Outros	31.45	38.94	\\r
73101010		0	Recipientes isotérmicos refrigerados a nitrogênio (azoto) líquido, dos tipos utilizados para sêmen, sangue, tecidos biológicos e outros produtos similares	33.42	35.12	\\r
73101090		0	Outros	34.12	41.61	\\r
73102110		0	Próprias para acondicionar produtos alimentícios	36.55	44.04	\\r
73102190		0	Outros	36.55	44.04	\\r
73102910		0	Próprios para acondicionar produtos alimentícios	36.55	44.04	\\r
73102920		0	Recipientes isotérmicos refrigerados a nitrogênio (azoto) líquido, dos tipos utilizados para sêmen, sangue, tecidos biológicos e outros produtos similares	31.45	33.15	\\r
73102990		0	Outros	36.55	44.04	\\r
73110000		0	Recipientes para gases comprimidos ou liquefeitos, de ferro fundido, ferro ou aço.	36.55	44.04	\\r
73121010		0	De fios de aço revestidos de bronze ou latão	38.77	46.26	\\r
73121090		0	Outros	38.77	46.26	\\r
73121090	01	0	Ex 01 - Cordoalha de aço para concreto protendido	34.12	41.61	\\r
73129000		0	-Outros	38.77	46.26	\\r
73130000		0	Arame farpado, de ferro ou aço. arames ou tiras, retorcidos, mesmo farpados, de ferro ou aço, dos tipos utilizados em cercas.	30.12	37.61	\\r
73141200		0	--Telas metálicas, contínuas ou sem fim, para máquinas, de aço inoxidável	38.77	46.26	\\r
73141400		0	--Outras telas metálicas tecidas, de aço inoxidável	38.77	46.26	\\r
73141900		0	--Outras	38.77	46.26	\\r
73142000		0	-Grades e redes, soldadas nos pontos de interseção, de fios com, pelo menos, 3 mm na maior dimensão do corte transversal e com malhas de 100 cm2 ou mais, de superfície	34.77	42.26	\\r
73142000	01	0	Ex 01 - De aço, não revestidas, para estruturas ou obras de concreto armado ou argamassa  armada	34.12	41.61	\\r
73143100		0	--Galvanizadas	34.77	42.26	\\r
73143900		0	--Outras	34.77	42.26	\\r
73143900	01	0	Ex 01 - De aço, não revestidas, para estruturas ou obras de concreto armado ou argamassa  armada	30.12	37.61	\\r
73144100		0	--Galvanizadas	34.77	42.26	\\r
73144200		0	--Revestidas de plásticos	34.77	42.26	\\r
73144900		0	--Outras	38.77	46.26	\\r
73145000		0	-Chapas e tiras, distendidas	38.77	46.26	\\r
73151100		0	--Correntes de rolos	38.77	46.26	\\r
73151210		0	De transmissão	38.77	46.26	\\r
73151290		0	Outras	38.77	46.26	\\r
73151900		0	--Partes	38.77	46.26	\\r
73152000		0	-Correntes antiderrapantes	38.77	46.26	\\r
73158100		0	--Correntes de elos com suporte	38.77	46.26	\\r
73158200		0	--Outras correntes, de elos soldados	38.77	46.26	\\r
73158900		0	--Outras	38.77	46.26	\\r
73159000		0	-Outras partes	38.77	46.26	\\r
73160000		0	Âncoras, fateixas, e suas partes, de ferro fundido, ferro ou aço.	38.77	46.26	\\r
73170010		0	Tachas	36.55	44.04	\\r
73170020		0	Grampos de fio curvado	32.55	40.04	\\r
73170030		0	Pontas ou dentes para máquinas têxteis	36.55	44.04	\\r
73170090		0	Outros	32.55	40.04	\\r
73181100		0	--Tira-fundos	36.55	44.89	\\r
73181200		0	--Outros parafusos para madeira	36.55	44.89	\\r
73181300		0	--Ganchos e armelas	36.55	44.89	\\r
73181400		0	--Parafusos perfurantes	36.55	44.89	\\r
73181500		0	--Outros parafusos e pinos ou pernos, mesmo com as porcas e arruelas	36.55	44.89	\\r
73181600		0	--Porcas	36.55	44.89	\\r
73181900		0	--Outros	36.55	44.89	\\r
73182100		0	--Arruelas de pressão e outras arruelas de segurança	36.55	44.89	\\r
73182200		0	--Outras arruelas	36.55	44.89	\\r
73182300		0	--Rebites	36.55	44.89	\\r
73182400		0	--Chavetas, cavilhas e contrapinos ou troços	36.55	44.89	\\r
73182900		0	--Outros	36.55	44.89	\\r
73194000		0	-Alfinetes de segurança e outros alfinetes	38.77	47.11	\\r
73199000		0	-Outros	38.77	47.11	\\r
73201000		0	-Molas de folhas e suas folhas	38.77	47.11	\\r
73201000	01	0	Ex 01 - Para ônibus ou caminhões, com espessura da folha igual ou superior a 9 mm	33.60	41.94	\\r
73202010		0	Cilíndricas	29.52	37.86	\\r
73202090		0	Outras	38.77	47.11	\\r
73209000		0	-Outras	38.77	47.11	\\r
73211100		0	--A combustíveis gasosos, ou a gás e outros combustíveis	36.07	45.14	\\r
73211100	01	0	Ex 01 - Fogões de cozinha	32.91	42.86	\\r
73211200		0	--A combustíveis líquidos	36.55	46.50	\\r
73211200	01	0	Ex 01 - Fogões de cozinha	32.91	42.86	\\r
73211900		0	--Outros, incluindo os aparelhos a combustíveis sólidos	36.55	46.50	\\r
73211900	01	0	Ex 01 - Fogões de cozinha	32.91	42.86	\\r
73218100		0	--A combustíveis gasosos, ou a gás e outros combustíveis	36.07	45.14	\\r
73218200		0	--A combustíveis líquidos	36.55	46.50	\\r
73218900		0	--Outros, incluindo os aparelhos a combustíveis sólidos	36.55	46.50	\\r
73219000		0	-Partes	36.07	44.42	\\r
73219000	01	0	Ex 01 – De fogões de cozinha	32.91	42.07	\\r
73221100		0	--De ferro fundido	38.77	47.93	\\r
73221900		0	--Outros	38.77	47.93	\\r
73229010		0	Geradores de ar quente a combustível líquido, com capacidade superior ou igual a 1.500 kcal/h, mas inferior ou igual a 10.400 kcal/h, do tipo dos utilizados em veículos automóveis	38.77	40.47	\\r
73229090		0	Outros	38.77	47.93	\\r
73231000		0	-Palha de ferro ou aço. esponjas, esfregões, luvas e artefatos semelhantes para limpeza, polimento ou usos semelhantes	36.55	45.71	\\r
73231000	01	0	Ex 01 - Esponja de lã de aço	34.12	43.28	\\r
73239100		0	--De ferro fundido, não esmaltados	36.55	45.71	\\r
73239200		0	--De ferro fundido, esmaltados	36.55	45.71	\\r
73239300		0	--De aço inoxidável	36.55	45.71	\\r
73239400		0	--De ferro ou aço, esmaltados	36.55	45.71	\\r
73239900		0	--Outros	36.55	45.71	\\r
73241000		0	-Pias e lavatórios, de aço inoxidável	34.12	43.28	\\r
73242100		0	--De ferro fundido, mesmo esmaltadas	36.55	45.71	\\r
73242900		0	--Outras	36.55	45.71	\\r
73249000		0	-Outros, incluindo as partes	36.55	45.71	\\r
73251000		0	-De ferro fundido, não maleável	36.55	45.71	\\r
73259100		0	--Esferas e artefatos semelhantes, para moinhos	36.55	45.71	\\r
73259910		0	De aço	36.55	45.71	\\r
73259990		0	Outras	36.55	45.71	\\r
73261100		0	--Esferas e artefatos semelhantes, para moinhos	36.55	45.71	\\r
73261900		0	--Outras	36.55	45.71	\\r
73262000		0	-Obras de fio de ferro ou aço	30.12	39.28	\\r
73269010		0	Calotas elípticas de aço ao níquel, segundo Norma ASME SA 353, dos tipos utilizados na fabricação de recipientes para gases comprimidos ou liquefeitos	34.12	35.82	\\r
73269090		0	Outras	34.12	43.28	\\r
74010000		0	Mates de cobre. cobre de cementação (precipitado de cobre).	31.45	35.22	\\r
74020000		0	Cobre não refinado. ânodos de cobre para refinação eletrolítica.	31.45	35.22	\\r
74031100		0	--Cátodos e seus elementos	31.45	35.22	\\r
74031200		0	--Barras para obtenção de fios (wire-bars)	31.45	35.22	\\r
74031300		0	--Palanquilhas (billets)	31.45	35.22	\\r
74031900		0	--Outros	31.45	35.22	\\r
74032100		0	--À base de cobre-zinco (latão)	31.45	35.22	\\r
74032200		0	--À base de cobre-estanho (bronze)	31.45	35.22	\\r
74032900		0	--Outras ligas de cobre (exceto ligas-mãe da posição 74.05)	31.45	35.22	\\r
74040000		0	Desperdícios e resíduos, de cobre.	31.45	33.15	\\r
74050000		0	Ligas-mãe de cobre.	31.45	35.22	\\r
74061000		0	-Pós de estrutura não lamelar	31.45	35.22	\\r
74062000		0	-Pós de estrutura lamelar. escamas	31.45	35.22	\\r
74071010		0	Barras	34.12	40.73	\\r
74071021		0	Ocos	34.12	40.73	\\r
74071029		0	Outros	34.12	40.73	\\r
74072110		0	Barras	34.12	40.73	\\r
74072120		0	Perfis	34.12	40.73	\\r
74072910		0	Barras	34.12	40.73	\\r
74072921		0	Ocos	34.12	40.73	\\r
74072929		0	Outros	34.12	40.73	\\r
74081100		0	--Com a maior dimensão da seção transversal superior a 6 mm	34.12	39.82	\\r
74081900		0	--Outros	34.12	40.73	\\r
74082100		0	--À base de cobre-zinco (latão)	34.12	40.73	\\r
74082200		0	--À base de cobre-níquel (cuproníquel) ou de cobre-níquel-zinco (maillechort)	34.12	40.73	\\r
74082911		0	Fosforoso	34.12	40.73	\\r
74082919		0	Outros	34.12	40.73	\\r
74082990		0	Outros	34.12	40.73	\\r
74091100		0	--Em rolos	34.12	40.73	\\r
74091900		0	--Outras	34.12	40.73	\\r
74092100		0	--Em rolos	34.12	40.73	\\r
74092900		0	--Outras	34.12	40.73	\\r
74093111		0	Com uma camada intermediária de liga de cobre-estanho ou cobre-estanho-chumbo, aplicada por sinterização	34.12	35.82	\\r
74093119		0	Outras	34.12	40.73	\\r
74093190		0	Outras	34.12	40.73	\\r
74093900		0	--Outras	34.12	40.73	\\r
74094010		0	Em rolos	34.12	40.73	\\r
74094090		0	Outros	34.12	40.73	\\r
74099000		0	-De outras ligas de cobre	34.12	40.73	\\r
74101112		0	De espessura inferior ou igual a 0,04 mm e uma resistividade elétrica inferior ou igual a 0,017241 ohm.mm2/m	34.12	34.72	\\r
74101113		0	Outras, de espessura inferior ou igual a 0,04 mm	34.12	40.73	\\r
74101119		0	Outras	34.12	40.73	\\r
74101190		0	Outras	34.12	40.73	\\r
74101200		0	--De ligas de cobre	34.12	40.73	\\r
74102110		0	Com suporte isolante de resina epóxida e fibra de vidro, dos tipos utilizados para circuitos impressos	34.12	36.87	\\r
74102120		0	Com espessura superior a 0,012 mm, sobre suporte de poliéster ou poliimida e com espessura total, incluindo o suporte, inferior ou igual a 0,195 mm	34.12	34.72	\\r
74102130		0	Com suporte isolante de resina fenólica e papel, dos tipos utilizados para circuitos impressos	34.12	36.87	\\r
74102190		0	Outras	34.12	40.73	\\r
74102200		0	--De ligas de cobre	34.12	40.73	\\r
74111010		0	Não aletados nem ranhurados	34.12	41.61	\\r
74111090		0	Outros	34.12	41.61	\\r
74112110		0	Não aletados nem ranhurados	34.12	41.61	\\r
74112190		0	Outros	34.12	41.61	\\r
74112210		0	Não aletados nem ranhurados	34.12	41.61	\\r
74112290		0	Outros	34.12	41.61	\\r
74112910		0	Não aletados nem ranhurados	34.12	41.61	\\r
74112990		0	Outros	34.12	41.61	\\r
74121000		0	-De cobre refinado	34.12	41.61	\\r
74122000		0	-De ligas de cobre	34.12	41.61	\\r
74130000		0	Cordas, cabos, tranças e artefatos semelhantes, de cobre, não isolados para usos elétricos.	31.45	38.94	\\r
74151000		0	-Tachas, pregos, percevejos, escápulas e artefatos semelhantes	36.55	44.04	\\r
74152100		0	--Arruelas (incluindo as de pressão)	36.55	44.04	\\r
74152900		0	--Outros	36.55	44.04	\\r
74153300		0	--Parafusos. pinos ou pernos e porcas	36.55	44.04	\\r
74153900		0	--Outros	36.55	44.04	\\r
74181000		0	-Artefatos de uso doméstico e suas partes. esponjas, esfregões, luvas e artefatos semelhantes, para limpeza, polimento ou usos semelhantes	36.55	44.89	\\r
74182000		0	-Artefatos de higiene ou de toucador, e suas partes	36.55	44.89	\\r
74191000		0	-Correntes, cadeias, e suas partes	34.12	42.46	\\r
74199100		0	--Vazadas, moldadas, estampadas ou forjadas, mas não trabalhadas de outro modo	36.55	44.89	\\r
74199910		0	Telas metálicas de fio de cobre	31.45	38.94	\\r
74199920		0	Grades e redes, de fio de cobre. chapas e tiras, distendidas	31.45	38.94	\\r
74199930		0	Molas	36.55	44.04	\\r
74199990		0	Outras	34.12	42.46	\\r
74199990	01	0	Ex 01 - Aparelhos não elétricos, para cozinhar ou aquecer, dos tipos utilizados para uso doméstico, e suas partes	36.55	44.89	\\r
75011000		0	-Mates de níquel	31.45	35.22	\\r
75012000		0	-Sinters de óxidos de níquel e outros produtos intermediários da metalurgia do níquel	31.45	35.22	\\r
75021010		0	Catodos	31.45	35.22	\\r
75021090		0	Outros	31.45	35.22	\\r
75022000		0	-Ligas de níquel	31.45	35.22	\\r
75030000		0	Desperdícios e resíduos, de níquel.	31.45	33.15	\\r
75040010		0	Não ligado	31.45	35.22	\\r
75040090		0	Outros	52.49	56.26	\\r
75051110		0	Barras	31.45	38.06	\\r
75051121		0	Ocos	31.45	38.06	\\r
75051129		0	Outros	31.45	38.06	\\r
75051210		0	Barras	31.45	38.06	\\r
75051221		0	Ocos	31.45	38.06	\\r
75051229		0	Outros	31.45	38.06	\\r
75052100		0	--De níquel não ligado	31.45	38.06	\\r
75052200		0	--De ligas de níquel	31.45	38.06	\\r
75061000		0	-De níquel não ligado	31.45	38.06	\\r
75062000		0	-De ligas de níquel	31.45	38.06	\\r
75071100		0	--De níquel não ligado	31.45	38.94	\\r
75071200		0	--De ligas de níquel	31.45	38.94	\\r
75072000		0	-Acessórios para tubos	31.45	38.94	\\r
75081000		0	-Telas metálicas e grades, de fios de níquel	31.45	39.79	\\r
75089010		0	Cilindros ocos de seção variável, obtidos por centrifugação, dos tipos utilizados em reformadores estequiométricos de gás natural	31.45	33.15	\\r
75089090		0	Outras	31.45	39.79	\\r
76011000		0	-Alumínio não ligado	33.60	37.37	\\r
76012000		0	-Ligas de alumínio	33.60	37.37	\\r
76020000		0	Desperdícios e resíduos, de alumínio.	31.45	32.05	\\r
76031000		0	-Pós de estrutura não lamelar	33.60	37.37	\\r
76032000		0	-Pós de estrutura lamelar. escamas	33.60	37.37	\\r
76041010		0	Barras	31.45	38.06	\\r
76041021		0	Ocos	31.45	38.06	\\r
76041029		0	Outros	31.45	38.06	\\r
76042100		0	--Perfis ocos	31.45	38.06	\\r
76042911		0	Forjadas, de seção transversal circular, de diâmetro superior ou igual a 400 mm mas inferior ou igual a 760 mm	31.45	33.15	\\r
76042919		0	Outras	31.45	38.06	\\r
76042920		0	Perfis	31.45	38.06	\\r
76051110		0	Com um teor de alumínio superior ou igual a 99,45%, em peso, e uma resistividade elétrica inferior ou igual a 0,0283 ohm.mm2/m	34.12	40.73	\\r
76051190		0	Outros	34.12	40.73	\\r
76051910		0	Com um teor de alumínio superior ou igual a 99,45%, em peso, e uma resistividade elétrica inferior ou igual a 0,0283 ohm.mm2/m	34.12	40.73	\\r
76051990		0	Outros	34.12	40.73	\\r
76052110		0	Com um teor, em peso, de alumínio superior ou igual a 98,45%, e de magnésio e silício, considerados individualmente, superior ou igual a 0,45% e inferior ou igual a 0,55% e uma resistividade elétrica inferior ou igual a 0,0328 ohm.mm2/m	34.12	40.73	\\r
76052190		0	Outros	34.12	40.73	\\r
76052910		0	Com um teor, em peso, de alumínio superior ou igual a 98,45%, e de magnésio e silício, considerados individualmente, superior ou igual a 0,45% e inferior ou igual a 0,55% e uma resistividade elétrica inferior ou igual a 0,0328 ohm.mm2/m	34.12	40.73	\\r
76052990		0	Outros	34.12	40.73	\\r
76061110		0	Com um teor, em peso, de silício superior ou igual a 0,05% e inferior ou igual a 0,20%, de ferro superior ou igual a 0,20% e inferior ou igual a 0,40%, de cobre inferior ou igual a 0,05%, de zinco inferior ou igual a 0,05%, de manganês inferior ou igual a	34.12	35.82	\\r
76061190		0	Outras	34.12	40.73	\\r
76061210		0	Com teores, em peso, de magnésio superior ou igual a 4% e inferior ou igual a 5%, de manganês superior ou igual a 0,20% e inferior ou igual a 0,50%, de ferro inferior ou igual a 0,35%, de silício inferior ou igual a 0,20% e de outros metais, em conjunto,	34.12	40.73	\\r
76061220		0	Com um teor, em peso, de silício superior ou igual a 0,05% e inferior ou igual a 0,20%, de ferro superior ou igual a 0,20% e inferior ou igual a 0,40%, de cobre inferior ou igual a 0,05%, de zinco inferior ou igual a 0,05%, de manganês superior a 0,1% e i	34.12	35.82	\\r
76061290		0	Outras	34.12	40.73	\\r
76069100		0	--De alumínio não ligado	34.12	40.73	\\r
76069200		0	--De ligas de alumínio	34.12	40.73	\\r
76071110		0	Com um teor, em peso, de silício superior ou igual a 0,05% e inferior ou igual a 0,20%, de ferro superior ou igual a 0,20% e inferior ou igual a 0,40%, de cobre inferior ou igual a 0,05%, de zinco inferior ou igual a 0,05%, de manganês inferior ou igual a	34.12	35.82	\\r
76071190		0	Outras	34.12	40.73	\\r
76071910		0	Gravadas, mesmo com camada de óxido de alumínio, de espessura inferior ou igual a 110 micrômetros (mícrons) e com um conteúdo de alumínio superior ou igual a 99,9%, em peso	34.12	35.82	\\r
76071990		0	Outras	34.12	40.73	\\r
76072000		0	-Com suporte	34.12	40.73	\\r
76081000		0	-De alumínio não ligado	31.45	38.94	\\r
76082010		0	Sem costura, extrudados e trefilados, segundo Norma ASTM B210, de seção circular, de liga AA 6061 (Aluminium Association), com limite elástico aparente de Johnson (JAEL) superior a 3.000 Nm, segundo Norma SAE AE7, diâmetro externo superior ou igual a 85 m	31.45	33.15	\\r
76082090		0	Outros	31.45	38.94	\\r
76090000		0	Acessórios para tubos (por exemplo, uniões, cotovelos, luvas), de alumínio.	34.12	41.61	\\r
76101000		0	-Portas e janelas, e seus caixilhos, alizares e soleiras	31.45	39.79	\\r
76109000		0	-Outros	31.45	39.79	\\r
76110000		0	Reservatórios, tonéis, cubas e recipientes semelhantes para quaisquer matérias (exceto gases comprimidos ou liquefeitos), de alumínio, de capacidade superior a 300 l, sem dispositivos mecânicos ou térmicos, mesmo com revestimento interior ou calorífugo.	34.12	42.46	\\r
76121000		0	-Recipientes tubulares, flexíveis	36.55	44.89	\\r
76129011		0	Para aerossóis, com capacidade inferior ou igual a 700 cm3	36.55	44.89	\\r
76129012		0	Isotérmicos, refrigerados a nitrogênio (azoto) líquido, dos tipos utilizados para sêmen, sangue, tecidos biológicos e outros produtos similares	36.55	38.25	\\r
76129019		0	Outros	36.55	44.89	\\r
76129090		0	Outros	36.55	44.89	\\r
76130000		0	Recipientes para gases comprimidos ou liquefeitos, de alumínio.	36.55	44.89	\\r
76141010		0	Cordas e cabos	36.55	43.16	\\r
76141090		0	Outros	36.55	43.16	\\r
76149010		0	Cabos	36.55	43.16	\\r
76149090		0	Outros	36.55	43.16	\\r
76151000		0	-Artefatos de uso doméstico e suas partes. esponjas, esfregões, luvas e artefatos semelhantes, para limpeza, polimento ou usos semelhantes	36.55	44.89	\\r
76152000		0	-Artefatos de higiene ou de toucador, e suas partes	24.55	32.89	\\r
76161000		0	-Tachas, pregos, escápulas, parafusos, pinos ou pernos roscados, porcas, ganchos roscados, rebites, chavetas, cavilhas, contrapinos ou troços, arruelas e artefatos semelhantes	36.55	44.04	\\r
76169100		0	--Telas metálicas, grades e redes, de fios de alumínio	36.55	44.04	\\r
76169900		0	--Outras	34.12	41.61	\\r
78011011		0	Em lingotes	31.45	36.20	\\r
78011019		0	Outros	31.45	36.20	\\r
78011090		0	Outros	31.45	36.20	\\r
78019100		0	--Que contenham antimônio como segundo elemento predominante em peso	31.45	35.22	\\r
78019900		0	--Outros	31.45	35.22	\\r
78020000		0	Desperdícios e resíduos, de chumbo.	31.45	34.20	\\r
78041100		0	--Folhas e tiras, de espessura não superior a 0,2 mm (excluindo o suporte)	31.45	38.06	\\r
78041900		0	--Outras	31.45	38.06	\\r
78042000		0	-Pós e escamas	31.45	35.22	\\r
78060010		0	Barras, perfis e fios	31.45	38.06	\\r
78060020		0	Tubos e seus acessórios	31.45	38.94	\\r
78060090		0	Outras	31.45	39.79	\\r
79011111		0	Em lingotes	31.45	36.20	\\r
79011119		0	Outros	31.45	36.20	\\r
79011191		0	Em lingotes	31.45	36.20	\\r
79011199		0	Outros	31.45	36.20	\\r
79011210		0	Em lingotes	31.45	36.20	\\r
79011290		0	Outros	31.45	35.22	\\r
79012010		0	Em lingotes	31.45	36.20	\\r
79012090		0	Outros	31.45	36.20	\\r
79020000		0	Desperdícios e resíduos, de zinco.	31.45	33.15	\\r
79031000		0	-Poeiras de zinco	31.45	35.22	\\r
79039000		0	-Outros	31.45	35.22	\\r
79040000		0	Barras, perfis e fios, de zinco.	31.45	38.06	\\r
79050000		0	Chapas, folhas e tiras, de zinco.	31.45	38.06	\\r
79070010		0	Tubos e seus acessórios	31.45	38.94	\\r
79070090		0	Outras	31.45	39.79	\\r
80011000		0	-Estanho não ligado	31.45	35.22	\\r
80012000		0	-Ligas de estanho	31.45	35.22	\\r
80020000		0	Desperdícios e resíduos, de estanho.	31.45	33.15	\\r
80030000		0	Barras, perfis e fios, de estanho.	31.45	38.06	\\r
80070010		0	Chapas, folhas e tiras	31.45	38.06	\\r
80070020		0	Pós e escamas	31.45	35.22	\\r
80070030		0	Tubos e seus acessórios	31.45	38.94	\\r
80070090		0	Outras	31.45	39.79	\\r
81011000		0	-Pós	31.45	33.15	\\r
81019400		0	--Tungstênio (volfrâmio) em formas brutas, incluindo as barras simplesmente obtidas por sinterização	31.45	33.15	\\r
81019600		0	--Fios	31.45	33.15	\\r
81019700		0	--Desperdícios e resíduos	31.45	33.15	\\r
81019910		0	Do tipo dos utilizados na fabricação de contatos elétricos	31.45	33.15	\\r
81019990		0	Outros	31.45	33.15	\\r
81021000		0	-Pós	31.45	33.15	\\r
81029400		0	--Molibdênio em formas brutas, incluindo as barras simplesmente obtidas por sinterização	31.45	33.15	\\r
81029500		0	--Barras, exceto as simplesmente obtidas por sinterização, perfis, chapas, tiras e folhas	31.45	33.15	\\r
81029600		0	--Fios	31.45	33.15	\\r
81029700		0	--Desperdícios e resíduos	31.45	33.15	\\r
81029900		0	--Outros	31.45	33.15	\\r
81032000		0	-Tântalo em formas brutas, incluindo as barras simplesmente obtidas por sinterização. pós	31.45	33.15	\\r
81033000		0	-Desperdícios e resíduos	31.45	33.15	\\r
81039000		0	-Outros	31.45	33.15	\\r
81041100		0	--Que contenha pelo menos 99,8%, em peso, de magnésio	31.45	35.22	\\r
81041900		0	--Outros	31.45	35.22	\\r
81042000		0	-Desperdícios e resíduos	31.45	33.15	\\r
81043000		0	-Aparas, resíduos de torno e grânulos, calibrados. pós	33.60	37.37	\\r
81049000		0	-Outros	33.60	38.35	\\r
81052010		0	Em formas brutas	31.45	34.20	\\r
81052021		0	De ligas à base de cobalto-cromo-tungstênio (volfrâmio) (estelites)	31.45	33.15	\\r
81052029		0	Outros	31.45	35.22	\\r
81052090		0	Outros	31.45	35.22	\\r
81053000		0	-Desperdícios e resíduos	31.45	35.22	\\r
81059010		0	Chapas, folhas, tiras, fios, hastes, pastilhas e plaquetas	31.45	35.22	\\r
81059090		0	Outros	31.45	35.22	\\r
81060010		0	Em formas brutas	31.45	33.15	\\r
81060090		0	Outros	31.45	33.15	\\r
81072010		0	Em formas brutas	31.45	35.22	\\r
81072020		0	Pós	31.45	35.22	\\r
81073000		0	-Desperdícios e resíduos	31.45	35.22	\\r
81079000		0	-Outros	31.45	35.22	\\r
81082000		0	-Titânio em formas brutas. pós	30.75	32.45	\\r
81083000		0	-Desperdícios e resíduos	30.75	32.45	\\r
81089000		0	-Outros	30.75	32.45	\\r
81092000		0	-Zircônio em formas brutas. pós	31.45	33.15	\\r
81093000		0	-Desperdícios e resíduos	31.45	33.15	\\r
81099000		0	-Outros	31.45	33.15	\\r
81101010		0	Em formas brutas	31.45	33.15	\\r
81101020		0	Pós	31.45	35.22	\\r
81102000		0	-Desperdícios e resíduos	31.45	35.22	\\r
81109000		0	-Outros	31.45	35.22	\\r
81110010		0	Em formas brutas	31.45	35.22	\\r
81110020		0	Chapas, folhas, tiras, fios, hastes, pastilhas e plaquetas	31.45	35.22	\\r
81110090		0	Outros	31.45	35.22	\\r
81121200		0	--Em formas brutas. pós	31.45	35.22	\\r
81121300		0	--Desperdícios e resíduos	31.45	35.22	\\r
81121900		0	--Outros	31.45	35.22	\\r
81122110		0	Em formas brutas	31.45	33.15	\\r
81122120		0	Pós	31.45	33.15	\\r
81122200		0	--Desperdícios e resíduos	31.45	33.15	\\r
81122900		0	--Outros	31.45	33.15	\\r
81125100		0	--Em formas brutas. pós	31.45	33.15	\\r
81125200		0	--Desperdícios e resíduos	31.45	33.15	\\r
81125900		0	--Outros	31.45	33.15	\\r
81129200		0	--Em formas brutas. desperdícios e resíduos. pós	31.45	33.15	\\r
81129900		0	--Outros	31.45	33.15	\\r
81130010		0	Chapas, folhas, tiras, fios, hastes, pastilhas e plaquetas	31.45	35.22	\\r
81130090		0	Outros	31.45	35.22	\\r
82011000		0	-Pás	30.75	39.91	\\r
82013000		0	-Alviões, picaretas, enxadas, sachos, ancinhos e raspadeiras	30.75	39.91	\\r
82014000		0	-Machados, podões e ferramentas semelhantes com gume	30.75	39.91	\\r
82015000		0	-Tesouras de podar (incluindo as tesouras para aves) manipuladas com uma das mãos	30.75	39.91	\\r
82016000		0	-Tesouras para sebes, tesouras de podar e ferramentas semelhantes, manipuladas com as duas mãos	30.75	39.91	\\r
82019000		0	-Outras ferramentas manuais para agricultura, horticultura e silvicultura	30.75	39.91	\\r
82021000		0	-Serras manuais	35.60	44.76	\\r
82022000		0	-Folhas de serras de fita	35.60	44.76	\\r
82023100		0	--Com parte operante de aço	35.60	44.76	\\r
82023900		0	--Outras, incluindo as partes	35.60	44.76	\\r
82024000		0	-Correntes cortantes de serras	35.60	44.76	\\r
82029100		0	--Folhas de serras retilíneas, para trabalhar metais	35.60	44.76	\\r
82029910		0	Retas, não denteadas, para serrar pedras	35.60	44.76	\\r
82029990		0	Outras	35.60	44.76	\\r
82031010		0	Limas e grosas	35.60	44.76	\\r
82031090		0	Outras	35.60	44.76	\\r
82032010		0	Alicates (mesmo cortantes)	35.60	44.76	\\r
82032090		0	Outras	35.60	44.76	\\r
82033000		0	-Cisalhas para metais e ferramentas semelhantes	35.60	44.76	\\r
82034000		0	-Corta-tubos, corta-pinos, saca-bocados e ferramentas semelhantes	35.60	44.76	\\r
82041100		0	--De abertura fixa	35.60	44.76	\\r
82041200		0	--De abertura variável	35.60	44.76	\\r
82042000		0	-Chaves de caixa intercambiáveis, mesmo com cabos	35.60	44.76	\\r
82051000		0	-Ferramentas de furar ou de roscar	35.60	44.76	\\r
82052000		0	-Martelos e marretas	35.60	44.76	\\r
82053000		0	-Plainas, formões, goivas e ferramentas cortantes semelhantes, para trabalhar madeira	35.60	44.76	\\r
82054000		0	-Chaves de fenda	35.60	44.76	\\r
82055100		0	--De uso doméstico	35.60	44.76	\\r
82055900		0	--Outras	35.60	44.76	\\r
82056000		0	-Lâmpadas ou lamparinas, de soldar (maçaricos) e semelhantes	35.60	44.76	\\r
82057000		0	-Tornos de apertar, sargentos e semelhantes	35.60	44.76	\\r
82059000		0	-Outros, incluindo os sortidos constituídos por artefatos incluídos em pelo menos duas das subposições da presente posição	35.60	44.76	\\r
82060000		0	Ferramentas de pelo menos duas das posições 82.02 a 82.05, acondicionadas em sortidos para venda a retalho.	35.60	44.76	\\r
82071300		0	--Com parte operante de ceramais (cermets)	35.60	44.76	\\r
82071900		0	--Outras, incluindo as partes	35.60	44.76	\\r
82072000		0	-Fieiras de estiramento ou de extrusão, para metais	35.60	44.76	\\r
82073000		0	-Ferramentas de embutir, de estampar ou de puncionar	31.45	38.94	\\r
82074010		0	De roscar interiormente	35.60	44.76	\\r
82074020		0	De roscar exteriormente	35.60	44.76	\\r
82075011		0	Helicoidais, com diâmetro inferior ou igual a 52 mm	35.60	44.76	\\r
82075019		0	Outras	35.60	44.76	\\r
82075090		0	Outras	35.60	44.76	\\r
82076000		0	-Ferramentas de mandrilar ou de brochar	35.60	44.76	\\r
82077010		0	De topo	35.60	44.76	\\r
82077020		0	Para cortar engrenagens	35.60	44.76	\\r
82077090		0	Outros	35.60	44.76	\\r
82078000		0	-Ferramentas de tornear	35.60	44.76	\\r
82079000		0	-Outras ferramentas intercambiáveis	35.60	44.76	\\r
82081000		0	-Para trabalhar metais	35.60	43.94	\\r
82082000		0	-Para trabalhar madeira	35.60	43.94	\\r
82083000		0	-Para aparelhos de cozinha ou para máquinas das indústrias alimentares	35.60	43.94	\\r
82084000		0	-Para máquinas de agricultura, horticultura ou silvicultura	35.60	43.94	\\r
82084000	01	0	Ex 01 - Navalhas triangulares (faquinhas serrilhadas) de uso em colheitadeiras agrícolas	33.60	41.94	\\r
82089000		0	-Outras	35.60	43.94	\\r
82090011		0	Intercambiáveis	35.60	43.94	\\r
82090019		0	Outras	35.60	43.94	\\r
82090090		0	Outros	35.60	43.94	\\r
82100010		0	Moinhos	36.55	45.71	\\r
82100090		0	Outros	36.55	45.71	\\r
82111000		0	-Sortidos	36.76	45.92	\\r
82119100		0	--Facas de mesa, de lâmina fixa	36.76	45.92	\\r
82119210		0	Para cozinha e açougue	36.76	45.92	\\r
82119220		0	Para caça	37.46	46.62	\\r
82119290		0	Outras	37.46	46.62	\\r
82119310		0	Podadeiras e suas partes	37.46	46.62	\\r
82119320		0	Canivetes com uma ou várias lâminas ou outras peças	37.46	46.62	\\r
82119390		0	Outras	37.46	46.62	\\r
82119400		0	--Lâminas	36.55	45.71	\\r
82119500		0	--Cabos de metais comuns	36.55	45.71	\\r
82121010		0	Navalhas	37.46	46.62	\\r
82121020		0	Aparelhos	38.77	47.93	\\r
82122010		0	Lâminas	37.46	46.62	\\r
82122020		0	Esboços em tiras	37.46	46.62	\\r
82129000		0	-Outras partes	37.46	46.62	\\r
82130000		0	Tesouras e suas lâminas.	37.46	46.62	\\r
82141000		0	-Espátulas, abre-cartas, raspadeiras, apontadores de lápis e suas lâminas	36.55	45.71	\\r
82142000		0	-Utensílios e sortidos de utensílios de manicuros ou de pedicuros (incluindo as limas para unhas)	36.55	45.71	\\r
82149010		0	Máquinas de tosquiar e suas partes	36.55	45.71	\\r
82149090		0	Outros	36.55	45.71	\\r
82151000		0	-Sortidos que contenham pelo menos um objeto prateado, dourado ou platinado	35.85	45.01	\\r
82152000		0	-Outros sortidos	35.85	45.01	\\r
82159100		0	--Prateados, dourados ou platinados	35.85	45.01	\\r
82159910		0	De aço inoxidável	35.85	45.01	\\r
82159990		0	Outros	35.85	45.01	\\r
83011000		0	-Cadeados	36.55	44.89	\\r
83012000		0	-Fechaduras dos tipos utilizados em veículos automóveis	36.55	44.89	\\r
83013000		0	-Fechaduras dos tipos utilizados em móveis	36.55	44.89	\\r
83014000		0	-Outras fechaduras. ferrolhos	34.12	42.46	\\r
83015000		0	-Fechos e armações com fecho, com fechadura	36.55	44.89	\\r
83016000		0	-Partes	34.12	42.46	\\r
83017000		0	-Chaves apresentadas isoladamente	31.45	39.79	\\r
83021000		0	-Dobradiças de qualquer tipo (incluindo os gonzos e as charneiras)	34.12	42.46	\\r
83022000		0	-Rodízios	36.55	44.89	\\r
83023000		0	-Outras guarnições, ferragens e artigos semelhantes, para veículos automóveis	36.55	44.89	\\r
83024100		0	--Para construções	36.55	44.89	\\r
83024200		0	--Outros, para móveis	36.55	44.89	\\r
83024900		0	--Outros	36.55	44.89	\\r
83025000		0	-Pateras, porta-chapéus, cabides e artigos semelhantes	36.55	44.89	\\r
83026000		0	-Fechos automáticos para portas	36.55	44.89	\\r
83030000		0	Cofres-fortes, portas blindadas e compartimentos para casas-fortes, cofres e caixas de segurança e artefatos semelhantes, de metais comuns.	38.77	47.11	\\r
83040000		0	Classificadores, fichários, caixas de classificação, porta-cópias, porta-canetas, porta-carimbos e artefatos semelhantes, de escritório, de metais comuns, excluindo os móveis de escritório da posição 94.03.	36.55	44.89	\\r
83051000		0	-Ferragens para encadernação de folhas móveis ou para classificadores	36.55	44.89	\\r
83052000		0	-Grampos apresentados em barretas	36.55	44.89	\\r
83059000		0	-Outros, incluindo as partes	36.55	44.89	\\r
83061000		0	-Sinos, campainhas, gongos e artefatos semelhantes	37.46	45.80	\\r
83061000	01	0	Ex 01 - Sinos e carrilhões	31.45	39.79	\\r
83062100		0	--Prateados, dourados ou platinados	38.77	47.11	\\r
83062900		0	--Outros	38.77	47.11	\\r
83063000		0	-Molduras para fotografias, gravuras ou semelhantes. espelhos	37.46	45.80	\\r
83071010		0	Dos tipos utilizados na explotação submarina de petróleo ou gás, constituídos por camadas flexíveis de aço e camadas de plástico, de diâmetro interior superior a 254 mm	34.12	35.82	\\r
83071090		0	Outros	34.12	42.46	\\r
83079000		0	-De outros metais comuns	34.12	42.46	\\r
83081000		0	-Grampos, colchetes e ilhoses	30.75	39.09	\\r
83082000		0	-Rebites tubulares ou de haste fendida	35.85	44.19	\\r
83089010		0	Fivelas	30.75	39.09	\\r
83089020		0	Contas e lantejoulas	36.76	45.10	\\r
83089090		0	Outros	35.85	44.19	\\r
83089090	01	0	Ex 01 - Partes	30.75	39.09	\\r
83091000		0	-Cápsulas de coroa	31.45	39.79	\\r
83099000		0	-Outros	31.45	39.79	\\r
83100000		0	Placas indicadoras, placas sinalizadoras, placas-endereços e placas semelhantes, números, letras e sinais diversos, de metais comuns, exceto os da posição 94.05.	31.45	39.79	\\r
83100000	01	0	Ex 01 - Triângulo de segurança	38.77	47.11	\\r
83111000		0	-Eletrodos revestidos exteriormente para soldar a arco, de metais comuns	36.55	44.89	\\r
83112000		0	-Fios revestidos interiormente para soldar a arco, de metais comuns	36.55	44.89	\\r
83113000		0	-Varetas revestidas exteriormente e fios revestidos interiormente, para soldar à chama, de metais comuns	36.55	44.89	\\r
83119000		0	-Outros	36.55	44.89	\\r
84011000		0	-Reatores nucleares	30.12	37.61	\\r
84012000		0	-Máquinas e aparelhos para a separação de isótopos, e suas partes	30.12	37.61	\\r
84013000		0	-Elementos combustíveis (cartuchos) não irradiados	27.45	34.94	\\r
84014000		0	-Partes de reatores nucleares	30.12	37.61	\\r
84021100		0	--Caldeiras aquatubulares com produção de vapor superior a 45 t por hora	27.45	34.94	\\r
84021200		0	--Caldeiras aquatubulares com produção de vapor não superior a 45 t por hora	27.45	34.94	\\r
84021900		0	--Outras caldeiras para produção de vapor, incluindo as caldeiras mistas	27.45	34.94	\\r
84022000		0	-Caldeiras denominadas “de água superaquecida”	27.45	34.94	\\r
84029000		0	-Partes	27.45	34.94	\\r
84031010		0	Com capacidade inferior ou igual a 200.000 kcal/hora	27.45	36.61	\\r
84031090		0	Outras	27.45	34.94	\\r
84039000		0	-Partes	30.12	37.61	\\r
84041010		0	Da posição 84.02	27.45	34.94	\\r
84041020		0	Da posição 84.03	27.45	34.94	\\r
84042000		0	-Condensadores para máquinas a vapor	27.45	34.94	\\r
84049010		0	De aparelhos auxiliares para caldeiras da posição 84.02	30.12	37.61	\\r
84049090		0	Outras	30.12	37.61	\\r
84051000		0	-Geradores de gás de ar (gás pobre) ou de gás de água, com ou sem depuradores. geradores de acetileno e geradores semelhantes de gás, operados a água, com ou sem depuradores	27.45	34.94	\\r
84059000		0	-Partes	30.12	37.61	\\r
84061000		0	-Turbinas para propulsão de embarcações	30.12	37.61	\\r
84068100		0	--De potência superior a 40 MW	27.45	34.94	\\r
84068200		0	--De potência não superior a 40 MW	27.45	34.94	\\r
84069011		0	De turbinas a reação, de múltiplos estágios	30.12	30.72	\\r
84069019		0	Outras	30.12	37.61	\\r
84069021		0	Fixas (de estator)	30.12	30.72	\\r
84069029		0	Outras	30.12	37.61	\\r
84069090		0	Outras	27.45	34.94	\\r
84071000		0	-Motores para aviação	30.12	30.72	\\r
84072110		0	Monocilíndricos	30.12	37.61	\\r
84072190		0	Outros	30.12	37.61	\\r
84072910		0	Monocilíndricos	30.12	37.61	\\r
84072990		0	Outros	30.12	37.61	\\r
84073110		0	Monocilíndricos	30.12	39.28	\\r
84073190		0	Outros	30.12	39.28	\\r
84073200		0	--De cilindrada superior a 50 cm3, mas não superior a 250 cm3	30.12	39.28	\\r
84073310		0	Monocilíndricos	30.12	39.28	\\r
84073390		0	Outros	30.12	39.28	\\r
84073410		0	Monocilíndricos	30.12	39.28	\\r
84073490		0	Outros	30.12	39.28	\\r
84079000		0	-Outros motores	27.45	34.94	\\r
84081010		0	Do tipo fora-de-borda	30.12	37.61	\\r
84081090		0	Outros	30.12	37.61	\\r
84082010		0	De cilindrada inferior ou igual a 1.500 cm3	30.12	39.28	\\r
84082020		0	De cilindrada superior a 1.500 cm3, mas inferior ou igual a 2.500 cm3	30.12	39.28	\\r
84082020	01	0	Ex 01 - De ônibus ou caminhões, de potência igual ou superior a 125HP	29.61	38.77	\\r
84082020	02	0	Ex 02 - De tratores agrícolas, com até 2.600 rpm em potência máxima	29.61	38.77	\\r
84082030		0	De cilindrada superior a 2.500 cm3, mas inferior ou igual a 3.500 cm3	30.12	39.28	\\r
84082030	01	0	Ex 01 - De ônibus ou caminhões, de potência igual ou superior a 125HP	29.61	38.77	\\r
84082030	02	0	Ex 02 - De tratores agrícolas, com até 2.600 rpm em potência máxima	29.61	38.77	\\r
84082090		0	Outros	30.12	39.28	\\r
84082090	01	0	Ex 01 - De ônibus ou caminhões, de potência igual ou superior a 125HP	29.61	38.77	\\r
84082090	02	0	Ex 02 - De tratores agrícolas, com até 2.600 rpm em potência máxima	29.61	38.77	\\r
84089010		0	Estacionários, de potência normal ISO superior a 412,5 kW (550 HP), segundo Norma ISO 3046/1	27.45	28.05	\\r
84089090		0	Outros	27.45	34.94	\\r
84091000		0	-De motores para aviação	30.12	30.72	\\r
84099111		0	Bielas	30.12	38.46	\\r
84099112		0	Blocos de cilindros, cabeçotes e cárteres	30.12	38.46	\\r
84099113		0	Carburadores, com bomba e dispositivo de compensação de nível de combustível incorporados, ambos a membrana, de diâmetro de venturi inferior ou igual a 22,8 mm e peso inferior ou igual a 280 g	30.12	31.82	\\r
84099114		0	Válvulas de admissão ou de escape	30.12	38.46	\\r
84099115		0	Coletores de admissão ou de escape	30.12	38.46	\\r
84099116		0	Anéis de segmento	30.12	38.46	\\r
84099117		0	Guias de válvulas	30.12	38.46	\\r
84099118		0	Outros carburadores	30.12	38.46	\\r
84099120		0	Pistões ou êmbolos	30.12	38.46	\\r
84099130		0	Camisas de cilindro	30.12	38.46	\\r
84099140		0	Injeção eletrônica	34.77	43.11	\\r
84099190		0	Outras	30.12	38.46	\\r
84099912		0	Blocos de cilindros e cárteres	30.12	38.46	\\r
84099912	01	0	Ex 01 - De motores de ônibus ou caminhões, de potência igual ou superior a 125HP	29.61	37.95	\\r
84099914		0	Válvulas de admissão ou de escape	30.12	38.46	\\r
84099915		0	Coletores de admissão ou de escape	30.12	38.46	\\r
84099917		0	Guias de válvulas	30.12	38.46	\\r
84099921		0	Com diâmetro superior ou igual a 200 mm	30.12	31.82	\\r
84099929		0	Outros	30.12	38.46	\\r
84099930		0	Camisas de cilindro	30.12	38.46	\\r
84099941		0	Com peso superior ou igual a 30 kg	30.12	31.82	\\r
84099941	01	0	Ex 01 - De motores de ônibus ou caminhões, de potência igual ou superior a 125HP	29.61	31.31	\\r
84099949		0	Outras	30.12	38.46	\\r
84099949	01	0	Ex 01 - De motores de ônibus ou caminhões, de potência igual ou superior a 125HP	29.61	37.95	\\r
84099951		0	Com diâmetro superior ou igual a 200 mm	30.12	31.82	\\r
84099951	01	0	Ex 01 - De motores de ônibus ou caminhões, de potência igual ou superior a 125HP	29.61	31.31	\\r
84099959		0	Outros	30.12	38.46	\\r
84099959	01	0	Ex 01 - De motores de ônibus ou caminhões, de potência igual ou superior a 125HP	29.61	37.95	\\r
84099961		0	Com diâmetro superior ou igual a 20 mm	30.12	31.82	\\r
84099969		0	Outros	30.12	38.46	\\r
84099971		0	Com diâmetro superior ou igual a 200 mm	30.12	31.82	\\r
84099979		0	Outros	30.12	38.46	\\r
84099991		0	Camisas de cilindro soldadas a cabeçotes, com diâmetro superior ou igual a 200 mm	30.12	31.82	\\r
84099999		0	Outras	30.12	38.46	\\r
84099999	01	0	Ex 01 - Carcaças de motores de ônibus ou caminhões, de potência igual ou superior a 125HP	29.61	37.95	\\r
84101100		0	--De potência não superior a 1.000 kW	27.45	34.94	\\r
84101200		0	--De potência superior a 1.000 kW, mas não superior a 10.000 kW	27.45	34.94	\\r
84101300		0	--De potência superior a 10.000 kW	27.45	34.94	\\r
84109000		0	-Partes, incluindo os reguladores	27.45	34.94	\\r
84111100		0	--De empuxo não superior a 25 kN	30.12	30.72	\\r
84111200		0	--De empuxo superior a 25 kN	30.12	30.72	\\r
84112100		0	--De potência não superior a 1.100 kW	30.12	30.72	\\r
84112200		0	--De potência superior a 1.100 kW	30.12	30.72	\\r
84118100		0	--De potência não superior a 5.000 kW	27.45	28.05	\\r
84118200		0	--De potência superior a 5.000 kW	30.12	30.72	\\r
84119100		0	--De turborreatores ou de turbopropulsores	30.12	30.72	\\r
84119900		0	--Outras	30.12	30.72	\\r
84121000		0	-Propulsores a reação, excluindo os turborreatores	27.45	28.05	\\r
84122110		0	Cilindros hidráulicos	27.45	34.94	\\r
84122190		0	Outros	27.45	34.94	\\r
84122900		0	--Outros	27.45	34.94	\\r
84123110		0	Cilindros pneumáticos	27.45	34.94	\\r
84123190		0	Outros	27.45	34.94	\\r
84123900		0	--Outros	27.45	34.94	\\r
84128000		0	-Outros	27.45	34.94	\\r
84129010		0	De propulsores a reação	30.12	37.61	\\r
84129020		0	De máquinas a vapor de movimento retilíneo (cilindros)	30.12	37.61	\\r
84129080		0	Outras, de máquinas das subposições 8412.21 ou 8412.31	30.12	37.61	\\r
84129090		0	Outras	30.12	37.61	\\r
84131100		0	--Bombas para distribuição de combustíveis ou lubrificantes, dos tipos utilizados em postos de serviço ou garagens	30.12	37.61	\\r
84131900		0	--Outras	30.12	37.61	\\r
84132000		0	-Bombas manuais, exceto das subposições 8413.11 ou 8413.19	30.12	39.28	\\r
84133010		0	Para gasolina ou álcool	30.12	39.28	\\r
84133020		0	Injetoras de combustível para motor de ignição por compressão	30.12	39.28	\\r
84133020	01	0	Ex 01 - Em linha , com elementos de injeção de diâmetro igual ou superior a 9,5 mm, para motores de potência igual ou superior a 125HP, próprios para ônibus ou caminhões	29.61	38.77	\\r
84133030		0	Para óleo lubrificante	30.12	39.28	\\r
84133090		0	Outras	30.12	39.28	\\r
84134000		0	-Bombas para concreto	27.45	34.94	\\r
84135010		0	De potência superior a 3,73 kW (5 HP) e inferior ou igual a 447,42 kW (600 HP), excluídas as para oxigênio líquido	27.45	34.94	\\r
84135090		0	Outras	27.45	34.94	\\r
84136011		0	De engrenagem	27.45	34.94	\\r
84136019		0	Outras	27.45	34.94	\\r
84136090		0	Outras	27.45	34.94	\\r
84137010		0	Eletrobombas submersíveis	30.12	37.61	\\r
84137080		0	Outras, de vazão inferior ou igual a 300 l/min	30.12	37.61	\\r
84137090		0	Outras	30.12	37.61	\\r
84138100		0	--Bombas	27.45	34.94	\\r
84138200		0	--Elevadores de líquidos	27.45	34.94	\\r
84139110		0	Hastes de bombeamento, dos tipos utilizados para extração de petróleo	30.12	37.61	\\r
84139190		0	Outras	30.12	37.61	\\r
84139190	01	0	Ex 01 - De bombas injetoras em linha, com elementos de injeção de diâmetro igual ou superior a 9,5 mm, para motores de ignição por compressão de potência igual ou superior a 125HP, próprios para ônibus ou caminhões	29.61	37.10	\\r
84139200		0	--De elevadores de líquidos	30.12	37.61	\\r
84141000		0	-Bombas de vácuo	27.45	34.94	\\r
84142000		0	-Bombas de ar, de mão ou de pé	20.87	30.03	\\r
84143011		0	Com capacidade inferior a 4.700 frigorias/hora	30.12	39.28	\\r
84143019		0	Outros	27.45	28.05	\\r
84143091		0	Com capacidade inferior ou igual a 16.000 frigorias/hora	30.12	39.28	\\r
84143099		0	Outros	27.45	34.94	\\r
84144010		0	De deslocamento alternativo	27.45	34.94	\\r
84144020		0	De parafuso	27.45	34.94	\\r
84144090		0	Outros	27.45	34.94	\\r
84145110		0	De mesa	34.77	44.72	\\r
84145120		0	De teto	34.77	44.72	\\r
84145190		0	Outros	34.77	44.72	\\r
84145910		0	Microventiladores com área de carcaça inferior a 90 cm2	30.12	30.72	\\r
84145990		0	Outros	27.45	34.94	\\r
84146000		0	-Coifas com dimensão horizontal máxima não superior a 120 cm	32.55	42.50	\\r
84146000	01	0	Ex 01 - Do tipo doméstico	34.77	44.72	\\r
84148011		0	Estacionários, de pistão	27.45	34.94	\\r
84148012		0	De parafuso	27.45	34.94	\\r
84148013		0	De lóbulos paralelos (tipo Roots)	27.45	34.94	\\r
84148019		0	Outros	27.45	34.94	\\r
84148021		0	Turboalimentadores de ar, de peso inferior ou igual a 50 kg para motores das posições 84.07 ou 84.08, acionado pelos gases de escapamento dos mesmos	30.12	37.61	\\r
84148022		0	Turboalimentadores de ar, de peso superior a 50 kg para motores das posições 84.07 ou 84.08, acionados pelos gases de escapamento dos mesmos	30.12	37.61	\\r
84148029		0	Outros	27.45	34.94	\\r
84148031		0	De pistão	27.45	34.94	\\r
84148032		0	De parafuso	27.45	34.94	\\r
84148033		0	Centrífugos, de vazão máxima inferior a 22.000 m3/h	27.45	34.94	\\r
84148038		0	Outros compressores centrífugos	27.45	28.05	\\r
84148039		0	Outros	27.45	34.94	\\r
84148090		0	Outros	27.45	34.94	\\r
84149010		0	De bombas	30.12	37.61	\\r
84149020		0	De ventiladores ou coifas aspirantes	30.12	37.61	\\r
84149031		0	Pistões ou êmbolos	30.12	37.61	\\r
84149032		0	Anéis de segmento	30.12	37.61	\\r
84149033		0	Blocos de cilindros, cabeçotes e cárteres	30.12	37.61	\\r
84149034		0	Válvulas	30.12	37.61	\\r
84149039		0	Outras	27.45	34.94	\\r
84151011		0	Do tipo split-system (sistema com elementos separados)	36.80	45.96	\\r
84151011	01	0	Ex 01 - Com capacidade inferior a 7.500 frigorias/hora	42.00	51.16	\\r
84151019		0	Outros	36.80	46.75	\\r
84151090		0	Outros	36.80	44.29	\\r
84152010		0	Com capacidade inferior ou igual a 30.000 frigorias/hora	36.80	45.96	\\r
84152090		0	Outros	36.80	44.29	\\r
84158110		0	Com capacidade inferior ou igual a 30.000 frigorias/hora	36.80	45.96	\\r
84158190		0	Outros	36.80	44.29	\\r
84158210		0	Com capacidade inferior ou igual a 30.000 frigorias/hora	36.80	45.96	\\r
84158290		0	Outros	36.80	44.29	\\r
84158300		0	--Sem dispositivo de refrigeração	36.80	44.29	\\r
84159010		0	Unidades evaporadoras (internas) de aparelho de ar-condicionado do tipo split-system (sistema com elementos separados), com capacidade inferior ou igual a 30.000 frigorias/hora	36.80	45.96	\\r
84159010	01	0	Ex 01 - Com capacidade inferior a 7.500 frigorias/hora	42.00	51.16	\\r
84159020		0	Unidades condensadoras (externas) de aparelho de ar-condicionado do tipo split-system (sistema com elementos separados), com capacidade inferior ou igual a 30.000 frigorias/hora	36.80	45.96	\\r
84159020	01	0	Ex 01 - Com capacidade inferior a 7.500 frigorias/hora	42.00	51.16	\\r
84159090		0	Outras	36.80	44.29	\\r
84161000		0	-Queimadores de combustíveis líquidos	27.45	34.94	\\r
84162010		0	De gases	27.45	34.94	\\r
84162090		0	Outros	27.45	34.94	\\r
84209900		0	--Outras	29.42	36.91	\\r
84163000		0	-Fornalhas automáticas, incluindo as antefornalhas, grelhas mecânicas, descarregadores mecânicos de cinzas e dispositivos semelhantes	27.45	34.94	\\r
84169000		0	-Partes	30.12	37.61	\\r
84171010		0	Fornos industriais para fusão de metais	26.75	34.24	\\r
84171020		0	Fornos industriais para tratamento térmico de metais	26.75	34.24	\\r
84171090		0	Outros	26.75	34.24	\\r
84172000		0	-Fornos de padaria, pastelaria ou para a indústria de bolachas e biscoitos	26.75	34.24	\\r
84178010		0	Fornos industriais para cerâmica	26.75	34.24	\\r
84178020		0	Fornos industriais para fusão de vidro	26.75	27.35	\\r
84178090		0	Outros	26.75	34.24	\\r
84179000		0	-Partes	26.75	34.24	\\r
84181000		0	-Combinações de refrigeradores e congeladores (freezers), munidos de portas exteriores separadas	33.58	42.91	\\r
84181000	01	0	Ex 01 - Próprios para conservação de sangue humano, funcionando com temperatura estável entre 2°C e 6°C	26.75	36.70	\\r
84182100		0	--De compressão	34.01	43.88	\\r
84182900		0	--Outros	32.06	39.44	\\r
84183000		0	-Congeladores (freezers) horizontais tipo arca, de capacidade não superior a 800 l	33.03	41.65	\\r
84183000	01	0	Ex 01 - De capacidade não superior a 400 litros	34.07	44.02	\\r
84184000		0	-Congeladores (freezers) verticais tipo armário, de capacidade não superior a 900 l	33.12	41.86	\\r
84184000	01	0	Ex 01 - De capacidade não superior a 400 litros	34.07	44.02	\\r
84185010		0	Congeladores (freezers)	33.63	40.70	\\r
84185090		0	Outros	33.63	40.70	\\r
84185090	01	0	Ex 01 - Refrigeradores próprios para conservação de sangue humano, funcionando com temperatura estável entre 2°C e 6°C	26.75	34.24	\\r
84186100		0	--Bombas de calor, exceto as máquinas e aparelhos de ar-condicionado da posição 84.15	26.75	34.24	\\r
84186910		0	Máquinas não domésticas para preparação de sorvetes	26.75	34.24	\\r
84186920		0	Resfriadores de leite	26.75	34.24	\\r
84186931		0	De água ou sucos	34.07	43.23	\\r
84186931	01	0	Ex 01 - Bebedouros refrigerados	32.43	42.56	\\r
84186932		0	De bebidas carbonatadas	34.07	43.23	\\r
84186940		0	Grupos frigoríficos de compressão para refrigeração ou para ar-condicionado, com capacidade inferior ou igual a 30.000 frigorias/hora	26.75	35.91	\\r
84186940	01	0	Ex 01 - Para ar-condicionado	36.11	45.27	\\r
84186991		0	Resfriadores de água, de absorção por brometo de lítio	29.84	30.44	\\r
84186999		0	Outros	31.76	37.08	\\r
84186999	01	0	Ex 01 - Máquinas para produção de gelo em embarcações pesqueiras	26.75	32.07	\\r
84186999	02	0	Ex 02 - Grupos de compressão, exceto para ar condicionado, ou de absorção	28.58	33.90	\\r
84186999	03	0	Ex 03 - Máquinas para produção de gelo em cubos ou escamas	28.58	33.90	\\r
84186999	04	0	Ex 04 - Instalações frigoríficas industriais, formadas por elementos não reunidos em corpo único nem montados sobre base comum, com câmara frigorífica de capacidade superior a 30m³	26.75	32.07	\\r
84189100		0	--Móveis concebidos para receber um equipamento para a produção de frio	34.07	42.41	\\r
84189900		0	--Outras	33.12	39.71	\\r
84189900	01	0	Ex 01 - Condensador frigorífico e evaporador frigorífico	29.08	35.67	\\r
84191100		0	--De aquecimento instantâneo, a gás	29.42	39.37	\\r
84191100	01	0	Ex 01 - Para uso doméstico	31.85	41.80	\\r
84191910		0	Aquecedores solares de água	26.75	36.70	\\r
84191990		0	Outros	29.42	39.37	\\r
84192000		0	-Esterilizadores médico-cirúrgicos ou de laboratório	29.42	36.91	\\r
84193100		0	--Para produtos agrícolas	26.75	34.24	\\r
84193200		0	--Para madeiras, pastas de papel, papéis ou cartões	26.75	34.24	\\r
84193900		0	--Outros	26.75	34.24	\\r
84194010		0	De destilação de água	26.75	34.24	\\r
84194020		0	De destilação ou retificação de álcoois e outros fluídos voláteis ou de hidrocarbonetos	26.75	34.24	\\r
84194090		0	Outros	26.75	34.24	\\r
84195010		0	De placas	26.75	34.24	\\r
84195021		0	Metálicos	26.75	34.24	\\r
84195022		0	De grafita	26.75	34.24	\\r
84195029		0	Outros	26.75	34.24	\\r
84195090		0	Outros	26.75	34.24	\\r
84196000		0	-Aparelhos e dispositivos para liquefação do ar ou de outros gases	26.75	34.24	\\r
84198110		0	Autoclaves	26.75	34.24	\\r
84198190		0	Outros	26.75	34.24	\\r
84198911		0	De alimentos, mediante Ultra Alta Temperatura (UHT - Ultra High Temperature) por injeção direta de vapor, com capacidade superior ou igual a 6.500 l/h	26.75	27.35	\\r
84198919		0	Outros	26.75	34.24	\\r
84198919	01	0	Ex 01 - Dos tipos utilizados em bares, restaurantes, cantinas e semelhantes	30.91	38.40	\\r
84198920		0	Estufas	26.75	34.24	\\r
84198930		0	Torrefadores	26.75	34.24	\\r
84198940		0	Evaporadores	26.75	34.24	\\r
84198991		0	Recipiente refrigerador, com dispositivo de circulação de fluido refrigerante	30.91	38.40	\\r
84198999		0	Outros	29.42	36.91	\\r
84198999	01	0	Ex 01 - Torres de resfriamento de água	26.75	34.24	\\r
84199010		0	De aquecedores de água das subposições 8419.11 ou 8419.19	29.42	37.76	\\r
84199020		0	De colunas de destilação ou de retificação	29.42	36.91	\\r
84199031		0	Placa corrugada, de aço inoxidável ou de alumínio, com superfície de troca térmica de área superior a 0,4 m2	29.42	30.02	\\r
84199039		0	Outras	26.75	34.24	\\r
84199040		0	De aparelhos ou dispositivos das subposições 8419.81 ou 8419.89	29.42	36.91	\\r
84199090		0	Outras	29.42	36.91	\\r
84201010		0	Para papel ou cartão	26.75	34.24	\\r
84201090		0	Outros	26.75	34.24	\\r
84209100		0	--Cilindros	29.42	36.91	\\r
84211110		0	Com capacidade de processamento de leite superior ou igual a 30.000 l/h	26.75	27.35	\\r
84211190		0	Outras	26.75	34.24	\\r
84211210		0	Com capacidade, expressa em peso de roupa seca, inferior ou igual a 6 kg	37.26	48.37	\\r
84211290		0	Outros	37.26	45.60	\\r
84211910		0	Centrifugadores para laboratórios de análises, ensaios ou pesquisas científicas	26.75	34.24	\\r
84211990		0	Outros	26.75	33.82	\\r
84211990	01	0	Ex 01 - Centrifugadores para uso doméstico	36.96	44.03	\\r
84212100		0	--Para filtrar ou depurar água	26.75	34.24	\\r
84212200		0	--Para filtrar ou depurar bebidas, exceto água	26.75	34.24	\\r
84212300		0	--Para filtrar óleos minerais nos motores de ignição por centelha ou por compressão	30.91	39.25	\\r
84212300	01	0	Ex 01 - Filtro de óleo lubrificante, não descartável, equipado com elemento filtrante de papel (substituível), para uso em motores de ignição por compressão, de potência igual ou superior a 125HP, próprios para ônibus ou caminhões	28.91	37.25	\\r
84212300	02	0	Ex 02 - Filtro de óleo lubrificante, não descartável, equipado com elemento filtrante de papel (substituível), para uso em motores de ignição por compressão, com até 2.600 rpm em potência máxima, próprios para colheitadeiras ou tratores agrícolas	28.91	37.25	\\r
84212911		0	Capilares	26.75	27.35	\\r
84212919		0	Outros	26.75	27.35	\\r
84212920		0	Aparelho de osmose inversa	26.75	34.24	\\r
84212930		0	Filtros-prensa	26.75	34.24	\\r
84212990		0	Outros	26.75	34.24	\\r
84213100		0	--Filtros de entrada de ar para motores de ignição por centelha ou por compressão	30.91	39.25	\\r
84213910		0	Filtros eletrostáticos	26.75	34.24	\\r
84213920		0	Depuradores por conversão catalítica de gases de escape de veículos	29.42	38.58	\\r
84213930		0	Concentradores de oxigênio por depuração do ar, com capacidade de saída inferior ou igual a 6 l/min	26.75	27.35	\\r
84213990		0	Outros	26.75	34.24	\\r
84219110		0	De secadores de roupa do item 8421.12.10	31.40	40.66	\\r
84219191		0	Tambores rotativos com pratos ou discos separadores, de peso superior a 300 kg	31.40	32.00	\\r
84219199		0	Outras	31.40	39.71	\\r
84219910		0	De aparelhos para filtrar ou depurar gases, da subposição 8421.39	31.40	39.71	\\r
84219920		0	Dos tipos utilizados em linhas de sangue para hemodiálise	31.40	32.00	\\r
84219991		0	Cartuchos de membrana de aparelhos de osmose inversa	31.40	32.00	\\r
84219999		0	Outras	31.40	39.71	\\r
84221100		0	--Do tipo doméstico	34.69	43.23	\\r
84221900		0	--Outras	36.11	43.60	\\r
84221900	01	0	Ex 01 – Com capacidade de lavagem superior a 1000 pratos por hora	26.75	34.24	\\r
84222000		0	-Máquinas e aparelhos para limpar ou secar garrafas ou outros recipientes	26.75	34.24	\\r
84223010		0	Máquinas e aparelhos para encher, fechar, arrolhar, capsular ou rotular garrafas	26.75	34.24	\\r
84223021		0	Para encher caixas ou sacos com pó ou grãos	26.75	34.24	\\r
84223022		0	Para encher e fechar embalagens confeccionadas com papel ou cartão dos subitens 4811.51.22 ou 4811.59.23, mesmo com dispositivo de rotulagem	26.75	27.35	\\r
84223023		0	Para encher e fechar recipientes tubulares flexíveis (bisnagas), com capacidade superior ou igual a 100 unidades por minuto	26.75	27.35	\\r
84223029		0	Outros	26.75	34.24	\\r
84223030		0	Para gaseificar bebidas	26.75	34.24	\\r
84224010		0	Horizontais, próprias para empacotamento de massas alimentícias longas (comprimento superior a 200 mm) em pacotes tipo almofadas (pillow pack), com capacidade de produção superior a 100 pacotes por minuto e controlador lógico programável (CLP)	26.75	27.35	\\r
84224020		0	Automática, para embalar tubos ou barras de metal, em atados de peso inferior ou igual a 2.000 kg e comprimento inferior ou igual a 12 m	26.75	27.35	\\r
84224030		0	De empacotar embalagens confeccionadas com papel ou cartão dos subitens 4811.51.22 ou 4811.59.23 em caixas ou bandejas de papel ou cartão dobráveis, com capacidade superior ou igual a 5.000 embalagens por hora	26.75	27.35	\\r
84224090		0	Outros	26.75	34.24	\\r
84229010		0	De máquinas de lavar louça, de uso doméstico	34.69	41.86	\\r
84229090		0	Outras	29.42	36.91	\\r
84231000		0	-Balanças para pessoas, incluindo as balanças para bebês. balanças de uso doméstico	32.55	42.50	\\r
84231000	01	0	Ex 01 - De uso doméstico	36.80	46.75	\\r
84232000		0	-Básculas de pesagem contínua em transportadores	27.45	34.94	\\r
84233011		0	Com aparelhos periféricos, que constituam unidade funcional	27.45	34.94	\\r
84233019		0	Outras	27.45	34.94	\\r
84233090		0	Outras	27.45	34.94	\\r
84238110		0	De mesa, com dipositivo registrador ou impressor de etiquetas	30.12	37.61	\\r
84238190		0	Outros	30.12	37.61	\\r
84238200		0	--De capacidade superior a 30 kg, mas não superior a 5.000 kg	27.45	34.94	\\r
84238900		0	--Outros	27.45	34.94	\\r
84239010		0	Pesos	32.55	40.89	\\r
84239021		0	De aparelhos ou instrumentos da subposição 8423.10	32.55	40.89	\\r
84239029		0	Outras	32.55	40.04	\\r
84241000		0	-Extintores, mesmo carregados	30.91	39.25	\\r
84242000		0	-Pistolas aerográficas e aparelhos semelhantes	29.42	36.91	\\r
84243010		0	Máquinas e aparelhos de desobstrução de tubulação ou de limpeza, por jato de água	26.75	34.24	\\r
84243020		0	De jato de areia própria para desgaste localizado de peças de vestuário	26.75	27.35	\\r
84243030		0	Perfuradoras por jato de água com pressão de trabalho máxima superior ou igual a 10 MPa	26.75	27.35	\\r
84243090		0	Outros	26.75	34.24	\\r
84248111		0	Aparelhos manuais	26.75	35.09	\\r
84248119		0	Outros	26.75	34.24	\\r
84248121		0	Por aspersão	26.75	34.24	\\r
84248129		0	Outros	26.75	34.24	\\r
84248190		0	Outros	26.75	34.24	\\r
84248910		0	Aparelhos de pulverização constituídos por botão de pressão com bocal (tampa “spray”), válvula do tipo aerossol, junta de estanqueidade (junta de canopla) e tubo de imersão, montados sobre um corpo metálico (canopla), dos tipos utilizados para serem monta	29.42	37.76	\\r
84248920		0	Aparelhos automáticos para projetar lubrificantes sobre pneumáticos, contendo uma estação de secagem por ar pré-aquecido e dispositivos para agarrar e movimentar pneumáticos	29.42	30.02	\\r
84248990		0	Outros	29.42	36.91	\\r
84249010		0	De aparelhos da subposição 8424.10 ou do subitem 8424.81.11	29.42	36.91	\\r
84249090		0	Outras	29.42	36.91	\\r
84251100		0	--De motor elétrico	27.45	34.94	\\r
84251910		0	Talhas, cadernais e moitões, manuais	27.45	35.79	\\r
84251990		0	Outros	27.45	34.94	\\r
84253110		0	Com capacidade inferior ou igual a 100 t	27.45	34.94	\\r
84253190		0	Outros	27.45	34.94	\\r
84253910		0	Com capacidade inferior ou igual a 100 t	27.45	34.94	\\r
84253990		0	Outros	27.45	34.94	\\r
84254100		0	--Elevadores fixos de veículos, para garagens (oficinas)	27.45	34.94	\\r
84254200		0	--Outros macacos, hidráulicos	27.45	36.61	\\r
84254910		0	Manuais	30.12	38.46	\\r
84254990		0	Outros	30.12	37.61	\\r
84261100		0	--Pontes e vigas, rolantes, de suportes fixos	27.45	34.94	\\r
84261200		0	--Pórticos móveis de pneumáticos e carros-pórticos	27.45	34.94	\\r
84261900		0	--Outros	27.45	34.94	\\r
84262000		0	-Guindastes de torre	27.45	34.94	\\r
84263000		0	-Guindastes de pórtico	27.45	34.94	\\r
84264110		0	Com deslocamento em sentido longitudinal, transversal e diagonal (tipo caranguejo) com capacidade de carga superior ou igual a 60 t	27.45	28.05	\\r
84264190		0	Outros	27.45	34.94	\\r
84264910		0	De lagartas, com capacidade de elevação superior ou igual a 70 t	27.45	28.05	\\r
84264990		0	Outros	27.45	34.94	\\r
84269100		0	--Próprios para serem montados em veículos rodoviários	27.45	34.94	\\r
84269900		0	--Outros	27.45	34.94	\\r
84271011		0	De capacidade de carga superior a 6,5 t	27.45	34.94	\\r
84271019		0	Outras	26.75	34.24	\\r
84271090		0	Outros	27.45	34.94	\\r
84272010		0	Empilhadeiras com capacidade de carga superior a 6,5 t	26.75	34.24	\\r
84272090		0	Outros	26.75	34.24	\\r
84279000		0	-Outros	27.45	34.94	\\r
84281000		0	-Elevadores e monta-cargas	26.75	34.24	\\r
84282010		0	Transportadores tubulares (transvasadores) móveis, acionados com motor de potência superior a 90 kW (120 HP)	27.45	34.94	\\r
84282090		0	Outros	27.45	34.94	\\r
84283100		0	--Especialmente concebidos para uso subterrâneo	27.45	34.94	\\r
84283200		0	--Outros, de caçamba	27.45	34.94	\\r
84283300		0	--Outros, de tira ou correia	27.45	34.94	\\r
84283910		0	De correntes	27.45	34.94	\\r
84283920		0	De rolos motores	27.45	34.94	\\r
84283930		0	De pinças laterais, do tipo dos utilizados para o transporte de jornais	27.45	28.05	\\r
84283990		0	Outros	27.45	34.94	\\r
84284000		0	-Escadas e tapetes, rolantes	31.85	39.34	\\r
84286000		0	-Teleféricos (incluindo as telecadeiras e os telesquis). mecanismos de tração para funiculares	27.45	34.94	\\r
84286000	01	0	Ex 01 - Telecadeiras e telesquis	32.55	40.04	\\r
84289010		0	Do tipo dos utilizados para desembarque de botes salva-vidas, motorizados ou providos de dispositivo de compensação de inclinação	27.45	34.94	\\r
84289020		0	Transportadores-elevadores (transelevadores) automáticos, de deslocamento horizontal sobre guias	27.45	28.05	\\r
84289030		0	Máquina para formação de pilhas de jornais, dispostos em sentido alternado, de capacidade superior ou igual a 80.000 exemplares/h	27.45	28.05	\\r
84289090		0	Outros	27.45	34.94	\\r
84291110		0	De potência no volante superior ou igual a 387,76 kW (520 HP)	27.45	28.05	\\r
84291190		0	Outros	26.75	32.45	\\r
84291910		0	Bulldozers de potência no volante superior ou igual a 234,90 kW (315 HP)	27.45	28.05	\\r
84291990		0	Outros	27.45	33.15	\\r
84292010		0	Motoniveladores articulados, de potência no volante superior ou igual a 205,07 kW (275 HP)	27.45	28.05	\\r
84292090		0	Outros	26.75	34.24	\\r
84293000		0	-Raspo-transportadores (scrapers)	27.45	33.15	\\r
84294000		0	-Compactadores e rolos ou cilindros compressores	26.75	34.24	\\r
84295111		0	Do tipo das utilizadas em minas subterrâneas	27.45	28.05	\\r
84295119		0	Outras	27.45	34.94	\\r
84295121		0	De potência no volante superior ou igual a 454,13 kW (609 HP)	27.45	28.05	\\r
84295129		0	Outras	27.45	34.94	\\r
84295191		0	De potência no volante superior ou igual a 297,5 kW (399 HP)	26.75	27.35	\\r
84295192		0	De potência no volante inferior ou igual a 43,99 kW (59 HP)	26.75	27.35	\\r
84295199		0	Outras	26.75	34.24	\\r
84295211		0	De potência no volante superior ou igual a 484,7 kW (650 HP)	27.45	28.05	\\r
84295212		0	De potência no volante inferior ou igual a 40,3 kW (54 HP)	27.45	28.05	\\r
84295219		0	Outras	27.45	34.94	\\r
84295220		0	Infraestruturas motoras, próprias para receber equipamentos das subposições 8430.49, 8430.61 ou 8430.69, mesmo com dispositivo de deslocamento sobre trilhos	27.45	28.05	\\r
84295290		0	Outras	26.75	34.24	\\r
84295900		0	--Outros	26.75	34.24	\\r
84301000		0	-Bate-estacas e arranca-estacas	27.45	34.94	\\r
84302000		0	-Limpa-neves	30.12	30.72	\\r
84303110		0	Cortadores de carvão ou de rocha	27.45	28.05	\\r
84303190		0	Outros	27.45	33.15	\\r
84303910		0	Cortadores de carvão ou de rocha	27.45	28.05	\\r
84303990		0	Outras	27.45	33.15	\\r
84304110		0	Perfuratriz de percussão	27.45	34.94	\\r
84304120		0	Perfuratriz rotativa	27.45	34.94	\\r
84304130		0	Máquinas de sondagem, rotativas	27.45	28.05	\\r
84304190		0	Outras	27.45	34.94	\\r
84304910		0	Perfuratriz de percussão	27.45	33.15	\\r
84304920		0	Máquinas de sondagem, rotativas	27.45	28.05	\\r
84304990		0	Outras	27.45	33.15	\\r
84305000		0	-Outras máquinas e aparelhos, autopropulsados	27.45	33.15	\\r
84306100		0	--Máquinas de comprimir ou de compactar	27.45	34.94	\\r
84306911		0	Com capacidade de carga superior a 4 m3	27.45	28.05	\\r
84306919		0	Outros	27.45	34.94	\\r
84306990		0	Outros	27.45	34.94	\\r
84311010		0	Do item 8425.19.10 ou das subposições 8425.39, 8425.42 ou 8425.49	30.12	38.46	\\r
84311090		0	Outras	30.12	37.61	\\r
84312011		0	Autopropulsadas	30.12	37.61	\\r
84312019		0	De outras empilhadeiras	30.12	37.61	\\r
84312090		0	Outras	30.12	37.61	\\r
84313110		0	De elevadores	29.42	36.91	\\r
84313190		0	Outras	29.42	36.91	\\r
84313900		0	--Outras	27.45	34.94	\\r
84314100		0	--Caçambas, mesmo de mandíbulas, pás, ganchos e tenazes	30.12	37.61	\\r
84314200		0	--Lâminas para bulldozers ou angledozers	30.12	37.61	\\r
84314310		0	De máquinas de sondagem rotativas	30.12	30.72	\\r
84314390		0	Outras	30.12	37.61	\\r
84314910		0	De máquinas ou aparelhos da posição 84.26	30.12	37.61	\\r
84314921		0	Cabinas	30.12	35.82	\\r
84314922		0	Lagartas	30.12	37.61	\\r
84314929		0	Outras	30.12	30.72	\\r
84321000		0	-Arados e charruas	26.75	34.24	\\r
84322100		0	--Grades de discos	26.75	34.24	\\r
84322900		0	--Outros	26.75	34.24	\\r
84323010		0	Semeadores-adubadores	26.75	34.24	\\r
84323090		0	Outros	26.75	34.24	\\r
84324000		0	-Espalhadores de estrume e distribuidores de adubos (fertilizantes)	26.75	34.24	\\r
84328000		0	-Outras máquinas e aparelhos	26.75	34.24	\\r
84328000	01	0	Ex 01- Rolos para gramados	29.42	36.91	\\r
84329000		0	-Partes	29.42	36.91	\\r
84331100		0	--Motorizados, cujo dispositivo de corte gira num plano horizontal	30.12	39.28	\\r
84331900		0	--Outros	30.12	39.28	\\r
84332010		0	Com dispositivo de acondicionamento em fileiras constituído por rotor de dedos e pente	27.45	34.94	\\r
84332090		0	Outras	26.75	34.24	\\r
84333000		0	-Outras máquinas e aparelhos para colher e dispor o feno	27.45	34.94	\\r
84334000		0	-Enfardadeiras de palha ou de forragem, incluindo as enfardadeiras-apanhadeiras	27.45	34.94	\\r
84335100		0	--Colheitadeiras combinadas com debulhadoras	26.75	34.24	\\r
84335200		0	--Outras máquinas e aparelhos para debulha	27.45	34.94	\\r
84335300		0	--Máquinas para colheita de raízes ou tubérculos	27.45	34.94	\\r
84335911		0	Com capacidade para trabalhar até dois sulcos de colheita e potência no volante inferior ou igual a 59,7 kW (80 HP)	27.45	34.94	\\r
84335919		0	Outras	27.45	28.05	\\r
84335990		0	Outros	26.75	34.24	\\r
84336010		0	Selecionadores de frutas	27.45	34.94	\\r
84336021		0	Com capacidade superior ou igual a 36.000 ovos por hora	27.45	28.05	\\r
84336029		0	Outras	27.45	34.94	\\r
84336090		0	Outras	27.45	34.94	\\r
84339010		0	De cortadores de grama	30.12	38.46	\\r
84339090		0	Outras	29.42	36.91	\\r
84339090	01	0	Ex 01 - De colheitadeiras	28.91	36.40	\\r
84341000		0	-Máquinas de ordenhar	26.75	34.24	\\r
84342010		0	Para tratamento do leite	26.75	34.24	\\r
84342090		0	Outros	26.75	34.24	\\r
84349000		0	-Partes	29.42	36.91	\\r
84351000		0	-Máquinas e aparelhos	26.75	34.24	\\r
84359000		0	-Partes	29.42	36.91	\\r
84361000		0	-Máquinas e aparelhos para preparação de alimentos ou rações para animais	26.75	34.24	\\r
84362100		0	--Chocadeiras e criadeiras	26.75	34.24	\\r
84362900		0	--Outros	26.75	34.24	\\r
84368000		0	-Outras máquinas e aparelhos	26.75	34.24	\\r
84369100		0	--De máquinas ou aparelhos para avicultura	29.42	36.91	\\r
84369900		0	--Outras	29.42	36.91	\\r
84371000		0	-Máquinas para limpeza, seleção ou peneiração de grãos ou de produtos hortícolas secos	26.75	34.24	\\r
84378010		0	Para trituração ou moagem de grãos	26.75	34.24	\\r
84378090		0	Outros	26.75	34.24	\\r
84379000		0	-Partes	29.42	36.91	\\r
84381000		0	-Máquinas e aparelhos para as indústrias de panificação, pastelaria, bolachas e biscoitos e de massas alimentícias	26.75	34.24	\\r
84382011		0	Para fabricar bombons de chocolate por moldagem, de capacidade de produção superior ou igual a 150 kg/h	26.75	27.35	\\r
84382019		0	Outros	26.75	34.24	\\r
84382090		0	Outros	26.75	34.24	\\r
84383000		0	-Máquinas e aparelhos para a indústria de açúcar	26.75	34.24	\\r
84384000		0	-Máquinas e aparelhos para a indústria cervejeira	26.75	34.24	\\r
84385000		0	-Máquinas e aparelhos para preparação de carnes	26.75	34.24	\\r
84386000		0	-Máquinas e aparelhos para preparação de frutas ou de produtos hortícolas	26.75	34.24	\\r
84388010		0	Máquinas para extração de óleo essencial de cítricos	26.75	34.24	\\r
84388020		0	Automática, para descabeçar, cortar a cauda e eviscerar peixes, com capacidade superior a 350 unidades por minuto	26.75	27.35	\\r
84388090		0	Outros	26.75	34.24	\\r
84389000		0	-Partes	29.42	36.91	\\r
84391010		0	Para tratamento preliminar das matérias primas	26.75	34.24	\\r
84391020		0	Classificadoras e classificadoras-depuradoras de pasta	26.75	34.24	\\r
84391030		0	Refinadoras	26.75	34.24	\\r
84391090		0	Outros	26.75	34.24	\\r
84392000		0	-Máquinas e aparelhos para fabricação de papel ou cartão	26.75	34.24	\\r
84393010		0	Bobinadoras-esticadoras	26.75	34.24	\\r
84393020		0	Para impregnar	26.75	34.24	\\r
84393030		0	Para ondular	26.75	34.24	\\r
84393090		0	Outros	26.75	34.24	\\r
84399100		0	--De máquinas ou aparelhos para fabricação de pasta de matérias fibrosas celulósicas	29.42	36.91	\\r
84399910		0	Rolos, corrugadores ou de pressão, de máquinas para ondular, com largura útil superior ou igual a 2.500 mm	29.42	30.02	\\r
84399990		0	Outras	29.42	36.91	\\r
84401011		0	Com alimentação automática	26.75	27.35	\\r
84401019		0	Outros	26.75	34.24	\\r
84401020		0	Máquinas para fabricar capas de papelão, com dispositivo de colagem e capacidade de produção superior a 60 unidades por minuto	26.75	27.35	\\r
84401090		0	Outros	26.75	34.24	\\r
84409000		0	-Partes	29.42	36.91	\\r
84411010		0	Cortadeiras bobinadoras com velocidade de bobinado superior a 2.000 m/min	26.75	27.35	\\r
84411090		0	Outras	26.75	34.24	\\r
84412000		0	-Máquinas para fabricação de sacos de quaisquer dimensões ou de envelopes	26.75	34.24	\\r
84413010		0	De dobrar e colar, para fabricação de caixas	26.75	34.24	\\r
84413090		0	Outras	26.75	34.24	\\r
84414000		0	-Máquinas de moldar artigos de pasta de papel, papel ou cartão	26.75	34.24	\\r
84418000		0	-Outras máquinas e aparelhos	26.75	32.45	\\r
84419000		0	-Partes	29.42	36.91	\\r
84423010		0	De compor por processo fotográfico	26.75	32.45	\\r
84423020		0	De compor caracteres tipográficos por outros processos, mesmo com dispositivo de fundir	26.75	27.35	\\r
84423090		0	Outros	26.75	34.24	\\r
84424010		0	De máquinas do item 8442.30.10	29.42	35.12	\\r
84424020		0	De máquinas do item 8442.30.20	29.42	30.02	\\r
84424090		0	Outras	29.42	36.91	\\r
84425000		0	-Clichês, blocos, cilindros e outros elementos de impressão. pedras litográficas, blocos, placas e cilindros, preparados para impressão (por exemplo, aplainados, granulados ou polidos)	29.42	36.91	\\r
84431110		0	Para impressão multicolor de jornais, de largura superior ou igual a 900 mm, com unidades de impressão em configuração torre e dispositivos automáticos de emendar bobinas	26.75	27.35	\\r
84431190		0	Outros	26.75	34.24	\\r
84431200		0	--Máquinas e aparelhos de impressão, por ofsete, dos tipos utilizados em escritórios, alimentados por folhas em que um lado não seja superior a 22 cm e que o outro não seja superior a 36 cm, quando não dobradas	26.75	34.24	\\r
84431310		0	Para impressão multicolor de recipientes de matérias plásticas, cilíndricos, cônicos ou de faces planas	26.75	27.35	\\r
84431321		0	Com velocidade de impressão superior ou igual a 12.000 folhas por hora	26.75	27.35	\\r
84431329		0	Outros	26.75	34.24	\\r
84431390		0	Outros	26.75	34.24	\\r
84431400		0	--Máquinas e aparelhos de impressão, tipográficos, alimentados por bobinas, excluindo as máquinas e aparelhos flexográficos	26.75	27.35	\\r
84431500		0	--Máquinas e aparelhos de impressão, tipográficos, não alimentados por bobinas, excluindo as máquinas e aparelhos flexográficos	26.75	34.24	\\r
84431600		0	--Máquinas e aparelhos de impressão, flexográficos	26.75	34.24	\\r
84431710		0	Rotativas para heliogravura	26.75	34.24	\\r
84431790		0	Outros	26.75	34.24	\\r
84431910		0	Para serigrafia	26.75	34.24	\\r
84431990		0	Outros	26.75	34.24	\\r
84433111		0	De jato de tinta líquida, com largura de impressão inferior ou igual a 420 mm	35.17	42.68	\\r
84433112		0	De transferência térmica de cera sólida (por exemplo, solid ink e dye sublimation)	35.17	35.77	\\r
84433113		0	A laser, LED (Diodos Emissores de Luz) ou LCS (Sistema de Cristal Líquido), monocromáticas, com largura de impressão inferior ou igual a 280 mm	35.17	42.68	\\r
84433114		0	A laser, LED (Diodos Emissores de Luz) ou LCS (Sistema de Cristal Líquido), monocromáticas, com largura de impressão superior a 280 mm e inferior ou igual a 420 mm	35.17	35.77	\\r
84433115		0	A laser, LED (Diodos Emissores de Luz) ou LCS (Sistema de Cristal Líquido), policromáticas	35.17	35.77	\\r
84433116		0	Outras, com largura de impressão superior a 420 mm	35.17	35.77	\\r
84433119		0	Outras	35.17	42.68	\\r
84433191		0	Com impressão por sistema térmico	35.17	42.68	\\r
84433199		0	Outras	35.17	35.77	\\r
84433221		0	De linha	33.97	34.57	\\r
84433222		0	De caracteres Braille	17.50	18.10	\\r
84433223		0	Outras matriciais (por pontos)	33.97	42.20	\\r
84433229		0	Outras	33.97	42.20	\\r
84433231		0	De jato de tinta líquida, com largura de impressão inferior ou igual a 420 mm	33.97	42.20	\\r
84433232		0	De transferência térmica de cera sólida (por exemplo, solid ink e dye sublimation)	33.97	34.57	\\r
84433233		0	A laser, LED (Diodos Emissores de Luz) ou LCS (Sistema de Cristal Líquido), monocromáticas, com largura de impressão inferior ou igual a 280 mm	33.97	40.49	\\r
84433234		0	A laser, LED (Diodos Emissores de Luz) ou LCS (Sistema de Cristal Líquido), monocromáticas, com largura de impressão superior a 280 mm e inferior ou igual a 420 mm	33.97	34.57	\\r
84433235		0	A laser, LED (Diodos Emissores de Luz) ou LCS (Sistema de Cristal Líquido), policromáticas, com velocidade de impressão inferior ou igual a 20 páginas por minuto (ppm)	33.97	34.57	\\r
84433236		0	A laser, LED (Diodos Emissores de Luz) ou LCS (Sistema de Cristal Líquido), policromáticas, com velocidade de impressão superior a 20 páginas por minuto (ppm)	33.97	34.57	\\r
84471200		0	--Com cilindro de diâmetro superior a 165 mm	26.75	34.24	\\r
84433237		0	Térmicas, dos tipos utilizados em impressão de imagens para diagnóstico médico em folhas revestidas com camada termossensível	33.97	34.57	\\r
84433238		0	Outras, com largura de impressão superior a 420 mm	33.97	34.57	\\r
84433239		0	Outras	33.97	42.20	\\r
84433240		0	Outras impressoras alimentadas por folhas	33.97	34.57	\\r
84433251		0	Por meio de penas	33.97	40.49	\\r
84433252		0	Outros, com largura de impressão superior a 580 mm	33.97	34.57	\\r
84433259		0	Outros	33.97	42.20	\\r
84433291		0	Impressoras de código de barras postais, tipo 3 em 5, a jato de tinta fluorescente, com velocidade de até 4,5 m/s e passo de 1,4 mm	33.97	34.57	\\r
84433299		0	Outras	33.97	42.20	\\r
84433910		0	Máquinas de impressão por jato de tinta	26.75	34.24	\\r
84433921		0	De reprodução da imagem do original sobre a cópia por meio de um suporte intermediário (processo indireto), monocromáticas, para cópias de superfície inferior ou igual a 1 m2, com velocidade inferior a 100 cópias por minuto	36.11	43.60	\\r
84433928		0	Outras, por processo indireto	36.11	36.71	\\r
84433929		0	Outras	36.11	43.60	\\r
84433930		0	Outras máquinas copiadoras	36.11	43.60	\\r
84433990		0	Outros	36.11	43.60	\\r
84439110		0	Partes de máquinas e aparelhos da subposição 8443.12	29.42	36.91	\\r
84439191		0	Dobradoras	26.75	34.24	\\r
84439192		0	Numeradores automáticos	26.75	34.24	\\r
84439199		0	Outros	26.75	34.24	\\r
84439911		0	Mecanismos de impressão, mesmo sem cabeça de impressão incorporada	32.02	38.83	\\r
84439912		0	Cabeças de impressão	32.02	32.62	\\r
84439919		0	Outros	32.02	36.91	\\r
84439921		0	Mecanismos de impressão, mesmo sem cabeça de impressão incorporada	32.02	36.91	\\r
84439922		0	Cabeças de impressão	29.51	30.11	\\r
84439923		0	Cartuchos de tinta	29.51	30.11	\\r
84439929		0	Outros	32.02	36.91	\\r
84439931		0	Mecanismos de impressão, mesmo sem cilindro fotossensível incorporado	29.51	30.11	\\r
84439932		0	Cilindros recobertos de matéria semicondutora fotoelétrica	29.51	30.11	\\r
84439933		0	Cartuchos de revelador (toners)	29.51	30.11	\\r
84439939		0	Outros	32.02	36.91	\\r
84439941		0	Mecanismos de impressão, mesmo sem cabeça de impressão incorporada	32.02	36.91	\\r
84439942		0	Cabeças de impressão	29.51	30.11	\\r
84439949		0	Outros	32.02	36.91	\\r
84439950		0	Outros mecanismos de impressão, suas partes e acessórios	32.02	36.91	\\r
84439960		0	Circuitos impressos com componentes elétricos ou eletrônicos, montados	34.31	41.12	\\r
84439970		0	Bandejas e gavetas, suas partes e acessórios	32.02	36.91	\\r
84439980		0	Mecanismos de alimentação ou de triagem de papéis ou documentos, suas partes e acessórios	32.02	36.91	\\r
84439990		0	Outros	32.02	36.91	\\r
84440010		0	Para extrudar	26.75	34.24	\\r
84440020		0	Para corte ou ruptura de fibras	26.75	27.35	\\r
84440090		0	Outras	26.75	27.35	\\r
84451110		0	Para lã	26.75	27.35	\\r
84451120		0	Para fibras do Capítulo 53	26.75	27.35	\\r
84451190		0	Outras	26.75	34.24	\\r
84451200		0	--Penteadoras	26.75	27.35	\\r
84451300		0	--Bancas de estiramento (bancas de fusos)	26.75	27.35	\\r
84451910		0	Máquinas para a preparação da seda	26.75	27.35	\\r
84451921		0	Para recuperação de cordas, fios, trapos ou qualquer outro desperdício, transformando-os em fibras adequadas para cardagem	26.75	34.24	\\r
84451922		0	Descaroçadeiras e deslintadeiras de algodão	26.75	34.24	\\r
84451923		0	Para desengordurar, lavar, alvejar ou tingir fibras têxteis em massa ou rama	26.75	34.24	\\r
84451924		0	Abridoras de fibras de lã	26.75	27.35	\\r
84451925		0	Abridoras de fibras do Capítulo 53	26.75	27.35	\\r
84451926		0	Máquinas de carbonizar a lã	26.75	27.35	\\r
84451927		0	Para estirar a lã	26.75	27.35	\\r
84451929		0	Outras	26.75	34.24	\\r
84452000		0	-Máquinas para fiação de matérias têxteis	26.75	27.35	\\r
84453010		0	Retorcedeiras	26.75	27.35	\\r
84453090		0	Outras	26.75	34.24	\\r
84454011		0	Bobinadeiras de trama (espuladeiras)	26.75	27.35	\\r
84454012		0	Para fios elastanos	26.75	27.35	\\r
84454018		0	Outras, com atador automático	26.75	27.35	\\r
84454019		0	Outras	26.75	34.24	\\r
84454021		0	Com velocidade de bobinado superior ou igual a 4.000 m/min	26.75	27.35	\\r
84454029		0	Outras	26.75	34.24	\\r
84454031		0	Com controle de comprimento ou peso e atador automático	26.75	27.35	\\r
84454039		0	Outras	26.75	34.24	\\r
84454040		0	Noveleiras automáticas	26.75	27.35	\\r
84454090		0	Outras	26.75	34.24	\\r
84459010		0	Urdideiras	26.75	34.24	\\r
84459020		0	Passadeiras para liço e pente	26.75	27.35	\\r
84459030		0	Para amarrar urdideiras	26.75	34.24	\\r
84459040		0	Automáticas, para colocar lamelas	26.75	27.35	\\r
84459090		0	Outras	26.75	34.24	\\r
84461010		0	Com mecanismo Jacquard	26.75	27.35	\\r
84461090		0	Outros	26.75	34.24	\\r
84462100		0	--A motor	26.75	34.24	\\r
84462900		0	--Outros	26.75	34.24	\\r
84463010		0	A jato de ar	26.75	27.35	\\r
84463020		0	A jato de água	26.75	27.35	\\r
84463030		0	De projétil	26.75	27.35	\\r
84463040		0	De pinças	26.75	27.35	\\r
84463090		0	Outros	26.75	34.24	\\r
84471100		0	--Com cilindro de diâmetro não superior a 165 mm	26.75	27.35	\\r
84522190		0	Outras	27.45	28.05	\\r
84472010		0	Teares manuais	26.75	36.70	\\r
84472021		0	Para fabricação de malhas de urdidura	26.75	27.35	\\r
84472029		0	Outros	26.75	34.24	\\r
84472030		0	Máquinas de costura por entrelaçamento (couture-tricotage)	26.75	34.24	\\r
84479010		0	Máquinas para fabricação de redes, tules ou filós	26.75	27.35	\\r
84479020		0	Máquinas automáticas para bordar	26.75	27.35	\\r
84479090		0	Outras	26.75	34.24	\\r
84481110		0	Ratieras	26.75	34.24	\\r
84481120		0	Mecanismos Jacquard	26.75	27.35	\\r
84481190		0	Outros	26.75	34.24	\\r
84481900		0	--Outros	29.42	36.91	\\r
84482010		0	Fieiras para a extrusão	29.42	30.02	\\r
84482020		0	Outras partes e acessórios de máquinas para a extrusão	29.42	36.91	\\r
84482030		0	De máquinas para corte ou ruptura de fibras	29.42	30.02	\\r
84482090		0	Outras	29.42	30.02	\\r
84483100		0	--Guarnições de cardas	29.42	36.91	\\r
84483211		0	Chapéus (flats)	29.42	36.91	\\r
84483219		0	Outras	29.42	36.91	\\r
84483220		0	De penteadoras	29.42	30.02	\\r
84483230		0	De bancas de estiramento (bancas de fusos)	29.42	36.91	\\r
84483240		0	De máquinas para a preparação da seda	29.42	30.02	\\r
84483250		0	De máquinas para carbonizar lã	29.42	30.02	\\r
84483290		0	Outros	29.42	36.91	\\r
84483310		0	Cursores	29.42	36.91	\\r
84483390		0	Outros	29.42	36.91	\\r
84483911		0	De filatórios intermitentes (selfatinas)	29.42	36.91	\\r
84483912		0	De máquinas do tipo tow-to-yarn	29.42	30.02	\\r
84483917		0	De outros filatórios	29.42	36.91	\\r
84483919		0	Outras	29.42	36.91	\\r
84483921		0	De bobinadeiras de trama (espuladeiras)	29.42	30.02	\\r
84483922		0	De bobinadeiras automáticas para fios elastanos, ou com atador automático	29.42	30.02	\\r
84483923		0	Outras, de bobinadeiras automáticas	29.42	36.91	\\r
84483929		0	Outras	29.42	36.91	\\r
84483991		0	De urdideiras	29.42	36.91	\\r
84483992		0	De passadeiras para liço e pente	29.42	30.02	\\r
84483999		0	Outras	29.42	36.91	\\r
84484200		0	--Pentes, liços e quadros de liços	29.42	36.91	\\r
84484910		0	De máquinas ou aparelhos auxiliares de teares	29.42	36.91	\\r
84484920		0	De teares para tecidos de largura superior a 30 cm, sem lançadeiras, a jato de água ou de projétil	29.42	30.02	\\r
84484990		0	Outras	29.42	36.91	\\r
84485100		0	--Platinas, agulhas e outros artigos, utilizados na formação das malhas	29.42	30.02	\\r
84485910		0	De teares circulares para malhas	29.42	36.91	\\r
84485921		0	Manuais	29.42	37.76	\\r
84485922		0	Para fabricação de malhas de urdidura	29.42	30.02	\\r
84485929		0	Outras	29.42	36.91	\\r
84485930		0	De máquinas para fabricação de redes, tules ou filós, ou automáticas para bordar	29.42	30.02	\\r
84485940		0	De máquinas do item 8447.90.90	29.42	36.91	\\r
84485990		0	Outras	29.42	36.91	\\r
84490010		0	Máquinas e aparelhos para fabricação ou acabamento de feltros	26.75	34.24	\\r
84490020		0	Máquinas e aparelhos para fabricação de falsos tecidos	26.75	27.35	\\r
84490080		0	Outros	26.75	34.24	\\r
84490091		0	De máquinas ou aparelhos para fabricação de falsos tecidos	29.42	30.02	\\r
84490099		0	Outras	29.42	36.91	\\r
84501100		0	--Máquinas inteiramente automáticas	29.58	40.07	\\r
84501100	01	0	Ex 01 - De uso doméstico	36.64	47.13	\\r
84501200		0	--Outras máquinas, com secador centrífugo incorporado	29.19	38.33	\\r
84501200	01	0	Ex 01 - De uso doméstico	35.30	44.44	\\r
84501900		0	--Outras	30.02	42.07	\\r
84501900	01	0	Ex 01 - De uso doméstico	33.00	45.05	\\r
84502010		0	Túneis contínuos	20.99	21.59	\\r
84502090		0	Outras	37.22	45.02	\\r
84502090	01	0	Ex 01 – De capacidade superior a 20Kg, em peso de roupa seca	27.45	35.25	\\r
84509010		0	De máquinas da subposição 8450.20	37.68	45.82	\\r
84509090		0	Outras	37.68	46.75	\\r
84511000		0	-Máquinas para lavar a seco	26.75	34.24	\\r
84512100		0	--De capacidade, expressa em peso de roupa seca, não superior a 10 kg	29.53	39.85	\\r
84512100	01	0	Ex 01 - De uso doméstico	36.47	46.79	\\r
84512910		0	Que funcionem por meio de ondas eletromagnéticas (micro-ondas), cuja produção seja superior ou igual a 120 kg/h de produto seco	26.75	27.35	\\r
84512990		0	Outras	26.75	32.39	\\r
84513010		0	Automáticas	26.75	27.35	\\r
84513091		0	Prensas para passar de peso inferior ou igual a 14 kg	29.42	39.37	\\r
84513099		0	Outras	26.75	34.24	\\r
84514010		0	Para lavar	26.75	34.24	\\r
84514021		0	Para tingir tecidos em rolos. para tingir por pressão estática, com molinete (rotor de pás), jato de água (jet) ou combinada	26.75	34.24	\\r
84514029		0	Outras	26.75	34.24	\\r
84514090		0	Outras	26.75	34.24	\\r
84515010		0	Para inspecionar tecidos	26.75	27.35	\\r
84515020		0	Automáticas, para enfestar ou cortar	26.75	27.35	\\r
84515090		0	Outras	26.75	34.24	\\r
84518000		0	-Outras máquinas e aparelhos	26.75	34.24	\\r
84518000	01	0	Ex 01 - De uso doméstico	32.76	40.25	\\r
84519010		0	Para as máquinas da subposição 8451.21	29.42	37.76	\\r
84519090		0	Outras	29.42	36.91	\\r
84521000		0	-Máquinas de costura de uso doméstico	29.08	39.00	\\r
84522110		0	Para costurar couros ou peles	27.45	28.05	\\r
84522120		0	Para costurar tecidos	27.45	28.05	\\r
84522910		0	Para costurar couros ou peles	27.45	33.15	\\r
84522921		0	Remalhadeiras	27.45	28.05	\\r
84522922		0	Para casear	27.45	28.05	\\r
84522923		0	Tipo zigue-zague para inserir elástico	27.45	28.05	\\r
84522924		0	De costura reta	27.45	33.15	\\r
84522925		0	Galoneiras	27.45	33.15	\\r
84522929		0	Outras	27.45	28.05	\\r
84522990		0	Outras	27.45	33.15	\\r
84523000		0	-Agulhas para máquinas de costura	30.12	37.61	\\r
84529020		0	Móveis, bases e tampas, para máquinas de costura, e suas partes	30.12	39.28	\\r
84529020	01	0	Ex 01 - Para máquinas de costura de uso doméstico	29.08	38.24	\\r
84529081		0	Guia-fios, lançadeiras e porta-bobinas	30.12	38.46	\\r
84529089		0	Outras	30.12	38.46	\\r
84529091		0	Guia-fios, lançadeiras não rotativas e porta-bobinas	30.12	37.61	\\r
84529092		0	Para remalhadeiras	30.12	30.72	\\r
84529093		0	Lançadeiras rotativas	30.12	30.72	\\r
84529094		0	Corpos moldados por fundição	30.12	37.61	\\r
84529099		0	Outras	30.12	30.72	\\r
84531010		0	Máquinas para dividir couros com largura útil inferior ou igual a 3.000 mm, com lâmina sem fim, com controle eletrônico programável	26.75	34.24	\\r
84531090		0	Outros	26.75	34.24	\\r
84532000		0	-Máquinas e aparelhos para fabricar ou consertar calçados	26.75	34.24	\\r
84538000		0	-Outras máquinas e aparelhos	26.75	34.24	\\r
84539000		0	-Partes	26.75	34.24	\\r
84541000		0	-Conversores	26.75	34.24	\\r
84542010		0	Lingoteiras	26.75	34.24	\\r
84542090		0	Outras	26.75	34.24	\\r
84543010		0	Sob pressão	26.75	34.24	\\r
84543020		0	Por centrifugação	26.75	27.35	\\r
84543090		0	Outras	26.75	34.24	\\r
84549010		0	De máquinas de vazar (moldar) por centrifugação	29.42	30.02	\\r
84549090		0	Outras	26.75	34.24	\\r
84551000		0	-Laminadores de tubos	26.75	34.24	\\r
84552110		0	De cilindros lisos	26.75	34.24	\\r
84552190		0	Outros	26.75	34.24	\\r
84552210		0	De cilindros lisos	26.75	34.24	\\r
84552290		0	Outros	26.75	34.24	\\r
84553010		0	Fundidos, de aço ou ferro fundido nodular	26.75	34.24	\\r
84553020		0	Forjados, de aço de corte rápido, com um teor, em peso, de carbono superior ou igual a 0,80% e inferior ou igual a 0,90%, de cromo superior ou igual a 3,50% e inferior ou igual a 4%, de vanádio superior ou igual a 1,60% e inferior ou igual a 2,30%, de mol	26.75	27.35	\\r
84553090		0	Outros	26.75	34.24	\\r
84559000		0	-Outras partes	29.42	36.91	\\r
84561011		0	Para corte de chapas metálicas de espessura superior a 8 mm	26.75	27.35	\\r
84561019		0	Outras	26.75	34.24	\\r
84561090		0	Outras	26.75	34.24	\\r
84562010		0	De comando numérico	26.75	27.35	\\r
84562090		0	Outras	26.75	27.35	\\r
84563011		0	Para texturizar superfícies cilíndricas	26.75	27.35	\\r
84563019		0	Outras	26.75	34.24	\\r
84563090		0	Outras	26.75	34.24	\\r
84569000		0	-Outras	26.75	34.24	\\r
84571000		0	-Centros de usinagem	26.75	34.24	\\r
84572010		0	De comando numérico	26.75	34.24	\\r
84572090		0	Outras	26.75	34.24	\\r
84573010		0	De comando numérico	26.75	34.24	\\r
84573090		0	Outras	26.75	34.24	\\r
84581110		0	Revólver	26.75	34.24	\\r
84581191		0	De 6 ou mais fusos porta-peças	26.75	27.35	\\r
84581199		0	Outros	26.75	34.24	\\r
84581910		0	Revólver	26.75	34.24	\\r
84581990		0	Outros	26.75	34.24	\\r
84589100		0	--De comando numérico	26.75	34.24	\\r
84589900		0	--Outros	26.75	34.24	\\r
84591000		0	-Unidades com cabeça deslizante	26.75	34.24	\\r
84592110		0	Radiais	26.75	34.24	\\r
84592191		0	De mais de um cabeçote mono ou multifuso	26.75	34.24	\\r
84592199		0	Outras	26.75	34.24	\\r
84592900		0	--Outras	26.75	34.24	\\r
84593100		0	--De comando numérico	26.75	34.24	\\r
84593900		0	--Outras	26.75	34.24	\\r
84594000		0	-Outras máquinas para mandrilar	26.75	34.24	\\r
84595100		0	--De comando numérico	26.75	34.24	\\r
84595900		0	--Outras	26.75	34.24	\\r
84596100		0	--De comando numérico	26.75	34.24	\\r
84596900		0	--Outras	26.75	34.24	\\r
84597000		0	-Outras máquinas para roscar interior ou exteriormente	26.75	34.24	\\r
84601100		0	--De comando numérico	26.75	34.24	\\r
84601900		0	--Outras	26.75	34.24	\\r
84602100		0	--De comando numérico	26.75	34.24	\\r
84602900		0	--Outras	26.75	34.24	\\r
84603100		0	--De comando numérico	26.75	34.24	\\r
84603900		0	--Outras	26.75	34.24	\\r
84604011		0	Brunidoras para cilindros de diâmetro inferior ou igual a 312 mm	26.75	34.24	\\r
84604019		0	Outras	26.75	34.24	\\r
84604091		0	Brunidoras para cilindros de diâmetro inferior ou igual a 312 mm	26.75	34.24	\\r
84604099		0	Outras	26.75	34.24	\\r
84609011		0	De polir, com cinco ou mais cabeças e porta -peças rotativo	26.75	27.35	\\r
84609012		0	De esmerilhar, com duas ou mais cabeças e porta-peças rotativo	26.75	27.35	\\r
84609019		0	Outras	26.75	34.24	\\r
84609090		0	Outras	26.75	34.24	\\r
84612010		0	Para escatelar	26.75	34.24	\\r
84612090		0	Outras	26.75	34.24	\\r
84613010		0	De comando numérico	26.75	34.24	\\r
84613090		0	Outras	26.75	34.24	\\r
84614010		0	De comando numérico	26.75	27.35	\\r
84614091		0	Redondeadoras de dentes	26.75	34.24	\\r
84614099		0	Outras	26.75	34.24	\\r
84615010		0	De fitas sem fim	26.75	34.24	\\r
84615020		0	Circulares	26.75	34.24	\\r
84615090		0	Outras	26.75	34.24	\\r
84619010		0	De comando numérico	26.75	34.24	\\r
84619090		0	Outras	26.75	34.24	\\r
84621011		0	Máquinas para estampar	26.75	34.24	\\r
84621019		0	Outras	26.75	34.24	\\r
84621090		0	Outras	26.75	34.24	\\r
84622100		0	--De comando numérico	26.75	34.24	\\r
84622900		0	--Outras	26.75	34.24	\\r
84623100		0	--De comando numérico	26.75	34.24	\\r
84623910		0	Tipo guilhotina	26.75	34.24	\\r
84623990		0	Outras	26.75	34.24	\\r
84624100		0	--De comando numérico	26.75	34.24	\\r
84624900		0	--Outras	26.75	34.24	\\r
84629111		0	Para moldagem de pós metálicos por sinterização	26.75	34.24	\\r
84629119		0	Outras	26.75	34.24	\\r
84629191		0	Para moldagem de pós metálicos por sinterização	26.75	34.24	\\r
84629199		0	Outros	26.75	34.24	\\r
84629910		0	Prensas para moldagem de pós metálicos por sinterização	26.75	34.24	\\r
84629920		0	Prensas para extrusão	26.75	34.24	\\r
84629990		0	Outras	26.75	34.24	\\r
84631010		0	Para estirar tubos	26.75	34.24	\\r
84631090		0	Outros	26.75	34.24	\\r
84632010		0	De comando numérico	26.75	34.24	\\r
84632091		0	De pente plano, com capacidade de produção superior ou igual a 160 unidades por minuto, de diâmetro de rosca compreendido entre 3 mm e 10 mm	26.75	27.35	\\r
84632099		0	Outras	26.75	34.24	\\r
84633000		0	-Máquinas para trabalhar arames e fios de metal	26.75	34.24	\\r
84639010		0	De comando numérico	26.75	34.24	\\r
84639090		0	Outras	26.75	34.24	\\r
84641000		0	-Máquinas para serrar	26.75	34.24	\\r
84642010		0	Para vidro	26.75	34.24	\\r
84642021		0	De polir placas, para pavimentação ou revestimento, com oito ou mais cabeças	26.75	27.35	\\r
84642029		0	Outras	26.75	34.24	\\r
84642090		0	Outras	26.75	34.24	\\r
84649011		0	De comando numérico, para retificar, fresar e perfurar	26.75	27.35	\\r
84649019		0	Outras	26.75	34.24	\\r
84649090		0	Outras	26.75	34.24	\\r
84651000		0	-Máquinas-ferramentas capazes de efetuar diferentes tipos de operações sem troca de ferramentas	26.75	34.24	\\r
84659110		0	De fita sem fim	26.75	34.24	\\r
84659120		0	Circulares	26.75	34.24	\\r
84659190		0	Outras	26.75	34.24	\\r
84659211		0	Fresadoras	26.75	34.24	\\r
84659219		0	Outras	26.75	34.24	\\r
84659290		0	Outras	26.75	34.24	\\r
84659310		0	Lixadeiras	26.75	34.24	\\r
84659390		0	Outras	26.75	34.24	\\r
84659400		0	--Máquinas para arquear ou reunir	26.75	34.24	\\r
84659511		0	Para furar	26.75	34.24	\\r
84659512		0	Para escatelar	26.75	34.24	\\r
84659591		0	Para furar	26.75	34.24	\\r
84659592		0	Para escatelar	26.75	34.24	\\r
84659600		0	--Máquinas para fender, seccionar ou desenrolar	26.75	34.24	\\r
84659900		0	--Outras	26.75	34.24	\\r
84661000		0	-Porta-ferramentas e fieiras de abertura automática	30.12	37.61	\\r
84662010		0	Para tornos	30.12	37.61	\\r
84662090		0	Outros	30.12	37.61	\\r
84663000		0	-Dispositivos divisores e outros dispositivos especiais, para máquinas-ferramentas	30.12	37.61	\\r
84669100		0	--Para máquinas da posição 84.64	30.12	37.61	\\r
84669200		0	--Para máquinas da posição 84.65	30.12	37.61	\\r
84669311		0	Para máquinas da subposição 8456.20	30.12	30.72	\\r
84669319		0	Outras	30.12	37.61	\\r
84669320		0	Para máquinas da posição 84.57	30.12	37.61	\\r
84669330		0	Para máquinas da posição 84.58	30.12	37.61	\\r
84669340		0	Para máquinas da posição 84.59	30.12	37.61	\\r
84669350		0	Para máquinas da posição 84.60	30.12	37.61	\\r
84669360		0	Para máquinas da posição 84.61	30.12	37.61	\\r
84669410		0	Para máquinas da subposição 8462.10	30.12	37.61	\\r
84669420		0	Para máquinas das subposições 8462.21 ou 8462.29	30.12	37.61	\\r
84669430		0	Para prensas para extrusão	30.12	37.61	\\r
84669490		0	Outras	30.12	37.61	\\r
84671110		0	Furadeiras	30.12	37.61	\\r
84671190		0	Outras	30.12	37.61	\\r
84671900		0	--Outras	30.12	37.61	\\r
84672100		0	--Furadeiras de todos os tipos, incluindo as perfuratrizes rotativas	31.60	41.55	\\r
84672200		0	--Serras	31.60	41.55	\\r
84672910		0	Tesouras	31.60	41.55	\\r
84672991		0	Cortadoras de tecidos	31.60	41.55	\\r
84672992		0	Parafusadeiras e rosqueadeiras	31.60	41.55	\\r
84672993		0	Martelos	31.60	39.09	\\r
84672999		0	Outras	31.60	41.55	\\r
84678100		0	--Serras de corrente	31.60	37.30	\\r
84678900		0	--Outras	31.60	39.09	\\r
84679100		0	--De serras de corrente	31.60	39.09	\\r
84679200		0	--De ferramentas pneumáticas	31.60	39.09	\\r
84679900		0	--Outras	31.60	39.09	\\r
84681000		0	-Maçaricos de uso manual	29.42	37.76	\\r
84682000		0	-Outras máquinas e aparelhos a gás	26.75	34.24	\\r
84688010		0	Para soldar por fricção	26.75	27.35	\\r
84688090		0	Outras	26.75	34.24	\\r
84689010		0	De maçaricos de uso manual	29.42	37.76	\\r
84689020		0	De máquinas ou aparelhos para soldar por fricção	29.42	30.02	\\r
84689090		0	Outras	29.42	36.91	\\r
84690010		0	Máquinas de tratamento de textos	36.80	44.29	\\r
84690021		0	Eletrônicas, com velocidade de impressão inferior ou igual a 40 caracteres por segundo	36.80	46.75	\\r
84690029		0	Outras	36.80	46.75	\\r
84690031		0	De estenotipar, de peso não superior a 12 kg, excluindo o estojo, não elétricas	36.80	37.40	\\r
84690039		0	Outras	36.80	46.75	\\r
84690039	01	0	Ex 01 – Em Braille	18.20	28.15	\\r
84701000		0	-Calculadoras eletrônicas capazes de funcionar sem fonte externa de energia elétrica e máquinas de bolso com função de cálculo incorporada que permitam gravar, reproduzir e visualizar informações	34.77	44.72	\\r
84701000	01	0	Ex 01 - Calculadora equipada com sintetizador de voz	18.20	28.15	\\r
84702100		0	--Com dispositivo impressor incorporado	34.07	44.02	\\r
84702900		0	--Outras	34.07	44.02	\\r
84703000		0	-Outras máquinas de calcular	34.77	44.72	\\r
84705011		0	Com capacidade de comunicação bidirecional com computadores ou outras máquinas digitais	34.07	42.41	\\r
84705019		0	Outras	34.07	42.41	\\r
84705090		0	Outras	34.77	42.26	\\r
84709010		0	Máquinas de franquear correspondência	34.77	35.37	\\r
84709090		0	Outras	34.77	42.26	\\r
84713011		0	De peso inferior a 350 g, com teclado alfanumérico de no mínimo 70 teclas e com uma tela de área não superior a 140 cm2	35.42	37.32	\\r
84713012		0	De peso inferior a 3,5 kg com teclado alfanumérico de no mínimo 70 teclas e com uma tela de área superior a 140 cm2 e inferior a 560 cm2	35.42	45.18	\\r
84713019		0	Outras	35.42	45.18	\\r
84713090		0	Outras	35.42	45.18	\\r
84714110		0	De peso inferior a 750 g, sem teclado, com reconhecimento de escrita, entrada de dados e de comandos por meio de uma tela de área inferior a 280 cm2	34.07	35.77	\\r
84714190		0	Outras	34.07	42.41	\\r
84714900		0	--Outras, apresentadas sob a forma de sistemas	34.07	42.41	\\r
84715010		0	De pequena capacidade, baseadas em microprocessadores, com capacidade de instalação, dentro do mesmo gabinete, de unidades de memória da subposição 8471.70, podendo conter múltiplos conectores de expansão (slots), e valor FOB inferior ou igual a US$ 12.50	34.07	42.41	\\r
84715020		0	De média capacidade, podendo conter no máximo uma unidade de entrada e outra de saída da subposição 8471.60, com capacidade de instalação, dentro do mesmo gabinete, de unidades de memória da subposição 8471.70, podendo conter múltiplos conectores de expan	34.07	40.68	\\r
84715030		0	De grande capacidade, podendo conter no máximo uma unidade de entrada e outra de saída da subposição 8471.60, com capacidade de instalação interna, ou em módulos separados do gabinete do processador central, de unidades de memória da subposição 8471.70, e	34.07	38.82	\\r
84715040		0	De muito grande capacidade, podendo conter no máximo uma unidade de entrada e outra de saída da subposição 8471.60, com capacidade de instalação interna, ou em módulos separados do gabinete do processador central, de unidades de memória da subposição 8471	34.07	36.82	\\r
84715090		0	Outras	34.07	42.41	\\r
84716052		0	Teclados	24.82	31.43	\\r
84716052	01	0	Ex 01 - Com colmeia	26.75	33.36	\\r
84716053		0	Indicadores ou apontadores (mouse e track-ball, por exemplo)	24.82	31.43	\\r
84716053	01	0	Ex 01 - Indicador ou apontador (mouse) com entrada para acionador	17.50	24.11	\\r
84716053	02	0	Ex 02 - Acionador de pressão	17.50	24.11	\\r
84716054		0	Mesas digitalizadoras	34.07	40.68	\\r
84716059		0	Outras	34.07	40.68	\\r
84716061		0	Com unidade de saída por vídeo monocromático	34.07	42.41	\\r
84716062		0	Com unidade de saída por vídeo policromático	34.07	42.41	\\r
84716080		0	Terminais de auto-atendimento bancário	34.07	42.41	\\r
84716090		0	Outras	34.07	42.41	\\r
84716090	01	0	Ex 01 - Linha Braille	17.50	25.84	\\r
84717011		0	Para discos flexíveis	31.85	33.55	\\r
84717012		0	Para discos rígidos, com um só conjunto cabeça-disco (HDA - Head Disk Assembly)	31.85	36.60	\\r
84717019		0	Outras	34.07	38.82	\\r
84717021		0	Exclusivamente para leitura	31.85	33.55	\\r
84717029		0	Outras	31.85	33.55	\\r
84717032		0	Para cartuchos	34.07	35.77	\\r
84717033		0	Para cassetes	34.07	35.77	\\r
84717039		0	Outras	34.07	40.68	\\r
84717090		0	Outras	34.07	40.68	\\r
84718000		0	-Outras unidades de máquinas automáticas para processamento de dados	34.07	42.41	\\r
84719011		0	De cartões magnéticos	34.07	40.68	\\r
84719012		0	Leitores de códigos de barras	34.07	40.68	\\r
84719013		0	Leitores de caracteres magnetizáveis	34.07	40.68	\\r
84719014		0	Digitalizadores de imagens (scanners)	34.07	35.77	\\r
84719014	01	0	Ex 01 - Equipados com sintetizador de voz	17.50	19.20	\\r
84719019		0	Outros	34.07	40.68	\\r
84719090		0	Outros	34.07	42.41	\\r
84721000		0	-Duplicadores	36.80	44.29	\\r
84721000	01	0	Ex 01 - Duplicador Braille	18.20	25.69	\\r
84723010		0	Máquinas automáticas para obliterar selos postais	36.80	38.50	\\r
84723020		0	Máquinas automáticas para seleção de correspondência por formato e classificação e distribuição da mesma por leitura óptica do código postal	36.80	38.50	\\r
84723030		0	Máquinas automáticas para seleção e distribuição de encomendas, por leitura óptica do código postal	36.80	38.50	\\r
84723090		0	Outras	36.80	37.40	\\r
84729010		0	Distribuidores (dispensadores) automáticos de papéis-moeda, incluindo os que efetuam outras operações bancárias	34.07	42.41	\\r
84729021		0	Eletrônicas, com capacidade de comunicação bidirecional com computadores ou outras máquinas digitais	34.07	42.41	\\r
84729030		0	Máquinas para selecionar e contar moedas ou papéis-moeda	36.11	43.60	\\r
84729040		0	Máquinas para apontar lápis, perfuradores, grampeadores e desgrampeadores	36.80	45.96	\\r
84729051		0	Com capacidade de classificação superior a 400 documentos por minuto	34.07	35.77	\\r
84729059		0	Outras	34.07	40.68	\\r
84729091		0	Máquinas para imprimir endereços ou para estampar placas de endereços	36.11	36.71	\\r
84729099		0	Outros	36.11	43.60	\\r
84731010		0	De máquinas para tratamento de textos	36.80	44.29	\\r
84731090		0	Outros	36.80	45.14	\\r
84732100		0	--Das calculadoras eletrônicas das subposições 8470.10, 8470.21 ou 8470.29	28.55	36.89	\\r
84732910		0	Circuitos impressos com componentes elétricos ou eletrônicos montados, para caixas registradoras	34.77	41.38	\\r
84732920		0	De máquinas da subposição 8470.30	36.80	45.14	\\r
84732990		0	Outros	34.77	39.52	\\r
84733011		0	Com fonte de alimentação, com ou sem módulo display numérico	31.85	38.46	\\r
84733019		0	Outros	31.85	37.55	\\r
84733031		0	Conjuntos cabeça-disco (HDA - Head Disk Assembly) de unidades de discos rígidos, montados	31.85	34.60	\\r
84733032		0	Braços posicionadores de cabeças magnéticas	27.85	28.45	\\r
84733033		0	Cabeças magnéticas	27.85	28.45	\\r
84733034		0	Mecanismos bobinadores para unidades de fitas magnéticas (magnetic tape transporter)	31.85	32.45	\\r
84733039		0	Outras	31.85	34.60	\\r
84733041		0	Placas-mãe (mother boards)	34.07	40.68	\\r
84733042		0	Placas (módulos) de memória com uma superfície inferior ou igual a 50 cm2	34.07	40.68	\\r
84733043		0	Placas de microprocessamento, mesmo com dispositivo de dissipação de calor	27.85	28.45	\\r
84733049		0	Outros	34.07	40.68	\\r
84733092		0	Telas (displays) para máquinas automáticas para processamento de dados, portáteis	27.85	28.45	\\r
84733099		0	Outros	31.85	36.60	\\r
84734010		0	Circuitos impressos com componentes elétricos ou eletrônicos, montados	34.77	41.38	\\r
84734070		0	Outras partes e acessórios das máquinas do item 8472.90.10 e dos subitens 8472.90.21 ou 8472.90.29	32.55	40.04	\\r
84734090		0	Outros	32.55	37.30	\\r
84735010		0	Circuitos impressos com componentes elétricos ou eletrônicos, montados	34.77	41.38	\\r
84735031		0	Martelo de impressão e banco de martelos	30.12	30.72	\\r
84735032		0	Cabeças de impressão, exceto as térmicas ou as de jato de tinta	32.55	33.15	\\r
84735033		0	Cabeças de impressão térmicas ou de jato de tinta, mesmo com depósito de tinta incorporado	30.12	30.72	\\r
84735034		0	Cintas de caracteres	30.12	30.72	\\r
84735035		0	Cartuchos de tintas	30.12	30.72	\\r
84735039		0	Outros	32.55	33.15	\\r
84735040		0	Cabeças magnéticas	30.12	30.72	\\r
84735050		0	Placas (módulos) de memória com uma superfície inferior ou igual a 50 cm2	34.77	41.38	\\r
84735090		0	Outros	32.55	40.89	\\r
84741000		0	-Máquinas e aparelhos para selecionar, peneirar, separar ou lavar	26.75	34.24	\\r
84742010		0	De bolas	26.75	34.24	\\r
84742090		0	Outros	26.75	34.24	\\r
84743100		0	--Betoneiras e aparelhos para amassar cimento	26.75	34.24	\\r
84743200		0	--Máquinas para misturar matérias minerais com betume	26.75	34.24	\\r
84743900		0	--Outros	26.75	34.24	\\r
84748010		0	Para fabricação de moldes de areia para fundição	26.75	34.24	\\r
84748090		0	Outras	26.75	34.24	\\r
84749000		0	-Partes	26.75	34.24	\\r
84751000		0	-Máquinas para montagem de lâmpadas, tubos ou válvulas, elétricos ou eletrônicos, ou de lâmpadas de luz relâmpago (flash), que tenham invólucro de vidro	26.75	27.35	\\r
84752100		0	--Máquinas para fabricação de fibras ópticas e de seus esboços	26.75	34.24	\\r
84752910		0	Para fabricação de recipientes da posição 70.10, exceto ampolas	26.75	34.24	\\r
84752990		0	Outras	26.75	34.24	\\r
84759000		0	-Partes	29.42	36.91	\\r
84762100		0	--Com dispositivo de aquecimento ou de refrigeração incorporado	35.31	42.80	\\r
84762900		0	--Outras	35.31	42.80	\\r
84768100		0	--Com dispositivo de aquecimento ou de refrigeração incorporado	35.31	42.80	\\r
84768910		0	Máquinas automáticas de venda de selos postais	35.31	35.91	\\r
84768990		0	Outras	35.31	42.80	\\r
84769000		0	-Partes	35.31	42.80	\\r
84771011		0	Monocolor, para materiais termoplásticos, com capacidade de injeção inferior ou igual a 5.000 g e força de fechamento inferior ou igual a 12.000 kN	26.75	34.24	\\r
84771019		0	Outras	26.75	34.24	\\r
84771021		0	Monocolor, para materiais termoplásticos, com capacidade de injeção inferior ou igual a 5.000 g e força de fechamento inferior ou igual a 12.000 kN	26.75	34.24	\\r
84771029		0	Outras	26.75	34.24	\\r
84771091		0	De comando numérico	26.75	34.24	\\r
84771099		0	Outras	26.75	34.24	\\r
84772010		0	Para materiais termoplásticos, com diâmetro da rosca inferior ou igual a 300 mm	26.75	34.24	\\r
84772090		0	Outras	26.75	34.24	\\r
84773010		0	Para fabricação de recipientes termoplásticos de capacidade inferior ou igual a 5 l, com uma produção inferior ou igual a 1.000 unidades por hora, referente a recipiente de 1 l	26.75	34.24	\\r
84773090		0	Outras	26.75	34.24	\\r
84774010		0	De moldar a vácuo poliestireno expandido (EPS) ou polipropileno expandido (EPP)	26.75	27.35	\\r
84774090		0	Outras	26.75	34.24	\\r
84775100		0	--Para moldar ou recauchutar pneumáticos ou para moldar ou dar forma a câmaras de ar	26.75	34.24	\\r
84775911		0	Com capacidade inferior ou igual a 30.000 kN	26.75	34.24	\\r
84775919		0	Outras	26.75	34.24	\\r
84775990		0	Outras	26.75	34.24	\\r
84778010		0	Máquina de unir lâminas de borracha entre si ou com tecidos com borracha, para fabricação de pneumáticos	26.75	27.35	\\r
84778090		0	Outras	26.75	34.24	\\r
84779000		0	-Partes	29.42	36.91	\\r
84781010		0	Batedoras-separadoras automáticas de talos e folhas	31.85	39.34	\\r
84781090		0	Outros	31.85	39.34	\\r
84789000		0	-Partes	31.85	39.34	\\r
84791010		0	Automotrizes para espalhar e calcar pisos (pavimentos) betuminosos	26.75	34.24	\\r
84791090		0	Outros	26.75	34.24	\\r
84792000		0	-Máquinas e aparelhos para extração ou preparação de óleos ou gorduras vegetais fixos ou de óleos ou gorduras animais	26.75	34.24	\\r
84793000		0	-Prensas para fabricação de painéis de partículas, de fibras de madeira ou de outras matérias lenhosas, e outras máquinas e aparelhos para tratamento de madeira ou de cortiça	26.75	34.24	\\r
84794000		0	-Máquinas para fabricação de cordas ou cabos	26.75	34.24	\\r
84795000		0	-Robôs industriais, não especificados nem compreendidos noutras posições	26.75	34.24	\\r
84796000		0	-Aparelhos de evaporação para arrefecimento do ar	26.75	34.24	\\r
84797100		0	--Dos tipos utilizados em aeroportos	26.75	34.24	\\r
84797900		0	--Outras	26.75	34.24	\\r
84798110		0	Diferenciadores das tensões de tração de entrada e saída da chapa, em instalações de galvanoplastia	26.75	27.35	\\r
84798190		0	Outros	26.75	34.24	\\r
84798210		0	Misturadores	26.75	34.24	\\r
84798290		0	Outras	26.75	34.24	\\r
84798911		0	Prensas	26.75	34.24	\\r
84798912		0	Distribuidores e doseadores de sólidos ou de líquidos	26.75	34.24	\\r
84798921		0	Máquinas e aparelhos para cestaria ou espartaria	26.75	27.35	\\r
84798922		0	Máquinas e aparelhos para fabricação de pincéis, brochas ou escovas	26.75	27.35	\\r
84798931		0	Limpadores de pára-brisas	29.42	38.58	\\r
84798932		0	Acumuladores	29.42	38.58	\\r
84798940		0	Silos metálicos para cereais, fixos (não transportáveis), incluindo as baterias, com mecanismos elevadores ou extratores incorporados	26.75	34.24	\\r
84798991		0	Aparelhos para limpar peças por ultrassom	26.75	34.24	\\r
84798992		0	Máquinas de leme para embarcações	29.42	36.91	\\r
84798999		0	Outros	26.75	34.24	\\r
84799010		0	De limpadores de pára-brisas elétricos ou de acumuladores hidráulicos para aeronaves	29.42	37.76	\\r
84799090		0	Outras	26.75	34.24	\\r
84801000		0	-Caixas de fundição	26.75	34.24	\\r
84802000		0	-Placas de fundo para moldes	29.42	36.91	\\r
84803000		0	-Modelos para moldes	26.75	34.24	\\r
84804100		0	--Para moldagem por injeção ou por compressão	26.75	34.24	\\r
84804910		0	Coquilhas	26.75	34.24	\\r
84804990		0	Outros	26.75	34.24	\\r
84805000		0	-Moldes para vidro	26.75	34.24	\\r
84806000		0	-Moldes para matérias minerais	26.75	34.24	\\r
84807100		0	--Para moldagem por injeção ou por compressão	26.75	34.24	\\r
84807900		0	--Outros	26.75	34.24	\\r
84811000		0	-Válvulas redutoras de pressão	30.12	37.61	\\r
84812011		0	Com pinhão	30.12	37.61	\\r
84812019		0	Outras	30.12	30.72	\\r
84812090		0	Outras	30.12	37.61	\\r
84813000		0	-Válvulas de retenção	30.12	37.61	\\r
84814000		0	-Válvulas de segurança ou de alívio	29.61	37.10	\\r
84818011		0	Válvulas para escoamento	30.12	39.28	\\r
84818019		0	Outros	30.12	39.28	\\r
84818021		0	Válvulas de expansão termostáticas ou pressostáticas	30.12	37.61	\\r
84818029		0	Outros	33.46	40.95	\\r
84818029	01	0	Ex 01 - Do tipo gaveta ou do tipo esfera, de ferro ou aço ou de cobre e suas ligas. e do tipo globo, do tipo borboleta, do tipo agulha ou do tipo diafragma, de ferro ou aço	30.12	37.61	\\r
84818031		0	Com uma pressão de trabalho inferior ou igual a 50 mbar e dispositivo de segurança termoelétrico incorporado, dos tipos utilizados em aparelhos domésticos	29.61	38.77	\\r
84818039		0	Outros	29.61	37.10	\\r
84818091		0	Válvulas tipo aerossol	33.46	42.62	\\r
84818092		0	Válvulas solenóides	27.45	34.94	\\r
84818093		0	Válvulas tipo gaveta	30.12	37.61	\\r
84818094		0	Válvulas tipo globo	30.12	37.61	\\r
84818095		0	Válvulas tipo esfera	30.12	37.61	\\r
84818096		0	Válvulas tipo macho	29.61	37.10	\\r
84818097		0	Válvulas tipo borboleta	29.61	37.10	\\r
84818099		0	Outros	30.12	37.61	\\r
84819010		0	De válvulas tipo aerossol ou dos dispositivos do item 8481.80.1	33.46	41.80	\\r
84819090		0	Outras	33.46	40.95	\\r
84821010		0	De carga radial	33.46	41.80	\\r
84821090		0	Outros	33.46	41.80	\\r
84822010		0	De carga radial	33.46	41.80	\\r
84822090		0	Outros	33.46	41.80	\\r
84823000		0	-Rolamentos de roletes em forma de tonel	33.46	41.80	\\r
84824000		0	-Rolamentos de agulhas	33.46	41.80	\\r
84825010		0	De carga radial	33.46	41.80	\\r
84825090		0	Outros	33.46	41.80	\\r
84828000		0	-Outros, incluindo os rolamentos combinados	33.46	41.80	\\r
84829111		0	Para carga de canetas esferográficas	33.46	40.95	\\r
84829119		0	Outras	33.46	40.95	\\r
84829120		0	Roletes cilíndricos	33.46	40.95	\\r
84829130		0	Roletes cônicos	33.46	40.95	\\r
84829190		0	Outros	33.46	40.95	\\r
84829910		0	Selos, capas e porta-esferas de aço	33.46	35.16	\\r
84829990		0	Outras	33.46	40.95	\\r
84831011		0	Forjados, de peso superior ou igual a 900 kg e comprimento superior ou igual a 2.000 mm	33.46	35.16	\\r
84831011	01	0	Ex 01 - Para motores de ignição por compressão de potência igual ou superior a 125HP, próprios para ônibus ou caminhões	27.45	29.15	\\r
84831019		0	Outros	33.46	41.80	\\r
84831019	01	0	Ex 01 - Para motores de ignição por compressão de potência igual ou superior a 125HP, próprios para ônibus ou caminhões	29.61	37.95	\\r
84831020		0	Árvores de cames para comando de válvulas	33.46	41.80	\\r
84831030		0	Veios flexíveis	33.46	41.80	\\r
84831040		0	Manivelas	33.46	41.80	\\r
84831050		0	Árvores de transmissão providas de acoplamentos dentados com entalhes de proteção contra sobrecarga, de comprimento superior ou igual a 1500 mm e diâmetro do eixo superior ou igual a 400 mm	33.46	34.06	\\r
84831090		0	Outros	33.46	41.80	\\r
84832000		0	-Mancais (chumaceiras) com rolamentos incorporados	33.46	41.80	\\r
84833010		0	Montados com “bronzes” de metal antifricção	33.46	41.80	\\r
84833021		0	Com diâmetro interno superior ou igual a 200 mm	33.46	35.16	\\r
84833029		0	Outros	33.46	41.80	\\r
84833090		0	Outros	33.46	41.80	\\r
84834010		0	Redutores, multiplicadores, caixas de transmissão e variadores de velocidade, incluindo os conversores de torque	30.12	37.61	\\r
84834090		0	Outros	32.55	40.04	\\r
84835010		0	Polias, exceto as de rolamentos reguladoras de tensão	33.46	41.80	\\r
84835090		0	Outras	33.46	41.80	\\r
84836011		0	De fricção	33.46	40.95	\\r
84836019		0	Outras	33.46	40.95	\\r
84836090		0	Outros	33.46	40.95	\\r
84839000		0	-Rodas dentadas e outros órgãos elementares de transmissão apresentados separadamente. partes	33.46	40.95	\\r
84841000		0	-Juntas metaloplásticas	33.46	41.80	\\r
84842000		0	-Juntas de vedação mecânicas	32.55	40.04	\\r
84849000		0	-Outros	33.46	41.80	\\r
84861000		0	-Máquinas e aparelhos para a fabricação de “esferas” (boules) ou de plaquetas (wafers)	27.45	34.94	\\r
84862000		0	-Máquinas e aparelhos para a fabricação de dispositivos semicondutores ou de circuitos integrados eletrônicos	27.45	34.94	\\r
84863000		0	-Máquinas e aparelhos para a fabricação de dispositivos de visualização de tela plana	27.45	34.94	\\r
84864000		0	-Máquinas e aparelhos especificados na Nota 9 C) do presente Capítulo	27.45	34.94	\\r
84869000		0	-Partes e acessórios	27.45	34.94	\\r
84871000		0	-Hélices para embarcações e suas pás	32.55	40.04	\\r
84879000		0	-Outras	32.55	40.04	\\r
85011011		0	De passo inferior ou igual a 1,8°	33.42	34.02	\\r
85011011	01	0	Ex 01 - Próprios para utilização em brinquedos	35.85	36.45	\\r
85011019		0	Outros	35.85	45.01	\\r
85011021		0	Síncronos	36.55	45.71	\\r
85011029		0	Outros	36.55	45.71	\\r
85011030		0	Universais	36.55	45.71	\\r
85012000		0	-Motores universais de potência superior a 37,5 W	36.55	45.71	\\r
85013110		0	Motores	36.55	45.71	\\r
85013120		0	Geradores	31.45	40.61	\\r
85013210		0	Motores	31.45	40.61	\\r
85013220		0	Geradores	31.45	40.61	\\r
85013310		0	Motores	31.45	38.94	\\r
85013320		0	Geradores	31.45	38.94	\\r
85013411		0	De potência inferior ou igual a 3.000 kW	31.45	38.94	\\r
85013419		0	Outros	31.45	32.05	\\r
85013420		0	Geradores	31.45	38.94	\\r
85014011		0	Síncronos	31.45	40.61	\\r
85014019		0	Outros	36.55	45.71	\\r
85014021		0	Síncronos	31.45	38.94	\\r
85014029		0	Outros	36.55	44.04	\\r
85015110		0	Trifásicos, com rotor de gaiola	34.12	41.61	\\r
85015110	01	0	Ex 01 - De alto rendimento, segundo norma NBR 17094	31.45	38.94	\\r
85015120		0	Trifásicos, com rotor de anéis	31.45	38.94	\\r
85015190		0	Outros	31.45	38.94	\\r
85015210		0	Trifásicos, com rotor de gaiola	31.45	38.94	\\r
85015220		0	Trifásicos, com rotor de anéis	31.45	38.94	\\r
85015290		0	Outros	31.45	38.94	\\r
85015310		0	Trifásicos, de potência inferior ou igual a 7.500 kW	31.45	38.94	\\r
85015320		0	Trifásicos, de potência superior a 7.500 kW mas não superior a 30.000 kW	31.45	38.94	\\r
85015390		0	Outros	31.45	32.05	\\r
85016100		0	--De potência não superior a 75 kVA	31.45	38.94	\\r
85016200		0	--De potência superior a 75 kVA, mas não superior a 375 kVA	31.45	38.94	\\r
85016300		0	--De potência superior a 375 kVA, mas não superior a 750 kVA	31.45	38.94	\\r
85016400		0	--De potência superior a 750 kVA	31.45	38.94	\\r
85021110		0	De corrente alternada	31.45	38.94	\\r
85021190		0	Outros	31.45	38.94	\\r
85021210		0	De corrente alternada	31.45	38.94	\\r
85021290		0	Outros	31.45	38.94	\\r
85021311		0	De potência inferior ou igual a 430 kVA	31.45	38.94	\\r
85021319		0	Outros	31.45	38.94	\\r
85021390		0	Outros	31.45	38.94	\\r
85022011		0	De potência inferior ou igual a 210 kVA	31.45	38.94	\\r
85022019		0	Outros	31.45	32.05	\\r
85022090		0	Outros	31.45	38.94	\\r
85023100		0	--De energia eólica	31.45	32.05	\\r
85023900		0	--Outros	31.45	32.05	\\r
85024010		0	De frequência	31.45	38.94	\\r
85024090		0	Outros	31.45	38.94	\\r
85030010		0	De motores ou geradores das subposições 8501.10, 8501.20, 8501.31, 8501.32 ou do item 8501.40.1	36.55	44.04	\\r
85030090		0	Outras	36.55	44.04	\\r
85030090	01	0	Ex 01 - Partes utilizadas exclusiva ou principalmente em aerogeradores classificados no código 8502.31.00	31.45	38.94	\\r
85041000		0	-Reatores para lâmpadas ou tubos de descarga	33.42	42.58	\\r
85042100		0	--De potência não superior a 650 kVA	30.75	38.24	\\r
85042200		0	--De potência superior a 650 kVA, mas não superior a 10.000 kVA	30.75	38.24	\\r
85042300		0	--De potência superior a 10.000 kVA	30.75	38.24	\\r
85043111		0	Transformadores de corrente	35.85	45.01	\\r
85043119		0	Outros	35.85	45.01	\\r
85043191		0	Transformador de saída horizontal (fly back), com tensão de saída superior a 18 kV e frequência de varredura horizontal superior ou igual a 32 kHz	33.42	34.02	\\r
85043192		0	Transformadores de FI, de detecção, de relação, de linearidade ou de foco	40.10	49.26	\\r
85043199		0	Outros	35.85	45.01	\\r
85043199	01	0	Ex 01 - Transformadores de deflexão (“yokes”), para tubos de raios catódicos	40.10	49.26	\\r
85043211		0	Para frequências inferiores ou iguais a 60 Hz	30.75	39.91	\\r
85043219		0	Outros	30.75	39.91	\\r
85043221		0	Para frequências inferiores ou iguais a 60 Hz	30.75	39.91	\\r
85043229		0	Outros	30.75	39.91	\\r
85043300		0	--De potência superior a 16 kVA, mas não superior a 500 kVA	30.75	38.24	\\r
85043400		0	--De potência superior a 500 kVA	30.75	38.24	\\r
85044010		0	Carregadores de acumuladores	33.42	42.58	\\r
85044021		0	De cristal (semicondutores)	33.42	42.58	\\r
85044022		0	Eletrolíticos	33.42	42.58	\\r
85044029		0	Outros	33.42	42.58	\\r
85044030		0	Conversores de corrente contínua	38.07	45.56	\\r
85044040		0	Equipamento de alimentação ininterrupta de energia (UPS ou no break)	38.07	45.56	\\r
85044050		0	Conversores eletrônicos de frequência, para variação de velocidade de motores elétricos	38.07	45.56	\\r
85044060		0	Aparelhos eletrônicos de alimentação de energia dos tipos utilizados para iluminação de emergência	38.07	47.23	\\r
85044090		0	Outros	38.07	45.56	\\r
85045000		0	-Outras bobinas de reatância e de auto-indução	30.75	39.91	\\r
85049010		0	Núcleos de pó ferromagnético	35.85	44.19	\\r
85049020		0	De reatores para lâmpadas ou tubos de descarga	35.85	44.19	\\r
85049030		0	De transformadores das subposições 8504.21, 8504.22, 8504.23, 8504.33 ou 8504.34	35.85	43.34	\\r
85049040		0	De conversores estáticos, exceto de carregadores de acumuladores e de retificadores	35.85	43.34	\\r
85049090		0	Outras	35.85	44.19	\\r
85051100		0	--De metal	38.77	47.11	\\r
85051910		0	De ferrita (cerâmicos)	38.77	47.11	\\r
85051990		0	Outros	38.77	47.11	\\r
85052010		0	Freios que atuam por corrente de Foucault, do tipo dos utilizados nos veículos das posições 87.01 a 87.05	34.12	34.72	\\r
85052090		0	Outros	34.12	41.61	\\r
85052090	01	0	Ex 01 - Embreagem eletromagnética para colheitadeiras	33.60	41.09	\\r
85059010		0	Eletroímãs	34.12	42.46	\\r
85059080		0	Outros	38.77	46.26	\\r
85059090		0	Partes	38.77	46.26	\\r
85061010		0	Pilhas alcalinas	38.77	47.11	\\r
85061020		0	Outras pilhas	38.77	47.11	\\r
85061030		0	Baterias de pilhas	38.77	47.11	\\r
85063010		0	Com volume exterior não superior a 300 cm3	38.77	39.37	\\r
85063090		0	Outras	38.77	47.11	\\r
85064010		0	Com volume exterior não superior a 300 cm3	38.77	39.37	\\r
85064090		0	Outras	38.77	47.11	\\r
85065010		0	Com volume exterior não superior a 300 cm3	38.77	39.37	\\r
85065090		0	Outras	38.77	47.11	\\r
85066010		0	Com volume exterior não superior a 300 cm3	38.77	39.37	\\r
85066090		0	Outras	38.77	47.11	\\r
85068010		0	Com volume exterior não superior a 300 cm3	38.77	39.37	\\r
85068090		0	Outras	38.77	47.11	\\r
85069000		0	-Partes	38.77	46.26	\\r
85071010		0	De capacidade inferior ou igual a 20 Ah e tensão inferior ou igual a 12 V	38.77	47.93	\\r
85071090		0	Outros	38.77	47.93	\\r
85071090	01	0	Ex 01 - Do tipo utilizado para o arranque dos motores de ignição por compressão, com intensidade de corrente igual ou superior a 90 Ah	33.60	42.76	\\r
85072010		0	De peso inferior ou igual a 1.000 kg	38.77	47.93	\\r
85072090		0	Outros	38.77	47.93	\\r
85073011		0	De capacidade inferior ou igual a 15 Ah	38.77	47.93	\\r
85073019		0	Outros	38.77	47.93	\\r
85073090		0	Outros	38.77	47.93	\\r
85074000		0	-De níquel-ferro	38.77	47.93	\\r
85075000		0	-De níquel-hidreto metálico	38.77	47.93	\\r
85076000		0	-De íon de lítio	38.77	47.93	\\r
85078000		0	-Outros acumuladores	38.77	47.93	\\r
85079010		0	Separadores	38.77	47.11	\\r
85079020		0	Recipientes de plástico, suas tampas e tampões	38.77	47.11	\\r
85079090		0	Outras	38.77	47.11	\\r
85081100		0	--De potência não superior a 1.500 W e cujo volume do reservatório não exceda 20 l	36.55	46.50	\\r
85081900		0	--Outros	36.55	46.50	\\r
85086000		0	-Outros aspiradores	36.55	44.04	\\r
85087000		0	-Partes	36.55	44.04	\\r
85094010		0	Liquidificadores	36.55	46.50	\\r
85094020		0	Batedeiras	36.55	46.50	\\r
85094030		0	Moedores de carne	36.55	46.50	\\r
85094040		0	Extratores centrífugos de sucos	32.55	42.50	\\r
85094050		0	Aparelhos de funções múltiplas, providos de acessórios intercambiáveis, para processar alimentos	36.55	46.50	\\r
85094090		0	Outros	36.55	46.50	\\r
85098010		0	Enceradeiras de pisos	35.60	43.81	\\r
85098090		0	Outros	36.55	46.50	\\r
85099000		0	-Partes	36.55	44.89	\\r
85101000		0	-Aparelhos ou máquinas de barbear	40.80	50.75	\\r
85102000		0	-Máquinas de cortar o cabelo ou de tosquiar	40.80	41.40	\\r
85103000		0	-Aparelhos de depilar	36.55	46.50	\\r
85109011		0	Lâminas	40.80	49.14	\\r
85109019		0	Outras	40.80	49.14	\\r
85109020		0	Pentes e contrapentes para máquinas de tosquiar	40.80	48.29	\\r
85109090		0	Outras	40.80	41.40	\\r
85111000		0	-Velas de ignição	38.77	47.93	\\r
85112010		0	Magnetos	38.77	47.93	\\r
85112090		0	Outros	38.77	47.93	\\r
85113010		0	Distribuidores	38.77	47.93	\\r
85113020		0	Bobinas de ignição	38.77	47.93	\\r
85114000		0	-Motores de arranque, mesmo funcionando como geradores	38.77	47.93	\\r
85114000	01	0	Ex 01 - Para sistema elétrico em 24V, com potência igual ou superior a 3kW	33.60	42.76	\\r
85115010		0	Dínamos e alternadores	38.77	47.93	\\r
85115010	01	0	Ex 01 - Para sistema elétrico em 24V, exceto para uso em aeronáutica	33.60	42.76	\\r
85115090		0	Outros	38.77	47.93	\\r
85118010		0	Velas de aquecimento	38.77	47.93	\\r
85118020		0	Reguladores de voltagem (conjuntores-disjuntores)	38.77	47.93	\\r
85118030		0	Ignição eletrônica digital	38.77	47.11	\\r
85118090		0	Outros	38.77	47.93	\\r
85119000		0	-Partes	38.77	47.11	\\r
85121000		0	-Aparelhos de iluminação ou de sinalização visual dos tipos utilizados em bicicletas	38.77	47.93	\\r
85122011		0	Faróis	38.77	47.93	\\r
85122011	01	0	Ex 01 - Para colheitadeiras ou tratores agrícolas	29.61	38.77	\\r
85122019		0	Outros	38.77	47.93	\\r
85122021		0	Luzes fixas	38.77	47.93	\\r
85122021	01	0	Ex 01 - Lanternas para tratores agrícolas	29.61	38.77	\\r
85122022		0	Luzes indicadoras de manobras	38.77	47.93	\\r
85122023		0	Caixas de luzes combinadas	38.77	47.93	\\r
85122029		0	Outros	38.77	47.93	\\r
85123000		0	-Aparelhos de sinalização acústica	38.77	47.93	\\r
85124010		0	Limpadores de pára-brisas	38.77	47.93	\\r
85124020		0	Degeladores e desembaçadores	38.77	47.93	\\r
85129000		0	-Partes	38.77	47.11	\\r
85131010		0	Manuais	38.77	47.93	\\r
85131090		0	Outras	38.77	47.93	\\r
85139000		0	-Partes	38.77	47.11	\\r
85141010		0	Industriais	27.45	34.94	\\r
85141090		0	Outros	30.12	37.61	\\r
85142011		0	Industriais	27.45	34.94	\\r
85142019		0	Outros	30.12	37.61	\\r
85142020		0	Por perdas dielétricas	30.12	37.61	\\r
85142020	01	0	Ex 01 - Industriais	27.45	34.94	\\r
85143011		0	Industriais	27.45	34.94	\\r
85143019		0	Outros	30.12	37.61	\\r
85143021		0	Industriais	27.45	34.94	\\r
85143029		0	Outros	30.12	37.61	\\r
85143090		0	Outros	27.45	34.94	\\r
85144000		0	-Outros aparelhos para tratamento térmico de matérias por indução ou por perdas dielétricas	27.45	34.94	\\r
85149000		0	-Partes	30.12	37.61	\\r
85151100		0	--Ferros e pistolas	33.42	40.91	\\r
85151900		0	--Outros	30.75	38.24	\\r
85152100		0	--Inteira ou parcialmente automáticos	30.75	38.24	\\r
85152900		0	--Outros	30.75	38.24	\\r
85153110		0	Robôs para soldar, por arco, em atmosfera inerte (MIG - Metal Inert Gas) ou atmosfera ativa (MAG - Metal Active Gas), de comando numérico	30.75	31.35	\\r
85153190		0	Outros	30.75	38.24	\\r
85153900		0	--Outros	30.75	38.24	\\r
85158010		0	Para soldar a laser	30.75	31.35	\\r
85158090		0	Outros	30.75	38.24	\\r
85159000		0	-Partes	30.75	38.24	\\r
85161000		0	-Aquecedores elétricos de água, incluindo os de imersão	38.24	45.63	\\r
85161000	01	0	Ex 01 - Chuveiro elétrico	32.69	40.08	\\r
85162100		0	--Radiadores de acumulação	40.80	50.75	\\r
85162900		0	--Outros	40.80	50.75	\\r
85163100		0	--Secadores de cabelo	40.80	50.75	\\r
85163200		0	--Outros aparelhos para arranjos do cabelo	40.80	50.75	\\r
85163300		0	--Aparelhos para secar as mãos	40.80	50.75	\\r
85164000		0	-Ferros elétricos de passar	35.93	46.03	\\r
85165000		0	-Fornos de micro-ondas	46.91	57.45	\\r
85166000		0	-Outros fornos. fogões de cozinha, fogareiros (incluindo as chapas de cocção), grelhas e assadeiras	37.51	47.54	\\r
85166000	01	0	Ex 01 - Fogões de cozinha	34.14	44.17	\\r
85167100		0	--Aparelhos para preparação de café ou de chá	36.56	45.11	\\r
85167200		0	--Torradeiras de pão	37.93	48.61	\\r
85167910		0	Panelas	36.76	46.71	\\r
85167920		0	Fritadoras	37.46	47.41	\\r
85167990		0	Outros	43.43	53.38	\\r
85168010		0	Para aparelhos da presente posição	36.55	44.89	\\r
85168090		0	Outras	36.55	44.89	\\r
85169000		0	-Partes	36.18	43.95	\\r
85169000	01	0	Ex 01 - De fogões de cozinha	33.92	41.69	\\r
85171100		0	--Aparelhos telefônicos por fio com unidade auscultador-microfone sem fio	36.11	45.26	\\r
85171211		0	Portáteis (por exemplo, walkie talkie e handle talkie)	38.77	45.38	\\r
85171212		0	Fixos, sem fonte própria de energia, monocanais	43.43	50.04	\\r
85171213		0	Móveis, do tipo dos utilizados em veículos automóveis	43.43	50.04	\\r
85171219		0	Outros	43.43	50.04	\\r
85171221		0	Portáteis	43.43	50.04	\\r
85171222		0	Fixos, sem fonte própria de energia	43.43	45.13	\\r
85171223		0	Do tipo dos utilizados em veículos automóveis	43.43	50.04	\\r
85171229		0	Outros	43.43	50.04	\\r
85171231		0	Portáteis	38.77	47.11	\\r
85171232		0	Fixos, sem fonte própria de energia	38.77	40.47	\\r
85171233		0	Do tipo dos utilizados em veículos automóveis	38.77	45.38	\\r
85171239		0	Outros	38.77	45.38	\\r
85171241		0	Digitais, operando em banda C, Ku, L ou S	43.43	44.03	\\r
85171249		0	Outros	43.43	51.77	\\r
85171290		0	Outros	43.43	51.77	\\r
85171810		0	Interfones	36.55	46.50	\\r
85171820		0	Telefones públicos	38.77	46.26	\\r
85171891		0	Não combinados com outros aparelhos	36.55	46.50	\\r
85171899		0	Outros	36.55	46.50	\\r
85176111		0	De taxa de transmissão inferior ou igual a 112 kbits/s	38.77	40.47	\\r
85176119		0	Outras	43.43	51.77	\\r
85176120		0	De sistema troncalizado (trunking)	43.43	45.13	\\r
85176130		0	De telefonia celular	38.77	40.47	\\r
85176141		0	Principal terrena fixa, sem conjunto antena-refletor	43.43	45.13	\\r
85176142		0	VSAT (Very Small Aperture Terminal), sem conjunto antena-refletor	43.43	45.13	\\r
85176143		0	Digitais, operando em banda C, Ku, L ou S	43.43	44.03	\\r
85176149		0	Outras	43.43	51.77	\\r
85176191		0	Digitais, de frequência superior ou igual a 15 GHz e inferior ou igual a 23 GHz e taxa de transmissão inferior ou igual a 8 Mbits/s	43.43	51.77	\\r
85176192		0	Digitais, de frequência superior a 23 GHz	43.43	45.13	\\r
85176199		0	Outras	43.43	51.77	\\r
85176211		0	Multiplexadores por divisão de frequência	38.77	45.38	\\r
85176212		0	Multiplexadores por divisão de tempo, digitais síncronos, com velocidade de transmissão igual ou superior a 155 Mbits/s	38.77	46.26	\\r
85176213		0	Outros multiplexadores por divisão de tempo	38.77	46.26	\\r
85176213	01	0	Ex 01 - Moduladores OFDM (“Orthogonal Frequency Division Multiplex”), com sintaxe MPEG-TS (“MPEG-Transport Stream”), para sistemas de televisão digital terrestre	31.45	38.94	\\r
85176213	02	0	Ex 02 - Multiplexadores de sinais de áudio, vídeo e dados para sistemas de televisão digital terrestre, com entrada ASI e saída TS (“Transport Stream”)	31.45	38.94	\\r
85176214		0	Concentradores de linhas de assinantes (terminais de central ou terminal remoto)	38.77	47.11	\\r
85176219		0	Outros	38.77	47.11	\\r
85176221		0	Centrais automáticas públicas, para comutação eletrônica, incluindo as de trânsito	38.77	47.11	\\r
85176222		0	Centrais automáticas privadas, de capacidade inferior ou igual a 25 ramais	38.36	46.26	\\r
85176223		0	Centrais automáticas privadas, de capacidade superior a 25 ramais e inferior ou igual a 200 ramais	38.77	47.11	\\r
85176224		0	Centrais automáticas privadas, de capacidade superior a 200 ramais	38.77	47.11	\\r
85176229		0	Outros	38.77	47.11	\\r
85176231		0	Centrais automáticas para comutação por pacote com velocidade de tronco superior a 72 kbits/s e de comutação superior a 3.600 pacotes por segundo, sem multiplexação determinística	38.77	40.47	\\r
85176232		0	Outras centrais automáticas para comutação por pacote	38.77	47.11	\\r
85176233		0	Centrais automáticas de sistema troncalizado (trunking)	38.77	40.47	\\r
85176239		0	Outros	38.36	46.26	\\r
85176241		0	Com capacidade de conexão sem fio	43.43	51.77	\\r
85176248		0	Outros, com velocidade de interface serial de pelo menos 4 Mbits/s, próprios para interconexão de redes locais com protocolos distintos	38.77	40.47	\\r
85176249		0	Outros	38.77	45.38	\\r
85176251		0	Terminais ou repetidores sobre linhas metálicas	38.77	43.52	\\r
85176252		0	Terminais sobre linhas de fibras ópticas, com velocidade de transmissão superior a 2,5 Gbits/s	38.77	40.47	\\r
85176253		0	Terminais de texto que operem com código de transmissão Baudot, providos de teclado alfanumérico e visor, mesmo com telefone incorporado	38.77	39.37	\\r
85176254		0	Distribuidores de conexões para redes (hubs)	38.77	40.47	\\r
85176255		0	Moduladores/demoduladores (modems)	38.77	47.11	\\r
85176259		0	Outros	38.77	46.26	\\r
85176261		0	De sistema troncalizado (trunking)	42.74	49.35	\\r
85176262		0	De tecnologia celular	38.36	44.63	\\r
85176264		0	Por satélite, digitais, operando em banda C, Ku, L ou S	38.07	38.67	\\r
85176265		0	Outros, por satélite	38.07	46.41	\\r
85176271		0	Terminais portáteis de sistema bidirecional de radiomensagens, de taxa de transmissão inferior ou igual a 112 kbits/s	38.77	40.47	\\r
85176272		0	De frequência inferior a 15 GHz e de taxa de transmissão inferior ou igual a 34 Mbits/s, exceto os de sistema bidirecional de radiomensagens de taxa de transmissão inferior ou igual a 112 kbits/s	43.43	51.77	\\r
85176277		0	Outros, de frequência inferior a 15 GHz	43.43	51.77	\\r
85176278		0	De frequência superior ou igual a 15 GHz, mas inferior ou igual a 23 GHz e taxa de transmissão inferior ou igual a 8 Mbit/s	43.43	51.77	\\r
85176279		0	Outros	43.43	45.13	\\r
85176291		0	Aparelhos transmissores (emissores)	38.77	45.38	\\r
85176292		0	Receptores pessoais de radiomensagens com apresentação alfanumérica da mensagem em visor	38.77	40.47	\\r
85176293		0	Outros receptores pessoais de radiomensagens	38.77	45.38	\\r
85176294		0	Tradutores (conversores) de protocolos para interconexão de redes (gateways)	38.77	47.11	\\r
85176295		0	Terminais fixos, analógicos, sem fonte própria de energia, monocanais	43.43	50.04	\\r
85176296		0	Outros, analógicos	43.43	50.04	\\r
85176299		0	Outros	40.80	50.75	\\r
85176900		0	--Outros	38.77	46.26	\\r
85177010		0	Circuitos impressos com componentes elétricos ou eletrônicos, montados	38.77	45.38	\\r
85177021		0	Antenas próprias para telefones celulares portáteis, exceto as telescópicas	33.97	35.60	\\r
85177029		0	Outras	36.55	44.89	\\r
85177091		0	Gabinetes, bastidores e armações	36.55	41.30	\\r
85177092		0	Registradores e seletores para centrais automáticas	36.55	41.30	\\r
85177099		0	Outras	36.55	41.30	\\r
85181010		0	Piezelétricos próprios para aparelhos telefônicos	34.12	35.82	\\r
85181090		0	Outros	38.77	48.72	\\r
85182100		0	--Alto-falante (altifalante) único montado no seu receptáculo	38.77	48.72	\\r
85182200		0	--Alto-falantes (altifalantes) múltiplos montados no mesmo receptáculo	38.77	48.72	\\r
85182910		0	Piezelétricos próprios para aparelhos telefônicos	34.12	35.82	\\r
85182990		0	Outros	38.77	48.72	\\r
85183000		0	-Fones de ouvido, mesmo combinados com um microfone, e conjuntos ou sortidos constituídos por um microfone e um ou mais alto-falantes (altifalantes)	38.77	48.72	\\r
85184000		0	-Amplificadores elétricos de audiofrequência	38.77	48.72	\\r
85185000		0	-Aparelhos elétricos de amplificação de som	38.77	48.72	\\r
85189010		0	De alto-falantes (altifalantes)	38.77	47.11	\\r
85189090		0	Outras	38.77	47.11	\\r
85192000		0	-Aparelhos que funcionem por introdução de moedas, papéis-moeda, cartões de banco, fichas ou por outros meios de pagamento	42.67	52.62	\\r
85193000		0	-Toca-discos sem dispositivos de amplificação de som	44.40	54.35	\\r
85195000		0	-Secretárias eletrônicas	42.67	52.62	\\r
85198110		0	Com sistema de leitura óptica por laser (leitores de discos compactos)	44.40	54.35	\\r
85198120		0	Gravadores de som de cabines de aeronaves	42.67	43.27	\\r
85198190		0	Outros	44.08	55.20	\\r
85198190	01	0	Ex 01 - Aparelho gravador de som para cinema, utilizando fita magnética em rolo aberto ou cartucho selado, registrando ao mesmo tempo, em pista de som auxiliar, um sinal de referência de sincronismo para possibilitar a reprodução sincrônica, em tempo real	31.45	42.57	\\r
85198190	02	0	Ex 02 -  Toca-fitas	46.02	57.14	\\r
85198190	03	0	Ex 03 -  Aparelhos de gravação e de reprodução de som, de fitas magnética	46.02	57.14	\\r
85198900		0	--Outros	42.67	52.62	\\r
85198900	01	0	Ex 01 - Aparelhos cinematográficos de reprodução de som	40.01	49.96	\\r
85211010		0	Gravador-reprodutor, sem sintonizador	42.67	43.27	\\r
85211081		0	Em cassete, de largura de fita igual a 12,65 mm (1/2”)	42.67	52.62	\\r
85211089		0	Outros	42.67	52.62	\\r
85211090		0	Outros, para fitas de largura superior ou igual a 19,05 mm (3/4”)	42.67	43.27	\\r
85219010		0	Gravador-reprodutor e editor de imagem e som, em discos, por meio magnético, óptico ou optomagnético	34.12	34.72	\\r
85219090		0	Outros	38.77	48.72	\\r
85219090	01	0	Ex 01 - Aparelho de gravação ou reprodução, e edição, de imagem e som de televisão em disco rígido, por meio magnético, óptico ou optomagnético	31.45	41.40	\\r
85219090	02	0	Ex 02 - Aparelhos de reprodução de imagem e som em disco por meio óptico ou optomagnético	42.67	52.62	\\r
85221000		0	-Fonocaptores	42.67	51.83	\\r
85229010		0	Agulhas com ponta de pedra preciosa	42.67	51.01	\\r
85229020		0	Gabinetes	42.67	51.01	\\r
85229030		0	Chassis ou suportes	42.67	51.01	\\r
85229040		0	Leitores de som, magnéticos (cabeças magnéticas)	42.67	51.01	\\r
85229050		0	Mecanismos toca-discos, mesmo com cambiador	42.67	51.01	\\r
85229090		0	Outros	42.67	51.01	\\r
85232110		0	Não gravados	38.07	46.41	\\r
85232120		0	Gravados	38.07	46.41	\\r
85232911		0	Dos tipos utilizados em unidades de discos rígidos	33.42	34.02	\\r
85232919		0	Outros	38.07	46.41	\\r
85232921		0	De largura não superior a 4 mm, em cassetes	41.98	50.32	\\r
85232922		0	De largura superior a 4 mm mas inferior ou igual a 6,5 mm	41.98	50.32	\\r
85232923		0	De largura superior a 6,5 mm mas inferior ou igual a 50,8 mm (2”), em rolos ou carretéis	41.98	50.32	\\r
85232924		0	De largura superior a 6,5 mm, em cassetes para gravação de vídeo	41.98	50.32	\\r
85232929		0	Outras	41.98	50.32	\\r
85232931		0	Para reprodução de fenômenos diferentes do som ou da imagem	38.07	46.41	\\r
85232932		0	De largura não superior a 4 mm, em cartuchos ou cassetes, exceto as do subitem 8523.29.31	38.07	46.41	\\r
85232932	01	0	Ex  01 - Gravadas com matéria didática	30.75	39.09	\\r
85232932	02	0	Ex 02 - Para gravação simultânea de imagem e som, próprias para televisão (vídeo-tape), gravadas com matéria de natureza científica ou educativa	33.42	41.76	\\r
85232933		0	De largura superior a 6,5 mm, exceto as do subitem 8523.29.31	38.07	46.41	\\r
85232933	01	0	Ex  01 - Gravadas com matéria didática, em cartuchos ou cassetes	30.75	39.09	\\r
85232933	02	0	Ex 02 - Para gravação simultânea de imagem e som, próprias para televisão (vídeo-tape), gravadas com matéria de natureza científica ou educativa, em cartuchos, cassetes e semelhantes	33.42	41.76	\\r
85232939		0	Outras	38.07	46.41	\\r
85232939	01	0	Ex  01 - Gravadas com matéria didática, apresentadas em artefatos semelhantes a cartuchos ou cassetes	30.75	39.09	\\r
85232939	02	0	Ex  02 - Gravadas com matéria didática, em cartuchos ou cassetes	30.75	39.09	\\r
85232939	03	0	Ex 03 - Para gravação simultânea de imagem e som, próprias para televisão (vídeo-tape), gravadas com matéria de natureza científica ou educativa, apresentadas em artefatos semelhantes a cartuchos ou cassetes	33.42	41.76	\\r
85232990		0	Outros	38.07	46.41	\\r
85234110		0	Discos para sistema de leitura por raios laser com possibilidade de serem gravados uma única vez	38.07	46.41	\\r
85234190		0	Outros	38.07	46.41	\\r
85234910		0	Para reprodução apenas do som	38.07	46.41	\\r
85234920		0	Para reprodução de fenômenos diferentes do som ou da imagem	38.07	46.41	\\r
85234990		0	Outros	38.07	46.41	\\r
85235110		0	Cartões de memória (memory cards)	38.07	39.77	\\r
85235110	01	0	Ex 01 - Das máquinas da posição 84.71	35.85	37.55	\\r
85235110	02	0	Ex 02 - Que possam ser utilizados indiferentemente com as máquinas ou aparelhos de duas ou mais das posições 84.69 a 84.72	31.85	33.55	\\r
85235190		0	Outros	38.07	46.41	\\r
85235200		0	--“Cartões inteligentes”	33.42	37.19	\\r
85235910		0	Cartões e etiquetas de acionamento por aproximação	35.85	42.46	\\r
85235990		0	Outros	38.07	46.41	\\r
85238000		0	-Outros	38.07	46.41	\\r
85255011		0	Em AM, com modulação por código ou largura de pulso, totalmente a semicondutor e com potência de saída superior a 10 kW	38.77	39.37	\\r
85255012		0	Em FM, com etapa de saída valvular e potência superior a 30 kW	38.77	39.37	\\r
85255019		0	Outros	38.77	45.38	\\r
85255021		0	De frequência superior a 7 GHz	38.77	39.37	\\r
85255022		0	Em banda UHF, de frequência superior ou igual a 2,0 GHz e inferior ou igual a 2,7 GHz, com potência de saída superior ou igual a 10 W e inferior ou igual a 100 W	38.77	39.37	\\r
85255023		0	Em banda UHF, com potência de saída superior a 10 kW	38.77	39.37	\\r
85255024		0	Em banda VHF, com potência de saída superior ou igual a 20 kW	38.77	39.37	\\r
85255029		0	Outros	38.77	45.38	\\r
85255029	01	0	Ex 01 - Transmissores digitais de televisão, em VHF ou UHF, com potência maior ou igual a 1 kW e intermodulação maior que 36 dB	31.45	38.06	\\r
85255029	02	0	Ex 02 - Sistema irradiante configurável, dedicado à transmissão de sinais de televisão digitais na faixa de freqüência de VHF e/ou UHF, com potências irradiadas de até 1MW RMS e constituídos por: antenas, cabos e/ou linhas rígidas de alimentação, combinad	31.45	38.06	\\r
85256010		0	De radiodifusão	38.77	45.38	\\r
85256010	01	0	Ex 01 - Transmissores-receptores (transceptores) de rádio digital para televisão digital terrestre, com interfaces digitais “DVB-ASI” e/ou “ISDB-T clock data”	31.45	38.06	\\r
85256020		0	De televisão, de frequência superior a 7 GHz	38.77	39.37	\\r
85256020	01	0	Ex 01 - Transmissores-receptores (transceptores) de sinal de televisão digital através de fibra ótica	31.45	32.05	\\r
85256090		0	Outros	38.77	45.38	\\r
85256090	01	0	Ex 01 - Equipamento de sinalização, controle e/ou corte (“slicer”) do fluxo de dados MPEG	31.45	38.06	\\r
85258011		0	Com três ou mais captadores de imagem	40.80	41.40	\\r
85258012		0	Com sensor de imagem a semicondutor tipo CCD, de mais de 490 x 580 elementos de imagem (pixels) ativos, sensíveis a intensidades de iluminação inferiores a 0,20 lux	40.80	41.40	\\r
85258013		0	Outras, próprias para captar imagens exclusivamente no espectro infravermelho de comprimento de onda superior ou igual a 2 micrômetros (mícrons) e inferior ou igual a 14 micrômetros (mícrons)	40.80	41.40	\\r
85258019		0	Outras	40.80	50.75	\\r
85258019	01	0	Ex 01 - Lupa eletrônica do tipo utilizado por pessoas com deficiência visual	22.20	32.15	\\r
85258021		0	Com três ou mais captadores de imagem	40.80	41.40	\\r
85258022		0	Outras, próprias para captar imagens exclusivamente no espectro infravermelho de comprimento de onda superior ou igual a 2 micrômetros (mícrons) e inferior ou igual a 14 micrômetros (mícrons)	40.80	41.40	\\r
85258029		0	Outras	39.69	48.53	\\r
85261000		0	-Aparelhos de radiodetecção e de radiossondagem (radar)	40.80	41.40	\\r
85269100		0	--Aparelhos de radionavegação	40.80	41.40	\\r
85269200		0	--Aparelhos de radiotelecomando	40.80	49.96	\\r
85271200		0	--Rádios toca-fitas de bolso	40.80	50.75	\\r
85271310		0	Com toca-fitas	40.80	50.75	\\r
85271320		0	Com toca-fitas e gravador	40.80	50.75	\\r
85271330		0	Com toca-fitas, gravador e toca-discos	40.80	50.75	\\r
85271390		0	Outros	40.80	50.75	\\r
85271910		0	Combinado com relógio	40.80	50.75	\\r
85271990		0	Outros	40.80	50.75	\\r
85272110		0	Com toca-fitas	36.55	46.50	\\r
85272190		0	Outros	36.55	46.50	\\r
85272900		0	--Outros	36.55	46.50	\\r
85279110		0	Com toca-fitas e gravador	40.80	50.75	\\r
85279120		0	Com toca-fitas, gravador e toca-discos	40.80	50.75	\\r
85279190		0	Outros	40.80	50.75	\\r
85279200		0	--Não combinados com um aparelho de gravação ou de reprodução de som, mas combinados com um relógio	40.80	50.75	\\r
85279910		0	Amplificador com sintonizador (receiver)	40.80	50.75	\\r
85279990		0	Outros	40.80	50.75	\\r
85284110		0	Monocromáticos	38.77	47.11	\\r
85284120		0	Policromáticos	38.77	47.11	\\r
85284910		0	Monocromáticos	40.80	50.75	\\r
85284921		0	Com dispositivos de seleção de varredura (underscanning) e de retardo de sincronismo horizontal e vertical (H/V delay ou pulse cross)	40.80	49.14	\\r
85284929		0	Outros	40.24	49.63	\\r
85285110		0	Monocromáticos	38.77	45.38	\\r
85285120		0	Policromáticos	38.77	45.38	\\r
85285910		0	Monocromáticos	40.80	50.75	\\r
85285920		0	Policromáticos	40.24	49.63	\\r
85286100		0	--Dos tipos exclusiva ou principalmente utilizados num sistema automático para processamento de dados da posição 84.71	38.32	46.19	\\r
85286910		0	Com tecnologia de dispositivo digital de microespelhos (DMD - Digital Micromirror Device)	40.80	41.40	\\r
85286990		0	Outros	40.80	50.75	\\r
85287111		0	Sem saída de radiofrequência (RF) modulada nos canais 3 ou 4, com saídas de áudio balanceadas com impedância de 600 Ohms, próprio para montagem em racks e com saída de vídeo com conector BNC	34.12	34.72	\\r
85287119		0	Outros	34.12	44.07	\\r
85287190		0	Outros	40.80	50.75	\\r
85287200		0	--Outros, a cores (policromo)	40.80	50.75	\\r
85287300		0	--Outros, a preto e branco ou outros monocromos	40.80	50.75	\\r
85291011		0	Com refletor parabólico	36.55	44.89	\\r
85291019		0	Outras	36.55	44.89	\\r
85291090		0	Outros	36.55	44.89	\\r
85299011		0	Gabinetes e bastidores	36.55	41.30	\\r
85299012		0	Circuitos impressos com componentes elétricos ou eletrônicos, montados	38.77	45.38	\\r
85299019		0	Outras	36.55	41.30	\\r
85299019	01	0	Ex 01 - Codificadores para sinais de áudio, vídeo de alta definição MPEG-2 e/ou MPEG-4 (protocolo H.264) para sistema de transmissão de sinais de televisão digital terrestre	31.45	36.20	\\r
85299020		0	De aparelhos das posições 85.27 ou 85.28	36.55	43.16	\\r
85299030		0	De aparelhos da subposição 8526.10	36.55	37.15	\\r
85299040		0	De aparelhos da subposição 8526.91	36.55	37.15	\\r
85299090		0	Outras	36.55	44.89	\\r
85301010		0	Digitais, para controle de tráfego	38.77	46.26	\\r
85301090		0	Outros	34.12	41.61	\\r
85308010		0	Digitais, para controle de tráfego de automotores	38.77	46.26	\\r
85308090		0	Outros	36.55	44.04	\\r
85309000		0	-Partes	36.55	44.04	\\r
85311010		0	Alarmes contra incêndio ou sobreaquecimento	38.07	47.23	\\r
85311090		0	Outros	38.07	47.23	\\r
85312000		0	-Painéis indicadores com dispositivos de cristais líquidos (LCD) ou de diodos emissores de luz (LED)	38.07	44.68	\\r
85312000	01	0	Ex 01 - Quadro de sinalização, próprio para dar informações relativas à venda de mercadorias, constituído de painel eletrônico e respectivos dispositivos de comando e controle (unidade funcional)	30.75	37.36	\\r
85318000		0	-Outros aparelhos	38.07	47.23	\\r
85319000		0	-Partes	38.07	46.41	\\r
85321000		0	-Condensadores fixos concebidos para linhas elétricas de 50/60 Hz e capazes de absorver uma potência reativa igual ou superior a 0,5 kvar (condensadores de potência)	31.45	39.79	\\r
85322111		0	Com tensão de isolação inferior ou igual a 125 V	32.55	33.15	\\r
85322119		0	Outros	32.55	40.89	\\r
85322190		0	Outros	36.55	44.89	\\r
85322200		0	--Eletrolíticos de alumínio	36.55	44.89	\\r
85322310		0	Próprios para montagem em superfície (SMD - Surface Mounted Device)	33.42	41.76	\\r
85322390		0	Outros	36.55	44.89	\\r
85322410		0	Próprios para montagem em superfície (SMD - Surface Mounted Device)	31.85	40.19	\\r
85322490		0	Outros	36.55	44.89	\\r
85322510		0	Próprios para montagem em superfície (SMD - Surface Mounted Device)	31.85	40.19	\\r
85322590		0	Outros	36.55	44.89	\\r
85322910		0	Próprios para montagem em superfície (SMD - Surface Mounted Device)	31.85	40.19	\\r
85322990		0	Outros	36.55	44.89	\\r
85323010		0	Próprios para montagem em superfície (SMD - Surface Mounted Device)	31.85	40.19	\\r
85323090		0	Outros	36.55	44.89	\\r
85329000		0	-Partes	36.55	44.04	\\r
85331000		0	-Resistências fixas de carbono, aglomeradas ou de camada	35.85	44.19	\\r
85332110		0	De fio	35.85	44.19	\\r
85332120		0	Próprias para montagem em superfície (SMD - Surface Mounted Device)	31.85	40.19	\\r
85332190		0	Outras	35.85	44.19	\\r
85332900		0	--Outras	35.85	44.19	\\r
85333110		0	Potenciômetros	35.85	44.19	\\r
85333190		0	Outras	35.85	44.19	\\r
85333910		0	Potenciômetros	35.85	44.19	\\r
85333990		0	Outras	35.85	44.19	\\r
85334011		0	Termistores	35.85	44.19	\\r
85334012		0	Varistores	35.85	44.19	\\r
85334019		0	Outras	35.85	44.19	\\r
85334091		0	Potenciômetro de carvão, do tipo dos utilizados para determinar o ângulo de abertura da borboleta, em sistemas de injeção de combustível controlados eletronicamente	35.85	37.55	\\r
85334092		0	Outros potenciômetros de carvão	35.85	44.19	\\r
85334099		0	Outras	35.85	44.19	\\r
85339000		0	-Partes	35.85	43.34	\\r
85340011		0	Com isolante de resina fenólica e papel celulósico	35.85	41.55	\\r
85340012		0	Com isolante de resina epóxida e papel celulósico	35.85	41.55	\\r
85340013		0	Com isolante de resina epóxida e tecido de fibra de vidro	35.85	41.55	\\r
85340019		0	Outros	35.85	41.55	\\r
85340020		0	Simples face, flexíveis	35.85	41.55	\\r
85340031		0	Com isolante de resina fenólica e papel celulósico	35.85	41.55	\\r
85340032		0	Com isolante de resina epóxida e papel celulósico	35.85	41.55	\\r
85340033		0	Com isolante de resina epóxida e tecido de fibra de vidro	35.85	41.55	\\r
85340039		0	Outros	35.85	41.55	\\r
85340040		0	Dupla face, flexíveis	35.85	41.55	\\r
85340051		0	Com isolante de resina epóxida e tecido de fibra de vidro	35.85	41.55	\\r
85340059		0	Outros	35.85	41.55	\\r
85351000		0	-Fusíveis e corta-circuitos de fusíveis	31.45	39.79	\\r
85352100		0	--Para uma tensão inferior a 72,5 kV	34.12	42.46	\\r
85352900		0	--Outros	31.45	39.79	\\r
85353013		0	Interruptores a vácuo, sem dispositivo de acionamento (ampolas a vácuo)	34.12	35.82	\\r
85353017		0	Outros, com dispositivo de acionamento não automático	34.12	42.46	\\r
85353018		0	Outros, com dispositivo de acionamento automático, exceto os de contatos imersos em meio líquido	34.12	42.46	\\r
85353019		0	Outros	34.12	42.46	\\r
85353023		0	Interruptores a vácuo, sem dispositivo de acionamento (ampolas a vácuo)	31.45	33.15	\\r
85353027		0	Outros, com dispositivo de acionamento não automático	31.45	39.79	\\r
85353028		0	Outros, com dispositivo de acionamento automático, exceto os de contatos imersos em meio líquido	31.45	39.79	\\r
85353029		0	Outros	31.45	39.79	\\r
85354010		0	Pára-raios para proteção de linhas de transmissão de eletricidade	31.45	39.79	\\r
85354090		0	Outros	31.45	39.79	\\r
85359000		0	-Outros	34.12	42.46	\\r
85361000		0	-Fusíveis e corta-circuitos de fusíveis	38.77	47.11	\\r
85362000		0	-Disjuntores	38.77	47.93	\\r
85363000		0	-Outros aparelhos para proteção de circuitos elétricos	38.77	47.11	\\r
85409120		0	Núcleos de pó ferromagnético para bobinas de deflexão (yokes)	36.55	38.25	\\r
85363000	01	0	Ex 01 - Dispositivos de transientes de tensão, para proteção de transmissores, de potência igual ou superior a 20kW	34.12	42.46	\\r
85364100		0	--Para uma tensão não superior a 60 V	34.12	42.46	\\r
85364900		0	--Outros	34.12	42.46	\\r
85365010		0	Unidade chaveadora de conversor de subida e descida para sistema de telecomunicações via satélite	35.85	37.55	\\r
85365020		0	Unidade chaveadora de amplificador de alta potência (HPA) para sistema de telecomunicações via satélite	35.85	37.55	\\r
85365030		0	Comutadores codificadores digitais, próprios para montagem em circuitos impressos	31.85	32.45	\\r
85365090		0	Outros	38.07	46.41	\\r
85365090	01	0	Ex 01 - Interruptor de embutir ou sobrepor, rotativo ou de alavanca, para sistema elétrico em 24V, próprio para ônibus ou caminhões	32.91	41.25	\\r
85365090	02	0	Ex 02 - Chaves de faca	33.42	41.76	\\r
85366100		0	--Suportes para lâmpadas	38.77	47.11	\\r
85366910		0	Tomada polarizada e tomada blindada	38.77	47.11	\\r
85366990		0	Outros	38.77	47.11	\\r
85367000		0	-Conectores para fibras ópticas, feixes ou cabos de fibras ópticas	38.77	47.11	\\r
85369010		0	Conectores para cabos planos constituídos por condutores paralelos isolados individualmente	38.77	47.11	\\r
85369020		0	Tomadas de contato deslizante em condutores aéreos	38.77	47.11	\\r
85369030		0	Soquetes para microestruturas eletrônicas	36.55	44.89	\\r
85369040		0	Conectores para circuito impresso	35.85	41.55	\\r
85369050		0	Terminais de conexão para capacitores, mesmo montados em suporte isolante	38.77	40.47	\\r
85369090		0	Outros	38.77	47.11	\\r
85371011		0	Com processador e barramento de 32 bits ou superior, incorporando recursos gráficos e execução de macros, resolução inferior ou igual a 1 micrômetro e capacidade de conexão digital para servo-acionamento, com monitor policromático	38.07	39.77	\\r
85371019		0	Outros	38.07	45.56	\\r
85371020		0	Controladores programáveis	38.07	45.56	\\r
85371030		0	Controladores de demanda de energia elétrica	38.07	45.56	\\r
85371090		0	Outros	38.77	47.93	\\r
85372010		0	Subestações isoladas a gás (GIS - Gas-Insulated Switchgear ou HIS - Highly Integrated Switchgear), para uma tensão superior a 52 kV	31.45	32.05	\\r
85372090		0	Outros	31.45	40.61	\\r
85381000		0	-Quadros, painéis, consoles, cabinas, armários e outros suportes, da posição 85.37, desprovidos dos seus aparelhos	38.77	47.11	\\r
85389010		0	Circuitos impressos com componentes elétricos ou eletrônicos, montados	38.77	45.38	\\r
85389020		0	De disjuntores, para uma tensão superior ou igual a 72,5 kV	38.77	40.47	\\r
85389090		0	Outras	38.77	47.11	\\r
85391010		0	Para uma tensão inferior ou igual a 15 V	38.77	47.93	\\r
85391090		0	Outros	38.77	47.93	\\r
85392110		0	Para uma tensão inferior ou igual a 15 V	38.77	47.93	\\r
85392110	01	0	Ex 01 - Lâmpadas dicróicas	40.80	49.96	\\r
85392190		0	Outros	38.77	47.93	\\r
85392190	01	0	Ex 01 - Lâmpadas dicróicas	40.80	49.96	\\r
85392200		0	--Outros, de potência não superior a 200 W e uma tensão superior a 100 V	38.77	47.93	\\r
85392200	01	0	Ex 01 - Lâmpadas incandescentes, de tensão superior a 100V	40.80	49.96	\\r
85392910		0	Para uma tensão inferior ou igual a 15 V	38.77	47.93	\\r
85392910	01	0	Ex 01 - Para iluminação e projeção, de temperatura de cor superior a 3.000°K, exclusivamente para cinematografia, cinema e atividades semelhantes, em qualquer base	31.45	40.61	\\r
85392990		0	Outros	38.77	47.93	\\r
85392990	01	0	Ex 01 - Para iluminação e projeção, de temperatura de cor superior a 3.000°K, exclusivamente para cinematografia, cinema e atividades semelhantes, em qualquer base	31.45	40.61	\\r
85392990	02	0	Ex 02 - Lâmpadas incandescentes, de tensão superior a 100V	40.80	49.96	\\r
85393100		0	--Fluorescentes, de cátodo quente	38.77	47.93	\\r
85393100	01	0	Ex 01 - De descarga em baixa pressão, de base única, com ou sem reator eletrônico incorporado, com eficiência superior a 40 lúmens/W (lâmpada fluorescente compacta)	31.45	40.61	\\r
85393200		0	--Lâmpadas de vapor de mercúrio ou de sódio. lâmpadas de halogeneto metálico	38.77	47.93	\\r
85393200	01	0	Ex 01 - De vapor de sódio, de alta pressão	31.45	40.61	\\r
85393900		0	--Outros	38.77	47.93	\\r
85393900	01	0	Ex 01 - Lâmpadas mistas	48.87	58.03	\\r
85394110		0	De potência superior ou igual a 1.000 W	38.77	40.47	\\r
85394190		0	Outras	38.77	47.93	\\r
85394900		0	--Outros	38.77	47.93	\\r
85399010		0	Eletrodos	38.77	46.26	\\r
85399020		0	Bases	38.77	46.26	\\r
85399090		0	Outras	38.77	46.26	\\r
85401100		0	--A cores (policromo)	36.55	45.71	\\r
85401200		0	--A preto e branco ou outros monocromos	36.55	45.71	\\r
85402011		0	Em preto e branco ou outros monocromos	27.30	36.46	\\r
85402019		0	Outros	27.30	27.90	\\r
85402020		0	Tubos conversores ou intensificadores de imagens, de raios X	36.55	37.15	\\r
85402090		0	Outros	36.55	37.15	\\r
85404000		0	-Tubos de visualização de dados gráficos, em monocromos. tubos de visualização de dados gráficos, a cores (policromo), com uma tela fosfórica de espaçamento entre os pontos inferior a 0,4 mm	36.55	37.15	\\r
85406010		0	Tubos de visualização de dados gráficos, em cores, com uma tela de espaçamento entre os pontos superior ou igual a 0,4 mm	36.55	41.30	\\r
85406090		0	Outros	36.55	45.71	\\r
85407100		0	--Magnétrons	36.55	45.71	\\r
85407900		0	--Outros	36.55	45.71	\\r
85408100		0	--Tubos de recepção ou de amplificação	36.55	45.71	\\r
85408910		0	Válvulas de potência para transmissores	36.55	37.15	\\r
85408990		0	Outros	36.55	45.71	\\r
85409110		0	Bobinas de deflexão (yokes)	36.55	44.89	\\r
85409130		0	Canhões eletrônicos	36.55	44.89	\\r
85409140		0	Painel de vidro, máscara de sombra e blindagem interna, reunidos, para tubos tricromáticos	36.55	44.89	\\r
85409190		0	Outras	36.55	38.25	\\r
85409900		0	--Outras	36.55	44.89	\\r
85411011		0	Zener	31.85	32.45	\\r
85411012		0	Outros, de intensidade de corrente inferior ou igual a 3 A	33.42	34.02	\\r
85411019		0	Outros	33.42	37.19	\\r
85411021		0	Zener	31.85	32.45	\\r
85411022		0	Outros, de intensidade de corrente inferior ou igual a 3 A	31.85	35.62	\\r
85411029		0	Outros	31.85	35.62	\\r
85411091		0	Zener	31.85	32.45	\\r
85411092		0	Outros, de intensidade de corrente inferior ou igual a 3 A	31.85	35.62	\\r
85411099		0	Outros	33.42	37.19	\\r
85412110		0	Não montados	31.85	32.45	\\r
85412120		0	Montados, próprios para montagem em superfície (SMD - Surface Mounted Device)	31.85	35.62	\\r
85412191		0	De efeito de campo, com junção heterogênea (HJFET ou HEMT)	31.85	32.45	\\r
85412199		0	Outros	31.85	35.62	\\r
85412910		0	Não montados	31.85	32.45	\\r
85412920		0	Montados	31.85	32.45	\\r
85413011		0	De intensidade de corrente inferior ou igual a 3 A	31.85	32.45	\\r
85413019		0	Outros	33.42	37.19	\\r
85413021		0	De intensidade de corrente inferior ou igual a 3 A	33.42	37.19	\\r
85413029		0	Outros	33.42	37.19	\\r
85414011		0	Diodos emissores de luz (LED), exceto diodos laser	33.42	34.02	\\r
85414012		0	Diodos laser	31.85	32.45	\\r
85414013		0	Fotodiodos	31.85	32.45	\\r
85414014		0	Fototransistores	31.85	32.45	\\r
85414015		0	Fototiristores	31.85	32.45	\\r
85414016		0	Células solares	30.75	36.45	\\r
85414019		0	Outros	31.85	35.62	\\r
85414021		0	Diodos emissores de luz (LED), exceto diodos laser, próprios para montagem em superfície (SMD - Surface Mounted Device)	31.85	32.45	\\r
85414022		0	Outros diodos emissores de luz (LED), exceto diodos laser	31.85	35.62	\\r
85414023		0	Diodos laser com comprimento de onda de 1.300 nm ou 1.500 nm	33.42	34.02	\\r
85414024		0	Outros diodos laser	31.85	37.55	\\r
85414025		0	Fotodiodos, fototransistores e fototiristores	31.85	32.45	\\r
85414026		0	Fotorresistores	31.85	35.62	\\r
85414027		0	Acopladores óticos, próprios para montagem em superfície (SMD - Surface Mounted Device)	31.85	32.45	\\r
85414029		0	Outros	31.85	35.62	\\r
85414031		0	Fotodiodos	35.85	42.46	\\r
85414032		0	Células solares	30.75	37.36	\\r
85414039		0	Outras	35.85	42.46	\\r
85415010		0	Não montados	33.42	37.19	\\r
85415020		0	Montados	33.42	37.19	\\r
85416010		0	De quartzo, de frequência superior ou igual a 1 MHz, mas inferior ou igual a 100 MHz	33.42	37.19	\\r
85416090		0	Outros	33.42	37.19	\\r
85419010		0	Suportes-conectores apresentados em tiras (lead frames)	31.85	32.45	\\r
85419020		0	Coberturas para encapsulamento (cápsulas)	31.85	32.45	\\r
85419090		0	Outras	31.85	32.45	\\r
85423110		0	Não montados	31.85	32.45	\\r
85423110	01	0	Ex 01 - Obtidos por tecnologia bipolar	33.42	34.02	\\r
85423120		0	Montados, próprios para montagem em superfície (SMD - Surface Mounted Device)	31.85	32.45	\\r
85423190		0	Outros	31.85	32.45	\\r
85423210		0	Não montadas	31.85	32.45	\\r
85423210	01	0	Ex 01 - Obtidos por tecnologia bipolar	33.42	34.02	\\r
85423221		0	Dos tipos RAM estáticas (SRAM) com tempo de acesso inferior ou igual a 25 ns, EPROM, EEPROM, PROM, ROM e FLASH	33.42	34.02	\\r
85423229		0	Outras	33.42	38.17	\\r
85423291		0	Dos tipos RAM estáticas (SRAM) com tempo de acesso inferior ou igual a 25 ns, EPROM, EEPROM, PROM, ROM e FLASH	33.42	34.02	\\r
85423299		0	Outras	33.42	38.17	\\r
85423299	01	0	Ex 01 - De óxido metálico	31.85	36.60	\\r
85423311		0	De espessura de camada inferior ou igual a 1 micrômetro (mícron) com frequência de operação superior ou igual a 800 MHz	35.85	36.45	\\r
85423319		0	Outros	35.85	42.46	\\r
85423320		0	Outros, não montados	31.85	32.45	\\r
85423390		0	Outros	33.42	37.19	\\r
85423911		0	De espessura de camada inferior ou igual a 1 micrômetro (mícron) com frequência de operação superior ou igual a 800 MHz	35.85	36.45	\\r
85423919		0	Outros	35.85	42.46	\\r
85423920		0	Outros, não montados	31.85	32.45	\\r
85423920	01	0	Ex 01 - Obtidos por tecnologia bipolar	33.42	34.02	\\r
85423931		0	Circuitos do tipo chipset	31.85	32.45	\\r
85423939		0	Outros	33.42	37.19	\\r
85423991		0	Circuitos do tipo chipset	31.85	32.45	\\r
85423999		0	Outros	33.42	37.19	\\r
85429010		0	Suportes-conectores apresentados em tiras (lead frames)	31.85	32.45	\\r
85429020		0	Coberturas para encapsulamento (cápsulas)	31.85	32.45	\\r
85429090		0	Outras	31.85	32.45	\\r
85431000		0	-Aceleradores de partículas	35.85	36.45	\\r
85432000		0	-Geradores de sinais	33.42	40.91	\\r
85432000	01	0	Ex 01 - Geradores de sinais de teste e referência de vídeo nos padrões SDI e HD-SDI, com capacidade de geração de diferentes sinais de teste, dentre eles o “color bars” e “zoneplate”	30.75	38.24	\\r
85433000		0	-Máquinas e aparelhos de galvanoplastia, eletrólise ou eletroforese	30.75	38.24	\\r
85437011		0	Para transmissão de sinais de micro-ondas de alta potência (HPA), a válvula TWT do tipo Phase Combiner, com potência de saída superior a 2,7 kW	35.85	37.55	\\r
85437011	01	0	Ex 01 - De média ou de alta freqüência	40.10	41.80	\\r
86031000		0	-De fonte externa de eletricidade	31.45	38.94	\\r
85437012		0	Para recepção de sinais de micro-ondas de baixo ruído (LNA) na banda de 3.600 a 4.200 MHz, com temperatura menor ou igual a 55 Kelvin, para telecomunicações via satélite	35.85	37.55	\\r
85437012	01	0	Ex 01 - De média ou de alta freqüência	40.10	41.80	\\r
85437013		0	Para distribuição de sinais de televisão	35.85	42.46	\\r
85437013	01	0	Ex 01 - De média ou de alta freqüência	40.10	46.71	\\r
85437014		0	Outros para recepção de sinais de micro-ondas	35.85	42.46	\\r
85437014	01	0	Ex 01 - De média ou de alta freqüência	40.10	46.71	\\r
85437015		0	Outros para transmissão de sinais de micro-ondas	35.85	42.46	\\r
85437015	01	0	Ex 01 - De média ou de alta freqüência	40.10	46.71	\\r
85437019		0	Outros	35.85	42.46	\\r
85437019	01	0	Ex 01 - De média ou de alta freqüência	40.10	46.71	\\r
85437020		0	Aparelhos para eletrocutar insetos	35.85	45.01	\\r
85437031		0	Geradores de efeitos especiais com manipulação em 2 ou 3 dimensões, mesmo combinados com dispositivo de comutação, de mais de 10 entradas de áudio ou de vídeo	35.85	36.45	\\r
85437032		0	Geradores de caracteres, digitais	35.85	36.45	\\r
85437033		0	Sincronizadores de quadro armazenadores ou corretores de base de tempo	35.85	36.45	\\r
85437034		0	Controladores de edição	35.85	36.45	\\r
85437035		0	Misturador digital, em tempo real, com oito ou mais entradas	35.85	36.45	\\r
85437036		0	Roteador-comutador (routing switcher) de mais de 20 entradas e mais de 16 saídas, de áudio ou de vídeo	35.85	36.45	\\r
85437036	01	0	Ex 01 - Roteadores-comutadores (“trouting switcher”), contendo mais de 20 entradas e mais de 16 saídas de áudio e/ou vídeo, com interface de entrada de vídeo SDI e HD-SDI e saídas em SDI e HD-SDI, entradas de áudio analógico e/ou digital ou capacidade par	30.75	31.35	\\r
85437039		0	Outros	35.85	42.46	\\r
85437040		0	Transcodificadores ou conversores de padrões de televisão	35.85	36.45	\\r
85437050		0	Simulador de antenas para transmissores com potência igual ou superior a 25 kW (carga fantasma)	35.85	36.45	\\r
85437091		0	Terminais de texto que operem com código de transmissão Baudot, providos de teclado alfanumérico e visor, para acoplamento exclusivamente acústico a telefone	35.85	36.45	\\r
85437092		0	Eletrificadores de cercas	35.85	42.46	\\r
85437099		0	Outros	35.85	42.46	\\r
85437099	01	0	Ex 01 - Amplificadores seriais digitais para distribuição de sinais de vídeo, com retemporizador	30.75	37.36	\\r
85439010		0	Das máquinas ou aparelhos da subposição 8543.70	35.85	42.46	\\r
85439090		0	Outras	35.85	43.34	\\r
85441100		0	--De cobre	30.75	38.24	\\r
85441910		0	De alumínio	33.42	40.91	\\r
85441990		0	Outros	33.42	40.91	\\r
85442000		0	-Cabos coaxiais e outros condutores elétricos coaxiais	33.42	41.76	\\r
85443000		0	-Jogos de fios para velas de ignição e outros jogos de fios dos tipos utilizados em quaisquer veículos	35.85	44.19	\\r
85443000	01	0	Ex 01 - Para sistema elétrico em 24 V	32.91	41.25	\\r
85444200		0	--Munidos de peças de conexão	33.42	41.76	\\r
85444900		0	--Outros	30.75	39.09	\\r
85444900	01	0	Ex 01 - Para tensão não superior a 80 V	33.42	41.76	\\r
85446000		0	-Outros condutores elétricos, para uma tensão superior a 1.000 V	33.42	41.76	\\r
85447010		0	Com revestimento externo de material dielétrico	38.07	45.56	\\r
85447020		0	Com revestimento externo de aço, próprios para instalação submarina (cabo submarino)	38.07	39.77	\\r
85447030		0	Com revestimento externo de alumínio	38.07	45.56	\\r
85447090		0	Outros	38.07	45.56	\\r
85451100		0	--Dos tipos utilizados em fornos	36.55	42.25	\\r
85451910		0	De grafita, com teor de carbono superior ou igual a 99,9%, em peso	36.55	38.25	\\r
85451920		0	Blocos de grafite, dos tipos utilizados como cátodos em cubas eletrolíticas	36.55	38.25	\\r
85451990		0	Outros	36.55	43.16	\\r
85452000		0	-Escovas	36.55	43.16	\\r
85459010		0	Carvões para pilhas elétricas	36.55	38.25	\\r
85459020		0	Resistências aquecedoras desprovidas de revestimento e de terminais	36.55	43.16	\\r
85459030		0	Suportes de conexão (nipples), para eletrodos	36.55	43.16	\\r
85459090		0	Outros	36.55	43.16	\\r
85461000		0	-De vidro	38.77	47.11	\\r
85462000		0	-De cerâmica	38.77	47.11	\\r
85469000		0	-Outros	38.77	47.11	\\r
85471000		0	-Peças isolantes de cerâmica	38.77	47.11	\\r
85472010		0	Tampões vedadores para capacitores, com perfurações para terminais	38.77	40.47	\\r
85472090		0	Outras	38.77	47.11	\\r
85479000		0	-Outros	38.77	47.11	\\r
85481010		0	Desperdícios e resíduos de acumuladores elétricos de chumbo. acumuladores elétricos de chumbo, inservíveis	31.45	34.20	\\r
85481010	01	0	Ex 01 - Acumuladores inservíveis	38.77	41.52	\\r
85481090		0	Outros	31.45	40.61	\\r
85481090	01	0	Ex 01 - Desperdícios e resíduos, à base de cádmio, exceto seus compostos químicos	31.45	40.61	\\r
85481090	02	0	Ex 02 - Desperdícios e resíduos, contendo compostos químicos de níquel, cádmio, mercúrio ou de lítio	36.55	45.71	\\r
85481090	03	0	Ex 03 - Pilhas, baterias de pilhas e acumuladores elétricos, inservíveis, exceto acumuladores de chumbo	38.77	47.93	\\r
85489000		0	-Outras	4.20	4.80	\\r
85489010		0	Termopares dos tipos utilizados em dispositivos termoelétricos de segurança de aparelhos alimentados a gás	36.55	44.89	\\r
85489090		0	Outras	36.55	44.04	\\r
86011000		0	-De fonte externa de eletricidade	31.45	38.94	\\r
86012000		0	-De acumuladores elétricos	31.45	38.94	\\r
86021000		0	-Locomotivas diesel-elétricas	19.45	26.94	\\r
86029000		0	-Outros	31.45	38.94	\\r
90131090		0	Outros	38.77	46.26	\\r
86039000		0	-Outras	31.45	38.94	\\r
86040010		0	Autopropulsados, equipados com batedores de balastro e alinhadores de vias férreas	31.45	32.05	\\r
86040090		0	Outros	31.45	38.94	\\r
86050010		0	Vagões de passageiros	31.45	38.94	\\r
86050090		0	Outros	31.45	38.94	\\r
86061000		0	-Vagões-tanques e semelhantes	31.45	38.94	\\r
86063000		0	-Vagões de descarga automática, exceto os da subposição 8606.10	31.45	38.94	\\r
86069100		0	--Cobertos e fechados	31.45	38.94	\\r
86069200		0	--Abertos, com paredes fixas de altura superior a 60 cm	31.45	38.94	\\r
86069900		0	--Outros	31.45	38.94	\\r
86071110		0	Bogies	31.45	38.94	\\r
86071120		0	Bissels	31.45	38.94	\\r
86071200		0	--Outros bogies e bissels	31.45	38.94	\\r
86071911		0	Com rolamentos incorporados, de diâmetro exterior superior a 190 mm, do tipo dos utilizados em eixos de rodas de vagões ferroviários	31.45	32.05	\\r
86071919		0	Outros	31.45	38.94	\\r
86071990		0	Outros	31.45	38.94	\\r
86072100		0	--Freios a ar comprimido e suas partes	31.45	38.94	\\r
86072900		0	--Outros	31.45	38.94	\\r
86073000		0	-Ganchos e outros sistemas de engate, pára-choques, e suas partes	31.45	38.94	\\r
86079100		0	--De locomotivas ou de locotratores	31.45	38.94	\\r
86079900		0	--Outras	31.45	38.94	\\r
86080011		0	Mecânicos	31.45	38.94	\\r
86080012		0	Eletromecânicos	31.45	38.94	\\r
86080090		0	Outros	31.45	38.94	\\r
86090000		0	Contêineres, incluindo os de transporte de fluidos, especialmente concebidos e equipados para um ou vários meios de transporte.	31.45	38.94	\\r
87011000		0	-Motocultores	26.75	34.24	\\r
87012000		0	-Tratores rodoviários para semirreboques	29.42	44.57	\\r
87013000		0	-Tratores de lagartas	26.75	34.24	\\r
87019010		0	Tratores especialmente concebidos para arrastar troncos (log skidders)	26.75	27.35	\\r
87019090		0	Outros	29.42	36.91	\\r
87019090	01	0	Ex 01 – Com tomada de força mecânica ou hidráulica	26.75	34.24	\\r
87021000		0	-Com motor de pistão, de ignição por compressão (diesel ou semidiesel)	41.98	57.13	\\r
87021000	01	0	Ex 01 - Com volume interno de habitáculo, destinado a passageiros e motorista, superior a 6m³, mas inferior a 9m³	35.85	51.00	\\r
87021000	02	0	Ex 02 - Com volume interno de habitáculo, destinado a passageiros e motorista, igual ou superior a 9m³	30.75	45.90	\\r
87029010		0	Trólebus	30.75	45.90	\\r
87029090		0	Outros	41.98	57.13	\\r
87029090	01	0	Ex 01 - Com volume interno de habitáculo, destinado a passageiros e motorista, superior a 6m³, mas inferior a 9m³	35.85	51.00	\\r
87029090	02	0	Ex 02 - Com volume interno de habitáculo, destinado a passageiros e motorista, igual ou superior a 9m³	30.75	45.90	\\r
87031000		0	-Veículos especialmente concebidos para se deslocar sobre a neve. veículos especiais para transporte de pessoas nos campos de golfe e veículos semelhantes	44.17	59.32	\\r
87032100		0	--De cilindrada não superior a 1.000 cm3	34.42	49.57	\\r
87032210		0	Com capacidade de transporte de pessoas sentadas inferior ou igual a seis, incluindo o motorista	37.21	52.36	\\r
87032290		0	Outros	37.21	52.36	\\r
87032310		0	Com capacidade de transporte de pessoas sentadas inferior ou igual a seis, incluindo o motorista	41.98	57.13	\\r
87032310	01	0	Ex 01 – De cilindrada superior a 1.500 cm³, mas não superior a 2.000 cm³	37.21	52.36	\\r
87032390		0	Outros	41.98	57.13	\\r
87032390	01	0	Ex 01 – De cilindrada superior a 1.500 cm³, mas não superior a 2.000 cm³	37.21	52.36	\\r
87032410		0	Com capacidade de transporte de pessoas sentadas inferior ou igual a seis, incluindo o motorista	41.98	57.13	\\r
87032490		0	Outros	41.98	57.13	\\r
87033110		0	Com capacidade de transporte de pessoas sentadas inferior ou igual a seis, incluindo o motorista	41.98	57.13	\\r
87033190		0	Outros	41.98	57.13	\\r
87033210		0	Com capacidade de transporte de pessoas sentadas inferior ou igual a seis, incluindo o motorista	41.98	57.13	\\r
87033290		0	Outros	41.98	57.13	\\r
87033310		0	Com capacidade de transporte de pessoas sentadas inferior ou igual a seis, incluindo o motorista	41.98	57.13	\\r
87033390		0	Outros	41.98	57.13	\\r
87039000		0	-Outros	41.98	57.13	\\r
87041010		0	Com capacidade de carga superior ou igual a 85 toneladas	30.75	31.35	\\r
87041090		0	Outros	30.75	38.24	\\r
87042110		0	Chassis com motor e cabina	33.42	48.57	\\r
87042110	01	0	Ex 01 - De camionetas, furgões, “pick-ups” e semelhantes	34.91	50.06	\\r
87042120		0	Com caixa basculante	33.42	48.57	\\r
87042120	01	0	Ex 01 - De camionetas, furgões, “pick-ups” e semelhantes	35.85	51.00	\\r
87042130		0	Frigoríficos ou isotérmicos	33.42	48.57	\\r
87042130	01	0	Ex 01 - De camionetas, furgões, “pick-ups” e semelhantes	34.91	50.06	\\r
87042190		0	Outros	33.42	48.57	\\r
87042190	01	0	Ex 01 - De camionetas, furgões, “pick-ups” e semelhantes	34.91	50.06	\\r
87042190	02	0	Ex 02 - Carro-forte para transporte de valores	35.85	51.00	\\r
87042210		0	Chassis com motor e cabina	33.42	48.57	\\r
87042220		0	Com caixa basculante	33.42	48.57	\\r
87042230		0	Frigoríficos ou isotérmicos	33.42	48.57	\\r
87042290		0	Outros	33.42	48.57	\\r
87042310		0	Chassis com motor e cabina	33.42	48.57	\\r
87042320		0	Com caixa basculante	33.42	48.57	\\r
87042330		0	Frigoríficos ou isotérmicos	33.42	48.57	\\r
87042390		0	Outros	33.42	48.57	\\r
87042390	01	0	Ex 01 - Veículo automóvel para transporte de toras de madeira, denominado comercialmente “trator florestal” e, tecnicamente, “forwarder”	33.42	48.57	\\r
87043110		0	Chassis com motor e cabina	35.85	51.00	\\r
87043110	01	0	Ex 01 - De caminhão	33.42	48.57	\\r
87043120		0	Com caixa basculante	35.85	51.00	\\r
87043120	01	0	Ex 01 - Caminhão	33.42	48.57	\\r
87043130		0	Frigoríficos ou isotérmicos	34.91	50.06	\\r
87043130	01	0	Ex 01 - Caminhão	33.42	48.57	\\r
87043190		0	Outros	34.91	50.06	\\r
87043190	01	0	Ex 01 - Caminhão	33.42	48.57	\\r
87043210		0	Chassis com motor e cabina	33.42	48.57	\\r
87043220		0	Com caixa basculante	33.42	48.57	\\r
87043230		0	Frigoríficos ou isotérmicos	33.42	48.57	\\r
87043290		0	Outros	33.42	48.57	\\r
87049000		0	-Outros	33.42	48.57	\\r
87051010		0	Com haste telescópica de altura máxima superior ou igual a 42 m, capacidade máxima de elevação superior ou igual a 60 toneladas, segundo a Norma DIN 15019, Parte 2, e com 2 ou mais eixos de rodas direcionáveis	30.75	31.35	\\r
87051090		0	Outros	30.75	45.90	\\r
87052000		0	-Torres (derricks) automóveis, para sondagem ou perfuração	30.75	45.90	\\r
87053000		0	-Veículos de combate a incêndio	30.75	45.90	\\r
87054000		0	-Caminhões-betoneiras	30.75	45.90	\\r
87059010		0	Caminhões para a determinação de parâmetros físicos característicos (perfilagem) de poços petrolíferos	33.42	35.12	\\r
87059090		0	Outros	33.42	48.57	\\r
87060010		0	Dos veículos da posição 87.02	41.98	57.13	\\r
87060010	01	0	Ex 01 - De veículos dos Ex 01 e 02 dos códigos 8702.10.00 e 8702.90.90	30.75	45.90	\\r
87060020		0	Dos veículos das subposições 8701.10, 8701.30, 8701.90 ou 8704.10	33.42	40.91	\\r
87060090		0	Outros	35.85	51.00	\\r
87060090	01	0	Ex 01 - De caminhões	30.75	45.90	\\r
87071000		0	-Para os veículos da posição 87.03	35.85	51.00	\\r
87079010		0	Dos veículos das subposições 8701.10, 8701.30, 8701.90 ou 8704.10	33.42	40.91	\\r
87079090		0	Outras	33.42	48.57	\\r
87079090	01	0	Ex 01 - De veículos dos Ex 01 e 02 dos códigos 8702.10.00 e 8702.90.90	30.75	45.90	\\r
87081000		0	-Pára-choques e suas partes	33.42	42.58	\\r
87082100		0	--Cintos de segurança	33.42	42.58	\\r
87082911		0	Pára-lamas	33.42	40.91	\\r
87082912		0	Grades de radiadores	33.42	40.91	\\r
87082913		0	Portas	33.42	40.91	\\r
87082914		0	Painéis de instrumentos	33.42	40.91	\\r
87082919		0	Outros	33.42	40.91	\\r
87082991		0	Pára-lamas	33.42	42.58	\\r
87082992		0	Grades de radiadores	33.42	42.58	\\r
87082993		0	Portas	33.42	42.58	\\r
87082994		0	Painéis de instrumentos	33.42	42.58	\\r
87082995		0	Geradores de gás para acionar retratores de cintos de segurança	33.42	35.12	\\r
87082999		0	Outros	21.43	30.59	\\r
87083011		0	Dos veículos das subposições 8701.10, 8701.30, 8701.90 ou 8704.10	33.42	40.91	\\r
87083019		0	Outras	33.42	42.58	\\r
87083090		0	Outros	33.42	42.58	\\r
87084011		0	Servo-assistidas, próprias para torques de entrada superiores ou iguais a 750 Nm	33.42	34.02	\\r
87084019		0	Outras	33.42	40.91	\\r
87084080		0	Outras caixas de marchas	33.42	42.58	\\r
87084090		0	Partes	33.42	42.58	\\r
87085011		0	Eixos com diferencial com capacidade de suportar cargas superiores ou iguais a 14.000 kg, redutores planetários nos extremos e dispositivo de freio incorporado, do tipo dos utilizados em veículos da subposição 8704.10	33.42	34.02	\\r
87085012		0	Eixos não motores	33.42	40.91	\\r
87085019		0	Outros	33.42	40.91	\\r
87085080		0	Outros	33.42	42.58	\\r
87085091		0	De eixos não motores, dos veículos das subposições 8701.10, 8701.30, 8701.90 ou 8704.10	33.42	40.91	\\r
87085099		0	Outras	33.42	42.58	\\r
87087010		0	De eixos propulsores dos veículos das subposições 8701.10, 8701.30, 8701.90 ou 8704.10	33.42	40.91	\\r
87087090		0	Outros	33.42	42.58	\\r
87088000		0	-Sistemas de suspensão e suas partes (incluindo os amortecedores de suspensão)	33.42	42.58	\\r
87088000	01	0	Ex 01 - Amortecedores de suspensão de veículos das posições 87.02, 87.04 (exceto a subposição 8704.10) e 87.05 e da subposição 8701.20	32.91	42.07	\\r
87088000	02	0	Ex 02 - Outros amortecedores de suspensão	38.49	47.65	\\r
87089100		0	--Radiadores e suas partes	33.42	42.58	\\r
87089200		0	--Silenciosos e tubos de escape. suas partes	38.49	47.65	\\r
87089200	01	0	Ex 01 - De veículos das posições 87.01, 87.02, 87.04 e 87.05 (exceto partes)	32.91	42.07	\\r
87089200	02	0	Ex 02 - Partes	33.42	42.58	\\r
87089300		0	--Embreagens e suas partes	26.50	35.66	\\r
87089300	01	0	Ex 01 - De veículos das posições 87.01, 87.02, 87.04 e 87.05	20.91	30.07	\\r
87089411		0	Volantes	32.91	40.40	\\r
87089412		0	Colunas	32.91	40.40	\\r
87089413		0	Caixas	32.91	40.40	\\r
87089481		0	Volantes	33.42	42.58	\\r
87089482		0	Colunas	33.42	42.58	\\r
87089483		0	Caixas	33.42	42.58	\\r
87089490		0	Partes	33.42	42.58	\\r
87089510		0	Bolsas infláveis de segurança com sistema de insuflação (airbags)	33.42	42.58	\\r
87089521		0	Bolsas infláveis para airbags	33.42	35.12	\\r
87089522		0	Sistema de insuflação	33.42	35.12	\\r
87089529		0	Outras	33.42	42.58	\\r
87089910		0	Dispositivos para comando de acelerador, freio, embreagem, direção ou caixa de marchas mesmo os de adaptação dos preexistentes, do tipo dos utilizados por pessoas incapacitadas	18.75	19.35	\\r
87089990		0	Outros	33.42	42.58	\\r
87091100		0	--Elétricos	30.75	38.24	\\r
87091900		0	--Outros	30.75	38.24	\\r
87099000		0	-Partes	33.42	40.91	\\r
87100000		0	Veículos e carros blindados de combate, armados ou não, e suas partes.	21.50	22.10	\\r
87111000		0	-Com motor de pistão alternativo de cilindrada não superior a 50 cm3	45.30	55.25	\\r
87112010		0	Motocicletas de cilindrada inferior ou igual a 125 cm3	37.70	47.65	\\r
87112020		0	Motocicleta de cilindrada superior a 125 cm3	37.70	47.65	\\r
87112090		0	Outros	37.70	47.65	\\r
87113000		0	-Com motor de pistão alternativo de cilindrada superior a 250 cm3, mas não superior a 500 cm3	49.97	59.92	\\r
87114000		0	-Com motor de pistão alternativo de cilindrada superior a 500 cm3, mas não superior a 800 cm3	45.30	55.25	\\r
87115000		0	-Com motor de pistão alternativo de cilindrada superior a 800 cm3	49.97	59.92	\\r
87119000		0	-Outros	45.30	55.25	\\r
87120010		0	Bicicletas	35.85	45.80	\\r
87120090		0	Outros	35.85	45.80	\\r
87131000		0	-Sem mecanismo de propulsão	9.50	16.11	\\r
87139000		0	-Outros	9.50	11.20	\\r
87141000		0	-De motocicletas (incluindo os ciclomotores)	36.76	45.10	\\r
87142000		0	-De cadeiras de rodas ou de outros veículos para inválidos	9.50	15.20	\\r
87149100		0	--Quadros e garfos, e suas partes	35.85	44.19	\\r
87149200		0	--Aros e raios	35.85	44.19	\\r
87149310		0	Cubos, exceto de freios	35.85	44.19	\\r
87149320		0	Pinhões de rodas livres	35.85	44.19	\\r
87149410		0	Cubos de freios	35.85	44.19	\\r
87149490		0	Outros	35.85	44.19	\\r
87149500		0	--Selins	35.85	44.19	\\r
87149600		0	--Pedais e pedaleiros, e suas partes	35.85	44.19	\\r
87149910		0	Câmbio de velocidades	35.85	44.19	\\r
87149990		0	Outros	35.85	44.19	\\r
87150000		0	Carrinhos e veículos semelhantes para transporte de crianças, e suas partes.	35.85	45.80	\\r
87161000		0	-Reboques e semirreboques, para habitação ou para acampar, do tipo trailer	35.85	45.80	\\r
87162000		0	-Reboques e semirreboques, autocarregáveis ou autodescarregáveis, para usos agrícolas	30.75	38.24	\\r
87163100		0	--Cisternas	33.42	48.57	\\r
87163900		0	--Outros	33.42	48.57	\\r
87164000		0	-Outros reboques e semirreboques	33.42	48.57	\\r
87168000		0	-Outros veículos	33.42	48.57	\\r
87168000	01	0	Ex 01 - Carrinhos de tração manual, de ferro, para construção	30.75	45.90	\\r
87168000	02	0	Ex 02 - Veículos de tração animal	30.75	45.90	\\r
87169010		0	Chassis de reboques e semirreboques	33.42	41.76	\\r
87169090		0	Outras	33.42	41.76	\\r
88010000		0	Balões e dirigíveis. planadores, asas voadoras e outros veículos aéreos, não concebidos para propulsão a motor.	28.03	37.98	\\r
88021100		0	--De peso não superior a 2.000 kg, vazios	27.22	27.82	\\r
88021210		0	De peso inferior ou igual a 3.500 kg	27.22	27.82	\\r
88021290		0	Outros	27.22	27.82	\\r
88022010		0	A hélice	27.22	27.82	\\r
88022021		0	Monomotores	27.22	27.82	\\r
88022022		0	Multimotores	27.22	27.82	\\r
88022090		0	Outros	27.22	27.82	\\r
88023010		0	A hélice	27.22	27.82	\\r
88023021		0	Multimotores, de peso inferior ou igual a 7.000 kg, vazios	27.22	27.82	\\r
88023029		0	Outros	27.22	27.82	\\r
88023031		0	De peso inferior ou igual a 7.000 kg, vazios	27.22	27.82	\\r
88023039		0	Outros	27.22	27.82	\\r
88023090		0	Outros	27.22	27.82	\\r
88024010		0	A turboélice	27.22	27.82	\\r
88024090		0	Outros	27.22	27.82	\\r
88026000		0	-Veículos espaciais (incluindo os satélites) e seus veículos de lançamento, e veículos suborbitais	22.11	22.71	\\r
88031000		0	-Hélices e rotores, e suas partes	22.11	22.71	\\r
88032000		0	-Trens de aterrissagem e suas partes	22.11	22.71	\\r
88033000		0	-Outras partes de aviões ou de helicópteros	22.11	22.71	\\r
88039000		0	-Outras	22.11	22.71	\\r
88040000		0	Pára-quedas (incluindo os pára-quedas dirigíveis e os parapentes) e os pára-quedas giratórios. suas partes e acessórios.	27.22	34.71	\\r
88051000		0	-Aparelhos e dispositivos para lançamento de veículos aéreos, e suas partes. aparelhos e dispositivos para aterrissagem de veículos aéreos em porta-aviões e aparelhos e dispositivos semelhantes, e suas partes	22.11	22.71	\\r
88052100		0	--Simuladores de combate aéreo e suas partes	22.11	22.71	\\r
88052900		0	--Outros	22.11	22.71	\\r
89011000		0	-Transatlânticos, barcos de excursão e embarcações semelhantes principalmente concebidas para o transporte de pessoas. ferryboats	31.45	38.94	\\r
89012000		0	-Navios-tanque	31.45	38.94	\\r
89013000		0	-Barcos frigoríficos, exceto os da subposição 8901.20	31.45	38.94	\\r
89019000		0	-Outras embarcações para o transporte de mercadorias ou para o transporte de pessoas e de mercadorias	22.20	29.69	\\r
89020010		0	De comprimento, de proa a popa, superior ou igual a 35 m	31.45	38.94	\\r
89020090		0	Outros	31.45	38.94	\\r
89031000		0	-Barcos infláveis	46.16	56.11	\\r
89039100		0	--Barcos a vela, mesmo com motor auxiliar	46.16	56.11	\\r
89039200		0	--Barcos a motor, exceto com motor fora-de-borda	46.16	56.11	\\r
89039900		0	--Outros	46.16	56.11	\\r
89040000		0	Rebocadores e barcos concebidos para empurrar outras embarcações.	35.58	43.07	\\r
89051000		0	-Dragas	31.45	38.94	\\r
89052000		0	-Plataformas de perfuração ou de exploração, flutuantes ou submersíveis	34.12	41.61	\\r
89059000		0	-Outros	31.45	38.94	\\r
89059000	01	0	Ex 01 - Docas flutuantes	34.12	41.61	\\r
89061000		0	-Navios de guerra	22.20	29.69	\\r
89069000		0	-Outras	31.45	38.94	\\r
89071000		0	-Balsas infláveis	34.12	41.61	\\r
89079000		0	-Outras	34.12	41.61	\\r
89080000		0	Embarcações e outras estruturas flutuantes, a serem desmanteladas.	31.45	33.15	\\r
89080000	01	0	Ex 01 - Estruturas flutuantes	31.45	33.15	\\r
90011011		0	Com diâmetro de núcleo inferior a 11 micrômetros (mícrons)	35.85	42.46	\\r
90011019		0	Outras	35.85	42.46	\\r
90011020		0	Feixes e cabos de fibras ópticas	38.07	45.56	\\r
90012000		0	-Matérias polarizantes, em folhas ou em placas	38.77	47.93	\\r
90013000		0	-Lentes de contato	31.45	40.61	\\r
90014000		0	-Lentes de vidro, para óculos	31.45	40.61	\\r
90015000		0	-Lentes de outras matérias, para óculos	31.45	40.61	\\r
90019010		0	Lentes	31.45	40.61	\\r
90019090		0	Outros	38.77	47.93	\\r
90021110		0	Para câmeras fotográficas ou cinematográficas ou para projetores	38.77	47.11	\\r
90021110	01	0	Ex 01 - Para câmeras cinematográficas	31.45	39.79	\\r
90021120		0	De aproximação (zoom) para câmeras de televisão, de 20 ou mais aumentos	38.77	39.37	\\r
90021190		0	Outras	38.77	47.11	\\r
90021900		0	--Outras	38.77	47.11	\\r
90022010		0	Polarizantes	38.77	47.11	\\r
90022090		0	Outros	38.77	47.11	\\r
90029000		0	-Outros	38.77	47.11	\\r
90031100		0	--De plásticos	34.12	43.28	\\r
90031910		0	De metais comuns, mesmo folheados ou chapeados de metais preciosos (plaquê)	34.12	43.28	\\r
90031990		0	Outras	34.12	43.28	\\r
90039010		0	Charneiras	34.12	42.46	\\r
90039090		0	Outras	34.12	42.46	\\r
90041000		0	-Óculos de sol	38.77	48.72	\\r
90049010		0	Óculos para correção	34.12	43.28	\\r
90049020		0	Óculos de segurança	34.12	43.28	\\r
90049090		0	Outros	34.12	43.28	\\r
90051000		0	-Binóculos	43.43	52.59	\\r
90058000		0	-Outros instrumentos	38.77	46.26	\\r
90059010		0	De binóculos	38.77	47.11	\\r
90059090		0	Outros	38.77	46.26	\\r
90061010		0	Fotocompositoras a laser para preparação de clichês	31.45	32.05	\\r
90061090		0	Outras	31.45	38.94	\\r
90063000		0	-Câmeras fotográficas especialmente concebidas para fotografia submarina ou aérea, para exame médico de órgãos internos ou para laboratórios de medicina legal ou de investigação judicial	38.77	46.26	\\r
90064000		0	-Câmeras fotográficas para filmes de revelação e copiagem instantâneas	38.32	39.95	\\r
90065100		0	--Com visor de reflexão através da objetiva (reflex), para filmes em rolos de largura não superior a 35 mm	38.77	47.93	\\r
90065200		0	--Outras, para filmes em rolos de largura inferior a 35 mm	38.77	47.93	\\r
90065310		0	De foco fixo	38.77	47.93	\\r
90065320		0	De foco ajustável	38.77	47.93	\\r
90065910		0	De foco fixo	38.77	47.93	\\r
90065921		0	Para obtenção de negativos de 45 mm x 60 mm ou de dimensões superiores	38.77	44.47	\\r
90065929		0	Outras	38.77	47.93	\\r
90066100		0	--Aparelhos de tubo de descarga para produção de luz-relâmpago (denominados “flashes eletrônicos”)	38.77	47.93	\\r
90066900		0	--Outros	38.77	47.93	\\r
90066900	01	0	Ex 01 - Lâmpadas de luz relâmpago (“flash”)	36.55	45.71	\\r
90069110		0	Corpos	38.77	47.11	\\r
90069190		0	Outros	38.77	47.11	\\r
90069900		0	--Outros	38.77	47.11	\\r
90071000		0	-Câmeras	44.40	51.89	\\r
90071000	01	0	Ex 01 - Para filmes de 16 mm de largura ou de largura não inferior a 35 mm	31.45	38.94	\\r
90072020		0	Para filmes de largura superior ou igual a 35 mm mas inferior ou igual a 70 mm	40.80	41.40	\\r
90072090		0	Outros	40.80	48.29	\\r
90079100		0	--De câmeras	40.80	48.29	\\r
90079100	01	0	Ex 01 - Tripés de câmeras cinematográficas	31.45	38.94	\\r
90079200		0	--De projetores	40.80	48.29	\\r
90085000		0	-Projetores e aparelhos de ampliação ou de redução	40.80	49.96	\\r
90089000		0	-Partes e acessórios	40.80	49.14	\\r
90101010		0	Cubas e cubetas, de operação automática e programáveis	40.80	41.40	\\r
90101020		0	Ampliadoras-copiadoras automáticas para papel fotográfico, com capacidade superior a 1.000 cópias por hora	40.80	41.40	\\r
90101090		0	Outros	40.80	48.29	\\r
90105010		0	Processadores fotográficos para o tratamento eletrônico de imagens, mesmo com saída digital	40.80	41.40	\\r
90105020		0	Aparelhos para revelação automática de chapas de fotopolímeros com suporte metálico	40.80	41.40	\\r
90105090		0	Outros	40.80	49.96	\\r
90105090	01	0	Ex 01 - Moviolas	31.45	40.61	\\r
90106000		0	-Telas para projeção	40.80	49.96	\\r
90109010		0	De aparelhos ou material da subposição 9010.10 ou do item 9010.50.10	40.80	48.29	\\r
90109090		0	Outros	40.80	49.14	\\r
90111000		0	-Microscópios estereoscópicos	34.12	41.61	\\r
90112010		0	Para fotomicrografia	34.12	34.72	\\r
90112020		0	Para cinefotomicrografia	34.12	34.72	\\r
90112030		0	Para microprojeção	34.12	34.72	\\r
90118010		0	Binoculares de platina móvel	34.12	34.72	\\r
90118090		0	Outros	34.12	41.61	\\r
90119010		0	Dos artigos da subposição 9011.20	34.12	34.72	\\r
90119090		0	Outros	34.12	41.61	\\r
90121010		0	Microscópios eletrônicos	34.12	34.72	\\r
90121090		0	Outros	34.12	41.61	\\r
90129010		0	De microscópios eletrônicos	34.12	34.72	\\r
90129090		0	Outros	34.12	41.61	\\r
90131010		0	Miras telescópicas para armas	38.77	47.93	\\r
90132000		0	-Lasers, exceto diodos laser	38.77	46.26	\\r
90138010		0	Dispositivos de cristais líquidos (LCD)	33.42	34.02	\\r
90138090		0	Outros	38.77	47.93	\\r
90138090	01	0	Ex 01 - Conta-fios	34.12	43.28	\\r
90139000		0	-Partes e acessórios	38.77	46.26	\\r
90141000		0	-Bússolas, incluindo as agulhas de marear	34.12	41.61	\\r
90142010		0	Altímetros	34.12	34.72	\\r
90142020		0	Pilotos automáticos	34.12	34.72	\\r
90142030		0	Inclinômetros	34.12	34.72	\\r
90142090		0	Outros	34.12	34.72	\\r
90148010		0	Sondas acústicas (ecobatímetros) ou de ultrassom (sonar e semelhantes)	34.12	41.61	\\r
90148090		0	Outros	34.12	41.61	\\r
90149000		0	-Partes e acessórios	34.12	41.61	\\r
90151000		0	-Telêmetros	34.12	41.61	\\r
90152010		0	Com sistema de leitura por meio de prisma ou micrômetro óptico e precisão de leitura de 1 segundo	34.12	41.61	\\r
90152090		0	Outros	34.12	41.61	\\r
90153000		0	-Níveis	34.12	41.61	\\r
90154000		0	-Instrumentos e aparelhos de fotogrametria	34.12	34.72	\\r
90158010		0	Molinetes hidrométricos	34.12	41.61	\\r
90158090		0	Outros	34.12	41.61	\\r
90159010		0	De instrumentos ou aparelhos da subposição 9015.40	34.12	34.72	\\r
90159090		0	Outros	34.12	41.61	\\r
90160010		0	Sensíveis a pesos não superiores a 0,2 mg	31.45	38.94	\\r
90160090		0	Outras	31.45	38.94	\\r
90171010		0	Automáticas	38.77	39.37	\\r
90171090		0	Outras	38.77	47.93	\\r
90172000		0	-Outros instrumentos de desenho, de traçado ou de cálculo	38.77	47.93	\\r
90173010		0	Micrômetros	31.45	37.15	\\r
90173020		0	Paquímetros	31.45	40.61	\\r
90173090		0	Outros	31.45	40.61	\\r
90178010		0	Metros	38.77	47.93	\\r
90178090		0	Outros	38.77	47.93	\\r
90179010		0	De mesas ou máquinas de desenhar, automáticas	38.77	39.37	\\r
90179090		0	Outros	38.77	47.11	\\r
90181100		0	--Eletrocardiógrafos	31.85	39.34	\\r
90181210		0	Ecógrafos com análise espectral Doppler	31.85	32.45	\\r
90181290		0	Outros	31.85	39.34	\\r
90181300		0	--Aparelhos de diagnóstico por visualização de ressonância magnética	31.85	32.45	\\r
90181410		0	Scanner de tomografia por emissão de posítrons (PET - Positron Emission Tomography)	31.85	32.45	\\r
90181420		0	Câmaras gama	31.85	32.45	\\r
90181490		0	Outros	31.85	39.34	\\r
90181910		0	Endoscópios	31.85	32.45	\\r
90181920		0	Audiômetros	31.85	39.34	\\r
90181980		0	Outros	31.85	39.34	\\r
90181990		0	Partes	31.85	39.34	\\r
90182010		0	Para cirurgia, que operem por laser	34.91	35.51	\\r
90182020		0	Outros, para tratamento bucal, que operem por laser	34.91	35.51	\\r
90182090		0	Outros	34.91	42.40	\\r
90183111		0	De capacidade inferior ou igual a 2 cm3	21.50	29.84	\\r
90183119		0	Outras	17.50	25.84	\\r
90183190		0	Outras	21.50	29.84	\\r
90183211		0	Gengivais	25.66	34.00	\\r
90183212		0	De aço cromo-níquel, bisel trifacetado e diâmetro exterior superior ou igual a 1,6 mm, do tipo das utilizadas com bolsas de sangue	25.66	27.36	\\r
90183219		0	Outras	21.66	30.00	\\r
90183220		0	Para suturas	25.66	27.36	\\r
90183910		0	Agulhas	25.66	34.00	\\r
90183921		0	De borracha	21.50	29.84	\\r
90183922		0	Cateteres de poli(cloreto de vinila), para embolectomia arterial	21.50	23.20	\\r
90183923		0	Cateteres de poli(cloreto de vinila), para termodiluição	25.66	27.36	\\r
90183924		0	Cateteres intravenosos periféricos, de poliuretano ou de copolímero de etileno-tetrafluoretileno (ETFE)	30.75	39.09	\\r
90183929		0	Outros	21.50	29.84	\\r
90183930		0	Lancetas para vacinação e cautérios	25.66	34.00	\\r
90183991		0	Artigo para fístula arteriovenosa, composto de agulha, base de fixação tipo borboleta, tubo plástico com conector e obturador	30.75	39.09	\\r
90183999		0	Outros	25.66	34.00	\\r
90183999	01	0	Ex 01 - Para transfusão de sangue ou infusão intravenosa	21.50	29.84	\\r
90184100		0	--Aparelhos dentários de brocar, mesmo combinados numa base comum com outros equipamentos dentários	34.91	42.40	\\r
90184911		0	De carboneto de tungstênio (volfrâmio)	25.66	34.00	\\r
90184912		0	De aço-vanádio	25.66	34.00	\\r
90184919		0	Outras	25.66	34.00	\\r
90184920		0	Limas	25.66	34.00	\\r
90184940		0	Para tratamento bucal, que operem por projeção cinética de partículas	34.91	35.51	\\r
90184991		0	Para desenho e construção de peças cerâmicas para restaurações dentárias, computadorizados	34.91	35.51	\\r
90184999		0	Outros	34.91	43.25	\\r
90184999	01	0	Ex 01 - Cadeiras de dentista equipadas com aparelhos de odontologia	32.91	41.25	\\r
90185010		0	Microscópios binoculares, dos tipos utilizados em cirurgia oftalmológica	34.91	35.51	\\r
90185090		0	Outros	34.91	42.40	\\r
90189010		0	Para transfusão de sangue ou infusão intravenosa	30.75	38.24	\\r
90189021		0	Elétricos	34.91	43.25	\\r
90189029		0	Outros	34.91	43.25	\\r
90189031		0	Litotritores por onda de choque	34.91	35.51	\\r
90189039		0	Outros	34.91	42.40	\\r
90189040		0	Rins artificiais	30.75	35.50	\\r
90189050		0	Aparelhos de diatermia	35.40	43.70	\\r
90189091		0	Incubadoras para bebês	34.91	42.40	\\r
90189092		0	Aparelhos para medida da pressão arterial	34.91	43.25	\\r
90251910		0	Pirômetros ópticos	38.77	39.37	\\r
90251990		0	Outros	38.77	47.93	\\r
90189093		0	Aparelhos para terapia intra-uretral por micro-ondas (TUMT), próprios para o tratamento de afecções prostáticas, computadorizados	34.91	35.51	\\r
90189094		0	Endoscópios	34.91	35.51	\\r
90189095		0	Grampos e clipes, seus aplicadores e extratores	21.50	22.10	\\r
90189096		0	Desfibriladores externos que operem unicamente em modo automático (AED - Automatic External Defibrillator)	34.91	35.51	\\r
90189099		0	Outros	25.66	34.00	\\r
90189099	01	0	Ex 01 - Conjunto descartável de circulação assistida e conjunto descartável de balão intra-aórtico	21.50	29.84	\\r
90189099	02	0	Ex 02 - Máquinas cicladoras para diálise peritoneal e seus acessórios	21.50	29.84	\\r
90189099	03	0	Ex 03 - Equipamento de drenagem, cápsula protetora do adaptador de titânio, equipamentos de transferência ou similar e equipamento cassete cicladora, para diálise peritoneal	21.50	29.84	\\r
90191000		0	-Aparelhos de mecanoterapia. aparelhos de massagem. aparelhos de psicotécnica	34.66	41.73	\\r
90192010		0	De oxigenoterapia	31.85	39.34	\\r
90192020		0	De aerossolterapia	31.85	39.34	\\r
90192030		0	Respiratórios de reanimação	34.91	42.40	\\r
90192040		0	Respiradores automáticos (pulmões de aço)	34.91	42.40	\\r
90192090		0	Outros	34.91	42.40	\\r
90200010		0	Máscaras contra gases	31.45	39.79	\\r
90200090		0	Outros	35.60	43.94	\\r
90211010		0	Artigos e aparelhos ortopédicos	10.20	17.69	\\r
90211020		0	Artigos e aparelhos para fraturas	10.20	17.69	\\r
90211091		0	De artigos e aparelhos de ortopedia, articulados	10.20	10.80	\\r
90211099		0	Outros	10.20	17.69	\\r
90212110		0	De acrílico	31.45	39.79	\\r
90212190		0	Outros	31.45	39.79	\\r
90212900		0	--Outros	31.45	39.79	\\r
90213110		0	Femurais	10.20	17.69	\\r
90213120		0	Mioelétricas	10.20	10.80	\\r
90213190		0	Outras	10.20	17.69	\\r
90213911		0	Mecânicas	22.20	22.80	\\r
90213919		0	Outras	22.20	29.69	\\r
90213920		0	Lentes intraoculares	22.20	22.80	\\r
90213930		0	Próteses de artérias vasculares revestidas	22.20	22.80	\\r
90213940		0	Próteses mamárias não implantáveis	22.20	22.80	\\r
90213980		0	Outros	22.20	29.69	\\r
90213991		0	Partes de próteses modulares que substituem membros superiores ou inferiores	22.20	22.80	\\r
90213999		0	Outros	22.20	29.69	\\r
90214000		0	-Aparelhos para facilitar a audição dos surdos, exceto as partes e acessórios	10.20	10.80	\\r
90215000		0	-Marca-passos cardíacos, exceto as partes e acessórios	31.45	38.94	\\r
90219011		0	Cardiodesfibriladores automáticos	31.45	32.05	\\r
90219019		0	Outros	22.20	22.80	\\r
90219081		0	Implantes expansíveis (stents), mesmo montados sobre cateter do tipo balão	31.45	32.05	\\r
90219082		0	Oclusores interauriculares constituídos por uma malha de fios de níquel e titânio preenchida com tecido de poliéster, mesmo apresentados com seu respectivo cateter	22.20	22.80	\\r
90219089		0	Outros	31.45	38.94	\\r
90219091		0	De marca-passos cardíacos	22.20	22.80	\\r
90219092		0	De aparelhos para facilitar a audição dos surdos	10.20	10.80	\\r
90219099		0	Outros	22.20	29.69	\\r
90221200		0	--Aparelhos de tomografia computadorizada	34.12	34.72	\\r
90221311		0	De tomadas maxilares panorâmicas	34.12	34.72	\\r
90221319		0	Outros	34.12	41.61	\\r
90221390		0	Outros	34.12	34.72	\\r
90221411		0	Para mamografia	34.12	41.61	\\r
90221412		0	Para angiografia	34.12	34.72	\\r
90221413		0	Para densitometria óssea, computadorizados	34.12	34.72	\\r
90221419		0	Outros	34.12	41.61	\\r
90221490		0	Outros	34.12	34.72	\\r
90221910		0	Espectrômetros ou espectrógrafos de raios X	34.12	34.72	\\r
90221991		0	Dos tipos utilizados para inspeção de bagagens, com túnel de altura inferior ou igual a 0,4 m, largura inferior ou igual a 0,6 m e comprimento inferior ou igual a 1,2 m	34.12	41.61	\\r
90221999		0	Outros	34.12	34.72	\\r
90222110		0	Aparelhos de radiocobalto (bombas de cobalto)	34.12	41.61	\\r
90222120		0	Outros, para gamaterapia	34.12	34.72	\\r
90222190		0	Outros	34.12	34.72	\\r
90222910		0	Para detecção do nível de enchimento ou tampas faltantes, em latas de bebidas, por meio de raios gama	34.12	34.72	\\r
90222990		0	Outros	34.12	41.61	\\r
90223000		0	-Tubos de raios X	34.12	34.72	\\r
90229011		0	Geradores de tensão	34.12	41.61	\\r
90229012		0	Telas radiológicas	34.12	41.61	\\r
90229019		0	Outros	34.12	41.61	\\r
90229080		0	Outros	34.12	41.61	\\r
90229090		0	Partes e acessórios de aparelhos de raios X	34.12	41.61	\\r
90230000		0	Instrumentos, aparelhos e modelos, concebidos para demonstração (por exemplo, no ensino e nas exposições), não suscetíveis de outros usos.	38.77	47.11	\\r
90230000	01	0	Ex 01 - Lâmina preparada (preparação microscópica)	31.45	39.79	\\r
90230000	02	0	Ex 02 - Modelos de anatomia para ensino	31.45	39.79	\\r
90241010		0	Para ensaios de tração ou compressão	31.45	38.94	\\r
90241020		0	Para ensaios de dureza	31.45	38.94	\\r
90241090		0	Outros	31.45	38.94	\\r
90248011		0	Automáticos, para fios	31.45	32.05	\\r
90248019		0	Outros	31.45	38.94	\\r
90248021		0	Máquinas para ensaios de pneumáticos	31.45	32.05	\\r
90248029		0	Outros	31.45	38.94	\\r
90248090		0	Outros	31.45	38.94	\\r
90249000		0	-Partes e acessórios	34.12	41.61	\\r
90251110		0	Termômetros clínicos	38.77	47.93	\\r
90251190		0	Outros	38.77	47.93	\\r
90258000		0	-Outros instrumentos	38.77	47.93	\\r
90259010		0	De termômetros	38.77	47.11	\\r
90259090		0	Outros	38.77	47.11	\\r
90261011		0	Medidores-transmissores eletrônicos, que funcionem pelo princípio de indução eletromagnética	38.77	46.26	\\r
90261019		0	Outros	38.77	47.93	\\r
90261021		0	De metais, mediante correntes parasitas	31.45	33.15	\\r
90261029		0	Outros	31.45	40.61	\\r
90262010		0	Manômetros	31.45	40.61	\\r
90262090		0	Outros	31.45	40.61	\\r
90268000		0	-Outros instrumentos e aparelhos	38.77	47.93	\\r
90269010		0	De instrumentos e aparelhos para medida ou controle do nível	38.77	47.11	\\r
90269020		0	De manômetros	38.77	47.11	\\r
90269090		0	Outros	38.77	47.11	\\r
90271000		0	-Analisadores de gases ou de fumaça	31.45	38.94	\\r
90272011		0	De fase gasosa	31.45	32.05	\\r
90272012		0	De fase líquida	31.45	32.05	\\r
90272019		0	Outros	31.45	32.05	\\r
90272021		0	Sequenciadores automáticos de ADN mediante eletroforese capilar	31.45	32.05	\\r
90272029		0	Outros	31.45	38.94	\\r
90273011		0	De emissão atômica	31.45	32.05	\\r
90273019		0	Outros	31.45	38.94	\\r
90273020		0	Espectrofotômetros	31.45	38.94	\\r
90275010		0	Colorímetros	31.45	38.94	\\r
90275020		0	Fotômetros	31.45	38.94	\\r
90275030		0	Refratômetros	31.45	38.94	\\r
90275040		0	Sacarímetros	31.45	38.94	\\r
90275050		0	Citômetro de fluxo	31.45	32.05	\\r
90275090		0	Outros	31.45	38.94	\\r
90278011		0	Calorímetros	31.45	32.05	\\r
90278012		0	Viscosímetros	31.45	38.94	\\r
90278013		0	Densitômetros	31.45	38.94	\\r
90278014		0	Aparelhos medidores de pH	31.45	38.94	\\r
90278020		0	Espectrômetros de massa	31.45	38.94	\\r
90278030		0	Polarógrafos	31.45	32.05	\\r
90278091		0	Exposímetros	31.45	32.05	\\r
90278099		0	Outros	31.45	38.94	\\r
90279010		0	Micrótomos	34.12	34.72	\\r
90279091		0	De espectrômetros e espectrógrafos, de emissão atômica	34.12	34.72	\\r
90279093		0	De polarógrafos	34.12	34.72	\\r
90279099		0	Outros	34.12	41.61	\\r
90281011		0	Dos tipos utilizados em postos (estações) de serviço ou garagens	34.12	41.61	\\r
90281019		0	Outros	34.12	41.61	\\r
90281090		0	Outros	34.12	43.28	\\r
90282010		0	De peso inferior ou igual a 50 kg	34.12	43.28	\\r
90282020		0	De peso superior a 50 kg	34.12	43.28	\\r
90283011		0	Digitais	38.77	46.26	\\r
90283019		0	Outros	34.12	43.28	\\r
90283021		0	Digitais	38.77	46.26	\\r
90283029		0	Outros	34.12	43.28	\\r
90283031		0	Digitais	38.77	46.26	\\r
90283039		0	Outros	34.12	43.28	\\r
90283090		0	Outros	34.12	43.28	\\r
90289010		0	De contadores de eletricidade	38.77	47.11	\\r
90289090		0	Outros	38.77	47.11	\\r
90291010		0	Contadores de voltas, contadores de produção ou de horas de trabalho	38.77	46.26	\\r
90291090		0	Outros	38.77	47.93	\\r
90292010		0	Indicadores de velocidade e tacômetros	38.77	47.93	\\r
90292010	01	0	Ex 01 - Para veículos com sistema elétrico em 24V	33.60	42.76	\\r
90292020		0	Estroboscópios	38.77	47.93	\\r
90299010		0	De indicadores de velocidade e tacômetros	38.77	47.11	\\r
90299090		0	Outros	38.77	47.11	\\r
90301010		0	Medidores de radioatividade	34.12	41.61	\\r
90301090		0	Outros	34.12	41.61	\\r
90302010		0	Osciloscópios digitais	24.87	26.57	\\r
90302021		0	De frequência superior ou igual a 60 MHz	34.12	35.82	\\r
90302022		0	Vetorscópios	34.12	35.82	\\r
90302029		0	Outros	34.12	40.73	\\r
90302030		0	Oscilógrafos	34.12	34.72	\\r
90303100		0	--Multímetros, sem dispositivo registrador	34.12	41.61	\\r
90303200		0	--Multímetros, com dispositivo registrador	34.12	41.61	\\r
90303311		0	Digitais	34.12	40.73	\\r
90303319		0	Outros	34.12	40.73	\\r
90303321		0	Do tipo dos utilizados em veículos automóveis	34.12	43.28	\\r
90303329		0	Outros	34.12	41.61	\\r
90303390		0	Outros	34.12	41.61	\\r
90303910		0	De teste de continuidade em circuitos impressos	34.12	40.73	\\r
90303990		0	Outros	34.12	41.61	\\r
90304010		0	Analisadores de protocolo	34.12	40.73	\\r
90304020		0	Analisadores de nível seletivo	34.12	40.73	\\r
90304030		0	Analisadores digitais de transmissão	34.12	40.73	\\r
90304090		0	Outros	34.12	40.73	\\r
90308210		0	De testes de circuitos integrados	34.12	40.73	\\r
90308290		0	Outros	34.12	40.73	\\r
90308410		0	De teste automático de circuito impresso montado (ATE)	34.12	35.82	\\r
90308420		0	De medidas de parâmetros característicos de sinais de televisão ou de vídeo	34.12	35.82	\\r
90308490		0	Outros	34.12	41.61	\\r
90308910		0	Analisadores lógicos de circuitos digitais	34.12	35.82	\\r
90308920		0	Analisadores de espectro de frequência	34.12	35.82	\\r
90308930		0	Frequencímetros	34.12	40.73	\\r
90308940		0	Fasímetros	34.12	40.73	\\r
90308990		0	Outros	34.12	40.73	\\r
90309010		0	De instrumentos e aparelhos da subposição 9030.10	34.12	41.61	\\r
90309090		0	Outros	34.12	38.87	\\r
90311000		0	-Máquinas de balancear (equilibrar) peças mecânicas	31.45	38.94	\\r
90312010		0	Para motores	31.45	38.94	\\r
90312090		0	Outros	31.45	38.94	\\r
90314100		0	--Para controle de plaquetas (wafers) ou de dispositivos semicondutores ou para controle de máscaras ou retículos utilizados na fabricação de dispositivos semicondutores	31.45	38.94	\\r
90314910		0	Para medida de parâmetros dimensionais de fibras de celulose, por meio de raios laser	34.12	34.72	\\r
90314920		0	Para medida da espessura de pneumáticos de veículos automóveis, por meio de raios laser	34.12	34.72	\\r
90314990		0	Outros	34.12	41.61	\\r
90314990	01	0	Ex 01 - Projetores de perfis	31.45	38.94	\\r
90318011		0	Dinamômetros	31.45	38.94	\\r
90318012		0	Rugosímetros	31.45	38.94	\\r
90318020		0	Máquinas para medição tridimensional	31.45	38.94	\\r
90318030		0	Metros padrões	34.12	39.82	\\r
90318040		0	Aparelhos digitais, de uso em veículos automóveis, para medida e indicação de múltiplas grandezas tais como: velocidade média, consumos instantâneo e médio e autonomia (computador de bordo)	38.77	47.11	\\r
90318050		0	Aparelhos para análise de têxteis, computadorizados	31.45	32.05	\\r
90318060		0	Células de carga	34.12	41.61	\\r
90318091		0	Para controle dimensional de pneumáticos, em condições de carga	34.12	34.72	\\r
90318099		0	Outros	34.12	41.61	\\r
90319010		0	De bancos de ensaio	38.77	46.26	\\r
90319090		0	Outros	38.77	46.26	\\r
90321010		0	De expansão de fluidos	38.77	47.93	\\r
90321090		0	Outros	38.77	47.93	\\r
90322000		0	-Manostatos (pressostatos)	38.77	47.93	\\r
90328100		0	--Hidráulicos ou pneumáticos	38.77	47.93	\\r
90328911		0	Eletrônicos	38.37	44.65	\\r
90328919		0	Outros	38.77	47.93	\\r
90328921		0	De sistemas antibloqueantes de freio (ABS)	38.77	47.11	\\r
90328922		0	De sistemas de suspensão	38.77	47.11	\\r
90328923		0	De sistemas de transmissão	38.77	47.11	\\r
90328924		0	De sistemas de ignição	38.77	47.11	\\r
90328925		0	De sistemas de injeção	38.77	47.11	\\r
90328929		0	Outros	38.77	47.11	\\r
90328930		0	Equipamentos digitais para controle de veículos ferroviários	38.77	46.26	\\r
90328981		0	De pressão	38.77	46.26	\\r
90328982		0	De temperatura	38.77	46.26	\\r
90328983		0	De umidade	38.77	46.26	\\r
90328984		0	De velocidade de motores elétricos por variação de frequência	38.77	46.26	\\r
90328989		0	Outros	38.77	46.26	\\r
90328990		0	Outros	38.77	47.93	\\r
90329010		0	Circuitos impressos com componentes elétricos ou eletrônicos, montados	38.77	45.38	\\r
90329091		0	De termostatos	38.77	47.11	\\r
90329099		0	Outros	38.77	43.52	\\r
90330000		0	Partes e acessórios não especificados nem compreendidos noutras posições do presente Capítulo, para máquinas, aparelhos, instrumentos ou artigos do Capítulo 90.	38.77	47.11	\\r
91011100		0	--De mostrador exclusivamente mecânico	42.67	52.62	\\r
91011900		0	--Outros	42.67	52.62	\\r
91012100		0	--De corda automática	42.67	52.62	\\r
91012900		0	--Outros	42.67	52.62	\\r
91019100		0	--Funcionando eletricamente	42.67	52.62	\\r
91019900		0	--Outros	42.67	52.62	\\r
91021110		0	Com caixa de metal comum	40.80	50.75	\\r
91021190		0	Outros	40.80	50.75	\\r
91021210		0	Com caixa de metal comum	40.80	50.75	\\r
91021220		0	Com caixa de plástico, exceto as reforçadas com fibra de vidro	40.80	50.75	\\r
91021290		0	Outros	40.80	50.75	\\r
91021900		0	--Outros	40.80	50.75	\\r
91022100		0	--De corda automática	40.80	50.75	\\r
91022900		0	--Outros	40.80	50.75	\\r
91029100		0	--Funcionando eletricamente	40.80	50.75	\\r
91029100	01	0	Ex 01 - Com caixa de metal comum, mesmo dourado, prateado ou platinado	38.77	48.72	\\r
91029100	02	0	Ex 02 - Com caixa de plásticos sem carga ou reforço de fibras de vidro	38.77	48.72	\\r
91029900		0	--Outros	40.80	50.75	\\r
91031000		0	-Funcionando eletricamente	40.80	50.75	\\r
91039000		0	-Outros	40.80	50.75	\\r
91040000		0	Relógios para painéis de instrumentos e relógios semelhantes, para automóveis, veículos aéreos, embarcações ou para outros veículos.	40.01	49.96	\\r
91051100		0	--Funcionando eletricamente	40.80	50.75	\\r
91051900		0	--Outros	40.80	50.75	\\r
91052100		0	--Funcionando eletricamente	40.80	50.75	\\r
91052900		0	--Outros	40.80	50.75	\\r
91059100		0	--Funcionando eletricamente	40.80	50.75	\\r
91059900		0	--Outros	40.80	50.75	\\r
91061000		0	-Relógios de ponto. relógios datadores e contadores de horas	38.77	48.72	\\r
91069000		0	-Outros	38.77	48.72	\\r
91070010		0	Interruptores horários	38.77	48.72	\\r
91070090		0	Outros	38.77	48.72	\\r
91081110		0	Para relógios das posições 91.01 ou 91.02	40.80	49.96	\\r
91081190		0	Outros	40.80	49.96	\\r
91081200		0	--De mostrador exclusivamente optoeletrônico	40.80	49.96	\\r
91081900		0	--Outros	40.80	49.96	\\r
91082000		0	-De corda automática	40.80	49.96	\\r
91089000		0	-Outros	40.80	49.96	\\r
91091000		0	-Funcionando eletricamente	40.80	49.96	\\r
91099000		0	-Outros	40.80	49.96	\\r
91101110		0	Para relógios das posições 91.01 ou 91.02	40.80	49.96	\\r
91101190		0	Outros	40.80	49.96	\\r
91101200		0	--Maquinismos incompletos, montados	40.80	49.96	\\r
91101900		0	--Esboços	40.80	49.96	\\r
91109000		0	-Outros	40.80	49.96	\\r
91111000		0	-Caixas de metais preciosos ou de metais folheados ou chapeados de metais preciosos (plaquê)	40.80	49.96	\\r
91112010		0	De latão, em esboço	40.80	49.96	\\r
91112090		0	Outras	40.80	49.96	\\r
91118000		0	-Outras caixas	40.80	49.96	\\r
91119010		0	Fundos de metais comuns	40.80	49.96	\\r
91119090		0	Outras	40.80	49.96	\\r
91122000		0	-Caixas e semelhantes	40.80	49.96	\\r
91129000		0	-Partes	40.80	49.96	\\r
91131000		0	-De metais preciosos ou de metais folheados ou chapeados de metais preciosos (plaquê)	36.55	45.71	\\r
91132000		0	-De metais comuns, mesmo dourados ou prateados	36.55	45.71	\\r
91139000		0	-Outras	36.55	45.71	\\r
91141000		0	-Molas, incluindo as espirais	40.80	49.96	\\r
91143000		0	-Quadrantes	40.80	49.96	\\r
91144000		0	-Platinas e pontes	40.80	49.96	\\r
91149010		0	Coroas	40.80	49.96	\\r
91149020		0	Ponteiros	40.80	49.96	\\r
91149030		0	Hastes	40.80	49.96	\\r
91149040		0	Básculas	40.80	49.96	\\r
91149050		0	Eixos e pinhões	40.80	49.96	\\r
91149060		0	Rodas	40.80	49.96	\\r
91149070		0	Rotores	40.80	49.96	\\r
91149090		0	Outras	40.80	49.96	\\r
92011000		0	-Pianos verticais	31.45	40.61	\\r
92012000		0	-Pianos de cauda	31.45	40.61	\\r
92019000		0	-Outros	31.45	40.61	\\r
92021000		0	-De cordas, tocados com o auxílio de um arco	31.45	40.61	\\r
92029000		0	-Outros	31.45	40.61	\\r
92051000		0	-Instrumentos denominados “metais”	31.45	40.61	\\r
92059000		0	-Outros	31.45	40.61	\\r
92060000		0	Instrumentos musicais de percussão (por exemplo, tambores, caixas, xilofones, pratos, castanholas, maracás).	31.45	40.61	\\r
92071010		0	Sintetizadores	31.45	37.15	\\r
92071090		0	Outros	31.45	37.15	\\r
92079010		0	Guitarras e contrabaixos	31.45	40.61	\\r
92079090		0	Outros	31.45	40.61	\\r
92081000		0	-Caixas de música	31.45	40.61	\\r
92089000		0	-Outros	31.45	40.61	\\r
92093000		0	-Cordas para instrumentos musicais	31.45	39.79	\\r
92099100		0	--Partes e acessórios de pianos	31.45	39.79	\\r
92099200		0	--Partes e acessórios de instrumentos musicais da posição 92.02	31.45	39.79	\\r
92099400		0	--Partes e acessórios de instrumentos musicais da posição 92.07	31.45	39.79	\\r
92099900		0	--Outros	31.45	39.79	\\r
93011000		0	-Peças de artilharia (por exemplo, canhões, obuses e morteiros)	41.05	51.00	\\r
93012000		0	-Lança-mísseis. lança-chamas. lança-granadas. lança-torpedos e lançadores semelhantes	41.05	51.00	\\r
93019000		0	-Outras	41.05	51.00	\\r
93020000		0	Revólveres e pistolas, exceto os das posições 93.03 ou 93.04.	58.48	68.43	\\r
93031000		0	-Armas de fogo carregáveis exclusivamente pela boca	58.48	68.43	\\r
93032000		0	-Outras espingardas e carabinas de caça ou de tiro ao alvo, com pelo menos um cano liso	58.48	68.43	\\r
93033000		0	-Outras espingardas e carabinas de caça ou de tiro ao alvo	58.48	68.43	\\r
93039000		0	-Outros	58.48	68.43	\\r
93039000	01	0	Ex 01 - Pistolas de sinalização	54.01	63.96	\\r
93040000		0	Outras armas (por exemplo, espingardas, carabinas e pistolas, de mola, de ar comprimido ou de gás, cassetetes), exceto as da posição 93.07.	58.48	68.43	\\r
93051000		0	-De revólveres ou pistolas	58.48	68.43	\\r
93052000		0	-De espingardas ou carabinas da posição 93.03	58.48	68.43	\\r
93059100		0	--De armas de guerra da posição 93.01	41.05	51.00	\\r
93059900		0	--Outros	58.48	68.43	\\r
93062100		0	--Cartuchos	50.41	60.36	\\r
93062900		0	--Outros	58.48	68.43	\\r
93062900	01	0	Ex 01 - Partes de cartuchos	50.41	60.36	\\r
93063000		0	-Outros cartuchos e suas partes	50.41	60.36	\\r
93063000	01	0	Ex 01 - Cartuchos sem projétil ou carga de chumbo, para uso técnico, e suas partes	46.16	56.11	\\r
93063000	02	0	Ex 02 - Para pistolas de rebitar ou de usos semelhantes ou para pistolas de êmbolo cativo para abate de animais	46.16	56.11	\\r
93069000		0	-Outros	58.48	68.43	\\r
93070000		0	Sabres, espadas, baionetas, lanças e outras armas brancas, suas partes e bainhas.	58.48	68.43	\\r
94011010		0	Ejetáveis	31.85	41.01	\\r
94011090		0	Outros	31.85	41.01	\\r
94012000		0	-Assentos dos tipos utilizados em veículos automóveis	38.07	47.23	\\r
94012000	01	0	Ex 01 - De ônibus	28.91	38.07	\\r
94012000	02	0	Ex 02 - De caminhões	28.91	38.07	\\r
94012000	03	0	Ex 03 - De tratores agrícolas ou de colheitadeiras	28.91	38.07	\\r
94012000	04	0	Ex 04 - De ferro ou aço, dos tipos usados em colheitadeiras	28.91	38.07	\\r
94013010		0	De madeira	29.42	38.58	\\r
94013090		0	Outros	29.42	38.58	\\r
94014010		0	De madeira	29.42	38.58	\\r
94014090		0	Outros	29.42	38.58	\\r
94015100		0	--De bambu ou de rotim	29.42	38.58	\\r
94015900		0	--Outros	29.42	38.58	\\r
94016100		0	--Estofados	29.42	38.58	\\r
94016900		0	--Outros	29.42	38.58	\\r
94017100		0	--Estofados	29.42	38.58	\\r
94017900		0	--Outros	29.42	38.58	\\r
94018000		0	-Outros assentos	29.42	38.58	\\r
94019010		0	De madeira	29.42	38.58	\\r
94019090		0	Outros	29.42	38.58	\\r
94021000		0	-Cadeiras de dentista, cadeiras para salões de cabeleireiro e cadeiras semelhantes, e suas partes	34.12	43.28	\\r
94021000	01	0	Ex 01 - Cadeiras para salões de cabeleireiro	4.20	20.05	\\r
94029010		0	Mesas de operação	34.12	41.61	\\r
94029020		0	Camas dotadas de mecanismos para usos clínicos	34.12	41.61	\\r
94029090		0	Outros	34.12	42.46	\\r
94031000		0	-Móveis de metal, do tipo utilizado em escritórios	29.42	38.58	\\r
94032000		0	-Outros móveis de metal	29.42	38.58	\\r
94033000		0	-Móveis de madeira, do tipo utilizado em escritórios	29.42	38.58	\\r
94034000		0	-Móveis de madeira, do tipo utilizado em cozinhas	29.42	38.58	\\r
94035000		0	-Móveis de madeira, do tipo utilizado em quartos de dormir	29.42	38.58	\\r
94036000		0	-Outros móveis de madeira	29.42	38.58	\\r
94037000		0	-Móveis de plásticos	29.42	38.58	\\r
94038100		0	--De bambu ou de rotim	29.42	38.58	\\r
94038900		0	--Outros	29.42	38.58	\\r
94039010		0	De madeira	29.42	38.58	\\r
94039090		0	Outras	29.42	38.58	\\r
94041000		0	-Suportes para camas (somiês)	26.75	35.91	\\r
94042100		0	--De borracha alveolar ou de plásticos alveolares, mesmo recobertos	26.75	35.91	\\r
94042900		0	--De outras matérias	26.75	35.91	\\r
94043000		0	-Sacos de dormir	31.45	40.61	\\r
94049000		0	-Outros	31.45	40.61	\\r
94051010		0	Lâmpadas escialíticas (luzes sem sombra, do tipo utilizado em medicina, cirurgia, odontologia)	38.77	47.93	\\r
94051091		0	De pedra	38.77	47.93	\\r
94051092		0	De vidro	38.77	47.93	\\r
94051093		0	De metais comuns	38.77	47.93	\\r
94051099		0	Outros	38.77	47.93	\\r
94052000		0	-Abajures de cabeceira, de escritório e lampadários de interior, elétricos	38.77	47.93	\\r
94053000		0	-Guirlandas elétricas dos tipos utilizados em árvores de Natal	38.77	47.93	\\r
94054010		0	De metais comuns	38.77	47.93	\\r
94054090		0	Outros	38.77	47.93	\\r
94054090	01	0	Ex 01 - Refletores (projetores) de lâmpadas halógenas ou HMI, abertos ou com lentes de Fresnel	31.45	40.61	\\r
94055000		0	-Aparelhos não elétricos de iluminação	34.12	43.28	\\r
94056000		0	-Anúncios, cartazes ou tabuletas e placas indicadoras luminosos, e artigos semelhantes	38.77	47.93	\\r
94059100		0	--De vidro	38.77	47.93	\\r
94059200		0	--De plásticos	38.77	47.93	\\r
94059900		0	--Outras	38.77	47.93	\\r
94060010		0	Estufas	31.45	38.94	\\r
94060091		0	Com estrutura de madeira e paredes exteriores constituídas essencialmente dessa matéria	31.45	40.61	\\r
94060092		0	Com estrutura de ferro ou aço e paredes exteriores constituídas essencialmente dessas matérias	31.45	38.94	\\r
94060099		0	Outras	31.45	40.61	\\r
95030010		0	Triciclos, patinetes, carros de pedais e outros brinquedos semelhantes com rodas. carrinhos para bonecos	36.55	51.70	\\r
95030021		0	Bonecos, mesmo vestidos, com mecanismo a corda ou elétrico	36.55	51.70	\\r
95030022		0	Outros bonecos, mesmo vestidos	36.55	51.70	\\r
95030029		0	Partes e acessórios	36.55	46.50	\\r
95030031		0	Com enchimento	36.55	51.70	\\r
95030039		0	Outros	36.55	51.70	\\r
95030040		0	Trens elétricos, incluindo os trilhos, sinais e outros acessórios	36.55	51.70	\\r
95030050		0	Modelos reduzidos, mesmo animados, em conjuntos para montagem, exceto os do item 9503.00.40	36.55	51.70	\\r
95030060		0	Outros conjuntos e brinquedos, para construção	36.55	51.70	\\r
95030070		0	Quebra-cabeças (puzzles)	36.55	51.70	\\r
95030080		0	Outros brinquedos, apresentados em sortidos ou em panóplias	36.55	51.70	\\r
95030091		0	Instrumentos e aparelhos musicais, de brinquedo	36.55	51.70	\\r
95030097		0	Outros brinquedos, com motor elétrico	36.55	51.70	\\r
95030098		0	Outros brinquedos, com motor não elétrico	36.55	51.70	\\r
95030099		0	Outros	36.55	51.70	\\r
95042000		0	-Bilhares de qualquer tipo e seus acessórios	52.15	62.10	\\r
95042000	01	0	Ex 01 - Gizes	45.47	55.42	\\r
95043000		0	-Outros jogos que funcionem por introdução de moedas, papéis-moeda, cartões de banco, fichas ou por outros meios de pagamento, exceto os jogos de balizas automáticos (boliche)	40.80	50.75	\\r
95044000		0	-Cartas de jogar	41.21	51.16	\\r
95045000		0	-Consoles e máquinas de jogos de vídeo, exceto os classificados na subposição 9504.30	54.82	64.77	\\r
95045000	01	0	Ex 01 - Partes e acessórios dos consoles e das máquinas de jogos de vídeo cujas imagens são reproduzidas numa tela de um receptor de televisão, num monitor ou noutra tela ou superfície externa	52.15	62.10	\\r
95045000	02	0	Ex 02 - Máquinas de jogos de vídeo com tela incorporada, portáteis ou não, e suas partes e acessórios	45.47	55.42	\\r
95049010		0	Jogos de balizas automáticos	40.80	41.40	\\r
95049090		0	Outros	40.80	50.75	\\r
95049090	01	0	Ex 01 - Dados e copos para dados	47.48	57.43	\\r
95049090	02	0	Ex 02 - Ficha, marca (escore) ou tento	47.48	57.43	\\r
95051000		0	-Artigos para festas de Natal	40.80	50.75	\\r
95059000		0	-Outros	45.47	55.42	\\r
95061100		0	--Esquis	45.47	55.42	\\r
95061200		0	--Fixadores para esquis	40.80	50.75	\\r
95061900		0	--Outros	40.80	50.75	\\r
95062100		0	--Pranchas a vela	40.80	50.75	\\r
95062900		0	--Outros	40.80	50.75	\\r
95063100		0	--Tacos completos	40.80	50.75	\\r
95063200		0	--Bolas	45.47	55.42	\\r
95063900		0	--Outros	40.80	50.75	\\r
95064000		0	-Artigos e equipamentos para tênis de mesa	40.80	50.75	\\r
95065100		0	--Raquetes de tênis, mesmo não encordoadas	40.80	50.75	\\r
95065900		0	--Outras	40.80	50.75	\\r
95066100		0	--Bolas de tênis	45.47	55.42	\\r
95066200		0	--Infláveis	36.11	46.06	\\r
95066900		0	--Outras	45.47	55.42	\\r
95067000		0	-Patins para gelo e patins de rodas, incluindo os fixados em calçados	40.80	50.75	\\r
95069100		0	--Artigos e equipamentos para cultura física, ginástica ou atletismo	40.80	50.75	\\r
95069900		0	--Outros	40.80	50.75	\\r
95071000		0	-Varas de pesca	40.80	50.75	\\r
95072000		0	-Anzóis, mesmo montados em sedelas	40.80	50.75	\\r
95073000		0	-Molinetes de pesca	40.80	50.75	\\r
95079000		0	-Outros	40.80	50.75	\\r
95081000		0	-Circos ambulantes e coleções de animais ambulantes	36.55	46.50	\\r
95081000	01	0	Ex 01 - Coleções de animais de zoológicos, de circos ou de outras atrações itinerantes	31.45	41.40	\\r
95089010		0	Montanha-russa com percurso superior ou igual a 300 m	36.55	37.15	\\r
95089020		0	Carrosséis, mesmo dotados de dispositivo de elevação, com diâmetro superior ou igual a 16 m	36.55	37.15	\\r
95089030		0	Vagonetes dos tipos utilizados em montanha-russa e similares, com capacidade superior ou igual a 6 pessoas	36.55	37.15	\\r
95089090		0	Outros	36.55	46.50	\\r
96011000		0	-Marfim trabalhado e obras de marfim	31.45	40.61	\\r
96019000		0	-Outros	31.45	40.61	\\r
96020010		0	Cápsulas de gelatinas digeríveis	31.45	38.94	\\r
96020020		0	Colméias artificiais	31.45	40.61	\\r
96020090		0	Outras	31.45	40.61	\\r
96031000		0	-Vassouras e escovas constituídas por pequenos ramos ou outras matérias vegetais reunidas em feixes, com ou sem cabo	31.45	40.61	\\r
96032100		0	--Escovas de dentes, incluindo as escovas para dentaduras	26.75	35.91	\\r
96032900		0	--Outros	27.45	36.61	\\r
96033000		0	-Pincéis e escovas, para artistas, pincéis de escrever e pincéis semelhantes para aplicação de produtos cosméticos	31.45	40.61	\\r
96034010		0	Rolos	31.45	40.61	\\r
96034090		0	Outros	31.45	40.61	\\r
96035000		0	-Outras escovas que constituam partes de máquinas, aparelhos ou veículos	31.45	40.61	\\r
96039000		0	-Outros	30.75	39.91	\\r
96040000		0	Peneiras e crivos, manuais.	31.45	40.61	\\r
96050000		0	Conjuntos de viagem para toucador de pessoas, para costura ou para limpeza de calçados ou de roupas.	36.55	45.71	\\r
96061000		0	-Botões de pressão e suas partes	31.45	40.61	\\r
96062100		0	--De plásticos, não recobertos de matérias têxteis	31.45	40.61	\\r
96062200		0	--De metais comuns, não recobertos de matérias têxteis	31.45	40.61	\\r
96062900		0	--Outros	31.45	40.61	\\r
96063000		0	-Formas e outras partes, de botões. esboços de botões	31.45	40.61	\\r
96071100		0	--Com grampos de metal comum	31.45	40.61	\\r
96071900		0	--Outros	31.45	40.61	\\r
96072000		0	-Partes	31.45	40.61	\\r
96081000		0	-Canetas esferográficas	40.10	49.26	\\r
96082000		0	-Canetas e marcadores, com ponta de feltro ou com outras pontas porosas	40.10	49.26	\\r
96083000		0	-Canetas-tinteiro e outras canetas	40.10	49.26	\\r
96084000		0	-Lapiseiras	40.10	49.26	\\r
96085000		0	-Sortidos de artigos de, pelo menos, duas das subposições precedentes	40.10	49.26	\\r
96086000		0	-Cargas com ponta, para canetas esferográficas	40.10	49.26	\\r
96089100		0	--Penas e suas pontas	40.10	49.26	\\r
96089981		0	Pontas porosas para os artigos da subposição 9608.20	40.10	49.26	\\r
96089989		0	Outras	40.10	49.26	\\r
96089990		0	Outros	40.10	49.26	\\r
96091000		0	-Lápis	30.75	39.91	\\r
96092000		0	-Minas para lápis ou para lapiseiras	30.75	39.91	\\r
96099000		0	-Outros	30.75	39.91	\\r
96100000		0	Lousas e quadros para escrever ou desenhar, mesmo emoldurados.	30.75	39.91	\\r
96110000		0	Carimbos, incluindo os datadores e numeradores, sinetes e artigos semelhantes (incluindo os aparelhos para impressão de etiquetas), manuais. dispositivos manuais de composição tipográfica e jogos de impressão manuais que contenham tais dispositivos.	31.45	40.61	\\r
96121011		0	Com tinta magnetizável à base de óxido de ferro, para impressão de caracteres	40.80	49.96	\\r
96121012		0	Corretivas (tipo cover up), para máquinas de escrever	40.80	49.96	\\r
96121013		0	Outras, apresentadas em cartucho, para máquinas de escrever	40.80	49.96	\\r
96121019		0	Outras	40.80	49.96	\\r
96121090		0	Outras	40.80	49.96	\\r
96122000		0	-Almofadas de carimbo	40.80	49.96	\\r
96131000		0	-Isqueiros de bolso, a gás, não recarregáveis	47.48	56.64	\\r
96132000		0	-Isqueiros de bolso, a gás, recarregáveis	47.48	56.64	\\r
96138000		0	-Outros isqueiros e acendedores	47.48	56.64	\\r
96139000		0	-Partes	47.48	56.64	\\r
96140000		0	Cachimbos (incluindo os seus fornilhos), piteiras (boquilhas) para charutos ou cigarros, e suas partes.	49.06	58.22	\\r
96151100		0	--De borracha endurecida ou de plásticos	38.77	47.93	\\r
96151900		0	--Outros	38.77	47.93	\\r
96159000		0	-Outros	38.77	47.93	\\r
96161000		0	-Vaporizadores de toucador, suas armações e cabeças de armações	40.80	49.96	\\r
96162000		0	-Borlas ou esponjas para pós ou para aplicação de outros cosméticos ou de produtos de toucador	31.45	40.61	\\r
96170010		0	Garrafas térmicas e outros recipientes isotérmicos	38.77	47.93	\\r
96170020		0	Partes	38.77	47.11	\\r
96180000		0	Manequins e artigos semelhantes. autômatos e cenas animadas, para vitrines e mostruários.	40.01	49.17	\\r
96190000		0	Absorventes e tampões higiênicos, cueiros e fraldas para bebês e artigos higiênicos semelhantes, de qualquer matéria.	30.75	39.09	\\r
3801		2	Serviços de museologia.	18.45	19.05	\\r
96190000	01	0	Ex 01 - Artigos de vestuário, de plástico	34.12	42.46	\\r
96190000	02	0	Ex 02 - Outros artigos higiênicos, de plástico	38.77	47.11	\\r
97011000		0	-Quadros, pinturas e desenhos	31.45	34.20	\\r
97019000		0	-Outros	31.45	34.20	\\r
97019000	01	0	Ex 01 - De flores, botões de flores ou de outras partes de plantas naturais, ervas, musgos e líquens	31.45	34.20	\\r
97020000		0	Gravuras, estampas e litografias, originais.	31.45	34.20	\\r
97030000		0	Produções originais de arte estatuária ou de escultura, de quaisquer matérias.	31.45	34.20	\\r
97040000		0	Selos postais, selos fiscais, marcas postais, envelopes de primeiro dia (first-day covers), inteiros postais e semelhantes, obliterados, ou não obliterados, exceto os artigos da posição 49.07.	31.45	34.20	\\r
97050000		0	Coleções e espécimes para coleções, de zoologia, botânica, mineralogia, anatomia, ou apresentando interesse histórico, arqueológico, paleontológico, etnográfico ou numismático.	31.45	34.20	\\r
97060000		0	Antiguidades com mais de 100 anos.	31.45	34.20	\\r
0101		2	Análise e desenvolvimento de sistemas.	17.59	18.19	\\r
0102		2	Programação.	17.59	18.19	\\r
0103		2	Processamento de dados e congêneres.	17.25	17.85	\\r
0104		2	Elaboração de programas de computadores, inclusive de jogos eletrônicos.	15.84	16.44	\\r
0105		2	Licenciamento ou cessão de direito de uso de programas de computação.	16.37	16.97	\\r
0106		2	Assessoria e consultoria em informática.	18.13	18.73	\\r
0107		2	Suporte técnico em informática, inclusive instalação, configuração e manutenção de programas de computação e bancos de dados.	16.81	17.41	\\r
0108		2	Planejamento, confecção, manutenção e atualização de páginas eletrônicas.	18.16	18.76	\\r
1001		2	Agenciamento, corretagem ou intermediação de câmbio, de seguros, de cartões de crédito, de planos de saúde e de planos de previdência privada.	17.80	18.40	\\r
1002		2	Agenciamento, corretagem ou intermediação de títulos em geral, valores mobiliários e contratos quaisquer.	17.73	18.33	\\r
1003		2	Agenciamento, corretagem ou intermediação de direitos de propriedade industrial, artística ou literária.	18.29	18.89	\\r
1004		2	Agenciamento, corretagem ou intermediação de contratos de arrendamento mercantil (leasing), de franquia (franchising) e de faturização (factoring).	17.72	18.32	\\r
1005		2	Agenciamento, corretagem ou intermediação de bens móveis ou imóveis, não abrangidos em outros itens ou subitens, inclusive aqueles realizados no âmbito de Bolsas de Mercadorias e Futuros, por quaisquer meios.	17.85	18.45	\\r
1006		2	Agenciamento marítimo.	18.29	18.89	\\r
1007		2	Agenciamento de notícias.	18.29	18.89	\\r
1008		2	Agenciamento de publicidade e propaganda, inclusive o agenciamento de veiculação por quaisquer meios.	18.21	18.81	\\r
1009		2	Representação de qualquer natureza, inclusive comercial.	17.72	18.32	\\r
1010		2	Distribuição de bens de terceiros.	17.85	18.45	\\r
1101		2	Guarda e estacionamento de veículos terrestres automotores, de aeronaves e de embarcações.	18.07	18.67	\\r
1102		2	Vigilância, segurança ou monitoramento de bens e pessoas.	16.50	17.10	\\r
1103		2	Escolta, inclusive de veículos e cargas.	16.76	17.36	\\r
1104		2	Armazenamento, depósito, carga, descarga, arrumação e guarda de bens de qualquer espécie.	18.06	18.66	\\r
1201		2	Espetáculos teatrais.	17.05	17.65	\\r
1202		2	Exibições cinematográficas.	18.26	18.86	\\r
1203		2	Espetáculos circenses.	17.13	17.73	\\r
1204		2	Programas de auditório.	18.45	19.05	\\r
1205		2	Parques de diversões, centros de lazer e congêneres.	17.13	17.73	\\r
1206		2	Boates, taxi-dancing e congêneres.	18.34	18.94	\\r
1207		2	Shows, ballet, danças, desfiles, bailes, óperas, concertos, recitais, festivais e congêneres.	17.79	18.39	\\r
1208		2	Feiras, exposições, congressos e congêneres.	17.76	18.36	\\r
1209		2	Bilhares, boliches e diversões eletrônicas ou não.	18.42	19.02	\\r
1210		2	Corridas e competições de animais.	18.45	19.05	\\r
1211		2	Competições esportivas ou de destreza física ou intelectual, com ou sem a participação do espectador.	17.85	18.45	\\r
1212		2	Execução de música.	18.45	19.05	\\r
1213		2	Produção, mediante ou sem encomenda prévia, de eventos, espetáculos, entrevistas, shows, ballet, danças, desfiles, bailes, teatros, óperas, concertos, recitais, festivais e congêneres.	18.38	18.98	\\r
1214		2	Fornecimento de música para ambientes fechados ou não, mediante transmissão por qualquer processo.	18.45	19.05	\\r
1215		2	Desfiles de blocos carnavalescos ou folclóricos, trios elétricos e congêneres.	18.45	19.05	\\r
1216		2	Exibição de filmes, entrevistas, musicais, espetáculos, shows, concertos, desfiles, óperas, competições esportivas, de destreza intelectual ou congêneres.	17.88	18.48	\\r
1217		2	Recreação e animação, inclusive em festas e eventos de qualquer natureza.	18.45	19.05	\\r
1301		2	(VETADO)	18.45	19.05	\\r
1302		2	Fonografia ou gravação de sons, inclusive trucagem, dublagem, mixagem e congêneres.	18.45	19.05	\\r
1303		2	Fotografia e cinematografia, inclusive revelação, ampliação, cópia, reprodução, trucagem e congêneres.	18.45	19.05	\\r
1304		2	Reprografia, microfilmagem e digitalização.	17.13	17.73	\\r
1305		2	Composição gráfica, fotocomposição, clicheria, zincografia, litografia, fotolitografia.	18.16	18.76	\\r
1401		2	Lubrificação, limpeza, lustração, revisão, carga e recarga, conserto, restauração, blindagem, manutenção e conservação de máquinas, veículos, aparelhos, equipamentos, motores, elevadores ou de qualquer objeto (exceto peças e partes empregadas, que ficam sujeitas ao ICMS).	18.05	18.65	\\r
1402		2	Assistência técnica.	18.45	19.05	\\r
1403		2	Recondicionamento de motores (exceto peças e partes empregadas, que ficam sujeitas ao ICMS).	18.45	19.05	\\r
1404		2	Recauchutagem ou regeneração de pneus.	18.23	18.83	\\r
1405		2	Restauração, recondicionamento, acondicionamento, pintura, beneficiamento, lavagem, secagem, tingimento, galvanoplastia, anodização, corte, recorte, polimento, plastificação e congêneres, de objetos quaisquer.	18.45	19.05	\\r
1406		2	Instalação e montagem de aparelhos, máquinas e equipamentos, inclusive montagem industrial, prestados ao usuário final, exclusivamente com material por ele fornecido.	18.45	19.05	\\r
1407		2	Colocação de molduras e congêneres.	18.45	19.05	\\r
1408		2	Encadernação, gravação e douração de livros, revistas e congêneres.	18.37	18.97	\\r
1409		2	Alfaiataria e costura, quando o material for fornecido pelo usuário final, exceto aviamento.	18.01	18.61	\\r
1410		2	Tinturaria e lavanderia.	18.45	19.05	\\r
1411		2	Tapeçaria e reforma de estofamentos em geral.	18.45	19.05	\\r
1412		2	Funilaria e lanternagem.	18.45	19.05	\\r
1413		2	Carpintaria e serralheria.	18.45	19.05	\\r
1501		2	Administração de fundos quaisquer, de consórcio, de cartão de crédito ou débito e congêneres, de carteira de clientes, de cheques pré-datados e congêneres.	17.15	17.75	\\r
1502		2	Abertura de contas em geral, inclusive conta-corrente, conta de investimentos e aplicação e caderneta de poupança, no País e no exterior, bem como a manutenção das referidas contas ativas e inativas.	18.27	18.87	\\r
1503		2	Locação e manutenção de cofres particulares, de terminais eletrônicos, de terminais de atendimento e de bens e equipamentos em geral.	18.44	19.04	\\r
1504		2	Fornecimento ou emissão de atestados em geral, inclusive atestado de idoneidade, atestado de capacidade financeira e congêneres.	18.43	19.03	\\r
1505		2	Cadastro, elaboração de ficha cadastral, renovação cadastral e congêneres, inclusão ou exclusão no Cadastro de Emitentes de Cheques sem Fundos CCF ou em quaisquer outros bancos cadastrais.	18.43	19.03	\\r
1506		2	Emissão, reemissão e fornecimento de avisos, comprovantes e documentos em geral. abono de firmas. coleta e entrega de documentos, bens e valores. comunicação com outra agência ou com a administração central. licenciamento eletrônico de veículos. transferência de veículos. agenciamento fiduciário ou depositário. devolução de bens em custódia.	18.44	19.04	\\r
1507		2	Acesso, movimentação, atendimento e consulta a contas em geral, por qualquer meio ou processo, inclusive por telefone, fac-símile, internet e telex, acesso a terminais de atendimento, inclusive vinte e quatro horas. acesso a outro banco e a rede compartilhada. fornecimento de saldo, extrato e demais informações relativas a contas em geral, por qualquer meio ou processo.	18.44	19.04	\\r
1508		2	Emissão, reemissão, alteração, cessão, substituição, cancelamento e registro de contrato de crédito. estudo, análise e avaliação de operações de crédito. emissão, concessão, alteração ou contratação de aval, fiança, anuência e congêneres. serviços relativos a abertura de crédito, para quaisquer fins.	18.43	19.03	\\r
1509		2	Arrendamento mercantil (leasing) de quaisquer bens, inclusive cessão de direitos e obrigações, substituição de garantia, alteração, cancelamento e registro de contrato, e demais serviços relacionados ao arrendamento mercantil (leasing).	15.68	16.28	\\r
1510		2	Serviços relacionados a cobranças, recebimentos ou pagamentos em geral, de títulos quaisquer, de contas ou carnês, de câmbio, de tributos e por conta de terceiros, inclusive os efetuados por meio eletrônico, automático ou por máquinas de atendimento. fornecimento de posição de cobrança, recebimento ou pagamento. emissão de carnês, fichas de compensação, impressos e documentos em geral.	18.45	19.05	\\r
1511		2	Devolução de títulos, protesto de títulos, sustação de protesto, manutenção de títulos, reapresentação de títulos, e demais serviços a eles relacionados.	18.45	19.05	\\r
1512		2	Custódia em geral, inclusive de títulos e valores mobiliários.	18.44	19.04	\\r
1513		2	Serviços relacionados a operações de câmbio em geral, edição, alteração, prorrogação, cancelamento e baixa de contrato de câmbio. emissão de registro de exportação ou de crédito. cobrança ou depósito no exterior. emissão, fornecimento e cancelamento de cheques de viagem. fornecimento, transferência, cancelamento e demais serviços relativos a carta de crédito de importação, exportação e garantias recebidas. envio e recebimento de mensagens em geral relacionadas a operações de câmbio.	18.27	18.87	\\r
1514		2	Fornecimento, emissão, reemissão, renovação e manutenção de cartão magnético, cartão de crédito, cartão de débito, cartão salário e congêneres.	18.44	19.04	\\r
1515		2	Compensação de cheques e títulos quaisquer. serviços relacionados a depósito, inclusive depósito identificado, a saque de contas quaisquer, por qualquer meio ou processo, inclusive em terminais eletrônicos e de atendimento.	18.44	19.04	\\r
1516		2	Emissão, reemissão, liquidação, alteração, cancelamento e baixa de ordens de pagamento, ordens de crédito e similares, por qualquer meio ou processo. serviços relacionados à transferência de valores, dados, fundos, pagamentos e similares, inclusive entre contas em geral.	18.44	19.04	\\r
1517		2	Emissão, fornecimento, devolução, sustação, cancelamento e oposição de cheques quaisquer, avulso ou por talão.	18.44	19.04	\\r
1518		2	Serviços relacionados a crédito imobiliário, avaliação e vistoria de imóvel ou obra, análise técnica e jurídica, emissão, reemissão, alteração, transferência e renegociação de contrato, emissão e reemissão do termo de quitação e demais serviços relacionados a crédito imobiliário.	18.43	19.03	\\r
1601		2	Serviços de transporte de natureza municipal.	16.06	16.66	\\r
1701		2	Assessoria ou consultoria de qualquer natureza, não contida em outros itens desta lista. análise, exame, pesquisa, coleta, compilação e fornecimento de dados e informações de qualquer natureza, inclusive cadastro e similares.	18.43	19.03	\\r
1702		2	Datilografia, digitação, estenografia, expediente, secretaria em geral, resposta audível, redação, edição, interpretação, revisão, tradução, apoio e infra-estrutura administrativa e congêneres.	18.17	18.77	\\r
1703		2	Planejamento, coordenação, programação ou organização técnica, financeira ou administrativa.	18.45	19.05	\\r
1704		2	Recrutamento, agenciamento, seleção e colocação de mão-de-obra.	18.26	18.86	\\r
1705		2	Fornecimento de mão-de-obra, mesmo em caráter temporário, inclusive de empregados ou trabalhadores, avulsos ou temporários, contratados pelo prestador de serviço.	16.94	17.54	\\r
3901		2	Serviços de ourivesaria e lapidação (quando o material for fornecido pelo tomador do serviço).	18.45	19.05	\\r
1706		2	Propaganda e publicidade, inclusive promoção de vendas, planejamento de campanhas ou sistemas de publicidade, elaboração de desenhos, textos e demais materiais publicitários.	17.75	18.35	\\r
1707		2	(VETADO)	18.45	19.05	\\r
1708		2	Franquia (franchising).	18.00	18.60	\\r
1709		2	Perícias, laudos, exames técnicos e análises técnicas.	17.13	17.73	\\r
1710		2	Planejamento, organização e administração de feiras, exposições, congressos e congêneres.	18.45	19.05	\\r
1711		2	Organização de festas e recepções. bufê (exceto o fornecimento de alimentação e bebidas, que fica sujeito ao ICMS).	18.45	19.05	\\r
1712		2	Administração em geral, inclusive de bens e negócios de terceiros.	18.42	19.02	\\r
1713		2	Leilão e congêneres.	18.45	19.05	\\r
1714		2	Advocacia.	18.45	19.05	\\r
1715		2	Arbitragem de qualquer espécie, inclusive jurídica.	18.45	19.05	\\r
1716		2	Auditoria.	18.45	19.05	\\r
1717		2	Análise de Organização e Métodos.	18.45	19.05	\\r
1718		2	Atuária e cálculos técnicos de qualquer natureza.	18.45	19.05	\\r
1719		2	Contabilidade, inclusive serviços técnicos e auxiliares.	18.45	19.05	\\r
1720		2	Consultoria e assessoria econômica ou financeira.	18.43	19.03	\\r
1721		2	Estatística.	18.45	19.05	\\r
1722		2	Cobrança em geral.	18.45	19.05	\\r
1723		2	Assessoria, análise, avaliação, atendimento, consulta, cadastro, seleção, gerenciamento de informações, administração de contas a receber ou a pagar e em geral, relacionados a operações de faturização (factoring).	18.43	19.03	\\r
1724		2	Apresentação de palestras, conferências, seminários e congêneres.	18.00	18.60	\\r
1801		2	Serviços de regulação de sinistros vinculados a contratos de seguros. inspeção e avaliação de riscos para cobertura de contratos de seguros. prevenção e gerência de riscos seguráveis e congêneres.	18.31	18.91	\\r
1901		2	Serviços de distribuição e venda de bilhetes e demais produtos de loteria, bingos, cartões, pules ou cupons de apostas, sorteios, prêmios, inclusive os decorrentes de títulos de capitalização e congêneres.	18.34	18.94	\\r
0201		2	Serviços de pesquisas e desenvolvimento de qualquer natureza.	17.13	17.73	\\r
2001		2	Serviços portuários, ferroportuários, utilização de porto, movimentação de passageiros, reboque de embarcações, rebocador escoteiro, atracação, desatracação, serviços de praticagem, capatazia, armazenagem de qualquer natureza, serviços acessórios, movimentação de mercadorias, serviços de apoio marítimo, de movimentação ao largo, serviços de armadores, estiva, conferência, logística e congêneres.	18.45	19.05	\\r
2002		2	Serviços aeroportuários, utilização de aeroporto, movimentação de passageiros, armazenagem de qualquer natureza, capatazia, movimentação de aeronaves, serviços de apoio aeroportuários, serviços acessórios, movimentação de mercadorias, logística e congêneres.	18.45	19.05	\\r
2003		2	Serviços de terminais rodoviários, ferroviários, metroviários, movimentação de passageiros, mercadorias, inclusive suas operações, logística e congêneres.	18.45	19.05	\\r
2101		2	Serviços de registros públicos, cartorários e notariais.	17.85	18.45	\\r
2201		2	Serviços de exploração de rodovia mediante cobrança de preço ou pedágio dos usuários, envolvendo execução de serviços de conservação, manutenção, melhoramentos para adequação de capacidade e segurança de trânsito, operação, monitoração, assistência aos usuários e outros serviços definidos em contratos, atos de concessão ou de permissão ou em normas oficiais.	18.45	19.05	\\r
2301		2	Serviços de programação e comunicação visual, desenho industrial e congêneres.	18.45	19.05	\\r
2401		2	Serviços de chaveiros, confecção de carimbos, placas, sinalização visual, banners, adesivos e congêneres.	18.45	19.05	\\r
2501		2	Funerais, inclusive fornecimento de caixão, urna ou esquifes. aluguel de capela. transporte do corpo cadavérico. fornecimento de flores, coroas e outros paramentos. desembaraço de certidão de óbito. fornecimento de véu, essa e outros adornos. embalsamento, embelezamento, conservação ou restauração de cadáveres.	18.45	19.05	\\r
2502		2	Cremação de corpos e partes de corpos cadavéricos.	18.45	19.05	\\r
2503		2	Planos ou convênio funerários.	18.45	19.05	\\r
2504		2	Manutenção e conservação de jazigos e cemitérios.	18.45	19.05	\\r
2601		2	Serviços de coleta, remessa ou entrega de correspondências, documentos, objetos, bens ou valores, inclusive pelos correios e suas agências franqueadas. courrier e congêneres.	18.42	19.02	\\r
2701		2	Serviços de assistência social.	18.45	19.05	\\r
2801		2	Serviços de avaliação de bens e serviços de qualquer natureza.	18.45	19.05	\\r
2901		2	Serviços de biblioteconomia.	18.45	19.05	\\r
0301		2	(VETADO)	18.45	19.05	\\r
0302		2	Cessão de direito de uso de marcas e de sinais de propaganda.	18.45	19.05	\\r
0303		2	Exploração de salões de festas, centro de convenções, escritórios virtuais, stands, quadras esportivas, estádios, ginásios, auditórios, casas de espetáculos, parques de diversões, canchas e congêneres, para realização de eventos ou negócios de qualquer natureza.	18.45	19.05	\\r
0304		2	Locação, sublocação, arrendamento, direito de passagem ou permissão de uso, compartilhado ou não, de ferrovia, rodovia, postes, cabos, dutos e condutos de qualquer natureza.	18.45	19.05	\\r
0305		2	Cessão de andaimes, palcos, coberturas e outras estruturas de uso temporário.	18.45	19.05	\\r
3001		2	Serviços de biologia, biotecnologia e química.	18.45	19.05	\\r
3101		2	Serviços técnicos em edificações, eletrônica, eletrotécnica, mecânica, telecomunicações e congêneres.	18.45	19.05	\\r
3201		2	Serviços de desenhos técnicos.	18.45	19.05	\\r
3301		2	Serviços de desembaraço aduaneiro, comissários, despachantes e congêneres.	18.45	19.05	\\r
3401		2	Serviços de investigações particulares, detetives e congêneres.	18.45	19.05	\\r
3501		2	Serviços de reportagem, assessoria de imprensa, jornalismo e relações públicas.	18.41	19.01	\\r
3601		2	Serviços de meteorologia.	18.45	19.05	\\r
3701		2	Serviços de artistas, atletas, modelos e manequins.	17.85	18.45	\\r
0401		2	Medicina e biomedicina.	16.33	16.93	\\r
0402		2	Análises clínicas, patologia, eletricidade médica, radioterapia, quimioterapia, ultra-sonografia, ressonância magnética, radiologia, tomografia e congêneres.	16.31	16.91	\\r
0403		2	Hospitais, clínicas, laboratórios, sanatórios, manicômios, casas de saúde, prontos-socorros, ambulatórios e congêneres.	15.72	16.32	\\r
0404		2	Instrumentação cirúrgica.	16.45	17.05	\\r
0405		2	Acupuntura.	16.35	16.95	\\r
0406		2	Enfermagem, inclusive serviços auxiliares.	16.32	16.92	\\r
0407		2	Serviços farmacêuticos.	16.35	16.95	\\r
0408		2	Terapia ocupacional, fisioterapia e fonoaudiologia.	16.32	16.92	\\r
0409		2	Terapias de qualquer espécie destinadas ao tratamento físico, orgânico e mental.	16.34	16.94	\\r
0410		2	Nutrição.	16.35	16.95	\\r
0411		2	Obstetrícia.	16.33	16.93	\\r
0412		2	Odontologia.	16.33	16.93	\\r
0413		2	Ortóptica.	17.76	18.36	\\r
0414		2	Próteses sob encomenda.	16.33	16.93	\\r
0415		2	Psicanálise.	16.34	16.94	\\r
0416		2	Psicologia.	17.65	18.25	\\r
0417		2	Casas de repouso e de recuperação, creches, asilos e congêneres.	16.37	16.97	\\r
0418		2	Inseminação artificial, fertilização in vitro e congêneres.	16.32	16.92	\\r
0419		2	Bancos de sangue, leite, pele, olhos, óvulos, sêmen e congêneres.	16.32	16.92	\\r
0420		2	Coleta de sangue, leite, tecidos, sêmen, órgãos e materiais biológicos de qualquer espécie.	16.32	16.92	\\r
0421		2	Unidade de atendimento, assistência ou tratamento móvel e congêneres.	16.33	16.93	\\r
0422		2	Planos de medicina de grupo ou individual e convênios para prestação de assistência médica, hospitalar, odontológica e congêneres.	16.30	16.90	\\r
0423		2	Outros planos de saúde que se cumpram através de serviços de terceiros contratados, credenciados, cooperados ou apenas pagos pelo operador do plano mediante indicação do beneficiário.	16.30	16.90	\\r
4001		2	Obras de arte sob encomenda.	18.45	19.05	\\r
0501		2	Medicina veterinária e zootecnia.	17.13	17.73	\\r
0502		2	Hospitais, clínicas, ambulatórios, prontos-socorros e congêneres, na área veterinária.	17.13	17.73	\\r
0503		2	Laboratórios de análise na área veterinária.	17.13	17.73	\\r
0504		2	Inseminação artificial, fertilização in vitro e congêneres.	17.13	17.73	\\r
0505		2	Bancos de sangue e de órgãos e congêneres.	17.13	17.73	\\r
0506		2	Coleta de sangue, leite, tecidos, sêmen, órgãos e materiais biológicos de qualquer espécie.	17.13	17.73	\\r
0507		2	Unidade de atendimento, assistência ou tratamento móvel e congêneres.	17.13	17.73	\\r
0508		2	Guarda, tratamento, amestramento, embelezamento, alojamento e congêneres.	17.13	17.73	\\r
0509		2	Planos de atendimento e assistência médico-veterinária.	17.13	17.73	\\r
0601		2	Barbearia, cabeleireiros, manicuros, pedicuros e congêneres.	18.45	19.05	\\r
0602		2	Esteticistas, tratamento de pele, depilação e congêneres.	18.45	19.05	\\r
0603		2	Banhos, duchas, sauna, massagens e congêneres.	18.45	19.05	\\r
0604		2	Ginástica, dança, esportes, natação, artes marciais e demais atividades físicas.	17.88	18.48	\\r
0605		2	Centros de emagrecimento, spa e congêneres.	18.45	19.05	\\r
0701		2	Engenharia, agronomia, agrimensura, arquitetura, geologia, urbanismo, paisagismo e congêneres.	17.90	18.50	\\r
0702		2	Execução, por administração, empreitada ou subempreitada, de obras de construção civil, hidráulica ou elétrica e de outras obras semelhantes, inclusive sondagem, perfuração de poços, escavação, drenagem e irrigação, terraplanagem, pavimentação, concretagem e a instalação e montagem de produtos, peças e equipamentos (exceto o fornecimento de mercadorias produzidas pelo prestador de serviços fora do local da prestação dos serviços, que fica sujeito ao ICMS).	17.39	17.99	\\r
0703		2	Elaboração de planos diretores, estudos de viabilidade, estudos organizacionais e outros, relacionados com obras e serviços de engenharia. elaboração de anteprojetos, projetos básicos e projetos executivos para trabalhos de engenharia.	17.29	17.89	\\r
0704		2	Demolição.	17.37	17.97	\\r
0705		2	Reparação, conservação e reforma de edifícios, estradas, pontes, portos e congêneres (exceto o fornecimento de mercadorias produzidas pelo prestador dos serviços, fora do local da prestação dos serviços, que fica sujeito ao ICMS).	17.37	17.97	\\r
0706		2	Colocação e instalação de tapetes, carpetes, assoalhos, cortinas, revestimentos de parede, vidros, divisórias, placas de gesso e congêneres, com material fornecido pelo tomador do serviço.	18.39	18.99	\\r
0707		2	Recuperação, raspagem, polimento e lustração de pisos e congêneres.	18.24	18.84	\\r
0708		2	Calafetação.	18.29	18.89	\\r
0709		2	Varrição, coleta, remoção, incineração, tratamento, reciclagem, separação e destinação final de lixo, rejeitos e outros resíduos quaisquer.	18.33	18.93	\\r
0710		2	Limpeza, manutenção e conservação de vias e logradouros públicos, imóveis, chaminés, piscinas, parques, jardins e congêneres.	17.65	18.25	\\r
0711		2	Decoração e jardinagem, inclusive corte e poda de árvores.	17.96	18.56	\\r
0712		2	Controle e tratamento de efluentes de qualquer natureza e de agentes físicos, químicos e biológicos.	18.34	18.94	\\r
0713		2	Dedetização, desinfecção, desinsetização, imunização, higienização, desratização, pulverização e congêneres.	18.29	18.89	\\r
0714		2	(VETADO)	18.45	19.05	\\r
0715		2	(VETADO)	18.45	19.05	\\r
0716		2	Florestamento, reflorestamento, semeadura, adubação e congêneres.	18.40	19.00	\\r
0717		2	Escoramento, contenção de encostas e serviços congêneres.	18.00	18.60	\\r
0718		2	Limpeza e dragagem de rios, portos, canais, baías, lagos, lagoas, represas, açudes e congêneres.	18.29	18.89	\\r
0719		2	Acompanhamento e fiscalização da execução de obras de engenharia, arquitetura e urbanismo.	17.80	18.40	\\r
0720		2	Aerofotogrametria (inclusive interpretação), cartografia, mapeamento, levantamentos topográficos, batimétricos, geográficos, geodésicos, geológicos, geofísicos e congêneres.	18.16	18.76	\\r
0721		2	Pesquisa, perfuração, cimentação, mergulho, perfilagem, concretação, testemunhagem, pescaria, estimulação e outros serviços relacionados com a exploração e explotação de petróleo, gás natural e de outros recursos minerais.	18.32	18.92	\\r
0722		2	Nucleação e bombardeamento de nuvens e congêneres.	18.45	19.05	\\r
0801		2	Ensino regular pré-escolar, fundamental, médio e superior.	16.14	16.74	\\r
0802		2	Instrução, treinamento, orientação pedagógica e educacional, avaliação de conhecimentos de qualquer natureza.	16.57	17.17	\\r
0901		2	Hospedagem de qualquer natureza em hotéis, apart-service condominiais, flat, apart-hotéis, hotéis residência, residence-service, suite service, hotelaria marítima, motéis, pensões e congêneres. ocupação por temporada com fornecimento de serviço (o valor da alimentação e gorjeta, quando incluído no preço da diária, fica sujeito ao Imposto Sobre Serviços).	18.45	19.05	\\r
0902		2	Agenciamento, organização, promoção, intermediação e execução de programas de turismo, passeios, viagens, excursões, hospedagens e congêneres.	18.29	18.89	\\r
0903		2	Guias de turismo.	18.29	18.89	\\r
101011000		1	Serviços de construção de edificações residenciais de um e dois pavimentos	17.39	17.99	\\r
101012000		1	Serviços de construção de edificações residenciais com mais de dois pavimentos	17.39	17.99	\\r
101021000		1	Serviços de construção de edificações industriais	17.39	17.99	\\r
101022000		1	Serviços de construção de edificações comerciais	17.39	17.99	\\r
101029000		1	Outros serviços de construção de edificações não residenciais	17.92	18.52	\\r
101031000		1	Serviços de construção de autoestradas (exceto autoestradas elevadas), ruas e estradas.	17.37	17.97	\\r
101032000		1	Serviços de construção de estradas férreas 	17.37	17.97	\\r
101033000		1	Serviços de construção de pistas de pouso e decolagem em aeroportos	17.37	17.97	\\r
101034000		1	Serviços de construção de infraestrutura aeroportuária	17.37	17.97	\\r
101040000		1	Serviços de construção de pontes, autoestradas elevadas e túneis	17.39	17.99	\\r
101051100		1	Serviços de construção de guias-corrente, espigões, quebra-mares, canais de acesso, bacias de evolução, balizamento e sinalização, derrocagens e dragagens.	17.37	17.97	\\r
101051900		1	Outros serviços de construção de infraestrutura de proteção e acesso aquaviário	17.37	17.97	\\r
101052100		1	Serviços de construção de ancoradouros, docas, cais, pontes, dolfins e píeres	17.37	17.97	\\r
101052900		1	Outros serviços de construção de infraestrutura de acostagem aquaviária	17.37	17.97	\\r
101053100		1	Serviços de construção de armazéns, inclusive os especiais, silos, pátios e vias de circulação	17.90	18.50	\\r
101053900		1	Outros serviços de construção de infraestrutura terrestre nos portos	17.90	18.50	\\r
101061000		1	Serviços de construção de barragens e adutoras	17.90	18.50	\\r
101062100		1	Serviços de construção de sistemas de irrigação   	17.39	17.99	\\r
101062200		1	Serviços de construção de sistemas de esgotos	17.90	18.50	\\r
101062300		1	Serviços de construção de sistemas de unidades para tratamento e purificação de água   	17.90	18.50	\\r
101069000		1	Outros serviços de construção de sistemas hídricos	17.90	18.50	\\r
101071100		1	Serviços de construção de dutos de longo curso para o transporte de petróleo, seus derivados, e gás	17.39	17.99	\\r
101071200		1	Serviços de construção de dutos de longo curso para o transporte e escoamento de águas e esgotos	17.39	17.99	\\r
101071900		1	Serviços de construção de outros dutos de longo curso 	17.39	17.99	\\r
101072100		1	Serviços de construção de linhas de comunicação de longo curso	17.39	17.99	\\r
101072200		1	Serviços de construção de linhas de transmissão de alta tensão 	17.39	17.99	\\r
101072210		1	Serviços de construção de linhas de transmissão de alta tensão em corrente contínua 	17.39	17.99	\\r
101072220		1	Serviços de construção de linhas de transmissão de alta tensão em corrente alternada 	17.39	17.99	\\r
101081000		1	Serviços de construção de dutos locais	17.39	17.99	\\r
1010821		1	Serviços de construção de linhas locais de transmissão, de baixa e média tensão, e de comunicação 	17.39	17.99	\\r
101082110		1	Serviços de construção de linhas locais de transmissão de baixa e média tensão 	17.39	17.99	\\r
101082120		1	Serviços de construção de linhas locais de comunicação 	17.39	17.99	\\r
101082900		1	Outros serviços de construção relacionados	17.39	17.99	\\r
101091000		1	Serviços de construção de usinas de geração de energia	17.39	17.99	\\r
101092000		1	Serviços de construção de subestações de força	17.39	17.99	\\r
101101000		1	Serviços de construção de minas	17.90	18.50	\\r
101102000		1	Serviços de construção de unidades industriais relacionadas à mineração	17.90	18.50	\\r
101110000		1	Serviços de construção de instalações para recreação e atividades desportivas ao ar livre	17.90	18.50	\\r
101120000		1	Outros serviços de construção civil não classificados em outra posição	17.90	18.50	\\r
101130000		1	Serviços de demolição	17.90	18.50	\\r
101140000		1	Serviços de preparação de terrenos e construção de canteiros de obras	17.95	18.55	\\r
101150000		1	Serviços de escavação e remoção de terra	17.90	18.50	\\r
101161000		1	Serviços de perfuração de poços de água	17.90	18.50	\\r
101162000		1	Serviços de instalação de sistemas sépticos	17.90	18.50	\\r
101170000		1	Serviços de montagem e edificação de construções pré-fabricadas	17.90	18.50	\\r
101181		1	Serviços de estaqueamento	17.90	18.50	\\r
101182		1	Serviços de fundação	17.90	18.50	\\r
101191000		1	Serviços de construção de estruturas de prédios	17.90	18.50	\\r
101192000		1	Serviços de construção de estruturas de telhados e coberturas	17.90	18.50	\\r
101200000		1	Serviços de construção de telhados e coberturas e serviços de impermeabilização	18.24	18.84	\\r
101210000		1	Serviços de concretagem	18.32	18.92	\\r
101220000		1	Serviços de estruturas de aço estrutural	17.90	18.50	\\r
101230000		1	Serviços de alvenaria	17.39	17.99	\\r
101240000		1	Serviços de andaimes	17.39	17.99	\\r
101250000		1	Outros serviços especializados de construção	17.39	17.99	\\r
101261000		1	Serviços de instalação de fiação elétrica e componentes 	17.90	18.50	\\r
101262000		1	Serviços de instalação de alarmes contra incêndio	17.90	18.50	\\r
101263000		1	Serviços de instalação de sistemas de alarmes antifurto	17.90	18.50	\\r
101264000		1	Serviços de instalação de antenas residenciais	17.90	18.50	\\r
101269000		1	Outros serviços de instalação elétrica	17.90	18.50	\\r
101271000		1	Serviços de tubulação para fornecimento de água	17.90	18.50	\\r
101272000		1	Serviços de tubulação de escoamento de água	17.90	18.50	\\r
101281000		1	Serviços de instalação de aquecimento	17.90	18.50	\\r
101282000		1	Serviços de instalação de ventilação e ar condicionado	17.90	18.50	\\r
101290000		1	Serviços de instalação de gás	17.90	18.50	\\r
101300000		1	Serviços de isolamento	17.90	18.50	\\r
101311000		1	Serviços de instalação de elevadores, esteiras e escadas rolantes	17.90	18.50	\\r
101319000		1	Outros serviços de instalação 	17.90	18.50	\\r
101320000		1	Serviços de vidraçaria	18.39	18.99	\\r
101330000		1	Serviços de gesso	18.39	18.99	\\r
101340000		1	Serviços de pintura	18.39	18.99	\\r
101350000		1	Serviços de assentamento de revestimento cerâmico em paredes e pisos	18.34	18.94	\\r
101360000		1	Outros serviços de cobertura de pisos e paredes e papel de parede	18.39	18.99	\\r
101370000		1	Serviços de carpintaria	18.20	18.80	\\r
101380000		1	Serviços de instalação de cercas e grades	18.39	18.99	\\r
101390000		1	Outros serviços de acabamento das construções	18.39	18.99	\\r
102010000		1	Serviços de agentes de distribuição de mercadorias 	17.78	18.38	\\r
102020000		1	Comércio atacadista	17.72	18.32	\\r
102030000		1	Comércio varejista 	17.72	18.32	\\r
102041000		1	Serviços de despachante aduaneiro na importação	18.08	18.68	\\r
102042000		1	Serviços de despachante aduaneiro na exportação	17.72	18.32	\\r
102050000		1	Serviços de agentes na comercialização de energia elétrica 	17.72	18.32	\\r
103011000		1	Fornecimento de refeições acompanhado de serviços de restaurante	18.45	19.05	\\r
103012100		1	Fornecimento de refeições pelo sistema de auto-serviço (self-service)	18.45	19.05	\\r
103012200		1	Fornecimento de comidas do tipo “comidas rápidas” (fast-food)	18.45	19.05	\\r
103012900		1	Outros fornecimentos de refeições sem os serviços de restaurante	18.45	19.05	\\r
103013100		1	Fornecimento de alimentação sob contrato	18.29	18.89	\\r
103013200		1	Fornecimento de refeições em transportes (comissaria ou catering)	18.45	19.05	\\r
103013900		1	Outros fornecimentos de alimentação	18.45	19.05	\\r
103020000		1	Fornecimento de bebidas em bares, cervejarias e outros	18.45	19.05	\\r
103031100		1	Serviços de quarto ou de unidades de hospedagem para visitantes, com serviços diários de faxina	18.45	19.05	\\r
103031200		1	Serviços de quarto ou de unidades de hospedagem para visitantes, sem serviços diários de faxina	18.45	19.05	\\r
103031300		1	Serviços de quarto ou de unidades de hospedagem para visitantes, em propriedades partilhadas	18.45	19.05	\\r
103031400		1	Serviços de quarto ou de unidades de hospedagem para visitantes, em quartos de múltipla ocupação	18.45	19.05	\\r
103032000		1	Serviços de acampamentos turísticos (camping)	18.29	18.89	\\r
103039000		1	Outros serviços de hospedagem para visitantes	18.29	18.89	\\r
103041000		1	Serviços de quarto ou de unidades de hospedagem para estudantes em residências estudantis	18.45	19.05	\\r
103042000		1	Serviços de quarto ou de unidades de hospedagem para trabalhadores em hotéis ou campos, por pequenos períodos	18.45	19.05	\\r
103049000		1	Outros serviços de quarto ou de unidades de hospedagem	18.45	19.05	\\r
104011100		1	Serviços de transporte rodoviário urbano de passageiros, exceto em  áreas metropolitanas 	16.06	16.66	\\r
104011110		1	Serviços prestados única e exclusivamente por meio de ônibus	16.06	16.66	\\r
104011190		1	Serviços prestados por meio de outros veículos rodoviários	16.06	16.66	\\r
104011200		1	Serviços de transporte rodoviário de passageiros nas áreas metropolitanas 	16.06	16.66	\\r
104011300		1	Serviços de transporte ferroviário urbano, inclusive nas áreas metropolitanas, de passageiros	16.06	16.66	\\r
104011400		1	Serviços de transporte metroviário (metrô) de passageiros 	16.06	16.66	\\r
104011500		1	Serviços de transporte integrado urbano, inclusive nas áreas metropolitanas, de passageiros	16.06	16.66	\\r
104011600		1	Serviços de taxi	16.06	16.66	\\r
104011700		1	Serviço de aluguel de carros com motorista	16.06	16.66	\\r
104011900		1	Outros serviços terrestres de transporte de passageiros 	16.06	16.66	\\r
104011910		1	Serviços de transporte escolar	16.06	16.66	\\r
104011990		1	Outros serviços terrestres de transporte de passageiros 	16.06	16.66	\\r
104012100		1	Serviços de transporte por navegação interior de passageiros por embarcações para travessia 	16.06	16.66	\\r
104012200		1	Serviços de transporte por navegação interior de passageiros por embarcações para cruzeiros	16.06	16.66	\\r
104012900		1	Outros serviços de transporte por navegação interior de passageiros	16.06	16.66	\\r
109039300		1	Serviços de seguros de cargas	17.15	17.75	\\r
104019000		1	Outros serviços de transporte de passageiros em áreas urbanas, inclusive metropolitanas	16.06	16.66	\\r
104021100		1	Serviços de transporte rodoviário para passeios turísticos (sightseeing)	16.06	16.66	\\r
104021200		1	Serviços de transporte ferroviário para passeios turísticos (sightseeing)	16.06	16.66	\\r
104021300		1	Serviços de transporte aquaviário para passeios turísticos (sightseeing)	16.06	16.66	\\r
104021400		1	Serviços de transporte aéreo para passeios turísticos (sightseeing)	16.06	16.66	\\r
104021900		1	Outros serviços transporte para passeios turísticos (sightseeing)	16.06	16.66	\\r
104022		1	Serviços de fretamento, exceto aéreo	16.06	16.66	\\r
104022100		1	Serviços de fretamento contínuo	16.06	16.66	\\r
104022200		1	Serviços de fretamento eventual ou turístico	16.06	16.66	\\r
104022900		1	Outros serviços de fretamento, exceto aéreo	16.06	16.66	\\r
1040311		1	Serviços de transporte rodoviário interestadual, inclusive interestadual semiurbano de passageiros	16.06	16.66	\\r
104031110		1	Serviços prestados única e exclusivamente por meio de ônibus	16.06	16.66	\\r
104031190		1	Serviços prestados por meio de outros veículos rodoviários	16.06	16.66	\\r
104031200		1	Serviços de transporte ferroviário interestadual, inclusive interestadual semiurbano, de passageiros	16.06	16.66	\\r
104031900		1	Outros serviços terrestres de transporte interestadual, inclusive interestadual semiurbano, de passageiros não classificados em outra posição	16.06	16.66	\\r
104032		1	Serviços de transporte interestadual, inclusive interestadual semiurbano, aquaviário de passageiros	16.06	16.66	\\r
104032100		1	Serviços de transporte interestadual, inclusive interestadual semiurbano, por navegação interior, de passageiros por embarcações para travessia 	16.06	16.66	\\r
104032200		1	Serviços de transporte interestadual, inclusive interestadual semiurbano, por navegação interior, de passageiros por embarcações para cruzeiros	16.06	16.66	\\r
104032300		1	Serviços de transporte, nacional ou internacional, de passageiros por embarcações para cruzeiros	16.06	16.66	\\r
104032900		1	Outros serviços de transporte interestadual, inclusive interestadual semiurbano, aquaviário de passageiros	16.06	16.66	\\r
104041100		1	Serviços de transporte aéreo doméstico de passageiros 	16.06	16.66	\\r
104041200		1	Serviços de transporte aéreo internacional de passageiros 	16.06	16.66	\\r
104042000		1	Serviços de transporte aéreo por fretamento	16.06	16.66	\\r
104049100		1	Serviços de táxi aéreo	16.06	16.66	\\r
104049900		1	Outros serviços de transporte aéreo de passageiros	16.06	16.66	\\r
105011100		1	Serviços de transporte rodoviário de cargas a granel	16.06	16.66	\\r
105011110		1	Serviços de transporte rodoviário de cargas sólidas a granel 	16.06	16.66	\\r
105011120		1	Serviços de transporte rodoviário de cargas líquidas ou liquefeitas, a granel	16.06	16.66	\\r
105011130		1	Serviços de transporte rodoviário de cargas gasosas a granel	16.06	16.66	\\r
105011200		1	Serviços de transporte rodoviário de cargas vivas	16.06	16.66	\\r
1050113		1	Serviços de transporte rodoviário de carga geral	16.06	16.66	\\r
105011310		1	Serviços de transporte rodoviário de carga solta, não unitizada. 	16.06	16.66	\\r
105011320		1	Serviços de transporte rodoviário de carga unitizada, exceto de contêineres	16.06	16.66	\\r
1050114		1	Serviços de transporte rodoviários de contêineres	16.06	16.66	\\r
105011410		1	Serviços de transporte rodoviário de cargas frigorificadas ou climatizadas	16.06	16.66	\\r
105011490		1	Serviços de transporte rodoviário de outros tipos de contêineres	16.06	16.66	\\r
105011500		1	Serviços de transporte rodoviário de mudanças domésticas, de mobília de escritório e de outros objetos	16.06	16.66	\\r
105011600		1	Serviços de transporte rodoviário de cargas especiais e de grande porte 	16.06	16.66	\\r
105011700		1	Serviços de transporte rodoviário de veículos	16.06	16.66	\\r
1050118		1	Serviços de transporte rodoviário de produtos perigosos	16.06	16.66	\\r
105011810		1	Serviços de transporte rodoviário de combustíveis, lubrificantes e GLP, inclusive apresentado em botijões metálicos	16.06	16.66	\\r
105011820		1	Serviços de transporte rodoviário de produtos químicos perigosos	16.06	16.66	\\r
105011890		1	Serviços de transporte rodoviário de  outros produtos perigosos	16.06	16.66	\\r
105011900		1	Outros tipos de carga dos serviços de transporte rodoviário 	16.06	16.66	\\r
105012		1	Serviços de transporte ferroviário de cargas 	16.06	16.66	\\r
1050121		1	Serviços de transporte ferroviário de cargas a granel 	16.06	16.66	\\r
105012110		1	Serviços de transporte ferroviário de cargas sólidas a granel 	16.06	16.66	\\r
105012120		1	Serviços de transporte ferroviário de cargas líquidas ou liquefeitas, a granel	16.06	16.66	\\r
105012130		1	Serviços de transporte ferroviário de cargas gasosas a granel	16.06	16.66	\\r
105012200		1	Serviços de transporte ferroviário de cargas vivas	16.06	16.66	\\r
1050123		1	Serviços de transporte ferroviário de carga geral	16.06	16.66	\\r
105012310		1	Serviços de transporte ferroviário de carga solta, não unitizada  	16.06	16.66	\\r
105012320		1	Serviços de transporte ferroviário de carga unitizada, exceto de contêineres 	16.06	16.66	\\r
105012330		1	Serviços de transporte ferroviário de bens e valores	16.06	16.66	\\r
1050124		1	Serviços de transporte ferroviário de contêineres	16.06	16.66	\\r
105012410		1	Serviços de transporte ferroviário de cargas frigorificadas ou climatizadas	16.06	16.66	\\r
105012490		1	Serviços de transporte ferroviário de outros tipos de contêineres	16.06	16.66	\\r
1050125		1	Serviços de transporte ferroviário de produtos perigosos	16.06	16.66	\\r
105012510		1	Serviços de transporte ferroviário de combustíveis, lubrificantes e GLP, inclusive apresentado em botijões metálicos	16.06	16.66	\\r
105012520		1	Serviços de transporte ferroviário de produtos químicos perigosos 	16.06	16.66	\\r
105012530		1	Serviços de transporte ferroviário de armamentos militares e munições 	16.06	16.66	\\r
105012540		1	Serviços de transporte ferroviários de fundidos em estado líquido	16.06	16.66	\\r
105012550		1	Serviços de transporte ferroviários de material radioativo	16.06	16.66	\\r
105012590		1	Serviços de transporte ferroviário de outros produtos perigosos	16.06	16.66	\\r
105012900		1	Outros tipos de carga do serviços de transporte ferroviário 	16.06	16.66	\\r
105013100		1	Serviços de transporte de petróleo, gás natural e combustível	16.06	16.66	\\r
105013200		1	Serviços de transporte de minérios	16.06	16.66	\\r
105013900		1	Serviços de transporte de outras mercadorias	16.06	16.66	\\r
1050211		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso de cargas a granel	16.06	16.66	\\r
105021110		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso de cargas sólidas, a granel 	16.06	16.66	\\r
105021120		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso de cargas líquidas ou liquefeitas, a granel	16.06	16.66	\\r
105021130		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso de cargas gasosas a granel	16.06	16.66	\\r
105021200		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso  de cargas vivas	16.06	16.66	\\r
1050213		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso de carga geral	16.06	16.66	\\r
105021310		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso de carga solta, não unitizada	16.06	16.66	\\r
105021320		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso  de carga unitizada, exceto de contêineres	16.06	16.66	\\r
1050214		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso de contêineres	16.06	16.66	\\r
105021410		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso  de cargas frigorificadas ou climatizadas	16.06	16.66	\\r
105021490		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso  de outros tipos de contêineres	16.06	16.66	\\r
105021500		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso de mudanças domésticas, de mobília de escritório e de outros objetos	16.06	16.66	\\r
105021600		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso de cargas especiais e de grande porte 	16.06	16.66	\\r
105021700		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso de veículos	16.06	16.66	\\r
1050218		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso de produtos perigosos	16.06	16.66	\\r
105021810		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso de combustíveis, lubrificantes e GLP, inclusive apresentado em botijões metálicos	16.06	16.66	\\r
105021820		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso de produtos químicos perigosos	16.06	16.66	\\r
105021890		1	Serviços de transporte aquaviário de navegação de cabotagem e de longo curso de outros produtos perigosos	16.06	16.66	\\r
105021900		1	Outros tipos de carga dos serviços de transporte aquaviário de navegação de cabotagem e de longo curso  	16.06	16.66	\\r
1050221		1	Serviços de transporte aquaviário por navegação interior de cargas a granel	16.06	16.66	\\r
105022110		1	Serviços de transporte aquaviário por navegação interior de cargas sólidas, a granel 	16.06	16.66	\\r
105022120		1	Serviços de transporte aquaviário por navegação interior de cargas líquidas ou liquefeitas, a granel	16.06	16.66	\\r
105022130		1	Serviços de transporte aquaviário por navegação interior de cargas gasosas a granel	16.06	16.66	\\r
105022200		1	Serviços de transporte aquaviário por navegação interior  de cargas vivas	16.06	16.66	\\r
1050223		1	Serviços de transporte aquaviário por navegação interior de carga geral	16.06	16.66	\\r
105022310		1	Serviços de transporte aquaviário por navegação interior de carga solta, não unitizada	16.06	16.66	\\r
105022320		1	Serviços de transporte aquaviário por navegação interior de carga unitizada, exceto de contêineres	16.06	16.66	\\r
1050224		1	Serviços de transporte aquaviário por navegação interior de contêineres	16.06	16.66	\\r
105022410		1	Serviços de transporte aquaviário por navegação interior de cargas frigorificadas ou climatizadas	16.06	16.66	\\r
105022490		1	Serviços de transporte aquaviário por navegação interior de outros tipos de contêineres	16.06	16.66	\\r
105022500		1	Serviços de transporte aquaviário por navegação interior de mudanças domésticas, de mobília de escritório e de outros objetos	16.06	16.66	\\r
105022600		1	Serviços de transporte aquaviário por navegação interior  de cargas especiais e de grande porte 	16.06	16.66	\\r
105022700		1	Serviços de transporte aquaviário por navegação interior de veículos	16.06	16.66	\\r
1050228		1	Serviços de transporte aquaviário por navegação interior  de produtos perigosos	16.06	16.66	\\r
105022810		1	Serviços de transporte aquaviário por navegação interior de combustíveis, lubrificantes e GLP, inclusive apresentado em botijões metálicos	16.06	16.66	\\r
105022820		1	Serviços de transporte aquaviário por navegação interior de produtos químicos perigosos	16.06	16.66	\\r
105022890		1	Serviços de transporte aquaviário por navegação interior  de  outros produtos perigosos	16.06	16.66	\\r
105022900		1	Outros tipos de carga dos serviços de transporte aquaviário por navegação interior	16.06	16.66	\\r
105023100		1	Serviços de navegação de apoio portuário	17.60	18.20	\\r
105023200		1	Serviços de navegação de apoio marítimo	17.60	18.20	\\r
105032010		1	Serviços de transporte aéreo de cargas frigorificadas ou climatizadas	16.06	16.66	\\r
105032090		1	Serviços de transporte aéreo de outros tipos de contêineres	16.06	16.66	\\r
105033010		1	Serviços de transporte aéreo de produtos perigosos	16.06	16.66	\\r
105033020		1	Serviços de transporte aéreo de animais vivos	16.06	16.66	\\r
105033030		1	Serviços de transporte aéreo de máquinas e veículos	16.06	16.66	\\r
105033040		1	Serviços de transporte aéreo de perecíveis	16.06	16.66	\\r
105033050		1	Serviços de transporte aéreo de cargas frágeis	16.06	16.66	\\r
105033060		1	Serviços de transporte aéreo de cargas controladas	16.06	16.66	\\r
105033070		1	Serviços de transporte aéreo de valores	16.06	16.66	\\r
105033090		1	Serviços de transporte aéreo de outras cargas especiais	16.06	16.66	\\r
105039000		1	Serviços de transportes aéreos de outros tipos de cargas	16.06	16.66	\\r
105041010		1	Serviços de transporte multimodal de cargas sólidas, a granel 	16.06	16.66	\\r
105041020		1	Serviços de transporte multimodal de cargas líquidas ou liquefeitas, a granel	16.06	16.66	\\r
105041030		1	Serviços de transporte multimodal de cargas gasosas a granel	16.06	16.66	\\r
105042000		1	Serviços de transporte multimodal de cargas vivas	16.06	16.66	\\r
105043010		1	Serviços de transporte multimodal de cargas soltas, não unitizadas	16.06	16.66	\\r
105043020		1	Serviços de transporte multimodal de cargas unitizadas, exceto de contêineres	16.06	16.66	\\r
105044010		1	Serviços de transporte multimodal de cargas frigorificadas ou climatizadas	16.06	16.66	\\r
105044090		1	Serviços de transporte multimodal de outros tipos de contêineres	16.06	16.66	\\r
105045000		1	Serviços de transporte multimodal de mudanças domésticas, de mobília de escritório e de outros objetos	16.06	16.66	\\r
105046000		1	Serviços de transporte multimodal de cargas especiais e de grande porte 	16.06	16.66	\\r
105047000		1	Serviços de transporte multimodal de veículos	16.06	16.66	\\r
105048010		1	Serviços de transporte multimodal de combustíveis, lubrificantes e GLP, inclusive apresentado em botijões metálicos	16.06	16.66	\\r
105048020		1	Serviços de transporte multimodal de produtos químicos perigosos	16.06	16.66	\\r
105048090		1	Serviços de transporte multimodal de outros produtos perigosos	16.06	16.66	\\r
105049000		1	Serviços de transporte multimodal de outros tipos de carga 	16.06	16.66	\\r
105051010		1	Serviços de transporte intermodal de cargas sólidas, a granel 	16.06	16.66	\\r
105051020		1	Serviços de transporte intermodal de cargas líquidas ou liquefeitas, a granel	16.06	16.66	\\r
105051030		1	Serviços de transporte intermodal de cargas gasosas a granel	16.06	16.66	\\r
105052000		1	Serviços de transporte intermodal de cargas vivas	16.06	16.66	\\r
105053010		1	Serviços de transporte intermodal de cargas soltas, não unitizadas. 	16.06	16.66	\\r
105053020		1	Serviços de transporte intermodal de cargas unitizadas, exceto de contêineres	16.06	16.66	\\r
105054010		1	Serviços de transporte intermodal de cargas frigorificadas ou climatizadas	16.06	16.66	\\r
105054090		1	Serviços de transporte intermodal de outros tipos de contêineres	16.06	16.66	\\r
105055000		1	Serviços de transporte intermodal de mudanças domésticas, de mobília de escritório e de outros objetos	16.06	16.66	\\r
105056000		1	Serviços de transporte intermodal de cargas especiais e de grande porte 	16.06	16.66	\\r
105057000		1	Serviços de transporte intermodal de veículos	16.06	16.66	\\r
105058010		1	Serviços de transporte intermodal de combustíveis, lubrificantes e GLP, inclusive apresentado em botijões metálicos	16.06	16.66	\\r
105058020		1	Serviços de transporte intermodal de produtos químicos perigosos	16.06	16.66	\\r
105058090		1	Serviços de transporte intermodal de outros produtos perigosos	16.06	16.66	\\r
105059000		1	Serviços de transporte intermodal de outros tipos de carga 	16.06	16.66	\\r
106011000		1	Serviços de manuseio de contêineres	16.06	16.66	\\r
106019000		1	Outros serviços de manuseio de cargas e bagagens	16.06	16.66	\\r
106021000		1	Serviços de armazenagem frigorífica	17.06	17.66	\\r
106022010		1	Serviços de armazenagem de petróleo e seus derivados	16.06	16.66	\\r
106022020		1	Serviços de armazenagem de combustíveis, lubrificantes e GLP, inclusive apresentado em botijões metálicos	16.06	16.66	\\r
106022030		1	Serviços de armazenagem de produtos químicos perigosos	16.06	16.66	\\r
106022090		1	Serviços de armazenagem de outros produtos perigosos	16.06	16.66	\\r
106023010		1	Serviços de armazenagem de granéis sólidos	16.06	16.66	\\r
106023020		1	Serviços de armazenagem de granéis líquidos ou liquefeitos	16.06	16.66	\\r
106023030		1	Serviços de armazenagem de granéis gasosos	16.06	16.66	\\r
106029000		1	Outros serviços de armazenagem em depósitos	16.06	16.66	\\r
106030000		1	Serviços de apoio para transportes ferroviários	16.06	16.66	\\r
106041000		1	Serviços de estações rodoviárias	16.06	16.66	\\r
106042010		1	Serviços de operação de autoestradas	16.06	16.66	\\r
106042020		1	Serviços de operação de pontes e túneis	16.06	16.66	\\r
106042030		1	Serviços de exploração de pedágios	17.25	17.85	\\r
106043000		1	Serviços de estacionamentos 	17.06	17.66	\\r
106044000		1	Serviços de reboque para veículos particulares e comerciais	16.06	16.66	\\r
106049000		1	Outros serviços de apoio ao transporte rodoviário	17.25	17.85	\\r
106051000		1	Serviços de operação de portos e canais, exceto manuseio de cargas	16.06	16.66	\\r
106052000		1	Serviços de praticagem e de docas 	16.06	16.66	\\r
106053000		1	Serviços de salvamento de embarcações 	16.06	16.66	\\r
106059000		1	Outros serviços de apoio ao transporte aquaviário, exceto os serviços de navegação de apoio	17.25	17.85	\\r
106061000		1	Serviços de operação de aeroportos, exceto manuseio de cargas	16.06	16.66	\\r
106062000		1	Serviços de controle de tráfego aéreo	16.06	16.66	\\r
106069000		1	Outros serviços de apoio ao transporte aéreo	17.65	18.25	\\r
106071000		1	Serviços de agências de fretamento de transporte e outros serviços de fretamento de transportes	16.06	16.66	\\r
106072000		1	Outros serviços de apoio aos transporte não classificados em outra posição	16.06	16.66	\\r
106081000		1	Serviços de coleta e entrega do transporte multimodal e intermodal de cargas 	16.06	16.66	\\r
106082000		1	Serviços de unitização ou desunitização do transporte multimodal e intermodal de cargas	16.06	16.66	\\r
106083000		1	Serviços de movimentação do transporte multimodal e intermodal de cargas	16.06	16.66	\\r
106084000		1	Serviços de consolidação ou desconsolidação documental do transporte multimodal e intermodal de cargas	16.06	16.66	\\r
106089000		1	Outros serviços de apoio ao transporte multimodal e intermodal de cargas	16.06	16.66	\\r
107010000		1	Serviços postais	18.42	19.02	\\r
107020000		1	Serviços de coleta, remessa ou entrega de documentos (exceto cartas) ou de pequenos objetos	18.42	19.02	\\r
107030000		1	Serviços de remessas expressas	18.42	19.02	\\r
108011100		1	Serviços de transmissão de eletricidade	13.45	14.05	\\r
108011200		1	Serviços de distribuição de eletricidade	13.45	14.05	\\r
108012000		1	Serviços de distribuição de gás canalizado	13.45	14.05	\\r
108021000		1	Serviços de distribuição de água por meio de tubulações, exceto vapor de água e água quente	13.45	14.05	\\r
108022000		1	Serviços de distribuição de vapor de água, água quente e ar condicionado por meio de tubulações 	13.45	14.05	\\r
108023000		1	Serviços de distribuição de água, exceto através de tubulações 	13.45	14.05	\\r
109011000		1	Serviços de banco central	17.15	17.75	\\r
109012100		1	Serviços de depósito para pessoas jurídicas	18.36	18.96	\\r
109012200		1	Serviços de depósito para pessoas físicas	18.35	18.95	\\r
109012900		1	Outros serviços de depósito	18.41	19.01	\\r
109013100		1	Serviços de financiamentos imobiliários residenciais	18.43	19.03	\\r
109013200		1	Serviços de financiamentos imobiliários não-residenciais	18.43	19.03	\\r
109013300		1	Serviços de empréstimos e financiamentos, pessoais	18.43	19.03	\\r
109013400		1	Serviços de empréstimos e financiamentos, comerciais 	18.43	19.03	\\r
109013500		1	Serviços de empréstimos e financiamentos, industriais	18.43	19.03	\\r
109013600		1	Serviços de empréstimos e financiamentos, agropecuários	18.43	19.03	\\r
109013900		1	Outros serviços de concessão de crédito 	18.43	19.03	\\r
109014000		1	Serviços de cartão de crédito 	18.43	19.03	\\r
1090151		1	Arrendamento mercantil financeiro de máquinas e equipamentos	16.70	17.30	\\r
109015110		1	Arrendamento mercantil financeiro de equipamentos de transporte	16.70	17.30	\\r
109015111		1	Arrendamento mercantil financeiro de veículos rodoviários automotores para o transporte de passageiros 	16.70	17.30	\\r
109015112		1	Arrendamento mercantil financeiro de veículos rodoviários automotores para o transporte de mercadorias 	16.70	17.30	\\r
109015113		1	Arrendamento mercantil financeiro de veículos e equipamentos ferroviários 	16.70	17.30	\\r
109015114		1	Arrendamento mercantil financeiro de outros equipamentos de transporte terrestre, inclusive de veículos de uso misto 	16.70	17.30	\\r
109015115		1	Arrendamento mercantil financeiro de navios e outras embarcações	16.70	17.30	\\r
109015116		1	Arrendamento mercantil financeiro de aeronaves	16.70	17.30	\\r
109015117		1	Arrendamento mercantil financeiro de contêineres 	16.70	17.30	\\r
10901512		1	Arrendamento mercantil financeiro de outras máquinas e equipamentos 	13.45	14.05	\\r
109015121		1	Arrendamento mercantil financeiro de máquinas e equipamentos agrícolas 	16.70	17.30	\\r
109015122		1	Arrendamento mercantil financeiro de máquinas e equipamentos de construção 	16.70	17.30	\\r
109015123		1	Arrendamento mercantil financeiro de máquinas e equipamentos para escritórios, exceto computadores 	16.70	17.30	\\r
109015124		1	Arrendamento mercantil financeiro de computadores	16.70	17.30	\\r
109015125		1	Arrendamento mercantil financeiro de equipamentos de telecomunicação 	16.70	17.30	\\r
109015129		1	Arrendamento mercantil financeiro de máquinas e equipamentos, não classificados em outra posição 	16.70	17.30	\\r
1090152		1	Arrendamento mercantil financeiro de outras mercadorias 	16.70	17.30	\\r
109015210		1	Arrendamento mercantil financeiro de televisão e outros eletroeletrônicos domésticos, bem como seus acessórios 	16.70	17.30	\\r
109015220		1	Arrendamento mercantil financeiro de mídias gravadas 	16.70	17.30	\\r
109015230		1	Arrendamento mercantil financeiro de móveis e eletrodomésticos	16.70	17.30	\\r
109015240		1	Arrendamento mercantil financeiro de equipamentos para diversão e lazer 	16.70	17.30	\\r
109015250		1	Arrendamento mercantil financeiro de artigos de cama, mesa e banho	16.70	17.30	\\r
109015290		1	Arrendamento mercantil financeiro de outras mercadorias não classificadas em outra posição	16.70	17.30	\\r
109019000		1	Outros serviços financeiros 	16.70	17.30	\\r
109021000		1	Serviços de valoração de ativos	17.15	17.75	\\r
109022000		1	Serviços de subscrição de valores mobiliários	17.15	17.75	\\r
109023000		1	Serviços de fusões e aquisições  	17.15	17.75	\\r
109024000		1	Serviços de capital de risco e finanças corporativas 	17.15	17.75	\\r
109029000		1	Outros serviços relacionados a bancos de investimentos 	17.15	17.75	\\r
109031100		1	Serviços de seguro de vida	17.15	17.75	\\r
109031200		1	Serviços de previdência complementar aberta	17.15	17.75	\\r
109031300		1	Serviços de previdência complementar fechada	17.15	17.75	\\r
109032		1	Serviços de seguros saúde e de acidentes	17.15	17.75	\\r
109039100		1	Serviços de seguros de veículos rodoviários	17.15	17.75	\\r
109039200		1	Serviços de seguros para transporte ferroviário, aquaviário e aéreo 	17.15	17.75	\\r
109039400		1	Serviços de seguros de outras propriedades	17.15	17.75	\\r
109039500		1	Serviços de seguros por responsabilidade civil	17.15	17.75	\\r
109039600		1	Serviços de seguro de crédito e de caução	17.15	17.75	\\r
109039700		1	Serviços de seguro de viagem 	17.15	17.75	\\r
109039900		1	Outros serviços de seguro 	18.08	18.68	\\r
109041000		1	Serviços de resseguros de vida 	17.80	18.40	\\r
109042000		1	Serviços de resseguros saúde e de acidentes	17.80	18.40	\\r
109043100		1	Serviços de resseguros de veículos rodoviários 	17.47	18.07	\\r
109043200		1	Serviços de resseguros de transportes ferroviários, aquaviários e aéreos 	17.47	18.07	\\r
109043300		1	Serviços de resseguros de cargas	17.47	18.07	\\r
109043400		1	Serviços de resseguros de outras propriedades	17.47	18.07	\\r
109043500		1	Serviços de resseguros de responsabilidade civil	17.47	18.07	\\r
109043600		1	Serviços de resseguros de crédito e caução 	17.47	18.07	\\r
109043900		1	Outros serviços de resseguros 	17.47	18.07	\\r
109051100		1	Serviços de corretagem de títulos	17.80	18.40	\\r
109051200		1	Serviços de corretagem de derivativos e commodities	17.80	18.40	\\r
109051300		1	Serviços de compensação de transações financeiras, inclusive com ativos financeiros (clearinghouse)	17.80	18.40	\\r
109052000		1	Serviços de gestão e administração de carteiras de ativos, exceto fundos de pensão 	17.80	18.40	\\r
109053000		1	Serviços de guarda e custódia 	17.80	18.40	\\r
109054000		1	Serviços relacionados à administração de mercados financeiros 	17.80	18.40	\\r
109059100		1	Serviços de consultoria financeira 	17.80	18.40	\\r
109059200		1	Serviços de câmbio 	18.27	18.87	\\r
109059300		1	Serviços de classificação de risco (rating)	17.80	18.40	\\r
109059400		1	Serviços fiduciários 	17.80	18.40	\\r
109059900		1	Outros serviços auxiliares aos serviços financeiros não classificados em outra posição 	17.80	18.40	\\r
109061100		1	Serviços de agenciamento e corretagem de seguros e previdência complementar	17.80	18.40	\\r
109061200		1	Serviços de corretagem de planos privados de assistência à saúde	17.80	18.40	\\r
109062000		1	Serviços de perícia e avaliação de seguros 	17.80	18.40	\\r
109063000		1	Serviços atuariais 	17.80	18.40	\\r
109064000		1	Serviços de gestão de fundos de previdência complementar	17.80	18.40	\\r
109069000		1	Outros serviços auxiliares a seguros, previdência complementar e planos privados de assistência à saúde	17.80	18.40	\\r
109070000		1	Securitização de recebíveis	17.80	18.40	\\r
109080000		1	Fomento comercial (factoring)	17.72	18.32	\\r
110011100		1	Serviços de administração e locação de imóveis residenciais 	17.85	18.45	\\r
1100112		1	Serviços de administração e locação de imóveis não residenciais 	17.79	18.39	\\r
110011210		1	Serviços de administração de locação, sublocação, arrendamento, direito de passagem ou permissão de uso, compartilhado ou não, de ferrovia, rodovia, postes, cabos, dutos e condutos de qualquer natureza	18.15	18.75	\\r
110011290		1	Outros serviços de administração e locação de imóveis não residenciais	18.13	18.73	\\r
110012100		1	Compra e venda de imóveis residenciais	17.85	18.45	\\r
110012200		1	Compra e venda de imóveis não-residenciais	17.85	18.45	\\r
110013000		1	Serviços de avaliação de imóveis 	18.15	18.75	\\r
110014000		1	Serviços de consultoria imobiliária	17.85	18.45	\\r
110015000		1	Serviços de assessoria de gestão condominial (condomínios, edifícios residenciais e mistos)	17.85	18.45	\\r
111011100		1	Arrendamento mercantil operacional ou locação de veículos rodoviários automotores para o transporte de até oito passageiros, sem operador 	17.85	18.45	\\r
111011200		1	Arrendamento mercantil operacional ou locação de veículos rodoviários automotores para o transporte de mercadorias, sem operador 	17.85	18.45	\\r
111011300		1	Arrendamento mercantil operacional ou locação de veículos e equipamentos ferroviários, sem operador 	17.85	18.45	\\r
111011400		1	Arrendamento mercantil operacional ou locação de outros equipamentos de transporte terrestre, inclusive de veículos de uso misto, sem operador 	13.45	14.05	\\r
111011500		1	Arrendamento mercantil operacional ou locação de navios e outras embarcações, sem tripulação 	17.85	18.45	\\r
111011600		1	Arrendamento mercantil operacional ou locação de aeronaves, sem tripulação 	17.85	18.45	\\r
111011700		1	Arrendamento mercantil operacional ou locação de contêineres 	17.85	18.45	\\r
111012100		1	Arrendamento mercantil operacional ou locação de máquinas e equipamentos agrícolas, sem operador 	16.76	17.36	\\r
111012200		1	Arrendamento mercantil operacional ou locação de máquinas e equipamentos de construção, sem operador 	16.76	17.36	\\r
111012300		1	Arrendamento mercantil operacional ou locação de máquinas e equipamentos para escritórios, exceto computadores, sem operador 	16.76	17.36	\\r
111012400		1	Arrendamento mercantil operacional ou locação de computadores, sem operador	16.76	17.36	\\r
111012500		1	Arrendamento mercantil operacional ou locação de equipamentos de telecomunicação, sem operador 	16.76	17.36	\\r
111012900		1	Arrendamento mercantil operacional ou locação de máquinas e equipamentos, não classificados em outra posição, sem operador 	16.76	17.36	\\r
111021000		1	Arrendamento mercantil operacional ou locação de televisão e outros eletroeletrônicos domésticos, bem como seus acessórios 	16.76	17.36	\\r
111022000		1	Arrendamento mercantil operacional ou locação de mídias gravadas 	16.76	17.36	\\r
111023000		1	Arrendamento mercantil operacional ou locação de móveis e eletrodomésticos	16.76	17.36	\\r
111024000		1	Arrendamento mercantil operacional ou locação de equipamentos para diversão e lazer 	16.76	17.36	\\r
111025000		1	Arrendamento mercantil operacional ou locação de artigos de cama, mesa e banho	16.76	17.36	\\r
111026000		1	Arrendamento mercantil operacional ou locação de roupas e calçados 	16.76	17.36	\\r
111029000		1	Arrendamento mercantil operacional ou locação de outras mercadorias não classificadas em outra posição	16.76	17.36	\\r
111031000		1	Licenciamento de direitos de obras literárias	16.76	17.36	\\r
111032100		1	Licenciamento de direitos de produção, distribuição ou comercialização de programas de computador	16.37	16.97	\\r
111032200		1	Licenciamento de direitos de uso de programas de computador	16.37	16.97	\\r
111032900		1	Licenciamento de outros direitos sobre programas de computador  	16.37	16.97	\\r
111033100		1	Licenciamento de direitos de autor de obras cinematográficas	18.29	18.89	\\r
111033200		1	Licenciamento de direitos de autor de obras jornalísticas	18.29	18.89	\\r
111033300		1	Licenciamento de direitos de autor de obras publicitárias	18.29	18.89	\\r
111033400		1	Licenciamento de direitos conexos de artistas intérpretes ou executantes em obras audiovisuais	18.29	18.89	\\r
111033500		1	Licenciamento de direitos conexos de produtores de obras audiovisuais	18.29	18.89	\\r
1110339		1	Licenciamento de direitos de outras obras audiovisuais	18.29	18.89	\\r
11103391		1	Licenciamento de direitos de obras audiovisuais destinadas à televisão 	18.29	18.89	\\r
111033911		1	Licenciamento de direitos de obras audiovisuais sobre transmissões de eventos esportivos	18.29	18.89	\\r
111033912		1	Licenciamento de direitos de obras audiovisuais sobre transmissões de programas televisivos	18.29	18.89	\\r
111033919		1	Licenciamento de direitos de obras audiovisuais sobre outras transmissões televisivas	18.29	18.89	\\r
111033990		1	Licenciamento de direitos de outras obras audiovisuais	18.29	18.89	\\r
111034100		1	Licenciamento de direitos de autor de obras musicais ou literomusicais	18.29	18.89	\\r
111034200		1	Licenciamento de direitos conexos de artistas intérpretes ou executantes	18.29	18.89	\\r
111034300		1	Licenciamento de direitos conexos de produtores de fonogramas	18.29	18.89	\\r
111035000		1	Licenciamento de direitos relacionados à radiodifusão	18.29	18.89	\\r
111039100		1	Licenciamento de outros direitos de autor 	18.29	18.89	\\r
111039200		1	Licenciamento de outros direitos conexos 	18.29	18.89	\\r
111041000		1	Cessão temporária de direitos de obras literárias	18.29	18.89	\\r
111042000		1	Cessão temporária de direitos sobre programas de computador  	18.29	18.89	\\r
111043100		1	Cessão temporária de direitos de autor de obras cinematográficas	18.29	18.89	\\r
111043200		1	Cessão temporária de direitos de autor de obras jornalísticas	18.29	18.89	\\r
111043300		1	Cessão temporária de direitos de autor de obras publicitárias	18.29	18.89	\\r
111043400		1	Cessão temporária de direitos conexos de artistas intérpretes ou executantes em obras audiovisuais	18.29	18.89	\\r
111043500		1	Cessão temporária de direitos conexos de produtores de obras audiovisuais	18.29	18.89	\\r
1110439		1	Cessão temporária de direitos de outras obras audiovisuais 	18.29	18.89	\\r
11104391		1	Cessão temporária de direitos de obras audiovisuais destinadas à televisão	18.29	18.89	\\r
111043911		1	Cessão temporária de direitos de obras audiovisuais sobre transmissões de eventos esportivos	18.29	18.89	\\r
111043912		1	Cessão temporária de direitos de obras audiovisuais sobre transmissões de programas televisivos	18.29	18.89	\\r
111043919		1	Cessão temporária de direitos de obras audiovisuais sobre outras transmissões televisivas	18.29	18.89	\\r
111043990		1	Cessão temporária de direitos de outras obras audiovisuais 	18.29	18.89	\\r
111044100		1	Cessão temporária de direitos de autor de obras musicais e literomusicais	18.29	18.89	\\r
111044200		1	Cessão temporária de direitos conexos de artistas intérpretes ou executantes	18.29	18.89	\\r
111044300		1	Cessão temporária de direitos conexos de produtores de fonogramas	18.29	18.89	\\r
111045000		1	Cessão temporária de direitos relacionados à radiodifusão	18.29	18.89	\\r
111049100		1	Cessão temporária de outros direitos de autor 	18.29	18.89	\\r
111049200		1	Cessão temporária de outros direitos conexos	18.37	18.97	\\r
111051000		1	Licenciamento de direitos sobre patentes	18.29	18.89	\\r
111052000		1	Licenciamento de direitos sobre marcas 	18.29	18.89	\\r
111053000		1	Licenciamento de direitos sobre desenho industrial	18.29	18.89	\\r
111059000		1	Licenciamento de outros direitos sobre a propriedade industrial	18.29	18.89	\\r
111060000		1	Licenciamento de direitos sobre cultivares	18.29	18.89	\\r
111070000		1	Licenciamento de direitos sobre topografias de circuitos integrados	18.29	18.89	\\r
111080000		1	Licenciamento de direitos relativos à informação não divulgada	18.29	18.89	\\r
111090000		1	Licenciamento de outros direitos de propriedade intelectual não classificados em nenhuma das posições anteriores 	18.29	18.89	\\r
111101000		1	Contratos de prestação de serviços de assistência técnica e científica, combinadamente ou não, com qualquer modalidade de transferência de tecnologia	18.37	18.97	\\r
111102000		1	Contratos de fornecimento de tecnologia (know-how)	18.37	18.97	\\r
111103000		1	Contratos de franquia	18.37	18.97	\\r
111109000		1	Outros contratos de transferência de tecnologia	18.37	18.97	\\r
111111000		1	Exploração de recursos vegetais, inclusive florestais	18.32	18.92	\\r
111112000		1	Exploração de recursos minerais	18.32	18.92	\\r
111121000		1	Licenciamento de direitos sobre conhecimento tradicional associado a recursos genéticos	18.29	18.89	\\r
111129000		1	Licenciamento de direitos sobre outros conhecimentos tradicionais	18.29	18.89	\\r
111130000		1	Licenciamento de direitos relativos ao acesso a recursos genéticos, exceto os decorrentes do conhecimento tradicional	18.29	18.89	\\r
112011100		1	Serviços de pesquisa e desenvolvimento em física	17.13	17.73	\\r
112011200		1	Serviços de pesquisa e desenvolvimento em química e biologia 	17.79	18.39	\\r
112011900		1	Serviços de pesquisa e desenvolvimento em outras ciências naturais e exatas	17.13	17.73	\\r
112012100		1	Serviços de pesquisa e desenvolvimento em biotecnologia	17.13	17.73	\\r
112012200		1	Serviços de pesquisa e desenvolvimento em tecnologia da informação e comunicação (TIC)	17.13	17.73	\\r
112012300		1	Serviços de pesquisa e desenvolvimento em nanotecnologia 	17.13	17.73	\\r
112012400		1	Serviços de pesquisa e desenvolvimento em engenharia e tecnologia nucleares	17.13	17.73	\\r
112012500		1	Serviços de pesquisa e desenvolvimento em engenharia e tecnologia em microondas de potência	17.13	17.73	\\r
112012900		1	Outros serviços de pesquisa e desenvolvimento em outros ramos da  engenharia e tecnologia	17.13	17.73	\\r
112013000		1	Serviços de pesquisa e desenvolvimento em  ciências médica, odontológica e farmacêutica	17.13	17.73	\\r
112014000		1	Serviços de pesquisa e desenvolvimento em ciências agrícolas 	17.13	17.73	\\r
112019100		1	Pesquisa tecnológica utilizando documentos de patentes	17.13	17.73	\\r
112019900		1	Outros serviços de pesquisa e desenvolvimento em ciências naturais e engenharia	17.13	17.73	\\r
112021100		1	Serviços de pesquisa e desenvolvimento em psicologia 	17.13	17.73	\\r
112021200		1	Serviços de pesquisa e desenvolvimento em economia 	17.13	17.73	\\r
112021300		1	Serviços de pesquisa e desenvolvimento em direito	17.13	17.73	\\r
112021900		1	Serviços de pesquisa e desenvolvimento em outras ciências sociais 	17.13	17.73	\\r
112022000		1	Serviços de pesquisa e desenvolvimento em humanidades 	17.13	17.73	\\r
112030000		1	Serviços de pesquisa e desenvolvimento interdisciplinar 	17.13	17.73	\\r
113011000		1	Serviços de representação e consultoria jurídica criminal	18.45	19.05	\\r
113012000		1	Serviços de representação e consultoria jurídica em outras áreas do direito 	18.45	19.05	\\r
113013000		1	Serviços de documentação e certificação, exceto os serviços notariais e de registro	18.45	19.05	\\r
113014100		1	Serviços de arbitragem, conciliação e mediação 	18.45	19.05	\\r
113014900		1	Outros serviços jurídicos não classificados em outra posição 	18.45	19.05	\\r
113021100		1	Serviços de auditoria contábil 	18.45	19.05	\\r
113021900		1	Outros serviços de auditoria 	18.45	19.05	\\r
113022100		1	Serviços de contabilidade 	18.45	19.05	\\r
113022200		1	Serviços de escrituração mercantil 	18.45	19.05	\\r
113022300		1	Serviços de folha de pagamento	18.45	19.05	\\r
113022900		1	Outros serviços de contabilidade e escrituração mercantil	18.33	18.93	\\r
113031000		1	Serviços de consultoria tributária para pessoas jurídicas 	18.43	19.03	\\r
113032000		1	Serviços de consultoria tributária para pessoas físicas	18.43	19.03	\\r
113040000		1	Serviços notariais e de registros	17.85	18.45	\\r
114011100		1	Serviços de consultoria gerencial estratégica	17.78	18.38	\\r
114011200		1	Serviços de consultoria gerencial financeira 	18.44	19.04	\\r
114011300		1	Serviços de consultoria gerencial em recursos humanos	18.43	19.03	\\r
114011400		1	Serviços de consultoria gerencial em marketing 	18.43	19.03	\\r
114011500		1	Serviços de consultoria gerencial operacional	18.32	18.92	\\r
114011600		1	Serviços de consultoria gerencial em energia	18.43	19.03	\\r
114011700		1	Serviços de consultoria em logística	18.43	19.03	\\r
114011800		1	Serviços gerenciais em processos de negócios 	18.21	18.81	\\r
114011900		1	Outros serviços gerenciais e de consultoria gerencial	18.43	19.03	\\r
114012000		1	Serviços de relações públicas 	18.43	19.03	\\r
114013100		1	Serviços de assessoria de imprensa	18.41	19.01	\\r
114013900		1	Outros serviços de comunicação social	18.41	19.01	\\r
114021100		1	Serviços de consultoria em arquitetura 	18.43	19.03	\\r
114021200		1	Serviços arquitetônicos para projetos de construções residenciais 	18.43	19.03	\\r
114021300		1	Serviços arquitetônicos para projetos de construções não residenciais  	18.43	19.03	\\r
114021400		1	Serviços arquitetônicos para restauração de prédios históricos	18.43	19.03	\\r
114021900		1	Serviços de arquitetura relativos ao acompanhamento e fiscalização da execução de projetos arquitetônicos e urbanísticos	18.11	18.71	\\r
114022100		1	Serviços de planejamento urbano 	18.43	19.03	\\r
114022200		1	Serviços de planejamento de áreas rurais 	18.43	19.03	\\r
114023100		1	Serviços de consultoria de paisagismo	18.43	19.03	\\r
114023200		1	Serviços arquitetônicos de paisagismo 	18.43	19.03	\\r
114031000		1	Serviços de consultoria de engenharia 	17.39	17.99	\\r
1140321		1	Serviços de engenharia de projetos de construção 	17.39	17.99	\\r
114032110		1	Serviços de engenharia de projetos de construção residencial	17.39	17.99	\\r
114032120		1	Serviços de engenharia de projetos de construção não residencial	17.39	17.99	\\r
114032200		1	Serviços de engenharia de projetos industriais e de fabricação, exceto para projetos de energia	17.39	17.99	\\r
114032300		1	Serviços de engenharia para projetos de transportes	17.39	17.99	\\r
1140324		1	Serviços de engenharia para projetos de energia 	17.39	17.99	\\r
114032410		1	Serviços de engenharia para projetos de exploração de petróleo e gás	17.39	17.99	\\r
114032420		1	Serviços de engenharia para projetos de refino de petróleo e petroquímica	17.39	17.99	\\r
114032430		1	Serviços de engenharia para projetos de unidades de produção de biocombustíveis	17.39	17.99	\\r
114032440		1	Serviços de engenharia para projetos de energia elétrica	17.39	17.99	\\r
114032450		1	Serviços de engenharia para projetos de embarcações	17.39	17.99	\\r
114032490		1	Outros serviços de engenharia para projetos de energia 	17.39	17.99	\\r
114032500		1	Serviços de engenharia de projetos de radiodifusão e televisão	17.39	17.99	\\r
114032600		1	Serviços de engenharia de projetos de gerenciamento de resíduos (perigosos e não perigosos) 	17.39	17.99	\\r
114032700		1	Serviços de engenharia de projetos de distribuição de água e rede de esgoto	17.39	17.99	\\r
114032800		1	Serviços de engenharia de projetos de telecomunicação	17.39	17.99	\\r
1140329		1	Outros serviços de engenharia de projetos 	17.39	17.99	\\r
114032910		1	Serviços de engenharia de projetos aeroespaciais 	17.39	17.99	\\r
114032990		1	Outros serviços de engenharia de projetos 	17.39	17.99	\\r
114033000		1	Serviços de gerenciamento de projetos de construção 	17.39	17.99	\\r
114039000		1	Outros serviços de engenharia	17.39	17.99	\\r
114041100		1	Serviços de  consultoria geológica e geofísica	17.90	18.50	\\r
114041200		1	Serviços geofísicos	17.90	18.50	\\r
114041300		1	Serviços geoquímicos	17.90	18.50	\\r
114041400		1	Serviços de avaliação e exploração de recursos naturais	17.90	18.50	\\r
114041900		1	Outros serviços de prospecção	17.90	18.50	\\r
114042100		1	Serviços topográficos 	18.16	18.76	\\r
114042200		1	Serviços cartográficos 	18.16	18.76	\\r
114043000		1	Serviços meteorológicos e de previsão do tempo	18.35	18.95	\\r
114044100		1	Serviços de análise e de exames técnicos sobre pureza e composição 	18.16	18.76	\\r
114044200		1	Serviços de análise e de exames técnicos de propriedades físicas 	18.16	18.76	\\r
114044300		1	Serviços de análise e de exames técnicos de sistemas elétricos e mecânicos 	18.16	18.76	\\r
114044400		1	Serviços de inspeção técnica de veículos de transporte rodoviários 	18.16	18.76	\\r
114044900		1	Outros serviços de análise e de exames técnicos 	18.16	18.76	\\r
114051010		1	Serviços hospitalares, com ou sem internação	17.13	17.73	\\r
114051090		1	Outros serviços veterinários para animais domésticos 	17.13	17.73	\\r
114052010		1	Serviços hospitalares, com ou sem internação	17.13	17.73	\\r
114052090		1	Outros serviços veterinários para animais de corte 	17.13	17.73	\\r
114053000		1	Serviços funerários, de cremação e de embalsamamento de animais	17.13	17.73	\\r
114059100		1	Serviços de bancos de órgãos, sangue, sêmen, tecidos, óvulos e outros materiais biológicos 	17.13	17.73	\\r
114059200		1	Serviços de unidades de atendimento, assistência ou tratamento móvel	17.13	17.73	\\r
114059300		1	Planos de atendimento e assistência médico-veterinário	17.13	17.73	\\r
114059400		1	Serviços de guarda, tratamento, adestramento, embelezamento e alojamento (hotel veterinário)	17.13	17.73	\\r
114059900		1	Outros serviços veterinários	17.13	17.73	\\r
114061100		1	Serviços de campanhas publicitárias 	17.98	18.58	\\r
114061200		1	Serviços de marketing direto e mala direta	17.98	18.58	\\r
114061900		1	Outros serviços de propaganda	18.13	18.73	\\r
114062000		1	Aquisição ou venda de espaço ou tempo para propaganda, sob comissão 	17.98	18.58	\\r
114063100		1	Venda de espaço para propaganda em mídia impressa, exceto sob comissão 	17.98	18.58	\\r
114063200		1	Venda de tempo para propaganda em rádio e televisão, exceto sob comissão 	17.98	18.58	\\r
114063300		1	Venda de espaço para propaganda na rede mundial de computadores, exceto sob comissão 	17.98	18.58	\\r
114063900		1	Venda de espaço ou tempo para propaganda em outros meios de comunicação publicitária, exceto sob comissão	17.98	18.58	\\r
114070000		1	Pesquisas de mercado e serviços de pesquisa de opinião pública	18.43	19.03	\\r
114081100		1	Serviços fotográficos de retratos 	18.45	19.05	\\r
114081200		1	Serviços fotográficos para propaganda 	18.45	19.05	\\r
114081300		1	Serviços fotográficos e videográficos de eventos	18.16	18.76	\\r
114081400		1	Serviços fotográficos especiais 	17.13	17.73	\\r
114081900		1	Outros serviços fotográficos 	18.16	18.76	\\r
114082		1	Serviços de processamento de fotografias	18.16	18.76	\\r
1140911		1	Serviços de projeto (design) de interiores 	17.93	18.53	\\r
114091110		1	Serviços de projetos (design) de espaços comerciais e públicos	17.90	18.50	\\r
114091190		1	Outros serviços de projeto (design) de interiores 	17.90	18.50	\\r
114091200		1	Serviços de desenho industrial 	18.17	18.77	\\r
1140913		1	Projetos (design) originais	17.90	18.50	\\r
114091310		1	Serviços de projetos (design) de marcas, imagens, objetos gráficos e digitais	17.90	18.50	\\r
114091320		1	Serviços de projetos (design) de embalagens, expositores de loja e objetos promocionais para comunicação e vendas	17.90	18.50	\\r
114091330		1	Serviços de projetos (design) de produtos, utensílios, equipamentos, vestuário, calçados, ornamentos, jóias e objetos pessoais	17.90	18.50	\\r
114091340		1	Serviços de projetos (design) de máquinas, equipamentos, acessórios e objetos de uso industrial de qualquer natureza	17.90	18.50	\\r
114091390		1	Outros serviços projetos (design) originais	17.59	18.19	\\r
114091900		1	Outros serviços especializados de projeto (design)	17.94	18.54	\\r
114092100		1	Serviços de consultoria ambiental 	17.90	18.50	\\r
114092900		1	Outros serviços técnicos e científicos não classificados em outra posição 	18.43	19.03	\\r
114093000		1	Compilação e coletânea de fatos e informações originais 	18.43	19.03	\\r
114094000		1	Serviços de tradução e de intérpretes 	18.43	19.03	\\r
114095000		1	Serviços para registros de marcas comerciais e de franquias empresariais, exceto as licenças de uso de direito 	17.85	18.45	\\r
114099000		1	Outros serviços profissionais, técnicos e gerenciais não classificados em outra posição 	13.45	14.05	\\r
115011000		1	Serviços de consultoria em tecnologia da informação (TI)	18.13	18.73	\\r
115012000		1	Serviços de segurança em tecnologia da informação (TI)	18.13	18.73	\\r
115013000		1	Serviços de suporte em tecnologia da informação (TI) 	16.81	17.41	\\r
115021000		1	Serviços de projeto, desenvolvimento e instalação de aplicativos e programas não personalizados (não customizados)	17.59	18.19	\\r
115022000		1	Serviços de projeto e desenvolvimento, adaptação e instalação de aplicativos personalizados (customizados)	17.59	18.19	\\r
115023000		1	Serviços de projeto e desenvolvimento de estruturas e conteúdo de páginas eletrônicas 	18.16	18.76	\\r
115024000		1	Serviços de projeto e desenvolvimento de estruturas e conteúdo de bancos de dados 	17.25	17.85	\\r
115025000		1	Serviços de integração de sistemas em tecnologia da informação (TI) 	17.59	18.19	\\r
115029000		1	Outros serviços de projeto e desenvolvimento de aplicativos 	17.00	17.60	\\r
115030000		1	Serviços de projeto e desenvolvimento de redes em tecnologia da informação (TI)  	17.59	18.19	\\r
115040000		1	Serviços de projeto e desenvolvimento de topografias de circuitos integrados	17.59	18.19	\\r
115050000		1	Serviços de projeto de circuitos integrados	17.59	18.19	\\r
115061000		1	Serviços de hospedagem de sítios na rede mundial de computadores 	17.59	18.19	\\r
115062000		1	Serviços de hospedagem de aplicativos e programas 	17.59	18.19	\\r
115069000		1	Outros serviços de infraestrutura para hospedagem em tecnologia da informação (TI)   	17.59	18.19	\\r
115071000		1	Serviços de gerenciamento de redes	17.59	18.19	\\r
115072000		1	Serviços de gerenciamento de sistemas computacionais 	17.59	18.19	\\r
115079000		1	Outros serviços de gerenciamento de infraestrutura de tecnologia da informação (TI)	17.59	18.19	\\r
115080000		1	Serviços de manutenção de aplicativos e programas	17.59	18.19	\\r
115090000		1	Serviços auxiliares de processamento de dados	17.25	17.85	\\r
115100000		1	Outros serviços de gerenciamento de  tecnologia da informação (TI)   	17.59	18.19	\\r
1170111		1	Serviços de chamada de telecomunicações fixos comutados em banda estreita e banda larga  	13.45	14.05	\\r
117011110		1	Local	13.45	14.05	\\r
117011120		1	Nacional	13.45	14.05	\\r
117011130		1	Internacional	13.45	14.05	\\r
1170112		1	Serviços de acesso e uso de telecomunicações fixos comutados em banda estreita e banda larga 	13.45	14.05	\\r
117011210		1	Local	13.45	14.05	\\r
117011220		1	Nacional	13.45	14.05	\\r
117011230		1	Internacional	13.45	14.05	\\r
117011300		1	Serviços de valor adicionado sobre serviços de telecomunicações fixos	13.45	14.05	\\r
117011400		1	Serviços de gerência de redes fixas e administração de seus usuários 	13.45	14.05	\\r
117011500		1	Serviços de interconexão pelo uso da rede fixa 	13.45	14.05	\\r
117011900		1	Outros serviços de telecomunicações fixas 	13.45	14.05	\\r
1170121		1	Serviços de chamada de telecomunicações móveis comutados em banda estreita e banda larga 	13.45	14.05	\\r
117012110		1	Local	13.45	14.05	\\r
117012120		1	Nacional	13.45	14.05	\\r
117012130		1	Internacional	13.45	14.05	\\r
1170122		1	Serviços de acesso e uso de telecomunicações móveis comutado em banda estreita e banda larga 	13.45	14.05	\\r
117012210		1	Local	13.45	14.05	\\r
117012220		1	Nacional	13.45	14.05	\\r
117012230		1	Internacional	13.45	14.05	\\r
117012300		1	Serviços de valor adicionado sobre serviços de telecomunicações móveis	13.45	14.05	\\r
117012400		1	Serviços de gerência das redes móveis e administração de seus usuários 	13.45	14.05	\\r
117012500		1	Serviços de interconexão pelo uso de rede móvel 	13.45	14.05	\\r
1170126		1	Serviços de usuário visitante (roaming)	13.45	14.05	\\r
117012610		1	Serviços de usuário visitante nacional (roaming nacional)	13.45	14.05	\\r
117012620		1	Serviços de usuário visitante internacional (roaming internacional)	13.45	14.05	\\r
117012700		1	Serviços nomádicos 	13.45	14.05	\\r
117012900		1	Outros serviços de telecomunicações móveis 	13.45	14.05	\\r
117013010		1	Serviços fixos de redes privativas	13.45	14.05	\\r
117013020		1	Serviços móveis, nomádicos de uso privativo	13.45	14.05	\\r
11701303		1	Serviços de interesse restrito	13.45	14.05	\\r
117013031		1	Serviços de interesse restrito de abrangência local	13.45	14.05	\\r
117013032		1	Serviços de interesse restrito de abrangência nacional	13.45	14.05	\\r
117013033		1	Serviços de interesse restrito de abrangência internacional	13.45	14.05	\\r
117013040		1	Serviços de valor adicionado sobre serviços de redes privadas ou de serviços de interesse restrito	13.45	14.05	\\r
117014010		1	Serviços de transmissão de dados local, nacional ou internacional 	13.45	14.05	\\r
117014020		1	Serviços de exploração de linha dedicada local, nacional ou internacional	13.45	14.05	\\r
117015010		1	Serviços de distribuição de pacotes básicos de programação de televisão por assinatura	13.45	14.05	\\r
117015020		1	Serviços de distribuição de grades de programação especiais de televisão por assinatura	13.45	14.05	\\r
117015030		1	Serviços de distribuição de programação através do sistema “pague e assista” (pay-per-view) de televisão por assinatura	13.45	14.05	\\r
117015090		1	Outros serviços de distribuição de programação de televisão por assinatura, inclusive os “pacotes combinados”	13.45	14.05	\\r
117019000		1	Outros serviços de telecomunicações 	13.45	14.05	\\r
117021000		1	Serviços de fornecimento de infraestrutura de acesso (backbone) à rede mundial de computadores  	13.45	14.05	\\r
117022100		1	Serviços de acesso à rede mundial de computadores por conexão discada 	13.45	14.05	\\r
117022200		1	Serviços de acesso à rede mundial de computadores por banda larga 	13.45	14.05	\\r
117029000		1	Outros serviços na rede mundial de computadores	13.45	14.05	\\r
119021000		1	Serviços de apoio à extração de petróleo e gás 	18.32	18.92	\\r
117031000		1	Serviços de oferta de livros, jornais, periódicos, diretórios e listas de postagem de acesso imediato (on-line)	13.45	14.05	\\r
117032000		1	Serviços de oferta de áudio, inclusive de conteúdo contínuo (streaming), de acesso imediato (on-line)	13.45	14.05	\\r
117033000		1	Serviços de oferta de filmes e vídeos, inclusive de conteúdo contínuo (streaming), de acesso imediato (on-line) 	13.45	14.05	\\r
117034000		1	Serviços de oferta de conteúdos que combinem duas ou mais mídias de acesso imediato (on-line)	13.45	14.05	\\r
117035000		1	Serviços de conteúdo de portais de busca na rede mundial de computadores	13.45	14.05	\\r
117039000		1	Outros serviços de conteúdos de acesso imediato (on-line) 	13.45	14.05	\\r
117041000		1	Serviços de agências de notícias para jornais e periódicos	18.29	18.89	\\r
117042000		1	Serviços de agências de notícias em mídia audiovisual 	18.29	18.89	\\r
117049000		1	Outros serviços de agências de notícias 	18.29	18.89	\\r
117051000		1	Serviços de biblioteca	18.45	19.05	\\r
117052000		1	Serviços de arquivamento 	18.45	19.05	\\r
117061100		1	Serviços de difusão de programas originais de rádio 	13.45	14.05	\\r
1170612		1	Serviços de difusão de programas originais de televisão 	13.45	14.05	\\r
117061210		1	Serviços de difusão de programas originais para televisão aberta	13.45	14.05	\\r
117061220		1	Serviços de difusão de programas originais para televisão por assinatura 	13.45	14.05	\\r
117062100		1	Serviços de programação dos canais de rádio 	13.45	14.05	\\r
117062200		1	Serviços de programação dos canais de televisão	13.45	14.05	\\r
117063000		1	Serviços de distribuição de sinais de rádio e televisão	13.45	14.05	\\r
117064000		1	Serviços de distribuição de programas de televisão aberta	13.45	14.05	\\r
118011000		1	Serviços de busca de empregos e encaminhamento de pessoal 	18.26	18.86	\\r
118012100		1	Serviços de fornecimento de mão de obra efetiva 	16.94	17.54	\\r
118012200		1	Serviços de fornecimento de mão de obra temporária	16.94	17.54	\\r
118019000		1	Outros serviços de recrutamento e seleção de pessoal	16.94	17.54	\\r
118021000		1	Serviços de investigação 	18.45	19.05	\\r
118022000		1	Serviços de consultoria em segurança 	18.45	19.05	\\r
118023000		1	Serviços de sistemas de segurança 	18.45	19.05	\\r
118024000		1	Serviços de transporte de valores	18.42	19.02	\\r
118025000		1	Serviços de guarda e escolta armada	16.76	17.36	\\r
118029000		1	Outros serviços de segurança 	16.50	17.10	\\r
118031000		1	Serviços de desinfecção e extermínio de pragas	18.29	18.89	\\r
118032000		1	Serviços gerais de limpeza	17.65	18.25	\\r
118033000		1	Serviços especializados de limpeza 	17.65	18.25	\\r
118041100		1	Serviços de reservas em transportes aéreos 	18.45	19.05	\\r
118041900		1	Outros serviços de planejamento e reserva em transportes	18.45	19.05	\\r
118042100		1	Serviços de reservas de hospedagem	18.29	18.89	\\r
118042200		1	Serviços de reservas em cruzeiros	18.29	18.89	\\r
118042300		1	Serviços de reservas de pacotes turísticos	18.29	18.89	\\r
118043000		1	Outros serviços de reservas	18.29	18.89	\\r
118044000		1	Serviços de operadoras de turismo	18.29	18.89	\\r
118045000		1	Serviços de guias turísticos	18.29	18.89	\\r
118046100		1	Serviços de promoção turística	18.29	18.89	\\r
118046200		1	Serviços de informação a visitantes	18.29	18.89	\\r
118051000		1	Serviços de informação cadastral para fins de crédito	18.43	19.03	\\r
118052000		1	Serviços de cobrança	18.45	19.05	\\r
118053100		1	Serviços de telemarketing, incluindo serviços de atendimento ao cliente	13.45	14.05	\\r
118053900		1	Outros serviços de apoio por meio de telefone	13.45	14.05	\\r
118054000		1	Serviços combinados de escritório e apoio administrativo	18.45	19.05	\\r
118055100		1	Serviços de fotocópia	18.45	19.05	\\r
118055200		1	Serviços de mala direta e elaboração de listas de endereços	18.45	19.05	\\r
118055300		1	Serviços de preparação de documentos e outros serviços especializados de apoio a escritórios	18.45	19.05	\\r
118056100		1	Serviços de assistência e organização de convenções	18.45	19.05	\\r
118056200		1	Serviços de assistência e organização de feiras de negócios	18.45	19.05	\\r
118056300		1	Serviços de exploração de centros de convenções, escritórios virtuais, estandes de qualquer natureza, auditórios e os demais assemelhados para realização de eventos ou negócios de qualquer natureza	18.45	19.05	\\r
118056900		1	Outros serviços de assistência e organização de feiras de negócios e convenções 	18.45	19.05	\\r
118057000		1	Serviços de jardinagem	17.96	18.56	\\r
118059010		1	Serviços de leitura de medidores	13.45	14.05	\\r
118059011		1	Serviços de leitura de medidores de eletricidade	13.45	14.05	\\r
118059012		1	Serviços de leitura de medidores de gás	13.45	14.05	\\r
118059013		1	Serviços de leitura de medidores de água	13.45	14.05	\\r
118059020		1	Serviços de agências de modelos	17.85	18.45	\\r
118059030		1	Serviços de distribuição e venda de bilhetes e demais produtos de loteria, cartões, pules ou cupons de apostas, sorteios, prêmios, inclusive os decorrentes de títulos de capitalização e congêneres.	18.34	18.94	\\r
118059090		1	Outros serviços de apoio	18.43	19.03	\\r
119011000		1	Serviços de apoio à agricultura	18.40	19.00	\\r
119012000		1	Serviços de apoio à pecuária	18.40	19.00	\\r
119013000		1	Serviços de apoio à produção florestal (silvicultura)	18.40	19.00	\\r
119014000		1	Serviços de apoio à pesca 	18.40	19.00	\\r
119015000		1	Serviços de apoio à aquicultura	18.40	19.00	\\r
119029000		1	Outros serviços de apoio à mineração 	18.32	18.92	\\r
119031100		1	Serviços de apoio à transmissão de eletricidade 	13.45	14.05	\\r
119031200		1	Serviços de apoio à distribuição de eletricidade 	13.45	14.05	\\r
119032000		1	Serviços de apoio à distribuição de gás por meio de tubulações	13.45	14.05	\\r
119033000		1	Serviços de apoio à distribuição de água 	13.45	14.05	\\r
119034000		1	Serviços de apoio à distribuição de ar condicionado, água quente e vapor por meio de tubulações	13.45	14.05	\\r
120011000		1	Serviços de manutenção e reparação de produtos metálicos	18.05	18.65	\\r
120012000		1	Serviços de manutenção e reparação de computadores e seus periféricos e maquinário de escritório 	16.81	17.41	\\r
120013100		1	Serviços de manutenção e reparação de veículos automotores rodoviários 	18.05	18.65	\\r
120013200		1	Serviços de manutenção e reparação de reboques (trailers), semirreboques (semi-trailers) e outros veículos não motorizados	18.05	18.65	\\r
120013300		1	Serviços de manutenção e reparação de veículos militares 	18.05	18.65	\\r
1200139		1	Serviços de manutenção e reparação de outros equipamentos de transporte 	18.05	18.65	\\r
12001391		1	Serviços de manutenção e reparação de aeronaves, inclusive foguetes e equipamentos aeroespaciais	18.05	18.65	\\r
120013911		1	Serviços de manutenção e reparação de motores, turborreatores e turbopropulsores aeronáuticos	18.45	19.05	\\r
120013912		1	Serviços de manutenção e reparação  de foguetes e equipamentos aeroespaciais 	18.05	18.65	\\r
120013919		1	Outros serviços de manutenção e reparação de aeronaves	18.05	18.65	\\r
12001392		1	Serviços de manutenção e reparação de embarcações	18.05	18.65	\\r
120013921		1	Serviços de manutenção e reparação de embarcações militares	18.05	18.65	\\r
120013929		1	Outros serviços de manutenção e reparação de embarcações	18.05	18.65	\\r
120013930		1	Serviços de manutenção e reparação de equipamentos ferroviários e metroviários	18.05	18.65	\\r
120013990		1	Outros serviços de manutenção e reparação de outros equipamentos de transporte 	18.05	18.65	\\r
120014000		1	Serviços de manutenção e reparação de plataformas, inclusive navios-plataforma, para extração de petróleo e gás	18.05	18.65	\\r
120015100		1	Serviços de manutenção e reparação de aparelhos eletro-eletrônicos domésticos 	18.25	18.85	\\r
120015200		1	Serviços de manutenção e reparação de equipamentos e aparelhos de telecomunicações	18.25	18.85	\\r
120015300		1	Serviços de manutenção e reparação de instrumentos e equipamentos médico-hospitalares, odontológicos, óticos e de precisão	18.25	18.85	\\r
120015400		1	Serviços de manutenção e reparação de equipamentos militares	18.25	18.85	\\r
1200159		1	Outros serviços de manutenção e reparação de maquinário e equipamentos 	18.25	18.85	\\r
120015910		1	Serviços de manutenção e reparação de turbinas industriais	18.05	18.65	\\r
120015990		1	Outros serviços de manutenção e reparação de maquinário e equipamentos 	18.05	18.65	\\r
120021000		1	Serviços de reparação de produtos de couro, calçados, malas e bolsas	18.01	18.61	\\r
120022000		1	Serviços de reparação de relógios e jóias	18.31	18.91	\\r
120023000		1	Serviços de reparação de móveis	18.45	19.05	\\r
120029000		1	Outros serviços de manutenção e reparação de outros bens de consumo	18.41	19.01	\\r
120031000		1	Serviços de instalação de produtos metálicos	18.45	19.05	\\r
120032100		1	Serviços de montagem sob encomenda de turbinas industriais	18.45	19.05	\\r
120032900		1	Outros serviços de instalação de maquinário e equipamentos, industriais	18.45	19.05	\\r
120033000		1	Serviços de instalação de computadores e seus periféricos e maquinário de escritório	16.81	17.41	\\r
120034000		1	Serviços de instalação de equipamentos e aparelhos de comunicação, incluindo de rádio e de televisão 	18.45	19.05	\\r
120035000		1	Serviços de instalação de maquinários, equipamentos, instrumentos e aparelhos médico-hospitalares, óticos e de precisão	18.45	19.05	\\r
120036000		1	Serviços de instalação de sensores e sistemas de armas	18.45	19.05	\\r
120037000		1	Serviços de instalação de maquinários e equipamentos de emprego militar	18.45	19.05	\\r
120038010		1	Serviços de montagem sob encomenda de motores, turborreatores e turbopropulsores aeronáuticos	18.45	19.05	\\r
120038090		1	Outros serviços de instalação de equipamentos e aparelhos de transporte	18.45	19.05	\\r
120039000		1	Serviços de instalação de maquinário e aparelhos não classificados em outra posição 	18.45	19.05	\\r
121011000		1	Serviços editoriais 	17.75	18.35	\\r
121012100		1	Serviços de impressão	17.75	18.35	\\r
121012200		1	Serviços relacionados à impressão	17.75	18.35	\\r
121012300		1	Serviços de reprodução de mídia gravada 	17.75	18.35	\\r
121013000		1	Serviços de apoio aos serviços de reprodução, impressão e editoração	17.75	18.35	\\r
121019000		1	Outros serviços de reprodução, impressão e editoração	17.75	18.35	\\r
122011100		1	Serviços de creches ou de entidades equivalentes, para crianças de até três anos de idade	16.14	16.74	\\r
122011200		1	Serviços de pré-escola, para crianças de quatro a cinco anos e onze meses de idade	16.14	16.74	\\r
122011900		1	Outros serviços de educação infantil	16.14	16.74	\\r
122012000		1	Serviços de ensino fundamental	16.14	16.74	\\r
122013000		1	Serviços de ensino médio	16.14	16.74	\\r
122020000		1	Serviços de educação técnica de nível médio	16.14	16.74	\\r
122031000		1	Serviços de alfabetização de jovens e adultos	16.14	16.74	\\r
122032000		1	Serviços de ensino fundamental de jovens e adultos	16.14	16.74	\\r
122033000		1	Serviços de ensino médio de jovens e adultos	16.14	16.74	\\r
122041000		1	Serviços educacionais de graduação	16.14	16.74	\\r
122042000		1	Serviços educacionais de pós-graduação	16.14	16.74	\\r
122043000		1	Serviços educacionais de extensão	16.14	16.74	\\r
122044000		1	Serviços educacionais de cursos sequenciais	16.14	16.74	\\r
122050000		1	Serviços de educação especial	16.14	16.74	\\r
122061100		1	Serviços culturais, com enfoque educacional 	16.57	17.17	\\r
122061200		1	Serviços de educação desportiva e recreacional 	16.57	17.17	\\r
122061300		1	Serviços de educação em línguas estrangeiras	16.57	17.17	\\r
1220619		1	Outros serviços de educação e treinamento não classificados em outra posição 	16.57	17.17	\\r
122061910		1	Serviços de palestras e conferências	16.57	17.17	\\r
122061990		1	Outros serviços de educação e treinamento	16.57	17.17	\\r
122062000		1	Serviços de apoio aos serviços educacionais 	16.57	17.17	\\r
123011100		1	Serviços cirúrgicos 	16.45	17.05	\\r
123011200		1	Serviços ginecológicos e obstétricos 	16.33	16.93	\\r
123011300		1	Serviços psiquiátricos 	16.34	16.94	\\r
123011400		1	Serviços cardiológicos	17.90	18.50	\\r
123011500		1	Serviços oncológicos	16.31	16.91	\\r
123011600		1	Serviços aos recém-nascidos	15.72	16.32	\\r
123011700		1	Serviços de ambulâncias, exceto de ambulâncias destinadas unicamente para a remoção de enfermos, sem envolver atendimento médico ao paciente	16.33	16.93	\\r
123011800		1	Serviços prestados em unidades de terapia intensiva	16.33	16.93	\\r
1230119		1	Outros serviços hospitalares 	15.72	16.32	\\r
123011910		1	Serviços de atendimento de urgência	15.72	16.32	\\r
123011920		1	Serviços conexos à saúde pública	15.72	16.32	\\r
123011990		1	Outros serviços hospitalares	15.72	16.32	\\r
123012100		1	Serviços de clínica médica 	15.72	16.32	\\r
123012200		1	Serviços médicos especializados 	16.79	17.39	\\r
123012300		1	Serviços odontológicos	16.30	16.90	\\r
123019100		1	Serviços de enfermagem 	16.32	16.92	\\r
123019200		1	Serviços fisioterapêuticos 	16.33	16.93	\\r
123019300		1	Serviços laboratoriais 	15.72	16.32	\\r
123019400		1	Serviços de diagnóstico por imagem	16.33	16.93	\\r
123019500		1	Serviços de bancos de órgãos, esperma e sangue 	16.32	16.92	\\r
123019600		1	Serviços de bancos de leite, tecidos, olhos, ossos, óvulos e outros materiais biológicos	16.32	16.92	\\r
123019900		1	Outros serviços de saúde humana, exceto os serviços hospitalares 	16.35	16.95	\\r
123021000		1	Serviços de consultoria em saúde	13.45	14.05	\\r
123029000		1	Outros serviços de gestão hospitalar	13.45	14.05	\\r
123030000		1	Serviços domiciliares de apoio a idosos, crianças, adolescentes, pessoas com transtornos mentais e com deficiências 	15.72	16.32	\\r
123040000		1	Serviços de apoio a idosos, crianças, adolescentes, pessoas com transtornos mentais e com deficiências, exceto domiciliar	15.72	16.32	\\r
123051100		1	Serviços de atenção integral à família	15.72	16.32	\\r
123051200		1	Serviços de convivência para crianças, adolescentes, jovens e idosos	16.04	16.64	\\r
123051300		1	Serviços de apoio a autonomia e convivência familiar e comunitária	15.72	16.32	\\r
123051900		1	Outros serviços de proteção social básica	17.08	17.68	\\r
123052100		1	Serviços de acolhida para adultos e idosos em albergues, abrigos ou moradias provisórias	15.72	16.32	\\r
123052200		1	Serviços de acolhida para crianças e adolescentes em repúblicas, casas de acolhida, abrigos ou com “família acolhedora”	15.72	16.32	\\r
123052300		1	Serviços especiais de referência para pessoas com necessidades especiais, em situação de abandono, vítimas de negligência, abusos e formas de violência	15.72	16.32	\\r
123052400		1	Serviços de apoio a situações de risco circunstanciais em decorrência de calamidades públicas e emergenciais	15.72	16.32	\\r
123052500		1	Serviços especiais de referência para adolescentes em cumprimento de medida socioeducativa de liberdade assistida e de prestação de serviços a comunidade	15.72	16.32	\\r
1230529		1	Outros serviços de assistência social	15.72	16.32	\\r
123052910		1	Serviços de reabilitação vocacional	15.72	16.32	\\r
123052990		1	Outros serviços de assistência social	15.72	16.32	\\r
123060000		1	Serviços de planos privados de assistência à saúde	16.30	16.90	\\r
124010000		1	Serviços de tratamento de água	13.45	14.05	\\r
124021000		1	Serviços de esgoto e tratamento de esgotos 	13.45	14.05	\\r
124022000		1	Serviços de esvaziamento e limpeza de fossas sépticas 	13.45	14.05	\\r
124031000		1	Serviços de coleta de resíduos sólidos perigosos, exceto de serviços de saúde 	18.33	18.93	\\r
124032000		1	Serviços de coleta de resíduos de serviços de saúde	18.33	18.93	\\r
124033100		1	Serviços de coleta de resíduos sólidos de origem doméstica, comercial e de varrição	18.33	18.93	\\r
124033200		1	Serviços de coleta de resíduos sólidos de origem industrial	18.33	18.93	\\r
124033300		1	Serviços de coleta de resíduos sólidos recicláveis	18.33	18.93	\\r
124033900		1	Serviços de coleta de outros resíduos sólidos não perigosos, inertes ou não inertes 	18.33	18.93	\\r
124034000		1	Serviços de coleta de resíduos líquidos	18.33	18.93	\\r
124039000		1	Outros serviços de coleta de resíduos	18.33	18.93	\\r
124041000		1	Serviços de triagem, preparação, consolidação, estocagem e outros tratamentos e disposição de resíduos sólidos perigosos, exceto os resíduos de serviços de saúde 	18.33	18.93	\\r
124042000		1	Serviços de triagem, preparação, consolidação, estocagem e outros tratamentos e disposição de resíduos de serviços de saúde	18.33	18.93	\\r
124043100		1	Serviços de triagem, preparação, consolidação, estocagem e outros tratamentos e disposição de resíduos de origem doméstica, comercial e de varrição	18.33	18.93	\\r
124043200		1	Serviços de triagem, preparação, consolidação, estocagem e outros tratamentos e disposição de resíduos sólidos de origem industrial	18.33	18.93	\\r
124043300		1	Serviços de triagem, preparação, consolidação, estocagem e outros tratamentos e disposição de resíduos sólidos recicláveis	18.33	18.93	\\r
124043900		1	Serviços de triagem, preparação, consolidação, estocagem e outros tratamentos e disposição de resíduos sólidos não perigosos, inertes ou não inertes	18.33	18.93	\\r
124044000		1	Serviços de triagem, preparação, consolidação, estocagem e outros tratamentos e disposição de resíduos líquidos	18.33	18.93	\\r
124049000		1	Outros serviços de triagem, preparação, consolidação, estocagem e outros tratamentos e disposição de resíduos	18.33	18.93	\\r
124051000		1	Serviços de varrição de ruas e outros locais públicos	18.33	18.93	\\r
124059000		1	Outros serviços de saneamento 	18.33	18.93	\\r
124061000		1	Serviços ambientais relacionados à água	18.31	18.91	\\r
124062000		1	Serviços ambientais relacionados ao solo	18.40	19.00	\\r
124063000		1	Serviços ambientais relacionados ao ar	13.45	14.05	\\r
124069000		1	Outros serviços ambientais	13.45	14.05	\\r
124071100		1	Serviços de remediação do ar 	13.45	14.05	\\r
124071200		1	Serviços de remediação de águas de superfície 	13.45	14.05	\\r
124071300		1	Serviços de remediação do solo e águas subterrâneas	13.45	14.05	\\r
124071400		1	Serviços de remediação em edificações	13.45	14.05	\\r
124072000		1	Serviços de monitoração, controle e contenção 	13.45	14.05	\\r
124079000		1	Outros serviços de remediação 	13.45	14.05	\\r
125011100		1	Serviços de gravação de som em estúdio	18.45	19.05	\\r
125011200		1	Serviços de gravação de som ao vivo 	18.45	19.05	\\r
125012100		1	Serviços de produção de programas de televisão, videoteipes e filmes 	17.88	18.48	\\r
125012200		1	Serviços de produção de programas de rádio 	17.88	18.48	\\r
125013100		1	Serviços de edição de obras audiovisuais 	18.45	19.05	\\r
125013200		1	Serviços de duplicação e transferência de obras audiovisuais 	18.45	19.05	\\r
125013300		1	Serviços de correção de cor e restauração digital de obras audiovisuais	18.45	19.05	\\r
125013400		1	Serviços de efeitos visuais em obras audiovisuais	18.45	19.05	\\r
125013500		1	Serviços de animação	18.45	19.05	\\r
125013600		1	Serviços de legendas, títulos e dublagem em obras audiovisuais	18.45	19.05	\\r
125013700		1	Serviços de projeto e edição de som em obras audiovisuais	18.45	19.05	\\r
125013900		1	Outros serviços de pós-produção em obras audiovisuais	18.45	19.05	\\r
125014000		1	Serviços de agenciamento pela comercialização de obras audiovisuais 	18.45	19.05	\\r
125015000		1	Serviços de projeção de filmes	18.26	18.86	\\r
125021000		1	Serviços de organização e promoção de atuações artísticas ao vivo	17.54	18.14	\\r
125022000		1	Serviços de produção e apresentação de atuações artísticas ao vivo	17.58	18.18	\\r
125023000		1	Serviços de apoio para atuações artísticas ao vivo	18.08	18.68	\\r
125029000		1	Outros serviços de entretenimento artístico ao vivo 	18.08	18.68	\\r
125031000		1	Serviços de atuação artística	18.12	18.72	\\r
125032000		1	Serviços de autores, compositores, escultores, pintores e outros artistas, inclusive as obras inéditas, exceto os de atuação artística 	17.85	18.45	\\r
125041100		1	Serviços de museus	18.45	19.05	\\r
125041200		1	Serviços de preservação e operação de locais e construções históricas 	13.45	14.05	\\r
125042100		1	Serviços de jardins botânico e zoológico 	17.65	18.25	\\r
125042200		1	Serviços de reserva natural, incluindo preservação de vida selvagem 	13.45	14.05	\\r
125051100		1	Serviços de organização e promoção de eventos desportivos e recreacionais desportivos 	18.45	19.05	\\r
125051200		1	Serviços de clubes desportivos 	17.85	18.45	\\r
125059000		1	Outros serviços de desportes e de recreação desportiva	18.45	19.05	\\r
125060000		1	Serviços fornecidos por atletas e desportistas, por conta própria, e serviços de apoio relacionados com desportes e recreação desportiva 	13.45	14.05	\\r
125071000		1	Serviços de parques de diversões e atrações similares 	17.13	17.73	\\r
125079000		1	Outros serviços recreacionais e de diversão  	18.24	18.84	\\r
126011000		1	Serviços de limpeza de têxteis, exceto quando realizados a seco	18.45	19.05	\\r
126012000		1	Serviços de limpeza a seco	18.45	19.05	\\r
126013000		1	Serviços de tinturaria	18.45	19.05	\\r
126019000		1	Outros serviços de lavanderia 	18.45	19.05	\\r
126021000		1	Serviços de cabelereiros e barbeiros 	18.45	19.05	\\r
126022000		1	Serviços de manicure, pedicure e tratamento cosmético 	18.45	19.05	\\r
126023000		1	Serviços de bem estar físico 	18.16	18.76	\\r
126029000		1	Outros tratamentos de beleza	18.45	19.05	\\r
126030000		1	Serviços funerários, de cremação e de embalsamamento	18.45	19.05	\\r
126040000		1	Outros serviços pessoais 	18.45	19.05	\\r
127011000		1	Cessão de direitos de obras literárias	18.29	18.89	\\r
127012000		1	Cessão de direitos sobre programas de computador	16.37	16.97	\\r
127013100		1	Cessão de direitos de obras cinematográficas	18.29	18.89	\\r
127013200		1	Cessão de direitos de obras jornalísticas	18.29	18.89	\\r
127013300		1	Cessão de direitos de obras publicitárias 	18.29	18.89	\\r
127013900		1	Cessão de direitos de outras obras audiovisuais	18.29	18.89	\\r
127014000		1	Cessão de direitos de obras musicais e outros fonogramas	18.29	18.89	\\r
127015000		1	Cessão de direitos relacionados à radiodifusão	18.29	18.89	\\r
127019000		1	Cessão de outros direitos de autor e outros direitos conexos	18.29	18.89	\\r
127021000		1	Cessão de direitos sobre patentes	18.29	18.89	\\r
127022000		1	Cessão de direitos sobre marcas	18.29	18.89	\\r
127023000		1	Cessão de direitos sobre desenho industrial	18.29	18.89	\\r
127029000		1	Cessão de outros direitos sobre a propriedade intelectual	18.29	18.89	\\r
127030000		1	Cessão de direitos sobre cultivares	18.29	18.89	\\r
127040000		1	Cessão de direitos sobre topografias de circuitos integrados	18.29	18.89	\\r
127050000		1	Cessão de direitos relativos à informação não divulgada	18.29	18.89	\\r
127060000		1	Cessão de outros direitos de propriedade intelectual não classificados em nenhuma das posições anteriores	18.29	18.89	\\r
\.


--
-- Data for Name: prod_composicao; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY prod_composicao (prod_composicao_id, prod_produto_principal, prod_produto_id, prod_embalagem_id, prod_composicao_quantidade, prod_composicao_valor) FROM stdin;
1	3	2	1	1.0000	1.00
2	3	1	1	1.0000	1.00
\.


--
-- Name: prod_composicao_prod_composicao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('prod_composicao_prod_composicao_id_seq', 1, false);


--
-- Data for Name: prod_embalagem; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY prod_embalagem (prod_embalagem_id, prod_embalagem_nome, prod_embalagem_descricao, prod_embalagem_unidade) FROM stdin;
1	UND	UNIDADE	1
\.


--
-- Name: prod_embalagem_prod_embalagem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('prod_embalagem_prod_embalagem_id_seq', 1, false);


--
-- Data for Name: prod_grade; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY prod_grade (prod_grade_id, prod_produto_id, prod_grade_barra, prod_grade_tamanho, prod_grade_cor, prod_grade_opcao, prod_grade_estoque) FROM stdin;
1	4	12345	PADRAO	PADRAO	PADRAO	50.0000
2	4	67890	PADRAO	PADRAO	PADRAO	49.0000
\.


--
-- Name: prod_grade_prod_grade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('prod_grade_prod_grade_id_seq', 1, false);


--
-- Data for Name: prod_preco; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY prod_preco (prod_preco_id, prod_produto_id, prod_embalagem_id, prod_preco_valor, prod_preco_barra) FROM stdin;
1	2	1	2.00	\N
\.


--
-- Name: prod_preco_prod_preco_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('prod_preco_prod_preco_id_seq', 1, false);


--
-- Data for Name: prod_produto; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY prod_produto (prod_produto_id, prod_embalagem_id, prod_produto_ncm, prod_produto_barra, prod_produto_descricao, prod_produto_referencia, prod_produto_preco, prod_produto_estoque, prod_produto_tipo, prod_produto_origem, prod_produto_cst_cson, prod_produto_tributacao, prod_produto_icms, prod_produto_issqn, prod_produto_iat, prod_produto_ippt, prod_produto_cadastrado, prod_produto_alterado, prod_produto_ativo) FROM stdin;
1	1	01022190	\N	TESTE	TE	1.00	98.0000	00	0	00	I	0.00	0.00	A	P	2013-08-01 12:27:56	\N	1
2	1	07104000	\N	TESTE COM PREÇOS	TP	1.00	98.0000	00	0	00	N	0.00	0.00	A	P	2013-08-01 12:29:04	\N	1
3	1	15159021	\N	TESTE COM ITENS	TI	2.00	100.0000	00	0	00	F	0.00	0.00	A	P	2013-08-01 12:30:38	\N	1
4	1	15153000	1234567890	TESTE COM GRADES	TG	3.00	99.0000	00	0	00	T	17.00	0.00	A	P	2013-08-01 12:32:25	\N	1
\.


--
-- Name: prod_produto_prod_produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('prod_produto_prod_produto_id_seq', 1, false);


--
-- Data for Name: sis_cliente; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY sis_cliente (sis_cliente_id, sis_municipio_id, sis_cliente_doc, sis_cliente_doc1, sis_cliente_nome, sis_cliente_endereco, sis_cliente_numero, sis_cliente_complemento, sis_cliente_bairro, sis_cliente_cep, sis_cliente_telefone, sis_cliente_email, sis_cliente_data) FROM stdin;
1	1695	27090521303	ISENTO	TESTE	NAO TEM	0	NENHUM	ALGUM	00000-000	(00) 0000-0000	N@O.TENHO.COM	2013-08-01 12:34:39
\.


--
-- Name: sis_cliente_sis_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('sis_cliente_sis_cliente_id_seq', 1, false);


--
-- Data for Name: sis_empresa; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY sis_empresa (sis_empresa_id, sis_municipio_id, sis_empresa_razao, sis_empresa_fantasia, sis_empresa_cnpj, sis_empresa_ie, sis_empresa_im, sis_empresa_logradouro, sis_empresa_numero, sis_empresa_complemento, sis_empresa_bairro, sis_empresa_cep, sis_empresa_responsavel, sis_empresa_fone, sis_empresa_email, sis_empresa_contador) FROM stdin;
1	1695	EMPRESA DEMO	DEMO	00000000000000	0000000000	ISENTO	RUA DEMO	0	 	CENTRO	00000000	DEMO	0000000000	N@O.TENHO.COM.BR\t	0
2	1695	CONTADOR	CONTADOR	00000000000	0000000	ISENTO	RUA DEMO 2	0	 	CENTRO	00000000	CONTA	0000000000	N@O.TENHO.COM.BR\t	1
\.


--
-- Name: sis_empresa_sis_empresa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('sis_empresa_sis_empresa_id_seq', 1, false);


--
-- Data for Name: sis_estado; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY sis_estado (sis_estado_id, sis_estado_ibge, sis_estado_descricao, sis_estado_sigla) FROM stdin;
1	12	ACRE	AC
2	27	ALAGOAS	AL
3	16	AMAPÃ	AP
4	13	AMAZONAS	AM
5	29	BAHIA	BA
6	23	CEARÃ	CE
7	53	\\"DISTRITO FEDERAL\\"	DF
8	32	\\"ESPÃRITO SANTO\\"	ES
9	52	GOIÃS	GO
10	21	MARANHÃƒO	MA
11	51	\\"MATO GROSSO\\"	MT
12	50	\\"MATO GROSSO DO SUL\\"	MS
13	31	\\"MINAS GERAIS\\"	MG
14	15	PARÃ	PA
15	25	PARAÃBA	PB
16	41	PARANÃ	PR
17	26	PERNAMBUCO	PE
18	22	PIAUÃ	PI
19	33	\\"RIO DE JANEIRO\\"	RJ
20	24	\\"RIO GRANDE DO NORTE\\"	RN
21	43	\\"RIO GRANDE DO SUL\\"	RS
22	11	RONDÃ”NIA	RO
23	14	RORAIMA	RR
24	42	\\"SANTA CATARINA\\"	SC
25	35	\\"SÃƒO PAULO\\"	SP
26	28	SERGIPE	SE
27	17	TOCANTINS	TO
\.


--
-- Name: sis_estado_sis_estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('sis_estado_sis_estado_id_seq', 1, false);


--
-- Data for Name: sis_municipio; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY sis_municipio (sis_municipio_id, sis_estado_id, sis_municipio_ibge, sis_municipio_descricao) FROM stdin;
1	22	1100015	ALTA FLORESTA D'OESTE
2	22	1100023	ARIQUEMES
3	22	1100031	CABIXI
4	22	1100049	CACOAL
5	22	1100056	CEREJEIRAS
6	22	1100064	COLORADO DO OESTE
7	22	1100072	CORUMBIARA
8	22	1100080	COSTA MARQUES
9	22	1100098	ESPIGÃO D'OESTE
10	22	1100106	GUAJARÁ-MIRIM
11	22	1100114	JARU
12	22	1100122	JI-PARANÁ
13	22	1100130	MACHADINHO D'OESTE
14	22	1100148	NOVA BRASILÂNDIA D'OESTE
15	22	1100155	OURO PRETO DO OESTE
16	22	1100189	PIMENTA BUENO
17	22	1100205	PORTO VELHO
18	22	1100254	PRESIDENTE MÉDICI
19	22	1100262	RIO CRESPO
20	22	1100288	ROLIM DE MOURA
21	22	1100296	SANTA LUZIA D'OESTE
22	22	1100304	VILHENA
23	22	1100320	SÃO MIGUEL DO GUAPORÉ
24	22	1100338	NOVA MAMORÉ
25	22	1100346	ALVORADA D'OESTE
26	22	1100379	ALTO ALEGRE DOS PARECIS
27	22	1100403	ALTO PARAÍSO
28	22	1100452	BURITIS
29	22	1100502	NOVO HORIZONTE DO OESTE
30	22	1100601	CACAULÂNDIA
31	22	1100700	CAMPO NOVO DE RONDÔNIA
32	22	1100809	CANDEIAS DO JAMARI
33	22	1100908	CASTANHEIRAS
34	22	1100924	CHUPINGUAIA
35	22	1100940	CUJUBIM
36	22	1101005	GOVERNADOR JORGE TEIXEIRA
37	22	1101104	ITAPUÃ DO OESTE
38	22	1101203	MINISTRO ANDREAZZA
39	22	1101302	MIRANTE DA SERRA
40	22	1101401	MONTE NEGRO
41	22	1101435	NOVA UNIÃO
42	22	1101450	PARECIS
43	22	1101468	PIMENTEIRAS DO OESTE
44	22	1101476	PRIMAVERA DE RONDÔNIA
45	22	1101484	SÃO FELIPE D'OESTE
46	22	1101492	SÃO FRANCISCO DO GUAPORÉ
47	22	1101500	SERINGUEIRAS
48	22	1101559	TEIXEIRÓPOLIS
49	22	1101609	THEOBROMA
50	22	1101708	URUPÁ
51	22	1101757	VALE DO ANARI
52	22	1101807	VALE DO PARAÍSO
53	1	1200013	ACRELÂNDIA
54	1	1200054	ASSIS BRASIL
55	1	1200104	BRASILÉIA
56	1	1200138	BUJARI
57	1	1200179	CAPIXABA
58	1	1200203	CRUZEIRO DO SUL
59	1	1200252	EPITACIOLÂNDIA
60	1	1200302	FEIJÓ
61	1	1200328	JORDÃO
62	1	1200336	MÂNCIO LIMA
63	1	1200344	MANOEL URBANO
64	1	1200351	MARECHAL THAUMATURGO
65	1	1200385	PLÁCIDO DE CASTRO
66	1	1200393	PORTO WALTER
67	1	1200401	RIO BRANCO
68	1	1200427	RODRIGUES ALVES
69	1	1200435	SANTA ROSA DO PURUS
70	1	1200450	SENADOR GUIOMARD
71	1	1200500	SENA MADUREIRA
72	1	1200609	TARAUACÁ
73	1	1200708	XAPURI
74	1	1200807	PORTO ACRE
75	4	1300029	ALVARÃES
76	4	1300060	AMATURÁ
77	4	1300086	ANAMÃ
78	4	1300102	ANORI
79	4	1300144	APUÍ
80	4	1300201	ATALAIA DO NORTE
81	4	1300300	AUTAZES
82	4	1300409	BARCELOS
83	4	1300508	BARREIRINHA
84	4	1300607	BENJAMIN CONSTANT
85	4	1300631	BERURI
86	4	1300680	BOA VISTA DO RAMOS
87	4	1300706	BOCA DO ACRE
88	4	1300805	BORBA
89	4	1300839	CAAPIRANGA
90	4	1300904	CANUTAMA
91	4	1301001	CARAUARI
92	4	1301100	CAREIRO
93	4	1301159	CAREIRO DA VÁRZEA
94	4	1301209	COARI
95	4	1301308	CODAJÁS
96	4	1301407	EIRUNEPÉ
97	4	1301506	ENVIRA
98	4	1301605	FONTE BOA
99	4	1301654	GUAJARÁ
100	4	1301704	HUMAITÁ
101	4	1301803	IPIXUNA
102	4	1301852	IRANDUBA
103	4	1301902	ITACOATIARA
104	4	1301951	ITAMARATI
105	4	1302009	ITAPIRANGA
106	4	1302108	JAPURÁ
107	4	1302207	JURUÁ
108	4	1302306	JUTAÍ
109	4	1302405	LÁBREA
110	4	1302504	MANACAPURU
111	4	1302553	MANAQUIRI
112	4	1302603	MANAUS
113	4	1302702	MANICORÉ
114	4	1302801	MARAÃ
115	4	1302900	MAUÉS
116	4	1303007	NHAMUNDÁ
117	4	1303106	NOVA OLINDA DO NORTE
118	4	1303205	NOVO AIRÃO
119	4	1303304	NOVO ARIPUANÃ
120	4	1303403	PARINTINS
121	4	1303502	PAUINI
122	4	1303536	PRESIDENTE FIGUEIREDO
123	4	1303569	RIO PRETO DA EVA
124	4	1303601	SANTA ISABEL DO RIO NEGRO
125	4	1303700	SANTO ANTÔNIO DO IÇÁ
126	4	1303809	SÃO GABRIEL DA CACHOEIRA
127	4	1303908	SÃO PAULO DE OLIVENÇA
128	4	1303957	SÃO SEBASTIÃO DO UATUMÃ
129	4	1304005	SILVES
130	4	1304062	TABATINGA
131	4	1304104	TAPAUÁ
132	4	1304203	TEFÉ
133	4	1304237	TONANTINS
134	4	1304260	UARINI
135	4	1304302	URUCARÁ
136	4	1304401	URUCURITUBA
137	23	1400027	AMAJARI
138	23	1400050	ALTO ALEGRE
139	23	1400100	BOA VISTA
140	23	1400159	BONFIM
141	23	1400175	CANTÁ
142	23	1400209	CARACARAÍ
143	23	1400233	CAROEBE
144	23	1400282	IRACEMA
145	23	1400308	MUCAJAÍ
146	23	1400407	NORMANDIA
147	23	1400456	PACARAIMA
148	23	1400472	RORAINÓPOLIS
149	23	1400506	SÃO JOÃO DA BALIZA
150	23	1400605	SÃO LUIZ
151	23	1400704	UIRAMUTÃ
152	14	1500107	ABAETETUBA
153	14	1500131	ABEL FIGUEIREDO
154	14	1500206	ACARÁ
155	14	1500305	AFUÁ
156	14	1500347	ÁGUA AZUL DO NORTE
157	14	1500404	ALENQUER
158	14	1500503	ALMEIRIM
159	14	1500602	ALTAMIRA
160	14	1500701	ANAJÁS
161	14	1500800	ANANINDEUA
162	14	1500859	ANAPU
163	14	1500909	AUGUSTO CORRÊA
164	14	1500958	AURORA DO PARÁ
165	14	1501006	AVEIRO
166	14	1501105	BAGRE
167	14	1501204	BAIÃO
168	14	1501253	BANNACH
169	14	1501303	BARCARENA
170	14	1501402	BELÉM
171	14	1501451	BELTERRA
172	14	1501501	BENEVIDES
173	14	1501576	BOM JESUS DO TOCANTINS
174	14	1501600	BONITO
175	14	1501709	BRAGANÇA
176	14	1501725	BRASIL NOVO
177	14	1501758	BREJO GRANDE DO ARAGUAIA
178	14	1501782	BREU BRANCO
179	14	1501808	BREVES
180	14	1501907	BUJARU
181	14	1501956	CACHOEIRA DO PIRIÁ
182	14	1502004	CACHOEIRA DO ARARI
183	14	1502103	CAMETÁ
184	14	1502152	CANAÃ DOS CARAJÁS
185	14	1502202	CAPANEMA
186	14	1502301	CAPITÃO POÇO
187	14	1502400	CASTANHAL
188	14	1502509	CHAVES
189	14	1502608	COLARES
190	14	1502707	CONCEIÇÃO DO ARAGUAIA
191	14	1502756	CONCÓRDIA DO PARÁ
192	14	1502764	CUMARU DO NORTE
193	14	1502772	CURIONÓPOLIS
194	14	1502806	CURRALINHO
195	14	1502855	CURUÁ
196	14	1502905	CURUÇÁ
197	14	1502939	DOM ELISEU
198	14	1502954	ELDORADO DOS CARAJÁS
199	14	1503002	FARO
200	14	1503044	FLORESTA DO ARAGUAIA
201	14	1503077	GARRAFÃO DO NORTE
202	14	1503093	GOIANÉSIA DO PARÁ
203	14	1503101	GURUPÁ
204	14	1503200	IGARAPÉ-AÇU
205	14	1503309	IGARAPÉ-MIRI
206	14	1503408	INHANGAPI
207	14	1503457	IPIXUNA DO PARÁ
208	14	1503507	IRITUIA
209	14	1503606	ITAITUBA
210	14	1503705	ITUPIRANGA
211	14	1503754	JACAREACANGA
212	14	1503804	JACUNDÁ
213	14	1503903	JURUTI
214	14	1504000	LIMOEIRO DO AJURU
215	14	1504059	MÃE DO RIO
216	14	1504109	MAGALHÃES BARATA
217	14	1504208	MARABÁ
218	14	1504307	MARACANÃ
219	14	1504406	MARAPANIM
220	14	1504422	MARITUBA
221	14	1504455	MEDICILÂNDIA
222	14	1504505	MELGAÇO
223	14	1504604	MOCAJUBA
224	14	1504703	MOJU
225	14	1504802	MONTE ALEGRE
226	14	1504901	MUANÁ
227	14	1504950	NOVA ESPERANÇA DO PIRIÁ
228	14	1504976	NOVA IPIXUNA
229	14	1505007	NOVA TIMBOTEUA
230	14	1505031	NOVO PROGRESSO
231	14	1505064	NOVO REPARTIMENTO
232	14	1505106	ÓBIDOS
233	14	1505205	OEIRAS DO PARÁ
234	14	1505304	ORIXIMINÁ
235	14	1505403	OURÉM
236	14	1505437	OURILÂNDIA DO NORTE
237	14	1505486	PACAJÁ
238	14	1505494	PALESTINA DO PARÁ
239	14	1505502	PARAGOMINAS
240	14	1505536	PARAUAPEBAS
241	14	1505551	PAU D'ARCO
242	14	1505601	PEIXE-BOI
243	14	1505635	PIÇARRA
244	14	1505650	PLACAS
245	14	1505700	PONTA DE PEDRAS
246	14	1505809	PORTEL
247	14	1505908	PORTO DE MOZ
248	14	1506005	PRAINHA
249	14	1506104	PRIMAVERA
250	14	1506112	QUATIPURU
251	14	1506138	REDENÇÃO
252	14	1506161	RIO MARIA
253	14	1506187	RONDON DO PARÁ
254	14	1506195	RURÓPOLIS
255	14	1506203	SALINÓPOLIS
256	14	1506302	SALVATERRA
257	14	1506351	SANTA BÁRBARA DO PARÁ
258	14	1506401	SANTA CRUZ DO ARARI
259	14	1506500	SANTA ISABEL DO PARÁ
260	14	1506559	SANTA LUZIA DO PARÁ
261	14	1506583	SANTA MARIA DAS BARREIRAS
262	14	1506609	SANTA MARIA DO PARÁ
263	14	1506708	SANTANA DO ARAGUAIA
264	14	1506807	SANTARÉM
265	14	1506906	SANTARÉM NOVO
266	14	1507003	SANTO ANTÔNIO DO TAUÁ
267	14	1507102	SÃO CAETANO DE ODIVELAS
268	14	1507151	SÃO DOMINGOS DO ARAGUAIA
269	14	1507201	SÃO DOMINGOS DO CAPIM
270	14	1507300	SÃO FÉLIX DO XINGU
271	14	1507409	SÃO FRANCISCO DO PARÁ
272	14	1507458	SÃO GERALDO DO ARAGUAIA
273	14	1507466	SÃO JOÃO DA PONTA
274	14	1507474	SÃO JOÃO DE PIRABAS
275	14	1507508	SÃO JOÃO DO ARAGUAIA
276	14	1507607	SÃO MIGUEL DO GUAMÁ
277	14	1507706	SÃO SEBASTIÃO DA BOA VISTA
278	14	1507755	SAPUCAIA
279	14	1507805	SENADOR JOSÉ PORFÍRIO
280	14	1507904	SOURE
281	14	1507953	TAILÂNDIA
282	14	1507961	TERRA ALTA
283	14	1507979	TERRA SANTA
284	14	1508001	TOMÉ-AÇU
285	14	1508035	TRACUATEUA
286	14	1508050	TRAIRÃO
287	14	1508084	TUCUMÃ
288	14	1508100	TUCURUÍ
289	14	1508126	ULIANÓPOLIS
290	14	1508159	URUARÁ
291	14	1508209	VIGIA
292	14	1508308	VISEU
293	14	1508357	VITÓRIA DO XINGU
294	14	1508407	XINGUARA
295	3	1600055	SERRA DO NAVIO
296	3	1600105	AMAPÁ
297	3	1600154	PEDRA BRANCA DO AMAPARI
298	3	1600204	CALÇOENE
299	3	1600212	CUTIAS
300	3	1600238	FERREIRA GOMES
301	3	1600253	ITAUBAL
302	3	1600279	LARANJAL DO JARI
303	3	1600303	MACAPÁ
304	3	1600402	MAZAGÃO
305	3	1600501	OIAPOQUE
306	3	1600535	PORTO GRANDE
307	3	1600550	PRACUÚBA
308	3	1600600	SANTANA
309	3	1600709	TARTARUGALZINHO
310	3	1600808	VITÓRIA DO JARI
311	27	1700251	ABREULÂNDIA
312	27	1700301	AGUIARNÓPOLIS
313	27	1700350	ALIANÇA DO TOCANTINS
314	27	1700400	ALMAS
315	27	1700707	ALVORADA
316	27	1701002	ANANÁS
317	27	1701051	ANGICO
318	27	1701101	APARECIDA DO RIO NEGRO
319	27	1701309	ARAGOMINAS
320	27	1701903	ARAGUACEMA
321	27	1702000	ARAGUAÇU
322	27	1702109	ARAGUAÍNA
323	27	1702158	ARAGUANÃ
324	27	1702208	ARAGUATINS
325	27	1702307	ARAPOEMA
326	27	1702406	ARRAIAS
327	27	1702554	AUGUSTINÓPOLIS
328	27	1702703	AURORA DO TOCANTINS
329	27	1702901	AXIXÁ DO TOCANTINS
330	27	1703008	BABAÇULÂNDIA
331	27	1703057	BANDEIRANTES DO TOCANTINS
332	27	1703073	BARRA DO OURO
333	27	1703107	BARROLÂNDIA
334	27	1703206	BERNARDO SAYÃO
335	27	1703305	BOM JESUS DO TOCANTINS
336	27	1703602	BRASILÂNDIA DO TOCANTINS
337	27	1703701	BREJINHO DE NAZARÉ
338	27	1703800	BURITI DO TOCANTINS
339	27	1703826	CACHOEIRINHA
340	27	1703842	CAMPOS LINDOS
341	27	1703867	CARIRI DO TOCANTINS
342	27	1703883	CARMOLÂNDIA
343	27	1703891	CARRASCO BONITO
344	27	1703909	CASEARA
345	27	1704105	CENTENÁRIO
346	27	1704600	CHAPADA DE AREIA
347	27	1705102	CHAPADA DA NATIVIDADE
348	27	1705508	COLINAS DO TOCANTINS
349	27	1705557	COMBINADO
350	27	1705607	CONCEIÇÃO DO TOCANTINS
351	27	1706001	COUTO DE MAGALHÃES
352	27	1706100	CRISTALÂNDIA
353	27	1706258	CRIXÁS DO TOCANTINS
354	27	1706506	DARCINÓPOLIS
355	27	1707009	DIANÓPOLIS
356	27	1707108	DIVINÓPOLIS DO TOCANTINS
357	27	1707207	DOIS IRMÃOS DO TOCANTINS
358	27	1707306	DUERÉ
359	27	1707405	ESPERANTINA
360	27	1707553	FÁTIMA
361	27	1707652	FIGUEIRÓPOLIS
362	27	1707702	FILADÉLFIA
363	27	1708205	FORMOSO DO ARAGUAIA
364	27	1708254	FORTALEZA DO TABOCÃO
365	27	1708304	GOIANORTE
366	27	1709005	GOIATINS
367	27	1709302	GUARAÍ
368	27	1709500	GURUPI
369	27	1709807	IPUEIRAS
370	27	1710508	ITACAJÁ
371	27	1710706	ITAGUATINS
372	27	1710904	ITAPIRATINS
373	27	1711100	ITAPORÃ DO TOCANTINS
374	27	1711506	JAÚ DO TOCANTINS
375	27	1711803	JUARINA
376	27	1711902	LAGOA DA CONFUSÃO
377	27	1711951	LAGOA DO TOCANTINS
378	27	1712009	LAJEADO
379	27	1712157	LAVANDEIRA
380	27	1712405	LIZARDA
381	27	1712454	LUZINÓPOLIS
382	27	1712504	MARIANÓPOLIS DO TOCANTINS
383	27	1712702	MATEIROS
384	27	1712801	MAURILÂNDIA DO TOCANTINS
385	27	1713205	MIRACEMA DO TOCANTINS
386	27	1713304	MIRANORTE
387	27	1713601	MONTE DO CARMO
388	27	1713700	MONTE SANTO DO TOCANTINS
389	27	1713809	PALMEIRAS DO TOCANTINS
390	27	1713957	MURICILÂNDIA
391	27	1714203	NATIVIDADE
392	27	1714302	NAZARÉ
393	27	1714880	NOVA OLINDA
394	27	1715002	NOVA ROSALÂNDIA
395	27	1715101	NOVO ACORDO
396	27	1715150	NOVO ALEGRE
397	27	1715259	NOVO JARDIM
398	27	1715507	OLIVEIRA DE FÁTIMA
399	27	1715705	PALMEIRANTE
400	27	1715754	PALMEIRÓPOLIS
401	27	1716109	PARAÍSO DO TOCANTINS
402	27	1716208	PARANÃ
403	27	1716307	PAU D'ARCO
404	27	1716505	PEDRO AFONSO
405	27	1716604	PEIXE
406	27	1716653	PEQUIZEIRO
407	27	1716703	COLMÉIA
408	27	1717008	PINDORAMA DO TOCANTINS
409	27	1717206	PIRAQUÊ
410	27	1717503	PIUM
411	27	1717800	PONTE ALTA DO BOM JESUS
412	27	1717909	PONTE ALTA DO TOCANTINS
413	27	1718006	PORTO ALEGRE DO TOCANTINS
414	27	1718204	PORTO NACIONAL
415	27	1718303	PRAIA NORTE
416	27	1718402	PRESIDENTE KENNEDY
417	27	1718451	PUGMIL
418	27	1718501	RECURSOLÂNDIA
419	27	1718550	RIACHINHO
420	27	1718659	RIO DA CONCEIÇÃO
421	27	1718709	RIO DOS BOIS
422	27	1718758	RIO SONO
423	27	1718808	SAMPAIO
424	27	1718840	SANDOLÂNDIA
425	27	1718865	SANTA FÉ DO ARAGUAIA
426	27	1718881	SANTA MARIA DO TOCANTINS
427	27	1718899	SANTA RITA DO TOCANTINS
428	27	1718907	SANTA ROSA DO TOCANTINS
429	27	1719004	SANTA TEREZA DO TOCANTINS
430	27	1720002	SANTA TEREZINHA DO TOCANTINS
431	27	1720101	SÃO BENTO DO TOCANTINS
432	27	1720150	SÃO FÉLIX DO TOCANTINS
433	27	1720200	SÃO MIGUEL DO TOCANTINS
434	27	1720259	SÃO SALVADOR DO TOCANTINS
435	27	1720309	SÃO SEBASTIÃO DO TOCANTINS
436	27	1720499	SÃO VALÉRIO DA NATIVIDADE
437	27	1720655	SILVANÓPOLIS
438	27	1720804	SÍTIO NOVO DO TOCANTINS
439	27	1720853	SUCUPIRA
440	27	1720903	TAGUATINGA
441	27	1720937	TAIPAS DO TOCANTINS
442	27	1720978	TALISMÃ
443	27	1721000	PALMAS
444	27	1721109	TOCANTÍNIA
445	27	1721208	TOCANTINÓPOLIS
446	27	1721257	TUPIRAMA
447	27	1721307	TUPIRATINS
448	27	1722081	WANDERLÂNDIA
449	27	1722107	XAMBIOÁ
450	10	2100055	AÇAILÂNDIA
451	10	2100105	AFONSO CUNHA
452	10	2100154	ÁGUA DOCE DO MARANHÃO
453	10	2100204	ALCÂNTARA
454	10	2100303	ALDEIAS ALTAS
455	10	2100402	ALTAMIRA DO MARANHÃO
456	10	2100436	ALTO ALEGRE DO MARANHÃO
457	10	2100477	ALTO ALEGRE DO PINDARÉ
458	10	2100501	ALTO PARNAÍBA
459	10	2100550	AMAPÁ DO MARANHÃO
460	10	2100600	AMARANTE DO MARANHÃO
461	10	2100709	ANAJATUBA
462	10	2100808	ANAPURUS
463	10	2100832	APICUM-AÇU
464	10	2100873	ARAGUANÃ
465	10	2100907	ARAIOSES
466	10	2100956	ARAME
467	10	2101004	ARARI
468	10	2101103	AXIXÁ
469	10	2101202	BACABAL
470	10	2101251	BACABEIRA
471	10	2101301	BACURI
472	10	2101350	BACURITUBA
473	10	2101400	BALSAS
474	10	2101509	BARÃO DE GRAJAÚ
475	10	2101608	BARRA DO CORDA
476	10	2101707	BARREIRINHAS
477	10	2101731	BELÁGUA
478	10	2101772	BELA VISTA DO MARANHÃO
479	10	2101806	BENEDITO LEITE
480	10	2101905	BEQUIMÃO
481	10	2101939	BERNARDO DO MEARIM
482	10	2101970	BOA VISTA DO GURUPI
483	10	2102002	BOM JARDIM
484	10	2102036	BOM JESUS DAS SELVAS
485	10	2102077	BOM LUGAR
486	10	2102101	BREJO
487	10	2102150	BREJO DE AREIA
488	10	2102200	BURITI
489	10	2102309	BURITI BRAVO
490	10	2102325	BURITICUPU
491	10	2102358	BURITIRANA
492	10	2102374	CACHOEIRA GRANDE
493	10	2102408	CAJAPIÓ
494	10	2102507	CAJARI
495	10	2102556	CAMPESTRE DO MARANHÃO
496	10	2102606	CÂNDIDO MENDES
497	10	2102705	CANTANHEDE
498	10	2102754	CAPINZAL DO NORTE
499	10	2102804	CAROLINA
500	10	2102903	CARUTAPERA
501	10	2103000	CAXIAS
502	10	2103109	CEDRAL
503	10	2103125	CENTRAL DO MARANHÃO
504	10	2103158	CENTRO DO GUILHERME
505	10	2103174	CENTRO NOVO DO MARANHÃO
506	10	2103208	CHAPADINHA
507	10	2103257	CIDELÂNDIA
508	10	2103307	CODÓ
509	10	2103406	COELHO NETO
510	10	2103505	COLINAS
511	10	2103554	CONCEIÇÃO DO LAGO-AÇU
512	10	2103604	COROATÁ
513	10	2103703	CURURUPU
514	10	2103752	DAVINÓPOLIS
515	10	2103802	DOM PEDRO
516	10	2103901	DUQUE BACELAR
517	10	2104008	ESPERANTINÓPOLIS
518	10	2104057	ESTREITO
519	10	2104073	FEIRA NOVA DO MARANHÃO
520	10	2104081	FERNANDO FALCÃO
521	10	2104099	FORMOSA DA SERRA NEGRA
522	10	2104107	FORTALEZA DOS NOGUEIRAS
523	10	2104206	FORTUNA
524	10	2104305	GODOFREDO VIANA
525	10	2104404	GONÇALVES DIAS
526	10	2104503	GOVERNADOR ARCHER
527	10	2104552	GOVERNADOR EDISON LOBÃO
528	10	2104602	GOVERNADOR EUGÊNIO BARROS
529	10	2104628	GOVERNADOR LUIZ ROCHA
530	10	2104651	GOVERNADOR NEWTON BELLO
531	10	2104677	GOVERNADOR NUNES FREIRE
532	10	2104701	GRAÇA ARANHA
533	10	2104800	GRAJAÚ
534	10	2104909	GUIMARÃES
535	10	2105005	HUMBERTO DE CAMPOS
536	10	2105104	ICATU
537	10	2105153	IGARAPÉ DO MEIO
538	10	2105203	IGARAPÉ GRANDE
539	10	2105302	IMPERATRIZ
540	10	2105351	ITAIPAVA DO GRAJAÚ
541	10	2105401	ITAPECURU MIRIM
542	10	2105427	ITINGA DO MARANHÃO
543	10	2105450	JATOBÁ
544	10	2105476	JENIPAPO DOS VIEIRAS
545	10	2105500	JOÃO LISBOA
546	10	2105609	JOSELÂNDIA
547	10	2105658	JUNCO DO MARANHÃO
548	10	2105708	LAGO DA PEDRA
549	10	2105807	LAGO DO JUNCO
550	10	2105906	LAGO VERDE
551	10	2105922	LAGOA DO MATO
552	10	2105948	LAGO DOS RODRIGUES
553	10	2105963	LAGOA GRANDE DO MARANHÃO
554	10	2105989	LAJEADO NOVO
555	10	2106003	LIMA CAMPOS
556	10	2106102	LORETO
557	10	2106201	LUÍS DOMINGUES
558	10	2106300	MAGALHÃES DE ALMEIDA
559	10	2106326	MARACAÇUMÉ
560	10	2106359	MARAJÁ DO SENA
561	10	2106375	MARANHÃOZINHO
562	10	2106409	MATA ROMA
563	10	2106508	MATINHA
564	10	2106607	MATÕES
565	10	2106631	MATÕES DO NORTE
566	10	2106672	MILAGRES DO MARANHÃO
567	10	2106706	MIRADOR
568	10	2106755	MIRANDA DO NORTE
569	10	2106805	MIRINZAL
570	10	2106904	MONÇÃO
571	10	2107001	MONTES ALTOS
572	10	2107100	MORROS
573	10	2107209	NINA RODRIGUES
574	10	2107258	NOVA COLINAS
575	10	2107308	NOVA IORQUE
576	10	2107357	NOVA OLINDA DO MARANHÃO
577	10	2107407	OLHO D'ÁGUA DAS CUNHÃS
578	10	2107456	OLINDA NOVA DO MARANHÃO
579	10	2107506	PAÇO DO LUMIAR
580	10	2107605	PALMEIRÂNDIA
581	10	2107704	PARAIBANO
582	10	2107803	PARNARAMA
583	10	2107902	PASSAGEM FRANCA
584	10	2108009	PASTOS BONS
585	10	2108058	PAULINO NEVES
586	10	2108108	PAULO RAMOS
587	10	2108207	PEDREIRAS
588	10	2108256	PEDRO DO ROSÁRIO
589	10	2108306	PENALVA
590	10	2108405	PERI MIRIM
591	10	2108454	PERITORÓ
592	10	2108504	PINDARÉ-MIRIM
593	10	2108603	PINHEIRO
594	10	2108702	PIO XII
595	10	2108801	PIRAPEMAS
596	10	2108900	POÇÃO DE PEDRAS
597	10	2109007	PORTO FRANCO
598	10	2109056	PORTO RICO DO MARANHÃO
599	10	2109106	PRESIDENTE DUTRA
600	10	2109205	PRESIDENTE JUSCELINO
601	10	2109239	PRESIDENTE MÉDICI
602	10	2109270	PRESIDENTE SARNEY
603	10	2109304	PRESIDENTE VARGAS
604	10	2109403	PRIMEIRA CRUZ
605	10	2109452	RAPOSA
606	10	2109502	RIACHÃO
607	10	2109551	RIBAMAR FIQUENE
608	10	2109601	ROSÁRIO
609	10	2109700	SAMBAÍBA
610	10	2109759	SANTA FILOMENA DO MARANHÃO
611	10	2109809	SANTA HELENA
612	10	2109908	SANTA INÊS
613	10	2110005	SANTA LUZIA
614	10	2110039	SANTA LUZIA DO PARUÁ
615	10	2110104	SANTA QUITÉRIA DO MARANHÃO
616	10	2110203	SANTA RITA
617	10	2110237	SANTANA DO MARANHÃO
618	10	2110278	SANTO AMARO DO MARANHÃO
619	10	2110302	SANTO ANTÔNIO DOS LOPES
620	10	2110401	SÃO BENEDITO DO RIO PRETO
621	10	2110500	SÃO BENTO
622	10	2110609	SÃO BERNARDO
623	10	2110658	SÃO DOMINGOS DO AZEITÃO
624	10	2110708	SÃO DOMINGOS DO MARANHÃO
625	10	2110807	SÃO FÉLIX DE BALSAS
626	10	2110856	SÃO FRANCISCO DO BREJÃO
627	10	2110906	SÃO FRANCISCO DO MARANHÃO
628	10	2111003	SÃO JOÃO BATISTA
629	10	2111029	SÃO JOÃO DO CARÚ
630	10	2111052	SÃO JOÃO DO PARAÍSO
631	10	2111078	SÃO JOÃO DO SOTER
632	10	2111102	SÃO JOÃO DOS PATOS
633	10	2111201	SÃO JOSÉ DE RIBAMAR
634	10	2111250	SÃO JOSÉ DOS BASÍLIOS
635	10	2111300	SÃO LUÍS
636	10	2111409	SÃO LUÍS GONZAGA DO MARANHÃO
637	10	2111508	SÃO MATEUS DO MARANHÃO
638	10	2111532	SÃO PEDRO DA ÁGUA BRANCA
639	10	2111573	SÃO PEDRO DOS CRENTES
640	10	2111607	SÃO RAIMUNDO DAS MANGABEIRAS
641	10	2111631	SÃO RAIMUNDO DO DOCA BEZERRA
642	10	2111672	SÃO ROBERTO
643	10	2111706	SÃO VICENTE FERRER
644	10	2111722	SATUBINHA
645	10	2111748	SENADOR ALEXANDRE COSTA
646	10	2111763	SENADOR LA ROCQUE
647	10	2111789	SERRANO DO MARANHÃO
648	10	2111805	SÍTIO NOVO
649	10	2111904	SUCUPIRA DO NORTE
650	10	2111953	SUCUPIRA DO RIACHÃO
651	10	2112001	TASSO FRAGOSO
652	10	2112100	TIMBIRAS
653	10	2112209	TIMON
654	10	2112233	TRIZIDELA DO VALE
655	10	2112274	TUFILÂNDIA
656	10	2112308	TUNTUM
657	10	2112407	TURIAÇU
658	10	2112456	TURILÂNDIA
659	10	2112506	TUTÓIA
660	10	2112605	URBANO SANTOS
661	10	2112704	VARGEM GRANDE
662	10	2112803	VIANA
663	10	2112852	VILA NOVA DOS MARTÍRIOS
664	10	2112902	VITÓRIA DO MEARIM
665	10	2113009	VITORINO FREIRE
666	10	2114007	ZÉ DOCA
667	18	2200053	ACAUÃ
668	18	2200103	AGRICOLÂNDIA
669	18	2200202	ÁGUA BRANCA
670	18	2200251	ALAGOINHA DO PIAUÍ
671	18	2200277	ALEGRETE DO PIAUÍ
672	18	2200301	ALTO LONGÁ
673	18	2200400	ALTOS
674	18	2200459	ALVORADA DO GURGUÉIA
675	18	2200509	AMARANTE
676	18	2200608	ANGICAL DO PIAUÍ
677	18	2200707	ANÍSIO DE ABREU
678	18	2200806	ANTÔNIO ALMEIDA
679	18	2200905	AROAZES
680	18	2200954	AROEIRAS DO ITAIM
681	18	2201002	ARRAIAL
682	18	2201051	ASSUNÇÃO DO PIAUÍ
683	18	2201101	AVELINO LOPES
684	18	2201150	BAIXA GRANDE DO RIBEIRO
685	18	2201176	BARRA D'ALCÂNTARA
686	18	2201200	BARRAS
687	18	2201309	BARREIRAS DO PIAUÍ
688	18	2201408	BARRO DURO
689	18	2201507	BATALHA
690	18	2201556	BELA VISTA DO PIAUÍ
691	18	2201572	BELÉM DO PIAUÍ
692	18	2201606	BENEDITINOS
693	18	2201705	BERTOLÍNIA
694	18	2201739	BETÂNIA DO PIAUÍ
695	18	2201770	BOA HORA
696	18	2201804	BOCAINA
697	18	2201903	BOM JESUS
698	18	2201919	BOM PRINCÍPIO DO PIAUÍ
699	18	2201929	BONFIM DO PIAUÍ
700	18	2201945	BOQUEIRÃO DO PIAUÍ
701	18	2201960	BRASILEIRA
702	18	2201988	BREJO DO PIAUÍ
703	18	2202000	BURITI DOS LOPES
704	18	2202026	BURITI DOS MONTES
705	18	2202059	CABECEIRAS DO PIAUÍ
706	18	2202075	CAJAZEIRAS DO PIAUÍ
707	18	2202083	CAJUEIRO DA PRAIA
708	18	2202091	CALDEIRÃO GRANDE DO PIAUÍ
709	18	2202109	CAMPINAS DO PIAUÍ
710	18	2202117	CAMPO ALEGRE DO FIDALGO
711	18	2202133	CAMPO GRANDE DO PIAUÍ
712	18	2202174	CAMPO LARGO DO PIAUÍ
713	18	2202208	CAMPO MAIOR
714	18	2202251	CANAVIEIRA
715	18	2202307	CANTO DO BURITI
716	18	2202406	CAPITÃO DE CAMPOS
717	18	2202455	CAPITÃO GERVÁSIO OLIVEIRA
718	18	2202505	CARACOL
719	18	2202539	CARAÚBAS DO PIAUÍ
720	18	2202554	CARIDADE DO PIAUÍ
721	18	2202604	CASTELO DO PIAUÍ
722	18	2202653	CAXINGÓ
723	18	2202703	COCAL
724	18	2202711	COCAL DE TELHA
725	18	2202729	COCAL DOS ALVES
726	18	2202737	COIVARAS
727	18	2202752	COLÔNIA DO GURGUÉIA
728	18	2202778	COLÔNIA DO PIAUÍ
729	18	2202802	CONCEIÇÃO DO CANINDÉ
730	18	2202851	CORONEL JOSÉ DIAS
731	18	2202901	CORRENTE
732	18	2203008	CRISTALÂNDIA DO PIAUÍ
733	18	2203107	CRISTINO CASTRO
734	18	2203206	CURIMATÁ
735	18	2203230	CURRAIS
736	18	2203255	CURRALINHOS
737	18	2203271	CURRAL NOVO DO PIAUÍ
738	18	2203305	DEMERVAL LOBÃO
739	18	2203354	DIRCEU ARCOVERDE
740	18	2203404	DOM EXPEDITO LOPES
741	18	2203420	DOMINGOS MOURÃO
742	18	2203453	DOM INOCÊNCIO
743	18	2203503	ELESBÃO VELOSO
744	18	2203602	ELISEU MARTINS
745	18	2203701	ESPERANTINA
746	18	2203750	FARTURA DO PIAUÍ
747	18	2203800	FLORES DO PIAUÍ
748	18	2203859	FLORESTA DO PIAUÍ
749	18	2203909	FLORIANO
750	18	2204006	FRANCINÓPOLIS
751	18	2204105	FRANCISCO AYRES
752	18	2204154	FRANCISCO MACEDO
753	18	2204204	FRANCISCO SANTOS
754	18	2204303	FRONTEIRAS
755	18	2204352	GEMINIANO
756	18	2204402	GILBUÉS
757	18	2204501	GUADALUPE
758	18	2204550	GUARIBAS
759	18	2204600	HUGO NAPOLEÃO
760	18	2204659	ILHA GRANDE
761	18	2204709	INHUMA
762	18	2204808	IPIRANGA DO PIAUÍ
763	18	2204907	ISAÍAS COELHO
764	18	2205003	ITAINÓPOLIS
765	18	2205102	ITAUEIRA
766	18	2205151	JACOBINA DO PIAUÍ
767	18	2205201	JAICÓS
768	18	2205250	JARDIM DO MULATO
769	18	2205276	JATOBÁ DO PIAUÍ
770	18	2205300	JERUMENHA
771	18	2205359	JOÃO COSTA
772	18	2205409	JOAQUIM PIRES
773	18	2205458	JOCA MARQUES
774	18	2205508	JOSÉ DE FREITAS
775	18	2205516	JUAZEIRO DO PIAUÍ
776	18	2205524	JÚLIO BORGES
777	18	2205532	JUREMA
778	18	2205540	LAGOINHA DO PIAUÍ
779	18	2205557	LAGOA ALEGRE
780	18	2205565	LAGOA DO BARRO DO PIAUÍ
781	18	2205573	LAGOA DE SÃO FRANCISCO
782	18	2205581	LAGOA DO PIAUÍ
783	18	2205599	LAGOA DO SÍTIO
784	18	2205607	LANDRI SALES
785	18	2205706	LUÍS CORREIA
786	18	2205805	LUZILÂNDIA
787	18	2205854	MADEIRO
788	18	2205904	MANOEL EMÍDIO
789	18	2205953	MARCOLÂNDIA
790	18	2206001	MARCOS PARENTE
791	18	2206050	MASSAPÊ DO PIAUÍ
792	18	2206100	MATIAS OLÍMPIO
793	18	2206209	MIGUEL ALVES
794	18	2206308	MIGUEL LEÃO
795	18	2206357	MILTON BRANDÃO
796	18	2206407	MONSENHOR GIL
797	18	2206506	MONSENHOR HIPÓLITO
798	18	2206605	MONTE ALEGRE DO PIAUÍ
799	18	2206654	MORRO CABEÇA NO TEMPO
800	18	2206670	MORRO DO CHAPÉU DO PIAUÍ
801	18	2206696	MURICI DOS PORTELAS
802	18	2206704	NAZARÉ DO PIAUÍ
803	18	2206753	NOSSA SENHORA DE NAZARÉ
804	18	2206803	NOSSA SENHORA DOS REMÉDIOS
805	18	2206902	NOVO ORIENTE DO PIAUÍ
806	18	2206951	NOVO SANTO ANTÔNIO
807	18	2207009	OEIRAS
808	18	2207108	OLHO D'ÁGUA DO PIAUÍ
809	18	2207207	PADRE MARCOS
810	18	2207306	PAES LANDIM
811	18	2207355	PAJEÚ DO PIAUÍ
812	18	2207405	PALMEIRA DO PIAUÍ
813	18	2207504	PALMEIRAIS
814	18	2207553	PAQUETÁ
815	18	2207603	PARNAGUÁ
816	18	2207702	PARNAÍBA
817	18	2207751	PASSAGEM FRANCA DO PIAUÍ
818	18	2207777	PATOS DO PIAUÍ
819	18	2207793	PAU D'ARCO DO PIAUÍ
820	18	2207801	PAULISTANA
821	18	2207850	PAVUSSU
822	18	2207900	PEDRO II
823	18	2207934	PEDRO LAURENTINO
824	18	2207959	NOVA SANTA RITA
825	18	2208007	PICOS
826	18	2208106	PIMENTEIRAS
827	18	2208205	PIO IX
828	18	2208304	PIRACURUCA
829	18	2208403	PIRIPIRI
830	18	2208502	PORTO
831	18	2208551	PORTO ALEGRE DO PIAUÍ
832	18	2208601	PRATA DO PIAUÍ
833	18	2208650	QUEIMADA NOVA
834	18	2208700	REDENÇÃO DO GURGUÉIA
835	18	2208809	REGENERAÇÃO
836	18	2208858	RIACHO FRIO
837	18	2208874	RIBEIRA DO PIAUÍ
838	18	2208908	RIBEIRO GONÇALVES
839	18	2209005	RIO GRANDE DO PIAUÍ
840	18	2209104	SANTA CRUZ DO PIAUÍ
841	18	2209153	SANTA CRUZ DOS MILAGRES
842	18	2209203	SANTA FILOMENA
843	18	2209302	SANTA LUZ
844	18	2209351	SANTANA DO PIAUÍ
845	18	2209377	SANTA ROSA DO PIAUÍ
846	18	2209401	SANTO ANTÔNIO DE LISBOA
847	18	2209450	SANTO ANTÔNIO DOS MILAGRES
848	18	2209500	SANTO INÁCIO DO PIAUÍ
849	18	2209559	SÃO BRAZ DO PIAUÍ
850	18	2209609	SÃO FÉLIX DO PIAUÍ
851	18	2209658	SÃO FRANCISCO DE ASSIS DO PIAUÍ
852	18	2209708	SÃO FRANCISCO DO PIAUÍ
853	18	2209757	SÃO GONÇALO DO GURGUÉIA
854	18	2209807	SÃO GONÇALO DO PIAUÍ
855	18	2209856	SÃO JOÃO DA CANABRAVA
856	18	2209872	SÃO JOÃO DA FRONTEIRA
857	18	2209906	SÃO JOÃO DA SERRA
858	18	2209955	SÃO JOÃO DA VARJOTA
859	18	2209971	SÃO JOÃO DO ARRAIAL
860	18	2210003	SÃO JOÃO DO PIAUÍ
861	18	2210052	SÃO JOSÉ DO DIVINO
862	18	2210102	SÃO JOSÉ DO PEIXE
863	18	2210201	SÃO JOSÉ DO PIAUÍ
864	18	2210300	SÃO JULIÃO
865	18	2210359	SÃO LOURENÇO DO PIAUÍ
866	18	2210375	SÃO LUIS DO PIAUÍ
867	18	2210383	SÃO MIGUEL DA BAIXA GRANDE
868	18	2210391	SÃO MIGUEL DO FIDALGO
869	18	2210409	SÃO MIGUEL DO TAPUIO
870	18	2210508	SÃO PEDRO DO PIAUÍ
871	18	2210607	SÃO RAIMUNDO NONATO
872	18	2210623	SEBASTIÃO BARROS
873	18	2210631	SEBASTIÃO LEAL
874	18	2210656	SIGEFREDO PACHECO
875	18	2210706	SIMÕES
876	18	2210805	SIMPLÍCIO MENDES
877	18	2210904	SOCORRO DO PIAUÍ
878	18	2210938	SUSSUAPARA
879	18	2210953	TAMBORIL DO PIAUÍ
880	18	2210979	TANQUE DO PIAUÍ
881	18	2211001	TERESINA
882	18	2211100	UNIÃO
883	18	2211209	URUÇUÍ
884	18	2211308	VALENÇA DO PIAUÍ
885	18	2211357	VÁRZEA BRANCA
886	18	2211407	VÁRZEA GRANDE
887	18	2211506	VERA MENDES
888	18	2211605	VILA NOVA DO PIAUÍ
889	18	2211704	WALL FERRAZ
890	6	2300101	ABAIARA
891	6	2300150	ACARAPE
892	6	2300200	ACARAÚ
893	6	2300309	ACOPIARA
894	6	2300408	AIUABA
895	6	2300507	ALCÂNTARAS
896	6	2300606	ALTANEIRA
897	6	2300705	ALTO SANTO
898	6	2300754	AMONTADA
899	6	2300804	ANTONINA DO NORTE
900	6	2300903	APUIARÉS
901	6	2301000	AQUIRAZ
902	6	2301109	ARACATI
903	6	2301208	ARACOIABA
904	6	2301257	ARARENDÁ
905	6	2301307	ARARIPE
906	6	2301406	ARATUBA
907	6	2301505	ARNEIROZ
908	6	2301604	ASSARÉ
909	6	2301703	AURORA
910	6	2301802	BAIXIO
911	6	2301851	BANABUIÚ
912	6	2301901	BARBALHA
913	6	2301950	BARREIRA
914	6	2302008	BARRO
915	6	2302057	BARROQUINHA
916	6	2302107	BATURITÉ
917	6	2302206	BEBERIBE
918	6	2302305	BELA CRUZ
919	6	2302404	BOA VIAGEM
920	6	2302503	BREJO SANTO
921	6	2302602	CAMOCIM
922	6	2302701	CAMPOS SALES
923	6	2302800	CANINDÉ
924	6	2302909	CAPISTRANO
925	6	2303006	CARIDADE
926	6	2303105	CARIRÉ
927	6	2303204	CARIRIAÇU
928	6	2303303	CARIÚS
929	6	2303402	CARNAUBAL
930	6	2303501	CASCAVEL
931	6	2303600	CATARINA
932	6	2303659	CATUNDA
933	6	2303709	CAUCAIA
934	6	2303808	CEDRO
935	6	2303907	CHAVAL
936	6	2303931	CHORÓ
937	6	2303956	CHOROZINHO
938	6	2304004	COREAÚ
939	6	2304103	CRATEÚS
940	6	2304202	CRATO
941	6	2304236	CROATÁ
942	6	2304251	CRUZ
943	6	2304269	DEPUTADO IRAPUAN PINHEIRO
944	6	2304277	ERERÊ
945	6	2304285	EUSÉBIO
946	6	2304301	FARIAS BRITO
947	6	2304350	FORQUILHA
948	6	2304400	FORTALEZA
949	6	2304459	FORTIM
950	6	2304509	FRECHEIRINHA
951	6	2304608	GENERAL SAMPAIO
952	6	2304657	GRAÇA
953	6	2304707	GRANJA
954	6	2304806	GRANJEIRO
955	6	2304905	GROAÍRAS
956	6	2304954	GUAIÚBA
957	6	2305001	GUARACIABA DO NORTE
958	6	2305100	GUARAMIRANGA
959	6	2305209	HIDROLÂNDIA
960	6	2305233	HORIZONTE
961	6	2305266	IBARETAMA
962	6	2305308	IBIAPINA
963	6	2305332	IBICUITINGA
964	6	2305357	ICAPUÍ
965	6	2305407	ICÓ
966	6	2305506	IGUATU
967	6	2305605	INDEPENDÊNCIA
968	6	2305654	IPAPORANGA
969	6	2305704	IPAUMIRIM
970	6	2305803	IPU
971	6	2305902	IPUEIRAS
972	6	2306009	IRACEMA
973	6	2306108	IRAUÇUBA
974	6	2306207	ITAIÇABA
975	6	2306256	ITAITINGA
976	6	2306306	ITAPAGÉ
977	6	2306405	ITAPIPOCA
978	6	2306504	ITAPIÚNA
979	6	2306553	ITAREMA
980	6	2306603	ITATIRA
981	6	2306702	JAGUARETAMA
982	6	2306801	JAGUARIBARA
983	6	2306900	JAGUARIBE
984	6	2307007	JAGUARUANA
985	6	2307106	JARDIM
986	6	2307205	JATI
987	6	2307254	JIJOCA DE JERICOACOARA
988	6	2307304	JUAZEIRO DO NORTE
989	6	2307403	JUCÁS
990	6	2307502	LAVRAS DA MANGABEIRA
991	6	2307601	LIMOEIRO DO NORTE
992	6	2307635	MADALENA
993	6	2307650	MARACANAÚ
994	6	2307700	MARANGUAPE
995	6	2307809	MARCO
996	6	2307908	MARTINÓPOLE
997	6	2308005	MASSAPÊ
998	6	2308104	MAURITI
999	6	2308203	MERUOCA
1000	6	2308302	MILAGRES
1001	6	2308351	MILHÃ
1002	6	2308377	MIRAÍMA
1003	6	2308401	MISSÃO VELHA
1004	6	2308500	MOMBAÇA
1005	6	2308609	MONSENHOR TABOSA
1006	6	2308708	MORADA NOVA
1007	6	2308807	MORAÚJO
1008	6	2308906	MORRINHOS
1009	6	2309003	MUCAMBO
1010	6	2309102	MULUNGU
1011	6	2309201	NOVA OLINDA
1012	6	2309300	NOVA RUSSAS
1013	6	2309409	NOVO ORIENTE
1014	6	2309458	OCARA
1015	6	2309508	ORÓS
1016	6	2309607	PACAJUS
1017	6	2309706	PACATUBA
1018	6	2309805	PACOTI
1019	6	2309904	PACUJÁ
1020	6	2310001	PALHANO
1021	6	2310100	PALMÁCIA
1022	6	2310209	PARACURU
1023	6	2310258	PARAIPABA
1024	6	2310308	PARAMBU
1025	6	2310407	PARAMOTI
1026	6	2310506	PEDRA BRANCA
1027	6	2310605	PENAFORTE
1028	6	2310704	PENTECOSTE
1029	6	2310803	PEREIRO
1030	6	2310852	PINDORETAMA
1031	6	2310902	PIQUET CARNEIRO
1032	6	2310951	PIRES FERREIRA
1033	6	2311009	PORANGA
1034	6	2311108	PORTEIRAS
1035	6	2311207	POTENGI
1036	6	2311231	POTIRETAMA
1037	6	2311264	QUITERIANÓPOLIS
1038	6	2311306	QUIXADÁ
1039	6	2311355	QUIXELÔ
1040	6	2311405	QUIXERAMOBIM
1041	6	2311504	QUIXERÉ
1042	6	2311603	REDENÇÃO
1043	6	2311702	RERIUTABA
1044	6	2311801	RUSSAS
1045	6	2311900	SABOEIRO
1046	6	2311959	SALITRE
1047	6	2312007	SANTANA DO ACARAÚ
1048	6	2312106	SANTANA DO CARIRI
1049	6	2312205	SANTA QUITÉRIA
1050	6	2312304	SÃO BENEDITO
1051	6	2312403	SÃO GONÇALO DO AMARANTE
1052	6	2312502	SÃO JOÃO DO JAGUARIBE
1053	6	2312601	SÃO LUÍS DO CURU
1054	6	2312700	SENADOR POMPEU
1055	6	2312809	SENADOR SÁ
1056	6	2312908	SOBRAL
1057	6	2313005	SOLONÓPOLE
1058	6	2313104	TABULEIRO DO NORTE
1059	6	2313203	TAMBORIL
1060	6	2313252	TARRAFAS
1061	6	2313302	TAUÁ
1062	6	2313351	TEJUÇUOCA
1063	6	2313401	TIANGUÁ
1064	6	2313500	TRAIRI
1065	6	2313559	TURURU
1066	6	2313609	UBAJARA
1067	6	2313708	UMARI
1068	6	2313757	UMIRIM
1069	6	2313807	URUBURETAMA
1070	6	2313906	URUOCA
1071	6	2313955	VARJOTA
1072	6	2314003	VÁRZEA ALEGRE
1073	6	2314102	VIÇOSA DO CEARÁ
1074	20	2400109	ACARI
1075	20	2400208	AÇU
1076	20	2400307	AFONSO BEZERRA
1077	20	2400406	ÁGUA NOVA
1078	20	2400505	ALEXANDRIA
1079	20	2400604	ALMINO AFONSO
1080	20	2400703	ALTO DO RODRIGUES
1081	20	2400802	ANGICOS
1082	20	2400901	ANTÔNIO MARTINS
1083	20	2401008	APODI
1084	20	2401107	AREIA BRANCA
1085	20	2401206	ARÊS
1086	20	2401305	AUGUSTO SEVERO
1087	20	2401404	BAÍA FORMOSA
1088	20	2401453	BARAÚNA
1089	20	2401503	BARCELONA
1090	20	2401602	BENTO FERNANDES
1091	20	2401651	BODÓ
1092	20	2401701	BOM JESUS
1093	20	2401800	BREJINHO
1094	20	2401859	CAIÇARA DO NORTE
1095	20	2401909	CAIÇARA DO RIO DO VENTO
1096	20	2402006	CAICÓ
1097	20	2402105	CAMPO REDONDO
1098	20	2402204	CANGUARETAMA
1099	20	2402303	CARAÚBAS
1100	20	2402402	CARNAÚBA DOS DANTAS
1101	20	2402501	CARNAUBAIS
1102	20	2402600	CEARÁ-MIRIM
1103	20	2402709	CERRO CORÁ
1104	20	2402808	CORONEL EZEQUIEL
1105	20	2402907	CORONEL JOÃO PESSOA
1106	20	2403004	CRUZETA
1107	20	2403103	CURRAIS NOVOS
1108	20	2403202	DOUTOR SEVERIANO
1109	20	2403251	PARNAMIRIM
1110	20	2403301	ENCANTO
1111	20	2403400	EQUADOR
1112	20	2403509	ESPÍRITO SANTO
1113	20	2403608	EXTREMOZ
1114	20	2403707	FELIPE GUERRA
1115	20	2403756	FERNANDO PEDROZA
1116	20	2403806	FLORÂNIA
1117	20	2403905	FRANCISCO DANTAS
1118	20	2404002	FRUTUOSO GOMES
1119	20	2404101	GALINHOS
1120	20	2404200	GOIANINHA
1121	20	2404309	GOVERNADOR DIX-SEPT ROSADO
1122	20	2404408	GROSSOS
1123	20	2404507	GUAMARÉ
1124	20	2404606	IELMO MARINHO
1125	20	2404705	IPANGUAÇU
1126	20	2404804	IPUEIRA
1127	20	2404853	ITAJÁ
1128	20	2404903	ITAÚ
1129	20	2405009	JAÇANÃ
1130	20	2405108	JANDAÍRA
1131	20	2405207	JANDUÍS
1132	20	2405306	JANUÁRIO CICCO
1133	20	2405405	JAPI
1134	20	2405504	JARDIM DE ANGICOS
1135	20	2405603	JARDIM DE PIRANHAS
1136	20	2405702	JARDIM DO SERIDÓ
1137	20	2405801	JOÃO CÂMARA
1138	20	2405900	JOÃO DIAS
1139	20	2406007	JOSÉ DA PENHA
1140	20	2406106	JUCURUTU
1141	20	2406155	JUNDIÁ
1142	20	2406205	LAGOA D'ANTA
1143	20	2406304	LAGOA DE PEDRAS
1144	20	2406403	LAGOA DE VELHOS
1145	20	2406502	LAGOA NOVA
1146	20	2406601	LAGOA SALGADA
1147	20	2406700	LAJES
1148	20	2406809	LAJES PINTADAS
1149	20	2406908	LUCRÉCIA
1150	20	2407005	LUÍS GOMES
1151	20	2407104	MACAÍBA
1152	20	2407203	MACAU
1153	20	2407252	MAJOR SALES
1154	20	2407302	MARCELINO VIEIRA
1155	20	2407401	MARTINS
1156	20	2407500	MAXARANGUAPE
1157	20	2407609	MESSIAS TARGINO
1158	20	2407708	MONTANHAS
1159	20	2407807	MONTE ALEGRE
1160	20	2407906	MONTE DAS GAMELEIRAS
1161	20	2408003	MOSSORÓ
1162	20	2408102	NATAL
1163	20	2408201	NÍSIA FLORESTA
1164	20	2408300	NOVA CRUZ
1165	20	2408409	OLHO-D'ÁGUA DO BORGES
1166	20	2408508	OURO BRANCO
1167	20	2408607	PARANÁ
1168	20	2408706	PARAÚ
1169	20	2408805	PARAZINHO
1170	20	2408904	PARELHAS
1171	20	2408953	RIO DO FOGO
1172	20	2409100	PASSA E FICA
1173	20	2409209	PASSAGEM
1174	20	2409308	PATU
1175	20	2409332	SANTA MARIA
1176	20	2409407	PAU DOS FERROS
1177	20	2409506	PEDRA GRANDE
1178	20	2409605	PEDRA PRETA
1179	20	2409704	PEDRO AVELINO
1180	20	2409803	PEDRO VELHO
1181	20	2409902	PENDÊNCIAS
1182	20	2410009	PILÕES
1183	20	2410108	POÇO BRANCO
1184	20	2410207	PORTALEGRE
1185	20	2410256	PORTO DO MANGUE
1186	20	2410306	PRESIDENTE JUSCELINO
1187	20	2410405	PUREZA
1188	20	2410504	RAFAEL FERNANDES
1189	20	2410603	RAFAEL GODEIRO
1190	20	2410702	RIACHO DA CRUZ
1191	20	2410801	RIACHO DE SANTANA
1192	20	2410900	RIACHUELO
1193	20	2411007	RODOLFO FERNANDES
1194	20	2411056	TIBAU
1195	20	2411106	RUY BARBOSA
1196	20	2411205	SANTA CRUZ
1197	20	2411403	SANTANA DO MATOS
1198	20	2411429	SANTANA DO SERIDÓ
1199	20	2411502	SANTO ANTÔNIO
1200	20	2411601	SÃO BENTO DO NORTE
1201	20	2411700	SÃO BENTO DO TRAIRÍ
1202	20	2411809	SÃO FERNANDO
1203	20	2411908	SÃO FRANCISCO DO OESTE
1204	20	2412005	SÃO GONÇALO DO AMARANTE
1205	20	2412104	SÃO JOÃO DO SABUGI
1206	20	2412203	SÃO JOSÉ DE MIPIBU
1207	20	2412302	SÃO JOSÉ DO CAMPESTRE
1208	20	2412401	SÃO JOSÉ DO SERIDÓ
1209	20	2412500	SÃO MIGUEL
1210	20	2412559	SÃO MIGUEL DO GOSTOSO
1211	20	2412609	SÃO PAULO DO POTENGI
1212	20	2412708	SÃO PEDRO
1213	20	2412807	SÃO RAFAEL
1214	20	2412906	SÃO TOMÉ
1215	20	2413003	SÃO VICENTE
1216	20	2413102	SENADOR ELÓI DE SOUZA
1217	20	2413201	SENADOR GEORGINO AVELINO
1218	20	2413300	SERRA DE SÃO BENTO
1219	20	2413359	SERRA DO MEL
1220	20	2413409	SERRA NEGRA DO NORTE
1221	20	2413508	SERRINHA
1222	20	2413557	SERRINHA DOS PINTOS
1223	20	2413607	SEVERIANO MELO
1224	20	2413706	SÍTIO NOVO
1225	20	2413805	TABOLEIRO GRANDE
1226	20	2413904	TAIPU
1227	20	2414001	TANGARÁ
1228	20	2414100	TENENTE ANANIAS
1229	20	2414159	TENENTE LAURENTINO CRUZ
1230	20	2414209	TIBAU DO SUL
1231	20	2414308	TIMBAÚBA DOS BATISTAS
1232	20	2414407	TOUROS
1233	20	2414456	TRIUNFO POTIGUAR
1234	20	2414506	UMARIZAL
1235	20	2414605	UPANEMA
1236	20	2414704	VÁRZEA
1237	20	2414753	VENHA-VER
1238	20	2414803	VERA CRUZ
1239	20	2414902	VIÇOSA
1240	20	2415008	VILA FLOR
1241	15	2500106	ÁGUA BRANCA
1242	15	2500205	AGUIAR
1243	15	2500304	ALAGOA GRANDE
1244	15	2500403	ALAGOA NOVA
1245	15	2500502	ALAGOINHA
1246	15	2500536	ALCANTIL
1247	15	2500577	ALGODÃO DE JANDAÍRA
1248	15	2500601	ALHANDRA
1249	15	2500700	SÃO JOÃO DO RIO DO PEIXE
1250	15	2500734	AMPARO
1251	15	2500775	APARECIDA
1252	15	2500809	ARAÇAGI
1253	15	2500908	ARARA
1254	15	2501005	ARARUNA
1255	15	2501104	AREIA
1256	15	2501153	AREIA DE BARAÚNAS
1257	15	2501203	AREIAL
1258	15	2501302	AROEIRAS
1259	15	2501351	ASSUNÇÃO
1260	15	2501401	BAÍA DA TRAIÇÃO
1261	15	2501500	BANANEIRAS
1262	15	2501534	BARAÚNA
1263	15	2501575	BARRA DE SANTANA
1264	15	2501609	BARRA DE SANTA ROSA
1265	15	2501708	BARRA DE SÃO MIGUEL
1266	15	2501807	BAYEUX
1267	15	2501906	BELÉM
1268	15	2502003	BELÉM DO BREJO DO CRUZ
1269	15	2502052	BERNARDINO BATISTA
1270	15	2502102	BOA VENTURA
1271	15	2502151	BOA VISTA
1272	15	2502201	BOM JESUS
1273	15	2502300	BOM SUCESSO
1274	15	2502409	BONITO DE SANTA FÉ
1275	15	2502508	BOQUEIRÃO
1276	15	2502607	IGARACY
1277	15	2502706	BORBOREMA
1278	15	2502805	BREJO DO CRUZ
1279	15	2502904	BREJO DOS SANTOS
1280	15	2503001	CAAPORÃ
1281	15	2503100	CABACEIRAS
1282	15	2503209	CABEDELO
1283	15	2503308	CACHOEIRA DOS ÍNDIOS
1284	15	2503407	CACIMBA DE AREIA
1285	15	2503506	CACIMBA DE DENTRO
1286	15	2503555	CACIMBAS
1287	15	2503605	CAIÇARA
1288	15	2503704	CAJAZEIRAS
1289	15	2503753	CAJAZEIRINHAS
1290	15	2503803	CALDAS BRANDÃO
1291	15	2503902	CAMALAÚ
1292	15	2504009	CAMPINA GRANDE
1293	15	2504033	CAPIM
1294	15	2504074	CARAÚBAS
1295	15	2504108	CARRAPATEIRA
1296	15	2504157	CASSERENGUE
1297	15	2504207	CATINGUEIRA
1298	15	2504306	CATOLÉ DO ROCHA
1299	15	2504355	CATURITÉ
1300	15	2504405	CONCEIÇÃO
1301	15	2504504	CONDADO
1302	15	2504603	CONDE
1303	15	2504702	CONGO
1304	15	2504801	COREMAS
1305	15	2504850	COXIXOLA
1306	15	2504900	CRUZ DO ESPÍRITO SANTO
1307	15	2505006	CUBATI
1308	15	2505105	CUITÉ
1309	15	2505204	CUITEGI
1310	15	2505238	CUITÉ DE MAMANGUAPE
1311	15	2505279	CURRAL DE CIMA
1312	15	2505303	CURRAL VELHO
1313	15	2505352	DAMIÃO
1314	15	2505402	DESTERRO
1315	15	2505501	VISTA SERRANA
1316	15	2505600	DIAMANTE
1317	15	2505709	DONA INÊS
1318	15	2505808	DUAS ESTRADAS
1319	15	2505907	EMAS
1320	15	2506004	ESPERANÇA
1321	15	2506103	FAGUNDES
1322	15	2506202	FREI MARTINHO
1323	15	2506251	GADO BRAVO
1324	15	2506301	GUARABIRA
1325	15	2506400	GURINHÉM
1326	15	2506509	GURJÃO
1327	15	2506608	IBIARA
1328	15	2506707	IMACULADA
1329	15	2506806	INGÁ
1330	15	2506905	ITABAIANA
1331	15	2507002	ITAPORANGA
1332	15	2507101	ITAPOROROCA
1333	15	2507200	ITATUBA
1334	15	2507309	JACARAÚ
1335	15	2507408	JERICÓ
1336	15	2507507	JOÃO PESSOA
1337	15	2507606	JUAREZ TÁVORA
1338	15	2507705	JUAZEIRINHO
1339	15	2507804	JUNCO DO SERIDÓ
1340	15	2507903	JURIPIRANGA
1341	15	2508000	JURU
1342	15	2508109	LAGOA
1343	15	2508208	LAGOA DE DENTRO
1344	15	2508307	LAGOA SECA
1345	15	2508406	LASTRO
1346	15	2508505	LIVRAMENTO
1347	15	2508554	LOGRADOURO
1348	15	2508604	LUCENA
1349	15	2508703	MÃE D'ÁGUA
1350	15	2508802	MALTA
1351	15	2508901	MAMANGUAPE
1352	15	2509008	MANAÍRA
1353	15	2509057	MARCAÇÃO
1354	15	2509107	MARI
1355	15	2509156	MARIZÓPOLIS
1356	15	2509206	MASSARANDUBA
1357	15	2509305	MATARACA
1358	15	2509339	MATINHAS
1359	15	2509370	MATO GROSSO
1360	15	2509396	MATURÉIA
1361	15	2509404	MOGEIRO
1362	15	2509503	MONTADAS
1363	15	2509602	MONTE HOREBE
1364	15	2509701	MONTEIRO
1365	15	2509800	MULUNGU
1366	15	2509909	NATUBA
1367	15	2510006	NAZAREZINHO
1368	15	2510105	NOVA FLORESTA
1369	15	2510204	NOVA OLINDA
1370	15	2510303	NOVA PALMEIRA
1371	15	2510402	OLHO D'ÁGUA
1372	15	2510501	OLIVEDOS
1373	15	2510600	OURO VELHO
1374	15	2510659	PARARI
1375	15	2510709	PASSAGEM
1376	15	2510808	PATOS
1377	15	2510907	PAULISTA
1378	15	2511004	PEDRA BRANCA
1379	15	2511103	PEDRA LAVRADA
1380	15	2511202	PEDRAS DE FOGO
1381	15	2511301	PIANCÓ
1382	15	2511400	PICUÍ
1383	15	2511509	PILAR
1384	15	2511608	PILÕES
1385	15	2511707	PILÕEZINHOS
1386	15	2511806	PIRPIRITUBA
1387	15	2511905	PITIMBU
1388	15	2512002	POCINHOS
1389	15	2512036	POÇO DANTAS
1390	15	2512077	POÇO DE JOSÉ DE MOURA
1391	15	2512101	POMBAL
1392	15	2512200	PRATA
1393	15	2512309	PRINCESA ISABEL
1394	15	2512408	PUXINANÃ
1395	15	2512507	QUEIMADAS
1396	15	2512606	QUIXABÁ
1397	15	2512705	REMÍGIO
1398	15	2512721	PEDRO RÉGIS
1399	15	2512747	RIACHÃO
1400	15	2512754	RIACHÃO DO BACAMARTE
1401	15	2512762	RIACHÃO DO POÇO
1402	15	2512788	RIACHO DE SANTO ANTÔNIO
1403	15	2512804	RIACHO DOS CAVALOS
1404	15	2512903	RIO TINTO
1405	15	2513000	SALGADINHO
1406	15	2513109	SALGADO DE SÃO FÉLIX
1407	15	2513158	SANTA CECÍLIA
1408	15	2513208	SANTA CRUZ
1409	15	2513307	SANTA HELENA
1410	15	2513356	SANTA INÊS
1411	15	2513406	SANTA LUZIA
1412	15	2513505	SANTANA DE MANGUEIRA
1413	15	2513604	SANTANA DOS GARROTES
1414	15	2513653	SANTARÉM
1415	15	2513703	SANTA RITA
1416	15	2513802	SANTA TERESINHA
1417	15	2513851	SANTO ANDRÉ
1418	15	2513901	SÃO BENTO
1419	15	2513927	SÃO BENTINHO
1420	15	2513943	SÃO DOMINGOS DO CARIRI
1421	15	2513968	SÃO DOMINGOS DE POMBAL
1422	15	2513984	SÃO FRANCISCO
1423	15	2514008	SÃO JOÃO DO CARIRI
1424	15	2514107	SÃO JOÃO DO TIGRE
1425	15	2514206	SÃO JOSÉ DA LAGOA TAPADA
1426	15	2514305	SÃO JOSÉ DE CAIANA
1427	15	2514404	SÃO JOSÉ DE ESPINHARAS
1428	15	2514453	SÃO JOSÉ DOS RAMOS
1429	15	2514503	SÃO JOSÉ DE PIRANHAS
1430	15	2514552	SÃO JOSÉ DE PRINCESA
1431	15	2514602	SÃO JOSÉ DO BONFIM
1432	15	2514651	SÃO JOSÉ DO BREJO DO CRUZ
1433	15	2514701	SÃO JOSÉ DO SABUGI
1434	15	2514800	SÃO JOSÉ DOS CORDEIROS
1435	15	2514909	SÃO MAMEDE
1436	15	2515005	SÃO MIGUEL DE TAIPU
1437	15	2515104	SÃO SEBASTIÃO DE LAGOA DE ROÇA
1438	15	2515203	SÃO SEBASTIÃO DO UMBUZEIRO
1439	15	2515302	SAPÉ
1440	15	2515401	SERIDÓ
1441	15	2515500	SERRA BRANCA
1442	15	2515609	SERRA DA RAIZ
1443	15	2515708	SERRA GRANDE
1444	15	2515807	SERRA REDONDA
1445	15	2515906	SERRARIA
1446	15	2515930	SERTÃOZINHO
1447	15	2515971	SOBRADO
1448	15	2516003	SOLÂNEA
1449	15	2516102	SOLEDADE
1450	15	2516151	SOSSÊGO
1451	15	2516201	SOUSA
1452	15	2516300	SUMÉ
1453	15	2516409	CAMPO DE SANTANA
1454	15	2516508	TAPEROÁ
1455	15	2516607	TAVARES
1456	15	2516706	TEIXEIRA
1457	15	2516755	TENÓRIO
1458	15	2516805	TRIUNFO
1459	15	2516904	UIRAÚNA
1460	15	2517001	UMBUZEIRO
1461	15	2517100	VÁRZEA
1462	15	2517209	VIEIRÓPOLIS
1463	15	2517407	ZABELÊ
1464	17	2600054	ABREU E LIMA
1465	17	2600104	AFOGADOS DA INGAZEIRA
1466	17	2600203	AFRÂNIO
1467	17	2600302	AGRESTINA
1468	17	2600401	ÁGUA PRETA
1469	17	2600500	ÁGUAS BELAS
1470	17	2600609	ALAGOINHA
1471	17	2600708	ALIANÇA
1472	17	2600807	ALTINHO
1473	17	2600906	AMARAJI
1474	17	2601003	ANGELIM
1475	17	2601052	ARAÇOIABA
1476	17	2601102	ARARIPINA
1477	17	2601201	ARCOVERDE
1478	17	2601300	BARRA DE GUABIRABA
1479	17	2601409	BARREIROS
1480	17	2601508	BELÉM DE MARIA
1481	17	2601607	BELÉM DE SÃO FRANCISCO
1482	17	2601706	BELO JARDIM
1483	17	2601805	BETÂNIA
1484	17	2601904	BEZERROS
1485	17	2602001	BODOCÓ
1486	17	2602100	BOM CONSELHO
1487	17	2602209	BOM JARDIM
1488	17	2602308	BONITO
1489	17	2602407	BREJÃO
1490	17	2602506	BREJINHO
1491	17	2602605	BREJO DA MADRE DE DEUS
1492	17	2602704	BUENOS AIRES
1493	17	2602803	BUÍQUE
1494	17	2602902	CABO DE SANTO AGOSTINHO
1495	17	2603009	CABROBÓ
1496	17	2603108	CACHOEIRINHA
1497	17	2603207	CAETÉS
1498	17	2603306	CALÇADO
1499	17	2603405	CALUMBI
1500	17	2603454	CAMARAGIBE
1501	17	2603504	CAMOCIM DE SÃO FÉLIX
1502	17	2603603	CAMUTANGA
1503	17	2603702	CANHOTINHO
1504	17	2603801	CAPOEIRAS
1505	17	2603900	CARNAÍBA
1506	17	2603926	CARNAUBEIRA DA PENHA
1507	17	2604007	CARPINA
1508	17	2604106	CARUARU
1509	17	2604155	CASINHAS
1510	17	2604205	CATENDE
1511	17	2604304	CEDRO
1512	17	2604403	CHÃ DE ALEGRIA
1513	17	2604502	CHÃ GRANDE
1514	17	2604601	CONDADO
1515	17	2604700	CORRENTES
1516	17	2604809	CORTÊS
1517	17	2604908	CUMARU
1518	17	2605004	CUPIRA
1519	17	2605103	CUSTÓDIA
1520	17	2605152	DORMENTES
1521	17	2605202	ESCADA
1522	17	2605301	EXU
1523	17	2605400	FEIRA NOVA
1524	17	2605459	FERNANDO DE NORONHA
1525	17	2605509	FERREIROS
1526	17	2605608	FLORES
1527	17	2605707	FLORESTA
1528	17	2605806	FREI MIGUELINHO
1529	17	2605905	GAMELEIRA
1530	17	2606002	GARANHUNS
1531	17	2606101	GLÓRIA DO GOITÁ
1532	17	2606200	GOIANA
1533	17	2606309	GRANITO
1534	17	2606408	GRAVATÁ
1535	17	2606507	IATI
1536	17	2606606	IBIMIRIM
1537	17	2606705	IBIRAJUBA
1538	17	2606804	IGARASSU
1539	17	2606903	IGUARACI
1540	17	2607000	INAJÁ
1541	17	2607109	INGAZEIRA
1542	17	2607208	IPOJUCA
1543	17	2607307	IPUBI
1544	17	2607406	ITACURUBA
1545	17	2607505	ITAÍBA
1546	17	2607604	ILHA DE ITAMARACÁ
1547	17	2607653	ITAMBÉ
1548	17	2607703	ITAPETIM
1549	17	2607752	ITAPISSUMA
1550	17	2607802	ITAQUITINGA
1551	17	2607901	JABOATÃO DOS GUARARAPES
1552	17	2607950	JAQUEIRA
1553	17	2608008	JATAÚBA
1554	17	2608057	JATOBÁ
1555	17	2608107	JOÃO ALFREDO
1556	17	2608206	JOAQUIM NABUCO
1557	17	2608255	JUCATI
1558	17	2608305	JUPI
1559	17	2608404	JUREMA
1560	17	2608453	LAGOA DO CARRO
1561	17	2608503	LAGOA DO ITAENGA
1562	17	2608602	LAGOA DO OURO
1563	17	2608701	LAGOA DOS GATOS
1564	17	2608750	LAGOA GRANDE
1565	17	2608800	LAJEDO
1566	17	2608909	LIMOEIRO
1567	17	2609006	MACAPARANA
1568	17	2609105	MACHADOS
1569	17	2609154	MANARI
1570	17	2609204	MARAIAL
1571	17	2609303	MIRANDIBA
1572	17	2609402	MORENO
1573	17	2609501	NAZARÉ DA MATA
1574	17	2609600	OLINDA
1575	17	2609709	OROBÓ
1576	17	2609808	OROCÓ
1577	17	2609907	OURICURI
1578	17	2610004	PALMARES
1579	17	2610103	PALMEIRINA
1580	17	2610202	PANELAS
1581	17	2610301	PARANATAMA
1582	17	2610400	PARNAMIRIM
1583	17	2610509	PASSIRA
1584	17	2610608	PAUDALHO
1585	17	2610707	PAULISTA
1586	17	2610806	PEDRA
1587	17	2610905	PESQUEIRA
1588	17	2611002	PETROLÂNDIA
1589	17	2611101	PETROLINA
1590	17	2611200	POÇÃO
1591	17	2611309	POMBOS
1592	17	2611408	PRIMAVERA
1593	17	2611507	QUIPAPÁ
1594	17	2611533	QUIXABA
1595	17	2611606	RECIFE
1596	17	2611705	RIACHO DAS ALMAS
1597	17	2611804	RIBEIRÃO
1598	17	2611903	RIO FORMOSO
1599	17	2612000	SAIRÉ
1600	17	2612109	SALGADINHO
1601	17	2612208	SALGUEIRO
1602	17	2612307	SALOÁ
1603	17	2612406	SANHARÓ
1604	17	2612455	SANTA CRUZ
1605	17	2612471	SANTA CRUZ DA BAIXA VERDE
1606	17	2612505	SANTA CRUZ DO CAPIBARIBE
1607	17	2612554	SANTA FILOMENA
1608	17	2612604	SANTA MARIA DA BOA VISTA
1609	17	2612703	SANTA MARIA DO CAMBUCÁ
1610	17	2612802	SANTA TEREZINHA
1611	17	2612901	SÃO BENEDITO DO SUL
1612	17	2613008	SÃO BENTO DO UNA
1613	17	2613107	SÃO CAITANO
1614	17	2613206	SÃO JOÃO
1615	17	2613305	SÃO JOAQUIM DO MONTE
1616	17	2613404	SÃO JOSÉ DA COROA GRANDE
1617	17	2613503	SÃO JOSÉ DO BELMONTE
1618	17	2613602	SÃO JOSÉ DO EGITO
1619	17	2613701	SÃO LOURENÇO DA MATA
1620	17	2613800	SÃO VICENTE FERRER
1621	17	2613909	SERRA TALHADA
1622	17	2614006	SERRITA
1623	17	2614105	SERTÂNIA
1624	17	2614204	SIRINHAÉM
1625	17	2614303	MOREILÂNDIA
1626	17	2614402	SOLIDÃO
1627	17	2614501	SURUBIM
1628	17	2614600	TABIRA
1629	17	2614709	TACAIMBÓ
1630	17	2614808	TACARATU
1631	17	2614857	TAMANDARÉ
1632	17	2615003	TAQUARITINGA DO NORTE
1633	17	2615102	TEREZINHA
1634	17	2615201	TERRA NOVA
1635	17	2615300	TIMBAÚBA
1636	17	2615409	TORITAMA
1637	17	2615508	TRACUNHAÉM
1638	17	2615607	TRINDADE
1639	17	2615706	TRIUNFO
1640	17	2615805	TUPANATINGA
1641	17	2615904	TUPARETAMA
1642	17	2616001	VENTUROSA
1643	17	2616100	VERDEJANTE
1644	17	2616183	VERTENTE DO LÉRIO
1645	17	2616209	VERTENTES
1646	17	2616308	VICÊNCIA
1647	17	2616407	VITÓRIA DE SANTO ANTÃO
1648	17	2616506	XEXÉU
1649	2	2700102	ÁGUA BRANCA
1650	2	2700201	ANADIA
1651	2	2700300	ARAPIRACA
1652	2	2700409	ATALAIA
1653	2	2700508	BARRA DE SANTO ANTÔNIO
1654	2	2700607	BARRA DE SÃO MIGUEL
1655	2	2700706	BATALHA
1656	2	2700805	BELÉM
1657	2	2700904	BELO MONTE
1658	2	2701001	BOCA DA MATA
1659	2	2701100	BRANQUINHA
1660	2	2701209	CACIMBINHAS
1661	2	2701308	CAJUEIRO
1662	2	2701357	CAMPESTRE
1663	2	2701407	CAMPO ALEGRE
1664	2	2701506	CAMPO GRANDE
1665	2	2701605	CANAPI
1666	2	2701704	CAPELA
1667	2	2701803	CARNEIROS
1668	2	2701902	CHÃ PRETA
1669	2	2702009	COITÉ DO NÓIA
1670	2	2702108	COLÔNIA LEOPOLDINA
1671	2	2702207	COQUEIRO SECO
1672	2	2702306	CORURIPE
1673	2	2702355	CRAÍBAS
1674	2	2702405	DELMIRO GOUVEIA
1675	2	2702504	DOIS RIACHOS
1676	2	2702553	ESTRELA DE ALAGOAS
1677	2	2702603	FEIRA GRANDE
1678	2	2702702	FELIZ DESERTO
1679	2	2702801	FLEXEIRAS
1680	2	2702900	GIRAU DO PONCIANO
1681	2	2703007	IBATEGUARA
1682	2	2703106	IGACI
1683	2	2703205	IGREJA NOVA
1684	2	2703304	INHAPI
1685	2	2703403	JACARÉ DOS HOMENS
1686	2	2703502	JACUÍPE
1687	2	2703601	JAPARATINGA
1688	2	2703700	JARAMATAIA
1689	2	2703759	JEQUIÁ DA PRAIA
1690	2	2703809	JOAQUIM GOMES
1691	2	2703908	JUNDIÁ
1692	2	2704005	JUNQUEIRO
1693	2	2704104	LAGOA DA CANOA
1694	2	2704203	LIMOEIRO DE ANADIA
1695	2	2704302	MACEIÓ
1696	2	2704401	MAJOR ISIDORO
1697	2	2704500	MARAGOGI
1698	2	2704609	MARAVILHA
1699	2	2704708	MARECHAL DEODORO
1700	2	2704807	MARIBONDO
1701	2	2704906	MAR VERMELHO
1702	2	2705002	MATA GRANDE
1703	2	2705101	MATRIZ DE CAMARAGIBE
1704	2	2705200	MESSIAS
1705	2	2705309	MINADOR DO NEGRÃO
1706	2	2705408	MONTEIRÓPOLIS
1707	2	2705507	MURICI
1708	2	2705606	NOVO LINO
1709	2	2705705	OLHO D'ÁGUA DAS FLORES
1710	2	2705804	OLHO D'ÁGUA DO CASADO
1711	2	2705903	OLHO D'ÁGUA GRANDE
1712	2	2706000	OLIVENÇA
1713	2	2706109	OURO BRANCO
1714	2	2706208	PALESTINA
1715	2	2706307	PALMEIRA DOS ÍNDIOS
1716	2	2706406	PÃO DE AÇÚCAR
1717	2	2706422	PARICONHA
1718	2	2706448	PARIPUEIRA
1719	2	2706505	PASSO DE CAMARAGIBE
1720	2	2706604	PAULO JACINTO
1721	2	2706703	PENEDO
1722	2	2706802	PIAÇABUÇU
1723	2	2706901	PILAR
1724	2	2707008	PINDOBA
1725	2	2707107	PIRANHAS
1726	2	2707206	POÇO DAS TRINCHEIRAS
1727	2	2707305	PORTO CALVO
1728	2	2707404	PORTO DE PEDRAS
1729	2	2707503	PORTO REAL DO COLÉGIO
1730	2	2707602	QUEBRANGULO
1731	2	2707701	RIO LARGO
1732	2	2707800	ROTEIRO
1733	2	2707909	SANTA LUZIA DO NORTE
1734	2	2708006	SANTANA DO IPANEMA
1735	2	2708105	SANTANA DO MUNDAÚ
1736	2	2708204	SÃO BRÁS
1737	2	2708303	SÃO JOSÉ DA LAJE
1738	2	2708402	SÃO JOSÉ DA TAPERA
1739	2	2708501	SÃO LUÍS DO QUITUNDE
1740	2	2708600	SÃO MIGUEL DOS CAMPOS
1741	2	2708709	SÃO MIGUEL DOS MILAGRES
1742	2	2708808	SÃO SEBASTIÃO
1743	2	2708907	SATUBA
1744	2	2708956	SENADOR RUI PALMEIRA
1745	2	2709004	TANQUE D'ARCA
1746	2	2709103	TAQUARANA
1747	2	2709152	TEOTÔNIO VILELA
1748	2	2709202	TRAIPU
1749	2	2709301	UNIÃO DOS PALMARES
1750	2	2709400	VIÇOSA
1751	26	2800100	AMPARO DE SÃO FRANCISCO
1752	26	2800209	AQUIDABÃ
1753	26	2800308	ARACAJU
1754	26	2800407	ARAUÁ
1755	26	2800506	AREIA BRANCA
1756	26	2800605	BARRA DOS COQUEIROS
1757	26	2800670	BOQUIM
1758	26	2800704	BREJO GRANDE
1759	26	2801009	CAMPO DO BRITO
1760	26	2801108	CANHOBA
1761	26	2801207	CANINDÉ DE SÃO FRANCISCO
1762	26	2801306	CAPELA
1763	26	2801405	CARIRA
1764	26	2801504	CARMÓPOLIS
1765	26	2801603	CEDRO DE SÃO JOÃO
1766	26	2801702	CRISTINÁPOLIS
1767	26	2801900	CUMBE
1768	26	2802007	DIVINA PASTORA
1769	26	2802106	ESTÂNCIA
1770	26	2802205	FEIRA NOVA
1771	26	2802304	FREI PAULO
1772	26	2802403	GARARU
1773	26	2802502	GENERAL MAYNARD
1774	26	2802601	GRACHO CARDOSO
1775	26	2802700	ILHA DAS FLORES
1776	26	2802809	INDIAROBA
1777	26	2802908	ITABAIANA
1778	26	2803005	ITABAIANINHA
1779	26	2803104	ITABI
1780	26	2803203	ITAPORANGA D'AJUDA
1781	26	2803302	JAPARATUBA
1782	26	2803401	JAPOATÃ
1783	26	2803500	LAGARTO
1784	26	2803609	LARANJEIRAS
1785	26	2803708	MACAMBIRA
1786	26	2803807	MALHADA DOS BOIS
1787	26	2803906	MALHADOR
1788	26	2804003	MARUIM
1789	26	2804102	MOITA BONITA
1790	26	2804201	MONTE ALEGRE DE SERGIPE
1791	26	2804300	MURIBECA
1792	26	2804409	NEÓPOLIS
1793	26	2804458	NOSSA SENHORA APARECIDA
1794	26	2804508	NOSSA SENHORA DA GLÓRIA
1795	26	2804607	NOSSA SENHORA DAS DORES
1796	26	2804706	NOSSA SENHORA DE LOURDES
1797	26	2804805	NOSSA SENHORA DO SOCORRO
1798	26	2804904	PACATUBA
1799	26	2805000	PEDRA MOLE
1800	26	2805109	PEDRINHAS
1801	26	2805208	PINHÃO
1802	26	2805307	PIRAMBU
1803	26	2805406	POÇO REDONDO
1804	26	2805505	POÇO VERDE
1805	26	2805604	PORTO DA FOLHA
1806	26	2805703	PROPRIÁ
1807	26	2805802	RIACHÃO DO DANTAS
1808	26	2805901	RIACHUELO
1809	26	2806008	RIBEIRÓPOLIS
1810	26	2806107	ROSÁRIO DO CATETE
1811	26	2806206	SALGADO
1812	26	2806305	SANTA LUZIA DO ITANHY
1813	26	2806404	SANTANA DO SÃO FRANCISCO
1814	26	2806503	SANTA ROSA DE LIMA
1815	26	2806602	SANTO AMARO DAS BROTAS
1816	26	2806701	SÃO CRISTÓVÃO
1817	26	2806800	SÃO DOMINGOS
1818	26	2806909	SÃO FRANCISCO
1819	26	2807006	SÃO MIGUEL DO ALEIXO
1820	26	2807105	SIMÃO DIAS
1821	26	2807204	SIRIRI
1822	26	2807303	TELHA
1823	26	2807402	TOBIAS BARRETO
1824	26	2807501	TOMAR DO GERU
1825	26	2807600	UMBAÚBA
1826	5	2900108	ABAÍRA
1827	5	2900207	ABARÉ
1828	5	2900306	ACAJUTIBA
1829	5	2900355	ADUSTINA
1830	5	2900405	ÁGUA FRIA
1831	5	2900504	ÉRICO CARDOSO
1832	5	2900603	AIQUARA
1833	5	2900702	ALAGOINHAS
1834	5	2900801	ALCOBAÇA
1835	5	2900900	ALMADINA
1836	5	2901007	AMARGOSA
1837	5	2901106	AMÉLIA RODRIGUES
1838	5	2901155	AMÉRICA DOURADA
1839	5	2901205	ANAGÉ
1840	5	2901304	ANDARAÍ
1841	5	2901353	ANDORINHA
1842	5	2901403	ANGICAL
1843	5	2901502	ANGUERA
1844	5	2901601	ANTAS
1845	5	2901700	ANTÔNIO CARDOSO
1846	5	2901809	ANTÔNIO GONÇALVES
1847	5	2901908	APORÁ
1848	5	2901957	APUAREMA
1849	5	2902005	ARACATU
1850	5	2902054	ARAÇAS
1851	5	2902104	ARACI
1852	5	2902203	ARAMARI
1853	5	2902252	ARATACA
1854	5	2902302	ARATUÍPE
1855	5	2902401	AURELINO LEAL
1856	5	2902500	BAIANÓPOLIS
1857	5	2902609	BAIXA GRANDE
1858	5	2902658	BANZAÊ
1859	5	2902708	BARRA
1860	5	2902807	BARRA DA ESTIVA
1861	5	2902906	BARRA DO CHOÇA
1862	5	2903003	BARRA DO MENDES
1863	5	2903102	BARRA DO ROCHA
1864	5	2903201	BARREIRAS
1865	5	2903235	BARRO ALTO
1866	5	2903276	BARROCAS
1867	5	2903300	BARRO PRETO
1868	5	2903409	BELMONTE
1869	5	2903508	BELO CAMPO
1870	5	2903607	BIRITINGA
1871	5	2903706	BOA NOVA
1872	5	2903805	BOA VISTA DO TUPIM
1873	5	2903904	BOM JESUS DA LAPA
1874	5	2903953	BOM JESUS DA SERRA
1875	5	2904001	BONINAL
1876	5	2904050	BONITO
1877	5	2904100	BOQUIRA
1878	5	2904209	BOTUPORÃ
1879	5	2904308	BREJÕES
1880	5	2904407	BREJOLÂNDIA
1881	5	2904506	BROTAS DE MACAÚBAS
1882	5	2904605	BRUMADO
1883	5	2904704	BUERAREMA
1884	5	2904753	BURITIRAMA
1885	5	2904803	CAATIBA
1886	5	2904852	CABACEIRAS DO PARAGUAÇU
1887	5	2904902	CACHOEIRA
1888	5	2905008	CACULÉ
1889	5	2905107	CAÉM
1890	5	2905156	CAETANOS
1891	5	2905206	CAETITÉ
1892	5	2905305	CAFARNAUM
1893	5	2905404	CAIRU
1894	5	2905503	CALDEIRÃO GRANDE
1895	5	2905602	CAMACAN
1896	5	2905701	CAMAÇARI
1897	5	2905800	CAMAMU
1898	5	2905909	CAMPO ALEGRE DE LOURDES
1899	5	2906006	CAMPO FORMOSO
1900	5	2906105	CANÁPOLIS
1901	5	2906204	CANARANA
1902	5	2906303	CANAVIEIRAS
1903	5	2906402	CANDEAL
1904	5	2906501	CANDEIAS
1905	5	2906600	CANDIBA
1906	5	2906709	CÂNDIDO SALES
1907	5	2906808	CANSANÇÃO
1908	5	2906824	CANUDOS
1909	5	2906857	CAPELA DO ALTO ALEGRE
1910	5	2906873	CAPIM GROSSO
1911	5	2906899	CARAÍBAS
1912	5	2906907	CARAVELAS
1913	5	2907004	CARDEAL DA SILVA
1914	5	2907103	CARINHANHA
1915	5	2907202	CASA NOVA
1916	5	2907301	CASTRO ALVES
1917	5	2907400	CATOLÂNDIA
1918	5	2907509	CATU
1919	5	2907558	CATURAMA
1920	5	2907608	CENTRAL
1921	5	2907707	CHORROCHÓ
1922	5	2907806	CÍCERO DANTAS
1923	5	2907905	CIPÓ
1924	5	2908002	COARACI
1925	5	2908101	COCOS
1926	5	2908200	CONCEIÇÃO DA FEIRA
1927	5	2908309	CONCEIÇÃO DO ALMEIDA
1928	5	2908408	CONCEIÇÃO DO COITÉ
1929	5	2908507	CONCEIÇÃO DO JACUÍPE
1930	5	2908606	CONDE
1931	5	2908705	CONDEÚBA
1932	5	2908804	CONTENDAS DO SINCORÁ
1933	5	2908903	CORAÇÃO DE MARIA
1934	5	2909000	CORDEIROS
1935	5	2909109	CORIBE
1936	5	2909208	CORONEL JOÃO SÁ
1937	5	2909307	CORRENTINA
1938	5	2909406	COTEGIPE
1939	5	2909505	CRAVOLÂNDIA
1940	5	2909604	CRISÓPOLIS
1941	5	2909703	CRISTÓPOLIS
1942	5	2909802	CRUZ DAS ALMAS
1943	5	2909901	CURAÇÁ
1944	5	2910008	DÁRIO MEIRA
1945	5	2910057	DIAS D'ÁVILA
1946	5	2910107	DOM BASÍLIO
1947	5	2910206	DOM MACEDO COSTA
1948	5	2910305	ELÍSIO MEDRADO
1949	5	2910404	ENCRUZILHADA
1950	5	2910503	ENTRE RIOS
1951	5	2910602	ESPLANADA
1952	5	2910701	EUCLIDES DA CUNHA
1953	5	2910727	EUNÁPOLIS
1954	5	2910750	FÁTIMA
1955	5	2910776	FEIRA DA MATA
1956	5	2910800	FEIRA DE SANTANA
1957	5	2910859	FILADÉLFIA
1958	5	2910909	FIRMINO ALVES
1959	5	2911006	FLORESTA AZUL
1960	5	2911105	FORMOSA DO RIO PRETO
1961	5	2911204	GANDU
1962	5	2911253	GAVIÃO
1963	5	2911303	GENTIO DO OURO
1964	5	2911402	GLÓRIA
1965	5	2911501	GONGOGI
1966	5	2911600	GOVERNADOR MANGABEIRA
1967	5	2911659	GUAJERU
1968	5	2911709	GUANAMBI
1969	5	2911808	GUARATINGA
1970	5	2911857	HELIÓPOLIS
1971	5	2911907	IAÇU
1972	5	2912004	IBIASSUCÊ
1973	5	2912103	IBICARAÍ
1974	5	2912202	IBICOARA
1975	5	2912301	IBICUÍ
1976	5	2912400	IBIPEBA
1977	5	2912509	IBIPITANGA
1978	5	2912608	IBIQUERA
1979	5	2912707	IBIRAPITANGA
1980	5	2912806	IBIRAPUÃ
1981	5	2912905	IBIRATAIA
1982	5	2913002	IBITIARA
1983	5	2913101	IBITITÁ
1984	5	2913200	IBOTIRAMA
1985	5	2913309	ICHU
1986	5	2913408	IGAPORÃ
1987	5	2913457	IGRAPIÚNA
1988	5	2913507	IGUAÍ
1989	5	2913606	ILHÉUS
1990	5	2913705	INHAMBUPE
1991	5	2913804	IPECAETÁ
1992	5	2913903	IPIAÚ
1993	5	2914000	IPIRÁ
1994	5	2914109	IPUPIARA
1995	5	2914208	IRAJUBA
1996	5	2914307	IRAMAIA
1997	5	2914406	IRAQUARA
1998	5	2914505	IRARÁ
1999	5	2914604	IRECÊ
2000	5	2914653	ITABELA
2001	5	2914703	ITABERABA
2002	5	2914802	ITABUNA
2003	5	2914901	ITACARÉ
2004	5	2915007	ITAETÉ
2005	5	2915106	ITAGI
2006	5	2915205	ITAGIBÁ
2007	5	2915304	ITAGIMIRIM
2008	5	2915353	ITAGUAÇU DA BAHIA
2009	5	2915403	ITAJU DO COLÔNIA
2010	5	2915502	ITAJUÍPE
2011	5	2915601	ITAMARAJU
2012	5	2915700	ITAMARI
2013	5	2915809	ITAMBÉ
2014	5	2915908	ITANAGRA
2015	5	2916005	ITANHÉM
2016	5	2916104	ITAPARICA
2017	5	2916203	ITAPÉ
2018	5	2916302	ITAPEBI
2019	5	2916401	ITAPETINGA
2020	5	2916500	ITAPICURU
2021	5	2916609	ITAPITANGA
2022	5	2916708	ITAQUARA
2023	5	2916807	ITARANTIM
2024	5	2916856	ITATIM
2025	5	2916906	ITIRUÇU
2026	5	2917003	ITIÚBA
2027	5	2917102	ITORORÓ
2028	5	2917201	ITUAÇU
2029	5	2917300	ITUBERÁ
2030	5	2917334	IUIÚ
2031	5	2917359	JABORANDI
2032	5	2917409	JACARACI
2033	5	2917508	JACOBINA
2034	5	2917607	JAGUAQUARA
2035	5	2917706	JAGUARARI
2036	5	2917805	JAGUARIPE
2037	5	2917904	JANDAÍRA
2038	5	2918001	JEQUIÉ
2039	5	2918100	JEREMOABO
2040	5	2918209	JIQUIRIÇÁ
2041	5	2918308	JITAÚNA
2042	5	2918357	JOÃO DOURADO
2043	5	2918407	JUAZEIRO
2044	5	2918456	JUCURUÇU
2045	5	2918506	JUSSARA
2046	5	2918555	JUSSARI
2047	5	2918605	JUSSIAPE
2048	5	2918704	LAFAIETE COUTINHO
2049	5	2918753	LAGOA REAL
2050	5	2918803	LAJE
2051	5	2918902	LAJEDÃO
2052	5	2919009	LAJEDINHO
2053	5	2919058	LAJEDO DO TABOCAL
2054	5	2919108	LAMARÃO
2055	5	2919157	LAPÃO
2056	5	2919207	LAURO DE FREITAS
2057	5	2919306	LENÇÓIS
2058	5	2919405	LICÍNIO DE ALMEIDA
2059	5	2919504	LIVRAMENTO DE NOSSA SENHORA
2060	5	2919553	LUÍS EDUARDO MAGALHÃES
2061	5	2919603	MACAJUBA
2062	5	2919702	MACARANI
2063	5	2919801	MACAÚBAS
2064	5	2919900	MACURURÉ
2065	5	2919926	MADRE DE DEUS
2066	5	2919959	MAETINGA
2067	5	2920007	MAIQUINIQUE
2068	5	2920106	MAIRI
2069	5	2920205	MALHADA
2070	5	2920304	MALHADA DE PEDRAS
2071	5	2920403	MANOEL VITORINO
2072	5	2920452	MANSIDÃO
2073	5	2920502	MARACÁS
2074	5	2920601	MARAGOGIPE
2075	5	2920700	MARAÚ
2076	5	2920809	MARCIONÍLIO SOUZA
2077	5	2920908	MASCOTE
2078	5	2921005	MATA DE SÃO JOÃO
2079	5	2921054	MATINA
2080	5	2921104	MEDEIROS NETO
2081	5	2921203	MIGUEL CALMON
2082	5	2921302	MILAGRES
2083	5	2921401	MIRANGABA
2084	5	2921450	MIRANTE
2085	5	2921500	MONTE SANTO
2086	5	2921609	MORPARÁ
2087	5	2921708	MORRO DO CHAPÉU
2088	5	2921807	MORTUGABA
2089	5	2921906	MUCUGÊ
2090	5	2922003	MUCURI
2091	5	2922052	MULUNGU DO MORRO
2092	5	2922102	MUNDO NOVO
2093	5	2922201	MUNIZ FERREIRA
2094	5	2922250	MUQUÉM DE SÃO FRANCISCO
2095	5	2922300	MURITIBA
2096	5	2922409	MUTUÍPE
2097	5	2922508	NAZARÉ
2098	5	2922607	NILO PEÇANHA
2099	5	2922656	NORDESTINA
2100	5	2922706	NOVA CANAÃ
2101	5	2922730	NOVA FÁTIMA
2102	5	2922755	NOVA IBIÁ
2103	5	2922805	NOVA ITARANA
2104	5	2922854	NOVA REDENÇÃO
2105	5	2922904	NOVA SOURE
2106	5	2923001	NOVA VIÇOSA
2107	5	2923035	NOVO HORIZONTE
2108	5	2923050	NOVO TRIUNFO
2109	5	2923100	OLINDINA
2110	5	2923209	OLIVEIRA DOS BREJINHOS
2111	5	2923308	OURIÇANGAS
2112	5	2923357	OUROLÂNDIA
2113	5	2923407	PALMAS DE MONTE ALTO
2114	5	2923506	PALMEIRAS
2115	5	2923605	PARAMIRIM
2116	5	2923704	PARATINGA
2117	5	2923803	PARIPIRANGA
2118	5	2923902	PAU BRASIL
2119	5	2924009	PAULO AFONSO
2120	5	2924058	PÉ DE SERRA
2121	5	2924108	PEDRÃO
2122	5	2924207	PEDRO ALEXANDRE
2123	5	2924306	PIATÃ
2124	5	2924405	PILÃO ARCADO
2125	5	2924504	PINDAÍ
2126	5	2924603	PINDOBAÇU
2127	5	2924652	PINTADAS
2128	5	2924678	PIRAÍ DO NORTE
2129	5	2924702	PIRIPÁ
2130	5	2924801	PIRITIBA
2131	5	2924900	PLANALTINO
2132	5	2925006	PLANALTO
2133	5	2925105	POÇÕES
2134	5	2925204	POJUCA
2135	5	2925253	PONTO NOVO
2136	5	2925303	PORTO SEGURO
2137	5	2925402	POTIRAGUÁ
2138	5	2925501	PRADO
2139	5	2925600	PRESIDENTE DUTRA
2140	5	2925709	PRESIDENTE JÂNIO QUADROS
2141	5	2925758	PRESIDENTE TANCREDO NEVES
2142	5	2925808	QUEIMADAS
2143	5	2925907	QUIJINGUE
2144	5	2925931	QUIXABEIRA
2145	5	2925956	RAFAEL JAMBEIRO
2146	5	2926004	REMANSO
2147	5	2926103	RETIROLÂNDIA
2148	5	2926202	RIACHÃO DAS NEVES
2149	5	2926301	RIACHÃO DO JACUÍPE
2150	5	2926400	RIACHO DE SANTANA
2151	5	2926509	RIBEIRA DO AMPARO
2152	5	2926608	RIBEIRA DO POMBAL
2153	5	2926657	RIBEIRÃO DO LARGO
2154	5	2926707	RIO DE CONTAS
2155	5	2926806	RIO DO ANTÔNIO
2156	5	2926905	RIO DO PIRES
2157	5	2927002	RIO REAL
2158	5	2927101	RODELAS
2159	5	2927200	RUY BARBOSA
2160	5	2927309	SALINAS DA MARGARIDA
2161	5	2927408	SALVADOR
2162	5	2927507	SANTA BÁRBARA
2163	5	2927606	SANTA BRÍGIDA
2164	5	2927705	SANTA CRUZ CABRÁLIA
2165	5	2927804	SANTA CRUZ DA VITÓRIA
2166	5	2927903	SANTA INÊS
2167	5	2928000	SANTALUZ
2168	5	2928059	SANTA LUZIA
2169	5	2928109	SANTA MARIA DA VITÓRIA
2170	5	2928208	SANTANA
2171	5	2928307	SANTANÓPOLIS
2172	5	2928406	SANTA RITA DE CÁSSIA
2173	5	2928505	SANTA TERESINHA
2174	5	2928604	SANTO AMARO
2175	5	2928703	SANTO ANTÔNIO DE JESUS
2176	5	2928802	SANTO ESTÊVÃO
2177	5	2928901	SÃO DESIDÉRIO
2178	5	2928950	SÃO DOMINGOS
2179	5	2929008	SÃO FÉLIX
2180	5	2929057	SÃO FÉLIX DO CORIBE
2181	5	2929107	SÃO FELIPE
2182	5	2929206	SÃO FRANCISCO DO CONDE
2183	5	2929255	SÃO GABRIEL
2184	5	2929305	SÃO GONÇALO DOS CAMPOS
2185	5	2929354	SÃO JOSÉ DA VITÓRIA
2186	5	2929370	SÃO JOSÉ DO JACUÍPE
2187	5	2929404	SÃO MIGUEL DAS MATAS
2188	5	2929503	SÃO SEBASTIÃO DO PASSÉ
2189	5	2929602	SAPEAÇU
2190	5	2929701	SÁTIRO DIAS
2191	5	2929750	SAUBARA
2192	5	2929800	SAÚDE
2193	5	2929909	SEABRA
2194	5	2930006	SEBASTIÃO LARANJEIRAS
2195	5	2930105	SENHOR DO BONFIM
2196	5	2930154	SERRA DO RAMALHO
2197	5	2930204	SENTO SÉ
2198	5	2930303	SERRA DOURADA
2199	5	2930402	SERRA PRETA
2200	5	2930501	SERRINHA
2201	5	2930600	SERROLÂNDIA
2202	5	2930709	SIMÕES FILHO
2203	5	2930758	SÍTIO DO MATO
2204	5	2930766	SÍTIO DO QUINTO
2205	5	2930774	SOBRADINHO
2206	5	2930808	SOUTO SOARES
2207	5	2930907	TABOCAS DO BREJO VELHO
2208	5	2931004	TANHAÇU
2209	5	2931053	TANQUE NOVO
2210	5	2931103	TANQUINHO
2211	5	2931202	TAPEROÁ
2212	5	2931301	TAPIRAMUTÁ
2213	5	2931350	TEIXEIRA DE FREITAS
2214	5	2931400	TEODORO SAMPAIO
2215	5	2931509	TEOFILÂNDIA
2216	5	2931608	TEOLÂNDIA
2217	5	2931707	TERRA NOVA
2218	5	2931806	TREMEDAL
2219	5	2931905	TUCANO
2220	5	2932002	UAUÁ
2221	5	2932101	UBAÍRA
2222	5	2932200	UBAITABA
2223	5	2932309	UBATÃ
2224	5	2932408	UIBAÍ
2225	5	2932457	UMBURANAS
2226	5	2932507	UNA
2227	5	2932606	URANDI
2228	5	2932705	URUÇUCA
2229	5	2932804	UTINGA
2230	5	2932903	VALENÇA
2231	5	2933000	VALENTE
2232	5	2933059	VÁRZEA DA ROÇA
2233	5	2933109	VÁRZEA DO POÇO
2234	5	2933158	VÁRZEA NOVA
2235	5	2933174	VARZEDO
2236	5	2933208	VERA CRUZ
2237	5	2933257	VEREDA
2238	5	2933307	VITÓRIA DA CONQUISTA
2239	5	2933406	WAGNER
2240	5	2933455	WANDERLEY
2241	5	2933505	WENCESLAU GUIMARÃES
2242	5	2933604	XIQUE-XIQUE
2243	13	3100104	ABADIA DOS DOURADOS
2244	13	3100203	ABAETÉ
2245	13	3100302	ABRE CAMPO
2246	13	3100401	ACAIACA
2247	13	3100500	AÇUCENA
2248	13	3100609	ÁGUA BOA
2249	13	3100708	ÁGUA COMPRIDA
2250	13	3100807	AGUANIL
2251	13	3100906	ÁGUAS FORMOSAS
2252	13	3101003	ÁGUAS VERMELHAS
2253	13	3101102	AIMORÉS
2254	13	3101201	AIURUOCA
2255	13	3101300	ALAGOA
2256	13	3101409	ALBERTINA
2257	13	3101508	ALÉM PARAÍBA
2258	13	3101607	ALFENAS
2259	13	3101631	ALFREDO VASCONCELOS
2260	13	3101706	ALMENARA
2261	13	3101805	ALPERCATA
2262	13	3101904	ALPINÓPOLIS
2263	13	3102001	ALTEROSA
2264	13	3102050	ALTO CAPARAÓ
2265	13	3102100	ALTO RIO DOCE
2266	13	3102209	ALVARENGA
2267	13	3102308	ALVINÓPOLIS
2268	13	3102407	ALVORADA DE MINAS
2269	13	3102506	AMPARO DO SERRA
2270	13	3102605	ANDRADAS
2271	13	3102704	CACHOEIRA DE PAJEÚ
2272	13	3102803	ANDRELÂNDIA
2273	13	3102852	ANGELÂNDIA
2274	13	3102902	ANTÔNIO CARLOS
2275	13	3103009	ANTÔNIO DIAS
2276	13	3103108	ANTÔNIO PRADO DE MINAS
2277	13	3103207	ARAÇAÍ
2278	13	3103306	ARACITABA
2279	13	3103405	ARAÇUAÍ
2280	13	3103504	ARAGUARI
2281	13	3103603	ARANTINA
2282	13	3103702	ARAPONGA
2283	13	3103751	ARAPORÃ
2284	13	3103801	ARAPUÁ
2285	13	3103900	ARAÚJOS
2286	13	3104007	ARAXÁ
2287	13	3104106	ARCEBURGO
2288	13	3104205	ARCOS
2289	13	3104304	AREADO
2290	13	3104403	ARGIRITA
2291	13	3104452	ARICANDUVA
2292	13	3104502	ARINOS
2293	13	3104601	ASTOLFO DUTRA
2294	13	3104700	ATALÉIA
2295	13	3104809	AUGUSTO DE LIMA
2296	13	3104908	BAEPENDI
2297	13	3105004	BALDIM
2298	13	3105103	BAMBUÍ
2299	13	3105202	BANDEIRA
2300	13	3105301	BANDEIRA DO SUL
2301	13	3105400	BARÃO DE COCAIS
2302	13	3105509	BARÃO DE MONTE ALTO
2303	13	3105608	BARBACENA
2304	13	3105707	BARRA LONGA
2305	13	3105905	BARROSO
2306	13	3106002	BELA VISTA DE MINAS
2307	13	3106101	BELMIRO BRAGA
2308	13	3106200	BELO HORIZONTE
2309	13	3106309	BELO ORIENTE
2310	13	3106408	BELO VALE
2311	13	3106507	BERILO
2312	13	3106606	BERTÓPOLIS
2313	13	3106655	BERIZAL
2314	13	3106705	BETIM
2315	13	3106804	BIAS FORTES
2316	13	3106903	BICAS
2317	13	3107000	BIQUINHAS
2318	13	3107109	BOA ESPERANÇA
2319	13	3107208	BOCAINA DE MINAS
2320	13	3107307	BOCAIÚVA
2321	13	3107406	BOM DESPACHO
2322	13	3107505	BOM JARDIM DE MINAS
2323	13	3107604	BOM JESUS DA PENHA
2324	13	3107703	BOM JESUS DO AMPARO
2325	13	3107802	BOM JESUS DO GALHO
2326	13	3107901	BOM REPOUSO
2327	13	3108008	BOM SUCESSO
2328	13	3108107	BONFIM
2329	13	3108206	BONFINÓPOLIS DE MINAS
2330	13	3108255	BONITO DE MINAS
2331	13	3108305	BORDA DA MATA
2332	13	3108404	BOTELHOS
2333	13	3108503	BOTUMIRIM
2334	13	3108552	BRASILÂNDIA DE MINAS
2335	13	3108602	BRASÍLIA DE MINAS
2336	13	3108701	BRÁS PIRES
2337	13	3108800	BRAÚNAS
2338	13	3108909	BRASÓPOLIS
2339	13	3109006	BRUMADINHO
2340	13	3109105	BUENO BRANDÃO
2341	13	3109204	BUENÓPOLIS
2342	13	3109253	BUGRE
2343	13	3109303	BURITIS
2344	13	3109402	BURITIZEIRO
2345	13	3109451	CABECEIRA GRANDE
2346	13	3109501	CABO VERDE
2347	13	3109600	CACHOEIRA DA PRATA
2348	13	3109709	CACHOEIRA DE MINAS
2349	13	3109808	CACHOEIRA DOURADA
2350	13	3109907	CAETANÓPOLIS
2351	13	3110004	CAETÉ
2352	13	3110103	CAIANA
2353	13	3110202	CAJURI
2354	13	3110301	CALDAS
2355	13	3110400	CAMACHO
2356	13	3110509	CAMANDUCAIA
2357	13	3110608	CAMBUÍ
2358	13	3110707	CAMBUQUIRA
2359	13	3110806	CAMPANÁRIO
2360	13	3110905	CAMPANHA
2361	13	3111002	CAMPESTRE
2362	13	3111101	CAMPINA VERDE
2363	13	3111150	CAMPO AZUL
2364	13	3111200	CAMPO BELO
2365	13	3111309	CAMPO DO MEIO
2366	13	3111408	CAMPO FLORIDO
2367	13	3111507	CAMPOS ALTOS
2368	13	3111606	CAMPOS GERAIS
2369	13	3111705	CANAÃ
2370	13	3111804	CANÁPOLIS
2371	13	3111903	CANA VERDE
2372	13	3112000	CANDEIAS
2373	13	3112059	CANTAGALO
2374	13	3112109	CAPARAÓ
2375	13	3112208	CAPELA NOVA
2376	13	3112307	CAPELINHA
2377	13	3112406	CAPETINGA
2378	13	3112505	CAPIM BRANCO
2379	13	3112604	CAPINÓPOLIS
2380	13	3112653	CAPITÃO ANDRADE
2381	13	3112703	CAPITÃO ENÉAS
2382	13	3112802	CAPITÓLIO
2383	13	3112901	CAPUTIRA
2384	13	3113008	CARAÍ
2385	13	3113107	CARANAÍBA
2386	13	3113206	CARANDAÍ
2387	13	3113305	CARANGOLA
2388	13	3113404	CARATINGA
2389	13	3113503	CARBONITA
2390	13	3113602	CAREAÇU
2391	13	3113701	CARLOS CHAGAS
2392	13	3113800	CARMÉSIA
2393	13	3113909	CARMO DA CACHOEIRA
2394	13	3114006	CARMO DA MATA
2395	13	3114105	CARMO DE MINAS
2396	13	3114204	CARMO DO CAJURU
2397	13	3114303	CARMO DO PARANAÍBA
2398	13	3114402	CARMO DO RIO CLARO
2399	13	3114501	CARMÓPOLIS DE MINAS
2400	13	3114550	CARNEIRINHO
2401	13	3114600	CARRANCAS
2402	13	3114709	CARVALHÓPOLIS
2403	13	3114808	CARVALHOS
2404	13	3114907	CASA GRANDE
2405	13	3115003	CASCALHO RICO
2406	13	3115102	CÁSSIA
2407	13	3115201	CONCEIÇÃO DA BARRA DE MINAS
2408	13	3115300	CATAGUASES
2409	13	3115359	CATAS ALTAS
2410	13	3115409	CATAS ALTAS DA NORUEGA
2411	13	3115458	CATUJI
2412	13	3115474	CATUTI
2413	13	3115508	CAXAMBU
2414	13	3115607	CEDRO DO ABAETÉ
2415	13	3115706	CENTRAL DE MINAS
2416	13	3115805	CENTRALINA
2417	13	3115904	CHÁCARA
2418	13	3116001	CHALÉ
2419	13	3116100	CHAPADA DO NORTE
2420	13	3116159	CHAPADA GAÚCHA
2421	13	3116209	CHIADOR
2422	13	3116308	CIPOTÂNEA
2423	13	3116407	CLARAVAL
2424	13	3116506	CLARO DOS POÇÕES
2425	13	3116605	CLÁUDIO
2426	13	3116704	COIMBRA
2427	13	3116803	COLUNA
2428	13	3116902	COMENDADOR GOMES
2429	13	3117009	COMERCINHO
2430	13	3117108	CONCEIÇÃO DA APARECIDA
2431	13	3117207	CONCEIÇÃO DAS PEDRAS
2432	13	3117306	CONCEIÇÃO DAS ALAGOAS
2433	13	3117405	CONCEIÇÃO DE IPANEMA
2434	13	3117504	CONCEIÇÃO DO MATO DENTRO
2435	13	3117603	CONCEIÇÃO DO PARÁ
2436	13	3117702	CONCEIÇÃO DO RIO VERDE
2437	13	3117801	CONCEIÇÃO DOS OUROS
2438	13	3117836	CÔNEGO MARINHO
2439	13	3117876	CONFINS
2440	13	3117900	CONGONHAL
2441	13	3118007	CONGONHAS
2442	13	3118106	CONGONHAS DO NORTE
2443	13	3118205	CONQUISTA
2444	13	3118304	CONSELHEIRO LAFAIETE
2445	13	3118403	CONSELHEIRO PENA
2446	13	3118502	CONSOLAÇÃO
2447	13	3118601	CONTAGEM
2448	13	3118700	COQUEIRAL
2449	13	3118809	CORAÇÃO DE JESUS
2450	13	3118908	CORDISBURGO
2451	13	3119005	CORDISLÂNDIA
2452	13	3119104	CORINTO
2453	13	3119203	COROACI
2454	13	3119302	COROMANDEL
2455	13	3119401	CORONEL FABRICIANO
2456	13	3119500	CORONEL MURTA
2457	13	3119609	CORONEL PACHECO
2458	13	3119708	CORONEL XAVIER CHAVES
2459	13	3119807	CÓRREGO DANTA
2460	13	3119906	CÓRREGO DO BOM JESUS
2461	13	3119955	CÓRREGO FUNDO
2462	13	3120003	CÓRREGO NOVO
2463	13	3120102	COUTO DE MAGALHÃES DE MINAS
2464	13	3120151	CRISÓLITA
2465	13	3120201	CRISTAIS
2466	13	3120300	CRISTÁLIA
2467	13	3120409	CRISTIANO OTONI
2468	13	3120508	CRISTINA
2469	13	3120607	CRUCILÂNDIA
2470	13	3120706	CRUZEIRO DA FORTALEZA
2471	13	3120805	CRUZÍLIA
2472	13	3120839	CUPARAQUE
2473	13	3120870	CURRAL DE DENTRO
2474	13	3120904	CURVELO
2475	13	3121001	DATAS
2476	13	3121100	DELFIM MOREIRA
2477	13	3121209	DELFINÓPOLIS
2478	13	3121258	DELTA
2479	13	3121308	DESCOBERTO
2480	13	3121407	DESTERRO DE ENTRE RIOS
2481	13	3121506	DESTERRO DO MELO
2482	13	3121605	DIAMANTINA
2483	13	3121704	DIOGO DE VASCONCELOS
2484	13	3121803	DIONÍSIO
2485	13	3121902	DIVINÉSIA
2486	13	3122009	DIVINO
2487	13	3122108	DIVINO DAS LARANJEIRAS
2488	13	3122207	DIVINOLÂNDIA DE MINAS
2489	13	3122306	DIVINÓPOLIS
2490	13	3122355	DIVISA ALEGRE
2491	13	3122405	DIVISA NOVA
2492	13	3122454	DIVISÓPOLIS
2493	13	3122470	DOM BOSCO
2494	13	3122504	DOM CAVATI
2495	13	3122603	DOM JOAQUIM
2496	13	3122702	DOM SILVÉRIO
2497	13	3122801	DOM VIÇOSO
2498	13	3122900	DONA EUSÉBIA
2499	13	3123007	DORES DE CAMPOS
2500	13	3123106	DORES DE GUANHÃES
2501	13	3123205	DORES DO INDAIÁ
2502	13	3123304	DORES DO TURVO
2503	13	3123403	DORESÓPOLIS
2504	13	3123502	DOURADOQUARA
2505	13	3123528	DURANDÉ
2506	13	3123601	ELÓI MENDES
2507	13	3123700	ENGENHEIRO CALDAS
2508	13	3123809	ENGENHEIRO NAVARRO
2509	13	3123858	ENTRE FOLHAS
2510	13	3123908	ENTRE RIOS DE MINAS
2511	13	3124005	ERVÁLIA
2512	13	3124104	ESMERALDAS
2513	13	3124203	ESPERA FELIZ
2514	13	3124302	ESPINOSA
2515	13	3124401	ESPÍRITO SANTO DO DOURADO
2516	13	3124500	ESTIVA
2517	13	3124609	ESTRELA DALVA
2518	13	3124708	ESTRELA DO INDAIÁ
2519	13	3124807	ESTRELA DO SUL
2520	13	3124906	EUGENÓPOLIS
2521	13	3125002	EWBANK DA CÂMARA
2522	13	3125101	EXTREMA
2523	13	3125200	FAMA
2524	13	3125309	FARIA LEMOS
2525	13	3125408	FELÍCIO DOS SANTOS
2526	13	3125507	SÃO GONÇALO DO RIO PRETO
2527	13	3125606	FELISBURGO
2528	13	3125705	FELIXLÂNDIA
2529	13	3125804	FERNANDES TOURINHO
2530	13	3125903	FERROS
2531	13	3125952	FERVEDOURO
2532	13	3126000	FLORESTAL
2533	13	3126109	FORMIGA
2534	13	3126208	FORMOSO
2535	13	3126307	FORTALEZA DE MINAS
2536	13	3126406	FORTUNA DE MINAS
2537	13	3126505	FRANCISCO BADARÓ
2538	13	3126604	FRANCISCO DUMONT
2539	13	3126703	FRANCISCO SÁ
2540	13	3126752	FRANCISCÓPOLIS
2541	13	3126802	FREI GASPAR
2542	13	3126901	FREI INOCÊNCIO
2543	13	3126950	FREI LAGONEGRO
2544	13	3127008	FRONTEIRA
2545	13	3127057	FRONTEIRA DOS VALES
2546	13	3127073	FRUTA DE LEITE
2547	13	3127107	FRUTAL
2548	13	3127206	FUNILÂNDIA
2549	13	3127305	GALILÉIA
2550	13	3127339	GAMELEIRAS
2551	13	3127354	GLAUCILÂNDIA
2552	13	3127370	GOIABEIRA
2553	13	3127388	GOIANÁ
2554	13	3127404	GONÇALVES
2555	13	3127503	GONZAGA
2556	13	3127602	GOUVEIA
2557	13	3127701	GOVERNADOR VALADARES
2558	13	3127800	GRÃO MOGOL
2559	13	3127909	GRUPIARA
2560	13	3128006	GUANHÃES
2561	13	3128105	GUAPÉ
2562	13	3128204	GUARACIABA
2563	13	3128253	GUARACIAMA
2564	13	3128303	GUARANÉSIA
2565	13	3128402	GUARANI
2566	13	3128501	GUARARÁ
2567	13	3128600	GUARDA-MOR
2568	13	3128709	GUAXUPÉ
2569	13	3128808	GUIDOVAL
2570	13	3128907	GUIMARÂNIA
2571	13	3129004	GUIRICEMA
2572	13	3129103	GURINHATÃ
2573	13	3129202	HELIODORA
2574	13	3129301	IAPU
2575	13	3129400	IBERTIOGA
2576	13	3129509	IBIÁ
2577	13	3129608	IBIAÍ
2578	13	3129657	IBIRACATU
2579	13	3129707	IBIRACI
2580	13	3129806	IBIRITÉ
2581	13	3129905	IBITIÚRA DE MINAS
2582	13	3130002	IBITURUNA
2583	13	3130051	ICARAÍ DE MINAS
2584	13	3130101	IGARAPÉ
2585	13	3130200	IGARATINGA
2586	13	3130309	IGUATAMA
2587	13	3130408	IJACI
2588	13	3130507	ILICÍNEA
2589	13	3130556	IMBÉ DE MINAS
2590	13	3130606	INCONFIDENTES
2591	13	3130655	INDAIABIRA
2592	13	3130705	INDIANÓPOLIS
2593	13	3130804	INGAÍ
2594	13	3130903	INHAPIM
2595	13	3131000	INHAÚMA
2596	13	3131109	INIMUTABA
2597	13	3131158	IPABA
2598	13	3131208	IPANEMA
2599	13	3131307	IPATINGA
2600	13	3131406	IPIAÇU
2601	13	3131505	IPUIÚNA
2602	13	3131604	IRAÍ DE MINAS
2603	13	3131703	ITABIRA
2604	13	3131802	ITABIRINHA
2605	13	3131901	ITABIRITO
2606	13	3132008	ITACAMBIRA
2607	13	3132107	ITACARAMBI
2608	13	3132206	ITAGUARA
2609	13	3132305	ITAIPÉ
2610	13	3132404	ITAJUBÁ
2611	13	3132503	ITAMARANDIBA
2612	13	3132602	ITAMARATI DE MINAS
2613	13	3132701	ITAMBACURI
2614	13	3132800	ITAMBÉ DO MATO DENTRO
2615	13	3132909	ITAMOGI
2616	13	3133006	ITAMONTE
2617	13	3133105	ITANHANDU
2618	13	3133204	ITANHOMI
2619	13	3133303	ITAOBIM
2620	13	3133402	ITAPAGIPE
2621	13	3133501	ITAPECERICA
2622	13	3133600	ITAPEVA
2623	13	3133709	ITATIAIUÇU
2624	13	3133758	ITAÚ DE MINAS
2625	13	3133808	ITAÚNA
2626	13	3133907	ITAVERAVA
2627	13	3134004	ITINGA
2628	13	3134103	ITUETA
2629	13	3134202	ITUIUTABA
2630	13	3134301	ITUMIRIM
2631	13	3134400	ITURAMA
2632	13	3134509	ITUTINGA
2633	13	3134608	JABOTICATUBAS
2634	13	3134707	JACINTO
2635	13	3134806	JACUÍ
2636	13	3134905	JACUTINGA
2637	13	3135001	JAGUARAÇU
2638	13	3135050	JAÍBA
2639	13	3135076	JAMPRUCA
2640	13	3135100	JANAÚBA
2641	13	3135209	JANUÁRIA
2642	13	3135308	JAPARAÍBA
2643	13	3135357	JAPONVAR
2644	13	3135407	JECEABA
2645	13	3135456	JENIPAPO DE MINAS
2646	13	3135506	JEQUERI
2647	13	3135605	JEQUITAÍ
2648	13	3135704	JEQUITIBÁ
2649	13	3135803	JEQUITINHONHA
2650	13	3135902	JESUÂNIA
2651	13	3136009	JOAÍMA
2652	13	3136108	JOANÉSIA
2653	13	3136207	JOÃO MONLEVADE
2654	13	3136306	JOÃO PINHEIRO
2655	13	3136405	JOAQUIM FELÍCIO
2656	13	3136504	JORDÂNIA
2657	13	3136520	JOSÉ GONÇALVES DE MINAS
2658	13	3136553	JOSÉ RAYDAN
2659	13	3136579	JOSENÓPOLIS
2660	13	3136603	NOVA UNIÃO
2661	13	3136652	JUATUBA
2662	13	3136702	JUIZ DE FORA
2663	13	3136801	JURAMENTO
2664	13	3136900	JURUAIA
2665	13	3136959	JUVENÍLIA
2666	13	3137007	LADAINHA
2667	13	3137106	LAGAMAR
2668	13	3137205	LAGOA DA PRATA
2669	13	3137304	LAGOA DOS PATOS
2670	13	3137403	LAGOA DOURADA
2671	13	3137502	LAGOA FORMOSA
2672	13	3137536	LAGOA GRANDE
2673	13	3137601	LAGOA SANTA
2674	13	3137700	LAJINHA
2675	13	3137809	LAMBARI
2676	13	3137908	LAMIM
2677	13	3138005	LARANJAL
2678	13	3138104	LASSANCE
2679	13	3138203	LAVRAS
2680	13	3138302	LEANDRO FERREIRA
2681	13	3138351	LEME DO PRADO
2682	13	3138401	LEOPOLDINA
2683	13	3138500	LIBERDADE
2684	13	3138609	LIMA DUARTE
2685	13	3138625	LIMEIRA DO OESTE
2686	13	3138658	LONTRA
2687	13	3138674	LUISBURGO
2688	13	3138682	LUISLÂNDIA
2689	13	3138708	LUMINÁRIAS
2690	13	3138807	LUZ
2691	13	3138906	MACHACALIS
2692	13	3139003	MACHADO
2693	13	3139102	MADRE DE DEUS DE MINAS
2694	13	3139201	MALACACHETA
2695	13	3139250	MAMONAS
2696	13	3139300	MANGA
2697	13	3139409	MANHUAÇU
2698	13	3139508	MANHUMIRIM
2699	13	3139607	MANTENA
2700	13	3139706	MARAVILHAS
2701	13	3139805	MAR DE ESPANHA
2702	13	3139904	MARIA DA FÉ
2703	13	3140001	MARIANA
2704	13	3140100	MARILAC
2705	13	3140159	MÁRIO CAMPOS
2706	13	3140209	MARIPÁ DE MINAS
2707	13	3140308	MARLIÉRIA
2708	13	3140407	MARMELÓPOLIS
2709	13	3140506	MARTINHO CAMPOS
2710	13	3140530	MARTINS SOARES
2711	13	3140555	MATA VERDE
2712	13	3140605	MATERLÂNDIA
2713	13	3140704	MATEUS LEME
2714	13	3140803	MATIAS BARBOSA
2715	13	3140852	MATIAS CARDOSO
2716	13	3140902	MATIPÓ
2717	13	3141009	MATO VERDE
2718	13	3141108	MATOZINHOS
2719	13	3141207	MATUTINA
2720	13	3141306	MEDEIROS
2721	13	3141405	MEDINA
2722	13	3141504	MENDES PIMENTEL
2723	13	3141603	MERCÊS
2724	13	3141702	MESQUITA
2725	13	3141801	MINAS NOVAS
2726	13	3141900	MINDURI
2727	13	3142007	MIRABELA
2728	13	3142106	MIRADOURO
2729	13	3142205	MIRAÍ
2730	13	3142254	MIRAVÂNIA
2731	13	3142304	MOEDA
2732	13	3142403	MOEMA
2733	13	3142502	MONJOLOS
2734	13	3142601	MONSENHOR PAULO
2735	13	3142700	MONTALVÂNIA
2736	13	3142809	MONTE ALEGRE DE MINAS
2737	13	3142908	MONTE AZUL
2738	13	3143005	MONTE BELO
2739	13	3143104	MONTE CARMELO
2740	13	3143153	MONTE FORMOSO
2741	13	3143203	MONTE SANTO DE MINAS
2742	13	3143302	MONTES CLAROS
2743	13	3143401	MONTE SIÃO
2744	13	3143450	MONTEZUMA
2745	13	3143500	MORADA NOVA DE MINAS
2746	13	3143609	MORRO DA GARÇA
2747	13	3143708	MORRO DO PILAR
2748	13	3143807	MUNHOZ
2749	13	3143906	MURIAÉ
2750	13	3144003	MUTUM
2751	13	3144102	MUZAMBINHO
2752	13	3144201	NACIP RAYDAN
2753	13	3144300	NANUQUE
2754	13	3144359	NAQUE
2755	13	3144375	NATALÂNDIA
2756	13	3144409	NATÉRCIA
2757	13	3144508	NAZARENO
2758	13	3144607	NEPOMUCENO
2759	13	3144656	NINHEIRA
2760	13	3144672	NOVA BELÉM
2761	13	3144706	NOVA ERA
2762	13	3144805	NOVA LIMA
2763	13	3144904	NOVA MÓDICA
2764	13	3145000	NOVA PONTE
2765	13	3145059	NOVA PORTEIRINHA
2766	13	3145109	NOVA RESENDE
2767	13	3145208	NOVA SERRANA
2768	13	3145307	NOVO CRUZEIRO
2769	13	3145356	NOVO ORIENTE DE MINAS
2770	13	3145372	NOVORIZONTE
2771	13	3145406	OLARIA
2772	13	3145455	OLHOS-D'ÁGUA
2773	13	3145505	OLÍMPIO NORONHA
2774	13	3145604	OLIVEIRA
2775	13	3145703	OLIVEIRA FORTES
2776	13	3145802	ONÇA DE PITANGUI
2777	13	3145851	ORATÓRIOS
2778	13	3145877	ORIZÂNIA
2779	13	3145901	OURO BRANCO
2780	13	3146008	OURO FINO
2781	13	3146107	OURO PRETO
2782	13	3146206	OURO VERDE DE MINAS
2783	13	3146255	PADRE CARVALHO
2784	13	3146305	PADRE PARAÍSO
2785	13	3146404	PAINEIRAS
2786	13	3146503	PAINS
2787	13	3146552	PAI PEDRO
2788	13	3146602	PAIVA
2789	13	3146701	PALMA
2790	13	3146750	PALMÓPOLIS
2791	13	3146909	PAPAGAIOS
2792	13	3147006	PARACATU
2793	13	3147105	PARÁ DE MINAS
2794	13	3147204	PARAGUAÇU
2795	13	3147303	PARAISÓPOLIS
2796	13	3147402	PARAOPEBA
2797	13	3147501	PASSABÉM
2798	13	3147600	PASSA QUATRO
2799	13	3147709	PASSA TEMPO
2800	13	3147808	PASSA-VINTE
2801	13	3147907	PASSOS
2802	13	3147956	PATIS
2803	13	3148004	PATOS DE MINAS
2804	13	3148103	PATROCÍNIO
2805	13	3148202	PATROCÍNIO DO MURIAÉ
2806	13	3148301	PAULA CÂNDIDO
2807	13	3148400	PAULISTAS
2808	13	3148509	PAVÃO
2809	13	3148608	PEÇANHA
2810	13	3148707	PEDRA AZUL
2811	13	3148756	PEDRA BONITA
2812	13	3148806	PEDRA DO ANTA
2813	13	3148905	PEDRA DO INDAIÁ
2814	13	3149002	PEDRA DOURADA
2815	13	3149101	PEDRALVA
2816	13	3149150	PEDRAS DE MARIA DA CRUZ
2817	13	3149200	PEDRINÓPOLIS
2818	13	3149309	PEDRO LEOPOLDO
2819	13	3149408	PEDRO TEIXEIRA
2820	13	3149507	PEQUERI
2821	13	3149606	PEQUI
2822	13	3149705	PERDIGÃO
2823	13	3149804	PERDIZES
2824	13	3149903	PERDÕES
2825	13	3149952	PERIQUITO
2826	13	3150000	PESCADOR
2827	13	3150109	PIAU
2828	13	3150158	PIEDADE DE CARATINGA
2829	13	3150208	PIEDADE DE PONTE NOVA
2830	13	3150307	PIEDADE DO RIO GRANDE
2831	13	3150406	PIEDADE DOS GERAIS
2832	13	3150505	PIMENTA
2833	13	3150539	PINGO-D'ÁGUA
2834	13	3150570	PINTÓPOLIS
2835	13	3150604	PIRACEMA
2836	13	3150703	PIRAJUBA
2837	13	3150802	PIRANGA
2838	13	3150901	PIRANGUÇU
2839	13	3151008	PIRANGUINHO
2840	13	3151107	PIRAPETINGA
2841	13	3151206	PIRAPORA
2842	13	3151305	PIRAÚBA
2843	13	3151404	PITANGUI
2844	13	3151503	PIUMHI
2845	13	3151602	PLANURA
2846	13	3151701	POÇO FUNDO
2847	13	3151800	POÇOS DE CALDAS
2848	13	3151909	POCRANE
2849	13	3152006	POMPÉU
2850	13	3152105	PONTE NOVA
2851	13	3152131	PONTO CHIQUE
2852	13	3152170	PONTO DOS VOLANTES
2853	13	3152204	PORTEIRINHA
2854	13	3152303	PORTO FIRME
2855	13	3152402	POTÉ
2856	13	3152501	POUSO ALEGRE
2857	13	3152600	POUSO ALTO
2858	13	3152709	PRADOS
2859	13	3152808	PRATA
2860	13	3152907	PRATÁPOLIS
2861	13	3153004	PRATINHA
2862	13	3153103	PRESIDENTE BERNARDES
2863	13	3153202	PRESIDENTE JUSCELINO
2864	13	3153301	PRESIDENTE KUBITSCHEK
2865	13	3153400	PRESIDENTE OLEGÁRIO
2866	13	3153509	ALTO JEQUITIBÁ
2867	13	3153608	PRUDENTE DE MORAIS
2868	13	3153707	QUARTEL GERAL
2869	13	3153806	QUELUZITO
2870	13	3153905	RAPOSOS
2871	13	3154002	RAUL SOARES
2872	13	3154101	RECREIO
2873	13	3154150	REDUTO
2874	13	3154200	RESENDE COSTA
2875	13	3154309	RESPLENDOR
2876	13	3154408	RESSAQUINHA
2877	13	3154457	RIACHINHO
2878	13	3154507	RIACHO DOS MACHADOS
2879	13	3154606	RIBEIRÃO DAS NEVES
2880	13	3154705	RIBEIRÃO VERMELHO
2881	13	3154804	RIO ACIMA
2882	13	3154903	RIO CASCA
2883	13	3155009	RIO DOCE
2884	13	3155108	RIO DO PRADO
2885	13	3155207	RIO ESPERA
2886	13	3155306	RIO MANSO
2887	13	3155405	RIO NOVO
2888	13	3155504	RIO PARANAÍBA
2889	13	3155603	RIO PARDO DE MINAS
2890	13	3155702	RIO PIRACICABA
2891	13	3155801	RIO POMBA
2892	13	3155900	RIO PRETO
2893	13	3156007	RIO VERMELHO
2894	13	3156106	RITÁPOLIS
2895	13	3156205	ROCHEDO DE MINAS
2896	13	3156304	RODEIRO
2897	13	3156403	ROMARIA
2898	13	3156452	ROSÁRIO DA LIMEIRA
2899	13	3156502	RUBELITA
2900	13	3156601	RUBIM
2901	13	3156700	SABARÁ
2902	13	3156809	SABINÓPOLIS
2903	13	3156908	SACRAMENTO
2904	13	3157005	SALINAS
2905	13	3157104	SALTO DA DIVISA
2906	13	3157203	SANTA BÁRBARA
2907	13	3157252	SANTA BÁRBARA DO LESTE
2908	13	3157278	SANTA BÁRBARA DO MONTE VERDE
2909	13	3157302	SANTA BÁRBARA DO TUGÚRIO
2910	13	3157336	SANTA CRUZ DE MINAS
2911	13	3157377	SANTA CRUZ DE SALINAS
2912	13	3157401	SANTA CRUZ DO ESCALVADO
2913	13	3157500	SANTA EFIGÊNIA DE MINAS
2914	13	3157609	SANTA FÉ DE MINAS
2915	13	3157658	SANTA HELENA DE MINAS
2916	13	3157708	SANTA JULIANA
2917	13	3157807	SANTA LUZIA
2918	13	3157906	SANTA MARGARIDA
2919	13	3158003	SANTA MARIA DE ITABIRA
2920	13	3158102	SANTA MARIA DO SALTO
2921	13	3158201	SANTA MARIA DO SUAÇUÍ
2922	13	3158300	SANTANA DA VARGEM
2923	13	3158409	SANTANA DE CATAGUASES
2924	13	3158508	SANTANA DE PIRAPAMA
2925	13	3158607	SANTANA DO DESERTO
2926	13	3158706	SANTANA DO GARAMBÉU
2927	13	3158805	SANTANA DO JACARÉ
2928	13	3158904	SANTANA DO MANHUAÇU
2929	13	3158953	SANTANA DO PARAÍSO
2930	13	3159001	SANTANA DO RIACHO
2931	13	3159100	SANTANA DOS MONTES
2932	13	3159209	SANTA RITA DE CALDAS
2933	13	3159308	SANTA RITA DE JACUTINGA
2934	13	3159357	SANTA RITA DE MINAS
2935	13	3159407	SANTA RITA DE IBITIPOCA
2936	13	3159506	SANTA RITA DO ITUETO
2937	13	3159605	SANTA RITA DO SAPUCAÍ
2938	13	3159704	SANTA ROSA DA SERRA
2939	13	3159803	SANTA VITÓRIA
2940	13	3159902	SANTO ANTÔNIO DO AMPARO
2941	13	3160009	SANTO ANTÔNIO DO AVENTUREIRO
2942	13	3160108	SANTO ANTÔNIO DO GRAMA
2943	13	3160207	SANTO ANTÔNIO DO ITAMBÉ
2944	13	3160306	SANTO ANTÔNIO DO JACINTO
2945	13	3160405	SANTO ANTÔNIO DO MONTE
2946	13	3160454	SANTO ANTÔNIO DO RETIRO
2947	13	3160504	SANTO ANTÔNIO DO RIO ABAIXO
2948	13	3160603	SANTO HIPÓLITO
2949	13	3160702	SANTOS DUMONT
2950	13	3160801	SÃO BENTO ABADE
2951	13	3160900	SÃO BRÁS DO SUAÇUÍ
2952	13	3160959	SÃO DOMINGOS DAS DORES
2953	13	3161007	SÃO DOMINGOS DO PRATA
2954	13	3161056	SÃO FÉLIX DE MINAS
2955	13	3161106	SÃO FRANCISCO
2956	13	3161205	SÃO FRANCISCO DE PAULA
2957	13	3161304	SÃO FRANCISCO DE SALES
2958	13	3161403	SÃO FRANCISCO DO GLÓRIA
2959	13	3161502	SÃO GERALDO
2960	13	3161601	SÃO GERALDO DA PIEDADE
2961	13	3161650	SÃO GERALDO DO BAIXIO
2962	13	3161700	SÃO GONÇALO DO ABAETÉ
2963	13	3161809	SÃO GONÇALO DO PARÁ
2964	13	3161908	SÃO GONÇALO DO RIO ABAIXO
2965	13	3162005	SÃO GONÇALO DO SAPUCAÍ
2966	13	3162104	SÃO GOTARDO
2967	13	3162203	SÃO JOÃO BATISTA DO GLÓRIA
2968	13	3162252	SÃO JOÃO DA LAGOA
2969	13	3162302	SÃO JOÃO DA MATA
2970	13	3162401	SÃO JOÃO DA PONTE
2971	13	3162450	SÃO JOÃO DAS MISSÕES
2972	13	3162500	SÃO JOÃO DEL REI
2973	13	3162559	SÃO JOÃO DO MANHUAÇU
2974	13	3162575	SÃO JOÃO DO MANTENINHA
2975	13	3162609	SÃO JOÃO DO ORIENTE
2976	13	3162658	SÃO JOÃO DO PACUÍ
2977	13	3162708	SÃO JOÃO DO PARAÍSO
2978	13	3162807	SÃO JOÃO EVANGELISTA
2979	13	3162906	SÃO JOÃO NEPOMUCENO
2980	13	3162922	SÃO JOAQUIM DE BICAS
2981	13	3162948	SÃO JOSÉ DA BARRA
2982	13	3162955	SÃO JOSÉ DA LAPA
2983	13	3163003	SÃO JOSÉ DA SAFIRA
2984	13	3163102	SÃO JOSÉ DA VARGINHA
2985	13	3163201	SÃO JOSÉ DO ALEGRE
2986	13	3163300	SÃO JOSÉ DO DIVINO
2987	13	3163409	SÃO JOSÉ DO GOIABAL
2988	13	3163508	SÃO JOSÉ DO JACURI
2989	13	3163607	SÃO JOSÉ DO MANTIMENTO
2990	13	3163706	SÃO LOURENÇO
2991	13	3163805	SÃO MIGUEL DO ANTA
2992	13	3163904	SÃO PEDRO DA UNIÃO
2993	13	3164001	SÃO PEDRO DOS FERROS
2994	13	3164100	SÃO PEDRO DO SUAÇUÍ
2995	13	3164209	SÃO ROMÃO
2996	13	3164308	SÃO ROQUE DE MINAS
2997	13	3164407	SÃO SEBASTIÃO DA BELA VISTA
2998	13	3164431	SÃO SEBASTIÃO DA VARGEM ALEGRE
2999	13	3164472	SÃO SEBASTIÃO DO ANTA
3000	13	3164506	SÃO SEBASTIÃO DO MARANHÃO
3001	13	3164605	SÃO SEBASTIÃO DO OESTE
3002	13	3164704	SÃO SEBASTIÃO DO PARAÍSO
3003	13	3164803	SÃO SEBASTIÃO DO RIO PRETO
3004	13	3164902	SÃO SEBASTIÃO DO RIO VERDE
3005	13	3165008	SÃO TIAGO
3006	13	3165107	SÃO TOMÁS DE AQUINO
3007	13	3165206	SÃO THOMÉ DAS LETRAS
3008	13	3165305	SÃO VICENTE DE MINAS
3009	13	3165404	SAPUCAÍ-MIRIM
3010	13	3165503	SARDOÁ
3011	13	3165537	SARZEDO
3012	13	3165552	SETUBINHA
3013	13	3165560	SEM-PEIXE
3014	13	3165578	SENADOR AMARAL
3015	13	3165602	SENADOR CORTES
3016	13	3165701	SENADOR FIRMINO
3017	13	3165800	SENADOR JOSÉ BENTO
3018	13	3165909	SENADOR MODESTINO GONÇALVES
3019	13	3166006	SENHORA DE OLIVEIRA
3020	13	3166105	SENHORA DO PORTO
3021	13	3166204	SENHORA DOS REMÉDIOS
3022	13	3166303	SERICITA
3023	13	3166402	SERITINGA
3024	13	3166501	SERRA AZUL DE MINAS
3025	13	3166600	SERRA DA SAUDADE
3026	13	3166709	SERRA DOS AIMORÉS
3027	13	3166808	SERRA DO SALITRE
3028	13	3166907	SERRANIA
3029	13	3166956	SERRANÓPOLIS DE MINAS
3030	13	3167004	SERRANOS
3031	13	3167103	SERRO
3032	13	3167202	SETE LAGOAS
3033	13	3167301	SILVEIRÂNIA
3034	13	3167400	SILVIANÓPOLIS
3035	13	3167509	SIMÃO PEREIRA
3036	13	3167608	SIMONÉSIA
3037	13	3167707	SOBRÁLIA
3038	13	3167806	SOLEDADE DE MINAS
3039	13	3167905	TABULEIRO
3040	13	3168002	TAIOBEIRAS
3041	13	3168051	TAPARUBA
3042	13	3168101	TAPIRA
3043	13	3168200	TAPIRAÍ
3044	13	3168309	TAQUARAÇU DE MINAS
3045	13	3168408	TARUMIRIM
3046	13	3168507	TEIXEIRAS
3047	13	3168606	TEÓFILO OTONI
3048	13	3168705	TIMÓTEO
3049	13	3168804	TIRADENTES
3050	13	3168903	TIROS
3051	13	3169000	TOCANTINS
3052	13	3169059	TOCOS DO MOJI
3053	13	3169109	TOLEDO
3054	13	3169208	TOMBOS
3055	13	3169307	TRÊS CORAÇÕES
3056	13	3169356	TRÊS MARIAS
3057	13	3169406	TRÊS PONTAS
3058	13	3169505	TUMIRITINGA
3059	13	3169604	TUPACIGUARA
3060	13	3169703	TURMALINA
3061	13	3169802	TURVOLÂNDIA
3062	13	3169901	UBÁ
3063	13	3170008	UBAÍ
3064	13	3170057	UBAPORANGA
3065	13	3170107	UBERABA
3066	13	3170206	UBERLÂNDIA
3067	13	3170305	UMBURATIBA
3068	13	3170404	UNAÍ
3069	13	3170438	UNIÃO DE MINAS
3070	13	3170479	URUANA DE MINAS
3071	13	3170503	URUCÂNIA
3072	13	3170529	URUCUIA
3073	13	3170578	VARGEM ALEGRE
3074	13	3170602	VARGEM BONITA
3075	13	3170651	VARGEM GRANDE DO RIO PARDO
3076	13	3170701	VARGINHA
3077	13	3170750	VARJÃO DE MINAS
3078	13	3170800	VÁRZEA DA PALMA
3079	13	3170909	VARZELÂNDIA
3080	13	3171006	VAZANTE
3081	13	3171030	VERDELÂNDIA
3082	13	3171071	VEREDINHA
3083	13	3171105	VERÍSSIMO
3084	13	3171154	VERMELHO NOVO
3085	13	3171204	VESPASIANO
3086	13	3171303	VIÇOSA
3087	13	3171402	VIEIRAS
3088	13	3171501	MATHIAS LOBATO
3089	13	3171600	VIRGEM DA LAPA
3090	13	3171709	VIRGÍNIA
3091	13	3171808	VIRGINÓPOLIS
3092	13	3171907	VIRGOLÂNDIA
3093	13	3172004	VISCONDE DO RIO BRANCO
3094	13	3172103	VOLTA GRANDE
3095	13	3172202	WENCESLAU BRAZ
3096	8	3200102	AFONSO CLÁUDIO
3097	8	3200136	ÁGUIA BRANCA
3098	8	3200169	ÁGUA DOCE DO NORTE
3099	8	3200201	ALEGRE
3100	8	3200300	ALFREDO CHAVES
3101	8	3200359	ALTO RIO NOVO
3102	8	3200409	ANCHIETA
3103	8	3200508	APIACÁ
3104	8	3200607	ARACRUZ
3105	8	3200706	ATILIO VIVACQUA
3106	8	3200805	BAIXO GUANDU
3107	8	3200904	BARRA DE SÃO FRANCISCO
3108	8	3201001	BOA ESPERANÇA
3109	8	3201100	BOM JESUS DO NORTE
3110	8	3201159	BREJETUBA
3111	8	3201209	CACHOEIRO DE ITAPEMIRIM
3112	8	3201308	CARIACICA
3113	8	3201407	CASTELO
3114	8	3201506	COLATINA
3115	8	3201605	CONCEIÇÃO DA BARRA
3116	8	3201704	CONCEIÇÃO DO CASTELO
3117	8	3201803	DIVINO DE SÃO LOURENÇO
3118	8	3201902	DOMINGOS MARTINS
3119	8	3202009	DORES DO RIO PRETO
3120	8	3202108	ECOPORANGA
3121	8	3202207	FUNDÃO
3122	8	3202256	GOVERNADOR LINDENBERG
3123	8	3202306	GUAÇUÍ
3124	8	3202405	GUARAPARI
3125	8	3202454	IBATIBA
3126	8	3202504	IBIRAÇU
3127	8	3202553	IBITIRAMA
3128	8	3202603	ICONHA
3129	8	3202652	IRUPI
3130	8	3202702	ITAGUAÇU
3131	8	3202801	ITAPEMIRIM
3132	8	3202900	ITARANA
3133	8	3203007	IÚNA
3134	8	3203056	JAGUARÉ
3135	8	3203106	JERÔNIMO MONTEIRO
3136	8	3203130	JOÃO NEIVA
3137	8	3203163	LARANJA DA TERRA
3138	8	3203205	LINHARES
3139	8	3203304	MANTENÓPOLIS
3140	8	3203320	MARATAÍZES
3141	8	3203346	MARECHAL FLORIANO
3142	8	3203353	MARILÂNDIA
3143	8	3203403	MIMOSO DO SUL
3144	8	3203502	MONTANHA
3145	8	3203601	MUCURICI
3146	8	3203700	MUNIZ FREIRE
3147	8	3203809	MUQUI
3148	8	3203908	NOVA VENÉCIA
3149	8	3204005	PANCAS
3150	8	3204054	PEDRO CANÁRIO
3151	8	3204104	PINHEIROS
3152	8	3204203	PIÚMA
3153	8	3204252	PONTO BELO
3154	8	3204302	PRESIDENTE KENNEDY
3155	8	3204351	RIO BANANAL
3156	8	3204401	RIO NOVO DO SUL
3157	8	3204500	SANTA LEOPOLDINA
3158	8	3204559	SANTA MARIA DE JETIBÁ
3159	8	3204609	SANTA TERESA
3160	8	3204658	SÃO DOMINGOS DO NORTE
3161	8	3204708	SÃO GABRIEL DA PALHA
3162	8	3204807	SÃO JOSÉ DO CALÇADO
3163	8	3204906	SÃO MATEUS
3164	8	3204955	SÃO ROQUE DO CANAÃ
3165	8	3205002	SERRA
3166	8	3205010	SOORETAMA
3167	8	3205036	VARGEM ALTA
3168	8	3205069	VENDA NOVA DO IMIGRANTE
3169	8	3205101	VIANA
3170	8	3205150	VILA PAVÃO
3171	8	3205176	VILA VALÉRIO
3172	8	3205200	VILA VELHA
3173	8	3205309	VITÓRIA
3174	19	3300100	ANGRA DOS REIS
3175	19	3300159	APERIBÉ
3176	19	3300209	ARARUAMA
3177	19	3300225	AREAL
3178	19	3300233	ARMAÇÃO DOS BÚZIOS
3179	19	3300258	ARRAIAL DO CABO
3180	19	3300308	BARRA DO PIRAÍ
3181	19	3300407	BARRA MANSA
3182	19	3300456	BELFORD ROXO
3183	19	3300506	BOM JARDIM
3184	19	3300605	BOM JESUS DO ITABAPOANA
3185	19	3300704	CABO FRIO
3186	19	3300803	CACHOEIRAS DE MACACU
3187	19	3300902	CAMBUCI
3188	19	3300936	CARAPEBUS
3189	19	3300951	COMENDADOR LEVY GASPARIAN
3190	19	3301009	CAMPOS DOS GOYTACAZES
3191	19	3301108	CANTAGALO
3192	19	3301157	CARDOSO MOREIRA
3193	19	3301207	CARMO
3194	19	3301306	CASIMIRO DE ABREU
3195	19	3301405	CONCEIÇÃO DE MACABU
3196	19	3301504	CORDEIRO
3197	19	3301603	DUAS BARRAS
3198	19	3301702	DUQUE DE CAXIAS
3199	19	3301801	ENGENHEIRO PAULO DE FRONTIN
3200	19	3301850	GUAPIMIRIM
3201	19	3301876	IGUABA GRANDE
3202	19	3301900	ITABORAÍ
3203	19	3302007	ITAGUAÍ
3204	19	3302056	ITALVA
3205	19	3302106	ITAOCARA
3206	19	3302205	ITAPERUNA
3207	19	3302254	ITATIAIA
3208	19	3302270	JAPERI
3209	19	3302304	LAJE DO MURIAÉ
3210	19	3302403	MACAÉ
3211	19	3302452	MACUCO
3212	19	3302502	MAGÉ
3213	19	3302601	MANGARATIBA
3214	19	3302700	MARICÁ
3215	19	3302809	MENDES
3216	19	3302858	MESQUITA
3217	19	3302908	MIGUEL PEREIRA
3218	19	3303005	MIRACEMA
3219	19	3303104	NATIVIDADE
3220	19	3303203	NILÓPOLIS
3221	19	3303302	NITERÓI
3222	19	3303401	NOVA FRIBURGO
3223	19	3303500	NOVA IGUAÇU
3224	19	3303609	PARACAMBI
3225	19	3303708	PARAÍBA DO SUL
3226	19	3303807	PARATI
3227	19	3303856	PATY DO ALFERES
3228	19	3303906	PETRÓPOLIS
3229	19	3303955	PINHEIRAL
3230	19	3304003	PIRAÍ
3231	19	3304102	PORCIÚNCULA
3232	19	3304110	PORTO REAL
3233	19	3304128	QUATIS
3234	19	3304144	QUEIMADOS
3235	19	3304151	QUISSAMÃ
3236	19	3304201	RESENDE
3237	19	3304300	RIO BONITO
3238	19	3304409	RIO CLARO
3239	19	3304508	RIO DAS FLORES
3240	19	3304524	RIO DAS OSTRAS
3241	19	3304557	RIO DE JANEIRO
3242	19	3304607	SANTA MARIA MADALENA
3243	19	3304706	SANTO ANTÔNIO DE PÁDUA
3244	19	3304755	SÃO FRANCISCO DE ITABAPOANA
3245	19	3304805	SÃO FIDÉLIS
3246	19	3304904	SÃO GONÇALO
3247	19	3305000	SÃO JOÃO DA BARRA
3248	19	3305109	SÃO JOÃO DE MERITI
3249	19	3305133	SÃO JOSÉ DE UBÁ
3250	19	3305158	SÃO JOSÉ DO VALE DO RIO PRETO
3251	19	3305208	SÃO PEDRO DA ALDEIA
3252	19	3305307	SÃO SEBASTIÃO DO ALTO
3253	19	3305406	SAPUCAIA
3254	19	3305505	SAQUAREMA
3255	19	3305554	SEROPÉDICA
3256	19	3305604	SILVA JARDIM
3257	19	3305703	SUMIDOURO
3258	19	3305752	TANGUÁ
3259	19	3305802	TERESÓPOLIS
3260	19	3305901	TRAJANO DE MORAIS
3261	19	3306008	TRÊS RIOS
3262	19	3306107	VALENÇA
3263	19	3306156	VARRE-SAI
3264	19	3306206	VASSOURAS
3265	19	3306305	VOLTA REDONDA
3266	25	3500105	ADAMANTINA
3267	25	3500204	ADOLFO
3268	25	3500303	AGUAÍ
3269	25	3500402	ÁGUAS DA PRATA
3270	25	3500501	ÁGUAS DE LINDÓIA
3271	25	3500550	ÁGUAS DE SANTA BÁRBARA
3272	25	3500600	ÁGUAS DE SÃO PEDRO
3273	25	3500709	AGUDOS
3274	25	3500758	ALAMBARI
3275	25	3500808	ALFREDO MARCONDES
3276	25	3500907	ALTAIR
3277	25	3501004	ALTINÓPOLIS
3278	25	3501103	ALTO ALEGRE
3279	25	3501152	ALUMÍNIO
3280	25	3501202	ÁLVARES FLORENCE
3281	25	3501301	ÁLVARES MACHADO
3282	25	3501400	ÁLVARO DE CARVALHO
3283	25	3501509	ALVINLÂNDIA
3284	25	3501608	AMERICANA
3285	25	3501707	AMÉRICO BRASILIENSE
3286	25	3501806	AMÉRICO DE CAMPOS
3287	25	3501905	AMPARO
3288	25	3502002	ANALÂNDIA
3289	25	3502101	ANDRADINA
3290	25	3502200	ANGATUBA
3291	25	3502309	ANHEMBI
3292	25	3502408	ANHUMAS
3293	25	3502507	APARECIDA
3294	25	3502606	APARECIDA D'OESTE
3295	25	3502705	APIAÍ
3296	25	3502754	ARAÇARIGUAMA
3297	25	3502804	ARAÇATUBA
3298	25	3502903	ARAÇOIABA DA SERRA
3299	25	3503000	ARAMINA
3300	25	3503109	ARANDU
3301	25	3503158	ARAPEÍ
3302	25	3503208	ARARAQUARA
3303	25	3503307	ARARAS
3304	25	3503356	ARCO-ÍRIS
3305	25	3503406	AREALVA
3306	25	3503505	AREIAS
3307	25	3503604	AREIÓPOLIS
3308	25	3503703	ARIRANHA
3309	25	3503802	ARTUR NOGUEIRA
3310	25	3503901	ARUJÁ
3311	25	3503950	ASPÁSIA
3312	25	3504008	ASSIS
3313	25	3504107	ATIBAIA
3314	25	3504206	AURIFLAMA
3315	25	3504305	AVAÍ
3316	25	3504404	AVANHANDAVA
3317	25	3504503	AVARÉ
3318	25	3504602	BADY BASSITT
3319	25	3504701	BALBINOS
3320	25	3504800	BÁLSAMO
3321	25	3504909	BANANAL
3322	25	3505005	BARÃO DE ANTONINA
3323	25	3505104	BARBOSA
3324	25	3505203	BARIRI
3325	25	3505302	BARRA BONITA
3326	25	3505351	BARRA DO CHAPÉU
3327	25	3505401	BARRA DO TURVO
3328	25	3505500	BARRETOS
3329	25	3505609	BARRINHA
3330	25	3505708	BARUERI
3331	25	3505807	BASTOS
3332	25	3505906	BATATAIS
3333	25	3506003	BAURU
3334	25	3506102	BEBEDOURO
3335	25	3506201	BENTO DE ABREU
3336	25	3506300	BERNARDINO DE CAMPOS
3337	25	3506359	BERTIOGA
3338	25	3506409	BILAC
3339	25	3506508	BIRIGUI
3340	25	3506607	BIRITIBA-MIRIM
3341	25	3506706	BOA ESPERANÇA DO SUL
3342	25	3506805	BOCAINA
3343	25	3506904	BOFETE
3344	25	3507001	BOITUVA
3345	25	3507100	BOM JESUS DOS PERDÕES
3346	25	3507159	BOM SUCESSO DE ITARARÉ
3347	25	3507209	BORÁ
3348	25	3507308	BORACÉIA
3349	25	3507407	BORBOREMA
3350	25	3507456	BOREBI
3351	25	3507506	BOTUCATU
3352	25	3507605	BRAGANÇA PAULISTA
3353	25	3507704	BRAÚNA
3354	25	3507753	BREJO ALEGRE
3355	25	3507803	BRODOWSKI
3356	25	3507902	BROTAS
3357	25	3508009	BURI
3358	25	3508108	BURITAMA
3359	25	3508207	BURITIZAL
3360	25	3508306	CABRÁLIA PAULISTA
3361	25	3508405	CABREÚVA
3362	25	3508504	CAÇAPAVA
3363	25	3508603	CACHOEIRA PAULISTA
3364	25	3508702	CACONDE
3365	25	3508801	CAFELÂNDIA
3366	25	3508900	CAIABU
3367	25	3509007	CAIEIRAS
3368	25	3509106	CAIUÁ
3369	25	3509205	CAJAMAR
3370	25	3509254	CAJATI
3371	25	3509304	CAJOBI
3372	25	3509403	CAJURU
3373	25	3509452	CAMPINA DO MONTE ALEGRE
3374	25	3509502	CAMPINAS
3375	25	3509601	CAMPO LIMPO PAULISTA
3376	25	3509700	CAMPOS DO JORDÃO
3377	25	3509809	CAMPOS NOVOS PAULISTA
3378	25	3509908	CANANÉIA
3379	25	3509957	CANAS
3380	25	3510005	CÂNDIDO MOTA
3381	25	3510104	CÂNDIDO RODRIGUES
3382	25	3510153	CANITAR
3383	25	3510203	CAPÃO BONITO
3384	25	3510302	CAPELA DO ALTO
3385	25	3510401	CAPIVARI
3386	25	3510500	CARAGUATATUBA
3387	25	3510609	CARAPICUÍBA
3388	25	3510708	CARDOSO
3389	25	3510807	CASA BRANCA
3390	25	3510906	CÁSSIA DOS COQUEIROS
3391	25	3511003	CASTILHO
3392	25	3511102	CATANDUVA
3393	25	3511201	CATIGUÁ
3394	25	3511300	CEDRAL
3395	25	3511409	CERQUEIRA CÉSAR
3396	25	3511508	CERQUILHO
3397	25	3511607	CESÁRIO LANGE
3398	25	3511706	CHARQUEADA
3399	25	3511904	CLEMENTINA
3400	25	3512001	COLINA
3401	25	3512100	COLÔMBIA
3402	25	3512209	CONCHAL
3403	25	3512308	CONCHAS
3404	25	3512407	CORDEIRÓPOLIS
3405	25	3512506	COROADOS
3406	25	3512605	CORONEL MACEDO
3407	25	3512704	CORUMBATAÍ
3408	25	3512803	COSMÓPOLIS
3409	25	3512902	COSMORAMA
3410	25	3513009	COTIA
3411	25	3513108	CRAVINHOS
3412	25	3513207	CRISTAIS PAULISTA
3413	25	3513306	CRUZÁLIA
3414	25	3513405	CRUZEIRO
3415	25	3513504	CUBATÃO
3416	25	3513603	CUNHA
3417	25	3513702	DESCALVADO
3418	25	3513801	DIADEMA
3419	25	3513850	DIRCE REIS
3420	25	3513900	DIVINOLÂNDIA
3421	25	3514007	DOBRADA
3422	25	3514106	DOIS CÓRREGOS
3423	25	3514205	DOLCINÓPOLIS
3424	25	3514304	DOURADO
3425	25	3514403	DRACENA
3426	25	3514502	DUARTINA
3427	25	3514601	DUMONT
3428	25	3514700	ECHAPORÃ
3429	25	3514809	ELDORADO
3430	25	3514908	ELIAS FAUSTO
3431	25	3514924	ELISIÁRIO
3432	25	3514957	EMBAÚBA
3433	25	3515004	EMBU
3434	25	3515103	EMBU-GUAÇU
3435	25	3515129	EMILIANÓPOLIS
3436	25	3515152	ENGENHEIRO COELHO
3437	25	3515186	ESPÍRITO SANTO DO PINHAL
3438	25	3515194	ESPÍRITO SANTO DO TURVO
3439	25	3515202	ESTRELA D'OESTE
3440	25	3515301	ESTRELA DO NORTE
3441	25	3515350	EUCLIDES DA CUNHA PAULISTA
3442	25	3515400	FARTURA
3443	25	3515509	FERNANDÓPOLIS
3444	25	3515608	FERNANDO PRESTES
3445	25	3515657	FERNÃO
3446	25	3515707	FERRAZ DE VASCONCELOS
3447	25	3515806	FLORA RICA
3448	25	3515905	FLOREAL
3449	25	3516002	FLÓRIDA PAULISTA
3450	25	3516101	FLORÍNIA
3451	25	3516200	FRANCA
3452	25	3516309	FRANCISCO MORATO
3453	25	3516408	FRANCO DA ROCHA
3454	25	3516507	GABRIEL MONTEIRO
3455	25	3516606	GÁLIA
3456	25	3516705	GARÇA
3457	25	3516804	GASTÃO VIDIGAL
3458	25	3516853	GAVIÃO PEIXOTO
3459	25	3516903	GENERAL SALGADO
3460	25	3517000	GETULINA
3461	25	3517109	GLICÉRIO
3462	25	3517208	GUAIÇARA
3463	25	3517307	GUAIMBÊ
3464	25	3517406	GUAÍRA
3465	25	3517505	GUAPIAÇU
3466	25	3517604	GUAPIARA
3467	25	3517703	GUARÁ
3468	25	3517802	GUARAÇAÍ
3469	25	3517901	GUARACI
3470	25	3518008	GUARANI D'OESTE
3471	25	3518107	GUARANTÃ
3472	25	3518206	GUARARAPES
3473	25	3518305	GUARAREMA
3474	25	3518404	GUARATINGUETÁ
3475	25	3518503	GUAREÍ
3476	25	3518602	GUARIBA
3477	25	3518701	GUARUJÁ
3478	25	3518800	GUARULHOS
3479	25	3518859	GUATAPARÁ
3480	25	3518909	GUZOLÂNDIA
3481	25	3519006	HERCULÂNDIA
3482	25	3519055	HOLAMBRA
3483	25	3519071	HORTOLÂNDIA
3484	25	3519105	IACANGA
3485	25	3519204	IACRI
3486	25	3519253	IARAS
3487	25	3519303	IBATÉ
3488	25	3519402	IBIRÁ
3489	25	3519501	IBIRAREMA
3490	25	3519600	IBITINGA
3491	25	3519709	IBIÚNA
3492	25	3519808	ICÉM
3493	25	3519907	IEPÊ
3494	25	3520004	IGARAÇU DO TIETÊ
3495	25	3520103	IGARAPAVA
3496	25	3520202	IGARATÁ
3497	25	3520301	IGUAPE
3498	25	3520400	ILHABELA
3499	25	3520426	ILHA COMPRIDA
3500	25	3520442	ILHA SOLTEIRA
3501	25	3520509	INDAIATUBA
3502	25	3520608	INDIANA
3503	25	3520707	INDIAPORÃ
3504	25	3520806	INÚBIA PAULISTA
3505	25	3520905	IPAUSSU
3506	25	3521002	IPERÓ
3507	25	3521101	IPEÚNA
3508	25	3521150	IPIGUÁ
3509	25	3521200	IPORANGA
3510	25	3521309	IPUÃ
3511	25	3521408	IRACEMÁPOLIS
3512	25	3521507	IRAPUÃ
3513	25	3521606	IRAPURU
3514	25	3521705	ITABERÁ
3515	25	3521804	ITAÍ
3516	25	3521903	ITAJOBI
3517	25	3522000	ITAJU
3518	25	3522109	ITANHAÉM
3519	25	3522158	ITAÓCA
3520	25	3522208	ITAPECERICA DA SERRA
3521	25	3522307	ITAPETININGA
3522	25	3522406	ITAPEVA
3523	25	3522505	ITAPEVI
3524	25	3522604	ITAPIRA
3525	25	3522653	ITAPIRAPUÃ PAULISTA
3526	25	3522703	ITÁPOLIS
3527	25	3522802	ITAPORANGA
3528	25	3522901	ITAPUÍ
3529	25	3523008	ITAPURA
3530	25	3523107	ITAQUAQUECETUBA
3531	25	3523206	ITARARÉ
3532	25	3523305	ITARIRI
3533	25	3523404	ITATIBA
3534	25	3523503	ITATINGA
3535	25	3523602	ITIRAPINA
3536	25	3523701	ITIRAPUÃ
3537	25	3523800	ITOBI
3538	25	3523909	ITU
3539	25	3524006	ITUPEVA
3540	25	3524105	ITUVERAVA
3541	25	3524204	JABORANDI
3542	25	3524303	JABOTICABAL
3543	25	3524402	JACAREÍ
3544	25	3524501	JACI
3545	25	3524600	JACUPIRANGA
3546	25	3524709	JAGUARIÚNA
3547	25	3524808	JALES
3548	25	3524907	JAMBEIRO
3549	25	3525003	JANDIRA
3550	25	3525102	JARDINÓPOLIS
3551	25	3525201	JARINU
3552	25	3525300	JAÚ
3553	25	3525409	JERIQUARA
3554	25	3525508	JOANÓPOLIS
3555	25	3525607	JOÃO RAMALHO
3556	25	3525706	JOSÉ BONIFÁCIO
3557	25	3525805	JÚLIO MESQUITA
3558	25	3525854	JUMIRIM
3559	25	3525904	JUNDIAÍ
3560	25	3526001	JUNQUEIRÓPOLIS
3561	25	3526100	JUQUIÁ
3562	25	3526209	JUQUITIBA
3563	25	3526308	LAGOINHA
3564	25	3526407	LARANJAL PAULISTA
3565	25	3526506	LAVÍNIA
3566	25	3526605	LAVRINHAS
3567	25	3526704	LEME
3568	25	3526803	LENÇÓIS PAULISTA
3569	25	3526902	LIMEIRA
3570	25	3527009	LINDÓIA
3571	25	3527108	LINS
3572	25	3527207	LORENA
3573	25	3527256	LOURDES
3574	25	3527306	LOUVEIRA
3575	25	3527405	LUCÉLIA
3576	25	3527504	LUCIANÓPOLIS
3577	25	3527603	LUÍS ANTÔNIO
3578	25	3527702	LUIZIÂNIA
3579	25	3527801	LUPÉRCIO
3580	25	3527900	LUTÉCIA
3581	25	3528007	MACATUBA
3582	25	3528106	MACAUBAL
3583	25	3528205	MACEDÔNIA
3584	25	3528304	MAGDA
3585	25	3528403	MAIRINQUE
3586	25	3528502	MAIRIPORÃ
3587	25	3528601	MANDURI
3588	25	3528700	MARABÁ PAULISTA
3589	25	3528809	MARACAÍ
3590	25	3528858	MARAPOAMA
3591	25	3528908	MARIÁPOLIS
3592	25	3529005	MARÍLIA
3593	25	3529104	MARINÓPOLIS
3594	25	3529203	MARTINÓPOLIS
3595	25	3529302	MATÃO
3596	25	3529401	MAUÁ
3597	25	3529500	MENDONÇA
3598	25	3529609	MERIDIANO
3599	25	3529658	MESÓPOLIS
3600	25	3529708	MIGUELÓPOLIS
3601	25	3529807	MINEIROS DO TIETÊ
3602	25	3529906	MIRACATU
3603	25	3530003	MIRA ESTRELA
3604	25	3530102	MIRANDÓPOLIS
3605	25	3530201	MIRANTE DO PARANAPANEMA
3606	25	3530300	MIRASSOL
3607	25	3530409	MIRASSOLÂNDIA
3608	25	3530508	MOCOCA
3609	25	3530607	MOGI DAS CRUZES
3610	25	3530706	MOGI GUAÇU
3611	25	3530805	MOJI MIRIM
3612	25	3530904	MOMBUCA
3613	25	3531001	MONÇÕES
3614	25	3531100	MONGAGUÁ
3615	25	3531209	MONTE ALEGRE DO SUL
3616	25	3531308	MONTE ALTO
3617	25	3531407	MONTE APRAZÍVEL
3618	25	3531506	MONTE AZUL PAULISTA
3619	25	3531605	MONTE CASTELO
3620	25	3531704	MONTEIRO LOBATO
3621	25	3531803	MONTE MOR
3622	25	3531902	MORRO AGUDO
3623	25	3532009	MORUNGABA
3624	25	3532058	MOTUCA
3625	25	3532108	MURUTINGA DO SUL
3626	25	3532157	NANTES
3627	25	3532207	NARANDIBA
3628	25	3532306	NATIVIDADE DA SERRA
3629	25	3532405	NAZARÉ PAULISTA
3630	25	3532504	NEVES PAULISTA
3631	25	3532603	NHANDEARA
3632	25	3532702	NIPOÃ
3633	25	3532801	NOVA ALIANÇA
3634	25	3532827	NOVA CAMPINA
3635	25	3532843	NOVA CANAÃ PAULISTA
3636	25	3532868	NOVA CASTILHO
3637	25	3532900	NOVA EUROPA
3638	25	3533007	NOVA GRANADA
3639	25	3533106	NOVA GUATAPORANGA
3640	25	3533205	NOVA INDEPENDÊNCIA
3641	25	3533254	NOVAIS
3642	25	3533304	NOVA LUZITÂNIA
3643	25	3533403	NOVA ODESSA
3644	25	3533502	NOVO HORIZONTE
3645	25	3533601	NUPORANGA
3646	25	3533700	OCAUÇU
3647	25	3533809	ÓLEO
3648	25	3533908	OLÍMPIA
3649	25	3534005	ONDA VERDE
3650	25	3534104	ORIENTE
3651	25	3534203	ORINDIÚVA
3652	25	3534302	ORLÂNDIA
3653	25	3534401	OSASCO
3654	25	3534500	OSCAR BRESSANE
3655	25	3534609	OSVALDO CRUZ
3656	25	3534708	OURINHOS
3657	25	3534757	OUROESTE
3658	25	3534807	OURO VERDE
3659	25	3534906	PACAEMBU
3660	25	3535002	PALESTINA
3661	25	3535101	PALMARES PAULISTA
3662	25	3535200	PALMEIRA D'OESTE
3663	25	3535309	PALMITAL
3664	25	3535408	PANORAMA
3665	25	3535507	PARAGUAÇU PAULISTA
3666	25	3535606	PARAIBUNA
3667	25	3535705	PARAÍSO
3668	25	3535804	PARANAPANEMA
3669	25	3535903	PARANAPUÃ
3670	25	3536000	PARAPUÃ
3671	25	3536109	PARDINHO
3672	25	3536208	PARIQUERA-AÇU
3673	25	3536257	PARISI
3674	25	3536307	PATROCÍNIO PAULISTA
3675	25	3536406	PAULICÉIA
3676	25	3536505	PAULÍNIA
3677	25	3536570	PAULISTÂNIA
3678	25	3536604	PAULO DE FARIA
3679	25	3536703	PEDERNEIRAS
3680	25	3536802	PEDRA BELA
3681	25	3536901	PEDRANÓPOLIS
3682	25	3537008	PEDREGULHO
3683	25	3537107	PEDREIRA
3684	25	3537156	PEDRINHAS PAULISTA
3685	25	3537206	PEDRO DE TOLEDO
3686	25	3537305	PENÁPOLIS
3687	25	3537404	PEREIRA BARRETO
3688	25	3537503	PEREIRAS
3689	25	3537602	PERUÍBE
3690	25	3537701	PIACATU
3691	25	3537800	PIEDADE
3692	25	3537909	PILAR DO SUL
3693	25	3538006	PINDAMONHANGABA
3694	25	3538105	PINDORAMA
3695	25	3538204	PINHALZINHO
3696	25	3538303	PIQUEROBI
3697	25	3538501	PIQUETE
3698	25	3538600	PIRACAIA
3699	25	3538709	PIRACICABA
3700	25	3538808	PIRAJU
3701	25	3538907	PIRAJUÍ
3702	25	3539004	PIRANGI
3703	25	3539103	PIRAPORA DO BOM JESUS
3704	25	3539202	PIRAPOZINHO
3705	25	3539301	PIRASSUNUNGA
3706	25	3539400	PIRATININGA
3707	25	3539509	PITANGUEIRAS
3708	25	3539608	PLANALTO
3709	25	3539707	PLATINA
3710	25	3539806	POÁ
3711	25	3539905	POLONI
3712	25	3540002	POMPÉIA
3713	25	3540101	PONGAÍ
3714	25	3540200	PONTAL
3715	25	3540259	PONTALINDA
3716	25	3540309	PONTES GESTAL
3717	25	3540408	POPULINA
3718	25	3540507	PORANGABA
3719	25	3540606	PORTO FELIZ
3720	25	3540705	PORTO FERREIRA
3721	25	3540754	POTIM
3722	25	3540804	POTIRENDABA
3723	25	3540853	PRACINHA
3724	25	3540903	PRADÓPOLIS
3725	25	3541000	PRAIA GRANDE
3726	25	3541059	PRATÂNIA
3727	25	3541109	PRESIDENTE ALVES
3728	25	3541208	PRESIDENTE BERNARDES
3729	25	3541307	PRESIDENTE EPITÁCIO
3730	25	3541406	PRESIDENTE PRUDENTE
3731	25	3541505	PRESIDENTE VENCESLAU
3732	25	3541604	PROMISSÃO
3733	25	3541653	QUADRA
3734	25	3541703	QUATÁ
3735	25	3541802	QUEIROZ
3736	25	3541901	QUELUZ
3737	25	3542008	QUINTANA
3738	25	3542107	RAFARD
3739	25	3542206	RANCHARIA
3740	25	3542305	REDENÇÃO DA SERRA
3741	25	3542404	REGENTE FEIJÓ
3742	25	3542503	REGINÓPOLIS
3743	25	3542602	REGISTRO
3744	25	3542701	RESTINGA
3745	25	3542800	RIBEIRA
3746	25	3542909	RIBEIRÃO BONITO
3747	25	3543006	RIBEIRÃO BRANCO
3748	25	3543105	RIBEIRÃO CORRENTE
3749	25	3543204	RIBEIRÃO DO SUL
3750	25	3543238	RIBEIRÃO DOS ÍNDIOS
3751	25	3543253	RIBEIRÃO GRANDE
3752	25	3543303	RIBEIRÃO PIRES
3753	25	3543402	RIBEIRÃO PRETO
3754	25	3543501	RIVERSUL
3755	25	3543600	RIFAINA
3756	25	3543709	RINCÃO
3757	25	3543808	RINÓPOLIS
3758	25	3543907	RIO CLARO
3759	25	3544004	RIO DAS PEDRAS
3760	25	3544103	RIO GRANDE DA SERRA
3761	25	3544202	RIOLÂNDIA
3762	25	3544251	ROSANA
3763	25	3544301	ROSEIRA
3764	25	3544400	RUBIÁCEA
3765	25	3544509	RUBINÉIA
3766	25	3544608	SABINO
3767	25	3544707	SAGRES
3768	25	3544806	SALES
3769	25	3544905	SALES OLIVEIRA
3770	25	3545001	SALESÓPOLIS
3771	25	3545100	SALMOURÃO
3772	25	3545159	SALTINHO
3773	25	3545209	SALTO
3774	25	3545308	SALTO DE PIRAPORA
3775	25	3545407	SALTO GRANDE
3776	25	3545506	SANDOVALINA
3777	25	3545605	SANTA ADÉLIA
3778	25	3545704	SANTA ALBERTINA
3779	25	3545803	SANTA BÁRBARA D'OESTE
3780	25	3546009	SANTA BRANCA
3781	25	3546108	SANTA CLARA D'OESTE
3782	25	3546207	SANTA CRUZ DA CONCEIÇÃO
3783	25	3546256	SANTA CRUZ DA ESPERANÇA
3784	25	3546306	SANTA CRUZ DAS PALMEIRAS
3785	25	3546405	SANTA CRUZ DO RIO PARDO
3786	25	3546504	SANTA ERNESTINA
3787	25	3546603	SANTA FÉ DO SUL
3788	25	3546702	SANTA GERTRUDES
3789	25	3546801	SANTA ISABEL
3790	25	3546900	SANTA LÚCIA
3791	25	3547007	SANTA MARIA DA SERRA
3792	25	3547106	SANTA MERCEDES
3793	25	3547205	SANTANA DA PONTE PENSA
3794	25	3547304	SANTANA DE PARNAÍBA
3795	25	3547403	SANTA RITA D'OESTE
3796	25	3547502	SANTA RITA DO PASSA QUATRO
3797	25	3547601	SANTA ROSA DE VITERBO
3798	25	3547650	SANTA SALETE
3799	25	3547700	SANTO ANASTÁCIO
3800	25	3547809	SANTO ANDRÉ
3801	25	3547908	SANTO ANTÔNIO DA ALEGRIA
3802	25	3548005	SANTO ANTÔNIO DE POSSE
3803	25	3548054	SANTO ANTÔNIO DO ARACANGUÁ
3804	25	3548104	SANTO ANTÔNIO DO JARDIM
3805	25	3548203	SANTO ANTÔNIO DO PINHAL
3806	25	3548302	SANTO EXPEDITO
3807	25	3548401	SANTÓPOLIS DO AGUAPEÍ
3808	25	3548500	SANTOS
3809	25	3548609	SÃO BENTO DO SAPUCAÍ
3810	25	3548708	SÃO BERNARDO DO CAMPO
3811	25	3548807	SÃO CAETANO DO SUL
3812	25	3548906	SÃO CARLOS
3813	25	3549003	SÃO FRANCISCO
3814	25	3549102	SÃO JOÃO DA BOA VISTA
3815	25	3549201	SÃO JOÃO DAS DUAS PONTES
3816	25	3549250	SÃO JOÃO DE IRACEMA
3817	25	3549300	SÃO JOÃO DO PAU D'ALHO
3818	25	3549409	SÃO JOAQUIM DA BARRA
3819	25	3549508	SÃO JOSÉ DA BELA VISTA
3820	25	3549607	SÃO JOSÉ DO BARREIRO
3821	25	3549706	SÃO JOSÉ DO RIO PARDO
3822	25	3549805	SÃO JOSÉ DO RIO PRETO
3823	25	3549904	SÃO JOSÉ DOS CAMPOS
3824	25	3549953	SÃO LOURENÇO DA SERRA
3825	25	3550001	SÃO LUÍS DO PARAITINGA
3826	25	3550100	SÃO MANUEL
3827	25	3550209	SÃO MIGUEL ARCANJO
3828	25	3550308	SÃO PAULO
3829	25	3550407	SÃO PEDRO
3830	25	3550506	SÃO PEDRO DO TURVO
3831	25	3550605	SÃO ROQUE
3832	25	3550704	SÃO SEBASTIÃO
3833	25	3550803	SÃO SEBASTIÃO DA GRAMA
3834	25	3550902	SÃO SIMÃO
3835	25	3551009	SÃO VICENTE
3836	25	3551108	SARAPUÍ
3837	25	3551207	SARUTAIÁ
3838	25	3551306	SEBASTIANÓPOLIS DO SUL
3839	25	3551405	SERRA AZUL
3840	25	3551504	SERRANA
3841	25	3551603	SERRA NEGRA
3842	25	3551702	SERTÃOZINHO
3843	25	3551801	SETE BARRAS
3844	25	3551900	SEVERÍNIA
3845	25	3552007	SILVEIRAS
3846	25	3552106	SOCORRO
3847	25	3552205	SOROCABA
3848	25	3552304	SUD MENNUCCI
3849	25	3552403	SUMARÉ
3850	25	3552502	SUZANO
3851	25	3552551	SUZANÁPOLIS
3852	25	3552601	TABAPUÃ
3853	25	3552700	TABATINGA
3854	25	3552809	TABOÃO DA SERRA
3855	25	3552908	TACIBA
3856	25	3553005	TAGUAÍ
3857	25	3553104	TAIAÇU
3858	25	3553203	TAIÚVA
3859	25	3553302	TAMBAÚ
3860	25	3553401	TANABI
3861	25	3553500	TAPIRAÍ
3862	25	3553609	TAPIRATIBA
3863	25	3553658	TAQUARAL
3864	25	3553708	TAQUARITINGA
3865	25	3553807	TAQUARITUBA
3866	25	3553856	TAQUARIVAÍ
3867	25	3553906	TARABAI
3868	25	3553955	TARUMÃ
3869	25	3554003	TATUÍ
3870	25	3554102	TAUBATÉ
3871	25	3554201	TEJUPÁ
3872	25	3554300	TEODORO SAMPAIO
3873	25	3554409	TERRA ROXA
3874	25	3554508	TIETÊ
3875	25	3554607	TIMBURI
3876	25	3554656	TORRE DE PEDRA
3877	25	3554706	TORRINHA
3878	25	3554755	TRABIJU
3879	25	3554805	TREMEMBÉ
3880	25	3554904	TRÊS FRONTEIRAS
3881	25	3554953	TUIUTI
3882	25	3555000	TUPÃ
3883	25	3555109	TUPI PAULISTA
3884	25	3555208	TURIÚBA
3885	25	3555307	TURMALINA
3886	25	3555356	UBARANA
3887	25	3555406	UBATUBA
3888	25	3555505	UBIRAJARA
3889	25	3555604	UCHOA
3890	25	3555703	UNIÃO PAULISTA
3891	25	3555802	URÂNIA
3892	25	3555901	URU
3893	25	3556008	URUPÊS
3894	25	3556107	VALENTIM GENTIL
3895	25	3556206	VALINHOS
3896	25	3556305	VALPARAÍSO
3897	25	3556354	VARGEM
3898	25	3556404	VARGEM GRANDE DO SUL
3899	25	3556453	VARGEM GRANDE PAULISTA
3900	25	3556503	VÁRZEA PAULISTA
3901	25	3556602	VERA CRUZ
3902	25	3556701	VINHEDO
3903	25	3556800	VIRADOURO
3904	25	3556909	VISTA ALEGRE DO ALTO
3905	25	3556958	VITÓRIA BRASIL
3906	25	3557006	VOTORANTIM
3907	25	3557105	VOTUPORANGA
3908	25	3557154	ZACARIAS
3909	25	3557204	CHAVANTES
3910	25	3557303	ESTIVA GERBI
3911	16	4100103	ABATIÁ
3912	16	4100202	ADRIANÓPOLIS
3913	16	4100301	AGUDOS DO SUL
3914	16	4100400	ALMIRANTE TAMANDARÉ
3915	16	4100459	ALTAMIRA DO PARANÁ
3916	16	4100509	ALTÔNIA
3917	16	4100608	ALTO PARANÁ
3918	16	4100707	ALTO PIQUIRI
3919	16	4100806	ALVORADA DO SUL
3920	16	4100905	AMAPORÃ
3921	16	4101002	AMPÉRE
3922	16	4101051	ANAHY
3923	16	4101101	ANDIRÁ
3924	16	4101150	ÂNGULO
3925	16	4101200	ANTONINA
3926	16	4101309	ANTÔNIO OLINTO
3927	16	4101408	APUCARANA
3928	16	4101507	ARAPONGAS
3929	16	4101606	ARAPOTI
3930	16	4101655	ARAPUÃ
3931	16	4101705	ARARUNA
3932	16	4101804	ARAUCÁRIA
3933	16	4101853	ARIRANHA DO IVAÍ
3934	16	4101903	ASSAÍ
3935	16	4102000	ASSIS CHATEAUBRIAND
3936	16	4102109	ASTORGA
3937	16	4102208	ATALAIA
3938	16	4102307	BALSA NOVA
3939	16	4102406	BANDEIRANTES
3940	16	4102505	BARBOSA FERRAZ
3941	16	4102604	BARRACÃO
3942	16	4102703	BARRA DO JACARÉ
3943	16	4102752	BELA VISTA DA CAROBA
3944	16	4102802	BELA VISTA DO PARAÍSO
3945	16	4102901	BITURUNA
3946	16	4103008	BOA ESPERANÇA
3947	16	4103024	BOA ESPERANÇA DO IGUAÇU
3948	16	4103040	BOA VENTURA DE SÃO ROQUE
3949	16	4103057	BOA VISTA DA APARECIDA
3950	16	4103107	BOCAIÚVA DO SUL
3951	16	4103156	BOM JESUS DO SUL
3952	16	4103206	BOM SUCESSO
3953	16	4103222	BOM SUCESSO DO SUL
3954	16	4103305	BORRAZÓPOLIS
3955	16	4103354	BRAGANEY
3956	16	4103370	BRASILÂNDIA DO SUL
3957	16	4103404	CAFEARA
3958	16	4103453	CAFELÂNDIA
3959	16	4103479	CAFEZAL DO SUL
3960	16	4103503	CALIFÓRNIA
3961	16	4103602	CAMBARÁ
3962	16	4103701	CAMBÉ
3963	16	4103800	CAMBIRA
3964	16	4103909	CAMPINA DA LAGOA
3965	16	4103958	CAMPINA DO SIMÃO
3966	16	4104006	CAMPINA GRANDE DO SUL
3967	16	4104055	CAMPO BONITO
3968	16	4104105	CAMPO DO TENENTE
3969	16	4104204	CAMPO LARGO
3970	16	4104253	CAMPO MAGRO
3971	16	4104303	CAMPO MOURÃO
3972	16	4104402	CÂNDIDO DE ABREU
3973	16	4104428	CANDÓI
3974	16	4104451	CANTAGALO
3975	16	4104501	CAPANEMA
3976	16	4104600	CAPITÃO LEÔNIDAS MARQUES
3977	16	4104659	CARAMBEÍ
3978	16	4104709	CARLÓPOLIS
3979	16	4104808	CASCAVEL
3980	16	4104907	CASTRO
3981	16	4105003	CATANDUVAS
3982	16	4105102	CENTENÁRIO DO SUL
3983	16	4105201	CERRO AZUL
3984	16	4105300	CÉU AZUL
3985	16	4105409	CHOPINZINHO
3986	16	4105508	CIANORTE
3987	16	4105607	CIDADE GAÚCHA
3988	16	4105706	CLEVELÂNDIA
3989	16	4105805	COLOMBO
3990	16	4105904	COLORADO
3991	16	4106001	CONGONHINHAS
3992	16	4106100	CONSELHEIRO MAIRINCK
3993	16	4106209	CONTENDA
3994	16	4106308	CORBÉLIA
3995	16	4106407	CORNÉLIO PROCÓPIO
3996	16	4106456	CORONEL DOMINGOS SOARES
3997	16	4106506	CORONEL VIVIDA
3998	16	4106555	CORUMBATAÍ DO SUL
3999	16	4106571	CRUZEIRO DO IGUAÇU
4000	16	4106605	CRUZEIRO DO OESTE
4001	16	4106704	CRUZEIRO DO SUL
4002	16	4106803	CRUZ MACHADO
4003	16	4106852	CRUZMALTINA
4004	16	4106902	CURITIBA
4005	16	4107009	CURIÚVA
4006	16	4107108	DIAMANTE DO NORTE
4007	16	4107124	DIAMANTE DO SUL
4008	16	4107157	DIAMANTE D'OESTE
4009	16	4107207	DOIS VIZINHOS
4010	16	4107256	DOURADINA
4011	16	4107306	DOUTOR CAMARGO
4012	16	4107405	ENÉAS MARQUES
4013	16	4107504	ENGENHEIRO BELTRÃO
4014	16	4107520	ESPERANÇA NOVA
4015	16	4107538	ENTRE RIOS DO OESTE
4016	16	4107546	ESPIGÃO ALTO DO IGUAÇU
4017	16	4107553	FAROL
4018	16	4107603	FAXINAL
4019	16	4107652	FAZENDA RIO GRANDE
4020	16	4107702	FÊNIX
4021	16	4107736	FERNANDES PINHEIRO
4022	16	4107751	FIGUEIRA
4023	16	4107801	FLORAÍ
4024	16	4107850	FLOR DA SERRA DO SUL
4025	16	4107900	FLORESTA
4026	16	4108007	FLORESTÓPOLIS
4027	16	4108106	FLÓRIDA
4028	16	4108205	FORMOSA DO OESTE
4029	16	4108304	FOZ DO IGUAÇU
4030	16	4108320	FRANCISCO ALVES
4031	16	4108403	FRANCISCO BELTRÃO
4032	16	4108452	FOZ DO JORDÃO
4033	16	4108502	GENERAL CARNEIRO
4034	16	4108551	GODOY MOREIRA
4035	16	4108601	GOIOERÊ
4036	16	4108650	GOIOXIM
4037	16	4108700	GRANDES RIOS
4038	16	4108809	GUAÍRA
4039	16	4108908	GUAIRAÇÁ
4040	16	4108957	GUAMIRANGA
4041	16	4109005	GUAPIRAMA
4042	16	4109104	GUAPOREMA
4043	16	4109203	GUARACI
4044	16	4109302	GUARANIAÇU
4045	16	4109401	GUARAPUAVA
4046	16	4109500	GUARAQUEÇABA
4047	16	4109609	GUARATUBA
4048	16	4109658	HONÓRIO SERPA
4049	16	4109708	IBAITI
4050	16	4109757	IBEMA
4051	16	4109807	IBIPORÃ
4052	16	4109906	ICARAÍMA
4053	16	4110003	IGUARAÇU
4054	16	4110052	IGUATU
4055	16	4110078	IMBAÚ
4056	16	4110102	IMBITUVA
4057	16	4110201	INÁCIO MARTINS
4058	16	4110300	INAJÁ
4059	16	4110409	INDIANÓPOLIS
4060	16	4110508	IPIRANGA
4061	16	4110607	IPORÃ
4062	16	4110656	IRACEMA DO OESTE
4063	16	4110706	IRATI
4064	16	4110805	IRETAMA
4065	16	4110904	ITAGUAJÉ
4066	16	4110953	ITAIPULÂNDIA
4067	16	4111001	ITAMBARACÁ
4068	16	4111100	ITAMBÉ
4069	16	4111209	ITAPEJARA D'OESTE
4070	16	4111258	ITAPERUÇU
4071	16	4111308	ITAÚNA DO SUL
4072	16	4111407	IVAÍ
4073	16	4111506	IVAIPORÃ
4074	16	4111555	IVATÉ
4075	16	4111605	IVATUBA
4076	16	4111704	JABOTI
4077	16	4111803	JACAREZINHO
4078	16	4111902	JAGUAPITÃ
4079	16	4112009	JAGUARIAÍVA
4080	16	4112108	JANDAIA DO SUL
4081	16	4112207	JANIÓPOLIS
4082	16	4112306	JAPIRA
4083	16	4112405	JAPURÁ
4084	16	4112504	JARDIM ALEGRE
4085	16	4112603	JARDIM OLINDA
4086	16	4112702	JATAIZINHO
4087	16	4112751	JESUÍTAS
4088	16	4112801	JOAQUIM TÁVORA
4089	16	4112900	JUNDIAÍ DO SUL
4090	16	4112959	JURANDA
4091	16	4113007	JUSSARA
4092	16	4113106	KALORÉ
4093	16	4113205	LAPA
4094	16	4113254	LARANJAL
4095	16	4113304	LARANJEIRAS DO SUL
4096	16	4113403	LEÓPOLIS
4097	16	4113429	LIDIANÓPOLIS
4098	16	4113452	LINDOESTE
4099	16	4113502	LOANDA
4100	16	4113601	LOBATO
4101	16	4113700	LONDRINA
4102	16	4113734	LUIZIANA
4103	16	4113759	LUNARDELLI
4104	16	4113809	LUPIONÓPOLIS
4105	16	4113908	MALLET
4106	16	4114005	MAMBORÊ
4107	16	4114104	MANDAGUAÇU
4108	16	4114203	MANDAGUARI
4109	16	4114302	MANDIRITUBA
4110	16	4114351	MANFRINÓPOLIS
4111	16	4114401	MANGUEIRINHA
4112	16	4114500	MANOEL RIBAS
4113	16	4114609	MARECHAL CÂNDIDO RONDON
4114	16	4114708	MARIA HELENA
4115	16	4114807	MARIALVA
4116	16	4114906	MARILÂNDIA DO SUL
4117	16	4115002	MARILENA
4118	16	4115101	MARILUZ
4119	16	4115200	MARINGÁ
4120	16	4115309	MARIÓPOLIS
4121	16	4115358	MARIPÁ
4122	16	4115408	MARMELEIRO
4123	16	4115457	MARQUINHO
4124	16	4115507	MARUMBI
4125	16	4115606	MATELÂNDIA
4126	16	4115705	MATINHOS
4127	16	4115739	MATO RICO
4128	16	4115754	MAUÁ DA SERRA
4129	16	4115804	MEDIANEIRA
4130	16	4115853	MERCEDES
4131	16	4115903	MIRADOR
4132	16	4116000	MIRASELVA
4133	16	4116059	MISSAL
4134	16	4116109	MOREIRA SALES
4135	16	4116208	MORRETES
4136	16	4116307	MUNHOZ DE MELO
4137	16	4116406	NOSSA SENHORA DAS GRAÇAS
4138	16	4116505	NOVA ALIANÇA DO IVAÍ
4139	16	4116604	NOVA AMÉRICA DA COLINA
4140	16	4116703	NOVA AURORA
4141	16	4116802	NOVA CANTU
4142	16	4116901	NOVA ESPERANÇA
4143	16	4116950	NOVA ESPERANÇA DO SUDOESTE
4144	16	4117008	NOVA FÁTIMA
4145	16	4117057	NOVA LARANJEIRAS
4146	16	4117107	NOVA LONDRINA
4147	16	4117206	NOVA OLÍMPIA
4148	16	4117214	NOVA SANTA BÁRBARA
4149	16	4117222	NOVA SANTA ROSA
4150	16	4117255	NOVA PRATA DO IGUAÇU
4151	16	4117271	NOVA TEBAS
4152	16	4117297	NOVO ITACOLOMI
4153	16	4117305	ORTIGUEIRA
4154	16	4117404	OURIZONA
4155	16	4117453	OURO VERDE DO OESTE
4156	16	4117503	PAIÇANDU
4157	16	4117602	PALMAS
4158	16	4117701	PALMEIRA
4159	16	4117800	PALMITAL
4160	16	4117909	PALOTINA
4161	16	4118006	PARAÍSO DO NORTE
4162	16	4118105	PARANACITY
4163	16	4118204	PARANAGUÁ
4164	16	4118303	PARANAPOEMA
4165	16	4118402	PARANAVAÍ
4166	16	4118451	PATO BRAGADO
4167	16	4118501	PATO BRANCO
4168	16	4118600	PAULA FREITAS
4169	16	4118709	PAULO FRONTIN
4170	16	4118808	PEABIRU
4171	16	4118857	PEROBAL
4172	16	4118907	PÉROLA
4173	16	4119004	PÉROLA D'OESTE
4174	16	4119103	PIÊN
4175	16	4119152	PINHAIS
4176	16	4119202	PINHALÃO
4177	16	4119251	PINHAL DE SÃO BENTO
4178	16	4119301	PINHÃO
4179	16	4119400	PIRAÍ DO SUL
4180	16	4119509	PIRAQUARA
4181	16	4119608	PITANGA
4182	16	4119657	PITANGUEIRAS
4183	16	4119707	PLANALTINA DO PARANÁ
4184	16	4119806	PLANALTO
4185	16	4119905	PONTA GROSSA
4186	16	4119954	PONTAL DO PARANÁ
4187	16	4120002	PORECATU
4188	16	4120101	PORTO AMAZONAS
4189	16	4120150	PORTO BARREIRO
4190	16	4120200	PORTO RICO
4191	16	4120309	PORTO VITÓRIA
4192	16	4120333	PRADO FERREIRA
4193	16	4120358	PRANCHITA
4194	16	4120408	PRESIDENTE CASTELO BRANCO
4195	16	4120507	PRIMEIRO DE MAIO
4196	16	4120606	PRUDENTÓPOLIS
4197	16	4120655	QUARTO CENTENÁRIO
4198	16	4120705	QUATIGUÁ
4199	16	4120804	QUATRO BARRAS
4200	16	4120853	QUATRO PONTES
4201	16	4120903	QUEDAS DO IGUAÇU
4202	16	4121000	QUERÊNCIA DO NORTE
4203	16	4121109	QUINTA DO SOL
4204	16	4121208	QUITANDINHA
4205	16	4121257	RAMILÂNDIA
4206	16	4121307	RANCHO ALEGRE
4207	16	4121356	RANCHO ALEGRE D'OESTE
4208	16	4121406	REALEZA
4209	16	4121505	REBOUÇAS
4210	16	4121604	RENASCENÇA
4211	16	4121703	RESERVA
4212	16	4121752	RESERVA DO IGUAÇU
4213	16	4121802	RIBEIRÃO CLARO
4214	16	4121901	RIBEIRÃO DO PINHAL
4215	16	4122008	RIO AZUL
4216	16	4122107	RIO BOM
4217	16	4122156	RIO BONITO DO IGUAÇU
4218	16	4122172	RIO BRANCO DO IVAÍ
4219	16	4122206	RIO BRANCO DO SUL
4220	16	4122305	RIO NEGRO
4221	16	4122404	ROLÂNDIA
4222	16	4122503	RONCADOR
4223	16	4122602	RONDON
4224	16	4122651	ROSÁRIO DO IVAÍ
4225	16	4122701	SABÁUDIA
4226	16	4122800	SALGADO FILHO
4227	16	4122909	SALTO DO ITARARÉ
4228	16	4123006	SALTO DO LONTRA
4229	16	4123105	SANTA AMÉLIA
4230	16	4123204	SANTA CECÍLIA DO PAVÃO
4231	16	4123303	SANTA CRUZ DE MONTE CASTELO
4232	16	4123402	SANTA FÉ
4233	16	4123501	SANTA HELENA
4234	16	4123600	SANTA INÊS
4235	16	4123709	SANTA ISABEL DO IVAÍ
4236	16	4123808	SANTA IZABEL DO OESTE
4237	16	4123824	SANTA LÚCIA
4238	16	4123857	SANTA MARIA DO OESTE
4239	16	4123907	SANTA MARIANA
4240	16	4123956	SANTA MÔNICA
4241	16	4124004	SANTANA DO ITARARÉ
4242	16	4124020	SANTA TEREZA DO OESTE
4243	16	4124053	SANTA TEREZINHA DE ITAIPU
4244	16	4124103	SANTO ANTÔNIO DA PLATINA
4245	16	4124202	SANTO ANTÔNIO DO CAIUÁ
4246	16	4124301	SANTO ANTÔNIO DO PARAÍSO
4247	16	4124400	SANTO ANTÔNIO DO SUDOESTE
4248	16	4124509	SANTO INÁCIO
4249	16	4124608	SÃO CARLOS DO IVAÍ
4250	16	4124707	SÃO JERÔNIMO DA SERRA
4251	16	4124806	SÃO JOÃO
4252	16	4124905	SÃO JOÃO DO CAIUÁ
4253	16	4125001	SÃO JOÃO DO IVAÍ
4254	16	4125100	SÃO JOÃO DO TRIUNFO
4255	16	4125209	SÃO JORGE D'OESTE
4256	16	4125308	SÃO JORGE DO IVAÍ
4257	16	4125357	SÃO JORGE DO PATROCÍNIO
4258	16	4125407	SÃO JOSÉ DA BOA VISTA
4259	16	4125456	SÃO JOSÉ DAS PALMEIRAS
4260	16	4125506	SÃO JOSÉ DOS PINHAIS
4261	16	4125555	SÃO MANOEL DO PARANÁ
4262	16	4125605	SÃO MATEUS DO SUL
4263	16	4125704	SÃO MIGUEL DO IGUAÇU
4264	16	4125753	SÃO PEDRO DO IGUAÇU
4265	16	4125803	SÃO PEDRO DO IVAÍ
4266	16	4125902	SÃO PEDRO DO PARANÁ
4267	16	4126009	SÃO SEBASTIÃO DA AMOREIRA
4268	16	4126108	SÃO TOMÉ
4269	16	4126207	SAPOPEMA
4270	16	4126256	SARANDI
4271	16	4126272	SAUDADE DO IGUAÇU
4272	16	4126306	SENGÉS
4273	16	4126355	SERRANÓPOLIS DO IGUAÇU
4274	16	4126405	SERTANEJA
4275	16	4126504	SERTANÓPOLIS
4276	16	4126603	SIQUEIRA CAMPOS
4277	16	4126652	SULINA
4278	16	4126678	TAMARANA
4279	16	4126702	TAMBOARA
4280	16	4126801	TAPEJARA
4281	16	4126900	TAPIRA
4282	16	4127007	TEIXEIRA SOARES
4283	16	4127106	TELÊMACO BORBA
4284	16	4127205	TERRA BOA
4285	16	4127304	TERRA RICA
4286	16	4127403	TERRA ROXA
4287	16	4127502	TIBAGI
4288	16	4127601	TIJUCAS DO SUL
4289	16	4127700	TOLEDO
4290	16	4127809	TOMAZINA
4291	16	4127858	TRÊS BARRAS DO PARANÁ
4292	16	4127882	TUNAS DO PARANÁ
4293	16	4127908	TUNEIRAS DO OESTE
4294	16	4127957	TUPÃSSI
4295	16	4127965	TURVO
4296	16	4128005	UBIRATÃ
4297	16	4128104	UMUARAMA
4298	16	4128203	UNIÃO DA VITÓRIA
4299	16	4128302	UNIFLOR
4300	16	4128401	URAÍ
4301	16	4128500	WENCESLAU BRAZ
4302	16	4128534	VENTANIA
4303	16	4128559	VERA CRUZ DO OESTE
4304	16	4128609	VERÊ
4305	16	4128625	ALTO PARAÍSO
4306	16	4128633	DOUTOR ULYSSES
4307	16	4128658	VIRMOND
4308	16	4128708	VITORINO
4309	16	4128807	XAMBRÊ
4310	24	4200051	ABDON BATISTA
4311	24	4200101	ABELARDO LUZ
4312	24	4200200	AGROLÂNDIA
4313	24	4200309	AGRONÔMICA
4314	24	4200408	ÁGUA DOCE
4315	24	4200507	ÁGUAS DE CHAPECÓ
4316	24	4200556	ÁGUAS FRIAS
4317	24	4200606	ÁGUAS MORNAS
4318	24	4200705	ALFREDO WAGNER
4319	24	4200754	ALTO BELA VISTA
4320	24	4200804	ANCHIETA
4321	24	4200903	ANGELINA
4322	24	4201000	ANITA GARIBALDI
4323	24	4201109	ANITÁPOLIS
4324	24	4201208	ANTÔNIO CARLOS
4325	24	4201257	APIÚNA
4326	24	4201273	ARABUTÃ
4327	24	4201307	ARAQUARI
4328	24	4201406	ARARANGUÁ
4329	24	4201505	ARMAZÉM
4330	24	4201604	ARROIO TRINTA
4331	24	4201653	ARVOREDO
4332	24	4201703	ASCURRA
4333	24	4201802	ATALANTA
4334	24	4201901	AURORA
4335	24	4201950	BALNEÁRIO ARROIO DO SILVA
4336	24	4202008	BALNEÁRIO CAMBORIÚ
4337	24	4202057	BALNEÁRIO BARRA DO SUL
4338	24	4202073	BALNEÁRIO GAIVOTA
4339	24	4202081	BANDEIRANTE
4340	24	4202099	BARRA BONITA
4341	24	4202107	BARRA VELHA
4342	24	4202131	BELA VISTA DO TOLDO
4343	24	4202156	BELMONTE
4344	24	4202206	BENEDITO NOVO
4345	24	4202305	BIGUAÇU
4346	24	4202404	BLUMENAU
4347	24	4202438	BOCAINA DO SUL
4348	24	4202453	BOMBINHAS
4349	24	4202503	BOM JARDIM DA SERRA
4350	24	4202537	BOM JESUS
4351	24	4202578	BOM JESUS DO OESTE
4352	24	4202602	BOM RETIRO
4353	24	4202701	BOTUVERÁ
4354	24	4202800	BRAÇO DO NORTE
4355	24	4202859	BRAÇO DO TROMBUDO
4356	24	4202875	BRUNÓPOLIS
4357	24	4202909	BRUSQUE
4358	24	4203006	CAÇADOR
4359	24	4203105	CAIBI
4360	24	4203154	CALMON
4361	24	4203204	CAMBORIÚ
4362	24	4203253	CAPÃO ALTO
4363	24	4203303	CAMPO ALEGRE
4364	24	4203402	CAMPO BELO DO SUL
4365	24	4203501	CAMPO ERÊ
4366	24	4203600	CAMPOS NOVOS
4367	24	4203709	CANELINHA
4368	24	4203808	CANOINHAS
4369	24	4203907	CAPINZAL
4370	24	4203956	CAPIVARI DE BAIXO
4371	24	4204004	CATANDUVAS
4372	24	4204103	CAXAMBU DO SUL
4373	24	4204152	CELSO RAMOS
4374	24	4204178	CERRO NEGRO
4375	24	4204194	CHAPADÃO DO LAGEADO
4376	24	4204202	CHAPECÓ
4377	24	4204251	COCAL DO SUL
4378	24	4204301	CONCÓRDIA
4379	24	4204350	CORDILHEIRA ALTA
4380	24	4204400	CORONEL FREITAS
4381	24	4204459	CORONEL MARTINS
4382	24	4204509	CORUPÁ
4383	24	4204558	CORREIA PINTO
4384	24	4204608	CRICIÚMA
4385	24	4204707	CUNHA PORÃ
4386	24	4204756	CUNHATAÍ
4387	24	4204806	CURITIBANOS
4388	24	4204905	DESCANSO
4389	24	4205001	DIONÍSIO CERQUEIRA
4390	24	4205100	DONA EMMA
4391	24	4205159	DOUTOR PEDRINHO
4392	24	4205175	ENTRE RIOS
4393	24	4205191	ERMO
4394	24	4205209	ERVAL VELHO
4395	24	4205308	FAXINAL DOS GUEDES
4396	24	4205357	FLOR DO SERTÃO
4397	24	4205407	FLORIANÓPOLIS
4398	24	4205431	FORMOSA DO SUL
4399	24	4205456	FORQUILHINHA
4400	24	4205506	FRAIBURGO
4401	24	4205555	FREI ROGÉRIO
4402	24	4205605	GALVÃO
4403	24	4205704	GAROPABA
4404	24	4205803	GARUVA
4405	24	4205902	GASPAR
4406	24	4206009	GOVERNADOR CELSO RAMOS
4407	24	4206108	GRÃO PARÁ
4408	24	4206207	GRAVATAL
4409	24	4206306	GUABIRUBA
4410	24	4206405	GUARACIABA
4411	24	4206504	GUARAMIRIM
4412	24	4206603	GUARUJÁ DO SUL
4413	24	4206652	GUATAMBÚ
4414	24	4206702	HERVAL D'OESTE
4415	24	4206751	IBIAM
4416	24	4206801	IBICARÉ
4417	24	4206900	IBIRAMA
4418	24	4207007	IÇARA
4419	24	4207106	ILHOTA
4420	24	4207205	IMARUÍ
4421	24	4207304	IMBITUBA
4422	24	4207403	IMBUIA
4423	24	4207502	INDAIAL
4424	24	4207577	IOMERÊ
4425	24	4207601	IPIRA
4426	24	4207650	IPORÃ DO OESTE
4427	24	4207684	IPUAÇU
4428	24	4207700	IPUMIRIM
4429	24	4207759	IRACEMINHA
4430	24	4207809	IRANI
4431	24	4207858	IRATI
4432	24	4207908	IRINEÓPOLIS
4433	24	4208005	ITÁ
4434	24	4208104	ITAIÓPOLIS
4435	24	4208203	ITAJAÍ
4436	24	4208302	ITAPEMA
4437	24	4208401	ITAPIRANGA
4438	24	4208450	ITAPOÁ
4439	24	4208500	ITUPORANGA
4440	24	4208609	JABORÁ
4441	24	4208708	JACINTO MACHADO
4442	24	4208807	JAGUARUNA
4443	24	4208906	JARAGUÁ DO SUL
4444	24	4208955	JARDINÓPOLIS
4445	24	4209003	JOAÇABA
4446	24	4209102	JOINVILLE
4447	24	4209151	JOSÉ BOITEUX
4448	24	4209177	JUPIÁ
4449	24	4209201	LACERDÓPOLIS
4450	24	4209300	LAGES
4451	24	4209409	LAGUNA
4452	24	4209458	LAJEADO GRANDE
4453	24	4209508	LAURENTINO
4454	24	4209607	LAURO MULLER
4455	24	4209706	LEBON RÉGIS
4456	24	4209805	LEOBERTO LEAL
4457	24	4209854	LINDÓIA DO SUL
4458	24	4209904	LONTRAS
4459	24	4210001	LUIZ ALVES
4460	24	4210035	LUZERNA
4461	24	4210050	MACIEIRA
4462	24	4210100	MAFRA
4463	24	4210209	MAJOR GERCINO
4464	24	4210308	MAJOR VIEIRA
4465	24	4210407	MARACAJÁ
4466	24	4210506	MARAVILHA
4467	24	4210555	MAREMA
4468	24	4210605	MASSARANDUBA
4469	24	4210704	MATOS COSTA
4470	24	4210803	MELEIRO
4471	24	4210852	MIRIM DOCE
4472	24	4210902	MODELO
4473	24	4211009	MONDAÍ
4474	24	4211058	MONTE CARLO
4475	24	4211108	MONTE CASTELO
4476	24	4211207	MORRO DA FUMAÇA
4477	24	4211256	MORRO GRANDE
4478	24	4211306	NAVEGANTES
4479	24	4211405	NOVA ERECHIM
4480	24	4211454	NOVA ITABERABA
4481	24	4211504	NOVA TRENTO
4482	24	4211603	NOVA VENEZA
4483	24	4211652	NOVO HORIZONTE
4484	24	4211702	ORLEANS
4485	24	4211751	OTACÍLIO COSTA
4486	24	4211801	OURO
4487	24	4211850	OURO VERDE
4488	24	4211876	PAIAL
4489	24	4211892	PAINEL
4490	24	4211900	PALHOÇA
4491	24	4212007	PALMA SOLA
4492	24	4212056	PALMEIRA
4493	24	4212106	PALMITOS
4494	24	4212205	PAPANDUVA
4495	24	4212239	PARAÍSO
4496	24	4212254	PASSO DE TORRES
4497	24	4212270	PASSOS MAIA
4498	24	4212304	PAULO LOPES
4499	24	4212403	PEDRAS GRANDES
4500	24	4212502	PENHA
4501	24	4212601	PERITIBA
4502	24	4212700	PETROLÂNDIA
4503	24	4212809	BALNEÁRIO PIÇARRAS
4504	24	4212908	PINHALZINHO
4505	24	4213005	PINHEIRO PRETO
4506	24	4213104	PIRATUBA
4507	24	4213153	PLANALTO ALEGRE
4508	24	4213203	POMERODE
4509	24	4213302	PONTE ALTA
4510	24	4213351	PONTE ALTA DO NORTE
4511	24	4213401	PONTE SERRADA
4512	24	4213500	PORTO BELO
4513	24	4213609	PORTO UNIÃO
4514	24	4213708	POUSO REDONDO
4515	24	4213807	PRAIA GRANDE
4516	24	4213906	PRESIDENTE CASTELLO BRANCO
4517	24	4214003	PRESIDENTE GETÚLIO
4518	24	4214102	PRESIDENTE NEREU
4519	24	4214151	PRINCESA
4520	24	4214201	QUILOMBO
4521	24	4214300	RANCHO QUEIMADO
4522	24	4214409	RIO DAS ANTAS
4523	24	4214508	RIO DO CAMPO
4524	24	4214607	RIO DO OESTE
4525	24	4214706	RIO DOS CEDROS
4526	24	4214805	RIO DO SUL
4527	24	4214904	RIO FORTUNA
4528	24	4215000	RIO NEGRINHO
4529	24	4215059	RIO RUFINO
4530	24	4215075	RIQUEZA
4531	24	4215109	RODEIO
4532	24	4215208	ROMELÂNDIA
4533	24	4215307	SALETE
4534	24	4215356	SALTINHO
4535	24	4215406	SALTO VELOSO
4536	24	4215455	SANGÃO
4537	24	4215505	SANTA CECÍLIA
4538	24	4215554	SANTA HELENA
4539	24	4215604	SANTA ROSA DE LIMA
4540	24	4215653	SANTA ROSA DO SUL
4541	24	4215679	SANTA TEREZINHA
4542	24	4215687	SANTA TEREZINHA DO PROGRESSO
4543	24	4215695	SANTIAGO DO SUL
4544	24	4215703	SANTO AMARO DA IMPERATRIZ
4545	24	4215752	SÃO BERNARDINO
4546	24	4215802	SÃO BENTO DO SUL
4547	24	4215901	SÃO BONIFÁCIO
4548	24	4216008	SÃO CARLOS
4549	24	4216057	SÃO CRISTOVÃO DO SUL
4550	24	4216107	SÃO DOMINGOS
4551	24	4216206	SÃO FRANCISCO DO SUL
4552	24	4216255	SÃO JOÃO DO OESTE
4553	24	4216305	SÃO JOÃO BATISTA
4554	24	4216354	SÃO JOÃO DO ITAPERIÚ
4555	24	4216404	SÃO JOÃO DO SUL
4556	24	4216503	SÃO JOAQUIM
4557	24	4216602	SÃO JOSÉ
4558	24	4216701	SÃO JOSÉ DO CEDRO
4559	24	4216800	SÃO JOSÉ DO CERRITO
4560	24	4216909	SÃO LOURENÇO DO OESTE
4561	24	4217006	SÃO LUDGERO
4562	24	4217105	SÃO MARTINHO
4563	24	4217154	SÃO MIGUEL DA BOA VISTA
4564	24	4217204	SÃO MIGUEL DO OESTE
4565	24	4217253	SÃO PEDRO DE ALCÂNTARA
4566	24	4217303	SAUDADES
4567	24	4217402	SCHROEDER
4568	24	4217501	SEARA
4569	24	4217550	SERRA ALTA
4570	24	4217600	SIDERÓPOLIS
4571	24	4217709	SOMBRIO
4572	24	4217758	SUL BRASIL
4573	24	4217808	TAIÓ
4574	24	4217907	TANGARÁ
4575	24	4217956	TIGRINHOS
4576	24	4218004	TIJUCAS
4577	24	4218103	TIMBÉ DO SUL
4578	24	4218202	TIMBÓ
4579	24	4218251	TIMBÓ GRANDE
4580	24	4218301	TRÊS BARRAS
4581	24	4218350	TREVISO
4582	24	4218400	TREZE DE MAIO
4583	24	4218509	TREZE TÍLIAS
4584	24	4218608	TROMBUDO CENTRAL
4585	24	4218707	TUBARÃO
4586	24	4218756	TUNÁPOLIS
4587	24	4218806	TURVO
4588	24	4218855	UNIÃO DO OESTE
4589	24	4218905	URUBICI
4590	24	4218954	URUPEMA
4591	24	4219002	URUSSANGA
4592	24	4219101	VARGEÃO
4593	24	4219150	VARGEM
4594	24	4219176	VARGEM BONITA
4595	24	4219200	VIDAL RAMOS
4596	24	4219309	VIDEIRA
4597	24	4219358	VITOR MEIRELES
4598	24	4219408	WITMARSUM
4599	24	4219507	XANXERÊ
4600	24	4219606	XAVANTINA
4601	24	4219705	XAXIM
4602	24	4219853	ZORTÉA
4603	21	4300034	ACEGUÁ
4604	21	4300059	ÁGUA SANTA
4605	21	4300109	AGUDO
4606	21	4300208	AJURICABA
4607	21	4300307	ALECRIM
4608	21	4300406	ALEGRETE
4609	21	4300455	ALEGRIA
4610	21	4300471	ALMIRANTE TAMANDARÉ DO SUL
4611	21	4300505	ALPESTRE
4612	21	4300554	ALTO ALEGRE
4613	21	4300570	ALTO FELIZ
4614	21	4300604	ALVORADA
4615	21	4300638	AMARAL FERRADOR
4616	21	4300646	AMETISTA DO SUL
4617	21	4300661	ANDRÉ DA ROCHA
4618	21	4300703	ANTA GORDA
4619	21	4300802	ANTÔNIO PRADO
4620	21	4300851	ARAMBARÉ
4621	21	4300877	ARARICÁ
4622	21	4300901	ARATIBA
4623	21	4301008	ARROIO DO MEIO
4624	21	4301057	ARROIO DO SAL
4625	21	4301073	ARROIO DO PADRE
4626	21	4301107	ARROIO DOS RATOS
4627	21	4301206	ARROIO DO TIGRE
4628	21	4301305	ARROIO GRANDE
4629	21	4301404	ARVOREZINHA
4630	21	4301503	AUGUSTO PESTANA
4631	21	4301552	ÁUREA
4632	21	4301602	BAGÉ
4633	21	4301636	BALNEÁRIO PINHAL
4634	21	4301651	BARÃO
4635	21	4301701	BARÃO DE COTEGIPE
4636	21	4301750	BARÃO DO TRIUNFO
4637	21	4301800	BARRACÃO
4638	21	4301859	BARRA DO GUARITA
4639	21	4301875	BARRA DO QUARAÍ
4640	21	4301909	BARRA DO RIBEIRO
4641	21	4301925	BARRA DO RIO AZUL
4642	21	4301958	BARRA FUNDA
4643	21	4302006	BARROS CASSAL
4644	21	4302055	BENJAMIN CONSTANT DO SUL
4645	21	4302105	BENTO GONÇALVES
4646	21	4302154	BOA VISTA DAS MISSÕES
4647	21	4302204	BOA VISTA DO BURICÁ
4648	21	4302220	BOA VISTA DO CADEADO
4649	21	4302238	BOA VISTA DO INCRA
4650	21	4302253	BOA VISTA DO SUL
4651	21	4302303	BOM JESUS
4652	21	4302352	BOM PRINCÍPIO
4653	21	4302378	BOM PROGRESSO
4654	21	4302402	BOM RETIRO DO SUL
4655	21	4302451	BOQUEIRÃO DO LEÃO
4656	21	4302501	BOSSOROCA
4657	21	4302584	BOZANO
4658	21	4302600	BRAGA
4659	21	4302659	BROCHIER
4660	21	4302709	BUTIÁ
4661	21	4302808	CAÇAPAVA DO SUL
4662	21	4302907	CACEQUI
4663	21	4303004	CACHOEIRA DO SUL
4664	21	4303103	CACHOEIRINHA
4665	21	4303202	CACIQUE DOBLE
4666	21	4303301	CAIBATÉ
4667	21	4303400	CAIÇARA
4668	21	4303509	CAMAQUÃ
4669	21	4303558	CAMARGO
4670	21	4303608	CAMBARÁ DO SUL
4671	21	4303673	CAMPESTRE DA SERRA
4672	21	4303707	CAMPINA DAS MISSÕES
4673	21	4303806	CAMPINAS DO SUL
4674	21	4303905	CAMPO BOM
4675	21	4304002	CAMPO NOVO
4676	21	4304101	CAMPOS BORGES
4677	21	4304200	CANDELÁRIA
4678	21	4304309	CÂNDIDO GODÓI
4679	21	4304358	CANDIOTA
4680	21	4304408	CANELA
4681	21	4304507	CANGUÇU
4682	21	4304606	CANOAS
4683	21	4304614	CANUDOS DO VALE
4684	21	4304622	CAPÃO BONITO DO SUL
4685	21	4304630	CAPÃO DA CANOA
4686	21	4304655	CAPÃO DO CIPÓ
4687	21	4304663	CAPÃO DO LEÃO
4688	21	4304671	CAPIVARI DO SUL
4689	21	4304689	CAPELA DE SANTANA
4690	21	4304697	CAPITÃO
4691	21	4304705	CARAZINHO
4692	21	4304713	CARAÁ
4693	21	4304804	CARLOS BARBOSA
4694	21	4304853	CARLOS GOMES
4695	21	4304903	CASCA
4696	21	4304952	CASEIROS
4697	21	4305009	CATUÍPE
4698	21	4305108	CAXIAS DO SUL
4699	21	4305116	CENTENÁRIO
4700	21	4305124	CERRITO
4701	21	4305132	CERRO BRANCO
4702	21	4305157	CERRO GRANDE
4703	21	4305173	CERRO GRANDE DO SUL
4704	21	4305207	CERRO LARGO
4705	21	4305306	CHAPADA
4706	21	4305355	CHARQUEADAS
4707	21	4305371	CHARRUA
4708	21	4305405	CHIAPETTA
4709	21	4305439	CHUÍ
4710	21	4305447	CHUVISCA
4711	21	4305454	CIDREIRA
4712	21	4305504	CIRÍACO
4713	21	4305587	COLINAS
4714	21	4305603	COLORADO
4715	21	4305702	CONDOR
4716	21	4305801	CONSTANTINA
4717	21	4305835	COQUEIRO BAIXO
4718	21	4305850	COQUEIROS DO SUL
4719	21	4305871	CORONEL BARROS
4720	21	4305900	CORONEL BICACO
4721	21	4305934	CORONEL PILAR
4722	21	4305959	COTIPORÃ
4723	21	4305975	COXILHA
4724	21	4306007	CRISSIUMAL
4725	21	4306056	CRISTAL
4726	21	4306072	CRISTAL DO SUL
4727	21	4306106	CRUZ ALTA
4728	21	4306130	CRUZALTENSE
4729	21	4306205	CRUZEIRO DO SUL
4730	21	4306304	DAVID CANABARRO
4731	21	4306320	DERRUBADAS
4732	21	4306353	DEZESSEIS DE NOVEMBRO
4733	21	4306379	DILERMANDO DE AGUIAR
4734	21	4306403	DOIS IRMÃOS
4735	21	4306429	DOIS IRMÃOS DAS MISSÕES
4736	21	4306452	DOIS LAJEADOS
4737	21	4306502	DOM FELICIANO
4738	21	4306551	DOM PEDRO DE ALCÂNTARA
4739	21	4306601	DOM PEDRITO
4740	21	4306700	DONA FRANCISCA
4741	21	4306734	DOUTOR MAURÍCIO CARDOSO
4742	21	4306759	DOUTOR RICARDO
4743	21	4306767	ELDORADO DO SUL
4744	21	4306809	ENCANTADO
4745	21	4306908	ENCRUZILHADA DO SUL
4746	21	4306924	ENGENHO VELHO
4747	21	4306932	ENTRE-IJUÍS
4748	21	4306957	ENTRE RIOS DO SUL
4749	21	4306973	EREBANGO
4750	21	4307005	ERECHIM
4751	21	4307054	ERNESTINA
4752	21	4307104	HERVAL
4753	21	4307203	ERVAL GRANDE
4754	21	4307302	ERVAL SECO
4755	21	4307401	ESMERALDA
4756	21	4307450	ESPERANÇA DO SUL
4757	21	4307500	ESPUMOSO
4758	21	4307559	ESTAÇÃO
4759	21	4307609	ESTÂNCIA VELHA
4760	21	4307708	ESTEIO
4761	21	4307807	ESTRELA
4762	21	4307815	ESTRELA VELHA
4763	21	4307831	EUGÊNIO DE CASTRO
4764	21	4307864	FAGUNDES VARELA
4765	21	4307906	FARROUPILHA
4766	21	4308003	FAXINAL DO SOTURNO
4767	21	4308052	FAXINALZINHO
4768	21	4308078	FAZENDA VILANOVA
4769	21	4308102	FELIZ
4770	21	4308201	FLORES DA CUNHA
4771	21	4308250	FLORIANO PEIXOTO
4772	21	4308300	FONTOURA XAVIER
4773	21	4308409	FORMIGUEIRO
4774	21	4308433	FORQUETINHA
4775	21	4308458	FORTALEZA DOS VALOS
4776	21	4308508	FREDERICO WESTPHALEN
4777	21	4308607	GARIBALDI
4778	21	4308656	GARRUCHOS
4779	21	4308706	GAURAMA
4780	21	4308805	GENERAL CÂMARA
4781	21	4308854	GENTIL
4782	21	4308904	GETÚLIO VARGAS
4783	21	4309001	GIRUÁ
4784	21	4309050	GLORINHA
4785	21	4309100	GRAMADO
4786	21	4309126	GRAMADO DOS LOUREIROS
4787	21	4309159	GRAMADO XAVIER
4788	21	4309209	GRAVATAÍ
4789	21	4309258	GUABIJU
4790	21	4309308	GUAÍBA
4791	21	4309407	GUAPORÉ
4792	21	4309506	GUARANI DAS MISSÕES
4793	21	4309555	HARMONIA
4794	21	4309571	HERVEIRAS
4795	21	4309605	HORIZONTINA
4796	21	4309654	HULHA NEGRA
4797	21	4309704	HUMAITÁ
4798	21	4309753	IBARAMA
4799	21	4309803	IBIAÇÁ
4800	21	4309902	IBIRAIARAS
4801	21	4309951	IBIRAPUITÃ
4802	21	4310009	IBIRUBÁ
4803	21	4310108	IGREJINHA
4804	21	4310207	IJUÍ
4805	21	4310306	ILÓPOLIS
4806	21	4310330	IMBÉ
4807	21	4310363	IMIGRANTE
4808	21	4310405	INDEPENDÊNCIA
4809	21	4310413	INHACORÁ
4810	21	4310439	IPÊ
4811	21	4310462	IPIRANGA DO SUL
4812	21	4310504	IRAÍ
4813	21	4310538	ITAARA
4814	21	4310553	ITACURUBI
4815	21	4310579	ITAPUCA
4816	21	4310603	ITAQUI
4817	21	4310652	ITATI
4818	21	4310702	ITATIBA DO SUL
4819	21	4310751	IVORÁ
4820	21	4310801	IVOTI
4821	21	4310850	JABOTICABA
4822	21	4310876	JACUIZINHO
4823	21	4310900	JACUTINGA
4824	21	4311007	JAGUARÃO
4825	21	4311106	JAGUARI
4826	21	4311122	JAQUIRANA
4827	21	4311130	JARI
4828	21	4311155	JÓIA
4829	21	4311205	JÚLIO DE CASTILHOS
4830	21	4311239	LAGOA BONITA DO SUL
4831	21	4311254	LAGOÃO
4832	21	4311270	LAGOA DOS TRÊS CANTOS
4833	21	4311304	LAGOA VERMELHA
4834	21	4311403	LAJEADO
4835	21	4311429	LAJEADO DO BUGRE
4836	21	4311502	LAVRAS DO SUL
4837	21	4311601	LIBERATO SALZANO
4838	21	4311627	LINDOLFO COLLOR
4839	21	4311643	LINHA NOVA
4840	21	4311700	MACHADINHO
4841	21	4311718	MAÇAMBARA
4842	21	4311734	MAMPITUBA
4843	21	4311759	MANOEL VIANA
4844	21	4311775	MAQUINÉ
4845	21	4311791	MARATÁ
4846	21	4311809	MARAU
4847	21	4311908	MARCELINO RAMOS
4848	21	4311981	MARIANA PIMENTEL
4849	21	4312005	MARIANO MORO
4850	21	4312054	MARQUES DE SOUZA
4851	21	4312104	MATA
4852	21	4312138	MATO CASTELHANO
4853	21	4312153	MATO LEITÃO
4854	21	4312179	MATO QUEIMADO
4855	21	4312203	MAXIMILIANO DE ALMEIDA
4856	21	4312252	MINAS DO LEÃO
4857	21	4312302	MIRAGUAÍ
4858	21	4312351	MONTAURI
4859	21	4312377	MONTE ALEGRE DOS CAMPOS
4860	21	4312385	MONTE BELO DO SUL
4861	21	4312401	MONTENEGRO
4862	21	4312427	MORMAÇO
4863	21	4312443	MORRINHOS DO SUL
4864	21	4312450	MORRO REDONDO
4865	21	4312476	MORRO REUTER
4866	21	4312500	MOSTARDAS
4867	21	4312609	MUÇUM
4868	21	4312617	MUITOS CAPÕES
4869	21	4312625	MULITERNO
4870	21	4312658	NÃO-ME-TOQUE
4871	21	4312674	NICOLAU VERGUEIRO
4872	21	4312708	NONOAI
4873	21	4312757	NOVA ALVORADA
4874	21	4312807	NOVA ARAÇÁ
4875	21	4312906	NOVA BASSANO
4876	21	4312955	NOVA BOA VISTA
4877	21	4313003	NOVA BRÉSCIA
4878	21	4313011	NOVA CANDELÁRIA
4879	21	4313037	NOVA ESPERANÇA DO SUL
4880	21	4313060	NOVA HARTZ
4881	21	4313086	NOVA PÁDUA
4882	21	4313102	NOVA PALMA
4883	21	4313201	NOVA PETRÓPOLIS
4884	21	4313300	NOVA PRATA
4885	21	4313334	NOVA RAMADA
4886	21	4313359	NOVA ROMA DO SUL
4887	21	4313375	NOVA SANTA RITA
4888	21	4313391	NOVO CABRAIS
4889	21	4313409	NOVO HAMBURGO
4890	21	4313425	NOVO MACHADO
4891	21	4313441	NOVO TIRADENTES
4892	21	4313466	NOVO XINGU
4893	21	4313490	NOVO BARREIRO
4894	21	4313508	OSÓRIO
4895	21	4313607	PAIM FILHO
4896	21	4313656	PALMARES DO SUL
4897	21	4313706	PALMEIRA DAS MISSÕES
4898	21	4313805	PALMITINHO
4899	21	4313904	PANAMBI
4900	21	4313953	PANTANO GRANDE
4901	21	4314001	PARAÍ
4902	21	4314027	PARAÍSO DO SUL
4903	21	4314035	PARECI NOVO
4904	21	4314050	PAROBÉ
4905	21	4314068	PASSA SETE
4906	21	4314076	PASSO DO SOBRADO
4907	21	4314100	PASSO FUNDO
4908	21	4314134	PAULO BENTO
4909	21	4314159	PAVERAMA
4910	21	4314175	PEDRAS ALTAS
4911	21	4314209	PEDRO OSÓRIO
4912	21	4314308	PEJUÇARA
4913	21	4314407	PELOTAS
4914	21	4314423	PICADA CAFÉ
4915	21	4314456	PINHAL
4916	21	4314464	PINHAL DA SERRA
4917	21	4314472	PINHAL GRANDE
4918	21	4314498	PINHEIRINHO DO VALE
4919	21	4314506	PINHEIRO MACHADO
4920	21	4314555	PIRAPÓ
4921	21	4314605	PIRATINI
4922	21	4314704	PLANALTO
4923	21	4314753	POÇO DAS ANTAS
4924	21	4314779	PONTÃO
4925	21	4314787	PONTE PRETA
4926	21	4314803	PORTÃO
4927	21	4314902	PORTO ALEGRE
4928	21	4315008	PORTO LUCENA
4929	21	4315057	PORTO MAUÁ
4930	21	4315073	PORTO VERA CRUZ
4931	21	4315107	PORTO XAVIER
4932	21	4315131	POUSO NOVO
4933	21	4315149	PRESIDENTE LUCENA
4934	21	4315156	PROGRESSO
4935	21	4315172	PROTÁSIO ALVES
4936	21	4315206	PUTINGA
4937	21	4315305	QUARAÍ
4938	21	4315313	QUATRO IRMÃOS
4939	21	4315321	QUEVEDOS
4940	21	4315354	QUINZE DE NOVEMBRO
4941	21	4315404	REDENTORA
4942	21	4315453	RELVADO
4943	21	4315503	RESTINGA SECA
4944	21	4315552	RIO DOS ÍNDIOS
4945	21	4315602	RIO GRANDE
4946	21	4315701	RIO PARDO
4947	21	4315750	RIOZINHO
4948	21	4315800	ROCA SALES
4949	21	4315909	RODEIO BONITO
4950	21	4315958	ROLADOR
4951	21	4316006	ROLANTE
4952	21	4316105	RONDA ALTA
4953	21	4316204	RONDINHA
4954	21	4316303	ROQUE GONZALES
4955	21	4316402	ROSÁRIO DO SUL
4956	21	4316428	SAGRADA FAMÍLIA
4957	21	4316436	SALDANHA MARINHO
4958	21	4316451	SALTO DO JACUÍ
4959	21	4316477	SALVADOR DAS MISSÕES
4960	21	4316501	SALVADOR DO SUL
4961	21	4316600	SANANDUVA
4962	21	4316709	SANTA BÁRBARA DO SUL
4963	21	4316733	SANTA CECÍLIA DO SUL
4964	21	4316758	SANTA CLARA DO SUL
4965	21	4316808	SANTA CRUZ DO SUL
4966	21	4316907	SANTA MARIA
4967	21	4316956	SANTA MARIA DO HERVAL
4968	21	4316972	SANTA MARGARIDA DO SUL
4969	21	4317004	SANTANA DA BOA VISTA
4970	21	4317103	SANTANA DO LIVRAMENTO
4971	21	4317202	SANTA ROSA
4972	21	4317251	SANTA TEREZA
4973	21	4317301	SANTA VITÓRIA DO PALMAR
4974	21	4317400	SANTIAGO
4975	21	4317509	SANTO ÂNGELO
4976	21	4317558	SANTO ANTÔNIO DO PALMA
4977	21	4317608	SANTO ANTÔNIO DA PATRULHA
4978	21	4317707	SANTO ANTÔNIO DAS MISSÕES
4979	21	4317756	SANTO ANTÔNIO DO PLANALTO
4980	21	4317806	SANTO AUGUSTO
4981	21	4317905	SANTO CRISTO
4982	21	4317954	SANTO EXPEDITO DO SUL
4983	21	4318002	SÃO BORJA
4984	21	4318051	SÃO DOMINGOS DO SUL
4985	21	4318101	SÃO FRANCISCO DE ASSIS
4986	21	4318200	SÃO FRANCISCO DE PAULA
4987	21	4318309	SÃO GABRIEL
4988	21	4318408	SÃO JERÔNIMO
4989	21	4318424	SÃO JOÃO DA URTIGA
4990	21	4318432	SÃO JOÃO DO POLÊSINE
4991	21	4318440	SÃO JORGE
4992	21	4318457	SÃO JOSÉ DAS MISSÕES
4993	21	4318465	SÃO JOSÉ DO HERVAL
4994	21	4318481	SÃO JOSÉ DO HORTÊNCIO
4995	21	4318499	SÃO JOSÉ DO INHACORÁ
4996	21	4318507	SÃO JOSÉ DO NORTE
4997	21	4318606	SÃO JOSÉ DO OURO
4998	21	4318614	SÃO JOSÉ DO SUL
4999	21	4318622	SÃO JOSÉ DOS AUSENTES
5000	21	4318705	SÃO LEOPOLDO
5001	21	4318804	SÃO LOURENÇO DO SUL
5002	21	4318903	SÃO LUIZ GONZAGA
5003	21	4319000	SÃO MARCOS
5004	21	4319109	SÃO MARTINHO
5005	21	4319125	SÃO MARTINHO DA SERRA
5006	21	4319158	SÃO MIGUEL DAS MISSÕES
5007	21	4319208	SÃO NICOLAU
5008	21	4319307	SÃO PAULO DAS MISSÕES
5009	21	4319356	SÃO PEDRO DA SERRA
5010	21	4319364	SÃO PEDRO DAS MISSÕES
5011	21	4319372	SÃO PEDRO DO BUTIÁ
5012	21	4319406	SÃO PEDRO DO SUL
5013	21	4319505	SÃO SEBASTIÃO DO CAÍ
5014	21	4319604	SÃO SEPÉ
5015	21	4319703	SÃO VALENTIM
5016	21	4319711	SÃO VALENTIM DO SUL
5017	21	4319737	SÃO VALÉRIO DO SUL
5018	21	4319752	SÃO VENDELINO
5019	21	4319802	SÃO VICENTE DO SUL
5020	21	4319901	SAPIRANGA
5021	21	4320008	SAPUCAIA DO SUL
5022	21	4320107	SARANDI
5023	21	4320206	SEBERI
5024	21	4320230	SEDE NOVA
5025	21	4320263	SEGREDO
5026	21	4320305	SELBACH
5027	21	4320321	SENADOR SALGADO FILHO
5028	21	4320354	SENTINELA DO SUL
5029	21	4320404	SERAFINA CORRÊA
5030	21	4320453	SÉRIO
5031	21	4320503	SERTÃO
5032	21	4320552	SERTÃO SANTANA
5033	21	4320578	SETE DE SETEMBRO
5034	21	4320602	SEVERIANO DE ALMEIDA
5035	21	4320651	SILVEIRA MARTINS
5036	21	4320677	SINIMBU
5037	21	4320701	SOBRADINHO
5038	21	4320800	SOLEDADE
5039	21	4320859	TABAÍ
5040	21	4320909	TAPEJARA
5041	21	4321006	TAPERA
5042	21	4321105	TAPES
5043	21	4321204	TAQUARA
5044	21	4321303	TAQUARI
5045	21	4321329	TAQUARUÇU DO SUL
5046	21	4321352	TAVARES
5047	21	4321402	TENENTE PORTELA
5048	21	4321436	TERRA DE AREIA
5049	21	4321451	TEUTÔNIA
5050	21	4321469	TIO HUGO
5051	21	4321477	TIRADENTES DO SUL
5052	21	4321493	TOROPI
5053	21	4321501	TORRES
5054	21	4321600	TRAMANDAÍ
5055	21	4321626	TRAVESSEIRO
5056	21	4321634	TRÊS ARROIOS
5057	21	4321667	TRÊS CACHOEIRAS
5058	21	4321709	TRÊS COROAS
5059	21	4321808	TRÊS DE MAIO
5060	21	4321832	TRÊS FORQUILHAS
5061	21	4321857	TRÊS PALMEIRAS
5062	21	4321907	TRÊS PASSOS
5063	21	4321956	TRINDADE DO SUL
5064	21	4322004	TRIUNFO
5065	21	4322103	TUCUNDUVA
5066	21	4322152	TUNAS
5067	21	4322186	TUPANCI DO SUL
5068	21	4322202	TUPANCIRETÃ
5069	21	4322251	TUPANDI
5070	21	4322301	TUPARENDI
5071	21	4322327	TURUÇU
5072	21	4322343	UBIRETAMA
5073	21	4322350	UNIÃO DA SERRA
5074	21	4322376	UNISTALDA
5075	21	4322400	URUGUAIANA
5076	21	4322509	VACARIA
5077	21	4322525	VALE VERDE
5078	21	4322533	VALE DO SOL
5079	21	4322541	VALE REAL
5080	21	4322558	VANINI
5081	21	4322608	VENÂNCIO AIRES
5082	21	4322707	VERA CRUZ
5083	21	4322806	VERANÓPOLIS
5084	21	4322855	VESPASIANO CORREA
5085	21	4322905	VIADUTOS
5086	21	4323002	VIAMÃO
5087	21	4323101	VICENTE DUTRA
5088	21	4323200	VICTOR GRAEFF
5089	21	4323309	VILA FLORES
5090	21	4323358	VILA LÂNGARO
5091	21	4323408	VILA MARIA
5092	21	4323457	VILA NOVA DO SUL
5093	21	4323507	VISTA ALEGRE
5094	21	4323606	VISTA ALEGRE DO PRATA
5095	21	4323705	VISTA GAÚCHA
5096	21	4323754	VITÓRIA DAS MISSÕES
5097	21	4323770	WESTFALIA
5098	21	4323804	XANGRI-LÁ
5099	12	5000203	ÁGUA CLARA
5100	12	5000252	ALCINÓPOLIS
5101	12	5000609	AMAMBAÍ
5102	12	5000708	ANASTÁCIO
5103	12	5000807	ANAURILÂNDIA
5104	12	5000856	ANGÉLICA
5105	12	5000906	ANTÔNIO JOÃO
5106	12	5001003	APARECIDA DO TABOADO
5107	12	5001102	AQUIDAUANA
5108	12	5001243	ARAL MOREIRA
5109	12	5001508	BANDEIRANTES
5110	12	5001904	BATAGUASSU
5111	12	5002001	BATAYPORÃ
5112	12	5002100	BELA VISTA
5113	12	5002159	BODOQUENA
5114	12	5002209	BONITO
5115	12	5002308	BRASILÂNDIA
5116	12	5002407	CAARAPÓ
5117	12	5002605	CAMAPUÃ
5118	12	5002704	CAMPO GRANDE
5119	12	5002803	CARACOL
5120	12	5002902	CASSILÂNDIA
5121	12	5002951	CHAPADÃO DO SUL
5122	12	5003108	CORGUINHO
5123	12	5003157	CORONEL SAPUCAIA
5124	12	5003207	CORUMBÁ
5125	12	5003256	COSTA RICA
5126	12	5003306	COXIM
5127	12	5003454	DEODÁPOLIS
5128	12	5003488	DOIS IRMÃOS DO BURITI
5129	12	5003504	DOURADINA
5130	12	5003702	DOURADOS
5131	12	5003751	ELDORADO
5132	12	5003801	FÁTIMA DO SUL
5133	12	5003900	FIGUEIRÃO
5134	12	5004007	GLÓRIA DE DOURADOS
5135	12	5004106	GUIA LOPES DA LAGUNA
5136	12	5004304	IGUATEMI
5137	12	5004403	INOCÊNCIA
5138	12	5004502	ITAPORÃ
5139	12	5004601	ITAQUIRAÍ
5140	12	5004700	IVINHEMA
5141	12	5004809	JAPORÃ
5142	12	5004908	JARAGUARI
5143	12	5005004	JARDIM
5144	12	5005103	JATEÍ
5145	12	5005152	JUTI
5146	12	5005202	LADÁRIO
5147	12	5005251	LAGUNA CARAPÃ
5148	12	5005400	MARACAJU
5149	12	5005608	MIRANDA
5150	12	5005681	MUNDO NOVO
5151	12	5005707	NAVIRAÍ
5152	12	5005806	NIOAQUE
5153	12	5006002	NOVA ALVORADA DO SUL
5154	12	5006200	NOVA ANDRADINA
5155	12	5006259	NOVO HORIZONTE DO SUL
5156	12	5006309	PARANAÍBA
5157	12	5006358	PARANHOS
5158	12	5006408	PEDRO GOMES
5159	12	5006606	PONTA PORÃ
5160	12	5006903	PORTO MURTINHO
5161	12	5007109	RIBAS DO RIO PARDO
5162	12	5007208	RIO BRILHANTE
5163	12	5007307	RIO NEGRO
5164	12	5007406	RIO VERDE DE MATO GROSSO
5165	12	5007505	ROCHEDO
5166	12	5007554	SANTA RITA DO PARDO
5167	12	5007695	SÃO GABRIEL DO OESTE
5168	12	5007703	SETE QUEDAS
5169	12	5007802	SELVÍRIA
5170	12	5007901	SIDROLÂNDIA
5171	12	5007935	SONORA
5172	12	5007950	TACURU
5173	12	5007976	TAQUARUSSU
5174	12	5008008	TERENOS
5175	12	5008305	TRÊS LAGOAS
5176	12	5008404	VICENTINA
5177	11	5100102	ACORIZAL
5178	11	5100201	ÁGUA BOA
5179	11	5100250	ALTA FLORESTA
5180	11	5100300	ALTO ARAGUAIA
5181	11	5100359	ALTO BOA VISTA
5182	11	5100409	ALTO GARÇAS
5183	11	5100508	ALTO PARAGUAI
5184	11	5100607	ALTO TAQUARI
5185	11	5100805	APIACÁS
5186	11	5101001	ARAGUAIANA
5187	11	5101209	ARAGUAINHA
5188	11	5101258	ARAPUTANGA
5189	11	5101308	ARENÁPOLIS
5190	11	5101407	ARIPUANÃ
5191	11	5101605	BARÃO DE MELGAÇO
5192	11	5101704	BARRA DO BUGRES
5193	11	5101803	BARRA DO GARÇAS
5194	11	5101852	BOM JESUS DO ARAGUAIA
5195	11	5101902	BRASNORTE
5196	11	5102504	CÁCERES
5197	11	5102603	CAMPINÁPOLIS
5198	11	5102637	CAMPO NOVO DO PARECIS
5199	11	5102678	CAMPO VERDE
5200	11	5102686	CAMPOS DE JÚLIO
5201	11	5102694	CANABRAVA DO NORTE
5202	11	5102702	CANARANA
5203	11	5102793	CARLINDA
5204	11	5102850	CASTANHEIRA
5205	11	5103007	CHAPADA DOS GUIMARÃES
5206	11	5103056	CLÁUDIA
5207	11	5103106	COCALINHO
5208	11	5103205	COLÍDER
5209	11	5103254	COLNIZA
5210	11	5103304	COMODORO
5211	11	5103353	CONFRESA
5212	11	5103361	CONQUISTA D'OESTE
5213	11	5103379	COTRIGUAÇU
5214	11	5103403	CUIABÁ
5215	11	5103437	CURVELÂNDIA
5216	11	5103452	DENISE
5217	11	5103502	DIAMANTINO
5218	11	5103601	DOM AQUINO
5219	11	5103700	FELIZ NATAL
5220	11	5103809	FIGUEIRÓPOLIS D'OESTE
5221	11	5103858	GAÚCHA DO NORTE
5222	11	5103908	GENERAL CARNEIRO
5223	11	5103957	GLÓRIA D'OESTE
5224	11	5104104	GUARANTÃ DO NORTE
5225	11	5104203	GUIRATINGA
5226	11	5104500	INDIAVAÍ
5227	11	5104526	IPIRANGA DO NORTE
5228	11	5104542	ITANHANGÁ
5229	11	5104559	ITAÚBA
5230	11	5104609	ITIQUIRA
5231	11	5104807	JACIARA
5232	11	5104906	JANGADA
5233	11	5105002	JAURU
5234	11	5105101	JUARA
5235	11	5105150	JUÍNA
5236	11	5105176	JURUENA
5237	11	5105200	JUSCIMEIRA
5238	11	5105234	LAMBARI D'OESTE
5239	11	5105259	LUCAS DO RIO VERDE
5240	11	5105309	LUCIÁRA
5241	11	5105507	VILA BELA DA SANTÍSSIMA TRINDADE
5242	11	5105580	MARCELÂNDIA
5243	11	5105606	MATUPÁ
5244	11	5105622	MIRASSOL D'OESTE
5245	11	5105903	NOBRES
5246	11	5106000	NORTELÂNDIA
5247	11	5106109	NOSSA SENHORA DO LIVRAMENTO
5248	11	5106158	NOVA BANDEIRANTES
5249	11	5106174	NOVA NAZARÉ
5250	11	5106182	NOVA LACERDA
5251	11	5106190	NOVA SANTA HELENA
5252	11	5106208	NOVA BRASILÂNDIA
5253	11	5106216	NOVA CANAÃ DO NORTE
5254	11	5106224	NOVA MUTUM
5255	11	5106232	NOVA OLÍMPIA
5256	11	5106240	NOVA UBIRATÃ
5257	11	5106257	NOVA XAVANTINA
5258	11	5106265	NOVO MUNDO
5259	11	5106273	NOVO HORIZONTE DO NORTE
5260	11	5106281	NOVO SÃO JOAQUIM
5261	11	5106299	PARANAÍTA
5262	11	5106307	PARANATINGA
5263	11	5106315	NOVO SANTO ANTÔNIO
5264	11	5106372	PEDRA PRETA
5265	11	5106422	PEIXOTO DE AZEVEDO
5266	11	5106455	PLANALTO DA SERRA
5267	11	5106505	POCONÉ
5268	11	5106653	PONTAL DO ARAGUAIA
5269	11	5106703	PONTE BRANCA
5270	11	5106752	PONTES E LACERDA
5271	11	5106778	PORTO ALEGRE DO NORTE
5272	11	5106802	PORTO DOS GAÚCHOS
5273	11	5106828	PORTO ESPERIDIÃO
5274	11	5106851	PORTO ESTRELA
5275	11	5107008	POXORÉO
5276	11	5107040	PRIMAVERA DO LESTE
5277	11	5107065	QUERÊNCIA
5278	11	5107107	SÃO JOSÉ DOS QUATRO MARCOS
5279	11	5107156	RESERVA DO CABAÇAL
5280	11	5107180	RIBEIRÃO CASCALHEIRA
5281	11	5107198	RIBEIRÃOZINHO
5282	11	5107206	RIO BRANCO
5283	11	5107248	SANTA CARMEM
5284	11	5107263	SANTO AFONSO
5285	11	5107297	SÃO JOSÉ DO POVO
5286	11	5107305	SÃO JOSÉ DO RIO CLARO
5287	11	5107354	SÃO JOSÉ DO XINGU
5288	11	5107404	SÃO PEDRO DA CIPA
5289	11	5107578	RONDOLÂNDIA
5290	11	5107602	RONDONÓPOLIS
5291	11	5107701	ROSÁRIO OESTE
5292	11	5107743	SANTA CRUZ DO XINGU
5293	11	5107750	SALTO DO CÉU
5294	11	5107768	SANTA RITA DO TRIVELATO
5295	11	5107776	SANTA TEREZINHA
5296	11	5107792	SANTO ANTÔNIO DO LESTE
5297	11	5107800	SANTO ANTÔNIO DO LEVERGER
5298	11	5107859	SÃO FÉLIX DO ARAGUAIA
5299	11	5107875	SAPEZAL
5300	11	5107883	SERRA NOVA DOURADA
5301	11	5107909	SINOP
5302	11	5107925	SORRISO
5303	11	5107941	TABAPORÃ
5304	11	5107958	TANGARÁ DA SERRA
5305	11	5108006	TAPURAH
5306	11	5108055	TERRA NOVA DO NORTE
5307	11	5108105	TESOURO
5308	11	5108204	TORIXORÉU
5309	11	5108303	UNIÃO DO SUL
5310	11	5108352	VALE DE SÃO DOMINGOS
5311	11	5108402	VÁRZEA GRANDE
5312	11	5108501	VERA
5313	11	5108600	VILA RICA
5314	11	5108808	NOVA GUARITA
5315	11	5108857	NOVA MARILÂNDIA
5316	11	5108907	NOVA MARINGÁ
5317	11	5108956	NOVA MONTE VERDE
5318	9	5200050	ABADIA DE GOIÁS
5319	9	5200100	ABADIÂNIA
5320	9	5200134	ACREÚNA
5321	9	5200159	ADELÂNDIA
5322	9	5200175	ÁGUA FRIA DE GOIÁS
5323	9	5200209	ÁGUA LIMPA
5324	9	5200258	ÁGUAS LINDAS DE GOIÁS
5325	9	5200308	ALEXÂNIA
5326	9	5200506	ALOÂNDIA
5327	9	5200555	ALTO HORIZONTE
5328	9	5200605	ALTO PARAÍSO DE GOIÁS
5329	9	5200803	ALVORADA DO NORTE
5330	9	5200829	AMARALINA
5331	9	5200852	AMERICANO DO BRASIL
5332	9	5200902	AMORINÓPOLIS
5333	9	5201108	ANÁPOLIS
5334	9	5201207	ANHANGUERA
5335	9	5201306	ANICUNS
5336	9	5201405	APARECIDA DE GOIÂNIA
5337	9	5201454	APARECIDA DO RIO DOCE
5338	9	5201504	APORÉ
5339	9	5201603	ARAÇU
5340	9	5201702	ARAGARÇAS
5341	9	5201801	ARAGOIÂNIA
5342	9	5202155	ARAGUAPAZ
5343	9	5202353	ARENÓPOLIS
5344	9	5202502	ARUANÃ
5345	9	5202601	AURILÂNDIA
5346	9	5202809	AVELINÓPOLIS
5347	9	5203104	BALIZA
5348	9	5203203	BARRO ALTO
5349	9	5203302	BELA VISTA DE GOIÁS
5350	9	5203401	BOM JARDIM DE GOIÁS
5351	9	5203500	BOM JESUS DE GOIÁS
5352	9	5203559	BONFINÓPOLIS
5353	9	5203575	BONÓPOLIS
5354	9	5203609	BRAZABRANTES
5355	9	5203807	BRITÂNIA
5356	9	5203906	BURITI ALEGRE
5357	9	5203939	BURITI DE GOIÁS
5358	9	5203962	BURITINÓPOLIS
5359	9	5204003	CABECEIRAS
5360	9	5204102	CACHOEIRA ALTA
5361	9	5204201	CACHOEIRA DE GOIÁS
5362	9	5204250	CACHOEIRA DOURADA
5363	9	5204300	CAÇU
5364	9	5204409	CAIAPÔNIA
5365	9	5204508	CALDAS NOVAS
5366	9	5204557	CALDAZINHA
5367	9	5204607	CAMPESTRE DE GOIÁS
5368	9	5204656	CAMPINAÇU
5369	9	5204706	CAMPINORTE
5370	9	5204805	CAMPO ALEGRE DE GOIÁS
5371	9	5204854	CAMPO LIMPO DE GOIÁS
5372	9	5204904	CAMPOS BELOS
5373	9	5204953	CAMPOS VERDES
5374	9	5205000	CARMO DO RIO VERDE
5375	9	5205059	CASTELÂNDIA
5376	9	5205109	CATALÃO
5377	9	5205208	CATURAÍ
5378	9	5205307	CAVALCANTE
5379	9	5205406	CERES
5380	9	5205455	CEZARINA
5381	9	5205471	CHAPADÃO DO CÉU
5382	9	5205497	CIDADE OCIDENTAL
5383	9	5205513	COCALZINHO DE GOIÁS
5384	9	5205521	COLINAS DO SUL
5385	9	5205703	CÓRREGO DO OURO
5386	9	5205802	CORUMBÁ DE GOIÁS
5387	9	5205901	CORUMBAÍBA
5388	9	5206206	CRISTALINA
5389	9	5206305	CRISTIANÓPOLIS
5390	9	5206404	CRIXÁS
5391	9	5206503	CROMÍNIA
5392	9	5206602	CUMARI
5393	9	5206701	DAMIANÓPOLIS
5394	9	5206800	DAMOLÂNDIA
5395	9	5206909	DAVINÓPOLIS
5396	9	5207105	DIORAMA
5397	9	5207253	DOVERLÂNDIA
5398	9	5207352	EDEALINA
5399	9	5207402	EDÉIA
5400	9	5207501	ESTRELA DO NORTE
5401	9	5207535	FAINA
5402	9	5207600	FAZENDA NOVA
5403	9	5207808	FIRMINÓPOLIS
5404	9	5207907	FLORES DE GOIÁS
5405	9	5208004	FORMOSA
5406	9	5208103	FORMOSO
5407	9	5208152	GAMELEIRA DE GOIÁS
5408	9	5208301	DIVINÓPOLIS DE GOIÁS
5409	9	5208400	GOIANÁPOLIS
5410	9	5208509	GOIANDIRA
5411	9	5208608	GOIANÉSIA
5412	9	5208707	GOIÂNIA
5413	9	5208806	GOIANIRA
5414	9	5208905	GOIÁS
5415	9	5209101	GOIATUBA
5416	9	5209150	GOUVELÂNDIA
5417	9	5209200	GUAPÓ
5418	9	5209291	GUARAÍTA
5419	9	5209408	GUARANI DE GOIÁS
5420	9	5209457	GUARINOS
5421	9	5209606	HEITORAÍ
5422	9	5209705	HIDROLÂNDIA
5423	9	5209804	HIDROLINA
5424	9	5209903	IACIARA
5425	9	5209937	INACIOLÂNDIA
5426	9	5209952	INDIARA
5427	9	5210000	INHUMAS
5428	9	5210109	IPAMERI
5429	9	5210158	IPIRANGA DE GOIÁS
5430	9	5210208	IPORÁ
5431	9	5210307	ISRAELÂNDIA
5432	9	5210406	ITABERAÍ
5433	9	5210562	ITAGUARI
5434	9	5210604	ITAGUARU
5435	9	5210802	ITAJÁ
5436	9	5210901	ITAPACI
5437	9	5211008	ITAPIRAPUÃ
5438	9	5211206	ITAPURANGA
5439	9	5211305	ITARUMÃ
5440	9	5211404	ITAUÇU
5441	9	5211503	ITUMBIARA
5442	9	5211602	IVOLÂNDIA
5443	9	5211701	JANDAIA
5444	9	5211800	JARAGUÁ
5445	9	5211909	JATAÍ
5446	9	5212006	JAUPACI
5447	9	5212055	JESÚPOLIS
5448	9	5212105	JOVIÂNIA
5449	9	5212204	JUSSARA
5450	9	5212253	LAGOA SANTA
5451	9	5212303	LEOPOLDO DE BULHÕES
5452	9	5212501	LUZIÂNIA
5453	9	5212600	MAIRIPOTABA
5454	9	5212709	MAMBAÍ
5455	9	5212808	MARA ROSA
5456	9	5212907	MARZAGÃO
5457	9	5212956	MATRINCHÃ
5458	9	5213004	MAURILÂNDIA
5459	9	5213053	MIMOSO DE GOIÁS
5460	9	5213087	MINAÇU
5461	9	5213103	MINEIROS
5462	9	5213400	MOIPORÁ
5463	9	5213509	MONTE ALEGRE DE GOIÁS
5464	9	5213707	MONTES CLAROS DE GOIÁS
5465	9	5213756	MONTIVIDIU
5466	9	5213772	MONTIVIDIU DO NORTE
5467	9	5213806	MORRINHOS
5468	9	5213855	MORRO AGUDO DE GOIÁS
5469	9	5213905	MOSSÂMEDES
5470	9	5214002	MOZARLÂNDIA
5471	9	5214051	MUNDO NOVO
5472	9	5214101	MUTUNÓPOLIS
5473	9	5214408	NAZÁRIO
5474	9	5214507	NERÓPOLIS
5475	9	5214606	NIQUELÂNDIA
5476	9	5214705	NOVA AMÉRICA
5477	9	5214804	NOVA AURORA
5478	9	5214838	NOVA CRIXÁS
5479	9	5214861	NOVA GLÓRIA
5480	9	5214879	NOVA IGUAÇU DE GOIÁS
5481	9	5214903	NOVA ROMA
5482	9	5215009	NOVA VENEZA
5483	9	5215207	NOVO BRASIL
5484	9	5215231	NOVO GAMA
5485	9	5215256	NOVO PLANALTO
5486	9	5215306	ORIZONA
5487	9	5215405	OURO VERDE DE GOIÁS
5488	9	5215504	OUVIDOR
5489	9	5215603	PADRE BERNARDO
5490	9	5215652	PALESTINA DE GOIÁS
5491	9	5215702	PALMEIRAS DE GOIÁS
5492	9	5215801	PALMELO
5493	9	5215900	PALMINÓPOLIS
5494	9	5216007	PANAMÁ
5495	9	5216304	PARANAIGUARA
5496	9	5216403	PARAÚNA
5497	9	5216452	PEROLÂNDIA
5498	9	5216809	PETROLINA DE GOIÁS
5499	9	5216908	PILAR DE GOIÁS
5500	9	5217104	PIRACANJUBA
5501	9	5217203	PIRANHAS
5502	9	5217302	PIRENÓPOLIS
5503	9	5217401	PIRES DO RIO
5504	9	5217609	PLANALTINA
5505	9	5217708	PONTALINA
5506	9	5218003	PORANGATU
5507	9	5218052	PORTEIRÃO
5508	9	5218102	PORTELÂNDIA
5509	9	5218300	POSSE
5510	9	5218391	PROFESSOR JAMIL
5511	9	5218508	QUIRINÓPOLIS
5512	9	5218607	RIALMA
5513	9	5218706	RIANÁPOLIS
5514	9	5218789	RIO QUENTE
5515	9	5218805	RIO VERDE
5516	9	5218904	RUBIATABA
5517	9	5219001	SANCLERLÂNDIA
5518	9	5219100	SANTA BÁRBARA DE GOIÁS
5519	9	5219209	SANTA CRUZ DE GOIÁS
5520	9	5219258	SANTA FÉ DE GOIÁS
5521	9	5219308	SANTA HELENA DE GOIÁS
5522	9	5219357	SANTA ISABEL
5523	9	5219407	SANTA RITA DO ARAGUAIA
5524	9	5219456	SANTA RITA DO NOVO DESTINO
5525	9	5219506	SANTA ROSA DE GOIÁS
5526	9	5219605	SANTA TEREZA DE GOIÁS
5527	9	5219704	SANTA TEREZINHA DE GOIÁS
5528	9	5219712	SANTO ANTÔNIO DA BARRA
5529	9	5219738	SANTO ANTÔNIO DE GOIÁS
5530	9	5219753	SANTO ANTÔNIO DO DESCOBERTO
5531	9	5219803	SÃO DOMINGOS
5532	9	5219902	SÃO FRANCISCO DE GOIÁS
5533	9	5220009	SÃO JOÃO D'ALIANÇA
5534	9	5220058	SÃO JOÃO DA PARAÚNA
5535	9	5220108	SÃO LUÍS DE MONTES BELOS
5536	9	5220157	SÃO LUÍZ DO NORTE
5537	9	5220207	SÃO MIGUEL DO ARAGUAIA
5538	9	5220264	SÃO MIGUEL DO PASSA QUATRO
5539	9	5220280	SÃO PATRÍCIO
5540	9	5220405	SÃO SIMÃO
5541	9	5220454	SENADOR CANEDO
5542	9	5220504	SERRANÓPOLIS
5543	9	5220603	SILVÂNIA
5544	9	5220686	SIMOLÂNDIA
5545	9	5220702	SÍTIO D'ABADIA
5546	9	5221007	TAQUARAL DE GOIÁS
5547	9	5221080	TERESINA DE GOIÁS
5548	9	5221197	TEREZÓPOLIS DE GOIÁS
5549	9	5221304	TRÊS RANCHOS
5550	9	5221403	TRINDADE
5551	9	5221452	TROMBAS
5552	9	5221502	TURVÂNIA
5553	9	5221551	TURVELÂNDIA
5554	9	5221577	UIRAPURU
5555	9	5221601	URUAÇU
5556	9	5221700	URUANA
5557	9	5221809	URUTAÍ
5558	9	5221858	VALPARAÍSO DE GOIÁS
5559	9	5221908	VARJÃO
5560	9	5222005	VIANÓPOLIS
5561	9	5222054	VICENTINÓPOLIS
5562	9	5222203	VILA BOA
5563	9	5222302	VILA PROPÍCIO
5564	7	75300108	BRASÍLIA
\.


--
-- Name: sis_municipio_sis_municipio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('sis_municipio_sis_municipio_id_seq', 1, false);


--
-- Data for Name: sis_usuario; Type: TABLE DATA; Schema: public; Owner: openpdv
--

COPY sis_usuario (sis_usuario_id, sis_usuario_login, sis_usuario_senha, sis_usuario_desconto, sis_usuario_ativo, sis_usuario_caixa, sis_usuario_gerente) FROM stdin;
1	ADMIN	D033E22AE348AEB5660FC2140AEC35850C4DA997	100	1	1	1
2	DEMO	E9F17FCDD179806B4E38B7F474049213BB246749	0	1	1	0
\.


--
-- Name: sis_usuario_sis_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: openpdv
--

SELECT pg_catalog.setval('sis_usuario_sis_usuario_id_seq', 1, false);


--
-- Name: ecf_documento_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_documento
    ADD CONSTRAINT ecf_documento_pkey PRIMARY KEY (ecf_documento_id);


--
-- Name: ecf_impressora_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_impressora
    ADD CONSTRAINT ecf_impressora_pkey PRIMARY KEY (ecf_impressora_id);


--
-- Name: ecf_nota_eletronica_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_nota_eletronica
    ADD CONSTRAINT ecf_nota_eletronica_pkey PRIMARY KEY (ecf_nota_eletronica_id);


--
-- Name: ecf_nota_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_nota
    ADD CONSTRAINT ecf_nota_pkey PRIMARY KEY (ecf_nota_id);


--
-- Name: ecf_nota_produto_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_nota_produto
    ADD CONSTRAINT ecf_nota_produto_pkey PRIMARY KEY (ecf_nota_produto_id);


--
-- Name: ecf_pagamento_parcela_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_pagamento_parcela
    ADD CONSTRAINT ecf_pagamento_parcela_pkey PRIMARY KEY (ecf_pagamento_parcela_id);


--
-- Name: ecf_pagamento_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_pagamento
    ADD CONSTRAINT ecf_pagamento_pkey PRIMARY KEY (ecf_pagamento_id);


--
-- Name: ecf_pagamento_tipo_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_pagamento_tipo
    ADD CONSTRAINT ecf_pagamento_tipo_pkey PRIMARY KEY (ecf_pagamento_tipo_id);


--
-- Name: ecf_pagamento_totais_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_pagamento_totais
    ADD CONSTRAINT ecf_pagamento_totais_pkey PRIMARY KEY (ecf_pagamento_totais_id);


--
-- Name: ecf_troca_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_troca
    ADD CONSTRAINT ecf_troca_pkey PRIMARY KEY (ecf_troca_id);


--
-- Name: ecf_troca_produto_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_troca_produto
    ADD CONSTRAINT ecf_troca_produto_pkey PRIMARY KEY (ecf_troca_produto_id);


--
-- Name: ecf_venda_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_venda
    ADD CONSTRAINT ecf_venda_pkey PRIMARY KEY (ecf_venda_id);


--
-- Name: ecf_venda_produto_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_venda_produto
    ADD CONSTRAINT ecf_venda_produto_pkey PRIMARY KEY (ecf_venda_produto_id);


--
-- Name: ecf_z_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_z
    ADD CONSTRAINT ecf_z_pkey PRIMARY KEY (ecf_z_id);


--
-- Name: ecf_z_totais_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_z_totais
    ADD CONSTRAINT ecf_z_totais_pkey PRIMARY KEY (ecf_z_totais_id);


--
-- Name: prod_composicao_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY prod_composicao
    ADD CONSTRAINT prod_composicao_pkey PRIMARY KEY (prod_composicao_id);


--
-- Name: prod_embalagem_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY prod_embalagem
    ADD CONSTRAINT prod_embalagem_pkey PRIMARY KEY (prod_embalagem_id);


--
-- Name: prod_grade_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY prod_grade
    ADD CONSTRAINT prod_grade_pkey PRIMARY KEY (prod_grade_id);


--
-- Name: prod_preco_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY prod_preco
    ADD CONSTRAINT prod_preco_pkey PRIMARY KEY (prod_preco_id);


--
-- Name: prod_produto_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY prod_produto
    ADD CONSTRAINT prod_produto_pkey PRIMARY KEY (prod_produto_id);


--
-- Name: sis_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY sis_cliente
    ADD CONSTRAINT sis_cliente_pkey PRIMARY KEY (sis_cliente_id);


--
-- Name: sis_empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY sis_empresa
    ADD CONSTRAINT sis_empresa_pkey PRIMARY KEY (sis_empresa_id);


--
-- Name: sis_estado_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY sis_estado
    ADD CONSTRAINT sis_estado_pkey PRIMARY KEY (sis_estado_id);


--
-- Name: sis_municipio_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY sis_municipio
    ADD CONSTRAINT sis_municipio_pkey PRIMARY KEY (sis_municipio_id);


--
-- Name: sis_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY sis_usuario
    ADD CONSTRAINT sis_usuario_pkey PRIMARY KEY (sis_usuario_id);


--
-- Name: uk_ecf_nota_1; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_nota
    ADD CONSTRAINT uk_ecf_nota_1 UNIQUE (ecf_nota_serie, ecf_nota_subserie, ecf_nota_numero);


--
-- Name: uk_ecf_nota_eletronica_1; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_nota_eletronica
    ADD CONSTRAINT uk_ecf_nota_eletronica_1 UNIQUE (ecf_nota_eletronica_chave);


--
-- Name: uk_ecf_z_totais_1; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY ecf_z_totais
    ADD CONSTRAINT uk_ecf_z_totais_1 UNIQUE (ecf_z_id, ecf_z_totais_codigo);


--
-- Name: uk_prod_embalagem_1; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY prod_embalagem
    ADD CONSTRAINT uk_prod_embalagem_1 UNIQUE (prod_embalagem_nome);


--
-- Name: uk_sis_estado_1; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY sis_estado
    ADD CONSTRAINT uk_sis_estado_1 UNIQUE (sis_estado_ibge);


--
-- Name: uk_sis_municipio_1; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY sis_municipio
    ADD CONSTRAINT uk_sis_municipio_1 UNIQUE (sis_municipio_ibge);


--
-- Name: uk_sis_usuario_1; Type: CONSTRAINT; Schema: public; Owner: openpdv; Tablespace: 
--

ALTER TABLE ONLY sis_usuario
    ADD CONSTRAINT uk_sis_usuario_1 UNIQUE (sis_usuario_login);


--
-- Name: ik_prod_produto_1; Type: INDEX; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE INDEX ik_prod_produto_1 ON prod_produto USING btree (prod_produto_barra);


--
-- Name: ik_prod_produto_2; Type: INDEX; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE INDEX ik_prod_produto_2 ON prod_produto USING btree (prod_produto_descricao);


--
-- Name: ik_prod_produto_3; Type: INDEX; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE INDEX ik_prod_produto_3 ON prod_produto USING btree (prod_produto_referencia);


--
-- Name: ik_prod_produto_4; Type: INDEX; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE INDEX ik_prod_produto_4 ON prod_produto USING btree (prod_produto_preco);


--
-- Name: ik_prod_produto_5; Type: INDEX; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE INDEX ik_prod_produto_5 ON prod_produto USING btree (prod_produto_estoque);


--
-- Name: ik_prod_produto_6; Type: INDEX; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE INDEX ik_prod_produto_6 ON prod_produto USING btree (prod_produto_cadastrado);


--
-- Name: ik_prod_produto_7; Type: INDEX; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE INDEX ik_prod_produto_7 ON prod_produto USING btree (prod_produto_alterado);


--
-- Name: ik_prod_produto_8; Type: INDEX; Schema: public; Owner: openpdv; Tablespace: 
--

CREATE INDEX ik_prod_produto_8 ON prod_produto USING btree (prod_produto_ativo);


--
-- Name: fk_ecf_documento_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_documento
    ADD CONSTRAINT fk_ecf_documento_1 FOREIGN KEY (ecf_impressora_id) REFERENCES ecf_impressora(ecf_impressora_id);

--
-- Name: fk_ecf_documento_2; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_documento
    ADD CONSTRAINT fk_ecf_documento_2 FOREIGN KEY (ecf_z_id) REFERENCES ecf_z(ecf_z_id);


--
-- Name: fk_ecf_nota_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_nota
    ADD CONSTRAINT fk_ecf_nota_1 FOREIGN KEY (sis_cliente_id) REFERENCES sis_cliente(sis_cliente_id);


--
-- Name: fk_ecf_nota_eletronica_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_nota_eletronica
    ADD CONSTRAINT fk_ecf_nota_eletronica_1 FOREIGN KEY (sis_cliente_id) REFERENCES sis_cliente(sis_cliente_id);


--
-- Name: fk_ecf_nota_produto_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_nota_produto
    ADD CONSTRAINT fk_ecf_nota_produto_1 FOREIGN KEY (ecf_nota_id) REFERENCES ecf_nota(ecf_nota_id);


--
-- Name: fk_ecf_nota_produto_2; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_nota_produto
    ADD CONSTRAINT fk_ecf_nota_produto_2 FOREIGN KEY (prod_produto_id) REFERENCES prod_produto(prod_produto_id);


--
-- Name: fk_ecf_nota_produto_3; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_nota_produto
    ADD CONSTRAINT fk_ecf_nota_produto_3 FOREIGN KEY (prod_embalagem_id) REFERENCES prod_embalagem(prod_embalagem_id);


--
-- Name: fk_ecf_pagamento_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_pagamento
    ADD CONSTRAINT fk_ecf_pagamento_1 FOREIGN KEY (ecf_venda_id) REFERENCES ecf_venda(ecf_venda_id);


--
-- Name: fk_ecf_pagamento_2; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_pagamento
    ADD CONSTRAINT fk_ecf_pagamento_2 FOREIGN KEY (ecf_pagamento_tipo_id) REFERENCES ecf_pagamento_tipo(ecf_pagamento_tipo_id);


--
-- Name: fk_ecf_pagamento_parcela_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_pagamento_parcela
    ADD CONSTRAINT fk_ecf_pagamento_parcela_1 FOREIGN KEY (ecf_pagamento_id) REFERENCES ecf_pagamento(ecf_pagamento_id);


--
-- Name: fk_ecf_pagamento_totais_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_pagamento_totais
    ADD CONSTRAINT fk_ecf_pagamento_totais_1 FOREIGN KEY (ecf_pagamento_tipo_id) REFERENCES ecf_pagamento_tipo(ecf_pagamento_tipo_id);


--
-- Name: fk_ecf_troca_produto_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_troca_produto
    ADD CONSTRAINT fk_ecf_troca_produto_1 FOREIGN KEY (ecf_troca_id) REFERENCES ecf_troca(ecf_troca_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_ecf_troca_produto_2; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_troca_produto
    ADD CONSTRAINT fk_ecf_troca_produto_2 FOREIGN KEY (prod_produto_id) REFERENCES prod_produto(prod_produto_id);


--
-- Name: fk_ecf_troca_produto_3; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_troca_produto
    ADD CONSTRAINT fk_ecf_troca_produto_3 FOREIGN KEY (prod_embalagem_id) REFERENCES prod_embalagem(prod_embalagem_id);


--
-- Name: fk_ecf_venda_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_venda
    ADD CONSTRAINT fk_ecf_venda_1 FOREIGN KEY (sis_usuario_id) REFERENCES sis_usuario(sis_usuario_id);


--
-- Name: fk_ecf_venda_2; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_venda
    ADD CONSTRAINT fk_ecf_venda_2 FOREIGN KEY (ecf_z_id) REFERENCES ecf_z(ecf_z_id);


--
-- Name: fk_ecf_venda_3; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_venda
    ADD CONSTRAINT fk_ecf_venda_3 FOREIGN KEY (sis_cliente_id) REFERENCES sis_cliente(sis_cliente_id);


--
-- Name: fk_ecf_venda_4; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_venda
    ADD CONSTRAINT fk_ecf_venda_4 FOREIGN KEY (sis_vendedor_id) REFERENCES sis_usuario(sis_usuario_id);


--
-- Name: fk_ecf_venda_5; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_venda
    ADD CONSTRAINT fk_ecf_venda_5 FOREIGN KEY (sis_gerente_id) REFERENCES sis_usuario(sis_usuario_id);


--
-- Name: fk_ecf_venda_6; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_venda
    ADD CONSTRAINT fk_ecf_venda_6 FOREIGN KEY (ecf_impressora_id) REFERENCES ecf_impressora(ecf_impressora_id);


--
-- Name: fk_ecf_troca_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_troca
    ADD CONSTRAINT fk_ecf_troca_1 FOREIGN KEY (ecf_venda_id) REFERENCES ecf_venda(ecf_venda_id);


--
-- Name: fk_ecf_venda_produto_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_venda_produto
    ADD CONSTRAINT fk_ecf_venda_produto_1 FOREIGN KEY (ecf_venda_id) REFERENCES ecf_venda(ecf_venda_id);


--
-- Name: fk_ecf_venda_produto_2; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_venda_produto
    ADD CONSTRAINT fk_ecf_venda_produto_2 FOREIGN KEY (prod_embalagem_id) REFERENCES prod_embalagem(prod_embalagem_id);


--
-- Name: fk_ecf_venda_produto_3; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_venda_produto
    ADD CONSTRAINT fk_ecf_venda_produto_3 FOREIGN KEY (prod_produto_id) REFERENCES prod_produto(prod_produto_id);


--
-- Name: fk_ecf_z_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_z
    ADD CONSTRAINT fk_ecf_z_1 FOREIGN KEY (ecf_impressora_id) REFERENCES ecf_impressora(ecf_impressora_id);


--
-- Name: fk_prod_composicao_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY prod_composicao
    ADD CONSTRAINT fk_prod_composicao_1 FOREIGN KEY (prod_produto_principal) REFERENCES prod_produto(prod_produto_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_prod_composicao_2; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY prod_composicao
    ADD CONSTRAINT fk_prod_composicao_2 FOREIGN KEY (prod_produto_id) REFERENCES prod_produto(prod_produto_id);


--
-- Name: fk_prod_composicao_3; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY prod_composicao
    ADD CONSTRAINT fk_prod_composicao_3 FOREIGN KEY (prod_embalagem_id) REFERENCES prod_embalagem(prod_embalagem_id);


--
-- Name: fk_prod_grade_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY prod_grade
    ADD CONSTRAINT fk_prod_grade_1 FOREIGN KEY (prod_produto_id) REFERENCES prod_produto(prod_produto_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_prod_preco_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY prod_preco
    ADD CONSTRAINT fk_prod_preco_1 FOREIGN KEY (prod_produto_id) REFERENCES prod_produto(prod_produto_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_prod_preco_2; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY prod_preco
    ADD CONSTRAINT fk_prod_preco_2 FOREIGN KEY (prod_embalagem_id) REFERENCES prod_embalagem(prod_embalagem_id);


--
-- Name: fk_prod_produto_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY prod_produto
    ADD CONSTRAINT fk_prod_produto_1 FOREIGN KEY (prod_embalagem_id) REFERENCES prod_embalagem(prod_embalagem_id);


--
-- Name: fk_sis_cliente_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY sis_cliente
    ADD CONSTRAINT fk_sis_cliente_1 FOREIGN KEY (sis_municipio_id) REFERENCES sis_municipio(sis_municipio_id);


--
-- Name: fk_sis_empresa_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY sis_empresa
    ADD CONSTRAINT fk_sis_empresa_1 FOREIGN KEY (sis_municipio_id) REFERENCES sis_municipio(sis_municipio_id);


--
-- Name: fk_sis_municipio_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY sis_municipio
    ADD CONSTRAINT fk_sis_municipio_1 FOREIGN KEY (sis_estado_id) REFERENCES sis_estado(sis_estado_id);


--
-- Name: fk_z_totais_1; Type: FK CONSTRAINT; Schema: public; Owner: openpdv
--

ALTER TABLE ONLY ecf_z_totais
    ADD CONSTRAINT fk_z_totais_1 FOREIGN KEY (ecf_z_id) REFERENCES ecf_z(ecf_z_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: openpdv
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM openpdv;
GRANT ALL ON SCHEMA public TO openpdv;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public REVOKE ALL ON SEQUENCES  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public REVOKE ALL ON SEQUENCES  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON SEQUENCES  TO PUBLIC;


--
-- Name: DEFAULT PRIVILEGES FOR TYPES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public REVOKE ALL ON TYPES  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public REVOKE ALL ON TYPES  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TYPES  TO PUBLIC;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON FUNCTIONS  TO PUBLIC;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public REVOKE ALL ON TABLES  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public REVOKE ALL ON TABLES  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES  TO PUBLIC;


--
-- PostgreSQL database dump complete
--

