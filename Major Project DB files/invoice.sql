-- Table: public.Invoice

-- DROP TABLE IF EXISTS public."Invoice";

CREATE TABLE IF NOT EXISTS public."Invoice"
(
    "Id_username" integer NOT NULL,
    "Invoice_ID" integer NOT NULL,
    "Invoice_Status" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Id username" PRIMARY KEY ("Id_username")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Invoice"
    OWNER to postgres;