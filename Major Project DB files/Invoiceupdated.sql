-- Table: public.Invoice

-- DROP TABLE IF EXISTS public."Invoice";

CREATE TABLE IF NOT EXISTS public."Invoice"
(
    "Id_username" integer NOT NULL,
    "Invoice_Id" integer NOT NULL,
    "Invoice_Status" text COLLATE pg_catalog."default" NOT NULL,
    "Replication_Setup_ID" integer NOT NULL,
    CONSTRAINT "Id Username" PRIMARY KEY ("Id_username")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Invoice"
    OWNER to postgres;
	
INSERT INTO public."Invoice"(
	"Id_username", "Invoice_Id", "Invoice_Status", "Replication_Setup_ID")
	VALUES (1, 202401, 'pending',120);
INSERT INTO public."Invoice"(
	"Id_username", "Invoice_Id", "Invoice_Status", "Replication_Setup_ID")
	VALUES (2, 202402, 'pending',121);
INSERT INTO public."Invoice"(
	"Id_username", "Invoice_Id", "Invoice_Status", "Replication_Setup_ID")
	VALUES (3, 202403, 'Paid',124);
INSERT INTO public."Invoice"(
	"Id_username", "Invoice_Id", "Invoice_Status", "Replication_Setup_ID")
	VALUES (4, 202404, 'Paid',125);

Select * from public."Invoice"