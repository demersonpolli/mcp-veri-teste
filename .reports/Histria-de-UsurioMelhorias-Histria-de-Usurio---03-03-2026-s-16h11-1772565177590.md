## Improved User Stories

### User Story: SR-060 | Issue Electronic Invoice – Initiated by Drawer (File Upload and Manual Entry) – Includes "Debtor-Debtor Link Management (Drawer x Debtor)"

**1) Description**

**As a** Drawer, **I want** to issue an Electronic Invoice through the SPC Grafeno web interface either by:
- Manually filling in the required fields of an Electronic Invoice on-screen; or
- Uploading a standardized .CSV file with data for one or more Invoices.

**So that** I can formalize a commercial transaction with a deferred payment defined by an invoice related to the actual sale of goods and/or services.

*Note: Simplified the phrasing for clarity and added a purpose statement for why the user story exists.*

**2) Functional Description / Business Rules**

**2.1) Manual Entry of Required Fields for an Electronic Invoice**

**What it does:** The Drawer manually fills in the fields with the details of the Electronic Invoice to be issued.

- After completing the fields, the Invoicing System should display a summary screen for the Drawer to review and validate all data.
- The summary screen should include additional information not entered by the Drawer but available in the SPC Grafeno database, such as:
  - Issue Date (corresponding to the issuance/invoicing date);
  - Drawer Identification (CPF/CNPJ);
  - Drawer Address (Street, Number, Complement, Neighborhood, Zip Code, State, Municipality);
  - Signature Type (Drawer) (fill with "Tacit");

*Note: Changed 'tais quais' to 'such as' for specificity and clarity.*

- Upon Drawer approval on the summary screen, the Invoicing System should validate the data, and:
  
  - If valid:
    - Issue/register the Invoice and assign a Unique Invoice Identifier (IUD);
    - Link the IUD to a UD;
    - UD (Invoice Unit) = same Drawer, Debtor, and Invoice Due Date.
    - Check if the Debtor already exists in the SPC Grafeno database. If not, add to the SPC Grafeno "Debtor Registry" and the PLAT Control Base (via PLAT message ctrl.007), informing the Debtor's status ("Unsettled Invoices"). If the Debtor exists and their status is "Settled Invoices" or "No Invoices for Debtor," change to "Unsettled Invoices" in the SPC Grafeno database and the PLAT Control Base (via message ctrl.011).
      - SLA: The link to the Debtor in the PLAT Control Base should be updated within 10 minutes of issuing the first Invoice against the Debtor.
    - The status of the Invoice in the system should be:
      - "Free" (LIVR) if there is no automatic extension contract (as per stories AF-070 | AF-075); or
      - "Committed" (BLOQ) if the UD is already negotiated or there is an automatic extension contract (as per stories AF-070 | AF-075);
        i. The same Negotiation Effects should apply to the newly issued Invoice.
        ii. The SPC Grafeno Registration System should notify the Financing Agent if on the SPC Grafeno edge or via PLAT (message ntfc.001) to the Registration System of the Invoice owner or beneficiary (as per story Notify Registrar of Owner or Beneficiary of the EI).
        iii. The SPC Grafeno Registration System should notify the Debtor of the negotiation effect, according to contact details registered in the SPC Grafeno System (as per story SO-025-Notification to Debtor).
    - The Invoicing System should notify the Debtor of the Invoice issuance within the SLA of up to 5 minutes (as per story SO-025-Notification to Debtor).
  - If not valid:
    - Display on-screen the consistency checks performed for correction or adjustment by the Drawer;
    - The status of the Invoice in the system should be "Pending."
- The Invoice should be displayed in the Invoice consultation screen for the Drawer to view.
- The Invoicing System should retain in the Invoice history the date, time (timestamp) that identifies the invoicing (issuance moment) as evidence of the process and allow its consultation. Example:
  “[dd/mm/yyyy - hh:mm] Invoice Issued by (user name) successfully. (IUD: (IUD number)).”
- On the same day the Invoice is issued/invoiced, the Invoicing System should send for registration in the SPC Grafeno Registration System, and retain in the Invoice history the date, time (timestamp) that identifies the registration (registration moment) as evidence of the process and allow its consultation. Example:
  “[dd/mm/yyyy - hh:mm] Invoice Registered by SPC Grafeno successfully.”
- The Drawer should reconcile, among other information, the following related to Invoice issuance:
  - Electronic Invoices issued with those in the merchant operation control systems of the Drawers;
  - The fiscal documents corresponding to the issued Electronic Invoices and associated with them;
  - The payment instruments corresponding to the issued Electronic Invoices and associated with them.

*Note: Made the language more direct and active, e.g., "The Invoicing System should display" instead of passive constructions.*

Special Restrictions/Situations:

- If the Drawer has any restrictions in the SPC Grafeno Invoicing System (status "Restricted"), they cannot issue an Invoice (as per story SR-999-Include or update Drawer link in the Control Base).
- If an Invoice is issued for a Drawer with "Inactive" status (SPC Grafeno Base and PLAT Control Base), the Invoicing System should update the status in the SPC Grafeno Base and command a status update to "Active" via message ctrl.005.
- All mandatory data must be filled in for the Invoice to be issued.
- The IUD can only be generated if all mandatory fields are informed and valid.
- The Invoice must be unique, and the Invoicing System should validate its uniqueness based on:
  - Drawer (CPF/CNPJ);
  - Debtor (CPF/CNPJ);
  - Invoice Number (invoice number + installment sequential (3));
  - Invoice Value;
  - Invoice Due Date;
- The Debtor should be notified within 5 minutes (SLA) of the Invoice issuance.
- The Debtor's data, when informed during the Invoice issuance, should be automatically registered in the SPC Grafeno "Debtor Registry" database. The data to be stored includes:
  - Full Name/Corporate Name;
  - CPF/CNPJ;
  - Street;
  - Number;
  - Complement;
  - Neighborhood/District;
  - Municipality;
  - Zip Code;
  - State;
  - Phone;
  - Email.
- The Debtor's data, when not informed by the Drawer during issuance, can be obtained by the Invoicing System from the "Debtor Registry" database, when available.
  Important: For the MVP, the Debtor's data will be unique in the SPC Grafeno base and reusable by Drawers for their issuances, when necessary. They can be updated when new and different data is informed.
- After being issued/invoiced, the Invoice should not have the Debtor's data altered if this data is later updated in the "Debtor Registry" database.
- The Fiscal Document data, when informed at the moment of Invoice issuance/invoicing, should be validated according to rules contained in the story "SR-080/SR-100/SR-110 - Update Electronic Invoice Information (by Drawer) -> item 2.2", and consider for issuance that:
  - The fiscal document associated at the moment of Invoice issuance should have a due date and Invoice installment value.
- The Guarantor's data, when informed at the time of Invoice issuance/invoicing, should observe:
  - If the Guarantor is the same as the Drawer, the system should indicate on the summary screen that the signature type is "Tacit" and allow the invoice/invoicing of the Invoice if other validations are OK;
  - If the Guarantor is different from the Drawer, the system should provide a mechanism for electronic signature (to be defined by the development team) of the Guarantor. In this case, the Invoice should remain with status "Pending" until the signature is performed, and from this point, the Invoice can be issued.
- The validations of the Invoice(s) data should be the same for internal and external Invoice issuance APIs.

**2.2) Upload of a Standardized .CSV File with Data for One or More Invoices**

**What it does:** The Drawer uploads a .CSV file through the Invoicing System's web interface, containing information for one or more Invoices for issuance.

- The .CSV file should be standardized and allow for the data entry needed for Invoice issuance.
- The Invoicing System should present a screen (see Drawer Journey prototype, "Shipment Management" menu) for viewing the .CSV file processing, containing:
  - Upload Date/Time;
  - User responsible for the Upload;
  - Total Number of Invoices;
  - Number of Invoices (Issued);
  - Number of Invoices (Pending);
  - File processing status (to start, in progress, processed, and error);
  - Failure Reasons (when there is an error in processing an Invoice);
- The Invoice should be displayed individually in the Invoice consultation screen for the Drawer to view.
- Invoices with invalid data should be presented with status "Pending" for later update by the Drawer.
- The issuance/invoicing of Invoices from a .CSV file upload should follow the same rules and validations defined in item 2.1 of this document.

*Note: Specified more clearly the system's actions and conditions, e.g., "should" instead of "can."*

Restrictions:
- The upload file must be in .CSV format with column standards defined by the Invoicing System.
- The System should support file upload according to the size defined by the technical team.
- File processing should be asynchronous and its progress presented on-screen for the Drawer to monitor.
- Invoices with errors/inconsistencies in the CSV should not block the processing of others.
- All actions (upload, errors, issuances) should be logged by the System.

**3) List of Fields for Issuance to be Informed:**

| Field         | Format/Size | Requirement for Issuance | Validation                                                                          |
|---------------|-------------|--------------------------|------------------------------------------------------------------------------------|
| 1. Electronic Invoice Identifier by Drawer                                                                                       |
| Invoice Identifier | 45 positions (alphanumeric) | Optional | Identification of the Electronic Invoice as per the Drawer's controls |
| 2. Parties                                                                                                                                   |
| 2.1. Debtor                                                                                                                                 |
| Identification | Alphanumeric (11 or 14) | Mandatory | Identification of the Debtor from the fiscal document (CPF or CNPJ)|
| Name/Corporate Name | Alphanumeric (100) | Mandatory | Name or Corporate Name of the Debtor. |
| Debtor Email | Email (100) | Mandatory | Email for sending messages to the Debtor. |
| Mobile Phone | Numeric (11) | Optional | Phone number for contact with the Debtor. |
| Responsible for confirmation or manifestation | Alphanumeric (100) | Optional | Filling this field is mandatory when Debtor is CNPJ. |
| 2.1.1 Debtor's Address |
| Street | Alphanumeric (60) | Mandatory | Street of the Debtor's address. |
| Number | Alphanumeric (20) | Mandatory | Number of the Debtor's address. |
| Complement | Alphanumeric (100) | Optional | Complement of the Debtor's address. |
| Neighborhood | Alphanumeric (100) | Mandatory | Neighborhood of the Debtor's address. |
| Zip Code | Numeric (8) | Mandatory | Zip Code of the Debtor's address. |
| State | Alphanumeric (2) | Mandatory | State of the Debtor's address. |
| Municipality | Alphanumeric (100) | Mandatory | Municipality of the Debtor's address. |
| 2.1.2. Debtor's Payment Place |
| State | Alphanumeric (2) | Mandatory | Indication of the State as the Payment Place of the Electronic Invoice. |
| Municipality | Alphanumeric (100) | Mandatory | Indication of the Municipality as the Payment Place of the Electronic Invoice. |
| 3. List of Information Related to the Invoice |
| Invoice | Alphanumeric (60) | Mandatory | Invoice number tied to the Electronic Invoice NF-e and CT-e: Invoice Number + Invoice Number NFS-e SP: Invoice Number |
| Total Invoice Amount | Numeric (14,2) | Mandatory | Total amount of the corresponding invoice, contract, or fiscal document, even if discounts are granted by the Drawer on the amount to be effectively paid by the Debtor. |
| Discount Amount | Numeric (14,2) | Optional | Discount amount granted at issuance, in Reais regarding the discount applied to the total invoice amount. |
| 4. List of Information Related to the Invoice |
| Invoice Type | Alphanumeric (2) | Mandatory | Type of operation corresponding to the entry: DM = Commercial Invoice DS = Service Invoice |
| Installment Number | Alphanumeric (3) | Mandatory | Installment number of the Electronic Invoice. | 
| Due Date | Date (YYYY-MM-DD) | Mandatory | Due date of the Electronic Invoice must be greater than its issuance date (If not informed, the Invoice will not be issued until the due date is updated) |
| Invoice Amount | Numeric (14,2) | Mandatory | Total amount of the Electronic Invoice must always present the total amount of its corresponding installment to be effectively paid by the Debtor. |
| 4.1 Discount (optional) |
| Discount Value | Value | Optional | Discount value granted at issuance, as a Percentage of the amount to be paid |
| Discount Reason | Alphanumeric (1) | Optional | P = Discount for payment punctuality N = Discount negotiated independently of payment date |
| 4.2. Delay (optional) |
| Late Payment Interest | Numeric (14,2) | Optional | Daily interest value for late payment. |
| Fine | Numeric (14,2) | Optional | Fine value for late payment. |
| Penalty Clause | Alphanumeric (255) | Optional | In case of delay, how the credit operation value is corrected. If not present: "Nothing recorded" |
| Late Payment Charges | Decimal (4,4) | Optional | Late payment charges. |
| 4.3. Interest (optional) | Percentual | Decimal (4,4) | Optional Annualized rate in percentage. 0.00 is allowed. |
| Indexer | Alphanumeric (1) | Optional | Inform the operation indexer. 1 = Fixed Rate; 2 = Selic Rate; 3 = Interbank Deposit Rate; 4 = IPCA; 5 = IGPM; 6 = Dollar Currency; 7 = Euro Currency; and 8 = Others. |
| 4.4. Additional Information (optional) |
| Description | Alphanumeric (255) | Optional | Contractual clauses and other important information of the operation. |
| Other Charges | Alphanumeric (255) | Optional | Other commissions and charges |
| 5. Fiscal Documents (optional, but mandatory if any item in the block is filled) |
| Fiscal Document Type | Alphanumeric (4) | Optional | Electronic Fiscal Coupon (SAT CF-e) Electronic Consumer Invoice (NFC-e) Electronic Invoice (NF-e) - COMMERCIAL Electronic Service Invoice (NFS-e) Electronic Transport Document (CT-e) - COMMERCIAL Electronic Document Manifest (MDF-e) Autonomous Payment Receipt (RPA) |
| Access Key | Alphanumeric (44) | Optional | Consultation Key of the Fiscal Document tied to the Electronic Invoice. |
| Document Number | Alphanumeric (10) | Optional | Number of the fiscal document associated with the Electronic Invoice. |
| Document Series | Numeric (3) | Optional | Series of the fiscal document associated with the Electronic Invoice. |
| 6. Guarantor |
| 6.1. Guarantor Identification (optional, but mandatory if Guarantor is filled) |
| Identification | Alphanumeric (11 or 14) | Optional | Guarantor document (CPF or CNPJ). |
| Name | Alphanumeric (100) | Optional | Guarantor name. |
| Marital Status | Alphanumeric (1) | Mandatory if Guarantor is an individual | 1 = Single 2 = Married or in Stable Union, with universal communion 3 = Married or in Stable Union with partial communion 4 = Married or in Stable Union with total separation 5 = Married or in Stable Union with mandatory separation 6 = Widowed 7 = Divorced 8 = Final participation in acquisitions |
| Guarantor Email | Email (100) | Optional | Email for sending messages to the Guarantor. |
| 6.2. Spouse (optional, but mandatory if marital status is 2, 3, 4, or 5) |
| Name | Alphanumeric (255) | Optional | Guarantor's spouse name. |
| CPF | Alphanumeric (11) | Optional | Guarantor's spouse CPF. |
| 6.3. Guarantor Address (optional, but mandatory if Guarantor is filled) | 
| Street | Alphanumeric (60) | Optional | Guarantor's address street. |
| Number | Alphanumeric (20) | Optional | Guarantor's address number. |
| Complement | Alphanumeric (100) | Optional | Guarantor's address complement. |
| Neighborhood | Alphanumeric (100) | Optional | Guarantor's neighborhood. |
| Zip Code | Numeric (8) | Optional | Guarantor's address Zip Code. |
| State | Alphanumeric (2) | Optional | Guarantor's address State. |
| Municipality | Alphanumeric (100) | Optional | Guarantor's address Municipality. |
| 6.4 Guarantor's Signature (optional) |
| Signature Type | Alphanumeric (4) | Optional | Fill with "Tacit" (if Guarantor = Drawer) |
| Signature Content | Alphanumeric (100) | Optional | Guarantor's Signature (fill only when Guarantor differs from Drawer). |
| 7. Payment Information |
| 7.1. Payment Domicile |
| Domicile Information Type | Alphanumeric (2) | Mandatory | Type of domicile information where payment will be settled: Current Account; Payment Account; bank slip or PIX or PIX Copy and Paste |
| 7.1.1. Account (mandatory if Current Account or Payment Account type) |
| COMPE of Institution Domicile for collection | Alphanumeric (3) | Optional | COMPE Code of the Institution Domicile. Complement with 0 on the left. Use BCB table for user selection (include reference in the annex). |
| Domicile Agency for collection | Alphanumeric (4) | Optional | Domicile agency for Electronic Invoice settlement. |
| Current or Payment Account | Alphanumeric (20) | Optional | Domicile account for Electronic Invoice settlement. |
| Account Digit | Alphanumeric (2) | Optional | Account check digit |
| 7.1.2. Pix (mandatory if PIX type) |
| PIX Key Type | Alphanumeric (3 or 4) | Optional | Types of PIX key, which can be: CPF, CNPJ, Mobile, Email or Random key |
| 7.2. Instrument |
| 7.2.1. Payment Instrument |
| Instrument Type | Alphanumeric