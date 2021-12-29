-- Adminer 4.8.1 PostgreSQL 14.1 (Debian 14.1-1.pgdg110+1) dump

DROP TABLE IF EXISTS "User";
DROP SEQUENCE IF EXISTS "User_id_seq";

CREATE SCHEMA IF NOT EXISTS "user-auth";

CREATE SEQUENCE "User_id_seq"
START WITH 1
INCREMENT BY 1
NO MINVALUE
NO MAXVALUE
CACHE 1;

CREATE TABLE "user-auth"."User" (
    "id" integer DEFAULT nextval('"User_id_seq"') NOT NULL,
    "email" text NOT NULL,
    "password" text NOT NULL,
    CONSTRAINT "User_email" UNIQUE ("email"),
    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


INSERT INTO "user-auth"."User" (id, email, password) VALUES (1, 'test@test.com', 'testtest');

-- 2021-12-29 03:42:39.986836+00