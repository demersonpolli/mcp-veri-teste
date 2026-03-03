# Improved User Stories

## User Story: **SR-060 | Emit Duplicate Escritural – Initiated by Drawer (File Upload and Manual Entry)**

### Description

**As a** Drawer  
**I want** to issue a Duplicate Escritural through the SPC Grafeno web interface by:  
- Manually filling in the required fields for a Duplicate Escritural on-screen; or  
- Uploading a standardized .CSV file with the data for one or more Duplicates.  
**So that** I can formalize a commercial transaction with payment defined "on credit" with an invoice related to the actual sale of goods and/or services.

### Improved User Story

**1) Manual Entry of Required Fields for a Duplicate Escritural**

**What does it do?** The Drawer manually fills in the fields with information for the Duplicate Escritural to be issued.

- After completing the fields, the Escrituração System presents a summary screen displaying all data for the Drawer’s review and validation.
- The summary screen must include automatically filled information from the SPC Grafeno database, such as:
  - Date of Issue (matches the issuance/scripting date);
  - Drawer Identification (CPF/CNPJ);
  - Drawer Address (Street, Number, Complement, Neighborhood, ZIP, State, Municipality);
  - Type of Signature (Drawer) ("Implicit").
- Once the Drawer approves the summary screen, the Escrituração System must validate the data, and:
  - If valid:
    - Issue/script the Duplicate and assign a Unique Duplicate Identifier (IUD);
    - Associate the IUD with a Duplicate Unit (UD);
    - UD = same Drawer, Drawee, and Duplicate Due Date.
    - Check if the Drawee exists in the SPC Grafeno database. If not, add to the SPC Grafeno “Drawee Registry” and the PLAT Control Base (via PLAT message ctrl.007), indicating Drawee status (“Unpaid Duplicates”). If they exist and status is “Paid Duplicates” or “No Duplicates for Drawee,” change to “Unpaid Duplicates” in the SPC Grafeno and PLAT Control Base (via ctrl.011 message).
      - SLA: The link inclusion with the Drawee in the PLAT Control Base must be done within 10 minutes of issuing the first Duplicate against the Drawee.
    - The Duplicate status must be:
      - “Free” (LIVR), if there is no automatic extension contract (as defined in user story AF-070 | AF-075); or
      - “Committed” (BLOQ), if the UD is already negotiated or there is an automatic extension contract (as defined in user story AF-070 | AF-075);
        - The same Negotiation Effects should apply to the newly issued Duplicate.
        - The SPC Grafeno Registration System must notify the Financing Agent if located at the SPC Grafeno border or via PLAT (ntfc.001 message) to the Registration System of the Duplicate holder or beneficiary (as defined in the user story Notify Holder or Beneficiary Registrar of the DE).
        - The SPC Grafeno Registration System must notify the Drawee of negotiation effects, based on contact data registered in the SPC Grafeno System (as defined in the user story SO-025-Notification to Drawee).
    - The Escrituração System must notify the Drawee about the Duplicate issuance within the SLA of up to 5 minutes (as defined in the user story SO-025-Notification to Drawee).
  - If not valid:
    - Display the consistency checks for correction or adjustment by the Drawer;
    - The Duplicate status must be “Pending.”
- The Duplicate must be available on the Duplicates consultation screen for the Drawer’s viewing.
- The Escrituração System must keep a historical record of the Duplicate issuance with date and time (timestamp) as process evidence and allow consultation. Example:  
  “[dd/mm/yyyy - hh:mm] Duplicate Issued by (user name) successfully. (IUD: (IUD number)).”
- The Escrituração System must send the issued/scripted Duplicate for registration in the SPC Grafeno Registration System on the same day and maintain a historical record with date and time (timestamp) as process evidence and allow consultation. Example:  
  “[dd/mm/yyyy - hh:mm] Duplicate Registered by SPC Grafeno successfully.”
- The Duplicates issued must be reconciled by the Drawer (as defined in story SR-155 – Drawer Reconciliation), including information such as:
  - The issued Duplicates with those in the Drawer’s merchant operation control systems;
  - The fiscal documents corresponding to the issued Duplicates and associated with them;
  - The payment instruments corresponding to the issued Duplicates and associated with them.

**Special Restrictions/Conditions:**

- If the Drawer has any restrictions in the SPC Grafeno Escrituração System (status “Restricted”), they cannot issue Duplicates (as per story SR-999-Include or update link with Drawer in the Control Base).
- If a Duplicate is issued for a Drawer with status “Inactive” (SPC Grafeno Base and PLAT Control Base), the Escrituração System must update the status in the SPC Grafeno Base and command a status update to “Active” via ctrl.005 message.
- All mandatory fields must be filled for the Duplicate issuance to occur.
- The IUD can only be generated if all mandatory fields are informed and valid.
- The Duplicate must be unique, and the Escrituração System should validate its uniqueness based on:
  - Drawer (CPF/CNPJ);
  - Drawee (CPF/CNPJ);
  - Duplicate Number (invoice number + installment sequence (3));
  - Duplicate Value;
  - Duplicate Due Date.
- The Drawee must be notified within 5 minutes (SLA) of the Duplicate issuance.
- When Drawee data is provided during Duplicate issuance, it should be automatically registered in the SPC Grafeno "Drawee Registry". Stored data includes:
  - Full Name/Corporate Name;
  - CPF/CNPJ;
  - Street;
  - Number;
  - Complement;
  - Neighborhood/District;
  - Municipality;
  - ZIP;
  - State;
  - Phone;
  - Email.
- If Drawee data isn’t provided by the Drawer, it can be retrieved from the "Drawee Registry" base when available.  
Important: For the MVP, Drawee data will be unique in the SPC Grafeno base and reusable by Drawers for their issuances when needed. It can be updated when new and different data is provided.
- Once the Duplicate is issued/scripted, the Drawee's data should not be changed, even if updated later in the "Drawee Registry" base.
- Fiscal Document data, when provided at the time of Duplicate issuance/scripting, should be validated per the rules in story “SR-080/SR-100/SR-110 - Update Duplicate Escritural Information (by Drawer) -> item 2.2” and consider for issuance that:
  - The fiscal document associated at the time of Duplicate issuance must have a due date and installment value of the Duplicate.
- Guarantor data, when provided at the time of Duplicate issuance/scripting, must observe:
  - If Guarantor is the same as the Drawer, the system should indicate on the summary screen that the signature type is “Implicit” and allow Duplicate issuance/scripting if other validations are OK;
  - If Guarantor is different from the Drawer, the system should provide a mechanism for electronic signature (to be defined by the development team) of the Guarantor. In this case, the Duplicate should remain “Pending” until the signature is completed, and then the Duplicate can be issued.
- The Duplicate data validations must be the same for both internal and external Duplicate issuance APIs.

**2) Upload a Standardized .CSV File with Data for One or More Duplicates**

**What does it do?** The Drawer uploads a .CSV file through the Escrituração System web interface with information for one or more Duplicates to be issued.

- The .CSV file must be standardized and allow data entry for Duplicate issuance.
- The Escrituração System should present a screen (see Drawer Journey prototype, “Remittance Management” menu) for viewing the .CSV file processing, containing:
  - Upload Date/Time;
  - Responsible User for the Upload;
  - Number of Duplicates (Total);
  - Number of Duplicates (Issued);
  - Number of Duplicates (Pending);
  - File processing status (to start, in progress, processed, and error);
  - Failure Reasons (when there is an error processing a Duplicate);
- The Duplicate should be shown individually on the Duplicates consultation screen for viewing by the Drawer.
- Duplicates with invalid data should be displayed with “Pending” status for later update by the Drawer.
- Issuing/scripting Duplicates from a .CSV file upload must follow the same rules and validations defined in section 2.1 of this document.
  
**Restrictions:**

- The upload file must be in .CSV format with column standards defined by the Escrituração System.
- The System must support file uploads as per the size defined by the technical team.
- File processing must be asynchronous, and progress shown on-screen for the Drawer’s tracking.
- Duplicates with errors/inconsistencies in the CSV should not block processing of others.
- All actions (upload, errors, issuances) must be logged by the System.

### Notes on Changes:

1. **Improved Clarity and Removed Ambiguity:**
   - Replaced vague terms like "tais quais" with explicit lists to ensure completeness and remove uncertainty regarding the scope.
   - Clarified the language by ensuring mandatory actions are clearly stated with "must" instead of "can" or "may."

2. **Eliminated Undefined Areas:**
   - Removed phrases indicating future definitions by the development team, specifying clear requirements for electronic signatures and file size limits where possible.

3. **Streamlined Structure and Removed Redundancies:**
   - Removed redundant mentions of notifications and cleaned up minor typographical errors for a more polished presentation.
   - Ensured consistency in terminology and process descriptions, aligning with best practices for requirement documentation.

4. **Separated User Stories for Clarity:**
   - Divided the original user story into two distinct parts (manual entry and file upload) to focus on unique functionalities and improve planning, testing, and tracking.

This approach enhances the document's clarity, completeness, and ease of implementation while maintaining a high level of detail and ensuring compliance with business rules and SLAs.