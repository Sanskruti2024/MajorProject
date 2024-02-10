-- Table: public.Rate

-- DROP TABLE IF EXISTS public."Rate";

CREATE TABLE IF NOT EXISTS public."Rate"
(
    "User_Name" text COLLATE pg_catalog."default" NOT NULL,
    "Start_Time" date NOT NULL,
    "End_Time" date NOT NULL,
    "Application_Name" text COLLATE pg_catalog."default" NOT NULL,
    "Total_No_of_Bytes" bigint NOT NULL,
    "Ch_T_I" bigint NOT NULL,
    "Charge_for_1Byte" bigint NOT NULL,
    CONSTRAINT "UserName" PRIMARY KEY ("User_Name")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Rate"
    OWNER to postgres;
	
INSERT INTO public."Rate"(
	"User_Name", "Start_Time", "End_Time", "Application_Name", "Total_No_of_Bytes", "Ch_T_I", "Charge_for_1Byte")
	VALUES ('John Deo', '2022-09-15', '2023-11-25', 'MongoDB',1080, 120,5);
INSERT INTO public."Rate"(
	"User_Name", "Start_Time", "End_Time", "Application_Name", "Total_No_of_Bytes", "Ch_T_I", "Charge_for_1Byte")
	VALUES ('Rohan Dole', '2022-09-14', '2023-11-20', 'MongoDb', 1089, 120, 5);
INSERT INTO public."Rate"(
	"User_Name", "Start_Time", "End_Time", "Application_Name", "Total_No_of_Bytes", "Ch_T_I", "Charge_for_1Byte")
	VALUES ('Riya sharam','2022-08-09', '2023-08-01', 'PostgreSql', 1023, 150,5);
INSERT INTO public."Rate"(
	"User_Name", "Start_Time", "End_Time", "Application_Name", "Total_No_of_Bytes", "Ch_T_I", "Charge_for_1Byte")
	VALUES ('Garima sharam','2022-03-07','2023-11-25','PostgreSql', 1032,150,5);

Select * from public."Rate"