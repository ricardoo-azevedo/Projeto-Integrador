PGDMP                      |            Planify    16.3    16.3 /    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17840    Planify    DATABASE     �   CREATE DATABASE "Planify" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Planify";
                postgres    false            c           1247    17938    situacao    TYPE     m   CREATE TYPE public.situacao AS ENUM (
    'Concluído',
    'Reservado',
    'Remarcado',
    'Cancelado'
);
    DROP TYPE public.situacao;
       public          postgres    false            `           1247    17933    status    TYPE     8   CREATE TYPE public.status AS ENUM (
    '1',
    '0'
);
    DROP TYPE public.status;
       public          postgres    false            �            1259    17880    tb_agendamento    TABLE     �  CREATE TABLE public.tb_agendamento (
    id_agend integer NOT NULL,
    clie_agend integer NOT NULL,
    serv_agend integer NOT NULL,
    func_agend integer NOT NULL,
    data_agend date NOT NULL,
    hora_agend time without time zone NOT NULL,
    dt_reg_agend timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    status_agend public.status,
    situacao_agend public.situacao
);
 "   DROP TABLE public.tb_agendamento;
       public         heap    postgres    false    864    867            �            1259    17879    tb_agendamento_id_agend_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_agendamento_id_agend_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tb_agendamento_id_agend_seq;
       public          postgres    false    218            �           0    0    tb_agendamento_id_agend_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tb_agendamento_id_agend_seq OWNED BY public.tb_agendamento.id_agend;
          public          postgres    false    217            �            1259    17903 	   tb_pessoa    TABLE       CREATE TABLE public.tb_pessoa (
    id_pessoa integer NOT NULL,
    nome_pessoa character varying(50) NOT NULL,
    fone_pessoa character varying(16) NOT NULL,
    email_pessoa character varying(100) NOT NULL,
    dt_reg_pessoa timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.tb_pessoa;
       public         heap    postgres    false            �            1259    17923    tb_clientes    TABLE     �   CREATE TABLE public.tb_clientes (
    id_clie integer NOT NULL,
    dt_mat_clie timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)
INHERITS (public.tb_pessoa);
    DROP TABLE public.tb_clientes;
       public         heap    postgres    false    220            �            1259    17922    tb_clientes_id_clie_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_clientes_id_clie_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tb_clientes_id_clie_seq;
       public          postgres    false    224            �           0    0    tb_clientes_id_clie_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tb_clientes_id_clie_seq OWNED BY public.tb_clientes.id_clie;
          public          postgres    false    223            �            1259    17913    tb_funcionarios    TABLE     �   CREATE TABLE public.tb_funcionarios (
    id_func integer NOT NULL,
    cargo_func character varying(50) NOT NULL,
    dt_mat_func timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)
INHERITS (public.tb_pessoa);
 #   DROP TABLE public.tb_funcionarios;
       public         heap    postgres    false    220            �            1259    17912    tb_funcionarios_id_func_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_funcionarios_id_func_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tb_funcionarios_id_func_seq;
       public          postgres    false    222            �           0    0    tb_funcionarios_id_func_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tb_funcionarios_id_func_seq OWNED BY public.tb_funcionarios.id_func;
          public          postgres    false    221            �            1259    17902    tb_pessoa_id_pessoa_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_pessoa_id_pessoa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tb_pessoa_id_pessoa_seq;
       public          postgres    false    220            �           0    0    tb_pessoa_id_pessoa_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tb_pessoa_id_pessoa_seq OWNED BY public.tb_pessoa.id_pessoa;
          public          postgres    false    219            �            1259    17872    tb_servicos    TABLE     �   CREATE TABLE public.tb_servicos (
    id_serv integer NOT NULL,
    atv_serv character varying(50) NOT NULL,
    valor_serv numeric(10,2) NOT NULL,
    tempo_serv integer NOT NULL,
    dt_mat_serv timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.tb_servicos;
       public         heap    postgres    false            �            1259    17871    tb_servicos_id_serv_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_servicos_id_serv_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tb_servicos_id_serv_seq;
       public          postgres    false    216            �           0    0    tb_servicos_id_serv_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tb_servicos_id_serv_seq OWNED BY public.tb_servicos.id_serv;
          public          postgres    false    215            6           2604    17883    tb_agendamento id_agend    DEFAULT     �   ALTER TABLE ONLY public.tb_agendamento ALTER COLUMN id_agend SET DEFAULT nextval('public.tb_agendamento_id_agend_seq'::regclass);
 F   ALTER TABLE public.tb_agendamento ALTER COLUMN id_agend DROP DEFAULT;
       public          postgres    false    218    217    218            >           2604    17926    tb_clientes id_pessoa    DEFAULT     |   ALTER TABLE ONLY public.tb_clientes ALTER COLUMN id_pessoa SET DEFAULT nextval('public.tb_pessoa_id_pessoa_seq'::regclass);
 D   ALTER TABLE public.tb_clientes ALTER COLUMN id_pessoa DROP DEFAULT;
       public          postgres    false    224    219            ?           2604    17927    tb_clientes dt_reg_pessoa    DEFAULT     ^   ALTER TABLE ONLY public.tb_clientes ALTER COLUMN dt_reg_pessoa SET DEFAULT CURRENT_TIMESTAMP;
 H   ALTER TABLE public.tb_clientes ALTER COLUMN dt_reg_pessoa DROP DEFAULT;
       public          postgres    false    224            @           2604    17928    tb_clientes id_clie    DEFAULT     z   ALTER TABLE ONLY public.tb_clientes ALTER COLUMN id_clie SET DEFAULT nextval('public.tb_clientes_id_clie_seq'::regclass);
 B   ALTER TABLE public.tb_clientes ALTER COLUMN id_clie DROP DEFAULT;
       public          postgres    false    224    223    224            :           2604    17916    tb_funcionarios id_pessoa    DEFAULT     �   ALTER TABLE ONLY public.tb_funcionarios ALTER COLUMN id_pessoa SET DEFAULT nextval('public.tb_pessoa_id_pessoa_seq'::regclass);
 H   ALTER TABLE public.tb_funcionarios ALTER COLUMN id_pessoa DROP DEFAULT;
       public          postgres    false    219    222            ;           2604    17917    tb_funcionarios dt_reg_pessoa    DEFAULT     b   ALTER TABLE ONLY public.tb_funcionarios ALTER COLUMN dt_reg_pessoa SET DEFAULT CURRENT_TIMESTAMP;
 L   ALTER TABLE public.tb_funcionarios ALTER COLUMN dt_reg_pessoa DROP DEFAULT;
       public          postgres    false    222            <           2604    17918    tb_funcionarios id_func    DEFAULT     �   ALTER TABLE ONLY public.tb_funcionarios ALTER COLUMN id_func SET DEFAULT nextval('public.tb_funcionarios_id_func_seq'::regclass);
 F   ALTER TABLE public.tb_funcionarios ALTER COLUMN id_func DROP DEFAULT;
       public          postgres    false    222    221    222            8           2604    17906    tb_pessoa id_pessoa    DEFAULT     z   ALTER TABLE ONLY public.tb_pessoa ALTER COLUMN id_pessoa SET DEFAULT nextval('public.tb_pessoa_id_pessoa_seq'::regclass);
 B   ALTER TABLE public.tb_pessoa ALTER COLUMN id_pessoa DROP DEFAULT;
       public          postgres    false    219    220    220            4           2604    17875    tb_servicos id_serv    DEFAULT     z   ALTER TABLE ONLY public.tb_servicos ALTER COLUMN id_serv SET DEFAULT nextval('public.tb_servicos_id_serv_seq'::regclass);
 B   ALTER TABLE public.tb_servicos ALTER COLUMN id_serv DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    17880    tb_agendamento 
   TABLE DATA           �   COPY public.tb_agendamento (id_agend, clie_agend, serv_agend, func_agend, data_agend, hora_agend, dt_reg_agend, status_agend, situacao_agend) FROM stdin;
    public          postgres    false    218   �8       �          0    17923    tb_clientes 
   TABLE DATA           }   COPY public.tb_clientes (id_pessoa, nome_pessoa, fone_pessoa, email_pessoa, dt_reg_pessoa, id_clie, dt_mat_clie) FROM stdin;
    public          postgres    false    224   F9       �          0    17913    tb_funcionarios 
   TABLE DATA           �   COPY public.tb_funcionarios (id_pessoa, nome_pessoa, fone_pessoa, email_pessoa, dt_reg_pessoa, id_func, cargo_func, dt_mat_func) FROM stdin;
    public          postgres    false    222   �9       �          0    17903 	   tb_pessoa 
   TABLE DATA           e   COPY public.tb_pessoa (id_pessoa, nome_pessoa, fone_pessoa, email_pessoa, dt_reg_pessoa) FROM stdin;
    public          postgres    false    220   �:       �          0    17872    tb_servicos 
   TABLE DATA           ]   COPY public.tb_servicos (id_serv, atv_serv, valor_serv, tempo_serv, dt_mat_serv) FROM stdin;
    public          postgres    false    216   �:       �           0    0    tb_agendamento_id_agend_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tb_agendamento_id_agend_seq', 1, true);
          public          postgres    false    217            �           0    0    tb_clientes_id_clie_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tb_clientes_id_clie_seq', 3, true);
          public          postgres    false    223            �           0    0    tb_funcionarios_id_func_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tb_funcionarios_id_func_seq', 3, true);
          public          postgres    false    221            �           0    0    tb_pessoa_id_pessoa_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tb_pessoa_id_pessoa_seq', 6, true);
          public          postgres    false    219            �           0    0    tb_servicos_id_serv_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tb_servicos_id_serv_seq', 3, true);
          public          postgres    false    215            E           2606    17886 "   tb_agendamento tb_agendamento_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tb_agendamento
    ADD CONSTRAINT tb_agendamento_pkey PRIMARY KEY (id_agend);
 L   ALTER TABLE ONLY public.tb_agendamento DROP CONSTRAINT tb_agendamento_pkey;
       public            postgres    false    218            M           2606    17931    tb_clientes tb_clientes_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tb_clientes
    ADD CONSTRAINT tb_clientes_pkey PRIMARY KEY (id_clie);
 F   ALTER TABLE ONLY public.tb_clientes DROP CONSTRAINT tb_clientes_pkey;
       public            postgres    false    224            K           2606    17921 $   tb_funcionarios tb_funcionarios_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.tb_funcionarios
    ADD CONSTRAINT tb_funcionarios_pkey PRIMARY KEY (id_func);
 N   ALTER TABLE ONLY public.tb_funcionarios DROP CONSTRAINT tb_funcionarios_pkey;
       public            postgres    false    222            G           2606    17911 $   tb_pessoa tb_pessoa_email_pessoa_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.tb_pessoa
    ADD CONSTRAINT tb_pessoa_email_pessoa_key UNIQUE (email_pessoa);
 N   ALTER TABLE ONLY public.tb_pessoa DROP CONSTRAINT tb_pessoa_email_pessoa_key;
       public            postgres    false    220            I           2606    17909    tb_pessoa tb_pessoa_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tb_pessoa
    ADD CONSTRAINT tb_pessoa_pkey PRIMARY KEY (id_pessoa);
 B   ALTER TABLE ONLY public.tb_pessoa DROP CONSTRAINT tb_pessoa_pkey;
       public            postgres    false    220            C           2606    17878    tb_servicos tb_servicos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.tb_servicos
    ADD CONSTRAINT tb_servicos_pkey PRIMARY KEY (id_serv);
 F   ALTER TABLE ONLY public.tb_servicos DROP CONSTRAINT tb_servicos_pkey;
       public            postgres    false    216            N           2606    17892 -   tb_agendamento tb_agendamento_serv_agend_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_agendamento
    ADD CONSTRAINT tb_agendamento_serv_agend_fkey FOREIGN KEY (serv_agend) REFERENCES public.tb_servicos(id_serv);
 W   ALTER TABLE ONLY public.tb_agendamento DROP CONSTRAINT tb_agendamento_serv_agend_fkey;
       public          postgres    false    216    218    4675            �   B   x�3�4�4A#]S]#SNC3+ BS02�25�24�30�03��J-N-*KL������ ԃD      �   �   x��ϱ�0����u�i��R�4ĝp��$���A]����z�s��<�q`8Q8����T�S��/i�1�<�yK*�	P��4UHu�Mk�B��Z0Qt���a�u(]po,�_�խq�դ�� 
}�";~r�<o��ͻ��h��G^�}0`��+!�bPZ      �   �   x�}ͽ
�0@���)2�А��Ʀ�?�ࢫ˵�Pi	��|_L� .v9Ӂ��>��I���%XP���z*�)p�����=���S���
$i|e��N�Ӻ$0��|�mN3�@8rñ�'F�#"�0�H��Y�U����.a���e��89�CQR��׳���Sae��f��5c���Y	!��S�      �      x������ � �      �   t   x�e�1� Eg��@�kǀ�5��["�(�WiF*����������T��{��� ,�¶��pQI%FE�g;�F��ݯ�Ϙ�Xx&*Q�+r�2���_&�Ar��
���*�     