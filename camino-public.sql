PGDMP                         x           camino_public    12.3    12.3 �   t           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            u           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            v           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            w           1262    1107552    camino_public    DATABASE     k   CREATE DATABASE camino_public WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE camino_public;
                postgres    false                       1259    1107386    a__etapes_types    TABLE     �   CREATE TABLE public.a__etapes_types (
    etape_type_id character varying(3) NOT NULL,
    public_lecture boolean,
    entreprises_lecture boolean
);
 #   DROP TABLE public.a__etapes_types;
       public         heap    postgres    false                       1259    1107391     a__titres_types__administrations    TABLE     �   CREATE TABLE public.a__titres_types__administrations (
    administration_id character varying(255) NOT NULL,
    titre_type_id character varying(255) NOT NULL,
    gestionnaire boolean NOT NULL,
    associee boolean NOT NULL
);
 4   DROP TABLE public.a__titres_types__administrations;
       public         heap    postgres    false                       1259    1107366    a__titres_types__titres_statuts    TABLE     �   CREATE TABLE public.a__titres_types__titres_statuts (
    titre_type_id character varying(255) NOT NULL,
    titre_statut_id character varying(255) NOT NULL,
    public_lecture boolean NOT NULL
);
 3   DROP TABLE public.a__titres_types__titres_statuts;
       public         heap    postgres    false                       1259    1107234    activites_statuts    TABLE     �   CREATE TABLE public.activites_statuts (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    couleur character varying(16) NOT NULL
);
 %   DROP TABLE public.activites_statuts;
       public         heap    postgres    false                       1259    1107152    activites_types    TABLE     *  CREATE TABLE public.activites_types (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    sections jsonb[] NOT NULL,
    frequence_id character varying(3) NOT NULL,
    date_debut character varying(255) NOT NULL,
    delai_mois integer,
    ordre integer NOT NULL
);
 #   DROP TABLE public.activites_types;
       public         heap    postgres    false                       1259    1107200     activites_types__administrations    TABLE     �   CREATE TABLE public.activites_types__administrations (
    activite_type_id character varying(3) NOT NULL,
    administration_id character varying(64) NOT NULL
);
 4   DROP TABLE public.activites_types__administrations;
       public         heap    postgres    false                       1259    1107217     activites_types__documents_types    TABLE     �   CREATE TABLE public.activites_types__documents_types (
    activite_type_id character varying(3) NOT NULL,
    document_type_id character varying(3) NOT NULL
);
 4   DROP TABLE public.activites_types__documents_types;
       public         heap    postgres    false                       1259    1107183    activites_types__pays    TABLE     �   CREATE TABLE public.activites_types__pays (
    pays_id character varying(3) NOT NULL,
    activite_type_id character varying(3) NOT NULL
);
 )   DROP TABLE public.activites_types__pays;
       public         heap    postgres    false            �            1259    1106803    administrations    TABLE     c  CREATE TABLE public.administrations (
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
       public         heap    postgres    false            �            1259    1106798    administrations_types    TABLE     �   CREATE TABLE public.administrations_types (
    id character varying(64) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer
);
 )   DROP TABLE public.administrations_types;
       public         heap    postgres    false            �            1259    1106737    annees    TABLE     �   CREATE TABLE public.annees (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    frequence_id character varying(3)
);
    DROP TABLE public.annees;
       public         heap    postgres    false            �            1259    1106718    communes    TABLE     �   CREATE TABLE public.communes (
    id character varying(5) NOT NULL,
    nom character varying(255) NOT NULL,
    departement_id character varying(3) NOT NULL,
    surface integer
);
    DROP TABLE public.communes;
       public         heap    postgres    false                       1259    1107518    definitions    TABLE     �   CREATE TABLE public.definitions (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    "table" character varying(255),
    ordre integer NOT NULL,
    description text
);
    DROP TABLE public.definitions;
       public         heap    postgres    false            �            1259    1106520    demarches_statuts    TABLE     �   CREATE TABLE public.demarches_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    description text,
    couleur character varying(16) NOT NULL,
    ordre integer NOT NULL
);
 %   DROP TABLE public.demarches_statuts;
       public         heap    postgres    false            �            1259    1106492    demarches_types    TABLE     :  CREATE TABLE public.demarches_types (
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
       public         heap    postgres    false            �            1259    1106707    departements    TABLE     �   CREATE TABLE public.departements (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    region_id character varying(2) NOT NULL,
    cheflieu_id character varying(5)
);
     DROP TABLE public.departements;
       public         heap    postgres    false            �            1259    1106600    devises    TABLE     �   CREATE TABLE public.devises (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer
);
    DROP TABLE public.devises;
       public         heap    postgres    false                       1259    1107463 	   documents    TABLE     y  CREATE TABLE public.documents (
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
       public         heap    postgres    false            �            1259    1106592    documents_types    TABLE     �   CREATE TABLE public.documents_types (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    repertoire character varying(255) NOT NULL
);
 #   DROP TABLE public.documents_types;
       public         heap    postgres    false            �            1259    1106446    domaines    TABLE     �   CREATE TABLE public.domaines (
    id character varying(1) NOT NULL,
    nom character varying(255) NOT NULL,
    description text,
    ordre integer NOT NULL
);
    DROP TABLE public.domaines;
       public         heap    postgres    false            �            1259    1106776    entreprises    TABLE     ]  CREATE TABLE public.entreprises (
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
       public         heap    postgres    false            �            1259    1106784    entreprises_etablissements    TABLE       CREATE TABLE public.entreprises_etablissements (
    id character varying(64) NOT NULL,
    entreprise_id character varying(64) NOT NULL,
    nom character varying(255),
    legal_siret character varying(255),
    date_debut character varying(10),
    date_fin character varying(10)
);
 .   DROP TABLE public.entreprises_etablissements;
       public         heap    postgres    false            �            1259    1106567    etapes_statuts    TABLE     �   CREATE TABLE public.etapes_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    description text,
    couleur character varying(16) NOT NULL,
    ordre integer NOT NULL
);
 "   DROP TABLE public.etapes_statuts;
       public         heap    postgres    false            �            1259    1106533    etapes_types    TABLE     �  CREATE TABLE public.etapes_types (
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
       public         heap    postgres    false            �            1259    1106575    etapes_types__etapes_statuts    TABLE     �   CREATE TABLE public.etapes_types__etapes_statuts (
    etape_type_id character varying(7) NOT NULL,
    etape_statut_id character varying(3) NOT NULL,
    ordre integer
);
 0   DROP TABLE public.etapes_types__etapes_statuts;
       public         heap    postgres    false            �            1259    1106729 
   frequences    TABLE     �   CREATE TABLE public.frequences (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    periodes_nom character varying(255)
);
    DROP TABLE public.frequences;
       public         heap    postgres    false            �            1259    1106613    geo_systemes    TABLE       CREATE TABLE public.geo_systemes (
    id character varying(5) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer,
    unite_id character varying(3) NOT NULL,
    zone character varying(255),
    definition_proj4 character varying(255)
);
     DROP TABLE public.geo_systemes;
       public         heap    postgres    false            �            1259    1106441    globales    TABLE     f   CREATE TABLE public.globales (
    id character varying(255) NOT NULL,
    valeur boolean NOT NULL
);
    DROP TABLE public.globales;
       public         heap    postgres    false            �            1259    1106427    knex_migrations    TABLE     �   CREATE TABLE public.knex_migrations (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);
 #   DROP TABLE public.knex_migrations;
       public         heap    postgres    false            �            1259    1106425    knex_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.knex_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.knex_migrations_id_seq;
       public          postgres    false    203            x           0    0    knex_migrations_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.knex_migrations_id_seq OWNED BY public.knex_migrations.id;
          public          postgres    false    202            �            1259    1106435    knex_migrations_lock    TABLE     `   CREATE TABLE public.knex_migrations_lock (
    index integer NOT NULL,
    is_locked integer
);
 (   DROP TABLE public.knex_migrations_lock;
       public         heap    postgres    false            �            1259    1106433    knex_migrations_lock_index_seq    SEQUENCE     �   CREATE SEQUENCE public.knex_migrations_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.knex_migrations_lock_index_seq;
       public          postgres    false    205            y           0    0    knex_migrations_lock_index_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNED BY public.knex_migrations_lock.index;
          public          postgres    false    204            �            1259    1106759    mois    TABLE     �   CREATE TABLE public.mois (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    frequence_id character varying(3),
    trimestre_id integer
);
    DROP TABLE public.mois;
       public         heap    postgres    false            �            1259    1106688    pays    TABLE     �   CREATE TABLE public.pays (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    timezone character varying(255)
);
    DROP TABLE public.pays;
       public         heap    postgres    false            �            1259    1106829    permissions    TABLE     �   CREATE TABLE public.permissions (
    id character varying(12) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer
);
    DROP TABLE public.permissions;
       public         heap    postgres    false            �            1259    1106528    phases_statuts    TABLE     �   CREATE TABLE public.phases_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    couleur character varying(16) NOT NULL
);
 "   DROP TABLE public.phases_statuts;
       public         heap    postgres    false                       1259    1107437 .   r__titres_types__etapes_types__administrations    TABLE     _  CREATE TABLE public.r__titres_types__etapes_types__administrations (
    administration_id character varying(255) NOT NULL,
    titre_type_id character varying(255) NOT NULL,
    etape_type_id character varying(255) NOT NULL,
    lecture_interdit boolean NOT NULL,
    creation_interdit boolean NOT NULL,
    modification_interdit boolean NOT NULL
);
 B   DROP TABLE public.r__titres_types__etapes_types__administrations;
       public         heap    postgres    false                       1259    1107411 0   r__titres_types__titres_statuts__administrations    TABLE     �  CREATE TABLE public.r__titres_types__titres_statuts__administrations (
    administration_id character varying(255) NOT NULL,
    titre_type_id character varying(255) NOT NULL,
    titre_statut_id character varying(255) NOT NULL,
    titres_modification_interdit boolean NOT NULL,
    demarches_modification_interdit boolean NOT NULL,
    etapes_modification_interdit boolean NOT NULL
);
 D   DROP TABLE public.r__titres_types__titres_statuts__administrations;
       public         heap    postgres    false            �            1259    1106627    references_types    TABLE     x   CREATE TABLE public.references_types (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL
);
 $   DROP TABLE public.references_types;
       public         heap    postgres    false            �            1259    1106696    regions    TABLE     �   CREATE TABLE public.regions (
    id character varying(2) NOT NULL,
    nom character varying(255),
    pays_id character varying(3) NOT NULL,
    cheflieu_id character varying(5)
);
    DROP TABLE public.regions;
       public         heap    postgres    false            �            1259    1106660 
   substances    TABLE     �   CREATE TABLE public.substances (
    id character varying(4) NOT NULL,
    nom character varying(255) NOT NULL,
    symbole character varying(255),
    gerep integer,
    description character varying(2048)
);
    DROP TABLE public.substances;
       public         heap    postgres    false            �            1259    1106668    substances__substances_legales    TABLE     �   CREATE TABLE public.substances__substances_legales (
    substance_id character varying(255) NOT NULL,
    substance_legale_id character varying(255) NOT NULL
);
 2   DROP TABLE public.substances__substances_legales;
       public         heap    postgres    false            �            1259    1106640    substances_legales    TABLE     �   CREATE TABLE public.substances_legales (
    id character varying(255) NOT NULL,
    nom character varying(255) NOT NULL,
    domaine_id character varying(1) NOT NULL,
    description text,
    substance_legale_code_id character varying(255) NOT NULL
);
 &   DROP TABLE public.substances_legales;
       public         heap    postgres    false            �            1259    1106632    substances_legales_codes    TABLE     �   CREATE TABLE public.substances_legales_codes (
    id character varying(255) NOT NULL,
    nom character varying(255),
    code character varying(255) NOT NULL,
    description text,
    lien character varying(255) NOT NULL,
    ordre integer NOT NULL
);
 ,   DROP TABLE public.substances_legales_codes;
       public         heap    postgres    false            �            1259    1106880    titres    TABLE     �  CREATE TABLE public.titres (
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
       public         heap    postgres    false            	           1259    1107239    titres_activites    TABLE     �  CREATE TABLE public.titres_activites (
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
       public         heap    postgres    false            �            1259    1107045 $   titres_administrations_gestionnaires    TABLE     �   CREATE TABLE public.titres_administrations_gestionnaires (
    titre_id character varying(128) NOT NULL,
    administration_id character varying(64) NOT NULL,
    associee boolean
);
 8   DROP TABLE public.titres_administrations_gestionnaires;
       public         heap    postgres    false            �            1259    1107062    titres_administrations_locales    TABLE     �   CREATE TABLE public.titres_administrations_locales (
    titre_etape_id character varying(128) NOT NULL,
    administration_id character varying(64) NOT NULL,
    associee boolean,
    coordinateur boolean
);
 2   DROP TABLE public.titres_administrations_locales;
       public         heap    postgres    false            �            1259    1107028    titres_amodiataires    TABLE     �   CREATE TABLE public.titres_amodiataires (
    titre_etape_id character varying(128) NOT NULL,
    entreprise_id character varying(64) NOT NULL,
    operateur boolean
);
 '   DROP TABLE public.titres_amodiataires;
       public         heap    postgres    false                        1259    1107108    titres_communes    TABLE     �   CREATE TABLE public.titres_communes (
    titre_etape_id character varying(128) NOT NULL,
    commune_id character varying(8) NOT NULL,
    surface integer
);
 #   DROP TABLE public.titres_communes;
       public         heap    postgres    false            �            1259    1106909    titres_demarches    TABLE     n  CREATE TABLE public.titres_demarches (
    id character varying(128) NOT NULL,
    titre_id character varying(128) NOT NULL,
    type_id character varying(3) NOT NULL,
    statut_id character varying(3) DEFAULT 'ind'::character varying NOT NULL,
    public_lecture boolean DEFAULT false,
    entreprises_lecture boolean DEFAULT false,
    ordre integer DEFAULT 0
);
 $   DROP TABLE public.titres_demarches;
       public         heap    postgres    false            �            1259    1106936    titres_demarches_liens    TABLE     �   CREATE TABLE public.titres_demarches_liens (
    enfant_titre_demarche_id character varying(128) NOT NULL,
    parent_titre_demarche_id character varying(128) NOT NULL
);
 *   DROP TABLE public.titres_demarches_liens;
       public         heap    postgres    false            �            1259    1106968    titres_etapes    TABLE     �  CREATE TABLE public.titres_etapes (
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
       public         heap    postgres    false                       1259    1107501    titres_etapes_justificatifs    TABLE     �   CREATE TABLE public.titres_etapes_justificatifs (
    titre_etape_id character varying(128) NOT NULL,
    document_id character varying(255) NOT NULL
);
 /   DROP TABLE public.titres_etapes_justificatifs;
       public         heap    postgres    false                       1259    1107125    titres_incertitudes    TABLE     C  CREATE TABLE public.titres_incertitudes (
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
       public         heap    postgres    false            �            1259    1106953    titres_phases    TABLE     �   CREATE TABLE public.titres_phases (
    titre_demarche_id character varying(128) NOT NULL,
    statut_id character varying(3) NOT NULL,
    date_debut character varying(10),
    date_fin character varying(10)
);
 !   DROP TABLE public.titres_phases;
       public         heap    postgres    false            �            1259    1107079    titres_points    TABLE     o  CREATE TABLE public.titres_points (
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
       public         heap    postgres    false            �            1259    1107094    titres_points_references    TABLE     �   CREATE TABLE public.titres_points_references (
    id character varying(255) NOT NULL,
    titre_point_id character varying(255),
    geo_systeme_id character varying(5) NOT NULL,
    coordonnees point NOT NULL,
    opposable boolean
);
 ,   DROP TABLE public.titres_points_references;
       public         heap    postgres    false                       1259    1107135    titres_references    TABLE     �   CREATE TABLE public.titres_references (
    titre_id character varying(128) NOT NULL,
    type_id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL
);
 %   DROP TABLE public.titres_references;
       public         heap    postgres    false            �            1259    1106484    titres_statuts    TABLE     �   CREATE TABLE public.titres_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    description text,
    couleur character varying(16) NOT NULL,
    ordre integer
);
 "   DROP TABLE public.titres_statuts;
       public         heap    postgres    false            �            1259    1106994    titres_substances    TABLE     �   CREATE TABLE public.titres_substances (
    titre_etape_id character varying(128) NOT NULL,
    substance_id character varying(4) NOT NULL,
    connexe boolean,
    ordre integer
);
 %   DROP TABLE public.titres_substances;
       public         heap    postgres    false            �            1259    1107011    titres_titulaires    TABLE     �   CREATE TABLE public.titres_titulaires (
    titre_etape_id character varying(128) NOT NULL,
    entreprise_id character varying(64) NOT NULL,
    operateur boolean
);
 %   DROP TABLE public.titres_titulaires;
       public         heap    postgres    false                       1259    1107316    titres_travaux    TABLE     �   CREATE TABLE public.titres_travaux (
    id character varying(128) NOT NULL,
    titre_id character varying(128),
    statut_id character varying(3) DEFAULT 'ind'::character varying,
    type_id character varying(3),
    ordre integer
);
 "   DROP TABLE public.titres_travaux;
       public         heap    postgres    false                       1259    1107340    titres_travaux_etapes    TABLE     4  CREATE TABLE public.titres_travaux_etapes (
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
       public         heap    postgres    false            �            1259    1106462    titres_types    TABLE     �   CREATE TABLE public.titres_types (
    id character varying(3) NOT NULL,
    domaine_id character varying(1) NOT NULL,
    type_id character varying(3) NOT NULL,
    props_etapes_types jsonb[],
    archive boolean
);
     DROP TABLE public.titres_types;
       public         heap    postgres    false                       1259    1107166    titres_types__activites_types    TABLE     �   CREATE TABLE public.titres_types__activites_types (
    titre_type_id character varying(3) NOT NULL,
    activite_type_id character varying(3) NOT NULL
);
 1   DROP TABLE public.titres_types__activites_types;
       public         heap    postgres    false            �            1259    1106500    titres_types__demarches_types    TABLE     �  CREATE TABLE public.titres_types__demarches_types (
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
       public         heap    postgres    false            �            1259    1106541 +   titres_types__demarches_types__etapes_types    TABLE       CREATE TABLE public.titres_types__demarches_types__etapes_types (
    titre_type_id character varying(3) NOT NULL,
    ordre integer,
    demarche_type_id character varying(7) NOT NULL,
    etape_type_id character varying(3) NOT NULL,
    sections jsonb[]
);
 ?   DROP TABLE public.titres_types__demarches_types__etapes_types;
       public         heap    postgres    false            �            1259    1106454    titres_types_types    TABLE     �   CREATE TABLE public.titres_types_types (
    id character varying(2) NOT NULL,
    nom character varying(255) NOT NULL,
    description text,
    exploitation boolean,
    ordre integer NOT NULL
);
 &   DROP TABLE public.titres_types_types;
       public         heap    postgres    false            
           1259    1107271    travaux_types    TABLE     �   CREATE TABLE public.travaux_types (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    description text,
    ordre integer NOT NULL
);
 !   DROP TABLE public.travaux_types;
       public         heap    postgres    false                       1259    1107279     travaux_types__demarches_statuts    TABLE     �   CREATE TABLE public.travaux_types__demarches_statuts (
    travaux_type_id character varying(3) NOT NULL,
    demarche_statut_id character varying(255) NOT NULL,
    ordre integer NOT NULL
);
 4   DROP TABLE public.travaux_types__demarches_statuts;
       public         heap    postgres    false                       1259    1107296    travaux_types__etapes_types    TABLE     �   CREATE TABLE public.travaux_types__etapes_types (
    travaux_type_id character varying(3) NOT NULL,
    etape_type_id character varying(3) NOT NULL,
    sections jsonb[],
    ordre integer NOT NULL
);
 /   DROP TABLE public.travaux_types__etapes_types;
       public         heap    postgres    false            �            1259    1106748 
   trimestres    TABLE     �   CREATE TABLE public.trimestres (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    frequence_id character varying(3)
);
    DROP TABLE public.trimestres;
       public         heap    postgres    false            �            1259    1106605    unites    TABLE     �   CREATE TABLE public.unites (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    symbole character varying(255) NOT NULL
);
    DROP TABLE public.unites;
       public         heap    postgres    false            �            1259    1106834    utilisateurs    TABLE     �  CREATE TABLE public.utilisateurs (
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
       public         heap    postgres    false            �            1259    1106865    utilisateurs__administrations    TABLE     �   CREATE TABLE public.utilisateurs__administrations (
    utilisateur_id character varying(64),
    administration_id character varying(64)
);
 1   DROP TABLE public.utilisateurs__administrations;
       public         heap    postgres    false            �            1259    1106850    utilisateurs__entreprises    TABLE     �   CREATE TABLE public.utilisateurs__entreprises (
    utilisateur_id character varying(64),
    entreprise_id character varying(64)
);
 -   DROP TABLE public.utilisateurs__entreprises;
       public         heap    postgres    false            A           2604    1106430    knex_migrations id    DEFAULT     x   ALTER TABLE ONLY public.knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.knex_migrations_id_seq'::regclass);
 A   ALTER TABLE public.knex_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            B           2604    1106438    knex_migrations_lock index    DEFAULT     �   ALTER TABLE ONLY public.knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.knex_migrations_lock_index_seq'::regclass);
 I   ALTER TABLE public.knex_migrations_lock ALTER COLUMN index DROP DEFAULT;
       public          postgres    false    205    204    205            k          0    1107386    a__etapes_types 
   TABLE DATA           ]   COPY public.a__etapes_types (etape_type_id, public_lecture, entreprises_lecture) FROM stdin;
    public          postgres    false    272   ��      l          0    1107391     a__titres_types__administrations 
   TABLE DATA           t   COPY public.a__titres_types__administrations (administration_id, titre_type_id, gestionnaire, associee) FROM stdin;
    public          postgres    false    273   ��      j          0    1107366    a__titres_types__titres_statuts 
   TABLE DATA           i   COPY public.a__titres_types__titres_statuts (titre_type_id, titre_statut_id, public_lecture) FROM stdin;
    public          postgres    false    271   ��      c          0    1107234    activites_statuts 
   TABLE DATA           =   COPY public.activites_statuts (id, nom, couleur) FROM stdin;
    public          postgres    false    264   �      ^          0    1107152    activites_types 
   TABLE DATA           i   COPY public.activites_types (id, nom, sections, frequence_id, date_debut, delai_mois, ordre) FROM stdin;
    public          postgres    false    259   n�      a          0    1107200     activites_types__administrations 
   TABLE DATA           _   COPY public.activites_types__administrations (activite_type_id, administration_id) FROM stdin;
    public          postgres    false    262   L�      b          0    1107217     activites_types__documents_types 
   TABLE DATA           ^   COPY public.activites_types__documents_types (activite_type_id, document_type_id) FROM stdin;
    public          postgres    false    263   է      `          0    1107183    activites_types__pays 
   TABLE DATA           J   COPY public.activites_types__pays (pays_id, activite_type_id) FROM stdin;
    public          postgres    false    261   �      J          0    1106803    administrations 
   TABLE DATA           �   COPY public.administrations (id, type_id, nom, abreviation, service, url, email, telephone, adresse1, adresse2, code_postal, commune, cedex, departement_id, region_id) FROM stdin;
    public          postgres    false    239   B�      I          0    1106798    administrations_types 
   TABLE DATA           ?   COPY public.administrations_types (id, nom, ordre) FROM stdin;
    public          postgres    false    238   :�      D          0    1106737    annees 
   TABLE DATA           7   COPY public.annees (id, nom, frequence_id) FROM stdin;
    public          postgres    false    233   ��      B          0    1106718    communes 
   TABLE DATA           D   COPY public.communes (id, nom, departement_id, surface) FROM stdin;
    public          postgres    false    231   Ӱ      q          0    1107518    definitions 
   TABLE DATA           Q   COPY public.definitions (id, nom, slug, "table", ordre, description) FROM stdin;
    public          postgres    false    278   n�      0          0    1106520    demarches_statuts 
   TABLE DATA           Q   COPY public.demarches_statuts (id, nom, description, couleur, ordre) FROM stdin;
    public          postgres    false    213   ̺      .          0    1106492    demarches_types 
   TABLE DATA           �   COPY public.demarches_types (id, nom, description, ordre, duree, points, substances, titulaires, renouvelable, exception, auto) FROM stdin;
    public          postgres    false    211   ��      A          0    1106707    departements 
   TABLE DATA           G   COPY public.departements (id, nom, region_id, cheflieu_id) FROM stdin;
    public          postgres    false    230   w�      7          0    1106600    devises 
   TABLE DATA           1   COPY public.devises (id, nom, ordre) FROM stdin;
    public          postgres    false    220   c�      o          0    1107463 	   documents 
   TABLE DATA           �   COPY public.documents (id, type_id, date, entreprise_id, titre_etape_id, description, titre_activite_id, titre_travaux_etape_id, fichier, fichier_type_id, url, uri, jorf, nor, public_lecture, entreprises_lecture) FROM stdin;
    public          postgres    false    276   ��      6          0    1106592    documents_types 
   TABLE DATA           >   COPY public.documents_types (id, nom, repertoire) FROM stdin;
    public          postgres    false    219   B�      *          0    1106446    domaines 
   TABLE DATA           ?   COPY public.domaines (id, nom, description, ordre) FROM stdin;
    public          postgres    false    207   ��      G          0    1106776    entreprises 
   TABLE DATA           �   COPY public.entreprises (id, nom, pays_id, legal_siren, legal_etranger, legal_forme, categorie, date_creation, adresse, code_postal, commune, cedex, url, email, telephone) FROM stdin;
    public          postgres    false    236   v�      H          0    1106784    entreprises_etablissements 
   TABLE DATA           o   COPY public.entreprises_etablissements (id, entreprise_id, nom, legal_siret, date_debut, date_fin) FROM stdin;
    public          postgres    false    237   z�      4          0    1106567    etapes_statuts 
   TABLE DATA           N   COPY public.etapes_statuts (id, nom, description, couleur, ordre) FROM stdin;
    public          postgres    false    217   ��      2          0    1106533    etapes_types 
   TABLE DATA           �   COPY public.etapes_types (id, nom, description, ordre, fondamentale, "unique", acceptation_auto, legal_ref, legal_lien, date_debut, date_fin, sections) FROM stdin;
    public          postgres    false    215   ��      5          0    1106575    etapes_types__etapes_statuts 
   TABLE DATA           ]   COPY public.etapes_types__etapes_statuts (etape_type_id, etape_statut_id, ordre) FROM stdin;
    public          postgres    false    218   @�      C          0    1106729 
   frequences 
   TABLE DATA           ;   COPY public.frequences (id, nom, periodes_nom) FROM stdin;
    public          postgres    false    232   3       9          0    1106613    geo_systemes 
   TABLE DATA           X   COPY public.geo_systemes (id, nom, ordre, unite_id, zone, definition_proj4) FROM stdin;
    public          postgres    false    222   |       )          0    1106441    globales 
   TABLE DATA           .   COPY public.globales (id, valeur) FROM stdin;
    public          postgres    false    206   �      &          0    1106427    knex_migrations 
   TABLE DATA           J   COPY public.knex_migrations (id, name, batch, migration_time) FROM stdin;
    public          postgres    false    203   �      (          0    1106435    knex_migrations_lock 
   TABLE DATA           @   COPY public.knex_migrations_lock (index, is_locked) FROM stdin;
    public          postgres    false    205   x      F          0    1106759    mois 
   TABLE DATA           C   COPY public.mois (id, nom, frequence_id, trimestre_id) FROM stdin;
    public          postgres    false    235   �      ?          0    1106688    pays 
   TABLE DATA           1   COPY public.pays (id, nom, timezone) FROM stdin;
    public          postgres    false    228   $      K          0    1106829    permissions 
   TABLE DATA           5   COPY public.permissions (id, nom, ordre) FROM stdin;
    public          postgres    false    240   R      1          0    1106528    phases_statuts 
   TABLE DATA           :   COPY public.phases_statuts (id, nom, couleur) FROM stdin;
    public          postgres    false    214   �      n          0    1107437 .   r__titres_types__etapes_types__administrations 
   TABLE DATA           �   COPY public.r__titres_types__etapes_types__administrations (administration_id, titre_type_id, etape_type_id, lecture_interdit, creation_interdit, modification_interdit) FROM stdin;
    public          postgres    false    275   �      m          0    1107411 0   r__titres_types__titres_statuts__administrations 
   TABLE DATA           �   COPY public.r__titres_types__titres_statuts__administrations (administration_id, titre_type_id, titre_statut_id, titres_modification_interdit, demarches_modification_interdit, etapes_modification_interdit) FROM stdin;
    public          postgres    false    274   �
      :          0    1106627    references_types 
   TABLE DATA           3   COPY public.references_types (id, nom) FROM stdin;
    public          postgres    false    223   ,      @          0    1106696    regions 
   TABLE DATA           @   COPY public.regions (id, nom, pays_id, cheflieu_id) FROM stdin;
    public          postgres    false    229   �      =          0    1106660 
   substances 
   TABLE DATA           J   COPY public.substances (id, nom, symbole, gerep, description) FROM stdin;
    public          postgres    false    226   �      >          0    1106668    substances__substances_legales 
   TABLE DATA           [   COPY public.substances__substances_legales (substance_id, substance_legale_id) FROM stdin;
    public          postgres    false    227          <          0    1106640    substances_legales 
   TABLE DATA           h   COPY public.substances_legales (id, nom, domaine_id, description, substance_legale_code_id) FROM stdin;
    public          postgres    false    225   �      ;          0    1106632    substances_legales_codes 
   TABLE DATA           [   COPY public.substances_legales_codes (id, nom, code, description, lien, ordre) FROM stdin;
    public          postgres    false    224   a      O          0    1106880    titres 
   TABLE DATA           w  COPY public.titres (id, nom, type_id, domaine_id, statut_id, date_debut, date_fin, date_demande, public_lecture, entreprises_lecture, points_titre_etape_id, titulaires_titre_etape_id, amodiataires_titre_etape_id, administrations_titre_etape_id, surface_titre_etape_id, substances_titre_etape_id, communes_titre_etape_id, doublon_titre_id, props_titre_etapes_ids) FROM stdin;
    public          postgres    false    244   �      d          0    1107239    titres_activites 
   TABLE DATA           �   COPY public.titres_activites (id, titre_id, utilisateur_id, date, date_saisie, contenu, type_id, statut_id, annee, frequence_periode_id) FROM stdin;
    public          postgres    false    265   �      W          0    1107045 $   titres_administrations_gestionnaires 
   TABLE DATA           e   COPY public.titres_administrations_gestionnaires (titre_id, administration_id, associee) FROM stdin;
    public          postgres    false    252   �      X          0    1107062    titres_administrations_locales 
   TABLE DATA           s   COPY public.titres_administrations_locales (titre_etape_id, administration_id, associee, coordinateur) FROM stdin;
    public          postgres    false    253         V          0    1107028    titres_amodiataires 
   TABLE DATA           W   COPY public.titres_amodiataires (titre_etape_id, entreprise_id, operateur) FROM stdin;
    public          postgres    false    251   :!      [          0    1107108    titres_communes 
   TABLE DATA           N   COPY public.titres_communes (titre_etape_id, commune_id, surface) FROM stdin;
    public          postgres    false    256   W!      P          0    1106909    titres_demarches 
   TABLE DATA           x   COPY public.titres_demarches (id, titre_id, type_id, statut_id, public_lecture, entreprises_lecture, ordre) FROM stdin;
    public          postgres    false    245   '      Q          0    1106936    titres_demarches_liens 
   TABLE DATA           d   COPY public.titres_demarches_liens (enfant_titre_demarche_id, parent_titre_demarche_id) FROM stdin;
    public          postgres    false    246   /)      S          0    1106968    titres_etapes 
   TABLE DATA           �   COPY public.titres_etapes (id, titre_demarche_id, type_id, statut_id, ordre, date, date_debut, date_fin, duree, surface, source_indisponible, contenu) FROM stdin;
    public          postgres    false    248   L)      p          0    1107501    titres_etapes_justificatifs 
   TABLE DATA           R   COPY public.titres_etapes_justificatifs (titre_etape_id, document_id) FROM stdin;
    public          postgres    false    277   �0      \          0    1107125    titres_incertitudes 
   TABLE DATA           �   COPY public.titres_incertitudes (titre_etape_id, date, date_debut, date_fin, duree, surface, points, substances, titulaires, amodiataires, administrations) FROM stdin;
    public          postgres    false    257   �0      R          0    1106953    titres_phases 
   TABLE DATA           [   COPY public.titres_phases (titre_demarche_id, statut_id, date_debut, date_fin) FROM stdin;
    public          postgres    false    247   r1      Y          0    1107079    titres_points 
   TABLE DATA           �   COPY public.titres_points (id, titre_etape_id, coordonnees, groupe, contour, point, nom, description, securite, subsidiaire, lot) FROM stdin;
    public          postgres    false    254   3      Z          0    1107094    titres_points_references 
   TABLE DATA           n   COPY public.titres_points_references (id, titre_point_id, geo_systeme_id, coordonnees, opposable) FROM stdin;
    public          postgres    false    255   �X      ]          0    1107135    titres_references 
   TABLE DATA           C   COPY public.titres_references (titre_id, type_id, nom) FROM stdin;
    public          postgres    false    258   pr      -          0    1106484    titres_statuts 
   TABLE DATA           N   COPY public.titres_statuts (id, nom, description, couleur, ordre) FROM stdin;
    public          postgres    false    210   "t      T          0    1106994    titres_substances 
   TABLE DATA           Y   COPY public.titres_substances (titre_etape_id, substance_id, connexe, ordre) FROM stdin;
    public          postgres    false    249   w      U          0    1107011    titres_titulaires 
   TABLE DATA           U   COPY public.titres_titulaires (titre_etape_id, entreprise_id, operateur) FROM stdin;
    public          postgres    false    250   �y      h          0    1107316    titres_travaux 
   TABLE DATA           Q   COPY public.titres_travaux (id, titre_id, statut_id, type_id, ordre) FROM stdin;
    public          postgres    false    269   �{      i          0    1107340    titres_travaux_etapes 
   TABLE DATA              COPY public.titres_travaux_etapes (id, titre_travaux_id, statut_id, type_id, date, duree, surface, contenu, ordre) FROM stdin;
    public          postgres    false    270   |      ,          0    1106462    titres_types 
   TABLE DATA           \   COPY public.titres_types (id, domaine_id, type_id, props_etapes_types, archive) FROM stdin;
    public          postgres    false    209   8|      _          0    1107166    titres_types__activites_types 
   TABLE DATA           X   COPY public.titres_types__activites_types (titre_type_id, activite_type_id) FROM stdin;
    public          postgres    false    260   V}      /          0    1106500    titres_types__demarches_types 
   TABLE DATA           �   COPY public.titres_types__demarches_types (titre_type_id, demarche_type_id, duree_max, acceptation_implicite, delai_implicite, delai_recours, legal_ref, legal_lien, date_debut, date_fin) FROM stdin;
    public          postgres    false    212   �}      3          0    1106541 +   titres_types__demarches_types__etapes_types 
   TABLE DATA           �   COPY public.titres_types__demarches_types__etapes_types (titre_type_id, ordre, demarche_type_id, etape_type_id, sections) FROM stdin;
    public          postgres    false    216   d�      +          0    1106454    titres_types_types 
   TABLE DATA           W   COPY public.titres_types_types (id, nom, description, exploitation, ordre) FROM stdin;
    public          postgres    false    208   ��      e          0    1107271    travaux_types 
   TABLE DATA           D   COPY public.travaux_types (id, nom, description, ordre) FROM stdin;
    public          postgres    false    266   Ѻ      f          0    1107279     travaux_types__demarches_statuts 
   TABLE DATA           f   COPY public.travaux_types__demarches_statuts (travaux_type_id, demarche_statut_id, ordre) FROM stdin;
    public          postgres    false    267   K�      g          0    1107296    travaux_types__etapes_types 
   TABLE DATA           f   COPY public.travaux_types__etapes_types (travaux_type_id, etape_type_id, sections, ordre) FROM stdin;
    public          postgres    false    268   ڻ      E          0    1106748 
   trimestres 
   TABLE DATA           ;   COPY public.trimestres (id, nom, frequence_id) FROM stdin;
    public          postgres    false    234   G�      8          0    1106605    unites 
   TABLE DATA           2   COPY public.unites (id, nom, symbole) FROM stdin;
    public          postgres    false    221   ��      L          0    1106834    utilisateurs 
   TABLE DATA           �   COPY public.utilisateurs (id, email, mot_de_passe, nom, prenom, telephone_fixe, telephone_mobile, permission_id, preferences) FROM stdin;
    public          postgres    false    241   �      N          0    1106865    utilisateurs__administrations 
   TABLE DATA           Z   COPY public.utilisateurs__administrations (utilisateur_id, administration_id) FROM stdin;
    public          postgres    false    243   $�      M          0    1106850    utilisateurs__entreprises 
   TABLE DATA           R   COPY public.utilisateurs__entreprises (utilisateur_id, entreprise_id) FROM stdin;
    public          postgres    false    242   A�      z           0    0    knex_migrations_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.knex_migrations_id_seq', 23, true);
          public          postgres    false    202            {           0    0    knex_migrations_lock_index_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.knex_migrations_lock_index_seq', 1, true);
          public          postgres    false    204            '           2606    1107390 $   a__etapes_types a__etapes_types_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.a__etapes_types
    ADD CONSTRAINT a__etapes_types_pkey PRIMARY KEY (etape_type_id);
 N   ALTER TABLE ONLY public.a__etapes_types DROP CONSTRAINT a__etapes_types_pkey;
       public            postgres    false    272            )           2606    1107410 F   a__titres_types__administrations a__titres_types__administrations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.a__titres_types__administrations
    ADD CONSTRAINT a__titres_types__administrations_pkey PRIMARY KEY (administration_id, titre_type_id);
 p   ALTER TABLE ONLY public.a__titres_types__administrations DROP CONSTRAINT a__titres_types__administrations_pkey;
       public            postgres    false    273    273            #           2606    1107385 D   a__titres_types__titres_statuts a__titres_types__titres_statuts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.a__titres_types__titres_statuts
    ADD CONSTRAINT a__titres_types__titres_statuts_pkey PRIMARY KEY (titre_type_id, titre_statut_id);
 n   ALTER TABLE ONLY public.a__titres_types__titres_statuts DROP CONSTRAINT a__titres_types__titres_statuts_pkey;
       public            postgres    false    271    271                       2606    1107238 (   activites_statuts activites_statuts_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.activites_statuts
    ADD CONSTRAINT activites_statuts_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.activites_statuts DROP CONSTRAINT activites_statuts_pkey;
       public            postgres    false    264            �           2606    1107216 F   activites_types__administrations activites_types__administrations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__administrations
    ADD CONSTRAINT activites_types__administrations_pkey PRIMARY KEY (administration_id, activite_type_id);
 p   ALTER TABLE ONLY public.activites_types__administrations DROP CONSTRAINT activites_types__administrations_pkey;
       public            postgres    false    262    262                       2606    1107233 F   activites_types__documents_types activites_types__documents_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__documents_types
    ADD CONSTRAINT activites_types__documents_types_pkey PRIMARY KEY (activite_type_id, document_type_id);
 p   ALTER TABLE ONLY public.activites_types__documents_types DROP CONSTRAINT activites_types__documents_types_pkey;
       public            postgres    false    263    263            �           2606    1107199 0   activites_types__pays activites_types__pays_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__pays
    ADD CONSTRAINT activites_types__pays_pkey PRIMARY KEY (pays_id, activite_type_id);
 Z   ALTER TABLE ONLY public.activites_types__pays DROP CONSTRAINT activites_types__pays_pkey;
       public            postgres    false    261    261            �           2606    1107159 $   activites_types activites_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.activites_types
    ADD CONSTRAINT activites_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.activites_types DROP CONSTRAINT activites_types_pkey;
       public            postgres    false    259            �           2606    1106810 $   administrations administrations_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_pkey;
       public            postgres    false    239            �           2606    1106802 0   administrations_types administrations_types_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.administrations_types
    ADD CONSTRAINT administrations_types_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.administrations_types DROP CONSTRAINT administrations_types_pkey;
       public            postgres    false    238            �           2606    1106741    annees annees_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.annees
    ADD CONSTRAINT annees_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.annees DROP CONSTRAINT annees_pkey;
       public            postgres    false    233            �           2606    1106722    communes communes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.communes
    ADD CONSTRAINT communes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.communes DROP CONSTRAINT communes_pkey;
       public            postgres    false    231            B           2606    1107525    definitions definitions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.definitions
    ADD CONSTRAINT definitions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.definitions DROP CONSTRAINT definitions_pkey;
       public            postgres    false    278            d           2606    1106527 (   demarches_statuts demarches_statuts_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.demarches_statuts
    ADD CONSTRAINT demarches_statuts_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.demarches_statuts DROP CONSTRAINT demarches_statuts_pkey;
       public            postgres    false    213            ^           2606    1106499 $   demarches_types demarches_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.demarches_types
    ADD CONSTRAINT demarches_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.demarches_types DROP CONSTRAINT demarches_types_pkey;
       public            postgres    false    211            �           2606    1106711    departements departements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.departements
    ADD CONSTRAINT departements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.departements DROP CONSTRAINT departements_pkey;
       public            postgres    false    230            w           2606    1106604    devises devises_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.devises
    ADD CONSTRAINT devises_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.devises DROP CONSTRAINT devises_pkey;
       public            postgres    false    220            8           2606    1107470    documents documents_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_pkey;
       public            postgres    false    276            u           2606    1106599 $   documents_types documents_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.documents_types
    ADD CONSTRAINT documents_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.documents_types DROP CONSTRAINT documents_types_pkey;
       public            postgres    false    219            R           2606    1106453    domaines domaines_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.domaines
    ADD CONSTRAINT domaines_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.domaines DROP CONSTRAINT domaines_pkey;
       public            postgres    false    207            �           2606    1106791 :   entreprises_etablissements entreprises_etablissements_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.entreprises_etablissements
    ADD CONSTRAINT entreprises_etablissements_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.entreprises_etablissements DROP CONSTRAINT entreprises_etablissements_pkey;
       public            postgres    false    237            �           2606    1106783    entreprises entreprises_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.entreprises
    ADD CONSTRAINT entreprises_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.entreprises DROP CONSTRAINT entreprises_pkey;
       public            postgres    false    236            o           2606    1106574 "   etapes_statuts etapes_statuts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.etapes_statuts
    ADD CONSTRAINT etapes_statuts_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.etapes_statuts DROP CONSTRAINT etapes_statuts_pkey;
       public            postgres    false    217            q           2606    1106591 >   etapes_types__etapes_statuts etapes_types__etapes_statuts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types__etapes_statuts
    ADD CONSTRAINT etapes_types__etapes_statuts_pkey PRIMARY KEY (etape_type_id, etape_statut_id);
 h   ALTER TABLE ONLY public.etapes_types__etapes_statuts DROP CONSTRAINT etapes_types__etapes_statuts_pkey;
       public            postgres    false    218    218            h           2606    1106540    etapes_types etapes_types_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.etapes_types
    ADD CONSTRAINT etapes_types_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.etapes_types DROP CONSTRAINT etapes_types_pkey;
       public            postgres    false    215            �           2606    1106736    frequences frequences_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.frequences
    ADD CONSTRAINT frequences_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.frequences DROP CONSTRAINT frequences_pkey;
       public            postgres    false    232            {           2606    1106620    geo_systemes geo_systemes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.geo_systemes
    ADD CONSTRAINT geo_systemes_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.geo_systemes DROP CONSTRAINT geo_systemes_pkey;
       public            postgres    false    222            P           2606    1106445    globales globales_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.globales
    ADD CONSTRAINT globales_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.globales DROP CONSTRAINT globales_pkey;
       public            postgres    false    206            N           2606    1106440 .   knex_migrations_lock knex_migrations_lock_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.knex_migrations_lock
    ADD CONSTRAINT knex_migrations_lock_pkey PRIMARY KEY (index);
 X   ALTER TABLE ONLY public.knex_migrations_lock DROP CONSTRAINT knex_migrations_lock_pkey;
       public            postgres    false    205            L           2606    1106432 $   knex_migrations knex_migrations_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.knex_migrations
    ADD CONSTRAINT knex_migrations_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.knex_migrations DROP CONSTRAINT knex_migrations_pkey;
       public            postgres    false    203            �           2606    1106763    mois mois_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.mois
    ADD CONSTRAINT mois_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.mois DROP CONSTRAINT mois_pkey;
       public            postgres    false    235            �           2606    1106695    pays pays_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.pays
    ADD CONSTRAINT pays_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.pays DROP CONSTRAINT pays_pkey;
       public            postgres    false    228            �           2606    1106833    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    240            f           2606    1106532 "   phases_statuts phases_statuts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.phases_statuts
    ADD CONSTRAINT phases_statuts_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.phases_statuts DROP CONSTRAINT phases_statuts_pkey;
       public            postgres    false    214            2           2606    1107462 b   r__titres_types__etapes_types__administrations r__titres_types__etapes_types__administrations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations
    ADD CONSTRAINT r__titres_types__etapes_types__administrations_pkey PRIMARY KEY (administration_id, titre_type_id, etape_type_id);
 �   ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations DROP CONSTRAINT r__titres_types__etapes_types__administrations_pkey;
       public            postgres    false    275    275    275            -           2606    1107436 f   r__titres_types__titres_statuts__administrations r__titres_types__titres_statuts__administrations_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations
    ADD CONSTRAINT r__titres_types__titres_statuts__administrations_pkey PRIMARY KEY (administration_id, titre_type_id, titre_statut_id);
 �   ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations DROP CONSTRAINT r__titres_types__titres_statuts__administrations_pkey;
       public            postgres    false    274    274    274            ~           2606    1106631 &   references_types references_types_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.references_types
    ADD CONSTRAINT references_types_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.references_types DROP CONSTRAINT references_types_pkey;
       public            postgres    false    223            �           2606    1106700    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public            postgres    false    229            �           2606    1106687 B   substances__substances_legales substances__substances_legales_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.substances__substances_legales
    ADD CONSTRAINT substances__substances_legales_pkey PRIMARY KEY (substance_id, substance_legale_id);
 l   ALTER TABLE ONLY public.substances__substances_legales DROP CONSTRAINT substances__substances_legales_pkey;
       public            postgres    false    227    227            �           2606    1106639 6   substances_legales_codes substances_legales_codes_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.substances_legales_codes
    ADD CONSTRAINT substances_legales_codes_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.substances_legales_codes DROP CONSTRAINT substances_legales_codes_pkey;
       public            postgres    false    224            �           2606    1106647 *   substances_legales substances_legales_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.substances_legales
    ADD CONSTRAINT substances_legales_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.substances_legales DROP CONSTRAINT substances_legales_pkey;
       public            postgres    false    225            �           2606    1106667    substances substances_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.substances
    ADD CONSTRAINT substances_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.substances DROP CONSTRAINT substances_pkey;
       public            postgres    false    226            	           2606    1107246 &   titres_activites titres_activites_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titres_activites_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titres_activites_pkey;
       public            postgres    false    265            �           2606    1107061 N   titres_administrations_gestionnaires titres_administrations_gestionnaires_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_gestionnaires
    ADD CONSTRAINT titres_administrations_gestionnaires_pkey PRIMARY KEY (titre_id, administration_id);
 x   ALTER TABLE ONLY public.titres_administrations_gestionnaires DROP CONSTRAINT titres_administrations_gestionnaires_pkey;
       public            postgres    false    252    252            �           2606    1107078 B   titres_administrations_locales titres_administrations_locales_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_locales
    ADD CONSTRAINT titres_administrations_locales_pkey PRIMARY KEY (titre_etape_id, administration_id);
 l   ALTER TABLE ONLY public.titres_administrations_locales DROP CONSTRAINT titres_administrations_locales_pkey;
       public            postgres    false    253    253            �           2606    1107044 ,   titres_amodiataires titres_amodiataires_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_amodiataires
    ADD CONSTRAINT titres_amodiataires_pkey PRIMARY KEY (titre_etape_id, entreprise_id);
 V   ALTER TABLE ONLY public.titres_amodiataires DROP CONSTRAINT titres_amodiataires_pkey;
       public            postgres    false    251    251            �           2606    1107124 $   titres_communes titres_communes_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.titres_communes
    ADD CONSTRAINT titres_communes_pkey PRIMARY KEY (titre_etape_id, commune_id);
 N   ALTER TABLE ONLY public.titres_communes DROP CONSTRAINT titres_communes_pkey;
       public            postgres    false    256    256            �           2606    1106952 2   titres_demarches_liens titres_demarches_liens_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches_liens
    ADD CONSTRAINT titres_demarches_liens_pkey PRIMARY KEY (enfant_titre_demarche_id, parent_titre_demarche_id);
 \   ALTER TABLE ONLY public.titres_demarches_liens DROP CONSTRAINT titres_demarches_liens_pkey;
       public            postgres    false    246    246            �           2606    1106917 &   titres_demarches titres_demarches_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titres_demarches_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titres_demarches_pkey;
       public            postgres    false    245            >           2606    1107517 <   titres_etapes_justificatifs titres_etapes_justificatifs_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes_justificatifs
    ADD CONSTRAINT titres_etapes_justificatifs_pkey PRIMARY KEY (titre_etape_id, document_id);
 f   ALTER TABLE ONLY public.titres_etapes_justificatifs DROP CONSTRAINT titres_etapes_justificatifs_pkey;
       public            postgres    false    277    277            �           2606    1106975     titres_etapes titres_etapes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titres_etapes_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titres_etapes_pkey;
       public            postgres    false    248            �           2606    1107129 ,   titres_incertitudes titres_incertitudes_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.titres_incertitudes
    ADD CONSTRAINT titres_incertitudes_pkey PRIMARY KEY (titre_etape_id);
 V   ALTER TABLE ONLY public.titres_incertitudes DROP CONSTRAINT titres_incertitudes_pkey;
       public            postgres    false    257            �           2606    1106957     titres_phases titres_phases_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.titres_phases
    ADD CONSTRAINT titres_phases_pkey PRIMARY KEY (titre_demarche_id);
 J   ALTER TABLE ONLY public.titres_phases DROP CONSTRAINT titres_phases_pkey;
       public            postgres    false    247            �           2606    1106890    titres titres_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_pkey;
       public            postgres    false    244            �           2606    1107086     titres_points titres_points_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.titres_points
    ADD CONSTRAINT titres_points_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.titres_points DROP CONSTRAINT titres_points_pkey;
       public            postgres    false    254            �           2606    1107101 6   titres_points_references titres_points_references_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.titres_points_references
    ADD CONSTRAINT titres_points_references_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.titres_points_references DROP CONSTRAINT titres_points_references_pkey;
       public            postgres    false    255            �           2606    1107151 (   titres_references titres_references_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.titres_references
    ADD CONSTRAINT titres_references_pkey PRIMARY KEY (titre_id, type_id, nom);
 R   ALTER TABLE ONLY public.titres_references DROP CONSTRAINT titres_references_pkey;
       public            postgres    false    258    258    258            \           2606    1106491 "   titres_statuts titres_statuts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.titres_statuts
    ADD CONSTRAINT titres_statuts_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.titres_statuts DROP CONSTRAINT titres_statuts_pkey;
       public            postgres    false    210            �           2606    1107010 (   titres_substances titres_substances_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_substances
    ADD CONSTRAINT titres_substances_pkey PRIMARY KEY (titre_etape_id, substance_id);
 R   ALTER TABLE ONLY public.titres_substances DROP CONSTRAINT titres_substances_pkey;
       public            postgres    false    249    249            �           2606    1107027 (   titres_titulaires titres_titulaires_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_titulaires
    ADD CONSTRAINT titres_titulaires_pkey PRIMARY KEY (titre_etape_id, entreprise_id);
 R   ALTER TABLE ONLY public.titres_titulaires DROP CONSTRAINT titres_titulaires_pkey;
       public            postgres    false    250    250                       2606    1107347 0   titres_travaux_etapes titres_travaux_etapes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.titres_travaux_etapes
    ADD CONSTRAINT titres_travaux_etapes_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.titres_travaux_etapes DROP CONSTRAINT titres_travaux_etapes_pkey;
       public            postgres    false    270                       2606    1107321 "   titres_travaux titres_travaux_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.titres_travaux
    ADD CONSTRAINT titres_travaux_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.titres_travaux DROP CONSTRAINT titres_travaux_pkey;
       public            postgres    false    269            �           2606    1107182 @   titres_types__activites_types titres_types__activites_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__activites_types
    ADD CONSTRAINT titres_types__activites_types_pkey PRIMARY KEY (titre_type_id, activite_type_id);
 j   ALTER TABLE ONLY public.titres_types__activites_types DROP CONSTRAINT titres_types__activites_types_pkey;
       public            postgres    false    260    260            j           2606    1106566 \   titres_types__demarches_types__etapes_types titres_types__demarches_types__etapes_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titres_types__demarches_types__etapes_types_pkey PRIMARY KEY (titre_type_id, demarche_type_id, etape_type_id);
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titres_types__demarches_types__etapes_types_pkey;
       public            postgres    false    216    216    216            `           2606    1106519 @   titres_types__demarches_types titres_types__demarches_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types
    ADD CONSTRAINT titres_types__demarches_types_pkey PRIMARY KEY (titre_type_id, demarche_type_id);
 j   ALTER TABLE ONLY public.titres_types__demarches_types DROP CONSTRAINT titres_types__demarches_types_pkey;
       public            postgres    false    212    212            V           2606    1106469    titres_types titres_types_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titres_types_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titres_types_pkey;
       public            postgres    false    209            T           2606    1106461 *   titres_types_types titres_types_types_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.titres_types_types
    ADD CONSTRAINT titres_types_types_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.titres_types_types DROP CONSTRAINT titres_types_types_pkey;
       public            postgres    false    208            Y           2606    1106483 0   titres_types titrestypes_domaineid_typeid_unique 
   CONSTRAINT     z   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titrestypes_domaineid_typeid_unique UNIQUE (domaine_id, type_id);
 Z   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titrestypes_domaineid_typeid_unique;
       public            postgres    false    209    209                       2606    1107295 F   travaux_types__demarches_statuts travaux_types__demarches_statuts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.travaux_types__demarches_statuts
    ADD CONSTRAINT travaux_types__demarches_statuts_pkey PRIMARY KEY (travaux_type_id, demarche_statut_id);
 p   ALTER TABLE ONLY public.travaux_types__demarches_statuts DROP CONSTRAINT travaux_types__demarches_statuts_pkey;
       public            postgres    false    267    267                       2606    1107315 <   travaux_types__etapes_types travaux_types__etapes_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.travaux_types__etapes_types
    ADD CONSTRAINT travaux_types__etapes_types_pkey PRIMARY KEY (travaux_type_id, etape_type_id);
 f   ALTER TABLE ONLY public.travaux_types__etapes_types DROP CONSTRAINT travaux_types__etapes_types_pkey;
       public            postgres    false    268    268                       2606    1107278     travaux_types travaux_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.travaux_types
    ADD CONSTRAINT travaux_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.travaux_types DROP CONSTRAINT travaux_types_pkey;
       public            postgres    false    266            �           2606    1106752    trimestres trimestres_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.trimestres
    ADD CONSTRAINT trimestres_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.trimestres DROP CONSTRAINT trimestres_pkey;
       public            postgres    false    234            y           2606    1106612    unites unites_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.unites
    ADD CONSTRAINT unites_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.unites DROP CONSTRAINT unites_pkey;
       public            postgres    false    221            �           2606    1106843 &   utilisateurs utilisateurs_email_unique 
   CONSTRAINT     b   ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_email_unique UNIQUE (email);
 P   ALTER TABLE ONLY public.utilisateurs DROP CONSTRAINT utilisateurs_email_unique;
       public            postgres    false    241            �           2606    1106841    utilisateurs utilisateurs_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.utilisateurs DROP CONSTRAINT utilisateurs_pkey;
       public            postgres    false    241            *           1259    1107397 6   a__titrestypes__administrations_administrationid_index    INDEX     �   CREATE INDEX a__titrestypes__administrations_administrationid_index ON public.a__titres_types__administrations USING btree (administration_id);
 J   DROP INDEX public.a__titrestypes__administrations_administrationid_index;
       public            postgres    false    273            +           1259    1107403 1   a__titrestypes__administrations_titretypeid_index    INDEX     �   CREATE INDEX a__titrestypes__administrations_titretypeid_index ON public.a__titres_types__administrations USING btree (titre_type_id);
 E   DROP INDEX public.a__titrestypes__administrations_titretypeid_index;
       public            postgres    false    273            $           1259    1107378 1   a__titrestypes__titresstatuts_titrestatutid_index    INDEX     �   CREATE INDEX a__titrestypes__titresstatuts_titrestatutid_index ON public.a__titres_types__titres_statuts USING btree (titre_statut_id);
 E   DROP INDEX public.a__titrestypes__titresstatuts_titrestatutid_index;
       public            postgres    false    271            %           1259    1107372 /   a__titrestypes__titresstatuts_titretypeid_index    INDEX     �   CREATE INDEX a__titrestypes__titresstatuts_titretypeid_index ON public.a__titres_types__titres_statuts USING btree (titre_type_id);
 C   DROP INDEX public.a__titrestypes__titresstatuts_titretypeid_index;
       public            postgres    false    271                        1259    1107203 4   activitestypes__administrations_activitetypeid_index    INDEX     �   CREATE INDEX activitestypes__administrations_activitetypeid_index ON public.activites_types__administrations USING btree (activite_type_id);
 H   DROP INDEX public.activitestypes__administrations_activitetypeid_index;
       public            postgres    false    262                       1259    1107209 6   activitestypes__administrations_administrationid_index    INDEX     �   CREATE INDEX activitestypes__administrations_administrationid_index ON public.activites_types__administrations USING btree (administration_id);
 J   DROP INDEX public.activitestypes__administrations_administrationid_index;
       public            postgres    false    262                       1259    1107220 3   activitestypes__documentstypes_activitetypeid_index    INDEX     �   CREATE INDEX activitestypes__documentstypes_activitetypeid_index ON public.activites_types__documents_types USING btree (activite_type_id);
 G   DROP INDEX public.activitestypes__documentstypes_activitetypeid_index;
       public            postgres    false    263                       1259    1107226 3   activitestypes__documentstypes_documenttypeid_index    INDEX     �   CREATE INDEX activitestypes__documentstypes_documenttypeid_index ON public.activites_types__documents_types USING btree (document_type_id);
 G   DROP INDEX public.activitestypes__documentstypes_documenttypeid_index;
       public            postgres    false    263            �           1259    1107192 )   activitestypes__pays_activitetypeid_index    INDEX     w   CREATE INDEX activitestypes__pays_activitetypeid_index ON public.activites_types__pays USING btree (activite_type_id);
 =   DROP INDEX public.activitestypes__pays_activitetypeid_index;
       public            postgres    false    261            �           1259    1107186 !   activitestypes__pays_paysid_index    INDEX     f   CREATE INDEX activitestypes__pays_paysid_index ON public.activites_types__pays USING btree (pays_id);
 5   DROP INDEX public.activitestypes__pays_paysid_index;
       public            postgres    false    261            �           1259    1107160     activitestypes_frequenceid_index    INDEX     d   CREATE INDEX activitestypes_frequenceid_index ON public.activites_types USING btree (frequence_id);
 4   DROP INDEX public.activitestypes_frequenceid_index;
       public            postgres    false    259            �           1259    1106817 #   administrations_departementid_index    INDEX     i   CREATE INDEX administrations_departementid_index ON public.administrations USING btree (departement_id);
 7   DROP INDEX public.administrations_departementid_index;
       public            postgres    false    239            �           1259    1106823    administrations_regionid_index    INDEX     _   CREATE INDEX administrations_regionid_index ON public.administrations USING btree (region_id);
 2   DROP INDEX public.administrations_regionid_index;
       public            postgres    false    239            �           1259    1106811    administrations_typeid_index    INDEX     [   CREATE INDEX administrations_typeid_index ON public.administrations USING btree (type_id);
 0   DROP INDEX public.administrations_typeid_index;
       public            postgres    false    239            �           1259    1106742    annees_frequenceid_index    INDEX     S   CREATE INDEX annees_frequenceid_index ON public.annees USING btree (frequence_id);
 ,   DROP INDEX public.annees_frequenceid_index;
       public            postgres    false    233            �           1259    1106723    communes_departementid_index    INDEX     [   CREATE INDEX communes_departementid_index ON public.communes USING btree (departement_id);
 0   DROP INDEX public.communes_departementid_index;
       public            postgres    false    231            �           1259    1106712    departements_regionid_index    INDEX     Y   CREATE INDEX departements_regionid_index ON public.departements USING btree (region_id);
 /   DROP INDEX public.departements_regionid_index;
       public            postgres    false    230            6           1259    1107477    documents_entrepriseid_index    INDEX     [   CREATE INDEX documents_entrepriseid_index ON public.documents USING btree (entreprise_id);
 0   DROP INDEX public.documents_entrepriseid_index;
       public            postgres    false    276            9           1259    1107489    documents_titreactiviteid_index    INDEX     b   CREATE INDEX documents_titreactiviteid_index ON public.documents USING btree (titre_activite_id);
 3   DROP INDEX public.documents_titreactiviteid_index;
       public            postgres    false    276            :           1259    1107483    documents_titreetapeid_index    INDEX     \   CREATE INDEX documents_titreetapeid_index ON public.documents USING btree (titre_etape_id);
 0   DROP INDEX public.documents_titreetapeid_index;
       public            postgres    false    276            ;           1259    1107495 #   documents_titretravauxetapeid_index    INDEX     k   CREATE INDEX documents_titretravauxetapeid_index ON public.documents USING btree (titre_travaux_etape_id);
 7   DROP INDEX public.documents_titretravauxetapeid_index;
       public            postgres    false    276            <           1259    1107471    documents_typeid_index    INDEX     O   CREATE INDEX documents_typeid_index ON public.documents USING btree (type_id);
 *   DROP INDEX public.documents_typeid_index;
       public            postgres    false    276            �           1259    1106792 ,   entreprisesetablissements_entrepriseid_index    INDEX     |   CREATE INDEX entreprisesetablissements_entrepriseid_index ON public.entreprises_etablissements USING btree (entreprise_id);
 @   DROP INDEX public.entreprisesetablissements_entrepriseid_index;
       public            postgres    false    237            r           1259    1106584 .   etapestypes__etapesstatuts_etapestatutid_index    INDEX     �   CREATE INDEX etapestypes__etapesstatuts_etapestatutid_index ON public.etapes_types__etapes_statuts USING btree (etape_statut_id);
 B   DROP INDEX public.etapestypes__etapesstatuts_etapestatutid_index;
       public            postgres    false    218            s           1259    1106578 ,   etapestypes__etapesstatuts_etapetypeid_index    INDEX     ~   CREATE INDEX etapestypes__etapesstatuts_etapetypeid_index ON public.etapes_types__etapes_statuts USING btree (etape_type_id);
 @   DROP INDEX public.etapestypes__etapesstatuts_etapetypeid_index;
       public            postgres    false    218            |           1259    1106621    geosystemes_uniteid_index    INDEX     V   CREATE INDEX geosystemes_uniteid_index ON public.geo_systemes USING btree (unite_id);
 -   DROP INDEX public.geosystemes_uniteid_index;
       public            postgres    false    222            �           1259    1106764    mois_frequenceid_index    INDEX     O   CREATE INDEX mois_frequenceid_index ON public.mois USING btree (frequence_id);
 *   DROP INDEX public.mois_frequenceid_index;
       public            postgres    false    235            �           1259    1106770    mois_trimestreid_index    INDEX     O   CREATE INDEX mois_trimestreid_index ON public.mois USING btree (trimestre_id);
 *   DROP INDEX public.mois_trimestreid_index;
       public            postgres    false    235            3           1259    1107443 ?   r__titrestypes__etapestypes__administrations_administrationid_i    INDEX     �   CREATE INDEX r__titrestypes__etapestypes__administrations_administrationid_i ON public.r__titres_types__etapes_types__administrations USING btree (administration_id);
 S   DROP INDEX public.r__titrestypes__etapestypes__administrations_administrationid_i;
       public            postgres    false    275            4           1259    1107455 >   r__titrestypes__etapestypes__administrations_etapetypeid_index    INDEX     �   CREATE INDEX r__titrestypes__etapestypes__administrations_etapetypeid_index ON public.r__titres_types__etapes_types__administrations USING btree (etape_type_id);
 R   DROP INDEX public.r__titrestypes__etapestypes__administrations_etapetypeid_index;
       public            postgres    false    275            5           1259    1107449 >   r__titrestypes__etapestypes__administrations_titretypeid_index    INDEX     �   CREATE INDEX r__titrestypes__etapestypes__administrations_titretypeid_index ON public.r__titres_types__etapes_types__administrations USING btree (titre_type_id);
 R   DROP INDEX public.r__titrestypes__etapestypes__administrations_titretypeid_index;
       public            postgres    false    275            .           1259    1107417 ?   r__titrestypes__titresstatuts__administrations_administrationid    INDEX     �   CREATE INDEX r__titrestypes__titresstatuts__administrations_administrationid ON public.r__titres_types__titres_statuts__administrations USING btree (administration_id);
 S   DROP INDEX public.r__titrestypes__titresstatuts__administrations_administrationid;
       public            postgres    false    274            /           1259    1107429 ?   r__titrestypes__titresstatuts__administrations_titrestatutid_in    INDEX     �   CREATE INDEX r__titrestypes__titresstatuts__administrations_titrestatutid_in ON public.r__titres_types__titres_statuts__administrations USING btree (titre_statut_id);
 S   DROP INDEX public.r__titrestypes__titresstatuts__administrations_titrestatutid_in;
       public            postgres    false    274            0           1259    1107423 ?   r__titrestypes__titresstatuts__administrations_titretypeid_inde    INDEX     �   CREATE INDEX r__titrestypes__titresstatuts__administrations_titretypeid_inde ON public.r__titres_types__titres_statuts__administrations USING btree (titre_type_id);
 S   DROP INDEX public.r__titrestypes__titresstatuts__administrations_titretypeid_inde;
       public            postgres    false    274            �           1259    1106701    regions_paysid_index    INDEX     K   CREATE INDEX regions_paysid_index ON public.regions USING btree (pays_id);
 (   DROP INDEX public.regions_paysid_index;
       public            postgres    false    229            �           1259    1106674 /   substances__substanceslegales_substanceid_index    INDEX     �   CREATE INDEX substances__substanceslegales_substanceid_index ON public.substances__substances_legales USING btree (substance_id);
 C   DROP INDEX public.substances__substanceslegales_substanceid_index;
       public            postgres    false    227            �           1259    1106680 5   substances__substanceslegales_substancelegaleid_index    INDEX     �   CREATE INDEX substances__substanceslegales_substancelegaleid_index ON public.substances__substances_legales USING btree (substance_legale_id);
 I   DROP INDEX public.substances__substanceslegales_substancelegaleid_index;
       public            postgres    false    227            �           1259    1106648 !   substanceslegales_domaineid_index    INDEX     f   CREATE INDEX substanceslegales_domaineid_index ON public.substances_legales USING btree (domaine_id);
 5   DROP INDEX public.substanceslegales_domaineid_index;
       public            postgres    false    225            �           1259    1106654 -   substanceslegales_substancelegalecodeid_index    INDEX     �   CREATE INDEX substanceslegales_substancelegalecodeid_index ON public.substances_legales USING btree (substance_legale_code_id);
 A   DROP INDEX public.substanceslegales_substancelegalecodeid_index;
       public            postgres    false    225            �           1259    1106897    titres_domaineid_index    INDEX     O   CREATE INDEX titres_domaineid_index ON public.titres USING btree (domaine_id);
 *   DROP INDEX public.titres_domaineid_index;
       public            postgres    false    244            �           1259    1106903    titres_statutid_index    INDEX     M   CREATE INDEX titres_statutid_index ON public.titres USING btree (statut_id);
 )   DROP INDEX public.titres_statutid_index;
       public            postgres    false    244            �           1259    1106891    titres_typeid_index    INDEX     I   CREATE INDEX titres_typeid_index ON public.titres USING btree (type_id);
 '   DROP INDEX public.titres_typeid_index;
       public            postgres    false    244            
           1259    1107265    titresactivites_statutid_index    INDEX     `   CREATE INDEX titresactivites_statutid_index ON public.titres_activites USING btree (statut_id);
 2   DROP INDEX public.titresactivites_statutid_index;
       public            postgres    false    265                       1259    1107247    titresactivites_titreid_index    INDEX     ^   CREATE INDEX titresactivites_titreid_index ON public.titres_activites USING btree (titre_id);
 1   DROP INDEX public.titresactivites_titreid_index;
       public            postgres    false    265                       1259    1107259    titresactivites_typeid_index    INDEX     \   CREATE INDEX titresactivites_typeid_index ON public.titres_activites USING btree (type_id);
 0   DROP INDEX public.titresactivites_typeid_index;
       public            postgres    false    265                       1259    1107253 #   titresactivites_utilisateurid_index    INDEX     j   CREATE INDEX titresactivites_utilisateurid_index ON public.titres_activites USING btree (utilisateur_id);
 7   DROP INDEX public.titresactivites_utilisateurid_index;
       public            postgres    false    265            �           1259    1107054 9   titresadministrationsgestionnaires_administrationid_index    INDEX     �   CREATE INDEX titresadministrationsgestionnaires_administrationid_index ON public.titres_administrations_gestionnaires USING btree (administration_id);
 M   DROP INDEX public.titresadministrationsgestionnaires_administrationid_index;
       public            postgres    false    252            �           1259    1107048 0   titresadministrationsgestionnaires_titreid_index    INDEX     �   CREATE INDEX titresadministrationsgestionnaires_titreid_index ON public.titres_administrations_gestionnaires USING btree (titre_id);
 D   DROP INDEX public.titresadministrationsgestionnaires_titreid_index;
       public            postgres    false    252            �           1259    1107071 3   titresadministrationslocales_administrationid_index    INDEX     �   CREATE INDEX titresadministrationslocales_administrationid_index ON public.titres_administrations_locales USING btree (administration_id);
 G   DROP INDEX public.titresadministrationslocales_administrationid_index;
       public            postgres    false    253            �           1259    1107065 /   titresadministrationslocales_titreetapeid_index    INDEX     �   CREATE INDEX titresadministrationslocales_titreetapeid_index ON public.titres_administrations_locales USING btree (titre_etape_id);
 C   DROP INDEX public.titresadministrationslocales_titreetapeid_index;
       public            postgres    false    253            �           1259    1107037 %   titresamodiataires_entrepriseid_index    INDEX     n   CREATE INDEX titresamodiataires_entrepriseid_index ON public.titres_amodiataires USING btree (entreprise_id);
 9   DROP INDEX public.titresamodiataires_entrepriseid_index;
       public            postgres    false    251            �           1259    1107031 %   titresamodiataires_titreetapeid_index    INDEX     o   CREATE INDEX titresamodiataires_titreetapeid_index ON public.titres_amodiataires USING btree (titre_etape_id);
 9   DROP INDEX public.titresamodiataires_titreetapeid_index;
       public            postgres    false    251            �           1259    1107117    titrescommunes_communeid_index    INDEX     `   CREATE INDEX titrescommunes_communeid_index ON public.titres_communes USING btree (commune_id);
 2   DROP INDEX public.titrescommunes_communeid_index;
       public            postgres    false    256            �           1259    1107111 !   titrescommunes_titreetapeid_index    INDEX     g   CREATE INDEX titrescommunes_titreetapeid_index ON public.titres_communes USING btree (titre_etape_id);
 5   DROP INDEX public.titrescommunes_titreetapeid_index;
       public            postgres    false    256            �           1259    1106930    titresdemarches_statutid_index    INDEX     `   CREATE INDEX titresdemarches_statutid_index ON public.titres_demarches USING btree (statut_id);
 2   DROP INDEX public.titresdemarches_statutid_index;
       public            postgres    false    245            �           1259    1106918    titresdemarches_titreid_index    INDEX     ^   CREATE INDEX titresdemarches_titreid_index ON public.titres_demarches USING btree (titre_id);
 1   DROP INDEX public.titresdemarches_titreid_index;
       public            postgres    false    245            �           1259    1106924    titresdemarches_typeid_index    INDEX     \   CREATE INDEX titresdemarches_typeid_index ON public.titres_demarches USING btree (type_id);
 0   DROP INDEX public.titresdemarches_typeid_index;
       public            postgres    false    245            �           1259    1106939 0   titresdemarchesliens_enfanttitredemarcheid_index    INDEX     �   CREATE INDEX titresdemarchesliens_enfanttitredemarcheid_index ON public.titres_demarches_liens USING btree (enfant_titre_demarche_id);
 D   DROP INDEX public.titresdemarchesliens_enfanttitredemarcheid_index;
       public            postgres    false    246            �           1259    1106945 0   titresdemarchesliens_parenttitredemarcheid_index    INDEX     �   CREATE INDEX titresdemarchesliens_parenttitredemarcheid_index ON public.titres_demarches_liens USING btree (parent_titre_demarche_id);
 D   DROP INDEX public.titresdemarchesliens_parenttitredemarcheid_index;
       public            postgres    false    246            �           1259    1106988    titresetapes_statutid_index    INDEX     Z   CREATE INDEX titresetapes_statutid_index ON public.titres_etapes USING btree (statut_id);
 /   DROP INDEX public.titresetapes_statutid_index;
       public            postgres    false    248            �           1259    1106976 "   titresetapes_titredemarcheid_index    INDEX     i   CREATE INDEX titresetapes_titredemarcheid_index ON public.titres_etapes USING btree (titre_demarche_id);
 6   DROP INDEX public.titresetapes_titredemarcheid_index;
       public            postgres    false    248            �           1259    1106982    titresetapes_typeid_index    INDEX     V   CREATE INDEX titresetapes_typeid_index ON public.titres_etapes USING btree (type_id);
 -   DROP INDEX public.titresetapes_typeid_index;
       public            postgres    false    248            ?           1259    1107510 *   titresetapesjustificatifs_documentid_index    INDEX     y   CREATE INDEX titresetapesjustificatifs_documentid_index ON public.titres_etapes_justificatifs USING btree (document_id);
 >   DROP INDEX public.titresetapesjustificatifs_documentid_index;
       public            postgres    false    277            @           1259    1107504 ,   titresetapesjustificatifs_titreetapeid_index    INDEX     ~   CREATE INDEX titresetapesjustificatifs_titreetapeid_index ON public.titres_etapes_justificatifs USING btree (titre_etape_id);
 @   DROP INDEX public.titresetapesjustificatifs_titreetapeid_index;
       public            postgres    false    277            �           1259    1107093    titrespoints_coordonnees_index    INDEX     ^   CREATE INDEX titrespoints_coordonnees_index ON public.titres_points USING gist (coordonnees);
 2   DROP INDEX public.titrespoints_coordonnees_index;
       public            postgres    false    254            �           1259    1107087    titrespoints_titreetapeid_index    INDEX     c   CREATE INDEX titrespoints_titreetapeid_index ON public.titres_points USING btree (titre_etape_id);
 3   DROP INDEX public.titrespoints_titreetapeid_index;
       public            postgres    false    254            �           1259    1107102 )   titrespointsreferences_titrepointid_index    INDEX     x   CREATE INDEX titrespointsreferences_titrepointid_index ON public.titres_points_references USING btree (titre_point_id);
 =   DROP INDEX public.titrespointsreferences_titrepointid_index;
       public            postgres    false    255            �           1259    1107138    titresreferences_titreid_index    INDEX     `   CREATE INDEX titresreferences_titreid_index ON public.titres_references USING btree (titre_id);
 2   DROP INDEX public.titresreferences_titreid_index;
       public            postgres    false    258            �           1259    1107144    titresreferences_typeid_index    INDEX     ^   CREATE INDEX titresreferences_typeid_index ON public.titres_references USING btree (type_id);
 1   DROP INDEX public.titresreferences_typeid_index;
       public            postgres    false    258            �           1259    1107003 "   titressubstances_substanceid_index    INDEX     h   CREATE INDEX titressubstances_substanceid_index ON public.titres_substances USING btree (substance_id);
 6   DROP INDEX public.titressubstances_substanceid_index;
       public            postgres    false    249            �           1259    1106997 #   titressubstances_titreetapeid_index    INDEX     k   CREATE INDEX titressubstances_titreetapeid_index ON public.titres_substances USING btree (titre_etape_id);
 7   DROP INDEX public.titressubstances_titreetapeid_index;
       public            postgres    false    249            �           1259    1107020 #   titrestitulaires_entrepriseid_index    INDEX     j   CREATE INDEX titrestitulaires_entrepriseid_index ON public.titres_titulaires USING btree (entreprise_id);
 7   DROP INDEX public.titrestitulaires_entrepriseid_index;
       public            postgres    false    250            �           1259    1107014 #   titrestitulaires_titreetapeid_index    INDEX     k   CREATE INDEX titrestitulaires_titreetapeid_index ON public.titres_titulaires USING btree (titre_etape_id);
 7   DROP INDEX public.titrestitulaires_titreetapeid_index;
       public            postgres    false    250                       1259    1107328    titrestravaux_statutid_index    INDEX     \   CREATE INDEX titrestravaux_statutid_index ON public.titres_travaux USING btree (statut_id);
 0   DROP INDEX public.titrestravaux_statutid_index;
       public            postgres    false    269                       1259    1107322    titrestravaux_titreid_index    INDEX     Z   CREATE INDEX titrestravaux_titreid_index ON public.titres_travaux USING btree (titre_id);
 /   DROP INDEX public.titrestravaux_titreid_index;
       public            postgres    false    269                       1259    1107334    titrestravaux_typeid_index    INDEX     X   CREATE INDEX titrestravaux_typeid_index ON public.titres_travaux USING btree (type_id);
 .   DROP INDEX public.titrestravaux_typeid_index;
       public            postgres    false    269                       1259    1107354 "   titrestravauxetapes_statutid_index    INDEX     i   CREATE INDEX titrestravauxetapes_statutid_index ON public.titres_travaux_etapes USING btree (statut_id);
 6   DROP INDEX public.titrestravauxetapes_statutid_index;
       public            postgres    false    270                        1259    1107348 (   titrestravauxetapes_titretravauxid_index    INDEX     v   CREATE INDEX titrestravauxetapes_titretravauxid_index ON public.titres_travaux_etapes USING btree (titre_travaux_id);
 <   DROP INDEX public.titrestravauxetapes_titretravauxid_index;
       public            postgres    false    270            !           1259    1107360     titrestravauxetapes_typeid_index    INDEX     e   CREATE INDEX titrestravauxetapes_typeid_index ON public.titres_travaux_etapes USING btree (type_id);
 4   DROP INDEX public.titrestravauxetapes_typeid_index;
       public            postgres    false    270            �           1259    1107175 0   titrestypes__activitestypes_activitetypeid_index    INDEX     �   CREATE INDEX titrestypes__activitestypes_activitetypeid_index ON public.titres_types__activites_types USING btree (activite_type_id);
 D   DROP INDEX public.titrestypes__activitestypes_activitetypeid_index;
       public            postgres    false    260            �           1259    1107169 -   titrestypes__activitestypes_titretypeid_index    INDEX     �   CREATE INDEX titrestypes__activitestypes_titretypeid_index ON public.titres_types__activites_types USING btree (titre_type_id);
 A   DROP INDEX public.titrestypes__activitestypes_titretypeid_index;
       public            postgres    false    260            k           1259    1106553 =   titrestypes__demarchestypes__etapestypes_demarchetypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes__etapestypes_demarchetypeid_index ON public.titres_types__demarches_types__etapes_types USING btree (demarche_type_id);
 Q   DROP INDEX public.titrestypes__demarchestypes__etapestypes_demarchetypeid_index;
       public            postgres    false    216            l           1259    1106559 :   titrestypes__demarchestypes__etapestypes_etapetypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes__etapestypes_etapetypeid_index ON public.titres_types__demarches_types__etapes_types USING btree (etape_type_id);
 N   DROP INDEX public.titrestypes__demarchestypes__etapestypes_etapetypeid_index;
       public            postgres    false    216            m           1259    1106547 :   titrestypes__demarchestypes__etapestypes_titretypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes__etapestypes_titretypeid_index ON public.titres_types__demarches_types__etapes_types USING btree (titre_type_id);
 N   DROP INDEX public.titrestypes__demarchestypes__etapestypes_titretypeid_index;
       public            postgres    false    216            a           1259    1106512 0   titrestypes__demarchestypes_demarchetypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes_demarchetypeid_index ON public.titres_types__demarches_types USING btree (demarche_type_id);
 D   DROP INDEX public.titrestypes__demarchestypes_demarchetypeid_index;
       public            postgres    false    212            b           1259    1106506 -   titrestypes__demarchestypes_titretypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes_titretypeid_index ON public.titres_types__demarches_types USING btree (titre_type_id);
 A   DROP INDEX public.titrestypes__demarchestypes_titretypeid_index;
       public            postgres    false    212            W           1259    1106470    titrestypes_domaineid_index    INDEX     Z   CREATE INDEX titrestypes_domaineid_index ON public.titres_types USING btree (domaine_id);
 /   DROP INDEX public.titrestypes_domaineid_index;
       public            postgres    false    209            Z           1259    1106476    titrestypes_typeid_index    INDEX     T   CREATE INDEX titrestypes_typeid_index ON public.titres_types USING btree (type_id);
 ,   DROP INDEX public.titrestypes_typeid_index;
       public            postgres    false    209                       1259    1107288 5   travauxtypes__demarchesstatuts_demarchestatutid_index    INDEX     �   CREATE INDEX travauxtypes__demarchesstatuts_demarchestatutid_index ON public.travaux_types__demarches_statuts USING btree (demarche_statut_id);
 I   DROP INDEX public.travauxtypes__demarchesstatuts_demarchestatutid_index;
       public            postgres    false    267                       1259    1107282 2   travauxtypes__demarchesstatuts_travauxtypeid_index    INDEX     �   CREATE INDEX travauxtypes__demarchesstatuts_travauxtypeid_index ON public.travaux_types__demarches_statuts USING btree (travaux_type_id);
 F   DROP INDEX public.travauxtypes__demarchesstatuts_travauxtypeid_index;
       public            postgres    false    267                       1259    1107308 +   travauxtypes__etapestypes_etapetypeid_index    INDEX     |   CREATE INDEX travauxtypes__etapestypes_etapetypeid_index ON public.travaux_types__etapes_types USING btree (etape_type_id);
 ?   DROP INDEX public.travauxtypes__etapestypes_etapetypeid_index;
       public            postgres    false    268                       1259    1107302 -   travauxtypes__etapestypes_travauxtypeid_index    INDEX     �   CREATE INDEX travauxtypes__etapestypes_travauxtypeid_index ON public.travaux_types__etapes_types USING btree (travaux_type_id);
 A   DROP INDEX public.travauxtypes__etapestypes_travauxtypeid_index;
       public            postgres    false    268            �           1259    1106753    trimestres_frequenceid_index    INDEX     [   CREATE INDEX trimestres_frequenceid_index ON public.trimestres USING btree (frequence_id);
 0   DROP INDEX public.trimestres_frequenceid_index;
       public            postgres    false    234            �           1259    1106874 4   utilisateurs__administrations_administrationid_index    INDEX     �   CREATE INDEX utilisateurs__administrations_administrationid_index ON public.utilisateurs__administrations USING btree (administration_id);
 H   DROP INDEX public.utilisateurs__administrations_administrationid_index;
       public            postgres    false    243            �           1259    1106868 1   utilisateurs__administrations_utilisateurid_index    INDEX     �   CREATE INDEX utilisateurs__administrations_utilisateurid_index ON public.utilisateurs__administrations USING btree (utilisateur_id);
 E   DROP INDEX public.utilisateurs__administrations_utilisateurid_index;
       public            postgres    false    243            �           1259    1106859 ,   utilisateurs__entreprises_entrepriseid_index    INDEX     {   CREATE INDEX utilisateurs__entreprises_entrepriseid_index ON public.utilisateurs__entreprises USING btree (entreprise_id);
 @   DROP INDEX public.utilisateurs__entreprises_entrepriseid_index;
       public            postgres    false    242            �           1259    1106853 -   utilisateurs__entreprises_utilisateurid_index    INDEX     }   CREATE INDEX utilisateurs__entreprises_utilisateurid_index ON public.utilisateurs__entreprises USING btree (utilisateur_id);
 A   DROP INDEX public.utilisateurs__entreprises_utilisateurid_index;
       public            postgres    false    242            �           1259    1106844    utilisateurs_permissionid_index    INDEX     a   CREATE INDEX utilisateurs_permissionid_index ON public.utilisateurs USING btree (permission_id);
 3   DROP INDEX public.utilisateurs_permissionid_index;
       public            postgres    false    241            �           2606    1107398 Y   a__titres_types__administrations a__titrestypes__administrations_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.a__titres_types__administrations
    ADD CONSTRAINT a__titrestypes__administrations_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.a__titres_types__administrations DROP CONSTRAINT a__titrestypes__administrations_administrationid_foreign;
       public          postgres    false    273    239    3499            �           2606    1107404 T   a__titres_types__administrations a__titrestypes__administrations_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.a__titres_types__administrations
    ADD CONSTRAINT a__titrestypes__administrations_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 ~   ALTER TABLE ONLY public.a__titres_types__administrations DROP CONSTRAINT a__titrestypes__administrations_titretypeid_foreign;
       public          postgres    false    273    3414    209            �           2606    1107379 S   a__titres_types__titres_statuts a__titrestypes__titresstatuts_titrestatutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.a__titres_types__titres_statuts
    ADD CONSTRAINT a__titrestypes__titresstatuts_titrestatutid_foreign FOREIGN KEY (titre_statut_id) REFERENCES public.titres_statuts(id);
 }   ALTER TABLE ONLY public.a__titres_types__titres_statuts DROP CONSTRAINT a__titrestypes__titresstatuts_titrestatutid_foreign;
       public          postgres    false    210    3420    271            �           2606    1107373 Q   a__titres_types__titres_statuts a__titrestypes__titresstatuts_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.a__titres_types__titres_statuts
    ADD CONSTRAINT a__titrestypes__titresstatuts_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 {   ALTER TABLE ONLY public.a__titres_types__titres_statuts DROP CONSTRAINT a__titrestypes__titresstatuts_titretypeid_foreign;
       public          postgres    false    3414    209    271            �           2606    1107204 W   activites_types__administrations activitestypes__administrations_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__administrations
    ADD CONSTRAINT activitestypes__administrations_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.activites_types__administrations DROP CONSTRAINT activitestypes__administrations_activitetypeid_foreign;
       public          postgres    false    259    3572    262            �           2606    1107210 Y   activites_types__administrations activitestypes__administrations_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__administrations
    ADD CONSTRAINT activitestypes__administrations_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.activites_types__administrations DROP CONSTRAINT activitestypes__administrations_administrationid_foreign;
       public          postgres    false    239    3499    262            �           2606    1107221 V   activites_types__documents_types activitestypes__documentstypes_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__documents_types
    ADD CONSTRAINT activitestypes__documentstypes_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id);
 �   ALTER TABLE ONLY public.activites_types__documents_types DROP CONSTRAINT activitestypes__documentstypes_activitetypeid_foreign;
       public          postgres    false    3572    259    263            �           2606    1107227 V   activites_types__documents_types activitestypes__documentstypes_documenttypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__documents_types
    ADD CONSTRAINT activitestypes__documentstypes_documenttypeid_foreign FOREIGN KEY (document_type_id) REFERENCES public.documents_types(id);
 �   ALTER TABLE ONLY public.activites_types__documents_types DROP CONSTRAINT activitestypes__documentstypes_documenttypeid_foreign;
       public          postgres    false    3445    263    219            �           2606    1107193 A   activites_types__pays activitestypes__pays_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__pays
    ADD CONSTRAINT activitestypes__pays_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.activites_types__pays DROP CONSTRAINT activitestypes__pays_activitetypeid_foreign;
       public          postgres    false    3572    261    259            �           2606    1107187 9   activites_types__pays activitestypes__pays_paysid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__pays
    ADD CONSTRAINT activitestypes__pays_paysid_foreign FOREIGN KEY (pays_id) REFERENCES public.pays(id);
 c   ALTER TABLE ONLY public.activites_types__pays DROP CONSTRAINT activitestypes__pays_paysid_foreign;
       public          postgres    false    3468    228    261                       2606    1107161 2   activites_types activitestypes_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types
    ADD CONSTRAINT activitestypes_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 \   ALTER TABLE ONLY public.activites_types DROP CONSTRAINT activitestypes_frequenceid_foreign;
       public          postgres    false    232    259    3479            Z           2606    1106818 5   administrations administrations_departementid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_departementid_foreign FOREIGN KEY (departement_id) REFERENCES public.departements(id);
 _   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_departementid_foreign;
       public          postgres    false    239    3473    230            [           2606    1106824 0   administrations administrations_regionid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_regionid_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id);
 Z   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_regionid_foreign;
       public          postgres    false    229    3471    239            Y           2606    1106812 .   administrations administrations_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.administrations_types(id);
 X   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_typeid_foreign;
       public          postgres    false    238    239    3496            T           2606    1106743 !   annees annees_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.annees
    ADD CONSTRAINT annees_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 K   ALTER TABLE ONLY public.annees DROP CONSTRAINT annees_frequenceid_foreign;
       public          postgres    false    233    232    3479            S           2606    1106724 '   communes communes_departementid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.communes
    ADD CONSTRAINT communes_departementid_foreign FOREIGN KEY (departement_id) REFERENCES public.departements(id);
 Q   ALTER TABLE ONLY public.communes DROP CONSTRAINT communes_departementid_foreign;
       public          postgres    false    231    230    3473            R           2606    1106713 *   departements departements_regionid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.departements
    ADD CONSTRAINT departements_regionid_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id);
 T   ALTER TABLE ONLY public.departements DROP CONSTRAINT departements_regionid_foreign;
       public          postgres    false    230    229    3471            �           2606    1107478 (   documents documents_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_entrepriseid_foreign;
       public          postgres    false    236    276    3491            �           2606    1107490 +   documents documents_titreactiviteid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_titreactiviteid_foreign FOREIGN KEY (titre_activite_id) REFERENCES public.titres_activites(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_titreactiviteid_foreign;
       public          postgres    false    276    3593    265            �           2606    1107484 (   documents documents_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_titreetapeid_foreign;
       public          postgres    false    248    276    3530            �           2606    1107496 /   documents documents_titretravauxetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_titretravauxetapeid_foreign FOREIGN KEY (titre_travaux_etape_id) REFERENCES public.titres_travaux_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_titretravauxetapeid_foreign;
       public          postgres    false    3614    276    270            �           2606    1107472 "   documents documents_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.documents_types(id);
 L   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_typeid_foreign;
       public          postgres    false    3445    219    276            X           2606    1106793 I   entreprises_etablissements entreprisesetablissements_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.entreprises_etablissements
    ADD CONSTRAINT entreprisesetablissements_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.entreprises_etablissements DROP CONSTRAINT entreprisesetablissements_entrepriseid_foreign;
       public          postgres    false    237    236    3491            K           2606    1106585 M   etapes_types__etapes_statuts etapestypes__etapesstatuts_etapestatutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types__etapes_statuts
    ADD CONSTRAINT etapestypes__etapesstatuts_etapestatutid_foreign FOREIGN KEY (etape_statut_id) REFERENCES public.etapes_statuts(id) ON DELETE CASCADE;
 w   ALTER TABLE ONLY public.etapes_types__etapes_statuts DROP CONSTRAINT etapestypes__etapesstatuts_etapestatutid_foreign;
       public          postgres    false    218    217    3439            J           2606    1106579 K   etapes_types__etapes_statuts etapestypes__etapesstatuts_etapetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types__etapes_statuts
    ADD CONSTRAINT etapestypes__etapesstatuts_etapetypeid_foreign FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id) ON DELETE CASCADE;
 u   ALTER TABLE ONLY public.etapes_types__etapes_statuts DROP CONSTRAINT etapestypes__etapesstatuts_etapetypeid_foreign;
       public          postgres    false    218    215    3432            L           2606    1106622 (   geo_systemes geosystemes_uniteid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.geo_systemes
    ADD CONSTRAINT geosystemes_uniteid_foreign FOREIGN KEY (unite_id) REFERENCES public.unites(id);
 R   ALTER TABLE ONLY public.geo_systemes DROP CONSTRAINT geosystemes_uniteid_foreign;
       public          postgres    false    3449    221    222            V           2606    1106765    mois mois_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.mois
    ADD CONSTRAINT mois_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 G   ALTER TABLE ONLY public.mois DROP CONSTRAINT mois_frequenceid_foreign;
       public          postgres    false    235    232    3479            W           2606    1106771    mois mois_trimestreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.mois
    ADD CONSTRAINT mois_trimestreid_foreign FOREIGN KEY (trimestre_id) REFERENCES public.trimestres(id);
 G   ALTER TABLE ONLY public.mois DROP CONSTRAINT mois_trimestreid_foreign;
       public          postgres    false    235    234    3485            �           2606    1107444 n   r__titres_types__etapes_types__administrations r__titrestypes__etapestypes__administrations_administrationid_f    FK CONSTRAINT       ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations
    ADD CONSTRAINT r__titrestypes__etapestypes__administrations_administrationid_f FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations DROP CONSTRAINT r__titrestypes__etapestypes__administrations_administrationid_f;
       public          postgres    false    239    3499    275            �           2606    1107456 n   r__titres_types__etapes_types__administrations r__titrestypes__etapestypes__administrations_etapetypeid_foreig    FK CONSTRAINT     �   ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations
    ADD CONSTRAINT r__titrestypes__etapestypes__administrations_etapetypeid_foreig FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id);
 �   ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations DROP CONSTRAINT r__titrestypes__etapestypes__administrations_etapetypeid_foreig;
       public          postgres    false    215    275    3432            �           2606    1107450 n   r__titres_types__etapes_types__administrations r__titrestypes__etapestypes__administrations_titretypeid_foreig    FK CONSTRAINT     �   ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations
    ADD CONSTRAINT r__titrestypes__etapestypes__administrations_titretypeid_foreig FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 �   ALTER TABLE ONLY public.r__titres_types__etapes_types__administrations DROP CONSTRAINT r__titrestypes__etapestypes__administrations_titretypeid_foreig;
       public          postgres    false    275    209    3414            �           2606    1107418 p   r__titres_types__titres_statuts__administrations r__titrestypes__titresstatuts__administrations_administrationid    FK CONSTRAINT       ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations
    ADD CONSTRAINT r__titrestypes__titresstatuts__administrations_administrationid FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations DROP CONSTRAINT r__titrestypes__titresstatuts__administrations_administrationid;
       public          postgres    false    3499    239    274            �           2606    1107430 p   r__titres_types__titres_statuts__administrations r__titrestypes__titresstatuts__administrations_titrestatutid_fo    FK CONSTRAINT     �   ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations
    ADD CONSTRAINT r__titrestypes__titresstatuts__administrations_titrestatutid_fo FOREIGN KEY (titre_statut_id) REFERENCES public.titres_statuts(id);
 �   ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations DROP CONSTRAINT r__titrestypes__titresstatuts__administrations_titrestatutid_fo;
       public          postgres    false    3420    210    274            �           2606    1107424 p   r__titres_types__titres_statuts__administrations r__titrestypes__titresstatuts__administrations_titretypeid_fore    FK CONSTRAINT     �   ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations
    ADD CONSTRAINT r__titrestypes__titresstatuts__administrations_titretypeid_fore FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 �   ALTER TABLE ONLY public.r__titres_types__titres_statuts__administrations DROP CONSTRAINT r__titrestypes__titresstatuts__administrations_titretypeid_fore;
       public          postgres    false    209    3414    274            Q           2606    1106702    regions regions_paysid_foreign    FK CONSTRAINT     |   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_paysid_foreign FOREIGN KEY (pays_id) REFERENCES public.pays(id);
 H   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_paysid_foreign;
       public          postgres    false    229    228    3468            O           2606    1106675 P   substances__substances_legales substances__substanceslegales_substanceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances__substances_legales
    ADD CONSTRAINT substances__substanceslegales_substanceid_foreign FOREIGN KEY (substance_id) REFERENCES public.substances(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.substances__substances_legales DROP CONSTRAINT substances__substanceslegales_substanceid_foreign;
       public          postgres    false    227    226    3462            P           2606    1106681 V   substances__substances_legales substances__substanceslegales_substancelegaleid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances__substances_legales
    ADD CONSTRAINT substances__substanceslegales_substancelegaleid_foreign FOREIGN KEY (substance_legale_id) REFERENCES public.substances_legales(id);
 �   ALTER TABLE ONLY public.substances__substances_legales DROP CONSTRAINT substances__substanceslegales_substancelegaleid_foreign;
       public          postgres    false    227    225    3458            M           2606    1106649 6   substances_legales substanceslegales_domaineid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances_legales
    ADD CONSTRAINT substanceslegales_domaineid_foreign FOREIGN KEY (domaine_id) REFERENCES public.domaines(id);
 `   ALTER TABLE ONLY public.substances_legales DROP CONSTRAINT substanceslegales_domaineid_foreign;
       public          postgres    false    225    207    3410            N           2606    1106655 B   substances_legales substanceslegales_substancelegalecodeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances_legales
    ADD CONSTRAINT substanceslegales_substancelegalecodeid_foreign FOREIGN KEY (substance_legale_code_id) REFERENCES public.substances_legales_codes(id);
 l   ALTER TABLE ONLY public.substances_legales DROP CONSTRAINT substanceslegales_substancelegalecodeid_foreign;
       public          postgres    false    225    224    3456            b           2606    1106898    titres titres_domaineid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_domaineid_foreign FOREIGN KEY (domaine_id) REFERENCES public.domaines(id);
 I   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_domaineid_foreign;
       public          postgres    false    244    3410    207            c           2606    1106904    titres titres_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.titres_statuts(id);
 H   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_statutid_foreign;
       public          postgres    false    3420    210    244            a           2606    1106892    titres titres_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.titres_types(id);
 F   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_typeid_foreign;
       public          postgres    false    3414    244    209            �           2606    1107266 1   titres_activites titresactivites_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.activites_statuts(id);
 [   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_statutid_foreign;
       public          postgres    false    3591    265    264            �           2606    1107248 0   titres_activites titresactivites_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_titreid_foreign;
       public          postgres    false    3515    265    244            �           2606    1107260 /   titres_activites titresactivites_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.activites_types(id);
 Y   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_typeid_foreign;
       public          postgres    false    259    265    3572            �           2606    1107254 6   titres_activites titresactivites_utilisateurid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_utilisateurid_foreign FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateurs(id);
 `   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_utilisateurid_foreign;
       public          postgres    false    241    265    3508            u           2606    1107055 `   titres_administrations_gestionnaires titresadministrationsgestionnaires_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_gestionnaires
    ADD CONSTRAINT titresadministrationsgestionnaires_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.titres_administrations_gestionnaires DROP CONSTRAINT titresadministrationsgestionnaires_administrationid_foreign;
       public          postgres    false    239    3499    252            t           2606    1107049 W   titres_administrations_gestionnaires titresadministrationsgestionnaires_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_gestionnaires
    ADD CONSTRAINT titresadministrationsgestionnaires_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.titres_administrations_gestionnaires DROP CONSTRAINT titresadministrationsgestionnaires_titreid_foreign;
       public          postgres    false    252    3515    244            w           2606    1107072 T   titres_administrations_locales titresadministrationslocales_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_locales
    ADD CONSTRAINT titresadministrationslocales_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.titres_administrations_locales DROP CONSTRAINT titresadministrationslocales_administrationid_foreign;
       public          postgres    false    253    3499    239            v           2606    1107066 P   titres_administrations_locales titresadministrationslocales_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_locales
    ADD CONSTRAINT titresadministrationslocales_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.titres_administrations_locales DROP CONSTRAINT titresadministrationslocales_titreetapeid_foreign;
       public          postgres    false    248    3530    253            s           2606    1107038 ;   titres_amodiataires titresamodiataires_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_amodiataires
    ADD CONSTRAINT titresamodiataires_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.titres_amodiataires DROP CONSTRAINT titresamodiataires_entrepriseid_foreign;
       public          postgres    false    251    3491    236            r           2606    1107032 ;   titres_amodiataires titresamodiataires_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_amodiataires
    ADD CONSTRAINT titresamodiataires_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.titres_amodiataires DROP CONSTRAINT titresamodiataires_titreetapeid_foreign;
       public          postgres    false    3530    251    248            {           2606    1107118 0   titres_communes titrescommunes_communeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_communes
    ADD CONSTRAINT titrescommunes_communeid_foreign FOREIGN KEY (commune_id) REFERENCES public.communes(id);
 Z   ALTER TABLE ONLY public.titres_communes DROP CONSTRAINT titrescommunes_communeid_foreign;
       public          postgres    false    256    3477    231            z           2606    1107112 3   titres_communes titrescommunes_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_communes
    ADD CONSTRAINT titrescommunes_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.titres_communes DROP CONSTRAINT titrescommunes_titreetapeid_foreign;
       public          postgres    false    3530    256    248            f           2606    1106931 1   titres_demarches titresdemarches_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titresdemarches_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.demarches_statuts(id);
 [   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titresdemarches_statutid_foreign;
       public          postgres    false    245    213    3428            d           2606    1106919 0   titres_demarches titresdemarches_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titresdemarches_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titresdemarches_titreid_foreign;
       public          postgres    false    3515    244    245            e           2606    1106925 /   titres_demarches titresdemarches_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titresdemarches_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.demarches_types(id);
 Y   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titresdemarches_typeid_foreign;
       public          postgres    false    211    245    3422            g           2606    1106940 I   titres_demarches_liens titresdemarchesliens_enfanttitredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches_liens
    ADD CONSTRAINT titresdemarchesliens_enfanttitredemarcheid_foreign FOREIGN KEY (enfant_titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.titres_demarches_liens DROP CONSTRAINT titresdemarchesliens_enfanttitredemarcheid_foreign;
       public          postgres    false    3519    245    246            h           2606    1106946 I   titres_demarches_liens titresdemarchesliens_parenttitredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches_liens
    ADD CONSTRAINT titresdemarchesliens_parenttitredemarcheid_foreign FOREIGN KEY (parent_titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.titres_demarches_liens DROP CONSTRAINT titresdemarchesliens_parenttitredemarcheid_foreign;
       public          postgres    false    3519    246    245            m           2606    1106989 +   titres_etapes titresetapes_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titresetapes_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.etapes_statuts(id);
 U   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titresetapes_statutid_foreign;
       public          postgres    false    3439    248    217            k           2606    1106977 2   titres_etapes titresetapes_titredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titresetapes_titredemarcheid_foreign FOREIGN KEY (titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titresetapes_titredemarcheid_foreign;
       public          postgres    false    3519    248    245            l           2606    1106983 )   titres_etapes titresetapes_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titresetapes_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.etapes_types(id);
 S   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titresetapes_typeid_foreign;
       public          postgres    false    248    215    3432            �           2606    1107511 H   titres_etapes_justificatifs titresetapesjustificatifs_documentid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes_justificatifs
    ADD CONSTRAINT titresetapesjustificatifs_documentid_foreign FOREIGN KEY (document_id) REFERENCES public.documents(id) ON UPDATE CASCADE ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.titres_etapes_justificatifs DROP CONSTRAINT titresetapesjustificatifs_documentid_foreign;
       public          postgres    false    276    3640    277            �           2606    1107505 J   titres_etapes_justificatifs titresetapesjustificatifs_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes_justificatifs
    ADD CONSTRAINT titresetapesjustificatifs_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 t   ALTER TABLE ONLY public.titres_etapes_justificatifs DROP CONSTRAINT titresetapesjustificatifs_titreetapeid_foreign;
       public          postgres    false    277    3530    248            |           2606    1107130 ;   titres_incertitudes titresincertitudes_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_incertitudes
    ADD CONSTRAINT titresincertitudes_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.titres_incertitudes DROP CONSTRAINT titresincertitudes_titreetapeid_foreign;
       public          postgres    false    257    248    3530            j           2606    1106963 +   titres_phases titresphases_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_phases
    ADD CONSTRAINT titresphases_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.phases_statuts(id);
 U   ALTER TABLE ONLY public.titres_phases DROP CONSTRAINT titresphases_statutid_foreign;
       public          postgres    false    3430    247    214            i           2606    1106958 2   titres_phases titresphases_titredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_phases
    ADD CONSTRAINT titresphases_titredemarcheid_foreign FOREIGN KEY (titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.titres_phases DROP CONSTRAINT titresphases_titredemarcheid_foreign;
       public          postgres    false    245    247    3519            x           2606    1107088 /   titres_points titrespoints_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_points
    ADD CONSTRAINT titrespoints_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.titres_points DROP CONSTRAINT titrespoints_titreetapeid_foreign;
       public          postgres    false    248    3530    254            y           2606    1107103 D   titres_points_references titrespointsreferences_titrepointid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_points_references
    ADD CONSTRAINT titrespointsreferences_titrepointid_foreign FOREIGN KEY (titre_point_id) REFERENCES public.titres_points(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.titres_points_references DROP CONSTRAINT titrespointsreferences_titrepointid_foreign;
       public          postgres    false    254    3555    255            }           2606    1107139 2   titres_references titresreferences_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_references
    ADD CONSTRAINT titresreferences_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.titres_references DROP CONSTRAINT titresreferences_titreid_foreign;
       public          postgres    false    244    258    3515            ~           2606    1107145 1   titres_references titresreferences_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_references
    ADD CONSTRAINT titresreferences_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.references_types(id);
 [   ALTER TABLE ONLY public.titres_references DROP CONSTRAINT titresreferences_typeid_foreign;
       public          postgres    false    3454    258    223            o           2606    1107004 6   titres_substances titressubstances_substanceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_substances
    ADD CONSTRAINT titressubstances_substanceid_foreign FOREIGN KEY (substance_id) REFERENCES public.substances(id);
 `   ALTER TABLE ONLY public.titres_substances DROP CONSTRAINT titressubstances_substanceid_foreign;
       public          postgres    false    3462    226    249            n           2606    1106998 7   titres_substances titressubstances_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_substances
    ADD CONSTRAINT titressubstances_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.titres_substances DROP CONSTRAINT titressubstances_titreetapeid_foreign;
       public          postgres    false    3530    249    248            q           2606    1107021 7   titres_titulaires titrestitulaires_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_titulaires
    ADD CONSTRAINT titrestitulaires_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.titres_titulaires DROP CONSTRAINT titrestitulaires_entrepriseid_foreign;
       public          postgres    false    3491    236    250            p           2606    1107015 7   titres_titulaires titrestitulaires_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_titulaires
    ADD CONSTRAINT titrestitulaires_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.titres_titulaires DROP CONSTRAINT titrestitulaires_titreetapeid_foreign;
       public          postgres    false    250    3530    248            �           2606    1107329 -   titres_travaux titrestravaux_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux
    ADD CONSTRAINT titrestravaux_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.demarches_statuts(id);
 W   ALTER TABLE ONLY public.titres_travaux DROP CONSTRAINT titrestravaux_statutid_foreign;
       public          postgres    false    3428    213    269            �           2606    1107323 ,   titres_travaux titrestravaux_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux
    ADD CONSTRAINT titrestravaux_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.titres_travaux DROP CONSTRAINT titrestravaux_titreid_foreign;
       public          postgres    false    3515    269    244            �           2606    1107335 +   titres_travaux titrestravaux_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux
    ADD CONSTRAINT titrestravaux_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.travaux_types(id);
 U   ALTER TABLE ONLY public.titres_travaux DROP CONSTRAINT titrestravaux_typeid_foreign;
       public          postgres    false    3599    266    269            �           2606    1107355 :   titres_travaux_etapes titrestravauxetapes_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux_etapes
    ADD CONSTRAINT titrestravauxetapes_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.etapes_statuts(id);
 d   ALTER TABLE ONLY public.titres_travaux_etapes DROP CONSTRAINT titrestravauxetapes_statutid_foreign;
       public          postgres    false    217    3439    270            �           2606    1107349 @   titres_travaux_etapes titrestravauxetapes_titretravauxid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux_etapes
    ADD CONSTRAINT titrestravauxetapes_titretravauxid_foreign FOREIGN KEY (titre_travaux_id) REFERENCES public.titres_travaux(id) ON UPDATE CASCADE ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.titres_travaux_etapes DROP CONSTRAINT titrestravauxetapes_titretravauxid_foreign;
       public          postgres    false    270    269    3609            �           2606    1107361 8   titres_travaux_etapes titrestravauxetapes_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux_etapes
    ADD CONSTRAINT titrestravauxetapes_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.etapes_types(id);
 b   ALTER TABLE ONLY public.titres_travaux_etapes DROP CONSTRAINT titrestravauxetapes_typeid_foreign;
       public          postgres    false    215    270    3432            �           2606    1107176 P   titres_types__activites_types titrestypes__activitestypes_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__activites_types
    ADD CONSTRAINT titrestypes__activitestypes_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id);
 z   ALTER TABLE ONLY public.titres_types__activites_types DROP CONSTRAINT titrestypes__activitestypes_activitetypeid_foreign;
       public          postgres    false    3572    260    259            �           2606    1107170 M   titres_types__activites_types titrestypes__activitestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__activites_types
    ADD CONSTRAINT titrestypes__activitestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 w   ALTER TABLE ONLY public.titres_types__activites_types DROP CONSTRAINT titrestypes__activitestypes_titretypeid_foreign;
       public          postgres    false    209    260    3414            H           2606    1106554 k   titres_types__demarches_types__etapes_types titrestypes__demarchestypes__etapestypes_demarchetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titrestypes__demarchestypes__etapestypes_demarchetypeid_foreign FOREIGN KEY (demarche_type_id) REFERENCES public.demarches_types(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titrestypes__demarchestypes__etapestypes_demarchetypeid_foreign;
       public          postgres    false    216    211    3422            I           2606    1106560 h   titres_types__demarches_types__etapes_types titrestypes__demarchestypes__etapestypes_etapetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titrestypes__demarchestypes__etapestypes_etapetypeid_foreign FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titrestypes__demarchestypes__etapestypes_etapetypeid_foreign;
       public          postgres    false    216    215    3432            G           2606    1106548 h   titres_types__demarches_types__etapes_types titrestypes__demarchestypes__etapestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titrestypes__demarchestypes__etapestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titrestypes__demarchestypes__etapestypes_titretypeid_foreign;
       public          postgres    false    216    209    3414            F           2606    1106513 P   titres_types__demarches_types titrestypes__demarchestypes_demarchetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types
    ADD CONSTRAINT titrestypes__demarchestypes_demarchetypeid_foreign FOREIGN KEY (demarche_type_id) REFERENCES public.demarches_types(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.titres_types__demarches_types DROP CONSTRAINT titrestypes__demarchestypes_demarchetypeid_foreign;
       public          postgres    false    3422    212    211            E           2606    1106507 M   titres_types__demarches_types titrestypes__demarchestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types
    ADD CONSTRAINT titrestypes__demarchestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id) ON DELETE CASCADE;
 w   ALTER TABLE ONLY public.titres_types__demarches_types DROP CONSTRAINT titrestypes__demarchestypes_titretypeid_foreign;
       public          postgres    false    212    209    3414            C           2606    1106471 *   titres_types titrestypes_domaineid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titrestypes_domaineid_foreign FOREIGN KEY (domaine_id) REFERENCES public.domaines(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titrestypes_domaineid_foreign;
       public          postgres    false    209    207    3410            D           2606    1106477 '   titres_types titrestypes_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titrestypes_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.titres_types_types(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titrestypes_typeid_foreign;
       public          postgres    false    209    208    3412            �           2606    1107289 X   travaux_types__demarches_statuts travauxtypes__demarchesstatuts_demarchestatutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.travaux_types__demarches_statuts
    ADD CONSTRAINT travauxtypes__demarchesstatuts_demarchestatutid_foreign FOREIGN KEY (demarche_statut_id) REFERENCES public.demarches_statuts(id);
 �   ALTER TABLE ONLY public.travaux_types__demarches_statuts DROP CONSTRAINT travauxtypes__demarchesstatuts_demarchestatutid_foreign;
       public          postgres    false    213    267    3428            �           2606    1107283 U   travaux_types__demarches_statuts travauxtypes__demarchesstatuts_travauxtypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.travaux_types__demarches_statuts
    ADD CONSTRAINT travauxtypes__demarchesstatuts_travauxtypeid_foreign FOREIGN KEY (travaux_type_id) REFERENCES public.travaux_types(id);
    ALTER TABLE ONLY public.travaux_types__demarches_statuts DROP CONSTRAINT travauxtypes__demarchesstatuts_travauxtypeid_foreign;
       public          postgres    false    266    267    3599            �           2606    1107309 I   travaux_types__etapes_types travauxtypes__etapestypes_etapetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.travaux_types__etapes_types
    ADD CONSTRAINT travauxtypes__etapestypes_etapetypeid_foreign FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id);
 s   ALTER TABLE ONLY public.travaux_types__etapes_types DROP CONSTRAINT travauxtypes__etapestypes_etapetypeid_foreign;
       public          postgres    false    268    3432    215            �           2606    1107303 K   travaux_types__etapes_types travauxtypes__etapestypes_travauxtypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.travaux_types__etapes_types
    ADD CONSTRAINT travauxtypes__etapestypes_travauxtypeid_foreign FOREIGN KEY (travaux_type_id) REFERENCES public.travaux_types(id);
 u   ALTER TABLE ONLY public.travaux_types__etapes_types DROP CONSTRAINT travauxtypes__etapestypes_travauxtypeid_foreign;
       public          postgres    false    266    268    3599            U           2606    1106754 )   trimestres trimestres_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.trimestres
    ADD CONSTRAINT trimestres_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 S   ALTER TABLE ONLY public.trimestres DROP CONSTRAINT trimestres_frequenceid_foreign;
       public          postgres    false    234    232    3479            `           2606    1106875 T   utilisateurs__administrations utilisateurs__administrations_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__administrations
    ADD CONSTRAINT utilisateurs__administrations_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.utilisateurs__administrations DROP CONSTRAINT utilisateurs__administrations_administrationid_foreign;
       public          postgres    false    239    3499    243            _           2606    1106869 Q   utilisateurs__administrations utilisateurs__administrations_utilisateurid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__administrations
    ADD CONSTRAINT utilisateurs__administrations_utilisateurid_foreign FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateurs(id) ON DELETE CASCADE;
 {   ALTER TABLE ONLY public.utilisateurs__administrations DROP CONSTRAINT utilisateurs__administrations_utilisateurid_foreign;
       public          postgres    false    3508    243    241            ^           2606    1106860 H   utilisateurs__entreprises utilisateurs__entreprises_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__entreprises
    ADD CONSTRAINT utilisateurs__entreprises_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.utilisateurs__entreprises DROP CONSTRAINT utilisateurs__entreprises_entrepriseid_foreign;
       public          postgres    false    242    3491    236            ]           2606    1106854 I   utilisateurs__entreprises utilisateurs__entreprises_utilisateurid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__entreprises
    ADD CONSTRAINT utilisateurs__entreprises_utilisateurid_foreign FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateurs(id) ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.utilisateurs__entreprises DROP CONSTRAINT utilisateurs__entreprises_utilisateurid_foreign;
       public          postgres    false    3508    242    241            \           2606    1106845 .   utilisateurs utilisateurs_permissionid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_permissionid_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.utilisateurs DROP CONSTRAINT utilisateurs_permissionid_foreign;
       public          postgres    false    3503    240    241            k   �   x�=�MR1�ד�x"7�MՃPa�z|G�签�� ѱ��8�6�%���l`����Gj-�����RoR�&����3�����������:���Q��*�FR^t�$��jɨ�S;� ��#�u��-��˞��E�E_������P_*8���M
��6)dH�]W~������3Zs6��r�`\{C��>�W� ��3���ОN�������R�J�b      l   �   x�u�I� E�p��˻��"����m�(��L��_�
j&׎/�쪽!�1����L2��T��i���m|p߳���%�����ܐm#tхă�[���)~�,� ��j:�dD|F	��e"%Ej�P&����˹�m��  O ���D������\��"sTPPA�
���ϧcu��M4&����.;k����      j   u  x�E�An�0D�u}���é� eKPE��7�4߻���g���a�[�vo��){Q�����K:���WE
ԑn�C�yTQC�u�ydq�8Y�,N�}���w�L:�`o䛚{e���V����TC�u~��f/CQPE
��f/cF'�����$�^>�����){�|�ܛ��T�"i/{��`֑n�^�B�9�f/��4�u�ydq��e�ߒ {y~?V/��S
�^�$�.){�*j��ԑn�^����2�#�#�����dqd/��X�#��){�|{���H5t��C��9�^����2H�e/kF'�����$�^���Ջd蔂�W>��K�^�������˜e/KQPE
��5#�����dq|�o���. q      c   W   x����  �s;�8�(Ր���gb�w|�:��,l��,,�xXRtx�I�Oh{M�������fi
gXx���K�"=      ^      x��]�n������؋HƲd{�p|�H��@�� 
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
�R؄�`R�o���=yp�N�+w���zS�R��Gn��7������L��-��	���6��*�>`A�|"���Ύ9ݜ:D��HX�*mӆ�G�vJ&�+����A��f�F@Ti��:�T	�{e9�6���.�붷����9�ާݧ�:�.��P���rW�x^��(�[_ow�o����VQ�����@��jJ���/7C��_���r쭶��n0�۰Q?d�D��w�矕z�����6�2ϥ�� Ŷ�}�~׷�u��gK���K����#l3���rOg���@��W�\����PF�J֢l�}\t���3:�[V�`=��rF�ϤކJ����fE�:�������'��-�K)-��k�}K6�O�
���ۙ���R��:�0�H;X=(�e@�6�,Y�{ą+`7¯k�5AS�H,�c�4�x�� R�j!H�1�N@J�kGAӢ��w�v�����m�p�o@���f�Y����ucx��tP���Zw�o�e��/��w��bi�	X}Clՠo��5�fJ�J��<��ޚ��B��X�oQ�@��k���U�\�������ő�b�Q&�I7���[2GQ��wc�}�k����Yx��x��,o�����9����g�㳟���O6﫟�^���$�T��w��׾sG�Ս�re}7�V9x����:�6m�c�vZ��z����#��=�C�ѤϺ(B�9��g7_�ڦSP�`�u"�N�]#|��W�B�<�Y��P��R ��f�;y ��m��vM�E�����0���0�)$>x5e_��]��ά�4����v1�^1�\|��Ku2pe�x�yfm�Lrf����ɷ��$���-;@N�fO�悠��rq�h�	׺�ܫJgP܆@��?�Ad�K�tB}N/���'��S���H�ں&���e����o2�Sh� aۺ2:c:;O���\� �Y~��[?����p��%v�r�6fS��đ�'����#��=�_� ��rr��)�f�$�mT�GH̎��!*�"��%�|]Q�ї̻Ʒ���ZԸ�4�i��:W7(��@!G� �  =�c�P���h��n��Z3���r)F�=�b�0Zݦ�m�O,۷(�\e [�B�5yN��Vu!k�Om"�TB�4�&.�p�>�Ce��4���sW��ģ%g�kpfF�3cvrе.o'�vi̮Q��v4:]���&�j�Eb<>> ��׍���ӽIB#�8�6�"�7��։3�A3��Y�a&�q�$KsU��<���*\xZ�v�]��.q1A�߈��@�����M!K@�"�E��>"<6a��R�߆��s�vP�F:�?�X�%!�&I�n$M��Ke�`�)�x+�AJ2���֊�?�cQ��/oQ,[A54�_/.U����a�k�'
n���n璐6Nh��S" Q���;��4t}�eU�a���Ԣ҇3�ݾ�Zw@����0�¡8��j�7���; �G/��nT��Ncv�â):	�ܸ귢+� ����K]�P�=��C�ǥ)H�O�w�l͙���*ܘ~P[�C��m���ά-3j�����dW �s�.���zު�ߺ��
���g��V,�&qK�с�E�M�}������kd.?�?5�a^j ��6��{�FJ���i�%��܌�.ҡB�}�ʙ`Ir��!�֣��{p����Ln�}�H��)f������Go���v���~���B��i�O��P��H�N;�O�Bi ӿ��|7��+,�lpE �5|�܉��Am��m_J�J`���>^�7��L�d�$�����c��LL��r�^Li+�_�����U��Ryv�	7�A��\�i�1���0���P5WP|�92ϙ���k����m��Ba�:��F��!Ώ}�k:��c����vێ�_w�z|1
u��Z����+���*gP����bT�(���Yp���_���w܈�5L��\%���Ƨ�]'��Z��_� {G��@z�/;;O�`7��7~�y������-�U      a   y   x�m�A
�0@�u{��,��&�P
m��*�^E\�����P#��c`�jmR|I����B�B�،�� ~�ȠO�ԫ)i/� *�5T11��o�<�?��{.�s,�ye�p�vA{�}��S(im      b   5   x�+/*�,*/�J/J�,J/�*�ҙ�@:��(D's���΢�T�=... ��S      `      x�sw�L/*�rQ�\1z\\\ 2l      J   �  x��X�r�>�O�S<Sk��?��ȶ�ݔ�R��9����
j@R3��%����b�D��)��ԦRŒ��_��u7��rf/�&�M+�̺�/J�Kr����V�����3WJ�9�� "#c��;��us�yL��m�`=���ϗ�߾}�S)��,_�����N+�3>X��f�p�/AⓀ�����J�i^��CE�^}�'�*�2�<J�5{����V��:/JPx.{�\�HR��a�Z�e�o�<��Qꝥ���պ#D�ˍP9,E���� <�4D�"Y��p3��8�[(�J�ѫ~� ���4����_<�|�nJ���!<5ܜ�J2y~A��+ ����Vs�-8�?�W�}���jK�;g���@M�5��V���<���=�O���WK�����w�3����6���?�z���\Zz���wc�"���/�5?�N���-~�>qC��$ԑ�u�����xa��@g�P�}�򫰹��I�N����O4Q$���ޢ�.�5wK�dj��#	��CȨ(;,�y����7��V��;r���#qDB��b|�8�k��6�.QwYVE)�}�J��PH��sD4r-����}��Sy��_+Q2�O���i���j�\�������H���ݐ�OH�Ѓ�r�*�+eO�\h�Cx�\�!uiG-�I�uh���r�	a�6� ��%W�n��Z�~��+���P��m4B�w�0��---�b�*�����ϲ	������>�A�Ч�,�J�>��V+�V��7(�n��%�G#� U���Z԰:��
�UB�I�|����)�72Ќ��W��
r+$�U�?����|����m9���Z�E���	��nt}y3��ݸ��к� �Ud
l�}�m�k�)l؁|p�H́�e��i�h�h����3?��C���u٠H] j�8��	�bjI�ۭϠ:���_�\��t�	���5��W7�:hW6��]̉K!p&L�¾g��n��%L1Q��[��&2�m
Y&�w��ī��p:vk�k����G����� R����-Z����W��@�A��\�Lȧ	�L���ǁ��ߣۅ��o����fUi��f D�vQ�R�΁ ϡ�mI'�������p���)og�˽ʍ��*k�S��4k� ���P��5Q��B�
��*�%G���3�����b��u������6\b ��\þϕ«T����^��Vp9�UG�����s�����1�R�K��`�*���i����el�/<2P{m쎠�����L�B_�c�x��w����J�L[�9���Z㼂,Zfx�a��n��@=���F�5���Ō>��1�m�`���&iL�B�3L@j�������Y�X��i��Zk7��Zߨ����!_�>�}@�{�޻ �V�7L����F�j��\���$f�V:q\7�Wzy�_�U�i���C�OH��z�70p��pyj�~lԋym�64�W�Ն�8ٟ��G4(	L��@���*�$�`��V�
%����0tPۣ'�c�o{��c:�b�%���7h�ʘ�kJD�i��2SnOW�L��X�sfۄ&*��'��nnCj~�/���9�zh��:`������혼b���PP�st����+(�I��j�KN0�t%��=��v~>��<LX�	�`���PP{�}\|zc2�'�x� �����ƾf�J	��fo>�����cS��� ��~(��lap�P�BK�R�7���^��or��KyZ~������u<�{���3���0����}N�ӌ���J���?J���4����{F�8,�jVxo��j &P@�e�N�
���
�{gl�����<��C}��CN(���|�hC�G�=�Z��]��'���01�z���b�z�5�hZ�"8:�qo�Ǐ��U�w3����Ѯ�E=���N C����!Q��u$ơ{�}�n����g�l�cw>8;;�cҥ�      I   a   x���	�0E���b�{��hn�!�&���Li���r�^������
S[:IN��M�[�2�2�5w��i	9�Q�B=LT�zq��* ��"T      D      x�3�L��;�2Dq��qqq 9�A      B   �  x�mV�n�6>3O��=�����4٦vj�A�{�m�*�.%���`��{�l�G��Տ�mQI�o��h�o&	?"�EY
��ޝ�rE��|~�J`�[���u��^hQ;�V}�J��'�7�eɏ�) �j����JKQ9Ɛ<�r!d��~BF[.�J-l<���\1ʀI��U%4"#�0U���ot����y��!-d�+ك��s~�fJ�ރ���n��y��dtp�(n�8��	������������8p`��&�:狒N�a#������k�d�8PF&�N�-�#�.��k���Λ�3�s���.�v��\�\�+I,��S<��Rɍ��J��2���w]p��[�*�q���¼۩A �P�A�m��}�ᕟŰ�J��0�)�)䦥��˼��?�ܼ8HJ�/�5��|��=��[n�BQp�V���)�E�MG��〹��OQ�{%��D�����Èܛ���( 1�9J�6�3�z)�IQ�i�ud����!�m@��=P�0�j�0��aS��g��<p$��0��AVn�3��̖���!,3�+��T�s�5��k5�L�|�
�.��Ю-��=*Լ�ܭ�N�3�9/���\쭬�Z������6�k�N4��8	d���r/��w>�T�p0���ÔJ�ߝ@�½&<9M����[��3|3T	���E�7�ŋ{r >��n����C�1�g�Dt�@:���e����~R��L�3ƂpgC�>�� ��y@,�K�?<ͪ�#�l O9�fZ���dƔ��u����Sf�X��?��4���Tf�Oc��+eָ:�Ja�&��SK����7� "�xW�).T�l!ZH��T�7k������'.���N��K��\�iB��C��1�nm�w7�;K��N��M-֧|AZC��Ϛ�#�"�$>�!�ʎ�:G{z���3�����$�:B6��"qvΒ JHn�uA�� ،�8��FS�8�C�{+�AȔtcU�r���|2��Z�+ �h�Tf���`�s����63��Lڴ�	�I��B�89AQH~5�QȜc�8�}*�[QV��#cS����f^{3a����.A�!�u��WJ�{�yl����F�3���r�o��4�P�9�k~�x;dn�{(��f���RIdK�$
O��'L}3�m�&�)z��9���h�)��;*�|�T����"�h�ib�+4V�v���n7�o5��%��^zc�^VU|�u/{#$d�WhgX�2�/�1���ȗ��N��R��3��8Z��GoN�3f�@�b��sl=Z���P�ص��n)�CuR�̻ۢ8��f�"�Y�{�v�����yF �d����b���O��u]`X}�柚`0vH����e��ipI8�wmG�jb���C�D�����	�������o      q   N  x��V�n,5]�|�wi2���սBB�H�#EN�3qp�}]�(aŖO`ǎ~���/�T�3ӹI�,2��U�*��C�6�Kjp��D�i����Ҧ�rtɪ���A{e��XHݖ��yUm���ڑ]**Iy��X��_?�:��uV�`�T��0ٹ<�I��>9]7�q�g2&CV��&���75�`{�x�9��2F�?�!#��~���g�n��e�A�O��E�1�Aؘ���d�64E=��U�5!^Ձ�ת�Ha����rMY�g,cji�����{5?D�M���X)��I&@�$�PXn"_c��\8;9SHoq�k��a�']�x�m1\b��ޤ��t]8=���>��V�d�@x](�kfd��5�i�3���E7��}�!�H�%(�
j���I�N�\����.S8��q�HԴGp;Ȃ/�=/���@H��� f��H4�a�1��eiz���	�	�\�H=f&���>�l2�����Ʀ�U����{��1!9������˱��#L.Ԟ�hS�zJy	 ��NU;�C�QKL�m��_�A��q�@�|����� ��m\/��Z��u�.�Y�<=��n�}�q���L/QN�r�\0�!�{#��b+DH��;e�z_R]�>� (�jU4+�fW� /H%(���0= d�qw��b��ƅ��	Ȅڌ��S-�|�Ӗ��
�eV	*���?��Z��#5<v\�-]FTw�g�f�tsㆰe�?�?B���G�и��;���J=ml}����9{�4�4��q��A��Â��Y}��t6G��f}�,F�}�$ۣo�o^8�B��{�7�^��J�9��<�j���=%�I<bP�Y4����+Y��V�t�y�M�dR�O��E��] �����~���y59�=L?�ޠ�Ȅ�<1, ��;b�@K�XX҄ �1�[~���:�÷^�+o��|9cp��W�@��K�>$��}�4����Z'�Vi��<�����,��1ɝ�mԀ=���3���ϛ0;98�|�.���3�}[��.��v�b2��}���fv�~ņ�&~qB�k�I�w'HϽ�G�fKWm�珜��G�v�Z,Ӳ.      0   �   x�m��	�@E�R� d_�H�c��fpM�ÍE&N�!�Oz|QL@R�$����I��CTX�Æ:hơK6K�GO�588�����G��Al���� VY�LӎP�Z8a�<��݊fpF�'xh��.�Ӧ��6��늙</����M�ϖ����"�`&g&      .   �	  x��Y�n�]���6�$�Ĉ��L��� @�Ӧ�]�����AP��oH�,�^�'�'���{���L��K�]}��s�=uiJ_��[��F��I��E���?t���^�ch��*�LK�xzv�}P��+k%T+v�E��a���ڴݳ2xc���K</��V�/SVlM��_dU������x��T��Nֺ��x��GŲ����_�߫�5>�i7�����v[#��w9�iH�R���i_�ϱG�D�^���;�$�S�F����c�\ո]��(M[*��F�*XD�D#���t�%߶��J��,~�+ /��o�Q�mm��p��x0����W,��.��e�^��RZ��yM��[ZT =Zv;_�
��}�����OL�>�)sU�!��c>�	��	(Jw��x���V�%<�6��}lUI�Ԡ*�[Ԍ��eLxG�Yw"������������T�rJ���q�C�A|�OS����&`�7�PC�`�G(��eF}&B�鹲l\�"a��I ��?����<�{��eY�f+7�Ǭj�+F�Ȃ,���
e����oXC%�mײ�}�.�7#���q7���������8���/h�wjz�X���BY�p)B���"v��)�_�u���
;�re�l���Z�\�(y{���ȳ��"�ݟ���y�ⅈ_��)�_��e�H ݘ'�%�ۦ���#W�Y�Z;Z�}Hȭy� �K��t�ӝjg���t,'&ʗ��,,����+�O��pl.=���9����#���~mu���%�V�nE��r��3ͲR��p[c���2�Ŋk����7Iﳈ%�R����k��nJ-*��2�B�tw{+�����i����;<�֧2�K>qI��\�,���*��$�$d��v X�:���n�MF�������$��PhR�`d.��5P/�N7m���&��P�\��餗G:�i�㊍:��o��s��Ft=��%)Ÿ��nQ�)�!�ȍ�ȅ�����y�b���-�%z�5D�sL9��{JR�=�G8f[���k��Y��&h(��1���1lW��1�Dݓ��vN"�I�6�=�-.����^>�%�MK���Q�K���k~{���[iyq��s���� ��P�.�p�`��!�������-^^'7�:�w�L�m�R�l#�{��݈�2u#�"U���V�X"w��.]�	��%�˓Zy���P��5��xR�ƐZb�Eؒ�U�2�i�;�։�.$-�'�	�֯I�uB��������9=bc�x55��r,w�<�1>�>��I���$��f��bn=�7���ݔ]*��Mak)4$�	�K�M(H^
!.�]�����1�M� FnDS���v�t����gōQX��yă7=#i���)v�M�{���G?�F�4�7�b��ͨ :��� ����k��4b8D�Լ�����^�Խ[�:Z�� �z�!Q:D��}f����n��z��Ӑ�lJ>��J.nD]���m�)��X����1"�PEx�z�@�z|���[l�;�>�P�-�52]૝��-\�+���\��'� us74�Ys�b�X*:��P�-Sᛯ]P��sjAx�zj��W����d���Uw
�RIS=���>�>B8�	��9���|^��x�˄���^o��-ďu�盨�d�b�вj�SJ�(Zj
}ME��@hk,A��荗�+��ռ��N)~�G�I��RKM�y��������������\�7�#��{JJ֯*#u���D�6�zl�j�RK�{���|%]��TU:&-�_�����5i���%��	��۷So��6�9>�ﴅ#bC�p��kU"s�Xz��)�����u�[�j� �g4>O$�P�s� �qةh(Oî�*6L �� �O��W(�"��`�f��R���u�p������'�3��-V�}v������{��x*�f,f��|�2��G�k,�6�Ƙ��U�u9.ȱ�Z�\�z�MEH��ʙ����m��\�w�q��1i������2N��9a��rrW%�h��0�x�;8`�5��n���>�+���`�}��/deṉ+}1ytt�-L�P��L��$"4I��C�O2����}s����)J����8�EL}Lp�ܥ���]`�m��_*N���;� ��3.�0�����Й��M�#Z�Q_#=��
��Jv��[w����{<TT@P�F���4��G:�{�Ԭ^�Hk�+���ω*c����2Dj"�Уn�՝-��p�F�I��g�~6�$��I��H��A���"�ֵ��I�Og]:Ww��� ꮞL^&�T[5��;����yh{��w2��%�r����P�Ha�h�z��{]�T�;C������t>�VK�f������F��(�!�ɗ՚|�t��]���v��l�Rx��ʣ�ю1�3�4�����5G)����c�����A��؎������r�	?.�������      A   �  x�UV�n�8<7�"��f��Ǳ�u���F�%Í��,%�|�}�̏m55��GU��~TW+G��ە��|/��rd�U���wu����nt�ߏ�0 :t�g����q�q �`p̊�v��n7Nd1��L�7K-�hLV^�����A^{mT`��Ck�
�^�~(���m3���V��}-�����9ǈ�e��{e޴S͔���[ɤCüe���B�7�������cÒ���:=��˴ٽ��۱�:c"���;�6͇yp6�(���~�¸���ج76)����K��`�V��v�]^(���2��e���P����8㩙�M;�^V��z��Z��J�-�����������\"}�U�t�U�N(HT��{��_�v(9�����X�"��eGf��S�dh��?��*�h[wR�	}!��b�i�|)��	a����b�૿gܰa�=�/� �8Qé���.X"�tR�Ct	�J��3�t*%��okx)1���!\���t�l�Jg���Аtfc32�5 ᇬ�����W̄`ƀ�V�yWwX�)+��$��F��G3���R��VYGo��[�sG�\ �۷��;��G��`I#���)����8���-��>���3�c2��_�Z�C�g��ڗa��Gw�mP�����q���^K�����:�4Tc��UONsF�Qr�߻0EQ��^��<��vp�y3�������ᮮ��e^S��ݥ�)�c�_�N�er��Ï5��R���Xw���qV���,Kr%Z���t�#�]ì�`$�u�a�4& �Q��� �'`��y���T ��1W�����m;e��Q�wSk2 ��;�
� �@����$�q0+�`�r�i9{�,�`!�Q����x7�BfuvG�/��Bw�}�-�Y+ëTB)/*�@"�(��ej4?(�鏥v�,���+-""$
�zu���$fM�JE/~�+�N����r��S�ύY@R��)��C�(#�OB��-�0�h��}�+�^4L�\P���45w�D�W�j��vV3(����[�
`ޜ�a}A��E�ڽ\[�NN�G�^_��
��C<z}z����c_o�	$)�y�t5��6$i-�l�b�;�C ���5��] �-����rBk�Wv�S0��2=6лa'�+!GNٸ"/�S4XS�a�rzS�,m�=�d�8�R{ng�5~:0`�}�$A;|A[��M)���?k      7   7   x�s�t--�/�4�p�t+J�K.VHL�L�,,M�4�r�	ss��qqq ���      o      x��\Ko��v^k~�El�TU|�,Ɏ�v��q�M�,J���>dy~M�Utw1��M���z��l��vkf43��Y���S�YE�MDL�͔W&��0pXx Ⱥ��o��ea�,�7܄���
a3�%�oxU܈�Q�`IeDO�L<X�,��}���Q��V?�A��~�Ɋq����`�&z/��<��KM٦'����IQ��V�61��]�Lz�ü�XVuf,y�HJ�߆i]&��xx��_�O�$<͋C�W<��wV%�^e��B��݊����x��'j�����/#eF����N�����¸_sh��J##����P���VW����L}�zz#�W��y]U����?}�t��$.������(.�Y'������GQ��aɿ��_�}x���_�E�ϲ�e��77O�c�������cB��O_���ey���Wb�����]�3*����I��'��"�5|�ۦ�����[?
Z�� Qh�Њ�Ȳ����MIyx��I��2��Ck[�� �B|{m`���N2C�i����W����Xp���� ��I���\�����_��_+0�@�ӷ5���U�"����?߷@�9.!���X���?�#J|�zg]�y�l1�n�B�K6o�lR&��?�`Ǆ�[Bb[8p��4$M��2���S��p1�%_V��ia���n�K��r�/Xi~�N����e�ǉ��B,]ȸ��"_��8��4� ��0�<�� X�ϟ��9�]�yR�J|lP����ӽ]�{W� {�^�|D���\m�H�����؍�D'SDߖ�?��R���/@������#�j7m�q�)3�"O`����·�E=bz�����HJ�-���7�����yȊ�.�s
H$`f9��~����Y!ǣ�������w�}!��N: "e��.t�����طY~Y ����ĕks]�q6���t�=�F�� ��;k|i嗮M
f�W=0�����B�S�(���>�_�|�+a��Ԗ^�U��f����.Vw�ri\�\���۞��f�[�|,��"Ĳ�l�����]^��8�c���ld���p��-j�a+��#��8r�b۴��;b�xF���)�w!�M)���4�l��f�'=[�<���b�kz_�Q
�>�FN|���z���ٹo���:@����4�:@��(�md<:
���D�PfB��cG4f�&h���,�L:�:n�.b�	���8�����NOQZh��3ye^�"��'�[8C`�UE��g=��h�g�sa| �}��Eb�fAG-�����w��Y�Yj"��r ��1�uZ�u�b#��p�B����{Wtv�t���bp���~.�f
~q�ZT�M����Nl1�E�6C��M�qRa��¢ґp�� ġ�X[�ME@٭��},L�0��
��zn��x���}S�ʹ����\$q�cV���$M�XB�xZ���B/��ʓ�/�/*�o\��+PN t&iX�Yr�ޅ���q/y�������~�;ArM�;����N�Kj�r��V�[1u@�C�[M��x+��M��e�IY��,=�q,Ld����c$Y	a-�ߜ.��}eD����W%�B�uʋ��Ij�h��xva��q1ǆs|!>�֑B܍��n���a1��^��L��3x#ͳ+��7pExͲ+�ee�bJk� �_�J�rx)��{�w���Ǔ� �{�0jy���}�0��^�l��l�o0��I�4÷�v���7bQ���K\�q{�GNܾ�WO���, %t6�w���I�!���G�e_P�uM��E�G�yN	Ѷ�@�oz�RQ *�7���Fܵ����M-Y�J!��3e�Q��e�Ъ7�=������Pl!7L�L��E��&Ox����'&L�����Ŋ��~�Wy��e�!"M�g!�ҞQ�~�����ޒ�\�ku���|W�ӭ�`w��j�(.0ײа�8h�}?$R֢ɚ��?"_[�TFi�yL�%�ʒ�c���=��x�`4���X�- ECҴMAb���M���L���	���$����*^nRs��bG��Ir�A�!��ư3A�n*JS�j�5�H@�Y3�I�t���z"0#7���~�M�������w��{��&	$�R6�O�c�c6I3~�k�
{a�,�v)l�P�g��n(���z�X!����"�V�H�Mm�@d��2�wҨ�r�a-��2��ϛ��e�휚kb�wr�;(�[���Lza��a����*�~ q�8bz�oڦ��x�~3[J�e^TʖR�n溙��~5������*�OU�>�]k��mf�=M՞��ï��qv�5��]]���9�ZktQ�}��ni�I���[���X �ަ�,�-�q�kڦ�������J���o�1��*��Mt	�{0�ӌ67Fb��ɞ��U�|ǎ�]�&79k@o>v�F������mcF�nN�@��Q;.��9�r2��w��Q:M�$l��]V��ĥmHv�V'�S��
�2���@�����M��E��S�h���l!{8I�kYp�����٦�q�V�Elꩤ"P�\֑����j����X����Z]��Ú*��T�U�d7Q@���o��oڦ�2�~ǲ�ӟ���R�-8�0���q�'u �f�a/�QB4�E�/��|�0�!jڦ��6e?����:����O�!�E\~,Vwu6Q�7Cj5W	i�9���u�QR��~�u��CLgfc�M���%S붱u�%�چ7�kG���n�ߦI�]J#�xA��R&#���a�4��
���6gw���R`�5�xʊ\����V��(�m�D�+��^a�I+�)��4A�,�fWt��&��tI�\�{o��&=zܨ6N�W��f`<;+V?.�f.���U2]1��kܐc㸕s��`$�KpCЯ��A9��� "�54(����u�,]>H6�����cW����!r\:�1�÷�v�����;�����i��^osy��v�A�0#�y8�lU-|t��E_v��[�A���m�TL�SZ�����8۳�Jɛ��]7�]Q��p��;!!��l����z��#�ZMy���-w�4A��ȱ��>�|,��v��17��r�O:	�V�m�~��WCsL��@�)�d1�X�q�h�ҥ���V��j����y~s۷��q����7e���Ϻ�0��Ŷ�E��#�S�E���Չ�GV�ޚ�zq�����w�#��M��e�/Q6�Ƭj7�pJ���"�/ �g�W?��T^�B�?�r>�0oP������QR|E��sBAdQ!�	B�Gk��M�%�κT����C�C�Ff�-�Q�z���v�[n�h��#�ͣ�	�Q�Y%d�FJ)�X�P7Y3��8���k~q��$�!T���25�O��֙1��e.�z�x>�d� j�Q�#�w: ϲހO�x��Eݍ����$��e���v9�2�-��m�:�閕*����� ��	G�� �O��6��u�<"��#@dT3��q�����)y��H���m�tΊz���8�2�%j�E��շ�ԩx�K����֜.��>TxV�<�L�Λ0�#�bt�aa}�����vB��h�,_�����Bƣ���̩"�`������m
�eaf|a��:���Yg����isy�Pc)h�������ĩ?�`y���em��?Ww��Z�!��Ae�Ä��tu���K���+t:��$��!�.�;K����z3M�K%l!�ܽU����a])��Z���ݥ��4��u���}Ufp���E�*��
9yP���7ر��� �����@�ne�1C��b2���h؟�r���h�BP5��3L�:m�BP�K���@ �p�����&cwkΝ&���>{���:�r�gd�e��A�)�6�`�[���%�Y���^[�����X�E�2�K&����}ײ�W�k#��|[�>�mBGE_���a�e<ܣ�+ �a��{�Iz���L2!��h��>�a� �  ҵ��m���� �}G��Wx:	�n��}��H�Ya��QF���	S��Èخ댥����][�B���\;�Z�Bkn�V}e9J�t�s�ת>g�'=��`�g���sn�n�@�Yly^m.b�mk��-��E}>�6G���c�<kl�M,Z���[;�;1O}����őS*�L�/q���ūwoΌ�Ľk�Z�?�jW"�8Y����C�����:k�"$Q�,��йeZ��ܗ�_��O�T~�4�p���|���N�n4�c��N��6m�w�oͺa��g���F��vwG3�Ok�ik�1�%�Xe\��y����]��QM<IS���٢+Y-]�TUK/�h�Gǌ��W� �Ns�`�Mg/�^*Ne���y����h*��lǵ���H�i�?����KV�c�����5u�N���^� ���m/ė�k�R���p�c�B]�6^��^Vr��f��E/^�1���`�\�8g�0��WND; a4� ;?:��a���,w�3���;��m��7���5o��Z��CBU�IX�Q{�$[�0{""t9_T<ܝ���ɬX�E26��M������|]��",'��ݵ+��x�m{��Ƽ+��a{)��	av4�_������k�      6   P  x��VKr7]�N1卒M���d�۱U�6hRp0 � e�kd�e�k�&9I^�p� EJ�B	t7���u+����M��,�O���7ԻKe�mʬ������QghP�(](m�ʐW���06%Q0�mT�i�"� �zX��Xfi~=��n�K=e�;���#%.i���y��G%yhP�4��?Szk:SaQ\CK�^?(^��N�Hq��/e�O�>�{g��扐�+f\Î*9�M�g�1�q.<�)ܨ�(�X���_�h�K��7�	ދ=8�su�÷��j	)"��ڛ84�bpS]��fJ+�4��ㇿ����ݖ-��y���;���V���8#��)�	v+���N�GI��^p�QO�g�0��MU6I�DsjG��H+�����u��1!��+`�n+�n�+�|�`ՀI{nL�����)ԩ��Nڨ{~�����`��g =�ظ�(x1��ț�E�k�.��}�fݐ�^�׸A�!;��Ԛ3h���*� �_��^�}�!�>�+�%����!!�Y�:%6ݛG��f���p���&g��1�3���uHK����� ���:���ܔ`
�A����S�S��\r1�H<���6	QUe��	<',x:~k��G#��4��/�"~֫�]I��j©�J������o��V1?��I?x��#5k��.�誀����>c��Q���������
|�<U�O
��Ԏ��9��ㄥ"�r��N����\�秌� |!������S�8��t_b�����H0�~���<��c����%���P~�k�Fka���#��)ua��j��'��;�Ʉ����9����:_��'6<����g���`V���Dߌ���MuϦ��.�SݭSu ��v$�)\p��Ow7��ĝ�1p�06�:Rü�n�� Ogg�P�!Ӗ$N,[� >�6��Cq�3�4mR,���f�M(�]��pk��h`:����2Ҽ���k�х�����ɢ�:���N�9��!3��Bnڒ�)z��e�x[~W�jM[���?����Oc{��3ϥ�R
�"�;�|�]�;�[|�Q�׬<	�$��T�'��J'�@�?�hA �3>|����������%      *   �  x��TK��0\˧�n6���� ��,u�~ؒ�Of�5ر�,��o�I���0yda3�������~��)����)�އ��'��LQ�r(�k3�&f&��g�Sҩt)oq<�[��'Oq�t��$��6����G��ޤ4O89�&��.D&�.��ʅ�i2��3X���F���F'�+^�)=�[����v��қ�x.�����y���2O+s\l�wk^�v��c�z��z�X�'��lC9�Ղ�����rm�%��m�I
k��/B�=9�P�*%�;S�|�[%��{%�d2��\TJ�P+�y��0�L%����|e����G��� 2o�%x�F�H�V�l�j��� .]���-d0=�Q{q��P�s[��B��āV�3@�V�j�ʆ�+)s�Lo���¿�gt�#M��F�h���機'Qm����p�|�M�c�V�iv
&yOq`��!v��,�䷈x� ؎�d�T���x~��ю����ݲ@�ќ
��7�����Xs|J��²{Sܲ\��ьU�H*���. ͵�V�m�J9؏fG��߰�9r��/@ w��?�NB�l�|!VC<6�%	 �*8�/@��ߴ�S<��{ )�F�c`�-K����J�-�tw�'��9�;cAn4y}�S���V�l`���q�ͺ��yڲ<;WNH1��
C�v�ò����yY�]��cmP��5ڦi~j��-      G   �  x����n�8���S������eFfKK*%y���VZa++�]�m��}���e�vb`0����O3��f��Z���e(�Ts����_���
��Y��{��?M[<���f�«��iQ?�N�D!C�"�b�M���2�B#;AJ�,M
k(�Hqyk��.Z���uP��3'R`�ǩ����	�Ș2M�eē�F��N*~��@ZU/���t�X/�պ���ru=���?�Zm�8q�}
7�ɰ�-�R1�<���b�	mť�I"�ׂ���α��qΕLr<,�X%�a���"/�����H{F}���,���v�'2*R�Ge���EJF����B�Oa.q�#��A0��V��p�q��Eo�#7�(o �b��N����k����Ȧ>$� �%rHO"��`��²q��˂2x�AZ��>��i�ZP@��w�� =F�ȍ���y�`��H�،y	��E-�)����x���7�1� :�b]ϰ�Vͦ�U+<j�z�}��z~�⁹bwv��j=�1}�ٴ�.ج�+�����f:�»}��`��a�^���~����m�^�����K�o���7�5��rº�R%'B`��ˎ�h(c�	/O@��)�|J�P7�)e�$�鰌@��é3�Gi���l1�U���	A)��9���� ����A�yH�f*m�z[<p����i�=���f�T=V�5�6m�1[��z	Am��]�����c���2R|Ļ
��L��f�`�*��CE��e�q�X�Z�2���E��B�j��~�� ���[@$���P2�Yu%e��v``'A$ħ�k{FR1z,����p8r�<�"���1(s��^��C慮g�T�C�6���կ�����Hvm$�8N����v�;�o�.!�
D��}��Љ?�����u�c���_=�0����D�a�G�>��o�����w�ŀ�� ���?^��$Y�P���ť�	�V�%����Db��ZB-���D���J�.n����N��^��G頫�$>���#�Q�Z�@�͈� <����H��4-}�?��x!�!/Iqt�m��gIǓ���	�����܂ЦTz�tJ�j���;<K,�ٺmf?�Ǻ2�'�R9�c���<�G�P|J BG��֙�� �~b.�8p&J� �l�~^��l����!(b�>��L�q>�P?q:��mꏝۇH߇z}�[��t(�ϸ��@�00�jTIQ*;`v��Ǽ���cT�{��ȹ9@g(b͇;�'�o��Ch�1�{�f4I� ��F�^#ı�VO q��^�fi��o茫)(�n�m��弞u�݅��1a��.�9�.�1�=��h�,h�%��0�+�V���G�� h�s�:F�����#�U�
�p7�g/zB��aܳ(y����lꡉi��/ٝ�tl����yc�cZs ����1�4�����{ �H
�["��~�������      H   S	  x���ݲ�&ǯ�S�ͅ;��.ul�QǖNe;Mfr��U�|�V|$��d&�a�?�ǲ,��?;��d|G)�َSV����B�d��4����W�>A���~E������V���2!�6
�I�2h\�V;�ԟ��P)a�Ky�Z��WK���0��z�0��.w�^��>0��.�$l�ۏբ+������-6�	�3xyMEQTL��RO75ʅ�=���p~o�}�f�x�n�t}��ͷ��\���~�7�gF� 5�l�8ZO��y�9O`��vZ��Υ�4�_�ͣ�&Ī/^�Ej����;��諰^Z��9+����3��o�0])��KviN]�������Nߪ�mv���\	�m���6��v��/p����FT�5B��7��iC{��+���zm#@۷�׋Fr�ǽ��\�z�'���./n���Ω��bS~U#(�\מ*шpe#�l��F�s�l}�щ��{;_x���P��n��y����
Q�F�#��*B���Ӵ��Z���A)�Į?�.ױkO�Vw߹Sߎ�r���3#G������I*����y9@Ӑ�j8���J.��m�-�Wp�!vȝ�Ч��E�⾨���|N\GS����a6�Y�ߢ󊱂�����p�J��'�q=��h_��[��A.��n~�<��,N$Xj.�dy� ��3[Q���F�'$a?��8G��P�n�e��f�|��$��|�b�`�i�ˉUѼ.�fn߭v�ܱ�T�ƃBhR{!�1"����*3A�ؙٹV����Y w�c�X�煬��̧��_J�k�5��|'�1!�ĭǥ&�Q�Mo�"�=[�}��z�c
0O�(V�C���	�y" � �E��(�.b�di@�~U��T��VWLOY���H*������/��_��s:�I��\�~����v1g�f8����%k��uWs���m��[U�=A�S���*)���TyIp)i���%o��s� ���_��
v	T�̔WJ��<���+UƑn�}��%��4��C�C�ԯ��,�H�-!ҟe�G"%��$Rw	�*���8��&�,�g���c�Nz�q8������.K��d�Eo �r��}vh���W�>�����Ie32[��A��Eʺ׃��}e+7�)K(��u�rbW]*��<��.��Ve]:������l��22���B��En�O��:X_���_���޷�֝NMm	�c��ݎ�P��ҭ�8� ����vJ�� �̯6R�7Q
ա٣k\��B�,rM)t�S��a\\)��q8�/�xƊ +?�HV����|��p�.ke	F ����W����
H4-����swOm�B�H���Iz6-�4�q��4��E�ϒ��f�<�*Ci��E��s��W�B�0��A�[ ť>��,����t����R�PJ�����_U�rn���"cG���K-�����6{;`!�J>� �z��#�Xe0ˬm ,� �D��E������Z��,Z& �A ��Q��1@ ���`�M��$ C���fЊ�B�#����~*^Ѫ敽y��D�P��~���q�uM�d��B���d�oKqt��,�m�C-��UY����.uEWJ�7sh�N�}�#L0r����I5TR�������Ay�!��؟T��o�	A&K͢`����.>�T&���HhK�U�fl�5Y��KH��j
."��1�KE���-��XX��3�b�-���¥��_-���	s�j�UQ5ޫ��������������~���ӦS1�{�k��_%����,T`���e�|�ˠH+8&.�:a�/f�cP�~ ���=
�\�Y���R� ���0#s�ȝӅR2~���t�<C�{cD��u/3U^�|�*/� M����zu1��AN|������Qgu����&��B����p��7�M��h�D���=3�Y�S/�z��އ۩��I�����bkl-$��J��\�<4�KwɧVrYPJ.�>{o�x��P�@�����&P�^�!��T}%Y>K	��`�?�jB�^�k��6c����|&P'�����Jr^������R`�uk��+�ԯ/�7�0�<?�oPƫ�BD�0���@�_p���B�(��/��}R��K�0L1�LE�9�f�@�E��\�ks�̻��)c�Ja�xS?ơ�MJS�6��&�y��>~�y�1��lc$��%#�w����.��1��4�<���T��Q��6��	��\/7�VeUq�3��*鴼M��R�M'hO��cT�G�NP�^(YK7�����$�v}���T#o�4@&�M��m��(�jKu9��X�.�=��z��\,+��DN�9��TlU�Fh����ӧO�tǂ      4   �   x�}���0D�R��!�i�
r��1���5��4���wz��Zr`�E�.�1�H�@��8�K�A�d�-X�+l�Ґk�tmy�ءU���6�Nc`8</�⤁=�l��Ɵ�׃ֹe���W�F��^;gwB,��I�r���!�T~3�#+d:�V�)*�P�(��RP߷�̳?�V�� `,|      2   �	  x��Z�n�>�����xK�F֏s��p���$�8����&��i�0��<��r�r�̛쓤��=��i���6�#�4�X���"9��LrQ2��ɇ�����?�3��+�j���տ\���`Y$3×!!�&B����d�7dg�G���G��:r&pb.�Ԫ/��w�;m�[�gB-��J�$��Sq��o�qf������2��p��L�{�??=��Ç'2��?d�R
���O����w[�h�DA�X��kW73F81���?QkeV�s�aV4�܏�h:q��sa�����Ǘ�\�M���!�Y��c���L���Yn����/[<��0&8�2W�~#���)��b���������gN�#0V�%�����lUM,K���Zh�i���8Qd�5}Bop�YJ��瓊��6����5 @����tG���h�UsmJ�ͬ7����1�Qz�����u�d B�"|@��[z�`��_�k$Ej��e�L}��e��{֯  v�8@W��W�_�k!ڈg�d��Y[D�:��9���ɖ�^A����DQ
&�
�2��H�pG���n�M�
�iO�]`���������f����G��7�B˥.�i��1ε�܃���,r��. E����`�A�ʣ5Ӵ�h�"UdS~MS�%�NdVd�@"OA��J(����;pQ5��¹52`���~�S�<K��zh׺��5MX��Y�0=�w�����Zy��E ZF��&Х��Ho �����1w0�B9s����]p�A1Q�z�CaC#A{Ŝ�KĐ�q�a6�{4@1TEHA�Ez!��\l���:=�X/��4;J槜��9�ے�l8=AЀ`<i,K��iJ�&����u��(�~���@�Kv-�-6�O�Ҭ��_1�Mٲ����!u��i`>� 4���@%3A}�e(YS�<�:ۍ�rѲ|LD�/�۱�)~6��u�_<"@9)GS����۔od1(F��s���5m#�{�ί)����a��r�J�_�ƭk�/_ga�(�������� w�̧�/�q>���d��QaBޟ�3P�I�,Q3�afQw���9��h螩��W�/6iv8;�w4��j>��z��x�7a��2Cæb(H�c�K/����0���,�H�GT��W@�R�}h�h{�%��KVȼ��϶6ٳ�߽�f�4���${����"��r�58��������V�+�Z�����9,Y�ە��5)�%��k%Mm]+	Uev�L�
�3*P�b��I��� I�; Q	�7H&]�5��e�P��N�SA�w ���
���W���]�"�����^�r8����P�{�y�"3�y� �;-�f�C��-���"��Y�=������u�����M�"/�F	X��v��'R��H= RzE�m)���6W�L�U�qbNz�H�[ؓI�]�	>�F.�<Ds���3��I�QZyU�ʧP�����sh�9+HOzª22�=s,q�'$��[�s؍(��f[|/d�]2q}lY�.>�������2�'SaR�O��7Jz�<��&oˋs;E�r/q56��V2��)Y��r��4�3QExbhe2���/ߒt��Q�GA]�k�IC��dU^k�A�o�Kc<����6�?蒢��lQk[ �|����P��ِ�V���}�*���-��yEQ�L��"c[�>���.������/_�'�id2PY�@�#�g#&�����v����������9g�5<f��8��
������K@���2�<���u�Z"��p��i��$M�\���C	
�|A���HE:,_���B�S�2�-���;N��ظ�0�πG�qїN
_�m��+/�eS4����${�\�F+[����/��7�#h��zӦ��2�I��^Z� �j*�I�9 %qVv����N�7�������_����,��7�'ws��y_�-��&�r����^ӓ����F��(��<�P�(���{× �~�j�nR.���]zw<��v�DS[�KC���V���x�j�G��s��b k@�~�y�[����s�-�"�)�h.���9���i*���#`�t}cH�,yDqӵы����y�x#���g���t���u�� �^�v�����?�_y�F�ƹ�{�x{Z���&�Aѽǎ7<��L<�	�;Ȼ¬�84!k*h�{����4�s>~]��@�p�S8���/�4��"#��;1�os��A<�7�K@�N���s��c��X�rؘQo��om�69����|��7tN�RP�����'8I񼼑��28��� �C��/��醝�U����q�X�B%x#Rr(��nb�$ّÅ�|b����P�;5�]~!E\�j����[)s�b���Y��7M����[�I?      5   �  x�E�Kr� ���aR�?ro�\Q Y>~��n�>5=0� �����X]� qy�*�kh�ޫ�_��Sm�T>��Nӧ��6|%��i�T>զO���>�o�o�o�o�/ї�K�%��=���G��ۨ���cB�	&T�P�罍^K�O�Y{��f�=k��Ԍ��4��/ȷ��0�5�k��NS��<���b�kl�jה^k
���3LrH�$�h��)�l8��r�9�h�o���$�R�tJ5��'�	}��n'�{�������@�83�Y�2R�{M�����|�j����1�R])���?�A�����h"��L�Hp��ƺ����*�=�����Oj��-�D�Z��=�F�;��m����W�',�T�Gw:\�H�B�+��'��n�:�;��o	��lA�_�JƟV�I�|�*_��W��׸7ߐ�ޙy�;����s�D�q�*�;��
Ի�N�^���˪>�9��׺���d�V      C   9   x�+)��,)��M-��9pvj1Wnj'��s�3����8��R�@%1z\\\ Z?}      9   �  x��W�n�8>�O�[XҒI�ڴq$ޢ�"�
�fl�ʒ�t�O��������ǎ��?H� �"%����oF3�
��N���g����
[����.�i&c�m�&�,�4�N������iRD�N�0���Y��_d�A<�~_i�U3b�͈\:�ic����G��_�X�v��x��/#&E�c��< V��ey0��$�:�Wy�)�U^� �~�8���ƌ���!ܸ����Q��Ǖ/e�W[�=��� ���D=�D�ȭ!�.�X�P����?8~��:/����MM"�`I�n��}�p��\h|%��`��:˴�߅y����Y�� ��=����Q�8��
��C�YQ�^t��:�20e�Q;f�ly����0�-�4�T���yu'9��i����D�O�8�h#f��DO���4��Tò:e.o��DA'��G&a	��#�=�$x�2�.#�#Y�<O�7���E9��:p�KЇ�� �^����ţ�C|��=�V�eSF40O���)>dZ'?�����#9��@��ϸr ��DHAE� G�e���� �JϏ�B�4ym4�y���w2�'$��O�xX�N�Q�0!?@��0�µ�V!�W3|���[����������lxP'kp����(�|�s9m���do֎�����t�[���:wVl��l�eM� �\�qqw˼-Tq���2<0Qŕz]��mʪ?=�e�������W�}Q��N��)wSp�̱�N�3V��ؑ�ߩ��mZa��(�ª� 8�?MP�/Ɣ��Z��''0�b�4@�.�hFQ��Y9�����"�v�d��JR�i*�͒��ک�˛y�/f�����sd�.Iyw{Y�TU����A�a4N�)��'�q����!ƙ�8���c���
r�qv�q�@�[Ѯ�y��6���%�"�:�U��<zF�i�V�:������~�6uu?a���]�F��%�TZ�Kv�؅�l��@J�>�ݣ[b�Y̲�P�;�^�O�1      )      x�K�H,JO�M�+�,����� =�N      &   �  x����n� E�;_�龜0!�-+!��]VC��ڿ/!������H������9��3/ˣ��t���잩{&~�z��A�Y��7�'NI0���]2���gB�[]=�p3�`���(ڵ���U������c�b�z�	��c�z���7VR�7�b���؄�������)z���e��b-�9��A�+ˏ���f�j0
�����P; ���j��0.�ѧ�SU'�Nq���/>Yt9��U��mKƆe��?S�O-�en�jю�o����[���U��y������)�H݈|�i�?5e|�JR��ʢ{rѵ/�����0y�-�VʠG�����ޅ����}G���j��&ʚ�m~���g��Q�=Z_�8P�76��4�RVpY���|d�\#Z�U��e�r[�Jƿ�\���|:�� g���      (      x�3�4������ V      F   {   x�M�K�0E���bN�o/L�b�T��4dO]�l�P�*3��̘��F"�x0)<˒�:8��nv��S�L�Ϙ��7\~�V�ꎮС|6�0�+����G�1�-����R�£,�����f8y      ?     x��QKN�0];��X�@C�MS�R�E�f #1���T�%��9|1lwAE�`93��}���S�����Q2�E�ل�~U���0m�I�g(�U#V&��8N��T.���Q��JeA�o Wn��h���7Z��/ƻ�iEc�S��$7h-yc	����uGi�5���>��L�(����cp�&�;�u�Ub��2W4����"h�񾘝-���oL�I�����,�?��xKw�?�S���_XX�\�)h:�Sk��!�q�|^�<X3�C�\�P�?v]��﫪��!�q      K   W   x�+.-H-���\�)��y��`҈+5%�$����p'�a̕��f�@i�Լ��Ԃ���TNWӔ+%5-������J0m����� f�%�      1   0   x�KM��<�29��3/���(1��,1��3SR9�K��S���b���� Vi      n   �  x���Mn� ���]�����w�E*`�$jo_M"�Ex����=���X�\����4nrC�a}��J�l�2���<{,`�����3MB�b�ɹ�	#�Dr�a]R&>��L�D>����Y�pߕ�W�V�F����ܺܒ� ��� 0h: M� W4Y �de��0�S/��
2Z1�F����A1��	���!.60��(��P���V��U�&=�p��x��]E�A�Sh�$vA���(@�MP�p�MD�y|�L�0"�k�)7i\Q��lr� xJq��w���8�����06���Ly��7aӃ��� �%�Y&���?,d�;�E<a$?I�e�
a,����/fs�\�;���}�+;�~~�S�gw�{��]W�>+d������Y�D+Yp~�q]��O�n����B����� �`MW��$�J�Y��*�u������z��C'P\      m   H   x�KIM�M/�L�K�50�L,��L�M�,A�,r�`�4,r��8�e�����O�ifYbV}(n����� B;�      :   Y   x��9
�0����x�&J��1d���G�� �ז1m�T=�	ƒ�i�r��%I���g���]��=0-VS��-�kE�<T	      @   X  x�U�MN�0��3�ȎU��l+ZJ����X�U"�vq�J�ܣ�� c*!�������8,�il����buəF&`iBl]��,,�I�FV�|�1Zx{!�`2&[��Z�`}G��E�>�kZ�5��V���9�Yc��d�����Z�4�h�n���Z�*��u�O�����p�6kn&_)\�dZc�`�C?n�	c
��E��쮏�(U%�,�i�i�q�\�k�.5Ѧ��:J�Ld�W�
���	������pvW��lͅDQ�ԧ����9�n>l>�8�F"���9ߔ�\G~��L(ܛ�����f(�i��`�W�]���*R�$}���bN�K&�� ��m      =   �  x�mS���@���������k�K����ID����������~,�Ί �@�%9�*�3<*���!0I����g�:OSO��SǑREr���hF*�k�'r݃�Γ�'��FבKX�f\Q��JnŽf��|jܭ	���ZZ2���}��p�F�6E��
Y�����h��\5�ʧ������j�Zլ:O��S9Yc�L8��u��TbVyx9�!���'0H��l� <��I�<	�O���d0�O����` J��c���2��<@?��:V?O�$�)n�V�U�]�٤IDX'[��?��tc(g�,.hQ6�Z���{xB�P(��rgq}d�(��o�Ee���|�wv��[ŏ+	�����ؿ���#��y]���:����;�8�����xL`�t��W���s���r�)�H��J!���m�c��Jw� 1RP�U�z���F�s�����C�7k]O1n�Wj �WĚ�H���nBN��n�qjR�      >   �   x�%��� г�1��]�QT
�����˓GQ��[�Z��=�A�[�������`u�`l�Ap�l��<C�$? ���!���\��lsN^���w����X3�r����m�	~Sq^!G����<$�W      <   �  x��V�r$5�[O���\�`REBzUW�fGX#��Ƿv�k���d�orO��3�>�v����U�����VqG��)+�M�#���!M?O�`��9*gd(�)Y|}_���~�ͤ,G��[9�����^���7���A^�l5�<k��M#7E�0Y���&f�÷���8L�g�~	%���D�m�~����)�I.��,H�/�)Q�l!�����d��Yk��5���.��v;�ahKʶe޳-����;�0;3ΗMf�PbkpKӼ��bkBK��sȽ�x@�*%#�F&6���?��ޅ|���Uɫ�G�a!�s0�c��^�:�m�#G�޾/���+��K�,����@�|6�X�Ш���a�b����,k���?��S�F���1|���w�*���ܳˣ�6�L/�^��a�#@�D�<q���%���� )�[xb3�0��GWB�l�a�nq�\��|^��$�I2����Xi�&>Po��eX*]�֦�J�����P�}#���4n��n��c �a��5ңU��r}R�=1DS=��j Uq�����3�u��� @�J�J �Xs~%��9bX�h��'�O��"�����܈^u�j�k�g	Ix�޹�~c���;�)W�_�;��t����2���Y��Ck�6�W��p�~�u�(P4l���&SU�I���^�ݿ���l���.��H7��A���?�:����R�ʭ�{ �v��Wڽp����M�������h�5uߊ�y�8b|i~�K�U:
M�g�C"��W٤%�Wbt*C]!�|������sÛ �?)`~0�U��x��a�.bi-1�d?2#i����F ���[��iD
�#�*k��o,�cB$ӧ����M61r�_V[*:�^q��`It�ŀ�
S��#�:�aL����F�mV�p��9��sW<Ӕu�IF�p߈{�1��y->�Q.~��J1=Z�i�ehm��#(9�\MC#��6���!�:ڭ���A�l�Tk�c�a��C+g�.eJ9�;��Q�;/�AP��}A�'9(L�D^���P���n9���k�?��i*f|NN⼔��۪���j1a��#�.��>����x�m�4���!ٗ�ׅy	�=v��1�Y}
�M"�����K��e����!�L����d�������-ޞ	!�hH      ;   v  x��X�n�6]�_�U�OFҌ-� �"@�E�EJ�Fl$Q��q��otץ����_�sI�4���0��S$E�{�N��e�#�2cy�V��V�����/Z�w��*�Je��q-��w�?�����ʼ��GǬp,W�\)4���3��-�ǫ��7�Z���M����%T5gVh-���Z&K_4��K��eTYۙ/=z��Ͳ[Yj��*w�,�#^�2��˓ qY�ǹ,.ĵ_�x���g�_�𗤛U|~�<�Ű�/?����~y�JVQ|Tǫ�e�Ws���o4X|���d"q���B��Iւ9a,��3�e)A*w�9أ��K�Th�ɛ���[HL�D���A��:���J���V��� ���j����[���N÷�|�9�S������+��m.;��'����+i��]g��[�@���p���˴/�=��d�n��̓O���m��m`��Z#�����Q�*<K�e�Z���݉%�d�&�P`� 2_H�)#���q�#I[C�	DE��ډ�7��6����ˍ<@~�q j0ϰ��`|=0~G��B+w�|Qk2g�̈�}>\�T���U.:���x(k�S�Ԍr�nJ��6�i��,m�;�涚w���7�x��,��{���،|������5��V~�]&?ʡ�0�Ä��u8`Ā��J��H ��V<��4�����=��#������h�`�)�0!��-�#�$�1/��`d���,��q���&s!=���N�2S-���>����Ňk��HG>K���;�}	��
�C�+�Y��6���B	(�*_�:(��:K��\T���%�W(7�߰��N�m�<�e:��#�먫��*d�`빀ū�&�@��:$�-�
�	�f6��,�7Q��hT1�&<t�rCI,��A'C��]hK�ώ�sW���ʼ��z�^{!h����Q�U�H=yz� ��M�q���z��T�����:G���ط��z4b�0�����:��_h�ڡN�SN�/���c�V���2^�Cn%j<WZ5���`����:�+���D��wRC�~�Q�۬�ohںv�{�W�t*�h�|�9�'Q��UޮF�E��m9/��Zpa�>E��e[q2�c�p�
��y[|�����Z!}��Og3bl-΢V�,��]����fC7��Q#t�H(\oA�)M�Aq'�7�$�p���X���h��l����\&��[ȶ�)[Aܡ d(E�H�&\���3A��w�k���g�&� ��������-��/��Ȇ�y�)�N�	�~?l6��8���
~�^��U���r'�=EY�����@)MH���*�k9�%�%����˛�,���S��qQVH`�E��(�������џq�}      O   �  x��W͎�0>��@��*N����=T��J+��o�$�S� �վLO����:�ؐ@~�Pq33�=��ؙRoC��t�X�p)�mY#r�[o3%S���j)�8��է�E�&d	�i	���Ũ�k6 �� W9�Ӥ3���	_��0�<����J�X"~�e���P0yQ4�4t�"�ޥJ_$&���(k=�҄�$Q�X��ɀ<*��|6�@���oi1����1�UJ��[mQ��d��'�9�7Pޣ>y�ݱ��.����ތ��Z6e6�2�" b��!�ט�w�lx��'��X��+�`���K~n?�Z�%�l���-�*A9>�����:�-��3:�7��2�Xv.�E��M@�H.e�@Y����S��y7 6`]��K][l������������l�2��z�w1BXmP��� �����M�K��'�)�
��KX��={��9�{��'����;���	��KL��t�$Q�E�\BQm26���
Ѥ�T���/���Q��r�n�u=�=%��<�)qO����5ǌ�X���k�����������]���/���L����1jK��W�2���Ӕ�/�4�s�~�7�|Y��2��(ee]9���)�3!����T9��,�7�K��҇��qɃ�g�?�_�^��
R���Uob�iTa�w��㘮E@�Y�ND���$��y���W����B�ЙN���Ŗ�]Y��АN�Q%*�DE	�C�]a�����5��J�"��=��~)��x9n	��dǹ�&�u��_�fM�<�d6�<N�w����'?\kY�(1�����#�TWH���̻���r��+��V�?�V\
x���r�u�+[ä�D�I�p1|�9F���Bn4 �� W9L����ycx�}�0�&kSrߩg�cD��1Da�u�T��>���i&&��{�˒xl�r�Z,Ɠ);L��QK���s�����      d      x������ � �      W     x�}�M�� �ޥ�4�$z�9A6-v�*����1I���[�x:P7hl�F�	vEQg�``���HAQf�������9�r�6��l���{���h�v�b)U=AYׇ�����ݑ��誤o��-��*k	�_hh�Am"�b䌍5�fԑ�lɒM)�Y�FЄ�9k��e����"	W<|�b�?nķl�#��~���z���[�?����74�a�9")�XLn"��Y.��Xa��6VA����d���*�6^��v	,���o����oy�-��?      X     x���ݒ� ��7���D�%�	榃$�
�Aq����h61�0P[��T��N7����t�%9IiR�G���74�U �:A���o�ZO}��ʌ�a�`F�je&!� b腆�{4 ;��~�JCo,��A��s�wt�;=i�oD�@�H*v|���h�@�7�%}2˜�i��n���j�[P�L/"�%���1��ܝ�^ߞ��}���]��,����H�^aPF���~��Ɖ�Q�9[��z�	ת��0+~����Z��[r^�7��9�$M�7����,¢D=�f�2��r��*�������]��'��ai�r�cq��iFh"p�2ͳ��S����&0i.��X'���2z�ԋ�S?�d���1ϪxK#�������͇�6����tg��A�M�c���O��W���R
��0�؄Z�<�]Hn����`���E��<J�F�R���	s)a-��($�'�d� _���yIY��R�w#�xY1R��x�
�j�H��[��������}|J�      V      x������ � �      [   �  x��Y�r#7<S�2)@�_r���Ʈ�%gl9���4G�k�J*�<M�a�LO�_��ӷ���X&jM���-����)5⢩����è�4I�y�q#��؋Q��KZs"���#OZU}�G7�v<=>��L�s�Wʖ8���e�<��|Z�+��W��AQ��Ÿ�����ay��:�ޜ���IԴU	�^s��d�@�T���4O�r�lh���Y����&���?ym�ݍ��`⚸�2�6UK(��)RB^�X��֋�&�/�;�d���__���񴾡��q���T����em�ZRN���iɊ)(�5�Ӱw�U�:����+ʫ��Q^,��bx%*�_�<-����ko��χ�)֚���0�!�DL�y�����?���[vt�&�ƍ0E`9'�
R�W�����	�ʍGP�E���H�M�D���� ��\1��@�1ԑ8�Im	�0�-#(q��^8�P� J��YB�r5�^c,#��ub��M�P�Dg�}yEP,�f�6�Vj�W�� 99�I�� �	��HI
��8"��`ƥUN���m��-�{�`� ���4̋��
�Uj����5A�B��-��9v �ju��Z�R�8��q&7��LL� ��Jsi-�~��Bą�mb��u��z*E��0���ƬE؊��b� i��,��y$�Ơ��H Mj�pIK��K@�ڤ`B�$�(�`9��Ǽ�[�1��R�5� ��ٙ��hWP�z|n�N�"��o�mE)�V����V���ʃl$E����k���x|,� �ɍs���u��11,�iǀy�C�X�!K���q��s��}���X�y��6	M��x�,�v7va
��q�����11��rm5�B��RF�D�C���1� 6��B*��Jڊ�@Z߇�1Ö~�Bz���5�\�@ɖ�(,�	���c�&�.Y���Q!t����-$]Dcy2�_k^������7w(�EU�5�*8���i��E����K��ƾi����.ʥ�RAE� ���	�Xq�~_ �p�RL����}=�Ηnt�|}�@`����c��L`�;����j����s��y�������x�ke"��`�oё�_�_�l�0�-O��}�>����;� �A�z�2�v�b#���T4ܼp��ۃ�=1\��b1��`0�u�/���xW��>��Oo��í�H�1|1�5���<ɯ/{�? ��� pz�f+B-���ˣ���.�C��[����=3j������E@���p|+em&����=�e�9����?D��n��Ї�b@w�/�4m`H�T�r.F��"��F��_:�Q��υ(s锹��,�|�o�&�����E�?�e�H�BqU���q�_N���T���d��o���o?��      P     x���ݒ� ��ͻ��̻�!Lb�����q�Al �;N�n9Q�=�U���0q���6�YrG���2�L��Nw2J�h�g#g�F���U�R`���#W�~ֲ����%L����؃��r)a7�� ��\�/CN���<�[OE�)ؓ픇�~�N�	yN#��
��h�f�
օ�Z�;�~ߞ�'�Z
iN��9��r��gڙ���~�3����n�ZN�[����T-�xO�|��D&d���9��ԌR�3:�B�����I�7˚-숲�&KQ��Fa;/[E��˖Q��e�([{�<�V(K{�aA�����d���g���Y1֊��"�؃N����=7v��.^�����ܡ���r(?q�C�'U�!�ġ9x�b��8���w ��������y��'���^E�)71�j�>k˝!����,O��,�֓��2��A�uI��eq�lwB��E'��{�<�&�n�)IG��p�VF����JiD��a�C���[���g+{pR���BP[qؿN���.e      Q      x������ � �      S   8  x����n�6���S�.^$��]t�E��f�q�Ām�r�	f0�^�H�r��
K~��s!u$灜��;:�]��Оv�Qr��QF�݉��6,T����PB+Be������9>����lF����G.�3����jH��[Bk���ǧL�j8��\"���B�5H۰
)	oI҂�zS��<�?����cwzi_:���ON%U����z�Gw�_������?����:`��t��Vհhw��Fa�0!�1�4�/l�Ͷ�3��=s��;������-��n��}
�}Z��$�!U%]��דa���g�=03�4t�����`u�XuS��6������h��v^�.?f��О�v�g��;ׂ����ق2��X���1�F��d�	�4nt�>`Lٽ�CKn�НNa�+8Ɗ7�,�?a��7i!����$�(wL�-|��z��q����!sd�^����fe��j�����'ؓ���0�B���������T3���b�2BOk�Ǘ��?�ӛ���q��8J�C�G
��@PX\��`���RdXu�u�]=ʵ��kcۦT۶�K��]U9�n:bW#���=@� �-� #I� Q��%�"k�T	�p��0�� �^��F�:ѹ�L��w\W��~�3U@t��Z͸�rͤ;���|y8ON�
*��r'+�����QPW:eY5%��t�	D�p@��֘H 
��`�YEQ�rt�2
H*�������'�{W�J��Y�Q`+�Uw����S��؝	H*`���`<�H�"WA���v�p@r�
F �U�&�����p�*t��Q^@�5��B���TL���r��K��e>�Q�Q�,d�H�cďt�{���S65�7�X�v�Pq�p�ʦ��zx�F���RI���D����*���&�ؔ��Yd �h�9�y5��n��*1UI��U<s�GeX3����I��8�"gOֈ��$����!	k�N��G<�pL��'rą���SǼ��	�X���y�h>:N�co9��]�(�!���^+L��l"&�݇�N��\š�a�Tn�!���(�{mߺC;<�>�_2F���(�_�&�U#�7u�E�#T�h�X�D��a�cD�Li*ch4��0�݀aT���!�����Ha��8���h6�<�j����q�W"G���b��G�Zt�Zy¬Y^�i������Wv�n�%��Q���Ze�zJ\�[?7*�a���`j�*�`�\����N�L�Xu&��jܪ��pp���L�[�����x�]�I�`�� ���RF�5��SM�j�ٟ�Q��h�H)A��
Ҏ tu�cN�x�[eW:�9��0����.���pLL���@X����2W�gG��U(g<w��A%�N���C����`^Bq ���0��f$��Bx�|轛�oᓓi�u"�l��jd�[s�F���v���]��V�ZwGRȩ����;�B�pnG�L�3�K>RU��#vO[�b�{��Ϻq��g��0���k�N����[���孴N�L����-��ۂن�ҟNݭ=Ⱦ=�^���c
�ʬ\�lZ�Fr�g���f���ZV/)��CS�y��1���r�O��:���-�_Cbm]{B�Ŧ��$>������6 �H&:��"���b�;��Q��d\r ���t��g�:�x4��
����i���giO��6(T��|���S\����ƺ7�b��=��
��`B���=`1BD�D���3��>�#�)%��0n�'����i�P�n�����lk���I\��$}�<<<���a�      p      x������ � �      \   �   x����� ���]j`Q���O���-a�ݏ{|K4^��-�|==�m���4
�7��iTU� R�
:�:�ׅ':���ǈ��
�.̐pC{�>&�a�����9�s~��8��qp�78�=4Λ������}{f1��G$�=&��KŊ��,�>W8iB�����%++�����D�`      R   �  x����n�0E��L�%$�_�b�H!���"��wb��]y�#�̝�G�n�����v�i)w�Y�����%�5��V���Hqdh�� Զ ��d%�'zK]�g���;9$�Uu�i��R�Ҝe�dBGw���L��[B	��6I���|��ڲ���R�^sy��Bc����#M�4H�@XAY�W��>�����aF��FB_Xj2�W&���X�djV�>������¬|8T*m�����dg��p@yM���w����2�t�"w���P�[�{T��J2�GC�r��N��;��f�&�ٌ����%���������?�u����\mp�3���w�=)^��R��)^�(�}T��.O�d��Lt�~�~c4/��I��!�;>�I      Y      x��}�vI����K�9 ��CkE"�����S���	8���@��f�J��]mT�J��
�/ѽ�C�#��=@�&�	"`v�ٳ��3{�����xUl���2\-n�B^ݕ��w���׃B^���ŋ+k�E��	��\�k%B���h�������������7'}ҽ���h㵌>�Խ��Jo���Wݫ�W�����K�p�hd����Y�"ت{}q3�{�ս�.Z�q�^
�l��h�]ս��f����՛�|^~(fl�7�>l��_���Bi��~{m�QBJ*}L�1�^�(��F@�	�������0t� �����ʩ���>a����c����d`PJC�2VX�V9�#&���`s0��뤖����Ay�1B�>؋o�bp� !ztY�
��
�$�����.���g`��A`.X*����`�Q�)Sc�ߏ�r��4�x��h� ���Fc}��1\��X1�4����T�C��Bp\Ya���A�,~0*@ i��(���-�n8�M�J�O�$��R�8-�q	�JDy��ߖ��t1�ܕ��W/7���e�-�?�UV���8��PA9�*d���E�êPU霄U�P�z��Jh�FV}^hYdk�2JhT�*A�fW�p���D��Mg����)ÐֶH��!;W�9}@�n����jU�Q�rT����a>VS�:����jx�����-G״0CS����Y_�b�Vк�v.�,]KI��oe4�y�����к�v.�{�q���m*�!hH�O���Bf�g��H��Bt ���x�����4A��YPΧ�@��4��"�e%��X^Jt���t�C�?T��K�%��#/�9�A����(sP��b�Qy(T��,k�kAE���X_��!�*G�� ֕0JAnJb@1�1zS�:���A�|=�e��O�͟��Y9��|m�D{@�υ���A#*�B��(=�gP>��
ZW�υ���β�_`��x����U�s�eM�h1�\�A�WI�z#g8PH�;�@��xu[.?�'Wo6��
���,�W� ����D�o^�p�Zj���	&*\��ۉa!l�D����lq��\Vn��w��L�\�n�����@W��#����)�ᨠS�x���/^-��r�0+n?��b���w�r���]-6�j=��Ln��|���Z��r�Y�?;o8y������i�N�5�j'?��rVL���M���^V͠ϏIb����Ǻ�����^���)�Ipt�$�FL��/~��
�����~�.'���.�V1�}���X,�M+)Z��W����z�x��c���f���$���WO���ق3��Nyc!-D�Ip\��*��F��ů��{he���iI�������d�Ï��N���C����vY&�I?�/�����,���v��O�w�������+ f���A0�Bi�W?Mo�bu��N�K|L.'���n��� 6�j.|_B��f�T����x
Ό?�Ck�&L?��w����=~�,�w�כ�uj��5��j�~�W}��x�����T7�7�b9-��b���}y?�O>Lo�s�M9�}��jZ�Sӝ�ډsuL%���1�;#܉ǎ�E+��z$�u51+Bl������ޗ����]����>�ES^�=�p���F���b0��&U3��?=���e��K�j���DoP�\�Wz��]S��9��-��������qY����+�8-`3����ه)f��r�?j���Ф�F��D���^KC5��f[�o��kn�������b(��K�����0�}�k��5_��s���D��k�V�_�7�ל�"��͋���pZ8�t��R�ko�������9�|2��6r=�y���MH�hs~ͩ��a��Z1m�x�K��Rx.*
#�ߜ_s*�g��Ic��)� 
N��������|�k��5#&b�_ӱZ���D�A���������5˫���������^��b���3s��Uf�v�2�dV��4LI��z�qv(+6���%��za��p��L�
.�>���C��P:�ƺ��"��0F�A4'�cs��\ ���������^�q.�����@�Y�е���x �|�D�\ .�J�O��e	D����E�l�\ >�Q����@@��P*"e6H���2*uD"J�Z�䉼�\ 1{�XL�ICe�>F��{���D�l&�&}6D`�%�s͝2e©�\ ��
�����盀8��p�cJ���H��Ujk�yc0	I�x04F�f�]!J$�Z�6��\-�!��kL�F�9H.��K�S?`S���X�g�<ևz�����#��Vӂ^Ct6!��p��}�?�G�K� S�
]�{"1���������_��&׈@Q*�H�V�g�I��|
���d��sF2��c�ho4T&��5�p�:�����S@ҧ�N�NBy��0�O�@9I&�P�n���=5u�([>��t�e�S�j���:HN��.�WMT�s���Ar�Ov���j��;k&��:HN���]g�ɁO���e�k$'	eɎ��牻��k$'	剞l�5ŃN{��u��t؞L���&����O�w�Cr�c{����x���棷ý��l��uڤ�w�D�u�d3�ۦ���&Fxn(�L�㸉�O�u�Z,���\���ݜ{筃$�k������[3��xo(�d��Y��	=��@�f���V��ā��u�d�����=8�N�p�����{����O����*yF1��"� ���?c�W��k�fP
FW2	�{	�`8ۜ���1���=(ox��:8���7:�6H���d	���$��w�,� dT�8e�@����\���rY�oK� z����9��:[��I9�i�J�Y�H�SZ1�L�Za���&`�<��-�%�S�2�,z�����3A����&f��J���)��Pl���u�Ƒü�9��dD�n���|`n80P��ડ�72`&H�&,p�����6¤'�0EG�KI�D	�|`a00�e���u�x�X�*ׄ�|\�3�Xğs�5�ĳNJ4��lhC�_���̋MG殝�QGa%�����<���P�ת4^�;_��Z�HI�b$hT�O�r(����+X"x�	���m��!�ч<� ȡ ѳ����Sh4�L ���6��[ 9����^��,(��K���D�o�P�A\:`I^��/��E�
D�S�F��6@���FUS�	�
�/%�F��O�bY<l���*eG?��� c$̺X�,Z�u�̔U�	n-�ft�2�wx]X<��u�̉8�6����nF�:�{���S�E�HZvP'�s3�7�c+�j`��RR��UDЈk��۬޽���qC>f�uj�=�{��y>
<V$�7�e���|��/�.�x4+�>0�k^^I�NGg�Eߧ/^��`a|Cs�@��8�����g���r��?Sn\���m��t_LW��d�$�b3y_ܗ��k^-6�U��l�1��m��-��zY����Mx�bҤ�T�m�Q���w����ӼL)L���)�ֺL�C��>��|(�9�o��'/nf��������{;Tx*Ox4���(<�[����v����tYBB���>a�;�w=y]�q^l�&/~W�_�����J�����f��~���\A��Վ4/'����DwR��$��$�jjՂ�>�L�CD<bb��E����'f������&�]y@*x��ͬXO^�^�+��Hv�����HE�e��Y��ݫ���<[v&Ov���4��(���!R�4����7��lZn��ɫr6y9]^���b3�tY��;���ĸ�OI��U&���^�?���W#�#���r=]_��X�M磄c3��Ŏ,f�U�R,���Rp�-�gNJ���^�f���I�1�Z�Ʃ�˓�V\|���>IȲ�����`[CSϽ_7wWj�Xb2N���Ic���'��~kr��/�Ӣ�%��\��~��i���t�bb�YM����0��8JJ>OJR�@���    ����H�m�p���z_�����&�zkx�x�v9����׭`����1'$s�$^O�����b6]��(م<�q� � '"�J@v�s��k�[���O9N�d����]���ә��U�6�.J��4j�ק��twWU:�]%�{|j��8y���=�`FC���ޕO'jY�XN?$o��o���+��H~�<�$}��p��H+@8���im5�	\�o�"?]& Be�@ ���DMA��x�o��X:{t�c����R���@��`�F�H���a8@�1a�_��X��Z�W�:q�Ӏ��F2��>1t�A�&ZcO�D
����0ܲ�jvQQ�,:�� X��?m �q13AxyR/�`�<!M�珠8G1�X�W�圦H����x�v�,蔂!��"�	���8p8y�Sa�K��R�:����Un׈�����Ҩ�/�;��G�&�Cۃ�e|�&�k�t��f�F�~?�k�=�M�a{2�׽~�Wp*�iMOK�J�u��Չo�`=a��Yzʰ�1�L���G:�������b�t�k��a�R�ˏ�ۯ�������F�e��N�O7�	�ܛ��wY��7���{���f���%`�PJ��vn�a2��������E)x�hǅi)�����]o�YVʨ�HWu/Y��pG�������o��i0�Z��L�S�y���gv����>2]�)f�{�Uڃl��m���cF�p����\H!��pAH�D������ۿ��ȜLam�?O�K�tx���M�l}�G��z��{�B��Q8�6'��{���0� 7�00b�B�)i��p:���d6�>
LZ��A��b@��Pm%�st�1@�kRf��z[q��EH��c�w��P�F�ǂ@@�.�+��}|�0A�^&~����5,kxqt�0A?r��{T*=���TH��(t6���!���y�0�d��#@	m�Ǉ���v1� �^[Wp�)��js�v�8FT����JA�ZP+b��%��k�r���1��g�h�p1���!�?���$���O� ��B������q��!���ѡ���@:�&^��zp�$:��21��(|�"�1_�ؚ�`=br�%������C�D�uZ|p�f�6�$���3
AzǃM:2O��z��B�����3
A���_4"�
����Z���3
A%� 9�+:�c��p���ЎG�*���m4���j{5�F	��7юG�:���2�]W�F�}8�͘�(�=�u!"B<N��k8fS��2�N�(��8��������+��K��(��=u�rY!0F���M*��3
@��y4� ��l(^����(��2���EL5+���R#�|F!����2z�Y�Y`����3��>Bd��q*!5Z����n�4)4�Ǳ��cC��������u����������B�ǆD ��������y �H��5��g�ǆDg<U�e H�lT�cƱ��_/��Pi� �V�	V����Bпb(��Tz	��2H��|k;
hǌcCӿfH>����)��G�xGhǌ�C�A�pI��=�X����[��1���dСּ���M��	,)��,�Q2�\lx�t_�~�3<�+�v�Q2Q�tD�!8�M�vPD��m�:Ўǉ&�5O�GD�p�k= G�g��9�v�8N4��y�X�������,��ȃ%MjT�3���D�o����Z�<�8�k؂�(�hx[$��zך��#~�k`�3
A'�Hx����5�Y��Ԭ�+>�dp"}Q�nDg��F����&�W�� �i�4�"�4Y{�\ʏ���Y@3v%�Jd*���u�HRy�tS���q�h3(&C��T�	Ң{����j ��( ��c�ۖ}�xs� F7�<�Q 2�['���~�D!����=A;v!�BĻ�V�xH�繦��F��A�2��5��dr���L���D@3n�~>��S��lK:ё�E������h��Q��>���{%��Ҭ�Z߭����O���4��z���d�������`4�Q��P*�_V���m�.�l����q|���P��M��|�&bf�m1q���v�8>t9��.�3[. X�ԔM�
���ѡ���a�4<�z"�vE.p�1�|F!��C������@��xbǸ�&hF;n�~>��1-�(]��!A�tƥ�����eB @�t��eN��M3юǇ>��D����k.`)$.\��}zFȠC��q̞�uz0�n4�0������Q2��1<��K65X��S��hǏ�C���ަ��KF5�@Bb���\�����g�!��;���	)c�f,�Q2�0$瘩1��Py�����vC��q��3�/>��l+V���ڤ:VC3~!�B�od��-Y��F�J�aN6�*����g"�=&�g��:�!�=e0R� �� d0bF�F��i�hxK���4��Q2��by"�kX�5��n�]���Q�)��p�X��B��� C�h'����O�J��+��񖈄 �;#J����	�(1�S"}Ԩ��V�E-�܂$c���V�8B���U�V�|a��
��I�|F!�'D�a����Y���4��N7F�q��	Q�.!h�6��ha��h��Th
6��0�C?#*�]�B�Z�߂0����f�8B��Ș��>`�b%E"5<��C;a!�~B��j�Q9J0����$H�gT��l��OY^�y>�B #�	�n�bzF!�`C�8�L2�e�Y<�1�IU|F!�`CL7��xxR�����Z��ɺA;q�6�,K#��뫽5���#<���NǇ1�5�0^�ީ
�c-VT �g�:Ԏ�dЅ*T��6KlV�JG�1����x�z�0���w�)�f�8.�\�N(Xe.��:�����@�3
@�N�7U=��Ӳ=ǉf�(*�"�
y��uE��J`����"}����P¬�ll1D������Fa�`D�!�8]�C3�\�5T��!��1,dd��T���5��x�NO�A��Q2X��a��$��m��I_� dТc�u(<QC0p���I|a;�!�=|���s�B��Ypc���Q2�1b���J�Њ��vN��5
B;����`��Ā����d�&K��)�ۏW��f��>zؽ9y�/�5Be��I1��p�x6�.e�Ϩ�Uo�T��*���vu�,\�?�.�ݽ��^��=����Oy�p�=zZ-�{�'}.ްԾj��F�6C�����~�m���f�J �b�	5��%�>@�V�y�Z:A��q�	�t䖈��L�LO��z0-&���Mi��չ��`L�&����%��Yi+n:ޜ������0L.�a�	�����o΅dCr�y!$cL���=��_�l&7��'��MU���$��r{J�s1���|�:#rv��I��vu�~���`*��
-�V��$�s�r��	4�\l��$�檾�[ϭ���@� ?3ks�ח��<F�h�]6n�����r`0��&!ziχ0O7��xc�Yh(�#0t�%���Ս�,I��c�r��(L
�;YXI��P8��)����}����p��5�����k����;�E�2G�d�8(j�������Kj���y��B �G���u�!U!@��	d(��5W�T����*��s��w�x�>e���D�')����RF�1�|񲺂��
H�W��W&�����󲾑{���Y|;-��e��-�y�b�̗=EL��>!���-+��
IU/4�%��%1�^�\]�Ǘ�K�[	�z�S��}�]~sz۲���Fާ8_�W��L�a��{-ǐ�Ħ��Qn��=yE3/�]�S���̑��%�S����.��n�vG.;�n��	��ʎ�O��l��u{�yϝ�U��o�.|NWXWc/9����C9���P'���	�7�j�[j��<�����m�>�˞?��8(ӸB���<���ݱ�䒨� �  t����������u��a]B&�bV�u,���?,	1�~?�_��U9Y�����)w0���y�o�m�k�NGTi5y�X��t�+��կ�l:ga]�*�|sH��>~���Bn�,9N�N�]�u�o�wJ���Y#�7�ao�t�lUt� =%�ί?�Q�8�Z���"�{;������fy[����V�e����R)-�T��-~,��ڱ�Œ5)aa�M���_Nu�'�v�w����;��m}���|7���¦Z��T��<Β'�:�Oj�y4y�+ۺCO��=��h-�M-�]�x*�H9�謹�a��t�!�P޶㳸���Ue�^U�X޳����?�v����ǿ���v�^wH����#<�>�����x��\�#�9��&?�+�	�H�KؑJ�������-<�\���.�.��u��G�q�-����/��gs���a�p�3�_���p���C��b�ϭ�e��<����Jyl���Rh㽈������^g&
ՏB_����>h֤�[�0u���0��G�������*Rޟ���a�@� ���U6@��J�MՃ;��(l>
��w'����-��xb�2��B�Y��Dŋ����6zy�:�!(|>
oxG������u����}�L!{D,��t�W�Aay�T{�`o'r������wՈ��[�X��&ܻ�~ 
)�I��ڢ ������M���p��嬀�b͕c�=Mh}�X�J#����`P{���ޢ�!��E�b�EݤL�T
��瀌3m.ѯ�`��XD`�� ���;�*b��C�_>�Ʌ�y0'
���đX-���kk�tnR��f���@���8��f��̢���GST�s�� ,.�6ְꙴ<RN, 5�{�m�.�.n�:��cy�\ �!
�� O������Y`B.��"x�ڥK-/g�6E[�?\�<L�f�@��tv�V�c�>z�Æt�9L�8DcT`B��u|'�Ҭ[$[���0y�kh<bQ�J��J2,�n�N����9`��7��i��Z�M��H^i��/���9x�i�/|&�t�&�,,�o�^���幭��+R��<�U:xaj�X��*�=5��[��>�Ԃ�V���*�`>�U��J[�y~����*�`>�U�����c�:`����X���b�UJ��y�RK�`�X��*u��X�,�l��Pz��ʳ[�.���#��J],=ViK�U�?������.m�dڥ3��X�-�L�t&�۴�3y��<8}�i���SL���G��l��7k��L;���������������֩��٬�1(G��>�g�Nǰ�N�<�u:��u�`yV�t�Q��y��18G��>��N���N�yV�t�q��9��10y�����<k����7������      Z      x��]ے��}�����L ����/�ˈۊ�H퐔��{����5�>�-��<	d��D��������o_�<|��xWR�w�>�H����?���?��?R�?U����������Z���~��e��������L (#K���^/_&��s�]uA�j��#�	����A�6���Y�I|����t������M��������=ൿ���}*�tQ�"n�B�t����V��QHe�!�7�G���C�vM-y�`	C����[�Tm+�
`p�n%a� �4�n���W�s/�����0�0��u�cN�6IR�&8N��F��H��W��DS�'��0� C[[&���ن�Bcb�>�F�h��zn&�6���=bG#'��0��)�5x�m�&���M���CK�^� ��*"Hq���A��,��K����y
FB]�aC�Em`Q�mZo͚��D5ui��_�r0H��E�&F:~�e�����h�EM�рU����
l�v)ʅ#I�l��R���\��`��9$��@�����T�e�����5
�Cm��Z0�S�����`�
�Bm��j�Z10�n�U{��A�B�<FR�
�l�N�ms�5�x�ܜ8I�>P(Fn��<Z77��[���I��As
���ī侢 �w$0.�:ɠ^��Zk���C��9gu�@}'�\`�yGY�hA�����$��0<���ZKڂ+��<I%�w�b�H�ZuK�4�mc��i���>��H)�h�9�h�r��$��N�kv�b@\77A�PQ5!� ��dPo#ϰ����mJj �4�B� �� �6�dcc.^��42N*I�5( ���:0	ۜ�\Ao���V�A������"�Sl�ы#?6�/G��$�:����$�0�oA���A�䜐Z�(���u��]k�r=��Z���ͭ�o0Z�W�(hI$�ցA[k
� ��NJ0;��(�I!�ږT<���
WDw�AvRH���k�j�eA�))�������Z
E֥���/���(-�6�,�+I�u�P�����o������A_�Frh8�7-�Ԟ#��0yj5�M��6�C[a�"��֊l��Be���8*o$���D�3pUG���b��`J�_�`�$�d�uGePrZ���T'�]\i$���D#�HZ�ֻ�ddˠU����f��6$Y����;BI�#���k#)�� C#�.�a۔���߄(���V����P��K+��Qd8���Jrh�9��
)�B���&Ĥ%E��� )��J5A8����(A������p')��F(��cM4J*��4G�Õ'��Ϟ���Ѓ�
#w�!�:ɟ��00��E��6���Z��rl'���	��)���fm�!��	P��?�>�r�j�
C����C2h'�*�� iV*+
G���_H$���@�c��a��P������N�g�Ð�BnIۄX��[Q�
�=����i>�s6�h/�-8${��=�s�|��L�P�{]@^Ԍ�đ'~?����� ���!�CBJ~�@$a������~�ѣ��\��ǟ9�����x�v� (�u.�̉�Ϝ�4U�%��)�
�[lT�O\�?s�3 #I����c-c�����Ϝ�tXAEM�j�
E�퉪Ӑ<�(���' R%��(@Z�w70(���O�~G�1������f��5=���O�~@��]�Y3�
@�-��e�D����/?�/���۷��]��F�G��P&*�"�BB��"�Ա��]�m!a�3TE���$V}��r)qs�P�BF N�Ok�F��ARZ�s(�D�ϧ$֗���uCcU�V~�{�����ӷ�贝:}��`�����X~�1V;�|����k{(��������9�(g�ڒ����l���� �R��i"�!! �Ď�<Sք5�g�NE~�%�4$ⱊ�j���5#��ő9*�ىLҐȒ�꒖mK�՗��Ms�
*2!HCB 
������_j�3���Ґħ���r.P��*h�^�nɄ ��(*��C����"w�m�UXdEu��!/c�I^��� �}����L	�9% ���QZ{Yw٤�֐��\�DA�T�(bCoB�*��ݐ�"x����L.H�4�@�Gʚ̐�/n�pc�5�|�I
�y0�^���˶r���-�
9��$��2Zhl����R�
��&��=�{z3I�YF�H;@��Hl7BLA��n��$�f=����Ơ��}u*�.pJ!M�d�l;����󰮦��\�M� �I;È��3~��^�X3�e-�k���\*��
�:m�N�(a+9)$��6�@���������N~��$��C{l�B(�=�6n��>��(��вshGYW
fA���#v6���6��вsh7OG�\��+V.���I$���;>�����w.�*$���@;
���ۼD�B,$s�ZH-���G��v�#l�X8"/$���AX����7�F](�͂LH$���A���G�8��m��jE)�I� �ڒ8�[=�?�0�!��66�+\!��Jl3�����6� ��l
I���0j���Һm,@����ߝ��P(�)Ƣ��@p�>*��SK ����P(4V΋�۷/�ZP*H���/!9T��8օ���6��eq�4Q!YT�� r�k?m�����r���$*�	� ��Q�G?T�j�ƶII�2_��8d>�͊Q@�=2!I�2�xj�N��I)q0S�U�pB���9��<K��CJ��?e8R$՜"�+yE|��H��f!�S��!Y0�=�h��i.u�J���X�?u8�i9�s��ਹ��^���߾~}���Kt\��Ё���-5�'$Y��?8�(53'vi�1�=��?��[,����?ɅV��Fְ(�ėU��
�]�
ˋº$���B+,'�A
X�VXh�eW8vcˢp���@)���zR�3t^.�*���zV��5�fg�h���p����3l�¶+��Ȗ���O�vZa?)\s�Y��V��
�Y��}k���������o/�pV�I���ֳ���>�X���Zt�ng��mQ��F+��	��[���T��
�3I�H/
;�Y�V��Fݸ|G�0�i�9�
�4��Ť�VR��|�)P�a��2�Z�z]�p���<��墍����+|{��'�{TB��ΰK%�e��<ς�RC��#�S�2y�I�Y_+���]��L�U��Y��%,�9=�/�f������}�h�f��4+6���q�R�I�Nb���Hl'��f�W+,��s��1*�3���ڃ�%��3ܗR�R�qay��5vN/&�%�]X.\8.9Ik"���f|X.|�V��6��3>,>7���2Q�z}�!�˅��%�P��N�˥{^N�CaqcM�)��T��|B�^c�3�0S*��3l�rG���Za�IK��V���Ik�^a�IK/H+�ʫo&M��Ҥ��I+4��Vj��i�ie��V�����a�IK/�w�YeI�R����&-� �\S��{%��&-}NZV�\�p��O)̐�^�V�s��pgM�!-}NZ����}�vG)̐�^�V�@�-���
�Ѥe�5��Ѥe��u��i�iM��Ѥe��5i�F��I�VҊ�RJa���HZMΤE��p�]pV���kDfi4g�%guoq�UTÙ(���,���6�w��6��쒳:��5�B��W�?�u�����߾|y����o߿����ϧwqC�|�����d�m(���n��v\f��r�rF�SD����RnC$gD^����7!���>F9<�r���m��HS_u�K�D/��Ѳ_:!u��-��#T� �ݲ_:cu��-��%g������N����]Ho�X�l(_�}ʹ��J�������e�T���]ʍ�d�� �sԞ7@�!�0JI; ���l�n�d�-u��Cq���=��~�ߟ�w�y��Ʒ~���h���J���e��t�q%܄�2!�|zU�6�i�2!�|�5�x�h-2!Z'D�O�J\i0-�&D�Y��� �	  ��$Z����Zӄ�:!���n�֞}Ft����.7�����\u]ڄ��pϊ�O��EW�=�f9�[�=ŵK�EO�Y�٬�e�=���'�,�l&�����`���ْ�C��U�T7l�w6+u�.2N��'�,�>z\7�L��`����.lVu�����v�*�-��>�{W��L�r<���P���y�S��q9/x*;9��;���&�^�w�c��������|l2��zyߑ�Mf���-r�ੜ�x	-x.#9��3�\>r�g��l���\s�ȡ���2�C/<s��!�^x��B���5��z���߱���}����_�<|���ǻܻ���$<������]�O��}Z��N�T�1���d�\B(�t���&6��C�����}0F�P�� �Ц1��G��x���'��=�hW���M�S_��F'��Bwǯ:'Tx�r)��B��;w�9���K���P߅�9��Z/�+��B����B;/�_
uRh$"��I���m�
n{�����_��qo_���h�}.�g{[5qۿ'Q=�)��,?7/��">#_���.�5��X��_���Y~\h��oYf�۔|���B<�Vf���|���xbF~��_w�Ze�i3�۔����f����%�>#�O�������df��s�\���u�҂*Ѧ�/O�_>�_��E�ӕdOS���.ߗ����F�����V����n+��,�����h5��o�"Z�������V����*�?����COW����,�z�����f����U�l5���=]���V���i��������M����o��B�I�?�t��/����cO����&����5��B�I�?�t���j���=]��/����cO����&����5��B�I�?�t���j��=]��/����cOS�7��Ǟ��o������R��\ȶ:���^�urq��,g���8d���.�Z�e
�~jr]��&����J<y��o��k��$ ���"}9�ϽT�!�[3�t
�~�t��qOY�d[!��5g��$��d� ō�b�|�����fc��n���$QӸ46�zv��^Ѹ(t��}�u
�~	u<����J�ͺ� U+p�9Hm
�~!u��:A���u��Ɲ��'�Sק �����j}y	u�%�ۇk����)������	�~���.�@�������HS�}~;E���*�0�x�p�xd������y��QY ���-6m�=��W̤�O�>�~��^�?��X�������|����r�f�M` 	3%��¡(
i}�V� ���k�=œɒR(�C!�Qh\]��%��˫%��^�B�
}>#fi��en���s\���o_����1NG=~��������&�t���m��4(/k �h\�w_S�;�n����+7�+��%�7��E[𕌬��{>�!8!Cn�'���Z�2�V�ѵ{����H�a��|:�C�s�qX_���� �%n�g7�g�b:A�⭣�� +��?�|��L5^1Y������~r�������SĂz:�Y��;�%�<�v���w�09��6�S�{Q����o�����g]3m���oy��k�G'K<p�ڰK_[l����>�>��[��krH^�Ï� �e{���qC��c��x}�#��xc�>n{����5�y|7��<�g�쥵�c���7I�go����=�=��8A�$�Z��H���1�)	7Ď<���LВ�8�/�©��wC����b���:z�Gǘ����==��3z}�=�xyl۳~��?���iq�p��4�]Rd�E��+cB��"� ��V(�J��]d_�i�H;����H'E��|�"��=�><=~���۫o��W��T�k���X)H�DpiF�.��.;�;�%.���y0�Ȅl�e�&�l/['d� ;{��X �eۄl;˖x;"d#9���'d�.�cނIh�uBv�e��(�l�Zv���v�� �";�U����C����-�0-N��0���gkr�O��E,�&�R��Bc)$a�2�Z6,����m��Yh,2b	�y`?A��Be�˯D�JC�q�4�ZmŢ1kHN-��������;c/�59���V�'�sF���v�x�L��`
��`bh4�j�7���`�T�	���1LB�b��f��ht@�W
��z;��؛`¤㨿��k�?���/�g�������G�+[��3�u�������-����A�[n��;+Wh������*WSb�*-w�9�z[���i}�����4C���X�N��}�������v��Ri�u���}���M���r�Yn�i�+����=\�����A	~׃_h�s��u����Ü�w}��&�81'�]'~��+^�	~׋_h�s��u����ǜ�w���&�8�˂__WxM��
L~}M��K����H�d~}-��K����H�d~}��K����H�d~}퀔�F���/����Hgf�      ]   �  x��RMo�0=��E����A��!+z�E��Āc�����%�8��l��0�>��ĝ��u�B�u�P� �jv�n��D;}$�m�'��j��~�!�c�w�>K��h/XguM��l^�Q��L&V�O
��*�v ��w�K�{!g��*&�<�1�A�wm9��,D�b�!���n��{<�N�\U�S����kh���EyCH��9<�F:q}���z���8Jς�溾%��i��4&��}�훕�l�K��bِ��)�����o��,���{;`g��<y�4�g��<�󃍹{<�d�ld�yv�@�O��AQ��?"�a����)�	�G���7lgv�f�#{�Ռ����t�ݓ%���T������x��5Z�)f�?��5N�B���ΐ�Mp���O�?Hbp\�|E�'�{w      -   �  x��U9r�0��WL)�]��*��sgV�K�Ҩ��c���p�P�7���= �rie�(� 1��ӍՖ+m�r�;N�zS]q
&�I�r�J�]$�]�^��F�B{kH���ݷ)x&G��!6��U�Y�5�P1�ykB�_Q�1�cR�ŭϔ���ݖ�4F��q��`�!M;v�����ʵ9��˛�IC_X���i�9� �!L��3p�([����g)t���PZgJ��pDxs�`S}U������ڶ{��^E0>/�&3uE|鵾�B(�a��s�U�����?����iNh~2��r&����m��_\��s�s�M6}���xM��� S�X�Sv2@�:#[�n�P.�V��/wL'��c{;���?CX�ۙ`��tcn�"V�j�u��;n;A�n���S��I��Ә$!(����J@����q%wJ,3�^q���r*�z��R�4��PI
G	ܟ�CN0�pOQ��B)�x��a�o���p��Ă_�<iᷢ@G��%�P�!��x=[�e0���X��e�9h=�nђ�$X� ��/FE˭��0�(r�l��({P1����2�S��Df���p�ԅ���!�S�!��7ۡ�T�)�m�.=Ւ�%�J��(�sHt����JoY�><�/���ڴ���%�,��9g�`�iϥ��CEV�,jv��-=��#�7�:�n����K[�1�]�]NFX A�}#g���L�릮�_(��Q      T   r  x����v� ���wa��&/�O��D9�`QR7O�c4Y��c��U���?3BAxG.�I��nI��LoJ��%���|���"�gkK�ĭ��~䪫]�l�S���ѵ8ݲ�#�	f�(/��sF*�&�\��;\�1u�G���,�M����P��s�ؾ$�YI�g��`+.Fkqc�'�g���I�B I���f�2��H�O|���'��} ��ɦ1�g[حc
:敞f\!��W%�Y���í�t��/�'tY�����:��=��Cg�Tt�
)�ָ!Gz�F��C�F:>��P-W�^��W��^u�W��US�j�Se���z�*ūR|��S�������T��%k�b6�Q�~��n�g��Ïh.��&�l�v�I;ݤ�:qz][t��)���v�h����Z��d�Ѿ|Qa��7���Ob��b�q'o,��B`Z�?�V��a
3og��^+f;����|��<�<M-,ܔρ�E�� ��$b���q��[%&�_�XV�ٵ~��B�� ����������-��C�j
l=dy�$;>�n�
x�,<��ξ�k���y6��8e+	Ǣw@�f`�
��07$�qɝ�ͺ�8<�m��ǯ�n��j�      U   N  x���[��0E���xʒߛ��	�Q⌓�T�~�Ƀ�z�ϕueI��g��ݡ,}���;������mb�sZ	���{�[��]A�X��p�0�n.�q��ҋ�q��J���̰�� �Z��9��}�Kϊ䖜���9Ɏ]�qtiPxF6)�M����Ƒ�@/�çO�7�����\[��������.ŔfofwVjo-�tm�XU���L��Ȗg�H��'4�]�t��l��&VE�RK4R����KN�"B;$����w.9,��O���٣�
|��zD˭C+��Tė�˨��Qj�٤�]�������Q
0R^��;�Á�>�����W�}J�6TMc�	�Ӏ��}J12�P1��B�����t�R�^V�Aa��Vqi�8sa�a��E��Pz�p��
��e���p�7+b����qo�X̛�mRQ���~��C���|��ʅP`4Qg�hk,7�tu��W'��{Rw*~�oV�]L��&kx�h�Py����u�)�6�[��GXp�y��j��6��@���0V#:��?�9ްM��nx�Tʂ|���?���V�����      h      x������ � �      i      x������ � �      ,     x�͔���0�g�s��|�-�uc�R�"��
��T�������C$��ϟ���,X0�Oz*CW�jt�4>�0Hm��Z�R�U����������]Z��t�<����/$�4N�$jQ�⟸����ȟVȻPȵ
��+>����]���~���eq[d��)d�,�sj���(����ŢoM+k��6=f�/|��0�(�F��t�Y�3�9�t��i��82�t��Q�3�hZR�$�Jf���(�z7��H:�CUU���S�      _   :   x�K���L/*�*�҉P:L'B���@~Q.gA.�N���P:����l������ �� y      /   �  x�ݙ�n�@F��)����Ҫ��*�RE���"d�������c��d�`0��< r�;�q�;����4ʼp�m� �B��g��
����y�N�]~��+�,���ʒ*K�l����+������rA�N�Vㆭ�5/�N�8W�[Qz�A�!;����դ����L;)L�\�ɢ(}���4t?����s�cU]������zfmZ9��N
�^<��ڭ��򍷒i�oG�u����]צ<����Ǘ��y������H�'9��	FN8r��`d�Èr��������"X�`!��O���� !ҋ��]�#_�rR&Q�de��IT&Q>H~�ik�Q�F!��h�Q�F!���l0��Ȇ#�l0��Ȇ#[�l1��Ȗ#[�l1����c�(:G���K#�,�h��Z9;39�"���Jj`d��7�����f��s��-W��* ����%���#�Z�ۮ��j�N�G�>�A}��>�a�!Ї@�/8J>��������d{	�%�p� %Y�)(-Q�DYeIԁ}��x�h���5
���>4�����чA}P�(�0�à�>��p}X�a�����>,�������n��8��GO�:bTN�4*?ӌ�J��E/�o�Tm/�52���eOg%/������0N}���������&��_�l����_���`VÞ�2e>��YkG�8�n�jţ$=��6�n��l#�5]Ǐ:�F�x�N?}ٮO�>�<}~|]>���l΃��C�]/�<+�������y0_Lݴ����|̎��E��Dխu3�����$�x7�(��D���'ַ�ڷ�P����"a�Bg�*��R��%<9U��~�~�A/�]�#��uQ�f�TU���(<VU9��%�r�.5���d�*>�u]�F�ؤ�&�I�M�֛�&��h�4D
/ �x��A�+�m4��s:      3      x��˒�6���YOA�M��r��="�R;Y�b�)��$�lF�`��W�!�=���2��<��zY�˱~��7�'\���ȔJ�t֠�ZR�?�@^�����œCs|R��<����#R�QR��{���^(�B�����.T��Iu�(�Ka�U�Q;H��	J�;vX}����b}�d�J`im���,��̦k�r��;[ۮ�9��'�����C|���R�qM�9ڴA�B�H#2YD�(��Z8J�QRWD�Y#J�:#�(��w���'�Q�ˡ�5��j�h�Q*uBI]��_b���(�~.��GD�v�F��� U��z�գ.N]=ꊨ�H���H�HsD�T/��n��b����o���~��������j��|��s��Q�vw�ǻ[]mN�l�������m�M[���[e�O��ۛV������wz�v�՝�s�n����m���$޶*�e��F��qw����v������˳�>���v��j����x�E���mos|@W�ӻ��=)�u{��7�6�N�Z���_O�����S0�!��-�R8��k��Z�V�F%�JW�� ��<_J�T�R5J�(U�T�R5J�-�(ՠT�RJ5(ՠT�R!y��ϸԡ��b�t�t�t�t��%T�J�TOzo�RqRpppp��∨�Q}vRMm_b����1�'�3�3�ӟ���'��a@�ܑ�3U��B���~���4G��)�g888O�H�Y2��q�MP\�Ϩt�etP�3�Әv�""�Ә	)�H5�A3;ea�=�����3�~]����L��q���է�~�!�I�M�����]-�g�'*qw���ݶ9�z�;<���׺����M���O�.G�7]@��@�iD�#�_�O.�ס�p�9��"߳f��~��6��u�\]���	�y;�Ħ�&!�#hD�#7J.�"���P�H R�4"Ñ%�k�"�H#2��Cߦn�hxu1�ĚaaP&��!���<��"�H#2y��"��p��-&ꩍ��"�H#2�6^0$)D��N���ċ<�()��=^��/x��^h�B*lc�,���.��NP����YE�����Y��0���"KYz��͉���lw�?{A���q�<K/�<��?K�P!҈LQ;��a���:yFQbV�0��d��}�<������J�q��(��>� �i
ݚ<��H��N��q��H��@��QDt���y��Q��
q�<�HsD�T/�X�����
!h�"�
��-ӡ(T�P�B�
�*4�BC+��Ъ�'�� U�i���������ǠqǠT�Rab#��I�`R�}��m������c;ݧ�(����sD�!���}��=��pl8��}z����g��B�l��`�,�ls��4H`�0(��6� ��8��<RD��A'�Ɖt�#2ҠA�c{��<@�Iv�8Z#R�lw�l��h��}�����6��@�iD�#��^R�@��L������;��rgܥ�����[¼]�Ro��v�X���8�	D
�Fd8��fH R�4"Ñoc��aZ��	D
�Fd8�m|ΐ@�iD�#�85"9-Y ��"�H#2���%C�B���Nml�lc��"�H#2���fOa�zD�B��|gz��@�iD�#ߙ�ƈSg�G$)D��ȷ�%C�B��|c�������"�H#2�sŐ@�iD�#����q��<D4��Ƀ"?w�y��%��ۋ��@�iD�#o�	D
�Fd8�f��D�G$)D��ȷ�%C�B�������jt�)��@d )�Ku����k�jL<r�+��Y�e�R�n�JA��s2^
���(���RKi,e�Z�A��l��Fۓ�AJ.Tx!�qB:�v|p�6�˭�3�Fk�\mȒr}��>sm��Vd��kE�Z���d�5x�ʴ72e9K�S�-�ܢ�3�*�ܷ�ܣ��c�`��YU$Ű���������Tސ�ǐ�ǀ���tA��/��Xlb��&�Xob���%�&��K�ΰ��.��;1��;1�=�0�aI}}F���sΈ�>�G�Ĉf�	���'2�G֤�N]�F�!2�����-����{n�P
i��4Ce䩌<���2fV}*�Oe��>�ѧ3�tF����}:�Og���>��g2�0�O���	 a:��h�4�ob���%Z&�h�X�%a:����ĉ�L��T��091���l,լ0L�'r��Fɉ�9ef^���e$c4����?C�1HN�H��91"��H�3�'�#��`*Ąi`�8'F��뚡�N@k�@q>�p/����,�2�1�N�Vë��1�&����tbD2F׉�:#Yg$c�M�H��:1"�Ĉd��l2�1'�x�KΤ_2�~M,mF&%���LfR2�I�d&%���LfR2�I�d&����K�(2d���0�L�d&M�r����LF�0�47l��*���H�0u�����]�M�lNf���i`�i��4d�Ґ	K��Of�>����'�i�h�L�%3���$ZrȌ�!3�g����aB&3	�[�>������Ew�:���K�e}��ʺ�զ��l����|	z9֦lmg��	�u4��a<���ۯ�>g�����E��/Xz
9l���+r���G$)D���g�uO^]0w�9GpG?�3dտ�B4��ξ�������R=�XJ`)���R�kD�D.�<r��!H"�wP�ԇ�IPz�R]4���^x5�>2��(QQ�ޣWDD,���(1#=�E�	#"":ѡ��=���1Dt���G]=��;�D�@]5X���K�����!���`ϙ���<ޥ�+��P�B]
u)��B]
ui�Q�FEh�Q�F���3k3��k����+����u���;þ;ܜDn~�o�?髩�R�N*����c�)���[�Yػ{o��~urw����v��.v\���T���vObV�����81�?����[���v���hw�FMfzyA��X*If#J�و�d6�t�8�)��/l��9"���P*¡+*B�5�
њ#��֮�鳦���rd��1�,�Hw)�:wOݗ�O����K�����Sq�+�:O�������S�㩾d��T�җ⩒�/�S%K_��J��O�,��=^����ٰC~��u|�,��x�
o����B��Ӻ�^��^�ƷR�o��ç���sw��*�����(���y�,�ᩲ�^����{��*��exj=~A6���:E%C\�?����*I�B��J*�(O�Td�*��R<U�,�S�I�2<U���T�E{]��8O��}Q�*��"<U�x*�q����(|A�7�`,���x�T���ᩒ񟿧f���R�w>�3%�_��JƿO��)�*���<U�ex�$���)�;�*�(Ո��{�tՈ��{�tU���J<]U���R�x�jDD�R��5GD��J�}�&�W%��:#�QG�����5GD=��J�v���V�g��HsD�+T�P�B�pR�ēZe�H����*?���)�l���v��X������s~j������5b�����ޕ_�������\��#���UZ���|Ϊ�O���J�rǟ�}�
�x�QF�}�������>�����Î���z,�c)���2X�@)��F�G/E����>���g���;�k�{��1��(�5@��o��$�_N�(X��LJ�x)�d�r\��J)D��(��<�>�Ąe.L,Qb��	�߱'N���P��p蒊K����5G�.�9Й$v����E@���6p=��Qш��ED�rDt	���H(U�����u�d�QZ�_1��g�K���:-��W(U�T�RZU�U��(B��"4��(B��"�0( �"�0(����df��7��p�8��8Ҡ���4�ї���8��p�8�|��	%����8�xp��&�	l�h��*P�B�8�&�
���p�8�&��ѠT�2���.
Cf(�+�`�u�p�(9�)�`+�c)������}���R
u�(YPED.����%/�    FD���-�����R�x2���[�>����X��6FDDt(�C�fw(�G��"��G]=��Q���c�@W@MZJa]
��X��il��il�FE"��`�c�P���b�ǵ{N��g�4f�?n�C����=ξ��mw]���?@G�Y�t��4����O�XxE�>�j`�5�)�?G���>E仾��8���^������W2݃�^yS�j��?3w��s��}�|�Թy�Կx��<����Ժxj��o!X<u>��K��(O�,})�*Y�R<U���x�d���T�җ⩶xj�*����(멅y����ᩲ�]����w���մ�s��z>DP�WS��!B�J���/I���2�7U��E8/z��"K�TIE�ᩒ�,�Se~I�*����TI���S��嘸릛�c(��"��K�O��O,��(6ҟ�NGZ��!��̈��K��.��~T2�ex�d�K�T���ᩒ񟿧\ƿ�����G�睏�L��婒�/�S%q_��J�$O��}�*���{�%�k���c�'|J<�3���<�3���<�S⡟��x��>%��A?�"h���~��^�����RJ��U'���cl#"����ngD�;���W�^�z���W�^�z8$U�!��e>���#K˯j��!%��&���������������������������Ҋ�������������������o�ߓ�?� �� RX�t`ׄ�_�HP�����i�H)�H#����Ə{�q����uz�l�Q-�p�D�Թ{JO-�S�xj!���S����^���x
��)���{'_�J�Z@�Z`�oQ��P֛��޿g �?�z�b��0��� �u��E�� �� C���@)�iD�Ae�1� �+�/�=�2a�p.�ꋧ��mc�����H���_fȽ��P�B�5�(�e�%��R<u����S���Ig���x
$tb��!X)X�H\��q��*������@,��u�!l�r��K�a�@<y5��nڈV���"r�\�&�^>HѺ\��n�Tj�~B���z�^����T�"Vv��k�Y8`��K�ף�	u�zD�B�DV�Ո�^G="�H!҈Gn��<� ����=){D���.�!º@~M���6����C��B�A�	R Ub��
�r3 ����8�#�-!��~D����<"��R�s�#�k���ףy�>g�C�#
u��$jZ͑� �u2E��e�~�:^��;*�P#2���H����}��P� ߿2�_��ǈ?����A�r�"r`�d��j�������� �M{<mr�pR�zs�7mu���~�㩭�noZ��~y�s��.h��ik6����'�=��CS�uwk���c���c����_Y����m��y�S���oov*lT�6[`=n]oZQ�	ܬ�-�Y(pR9+m�w�]��=lx�� G��lJ�<�9�15�]�4���0<`�?>���AY_j����j76����'������v�w��a��������U�Vm�n��Z���w��ڭm�w:�r����jT��)�U:�h&�Tk��F���>4!��^;���Y���%t�olك-��W�~��s��o>���s	�����X�l��&c�o۱ZW��� )�S�kכw�X]\�}:�AV�>	��^�̶��6���9����.���K������d�u��b������B؊�E'�:j����]���8�{hڡ3&����ǎ�{=ɵj��{F�k��l�}��b��H
E�n�2c4��Т��M�22m�ߵ>�en�M8���hO��9��!�u���q�����	�p��=m���ۯ��ܜT��'��l�������I>�U�^n՟�V��E%�a'N�mW.~����|�=�YÍ�:6#�7�}Rۺi�0�k�w���%��]i�����mswk�W]V�"���yf�I��lJ�֬\C/�@tC�:�\�����q�=u&�'�`��f7^�jrSUs����*Ի��]muTv�w�n+k��n_�k��=���o#Z[�uW���w�ᣩ�I�X"����X��͍���uD�}w��V���Қ�o`����l������z����ō:W�m����!~z�g��ݟt������lo>=8��]�{��v�MN��� l��%%-m���۲��946ΆJ�ذ%Zg�Lk���wו����kZ�gtߴ?N�t��~���۶����w���$\Y���~t:���}R�|����R�����k��F����뀕��>��5��tڊ3��|��|��:l��~�ŗ���O>��͗�֯^�✳��K��{����ۣ�5�5��@���A�g_�;_龽�q�R�l��q��m�5i���v��ۛ����ēϏ���w�v>�Y�M�|�`��F�A{#�����S�ȗ�y���pz0��]��ö�N����q)�n��D�S$����.㺾p���%G�m�]�q�[��-]%�zҰ94'������e��훛S��$�YL?܀����?sn��'��gn��;�N�֮h�>I��i{�M�]5�şM��{��&�����_6-��m�]���a�؊�,���i��O���l�T8��F���V��e�3_�ͩn���Χ���?ӽ�&>E�7Rv-��wly��D��=��N�z���n���݌�K1_��g��G޺`5�ϩD�[6�^xs����=K֦������3F�֪�KL[�wy��9�o�ډ�gGk�5"��o�-��������r���V����Z��:�q݃��v��ϗ�͢�߿@7�=��c�DSoT|����Om*�'��[z��'i��h���J�oq���+)�n�����nIRX+���vaZ{O���Z	����g������퉴�M.�mc|V�7ltMUT�Vami�R��Sg'ak����.̱6¶��Bo�p�����..3��>��������Ȫ�ݴ����&ۧ;�Q�l�m^�^���	�N4n��} wx�U�&:�oJ����i�H#I�J>�0����u-��=�~�n��^һp�[:�����t#5��r7���p;��9o7x�&��S�ݻ���������������#���n�n��K��vQ���e+S�B� T�4'�v����Q{��.'�	����R��Ye��Q껧6}���l�6�d����MQT}�~��`����v����*d^����i�w�tH�NC��vn ݓhie���}�0�5�������_�+<�M�8�BS,��{��/D��﷽?�������C∼����{M�-�3,�3���ij�Ix�3��ln�2��n��{�ܬ;��m�i�A�m�0T�]>$�{��*�_ٮ��e��bSd}��֜K~zp�Ʊ��G����=��|�k�6�αt|L�'�?:sV��m+���M�*����޽u��9�0�7Ή6���W�g��w��i��ڦ����?�'�:^boD����,����t��t����'��v�q��{kg�V��#��N{�63�Ͼ��7���q<��]7ֶ7��~�(B���{'�������'��?��UX�=�}T����p/����]��
���7
� Ǘ\׫wwI�ya����`�a�z\7�\���+��p�vw�O��]	��Hr���������]R����'5���?����-�0�-5�V8=ֿ8xA��/r�#9_g�r:�	JiD�#�"��H�
D��/��P
D����o/�ߎQ�s������ߡ��푗2PJ��%_aED.��]��("�wX�뿱��Z���?H��QD>"��%o����x)��N|�����e.L�dk��3���n[nֈ�+t�"|�����5G�.�mDD�[��#"":�¿��E�(�G0�"""zQ��%PWD�#"U�T�>=RU���� 5A�K�.�"�����B{)�Q�FE�x����(B��"�0(#����" ����4t8�V+��6�4�8�&�Tߣ.i+�^W8�V��	%��6�HpX��*P*�	%wT(߄�B"    ߀�o��7���Pr���<�����њ#�+�d޶	�e��:D="�H!҈G>\3$)D����wڧ�'�K�XJ`)���2PJ���hB������|ϡ�T�a]~X�b�֑]^0I
>�!�ۯb(Jo9���濄�U����Qp�?�"R*�я>�|KQbֈ�6�F?�6��3��%wTX�F��'��A%R#�\��#��ҳ���8�9��T�?F�Gk�H71�C(8""�`xH]�A�S.�G=���ѣ��Z��.��3����#"R��*�:�jD�q]��k�G�R�R��PDĄ
M�P�ЎҨK�.��` GDtiԥQl��L��2�ˠ.�&#"���Q���W��&H� 28D�Q����k��8!�v9Ѕ�v�!��ID�����	��&��J��4#�Q��v��W������W����4GD=�����c{Ȍm��5�O��xa��SD�&y:EDj��SD�&yz�iZ��}���r�R�+���R=�XJ`)���R�kD~�RD.�fKS�-M��ú|g�#ߑ���sp�Qz���.3Y�����U)J�Q��%"�����:Ə�� �GDD�?f���QD@>�����Q��.��3Jt	�P���.����4�s��6-Et	ԥP�B
E(��8
E(�Q�FEh�Q�FE"���8��4�TX���v�é��q�cV��cٽ�<y��Ö �����y�"�E>�Q�G�n�N2qv*��AS�b�Ƕ�.v��YFQ�>G���%��|��є>��ǒ�="�!GQ*B�4"���њ�T��|���)�g{����]����S�-����S�-6����Sq�+�:O�����V}�Sg��X��$��p�詒�/�S%q_��J�O��}9�*��R<�O-�Se�u��/ev?�1�Ϭ>�v��2!�늿"S�k��fO���2<U�K�TYX/�Sea�O]^��a闀�pXF�%`I@�����R�$��p�詒�,�S%Y��J*�O�=��x���/�S%q?O%'r�7񔃒�/�y�$��TIܗ⩒�/�S%q_��J�~ޞ�g��	��E�Kƿ��b���1-�y��<S2�Ey�d�K�T���⩒�/�S%�_��J�~��R��㱬�e�(=�Oj�xR�ēZ%��*�V�'�J<�Uⱬ�e����5G�� 8�H�	��V�'��HsD���r:�w�h�Q繒Á����\=�:#�Q���A�z��� X�����xxv.�|�	bS�\u~�CbN9I�=ǳ�?���]#�?���]��?���]��?���Y��?���]{�?����M/��U��L�r�����+/�]��o�&%3O ��i��Z���(o��Vy��sU�~����3A�{j�.d�a)G��7�j�N{�B�<�?��v�k�����z�������A1�p�mu�ޯ��^ql�c����~q��n�n��&�:�t���?fn�9������s���o��~<���Rw���Nۮ~󰔺��F}�ݳ��!��Zun������j{�Qn�}תw�o����}ܮ���V���S-?F����{��(�������G���>�Sl�c�m۴2m馘����e�R��Z�VR��[��<:9�?�ڛ��1+�����v��Զ��U;!k��J�?Tz����7O���v���p�N��~��k�IfV?���f}~1��b�_ʪ�'_�������K�:D="�H!҈G�ՠ��	D
�Fd8r�W�M6)�6�K�XJ`)���2PJ��� M����g-�|�"R}�u� v=��?Iܠ��u�!���|����9�4�'v�e�<�u�֍�S����3w�<�����J�\�K�Cs�v���V��9����y_
(���zD��qrB�~���kR����¨�?�7#(��dgF�RSR�L�iw9�j9���Xo�h=����x��Ћ��h5�w�ƺ�r�P�3Z��'(\8� ��q�p�f'���x�5"Ñ�Q�u|RBQ&"�\�t���0��C.����_;Q��P�sb)���њ#�1�'̈�.��chDDW�� Һ��@D�"z3SDDD�""j9"��HsD�
�
C���ԱG�h�">3%f�1 �
u)�c(�"&ThB��ڢ.��4�Ҩr,Etiԥs~Lu��2������`w1�]0ȏ�Hw1�] ��G�1�N�q"r"&�J?[F?:H �	�	�	�	�8�A�d:�(��G]8988888�M��ҳ�ѳ� LcLc�Yp$��
њ#�(�NeJ�ZH�Rة0ᜐ�t*��
���	��s������?N�J��Ǳ�����1�������c�]����b��e]��1ދ�'���&>���b�C�#�"��p��bH R�4"Ño�jD�]��G$)D��ȷ�9C�B���3��ݺ�'�<>�O؋��m�s9V'�*�P�H R�4"Ñ���5C�B�D�'��)O��$�"��p�Lx�_8��w;D="�H!҈G��]0w�e�2���^��p|�<�u�\]n�dջw�"�?��;jD���YGG��ձ㎲j)
����z�����C�Q���0��<`h�6���L(sǫ���ц�B��Q����?I���Hs��4H*h��M��޲�y������Sg�)��U�`���#��6��M���5Sަ��Q~I,�[z^[V�G'c�6�Q�(����(�3E~f�ȇ{�| �Q�W��af��O�bJ���wI�
uK(��Fd8�SG��i���FQb	��!P^�)�Z�����S�⩳��~��#"���x���Dƣ�.m��G$)D��c㦵1(�ˈB)��,A�_�p4]���:��O�פz���Q�H R�4"�Q���"g)�q6A/�u�_t�h�Qb�%u	���H(U�T�RJ��(�K�T���R�K�.���R�K�.��4�ҨK�.��4�Ҩˠ.���2�ˠ.���2\����:��&E�B��R=^��=^(�B�
����/4p��6�ȇ4�Һ6[uy?R�F�c��wP�?�j5Fd���"KYz��Mצ/��Ge��Ge��3�W/�R�s>ç�g��"�zADi��9��(qSDI]%v�(1�4"bh�W"�c��T�CT�Xʏy���R'��%x�ح#"R��K���J�� q<�o=@W��z�3"��G]��לUAjD�#�^�z�@L�_�z��T�����	�
�*��P�BC+4�B�
�j��Q�F��j��Q�F��j�jP�A���jP�A��8������	u1
����qu�0!����'
8[E�Zu��0!�Qߣz�F�q2$�h2`40t��i��6b�ܑ4��8��a����4҂�H�0�`&wd����l�+Y�±=�@�t%"��G�A�	�M���R��=<,���()��=^��/x��^h�B*l㈒o�#J�R�l��8�\ːs-C�V�A�Ch���J�h���f������s�<�~�B~�R�Cƒ[c���
���rk��"��d�zM8.&2������"J:{DIg��F���-����T��߈a��k&�9J�N(�K�q��q)1�GDz���?"҃:�A0KH�%�t���G]0iGDt��+��#"f��2��戨�^�L���4�d�;#���/u��
;����)�A
������)�A����� �=Hc�؃4� �=Hc�؃4� �����2(ՠT�RJ5(ՠTXU�(�*p)�A�7�:�:�:�:���O�N�g��8�8�8�8�8�NHqD���g�A��6����'���rZ���9"� \ۻ�t=n�o@�0�OHsD��A�����	�Y�V�c1�-��=�H`�#""G�G�E[��/RW�+��;�zD�B����������+���ުi�|���>AX=l���X�74��[u�N >�e\�����3   l�"
P�H R�4"Ñ�\�C�B�������k��e��)�zD�B���'/�t+��6._0�!�	D
�Fd8���9C�B������2"�"��9JJ�xa��x��^(�B�����
�8�p&Ai]
�m����D��:�;vX}ǫ�/d_��%w�(�cD�#J�Q"bFQRW���]`���.0Ό4���u��Y)"R{�
=:"":��4��.�Rj����ð�(��a�uZ��(F_D��[*l�B�
�*Ԫ��
�*��P�F]uiԥQ�F]uiԥQ�A]u��/"���4��.��1]%�"JtE��(�Q�kF�\����O�(Ju)�����5G�T�0$}����zDÈ�V�������B̔8�����a��!#"Z{�ڣֈZ��|�RA웑戨�Q?E�U��	[��b�㭳�t%Ĉ�Z���
m���6gD�h� �
q3"�U�V�Z!�Έ��
�3"�biDD�A��Bx���T+&O���R��OI̧$�S�)����|Jb>%1y��<IL�䀡a��0!�Q)����s0>�]�i�H#1���4R`#1~`�%1��Zi�ĴkF�#�"�2F��&g�3�ə3�"H�$&F#���p08�'�8"-��Ib�T�_�zz<ed�4��Q�H R�4"Ñ�ɹbH R�4"�Qŏ�;��-�yh��Vus��U;}��xju��_�c1�6�>�dJ���m�?�w����m�\#Uov��9ҳ_�K��%�k,9���5�7����W����k�~�EZ���z�n�n;��7��;�n�����p;x�7�zX,{���?�߸����&����7W܏-z���0��q�Rm�x�q,�V)���c��#Stث+��/�Gd��	Z�(�
�����I�z.5�"
�9G/�(�pB�ˣp�ߍ����@#ހ��2>;
)%i���=vԝ˾A���r�O�-n�#�9����f2�(U#so�:D
��;����~���������      +   0  x��W͎�6>�O�ۦ��H���c���@�{�J��)Ej�c8{�k��c�C_Bo�'�7Cʒm5����Dg����V2E�u�Q;+j%:�B�*zxzi�Qa���Q���*D!��芖��A켴��D+�F��ݻڻJ���UF�']�Kb'T:l����V	�ᝎ��!�ʤ�J.8��tT^����C_�1��R��=��g��;��$�h�'Fm�>��!��4�^�kQ�`�C���SH���˨�z7�θ�VT�;T�,
��J��墷�du�+��:���$�й�sC�G���<p�Q7in�/������G=���H��j�I%
&^�|)��}$xQ]'}�Ғ�5��H� �b�yJ� �S��2�5����>���D���qK��FjZm��a�jV_���P��ے�h��ޏRI�H�,��j���U$�	x�����ِ ,�}b�s�{9�d�?�q�S�$����d+~6"�����d�,(Y�g$�^e܉Z:3��Omܸex;%(�Ce��i��n���&�I��Z��9>;%"�@���ޚ~���%�!�JKz���xF>��H�%0�;��ʺ�WY�#ꖐ�]���C;n���'Dn5���f��G�ܐ}J�U!mh�4�:'-�^�UōBV��5��P�l]�:�ǫ�|����j�J���=�8Ob�L��7Q��wH>�p�)y�oM�+%~哤�
~t~��-v/�M�6�c>4�����}�"Y�u�W�NZ扛Hڈ��e����Kv󶕱	��͖L�٦9�*8�;;�0#�B�����>fH#=5�_��G$�q�6G]���nJ%���޳'Zy�mjO����m���Q�������Cx5z��v����D��}�2�ebgwex3t�4��w��/���Z�Z4�H#?>�G�̞��Ħ~\�6��$���1� ��@_42��)�L͌�&̜u
8�u��:�%��d��W�Pu�IZ��חݍbWq�z�UK���?�;^v>��nC�w�ylඩ湈��3rGs�{c�����(�Z�=��[ש��Tȏ�&]�p���&���Z>�`2����iYv�
���� ���^{��Ac|��D%_���HɅh?�
/��;�1�>��/rl�;�Z�ɑ�P�v�/s2/�y��Q��^yb�%c���s(���"��$��LXa�g7�vlvK3�����.:b�[������YW�H�J�=B��ȓ�?���ю����t�V�I�?�ٽ��x}�*l����\lFu��)_m�1)�ίe��;EF�EEy��0�����v}�]������      e   j   x�mͻ�0�:�"�9����."a�석`#����t��>�s�-R��`��8�S� ���Ւ��d� �{$���i�<J��_4 ����+��s 1!1      f      x�=�K�0����0HP(��(�"�/5�_$���/Y�4���i�ռ�����TQi��G1%<����x|T<��˜�(��(��(��xz�>j���G���Q��}�vz��R�׫+C�7���_�y� �bQz      g   ]   x�M�A� ��cL��/�Ҥ����k���twKWr|�.n���x0MƠ���:)l�Led-l�\zf��fZu@�i��'. T<.�      E   /   x�3�4L-R()��M-.)J����8�Rф�9�хL8MЅb���� Q�      8   q   x��5���=���(U!�4)�3��f��\c��̜|d�l�D�q"�b���"��<�} ���"��$?//�&U��M-�j���JIM���+9��J���L/JLI���b���� Ob5�      L      x������ � �      N      x������ � �      M      x������ � �     