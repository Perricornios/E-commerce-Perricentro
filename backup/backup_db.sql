PGDMP         7            
    {            PERRICENTRO    13.11 (Debian 13.11-0+deb11u1)    13.11 (Debian 13.11-0+deb11u1)     E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    41137    PERRICENTRO    DATABASE     b   CREATE DATABASE "PERRICENTRO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'es_AR.UTF-8';
    DROP DATABASE "PERRICENTRO";
                postgres    false            �            1259    41155 	   productos    TABLE     �   CREATE TABLE public.productos (
    id integer NOT NULL,
    product_name character varying(255) NOT NULL,
    price numeric NOT NULL,
    quanty integer NOT NULL,
    img character varying(255) NOT NULL
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    41153    productos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.productos_id_seq;
       public          postgres    false    203            I           0    0    productos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;
          public          postgres    false    202            �            1259    41140    usuarios    TABLE     �  CREATE TABLE public.usuarios (
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
       public          postgres    false    201            J           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    200            �           2604    41158    productos id    DEFAULT     l   ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �           2604    41143    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            B          0    41155 	   productos 
   TABLE DATA           I   COPY public.productos (id, product_name, price, quanty, img) FROM stdin;
    public          postgres    false    203   �       @          0    41140    usuarios 
   TABLE DATA           j   COPY public.usuarios (id, nombre, apellido, email, pass, fecha_registro, fecha_actualizacion) FROM stdin;
    public          postgres    false    201   �       K           0    0    productos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.productos_id_seq', 12, true);
          public          postgres    false    202            L           0    0    usuarios_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuarios_id_seq', 6, true);
          public          postgres    false    200            �           2606    41163    productos productos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    203            �           2606    41152    usuarios usuarios_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_email_key;
       public            postgres    false    201            �           2606    41150    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    201            B   �  x�m�Mn�0���)|��Ӥ�egS��)z�
��hXP�!�Y�69B�#�bC+q�l�����Jݶ�)�8������RUʙ�
���\�c���b�~���4n���W���}|n!��j��xW\�_u��/|�H'h��Z��6��qг�l/��C��v�;�@	�#6H�A�x�m�VOh� �ƛ`q^���l�ҟ��Sب[;@��ylA�6�R��O<A�1Df/��i�~ ���1{�Q�0��t�DP:��j����G��-�zҤ����5���Wr������gzq	;����ہX�@�^G��!Nyf��b7-��ʪ��!+|~Ib5������V�y�v�2v
�(Q�>:��3~��Z���%��@�p�P�󁣰��l~��A��f�Ϣ(��s/�      @   �  x�}�˒�0 E��+X��tH��Q|P
�ؾ�f�MGy�
3�2?6t��K��dq�"�n����`���"a�+E���Ͽ�0f"��4�;
��]c��w����Z�ݽ�^uXW���9��Ñn�����7�ֹ3�&/
zQt�������NTU�$�7��4
|�7ȃ*gߴ�F����֟^�s�U���V�L<J�5���T�Sll����v����O5�Ū�DIL�Eɳ�%� 
�,����V� d�Ȏ��<��plO�Y��z�v�� N�nv�\obX��mz�S3b����j�c��!�5�%�`��I*[�w��"f�f� �O�NL�EN~��)L���X*Qu�:\8��b��.���_-$t��7��A��1U5�=Q��$2�0-����D>X��������y�>���3sq��{p��s�������n�i���z3R/�7V�oU���%���$���     