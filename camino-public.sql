PGDMP         7                y           camino_public    13.2    13.2 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    8992738    camino_public    DATABASE     o   CREATE DATABASE camino_public WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'UTF-8';
    DROP DATABASE camino_public;
                postgres    false            �            1259    8990181    activites_statuts    TABLE     �   CREATE TABLE public.activites_statuts (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    couleur character varying(16) NOT NULL
);
 %   DROP TABLE public.activites_statuts;
       public         heap    postgres    false            �            1259    8990184    activites_types    TABLE     y  CREATE TABLE public.activites_types (
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
       public         heap    postgres    false            �            1259    8990190     activites_types__documents_types    TABLE     �   CREATE TABLE public.activites_types__documents_types (
    activite_type_id character varying(3) NOT NULL,
    document_type_id character varying(3) NOT NULL,
    optionnel boolean
);
 4   DROP TABLE public.activites_types__documents_types;
       public         heap    postgres    false            �            1259    8990193    activites_types__pays    TABLE     �   CREATE TABLE public.activites_types__pays (
    pays_id character varying(3) NOT NULL,
    activite_type_id character varying(3) NOT NULL
);
 )   DROP TABLE public.activites_types__pays;
       public         heap    postgres    false            �            1259    8990196    activites_types__titres_types    TABLE     �   CREATE TABLE public.activites_types__titres_types (
    titre_type_id character varying(3) NOT NULL,
    activite_type_id character varying(3) NOT NULL
);
 1   DROP TABLE public.activites_types__titres_types;
       public         heap    postgres    false            �            1259    8990199    administrations    TABLE     c  CREATE TABLE public.administrations (
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
       public         heap    postgres    false            �            1259    8990205     administrations__activites_types    TABLE     �   CREATE TABLE public.administrations__activites_types (
    activite_type_id character varying(3) NOT NULL,
    administration_id character varying(64) NOT NULL,
    modification_interdit boolean,
    lecture_interdit boolean
);
 4   DROP TABLE public.administrations__activites_types;
       public         heap    postgres    false            �            1259    8990208    administrations__titres_types    TABLE     �   CREATE TABLE public.administrations__titres_types (
    administration_id character varying(255) NOT NULL,
    titre_type_id character varying(255) NOT NULL,
    gestionnaire boolean,
    associee boolean
);
 1   DROP TABLE public.administrations__titres_types;
       public         heap    postgres    false            �            1259    8990214 +   administrations__titres_types__etapes_types    TABLE     A  CREATE TABLE public.administrations__titres_types__etapes_types (
    administration_id character varying(255) NOT NULL,
    titre_type_id character varying(255) NOT NULL,
    etape_type_id character varying(255) NOT NULL,
    lecture_interdit boolean,
    creation_interdit boolean,
    modification_interdit boolean
);
 ?   DROP TABLE public.administrations__titres_types__etapes_types;
       public         heap    postgres    false            �            1259    8990220 -   administrations__titres_types__titres_statuts    TABLE     f  CREATE TABLE public.administrations__titres_types__titres_statuts (
    administration_id character varying(255) NOT NULL,
    titre_type_id character varying(255) NOT NULL,
    titre_statut_id character varying(255) NOT NULL,
    titres_modification_interdit boolean,
    demarches_modification_interdit boolean,
    etapes_modification_interdit boolean
);
 A   DROP TABLE public.administrations__titres_types__titres_statuts;
       public         heap    postgres    false            �            1259    8990226    administrations_types    TABLE     �   CREATE TABLE public.administrations_types (
    id character varying(64) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer
);
 )   DROP TABLE public.administrations_types;
       public         heap    postgres    false            �            1259    8990229    annees    TABLE     �   CREATE TABLE public.annees (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    frequence_id character varying(3)
);
    DROP TABLE public.annees;
       public         heap    postgres    false            �            1259    8990232    caches    TABLE     Y   CREATE TABLE public.caches (
    id character varying(128) NOT NULL,
    valeur jsonb
);
    DROP TABLE public.caches;
       public         heap    postgres    false            �            1259    8990238    communes    TABLE     �   CREATE TABLE public.communes (
    id character varying(5) NOT NULL,
    nom character varying(255) NOT NULL,
    departement_id character varying(3) NOT NULL
);
    DROP TABLE public.communes;
       public         heap    postgres    false            �            1259    8990241    definitions    TABLE     �   CREATE TABLE public.definitions (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    "table" character varying(255),
    ordre integer NOT NULL,
    description text
);
    DROP TABLE public.definitions;
       public         heap    postgres    false            �            1259    8990247    demarches_statuts    TABLE     �   CREATE TABLE public.demarches_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    description text,
    couleur character varying(16) NOT NULL,
    ordre integer NOT NULL
);
 %   DROP TABLE public.demarches_statuts;
       public         heap    postgres    false            �            1259    8990253    demarches_types    TABLE     :  CREATE TABLE public.demarches_types (
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
       public         heap    postgres    false            �            1259    8990259    departements    TABLE     �   CREATE TABLE public.departements (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    region_id character varying(2) NOT NULL,
    cheflieu_id character varying(5)
);
     DROP TABLE public.departements;
       public         heap    postgres    false            �            1259    8990262    devises    TABLE     �   CREATE TABLE public.devises (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer
);
    DROP TABLE public.devises;
       public         heap    postgres    false            �            1259    8990265 	   documents    TABLE     y  CREATE TABLE public.documents (
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
       public         heap    postgres    false            �            1259    8990271    documents_types    TABLE     �   CREATE TABLE public.documents_types (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    repertoire character varying(255) NOT NULL
);
 #   DROP TABLE public.documents_types;
       public         heap    postgres    false            �            1259    8990277    domaines    TABLE     �   CREATE TABLE public.domaines (
    id character varying(1) NOT NULL,
    nom character varying(255) NOT NULL,
    description text,
    ordre integer NOT NULL
);
    DROP TABLE public.domaines;
       public         heap    postgres    false            �            1259    8990283    entreprises    TABLE     �  CREATE TABLE public.entreprises (
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
       public         heap    postgres    false            �            1259    8990290    entreprises_etablissements    TABLE       CREATE TABLE public.entreprises_etablissements (
    id character varying(64) NOT NULL,
    entreprise_id character varying(64) NOT NULL,
    nom character varying(255),
    legal_siret character varying(255),
    date_debut character varying(10),
    date_fin character varying(10)
);
 .   DROP TABLE public.entreprises_etablissements;
       public         heap    postgres    false            �            1259    8990296    etapes_statuts    TABLE     �   CREATE TABLE public.etapes_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    description text,
    couleur character varying(16) NOT NULL
);
 "   DROP TABLE public.etapes_statuts;
       public         heap    postgres    false            �            1259    8990302    etapes_types    TABLE     �  CREATE TABLE public.etapes_types (
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
       public         heap    postgres    false            �            1259    8990308    etapes_types__documents_types    TABLE     �   CREATE TABLE public.etapes_types__documents_types (
    etape_type_id character varying(3) NOT NULL,
    document_type_id character varying(3) NOT NULL,
    optionnel boolean
);
 1   DROP TABLE public.etapes_types__documents_types;
       public         heap    postgres    false            �            1259    8990311    etapes_types__etapes_statuts    TABLE     �   CREATE TABLE public.etapes_types__etapes_statuts (
    etape_type_id character varying(7) NOT NULL,
    etape_statut_id character varying(3) NOT NULL,
    ordre integer
);
 0   DROP TABLE public.etapes_types__etapes_statuts;
       public         heap    postgres    false            �            1259    8990314    forets    TABLE     o   CREATE TABLE public.forets (
    id character varying(30) NOT NULL,
    nom character varying(255) NOT NULL
);
    DROP TABLE public.forets;
       public         heap    postgres    false            �            1259    8990317 
   frequences    TABLE     �   CREATE TABLE public.frequences (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    periodes_nom character varying(255)
);
    DROP TABLE public.frequences;
       public         heap    postgres    false            �            1259    8990323    geo_systemes    TABLE       CREATE TABLE public.geo_systemes (
    id character varying(5) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer,
    unite_id character varying(3) NOT NULL,
    zone character varying(255),
    definition_proj4 character varying(255)
);
     DROP TABLE public.geo_systemes;
       public         heap    postgres    false            �            1259    8990329    globales    TABLE     f   CREATE TABLE public.globales (
    id character varying(255) NOT NULL,
    valeur boolean NOT NULL
);
    DROP TABLE public.globales;
       public         heap    postgres    false            �            1259    8990332    knex_migrations    TABLE     �   CREATE TABLE public.knex_migrations (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);
 #   DROP TABLE public.knex_migrations;
       public         heap    postgres    false            �            1259    8990335    knex_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.knex_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.knex_migrations_id_seq;
       public          postgres    false    232            �           0    0    knex_migrations_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.knex_migrations_id_seq OWNED BY public.knex_migrations.id;
          public          postgres    false    233            �            1259    8990337    knex_migrations_lock    TABLE     `   CREATE TABLE public.knex_migrations_lock (
    index integer NOT NULL,
    is_locked integer
);
 (   DROP TABLE public.knex_migrations_lock;
       public         heap    postgres    false            �            1259    8990340    knex_migrations_lock_index_seq    SEQUENCE     �   CREATE SEQUENCE public.knex_migrations_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.knex_migrations_lock_index_seq;
       public          postgres    false    234            �           0    0    knex_migrations_lock_index_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNED BY public.knex_migrations_lock.index;
          public          postgres    false    235            �            1259    8990342    mois    TABLE     �   CREATE TABLE public.mois (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    frequence_id character varying(3),
    trimestre_id integer
);
    DROP TABLE public.mois;
       public         heap    postgres    false            �            1259    8990345    pays    TABLE     �   CREATE TABLE public.pays (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    timezone character varying(255)
);
    DROP TABLE public.pays;
       public         heap    postgres    false            �            1259    8990351    permissions    TABLE     �   CREATE TABLE public.permissions (
    id character varying(12) NOT NULL,
    nom character varying(255) NOT NULL,
    ordre integer
);
    DROP TABLE public.permissions;
       public         heap    postgres    false            �            1259    8990354    phases_statuts    TABLE     �   CREATE TABLE public.phases_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    couleur character varying(16) NOT NULL
);
 "   DROP TABLE public.phases_statuts;
       public         heap    postgres    false            �            1259    8990357    references_types    TABLE     x   CREATE TABLE public.references_types (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL
);
 $   DROP TABLE public.references_types;
       public         heap    postgres    false            �            1259    8990360    regions    TABLE     �   CREATE TABLE public.regions (
    id character varying(2) NOT NULL,
    nom character varying(255),
    pays_id character varying(3) NOT NULL,
    cheflieu_id character varying(5)
);
    DROP TABLE public.regions;
       public         heap    postgres    false            �            1259    8990363 
   substances    TABLE     �   CREATE TABLE public.substances (
    id character varying(4) NOT NULL,
    nom character varying(255) NOT NULL,
    symbole character varying(255),
    gerep integer,
    description character varying(2048)
);
    DROP TABLE public.substances;
       public         heap    postgres    false            �            1259    8990369    substances__substances_legales    TABLE     �   CREATE TABLE public.substances__substances_legales (
    substance_id character varying(255) NOT NULL,
    substance_legale_id character varying(255) NOT NULL
);
 2   DROP TABLE public.substances__substances_legales;
       public         heap    postgres    false            �            1259    8990375    substances_fiscales    TABLE     :  CREATE TABLE public.substances_fiscales (
    id character varying(4) NOT NULL,
    substance_legale_id character varying(255) NOT NULL,
    unite_id character varying(255) NOT NULL,
    redevance_unite_id character varying(255),
    nom character varying(255) NOT NULL,
    description character varying(2048)
);
 '   DROP TABLE public.substances_fiscales;
       public         heap    postgres    false            �            1259    8990381    substances_legales    TABLE     �   CREATE TABLE public.substances_legales (
    id character varying(255) NOT NULL,
    nom character varying(255) NOT NULL,
    domaine_id character varying(1) NOT NULL,
    description text,
    substance_legale_code_id character varying(255) NOT NULL
);
 &   DROP TABLE public.substances_legales;
       public         heap    postgres    false            �            1259    8990387    substances_legales_codes    TABLE     �   CREATE TABLE public.substances_legales_codes (
    id character varying(255) NOT NULL,
    nom character varying(255),
    code character varying(255) NOT NULL,
    description text,
    lien character varying(255) NOT NULL,
    ordre integer NOT NULL
);
 ,   DROP TABLE public.substances_legales_codes;
       public         heap    postgres    false            �            1259    8990393    titres    TABLE     �  CREATE TABLE public.titres (
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
       public         heap    postgres    false            �            1259    8990403    titres_activites    TABLE     �  CREATE TABLE public.titres_activites (
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
       public         heap    postgres    false            �            1259    8990409 $   titres_administrations_gestionnaires    TABLE     �   CREATE TABLE public.titres_administrations_gestionnaires (
    titre_id character varying(128) NOT NULL,
    administration_id character varying(64) NOT NULL,
    associee boolean
);
 8   DROP TABLE public.titres_administrations_gestionnaires;
       public         heap    postgres    false            �            1259    8990412    titres_administrations_locales    TABLE     �   CREATE TABLE public.titres_administrations_locales (
    titre_etape_id character varying(128) NOT NULL,
    administration_id character varying(64) NOT NULL,
    associee boolean,
    coordinateur boolean
);
 2   DROP TABLE public.titres_administrations_locales;
       public         heap    postgres    false            �            1259    8990415    titres_amodiataires    TABLE     �   CREATE TABLE public.titres_amodiataires (
    titre_etape_id character varying(128) NOT NULL,
    entreprise_id character varying(64) NOT NULL,
    operateur boolean
);
 '   DROP TABLE public.titres_amodiataires;
       public         heap    postgres    false            �            1259    8990418    titres_communes    TABLE     �   CREATE TABLE public.titres_communes (
    titre_etape_id character varying(128) NOT NULL,
    commune_id character varying(8) NOT NULL,
    surface integer
);
 #   DROP TABLE public.titres_communes;
       public         heap    postgres    false            �            1259    8990421    titres_demarches    TABLE     n  CREATE TABLE public.titres_demarches (
    id character varying(128) NOT NULL,
    titre_id character varying(128) NOT NULL,
    type_id character varying(3) NOT NULL,
    statut_id character varying(3) DEFAULT 'ind'::character varying NOT NULL,
    public_lecture boolean DEFAULT false,
    entreprises_lecture boolean DEFAULT false,
    ordre integer DEFAULT 0
);
 $   DROP TABLE public.titres_demarches;
       public         heap    postgres    false            �            1259    8990428    titres_demarches_liens    TABLE     �   CREATE TABLE public.titres_demarches_liens (
    enfant_titre_demarche_id character varying(128) NOT NULL,
    parent_titre_demarche_id character varying(128) NOT NULL
);
 *   DROP TABLE public.titres_demarches_liens;
       public         heap    postgres    false            �            1259    8990431    titres_etapes    TABLE     �  CREATE TABLE public.titres_etapes (
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
       public         heap    postgres    false                        1259    8990437    titres_etapes_justificatifs    TABLE     �   CREATE TABLE public.titres_etapes_justificatifs (
    titre_etape_id character varying(128) NOT NULL,
    document_id character varying(255) NOT NULL
);
 /   DROP TABLE public.titres_etapes_justificatifs;
       public         heap    postgres    false                       1259    8990440    titres_forets    TABLE     �   CREATE TABLE public.titres_forets (
    titre_etape_id character varying(128) NOT NULL,
    foret_id character varying(8) NOT NULL,
    surface integer
);
 !   DROP TABLE public.titres_forets;
       public         heap    postgres    false                       1259    8990443    titres_phases    TABLE     �   CREATE TABLE public.titres_phases (
    titre_demarche_id character varying(128) NOT NULL,
    statut_id character varying(3) NOT NULL,
    date_debut character varying(10),
    date_fin character varying(10)
);
 !   DROP TABLE public.titres_phases;
       public         heap    postgres    false                       1259    8990446    titres_points    TABLE     o  CREATE TABLE public.titres_points (
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
       public         heap    postgres    false                       1259    8990452    titres_points_references    TABLE     �   CREATE TABLE public.titres_points_references (
    id character varying(255) NOT NULL,
    titre_point_id character varying(255),
    geo_systeme_id character varying(5) NOT NULL,
    coordonnees point NOT NULL,
    opposable boolean
);
 ,   DROP TABLE public.titres_points_references;
       public         heap    postgres    false                       1259    8990458    titres_references    TABLE     �   CREATE TABLE public.titres_references (
    titre_id character varying(128) NOT NULL,
    type_id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL
);
 %   DROP TABLE public.titres_references;
       public         heap    postgres    false                       1259    8990461    titres_statuts    TABLE     �   CREATE TABLE public.titres_statuts (
    id character varying(3) NOT NULL,
    nom character varying(32) NOT NULL,
    description text,
    couleur character varying(16) NOT NULL,
    ordre integer
);
 "   DROP TABLE public.titres_statuts;
       public         heap    postgres    false                       1259    8990467    titres_substances    TABLE     �   CREATE TABLE public.titres_substances (
    titre_etape_id character varying(128) NOT NULL,
    substance_id character varying(4) NOT NULL,
    ordre integer
);
 %   DROP TABLE public.titres_substances;
       public         heap    postgres    false                       1259    8990470    titres_titulaires    TABLE     �   CREATE TABLE public.titres_titulaires (
    titre_etape_id character varying(128) NOT NULL,
    entreprise_id character varying(64) NOT NULL,
    operateur boolean
);
 %   DROP TABLE public.titres_titulaires;
       public         heap    postgres    false            	           1259    8990473    titres_travaux    TABLE     �   CREATE TABLE public.titres_travaux (
    id character varying(128) NOT NULL,
    titre_id character varying(128),
    statut_id character varying(3) DEFAULT 'ind'::character varying,
    type_id character varying(3),
    ordre integer
);
 "   DROP TABLE public.titres_travaux;
       public         heap    postgres    false            
           1259    8990477    titres_travaux_etapes    TABLE     4  CREATE TABLE public.titres_travaux_etapes (
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
       public         heap    postgres    false                       1259    8990483    titres_types    TABLE     �   CREATE TABLE public.titres_types (
    id character varying(3) NOT NULL,
    domaine_id character varying(1) NOT NULL,
    type_id character varying(3) NOT NULL,
    contenu_ids jsonb[],
    archive boolean
);
     DROP TABLE public.titres_types;
       public         heap    postgres    false                       1259    8990489    titres_types__demarches_types    TABLE     �  CREATE TABLE public.titres_types__demarches_types (
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
       public         heap    postgres    false                       1259    8990495 +   titres_types__demarches_types__etapes_types    TABLE       CREATE TABLE public.titres_types__demarches_types__etapes_types (
    titre_type_id character varying(3) NOT NULL,
    ordre integer,
    demarche_type_id character varying(7) NOT NULL,
    etape_type_id character varying(3) NOT NULL,
    sections jsonb[]
);
 ?   DROP TABLE public.titres_types__demarches_types__etapes_types;
       public         heap    postgres    false                       1259    8990501    titres_types__titres_statuts    TABLE     �   CREATE TABLE public.titres_types__titres_statuts (
    titre_type_id character varying(255) NOT NULL,
    titre_statut_id character varying(255) NOT NULL,
    public_lecture boolean
);
 0   DROP TABLE public.titres_types__titres_statuts;
       public         heap    postgres    false                       1259    8990507    titres_types_types    TABLE     �   CREATE TABLE public.titres_types_types (
    id character varying(2) NOT NULL,
    nom character varying(255) NOT NULL,
    description text,
    ordre integer NOT NULL
);
 &   DROP TABLE public.titres_types_types;
       public         heap    postgres    false                       1259    8990513    travaux_types    TABLE     �   CREATE TABLE public.travaux_types (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    description text,
    ordre integer NOT NULL
);
 !   DROP TABLE public.travaux_types;
       public         heap    postgres    false                       1259    8990519    travaux_types__etapes_types    TABLE     �   CREATE TABLE public.travaux_types__etapes_types (
    travaux_type_id character varying(3) NOT NULL,
    etape_type_id character varying(3) NOT NULL,
    sections jsonb[],
    ordre integer NOT NULL
);
 /   DROP TABLE public.travaux_types__etapes_types;
       public         heap    postgres    false                       1259    8990525 
   trimestres    TABLE     �   CREATE TABLE public.trimestres (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    frequence_id character varying(3)
);
    DROP TABLE public.trimestres;
       public         heap    postgres    false                       1259    8990528    unites    TABLE     �   CREATE TABLE public.unites (
    id character varying(3) NOT NULL,
    nom character varying(255) NOT NULL,
    symbole character varying(255) NOT NULL,
    reference_unite_id character varying(3),
    reference_unite_ratio real
);
    DROP TABLE public.unites;
       public         heap    postgres    false                       1259    8990534    utilisateurs    TABLE     �  CREATE TABLE public.utilisateurs (
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
       public         heap    postgres    false                       1259    8990540    utilisateurs__administrations    TABLE     �   CREATE TABLE public.utilisateurs__administrations (
    utilisateur_id character varying(64),
    administration_id character varying(64)
);
 1   DROP TABLE public.utilisateurs__administrations;
       public         heap    postgres    false                       1259    8990543    utilisateurs__entreprises    TABLE     �   CREATE TABLE public.utilisateurs__entreprises (
    utilisateur_id character varying(64),
    entreprise_id character varying(64)
);
 -   DROP TABLE public.utilisateurs__entreprises;
       public         heap    postgres    false            �           2604    8990546    knex_migrations id    DEFAULT     x   ALTER TABLE ONLY public.knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.knex_migrations_id_seq'::regclass);
 A   ALTER TABLE public.knex_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    8990547    knex_migrations_lock index    DEFAULT     �   ALTER TABLE ONLY public.knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.knex_migrations_lock_index_seq'::regclass);
 I   ALTER TABLE public.knex_migrations_lock ALTER COLUMN index DROP DEFAULT;
       public          postgres    false    235    234            |          0    8990181    activites_statuts 
   TABLE DATA           =   COPY public.activites_statuts (id, nom, couleur) FROM stdin;
    public          postgres    false    200   <�      }          0    8990184    activites_types 
   TABLE DATA           �   COPY public.activites_types (id, nom, sections, frequence_id, date_debut, delai_mois, satisfaction_url, ordre, email) FROM stdin;
    public          postgres    false    201   ��      ~          0    8990190     activites_types__documents_types 
   TABLE DATA           i   COPY public.activites_types__documents_types (activite_type_id, document_type_id, optionnel) FROM stdin;
    public          postgres    false    202   ��                0    8990193    activites_types__pays 
   TABLE DATA           J   COPY public.activites_types__pays (pays_id, activite_type_id) FROM stdin;
    public          postgres    false    203   �      �          0    8990196    activites_types__titres_types 
   TABLE DATA           X   COPY public.activites_types__titres_types (titre_type_id, activite_type_id) FROM stdin;
    public          postgres    false    204   �      �          0    8990199    administrations 
   TABLE DATA           �   COPY public.administrations (id, type_id, nom, abreviation, service, url, email, telephone, adresse1, adresse2, code_postal, commune, cedex, departement_id, region_id) FROM stdin;
    public          postgres    false    205   a�      �          0    8990205     administrations__activites_types 
   TABLE DATA           �   COPY public.administrations__activites_types (activite_type_id, administration_id, modification_interdit, lecture_interdit) FROM stdin;
    public          postgres    false    206   +�      �          0    8990208    administrations__titres_types 
   TABLE DATA           q   COPY public.administrations__titres_types (administration_id, titre_type_id, gestionnaire, associee) FROM stdin;
    public          postgres    false    207   {�      �          0    8990214 +   administrations__titres_types__etapes_types 
   TABLE DATA           �   COPY public.administrations__titres_types__etapes_types (administration_id, titre_type_id, etape_type_id, lecture_interdit, creation_interdit, modification_interdit) FROM stdin;
    public          postgres    false    208   ��      �          0    8990220 -   administrations__titres_types__titres_statuts 
   TABLE DATA           �   COPY public.administrations__titres_types__titres_statuts (administration_id, titre_type_id, titre_statut_id, titres_modification_interdit, demarches_modification_interdit, etapes_modification_interdit) FROM stdin;
    public          postgres    false    209   ��      �          0    8990226    administrations_types 
   TABLE DATA           ?   COPY public.administrations_types (id, nom, ordre) FROM stdin;
    public          postgres    false    210   ��      �          0    8990229    annees 
   TABLE DATA           7   COPY public.annees (id, nom, frequence_id) FROM stdin;
    public          postgres    false    211   �      �          0    8990232    caches 
   TABLE DATA           ,   COPY public.caches (id, valeur) FROM stdin;
    public          postgres    false    212   E�      �          0    8990238    communes 
   TABLE DATA           ;   COPY public.communes (id, nom, departement_id) FROM stdin;
    public          postgres    false    213   z�      �          0    8990241    definitions 
   TABLE DATA           Q   COPY public.definitions (id, nom, slug, "table", ordre, description) FROM stdin;
    public          postgres    false    214   9�      �          0    8990247    demarches_statuts 
   TABLE DATA           Q   COPY public.demarches_statuts (id, nom, description, couleur, ordre) FROM stdin;
    public          postgres    false    215   ��      �          0    8990253    demarches_types 
   TABLE DATA           �   COPY public.demarches_types (id, nom, description, ordre, duree, points, substances, titulaires, renouvelable, exception, auto) FROM stdin;
    public          postgres    false    216   j�      �          0    8990259    departements 
   TABLE DATA           G   COPY public.departements (id, nom, region_id, cheflieu_id) FROM stdin;
    public          postgres    false    217   ��      �          0    8990262    devises 
   TABLE DATA           1   COPY public.devises (id, nom, ordre) FROM stdin;
    public          postgres    false    218   }�      �          0    8990265 	   documents 
   TABLE DATA           �   COPY public.documents (id, type_id, date, entreprise_id, titre_etape_id, description, titre_activite_id, titre_travaux_etape_id, fichier, fichier_type_id, url, uri, jorf, nor, public_lecture, entreprises_lecture) FROM stdin;
    public          postgres    false    219   ��      �          0    8990271    documents_types 
   TABLE DATA           >   COPY public.documents_types (id, nom, repertoire) FROM stdin;
    public          postgres    false    220   �      �          0    8990277    domaines 
   TABLE DATA           ?   COPY public.domaines (id, nom, description, ordre) FROM stdin;
    public          postgres    false    221   =      �          0    8990283    entreprises 
   TABLE DATA           �   COPY public.entreprises (id, nom, pays_id, legal_siren, legal_etranger, legal_forme, categorie, date_creation, adresse, code_postal, commune, cedex, url, email, telephone, archive) FROM stdin;
    public          postgres    false    222   	      �          0    8990290    entreprises_etablissements 
   TABLE DATA           o   COPY public.entreprises_etablissements (id, entreprise_id, nom, legal_siret, date_debut, date_fin) FROM stdin;
    public          postgres    false    223   a      �          0    8990296    etapes_statuts 
   TABLE DATA           G   COPY public.etapes_statuts (id, nom, description, couleur) FROM stdin;
    public          postgres    false    224   �      �          0    8990302    etapes_types 
   TABLE DATA           �   COPY public.etapes_types (id, parent_id, nom, description, ordre, fondamentale, "unique", acceptation_auto, legal_ref, legal_lien, date_debut, date_fin, sections, public_lecture, entreprises_lecture) FROM stdin;
    public          postgres    false    225   �      �          0    8990308    etapes_types__documents_types 
   TABLE DATA           c   COPY public.etapes_types__documents_types (etape_type_id, document_type_id, optionnel) FROM stdin;
    public          postgres    false    226   �6      �          0    8990311    etapes_types__etapes_statuts 
   TABLE DATA           ]   COPY public.etapes_types__etapes_statuts (etape_type_id, etape_statut_id, ordre) FROM stdin;
    public          postgres    false    227   �9      �          0    8990314    forets 
   TABLE DATA           )   COPY public.forets (id, nom) FROM stdin;
    public          postgres    false    228   �<      �          0    8990317 
   frequences 
   TABLE DATA           ;   COPY public.frequences (id, nom, periodes_nom) FROM stdin;
    public          postgres    false    229   >      �          0    8990323    geo_systemes 
   TABLE DATA           X   COPY public.geo_systemes (id, nom, ordre, unite_id, zone, definition_proj4) FROM stdin;
    public          postgres    false    230   X>      �          0    8990329    globales 
   TABLE DATA           .   COPY public.globales (id, valeur) FROM stdin;
    public          postgres    false    231   eB      �          0    8990332    knex_migrations 
   TABLE DATA           J   COPY public.knex_migrations (id, name, batch, migration_time) FROM stdin;
    public          postgres    false    232   �B      �          0    8990337    knex_migrations_lock 
   TABLE DATA           @   COPY public.knex_migrations_lock (index, is_locked) FROM stdin;
    public          postgres    false    234   OD      �          0    8990342    mois 
   TABLE DATA           C   COPY public.mois (id, nom, frequence_id, trimestre_id) FROM stdin;
    public          postgres    false    236   pD      �          0    8990345    pays 
   TABLE DATA           1   COPY public.pays (id, nom, timezone) FROM stdin;
    public          postgres    false    237   �D      �          0    8990351    permissions 
   TABLE DATA           5   COPY public.permissions (id, nom, ordre) FROM stdin;
    public          postgres    false    238   )F      �          0    8990354    phases_statuts 
   TABLE DATA           :   COPY public.phases_statuts (id, nom, couleur) FROM stdin;
    public          postgres    false    239   �F      �          0    8990357    references_types 
   TABLE DATA           3   COPY public.references_types (id, nom) FROM stdin;
    public          postgres    false    240   �F      �          0    8990360    regions 
   TABLE DATA           @   COPY public.regions (id, nom, pays_id, cheflieu_id) FROM stdin;
    public          postgres    false    241   HG      �          0    8990363 
   substances 
   TABLE DATA           J   COPY public.substances (id, nom, symbole, gerep, description) FROM stdin;
    public          postgres    false    242   �H      �          0    8990369    substances__substances_legales 
   TABLE DATA           [   COPY public.substances__substances_legales (substance_id, substance_legale_id) FROM stdin;
    public          postgres    false    243   �J      �          0    8990375    substances_fiscales 
   TABLE DATA           v   COPY public.substances_fiscales (id, substance_legale_id, unite_id, redevance_unite_id, nom, description) FROM stdin;
    public          postgres    false    244   qK      �          0    8990381    substances_legales 
   TABLE DATA           h   COPY public.substances_legales (id, nom, domaine_id, description, substance_legale_code_id) FROM stdin;
    public          postgres    false    245   �N      �          0    8990387    substances_legales_codes 
   TABLE DATA           [   COPY public.substances_legales_codes (id, nom, code, description, lien, ordre) FROM stdin;
    public          postgres    false    246   wS      �          0    8990393    titres 
   TABLE DATA           �   COPY public.titres (id, nom, type_id, domaine_id, statut_id, date_debut, date_fin, date_demande, public_lecture, entreprises_lecture, doublon_titre_id, contenus_titre_etapes_ids, coordonnees, props_titre_etapes_ids) FROM stdin;
    public          postgres    false    247   �X      �          0    8990403    titres_activites 
   TABLE DATA           �   COPY public.titres_activites (id, titre_id, utilisateur_id, date, date_saisie, contenu, type_id, statut_id, annee, periode_id, sections, suppression) FROM stdin;
    public          postgres    false    248   G_      �          0    8990409 $   titres_administrations_gestionnaires 
   TABLE DATA           e   COPY public.titres_administrations_gestionnaires (titre_id, administration_id, associee) FROM stdin;
    public          postgres    false    249   d_      �          0    8990412    titres_administrations_locales 
   TABLE DATA           s   COPY public.titres_administrations_locales (titre_etape_id, administration_id, associee, coordinateur) FROM stdin;
    public          postgres    false    250   �`      �          0    8990415    titres_amodiataires 
   TABLE DATA           W   COPY public.titres_amodiataires (titre_etape_id, entreprise_id, operateur) FROM stdin;
    public          postgres    false    251   c      �          0    8990418    titres_communes 
   TABLE DATA           N   COPY public.titres_communes (titre_etape_id, commune_id, surface) FROM stdin;
    public          postgres    false    252   c      �          0    8990421    titres_demarches 
   TABLE DATA           x   COPY public.titres_demarches (id, titre_id, type_id, statut_id, public_lecture, entreprises_lecture, ordre) FROM stdin;
    public          postgres    false    253   �h      �          0    8990428    titres_demarches_liens 
   TABLE DATA           d   COPY public.titres_demarches_liens (enfant_titre_demarche_id, parent_titre_demarche_id) FROM stdin;
    public          postgres    false    254   k      �          0    8990431    titres_etapes 
   TABLE DATA           �   COPY public.titres_etapes (id, titre_demarche_id, type_id, statut_id, ordre, date, date_debut, date_fin, duree, surface, contenu, incertitudes, heritage_props, heritage_contenu) FROM stdin;
    public          postgres    false    255   2k      �          0    8990437    titres_etapes_justificatifs 
   TABLE DATA           R   COPY public.titres_etapes_justificatifs (titre_etape_id, document_id) FROM stdin;
    public          postgres    false    256   ��      �          0    8990440    titres_forets 
   TABLE DATA           J   COPY public.titres_forets (titre_etape_id, foret_id, surface) FROM stdin;
    public          postgres    false    257   ׂ      �          0    8990443    titres_phases 
   TABLE DATA           [   COPY public.titres_phases (titre_demarche_id, statut_id, date_debut, date_fin) FROM stdin;
    public          postgres    false    258   Y�      �          0    8990446    titres_points 
   TABLE DATA           �   COPY public.titres_points (id, titre_etape_id, coordonnees, groupe, contour, point, nom, description, securite, subsidiaire, lot) FROM stdin;
    public          postgres    false    259   ��      �          0    8990452    titres_points_references 
   TABLE DATA           n   COPY public.titres_points_references (id, titre_point_id, geo_systeme_id, coordonnees, opposable) FROM stdin;
    public          postgres    false    260   ��      �          0    8990458    titres_references 
   TABLE DATA           C   COPY public.titres_references (titre_id, type_id, nom) FROM stdin;
    public          postgres    false    261   ��      �          0    8990461    titres_statuts 
   TABLE DATA           N   COPY public.titres_statuts (id, nom, description, couleur, ordre) FROM stdin;
    public          postgres    false    262   Q�      �          0    8990467    titres_substances 
   TABLE DATA           P   COPY public.titres_substances (titre_etape_id, substance_id, ordre) FROM stdin;
    public          postgres    false    263   M�      �          0    8990470    titres_titulaires 
   TABLE DATA           U   COPY public.titres_titulaires (titre_etape_id, entreprise_id, operateur) FROM stdin;
    public          postgres    false    264   ��      �          0    8990473    titres_travaux 
   TABLE DATA           Q   COPY public.titres_travaux (id, titre_id, statut_id, type_id, ordre) FROM stdin;
    public          postgres    false    265   4�      �          0    8990477    titres_travaux_etapes 
   TABLE DATA              COPY public.titres_travaux_etapes (id, titre_travaux_id, statut_id, type_id, date, duree, surface, contenu, ordre) FROM stdin;
    public          postgres    false    266   Q�      �          0    8990483    titres_types 
   TABLE DATA           U   COPY public.titres_types (id, domaine_id, type_id, contenu_ids, archive) FROM stdin;
    public          postgres    false    267   n�      �          0    8990489    titres_types__demarches_types 
   TABLE DATA           �   COPY public.titres_types__demarches_types (titre_type_id, demarche_type_id, duree_max, acceptation_implicite, delai_implicite, delai_recours, legal_ref, legal_lien, date_debut, date_fin) FROM stdin;
    public          postgres    false    268   ��      �          0    8990495 +   titres_types__demarches_types__etapes_types 
   TABLE DATA           �   COPY public.titres_types__demarches_types__etapes_types (titre_type_id, ordre, demarche_type_id, etape_type_id, sections) FROM stdin;
    public          postgres    false    269   ��      �          0    8990501    titres_types__titres_statuts 
   TABLE DATA           f   COPY public.titres_types__titres_statuts (titre_type_id, titre_statut_id, public_lecture) FROM stdin;
    public          postgres    false    270   e      �          0    8990507    titres_types_types 
   TABLE DATA           I   COPY public.titres_types_types (id, nom, description, ordre) FROM stdin;
    public          postgres    false    271   �      �          0    8990513    travaux_types 
   TABLE DATA           D   COPY public.travaux_types (id, nom, description, ordre) FROM stdin;
    public          postgres    false    272   c      �          0    8990519    travaux_types__etapes_types 
   TABLE DATA           f   COPY public.travaux_types__etapes_types (travaux_type_id, etape_type_id, sections, ordre) FROM stdin;
    public          postgres    false    273   k      �          0    8990525 
   trimestres 
   TABLE DATA           ;   COPY public.trimestres (id, nom, frequence_id) FROM stdin;
    public          postgres    false    274   4      �          0    8990528    unites 
   TABLE DATA           ]   COPY public.unites (id, nom, symbole, reference_unite_id, reference_unite_ratio) FROM stdin;
    public          postgres    false    275   s      �          0    8990534    utilisateurs 
   TABLE DATA           �   COPY public.utilisateurs (id, email, mot_de_passe, nom, prenom, telephone_fixe, telephone_mobile, refresh_token, permission_id, preferences) FROM stdin;
    public          postgres    false    276   o      �          0    8990540    utilisateurs__administrations 
   TABLE DATA           Z   COPY public.utilisateurs__administrations (utilisateur_id, administration_id) FROM stdin;
    public          postgres    false    277   �      �          0    8990543    utilisateurs__entreprises 
   TABLE DATA           R   COPY public.utilisateurs__entreprises (utilisateur_id, entreprise_id) FROM stdin;
    public          postgres    false    278   �      �           0    0    knex_migrations_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.knex_migrations_id_seq', 22, true);
          public          postgres    false    233            �           0    0    knex_migrations_lock_index_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.knex_migrations_lock_index_seq', 1, true);
          public          postgres    false    235            �           2606    8991903 (   activites_statuts activites_statuts_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.activites_statuts
    ADD CONSTRAINT activites_statuts_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.activites_statuts DROP CONSTRAINT activites_statuts_pkey;
       public            postgres    false    200            �           2606    8991905 F   activites_types__documents_types activites_types__documents_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__documents_types
    ADD CONSTRAINT activites_types__documents_types_pkey PRIMARY KEY (activite_type_id, document_type_id);
 p   ALTER TABLE ONLY public.activites_types__documents_types DROP CONSTRAINT activites_types__documents_types_pkey;
       public            postgres    false    202    202            �           2606    8991907 0   activites_types__pays activites_types__pays_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__pays
    ADD CONSTRAINT activites_types__pays_pkey PRIMARY KEY (pays_id, activite_type_id);
 Z   ALTER TABLE ONLY public.activites_types__pays DROP CONSTRAINT activites_types__pays_pkey;
       public            postgres    false    203    203            �           2606    8991909 $   activites_types activites_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.activites_types
    ADD CONSTRAINT activites_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.activites_types DROP CONSTRAINT activites_types_pkey;
       public            postgres    false    201            �           2606    8991911 \   administrations__titres_types__etapes_types administrations__titres_types__etapes_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types__etapes_types
    ADD CONSTRAINT administrations__titres_types__etapes_types_pkey PRIMARY KEY (administration_id, titre_type_id, etape_type_id);
 �   ALTER TABLE ONLY public.administrations__titres_types__etapes_types DROP CONSTRAINT administrations__titres_types__etapes_types_pkey;
       public            postgres    false    208    208    208            �           2606    8991913 `   administrations__titres_types__titres_statuts administrations__titres_types__titres_statuts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types__titres_statuts
    ADD CONSTRAINT administrations__titres_types__titres_statuts_pkey PRIMARY KEY (administration_id, titre_type_id, titre_statut_id);
 �   ALTER TABLE ONLY public.administrations__titres_types__titres_statuts DROP CONSTRAINT administrations__titres_types__titres_statuts_pkey;
       public            postgres    false    209    209    209            �           2606    8991915 @   administrations__titres_types administrations__titres_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types
    ADD CONSTRAINT administrations__titres_types_pkey PRIMARY KEY (administration_id, titre_type_id);
 j   ALTER TABLE ONLY public.administrations__titres_types DROP CONSTRAINT administrations__titres_types_pkey;
       public            postgres    false    207    207            �           2606    8991917 $   administrations administrations_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_pkey;
       public            postgres    false    205            �           2606    8991919 0   administrations_types administrations_types_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.administrations_types
    ADD CONSTRAINT administrations_types_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.administrations_types DROP CONSTRAINT administrations_types_pkey;
       public            postgres    false    210            �           2606    8991921    annees annees_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.annees
    ADD CONSTRAINT annees_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.annees DROP CONSTRAINT annees_pkey;
       public            postgres    false    211            �           2606    8991923    caches caches_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.caches
    ADD CONSTRAINT caches_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.caches DROP CONSTRAINT caches_pkey;
       public            postgres    false    212            �           2606    8991925    communes communes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.communes
    ADD CONSTRAINT communes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.communes DROP CONSTRAINT communes_pkey;
       public            postgres    false    213            �           2606    8991927    definitions definitions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.definitions
    ADD CONSTRAINT definitions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.definitions DROP CONSTRAINT definitions_pkey;
       public            postgres    false    214            �           2606    8991929 (   demarches_statuts demarches_statuts_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.demarches_statuts
    ADD CONSTRAINT demarches_statuts_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.demarches_statuts DROP CONSTRAINT demarches_statuts_pkey;
       public            postgres    false    215            �           2606    8991931 $   demarches_types demarches_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.demarches_types
    ADD CONSTRAINT demarches_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.demarches_types DROP CONSTRAINT demarches_types_pkey;
       public            postgres    false    216            �           2606    8991933    departements departements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.departements
    ADD CONSTRAINT departements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.departements DROP CONSTRAINT departements_pkey;
       public            postgres    false    217            �           2606    8991935    devises devises_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.devises
    ADD CONSTRAINT devises_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.devises DROP CONSTRAINT devises_pkey;
       public            postgres    false    218            �           2606    8991937    documents documents_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_pkey;
       public            postgres    false    219            �           2606    8991939 $   documents_types documents_types_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.documents_types
    ADD CONSTRAINT documents_types_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.documents_types DROP CONSTRAINT documents_types_pkey;
       public            postgres    false    220            �           2606    8991941    domaines domaines_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.domaines
    ADD CONSTRAINT domaines_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.domaines DROP CONSTRAINT domaines_pkey;
       public            postgres    false    221            �           2606    8991943 :   entreprises_etablissements entreprises_etablissements_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.entreprises_etablissements
    ADD CONSTRAINT entreprises_etablissements_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.entreprises_etablissements DROP CONSTRAINT entreprises_etablissements_pkey;
       public            postgres    false    223            �           2606    8991945    entreprises entreprises_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.entreprises
    ADD CONSTRAINT entreprises_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.entreprises DROP CONSTRAINT entreprises_pkey;
       public            postgres    false    222            �           2606    8991947 "   etapes_statuts etapes_statuts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.etapes_statuts
    ADD CONSTRAINT etapes_statuts_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.etapes_statuts DROP CONSTRAINT etapes_statuts_pkey;
       public            postgres    false    224            �           2606    8991949 @   etapes_types__documents_types etapes_types__documents_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types__documents_types
    ADD CONSTRAINT etapes_types__documents_types_pkey PRIMARY KEY (etape_type_id, document_type_id);
 j   ALTER TABLE ONLY public.etapes_types__documents_types DROP CONSTRAINT etapes_types__documents_types_pkey;
       public            postgres    false    226    226            �           2606    8991951 >   etapes_types__etapes_statuts etapes_types__etapes_statuts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types__etapes_statuts
    ADD CONSTRAINT etapes_types__etapes_statuts_pkey PRIMARY KEY (etape_type_id, etape_statut_id);
 h   ALTER TABLE ONLY public.etapes_types__etapes_statuts DROP CONSTRAINT etapes_types__etapes_statuts_pkey;
       public            postgres    false    227    227            �           2606    8991953    etapes_types etapes_types_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.etapes_types
    ADD CONSTRAINT etapes_types_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.etapes_types DROP CONSTRAINT etapes_types_pkey;
       public            postgres    false    225            �           2606    8991955    forets forets_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.forets
    ADD CONSTRAINT forets_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.forets DROP CONSTRAINT forets_pkey;
       public            postgres    false    228            �           2606    8991957    frequences frequences_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.frequences
    ADD CONSTRAINT frequences_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.frequences DROP CONSTRAINT frequences_pkey;
       public            postgres    false    229            �           2606    8991959    geo_systemes geo_systemes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.geo_systemes
    ADD CONSTRAINT geo_systemes_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.geo_systemes DROP CONSTRAINT geo_systemes_pkey;
       public            postgres    false    230            �           2606    8991961    globales globales_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.globales
    ADD CONSTRAINT globales_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.globales DROP CONSTRAINT globales_pkey;
       public            postgres    false    231            �           2606    8991963 .   knex_migrations_lock knex_migrations_lock_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.knex_migrations_lock
    ADD CONSTRAINT knex_migrations_lock_pkey PRIMARY KEY (index);
 X   ALTER TABLE ONLY public.knex_migrations_lock DROP CONSTRAINT knex_migrations_lock_pkey;
       public            postgres    false    234            �           2606    8991965 $   knex_migrations knex_migrations_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.knex_migrations
    ADD CONSTRAINT knex_migrations_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.knex_migrations DROP CONSTRAINT knex_migrations_pkey;
       public            postgres    false    232            �           2606    8991967    mois mois_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.mois
    ADD CONSTRAINT mois_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.mois DROP CONSTRAINT mois_pkey;
       public            postgres    false    236            �           2606    8991969    pays pays_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.pays
    ADD CONSTRAINT pays_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.pays DROP CONSTRAINT pays_pkey;
       public            postgres    false    237            �           2606    8991971    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    238            �           2606    8991973 "   phases_statuts phases_statuts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.phases_statuts
    ADD CONSTRAINT phases_statuts_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.phases_statuts DROP CONSTRAINT phases_statuts_pkey;
       public            postgres    false    239                        2606    8991975 &   references_types references_types_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.references_types
    ADD CONSTRAINT references_types_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.references_types DROP CONSTRAINT references_types_pkey;
       public            postgres    false    240                       2606    8991977    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public            postgres    false    241                       2606    8991979 B   substances__substances_legales substances__substances_legales_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.substances__substances_legales
    ADD CONSTRAINT substances__substances_legales_pkey PRIMARY KEY (substance_id, substance_legale_id);
 l   ALTER TABLE ONLY public.substances__substances_legales DROP CONSTRAINT substances__substances_legales_pkey;
       public            postgres    false    243    243                       2606    8991981 ,   substances_fiscales substances_fiscales_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.substances_fiscales
    ADD CONSTRAINT substances_fiscales_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.substances_fiscales DROP CONSTRAINT substances_fiscales_pkey;
       public            postgres    false    244                       2606    8991983 6   substances_legales_codes substances_legales_codes_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.substances_legales_codes
    ADD CONSTRAINT substances_legales_codes_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.substances_legales_codes DROP CONSTRAINT substances_legales_codes_pkey;
       public            postgres    false    246                       2606    8991985 *   substances_legales substances_legales_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.substances_legales
    ADD CONSTRAINT substances_legales_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.substances_legales DROP CONSTRAINT substances_legales_pkey;
       public            postgres    false    245                       2606    8991987    substances substances_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.substances
    ADD CONSTRAINT substances_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.substances DROP CONSTRAINT substances_pkey;
       public            postgres    false    242                       2606    8991989 &   titres_activites titres_activites_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titres_activites_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titres_activites_pkey;
       public            postgres    false    248            "           2606    8991991 N   titres_administrations_gestionnaires titres_administrations_gestionnaires_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_gestionnaires
    ADD CONSTRAINT titres_administrations_gestionnaires_pkey PRIMARY KEY (titre_id, administration_id);
 x   ALTER TABLE ONLY public.titres_administrations_gestionnaires DROP CONSTRAINT titres_administrations_gestionnaires_pkey;
       public            postgres    false    249    249            &           2606    8991993 B   titres_administrations_locales titres_administrations_locales_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_locales
    ADD CONSTRAINT titres_administrations_locales_pkey PRIMARY KEY (titre_etape_id, administration_id);
 l   ALTER TABLE ONLY public.titres_administrations_locales DROP CONSTRAINT titres_administrations_locales_pkey;
       public            postgres    false    250    250            *           2606    8991995 ,   titres_amodiataires titres_amodiataires_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_amodiataires
    ADD CONSTRAINT titres_amodiataires_pkey PRIMARY KEY (titre_etape_id, entreprise_id);
 V   ALTER TABLE ONLY public.titres_amodiataires DROP CONSTRAINT titres_amodiataires_pkey;
       public            postgres    false    251    251            .           2606    8991997 $   titres_communes titres_communes_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.titres_communes
    ADD CONSTRAINT titres_communes_pkey PRIMARY KEY (titre_etape_id, commune_id);
 N   ALTER TABLE ONLY public.titres_communes DROP CONSTRAINT titres_communes_pkey;
       public            postgres    false    252    252            7           2606    8991999 2   titres_demarches_liens titres_demarches_liens_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches_liens
    ADD CONSTRAINT titres_demarches_liens_pkey PRIMARY KEY (enfant_titre_demarche_id, parent_titre_demarche_id);
 \   ALTER TABLE ONLY public.titres_demarches_liens DROP CONSTRAINT titres_demarches_liens_pkey;
       public            postgres    false    254    254            2           2606    8992001 &   titres_demarches titres_demarches_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titres_demarches_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titres_demarches_pkey;
       public            postgres    false    253            @           2606    8992003 <   titres_etapes_justificatifs titres_etapes_justificatifs_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes_justificatifs
    ADD CONSTRAINT titres_etapes_justificatifs_pkey PRIMARY KEY (titre_etape_id, document_id);
 f   ALTER TABLE ONLY public.titres_etapes_justificatifs DROP CONSTRAINT titres_etapes_justificatifs_pkey;
       public            postgres    false    256    256            ;           2606    8992005     titres_etapes titres_etapes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titres_etapes_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titres_etapes_pkey;
       public            postgres    false    255            D           2606    8992007     titres_forets titres_forets_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.titres_forets
    ADD CONSTRAINT titres_forets_pkey PRIMARY KEY (titre_etape_id, foret_id);
 J   ALTER TABLE ONLY public.titres_forets DROP CONSTRAINT titres_forets_pkey;
       public            postgres    false    257    257            H           2606    8992009     titres_phases titres_phases_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.titres_phases
    ADD CONSTRAINT titres_phases_pkey PRIMARY KEY (titre_demarche_id);
 J   ALTER TABLE ONLY public.titres_phases DROP CONSTRAINT titres_phases_pkey;
       public            postgres    false    258                       2606    8992011    titres titres_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_pkey;
       public            postgres    false    247            J           2606    8992013     titres_points titres_points_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.titres_points
    ADD CONSTRAINT titres_points_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.titres_points DROP CONSTRAINT titres_points_pkey;
       public            postgres    false    259            N           2606    8992015 6   titres_points_references titres_points_references_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.titres_points_references
    ADD CONSTRAINT titres_points_references_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.titres_points_references DROP CONSTRAINT titres_points_references_pkey;
       public            postgres    false    260            Q           2606    8992017 (   titres_references titres_references_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.titres_references
    ADD CONSTRAINT titres_references_pkey PRIMARY KEY (titre_id, type_id, nom);
 R   ALTER TABLE ONLY public.titres_references DROP CONSTRAINT titres_references_pkey;
       public            postgres    false    261    261    261            U           2606    8992019 "   titres_statuts titres_statuts_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.titres_statuts
    ADD CONSTRAINT titres_statuts_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.titres_statuts DROP CONSTRAINT titres_statuts_pkey;
       public            postgres    false    262            W           2606    8992021 (   titres_substances titres_substances_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_substances
    ADD CONSTRAINT titres_substances_pkey PRIMARY KEY (titre_etape_id, substance_id);
 R   ALTER TABLE ONLY public.titres_substances DROP CONSTRAINT titres_substances_pkey;
       public            postgres    false    263    263            [           2606    8992023 (   titres_titulaires titres_titulaires_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_titulaires
    ADD CONSTRAINT titres_titulaires_pkey PRIMARY KEY (titre_etape_id, entreprise_id);
 R   ALTER TABLE ONLY public.titres_titulaires DROP CONSTRAINT titres_titulaires_pkey;
       public            postgres    false    264    264            d           2606    8992025 0   titres_travaux_etapes titres_travaux_etapes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.titres_travaux_etapes
    ADD CONSTRAINT titres_travaux_etapes_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.titres_travaux_etapes DROP CONSTRAINT titres_travaux_etapes_pkey;
       public            postgres    false    266            _           2606    8992027 "   titres_travaux titres_travaux_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.titres_travaux
    ADD CONSTRAINT titres_travaux_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.titres_travaux DROP CONSTRAINT titres_travaux_pkey;
       public            postgres    false    265            �           2606    8992029 @   activites_types__titres_types titres_types__activites_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__titres_types
    ADD CONSTRAINT titres_types__activites_types_pkey PRIMARY KEY (titre_type_id, activite_type_id);
 j   ALTER TABLE ONLY public.activites_types__titres_types DROP CONSTRAINT titres_types__activites_types_pkey;
       public            postgres    false    204    204            s           2606    8992031 \   titres_types__demarches_types__etapes_types titres_types__demarches_types__etapes_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titres_types__demarches_types__etapes_types_pkey PRIMARY KEY (titre_type_id, demarche_type_id, etape_type_id);
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titres_types__demarches_types__etapes_types_pkey;
       public            postgres    false    269    269    269            o           2606    8992033 @   titres_types__demarches_types titres_types__demarches_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types
    ADD CONSTRAINT titres_types__demarches_types_pkey PRIMARY KEY (titre_type_id, demarche_type_id);
 j   ALTER TABLE ONLY public.titres_types__demarches_types DROP CONSTRAINT titres_types__demarches_types_pkey;
       public            postgres    false    268    268            x           2606    8992035 >   titres_types__titres_statuts titres_types__titres_statuts_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__titres_statuts
    ADD CONSTRAINT titres_types__titres_statuts_pkey PRIMARY KEY (titre_type_id, titre_statut_id);
 h   ALTER TABLE ONLY public.titres_types__titres_statuts DROP CONSTRAINT titres_types__titres_statuts_pkey;
       public            postgres    false    270    270            i           2606    8992037    titres_types titres_types_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titres_types_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titres_types_pkey;
       public            postgres    false    267            |           2606    8992039 *   titres_types_types titres_types_types_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.titres_types_types
    ADD CONSTRAINT titres_types_types_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.titres_types_types DROP CONSTRAINT titres_types_types_pkey;
       public            postgres    false    271            l           2606    8992041 0   titres_types titrestypes_domaineid_typeid_unique 
   CONSTRAINT     z   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titrestypes_domaineid_typeid_unique UNIQUE (domaine_id, type_id);
 Z   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titrestypes_domaineid_typeid_unique;
       public            postgres    false    267    267            �           2606    8992043 <   travaux_types__etapes_types travaux_types__etapes_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.travaux_types__etapes_types
    ADD CONSTRAINT travaux_types__etapes_types_pkey PRIMARY KEY (travaux_type_id, etape_type_id);
 f   ALTER TABLE ONLY public.travaux_types__etapes_types DROP CONSTRAINT travaux_types__etapes_types_pkey;
       public            postgres    false    273    273            ~           2606    8992045     travaux_types travaux_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.travaux_types
    ADD CONSTRAINT travaux_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.travaux_types DROP CONSTRAINT travaux_types_pkey;
       public            postgres    false    272            �           2606    8992047    trimestres trimestres_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.trimestres
    ADD CONSTRAINT trimestres_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.trimestres DROP CONSTRAINT trimestres_pkey;
       public            postgres    false    274            �           2606    8992049    unites unites_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.unites
    ADD CONSTRAINT unites_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.unites DROP CONSTRAINT unites_pkey;
       public            postgres    false    275            �           2606    8992051 &   utilisateurs utilisateurs_email_unique 
   CONSTRAINT     b   ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_email_unique UNIQUE (email);
 P   ALTER TABLE ONLY public.utilisateurs DROP CONSTRAINT utilisateurs_email_unique;
       public            postgres    false    276            �           2606    8992053    utilisateurs utilisateurs_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.utilisateurs DROP CONSTRAINT utilisateurs_pkey;
       public            postgres    false    276            �           1259    8992054 3   activitestypes__documentstypes_activitetypeid_index    INDEX     �   CREATE INDEX activitestypes__documentstypes_activitetypeid_index ON public.activites_types__documents_types USING btree (activite_type_id);
 G   DROP INDEX public.activitestypes__documentstypes_activitetypeid_index;
       public            postgres    false    202            �           1259    8992055 3   activitestypes__documentstypes_documenttypeid_index    INDEX     �   CREATE INDEX activitestypes__documentstypes_documenttypeid_index ON public.activites_types__documents_types USING btree (document_type_id);
 G   DROP INDEX public.activitestypes__documentstypes_documenttypeid_index;
       public            postgres    false    202            �           1259    8992056 )   activitestypes__pays_activitetypeid_index    INDEX     w   CREATE INDEX activitestypes__pays_activitetypeid_index ON public.activites_types__pays USING btree (activite_type_id);
 =   DROP INDEX public.activitestypes__pays_activitetypeid_index;
       public            postgres    false    203            �           1259    8992057 !   activitestypes__pays_paysid_index    INDEX     f   CREATE INDEX activitestypes__pays_paysid_index ON public.activites_types__pays USING btree (pays_id);
 5   DROP INDEX public.activitestypes__pays_paysid_index;
       public            postgres    false    203            �           1259    8992058     activitestypes_frequenceid_index    INDEX     d   CREATE INDEX activitestypes_frequenceid_index ON public.activites_types USING btree (frequence_id);
 4   DROP INDEX public.activitestypes_frequenceid_index;
       public            postgres    false    201            �           1259    8992059 4   administrations__activitestypes_activitetypeid_index    INDEX     �   CREATE INDEX administrations__activitestypes_activitetypeid_index ON public.administrations__activites_types USING btree (activite_type_id);
 H   DROP INDEX public.administrations__activitestypes_activitetypeid_index;
       public            postgres    false    206            �           1259    8992060 6   administrations__activitestypes_administrationid_index    INDEX     �   CREATE INDEX administrations__activitestypes_administrationid_index ON public.administrations__activites_types USING btree (administration_id);
 J   DROP INDEX public.administrations__activitestypes_administrationid_index;
       public            postgres    false    206            �           1259    8992061 ?   administrations__titrestypes__etapestypes_administrationid_inde    INDEX     �   CREATE INDEX administrations__titrestypes__etapestypes_administrationid_inde ON public.administrations__titres_types__etapes_types USING btree (administration_id);
 S   DROP INDEX public.administrations__titrestypes__etapestypes_administrationid_inde;
       public            postgres    false    208            �           1259    8992062 ;   administrations__titrestypes__etapestypes_etapetypeid_index    INDEX     �   CREATE INDEX administrations__titrestypes__etapestypes_etapetypeid_index ON public.administrations__titres_types__etapes_types USING btree (etape_type_id);
 O   DROP INDEX public.administrations__titrestypes__etapestypes_etapetypeid_index;
       public            postgres    false    208            �           1259    8992063 ;   administrations__titrestypes__etapestypes_titretypeid_index    INDEX     �   CREATE INDEX administrations__titrestypes__etapestypes_titretypeid_index ON public.administrations__titres_types__etapes_types USING btree (titre_type_id);
 O   DROP INDEX public.administrations__titrestypes__etapestypes_titretypeid_index;
       public            postgres    false    208            �           1259    8992064 ?   administrations__titrestypes__titresstatuts_administrationid_in    INDEX     �   CREATE INDEX administrations__titrestypes__titresstatuts_administrationid_in ON public.administrations__titres_types__titres_statuts USING btree (administration_id);
 S   DROP INDEX public.administrations__titrestypes__titresstatuts_administrationid_in;
       public            postgres    false    209            �           1259    8992065 ?   administrations__titrestypes__titresstatuts_titrestatutid_index    INDEX     �   CREATE INDEX administrations__titrestypes__titresstatuts_titrestatutid_index ON public.administrations__titres_types__titres_statuts USING btree (titre_statut_id);
 S   DROP INDEX public.administrations__titrestypes__titresstatuts_titrestatutid_index;
       public            postgres    false    209            �           1259    8992066 =   administrations__titrestypes__titresstatuts_titretypeid_index    INDEX     �   CREATE INDEX administrations__titrestypes__titresstatuts_titretypeid_index ON public.administrations__titres_types__titres_statuts USING btree (titre_type_id);
 Q   DROP INDEX public.administrations__titrestypes__titresstatuts_titretypeid_index;
       public            postgres    false    209            �           1259    8992067 3   administrations__titrestypes_administrationid_index    INDEX     �   CREATE INDEX administrations__titrestypes_administrationid_index ON public.administrations__titres_types USING btree (administration_id);
 G   DROP INDEX public.administrations__titrestypes_administrationid_index;
       public            postgres    false    207            �           1259    8992068 .   administrations__titrestypes_titretypeid_index    INDEX     �   CREATE INDEX administrations__titrestypes_titretypeid_index ON public.administrations__titres_types USING btree (titre_type_id);
 B   DROP INDEX public.administrations__titrestypes_titretypeid_index;
       public            postgres    false    207            �           1259    8992069 #   administrations_departementid_index    INDEX     i   CREATE INDEX administrations_departementid_index ON public.administrations USING btree (departement_id);
 7   DROP INDEX public.administrations_departementid_index;
       public            postgres    false    205            �           1259    8992070    administrations_regionid_index    INDEX     _   CREATE INDEX administrations_regionid_index ON public.administrations USING btree (region_id);
 2   DROP INDEX public.administrations_regionid_index;
       public            postgres    false    205            �           1259    8992071    administrations_typeid_index    INDEX     [   CREATE INDEX administrations_typeid_index ON public.administrations USING btree (type_id);
 0   DROP INDEX public.administrations_typeid_index;
       public            postgres    false    205            �           1259    8992072    annees_frequenceid_index    INDEX     S   CREATE INDEX annees_frequenceid_index ON public.annees USING btree (frequence_id);
 ,   DROP INDEX public.annees_frequenceid_index;
       public            postgres    false    211            �           1259    8992073    communes_departementid_index    INDEX     [   CREATE INDEX communes_departementid_index ON public.communes USING btree (departement_id);
 0   DROP INDEX public.communes_departementid_index;
       public            postgres    false    213            �           1259    8992074    departements_regionid_index    INDEX     Y   CREATE INDEX departements_regionid_index ON public.departements USING btree (region_id);
 /   DROP INDEX public.departements_regionid_index;
       public            postgres    false    217            �           1259    8992075    documents_entrepriseid_index    INDEX     [   CREATE INDEX documents_entrepriseid_index ON public.documents USING btree (entreprise_id);
 0   DROP INDEX public.documents_entrepriseid_index;
       public            postgres    false    219            �           1259    8992076    documents_titreactiviteid_index    INDEX     b   CREATE INDEX documents_titreactiviteid_index ON public.documents USING btree (titre_activite_id);
 3   DROP INDEX public.documents_titreactiviteid_index;
       public            postgres    false    219            �           1259    8992077    documents_titreetapeid_index    INDEX     \   CREATE INDEX documents_titreetapeid_index ON public.documents USING btree (titre_etape_id);
 0   DROP INDEX public.documents_titreetapeid_index;
       public            postgres    false    219            �           1259    8992078 #   documents_titretravauxetapeid_index    INDEX     k   CREATE INDEX documents_titretravauxetapeid_index ON public.documents USING btree (titre_travaux_etape_id);
 7   DROP INDEX public.documents_titretravauxetapeid_index;
       public            postgres    false    219            �           1259    8992079    documents_typeid_index    INDEX     O   CREATE INDEX documents_typeid_index ON public.documents USING btree (type_id);
 *   DROP INDEX public.documents_typeid_index;
       public            postgres    false    219            �           1259    8992080 ,   entreprisesetablissements_entrepriseid_index    INDEX     |   CREATE INDEX entreprisesetablissements_entrepriseid_index ON public.entreprises_etablissements USING btree (entreprise_id);
 @   DROP INDEX public.entreprisesetablissements_entrepriseid_index;
       public            postgres    false    223            �           1259    8992081 0   etapestypes__documentstypes_documenttypeid_index    INDEX     �   CREATE INDEX etapestypes__documentstypes_documenttypeid_index ON public.etapes_types__documents_types USING btree (document_type_id);
 D   DROP INDEX public.etapestypes__documentstypes_documenttypeid_index;
       public            postgres    false    226            �           1259    8992082 -   etapestypes__documentstypes_etapetypeid_index    INDEX     �   CREATE INDEX etapestypes__documentstypes_etapetypeid_index ON public.etapes_types__documents_types USING btree (etape_type_id);
 A   DROP INDEX public.etapestypes__documentstypes_etapetypeid_index;
       public            postgres    false    226            �           1259    8992083 .   etapestypes__etapesstatuts_etapestatutid_index    INDEX     �   CREATE INDEX etapestypes__etapesstatuts_etapestatutid_index ON public.etapes_types__etapes_statuts USING btree (etape_statut_id);
 B   DROP INDEX public.etapestypes__etapesstatuts_etapestatutid_index;
       public            postgres    false    227            �           1259    8992084 ,   etapestypes__etapesstatuts_etapetypeid_index    INDEX     ~   CREATE INDEX etapestypes__etapesstatuts_etapetypeid_index ON public.etapes_types__etapes_statuts USING btree (etape_type_id);
 @   DROP INDEX public.etapestypes__etapesstatuts_etapetypeid_index;
       public            postgres    false    227            �           1259    8992085    geosystemes_uniteid_index    INDEX     V   CREATE INDEX geosystemes_uniteid_index ON public.geo_systemes USING btree (unite_id);
 -   DROP INDEX public.geosystemes_uniteid_index;
       public            postgres    false    230            �           1259    8992086    mois_frequenceid_index    INDEX     O   CREATE INDEX mois_frequenceid_index ON public.mois USING btree (frequence_id);
 *   DROP INDEX public.mois_frequenceid_index;
       public            postgres    false    236            �           1259    8992087    mois_trimestreid_index    INDEX     O   CREATE INDEX mois_trimestreid_index ON public.mois USING btree (trimestre_id);
 *   DROP INDEX public.mois_trimestreid_index;
       public            postgres    false    236                       1259    8992088    regions_paysid_index    INDEX     K   CREATE INDEX regions_paysid_index ON public.regions USING btree (pays_id);
 (   DROP INDEX public.regions_paysid_index;
       public            postgres    false    241                       1259    8992089 /   substances__substanceslegales_substanceid_index    INDEX     �   CREATE INDEX substances__substanceslegales_substanceid_index ON public.substances__substances_legales USING btree (substance_id);
 C   DROP INDEX public.substances__substanceslegales_substanceid_index;
       public            postgres    false    243            	           1259    8992090 5   substances__substanceslegales_substancelegaleid_index    INDEX     �   CREATE INDEX substances__substanceslegales_substancelegaleid_index ON public.substances__substances_legales USING btree (substance_legale_id);
 I   DROP INDEX public.substances__substanceslegales_substancelegaleid_index;
       public            postgres    false    243                       1259    8992091 )   substancesfiscales_redevanceuniteid_index    INDEX     w   CREATE INDEX substancesfiscales_redevanceuniteid_index ON public.substances_fiscales USING btree (redevance_unite_id);
 =   DROP INDEX public.substancesfiscales_redevanceuniteid_index;
       public            postgres    false    244                       1259    8992092 *   substancesfiscales_substancelegaleid_index    INDEX     y   CREATE INDEX substancesfiscales_substancelegaleid_index ON public.substances_fiscales USING btree (substance_legale_id);
 >   DROP INDEX public.substancesfiscales_substancelegaleid_index;
       public            postgres    false    244                       1259    8992093     substancesfiscales_uniteid_index    INDEX     d   CREATE INDEX substancesfiscales_uniteid_index ON public.substances_fiscales USING btree (unite_id);
 4   DROP INDEX public.substancesfiscales_uniteid_index;
       public            postgres    false    244                       1259    8992094 !   substanceslegales_domaineid_index    INDEX     f   CREATE INDEX substanceslegales_domaineid_index ON public.substances_legales USING btree (domaine_id);
 5   DROP INDEX public.substanceslegales_domaineid_index;
       public            postgres    false    245                       1259    8992095 -   substanceslegales_substancelegalecodeid_index    INDEX     �   CREATE INDEX substanceslegales_substancelegalecodeid_index ON public.substances_legales USING btree (substance_legale_code_id);
 A   DROP INDEX public.substanceslegales_substancelegalecodeid_index;
       public            postgres    false    245                       1259    8992096    titres_coordonnees_index    INDEX     Q   CREATE INDEX titres_coordonnees_index ON public.titres USING gist (coordonnees);
 ,   DROP INDEX public.titres_coordonnees_index;
       public            postgres    false    247                       1259    8992097    titres_domaineid_index    INDEX     O   CREATE INDEX titres_domaineid_index ON public.titres USING btree (domaine_id);
 *   DROP INDEX public.titres_domaineid_index;
       public            postgres    false    247                       1259    8992098    titres_statutid_index    INDEX     M   CREATE INDEX titres_statutid_index ON public.titres USING btree (statut_id);
 )   DROP INDEX public.titres_statutid_index;
       public            postgres    false    247                       1259    8992099    titres_typeid_index    INDEX     I   CREATE INDEX titres_typeid_index ON public.titres USING btree (type_id);
 '   DROP INDEX public.titres_typeid_index;
       public            postgres    false    247                       1259    8992100    titresactivites_statutid_index    INDEX     `   CREATE INDEX titresactivites_statutid_index ON public.titres_activites USING btree (statut_id);
 2   DROP INDEX public.titresactivites_statutid_index;
       public            postgres    false    248                       1259    8992101    titresactivites_titreid_index    INDEX     ^   CREATE INDEX titresactivites_titreid_index ON public.titres_activites USING btree (titre_id);
 1   DROP INDEX public.titresactivites_titreid_index;
       public            postgres    false    248                       1259    8992102    titresactivites_typeid_index    INDEX     \   CREATE INDEX titresactivites_typeid_index ON public.titres_activites USING btree (type_id);
 0   DROP INDEX public.titresactivites_typeid_index;
       public            postgres    false    248                        1259    8992103 #   titresactivites_utilisateurid_index    INDEX     j   CREATE INDEX titresactivites_utilisateurid_index ON public.titres_activites USING btree (utilisateur_id);
 7   DROP INDEX public.titresactivites_utilisateurid_index;
       public            postgres    false    248            #           1259    8992104 9   titresadministrationsgestionnaires_administrationid_index    INDEX     �   CREATE INDEX titresadministrationsgestionnaires_administrationid_index ON public.titres_administrations_gestionnaires USING btree (administration_id);
 M   DROP INDEX public.titresadministrationsgestionnaires_administrationid_index;
       public            postgres    false    249            $           1259    8992105 0   titresadministrationsgestionnaires_titreid_index    INDEX     �   CREATE INDEX titresadministrationsgestionnaires_titreid_index ON public.titres_administrations_gestionnaires USING btree (titre_id);
 D   DROP INDEX public.titresadministrationsgestionnaires_titreid_index;
       public            postgres    false    249            '           1259    8992106 3   titresadministrationslocales_administrationid_index    INDEX     �   CREATE INDEX titresadministrationslocales_administrationid_index ON public.titres_administrations_locales USING btree (administration_id);
 G   DROP INDEX public.titresadministrationslocales_administrationid_index;
       public            postgres    false    250            (           1259    8992107 /   titresadministrationslocales_titreetapeid_index    INDEX     �   CREATE INDEX titresadministrationslocales_titreetapeid_index ON public.titres_administrations_locales USING btree (titre_etape_id);
 C   DROP INDEX public.titresadministrationslocales_titreetapeid_index;
       public            postgres    false    250            +           1259    8992108 %   titresamodiataires_entrepriseid_index    INDEX     n   CREATE INDEX titresamodiataires_entrepriseid_index ON public.titres_amodiataires USING btree (entreprise_id);
 9   DROP INDEX public.titresamodiataires_entrepriseid_index;
       public            postgres    false    251            ,           1259    8992109 %   titresamodiataires_titreetapeid_index    INDEX     o   CREATE INDEX titresamodiataires_titreetapeid_index ON public.titres_amodiataires USING btree (titre_etape_id);
 9   DROP INDEX public.titresamodiataires_titreetapeid_index;
       public            postgres    false    251            /           1259    8992110    titrescommunes_communeid_index    INDEX     `   CREATE INDEX titrescommunes_communeid_index ON public.titres_communes USING btree (commune_id);
 2   DROP INDEX public.titrescommunes_communeid_index;
       public            postgres    false    252            0           1259    8992111 !   titrescommunes_titreetapeid_index    INDEX     g   CREATE INDEX titrescommunes_titreetapeid_index ON public.titres_communes USING btree (titre_etape_id);
 5   DROP INDEX public.titrescommunes_titreetapeid_index;
       public            postgres    false    252            3           1259    8992112    titresdemarches_statutid_index    INDEX     `   CREATE INDEX titresdemarches_statutid_index ON public.titres_demarches USING btree (statut_id);
 2   DROP INDEX public.titresdemarches_statutid_index;
       public            postgres    false    253            4           1259    8992113    titresdemarches_titreid_index    INDEX     ^   CREATE INDEX titresdemarches_titreid_index ON public.titres_demarches USING btree (titre_id);
 1   DROP INDEX public.titresdemarches_titreid_index;
       public            postgres    false    253            5           1259    8992114    titresdemarches_typeid_index    INDEX     \   CREATE INDEX titresdemarches_typeid_index ON public.titres_demarches USING btree (type_id);
 0   DROP INDEX public.titresdemarches_typeid_index;
       public            postgres    false    253            8           1259    8992115 0   titresdemarchesliens_enfanttitredemarcheid_index    INDEX     �   CREATE INDEX titresdemarchesliens_enfanttitredemarcheid_index ON public.titres_demarches_liens USING btree (enfant_titre_demarche_id);
 D   DROP INDEX public.titresdemarchesliens_enfanttitredemarcheid_index;
       public            postgres    false    254            9           1259    8992116 0   titresdemarchesliens_parenttitredemarcheid_index    INDEX     �   CREATE INDEX titresdemarchesliens_parenttitredemarcheid_index ON public.titres_demarches_liens USING btree (parent_titre_demarche_id);
 D   DROP INDEX public.titresdemarchesliens_parenttitredemarcheid_index;
       public            postgres    false    254            <           1259    8992117    titresetapes_statutid_index    INDEX     Z   CREATE INDEX titresetapes_statutid_index ON public.titres_etapes USING btree (statut_id);
 /   DROP INDEX public.titresetapes_statutid_index;
       public            postgres    false    255            =           1259    8992118 "   titresetapes_titredemarcheid_index    INDEX     i   CREATE INDEX titresetapes_titredemarcheid_index ON public.titres_etapes USING btree (titre_demarche_id);
 6   DROP INDEX public.titresetapes_titredemarcheid_index;
       public            postgres    false    255            >           1259    8992119    titresetapes_typeid_index    INDEX     V   CREATE INDEX titresetapes_typeid_index ON public.titres_etapes USING btree (type_id);
 -   DROP INDEX public.titresetapes_typeid_index;
       public            postgres    false    255            A           1259    8992120 *   titresetapesjustificatifs_documentid_index    INDEX     y   CREATE INDEX titresetapesjustificatifs_documentid_index ON public.titres_etapes_justificatifs USING btree (document_id);
 >   DROP INDEX public.titresetapesjustificatifs_documentid_index;
       public            postgres    false    256            B           1259    8992121 ,   titresetapesjustificatifs_titreetapeid_index    INDEX     ~   CREATE INDEX titresetapesjustificatifs_titreetapeid_index ON public.titres_etapes_justificatifs USING btree (titre_etape_id);
 @   DROP INDEX public.titresetapesjustificatifs_titreetapeid_index;
       public            postgres    false    256            E           1259    8992122    titresforets_foretid_index    INDEX     X   CREATE INDEX titresforets_foretid_index ON public.titres_forets USING btree (foret_id);
 .   DROP INDEX public.titresforets_foretid_index;
       public            postgres    false    257            F           1259    8992123    titresforets_titreetapeid_index    INDEX     c   CREATE INDEX titresforets_titreetapeid_index ON public.titres_forets USING btree (titre_etape_id);
 3   DROP INDEX public.titresforets_titreetapeid_index;
       public            postgres    false    257            K           1259    8992124    titrespoints_coordonnees_index    INDEX     ^   CREATE INDEX titrespoints_coordonnees_index ON public.titres_points USING gist (coordonnees);
 2   DROP INDEX public.titrespoints_coordonnees_index;
       public            postgres    false    259            L           1259    8992125    titrespoints_titreetapeid_index    INDEX     c   CREATE INDEX titrespoints_titreetapeid_index ON public.titres_points USING btree (titre_etape_id);
 3   DROP INDEX public.titrespoints_titreetapeid_index;
       public            postgres    false    259            O           1259    8992126 )   titrespointsreferences_titrepointid_index    INDEX     x   CREATE INDEX titrespointsreferences_titrepointid_index ON public.titres_points_references USING btree (titre_point_id);
 =   DROP INDEX public.titrespointsreferences_titrepointid_index;
       public            postgres    false    260            R           1259    8992127    titresreferences_titreid_index    INDEX     `   CREATE INDEX titresreferences_titreid_index ON public.titres_references USING btree (titre_id);
 2   DROP INDEX public.titresreferences_titreid_index;
       public            postgres    false    261            S           1259    8992128    titresreferences_typeid_index    INDEX     ^   CREATE INDEX titresreferences_typeid_index ON public.titres_references USING btree (type_id);
 1   DROP INDEX public.titresreferences_typeid_index;
       public            postgres    false    261            X           1259    8992129 "   titressubstances_substanceid_index    INDEX     h   CREATE INDEX titressubstances_substanceid_index ON public.titres_substances USING btree (substance_id);
 6   DROP INDEX public.titressubstances_substanceid_index;
       public            postgres    false    263            Y           1259    8992130 #   titressubstances_titreetapeid_index    INDEX     k   CREATE INDEX titressubstances_titreetapeid_index ON public.titres_substances USING btree (titre_etape_id);
 7   DROP INDEX public.titressubstances_titreetapeid_index;
       public            postgres    false    263            \           1259    8992131 #   titrestitulaires_entrepriseid_index    INDEX     j   CREATE INDEX titrestitulaires_entrepriseid_index ON public.titres_titulaires USING btree (entreprise_id);
 7   DROP INDEX public.titrestitulaires_entrepriseid_index;
       public            postgres    false    264            ]           1259    8992132 #   titrestitulaires_titreetapeid_index    INDEX     k   CREATE INDEX titrestitulaires_titreetapeid_index ON public.titres_titulaires USING btree (titre_etape_id);
 7   DROP INDEX public.titrestitulaires_titreetapeid_index;
       public            postgres    false    264            `           1259    8992133    titrestravaux_statutid_index    INDEX     \   CREATE INDEX titrestravaux_statutid_index ON public.titres_travaux USING btree (statut_id);
 0   DROP INDEX public.titrestravaux_statutid_index;
       public            postgres    false    265            a           1259    8992134    titrestravaux_titreid_index    INDEX     Z   CREATE INDEX titrestravaux_titreid_index ON public.titres_travaux USING btree (titre_id);
 /   DROP INDEX public.titrestravaux_titreid_index;
       public            postgres    false    265            b           1259    8992135    titrestravaux_typeid_index    INDEX     X   CREATE INDEX titrestravaux_typeid_index ON public.titres_travaux USING btree (type_id);
 .   DROP INDEX public.titrestravaux_typeid_index;
       public            postgres    false    265            e           1259    8992136 "   titrestravauxetapes_statutid_index    INDEX     i   CREATE INDEX titrestravauxetapes_statutid_index ON public.titres_travaux_etapes USING btree (statut_id);
 6   DROP INDEX public.titrestravauxetapes_statutid_index;
       public            postgres    false    266            f           1259    8992137 (   titrestravauxetapes_titretravauxid_index    INDEX     v   CREATE INDEX titrestravauxetapes_titretravauxid_index ON public.titres_travaux_etapes USING btree (titre_travaux_id);
 <   DROP INDEX public.titrestravauxetapes_titretravauxid_index;
       public            postgres    false    266            g           1259    8992138     titrestravauxetapes_typeid_index    INDEX     e   CREATE INDEX titrestravauxetapes_typeid_index ON public.titres_travaux_etapes USING btree (type_id);
 4   DROP INDEX public.titrestravauxetapes_typeid_index;
       public            postgres    false    266            �           1259    8992139 0   titrestypes__activitestypes_activitetypeid_index    INDEX     �   CREATE INDEX titrestypes__activitestypes_activitetypeid_index ON public.activites_types__titres_types USING btree (activite_type_id);
 D   DROP INDEX public.titrestypes__activitestypes_activitetypeid_index;
       public            postgres    false    204            �           1259    8992140 -   titrestypes__activitestypes_titretypeid_index    INDEX     �   CREATE INDEX titrestypes__activitestypes_titretypeid_index ON public.activites_types__titres_types USING btree (titre_type_id);
 A   DROP INDEX public.titrestypes__activitestypes_titretypeid_index;
       public            postgres    false    204            t           1259    8992141 =   titrestypes__demarchestypes__etapestypes_demarchetypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes__etapestypes_demarchetypeid_index ON public.titres_types__demarches_types__etapes_types USING btree (demarche_type_id);
 Q   DROP INDEX public.titrestypes__demarchestypes__etapestypes_demarchetypeid_index;
       public            postgres    false    269            u           1259    8992142 :   titrestypes__demarchestypes__etapestypes_etapetypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes__etapestypes_etapetypeid_index ON public.titres_types__demarches_types__etapes_types USING btree (etape_type_id);
 N   DROP INDEX public.titrestypes__demarchestypes__etapestypes_etapetypeid_index;
       public            postgres    false    269            v           1259    8992143 :   titrestypes__demarchestypes__etapestypes_titretypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes__etapestypes_titretypeid_index ON public.titres_types__demarches_types__etapes_types USING btree (titre_type_id);
 N   DROP INDEX public.titrestypes__demarchestypes__etapestypes_titretypeid_index;
       public            postgres    false    269            p           1259    8992144 0   titrestypes__demarchestypes_demarchetypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes_demarchetypeid_index ON public.titres_types__demarches_types USING btree (demarche_type_id);
 D   DROP INDEX public.titrestypes__demarchestypes_demarchetypeid_index;
       public            postgres    false    268            q           1259    8992145 -   titrestypes__demarchestypes_titretypeid_index    INDEX     �   CREATE INDEX titrestypes__demarchestypes_titretypeid_index ON public.titres_types__demarches_types USING btree (titre_type_id);
 A   DROP INDEX public.titrestypes__demarchestypes_titretypeid_index;
       public            postgres    false    268            y           1259    8992146 .   titrestypes__titresstatuts_titrestatutid_index    INDEX     �   CREATE INDEX titrestypes__titresstatuts_titrestatutid_index ON public.titres_types__titres_statuts USING btree (titre_statut_id);
 B   DROP INDEX public.titrestypes__titresstatuts_titrestatutid_index;
       public            postgres    false    270            z           1259    8992147 ,   titrestypes__titresstatuts_titretypeid_index    INDEX     ~   CREATE INDEX titrestypes__titresstatuts_titretypeid_index ON public.titres_types__titres_statuts USING btree (titre_type_id);
 @   DROP INDEX public.titrestypes__titresstatuts_titretypeid_index;
       public            postgres    false    270            j           1259    8992148    titrestypes_domaineid_index    INDEX     Z   CREATE INDEX titrestypes_domaineid_index ON public.titres_types USING btree (domaine_id);
 /   DROP INDEX public.titrestypes_domaineid_index;
       public            postgres    false    267            m           1259    8992149    titrestypes_typeid_index    INDEX     T   CREATE INDEX titrestypes_typeid_index ON public.titres_types USING btree (type_id);
 ,   DROP INDEX public.titrestypes_typeid_index;
       public            postgres    false    267            �           1259    8992150 +   travauxtypes__etapestypes_etapetypeid_index    INDEX     |   CREATE INDEX travauxtypes__etapestypes_etapetypeid_index ON public.travaux_types__etapes_types USING btree (etape_type_id);
 ?   DROP INDEX public.travauxtypes__etapestypes_etapetypeid_index;
       public            postgres    false    273            �           1259    8992151 -   travauxtypes__etapestypes_travauxtypeid_index    INDEX     �   CREATE INDEX travauxtypes__etapestypes_travauxtypeid_index ON public.travaux_types__etapes_types USING btree (travaux_type_id);
 A   DROP INDEX public.travauxtypes__etapestypes_travauxtypeid_index;
       public            postgres    false    273            �           1259    8992152    trimestres_frequenceid_index    INDEX     [   CREATE INDEX trimestres_frequenceid_index ON public.trimestres USING btree (frequence_id);
 0   DROP INDEX public.trimestres_frequenceid_index;
       public            postgres    false    274            �           1259    8992153 4   utilisateurs__administrations_administrationid_index    INDEX     �   CREATE INDEX utilisateurs__administrations_administrationid_index ON public.utilisateurs__administrations USING btree (administration_id);
 H   DROP INDEX public.utilisateurs__administrations_administrationid_index;
       public            postgres    false    277            �           1259    8992154 1   utilisateurs__administrations_utilisateurid_index    INDEX     �   CREATE INDEX utilisateurs__administrations_utilisateurid_index ON public.utilisateurs__administrations USING btree (utilisateur_id);
 E   DROP INDEX public.utilisateurs__administrations_utilisateurid_index;
       public            postgres    false    277            �           1259    8992155 ,   utilisateurs__entreprises_entrepriseid_index    INDEX     {   CREATE INDEX utilisateurs__entreprises_entrepriseid_index ON public.utilisateurs__entreprises USING btree (entreprise_id);
 @   DROP INDEX public.utilisateurs__entreprises_entrepriseid_index;
       public            postgres    false    278            �           1259    8992156 -   utilisateurs__entreprises_utilisateurid_index    INDEX     }   CREATE INDEX utilisateurs__entreprises_utilisateurid_index ON public.utilisateurs__entreprises USING btree (utilisateur_id);
 A   DROP INDEX public.utilisateurs__entreprises_utilisateurid_index;
       public            postgres    false    278            �           1259    8992157    utilisateurs_permissionid_index    INDEX     a   CREATE INDEX utilisateurs_permissionid_index ON public.utilisateurs USING btree (permission_id);
 3   DROP INDEX public.utilisateurs_permissionid_index;
       public            postgres    false    276            �           2606    8992158 V   activites_types__documents_types activitestypes__documentstypes_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__documents_types
    ADD CONSTRAINT activitestypes__documentstypes_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id);
 �   ALTER TABLE ONLY public.activites_types__documents_types DROP CONSTRAINT activitestypes__documentstypes_activitetypeid_foreign;
       public          postgres    false    201    202    3476            �           2606    8992163 V   activites_types__documents_types activitestypes__documentstypes_documenttypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__documents_types
    ADD CONSTRAINT activitestypes__documentstypes_documenttypeid_foreign FOREIGN KEY (document_type_id) REFERENCES public.documents_types(id);
 �   ALTER TABLE ONLY public.activites_types__documents_types DROP CONSTRAINT activitestypes__documentstypes_documenttypeid_foreign;
       public          postgres    false    220    3540    202            �           2606    8992168 A   activites_types__pays activitestypes__pays_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__pays
    ADD CONSTRAINT activitestypes__pays_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.activites_types__pays DROP CONSTRAINT activitestypes__pays_activitetypeid_foreign;
       public          postgres    false    203    3476    201            �           2606    8992173 9   activites_types__pays activitestypes__pays_paysid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__pays
    ADD CONSTRAINT activitestypes__pays_paysid_foreign FOREIGN KEY (pays_id) REFERENCES public.pays(id);
 c   ALTER TABLE ONLY public.activites_types__pays DROP CONSTRAINT activitestypes__pays_paysid_foreign;
       public          postgres    false    203    237    3578            �           2606    8992178 2   activites_types activitestypes_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types
    ADD CONSTRAINT activitestypes_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 \   ALTER TABLE ONLY public.activites_types DROP CONSTRAINT activitestypes_frequenceid_foreign;
       public          postgres    false    229    3563    201            �           2606    8992183 W   administrations__activites_types administrations__activitestypes_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__activites_types
    ADD CONSTRAINT administrations__activitestypes_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.administrations__activites_types DROP CONSTRAINT administrations__activitestypes_activitetypeid_foreign;
       public          postgres    false    206    201    3476            �           2606    8992188 Y   administrations__activites_types administrations__activitestypes_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__activites_types
    ADD CONSTRAINT administrations__activitestypes_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.administrations__activites_types DROP CONSTRAINT administrations__activitestypes_administrationid_foreign;
       public          postgres    false    205    206    3492            �           2606    8992193 k   administrations__titres_types__etapes_types administrations__titrestypes__etapestypes_administrationid_fore    FK CONSTRAINT       ALTER TABLE ONLY public.administrations__titres_types__etapes_types
    ADD CONSTRAINT administrations__titrestypes__etapestypes_administrationid_fore FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.administrations__titres_types__etapes_types DROP CONSTRAINT administrations__titrestypes__etapestypes_administrationid_fore;
       public          postgres    false    208    205    3492            �           2606    8992198 i   administrations__titres_types__etapes_types administrations__titrestypes__etapestypes_etapetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types__etapes_types
    ADD CONSTRAINT administrations__titrestypes__etapestypes_etapetypeid_foreign FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id);
 �   ALTER TABLE ONLY public.administrations__titres_types__etapes_types DROP CONSTRAINT administrations__titrestypes__etapestypes_etapetypeid_foreign;
       public          postgres    false    3551    208    225            �           2606    8992203 i   administrations__titres_types__etapes_types administrations__titrestypes__etapestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types__etapes_types
    ADD CONSTRAINT administrations__titrestypes__etapestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 �   ALTER TABLE ONLY public.administrations__titres_types__etapes_types DROP CONSTRAINT administrations__titrestypes__etapestypes_titretypeid_foreign;
       public          postgres    false    3689    267    208            �           2606    8992208 m   administrations__titres_types__titres_statuts administrations__titrestypes__titresstatuts_administrationid_fo    FK CONSTRAINT       ALTER TABLE ONLY public.administrations__titres_types__titres_statuts
    ADD CONSTRAINT administrations__titrestypes__titresstatuts_administrationid_fo FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.administrations__titres_types__titres_statuts DROP CONSTRAINT administrations__titrestypes__titresstatuts_administrationid_fo;
       public          postgres    false    205    209    3492            �           2606    8992213 m   administrations__titres_types__titres_statuts administrations__titrestypes__titresstatuts_titrestatutid_forei    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types__titres_statuts
    ADD CONSTRAINT administrations__titrestypes__titresstatuts_titrestatutid_forei FOREIGN KEY (titre_statut_id) REFERENCES public.titres_statuts(id);
 �   ALTER TABLE ONLY public.administrations__titres_types__titres_statuts DROP CONSTRAINT administrations__titrestypes__titresstatuts_titrestatutid_forei;
       public          postgres    false    209    3669    262            �           2606    8992218 m   administrations__titres_types__titres_statuts administrations__titrestypes__titresstatuts_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types__titres_statuts
    ADD CONSTRAINT administrations__titrestypes__titresstatuts_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 �   ALTER TABLE ONLY public.administrations__titres_types__titres_statuts DROP CONSTRAINT administrations__titrestypes__titresstatuts_titretypeid_foreign;
       public          postgres    false    3689    209    267            �           2606    8992223 S   administrations__titres_types administrations__titrestypes_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types
    ADD CONSTRAINT administrations__titrestypes_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 }   ALTER TABLE ONLY public.administrations__titres_types DROP CONSTRAINT administrations__titrestypes_administrationid_foreign;
       public          postgres    false    207    205    3492            �           2606    8992228 N   administrations__titres_types administrations__titrestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations__titres_types
    ADD CONSTRAINT administrations__titrestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 x   ALTER TABLE ONLY public.administrations__titres_types DROP CONSTRAINT administrations__titrestypes_titretypeid_foreign;
       public          postgres    false    3689    207    267            �           2606    8992233 5   administrations administrations_departementid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_departementid_foreign FOREIGN KEY (departement_id) REFERENCES public.departements(id);
 _   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_departementid_foreign;
       public          postgres    false    217    3528    205            �           2606    8992238 0   administrations administrations_regionid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_regionid_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id);
 Z   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_regionid_foreign;
       public          postgres    false    3587    241    205            �           2606    8992243 .   administrations administrations_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrations
    ADD CONSTRAINT administrations_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.administrations_types(id);
 X   ALTER TABLE ONLY public.administrations DROP CONSTRAINT administrations_typeid_foreign;
       public          postgres    false    3512    210    205            �           2606    8992248 !   annees annees_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.annees
    ADD CONSTRAINT annees_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 K   ALTER TABLE ONLY public.annees DROP CONSTRAINT annees_frequenceid_foreign;
       public          postgres    false    229    3563    211            �           2606    8992253 '   communes communes_departementid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.communes
    ADD CONSTRAINT communes_departementid_foreign FOREIGN KEY (departement_id) REFERENCES public.departements(id);
 Q   ALTER TABLE ONLY public.communes DROP CONSTRAINT communes_departementid_foreign;
       public          postgres    false    217    213    3528            �           2606    8992258 *   departements departements_regionid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.departements
    ADD CONSTRAINT departements_regionid_foreign FOREIGN KEY (region_id) REFERENCES public.regions(id);
 T   ALTER TABLE ONLY public.departements DROP CONSTRAINT departements_regionid_foreign;
       public          postgres    false    217    3587    241            �           2606    8992263 (   documents documents_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_entrepriseid_foreign;
       public          postgres    false    3544    222    219            �           2606    8992268 +   documents documents_titreactiviteid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_titreactiviteid_foreign FOREIGN KEY (titre_activite_id) REFERENCES public.titres_activites(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_titreactiviteid_foreign;
       public          postgres    false    219    248    3612            �           2606    8992273 (   documents documents_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_titreetapeid_foreign;
       public          postgres    false    3643    219    255            �           2606    8992278 /   documents documents_titretravauxetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_titretravauxetapeid_foreign FOREIGN KEY (titre_travaux_etape_id) REFERENCES public.titres_travaux_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_titretravauxetapeid_foreign;
       public          postgres    false    3684    266    219            �           2606    8992283 "   documents documents_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.documents_types(id);
 L   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_typeid_foreign;
       public          postgres    false    220    219    3540            �           2606    8992288 I   entreprises_etablissements entreprisesetablissements_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.entreprises_etablissements
    ADD CONSTRAINT entreprisesetablissements_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.entreprises_etablissements DROP CONSTRAINT entreprisesetablissements_entrepriseid_foreign;
       public          postgres    false    222    223    3544            �           2606    8992293 P   etapes_types__documents_types etapestypes__documentstypes_documenttypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types__documents_types
    ADD CONSTRAINT etapestypes__documentstypes_documenttypeid_foreign FOREIGN KEY (document_type_id) REFERENCES public.documents_types(id);
 z   ALTER TABLE ONLY public.etapes_types__documents_types DROP CONSTRAINT etapestypes__documentstypes_documenttypeid_foreign;
       public          postgres    false    220    226    3540            �           2606    8992298 M   etapes_types__documents_types etapestypes__documentstypes_etapetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types__documents_types
    ADD CONSTRAINT etapestypes__documentstypes_etapetypeid_foreign FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id) ON DELETE CASCADE;
 w   ALTER TABLE ONLY public.etapes_types__documents_types DROP CONSTRAINT etapestypes__documentstypes_etapetypeid_foreign;
       public          postgres    false    226    225    3551            �           2606    8992303 M   etapes_types__etapes_statuts etapestypes__etapesstatuts_etapestatutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types__etapes_statuts
    ADD CONSTRAINT etapestypes__etapesstatuts_etapestatutid_foreign FOREIGN KEY (etape_statut_id) REFERENCES public.etapes_statuts(id);
 w   ALTER TABLE ONLY public.etapes_types__etapes_statuts DROP CONSTRAINT etapestypes__etapesstatuts_etapestatutid_foreign;
       public          postgres    false    3549    224    227            �           2606    8992308 K   etapes_types__etapes_statuts etapestypes__etapesstatuts_etapetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types__etapes_statuts
    ADD CONSTRAINT etapestypes__etapesstatuts_etapetypeid_foreign FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id);
 u   ALTER TABLE ONLY public.etapes_types__etapes_statuts DROP CONSTRAINT etapestypes__etapesstatuts_etapetypeid_foreign;
       public          postgres    false    3551    227    225            �           2606    8992313 )   etapes_types etapestypes_parentid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.etapes_types
    ADD CONSTRAINT etapestypes_parentid_foreign FOREIGN KEY (parent_id) REFERENCES public.etapes_types(id);
 S   ALTER TABLE ONLY public.etapes_types DROP CONSTRAINT etapestypes_parentid_foreign;
       public          postgres    false    3551    225    225            �           2606    8992318 (   geo_systemes geosystemes_uniteid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.geo_systemes
    ADD CONSTRAINT geosystemes_uniteid_foreign FOREIGN KEY (unite_id) REFERENCES public.unites(id);
 R   ALTER TABLE ONLY public.geo_systemes DROP CONSTRAINT geosystemes_uniteid_foreign;
       public          postgres    false    230    275    3719            �           2606    8992323    mois mois_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.mois
    ADD CONSTRAINT mois_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 G   ALTER TABLE ONLY public.mois DROP CONSTRAINT mois_frequenceid_foreign;
       public          postgres    false    236    229    3563            �           2606    8992328    mois mois_trimestreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.mois
    ADD CONSTRAINT mois_trimestreid_foreign FOREIGN KEY (trimestre_id) REFERENCES public.trimestres(id);
 G   ALTER TABLE ONLY public.mois DROP CONSTRAINT mois_trimestreid_foreign;
       public          postgres    false    3717    274    236            �           2606    8992333    regions regions_paysid_foreign    FK CONSTRAINT     |   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_paysid_foreign FOREIGN KEY (pays_id) REFERENCES public.pays(id);
 H   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_paysid_foreign;
       public          postgres    false    237    3578    241            �           2606    8992338 P   substances__substances_legales substances__substanceslegales_substanceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances__substances_legales
    ADD CONSTRAINT substances__substanceslegales_substanceid_foreign FOREIGN KEY (substance_id) REFERENCES public.substances(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.substances__substances_legales DROP CONSTRAINT substances__substanceslegales_substanceid_foreign;
       public          postgres    false    242    3589    243            �           2606    8992343 V   substances__substances_legales substances__substanceslegales_substancelegaleid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances__substances_legales
    ADD CONSTRAINT substances__substanceslegales_substancelegaleid_foreign FOREIGN KEY (substance_legale_id) REFERENCES public.substances_legales(id);
 �   ALTER TABLE ONLY public.substances__substances_legales DROP CONSTRAINT substances__substanceslegales_substancelegaleid_foreign;
       public          postgres    false    243    245    3600            �           2606    8992348 ?   substances_fiscales substancesfiscales_redevanceuniteid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances_fiscales
    ADD CONSTRAINT substancesfiscales_redevanceuniteid_foreign FOREIGN KEY (redevance_unite_id) REFERENCES public.unites(id);
 i   ALTER TABLE ONLY public.substances_fiscales DROP CONSTRAINT substancesfiscales_redevanceuniteid_foreign;
       public          postgres    false    3719    275    244            �           2606    8992353 @   substances_fiscales substancesfiscales_substancelegaleid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances_fiscales
    ADD CONSTRAINT substancesfiscales_substancelegaleid_foreign FOREIGN KEY (substance_legale_id) REFERENCES public.substances_legales(id);
 j   ALTER TABLE ONLY public.substances_fiscales DROP CONSTRAINT substancesfiscales_substancelegaleid_foreign;
       public          postgres    false    244    245    3600            �           2606    8992358 6   substances_fiscales substancesfiscales_uniteid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances_fiscales
    ADD CONSTRAINT substancesfiscales_uniteid_foreign FOREIGN KEY (unite_id) REFERENCES public.unites(id);
 `   ALTER TABLE ONLY public.substances_fiscales DROP CONSTRAINT substancesfiscales_uniteid_foreign;
       public          postgres    false    275    3719    244            �           2606    8992363 6   substances_legales substanceslegales_domaineid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances_legales
    ADD CONSTRAINT substanceslegales_domaineid_foreign FOREIGN KEY (domaine_id) REFERENCES public.domaines(id);
 `   ALTER TABLE ONLY public.substances_legales DROP CONSTRAINT substanceslegales_domaineid_foreign;
       public          postgres    false    221    245    3542            �           2606    8992368 B   substances_legales substanceslegales_substancelegalecodeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.substances_legales
    ADD CONSTRAINT substanceslegales_substancelegalecodeid_foreign FOREIGN KEY (substance_legale_code_id) REFERENCES public.substances_legales_codes(id);
 l   ALTER TABLE ONLY public.substances_legales DROP CONSTRAINT substanceslegales_substancelegalecodeid_foreign;
       public          postgres    false    246    3604    245            �           2606    8992373    titres titres_domaineid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_domaineid_foreign FOREIGN KEY (domaine_id) REFERENCES public.domaines(id);
 I   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_domaineid_foreign;
       public          postgres    false    247    3542    221            �           2606    8992378    titres titres_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.titres_statuts(id);
 H   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_statutid_foreign;
       public          postgres    false    262    247    3669            �           2606    8992383    titres titres_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres
    ADD CONSTRAINT titres_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.titres_types(id);
 F   ALTER TABLE ONLY public.titres DROP CONSTRAINT titres_typeid_foreign;
       public          postgres    false    247    3689    267            �           2606    8992388 1   titres_activites titresactivites_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.activites_statuts(id);
 [   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_statutid_foreign;
       public          postgres    false    248    3474    200            �           2606    8992393 0   titres_activites titresactivites_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_titreid_foreign;
       public          postgres    false    247    248    3608            �           2606    8992398 /   titres_activites titresactivites_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.activites_types(id);
 Y   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_typeid_foreign;
       public          postgres    false    3476    201    248            �           2606    8992403 6   titres_activites titresactivites_utilisateurid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_activites
    ADD CONSTRAINT titresactivites_utilisateurid_foreign FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateurs(id);
 `   ALTER TABLE ONLY public.titres_activites DROP CONSTRAINT titresactivites_utilisateurid_foreign;
       public          postgres    false    248    276    3724            �           2606    8992408 `   titres_administrations_gestionnaires titresadministrationsgestionnaires_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_gestionnaires
    ADD CONSTRAINT titresadministrationsgestionnaires_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.titres_administrations_gestionnaires DROP CONSTRAINT titresadministrationsgestionnaires_administrationid_foreign;
       public          postgres    false    205    3492    249            �           2606    8992413 W   titres_administrations_gestionnaires titresadministrationsgestionnaires_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_gestionnaires
    ADD CONSTRAINT titresadministrationsgestionnaires_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.titres_administrations_gestionnaires DROP CONSTRAINT titresadministrationsgestionnaires_titreid_foreign;
       public          postgres    false    3608    249    247            �           2606    8992418 T   titres_administrations_locales titresadministrationslocales_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_locales
    ADD CONSTRAINT titresadministrationslocales_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.titres_administrations_locales DROP CONSTRAINT titresadministrationslocales_administrationid_foreign;
       public          postgres    false    250    3492    205            �           2606    8992423 P   titres_administrations_locales titresadministrationslocales_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_administrations_locales
    ADD CONSTRAINT titresadministrationslocales_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.titres_administrations_locales DROP CONSTRAINT titresadministrationslocales_titreetapeid_foreign;
       public          postgres    false    250    255    3643            �           2606    8992428 ;   titres_amodiataires titresamodiataires_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_amodiataires
    ADD CONSTRAINT titresamodiataires_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.titres_amodiataires DROP CONSTRAINT titresamodiataires_entrepriseid_foreign;
       public          postgres    false    3544    251    222            �           2606    8992433 ;   titres_amodiataires titresamodiataires_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_amodiataires
    ADD CONSTRAINT titresamodiataires_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.titres_amodiataires DROP CONSTRAINT titresamodiataires_titreetapeid_foreign;
       public          postgres    false    251    3643    255            �           2606    8992438 0   titres_communes titrescommunes_communeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_communes
    ADD CONSTRAINT titrescommunes_communeid_foreign FOREIGN KEY (commune_id) REFERENCES public.communes(id);
 Z   ALTER TABLE ONLY public.titres_communes DROP CONSTRAINT titrescommunes_communeid_foreign;
       public          postgres    false    252    213    3520            �           2606    8992443 3   titres_communes titrescommunes_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_communes
    ADD CONSTRAINT titrescommunes_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.titres_communes DROP CONSTRAINT titrescommunes_titreetapeid_foreign;
       public          postgres    false    3643    252    255            �           2606    8992448 1   titres_demarches titresdemarches_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titresdemarches_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.demarches_statuts(id);
 [   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titresdemarches_statutid_foreign;
       public          postgres    false    215    253    3524            �           2606    8992453 0   titres_demarches titresdemarches_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titresdemarches_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titresdemarches_titreid_foreign;
       public          postgres    false    247    253    3608            �           2606    8992458 /   titres_demarches titresdemarches_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches
    ADD CONSTRAINT titresdemarches_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.demarches_types(id);
 Y   ALTER TABLE ONLY public.titres_demarches DROP CONSTRAINT titresdemarches_typeid_foreign;
       public          postgres    false    216    253    3526            �           2606    8992463 I   titres_demarches_liens titresdemarchesliens_enfanttitredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches_liens
    ADD CONSTRAINT titresdemarchesliens_enfanttitredemarcheid_foreign FOREIGN KEY (enfant_titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.titres_demarches_liens DROP CONSTRAINT titresdemarchesliens_enfanttitredemarcheid_foreign;
       public          postgres    false    253    254    3634            �           2606    8992468 I   titres_demarches_liens titresdemarchesliens_parenttitredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_demarches_liens
    ADD CONSTRAINT titresdemarchesliens_parenttitredemarcheid_foreign FOREIGN KEY (parent_titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.titres_demarches_liens DROP CONSTRAINT titresdemarchesliens_parenttitredemarcheid_foreign;
       public          postgres    false    253    254    3634            �           2606    8992473 +   titres_etapes titresetapes_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titresetapes_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.etapes_statuts(id);
 U   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titresetapes_statutid_foreign;
       public          postgres    false    3549    224    255            �           2606    8992478 2   titres_etapes titresetapes_titredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titresetapes_titredemarcheid_foreign FOREIGN KEY (titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titresetapes_titredemarcheid_foreign;
       public          postgres    false    3634    253    255            �           2606    8992483 )   titres_etapes titresetapes_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes
    ADD CONSTRAINT titresetapes_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.etapes_types(id);
 S   ALTER TABLE ONLY public.titres_etapes DROP CONSTRAINT titresetapes_typeid_foreign;
       public          postgres    false    255    3551    225            �           2606    8992488 H   titres_etapes_justificatifs titresetapesjustificatifs_documentid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes_justificatifs
    ADD CONSTRAINT titresetapesjustificatifs_documentid_foreign FOREIGN KEY (document_id) REFERENCES public.documents(id) ON UPDATE CASCADE ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.titres_etapes_justificatifs DROP CONSTRAINT titresetapesjustificatifs_documentid_foreign;
       public          postgres    false    256    219    3534            �           2606    8992493 J   titres_etapes_justificatifs titresetapesjustificatifs_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_etapes_justificatifs
    ADD CONSTRAINT titresetapesjustificatifs_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 t   ALTER TABLE ONLY public.titres_etapes_justificatifs DROP CONSTRAINT titresetapesjustificatifs_titreetapeid_foreign;
       public          postgres    false    3643    256    255            �           2606    8992498 *   titres_forets titresforets_foretid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_forets
    ADD CONSTRAINT titresforets_foretid_foreign FOREIGN KEY (foret_id) REFERENCES public.forets(id);
 T   ALTER TABLE ONLY public.titres_forets DROP CONSTRAINT titresforets_foretid_foreign;
       public          postgres    false    228    257    3561            �           2606    8992503 /   titres_forets titresforets_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_forets
    ADD CONSTRAINT titresforets_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.titres_forets DROP CONSTRAINT titresforets_titreetapeid_foreign;
       public          postgres    false    255    257    3643            �           2606    8992508 +   titres_phases titresphases_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_phases
    ADD CONSTRAINT titresphases_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.phases_statuts(id);
 U   ALTER TABLE ONLY public.titres_phases DROP CONSTRAINT titresphases_statutid_foreign;
       public          postgres    false    239    258    3582            �           2606    8992513 2   titres_phases titresphases_titredemarcheid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_phases
    ADD CONSTRAINT titresphases_titredemarcheid_foreign FOREIGN KEY (titre_demarche_id) REFERENCES public.titres_demarches(id) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.titres_phases DROP CONSTRAINT titresphases_titredemarcheid_foreign;
       public          postgres    false    253    258    3634            �           2606    8992518 /   titres_points titrespoints_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_points
    ADD CONSTRAINT titrespoints_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.titres_points DROP CONSTRAINT titrespoints_titreetapeid_foreign;
       public          postgres    false    3643    259    255            �           2606    8992523 D   titres_points_references titrespointsreferences_titrepointid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_points_references
    ADD CONSTRAINT titrespointsreferences_titrepointid_foreign FOREIGN KEY (titre_point_id) REFERENCES public.titres_points(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.titres_points_references DROP CONSTRAINT titrespointsreferences_titrepointid_foreign;
       public          postgres    false    3658    259    260            �           2606    8992528 2   titres_references titresreferences_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_references
    ADD CONSTRAINT titresreferences_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.titres_references DROP CONSTRAINT titresreferences_titreid_foreign;
       public          postgres    false    261    3608    247            �           2606    8992533 1   titres_references titresreferences_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_references
    ADD CONSTRAINT titresreferences_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.references_types(id);
 [   ALTER TABLE ONLY public.titres_references DROP CONSTRAINT titresreferences_typeid_foreign;
       public          postgres    false    240    261    3584            �           2606    8992538 6   titres_substances titressubstances_substanceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_substances
    ADD CONSTRAINT titressubstances_substanceid_foreign FOREIGN KEY (substance_id) REFERENCES public.substances(id);
 `   ALTER TABLE ONLY public.titres_substances DROP CONSTRAINT titressubstances_substanceid_foreign;
       public          postgres    false    263    3589    242            �           2606    8992543 7   titres_substances titressubstances_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_substances
    ADD CONSTRAINT titressubstances_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.titres_substances DROP CONSTRAINT titressubstances_titreetapeid_foreign;
       public          postgres    false    263    255    3643            �           2606    8992548 7   titres_titulaires titrestitulaires_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_titulaires
    ADD CONSTRAINT titrestitulaires_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.titres_titulaires DROP CONSTRAINT titrestitulaires_entrepriseid_foreign;
       public          postgres    false    3544    222    264            �           2606    8992553 7   titres_titulaires titrestitulaires_titreetapeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_titulaires
    ADD CONSTRAINT titrestitulaires_titreetapeid_foreign FOREIGN KEY (titre_etape_id) REFERENCES public.titres_etapes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.titres_titulaires DROP CONSTRAINT titrestitulaires_titreetapeid_foreign;
       public          postgres    false    264    255    3643            �           2606    8992558 -   titres_travaux titrestravaux_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux
    ADD CONSTRAINT titrestravaux_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.demarches_statuts(id);
 W   ALTER TABLE ONLY public.titres_travaux DROP CONSTRAINT titrestravaux_statutid_foreign;
       public          postgres    false    215    265    3524            �           2606    8992563 ,   titres_travaux titrestravaux_titreid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux
    ADD CONSTRAINT titrestravaux_titreid_foreign FOREIGN KEY (titre_id) REFERENCES public.titres(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.titres_travaux DROP CONSTRAINT titrestravaux_titreid_foreign;
       public          postgres    false    247    3608    265            �           2606    8992568 +   titres_travaux titrestravaux_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux
    ADD CONSTRAINT titrestravaux_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.travaux_types(id);
 U   ALTER TABLE ONLY public.titres_travaux DROP CONSTRAINT titrestravaux_typeid_foreign;
       public          postgres    false    3710    272    265            �           2606    8992573 :   titres_travaux_etapes titrestravauxetapes_statutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux_etapes
    ADD CONSTRAINT titrestravauxetapes_statutid_foreign FOREIGN KEY (statut_id) REFERENCES public.etapes_statuts(id);
 d   ALTER TABLE ONLY public.titres_travaux_etapes DROP CONSTRAINT titrestravauxetapes_statutid_foreign;
       public          postgres    false    266    224    3549            �           2606    8992578 @   titres_travaux_etapes titrestravauxetapes_titretravauxid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux_etapes
    ADD CONSTRAINT titrestravauxetapes_titretravauxid_foreign FOREIGN KEY (titre_travaux_id) REFERENCES public.titres_travaux(id) ON UPDATE CASCADE ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.titres_travaux_etapes DROP CONSTRAINT titrestravauxetapes_titretravauxid_foreign;
       public          postgres    false    265    3679    266            �           2606    8992583 8   titres_travaux_etapes titrestravauxetapes_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_travaux_etapes
    ADD CONSTRAINT titrestravauxetapes_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.etapes_types(id);
 b   ALTER TABLE ONLY public.titres_travaux_etapes DROP CONSTRAINT titrestravauxetapes_typeid_foreign;
       public          postgres    false    225    266    3551            �           2606    8992588 P   activites_types__titres_types titrestypes__activitestypes_activitetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__titres_types
    ADD CONSTRAINT titrestypes__activitestypes_activitetypeid_foreign FOREIGN KEY (activite_type_id) REFERENCES public.activites_types(id);
 z   ALTER TABLE ONLY public.activites_types__titres_types DROP CONSTRAINT titrestypes__activitestypes_activitetypeid_foreign;
       public          postgres    false    204    201    3476            �           2606    8992593 M   activites_types__titres_types titrestypes__activitestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.activites_types__titres_types
    ADD CONSTRAINT titrestypes__activitestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 w   ALTER TABLE ONLY public.activites_types__titres_types DROP CONSTRAINT titrestypes__activitestypes_titretypeid_foreign;
       public          postgres    false    3689    267    204            �           2606    8992598 k   titres_types__demarches_types__etapes_types titrestypes__demarchestypes__etapestypes_demarchetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titrestypes__demarchestypes__etapestypes_demarchetypeid_foreign FOREIGN KEY (demarche_type_id) REFERENCES public.demarches_types(id);
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titrestypes__demarchestypes__etapestypes_demarchetypeid_foreign;
       public          postgres    false    3526    269    216            �           2606    8992603 h   titres_types__demarches_types__etapes_types titrestypes__demarchestypes__etapestypes_etapetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titrestypes__demarchestypes__etapestypes_etapetypeid_foreign FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id);
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titrestypes__demarchestypes__etapestypes_etapetypeid_foreign;
       public          postgres    false    3551    269    225            �           2606    8992608 h   titres_types__demarches_types__etapes_types titrestypes__demarchestypes__etapestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types
    ADD CONSTRAINT titrestypes__demarchestypes__etapestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 �   ALTER TABLE ONLY public.titres_types__demarches_types__etapes_types DROP CONSTRAINT titrestypes__demarchestypes__etapestypes_titretypeid_foreign;
       public          postgres    false    3689    269    267            �           2606    8992613 P   titres_types__demarches_types titrestypes__demarchestypes_demarchetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types
    ADD CONSTRAINT titrestypes__demarchestypes_demarchetypeid_foreign FOREIGN KEY (demarche_type_id) REFERENCES public.demarches_types(id);
 z   ALTER TABLE ONLY public.titres_types__demarches_types DROP CONSTRAINT titrestypes__demarchestypes_demarchetypeid_foreign;
       public          postgres    false    268    3526    216            �           2606    8992618 M   titres_types__demarches_types titrestypes__demarchestypes_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__demarches_types
    ADD CONSTRAINT titrestypes__demarchestypes_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 w   ALTER TABLE ONLY public.titres_types__demarches_types DROP CONSTRAINT titrestypes__demarchestypes_titretypeid_foreign;
       public          postgres    false    3689    267    268            �           2606    8992623 M   titres_types__titres_statuts titrestypes__titresstatuts_titrestatutid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__titres_statuts
    ADD CONSTRAINT titrestypes__titresstatuts_titrestatutid_foreign FOREIGN KEY (titre_statut_id) REFERENCES public.titres_statuts(id);
 w   ALTER TABLE ONLY public.titres_types__titres_statuts DROP CONSTRAINT titrestypes__titresstatuts_titrestatutid_foreign;
       public          postgres    false    270    3669    262            �           2606    8992628 K   titres_types__titres_statuts titrestypes__titresstatuts_titretypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types__titres_statuts
    ADD CONSTRAINT titrestypes__titresstatuts_titretypeid_foreign FOREIGN KEY (titre_type_id) REFERENCES public.titres_types(id);
 u   ALTER TABLE ONLY public.titres_types__titres_statuts DROP CONSTRAINT titrestypes__titresstatuts_titretypeid_foreign;
       public          postgres    false    3689    270    267            �           2606    8992633 *   titres_types titrestypes_domaineid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titrestypes_domaineid_foreign FOREIGN KEY (domaine_id) REFERENCES public.domaines(id);
 T   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titrestypes_domaineid_foreign;
       public          postgres    false    267    3542    221            �           2606    8992638 '   titres_types titrestypes_typeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.titres_types
    ADD CONSTRAINT titrestypes_typeid_foreign FOREIGN KEY (type_id) REFERENCES public.titres_types_types(id);
 Q   ALTER TABLE ONLY public.titres_types DROP CONSTRAINT titrestypes_typeid_foreign;
       public          postgres    false    267    271    3708            �           2606    8992643 I   travaux_types__etapes_types travauxtypes__etapestypes_etapetypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.travaux_types__etapes_types
    ADD CONSTRAINT travauxtypes__etapestypes_etapetypeid_foreign FOREIGN KEY (etape_type_id) REFERENCES public.etapes_types(id);
 s   ALTER TABLE ONLY public.travaux_types__etapes_types DROP CONSTRAINT travauxtypes__etapestypes_etapetypeid_foreign;
       public          postgres    false    225    3551    273            �           2606    8992648 K   travaux_types__etapes_types travauxtypes__etapestypes_travauxtypeid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.travaux_types__etapes_types
    ADD CONSTRAINT travauxtypes__etapestypes_travauxtypeid_foreign FOREIGN KEY (travaux_type_id) REFERENCES public.travaux_types(id);
 u   ALTER TABLE ONLY public.travaux_types__etapes_types DROP CONSTRAINT travauxtypes__etapestypes_travauxtypeid_foreign;
       public          postgres    false    272    3710    273            �           2606    8992653 )   trimestres trimestres_frequenceid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.trimestres
    ADD CONSTRAINT trimestres_frequenceid_foreign FOREIGN KEY (frequence_id) REFERENCES public.frequences(id);
 S   ALTER TABLE ONLY public.trimestres DROP CONSTRAINT trimestres_frequenceid_foreign;
       public          postgres    false    3563    274    229            �           2606    8992658 T   utilisateurs__administrations utilisateurs__administrations_administrationid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__administrations
    ADD CONSTRAINT utilisateurs__administrations_administrationid_foreign FOREIGN KEY (administration_id) REFERENCES public.administrations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.utilisateurs__administrations DROP CONSTRAINT utilisateurs__administrations_administrationid_foreign;
       public          postgres    false    205    3492    277            �           2606    8992663 Q   utilisateurs__administrations utilisateurs__administrations_utilisateurid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__administrations
    ADD CONSTRAINT utilisateurs__administrations_utilisateurid_foreign FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateurs(id) ON DELETE CASCADE;
 {   ALTER TABLE ONLY public.utilisateurs__administrations DROP CONSTRAINT utilisateurs__administrations_utilisateurid_foreign;
       public          postgres    false    276    277    3724            �           2606    8992668 H   utilisateurs__entreprises utilisateurs__entreprises_entrepriseid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__entreprises
    ADD CONSTRAINT utilisateurs__entreprises_entrepriseid_foreign FOREIGN KEY (entreprise_id) REFERENCES public.entreprises(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.utilisateurs__entreprises DROP CONSTRAINT utilisateurs__entreprises_entrepriseid_foreign;
       public          postgres    false    3544    222    278            �           2606    8992673 I   utilisateurs__entreprises utilisateurs__entreprises_utilisateurid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs__entreprises
    ADD CONSTRAINT utilisateurs__entreprises_utilisateurid_foreign FOREIGN KEY (utilisateur_id) REFERENCES public.utilisateurs(id) ON DELETE CASCADE;
 s   ALTER TABLE ONLY public.utilisateurs__entreprises DROP CONSTRAINT utilisateurs__entreprises_utilisateurid_foreign;
       public          postgres    false    276    3724    278            �           2606    8992678 .   utilisateurs utilisateurs_permissionid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_permissionid_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id);
 X   ALTER TABLE ONLY public.utilisateurs DROP CONSTRAINT utilisateurs_permissionid_foreign;
       public          postgres    false    238    276    3580            |   W   x����  �s;�8�(Ր���gb�w|�:��,l��,,�xXRtx�I�Oh{M�������fi
gXx���K�"=      }      x��]_o�8�v>1�����N���dv}�x�d��8pY,�mk#�R�ػ`�ƽ����=�m߮��|��"�_��n���c�Ll�����H����	E\�$^�$��|⮳���^Lc���#���mrMC���o����7��"�`�d�E��~1��2?����j.�M$qV3�AV�'A�PB�U,�����Y��:bY�0	�Ld%.���U���΋���/�¤#���*��R2�����lАH@�2x!�ɠ	qx"$q�'F6�"��W$P�I�H�Sr�E�:qx� b2&���`2��?$��P���a9�����7^8$�V@�'$dq��,L!4�_$Q��'�%��D\ ��v�@����=�`�%"��[���%�D0�'�I�9e�30�$����%��I����d�����4� 먪��ǟ%�w/�(�1�&c	MF�Z��<���s�&����镉�ìqQT��M��=��P"S�����$��< ��|D��M�p���I�K&XD�K��c��C� U�2d~+BN�fO�f :�-� b����* ԉ�QQa�"�C`"�׀�UF���Ğ�5X$�2��6�Lt�ط��pD/د?�l���}3��α��:�&��l��/6�K:���f@��9���M��˦R�:���Tx���ܹ,B�*�P���x4�*Z���,\��*��<T��F�z7�AqZ�ߙ'!ymNc+S �T�
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
�d㒋T����e�h��ǳ�P�h2Z���Z�:��g��YL�(���Um��?o=z���%��      ~   >   x�+/*�,*/����J/J�,J/�0+����\�`f*���Y�a%s�BX)�E� V� �g�            x�sw�L/*�rQ\1z\\\ 2��      �   ;   x�K���L/*�*�҉P:L'BŁtQ.gA.�N���P:����l���S����� �2 �      �   �	  x��Y�r�>�O�Sf�֔�*'˖�ݔ�(�Ԝt�EXB�"� �Y����:�}�X��%�V�5[��e���u�(���r�bY"�M+��
���3"�/��RNN�<��g_�87ml�}��B7^��$i^=~Nn���M���S��u�W��%�,=�1�kY�?_\|���ט�K����z��g'�d�)�-�r�{��K�e3����?x�H?��H��#nd]�IR�βkQl_KV"���>�\"KN�L��SX^β(���3\?Z��'�lt㳄3{Q�,*�}���?���+����w����Ά��D4w�OC3 }J�}���(z[�/�gY?r�K��R���%�o �Od���7@�;�glJ�wM�-�~K�8u�`e�Q�-���������6�-'Ѹ|*�s��*�C5KG��b��[����N0˼���ppV���٪��l-8x<Xc@�	 ,%��@d-m�!Rca�j��~3�I��!�J-?8'l�3� �0H�s)a
?'�EL}J���J&�%��K� s�Gr���V`��3����e>��ك�t{�A�v�Z�j� ��!��Llx}ts`\�2��ٜm�/8��S�4]��a��n��0՞,�v�i>�$4���f ~�c�:$�H[Y��:"�l_��c*~.a3 0�G8)�h�YSH��Q��>�aT��;]���?2���mrq�T����Rw)��Ŵ�~�\@1`BM9���QnO05�p��S�Ĳ�Ka�u=H��}��� "f��r5�kW�ƯP˸�E`Ľ����Fw�����>qbtƩ|�۵�����E���^� �)��:��p\7�v�F������m67�]{s�E�s}�w��p�7L&�̭d�\�݇�����F>�ǆ\�w��C��ya��<2���m��;W��̅��(��qk�Q�o�&�F=�i������a�
��d���4X#�<pS�n�y������[�! J�%�<��'r0��� ���m_�91`kx7�\L'�/������j:�ZW 	+1T�VEO奲��&���ڸ}�ued�BR�Ԍ"R(x��J	��� <*�z*��uOɢ�ΞV��S;��\��	�L�/?��`�̩�5�k0�P
nL)C���Ān
3f` �^{�TȚ�'[��&��.����ʾ��� *Q�L����� ]����9ߩ����z�\���p�{�DȞ&]�O�D��!q�*��e�/�ʾ�R�0�S��vm��'�~�xt;��RXh�%,�D�w�_{��R5��gv����"���?BB���]�P����/�}�g�:�����L [�
���,1ޣ�u͞1��~���9��*�'��%�͋�F��Gû7��U��P#��� ��b�Vw��l����נ\���|y��x����z�,@�8����O���a)�n?��&� ���������N� b�8��?�� ���VEL�7��K�Q�ײ�ݓ̰�ө9p���K�Ŋ�祀�r%�~h�du������/L�g�y�cN[k���ڔ�i.�w=u��]U��w5�<�h�zh�I���I���"�6�g��z��\�����D̜�s�Y��n��ʰ���yw0su6|�����RK�hr���m�V�+3���l�=�5|c0�%<����|w��k�$�+ )�s�4J�X\��)+��7)�[��(�2��/h7`��އr����è�W�Z�݁gրD}�gx�8'��X���G�k�R�Z_����L�ꛎ����껹�ހ�s/�A-�&(�K�k��})��o��;���
�%?��T KP�\jL�q
�t�B"��H�w�����)	��.
����;O� ���Aw�*Ӎ��%��%~\ݗT����/y�I��Ï�ZpLgo�	��9�S'�F�S���}��Đ﹝1�;�e�/�TR�|HUsg,����K\�~풹�zd_��"dS.79j���`�@��F�{\�s�k�:����bQ�����Dgl{%(--�
h��Tj�~���ԫ��X
�xM7�B��v�l�n�[���H�V�(ćꢵ$_xc�sY�}����䱞�3��6��Z�2ݻe��{������~rP�D��s/��܃kx�y��~_Gj����O��v�=���G�OO�a���	g����߅z�ola������!����;�\\^�2Z�~��3��)W�bCau��/�G9�1�J�]��e�0:e�g��ł�~.![��{K�P�mP��ut�/����S��?���Ч��=��x�

�c�� �U)�	�x}�	i��gYR��l�-V��00
�eK�?Rg�@h\]�&#��Y2�Ey*��0WE;�����H�li����>�[,h�����Q�v�GX����3�BA��Ӡ��[*�P�XZoXGz��-f����� W���      �   @   x�K/J�,(Jյ4760�50�,���J�����祁d �%@����+������=... _V$�      �   �  x�}�˒�0E��/NM�Ej�e6�1���vd����c���ҽ�%�.z7l~���{�ej�fm���}j֦o;��o��Z�˗�kY�k���sqY�~�#�]]�p��!\d�4�i���.~�	�6{O #@#���F&WY@#i��\���|=��odB�ND0��l�Ev"a'a'FU(ʖ������o���G�K�9��ܻ�_?�'�W˟���c���c��,z�&(~L�]_���-q��վ���q��)�Y	7��,��٩�x�Q��������1'��-�>����@�4�����,e2�ލ�$��Ź~u?51�hsW��Vؔ��$e|B6$e����c��"��I3/zc�0�IsE�{`Δ�@��dB�S*�#���U�U]h* F%)�M@�"�>�FRat�FTE��"@��!V���t1:N_A�ַ �T����$P��`��ڭ~�
���} 0~�A �/Z��΍��}`�\�۷�m�Y��      �     x������(E�y�����E���l����i���?1�gҽ� ��$p2�����=w���e��2��e��/���`+f�٘d��.���b�99��[31ْ�`�[��\F�l"�\ �s��=?�3��:A�0<O�?e±r�D4����Op������@�Eʇ�!]�셙_0�Ȑv3s�?wf�:3�ݍ���ň�Er!1�����!{��K��Q�3�2��&g�I�������gf@����L����ɎC$�:3��Hjy$�zcH�C����|f@�C�Ό�	�K�g$�3��I���FFR##�����Hjd$�.�ZI͊�.ER�"�K��=��C�����ג ����
�)�9EZ�"%�-)1n�)�-)�@��H�DC�©(�v-0>�p�VCN�j	�����m+��-1w�������soMWl��Ѧ#*bi��-�;8uBE��Sl����*b)��~��t>E�l�7=�!���~���Z�����ե�]L5�,j��*��2\+X�Z�~Q\	Z�*�
�bԸR��ŕ6<��JL&<��ZkZ�Z�sۉ�N\L$t%�oM�t��®1޹.�
�,����0Kt�טo�n ���V�0IA�SP��I
�Fa`�5���o(LrLw��K��u�����p��p�
P���h��(9��`��;f�rHg��[�8����ۃ�x�|�E�/�`@��tV�^,�(4h@'���ów��9x��������$o��t��M�`XlB�6�0-�g23����{Q ��S��=��n���!0�L��3�Df:fs�~��l(�ݮ�}��?��3���<�~�%6�A|;F�e�cŀ{
"����~fA��s��	������[g�*M˂*/V��-.�s���JDƟz����8�SB�Td��Ji�;9g�/Z�9!��L	8�������-����/�Z!:.�
��T�d�F.X�U�r-Th��/��@фg�d �����%�4:�K�r�3�%؇��k�7�����ěG���\.�7�&�f���a��&��%��@,�F��~o��?���	���8���8���8��q��ǯ�p��<�v���ao��jڥH�6z&B���0+�z�:�
_�OJ/�ҋ���)�hJ/�ҋ�x��-�̄�V4��0��l
�)�f�B�~�����]�<d$O?|��lw�/��a�)8���Ǘ�b ����\^J1>�Q4�{�`���`���`��|)�|�����b�      �   �   x�}�A
�0�ᵹKJK�w�&L�jS-��E���L����g���b��K�ph� ʹ>��o�
�Y}���j�������^Z�-���ߔ�ֲ�����G�NP:A���NP:�r�	�=Q�S9ۄʞXtb�nF'��*����duD�6� ���GDn#�)�:t�������T�e/�2��RΧ�Z�Gf����c
v���߮��䗩�Ǎ)�q�=NƘ�q��      �   a   x���	�0E���b�{��hn�!�&���Li���r�^������
S[:IN��M�[�2�2�5w��i	9�Q�B=LT�zq��* ��"T      �      x�3�L��;�2Dq��qqq 9�A      �   %  x����n� ���)N�w'� �:w��Е^��Gd:��KR�x`��|��O�.���p��<E�x�>_�� ��K����]�s��K�p�!_��RH~+[����Pr���Rρ��T����h�րHy)I�V2 B	m���ưc�,����u"�����-0`_%�����ǘ}xZ�{s{�n��觴�H�]�5�!D�'��Ŝ���<�����4���4��hu�6�`�3�ʅ� 6�A�*7+G�k%I�X��d!�~��]���4���o�@��v���~ �W+      �   �  x�]VK��6]�O1�Y)������{�iO�v�@�lh���ȤC�N�7�un�Uzr�,��+��h�h�*V�>�^1ϒ8#c�j-�JՓ<�+�4�ɘ�zլ�ڐ�����,7.���d�j��Cp���vW%�u#�UE�|��nn��:#���ۮ�j0/32���O��FG�R���z�g�Gӟ�h����c�W�z7ь��-�N�gI�	W����Mj���+n����*�X��4����8%cu~�ۭ8Fڨ�'�u���4#������,aAӜ�wܨc4=�)�m�w�!�'�a�q�[����7�ʳ��Y+z=p������\Gc��2�g�ik|L�YE\�Q����Y�$��6Ͳ̊��H�i��D�
�}��+)3�K)�gfeS���#�Vl�DYN���L�.�U�cARPH�
�f'/J�,l���a��ɏ6��4�x?����5���h�n\%Y�n�E�(O����1���k��n���k�y���,�{vI!MR��Ŏ���TĀAM&��s'w�HPp�}� �d)��fB�A�(��1շ"Z��?���UJ&����l���u�(g^fq\����4NK@��7�����BV�߸�y&V�8����}B!|Ǵ6INFji���1
7R\���&��;E3�l�H�5��v�	fat��L�3;qR���A�Z��Ş4lٱVHI"�ON���k��>�ho�8zf�%3�b�E�v=F� �kwc3R��c�FA��	���Z��Pr�[���_�����$_���MB�����P����>���4
���u(�����[NՅ������Q��x��r=A��%�¥.���S�'![�V�8�ؗʀ�� D�K1���������[O��h��5�2f���	�ꥑ�(�5R�*�l*-�'Q�q�a��� 
Z���dC�(hl���)������B�M�B��Q��`��
�^]�A�0�OvFťC�ӣ%�K�(�Z����K�K��@u�2�-3�g�����	c2ڳ^'��G�S~<qR�N�c�[���Lb���c�-3���� �����[���������9r��aԩ��(_&�`�t~�/8/N�2�����'
�ªa�}�\��I�ך�% �1�6ج�<t�=��B�~ۣEv�}�~/���:L6�-``sL�'������aie�sq��H���"��,D7�D�[��>��شu�"Pv{���RR�J-�	E�����D߆��!������.gKc. �H���A,Z�;�h/V�ei�7���u��Lx����wmװ��Y@3��bk��W=�X31��a�[i���]f�  3O���������.x�����JF��������:X������������hYJ�^q��Z-�|����^rI��O
���X�3�fn�<v�f��9��������M%<      �   N  x��V�n,5]�|�wi2���սBB�H�#EN�3qp�}]�(aŖO`ǎ~���/�T�3ӹI�,2��U�*��C�6�Kjp��D�i����Ҧ�rtɪ���A{e��XHݖ��yUm���ڑ]**Iy��X��_?�:��uV�`�T��0ٹ<�I��>9]7�q�g2&CV��&���75�`{�x�9��2F�?�!#��~���g�n��e�A�O��E�1�Aؘ���d�64E=��U�5!^Ձ�ת�Ha����rMY�g,cji�����{5?D�M���X)��I&@�$�PXn"_c��\8;9SHoq�k��a�']�x�m1\b��ޤ��t]8=���>��V�d�@x](�kfd��5�i�3���E7��}�!�H�%(�
j���I�N�\����.S8��q�HԴGp;Ȃ/�=/���@H��� f��H4�a�1��eiz���	�	�\�H=f&���>�l2�����Ʀ�U����{��1!9������˱��#L.Ԟ�hS�zJy	 ��NU;�C�QKL�m��_�A��q�@�|����� ��m\/��Z��u�.�Y�<=��n�}�q���L/QN�r�\0�!�{#��b+DH��;e�z_R]�>� (�jU4+�fW� /H%(���0= d�qw��b��ƅ��	Ȅڌ��S-�|�Ӗ��
�eV	*���?��Z��#5<v\�-]FTw�g�f�tsㆰe�?�?B���G�и��;���J=ml}����9{�4�4��q��A��Â��Y}��t6G��f}�,F�}�$ۣo�o^8�B��{�7�^��J�9��<�j���=%�I<bP�Y4����+Y��V�t�y�M�dR�O��E��] �����~���y59�=L?�ޠ�Ȅ�<1, ��;b�@K�XX҄ �1�[~���:�÷^�+o��|9cp��W�@��K�>$��}�4����Z'�Vi��<�����,��1ɝ�mԀ=���3���ϛ0;98�|�.���3�}[��.��v�b2��}���fv�~ņ�&~qB�k�I�w'HϽ�G�fKWm�珜��G�v�Z,Ӳ.      �   �  x��UKn�0]K�஛�h��:�.G�fL�4�rH��\�@tY�C7�I���c;��,X���ͼy3f�� 9�]��.�8N��-�)��%�Y������8xZ�Dz����.i�|�\�i.ڎ���>�84Wt�����>�� ]�p�8���I)�ux@|պ�\�̀㰦dowI�Ѝ"��<�qH�y�!OI"s��8���a���9���9�BKث��'ʚhv�xr����Rc��䘜T��������P�(4e�8�[B�m��㐋J���Ė7�tޡ�C�޴�Kc=	$6BA���q�>9!���+��},��Aj<�������i͚V�߼m�����'�g�NtE�n�^�8NOY� X�y�&��������c�XP�6�4������Z�F������:�K��1��?�B�)�e�#X�O�Ď����4�0���yʔѯ����w?L���$��Ku�+� �ġ+�u���n�4T��:'Q�9����q�t�u��^��t�1�x%B(��V1!4?�5�W������2�8���jՅ���`�d�h���i�O�^�,>ϼe�{�`�-\ܨ�]�c�<s�����	���Z,*9��}Y9��K�`�>bmuع�n/B�F���{��9�e���-��eNa�YuvEY��t��K�Z⁂�_�d�ív�^�m����      �   
  x��Z�n�]���6�$��H��L��g`�iS�.Re��� �Y�7$@��Y�'�'���{ouw5ٔi� ���z�ǹ�>ڛ�M��k���ύv�Q��k�>��k|T�q���<�5Vn���ri�We���~���kC�U�A���j�J��ǫ���V�]�U��Z�k��3�\D��W����f�3��=]n���}����U��������ȱv��N׶�a��~ەXo/Uﺺk�"������߭�?�����:��wڒP��d��ם�q�*וڭ#iL�,�"l�O&>&���&��>�=΋Ʃ�Q�%~��VӇ�.�#�1[�ۊ�Z�_��s!ȵ��>�Ш���!�B��5-���x��B��|����z�qQ�[1�d#���_hA��^��~VA�J�)�U�4���|�RH��wɚ�.�)Vq������ �G!m�k[��qT�vll���n���?qT�R5�k��h��k�˻�;�
��,�<���W�fU��\�$���L�!�\}mi{�G��n�J>�`UvW�bZB���Z['v6.h㱁<9���Ǹ3bYCV�	����Yd��;52\�+Lr�G�]��Z1��W(�	����Ɣ��� � t�'�a�W������sy��{@�7/Zk~ɂE �x�PX0
�j�ޑ�Wӳ!C9� �X	`+�GH.A[`��*�jA�����!Ww��.�b�/6ĥ��;��ڌp����qo�X+�������^�1!��H�(�q����9�'�����89L�-�B�N���?��j����������׺N�L�4N�3�U�N�;u�n�R(��gA�w��AT2HAٵ~0�Ui��S�&1����JI������w�$��g���#�9L���+��3�jH�	D����6��0�2)���Mn�E4�`M�^o4�ԉ]jkCùCJ���¥2C?2}"���� ��F'k��`Kv�ìАmɈ���|�q@�[�R��*~m�]`�e
~C���J�=��8W��T=$�i��dEb�X���Y8��$;VS�Nᖢ�}�,@Y�B%��W�Y�'��3m0���2�D�	Iņ����H<���V�ϔ��	�Z3�l�����"�d�������V?s�I����:�-��˽�� H�G��P�6��j���%�ٶb��d�}	�`Tl"1�>�P�K��8���>/�Y���S��P�+���ۥ�;W ��n{7Y�a?R�v�a�+��'ǃ�.%�ʁ�,�Sg�,I��%-
0ARϦs����R���3�ģ�IL���,�����&�<��<��G�U�@��2�zBZ�z�Xsi������?q�βipLo��/8叓/2���^慮䓔�=���|X쪔��]���.�o���2K6o��,b���Y-(��V�S�ɄnHS�x�@�C����~4��6�Y��r�7�l?�i�.��X�ާJ������-�!o�XRV�|}��TY#�,q�2x�E$,T��M�^8�rzY���u@�J��L�E+�~n��!��X�3���c&�=�m8������.��M����=�O���m?i�.�r�:����=�8)sFɹ�ۣ��NM�ϩ !����kj�	�V��}K��rG�<ʀ��������ѳ%urT� �	����yBNfNN �a	ۃV�h~r��/����y���$�V�'7ds��[���l��8��$N�@%���R@Q�藙���*^X?H��y䏕�y�Qx���$-��VMQO��G%$�"ٜ���.I������ ���'J�
�)�2��D��.<���S���?�*�\�ӳ\2���I�QT������L��Jcj��m�b�0.G��=y�G��������Ä\�v0�:՜�+O��T�;d �a mĢ0fc|L�YJe2�"�*�gDYS���H�@%�Y���d_��>�����`=�Ib�Y�B�+�j�wL���i"�C�T�9���a�����XZ��%/ۉ�n���|�^�����o����H�Yi�>��kf�D2Dt�0_t�+�`u�JE��{l�=�ї�X����/�I���ЃYM�C�!�X��n���ۅ��ɦ�gO2��,t�]�P!oeDO��B��UIKl75��d��������d��)I��Q(��*-��n����'0Q�9�����0N#���"�W�Y_u6Q�l��dl�����^���V��]�2��XҨF{�/z+`��Y(��`|�$��|���������§����_�!��/�׿�8y`�k26�<SQ.O *Ǧ�M�T�~�fxVy	�u��N��Te�'���E��������Rw�_H���;Λ�9��'� 2OB��'�9�i:G�s�yǗ��:L�C`�PGxd�_|��1zW�O�E�ʔ��e�5��|o_�I��b�'ά-q�q���s~bj��m��2k�v^������%�s�+o���͐V%'N�䥺K���yߛZ^�m6��ۛy��������/�Q�      �   �  x�UV�n�8<7�"��f��Ǳ�u���F�%Í��,%�|�}�̏m55��GU��~TW+G��ە��|/��rd�U���wu����nt�ߏ�0 :t�g����q�q �`p̊�v��n7Nd1��L�7K-�hLV^�����A^{mT`��Ck�
�^�~(���m3���V��}-�����9ǈ�e��{e޴S͔���[ɤCüe���B�7�������cÒ���:=��˴ٽ��۱�:c"���;�6͇yp6�(���~�¸���ج76)����K��`�V��v�]^(���2��e���P����8㩙�M;�^V��z��Z��J�-�����������\"}�U�t�U�N(HT��{��_�v(9�����X�"��eGf��S�dh��?��*�h[wR�	}!��b�i�|)��	a����b�૿gܰa�=�/� �8Qé���.X"�tR�Ct	�J��3�t*%��okx)1���!\���t�l�Jg���Аtfc32�5 ᇬ�����W̄`ƀ�V�yWwX�)+��$��F��G3���R��VYGo��[�sG�\ �۷��;��G��`I#���)����8���-��>���3�c2��_�Z�C�g��ڗa��Gw�mP�����q���^K�����:�4Tc��UONsF�Qr�߻0EQ��^��<��vp�y3�������ᮮ��e^S��ݥ�)�c�_�N�er��Ï5��R���Xw���qV���,Kr%Z���t�#�]ì�`$�u�a�4& �Q��� �'`��y���T ��1W�����m;e��Q�wSk2 ��;�
� �@����$�q0+�`�r�i9{�,�`!�Q����x7�BfuvG�/��Bw�}�-�Y+ëTB)/*�@"�(��ej4?(�鏥v�,���+-""$
�zu���$fM�JE/~�+�N����r��S�ύY@R��)��C�(#�OB��-�0�h��}�+�^4L�\P���45w�D�W�j��vV3(����[�
`ޜ�a}A��E�ڽ\[�NN�G�^_��
��C<z}z����c_o�	$)�y�t5��6$i-�l�b�;�C ���5��] �-����rBk�Wv�S0��2=6лa'�+!GNٸ"/�S4XS�a�rzS�,m�=�d�8�R{ng�5~:0`�}�$A;|A[��M)���?k      �   7   x�s�t--�/�4�p�t+J�K.VHL�L�,,M�4�r�	ss��qqq ���      �      x��]_�䶑n
��5��!��A0�o6�?��H� ��f�t�:j���O�y;�S6�!oy�|�|��"��4�?ݳ=�nl�m���"YU���XE1Bc�0���Xe.�A½T��bƶ���^��te��q�\�F�@�BV��/W��=�S�Vi�\�'�e���y�;wYTn�qJb��6��j%��ӪR�JTy�tR�DY�2_�/6�j��s�WoH�{�	%,��ސ�q��\~���o��Vؗ��ow�K)��-���B�B��\�ڤR��k�FQV�����=�d�Ц�?i0�6��W��G���["�+d�Ɗ))	��Ŭ�M�T�d�%�e�;��H��.fm�����9&ے\�iĹd����-���[7�KE Sz3��5�)�-3�87��t�����#��ܔj)��:�j!����*�G����:��R�kU¿�K�㳢tҼr��?Ιn�9}#���Io߭���;=9qR\2�}Wݾs^�U1O���\,�pz��uU���~r��͛'su�g���=�*67O��DdY.��Vo+�$-~.�T���_�z�������?^�rmK���f26r��S}��"�q�E�7��YC�`��	p�I�U^mj�����)�������T-+g�����K圩9��Z�R����w�-d�r)���̦��n�J�)i�B�Ԫ�?H�ȁע�Uj4d�w��V�;��ĔfALgs�P,mj^��P�i[B>� =�5,m��dKն%�ks�pc_�4U1(�b�ЦZ��}Z�;������U���L�\���'�|��wB�I��1wl(]mP�ey�W�o��w��w7e�J��Xe���(�MՖ2�^�/�~�mZR�	؋�3��)�Ql�+�ڼE;��!�����w��h]*x���(��s3-�L�i{�5Oo�8K�b~l�@H�������W����?��YH�k��I���&-� mB,����X��8�{��%`����gp1khC33�(�9�RU�0�8�5w�&GH	V�2�����uyr1ϜSxt%�>竲H7י�G�[���������1G���|�#Z
����QK
H����ۏ^
�j
���~"�;��YZ�ۚ�e�\�q/�n2�]+䓯�7�3��	8x|���^��>�s�]���ϰ�����@U����*+pi�W�B�����B�9��o+,ۭ�1N�y�Գ�<?)�J� sO(9a������c�����
�?�}~�֮.P����3����.����.�x�q��U��O5{���E8���Z �a#����=>	"�G�1��{m�cB|/:�0���p�~������]��~�c���@9p)&�P&���R����+D�k1W7�ճ��Rk�sUU�2�ժ���m�j��K��f����14�Ұ���6���5@o;�����$~~w�z??yg����l�������&9ڢ�e��$$�˴#�f��]���I�w�����9�y�g��F�4�	�=�SO8���L~|��y��Rc����<���E���N�3	��z],�=�aX�o��^;-�,�HO�ޟ����7�W���&��]���W�*�óM�8{�Kwq�����߼�_y����l;_��xMcF"����v!�&9`R�( 5d�4 � �67��,�#��0|&[��(�����P�E�;Wj�P��md�ө���;ΣjSV�^�y#��b�W�\ip?���o�y�ヷߚ��?�XWǶ%^�.
��0!��
��N �'}�b���n�߾�+aϠ�Hf�xW�ބ���	�q�}�p����\��LR�̟�Ŭ���o!�;�]���A@ې����|̹���E+)���|A#�\��xGJ�;�-`�B-��e��N�̫\�ѕ��FHC,3M�V��m�C]1҆'k��љ�&̜���c�J�a(pݻ��N���)C�b�4�D0F��)�&�'rjp��18QY�F)o��h�����g]AC���|y$�ə�������(X����+���+౉nY��kx��	��,�Ɠ�"�����$`F ���j�Xw�]o�⺷�9�1�]�{]���^.�X�'����<��=�bn�'���#�������������{�����	��ٓ�'/�ߋ'�O�0
���q̩�d�Ú6�C�G�~�l�!c��/�8����J����aV��t��`�|��Sa?^���
I������L�{��C�ŐU��^ܘ�Œ���1�6��c�^�^�XV�]��5�G�s@�:_�����J���R}�^�:�r���/���G�y�,�Tvy5j�����jH��ئ�ho�	̰��UM���+�B����Y�e���'�x��K(�}*8;�%;��Q�0*ո�k�?� �갋���ot�E���b�j�@,��_�U���c��5.lpG����\��޽2t�Ш��Eye\���n	 �qDY)\����`y��ޝ`�l�.��L����sJI���!J,��� �Q2Π���cd�1��|�E^x`���D'��-������d� /?�(IG�f�aE�v�L�Q���B�[αY����Ÿ��̐�AX��R��&�� r��^r�qK�lX����[k{���Z``d��a"�UM��bQ��8��U�=?h�0b��)���g��R���/p[ջ�@�0P/0Umh{�[x<�C����Xi-Z␌�4��z�6�Ù�M�4RM�4�yOKœ�a�u�2R�R�	)�$���2�}8F��T��l7�jژT�C�����4.������{(.����(�H�E���(Y4�E~�X�3Z$�=�L(ˢ�6���j����#�&�^�{�(n�^9��! ��ey�n�ٲ���E��GQf����	H�#�HЃ��׈��"���dG�lp��s3�/��1v��?��gA��\�-mh�����:�3?��l&��4��� =����$���5����+
�3��s5eh�\�qL��n�����]v����]�Kݶ��B���������q�`�+��`�0Wa�ֲ��0@�@/�e�[q=�xv�96s�v5/r�����^�9<Z=6��Pki�Y�_�T� &�O���7�H̢$9LG������&&#�(�Y�u������8~������v{Ӥ���Q��[�эU�&��r#��%n���>Ǻ;�a����!�T����-+�����"�,0�i�1�R�5R@�|e���(��n�����6` �����ז�� ���or�\� �=�'W�I]��=��J�d��0?mQ����v-0��e�U���	����2m�҅W$��h�U�����9A|$�+h���\4A�h�p+����y���P1��Z�]'�V�E�� ��nII_Dq�[d�n�u�RO\\�݈|������|,� X��\+��J�KPG��啎�'�g�Y�J�0�1�'�4�aB�S�����v�΁Ui(?I�ټf����NoƑ�`2�V���\u]���KR����sBl�i�R��t���k2��<=^�j8�E�4L^�.z��=�u���#n �B�	g3��5��vF�gu���H]�kҠ���ȠN�����,����n�>�{Xs�G\�, YZgYڸ���Q��p�YJC��	G�ta�|��fqc�Q�$��|����n'��M'����Ncw���&��Y�VӶ0-�!-���ԡ zdR@����ޟnљP?��MeGs�D�փ�=݈T��t# ǈ��(�%tt�g�~	`��p�0j�wbr�g7�e͚�jM3�bv���Wj.���^Fk��_r����f�x`_�����M����ۿ-�R�Ϯ���Ճ���0"1���sC��2)�$y4��[?�}kWz&�惗�b���Ц���B��כy��Τ�pS�SA��Ŭ�M�f�s^[GC�V��>y�窤�$��P��P���*R��	7�����8$����GJF���l�V��`[{��q@&�S�AD"��%�ws=w�J���.H���G}����L��3b�L��`�c�}�}���Q�F�ê�Wha�����޾� �
  >@��<Rt�N�<�P����}��MF4l�(K"Hƚ�aM�LЗG݄��҆�5���ȱ��q%��Mf�����8h�_�M3%=��uR���i'�T��I��� ,��1�-�h_����ڞ3p�詁�㙏�@e��Da�*�����w9l��*A���u8̦9��t>D�W'3<�dF[����|O�	������W�b�<���3Q�I6����N<t� �=z}}�7<�bb}��y��5��G.��A�ѓ�.�yeC�郢x����(�&��ڒ�H���s�jڄ$zһ���.ѽ�N�Ǥ&������,����������g�f�w8C�V>��g�t��pC�9�����=eH{���3��wfe�a6ᙝ��*6�3�l�ݶ��ytY�W��O�G�D�z�ޥiO�^O@�G���td�`._�D5ִ����@+o!j�o](��m�~Й�[gwٮt��vf��(�1�aX��li��I��82�۫<�����䌦W#M0�u0J����2�4�J���Xz��z�ߪ����;Fí)_�����$�2�/�8tn>"^ڎ#�0<�e,���5m/��bW���ýs����g-��~	D������~G7��6�����	f+cX�F4�Tu�����ؔE�jBo�O�7=yQ�)�������W&�	�Fc���2��l���|3�on��`�5:LL�)˼*�&�X,��V���y.�g-��,��c�[���|�������טUʈӀ�x�c�򉀽l;-�̈
S!��.�6'c��;������~�v#]h�)%,H���diF���ɴ��)��[���؟�J��AA��\�}������#��o����f�� �9��,��Ŭ����bY�ɭ#�ˢ�ɍJ��ǳ�Z�߀*�6��y*H�П�Ŭ�M�h��IA���?,*:���D��#A�l�.����"JU�D�d��qgVD����1��mF?�
�k�5�F�ߨ���L$�#*j�>}��qc�>�EX��.���,�7�۽�)�_ʍ����:�^8����&����.��L�/����W���;T�D�&�Ly �啭vA��8$�?���Zl�����8��G��܋H�b�e׹��g���Ƿo�
�l� �I']���s<�G-ܞٰͫ���H2�e��q�A|�����2dė;�ڟ��N-�>@�d��]��~��w|���ٹ���o4���Dt.������=4m�|��M�/���d`�z����g5���-f�/��v�(�̚��j��-ۭ.���]iR̀e��]N��SYo�m+L�B�,Ei���˗�v@o����ba��������%,L�[hi.8�. {y������K�fQ�U�.��؝�L=ܧ�o�,(�<F���@��|N��gh]P?�}kG�)7����������]����I�G�*��.�QLxD�6�T�XڰT�ʆ��U6�������C�����֊���?p�P`��t�K���	�T}����ߪ�@,�0���b��0���.>`u��� 歏!���4���,mD���i�I�i�F~@U�T]Zdic�5uE����|��L]BxH�7�m��6�XѪ�������su �u��V:)x4˲���҆�����ov4�y:���'�0��O�6�.w�oK��-Ӕ&i&�a˖6�<�̎rв��N��5��,�S�-m����tQWhrߩ�T�zdi#�������1,'qʔ��a����C1��a���$�ðC��f|o#�+��u��^_�^H|�����۪�\������ ��a�M���=��͚A�(�ǂ������W%�]P��Hjp��7b������s�P�;O6�<3��s������%¤.��ck�a^'J�n�.�Z��S&~�z�{ŉ� ��-�g��� ̷�o����7��� Q%!��J���R�q$n�W �ܒm!���j��,����0�8M2��C��[3���k�qL2�������<<���w�+<������Ɓ��TQ��8��.�������a89���B�L}p�X$kqrмsk��4{��o���ǞϘW{z�}�����?��;����Yo����:�/��@�3�|���bXtei��xO��1<1o7��bɷ�SK���`$��_�Hv2?�F}�a��}���Q��B��@�A�啔�2DJ@�`��~~�����j�U�(��kɪ��	Y��e5?�m�#���OwT�E�J<2parG@��֢y�R)<X�l��4m˨���H��I_����{Gc�8��6%,1��òW��O�؉~�������u��<�r���x�������ӗg{���Y��9�3�p_�xsK��;p-7��Ld^%iG�,��m��d� i-U��vO��q�EVȽ0�>��k�8n�Gv3�D�k�Y��۷vr�"��$oѝ�v�|lf�I͉H����Y�X{��1��XñďU�Ĵ�c�6��C 0}d�t��AH��aDK��1NM��L�e(�������7��a����|���Mǩ'A@��v��P���51.)C/����Yڈ�}��k�I4�ͤb^"��Z������A�9(��b%`�k����4r�2`H&��m2�D	�fM�k���G��BF�L�&�p�ٰN�iÍ���6�"�'XeD4��"��!�uڷ�"M��X���ݥ}��(1���Զg�oG���=��O����U      �   X  x��VKr$5]�OQ1Æ���3����l��RV[�J�II��\�K�k�M8	/U�����æ?�K���哔��J����P����1Z�Zs�alP�P#߬(\(�+���!*E�6(��ҧ-qL,Qmd�U���ġ��_�q8�7��j���j Ӏ�Z㝓�:R����������3�?\�E6��-��qy<`F�ӑƙU��]s#��2u�Z�Ԑ�L#�̖��-9PUFV�� ��}IȂ����~I�J/��p.�N��te���ZKN�]k3�Z����K�ߍ�#BLQ�"z��h�QKH�N��t�'X^���4mH%�axe��wČ����-��nmZ���ۨWmKo�$�	d�v�ߡ�8}�o��H�\��,%�#��Ms퇱� G0���Q�k/����jXFQ65xc3#U&'��xB{L��:����Ϊ=p�|���S��3iڪ{as�+CB%R�>�d�2d��0�]�wo�
-�$�FgS��l�N�V����o>yۆ�P8���B+�d9�M��	��(�`�H{L��{{/"b���Q�<�շrjY�z���|�
w���
����YT+&SC�d���ߑ���F�Q�qP�C�z�������U�C��pTG@�W6@��Q�cE�Jˊ����
�����㽭{�O���V���� &G_e=��+��){�ى��L=l�ň�yR?v���.�2���Gi�b̡�~�:��9�,�U��2_%��`�"��	�V dP�Ƭ����:-�. gL��5'|�����f�[��X���ҟY.rU��	a��,�u�<����ث�W�!��S��9�5����3{���[��j�5�j��w���ݱ��8���VXZ(u���#�v�t���Z�3K�\y{?����E��t���JQ�M�C�:xm�0�����/�#q��������}�&��Y����d��k8�r}�݋�8�w��"��@<t"��B�P�{�����|����nJӀ/L�Q���$˻�y(���3������ynn<�ϒ9�RxJH3UH�s�%�p�3!ʹD��l|V���Wc��V/������ſ��&      �   �  x��TK��0\˧�.����Þc�Q�N�[r�	ì�;����M8	�r��<2���QduWuwU��g?�є;MY�ӘqTBoؓ�G��M9�3����(�T6)oq<�[��FOq�t��$��6����G��Τ4�89�&O�.D&�.��ʅ�i2���3X���Z���Z'�*^�)=�[����v��ҙ�x.�����y���2�s\l�wK^�v��C�tl[����!��lC9�Ռv����rm�%��}�I
k��+B�=9�P�*%�;S�|�[%��{%�d2��\TJJ�V$�
>��7�J��~��#��ό��A�e��#K������z������\6E0;<g7����F�I�e�CY1���=�"#�=-g�D�z�l����̛yzs�n���h8���tgi@k����j�iզlo��>�kn�3��M�S0i�{�=ӿ��~eA&�E�#�v�%����������v�XE%/V�r �Gs�) �Z��<�Cc��)�'��Mq�r�G3Te"�0�Bκ�4�:Z��I*�`?�=~~�B���Yʾ ��!��d:	ٲ��X�t� �$�,��PL7E�~�bO�`��X����Q�,Ao�3d*I�7�ӭ�O4Ss�wƂ\k���bU-����"�5⮛u]OӸe!xv���b������y�cs!,���@#�ڠV�kX��E �y
��m�4 ���      �   2  x��W�n�8�v��wӑ��v�/Mp��&a��m��I!����n�Y�����k���8���H[�*4v�/�|?'_,�/ (*��j�u���ͼ\�q�\T��k�6�+4�/1��_��M��+��h�����
������.Wx��~���xh�I�MS�8\��ⱱ�8�PE�d�G���I�e�e,p�gr�3���2��Gt���sU�_���z�.�%^|(OժZo�bS�+|��.���Hd�0�-�X�E�	\\��<ʹJ	xD��9����(�"�Et��A��.�]���Rh<��AvXj��Wx]ϫ�������hp17��x]==/�GX)�t�&P���z[�	ϡ�s-��Kʒ\%y*^#�)#�%NpT��g�"3��*�I[��Io�:���E�����P�H�h|�|��)�2��k�6��m�^���&�K�oۆ�o���oj�bi�%gBg �f@���Bel
0���kL���C�v�����U�Mq���6P��
���>�O�j��mS?�P�Z���~�	Ĭ��?��HH��k跸��vӖ0��f���'�<��9t;>���z�����l,��=Hr��3��췜!�D��ZĶ�z�����⢣�B�A��)EB�`�9�:�Nu2�#SQ��P�����<]��4I)�
<.P?�1K�)���]�T���^�
�~����*F��Bנ�S��D��;|~���|��@+<����{�,�)��4�Z[1�b{Q��f�G�]%��iG���s�c&���Iq�gjjli)1M��
+R\��S�|/��dЪ(a�k�������QKĵ7�h<����$z�.E���Nt-��608�O =�b�Q+���y��P@H�b��Q� ;���t����Q�T��,pP!�G��?��1?����r��B1�^���#�>�ȴP%����3wBώI$�yH���4(�dZ�KgƆ�5�.6�Z��+J># @��г���׸\��iS��e9�4��[�T�f�a��4�$P�DRd��~H�D��t�۸<l|O;@���M��-(F��r������(d�~J�	J;�c�߃6c������%�RS��d�P-+sh	e�o�u؋��)q�ZT�֮��k�1����s)������)cG�,HМ�{Y~��P�T�2��^~/~�AK���oh�g�`�m�Ob^��$#Aףd ߻�鶝�4�K���<5K��)�����HI�q���YQ�<ԫbSZ7M����$�~�/�����%����ۏn�*�j�w�_�F���C3��ʌ,�;�͡������-�@���z����`k"�dj��$�TT�!L !���	��"���~�δ�P3���0���Af,F�ݼӛR�)@�.<9�;��\��] t�-u�'��OM4�R13� �H>i�GqX;�kH<D������B�!�#�
���_v�́г(���C�eu���#�\�85��D����o#�"�v�Qw��G�y}�3&��b��X�����!�{�����ſ>T=�      �   T	  x���Ͳۨ���)����� !$-ul�D�l�l�N�f���<��� �l�T�����|4M���{/c����)��sʚ=�{^�_����Ʃ=}���'��_×_I�r������A�����l�����2�g�0�FNX�R^������6>%̚��"��Cd��=mVw��;ªK6	���c��� �y�M}���^�PQ�5�Ŭ��M�r�~���0�?����v�t����C���{{��a�ۡ�00j��e���f����@�E������p-�t.-�	�l�\71V�x�:,R���ثeG_��j���(X%4�7���f~{��J��]v������;��~�]�o���nw�Ow�07�i�m`/���W�^�A���k�T�/nDM	҆�d�W��F��oo�(�b�{Y#J�X��O�'l#$�]^���s#T�Ŧ��FP����=u����F������4���n#��aǏn2�� �3������Bw�$���GP�T��K*j=�im�g����Rԉ�p�]�SߝN��s���:����WF� 9�W<��T@%_��r��1�54r Oq�\C�&�.Z���C��Ч��E�㾨��\�g���)}���0�,�o�E�X�*I��@�y%��\����]�/�ZF� 	[c�7���q'2,�WO��D�ˎ��(��}#ˎ���b���#�Y(L��*�R3F>�BQl�d�����<��̪i�T%+J37��V;J�XP�X�Q!4����ddgw��L�+�fv�Ue&d�F�]�X0�E)k�>�9?d��c�����~j�$�1!�ĭǥ&�Q�Mo�"��uоN�o���{&u+�!xC�H�<	 {��[L�X���< Z� H��+����55�S�%d>S��᚜U�����%R�+��cN0iY�ݏWz�P^5.�,��Rҝ���?n�՜�?��x;��@cO���e��Z�9;e6U^\J�??N��7��t����ۓ
v	T�̔Wʢd�w}啀*�H�ž�ׁ�i���!�P!�+y��}ɓ�%F����H�t�E���/AZ%��|��f�$�������R�ީ��uO�3�����J�d>�F���\(s������O��Ed!EVٌ�ekgo����(i|_�ʅ"ae���R��Ke�U���ӥ2۪̒K'V���ʟ�>WF�-T�0YvQ�԰� ����Z�����*�}o���׎@�1&������nUǁ���H�S�W1%�2�H��$)T�f�R�qt!�B
U�,4�ԩO�(�qq��o�����f�7P`���Íd�K��>,��
��V��`by=!ju�Z��D��l�)�����I��vW�	�r�t9K��K�qg��J��[D�,+]l�.��2������Wt>��x-�K�����P\��
��L')���.�
�d��w���X.�m2yWd���y���0��fao�2P���\Pv��� ����" �I�]� �.Ρy@:��9 �̢U���ޑl�1�y@xO� �tn���,�p$=6�V.�a_?���yM����]�G]C�n�qgv��[����^[�l]�m)�N6�Ž-p��T��j��uѥ���J��fMûSw����硥v}R�Կ�j�c�dT�r�~N����Ƅ ��fY2�`�G�j*�L@^d�%ʪ�v;u?��pHKH��z.��1�KE���-��XX��3�"���K������#O���w�����*�|�nR�rs�{VgvuX�솛ӶW1�{�k��_g����,T`���U
�|�ˠH+:&.�:aX,f�cP�~M��=
M\�Y���R� ���0#�(�ӅR2}������<C�{cD��u/�*�"W�F�W؇�f���Hg���_� '�+�:�5ꬉ<����$�Q�^=} ����I��KB���3����z�dԇn�1�N�p�B��� ��Zck!�5U�@��M�C� a���8g(%�Q-��|I�ަq��v9�_	��i#��񬖜7U�����/���|�N��2��7�9����A�)Bx崁^?'��|��ë�$A�#��2@�P�3-��]+��6>(Մ�G�����T�d�N����@{m��H7LE���@�E��\�k{ڙw#s�ƕ����9m����m0�0����?~�E��n�12����Q<�;��wٜ�]&#��4�<���T옛�QJ�6�����\/^+����,��O�tZ�&�})���'��9��B'(D/�����Xz�Bi�V;�>@��B��7I 3�&���6uoM����_s�W��Âh�P_.��e"��Iu]*��[#�@���˗/��D�      �   �  x��SA��0<˯ୗ�?��m���Ht�@�����1�(�>���O�R^{i��"93Izӡ���դb-��t8����v	�[p$2O�d�T뾣��S�3n�v$�q�p��� �h��~��3����Eҽ<<G�Q���\��Ȁ���1�,��hА���Q��TT_ \/?��L��
�~�W��Z>��=���Y��.��Ѡ�'�Y��^(A����ھ�Xs�Q�#��$0��c��^�bՖ�)U�E#��.j̀遶�7���C�4O�ǖ>o�=������+L��X e�%���su�z���Uc�Ty��ia�'�Pj!vE��q��+�7�:Vj�^�Lb4j5zS�'<)��Y�zZ��eʽ���9z���3�@O����䟠ֻP�j��zj����?��僬�(>�S��{�_��bk��ڦi~���      �      x��=�n�Hv��W�"	h)nY��M�4/,��]��P"��2x3�쑱 �����mG���?ɗ�\��*6Y�m{'�� �FR�U�N��M�L�o���.�E#ZU���)~i���_��R��;�e*��@$Iդq��uSՍ��k�j$�BW�쓉��_
�  �4@Z��$Xf�"M�B��_���E<>���ل�BkJ�O�k�F��w�,ת��R�lE.�Cy+�{x$N��k����(e{�뾜��O��Ӈ�S)|���R��~[V����V �K2��hz����E��VN,�4��U���.�	l"r�\�����V޶����I�jĭ��mW��5a�@L-�Uӊ��4�Rǀ�D�x������o�h��3�M���52���wV��_�����w����QH-a��q���ݴ�X>����E�u&���̪� �t��O7~<tO�ĺߍ�����+��O&��*� �����D@���A�e��������Z��:b�
.����{��&Y&@UQt�����I��)�����b-x���I(TETT)��2��������ÿ	���_uܕ &����B�,�2��J���;������v�� ��Q������R&�n'n�{�'P4�g
Ne. �S����>��S���Ǫk�����V�5\CǬ��l��(�*�i0����O�7�>BW	� !�Q�7�S���U�Zk#o�0��kYµ�x �Y[�%�m{�Ab}���� v �l�yԇ�$>@Az\-�;��i�k��pV�vZ#�hA�AT�n��6?@�ڞLqw*Z)��K;O�&1۟s��p���]�V�0�b�����$=�W��t 1A�wM�X@0�,]l!�_r$i�'��⁛�����7_��a�Ais�q��J�w E�1i���j�?0��>0i�I�&��\�k��z�Mt���+��+�W�0Wj�QZ�����+�5p����������`�ѥ~a���I(�ހ�m�����������
�WX����C"(��T���V��#R�@u�pp4pzM���@F${�RJC�����pA�m
u�z��^���}���:�ԩ^��z�+���<�X�$Z>6�ɩ�%���Gyt�_��M���C�r�Y+������-q܈�F�`*5��F��$~EEn'A���F֍��+�NGr��ÄLM+��,�h����4L~b;��c�>醴>~̤�"*T�$������83�q�U�J��t�(��2���>9
<ץ��e�EOf�~�tǝ/���*������K�����6�&2��X+�|�/��,���zw��i=	I�J��>H��p�Ji`S��}���'AQ� ����b	s�ʮ[�%�vKx����Ex/��^{��ˠ`��6X2�	�܈fe�Dh|��)+w��ǧ��/�_��km�q��Q�Y��L��� ���������3�k�V{�	A�h4�X���t�,Ae��K�Eu���~��'TT�ʦR�W��l�h��	3�+�!��SS=� ��s��{����a�7����b3�Ǉ���#QՈ��_�u�ڮu�~�
���%�:Ar�~��G�{tec����-�z�Y�FL**e�U=�� ��ђ~j��m�����@���)���V&7e�W+EƇ��T6�+X����V�h��G�6]W��Z�sd���<���(��h1t��{A&�S���t5��/� 6c�{1�K����_���)���֤�I�/I�n��q4(d-�[�p�"��J5k�N��S���2*�:�3�:-����]K�qZr�H��<��<%m���۾�#�� 	�>0����%`��9y�<^2ݦҜ�$:ؚx��u��Q��y�<���&7��_�%+�	��y7�@,�V-Z5zb�et�lSeM���eh����v}ǟ�?���ĭS�e� �@�ht9�:�-D���UX�_�	1�H��~����w=婶1�r��5>���6 �k�O-z�o�c��׬㺻��-� (�+�I��ϼ^�������?|^0�߹���I���A�n�����opt6k���,�Nw��˿�;<��#�{ �r��3"C�~�	hԳ�:�z2�H��P�e�[�+ :�YO�H��M�L��'��
��1���佭�J�Vq<C{��:��q�B�4�]lLv4�u#�\'��X�tުa4p�+����XH����J��uN��w�б4�*W J=����̀GrB{[�"�J��t�utHJ��+�%�6�EڂT<�dS*�$z6�c�U���D��X�j�`Y0)���Z�|Aa=�LІ-|��(o����ԀeB���/����Y�t����c�e�(Z3����itڰ���
�7`�PD�\8v(:
��֎Z�:�ٳ0���ߓL=��#w����~��?���S�0h�5Io�o��y�U��f
 �V9�ѫiH���)��	5��VZ7�)����#�A۸�'���߽���|4A�u�� �NwI�)`��&�����O] I�>2�Y��5Y���?�zs��ְ o��ULU�`�:��o|`^`Ӎ����y�	_F�'i�� <r���ӪQ	hTv}��E��ݐrϷH�F�D�잞 ������İ�Z�� C�D��#�Y���|�>Xp�آ,D�B8 ��#�8�`����&��k�i��������L�c�a_l	ì����R� I�A=H���a$�z����3�O�Q���u�|�w��i�tbn�Sz��vh[���F��A/r$������Yq�M.#p^F�mȂfD�qb��`�uբ-����[;�H-$L�����u%�BS�:���jM!U�� $	�V��6�����
D1�p�g�|&6���ۉ x4%�Ć�O�Ӣ��4�Ȃ� �tDx��N����k��\b'�S0c�pÇB�4��F���+b����=�[�Ѻ�lThK༜�ҵ	�]�o�j�1A6<�|����|ֿ�>*`��p����o�*��x��Jj|�D	��`���h�drt�q�M-Zv^Q�R)���"T�}w�p���P�6@7�����10���rF���f�õ��l����L�T&Z�^�j��D���&�F�X�^�(��"Y<���<���!��/���y�*-�HmJ�/,ڐ�e�K=uWɶ���=��X.g<������Iw�$X��r?�k�1w�pM�\��vM�������	>�����vl�{��}�n�����$��&��HA�c��E�s�j�E�T���V�.wm�y���o��(�L��U�q!�t����g]�B�d��6��Ǚ��o3c��?�p�U�_�L�t�."1��=�;����V�����"a�۽t���ѿG��2��ޚz��V��,�)��<���r
a���e�����]��c���k2p0Z� ]k�}>�6��8�k��� �J13U:Ȍ���qf|�;JYS2M���A�\a����`.�Xa������+�01L2�)0�1{��-����H�~����&�;d���{g������v���;E�8�
�'��4|�o������ǂW+�*����$z9�[�XڍBXn�j-��2�4JB���Vev��0��eD��^�ˍwA�t� gҎB˙��//�T5q��. ��"���r6c)&��(Js;ƈ����m`B�� !�\�B[X��ӱ[x�\>����%�~�V����� �"�Ţh	�]u�+��;�u���v��]�uS�Fv�EQW׍�}hU�yE�}�����.��J�]��o���d��$n5�,z0w���-Y���5���l��ۙ��������*x�mn�� j��V%����p�^\�4���'�t[���Y+9�{�9�[��$6�X�8^���@��3�@0;I ���M��c.\&�y1�hǒ��9��K4a�E���t� � ��	��)����]��H�hx����A H  ��H�Pl��%����Gr̰����V:@������d�!GT̞���y��S�M�P�USۤ��i��xư�i#����'������i)�o+ʏ�4F���@�|�r[�����XDܲ��y�$�c�~�Q�Ka���F32Er�Z��嘕���!yXiJ���\yI�0�,H��h�
�7G��9��m�Hp�2�2�k9'�=g�F��桞�g�� ��F��-u��<�yC�9�9I:e%���e�$\�Vd�?�L�D ɂ��JB2iN�1�A�J��_�D��"�Zc��˴_�P���k*2���9�� ����}�q�����#�\�M��E�0�l'W�p5#�gx��^�dW�k�XQ���!�!�o��s�:L�T��k�'�[3z	�<`�W?�j�qҊ��K�Z��4�����%V���lw���K�:���7dZ��Hm���lI�������7�~���(;㣎#�|Ā9j��6#V��v�og:�6&n��&/釳9U��ʭ��Ew����Q�?�����U��=��ו�������o(lRX���e#Wt�NDT�5� ?r�C��ʌ�هV����D-�YkJt3W�WN�!C�co���d˲�D�	�D/6NM�gߋ�,W�X�f\I6"3 c��6�>ux�y��,6�l�cA�r9�F�kÑ; �����q�U6HJ�NWݍ�ٍܢ�K3>������,L�L�������$9ܢ�H�i9�_!��� �E��,�/�8Qh��!�h�;L�'#v���n
Lz�a�mS�$,W���KL'ٗ5��[i�"  U�O,EW�q�(�E�.��X����.G2���6]F�c��Bġ1��GD��lx�s���$��3����W���J�1*^�Y��N-48.ĭ*��k %~D�ӗ�$ot��}͔�t:~Nv�]��8p���1�A�dxsz���������dS���d�4@e�����)�h��Ÿ�	8
�R�4'+M�.ߋ�F~�b:���)���L�L٧p���Fro�J�8��G���8�df�[��Fhi�[h�b��"?��SC�'
V�s�P�E�8U'���o�Z����*93�+6ۛ��20�a�Ns�#In�o'���ٖ�N	9聹C<���j��84�8�0.�m�W H�����Z�#s!�R]Zb.D�YV�!��O�'�LT1�^����W=!���k��W5�����il�� X�k`�*'i4}J�����{�]kd�k�����U -��h����Ӻ��B�	�6��1����I|�[�3� ��{�t-��9re��6���!��MW�ѝ .lSw�8��}�EO����[�]��
���dH۪�+/�xh����,�H������q�r^��Q<]9��Q�|�xD@�ԙo8}֊�γp�j˟5�1z7�!������a�U�t��[�k�l<���S�8�K�A5���!�{�t��B4[�RL� RgE�qN���c0̍m���+��6&�	ZAt��&ɔ�/�		����H=1% x)iנ
>�p,_�@���x���^@禐����0g]}DqK�m���@1�0H'��pQ�֍��4[:�p�:w��D��(ӏ2�F2�Yk#Qk�k�q:݋oc��K��9�bF20Z�=����m�i(;��^ĮXw5��O�݈R_Sxl��ޙh��ZU)�FӨ��~��
�O�SB�Q�q}�o5c��`.�����I�Ӻ|)���TtAX�;�������vqe��9���~6�]���� �h��p�����=D���)X,(-K¢�5������h��[5�x-���p��~�� 4��.�*8nv�ݙ�*Q}I��������fӹ��$�V��a� jG�?V��6� ���kD��_��R/�~x����AM�4"߁�����	���-�d�9�^X,�N�W�n}���0��n�
�X�<����*:��c��?��&t�m����t�_��8-�|jf��̤��;Z��j@�z�c�h��"�BK����+������<xR4�{inJp�����/g�\��s��74��P���Pݍ�ZP�?����W�v(#C��w���������T�n��yn��ڙ��$��Ih���(~��D-no�.,�8xO_nͻ~΂�Юb]����,L2an`$S������E�C^x �1ȴg�3*�5�� �۬NF��&qHcف[�Y�G6��q x���-s.j���f>}3s��(�3��"��
��%�8C	�Q~J��NP
�A�>[����4�����p����E/��[R5�B,�H=7�l��2#�~�@�O�Ǉ}�r �`���g��#�w4E}~��
��M��8(�����ߊ'�c9����&��!�	���2'�#,���+�iΤ�f>�l�Ď>�l�V.��L�S�n͸_�l�J�W��E��Sܦ7��8А��'&� 7q�{��2&�d���}���o'�ܯ�"��Ӳ`�>�C��gʝ,���Ӷ��s��ʩ��-�V���"�A_���;k��tV�=�2&�bu��N$�.�@�80�A� &g��#&K֡�u�K��PL��bZ�^�2�v�e��1��h�K1�'�u���}�p�����]|SL�L��0��B.��حVr���$�;�x�?�c#?�}�9�����<��&�?/�@��xV6 �*[F�X�������/���L<Ne�+�t�ʋ�Z���m~]|x~�oG�vvYN�A7���S"��3M��m1&��l��TD:����$�͔D?��V�.��L4J�N�˷�Q8��EY5c>:vb�lI;��-��n��tw*�kqvc�#�D����U��''�a�!~��~wj֪��,z�@�^�����ێ��v�"��t��!ˁ|�Y?��vl�M1��6*�`՝����F�9=3�����J�������=�ՎE;ٶ�Q�,v���r����8�Վ����x��鯓�V5���E�7B�J�E!�N�E+���u0zlⰮ���� J�O��l(����w��٤�4��'�=�?	
X�      �   �  x�M�M�� ���a�D�Q wy�J$�9���I�E���HO�7~���g��
-��ђ�{�8߹��ڈ̓�*A��������#���㦱��=�9i�j~-����%���Y�J�k��#V9��jy�P�*0bН����VAw�[���C�k2��ب~��Uh��;+������~��1?/*�jF�5,�����)�딚�Iu���~f�&�
��
%�^��S�sopּ��1� ���D��d�,#�*�s���dJ3u:W�+b�%���L�NT��w��wVr�(E�.-��W�g�lg� ����ѹ��0�ي��0��科(�1%2��V��_zR	��PҨ�,y�<%T����k��)���^��+]��č/+���+yJ�G���-�m1�؝��e�͜MS4�.5�P��"�l�PR�Q*���v�7�B/��qW��W���%�X!�7Q���Y��U�'f���r�7�lnF��h�
!|]+�(	�U��\��e����Ax��&�y^���%�г��)A�3uQ�s�+�]�"�<!��m�f�G�r���ڑkG��̋��S��9%�%�+�FّV��|�9�*�+?�=����u��e�C+_���Q��~��������7�1�s_x����~w�u���ؔ�,�Ey���ȣ=U+�}Η�O�܂~Ļҩ�(9��?���?���      �   �  x�M��r� ���٪L�o��,)��y�E@���U��� �Ds������NN��>�W��O���f���i�T�>զ�>��|�M�j�W|��O��Sm��>�O��v�v�v�v�"}��H_�/�}��ާƯ��=�|�;Tء�v�7c��zܪ|��'cOƞ�=�]v��^���,�f��B�9��&i���B��ii���AS���U�[���]Y+�r�)��$�U��	*a�?�}1��}Gɏ؏A��>w�4���%u��>�O���G�N8Ճ���_=��[W�Ҭ4�Bg^�z�k6�W6�$Gj$�Z���&e�rQ$=H��H�V<�$�Bi�C�PùUj�Z��bb}��$֗.�Kb��p���
�F�Q`� $�\%�<[[[[[�ZE}��ٝ5c"�y2���+"snX�0w��F�0%qZ$D� ��ԬA�-k����!��$�q�u���r*WN�V�^��l��dX��Ӝս�{S��-�噟vtb�ճ�^�z�'�$���.�����9-��k�W��i"�F�"��J�|J��N�ˠW�w���vĶ}�'��<|�e5�	W/���J��C���ӧ9�>4ǤFMsL��F_a4�$_@B_ϱv�s`���s�4�
��L _@B��g�9&5j�cR�4�
�m����lA���M��Pf�|�ۮ���|y.���8�<��>�*J�Z'����׶m� �*�       �   o  x�M�ێ�0��g��/ 7�N�FU�Ԋ�7���Z��<=�]�E�l����(?Ñ�Q5�@���m������fs¾3�G�a�g�fX�P�b(��ڈ�i���7>�g�f�E��/����i��6wv�b�1�
��@kU���R��;��1�F�t�pǑ��#FΧ[����tx�����v���� z���$fw~���z���yB�%�;�꼭�rRr�֧J�(s�/lumt��l�����$�����L_6qH���� ���o����ߌ�	�z��bc4�RmU���,v��b:E��)��N�7pa�ކx�t��-?E�KZY��.Gt�)��U�`o{^�j���J�~D�?�o      �   9   x�+)��,)��M-��9pvj1Wnj'��s�3����8��R�@%1z\\\ Z?}      �   �  x��W�n�8>�O�[XҒI�ڴq$ޢ�"�
�fl�ʒ�t�O��������ǎ��?H� �"%����oF3�
��N���g����
[����.�i&c�m�&�,�4�N������iRD�N�0���Y��_d�A<�~_i�U3b�͈\:�ic����G��_�X�v��x��/#&E�c��< V��ey0��$�:�Wy�)�U^� �~�8���ƌ���!ܸ����Q��Ǖ/e�W[�=��� ���D=�D�ȭ!�.�X�P����?8~��:/����MM"�`I�n��}�p��\h|%��`��:˴�߅y����Y�� ��=����Q�8��
��C�YQ�^t��:�20e�Q;f�ly����0�-�4�T���yu'9��i����D�O�8�h#f��DO���4��Tò:e.o��DA'��G&a	��#�=�$x�2�.#�#Y�<O�7���E9��:p�KЇ�� �^����ţ�C|��=�V�eSF40O���)>dZ'?�����#9��@��ϸr ��DHAE� G�e���� �JϏ�B�4ym4�y���w2�'$��O�xX�N�Q�0!?@��0�µ�V!�W3|���[����������lxP'kp����(�|�s9m���do֎�����t�[���:wVl��l�eM� �\�qqw˼-Tq���2<0Qŕz]��mʪ?=�e�������W�}Q��N��)wSp�̱�N�3V��ؑ�ߩ��mZa��(�ª� 8�?MP�/Ɣ��Z��''0�b�4@�.�hFQ��Y9�����"�v�d��JR�i*�͒��ک�˛y�/f�����sd�.Iyw{Y�TU����A�a4N�)��'�q����!ƙ�8���c���
r�qv�q�@�[Ѯ�y��6���%�"�:�U��<zF�i�V�:������~�6uu?a���]�F��%�TZ�Kv�؅�l��@J�>�ݣ[b�Y̲�P�;�^�O�1      �      x�K�H,JO�M�+�,����� =�N      �   �  x����n� ���O��*�Nv��"6i���ڷ/�ި�Ғ��������:�x}�����>���	�"�g�g�o/�_�`�w�$�q�\�}���Z�)������T�v���ïb�٭�B�^�I�nsȏ9ɸ�vNQNڴ�����
;�)�l�1���؄���j;�~�c>>BS��Q���W뾏Y%k�����rȍrgj��SO�˓Ҍ�:) j7���7 �5��tv��S�9��!�췘�����!Y7-cp���0����a�����A7Uw��K�G_3��D@R���|!T�)~�uuw�P����28F����ɢ�ѷ�Hq��:��p}�m*��^9���f�8��Q�G�>U&�P�T!�"ʤ������z�q���S^bm�rK���0��������f@{�O?��r�˽y�      �      x�3�4������ V      �   {   x�M�K�0E���bN�o/L�b�T��4dO]�l�P�*3��̘��F"�x0)<˒�:8��nv��S�L�Ϙ��7\~�V�ꎮС|6�0�+����G�1�-����R�£,�����f8y      �     x��QKN�0];��X�@C�MS�R�E�f #1���T�%��9|1lwAE�`93��}���S�����Q2�E�ل�~U���0m�I�g(�U#V&��8N��T.���Q��JeA�o Wn��h���7Z��/ƻ�iEc�S��$7h-yc	����uGi�5���>��L�(����cp�&�;�u�Ub��2W4����"h�񾘝-���oL�I�����,�?��xKw�?�S���_XX�\�)h:�Sk��!�q�|^�<X3�C�\�P�?v]��﫪��!�q      �   W   x�+.-H-���\�)��y��`҈+5%�$����p'�a̕��f�@i�Լ��Ԃ���TNWӔ+%5-������J0m����� f�%�      �   0   x�KM��<�29��3/���(1��,1��3SR9�K��S���b���� Vi      �   h   x�˱�0��ޯps�D�!��TFH_��
�g?�pk���Q�$\���*Y�Af�]�Yo,C��{Q��F˵D|ݛ۞1��\g����E+z�s�?H�c\      �   X  x�U�MN�0��3�ȎU��l+ZJ����X�U"�vq�J�ܣ�� c*!�������8,�il����buəF&`iBl]��,,�I�FV�|�1Zx{!�`2&[��Z�`}G��E�>�kZ�5��V���9�Yc��d�����Z�4�h�n���Z�*��u�O�����p�6kn&_)\�dZc�`�C?n�	c
��E��쮏�(U%�,�i�i�q�\�k�.5Ѧ��:J�Ld�W�
���	������pvW��lͅDQ�ԧ����9�n>l>�8�F"���9ߔ�\G~��L(ܛ�����f(�i��`�W�]���*R�$}���bN�K&�� ��m      �      x�}S�nA����.M @]ZCm"��n�=���>l�p�]���y�I
w���VG�V����0O�R-�#WI�(�/��oS)0hB�L�j�� S�q� "�^.���'P��E�
���%w�"�r�KD�S��"
�;E���ϓX�~UT<&0Xf=�KY�1�̉���)�&��#݆�
�:��{��d��n����3L������;d!�i�v�R��y"�}��W����mªV��ne��[q�Y�_͕��N�8���{��u�T�+�7�|7�p`O���y~Gc�<���ҭ�JM\��U��QY8��	���;ؚ]�>�d2H�vw������U�<�:�DXܠy�|�7��E�m�Ս����%0h�ج�C}����u{<���Ő����_�ؤAxhkr��@��ub�`p��k:���v,�_������'0��?���'�H�fy��$}��z��g��_�M/,��o�TX��<���v���]^$      �   �   x�E�AN!��u�a<��N?d�c�4���w�1����j�vB�� h3&=E��o�!�|@�Ql�`N}�`�� �}=�y�`+���{�B�T묾C0�Z���7��Л���H5��u]��ǘ�B�H�BP�k;�"�]�C�-�������vW�k����w�o�      �     x��U;r�0��S���$�xr�t��L�f	�$F ��P>MJ��e�N<��qI���X<@`\ǀ��;v��ՐF���VŨ7z泥
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
~�^��U���r'�=EY�����@)MH���*�k9�%�%����˛�,���S��qQVH`�E��(�������џq�}      �   :  x��Y�n�F>SO!��&����[��P M�)��m����l$����<�_,3$e���ǎ�,ə���o�Y߇�SXd�M�-�T���}p�M@wC�B.q(Y3��9(�����Ld��[n���FN0g��NiP�߯��zWW�.��;��YR2W�����Uq���$�gz[��.IgM\���&^����v�[e��l7�rZl�q����f����uQd�$;�eN�������#��6�V�&����	����:�֑�Nrƴ�L;�Xk+�b �c;���S�ϳ��Oy��;��˶3�FgO��2�m��I������cL���Mu�|���2��4I��!���sf0��.��*�����6ݕ�>�37������_=>��u�����y:�B%#����MIu�7��Zݯap�xw��昷�>��M���7�nWyv���Nϗ���!@Cq���FK��,H�T< h�,���W�[�z��fL�ո��F����m(k�|N�K�@&Mj��=g8��2�(3KT7B��w�2���8"�� ��� n�Y�h����&����e���a�!�E?��!�rzj��4�X�Mb9�8N�_�,�� ����a�@]��3#4SFe9�`�Z������	�v$G���5�Fr���HJI�}���Ȕ����ߊ���A����&���5���/��`.Df�p.4�;,3fWS��c�������Sؙ�R> ����j��خԃ���Q�>���CZ�q6���Gs���!xhd�CbD�mx���'"�{JHᴖ`�rdwBI�P_t{V��,�����6���	�Ծ����H�2���
��>�˛����[mɍ�I��~1 ��L+��>YE 2��j�ݽML��=��� �Q0�ΐwlx0�����(Ұ!����$��Z
4C����"���� �jj���2���42�D��I�9���|�6�]�{Hk�x��v}Z�Uv����n�2{��S����F��A���*�p@-�8�x�%m����I{-u��CN4JZ�R��#�4��2�s<����	��iQ�!�f���J�\���u����F�LC�}�Q���k�����إ����ˤy��e��s3�1t3�FQ�ｈ7鱪�"�o��?�����k/_UX4��l��H��q#���>˥�[ť���^��ovʴ�q�n@ǭ��q9-�G����Z�]��<����
�����R�&O5���a[š?s7���߻u�p��KE�K�Y!�d�	&H	�G�D�*E�۸�����M۷�7���t���;�X~�KOB85oB7�Y	��{nF}����#�	��J�r�w5܂�S2��~Nƭ=Is�fe�%k�s�!�c��� ��Wm�c�b��鄝�|�QHk��!���Aą�B�#��p�t�0�
�A�;��	�����Q�!A4��]�R����Vl9�㐤�n�����MR2�7.���>�{�1�F��(�#���F@���e�����k��~�[�юn��Pc7����k�X,~&���      �      x������ � �      �   \  x���ݒ�0F��]��������3�Ŵş��T��^�p�_zPgPģ6�`���*9@լ������vh,��b�[�00(��H�'��Zϑ�o�Ż���U�ң���n�L�J�^�yM�&�'ǜ#�d�b��̾,ֲ�g
�YJP����m�?Qq���Q��^�	�q�_a�Dg��8/�l�	����&���H�~u�@���m���0��d�-!t���`j	����,����8gy@;g-�h��+��۹(}GR��&Wԛ�R��瓠�w'?�U�)�O������ ��i��v���Fd�L�/�${��*vZ�I('�*��~E��t^�      �   !  x���M��0�ד��̟�Ĝ�7
(	U�i�3�>}ː�'&v��J鳞-��.�V)�\ؾ��:!��2e����Ճ��_�Bִ�jdE1�������ulP�7_�ƣ8���(��:Ȏ�/�!d�$�,��{1�A�)q!%.��'�:�d̹Xg3$����j�
A�]�@+�L*�'9����F�
M��Cx��O��)�Co��\�j%��i	���.ԑ�f8N��ɔ�I�� ׾���s=2�����t+����-���Tr?�%�7�Gq�%�EJ�:�n0J�N�&>��&cr�E*l��c��E��m�r@N�rĻܴ�¡)�.���	�q�[��T:\L�He�ſ�y\7Ժ����.��9�h,_���W�ܴ�z���{<Ck�+���no_���yx|7>[^�p�[�	QD"�fd/5���)lT>�
���z� py}�zK�T0蠎pCΖuĻ�!��K��kr~��v]�Z�z��q�}%����h��n1�#\{�5~���+���R���hgPH�L�x4�����P��������~ {�vL      �      x������ � �      �   �  x��Y�n#7|^��$%RԿ�e�ۻp�t��}}G�؈�6�8�^�Z�"��qܿ��yy}8������|:�O��e�j2>-'���әx�̔qϕu��͒i���$o������6&�����m8���(/�ۣ�����M�O�x��<
�����5�$J�[�!��L-���{:��͟��i^��~n���P���Y%���~y��<�����MǟW<{������d`e���s�v���r�}���������gd��M��p�A�̓u�E�krO�d4$v�tNiH�ܨlu�JTw�Z>������d��Eɔ�Pȋ��i�s+A��`��9�rE�6(S�d�Q���PBց�a7_�@0�R�#Q��(*HC��%;B��u�Ũv@YP�nLC�p:�`*���C�8"�
�ͫũE�	�8�7,l��UBXW���͵ttATDJ���ѱ�m��*����be ޶� �`MU<�Z2�EK�}-e@_9FXu�E}���[At�:�4NU%�)��5��\-u�v�!UO�ِ���*z b@��2.h�+�owGq��<+���ʂ�"Y���#�I�S�beL��W�6�Q!��+�
�jn �8*�C�X��r�5v#����4,ft<d-�P�(Tj�؁EsKB;��!�u'�iH��j���N��mK�4Kc �b�*̀b����m�c�O�X%��B� ��ѲR�\��<CW鐳�Զ��_U;Ŗ�(B�0�Ui@�P
K���n�F��������q]ؠJS;�}a���\��nءc��|�@L��MME&�舫 ��r[�c�Dײs�!1���k��Y�@Ft�b۵:8S^C6.�`xK����zsտ�5}KH��ۃ-H-��r��ߢ�Q�^�̧�J4�x��{�}^_�]^_�}^_сן%c��-6��z�_3��~z���Z����@z3�6��8{S��K-}+˥B��)c�&M�����%��1|X��p1�ay��-��A���a���-�pk��=1�§�5�����򻱫޴�N{��%g/!T1\L��/�C���Ȋ�MnY���	T����~��fPv[��ЬX����{$�n)+��P�Ri�����0�����6����~n�o�Q��YMsu1%D�K�o�U�Om/r�6)ՊB�F�:OHo�`T@��*��~#HE�2��1���y9-�f�O�k_`�o���(�O�w��q~�\>*�)�m�C!B%B{i/G��lF=hT3�@�Z��E��b"4V+Q��F	t��.hX��!^��j�}�*�Ӂ.h ˚=w���ЪD�Һw�3փ��ҖH�_~{`��7^x�oF� ���n����i����r|�����8�.0n�m�E���>u@�B�����Z��>zZ�����d�����WnR�E��?���v� +��      �   -  x����ң ���]�o��2���*Ť�����@���g��I��4��u'5IbJ��cL��I�@����l����j*o������a�"���H�$�q1q'�.B�Ǹp@�	7!��p��o���~C�}��B�#8��$�.�x�n�;!q�89H�*%�T7PKoef��V�,�5I:�͏/��<�9�Y�{uzӠ�pz��7G���/(Ǩ!^��Lo����='�����k�/Ĉ���'Y��ˋ�C�g�#ȝhI6���6k��Y�V�܊z�X�|���d��J�K��֫$D�����i�6�Ooi�7�Z���po�)<�D��)��_-��,D�C�0�� �=�*���gn+�sf/�2�^�i%լ~&�����.�NL����.Y��]j�+���K�σ��h.�z���q���Q$�vWY�;	2�[�a"��U�O�t��⮻as��o��Ĕ�����g�IX���+Y�~�^B^渼�f�kg2i���{��=!�'�'!g$���{ch|V�9�:��c�������r���s�      �      x������ � �      �      x��]Ms�>����+�D}��yۙ^zؙ����V��qlW������^��"e� 	�M���v-�!$A ��s���|�X�����'�󶎓ų�ڂ_[<�/�b�̣����������M��O138�~���?����ˏ�]y��Z�g����=��K�׿<T��\�s�y0�<��[wա�?�_+��۷�h�]N�����x������Pq�/.��v����D,k���Y��_��.36��ݭ�@iM�T��s�O���B�i>�?�G2��V?�[�c5��R}�]H��r-�ۊ�����kY �|>���5 �[c��[�J[�
�MF�eA��x;Ъ�ߌS��n����eё*��Z1�?p���O�t||���/糆�ŵ�&�8��%�;��}��3��k��q�
����:�ǚ+�I((���Eɪ�+�E�\AZiSB��YU�(H� }�ՃkÏ�s�Ξ��|����A���/��������a�og=�d�Oz����Q�E��>IZ��c3�c��I�����kKk�I� ��	� �H9Cb�AM��<��B�O����h��Z��x�r�h}b�6X_?{g�����G[_y|`}#
��F�����O��f}#��F$��uX!�O8
A��C4Z_�}2Z�&��I�Y_�9���"������Zǰ�/�c����*�����w�]����3�ɂ���;���_.�0	�&^���/�$�ޱ�L�$��Q��F�T#!��h/�QH�;�W�����<4����;"����6{�$l�x³��4ٮkoX�#�u���D���og��ʗ?C�󋮁N�ʷ{E�ʷ��K�~���ڕo���O2�'�ʊ�|�؉ �p�;�c<�~0g�e���k�����PE�o���tܞn���~�t��
q��gE�F+iBE�Ƴ�}d���S���?�K$���tY��&��6cX/�e\�<��������呗����}���ߎ��#}pE����ۡ�w�	V�5�@���!�'��M���z�,��&8�
'!Y-W``v���s�����,
�բeC:�H��>.
���E�y�0d��B7����j������޻��P`!�}D��lt}����#` }��{	뻸Ѯ������uG�YӄPr��
,��{�*вѕ�/p���aV�>�ɢ�}T��_l�X���� D�����=�L	I�����`�m����k}��P?¯T]D�|ϋȏ^d�?�������/nQ2�b�M�+��I�㟂�&�)mr��F��#NS@��009(�%�y���K�V�c�}���~*���	� �ݍ�����~��Q's��s����f#�k$nf1�(���<$;�A�9��S٨윇f�<4;���9ǲs�s.��P�x������s�3��2���|����]��,$�eA�,�dS٨L��f�,4�e�,�2Y3Y�2Y��䮙�>)��0��
��riz&KC2Y��ҠL6���dih&KC3Y��R,��0��
�uJ��L�u���L�T&cbŬ��3�d,(���L6���d,4���L��3�2����L&�\[�83�'e2 �Iܢ0Y�Q*J�2Y���)����-�d�2Yм�)`&���@"�b�Da�V�g&�*LV��!&�L���ܖ>2K��&�u�!�)�̦h42��F!�{�d6$��0 �)�=��Y��*�5A]���>!��-$��#��$����}��c��3���dS4��d�0ٽtD&���l
��H��77J�1Y�)9{�x�Ե%��`A�|@��l�\�.�����| ��-$�ɍ������&�*��k��ʭ���pj�+�n���-��U�p^)���rH�e��K�f��Sy��:����ܪ����Dv�]��C�U�~e=����~�*��tk����&��9�]�Ki"eU�z􎫛��c
�u��6?λ�_����D��NW ��&�mƭ\ �������w $g�r�tR��P.'@stp 4g�Ɔ�����z�bTgRW*��г���#Y�G(��R�X����#Z5�¨q���T�U�I�g�S��.�I�X��'e$ɘ�d��"]�>e�G�)����W(���h1�%� Z�!G�� ��*����^��fgS������r�{]��*[��aΎ��s�����f���������w"�Rʐ(��
�A�(�K,=Ш�k(:�ܕj��m��h��0J�Y�	 �طX!I�	e� ]�I�6<H��AL�.�Q�B�>̓�g�l3�����c����|k1("K�Wa�rQY�P	��`)M��.�ϕJ_��R��&Ֆq�y	����Yj	 Yʷ�!��� ��H��6<H��,5��l�x��*,� �b��#���2z�QHD��-�DHEb)B�$�Fg)RѤRc+K1M�A�g��y,Ł�,%��,�n���vH#�T'G ��"Xj
E`)�T�,u/���h4���QYJ�����R��,ժ��UXʖ}%�߱Tҵ��Ra���HD�
�u����RᲮ�ht�
�u��Ajle�䎥����K�5��]WX*�4��i`�"�� ��+�@,E�2�E]�c)rs	�����R��/_���*�t�e�j~�l�4)S���X{~��| ��(�{��Y�X���X�\�g�j�{sס���i�}?���߼2[�n�����I����Ys����[�r7j�>,�M�=���$u�N��^�I��'a��i4T�1��6���`��1h���k�I8�ß�ڤt����UӜ�R4��1����*��<{՟«�|Fy��M9A+I�SZ�-X*G���N��2��m')�n�(��v uq±�Hc�܏��`�a���>����hS��!���
�|��0��ip�2���@2:
!�Pac��|��g�|)���m�5=�����(�x�I�t���<��t���:I���������)+wB���#?6���+(�k��P���E�Q�0���S�4�1�uX������0���zEl;{ﵧz��c�er�����N�-�5�&k�L4��핷�D�ɂj��?��kg~�{6��k3�kKPZͬ�C�*����K7����м���c��o�D3e��o�ڧ]�r�{��]�o|�=~>�k�(��"�E�s��:�$�6���M���?~����k߹}?��o�p�z��J��ӷU*���+(�E�:��4�[ց�q`�Ag�� 3 y�Yv$�;�[v��B�}�/�z�z�9���ӽۗ���]�`i����ˎDUO߮^,�z^,�t�bM��i�6��]�t��.���x6j/-�Ÿ��z� J�x������7��SYc�Ҋ���+ʉ5�'�G��x|ϰ��/��랁<��abG!�_������/�sJ�H!�/��I,X��d�M�m����t�gقO����Ϋ.�n^g�wAo��l7���v:� �aX�)��
gm��Ll�:h�;����F��עI������Ӣ�@<}+���kM�1�ӿ���Ձs���"�� �dMh�q\����S�Ǒ�w-���mm4��/؁�5ߪ8�33�1*�H��n-΍Z���a�v����71
(�|��_�a�����c�V�$5��A�b�dj�b�09eȁk��rv�:0_j%�q�s|���?�u�Wǧ�z�����K�����.�U��jP����>�5�-&ˆ���%l�\�v�΋86=�����u��\~��9W�8@:-��N+9�	hI��HX��}5���k7����E|�#Ԋ8�F5m7I����d����j��?�|�� C�w����tb���9�"Z��a*x`bP�G95v�Uw˽5yե&3��;�-2i�d��$F�]�?�K-2U���z�{uiRT��	޺��������K>�^��F �%��rI�BH����rJ���� 4��,ޘ�e�˦��6j�"���?<'{��u��,���Sz�,���q��"I ���]P��%Z�rQx��Z�QyʐLm�˦�r�4W�L�%��W�4�DVc�Li�TD5�΍�B�1 s  !چ�����Uc9�y#d���O7�>5�Ky�^��3(�¿��"秋��o�3�nL�lF���L�4�n:q���#��|r�����l:��Qy�Ou$��Ԉ���Y��P��,1֤��;[/�Y�>Z�������X����#��S-5��=�\D?t}ҥ�ni'^7�4��M;/�e�h���X��l�;��f��t�H�2�Q�Ԝ�h����>�}�>f�Ҥh��G��>�e���-��Av�Avc��� �N�n�a|<�zX�n�`��gs��%eGrو�e�o?AR9m:�����`�L8¶�]H��$��o?��<~l�ۓ�\z�i�p���+��e�Ч��Zm��uBM�6qZ`Z(:qWcK��_-+6KCo|�-�@dF�Ȍ��DdI*:�`!e �(-\hF��(����L��AWjR�7��V�U�f�Z�_Q,�ʼK��`��P�f�����*�t�����i�M�o[ۗ�R �ڣ��x�������Cy�6a!~��C�oP7¥��q�/b.E�f�6��i�0QXH�D˅2N�dX�D���b�0���"�e�lyo���]��P�{�����Vu�P��m����ӭ�rB*X$7�G�;0[������Y����ԫQ8RN��!P]��p�u96�QZ�N�:'��x����1Xl3́ͨ��l4#�ɿ�|jP����ݥh>~޾rh��]8`;�O���1e����W6a
��W�&�R��!�U�
&JɥY7_n²�ot�5{x��ܥ����r8�����Q�nk���Gۑ/���]����`ÚOxߕ�E��|��w�_�;��|�#j�~�Ꮯq���m��ϭ��?ʈ����m%�ް�7,�U�5��{,��7��n�H7)�D�"�IJ�Џ��a]��~�7�	In�*F�����r>��-k�y��R�0�� �=�����]���3��֢٨�@�&�H㾙a$y�L<��d4YgK�@�En���g���岇����K洏�9�Ap�{iV@�ĥ�4�R+;jk���e�B�@��ئ�i(���r|v�!� ������l9�;�\��߅�B�s�&�Ip�9��Mh�g4	#����:hiw���\9sƞ����x���=�k����<��|�9?���1�Ӓٯ�{�`c]�gɆ^o�<����5"Q�T�hyZ�T�<�,@��$O���9N��!����:���a~���B�ӯ�}�V���o���挺;�饬+��Q�Y�ʬa�A������]�Y�Ū�6@���m��۷?�{�����tk�8Q�vL�Վ|M��XEƲx/タ��k�(/����y	iښw��o���'��t��͂;�� ��S0	9#eBM�(��S0?#�\�`�M��T��L�p��K������{��j�sk���i�/�ix�;?p�t��~ -�L�&�ԮӤ;n2]M�<H�v����ɍݭPn�J���\�oEsfx+�ś�9�*��[d4i$w�;3F^U��g���r<�l��?ɲH�Gr۩^B���p2�l,�(��t6�_���p6�w�˂D=��2aQ�T����mMm:��hBRg�;��׃	��J��%��5��<_�Ɛt�Z����T@�D���f�%zw���C�D�^�f$�%�o/�%"��w���u���R{��.�lv���%��~����T��"w3:��ӊX\�{��~:�����~��$E:�1�bWGV����pB��֯%���6�ѓ�]�;�	��5����u��I�Hؠ��Q�x� �ۡk�,J|�>�X���ɥ�v�|���4I�2k�Y��m��ġm|�FA!M��4e�\(FJ�5]�dQp.�
���/�}��?��܃      �      x������ � �      �   r   x���M��M,-�/�520���O.10�MI�00�p��4400132���-(��K��5)4�),(*q�4616�04�(�/J,(�4��ّ�������ܴ"�*#cs�=... [�+      �   �  x����n�0���le��w��q��H�<}g15Qn��?���hԻ�R�R���$������R�gH���r��W׶��8�`z���KmpB
PƲ��=|p���#j�7��[��TU�+s5�i)eF��n�(�/3������!K)R<`��2�e����ъ�<J�mlm&ךpAwE�a��!M	ci�+lBU9,rJ�]bl8FUV�gVO�·K�ӣ�������zH�$���IVh1n�����#�)�	���(��u�3�2��W�!��_U����ȺG9��8���9L8��ϲx��׼b��sY���Nw�2;N�qK���2��֐���/����0��Ǌ��ݷ��>n������C�:_�l�"�VWv�2;|`(є�,�U��/!��s      �      x��}�v$7����S� �z%���,I���doj�ᴈ�<Nw�Q�����]��tF�z[���������>dt� �Q�N����}�pw=�p=����Eu�z7�lV��j��^�����z%�����~���Ww��x���h��t:ji��/M�q�Y�D�Q9���L��z�X��U��m5Y|����b���ͫj=�U��տ�p�ſ~5@���H���>X%d�<J���ʫX#WW�_}�Z/���b:{�XM��^`�|��&����jWm����d6]��7�o���W�-��{��ÿO~��>���pRm��/{8���U����������u]���6K��>4U<�nz�ݬQ�먬�:��[��2V�k��춁a��b~7�V��j}��j:���j������_O��]g):��g���W��v�z�O�c��b����d���g������v3����Q�X����\�.H\P����������|�&j�벡��b��gp��ᇏo����~
�W�v���Ѥ��M������֛j�m
L��-v�^і�_�)�LG�C:	�g������l��n^�����5>&�/'�~��}��i �e���`�e�e�^�
��x��~���$G���&oa�wk�v=]�N~��oS�_oё7���}9d�ρ��]0�g�������V�y��N�&�Uw����|6_�o���@��!�/������s.q�
(���k	�N,v�-:�|3`���~Y�a�;_?�����bK�f����SAo��]���4Mu��~h�G,�� �+gb���I��_R���^�ӣ~x��}�:@l��W����JO~�#�-���7>rv��>�v�h���时'^���m�������Tۗ�Þ�8~�C���O60�v%�u��C���/��4�ȳ%M���S��-[����w)i�-i:��"i~�4�H��J��~�-i��I�7)iV�m�,M��^��p���Ko��NHT�B~Is���9D���>8�md���LH���9Is�nÒ��nZ+��1�y�ݴ�&*a����4g�6,i��M��!P��n�hM'4B�_$�/��I3�K�����L�!D�j�B0"1����K�4o!N�7�E���VB�a�ެ5̥O֪V��<�"�}i��J&� �ۉɪ�'�z5\��VZ�ژT�v��[e�m��*�^Wo��±�z���K!#۹�?%՛��Q�q*M���^g$�@������z;\=d^�xT�Y���sVj!�i;�-��V�Z�QF���u�2r�ꩭ��OI�~�z{���d�F-}�>X/d��-�y�)�>W��.�Ru�>H������SR{̨]��R�S�����>�OA�RdT/��5�J�$d��Q'6#i��������i�j .F+�|�՟2=% �h/yL@�Gs� �"�I�4 ʑE�'��/y� Ã$m�{�<0��0Mk ͧ��!�7$8tS��P3P��0D;��rd��!� ���	�o&� b��=X�U��)0� �D�m�
�N����ȋ&��YĀr���d;
��G��AF ϧ�0"�k�=�	S�B A<�]l�����Y0j-�?F��k�w�)����rd�a��k�`sh|0� �/-h�?�O	�a��	��iԏ�W��ˮ�?=%�� ��z�bh��I�ol�JQE$��I0:p�At�� ����M{i>% 2X�YEƃ���	!zm��U��O	�DTZ����!��$���S ����3F�?�� ���`�� ǧ@���8�BC�6 &8*lx>% 2X0(i!�"�|�B�С@��Q �)�A�Aq������A�	�nh D> t��2r9����E0JCC(GѠΠA�����p�� ĹV>tD��S �# N��T`cx�5��nY�)����[zаAT��U��F
�]D�zx �1�����F1:��D�Q�."B=<Ƙ�c�ܓ�Ӣ{��( ˧��p���Bo��P
d�3�����h��[Ee�;��J���=��ڇ8�+-�^J6�s0��A�P�.�@=ā 
�&�5	 I�� �|
 �!$���ݠT� !�բ(�q��D�PiV ��=!	q������ �	�u���4�\�#g��&@9����\ xD����8@4�B9��M	B�X� -ؐ���	8C�p�1E$h2HP�-:=�P;"�<7J
���S �A�&���u#ȝ1�
�oǧ@jB27Fa�8� �]���� �`B� e#��ō����=A �)����5�;�tCg�ϣ���(�1��`B	�G���	��Ish�LK>% 2�B�j�l *4� R�c�$Z)`�S �	�b4�`U������vb^�)�����FAa֪1�c7;�rl�&d�ш��d��Ü����M(@1��m��hH@�
�H*On��� ʱEDh3�t�h9;�귨] C����ԟ��>�'�΍�"�	>�����ԟA��:�!�ش�(�t�fݪ�c�h�f� �Ԁ�B�M8�Yr� �O �A��)�$��.�L��M@1���0J�.�5Đ�� !G��F	]zJ � $���{%�.��
 8��d�Q�+"A7L�����FF&�m$F9���0	J�(��3#�nL��	�LD9���0Jm�� B4혘9���m�D9��]��G�wf��� e��p JqE$�I���Fp������m ϧ�0��h����M@�pz8�vX�r\�aD�1��(�p�!+3QG6a Ÿ"��$��Gr
T �7-eJ�5mD9��}b��b2�o8 *Ǽ	t�6I =%�g��Uʸ��i�0d5(0���@9��}:���|L����#<��r��X�g��� ��� �<�$�- ç@2G]L�b��e��8 k���)���!�`���F�z�`�����E<�3x��*>������h�����_D�>���ץ���4 T�D�IQ�/�A�A����m�)�M�B0h:jbQ �) 2x0�,�4j ��!PD9��C�n�A���!�n��]�	�)0L��;�N��B���80�I�� ŧ�0*�wL�c�z�֎1�ݴ�	ED���r4j��5�BQK�XPcl�PJ(��0L������\�oR�"B gK�ڌ5˧�0*pBa��f����;���h0Ӡb(¨�Z�I	����%:�n;��S`���h���Ղ0P�M��OI��4�q����� �1	z,�N���PD�q��HP����Lۀ4`�r��(���>́J���e���k 2�� �u;)�S ��+����X@cH�1����$ʉE38�M���Bcm18�_�6_��"� �윟��*�b�(ʠeA��X0f����B�L�Wu�N;���A��[>%�g��v����Y���8�E�����XD�1����xԨDc~�2[�����)�?�S��B�H���Y
��o�|J��`@�i`���5��O:j����_�4��lEP�o���r��+D�*����\Bo���6v"G���,�_%2x��:�����`"OA��Lh��ώ�7n0��s��6-��J dp!�w턆��LA�4\�h��U� �Z�c­y w�m�
��W	�:��ܱ��s5P���Y0b�������a�Am�c6�����Jdpbڷ����z,n �xbA!��>�;����uM�'�����Ջk�o�K9�!G��2��r�-�xuzYf�j�v8(R�C��T;�Y�N�����uV팆Vy(Ԟ����QYu����M�����j�O�srR2k.�C���cu���{�6��z��%�CN0�[�e@ў9͜�	���樌t�G��K1��Khn/�P�&\J:�}GL��+�p�Ѹ"b*�R��r`��}!h�v+�i/�ˌ    ���
��I�0RL	���|�eG�b�qi�re���d�šv}�`�b	.7���b舩�����f*�4���#qq��B���ո8�T!�z���X�+���"4��N����@���.�X������\R|��x�o��X�p^r'�b���@=���!�6T� K��3��no�N�a��
��+٭<:�iY�l,��v:�ɥ5 s�#D�����`� K�C��?c�/�Ƃ?���#�ZY}�7��Xއ��zI:#��xzdЈ�g�l������v��+�O�FztXuv/g	������I,$��YCڱMa8��s��z��-�b���,��ɫ��������]��zM�\����`n�j��(��^�cΙ���"��;36ȭ]�Ԏ�k�Kf��O{�0F�{�Vu���<�s�V�t�@S;Ʃ��^{R����?���M�������1��O�}�Ya��z��U��8�y��8T.��9g1��aP��4nխ+|YC��`M�&i��.p�Y����U1��Cr���R'��<!��i��b6 Ch��|]���^<Гk�d���b.��#Ϝ�R �ki�Fx�b��뮾)��sq�=@�\�a����|3�/�^+տ-���C��͈q��q`,�V!�s�����8bv����N��%��玐hn[-���8Z�����Cuڃ��� ��^z��G6�*����p�������?��S��	R����D���FuK��bل�$q��k�8���?����8r	5J��c�d�"�
�k��5��UDa?�gT�V�8@d�& �?Nќ�d�o���R�f�&x�2s�@��1ւ�|�N�X�#�Ry��hy�#q@�I�\.���(쟋�ds�s\����c4�a�� 	W?�9\¼�ɚ%�CM�K�2F˲#(i�e/�D�#o_��!o�4;�r�I�P���H�i7Z�!��%}$=q&��y�<;Br�L�Hz�L�C}f�h�v��"����Z�cz�к���E>�#�I��8�4�/Ҏ�\$�G~�i*�8?�ij�N;�rQ�=�<{�&��Pk�k�Pj�H.+��H:���T����j�K6��՚t�z�;�k�`;ʹ=����b��J6��4��EJ_�	;^�a��ھns����|��7��[ۅ�H�#(�dۗn�j7�ǫ�#(�l�So���G��@�a��۾�S�
��u8�p�8Uw_�i����6�2�p~Ju��W/OL�����E1]��!�`#����xB��7����'z�LwxفlB����`ӝ����ӬT{dơ`��da��=�i�H=�\�0<N���?�j#@�|pJ�.�@XE�3]��L�e��<��*-��� @ѷ��*� |>o�:�Ӽ����a�c�;-�F���a�5@�i���H�re�1�'�Y����a�_�Bɋ6�*�|P�\� ƽ�j����c-������t[-���k�s}�B݋��1g��Kn���7�T=��z�@Q�PHH�<s+�P`n)3Z������l(�c��n�ph_��r���$&��&��N�5x	�0�D�����8?��6
����#�a��I0�$G�g��W��<<i��K(�2�;ێf�իϞ���b�21�GU��Y(S10�-��S��\,:`E=ꬬ�b<���Q`@�r�O���E��(���4�b�m�s�[���	X��7ced�/�9^��_"G��1X�א�9+���E���7�w�J;\���G�	7� HAԾk"��2˥�Γ�h�y��3��^��'�Dg.6������]�P�;��}s��G�3f��#�!��H�������P$�|�Ht�e(uX>A$:�2������� �`$�|�Ht�%�q?M$:ĒG��$��'ҳ�>��a(�f�Ģ#0�كy��a0j��FE�#0Ѩ���9�G���c"�����G�("ɣ��
b�����3M?&����6Ԩ�t�f ,���Ò9�K�L����'�M{<����al2�����i���P?>5r��t�"���Ĩ��c�>
R�����g(N��<�SG�J8[����Q�`�R%��L%�*�����v[�F��z��q�(gs��Mg���TGP�m�t��(u���Mg���QGFy�q�(g���qS&۝As6<��9=���t�&s��44g#��䍞���|\:D��3X����Og��Q��O��ծ��m��8]����so�t�S����"w�3��h��f$��Ǵ{/yRH����x���a�-ŏ���`�Ì��{s��(�1�p1~,
���1A���-H�F�x�1=V�C��j�X6�s`�tTRPu�X+��8�ǣ�ɱ(\f�X�+^����(L)�Έ9ʘ���'�(~��z/�@�I�Mk�Ӳ_��"d�U)����<֐��Kn���n����P�̼���c�8"�=]|Q_*>EI���=�{�^s~w�[��j�|9�_Lg��w7���ټZvד��.�W��x�K�Խ�#Z�G���Ws�b�>����d�&���W���u��T���ɷ���l���J^���_�On�����j��c�/�+�_M���Y��ذl���z;��qw������_O��]*��o�����c*fr��q��/��~r7�O�����\b۽Y�l���vϵ=���������l��~���͞�����z������~��ht���=�BϘ��V���Z'kv�d�j}_-o��b:G�d��o��6���_}�w��2�U��>nY���E�����׈���ěݚnYw�88��=�o�i^=���l�F����b3pԢ����5^f���|��um��zz�C-.1���}����|k�Mg<i3�i��?�ȮA6�?Os��K�*�|wʧ�<||���np,Y�X��y�����F�^r�o�3��zc���N֝��c�cb>��G�Wb�K��[z�"J�������٭g�m۾x�;PD
+k��|F���Z���~:���O/�N����"��k���dKW��ar;��55��_z���|3������2�W;�X��H�������IyI��u�#5v ��^���r~�fu����Y�}�e�N�J��w���*���j�5�j6�ߢ��6�W��;����g��><v��"��g�����+-x6�<�}��}j�l|�a���ez�lb~�U��~ф���솋<.ʝ���P�g7~d�왦_t�'Ӆgw��(��Y��ix��~�Z.������+�'3�����k�z������"�t�w{���3� �\\G�F8�2i���To�?��ԗA�@�ʩtCZh��y^��n��8yC���ōiWt��BV9pٞ)}��,6���*.;��B���'�{��9��/�ˀ���xL��PC� J��B9y�B�~s9���"5��żNu�t0BȱBt��y���{��)��|{��� �Ҁ���;� x���6\:Y!B{�� /p���%�#��_����'*aP���s9�����Jg���GKa꣞T��W����/v�����tS�,�5)0ҭ�1�:+�z���!���*�����t���i!���4F"�U�F�F�ω,�b��A���#v<��>���P��\7C������L�&�p�9,�ަO����j��%J��,y2�>֝�'A󺃨E��X��'"��t4�҈�<f��<���_�>�Y��'"��3��H��TJH��Aa�N�������Dx���ir�&D6��
l�4&�s3�@�y�	�?�s���t~���9���S��KC����#�H�BV�yG���b�qz�XU.����ț����!P��B��v��xxDt��3E�fP�o�b��s��$"�	�v'˓�y�u5�S�>��v�aL�������)��GG����-hO8��e�{�=�����߅Ơ@��Z{�ߟ�,��#�Z	�T��`>��f�^�DdY��c6+�-mm3�Lӵ� �  �ٱ�D���~���KA<�]���PC��zq��O�^�t϶lWN�AB阚Un�Z���v^���zu~�јT��p�k�kq�&�fH�X׬��fs���mv+����<ޗ�oM���|��ѕ�y׺�YTin���(�yA%��4�^�չ�(Ġ�0��q��O�����ʒ�tV�xFl!�0܅%�����k
#�!�`�C������ԧ0l�ow��&��}(�M�<C��w"X��AP5-����!��AS�@$�d��8�9 t&�×�6!G�<�Rxy�'rP�<!u��πx�S�RtU��Tڙ5{tC����t�^�Yfw�ԩ�dg?X��&�*C�B���`0�p�f��d{V�*�v����1��K��KS��ggծ�k�R�v��u�6p+G ;�n[��{V�&�v��%=��e��n�茠jwav}�������Y��A �!,���X��˄k���UF�.*y0��ݵ�vZ���s����p�:�v��ȝ;�v�gC:�U]XZ��d�n���i�W���gS<��mV�y:i o��hn-y;�V����e9����٫��yh�W<��J�Q��|?����{����*
W0���Z#�ݏ|�͈�Ϲ|�z4��~\Oj�硶�9�s~t�Θ������acˋ>u:�6���������
�?����Z�ަ�G����䆤t��bz=[�����w�W��y��;<��PDܫ��Lbmy�:/�2g6Q����@����F�E�����Ӽ8���|[!�$c��|�]�v�l�Q��H^Y)���:�!Aл�N3�xDv4"з��]�����:�O��xHn$
;^��W���РҜ&���XH i0 v]�Iޅ��{�H�Q��hP����G�֮�R�o����M���j�d���݀C�&�`CĀ�_���Ow"x�I9�;���YUm3�������j9��7)���������j��0U�I:���g)1k6��n�k�.����+�&����8��_�=|\V�:��N��L��R��ÿO���&���j�U����ū�j�n���>�8}��T��<D+/���4<]�`0��=�|5]�O����;d�����L~��q9��N^���.������M��7��J.w����盞5_NT5yS��]�,��,m��A�k���B�&��1ፗ������so���U�L|�N^��z[�[������~��s�Ր��љ�ˋ�{�dۙ<�A;Z.�Y��\S���IEO�<J�ë/���v��|Y-&_��/���j�[��0�����~����d�:O7���{?�͙�wW�H��ɏ�v����t};_�f�ג�T��Q;+��n���=g�����j�����NҔj=}[�>.�BZNxb�f�`!�|2'9����{?�n�����j�Θr�kҘ����~�ߚܮ�����%��^-�'~��e���=|\�&��{�����
�C'�c��|�� �'xJ����G���.h
�KF������|[�4�4��Y�����z��o:�X��z�1,s2$�L�����n�����l�l'x��帴���L��L&��N�v��j�q�v��߯�Sa
�T؁�h��ݨK�o_�����^��M��>��}��������f�<u?�U��b=�|�3ֿ���W�����\      �      x��]ے��|���'���K
���~YS+�$�gɕ������L��-۔�ĥ��и|�������ǿ�|�z�ϧ/?>|������&��n~<>�x���'�����g��#�RT��m��^�c�l-*UZ��?��M֘��'��h���ќ��'��O>�)I��)-�{�Ȼ���?Ѵ�A��G��G�|$��O��������+���|]#7�w��=��k�������u��|ޕ~�|����ϻ���������⛄^*�a)���T�~����C(��P�Iɝ�Y}��>By#���X�{����CAi�w�!}!�PS�����C��y������b^������,��ʇ�?������B+�aJ�����i��Z���đH	XN��a5�t��B�&�j�Gk�����,����b�=��k�S�HGB�$��o�%���$�h��H��r$t#�Y���4;������ꋎ�Y8
�LXY�$L 4{��$�D�0���$���R}
m9Z'Q� ��y���Z9u#т��j*)���ը)[4�84�C8dA�s����I4�RC�<	Ɛ��"�@"�*,����ti-jZr�	N.c��m�ij)ԅDipl�L͔REN.c�%������X�k5n88��y��}$T��R�whDq��e�3El�@�.j��E`0��M	N-�n$�&�VHF�-$Z-ZQ�%����l$Rh�9<����g78�Z-P�+rzm !ٵQ�Tu��V�7�^�:�(^�T�,
2����l��˸�e�id��,kY9-	6���^��˴�e�)��3f�:/+"oجB&(�^�M/��P�C�5�ʘ��$��p8�L�����D�b�b�6*�J�X�M,[�!3��d����Va6E�S�4�e��ʈ��B�BjY����ĩe��3�,���*TZ�.	N-Ӡ����mk�*e��[H��J���2jYC.id驮��>�$�#��eԲ���k¢T,��2�'���$��)0�%�I�tB;���<�e�CE�W��Ȉ�C�J�2'�y�K�5���t�=��?'��XeN/�c@Ƈ�r�	�L������S�<(fCL�-�	�?��
%2'�yK��Z����g�Pd�॔Ϝ`fHT�w2�=�K��
%�8�"�	f��qOx�CM�L��H	�]a�N.��S�X�I�� ʗ�MN+s��,�R\)x"^����ʜV�6�@l�@�ikx+p!��	 CB8��0���M�DZ�8Ht��V8��8�h��K@t�N�1�O�P�ʄ�J�V.�ۀ�A�.�NzeM�7���R�	��0`�s"hyB*\L%�X� ��b4�g �\;/���L�pb)�Xf4\!
��N(�,hh���"�����D�
�5�5�/"ȋCd���K�2K����s�`^���d(�bʠ��"�6$���9���PP$8Ŕ6��4�ڣ��E��,*�;�SL�*�Q`�ubJ��=%�Hp���b"�ל�������<�G6�PB9��A13nժ���ZFB�?�;�SL�CYI���";&�5r�R9�T{�#�T<��k��_|+�:�Lձ#��Bʼ&�`���7jaB9��A0�h�<���a�`��js���zi=�)�۾vl�A�0O)�\� ��% ��v�)�i������F9��A.�b�2V��\��(���2$
'�e�K�;L���9m%�ϱ�iN-˦�1�$XFP���B��	LʃN-KHT�f���9�J��C�"e��˲�eD�?�k�a�%!�s�j�/�XH&��!=�=ȁ�17-9�,�ZƬ*��>唋G�
|I(\xY8�,�qC�Pd��8��QQ8�,�X.�K��(�'/�9�n08�,u$Q"f@-P�u0��rvm\:^8�,m ��F��S�
ID�m'� PJ�T����h� fE8�4N-mPK�7M�oR�U#Z*��K��qbi�XjJR�/�#�\]�fHe�ls����jY<�V�U#�T� w­��6���O�v�<����U)"1�Hpji�Z�Z}�j��2���=�ㆃSKԲ��:���5�5�o�"?p��6�o�&�N;˪�^�&hr�qri�\"��s6YI��k�ĥ��ɥr	9�%��\7lT�py��bHTN/렗�J�m���c!�c!���ݣ�rzY�H�$Ԛ���*��(��M�̺	&~ej��=,�]}/ܸ�z)�`�<��b�^�bX�����F#�F*'�uLq[�o�:U�10$�q +'�U
�Wɚ�SX��5�_�E<A����e-	q�eb� ���Fß2�8*'��P�)�0�L�~�qd�@9���^���v U���)Q}�_�,����em�]nC�-�܏!ևZr������hDK ��oaAh��)�V�80���M}�R^H��B���E��ieK#	t:r�<��DF
��+4n�qZ���b
��}u퉬H��7��G�8�lrAb�kɶ|�K��҉ȂS�Ʃe�2#~�VH��Rx��q�Ĳb����a^,;`AA��ǟƭH4N*� �� �֡�햾�?ŁS�6(e?8���})f��wj�����mPJA\=^0��+�kɐ*f,b��?8(d�w|B�l��ϓD��G"�$�&��BۙD�ܸQQD�����<OBԂn� ��z��7^*���y�8��A�!F���r���H�o��O	J+�p��4Vz�9@�jD���%�q8Γ
Fߐ������ ���l��ȝ��y�d� �ۇ��e��ZR(��a�ʆ���$�tr��g'i�V�0he?+�T�"�\N�a�!V��tn�~��v#^iY+}��j���W
7�o����ÛoF���_�0>�h�DqH�\=�J�����"":C��A��/9���d�%���@_|x��8��X`2D�b�:_4��ð�q><<�u�J�������ϸphr�E��Bn�[�W�*$�1xK\�v�]�g�.؅��=]��.��<�or�f����v~������@y����̰���yv2���Q�QSg�+��9?�1�N���;H� ��}�ف'��?s�[E�gW.�A�|k���,����O+�36��v�f�����\�y�j�T?ͮγ��JC�#��:��`�2\�ɵyr��>�NG^����M6λ�8�
�/Ţ�\O����"A맶�L��wqt�|��U?��8��m7'�5�z??��"��B|�lq���!ؕfp����4�yWGW!H����s��
����Ҧ��{�8z
��^�.zέ&���	�w~X��D�D����N�O
B���(���|����x�'��Ɓ�z�M4_���<o�����χ��������៯$�H/������d���N-�W����ZG"�I���m�z�+����c<�<Vi�8�<���;];���DF��Q�� ��៨c�7M��+���t�r�������ݿ��$���ד"5K�"z���V�^�x�tFl��3����u`I�X���25�<���a��]]x�rF����l<��[\{��7'�+\�1N���n�9YF�JÉ������M'�y�q���y}?�+Wܔ+��U���h`^��\y�\�܄�+n��o�D�/�����7�J�w���&40�\�lN��.�����7咮\&Zy��*�so_o���L���m;���@v��m��"3Ȯ���x_d&�����D �Z޶�}��dW��v�/2��jyێ�Ef"�]-oG �"3�u-"�}��dW�\sȮ^��"�]-�r�E �Zx嚋@v���5��j�k.���+�\���W�W#���|�����ݯ��w�����7n�?^h������S�`m=͠�3z�lGO�L�����1G�Zg�.3�rF�+;z�y]g�uC9;z
�]�+*3�e�e��r��͠ۆ.��q�u�Π���j}���z�Ao��[t��yb�=`��=dY�n���;3���ų֩�O����*�Ѻ�6�"��� �	  A�U��fu��70�����^�8^hV�_{��x�Y��5��fu���C:�+4�����]�Y������
���uE�t~WhV�*:��B�:]ь����uE3Z7��_�_5�D����]EGھ/4�󻊎���Ф��*:���B�:�����M����#:�/4�󻊎���Ф��*:���B�:�����M��uE�t~_hR�w�hݴ��*�Ѻ	������L<�
�o/"���vkj�DoSq*-�����Pw�!������cK�!���.H�WUᅺ��<
�/x�)�� �㧜����3�Gf�l���Z�ٲ�$tB�}G��!�!�C�f��b'��X�6���2C������Q}Ǡ��e?"���i��B����O)5�_<[�9N5����B�e�!�ЂߋU4.=$�w[��Y�!�J���~<{�C�W�X��^����{��N���$�?I�:� ���~W�Ĥ�3B}޷.~��"��=jK��_p[�縺g���U��3���I-�o����k ������?w�������[}ekn��0%>��-'�[�e��hȴA�d�!�5d%!����LA*�אFB�l�u
�hH��T�Ґ��cY�FC�k��A�ts��ۗR�!������r��R�|�<X�����R��e<�Z�������VX�L�n�=7���q%Wh��]g+��3\�^�q���=&r\�XY�B㖭�s���%�c��k�|��Wm���Ri�zƍ1�y��������q��@����&��$a_2_
�M�}n���K��i��m�|�x)�7m������.���>�m�Yӥ`ߴ��6M>k�웆�ܖ�g�y���a_��)��b���~�����%��I �K��3���/�,.�w_�	X\�ﾘ������7�|���������ІJҳ�{�����J7z�:���qP�)�^�c��J�k��g�?��66�����66��M[c}]�����WS��f��'�R��!*���66o����sol+�8�Xa{G-����}��
�X976����ZK�����scS[FV�Ye�[c%d�#[R�0�4���=���B'[�Ɩsc�jlK[�_e`�jl[����[ǡOF���m�s[E����̨��������J]=�O�ml�����⠱�>)���6������7�����ƶsc��C��������V��7ۧq5#�K�Tc}���f�;�7V,��1Eb�t@��d�۬��Ml �.�䯹.#[�qme�t?*���V�	�V&~J��S�$���Z!�ʄO�"|Brjה�V&|J�ᓿ}Yڪń�&6|J��_p�-%e��L����'I��O��G�`x�����|a�����76��/-6��t�ȶ��3�X�d�ɚ��ݧ1�x2k���d��̰ƥTrd�͗6k�wMz.M�,c���f��T��.��"�6�/mV����9��5���|e�%�w���\���Lʓ/S��L+�X&�ɗ)O�����V��ÍV��B��q��X���
+Pr)PF[�:�	�V��B���y�y*�XF��R�|�q]�Xk8n��
�\��@�R�B=���
�\
T�`m��b���%��o����\��2%���zYG��Ә(�(���ْ�q�#�@ɥ@EtqX#�H��)+Pz)PS�UV��J���XF��R������W59��(�	�.e�5�(�	T�g�����^���mU"ZTV��J�Z��FV$"D:��>�>�$K��oya��^�S�*�,6߂��r+�?��|�z���_>�K���kb�9�W[�-LH�|��uS�7ۭ�+K<~�1kG�U=�����t�`�	�/<�\�k�m�Oe_y|��x��w��;��}����38�1�'`�-������[q!���_�믏W�X&i`�qs�����
��=���W�Y&yd���o'"�I��5IDX"2�DgҤ
Ŀ3�G�B�*��o��������Ob�*q�o+��,�K.�֏���R��RI4�4R�nJƖ9�*���G*~�f	j%-T����/�Xd��E.���[K�wSQ���J�'��H��t����ǇG���G���G������t���*��D��� Qpi��V.p����F8_rQ�K&�Pp2�ip��7�~<�1v�i�����?,?��7��a�V�x���5$0m���& 3�w��6T�
(`[��TPw�~�X8���4o �z��_�F����QچN���u���Ih:����f
4?*<�P��L����t�׻�Ϗ_g#�����ye��v,�+���	��
r>�DU�fl��G �����%��)�:K@/	̡�Y�2L�<o��v?��u�A��`g�V�������^E}��d
I��|X�|,�?��/k��,3��	�aǬ��z7+SO���v��c���4�L`ˀK �]�u[���73:6�K~��vٰ����գC�&�m��]��
�]'����E�m����o����H�e�      �   �  x����n�0��λ��M~�EB����z��I\�l�����M Ai/����|ΎW{��n�\	)YmJ��	��ͣݵ����nN��up�_��g�&
��zM�
\��e�m�2\E��aO��g۱B.�B�I���֬yLW���f"}��m�1����hpakZlj�� �c�-�$�S���8���?bO�$I76���eNF���o&���A&b�1����Ȳ���p�D)�%�mw�%�ar��jX���l��^���p3�J�����G�!����luKr�JX����C�[�s����:�[�.`cm;�]?�Ɂ	¨V�3���e�9;;������z*�24�;[� �Su� �zg��q��ցބ�>-���o�j0�#�5���,ް��CE߇p"      �   �  x��U9r�0��WL)�]��*��sgV�K�Ҩ��c���p�P�7���= �rie�(� 1��ӍՖ+m�r�;N�zS]q
&�I�r�J�]$�]�^��F�B{kH���ݷ)x&G��!6��U�Y�5�P1�ykB�_Q�1�cR�ŭϔ���ݖ�4F��q��`�!M;v�����ʵ9��˛�IC_X���i�9� �!L��3p�([����g)t���PZgJ��pDxs�`S}U������ڶ{��^E0>/�&3uE|鵾�B(�a��s�U�����?����iNh~2��r&����m��_\��s�s�M6}���xM��� S�X�Sv2@�:#[�n�P.�V��/wL'��c{;���?CX�ۙ`��tcn�"V�j�u��;n;A�n���S��I��Ә$!(����J@����q%wJ,3�^q���r*�z��R�4��PI
G	ܟ�CN0�pOQ��B)�x��a�o���p��Ă_�<iᷢ@G��%�P�!��x=[�e0���X��e�9h=�nђ�$X� ��/FE˭��0�(r�l��({P1����2�S��Df���p�ԅ���!�S�!��7ۡ�T�)�m�.=Ւ�%�J��(�sHt����JoY�><�/���ڴ���%�,��9g�`�iϥ��CEV�,jv��-=��#�7�:�n����K[�1�]�]NFX A�}#g���L�릮�_(��Q      �   :  x���]v�0��a/��@a�����%9�ČCh����C,��|���,K�cWäi����/�ʂ����3�|#F3n��øa�zSB\�iHz�[���c�9_G'e.j��f�v#�iP�6e��1�Ft�7��\[q#0�h�� E�17ն(c&��w��<c�.J$��8��s8���s8�3�+0p."�"0x.�����"��������kf�\`u4X]�'��� �S�{U#�2��
D|�� �} �7x#wq� ��}���4�	��|���v�bj�*#z�܂���3�����<ڂ�f���ݐ���(.P�w��j&'vU���Z��NG֍'���㖎g�s��X�s����Zҏ&+ds� 8��0GJ�"WCܞ��'�UD����#��z%Q�$�N���8P��8��'.��T*���=�, ka?aζ�ގ���w�]}�#��:)�ut�s���dъ�Z�UK�jIW]}y`QUӕ��D��m)1�䫅���"�5�S���SLX�Th 	5���[ü��t�b׾Ѫ�oY�d�(�K�x-��¨���v:�=G��6��Ah���� ���7m��G㘝H��g�d��0�Hzq�=��o���X��A�%���r�xe�,�I &�s{���"$���11�k�������E밷��Ek(�2� F�4�x�4o��N�z{� �z{��k��(g�D)w�FycU(�=�YĮsoiqʿ�鍰�T&�7c3��z47�^�����yz�%�&IZ�V�7_�� �����U�N���O_�XZ�׾��m���)�n      �   �  x���Kr�0���hJ��.1'�F�J�*@� Ǖ�O�	X�g����w�"M$��� ��"��(�S�S��	7L(�L���Ci,eS�˟-<��^�6�_������ՅO %U?$hEGߟ���hC��D�_�]�>�5��y�[��ν��J��b��[֚�t��Qe ������W�Q�4�X�]�'W�wc��T��C�tfv_��*z�<ƜTgLO���2Ř��r]���ԇ�}h�[*�4 v����J�S�Sa�X������-v�����<�_=2��R�[W�˭��<��2e��jt���'�m��0��ެc��%��bݭEԻ�$B��٠̡�Lm�Nh�ђT�m��È�r����],�Rm��MNH�(����l$r�-m���3��\L'�U�n=�&�{cW�]��c���2h�֤�2,�c�kqeR�̍�u3�[-��=5L��|(]y���>��o9����]Kj����\�����>~��cn�P���V��@=��bb7���l6�BjA������	Z�X�"�������I\�:|5������g�["ގ��ǌ��t�g,��n:�b>���)j<��ؤ7,(\�l�:�����o0�1�T���l^~��      �      x������ � �      �      x������ � �      �   H  x��U1n�0��W��>�s�.ݺyX�+��&��="K�`(:0%w'�6��`���t�v���S�p�`г!���8@~@
"P�K����d���;}��H��f�X�D�Gw�eN�k�y��ݞ\�����zg&Di�Mʛf��t>C1(Cbq$m^Pu:�&�̃W�Oyw\Õd��J���/w��m��Q�%�X(W��Z�����X}-���ؠ̈́2%Ҙ�HFJ�@+B�2X�����@��eh��,����&��'.�LR�5M�`<�\��O�<S˫A�Q��sh[4IT�95Z����n����u�[\�      �   �  x�ݙ�n�@F��)����Ҫ��*�RE���"d�������c��d�`0��< r�;�q�;����4ʼp�m� �B��g��
����y�N�]~��+�,���ʒ*K�l����+������rA�N�Vㆭ�5/�N�8W�[Qz�A�!;����դ����L;)L�\�ɢ(}���4t?����s�cU]������zfmZ9��N
�^<��ڭ��򍷒i�oG�u����]צ<����Ǘ��y������H�'9��	FN8r��`d�Èr��������"X�`!��O���� !ҋ��]�#_�rR&Q�de��IT&Q>H~�ik�Q�F!��h�Q�F!���l0��Ȇ#�l0��Ȇ#[�l1��Ȗ#[�l1����c�(:G���K#�,�h��Z9;39�"���Jj`d��7�����f��s��-W��* ����%���#�Z�ۮ��j�N�G�>�A}��>�a�!Ї@�/8J>��������d{	�%�p� %Y�)(-Q�DYeIԁ}��x�h���5
���>4�����чA}P�(�0�à�>��p}X�a�����>,�������n��8��GO�:bTN�4*?ӌ�J��E/�o�Tm/�52���eOg%/������0N}���������&��_�l����_���`VÞ�2e>��YkG�8�n�jţ$=��6�n��l#�5]Ǐ:�F�x�N?}ٮO�>�<}~|]>���l΃��C�]/�<+�������y0_Lݴ����|̎��E��Dխu3�����$�x7�(��D���'ַ�ڷ�P����"a�Bg�*��R��%<9U��~�~�A/�]�#��uQ�f�TU���(<VU9��%�r�.5���d�*>�u]�F�ؤ�&�I�M�֛�&��h�4D
/ �x��A�������&�����ߓ&�      �      x��}͒$7r��isi�g�U��ҍƟ��94��egё���
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
��j+ۼ�x��ͯ_~*�O�G^^�����zD��p������No����E��ȳ����F�����r;ƇLІ����^���3t�ޣ&����m��Q��(�YگU����z����wլ?/��������<�1<����Ù^U�_���f�L��N]M������~A��w�-`z�^���륓˘�T�_�����j�z�RN�\Ns��iEi��g��M� ��3>4�$��t�~���v�C^4=���������f	r      �   z  x�E�An�0D�ur�����iDe;����/h�������������?���~����:ۿ�+��s������akX�ְ�u�c�X�&6��Mlb�m0o0o0o0o0o0o�������y;�+���-���{bO�=�n�k�y�}�M[i�J�Vj;���Vj;�kX�ְ�5�c��ٱ���7��D q �K��7=��eg*[)�����份��zg��ٴ���4m�e�_u�}���ҲѯZ���l���b��b��5�akX�:ֱΝ�X�6��D D�j����W�4_U���k�Ml�]^�ΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈΈ�{/�^��{��ռ~sg�o����� �      �   d  x��Wˮ�6]�_�]R�WH��vY�E��-�.�W��I)R��ɪ��]�q�	�I��g��%?��fa����<f(�W:'(�Dީ֨>�؛�#����ΚX}oR2�d��I龷�����6h��NQu:B�$�_�j�ot���De�>S�?>��~m�V�-B��9��O��M��͑6�\��Q2A�����C��̓�Q��w���i^���p��������n��p$�U��5Ũ]���'����q��p��o�����h:�p�6#�o�\9t�~GF���`Nԛ�T�1�b�c�E�"dc�ဋK�!�Y��9�Z�şv8 RL*;aj�!�9�z���7����z-+���-��"O��x�#á����v�ã�hd!��C���&j:rdB���W:\�of��x��&LB�n�YRьD���L3�X1A�&F�s1CVL��[�szfɖe�i�I��R� ��T0R����x���|�L�c N���r�
�L,C�Y������&�A$!>����Xr%M��m�u7L2k5�Z��]��̰���m�?K��w,;�ؐ�H���cُ8j�X�8�w�"JD�YY��v�Һl\��#�	�ɺ��w���1��ά�ސ��f�����;�H��M�C�^�Fz��B1�����>��Xzv���(���{����&��nϓN#KRes�	��	�n6���줭����)�Q@`�1�9�Z*Ç�ԊR�4�acR]}��C�3��\�x�����}�O��=�{�mY�
2�^*�5}�e�:
���.",�ǩ~�IMc�f?dG��W>�G$�ɱ]�zŔ�-+)�7'w/�����ܝ:C�����o��?�"�B����`I��L)�3]��)���z��@G��K����ӕޟ�g��&y|P}�n=�Ӛkq+�4=�Ȍ��".> 3|Q�b�c�c.d�0a�R��ѭ\lx{���=q�^+2��XX#��.+'$�U�V}s�{����{�K��`�]L�n���"�6�x)�#���羘O.�k{pK�����:�W��q��K�M��@r��Hr�
e[�������w�X.Y�&�{��Q`�ė�\����\�������^�7�w���쫏p,�y�;�ŉG�dr��Ȓ
AR�ol\2�r76��1ݱ���S�A���$�qO�`�~g��n*s�z񃝵.����c�F�,Ű�j��+*�X2��>�y<��S�&+^��g����ƞ�����#�M7��rr;�[]>�ʅ����1�����|Yu82�.NT�=7���������	�$MR� ��d��E��nz�_F�D򑂯ǌ��L��*x���m������W��+t�>      �   �  x��SAn1<ﾂ7�@c�i��fE��r�%:%��6�d��Eo������uڢr�Z$ș�Pr#w���$�PN0�@2fA��#�P�H�Wd�I����K;JR����嵐��F���<�X��**@T�M��y���[{J���1����h��gPy�����oAr*%Ұ�
���$���+�I��Fe�k�1�a���R��4OG�ؚ���d^���}NE�49b�z�Y��Bqr��4���/8�S��3��é���W�mܰ���<�*��4��[�;�V�9-L����W�kC�@m �yzt�Pu�Ƹ�����T	�ygN���^�ccԩE\j&�EѢ\@+��9kuGJ`���+O�)�U�ab��},����t�꼯�v���ن[� ��z�'�v�oaw}s�3�.�P*�<Kh.��E�l����ÿ�(lr=!��hO�Z��>:~�b��_��������*o�a����l̑V������ö���lGzc      �   �   x�M�A� E��a�bն��	���Rh������_x������%��e,9�:��;�������a ��)��T��x*̢1�Ec(%Z���d蠀��v��%mA� �h�TX1��?a���"+%�I�����\���z-˚l���V���H!U��1��T�Qْ��?��д�BD��u�      �   /   x�3�4L-R()��M-.)J����8�Rф�9�хL8MЅb���� Q�      �   �   x�]��n� ���)�OJE�ԗ��B!b�R:呶�n;�/6`�	���+��#E���L��/8��R<���/&j2�yS��HKtk@��L�� ��D��Ox|7,y`7ώ��HCXu��Z���^�U�F
ɸ@��b��L�b�V�G�ޝ��5G��*�l4�%�b��yʲ�W)�ܶ���[\��2�V[�����&�Ҧ]B�0I��A`wT����?��u�����)�~ {��      �      x������ � �      �      x������ � �      �      x������ � �     