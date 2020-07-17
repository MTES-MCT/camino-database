PGDMP     ;                    x           camino_public    12.3    12.3 �   7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            :           1262    665658    camino_public    DATABASE     k   CREATE DATABASE camino_public WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE camino_public;
                postgres    false            �            1259    664611    a__etapes_types    TABLE     �   CREATE TABLE public.a__etapes_types (
    etape_type_id character varying(3) NOT NULL,
    public_lecture boolean,
    entreprises_lecture boolean
);
 #   DROP TABLE public.a__etapes_types;
       public         heap    postgres    false            �            1259    664614     a__titres_types__administrations    TABLE     �   CREATE TABLE public.a__titres_types__administrations (
    administration_id character varying(255) NOT NULL,
    titre_type_id character varying(255) NOT NULL,
    gestionnaire boolean NOT NULL,
    associee boolean NOT NULL
);
 4   DROP TABLE public.a__titres_types__administrations;
       public         heap    postgres    false            �            1259    664620    a__titres_types__titres_statuts    TABLE     �   CREATE TABLE public.a__titres_types__titres_statuts (
    titre_type_id character varying(255) NOT NULL,
    titre_statut_id character varying(255) NOT NULL,
    public_lecture boolean NOT NULL
);
 3   DROP TABLE public.a__titres_types__titres_statuts;
       public         heap    postgres    false            �            1259    664626    activites_statuts    TABLE     �   CREATE TABLE public.activites_statuts (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    couleur character varying(16) NOT NULL
);
 %   DROP TABLE public.activites_statuts;
       public         heap    postgres    false            �            1259    664629    activites_types    TABLE     *  CREATE TABLE public.activites_types (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    sections jsonb[] NOT NULL,
    frequence_id character varying(3) NOT NULL,
    date_debut character varying(255) NOT NULL,
    delai_mois integer,
    ordre integer NOT NULL
);
 #   DROP TABLE public.activites_types;
       public         heap    postgres    false            �            1259    664635     activites_types__administrations    TABLE     �   CREATE TABLE public.activites_types__administrations (
    activite_type_id character varying(3) NOT NULL,
    administration_id character varying(64) NOT NULL
);
 4   DROP TABLE public.activites_types__administrations;
       public         heap    postgres    false            �            1259    664638     activites_types__documents_types    TABLE     �   CREATE TABLE public.activites_types__documents_types (
    activite_type_id character varying(3) NOT NULL,
    document_type_id character varying(3) NOT NULL
);
 4   DROP TABLE public.activites_types__documents_types;
       public         heap    postgres    false            �            1259    664641    activites_types__pays    TABLE     �   CREATE TABLE public.activites_types__pays (
    pays_id character varying(3) NOT NULL,
    activite_type_id character varying(3) NOT NULL
);
 )   DROP TABLE public.activites_types__pays;
       public         heap    postgres    false            �            1259    664644    administrations    TABLE     c  CREATE TABLE public.administrations (
    id character varying(64) NOT NULL,
    type_id character varying(255) NOT NULL,
    nom character varying(255) NOT NULL,
    abreviation character varying(255),
    service character varying(255),
    url character varying(1024),
    email character varying(255),
    telephone character varying(255),
    adresse1 character varying(255),
    adresse2 character varying(255),
    code_postal character varying(255),
    commune character varying(255),
    cedex character varying(255),
    departement_id character varying(255),
    region_id character varying(255)
);
 #   DROP TABLE public.administrations;
       public         heap    postgres    false            �            1259    664650    administrations_types    TABLE     �   CREATE TABLE public.administrations_types (
    id character varying(64) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer
);
 )   DROP TABLE public.administrations_types;
       public         heap    postgres    false            �            1259    664653    annees    TABLE     �   CREATE TABLE public.annees (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    frequence_id character varying(3)
);
    DROP TABLE public.annees;
       public         heap    postgres    false            �            1259    664656    communes    TABLE     �   CREATE TABLE public.communes (
    id character varying(5) NOT NULL,
    nom character varying(255) NOT NULL,
    departement_id character varying(3) NOT NULL,
    surface integer
);
    DROP TABLE public.communes;
       public         heap    postgres    false            �            1259    664659    definitions    TABLE     �   CREATE TABLE public.definitions (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    "table" character varying(255),
    ordre integer NOT NULL,
    description text
);
    DROP TABLE public.definitions;
       public         heap    postgres    false            �            1259    664665    demarches_statuts    TABLE     �   CREATE TABLE public.demarches_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    description text,
    couleur character varying(16) NOT NULL,
    ordre integer NOT NULL
);
 %   DROP TABLE public.demarches_statuts;
       public         heap    postgres    false            �            1259    664671    demarches_types    TABLE     :  CREATE TABLE public.demarches_types (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    description text,
    ordre integer,
    duree boolean,
    points boolean,
    substances boolean,
    titulaires boolean,
    renouvelable boolean,
    exception boolean,
    auto boolean
);
 #   DROP TABLE public.demarches_types;
       public         heap    postgres    false            �            1259    664677    departements    TABLE     �   CREATE TABLE public.departements (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    region_id character varying(2) NOT NULL,
    cheflieu_id character varying(5)
);
     DROP TABLE public.departements;
       public         heap    postgres    false            �            1259    664680    devises    TABLE     �   CREATE TABLE public.devises (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer
);
    DROP TABLE public.devises;
       public         heap    postgres    false            �            1259    664683 	   documents    TABLE     F  CREATE TABLE public.documents (
    id character varying(255) NOT NULL,
    type_id character varying(3) NOT NULL,
    date character varying(10) NOT NULL,
    entreprise_id character varying(64),
    titre_etape_id character varying(128),
    description character varying(1024),
    titre_activite_id character varying(128),
    fichier boolean,
    fichier_type_id character varying(3),
    url character varying(1024),
    uri character varying(1024),
    jorf character varying(32),
    nor character varying(32),
    public_lecture boolean,
    entreprises_lecture boolean
);
    DROP TABLE public.documents;
       public         heap    postgres    false            �            1259    664689    documents_types    TABLE     �   CREATE TABLE public.documents_types (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    repertoire character varying(255) NOT NULL
);
 #   DROP TABLE public.documents_types;
       public         heap    postgres    false            �            1259    664695    domaines    TABLE     �   CREATE TABLE public.domaines (
    id character varying(1) NOT NULL,
    nom character varying(255) NOT NULL,
    description text,
    ordre integer NOT NULL
);
    DROP TABLE public.domaines;
       public         heap    postgres    false            �            1259    664701    entreprises    TABLE     ]  CREATE TABLE public.entreprises (
    id character varying(64) NOT NULL,
    nom character varying(255) NOT NULL,
    pays_id character varying(255),
    legal_siren character varying(255),
    legal_etranger character varying(255),
    legal_forme character varying(255),
    categorie character varying(255),
    date_creation character varying(10),
    adresse character varying(255),
    code_postal character varying(255),
    commune character varying(255),
    cedex character varying(255),
    url character varying(1024),
    email character varying(255),
    telephone character varying(255)
);
    DROP TABLE public.entreprises;
       public         heap    postgres    false            �            1259    664707    entreprises_etablissements    TABLE       CREATE TABLE public.entreprises_etablissements (
    id character varying(64) NOT NULL,
    entreprise_id character varying(64) NOT NULL,
    nom character varying(255),
    legal_siret character varying(255),
    date_debut character varying(10),
    date_fin character varying(10)
);
 .   DROP TABLE public.entreprises_etablissements;
       public         heap    postgres    false            �            1259    664713    etapes_statuts    TABLE     �   CREATE TABLE public.etapes_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    description text,
    couleur character varying(16) NOT NULL,
    ordre integer NOT NULL
);
 "   DROP TABLE public.etapes_statuts;
       public         heap    postgres    false            �            1259    664719    etapes_types    TABLE     �  CREATE TABLE public.etapes_types (
    id character varying(3) NOT NULL,
    nom character varying(128),
    description text,
    ordre integer,
    fondamentale boolean,
    "unique" boolean,
    acceptation_auto boolean,
    legal_ref character varying(255),
    legal_lien character varying(255),
    date_debut character varying(10),
    date_fin character varying(10),
    sections jsonb[]
);
     DROP TABLE public.etapes_types;
       public         heap    postgres    false            �            1259    664725    etapes_types__etapes_statuts    TABLE     �   CREATE TABLE public.etapes_types__etapes_statuts (
    etape_type_id character varying(7) NOT NULL,
    etape_statut_id character varying(3) NOT NULL,
    ordre integer
);
 0   DROP TABLE public.etapes_types__etapes_statuts;
       public         heap    postgres    false            �            1259    664728 
   frequences    TABLE     �   CREATE TABLE public.frequences (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    periodes_nom character varying(255)
);
    DROP TABLE public.frequences;
       public         heap    postgres    false            �            1259    664734    geo_systemes    TABLE       CREATE TABLE public.geo_systemes (
    id character varying(5) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer,
    unite_id character varying(3) NOT NULL,
    zone character varying(255),
    definition_proj4 character varying(255)
);
     DROP TABLE public.geo_systemes;
       public         heap    postgres    false            �            1259    664740    globales    TABLE     f   CREATE TABLE public.globales (
    id character varying(255) NOT NULL,
    valeur boolean NOT NULL
);
    DROP TABLE public.globales;
       public         heap    postgres    false            �            1259    664743    knex_migrations    TABLE     �   CREATE TABLE public.knex_migrations (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);
 #   DROP TABLE public.knex_migrations;
       public         heap    postgres    false            �            1259    664746    knex_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.knex_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.knex_migrations_id_seq;
       public          postgres    false    230            ;           0    0    knex_migrations_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.knex_migrations_id_seq OWNED BY public.knex_migrations.id;
          public          postgres    false    231            �            1259    664748    knex_migrations_lock    TABLE     `   CREATE TABLE public.knex_migrations_lock (
    index integer NOT NULL,
    is_locked integer
);
 (   DROP TABLE public.knex_migrations_lock;
       public         heap    postgres    false            �            1259    664751    knex_migrations_lock_index_seq    SEQUENCE     �   CREATE SEQUENCE public.knex_migrations_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.knex_migrations_lock_index_seq;
       public          postgres    false    232            <           0    0    knex_migrations_lock_index_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNED BY public.knex_migrations_lock.index;
          public          postgres    false    233            �            1259    664753    mois    TABLE     �   CREATE TABLE public.mois (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    frequence_id character varying(3),
    trimestre_id integer
);
    DROP TABLE public.mois;
       public         heap    postgres    false            �            1259    664756    pays    TABLE     �   CREATE TABLE public.pays (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    timezone character varying(255)
);
    DROP TABLE public.pays;
       public         heap    postgres    false            �            1259    664762    permissions    TABLE     �   CREATE TABLE public.permissions (
    id character varying(12) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer
);
    DROP TABLE public.permissions;
       public         heap    postgres    false            �            1259    664765    phases_statuts    TABLE     �   CREATE TABLE public.phases_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    couleur character varying(16) NOT NULL
);
 "   DROP TABLE public.phases_statuts;
       public         heap    postgres    false            �            1259    664768 .   r__titres_types__etapes_types__administrations    TABLE     _  CREATE TABLE public.r__titres_types__etapes_types__administrations (
    administration_id character varying(255) NOT NULL,
    titre_type_id character varying(255) NOT NULL,
    etape_type_id character varying(255) NOT NULL,
    lecture_interdit boolean NOT NULL,
    creation_interdit boolean NOT NULL,
    modification_interdit boolean NOT NULL
);
 B   DROP TABLE public.r__titres_types__etapes_types__administrations;
       public         heap    postgres    false            �            1259    664774 0   r__titres_types__titres_statuts__administrations    TABLE     �  CREATE TABLE public.r__titres_types__titres_statuts__administrations (
    administration_id character varying(255) NOT NULL,
    titre_type_id character varying(255) NOT NULL,
    titre_statut_id character varying(255) NOT NULL,
    titres_modification_interdit boolean NOT NULL,
    demarches_modification_interdit boolean NOT NULL,
    etapes_modification_interdit boolean NOT NULL
);
 D   DROP TABLE public.r__titres_types__titres_statuts__administrations;
       public         heap    postgres    false            �            1259    664780    references_types    TABLE     x   CREATE TABLE public.references_types (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL
);
 $   DROP TABLE public.references_types;
       public         heap    postgres    false            �            1259    664783    regions    TABLE     �   CREATE TABLE public.regions (
    id character varying(2) NOT NULL,
    nom character varying(255),
    pays_id character varying(3) NOT NULL,
    cheflieu_id character varying(5)
);
    DROP TABLE public.regions;
       public         heap    postgres    false            �            1259    664786 
   substances    TABLE     �   CREATE TABLE public.substances (
    id character varying(4) NOT NULL,
    nom character varying(255) NOT NULL,
    symbole character varying(255),
    gerep integer,
    description character varying(2048)
);
    DROP TABLE public.substances;
       public         heap    postgres    false            �            1259    664792    substances__substances_legales    TABLE     �   CREATE TABLE public.substances__substances_legales (
    substance_id character varying(255) NOT NULL,
    substance_legale_id character varying(255) NOT NULL
);
 2   DROP TABLE public.substances__substances_legales;
       public         heap    postgres    false            �            1259    664798    substances_legales    TABLE     �   CREATE TABLE public.substances_legales (
    id character varying(255) NOT NULL,
    nom character varying(255) NOT NULL,
    domaine_id character varying(1) NOT NULL,
    description text,
    substance_legale_code_id character varying(255) NOT NULL
);
 &   DROP TABLE public.substances_legales;
       public         heap    postgres    false            �            1259    664804    substances_legales_codes    TABLE     �   CREATE TABLE public.substances_legales_codes (
    id character varying(255) NOT NULL,
    nom character varying(255),
    code character varying(255) NOT NULL,
    description text,
    lien character varying(255) NOT NULL,
    ordre integer NOT NULL
);
 ,   DROP TABLE public.substances_legales_codes;
       public         heap    postgres    false            �            1259    664810    titres    TABLE     �  CREATE TABLE public.titres (
    id character varying(128) NOT NULL,
    nom character varying(255) NOT NULL,
    type_id character varying(3) NOT NULL,
    domaine_id character varying(1) NOT NULL,
    statut_id character varying(3) DEFAULT 'ind'::character varying NOT NULL,
    date_debut character varying(10),
    date_fin character varying(10),
    date_demande character varying(10),
    public_lecture boolean DEFAULT false,
    entreprises_lecture boolean DEFAULT false,
    points_titre_etape_id character varying(128),
    titulaires_titre_etape_id character varying(128),
    amodiataires_titre_etape_id character varying(128),
    administrations_titre_etape_id character varying(128),
    surface_titre_etape_id character varying(128),
    substances_titre_etape_id character varying(128),
    communes_titre_etape_id character varying(128),
    doublon_titre_id character varying(128),
    props_titre_etapes_ids jsonb
);
    DROP TABLE public.titres;
       public         heap    postgres    false            �            1259    664819    titres_activites    TABLE     �  CREATE TABLE public.titres_activites (
    id character varying(255) NOT NULL,
    titre_id character varying(128),
    utilisateur_id character varying(128),
    date character varying(10),
    date_saisie character varying(10),
    contenu jsonb,
    type_id character varying(3) NOT NULL,
    statut_id character varying(3) NOT NULL,
    annee integer,
    frequence_periode_id integer
);
 $   DROP TABLE public.titres_activites;
       public         heap    postgres    false            �            1259    664825 $   titres_administrations_gestionnaires    TABLE     �   CREATE TABLE public.titres_administrations_gestionnaires (
    titre_id character varying(128) NOT NULL,
    administration_id character varying(64) NOT NULL,
    associee boolean
);
 8   DROP TABLE public.titres_administrations_gestionnaires;
       public         heap    postgres    false            �            1259    664828    titres_administrations_locales    TABLE     �   CREATE TABLE public.titres_administrations_locales (
    titre_etape_id character varying(128) NOT NULL,
    administration_id character varying(64) NOT NULL,
    associee boolean,
    coordinateur boolean
);
 2   DROP TABLE public.titres_administrations_locales;
       public         heap    postgres    false            �            1259    664831    titres_amodiataires    TABLE     �   CREATE TABLE public.titres_amodiataires (
    titre_etape_id character varying(128) NOT NULL,
    entreprise_id character varying(64) NOT NULL,
    operateur boolean
);
 '   DROP TABLE public.titres_amodiataires;
       public         heap    postgres    false            �            1259    664834    titres_communes    TABLE     �   CREATE TABLE public.titres_communes (
    titre_etape_id character varying(128) NOT NULL,
    commune_id character varying(8) NOT NULL,
    surface integer
);
 #   DROP TABLE public.titres_communes;
       public         heap    postgres    false            �            1259    664837    titres_demarches    TABLE     n  CREATE TABLE public.titres_demarches (
    id character varying(128) NOT NULL,
    titre_id character varying(128) NOT NULL,
    type_id character varying(3) NOT NULL,
    statut_id character varying(3) DEFAULT 'ind'::character varying NOT NULL,
    public_lecture boolean DEFAULT false,
    entreprises_lecture boolean DEFAULT false,
    ordre integer DEFAULT 0
);
 $   DROP TABLE public.titres_demarches;
       public         heap    postgres    false            �            1259    664844    titres_demarches_liens    TABLE     �   CREATE TABLE public.titres_demarches_liens (
    enfant_titre_demarche_id character varying(128) NOT NULL,
    parent_titre_demarche_id character varying(128) NOT NULL
);
 *   DROP TABLE public.titres_demarches_liens;
       public         heap    postgres    false            �            1259    664847    titres_etapes    TABLE     �  CREATE TABLE public.titres_etapes (
    id character varying(128) NOT NULL,
    titre_demarche_id character varying(128) NOT NULL,
    type_id character varying(3) NOT NULL,
    statut_id character varying(3) NOT NULL,
    ordre integer,
    date character varying(10) NOT NULL,
    date_debut character varying(10),
    date_fin character varying(10),
    duree integer,
    surface real,
    source_indisponible boolean,
    contenu jsonb
);
 !   DROP TABLE public.titres_etapes;
       public         heap    postgres    false            �            1259    664853    titres_etapes_justificatifs    TABLE     �   CREATE TABLE public.titres_etapes_justificatifs (
    titre_etape_id character varying(128) NOT NULL,
    document_id character varying(255) NOT NULL
);
 /   DROP TABLE public.titres_etapes_justificatifs;
       public         heap    postgres    false                        1259    664856    titres_incertitudes    TABLE     C  CREATE TABLE public.titres_incertitudes (
    titre_etape_id character varying(128) NOT NULL,
    date boolean,
    date_debut boolean,
    date_fin boolean,
    duree boolean,
    surface boolean,
    points boolean,
    substances boolean,
    titulaires boolean,
    amodiataires boolean,
    administrations boolean
);
 '   DROP TABLE public.titres_incertitudes;
       public         heap    postgres    false                       1259    664859    titres_phases    TABLE     �   CREATE TABLE public.titres_phases (
    titre_demarche_id character varying(128) NOT NULL,
    statut_id character varying(3) NOT NULL,
    date_debut character varying(10),
    date_fin character varying(10)
);
 !   DROP TABLE public.titres_phases;
       public         heap    postgres    false                       1259    664862    titres_points    TABLE     o  CREATE TABLE public.titres_points (
    id character varying(255) NOT NULL,
    titre_etape_id character varying(128) NOT NULL,
    coordonnees point NOT NULL,
    groupe integer NOT NULL,
    contour integer NOT NULL,
    point integer NOT NULL,
    nom character varying(255),
    description text,
    securite boolean,
    subsidiaire boolean,
    lot integer
);
 !   DROP TABLE public.titres_points;
       public         heap    postgres    false                       1259    664868    titres_points_references    TABLE     �   CREATE TABLE public.titres_points_references (
    id character varying(255) NOT NULL,
    titre_point_id character varying(255),
    geo_systeme_id character varying(5) NOT NULL,
    coordonnees point NOT NULL,
    opposable boolean
);
 ,   DROP TABLE public.titres_points_references;
       public         heap    postgres    false                       1259    664874    titres_references    TABLE     �   CREATE TABLE public.titres_references (
    titre_id character varying(128) NOT NULL,
    type_id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL
);
 %   DROP TABLE public.titres_references;
       public         heap    postgres    false                       1259    664877    titres_statuts    TABLE     �   CREATE TABLE public.titres_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    description text,
    couleur character varying(16) NOT NULL,
    ordre integer
);
 "   DROP TABLE public.titres_statuts;
       public         heap    postgres    false                       1259    664883    titres_substances    TABLE     �   CREATE TABLE public.titres_substances (
    titre_etape_id character varying(128) NOT NULL,
    substance_id character varying(4) NOT NULL,
    connexe boolean,
    ordre integer
);
 %   DROP TABLE public.titres_substances;
       public         heap    postgres    false                       1259    664886    titres_titulaires    TABLE     �   CREATE TABLE public.titres_titulaires (
    titre_etape_id character varying(128) NOT NULL,
    entreprise_id character varying(64) NOT NULL,
    operateur boolean
);
 %   DROP TABLE public.titres_titulaires;
       public         heap    postgres    false                       1259    664889    titres_types    TABLE     �   CREATE TABLE public.titres_types (
    id character varying(3) NOT NULL,
    domaine_id character varying(1) NOT NULL,
    type_id character varying(3) NOT NULL,
    props_etapes_types jsonb[],
    archive boolean
);
     DROP TABLE public.titres_types;
       public         heap    postgres    false            	           1259    664895    titres_types__activites_types    TABLE     �   CREATE TABLE public.titres_types__activites_types (
    titre_type_id character varying(3) NOT NULL,
    activite_type_id character varying(3) NOT NULL
);
 1   DROP TABLE public.titres_types__activites_types;
       public         heap    postgres    false            
           1259    664898    titres_types__demarches_types    TABLE     �  CREATE TABLE public.titres_types__demarches_types (
    titre_type_id character varying(3) NOT NULL,
    demarche_type_id character varying(3) NOT NULL,
    duree_max integer,
    acceptation_implicite boolean,
    delai_implicite character varying(255),
    delai_recours character varying(255),
    legal_ref character varying(255),
    legal_lien character varying(255),
    date_debut character varying(10),
    date_fin character varying(10)
);
 1   DROP TABLE public.titres_types__demarches_types;
       public         heap    postgres    false                       1259    664904 +   titres_types__demarches_types__etapes_types    TABLE       CREATE TABLE public.titres_types__demarches_types__etapes_types (
    titre_type_id character varying(3) NOT NULL,
    ordre integer,
    demarche_type_id character varying(7) NOT NULL,
    etape_type_id character varying(3) NOT NULL,
    sections jsonb[]
);
 ?   DROP TABLE public.titres_types__demarches_types__etapes_types;
       public         heap    postgres    false                       1259    664910    titres_types_types    TABLE     �   CREATE TABLE public.titres_types_types (
    id character varying(2) NOT NULL,
    nom character varying(255) NOT NULL,
    description text,
    exploitation boolean,
    ordre integer NOT NULL
);
 &   DROP TABLE public.titres_types_types;
       public         heap    postgres    false                       1259    664916 
   trimestres    TABLE     �   CREATE TABLE public.trimestres (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    frequence_id character varying(3)
);
    DROP TABLE public.trimestres;
       public         heap    postgres    false                       1259    664919    unites    TABLE     �   CREATE TABLE public.unites (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    symbole character varying(255) NOT NULL
);
    DROP TABLE public.unites;
       public         heap    postgres    false                       1259    664925    utilisateurs    TABLE     �  CREATE TABLE public.utilisateurs (
    id character varying(255) NOT NULL,
    email character varying(255),
    mot_de_passe character varying(255) NOT NULL,
    nom character varying(255),
    prenom character varying(255),
    telephone_fixe character varying(255),
    telephone_mobile character varying(255),
    permission_id character varying(12) NOT NULL,
    preferences json
);
     DROP TABLE public.utilisateurs;
       public         heap    postgres    false                       1259    664931    utilisateurs__administrations    TABLE     �   CREATE TABLE public.utilisateurs__administrations (
    utilisateur_id character varying(64),
    administration_id character varying(64)
);
 1   DROP TABLE public.utilisateurs__administrations;
       public         heap    postgres    false                       1259    664934    utilisateurs__entreprises    TABLE     �   CREATE TABLE public.utilisateurs__entreprises (
    utilisateur_id character varying(64),
    entreprise_id character varying(64)
);
 -   DROP TABLE public.utilisateurs__entreprises;
       public         heap    postgres    false            *           2604    664937    knex_migrations id    DEFAULT     x   ALTER TABLE ONLY public.knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.knex_migrations_id_seq'::regclass);
 A   ALTER TABLE public.knex_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            +           2604    664938    knex_migrations_lock index    DEFAULT     �   ALTER TABLE ONLY public.knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.knex_migrations_lock_index_seq'::regclass);
 I   ALTER TABLE public.knex_migrations_lock ALTER COLUMN index DROP DEFAULT;
       public          postgres    false    233    232            �          0    664611    a__etapes_types 
   TABLE DATA           ]   COPY public.a__etapes_types (etape_type_id, public_lecture, entreprises_lecture) FROM stdin;
    public          postgres    false    202   �T      �          0    664614     a__titres_types__administrations 
   TABLE DATA           t   COPY public.a__titres_types__administrations (administration_id, titre_type_id, gestionnaire, associee) FROM stdin;
    public          postgres    false    203   �U      �          0    664620    a__titres_types__titres_statuts 
   TABLE DATA           i   COPY public.a__titres_types__titres_statuts (titre_type_id, titre_statut_id, public_lecture) FROM stdin;
    public          postgres    false    204   �V      �          0    664626    activites_statuts 
   TABLE DATA           =   COPY public.activites_statuts (id, nom, couleur) FROM stdin;
    public          postgres    false    205   X      �          0    664629    activites_types 
   TABLE DATA           i   COPY public.activites_types (id, nom, sections, frequence_id, date_debut, delai_mois, ordre) FROM stdin;
    public          postgres    false    206   oX      �          0    664635     activites_types__administrations 
   TABLE DATA           _   COPY public.activites_types__administrations (activite_type_id, administration_id) FROM stdin;
    public          postgres    false    207   Nl      �          0    664638     activites_types__documents_types 
   TABLE DATA           ^   COPY public.activites_types__documents_types (activite_type_id, document_type_id) FROM stdin;
    public          postgres    false    208   �l      �          0    664641    activites_types__pays 
   TABLE DATA           J   COPY public.activites_types__pays (pays_id, activite_type_id) FROM stdin;
    public          postgres    false    209   �l      �          0    664644    administrations 
   TABLE DATA           �   COPY public.administrations (id, type_id, nom, abreviation, service, url, email, telephone, adresse1, adresse2, code_postal, commune, cedex, departement_id, region_id) FROM stdin;
    public          postgres    false    210   $m      �          0    664650    administrations_types 
   TABLE DATA           ?   COPY public.administrations_types (id, nom, ordre) FROM stdin;
    public          postgres    false    211   u      �          0    664653    annees 
   TABLE DATA           7   COPY public.annees (id, nom, frequence_id) FROM stdin;
    public          postgres    false    212   �u      �          0    664656    communes 
   TABLE DATA           D   COPY public.communes (id, nom, departement_id, surface) FROM stdin;
    public          postgres    false    213   �u      �          0    664659    definitions 
   TABLE DATA           Q   COPY public.definitions (id, nom, slug, "table", ordre, description) FROM stdin;
    public          postgres    false    214   P{      �          0    664665    demarches_statuts 
   TABLE DATA           Q   COPY public.demarches_statuts (id, nom, description, couleur, ordre) FROM stdin;
    public          postgres    false    215   �      �          0    664671    demarches_types 
   TABLE DATA           �   COPY public.demarches_types (id, nom, description, ordre, duree, points, substances, titulaires, renouvelable, exception, auto) FROM stdin;
    public          postgres    false    216   O�      �          0    664677    departements 
   TABLE DATA           G   COPY public.departements (id, nom, region_id, cheflieu_id) FROM stdin;
    public          postgres    false    217   A�      �          0    664680    devises 
   TABLE DATA           1   COPY public.devises (id, nom, ordre) FROM stdin;
    public          postgres    false    218   -�      �          0    664683 	   documents 
   TABLE DATA           �   COPY public.documents (id, type_id, date, entreprise_id, titre_etape_id, description, titre_activite_id, fichier, fichier_type_id, url, uri, jorf, nor, public_lecture, entreprises_lecture) FROM stdin;
    public          postgres    false    219   t�      �          0    664689    documents_types 
   TABLE DATA           >   COPY public.documents_types (id, nom, repertoire) FROM stdin;
    public          postgres    false    220   �                 0    664695    domaines 
   TABLE DATA           ?   COPY public.domaines (id, nom, description, ordre) FROM stdin;
    public          postgres    false    221   (�                0    664701    entreprises 
   TABLE DATA           �   COPY public.entreprises (id, nom, pays_id, legal_siren, legal_etranger, legal_forme, categorie, date_creation, adresse, code_postal, commune, cedex, url, email, telephone) FROM stdin;
    public          postgres    false    222   ��                0    664707    entreprises_etablissements 
   TABLE DATA           o   COPY public.entreprises_etablissements (id, entreprise_id, nom, legal_siret, date_debut, date_fin) FROM stdin;
    public          postgres    false    223   +�                0    664713    etapes_statuts 
   TABLE DATA           N   COPY public.etapes_statuts (id, nom, description, couleur, ordre) FROM stdin;
    public          postgres    false    224   ��                0    664719    etapes_types 
   TABLE DATA           �   COPY public.etapes_types (id, nom, description, ordre, fondamentale, "unique", acceptation_auto, legal_ref, legal_lien, date_debut, date_fin, sections) FROM stdin;
    public          postgres    false    225   |�                0    664725    etapes_types__etapes_statuts 
   TABLE DATA           ]   COPY public.etapes_types__etapes_statuts (etape_type_id, etape_statut_id, ordre) FROM stdin;
    public          postgres    false    226   ��                0    664728 
   frequences 
   TABLE DATA           ;   COPY public.frequences (id, nom, periodes_nom) FROM stdin;
    public          postgres    false    227   ��                0    664734    geo_systemes 
   TABLE DATA           X   COPY public.geo_systemes (id, nom, ordre, unite_id, zone, definition_proj4) FROM stdin;
    public          postgres    false    228   ��                0    664740    globales 
   TABLE DATA           .   COPY public.globales (id, valeur) FROM stdin;
    public          postgres    false    229   �      	          0    664743    knex_migrations 
   TABLE DATA           J   COPY public.knex_migrations (id, name, batch, migration_time) FROM stdin;
    public          postgres    false    230   .�                0    664748    knex_migrations_lock 
   TABLE DATA           @   COPY public.knex_migrations_lock (index, is_locked) FROM stdin;
    public          postgres    false    232   ��                0    664753    mois 
   TABLE DATA           C   COPY public.mois (id, nom, frequence_id, trimestre_id) FROM stdin;
    public          postgres    false    234   �                0    664756    pays 
   TABLE DATA           1   COPY public.pays (id, nom, timezone) FROM stdin;
    public          postgres    false    235   ��                0    664762    permissions 
   TABLE DATA           5   COPY public.permissions (id, nom, ordre) FROM stdin;
    public          postgres    false    236   ��                0    664765    phases_statuts 
   TABLE DATA           :   COPY public.phases_statuts (id, nom, couleur) FROM stdin;
    public          postgres    false    237   6�                0    664768 .   r__titres_types__etapes_types__administrations 
   TABLE DATA           �   COPY public.r__titres_types__etapes_types__administrations (administration_id, titre_type_id, etape_type_id, lecture_interdit, creation_interdit, modification_interdit) FROM stdin;
    public          postgres    false    238   v�                0    664774 0   r__titres_types__titres_statuts__administrations 
   TABLE DATA           �   COPY public.r__titres_types__titres_statuts__administrations (administration_id, titre_type_id, titre_statut_id, titres_modification_interdit, demarches_modification_interdit, etapes_modification_interdit) FROM stdin;
    public          postgres    false    239   Q�                0    664780    references_types 
   TABLE DATA           3   COPY public.references_types (id, nom) FROM stdin;
    public          postgres    false    240   ��                0    664783    regions 
   TABLE DATA           @   COPY public.regions (id, nom, pays_id, cheflieu_id) FROM stdin;
    public          postgres    false    241   �                0    664786 
   substances 
   TABLE DATA           J   COPY public.substances (id, nom, symbole, gerep, description) FROM stdin;
    public          postgres    false    242   z�                0    664792    substances__substances_legales 
   TABLE DATA           [   COPY public.substances__substances_legales (substance_id, substance_legale_id) FROM stdin;
    public          postgres    false    243   }�                0    664798    substances_legales 
   TABLE DATA           h   COPY public.substances_legales (id, nom, domaine_id, description, substance_legale_code_id) FROM stdin;
    public          postgres    false    244   �                0    664804    substances_legales_codes 
   TABLE DATA           [   COPY public.substances_legales_codes (id, nom, code, description, lien, ordre) FROM stdin;
    public          postgres    false    245   ��                0    664810    titres 
   TABLE DATA           w  COPY public.titres (id, nom, type_id, domaine_id, statut_id, date_debut, date_fin, date_demande, public_lecture, entreprises_lecture, points_titre_etape_id, titulaires_titre_etape_id, amodiataires_titre_etape_id, administrations_titre_etape_id, surface_titre_etape_id, substances_titre_etape_id, communes_titre_etape_id, doublon_titre_id, props_titre_etapes_ids) FROM stdin;
    public          postgres    false    246   d�                0    664819    titres_activites 
   TABLE DATA           �   COPY public.titres_activites (id, titre_id, utilisateur_id, date, date_saisie, contenu, type_id, statut_id, annee, frequence_periode_id) FROM stdin;
    public          postgres    false    247   W�                0    664825 $   titres_administrations_gestionnaires 
   TABLE DATA           e   COPY public.titres_administrations_gestionnaires (titre_id, administration_id, associee) FROM stdin;
    public          postgres    false    248   t�                0    664828    titres_administrations_locales 
   TABLE DATA           s   COPY public.titres_administrations_locales (titre_etape_id, administration_id, associee, coordinateur) FROM stdin;
    public          postgres    false    249   ��                0    664831    titres_amodiataires 
   TABLE DATA           W   COPY public.titres_amodiataires (titre_etape_id, entreprise_id, operateur) FROM stdin;
    public          postgres    false    250   ��                0    664834    titres_communes 
   TABLE DATA           N   COPY public.titres_communes (titre_etape_id, commune_id, surface) FROM stdin;
    public          postgres    false    251   ��                0    664837    titres_demarches 
   TABLE DATA           x   COPY public.titres_demarches (id, titre_id, type_id, statut_id, public_lecture, entreprises_lecture, ordre) FROM stdin;
    public          postgres    false    252   ��                 0    664844    titres_demarches_liens 
   TABLE DATA           d   COPY public.titres_demarches_liens (enfant_titre_demarche_id, parent_titre_demarche_id) FROM stdin;
    public          postgres    false    253   ��      !          0    664847    titres_etapes 
   TABLE DATA           �   COPY public.titres_etapes (id, titre_demarche_id, type_id, statut_id, ordre, date, date_debut, date_fin, duree, surface, source_indisponible, contenu) FROM stdin;
    public          postgres    false    254   ��      "          0    664853    titres_etapes_justificatifs 
   TABLE DATA           R   COPY public.titres_etapes_justificatifs (titre_etape_id, document_id) FROM stdin;
    public          postgres    false    255   �      #          0    664856    titres_incertitudes 
   TABLE DATA           �   COPY public.titres_incertitudes (titre_etape_id, date, date_debut, date_fin, duree, surface, points, substances, titulaires, amodiataires, administrations) FROM stdin;
    public          postgres    false    256   "�      $          0    664859    titres_phases 
   TABLE DATA           [   COPY public.titres_phases (titre_demarche_id, statut_id, date_debut, date_fin) FROM stdin;
    public          postgres    false    257   ��      %          0    664862    titres_points 
   TABLE DATA           �   COPY public.titres_points (id, titre_etape_id, coordonnees, groupe, contour, point, nom, description, securite, subsidiaire, lot) FROM stdin;
    public          postgres    false    258   y�      &          0    664868    titres_points_references 
   TABLE DATA           n   COPY public.titres_points_references (id, titre_point_id, geo_systeme_id, coordonnees, opposable) FROM stdin;
    public          postgres    false    259   �      '          0    664874    titres_references 
   TABLE DATA           C   COPY public.titres_references (titre_id, type_id, nom) FROM stdin;
    public          postgres    false    260   �6      (          0    664877    titres_statuts 
   TABLE DATA           N   COPY public.titres_statuts (id, nom, description, couleur, ordre) FROM stdin;
    public          postgres    false    261   d8      )          0    664883    titres_substances 
   TABLE DATA           Y   COPY public.titres_substances (titre_etape_id, substance_id, connexe, ordre) FROM stdin;
    public          postgres    false    262   `;      *          0    664886    titres_titulaires 
   TABLE DATA           U   COPY public.titres_titulaires (titre_etape_id, entreprise_id, operateur) FROM stdin;
    public          postgres    false    263   �=      +          0    664889    titres_types 
   TABLE DATA           \   COPY public.titres_types (id, domaine_id, type_id, props_etapes_types, archive) FROM stdin;
    public          postgres    false    264   @@      ,          0    664895    titres_types__activites_types 
   TABLE DATA           X   COPY public.titres_types__activites_types (titre_type_id, activite_type_id) FROM stdin;
    public          postgres    false    265   ^A      -          0    664898    titres_types__demarches_types 
   TABLE DATA           �   COPY public.titres_types__demarches_types (titre_type_id, demarche_type_id, duree_max, acceptation_implicite, delai_implicite, delai_recours, legal_ref, legal_lien, date_debut, date_fin) FROM stdin;
    public          postgres    false    266   �A      .          0    664904 +   titres_types__demarches_types__etapes_types 
   TABLE DATA           �   COPY public.titres_types__demarches_types__etapes_types (titre_type_id, ordre, demarche_type_id, etape_type_id, sections) FROM stdin;
    public          postgres    false    267   lE      /          0    664910    titres_types_types 
   TABLE DATA           W   COPY public.titres_types_types (id, nom, description, exploitation, ordre) FROM stdin;
    public          postgres    false    268   �x      0          0    664916 
   trimestres 
   TABLE DATA           ;   COPY public.trimestres (id, nom, frequence_id) FROM stdin;
    public          postgres    false    269   �}      1          0    664919    unites 
   TABLE DATA           2   COPY public.unites (id, nom, symbole) FROM stdin;
    public          postgres    false    270   �}      2          0    664925    utilisateurs 
   TABLE DATA           �   COPY public.utilisateurs (id, email, mot_de_passe, nom, prenom, telephone_fixe, telephone_mobile, permission_id, preferences) FROM stdin;
    public          postgres    false    271   b~      3          0    664931    utilisateurs__administrations 
   TABLE DATA           Z   COPY public.utilisateurs__administrations (utilisateur_id, administration_id) FROM stdin;
    public          postgres    false    272   ~      4          0    664934    utilisateurs__entreprises 
   TABLE DATA           R   COPY public.utilisateurs__entreprises (utilisateur_id, entreprise_id) FROM stdin;
    public          postgres    false    273   �~      =           0    0    knex_migrations_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.knex_migrations_id_seq', 21, true);
          public          postgres    false    231            >           0    0    knex_migrations_lock_index_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.knex_migrations_lock_index_seq', 1, true);
          public          postgres    false    233            4           2606    664944 $   a__etapes_types a__etapes_types_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.a__etapes_types
    ADD CONSTRAINT a__etapes_types_pkey PRIMARY KEY (etape_type_id);
 N   ALTER TABLE ONLY public.a__etapes_types DROP CONSTRAINT a__etapes_types_pkey;
       public            postgres    false    202            6           2606    664946 F   a__titres_types__administrations a__titres_types__administrations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.a__titres_types__administrations
    ADD CONSTRAINT a__titres_types__administrations_pkey PRIMARY KEY (administration_id, titre_type_id);
 p   ALTER TABLE ONLY public.a__titres_types__administrations DROP CONSTRAINT a__titres_types__administrations_pkey;
       public            postgres    false    203    203            :           2606    664948 D   a__titres_types__titres_statuts a__titres_types__titres_statuts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.a__titres_types__titres_statuts
    ADD CONSTRAINT a__titres_types__titres_statuts_pkey PRIMARY KEY (titre_type_id, titre_statut_id);
 n   ALTER TABLE ONLY public.a__titres_types__titres_statuts DROP CONSTRAINT a__titres_types__titres_statuts_pkey;
       public            postgres    false    204    204            >           2606    664950 (   activites_statuts activites_statuts_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.activites_statuts
    ADD CONSTRAINT activites_statuts_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.activites_statuts DROP CONSTRAINT activites_statuts_pkey;
       public            postgres    false    205            C           2606    664952 F   activites_types__administrations activites_types__administrations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__administrations
    ADD CONSTRAINT activites_types__administrations_pkey PRIMARY KEY (administration_id, activite_type_id);
 p   ALTER TABLE ONLY public.activites_types__administrations DROP CONSTRAINT activites_types__administrations_pkey;
       public            postgres    false    207    207            G           2606    664954 F   activites_types__documents_types activites_types__documents_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__documents_types
    ADD CONSTRAINT activites_types__documents_types_pkey PRIMARY KEY (activite_type_id, document_type_id);
 p   ALTER TABLE ONLY public.activites_types__documents_types DROP CONSTRAINT activites_types__documents_types_pkey;
       public            postgres    false    208    208            K           2606    664956 0   activites_types__pays activites_types__pays_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__pays
    ADD CONSTRAINT activites_types__pays_pkey PRIMARY KEY (pays_id, activite_type_id);
 Z   ALTER TABLE ONLY public.activites_types__pays DROP CONSTRAINT activites_types__pays_pkey;
       public            postgres    false    209    209            @           2606    664958 $   activites_types activites_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.activites_types
    ADD CONSTRAINT activites_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.activites_types DROP CONSTRAINT activites_types_pkey;
       public            postgres    false    206            P           2606    664960 $   administrations administrations_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_pkey;
       public            postgres    false    210            T           2606    664962 0   administrations_types administrations_types_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.administrations_types
    ADD CONSTRAINT administrations_types_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.administrations_types DROP CONSTRAINT administrations_types_pkey;
       public            postgres    false    211            W           2606    664964    annees annees_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.annees
    ADD CONSTRAINT annees_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.annees DROP CONSTRAINT annees_pkey;
       public            postgres    false    212            Z           2606    664966    communes communes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.communes
    ADD CONSTRAINT communes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.communes DROP CONSTRAINT communes_pkey;
       public            postgres    false    213            \           2606    664968    definitions definitions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.definitions
    ADD CONSTRAINT definitions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.definitions DROP CONSTRAINT definitions_pkey;
       public            postgres    false    214            ^           2606    664970 (   demarches_statuts demarches_statuts_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.demarches_statuts
    ADD CONSTRAINT demarches_statuts_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.demarches_statuts DROP CONSTRAINT demarches_statuts_pkey;
       public            postgres    false    215            `           2606    664972 $   demarches_types demarches_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.demarches_types
    ADD CONSTRAINT demarches_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.demarches_types DROP CONSTRAINT demarches_types_pkey;
       public            postgres    false    216            b           2606    664974    departements departements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.departements
    ADD CONSTRAINT departements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.departements DROP CONSTRAINT departements_pkey;
       public            postgres    false    217            e           2606    664976    devises devises_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.devises
    ADD CONSTRAINT devises_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.devises DROP CONSTRAINT devises_pkey;
       public            postgres    false    218            h           2606    664978    documents documents_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_pkey;
       public            postgres    false    219            m           2606    664980 $   documents_types documents_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.documents_types
    ADD CONSTRAINT documents_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.documents_types DROP CONSTRAINT documents_types_pkey;
       public            postgres    false    220            o           2606    664982    domaines domaines_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.domaines
    ADD CONSTRAINT domaines_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.domaines DROP CONSTRAINT domaines_pkey;
       public            postgres    false    221            s           2606    664984 :   entreprises_etablissements entreprises_etablissements_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.entreprises_etablissements
    ADD CONSTRAINT entreprises_etablissements_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.entreprises_etablissements DROP CONSTRAINT entreprises_etablissements_pkey;
       public            postgres    false    223            q           2606    664986    entreprises entreprises_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.entreprises
    ADD CONSTRAINT entreprises_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.entreprises DROP CONSTRAINT entreprises_pkey;
       public            postgres    false    222            v           2606    664988 "   etapes_statuts etapes_statuts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.etapes_statuts
    ADD CONSTRAINT etapes_statuts_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.etapes_statuts DROP CONSTRAINT etapes_statuts_pkey;
       public            postgres    false    224            z           2606    664990 >   etapes_types__etapes_statuts etapes_types__etapes_statuts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types__etapes_statuts
    ADD CONSTRAINT etapes_types__etapes_statuts_pkey PRIMARY KEY (etape_type_id, etape_statut_id);
 h   ALTER TABLE ONLY public.etapes_types__etapes_statuts DROP CONSTRAINT etapes_types__etapes_statuts_pkey;
       public            postgres    false    226    226            x           2606    664992    etapes_types etapes_types_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.etapes_types
    ADD CONSTRAINT etapes_types_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.etapes_types DROP CONSTRAINT etapes_types_pkey;
       public            postgres    false    225            ~           2606    664994    frequences frequences_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.frequences
    ADD CONSTRAINT frequences_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.frequences DROP CONSTRAINT frequences_pkey;
       public            postgres    false    227            �           2606    664996    geo_systemes geo_systemes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.geo_systemes
    ADD CONSTRAINT geo_systemes_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.geo_systemes DROP CONSTRAINT geo_systemes_pkey;
       public            postgres    false    228            �           2606    664998    globales globales_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.globales
    ADD CONSTRAINT globales_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.globales DROP CONSTRAINT globales_pkey;
       public            postgres    false    229            �           2606    665000 .   knex_migrations_lock knex_migrations_lock_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.knex_migrations_lock
    ADD CONSTRAINT knex_migrations_lock_pkey PRIMARY KEY (index);
 X   ALTER TABLE ONLY public.knex_migrations_lock DROP CONSTRAINT knex_migrations_lock_pkey;
       public            postgres    false    232            �           2606    665002 $   knex_migrations knex_migrations_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.knex_migrations
    ADD CONSTRAINT knex_migrations_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.knex_migrations DROP CONSTRAINT knex_migrations_pkey;
       public            postgres    false    230            �           2606    665004    mois mois_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.mois
    ADD CONSTRAINT mois_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.mois DROP CONSTRAINT mois_pkey;
       public            postgres    false    234            �           2606    665006    pays pays_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.pays
    ADD CONSTRAINT pays_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.pays DROP CONSTRAINT pays_pkey;
       public            postgres    false    235            �           2606    665008    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    236            �           2606    665010 "   phases_statuts phases_statuts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.phases_statuts
    ADD CONSTRAINT phases_statuts_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.phases_statuts DROP CONSTRAINT phases_statuts_pkey;
       public            postgres    false    237            �           2606    665012 b   r__titres_types__etapes_types__administrations r__titres_types__etapes_types__administrations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations
    ADD CONSTRAINT r__titres_types__etapes_types__administrations_pkey PRIMARY KEY (administration_id, titre_type_id, etape_type_id);
 �   ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations DROP CONSTRAINT r__titres_types__etapes_types__administrations_pkey;
       public            postgres    false    238    238    238            �           2606    665014 f   r__titres_types__titres_statuts__administrations r__titres_types__titres_statuts__administrations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations
    ADD CONSTRAINT r__titres_types__titres_statuts__administrations_pkey PRIMARY KEY (administration_id, titre_type_id, titre_statut_id);
 �   ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations DROP CONSTRAINT r__titres_types__titres_statuts__administrations_pkey;
       public            postgres    false    239    239    239            �           2606    665016 &   references_types references_types_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.references_types
    ADD CONSTRAINT references_types_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.references_types DROP CONSTRAINT references_types_pkey;
       public            postgres    false    240            �           2606    665018    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public            postgres    false    241            �           2606    665020 B   substances__substances_legales substances__substances_legales_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.substances__substances_legales
    ADD CONSTRAINT substances__substances_legales_pkey PRIMARY KEY (substance_id, substance_legale_id);
 l   ALTER TABLE ONLY public.substances__substances_legales DROP CONSTRAINT substances__substances_legales_pkey;
       public            postgres    false    243    243            �           2606    665022 6   substances_legales_codes substances_legales_codes_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.substances_legales_codes
    ADD CONSTRAINT substances_legales_codes_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.substances_legales_codes DROP CONSTRAINT substances_legales_codes_pkey;
       public            postgres    false    245            �           2606    665024 *   substances_legales substances_legales_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.substances_legales
    ADD CONSTRAINT substances_legales_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.substances_legales DROP CONSTRAINT substances_legales_pkey;
       public            postgres    false    244            �           2606    665026    substances substances_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.substances
    ADD CONSTRAINT substances_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.substances DROP CONSTRAINT substances_pkey;
       public            postgres    false    242            �           2606    665028 &   titres_activites titres_activites_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titres_activites_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titres_activites_pkey;
       public            postgres    false    247            �           2606    665030 N   titres_administrations_gestionnaires titres_administrations_gestionnaires_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_gestionnaires
    ADD CONSTRAINT titres_administrations_gestionnaires_pkey PRIMARY KEY (titre_id, administration_id);
 x   ALTER TABLE ONLY public.titres_administrations_gestionnaires DROP CONSTRAINT titres_administrations_gestionnaires_pkey;
       public            postgres    false    248    248            �           2606    665032 B   titres_administrations_locales titres_administrations_locales_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_locales
    ADD CONSTRAINT titres_administrations_locales_pkey PRIMARY KEY (titre_etape_id, administration_id);
 l   ALTER TABLE ONLY public.titres_administrations_locales DROP CONSTRAINT titres_administrations_locales_pkey;
       public            postgres    false    249    249            �           2606    665034 ,   titres_amodiataires titres_amodiataires_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_amodiataires
    ADD CONSTRAINT titres_amodiataires_pkey PRIMARY KEY (titre_etape_id, entreprise_id);
 V   ALTER TABLE ONLY public.titres_amodiataires DROP CONSTRAINT titres_amodiataires_pkey;
       public            postgres    false    250    250            �           2606    665036 $   titres_communes titres_communes_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.titres_communes
    ADD CONSTRAINT titres_communes_pkey PRIMARY KEY (titre_etape_id, commune_id);
 N   ALTER TABLE ONLY public.titres_communes DROP CONSTRAINT titres_communes_pkey;
       public            postgres    false    251    251            �           2606    665038 2   titres_demarches_liens titres_demarches_liens_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches_liens
    ADD CONSTRAINT titres_demarches_liens_pkey PRIMARY KEY (enfant_titre_demarche_id, parent_titre_demarche_id);
 \   ALTER TABLE ONLY public.titres_demarches_liens DROP CONSTRAINT titres_demarches_liens_pkey;
       public            postgres    false    253    253            �           2606    665040 &   titres_demarches titres_demarches_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titres_demarches_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titres_demarches_pkey;
       public            postgres    false    252            �           2606    665042 <   titres_etapes_justificatifs titres_etapes_justificatifs_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes_justificatifs
    ADD CONSTRAINT titres_etapes_justificatifs_pkey PRIMARY KEY (titre_etape_id, document_id);
 f   ALTER TABLE ONLY public.titres_etapes_justificatifs DROP CONSTRAINT titres_etapes_justificatifs_pkey;
       public            postgres    false    255    255            �           2606    665044     titres_etapes titres_etapes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titres_etapes_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titres_etapes_pkey;
       public            postgres    false    254            �           2606    665046 ,   titres_incertitudes titres_incertitudes_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.titres_incertitudes
    ADD CONSTRAINT titres_incertitudes_pkey PRIMARY KEY (titre_etape_id);
 V   ALTER TABLE ONLY public.titres_incertitudes DROP CONSTRAINT titres_incertitudes_pkey;
       public            postgres    false    256            �           2606    665048     titres_phases titres_phases_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.titres_phases
    ADD CONSTRAINT titres_phases_pkey PRIMARY KEY (titre_demarche_id);
 J   ALTER TABLE ONLY public.titres_phases DROP CONSTRAINT titres_phases_pkey;
       public            postgres    false    257            �           2606    665050    titres titres_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_pkey;
       public            postgres    false    246            �           2606    665052     titres_points titres_points_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.titres_points
    ADD CONSTRAINT titres_points_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.titres_points DROP CONSTRAINT titres_points_pkey;
       public            postgres    false    258            �           2606    665054 6   titres_points_references titres_points_references_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.titres_points_references
    ADD CONSTRAINT titres_points_references_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.titres_points_references DROP CONSTRAINT titres_points_references_pkey;
       public            postgres    false    259            �           2606    665056 (   titres_references titres_references_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.titres_references
    ADD CONSTRAINT titres_references_pkey PRIMARY KEY (titre_id, type_id, nom);
 R   ALTER TABLE ONLY public.titres_references DROP CONSTRAINT titres_references_pkey;
       public            postgres    false    260    260    260            �           2606    665058 "   titres_statuts titres_statuts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.titres_statuts
    ADD CONSTRAINT titres_statuts_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.titres_statuts DROP CONSTRAINT titres_statuts_pkey;
       public            postgres    false    261            �           2606    665060 (   titres_substances titres_substances_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_substances
    ADD CONSTRAINT titres_substances_pkey PRIMARY KEY (titre_etape_id, substance_id);
 R   ALTER TABLE ONLY public.titres_substances DROP CONSTRAINT titres_substances_pkey;
       public            postgres    false    262    262            �           2606    665062 (   titres_titulaires titres_titulaires_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_titulaires
    ADD CONSTRAINT titres_titulaires_pkey PRIMARY KEY (titre_etape_id, entreprise_id);
 R   ALTER TABLE ONLY public.titres_titulaires DROP CONSTRAINT titres_titulaires_pkey;
       public            postgres    false    263    263            �           2606    665064 @   titres_types__activites_types titres_types__activites_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__activites_types
    ADD CONSTRAINT titres_types__activites_types_pkey PRIMARY KEY (titre_type_id, activite_type_id);
 j   ALTER TABLE ONLY public.titres_types__activites_types DROP CONSTRAINT titres_types__activites_types_pkey;
       public            postgres    false    265    265                       2606    665066 \   titres_types__demarches_types__etapes_types titres_types__demarches_types__etapes_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titres_types__demarches_types__etapes_types_pkey PRIMARY KEY (titre_type_id, demarche_type_id, etape_type_id);
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titres_types__demarches_types__etapes_types_pkey;
       public            postgres    false    267    267    267            �           2606    665068 @   titres_types__demarches_types titres_types__demarches_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types
    ADD CONSTRAINT titres_types__demarches_types_pkey PRIMARY KEY (titre_type_id, demarche_type_id);
 j   ALTER TABLE ONLY public.titres_types__demarches_types DROP CONSTRAINT titres_types__demarches_types_pkey;
       public            postgres    false    266    266            �           2606    665070    titres_types titres_types_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titres_types_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titres_types_pkey;
       public            postgres    false    264                       2606    665072 *   titres_types_types titres_types_types_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.titres_types_types
    ADD CONSTRAINT titres_types_types_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.titres_types_types DROP CONSTRAINT titres_types_types_pkey;
       public            postgres    false    268            �           2606    665074 0   titres_types titrestypes_domaineid_typeid_unique 
   CONSTRAINT     z   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titrestypes_domaineid_typeid_unique UNIQUE (domaine_id, type_id);
 Z   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titrestypes_domaineid_typeid_unique;
       public            postgres    false    264    264            
           2606    665076    trimestres trimestres_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.trimestres
    ADD CONSTRAINT trimestres_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.trimestres DROP CONSTRAINT trimestres_pkey;
       public            postgres    false    269                       2606    665078    unites unites_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.unites
    ADD CONSTRAINT unites_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.unites DROP CONSTRAINT unites_pkey;
       public            postgres    false    270                       2606    665080 &   utilisateurs utilisateurs_email_unique 
   CONSTRAINT     b   ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_email_unique UNIQUE (email);
 P   ALTER TABLE ONLY public.utilisateurs DROP CONSTRAINT utilisateurs_email_unique;
       public            postgres    false    271                       2606    665082    utilisateurs utilisateurs_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.utilisateurs DROP CONSTRAINT utilisateurs_pkey;
       public            postgres    false    271            7           1259    665083 6   a__titrestypes__administrations_administrationid_index    INDEX     �   CREATE INDEX a__titrestypes__administrations_administrationid_index ON public.a__titres_types__administrations USING btree (administration_id);
 J   DROP INDEX public.a__titrestypes__administrations_administrationid_index;
       public            postgres    false    203            8           1259    665084 1   a__titrestypes__administrations_titretypeid_index    INDEX     �   CREATE INDEX a__titrestypes__administrations_titretypeid_index ON public.a__titres_types__administrations USING btree (titre_type_id);
 E   DROP INDEX public.a__titrestypes__administrations_titretypeid_index;
       public            postgres    false    203            ;           1259    665085 1   a__titrestypes__titresstatuts_titrestatutid_index    INDEX     �   CREATE INDEX a__titrestypes__titresstatuts_titrestatutid_index ON public.a__titres_types__titres_statuts USING btree (titre_statut_id);
 E   DROP INDEX public.a__titrestypes__titresstatuts_titrestatutid_index;
       public            postgres    false    204            <           1259    665086 /   a__titrestypes__titresstatuts_titretypeid_index    INDEX     �   CREATE INDEX a__titrestypes__titresstatuts_titretypeid_index ON public.a__titres_types__titres_statuts USING btree (titre_type_id);
 C   DROP INDEX public.a__titrestypes__titresstatuts_titretypeid_index;
       public            postgres    false    204            D           1259    665087 4   activitestypes__administrations_activitetypeid_index    INDEX     �   CREATE INDEX activitestypes__administrations_activitetypeid_index ON public.activites_types__administrations USING btree (activite_type_id);
 H   DROP INDEX public.activitestypes__administrations_activitetypeid_index;
       public            postgres    false    207            E           1259    665088 6   activitestypes__administrations_administrationid_index    INDEX     �   CREATE INDEX activitestypes__administrations_administrationid_index ON public.activites_types__administrations USING btree (administration_id);
 J   DROP INDEX public.activitestypes__administrations_administrationid_index;
       public            postgres    false    207            H           1259    665089 3   activitestypes__documentstypes_activitetypeid_index    INDEX     �   CREATE INDEX activitestypes__documentstypes_activitetypeid_index ON public.activites_types__documents_types USING btree (activite_type_id);
 G   DROP INDEX public.activitestypes__documentstypes_activitetypeid_index;
       public            postgres    false    208            I           1259    665090 3   activitestypes__documentstypes_documenttypeid_index    INDEX     �   CREATE INDEX activitestypes__documentstypes_documenttypeid_index ON public.activites_types__documents_types USING btree (document_type_id);
 G   DROP INDEX public.activitestypes__documentstypes_documenttypeid_index;
       public            postgres    false    208            L           1259    665091 )   activitestypes__pays_activitetypeid_index    INDEX     w   CREATE INDEX activitestypes__pays_activitetypeid_index ON public.activites_types__pays USING btree (activite_type_id);
 =   DROP INDEX public.activitestypes__pays_activitetypeid_index;
       public            postgres    false    209            M           1259    665092 !   activitestypes__pays_paysid_index    INDEX     f   CREATE INDEX activitestypes__pays_paysid_index ON public.activites_types__pays USING btree (pays_id);
 5   DROP INDEX public.activitestypes__pays_paysid_index;
       public            postgres    false    209            A           1259    665093     activitestypes_frequenceid_index    INDEX     d   CREATE INDEX activitestypes_frequenceid_index ON public.activites_types USING btree (frequence_id);
 4   DROP INDEX public.activitestypes_frequenceid_index;
       public            postgres    false    206            N           1259    665094 #   administrations_departementid_index    INDEX     i   CREATE INDEX administrations_departementid_index ON public.administrations USING btree (departement_id);
 7   DROP INDEX public.administrations_departementid_index;
       public            postgres    false    210            Q           1259    665095    administrations_regionid_index    INDEX     _   CREATE INDEX administrations_regionid_index ON public.administrations USING btree (region_id);
 2   DROP INDEX public.administrations_regionid_index;
       public            postgres    false    210            R           1259    665096    administrations_typeid_index    INDEX     [   CREATE INDEX administrations_typeid_index ON public.administrations USING btree (type_id);
 0   DROP INDEX public.administrations_typeid_index;
       public            postgres    false    210            U           1259    665097    annees_frequenceid_index    INDEX     S   CREATE INDEX annees_frequenceid_index ON public.annees USING btree (frequence_id);
 ,   DROP INDEX public.annees_frequenceid_index;
       public            postgres    false    212            X           1259    665098    communes_departementid_index    INDEX     [   CREATE INDEX communes_departementid_index ON public.communes USING btree (departement_id);
 0   DROP INDEX public.communes_departementid_index;
       public            postgres    false    213            c           1259    665099    departements_regionid_index    INDEX     Y   CREATE INDEX departements_regionid_index ON public.departements USING btree (region_id);
 /   DROP INDEX public.departements_regionid_index;
       public            postgres    false    217            f           1259    665100    documents_entrepriseid_index    INDEX     [   CREATE INDEX documents_entrepriseid_index ON public.documents USING btree (entreprise_id);
 0   DROP INDEX public.documents_entrepriseid_index;
       public            postgres    false    219            i           1259    665101    documents_titreactiviteid_index    INDEX     b   CREATE INDEX documents_titreactiviteid_index ON public.documents USING btree (titre_activite_id);
 3   DROP INDEX public.documents_titreactiviteid_index;
       public            postgres    false    219            j           1259    665102    documents_titreetapeid_index    INDEX     \   CREATE INDEX documents_titreetapeid_index ON public.documents USING btree (titre_etape_id);
 0   DROP INDEX public.documents_titreetapeid_index;
       public            postgres    false    219            k           1259    665103    documents_typeid_index    INDEX     O   CREATE INDEX documents_typeid_index ON public.documents USING btree (type_id);
 *   DROP INDEX public.documents_typeid_index;
       public            postgres    false    219            t           1259    665104 ,   entreprisesetablissements_entrepriseid_index    INDEX     |   CREATE INDEX entreprisesetablissements_entrepriseid_index ON public.entreprises_etablissements USING btree (entreprise_id);
 @   DROP INDEX public.entreprisesetablissements_entrepriseid_index;
       public            postgres    false    223            {           1259    665105 .   etapestypes__etapesstatuts_etapestatutid_index    INDEX     �   CREATE INDEX etapestypes__etapesstatuts_etapestatutid_index ON public.etapes_types__etapes_statuts USING btree (etape_statut_id);
 B   DROP INDEX public.etapestypes__etapesstatuts_etapestatutid_index;
       public            postgres    false    226            |           1259    665106 ,   etapestypes__etapesstatuts_etapetypeid_index    INDEX     ~   CREATE INDEX etapestypes__etapesstatuts_etapetypeid_index ON public.etapes_types__etapes_statuts USING btree (etape_type_id);
 @   DROP INDEX public.etapestypes__etapesstatuts_etapetypeid_index;
       public            postgres    false    226            �           1259    665107    geosystemes_uniteid_index    INDEX     V   CREATE INDEX geosystemes_uniteid_index ON public.geo_systemes USING btree (unite_id);
 -   DROP INDEX public.geosystemes_uniteid_index;
       public            postgres    false    228            �           1259    665108    mois_frequenceid_index    INDEX     O   CREATE INDEX mois_frequenceid_index ON public.mois USING btree (frequence_id);
 *   DROP INDEX public.mois_frequenceid_index;
       public            postgres    false    234            �           1259    665109    mois_trimestreid_index    INDEX     O   CREATE INDEX mois_trimestreid_index ON public.mois USING btree (trimestre_id);
 *   DROP INDEX public.mois_trimestreid_index;
       public            postgres    false    234            �           1259    665110 ?   r__titrestypes__etapestypes__administrations_administrationid_i    INDEX     �   CREATE INDEX r__titrestypes__etapestypes__administrations_administrationid_i ON public.r__titres_types__etapes_types__administrations USING btree (administration_id);
 S   DROP INDEX public.r__titrestypes__etapestypes__administrations_administrationid_i;
       public            postgres    false    238            �           1259    665111 >   r__titrestypes__etapestypes__administrations_etapetypeid_index    INDEX     �   CREATE INDEX r__titrestypes__etapestypes__administrations_etapetypeid_index ON public.r__titres_types__etapes_types__administrations USING btree (etape_type_id);
 R   DROP INDEX public.r__titrestypes__etapestypes__administrations_etapetypeid_index;
       public            postgres    false    238            �           1259    665112 >   r__titrestypes__etapestypes__administrations_titretypeid_index    INDEX     �   CREATE INDEX r__titrestypes__etapestypes__administrations_titretypeid_index ON public.r__titres_types__etapes_types__administrations USING btree (titre_type_id);
 R   DROP INDEX public.r__titrestypes__etapestypes__administrations_titretypeid_index;
       public            postgres    false    238            �           1259    665113 ?   r__titrestypes__titresstatuts__administrations_administrationid    INDEX     �   CREATE INDEX r__titrestypes__titresstatuts__administrations_administrationid ON public.r__titres_types__titres_statuts__administrations USING btree (administration_id);
 S   DROP INDEX public.r__titrestypes__titresstatuts__administrations_administrationid;
       public            postgres    false    239            �           1259    665114 ?   r__titrestypes__titresstatuts__administrations_titrestatutid_in    INDEX     �   CREATE INDEX r__titrestypes__titresstatuts__administrations_titrestatutid_in ON public.r__titres_types__titres_statuts__administrations USING btree (titre_statut_id);
 S   DROP INDEX public.r__titrestypes__titresstatuts__administrations_titrestatutid_in;
       public            postgres    false    239            �           1259    665115 ?   r__titrestypes__titresstatuts__administrations_titretypeid_inde    INDEX     �   CREATE INDEX r__titrestypes__titresstatuts__administrations_titretypeid_inde ON public.r__titres_types__titres_statuts__administrations USING btree (titre_type_id);
 S   DROP INDEX public.r__titrestypes__titresstatuts__administrations_titretypeid_inde;
       public            postgres    false    239            �           1259    665116    regions_paysid_index    INDEX     K   CREATE INDEX regions_paysid_index ON public.regions USING btree (pays_id);
 (   DROP INDEX public.regions_paysid_index;
       public            postgres    false    241            �           1259    665117 /   substances__substanceslegales_substanceid_index    INDEX     �   CREATE INDEX substances__substanceslegales_substanceid_index ON public.substances__substances_legales USING btree (substance_id);
 C   DROP INDEX public.substances__substanceslegales_substanceid_index;
       public            postgres    false    243            �           1259    665118 5   substances__substanceslegales_substancelegaleid_index    INDEX     �   CREATE INDEX substances__substanceslegales_substancelegaleid_index ON public.substances__substances_legales USING btree (substance_legale_id);
 I   DROP INDEX public.substances__substanceslegales_substancelegaleid_index;
       public            postgres    false    243            �           1259    665119 !   substanceslegales_domaineid_index    INDEX     f   CREATE INDEX substanceslegales_domaineid_index ON public.substances_legales USING btree (domaine_id);
 5   DROP INDEX public.substanceslegales_domaineid_index;
       public            postgres    false    244            �           1259    665120 -   substanceslegales_substancelegalecodeid_index    INDEX     �   CREATE INDEX substanceslegales_substancelegalecodeid_index ON public.substances_legales USING btree (substance_legale_code_id);
 A   DROP INDEX public.substanceslegales_substancelegalecodeid_index;
       public            postgres    false    244            �           1259    665121    titres_domaineid_index    INDEX     O   CREATE INDEX titres_domaineid_index ON public.titres USING btree (domaine_id);
 *   DROP INDEX public.titres_domaineid_index;
       public            postgres    false    246            �           1259    665122    titres_statutid_index    INDEX     M   CREATE INDEX titres_statutid_index ON public.titres USING btree (statut_id);
 )   DROP INDEX public.titres_statutid_index;
       public            postgres    false    246            �           1259    665123    titres_typeid_index    INDEX     I   CREATE INDEX titres_typeid_index ON public.titres USING btree (type_id);
 '   DROP INDEX public.titres_typeid_index;
       public            postgres    false    246            �           1259    665124    titresactivites_statutid_index    INDEX     `   CREATE INDEX titresactivites_statutid_index ON public.titres_activites USING btree (statut_id);
 2   DROP INDEX public.titresactivites_statutid_index;
       public            postgres    false    247            �           1259    665125    titresactivites_titreid_index    INDEX     ^   CREATE INDEX titresactivites_titreid_index ON public.titres_activites USING btree (titre_id);
 1   DROP INDEX public.titresactivites_titreid_index;
       public            postgres    false    247            �           1259    665126    titresactivites_typeid_index    INDEX     \   CREATE INDEX titresactivites_typeid_index ON public.titres_activites USING btree (type_id);
 0   DROP INDEX public.titresactivites_typeid_index;
       public            postgres    false    247            �           1259    665127 #   titresactivites_utilisateurid_index    INDEX     j   CREATE INDEX titresactivites_utilisateurid_index ON public.titres_activites USING btree (utilisateur_id);
 7   DROP INDEX public.titresactivites_utilisateurid_index;
       public            postgres    false    247            �           1259    665128 9   titresadministrationsgestionnaires_administrationid_index    INDEX     �   CREATE INDEX titresadministrationsgestionnaires_administrationid_index ON public.titres_administrations_gestionnaires USING btree (administration_id);
 M   DROP INDEX public.titresadministrationsgestionnaires_administrationid_index;
       public            postgres    false    248            �           1259    665129 0   titresadministrationsgestionnaires_titreid_index    INDEX     �   CREATE INDEX titresadministrationsgestionnaires_titreid_index ON public.titres_administrations_gestionnaires USING btree (titre_id);
 D   DROP INDEX public.titresadministrationsgestionnaires_titreid_index;
       public            postgres    false    248            �           1259    665130 3   titresadministrationslocales_administrationid_index    INDEX     �   CREATE INDEX titresadministrationslocales_administrationid_index ON public.titres_administrations_locales USING btree (administration_id);
 G   DROP INDEX public.titresadministrationslocales_administrationid_index;
       public            postgres    false    249            �           1259    665131 /   titresadministrationslocales_titreetapeid_index    INDEX     �   CREATE INDEX titresadministrationslocales_titreetapeid_index ON public.titres_administrations_locales USING btree (titre_etape_id);
 C   DROP INDEX public.titresadministrationslocales_titreetapeid_index;
       public            postgres    false    249            �           1259    665132 %   titresamodiataires_entrepriseid_index    INDEX     n   CREATE INDEX titresamodiataires_entrepriseid_index ON public.titres_amodiataires USING btree (entreprise_id);
 9   DROP INDEX public.titresamodiataires_entrepriseid_index;
       public            postgres    false    250            �           1259    665133 %   titresamodiataires_titreetapeid_index    INDEX     o   CREATE INDEX titresamodiataires_titreetapeid_index ON public.titres_amodiataires USING btree (titre_etape_id);
 9   DROP INDEX public.titresamodiataires_titreetapeid_index;
       public            postgres    false    250            �           1259    665134    titrescommunes_communeid_index    INDEX     `   CREATE INDEX titrescommunes_communeid_index ON public.titres_communes USING btree (commune_id);
 2   DROP INDEX public.titrescommunes_communeid_index;
       public            postgres    false    251            �           1259    665135 !   titrescommunes_titreetapeid_index    INDEX     g   CREATE INDEX titrescommunes_titreetapeid_index ON public.titres_communes USING btree (titre_etape_id);
 5   DROP INDEX public.titrescommunes_titreetapeid_index;
       public            postgres    false    251            �           1259    665136    titresdemarches_statutid_index    INDEX     `   CREATE INDEX titresdemarches_statutid_index ON public.titres_demarches USING btree (statut_id);
 2   DROP INDEX public.titresdemarches_statutid_index;
       public            postgres    false    252            �           1259    665137    titresdemarches_titreid_index    INDEX     ^   CREATE INDEX titresdemarches_titreid_index ON public.titres_demarches USING btree (titre_id);
 1   DROP INDEX public.titresdemarches_titreid_index;
       public            postgres    false    252            �           1259    665138    titresdemarches_typeid_index    INDEX     \   CREATE INDEX titresdemarches_typeid_index ON public.titres_demarches USING btree (type_id);
 0   DROP INDEX public.titresdemarches_typeid_index;
       public            postgres    false    252            �           1259    665139 0   titresdemarchesliens_enfanttitredemarcheid_index    INDEX     �   CREATE INDEX titresdemarchesliens_enfanttitredemarcheid_index ON public.titres_demarches_liens USING btree (enfant_titre_demarche_id);
 D   DROP INDEX public.titresdemarchesliens_enfanttitredemarcheid_index;
       public            postgres    false    253            �           1259    665140 0   titresdemarchesliens_parenttitredemarcheid_index    INDEX     �   CREATE INDEX titresdemarchesliens_parenttitredemarcheid_index ON public.titres_demarches_liens USING btree (parent_titre_demarche_id);
 D   DROP INDEX public.titresdemarchesliens_parenttitredemarcheid_index;
       public            postgres    false    253            �           1259    665141    titresetapes_statutid_index    INDEX     Z   CREATE INDEX titresetapes_statutid_index ON public.titres_etapes USING btree (statut_id);
 /   DROP INDEX public.titresetapes_statutid_index;
       public            postgres    false    254            �           1259    665142 "   titresetapes_titredemarcheid_index    INDEX     i   CREATE INDEX titresetapes_titredemarcheid_index ON public.titres_etapes USING btree (titre_demarche_id);
 6   DROP INDEX public.titresetapes_titredemarcheid_index;
       public            postgres    false    254            �           1259    665143    titresetapes_typeid_index    INDEX     V   CREATE INDEX titresetapes_typeid_index ON public.titres_etapes USING btree (type_id);
 -   DROP INDEX public.titresetapes_typeid_index;
       public            postgres    false    254            �           1259    665144 *   titresetapesjustificatifs_documentid_index    INDEX     y   CREATE INDEX titresetapesjustificatifs_documentid_index ON public.titres_etapes_justificatifs USING btree (document_id);
 >   DROP INDEX public.titresetapesjustificatifs_documentid_index;
       public            postgres    false    255            �           1259    665145 ,   titresetapesjustificatifs_titreetapeid_index    INDEX     ~   CREATE INDEX titresetapesjustificatifs_titreetapeid_index ON public.titres_etapes_justificatifs USING btree (titre_etape_id);
 @   DROP INDEX public.titresetapesjustificatifs_titreetapeid_index;
       public            postgres    false    255            �           1259    665146    titrespoints_coordonnees_index    INDEX     ^   CREATE INDEX titrespoints_coordonnees_index ON public.titres_points USING gist (coordonnees);
 2   DROP INDEX public.titrespoints_coordonnees_index;
       public            postgres    false    258            �           1259    665147    titrespoints_titreetapeid_index    INDEX     c   CREATE INDEX titrespoints_titreetapeid_index ON public.titres_points USING btree (titre_etape_id);
 3   DROP INDEX public.titrespoints_titreetapeid_index;
       public            postgres    false    258            �           1259    665148 )   titrespointsreferences_titrepointid_index    INDEX     x   CREATE INDEX titrespointsreferences_titrepointid_index ON public.titres_points_references USING btree (titre_point_id);
 =   DROP INDEX public.titrespointsreferences_titrepointid_index;
       public            postgres    false    259            �           1259    665149    titresreferences_titreid_index    INDEX     `   CREATE INDEX titresreferences_titreid_index ON public.titres_references USING btree (titre_id);
 2   DROP INDEX public.titresreferences_titreid_index;
       public            postgres    false    260            �           1259    665150    titresreferences_typeid_index    INDEX     ^   CREATE INDEX titresreferences_typeid_index ON public.titres_references USING btree (type_id);
 1   DROP INDEX public.titresreferences_typeid_index;
       public            postgres    false    260            �           1259    665151 "   titressubstances_substanceid_index    INDEX     h   CREATE INDEX titressubstances_substanceid_index ON public.titres_substances USING btree (substance_id);
 6   DROP INDEX public.titressubstances_substanceid_index;
       public            postgres    false    262            �           1259    665152 #   titressubstances_titreetapeid_index    INDEX     k   CREATE INDEX titressubstances_titreetapeid_index ON public.titres_substances USING btree (titre_etape_id);
 7   DROP INDEX public.titressubstances_titreetapeid_index;
       public            postgres    false    262            �           1259    665153 #   titrestitulaires_entrepriseid_index    INDEX     j   CREATE INDEX titrestitulaires_entrepriseid_index ON public.titres_titulaires USING btree (entreprise_id);
 7   DROP INDEX public.titrestitulaires_entrepriseid_index;
       public            postgres    false    263            �           1259    665154 #   titrestitulaires_titreetapeid_index    INDEX     k   CREATE INDEX titrestitulaires_titreetapeid_index ON public.titres_titulaires USING btree (titre_etape_id);
 7   DROP INDEX public.titrestitulaires_titreetapeid_index;
       public            postgres    false    263            �           1259    665155 0   titrestypes__activitestypes_activitetypeid_index    INDEX     �   CREATE INDEX titrestypes__activitestypes_activitetypeid_index ON public.titres_types__activites_types USING btree (activite_type_id);
 D   DROP INDEX public.titrestypes__activitestypes_activitetypeid_index;
       public            postgres    false    265            �           1259    665156 -   titrestypes__activitestypes_titretypeid_index    INDEX     �   CREATE INDEX titrestypes__activitestypes_titretypeid_index ON public.titres_types__activites_types USING btree (titre_type_id);
 A   DROP INDEX public.titrestypes__activitestypes_titretypeid_index;
       public            postgres    false    265                       1259    665157 =   titrestypes__demarchestypes__etapestypes_demarchetypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes__etapestypes_demarchetypeid_index ON public.titres_types__demarches_types__etapes_types USING btree (demarche_type_id);
 Q   DROP INDEX public.titrestypes__demarchestypes__etapestypes_demarchetypeid_index;
       public            postgres    false    267                       1259    665158 :   titrestypes__demarchestypes__etapestypes_etapetypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes__etapestypes_etapetypeid_index ON public.titres_types__demarches_types__etapes_types USING btree (etape_type_id);
 N   DROP INDEX public.titrestypes__demarchestypes__etapestypes_etapetypeid_index;
       public            postgres    false    267                       1259    665159 :   titrestypes__demarchestypes__etapestypes_titretypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes__etapestypes_titretypeid_index ON public.titres_types__demarches_types__etapes_types USING btree (titre_type_id);
 N   DROP INDEX public.titrestypes__demarchestypes__etapestypes_titretypeid_index;
       public            postgres    false    267            �           1259    665160 0   titrestypes__demarchestypes_demarchetypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes_demarchetypeid_index ON public.titres_types__demarches_types USING btree (demarche_type_id);
 D   DROP INDEX public.titrestypes__demarchestypes_demarchetypeid_index;
       public            postgres    false    266                        1259    665161 -   titrestypes__demarchestypes_titretypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes_titretypeid_index ON public.titres_types__demarches_types USING btree (titre_type_id);
 A   DROP INDEX public.titrestypes__demarchestypes_titretypeid_index;
       public            postgres    false    266            �           1259    665162    titrestypes_domaineid_index    INDEX     Z   CREATE INDEX titrestypes_domaineid_index ON public.titres_types USING btree (domaine_id);
 /   DROP INDEX public.titrestypes_domaineid_index;
       public            postgres    false    264            �           1259    665163    titrestypes_typeid_index    INDEX     T   CREATE INDEX titrestypes_typeid_index ON public.titres_types USING btree (type_id);
 ,   DROP INDEX public.titrestypes_typeid_index;
       public            postgres    false    264                       1259    665164    trimestres_frequenceid_index    INDEX     [   CREATE INDEX trimestres_frequenceid_index ON public.trimestres USING btree (frequence_id);
 0   DROP INDEX public.trimestres_frequenceid_index;
       public            postgres    false    269                       1259    665165 4   utilisateurs__administrations_administrationid_index    INDEX     �   CREATE INDEX utilisateurs__administrations_administrationid_index ON public.utilisateurs__administrations USING btree (administration_id);
 H   DROP INDEX public.utilisateurs__administrations_administrationid_index;
       public            postgres    false    272                       1259    665166 1   utilisateurs__administrations_utilisateurid_index    INDEX     �   CREATE INDEX utilisateurs__administrations_utilisateurid_index ON public.utilisateurs__administrations USING btree (utilisateur_id);
 E   DROP INDEX public.utilisateurs__administrations_utilisateurid_index;
       public            postgres    false    272                       1259    665167 ,   utilisateurs__entreprises_entrepriseid_index    INDEX     {   CREATE INDEX utilisateurs__entreprises_entrepriseid_index ON public.utilisateurs__entreprises USING btree (entreprise_id);
 @   DROP INDEX public.utilisateurs__entreprises_entrepriseid_index;
       public            postgres    false    273                       1259    665168 -   utilisateurs__entreprises_utilisateurid_index    INDEX     }   CREATE INDEX utilisateurs__entreprises_utilisateurid_index ON public.utilisateurs__entreprises USING btree (utilisateur_id);
 A   DROP INDEX public.utilisateurs__entreprises_utilisateurid_index;
       public            postgres    false    273                       1259    665169    utilisateurs_permissionid_index    INDEX     a   CREATE INDEX utilisateurs_permissionid_index ON public.utilisateurs USING btree (permission_id);
 3   DROP INDEX public.utilisateurs_permissionid_index;
       public            postgres    false    271                       2606    665170 Y   a__titres_types__administrations a__titrestypes__administrations_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.a__titres_types__administrations
    ADD CONSTRAINT a__titrestypes__administrations_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.a__titres_types__administrations DROP CONSTRAINT a__titrestypes__administrations_administrationid_foreign;
       public          postgres    false    203    210    3408                       2606    665175 T   a__titres_types__administrations a__titrestypes__administrations_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.a__titres_types__administrations
    ADD CONSTRAINT a__titrestypes__administrations_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 ~   ALTER TABLE ONLY public.a__titres_types__administrations DROP CONSTRAINT a__titrestypes__administrations_titretypeid_foreign;
       public          postgres    false    203    3572    264                       2606    665180 S   a__titres_types__titres_statuts a__titrestypes__titresstatuts_titrestatutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.a__titres_types__titres_statuts
    ADD CONSTRAINT a__titrestypes__titresstatuts_titrestatutid_foreign FOREIGN KEY (titre_statut_id) REFERENCES public.titres_statuts(id);
 }   ALTER TABLE ONLY public.a__titres_types__titres_statuts DROP CONSTRAINT a__titrestypes__titresstatuts_titrestatutid_foreign;
       public          postgres    false    261    3562    204                       2606    665185 Q   a__titres_types__titres_statuts a__titrestypes__titresstatuts_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.a__titres_types__titres_statuts
    ADD CONSTRAINT a__titrestypes__titresstatuts_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 {   ALTER TABLE ONLY public.a__titres_types__titres_statuts DROP CONSTRAINT a__titrestypes__titresstatuts_titretypeid_foreign;
       public          postgres    false    3572    264    204                       2606    665190 W   activites_types__administrations activitestypes__administrations_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__administrations
    ADD CONSTRAINT activitestypes__administrations_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.activites_types__administrations DROP CONSTRAINT activitestypes__administrations_activitetypeid_foreign;
       public          postgres    false    207    3392    206                       2606    665195 Y   activites_types__administrations activitestypes__administrations_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__administrations
    ADD CONSTRAINT activitestypes__administrations_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.activites_types__administrations DROP CONSTRAINT activitestypes__administrations_administrationid_foreign;
       public          postgres    false    210    207    3408                       2606    665200 V   activites_types__documents_types activitestypes__documentstypes_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__documents_types
    ADD CONSTRAINT activitestypes__documentstypes_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id);
 �   ALTER TABLE ONLY public.activites_types__documents_types DROP CONSTRAINT activitestypes__documentstypes_activitetypeid_foreign;
       public          postgres    false    206    3392    208                       2606    665205 V   activites_types__documents_types activitestypes__documentstypes_documenttypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__documents_types
    ADD CONSTRAINT activitestypes__documentstypes_documenttypeid_foreign FOREIGN KEY (document_type_id) REFERENCES public.documents_types(id);
 �   ALTER TABLE ONLY public.activites_types__documents_types DROP CONSTRAINT activitestypes__documentstypes_documenttypeid_foreign;
       public          postgres    false    3437    220    208                       2606    665210 A   activites_types__pays activitestypes__pays_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__pays
    ADD CONSTRAINT activitestypes__pays_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.activites_types__pays DROP CONSTRAINT activitestypes__pays_activitetypeid_foreign;
       public          postgres    false    209    206    3392                        2606    665215 9   activites_types__pays activitestypes__pays_paysid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__pays
    ADD CONSTRAINT activitestypes__pays_paysid_foreign FOREIGN KEY (pays_id) REFERENCES public.pays(id);
 c   ALTER TABLE ONLY public.activites_types__pays DROP CONSTRAINT activitestypes__pays_paysid_foreign;
       public          postgres    false    209    235    3469                       2606    665220 2   activites_types activitestypes_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types
    ADD CONSTRAINT activitestypes_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 \   ALTER TABLE ONLY public.activites_types DROP CONSTRAINT activitestypes_frequenceid_foreign;
       public          postgres    false    206    3454    227            !           2606    665225 5   administrations administrations_departementid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_departementid_foreign FOREIGN KEY (departement_id) REFERENCES public.departements(id);
 _   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_departementid_foreign;
       public          postgres    false    210    3426    217            "           2606    665230 0   administrations administrations_regionid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_regionid_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id);
 Z   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_regionid_foreign;
       public          postgres    false    210    3488    241            #           2606    665235 .   administrations administrations_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.administrations_types(id);
 X   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_typeid_foreign;
       public          postgres    false    3412    210    211            $           2606    665240 !   annees annees_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.annees
    ADD CONSTRAINT annees_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 K   ALTER TABLE ONLY public.annees DROP CONSTRAINT annees_frequenceid_foreign;
       public          postgres    false    227    3454    212            %           2606    665245 '   communes communes_departementid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.communes
    ADD CONSTRAINT communes_departementid_foreign FOREIGN KEY (departement_id) REFERENCES public.departements(id);
 Q   ALTER TABLE ONLY public.communes DROP CONSTRAINT communes_departementid_foreign;
       public          postgres    false    3426    217    213            &           2606    665250 *   departements departements_regionid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.departements
    ADD CONSTRAINT departements_regionid_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id);
 T   ALTER TABLE ONLY public.departements DROP CONSTRAINT departements_regionid_foreign;
       public          postgres    false    3488    241    217            '           2606    665255 (   documents documents_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_entrepriseid_foreign;
       public          postgres    false    219    222    3441            (           2606    665260 +   documents documents_titreactiviteid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_titreactiviteid_foreign FOREIGN KEY (titre_activite_id) REFERENCES public.titres_activites(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_titreactiviteid_foreign;
       public          postgres    false    247    3507    219            )           2606    665265 (   documents documents_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_titreetapeid_foreign;
       public          postgres    false    254    3538    219            *           2606    665270 "   documents documents_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.documents_types(id);
 L   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_typeid_foreign;
       public          postgres    false    219    3437    220            +           2606    665275 I   entreprises_etablissements entreprisesetablissements_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.entreprises_etablissements
    ADD CONSTRAINT entreprisesetablissements_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.entreprises_etablissements DROP CONSTRAINT entreprisesetablissements_entrepriseid_foreign;
       public          postgres    false    222    3441    223            ,           2606    665280 M   etapes_types__etapes_statuts etapestypes__etapesstatuts_etapestatutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types__etapes_statuts
    ADD CONSTRAINT etapestypes__etapesstatuts_etapestatutid_foreign FOREIGN KEY (etape_statut_id) REFERENCES public.etapes_statuts(id) ON DELETE CASCADE;
 w   ALTER TABLE ONLY public.etapes_types__etapes_statuts DROP CONSTRAINT etapestypes__etapesstatuts_etapestatutid_foreign;
       public          postgres    false    3446    226    224            -           2606    665285 K   etapes_types__etapes_statuts etapestypes__etapesstatuts_etapetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types__etapes_statuts
    ADD CONSTRAINT etapestypes__etapesstatuts_etapetypeid_foreign FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id) ON DELETE CASCADE;
 u   ALTER TABLE ONLY public.etapes_types__etapes_statuts DROP CONSTRAINT etapestypes__etapesstatuts_etapetypeid_foreign;
       public          postgres    false    3448    225    226            .           2606    665290 (   geo_systemes geosystemes_uniteid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.geo_systemes
    ADD CONSTRAINT geosystemes_uniteid_foreign FOREIGN KEY (unite_id) REFERENCES public.unites(id);
 R   ALTER TABLE ONLY public.geo_systemes DROP CONSTRAINT geosystemes_uniteid_foreign;
       public          postgres    false    3596    270    228            /           2606    665295    mois mois_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.mois
    ADD CONSTRAINT mois_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 G   ALTER TABLE ONLY public.mois DROP CONSTRAINT mois_frequenceid_foreign;
       public          postgres    false    227    3454    234            0           2606    665300    mois mois_trimestreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.mois
    ADD CONSTRAINT mois_trimestreid_foreign FOREIGN KEY (trimestre_id) REFERENCES public.trimestres(id);
 G   ALTER TABLE ONLY public.mois DROP CONSTRAINT mois_trimestreid_foreign;
       public          postgres    false    269    234    3594            1           2606    665305 n   r__titres_types__etapes_types__administrations r__titrestypes__etapestypes__administrations_administrationid_f    FK CONSTRAINT       ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations
    ADD CONSTRAINT r__titrestypes__etapestypes__administrations_administrationid_f FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations DROP CONSTRAINT r__titrestypes__etapestypes__administrations_administrationid_f;
       public          postgres    false    3408    210    238            2           2606    665310 n   r__titres_types__etapes_types__administrations r__titrestypes__etapestypes__administrations_etapetypeid_foreig    FK CONSTRAINT     �   ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations
    ADD CONSTRAINT r__titrestypes__etapestypes__administrations_etapetypeid_foreig FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id);
 �   ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations DROP CONSTRAINT r__titrestypes__etapestypes__administrations_etapetypeid_foreig;
       public          postgres    false    225    238    3448            3           2606    665315 n   r__titres_types__etapes_types__administrations r__titrestypes__etapestypes__administrations_titretypeid_foreig    FK CONSTRAINT     �   ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations
    ADD CONSTRAINT r__titrestypes__etapestypes__administrations_titretypeid_foreig FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 �   ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations DROP CONSTRAINT r__titrestypes__etapestypes__administrations_titretypeid_foreig;
       public          postgres    false    238    3572    264            4           2606    665320 p   r__titres_types__titres_statuts__administrations r__titrestypes__titresstatuts__administrations_administrationid    FK CONSTRAINT       ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations
    ADD CONSTRAINT r__titrestypes__titresstatuts__administrations_administrationid FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations DROP CONSTRAINT r__titrestypes__titresstatuts__administrations_administrationid;
       public          postgres    false    210    3408    239            5           2606    665325 p   r__titres_types__titres_statuts__administrations r__titrestypes__titresstatuts__administrations_titrestatutid_fo    FK CONSTRAINT     �   ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations
    ADD CONSTRAINT r__titrestypes__titresstatuts__administrations_titrestatutid_fo FOREIGN KEY (titre_statut_id) REFERENCES public.titres_statuts(id);
 �   ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations DROP CONSTRAINT r__titrestypes__titresstatuts__administrations_titrestatutid_fo;
       public          postgres    false    261    3562    239            6           2606    665330 p   r__titres_types__titres_statuts__administrations r__titrestypes__titresstatuts__administrations_titretypeid_fore    FK CONSTRAINT     �   ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations
    ADD CONSTRAINT r__titrestypes__titresstatuts__administrations_titretypeid_fore FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 �   ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations DROP CONSTRAINT r__titrestypes__titresstatuts__administrations_titretypeid_fore;
       public          postgres    false    239    3572    264            7           2606    665335    regions regions_paysid_foreign    FK CONSTRAINT     |   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_paysid_foreign FOREIGN KEY (pays_id) REFERENCES public.pays(id);
 H   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_paysid_foreign;
       public          postgres    false    3469    241    235            8           2606    665340 P   substances__substances_legales substances__substanceslegales_substanceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances__substances_legales
    ADD CONSTRAINT substances__substanceslegales_substanceid_foreign FOREIGN KEY (substance_id) REFERENCES public.substances(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.substances__substances_legales DROP CONSTRAINT substances__substanceslegales_substanceid_foreign;
       public          postgres    false    3490    243    242            9           2606    665345 V   substances__substances_legales substances__substanceslegales_substancelegaleid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances__substances_legales
    ADD CONSTRAINT substances__substanceslegales_substancelegaleid_foreign FOREIGN KEY (substance_legale_id) REFERENCES public.substances_legales(id);
 �   ALTER TABLE ONLY public.substances__substances_legales DROP CONSTRAINT substances__substanceslegales_substancelegaleid_foreign;
       public          postgres    false    244    243    3496            :           2606    665350 6   substances_legales substanceslegales_domaineid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances_legales
    ADD CONSTRAINT substanceslegales_domaineid_foreign FOREIGN KEY (domaine_id) REFERENCES public.domaines(id);
 `   ALTER TABLE ONLY public.substances_legales DROP CONSTRAINT substanceslegales_domaineid_foreign;
       public          postgres    false    221    3439    244            ;           2606    665355 B   substances_legales substanceslegales_substancelegalecodeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances_legales
    ADD CONSTRAINT substanceslegales_substancelegalecodeid_foreign FOREIGN KEY (substance_legale_code_id) REFERENCES public.substances_legales_codes(id);
 l   ALTER TABLE ONLY public.substances_legales DROP CONSTRAINT substanceslegales_substancelegalecodeid_foreign;
       public          postgres    false    244    3500    245            <           2606    665360    titres titres_domaineid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_domaineid_foreign FOREIGN KEY (domaine_id) REFERENCES public.domaines(id);
 I   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_domaineid_foreign;
       public          postgres    false    221    3439    246            =           2606    665365    titres titres_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.titres_statuts(id);
 H   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_statutid_foreign;
       public          postgres    false    261    246    3562            >           2606    665370    titres titres_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.titres_types(id);
 F   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_typeid_foreign;
       public          postgres    false    246    3572    264            ?           2606    665375 1   titres_activites titresactivites_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.activites_statuts(id);
 [   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_statutid_foreign;
       public          postgres    false    247    205    3390            @           2606    665380 0   titres_activites titresactivites_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_titreid_foreign;
       public          postgres    false    246    247    3503            A           2606    665385 /   titres_activites titresactivites_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.activites_types(id);
 Y   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_typeid_foreign;
       public          postgres    false    206    3392    247            B           2606    665390 6   titres_activites titresactivites_utilisateurid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_utilisateurid_foreign FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateurs(id);
 `   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_utilisateurid_foreign;
       public          postgres    false    247    271    3601            C           2606    665395 `   titres_administrations_gestionnaires titresadministrationsgestionnaires_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_gestionnaires
    ADD CONSTRAINT titresadministrationsgestionnaires_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.titres_administrations_gestionnaires DROP CONSTRAINT titresadministrationsgestionnaires_administrationid_foreign;
       public          postgres    false    3408    248    210            D           2606    665400 W   titres_administrations_gestionnaires titresadministrationsgestionnaires_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_gestionnaires
    ADD CONSTRAINT titresadministrationsgestionnaires_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.titres_administrations_gestionnaires DROP CONSTRAINT titresadministrationsgestionnaires_titreid_foreign;
       public          postgres    false    246    248    3503            E           2606    665405 T   titres_administrations_locales titresadministrationslocales_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_locales
    ADD CONSTRAINT titresadministrationslocales_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.titres_administrations_locales DROP CONSTRAINT titresadministrationslocales_administrationid_foreign;
       public          postgres    false    3408    249    210            F           2606    665410 P   titres_administrations_locales titresadministrationslocales_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_locales
    ADD CONSTRAINT titresadministrationslocales_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.titres_administrations_locales DROP CONSTRAINT titresadministrationslocales_titreetapeid_foreign;
       public          postgres    false    254    3538    249            G           2606    665415 ;   titres_amodiataires titresamodiataires_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_amodiataires
    ADD CONSTRAINT titresamodiataires_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.titres_amodiataires DROP CONSTRAINT titresamodiataires_entrepriseid_foreign;
       public          postgres    false    222    3441    250            H           2606    665420 ;   titres_amodiataires titresamodiataires_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_amodiataires
    ADD CONSTRAINT titresamodiataires_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.titres_amodiataires DROP CONSTRAINT titresamodiataires_titreetapeid_foreign;
       public          postgres    false    3538    254    250            I           2606    665425 0   titres_communes titrescommunes_communeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_communes
    ADD CONSTRAINT titrescommunes_communeid_foreign FOREIGN KEY (commune_id) REFERENCES public.communes(id);
 Z   ALTER TABLE ONLY public.titres_communes DROP CONSTRAINT titrescommunes_communeid_foreign;
       public          postgres    false    251    3418    213            J           2606    665430 3   titres_communes titrescommunes_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_communes
    ADD CONSTRAINT titrescommunes_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.titres_communes DROP CONSTRAINT titrescommunes_titreetapeid_foreign;
       public          postgres    false    251    3538    254            K           2606    665435 1   titres_demarches titresdemarches_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titresdemarches_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.demarches_statuts(id);
 [   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titresdemarches_statutid_foreign;
       public          postgres    false    215    252    3422            L           2606    665440 0   titres_demarches titresdemarches_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titresdemarches_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titresdemarches_titreid_foreign;
       public          postgres    false    246    3503    252            M           2606    665445 /   titres_demarches titresdemarches_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titresdemarches_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.demarches_types(id);
 Y   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titresdemarches_typeid_foreign;
       public          postgres    false    3424    216    252            N           2606    665450 I   titres_demarches_liens titresdemarchesliens_enfanttitredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches_liens
    ADD CONSTRAINT titresdemarchesliens_enfanttitredemarcheid_foreign FOREIGN KEY (enfant_titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.titres_demarches_liens DROP CONSTRAINT titresdemarchesliens_enfanttitredemarcheid_foreign;
       public          postgres    false    252    253    3529            O           2606    665455 I   titres_demarches_liens titresdemarchesliens_parenttitredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches_liens
    ADD CONSTRAINT titresdemarchesliens_parenttitredemarcheid_foreign FOREIGN KEY (parent_titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.titres_demarches_liens DROP CONSTRAINT titresdemarchesliens_parenttitredemarcheid_foreign;
       public          postgres    false    253    252    3529            P           2606    665460 +   titres_etapes titresetapes_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titresetapes_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.etapes_statuts(id);
 U   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titresetapes_statutid_foreign;
       public          postgres    false    3446    224    254            Q           2606    665465 2   titres_etapes titresetapes_titredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titresetapes_titredemarcheid_foreign FOREIGN KEY (titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titresetapes_titredemarcheid_foreign;
       public          postgres    false    252    254    3529            R           2606    665470 )   titres_etapes titresetapes_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titresetapes_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.etapes_types(id);
 S   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titresetapes_typeid_foreign;
       public          postgres    false    225    254    3448            S           2606    665475 H   titres_etapes_justificatifs titresetapesjustificatifs_documentid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes_justificatifs
    ADD CONSTRAINT titresetapesjustificatifs_documentid_foreign FOREIGN KEY (document_id) REFERENCES public.documents(id) ON UPDATE CASCADE ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.titres_etapes_justificatifs DROP CONSTRAINT titresetapesjustificatifs_documentid_foreign;
       public          postgres    false    219    255    3432            T           2606    665480 J   titres_etapes_justificatifs titresetapesjustificatifs_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes_justificatifs
    ADD CONSTRAINT titresetapesjustificatifs_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 t   ALTER TABLE ONLY public.titres_etapes_justificatifs DROP CONSTRAINT titresetapesjustificatifs_titreetapeid_foreign;
       public          postgres    false    255    254    3538            U           2606    665485 ;   titres_incertitudes titresincertitudes_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_incertitudes
    ADD CONSTRAINT titresincertitudes_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.titres_incertitudes DROP CONSTRAINT titresincertitudes_titreetapeid_foreign;
       public          postgres    false    3538    256    254            V           2606    665490 +   titres_phases titresphases_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_phases
    ADD CONSTRAINT titresphases_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.phases_statuts(id);
 U   ALTER TABLE ONLY public.titres_phases DROP CONSTRAINT titresphases_statutid_foreign;
       public          postgres    false    257    3473    237            W           2606    665495 2   titres_phases titresphases_titredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_phases
    ADD CONSTRAINT titresphases_titredemarcheid_foreign FOREIGN KEY (titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.titres_phases DROP CONSTRAINT titresphases_titredemarcheid_foreign;
       public          postgres    false    3529    252    257            X           2606    665500 /   titres_points titrespoints_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_points
    ADD CONSTRAINT titrespoints_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.titres_points DROP CONSTRAINT titrespoints_titreetapeid_foreign;
       public          postgres    false    3538    258    254            Y           2606    665505 D   titres_points_references titrespointsreferences_titrepointid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_points_references
    ADD CONSTRAINT titrespointsreferences_titrepointid_foreign FOREIGN KEY (titre_point_id) REFERENCES public.titres_points(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.titres_points_references DROP CONSTRAINT titrespointsreferences_titrepointid_foreign;
       public          postgres    false    258    3551    259            Z           2606    665510 2   titres_references titresreferences_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_references
    ADD CONSTRAINT titresreferences_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.titres_references DROP CONSTRAINT titresreferences_titreid_foreign;
       public          postgres    false    260    246    3503            [           2606    665515 1   titres_references titresreferences_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_references
    ADD CONSTRAINT titresreferences_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.references_types(id);
 [   ALTER TABLE ONLY public.titres_references DROP CONSTRAINT titresreferences_typeid_foreign;
       public          postgres    false    260    240    3485            \           2606    665520 6   titres_substances titressubstances_substanceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_substances
    ADD CONSTRAINT titressubstances_substanceid_foreign FOREIGN KEY (substance_id) REFERENCES public.substances(id);
 `   ALTER TABLE ONLY public.titres_substances DROP CONSTRAINT titressubstances_substanceid_foreign;
       public          postgres    false    242    3490    262            ]           2606    665525 7   titres_substances titressubstances_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_substances
    ADD CONSTRAINT titressubstances_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.titres_substances DROP CONSTRAINT titressubstances_titreetapeid_foreign;
       public          postgres    false    254    262    3538            ^           2606    665530 7   titres_titulaires titrestitulaires_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_titulaires
    ADD CONSTRAINT titrestitulaires_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.titres_titulaires DROP CONSTRAINT titrestitulaires_entrepriseid_foreign;
       public          postgres    false    222    263    3441            _           2606    665535 7   titres_titulaires titrestitulaires_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_titulaires
    ADD CONSTRAINT titrestitulaires_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.titres_titulaires DROP CONSTRAINT titrestitulaires_titreetapeid_foreign;
       public          postgres    false    3538    263    254            b           2606    665540 P   titres_types__activites_types titrestypes__activitestypes_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__activites_types
    ADD CONSTRAINT titrestypes__activitestypes_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id);
 z   ALTER TABLE ONLY public.titres_types__activites_types DROP CONSTRAINT titrestypes__activitestypes_activitetypeid_foreign;
       public          postgres    false    3392    206    265            c           2606    665545 M   titres_types__activites_types titrestypes__activitestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__activites_types
    ADD CONSTRAINT titrestypes__activitestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 w   ALTER TABLE ONLY public.titres_types__activites_types DROP CONSTRAINT titrestypes__activitestypes_titretypeid_foreign;
       public          postgres    false    264    3572    265            f           2606    665550 k   titres_types__demarches_types__etapes_types titrestypes__demarchestypes__etapestypes_demarchetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titrestypes__demarchestypes__etapestypes_demarchetypeid_foreign FOREIGN KEY (demarche_type_id) REFERENCES public.demarches_types(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titrestypes__demarchestypes__etapestypes_demarchetypeid_foreign;
       public          postgres    false    267    216    3424            g           2606    665555 h   titres_types__demarches_types__etapes_types titrestypes__demarchestypes__etapestypes_etapetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titrestypes__demarchestypes__etapestypes_etapetypeid_foreign FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titrestypes__demarchestypes__etapestypes_etapetypeid_foreign;
       public          postgres    false    267    225    3448            h           2606    665560 h   titres_types__demarches_types__etapes_types titrestypes__demarchestypes__etapestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titrestypes__demarchestypes__etapestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titrestypes__demarchestypes__etapestypes_titretypeid_foreign;
       public          postgres    false    3572    264    267            d           2606    665565 P   titres_types__demarches_types titrestypes__demarchestypes_demarchetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types
    ADD CONSTRAINT titrestypes__demarchestypes_demarchetypeid_foreign FOREIGN KEY (demarche_type_id) REFERENCES public.demarches_types(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.titres_types__demarches_types DROP CONSTRAINT titrestypes__demarchestypes_demarchetypeid_foreign;
       public          postgres    false    266    216    3424            e           2606    665570 M   titres_types__demarches_types titrestypes__demarchestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types
    ADD CONSTRAINT titrestypes__demarchestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id) ON DELETE CASCADE;
 w   ALTER TABLE ONLY public.titres_types__demarches_types DROP CONSTRAINT titrestypes__demarchestypes_titretypeid_foreign;
       public          postgres    false    264    3572    266            `           2606    665575 *   titres_types titrestypes_domaineid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titrestypes_domaineid_foreign FOREIGN KEY (domaine_id) REFERENCES public.domaines(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titrestypes_domaineid_foreign;
       public          postgres    false    3439    221    264            a           2606    665580 '   titres_types titrestypes_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titrestypes_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.titres_types_types(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titrestypes_typeid_foreign;
       public          postgres    false    268    264    3591            i           2606    665585 )   trimestres trimestres_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.trimestres
    ADD CONSTRAINT trimestres_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 S   ALTER TABLE ONLY public.trimestres DROP CONSTRAINT trimestres_frequenceid_foreign;
       public          postgres    false    227    269    3454            k           2606    665590 T   utilisateurs__administrations utilisateurs__administrations_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__administrations
    ADD CONSTRAINT utilisateurs__administrations_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.utilisateurs__administrations DROP CONSTRAINT utilisateurs__administrations_administrationid_foreign;
       public          postgres    false    210    3408    272            l           2606    665595 Q   utilisateurs__administrations utilisateurs__administrations_utilisateurid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__administrations
    ADD CONSTRAINT utilisateurs__administrations_utilisateurid_foreign FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateurs(id) ON DELETE CASCADE;
 {   ALTER TABLE ONLY public.utilisateurs__administrations DROP CONSTRAINT utilisateurs__administrations_utilisateurid_foreign;
       public          postgres    false    272    271    3601            m           2606    665600 H   utilisateurs__entreprises utilisateurs__entreprises_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__entreprises
    ADD CONSTRAINT utilisateurs__entreprises_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.utilisateurs__entreprises DROP CONSTRAINT utilisateurs__entreprises_entrepriseid_foreign;
       public          postgres    false    222    273    3441            n           2606    665605 I   utilisateurs__entreprises utilisateurs__entreprises_utilisateurid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__entreprises
    ADD CONSTRAINT utilisateurs__entreprises_utilisateurid_foreign FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateurs(id) ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.utilisateurs__entreprises DROP CONSTRAINT utilisateurs__entreprises_utilisateurid_foreign;
       public          postgres    false    3601    273    271            j           2606    665610 .   utilisateurs utilisateurs_permissionid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_permissionid_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.utilisateurs DROP CONSTRAINT utilisateurs_permissionid_foreign;
       public          postgres    false    236    3471    271            �   �   x�=�K�!D��a�D��;*�QB�?ǟ2kV/R!��ڎ�(�ԑl�ɽ����s���[j�yu�^�����:�䢯)�����7���z�S2b����8{R��?I��ْQ��g*� ׹#�)��#�ԗ���'�'}�җ����Tp7�?��2�-RȐ����ܗ~A�g�3��<ؗ�ʹ�q�}���^�N�k���A{9��?�R�/�$      �   �   x�u�I� E�p��˻��"����m�(��L��_�
j&׎/�쪽!�1����L2��T��i���m|p߳���%�����ܐm#tхă�[���)~�,� ��j:�dD|F	��e"%Ej�P&����˹�m��  O ���D������\��"sTPPA�
���ϧcu��M4&����.;k����      �   u  x�E�An�0D�u}���é� eKPE��7�4߻���g���a�[�vo��){Q�����K:���WE
ԑn�C�yTQC�u�ydq�8Y�,N�}���w�L:�`o䛚{e���V����TC�u~��f/CQPE
��f/cF'�����$�^>�����){�|�ܛ��T�"i/{��`֑n�^�B�9�f/��4�u�ydq��e�ߒ {y~?V/��S
�^�$�.){�*j��ԑn�^����2�#�#�����dqd/��X�#��){�|{���H5t��C��9�^����2H�e/kF'�����$�^���Ջd蔂�W>��K�^�������˜e/KQPE
��5#�����dq|�o���. q      �   W   x����  �s;�8�(Ր���gb�w|�:��,l��,,�xXRtx�I�Oh{M�������fi
gXx���K�"=      �      x��]�n������؋HƲd{�p|�H��@�� 
8=����^v���`�}���*Y�����.�&�$����.v��h4������d�YE�B����T1����m��Гn�cW�TL�cr���ׯ�z~��;���2�K� �E |��b��^��[���R�V%qV3�~V�{ņP��U����'Y��:Y� �Be%#�C1����{�����y9�q4Y�O<�����d�i�"@�
滁���	sd�"6Jr��W�=��2_7�$bgc�|݈#0P�v�����7��w�x��0`uX�L�423����d�
ȀɄ"���X�`��j�S�4i��G�=/Q8�A;�$�%��=iI���bI��AS�H�ӟ��N2��(��p�PN�5,S�@^�$�ޠ��c���@7�o��YGU����P�Q���i�aDӛ>��k�2S����j�(ć"�W�8�l��r������)c	B���\�#jg� "�>�E�C��'��Oxr���!\Q�E̹�]�ڡ9��P*�"�k��i.�-�P�������Ɲ؝n[$�����k�P+�Z��Į�h�m������50Mb�
&�	�?������h,t��cQ�u,8HM F��ƿp$(&�|ߚ_Ѐ��X@�c
��z�LjPk�=�\Bhg0w#�Q��P�H>NoL���m�(-kGc��[w�M�(�A�����L&�B[�ll87����*1�HŤSjk�����Q�w��E�S��I�yCcg�o��Gx�٥�ߜ�?_]�q�}������ą;ꈝ�Lv���]��@��>8O�'vF��Q��oN�>�>;ޅ?��^�����wt��)=;��3,�}����ׯޤݲ��gT������Yp!+�ր�J!���=74�{��A�����1p�lv��<?��_�{�������:�U`��-���������тP@;���z��sl��8�0��IF�[H
�f��H��D���� ˑ#��Cl���>�p�y0B&�
�9�
���_j��tF#D��Kkjj���:{DK����
8���v(�
K2$A@��h!�N�
8��b �T�8
���Le%J���q��VD�Fҿ����4�Q�<C���+)�D�9�S2B	�u`�2������9++��B��H��(��ޟD>'��0���G�x����W���(E*^t탵�׏�b���M���4��٣P<D�xE����͇�(Q*~MK��|��(�x�x���]�r��G�x�b���a�ޣh<D���%���G�xH��j��9y4��AmyNo�G�xp�AD^��T�x�q�YU�ėt��VE�z��^�d�<+�12�oY�0�霌F�I�G�ħ��Mo&ӛ4g��\}�p�W5Ì;�;�qt7���rK&�����b|�e.�7
f�IDn��5�,�ح��Jt����L<�T�=���0~'bg�I6�a��(���{���y�x�Pȃ �\Ba�e�~#,�r�(	Sb��O�n���RX�^e�rE�9����	t�߃$ ����eG�_�""��fD��E�,���ap��;й�i6�P����4841f����!O�Θ�f�2e�	�*d�k�HLԈA��qQ'l1�a�0	H�I8�,2s$�L��ރB�XW6�6�o�~a=P�\@�C�6��	�7�'&��Jй�Ն��O��ZL�k�P>ɺ >�M�gz�q��3o��̑IC��[vr|��y��"M���?��p	@���i�SEk������wN�9��r2`^�I�`B'B�&� ���f�e��m��j���oj]��ܟ��@�'��i-�QHOꉆ �TQKU�j�Τ2vз���%�pz\�a��9 ��g�]/���艽<�o�پ].�X��D3wL�4�<HJ>�5aq.]�Ö#�z��I��6q�/��DC�<7ȖΑ���"�Evi>�����+T�k-^s��f���~_U�E�r���Q�jT�\�8��b7��i�>T���o������[ד��\{�X�6�N%lE�$�-�^+k���B&w�[QAG�d��.��ȓ/�:���o]��[J�z����ţ.�ޜ��ur����á�/��foU�ү����m�At�[R�kBu����\��i�^�����C�JN$L���0,}�&���,{fUH�h:5�/�m�����:�����0{�J���3L(n�U��z���1a��B�b���y�p�c5��U�*�@��O\�
zt���6���T�1t�VL�����}Ѳ>���ցMs2�7� �n?��4B�4k�x��ɢ�~���Q��t�+J��`���R��6�j�gm������X�v�ϭ�`3�I�N!Jxt}i��YX�ն�Z�K/���L��)c�w��˒X�Y���v����Uۘ��åw{PVR;C�Ј�.q���bLiD^	��ה��6��e_�q� �21�Hfc~�;��έ���)����R�-��$e"��#)9�&@"?�nN����W��ӛ����;W-�6� �����(ε�"�go>
hY1$)e�!�����v (�m�<�O[�7F]5��3��.�"Tr��`-�C��~&��N3Q�r�-Ex
c��`�8�6����(���t��n��1��9�J���Ba]����k;�T��-(t�����7}q)LFO\{�.�tZ�VP궢���X%�V�u�Ŋ��f���J+4j�p�:"G\/�^�e_|J��=�G�[�����_<�ޤ#X��m%�З(�=���mi�(3�Yf��
Щ9<���8��$7 �-a����?�r�؜���u��y/R&x�(�]=�~1}e7���;��_Ϟ	�V�n�^v�=m?�Gh�P����P�k����`׵��W�z#���j�z~�ݱ6�v
�R؄�`R�o���=yp�N�+w���zS�R��Gn��7������L��-��	���6��*�>`A�|"���Ύ9ݜ:D��HX�*mӆ�G�vJ&�+����A��f�F@Ti��:�T	�{e9�6���.�붷����9�ާݧ�:�.��P���rW�x^��(�[_ow�o����VQ�����@��jJ��ˍ���?̏��Azs7�V۹U7�eب��O���+���J=]xr��i�e����j����.h������%�U�%�X�����d��3��uS�_�ګ}.v��\|(#o%kQ6�>-���Ԍ�-+\��\9#�GRoC%Z
�y��mPzP�m��T�򥌋��f�����'k�}N���KJe��]�T@d��Q�2�e�q���
�=�����5�����$�!@�J�km )S�$��V' �}�����iQU�{;�^x|߶K����W�~e�
�,���	º/�j|:�[TN����2��Gݛ_e�4����jз��a��A��^��u{oM@j!pq��w({�Uٴ\WĪD.�Z��kf���H}�n(Ф{���-��(�7»1�>�5p���,<�u��I��̓k�����y�� �������'���Oz/Z�~h�ɸ;Y�k߹����s����v�����s�U�6��1�:��~��A���~���h�g]ǜW�_���Tmӌ)(a�
�:}'Ӆn���+yzԬ\�^�q�p�}��N��9���]3k��/��=�p5L`�^?M���2�/�-M���s]L�%�3מ��R��FA�-�k�W�>���w�u����	�?($��S���� �v�\B�Yt��.0�����!��y���#�N����v�	���/�/R��.�� ac8*� �;��Z5Hض������j`>�hք_���Oh�G�5��{����́��:g6q��I `�����k��=H0}������dJ�'	��C�����]���ƿxG!_V��A��q�c�w5.)�h�����/,PȑcO �  o�80a�'�~�xƺ�L���\�Qn���:�V��{j[��v-
"W���g@M�Sy%�U]ǚ��S��/���LD�y	�k"�:�O�P��&��atܕ�3�$B��|��(�e�>:��ͤ���3*���D�˵�}��U��ȊǗ$:���^ґ~b�7)hGՆY���:nf?�`f�5�:̄ �2.o�$ch�ʗ�����c��N��.�k��%.f碘�Q Y��]��5��"d	�T�㳈��Gdx�&#L:z>��p�r�*�Hg���$$�$i�`��m��?q�,�8�/`�3HIF�3�X1�'�+�C0��-�e+��F��!��&��ť�z|��>�zc�D�M�!�����	M�uJ j�C�vu'�������
�9�qC�C�ZtC��af��wV��qPu�qA8'�S���v�y��傔э*���Q��yX� E���r�O�Vt��"�"�z�K��g�s(��4����93�؁�Y��j�t�q��rݙ�eFM�[��>��
�~nץ�B7\�[�[wpV��U��l�ъ��$n�3:��(���`p۞/Vv������&:�K�˙�>�y�H	�=MòD������O:T��/�Q9� I�4 �zP�y	�� w��M��"��<�܃;����74ծ��o�Y�0M��C*1���Ig��Vh#	`�w����d���n�D��O�q��m4��K�R	,r��+�~3���̗�P_4��a�כ�	�:YF�ދ)m��Hx��j�{v�R�]m�nu<U~�L0�(L��z�S��3B��S�D�i���:�|��PP��큎��q�d��c�蚎��`����������ݴ_�2�2�V.)�J�w����Ӷ18���3J�0{���+D���7�i8s� �� 2WI$�Ĭ�Yv�I<�o�b�W��������K��Γ�9�M���_o��lnn�?�TV      �   y   x�m�A
�0@�u{��,��&�P
m��*�^E\�����P#��c`�jmR|I����B�B�،�� ~�ȠO�ԫ)i/� *�5T11��o�<�?��{.�s,�ye�p�vA{�}��S(im      �      x�+/*�,*/������ `n      �      x�sw�L/*�rQ�\1z\\\ 2l      �   �  x��X�r�>�O�S<Sk��?��ȶ�ݔ�R��9����
j@R3��%����b�D��)��ԦRŒ��_��u7��rf/�&�M+�̺�/J�Kr����V�����3WJ�9�� "#c��;��us�yL��m�`=���ϗ�߾}�S)��,_�����N+�3>X��f�p�/AⓀ�����J�i^��CE�^}�'�*�2�<J�5{����V��:/JPx.{�\�HR��a�Z�e�o�<��Qꝥ���պ#D�ˍP9,E���� <�4D�"Y��p3��8�[(�J�ѫ~� ���4����_<�|�nJ���!<5ܜ�J2y~A��+ ����Vs�-8�?�W�}���jK�;g���@M�5��V���<���=�O���WK�����w�3����6���?�z���\Zz���wc�"���/�5?�N���-~�>qC��$ԑ�u�����xa��@g�P�}�򫰹��I�N����O4Q$���ޢ�.�5wK�dj��#	��CȨ(;,�y����7��V��;r���#qDB��b|�8�k��6�.QwYVE)�}�J��PH��sD4r-����}��Sy��_+Q2�O���i���j�\�������H���ݐ�OH�Ѓ�r�*�+eO�\h�Cx�\�!uiG-�I�uh���r�	a�6� ��%W�n��Z�~��+���P��m4B�w�0��---�b�*�����ϲ	������>�A�Ч�,�J�>��V+�V��7(�n��%�G#� U���Z԰:��
�UB�I�|����)�72Ќ��W��
r+$�U�?����|����m9���Z�E���	��nt}y3��ݸ��к� �Ud
l�}�m�k�)l؁|p�H́�e��i�h�h����3?��C���u٠H] j�8��	�bjI�ۭϠ:���_�\��t�	���5��W7�:hW6��]̉K!p&L�¾g��n��%L1Q��[��&2�m
Y&�w��ī��p:vk�k����G����� R����-Z����W��@�A��\�Lȧ	�L���ǁ��ߣۅ��o����fUi��f D�vQ�R�΁ ϡ�mI'�������p���)og�˽ʍ��*k�S��4k� ���P��5Q��B�
��*�%G���3�����b��u������6\b ��\þϕ«T����^��Vp9�UG�����s�����1�R�K��`�*���i����el�/<2P{m쎠�����L�B_�c�x��w����J�L[�9���Z㼂,Zfx�a��n��@=���F�5���Ō>��1�m�`���&iL�B�3L@j�������Y�X��i��Zk7��Zߨ����!_�>�}@�{�޻ �V�7L����F�j��\���$f�V:q\7�Wzy�_�U�i���C�OH��z�70p��pyj�~lԋym�64�W�Ն�8ٟ��G4(	L��@���*�$�`��V�
%����0tPۣ'�c�o{��c:�b�%���7h�ʘ�kJD�i��2SnOW�L��X�sfۄ&*��'��nnCj~�/���9�zh��:`������혼b���PP�st����+(�I��j�KN0�t%��=��v~>��<LX�	�`���PP{�}\|zc2�'�x� �����ƾf�J	��fo>�����cS��� ��~(��lap�P�BK�R�7���^��or��KyZ~������u<�{���3���0����}N�ӌ���J���?J���4����{F�8,�jVxo��j &P@�e�N�
���
�{gl�����<��C}��CN(���|�hC�G�=�Z��]��'���01�z���b�z�5�hZ�"8:�qo�Ǐ��U�w3����Ѯ�E=���N C����!Q��u$ơ{�}�n����g�l�cw>8;;�cҥ�      �   a   x���	�0E���b�{��hn�!�&���Li���r�^������
S[:IN��M�[�2�2�5w��i	9�Q�B=LT�zq��* ��"T      �      x�3�L��;�2Dq��qqq 9�A      �   �  x�mV�n�6>3O��=�����4٦vj�A�{�m�*�.%���`��{�l�G��Տ�mQI�o��h�o&	?"�EY
��ޝ�rE��|~�J`�[���u��^hQ;�V}�J��'�7�eɏ�) �j����JKQ9Ɛ<�r!d��~BF[.�J-l<���\1ʀI��U%4"#�0U���ot����y��!-d�+ك��s~�fJ�ރ���n��y��dtp�(n�8��	������������8p`��&�:狒N�a#������k�d�8PF&�N�-�#�.��k���Λ�3�s���.�v��\�\�+I,��S<��Rɍ��J��2���w]p��[�*�q���¼۩A �P�A�m��}�ᕟŰ�J��0�)�)䦥��˼��?�ܼ8HJ�/�5��|��=��[n�BQp�V���)�E�MG��〹��OQ�{%��D�����Èܛ���( 1�9J�6�3�z)�IQ�i�ud����!�m@��=P�0�j�0��aS��g��<p$��0��AVn�3��̖���!,3�+��T�s�5��k5�L�|�
�.��Ю-��=*Լ�ܭ�N�3�9/���\쭬�Z������6�k�N4��8	d���r/��w>�T�p0���ÔJ�ߝ@�½&<9M����[��3|3T	���E�7�ŋ{r >��n����C�1�g�Dt�@:���e����~R��L�3ƂpgC�>�� ��y@,�K�?<ͪ�#�l O9�fZ���dƔ��u����Sf�X��?��4���Tf�Oc��+eָ:�Ja�&��SK����7� "�xW�).T�l!ZH��T�7k������'.���N��K��\�iB��C��1�nm�w7�;K��N��M-֧|AZC��Ϛ�#�"�$>�!�ʎ�:G{z���3�����$�:B6��"qvΒ JHn�uA�� ،�8��FS�8�C�{+�AȔtcU�r���|2��Z�+ �h�Tf���`�s����63��Lڴ�	�I��B�89AQH~5�QȜc�8�}*�[QV��#cS����f^{3a����.A�!�u��WJ�{�yl����F�3���r�o��4�P�9�k~�x;dn�{(��f���RIdK�$
O��'L}3�m�&�)z��9���h�)��;*�|�T����"�h�ib�+4V�v���n7�o5��%��^zc�^VU|�u/{#$d�WhgX�2�/�1���ȗ��N��R��3��8Z��GoN�3f�@�b��sl=Z���P�ص��n)�CuR�̻ۢ8��f�"�Y�{�v�����yF �d����b���O��u]`X}�柚`0vH����e��ipI8�wmG�jb���C�D�����	�������o      �   7  x��V�n#7�WO��	 ��ޥ;� @�v)����L�K�qH�N�6��.]�y�}�<I�R��lWI��2�������ġ{�%5��l�δ���UweSr9�dU��Š��YQ,�nKr����6I����.���}_�W��_~�~�:�X�F���[��\���r�ON��a��ن�	Ő�.�I|t�]6��Ho4�TW�(7�2\�g.�#��?�w��.K� ?YB���5`cz�����	���W��?xUR^�^#�-ܳ�GeMY�3�9�t�
����{5>x�M���Y�$�]G�	$-7��1`�Q,��)��8�Z�0�.w�˶.�~soR�uZϻ��1&��m=
ׅ�[�"�H�0X� �=�ΠN5T�G��I��"U���+d��E��2����uYr�aD�[x��=��!-�B����<��t�Ob��B3vS9]�����H�N��j m��Y�*ㇼ���Wn��>��W��E���4�	�1��f@�_�X��O|nrA���D�r-�S�K���0u���<��;j�I~�c�/�!�q�����?:H'E	IRB��n�z���E\w�r������:�V?t�vo��r��/7��b��0#��)�BD��|�S��������'^"E�[��f���J |󢰐T�B8��\Vw�1)N�ڸ�20��P�1s���ot�2��X�JHPH.���j���x�A��Bo�2��{;;4��7�-S�����ؽl=υƅ�ߑ�V�ic��7���{g���ό�:]����V���9��7�cg1R�se �l����y�T4���o˽�ch�ﻫ��r*)�ʅ�3/�ɵL�o�9^d��%�,��qn�gj�T��a�E�ڃL���%`����~�|H��X��zL�_#��b�V�;/9&O���:cpk竦Ț�AҌ���$k�-�v�������ԝ�~�0sF�=x�X���6j���/�U������ +_1�=��0����:i��������a��	�����ؓJ�N��{˽�fK�m��o���'��X,� z�
�      �   �   x�m��	�@E�R� d_�H�c��fpM�ÍE&N�!�Oz|QL@R�$����I��CTX�Æ:hơK6K�GO�588�����G��Al���� VY�LӎP�Z8a�<��݊fpF�'xh��.�Ӧ��6��늙</����M�ϖ����"�`&g&      �   �	  x��YMo��=S��/�&�4�d+���E����K�3j�d��c ��#@��!b��I^U5��ydl��Z"٬~����W��;[|xj�/�:�[՟>�ö6Z�ި
?�֨�������`�'�\R��6ʴj�_T�v�h�h]�?�St�Ϳ�c�{m�F5x��j�W�"o{�Wv�'o]��um+O�:<m�UqS����_���λ�ڵ[~�hkz����wynX�UZm��yo�L�n���U���&��˃
��mc��F	�������Jז&~�Q�p�J����h�5��o��U�n�������ߘ�]��������{�j^���|i�P�)�_/������{sM�*�Gˎ���� G��/�+z�����4�l3cM���@�c�����t'hO��٪��G�fܱ��)��Ԇz�ʱ��׌
�)5��vD��s�f�iu�UY�C]�h0:'bR�+�Ӵr��.��Ī9�'i}
q��ǫf�&C�w���:^}&B�����\'b$�m�I���?��p�j}j���t�No�[�W��N"e��n�w׿a5�����!\�&��s�vʑ��%GN��%d	�W�_P��&�,1�����H��B�j�@V��"vav9�_�y���I{�r��b��w!���uP��<�=0���ET��;M���T6�3?��c@� ��L?�H�)O���Vl�RT��\enmkh��)#��%A�!���bLw��i"v:(�����OF賰*��.P>�y��	�`���}�����K�3�-.��"v�fUX\h���p��{@���D+��3b����%J��4#u�ײ�!2\�VUl��C�t{}��]�7H�Ϯ%��ށ�96A��\�Kڶ�'�Bo�#��PTGH�����`=p�
|Nz�34ًv�B.&R��.B�iU���(��A�tf8ݴ�>Z��/��\���餗���42pŊNv�7��ͩS�o�]N+���b�g�*���!�(L�(�u��>�y�b����-�9z5D�L�0�{JR�>�p4�6��-&�o��C�	�
vv�9:��ەpW���=
H�s�}��#��r����s_&ڼ�_����ژ��'�g�L�՞׉�����jJ;d�NV4D���2�>��˫��U'�����-U�ѭP|�h܍�(s7B)Re��}��'z�[q��2���-y-X����RFŗ��ImGB�Aakj{TaXʵ�a�H�KC�ZX����_���lO���]1rz����jjz77S���э+���РtW�H�p�&)�5;-s!�����9��e?n
;O�!A��^soBA@�r�x��w��1m�1�F4GH�'HGw
h|���E��|�G$�=Ŏ��5So�>!x�C௘�	���[�nF�#�`��%�����y"R�p�ұy���v{cs�n�����̨������� � ���cW<}ຍ��uʖ�B�:S�17T�wq#�C̶��Tc)j.Rƈ C��������G#l�I$��tB96!j,ut���?�p=�u|p�1	��@&���vl;�Ŋb	�h��;��7_�����؂�V�4��ӯ��+d$�lC��ȥ��{+��>B8���WK�5)������	�𸣽^͗[�k��[�p�j������2�&����Pc�'�9O�e"F�t�c���6�S�?t��Wl����&�<�k���������ž�\���&�1����_UFj���D�6�4sT��%�=�n�s>
i˒�SI�����o���?hM��\����>�7x�z�m�#��;����pDl2nU�@dK�:����q���QK� �?���y"cȅڟ�G�m�����<����2 
H
��;"^�<�\"�ͻ5L�K��+�1Í�?��8�l��3yo�K:���U}����V�0
�sOs�f߬����d�bz��ʦ�s��W���eAmq�2�B�|�A2�T̈́'x�|#:r�ޥ���$�牢J�(82�'�	cҖ��$4T@�9�%�գ���{��}om�o���X��>���t�Ӈ!+KS�}�yȓ��b]B���g"|���jd��� ��hjl���1J'��Gef��t���zIp���"��}.����&0�&�~�9��O����~�H��A'�Zt�Oh��M���N��uv{D�T�0�H>��ᩢ�07&�<��	��p��R�xQ Q�i~���Ğ�L��i�Uw�1R3e��C��hэPpw�^�����G9��	$iaL�MD���2d�������oy8�o���tP�h�2��<�@�֛�Gxݙe]�H�μC;(7����o�M����kj@M���=�Ƚ,c��!�M���l8/�Ւ&������g�F��)�1�ٖՖl�|���������h�\x;��M:4G;�XF@ybI	��kP&)��L��]D�J���A��؍l6�����b~�����/�^$`      �   �  x�UV�n�8<7�"��f��Ǳ�u���F�%Í��,%�|�}�̏m55��GU��~TW+G��ە��|/��rd�U���wu����nt�ߏ�0 :t�g����q�q �`p̊�v��n7Nd1��L�7K-�hLV^�����A^{mT`��Ck�
�^�~(���m3���V��}-�����9ǈ�e��{e޴S͔���[ɤCüe���B�7�������cÒ���:=��˴ٽ��۱�:c"���;�6͇yp6�(���~�¸���ج76)����K��`�V��v�]^(���2��e���P����8㩙�M;�^V��z��Z��J�-�����������\"}�U�t�U�N(HT��{��_�v(9�����X�"��eGf��S�dh��?��*�h[wR�	}!��b�i�|)��	a����b�૿gܰa�=�/� �8Qé���.X"�tR�Ct	�J��3�t*%��okx)1���!\���t�l�Jg���Аtfc32�5 ᇬ�����W̄`ƀ�V�yWwX�)+��$��F��G3���R��VYGo��[�sG�\ �۷��;��G��`I#���)����8���-��>���3�c2��_�Z�C�g��ڗa��Gw�mP�����q���^K�����:�4Tc��UONsF�Qr�߻0EQ��^��<��vp�y3�������ᮮ��e^S��ݥ�)�c�_�N�er��Ï5��R���Xw���qV���,Kr%Z���t�#�]ì�`$�u�a�4& �Q��� �'`��y���T ��1W�����m;e��Q�wSk2 ��;�
� �@����$�q0+�`�r�i9{�,�`!�Q����x7�BfuvG�/��Bw�}�-�Y+ëTB)/*�@"�(��ej4?(�鏥v�,���+-""$
�zu���$fM�JE/~�+�N����r��S�ύY@R��)��C�(#�OB��-�0�h��}�+�^4L�\P���45w�D�W�j��vV3(����[�
`ޜ�a}A��E�ڽ\[�NN�G�^_��
��C<z}z����c_o�	$)�y�t5��6$i-�l�b�;�C ���5��] �-����rBk�Wv�S0��2=6лa'�+!GNٸ"/�S4XS�a�rzS�,m�=�d�8�R{ng�5~:0`�}�$A;|A[��M)���?k      �   7   x�s�t--�/�4�p�t+J�K.VHL�L�,,M�4�r�	ss��qqq ���      �      x��\Yo��v~��
���R-\��@�4�o�&�p_�dQ�M�p���5A�� ��6o�,�v�ͥ�v{ƞC�Ԭbu�wN��� ؈�ۙ�mN�(tyt�Ⱥ��/���eiW<�jQ���
�碮Ka��*E]��M.,x�~}�����'9J���|��yY�1"����>m�d�����sq�3[��,�qV���ի;+n,B�xu�Es���ţ�(c��V�[KQ.����D�:�%���E��?���k���;��E����	���������_��z�b&j���/+�VUD��N������z!��؂iUV&GX�-yY�|����/����6��f��F(�s��򦮗�?���{��$�iR��\��IR��$I�����Z���?Gi����}����.����2���k,���@Q�S��)&���^��{�����~_��r����]�-j����M�b7b��[&0m�L �����+���Od���aL�|8ڴ���\�4�`�r�Ckw{] �����¾�}�����t{�OWwE}#� D;�%���Ui�˥\�����_����h$���׷3`��i�c��R<>�V �w=Bvn���}xq��1 Ͽ���W4K��b�}���h�v�WD���صaa�Qx8����m[�QMV�h��	��P�e�n@c����^��V�|�+��M�?�xc-�"I�W_�r�rk[�)���N������˂Yy����|v�X~���eV�5���\JW�������䦄o=�2�9��:��C���b�9h��DQ<���%^ҧ8���6���)��?}4q1��@��3'V�uӦ�F��q;*��XP���^4�VW9��.ʴ2��kzqW~���͇�,"^�M	�3�!��* 9��h���r}�"%-F�_��z9�?롇�e�xЍEN=D���B���`�cdO-���	���2m�Xcl�N,�n���>vaj?VC]ß�yZO�<�����[Q���دE--����V�u�[)2�����.�\YWgW�58ƎO��loz��)��j�SB�3e{���v�3���
�$����d���X����6ҁ֚,@'I�)M�iہ��[��.��6�����z����m$���,��`��K��uY�M$	{h�M��#�[?���2p$��=��6���C���ȿ��&����c�mD����^�N��J��m��R�ȕ_,!a�� ۀ"G��g��`�^ݙ)*c�J�p�������M-=0���̭��4­�45�ρs֡	�	ӑ�0Lb��Md��%��&#����m77 łL8��M�\B�"�V����p{z_h���:�z���u#4�X�\�<7�]tH��i��7���@�� ��`�
I0ia3i<��6�q��m+Ӧ������;,m�0���۫��^���ٿ�y�F�[h�6���H���2MZ����'Y����s���
��ZDY�u�n\�b��a|�
^�6�sE( ���c�.t-�{%ʥ�����/V���	Rkz<�xJ�H��@rvL G�����7m7�H��i\ؤU$.��p���h�����9�Ȋ�Z�D�����_kP O}NT�"S��8mT�sQF�H3�Ig~֣���7��
x)��Lw���۳� �F}��>���I_#8ud���s̨+�sa�v�n�>e�9��<y�)K��� ��5Sv��<e����	A�F��m�Ak����Y�0M���;2��ò����B�nZG_�-�p���^���-@X(%�0�|ԃ��`����{6�kA�9��v�.��X� 0��]i�T��6�1w�Xx�>m��9A�~l���*c���D�����*a�\�\��HX�u�3Բ}��`��;�Z���V�������e_M�,��"���M�s~���)bo�熣)��X�w�i[sXV�f)̶�}}��ɴ�Qf�`�ei0�q�4�a"��Y	���yV�92�Z�L�^����%��Ӎ�b?-B�='d}W���.�<�1x�msx8#��mr���sq�C��|��4�����*_n3�֪&��S�$����Z5mS@LYZ������;u��m����ά�=���z=���%�Ʃ��<Ճf/����4p��{Ey���]�j�+ ȥ���Վ���'/�Q^?J8uY��ty��[�g�����+�H"�1��dۜ��F�e�kU�?�.���~���H�y�&Ũ�t�b��u��MB�8� "�v 2�T���g�D�>�&I̍�o���ꎘ�A;UF�eQ��f�Sn'����a��b��9ˏi�NW�$���Kmێi�Rw���?}�N+���X�������y2k:�ÃA�0�іb�ݴ�ݿh�>	��mk�2�� ]�6Q�^�|�D�Һ�>5��t�r���X�Y>����NDI�zq�jV���U5���9���C��n�^�c����>�^�*�m�/�Q����C<��c/9:����`3T�(���*�V�h���,Q�D�t� e��Yܨ�@a�t�7��Y-bS��$�F檉�W����^6���	�(G�$�4wIF��?Ir���܆3����u2�m�#ɸ��=�ou~� ��ȶ��\6�.��-�" A��3ϲ��ׇ��8���Q�?�6���Ӷ�i�m����#�rL(���kK6�|��X��|�0o��z�&���w�z� �D����ELPB�e3�C��1UM붩ELEỦ5��F��m�����0A��p�u������Н>�tl'"TnԞ�i���D7�/c��}6�����}۬$���E&�\��j���^'߁\�S`�Vz[���J�D��H�û7A:3�<��X�7���3�]���#�-W]��:�)j�Y�5 ^$0Ip�ɐ� `"KpK�Oҭ9����!�*"����MV�<[>�<x��'�hu���Nn��]�����	\PP�}ܴ�&�@�|����A�h�p\�8�_=)���(�VTE�� �8{�u#ɎTVu�����t�����u��u5�$��	Ѫ���cakCH��@�G!?!fJ��\G��������F�}@��K�+��wh�P޿�S�W��Ѷ��'��X�N-5�3��Z^V���#Cλ��n�vP%����F�H?oK%�\���13�p7N�/��@;|q���U����F��k�_�Hz�X���&�-ű�̊E(K����&I��6�@�	@�����'Y&*��Ύܝ�ow+"���T��$>���C���@T�#6�=_�>o��m�2�ċ�uմ�ѹ����h��g�;�ґ��;I@��,���6w~5�L:�:���'c��G�T�.�9���l�ՑJ����H��㖅�=�~�NjY��
������,�B�0]����Cw'Ӎ�l4tgxW��htAB�AW�͠+�/Gc��c6�m������n�a�Xhg�٤��th'`��ڨ�m7���Ǥ����x��w�ݢ��9�;��3K�-�Tm=�"Y�.ݼy��ɧ�R�WU�y���|L�3��B�&�� ȼ}��y~-@��i2̢ �!��i��1U���'+�=�E*��	�wn�Rm�ei�ba;�b��`Y��>���a{�TZ�\�t���);�Zuڬ�em��?Ww�A��[|AA��{��lu���J�F��%/M���4���� �)��;O��ٱ~3˚���|!�ܿ��������x�(�Q�+��i�����e�����}f>%`��{�:����s�R?S����w����Np¢���~�̰�0��'��Z�7)Q\�>H��"r�IKR��>H�kI=`�
�#�M�A/N���m3�[���j�y��5��`����A��j�oH���@c��6�fm��J�ru7�8��<͚��`�{�"v���fӻr�;fӓ�!lrӛ�]{�
n��=iˣws�@��9dr_�rR��0�� bkMo�v�> y  ��Y��4���|��d��D�!�h!�{{�$/G�L��0"��Si�v�n���t�$��Ppωh�Ph���&�PAN*��4��m������^���#��;�j:�]b	O����նF�(����t0�`s��}��0ˣ֘�Ė�n�%^�y�++]-Oy�H{QU�Xf�`�ӟ��^<}����V!xXM�1��o&��&����>�ES���۵GdcKD$�8���;�Đ�C�����K��@�7g/�/�{�v�:� q��>m�&{���[07a�j��hY����]�v2?���P���u[���qZ�%&��'�^���To�T��,����VE�%�t��sur�ʛ�ny	�케~ޑ5��2yz�b��s��X�:�u���ݶM�~g n��O�n�s���u6u\���9�w}!���T�I&W�F��j���#��-���VR}������DS��d.�}�c�yĽ�����'�vc�C�ytF��B�ƌC�O�=� �S���vi2aʴ�O��ԧ�G1�a�~�>�Я����,;%,� t��_$<ޟ�ã��\eq��m�+�MTF>��8�P�LSU���ߔ�t�����%��+�T�~Td���|��7�K��      �     x��VKr�6]C�`y�]���d�*���m6�3j��x�kd�e�k�Mr�<`H��dgay�|����I��a�:���O�#��S]җ�щ�W�$9Q����c��a��^���M~d	�SO>i��O\|b0(���d�=�����C���gB�	6�-��h��N�뵰�+w�v�*�W���h�#�t���ɢ����r��Qol{����wl����0����z��ݡ0�� o�fw��=hS�q>���B��1���<��ӭ�o��>���h|R��%=�d��!�B�7w1K�.I�73DȨ;��i�A�pڈ�2&&p��ؾ��q��ko��p��?�U��o��gϱ5}`@��-����X��4�ua����:�{W:�0�̘�H2�)�>m�Y�ڙ��J��d;y���τ�G�j�蘖4����a;Z�Ms�A`��`��7�(��sz� 8�bV�$fYmle�ȝ��ǅv��h���1�f4�㱽�)�u��(�����PU)������J���He"�}FT]�9���l5֢ՍS�iV[7��܇��q:h���4la�%Vo�V����iF.v8���0 �S�Ŵ�����e�X��(ũt\h_�vd
��������4�AH_���#�M� -��e0�K��w���d�mQ7lֽLٮ���s�Px}4� �&H�A�5���}:��A�b�1��H)-y9�'˙-�Y�G���E�І�����yf�\�{����_�C����+�tP��=N$ڇ�~*��t�9`��*�e���8����v�!�Z�q1p1�Ixɸ��z$yk�׵�쩄<&�3�$�6斉 �Ob�ЫH�l�������T��GHR������5Ԥn���Icn��tw�nC�Ӟ\5�q�h�4��xbVo�<�ZU4�PY�&���G��&��!������*A�I
%�/��O���H��m���G��#��StBմ�������5����Zlھ$&�8=i�n����_��J�n��w��;          �  x��TK��0\˧�n6���� ��,u�~ؒ�Of�5ر�,��o�I���0yda3�������~��)����)�އ��'��LQ�r(�k3�&f&��g�Sҩt)oq<�[��'Oq�t��$��6����G��ޤ4O89�&��.D&�.��ʅ�i2��3X���F���F'�+^�)=�[����v��қ�x.�����y���2O+s\l�wk^�v��c�z��z�X�'��lC9�Ղ�����rm�%��m�I
k��/B�=9�P�*%�;S�|�[%��{%�d2��\TJ�P+�y��0�L%����|e����G��� 2o�%x�F�H�V�l�j��� .]���-d0=�Q{q��P�s[��B��āV�3@�V�j�ʆ�+)s�Lo���¿�gt�#M��F�h���機'Qm����p�|�M�c�V�iv
&yOq`��!v��,�䷈x� ؎�d�T���x~��ю����ݲ@�ќ
��7�����Xs|J��²{Sܲ\��ьU�H*���. ͵�V�m�J9؏fG��߰�9r��/@ w��?�NB�l�|!VC<6�%	 �*8�/@��ߴ�S<��{ )�F�c`�-K����J�-�tw�'��9�;cAn4y}�S���V�l`���q�ͺ��yڲ<;WNH1��
C�v�ò����yY�]��cmP��5ڦi~j��-           x��W�n�8]3_�]S 
H꽤eFfKK*%y���QZa+#��of�����\ʖ���4�8!/�s_�\޷�C)e�G�F*�\e�J�����ͬ~��z���-��Vu�X�e��8��a��O���rٙ����k]�f��?<��U�l�j>��($�a�[�Z�"�(>Ie.�Fv���Y��PX������?g��e��q݀:(J��)0��Tˈ�D��Od��&�<��[����q�of���������^��U;5����rzY_����q,��.�ɰ�-�R1�<�>�b�	mť�I"�������!��qΕLr<,�X%�~���7"/6��o�=���!Ãf=��N�;<�Q�j<*�6(%(R2�t�����)#�%Np��a��c	�Z@��K��P������Q,�Т�1��0n��.!!ʸ�9��* �ԇt�A��D��I$�J��X6�QS�\���Q�CR�x��/�}��. �C�a���@�o��j0N0B���Ew�Kh;u��B6�#pF�e.�y���Ř��j��gXW�f�Ϊ%5�z�y�����sbk���Z;Lp6m���eu�U�w�b�L�.�v�/��h�Efݶշ�Y�4�m��P\s��u���Ưo0?���B:H��]@��5�LL�LxyD�X1�S�����C)��3���Рqpou�)���ͧ�
�<�bT�Pv�bz��4.^�3*���!q���u�ܷ�!9��W�Խ*m�ኸm֏�C�X�j�6��������~�N4]�c!�[�e�N`C�Y�:ȡ*�[���*�}Y U�8Ti��2���"�D�S�Q�~�� nķ�z����#��Q�ֆ�ؖ��Q	��ڞ�T��ˎB <):Zڛ�ϵ�m1r�K����^��C慮g�T�}�6���w����l|b �6�|�j��v��;�c���
��&x��1��Ruc�u�c���[=�`jC�1���ѽ ��?# ���*)h� 4�@6 ��� d����,.%O8U�Y�U�ۍb��Z�]1�;���Z	�E��1#ұw���Q:�!��n�[��{�P�Z\Aͨ� ����*����^}\�5���$��M�6��m��f#�t�M�V$��.����rT*=�~� /:(k���[b^�Vm3�R?ԕ��[���<���<�G�P�@)�N�N���p+.��.`�������ˁГ�t��B�El�GyA[ �D�@H��8��F�z�S���J��Ð�"5�G�?Mu��H��7��(�c!�>0��c�M�{����0���՞��"�|�՚�ͫ�!4�����#�^�w��\��j�����ym��P�+�|9G��U[�zqWϺmcX�1����vr,�]&9b�9 M��RY0B�\�¬y��S�	ğ�n ����74�X�`��R� ��[p���I�L�z�S%�E���P01Ϧ��Wf��n4�c����=�2#�́��&���<�Erm���(�2�DbR�<l/����h��d         r	  x���ݲ�(ǯ�S�n'���t�c+��l�lg'Us�ث}��� 8ǲ��T�1����h����ߝ`��V2����l�)kwT�xC~�R��~����N�+S�����_~%�����{����uF�mf��eд0mv��?�
C}`䄅.���¾��X��g����b_"%�ڶ��bT�2�L�U�zK�Q}`�Z\�����M}�q�����@�������eKEU5L��Z�c5}*�{.%����ǡ/��<�þƾ�ñ��X���Ư�Ajv=�q�]���8Pr���E���\2�K�e� [&d�U#^��Ԡ"�-wj=�Wa����9.JV��m�g�����R�=���ҝ��Rn�y8E]�U�����r%`n�	����
.uV��׆v�L#*�:~K#�6�g=u����/nDC	҆��{�4B/G
n� m�ޮQ����FTr�zԟDO�FH�Ž�r����`i���
9^�j}
O$�:�F�Q�+F"����aN@#`�o?lDrb:�����!_�f!4����t[����fI�{#��k&�F�i��ӁZ���A)��a<�.�y�O�^w�yP�ν�a��WF� 9��<���Ó��y9@Ә�Z9���J.:!�&T.Z���17\�Os��2�}Q?#�p.\�S�����>�Y��ʆ��Ւ�Ӊp�J�`J�s����'P�H$�|���淝��=��D�����I���bj`�1���Lld�qB��\����A:+Xl�b�#�d!�耰f�����2���jh��++37|`^:�*�|PM�/�7F���2䊝����2�z#�.p,k˲��Y����c�Kɡ�v�n���	|kL2q�q��l��Eӛ��Hkk����[o�|��b�:oH� �'`Xr�I�"��@�D� I�p��|���1�3��L*�krQ��NΗHկ�z�9��vd�v?^�yCyݺ��r3JI�Vt݆�I7������-�*ƞ �%�\7��K��l��&�����&%or�s� �+�߻�
v	T���Wʢd�U~啀*�H�ž�ׁ�i����!�P!�+y�J~ɓ�%F����H�t�E���/AZ%�����a�d��\����Rr��I�:O'�t�)�b�C2���G���\)s�Z��+s����Bʬ��-�� N!#e��Q��ce+f��e���z�rfW]+��<�����Ve�\:��M7��l��22wh���ɪ����Uh�/�����|Va��tN�n��ʍ1A�n�X��t�:�,Hf(�D������)��FJ��"I�:4{�b��[	R��U�)�N}*�@9��+%Cw>N�C��o��Xd��
�S}X�/+\��ZY�����h�����`$��g�Nٿ�{��4��w����6KW�t0-�4�q�Ci8}�ȟe����e�U��6W1�����"^A+�����io���B���6�I
3�K�B)�����"��t�M^�;��|^j%,�-x�Y����T�%��(;��Ug Afm`��$��.r o��< ����Mf�:�xr�H6���< �'B�i>w��g��}8��A�V�a_?��ixC��7��_ڗ$]C�n��0���6tcW\��bcK��K�����f�����Z6u�ӿ.��9@\)��̡i<:u���0��yZi�'�pPI����;_J&�)�b�sR}�5&��5���W;>��TS�d�"�-QV������>!,!�Κ%�H�.y���o�/��BĞ�ca!B�h.����=��¾~�	�0��V_5��^��~�gu(7w�gufW��K1�Ԙv����ܻ_��&��g��dͯSP�3^EZ�1q�	�r5����#h�V�Qh�J����B	ׇY�cF�.����ttvgP��#���{	Ty��{Ty�}8 hF],�t�W����u��Bgp�:k#� �g5	u�ܯ�> ��~�ݤ����%�^o��!i�z�f��~�>�N���B��� ��Zc�Bk�F��,U�C˲v�|j�!���2��^���O	*�;No�ou�p�LI�W��AJHM���T���\�v�y��?.��+�Z81d$|��5������K��׭?+��S���Ürx�ߠ�W���!���@/��3��P=J���eW��O*[{	�)������,�ȗ��t�N�y7�dl\)�o��8ֶIi*�S��#�G��lZfA�f#��?��㿣\~�ȏut�������7|��S�cn�F)��|�&�m�s�\x�$��d?U�iy�4���NО�笖�
���P��njc���EZ�� �
�&�$i�̨�<:��ԽQ4���ry�q����Dە�z�ܡ�Z&ry̑Tץb��5B�?�|���.�M         �   x�}���0D�R��!�i�
r��1���5��4���wz��Zr`�E�.�1�H�@��8�K�A�d�-X�+l�Ґk�tmy�ءU���6�Nc`8</�⤁=�l��Ɵ�׃ֹe���W�F��^;gwB,��I�r���!�T~3�#+d:�V�)*�P�(��RP߷�̳?�V�� `,|         H	  x��Z�n7>�����8�%H��{,;�"�%���(6gD��l�g� 0��>Bn{�r�7�7ɓlU�{�����Yd�XXi�Y�b�W_�)�f����\L�_M�&������^�W�|u_���\d�"��		5ʈ���x7 {�!;;<z�x?�#g'��J�j�RZzǼ�F��}&�R�M�
�=w��!g6���߹�*�?��t�3�����O��?�9��)��R0x}�*]6�^n5�}bI�o]���Ā�scV���ʬ���$�hƹ+�t��5���r#+v5��|��7�<7eCJ�J�06����x������_�x4�aLp�e���V�1Sr�٠ٟ���ɧ=	�Ϝ\F`��K��1�	X٪�X�*�ǵШ� ��=p��k������)�j�O*&��ln`j47�  A�/��8j�D���kS�'lf�A����������g���/o�'�Ԋ��o�A/��?�1�ϲ�m��e��~��0��3x�i���QX�  ؅� ]]�^ɏ~u/��h#����YfmY�|��\�&[�z9b:�E)��* �."�����7}-�=�yv�I.
˻"���=<��)���ڛ���+]��@6c�k��q�Y�] �b��u�����Gk�i��=D��<����$HK.�Ȭ�0�D�����P���6v�j�ǅsk d�Z���0x�l��Юu�yk
���ճ8&az��7����Y�@���M�Ku��@j�սc�`(�r�3A;�܃b���:�F�v���KĐ�q�a6�{4@1TEHA�Ez!��\l���:=�X/��4;J槜��9�ے�l8=AЀ`<i,K��iJ�&����u��(�~���@�Kv#�-6�O�Ҭ���1�Mٲ����!u��i`>� 4���@%3A}�e(YS�<�z���e���^��c�S�l��V�xD�rR��~!�ͷ)��bP.�ޯ+�>.?�#2<j�F
��_S�ѵ�w�,%d帕�
��[� ^���HQ-C�	�29�A��q�O�_
�|��3l��5����@�'t�D����E�EL���h��I�{�nHc_t��L�������s@�����9��9ބ9v����| �	�.m�PD:�V��T3ӳ"Q��'^�K���	\������V/Y!�:V>��d���.�qDӐgÓ��՛/˃z��kȑ��8�擆���Zq(�Tk�c���7�d9dJlW�פd�,p���4�u�$T��q2�*,R�8�@U��Z$�.�$4� D$�� �tI�ִ[F���B;;KO�O�U�tt��5r�m_٨��7������vr>T�.;�@d�=� #tg���B֬}�P��p��ǟ? �� 5ؔ�е����uԵ�RB���(���Np�c�DJ��DJϣHѠ-�t�2���	��9N��IO�y{2鼋5������h�0?zF�9)?J+��Z�ja�c�?�c4g�I�CXUFF�g�%������t�u�e}��l��,�kB&��-���g�aհ���WF�d*Lj��V�B/������my�!b�a�[�%��W�JF68%��Z���&r&�HO��C����[�N8J�(��ksm2iH����k>"(�Mri��b�;�����.)�?�����תH<�J�9hU
�����b���W��n�ԩA*�0�����Z�>���8��(:{���2�����@ud�������J�3s�94��Ss�����k朥�𘉒�⬪Z(���'c	�C_8L�!�������1(��ClLC�i��DeJPPF����xpE*�y`�"�~hXʞ��m�m�q����u�}<��{��t�0P��zWm#�]�x����1}$����@4Z�Z���Y���As%���6�ז�N�E����VS1NӀ�(�����5 �vBg��l�����lx�J,�g�.�I<���7��Zm�~�,���}l@<�2��<��}52wGQǔ��BԢ�+n4��_�h��;��I��NDw����w�YBtMm�.���Z��8�E������ˊ�q@��oU[4�K��Ѷ����̣�\�{�Dgg�p�O������!���#��n�^.�d_��7�8�|��/zM7)H_�)���u�ngQ��K9 �������.`�k�kѻ牷��=��r�{�x�ӹ����p���+̚�C�Ơ���۱���&u�ǯ�7��v
����&6Xd�>'��}.�7����	hy�)�0v��p��K[3�|�����"�|ɇh|C�-�9���}����[9�/��[���N9�
����@�m�I_U;����������RR�         �  x�E�Ir� D��a:�}o0u�!����o� ӻ�$J���ۢ��n�$nw��d{Lm�swR��|�M�j����|�M�j�W|��O��Sm��>�O��N�N�N�N�}��D_����n����8���F���	U&T�PeB�ڜ�6zmM��蛵o־Y�^�� 5��ݍfF��ck܌t���m��V/7�����Ǡ64�ǞB5����OR%ɠ-8�ΆCj�!g�s�V�4Z�A�-�A/i���>�O�+�B����*��ĕ��ڇ�:�{�mͧ4�K�R��ױ��Jiv�4�j������홄�D��~�$�<+�u%5dߨ5j5z�J����:MGĉ ��P[�F�'������+��+
�ǝ�R�P�j��ɨh�AS�鏄�x� �_�j�N+�$��5�p��T�+�+���7ߑ�ޙu������:�J�$~����?}J�         9   x�+)��,)��M-��9pvj1Wnj'��s�3����8��R�@%1z\\\ Z?}         �  x��W�n�8>�O�[XҒI�ڴq$ޢ�"�
�fl�ʒ�t�O��������ǎ��?H� �"%����oF3�
��N���g����
[����.�i&c�m�&�,�4�N������iRD�N�0���Y��_d�A<�~_i�U3b�͈\:�ic����G��_�X�v��x��/#&E�c��< V��ey0��$�:�Wy�)�U^� �~�8���ƌ���!ܸ����Q��Ǖ/e�W[�=��� ���D=�D�ȭ!�.�X�P����?8~��:/����MM"�`I�n��}�p��\h|%��`��:˴�߅y����Y�� ��=����Q�8��
��C�YQ�^t��:�20e�Q;f�ly����0�-�4�T���yu'9��i����D�O�8�h#f��DO���4��Tò:e.o��DA'��G&a	��#�=�$x�2�.#�#Y�<O�7���E9��:p�KЇ�� �^����ţ�C|��=�V�eSF40O���)>dZ'?�����#9��@��ϸr ��DHAE� G�e���� �JϏ�B�4ym4�y���w2�'$��O�xX�N�Q�0!?@��0�µ�V!�W3|���[����������lxP'kp����(�|�s9m���do֎�����t�[���:wVl��l�eM� �\�qqw˼-Tq���2<0Qŕz]��mʪ?=�e�������W�}Q��N��)wSp�̱�N�3V��ؑ�ߩ��mZa��(�ª� 8�?MP�/Ɣ��Z��''0�b�4@�.�hFQ��Y9�����"�v�d��JR�i*�͒��ک�˛y�/f�����sd�.Iyw{Y�TU����A�a4N�)��'�q����!ƙ�8���c���
r�qv�q�@�[Ѯ�y��6���%�"�:�U��<zF�i�V�:������~�6uu?a���]�F��%�TZ�Kv�؅�l��@J�>�ݣ[b�Y̲�P�;�^�O�1            x�K�H,JO�M�+�,����� =�N      	   �  x����j� ��<��/+��h�,bۺ�`t�o�^�Y�چ�}3Ό�� 1'�ˣޯ�����>� -���� �B�$(y��BZԺ;m7s��y��t���!Ĝ=������&裟	A�kT�͆>G��-��_S��2B.�Բ\���#XJ�a�ZR���[�{,CD��ʖʛ����JZ���,�u,�0ȗ#��܂�~�S�A�&z7U��(�oϡS��$��=8c�W{�`�?�R���%�ݾZn?���=����[7�@�M%(m���n���$$k5Ӄfٝ�[�͸��V$D6���ͯCY��Z�|�y�f��p�q�C��۰��J*����H�j�����}���ky�VA��a�yF]�S!��Bp˳t�-љ~k9F�뱮�"
��Q�N�[��Q�L���_�r��ej�            x�3�4������ V         {   x�M�K�0E���bN�o/L�b�T��4dO]�l�P�*3��̘��F"�x0)<˒�:8��nv��S�L�Ϙ��7\~�V�ꎮС|6�0�+����G�1�-����R�£,�����f8y           x��QKN�0];��X�@C�MS�R�E�f #1���T�%��9|1lwAE�`93��}���S�����Q2�E�ل�~U���0m�I�g(�U#V&��8N��T.���Q��JeA�o Wn��h���7Z��/ƻ�iEc�S��$7h-yc	����uGi�5���>��L�(����cp�&�;�u�Ub��2W4����"h�񾘝-���oL�I�����,�?��xKw�?�S���_XX�\�)h:�Sk��!�q�|^�<X3�C�\�P�?v]��﫪��!�q         W   x�+.-H-���\�)��y��`҈+5%�$����p'�a̕��f�@i�Լ��Ԃ���TNWӔ+%5-������J0m����� f�%�         0   x�KM��<�29��3/���(1��,1��3SR9�K��S���b���� Vi         �  x���Mn� ���]�����w�E*`�$jo_M"�Ex����=���X�\����4nrC�a}��J�l�2���<{,`�����3MB�b�ɹ�	#�Dr�a]R&>��L�D>����Y�pߕ�W�V�F����ܺܒ� ��� 0h: M� W4Y �de��0�S/��
2Z1�F����A1��	���!.60��(��P���V��U�&=�p��x��]E�A�Sh�$vA���(@�MP�p�MD�y|�L�0"�k�)7i\Q��lr� xJq��w���8�����06���Ly��7aӃ��� �%�Y&���?,d�;�E<a$?I�e�
a,����/fs�\�;���}�+;�~~�S�gw�{��]W�>+d������Y�D+Yp~�q]��O�n����B����� �`MW��$�J�Y��*�u������z��C'P\         H   x�KIM�M/�L�K�50�L,��L�M�,A�,r�`�4,r��8�e�����O�ifYbV}(n����� B;�         Y   x��9
�0����x�&J��1d���G�� �ז1m�T=�	ƒ�i�r��%I���g���]��=0-VS��-�kE�<T	         X  x�U�MN�0��3�ȎU��l+ZJ����X�U"�vq�J�ܣ�� c*!�������8,�il����buəF&`iBl]��,,�I�FV�|�1Zx{!�`2&[��Z�`}G��E�>�kZ�5��V���9�Yc��d�����Z�4�h�n���Z�*��u�O�����p�6kn&_)\�dZc�`�C?n�	c
��E��쮏�(U%�,�i�i�q�\�k�.5Ѧ��:J�Ld�W�
���	������pvW��lͅDQ�ԧ����9�n>l>�8�F"���9ߔ�\G~��L(ܛ�����f(�i��`�W�]���*R�$}���bN�K&�� ��m         �  x�mS���@���������k�K����ID����������~,�Ί �@�%9�*�3<*���!0I����g�:OSO��SǑREr���hF*�k�'r݃�Γ�'��FבKX�f\Q��JnŽf��|jܭ	���ZZ2���}��p�F�6E��
Y�����h��\5�ʧ������j�Zլ:O��S9Yc�L8��u��TbVyx9�!���'0H��l� <��I�<	�O���d0�O����` J��c���2��<@?��:V?O�$�)n�V�U�]�٤IDX'[��?��tc(g�,.hQ6�Z���{xB�P(��rgq}d�(��o�Ee���|�wv��[ŏ+	�����ؿ���#��y]���:����;�8�����xL`�t��W���s���r�)�H��J!���m�c��Jw� 1RP�U�z���F�s�����C�7k]O1n�Wj �WĚ�H���nBN��n�qjR�         �   x�%��� г�1��]�QT
�����˓GQ��[�Z��=�A�[�������`u�`l�Ap�l��<C�$? ���!���\��lsN^���w����X3�r����m�	~Sq^!G����<$�W         �  x��V�r$5�[O���\�`REBzUW�fGX#��Ƿv�k���d�orO��3�>�v����U�����VqG��)+�M�#���!M?O�`��9*gd(�)Y|}_���~�ͤ,G��[9�����^���7���A^�l5�<k��M#7E�0Y���&f�÷���8L�g�~	%���D�m�~����)�I.��,H�/�)Q�l!�����d��Yk��5���.��v;�ahKʶe޳-����;�0;3ΗMf�PbkpKӼ��bkBK��sȽ�x@�*%#�F&6���?��ޅ|���Uɫ�G�a!�s0�c��^�:�m�#G�޾/���+��K�,����@�|6�X�Ш���a�b����,k���?��S�F���1|���w�*���ܳˣ�6�L/�^��a�#@�D�<q���%���� )�[xb3�0��GWB�l�a�nq�\��|^��$�I2����Xi�&>Po��eX*]�֦�J�����P�}#���4n��n��c �a��5ңU��r}R�=1DS=��j Uq�����3�u��� @�J�J �Xs~%��9bX�h��'�O��"�����܈^u�j�k�g	Ix�޹�~c���;�)W�_�;��t����2���Y��Ck�6�W��p�~�u�(P4l���&SU�I���^�ݿ���l���.��H7��A���?�:����R�ʭ�{ �v��Wڽp����M�������h�5uߊ�y�8b|i~�K�U:
M�g�C"��W٤%�Wbt*C]!�|������sÛ �?)`~0�U��x��a�.bi-1�d?2#i����F ���[��iD
�#�*k��o,�cB$ӧ����M61r�_V[*:�^q��`It�ŀ�
S��#�:�aL����F�mV�p��9��sW<Ӕu�IF�p߈{�1��y->�Q.~��J1=Z�i�ehm��#(9�\MC#��6���!�:ڭ���A�l�Tk�c�a��C+g�.eJ9�;��Q�;/�AP��}A�'9(L�D^���P���n9���k�?��i*f|NN⼔��۪���j1a��#�.��>����x�m�4���!ٗ�ׅy	�=v��1�Y}
�M"�����K��e����!�L����d�������-ޞ	!�hH         v  x��X�n�6]�_�U�OFҌ-� �"@�E�EJ�Fl$Q��q��otץ����_�sI�4���0��S$E�{�N��e�#�2cy�V��V�����/Z�w��*�Je��q-��w�?�����ʼ��GǬp,W�\)4���3��-�ǫ��7�Z���M����%T5gVh-���Z&K_4��K��eTYۙ/=z��Ͳ[Yj��*w�,�#^�2��˓ qY�ǹ,.ĵ_�x���g�_�𗤛U|~�<�Ű�/?����~y�JVQ|Tǫ�e�Ws���o4X|���d"q���B��Iւ9a,��3�e)A*w�9أ��K�Th�ɛ���[HL�D���A��:���J���V��� ���j����[���N÷�|�9�S������+��m.;��'����+i��]g��[�@���p���˴/�=��d�n��̓O���m��m`��Z#�����Q�*<K�e�Z���݉%�d�&�P`� 2_H�)#���q�#I[C�	DE��ډ�7��6����ˍ<@~�q j0ϰ��`|=0~G��B+w�|Qk2g�̈�}>\�T���U.:���x(k�S�Ԍr�nJ��6�i��,m�;�涚w���7�x��,��{���،|������5��V~�]&?ʡ�0�Ä��u8`Ā��J��H ��V<��4�����=��#������h�`�)�0!��-�#�$�1/��`d���,��q���&s!=���N�2S-���>����Ňk��HG>K���;�}	��
�C�+�Y��6���B	(�*_�:(��:K��\T���%�W(7�߰��N�m�<�e:��#�먫��*d�`빀ū�&�@��:$�-�
�	�f6��,�7Q��hT1�&<t�rCI,��A'C��]hK�ώ�sW���ʼ��z�^{!h����Q�U�H=yz� ��M�q���z��T�����:G���ط��z4b�0�����:��_h�ڡN�SN�/���c�V���2^�Cn%j<WZ5���`����:�+���D��wRC�~�Q�۬�ohںv�{�W�t*�h�|�9�'Q��UޮF�E��m9/��Zpa�>E��e[q2�c�p�
��y[|�����Z!}��Og3bl-΢V�,��]����fC7��Q#t�H(\oA�)M�Aq'�7�$�p���X���h��l����\&��[ȶ�)[Aܡ d(E�H�&\���3A��w�k���g�&� ��������-��/��Ȇ�y�)�N�	�~?l6��8���
~�^��U���r'�=EY�����@)MH���*�k9�%�%����˛�,���S��qQVH`�E��(�������џq�}         �  x��W͎�0>��@��*N����=T��J+��o�$�S� �վLO����:�ؐ@~�Pq33�=��ؙRoC��t�X�p)�mY#r�[o3%S���j)�8��է�E�&d	�i	���Ũ�k6 �� W9�Ӥ3���	_��0�<����J�X"~�e���P0yQ4�4t�"�ޥJ_$&���(k=�҄�$Q�X��ɀ<*��|6�@���oi1����1�UJ��[mQ��d��'�9�7Pޣ>y�ݱ��.����ތ��Z6e6�2�" b��!�ט�w�lx��'��X��+�`���K~n?�Z�%�l���-�*A9>�����:�-��3:�7��2�Xv.�E��M@�H.e�@Y����S��y7 6`]��K][l������������l�2��z�w1BXmP��� �����M�K��'�)�
��KX��={��9�{��'����;���	��KL��t�$Q�E�\BQm26���
Ѥ�T���/���Q��r�n�u=�=%��<�)qO����5ǌ�X���k�����������]���/���L����1jK��W�2���Ӕ�/�4�s�~�7�|Y��2��(ee]9���)�3!����T9��,�7�K��҇��qɃ�g�?�_�^��
R���Uob�iTa�w��㘮E@�Y�ND���$��y���W����B�ЙN���Ŗ�]Y��АN�Q%*�DE	�C�]a�����5��J�"��=��~)��x9n	��dǹ�&�u��_�fM�<�d6�<N�w����'?\kY�(1�����#�TWH���̻���r��+��V�?�V\
x���r�u�+[ä�D�I�p1|�9F���Bn4 �� W9L����ycx�}�0�&kSrߩg�cD��1Da�u�T��>���i&&��{�˒xl�r�Z,Ɠ);L��QK���s�����            x������ � �           x�}�M�� �ޥ�4�$z�9A6-v�*����1I���[�x:P7hl�F�	vEQg�``���HAQf�������9�r�6��l���{���h�v�b)U=AYׇ�����ݑ��誤o��-��*k	�_hh�Am"�b䌍5�fԑ�lɒM)�Y�FЄ�9k��e����"	W<|�b�?nķl�#��~���z���[�?����74�a�9")�XLn"��Y.��Xa��6VA����d���*�6^��v	,���o����oy�-��?           x���ݒ� ��7���D�%�	榃$�
�Aq����h61�0P[��T��N7����t�%9IiR�G���74�U �:A���o�ZO}��ʌ�a�`F�je&!� b腆�{4 ;��~�JCo,��A��s�wt�;=i�oD�@�H*v|���h�@�7�%}2˜�i��n���j�[P�L/"�%���1��ܝ�^ߞ��}���]��,����H�^aPF���~��Ɖ�Q�9[��z�	ת��0+~����Z��[r^�7��9�$M�7����,¢D=�f�2��r��*�������]��'��ai�r�cq��iFh"p�2ͳ��S����&0i.��X'���2z�ԋ�S?�d���1ϪxK#�������͇�6����tg��A�M�c���O��W���R
��0�؄Z�<�]Hn����`���E��<J�F�R���	s)a-��($�'�d� _���yIY��R�w#�xY1R��x�
�j�H��[��������}|J�            x������ � �         �  x��Y�r#7<��2)�$^���X;�J�������Y�ʕ,�\tjPī��<L��i?O����>�����a�ȽM��k����)Sr�&���3�=�Q��d#�<nT*�ڌ���4o����ƍ�y*V��b͉��7I���lwt����q��2�����Ac�����4�O�i=���]����D�rnR'?��˼_���T?�O�W@3R�6e���"\[��Rq� �-gM���1�.9	���O)ZB(��ܬ�C(��ė%�DV1� �ǨQ%����7�C��hX�V���z�V5iv-qZNFMZ���
��J|�V�*@k�Z�y �\�PQ(CFmU�K�*��:�EB�������j�Z�
����8��&Q5�8[fI�r�g�Y\,>,�#�4`%U��B	���`��u�ҍ�,H��	��0R3c�Y�а���U���sX.T+�����a�b΢ƘM��6$�I�4.mb0��� �(���G��I�1���7�W�q��\���
] �`��u�����R�ږ�F��mi��U�n@�R%�J���f��#�>��Fp����a�tLi�n۠�MI���r����Y�Ed4�,�P,�F�)�^U���F���"��#t!�<�� �P�9����բ�1L..(��WAӂ2�\ �K<�!`jam�0���"fX� ��8�@͜Z��k��#!��A� :��xUBeA��J��h�B���xڿ��X�Zw��*0��Pg� B�|iN7�bT#`��*y�M;��]�7%��������"���7�<�P����L���m�w�^���pA�4��nX" ��yb�@#f Y�e �}!���ὁy�E�UA;���,d7���3���Q`�o#�&E��th �L6q�&����ݲ�=���tz|y9v���:!lg?M�E�� �̭��1鍖۠B���h���[���^@����۽������+/������i���{���|�~~�a�H��Y?d��K�~y���o8��������x:���پ��^�O��B.am��B`�a!@o�I���F���'v���ح?���&���_�����ѭ������������zA�*9Г�/��c�Ԭ/XZ��,6R�A �P��~�Ň�|����b0�ú;����`܇�Ű��O��,����`ćk�������<M�gb�<�c�� � ��!ڡb��|Qv���{ryy^�����x�j�7j���&;�}�[Z�lw\��ӿ�ț�E�֏�"o�@� <v-Q!�z0�?E��!�]�!8�/�wh�0�d��QDϟt���{X^���B�&�
#�y ݟ9�W~ ��]K.�r�n�7�l4��Q����������	��           x���ݒ� ��ͻ��̻�!Lb�����q�Al �;N�n9Q�=�U���0q���6�YrG���2�L��Nw2J�h�g#g�F���U�R`���#W�~ֲ����%L����؃��r)a7�� ��\�/CN���<�[OE�)ؓ픇�~�N�	yN#��
��h�f�
օ�Z�;�~ߞ�'�Z
iN��9��r��gڙ���~�3����n�ZN�[����T-�xO�|��D&d���9��ԌR�3:�B�����I�7˚-숲�&KQ��Fa;/[E��˖Q��e�([{�<�V(K{�aA�����d���g���Y1֊��"�؃N����=7v��.^�����ܡ���r(?q�C�'U�!�ġ9x�b��8���w ��������y��'���^E�)71�j�>k˝!����,O��,�֓��2��A�uI��eq�lwB��E'��{�<�&�n�)IG��p�VF����JiD��a�C���[���g+{pR���BP[qؿN���.e             x������ � �      !   '  x���;o�8�k�S,R>$J����f��K���Ām����ߐԃ_Rv7i���f��_P�w���P��-�W�k������I���@��n��&�!�T��7��c�3�p�1Nh&>}{��v�[�վI�YE�u�ѥ>�w1a�"9�F`\��z�0� �"B�p��7��=���F9�X*x�sD�<hV������Ͻ�cg�R�ذ���v��?�m3[����!��Za�3<|cb�Y��f���Yw���U�t�Q�w{pp���2X�N���#Ǻ%�m�L!��-����'M���R8<P����oW��2[��i@0D�ç�8i�8N7�¹^��8d�:�=�a%<����qk��n:�0݆�_�X�IK�C�+T���|51&�|�D��gF_�e�"U)_�ŝ۟u���J�M\�f�"Ct���us��D��r%�rW���H�E�T)�#�F/�d�E�fm'@73؞x�|D��o}׋�`���fF�RDLTڠT���#+2���{w:����d��m�k6C(xi1P��!'q����ܿ=~���؞^���f���?�h��l��K�������Ǐ������������>50k��w(�Z����\�S���+���!��K�������72�LH`d��&0,Ԫ	諦&�
��f�Q��2s[�옧�fr\�҇G2f���j����Q7<�����ZT���tgE�O��+��@^����� x	H��Ӯ �96} sO�����#��.��RI6D���m�u9���0�q bD]1�P�¨����/�J(!�^EK)&/��P^`�.*w}}�	i��63��T:Ig<�ipR9����4a��L�"�i~�;��u޽�[�Q��������L�~2m��~��t|wC)?DѢ��`W��C�Т����5$�_�iv"�봩�Np�y� %�	�%a�&\��֝.^v�CŔ�D����1t.���Tn�L/�����B�i���=W��#S�*
���7h�sn� �� oRuԑ�`���6��H��E�si+�L^ b�����&���^��`�-��I�G�f�RՓuF�f|RU�;+��"
2CA�˴��YDAf( [��E0S �e�XD3(�/�Ԭ�U��n;܀�j��� ��*����R���S/��` �
`mD�r�l���d T@,d��H��n(�*��ak�GZ��@<;6{ k_�j����P!rN��`�{��~ټ���P�;�)Ei��.�>$��[�� EZ���*/q��D��qG {RyX�?9�aƽu 3��
��!Ø���b���������/�����tq]�zS�r�e}5b���Uby�,�Dq����8���UjyA�z���1����<FQLL�Yyo�w���jئ
ҋ��a��H�4�Ƭd
*E�Yԋ��1���Ux��*ˍ��$�2P�-jڷsL��T#�����U�H!A�$��X�3�u���Hȇ�\��0�q��x��"j���J�"�ׅyZ�zb �:<|upj�(ӏ��S�e�y���& �C��M�"�y�Ch�(X���֞�|bk�ϼ�{wD?���o{9�}}j�_���R�Q��YU��]Iđ��}��H
�Y幧�G��y�Q���.2�H�$�4.CJ���xA�v@�[�I­i<򧘯���σ,^�P��̦��.�ɐeb�ʜ��yk�fx���D>t�*�������n��P�d����ƌ��ݾl�,ӎʡ��K��	��E)�#U��l���luG��u�p�"���>��L�a�      "      x������ � �      #   �   x����� ���]j`Q���O���-a�ݏ{|K4^��-�|==�m���4
�7��iTU� R�
:�:�ׅ':���ǈ��
�.̐pC{�>&�a�����9�s~��8��qp�78�=4Λ������}{f1��G$�=&��KŊ��,�>W8iB�����%++�����D�`      $   �  x����n�0E��L�%$�_�b�H!���"��wb��]y�#�̝�G�n�����v�i)w�Y�����%�5��V���Hqdh�� Զ ��d%�'zK]�g���;9$�Uu�i��R�Ҝe�dBGw���L��[B	��6I���|��ڲ���R�^sy��Bc����#M�4H�@XAY�W��>�����aF��FB_Xj2�W&���X�djV�>������¬|8T*m�����dg��p@yM���w����2�t�"w���P�[�{T��J2�GC�r��N��;��f�&�ٌ����%���������?�u����\mp�3���w�=)^��R��)^�(�}T��.O�d��Lt�~�~c4/��I��!�;>�I      %      x��}ɖ9v�:�+|��s"�`�+�9TUgfe3u�7�8#���x�G�@�jտ���6��mo��/ѽ��Gs�Ã�50i���� �=<�w< 7�7��b��QB����Jț����_w�zBȫ��O^=���VD+�PQ� ͵�U"k]��h��������{~u�Н�UV�F�e�1�ꍶVz+|t��^]�(�^W/�6�频���g�^�`����ˢ�MV�B�h}PƱz)���+��wu��꛽�7��Y�~<e��-�q}��O}�꙼J;g�F�k���[+��6PR�>�Ơr0x)�F�'Fkc��&��p��t���TN���	�H'��V��B6��A)G�Xa�n1X弎�����`�
0��Z�SV�G5�`��-��20�B���5/�IhaU��]}W��g`���`.X*����`�Q�)�`�Wߗb9v�Nc�P
}4a Aie��>6��~]�!f`�|���^��j~�\N�+k��7�����R�&a0^���ɦ-P�o����R)���$x"�aa��0.�P�(_�gw�r9��F��h����b���b�,��ß�*+�Q[��U���u52���"�aU��tN"�j�|Ӌr%�F#�>-�,�5J%<*J��Y��+h�V>*��SA�ٮ�x�2eh�&	�0l�>�����w��z����"h9�[�� ؂�uW�$��ʱ�v�k�B��5-LD�!T���>�%,:i���.���k`)#IV�V6A��C�����v�k�Bˉ��[PzHnSs��A�zM{2�?2��$Z��i�m�3X-}���j���j6)����P�E�e%��Y*%:���t5�c�_
*��%�UA�˺OzP���S� �u�RL9.�
Ќ�BX�*RK�c}�z�\�T��C�`�+��5(�Ek��M꘷�����0({�����4�N�������F�G��Rh�>4FC��N��3(���v���B�r������o�/���E	��6V;t�K�eu�hѐ��� ����Fp��@!5�������]�xϟܼ^O�K��|�X��b�y�D�o^=s�Zj���!$BBT�u�ۉ!l;E�������]��eڧ�o��e��o��[W�)��.��Ά��<$����N?�ū��l�x�b��U�������j4�-����i5Z��o��j�ݯGw�Ţz���Z��b�^�?[o8��/�W��i����b'?��j:��>��=|��բ.u~H�K߯?4U\l8}���5c-D�N�����1�4���i�pKXf:M'�U5����ƣ���x1^w֐����~�Y�q>��F�O��X���X��c*4gt��nq�ƾ�p�l�A�)o,���{2'1�t��Z�1�=��e�� Z�:m�U5�a��,}���7��d�8��+~{���դ=�'#������nՎ��:o�d��9���s|7����HG���]��4��O���|@v4~���d��z4�n؍��C��zV���+�{�v�������1{F���5�&��[X�]��_�g��W��U*����r��y�C��x����jת��k�l��T��x���]�0���O�&3�M5����6���[�u��%[���Z����Eg��,�u�1kB���O���<Tlɻ��}�7��!�c�����#��SZP�8C�`�;0�TmG�W�}�#��W�Q����
���r=_��?�	wE{ǧ�;^�>u�	�]4p���ՑW�jpF����e�������h�+4����Qm��'K��뽒�����mٿ��U�]�;�ߦ�9��x���&u������E�|�5_tͥ��#f�M���k�*uͩ,��߼zfo=T���Y����:�z+��&�����T��y�U����Ð5tDg4!����tͩ�����bڈ��+����TF��:]s*��L��"���Sh8e��2狮��k�蚂�8�k�z�2Q��|��`F�@���?_]󸸹[L���n��4溗kw<{sD̜�x�����q2+�\�$BD+��d�ˊ��r�h	�^X/k68���'2csq�\J��X�Q��!h8��Dzl.�DBiX�Z�l�X���Zqy4G6���B8������Y4��hO$��q�@T�|B�`.K ,��.�Od���@�$�� D�J�O���	�>���@F壮�H�R�V!y"o6H��5]Fp��Y���m �0x>�<�	�M��� �l�[�\s��L�p*�6H6��>"�SBB�& ���$plǆa�I6�JmM`6o&!�0��(�N�+�R��dS��&��kL�<��vm��sɥVT)��lʴS�����_�S9�|n�-�5Dg���0)��W{��r$��
2E���%�'c9	�p�z����H6�F���5	�JhV��i�����Q�$�]�3�َ��x��b9&p�� 	W�r�<�Y�!9$}�P��d��&��:� �I2ن��i���Wj�w+[>��t�e[�H5���jHN��6�-�&���L� 9�'�H�����b̈́�����|��d[�19pW��,{�\;@r�P��l���8;r͝����$�?��5ōN{�M�����l;�g#؄�Wl��~�<$��.�N�qSώd����U��l��m���6��mX��vK�i���D�r;��ʹ[�M�:e[�uX�oXr�v[�9��� I>�n������B稷(�d�-ެ�WoB����d��|�����w�%�o���Wp��J��7�����Q��1}�r͚a����� �������@q���*���L*�V{{��$��G" {s��\:�!�,2ͥ^X��T2� ��sQ�,��ni��d��A�����}�v.
��4�iZ�M���@����ڹ(\f�` 74�Z� 0� �B��k�sQ�<�t!E@G{�F�z��:�}�v.���W����xo�bk�T<
i�Mt�m Ł@;Iw�S�cl��y�1FI\PhWN���zm$��o�:�����Ռn9��M�Y����b<;ȯ�|�S�Խ�1�^ڰ��iy�~��:Wb�^mWB+���p���@�ۜ���l�;���me���|֭L�}3z3_<�iن���jR��r�
ur���Q��d�f6�/�]d�S����6�����]�֞��r* le+ �]�7�խ�,��	��{���z}x�^��V-����n=O��f�˶��򸞽q���d���1�y~�8����t�����I����� �NY0��\�&�aY=�*��:�VuҬ[h�q����ջ��u-��b��߽k�r��w���ι6���J�ѫ�r��߁�|s��x:]�U���cN������	�ϒe�u*�o��&�����6!�wm��@���Ǻ�;>�M;�I]9���+��)i�`��E�W[�^�z�f�������ز@�M�蔿T�c�?�'Rڊ������a����SbO�g��Α��%�$
��oml���oGߍ�?�?m���~�<�N���Oz�e4yJ�m�Ў*�ev#�~s,�h�(v�1)۔�#���פ��&I�i��L������Ƌ�<��}�}�����Ə&z��u�����=g���J���qA��>�޿<I�c��p�0�c�0M�c����*�s_d�ߢ,�q���r�z�2ta�1��@�=��E~6a�ӂ�u�2ʟ��3��x�ͪ��ae}:B��/0�[�Ζ�\�H��)x2d��6�������\,\sᑕJj,�p��cL��~����"���W��l�,x�R������C1�P|�ނq�>�M��>�dm�ni���b�����<����JXtd"g,�l��b�YX\6n��7�ZUc	Nh�k۱��z��%`|.����U�6�k�u�W�_��L�������X���N�#���Q�v���_&f3�B��Q�U7�1<.�Y�M��0)e$LÓr������m'׊������q���1��1�k�H���%ӟ���������o��@�Z�    80S��
��@��4N��w ��_�LQ��D�a,O�������Q��؉a(O��v�g��ɣ��������Q� �PT��|��t f(*u`>CT: 3�6��Qi�`T��|��t &�{?OT: �G��%*-���E���'*b0�˓G�C,Qi�G�C(Qi�ɣ�!����e���J�X���������/�3�6p2�҅p"�Nfd��@l�♼�t��贁����L��t&���8:=�W3f�����N}Xz���	�S���t��ɢS����	�S���t`���N}Xz���'�N}pz��>���N}pz��>���N}pz���<it�����<et����O����pytz\�̪���5��S�'��F�Z�J�{c:�!ҁMh�m������p�:DZBJ�#�꽌�I�.���uV���74������ꎱ�E՛,�[��7���_FDn
Tm�1G����sE��Z>V���bb�����n�����(����p�+���&4��$p�LI'��ў�3�鳁E�-�&(A�!bÓ��9Nyҙ�̹�����+&`
634:}xB�gcˡ��c�	���A���^̝�ĭ���M�od@O���d�?�g�EAV��FuLq�y�FI�J9�p60�/�d�_ݔ"�80k��.�?��E��X��I;%
�s1�s�_���x�{������A��<?`s���������w�6����j� %mh��E��r����?�E���H2��\���Bn6����<7 `<��1B��4�a�<r�=���ٹ�	�ҏ�F`A���ѭo[��ع@���t��T���Vj^d�^�B��1@� �v���:D�A8-ٍ]<�d���q�R��zo���'Y�B�6��X�g�7ƃ�0����N*ʨ^eT��x�c��z���66=�(�z�Y�
�j7~�1��e���u�H���MF���J�B�4ɐ���b��dȣ�e�n�j��ڐf��qM>�m���I�ջ,���)V$�O�"GN�mmxۮ}�����<�xVal�^��O_=S��"�(�.�g��c�pI����<��a�7�v	���r>-yN�x=z7~��放��K�7Y���]��ߏ��s�g���xwȨMw}��7����Ogպ�J�V��#3������_F?>T��8g�M�������|�n2��R6�s����A"���g#��+7���x�>mX��C� ����������~���xv��x=���69~��x�r1�|��_����5�G���MwҮE��y������Z��ԇ�I(D�GL�̇�l�,�}�n�4��!o�#V��rg�j����m�hM��4Ώ��=��l/�ޘ��I�]_l;�g�������(g���0����ǫO'��~��������v������.��\X�I��1���������Ǣ?�-�e����j5Y��v���̊�c3���u[�:�b�X��^K�>�6$�g��t����|:���NҔj1~[�>.�BZq�Qz�K�d!��YpR�$�M�i��/���j3_�3�MB5iL�S�d�?�o�����d\���_�g��?��4�y��|d�Y����ϡ����J>�JR�@���X[Is���x�;kN���w�דU�禥����o�,&����3��~�2�e�����w�����x:Y�]��B��8a�oԥ���q�{ZhB�~綛L糷����fS��[��!�X��h��n���j_�������[���,��|�a��w�U���z_�vԪ�췘�O>�럚E�>O:N���>�a�>o��8��Ϧ���'p���]�N��Be�� ��`��U§}uD�n�Y���y X���=�h+%��U���k#	
���i��ٖv���%��|���O�����<}�'��k������>��Be��1�l���Q�8E
��£���?��G�Q��k
/O�E�#����|�KÖ���jN�D�j�݉��,��|]���YO���ǁ��[���� u瓿+�Z�V��q]1\m����u~�҄U��7����Mv���XW��ls���mvK�����:���������ާ9=�s�e�]��/-���0S9(k�ㄘ��(�H'�~5\?WS�@�m��5ra+ub�5�~=\��\��L���)�uJc��;|M��o�7L�Q��[#��Kã,T�����g����p�*��|����5�qbZ��<1[V��]�`eT�������3\�7�F����[fGzB��id&����f��������p��}d��S<���� ��d��/sfW3����B�|���\��8�LI|53�~)2ꗑǊk9�C���c򅎽����������<B���h8��M�,#@9D���Ї^�S5tIc���h�?� �Q`�4��5J.�j+a�ޅ�l ChoIu�
��ḿ
]Cra�oA1��]�!>�xT9� ����lCLJD�L��>	�	���ҋ��l�\�&'�PQ���i��`���m����l�l�����`'L���)�����)���0F�xj���k� �:�aU�P�,cD5̈�x�����#��u���2FTÌ��Cg=����b*I =E �	� @�^����7�.�B)���0Fґj╍l��L�3���X�)B����*r�%�m�a�cL�۠�rT�>DHTZ��6�`CK�hX>E2��;���mV���Ws}�A��!��� ��Uh���A�-ϧA%9��k:�0�9E��h�f(G��� D&r�vp�^^My�QB6��n-���Qgb0�I2�;4�Ǽ����Qg"F�7"�)�����>t���S� �#�!�16���\њ`Ew���S� ���.�Cn#k�h��ME�|� ��!����Q��7��#/�og��"�e�8H�@����猒��A`�!,s����{d��^��������[�Sy�N�*tӦI�]Ɔz�Q���KA-�dS?��NQ+41	��26�ClH��c���ѧ�$"���O	3ĆD{��j�2$^��264��*���ۺ#">!*�aB7_��"�3��O�� �&.��<�h�Z�264�s�D�<*l�@{`��Ѵ��2:4t��G� ���c]�#p2��Qj�!ȠCn����PH�h�	,)�P�O�:��� �׍Nw�7�	�iǧA!j�v:N����-aۼ�c�8�dp��e��S����Q���v;��"�!bPU���Mot�=rcI��� ����mh{�x���7�i��9l��A'B�[�0hB�h�BL����4��)B���.��k��LQc؜��6�"�H-ʍ���kŁ���ED9��m'2
i�E�4٨dN�GD�vc��S ����	e�u3`$�xLrw�ʱe�h3(t�h����E��B�mǧ@#�$L��[7&@O��w���<�" ������v������Zy�rl!�BĻn
�$�4��S��A�� p�s��9����bt2�j6Ÿ2>t�|(���ޖ��#�AF���A��"�|M��)�+)��b5�L6=Ÿ2:t�t(y�ҜO�L6
ʌ����X�)B0L�Rq����x���
.\lm�0|��Lw���;h���:nk%"�qe|�r��=$�3.�<��1��m��2:t�tX&HC�6z�c��ж��S�`��^'MJȆ lb��]b;hF9���0�뇘�n�n�Ȑ�e��� �|J �a:�M� �@	�z�Q2Ӓ��7k��O�>Ġ$�2�|��͛W��C��" th�2��s�IfҍF�r�(Ǘ���C�����i����Uv��vЎr|�>�6��w�2j�xo/�D9��}�8a
JR�nR��YG�]dF9��}�$����,���P�/cD����x��X� `  f[���]���e��3��pQ[�$��
c��ŀr|!�BD�G��2B�5Z�JY�w8�_ƈ!�yD�a�5���F.�#��Pƈ!��;
U��tc�sM �m���S�`��w<�b��6����l�Q�O�aJT��  �|��i�����[��PF�a��Q#�Q��Q��$۵=��1"8��V�K�M�UD8�*�A��f�!&D��%�)��i�n�n��	e��	Q1.a�n-ϩ�@!���PN(c�0̈Jq|��Y���oA�@�S`�9&�ġX�@�H�Cw��PN(#�8L�\^T�0P���
L�n� ����P)���,�|t�@Fp�n'�bz�d�!�M�L2jl���c
~���!�`Ct7��x(���@[�Z��ͺA9��cjK#8���5��:T\�h���2>�|�!øy~�j �g1Hk��|� dСv�%�/ԉ��[��Yb;c�Rb�2�˧k�rV`�!s�lh����´@!*s����4N�7 �" \hp
ܸ��n��-���>N��P�*��;��Gnm����r�,D�*��\P⵭��a���V� ~a�`D�X�9��6DLɈ.t��*}a��Dk2�\Y��� �y.�s��Š�W�V������p(*H�sj�S�P�� dТC�{P�7��` ���M|a9�*��A�Z �1����I>FgM{�#��W�n�h&Gs�6����ԦO��U!���em���f@�LA`2F�%���������r����Ă{7���!{>z���b�,0b�y����p��b(���⟢��`���y]�Or9�σ�<Ə=��fW�s�%.2���S�0䣲���2�7y���xP��zx��2��7��k�/�K�㼞�$ �b��'���%}����x�Z}�'o�hB#��_�I��	}�驑K����6sSZ/yq)&}6&F��c�$�4Γ��f���K1�s0�i8��u�`�`Ѕn��7�B�gCr�y<BH6Ƙ2]C�c�H�L�L��D;^������B��.��.�����#�#g�5�$o�Q���S8�
���ȸq'NInm���!���O��]��0�K��&����\[�
p�h�cc���=AH�(�0
}�m�"Z�
X�K{��2Q�|��6�o���-7(�OpN&��Y����:d�(x�k��(�d���(�S��������SN9� �L.�f�������
�1Ȑ=g����������0Ɯ�1��yd��-b9"���������t��"���n��`1��1,��ߔ��"���r�WP�1��,�~��n��_��      &      x��]�r7�}��D!2�� ���/�Z�mEȢ�=���=���Bw��Nt�g����%Of�p����?w�>�|�������;J��=}����o�_��?��g��=%�S�ʇ?Be>�2�J�7���S.��4s�����_B��h�_�Q�'����t�r�8�` '�p[P�a��d�+�
�������ǿ���k5��|i^��+l��z�0����ܓ��Ҩi9F��4h�Q�fM��2����f��1��a�U�S��{#[��k����hH��i��2n��zod)�Pj	4J��i�F����b�eg�T�@�R�#Q�$ʑ�XHM_X@ �@��4,H�Vz_k�>�6��iT����F͵iԍFK�J�T�haa5+�A��,Z�EX���\3��:��Rjʘ/�B4r���i��a!�I5�>A!fZ��Ky��Jh���@��K�R]h��4AG�cڕ��i����-4`�"�K��%4�87��Ȫ.

��Oьn
vFPA�Y�P�|	�m�((���x�)�Aͺр��Z!^���h�0���1κ�ڠ��Ѡ�R��e�.��ops�Z�����la�K�v�en�va(�T�X�FPCsh���P�$����>�H�v�мih����5c-+���`/J1�FA�MC�a3c��5�V�F�FPCi�Ц%�}��qc��B��d�P�PlK0����I�bQ�6m
�+~"��j%��"�c4�
J��%WK�t{�.8Wc���SPAiPP8Vb�R`m���T� ���Ҡ�VX���Sֹ�?B�.P����Ҡ�5q�tKa$���-� �AA�AA+eE��\#�B �X����h%��H�00,F��IV�)�$D��ʃ�VA_��
�J�����A1�⠄� ��O*�������T��jT�8��<hh�`�0�'"�\{sT�j
NQ�(*ڐd��<�BC�/���Q�y�`�S`kL.H^�͂�Ɯ<E�u�Q=CbD>z��H���P�FPDyK�=E�5q�]Ǆr^a�1A	eH�'Ϲnӓ� 'N��~r�8'��C=�+	O�y�sj�OnD�������Qɞ.�hHP?%4*�a"Ҡ�ŃF�a9	KP?%4�u�.�
ߊq��E7	�l+����M"C�V�&�'�A	��	�G1��s��<��`�%A�A@�h�/A��8/��jS.	
��h�B${2W�b���aO�FP@��4�T
,��Ԡ� �N9<(A	�ABYj��<q�3���TQTQiC���|�4��G�FPE��4� ��Bu5آ��e���*
7��@0x�����ױ��1A�AE�(�6x��R�'��R0�Р�ꠢ���P�jU:���H���|�UT��W���C�����]ՠ�����/������s)Qձ3��BO^�W��d��-���A�AD���T��:dg�������$��:h��h�$o����9Ì��J�jZ�F(����r.w�<�P$��e�;庎I1�r��d�F	Jh$���UH:�����8f&%��eSМ\"�xQ^�aHzC��)�%���ղ�Q�oH�U�}�[�k	
h�4#G����B�\�Z�Ǘ��h:��!�=fJȚ��tp��l
�YU|���!��0��T�ah	*h?�B�"�f�_@��_,�%(�e�%���!e���)�!kB�����:�(3���:$�D1L-�ʗ���6� \_i"^�K\�3"�s'PKP(� �uLZ6�[���ZPAmPPdDMȷ�ت���f���Ԃj��*����HYW���l����-����
ӪZ��M��	�'XPAmPP�/�� }�k�Q]�(#��*�
Zk�%`��eP\ّGz����ڠ�����7$������wR��5���D�D�ۭ�jh���J���K|@f6YiP��MhJ�
y�]Zn��V�A���Q�ZmU�ڲ���#C���)6CkPCki�"��Z��ހx!3@���U�"Z7ůA�b=D��W�Q'������Vh@E�o}���`��GvҢ�+5(�uQ��w�u��qF�Ym�ϝ5(�U��m�wI���\��#ވ����Z���������Ot(5(�����B��.K+��d
�5��u�P"�~�B��N��k�1A	�m`�T��N������ 
\nA	mi��G���|#B����ϖ�7שo��Fn2$\�jA�l4�@�#��\ko0RW�k��c[P?۠��H��
�����H����Ԃ�����W�m��H��r��#��-��mPPF�X?hA��I�>Y�����0?�}� !E�S�h��|�A>�I��������A�EP=۠������r�:/����1A�l�z
����!M]Y�zC�B#�SL<����	�ubh?���,��4�H�`�HF�i4Ϫ[,���sIy8�D�k���W��1i}ch�ş9x.)璐���������W�FL?�p.	^D~z��Y@�jF�7���|��X�CN�G_V��S����๤<�K"C<H��T-k�(4�"��9��0��ݗ4��@��~�V�Ϝ��]H�*����FL�q.�q�O/_�ǫյڷ�^��+�G���&
�"�BB��$�ұ��]Y-iБ�"�O�쫍e��t!q-c�A<��p�Zӵ3�fn��-�B�,�tH|}	��_[W��r8k��������ӗ�~�����w���)Ra3%?����=L������@+��)�4>�@�d��l�&
:MAO)L�i�2LF�'`���� �iug����yxF?��z�\[�8��A��v�⠛�́r��AkT⠛q[��8���Z��A�Z�@-j��q�z޽a�m�%��˃�~��T:�_^�o�O/���V!jߟ�^��ɀ|����K|�S\%�.��b�
��W G��g��p�7\��㸈��ƕ#����Y��۫a\�p[*�+�k��q������Q��-�k�|N��W�q��q�7���o�yw�(���R��%�Z޵�W�\0��&�J�6~׆_)r��c���+E.Xq�]+~��3��kƯ�`�1�w���"�u�K��2�1?|��7��R���P�F|�D�_���T"�/��	_*��jyÂ/������a��J����Zް�K%���(��χ��_��󓆗��J��~X��OůO����h
�����]I��8��S���1�g�S�)|9��}G�f���)|����SZ7�k*S�e�e����|�·_����:�_���_�U���z�T��6������Yyf�s�����~#��?����S�����j,���������/ӆ_D���k�����}�Y���tU���f�W�U��/5�������}�Y���t���K�������_jV�w5]���R�����*�ߗ���]MW���Ԭ���t���K�����)����]MS�7��ϟ�&���R�������RjR��5]�������}M���+�&�_�5��J�I���t���RjR��5]�������}M���+�&�_�5��J�I���t���RjR��5M�ߴ��k�ҿ	����'l�����%��:^�D�e?ܗ+�O��T�Lc���4�K�����T��(�~]](��4�"o�ĥ�y��R��+��#?�S0����F2�h�6��k)�qօ����ޛ��S�t�$����UZ����~���]�(�����)����pJ�<�G�t��MQ����K��~s[]�XU�!�Q�S���j�Ԓ_Q4/�$�Wb�G�6epm�Rd�J5m���:��O�[3joFJ*?<�-�QB7	��QvJ���Z��mfz�)�>>� ~��q�v��K����Y�`�S�}|f�S�CK��1��[����1���|���;�}�彭�W��� �{-��cD7�/	�����n�H��C�u�R�,�� �	  adN�~W彟�m�oLO�$Ăc,����S2�΢?j���Om�!c!�#�Zf��u~�H��~�1��j�^�~��g�?�?>?|�܏Y��&I�쑟���]�~�B�3�@�����f��G7�~��I?P��eD��~A������	�f�wW�#X�0�*��vC���d�W��6��sp~���k�������_�~_��S��_u�}���S~�2�����?��5��o�?�����t�2�i��x�移��K������~�!��9���?A��/�yz�z��?���k���|��#��s)��M:�����o�-��y���#��ͯ���M!x�w;f�����n��G݇����Z�k���4���E���}��} 9��W�y~
��ks���ӻ�{��{p�kn,�:�JZ�|��{��ȣ�`���$�إ �j�P"��n�|G>�V�j��ع�h��}���������k=��xe9����W�����?zX�)��p����A��u������V))AH� �ұaHB�R�I�!�n����=�<?=�7c��#^�����[�H���c�q]�#耩Y�c�|�dU$�u�� e ��'���ӷo�?|�J�4x�q}����[������|B V��l/�1�3/���k�����d
7������`-�S���5�?���L��F\��n��+�*-����p�yk��]ʽ����,�>�+�.&�6X��c�c��ƥ���p���`j���GX�֭��X��_�C.�6x���.��c�Y5����7G��k��ڱ���k��E����c{E��'OU���np=6X���U��� ���B4�_c6��܎"�=�\��n�gY�w7\SpJo�?�/1��>��Y����k�/&ݰ��#h.����4�*�Y*�a�W7� {}���W2�e�[���8�N�,��o�k��������*I�"��t���0�Nì"����/�	��[{[.m��S8̢�0˯���Blp$�:�nQq�߻���o��s؂�Ԃ�_:}N��o0�-��,��ѝe�[3���	�	��3ڧt�)q؄�̄�I��ҥ��Gl��lجo�������0�ٰ�7Fu�ɮ;8l�|f��O�J�k�C��0��p��-4��F�t$U�Tɟ��7�lp$U:�#��rG�����-9-_�j}JK���-9��*�uJlX¢%���-�%W��GDK�D����E����mX¢%g�;�,�V�׫��EK�D+[���p�����EKNEK�o���\������V�[ue���ђS�B����W�������VFG�5�ʁ<�����T�5,Zz.Z758"Zz&ZSSZâ��59�5,Z�-]D�4���h�^�*E+�ވf�f����^D��,=׬V�_�K ְf�f5�%;l|}:�a��s�j�PM����~_6A~|^nf���ˏO�>?�<�����]e���ZzǯyiY�c^U�m�����-��H�obķ1ڮX*�(X�Ҳ��Hnc�]��/�wFy�L?Q���h��I|�D��7)~��~�&���7��7)~��~󶉙�7��7)>?���	��y�K�}��Ǌ�5맜+�gS'��)�F�O*;%�z%��o��� P*y<A?Q��HI�^J�@I�n�Kz#%�RS��^;�6��������ÿ<�9�y���~N/;�"eۊ���c�T'�i��g����ih��>��b ;�O@��q�\���	h=Bs����t9@Kf�ff�&�mڎ����%��:]�����tی�:4�	h�p��O��Ц3�j��]�?�em<5xm5j�75����#�q�	5˛��2ͬ�[���fB��f=�G�OΉ\[̈́��M����ʍ�D�O�Y.��h����'7=�fyS3�jf2��yB�r=���w�w�R�o��"31ʮ���z_d&B���I���'�Z�7�}���dW���/2��jyߘ�Ef"�]-���L\�8:<���\�O�$�'��sɮ��r��#�Z��5��j�+�\,��%�\s�Ȯ��r��!�Z��5��j�+�\��%�\oD ��&������}����ŗ5��?�*�a)󱈇���I��IG�	lڰ�:�Չv�6o�T�c�K�al���.
�~�Q['����~�±K��x�	�a���ϫ��c��m�~X�cW�c�	�a�ǎ�ڂ�������|{�]�+���v��ᐷ�?��CX�?;̬���D�z�?P3����%�#3q1Z�X�_���%�@���#.~�A;P�Ҝ5[�����8D��KCrb�p�\�f�������ۏ�|��ȁ�W�0��d�7V�{����HE[����HƻF��,[f�Md8N�G2e+K����T��ߡe9�F�ld`S�)��������d|J{�������/��/f�      '   �  x��RMo�0=��E����A��!+z�E��Āc�����%�8��l��0�>��ĝ��u�B�u�P� �jv�n��D;}$�m�'��j��~�!�c�w�>K��h/XguM��l^�Q��L&V�O
��*�v ��w�K�{!g��*&�<�1�A�wm9��,D�b�!���n��{<�N�\U�S����kh���EyCH��9<�F:q}���z���8Jς�溾%��i��4&��}�훕�l�K��bِ��)�����o��,���{;`g��<y�4�g��<�󃍹{<�d�ld�yv�@�O��AQ��?"�a����)�	�G���7lgv�f�#{�Ռ����t�ݓ%���T������x��5Z�)f�?��5N�B���ΐ�Mp���O�?Hbp\�|E�'�{w      (   �  x��U9r�0��WL)�]��*��sgV�K�Ҩ��c���p�P�7���= �rie�(� 1��ӍՖ+m�r�;N�zS]q
&�I�r�J�]$�]�^��F�B{kH���ݷ)x&G��!6��U�Y�5�P1�ykB�_Q�1�cR�ŭϔ���ݖ�4F��q��`�!M;v�����ʵ9��˛�IC_X���i�9� �!L��3p�([����g)t���PZgJ��pDxs�`S}U������ڶ{��^E0>/�&3uE|鵾�B(�a��s�U�����?����iNh~2��r&����m��_\��s�s�M6}���xM��� S�X�Sv2@�:#[�n�P.�V��/wL'��c{;���?CX�ۙ`��tcn�"V�j�u��;n;A�n���S��I��Ә$!(����J@����q%wJ,3�^q���r*�z��R�4��PI
G	ܟ�CN0�pOQ��B)�x��a�o���p��Ă_�<iᷢ@G��%�P�!��x=[�e0���X��e�9h=�nђ�$X� ��/FE˭��0�(r�l��({P1����2�S��Df���p�ԅ���!�S�!��7ۡ�T�)�m�.=Ւ�%�J��(�sHt����JoY�><�/���ڴ���%�,��9g�`�iϥ��CEV�,jv��-=��#�7�:�n����K[�1�]�]NFX A�}#g���L�릮�_(��Q      )   r  x����v� ���wa��&/�O��D9�`QR7O�c4Y��c��U���?3BAxG.�I��nI��LoJ��%���|���"�gkK�ĭ��~䪫]�l�S���ѵ8ݲ�#�	f�(/��sF*�&�\��;\�1u�G���,�M����P��s�ؾ$�YI�g��`+.Fkqc�'�g���I�B I���f�2��H�O|���'��} ��ɦ1�g[حc
:敞f\!��W%�Y���í�t��/�'tY�����:��=��Cg�Tt�
)�ָ!Gz�F��C�F:>��P-W�^��W��^u�W��US�j�Se���z�*ūR|��S�������T��%k�b6�Q�~��n�g��Ïh.��&�l�v�I;ݤ�:qz][t��)���v�h����Z��d�Ѿ|Qa��7���Ob��b�q'o,��B`Z�?�V��a
3og��^+f;����|��<�<M-,ܔρ�E�� ��$b���q��[%&�_�XV�ٵ~��B�� ����������-��C�j
l=dy�$;>�n�
x�,<��ξ�k���y6��8e+	Ǣw@�f`�
��07$�qɝ�ͺ�8<�m��ǯ�n��j�      *   N  x���[��0E���xʒߛ��	�Q⌓�T�~�Ƀ�z�ϕueI��g��ݡ,}���;������mb�sZ	���{�[��]A�X��p�0�n.�q��ҋ�q��J���̰�� �Z��9��}�Kϊ䖜���9Ɏ]�qtiPxF6)�M����Ƒ�@/�çO�7�����\[��������.ŔfofwVjo-�tm�XU���L��Ȗg�H��'4�]�t��l��&VE�RK4R����KN�"B;$����w.9,��O���٣�
|��zD˭C+��Tė�˨��Qj�٤�]�������Q
0R^��;�Á�>�����W�}J�6TMc�	�Ӏ��}J12�P1��B�����t�R�^V�Aa��Vqi�8sa�a��E��Pz�p��
��e���p�7+b����qo�X̛�mRQ���~��C���|��ʅP`4Qg�hk,7�tu��W'��{Rw*~�oV�]L��&kx�h�Py����u�)�6�[��GXp�y��j��6��@���0V#:��?�9ްM��nx�Tʂ|���?���V�����      +     x�͔���0�g�s��|�-�uc�R�"��
��T�������C$��ϟ���,X0�Oz*CW�jt�4>�0Hm��Z�R�U����������]Z��t�<����/$�4N�$jQ�⟸����ȟVȻPȵ
��+>����]���~���eq[d��)d�,�sj���(����ŢoM+k��6=f�/|��0�(�F��t�Y�3�9�t��i��82�t��Q�3�hZR�$�Jf���(�z7��H:�CUU���S�      ,   :   x�K���L/*�*�҉P:L'B���@~Q.gA.�N���P:����l������ �� y      -   �  x�ݙ�n�@F��)����Ҫ��*�RE���"d�������c��d�`0��< r�;�q�;����4ʼp�m� �B��g��
����y�N�]~��+�,���ʒ*K�l����+������rA�N�Vㆭ�5/�N�8W�[Qz�A�!;����դ����L;)L�\�ɢ(}���4t?����s�cU]������zfmZ9��N
�^<��ڭ��򍷒i�oG�u����]צ<����Ǘ��y������H�'9��	FN8r��`d�Èr��������"X�`!��O���� !ҋ��]�#_�rR&Q�de��IT&Q>H~�ik�Q�F!��h�Q�F!���l0��Ȇ#�l0��Ȇ#[�l1��Ȗ#[�l1����c�(:G���K#�,�h��Z9;39�"���Jj`d��7�����f��s��-W��* ����%���#�Z�ۮ��j�N�G�>�A}��>�a�!Ї@�/8J>��������d{	�%�p� %Y�)(-Q�DYeIԁ}��x�h���5
���>4�����чA}P�(�0�à�>��p}X�a�����>,�������n��8��GO�:bTN�4*?ӌ�J��E/�o�Tm/�52���eOg%/������0N}���������&��_�l����_���`VÞ�2e>��YkG�8�n�jţ$=��6�n��l#�5]Ǐ:�F�x�N?}ٮO�>�<}~|]>���l΃��C�]/�<+�������y0_Lݴ����|̎��E��Dխu3�����$�x7�(��D���'ַ�ڷ�P����"a�Bg�*��R��%<9U��~�~�A/�]�#��uQ�f�TU���(<VU9��%�r�.5���d�*>�u]�F�ؤ�&�I�M�֛�&��h�4D
/ �x��A�+�m4��s:      .      x��˒�6���YOA�M��r��y��,u1�T��$�lF�`��W������f;�0�^V�r��`�M�I�<?�3��"�5(���_���s������zr}}�O�w�'?|�r@��#"�Z���[�P��/xa��xa*l〤�RD�R�l�xT�"q�R�V�@�F<Y]�/�lj	��m@d��ko��*�}r��ݢ2��ͪ�3��
��j��M]1�^�iD�,↔Up])�?EDꊈ6"b�	iDS]j�v���G�"�ˡ�5��j�h�"*uD����H��1���%v������8 �jQW��Z��)"��E]�)bR!�I%PjD:EL�@�;��A�ت'�������6�,�?�2�����;�[�I���;���bs,d��N��n�z�-6u�ꪭ��?��ojQ��W���m�}S6��3w��x�I����xW���M�+���]��ˋ�n_/��g�)�׷;]�����x�ES]ڶ�:���t[��G��ԇR3�i����������xj�=��=� \*�
��p`+K
ÒB�
�*��Q�F��j��Q�F��j��Qj�R{�ڣ���(�G��@N�ՕJ5��P�S��)��j�|	�S�#���!kcRqV58��BN����1�-��Y�"�����kp�58�X�D��(��:Fwd�hb6̈t�X�6�� c0�����1gH�Y�pl��x1�8�G�R��c�f֋a�v"��o���Y�u���N�j����.>��͇�Ӣ�ʽ���s-�gg�B���r�w��Ԩ�ͮ;?3�9ϵ��bhpU�������`��	�A�"�"��O�[�\�$�\^�C�I�N����5���W�!��H����|7��2tK�WxG��O�s��UD7��ZD�B��)r�\'H R�4�>E���1�)�q�]]�^�1�ߍ�}���yR�"�"��O�7�*A�B��)�m������"�H#�S��x� �H!҈��t�q���{;E�T��xa�
�P��/���/��B�m�[�Ѻ6�n�p��G�V�@�~[�r�zL�-2ڀ��-&���N�����~�1Ed둠��z��o=�^�iD�,�d[�?��G��a��c�4��.��ȑ�'9��Zs]t�1E�Q�t�qBc��k����
]�m=�h�"&�z��jQ�'����5�:EL*6���"�"�^�z�����(Y!�)�J�fJD
�+��P�B�
���
�*��P�F��j��Q�F��j��Q�F�=J�Qj�R{�ڣ���6S&�J��)Q�����`0(����T���"RW�R1N
����`0(������c���)	lF���`�0�_�͔�S�$�AMF���k��a���)�a�1`�fJ�X�Р�c��@6���͔����� �.K[�Ѥh�d�;�m@"�H!҈��i��#"����B- �cIJ�FB��8�m�v�إވ�v�XL<��b)j	D
�Fԧ�[�:A�B��)�m�>��e=��@�iD}�|�'H R�4�>E~Y�j@r��E$)DQ�"���L�@�iD}��fbl��c��"�H#�Y?���� ��"�H#�S�;Ӌ	D
�Fԧ�w���"�ؙR�"�"��O�o��	D
�Fԧȷ1�	�ۘ��@�iD}����J�@�iD}�ܦ����.��hV��G~����Kv��W�ZD�B��)��z� �H!҈�� 3��q� �"�"��O�o��	D
�Fԧ��z^]��j	D= �u������V���3 �H%��s����#V��R �mm@)h�������KZJa)��4��Z�� j/�m�T�`{v!6hD�B�bG����#����.���=+�s�!#�ڙkۙkۙk�̵b�Z1sm?sm?sm�ת��F�l�h}j��;{�e)s�����63�hf�1E�a׍�*H1�n�|f`n�I�gf�af�a���v��Ep�\�M1�Ȉ�F���G��#L�0R_3��;2��;2�]N��a��vF�����1��f�#c�qH�g�O�hXE��d��C̴��gC3���k��ivg�0`3Ԍ<5#O��S3fV3�Ԍ>5�O���3��>=�O���3��>=��������g�a�Ӈ3 az������D�Ȉ��-##ZFF��g�T�82�����S&G�v����Q�
���n�=0L��i��)gfƑ1�͌f�rfӌardL3�Αu3�1�����X;0�J�!�0��C��X;,����'�5C�#�Ș�1r��)�h:�n�>fy5cy���a}L3Fӑ1�aG����4��u	���f��#c�1ꎬ���i�g4c$&룚g�09�����c&1�3���I��Lb&g39��ə�L�$ar&	�3I�43���D��)`���ədmd���əČ0��w&�L��[cm�N�dprfA"g�:9��������&3��Ll����L�'g�����a�%g2.9�qə�K���of���0�6���Lf���)�������)׾u�}����u���6��1gS®��r�M��������h���xXX���y�'���\}�Ҝ�N��]�+v��OQ�H R�4�>E>_OQ���E���>J��O�	��_a!Z��l_�R��`��X��RK	,�c�J)�5��b6�P� IĪo�.ԇ���p@T��f�Wc䟜o�$�������K�jP�0"&�A� �N��hQD@n�,ALW��Z�բ.�"��
��RL�@]uŷ6��VJ�=gB쎾3��JU�K�.���K�.��4��(B��"4��(B����H��ʼ�{ﺸ)����u���;��v7G17��7����]�x)|������a�#n���;���������o�ݧ���ݣ�����q8e�?��I��v��'�l����ˏ�C|����Cτ���������)�������⫇�v��+��a��_��I�C//X�K�$;"�dGD��H�=�1����>"�� *¡+.Bŵ�
�:ET�zqD��$4�ĵ|�Þ�]����N-0����N-I����✗=��=�ΞZ��N-����ڜ�/�S9K_��r��O�,})��Y�r<����x�ΞZ���z��{J���"<�_����|���\�w���CӲ��ף��*z)�ʫ�Ex�*������������×(�ls)����dO=^O��.X��r��O�q���R<���,�S�9�2<��SK�T^O-�S:��婼�Z���zj��멥x*�����}���j8�'"��ƫ�݂�#������Sy��O���2<u�D���橼\[���rm��˵�x*/�婼�Z���zj	���Ex
�
�xVxD�8<><"z.��p�ǇK<>\�Y��
������2�N�Ǉ;��O�'�K<>|B:EL=�E/ǳ�W��)b��q�'�K<d\�!��)b��W�^�z8�\�Q������8�r4����7��P���xp�{����\�g�?��O.ȳ���'�������
?tV���JO�wb՝� ��Z:������H��oj��h1J��9��!Q��Z,%���R=�ꡔB]�ѓ#va���9���#V}u����HG��Q]����%���ZX��U�O���OV/��ބ��B��)�g�_��#"&�h�Bb���%&�G���N��o�pDE8t�E�|*��u��.�91Й$v����E@���"ZѢ�1-���N�%PWD:EL�@���>����WjD�����S�5�Z�R�^�z�RJU(U�UZU��"4��(B��"4��(�G=��QD�"zѣ�~�3	0���gp�|&�4�~FCC�e�p<|���gp�i#"����hp<|8��q[!Z��I(U�T|#��T�Rq�|߈�{�����P0��D�t�P03C�Ou����ǈȫ��Gj�R��S�Gj�R�Zn��ڤT��Y�F�.lҗw#"��X��A��w��x����[\�o�ǻ�����    YnP�1"&�A��iv�"Z�����Ka]��� ��� ��(B�����?���?v6y:��a��S���ٝƬl����qb�vX���7��������GDY2�Dtu�>J�d6"��FD��U���Й��L>X��gpDE�JE��NY!Z����U|Q(��l���H�Z>�O~M�%{�{�T"�=��<u*�Ϟzl��s^�����:{j�:�̞z<�js��(O�,})��Y�R<����x*g���T�җ�:{j�����)��S�T^O-�Sy�O��2<u�մ����:����I���?A9C\�?�2�S��S*���T��⩜!.�S9C\���%y*?Y���zj	���Ex
?w(�n�}4�>��^q�p�S~�)/��O���R<��k��T^�-�Sy��$O���2<��kK�T^�-�S�Okʞzl��멥x*���᩼�Z���zjI���ex*���੼�Z���,g�g9GD�n��#�g�����w�x����#b�Z�GD�3�{P���vNWz��(U�T�eAL=XS/P=k>!vGP�P�B�
��o~E�a�L�B�pL�|�q����~��0��Tg6Z����'���b��K�l����t����Ĳ8��A�r����@�?��"����eNo;�%��'���º�� G4��A3�@D5,�6u�"VJ!҈��|j�Þ�O\1�(OPs�;y_�ky�eO=vO�쩅xJeO-�S:{j!�:��eO=O�Z�=��vG�(���$���5��z���'b����/��i�� ����.�r��@]a Apa�HP�+l0�J)Dz�.��T<Y]��tגlL捂��(`��Y�Ps�;yZ��L�͞Z��D��B<����)�=�O�������p��7
̴Q�������XW^�~���31����(�i���8�ۆ�}x�ٽ+So�V���"r���BR�����-��K�Տh�2V/腮.�݌�.beݖ1_���Cm�����lD��@�iD="+�j@� �Q�H R�4�>En��<I��+Z����-"����.�x�u@�^��.g/@�.�}� VJ!҈��ބ	R Ub����r3 ����q$G�%$ZBb���"��4"�R�C�#r�1"�}Wq�]�<A�Q��}ǐ���)r A���w�	��c�,݆^��^��)�='E uB:E�#����5S�u���!�Oh=!h��)��90������:V;?�����$L�o���.6���~<օ��mB�2ү�?����s��M[g3�Ϛ��6�ڷ���VSԇ���g������|U���jm��y�S����nv*��6[`=�ojQ�	ܬ�-�y(pTsV��;�g=.{ؤ�ϯA��ٔ����Gj�̩��]gΘ�OO���)�K�����������u�5�*w�⿾���u����?�����(�ϊ��]uS��⯿��/\��M��_��+��ޚ�Y�磎f�K��zo0Y]�
���Zg�g�'Җ����e;[滯���{����~�O�<7{š��T7�͌I���j]���R��׮7�ﰺ�N;�t�^|�����mm�6�~���.�+�K�����(d�u��b��*���B؊�EG�:j����]<o?��{hޡgL���ǎ���t$��.�'�'F�k��l�}��b�����ߍe�h`��Ec7�>dd�꿫}����7!�h^��w�=�����kmC���ۺr�����	�p��=m����7���U=O>?�~��c	3��|n���ܪ?�.�B�f'��mW.~����|�=�YÍ�26��;�}T۲��0<ײ�B	=Iҿ�)��X[�������
���,�E�������v��vJ�֬\C/�@tC�莮����ܸ�:�]0�q�.p5���:��zp���讶:
;�������|�/nk�m��pB�mDm��.�j����?|4�1�#.�]En����ܡXG�훣e�򧵖�~���-f���&�����-nԹzl��l=��&���C�?�u������bo>��ҏ.�=m};�&'~s:@�oyI��up�s�lco����P�[�D�6��?�����w���A����qj���[4�߶U��}����G�ʺ�����a�伳]����ty������Ӧ���ݍ������>��5�|:mř�N>�;ߥ�[�_}�ի��/�{������?�8�l���j���>w��fMla3�1v�t@��+������j!���_�_�Z�V~�v�3��ݔ�:?�>?����I���f�69�Y�5����F�s��ǧN�/}�t�?��t6��.���-��U��q\ʩk�:���T�=�e\���y��i�Zx\�V�`K���O6]u�=�ݼkT)[_�n_�C�g! �b�|>\�G��̹-���Փ��ZvvV�]�|�����@�B�jΤş����p5����寛���ro�u�K�0dlECa`㎴��Ч��$<�
]oU��zn��T�?��9���������3��n�ST{#eײt}ǖ��M�(A���w:7��ng��m��n�b�P���o�N�#�\���X�=��-�m/��~�=�d�j�zߟ��bƨ�Z�v�i�.��7�.����X~q�v[#2�?�f޲q�[��k[�v����|]귥����@c�u�J�?_j7���
M�L�p��U�Q����MnSy<ѯ���s���/y�0s�����P��g+)�n����T�d)���_~x�0�=m�C������n���)ݞH=�ɕ�b��U�]cE�UX[Z�v���I����s��]��C�mC��lk����Ù�|
���a�v���sH��ݴ����&��;�Q�3��6�X����c'7��ߝ�θ�d�p�iS�@����ilFK"P�\�@7-��R��{�}�n�H/	�]��-��?��%�H�+���m�w��7�q���u��6��n^8߻�Sؿ�ĝ�������q��.J8��leL[����Ԯ:��>j�X�Ecwt�Ў���!�`ɞUVk��{j�ۘ�f?a�I�J�{�E�7�V�(�l��^��7)B�޺�w~7O���h¸��s�Df����B������T��●~5_�#ޔ�c��c�Э�3l~� �e|���QdxΧ�G�M9T�5�����,��/XO���e�&�ΰ�����4l�?��S��r�l�n�u�����a8�:]t��������v�8l�;�(6F��.8Z�\��5���>���J��W�Ʈ�갿:����1�t���YC��H[[WuR�f�F��^U��@�8'ڼNb_y�����ǡ�k���-��1y���%�F욿}�º]Pi�7a�k�/?)�s3��7�g�v����.��v4ɣݰ�Y|�՗_�}�g�C�:vYY�n��W�)2<�ɒd��Z��������j���gTa���Q����^�F��w�_+ ���(x_ ^>p]��}`ܑ
������g�l�a�zX7�\����A�w���'�Ү�Hd9ϧ?з#W�K���^zR�N�{E�"z��o����m)�n���[���A���e�7�^$��	uI_H:ty�t��f~��f��0�p#)��o�Ө�T���X��R=�R�k@�C����Y�7�8b�7X��`����T�DE|�u�Ҡ)D/4`���п{��`|;HRD��̅DD5��o�q�.o���	�[ui)���;~|M�#⢈f.$�#"&��� �7ND�=���ȿ���u��.�1�Y%vֈ��E@��o��"ZѢ�L1-���N�%PWD:EL�@��}}}�*�Z�� � ХP�B
E�興�K����(B��"`<F�Dh�QD�"zѣ� b"zӂb!���aepXa\���chD��u�H38�0FK����28�FDt	ԅ#��H38�pV�㜶B�N�*P�B�8�F2�8�>������cx��I�I��
��
��h�"�+"2o���2�+UL ��"�H#�S�s�u�"�H#�S���)�Ɖ��R-�XJ`�K�    PJ���h�������|��U�`]~X�b�֑]^$*�b@&��/�8���ˠ��C]n�}Z���im���|Z�+��GG>�刘5"b�
�����FE�2�m���º4"�M>a���H�h�B⎈��	�R}vʍ��39�"�1"�R�N�5,voi]0"b�`xH1]�A��TD�"Z}5"&�E�)b��GOH��I�~�j���呮����?*��P�B]0�"b&ThB���ҨK�.��` G�tiԥQ�F]=��QW��0����Q�`qw��b4�L���!jp�b����/��qD��u�58Dq:�����58G�t�	a��85MH����Q;��+D�1�0�I���0�1�8�G�S����68��m�c{D쎠���1�$O�ú�T��sĤ�<��4-~R?|��o�U��"j�T���X��R=�R�k@~�r�.l&Ks�-�����|g�c��3���ks�"zK�u��u�NƯ�}㈴;"��:����>��#�jP?"&���Ѣ��|:��բ.��1]��'Dt	�P���.����T���nKK1]u)ԥP�B
E(4�B
Eh�Q�FEh�Q�����`�Rn&�� �&�JM�y�p|Lq�b8<4d����܀z��|���gS��7����p����=F�l���{������q��vh��l�>=I�#"�rD$W����ӹe{Dc��2#�yD~��#*B�z3"����u����Һ���]>��k��g�6��dO=vO��ڳ���N���S��Sq�˞z��ZgO-�S�V}�S��S,qos��9q_��r�O��})�ʉ�r<���x�ΞZ�����{J����<��S��T^�.�Sy�O��<ޅ^���'��(g�K�'݄Ϟz��R9�_��r��O�q)���R<���,�S���2<��SK�T^O=~O鼞Z���7�����3��×����j����p�.uDWW���N��*��k���Sy��O���R<��k��T^�-�Sy��O�������Ӛ�����zj)��멥x*���⩼�Z���zj��멥x*�����n��tGD�sÓ�%��-��n�'wK<�[�����xL��c����2�N�'wGDO��ü%��=!�"���1�+D�1�p�����%�-���	�1�p
�4
�+T�K<<�����[��f<�;E}��1���l�|�8����h�����0o��_�p���]�M�	|������0�?����� �?�Q��� �?���� ��X�g�?��O.ճ���'�d�����?�u9L�j�m���W�����5m��^3wD�Q��'������G��J�ϕ9�����;?u���
��ڨ�.��O�?�=E�~B:E~�#�F�,V~�i_:�К�����.h��(����������n���t��nwU]|��hyS�.\|٩�?|�V��������2��JU�g�������{d>���ӳC8�q��_�?��?s��w�������(uW�촍7祔��~�g͉-��yݖ�q�.l0u?cQl;�]�"�w��u~�L���ㆢ���J��N�S| �w�1�qw��Q���Ïil�?J���!�bS�o몖4��mK�w�+{���q���VR��[QuB�������M형j���~T;UXj[tS���i!�
�k��⛧��Щ������q_������L��s�l�_Ѭ�/�����kY�}��b�/�]L�/� j	D
�Fԧ�M�W/$)DQ�"����>lDd����,�j���RK�X��R
u)���]�x����sD���nw;+�?Iܠ)e�!���|����:��'v�\Vv{]�s��X�a�~��2i�z�;���G�z���ޮ�UR�}=Ł�pLf��/D�o�C�^h��ӟ֎OJ���AF���	A�P�_}Lh�Ԙ�T�OL���ux�b�K2^"�)=G�	���R~o.E�ч:��u�8��邡-qhG�t5��;�D�(�E0#b"ZQ�"�K���t��T�R���	f�:~�њ���JU�K�.x K1*4�B]
uiԥQ�F]�4�b�4�ҨK��u���G]�(v(�t��f߈�.��c]�C��58DQ�#T��FD�oQ�Z�C��58DQ��qD���P�T���Q�S����u��z��q ��ql�H���W�Ƕ��mpl�����L}޶}�ms�U��?��� ���8��/����?N/�����l��h��8e�,��l���ڀ�����Mܑ��JP��E$)DQ�"���*A�B��)�m\Hʱ�)j	D
�Fԧȷ�y�"�H#�Sv�v���sO؋��m�s9T'�*�P�H R�4�>E�>��	�"��G�}�*Iy��R�iD}��	����8��Q�H R�4�>E��]$(���V��t�܆U��R���꯮^��r8�lBk�\]n�M�w�otK�WxG��OQ��C��ܱ�暪:����ܞ�h��	��E�D-�P��nI�{h� ��T���
�����w�6��*zG�jD}��ӎ��	���i�T� ߛ��Mx۠��ߣ��o��:{�{
����"�ex1�M=�N�*���q~�כ^�w_����'E^�r>E^�MQ�(�Z�g&���đ��8��#��˼xǫ��03Ŝ)����۽_A$�+��,���Q�"?���8!�"?�qD,!X"��0�YK�@�xe��:{��{*�~�KGD?˥Ab���	���@�iD}��!6nj�B��(�b���%M�؅��óa5�`�׬z�I���@�iD}��&���8ˑ��������\��)"���K���t��T�RJ(U�Tp�H]
�*ԥP�B]
u)ԥP�B]uiԥQ�F]uiԥQ�F]=��QW��z�գ�u���Ou���cP8l(����j��/l�B�
�P��=^��=\����!�#Z��f��#�G���8bwl����G�����0Z[d���[L�����a��a9E�����R�u>��ȧ��"��AD�������;�?EDꊈ6"b�	iDS]j�v������r��J�A��u�����^^� �_GĤBW���#bR�
B�p/䂮u��:fDLW��"�SĤB`s�$H�H����^`���]��)bR!�:@�z�RJU(U��Z�T�RJ�(U�T�R5J�(U�T�R5J�(�G�=J�Qj�R{�ڣT�'��J��FL�A�`P0p�U�`DP=U?L:L*�	�Ag���U��1�-��8a�^`�0��&CN��6
l#���Y�0�S9k���AZk�fDpG� �9C���c��@�t%"��T�X�zlf�6wOK�S��4"W R��[���^(�B��xa��p��6��dVD�.�Ͷ��Cε	r�M�c��7P�	�vI~��T��2h��N"��ҰdQ�(8�%���B�.�O�K�)J/T�4�~�6���!7�D��+"bՈ�U'�Mu���'"r�a��.5����b/4D�N�:"��V�7"&z���ڠT����K�AW��Z�a("��E]�)bR!~��K�Ԉt��z��v ���1��H�� 
�+��P�B�
���
�*��P�F��j��Q�F��j��Q�F�=J�Qj�R{�ڣ����7!��J5DL�A�`P0# TO�����y�I�8a0(
����0"�"��E�'�l/�AMF���@%�La�h�"� ��h���K��A`F�S���A`�fDpG� �9C���c��@6��F���@�JkP����ӻU|wz	4E-"�H!҈��3���^���Wk�US�S��G��a��#��ڡ.oh^��*G��z�wԈ��7�G{�o�j	D
�Fԧȿ��*A�B��)
od]Ƿ���9�s��3���"�H#�S�D�q��㫵�/� j	D
�Fԧ���	�"��O�[��.#����"R��[���^(�B��xa��p��6(�v6C�.�Ͷ��|h������I����]����;FD��cD��҈H]�KD �  �t�%"b��8҈H]-�
�oPpĤ�(ztDL*t�	iD�.�R���]��z��aXy��Қc�ʇ��-���)ԪP�B�
-�P�B�
�jԥQ�F]uiԥQ�F]u���G]=����pB�X�K�]]]]]]҈��D��|��ե F����SD�*����!FĤB|�8SDĤ6(B���$"&�aDL*�ǈ:��ImQjDu��z�RA䛐NS�1"�~���	[3��� 35DÈ�X�uX3�BSC̜�ŤB���I��Q�u1��B��ŤB̌�I�0Q�u1�=J��:!��JŴIb�U����LJb&%1���II̤$fR�&�i�ĴI�T��zH�$&W1�C�%1���Nk#��6
l#�L�$�[�A�%1ݚ�Nk��`���LbR&1)��5�!����|Hb>$d�yD*E�A�5I̚��;/B�o�I�5�ZD�B��)�8W	�"��OQΏ��:�I�-0����R����N��a����g߾���KD]��p�̷,Z֕�PM���r�w�GU�r��2���� ~����9��9���������p�ڸ3z�e��)������q'���p��w������3c��b��CH��"�@�>\�ƃ#��xv]5�)��"m�8��	k��G�1��_/!��.6-#
��8�WW�4�x2�?Ӑ�Հ��P�)�/djS��kP@�!~�G��UqI]���w�����qt      /     x��V͎�4>w��7����H�-	׹x'�ű3�i�Ή���q{�D�d����N'���ϡ�t씫��*�a%St^���Qb�.���ƽ4�ƨ��AŨ��v���`tM[����6����"��}�xWK��
�軤<�$:y��n#��h��JЃw:
K��j��nE�鯿�n��)*/�KAD/�y{U�*�����ďڎ� ����Ҹ��_��H��5����H��j��q�됣��Q��tP��(�I"���L.q#�@�QG����P)�Ab��91��Y�
6�V#͍���q���q�H1�d��K*Q0���Kя"����#����F2���Sb�s�ʸo8?�(mج��W��g���$�^[=~�����t`�R�d��_L���MؐtdA� .y/g8M���ŭ4Ns�S
P����m��F����3���d)�	W�E�� 2!�_j�M(�3w,ߠ���h���_�k{El��" �kz1QqrJDց�o�=��%} �ZKz���xF>��H)%0V�X^Y����,G�=!�_�XƏ���&����7��>�qM.�)��V��l���l[P���/�SnU-qP��7$Zhd@L���F\���<^���ʹ�6����[(�u��ƙ�io���%n[|8������V�J��'I�����1�5�W���xknzG�J�j�}�"Y��j�H�>v�&�6⒇(�G;(��]�[v��M��s�D�6�I���܀Y��P*�J� k?B��HO��ȗ/���}\��Q/���eӣ�pm�����>����F��6�����fךI`�!��<�I;�ɽv��ݼS��؍�]���&�8\z��K�zU��I�F�b�O��<V�oKbs?nX��c`R��7� ��@�52��)��͌�̜u
8��񝃎w	�\a�-�kX���$�B����F	1���z]�%�����7�Ǡ�M��*��-�6׼�|F�`�So̵3��D�h��eq�:A���i�=��� (ib��J��	&���[x��e����D�6p�n�'4�wN�L4Q�M5�&J�D�����
���3�����!Ǉ[gR�39�
5Nj�XY��xA������ʠ���-k�>�C-�����P�3a���\����]��Ov�:u�Kފ/��������
�r%K� ��C�I��|���xyޟܓ�*�!ɉ��2�ն�W���v|O(��T�y��&�����P����Pdt_T��>�ȉ���MUU�'�~      0   /   x�3�4L-R()��M-.)J����8�Rф�9�хL8MЅb���� Q�      1   q   x��5���=���(U!�4)�3��f��\c��̜|d�l�D�q"�b���"��<�} ���"��$?//�&U��M-�j���JIM���+9��J���L/JLI���b���� Ob5�      2      x������ � �      3      x������ � �      4      x������ � �     