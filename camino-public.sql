PGDMP     
    	                y            camino_public    13.2    13.2 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    8391618    camino_public    DATABASE     o   CREATE DATABASE camino_public WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'UTF-8';
    DROP DATABASE camino_public;
                postgres    false            �            1259    8389186    activites_statuts    TABLE     �   CREATE TABLE public.activites_statuts (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    couleur character varying(16) NOT NULL
);
 %   DROP TABLE public.activites_statuts;
       public         heap    postgres    false            �            1259    8389189    activites_types    TABLE     y  CREATE TABLE public.activites_types (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    sections jsonb[] NOT NULL,
    frequence_id character varying(3) NOT NULL,
    date_debut character varying(255) NOT NULL,
    delai_mois integer,
    satisfaction_url character varying(255),
    ordre integer NOT NULL,
    email character varying(128)
);
 #   DROP TABLE public.activites_types;
       public         heap    postgres    false            �            1259    8389195     activites_types__documents_types    TABLE     �   CREATE TABLE public.activites_types__documents_types (
    activite_type_id character varying(3) NOT NULL,
    document_type_id character varying(3) NOT NULL,
    optionnel boolean
);
 4   DROP TABLE public.activites_types__documents_types;
       public         heap    postgres    false            �            1259    8389198    activites_types__pays    TABLE     �   CREATE TABLE public.activites_types__pays (
    pays_id character varying(3) NOT NULL,
    activite_type_id character varying(3) NOT NULL
);
 )   DROP TABLE public.activites_types__pays;
       public         heap    postgres    false            �            1259    8389201    administrations    TABLE     c  CREATE TABLE public.administrations (
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
       public         heap    postgres    false            �            1259    8389207     administrations__activites_types    TABLE     �   CREATE TABLE public.administrations__activites_types (
    activite_type_id character varying(3) NOT NULL,
    administration_id character varying(64) NOT NULL,
    modification_interdit boolean,
    lecture_interdit boolean
);
 4   DROP TABLE public.administrations__activites_types;
       public         heap    postgres    false            �            1259    8389210    administrations__titres_types    TABLE     �   CREATE TABLE public.administrations__titres_types (
    administration_id character varying(255) NOT NULL,
    titre_type_id character varying(255) NOT NULL,
    gestionnaire boolean,
    associee boolean
);
 1   DROP TABLE public.administrations__titres_types;
       public         heap    postgres    false            �            1259    8389216 +   administrations__titres_types__etapes_types    TABLE     A  CREATE TABLE public.administrations__titres_types__etapes_types (
    administration_id character varying(255) NOT NULL,
    titre_type_id character varying(255) NOT NULL,
    etape_type_id character varying(255) NOT NULL,
    lecture_interdit boolean,
    creation_interdit boolean,
    modification_interdit boolean
);
 ?   DROP TABLE public.administrations__titres_types__etapes_types;
       public         heap    postgres    false            �            1259    8389222 -   administrations__titres_types__titres_statuts    TABLE     f  CREATE TABLE public.administrations__titres_types__titres_statuts (
    administration_id character varying(255) NOT NULL,
    titre_type_id character varying(255) NOT NULL,
    titre_statut_id character varying(255) NOT NULL,
    titres_modification_interdit boolean,
    demarches_modification_interdit boolean,
    etapes_modification_interdit boolean
);
 A   DROP TABLE public.administrations__titres_types__titres_statuts;
       public         heap    postgres    false            �            1259    8389228    administrations_types    TABLE     �   CREATE TABLE public.administrations_types (
    id character varying(64) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer
);
 )   DROP TABLE public.administrations_types;
       public         heap    postgres    false            �            1259    8389231    annees    TABLE     �   CREATE TABLE public.annees (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    frequence_id character varying(3)
);
    DROP TABLE public.annees;
       public         heap    postgres    false            �            1259    8389234    caches    TABLE     Y   CREATE TABLE public.caches (
    id character varying(128) NOT NULL,
    valeur jsonb
);
    DROP TABLE public.caches;
       public         heap    postgres    false            �            1259    8389240    communes    TABLE     �   CREATE TABLE public.communes (
    id character varying(5) NOT NULL,
    nom character varying(255) NOT NULL,
    departement_id character varying(3) NOT NULL
);
    DROP TABLE public.communes;
       public         heap    postgres    false            �            1259    8389243    definitions    TABLE     �   CREATE TABLE public.definitions (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    "table" character varying(255),
    ordre integer NOT NULL,
    description text
);
    DROP TABLE public.definitions;
       public         heap    postgres    false            �            1259    8389249    demarches_statuts    TABLE     �   CREATE TABLE public.demarches_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    description text,
    couleur character varying(16) NOT NULL,
    ordre integer NOT NULL
);
 %   DROP TABLE public.demarches_statuts;
       public         heap    postgres    false            �            1259    8389255    demarches_types    TABLE     :  CREATE TABLE public.demarches_types (
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
       public         heap    postgres    false            �            1259    8389261    departements    TABLE     �   CREATE TABLE public.departements (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    region_id character varying(2) NOT NULL,
    cheflieu_id character varying(5)
);
     DROP TABLE public.departements;
       public         heap    postgres    false            �            1259    8389264    devises    TABLE     �   CREATE TABLE public.devises (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer
);
    DROP TABLE public.devises;
       public         heap    postgres    false            �            1259    8389267 	   documents    TABLE     y  CREATE TABLE public.documents (
    id character varying(255) NOT NULL,
    type_id character varying(3) NOT NULL,
    date character varying(10) NOT NULL,
    entreprise_id character varying(64),
    titre_etape_id character varying(128),
    description character varying(1024),
    titre_activite_id character varying(128),
    titre_travaux_etape_id character varying(128),
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
       public         heap    postgres    false            �            1259    8389273    documents_types    TABLE     �   CREATE TABLE public.documents_types (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    repertoire character varying(255) NOT NULL
);
 #   DROP TABLE public.documents_types;
       public         heap    postgres    false            �            1259    8389279    domaines    TABLE     �   CREATE TABLE public.domaines (
    id character varying(1) NOT NULL,
    nom character varying(255) NOT NULL,
    description text,
    ordre integer NOT NULL
);
    DROP TABLE public.domaines;
       public         heap    postgres    false            �            1259    8389285    entreprises    TABLE     �  CREATE TABLE public.entreprises (
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
    telephone character varying(255),
    archive boolean DEFAULT false
);
    DROP TABLE public.entreprises;
       public         heap    postgres    false            �            1259    8389292    entreprises_etablissements    TABLE       CREATE TABLE public.entreprises_etablissements (
    id character varying(64) NOT NULL,
    entreprise_id character varying(64) NOT NULL,
    nom character varying(255),
    legal_siret character varying(255),
    date_debut character varying(10),
    date_fin character varying(10)
);
 .   DROP TABLE public.entreprises_etablissements;
       public         heap    postgres    false            �            1259    8389298    etapes_statuts    TABLE     �   CREATE TABLE public.etapes_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    description text,
    couleur character varying(16) NOT NULL
);
 "   DROP TABLE public.etapes_statuts;
       public         heap    postgres    false            �            1259    8389304    etapes_types    TABLE     �  CREATE TABLE public.etapes_types (
    id character varying(3) NOT NULL,
    parent_id character varying(3),
    nom character varying(128),
    description text,
    ordre integer NOT NULL,
    fondamentale boolean,
    "unique" boolean,
    acceptation_auto boolean,
    legal_ref character varying(255),
    legal_lien character varying(255),
    date_debut character varying(10),
    date_fin character varying(10),
    sections jsonb[],
    public_lecture boolean,
    entreprises_lecture boolean
);
     DROP TABLE public.etapes_types;
       public         heap    postgres    false            �            1259    8389310    etapes_types__etapes_statuts    TABLE     �   CREATE TABLE public.etapes_types__etapes_statuts (
    etape_type_id character varying(7) NOT NULL,
    etape_statut_id character varying(3) NOT NULL,
    ordre integer
);
 0   DROP TABLE public.etapes_types__etapes_statuts;
       public         heap    postgres    false            �            1259    8389313    forets    TABLE     o   CREATE TABLE public.forets (
    id character varying(30) NOT NULL,
    nom character varying(255) NOT NULL
);
    DROP TABLE public.forets;
       public         heap    postgres    false            �            1259    8389316 
   frequences    TABLE     �   CREATE TABLE public.frequences (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    periodes_nom character varying(255)
);
    DROP TABLE public.frequences;
       public         heap    postgres    false            �            1259    8389322    geo_systemes    TABLE       CREATE TABLE public.geo_systemes (
    id character varying(5) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer,
    unite_id character varying(3) NOT NULL,
    zone character varying(255),
    definition_proj4 character varying(255)
);
     DROP TABLE public.geo_systemes;
       public         heap    postgres    false            �            1259    8389328    globales    TABLE     f   CREATE TABLE public.globales (
    id character varying(255) NOT NULL,
    valeur boolean NOT NULL
);
    DROP TABLE public.globales;
       public         heap    postgres    false            �            1259    8389331    knex_migrations    TABLE     �   CREATE TABLE public.knex_migrations (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);
 #   DROP TABLE public.knex_migrations;
       public         heap    postgres    false            �            1259    8389334    knex_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.knex_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.knex_migrations_id_seq;
       public          postgres    false    230            �           0    0    knex_migrations_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.knex_migrations_id_seq OWNED BY public.knex_migrations.id;
          public          postgres    false    231            �            1259    8389336    knex_migrations_lock    TABLE     `   CREATE TABLE public.knex_migrations_lock (
    index integer NOT NULL,
    is_locked integer
);
 (   DROP TABLE public.knex_migrations_lock;
       public         heap    postgres    false            �            1259    8389339    knex_migrations_lock_index_seq    SEQUENCE     �   CREATE SEQUENCE public.knex_migrations_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.knex_migrations_lock_index_seq;
       public          postgres    false    232            �           0    0    knex_migrations_lock_index_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNED BY public.knex_migrations_lock.index;
          public          postgres    false    233            �            1259    8389341    mois    TABLE     �   CREATE TABLE public.mois (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    frequence_id character varying(3),
    trimestre_id integer
);
    DROP TABLE public.mois;
       public         heap    postgres    false            �            1259    8389344    pays    TABLE     �   CREATE TABLE public.pays (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    timezone character varying(255)
);
    DROP TABLE public.pays;
       public         heap    postgres    false            �            1259    8389350    permissions    TABLE     �   CREATE TABLE public.permissions (
    id character varying(12) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer
);
    DROP TABLE public.permissions;
       public         heap    postgres    false            �            1259    8389353    phases_statuts    TABLE     �   CREATE TABLE public.phases_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    couleur character varying(16) NOT NULL
);
 "   DROP TABLE public.phases_statuts;
       public         heap    postgres    false            �            1259    8389356    references_types    TABLE     x   CREATE TABLE public.references_types (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL
);
 $   DROP TABLE public.references_types;
       public         heap    postgres    false            �            1259    8389359    regions    TABLE     �   CREATE TABLE public.regions (
    id character varying(2) NOT NULL,
    nom character varying(255),
    pays_id character varying(3) NOT NULL,
    cheflieu_id character varying(5)
);
    DROP TABLE public.regions;
       public         heap    postgres    false            �            1259    8389362 
   substances    TABLE     �   CREATE TABLE public.substances (
    id character varying(4) NOT NULL,
    nom character varying(255) NOT NULL,
    symbole character varying(255),
    gerep integer,
    description character varying(2048)
);
    DROP TABLE public.substances;
       public         heap    postgres    false            �            1259    8389368    substances__substances_legales    TABLE     �   CREATE TABLE public.substances__substances_legales (
    substance_id character varying(255) NOT NULL,
    substance_legale_id character varying(255) NOT NULL
);
 2   DROP TABLE public.substances__substances_legales;
       public         heap    postgres    false            �            1259    8389374    substances_fiscales    TABLE     :  CREATE TABLE public.substances_fiscales (
    id character varying(4) NOT NULL,
    substance_legale_id character varying(255) NOT NULL,
    unite_id character varying(255) NOT NULL,
    redevance_unite_id character varying(255),
    nom character varying(255) NOT NULL,
    description character varying(2048)
);
 '   DROP TABLE public.substances_fiscales;
       public         heap    postgres    false            �            1259    8389380    substances_legales    TABLE     �   CREATE TABLE public.substances_legales (
    id character varying(255) NOT NULL,
    nom character varying(255) NOT NULL,
    domaine_id character varying(1) NOT NULL,
    description text,
    substance_legale_code_id character varying(255) NOT NULL
);
 &   DROP TABLE public.substances_legales;
       public         heap    postgres    false            �            1259    8389386    substances_legales_codes    TABLE     �   CREATE TABLE public.substances_legales_codes (
    id character varying(255) NOT NULL,
    nom character varying(255),
    code character varying(255) NOT NULL,
    description text,
    lien character varying(255) NOT NULL,
    ordre integer NOT NULL
);
 ,   DROP TABLE public.substances_legales_codes;
       public         heap    postgres    false            �            1259    8389392    titres    TABLE     �  CREATE TABLE public.titres (
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
    doublon_titre_id character varying(128),
    contenus_titre_etapes_ids jsonb,
    coordonnees point,
    props_titre_etapes_ids jsonb DEFAULT '{}'::jsonb
);
    DROP TABLE public.titres;
       public         heap    postgres    false            �            1259    8389402    titres_activites    TABLE     �  CREATE TABLE public.titres_activites (
    id character varying(255) NOT NULL,
    titre_id character varying(128),
    utilisateur_id character varying(128),
    date character varying(10),
    date_saisie character varying(10),
    contenu jsonb,
    type_id character varying(3) NOT NULL,
    statut_id character varying(3) NOT NULL,
    annee integer,
    periode_id integer,
    sections jsonb[],
    suppression boolean
);
 $   DROP TABLE public.titres_activites;
       public         heap    postgres    false            �            1259    8389408 $   titres_administrations_gestionnaires    TABLE     �   CREATE TABLE public.titres_administrations_gestionnaires (
    titre_id character varying(128) NOT NULL,
    administration_id character varying(64) NOT NULL,
    associee boolean
);
 8   DROP TABLE public.titres_administrations_gestionnaires;
       public         heap    postgres    false            �            1259    8389411    titres_administrations_locales    TABLE     �   CREATE TABLE public.titres_administrations_locales (
    titre_etape_id character varying(128) NOT NULL,
    administration_id character varying(64) NOT NULL,
    associee boolean,
    coordinateur boolean
);
 2   DROP TABLE public.titres_administrations_locales;
       public         heap    postgres    false            �            1259    8389414    titres_amodiataires    TABLE     �   CREATE TABLE public.titres_amodiataires (
    titre_etape_id character varying(128) NOT NULL,
    entreprise_id character varying(64) NOT NULL,
    operateur boolean
);
 '   DROP TABLE public.titres_amodiataires;
       public         heap    postgres    false            �            1259    8389417    titres_communes    TABLE     �   CREATE TABLE public.titres_communes (
    titre_etape_id character varying(128) NOT NULL,
    commune_id character varying(8) NOT NULL,
    surface integer
);
 #   DROP TABLE public.titres_communes;
       public         heap    postgres    false            �            1259    8389420    titres_demarches    TABLE     n  CREATE TABLE public.titres_demarches (
    id character varying(128) NOT NULL,
    titre_id character varying(128) NOT NULL,
    type_id character varying(3) NOT NULL,
    statut_id character varying(3) DEFAULT 'ind'::character varying NOT NULL,
    public_lecture boolean DEFAULT false,
    entreprises_lecture boolean DEFAULT false,
    ordre integer DEFAULT 0
);
 $   DROP TABLE public.titres_demarches;
       public         heap    postgres    false            �            1259    8389427    titres_demarches_liens    TABLE     �   CREATE TABLE public.titres_demarches_liens (
    enfant_titre_demarche_id character varying(128) NOT NULL,
    parent_titre_demarche_id character varying(128) NOT NULL
);
 *   DROP TABLE public.titres_demarches_liens;
       public         heap    postgres    false            �            1259    8389430    titres_etapes    TABLE     �  CREATE TABLE public.titres_etapes (
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
    contenu jsonb,
    incertitudes jsonb,
    heritage_props jsonb,
    heritage_contenu jsonb
);
 !   DROP TABLE public.titres_etapes;
       public         heap    postgres    false            �            1259    8389436    titres_etapes_justificatifs    TABLE     �   CREATE TABLE public.titres_etapes_justificatifs (
    titre_etape_id character varying(128) NOT NULL,
    document_id character varying(255) NOT NULL
);
 /   DROP TABLE public.titres_etapes_justificatifs;
       public         heap    postgres    false            �            1259    8389439    titres_forets    TABLE     �   CREATE TABLE public.titres_forets (
    titre_etape_id character varying(128) NOT NULL,
    foret_id character varying(8) NOT NULL,
    surface integer
);
 !   DROP TABLE public.titres_forets;
       public         heap    postgres    false                        1259    8389442    titres_phases    TABLE     �   CREATE TABLE public.titres_phases (
    titre_demarche_id character varying(128) NOT NULL,
    statut_id character varying(3) NOT NULL,
    date_debut character varying(10),
    date_fin character varying(10)
);
 !   DROP TABLE public.titres_phases;
       public         heap    postgres    false                       1259    8389445    titres_points    TABLE     o  CREATE TABLE public.titres_points (
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
       public         heap    postgres    false                       1259    8389451    titres_points_references    TABLE     �   CREATE TABLE public.titres_points_references (
    id character varying(255) NOT NULL,
    titre_point_id character varying(255),
    geo_systeme_id character varying(5) NOT NULL,
    coordonnees point NOT NULL,
    opposable boolean
);
 ,   DROP TABLE public.titres_points_references;
       public         heap    postgres    false                       1259    8389457    titres_references    TABLE     �   CREATE TABLE public.titres_references (
    titre_id character varying(128) NOT NULL,
    type_id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL
);
 %   DROP TABLE public.titres_references;
       public         heap    postgres    false                       1259    8389460    titres_statuts    TABLE     �   CREATE TABLE public.titres_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    description text,
    couleur character varying(16) NOT NULL,
    ordre integer
);
 "   DROP TABLE public.titres_statuts;
       public         heap    postgres    false                       1259    8389466    titres_substances    TABLE     �   CREATE TABLE public.titres_substances (
    titre_etape_id character varying(128) NOT NULL,
    substance_id character varying(4) NOT NULL,
    ordre integer
);
 %   DROP TABLE public.titres_substances;
       public         heap    postgres    false                       1259    8389469    titres_titulaires    TABLE     �   CREATE TABLE public.titres_titulaires (
    titre_etape_id character varying(128) NOT NULL,
    entreprise_id character varying(64) NOT NULL,
    operateur boolean
);
 %   DROP TABLE public.titres_titulaires;
       public         heap    postgres    false                       1259    8389472    titres_travaux    TABLE     �   CREATE TABLE public.titres_travaux (
    id character varying(128) NOT NULL,
    titre_id character varying(128),
    statut_id character varying(3) DEFAULT 'ind'::character varying,
    type_id character varying(3),
    ordre integer
);
 "   DROP TABLE public.titres_travaux;
       public         heap    postgres    false                       1259    8389476    titres_travaux_etapes    TABLE     4  CREATE TABLE public.titres_travaux_etapes (
    id character varying(255) NOT NULL,
    titre_travaux_id character varying(128),
    statut_id character varying(3),
    type_id character varying(3),
    date character varying(10),
    duree integer,
    surface real,
    contenu jsonb,
    ordre integer
);
 )   DROP TABLE public.titres_travaux_etapes;
       public         heap    postgres    false            	           1259    8389482    titres_types    TABLE     �   CREATE TABLE public.titres_types (
    id character varying(3) NOT NULL,
    domaine_id character varying(1) NOT NULL,
    type_id character varying(3) NOT NULL,
    contenu_ids jsonb[],
    archive boolean
);
     DROP TABLE public.titres_types;
       public         heap    postgres    false            
           1259    8389488    titres_types__activites_types    TABLE     �   CREATE TABLE public.titres_types__activites_types (
    titre_type_id character varying(3) NOT NULL,
    activite_type_id character varying(3) NOT NULL
);
 1   DROP TABLE public.titres_types__activites_types;
       public         heap    postgres    false                       1259    8389491    titres_types__demarches_types    TABLE     �  CREATE TABLE public.titres_types__demarches_types (
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
       public         heap    postgres    false                       1259    8389497 +   titres_types__demarches_types__etapes_types    TABLE       CREATE TABLE public.titres_types__demarches_types__etapes_types (
    titre_type_id character varying(3) NOT NULL,
    ordre integer,
    demarche_type_id character varying(7) NOT NULL,
    etape_type_id character varying(3) NOT NULL,
    sections jsonb[]
);
 ?   DROP TABLE public.titres_types__demarches_types__etapes_types;
       public         heap    postgres    false                       1259    8389503    titres_types__titres_statuts    TABLE     �   CREATE TABLE public.titres_types__titres_statuts (
    titre_type_id character varying(255) NOT NULL,
    titre_statut_id character varying(255) NOT NULL,
    public_lecture boolean
);
 0   DROP TABLE public.titres_types__titres_statuts;
       public         heap    postgres    false                       1259    8389509    titres_types_types    TABLE     �   CREATE TABLE public.titres_types_types (
    id character varying(2) NOT NULL,
    nom character varying(255) NOT NULL,
    description text,
    ordre integer NOT NULL
);
 &   DROP TABLE public.titres_types_types;
       public         heap    postgres    false                       1259    8389515    travaux_types    TABLE     �   CREATE TABLE public.travaux_types (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    description text,
    ordre integer NOT NULL
);
 !   DROP TABLE public.travaux_types;
       public         heap    postgres    false                       1259    8389521    travaux_types__etapes_types    TABLE     �   CREATE TABLE public.travaux_types__etapes_types (
    travaux_type_id character varying(3) NOT NULL,
    etape_type_id character varying(3) NOT NULL,
    sections jsonb[],
    ordre integer NOT NULL
);
 /   DROP TABLE public.travaux_types__etapes_types;
       public         heap    postgres    false                       1259    8389527 
   trimestres    TABLE     �   CREATE TABLE public.trimestres (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    frequence_id character varying(3)
);
    DROP TABLE public.trimestres;
       public         heap    postgres    false                       1259    8389530    unites    TABLE     �   CREATE TABLE public.unites (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    symbole character varying(255) NOT NULL,
    reference_unite_id character varying(3),
    reference_unite_ratio real
);
    DROP TABLE public.unites;
       public         heap    postgres    false                       1259    8389536    utilisateurs    TABLE     �  CREATE TABLE public.utilisateurs (
    id character varying(255) NOT NULL,
    email character varying(255),
    mot_de_passe character varying(255) NOT NULL,
    nom character varying(255),
    prenom character varying(255),
    telephone_fixe character varying(255),
    telephone_mobile character varying(255),
    refresh_token character varying(255),
    permission_id character varying(12) NOT NULL,
    preferences json
);
     DROP TABLE public.utilisateurs;
       public         heap    postgres    false                       1259    8389542    utilisateurs__administrations    TABLE     �   CREATE TABLE public.utilisateurs__administrations (
    utilisateur_id character varying(64),
    administration_id character varying(64)
);
 1   DROP TABLE public.utilisateurs__administrations;
       public         heap    postgres    false                       1259    8389545    utilisateurs__entreprises    TABLE     �   CREATE TABLE public.utilisateurs__entreprises (
    utilisateur_id character varying(64),
    entreprise_id character varying(64)
);
 -   DROP TABLE public.utilisateurs__entreprises;
       public         heap    postgres    false            �           2604    8389548    knex_migrations id    DEFAULT     x   ALTER TABLE ONLY public.knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.knex_migrations_id_seq'::regclass);
 A   ALTER TABLE public.knex_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �           2604    8389549    knex_migrations_lock index    DEFAULT     �   ALTER TABLE ONLY public.knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.knex_migrations_lock_index_seq'::regclass);
 I   ALTER TABLE public.knex_migrations_lock ALTER COLUMN index DROP DEFAULT;
       public          postgres    false    233    232            r          0    8389186    activites_statuts 
   TABLE DATA           =   COPY public.activites_statuts (id, nom, couleur) FROM stdin;
    public          postgres    false    200   ��      s          0    8389189    activites_types 
   TABLE DATA           �   COPY public.activites_types (id, nom, sections, frequence_id, date_debut, delai_mois, satisfaction_url, ordre, email) FROM stdin;
    public          postgres    false    201   �      t          0    8389195     activites_types__documents_types 
   TABLE DATA           i   COPY public.activites_types__documents_types (activite_type_id, document_type_id, optionnel) FROM stdin;
    public          postgres    false    202   ��      u          0    8389198    activites_types__pays 
   TABLE DATA           J   COPY public.activites_types__pays (pays_id, activite_type_id) FROM stdin;
    public          postgres    false    203   M�      v          0    8389201    administrations 
   TABLE DATA           �   COPY public.administrations (id, type_id, nom, abreviation, service, url, email, telephone, adresse1, adresse2, code_postal, commune, cedex, departement_id, region_id) FROM stdin;
    public          postgres    false    204   u�      w          0    8389207     administrations__activites_types 
   TABLE DATA           �   COPY public.administrations__activites_types (activite_type_id, administration_id, modification_interdit, lecture_interdit) FROM stdin;
    public          postgres    false    205   9�      x          0    8389210    administrations__titres_types 
   TABLE DATA           q   COPY public.administrations__titres_types (administration_id, titre_type_id, gestionnaire, associee) FROM stdin;
    public          postgres    false    206   ��      y          0    8389216 +   administrations__titres_types__etapes_types 
   TABLE DATA           �   COPY public.administrations__titres_types__etapes_types (administration_id, titre_type_id, etape_type_id, lecture_interdit, creation_interdit, modification_interdit) FROM stdin;
    public          postgres    false    207   ��      z          0    8389222 -   administrations__titres_types__titres_statuts 
   TABLE DATA           �   COPY public.administrations__titres_types__titres_statuts (administration_id, titre_type_id, titre_statut_id, titres_modification_interdit, demarches_modification_interdit, etapes_modification_interdit) FROM stdin;
    public          postgres    false    208   û      {          0    8389228    administrations_types 
   TABLE DATA           ?   COPY public.administrations_types (id, nom, ordre) FROM stdin;
    public          postgres    false    209   ��      |          0    8389231    annees 
   TABLE DATA           7   COPY public.annees (id, nom, frequence_id) FROM stdin;
    public          postgres    false    210   +�      }          0    8389234    caches 
   TABLE DATA           ,   COPY public.caches (id, valeur) FROM stdin;
    public          postgres    false    211   S�      ~          0    8389240    communes 
   TABLE DATA           ;   COPY public.communes (id, nom, departement_id) FROM stdin;
    public          postgres    false    212   ��                0    8389243    definitions 
   TABLE DATA           Q   COPY public.definitions (id, nom, slug, "table", ordre, description) FROM stdin;
    public          postgres    false    213   B�      �          0    8389249    demarches_statuts 
   TABLE DATA           Q   COPY public.demarches_statuts (id, nom, description, couleur, ordre) FROM stdin;
    public          postgres    false    214   ��      �          0    8389255    demarches_types 
   TABLE DATA           �   COPY public.demarches_types (id, nom, description, ordre, duree, points, substances, titulaires, renouvelable, exception, auto) FROM stdin;
    public          postgres    false    215   s�      �          0    8389261    departements 
   TABLE DATA           G   COPY public.departements (id, nom, region_id, cheflieu_id) FROM stdin;
    public          postgres    false    216   ��      �          0    8389264    devises 
   TABLE DATA           1   COPY public.devises (id, nom, ordre) FROM stdin;
    public          postgres    false    217   ��      �          0    8389267 	   documents 
   TABLE DATA           �   COPY public.documents (id, type_id, date, entreprise_id, titre_etape_id, description, titre_activite_id, titre_travaux_etape_id, fichier, fichier_type_id, url, uri, jorf, nor, public_lecture, entreprises_lecture) FROM stdin;
    public          postgres    false    218   ��      �          0    8389273    documents_types 
   TABLE DATA           >   COPY public.documents_types (id, nom, repertoire) FROM stdin;
    public          postgres    false    219   ��      �          0    8389279    domaines 
   TABLE DATA           ?   COPY public.domaines (id, nom, description, ordre) FROM stdin;
    public          postgres    false    220   ��      �          0    8389285    entreprises 
   TABLE DATA           �   COPY public.entreprises (id, nom, pays_id, legal_siren, legal_etranger, legal_forme, categorie, date_creation, adresse, code_postal, commune, cedex, url, email, telephone, archive) FROM stdin;
    public          postgres    false    221   ��      �          0    8389292    entreprises_etablissements 
   TABLE DATA           o   COPY public.entreprises_etablissements (id, entreprise_id, nom, legal_siret, date_debut, date_fin) FROM stdin;
    public          postgres    false    222         �          0    8389298    etapes_statuts 
   TABLE DATA           G   COPY public.etapes_statuts (id, nom, description, couleur) FROM stdin;
    public          postgres    false    223   z      �          0    8389304    etapes_types 
   TABLE DATA           �   COPY public.etapes_types (id, parent_id, nom, description, ordre, fondamentale, "unique", acceptation_auto, legal_ref, legal_lien, date_debut, date_fin, sections, public_lecture, entreprises_lecture) FROM stdin;
    public          postgres    false    224   J      �          0    8389310    etapes_types__etapes_statuts 
   TABLE DATA           ]   COPY public.etapes_types__etapes_statuts (etape_type_id, etape_statut_id, ordre) FROM stdin;
    public          postgres    false    225   �*      �          0    8389313    forets 
   TABLE DATA           )   COPY public.forets (id, nom) FROM stdin;
    public          postgres    false    226   �-      �          0    8389316 
   frequences 
   TABLE DATA           ;   COPY public.frequences (id, nom, periodes_nom) FROM stdin;
    public          postgres    false    227   
/      �          0    8389322    geo_systemes 
   TABLE DATA           X   COPY public.geo_systemes (id, nom, ordre, unite_id, zone, definition_proj4) FROM stdin;
    public          postgres    false    228   S/      �          0    8389328    globales 
   TABLE DATA           .   COPY public.globales (id, valeur) FROM stdin;
    public          postgres    false    229   `3      �          0    8389331    knex_migrations 
   TABLE DATA           J   COPY public.knex_migrations (id, name, batch, migration_time) FROM stdin;
    public          postgres    false    230   �3      �          0    8389336    knex_migrations_lock 
   TABLE DATA           @   COPY public.knex_migrations_lock (index, is_locked) FROM stdin;
    public          postgres    false    232   J5      �          0    8389341    mois 
   TABLE DATA           C   COPY public.mois (id, nom, frequence_id, trimestre_id) FROM stdin;
    public          postgres    false    234   k5      �          0    8389344    pays 
   TABLE DATA           1   COPY public.pays (id, nom, timezone) FROM stdin;
    public          postgres    false    235   �5      �          0    8389350    permissions 
   TABLE DATA           5   COPY public.permissions (id, nom, ordre) FROM stdin;
    public          postgres    false    236   $7      �          0    8389353    phases_statuts 
   TABLE DATA           :   COPY public.phases_statuts (id, nom, couleur) FROM stdin;
    public          postgres    false    237   �7      �          0    8389356    references_types 
   TABLE DATA           3   COPY public.references_types (id, nom) FROM stdin;
    public          postgres    false    238   �7      �          0    8389359    regions 
   TABLE DATA           @   COPY public.regions (id, nom, pays_id, cheflieu_id) FROM stdin;
    public          postgres    false    239   C8      �          0    8389362 
   substances 
   TABLE DATA           J   COPY public.substances (id, nom, symbole, gerep, description) FROM stdin;
    public          postgres    false    240   �9      �          0    8389368    substances__substances_legales 
   TABLE DATA           [   COPY public.substances__substances_legales (substance_id, substance_legale_id) FROM stdin;
    public          postgres    false    241   �;      �          0    8389374    substances_fiscales 
   TABLE DATA           v   COPY public.substances_fiscales (id, substance_legale_id, unite_id, redevance_unite_id, nom, description) FROM stdin;
    public          postgres    false    242   \<      �          0    8389380    substances_legales 
   TABLE DATA           h   COPY public.substances_legales (id, nom, domaine_id, description, substance_legale_code_id) FROM stdin;
    public          postgres    false    243   r?      �          0    8389386    substances_legales_codes 
   TABLE DATA           [   COPY public.substances_legales_codes (id, nom, code, description, lien, ordre) FROM stdin;
    public          postgres    false    244   bD      �          0    8389392    titres 
   TABLE DATA           �   COPY public.titres (id, nom, type_id, domaine_id, statut_id, date_debut, date_fin, date_demande, public_lecture, entreprises_lecture, doublon_titre_id, contenus_titre_etapes_ids, coordonnees, props_titre_etapes_ids) FROM stdin;
    public          postgres    false    245   �I      �          0    8389402    titres_activites 
   TABLE DATA           �   COPY public.titres_activites (id, titre_id, utilisateur_id, date, date_saisie, contenu, type_id, statut_id, annee, periode_id, sections, suppression) FROM stdin;
    public          postgres    false    246   9P      �          0    8389408 $   titres_administrations_gestionnaires 
   TABLE DATA           e   COPY public.titres_administrations_gestionnaires (titre_id, administration_id, associee) FROM stdin;
    public          postgres    false    247   VP      �          0    8389411    titres_administrations_locales 
   TABLE DATA           s   COPY public.titres_administrations_locales (titre_etape_id, administration_id, associee, coordinateur) FROM stdin;
    public          postgres    false    248   �Q      �          0    8389414    titres_amodiataires 
   TABLE DATA           W   COPY public.titres_amodiataires (titre_etape_id, entreprise_id, operateur) FROM stdin;
    public          postgres    false    249   �S      �          0    8389417    titres_communes 
   TABLE DATA           N   COPY public.titres_communes (titre_etape_id, commune_id, surface) FROM stdin;
    public          postgres    false    250   T      �          0    8389420    titres_demarches 
   TABLE DATA           x   COPY public.titres_demarches (id, titre_id, type_id, statut_id, public_lecture, entreprises_lecture, ordre) FROM stdin;
    public          postgres    false    251   �Y      �          0    8389427    titres_demarches_liens 
   TABLE DATA           d   COPY public.titres_demarches_liens (enfant_titre_demarche_id, parent_titre_demarche_id) FROM stdin;
    public          postgres    false    252   �[      �          0    8389430    titres_etapes 
   TABLE DATA           �   COPY public.titres_etapes (id, titre_demarche_id, type_id, statut_id, ordre, date, date_debut, date_fin, duree, surface, contenu, incertitudes, heritage_props, heritage_contenu) FROM stdin;
    public          postgres    false    253   \      �          0    8389436    titres_etapes_justificatifs 
   TABLE DATA           R   COPY public.titres_etapes_justificatifs (titre_etape_id, document_id) FROM stdin;
    public          postgres    false    254   br      �          0    8389439    titres_forets 
   TABLE DATA           J   COPY public.titres_forets (titre_etape_id, foret_id, surface) FROM stdin;
    public          postgres    false    255   r      �          0    8389442    titres_phases 
   TABLE DATA           [   COPY public.titres_phases (titre_demarche_id, statut_id, date_debut, date_fin) FROM stdin;
    public          postgres    false    256   s      �          0    8389445    titres_points 
   TABLE DATA           �   COPY public.titres_points (id, titre_etape_id, coordonnees, groupe, contour, point, nom, description, securite, subsidiaire, lot) FROM stdin;
    public          postgres    false    257   �t      �          0    8389451    titres_points_references 
   TABLE DATA           n   COPY public.titres_points_references (id, titre_point_id, geo_systeme_id, coordonnees, opposable) FROM stdin;
    public          postgres    false    258   n�      �          0    8389457    titres_references 
   TABLE DATA           C   COPY public.titres_references (titre_id, type_id, nom) FROM stdin;
    public          postgres    false    259   Q�      �          0    8389460    titres_statuts 
   TABLE DATA           N   COPY public.titres_statuts (id, nom, description, couleur, ordre) FROM stdin;
    public          postgres    false    260   ��      �          0    8389466    titres_substances 
   TABLE DATA           P   COPY public.titres_substances (titre_etape_id, substance_id, ordre) FROM stdin;
    public          postgres    false    261   ��      �          0    8389469    titres_titulaires 
   TABLE DATA           U   COPY public.titres_titulaires (titre_etape_id, entreprise_id, operateur) FROM stdin;
    public          postgres    false    262   /�      �          0    8389472    titres_travaux 
   TABLE DATA           Q   COPY public.titres_travaux (id, titre_id, statut_id, type_id, ordre) FROM stdin;
    public          postgres    false    263   ¿      �          0    8389476    titres_travaux_etapes 
   TABLE DATA              COPY public.titres_travaux_etapes (id, titre_travaux_id, statut_id, type_id, date, duree, surface, contenu, ordre) FROM stdin;
    public          postgres    false    264   ߿      �          0    8389482    titres_types 
   TABLE DATA           U   COPY public.titres_types (id, domaine_id, type_id, contenu_ids, archive) FROM stdin;
    public          postgres    false    265   ��      �          0    8389488    titres_types__activites_types 
   TABLE DATA           X   COPY public.titres_types__activites_types (titre_type_id, activite_type_id) FROM stdin;
    public          postgres    false    266   R�      �          0    8389491    titres_types__demarches_types 
   TABLE DATA           �   COPY public.titres_types__demarches_types (titre_type_id, demarche_type_id, duree_max, acceptation_implicite, delai_implicite, delai_recours, legal_ref, legal_lien, date_debut, date_fin) FROM stdin;
    public          postgres    false    267   ��      �          0    8389497 +   titres_types__demarches_types__etapes_types 
   TABLE DATA           �   COPY public.titres_types__demarches_types__etapes_types (titre_type_id, ordre, demarche_type_id, etape_type_id, sections) FROM stdin;
    public          postgres    false    268   a�      �          0    8389503    titres_types__titres_statuts 
   TABLE DATA           f   COPY public.titres_types__titres_statuts (titre_type_id, titre_statut_id, public_lecture) FROM stdin;
    public          postgres    false    269         �          0    8389509    titres_types_types 
   TABLE DATA           I   COPY public.titres_types_types (id, nom, description, ordre) FROM stdin;
    public          postgres    false    270   �      �          0    8389515    travaux_types 
   TABLE DATA           D   COPY public.travaux_types (id, nom, description, ordre) FROM stdin;
    public          postgres    false    271   
      �          0    8389521    travaux_types__etapes_types 
   TABLE DATA           f   COPY public.travaux_types__etapes_types (travaux_type_id, etape_type_id, sections, ordre) FROM stdin;
    public          postgres    false    272         �          0    8389527 
   trimestres 
   TABLE DATA           ;   COPY public.trimestres (id, nom, frequence_id) FROM stdin;
    public          postgres    false    273   �      �          0    8389530    unites 
   TABLE DATA           ]   COPY public.unites (id, nom, symbole, reference_unite_id, reference_unite_ratio) FROM stdin;
    public          postgres    false    274         �          0    8389536    utilisateurs 
   TABLE DATA           �   COPY public.utilisateurs (id, email, mot_de_passe, nom, prenom, telephone_fixe, telephone_mobile, refresh_token, permission_id, preferences) FROM stdin;
    public          postgres    false    275         �          0    8389542    utilisateurs__administrations 
   TABLE DATA           Z   COPY public.utilisateurs__administrations (utilisateur_id, administration_id) FROM stdin;
    public          postgres    false    276   6      �          0    8389545    utilisateurs__entreprises 
   TABLE DATA           R   COPY public.utilisateurs__entreprises (utilisateur_id, entreprise_id) FROM stdin;
    public          postgres    false    277   S      �           0    0    knex_migrations_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.knex_migrations_id_seq', 22, true);
          public          postgres    false    231            �           0    0    knex_migrations_lock_index_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.knex_migrations_lock_index_seq', 1, true);
          public          postgres    false    233            �           2606    8390852 (   activites_statuts activites_statuts_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.activites_statuts
    ADD CONSTRAINT activites_statuts_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.activites_statuts DROP CONSTRAINT activites_statuts_pkey;
       public            postgres    false    200            �           2606    8390854 F   activites_types__documents_types activites_types__documents_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__documents_types
    ADD CONSTRAINT activites_types__documents_types_pkey PRIMARY KEY (activite_type_id, document_type_id);
 p   ALTER TABLE ONLY public.activites_types__documents_types DROP CONSTRAINT activites_types__documents_types_pkey;
       public            postgres    false    202    202            �           2606    8390856 0   activites_types__pays activites_types__pays_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__pays
    ADD CONSTRAINT activites_types__pays_pkey PRIMARY KEY (pays_id, activite_type_id);
 Z   ALTER TABLE ONLY public.activites_types__pays DROP CONSTRAINT activites_types__pays_pkey;
       public            postgres    false    203    203            �           2606    8390858 $   activites_types activites_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.activites_types
    ADD CONSTRAINT activites_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.activites_types DROP CONSTRAINT activites_types_pkey;
       public            postgres    false    201            �           2606    8390860 \   administrations__titres_types__etapes_types administrations__titres_types__etapes_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types__etapes_types
    ADD CONSTRAINT administrations__titres_types__etapes_types_pkey PRIMARY KEY (administration_id, titre_type_id, etape_type_id);
 �   ALTER TABLE ONLY public.administrations__titres_types__etapes_types DROP CONSTRAINT administrations__titres_types__etapes_types_pkey;
       public            postgres    false    207    207    207            �           2606    8390862 `   administrations__titres_types__titres_statuts administrations__titres_types__titres_statuts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types__titres_statuts
    ADD CONSTRAINT administrations__titres_types__titres_statuts_pkey PRIMARY KEY (administration_id, titre_type_id, titre_statut_id);
 �   ALTER TABLE ONLY public.administrations__titres_types__titres_statuts DROP CONSTRAINT administrations__titres_types__titres_statuts_pkey;
       public            postgres    false    208    208    208            �           2606    8390864 @   administrations__titres_types administrations__titres_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types
    ADD CONSTRAINT administrations__titres_types_pkey PRIMARY KEY (administration_id, titre_type_id);
 j   ALTER TABLE ONLY public.administrations__titres_types DROP CONSTRAINT administrations__titres_types_pkey;
       public            postgres    false    206    206            �           2606    8390866 $   administrations administrations_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_pkey;
       public            postgres    false    204            �           2606    8390868 0   administrations_types administrations_types_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.administrations_types
    ADD CONSTRAINT administrations_types_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.administrations_types DROP CONSTRAINT administrations_types_pkey;
       public            postgres    false    209            �           2606    8390870    annees annees_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.annees
    ADD CONSTRAINT annees_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.annees DROP CONSTRAINT annees_pkey;
       public            postgres    false    210            �           2606    8390872    caches caches_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.caches
    ADD CONSTRAINT caches_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.caches DROP CONSTRAINT caches_pkey;
       public            postgres    false    211            �           2606    8390874    communes communes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.communes
    ADD CONSTRAINT communes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.communes DROP CONSTRAINT communes_pkey;
       public            postgres    false    212            �           2606    8390876    definitions definitions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.definitions
    ADD CONSTRAINT definitions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.definitions DROP CONSTRAINT definitions_pkey;
       public            postgres    false    213            �           2606    8390878 (   demarches_statuts demarches_statuts_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.demarches_statuts
    ADD CONSTRAINT demarches_statuts_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.demarches_statuts DROP CONSTRAINT demarches_statuts_pkey;
       public            postgres    false    214            �           2606    8390880 $   demarches_types demarches_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.demarches_types
    ADD CONSTRAINT demarches_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.demarches_types DROP CONSTRAINT demarches_types_pkey;
       public            postgres    false    215            �           2606    8390882    departements departements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.departements
    ADD CONSTRAINT departements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.departements DROP CONSTRAINT departements_pkey;
       public            postgres    false    216            �           2606    8390884    devises devises_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.devises
    ADD CONSTRAINT devises_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.devises DROP CONSTRAINT devises_pkey;
       public            postgres    false    217            �           2606    8390886    documents documents_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_pkey;
       public            postgres    false    218            �           2606    8390888 $   documents_types documents_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.documents_types
    ADD CONSTRAINT documents_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.documents_types DROP CONSTRAINT documents_types_pkey;
       public            postgres    false    219            �           2606    8390890    domaines domaines_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.domaines
    ADD CONSTRAINT domaines_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.domaines DROP CONSTRAINT domaines_pkey;
       public            postgres    false    220            �           2606    8390892 :   entreprises_etablissements entreprises_etablissements_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.entreprises_etablissements
    ADD CONSTRAINT entreprises_etablissements_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.entreprises_etablissements DROP CONSTRAINT entreprises_etablissements_pkey;
       public            postgres    false    222            �           2606    8390894    entreprises entreprises_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.entreprises
    ADD CONSTRAINT entreprises_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.entreprises DROP CONSTRAINT entreprises_pkey;
       public            postgres    false    221            �           2606    8390896 "   etapes_statuts etapes_statuts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.etapes_statuts
    ADD CONSTRAINT etapes_statuts_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.etapes_statuts DROP CONSTRAINT etapes_statuts_pkey;
       public            postgres    false    223            �           2606    8390898 >   etapes_types__etapes_statuts etapes_types__etapes_statuts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types__etapes_statuts
    ADD CONSTRAINT etapes_types__etapes_statuts_pkey PRIMARY KEY (etape_type_id, etape_statut_id);
 h   ALTER TABLE ONLY public.etapes_types__etapes_statuts DROP CONSTRAINT etapes_types__etapes_statuts_pkey;
       public            postgres    false    225    225            �           2606    8390900    etapes_types etapes_types_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.etapes_types
    ADD CONSTRAINT etapes_types_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.etapes_types DROP CONSTRAINT etapes_types_pkey;
       public            postgres    false    224            �           2606    8390902    forets forets_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.forets
    ADD CONSTRAINT forets_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.forets DROP CONSTRAINT forets_pkey;
       public            postgres    false    226            �           2606    8390904    frequences frequences_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.frequences
    ADD CONSTRAINT frequences_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.frequences DROP CONSTRAINT frequences_pkey;
       public            postgres    false    227            �           2606    8390906    geo_systemes geo_systemes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.geo_systemes
    ADD CONSTRAINT geo_systemes_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.geo_systemes DROP CONSTRAINT geo_systemes_pkey;
       public            postgres    false    228            �           2606    8390908    globales globales_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.globales
    ADD CONSTRAINT globales_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.globales DROP CONSTRAINT globales_pkey;
       public            postgres    false    229            �           2606    8390910 .   knex_migrations_lock knex_migrations_lock_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.knex_migrations_lock
    ADD CONSTRAINT knex_migrations_lock_pkey PRIMARY KEY (index);
 X   ALTER TABLE ONLY public.knex_migrations_lock DROP CONSTRAINT knex_migrations_lock_pkey;
       public            postgres    false    232            �           2606    8390912 $   knex_migrations knex_migrations_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.knex_migrations
    ADD CONSTRAINT knex_migrations_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.knex_migrations DROP CONSTRAINT knex_migrations_pkey;
       public            postgres    false    230            �           2606    8390914    mois mois_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.mois
    ADD CONSTRAINT mois_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.mois DROP CONSTRAINT mois_pkey;
       public            postgres    false    234            �           2606    8390916    pays pays_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.pays
    ADD CONSTRAINT pays_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.pays DROP CONSTRAINT pays_pkey;
       public            postgres    false    235            �           2606    8390918    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    236            �           2606    8390920 "   phases_statuts phases_statuts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.phases_statuts
    ADD CONSTRAINT phases_statuts_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.phases_statuts DROP CONSTRAINT phases_statuts_pkey;
       public            postgres    false    237            �           2606    8390922 &   references_types references_types_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.references_types
    ADD CONSTRAINT references_types_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.references_types DROP CONSTRAINT references_types_pkey;
       public            postgres    false    238            �           2606    8390924    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public            postgres    false    239            �           2606    8390926 B   substances__substances_legales substances__substances_legales_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.substances__substances_legales
    ADD CONSTRAINT substances__substances_legales_pkey PRIMARY KEY (substance_id, substance_legale_id);
 l   ALTER TABLE ONLY public.substances__substances_legales DROP CONSTRAINT substances__substances_legales_pkey;
       public            postgres    false    241    241            �           2606    8390928 ,   substances_fiscales substances_fiscales_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.substances_fiscales
    ADD CONSTRAINT substances_fiscales_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.substances_fiscales DROP CONSTRAINT substances_fiscales_pkey;
       public            postgres    false    242                       2606    8390930 6   substances_legales_codes substances_legales_codes_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.substances_legales_codes
    ADD CONSTRAINT substances_legales_codes_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.substances_legales_codes DROP CONSTRAINT substances_legales_codes_pkey;
       public            postgres    false    244                       2606    8390932 *   substances_legales substances_legales_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.substances_legales
    ADD CONSTRAINT substances_legales_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.substances_legales DROP CONSTRAINT substances_legales_pkey;
       public            postgres    false    243            �           2606    8390934    substances substances_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.substances
    ADD CONSTRAINT substances_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.substances DROP CONSTRAINT substances_pkey;
       public            postgres    false    240                       2606    8390936 &   titres_activites titres_activites_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titres_activites_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titres_activites_pkey;
       public            postgres    false    246                       2606    8390938 N   titres_administrations_gestionnaires titres_administrations_gestionnaires_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_gestionnaires
    ADD CONSTRAINT titres_administrations_gestionnaires_pkey PRIMARY KEY (titre_id, administration_id);
 x   ALTER TABLE ONLY public.titres_administrations_gestionnaires DROP CONSTRAINT titres_administrations_gestionnaires_pkey;
       public            postgres    false    247    247                       2606    8390940 B   titres_administrations_locales titres_administrations_locales_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_locales
    ADD CONSTRAINT titres_administrations_locales_pkey PRIMARY KEY (titre_etape_id, administration_id);
 l   ALTER TABLE ONLY public.titres_administrations_locales DROP CONSTRAINT titres_administrations_locales_pkey;
       public            postgres    false    248    248                       2606    8390942 ,   titres_amodiataires titres_amodiataires_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_amodiataires
    ADD CONSTRAINT titres_amodiataires_pkey PRIMARY KEY (titre_etape_id, entreprise_id);
 V   ALTER TABLE ONLY public.titres_amodiataires DROP CONSTRAINT titres_amodiataires_pkey;
       public            postgres    false    249    249            "           2606    8390944 $   titres_communes titres_communes_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.titres_communes
    ADD CONSTRAINT titres_communes_pkey PRIMARY KEY (titre_etape_id, commune_id);
 N   ALTER TABLE ONLY public.titres_communes DROP CONSTRAINT titres_communes_pkey;
       public            postgres    false    250    250            +           2606    8390946 2   titres_demarches_liens titres_demarches_liens_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches_liens
    ADD CONSTRAINT titres_demarches_liens_pkey PRIMARY KEY (enfant_titre_demarche_id, parent_titre_demarche_id);
 \   ALTER TABLE ONLY public.titres_demarches_liens DROP CONSTRAINT titres_demarches_liens_pkey;
       public            postgres    false    252    252            &           2606    8390948 &   titres_demarches titres_demarches_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titres_demarches_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titres_demarches_pkey;
       public            postgres    false    251            4           2606    8390950 <   titres_etapes_justificatifs titres_etapes_justificatifs_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes_justificatifs
    ADD CONSTRAINT titres_etapes_justificatifs_pkey PRIMARY KEY (titre_etape_id, document_id);
 f   ALTER TABLE ONLY public.titres_etapes_justificatifs DROP CONSTRAINT titres_etapes_justificatifs_pkey;
       public            postgres    false    254    254            /           2606    8390952     titres_etapes titres_etapes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titres_etapes_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titres_etapes_pkey;
       public            postgres    false    253            8           2606    8390954     titres_forets titres_forets_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.titres_forets
    ADD CONSTRAINT titres_forets_pkey PRIMARY KEY (titre_etape_id, foret_id);
 J   ALTER TABLE ONLY public.titres_forets DROP CONSTRAINT titres_forets_pkey;
       public            postgres    false    255    255            <           2606    8390956     titres_phases titres_phases_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.titres_phases
    ADD CONSTRAINT titres_phases_pkey PRIMARY KEY (titre_demarche_id);
 J   ALTER TABLE ONLY public.titres_phases DROP CONSTRAINT titres_phases_pkey;
       public            postgres    false    256                       2606    8390958    titres titres_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_pkey;
       public            postgres    false    245            >           2606    8390960     titres_points titres_points_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.titres_points
    ADD CONSTRAINT titres_points_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.titres_points DROP CONSTRAINT titres_points_pkey;
       public            postgres    false    257            B           2606    8390962 6   titres_points_references titres_points_references_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.titres_points_references
    ADD CONSTRAINT titres_points_references_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.titres_points_references DROP CONSTRAINT titres_points_references_pkey;
       public            postgres    false    258            E           2606    8390964 (   titres_references titres_references_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.titres_references
    ADD CONSTRAINT titres_references_pkey PRIMARY KEY (titre_id, type_id, nom);
 R   ALTER TABLE ONLY public.titres_references DROP CONSTRAINT titres_references_pkey;
       public            postgres    false    259    259    259            I           2606    8390966 "   titres_statuts titres_statuts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.titres_statuts
    ADD CONSTRAINT titres_statuts_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.titres_statuts DROP CONSTRAINT titres_statuts_pkey;
       public            postgres    false    260            K           2606    8390968 (   titres_substances titres_substances_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_substances
    ADD CONSTRAINT titres_substances_pkey PRIMARY KEY (titre_etape_id, substance_id);
 R   ALTER TABLE ONLY public.titres_substances DROP CONSTRAINT titres_substances_pkey;
       public            postgres    false    261    261            O           2606    8390970 (   titres_titulaires titres_titulaires_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_titulaires
    ADD CONSTRAINT titres_titulaires_pkey PRIMARY KEY (titre_etape_id, entreprise_id);
 R   ALTER TABLE ONLY public.titres_titulaires DROP CONSTRAINT titres_titulaires_pkey;
       public            postgres    false    262    262            X           2606    8390972 0   titres_travaux_etapes titres_travaux_etapes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.titres_travaux_etapes
    ADD CONSTRAINT titres_travaux_etapes_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.titres_travaux_etapes DROP CONSTRAINT titres_travaux_etapes_pkey;
       public            postgres    false    264            S           2606    8390974 "   titres_travaux titres_travaux_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.titres_travaux
    ADD CONSTRAINT titres_travaux_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.titres_travaux DROP CONSTRAINT titres_travaux_pkey;
       public            postgres    false    263            c           2606    8390976 @   titres_types__activites_types titres_types__activites_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__activites_types
    ADD CONSTRAINT titres_types__activites_types_pkey PRIMARY KEY (titre_type_id, activite_type_id);
 j   ALTER TABLE ONLY public.titres_types__activites_types DROP CONSTRAINT titres_types__activites_types_pkey;
       public            postgres    false    266    266            k           2606    8390978 \   titres_types__demarches_types__etapes_types titres_types__demarches_types__etapes_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titres_types__demarches_types__etapes_types_pkey PRIMARY KEY (titre_type_id, demarche_type_id, etape_type_id);
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titres_types__demarches_types__etapes_types_pkey;
       public            postgres    false    268    268    268            g           2606    8390980 @   titres_types__demarches_types titres_types__demarches_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types
    ADD CONSTRAINT titres_types__demarches_types_pkey PRIMARY KEY (titre_type_id, demarche_type_id);
 j   ALTER TABLE ONLY public.titres_types__demarches_types DROP CONSTRAINT titres_types__demarches_types_pkey;
       public            postgres    false    267    267            p           2606    8390982 >   titres_types__titres_statuts titres_types__titres_statuts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__titres_statuts
    ADD CONSTRAINT titres_types__titres_statuts_pkey PRIMARY KEY (titre_type_id, titre_statut_id);
 h   ALTER TABLE ONLY public.titres_types__titres_statuts DROP CONSTRAINT titres_types__titres_statuts_pkey;
       public            postgres    false    269    269            ]           2606    8390984    titres_types titres_types_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titres_types_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titres_types_pkey;
       public            postgres    false    265            t           2606    8390986 *   titres_types_types titres_types_types_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.titres_types_types
    ADD CONSTRAINT titres_types_types_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.titres_types_types DROP CONSTRAINT titres_types_types_pkey;
       public            postgres    false    270            `           2606    8390988 0   titres_types titrestypes_domaineid_typeid_unique 
   CONSTRAINT     z   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titrestypes_domaineid_typeid_unique UNIQUE (domaine_id, type_id);
 Z   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titrestypes_domaineid_typeid_unique;
       public            postgres    false    265    265            x           2606    8390990 <   travaux_types__etapes_types travaux_types__etapes_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.travaux_types__etapes_types
    ADD CONSTRAINT travaux_types__etapes_types_pkey PRIMARY KEY (travaux_type_id, etape_type_id);
 f   ALTER TABLE ONLY public.travaux_types__etapes_types DROP CONSTRAINT travaux_types__etapes_types_pkey;
       public            postgres    false    272    272            v           2606    8390992     travaux_types travaux_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.travaux_types
    ADD CONSTRAINT travaux_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.travaux_types DROP CONSTRAINT travaux_types_pkey;
       public            postgres    false    271            }           2606    8390994    trimestres trimestres_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.trimestres
    ADD CONSTRAINT trimestres_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.trimestres DROP CONSTRAINT trimestres_pkey;
       public            postgres    false    273                       2606    8390996    unites unites_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.unites
    ADD CONSTRAINT unites_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.unites DROP CONSTRAINT unites_pkey;
       public            postgres    false    274            �           2606    8390998 &   utilisateurs utilisateurs_email_unique 
   CONSTRAINT     b   ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_email_unique UNIQUE (email);
 P   ALTER TABLE ONLY public.utilisateurs DROP CONSTRAINT utilisateurs_email_unique;
       public            postgres    false    275            �           2606    8391000    utilisateurs utilisateurs_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.utilisateurs DROP CONSTRAINT utilisateurs_pkey;
       public            postgres    false    275            �           1259    8391001 3   activitestypes__documentstypes_activitetypeid_index    INDEX     �   CREATE INDEX activitestypes__documentstypes_activitetypeid_index ON public.activites_types__documents_types USING btree (activite_type_id);
 G   DROP INDEX public.activitestypes__documentstypes_activitetypeid_index;
       public            postgres    false    202            �           1259    8391002 3   activitestypes__documentstypes_documenttypeid_index    INDEX     �   CREATE INDEX activitestypes__documentstypes_documenttypeid_index ON public.activites_types__documents_types USING btree (document_type_id);
 G   DROP INDEX public.activitestypes__documentstypes_documenttypeid_index;
       public            postgres    false    202            �           1259    8391003 )   activitestypes__pays_activitetypeid_index    INDEX     w   CREATE INDEX activitestypes__pays_activitetypeid_index ON public.activites_types__pays USING btree (activite_type_id);
 =   DROP INDEX public.activitestypes__pays_activitetypeid_index;
       public            postgres    false    203            �           1259    8391004 !   activitestypes__pays_paysid_index    INDEX     f   CREATE INDEX activitestypes__pays_paysid_index ON public.activites_types__pays USING btree (pays_id);
 5   DROP INDEX public.activitestypes__pays_paysid_index;
       public            postgres    false    203            �           1259    8391005     activitestypes_frequenceid_index    INDEX     d   CREATE INDEX activitestypes_frequenceid_index ON public.activites_types USING btree (frequence_id);
 4   DROP INDEX public.activitestypes_frequenceid_index;
       public            postgres    false    201            �           1259    8391006 4   administrations__activitestypes_activitetypeid_index    INDEX     �   CREATE INDEX administrations__activitestypes_activitetypeid_index ON public.administrations__activites_types USING btree (activite_type_id);
 H   DROP INDEX public.administrations__activitestypes_activitetypeid_index;
       public            postgres    false    205            �           1259    8391007 6   administrations__activitestypes_administrationid_index    INDEX     �   CREATE INDEX administrations__activitestypes_administrationid_index ON public.administrations__activites_types USING btree (administration_id);
 J   DROP INDEX public.administrations__activitestypes_administrationid_index;
       public            postgres    false    205            �           1259    8391008 ?   administrations__titrestypes__etapestypes_administrationid_inde    INDEX     �   CREATE INDEX administrations__titrestypes__etapestypes_administrationid_inde ON public.administrations__titres_types__etapes_types USING btree (administration_id);
 S   DROP INDEX public.administrations__titrestypes__etapestypes_administrationid_inde;
       public            postgres    false    207            �           1259    8391009 ;   administrations__titrestypes__etapestypes_etapetypeid_index    INDEX     �   CREATE INDEX administrations__titrestypes__etapestypes_etapetypeid_index ON public.administrations__titres_types__etapes_types USING btree (etape_type_id);
 O   DROP INDEX public.administrations__titrestypes__etapestypes_etapetypeid_index;
       public            postgres    false    207            �           1259    8391010 ;   administrations__titrestypes__etapestypes_titretypeid_index    INDEX     �   CREATE INDEX administrations__titrestypes__etapestypes_titretypeid_index ON public.administrations__titres_types__etapes_types USING btree (titre_type_id);
 O   DROP INDEX public.administrations__titrestypes__etapestypes_titretypeid_index;
       public            postgres    false    207            �           1259    8391011 ?   administrations__titrestypes__titresstatuts_administrationid_in    INDEX     �   CREATE INDEX administrations__titrestypes__titresstatuts_administrationid_in ON public.administrations__titres_types__titres_statuts USING btree (administration_id);
 S   DROP INDEX public.administrations__titrestypes__titresstatuts_administrationid_in;
       public            postgres    false    208            �           1259    8391012 ?   administrations__titrestypes__titresstatuts_titrestatutid_index    INDEX     �   CREATE INDEX administrations__titrestypes__titresstatuts_titrestatutid_index ON public.administrations__titres_types__titres_statuts USING btree (titre_statut_id);
 S   DROP INDEX public.administrations__titrestypes__titresstatuts_titrestatutid_index;
       public            postgres    false    208            �           1259    8391013 =   administrations__titrestypes__titresstatuts_titretypeid_index    INDEX     �   CREATE INDEX administrations__titrestypes__titresstatuts_titretypeid_index ON public.administrations__titres_types__titres_statuts USING btree (titre_type_id);
 Q   DROP INDEX public.administrations__titrestypes__titresstatuts_titretypeid_index;
       public            postgres    false    208            �           1259    8391014 3   administrations__titrestypes_administrationid_index    INDEX     �   CREATE INDEX administrations__titrestypes_administrationid_index ON public.administrations__titres_types USING btree (administration_id);
 G   DROP INDEX public.administrations__titrestypes_administrationid_index;
       public            postgres    false    206            �           1259    8391015 .   administrations__titrestypes_titretypeid_index    INDEX     �   CREATE INDEX administrations__titrestypes_titretypeid_index ON public.administrations__titres_types USING btree (titre_type_id);
 B   DROP INDEX public.administrations__titrestypes_titretypeid_index;
       public            postgres    false    206            �           1259    8391016 #   administrations_departementid_index    INDEX     i   CREATE INDEX administrations_departementid_index ON public.administrations USING btree (departement_id);
 7   DROP INDEX public.administrations_departementid_index;
       public            postgres    false    204            �           1259    8391017    administrations_regionid_index    INDEX     _   CREATE INDEX administrations_regionid_index ON public.administrations USING btree (region_id);
 2   DROP INDEX public.administrations_regionid_index;
       public            postgres    false    204            �           1259    8391018    administrations_typeid_index    INDEX     [   CREATE INDEX administrations_typeid_index ON public.administrations USING btree (type_id);
 0   DROP INDEX public.administrations_typeid_index;
       public            postgres    false    204            �           1259    8391019    annees_frequenceid_index    INDEX     S   CREATE INDEX annees_frequenceid_index ON public.annees USING btree (frequence_id);
 ,   DROP INDEX public.annees_frequenceid_index;
       public            postgres    false    210            �           1259    8391020    communes_departementid_index    INDEX     [   CREATE INDEX communes_departementid_index ON public.communes USING btree (departement_id);
 0   DROP INDEX public.communes_departementid_index;
       public            postgres    false    212            �           1259    8391021    departements_regionid_index    INDEX     Y   CREATE INDEX departements_regionid_index ON public.departements USING btree (region_id);
 /   DROP INDEX public.departements_regionid_index;
       public            postgres    false    216            �           1259    8391022    documents_entrepriseid_index    INDEX     [   CREATE INDEX documents_entrepriseid_index ON public.documents USING btree (entreprise_id);
 0   DROP INDEX public.documents_entrepriseid_index;
       public            postgres    false    218            �           1259    8391023    documents_titreactiviteid_index    INDEX     b   CREATE INDEX documents_titreactiviteid_index ON public.documents USING btree (titre_activite_id);
 3   DROP INDEX public.documents_titreactiviteid_index;
       public            postgres    false    218            �           1259    8391024    documents_titreetapeid_index    INDEX     \   CREATE INDEX documents_titreetapeid_index ON public.documents USING btree (titre_etape_id);
 0   DROP INDEX public.documents_titreetapeid_index;
       public            postgres    false    218            �           1259    8391025 #   documents_titretravauxetapeid_index    INDEX     k   CREATE INDEX documents_titretravauxetapeid_index ON public.documents USING btree (titre_travaux_etape_id);
 7   DROP INDEX public.documents_titretravauxetapeid_index;
       public            postgres    false    218            �           1259    8391026    documents_typeid_index    INDEX     O   CREATE INDEX documents_typeid_index ON public.documents USING btree (type_id);
 *   DROP INDEX public.documents_typeid_index;
       public            postgres    false    218            �           1259    8391027 ,   entreprisesetablissements_entrepriseid_index    INDEX     |   CREATE INDEX entreprisesetablissements_entrepriseid_index ON public.entreprises_etablissements USING btree (entreprise_id);
 @   DROP INDEX public.entreprisesetablissements_entrepriseid_index;
       public            postgres    false    222            �           1259    8391028 .   etapestypes__etapesstatuts_etapestatutid_index    INDEX     �   CREATE INDEX etapestypes__etapesstatuts_etapestatutid_index ON public.etapes_types__etapes_statuts USING btree (etape_statut_id);
 B   DROP INDEX public.etapestypes__etapesstatuts_etapestatutid_index;
       public            postgres    false    225            �           1259    8391029 ,   etapestypes__etapesstatuts_etapetypeid_index    INDEX     ~   CREATE INDEX etapestypes__etapesstatuts_etapetypeid_index ON public.etapes_types__etapes_statuts USING btree (etape_type_id);
 @   DROP INDEX public.etapestypes__etapesstatuts_etapetypeid_index;
       public            postgres    false    225            �           1259    8391030    geosystemes_uniteid_index    INDEX     V   CREATE INDEX geosystemes_uniteid_index ON public.geo_systemes USING btree (unite_id);
 -   DROP INDEX public.geosystemes_uniteid_index;
       public            postgres    false    228            �           1259    8391031    mois_frequenceid_index    INDEX     O   CREATE INDEX mois_frequenceid_index ON public.mois USING btree (frequence_id);
 *   DROP INDEX public.mois_frequenceid_index;
       public            postgres    false    234            �           1259    8391032    mois_trimestreid_index    INDEX     O   CREATE INDEX mois_trimestreid_index ON public.mois USING btree (trimestre_id);
 *   DROP INDEX public.mois_trimestreid_index;
       public            postgres    false    234            �           1259    8391033    regions_paysid_index    INDEX     K   CREATE INDEX regions_paysid_index ON public.regions USING btree (pays_id);
 (   DROP INDEX public.regions_paysid_index;
       public            postgres    false    239            �           1259    8391034 /   substances__substanceslegales_substanceid_index    INDEX     �   CREATE INDEX substances__substanceslegales_substanceid_index ON public.substances__substances_legales USING btree (substance_id);
 C   DROP INDEX public.substances__substanceslegales_substanceid_index;
       public            postgres    false    241            �           1259    8391035 5   substances__substanceslegales_substancelegaleid_index    INDEX     �   CREATE INDEX substances__substanceslegales_substancelegaleid_index ON public.substances__substances_legales USING btree (substance_legale_id);
 I   DROP INDEX public.substances__substanceslegales_substancelegaleid_index;
       public            postgres    false    241                        1259    8391036 )   substancesfiscales_redevanceuniteid_index    INDEX     w   CREATE INDEX substancesfiscales_redevanceuniteid_index ON public.substances_fiscales USING btree (redevance_unite_id);
 =   DROP INDEX public.substancesfiscales_redevanceuniteid_index;
       public            postgres    false    242                       1259    8391037 *   substancesfiscales_substancelegaleid_index    INDEX     y   CREATE INDEX substancesfiscales_substancelegaleid_index ON public.substances_fiscales USING btree (substance_legale_id);
 >   DROP INDEX public.substancesfiscales_substancelegaleid_index;
       public            postgres    false    242                       1259    8391038     substancesfiscales_uniteid_index    INDEX     d   CREATE INDEX substancesfiscales_uniteid_index ON public.substances_fiscales USING btree (unite_id);
 4   DROP INDEX public.substancesfiscales_uniteid_index;
       public            postgres    false    242                       1259    8391039 !   substanceslegales_domaineid_index    INDEX     f   CREATE INDEX substanceslegales_domaineid_index ON public.substances_legales USING btree (domaine_id);
 5   DROP INDEX public.substanceslegales_domaineid_index;
       public            postgres    false    243                       1259    8391040 -   substanceslegales_substancelegalecodeid_index    INDEX     �   CREATE INDEX substanceslegales_substancelegalecodeid_index ON public.substances_legales USING btree (substance_legale_code_id);
 A   DROP INDEX public.substanceslegales_substancelegalecodeid_index;
       public            postgres    false    243            	           1259    8391041    titres_coordonnees_index    INDEX     Q   CREATE INDEX titres_coordonnees_index ON public.titres USING gist (coordonnees);
 ,   DROP INDEX public.titres_coordonnees_index;
       public            postgres    false    245            
           1259    8391042    titres_domaineid_index    INDEX     O   CREATE INDEX titres_domaineid_index ON public.titres USING btree (domaine_id);
 *   DROP INDEX public.titres_domaineid_index;
       public            postgres    false    245                       1259    8391043    titres_statutid_index    INDEX     M   CREATE INDEX titres_statutid_index ON public.titres USING btree (statut_id);
 )   DROP INDEX public.titres_statutid_index;
       public            postgres    false    245                       1259    8391044    titres_typeid_index    INDEX     I   CREATE INDEX titres_typeid_index ON public.titres USING btree (type_id);
 '   DROP INDEX public.titres_typeid_index;
       public            postgres    false    245                       1259    8391045    titresactivites_statutid_index    INDEX     `   CREATE INDEX titresactivites_statutid_index ON public.titres_activites USING btree (statut_id);
 2   DROP INDEX public.titresactivites_statutid_index;
       public            postgres    false    246                       1259    8391046    titresactivites_titreid_index    INDEX     ^   CREATE INDEX titresactivites_titreid_index ON public.titres_activites USING btree (titre_id);
 1   DROP INDEX public.titresactivites_titreid_index;
       public            postgres    false    246                       1259    8391047    titresactivites_typeid_index    INDEX     \   CREATE INDEX titresactivites_typeid_index ON public.titres_activites USING btree (type_id);
 0   DROP INDEX public.titresactivites_typeid_index;
       public            postgres    false    246                       1259    8391048 #   titresactivites_utilisateurid_index    INDEX     j   CREATE INDEX titresactivites_utilisateurid_index ON public.titres_activites USING btree (utilisateur_id);
 7   DROP INDEX public.titresactivites_utilisateurid_index;
       public            postgres    false    246                       1259    8391049 9   titresadministrationsgestionnaires_administrationid_index    INDEX     �   CREATE INDEX titresadministrationsgestionnaires_administrationid_index ON public.titres_administrations_gestionnaires USING btree (administration_id);
 M   DROP INDEX public.titresadministrationsgestionnaires_administrationid_index;
       public            postgres    false    247                       1259    8391050 0   titresadministrationsgestionnaires_titreid_index    INDEX     �   CREATE INDEX titresadministrationsgestionnaires_titreid_index ON public.titres_administrations_gestionnaires USING btree (titre_id);
 D   DROP INDEX public.titresadministrationsgestionnaires_titreid_index;
       public            postgres    false    247                       1259    8391051 3   titresadministrationslocales_administrationid_index    INDEX     �   CREATE INDEX titresadministrationslocales_administrationid_index ON public.titres_administrations_locales USING btree (administration_id);
 G   DROP INDEX public.titresadministrationslocales_administrationid_index;
       public            postgres    false    248                       1259    8391052 /   titresadministrationslocales_titreetapeid_index    INDEX     �   CREATE INDEX titresadministrationslocales_titreetapeid_index ON public.titres_administrations_locales USING btree (titre_etape_id);
 C   DROP INDEX public.titresadministrationslocales_titreetapeid_index;
       public            postgres    false    248                       1259    8391053 %   titresamodiataires_entrepriseid_index    INDEX     n   CREATE INDEX titresamodiataires_entrepriseid_index ON public.titres_amodiataires USING btree (entreprise_id);
 9   DROP INDEX public.titresamodiataires_entrepriseid_index;
       public            postgres    false    249                        1259    8391054 %   titresamodiataires_titreetapeid_index    INDEX     o   CREATE INDEX titresamodiataires_titreetapeid_index ON public.titres_amodiataires USING btree (titre_etape_id);
 9   DROP INDEX public.titresamodiataires_titreetapeid_index;
       public            postgres    false    249            #           1259    8391055    titrescommunes_communeid_index    INDEX     `   CREATE INDEX titrescommunes_communeid_index ON public.titres_communes USING btree (commune_id);
 2   DROP INDEX public.titrescommunes_communeid_index;
       public            postgres    false    250            $           1259    8391056 !   titrescommunes_titreetapeid_index    INDEX     g   CREATE INDEX titrescommunes_titreetapeid_index ON public.titres_communes USING btree (titre_etape_id);
 5   DROP INDEX public.titrescommunes_titreetapeid_index;
       public            postgres    false    250            '           1259    8391057    titresdemarches_statutid_index    INDEX     `   CREATE INDEX titresdemarches_statutid_index ON public.titres_demarches USING btree (statut_id);
 2   DROP INDEX public.titresdemarches_statutid_index;
       public            postgres    false    251            (           1259    8391058    titresdemarches_titreid_index    INDEX     ^   CREATE INDEX titresdemarches_titreid_index ON public.titres_demarches USING btree (titre_id);
 1   DROP INDEX public.titresdemarches_titreid_index;
       public            postgres    false    251            )           1259    8391059    titresdemarches_typeid_index    INDEX     \   CREATE INDEX titresdemarches_typeid_index ON public.titres_demarches USING btree (type_id);
 0   DROP INDEX public.titresdemarches_typeid_index;
       public            postgres    false    251            ,           1259    8391060 0   titresdemarchesliens_enfanttitredemarcheid_index    INDEX     �   CREATE INDEX titresdemarchesliens_enfanttitredemarcheid_index ON public.titres_demarches_liens USING btree (enfant_titre_demarche_id);
 D   DROP INDEX public.titresdemarchesliens_enfanttitredemarcheid_index;
       public            postgres    false    252            -           1259    8391061 0   titresdemarchesliens_parenttitredemarcheid_index    INDEX     �   CREATE INDEX titresdemarchesliens_parenttitredemarcheid_index ON public.titres_demarches_liens USING btree (parent_titre_demarche_id);
 D   DROP INDEX public.titresdemarchesliens_parenttitredemarcheid_index;
       public            postgres    false    252            0           1259    8391062    titresetapes_statutid_index    INDEX     Z   CREATE INDEX titresetapes_statutid_index ON public.titres_etapes USING btree (statut_id);
 /   DROP INDEX public.titresetapes_statutid_index;
       public            postgres    false    253            1           1259    8391063 "   titresetapes_titredemarcheid_index    INDEX     i   CREATE INDEX titresetapes_titredemarcheid_index ON public.titres_etapes USING btree (titre_demarche_id);
 6   DROP INDEX public.titresetapes_titredemarcheid_index;
       public            postgres    false    253            2           1259    8391064    titresetapes_typeid_index    INDEX     V   CREATE INDEX titresetapes_typeid_index ON public.titres_etapes USING btree (type_id);
 -   DROP INDEX public.titresetapes_typeid_index;
       public            postgres    false    253            5           1259    8391065 *   titresetapesjustificatifs_documentid_index    INDEX     y   CREATE INDEX titresetapesjustificatifs_documentid_index ON public.titres_etapes_justificatifs USING btree (document_id);
 >   DROP INDEX public.titresetapesjustificatifs_documentid_index;
       public            postgres    false    254            6           1259    8391066 ,   titresetapesjustificatifs_titreetapeid_index    INDEX     ~   CREATE INDEX titresetapesjustificatifs_titreetapeid_index ON public.titres_etapes_justificatifs USING btree (titre_etape_id);
 @   DROP INDEX public.titresetapesjustificatifs_titreetapeid_index;
       public            postgres    false    254            9           1259    8391067    titresforets_foretid_index    INDEX     X   CREATE INDEX titresforets_foretid_index ON public.titres_forets USING btree (foret_id);
 .   DROP INDEX public.titresforets_foretid_index;
       public            postgres    false    255            :           1259    8391068    titresforets_titreetapeid_index    INDEX     c   CREATE INDEX titresforets_titreetapeid_index ON public.titres_forets USING btree (titre_etape_id);
 3   DROP INDEX public.titresforets_titreetapeid_index;
       public            postgres    false    255            ?           1259    8391069    titrespoints_coordonnees_index    INDEX     ^   CREATE INDEX titrespoints_coordonnees_index ON public.titres_points USING gist (coordonnees);
 2   DROP INDEX public.titrespoints_coordonnees_index;
       public            postgres    false    257            @           1259    8391070    titrespoints_titreetapeid_index    INDEX     c   CREATE INDEX titrespoints_titreetapeid_index ON public.titres_points USING btree (titre_etape_id);
 3   DROP INDEX public.titrespoints_titreetapeid_index;
       public            postgres    false    257            C           1259    8391071 )   titrespointsreferences_titrepointid_index    INDEX     x   CREATE INDEX titrespointsreferences_titrepointid_index ON public.titres_points_references USING btree (titre_point_id);
 =   DROP INDEX public.titrespointsreferences_titrepointid_index;
       public            postgres    false    258            F           1259    8391072    titresreferences_titreid_index    INDEX     `   CREATE INDEX titresreferences_titreid_index ON public.titres_references USING btree (titre_id);
 2   DROP INDEX public.titresreferences_titreid_index;
       public            postgres    false    259            G           1259    8391073    titresreferences_typeid_index    INDEX     ^   CREATE INDEX titresreferences_typeid_index ON public.titres_references USING btree (type_id);
 1   DROP INDEX public.titresreferences_typeid_index;
       public            postgres    false    259            L           1259    8391074 "   titressubstances_substanceid_index    INDEX     h   CREATE INDEX titressubstances_substanceid_index ON public.titres_substances USING btree (substance_id);
 6   DROP INDEX public.titressubstances_substanceid_index;
       public            postgres    false    261            M           1259    8391075 #   titressubstances_titreetapeid_index    INDEX     k   CREATE INDEX titressubstances_titreetapeid_index ON public.titres_substances USING btree (titre_etape_id);
 7   DROP INDEX public.titressubstances_titreetapeid_index;
       public            postgres    false    261            P           1259    8391076 #   titrestitulaires_entrepriseid_index    INDEX     j   CREATE INDEX titrestitulaires_entrepriseid_index ON public.titres_titulaires USING btree (entreprise_id);
 7   DROP INDEX public.titrestitulaires_entrepriseid_index;
       public            postgres    false    262            Q           1259    8391077 #   titrestitulaires_titreetapeid_index    INDEX     k   CREATE INDEX titrestitulaires_titreetapeid_index ON public.titres_titulaires USING btree (titre_etape_id);
 7   DROP INDEX public.titrestitulaires_titreetapeid_index;
       public            postgres    false    262            T           1259    8391078    titrestravaux_statutid_index    INDEX     \   CREATE INDEX titrestravaux_statutid_index ON public.titres_travaux USING btree (statut_id);
 0   DROP INDEX public.titrestravaux_statutid_index;
       public            postgres    false    263            U           1259    8391079    titrestravaux_titreid_index    INDEX     Z   CREATE INDEX titrestravaux_titreid_index ON public.titres_travaux USING btree (titre_id);
 /   DROP INDEX public.titrestravaux_titreid_index;
       public            postgres    false    263            V           1259    8391080    titrestravaux_typeid_index    INDEX     X   CREATE INDEX titrestravaux_typeid_index ON public.titres_travaux USING btree (type_id);
 .   DROP INDEX public.titrestravaux_typeid_index;
       public            postgres    false    263            Y           1259    8391081 "   titrestravauxetapes_statutid_index    INDEX     i   CREATE INDEX titrestravauxetapes_statutid_index ON public.titres_travaux_etapes USING btree (statut_id);
 6   DROP INDEX public.titrestravauxetapes_statutid_index;
       public            postgres    false    264            Z           1259    8391082 (   titrestravauxetapes_titretravauxid_index    INDEX     v   CREATE INDEX titrestravauxetapes_titretravauxid_index ON public.titres_travaux_etapes USING btree (titre_travaux_id);
 <   DROP INDEX public.titrestravauxetapes_titretravauxid_index;
       public            postgres    false    264            [           1259    8391083     titrestravauxetapes_typeid_index    INDEX     e   CREATE INDEX titrestravauxetapes_typeid_index ON public.titres_travaux_etapes USING btree (type_id);
 4   DROP INDEX public.titrestravauxetapes_typeid_index;
       public            postgres    false    264            d           1259    8391084 0   titrestypes__activitestypes_activitetypeid_index    INDEX     �   CREATE INDEX titrestypes__activitestypes_activitetypeid_index ON public.titres_types__activites_types USING btree (activite_type_id);
 D   DROP INDEX public.titrestypes__activitestypes_activitetypeid_index;
       public            postgres    false    266            e           1259    8391085 -   titrestypes__activitestypes_titretypeid_index    INDEX     �   CREATE INDEX titrestypes__activitestypes_titretypeid_index ON public.titres_types__activites_types USING btree (titre_type_id);
 A   DROP INDEX public.titrestypes__activitestypes_titretypeid_index;
       public            postgres    false    266            l           1259    8391086 =   titrestypes__demarchestypes__etapestypes_demarchetypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes__etapestypes_demarchetypeid_index ON public.titres_types__demarches_types__etapes_types USING btree (demarche_type_id);
 Q   DROP INDEX public.titrestypes__demarchestypes__etapestypes_demarchetypeid_index;
       public            postgres    false    268            m           1259    8391087 :   titrestypes__demarchestypes__etapestypes_etapetypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes__etapestypes_etapetypeid_index ON public.titres_types__demarches_types__etapes_types USING btree (etape_type_id);
 N   DROP INDEX public.titrestypes__demarchestypes__etapestypes_etapetypeid_index;
       public            postgres    false    268            n           1259    8391088 :   titrestypes__demarchestypes__etapestypes_titretypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes__etapestypes_titretypeid_index ON public.titres_types__demarches_types__etapes_types USING btree (titre_type_id);
 N   DROP INDEX public.titrestypes__demarchestypes__etapestypes_titretypeid_index;
       public            postgres    false    268            h           1259    8391089 0   titrestypes__demarchestypes_demarchetypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes_demarchetypeid_index ON public.titres_types__demarches_types USING btree (demarche_type_id);
 D   DROP INDEX public.titrestypes__demarchestypes_demarchetypeid_index;
       public            postgres    false    267            i           1259    8391090 -   titrestypes__demarchestypes_titretypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes_titretypeid_index ON public.titres_types__demarches_types USING btree (titre_type_id);
 A   DROP INDEX public.titrestypes__demarchestypes_titretypeid_index;
       public            postgres    false    267            q           1259    8391091 .   titrestypes__titresstatuts_titrestatutid_index    INDEX     �   CREATE INDEX titrestypes__titresstatuts_titrestatutid_index ON public.titres_types__titres_statuts USING btree (titre_statut_id);
 B   DROP INDEX public.titrestypes__titresstatuts_titrestatutid_index;
       public            postgres    false    269            r           1259    8391092 ,   titrestypes__titresstatuts_titretypeid_index    INDEX     ~   CREATE INDEX titrestypes__titresstatuts_titretypeid_index ON public.titres_types__titres_statuts USING btree (titre_type_id);
 @   DROP INDEX public.titrestypes__titresstatuts_titretypeid_index;
       public            postgres    false    269            ^           1259    8391093    titrestypes_domaineid_index    INDEX     Z   CREATE INDEX titrestypes_domaineid_index ON public.titres_types USING btree (domaine_id);
 /   DROP INDEX public.titrestypes_domaineid_index;
       public            postgres    false    265            a           1259    8391094    titrestypes_typeid_index    INDEX     T   CREATE INDEX titrestypes_typeid_index ON public.titres_types USING btree (type_id);
 ,   DROP INDEX public.titrestypes_typeid_index;
       public            postgres    false    265            y           1259    8391095 +   travauxtypes__etapestypes_etapetypeid_index    INDEX     |   CREATE INDEX travauxtypes__etapestypes_etapetypeid_index ON public.travaux_types__etapes_types USING btree (etape_type_id);
 ?   DROP INDEX public.travauxtypes__etapestypes_etapetypeid_index;
       public            postgres    false    272            z           1259    8391096 -   travauxtypes__etapestypes_travauxtypeid_index    INDEX     �   CREATE INDEX travauxtypes__etapestypes_travauxtypeid_index ON public.travaux_types__etapes_types USING btree (travaux_type_id);
 A   DROP INDEX public.travauxtypes__etapestypes_travauxtypeid_index;
       public            postgres    false    272            {           1259    8391097    trimestres_frequenceid_index    INDEX     [   CREATE INDEX trimestres_frequenceid_index ON public.trimestres USING btree (frequence_id);
 0   DROP INDEX public.trimestres_frequenceid_index;
       public            postgres    false    273            �           1259    8391098 4   utilisateurs__administrations_administrationid_index    INDEX     �   CREATE INDEX utilisateurs__administrations_administrationid_index ON public.utilisateurs__administrations USING btree (administration_id);
 H   DROP INDEX public.utilisateurs__administrations_administrationid_index;
       public            postgres    false    276            �           1259    8391099 1   utilisateurs__administrations_utilisateurid_index    INDEX     �   CREATE INDEX utilisateurs__administrations_utilisateurid_index ON public.utilisateurs__administrations USING btree (utilisateur_id);
 E   DROP INDEX public.utilisateurs__administrations_utilisateurid_index;
       public            postgres    false    276            �           1259    8391100 ,   utilisateurs__entreprises_entrepriseid_index    INDEX     {   CREATE INDEX utilisateurs__entreprises_entrepriseid_index ON public.utilisateurs__entreprises USING btree (entreprise_id);
 @   DROP INDEX public.utilisateurs__entreprises_entrepriseid_index;
       public            postgres    false    277            �           1259    8391101 -   utilisateurs__entreprises_utilisateurid_index    INDEX     }   CREATE INDEX utilisateurs__entreprises_utilisateurid_index ON public.utilisateurs__entreprises USING btree (utilisateur_id);
 A   DROP INDEX public.utilisateurs__entreprises_utilisateurid_index;
       public            postgres    false    277            �           1259    8391102    utilisateurs_permissionid_index    INDEX     a   CREATE INDEX utilisateurs_permissionid_index ON public.utilisateurs USING btree (permission_id);
 3   DROP INDEX public.utilisateurs_permissionid_index;
       public            postgres    false    275            �           2606    8391103 V   activites_types__documents_types activitestypes__documentstypes_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__documents_types
    ADD CONSTRAINT activitestypes__documentstypes_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id);
 �   ALTER TABLE ONLY public.activites_types__documents_types DROP CONSTRAINT activitestypes__documentstypes_activitetypeid_foreign;
       public          postgres    false    201    202    3472            �           2606    8391108 V   activites_types__documents_types activitestypes__documentstypes_documenttypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__documents_types
    ADD CONSTRAINT activitestypes__documentstypes_documenttypeid_foreign FOREIGN KEY (document_type_id) REFERENCES public.documents_types(id);
 �   ALTER TABLE ONLY public.activites_types__documents_types DROP CONSTRAINT activitestypes__documentstypes_documenttypeid_foreign;
       public          postgres    false    3532    219    202            �           2606    8391113 A   activites_types__pays activitestypes__pays_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__pays
    ADD CONSTRAINT activitestypes__pays_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.activites_types__pays DROP CONSTRAINT activitestypes__pays_activitetypeid_foreign;
       public          postgres    false    203    3472    201            �           2606    8391118 9   activites_types__pays activitestypes__pays_paysid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__pays
    ADD CONSTRAINT activitestypes__pays_paysid_foreign FOREIGN KEY (pays_id) REFERENCES public.pays(id);
 c   ALTER TABLE ONLY public.activites_types__pays DROP CONSTRAINT activitestypes__pays_paysid_foreign;
       public          postgres    false    203    3566    235            �           2606    8391123 2   activites_types activitestypes_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types
    ADD CONSTRAINT activitestypes_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 \   ALTER TABLE ONLY public.activites_types DROP CONSTRAINT activitestypes_frequenceid_foreign;
       public          postgres    false    227    201    3551            �           2606    8391128 W   administrations__activites_types administrations__activitestypes_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__activites_types
    ADD CONSTRAINT administrations__activitestypes_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.administrations__activites_types DROP CONSTRAINT administrations__activitestypes_activitetypeid_foreign;
       public          postgres    false    201    3472    205            �           2606    8391133 Y   administrations__activites_types administrations__activitestypes_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__activites_types
    ADD CONSTRAINT administrations__activitestypes_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.administrations__activites_types DROP CONSTRAINT administrations__activitestypes_administrationid_foreign;
       public          postgres    false    3484    205    204            �           2606    8391138 k   administrations__titres_types__etapes_types administrations__titrestypes__etapestypes_administrationid_fore    FK CONSTRAINT       ALTER TABLE ONLY public.administrations__titres_types__etapes_types
    ADD CONSTRAINT administrations__titrestypes__etapestypes_administrationid_fore FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.administrations__titres_types__etapes_types DROP CONSTRAINT administrations__titrestypes__etapestypes_administrationid_fore;
       public          postgres    false    204    3484    207            �           2606    8391143 i   administrations__titres_types__etapes_types administrations__titrestypes__etapestypes_etapetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types__etapes_types
    ADD CONSTRAINT administrations__titrestypes__etapestypes_etapetypeid_foreign FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id);
 �   ALTER TABLE ONLY public.administrations__titres_types__etapes_types DROP CONSTRAINT administrations__titrestypes__etapestypes_etapetypeid_foreign;
       public          postgres    false    207    224    3543            �           2606    8391148 i   administrations__titres_types__etapes_types administrations__titrestypes__etapestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types__etapes_types
    ADD CONSTRAINT administrations__titrestypes__etapestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 �   ALTER TABLE ONLY public.administrations__titres_types__etapes_types DROP CONSTRAINT administrations__titrestypes__etapestypes_titretypeid_foreign;
       public          postgres    false    3677    207    265            �           2606    8391153 m   administrations__titres_types__titres_statuts administrations__titrestypes__titresstatuts_administrationid_fo    FK CONSTRAINT       ALTER TABLE ONLY public.administrations__titres_types__titres_statuts
    ADD CONSTRAINT administrations__titrestypes__titresstatuts_administrationid_fo FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.administrations__titres_types__titres_statuts DROP CONSTRAINT administrations__titrestypes__titresstatuts_administrationid_fo;
       public          postgres    false    208    204    3484            �           2606    8391158 m   administrations__titres_types__titres_statuts administrations__titrestypes__titresstatuts_titrestatutid_forei    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types__titres_statuts
    ADD CONSTRAINT administrations__titrestypes__titresstatuts_titrestatutid_forei FOREIGN KEY (titre_statut_id) REFERENCES public.titres_statuts(id);
 �   ALTER TABLE ONLY public.administrations__titres_types__titres_statuts DROP CONSTRAINT administrations__titrestypes__titresstatuts_titrestatutid_forei;
       public          postgres    false    3657    260    208            �           2606    8391163 m   administrations__titres_types__titres_statuts administrations__titrestypes__titresstatuts_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types__titres_statuts
    ADD CONSTRAINT administrations__titrestypes__titresstatuts_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 �   ALTER TABLE ONLY public.administrations__titres_types__titres_statuts DROP CONSTRAINT administrations__titrestypes__titresstatuts_titretypeid_foreign;
       public          postgres    false    265    208    3677            �           2606    8391168 S   administrations__titres_types administrations__titrestypes_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types
    ADD CONSTRAINT administrations__titrestypes_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 }   ALTER TABLE ONLY public.administrations__titres_types DROP CONSTRAINT administrations__titrestypes_administrationid_foreign;
       public          postgres    false    204    3484    206            �           2606    8391173 N   administrations__titres_types administrations__titrestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types
    ADD CONSTRAINT administrations__titrestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 x   ALTER TABLE ONLY public.administrations__titres_types DROP CONSTRAINT administrations__titrestypes_titretypeid_foreign;
       public          postgres    false    206    3677    265            �           2606    8391178 5   administrations administrations_departementid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_departementid_foreign FOREIGN KEY (departement_id) REFERENCES public.departements(id);
 _   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_departementid_foreign;
       public          postgres    false    3520    216    204            �           2606    8391183 0   administrations administrations_regionid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_regionid_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id);
 Z   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_regionid_foreign;
       public          postgres    false    239    3575    204            �           2606    8391188 .   administrations administrations_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.administrations_types(id);
 X   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_typeid_foreign;
       public          postgres    false    209    3504    204            �           2606    8391193 !   annees annees_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.annees
    ADD CONSTRAINT annees_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 K   ALTER TABLE ONLY public.annees DROP CONSTRAINT annees_frequenceid_foreign;
       public          postgres    false    210    3551    227            �           2606    8391198 '   communes communes_departementid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.communes
    ADD CONSTRAINT communes_departementid_foreign FOREIGN KEY (departement_id) REFERENCES public.departements(id);
 Q   ALTER TABLE ONLY public.communes DROP CONSTRAINT communes_departementid_foreign;
       public          postgres    false    216    3520    212            �           2606    8391203 *   departements departements_regionid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.departements
    ADD CONSTRAINT departements_regionid_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id);
 T   ALTER TABLE ONLY public.departements DROP CONSTRAINT departements_regionid_foreign;
       public          postgres    false    239    3575    216            �           2606    8391208 (   documents documents_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_entrepriseid_foreign;
       public          postgres    false    221    3536    218            �           2606    8391213 +   documents documents_titreactiviteid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_titreactiviteid_foreign FOREIGN KEY (titre_activite_id) REFERENCES public.titres_activites(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_titreactiviteid_foreign;
       public          postgres    false    218    246    3600            �           2606    8391218 (   documents documents_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_titreetapeid_foreign;
       public          postgres    false    218    253    3631            �           2606    8391223 /   documents documents_titretravauxetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_titretravauxetapeid_foreign FOREIGN KEY (titre_travaux_etape_id) REFERENCES public.titres_travaux_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_titretravauxetapeid_foreign;
       public          postgres    false    264    3672    218            �           2606    8391228 "   documents documents_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.documents_types(id);
 L   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_typeid_foreign;
       public          postgres    false    219    218    3532            �           2606    8391233 I   entreprises_etablissements entreprisesetablissements_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.entreprises_etablissements
    ADD CONSTRAINT entreprisesetablissements_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.entreprises_etablissements DROP CONSTRAINT entreprisesetablissements_entrepriseid_foreign;
       public          postgres    false    222    3536    221            �           2606    8391238 M   etapes_types__etapes_statuts etapestypes__etapesstatuts_etapestatutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types__etapes_statuts
    ADD CONSTRAINT etapestypes__etapesstatuts_etapestatutid_foreign FOREIGN KEY (etape_statut_id) REFERENCES public.etapes_statuts(id);
 w   ALTER TABLE ONLY public.etapes_types__etapes_statuts DROP CONSTRAINT etapestypes__etapesstatuts_etapestatutid_foreign;
       public          postgres    false    225    3541    223            �           2606    8391243 K   etapes_types__etapes_statuts etapestypes__etapesstatuts_etapetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types__etapes_statuts
    ADD CONSTRAINT etapestypes__etapesstatuts_etapetypeid_foreign FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id);
 u   ALTER TABLE ONLY public.etapes_types__etapes_statuts DROP CONSTRAINT etapestypes__etapesstatuts_etapetypeid_foreign;
       public          postgres    false    224    3543    225            �           2606    8391248 )   etapes_types etapestypes_parentid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types
    ADD CONSTRAINT etapestypes_parentid_foreign FOREIGN KEY (parent_id) REFERENCES public.etapes_types(id);
 S   ALTER TABLE ONLY public.etapes_types DROP CONSTRAINT etapestypes_parentid_foreign;
       public          postgres    false    224    3543    224            �           2606    8391253 (   geo_systemes geosystemes_uniteid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.geo_systemes
    ADD CONSTRAINT geosystemes_uniteid_foreign FOREIGN KEY (unite_id) REFERENCES public.unites(id);
 R   ALTER TABLE ONLY public.geo_systemes DROP CONSTRAINT geosystemes_uniteid_foreign;
       public          postgres    false    274    3711    228            �           2606    8391258    mois mois_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.mois
    ADD CONSTRAINT mois_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 G   ALTER TABLE ONLY public.mois DROP CONSTRAINT mois_frequenceid_foreign;
       public          postgres    false    3551    234    227            �           2606    8391263    mois mois_trimestreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.mois
    ADD CONSTRAINT mois_trimestreid_foreign FOREIGN KEY (trimestre_id) REFERENCES public.trimestres(id);
 G   ALTER TABLE ONLY public.mois DROP CONSTRAINT mois_trimestreid_foreign;
       public          postgres    false    234    3709    273            �           2606    8391268    regions regions_paysid_foreign    FK CONSTRAINT     |   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_paysid_foreign FOREIGN KEY (pays_id) REFERENCES public.pays(id);
 H   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_paysid_foreign;
       public          postgres    false    239    3566    235            �           2606    8391273 P   substances__substances_legales substances__substanceslegales_substanceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances__substances_legales
    ADD CONSTRAINT substances__substanceslegales_substanceid_foreign FOREIGN KEY (substance_id) REFERENCES public.substances(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.substances__substances_legales DROP CONSTRAINT substances__substanceslegales_substanceid_foreign;
       public          postgres    false    3577    240    241            �           2606    8391278 V   substances__substances_legales substances__substanceslegales_substancelegaleid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances__substances_legales
    ADD CONSTRAINT substances__substanceslegales_substancelegaleid_foreign FOREIGN KEY (substance_legale_id) REFERENCES public.substances_legales(id);
 �   ALTER TABLE ONLY public.substances__substances_legales DROP CONSTRAINT substances__substanceslegales_substancelegaleid_foreign;
       public          postgres    false    243    3588    241            �           2606    8391283 ?   substances_fiscales substancesfiscales_redevanceuniteid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances_fiscales
    ADD CONSTRAINT substancesfiscales_redevanceuniteid_foreign FOREIGN KEY (redevance_unite_id) REFERENCES public.unites(id);
 i   ALTER TABLE ONLY public.substances_fiscales DROP CONSTRAINT substancesfiscales_redevanceuniteid_foreign;
       public          postgres    false    242    3711    274            �           2606    8391288 @   substances_fiscales substancesfiscales_substancelegaleid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances_fiscales
    ADD CONSTRAINT substancesfiscales_substancelegaleid_foreign FOREIGN KEY (substance_legale_id) REFERENCES public.substances_legales(id);
 j   ALTER TABLE ONLY public.substances_fiscales DROP CONSTRAINT substancesfiscales_substancelegaleid_foreign;
       public          postgres    false    243    3588    242            �           2606    8391293 6   substances_fiscales substancesfiscales_uniteid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances_fiscales
    ADD CONSTRAINT substancesfiscales_uniteid_foreign FOREIGN KEY (unite_id) REFERENCES public.unites(id);
 `   ALTER TABLE ONLY public.substances_fiscales DROP CONSTRAINT substancesfiscales_uniteid_foreign;
       public          postgres    false    274    3711    242            �           2606    8391298 6   substances_legales substanceslegales_domaineid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances_legales
    ADD CONSTRAINT substanceslegales_domaineid_foreign FOREIGN KEY (domaine_id) REFERENCES public.domaines(id);
 `   ALTER TABLE ONLY public.substances_legales DROP CONSTRAINT substanceslegales_domaineid_foreign;
       public          postgres    false    220    3534    243            �           2606    8391303 B   substances_legales substanceslegales_substancelegalecodeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances_legales
    ADD CONSTRAINT substanceslegales_substancelegalecodeid_foreign FOREIGN KEY (substance_legale_code_id) REFERENCES public.substances_legales_codes(id);
 l   ALTER TABLE ONLY public.substances_legales DROP CONSTRAINT substanceslegales_substancelegalecodeid_foreign;
       public          postgres    false    243    244    3592            �           2606    8391308    titres titres_domaineid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_domaineid_foreign FOREIGN KEY (domaine_id) REFERENCES public.domaines(id);
 I   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_domaineid_foreign;
       public          postgres    false    245    220    3534            �           2606    8391313    titres titres_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.titres_statuts(id);
 H   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_statutid_foreign;
       public          postgres    false    260    245    3657            �           2606    8391318    titres titres_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.titres_types(id);
 F   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_typeid_foreign;
       public          postgres    false    3677    245    265            �           2606    8391323 1   titres_activites titresactivites_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.activites_statuts(id);
 [   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_statutid_foreign;
       public          postgres    false    200    246    3470            �           2606    8391328 0   titres_activites titresactivites_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_titreid_foreign;
       public          postgres    false    246    3596    245            �           2606    8391333 /   titres_activites titresactivites_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.activites_types(id);
 Y   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_typeid_foreign;
       public          postgres    false    3472    246    201            �           2606    8391338 6   titres_activites titresactivites_utilisateurid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_utilisateurid_foreign FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateurs(id);
 `   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_utilisateurid_foreign;
       public          postgres    false    246    275    3716            �           2606    8391343 `   titres_administrations_gestionnaires titresadministrationsgestionnaires_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_gestionnaires
    ADD CONSTRAINT titresadministrationsgestionnaires_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.titres_administrations_gestionnaires DROP CONSTRAINT titresadministrationsgestionnaires_administrationid_foreign;
       public          postgres    false    204    247    3484            �           2606    8391348 W   titres_administrations_gestionnaires titresadministrationsgestionnaires_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_gestionnaires
    ADD CONSTRAINT titresadministrationsgestionnaires_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.titres_administrations_gestionnaires DROP CONSTRAINT titresadministrationsgestionnaires_titreid_foreign;
       public          postgres    false    247    245    3596            �           2606    8391353 T   titres_administrations_locales titresadministrationslocales_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_locales
    ADD CONSTRAINT titresadministrationslocales_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.titres_administrations_locales DROP CONSTRAINT titresadministrationslocales_administrationid_foreign;
       public          postgres    false    3484    248    204            �           2606    8391358 P   titres_administrations_locales titresadministrationslocales_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_locales
    ADD CONSTRAINT titresadministrationslocales_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.titres_administrations_locales DROP CONSTRAINT titresadministrationslocales_titreetapeid_foreign;
       public          postgres    false    253    248    3631            �           2606    8391363 ;   titres_amodiataires titresamodiataires_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_amodiataires
    ADD CONSTRAINT titresamodiataires_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.titres_amodiataires DROP CONSTRAINT titresamodiataires_entrepriseid_foreign;
       public          postgres    false    3536    249    221            �           2606    8391368 ;   titres_amodiataires titresamodiataires_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_amodiataires
    ADD CONSTRAINT titresamodiataires_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.titres_amodiataires DROP CONSTRAINT titresamodiataires_titreetapeid_foreign;
       public          postgres    false    249    253    3631            �           2606    8391373 0   titres_communes titrescommunes_communeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_communes
    ADD CONSTRAINT titrescommunes_communeid_foreign FOREIGN KEY (commune_id) REFERENCES public.communes(id);
 Z   ALTER TABLE ONLY public.titres_communes DROP CONSTRAINT titrescommunes_communeid_foreign;
       public          postgres    false    3512    250    212            �           2606    8391378 3   titres_communes titrescommunes_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_communes
    ADD CONSTRAINT titrescommunes_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.titres_communes DROP CONSTRAINT titrescommunes_titreetapeid_foreign;
       public          postgres    false    253    250    3631            �           2606    8391383 1   titres_demarches titresdemarches_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titresdemarches_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.demarches_statuts(id);
 [   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titresdemarches_statutid_foreign;
       public          postgres    false    214    251    3516            �           2606    8391388 0   titres_demarches titresdemarches_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titresdemarches_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titresdemarches_titreid_foreign;
       public          postgres    false    245    3596    251            �           2606    8391393 /   titres_demarches titresdemarches_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titresdemarches_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.demarches_types(id);
 Y   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titresdemarches_typeid_foreign;
       public          postgres    false    251    215    3518            �           2606    8391398 I   titres_demarches_liens titresdemarchesliens_enfanttitredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches_liens
    ADD CONSTRAINT titresdemarchesliens_enfanttitredemarcheid_foreign FOREIGN KEY (enfant_titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.titres_demarches_liens DROP CONSTRAINT titresdemarchesliens_enfanttitredemarcheid_foreign;
       public          postgres    false    3622    252    251            �           2606    8391403 I   titres_demarches_liens titresdemarchesliens_parenttitredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches_liens
    ADD CONSTRAINT titresdemarchesliens_parenttitredemarcheid_foreign FOREIGN KEY (parent_titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.titres_demarches_liens DROP CONSTRAINT titresdemarchesliens_parenttitredemarcheid_foreign;
       public          postgres    false    251    252    3622            �           2606    8391408 +   titres_etapes titresetapes_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titresetapes_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.etapes_statuts(id);
 U   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titresetapes_statutid_foreign;
       public          postgres    false    223    253    3541            �           2606    8391413 2   titres_etapes titresetapes_titredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titresetapes_titredemarcheid_foreign FOREIGN KEY (titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titresetapes_titredemarcheid_foreign;
       public          postgres    false    251    253    3622            �           2606    8391418 )   titres_etapes titresetapes_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titresetapes_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.etapes_types(id);
 S   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titresetapes_typeid_foreign;
       public          postgres    false    3543    224    253            �           2606    8391423 H   titres_etapes_justificatifs titresetapesjustificatifs_documentid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes_justificatifs
    ADD CONSTRAINT titresetapesjustificatifs_documentid_foreign FOREIGN KEY (document_id) REFERENCES public.documents(id) ON UPDATE CASCADE ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.titres_etapes_justificatifs DROP CONSTRAINT titresetapesjustificatifs_documentid_foreign;
       public          postgres    false    218    254    3526            �           2606    8391428 J   titres_etapes_justificatifs titresetapesjustificatifs_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes_justificatifs
    ADD CONSTRAINT titresetapesjustificatifs_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 t   ALTER TABLE ONLY public.titres_etapes_justificatifs DROP CONSTRAINT titresetapesjustificatifs_titreetapeid_foreign;
       public          postgres    false    3631    254    253            �           2606    8391433 *   titres_forets titresforets_foretid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_forets
    ADD CONSTRAINT titresforets_foretid_foreign FOREIGN KEY (foret_id) REFERENCES public.forets(id);
 T   ALTER TABLE ONLY public.titres_forets DROP CONSTRAINT titresforets_foretid_foreign;
       public          postgres    false    255    226    3549            �           2606    8391438 /   titres_forets titresforets_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_forets
    ADD CONSTRAINT titresforets_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.titres_forets DROP CONSTRAINT titresforets_titreetapeid_foreign;
       public          postgres    false    255    253    3631            �           2606    8391443 +   titres_phases titresphases_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_phases
    ADD CONSTRAINT titresphases_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.phases_statuts(id);
 U   ALTER TABLE ONLY public.titres_phases DROP CONSTRAINT titresphases_statutid_foreign;
       public          postgres    false    237    3570    256            �           2606    8391448 2   titres_phases titresphases_titredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_phases
    ADD CONSTRAINT titresphases_titredemarcheid_foreign FOREIGN KEY (titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.titres_phases DROP CONSTRAINT titresphases_titredemarcheid_foreign;
       public          postgres    false    256    3622    251            �           2606    8391453 /   titres_points titrespoints_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_points
    ADD CONSTRAINT titrespoints_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.titres_points DROP CONSTRAINT titrespoints_titreetapeid_foreign;
       public          postgres    false    257    3631    253            �           2606    8391458 D   titres_points_references titrespointsreferences_titrepointid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_points_references
    ADD CONSTRAINT titrespointsreferences_titrepointid_foreign FOREIGN KEY (titre_point_id) REFERENCES public.titres_points(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.titres_points_references DROP CONSTRAINT titrespointsreferences_titrepointid_foreign;
       public          postgres    false    258    3646    257            �           2606    8391463 2   titres_references titresreferences_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_references
    ADD CONSTRAINT titresreferences_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.titres_references DROP CONSTRAINT titresreferences_titreid_foreign;
       public          postgres    false    259    3596    245            �           2606    8391468 1   titres_references titresreferences_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_references
    ADD CONSTRAINT titresreferences_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.references_types(id);
 [   ALTER TABLE ONLY public.titres_references DROP CONSTRAINT titresreferences_typeid_foreign;
       public          postgres    false    259    3572    238            �           2606    8391473 6   titres_substances titressubstances_substanceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_substances
    ADD CONSTRAINT titressubstances_substanceid_foreign FOREIGN KEY (substance_id) REFERENCES public.substances(id);
 `   ALTER TABLE ONLY public.titres_substances DROP CONSTRAINT titressubstances_substanceid_foreign;
       public          postgres    false    261    3577    240            �           2606    8391478 7   titres_substances titressubstances_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_substances
    ADD CONSTRAINT titressubstances_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.titres_substances DROP CONSTRAINT titressubstances_titreetapeid_foreign;
       public          postgres    false    261    3631    253            �           2606    8391483 7   titres_titulaires titrestitulaires_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_titulaires
    ADD CONSTRAINT titrestitulaires_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.titres_titulaires DROP CONSTRAINT titrestitulaires_entrepriseid_foreign;
       public          postgres    false    262    3536    221            �           2606    8391488 7   titres_titulaires titrestitulaires_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_titulaires
    ADD CONSTRAINT titrestitulaires_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.titres_titulaires DROP CONSTRAINT titrestitulaires_titreetapeid_foreign;
       public          postgres    false    262    3631    253            �           2606    8391493 -   titres_travaux titrestravaux_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux
    ADD CONSTRAINT titrestravaux_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.demarches_statuts(id);
 W   ALTER TABLE ONLY public.titres_travaux DROP CONSTRAINT titrestravaux_statutid_foreign;
       public          postgres    false    214    263    3516            �           2606    8391498 ,   titres_travaux titrestravaux_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux
    ADD CONSTRAINT titrestravaux_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.titres_travaux DROP CONSTRAINT titrestravaux_titreid_foreign;
       public          postgres    false    245    3596    263            �           2606    8391503 +   titres_travaux titrestravaux_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux
    ADD CONSTRAINT titrestravaux_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.travaux_types(id);
 U   ALTER TABLE ONLY public.titres_travaux DROP CONSTRAINT titrestravaux_typeid_foreign;
       public          postgres    false    271    263    3702            �           2606    8391508 :   titres_travaux_etapes titrestravauxetapes_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux_etapes
    ADD CONSTRAINT titrestravauxetapes_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.etapes_statuts(id);
 d   ALTER TABLE ONLY public.titres_travaux_etapes DROP CONSTRAINT titrestravauxetapes_statutid_foreign;
       public          postgres    false    3541    223    264            �           2606    8391513 @   titres_travaux_etapes titrestravauxetapes_titretravauxid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux_etapes
    ADD CONSTRAINT titrestravauxetapes_titretravauxid_foreign FOREIGN KEY (titre_travaux_id) REFERENCES public.titres_travaux(id) ON UPDATE CASCADE ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.titres_travaux_etapes DROP CONSTRAINT titrestravauxetapes_titretravauxid_foreign;
       public          postgres    false    263    264    3667            �           2606    8391518 8   titres_travaux_etapes titrestravauxetapes_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux_etapes
    ADD CONSTRAINT titrestravauxetapes_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.etapes_types(id);
 b   ALTER TABLE ONLY public.titres_travaux_etapes DROP CONSTRAINT titrestravauxetapes_typeid_foreign;
       public          postgres    false    3543    264    224            �           2606    8391523 P   titres_types__activites_types titrestypes__activitestypes_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__activites_types
    ADD CONSTRAINT titrestypes__activitestypes_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id);
 z   ALTER TABLE ONLY public.titres_types__activites_types DROP CONSTRAINT titrestypes__activitestypes_activitetypeid_foreign;
       public          postgres    false    266    3472    201            �           2606    8391528 M   titres_types__activites_types titrestypes__activitestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__activites_types
    ADD CONSTRAINT titrestypes__activitestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 w   ALTER TABLE ONLY public.titres_types__activites_types DROP CONSTRAINT titrestypes__activitestypes_titretypeid_foreign;
       public          postgres    false    265    266    3677            �           2606    8391533 k   titres_types__demarches_types__etapes_types titrestypes__demarchestypes__etapestypes_demarchetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titrestypes__demarchestypes__etapestypes_demarchetypeid_foreign FOREIGN KEY (demarche_type_id) REFERENCES public.demarches_types(id);
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titrestypes__demarchestypes__etapestypes_demarchetypeid_foreign;
       public          postgres    false    215    268    3518            �           2606    8391538 h   titres_types__demarches_types__etapes_types titrestypes__demarchestypes__etapestypes_etapetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titrestypes__demarchestypes__etapestypes_etapetypeid_foreign FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id);
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titrestypes__demarchestypes__etapestypes_etapetypeid_foreign;
       public          postgres    false    224    268    3543            �           2606    8391543 h   titres_types__demarches_types__etapes_types titrestypes__demarchestypes__etapestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titrestypes__demarchestypes__etapestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titrestypes__demarchestypes__etapestypes_titretypeid_foreign;
       public          postgres    false    3677    268    265            �           2606    8391548 P   titres_types__demarches_types titrestypes__demarchestypes_demarchetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types
    ADD CONSTRAINT titrestypes__demarchestypes_demarchetypeid_foreign FOREIGN KEY (demarche_type_id) REFERENCES public.demarches_types(id);
 z   ALTER TABLE ONLY public.titres_types__demarches_types DROP CONSTRAINT titrestypes__demarchestypes_demarchetypeid_foreign;
       public          postgres    false    3518    215    267            �           2606    8391553 M   titres_types__demarches_types titrestypes__demarchestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types
    ADD CONSTRAINT titrestypes__demarchestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 w   ALTER TABLE ONLY public.titres_types__demarches_types DROP CONSTRAINT titrestypes__demarchestypes_titretypeid_foreign;
       public          postgres    false    265    3677    267            �           2606    8391558 M   titres_types__titres_statuts titrestypes__titresstatuts_titrestatutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__titres_statuts
    ADD CONSTRAINT titrestypes__titresstatuts_titrestatutid_foreign FOREIGN KEY (titre_statut_id) REFERENCES public.titres_statuts(id);
 w   ALTER TABLE ONLY public.titres_types__titres_statuts DROP CONSTRAINT titrestypes__titresstatuts_titrestatutid_foreign;
       public          postgres    false    269    3657    260            �           2606    8391563 K   titres_types__titres_statuts titrestypes__titresstatuts_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__titres_statuts
    ADD CONSTRAINT titrestypes__titresstatuts_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 u   ALTER TABLE ONLY public.titres_types__titres_statuts DROP CONSTRAINT titrestypes__titresstatuts_titretypeid_foreign;
       public          postgres    false    265    269    3677            �           2606    8391568 *   titres_types titrestypes_domaineid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titrestypes_domaineid_foreign FOREIGN KEY (domaine_id) REFERENCES public.domaines(id);
 T   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titrestypes_domaineid_foreign;
       public          postgres    false    265    3534    220            �           2606    8391573 '   titres_types titrestypes_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titrestypes_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.titres_types_types(id);
 Q   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titrestypes_typeid_foreign;
       public          postgres    false    270    3700    265            �           2606    8391578 I   travaux_types__etapes_types travauxtypes__etapestypes_etapetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.travaux_types__etapes_types
    ADD CONSTRAINT travauxtypes__etapestypes_etapetypeid_foreign FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id);
 s   ALTER TABLE ONLY public.travaux_types__etapes_types DROP CONSTRAINT travauxtypes__etapestypes_etapetypeid_foreign;
       public          postgres    false    224    272    3543            �           2606    8391583 K   travaux_types__etapes_types travauxtypes__etapestypes_travauxtypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.travaux_types__etapes_types
    ADD CONSTRAINT travauxtypes__etapestypes_travauxtypeid_foreign FOREIGN KEY (travaux_type_id) REFERENCES public.travaux_types(id);
 u   ALTER TABLE ONLY public.travaux_types__etapes_types DROP CONSTRAINT travauxtypes__etapestypes_travauxtypeid_foreign;
       public          postgres    false    272    271    3702            �           2606    8391588 )   trimestres trimestres_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.trimestres
    ADD CONSTRAINT trimestres_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 S   ALTER TABLE ONLY public.trimestres DROP CONSTRAINT trimestres_frequenceid_foreign;
       public          postgres    false    3551    273    227            �           2606    8391593 T   utilisateurs__administrations utilisateurs__administrations_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__administrations
    ADD CONSTRAINT utilisateurs__administrations_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.utilisateurs__administrations DROP CONSTRAINT utilisateurs__administrations_administrationid_foreign;
       public          postgres    false    204    276    3484            �           2606    8391598 Q   utilisateurs__administrations utilisateurs__administrations_utilisateurid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__administrations
    ADD CONSTRAINT utilisateurs__administrations_utilisateurid_foreign FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateurs(id) ON DELETE CASCADE;
 {   ALTER TABLE ONLY public.utilisateurs__administrations DROP CONSTRAINT utilisateurs__administrations_utilisateurid_foreign;
       public          postgres    false    276    275    3716            �           2606    8391603 H   utilisateurs__entreprises utilisateurs__entreprises_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__entreprises
    ADD CONSTRAINT utilisateurs__entreprises_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.utilisateurs__entreprises DROP CONSTRAINT utilisateurs__entreprises_entrepriseid_foreign;
       public          postgres    false    277    221    3536            �           2606    8391608 I   utilisateurs__entreprises utilisateurs__entreprises_utilisateurid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__entreprises
    ADD CONSTRAINT utilisateurs__entreprises_utilisateurid_foreign FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateurs(id) ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.utilisateurs__entreprises DROP CONSTRAINT utilisateurs__entreprises_utilisateurid_foreign;
       public          postgres    false    277    275    3716            �           2606    8391613 .   utilisateurs utilisateurs_permissionid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_permissionid_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id);
 X   ALTER TABLE ONLY public.utilisateurs DROP CONSTRAINT utilisateurs_permissionid_foreign;
       public          postgres    false    3568    236    275            r   W   x����  �s;�8�(Ր���gb�w|�:��,l��,,�xXRtx�I�Oh{M�������fi
gXx���K�"=      s      x��]_o�8�v>1�����N���dv}�x�d��8pY,�mk#�R�ػ`�ƽ����=�m߮��|��"�_��n���c�Ll�����H����	E\�$^�$��|⮳���^Lc���#���mrMC���o����7��"�`�d�E��~1��2?����j.�M$qV3�AV�'A�PB�U,�����Y��:bY�0	�Ld%.���U���΋���/�¤#���*��R2�����lАH@�2x!�ɠ	qx"$q�'F6�"��W$P�I�H�Sr�E�:qx� b2&���`2��?$��P���a9�����7^8$�V@�'$dq��,L!4�_$Q��'�%��D\ ��v�@����=�`�%"��[���%�D0�'�I�9e�30�$����%��I����d�����4� 먪��ǟ%�w/�(�1�&c	MF�Z��<���s�&����镉�ìqQT��M��=��P"S�����$��< ��|D��M�p���I�K&XD�K��c��C� U�2d~+BN�fO�f :�-� b����* ԉ�QQa�"�C`"�׀�UF���Ğ�5X$�2��6�Lt�ط��pD/د?�l���}3��α��:�&��l��/6�K:���f@��9���M��˦R�:���Tx���ܹ,B�*�P���x4�*Z���,\��*��<T��F�z7�AqZ�ߙ'!ymNc+S �T�
�?�~`U�q�xX,:���c~�}��}l��=X՞T�74v6��Q,�#`�;J.;�Y���2�#��ɓ�_�n���;갭�����z~�9���e�yr|����{n���w�oO>��lßݝ{�/�m�x�l%t����a�����˽���$����4����,d!�05 �!���*��j�ӝ�0�
3s���	b� ��4��V(��h��X~��~�E�=5�CUEmI%�MԴKr�IG	:@� �L�z���ZQ�aBa')�l!)4[E�WGjF�8��dY:f�]C#܀O�fh��$��
�ta�+
����j_3�f�O�.I���Uj���1��G�*aR�9_����$#@��w�C� F��N�P U�d��C��wS��r�z��(Z|_Dv���-Ԁ�!q�N���+����b%刁�z gvJ\�`U�-�S_����5G�<q����s��]9o&�x��)O伧¸�y�߸0<3�s �!�H|��ߪ4�6�a�h��Y�G��o 珉�s� �H�����Y��� �Uyxڔ�r��_�p�᥁�O,P�hq�$bg�@ϟ��?�=�g�0K~�qo%�t0y4;"q_D��q8F8Y|�'!F:Q��Q5'c��x�����e-,��Ѭ�C<*�)^�X`��g������ >��J2�&�4��T��P�W5�:��*߶f�J'�'�B���~��	=X�5�c��=�D�r%�����1�x�]=���\����#��> ,v�g��׀̵����k��rįI/��[a0��{,�0�,��>���oG���x�F�'t��<�m��E����>��m��w�Ow�B(ܰ��s�k�����~aׯw_>w��/^>��lo煳=|����K������P�8[Ѓ��2�o^�H�?�l�|E��M7t��T?�Wy�"ä�؈T��ݍ�oR�A�O1*J��u��R�{���R�>�F'�o���3�T�`��B��<�L-��{��ݵ�}-����j(l!I�ŬS.th�[AC�!����4���Ye4i��a��p������A)��fXf������Ѫv�V�7	�l�Z��R�pֺ��,�B��m���l.j�4�׵e35Sۙ�ڝ�L�-�L=_s�zˡ���ess{IXU쎶h�lм��`�տɚȣΐ���Yi����Gxg����E�A�*w�貗�D�a4]9����L�
�4	��0b����8������B���� �o�}��4�͢�f��2�V�n:�T�i�-�>Ww�+b<]�j��(��5�e��O�����L�s�F�Rm�1U����m �TF[<�F��|ty--�_¾^k�[F���5Y*�s��`��%c��������b�k�_��L@�q�`"����.lM�ԋzC�5<�ڽ�ʴ>F�{�_�2M6�mW(*X�q[b�b��-�, e�n	�x�����Z,M7UŃ�����{�������r$DZo���w	w�@�!6ڜ�ӏ����Bٴy�_	՗p�k�}���$�i������rz'��jA�T-�����߱9Z���a�V�=�K6�^(5* p�N�a�Z|{l&㼱:�ʛ/	H-��7ԓڏ8#Z��yx�{9�yC�ޔ���e���H}���0I]yY���9��&q�^>7���`��s㕯����m\�k�3"��Zrɇ�p+y�o%�|)�|̓ 	�F���׹sG�Ճ�re<fq��.B��(���h�f��݋*jႆ��*��C�Q�O�P�x�2�xco��j[ftA	�E� ��w1�Q L�ع��s�����p-���>����� ����S������Y��������:�o�c�"�{+�]G�Sx�(݊��p��"�N�>�@������&y9;�N+K�t�W���/����|�?s9	�U)����
Uל�fB��T����T.�D�H�M�Ӣq��T�z;���.�by�B�\�kaT�տ6[��a��B.;|�*�y�U�Eo�O��o��S��˦��ݾj��DC�|/d8-ݑ<�H0��Xπ��f�B�V�5#�5���������ʢ:��Q��r���A��ՠ�v�<���(�Y��_<�g��W:�
b��N%lE�$�--^+k��ƄL��nE7�%��趁�T��h�2��J.UA�F�W�׺&c]���[nKu�F���F�
0L��[�d�J%�^Um�2ѩo]HYT�	�
i]7D��u��Խ2�S�N9�u�z���8,���0*�F�6_�Ϟi��M�f��Т�- ���N^��}�k����ğ`�`�Wf�WQOe�׎��*V`Y�k��X[��)��W�_�t�C��C|�ˠS4�0��S�:����e�k�*Z��\�:�i.f����)l?}SS��:Kq�~��9VQ�̜t�+����Z��R��6�j�g������:X.]���ep+��"Kw��*�)S�qG�X�a����,O~ŭ����mc
B���IjgL��y�oU5�p�Ϣr>��B%j�k{�
Ѹ�0��)���:�t�z.�����Ld�*�ϡ������Ӽ:	��4MB�q�e��?1�)��4sm����@�ǨB��,�����ll�����[ 
s�o�)Kc���U��~�ՠ�n��Rڇ*��LD;�f�r�w�-Ex
c���Xp:mF6u�Q����X,�֣����7��FӠ�N�~�Rڎ2��,G
�f�t~ɍF_\
����XT:�E+(u[тG�N,�n+��w�Eג�dU��J_h��z.��<h3�7�Cf��ydq[	2苌{��++[Z��[V�[�S�RIsq%�I G��ױ�o[��&��'BԖ<��t'�z�tBT{$PZ-�X����'�M�:T��#CG��Fӡ���vEI�'���+���c+�`z���)�V>�}���K���&� ����������w�<[XC�Wj5��-g�����h|�s���kBn�6t��T�@�$�7�����҉�K�ye%��\J&!�m��ol�y	�4�R�&Śr�����"��9���H�a�aa�I�E���:ߵ�E��.WXEuU-����j��o��r���R�f �ħ�p�{7O�B�8�7�ÐŴ���e��v��ޕ��^O��\����f,����+˕X]��`�ki��T�q���mTu�U'�� ��Qʏ;`734�L#*bQ<�\BƗ�y8BA����S�� �  �� �t�8D��f�
�eW�6��n���"�Juʙ�K��'#Du��'����%�;9�o.�JE�B�5�&�j��U���dbb���T&�Y#0K����c3v�"�S+����͡�={KG
MB +�oDT��?�e~��	'1�����I��#�6.f�>��8$o�I�d
*"@�f�	�J�����I�b��).)�h���:@	K��mI�,i�!�~�f2ֵ��V��X���8�-�K�"�E����l��>�-�k^G �s��W3���A����E��/�f�dR����>�F�RL!%�_�J��VO'�q�m����S���k�͗N�X$�<��]����Ź*��Ku�K��&zx�n����j�DR��4/����\oTп���k&��H�6�#]%t$4�j�lBXuq�C���j>,	J����5
�q!��NE>>2�b2��d�pG-�2���N��W��[}KH�IҀ����'����x�g�#��AJ2n��l��R�[�2ze��X���)K�<hҿ\�TQ�7�|�v� ^C�PP��7gk>1�m3��N� D-t Jwc{����EA8�5n�rR�;�>�05���H�����i�eB�8���+�7?�߀��� etee�99��aփώ_6TT�EW�A�!����t�8?��C�gKS�h_<���f�;00�����"��6.�q;���Q����J�EvB?�֥�B7��s��op��U�o��ɸe7�&6���!������f���D��F��|�T�T��0�rv$����H0���4�en�c3���/:�,��'���'A3i��fmo}]�FS}���C��,t��61a��_F�9��M��N�YH�TBŦ��Y`�B%�;��`�S�F���?�%/�e��u�Am�����g�E
�d㒋T����e�h��ǳ�P�h2Z���Z�:��g��YL�(���Um��?o=z���%��      t   >   x�+/*�,*/����J/J�,J/�0+����\�`f*���Y�a%s�BX)�E� V� �g�      u      x�sw�L/*�rQ\1z\\\ 2��      v   �	  x��Y�r��=C_Q'ww�@a_|%�5�e���/%�DV�U ��?��#���cά@��$�=�j��-�|YL3�\�i�pfZ��f��`�����%��)#	#�;�m�ȳ��YV�k]�3�T$�
��$ͫ����fx���侾���ݯKu�4/Yf�Eo�����������ׯ���A¶,�7u����>�l�����Q�445W���ח�����!�O���.qB�jB����yv͋�3�ɚg\�|��CD�Ȍr8pǋy���WCC�Y¾!щ�F�eI��h�3�����O�x����`c��ۢt����-u�6��OӦOb��1���
e�YA&��y���+*%3?1�7���lrY���A�J�=����{}��hS�[��l>V�e�C�����q���|��In\/>ՉA�������tLK���H�0p������[�O���ȣոѠ�m*��]T�	h�X
�!�z(]�!Rf�j�e�ly$�Đk�2<���-�@���0�D�˅�-윀��Y�9�[IE�� Wy)�d�L�޲�+�j�̼���ҿA����.�`u�t`��)x�9�ۜ�>וx������wt�[h�@���Є�p���)�����_�G�LpP��B����Y�g�������Wˊ���[��-^�x1��l� ��'r����8Cm�	-S�.�v�������q>��َB+z�mm��=���>m�T�o��x�#dڮL �����J������;��� 5����B/r� ����(��A�X�"�vI�&AH����&�����ٔ)�Rj�m�C�� �BטAU�*x�4���E/ǌA8��0�Tdo�vŐ��';�l��1l�6��%W��ݯB'�0��5�,-���7�Ƕ���o�)�c���]v����������LA)�R��J>
�-�ٱ���oœ������cV�b�U�K��',花�/X��L�="p��(/_Y���#N #8�#"f^S�%���i�Q.�ݤ2�qa^��L���.�2�Ç|n���_e,��<e&,|T�{��CqFDeA��Ү�8R��3��	�������+[)�1���21t8}����?�V�m�5���cRr�"V�����\s�UC��*�cϵB�3VTI_�Y�֠h	\&&�ŏDE�x	�T���cV���I�,9(65�oh��֚�Z٨�[�X~����e)��I��X�0f�[n4�|H�vÅj�'�;���\L��r#P�@0ƪU@{hE�,�,_c����g��v@H�,E
�9�I�'�Xre���"�b7F����l��b6�^O.�f��q	��h���=d^J�&��v	f�=�ڶ�l��P���C�%\"��p���AJ9��XlR��A�S�ֳP�P���.Kf��/e��<��"uM�X��މ,�L�.��'�i*��������tj�Qon�T� ��G����.;��j���Paۡ��}�{��]o�~S��V��b�;��ͧQ���¤5��5i~�][V�Y>���'m9q��6���T<�PG4��<e�}��VSj�9?����]U\��]�Ŏ&��9����pө]^�`����ɰ&���s�з y��F�\'�g��.��~A��c��=�j\��z[>�#�T�$v[,XP��e�$4���t
��A&�J��)��Y�γD�X֮�V�v��� 
�^a$v��_ �|݋��ص�$�1@�c;'��L����	,�2>�b��.뉆i�uz���"ɗ�����^�{�?��v�!ĹgTX[�h.�k��͘1��X�4l�^P,�At�Lٿ�A�og��P�*_����b
�A?f�`�u$(�R�b\9�s�N�Dz��K��Û~��[^Ћ�ᄃU�N��֫���F*V�[%�&��fNrQ�������ػ�be�;hv��jo�l��[b���;�m��K�}5/0Ǵ�ǘ���F���o��۰K����~Ի�kǽ/;P�����xPx���;���"^T�aU�4�K1�߽�9�R*��ځkf-;0Ɛ9 T�oT*��f��#&g���_!I�Z5(�heh�v�.�s{)�O�NR�}/�=���pqy�3`HG�&��8�s���J*aM�MD��;�!D��޾uh���+P�Zi�o��#��������s�k�=�W�R�ٺ��=\��6�?������F(��C3�P���C'�q�N��
�܁��&�;h�������-#�4�#�8��3^]��c��tK��\YO7D{�o�Z�d����_3l~�w�g#�+&����ck�gЄ��5��a����{1��ކ��qdͣ�*�;�]Ȥ_JHk��~�r_�6�o�L���7����i��h<�����x1�܆��56�bU
s
��w�y�cuxP��4��������?���y      w   @   x�K/J�,(Jյ4760�50�,���J�����祁d �%@����+������=... _V$�      x   �  x�}�˒�0E��/NM�Ej�e6�1���vd����c���ҽ�%�.z7l~���{�ej�fm���}j֦o;��o��Z�˗�kY�k���sqY�~�#�]]�p��!\d�4�i���.~�	�6{O #@#���F&WY@#i��\���|=��odB�ND0��l�Ev"a'a'FU(ʖ������o���G�K�9��ܻ�_?�'�W˟���c���c��,z�&(~L�]_���-q��վ���q��)�Y	7��,��٩�x�Q��������1'��-�>����@�4�����,e2�ލ�$��Ź~u?51�hsW��Vؔ��$e|B6$e����c��"��I3/zc�0�IsE�{`Δ�@��dB�S*�#���U�U]h* F%)�M@�"�>�FRat�FTE��"@��!V���t1:N_A�ַ �T����$P��`��ڭ~�
���} 0~�A �/Z��΍��}`�\�۷�m�Y��      y     x������(E�y�����E���l����i���?1�gҽ� ��$p2�����=w���e��2��e��/���`+f�٘d��.���b�99��[31ْ�`�[��\F�l"�\ �s��=?�3��:A�0<O�?e±r�D4����Op������@�Eʇ�!]�셙_0�Ȑv3s�?wf�:3�ݍ���ň�Er!1�����!{��K��Q�3�2��&g�I�������gf@����L����ɎC$�:3��Hjy$�zcH�C����|f@�C�Ό�	�K�g$�3��I���FFR##�����Hjd$�.�ZI͊�.ER�"�K��=��C�����ג ����
�)�9EZ�"%�-)1n�)�-)�@��H�DC�©(�v-0>�p�VCN�j	�����m+��-1w�������soMWl��Ѧ#*bi��-�;8uBE��Sl����*b)��~��t>E�l�7=�!���~���Z�����ե�]L5�,j��*��2\+X�Z�~Q\	Z�*�
�bԸR��ŕ6<��JL&<��ZkZ�Z�sۉ�N\L$t%�oM�t��®1޹.�
�,����0Kt�טo�n ���V�0IA�SP��I
�Fa`�5���o(LrLw��K��u�����p��p�
P���h��(9��`��;f�rHg��[�8����ۃ�x�|�E�/�`@��tV�^,�(4h@'���ów��9x��������$o��t��M�`XlB�6�0-�g23����{Q ��S��=��n���!0�L��3�Df:fs�~��l(�ݮ�}��?��3���<�~�%6�A|;F�e�cŀ{
"����~fA��s��	������[g�*M˂*/V��-.�s���JDƟz����8�SB�Td��Ji�;9g�/Z�9!��L	8�������-����/�Z!:.�
��T�d�F.X�U�r-Th��/��@фg�d �����%�4:�K�r�3�%؇��k�7�����ěG���\.�7�&�f���a��&��%��@,�F��~o��?���	���8���8���8��q��ǯ�p��<�v���ao��jڥH�6z&B���0+�z�:�
_�OJ/�ҋ���)�hJ/�ҋ�x��-�̄�V4��0��l
�)�f�B�~�����]�<d$O?|��lw�/��a�)8���Ǘ�b ����\^J1>�Q4�{�`���`���`��|)�|�����b�      z   �   x�}�A
�0�ᵹKJK�w�&L�jS-��E���L����g���b��K�ph� ʹ>��o�
�Y}���j�������^Z�-���ߔ�ֲ�����G�NP:A���NP:�r�	�=Q�S9ۄʞXtb�nF'��*����duD�6� ���GDn#�)�:t�������T�e/�2��RΧ�Z�Gf����c
v���߮��䗩�Ǎ)�q�=NƘ�q��      {   a   x���	�0E���b�{��hn�!�&���Li���r�^������
S[:IN��M�[�2�2�5w��i	9�Q�B=LT�zq��* ��"T      |      x�3�L��;�2Dq��qqq 9�A      }   #  x���1n� E�����0��is�$ڐ�m�����()`

7�O��ɦ0��;�����S��Hv���_n�Ϟ�����^p��|ؑ����'�ǜm���dI%)N�=P ���P��N�H6��h�)�$�0� �� *����ɱA�� ��p�u�V�7f�j�<oa{�it1f����^�Q�m���ܜ���pdM~���ك9̍��/���6yx�:Sj�0���РKN���P(Lќ�ʥ
IQ�F�����$��\j$7濂]n�0@d[�v����)�      ~   �  x�]VK��6]�O1�Y)������{ұ'F�a @6�M[Bd�!E��7�un�Uzr�,��+��h�hêb�>�^1ϒ8#c�j-�ZՓ<�˳$���ך3�b�E�B:�^7���(!�qA>����,�Ϳ.V��UI�w�Ъ"3���N77��:#O���]��p���B��?EZ�Ku����S��M�aFG���_���Ds�nx�RR8=RLb2��h�>i����(njQ'qU��i�����8%cu~�۝x��Q�Oj7�h�������oJ�Z�2���5mu4?�ٟ߼��*�䪏:=(&6V\��f�33=�r��,K�YM�=l�����בG��������D����.ƲL����o'����m��I��nS/ˬ�ɳ4��VX�E+���D��#�䞙�-C�T���bg;Q��Gs����y�n`$�D�Q|v�4���&ul�� /����j,͑+�*d�l�)�"Z�WIF��[q"�S2E�71&9�߯PNu=#�R�Z ����.)�IJ��ث��X*�Ā������y���"Aw]U{����h�3W�	�	�Z�Tߊh�q$���^W)�4��Qp�E���1���2�㊌���qZ���s�bc�q	{&��q����~B!|�@A���Z}�e�}#� �	$}�N�\"�/e�>�}pP�^/.�����!N����9�R+Ӷؓ��:��}ID�ɩ�j�_¹&S��v��'�_13`)�Q�oWk����}+����:��'4X��L L���m @�}0���S�h�����[e�eFQ�9o-V.��0���$_��G'��\�L�0�sD�J�D�G���bѾE��Ĉ�V�����,��_��=��I�8\��ġ�Ï $����-)���Ƕ�@g��3a�h�z�LXWύ�d@�� Xf3i�8�ڎ�v8xP�%�	�؁�w���{z^���\j໡�d7G�:p5���8�f�ȏ�k����Y�Rp�bU�.�Y����dq��$j�(Ē +Jý�.�,Nɜ�G �B����dS��q����kd:�'N��Ir,Ksbk{��$�;��a����IY���������ۣeJ>)��"&?3ެ�4u��7@|���N�S�Q�� ����#�3N0Rd.�4Ζs
0̺a�C`<&?^+���1l��1� �0�(�k��;4�y8�++�\����0l��',��K�m����=&�v� �fk��I�̓&��~�@ �Z�u� ݱ������RTj9̰�}�5*Xhsj7��>�g��4/�ۦHZ����@W��o����o�9'�e�{��e�
9e���4EE���i��ֳ �$y�hc얓�B��X=�0lw��6��̽F�Ə�j`��$�Y����{�},`Ll7���W��>�V��V��wwww���%<         N  x��V�n,5]�|�wi2���սBB�H�#EN�3qp�}]�(aŖO`ǎ~���/�T�3ӹI�,2��U�*��C�6�Kjp��D�i����Ҧ�rtɪ���A{e��XHݖ��yUm���ڑ]**Iy��X��_?�:��uV�`�T��0ٹ<�I��>9]7�q�g2&CV��&���75�`{�x�9��2F�?�!#��~���g�n��e�A�O��E�1�Aؘ���d�64E=��U�5!^Ձ�ת�Ha����rMY�g,cji�����{5?D�M���X)��I&@�$�PXn"_c��\8;9SHoq�k��a�']�x�m1\b��ޤ��t]8=���>��V�d�@x](�kfd��5�i�3���E7��}�!�H�%(�
j���I�N�\����.S8��q�HԴGp;Ȃ/�=/���@H��� f��H4�a�1��eiz���	�	�\�H=f&���>�l2�����Ʀ�U����{��1!9������˱��#L.Ԟ�hS�zJy	 ��NU;�C�QKL�m��_�A��q�@�|����� ��m\/��Z��u�.�Y�<=��n�}�q���L/QN�r�\0�!�{#��b+DH��;e�z_R]�>� (�jU4+�fW� /H%(���0= d�qw��b��ƅ��	Ȅڌ��S-�|�Ӗ��
�eV	*���?��Z��#5<v\�-]FTw�g�f�tsㆰe�?�?B���G�и��;���J=ml}����9{�4�4��q��A��Â��Y}��t6G��f}�,F�}�$ۣo�o^8�B��{�7�^��J�9��<�j���=%�I<bP�Y4����+Y��V�t�y�M�dR�O��E��] �����~���y59�=L?�ޠ�Ȅ�<1, ��;b�@K�XX҄ �1�[~���:�÷^�+o��|9cp��W�@��K�>$��}�4����Z'�Vi��<�����,��1ɝ�mԀ=���3���ϛ0;98�|�.���3�}[��.��v�b2��}���fv�~ņ�&~qB�k�I�w'HϽ�G�fKWm�珜��G�v�Z,Ӳ.      �   �  x��UKn�0]K�஛�h��:�.G�fL�4�rH��\�@tY�C7�I���c;��,X���ͼy3f�� 9�]��.�8N��-�)��%�Y������8xZ�Dz����.i�|�\�i.ڎ���>�84Wt�����>�� ]�p�8���I)�ux@|պ�\�̀㰦dowI�Ѝ"��<�qH�y�!OI"s��8���a���9���9�BKث��'ʚhv�xr����Rc��䘜T��������P�(4e�8�[B�m��㐋J���Ė7�tޡ�C�޴�Kc=	$6BA���q�>9!���+��},��Aj<�������i͚V�߼m�����'�g�NtE�n�^�8NOY� X�y�&��������c�XP�6�4������Z�F������:�K��1��?�B�)�e�#X�O�Ď����4�0���yʔѯ����w?L���$��Ku�+� �ġ+�u���n�4T��:'Q�9����q�t�u��^��t�1�x%B(��V1!4?�5�W������2�8���jՅ���`�d�h���i�O�^�,>ϼe�{�`�-\ܨ�]�c�<s�����	���Z,*9��}Y9��K�`�>bmuع�n/B�F���{��9�e���-��eNa�YuvEY��t��K�Z⁂�_�d�ív�^�m����      �   
  x��Z�n�=�"/��@�MR�=>��1�00`̍���f
�)�5'����P�D����/"�֮���<0$��Te���ŋ,m�϶�ۦξ;<U��F�-��xx����Z�*�y�K\���0�\H{�7u�������4���6��/��*w�'��*>}�g�U�Ľ�Q���Z�u�&.S�ƫ���lu���-mn���]���TU������ced�w��^�����~��ޮT뚲�wb�j����?���d��~��xa}f�����Ǎ�����g=��1�m�� ��pN��5�kqKux
|[��kS��ZZG�7�#5%�6�x���q>e~���dNʬG������X΋F�OMx ���5���GN8[e��A��̲uv}Յ����~�Ɲ�.v �h��I�郇��kr�6�0F�Y2	I��M|L~S�.�6D�T9���6XMϼ8"�N�7����A�d��jN�ME�Ukj^n��*z��sQ�&�Kߔk�Fc�J��!F��.T�%g�pe��]�n��������?�RX��7)�).�)Qq�k���8��R�7��
�RM�T��uB�S���������4��6j��c�=_�l�RV�V(��yøɣ�ֹt�.lx�!�0M6��6�-ţ�FWM!��`�7��b��2 �	��N�l\��� yJ�E܏qg$����:2:�'+�I�G\J>n����pqZ�0�M�]t�7Hk��#b �%Pr��[�7CY���O�#����t0g��G!j6��ƿ~6Z�M"0? ӄ�<�����rxo(P�T(� Q8
`0�K�V�X����M�9j������u.�b���a1�����B �T¾.hO��{��eA�����9�H�]��˱+���<N�q��J[��ѿ�T����∂�.l�Rs�;��'i��̶q��#?�JLS{���R��{�{��%3��V�����{ˡ�2���ÿ��?���v�rGz�K�̪�~֍O�Y�7�Y��2R1�lɑ}YN)P�c���:
^i��Kߑeq!=t��5R�k�ڄ0^G�XPS:�6�}f��R:r���9Dˬ���=�L�Y�Rz7Q�0m���R������XH-���4R�3T�D�4�V����m�$K[��usu����^��P�ǺoQ}�Uh�#���}>�-�R�ՐU3�HTU�혘z �!;.�	���M��z��F�RZ3%�N�$I� O\\��h�O]k��1�?��8�]����DA���F ��e,�Q-P3Q�({�ҫzVbG�q�s���(�����yT���ҏ��k�g'%4sU��ٗ䖗�NI$$���뽞J�N�"�j��)2���*e����E̻��D�n�Ie�M�����~k%�����k�ϋ\(��Ϋc* �Ex7R�A����P2kB�e�e���l�դ̧A~I�10�lA�d�@�sp��f���C����6Z;a��p%& �}���>��Z���''�V&�-��q�}7l�%U���<$��ե��!8��	�����)s$I�n�)�]��!�UXKW[��}���6�XEj��tB������C�Yrk��~��[�=�z � |u�$�[w3嬛gh�����|<2���RR&dsq��OlC����ʖ�zS�u�4=�8W|��p����s�⦻)���Ĳ�F�R�r�g{�4��uo"�脉P	����3G4g���1���R�N����{gia�劰����7����y����]j"��.�nG�v4a�?Ti#��sG$������W�t�"��g�i��'�e����h�I!��֙�[xݣN������ɽ="�zL��%�6r W�[٦�DgG�{w_���8rG��W�}K�D�m���H�� �L$����Q�$g5r�ʏz�ˉ�Og40����s�xj1"��O\Sל�`�Y�%S}�j�$:'�z�o���d��_�\�����O���D��	rJ���4"/��W�G[��^�&�q�^�(���3�����Ys뮧���!T��IcXn-������+q�J����"꽻:M����[N���;�Ige�Ӱ��ݵϿ?z|�v��\�i9k�4w$���yp�E������D �Ί�}��W���Yc�?���^������X�5�/��sf,[zv��-��u�:��I���n'u��,��U�ӱ��ȯ{�<��?�R�;y�A\�B�N�����0㌇��;�&�����P�m*D�~�gX�^斕��[w�P�(�^>n�'���:u�A�&S��&%뫎�����
��AT�qל��m\���Z�۸c	�cNS��\_$����A����ק)Z3�<JA��=�Ѡ�L�q�����BN�0h{d������bE��с���Y�	���9�/!�o��ƴ�<	zr6>J�
��m'▟��yFՓ{j%c���VZJ�1�v�V�c`�қN�Ε�t�g����J;y�����{��LU�k:>2����I�Y��mM)���-����lr��������/i��      �   �  x�UV�n�8<7�"��f��Ǳ�u���F�%Í��,%�|�}�̏m55��GU��~TW+G��ە��|/��rd�U���wu����nt�ߏ�0 :t�g����q�q �`p̊�v��n7Nd1��L�7K-�hLV^�����A^{mT`��Ck�
�^�~(���m3���V��}-�����9ǈ�e��{e޴S͔���[ɤCüe���B�7�������cÒ���:=��˴ٽ��۱�:c"���;�6͇yp6�(���~�¸���ج76)����K��`�V��v�]^(���2��e���P����8㩙�M;�^V��z��Z��J�-�����������\"}�U�t�U�N(HT��{��_�v(9�����X�"��eGf��S�dh��?��*�h[wR�	}!��b�i�|)��	a����b�૿gܰa�=�/� �8Qé���.X"�tR�Ct	�J��3�t*%��okx)1���!\���t�l�Jg���Аtfc32�5 ᇬ�����W̄`ƀ�V�yWwX�)+��$��F��G3���R��VYGo��[�sG�\ �۷��;��G��`I#���)����8���-��>���3�c2��_�Z�C�g��ڗa��Gw�mP�����q���^K�����:�4Tc��UONsF�Qr�߻0EQ��^��<��vp�y3�������ᮮ��e^S��ݥ�)�c�_�N�er��Ï5��R���Xw���qV���,Kr%Z���t�#�]ì�`$�u�a�4& �Q��� �'`��y���T ��1W�����m;e��Q�wSk2 ��;�
� �@����$�q0+�`�r�i9{�,�`!�Q����x7�BfuvG�/��Bw�}�-�Y+ëTB)/*�@"�(��ej4?(�鏥v�,���+-""$
�zu���$fM�JE/~�+�N����r��S�ύY@R��)��C�(#�OB��-�0�h��}�+�^4L�\P���45w�D�W�j��vV3(����[�
`ޜ�a}A��E�ڽ\[�NN�G�^_��
��C<z}z����c_o�	$)�y�t5��6$i-�l�b�;�C ���5��] �-����rBk�Wv�S0��2=6лa'�+!GNٸ"/�S4XS�a�rzS�,m�=�d�8�R{ng�5~:0`�}�$A;|A[��M)���?k      �   7   x�s�t--�/�4�p�t+J�K.VHL�L�,,M�4�r�	ss��qqq ���      �      x��]͎�8r>�<��O7��")��FMWM{��w�6������L�*3��������ik>�mo[o�'qI��JI�Y�5ӽ3��EKT�dD0�`�M|�|�}��}F�T���ńm�&�};����WU������C+�K�"~� ����"˛K��'�W�m�Ο�+?��$#I8��IӶ���BAO���^��(�^����V�*���[��i���f41O)a)팆욷�ŧ����K�c���G����*���K�Y(&p1i�v�!��n���;;?}�G��$��$�eM�Ol۫������{"�/U�'�i���Ťi��S���	����T*_F"&�V��4m;zZ��sr=����B(��	\�Ӳڿ'y]�TF*�<��Ťi�E�y��X���
�V=�T9W�Jϕ�|�L��<3R��<��j�^9ު����Ͻ`�������Xy�o���;� �����no����,N\�*noV�7�۲�,���j]�94�^tf|�Z-�{r��ÇS}Y䕄ὸ,��/��D�y��~�?���{Ud�������������8 ��K��&+$l���T�F
�$��`��mag%.��u�\�u��`�0��4%����F��dz��@��ˢ��K=����r])���ΰ��|�d�*��T:�S���%�_�^�����Z�neVBv��m��S0(iBi%t2�ŵ�Z{x���*�y�B^�����C���զ'XkS=�P�,�	�lҴ��)���I ��W`d�q�M�bҴmz*+�X���v�-��֪��#�50>4��uUL=|ʓJ�dJ�����U�W�e���\�<��%��sO��kdx��b���Z�{��;'ꅧ�֟�\?�n�j��
�&�BY[z�b��������ͫw�ϼo�8���"�	������X�W��x�������T�����w��
_?�}}��Z�^�jE>��P2��g��Y�|�����'���ӷ/��GC7� ��/X�+�}W���m�nKu	t{�W����,�0y$ �u��~��7�ۛJN=u�6�qiI4�t���e@2�����4���k�E��D����
��5��F:�4
k��������v`�Mgԧ��pi��t{�\�Xge�X�r2�4��`f=	�S} ���;x���(�z_�F�#C�D��>B��,6�+��$'p1iچ��� ptE����8;xv� rI���]�����^��D)� >�ywm#�y��W�Cc�1���,HeZ}�62�=��}Qb�
�DK�k{��F:1����~�	~�Ngb,���L�R;�P��竏�B�(���O�?[�[&���삮<|��UYK���֫6�C��nM6V��SV�JV)x
Ko
ئ�Z��K��^D�������7n���_hx�0����8@\�`>lߍ�xu{S">����=!1����`��#���6�Hz�3aؒ�i�1��؂m;زe����r�D��� 1L\�@,��$��Ťi�Xƞ�K�	�n�����sќOs�^���þ��lm�Mg�EniB8��h7�Qn���B? �q��<�q�ض�Fn�x.�i�w�@�*����׆O_��_0�֨�u�%4�$�����}T~<��M��Q����p<����
y4���`�0�KEx���k�,��W�M`ºz�Ok�b={�z95�J`O%��DȞ/<���O�|-��P�8�Na4Ϟo閗�:����v����p �\�1�A^���L>;���Y]����`P42� bJ�`�s�\���/��u1��D��}��_�g)������W�r~�� ������8g.��
�g����xO��u���K���M5pǮ��'��9��M����]������UG���'q���ZB�W��PvB�'�DAr6����o?��p`8��*�������5�z8|G���/F�����J3r.Ѽ�H�m�|3U�Q�J_˴���syh;���ͬG
R��A(i,8��E���T�Iz���j�Z�
��P8�����0IB�ŭx(��CC9��T��&�2�%�&R�{JMH�H��[��&$1��>qR  	"Lf�g,O	��.Ԧm�#��/Vʽ߭�9d�7���)��:���I�z\w�@�.C��y�m�8�S�]Cl�A����h��'�l j���<�d�~\��p�mkʒz��y��C�G]������Š�5#縜p�y"�L��5r>�����Z���wn����v0ڋ�o��/���a�� �%�?Ae�j�mc4{�z���Z|ɘ���w�v��x}��ä*��z���?���~��+!��\ܡ��J{��s�ŐV�	Ηڵ��$��~k�6F��c�-�-`.�����&M�� D���n.�ﵺ���'��ؕ��L�t�K9zpC+��<���jT�=h�K�Ր\��%�k#�0^Ӫn��+�B�����X�����&�x�I(	C*;�$[��E�0*5�C��0�A�Y�Ӵ��LDF�0�����P�L�]�����cQ�%:6Z�=���ղ7>�&:���z�;����?��1��5��4�r��w+v�Ok|
�@?Qο��5��s�u(D��P~e�C J�	����t���?0�AO�q�fK�c��A2j�W�Je�a�u;�~���8�C�����v\|~8�����R&D������\���݋�4i1�3־��h��n����(Mx�j��n��rV��� T�b��碭�rF�?tq�Y�2��&"�v</�м�X��Ĵ^�s�,<�!W�YO.��qJVl�lE3	['�R�b��� ��v�4Gy�T@(�A�+�!EǕ���\ُ+����
Y%���SY�+M�u?W�C����8OƧ2�C��r������	�L����?�E�hH���b`�H�yH�ԎDu���+E��o����Ƈ<Y��y��ˆ��6����z޿��S�:��:�a��u�%; ���J A�\�bfW�*�S��������? �8�&�$yȢ4�v���y �N�	�koD�/��t�$GhQ�T��&��d׆O_�T����Gߴ̓�L->8&ȗ���rxy{S��\������o����\�﯊y'�f�]V�A1a�Ƙ5���7��`��4�xO_�w��9������Y[sJLi�»��c�� �������yv��{�B�Y���9IX�����h���w0 ae��dT'"�yW~٘�n�� ���-��lo2�)������k������Z���7��C���uw���������z�m1+���w+*�qE��Y��� �z�� � �}m��:���h��su ��g���r�SVM5��R���OWB��FI���C���Z��(	������}���Hh�R��{�	Ҫd
T�k�����K_�\DRgi�\�h���t9bk�\�`���F|��	{�Al> 蔐8u�kV���>E �U8`�*�"	��*U~��a�Ö�UvQb�h�B']z�=���C�Z#�O{-�)�r=��������A�Æ�S�,	�T�'��ᐠ�)�C*!$� &�*
�4�b\��<ZM�FD�\ ʵ:�kb�у�b"S !LYH�H���e!�m��cT��:*�ae�*�Ӡ\��lT]�}7j��̳ƌ#�X�<�3�\۸H<<��I8,��u��>C�7�(2"�L�Q
�8��|#�6����f~ĦӸ]jdi��m����XxL �֡ zlS@���k�_mЙP��'�w�u3v[/�e�2�ST���1��$����Ysyлzo<'�%��0��0�!Ź�4�������%\��,�@�n����B�_K	��}���&�~���m�aP��}cǉԫ��~��
���+Ē�t��e����Se�?t���LP��^�%MnpB�	�'��!��ݼ��hW�M���fa.��@���m�'w��p��C+��:�R�Y+1q�;��[�����;/ �
  � �[�	�b�t���u6għ��*�����-�?-{�#tf�lA����Iac�G�6`D㦲;^�ғ;+��ݕ��~�IǑ.��aO�����۳�$D}�u8����%6�_u�~�q��8pW<m����\i�r�	¹6�*m�xE+=�U���P�X��VbvT3S�՟�������x�;�n�4k
@Z���i	N��Q�<&	x��p4춲�D\�C5<��ۏv�g7�B�9��eE6m���H���[�ӥ�I���hH%G���v��a���a����!*���+bd���x�]E� !)���7�	(�cE�NQL+Mw���*�.	�a����	��%!�]U�]O��]�`N�3�߃UnE,�%љ�q�Ð�0<Ƚ ��t.ޡ��aȹ���~�>5�Ж�x�@'����12T��t��4sgR���c5m;&��[5c �^3�E9����$
��e�o������M��]��t�:�ktL��>j��0q>1e.�i�:� psd�}E>�LVKw�=�vMl�� >�H�{D�ޯ�x�ar֥�u�t.�,��P������)�-^��,P)�7�U@�?��Z�ꦆ)`OI{�-��,}��r�nr[�9�H�>������������N�C����H�%[/QFO��b4I�կ��%l�V�Z�`x�*Sc�ŲN��vp�'<ڜ�߻8�xDj2C-�|��/��.5�'69>̓��Dt(C�<��z�/�2C2�J��"B�RI�-ۥH{�ѽ�~rb��^a������(ו7�zsoS��=�(Ѫ�g�ԣ%�=�wi'Q��;E�' �$��cՒ%��i�Y���돋��X�B�@��<�n�壮��r��vA�nmggMm#O����ݴ���VN�@�A���F�?�e��w{#�v�`�N�;��l����x+�A��xW/M��I,yj���[�N�K� ��lт�C�&���bPwp�l�s�P�
��m{�E��q��:��w?m�[�$�q�a���ݍ�?~�4�sz�=R�24���*j�n�+?�r]��ȁ�]S܌�M��|���߽ǐ���ΰd0���WE^'=�>-��t��.�,�`b�lU��h����̞=h+޽�?�`x�FV�xn�گ5\�j�<==�,>a��i@}�7_h�Љ��l;�̉�Tq7ʨ��d�-S��'Cm���bsV����0�(��ɵYi�:7��׬�clE"���S�9�'�����o_S�J2ڼ��hK.�y��$�h��mTf�r�C&�;/W�u�������y ��u��������4m;e���$�������h�sb�*�ǒH��]l%e�FT���H�X.A�G��8;x��ʉ�fS�A�f�Ѵ��=��ϛ�%d.Ӏ��$��m�1t�`��1G��",�FÉl��Z~�;p��wy*������5@���o�7��f��n�"U)��VB�>
s'7���|�c,�V�`�_��X��C"�#�>f�E�w�8�W����z]1���SLB����,A�6{(�Ľ��h��v��N��$�2��ܞS��h����M�
���*R~�eSr�B|h�G����x�\D9	UGO�����SC��g���7�N��gqԚ~���=�����z�V����sɤJ��Uj�6�g�ִ�%��L�9���<���=��ڴ��7g�[��ܡ�G6[]��ۛʦ���m�N���oo6gg֑������,�i'7 �i�/��ʙ}��P�����/�1�l�e��᜻����/�Cco��Yi��SxW�;g8���OJ݀P���c@�{��F��!��~}�юR��Ms�%YG[uK�������8r�eu٪f2 �[��ӵskV��[�j���/�?���<�����5��+7��,%"J��6�S�5�������?JfF+�?D�EYr��V�L�)h.����~�ka�ᅺBc�dV�qQk]�������~��65߯#Dp���q߯smc�=���L��V�k4��޵Ig3���m��k&�0ZD�'���0ڵ����UѦ��}��f4�b���dpm��W�{y�����I��NA�)�mx�}g�����w*y�iY{A�md�?<���RI�dLy�����a(�6�1�	'i�y�b����N�W�M�zl�_� �~�w�{�NA��C��K�F�p�%Z�����e� �K�
IY��v��H����:a7��n�vQ�k9-��=|��J w���}vM5�'o�9_.Ь�&uᕛ[�	[u
B���.�R��S.�σ����D̏��$db�׷� B�\�X�@tGHH���la�_�d�[�
`V�[22�-$���F	�y�rj�
�I�4'JQk2d�rk&��cts:�$!<�L� p�t���<>�f�Ia��g�A�|��{�3l�Yh�PM��S˲���hs�����#�YD��4�gi8�5�Eܫ�� ́�>Zz*� d,�-}��>�n�y8����*y�� ��a��]��M>��A0�rm��xO�e0<�A�%6�S׶s��T�>9�le~��9G������1?~<�
S�H	�!��o?Z�As��/�S-y���H'�0Ϋ�� �0���xēa��dK$���S�w~�⫯��@K[a      �   W  x��VKr$']�NA�F����Q�|�Q�[oP-d
jhk�kx�����$~I}Zݲƛ��K^�| uWJ��	m�wʌ�/�e�c���t�M���I� �����z8�uXȜ�(}�2䭡����V�'1Xo�n�!����Ujj`n�d�$t�3�d�7W��[E�&"�>��
�j/�шd�kX���F�̲����J��$���J:��Ȍ��1[�]m�Uu���[Q�dd�A�_rS
�X�8m'�@����iJ�8'箂�����B�a�1���w��d!�*B�Uk4�0H��Dƫ:O��"�Myڐ̬������5,qq9[�n���$du6I�5�R�9(�v��Nl�;��AҦ�����Vݵ|(R�<mAw�a�~��D>�`�D�h��^�.���2���!h[i2y�@�*`�9���v�쁚����j0��2[y�l6�Rv���˃؂�@���-���v��]ǅ�Q@M��`T������ۉ�f�,��ͧ`E����4�aE�,�!ݽ{�6�:�l�=&uC��޳H���%`3Oq��҅����/ߥ��=���ǫG-F-~V�JY��� ����w$���fe�e��Pu���>�@{lՖP.t���-P�~T��F��T�"82���E�f�_�m��޶���'�����S�|��7_ee��^�~vb���<�����:Orcz��©3�~���<Z�c�'����|]E���U���>�fBA�Y�1�c�湴^�Ě�k] �`�	��p�g���֫%�+��g�\�)��j���.�yU�L=���%8:��:Y���;9��RY���8#�+��5�H�Q�ɎP���%N�T��9�'0���B�C,o�\�1����%�<��ϕ�х�<-�8�?����Rl�:�1(����PL�a`9�k�@�g ���ҩ�Ϊtr��n�����Q�/��|��_t�����	7���C������n����>|���M�0�F�.��,���!5����P��^Tj��	4dW$s�%$��fj���K���fB��٬���Y�_��廋��g��&      �   �  x��TK��0\˧�.����Þc�Q�N�[r�	ì�;����M8	�r��<2���QduWuwU��g?�є;MY�ӘqTBoؓ�G��M9�3����(�T6)oq<�[��FOq�t��$��6����G��Τ4�89�&O�.D&�.��ʅ�i2���3X���Z���Z'�*^�)=�[����v��ҙ�x.�����y���2�s\l�wK^�v��C�tl[����!��lC9�Ռv����rm�%��}�I
k��+B�=9�P�*%�;S�|�[%��{%�d2��\TJJ�V$�
>��7�J��~��#��ό��A�e��#K������z������\6E0;<g7����F�I�e�CY1���=�"#�=-g�D�z�l����̛yzs�n���h8���tgi@k����j�iզlo��>�kn�3��M�S0i�{�=ӿ��~eA&�E�#�v�%����������v�XE%/V�r �Gs�) �Z��<�Cc��)�'��Mq�r�G3Te"�0�Bκ�4�:Z��I*�`?�=~~�B���Yʾ ��!��d:	ٲ��X�t� �$�,��PL7E�~�bO�`��X����Q�,Ao�3d*I�7�ӭ�O4Ss�wƂ\k���bU-����"�5⮛u]OӸe!xv���b������y�cs!,���@#�ڠV�kX��E �y
��m�4 ���      �   6  x��W�r�8�V�BwMg�$�_
#���]�f�LopZ��5�N�fo����O6�0�!;��%�����_��,�#((��j�U���ͼ\�I�\T�/k,7�+4���텿�Ϩ�̿�8)�?����²�^6X���
���ǌ1�O���t�4��3.��e��PO>�B����*x	�Y8�YG�2��{4R�p�~*���y�Z��/���jU�7M����\_���{$�Q�7b�Fw1<<��y��PH)���!�S.��P�8w"�Dp��C���65m����Px
HS���"K��W�?7�?�S��b�A��z|ZV�R�d
�M(��B��ն�S�Or%$2�M��\�y*^"r)#�&�wD��ٰ�4F�*��pڲx���X�Bs��i��n�dLn�0}�p��	Ӥ�7M���P�2�y��M[����t�t5g-�� ��L����=@�0�43�߼�dQJ]�s$n�Y���-8��8�p)r�����M�}*���ۦ~\+�`����?���Y?V�˱�{���mq3�����0��fw�q�&�c���&������s)EB�0��j�+���y��k��]gt	l��G��&�b^��kJ�N��,c�j fqxB���R�68k�M���q�Q&Z�[� �;��bP]�>T��R����l�9��hDe�P7�������|v^ň�Q��+��egG����v��Y�A�]�ߊfjHq��<hmE7�5;E6c��m��OǱ��Q�c�_;ώ:�}�8�z&�{�N�(��[�ܴ-��4T��_=�]�w(�V���2�{��zn�wm�(��.9�/Ւ4=��zH �1F yx�ٙeR�:Mv�e�x��ȇ�6��U���N�Y��[�;:y|vT�Yd��ǰ@)4Vg�����a��qQ<h*�.x�Kg�bډ��ACi$�mgm�)�r�u���s5��"��F�:�Vϖ؏m09�dA.Л���:��'�y��g��M1�C�]�����7��[��!f�L�PR��7�A�[=?�poK����&�0���A���_:3�]��6�#bk�A�A�	A�"���u.���eی7%M��K,�����_�Ǫ��;^�`����8E&��
���2��v9l|K9�@=D�����b��pg�����Z��Ø��A�PD}��5�=J���\?��ZV��h�o�u؋��)q�ZT�6
vY���ҕ��r)Ӂʣ1RIV�K����;�|_�0H����[�Z�]E���f{rh6�e$n�eB��q<��n�距;W�~��%�!�X�4��@�̩qǂ�p-)����^��5�j�j�ػm��j��(q���_�j�Tk�����`�c�I4ӓ���`r�@݌X?/�w,�̂Z�����CKD7ZZ��&�,L�X��J��Ux#ȸ��x�����3m�wJ���gzZp8r��}ˋ�Gx���dh5t4�A #��:��zr|Z�b����_8C�-K��IL�}�2�<��x��2��z��/..���=�      �   T	  x���Ͳۨ���)����� !$-ul�D�l�l�N�f���<��� �l�T�����|4M���{/c����)��sʚ=�{^�_����Ʃ=}���'��_×_I�r������A�����l�����2�g�0�FNX�R^������6>%̚��"��Cd��=mVw��;ªK6	���c��� �y�M}���^�PQ�5�Ŭ��M�r�~���0�?����v�t����C���{{��a�ۡ�00j��e���f����@�E������p-�t.-�	�l�\71V�x�:,R���ثeG_��j���(X%4�7���f~{��J��]v������;��~�]�o���nw�Ow�07�i�m`/���W�^�A���k�T�/nDM	҆�d�W��F��oo�(�b�{Y#J�X��O�'l#$�]^���s#T�Ŧ��FP����=u����F������4���n#��aǏn2�� �3������Bw�$���GP�T��K*j=�im�g����Rԉ�p�]�SߝN��s���:����WF� 9�W<��T@%_��r��1�54r Oq�\C�&�.Z���C��Ч��E�㾨��\�g���)}���0�,�o�E�X�*I��@�y%��\����]�/�ZF� 	[c�7���q'2,�WO��D�ˎ��(��}#ˎ���b���#�Y(L��*�R3F>�BQl�d�����<��̪i�T%+J37��V;J�XP�X�Q!4����ddgw��L�+�fv�Ue&d�F�]�X0�E)k�>�9?d��c�����~j�$�1!�ĭǥ&�Q�Mo�"��uоN�o���{&u+�!xC�H�<	 {��[L�X���< Z� H��+����55�S�%d>S��᚜U�����%R�+��cN0iY�ݏWz�P^5.�,��Rҝ���?n�՜�?��x;��@cO���e��Z�9;e6U^\J�??N��7��t����ۓ
v	T�̔Wʢd�w}啀*�H�ž�ׁ�i���!�P!�+y��}ɓ�%F����H�t�E���/AZ%��|��f�$�������R�ީ��uO�3�����J�d>�F���\(s������O��Ed!EVٌ�ekgo����(i|_�ʅ"ae���R��Ke�U���ӥ2۪̒K'V���ʟ�>WF�-T�0YvQ�԰� ����Z�����*�}o���׎@�1&������nUǁ���H�S�W1%�2�H��$)T�f�R�qt!�B
U�,4�ԩO�(�qq��o�����f�7P`���Íd�K��>,��
��V��`by=!ju�Z��D��l�)�����I��vW�	�r�t9K��K�qg��J��[D�,+]l�.��2������Wt>��x-�K�����P\��
��L')���.�
�d��w���X.�m2yWd���y���0��fao�2P���\Pv��� ����" �I�]� �.Ρy@:��9 �̢U���ޑl�1�y@xO� �tn���,�p$=6�V.�a_?���yM����]�G]C�n�qgv��[����^[�l]�m)�N6�Ž-p��T��j��uѥ���J��fMûSw����硥v}R�Կ�j�c�dT�r�~N����Ƅ ��fY2�`�G�j*�L@^d�%ʪ�v;u?��pHKH��z.��1�KE���-��XX��3�"���K������#O���w�����*�|�nR�rs�{VgvuX�솛ӶW1�{�k��_g����,T`���U
�|�ˠH+:&.�:aX,f�cP�~M��=
M\�Y���R� ���0#�(�ӅR2}������<C�{cD��u/�*�"W�F�W؇�f���Hg���_� '�+�:�5ꬉ<����$�Q�^=} ����I��KB���3����z�dԇn�1�N�p�B��� ��Zck!�5U�@��M�C� a���8g(%�Q-��|I�ަq��v9�_	��i#��񬖜7U�����/���|�N��2��7�9����A�)Bx崁^?'��|��ë�$A�#��2@�P�3-��]+��6>(Մ�G�����T�d�N����@{m��H7LE���@�E��\�k{ڙw#s�ƕ����9m����m0�0����?~�E��n�12����Q<�;��wٜ�]&#��4�<���T옛�QJ�6�����\/^+����,��O�tZ�&�})���'��9��B'(D/�����Xz�Bi�V;�>@��B��7I 3�&���6uoM����_s�W��Âh�P_.��e"��Iu]*��[#�@���˗/��D�      �   �  x��SA��0<˯ୗ�?��m���Ht�@�����1�(�>���O�R^{i��"93Izӡ���դb-��t8����v	�[p$2O�d�T뾣��S�3n�v$�q�p��� �h��~��3����Eҽ<<G�Q���\��Ȁ���1�,��hА���Q��TT_ \/?��L��
�~�W��Z>��=���Y��.��Ѡ�'�Y��^(A����ھ�Xs�Q�#��$0��c��^�bՖ�)U�E#��.j̀遶�7���C�4O�ǖ>o�=������+L��X e�%���su�z���Uc�Ty��ia�'�Pj!vE��q��+�7�:Vj�^�Lb4j5zS�'<)��Y�zZ��eʽ���9z���3�@O����䟠ֻP�j��zj����?��僬�(>�S��{�_��bk��ڦi~���      �      x��=�n�Hv��W�"	h)nY��M�4/,��]��P"�[e�f�#c1@^�	y�ێ�y�@�/ɹT�Ul��m{'�� �FR�U�N��M�L�o���.�D-U��)~i���_5�R��;2E*��@$IY�q��U]V���k��%�B��쓑���
�$�����,b�Ɖ�q%j�?>r6.#\p�� !����b���,T�����L�C=�Ȝ���ȕ��D۔�j��bYlT]���6"������Q>���}9��~��~�R���1|ɥ����(s�۫�@ؗdF�����k����Y�������V���J&����s��J�y��ߧR'�����m~W���1�h\�u#�&v�,
��uë������q
�024�.�W��F���Y����_����B�[��B*�C���W�P�MK@����Q*^�]g���UY���u[�醏�Y���c7T��u���]�] `W�tW�h h?��!�,b6���c��|_��SK�[���"bzT�$�h���P���;IԐ!������O���_9	�2��2���J%��h0���o��h�W��	be9)��0��L�^��y����($>4?5-�C�m�'U�|>S�$���~/���̡�Tf0~;&l.����>�~,����m�_���5t��H��"m�3 p�|.x�$~��#4p��R�e|se(x[%����1�S�ں�\{�w R.���_"����$��Vj`�,���G}�N�����½ޞ��F^8 Qgm�5�$zd�AU覦�j�T���w�������$iaa��9ǮW\څh�Qc+�)n@BуxUK�y[׊#����8�%G��y�7/������p�u��f��6gp�8+[qR���)0�\���I��ICL*v0�L�F\���k�����\���\��R��R ��:����_y̨��O���������X'yT3.��E�OB�<�]{�-��-/��,��N0�º?&A���,t�5�c�b��Ā����S>��i ��z�RJC�����pA�m
u�z��^��6]���:�Ԫ^��z�k���<�Z�$Z>6�ɱ�%���Fyt�_��L���C�r��(������-q܀��`*4��V��$~EEn'A6��ZV���+�NGr��ÈLMK��,�h����4L~b7��c�>�w�6G?f�T�j�������8�q�U�J�6t�(�X��z
�XdD(�8\��v��*z2� t;�3w���������.�M�<z2a�t���&b�H�]��<��/�+�E���J�U�$$5p+1c�}�(��p�Ræ.9���G+O���R	��5��:���[�%�v5Kx����Ex/1k����eP�HR,��HnD�6J"��t����������Ǐ���Ǖ6�x��Q�Y������ ���������3��V{�	A�h4�X���t�,Ae���L٥�Ϣ�~R��T���	�e�Vc)�+�a�V�}uʕ���L��`��f�����*~��e��?�r\�ï&cT���B|���մ�K��k�hרX��.��
�k����&�=����-�s͵آ����mĤ�R�NՃ-R^�-�Ƙ��خ���$
.�"^ jmdrS�Y�V�a|��Le������$Ph�Zyxhӵy�8G�����^Y=B�=-��q/��v�?4����Cw��fl��b/&rix���k�{9f=���>	�%�A�n�\[�& �lD{K{.�W�QR�FmM��̺VF�+�N�hM�N�>)��vׂe��\;R�ǆ��
�������E�m�ߑ�3�c`@���0�ߜ<[/�nSi�t��	l�<��਍��<�	\Mp�G�p�����&뉼�� \��=��ɇ":{���F��߲��M[�E���O��~���)�2[���V4��V���X�̕[�_	1�H��~����w婦6�r��5>���� �k�O-:�o�c��׬㪽��� (�K�I��ϼ^�����?|^0�ߺ���I���Aoo�����opt6i���,�;��������ֽ��E1��I��!���4��O-H=[�Go(�2�-��,�'x�L��T&���q�����PF��VY���8��=���-��8E!@�66&;�s���vB,z:m�08����u,��XBy��I�:��q�;S�X��tVk %��N��N2�f�#9���H�q%Qs:�:�$�E���U�"mA*�	}�1�r=��1��JOL�}�sz
,n��1�,��@��	�Q�����B&h��>x}�7G�A]j�2�����_f�,l:J���X@t�=��h���t�6lj-�B�-�X*$���B���p�,Lw���$SO���]�{���������f�ߵ�TE�wu��[���}xvժ� �U�f�z��A
�{B8��
+�k�۔�Z;M�b�m\Ձ�u�����_^]�?�v���y�x�T'�ۤ�؋��}
��X�m}�΁�I�,@�,���^�9���akX������+�E��7>0/����j��4y���/����4wz �	9�N�i]��*�.p���E�nI��;�D��xMvOG�Ds��ct��f-do��T z���������>R,8�^�P"q!����Zq�� )CM��@�ƕ2����	
ݙ�1�*Xþ��Y������V�z� [�=�H�����_)@|b�Z<�P�$�{-��LWJ'�9�טl���+�r ���"G�1�_]\�g��2�e���,�H#Nlrb� ��)���?���0Rs��3��]K��Д��z4�ZQHAU(+ I��0�����=!o��Q,�+_��M'k�v$HM�=����9�('<�9�`/�A/�i)�S����t��.��yoJf,n�P���S�
���"�x��ú����FE�v����H ]w-��G���jb�l2xh�8,���a}�W����My���U>�2������,2�
� ���x����ҙZ�����BDyQF����*���l�n4!-�c`xG���� �5��?,��U&�^j��D���&�F[�X�^�,/�w"Y|%6e-z�y��C��	^�����*-�HmJ�/,ڐ�e�I=vWɮ��=��X.'<������Igq������5���>\�>פw]+���ww�j�J����uw���m������|��~)�"g6`=\�>�v]�Uﶰ�u9�1����V��`K0�V�Rą,��q�㷞u�
a�h#�G_lg첾�,��N�(�14Wq�2e�9���D����rpZFZR��K����n~�o1���٥w��5�V=�:Y�USN�y}Uf�v�@a1%;��_���d�`��;@��$v�|,m0�q �~E�ρ�K�X\��Aft�d�s�g����5%�Ԇ���� �8Q.6ᢈ�6���/i�b�� Ә��H��I(艤��I?�kr�}�A�~�w�kW�ٺj^�덜��+ "� �����цb,�"��^�8���6������tn#`i;a�ѫ����U�Q���*���u�'\��=%(#j���"^n����� 8�fZ^��]���JU'^�Y �����K�7i��GQ���0FD����opn����* ������»��q��'�/H�c�T�F�� XK9EK`�5��Yq��ᮓ�5��5�*��r=�3-�ڪ���B��b���+������v�T��4}���'��'q��dу����n���a��g�u�N��7շlE�P���hsdPS��*�t��C�:�ڦ��?�$���n��F�!��ݲ�&�a/�������b��Y��I���h�s�2�͋1E;���\h_�	v(jE8�ȅcP� y�ǨL�pN H  A�̕��G�u@�[]ͯ���>@z�b;s�-���6v>��
{
knn��H��L�rD���9J�E�91�0�$%\5��M:{���g�6X
z��˛웖r����(OcTZj�͗.w�z���E�-��X��7z@2<�>�5��|��`4#S$w+���Q�Y�h1���Jc�����s$9�4� ����O(@�d�<K���$�]ȌX�L�)y�9��0�7��<Åȇ7��l�;Mv���[����I�1+����x-.�'��|E����ћ޴N�,��$$S��sd�4���KT��(��1�Z�L��@
S��;-@E�c�:'vr��7��6.�]PÔC}�딣���HX���d�j�f��O��@���
w-+��:�6d�㭒-v�Q�	���z���u�b/���v�Q<NZq�c]si�S�ѕ\b]��ߠ�ª��ג��ʋ�����xޝqK��婍�#�-�p�� � ����eg|�q���0#���fĪ�ڎ�mM�����[��%�p!�L�ZbC���}��h�gO!��C��j��9P�^��c�yS*i�*q�����F��,�[Y�rM7�At�@\�P�!78�߬�8��}huK_�OHԒ�u��D;q�YY�2�q?���N6,�I$��I�b��dv���rՀ�aƕd�12�n�1�S����<�b+���;�/���aT~ʱ6��ܻ~���Pe����t�����-
�Խ�;�y���I����4�����aA���-�_�$�v���O� [D,N�K����r�v��tzp2b��`~J�S`��o��$a�f��^b:ʾ��\�J��b)���kEa ,�tY���%W�2�A.O���2B�{�"���?"2�`�ӟKǤ@��&��m��i/���B��W�Q��w�b-�p�h��q.nU��^(�#:��4'yS��o��k����;��s��Łcՠ�͍��P&������g��3�f����f��� ���7hfOqE����eM��(P���9�Xi:mp�N���[�Ӂ��LY���Ȕ}
�ky�g� �f�t����Ip��n��SN&�E�n�������!&�p,�#��A9�Oq�`8w	�_ԚSu�k?��@�F�,�º]%'&s�f{3=�R�"� ,۩`ns$�m���ē8:�1�)!=0w�gX[�7Cb�v��=�ƅ���#�
�� �9�Y�uD`.�V�KkAL��2�J;�����D���!���k1�#���Gd<�|58���tYu1�m�� �4b�Ze$��O��3؞t�7�m��r����pW%@���-�$C:�u����:��Pu��ͺ��g׿}_���D?����^8]˦a�\���fo|;w�tt'Ȁ���=ξj�)AF�c+m��x�f�Bl�"Ҷj���"j��0:{���10k��EiO[�r�qT�_2�5u�C��d��,�<����'Ms��M|D�(�;�D*rk�7����Zj5
s��)M��%	����q�=b:�|!�-U*�@����8'G�1��6zm���H�� Z�@�dJ�?������pF������Q�sU8�/��_MX�|�v/�s[��{lp�����>��%Ҷ��F�I���i��F�ڋ�`d��]�v�;Mt��|��Gv#�������ʴ�8�ŷ1\t�%�ƜD1#-5�������4�FB/bW�;��ާ�nD��)<֏T{�L��r���\�i��k?u`���'�)��(����e����Z�k0���m���$�i���W�\*� �����1r��W�a����ʝ�g�� �UZ�O��f�܇��u�� r<���M���`AiY����Ƞ����ˏ?u@ӏߪ���k����+Ȅ�{��	,t�W�q�;H���h���J�h0�uO,Fx��W����&�طZ?KQ���8� ������h^#����%��f(�rxy�û�GN2�hz����F�wL��6l'�����b��t:��w�2-T���wc���2�+��n�-���<�}�#m�aB���>=pG'����Ӳ��f&���L:����ʶ$0�8V��.�+�
�(��K�����σ'Es���֡�7�Ή�i}��r��e�9Ǯ~CS���m��ثu��M�~z�n�22	|gm_a۱����L��&�����	N�����*�������v���"���d�eּ��,���a!&��jm���$�F2�98x�\$<�rS�L{6_1��[����r���dtK�a�4-���Nd�>�����1碒�m�ӷ3�L�b<,Bޯ�9X��3�`几4�����{Y��A()+\���~\�2<�%U�>�>�r��s���D,c1��
��||�U,p&�|f��92yGS��GN���Y`�Дn�HX��-y?�����h��`��	�(s�A>¢�`�n����L�h��fG�h��̖k�b����q�>U�֌��ƫ4%]d�<�m:�ʍ�)q9x2arr����,cO��ۗ���vV��5|C�#W|Z,T��H"��L��e��|ڶ�wNc�T1�0���
޽Xġ8��~g#����#S��P������[ h�4���z�d�:tX�nu)����^L��K\���n�l!0��~)�����!��'gK�`��bbed%��qNa�X�b^��V!FI�wZ��-��V~�;z�sn��s�y��M��_6���1�,��A̕��ұ��/`E���_N�;�x�ʕ���]c(/�jel���u�����ۙ9��Z�n����D8��'��.bL*Q�й��tF11YI�)�)�~\ŭ�]3̙h���8�o��p�=~��j�|t��FْvN![�k���}��X:�����G���X��d7ON�}���?��جU?t;8Y�,l��������ێ��v�"�Ǵ��!˞|�Y?��f6O�:��W[�h��,!*=�QfN�D7��G���&=pb��|AOn=�hg�ku�3��q�9g.�n����c\��9���{Qh��:yjU1̏^z+�k��\��h[D��K�_��&�Q�I�4�p��ѣ�ۧX�      �   �  x�M��r� ���٪L�o��,)��y�E@���U��� �Ds������NN��>�W��O���f���i�T�>զ�>��|�M�j�W|��O��Sm��>�O��v�v�v�v�"}��H_�/�}��ާƯ��=�|�;Tء�v�7c��zܪ|��'cOƞ�=�]v��^���,�f��B�9��&i���B��ii���AS���U�[���]Y+�r�)��$�U��	*a�?�}1��}Gɏ؏A��>w�4���%u��>�O���G�N8Ճ���_=��[W�Ҭ4�Bg^�z�k6�W6�$Gj$�Z���&e�rQ$=H��H�V<�$�Bi�C�PùUj�Z��bb}��$֗.�Kb��p���
�F�Q`� $�\%�<[[[[[�ZE}��ٝ5c"�y2���+"snX�0w��F�0%qZ$D� ��ԬA�-k����!��$�q�u���r*WN�V�^��l��dX��Ӝս�{S��-�噟vtb�ճ�^�z�'�$���.�����9-��k�W��i"�F�"��J�|J��N�ˠW�w���vĶ}�'��<|�e5�	W/���J��C���ӧ9�>4ǤFMsL��F_a4�$_@B_ϱv�s`���s�4�
��L _@B��g�9&5j�cR�4�
�m����lA���M��Pf�|�ۮ���|y.���8�<��>�*J�Z'����׶m� �*�       �   q  x�M��n�0��ɧ��7}�N� �#X��a%%�I�,�۞~t��� �$u�ý�{zES}C�k��:E^�������6Q8+G!3���JV]���ևcu,���¦��姪�hz��с���Z��ksl��p��f>�:{��%ł�u�ѴF��w�\V��=Zm�ҍxz�1��oZf����r�^zѵȿ���[pL8{|�;xT��xյ;��ӢF>�5T�@E�╡@�Z����w#I��W
==�N�J��*�P�&���-ԉ_�;�J:�X��X���r���j�Jg�6T~��Bf�3C�o��2vMW��徣������&�h��#�b�\d�8l�A�˟Z�U,2��#W�2�o��X�o      �   9   x�+)��,)��M-��9pvj1Wnj'��s�3����8��R�@%1z\\\ Z?}      �   �  x��W�n�8>�O�[XҒI�ڴq$ޢ�"�
�fl�ʒ�t�O��������ǎ��?H� �"%����oF3�
��N���g����
[����.�i&c�m�&�,�4�N������iRD�N�0���Y��_d�A<�~_i�U3b�͈\:�ic����G��_�X�v��x��/#&E�c��< V��ey0��$�:�Wy�)�U^� �~�8���ƌ���!ܸ����Q��Ǖ/e�W[�=��� ���D=�D�ȭ!�.�X�P����?8~��:/����MM"�`I�n��}�p��\h|%��`��:˴�߅y����Y�� ��=����Q�8��
��C�YQ�^t��:�20e�Q;f�ly����0�-�4�T���yu'9��i����D�O�8�h#f��DO���4��Tò:e.o��DA'��G&a	��#�=�$x�2�.#�#Y�<O�7���E9��:p�KЇ�� �^����ţ�C|��=�V�eSF40O���)>dZ'?�����#9��@��ϸr ��DHAE� G�e���� �JϏ�B�4ym4�y���w2�'$��O�xX�N�Q�0!?@��0�µ�V!�W3|���[����������lxP'kp����(�|�s9m���do֎�����t�[���:wVl��l�eM� �\�qqw˼-Tq���2<0Qŕz]��mʪ?=�e�������W�}Q��N��)wSp�̱�N�3V��ؑ�ߩ��mZa��(�ª� 8�?MP�/Ɣ��Z��''0�b�4@�.�hFQ��Y9�����"�v�d��JR�i*�͒��ک�˛y�/f�����sd�.Iyw{Y�TU����A�a4N�)��'�q����!ƙ�8���c���
r�qv�q�@�[Ѯ�y��6���%�"�:�U��<zF�i�V�:������~�6uu?a���]�F��%�TZ�Kv�؅�l��@J�>�ݣ[b�Y̲�P�;�^�O�1      �      x�K�H,JO�M�+�,����� =�N      �   �  x����n� ���O��*�Nv��"6i���ڷ/�ި�Ғ��������:�x}�����>���	�"�g�g�o/�_�`�w�$�q�\�}���Z�)������T�v���ïb�٭�B�^�I�nsȏ9ɸ�vNQNڴ�����
;�)�l�1���؄���j;�~�c>>BS��Q���W뾏Y%k�����rȍrgj��SO�˓Ҍ�:) j7���7 �5��tv��S�9��!�췘�����!Y7-cp���0����a�����A7Uw��K�G_3��D@R���|!T�)~�uuw�P����28F����ɢ�ѷ�Hq��:��p}�m*��^9���f�8��Q�G�>U&�P�T!�"ʤ������z�q���S^bm�rK���0��������f@{�O?��r�˽y�      �      x�3�4������ V      �   {   x�M�K�0E���bN�o/L�b�T��4dO]�l�P�*3��̘��F"�x0)<˒�:8��nv��S�L�Ϙ��7\~�V�ꎮС|6�0�+����G�1�-����R�£,�����f8y      �     x��QKN�0];��X�@C�MS�R�E�f #1���T�%��9|1lwAE�`93��}���S�����Q2�E�ل�~U���0m�I�g(�U#V&��8N��T.���Q��JeA�o Wn��h���7Z��/ƻ�iEc�S��$7h-yc	����uGi�5���>��L�(����cp�&�;�u�Ub��2W4����"h�񾘝-���oL�I�����,�?��xKw�?�S���_XX�\�)h:�Sk��!�q�|^�<X3�C�\�P�?v]��﫪��!�q      �   W   x�+.-H-���\�)��y��`҈+5%�$����p'�a̕��f�@i�Լ��Ԃ���TNWӔ+%5-������J0m����� f�%�      �   0   x�KM��<�29��3/���(1��,1��3SR9�K��S���b���� Vi      �   h   x�ʱ�0��ޯps�D�!��TFH_��
�g>�pk���Q�$IК��%*���EdB�=?\K�׽���hgMh��\���?w������n��?H�Yk\      �   X  x�U�MN�0��3�ȎU��l+ZJ����X�U"�vq�J�ܣ�� c*!�������8,�il����buəF&`iBl]��,,�I�FV�|�1Zx{!�`2&[��Z�`}G��E�>�kZ�5��V���9�Yc��d�����Z�4�h�n���Z�*��u�O�����p�6kn&_)\�dZc�`�C?n�	c
��E��쮏�(U%�,�i�i�q�\�k�.5Ѧ��:J�Ld�W�
���	������pvW��lͅDQ�ԧ����9�n>l>�8�F"���9ߔ�\G~��L(ܛ�����f(�i��`�W�]���*R�$}���bN�K&�� ��m      �   �  x�m�=n�@�k�ӥ	p���6Yp�n�#Z"2?6gf��Fjr	],�,e�@ �A�H�7�T�ilU��e�)��zr�Ă���tz�J!�I��E{�&��5׏��$e&�����x*��({��+?���jND�t�ٓ0�en�;`�������`3'���>C�sP�_��$�)www_��Bbȕe��`��\��%Z�J�ږ�\���>ُ�&s7aU�E�-��V�s���U�6�N�|1m���u�2W�ʯ�>�4-�S+de�_�h��\5�ڧ~���RתV�evT֜�������C��(��(y���\(�0,���9ב$Zq���*��\V�����*�ʹ��b��z8��c�t=}�H<��|�`��2�(ƛ�K�	�Z��#���bs���\���L���5�L��o
�@`��?l�7NV��v�f�Υb��V�D����f01W��4��W���>l?[�t��/R�      �   �   x�E�A�0D���a8˄4"MP�@��t�*��/˶�5�6h-Zo�Z��O�B�{z@�l�`u�`l�Apz]�y�`I~��=�
���U�!��\�����V�6�B��y���y�۞�r����m���Tb���<�?����Zx>�� Zl      �     x��U;r�0��S���$�xr�t��L�f	�$F ��P>MJ��e�N<��qI���X<@`\ǀ��;v��ՐF���VŨ7z泥
بY�>FP�;m�Fe�`Q���z�(�b���"�m�TR ��(�ZlI�O,C�z�8���u�Y���S�6$��!�(ɫ��Y�3�j�H�D�Rn���� Cf�c�K>�^~��"Y��w�s��u��'ŧc���C���
��O~}ÿ||�k������m�-���2�{IeZ�G-�d�,?kx�c�������Hz�2�IS��"h��(�#��E��0.���ɽRq�z6
b�+��9�I�e(��ؓ��H�AC�NS����Z?=^똨Ni'!�Hs[�ҥu�Q��h����nD�켏�w2��./��i�U^��GD�pE=�KOy�At��y�������~^u�}�UX7�iC��{x�'LAo��uu:?h��Q��)�N��B��ӻ����O��Z	JY�UIg��m�},jfљ�-��99����z��B�fd��x����"��S�>���O��	+Ze4�6J˧T��}��e:7laV=ؖ�0�E1X���9�9��Y������enA C0��qi�Rtx��� �Ħ�N#$�@1�����1I��Lh5�_p&�����YIy�:�C�����_�/3~e�5���Y�����.5,�rJ1޺玉�!E�a��&�|�-wX�<X����RL�z���4,�c7�d��������F�{m�PF���wo������      �   �  x��V͎5>���7@"��&K�!n��H���6�;.;;����c��&<	_��n�=∴s�43���k�v\L����ikr���ّ��O����.��t��O�_�U��_?����0~��{�sr�õ��2Yț\��������Fo���(�]��ߺ\`��K�W�S,���j�+,�dW|���`t�\�I�K^��B�:��u-��x��5�g�w6�4zwAa����Ke���l���wb��<ޡ����3�w��ٌ�j�n�lނ�ڹ���p���2Нav��qǖ
�����q�w!?,�S˪�����?�stڏSʳ#��Bٔ��3$�]��]u4���{.U�D��C F����z�����st��޻��Ƌ��W}�Q<9}���-d�\z��PG��\�a��F���#���/�p�� '!Q%Od$,r	lw�%@&����"~8�I�^*�'�1�����R��s$���5NXN�Eoϴj��r�ѹ|K�ކ��T�R��j��َ$��}��˞,nm�^);�D��ң3$J{R�{Ȯyh��H���F9T4�ޡ�W�P	���/�΄@+>�!�I��sO�F$0�Qި���Z�+5��	Ix��s��֓��c�&0�P��_�k�t]��Ҕ
�QY�T\TN�ER�!_=�w���R�bQ�h�H����(ل���ݿ��'ő<��Pf�*x���
}�yG&>r�D���|@mr�S�%�n{�[�hlx�����A��kp�����Z�}�>a��e����|/4�iHL�`���_�)�Bm����=��+�<6�y �����@�dq\�?��E��'���Gf�5��_)D���k7ũ�$�d�|���%��-�3�b��������/���M�W$B�(X:�H���ӄ�`�@��0�g�z#*�8K���\�����<g�́u6�	�+��DCg��R7)�Tj�qY)�>Z�a�>��.9������6��GCrs�_�&����{n5ʀ1(�r[��!��3��B\��6;�U|'�Ok���G#?Vd=��`�0�<
=���Y!���|`;�)ړy.f|Iΐ�q)���3����b:��'�_��>����d���4��M������q	�=�(	c�G	�)�7���s�_��=-��̔?��]��W��?��8�B�f���S�oW�ۧBX�?<��*����߭��=��J���7J����r      �   v  x��X�n�6]�_�U�OFҌ-� �"@�E�EJ�Fl$Q��q��otץ����_�sI�4���0��S$E�{�N��e�#�2cy�V��V�����/Z�w��*�Je��q-��w�?�����ʼ��GǬp,W�\)4���3��-�ǫ��7�Z���M����%T5gVh-���Z&K_4��K��eTYۙ/=z��Ͳ[Yj��*w�,�#^�2��˓ qY�ǹ,.ĵ_�x���g�_�𗤛U|~�<�Ű�/?����~y�JVQ|Tǫ�e�Ws���o4X|���d"q���B��Iւ9a,��3�e)A*w�9أ��K�Th�ɛ���[HL�D���A��:���J���V��� ���j����[���N÷�|�9�S������+��m.;��'����+i��]g��[�@���p���˴/�=��d�n��̓O���m��m`��Z#�����Q�*<K�e�Z���݉%�d�&�P`� 2_H�)#���q�#I[C�	DE��ډ�7��6����ˍ<@~�q j0ϰ��`|=0~G��B+w�|Qk2g�̈�}>\�T���U.:���x(k�S�Ԍr�nJ��6�i��,m�;�涚w���7�x��,��{���،|������5��V~�]&?ʡ�0�Ä��u8`Ā��J��H ��V<��4�����=��#������h�`�)�0!��-�#�$�1/��`d���,��q���&s!=���N�2S-���>����Ňk��HG>K���;�}	��
�C�+�Y��6���B	(�*_�:(��:K��\T���%�W(7�߰��N�m�<�e:��#�먫��*d�`빀ū�&�@��:$�-�
�	�f6��,�7Q��hT1�&<t�rCI,��A'C��]hK�ώ�sW���ʼ��z�^{!h����Q�U�H=yz� ��M�q���z��T�����:G���ط��z4b�0�����:��_h�ڡN�SN�/���c�V���2^�Cn%j<WZ5���`����:�+���D��wRC�~�Q�۬�ohںv�{�W�t*�h�|�9�'Q��UޮF�E��m9/��Zpa�>E��e[q2�c�p�
��y[|�����Z!}��Og3bl-΢V�,��]����fC7��Q#t�H(\oA�)M�Aq'�7�$�p���X���h��l����\&��[ȶ�)[Aܡ d(E�H�&\���3A��w�k���g�&� ��������-��/��Ȇ�y�)�N�	�~?l6��8���
~�^��U���r'�=EY�����@)MH���*�k9�%�%����˛�,���S��qQVH`�E��(�������џq�}      �   A  x��X�n�F]S_!x�&1�Gw��E�4-��lh��H�ʇ,$��t�|�,���%�3$m�wfxΜ��s�8�yZn�o!#T_�q�8>��!�x7$6d��4ï��~��}БтZJ�a�3q+Ld9��	f������>]������sg�0]���}I����&/��x�L3}̋x�H&M\��r��i��r�ޭ�"��u�w9Ͷ�x�d��f����:���"-�"�V�������`���h�X󐲐��*��
F�R�(Kke���Ra�6�G��ԃ�����Y��w.�f����3���E���L��%FjUp_]�?���>C�`��|R2ufώ����d�?'�dW����� �}���_<��:O~_N�<����F��&����ri���K���;k�{r�)�m��=�d�{8qk��Ҳ>�X<�/�eBJ�畝�Jp�P������@�# H��ګ���c=�&L�հ�OH^�xv�6�n>'۹h$�,V�X��2�6���P7EB�������T�GBC$�?��֠˨���$Uơ�&�����o���ا
@\|�2K3|j��8�7Y�M�r�"q3?'Y` �p�9�~�Qy+#F4WDj��a�'�֪�=%G�#�m$��H;��{�f+�&�p�����v��X�7���}u���ag�*a��07�m����_q�Zf-��6Q�j��
Kq*:���2ph��t���߶,��<Gy������=G&]	��$�'�$������|���z�ZS������+����N�\f8�(іr���� �i�$��(�{,�M{)W|���
v�C���F�	oڈw�|�38F9�#�����n�ZW��4C�!o��x�#(�%�*%����%�\
`��9V��uO�T��	>I쫩ŀ��*.�M�-�H��S2�_��W�jwBP4(L8ޒLF�SʭQDIg����$ ��Q���61V�Mp�f}Q�f���ʳa�Ӭ�Z�*�xW���ޮ[�>$y�&�0����#�+A%�%i~�-U��k(W��Yx��5�5�#�������!�r�x��0Ã/����f�w�]\��*x���u�A���ah�H!��
�# �h����u���c�mP����[;�p9Ͳ&��,��0��u�?�5�,Ț(a$�����}\Yd��W�1�+"���L��0��6����4�k|�x�1����y��4{i���%�A1$��W��K�r�(~����yx]-�u5tH7�¥?swǵ�߻uє>#.U��%�s.���c~��m�-���4��+.�_39n��q��t���|���t°5�N"�zx}*Jx�t&(#�*y�;�iNܔm��ɰ���!'+�����4ࣁ��Y_5=CC��Tׇ�m���YȦ}�h����:�1���#1��ZG�8�BI
�)ACT�}��N����q�'�wt���� ���4��e���O��4X�0�|�j�TTC;������j�q��=q��*E�H�t~P9@w�����9��n�����A���ǝgק��h6��-��      �      x������ � �      �   ]  x���]��0���]�j�K�	xq[�Ҥ8I�9�:����s��=�L��AiMP�5�졨�߫N�<9h����j��u�34�΁ /�y�]"E�e�EYm��)�Eժ+�Ms����<�c��������:#�����I1�q,�<��"�^kY����h(B~	2�;4��D�����G�A�Ǜ,H�b�*����q�L�E?3*m(��u4�Ӗ���愞4r+�ؕKa�+``�Q�\��p7|LN s?clO`�����kk�#�K�3毶A���ǜ�U*����6o���I���R�1�����Kf_���,us�oe�o���Lb\�r�'� �_Y��8�^�      �     x���ے� ��'��xė�'�MG;�U*J&;O���G�@�re�����!-�%)e����'�����r��@w���HZ	H.�/tH�����gd��I��4�bڳ|��DZ��M��4H�+�؀�+r���ze�4JBd��,μ������B�d}�� �V�4��rIUR�[�h��"Y=�EBWF�(�I\�>�w��*�ԟ��T��w�cJ�4xC���vZ=�n�9�2���y���xiK �$v��Y����[z�X[1+f2�o�����S]y5�F�k��
�Yg����laQ��)�� T3~�����񰻌���/Gl�-I��n
ߟ��9X����DS�8�8�42`���[x�:�M�	i���p;�vܺ�m��xW:��^yrCΤ9�=�,u��ɹ�m���R7�`:���j�Wq�0wzݠ1��Y�G�G�Wws�v�%q�L�>�s���,9	�Wt�i ZltT��c 8e_/��F*QN��a])�u:��]ԞG�V�s���u��X88�9� "�vL      �      x������ � �      �   �  x��Y�n#7}V�ŅH�"�K_&��� ��N�t�_ߣIl�Aj
�ˡL�rx(?���v�yy}8�������tܟ��ˎ���i9e�}{:gJ*�%q��H��YRN\H�e�%kNT���Ѱ%�*>l8�����Xn����[�~���nx�v����kw����3l��N��kd�j�j��i܈rI�+��q#.��4s��&I[��TrV���AAkT7���&���D=-�����g�[�ċ��Z���Gin�߱�����???����a�l���R.���LO���Z'��4�EY�?��ߗ+�r�Z��_�:ϻ��������	�%��H��)�Wث3��_.�/�	}���x쩬z��S�z8S�<WNRJn͆�J��zj���{�?Ϳ�5�܋�ޠ��-1#Ge�,IZ�����>?� �H��jylhRӖs���S�<�׵��M]�
��As���J����K����sK&�a�J�ޡ�C,#�țSӯ�|�І�9�V��+x/��"K�x P��+�3;=�Rq�ڒ��6 %t��*�*`�l��h�[�p1K��X�(��r�C�^d|TPTX� 4L',�l�^��]P�2��!4a���������Q�F�I���0�4�����z�}uO�
�B��(X�mV���v�V0�i�և6CA�gB5A@6+��,�V2�>ӊ#vtm.#G�XFC`��c�$7/-fWb��B�C�:�X�Ƨ�bj	�\쫮�U"!S���q�P�V��
S�	v��\@k��2縷�9�<������b(cj�8�Es3�W)�ʨ�iH��jaQC'��>����4V�|fB�b��G�Bu�X�6ڱŧ�^�eH��`L ����"��]-Y�`�@��PK�WՁC�rE��5��Z�YC�ˇ^7�(��B �K�yDH���<:�Y:fn���r�$���_1
cĩ�"��ԥy̆hE,�%��B��j���kA�Ύ5b���� �n����8XԐ�Nuo�/������&�߲
v��UF���B���-�K4
�:zA��Qq��v�1���!�/�1�����+c��-6��z��#����2��v]�7���W���=f@�1B���|�b���YF���t�"9��oF[��n����w��ay�����;\,��p5��x~ɶ%�[�`�Ο��Ýt���������֗��).R=�*�������;FV�;�y�,�,O�Y�gi}I�u��*
-���_#���;t��P��B:wM�v�y9-���K�1i������8�N���2�0C]@�*6�����v>l�GЈ.�@�l ����V����?���@7�s��:�7r_TU���K�}�@;�D��@H0�R��B�RJ��3��t|�&�O�`G�b�)N�~S��67��������?V=��      �   %  x���ݒ� ǯ��pF���˹��n�Q񀸝}�����;���I��	ڈ`����q��8S��P���×�݅�i��BE��}5������#5-��~F�6���ux]��v��!�ْ} ���&��E�gLe���$1ҳ@�]��z'+�����5�����AgԄf6m�P�C���;�&F(�!�1B����wawX��K� F���gW���W�0�/n�'�X��s���$Gl&��uR��UR{jˤ�	j����j��Z������/�Ԗ���Z{p��Fo9Z��>���$#ۘ���!t�wU��>�u;�yf���9��:}iam�P��Ʌ	�;>?S��9�,�:N[D���������&c��ole*6��[���tl�[��,��Ak~O}ka�D���z��n�-���h�m�h���ո~��7���%��3�N}U�q���Ȩ�fa,�/�W�ȼ���c�u���y�� %�)Wb�z4�9��^ָ/�Lc2D���P1�S�/���Ӯfy����\.�[}d�      �      x������ � �      �      x��]M�㺎]��C�ǁ����� �����m҉�;@*�8I��k�[��l��D���>w�7Q�1yHQ��3ؽ�m�+χ���q{��,�h�I�Ky��e	��Odآ�x��"�U�A�.��������Ђ��4�s)&��I�v�$������(���o����������x-��oO�m{)�g_}r����'���t�ﷷ�'���|���/��od���[�#T�o����=��?ؾ�����'���~�ߪ�����-�-�a��nרXR�� ��y�O�T�[=����46�4Ų���|vR����6��N�%C=�`ś0�h0���f���h�I�W}�	�M��lL_#��yg��;�e��|�#�/z�E�a�Ȇ�"�E�u�P���|_���;�a=�%�a�w/���t�{#�V0�7���O~:��7����A�����)�D{�ȯ��������C"�F*��i�/c}�*�c���f�Gc@�CK34��Ð��6k���ݍa�	�����|?��TK�L���/�LOV�x�H&�a��W{�8Y��㙤�t�(��P"���!1A"*�Pt�B�l�
�V8i����Fic/J;3�c��~���|=�E��~�^ϧ��^�*'���Vi���W�Y��j%o7A������lÊ�mY�Nu@�V��<@�=TV��㓽�?��+����|�:R^��k����z����"\�v����>���zڽ������������?N�[�9>�{�*E���~���WL�Z�n��_�!}���i�y'm@�Q$"�����]f���-��Z�F
n��QC\" =�%ڄ��!"����j�����^���� �C�4�����wY:/�> z��Л���������WCD�����a�)y��yX"�%�οZ��Wr��+Г���[)�����JLɫ!���.��Į���P��i���ɮ�6Y5DXTҬ�+�o�&k��'�+�dQ>6�_B��Vދw����O�f	��Zg�Y��^d�_r]��������CE�bEX?����h<砓����1����ƀ��IPr(�o�\ʘ4J>���tɧe�.8��Y���-�O�(�;�_O��&9S�vے�CWs�o�cN��:��ܜ��)�0%n�å��i+�?vμ�s敝ǲq�9��Ιov���sFe�g�lR(YE�hzf�O���Lq.KU.[W��UK��R�L�ze��l\&K}3Y��R�L�R�,ř,U��Q���1Y�3Y�0�*���0Y���L�xe��l\&K|3Y���L�P�,��,Q��U�tf���d1�d��d�X13��`i�1�C�2��dN��d�<0�[C2���T&�q&�U&J��B3�}R&CJ�����FlU=&&�V���pLD�3�Ϻ%�&c"�&�\�4m,�"J.1Y��3�}&+�.��!c&�K�'�d��Z�����Gfc4��d��T:&���d6�@f
$A�!2k�\%�:�?w(|2:#c�KV�#Ӆ��1I��g"�3���dc4��d�0�T:&���L6��d
$A�끈��L��J���FĮ�oJރyQ�͋�+�yPrI:?J��R�П�7�4&7��q�{��*��k����x�������Ա��B6?\�W��E��Nx
$��15���|h���������ir���kJ)���I���y~����NzYu��N�m쫳�YS))7�9Edzy\��d�(E���P��|�f�4k��a�ld+�O5���Җum�5��j<@��X���Ʋ\|5�|���G�[<D���<��:�j�k>q����GC1C��׋d�����٥�Ab[�[�+A*��8��"h>,���
�!#u�jUپ�T/����XJ����Ii�f}�T��s;Ü�߾�2��&Ү���5��iE���kE���.�eA��YT3*C�X��[��`-��W����vS�]��R�Ԙ�^���՘�X�ajf��~�Z�s}�0;���lS���G������R�=t��ܻ�P��,��C�|���c�<
R����T��ԨK.�_/��ۨ��-r��\��R�X�����Y���aj�Ԩ�Q�y��T��T��qo�6*�c���d)��7�T,�b��!h|�b5�Ax��,k:Cj<���c�
d)��Rkq��{�V[9<����Rc(K�rf��\���Xj��e)Sc#K�j,�T��sq�Wa)��J|?a��sӳQ�T]���,��J'���U]���,��J���d�h�R��R_��&��WX*��z\�e�燥8g P��7�b���W|>Y�p"�y��K5j<7*|	��t\龗Y��p�9R�L5o�c͹��bt^!H���\�rf-f���c-v�������&�U��Y듰֥N�K��`�y�۶fU��b+�U_Qwr�T>)X����}�/JHSQB��v0��?7�a�f��+�_�_���w��k7��/���U�(NM�_�˹�@�B�3�O��!�صO���<}޼�:{]�c�7��~��kO����W�XDi�_��tG�`�&�{���n^0��5.��?�O���p�u�N������:�B��0ٟ��}9&ݏ�H6>F��� @�]o��Y��r�֛z����(,�t���a��[���UO׾ P�+{(�2q�6�V#|�'��Wzd���D0.�Κ�t$�X52�]w�h������O�������������t'���,�s¥a�/��`$����&  ��UobM���b]m�l��ʵ�W���R���Y�mfN&#h��L�a�:��e�'V8kS/7B�����1��@��עl���*Q!O��<�Z��C~�׉w��g�˱E��A�њ8,��a������o-ϼ�'�FUt�+u�nM�j'+��zb��GR��]+�7	�2X��.�L��2�:q�I�܎�� �;���
�$�
r��$�Ɔ,<�)(#N�\'�;�Չ��V�<�G?,?���R6Qxq���Q�h�t�Ɇ?�{�z�6_�CrPź�$Tź��.U۟�/�eM�Bɢx�\�v���04=����&X����ޗ���Z1�VrZ,Ȓڭ���"��j��d�v�[[���G�{��@�Jp���H�E��L��j����\7�- }�����|b�lj[�z"�67��0�31�Ⓜ����*��ޚ��R�pF��o�)Tv�U��i��J!���^�|'���wj�>�oX��L��b��!ya�_�gx~�'�����O-%�&O���w�� O�����~�ړc4����{)���#�Y���f88�V��4���r��E�]׼����%jJw�d�T��fx%�ַ�H
�l�q�����w/�O�$�w����~��Q���Z����S�j͖��9Q�_�MewY�(6+3 �f1�HC_��X-� $�U�d��2a1�R�x��'��&�* ����X.�uP�ы�-ȭD
�aY�k�(ς�K� $�MJ�42d�9��K ��QB������_�r���V��F���������ח�1N���U$��Q��G��du4���GA�[��Q�wD�ERPc)�U�q��ŗ�*�7�^9
7~߳T}`�a]|�5;ԧ�o��Ӏ$x�1��@1x�9�����)�8����i�2
R䖧�V�S}[�m[
[��\�TL5v	t)h>��-�E�5n�kf52lՇ�u�qZ��n�n����X��m����k��_V�tUʫ��D�M��0����4M ��4�Z�W��uS��oE�p����oYs�q�n��t**2[gJ�i��`�)��U�����J�� a,�O�s�����,�w%�:o�{��l�7�&��o��^��I�u��N-�X��q���u0���L�M�]����z���c v�'���ս�Ld���a�$���n�q[N<N�Ovp�O���O��J59� �,R�n���'�7�������Kl�I�o�@�(��&ڪ�0�i�N��'��ΓH���I������>㓇�8� ;  �'�.{�0��&�d���D�
¤����,7�`0�=! ���
鸷
��������)^���j��4�.�U)����ԕ�������Lr萸5-�Z�[qWC�VK����<N|�d����@lF�،���dI*>��`>���(�oF���(����J5��-��ν2��s�̩r�Z�[�.�ʜ�8`0Vƨ� �൓Tѡu���8�iD�MR�K�R9Y@����Թ�����xܞnu��/���jq�tXFfa��T'�b��$�e8M�"&	�h�d�H�I��j�$8����lL|�4[� ͖�=�^�5{Ne=*�U��]Q6G�~����iw������8h����o���̖��TiK�q��òF������r�������6�<[JK?��J^��-�-���@�>��mcF�qѸ�4�fĽ���>r�C�j>1�����-ڷC�m>�� l��vW(�l��I}��{���&L���B݄�!��a�R����`:��fˍ_�pͮ١zb缛��^؃���C���\�6�=�m-��{�ў���|<Ǯ�{_v�~�����"�C�n>�]u�*俠��|�\}7�|Y�g\�_�`W��^�?�A���D;`8"�Qc��]�L������e�l�̔��t�f�K%-�[�LR���ד�wYk��&�t�f�/z3�N����z9E4k��~"�QȆIwGd��q8jc-�����y&j��X1'�6�/Lޢ�w�D�ti�# HS���Fe�U�a�l�Q�o��Ym�ap�[v����yi�N�����Z�=:Y����ά��A�_^��r\��1(���M��m9�[���q��1˹bq�(�U����d�g�L4�W�'z �q���������b�*�zhϼ�����$pm�|�!XL�[74�e��R���xh��,e�"��Q6 q�$nA�*� L��]6�y(����p��.7��s�����ʮ/W���u���|5{���M|Ɵ��^��8�*R�:L_�����;CWU���p����ޚ�y=�/��L�F��8n��$[;Oa�r� D�$�� �D�$���� F�0O�����+�X�y��x����:�0~�6�6٭��C��e�-f��@����n"-1�N�dj�i҄��ʏ^�4����MF`O� ���Pv�Je��\��Y3<��@�f<g�Et!y@FӅ��w�Y�࿩�ʆ���F���"ѻ^��+b�z�G	]���S���N� �u�[���q�s�@��<�H͘�8�@n�wOʘ�&$��61��K}ݛPs}F�Q�uB&˖�1s�V����oZ*`[���nf�%:���óD����H|K�p�Y<_�H�u�������]����u�Qs��o.��i&����)����=맥~�Nֈ��I��jh����6ПU��AŤ�I��wkɨ�=ԕ@���ܩf�
��Js�:9}]i�\SG��z�9�Ǝ��+��X���[���ނ�q�߂I��~�S.	@a���KB�a���K��wx1rI&,���M�x����.�}����c}      �      x������ � �      �   s   x���-(��/J,(�520���O.10�MI�00��uv�4116���Ū*7������*�B7��(�Ӭ �PNC3#s�qy���& �f0��@��!����&�&��\1z\\\ �V+      �   �  x����n�0���w�~�e7!�������N�Z�����'�`�0�	
�RU�&�ɻ��J��3J�X�)��ŏ��.>��y�%�R؀B�$ٰ|:�lr8D�쐮��;r�Tw�$E�
����z��jۜI�,A���"3Z�����#ԔK�A��]��y�����74T���]�"+��0�����X�<���0\�1���E]*��閖%F�]o7?�xF�n0ϐ'�4�X�ϰ�[��*02���s�g�U���j����P������^��1�wHR�A�h����x�����������"[]�є�7ZT�*����U����x�B�G�ۇu�{��`�����_�vH��L�a�MY�,)�d!Y��!��G6      �      x��}�vG����#u�c�P���!+KR��:ٛ�N2�"�1������]��t�V��m�O�K�^�!1���΁�C����g����������ʹ^��������l�^.���js#�S7oWK!o��n���������>����[-��NG-m0�ڄ[��N���_\��������M����j�����ٺ�7/��t[��W������� ���h�F
���*!�Qj%�T^�������jQWo���u5Y�q���y]��w7�m��Tw�j:Y��W�w��V���ٻ���W?��?�ꄰ�7���p�#����������7����>l��߾o�x���x�Y���QY�u���FKe�0F7v�W?�m��'�|v?���b��Kw5���^�g����j��!Eo|7���r��Tˏ�	sl�^�,~�mj4٦�{���}[?�nf�ݴ0�c�����*4v3W_^�����o�D�w]6Ԧ�W�>�����j��Uo'0x�o��:M��~2�d���
�W�z�iL��#v�ZҖ�_�	�LG�A:	�������t9�����j�n�����u5�ם�p:M`�hf�w5��L3�^��_τ��_-�4�f���5,��f�߭&������Mj��&�z���WC��x��S={h�m��&[�f�b3�'�xS��ջ�t��O��w ~ݒ����ϛ�s.q<
h���7��X��X��v�"_4��~v���?6���#9����{O��W��ƾ��4��c���������/'�I��C{�O��i�?�}��n~��<,��~�%���r6>pN��.���h�����6'nqo���_�֍���0�6���Lh�CUc��o�0��-�u��}���/��4�ȳ%M���S��-[����w)i�-iz�}�4�%�gI�XIs8�%�.b}�4��f9ݔ������s{� ��:�����[�4AE/�'�4g�K�C�*���F6��!̈́�:���4g�6,i����*�W.�MK�o�F��9Is�nÒ��ߤ�1h�?����tB#��,i>K�ϒf�<�4GP��C�R5��`Db����K�4�!No֓y���QB�v`�_�5̥O6�V��<�"��6�L%U���E�d�ݕݽ��I+���mL�^;t��Va;塊����m�p,�^�t�һ�e���n-G�OI�f�{�n�JK"F����YI!н��)��wه�5�i�.����ZHi��o�:w���m�Qh�jӻ�\�z�w�Sҽ���"�:��QK����uG}J���GᣋA9�Tӻ�*��������3z�7���.��}��A���o���Sн�Kx<B��R$�	��Gԉm&�vp� "=>�)�V��b��g;�)�U`�������j `."��N�v Ў,">9D|�$i�����i:h^%�1��%�a�*�,R�@!
`R��b
ڑE�'�� @��'`��� ��{�H�U��*0� �D�F��$`�h�yц�#�P3 ��lg�@���HL"Ȩ�y� �@Dy��8a�Y �ǰ���@�U��0F�����um��:��`U�Ў,�A5̃�x�l������G�*0̃�:�<�3������~�u�����ad��[/T]�>	����A+���0	F��A#����?::��e/ͫ@:��x�X�%!B�Pt���*����Jk��>�$�������J d��w�B}��gZ���,�p�J d�`ځx��*�4lb�����U ���B,r�7,
DȎZ �W	���o���$!
x$$"��y �4�?��Ǚ- -,��QZB;��u"�Z��@k�s�|�H��@F ��T`kx�5��~Y�*����[zаATl �U��V
�]D�z8��H���x��a�d�!M����""�é0r6�"�{O:Lݣ�FiX^% ��a&#���p*�#��8`f��;^%�� ��LEe�9��J��n�=��އ8�+-�^J��3v�ڠChGq��@����V�����HoD^ �@P�nP�� �x�iQ�c�8��"R��*�	o����8�Q	�RT�J �
�:�]�s�@.����Sāfx-� <"�G�hHLM��Ў)"A�A�P V"@�$��u�ж�vL	�Ըa�I=�e��G�FIA���J d� �Lx�n�39���!p�J dР6!$s#k}��9�- ϫ@B(��B�> j�:�-���@Bw�0�l;��>�^�.�SĄ6�	x$��['4RxD'�Ը]��J d0!���ܲ���΂H9�,ItR���@x�h���.E����na^�*�����FA!��ŀ��_D;��	m2�hDBJ2��a��G��6�[D�6�AB�?$�n�B �ʓ�c�0�vl�"D"�i-W�R��DbH�n ���3x�'��5 �@1�'��=���3h�['����M��D!�5�N��[D�6�q���thG�y��3MkD^ \rO9�H&�N��dz8�N4�X�����^C)�
Rr��k��Х��0B�x�W��E�Ug0�l� �qE$�IP"A���h�Q�ad��Eb��H���T���;��9	�>2m]��"t�,(���a�t91�Z�m�� �qE,�r{�|gv��RF\�-�WD�n��h�>"�0��O ��J �  8�,� T	��C��b��X�� �|�i]F閃Y�udЌ+"A?L��y!�@0y;Q������h����`A��(n��-D�o���$����3H�*e\��4R�6Y
���vЎ/bA����	��\�i9�����]V�v|��|"=��@ )�D�`x� �`A�QŔ��yY�n,� ,�|8ފQ���@�@�v|��f�U�����hx��M�Ќ/�A�A�PB�ϥ��޴ T����RR��h�g� �;f���v�B0:jbQ �* 2x0�,7i24 4��!$(���Pă!�A7
rT��tk�O7H�=�	�*0L��X'By!�7L����1C[ �W	�a"T�'�9�{�����@�%�N("�0L���Q�Y�.���5��!Z	E4�is�+R����-S!����ݎ5˫�0*pBa���!��w�h'�`�A�P���Z��͢2bhr�I��I�y� �A��L4���u���jA(�������adާ5��1�bL�v��h'�`�A>$��4B@	nۀ4�~�vϢ�U��0*���,�:� #(	R\w�B1]% 28�{E�?7��H	���-L��Xā1�1�0�i�Zh-�-���w�e�N,����� ����Y�<%S�;J�2�X��"�,����!�ȫ��O�۠��-���3HP;���]���8Ç&�[@+��c�օ��Q����.��r�m��WI����+�a.����K���m��WI�h���{����s�i�Pg��k|�Rd���?�V��l:� w�v�H_%2X��0�-俍=��L5v:��BBu���A�nR	n�� ��U!�	�1�=ܷ�����|t��6��J dp!�w턖��LA�4|J�!0�A:��G£-y w�ݞ�ït��ybM��"��`��K_%21b����x�����n6��U� �ӹem�H�T���TbłBH_���𢾿1l׵�<��W�o���.�!D�����z-��`d�N!��]���"<T�N�#Q�E��dN� ��]g��hh��2@�i�>��#*����.��dY/�6^��;'%wͅ.%9<?�4�ܾ�Y؛z��^M��\b�	���(�sO3�k���9*#�eɟp�#��R�q	��eL�l¥��<w��|e.=WDL�@��^�y.���8�E�p���    ��z.�@�[�xD <��Ѹ8l|4k�d���dÇC��郣�%��x\�"n�DL�o�|md�Ryx������z-p_��٤
i���Î%��h\.B3H��������N��,�?�{�,�%�'����&K��%|H�%O2+uL�c:�r�@e	����=�Q����ɷ��Z!2�Iv'��NZ� K��[;Ï�5 s�#D�����`� K��L�?cx.�ւ?�П%�:Y}t6��Xއ��zI:#��X=2hDϳG6Kp��}��J��'� =&�:{��Y����蒛XH�����c�����g�b���ݲ�еz�����{������d�$�C���eUw�\^}Yһ����
.��3��eUW_���3{WpNVH�x��9�E}���w��;��bmm�j{�R%�G�+K|]ҹ��ǫ]��Po���	B�q�^}Sһ�r:��
�ٹ�ޥ�L�|����o3:?\"<��m6�y|:�ĭ���x�=��?��W#�?����cح�P.V��{Ê��k��C���9��=ll�Uin[lF�B�q9b��(����?4>w�s�`:N���s�8�/<��W�Z����z��o��f��$��'���[p�`yH��Ɲ
�O���3�~��aޛ۽�>
m���$�vO�ܙ����uN��0w�������x��t�ۻ�3=���ɹe���`�b'3��j��m}3�����d���̿��N	 �`�qs0�����8N�/��ő�	[/ҳj�`J�*�	���sa ��w
��֞ǽ]�I��\������\"�����&2���'�a&������%݌���c�1/�L.7�DV�B^Dm��Ie?'�g�'cd&�����S��?��!Հ��&�+���C��Q���!�hb�d3\��G̞/�&p2-��:	ϿE��[y��R݊Cnm\��=������-4��G6�*n��_�����A�tJo���O�@��z�)X%�$ Q��>������bل�#1�2�5���qp�أ�~(ƑK��QB�F���SN���vf�����3*7�,eY��,�x5���-�K�������D�X�,jd�%���qdS*KhqC
��d2S�>���b ٜ�wk�G1D�1�0cK$�@��Ϲ@�ec>}���6���L�Ѳ�\f6e'�Dl"�2�B�iv.K��/͎��v��ٹ�mɞ8��<N�!�H&�H�䙲��̄���E6�C�/�Ҋ��֟?˗hGH.��>�=���Fs�E������Ov"M��ke��ӎ�\�i&�N�	(Ժ�i#��!��J�!�^��x �|�v�Z;M��jM�C��W5!؎�d3�`��P���v%�i�4�hDʾjv�n;˵��͹'nGH�v'܌?Tn�#ݎ����tK���������l��So����@�a���}�\���P½�R�|�����7/���M}#���WV�~�깺�Ү�) �ǳ�5<<�Cj��3Rn<$5����"�*�)�ukNK���hHܡ
'n^�'Y=��_⮰��GB2c AHIa+L갃��uA��x��ш\t^j�\��Sջ��_={�!�1��$R�� 	�(�����#!���|�'� \?n��6v�/��xHa4� 67��\����ʧ�����O��]��0�G�?L���Ql։HS�#�W	0��P� �->�]��zv	�� {�z�@�|<$l��H��%EUW��$��a0YX=�n�<�j@�t��$�䁰� +�CaA8�3K%���Y<��ct��h@@�  �y�=�����YB�`z��ZH#D���:=}�@X����D���T�߻f8�Z����a��y]6WA[���ځ }�~�q�HB�o�o&�z>Y�ݰB�͙wD��˻�y֚�^�L=�x��"b�y 	��Z�(*
�-���OC��~-ױ�/�����.a���=!�9[�G�w�tz�V:��E�y��^{�]v�b]"[_��(��f���=�S�LPt�R���u�����1P\6���E���U\�y��v�,��ųG`�Xl@����z��uf�
3��⯾z����0
��.�3�<��Z�P�.��c�|���,�D�t&�u��-�Kc��گ�%-�ea�a�
T�����z���R-n���Ǹ����J��G��.ܓh��K�����,y����1U�h}�D�7�V�.���h%�R�g^F��(�y��0���Dg^؞�#љW�#y�Ht�-�Fy�Htjck���D�X�"Q��D�C,C����	"�!��H�c���DX#Q��D�C,y��i"�!�<��$�h5;�kt��Ǒ����aȘXtf�0;0b�>F�΀Q���@4����9�G��!�D�#4i��AD�G!IĤ#01i�4�1��n�F��#4ai�~X2GqI��������<�i�g?4yw�����z������Z9��t�#���Ĩ=�ُQ�(H��\�~��8��� N*�lI�:��GɃ�J�Ī#0y�|�|<
Vz\���n��7�}���3P����Mg���TGP�,o:��l�:D�y�(gcԑQ�.o:�l�:���7e��4g��!����qh�ƦC4����М�LG���==
���t��)�3X����3X�4Z���MV�b����ˡO��V@�Q���X���@ĬO/y�{�9�����������?�,^����&};��'��rQ�g뺚l�7�������W��j]����v�O����<y_M'w��f5��.����ҁj]O73��n�.�﷋�뿼��aQog����T��hkS/&�M��߫���]�}WW_׫?V�_̗�7��]�M�j��T��ӊu�x>:�ҳ�]�����v.����Mf��l?~2�����n��'\L�w���ԓ��O����������'Ջ���n{���{ּ�T]�jLwѮE��y��6���b"Ѽ��I�ޡn�����zُKL��n���^��s�	��f���dS=�y��^u&��B�	op5��l/�ޙ��~��L���V6X���7��	�h�{���q��Wv��|Vo�f��z^}9[]����v�鲪��)�?�V�7��lQ�}��}_/6�y�9�N|��l:[����3������67���EƱ��ek1�M#�o��Rp�9�7g�Ù�\5F�y9�O�Xn'iJ���.s�g!�X�Y<g`��
�%��OsGK;�~���Q���
�q��ϫ�4f�9��z���oUw���b6ifɿ�������e�����ZV��U%Op�|��EV�yV���7�����4�,�m_N�;n.��ٛ���f����_���z��-.����0��}˘�9o�oo���d>[�C��B���4MI޾g�HPV��}e_�z0�i2_.^#.ޥ�	�v	���j^�a�uN��/g��]v�OC���n�.g�MR��=>�ܾ�^�������`OE�&*z�7���]���XI�ݭ��w$�d�f`����(dfd�g-��\���F#�*���Z�X*_N�Y�C�&T�-5�W7,�����Ǳ0t����<Y���ó�aq�L��l&��A1�гȲ�~*NmE��zP�d
���9���@xP͐X+(˵�1����e�wP�$�ڠ 0�T����X>�=Y��o�shv��Z�^Y���Ļ�cQ���*%R4���P�a	ϷY�7��-���?|�G������lM�;Yt�i>��mN����>�����9	F��-���Do:���%B=~�-�m�^7#��-������+�8�D������W�!�7�n���e�^Ce����c�],S�tC��Pr3��mw3��掸mGmHU�V���4��1b/��)��9�A��Y�p�א$��i�Fp�m���d5٦F�+ȏMJCS3����ᶒ�J����/J�r�mwf�g[uD�;��3��_�M.q��M��_?�~����k8�b���$퀦y��&�nT��TEӝ��W	ŊS �^��w3��\� �ox�5�>�3��� �  �VR��a���y����`7�߮0�[e|Ǿ�k��j|u��ϸ�u{�k��-�f�AM��x�tdݪ�ER�?��-��D�
:y��hYr���{���޷v�tƓ���I6�o@67�@o/��[ŝoO�ԫ�ޭf�K9֥p��A�pn���i��~�Ϭ�?��ͨ�\Z�zݏ=�����^�).i��ز�)⡤�S����W��t��ƷI?�����ͦt�_�����&��i��E�Ɋ�"b�d�:�w����lU#�"��l�[_x`����������іi�>O��g9r�_��Gq�%5��A�؁;�cn[���C��,�!�`���g/�U�w����t:�kz�[H���M�/���u�����B��ٕ�������҂g׿s�'?���S�g�s��{�������YV�^��	�5��y\����ס
Ϯ�g�앦Ϻ��³Or�Q�*�_�4|��y�\,�w�9k���[R'*�����sy+��g�����J!�L��*���͗A�@�nFDpi��i�5:���g�(�C�9X�P9�J�=6:o��6�]�Ɠ��� ��f�Hձ����`��k]�7�����@0�Y�z�!8��Wy>�3g
(�CpR�A�c:��*B�|�-�|���dݽ,>��r��$|�P���2�B��,!�
�I,c9{���1P��|���B��(���Ғx!���i.U�ˁ����n��6�m	k����bW��de�!*����Y�lj��,�x��0M�_���Ń�6��v5��a5Y� �aM
��B��6p�T(��ćj��=%�.M�DZ��hMW��D���A�2էD�E�F� ��Z�&!c�U����YJ���u3�8�A���l����r��m���q��r��%J��,Y!P�I����%�Q����>�g�D��g�D�҈�|�X#X×��]��3}���,�ϸ�N�� ��	 x������ٱ�=YN��,��L�i �Y�+�];��O��N �a�k|���94A@<��ij���^�J0帾4�^ڸ)�K�`�C'<�26�N�~!����E�Q�қ48=BJ�6'}�R��K����� ��]�0S�n��v�Ny{!�?�NA2'�L��;Y���M��5�N9�xL6�Ň1�.��r���'��>6�чGОp�G"�t����z�ҝ���@��l�=��D�����`kC��
b�sQn��͎���Ȳ|?Z�-������X
�)�w4Ȏ}�$��ާ��m�(�o9��s��O_=�q��'l��at!{���'x���r{Fj���j�ݺ�O����~�1�g��?����=��!�bӳꏒ����l�G��6�~���A�k:����J9y޵.]�['��?�#;k��5���w3Q�Aea�=j�T-�V�!}��%1�<��񭱱�@��ػ�ʨB&o(�$�h�i�B�qt$I�/ӠOaX��m��u�?��0P����.������TM�Dk�e��2A��@i�]|� �8D�	³ڥ6¦R����w//�D
��"�������p
[
�������>|S����d�Z������`SӝŜ!#2i��-�`��ĩ����UV���k<b��p�ճ��;���p�Rj�%��M�6��l ;�����{V�&�w�w u�4D��n������3o����_��W����\      �      x��]ْ7�|���k�n�@ ?�_0/-�%ьds�������U���#m3iFR�8�#G����n>�?��������??}��������7���������~��Ϗ��[�_(���2Y�]/��	[��J����ݿ�����M|��Gk��G���ć�|
Iq>�eyy��'�v>9�[���虏���i1>���e>�J�y>_��ϻ�o���5�������u����+���|]cl>�J��燏?��gS˯z������ڨd��s�Jo!Do#D!)�	�շ�⍐&K TrMo!$o#$C%i �lo�C�6B:̡�>d�	�C��~�������k_�|����T��������sJ�����[�4�Ҩhs��H�F��}rXe�N�(h���}�V�������*ʩe�=��TεU��B$$FB�$��o�H17;	)��Z�"�1���,D�� ��!�p��)���h�%F��) ���0��CnBR$a1����ZK�)X�q�N��A20My���Zc$�F�%k�U*D�p���زI�C�qh4�k�R['�TJM�$Y�DN!9$2��8��ԧ%�KkQ�­�H��2�aJ�݆�R�T���A3�CJ�cr�i���
�-$`�"�j���e�qN$��P]�J	ߡ]눘Zf9spQ���tQK����C(6%bj�u#7a�B�0m!�jahEe���^沑��Bsx.hS'�npf�Z
9���l	a�F�R�eN�Za��j���e�������d�P��gG�h�6bz�7�l\�Ffk�X�ʡh!؈R�{QL/i��&�D�ƌX�eE��U�D�DL/i�˦%C�Pd��3�J�CL.�.8@�-�,O*�)�nETK�Ĳ�2C8qH�j��[��!1��A-��+#�
�
���IH�)��4�%�'1K)���
U�V��G�DL-iPKCf�ض5D���	�#$�U���%jY�4�t��dk�)Ɍ���%jY)+º暰(KD�`��,D"&��F��ǀ���8e�Ў	��%rY�P��Õ�$qv�	��*��%r�|��*�I�����ŊczɃ^6��ʵ'03U�����b�1}6H���.$����P(�1��-GhkSR`k�-HB������8��u Q=�a�5z��H�J�qN�DL0yK�=�5q3]G��]a�!
1�d(����n��� ��M��Vr�'�Ƀ8�+O�ylr]�Jn	Ķ䠘���ɞ DHHL+%$*�)"��Չ�Dga9�JL+%$�u	�.�	7�����2�i�l+��m�� C�V'��&���i��	��0`�s��<!�XL%1��A,�h��@l�
6/����)���b�h�BW�2P�Y���AM�DL,��$�T���`�� /N9:1��A.Yj�]��o��҇&"SLQiCҋp{��/��E�DL1��$� �w{t5Ѣ���e���)��	g��(0x���������!1��A1�+R0x��:�����R,�Иbꠘ�� �jU:9��H���SL�CY!UH�N���Zp�Rc��2��G�T<��k����5�:4&��cG���&�`��\�[haBc���`"рy4����A� ��#ԎFL/u�K�LI���#`�y��K�Ҵ$��n9�<-�np+�h4&�:�%Z,P�
��u�b���)a�D��e��S�uC:����2�S˲�eN.	��(�A.Ļ!��T	y�S�B�j��(���iU�j�C�YbbY6���x�|M;���B:W���%&�EŃI+b�D�yr �"�M˘Z�M-3�
+�O9���_�J,�,1�,�ָ!d(�i�~�BQbbY6�\b��Q�-/�9���`�ԲԑDɘ�@���@d��ٵ���S�� �kDīN�+xF$�Cn�bbii� ��ݿ�F�1+�O���j���	�![5�Q�$0ؐXZL,mK%�R}9��꺔!����Zڠ��o5_Z5BK��p'����ji���Η�Vյ�2���Zڠ��V_��ZQ[��5�'�ሩ�jY{x��P����z78,��6��&J��e�W/�t������DD%���MVT3r�F�4�bri�\B`��!�U0\kC�"$jL/렗�
�6[v���`�XȻ�tv�h�1��y$�Kc�j%^{R�XEl����n��_A��8D�jW?�7�����`VH@1�/���`��#�h���̺	����}�o]�j�CB[l����@�}���9��hY���U]�!ZcrY�@B܅v�X7 ���h�;�9���j	�s?
��sYA&�x?�88f�1���^���
��:%���I��8�䲶��.��PkKG��1��P��"n��eK	o4��%���GXZ�)���V�<0�~�M��/$r�l!���"U�ie��:���Z{���"�J-�x�bZ���b
��}u�	V$@�;G�bZ����גm��#?K�DdS�S�6�%#~�_V��C႔��bbb�����r��	XP�"���b+-&�m�JtA*�u(����2D��S�6(e�8Ap��·�'5|g!�!��mPJA\=^0��+�kaHUd,r
	%~>pPȤ���\�:!��'ɱM���<�@�(�mg�s��"r�>O���t�ؕ�i4Z?xYBqe�����}$aD�--Wi����a�|
�ie���;��JO�;�V���a	qIe��P��2�8�r��-tz'�����>� ��p�DYkE��!!��i�ʆ���$�tr_�����V�4he�+B�U�|.7�0V��s9�E�_�܈WZ�J����+=���~�yx���~@Z}�	���@!4p���UCDϝ�eDt�HS�D8p�_rp��d�%��_�@_|8q���8��X`2de1���M��0�<·�����V���o��w_?��M�`�3;������
	�E�Hr����N��yvt�.�_�tQ;;�%�}0?�2͎����?�A`�}W�<�o�`f�|��<;�U�T�lG���!�"?:�W3���<;�`�����K�<!N��5oe�]�d��u0�>��_n�|ZI���yv6��5E�W�d���sW��P�4�:Ϯ^�+�G�������p�&��ɵ���;]y�*�_7�<�*��*��~s���m�E��om#��f7�*��*����U���8��m�	~�w��Gv�U��U��-o�]i'+ͯ�L��wyt����f���#�U(�xȥ�6Mn�S��S n��Zv�sn��
B'���a��y�Q�1���R�?� C�������OX������h������9��x���WZO���~3��џ�[~��C^A̋�)� m��?� � �U� JP6��tiPc��D./�,�I�
��Z!�B͞����]��
w���A�K�B�tmo�(?*qP	���;���R������x=�J�{����-4�m�F�i�z�;ލ}�w;*t�V���3���V�����1v�g�a�c�r���+���յ#��Z��F���8��`����7+FJu�dC�W?������ߍ�+w_�|�ҏY�c��hx��8�����Ji���|�qX��r�5�Y`��6?��%\N���'���8�Ł����[��}�Ɓ�6�4���m3'��ș������ӯ�M'��ʕ�\��0���0p\��\��y_�Ǖ+o����6F�k�+Wޔ��-�X:8XK\��\d���O)W�\6'��|�o�Ɓ�ʕ7咮\&Z��ʕ�U ��v_~1�8Zd&y1�8Zd&y1�8Zd&y1�8Zd&�����D �Z^��}��dW��v�/2��jyݎ�Ef"�]-�G �"3�u-"�}��dWK\��"�]-q嚋@v�ĕk.��W��dWK\��"�]-q嚋@v�ĕk.��W�"��}a��*z������~���&�&/,�Uh�D�w����t��ʭ��1��f���x� _�92K@6�:K@/	 �	  ̡�Y�2LA���Yx�����:ˠ�l�3�o|�����ݏ��w���ǟn�>t���Ȇè�ſ@oË�+�t:��
�wt�2��3輡1Gg�3m�t9��'�;z�<��3躡'fG�4�er��2�^�q_f�oGO���m�b��;�	�:�^O�ڪ�9�)�	�6��{���Yyb�=m	�{Ⲷ���G~lf����g�S����~�n_���˴��e���K�r/4��/��u�Ьο����B�:���Z����K�i/4���C��:]�!���������Ь�_WtH�w�fu���c:�+4����hݼ�_W4�u�:��i��U�}�I��Ut���B�:�����M����#:�/4�󻊎���Ф��*:���B�:�����M����#:�/4�󻊎���Ф�_WtH���&u~Wь�M��������/?������3ޡB���H��_[ʕ��[*N��im/��3u���M�T�?��[��.�Lؿ�$E^T�g��B<J�����m2��L_ep������I�_bj)���uB�>�3zn���ҡ��+3�Si��9����3s��*!�#��XpBP8�+�:��z�n�!�=���RY���u�C�T	�7E����I\SK�]΢y�!1=�Z*m����6��j���a�9$�I@kF��8�麷�t�B!t��K��9aL��o�OL�<#��{s����s[z���"Is(����\'�ߔ񍉴Nji��<���P}/����?�}��71�ȃ%λN�w=�+�?"����M� 9�א5)a�m?����!�҂�%Y6�:iaH��� dC�뎍B�0d��,1H������t��u'�����ׯ��Z_��/�ӻP�wK����-B1�k��7�"��6m���qǆOal�����8��-�-�2`璀�~1���z����w�R$>�e�l��l���wF��6�mv����W��u�n���`�F躅;<>����/6#m�#��Xta�����"Q\
�� �:nm%��a\�p���+)��ƕ3����!m����9����-aܲ�3���b��X-Ƶm>��۫6&V�j�a�z��9�y�1����=��q��&������j�O]�x�|C��Z�SW$��������'�7���>u=�I���j�O]�x�tC��Z�SW#���쫆��ň'�i�����`��#~���:���χ�Aܠ�}>�����at7�w����A��|�����C� �~�������}�+6TBO���+���Ȑ
&u:��㠒-�@{���^.��h�ۨp)�X:7���%�X�6�����]_+Wa�Xc9�ؓN���Ք5�X�6����kD�ۊ?�i�D{G-���z"��hc��X"���]Y�6VύEr�+Y�6V��Jb�#[���4�D{r�=�ll�6��˪�-m5�-�V����mm�]�,,�m���*
��;�0���5��zn������F[��m%���h,%�Xc[���,��ǽ�%�O-��vnl��E��k���nG��l���,�X�R5�w�n�����bT����"�*�Ix�Y+�K� �.("#[F�������"~���V�I�����.�'R���X��	��"|Br�jW"��5>�e�D�ri�,���]�O���7��Xc#�]�OB\�	� >�X�Z,_X��G�É���r�b��bٟ�^F�%:�e9j�|a���iq<5Y�4Y�tr	�K�����,_ڬY?��tpd#6˗6�	n�.��񐂣6˗6+}}D�k9�؈��͖��EFc�hpGR�Ly��.Pʹ�Iy�2����e���w��(�(���i,�xc%*Pr)PF[�:�6+Q��������`c#%��W��Z�q���@���z ��q5��@ɥ@eK��-X���@Ʌ@��ێ>��K����K���5&�ȶ�4��\r���la>�z$*Pr)P]��*V�4*Pz)PS�ը@�@�����K����(���i�Q�ҝ@�"P���FJwU�,P��F�I/������j ZԨ>�>�R���HD�F�I/���,^��[��}�+}j��T���WL�\�=����O�?�}��[������1��EN�a�|�'-�|�C<|��`eǧ_�vt_E�s�/ћH�O����%�/�Z�-�T&�5��������{�A���ׇ��A~e�
����~&��?�߾���O�U]��9^1E���$��2q1Z�X��,�י�W�Q&<2q�����$��-HD�Dd�ΤI�g���U�42�~��χ����P���,��r2�"�_����-J��Th���"�T�-s�-T8L�G*��SeIj�*���˕��\$�E.���[K�7S�0}��Od��eһn�~>><z�/<�~��دO��R�>`L���
(G���p)�:�����K.�pd���p����ٿn����i
e�      �   �  x����n�0���]�ڄ�s#E���CZ�Ћ!n@"v�`���%M{A���;�����hc4�i�
&�7!��^�|W�/�d�3<,���*��T_�^v�(5|�i��Y�DKg��7z��a�b"z��m2b�=� �:]��t�נL����L�I�N�I�ۑ�h�-�}M2ډ` ���_E~2I�����A`Z�L�Px%{}TP��LS�j��S��Ԩ8��� ܂lu�y�픴���ÿ��U*�J,�-q�uu{�~��`����a��uׇ����
��Ձ+Ƙ&@�I�s��٩���e���W�z�/�2�_�[��)���"=�L�b�E�Z]+�`gq2��c��(?:%�3��aR���ƚ�:h���ٞ�N�lξ���y�Hl"      �   �  x��U9r�0��WL)�]��*��sgV�K�Ҩ��c���p�P�7���= �rie�(� 1��ӍՖ+m�r�;N�zS]q
&�I�r�J�]$�]�^��F�B{kH���ݷ)x&G��!6��U�Y�5�P1�ykB�_Q�1�cR�ŭϔ���ݖ�4F��q��`�!M;v�����ʵ9��˛�IC_X���i�9� �!L��3p�([����g)t���PZgJ��pDxs�`S}U������ڶ{��^E0>/�&3uE|鵾�B(�a��s�U�����?����iNh~2��r&����m��_\��s�s�M6}���xM��� S�X�Sv2@�:#[�n�P.�V��/wL'��c{;���?CX�ۙ`��tcn�"V�j�u��;n;A�n���S��I��Ә$!(����J@����q%wJ,3�^q���r*�z��R�4��PI
G	ܟ�CN0�pOQ��B)�x��a�o���p��Ă_�<iᷢ@G��%�P�!��x=[�e0���X��e�9h=�nђ�$X� ��/FE˭��0�(r�l��({P1����2�S��Df���p�ԅ���!�S�!��7ۡ�T�)�m�.=Ւ�%�J��(�sHt����JoY�><�/���ڴ���%�,��9g�`�iϥ��CEV�,jv��-=��#�7�:�n����K[�1�]�]NFX A�}#g���L�릮�_(��Q      �   )  x���[�� ��u/̑m�Ĭ�_i�3I��ؙ^�ps#U��~�T�.��l�4��UL|	V���iyYq&��_k�/{��ԋ
��CҋܣޠzV?"ǳ�R��a�_�0R�e�QƶW�9��ǘ��0�܉��pF��RsQ]�2fB��nYf�ԫ
�=1�=M�id`O#{���؋Ā^D���Ġ^`�����"�{��׍����"1�X]Ė�� �(uՄxG� �\�H�j"᳷ ����?����p,�&�B����W۫;���ʈA*`�~��C8f��|����4$ E���7��ڈ��̮<�K���&k �OV�s&&�y����L�a`���ϩ����arbg�-�l���~�c��g��{-�����{�h�{i�{�}����H��Rk8����ND���QoCԫ�z5QoM�[�*�^E��&�=q�'�q��R����^�e �'��_G�p��t;�C�zi�|9���ʮ�����x�X]��nn
st��.�a��y�|���b_������XDk�jMW��]�e�QDUMg��#���_K��fx��- ���U5���6�ˉZ��~���֭-~���b�.� 'qF��h�0bb���v2�p����Qt���u6�OJ�q�Z�����C�7bP�-A=s��6��r�.�W�y�-�^���=�H F�4ۂJ���i��	������wK Cc�o����rP>�
��w�1*V�G{��MHwΗ�j_~���;P*������������ʛ'zf>��#�nI:s���r��x<��      �   �  x���Yr� ��㻐�ٹĜ /X�K�$4Hr\9���H�����A/7��b�`�et�Zog��"L %��9/�>s���V��S[���ֵw��ٺ�ޔ�� FE;8H����q�H���r��<�����wr��qovr��N8�M�F��J&K�tQ:d�6]Q�@��2>�������(4�BA�΂~��$� }nP��큎y��j#ƺkH��T�
b6J\���u�Z���o�2��z�y����� ��[�d,2��J���>��5:���_O5f�+`���������E�
婼��Q�lC��Ԡo^�c�ī��%��6��wC@�v���C(���j�
��j= �H�"1�/�d��aͲ޼$��K|�B'b��OBB���Z'H:;a�cJ�:��@S����Q��|,�21���D�vm�|EO͆9�5��yjI�zc�<�i��5�k�Z�G�_�G���Q-�0��Xa�%ʷ�0V���K�ʞßOizxW��k�����c��|��mȩ��+.��f���c{�kWf��M� ��>Z����n�v�d�Ae\2���m�i�~{oZ�9�����"�i��)��oFa��b��~��
q9"~g*��~8��t�c      �      x������ � �      �      x������ � �      �   F  x�͕�j�0���S�̡йK�nݼ���b��� �ݫ�Ԓ:؁�A`���8�t_6��`���t�p��S-/p�dн!��"�8@��"D� �ݵ�w�h'������$~4��%���hqv'_�P������,�ڳ�Vg�-��dJ7)7-�΋t>KqP�D6y+�X�k���Oǯɮ��M�����M ���%�@�@ȿ�>��d�Pcג�XJ;��f=�JYU�.nүBV@Y�pk�4�M(�6u�IW�=�mҫܓE��i�g%[�C0.F��(�a�*�٢o��:'�H��2]2˿Afs P�Vu�{�s��u�7:F�      �   ;   x�K���L/*�*�҉P:L'BŁtQ.gA.�N���P:����l���S����� �2 �      �   �  x�ݙ�n�@F��)����Ҫ��*�RE���"d�������c��d�`0��< r�;�q�;����4ʼp�m� �B��g��
����y�N�]~��+�,���ʒ*K�l����+������rA�N�Vㆭ�5/�N�8W�[Qz�A�!;����դ����L;)L�\�ɢ(}���4t?����s�cU]������zfmZ9��N
�^<��ڭ��򍷒i�oG�u����]צ<����Ǘ��y������H�'9��	FN8r��`d�Èr��������"X�`!��O���� !ҋ��]�#_�rR&Q�de��IT&Q>H~�ik�Q�F!��h�Q�F!���l0��Ȇ#�l0��Ȇ#[�l1��Ȗ#[�l1����c�(:G���K#�,�h��Z9;39�"���Jj`d��7�����f��s��-W��* ����%���#�Z�ۮ��j�N�G�>�A}��>�a�!Ї@�/8J>��������d{	�%�p� %Y�)(-Q�DYeIԁ}��x�h���5
���>4�����чA}P�(�0�à�>��p}X�a�����>,�������n��8��GO�:bTN�4*?ӌ�J��E/�o�Tm/�52���eOg%/������0N}���������&��_�l����_���`VÞ�2e>��YkG�8�n�jţ$=��6�n��l#�5]Ǐ:�F�x�N?}ٮO�>�<}~|]>���l΃��C�]/�<+�������y0_Lݴ����|̎��E��Dխu3�����$�x7�(��D���'ַ�ڷ�P����"a�Bg�*��R��%<9U��~�~�A/�]�#��uQ�f�TU���(<VU9��%�r�.5���d�*>�u]�F�ؤ�&�I�M�֛�&��h�4D
/ �x��A�+�m4��s:      �      x��}͒$7r��isi�g�U��ҍƟ��94��egё���
�IGf!�d2�U����j��[o�'� 8�EU79�#hFv�3w8�s ��Yty��}w��t�G���Qt�r�]L�V���bk��r��s]��Eדhw8DѫI�w�(�4TB��:���FQ���Gb�5����"���$
�owIjߙ��u��Vm�((��Ƨ.�/��#������u��	�}����$Z����Id�q.�Ë]4�ūIDB�ixj�����)!��bU�P�6�	�_ou���^�7�9�+.+��Y��
�o��^ͧ��.�B����P�V�,��ڧJ\^pY�З\�C���%?�D�����׬c���h�$��Q����7�کw����j/{{�����w����j/���>u�+�}�
W���+\��ˮj]����`Wh�+4��
v��B�]����`Wh�+4��
v��B�]����`Wh�+4��
v��B�]����`Wh�+4��
v��B�]����`Wh�+4��
v��B�]��Вs����FS��5�����G������]������s��m�??q���k���u��mW�����N��\��~w4�����n��w}����n��/��]�t��x���C/Ka��;;������U�ׇcOS�<������U����mi5JG�n��j�-������l������t��ִ���iuڭڻ~��������/�)��%�u]���fmج���.v��Gm��O�h�m]���`��EkM]~ϡ��]~ϡ��]~ϡ��]~ϡ��]~ϡ��]~ϡ��]�}���P{�X�$
�1��]~�1�y�M��y��R��C�C�BR9U"�j�KV��ɮq�Ѫ�\�7IĶ�EѫP�ּ(T5�5/

qX`�gJ����C�Ĺ5驐��k��xѰ���㷇mݰh�"��i�b�"D��=��=�Jh���F(�9�s�۷�4B	-Ԟ�%d�9�P�d	�p�D"�LIEW��O��Ѷ�.v��΄����O���H�	��SY�X�묋�_�4�< vd���G���������]R��L*]Z�*A�^��&t"�b.�t^���.�/|Y�]���/���D�X$�ƿ(B�� ��P�ba�,���+d�U����H�M�)WVȥ;�q_���䢗^�y9��
N!!�v:6/���+6���u��J�E_�qx�V�Y���$�e64o�i�-B�K�]ń�]���:%�]H��SIԄ\�M�݄�L�G���Ǹ�������L"E!�3)n7��!W�B��E	F�ל.�o���������a�Ѕ$߉�q��+���X�$�5���+V(��h�$��ς�19�U�}�	F|/J0zj/`�*�^��U���̫P{�W�� ���	 ���	 �n8�I(j/!9�^���P{9�|ɐ_��'�O'�z�hG���D�vQtq�2G�QƠϩ�����?u-�3CaS1R/
/�r��E{��CW�4e��ʺ�\� _����W//d��ze�Ed�E7e�E�d�}����\o/�C]�E�`���U���EE�:Y���O�\o':��afݗ�C]������:��qD����:�BGT�
Q�#*tD����:�BGT3���:�BGT�
Q�#*tD����:�BGT3���:�BGT�
Q�#jtD���gQ�#jtD����5:�FG��Q�#��e~�Ee���55���qM��	�["sM����55��F���]S�kjtM=�]S�kjtM����55��E״�v�5-��E״�]ӢkZtM��i�5-��״�]Ӣk�״�]ӢkZtM��i�5-��E״�]Ӣk�״�]ӢkZtM��i�5	�H�<�f�H�<�0�$�#	�H�<�0�$�#	�H�<2�(�
3Q���+d%��'+�E��b>���){���Jz�*V()&eY�i�7SR�6�d�0Y��d�0Y&L�	�e�d�0Y&L�	�e�d�0Y&L�	�e�I�	�e�d�0Y&L�	�e�d��b>��
�.�|]�,�u�s�� �o/��F^���� �G\|l��7���bQ��+�DQ��+�E��~�4Wҋ
%��Pr��˔��kAI/ʕ�s���^�+�E{�X����d%�(W2����a&n7������qs��9`�0n7)��C�0R)��Cʀ!e��2`H0�R)��C�0R)��Cʀ!e��2`H�����̼��-����-m�q��7�Ͼ��}&�tߵ���g������w~"K߿��ݿ��&ܨ]o��̸���OV��7��:�5&V���W�nf�Myѷ��zlw�~�鑚|��o���m�Uz�����n{n�˗E�M�˱8��6�_@C^s{���1�	u�E�
�6�n��7I��[G����A��/n^>����]��W_g&���`�(�৶�]�\^Q��
/n��	�ca��-���������4,{�A����E/��F��+(,e���c��;�2�ۋ�yD���	9��\ݰ,A��M���"��¥9�U���p�n٘RQ�&��M���n#��s��\��ng�t���>���m<���L<����?o�ձ��ι�Jowۉ���ӟ��{�'ڡ�,��;�I�l�c>>b�o���X̪?�����c��_�v��V�G�c��{l��:zD���`T�) �����	Z���Yi=~q��v�b}���ӏe�S��^�%�(�ө���7��#&���T�갧�-M���7��6(1vI��x4;������zW���n����:����0�n�(�5��7�����������tܯB���h�OV2l���c���+���o�1Ƿ��9��>>�OOo���3���/p��ٷ_��7sQ�m|����vƤ���X��j���O5���`q�':�:���꫏'7_�d�vO��n���ۋ-?�����o~���աÎ�������2��hP'�ko�k����~���zƄ_��b���K�/{rK}�n��}�����h �N�*c��ߗ�5�}�������������^��ը�k�����C{;)�r��ɛ^��<ې��s��= ��K2s��Nm>9��N��^�+ݞ���u�r�� �m�nYY�>�D���C�����	��d~v�����V����;Vx�p���?���?��8e6{�^���눮:���tcpn]q/�������o��W����4�֣+�l�'��XG����1�f�����'3z�oV���ݏ�:�q���z��>��1i|LT��'��[���玫�E��pec�/zsM�z���w!��h�m1���è��u��Q﫱�����+�����h3F�Q�=��[���U���k繑ǭ��U~�p��l?����д���5۬���n��S�ߎaK��h3��^<8~ݬ���������b|?�|g���OG��O��mw��Y�э~t:n]uތ.�q{�>��B�?������޸����s����9������	G��z�����_���z����ۿ^57�6��✳���nk� ��+6k��c�`�����z����>��@�1��ܸ����h��w���L�p�f�{���Ǿی_�\rɑ�F���7���<�p5�O߾�ܝ���>��d݇5�K9�a�s"��T�3=�e\�/�?�y���mwT.�8�.�j|z%��I�zߝ�����j���u��)�g!�Q�<�������m��ɟ8�>�GT��v�L��|��HZ�E$>�w�9�]>mZ�u�m��O]f,(d���yt�C�׷���~n�Ez�Ż���T7kp��ME~>ҽ�#>E?D�X����Ϗ(!��w:���~=5��fw��6|b�����[�	q�7.X��O��nݰy������_�v��y���rƨߍ���������~;��C3X�����!�7y��y����w�i������Z~ޚo[�;�@1��T��q���8u>�����?nM��0���OU��	������gMI�g���l䔲lw    ��}r�,����������i	�����tC��u��D��I�"�����Ϙ�E�&[McK����vAx4\��i;a��ӴЯ&oQx�َ��ځ�3��0=�a�v����s,��n���Eh�=~����y�z�+��z �h�ܿ}$wx��Lm�?+q���f��%Gx�ANZ���C�m��y�k#_�һ�=7t����&o�D*���>�2n����S�&xy�����Tۻiv���ބ�s���/��L�y���y>.�%�}]�Ӗla�qw"�v���G�/��qrN8����Sʑ%{c�z3F��_��˨�0f?��ӡ'�=�(����Q��Jk��vK�3�����g��˯��֧���3S�t:O��m�:���9��v�������.=$?��{?��<)�}��.cIp�wt��
"_mw#�����(������đ�m���������,�1�p��a��M�e��Q��2�1�]��w�p��l�؜cgݛi|�ԗ�.�od�բ���u�rج;dQ,F�Ǜ���:�$?=��]�{�^<]�7���<���i~5�R���c%��Μ1t����]_�޺��}�W�����]#�y�}�]6�|�=����1��l�M��i���C�;>fa�.���	:�X�����qt�c��_���h���v2�X��\,�N���/~����ģ�q���Fۮ��"��)Yr�ll`wr�_��K&�����3�i���Q�=���^^F�w��S����]0������[Q�;��h�G˜&�ø�s��~!�7�{�'�v	����<��c·�-(%��{A�)��Y�N\�&��D��sm��O�r���$��n3c�?lƮկ����4 ��jO��q|�f�|�A����w�/������qb���vص�Yg��=��x:_l),o�ᛯ�Q�~�8��~6����l��i�C?��S�G��1;o=�ڰ>j��Q�Ǒ֮O����1�'x�u<�9�x'D+d�F�U�d�n�d�y�E��"�N~�2����:�\d��5:-?��I��	":�ňwY��/�\�}�#}������/9j���C��8~8��/�!��9�+��,<�U���Y�k.b��|g�N;�Ӟ�˸:�3�7ݥŎ�O_�aqIt�O�/�ܼ�Dro@��鱉w�m!��6�]������������&����h;��TO�}£�ʍ�␐�󦭣��e�='ϛ���<o:�-�����I�y�/��I�{����'���d����P�x�,�7���	"��r�)�R�ԧ�z��~�d~�*ؾF�'�*��HК�oz����Eq{�ߙ���3����$wH���I��9�8��wq'��d�D��]~*�ڄ�8�L�M�M:q��$*�`yY�ˉ�-X�� �tH����{/�a�?�ig^��ߧS�/��c�"g��E��d�,{}wβ��|t8�Tf�~�`vY�I��8�a�S
}+�ꫪ��P�p�i#���C�"��&���S'7�yQ�D|s�Ny�#^�.5G��<�~'��9�{�;������ᄚ��j�|%�>�ℚ3�g'Ԝg��,@���<��E�I<>�abg��x��<��7��30��.g�.f��&ݏ�{:�!���8��8S�#��X�󻼟7,J�p���;�+���z^�t^�*3Yeﺬ�ޒwZ�CK�u�%Cq���fz̝�O��x�����(�My:��ev����J���Y;\�8k���p��._����p��._�i��l�|q�]�i�|��&���(ޤ���D�M:߾�e� ��7o����L'j8��6Q�O퓈�>��o�ʵ�6)�RU9���ӛt�>��'��c��ż=�Ԥ�]eH�߼�����{o�lJ�ư�S��{Ѷ�]�k<��#QW	��)�þ�~" ߋBU��x�x<�y�<�_�����2�%����M�����1�Sґ�a�T�tA� >*���������x��&�o��GQT��A0�|?�I�S���m�eS�^���2�n�ؔ�>�BcS�/�B��ώ�ޔH��gg�oJ����G�|��,�`��73�1;5)}2h*?h*_��0ƀ�1 `x8������g�����3��sѸ�0��3.?�c@�0�c@�0�c@�0�c@�0<���J�0�c@�0�N��O����yQ	ƀ�1 `ƀ�1 `ƀ�G��K�0�c@�����K�0��0�c@������0��=.?8,O�o�|��,�`�f��" ����`�z�Y� �B�P
C!`(�k�S�ON�u|�9l��u�n���Ɋ�:��kx*F���^$�1=%j�����b�sMG�;Q�\�)�(7�/+3E�
�T!���`S�~��
v����E�
AW!�*]�����I���N�E�f�Ь�B�BhV����3��(*�Y!4+�f�Ь�B�BhV�
�/���B�BhV�
�Y!4+�f��wV��Jh�k,���f�Ь�B�BhV�
�Y!4+�f�Ь���b	�
�Y!4+�f��zxۗЬ��4+�f�Ь��Un����
��hQ 8�!µ� n�Of >������XQ��0X��0XS�HqM[����E��d �I�� \"���9d��a~�1?��3�H\�U��lS2�nsk�d@cb1M�z���-�(n�sˋ��peF2�cэv�7g�(]6���'�;�����l�I�η�^6�r%;���^��b�E���ۉ
��(����\��.]���Ӌ�1$���:N�Y�ڋ�#�`�����䈓��H�	/��D��^���E��NT��E��!Ә�i�Ħ�O	�^*�eb�F^�k䏘�5�܃�nZ/�R8�頞��4fu���k7!ћ4�\����L#/�5�2D�Φ�5ʒFX�姲�B#�iL�4�S�ȯ1#јh́4Ní4�X�Y#�kLS5&�P�����Yc��1ט�jL��hb��	,._�
_�WB*�11�k����,W֘Oi��474�X�<�ɿƤ���'��\c&�1q՘Yj̋5&���-y���"%�i�$P�m�P�:��؉�����^�e~���y�Xi�,���#g)�ԑ��1uQ���"ܠ-{m�Θ򎜥�� �	�?�.�����%?��mq2wd����|{��!��^w��˘S��]ϩ�1�Bt+���L���2KCtQ�p:�Ċ8I7���<\�Լhm�q��βu=��kL�5��|!�)q�0-�"-�*8Gyi>(RŎeޔ%���H��)e-28���<x}D"�D���$��L3����X�0�'L�i&-#L��2��0���$�0I"L�3"�ĆpR�e��o	Q�pR�0� ��"����s
�0 �nB���I-��7	ѕJ	'�3.�L�0�#�=	:¤�0�$o���	s�0�!Lm	�X�d�0� ��"��0�ܓ0�"�	�|�0s��I-�I-�I-�<�p�f��������p��fЎ�ю��f������� �A�0� `��0� `3� `��a0�A�0� `��a0�A�0� `��af � `��a0�A�0� `��a0�A�0� `��a0�A�0� `��a0�A�0f0�A�0�� �A�0� `��0� `3� `��ag �bܷ3q�b����L'bg.�D������e���&sY'jn2��O�*��f�Wn���sG}K��A���n:4�}6N��oOzn���e?�]R��~����Sa���߭g�t���UN��K7cm����Ow�?���ؚo�7N��&���-��j�'3�̨�Y�Ь)+�f}� ��}5�ә��ؙd�bNbgr���-/"�D�uQ�1+�L-lyŰ�n�βT�R�|���ʄŕ	�+�!,�9ظ�G&6.0�5�6.0Č֦N    �m\`�#2+�_+ 6-0�j�[7wQtQ�ش��Q���/0��^ƪ�F�kE�����/��H���E�*ڵфW��]R��aQt�+LIk�Dl�C��t�dE�'��=��Iq�g`�Y�̬M��[��[y������*�լOgV���f}:�
�J5듙�*��e�լOgV1o]���fMs�լO�`��I5�S�����L�[��j�'���*z5듙�:L����O���5O��9��0�KS��a�W�3\�,�X�x]�J��M��ڦE��0d#��XzȨ-6Q�򥇌Cd#�Xz��H6R�z��P驒Lc��]�ΐ��l"��u/Js�2&���&���&��'��<'��~�/=L�g���F����2ޚEޚ��&��j/�����3d�,9Wr�!2L�u���e#N.=0[%��1K���}f#�Kv�|����4,Ϗ��<ǋ.'VX���߭.�e�]�օ��Ux,��l�����'�LytL�j֧C'f��Փzk���լO�K1������*Y�լOg�&q�Y�ά����>�Y_'�z5��A�*d=�YŹլOgV����N�ޤ=]լO�|~J��OiV�g��Q��tf�ͱ�����,�?1L<J�.��]�NVlk����1��S�N�P�<ы���N԰h�=�����i�d�U�t��/��^N�����S�����֑�.�uĦy�������:�`8���Z���=T����[G�jq��W�y�ئ���ޯӄ�4������bs:�BlN���dK3^��<I��U$6��c��ǥF���W�"oy6�������j.^,�e��w�RL�f��=3l0�%�M!��)�.mֈ)�E�
S0�P�-6�B\��3�ۋ��W//&QV�lw�BlgS�k��b�8�B��Ŧ���.Y���J16����^4����{Ò��4��A%*iPI�JTҠ���� ��	%�(�m�Oz�M��qg�,�
qM�l�4ϋ55/*����z^S�xA�mS^��ڰP�<�ԋ�sW����i�=��*v�J������l�Q�Vxqs2��^��vЋ��O��p��^��rS8Qa
/�M�E�)��0��p��^��B�.P��P�w�[�7��n���o���Xo��Ao�߹�҃��	.��/^��M���6����~��e%nB�o�\���8/�a�D�:ا��pHe�4
/�i�E�9L	/�/�(�xȚ�\���ԙ,��-�.��<�e������-�����S<[�w�ud&Cp����v��i9������>'��`|��N��(��	%o�tl<.��l�����<yQ���D^�"/���ȋ�@�DE �< �A^K3�ki��Ҕ؋J�ԻA�ԻA�ԻA�Ի)��I��,�`6�L�	n dS�$��R@6�L�	�	dS�$8�Bܵ+�_�B��w��eʘ�.08O�)R�5J)c�>@��"c�J�,�WD�p�dy�������e�Nė�
SD�D��Y$j�O�sW [~��̋̋�*D'�$x��w��v�\v�\.L��\v�\v�\v��eL\�RLI�?�?�?�?�?�VH�k�l�Y�F�3�3�ݑ�b�3
QQ�,y�+fɓB�P
C!`(�["�P�|�p��;�8�=�Y����d��~Pߩ������nh���׾��/I�~��m�|"2���X��LG��K2=������^ϫ���iΣ���O$U�?{��y�j�g8�UM���CGkU�X�/��	nB�P6�	���@(;�n����XBT���XN�87��ۀå�K�.8\f���Lp�l�i����pNl�9�����Kι��؀�]Nm8�5�<\��^��q6���s��f���p:
.4粲�������g��)�	�[��,�(w]V��q�i�H5n>;d=�������ȼ%����sd^����Ë�������NS�R��g����I���<�<tZf5�8��YM�^?�^5�3���C���?�������������J!�J!�J!�J!�J!�J!�J!�J!�J������������Jᒈ�%�K"
�D.�(\Q�$�pID�,�(\Q�$�pIDU>�ra�򹖋��ϵ��+�k��S�\����Z,�T>�b��8�[M��Ne�,p*g��S�8�^���6=>�@U�β1�t�����
��
��
��
��
���b�3��̌m�3�=ֵǺ�X���c]���1\!1\!1\�����������1\!1\!1\!1\!1\#��	هD��H��3�n�O���'�y˵Ƶ(����"����\�.��T�iG�!��f�8$��xL�ƥ.�K]ڟj�E鋰��ee�_�ߵ0^U~�b9s_s�e���5�,p�p�	8�P�X�����N%�.���P�X����&d������l��g\���ϸ����7�o48�hp���|���F��F�7^��T9�hp&��L���DS�$f<�i6֋��،Z��Z�g������<�.7Xƶ��E��2�d0O��'h'Q6A�E�mvx�F2�F2�dV/�͚��]O�w��(=c�O������& =�	@�&�ɪ�)�[5�0YՋr�f[&����U'QfU/ʭ�]�qہ�m�U�(�j�A����@�H��.�ζh�)�� }�G�k<"_���{Qyҽ�WQn��l}��h<[_��NtD驠�1$[;��@��o1�x��(����Sp��k4^ޠ�*��$h<���v����4^�0�b�S`-o�x��(
��
�+��=eV���XfU����N�ņru��b��Y,�ԝ"���Sd��Sw�,f�ʙ_&���"���2\;��9��H����x��'��J�4�s���4is}�_`�%��4����'���ż�$J�1M8�Y�9��W�%�exJ����T�5�)
� :;1A�Y�/i�xH��C�H��m��q�]���t��n��Z�AK7h�-ݠ��t��n��Z�AK7h�-ݠ��K7h�FZ�S��(���8�9�z�#��#=M:y*Bj#�Mk�MO����|n=�=N#�Z#�zjI/ʧ+3��F�5[�|3
���`ΙN�N���̚��ֳN�&��'uG�br�ѵ`��G./pꖜ�Nݒ�P����Ne�/p*C~A���ż^���H�y��i�������9w̋����e{�y2�cŶ�p��䉕בM�Fw]��O�vw9s����̡��w9s�u(^LE�D�t\vM��k����}���	7��'��N�ѝp�;�vB.*!�xJ3�SB�)!˔�RJ�%d�2C	i���OB�'�0<	��tNB�&!���IH�$�[R\���!���HH����L1C���P��g�7l��O.��|}f5�3���޳%M_��-d���lрSҋ�ʐ^,�T��b�2�8�!�X���EL�4	7i��b��tin�%l�%�mK�1�p�-�f^B�0�^aBJ1!=�pW+��^�ͩ���	7��)���_���p�,�_���{�	�"nX&�Ҁi��K�<&dWR�	�Ȅ4cB3!S��[Kȭ�"-!����L�O&d�rw	����gB�.!O���K3<]B�.!)���K��%d�2p	鶄t[Bn-�pk�:��mpG�AR�AR�AR�AR.URA����P���T>�b��8��X��|��N�C/p*z��S�Ћ�ʇ^��Kȭ%��rk	����YB�,!����J�~%d������j��j��jfدٯٯٯٯٯٯٯٯٯٯf��j��j��j��j��j��j��j��j��j��jfدٯٯٯٯٯٯٯٯٯٯٯٯf��Z�_,hV��b��,�ES��2^������4}e/d��2^4�T��b���8�e�X��,��Ne/p*�x��� ��̰����������������������� �  ����������������������������������� �� �� �� �� �� �� �� �� ��̰������������������������ �� �� �� �� �� �� �� �� ��̰�-N�[$[$[$[$[$�9�qe/�T��bC��2^l(RYƋ��2^0�T���"�"�"�"�"�ΐ�L%6/�*�y�W�͋%U�ؼX����M/������������s	����\�`.a0�0���-�-����"��"��"��"��"��"��"��"��"��"����-�-�-�-�-�-�-��G��,i�Tg�Tg;Cu�Hu�Hu�Hu�Hu�Hu�Hu�Hu�Hu�Hu�Hu�Hu�sT��k^,fV^�b����E3��k^d���4}�5/d��k^4�T^�b��8�׼X�����N�5/p*�y��a�����v��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l��l���砝D�A��"��"��ΐ�-��-��-��-��-��-��-��-��-�����"��"��"��"��"��"��"��"��"��"��ΐ�-��-��-��-��-��-��-��-��-��-�����G��>��aQ��(r�9Wl��9��X�0/�T�bÎ�a^l�Q9̋��a^0�T�b��8�P�P�����N%/p*�xA�B�EB�EB�EB�EB����˧�bl��{�,ϲH�.�ܼ������e�/��N�j|3��T��ze�M�3�b0�3�$΀�8L⸲.����E�s���7𜃒L:JJ�sP��1BIɆJ2�C()	Ңb�����l��dCKQ���>%�� ��l�$��%%A:(���BIə+��頤$H�%Z�
%%:(ɋ�BIɐJ�:�PR�����d%��<jQ�BII�JJ�txQ����PR��%�()�`��<�)��w�$��	%�R��X��\�Jʕ��� yQ���J:Q���JzQ��JzQ����b��NT(�E��r�^��+'�Yo9Q��,V�-��ޜp	��t~Лs����u-����Ao9�_�X�E��fFoONzCx�RoO^T��ɉ@oO^T�=W.c$%��{v2r���Y�S^!ʇ�B�I�X�uU���W��
�_!�+@�8>���I���yf���3���n�YtT\7�<���b��b��b53(V8(V8(V8(V8(V8(V8(V8(V8(V8(V8^T8^T3�E��E��E��E��E��E��E��E��E��E��E��E53^T8^T8^T8^T8^T8^T8^T8^T8^T8^T�8��BI�8J2�A()IhAI^�JJ^ZP�W�����&*V()yiAI�K�/6�d3�d�J6�d�J6�d�J6�d�J6�d�J6�$��4�$I%��8H��s)��V�ʊe�u��u534W84W84W84W84W84W84W84W84W84W84W84W3�p��p��p��p��p��p��p��p��p��p��p��p53W8W8W8W8W8Ws�p������W����fy`��@$�<Cd�DY�.�Xf�8��qfA�2���l�8٠q�A�d��e���R]�-4.3h̨4fT3*=�Qį4fT3*��ƌJcF�1�ҘQį�E�J�%*iPI�JTҠ��4��A%*iJ%��Q�
%��Qcڨ1mԘ6jL5����T�B�,mԘ6j�;�p�qrZ� �FԈ�P#jD@��5"�FԈ�P�䴞E���5��FP��AQ#(jE���5���E���5��FP��AQ�+ܡ�&5¤F���aR#Lj�I�0�&�Lj�IB�$�IB���$�IB�$�IB�$�IB�$�IB�$�IB�$�I��IB�$�IB�$�IB�$�IB�$�IB�$�IB���$�IB�$�IB�$�IB�$�IB�$�IB�$�I��IB�$�IB�$�IB�$�IB�$�IB�$�]�B�lv�pv�pv�pv�pv�pv�pv%U�P2�]!�]!�]�B�lv�pv�pv�pv�pv�pv�pv%U�P2�]!�]�T��Q�A%T�A%T�A%T�A%T�A%�R�,�#���:����:¬�0�#���:¬�0�#���:¬�0�#��h&�#���:¬�0�#���:¬�0�#���:¬�f�:¬�0�#���:¬�0�#��s8��0�#��s8��0�#��h&�#��,�ps8;���,a�Ű�OX[�S����؆5�w.���oO�����e?�.~=�&_�ձ�k�����/�o�Bw~��];���1�ٱͲ��$��$qܑ����&y�&��j��?�-�-��h�3������q�fm�g&1�ђ�<��������,`�M)����$�V<W��Xe��x��/r8�%g���*�G|Ǒ��ɟ��I�w�X��Y�)�!���I��x9��`��~���3^_^��~,��̜�y���Om�e�)[h��B[m�e�i�0=x�_m�g&^B��_���z���xn��=㉼g<���*[�����	��2��;΅�M�,P�qS�q^dm�g�*&U�/U�
�Z?�Y�g<k��g�'`j�8'�6�3S�������I�	����M�L��T`Z����A`"&�&ʁ�:�C�M� 0�M���Ku9�.G���r9/��.�1��q�sm�g�3��;�v�M�,�`���G>�&y�\�7�T�/L��!�������&����-ѵɟ	���G�&y&`2L�*]�䙀�T`Z��A`2L�@ʶw�]�����k�?�$Ń�+W�?
���x�J�@���h��4��0���@�|)�]l���F;ѫ�i'�4��ډ^��J;�M~�v8g��;Q�\�8/�nw�,����v�P�^�u͢�_>mR%>ͯ�v�x�xݰ(��k�������-w�&��ۉB�[�F_x�*��|���h���NT\��D��蝳}~s�;�M��j�Q�L�5Q�uc+^gm�E�d[�}a�r�G۔1f���t�?l6ۮ_}�cI{�s�՞����^�'��q�13�~�� ���?[��G:����޿uߜb]Oǭ�5ӏ3��2����#��lp���7_�~<mW��߶�[3ƫ�ǫ��H&�?�"���&������j��u۞\����;�n�����pv����m��-��q��/�7��z~1��>��+�vo�
��j+ۼ�x��ͯ_~*�O�G^^�����zD��p������No����E��ȳ����F�����r;ƇLІ����^���3t�ޣ&����m��Q��(�YگU����z����wլ?/��������<�1<����Ù^U�_���f�L��N]M������~A��w�-`z�^���륓˘�T�_�����j�z�RN�\Ns�k�������������q      �   z  x�E�An�0D�ur�����iDe;����/h�������������?���~����:ۿ�+��s������akX�ְ�u�c�X�&6��Mlb�m0o0o0o0o0o0o�������y;�+���-���{bO�=�n�k�y�}�M[i�J�Vj;���Vj;�kX�ְ�5�c��ٱ���7��D q �K��7=��eg*[)�����份��zg��ٴ���4m�e�_u�}���ҲѯZ���l���b��b��5�akX�:ֱΝ�X�6��D D�j����W�4_U���k�Ml�]^�ΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈ�{/�^��{��ռ~sg�o����� �      �   d  x��Wˮ�6]�_�]R�WH��vY�E��-�.�W��I)R��ɪ��]�q�	�I��g��%?��fa����<f(�W:'(�Dީ֨>�؛�#����ΚX}oR2�d��I龷�����6h��NQu:B�$�_�j�ot���De�>S�?>��~m�V�-B��9��O��M��͑6�\��Q2A�����C��̓�Q��w���i^���p��������n��p$�U��5Ũ]���'����q��p��o�����h:�p�6#�o�\9t�~GF���`Nԛ�T�1�b�c�E�"dc�ဋK�!�Y��9�Z�şv8 RL*;aj�!�9�z���7����z-+���-��"O��x�#á����v�ã�hd!��C���&j:rdB���W:\�of��x��&LB�n�YRьD���L3�X1A�&F�s1CVL��[�szfɖe�i�I��R� ��T0R����x���|�L�c N���r�
�L,C�Y������&�A$!>����Xr%M��m�u7L2k5�Z��]��̰���m�?K��w,;�ؐ�H���cُ8j�X�8�w�"JD�YY��v�Һl\��#�	�ɺ��w���1��ά�ސ��f�����;�H��M�C�^�Fz��B1�����>��Xzv���(���{����&��nϓN#KRes�	��	�n6���줭����)�Q@`�1�9�Z*Ç�ԊR�4�acR]}��C�3��\�x�����}�O��=�{�mY�
2�^*�5}�e�:
���.",�ǩ~�IMc�f?dG��W>�G$�ɱ]�zŔ�-+)�7'w/�����ܝ:C�����o��?�"�B����`I��L)�3]��)���z��@G��K����ӕޟ�g��&y|P}�n=�Ӛkq+�4=�Ȍ��".> 3|Q�b�c�c.d�0a�R��ѭ\lx{���=q�^+2��XX#��.+'$�U�V}s�{����{�K��`�]L�n���"�6�x)�#���羘O.�k{pK�����:�W��q��K�M��@r��Hr�
e[�������w�X.Y�&�{��Q`�ė�\����\�������^�7�w���쫏p,�y�;�ŉG�dr��Ȓ
AR�ol\2�r76��1ݱ���S�A���$�qO�`�~g��n*s�z񃝵.����c�F�,Ű�j��+*�X2��>�y<��S�&+^��g����ƞ�����#�M7��rr;�[]>�ʅ����1�����|Yu82�.NT�=7���������	�$MR� ��d��E��nz�_F�D򑂯ǌ��L��*x���m������W��+t�>      �   �  x��S͎�0>�O�[Ab+���F���%�xKi�u�j^����5�b�ig�Y�=�&���/��S���zæP��Xg�R���ݡ���M����R�dQN&
�u�uow��Ȕ7��8�)f�6�8�J%���~A�_���w�ü�, �;
T�N'o�\SG!*uD�YJ9�A��ʺ@�'O���*�xN>R�I. X!������y��E}��󇗐c(�Ӵ�f0N0)n�RWp,�-;�IX���J���u��O��w����}~�}�Ŝ�4��ɖ.Ī���M=o�v�8��Q�y�nDHƊ�f��=�}��Əp4�-�mAM�k��w����L+�D� ��O(�T�֯�'<T��iR)r�e�wl��:g�]�m�3�$���ѫFv�آ�~e�!�;�HQL�����I"�OF�qB�����Z���FtY_Uox��BV��7W�����@�=�G	-eշ	�c��7��������^��c��� �zc      �   �   x�M�A� E��a�bն��	���Rh������_x������%��e,9�:��;�������a ��)��T��x*̢1�Ec(%Z���d蠀��v��%mA� �h�TX1��?a���"+%�I�����\���z-˚l���V���H!U��1��T�Qْ��?��д�BD��u�      �   /   x�3�4L-R()��M-.)J����8�Rф�9�хL8MЅb���� Q�      �   �   x�]��n� ���)�OJE�ԗ��B!b�R:呶�n;�/6`�	���+��#E���L��/8��R<���/&j2�yS��HKtk@��L�� ��D��Ox|7,y`7ώ��HCXu��Z���^�U�F
ɸ@��b��L�b�V�G�ޝ��5G��*�l4�%�b��yʲ�W)�ܶ���[\��2�V[�����&�Ҧ]B�0I��A`wT����?��u�����)�~ {��      �      x������ � �      �      x������ � �      �      x������ � �     