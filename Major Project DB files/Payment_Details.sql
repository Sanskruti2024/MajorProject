
CREATE TABLE IF NOT EXISTS public."Payment_Details"
(
    "Id_username" integer NOT NULL,
    "User_Name" text COLLATE pg_catalog."default" NOT NULL,
    "Application_Name" text COLLATE pg_catalog."default" NOT NULL,
    "Start_Date" date NOT NULL,
    "End_Date" date NOT NULL,
    "Amount" bigint NOT NULL,
    "Days" bigint NOT NULL,
    "Invoice_Status" text COLLATE pg_catalog."default" NOT NULL,
    "Invoice_Id" integer NOT NULL,
    CONSTRAINT "IdUsername" PRIMARY KEY ("Id_username")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Payment_Details"
    OWNER to postgres;

INSERT INTO public."Payment_Details"(
	"Id_username", "User_Name", "Application_Name", "Start_Date", "End_Date", "Amount", "Days", "Invoice_Status", "Invoice_Id")
	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);