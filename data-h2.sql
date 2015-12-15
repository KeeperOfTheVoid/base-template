-- OBIWAN Test Data

INSERT INTO obiwan.tmplt
(tmplt_cd, tmplt_des)
VALUES
  ('GN', 'General'),
  ('FB', 'Food/Beverage'),
  ('CN', 'Constructed'),
  ('FR', 'Formulated'),
  ('DR', 'Drug'),
  ('SU', 'Supplement'),
  ('CH', 'Child Food'),
  ('IN', 'Infant Formula'),
  ('PT', 'Pet Food');

INSERT INTO obiwan.sect
(sect_id, sect_des, help_txt)
VALUES
  (0, 'Record Header Information', ''),
  (1, 'Supplier Manufacturer Information', 'Please enter the following supplier and manufacturer information for one or more contacts, one or more QA personnel, and your manufacturing facility or supplier location. You can directly enter the information in the fields below and save that data for future use, or select from a list of names and addresses that you have previously entered under "Manage Information."'),
  (2, 'Product Identification', 'Please enter the following product sample information'),
  (3, 'Ingredient Statement', 'Please enter the product''s ingredients, following the instructions below. After you have entered your ingredients, click the "Validate" button to identify any ingredients that are not in the HEB-approved nomenclature list.'),
  (4, 'NAFTA Ingredients', 'Please enter the following NAFTA ingredient information if your product will be sold in Mexico. You are not required to translate the ingredients into Spanish. For reference, the previously-entered ingredient statement will be shown below. Do not include all ingredients in your NAFTA ingredient statement. Only include ingredients that require more information for NAFTA regulations, as per the instructions below.'),
  (5, 'Allergen Information', 'Please enter the following information if your product contains or is manufactured in a facility that also processes any of the below allergens.'),
  (6, 'Nutrition Panel Information', 'Please enter the net weight, serving size, and servings per container of the product, followed by any additional information that should show up on the nutrition panel. A separate submission is needed for each package size, flavor, and variant with different nutritional values.'),
  (7, 'NAFTA Nutrition Panel', 'Please enter this additional nutritional information required for products sold in both US and Mexico.'),
  (8, 'NAFTA Translation & Code Date', 'Please choose a NAFTA code date format.'),
  (9, 'Shelf Life & Code Date Information', 'Please enter your sample''s shelf life information below. If your shelf life if based on a documented study, please attach the study.'),
  (10, 'Product Attribute & Standards', 'Please upload your product attributes and standards files using the file upload function on this page. If you do not have a standard format for your standards files, you may use the sample format links to download templates.'),
  (11, 'Product Claims & Statements', 'Please enter your product claims, statements, and any packaging symbols used as they should appear on the package or label, in accordance with regulatory standards. Some claims must be substantiated by submitting the appropriate documentation using the file upload functionality provided on this page. Multiple files may be uploaded.'),
  (12, 'Supplier & Printer Information', 'Please enter your artwork approval contact information below. You can directly enter the information in the fields below and save that data for future use, or select from a list of names and addresses that you have previously entered under "Manage Information."'),
  (13, 'Drug Ingredient', 'Drug Ingredient help text.'),
  (14, 'Guaranteed Analysis', 'Guaranteed Analysis help text.'),
  (15, 'Material Composition', 'Material Composition help text.'),
  (16, 'Infant Nutrition', ''),
  (17, 'Spanish Translation', ''),
  (25, 'Nutrition Panel', 'Infant Child Food Nutrition Panel help text here');

INSERT INTO obiwan.exprt_typ
(exprt_typ_cd, exprt_typ_des)
VALUES
  ('US', 'US Only'),
  ('MX', 'Mexico Only'),
  ('NA', 'US & Mexico (NAFTA)'),
  ('BI', 'US Only (Bilingual)');

INSERT INTO obiwan.drg_typ
(drg_typ_cd, drg_typ_des)
VALUES
  ('A', 'ANDA'),
  ('M', 'Monograph'),
  ('N', 'NDA');

INSERT INTO obiwan.exprt_typ_sect
(exprt_typ_cd, sect_id, seq_nbr)
VALUES
  ('US', 0, 5),
  ('US', 1, 10),
  ('US', 2, 20),
  ('US', 3, 30),
  ('US', 5, 40),
  ('US', 6, 50),
  ('US', 9, 60),
  ('US', 10, 70),
  ('US', 11, 80),
  ('US', 12, 90),
  ('US', 13, 100),
  ('US', 14, 110),
  ('US', 15, 120),
  ('US', 25, 120),
  ('MX', 0, 5),
  ('US', 16, 130),
  ('MX', 1, 10),
  ('MX', 2, 20),
  ('MX', 3, 30),
  ('MX', 5, 40),
  ('MX', 6, 50),
  ('MX', 9, 60),
  ('MX', 10, 70),
  ('MX', 11, 80),
  ('MX', 12, 90),
  ('MX', 13, 100),
  ('MX', 14, 110),
  ('MX', 15, 120),
  ('MX', 16, 130),
  ('MX', 17, 140),
  ('MX', 25, 160),
  ('NA', 0, 5),
  ('NA', 1, 10),
  ('NA', 2, 20),
  ('NA', 3, 30),
  ('NA', 4, 40),
  ('NA', 5, 50),
  ('NA', 6, 60),
  ('NA', 7, 70),
  ('NA', 8, 80),
  ('NA', 9, 90),
  ('NA', 10, 100),
  ('NA', 11, 110),
  ('NA', 12, 120),
  ('NA', 13, 130),
  ('NA', 14, 140),
  ('NA', 15, 150),
  ('NA', 16, 160),
  ('NA', 17, 170),
  ('NA', 25, 190),
  ('BI', 0, 5),
  ('BI', 1, 10),
  ('BI', 2, 20),
  ('BI', 3, 30),
  ('BI', 5, 40),
  ('BI', 6, 50),
  ('BI', 10, 70),
  ('BI', 11, 80),
  ('BI', 12, 90),
  ('BI', 13, 100),
  ('BI', 14, 110),
  ('BI', 15, 120),
  ('BI', 16, 130),
  ('BI', 17, 140),
  ('BI', 25, 160);

INSERT INTO obiwan.stat
(stat_cd, stat_des)
VALUES
  ('UN', 'Unlocked'),
  ('LK', 'Locked'),
  ('FN', 'Final');

INSERT INTO obiwan.prodn_meth
(prodn_meth_cd, prodn_meth_des)
VALUES
  ('FS', 'Full Scale Production'),
  ('PP', 'Pilot Plant Production'),
  ('LB', 'R&D Sample or Lab');

INSERT INTO obiwan.formula_stat
(formula_stat_cd, formula_stat_des)
VALUES
  ('EX', 'Existing Supplier Formula'),
  ('NW', 'New Formula'),
  ('RF', 'Reformulation of Existing Sample');

-- Approvals
INSERT INTO obiwan.appr_typ
(appr_typ_cd, appr_typ_des)
VALUES
  ('VND', 'Vendor'),
  ('PDM', 'PDM'),
  ('OBM', 'OBM'),
  ('REG', 'Regulatory'),
  ('NFT', 'NAFTA');

-- Approval Status
INSERT INTO obiwan.appr_stat
(appr_stat_cd, appr_stat_des)
VALUES
  ('APPR', 'Approved'),
  ('RJCT', 'Rejected');

INSERT INTO obiwan.unt_of_measr
(uom_cd, uom_des)
VALUES
  ('g', 'g'),
  ('mg', 'mg'),
  ('ug', '&mu;g'),
  ('IU', 'IU'),
  ('mcg', 'mcg');

INSERT INTO obiwan.tm_uom
(tm_uom_cd, tm_uom_des)
VALUES
  ('d', 'days'),
  ('w', 'weeks'),
  ('m', 'months'),
  ('y', 'years');

INSERT INTO obiwan.ingrd_lib
(lib_id, lib_des)
VALUES
  (0, 'food'),
  (1, 'non-food');

INSERT INTO obiwan.tmplt_lib
(tmplt_cd, lib_id)
VALUES
  ('GN', 1),
  ('FB', 0),
  ('CN', 1),
  ('FR', 1),
  ('DR', 0),
  ('SU', 0),
  ('CH', 0),
  ('IN', 0),
  ('PT', 0);

-- Role Type
INSERT INTO obiwan.role_typ
(role_typ_cd, role_typ_des)
VALUES
  ('SPLR', 'Supplier Contact'),
  ('ART', 'Artwork Contact'),
  ('USR', 'User');

-- Role
INSERT INTO obiwan.role
(role_cd, role_des, role_typ_cd)
VALUES
  ('SPLR', 'Main', 'SPLR'),
  ('QA', 'QA', 'SPLR'),
  ('PDM', 'Product Development Manager', 'USR'),
  ('BDM', 'Business Development Manager', null),
  ('OBM', 'H-E-B Own Brand Manager', 'USR'),
  ('PQM', 'Product Quality Manager', 'USR'),
  ('ART', 'Artwork Approval', 'ART'),
  ('SEP', 'Separator', 'ART'),
  ('PRNT', 'Printer', 'ART'),
  ('RD', 'R&D', 'SPLR'),
  ('SALE', 'Sales', 'SPLR');

-- Attachment Types
INSERT INTO obiwan.attch_typ
(attch_typ_cd, attch_typ_des, qa_attch_sw)
VALUES
  ('CRT', 'Claim Substatiation', 'N'),
  ('SHF', 'Shelf-life Study', 'N'),
  ('DIE', 'Die Line', 'N'),
  ('PIC', 'Product Photo', 'N'),
  ('LBL', 'Label Print', 'N'),
  ('MBD', 'Master Board', 'N'),
  ('CPD', 'Certificate of Analysis - Product Development Sample', 'Y'),
  ('CFP', 'Certificate of Analysis - First Production', 'Y'),
  ('CPM', 'Certificate of Analysis - Product Maintenance', 'Y'),
  ('FPP', 'Finished Product Specification - Provisional', 'Y'),
  ('FPF', 'Finished Product Specification - Final', 'Y'),
  ('SUP', 'Supporting Document/Photo', 'Y'),
  ('OTH', 'Other Attachment', 'N'),
  ('PTF', 'Pet Food', 'N');

---------- ^^^^^^^^^^^ -----------
---------- CODE TABLES -----------

----------  TEST DATA  -----------
----------    BELOW    -----------

INSERT INTO obiwan.tmplt_sect
(tmplt_cd, sect_id, seq_nbr, ovrd_sect_des, help_txt, long_view_only_sw)
VALUES
  ('FB', 0, 5, NULL, NULL, 'Y'),
  ('FB', 1, 10, NULL, NULL, 'N'),
  ('FB', 2, 20, NULL, 'This help text applies only to Food and Beverage, and should only be viewable product identification section', 'N'),
  ('FB', 3, 30, NULL, NULL, 'N'),
  ('FB', 4, 40, NULL, NULL, 'N'),
  ('FB', 5, 50, NULL, NULL, 'N'),
  ('FB', 6, 60, NULL, NULL, 'N'),
  ('FB', 7, 70, NULL, NULL, 'N'),
  ('FB', 8, 80, NULL, NULL, 'N'),
  ('FB', 9, 90, NULL, NULL, 'N'),
  ('FB', 10, 100, NULL, NULL, 'N'),
  ('FB', 11, 110, NULL, NULL, 'N'),
  ('FB', 12, 120, NULL, NULL, 'N'),
  ('FB', 17, 130, NULL, NULL, 'Y'),
  ('PT', 0, 5, NULL, NULL, 'Y'),
  ('PT', 1, 10, NULL, NULL, 'N'),
  ('PT', 2, 20, NULL, NULL, 'N'),
  ('PT', 3, 30, NULL, NULL, 'N'),
  ('PT', 5, 50, NULL, NULL, 'N'),
  ('PT', 14, 60, NULL, NULL, 'N'),
  ('PT', 7, 70, NULL, NULL, 'N'),
  ('PT', 8, 75, NULL, NULL, 'N'),
  ('PT', 9, 80, NULL, NULL, 'N'),
  ('PT', 10, 90, NULL, NULL, 'N'),
  ('PT', 11, 100, NULL, NULL, 'N'),
  ('PT', 12, 110, NULL, NULL, 'N'),
  ('PT', 17, 120, NULL, NULL, 'Y'),
  ('CN', 0, 5, NULL, NULL, 'Y'),
  ('CN', 1, 10, NULL, NULL, 'N'),
  ('CN', 2, 20, NULL, NULL, 'N'),
  ('CN', 15, 30, NULL, NULL, 'N'),
  ('CN', 7, 40, NULL, NULL, 'N'),
  ('CN', 8, 50, NULL, NULL, 'N'),
  ('CN', 9, 60, NULL, NULL, 'N'),
  ('CN', 10, 70, NULL, NULL, 'N'),
  ('CN', 11, 80, NULL, NULL, 'N'),
  ('CN', 12, 90, NULL, NULL, 'N'),
  ('CN', 17, 100, NULL, NULL, 'Y'),
  ('DR', 0, 5, NULL, NULL, 'Y'),
  ('DR', 1, 10, NULL, NULL, 'N'),
  ('DR', 2, 20, NULL, NULL, 'N'),
  ('DR', 13, 30, NULL, NULL, 'N'),
  ('DR', 5, 35, NULL, NULL, 'N'),
  ('DR', 7, 40, NULL, NULL, 'N'),
  ('DR', 8, 50, NULL, NULL, 'N'),
  ('DR', 9, 60, NULL, NULL, 'N'),
  ('DR', 10, 70, NULL, NULL, 'N'),
  ('DR', 11, 80, NULL, NULL, 'N'),
  ('DR', 12, 90, NULL, NULL, 'N'),
  ('DR', 17, 100, NULL, NULL, 'Y'),
  ('SU', 0, 5, NULL, NULL, 'Y'),
  ('SU', 1, 10, NULL, NULL, 'N'),
  ('SU', 2, 20, NULL, NULL, 'N'),
  ('SU', 13, 30, NULL, NULL, 'N'),
  ('SU', 4, 40, NULL, NULL, 'N'),
  ('SU', 5, 45, NULL, NULL, 'N'),
  ('SU', 8, 50, NULL, NULL, 'N'),
  ('SU', 9, 60, NULL, NULL, 'N'),
  ('SU', 10, 70, NULL, NULL, 'N'),
  ('SU', 11, 80, NULL, NULL, 'N'),
  ('SU', 12, 90, NULL, NULL, 'N'),
  ('SU', 17, 100, NULL, NULL, 'Y'),
  ('FR', 0, 5, NULL, NULL, 'Y'),
  ('FR', 1, 10, NULL, NULL, 'N'),
  ('FR', 2, 15, NULL, NULL, 'N'),
  ('FR', 3, 20, NULL, NULL, 'N'),
  ('FR', 5, 30, NULL, NULL, 'N'),
  ('FR', 7, 40, NULL, NULL, 'N'),
  ('FR', 8, 50, NULL, NULL, 'N'),
  ('FR', 9, 60, NULL, NULL, 'N'),
  ('FR', 10, 70, NULL, NULL, 'N'),
  ('FR', 11, 80, NULL, NULL, 'N'),
  ('FR', 12, 90, NULL, NULL, 'N'),
  ('FR', 17, 100, NULL, NULL, 'Y'),
  ('CH', 0, 5, NULL, NULL, 'Y'),
  ('CH', 1, 10, NULL, NULL, 'N'),
  ('CH', 2, 15, NULL, NULL, 'N'),
  ('CH', 3, 20, NULL, NULL, 'N'),
  ('CH', 4, 25, NULL, NULL, 'N'),
  ('CH', 5, 30, NULL, NULL, 'N'),
  ('CH', 25, 33, NULL, NULL, 'N'),
  ('CH', 7, 35, NULL, NULL, 'N'),
  ('CH', 8, 40, NULL, NULL, 'N'),
  ('CH', 9, 60, NULL, NULL, 'N'),
  ('CH', 10, 70, NULL, NULL, 'N'),
  ('CH', 11, 80, NULL, NULL, 'N'),
  ('CH', 12, 90, NULL, NULL, 'N'),
  ('CH', 17, 100, NULL, NULL, 'Y'),
  ('IN', 0, 5, NULL, NULL, 'Y'),
  ('IN', 1, 10, NULL, NULL, 'N'),
  ('IN', 2, 20, NULL, NULL, 'N'),
  ('IN', 3, 30, NULL, NULL, 'N'),
  ('IN', 4, 40, NULL, NULL, 'N'),
  ('IN', 5, 50, NULL, NULL, 'N'),
  ('IN', 16, 60, NULL, NULL, 'N'),
  ('IN', 7, 70, NULL, NULL, 'N'),
  ('IN', 8, 80, NULL, NULL, 'N'),
  ('IN', 9, 90, NULL, NULL, 'N'),
  ('IN', 10, 100, NULL, NULL, 'N'),
  ('IN', 11, 110, NULL, NULL, 'N'),
  ('IN', 12, 120, NULL, NULL, 'N'),
  ('IN', 17, 120, NULL, NULL, 'N');

INSERT INTO obiwan.splr
(splr_id, full_nm, ap_nbr, actv_sw)
VALUES
  (obiwan.splr_id_seq.nextval, 'Bausch and Lomb', 1234567890, 'Y'),
  (obiwan.splr_id_seq.nextval, 'TX Beans', 999999, 'Y');

-- Product Sample
INSERT INTO obiwan.prod_samp
(prod_info_id, samp_nm, samp_dt,exprn_dt, prodn_meth_cd, formula_stat_cd, formula_chg_txt)
VALUES
  (1, null, '2014-01-05', '2014-12-30', 'FS', 'EX', null),
  (2, null, '2014-02-05', '2014-12-30', 'LB', 'NW', null),
  (3, null, '2014-03-05', '2015-12-25', 'PP', 'RF', 'change formula stuff here'),
  (4, null, null, null, null, null, null);

INSERT INTO obiwan.prtnr
  (usr_id, full_nm, role_cd, actv_sw)
VALUES
  ('sadc002', 'John Doe', 'OBM', 'Y'),
  ('sadc003', 'Shannon Fluellen', 'PDM', 'Y'),
  ('sadc004', 'Jane Doe', 'PQM', 'Y'),
  ('sadc005', 'BDM', 'BDM', 'Y'),
  ('n282482', 'Corine North', 'BDM', 'Y');

-- Facility
INSERT INTO obiwan.fac
  (splr_id, fac_id, full_nm, stret_one_txt, stret_two_txt, cty_txt, po_bx_nbr, st_txt, post_cd_txt, cntry_nm, fda_nbr, actv_sw)
VALUES
  (2, obiwan.fac_id_seq.nextval, 'Dallas Canning', '1234 Fake Street', null, 'Dallas', null, 'TX', '78123', 'United States', 1234567890, 'Y'),
  (2, obiwan.fac_id_seq.nextval, 'San Antonio Canning', '5678 Main Street', null, 'San Antonio', null, 'TX', '78124', 'United States', 1234567891, 'Y'),
  (2, obiwan.fac_id_seq.nextval, 'El Paso Beanery', '9012 Broadway', null, 'El Paso', null, 'TX', '78125', 'United States', 1234567892, 'Y'),
  (2, obiwan.fac_id_seq.nextval, 'Houston Canning', '3456 Maple Pass', null, 'Houston', null, 'TX', '78126', 'United States', 1234567893, 'Y');

-- Facility USDA Establishment
INSERT INTO obiwan.fac_usda_estb
  (splr_id, fac_id, usda_estb_nbr, cre8_uid, cre8_ts, lst_updt_uid, lst_updt_ts)
VALUES
  (2, 2, '123456789', 'sadc003', '2015-01-21 16:00:00', 'sadc003', '2015-01-21 16:00:00'),
  (2, 2, '987654321', 'sadc003', '2015-01-21 16:00:00', 'sadc003', '2015-01-21 16:00:00'),
  (2, 2, '123789456', 'sadc003', '2015-01-21 16:00:00', 'sadc003', '2015-01-21 16:00:00'),
  (2, 1, '123780000', 'sadc003', '2015-01-21 16:00:00', 'sadc003', '2015-01-21 16:00:00');

INSERT INTO obiwan.party
(party_id, frst_nm, mid_nm, lst_nm, full_nm, titl_nm, co_nm, onepass_id, stret_one_txt, stret_two_txt, cty_txt, st_txt,
   post_cd_txt, po_bx_nbr, cntry_nm, ap_nbr, phn_cntry_cd, phn_area_cd, phn_nbr, phn_extn, email_adr_txt, actv_sw, splr_id)
VALUES
  (obiwan.party_id_seq.nextval, 'Robert', NULL, 'Rowe', 'Robert Rowe', NULL, NULL, 'r123456', '1234 Maple Street', NULL, 'Dallas', 'TX', '78901', NULL,
   'United States', NULL, 1, 789, 1234567, NULL, 'robert.rowe@txbeans.com', 'Y', 2),
  (obiwan.party_id_seq.nextval, 'Ethan', NULL, 'Peck', 'Ethan Peck', NULL, 'San Antonio Canning', 'p123456', '999 Fake Lane', NULL, 'San Antonio', 'TX',
   '78654', NULL, 'United States', NULL, 1, 789, 1234567, NULL, 'ethan.rowe@txbeans.com', 'Y', 2),
  (obiwan.party_id_seq.nextval, 'Jeremy', NULL, 'Greiner', 'Jeremy Greiner', NULL, 'Dallas Can Plant', 'g123456', '1337 Elm Street', NULL, 'Dallas', 'TX',
   '75319', NULL, 'United States', NULL, 1, 789, 1234567, NULL, 'jeremy.greiner@txbeans.com', 'Y', 2),
  (obiwan.party_id_seq.nextval, 'Anna', NULL, 'Kurt', 'Anna Kurt', NULL, NULL, 'k123456', '1234 Maple Street', NULL, 'Dallas', 'TX', '78901', NULL,
   'United States', NULL, 1, 789, 1234567, NULL, 'anna.kurt@txbeans.com', 'Y', 2),
  (obiwan.party_id_seq.nextval, 'Gerald', NULL, 'Halbeisen', 'Gerald Halbeisen', NULL, NULL, 'h123456', '999 Fake Lane', NULL, 'San Antonio', 'TX',
   '78654', NULL, 'United States', NULL, 1, 789, 1234567, NULL, 'gerald.halbeisen@txbeans.com', 'Y', 2),
  (obiwan.party_id_seq.nextval, 'Zach', NULL, 'Franco', 'Zach Franco', NULL, NULL, 'f123456', '1337 Elm Street', NULL, 'Dallas', 'TX',
   '75319', NULL, 'United States', NULL, 1, 789, 1234567, NULL, 'zach.franco@txbeans.com', 'Y', 2),
  (obiwan.party_id_seq.nextval, 'Matthew', NULL, 'Lalmansingh', 'Matthew Lalmansingh', NULL, 'Matt Artwork Approvers', 'l123456', '1234 Maple Street', NULL, 'Dallas', 'TX', '78901', NULL,
   'United States', NULL, 1, 789, 1234567, NULL, 'matthew.lalmansingh@my-artwork-approve.com', 'Y', 2),
  (obiwan.party_id_seq.nextval, 'Shannon', NULL, 'Fluellen', 'Shannon Fluellen', NULL, 'US Art Company', 'f123456', '999 Fake Lane', NULL, 'San Antonio', 'TX',
   '78654', NULL, 'United States', NULL, 1, 789, 1234567, NULL, 'shannon.fluellen@us-art-co.com', 'Y', 2),
  (obiwan.party_id_seq.nextval, 'Douglas', NULL, 'Aldrich', 'Douglas Aldrich', NULL, 'Dallas Approval, LLC', 'a123456', '1337 Elm Street', NULL, 'Dallas', 'TX',
   '75319', NULL, 'United States', NULL, 1, 789, 1234567, NULL, 'douglas.aldrich@dallas-approval.com', 'Y', 2),
  (obiwan.party_id_seq.nextval, 'Alan', NULL, 'Briseno', 'Alan Briseno', NULL, 'Dallas Separators', 'b123456', '1234 Maple Street', NULL, 'Dallas', 'TX', '78901', NULL,
   'United States', NULL, 1, 789, 1234567, NULL, 'alan.briseno@dallas-separator.com', 'Y', 2),
  (obiwan.party_id_seq.nextval, 'Steven', NULL, 'Kennick', 'Steven Kennick', NULL, 'The Separator Company', 'k123456', '999 Fake Lane', NULL, 'San Antonio', 'TX',
   '78654', NULL, 'United States', NULL, 1, 789, 1234567, NULL, 'steven.kennick@the-separator-co.com', 'Y', 2),
  (obiwan.party_id_seq.nextval, 'Aaron', NULL, 'Lawson', 'Aaron Lawson', NULL, 'The Separator Guys', 'a123456', '1337 Elm Street', NULL, 'Dallas', 'TX',
   '75319', NULL, 'United States', NULL, 1, 789, 1234567, NULL, 'aaron.lawson@separator.com', 'Y', 2),
  (obiwan.party_id_seq.nextval, 'David', NULL, 'Peters', 'David Peters', NULL, 'Printers of Texas', 'b123456', '1234 Maple Street', NULL, 'Dallas', 'TX', '78901', NULL,
   'United States', NULL, 1, 789, 1234567, NULL, 'david.peters@printers-of-texas.com', 'Y', 2),
  (obiwan.party_id_seq.nextval, 'Joel', NULL, 'Perkins', 'Joel Perkins', NULL, 'SA Printing Co', 'k123456', '999 Fake Lane', NULL, 'San Antonio', 'TX',
   '78654', NULL, 'United States', NULL, 1, 789, 1234567, NULL, 'joel.perkins@sa-prints.com', 'Y', 2),
  (obiwan.party_id_seq.nextval, 'Jed', NULL, 'Leggett', 'Jed Leggett', NULL, 'Jed Printing', 'a123456', '1337 Elm Street', NULL, 'Dallas', 'TX',
   '75319', NULL, 'United States', NULL, 1, 789, 1234567, NULL, 'jed.leggett@jed-prints.com', 'Y', 2);

-- Party Role
INSERT INTO obiwan.party_role
(party_id, role_cd)
VALUES
  (1, 'SPLR'),
  (2, 'SPLR'),
  (3, 'SPLR'),
  (4, 'QA'),
  (5, 'QA'),
  (6, 'QA'),
  (7, 'ART'),
  (8, 'ART'),
  (9, 'ART'),
  (10, 'SEP'),
  (11, 'SEP'),
  (12, 'SEP'),
  (13, 'PRNT'),
  (14, 'PRNT'),
  (15, 'PRNT');

-- Product Information
INSERT INTO obiwan.prod_info
(prod_info_id, proj_id, tmplt_cd, exprt_typ_cd, stat_cd, prod_scn_cd, prod_info_nm, lst_viewed_sect_id, pk_sz_txt, pdm_usr_id, obm_usr_id, pqm_usr_id, bdm_usr_id, lst_updt_ts, lst_vend_updt_ts)
VALUES
  (obiwan.prod_info_id_seq.nextval, 11, 'FB', 'US', 'UN', 123456789012, 'Hot Tilapia', 1, '24 oz', 'sadc003', null, 'sadc004', 'n282482', '2015-01-21 16:00:00', '2015-01-22 00:00:00'),
  (obiwan.prod_info_id_seq.nextval, 12, 'PT', 'NA', 'UN', 987654321098, 'Green Banana', null, 'each', 'sadc003', null, 'sadc004', 'n282482', '2015-01-22 23:59:59', null),
  (obiwan.prod_info_id_seq.nextval, 11, 'FB', 'NA', 'UN', NULL, 'Fresh Mud Bass', 3, '25 lbs', 'sadc003', null, 'sadc004', 'n282482', '2015-02-06 14:00:00', null),
  (obiwan.prod_info_id_seq.nextval, 11, 'CN', 'NA', 'UN', NULL, 'Some Constructed Product', 15, '2 tons', 'sadc003', null, 'sadc004', 'n282482', '2015-02-06 14:00:00', null),
  (obiwan.prod_info_id_seq.nextval, 12, 'DR', 'NA', 'UN', 987654381098, 'HEB Ibuprofen', 1, 'each', 'sadc003', null, 'sadc004', 'n282482', '2015-01-22 23:59:59', null),
  (obiwan.prod_info_id_seq.nextval, 12, 'SU', 'NA', 'UN', NULL, 'Chrysanthemum', 1, 'each', 'sadc003', null, 'sadc004', 'n282482', '2015-01-22 23:59:59', null),
  (obiwan.prod_info_id_seq.nextval, 12, 'FR', 'NA', 'UN', NULL, 'Baby Formula', 1, 'each', 'sadc003', null, 'sadc004', 'n282482', '2015-01-22 23:59:59', null),
  (obiwan.prod_info_id_seq.nextval, 12, 'IN', 'NA', 'UN', NULL, 'Infant Formula', 1, 'each', 'sadc003', null, 'sadc004', 'n282482', '2015-01-22 23:59:59', null),
  (obiwan.prod_info_id_seq.nextval, 12, 'CH', 'NA', 'UN', NULL, 'Mashed Bananas', 1, 'each', 'sadc003', null, 'sadc004', 'n282482', '2015-01-22 23:59:59', null);

-- Product Info Supplier
INSERT INTO obiwan.prod_info_splr
(prod_info_id, splr_id)
VALUES
  (1, 2),
  (2, 2),
  (3, 2),
  (4, 2),
  (5, 2),
  (6, 2),
  (7, 2),
  (8, 2),
  (9, 2);

INSERT INTO obiwan.prod_info_appr
(prod_info_id, appr_ts, usr_id, appr_typ_cd, invld_ts)
VALUES
  (1, '2015-01-22 16:00:00', 'sadc008', 'VND', null),
  (1, '2015-01-22 16:30:00', 'sadc006', 'REG', null),
  (1, '2015-01-22 17:00:00', 'sadc002', 'OBM', '2015-01-22 18:00:00');

-- Allergen
INSERT INTO obiwan.alrgn
(alrgn_id, alrgn_nm, seq_nbr, place_hlder_txt, req_spec_sw, actv_sw)
VALUES
(obiwan.alrgn_id_seq.nextval, 'Milk and milk byproducts', 1, null,'N', 'Y'),
(obiwan.alrgn_id_seq.nextval, 'Eggs', 2, null, 'N', 'Y'),
(obiwan.alrgn_id_seq.nextval, 'Soy', 3, null, 'N', 'Y'),
(obiwan.alrgn_id_seq.nextval, 'Wheat', 4, null, 'N', 'Y'),
(obiwan.alrgn_id_seq.nextval, 'Peanuts', 5, 'Specify Allergen', 'N', 'Y'),
(obiwan.alrgn_id_seq.nextval, 'Tree nuts', 6, 'Specify Allergen', 'Y', 'Y'),
(obiwan.alrgn_id_seq.nextval, 'Crustacean', 7, 'Specify Allergen', 'Y', 'Y'),
(obiwan.alrgn_id_seq.nextval, 'Fish', 8, null, 'Y', 'Y');

-- Product Information and Allergen Relationship
INSERT INTO obiwan.prod_info_alrgn
(prod_info_id, alrgn_id, cntans_sw, spec_des, dsply_sw, fac_proc_sw)
VALUES
  (1, 1, 'Y', NULL, 'Y', 'N'),
  (1, 2, 'Y', NULL, 'Y', 'N'),
  (2, 4, 'Y', NULL, 'Y', 'N'),
  (2, 6, 'Y', NULL, 'Y', 'N');

INSERT INTO obiwan.rnd_rule_strgy
(rnd_strgy_cd, rnd_strgy_des)
VALUES
  ('SV', 'Show as single value'),
  ('LT', 'Show as less than'),
  ('RN', 'Round to the nearest'),
  ('TX', 'Display text');

INSERT INTO obiwan.half_rnd_rule_strgy
(half_rnd_strgy_cd, half_rnd_strgy_des)
VALUES
  ('DN', 'Round half down'),
  ('UP', 'Round half up'),
  ('EV', 'Round half even');

INSERT INTO obiwan.ntrnt_typ
  (ntrnt_typ_cd, ntrnt_typ_des, seq_nbr)
VALUES
  ('NUT', 'Nutrients', 10),
  ('VIT', 'Vitamins', 20),
  ('MIN', 'Minerals', 30);

INSERT INTO obiwan.ntrnt
  (ntrnt_id, ntrnt_nm, dflt_uom_cd, seq_nbr, req_sw, show_amt_sw, show_pct_sw, actv_sw, ntrnt_mst_id, ntrnt_typ_cd)
VALUES
  (obiwan.ntrnt_id_seq.nextval, 'Calories', NULL, 10, 'Y', 'Y', 'N', 'Y', 1, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Calories from Fat', NULL, 20, 'Y', 'Y', 'N', 'Y', 2, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Total Fat', 'g', 30, 'Y', 'Y', 'Y', 'Y', 3, 'NUT'),
  (obiwan.ntrnt_id_seq.nextval, 'Saturated Fat', 'g', 40, 'Y', 'Y', 'Y', 'Y', 4, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Trans Fat', 'g', 50, 'Y', 'Y', 'N', 'Y', 5, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Polyunsaturated Fat', 'g', 60, 'N', 'Y', 'N', 'Y', 6, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Monounsaturated Fat', 'g', 70, 'N', 'Y', 'N', 'Y', 7, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Cholesterol', 'mg', 80, 'Y', 'Y', 'Y', 'Y', 8, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Sodium', 'mg', 90, 'Y', 'Y', 'Y', 'Y', 9, 'MIN'),
  (obiwan.ntrnt_id_seq.nextval, 'Potassium', 'mg', 100, 'Y', 'Y', 'Y', 'Y', 10, 'MIN'),
  (obiwan.ntrnt_id_seq.nextval, 'Total Carbohydrate', 'g', 110, 'Y', 'Y', 'Y', 'Y', 11, 'NUT'),
  (obiwan.ntrnt_id_seq.nextval, 'Dietary Fiber', 'g', 120, 'Y', 'Y', 'Y', 'Y', 12, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Sugar', 'g', 130, 'Y', 'Y', 'N', 'Y', 13, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Protein', 'g', 140, 'Y', 'Y', 'N', 'Y', 14, 'NUT'),
  (obiwan.ntrnt_id_seq.nextval, 'Vitamin A', NULL, 150, 'Y', 'N', 'Y', 'Y', 15, 'VIT'),
  (obiwan.ntrnt_id_seq.nextval, 'Vitamin C', NULL, 160, 'Y', 'N', 'Y', 'Y', 16, 'VIT'),
  (obiwan.ntrnt_id_seq.nextval, 'Calcium', NULL, 170, 'Y', 'N', 'Y', 'Y', 17, 'MIN'),
  (obiwan.ntrnt_id_seq.nextval, 'Iron', NULL, 180, 'Y', 'N', 'Y', 'Y', 18, 'MIN'),
  (obiwan.ntrnt_id_seq.nextval, 'Vitamin D', NULL, 190, 'Y', 'N', 'Y', 'Y', 19, 'VIT'),
  (obiwan.ntrnt_id_seq.nextval, 'Thiamin', NULL, 200, 'Y', 'N', 'Y', 'Y', 20, 'VIT'),
  (obiwan.ntrnt_id_seq.nextval, 'Riboflavin', NULL, 210, 'Y', 'N', 'Y', 'Y', 21, 'VIT'),
  (obiwan.ntrnt_id_seq.nextval, 'Niacin', NULL, 220, 'Y', 'N', 'Y', 'Y', 22, 'VIT'),
  (obiwan.ntrnt_id_seq.nextval, 'Vitamin B6', NULL, 230, 'Y', 'N', 'Y', 'Y', 23, 'VIT'),
  (obiwan.ntrnt_id_seq.nextval, 'Folate (Folic Acid)', NULL, 240, 'Y', 'N', 'Y', 'Y', 24, 'VIT'),
  (obiwan.ntrnt_id_seq.nextval, 'Vitamin B12', NULL, 250, 'Y', 'N', 'Y', 'Y', 25, 'VIT'),
  (obiwan.ntrnt_id_seq.nextval, 'Phosphorus', NULL, 260, 'Y', 'N', 'Y', 'Y', 26, 'MIN'),
  (obiwan.ntrnt_id_seq.nextval, 'Magnesium', NULL, 270, 'Y', 'N', 'Y', 'Y', 27, 'MIN'),
  (obiwan.ntrnt_id_seq.nextval, 'Zinc', NULL, 280, 'Y', 'N', 'Y', 'Y', 28, 'MIN'),
  /* 1.0.1 */
  (obiwan.ntrnt_id_seq.nextval, 'Soluble Fiber', 'g', 123, 'N', 'Y', 'Y', 'Y', 29, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Insoluble Fiber', 'g', 126, 'N', 'Y', 'Y', 'Y', 30, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Sugar Alcohol', 'g', 133, 'N', 'Y', 'Y', 'Y', 31, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Other Carbohydrate', 'g', 136, 'N', 'Y', 'Y', 'Y', 32, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Vitamin E', NULL, 193, 'N', 'Y', 'N', 'Y', 33, 'VIT'),
  (obiwan.ntrnt_id_seq.nextval, 'Vitamin K', NULL, 196, 'N', 'Y', 'N', 'Y', 34, 'VIT'),
  (obiwan.ntrnt_id_seq.nextval, 'Biotin', NULL, 253, 'N', 'Y', 'N', 'Y', 35, 'VIT'),
  (obiwan.ntrnt_id_seq.nextval, 'Pantothenic Acid', NULL, 256, 'N', 'Y', 'N', 'Y', 36, 'VIT'),
  (obiwan.ntrnt_id_seq.nextval, 'Iodine', NULL, 265, 'N', 'Y', 'N', 'Y', 37, 'MIN'),
  (obiwan.ntrnt_id_seq.nextval, 'Selenium', NULL, 290, 'N', 'Y', 'N', 'Y', 38, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Copper', NULL, 300, 'N', 'Y', 'N', 'Y', 39, 'MIN'),
  (obiwan.ntrnt_id_seq.nextval, 'Manganese', NULL, 310, 'N', 'Y', 'N', 'Y', 40, 'MIN'),
  (obiwan.ntrnt_id_seq.nextval, 'Chromium', NULL, 320, 'N', 'Y', 'N', 'Y', 41, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Molybdenum', NULL, 330, 'N', 'Y', 'N', 'Y', 42, NULL),
  (obiwan.ntrnt_id_seq.nextval, 'Chloride', NULL, 340, 'N', 'Y', 'N', 'Y', 43, 'MIN'),
  (obiwan.ntrnt_id_seq.nextval, 'Calories from Saturated Fat', NULL, 350, 'Y', 'Y', 'N', 'Y', 2, NULL);

INSERT INTO obiwan.ntrnt_sect
  (ntrnt_id, tmplt_cd, sect_id, seq_nbr, req_sw, show_amt_sw, show_pct_sw, core_ntrnt_sw)
VALUES
  (1, 'FB', 6, 10, 'Y', 'Y', 'N', 'Y'),
  (2, 'FB', 6, 20, 'Y', 'Y', 'N', 'Y'),
  (3, 'FB', 6, 30, 'Y', 'Y', 'Y', 'Y'),
  (4, 'FB', 6, 40, 'Y', 'Y', 'Y', 'Y'),
  (5, 'FB', 6, 50, 'Y', 'Y', 'N', 'Y'),
  (6, 'FB', 6, 60, 'N', 'Y', 'N', 'Y'),
  (7, 'FB', 6, 70, 'N', 'Y', 'N', 'Y'),
  (8, 'FB', 6, 80, 'Y', 'Y', 'Y', 'Y'),
  (9, 'FB', 6, 90, 'Y', 'Y', 'Y', 'Y'),
  (10, 'FB', 6, 100, 'Y', 'Y', 'Y', 'Y'),
  (11, 'FB', 6, 110, 'Y', 'Y', 'Y', 'Y'),
  (12, 'FB', 6, 120, 'Y', 'Y', 'Y', 'Y'),
  (13, 'FB', 6, 130, 'Y', 'Y', 'N', 'Y'),
  (14, 'FB', 6, 140, 'Y', 'Y', 'N', 'Y'),
  (15, 'FB', 6, 150, 'N', 'N', 'Y', 'Y'),
  (16, 'FB', 6, 160, 'N', 'N', 'Y', 'Y'),
  (17, 'FB', 6, 170, 'N', 'N', 'Y', 'Y'),
  (18, 'FB', 6, 180, 'N', 'N', 'Y', 'Y'),
  (19, 'FB', 6, 190, 'N', 'N', 'Y', 'N'),
  (20, 'FB', 6, 200, 'N', 'N', 'Y', 'N'),
  (21, 'FB', 6, 210, 'N', 'N', 'Y', 'N'),
  (22, 'FB', 6, 220, 'N', 'N', 'Y', 'N'),
  (23, 'FB', 6, 230, 'N', 'N', 'Y', 'N'),
  (24, 'FB', 6, 240, 'N', 'N', 'Y', 'N'),
  (25, 'FB', 6, 250, 'N', 'N', 'Y', 'N'),
  (26, 'FB', 6, 260, 'N', 'N', 'Y', 'N'),
  (27, 'FB', 6, 270, 'N', 'N', 'Y', 'N'),
  (28, 'FB', 6, 280, 'N', 'N', 'Y', 'N'),
  /* 1.0.1 */
  (29, 'FB', 6, 123, 'N', 'Y', 'N', 'N'),
  (30, 'FB', 6, 126, 'N', 'Y', 'N', 'N'),
  (31, 'FB', 6, 133, 'N', 'Y', 'N', 'N'),
  (32, 'FB', 6, 136, 'N', 'Y', 'N', 'N'),
  (33, 'FB', 6, 193, 'N', 'N', 'Y', 'N'),
  (34, 'FB', 6, 196, 'N', 'N', 'Y', 'N'),
  (35, 'FB', 6, 253, 'N', 'N', 'Y', 'N'),
  (36, 'FB', 6, 256, 'N', 'N', 'Y', 'N'),
  (37, 'FB', 6, 265, 'N', 'N', 'Y', 'N'),
  (38, 'FB', 6, 290, 'N', 'N', 'Y', 'N'),
  (39, 'FB', 6, 300, 'N', 'N', 'Y', 'N'),
  (40, 'FB', 6, 310, 'N', 'N', 'Y', 'N'),
  (41, 'FB', 6, 320, 'N', 'N', 'Y', 'N'),
  (42, 'FB', 6, 330, 'N', 'N', 'Y', 'N'),
  (43, 'FB', 6, 340, 'N', 'N', 'Y', 'N'),

  (15, 'FB', 7, 10, 'Y', 'N', 'N', 'Y'),
  (16, 'FB', 7, 20, 'Y', 'N', 'N', 'Y'),
  (17, 'FB', 7, 30, 'Y', 'N', 'N', 'Y'),
  (18, 'FB', 7, 40, 'Y', 'N', 'N', 'Y'),
  (19, 'FB', 7, 50, 'Y', 'N', 'N', 'N'),
  (20, 'FB', 7, 60, 'Y', 'N', 'N', 'N'),
  (21, 'FB', 7, 70, 'Y', 'N', 'N', 'N'),
  (22, 'FB', 7, 80, 'Y', 'N', 'N', 'N'),
  (23, 'FB', 7, 90, 'Y', 'N', 'N', 'N'),
  (24, 'FB', 7, 100, 'Y', 'N', 'N', 'N'),
  (25, 'FB', 7, 110, 'Y', 'N', 'N', 'N'),
  (26, 'FB', 7, 120, 'Y', 'N', 'N', 'N'),
  (27, 'FB', 7, 130, 'Y', 'N', 'N', 'N'),
  (28, 'FB', 7, 140, 'Y', 'N', 'N', 'N'),
  /* 1.0.1 */
  (33, 'FB', 7, 63, 'N', 'N', 'Y', 'N'),
  (34, 'FB', 7, 66, 'N', 'N', 'Y', 'N'),
  (35, 'FB', 7, 113, 'N', 'N', 'Y', 'N'),
  (36, 'FB', 7, 116, 'N', 'N', 'Y', 'N'),
  (37, 'FB', 7, 125, 'N', 'N', 'Y', 'N'),
  (38, 'FB', 7, 150, 'N', 'N', 'Y', 'N'),
  (39, 'FB', 7, 160, 'N', 'N', 'Y', 'N'),
  (40, 'FB', 7, 170, 'N', 'N', 'Y', 'N'),
  (41, 'FB', 7, 180, 'N', 'N', 'Y', 'N'),
  (42, 'FB', 7, 190, 'N', 'N', 'Y', 'N'),
  (43, 'FB', 7, 200, 'N', 'N', 'Y', 'N'),

  /*(protein, 'IN', 16, 10, 'N', 'Y', 'N', 'Y');*/
  (3, 'IN', 16, 20, 'N', 'Y', 'N', 'Y'),
  (11, 'IN', 16, 30, 'N', 'Y', 'N', 'Y'),
  /*(water, 'IN', 16, 40, 'N', 'Y', 'N', 'Y');*/
  /*(linoleic acid, 'IN', 16, 50, 'N', 'Y', 'N', 'Y');*/
  (15, 'IN', 16, 60, 'N', 'Y', 'N', 'Y'),
  (19, 'IN', 16, 70, 'N', 'Y', 'N', 'Y'),
  (33, 'IN', 16, 80, 'N', 'Y', 'N', 'Y'),
  (34, 'IN', 16, 90, 'N', 'Y', 'N', 'Y'),
  (20, 'IN', 16, 100, 'N', 'Y', 'N', 'Y'),
  (21, 'IN', 16, 110, 'N', 'Y', 'N', 'Y'),
  (23, 'IN', 16, 120, 'N', 'Y', 'N', 'Y'),
  (25, 'IN', 16, 130, 'N', 'Y', 'N', 'Y'),
  (22, 'IN', 16, 140, 'N', 'Y', 'N', 'Y'),
  (24, 'IN', 16, 150, 'N', 'Y', 'N', 'Y'),
  (36, 'IN', 16, 160, 'N', 'Y', 'N', 'Y'),
  (35, 'IN', 16, 170, 'N', 'Y', 'N', 'Y'),
  (16, 'IN', 16, 180, 'N', 'Y', 'N', 'Y'),
  /*(choline, 'IN', 16, 190, 'N', 'Y', 'N', 'Y');*/
  /*(inositol, 'IN', 16, 200, 'N', 'Y', 'N', 'Y');*/
  (17, 'IN', 16, 210, 'N', 'Y', 'N', 'Y'),
  (26, 'IN', 16, 220, 'N', 'Y', 'N', 'Y'),
  (27, 'IN', 16, 230, 'N', 'Y', 'N', 'Y'),
  (18, 'IN', 16, 240, 'N', 'Y', 'N', 'Y'),
  (28, 'IN', 16, 250, 'N', 'Y', 'N', 'Y'),
  (40, 'IN', 16, 260, 'N', 'Y', 'N', 'Y'),
  (39, 'IN', 16, 270, 'N', 'Y', 'N', 'Y'),
  (37, 'IN', 16, 280, 'N', 'Y', 'N', 'Y'),
  (9, 'IN', 16, 290, 'N', 'Y', 'N', 'Y'),
  (10, 'IN', 16, 300, 'N', 'Y', 'N', 'Y'),
  (43, 'IN', 16, 310, 'N', 'Y', 'N', 'Y'),
  
  (1, 'CH', 25, 10, 'Y', 'Y', 'N', 'Y'),
  (2, 'CH', 25, 20, 'Y', 'Y', 'N', 'Y'),
  (3, 'CH', 25, 30, 'Y', 'Y', 'Y', 'Y'),
  (4, 'CH', 25, 40, 'Y', 'Y', 'Y', 'Y'),
  (5, 'CH', 25, 50, 'Y', 'Y', 'N', 'Y'),
  (6, 'CH', 25, 60, 'N', 'Y', 'N', 'Y'),
  (7, 'CH', 25, 70, 'N', 'Y', 'N', 'Y'),
  (8, 'CH', 25, 80, 'Y', 'Y', 'Y', 'Y'),
  (9, 'CH', 25, 90, 'Y', 'Y', 'Y', 'Y'),
  (10, 'CH', 25, 100, 'Y', 'Y', 'Y', 'Y'),
  (11, 'CH', 25, 110, 'Y', 'Y', 'Y', 'Y'),
  (12, 'CH', 25, 120, 'Y', 'Y', 'Y', 'Y'),
  (13, 'CH', 25, 130, 'Y', 'Y', 'N', 'Y'),
  (14, 'CH', 25, 140, 'Y', 'Y', 'N', 'Y'),
  (15, 'CH', 25, 150, 'N', 'N', 'Y', 'Y'),
  (16, 'CH', 25, 160, 'N', 'N', 'Y', 'Y'),
  (17, 'CH', 25, 170, 'N', 'N', 'Y', 'Y'),
  (18, 'CH', 25, 180, 'N', 'N', 'Y', 'Y'),

  (44, 'CH', 25, 25, 'Y', 'Y', 'N', 'N'),
  (19, 'CH', 25, 190, 'N', 'N', 'Y', 'N'),
  (20, 'CH', 25, 200, 'N', 'N', 'Y', 'N'),
  (21, 'CH', 25, 210, 'N', 'N', 'Y', 'N'),
  (22, 'CH', 25, 220, 'N', 'N', 'Y', 'N'),
  (23, 'CH', 25, 230, 'N', 'N', 'Y', 'N'),
  (24, 'CH', 25, 240, 'N', 'N', 'Y', 'N'),
  (25, 'CH', 25, 250, 'N', 'N', 'Y', 'N'),
  (26, 'CH', 25, 260, 'N', 'N', 'Y', 'N'),
  (28, 'CH', 25, 280, 'N', 'N', 'Y', 'N'),
  (29, 'CH', 25, 123, 'N', 'Y', 'N', 'N'),
  (30, 'CH', 25, 126, 'N', 'Y', 'N', 'N'),
  (31, 'CH', 25, 133, 'N', 'Y', 'N', 'N'),
  (32, 'CH', 25, 136, 'N', 'Y', 'N', 'N'),
  (33, 'CH', 25, 193, 'N', 'N', 'Y', 'N'),
  (35, 'CH', 25, 253, 'N', 'N', 'Y', 'N'),
  (36, 'CH', 25, 256, 'N', 'N', 'Y', 'N'),

  (37, 'CH', 25, 265, 'N', 'N', 'Y', 'N'),
  (38, 'CH', 25, 290, 'N', 'N', 'Y', 'N'),
  (39, 'CH', 25, 300, 'N', 'N', 'Y', 'N'),
  (40, 'CH', 25, 270, 'N', 'N', 'Y', 'N'),
  (41, 'CH', 25, 320, 'N', 'N', 'Y', 'N'),
  (42, 'CH', 25, 330, 'N', 'N', 'Y', 'N'),
  (43, 'CH', 25, 340, 'N', 'N', 'Y', 'N');


INSERT INTO obiwan.ntrnt_sect_uom
(ntrnt_id, tmplt_cd, sect_id, uom_cd)
VALUES
  (3, 'FB', 6, 'g'),
  (4, 'FB', 6, 'g'),
  (5, 'FB', 6, 'g'),
  (6, 'FB', 6, 'g'),
  (7, 'FB', 6, 'g'),
  (8, 'FB', 6, 'mg'),
  (9, 'FB', 6, 'mg'),
  (10, 'FB', 6, 'mg'),
  (11, 'FB', 6, 'g'),
  (12, 'FB', 6, 'g'),
  (13, 'FB', 6, 'g'),
  (14, 'FB', 6, 'g'),
  /* 1.0.1 */
  (29, 'FB', 6, 'g'),
  (30, 'FB', 6, 'g'),
  (31, 'FB', 6, 'g'),
  (32, 'FB', 6, 'g'),

  (15, 'FB', 7, 'IU'),
  (15, 'FB', 7, 'ug'),
  (16, 'FB', 7, 'mg'),
  (17, 'FB', 7, 'mg'),
  (18, 'FB', 7, 'IU'),
  (18, 'FB', 7, 'ug'),
  (19, 'FB', 7, 'mg'),
  (20, 'FB', 7, 'mg'),
  (21, 'FB', 7, 'mg'),
  (22, 'FB', 7, 'mg'),
  (23, 'FB', 7, 'ug'),
  (24, 'FB', 7, 'ug'),
  (25, 'FB', 7, 'mg'),
  (26, 'FB', 7, 'mg'),
  (27, 'FB', 7, 'mg'),

--   (protein, 'IN', 16, 'g'),
  (3, 'IN', 16, 'g'),
  (11, 'IN', 16, 'g'),
--   (water, 'IN', 16, 'g'),
--   (linoleic acid, 'IN', 16, 'mg'),
  (15, 'IN', 16, 'IU'),
  (19, 'IN', 16, 'IU'),
  (33, 'IN', 16, 'IU'),
  (34, 'IN', 16, 'mcg'),
  (20, 'IN', 16, 'mcg'),
  (21, 'IN', 16, 'mcg'),
  (23, 'IN', 16, 'mcg'),
  (25, 'IN', 16, 'mcg'),
  (22, 'IN', 16, 'mcg'),
  (24, 'IN', 16, 'mcg'),
  (36, 'IN', 16, 'mcg'),
  (35, 'IN', 16, 'mcg'),
  (16, 'IN', 16, 'mg'),
--   (choline, 'IN', 16, 'mg'),
--   (inositol, 'IN', 16, 'mg'),
  (17, 'IN', 16, 'mg'),
  (26, 'IN', 16, 'mg'),
  (27, 'IN', 16, 'mg'),
  (18, 'IN', 16, 'mg'),
  (28, 'IN', 16, 'mg'),
  (40, 'IN', 16, 'mcg'),
  (39, 'IN', 16, 'mcg'),
  (37, 'IN', 16, 'mcg'),
  (9, 'IN', 16, 'mg'),
  (10, 'IN', 16, 'mg'),
  (43, 'IN', 16, 'mg'),

  (3, 'CH', 25, 'g'),
  (4, 'CH', 25, 'g'),
  (5, 'CH', 25, 'g'),
  (6, 'CH', 25, 'g'),
  (7, 'CH', 25, 'g'),
  (8, 'CH', 25, 'mg'),
  (9, 'CH', 25, 'mg'),
  (10, 'CH', 25, 'mg'),
  (11, 'CH', 25, 'g'),
  (12, 'CH', 25, 'g'),
  (13, 'CH', 25, 'g'),
  (14, 'CH', 25, 'g'),
  /* 1.0.1 */
  (29, 'CH', 25, 'g'),
  (30, 'CH', 25, 'g'),
  (31, 'CH', 25, 'g'),
  (32, 'CH', 25, 'g'),
  (15, 'CH', 25, 'IU'),
  (15, 'CH', 25, 'ug'),
  (16, 'CH', 25, 'mg'),
  (17, 'CH', 25, 'mg'),
  (18, 'CH', 25, 'IU'),
  (18, 'CH', 25, 'ug'),
  (19, 'CH', 25, 'mg'),
  (20, 'CH', 25, 'mg'),
  (21, 'CH', 25, 'mg'),
  (22, 'CH', 25, 'mg'),
  (23, 'CH', 25, 'ug'),
  (24, 'CH', 25, 'ug'),
  (25, 'CH', 25, 'mg'),
  (26, 'CH', 25, 'mg');


INSERT INTO obiwan.prod_info_ntrnt
(prod_info_id, ntrnt_id, tmplt_cd, sect_id, srvng_amt)
VALUES
  (1, 1, 'FB', 6, 10);

INSERT INTO obiwan.oth_ntrnt
(oth_ntrnt_id, prod_info_id, sect_id, oth_ntrnt_nm, uom_cd, srvng_amt, daly_val_pct, preprd_srvng_amt, preprd_daly_val_pct)
VALUES
  (obiwan.oth_ntrnt_id_seq.nextval, 1, 6, 'Red Chinese Ginseng', 'mg', 5, 10.5, NULL, NULL),
(obiwan.oth_ntrnt_id_seq.nextval, 1, 6, 'Cheddar Cheese', 'g', 5.75, 15, 6.5, 18),
(obiwan.oth_ntrnt_id_seq.nextval, 1, 7, 'NAFTA Red Chinese Ginseng', 'mg', 5, 10.5, NULL, NULL),
(obiwan.oth_ntrnt_id_seq.nextval, 1, 7, 'NAFTA Cheddar Cheese', 'g', 5.75, 15, 6.5, 18);

INSERT INTO obiwan.rnd_rule
(ntrnt_id, amt_sw, seq_nbr, loer_amt, loer_val_incl_sw, upr_amt, upr_val_incl_sw, rnd_strgy_cd, half_rnd_strgy_cd, strgy_txt)
VALUES
  (1, 'Y', 1, 0, 'Y', 5, 'N', 'SV', NULL, '0'),
  (1, 'Y', 2, 5, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (1, 'Y', 3, 50, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (2, 'Y', 1, 0, 'Y', 5, 'N', 'SV', NULL, '0'),
  (2, 'Y', 2, 5, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (2, 'Y', 3, 50, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (3, 'Y', 1, 0, 'Y', 0.5, 'N', 'SV', NULL, '0'),
  (3, 'Y', 2, 0.5, 'Y', 5, 'N', 'RN', 'UP', '0.5'),
  (3, 'Y', 3, 5, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (3, 'N', 1, 0, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (4, 'Y', 1, 0, 'Y', 0.5, 'N', 'SV', NULL, '0'),
  (4, 'Y', 2, 0.5, 'Y', 5, 'N', 'RN', 'UP', '0.5'),
  (4, 'Y', 3, 5, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (4, 'N', 1, 0, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (5, 'Y', 1, 0, 'Y', 0.5, 'N', 'SV', NULL, '0'),
  (5, 'Y', 2, 0.5, 'Y', 5, 'N', 'RN', 'UP', '0.5'),
  (5, 'Y', 3, 5, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (6, 'Y', 1, 0, 'Y', 0.5, 'N', 'SV', NULL, '0'),
  (6, 'Y', 2, 0.5, 'Y', 5, 'N', 'RN', 'UP', '0.5'),
  (6, 'Y', 3, 5, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (7, 'Y', 1, 0, 'Y', 0.5, 'N', 'SV', NULL, '0'),
  (7, 'Y', 2, 0.5, 'Y', 5, 'N', 'RN', 'UP', '0.5'),
  (7, 'Y', 3, 5, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (8, 'Y', 1, 0, 'Y', 2, 'N', 'SV', NULL, '0'),
  (8, 'Y', 2, 2, 'Y', 5, 'N', 'LT', NULL, '5'),
  (8, 'Y', 3, 5, 'Y', NULL, NULL, 'RN', 'UP', '5'),
  (8, 'N', 1, 0, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (9, 'Y', 1, 0, 'Y', 5, 'N', 'SV', NULL, '0'),
  (9, 'Y', 2, 5, 'Y', 140, 'N', 'RN', 'UP', '5'),
  (9, 'Y', 3, 140, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (9, 'N', 1, 0, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (10, 'Y', 1, 0, 'Y', 5, 'N', 'SV', NULL, '0'),
  (10, 'Y', 2, 5, 'Y', 140, 'N', 'RN', 'UP', '5'),
  (10, 'Y', 3, 140, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (10, 'N', 1, 0, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (11, 'Y', 1, 0, 'Y', 0.5, 'N', 'SV', NULL, '0'),
  (11, 'Y', 2, 0.5, 'Y', 1, 'N', 'LT', NULL, '1'),
  (11, 'Y', 3, 1, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (11, 'N', 1, 0, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (12, 'Y', 1, 0, 'Y', 0.5, 'N', 'SV', NULL, '0'),
  (12, 'Y', 2, 0.5, 'Y', 1, 'N', 'LT', NULL, '1'),
  (12, 'Y', 3, 1, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (12, 'N', 1, 0, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (13, 'Y', 1, 0, 'Y', 0.5, 'N', 'SV', NULL, '0'),
  (13, 'Y', 2, 0.5, 'Y', 1, 'N', 'LT', NULL, '1'),
  (13, 'Y', 3, 1, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (14, 'Y', 1, 0, 'Y', 0.5, 'N', 'SV', NULL, '0'),
  (14, 'Y', 2, 0.5, 'Y', 1, 'N', 'LT', NULL, '1'),
  (14, 'Y', 3, 1, 'Y', NULL, NULL, 'RN', 'UP', '1'),
  (15, 'N', 1, 0, 'Y', 2, 'N', 'TX', NULL, 'Not a significant source of Vitamin A'),
  (15, 'N', 2, 2, 'Y', 10, 'N', 'RN', 'UP', '2'),
  (15, 'N', 3, 10, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (15, 'N', 4, 50, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (16, 'N', 1, 0, 'Y', 2, 'N', 'TX', NULL, 'Not a significant source of Vitamin C'),
  (16, 'N', 2, 2, 'Y', 10, 'N', 'RN', 'UP', '2'),
  (16, 'N', 3, 10, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (16, 'N', 4, 50, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (17, 'N', 1, 0, 'Y', 2, 'N', 'TX', NULL, 'Not a significant source of Calcium'),
  (17, 'N', 2, 2, 'Y', 10, 'N', 'RN', 'UP', '2'),
  (17, 'N', 3, 10, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (17, 'N', 4, 50, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (18, 'N', 1, 0, 'Y', 2, 'N', 'TX', NULL, 'Not a significant source of Iron'),
  (18, 'N', 2, 2, 'Y', 10, 'N', 'RN', 'UP', '2'),
  (18, 'N', 3, 10, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (18, 'N', 4, 50, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (19, 'N', 1, 0, 'Y', 2, 'N', 'TX', NULL, '* Contains less than 2% of the Daily Value of these nutrients'),
  (19, 'N', 2, 2, 'Y', 10, 'N', 'RN', 'UP', '2'),
  (19, 'N', 3, 10, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (19, 'N', 4, 50, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (20, 'N', 1, 0, 'Y', 2, 'N', 'TX', NULL, '* Contains less than 2% of the Daily Value of these nutrients'),
  (20, 'N', 2, 2, 'Y', 10, 'N', 'RN', 'UP', '2'),
  (20, 'N', 3, 10, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (20, 'N', 4, 50, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (21, 'N', 1, 0, 'Y', 2, 'N', 'TX', NULL, '* Contains less than 2% of the Daily Value of these nutrients'),
  (21, 'N', 2, 2, 'Y', 10, 'N', 'RN', 'UP', '2'),
  (21, 'N', 3, 10, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (21, 'N', 4, 50, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (22, 'N', 1, 0, 'Y', 2, 'N', 'TX', NULL, '* Contains less than 2% of the Daily Value of these nutrients'),
  (22, 'N', 2, 2, 'Y', 10, 'N', 'RN', 'UP', '2'),
  (22, 'N', 3, 10, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (22, 'N', 4, 50, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (23, 'N', 1, 0, 'Y', 2, 'N', 'TX', NULL, '* Contains less than 2% of the Daily Value of these nutrients'),
  (23, 'N', 2, 2, 'Y', 10, 'N', 'RN', 'UP', '2'),
  (23, 'N', 3, 10, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (23, 'N', 4, 50, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (24, 'N', 1, 0, 'Y', 2, 'N', 'TX', NULL, '* Contains less than 2% of the Daily Value of these nutrients'),
  (24, 'N', 2, 2, 'Y', 10, 'N', 'RN', 'UP', '2'),
  (24, 'N', 3, 10, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (24, 'N', 4, 50, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (25, 'N', 1, 0, 'Y', 2, 'N', 'TX', NULL, '* Contains less than 2% of the Daily Value of these nutrients'),
  (25, 'N', 2, 2, 'Y', 10, 'N', 'RN', 'UP', '2'),
  (25, 'N', 3, 10, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (25, 'N', 4, 50, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (26, 'N', 1, 0, 'Y', 2, 'N', 'TX', NULL, '* Contains less than 2% of the Daily Value of these nutrients'),
  (26, 'N', 2, 2, 'Y', 10, 'N', 'RN', 'UP', '2'),
  (26, 'N', 3, 10, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (26, 'N', 4, 50, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (27, 'N', 1, 0, 'Y', 2, 'N', 'TX', NULL, '* Contains less than 2% of the Daily Value of these nutrients'),
  (27, 'N', 2, 2, 'Y', 10, 'N', 'RN', 'UP', '2'),
  (27, 'N', 3, 10, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (27, 'N', 4, 50, 'Y', NULL, NULL, 'RN', 'UP', '10'),
  (28, 'N', 1, 0, 'Y', 2, 'N', 'TX', NULL, '* Contains less than 2% of the Daily Value of these nutrients'),
  (28, 'N', 2, 2, 'Y', 10, 'N', 'RN', 'UP', '2'),
  (28, 'N', 3, 10, 'Y', 50, 'N', 'RN', 'UP', '5'),
  (28, 'N', 4, 50, 'Y', NULL, NULL, 'RN', 'UP', '10');

-- Product ingredient list
INSERT INTO obiwan.prod_info_ingrd_list
(prod_info_id,eng_ingrd_list_txt,spnsh_ingrd_list_txt)
VALUES
  (1, 'enriched flour, wheat, niacin, iron, corn starch, sugar, soy', null),
  (2, 'flour, water, calcium, oat, corn syrup, biotin, folic acid', null);

-- Ingredient data
INSERT INTO  obiwan.ingrd
(ingrd_id, ingrd_nm, lib_id)
VALUES
  (obiwan.ingrd_id_seq.nextval, 'apple', 0),
  (obiwan.ingrd_id_seq.nextval, 'avocado', 0),
  (obiwan.ingrd_id_seq.nextval, 'banana', 0),
  (obiwan.ingrd_id_seq.nextval, 'berillium', 1),
  (obiwan.ingrd_id_seq.nextval, 'blueberry', 0),
  (obiwan.ingrd_id_seq.nextval, 'cough drops', 1);

-- Product Info Ingredient data
INSERT INTO obiwan.prod_info_ingrd
(prod_info_id, ingrd_id, ingrd_amt, uom_cd, drg_ingrd_sw)
VALUES
  (1, 2, 12345.1234, 'mg', 'Y'),
  (2, 3, 123.123, 'g', 'Y'),
  (3, 1, 999.999, 'ug', 'Y');

-- Product Info code data
INSERT INTO obiwan.prod_info_cd_dt
(prod_info_id, seq_nbr, cd_dt_frmat_txt)
VALUES
  (3, obiwan.cd_dt_seq_nbr_seq.nextval, 'date 1'),
  (3, obiwan.cd_dt_seq_nbr_seq.nextval, 'date 3'),
  (3, obiwan.cd_dt_seq_nbr_seq.nextval, 'date 2'),
  (3, obiwan.cd_dt_seq_nbr_seq.nextval, 'date 4');

INSERT INTO obiwan.ingrd_alias
(ingrd_id, seq_nbr, alias_nm)
VALUES
  (1, 1, 'apples'),
  (2, 1, 'avocados'),
  (3, 1, 'bananas'),
  (3, 2, 'yellow bananas'),
--     (5, 1, 'blueberries'),
  (6, 1, 'cough drop');

-- NAFTA Code Date
INSERT INTO obiwan.nafta_dt
(nafta_dt_cd, nafta_dt_des, max_three_mm_sw)
VALUES
  ('DM3', 'DD / JAN (ENE)', 'Y'),
  ('DM3Y', 'DD / JAN (ENE) / YYYY', 'Y'),
  ('M2Y', 'MM / YYYY', 'N'),
  ('DM3YL', 'DD / JAN (ENE) / YYYY', 'N'),
  ('M3Y', 'JAN (ENE) / YYYY', 'N');

INSERT INTO obiwan.nafta_trnsl
(prod_info_id, nafta_drain_wt_txt, nafta_dt_cd,spnsh_clm_txt,spnsh_warn_txt,spnsh_instn_txt)
VALUES
  (1, '200 gramos', 'DM3YL','spanish claims', 'spanish warn', 'spanish instructions');

INSERT INTO obiwan.prod_drg_info
(prod_info_id, drg_typ_cd, dose_stmt_txt, drg_use_txt, drg_info_txt, drg_qstn_stmt_txt)
VALUES
  (5, 'M    ','Adults and children 12 years and over: take i caplet every 4 to 6 hours while symptoms persist....',
   'Do not use: if you have ever had an allergic reaction to any other pain reliever/fever reducer.....',
   'store between 20-25 degrees C (68-77 degrees F)....',
   'For questions or water quality report call 1-800-678-4448 or OZARKAWATER.com');

-- Analysis Attribute

INSERT INTO obiwan.anyls_attr
(anyls_attr_id, anyls_attr_nm, seq_nbr, min_sw)
VALUES
  (1, 'Crude Protein', 1, 'Y'),
  (2, 'Crude Fat', 2, 'Y'),
  (3, 'Crude Fiber', 3, 'N'),
  (4, 'Another nutrient', 4, 'N');
--

--Pet Food Type
INSERT INTO obiwan.pet_fd_typ
(pet_fd_typ_cd, pet_fd_typ_des)
VALUES
('DOG', 'Doge Food'),
('CAT', 'Cat Food'),
('SPCL', 'Specialty Pet');

-- Analysis Attribute Pet Food Type
INSERT INTO obiwan.anyls_attr_pet_fd_typ
(anyls_attr_id, pet_fd_typ_cd, core_ntrnt_sw, dflt_min_sw)
VALUES
(1, 'DOG', 'Y', 'Y'),
(2, 'DOG', 'N', 'Y'),
(3, 'DOG', 'Y', 'N'),
(2, 'CAT', 'Y', 'Y'),
(3, 'SPCL', 'N', 'N');

-- Product Analysis Attribute
INSERT INTO obiwan.prod_anyls_attr
(prod_info_id, anyls_attr_id, per_srvng_qty, actv_sw, min_sw)
VALUES
  (1, 1, 12345.123, 'Y', 'N'),
  (1, 2, 150.0, 'Y', 'N'),
  (2, 2, 1, 'Y', 'N'),
  (2, 3, 0, 'N', 'N');

-- Product Claims Data
INSERT INTO obiwan.clm
(clm_id, clm_nm, allow_mult_sw, actv_sw, prod_mgmt_attr_id)
VALUES
  (obiwan.clm_id_seq.nextval, 'Gluten-Free', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Lactose Free', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Vegetarian', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Vegan', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'From Concentrate', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Not From Concentrate', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Antibiotic Free', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'No Hormones', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Vegetarian Fed', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'BPA/Phtalate Free', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Microwaveable', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Recyclable', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'USDA Natural', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'USDA Prime', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'USDA Choice', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Made in Texas', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Go Texan', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'No Artificial Colors', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'No Artificial Flavors', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Artificial Preservatives', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Caramel Color Added', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Other', 'Y', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Kosher Certified', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'USDA Organic (>= 95%)', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Contains Natural Flavors', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Contains Artifical Flavors', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Reduced (>= 25% or less)', 'Y', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Low', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Free', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Light', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Good Source of (>= 10-19% DV)', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Excellent Source of (>= 20% DV)', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Whole Grain', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Added Caffeine', 'N', 'Y', 0),
  (obiwan.clm_id_seq.nextval, 'Other Notes', 'Y', 'Y', 0);

INSERT INTO obiwan.tmplt_clm
(tmplt_cd, clm_id, seq_nbr)
VALUES
  ('FB', 1, 2),
  ('FB', 2, 3),
  ('FB', 3, 4),
  ('FB', 4, 5),
  ('FB', 5, 6),
  ('FB', 6, 7),
  ('FB', 7, 8),
  ('FB', 8, 9),
  ('FB', 9, 10),
  ('FB', 22, 11),
  ('FB', 23, 12),
  ('FB', 25, 13),
  ('FB', 26, 14),
  ('FB', 28, 15),
  ('FB', 34, 18),
  ('FB', 32, 19),
  ('FB', 29, 20),
  ('FB', 31, 21),
  ('FB', 30, 22),
  ('FB', 27, 23),
  ('FB', 24, 25),
  ('FB', 33, 26),
  ('GN', 1, 1),
  ('CN', 2, 1);

INSERT INTO obiwan.prod_info_clm
(prod_info_id, clm_id, seq_nbr, vend_appr_sw, pdm_appr_sw, rgltr_appr_sw)
VALUES
  (1, 1, 1, 'Y', 'Y', 'N'),
  (1, 28, 1, 'Y', 'N', 'Y'),
  (1, 22, 1, 'N', 'N', 'N'),
  (1, 28, 2, 'Y', 'N', 'Y'),
  (3, 29, 20, 'N', 'N', 'N');

INSERT INTO obiwan.prod_info_clm_stmt
(prod_info_id, warns_txt, instns_txt, preprt_usda_sw, usda_estb_nbr, epa_nbr, strg_txt, adl_info_txt)
VALUES
  (1, 'Warnings here', 'Instructions here', 'Y', 111, '', '', ''),
  (2, 'Texas Warnings here', 'Texas Instructions here', 'Y', 222, '', '', ''),
  (3, 'Brazil Warnings here', 'Brazil Instructions here', 'N', 333, '123', 'storage text', 'additional info');

INSERT INTO obiwan.qual_typ
(qual_typ_cd, qual_typ_des)
VALUES
  ('CH', 'CheckBox'),
  ('RD', 'Radio'),
  ('TX', 'Text'),
  ('DD', 'DropDown');

INSERT INTO obiwan.qual
(qual_id, qual_typ_cd, clm_id, qual_lbl_txt, xtra_fld_lbl_txt, show_xtra_fld_sw, actv_sw, seq_nbr, place_hlder_txt, prod_mgmt_attr_id)
VALUES
  (obiwan.qual_id_seq.nextval, 'RD', 25, 'Characterizing', '- Specify:', 'Y', 'Y', 10, 'Specify characterizing flavor type', 0),
  (obiwan.qual_id_seq.nextval, 'RD', 25, 'Not Characterizing', null, 'N', 'Y', 20, 'Specify characterizing flavor type', 0),
  (obiwan.qual_id_seq.nextval, 'RD', 26, 'Characterizing', '- Specify:', 'Y', 'Y', 10, NULL, 0),
  (obiwan.qual_id_seq.nextval, 'RD', 26, 'Not Characterizing', null, 'N', 'Y', 20, NULL, 0),
  (obiwan.qual_id_seq.nextval, 'TX', 33, 'g/serving', null, 'N', 'Y', 10, 'State amount (g)', 0),
  (obiwan.qual_id_seq.nextval, 'TX', 34, 'mg/serving', null, 'N', 'Y', 10, 'Amount (mg)', 0),
  (obiwan.qual_id_seq.nextval, 'DD', 28, null, null, 'N', 'Y', 1, 'Specify claim', 0),
  (obiwan.qual_id_seq.nextval, 'DD', 32, null, null, 'N', 'Y', 10, 'Specify claim', 0),
  (obiwan.qual_id_seq.nextval, 'TX', 29, null, null, 'N', 'Y', 10, 'Specify claim', 0),
  (obiwan.qual_id_seq.nextval, 'TX', 31, null, null, 'N', 'Y', 10, 'Specify claim', 0),
  (obiwan.qual_id_seq.nextval, 'TX', 30, null, null, 'N', 'Y', 10, 'Specify claim', 0),
  (obiwan.qual_id_seq.nextval, 'TX', 27, null, null, 'N', 'Y', 10, 'Specify claim', 0),
  (obiwan.qual_id_seq.nextval, 'TX', 24, 'Certifier', null, 'Y', 'Y', 10, 'Certifying agency', 0),
  (obiwan.qual_id_seq.nextval, 'CH', 23, 'Kosher Dairy', null, 'N', 'Y', 10, 'Certifying agency', 0),
  (obiwan.qual_id_seq.nextval, 'CH', 23, 'Kosher Parve', null, 'N', 'Y', 20, 'Certifying agency', 0),
  (obiwan.qual_id_seq.nextval, 'CH', 23, 'Kosher Passover', null, 'N', 'Y', 30, 'Certifying agency', 0),
  (obiwan.qual_id_seq.nextval, 'TX', 22, null, null, 'N', 'Y', 10, 'Specify Claim', 0);

INSERT INTO obiwan.qual_opt
(qual_id, qual_opt_id, qual_opt_lbl_txt, cstm_opt_sw, prod_mgmt_attr_id)
VALUES
  (7, 1, 'Custom', 'Y', 1),
  (7, 2, 'Sugar', 'N', 1),
  (7, 3, 'Sodium', 'N', 1),
  (8, 4, 'Custom', 'Y', 1),
  (8, 5, 'Sugar', 'N', 1),
  (8, 6, 'Wheat', 'N', 1);

INSERT INTO obiwan.prod_info_qual
(qual_id, prod_info_id, clm_id, seq_nbr, qual_val_txt, qual_opt_id)
VALUES
  (5, 1, 28, 1, 'Sodium',null),
  (5, 1, 28, 2, 'Fat', null);

INSERT INTO obiwan.prod_info_fac
(prod_info_id, splr_id, fac_id)
VALUES
  (1, 2, 1);

INSERT INTO obiwan.prod_info_coo
(prod_info_id, seq_nbr, coo_stmt_txt, cntry_cd, coo_excp_txt)
VALUES
  (1, 1, 'American Made', 4, null);

INSERT INTO obiwan.prod_info_matrl
(prod_info_id, seq_nbr, matrl_id, qty, matrl_txt, spcfn_txt, cmpnt_nm, cre8_uid, cre8_ts, lst_updt_uid, lst_updt_ts)
VALUES
  (4, 1, 2, 1, 'material text', 'specification text', 'A component', 'sadc003', '2015-01-21 16:00:00', 'sadc003', '2015-01-21 16:00:00');

INSERT INTO obiwan.prod_infnt_feeding_info
(prod_info_id, seq_nbr, to_make_amt_txt, water_amt_txt, pwdr_amt_txt)
VALUES
  (3, obiwan.infnt_feeding_info_seq_nbr_seq.nextval, 'to make', 'water', 'scoop');

INSERT INTO obiwan.child_fd_typ
(child_fd_typ_cd, child_fd_typ_des)
VALUES
  ('IF', 'Infant - 2 yrs'),
  ('CL', 'Children less than 4');

INSERT INTO obiwan.ntrnt_child_fd_typ
  (ntrnt_id, tmplt_cd, sect_id, child_fd_typ_cd)
VALUES
--   core -Infant - 2 yrs
  (1, 'CH', 25, 'IF'),
  (3, 'CH', 25, 'IF'),
  (5, 'CH', 25, 'IF'),
  (8, 'CH', 25, 'IF'),
  (9, 'CH', 25, 'IF'),
  (10, 'CH', 25, 'IF'),
  (11, 'CH', 25, 'IF'),
  (12, 'CH', 25, 'IF'),
  (13, 'CH', 25, 'IF'),
  (14, 'CH', 25, 'IF'),
  (15, 'CH', 25, 'IF'),
  (16, 'CH', 25, 'IF'),
  (17, 'CH', 25, 'IF'),
  (18, 'CH', 25, 'IF'),

-- optional -Infant - 2 yrs
  (19, 'CH', 25, 'IF'),
  (33, 'CH', 25, 'IF'),
  (20, 'CH', 25, 'IF'),
  (21, 'CH', 25, 'IF'),
  (22, 'CH', 25, 'IF'),
  (23, 'CH', 25, 'IF'),
  (24, 'CH', 25, 'IF'),
  (25, 'CH', 25, 'IF'),
  (35, 'CH', 25, 'IF'),
  (36, 'CH', 25, 'IF'),
  (26, 'CH', 25, 'IF'),
  (37, 'CH', 25, 'IF'),
  (40, 'CH', 25, 'IF'),
  (28, 'CH', 25, 'IF'),
  (39, 'CH', 25, 'IF'),

-- core -Children less than 4
  (1, 'CH', 25, 'CL'),
  (2, 'CH', 25, 'CL'),
  (3, 'CH', 25, 'CL'),
  (4, 'CH', 25, 'CL'),
  (5, 'CH', 25, 'CL'),
  (6, 'CH', 25, 'CL'),
  (7, 'CH', 25, 'CL'),
  (8, 'CH', 25, 'CL'),
  (9, 'CH', 25, 'CL'),
  (10, 'CH', 25, 'CL'),
  (11, 'CH', 25, 'CL'),
  (12, 'CH', 25, 'CL'),
  (13, 'CH', 25, 'CL'),
  (14, 'CH', 25, 'CL'),
  (15, 'CH', 25, 'CL'),
  (16, 'CH', 25, 'CL'),
  (17, 'CH', 25, 'CL'),
  (18, 'CH', 25, 'CL'),

-- optional -Children less than 4
  (44, 'CH', 25, 'CL'),
  (29, 'CH', 25, 'CL'),
  (30, 'CH', 25, 'CL'),
  (31, 'CH', 25, 'CL'),
  (32, 'CH', 25, 'CL'),
  (19, 'CH', 25, 'CL'),
  (33, 'CH', 25, 'CL'),
  (20, 'CH', 25, 'CL'),
  (21, 'CH', 25, 'CL'),
  (22, 'CH', 25, 'CL'),
  (23, 'CH', 25, 'CL'),
  (24, 'CH', 25, 'CL'),
  (25, 'CH', 25, 'CL'),
  (35, 'CH', 25, 'CL'),
  (36, 'CH', 25, 'CL'),
  (26, 'CH', 25, 'CL'),
  (37, 'CH', 25, 'CL'),
  (40, 'CH', 25, 'CL'),
  (28, 'CH', 25, 'CL'),
  (39, 'CH', 25, 'CL');
