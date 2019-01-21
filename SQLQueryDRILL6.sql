USE db_zoo

SELECT species_name AS "Species Name", specialist_fname AS "First Name", specialist_lname AS "Last Name", specialist_contact AS "Phone Number"
FROM tbl_species, tbl_specialist
WHERE species_name = 'penguin' and specialist_id = 1;
		