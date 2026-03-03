## Improved User Stories

### User Story: SR-060 | Issue Electronic Duplicate Invoice - Initiated by Drawer (File Upload and Manual Entry) - includes "Management of Debtor Links (Drawer x Debtor)"

#### Improved Version

**1) Description**

**As a** Drawer, **I want** to issue an Electronic Duplicate Invoice through the SPC Grafeno web interface by either:
- Manually entering the required fields for an Electronic Duplicate Invoice on-screen; or
- Uploading a standardized .CSV file containing data for one or more Duplicate Invoices.

This is to formalize a commercial transaction where payment is deferred with an invoice related to the actual sale of goods and/or provision of services.

**Note:** The description was streamlined for clarity and removed any redundant information. Each method (manual entry or file upload) is clearly stated as an option.

**2) Functional Description / Business Rules**

**2.1) Manual Entry on Screen for Required Fields of an Electronic Duplicate Invoice**

**What it does:** The Drawer manually fills in the fields with the information needed to issue the Electronic Duplicate Invoice.

- After filling in the fields, the Invoicing System must display a summary screen with all the data for review and validation by the Drawer.
- The summary screen should include information not filled in by the Drawer but part of the Duplicate Invoice and present in the SPC Grafeno database, such as:
  - Issue Date (corresponds to the issuance/registration date);
  - Drawer Identification (CPF/CNPJ);
  - Drawer Address (Street, Number, Complement, Neighborhood, ZIP Code, State, Municipality);
  - Signature Type (Drawer) (fill with “Tacit”);

- Upon acceptance by the Drawer on the summary screen, the Invoicing System should validate the data, and:
  - If OK:
    - Issue/register the Duplicate Invoice and assign the Unique Duplicate Identifier (UDI);
    - Associate the UDI with a Duplicate Unit (DU);
    - DU = same Drawer, Debtor, and Due Date of the Duplicate Invoice.
    - Check if the Debtor already exists in the SPC Grafeno database. If not, add to the SPC Grafeno “Debtor Registration” database and the PLAT Control Base (via PLAT message ctrl.007), indicating the Debtor's status ("Unpaid Duplicates"). If it exists and its status is “Paid Duplicates” or “No Duplicates for Debtor,” change to “Unpaid Duplicates” in the SPC Grafeno Base and the PLAT Control Base (via message ctrl.011).
      - SLA: The link inclusion with the Debtor in the PLAT Control Base must be performed within 10 minutes of issuing the first Duplicate against the Debtor.
    - The status of the Duplicate in the system should be:
      - “Free” (FREE), if there is no automatic extension contract (as defined in story AF-070 | AF-075); or
      - “Committed” (BLOCK), if the DU is already negotiated or there is an automatic extension contract (as defined in story AF-070 | AF-075);
        i. The same Negotiation Effects should be applied to the newly issued Duplicate.
        ii. The SPC Grafeno Registration System must notify the Financing Agent if it is on the SPC Grafeno border or via PLAT (message ntfc.001) to the Registration System of the Duplicate holder or beneficiary (as defined in the story Notify Recorder of the Holder or Beneficiary of the DE).
        iii. The SPC Grafeno Registration System must send a negotiation effect notification to the Debtor, as per contact details registered in the SPC Grafeno System (as defined in story SO-025-Notification to the Debtor).
    - The Invoicing System must notify the Debtor about the issuance of the Duplicate within the SLA of up to 5 minutes (as defined in story SO-025-Notification to the Debtor).
  - If NOT OK:
    - Display on-screen the inconsistencies found for correction or adjustment by the Drawer;
    - The status of the Duplicate in the system should be “Pending”.
- The Duplicate must be displayed on the Duplicate inquiry screen for the Drawer to view.
- The Invoicing System must maintain in the Duplicate's history the date and time (timestamp) identifying the registration (issuance moment) as evidence of the process and allow its consultation. Example:
  “[dd/mm/yyyy - hh:mm] Duplicate Issued by (user name) successfully. (UDI: (UDI number)).”
- On the same day the Duplicate was issued/registered, the Invoicing System must send it for registration in the SPC Grafeno Registration System and maintain in the Duplicate's history the date and time (timestamp) identifying the registration (registration moment) as evidence of the process and allow its consultation. Example:
  “[dd/mm/yyyy - hh:mm] Duplicate Registered by SPC Grafeno successfully.”
- The Drawers will reconcile (as defined in story SR-155 – Drawer Reconciliation) other information related to the issuance of Duplicates, such as:
  - The Electronic Duplicates issued with those in the merchant operation control systems of the Drawers;
  - The tax documents corresponding to the issued Electronic Duplicates that are associated with them;
  - The payment instruments corresponding to the issued Electronic Duplicates that are associated with them.

**Special Restrictions/Situations:**

- If the Drawer has any restriction in the SPC Grafeno Invoicing System (status “Restricted”), they cannot issue a Duplicate (as per story SR-999-Include or update link with the Drawer in the Control Base).
- If a Duplicate is issued against a Drawer with “Inactive” status (SPC Grafeno Base and PLAT Control Base), the Invoicing System must update the status in the SPC Grafeno Base and command a status update to “Active” via message ctrl.005.
- All mandatory data must be filled in for the issuance of the Duplicate to occur.
- The UDI can only be generated if all mandatory fields are informed and valid.
- The Duplicate must be unique, and the Invoicing System should validate its uniqueness, as follows:
  - Drawer (CPF/CNPJ);
  - Debtor (CPF/CNPJ);
  - Duplicate Number (invoice number + installment sequence (3));
  - Duplicate Value;
  - Duplicate Due Date;
- The Debtor must be notified within 5 minutes (SLA) of the Duplicate issuance.
- Debtor data, when informed during Duplicate issuance, should be automatically registered in the SPC Grafeno “Debtor Registration” database. The data to be stored are:
  - Full Name/Corporate Name;
  - CPF/CNPJ;
  - Street;
  - Number;
  - Complement;
  - Neighborhood/District;
  - Municipality;
  - ZIP Code;
  - State;
  - Phone;
  - Email.
- Debtor data, when not informed by the Drawer during issuance, may be obtained by the Invoicing System from the “Debtor Registration” database if available;
  Important: For the MVP, Debtor data will be unique in the SPC Grafeno database and reusable by Drawers for their issuances when necessary. They can be updated when new and different data is provided.
- After the Duplicate is issued/registered, Debtor data must not be altered if these data are subsequently updated in the “Debtor Registration” database.
- Fiscal Document data, when informed at the moment of Duplicate issuance/registration, must be validated according to rules contained in the story “SR-080/SR-100/SR-110 - Update Information of Electronic Duplicate (by Drawer) -> item 2.2,” and consider for issuance that:
  - The fiscal document associated at the moment of Duplicate issuance must have the due date and installment value of the Duplicate.
- Guarantor data, when informed at the moment of Duplicate issuance/registration, must observe:
  - If the Guarantor is the same as the Drawer, the system must indicate on the summary screen that the signature type is “Tacit” and allow Duplicate issuance/registration if other validations are OK;
  - If the Guarantor is different from the Drawer, the system must provide a mechanism for electronic signature (to be defined by the development team) of the Guarantor. In this case, the Duplicate should remain with “Pending” status until the signature is made, after which the Duplicate can be issued.
- Duplicate data validations must be the same for internal and external Duplicate issuance APIs.

**2.2) Upload of a Standardized .CSV File with Data for One or More Duplicates**

**What it does:** The Drawer uploads a .CSV file through the Invoicing System web interface with information for one or more Duplicates for issuance.

- The .CSV file must be standardized and include data for issuing the Duplicate.
- The Invoicing System should present a screen (see Sacador Journey prototype, "Remittance Management" menu) to view the processing of the .CSV file, containing:
  - Upload Date/Time;
  - User responsible for the Upload;
  - Number of Duplicates (Total);
  - Number of Duplicates (Issued);
  - Number of Duplicates (Pending);
  - File processing status (to start, in progress, processed, and error);
  - Reasons for Failures (when there is an error in processing any Duplicate);
- The Duplicate must be displayed individually on the Duplicate inquiry screen for the Drawer to view.
- Duplicates with invalid data should be presented with “Pending” status for later update by the Drawer.
- Duplicate issuance/registration from uploading a .CSV file must meet the same rules and validations defined in item 2.1 of this document.

**Restrictions:**

- The upload file must be in .CSV format with a column standard defined by the Invoicing System.
- The System must support file upload according to size defined by the technical team.
- File processing must be asynchronous, and its progress presented on-screen for Drawer tracking.
- Duplicates with errors/inconsistencies in the CSV should not block the processing of others.
- All actions (upload, errors, issuances) must be logged by the System.

**Note:** The functional description was refined for clarity, consistency, and reduced redundancy. Specific terms were used to make rules clearer, and placeholders were replaced with detailed actions where necessary.

### Personas

- Drawer (e.g., Flour Factory) – Fills in the fields of the Electronic Duplicate Invoice and issues it.
- SPC Grafeno Invoicing System - Executes the action in the SPC Grafeno Invoicing System.
- SPC Grafeno Registration System – Registers the Duplicate in the SPC Grafeno Registration System.

**Note:** Personas were clarified to reflect their roles and interactions with the system.

### Acceptance Criteria (DoD)

- **Functional:**
  - Validation of Drawer (active, with no restrictions).
  - Mandatory fields completed.
  - Summary screen for review by Drawer, when manual entry.
  - UDI generation and DU linkage.
  - Correct status of the Duplicate (FREE/BLOCK/Pending).
  - Automatic treatment of Debtor (registration/update in the SPC Grafeno Debtor Registration database and the PLAT Control Base), respecting the defined SLAs.
  - Uniqueness of the Duplicate guaranteed.
  - History record with timestamps and hashes.
  - CSV file is the only accepted format.
  - CSV file processing available for consultation.
  - System must validate if CSV file contains data of at least one Duplicate for processing.
  - When CSV file upload, mandatory Duplicate fields must be filled in, and if not, Duplicate must be marked as “Pending” in the System for manual update by the Drawer.
  - When CSV file upload, System must apply the same validations of individual issuance (item 2.1).
  - When CSV file upload, errors/inconsistencies must be detailed by CSV line/record, where the user must be able to download an error log after processing.
  - Data structure must follow the PLAT data dictionary (Catalog).

**Note:** Acceptance criteria were reformulated to ensure they are actionable, clear, and measurable.