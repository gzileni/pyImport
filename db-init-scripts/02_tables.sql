SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 451 (class 1259 OID 19917)
-- Name: ptp_sa_insed_svil_turis; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_sa_insed_svil_turis (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    samcd character varying(3),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_sa_insed_svil_turis OWNER TO wharp;

--
-- TOC entry 450 (class 1259 OID 19915)
-- Name: Shape — ptp_sa_insed_svil_turis_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.ptp_sa_insed_svil_turis_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.ptp_sa_insed_svil_turis_gid_seq OWNER TO wharp;

--
-- TOC entry 5997 (class 0 OID 0)
-- Dependencies: 450
-- Name: Shape — ptp_sa_insed_svil_turis_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.ptp_sa_insed_svil_turis_gid_seq OWNED BY assets.ptp_sa_insed_svil_turis.gid;


--
-- TOC entry 335 (class 1259 OID 18750)
-- Name: ptp_abitazioni; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_abitazioni (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    livello character varying(32),
    testo character varying(254),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_abitazioni OWNER TO wharp;

--
-- TOC entry 334 (class 1259 OID 18748)
-- Name: abitazioni_id_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.abitazioni_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.abitazioni_id_seq OWNER TO wharp;

--
-- TOC entry 5998 (class 0 OID 0)
-- Dependencies: 334
-- Name: abitazioni_id_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.abitazioni_id_seq OWNED BY assets.ptp_abitazioni.gid;


--
-- TOC entry 333 (class 1259 OID 18737)
-- Name: ptp_agglomerati; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_agglomerati (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    aggcd character varying(2),
    cod character varying(3),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_agglomerati OWNER TO wharp;

--
-- TOC entry 332 (class 1259 OID 18735)
-- Name: agglomerati_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.agglomerati_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.agglomerati_gid_seq OWNER TO wharp;

--
-- TOC entry 5999 (class 0 OID 0)
-- Dependencies: 332
-- Name: agglomerati_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.agglomerati_gid_seq OWNED BY assets.ptp_agglomerati.gid;


--
-- TOC entry 511 (class 1259 OID 21635)
-- Name: akhet_vda_elab_lineare; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.akhet_vda_elab_lineare (
    gid integer NOT NULL,
    geom public.geometry(LineStringZ,4326),
    objectid_1 bigint,
    objectid bigint,
    fid_ bigint,
    entity character varying(16),
    layer character varying(254),
    color integer,
    linetype character varying(254),
    elevation double precision,
    linewt integer,
    refname character varying(254),
    priorita bigint,
    nome character varying(7),
    stato character varying(11),
    ente_propr character varying(15),
    nome_1 character varying(27),
    proprieta character varying(10),
    descrizion character varying(17),
    ubicazione bigint,
    sede_di_po character varying(12),
    superficie character varying(9),
    diritto_d_ bigint,
    lato_strad bigint,
    coordest character varying(9),
    coordnord character varying(10),
    commento bigint,
    descriz_pr character varying(13),
    delim_inf_ bigint,
    altezza bigint,
    lunghezza bigint,
    nsez character varying(2),
    handle character varying(16),
    lyrfrzn integer,
    lyrlock integer,
    lyron integer,
    lyrvpfrzn integer,
    lyrhandle character varying(16),
    entcolor integer,
    lyrcolor integer,
    blkcolor integer,
    entlinetyp character varying(254),
    lyrlntype character varying(254),
    blklinetyp character varying(254),
    thickness double precision,
    entlinewt integer,
    lyrlinewt integer,
    blklinewt integer,
    ltscale double precision,
    extx double precision,
    exty double precision,
    extz double precision,
    docname character varying(254),
    docpath character varying(254),
    doctype character varying(32),
    docver character varying(16),
    shape_leng double precision
);


ALTER TABLE assets.akhet_vda_elab_lineare OWNER TO wharp;

--
-- TOC entry 510 (class 1259 OID 21633)
-- Name: akhet_vda_elab_lineare_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.akhet_vda_elab_lineare_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.akhet_vda_elab_lineare_gid_seq OWNER TO wharp;

--
-- TOC entry 6000 (class 0 OID 0)
-- Dependencies: 510
-- Name: akhet_vda_elab_lineare_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.akhet_vda_elab_lineare_gid_seq OWNED BY assets.akhet_vda_elab_lineare.gid;


--
-- TOC entry 513 (class 1259 OID 21653)
-- Name: akhet_vda_elem_noti_lineare; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.akhet_vda_elem_noti_lineare (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    objectid bigint,
    tipo character varying(50),
    elemento character varying(50),
    shape_leng double precision,
    provenienz character varying(50),
    style character varying(100)
);


ALTER TABLE assets.akhet_vda_elem_noti_lineare OWNER TO wharp;

--
-- TOC entry 512 (class 1259 OID 21651)
-- Name: akhet_vda_elem_noti_lineare_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.akhet_vda_elem_noti_lineare_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.akhet_vda_elem_noti_lineare_gid_seq OWNER TO wharp;

--
-- TOC entry 6001 (class 0 OID 0)
-- Dependencies: 512
-- Name: akhet_vda_elem_noti_lineare_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.akhet_vda_elem_noti_lineare_gid_seq OWNED BY assets.akhet_vda_elem_noti_lineare.gid;


--
-- TOC entry 515 (class 1259 OID 21677)
-- Name: akhet_vda_elem_noti_poligonale; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.akhet_vda_elem_noti_poligonale (
    gid integer NOT NULL,
    geom public.geometry(MultiPolygonZ,4326),
    objectid bigint,
    shape_leng double precision,
    shape_area double precision,
    provenienz character varying(50),
    tipo character varying(50),
    elemento character varying(50),
    style character varying(100)
);


ALTER TABLE assets.akhet_vda_elem_noti_poligonale OWNER TO wharp;

--
-- TOC entry 514 (class 1259 OID 21675)
-- Name: akhet_vda_elem_noti_poligonale_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.akhet_vda_elem_noti_poligonale_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.akhet_vda_elem_noti_poligonale_gid_seq OWNER TO wharp;

--
-- TOC entry 6002 (class 0 OID 0)
-- Dependencies: 514
-- Name: akhet_vda_elem_noti_poligonale_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.akhet_vda_elem_noti_poligonale_gid_seq OWNED BY assets.akhet_vda_elem_noti_poligonale.gid;


--
-- TOC entry 505 (class 1259 OID 21589)
-- Name: akhet_vda_lineare; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.akhet_vda_lineare (
    gid integer NOT NULL,
    geom public.geometry(MultiLineStringZ,4326),
    objectid bigint,
    elevation double precision,
    nr_sito integer,
    epoca_tipo character varying(50),
    epoca_ti_1 character varying(50),
    refname character varying(254),
    idepoca bigint,
    shape_leng double precision,
    z_min double precision,
    z_max double precision
);


ALTER TABLE assets.akhet_vda_lineare OWNER TO wharp;

--
-- TOC entry 504 (class 1259 OID 21587)
-- Name: akhet_vda_lineare_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.akhet_vda_lineare_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.akhet_vda_lineare_gid_seq OWNER TO wharp;

--
-- TOC entry 6003 (class 0 OID 0)
-- Dependencies: 504
-- Name: akhet_vda_lineare_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.akhet_vda_lineare_gid_seq OWNED BY assets.akhet_vda_lineare.gid;


--
-- TOC entry 507 (class 1259 OID 21609)
-- Name: akhet_vda_poligonale; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.akhet_vda_poligonale (
    gid integer NOT NULL,
    geom public.geometry(PolygonZ,4326),
    objectid bigint,
    elevation double precision,
    nr_sito integer,
    epoca_ti character varying(50),
    epoca_ti_1 character varying(50),
    idepoca bigint,
    shape_leng double precision,
    shape_area double precision
);


ALTER TABLE assets.akhet_vda_poligonale OWNER TO wharp;

--
-- TOC entry 506 (class 1259 OID 21607)
-- Name: akhet_vda_poligonale_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.akhet_vda_poligonale_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.akhet_vda_poligonale_gid_seq OWNER TO wharp;

--
-- TOC entry 6004 (class 0 OID 0)
-- Dependencies: 506
-- Name: akhet_vda_poligonale_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.akhet_vda_poligonale_gid_seq OWNED BY assets.akhet_vda_poligonale.gid;


--
-- TOC entry 509 (class 1259 OID 21621)
-- Name: akhet_vda_puntuale; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.akhet_vda_puntuale (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    idepoca double precision,
    nr_sito double precision,
    epoca double precision,
    tipologia double precision,
    objectid bigint,
    x double precision,
    y double precision,
    epoca_tipo character varying(50),
    epoca_ti_1 character varying(50),
    z double precision,
    img character varying(200),
    nome character varying(200),
    descrizion character varying(254),
    cadtype character varying(50),
    txtvalue character varying(50)
);


ALTER TABLE assets.akhet_vda_puntuale OWNER TO wharp;

--
-- TOC entry 508 (class 1259 OID 21619)
-- Name: akhet_vda_puntuale_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.akhet_vda_puntuale_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.akhet_vda_puntuale_gid_seq OWNER TO wharp;

--
-- TOC entry 6005 (class 0 OID 0)
-- Dependencies: 508
-- Name: akhet_vda_puntuale_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.akhet_vda_puntuale_gid_seq OWNED BY assets.akhet_vda_puntuale.gid;


--
-- TOC entry 503 (class 1259 OID 21539)
-- Name: akhet_vda_vincoli_archeologici; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.akhet_vda_vincoli_archeologici (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    txt character varying(50),
    nome character varying(254),
    aacd character varying(5),
    foglio1__c character varying(254),
    foglio1__t character varying(254),
    style character varying(100)
);


ALTER TABLE assets.akhet_vda_vincoli_archeologici OWNER TO wharp;

--
-- TOC entry 502 (class 1259 OID 21537)
-- Name: akhet_vincoli_archeologici_id_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.akhet_vincoli_archeologici_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.akhet_vincoli_archeologici_id_seq OWNER TO wharp;

--
-- TOC entry 6006 (class 0 OID 0)
-- Dependencies: 502
-- Name: akhet_vincoli_archeologici_id_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.akhet_vincoli_archeologici_id_seq OWNED BY assets.akhet_vda_vincoli_archeologici.gid;


--
-- TOC entry 337 (class 1259 OID 18762)
-- Name: ptp_alte_vie; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_alte_vie (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    altcd character varying(2),
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_alte_vie OWNER TO wharp;

--
-- TOC entry 336 (class 1259 OID 18760)
-- Name: alte_vie_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.alte_vie_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.alte_vie_gid_seq OWNER TO wharp;

--
-- TOC entry 6007 (class 0 OID 0)
-- Dependencies: 336
-- Name: alte_vie_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.alte_vie_gid_seq OWNED BY assets.ptp_alte_vie.gid;


--
-- TOC entry 339 (class 1259 OID 18775)
-- Name: ptp_altri_parchi; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_altri_parchi (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    parcd character varying(2),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_altri_parchi OWNER TO wharp;

--
-- TOC entry 338 (class 1259 OID 18773)
-- Name: altri_parchi_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.altri_parchi_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.altri_parchi_gid_seq OWNER TO wharp;

--
-- TOC entry 6008 (class 0 OID 0)
-- Dependencies: 338
-- Name: altri_parchi_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.altri_parchi_gid_seq OWNED BY assets.ptp_altri_parchi.gid;


--
-- TOC entry 341 (class 1259 OID 18791)
-- Name: ptp_aosta_bourgs; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_aosta_bourgs (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    aggcd character varying(2),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_aosta_bourgs OWNER TO wharp;

--
-- TOC entry 340 (class 1259 OID 18789)
-- Name: aosta_bourgs_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.aosta_bourgs_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.aosta_bourgs_gid_seq OWNER TO wharp;

--
-- TOC entry 6009 (class 0 OID 0)
-- Dependencies: 340
-- Name: aosta_bourgs_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.aosta_bourgs_gid_seq OWNED BY assets.ptp_aosta_bourgs.gid;


--
-- TOC entry 345 (class 1259 OID 18817)
-- Name: ptp_aree_tutela; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_aree_tutela (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    mincd character varying(2),
    cod character varying(6),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_aree_tutela OWNER TO wharp;

--
-- TOC entry 344 (class 1259 OID 18815)
-- Name: aree_tutela_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.aree_tutela_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.aree_tutela_gid_seq OWNER TO wharp;

--
-- TOC entry 6010 (class 0 OID 0)
-- Dependencies: 344
-- Name: aree_tutela_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.aree_tutela_gid_seq OWNED BY assets.ptp_aree_tutela.gid;


--
-- TOC entry 347 (class 1259 OID 18835)
-- Name: ptp_attest_affl_turistico; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_attest_affl_turistico (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    turcd character varying(2),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_attest_affl_turistico OWNER TO wharp;

--
-- TOC entry 346 (class 1259 OID 18833)
-- Name: attest_affl_turistico_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.attest_affl_turistico_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.attest_affl_turistico_gid_seq OWNER TO wharp;

--
-- TOC entry 6011 (class 0 OID 0)
-- Dependencies: 346
-- Name: attest_affl_turistico_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.attest_affl_turistico_gid_seq OWNED BY assets.ptp_attest_affl_turistico.gid;


--
-- TOC entry 349 (class 1259 OID 18847)
-- Name: ptp_attrezzature_leggere; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_attrezzature_leggere (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    turcd character varying(2),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_attrezzature_leggere OWNER TO wharp;

--
-- TOC entry 348 (class 1259 OID 18845)
-- Name: attrezzature_leggere_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.attrezzature_leggere_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.attrezzature_leggere_gid_seq OWNER TO wharp;

--
-- TOC entry 6012 (class 0 OID 0)
-- Dependencies: 348
-- Name: attrezzature_leggere_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.attrezzature_leggere_gid_seq OWNED BY assets.ptp_attrezzature_leggere.gid;


--
-- TOC entry 351 (class 1259 OID 18859)
-- Name: ptp_autostrade; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_autostrade (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    autcd character varying(3),
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_autostrade OWNER TO wharp;

--
-- TOC entry 350 (class 1259 OID 18857)
-- Name: autostrade_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.autostrade_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.autostrade_gid_seq OWNER TO wharp;

--
-- TOC entry 6013 (class 0 OID 0)
-- Dependencies: 350
-- Name: autostrade_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.autostrade_gid_seq OWNED BY assets.ptp_autostrade.gid;


--
-- TOC entry 353 (class 1259 OID 18871)
-- Name: ptp_autostrade_svincoli; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_autostrade_svincoli (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    auscd character varying(2),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_autostrade_svincoli OWNER TO wharp;

--
-- TOC entry 352 (class 1259 OID 18869)
-- Name: autostrade_svincoli_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.autostrade_svincoli_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.autostrade_svincoli_gid_seq OWNER TO wharp;

--
-- TOC entry 6014 (class 0 OID 0)
-- Dependencies: 352
-- Name: autostrade_svincoli_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.autostrade_svincoli_gid_seq OWNED BY assets.ptp_autostrade_svincoli.gid;


--
-- TOC entry 355 (class 1259 OID 18884)
-- Name: ptp_beni_culturali_isolati; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_beni_culturali_isolati (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    turcd character varying(2),
    cod character varying(6),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_beni_culturali_isolati OWNER TO wharp;

--
-- TOC entry 354 (class 1259 OID 18882)
-- Name: beni_culturali_isolati_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.beni_culturali_isolati_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.beni_culturali_isolati_gid_seq OWNER TO wharp;

--
-- TOC entry 6015 (class 0 OID 0)
-- Dependencies: 354
-- Name: beni_culturali_isolati_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.beni_culturali_isolati_gid_seq OWNED BY assets.ptp_beni_culturali_isolati.gid;


--
-- TOC entry 357 (class 1259 OID 18897)
-- Name: ptp_beni_naturalistici_punt; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_beni_naturalistici_punt (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    starcd character varying(3),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_beni_naturalistici_punt OWNER TO wharp;

--
-- TOC entry 356 (class 1259 OID 18895)
-- Name: beni_naturalistici_punt_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.beni_naturalistici_punt_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.beni_naturalistici_punt_gid_seq OWNER TO wharp;

--
-- TOC entry 6016 (class 0 OID 0)
-- Dependencies: 356
-- Name: beni_naturalistici_punt_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.beni_naturalistici_punt_gid_seq OWNED BY assets.ptp_beni_naturalistici_punt.gid;


--
-- TOC entry 359 (class 1259 OID 18909)
-- Name: ptp_boschi_ipla; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_boschi_ipla (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    bf integer,
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_boschi_ipla OWNER TO wharp;

--
-- TOC entry 358 (class 1259 OID 18907)
-- Name: boschi_ipla_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.boschi_ipla_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.boschi_ipla_gid_seq OWNER TO wharp;

--
-- TOC entry 6017 (class 0 OID 0)
-- Dependencies: 358
-- Name: boschi_ipla_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.boschi_ipla_gid_seq OWNED BY assets.ptp_boschi_ipla.gid;


--
-- TOC entry 361 (class 1259 OID 18980)
-- Name: ptp_comprensori_sci; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_comprensori_sci (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_comprensori_sci OWNER TO wharp;

--
-- TOC entry 360 (class 1259 OID 18978)
-- Name: comprensori_sci_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.comprensori_sci_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.comprensori_sci_gid_seq OWNER TO wharp;

--
-- TOC entry 6018 (class 0 OID 0)
-- Dependencies: 360
-- Name: comprensori_sci_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.comprensori_sci_gid_seq OWNED BY assets.ptp_comprensori_sci.gid;


--
-- TOC entry 365 (class 1259 OID 19012)
-- Name: ptp_elementi_areali; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_elementi_areali (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    cod integer,
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_elementi_areali OWNER TO wharp;

--
-- TOC entry 364 (class 1259 OID 19010)
-- Name: elementi_areali_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.elementi_areali_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.elementi_areali_gid_seq OWNER TO wharp;

--
-- TOC entry 6019 (class 0 OID 0)
-- Dependencies: 364
-- Name: elementi_areali_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.elementi_areali_gid_seq OWNED BY assets.ptp_elementi_areali.gid;


--
-- TOC entry 369 (class 1259 OID 19037)
-- Name: ptp_elementi_puntuali; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_elementi_puntuali (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    cod integer,
    let character varying(3),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_elementi_puntuali OWNER TO wharp;

--
-- TOC entry 368 (class 1259 OID 19035)
-- Name: elementi_puntuali_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.elementi_puntuali_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.elementi_puntuali_gid_seq OWNER TO wharp;

--
-- TOC entry 6020 (class 0 OID 0)
-- Dependencies: 368
-- Name: elementi_puntuali_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.elementi_puntuali_gid_seq OWNED BY assets.ptp_elementi_puntuali.gid;


--
-- TOC entry 371 (class 1259 OID 19049)
-- Name: ptp_fasce_fluviali; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_fasce_fluviali (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    samcd character varying(3),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_fasce_fluviali OWNER TO wharp;

--
-- TOC entry 370 (class 1259 OID 19047)
-- Name: fasce_fluviali_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.fasce_fluviali_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.fasce_fluviali_gid_seq OWNER TO wharp;

--
-- TOC entry 6021 (class 0 OID 0)
-- Dependencies: 370
-- Name: fasce_fluviali_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.fasce_fluviali_gid_seq OWNED BY assets.ptp_fasce_fluviali.gid;


--
-- TOC entry 373 (class 1259 OID 19067)
-- Name: ptp_fasce_urbane_da_riq; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_fasce_urbane_da_riq (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    fascd character varying(2),
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_fasce_urbane_da_riq OWNER TO wharp;

--
-- TOC entry 372 (class 1259 OID 19065)
-- Name: fasce_urbane_da_riq_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.fasce_urbane_da_riq_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.fasce_urbane_da_riq_gid_seq OWNER TO wharp;

--
-- TOC entry 6022 (class 0 OID 0)
-- Dependencies: 372
-- Name: fasce_urbane_da_riq_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.fasce_urbane_da_riq_gid_seq OWNED BY assets.ptp_fasce_urbane_da_riq.gid;


--
-- TOC entry 377 (class 1259 OID 19091)
-- Name: ptp_ferrovia_aosta_martigny; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_ferrovia_aosta_martigny (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    vilcd character varying(2),
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_ferrovia_aosta_martigny OWNER TO wharp;

--
-- TOC entry 376 (class 1259 OID 19089)
-- Name: ferrovia_aosta_martigny_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.ferrovia_aosta_martigny_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.ferrovia_aosta_martigny_gid_seq OWNER TO wharp;

--
-- TOC entry 6023 (class 0 OID 0)
-- Dependencies: 376
-- Name: ferrovia_aosta_martigny_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.ferrovia_aosta_martigny_gid_seq OWNED BY assets.ptp_ferrovia_aosta_martigny.gid;


--
-- TOC entry 375 (class 1259 OID 19079)
-- Name: ptp_ferrovia; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_ferrovia (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    vilcd character varying(2),
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_ferrovia OWNER TO wharp;

--
-- TOC entry 374 (class 1259 OID 19077)
-- Name: ferrovia_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.ferrovia_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.ferrovia_gid_seq OWNER TO wharp;

--
-- TOC entry 6024 (class 0 OID 0)
-- Dependencies: 374
-- Name: ferrovia_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.ferrovia_gid_seq OWNED BY assets.ptp_ferrovia.gid;


--
-- TOC entry 379 (class 1259 OID 19103)
-- Name: ptp_impianti_arroccamento; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_impianti_arroccamento (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_impianti_arroccamento OWNER TO wharp;

--
-- TOC entry 378 (class 1259 OID 19101)
-- Name: impianti_arroccamento_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.impianti_arroccamento_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.impianti_arroccamento_gid_seq OWNER TO wharp;

--
-- TOC entry 6025 (class 0 OID 0)
-- Dependencies: 378
-- Name: impianti_arroccamento_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.impianti_arroccamento_gid_seq OWNED BY assets.ptp_impianti_arroccamento.gid;


--
-- TOC entry 381 (class 1259 OID 19115)
-- Name: ptp_impianti_risalita; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_impianti_risalita (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    impianti_i double precision,
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_impianti_risalita OWNER TO wharp;

--
-- TOC entry 380 (class 1259 OID 19113)
-- Name: impianti_risalita_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.impianti_risalita_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.impianti_risalita_gid_seq OWNER TO wharp;

--
-- TOC entry 6026 (class 0 OID 0)
-- Dependencies: 380
-- Name: impianti_risalita_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.impianti_risalita_gid_seq OWNED BY assets.ptp_impianti_risalita.gid;


--
-- TOC entry 383 (class 1259 OID 19128)
-- Name: ptp_industria_txt; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_industria_txt (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    livello character varying(32),
    testo character varying(254),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_industria_txt OWNER TO wharp;

--
-- TOC entry 382 (class 1259 OID 19126)
-- Name: industria_txt_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.industria_txt_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.industria_txt_gid_seq OWNER TO wharp;

--
-- TOC entry 6027 (class 0 OID 0)
-- Dependencies: 382
-- Name: industria_txt_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.industria_txt_gid_seq OWNED BY assets.ptp_industria_txt.gid;


--
-- TOC entry 385 (class 1259 OID 19140)
-- Name: ptp_laghi; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_laghi (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    cod_lago character varying(8),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_laghi OWNER TO wharp;

--
-- TOC entry 384 (class 1259 OID 19138)
-- Name: laghi_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.laghi_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.laghi_gid_seq OWNER TO wharp;

--
-- TOC entry 6028 (class 0 OID 0)
-- Dependencies: 384
-- Name: laghi_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.laghi_gid_seq OWNED BY assets.ptp_laghi.gid;


--
-- TOC entry 387 (class 1259 OID 19152)
-- Name: ptp_legenda_txt; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_legenda_txt (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    livello character varying(32),
    testo character varying(254),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_legenda_txt OWNER TO wharp;

--
-- TOC entry 386 (class 1259 OID 19150)
-- Name: legenda_txt_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.legenda_txt_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.legenda_txt_gid_seq OWNER TO wharp;

--
-- TOC entry 6029 (class 0 OID 0)
-- Dependencies: 386
-- Name: legenda_txt_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.legenda_txt_gid_seq OWNED BY assets.ptp_legenda_txt.gid;


--
-- TOC entry 389 (class 1259 OID 19164)
-- Name: ptp_nodi_interscambio_base100; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_nodi_interscambio_base100 (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    vipcd character varying(2),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_nodi_interscambio_base100 OWNER TO wharp;

--
-- TOC entry 388 (class 1259 OID 19162)
-- Name: nodi_interscambio_base100_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.nodi_interscambio_base100_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.nodi_interscambio_base100_gid_seq OWNER TO wharp;

--
-- TOC entry 6030 (class 0 OID 0)
-- Dependencies: 388
-- Name: nodi_interscambio_base100_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.nodi_interscambio_base100_gid_seq OWNED BY assets.ptp_nodi_interscambio_base100.gid;


--
-- TOC entry 391 (class 1259 OID 19177)
-- Name: ptp_nodi_interscambio_base20; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_nodi_interscambio_base20 (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    vipcd character varying(2),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_nodi_interscambio_base20 OWNER TO wharp;

--
-- TOC entry 390 (class 1259 OID 19175)
-- Name: nodi_interscambio_base20_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.nodi_interscambio_base20_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.nodi_interscambio_base20_gid_seq OWNER TO wharp;

--
-- TOC entry 6031 (class 0 OID 0)
-- Dependencies: 390
-- Name: nodi_interscambio_base20_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.nodi_interscambio_base20_gid_seq OWNED BY assets.ptp_nodi_interscambio_base20.gid;


--
-- TOC entry 393 (class 1259 OID 19189)
-- Name: ptp_percorsi_intervallivi; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_percorsi_intervallivi (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lung double precision,
    codice character varying(3),
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_percorsi_intervallivi OWNER TO wharp;

--
-- TOC entry 392 (class 1259 OID 19187)
-- Name: percorsi_intervallivi_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.percorsi_intervallivi_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.percorsi_intervallivi_gid_seq OWNER TO wharp;

--
-- TOC entry 6032 (class 0 OID 0)
-- Dependencies: 392
-- Name: percorsi_intervallivi_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.percorsi_intervallivi_gid_seq OWNED BY assets.ptp_percorsi_intervallivi.gid;


--
-- TOC entry 395 (class 1259 OID 19212)
-- Name: ptp_percorsi_storici; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_percorsi_storici (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    percd character varying(2),
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_percorsi_storici OWNER TO wharp;

--
-- TOC entry 394 (class 1259 OID 19210)
-- Name: percorsi_storici_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.percorsi_storici_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.percorsi_storici_gid_seq OWNER TO wharp;

--
-- TOC entry 6033 (class 0 OID 0)
-- Dependencies: 394
-- Name: percorsi_storici_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.percorsi_storici_gid_seq OWNED BY assets.ptp_percorsi_storici.gid;


--
-- TOC entry 397 (class 1259 OID 19225)
-- Name: ptp_percorsi_verde_urbano; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_percorsi_verde_urbano (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    vilcd character varying(2),
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_percorsi_verde_urbano OWNER TO wharp;

--
-- TOC entry 396 (class 1259 OID 19223)
-- Name: percorsi_verde_urbano_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.percorsi_verde_urbano_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.percorsi_verde_urbano_gid_seq OWNER TO wharp;

--
-- TOC entry 6034 (class 0 OID 0)
-- Dependencies: 396
-- Name: percorsi_verde_urbano_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.percorsi_verde_urbano_gid_seq OWNED BY assets.ptp_percorsi_verde_urbano.gid;


--
-- TOC entry 399 (class 1259 OID 19240)
-- Name: ptp_pericolosita_geologica; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_pericolosita_geologica (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    area double precision,
    perimeter double precision,
    id double precision,
    lepcd character varying(2),
    lepcd_desc character varying(100)
);


ALTER TABLE assets.ptp_pericolosita_geologica OWNER TO wharp;

--
-- TOC entry 398 (class 1259 OID 19238)
-- Name: pericolosita_geologica_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.pericolosita_geologica_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.pericolosita_geologica_gid_seq OWNER TO wharp;

--
-- TOC entry 6035 (class 0 OID 0)
-- Dependencies: 398
-- Name: pericolosita_geologica_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.pericolosita_geologica_gid_seq OWNED BY assets.ptp_pericolosita_geologica.gid;


--
-- TOC entry 401 (class 1259 OID 19482)
-- Name: ptp_piste_sci; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_piste_sci (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_piste_sci OWNER TO wharp;

--
-- TOC entry 400 (class 1259 OID 19480)
-- Name: piste_sci_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.piste_sci_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.piste_sci_gid_seq OWNER TO wharp;

--
-- TOC entry 6036 (class 0 OID 0)
-- Dependencies: 400
-- Name: piste_sci_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.piste_sci_gid_seq OWNED BY assets.ptp_piste_sci.gid;


--
-- TOC entry 403 (class 1259 OID 19505)
-- Name: ptp_piste_sci_nordico; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_piste_sci_nordico (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    codice double precision,
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_piste_sci_nordico OWNER TO wharp;

--
-- TOC entry 402 (class 1259 OID 19503)
-- Name: piste_sci_nordico_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.piste_sci_nordico_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.piste_sci_nordico_gid_seq OWNER TO wharp;

--
-- TOC entry 6037 (class 0 OID 0)
-- Dependencies: 402
-- Name: piste_sci_nordico_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.piste_sci_nordico_gid_seq OWNED BY assets.ptp_piste_sci_nordico.gid;


--
-- TOC entry 405 (class 1259 OID 19517)
-- Name: ptp_pmir1_fascia_dora; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_pmir1_fascia_dora (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_pmir1_fascia_dora OWNER TO wharp;

--
-- TOC entry 404 (class 1259 OID 19515)
-- Name: pmir1_fascia_dora_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.pmir1_fascia_dora_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.pmir1_fascia_dora_gid_seq OWNER TO wharp;

--
-- TOC entry 6038 (class 0 OID 0)
-- Dependencies: 404
-- Name: pmir1_fascia_dora_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.pmir1_fascia_dora_gid_seq OWNED BY assets.ptp_pmir1_fascia_dora.gid;


--
-- TOC entry 407 (class 1259 OID 19529)
-- Name: ptp_pmir3; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_pmir3 (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    cod integer,
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_pmir3 OWNER TO wharp;

--
-- TOC entry 406 (class 1259 OID 19527)
-- Name: pmir3_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.pmir3_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.pmir3_gid_seq OWNER TO wharp;

--
-- TOC entry 6039 (class 0 OID 0)
-- Dependencies: 406
-- Name: pmir3_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.pmir3_gid_seq OWNED BY assets.ptp_pmir3.gid;


--
-- TOC entry 409 (class 1259 OID 19541)
-- Name: ptp_pmir3_simb; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_pmir3_simb (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    cod integer,
    let character varying(3),
    angolo double precision,
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_pmir3_simb OWNER TO wharp;

--
-- TOC entry 408 (class 1259 OID 19539)
-- Name: pmir3_simb_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.pmir3_simb_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.pmir3_simb_gid_seq OWNER TO wharp;

--
-- TOC entry 6040 (class 0 OID 0)
-- Dependencies: 408
-- Name: pmir3_simb_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.pmir3_simb_gid_seq OWNED BY assets.ptp_pmir3_simb.gid;


--
-- TOC entry 411 (class 1259 OID 19553)
-- Name: ptp_pmir5; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_pmir5 (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    cod integer,
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_pmir5 OWNER TO wharp;

--
-- TOC entry 410 (class 1259 OID 19551)
-- Name: pmir5_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.pmir5_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.pmir5_gid_seq OWNER TO wharp;

--
-- TOC entry 6041 (class 0 OID 0)
-- Dependencies: 410
-- Name: pmir5_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.pmir5_gid_seq OWNED BY assets.ptp_pmir5.gid;


--
-- TOC entry 413 (class 1259 OID 19565)
-- Name: ptp_pmir6; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_pmir6 (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    cod integer,
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_pmir6 OWNER TO wharp;

--
-- TOC entry 412 (class 1259 OID 19563)
-- Name: pmir6_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.pmir6_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.pmir6_gid_seq OWNER TO wharp;

--
-- TOC entry 6042 (class 0 OID 0)
-- Dependencies: 412
-- Name: pmir6_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.pmir6_gid_seq OWNED BY assets.ptp_pmir6.gid;


--
-- TOC entry 415 (class 1259 OID 19577)
-- Name: ptp_pmir6_simb; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_pmir6_simb (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    cod integer,
    let character varying(3),
    angolo double precision,
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_pmir6_simb OWNER TO wharp;

--
-- TOC entry 414 (class 1259 OID 19575)
-- Name: pmir6_simb_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.pmir6_simb_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.pmir6_simb_gid_seq OWNER TO wharp;

--
-- TOC entry 6043 (class 0 OID 0)
-- Dependencies: 414
-- Name: pmir6_simb_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.pmir6_simb_gid_seq OWNED BY assets.ptp_pmir6_simb.gid;


--
-- TOC entry 417 (class 1259 OID 19589)
-- Name: ptp_pmir7; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_pmir7 (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    cod integer,
    let character varying(3),
    angolo double precision,
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_pmir7 OWNER TO wharp;

--
-- TOC entry 416 (class 1259 OID 19587)
-- Name: pmir7_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.pmir7_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.pmir7_gid_seq OWNER TO wharp;

--
-- TOC entry 6044 (class 0 OID 0)
-- Dependencies: 416
-- Name: pmir7_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.pmir7_gid_seq OWNED BY assets.ptp_pmir7.gid;


--
-- TOC entry 419 (class 1259 OID 19601)
-- Name: ptp_pngp; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_pngp (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_pngp OWNER TO wharp;

--
-- TOC entry 418 (class 1259 OID 19599)
-- Name: pngp_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.pngp_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.pngp_gid_seq OWNER TO wharp;

--
-- TOC entry 6045 (class 0 OID 0)
-- Dependencies: 418
-- Name: pngp_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.pngp_gid_seq OWNED BY assets.ptp_pngp.gid;


--
-- TOC entry 421 (class 1259 OID 19613)
-- Name: ptp_ptir1; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_ptir1 (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    cod integer,
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_ptir1 OWNER TO wharp;

--
-- TOC entry 420 (class 1259 OID 19611)
-- Name: ptir1_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.ptir1_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.ptir1_gid_seq OWNER TO wharp;

--
-- TOC entry 6046 (class 0 OID 0)
-- Dependencies: 420
-- Name: ptir1_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.ptir1_gid_seq OWNED BY assets.ptp_ptir1.gid;


--
-- TOC entry 423 (class 1259 OID 19625)
-- Name: ptp_ptir2; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_ptir2 (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp2_pt double precision,
    perimetro double precision,
    id double precision,
    cod integer,
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_ptir2 OWNER TO wharp;

--
-- TOC entry 422 (class 1259 OID 19623)
-- Name: ptir2_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.ptir2_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.ptir2_gid_seq OWNER TO wharp;

--
-- TOC entry 6047 (class 0 OID 0)
-- Dependencies: 422
-- Name: ptir2_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.ptir2_gid_seq OWNED BY assets.ptp_ptir2.gid;


--
-- TOC entry 425 (class 1259 OID 19637)
-- Name: ptp_ptir3; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_ptir3 (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    cod integer,
    let character varying(3),
    angolo double precision,
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_ptir3 OWNER TO wharp;

--
-- TOC entry 424 (class 1259 OID 19635)
-- Name: ptir3_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.ptir3_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.ptir3_gid_seq OWNER TO wharp;

--
-- TOC entry 6048 (class 0 OID 0)
-- Dependencies: 424
-- Name: ptir3_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.ptir3_gid_seq OWNED BY assets.ptp_ptir3.gid;


--
-- TOC entry 343 (class 1259 OID 18803)
-- Name: ptp_aree_protette; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_aree_protette (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    areepr_id double precision,
    parcd character varying(2),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_aree_protette OWNER TO wharp;

--
-- TOC entry 342 (class 1259 OID 18801)
-- Name: ptp_aree_protette_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.ptp_aree_protette_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.ptp_aree_protette_gid_seq OWNER TO wharp;

--
-- TOC entry 6049 (class 0 OID 0)
-- Dependencies: 342
-- Name: ptp_aree_protette_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.ptp_aree_protette_gid_seq OWNED BY assets.ptp_aree_protette.gid;


--
-- TOC entry 363 (class 1259 OID 18999)
-- Name: ptp_dora_baltea; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_dora_baltea (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_dora_baltea OWNER TO wharp;

--
-- TOC entry 362 (class 1259 OID 18997)
-- Name: ptp_dora_baltea_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.ptp_dora_baltea_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.ptp_dora_baltea_gid_seq OWNER TO wharp;

--
-- TOC entry 6050 (class 0 OID 0)
-- Dependencies: 362
-- Name: ptp_dora_baltea_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.ptp_dora_baltea_gid_seq OWNED BY assets.ptp_dora_baltea.gid;


--
-- TOC entry 367 (class 1259 OID 19024)
-- Name: ptp_elementi_lineari; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_elementi_lineari (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    cod integer,
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_elementi_lineari OWNER TO wharp;

--
-- TOC entry 366 (class 1259 OID 19022)
-- Name: ptp_elementi_lineari_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.ptp_elementi_lineari_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.ptp_elementi_lineari_gid_seq OWNER TO wharp;

--
-- TOC entry 6051 (class 0 OID 0)
-- Dependencies: 366
-- Name: ptp_elementi_lineari_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.ptp_elementi_lineari_gid_seq OWNED BY assets.ptp_elementi_lineari.gid;


--
-- TOC entry 427 (class 1259 OID 19649)
-- Name: ptp_punti_reg_flussi_veic; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_punti_reg_flussi_veic (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    vipcd character varying(2),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_punti_reg_flussi_veic OWNER TO wharp;

--
-- TOC entry 429 (class 1259 OID 19663)
-- Name: ptp_rete_fluviale; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_rete_fluviale (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    codice character varying(24),
    ordine integer,
    tipol integer,
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_rete_fluviale OWNER TO wharp;

--
-- TOC entry 431 (class 1259 OID 19677)
-- Name: ptp_rifugi_bivacchi; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_rifugi_bivacchi (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    rifcd character varying(3),
    cod integer,
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_rifugi_bivacchi OWNER TO wharp;

--
-- TOC entry 433 (class 1259 OID 19689)
-- Name: ptp_ripetitori_tv; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_ripetitori_tv (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    codice character varying(4),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_ripetitori_tv OWNER TO wharp;

--
-- TOC entry 435 (class 1259 OID 19702)
-- Name: ptp_riserve_txt; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_riserve_txt (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    testo character varying(16),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_riserve_txt OWNER TO wharp;

--
-- TOC entry 437 (class 1259 OID 19715)
-- Name: ptp_sa_aree_nat_alta_quota; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_sa_aree_nat_alta_quota (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    samcd character varying(3),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_sa_aree_nat_alta_quota OWNER TO wharp;

--
-- TOC entry 439 (class 1259 OID 19743)
-- Name: ptp_sa_aree_naturali; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_sa_aree_naturali (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    samcd character varying(3),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_sa_aree_naturali OWNER TO wharp;

--
-- TOC entry 441 (class 1259 OID 19764)
-- Name: ptp_sa_boschi; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_sa_boschi (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    samcd character varying(3),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_sa_boschi OWNER TO wharp;

--
-- TOC entry 443 (class 1259 OID 19829)
-- Name: ptp_sa_fluviali; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_sa_fluviali (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    samcd character varying(3),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_sa_fluviali OWNER TO wharp;

--
-- TOC entry 445 (class 1259 OID 19843)
-- Name: ptp_sa_insed_svil_integr; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_sa_insed_svil_integr (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    samcd character varying(3),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_sa_insed_svil_integr OWNER TO wharp;

--
-- TOC entry 447 (class 1259 OID 19880)
-- Name: ptp_sa_insed_svil_resid; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_sa_insed_svil_resid (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    samcd character varying(3),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_sa_insed_svil_resid OWNER TO wharp;

--
-- TOC entry 449 (class 1259 OID 19893)
-- Name: ptp_sa_insed_svil_trad; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_sa_insed_svil_trad (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    samcd character varying(3),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_sa_insed_svil_trad OWNER TO wharp;

--
-- TOC entry 453 (class 1259 OID 19929)
-- Name: ptp_sa_pascoli; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_sa_pascoli (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    samcd character varying(3),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_sa_pascoli OWNER TO wharp;

--
-- TOC entry 455 (class 1259 OID 19982)
-- Name: ptp_sa_urbani; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_sa_urbani (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    samcd character varying(3),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_sa_urbani OWNER TO wharp;

--
-- TOC entry 457 (class 1259 OID 19994)
-- Name: ptp_servizi_txt; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_servizi_txt (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    livello character varying(32),
    testo character varying(254),
    tipologia character varying(50),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_servizi_txt OWNER TO wharp;

--
-- TOC entry 459 (class 1259 OID 20006)
-- Name: ptp_sistema_misto_urbano_fluviale; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_sistema_misto_urbano_fluviale (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    id double precision,
    samcd character varying(3),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision,
    shape_leng double precision
);


ALTER TABLE assets.ptp_sistema_misto_urbano_fluviale OWNER TO wharp;

--
-- TOC entry 461 (class 1259 OID 20018)
-- Name: ptp_staz_ferrovia_esistenti; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_staz_ferrovia_esistenti (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    vipcd character varying(2),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_staz_ferrovia_esistenti OWNER TO wharp;

--
-- TOC entry 463 (class 1259 OID 20030)
-- Name: ptp_staz_ferrovia_progetto; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_staz_ferrovia_progetto (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    vipcd character varying(16),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_staz_ferrovia_progetto OWNER TO wharp;

--
-- TOC entry 465 (class 1259 OID 20043)
-- Name: ptp_staz_turistiche; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_staz_turistiche (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    id double precision,
    stacd integer,
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_staz_turistiche OWNER TO wharp;

--
-- TOC entry 467 (class 1259 OID 20055)
-- Name: ptp_strade_balconata_envers; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_strade_balconata_envers (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    balcd character varying(2),
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_strade_balconata_envers OWNER TO wharp;

--
-- TOC entry 469 (class 1259 OID 20067)
-- Name: ptp_strade_varianti_viabilita; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_strade_varianti_viabilita (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    bypass1_id double precision,
    vilcd character varying(2),
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_strade_varianti_viabilita OWNER TO wharp;

--
-- TOC entry 471 (class 1259 OID 20079)
-- Name: ptp_strade_viabilita_princ; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_strade_viabilita_princ (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    cod integer,
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_strade_viabilita_princ OWNER TO wharp;

--
-- TOC entry 473 (class 1259 OID 20092)
-- Name: ptp_tour_escursionistici; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_tour_escursionistici (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    cod integer,
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_tour_escursionistici OWNER TO wharp;

--
-- TOC entry 475 (class 1259 OID 20104)
-- Name: ptp_trenino_cogne_pila; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_trenino_cogne_pila (
    gid integer NOT NULL,
    geom public.geometry(LineString,4326),
    lunghezza double precision,
    id double precision,
    vilcd character varying(2),
    datavalini date,
    datavalend date,
    feature_le double precision
);


ALTER TABLE assets.ptp_trenino_cogne_pila OWNER TO wharp;

--
-- TOC entry 477 (class 1259 OID 20116)
-- Name: ptp_tutele_txt; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_tutele_txt (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    cod character varying(6),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_tutele_txt OWNER TO wharp;

--
-- TOC entry 479 (class 1259 OID 20128)
-- Name: ptp_villes; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_villes (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    aggcd character varying(2),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_villes OWNER TO wharp;

--
-- TOC entry 481 (class 1259 OID 20142)
-- Name: ptp_vinc_aree_archeologiche; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_vinc_aree_archeologiche (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    mincd character varying(2),
    aacd character varying(5),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_vinc_aree_archeologiche OWNER TO wharp;

--
-- TOC entry 483 (class 1259 OID 20155)
-- Name: ptp_vinc_aree_fiumi; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_vinc_aree_fiumi (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_vinc_aree_fiumi OWNER TO wharp;

--
-- TOC entry 485 (class 1259 OID 20200)
-- Name: ptp_vinc_aree_laghi; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_vinc_aree_laghi (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_vinc_aree_laghi OWNER TO wharp;

--
-- TOC entry 487 (class 1259 OID 20233)
-- Name: ptp_vinc_cdl_1600; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_vinc_cdl_1600 (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_vinc_cdl_1600 OWNER TO wharp;

--
-- TOC entry 489 (class 1259 OID 20246)
-- Name: ptp_vinc_ghiacciai; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_vinc_ghiacciai (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_vinc_ghiacciai OWNER TO wharp;

--
-- TOC entry 491 (class 1259 OID 20259)
-- Name: ptp_vinc_idrogeologico; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_vinc_idrogeologico (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    vincd character varying(7),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_vinc_idrogeologico OWNER TO wharp;

--
-- TOC entry 493 (class 1259 OID 20274)
-- Name: ptp_vinc_legge_1497; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_vinc_legge_1497 (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_vinc_legge_1497 OWNER TO wharp;

--
-- TOC entry 495 (class 1259 OID 20300)
-- Name: ptp_vinc_legge_castagno; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_vinc_legge_castagno (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    vincd character varying(1),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_vinc_legge_castagno OWNER TO wharp;

--
-- TOC entry 497 (class 1259 OID 20318)
-- Name: ptp_vinc_parchi; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_vinc_parchi (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    parcd character varying(2),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_vinc_parchi OWNER TO wharp;

--
-- TOC entry 499 (class 1259 OID 20332)
-- Name: ptp_vinc_riserve; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_vinc_riserve (
    gid integer NOT NULL,
    geom public.geometry(Polygon,4326),
    sdeptp_ptp double precision,
    perimeter double precision,
    id double precision,
    ris bigint,
    riscd character varying(3),
    datavalini date,
    datavalend date,
    feature_le double precision,
    feature_ar double precision
);


ALTER TABLE assets.ptp_vinc_riserve OWNER TO wharp;

--
-- TOC entry 501 (class 1259 OID 20344)
-- Name: ptp_vnc_archeo_txt; Type: TABLE; Schema: assets; Owner: postgres
--

CREATE TABLE IF NOT EXISTS assets.ptp_vnc_archeo_txt (
    gid integer NOT NULL,
    geom public.geometry(Point,4326),
    aacd character varying(5),
    datavalini date,
    datavalend date
);


ALTER TABLE assets.ptp_vnc_archeo_txt OWNER TO wharp;

--
-- TOC entry 426 (class 1259 OID 19647)
-- Name: punti_reg_flussi_veic_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.punti_reg_flussi_veic_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.punti_reg_flussi_veic_gid_seq OWNER TO wharp;

--
-- TOC entry 6052 (class 0 OID 0)
-- Dependencies: 426
-- Name: punti_reg_flussi_veic_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.punti_reg_flussi_veic_gid_seq OWNED BY assets.ptp_punti_reg_flussi_veic.gid;


--
-- TOC entry 428 (class 1259 OID 19661)
-- Name: rete_fluviale_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.rete_fluviale_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.rete_fluviale_gid_seq OWNER TO wharp;

--
-- TOC entry 6053 (class 0 OID 0)
-- Dependencies: 428
-- Name: rete_fluviale_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.rete_fluviale_gid_seq OWNED BY assets.ptp_rete_fluviale.gid;


--
-- TOC entry 430 (class 1259 OID 19675)
-- Name: rifugi_bivacchi_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.rifugi_bivacchi_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.rifugi_bivacchi_gid_seq OWNER TO wharp;

--
-- TOC entry 6054 (class 0 OID 0)
-- Dependencies: 430
-- Name: rifugi_bivacchi_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.rifugi_bivacchi_gid_seq OWNED BY assets.ptp_rifugi_bivacchi.gid;


--
-- TOC entry 432 (class 1259 OID 19687)
-- Name: ripetitori_tv_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.ripetitori_tv_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.ripetitori_tv_gid_seq OWNER TO wharp;

--
-- TOC entry 6055 (class 0 OID 0)
-- Dependencies: 432
-- Name: ripetitori_tv_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.ripetitori_tv_gid_seq OWNED BY assets.ptp_ripetitori_tv.gid;


--
-- TOC entry 434 (class 1259 OID 19700)
-- Name: riserve_txt_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.riserve_txt_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.riserve_txt_gid_seq OWNER TO wharp;

--
-- TOC entry 6056 (class 0 OID 0)
-- Dependencies: 434
-- Name: riserve_txt_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.riserve_txt_gid_seq OWNED BY assets.ptp_riserve_txt.gid;


--
-- TOC entry 436 (class 1259 OID 19713)
-- Name: sa_aree_nat_alta_quota_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.sa_aree_nat_alta_quota_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.sa_aree_nat_alta_quota_gid_seq OWNER TO wharp;

--
-- TOC entry 6057 (class 0 OID 0)
-- Dependencies: 436
-- Name: sa_aree_nat_alta_quota_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.sa_aree_nat_alta_quota_gid_seq OWNED BY assets.ptp_sa_aree_nat_alta_quota.gid;


--
-- TOC entry 438 (class 1259 OID 19741)
-- Name: sa_aree_naturali_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.sa_aree_naturali_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.sa_aree_naturali_gid_seq OWNER TO wharp;

--
-- TOC entry 6058 (class 0 OID 0)
-- Dependencies: 438
-- Name: sa_aree_naturali_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.sa_aree_naturali_gid_seq OWNED BY assets.ptp_sa_aree_naturali.gid;


--
-- TOC entry 440 (class 1259 OID 19762)
-- Name: sa_boschi_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.sa_boschi_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.sa_boschi_gid_seq OWNER TO wharp;

--
-- TOC entry 6059 (class 0 OID 0)
-- Dependencies: 440
-- Name: sa_boschi_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.sa_boschi_gid_seq OWNED BY assets.ptp_sa_boschi.gid;


--
-- TOC entry 442 (class 1259 OID 19827)
-- Name: sa_fluviali_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.sa_fluviali_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.sa_fluviali_gid_seq OWNER TO wharp;

--
-- TOC entry 6060 (class 0 OID 0)
-- Dependencies: 442
-- Name: sa_fluviali_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.sa_fluviali_gid_seq OWNED BY assets.ptp_sa_fluviali.gid;


--
-- TOC entry 444 (class 1259 OID 19841)
-- Name: sa_insed_svil_integr_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.sa_insed_svil_integr_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.sa_insed_svil_integr_gid_seq OWNER TO wharp;

--
-- TOC entry 6061 (class 0 OID 0)
-- Dependencies: 444
-- Name: sa_insed_svil_integr_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.sa_insed_svil_integr_gid_seq OWNED BY assets.ptp_sa_insed_svil_integr.gid;


--
-- TOC entry 446 (class 1259 OID 19878)
-- Name: sa_insed_svil_resid_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.sa_insed_svil_resid_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.sa_insed_svil_resid_gid_seq OWNER TO wharp;

--
-- TOC entry 6062 (class 0 OID 0)
-- Dependencies: 446
-- Name: sa_insed_svil_resid_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.sa_insed_svil_resid_gid_seq OWNED BY assets.ptp_sa_insed_svil_resid.gid;


--
-- TOC entry 448 (class 1259 OID 19891)
-- Name: sa_insed_svil_trad_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.sa_insed_svil_trad_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.sa_insed_svil_trad_gid_seq OWNER TO wharp;

--
-- TOC entry 6063 (class 0 OID 0)
-- Dependencies: 448
-- Name: sa_insed_svil_trad_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.sa_insed_svil_trad_gid_seq OWNED BY assets.ptp_sa_insed_svil_trad.gid;


--
-- TOC entry 452 (class 1259 OID 19927)
-- Name: sa_pascoli_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.sa_pascoli_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.sa_pascoli_gid_seq OWNER TO wharp;

--
-- TOC entry 6064 (class 0 OID 0)
-- Dependencies: 452
-- Name: sa_pascoli_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.sa_pascoli_gid_seq OWNED BY assets.ptp_sa_pascoli.gid;


--
-- TOC entry 454 (class 1259 OID 19980)
-- Name: sa_urbani_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.sa_urbani_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.sa_urbani_gid_seq OWNER TO wharp;

--
-- TOC entry 6065 (class 0 OID 0)
-- Dependencies: 454
-- Name: sa_urbani_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.sa_urbani_gid_seq OWNED BY assets.ptp_sa_urbani.gid;


--
-- TOC entry 456 (class 1259 OID 19992)
-- Name: servizi_txt_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.servizi_txt_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.servizi_txt_gid_seq OWNER TO wharp;

--
-- TOC entry 6066 (class 0 OID 0)
-- Dependencies: 456
-- Name: servizi_txt_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.servizi_txt_gid_seq OWNED BY assets.ptp_servizi_txt.gid;


--
-- TOC entry 458 (class 1259 OID 20004)
-- Name: sistema_misto_urbano_fluviale_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.sistema_misto_urbano_fluviale_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.sistema_misto_urbano_fluviale_gid_seq OWNER TO wharp;

--
-- TOC entry 6067 (class 0 OID 0)
-- Dependencies: 458
-- Name: sistema_misto_urbano_fluviale_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.sistema_misto_urbano_fluviale_gid_seq OWNED BY assets.ptp_sistema_misto_urbano_fluviale.gid;


--
-- TOC entry 460 (class 1259 OID 20016)
-- Name: staz_ferrovia_esistenti_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.staz_ferrovia_esistenti_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.staz_ferrovia_esistenti_gid_seq OWNER TO wharp;

--
-- TOC entry 6068 (class 0 OID 0)
-- Dependencies: 460
-- Name: staz_ferrovia_esistenti_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.staz_ferrovia_esistenti_gid_seq OWNED BY assets.ptp_staz_ferrovia_esistenti.gid;


--
-- TOC entry 462 (class 1259 OID 20028)
-- Name: staz_ferrovia_progetto_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.staz_ferrovia_progetto_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.staz_ferrovia_progetto_gid_seq OWNER TO wharp;

--
-- TOC entry 6069 (class 0 OID 0)
-- Dependencies: 462
-- Name: staz_ferrovia_progetto_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.staz_ferrovia_progetto_gid_seq OWNED BY assets.ptp_staz_ferrovia_progetto.gid;


--
-- TOC entry 464 (class 1259 OID 20041)
-- Name: staz_turistiche_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.staz_turistiche_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.staz_turistiche_gid_seq OWNER TO wharp;

--
-- TOC entry 6070 (class 0 OID 0)
-- Dependencies: 464
-- Name: staz_turistiche_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.staz_turistiche_gid_seq OWNED BY assets.ptp_staz_turistiche.gid;


--
-- TOC entry 466 (class 1259 OID 20053)
-- Name: strade_balconata_envers_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.strade_balconata_envers_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.strade_balconata_envers_gid_seq OWNER TO wharp;

--
-- TOC entry 6071 (class 0 OID 0)
-- Dependencies: 466
-- Name: strade_balconata_envers_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.strade_balconata_envers_gid_seq OWNED BY assets.ptp_strade_balconata_envers.gid;


--
-- TOC entry 468 (class 1259 OID 20065)
-- Name: strade_varianti_viabilita_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.strade_varianti_viabilita_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.strade_varianti_viabilita_gid_seq OWNER TO wharp;

--
-- TOC entry 6072 (class 0 OID 0)
-- Dependencies: 468
-- Name: strade_varianti_viabilita_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.strade_varianti_viabilita_gid_seq OWNED BY assets.ptp_strade_varianti_viabilita.gid;


--
-- TOC entry 470 (class 1259 OID 20077)
-- Name: strade_viabilita_princ_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.strade_viabilita_princ_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.strade_viabilita_princ_gid_seq OWNER TO wharp;

--
-- TOC entry 6073 (class 0 OID 0)
-- Dependencies: 470
-- Name: strade_viabilita_princ_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.strade_viabilita_princ_gid_seq OWNED BY assets.ptp_strade_viabilita_princ.gid;


--
-- TOC entry 472 (class 1259 OID 20090)
-- Name: tour_escursionistici_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.tour_escursionistici_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.tour_escursionistici_gid_seq OWNER TO wharp;

--
-- TOC entry 6074 (class 0 OID 0)
-- Dependencies: 472
-- Name: tour_escursionistici_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.tour_escursionistici_gid_seq OWNED BY assets.ptp_tour_escursionistici.gid;


--
-- TOC entry 474 (class 1259 OID 20102)
-- Name: trenino_cogne_pila_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.trenino_cogne_pila_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.trenino_cogne_pila_gid_seq OWNER TO wharp;

--
-- TOC entry 6075 (class 0 OID 0)
-- Dependencies: 474
-- Name: trenino_cogne_pila_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.trenino_cogne_pila_gid_seq OWNED BY assets.ptp_trenino_cogne_pila.gid;


--
-- TOC entry 476 (class 1259 OID 20114)
-- Name: tutele_txt_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.tutele_txt_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.tutele_txt_gid_seq OWNER TO wharp;

--
-- TOC entry 6076 (class 0 OID 0)
-- Dependencies: 476
-- Name: tutele_txt_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.tutele_txt_gid_seq OWNED BY assets.ptp_tutele_txt.gid;


--
-- TOC entry 478 (class 1259 OID 20126)
-- Name: villes_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.villes_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.villes_gid_seq OWNER TO wharp;

--
-- TOC entry 6077 (class 0 OID 0)
-- Dependencies: 478
-- Name: villes_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.villes_gid_seq OWNED BY assets.ptp_villes.gid;


--
-- TOC entry 480 (class 1259 OID 20140)
-- Name: vinc_aree_archeologiche_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.vinc_aree_archeologiche_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.vinc_aree_archeologiche_gid_seq OWNER TO wharp;

--
-- TOC entry 6078 (class 0 OID 0)
-- Dependencies: 480
-- Name: vinc_aree_archeologiche_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.vinc_aree_archeologiche_gid_seq OWNED BY assets.ptp_vinc_aree_archeologiche.gid;


--
-- TOC entry 482 (class 1259 OID 20153)
-- Name: vinc_aree_fiumi_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.vinc_aree_fiumi_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.vinc_aree_fiumi_gid_seq OWNER TO wharp;

--
-- TOC entry 6079 (class 0 OID 0)
-- Dependencies: 482
-- Name: vinc_aree_fiumi_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.vinc_aree_fiumi_gid_seq OWNED BY assets.ptp_vinc_aree_fiumi.gid;


--
-- TOC entry 484 (class 1259 OID 20198)
-- Name: vinc_aree_laghi_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.vinc_aree_laghi_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.vinc_aree_laghi_gid_seq OWNER TO wharp;

--
-- TOC entry 6080 (class 0 OID 0)
-- Dependencies: 484
-- Name: vinc_aree_laghi_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.vinc_aree_laghi_gid_seq OWNED BY assets.ptp_vinc_aree_laghi.gid;


--
-- TOC entry 486 (class 1259 OID 20231)
-- Name: vinc_cdl_1600_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.vinc_cdl_1600_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.vinc_cdl_1600_gid_seq OWNER TO wharp;

--
-- TOC entry 6081 (class 0 OID 0)
-- Dependencies: 486
-- Name: vinc_cdl_1600_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.vinc_cdl_1600_gid_seq OWNED BY assets.ptp_vinc_cdl_1600.gid;


--
-- TOC entry 488 (class 1259 OID 20244)
-- Name: vinc_ghiacciai_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.vinc_ghiacciai_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.vinc_ghiacciai_gid_seq OWNER TO wharp;

--
-- TOC entry 6082 (class 0 OID 0)
-- Dependencies: 488
-- Name: vinc_ghiacciai_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.vinc_ghiacciai_gid_seq OWNED BY assets.ptp_vinc_ghiacciai.gid;


--
-- TOC entry 490 (class 1259 OID 20257)
-- Name: vinc_idrogeologico_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.vinc_idrogeologico_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.vinc_idrogeologico_gid_seq OWNER TO wharp;

--
-- TOC entry 6083 (class 0 OID 0)
-- Dependencies: 490
-- Name: vinc_idrogeologico_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.vinc_idrogeologico_gid_seq OWNED BY assets.ptp_vinc_idrogeologico.gid;


--
-- TOC entry 492 (class 1259 OID 20272)
-- Name: vinc_legge_1497_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.vinc_legge_1497_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.vinc_legge_1497_gid_seq OWNER TO wharp;

--
-- TOC entry 6084 (class 0 OID 0)
-- Dependencies: 492
-- Name: vinc_legge_1497_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.vinc_legge_1497_gid_seq OWNED BY assets.ptp_vinc_legge_1497.gid;


--
-- TOC entry 494 (class 1259 OID 20298)
-- Name: vinc_legge_castagno_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.vinc_legge_castagno_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.vinc_legge_castagno_gid_seq OWNER TO wharp;

--
-- TOC entry 6085 (class 0 OID 0)
-- Dependencies: 494
-- Name: vinc_legge_castagno_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.vinc_legge_castagno_gid_seq OWNED BY assets.ptp_vinc_legge_castagno.gid;


--
-- TOC entry 496 (class 1259 OID 20316)
-- Name: vinc_parchi_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.vinc_parchi_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.vinc_parchi_gid_seq OWNER TO wharp;

--
-- TOC entry 6086 (class 0 OID 0)
-- Dependencies: 496
-- Name: vinc_parchi_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.vinc_parchi_gid_seq OWNED BY assets.ptp_vinc_parchi.gid;


--
-- TOC entry 498 (class 1259 OID 20330)
-- Name: vinc_riserve_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.vinc_riserve_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.vinc_riserve_gid_seq OWNER TO wharp;

--
-- TOC entry 6087 (class 0 OID 0)
-- Dependencies: 498
-- Name: vinc_riserve_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.vinc_riserve_gid_seq OWNED BY assets.ptp_vinc_riserve.gid;


--
-- TOC entry 500 (class 1259 OID 20342)
-- Name: vnc_archeo_txt_gid_seq; Type: SEQUENCE; Schema: assets; Owner: postgres
--

CREATE SEQUENCE assets.vnc_archeo_txt_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE assets.vnc_archeo_txt_gid_seq OWNER TO wharp;

--
-- TOC entry 6088 (class 0 OID 0)
-- Dependencies: 500
-- Name: vnc_archeo_txt_gid_seq; Type: SEQUENCE OWNED BY; Schema: assets; Owner: postgres
--

ALTER SEQUENCE assets.vnc_archeo_txt_gid_seq OWNED BY assets.ptp_vnc_archeo_txt.gid;


--
-- TOC entry 5396 (class 2604 OID 21638)
-- Name: akhet_vda_elab_lineare gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.akhet_vda_elab_lineare ALTER COLUMN gid SET DEFAULT nextval('assets.akhet_vda_elab_lineare_gid_seq'::regclass);


--
-- TOC entry 5397 (class 2604 OID 21656)
-- Name: akhet_vda_elem_noti_lineare gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.akhet_vda_elem_noti_lineare ALTER COLUMN gid SET DEFAULT nextval('assets.akhet_vda_elem_noti_lineare_gid_seq'::regclass);


--
-- TOC entry 5398 (class 2604 OID 21680)
-- Name: akhet_vda_elem_noti_poligonale gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.akhet_vda_elem_noti_poligonale ALTER COLUMN gid SET DEFAULT nextval('assets.akhet_vda_elem_noti_poligonale_gid_seq'::regclass);


--
-- TOC entry 5393 (class 2604 OID 21592)
-- Name: akhet_vda_lineare gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.akhet_vda_lineare ALTER COLUMN gid SET DEFAULT nextval('assets.akhet_vda_lineare_gid_seq'::regclass);


--
-- TOC entry 5394 (class 2604 OID 21612)
-- Name: akhet_vda_poligonale gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.akhet_vda_poligonale ALTER COLUMN gid SET DEFAULT nextval('assets.akhet_vda_poligonale_gid_seq'::regclass);


--
-- TOC entry 5395 (class 2604 OID 21624)
-- Name: akhet_vda_puntuale gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.akhet_vda_puntuale ALTER COLUMN gid SET DEFAULT nextval('assets.akhet_vda_puntuale_gid_seq'::regclass);


--
-- TOC entry 5392 (class 2604 OID 21542)
-- Name: akhet_vda_vincoli_archeologici gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.akhet_vda_vincoli_archeologici ALTER COLUMN gid SET DEFAULT nextval('assets.akhet_vincoli_archeologici_id_seq'::regclass);


--
-- TOC entry 5308 (class 2604 OID 18753)
-- Name: ptp_abitazioni gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_abitazioni ALTER COLUMN gid SET DEFAULT nextval('assets.abitazioni_id_seq'::regclass);


--
-- TOC entry 5307 (class 2604 OID 18740)
-- Name: ptp_agglomerati gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_agglomerati ALTER COLUMN gid SET DEFAULT nextval('assets.agglomerati_gid_seq'::regclass);


--
-- TOC entry 5309 (class 2604 OID 18765)
-- Name: ptp_alte_vie gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_alte_vie ALTER COLUMN gid SET DEFAULT nextval('assets.alte_vie_gid_seq'::regclass);


--
-- TOC entry 5310 (class 2604 OID 18778)
-- Name: ptp_altri_parchi gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_altri_parchi ALTER COLUMN gid SET DEFAULT nextval('assets.altri_parchi_gid_seq'::regclass);


--
-- TOC entry 5311 (class 2604 OID 18794)
-- Name: ptp_aosta_bourgs gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_aosta_bourgs ALTER COLUMN gid SET DEFAULT nextval('assets.aosta_bourgs_gid_seq'::regclass);


--
-- TOC entry 5312 (class 2604 OID 18806)
-- Name: ptp_aree_protette gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_aree_protette ALTER COLUMN gid SET DEFAULT nextval('assets.ptp_aree_protette_gid_seq'::regclass);


--
-- TOC entry 5313 (class 2604 OID 18820)
-- Name: ptp_aree_tutela gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_aree_tutela ALTER COLUMN gid SET DEFAULT nextval('assets.aree_tutela_gid_seq'::regclass);


--
-- TOC entry 5314 (class 2604 OID 18838)
-- Name: ptp_attest_affl_turistico gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_attest_affl_turistico ALTER COLUMN gid SET DEFAULT nextval('assets.attest_affl_turistico_gid_seq'::regclass);


--
-- TOC entry 5315 (class 2604 OID 18850)
-- Name: ptp_attrezzature_leggere gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_attrezzature_leggere ALTER COLUMN gid SET DEFAULT nextval('assets.attrezzature_leggere_gid_seq'::regclass);


--
-- TOC entry 5316 (class 2604 OID 18862)
-- Name: ptp_autostrade gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_autostrade ALTER COLUMN gid SET DEFAULT nextval('assets.autostrade_gid_seq'::regclass);


--
-- TOC entry 5317 (class 2604 OID 18874)
-- Name: ptp_autostrade_svincoli gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_autostrade_svincoli ALTER COLUMN gid SET DEFAULT nextval('assets.autostrade_svincoli_gid_seq'::regclass);


--
-- TOC entry 5318 (class 2604 OID 18887)
-- Name: ptp_beni_culturali_isolati gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_beni_culturali_isolati ALTER COLUMN gid SET DEFAULT nextval('assets.beni_culturali_isolati_gid_seq'::regclass);


--
-- TOC entry 5319 (class 2604 OID 18900)
-- Name: ptp_beni_naturalistici_punt gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_beni_naturalistici_punt ALTER COLUMN gid SET DEFAULT nextval('assets.beni_naturalistici_punt_gid_seq'::regclass);


--
-- TOC entry 5320 (class 2604 OID 18912)
-- Name: ptp_boschi_ipla gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_boschi_ipla ALTER COLUMN gid SET DEFAULT nextval('assets.boschi_ipla_gid_seq'::regclass);


--
-- TOC entry 5321 (class 2604 OID 18983)
-- Name: ptp_comprensori_sci gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_comprensori_sci ALTER COLUMN gid SET DEFAULT nextval('assets.comprensori_sci_gid_seq'::regclass);


--
-- TOC entry 5322 (class 2604 OID 19002)
-- Name: ptp_dora_baltea gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_dora_baltea ALTER COLUMN gid SET DEFAULT nextval('assets.ptp_dora_baltea_gid_seq'::regclass);


--
-- TOC entry 5323 (class 2604 OID 19015)
-- Name: ptp_elementi_areali gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_elementi_areali ALTER COLUMN gid SET DEFAULT nextval('assets.elementi_areali_gid_seq'::regclass);


--
-- TOC entry 5324 (class 2604 OID 19027)
-- Name: ptp_elementi_lineari gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_elementi_lineari ALTER COLUMN gid SET DEFAULT nextval('assets.ptp_elementi_lineari_gid_seq'::regclass);


--
-- TOC entry 5325 (class 2604 OID 19040)
-- Name: ptp_elementi_puntuali gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_elementi_puntuali ALTER COLUMN gid SET DEFAULT nextval('assets.elementi_puntuali_gid_seq'::regclass);


--
-- TOC entry 5326 (class 2604 OID 19052)
-- Name: ptp_fasce_fluviali gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_fasce_fluviali ALTER COLUMN gid SET DEFAULT nextval('assets.fasce_fluviali_gid_seq'::regclass);


--
-- TOC entry 5327 (class 2604 OID 19070)
-- Name: ptp_fasce_urbane_da_riq gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_fasce_urbane_da_riq ALTER COLUMN gid SET DEFAULT nextval('assets.fasce_urbane_da_riq_gid_seq'::regclass);


--
-- TOC entry 5328 (class 2604 OID 19082)
-- Name: ptp_ferrovia gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_ferrovia ALTER COLUMN gid SET DEFAULT nextval('assets.ferrovia_gid_seq'::regclass);


--
-- TOC entry 5329 (class 2604 OID 19094)
-- Name: ptp_ferrovia_aosta_martigny gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_ferrovia_aosta_martigny ALTER COLUMN gid SET DEFAULT nextval('assets.ferrovia_aosta_martigny_gid_seq'::regclass);


--
-- TOC entry 5330 (class 2604 OID 19106)
-- Name: ptp_impianti_arroccamento gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_impianti_arroccamento ALTER COLUMN gid SET DEFAULT nextval('assets.impianti_arroccamento_gid_seq'::regclass);


--
-- TOC entry 5331 (class 2604 OID 19118)
-- Name: ptp_impianti_risalita gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_impianti_risalita ALTER COLUMN gid SET DEFAULT nextval('assets.impianti_risalita_gid_seq'::regclass);


--
-- TOC entry 5332 (class 2604 OID 19131)
-- Name: ptp_industria_txt gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_industria_txt ALTER COLUMN gid SET DEFAULT nextval('assets.industria_txt_gid_seq'::regclass);


--
-- TOC entry 5333 (class 2604 OID 19143)
-- Name: ptp_laghi gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_laghi ALTER COLUMN gid SET DEFAULT nextval('assets.laghi_gid_seq'::regclass);


--
-- TOC entry 5334 (class 2604 OID 19155)
-- Name: ptp_legenda_txt gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_legenda_txt ALTER COLUMN gid SET DEFAULT nextval('assets.legenda_txt_gid_seq'::regclass);


--
-- TOC entry 5335 (class 2604 OID 19167)
-- Name: ptp_nodi_interscambio_base100 gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_nodi_interscambio_base100 ALTER COLUMN gid SET DEFAULT nextval('assets.nodi_interscambio_base100_gid_seq'::regclass);


--
-- TOC entry 5336 (class 2604 OID 19180)
-- Name: ptp_nodi_interscambio_base20 gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_nodi_interscambio_base20 ALTER COLUMN gid SET DEFAULT nextval('assets.nodi_interscambio_base20_gid_seq'::regclass);


--
-- TOC entry 5337 (class 2604 OID 19192)
-- Name: ptp_percorsi_intervallivi gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_percorsi_intervallivi ALTER COLUMN gid SET DEFAULT nextval('assets.percorsi_intervallivi_gid_seq'::regclass);


--
-- TOC entry 5338 (class 2604 OID 19215)
-- Name: ptp_percorsi_storici gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_percorsi_storici ALTER COLUMN gid SET DEFAULT nextval('assets.percorsi_storici_gid_seq'::regclass);


--
-- TOC entry 5339 (class 2604 OID 19228)
-- Name: ptp_percorsi_verde_urbano gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_percorsi_verde_urbano ALTER COLUMN gid SET DEFAULT nextval('assets.percorsi_verde_urbano_gid_seq'::regclass);


--
-- TOC entry 5340 (class 2604 OID 19243)
-- Name: ptp_pericolosita_geologica gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pericolosita_geologica ALTER COLUMN gid SET DEFAULT nextval('assets.pericolosita_geologica_gid_seq'::regclass);


--
-- TOC entry 5341 (class 2604 OID 19485)
-- Name: ptp_piste_sci gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_piste_sci ALTER COLUMN gid SET DEFAULT nextval('assets.piste_sci_gid_seq'::regclass);


--
-- TOC entry 5342 (class 2604 OID 19508)
-- Name: ptp_piste_sci_nordico gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_piste_sci_nordico ALTER COLUMN gid SET DEFAULT nextval('assets.piste_sci_nordico_gid_seq'::regclass);


--
-- TOC entry 5343 (class 2604 OID 19520)
-- Name: ptp_pmir1_fascia_dora gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pmir1_fascia_dora ALTER COLUMN gid SET DEFAULT nextval('assets.pmir1_fascia_dora_gid_seq'::regclass);


--
-- TOC entry 5344 (class 2604 OID 19532)
-- Name: ptp_pmir3 gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pmir3 ALTER COLUMN gid SET DEFAULT nextval('assets.pmir3_gid_seq'::regclass);


--
-- TOC entry 5345 (class 2604 OID 19544)
-- Name: ptp_pmir3_simb gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pmir3_simb ALTER COLUMN gid SET DEFAULT nextval('assets.pmir3_simb_gid_seq'::regclass);


--
-- TOC entry 5346 (class 2604 OID 19556)
-- Name: ptp_pmir5 gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pmir5 ALTER COLUMN gid SET DEFAULT nextval('assets.pmir5_gid_seq'::regclass);


--
-- TOC entry 5347 (class 2604 OID 19568)
-- Name: ptp_pmir6 gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pmir6 ALTER COLUMN gid SET DEFAULT nextval('assets.pmir6_gid_seq'::regclass);


--
-- TOC entry 5348 (class 2604 OID 19580)
-- Name: ptp_pmir6_simb gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pmir6_simb ALTER COLUMN gid SET DEFAULT nextval('assets.pmir6_simb_gid_seq'::regclass);


--
-- TOC entry 5349 (class 2604 OID 19592)
-- Name: ptp_pmir7 gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pmir7 ALTER COLUMN gid SET DEFAULT nextval('assets.pmir7_gid_seq'::regclass);


--
-- TOC entry 5350 (class 2604 OID 19604)
-- Name: ptp_pngp gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pngp ALTER COLUMN gid SET DEFAULT nextval('assets.pngp_gid_seq'::regclass);


--
-- TOC entry 5351 (class 2604 OID 19616)
-- Name: ptp_ptir1 gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_ptir1 ALTER COLUMN gid SET DEFAULT nextval('assets.ptir1_gid_seq'::regclass);


--
-- TOC entry 5352 (class 2604 OID 19628)
-- Name: ptp_ptir2 gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_ptir2 ALTER COLUMN gid SET DEFAULT nextval('assets.ptir2_gid_seq'::regclass);


--
-- TOC entry 5353 (class 2604 OID 19640)
-- Name: ptp_ptir3 gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_ptir3 ALTER COLUMN gid SET DEFAULT nextval('assets.ptir3_gid_seq'::regclass);


--
-- TOC entry 5354 (class 2604 OID 19652)
-- Name: ptp_punti_reg_flussi_veic gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_punti_reg_flussi_veic ALTER COLUMN gid SET DEFAULT nextval('assets.punti_reg_flussi_veic_gid_seq'::regclass);


--
-- TOC entry 5355 (class 2604 OID 19666)
-- Name: ptp_rete_fluviale gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_rete_fluviale ALTER COLUMN gid SET DEFAULT nextval('assets.rete_fluviale_gid_seq'::regclass);


--
-- TOC entry 5356 (class 2604 OID 19680)
-- Name: ptp_rifugi_bivacchi gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_rifugi_bivacchi ALTER COLUMN gid SET DEFAULT nextval('assets.rifugi_bivacchi_gid_seq'::regclass);


--
-- TOC entry 5357 (class 2604 OID 19692)
-- Name: ptp_ripetitori_tv gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_ripetitori_tv ALTER COLUMN gid SET DEFAULT nextval('assets.ripetitori_tv_gid_seq'::regclass);


--
-- TOC entry 5358 (class 2604 OID 19705)
-- Name: ptp_riserve_txt gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_riserve_txt ALTER COLUMN gid SET DEFAULT nextval('assets.riserve_txt_gid_seq'::regclass);


--
-- TOC entry 5359 (class 2604 OID 19718)
-- Name: ptp_sa_aree_nat_alta_quota gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_aree_nat_alta_quota ALTER COLUMN gid SET DEFAULT nextval('assets.sa_aree_nat_alta_quota_gid_seq'::regclass);


--
-- TOC entry 5360 (class 2604 OID 19746)
-- Name: ptp_sa_aree_naturali gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_aree_naturali ALTER COLUMN gid SET DEFAULT nextval('assets.sa_aree_naturali_gid_seq'::regclass);


--
-- TOC entry 5361 (class 2604 OID 19767)
-- Name: ptp_sa_boschi gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_boschi ALTER COLUMN gid SET DEFAULT nextval('assets.sa_boschi_gid_seq'::regclass);


--
-- TOC entry 5362 (class 2604 OID 19832)
-- Name: ptp_sa_fluviali gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_fluviali ALTER COLUMN gid SET DEFAULT nextval('assets.sa_fluviali_gid_seq'::regclass);


--
-- TOC entry 5363 (class 2604 OID 19846)
-- Name: ptp_sa_insed_svil_integr gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_insed_svil_integr ALTER COLUMN gid SET DEFAULT nextval('assets.sa_insed_svil_integr_gid_seq'::regclass);


--
-- TOC entry 5364 (class 2604 OID 19883)
-- Name: ptp_sa_insed_svil_resid gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_insed_svil_resid ALTER COLUMN gid SET DEFAULT nextval('assets.sa_insed_svil_resid_gid_seq'::regclass);


--
-- TOC entry 5365 (class 2604 OID 19896)
-- Name: ptp_sa_insed_svil_trad gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_insed_svil_trad ALTER COLUMN gid SET DEFAULT nextval('assets.sa_insed_svil_trad_gid_seq'::regclass);


--
-- TOC entry 5366 (class 2604 OID 19920)
-- Name: ptp_sa_insed_svil_turis gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_insed_svil_turis ALTER COLUMN gid SET DEFAULT nextval('assets.ptp_sa_insed_svil_turis_gid_seq'::regclass);


--
-- TOC entry 5367 (class 2604 OID 19932)
-- Name: ptp_sa_pascoli gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_pascoli ALTER COLUMN gid SET DEFAULT nextval('assets.sa_pascoli_gid_seq'::regclass);


--
-- TOC entry 5368 (class 2604 OID 19985)
-- Name: ptp_sa_urbani gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_urbani ALTER COLUMN gid SET DEFAULT nextval('assets.sa_urbani_gid_seq'::regclass);


--
-- TOC entry 5369 (class 2604 OID 19997)
-- Name: ptp_servizi_txt gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_servizi_txt ALTER COLUMN gid SET DEFAULT nextval('assets.servizi_txt_gid_seq'::regclass);


--
-- TOC entry 5370 (class 2604 OID 20009)
-- Name: ptp_sistema_misto_urbano_fluviale gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sistema_misto_urbano_fluviale ALTER COLUMN gid SET DEFAULT nextval('assets.sistema_misto_urbano_fluviale_gid_seq'::regclass);


--
-- TOC entry 5371 (class 2604 OID 20021)
-- Name: ptp_staz_ferrovia_esistenti gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_staz_ferrovia_esistenti ALTER COLUMN gid SET DEFAULT nextval('assets.staz_ferrovia_esistenti_gid_seq'::regclass);


--
-- TOC entry 5372 (class 2604 OID 20033)
-- Name: ptp_staz_ferrovia_progetto gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_staz_ferrovia_progetto ALTER COLUMN gid SET DEFAULT nextval('assets.staz_ferrovia_progetto_gid_seq'::regclass);


--
-- TOC entry 5373 (class 2604 OID 20046)
-- Name: ptp_staz_turistiche gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_staz_turistiche ALTER COLUMN gid SET DEFAULT nextval('assets.staz_turistiche_gid_seq'::regclass);


--
-- TOC entry 5374 (class 2604 OID 20058)
-- Name: ptp_strade_balconata_envers gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_strade_balconata_envers ALTER COLUMN gid SET DEFAULT nextval('assets.strade_balconata_envers_gid_seq'::regclass);


--
-- TOC entry 5375 (class 2604 OID 20070)
-- Name: ptp_strade_varianti_viabilita gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_strade_varianti_viabilita ALTER COLUMN gid SET DEFAULT nextval('assets.strade_varianti_viabilita_gid_seq'::regclass);


--
-- TOC entry 5376 (class 2604 OID 20082)
-- Name: ptp_strade_viabilita_princ gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_strade_viabilita_princ ALTER COLUMN gid SET DEFAULT nextval('assets.strade_viabilita_princ_gid_seq'::regclass);


--
-- TOC entry 5377 (class 2604 OID 20095)
-- Name: ptp_tour_escursionistici gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_tour_escursionistici ALTER COLUMN gid SET DEFAULT nextval('assets.tour_escursionistici_gid_seq'::regclass);


--
-- TOC entry 5378 (class 2604 OID 20107)
-- Name: ptp_trenino_cogne_pila gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_trenino_cogne_pila ALTER COLUMN gid SET DEFAULT nextval('assets.trenino_cogne_pila_gid_seq'::regclass);


--
-- TOC entry 5379 (class 2604 OID 20119)
-- Name: ptp_tutele_txt gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_tutele_txt ALTER COLUMN gid SET DEFAULT nextval('assets.tutele_txt_gid_seq'::regclass);


--
-- TOC entry 5380 (class 2604 OID 20131)
-- Name: ptp_villes gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_villes ALTER COLUMN gid SET DEFAULT nextval('assets.villes_gid_seq'::regclass);


--
-- TOC entry 5381 (class 2604 OID 20145)
-- Name: ptp_vinc_aree_archeologiche gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_aree_archeologiche ALTER COLUMN gid SET DEFAULT nextval('assets.vinc_aree_archeologiche_gid_seq'::regclass);


--
-- TOC entry 5382 (class 2604 OID 20158)
-- Name: ptp_vinc_aree_fiumi gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_aree_fiumi ALTER COLUMN gid SET DEFAULT nextval('assets.vinc_aree_fiumi_gid_seq'::regclass);


--
-- TOC entry 5383 (class 2604 OID 20203)
-- Name: ptp_vinc_aree_laghi gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_aree_laghi ALTER COLUMN gid SET DEFAULT nextval('assets.vinc_aree_laghi_gid_seq'::regclass);


--
-- TOC entry 5384 (class 2604 OID 20236)
-- Name: ptp_vinc_cdl_1600 gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_cdl_1600 ALTER COLUMN gid SET DEFAULT nextval('assets.vinc_cdl_1600_gid_seq'::regclass);


--
-- TOC entry 5385 (class 2604 OID 20249)
-- Name: ptp_vinc_ghiacciai gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_ghiacciai ALTER COLUMN gid SET DEFAULT nextval('assets.vinc_ghiacciai_gid_seq'::regclass);


--
-- TOC entry 5386 (class 2604 OID 20262)
-- Name: ptp_vinc_idrogeologico gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_idrogeologico ALTER COLUMN gid SET DEFAULT nextval('assets.vinc_idrogeologico_gid_seq'::regclass);


--
-- TOC entry 5387 (class 2604 OID 20277)
-- Name: ptp_vinc_legge_1497 gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_legge_1497 ALTER COLUMN gid SET DEFAULT nextval('assets.vinc_legge_1497_gid_seq'::regclass);


--
-- TOC entry 5388 (class 2604 OID 20303)
-- Name: ptp_vinc_legge_castagno gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_legge_castagno ALTER COLUMN gid SET DEFAULT nextval('assets.vinc_legge_castagno_gid_seq'::regclass);


--
-- TOC entry 5389 (class 2604 OID 20321)
-- Name: ptp_vinc_parchi gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_parchi ALTER COLUMN gid SET DEFAULT nextval('assets.vinc_parchi_gid_seq'::regclass);


--
-- TOC entry 5390 (class 2604 OID 20335)
-- Name: ptp_vinc_riserve gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_riserve ALTER COLUMN gid SET DEFAULT nextval('assets.vinc_riserve_gid_seq'::regclass);


--
-- TOC entry 5391 (class 2604 OID 20347)
-- Name: ptp_vnc_archeo_txt gid; Type: DEFAULT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vnc_archeo_txt ALTER COLUMN gid SET DEFAULT nextval('assets.vnc_archeo_txt_gid_seq'::regclass);


--
-- TOC entry 5577 (class 2606 OID 19922)
-- Name: ptp_sa_insed_svil_turis Shape — ptp_sa_insed_svil_turis_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_insed_svil_turis
    ADD CONSTRAINT "Shape — ptp_sa_insed_svil_turis_pkey" PRIMARY KEY (gid);


--
-- TOC entry 5403 (class 2606 OID 18755)
-- Name: ptp_abitazioni abitazioni_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_abitazioni
    ADD CONSTRAINT abitazioni_pkey PRIMARY KEY (gid);


--
-- TOC entry 5400 (class 2606 OID 18742)
-- Name: ptp_agglomerati agglomerati_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_agglomerati
    ADD CONSTRAINT agglomerati_pkey PRIMARY KEY (gid);


--
-- TOC entry 5667 (class 2606 OID 21640)
-- Name: akhet_vda_elab_lineare akhet_vda_elab_lineare_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.akhet_vda_elab_lineare
    ADD CONSTRAINT akhet_vda_elab_lineare_pkey PRIMARY KEY (gid);


--
-- TOC entry 5670 (class 2606 OID 21658)
-- Name: akhet_vda_elem_noti_lineare akhet_vda_elem_noti_lineare_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.akhet_vda_elem_noti_lineare
    ADD CONSTRAINT akhet_vda_elem_noti_lineare_pkey PRIMARY KEY (gid);


--
-- TOC entry 5673 (class 2606 OID 21682)
-- Name: akhet_vda_elem_noti_poligonale akhet_vda_elem_noti_poligonale_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.akhet_vda_elem_noti_poligonale
    ADD CONSTRAINT akhet_vda_elem_noti_poligonale_pkey PRIMARY KEY (gid);


--
-- TOC entry 5658 (class 2606 OID 21594)
-- Name: akhet_vda_lineare akhet_vda_lineare_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.akhet_vda_lineare
    ADD CONSTRAINT akhet_vda_lineare_pkey PRIMARY KEY (gid);


--
-- TOC entry 5661 (class 2606 OID 21614)
-- Name: akhet_vda_poligonale akhet_vda_poligonale_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.akhet_vda_poligonale
    ADD CONSTRAINT akhet_vda_poligonale_pkey PRIMARY KEY (gid);


--
-- TOC entry 5664 (class 2606 OID 21626)
-- Name: akhet_vda_puntuale akhet_vda_puntuale_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.akhet_vda_puntuale
    ADD CONSTRAINT akhet_vda_puntuale_pkey PRIMARY KEY (gid);


--
-- TOC entry 5655 (class 2606 OID 21544)
-- Name: akhet_vda_vincoli_archeologici akhet_vincoli_archeologici_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.akhet_vda_vincoli_archeologici
    ADD CONSTRAINT akhet_vincoli_archeologici_pkey PRIMARY KEY (gid);


--
-- TOC entry 5406 (class 2606 OID 18767)
-- Name: ptp_alte_vie alte_vie_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_alte_vie
    ADD CONSTRAINT alte_vie_pkey PRIMARY KEY (gid);


--
-- TOC entry 5409 (class 2606 OID 18780)
-- Name: ptp_altri_parchi altri_parchi_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_altri_parchi
    ADD CONSTRAINT altri_parchi_pkey PRIMARY KEY (gid);


--
-- TOC entry 5412 (class 2606 OID 18796)
-- Name: ptp_aosta_bourgs aosta_bourgs_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_aosta_bourgs
    ADD CONSTRAINT aosta_bourgs_pkey PRIMARY KEY (gid);


--
-- TOC entry 5418 (class 2606 OID 18822)
-- Name: ptp_aree_tutela aree_tutela_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_aree_tutela
    ADD CONSTRAINT aree_tutela_pkey PRIMARY KEY (gid);


--
-- TOC entry 5421 (class 2606 OID 18840)
-- Name: ptp_attest_affl_turistico attest_affl_turistico_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_attest_affl_turistico
    ADD CONSTRAINT attest_affl_turistico_pkey PRIMARY KEY (gid);


--
-- TOC entry 5424 (class 2606 OID 18852)
-- Name: ptp_attrezzature_leggere attrezzature_leggere_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_attrezzature_leggere
    ADD CONSTRAINT attrezzature_leggere_pkey PRIMARY KEY (gid);


--
-- TOC entry 5427 (class 2606 OID 18864)
-- Name: ptp_autostrade autostrade_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_autostrade
    ADD CONSTRAINT autostrade_pkey PRIMARY KEY (gid);


--
-- TOC entry 5430 (class 2606 OID 18876)
-- Name: ptp_autostrade_svincoli autostrade_svincoli_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_autostrade_svincoli
    ADD CONSTRAINT autostrade_svincoli_pkey PRIMARY KEY (gid);


--
-- TOC entry 5433 (class 2606 OID 18889)
-- Name: ptp_beni_culturali_isolati beni_culturali_isolati_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_beni_culturali_isolati
    ADD CONSTRAINT beni_culturali_isolati_pkey PRIMARY KEY (gid);


--
-- TOC entry 5436 (class 2606 OID 18902)
-- Name: ptp_beni_naturalistici_punt beni_naturalistici_punt_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_beni_naturalistici_punt
    ADD CONSTRAINT beni_naturalistici_punt_pkey PRIMARY KEY (gid);


--
-- TOC entry 5439 (class 2606 OID 18914)
-- Name: ptp_boschi_ipla boschi_ipla_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_boschi_ipla
    ADD CONSTRAINT boschi_ipla_pkey PRIMARY KEY (gid);


--
-- TOC entry 5442 (class 2606 OID 18985)
-- Name: ptp_comprensori_sci comprensori_sci_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_comprensori_sci
    ADD CONSTRAINT comprensori_sci_pkey PRIMARY KEY (gid);


--
-- TOC entry 5448 (class 2606 OID 19017)
-- Name: ptp_elementi_areali elementi_areali_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_elementi_areali
    ADD CONSTRAINT elementi_areali_pkey PRIMARY KEY (gid);


--
-- TOC entry 5454 (class 2606 OID 19042)
-- Name: ptp_elementi_puntuali elementi_puntuali_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_elementi_puntuali
    ADD CONSTRAINT elementi_puntuali_pkey PRIMARY KEY (gid);


--
-- TOC entry 5457 (class 2606 OID 19054)
-- Name: ptp_fasce_fluviali fasce_fluviali_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_fasce_fluviali
    ADD CONSTRAINT fasce_fluviali_pkey PRIMARY KEY (gid);


--
-- TOC entry 5460 (class 2606 OID 19072)
-- Name: ptp_fasce_urbane_da_riq fasce_urbane_da_riq_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_fasce_urbane_da_riq
    ADD CONSTRAINT fasce_urbane_da_riq_pkey PRIMARY KEY (gid);


--
-- TOC entry 5466 (class 2606 OID 19096)
-- Name: ptp_ferrovia_aosta_martigny ferrovia_aosta_martigny_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_ferrovia_aosta_martigny
    ADD CONSTRAINT ferrovia_aosta_martigny_pkey PRIMARY KEY (gid);


--
-- TOC entry 5463 (class 2606 OID 19084)
-- Name: ptp_ferrovia ferrovia_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_ferrovia
    ADD CONSTRAINT ferrovia_pkey PRIMARY KEY (gid);


--
-- TOC entry 5469 (class 2606 OID 19108)
-- Name: ptp_impianti_arroccamento impianti_arroccamento_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_impianti_arroccamento
    ADD CONSTRAINT impianti_arroccamento_pkey PRIMARY KEY (gid);


--
-- TOC entry 5472 (class 2606 OID 19120)
-- Name: ptp_impianti_risalita impianti_risalita_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_impianti_risalita
    ADD CONSTRAINT impianti_risalita_pkey PRIMARY KEY (gid);


--
-- TOC entry 5475 (class 2606 OID 19133)
-- Name: ptp_industria_txt industria_txt_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_industria_txt
    ADD CONSTRAINT industria_txt_pkey PRIMARY KEY (gid);


--
-- TOC entry 5478 (class 2606 OID 19145)
-- Name: ptp_laghi laghi_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_laghi
    ADD CONSTRAINT laghi_pkey PRIMARY KEY (gid);


--
-- TOC entry 5481 (class 2606 OID 19157)
-- Name: ptp_legenda_txt legenda_txt_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_legenda_txt
    ADD CONSTRAINT legenda_txt_pkey PRIMARY KEY (gid);


--
-- TOC entry 5484 (class 2606 OID 19169)
-- Name: ptp_nodi_interscambio_base100 nodi_interscambio_base100_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_nodi_interscambio_base100
    ADD CONSTRAINT nodi_interscambio_base100_pkey PRIMARY KEY (gid);


--
-- TOC entry 5487 (class 2606 OID 19182)
-- Name: ptp_nodi_interscambio_base20 nodi_interscambio_base20_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_nodi_interscambio_base20
    ADD CONSTRAINT nodi_interscambio_base20_pkey PRIMARY KEY (gid);


--
-- TOC entry 5490 (class 2606 OID 19194)
-- Name: ptp_percorsi_intervallivi percorsi_intervallivi_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_percorsi_intervallivi
    ADD CONSTRAINT percorsi_intervallivi_pkey PRIMARY KEY (gid);


--
-- TOC entry 5493 (class 2606 OID 19217)
-- Name: ptp_percorsi_storici percorsi_storici_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_percorsi_storici
    ADD CONSTRAINT percorsi_storici_pkey PRIMARY KEY (gid);


--
-- TOC entry 5496 (class 2606 OID 19230)
-- Name: ptp_percorsi_verde_urbano percorsi_verde_urbano_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_percorsi_verde_urbano
    ADD CONSTRAINT percorsi_verde_urbano_pkey PRIMARY KEY (gid);


--
-- TOC entry 5499 (class 2606 OID 19245)
-- Name: ptp_pericolosita_geologica pericolosita_geologica_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pericolosita_geologica
    ADD CONSTRAINT pericolosita_geologica_pkey PRIMARY KEY (gid);


--
-- TOC entry 5505 (class 2606 OID 19510)
-- Name: ptp_piste_sci_nordico piste_sci_nordico_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_piste_sci_nordico
    ADD CONSTRAINT piste_sci_nordico_pkey PRIMARY KEY (gid);


--
-- TOC entry 5502 (class 2606 OID 19487)
-- Name: ptp_piste_sci piste_sci_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_piste_sci
    ADD CONSTRAINT piste_sci_pkey PRIMARY KEY (gid);


--
-- TOC entry 5508 (class 2606 OID 19522)
-- Name: ptp_pmir1_fascia_dora pmir1_fascia_dora_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pmir1_fascia_dora
    ADD CONSTRAINT pmir1_fascia_dora_pkey PRIMARY KEY (gid);


--
-- TOC entry 5511 (class 2606 OID 19534)
-- Name: ptp_pmir3 pmir3_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pmir3
    ADD CONSTRAINT pmir3_pkey PRIMARY KEY (gid);


--
-- TOC entry 5514 (class 2606 OID 19546)
-- Name: ptp_pmir3_simb pmir3_simb_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pmir3_simb
    ADD CONSTRAINT pmir3_simb_pkey PRIMARY KEY (gid);


--
-- TOC entry 5517 (class 2606 OID 19558)
-- Name: ptp_pmir5 pmir5_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pmir5
    ADD CONSTRAINT pmir5_pkey PRIMARY KEY (gid);


--
-- TOC entry 5520 (class 2606 OID 19570)
-- Name: ptp_pmir6 pmir6_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pmir6
    ADD CONSTRAINT pmir6_pkey PRIMARY KEY (gid);


--
-- TOC entry 5523 (class 2606 OID 19582)
-- Name: ptp_pmir6_simb pmir6_simb_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pmir6_simb
    ADD CONSTRAINT pmir6_simb_pkey PRIMARY KEY (gid);


--
-- TOC entry 5526 (class 2606 OID 19594)
-- Name: ptp_pmir7 pmir7_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pmir7
    ADD CONSTRAINT pmir7_pkey PRIMARY KEY (gid);


--
-- TOC entry 5529 (class 2606 OID 19606)
-- Name: ptp_pngp pngp_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_pngp
    ADD CONSTRAINT pngp_pkey PRIMARY KEY (gid);


--
-- TOC entry 5532 (class 2606 OID 19618)
-- Name: ptp_ptir1 ptir1_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_ptir1
    ADD CONSTRAINT ptir1_pkey PRIMARY KEY (gid);


--
-- TOC entry 5535 (class 2606 OID 19630)
-- Name: ptp_ptir2 ptir2_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_ptir2
    ADD CONSTRAINT ptir2_pkey PRIMARY KEY (gid);


--
-- TOC entry 5538 (class 2606 OID 19642)
-- Name: ptp_ptir3 ptir3_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_ptir3
    ADD CONSTRAINT ptir3_pkey PRIMARY KEY (gid);


--
-- TOC entry 5415 (class 2606 OID 18808)
-- Name: ptp_aree_protette ptp_aree_protette_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_aree_protette
    ADD CONSTRAINT ptp_aree_protette_pkey PRIMARY KEY (gid);


--
-- TOC entry 5445 (class 2606 OID 19004)
-- Name: ptp_dora_baltea ptp_dora_baltea_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_dora_baltea
    ADD CONSTRAINT ptp_dora_baltea_pkey PRIMARY KEY (gid);


--
-- TOC entry 5451 (class 2606 OID 19029)
-- Name: ptp_elementi_lineari ptp_elementi_lineari_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_elementi_lineari
    ADD CONSTRAINT ptp_elementi_lineari_pkey PRIMARY KEY (gid);


--
-- TOC entry 5541 (class 2606 OID 19654)
-- Name: ptp_punti_reg_flussi_veic punti_reg_flussi_veic_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_punti_reg_flussi_veic
    ADD CONSTRAINT punti_reg_flussi_veic_pkey PRIMARY KEY (gid);


--
-- TOC entry 5544 (class 2606 OID 19668)
-- Name: ptp_rete_fluviale rete_fluviale_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_rete_fluviale
    ADD CONSTRAINT rete_fluviale_pkey PRIMARY KEY (gid);


--
-- TOC entry 5547 (class 2606 OID 19682)
-- Name: ptp_rifugi_bivacchi rifugi_bivacchi_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_rifugi_bivacchi
    ADD CONSTRAINT rifugi_bivacchi_pkey PRIMARY KEY (gid);


--
-- TOC entry 5550 (class 2606 OID 19694)
-- Name: ptp_ripetitori_tv ripetitori_tv_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_ripetitori_tv
    ADD CONSTRAINT ripetitori_tv_pkey PRIMARY KEY (gid);


--
-- TOC entry 5553 (class 2606 OID 19707)
-- Name: ptp_riserve_txt riserve_txt_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_riserve_txt
    ADD CONSTRAINT riserve_txt_pkey PRIMARY KEY (gid);


--
-- TOC entry 5556 (class 2606 OID 19720)
-- Name: ptp_sa_aree_nat_alta_quota sa_aree_nat_alta_quota_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_aree_nat_alta_quota
    ADD CONSTRAINT sa_aree_nat_alta_quota_pkey PRIMARY KEY (gid);


--
-- TOC entry 5559 (class 2606 OID 19748)
-- Name: ptp_sa_aree_naturali sa_aree_naturali_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_aree_naturali
    ADD CONSTRAINT sa_aree_naturali_pkey PRIMARY KEY (gid);


--
-- TOC entry 5562 (class 2606 OID 19769)
-- Name: ptp_sa_boschi sa_boschi_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_boschi
    ADD CONSTRAINT sa_boschi_pkey PRIMARY KEY (gid);


--
-- TOC entry 5565 (class 2606 OID 19834)
-- Name: ptp_sa_fluviali sa_fluviali_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_fluviali
    ADD CONSTRAINT sa_fluviali_pkey PRIMARY KEY (gid);


--
-- TOC entry 5568 (class 2606 OID 19848)
-- Name: ptp_sa_insed_svil_integr sa_insed_svil_integr_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_insed_svil_integr
    ADD CONSTRAINT sa_insed_svil_integr_pkey PRIMARY KEY (gid);


--
-- TOC entry 5571 (class 2606 OID 19885)
-- Name: ptp_sa_insed_svil_resid sa_insed_svil_resid_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_insed_svil_resid
    ADD CONSTRAINT sa_insed_svil_resid_pkey PRIMARY KEY (gid);


--
-- TOC entry 5574 (class 2606 OID 19898)
-- Name: ptp_sa_insed_svil_trad sa_insed_svil_trad_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_insed_svil_trad
    ADD CONSTRAINT sa_insed_svil_trad_pkey PRIMARY KEY (gid);


--
-- TOC entry 5580 (class 2606 OID 19934)
-- Name: ptp_sa_pascoli sa_pascoli_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_pascoli
    ADD CONSTRAINT sa_pascoli_pkey PRIMARY KEY (gid);


--
-- TOC entry 5583 (class 2606 OID 19987)
-- Name: ptp_sa_urbani sa_urbani_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sa_urbani
    ADD CONSTRAINT sa_urbani_pkey PRIMARY KEY (gid);


--
-- TOC entry 5586 (class 2606 OID 19999)
-- Name: ptp_servizi_txt servizi_txt_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_servizi_txt
    ADD CONSTRAINT servizi_txt_pkey PRIMARY KEY (gid);


--
-- TOC entry 5590 (class 2606 OID 20011)
-- Name: ptp_sistema_misto_urbano_fluviale sistema_misto_urbano_fluviale_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_sistema_misto_urbano_fluviale
    ADD CONSTRAINT sistema_misto_urbano_fluviale_pkey PRIMARY KEY (gid);


--
-- TOC entry 5593 (class 2606 OID 20023)
-- Name: ptp_staz_ferrovia_esistenti staz_ferrovia_esistenti_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_staz_ferrovia_esistenti
    ADD CONSTRAINT staz_ferrovia_esistenti_pkey PRIMARY KEY (gid);


--
-- TOC entry 5596 (class 2606 OID 20035)
-- Name: ptp_staz_ferrovia_progetto staz_ferrovia_progetto_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_staz_ferrovia_progetto
    ADD CONSTRAINT staz_ferrovia_progetto_pkey PRIMARY KEY (gid);


--
-- TOC entry 5599 (class 2606 OID 20048)
-- Name: ptp_staz_turistiche staz_turistiche_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_staz_turistiche
    ADD CONSTRAINT staz_turistiche_pkey PRIMARY KEY (gid);


--
-- TOC entry 5602 (class 2606 OID 20060)
-- Name: ptp_strade_balconata_envers strade_balconata_envers_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_strade_balconata_envers
    ADD CONSTRAINT strade_balconata_envers_pkey PRIMARY KEY (gid);


--
-- TOC entry 5605 (class 2606 OID 20072)
-- Name: ptp_strade_varianti_viabilita strade_varianti_viabilita_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_strade_varianti_viabilita
    ADD CONSTRAINT strade_varianti_viabilita_pkey PRIMARY KEY (gid);


--
-- TOC entry 5608 (class 2606 OID 20084)
-- Name: ptp_strade_viabilita_princ strade_viabilita_princ_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_strade_viabilita_princ
    ADD CONSTRAINT strade_viabilita_princ_pkey PRIMARY KEY (gid);


--
-- TOC entry 5611 (class 2606 OID 20097)
-- Name: ptp_tour_escursionistici tour_escursionistici_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_tour_escursionistici
    ADD CONSTRAINT tour_escursionistici_pkey PRIMARY KEY (gid);


--
-- TOC entry 5614 (class 2606 OID 20109)
-- Name: ptp_trenino_cogne_pila trenino_cogne_pila_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_trenino_cogne_pila
    ADD CONSTRAINT trenino_cogne_pila_pkey PRIMARY KEY (gid);


--
-- TOC entry 5617 (class 2606 OID 20121)
-- Name: ptp_tutele_txt tutele_txt_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_tutele_txt
    ADD CONSTRAINT tutele_txt_pkey PRIMARY KEY (gid);


--
-- TOC entry 5620 (class 2606 OID 20133)
-- Name: ptp_villes villes_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_villes
    ADD CONSTRAINT villes_pkey PRIMARY KEY (gid);


--
-- TOC entry 5623 (class 2606 OID 20147)
-- Name: ptp_vinc_aree_archeologiche vinc_aree_archeologiche_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_aree_archeologiche
    ADD CONSTRAINT vinc_aree_archeologiche_pkey PRIMARY KEY (gid);


--
-- TOC entry 5626 (class 2606 OID 20160)
-- Name: ptp_vinc_aree_fiumi vinc_aree_fiumi_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_aree_fiumi
    ADD CONSTRAINT vinc_aree_fiumi_pkey PRIMARY KEY (gid);


--
-- TOC entry 5629 (class 2606 OID 20205)
-- Name: ptp_vinc_aree_laghi vinc_aree_laghi_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_aree_laghi
    ADD CONSTRAINT vinc_aree_laghi_pkey PRIMARY KEY (gid);


--
-- TOC entry 5632 (class 2606 OID 20238)
-- Name: ptp_vinc_cdl_1600 vinc_cdl_1600_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_cdl_1600
    ADD CONSTRAINT vinc_cdl_1600_pkey PRIMARY KEY (gid);


--
-- TOC entry 5635 (class 2606 OID 20251)
-- Name: ptp_vinc_ghiacciai vinc_ghiacciai_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_ghiacciai
    ADD CONSTRAINT vinc_ghiacciai_pkey PRIMARY KEY (gid);


--
-- TOC entry 5638 (class 2606 OID 20264)
-- Name: ptp_vinc_idrogeologico vinc_idrogeologico_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_idrogeologico
    ADD CONSTRAINT vinc_idrogeologico_pkey PRIMARY KEY (gid);


--
-- TOC entry 5641 (class 2606 OID 20279)
-- Name: ptp_vinc_legge_1497 vinc_legge_1497_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_legge_1497
    ADD CONSTRAINT vinc_legge_1497_pkey PRIMARY KEY (gid);


--
-- TOC entry 5644 (class 2606 OID 20305)
-- Name: ptp_vinc_legge_castagno vinc_legge_castagno_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_legge_castagno
    ADD CONSTRAINT vinc_legge_castagno_pkey PRIMARY KEY (gid);


--
-- TOC entry 5647 (class 2606 OID 20323)
-- Name: ptp_vinc_parchi vinc_parchi_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_parchi
    ADD CONSTRAINT vinc_parchi_pkey PRIMARY KEY (gid);


--
-- TOC entry 5650 (class 2606 OID 20337)
-- Name: ptp_vinc_riserve vinc_riserve_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vinc_riserve
    ADD CONSTRAINT vinc_riserve_pkey PRIMARY KEY (gid);


--
-- TOC entry 5653 (class 2606 OID 20349)
-- Name: ptp_vnc_archeo_txt vnc_archeo_txt_pkey; Type: CONSTRAINT; Schema: assets; Owner: postgres
--

ALTER TABLE ONLY assets.ptp_vnc_archeo_txt
    ADD CONSTRAINT vnc_archeo_txt_pkey PRIMARY KEY (gid);


--
-- TOC entry 5578 (class 1259 OID 19926)
-- Name: sidx_Shape — ptp_sa_insed_svil_turis_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX "sidx_Shape — ptp_sa_insed_svil_turis_geom" ON assets.ptp_sa_insed_svil_turis USING gist (geom);


--
-- TOC entry 5404 (class 1259 OID 18759)
-- Name: sidx_abitazioni_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_abitazioni_geom ON assets.ptp_abitazioni USING gist (geom);


--
-- TOC entry 5401 (class 1259 OID 18746)
-- Name: sidx_agglomerati_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_agglomerati_geom ON assets.ptp_agglomerati USING gist (geom);


--
-- TOC entry 5668 (class 1259 OID 21648)
-- Name: sidx_akhet_vda_elab_lineare_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_akhet_vda_elab_lineare_geom ON assets.akhet_vda_elab_lineare USING gist (geom);


--
-- TOC entry 5671 (class 1259 OID 21662)
-- Name: sidx_akhet_vda_elem_noti_lineare_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_akhet_vda_elem_noti_lineare_geom ON assets.akhet_vda_elem_noti_lineare USING gist (geom);


--
-- TOC entry 5674 (class 1259 OID 21686)
-- Name: sidx_akhet_vda_elem_noti_poligonale_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_akhet_vda_elem_noti_poligonale_geom ON assets.akhet_vda_elem_noti_poligonale USING gist (geom);


--
-- TOC entry 5659 (class 1259 OID 21605)
-- Name: sidx_akhet_vda_lineare_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_akhet_vda_lineare_geom ON assets.akhet_vda_lineare USING gist (geom);


--
-- TOC entry 5662 (class 1259 OID 21618)
-- Name: sidx_akhet_vda_poligonale_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_akhet_vda_poligonale_geom ON assets.akhet_vda_poligonale USING gist (geom);


--
-- TOC entry 5665 (class 1259 OID 21630)
-- Name: sidx_akhet_vda_puntuale_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_akhet_vda_puntuale_geom ON assets.akhet_vda_puntuale USING gist (geom);


--
-- TOC entry 5656 (class 1259 OID 21573)
-- Name: sidx_akhet_vincoli_archeologici_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_akhet_vincoli_archeologici_geom ON assets.akhet_vda_vincoli_archeologici USING gist (geom);


--
-- TOC entry 5407 (class 1259 OID 18771)
-- Name: sidx_alte_vie_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_alte_vie_geom ON assets.ptp_alte_vie USING gist (geom);


--
-- TOC entry 5410 (class 1259 OID 18787)
-- Name: sidx_altri_parchi_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_altri_parchi_geom ON assets.ptp_altri_parchi USING gist (geom);


--
-- TOC entry 5413 (class 1259 OID 18800)
-- Name: sidx_aosta_bourgs_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_aosta_bourgs_geom ON assets.ptp_aosta_bourgs USING gist (geom);


--
-- TOC entry 5419 (class 1259 OID 18831)
-- Name: sidx_aree_tutela_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_aree_tutela_geom ON assets.ptp_aree_tutela USING gist (geom);


--
-- TOC entry 5422 (class 1259 OID 18844)
-- Name: sidx_attest_affl_turistico_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_attest_affl_turistico_geom ON assets.ptp_attest_affl_turistico USING gist (geom);


--
-- TOC entry 5425 (class 1259 OID 18856)
-- Name: sidx_attrezzature_leggere_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_attrezzature_leggere_geom ON assets.ptp_attrezzature_leggere USING gist (geom);


--
-- TOC entry 5428 (class 1259 OID 18868)
-- Name: sidx_autostrade_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_autostrade_geom ON assets.ptp_autostrade USING gist (geom);


--
-- TOC entry 5431 (class 1259 OID 18880)
-- Name: sidx_autostrade_svincoli_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_autostrade_svincoli_geom ON assets.ptp_autostrade_svincoli USING gist (geom);


--
-- TOC entry 5434 (class 1259 OID 18893)
-- Name: sidx_beni_culturali_isolati_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_beni_culturali_isolati_geom ON assets.ptp_beni_culturali_isolati USING gist (geom);


--
-- TOC entry 5437 (class 1259 OID 18906)
-- Name: sidx_beni_naturalistici_punt_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_beni_naturalistici_punt_geom ON assets.ptp_beni_naturalistici_punt USING gist (geom);


--
-- TOC entry 5440 (class 1259 OID 18977)
-- Name: sidx_boschi_ipla_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_boschi_ipla_geom ON assets.ptp_boschi_ipla USING gist (geom);


--
-- TOC entry 5443 (class 1259 OID 18994)
-- Name: sidx_comprensori_sci_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_comprensori_sci_geom ON assets.ptp_comprensori_sci USING gist (geom);


--
-- TOC entry 5449 (class 1259 OID 19021)
-- Name: sidx_elementi_areali_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_elementi_areali_geom ON assets.ptp_elementi_areali USING gist (geom);


--
-- TOC entry 5455 (class 1259 OID 19046)
-- Name: sidx_elementi_puntuali_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_elementi_puntuali_geom ON assets.ptp_elementi_puntuali USING gist (geom);


--
-- TOC entry 5458 (class 1259 OID 19062)
-- Name: sidx_fasce_fluviali_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_fasce_fluviali_geom ON assets.ptp_fasce_fluviali USING gist (geom);


--
-- TOC entry 5461 (class 1259 OID 19076)
-- Name: sidx_fasce_urbane_da_riq_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_fasce_urbane_da_riq_geom ON assets.ptp_fasce_urbane_da_riq USING gist (geom);


--
-- TOC entry 5467 (class 1259 OID 19100)
-- Name: sidx_ferrovia_aosta_martigny_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_ferrovia_aosta_martigny_geom ON assets.ptp_ferrovia_aosta_martigny USING gist (geom);


--
-- TOC entry 5464 (class 1259 OID 19088)
-- Name: sidx_ferrovia_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_ferrovia_geom ON assets.ptp_ferrovia USING gist (geom);


--
-- TOC entry 5470 (class 1259 OID 19112)
-- Name: sidx_impianti_arroccamento_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_impianti_arroccamento_geom ON assets.ptp_impianti_arroccamento USING gist (geom);


--
-- TOC entry 5473 (class 1259 OID 19124)
-- Name: sidx_impianti_risalita_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_impianti_risalita_geom ON assets.ptp_impianti_risalita USING gist (geom);


--
-- TOC entry 5476 (class 1259 OID 19137)
-- Name: sidx_industria_txt_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_industria_txt_geom ON assets.ptp_industria_txt USING gist (geom);


--
-- TOC entry 5479 (class 1259 OID 19149)
-- Name: sidx_laghi_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_laghi_geom ON assets.ptp_laghi USING gist (geom);


--
-- TOC entry 5482 (class 1259 OID 19161)
-- Name: sidx_legenda_txt_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_legenda_txt_geom ON assets.ptp_legenda_txt USING gist (geom);


--
-- TOC entry 5485 (class 1259 OID 19173)
-- Name: sidx_nodi_interscambio_base100_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_nodi_interscambio_base100_geom ON assets.ptp_nodi_interscambio_base100 USING gist (geom);


--
-- TOC entry 5488 (class 1259 OID 19186)
-- Name: sidx_nodi_interscambio_base20_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_nodi_interscambio_base20_geom ON assets.ptp_nodi_interscambio_base20 USING gist (geom);


--
-- TOC entry 5491 (class 1259 OID 19198)
-- Name: sidx_percorsi_intervallivi_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_percorsi_intervallivi_geom ON assets.ptp_percorsi_intervallivi USING gist (geom);


--
-- TOC entry 5494 (class 1259 OID 19222)
-- Name: sidx_percorsi_storici_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_percorsi_storici_geom ON assets.ptp_percorsi_storici USING gist (geom);


--
-- TOC entry 5497 (class 1259 OID 19234)
-- Name: sidx_percorsi_verde_urbano_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_percorsi_verde_urbano_geom ON assets.ptp_percorsi_verde_urbano USING gist (geom);


--
-- TOC entry 5500 (class 1259 OID 19476)
-- Name: sidx_pericolosita_geologica_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_pericolosita_geologica_geom ON assets.ptp_pericolosita_geologica USING gist (geom);


--
-- TOC entry 5503 (class 1259 OID 19502)
-- Name: sidx_piste_sci_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_piste_sci_geom ON assets.ptp_piste_sci USING gist (geom);


--
-- TOC entry 5506 (class 1259 OID 19514)
-- Name: sidx_piste_sci_nordico_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_piste_sci_nordico_geom ON assets.ptp_piste_sci_nordico USING gist (geom);


--
-- TOC entry 5509 (class 1259 OID 19526)
-- Name: sidx_pmir1_fascia_dora_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_pmir1_fascia_dora_geom ON assets.ptp_pmir1_fascia_dora USING gist (geom);


--
-- TOC entry 5512 (class 1259 OID 19538)
-- Name: sidx_pmir3_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_pmir3_geom ON assets.ptp_pmir3 USING gist (geom);


--
-- TOC entry 5515 (class 1259 OID 19550)
-- Name: sidx_pmir3_simb_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_pmir3_simb_geom ON assets.ptp_pmir3_simb USING gist (geom);


--
-- TOC entry 5518 (class 1259 OID 19562)
-- Name: sidx_pmir5_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_pmir5_geom ON assets.ptp_pmir5 USING gist (geom);


--
-- TOC entry 5521 (class 1259 OID 19574)
-- Name: sidx_pmir6_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_pmir6_geom ON assets.ptp_pmir6 USING gist (geom);


--
-- TOC entry 5524 (class 1259 OID 19586)
-- Name: sidx_pmir6_simb_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_pmir6_simb_geom ON assets.ptp_pmir6_simb USING gist (geom);


--
-- TOC entry 5527 (class 1259 OID 19598)
-- Name: sidx_pmir7_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_pmir7_geom ON assets.ptp_pmir7 USING gist (geom);


--
-- TOC entry 5530 (class 1259 OID 19610)
-- Name: sidx_pngp_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_pngp_geom ON assets.ptp_pngp USING gist (geom);


--
-- TOC entry 5533 (class 1259 OID 19622)
-- Name: sidx_ptir1_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_ptir1_geom ON assets.ptp_ptir1 USING gist (geom);


--
-- TOC entry 5536 (class 1259 OID 19634)
-- Name: sidx_ptir2_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_ptir2_geom ON assets.ptp_ptir2 USING gist (geom);


--
-- TOC entry 5539 (class 1259 OID 19646)
-- Name: sidx_ptir3_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_ptir3_geom ON assets.ptp_ptir3 USING gist (geom);


--
-- TOC entry 5416 (class 1259 OID 18814)
-- Name: sidx_ptp_aree_protette_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_ptp_aree_protette_geom ON assets.ptp_aree_protette USING gist (geom);


--
-- TOC entry 5446 (class 1259 OID 19009)
-- Name: sidx_ptp_dora_baltea_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_ptp_dora_baltea_geom ON assets.ptp_dora_baltea USING gist (geom);


--
-- TOC entry 5452 (class 1259 OID 19033)
-- Name: sidx_ptp_elementi_lineari_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_ptp_elementi_lineari_geom ON assets.ptp_elementi_lineari USING gist (geom);


--
-- TOC entry 5542 (class 1259 OID 19658)
-- Name: sidx_punti_reg_flussi_veic_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_punti_reg_flussi_veic_geom ON assets.ptp_punti_reg_flussi_veic USING gist (geom);


--
-- TOC entry 5545 (class 1259 OID 19672)
-- Name: sidx_rete_fluviale_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_rete_fluviale_geom ON assets.ptp_rete_fluviale USING gist (geom);


--
-- TOC entry 5548 (class 1259 OID 19686)
-- Name: sidx_rifugi_bivacchi_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_rifugi_bivacchi_geom ON assets.ptp_rifugi_bivacchi USING gist (geom);


--
-- TOC entry 5551 (class 1259 OID 19699)
-- Name: sidx_ripetitori_tv_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_ripetitori_tv_geom ON assets.ptp_ripetitori_tv USING gist (geom);


--
-- TOC entry 5554 (class 1259 OID 19711)
-- Name: sidx_riserve_txt_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_riserve_txt_geom ON assets.ptp_riserve_txt USING gist (geom);


--
-- TOC entry 5557 (class 1259 OID 19740)
-- Name: sidx_sa_aree_nat_alta_quota_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_sa_aree_nat_alta_quota_geom ON assets.ptp_sa_aree_nat_alta_quota USING gist (geom);


--
-- TOC entry 5560 (class 1259 OID 19761)
-- Name: sidx_sa_aree_naturali_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_sa_aree_naturali_geom ON assets.ptp_sa_aree_naturali USING gist (geom);


--
-- TOC entry 5563 (class 1259 OID 19826)
-- Name: sidx_sa_boschi_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_sa_boschi_geom ON assets.ptp_sa_boschi USING gist (geom);


--
-- TOC entry 5566 (class 1259 OID 19840)
-- Name: sidx_sa_fluviali_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_sa_fluviali_geom ON assets.ptp_sa_fluviali USING gist (geom);


--
-- TOC entry 5569 (class 1259 OID 19876)
-- Name: sidx_sa_insed_svil_integr_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_sa_insed_svil_integr_geom ON assets.ptp_sa_insed_svil_integr USING gist (geom);


--
-- TOC entry 5572 (class 1259 OID 19890)
-- Name: sidx_sa_insed_svil_resid_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_sa_insed_svil_resid_geom ON assets.ptp_sa_insed_svil_resid USING gist (geom);


--
-- TOC entry 5575 (class 1259 OID 19902)
-- Name: sidx_sa_insed_svil_trad_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_sa_insed_svil_trad_geom ON assets.ptp_sa_insed_svil_trad USING gist (geom);


--
-- TOC entry 5581 (class 1259 OID 19979)
-- Name: sidx_sa_pascoli_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_sa_pascoli_geom ON assets.ptp_sa_pascoli USING gist (geom);


--
-- TOC entry 5584 (class 1259 OID 19991)
-- Name: sidx_sa_urbani_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_sa_urbani_geom ON assets.ptp_sa_urbani USING gist (geom);


--
-- TOC entry 5587 (class 1259 OID 20003)
-- Name: sidx_servizi_txt_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_servizi_txt_geom ON assets.ptp_servizi_txt USING gist (geom);


--
-- TOC entry 5588 (class 1259 OID 20015)
-- Name: sidx_sistema_misto_urbano_fluviale_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_sistema_misto_urbano_fluviale_geom ON assets.ptp_sistema_misto_urbano_fluviale USING gist (geom);


--
-- TOC entry 5591 (class 1259 OID 20027)
-- Name: sidx_staz_ferrovia_esistenti_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_staz_ferrovia_esistenti_geom ON assets.ptp_staz_ferrovia_esistenti USING gist (geom);


--
-- TOC entry 5594 (class 1259 OID 20039)
-- Name: sidx_staz_ferrovia_progetto_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_staz_ferrovia_progetto_geom ON assets.ptp_staz_ferrovia_progetto USING gist (geom);


--
-- TOC entry 5597 (class 1259 OID 20052)
-- Name: sidx_staz_turistiche_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_staz_turistiche_geom ON assets.ptp_staz_turistiche USING gist (geom);


--
-- TOC entry 5600 (class 1259 OID 20064)
-- Name: sidx_strade_balconata_envers_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_strade_balconata_envers_geom ON assets.ptp_strade_balconata_envers USING gist (geom);


--
-- TOC entry 5603 (class 1259 OID 20076)
-- Name: sidx_strade_varianti_viabilita_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_strade_varianti_viabilita_geom ON assets.ptp_strade_varianti_viabilita USING gist (geom);


--
-- TOC entry 5606 (class 1259 OID 20088)
-- Name: sidx_strade_viabilita_princ_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_strade_viabilita_princ_geom ON assets.ptp_strade_viabilita_princ USING gist (geom);


--
-- TOC entry 5609 (class 1259 OID 20101)
-- Name: sidx_tour_escursionistici_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_tour_escursionistici_geom ON assets.ptp_tour_escursionistici USING gist (geom);


--
-- TOC entry 5612 (class 1259 OID 20113)
-- Name: sidx_trenino_cogne_pila_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_trenino_cogne_pila_geom ON assets.ptp_trenino_cogne_pila USING gist (geom);


--
-- TOC entry 5615 (class 1259 OID 20125)
-- Name: sidx_tutele_txt_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_tutele_txt_geom ON assets.ptp_tutele_txt USING gist (geom);


--
-- TOC entry 5618 (class 1259 OID 20138)
-- Name: sidx_villes_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_villes_geom ON assets.ptp_villes USING gist (geom);


--
-- TOC entry 5621 (class 1259 OID 20151)
-- Name: sidx_vinc_aree_archeologiche_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_vinc_aree_archeologiche_geom ON assets.ptp_vinc_aree_archeologiche USING gist (geom);


--
-- TOC entry 5624 (class 1259 OID 20197)
-- Name: sidx_vinc_aree_fiumi_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_vinc_aree_fiumi_geom ON assets.ptp_vinc_aree_fiumi USING gist (geom);


--
-- TOC entry 5627 (class 1259 OID 20230)
-- Name: sidx_vinc_aree_laghi_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_vinc_aree_laghi_geom ON assets.ptp_vinc_aree_laghi USING gist (geom);


--
-- TOC entry 5630 (class 1259 OID 20243)
-- Name: sidx_vinc_cdl_1600_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_vinc_cdl_1600_geom ON assets.ptp_vinc_cdl_1600 USING gist (geom);


--
-- TOC entry 5633 (class 1259 OID 20256)
-- Name: sidx_vinc_ghiacciai_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_vinc_ghiacciai_geom ON assets.ptp_vinc_ghiacciai USING gist (geom);


--
-- TOC entry 5636 (class 1259 OID 20270)
-- Name: sidx_vinc_idrogeologico_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_vinc_idrogeologico_geom ON assets.ptp_vinc_idrogeologico USING gist (geom);


--
-- TOC entry 5639 (class 1259 OID 20297)
-- Name: sidx_vinc_legge_1497_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_vinc_legge_1497_geom ON assets.ptp_vinc_legge_1497 USING gist (geom);


--
-- TOC entry 5642 (class 1259 OID 20314)
-- Name: sidx_vinc_legge_castagno_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_vinc_legge_castagno_geom ON assets.ptp_vinc_legge_castagno USING gist (geom);


--
-- TOC entry 5645 (class 1259 OID 20329)
-- Name: sidx_vinc_parchi_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_vinc_parchi_geom ON assets.ptp_vinc_parchi USING gist (geom);


--
-- TOC entry 5648 (class 1259 OID 20341)
-- Name: sidx_vinc_riserve_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_vinc_riserve_geom ON assets.ptp_vinc_riserve USING gist (geom);


--
-- TOC entry 5651 (class 1259 OID 20353)
-- Name: sidx_vnc_archeo_txt_geom; Type: INDEX; Schema: assets; Owner: postgres
--

CREATE INDEX sidx_vnc_archeo_txt_geom ON assets.ptp_vnc_archeo_txt USING gist (geom);


-- Completed on 2022-08-01 15:39:33 CEST

--
-- PostgreSQL database dump complete
--

