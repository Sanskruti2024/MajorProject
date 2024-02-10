-- Table: public.Login

-- DROP TABLE IF EXISTS public."Login";

CREATE TABLE IF NOT EXISTS public."Login"
(
    "Id_username" integer NOT NULL,
    "Password" "char" NOT NULL,
    "Email_ID" "char",
    "User_Name" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Id_username_PK" PRIMARY KEY ("Id_username")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Login"
    OWNER to postgres;