PGDMP                     	    {            PERRICENTRO    13.11 (Debian 13.11-0+deb11u1)    13.11 (Debian 13.11-0+deb11u1)     9           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            :           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            <           1262    41137    PERRICENTRO    DATABASE     b   CREATE DATABASE "PERRICENTRO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es_AR.UTF-8';
    DROP DATABASE "PERRICENTRO";
                postgres    false            �            1259    41140    usuarios    TABLE     �  CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    apellido character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    pass character varying(255) NOT NULL,
    fecha_registro timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fecha_actualizacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    41138    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    201            =           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    200            �           2604    41143    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            6          0    41140    usuarios 
   TABLE DATA           j   COPY public.usuarios (id, nombre, apellido, email, pass, fecha_registro, fecha_actualizacion) FROM stdin;
    public          postgres    false    201   +       >           0    0    usuarios_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuarios_id_seq', 6, true);
          public          postgres    false    200            �           2606    41152    usuarios usuarios_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_email_key;
       public            postgres    false    201            �           2606    41150    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    201            6   �  x�}�˒�0 E��+X��tH��Q|P
�ؾ�f�MGy�
3�2?6t��K��dq�"�n����`���"a�+E���Ͽ�0f"��4�;
��]c��w����Z�ݽ�^uXW���9��Ñn�����7�ֹ3�&/
zQt�������NTU�$�7��4
|�7ȃ*gߴ�F����֟^�s�U���V�L<J�5���T�Sll����v����O5�Ū�DIL�Eɳ�%� 
�,����V� d�Ȏ��<��plO�Y��z�v�� N�nv�\obX��mz�S3b����j�c��!�5�%�`��I*[�w��"f�f� �O�NL�EN~��)L���X*Qu�:\8��b��.���_-$t��7��A��1U5�=Q��$2�0-����D>X��������y�>���3sq��{p��s�������n�i���z3R/�7V�oU���%���$���     