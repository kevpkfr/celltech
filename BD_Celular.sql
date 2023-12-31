PGDMP     *                    {         	   celulares    15.3    15.3 #               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    16538 	   celulares    DATABASE     ~   CREATE DATABASE celulares WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE celulares;
                postgres    false            �            1259    16562    producto    TABLE     �   CREATE TABLE public.producto (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    precio double precision NOT NULL,
    descripcion character varying(200) NOT NULL
);
    DROP TABLE public.producto;
       public         heap    postgres    false            �            1259    16561    producto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.producto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.producto_id_seq;
       public          postgres    false    219            #           0    0    producto_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.producto_id_seq OWNED BY public.producto.id;
          public          postgres    false    218            �            1259    16553    rol    TABLE     e   CREATE TABLE public.rol (
    id integer NOT NULL,
    "rolNombre" character varying(10) NOT NULL
);
    DROP TABLE public.rol;
       public         heap    postgres    false            �            1259    16552 
   rol_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.rol_id_seq;
       public          postgres    false    217            $           0    0 
   rol_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.rol_id_seq OWNED BY public.rol.id;
          public          postgres    false    216            �            1259    16540    usuario    TABLE     �   CREATE TABLE public.usuario (
    id integer NOT NULL,
    "nombreUsuario" character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    password character varying NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16539    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    215            %           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    214            �            1259    16568    usuario_rol    TABLE     b   CREATE TABLE public.usuario_rol (
    usuario_id integer NOT NULL,
    rol_id integer NOT NULL
);
    DROP TABLE public.usuario_rol;
       public         heap    postgres    false            u           2604    16565    producto id    DEFAULT     j   ALTER TABLE ONLY public.producto ALTER COLUMN id SET DEFAULT nextval('public.producto_id_seq'::regclass);
 :   ALTER TABLE public.producto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            t           2604    16556    rol id    DEFAULT     `   ALTER TABLE ONLY public.rol ALTER COLUMN id SET DEFAULT nextval('public.rol_id_seq'::regclass);
 5   ALTER TABLE public.rol ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            s           2604    16543 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                      0    16562    producto 
   TABLE DATA           C   COPY public.producto (id, nombre, precio, descripcion) FROM stdin;
    public          postgres    false    219   '                 0    16553    rol 
   TABLE DATA           .   COPY public.rol (id, "rolNombre") FROM stdin;
    public          postgres    false    217   J'                 0    16540    usuario 
   TABLE DATA           G   COPY public.usuario (id, "nombreUsuario", email, password) FROM stdin;
    public          postgres    false    215   v'                 0    16568    usuario_rol 
   TABLE DATA           9   COPY public.usuario_rol (usuario_id, rol_id) FROM stdin;
    public          postgres    false    220   "(       &           0    0    producto_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.producto_id_seq', 3, true);
          public          postgres    false    218            '           0    0 
   rol_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.rol_id_seq', 1, false);
          public          postgres    false    216            (           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 2, true);
          public          postgres    false    214            �           2606    16572 *   usuario_rol PK_40b321ebb932d588934043a2639 
   CONSTRAINT     z   ALTER TABLE ONLY public.usuario_rol
    ADD CONSTRAINT "PK_40b321ebb932d588934043a2639" PRIMARY KEY (usuario_id, rol_id);
 V   ALTER TABLE ONLY public.usuario_rol DROP CONSTRAINT "PK_40b321ebb932d588934043a2639";
       public            postgres    false    220    220            �           2606    16567 '   producto PK_5be023b11909fe103e24c740c7d 
   CONSTRAINT     g   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT "PK_5be023b11909fe103e24c740c7d" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.producto DROP CONSTRAINT "PK_5be023b11909fe103e24c740c7d";
       public            postgres    false    219            w           2606    16547 &   usuario PK_a56c58e5cabaa04fb2c98d2d7e2 
   CONSTRAINT     f   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "PK_a56c58e5cabaa04fb2c98d2d7e2" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.usuario DROP CONSTRAINT "PK_a56c58e5cabaa04fb2c98d2d7e2";
       public            postgres    false    215            }           2606    16558 "   rol PK_c93a22388638fac311781c7f2dd 
   CONSTRAINT     b   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT "PK_c93a22388638fac311781c7f2dd" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.rol DROP CONSTRAINT "PK_c93a22388638fac311781c7f2dd";
       public            postgres    false    217                       2606    16560 "   rol UQ_219757a66cff5ac7898e2ad9a86 
   CONSTRAINT     f   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT "UQ_219757a66cff5ac7898e2ad9a86" UNIQUE ("rolNombre");
 N   ALTER TABLE ONLY public.rol DROP CONSTRAINT "UQ_219757a66cff5ac7898e2ad9a86";
       public            postgres    false    217            y           2606    16551 &   usuario UQ_2863682842e688ca198eb25c124 
   CONSTRAINT     d   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "UQ_2863682842e688ca198eb25c124" UNIQUE (email);
 R   ALTER TABLE ONLY public.usuario DROP CONSTRAINT "UQ_2863682842e688ca198eb25c124";
       public            postgres    false    215            {           2606    16549 &   usuario UQ_7ea57d693272b94228192c612bf 
   CONSTRAINT     n   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT "UQ_7ea57d693272b94228192c612bf" UNIQUE ("nombreUsuario");
 R   ALTER TABLE ONLY public.usuario DROP CONSTRAINT "UQ_7ea57d693272b94228192c612bf";
       public            postgres    false    215            �           1259    16573    IDX_29e9a9079c7ba01c1b301cf555    INDEX     ^   CREATE INDEX "IDX_29e9a9079c7ba01c1b301cf555" ON public.usuario_rol USING btree (usuario_id);
 4   DROP INDEX public."IDX_29e9a9079c7ba01c1b301cf555";
       public            postgres    false    220            �           1259    16574    IDX_ac8911cd54a61461c992654140    INDEX     Z   CREATE INDEX "IDX_ac8911cd54a61461c992654140" ON public.usuario_rol USING btree (rol_id);
 4   DROP INDEX public."IDX_ac8911cd54a61461c992654140";
       public            postgres    false    220            �           2606    16575 *   usuario_rol FK_29e9a9079c7ba01c1b301cf5555    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_rol
    ADD CONSTRAINT "FK_29e9a9079c7ba01c1b301cf5555" FOREIGN KEY (usuario_id) REFERENCES public.usuario(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.usuario_rol DROP CONSTRAINT "FK_29e9a9079c7ba01c1b301cf5555";
       public          postgres    false    3191    215    220            �           2606    16580 *   usuario_rol FK_ac8911cd54a61461c9926541401    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_rol
    ADD CONSTRAINT "FK_ac8911cd54a61461c9926541401" FOREIGN KEY (rol_id) REFERENCES public.rol(id);
 V   ALTER TABLE ONLY public.usuario_rol DROP CONSTRAINT "FK_ac8911cd54a61461c9926541401";
       public          postgres    false    220    3197    217               *   x�3�LK,NI,�44�3��8SS2KS�9�!�\1z\\\ z            x�3�LL����2�,-N-����� : �         �   x�e��C0  �>�s�U'�f2Bg�٥�_P����v��;~{�C+��X��a1����Gjv�ȐD�S:n+�	�K�D�
n��K�$ޜ��x�h����X��r��_�º�)-/��옖�.��͢Y s���g�A�δ#��ӵ@�<! �`C5            x�3�4�2�4�2�=... $     