## Improved User Stories

### User Story: SR-060 | Issue Escritural Duplicate – by Drawer Command (File Upload and Manual Entry)

**As** a Drawer, **I want** to issue an Escritural Duplicate through the SPC Grafeno web interface by either:
- Manually filling in the required fields on the screen for an Escritural Duplicate, or
- Uploading a standardized .CSV file with data for one or more Duplicates.

**So that** I can formalize a commercial transaction with deferred payment terms associated with the sale of goods and/or services.

**Note:** 
- Enhanced clarity by specifying the output as "Escritural Duplicate" and ensuring the user story follows the format: As a [role], I want [goal] so that [benefit]. 
- Removed "Gestão de Vínculos do Sacado (Sacador x Sacado)" from the main user story statement for better focus.

### Business Rules and Features

#### Manual Filling of Required Fields

- **What it does:** The Drawer manually enters the necessary information for the Duplicate.
  - After filling out the fields, the system must present a summary screen for review and validation by the Drawer.
  - Include additional data in the summary screen from the SPC Grafeno database, such as:
    - Issuance Date
    - Drawer Identification (CPF/CNPJ)
    - Drawer Address (Street, Number, Complement, Neighborhood, ZIP, State, City)
    - Signature Type (auto-filled as “Tacit”)
  - Upon Drawer approval:
    - Validate data, issue the Duplicate, assign a Unique Duplicate Identifier (UDI), and link it to a Duplicate Unit (DU).
    - If the Drawee does not exist in the database, add them under “Drawee Registration” and update the status to “Unsettled Duplicates.”
    - Notify the Drawee of the Duplicate issuance within 5 minutes (SLA).

**Note:**
- Specified the consistent use of "Drawer" instead of "Sacador" and clarified the flow for both successful and unsuccessful validations.
- Removed ambiguous terms like "tais quais" and "entre outras informações" to ensure completeness and clarity.

#### CSV File Upload of Duplicate Data

- **What it does:** The Drawer uploads a .CSV file via the web interface containing Duplicate information.
  - Display a process status screen with:
    - Upload date/time
    - Responsible user
    - Total number of Duplicates
    - Number of Duplicates issued and pending
    - Processing status (to start, in progress, processed, error)
    - Failure reasons if errors occur
  - Ensure an async file processing, with progress tracked on the screen.
  - Log all actions (uploads, errors, issuances) for audit purposes.

**Note:**
- Defined file upload handling more explicitly, emphasizing the need for standardized columns and error handling.

### Personas

- **Drawer** (e.g., Flour Factory) – Fills in the Duplicate information and initiates issuance.
- **SPC Grafeno Writer** – Executes the action in the SPC Grafeno system.
- **SPC Grafeno Registrar** – Registers the Duplicate in the SPC Grafeno Registry.

**Note:**
- Simplified roles to emphasize user engagement and system interaction.

### Acceptance Criteria (DoD)

- **Functional:**
  - Drawer validation (active, without restrictions).
  - Mandatory fields must be completed.
  - Summary screen for manual entries.
  - UDI generation and DU assignment.
  - Correct status for Duplicate (Free/Committed/Pending).
  - Automatic Drawee handling (registration/update in SPC Grafeno and PLAT databases) respecting SLAs.
  - Duplicate uniqueness ensured.
  - History recording with timestamps and hashes.
  - Only .CSV format accepted for uploads.
  - CSV processing available for consultation.
  - Mandatory fields in CSV must be filled; otherwise, Duplicate status is “Pending”.
  - CSV errors/inconsistencies detailed per line/record.

**Note:**
- Removed redundant statements and ensured criteria align with improved user story and business rules.

### Basic Test Cases

| Scenario | Input Information | Expected Result |
|----------|-------------------|-----------------|
| Valid Entry | Drawer fills all mandatory fields | System displays summary screen with filled + additional data (e.g., issuance date, Drawer address). |
| Missing Required Fields | Drawer omits "Duplicate Due Date" | System halts progress to summary, shows "Complete all mandatory fields" message, saves Duplicate as “Pending”. |
| Restricted Drawer | Drawer logged in with "Restricted" status in SPC Grafeno | System blocks issuance, shows "Drawer restricted. Issuance not allowed." |
| Inactive Drawer | Drawer’s CNPJ/CPF exists but is "Inactive" | System allows issuance, updates Drawer status to 'Active'. |

**Note:**
- Consolidated test scenarios for precise conditions and expected outcomes, ensuring alignment with acceptance criteria.