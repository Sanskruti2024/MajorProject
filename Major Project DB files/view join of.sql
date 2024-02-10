/*SELECT
  bu."Replication_Setup_ID",
  bu."User_Name",
  bu."Application_Name",
  bu."Technique",
  bu."Direction",
  l."ID_username",
  l."pasword",
  l."email_Id"
FROM
  public."BillingUserDetails" AS bu
LEFT JOIN
  public."Login" AS l ON bu."User_Name" = l."User_Name";*/
  
SELECT *
FROM public."BillingUserDetails" AS bu
JOIN public."Login" AS l ON bu."User_Name" = l."User_Name";

  
CREATE VIEW billing_invoice_view AS
SELECT
  bu."Replication_setup_ID",
  bu."User_Name",
  bu."Application_Name",
  bu."Technique",
  bu."Direction",
  inv."Id_username",
  inv."Invoice_Id",
  inv."Invoice_Status"
FROM
  public."BillingUserDetails" AS bu
left JOIN
  public."Invoice" AS inv on bu."Replication_setup_ID" = inv."Replication_Setup_ID";

SELECT * FROM public."billing_invoice_view";

