# Improved User Stories

## User Story 1: Manual Issuance of Escritural Duplicates

**As a** Drawer, **I want** to manually issue an Escritural Duplicate via the SPC Grafeno web interface, **so that** I can formalize a deferred payment transaction related to the sale of goods and/or provision of services.

### Changes Made:
- **Clarified Roles and Purpose**: Simplified the language to clearly state who the user is, what they want, and why.
- **Removed Redundancy**: Avoided unnecessary details in the description of the user story to maintain focus on the user's goal.

## User Story 2: CSV Upload for Issuance of Escritural Duplicates

**As a** Drawer, **I want** to upload a standardized .CSV file containing multiple Escritural Duplicates via the SPC Grafeno system, **so that** I can efficiently process bulk transactions.

### Changes Made:
- **Clarified Roles and Purpose**: Focused on the specific action and its purpose, ensuring the user's goal is clear.
- **Streamlined Language**: Removed unneeded context to keep the user story concise.

# Improved Functionalities and Business Rules

### Manual Entry of Required Fields for an Escritural Duplicate

**What it does**: Enables the Drawer to manually fill in the necessary fields for issuing an Escritural Duplicate.

- **Summary Screen**: After input, the system displays a summary screen for review and validation, including database-derived data like Issue Date and Drawer Identification.
- **Acceptance and Validation**: Upon acceptance, the system validates and issues the Duplicate, assigning a unique identifier (IUD) and checking the payee's status in the SPC Grafeno database.
- **Notification**: The system notifies the payee within 5 minutes of issuance.
- **Error Handling**: Displays inconsistencies for correction if validation fails, marking the Duplicate as "Pending."

### Changes Made:
- **Clarified Processes**: Simplified descriptions and provided clearer separation of tasks and outcomes.
- **Removed Ambiguities**: Eliminated terms like "such as" to provide definitive lists and actions.

### CSV File Upload for Multiple Escritural Duplicates

**What it does**: Allows the Drawer to upload a .CSV file with multiple Duplicate records for processing.

- **File Processing Interface**: Displays processing status, including upload time, responsible user, and issuance statistics.
- **Error Handling**: Marks Duplicates with invalid data as "Pending" for later update by the Drawer.
- **Compliance**: Ensures uploaded data adheres to the same rules as manual entry.

### Changes Made:
- **Detailed Functionality**: Clearly defined what the system does with the uploaded file and expected outcomes.
- **Removed Optional Language**: Ensured all processes and rules are mandatory or clearly stated as such.

# Improved Acceptance Criteria (DoD)

- **Active Drawer Validation**: Ensures the Drawer is active and without restrictions.
- **Mandatory Fields**: Verifies all required fields are filled.
- **Summary Review**: Provides a summary screen for manual entry.
- **IUD Generation**: Confirms unique identification and association.
- **Duplicate Status**: Correctly assigns status (Free, Committed, Pending).
- **Automatic Payee Handling**: Manages payee registration and updates according to SLAs.
- **Unique Duplicate Verification**: Ensures uniqueness based on key fields.
- **CSV Format Compliance**: Accepts only .CSV files, detailing errors per line after processing.

### Changes Made:
- **Clarity and Precision**: Specified each criterion clearly, avoiding any vague or optional terms.
- **Removed Redundancies**: Consolidated criteria to avoid repetitive information.

# Improved Test Cases

| Scenario | Input Information | Expected Result |
|----------|-------------------|-----------------|
| Valid Manual Entry | Drawer inputs all required fields for Duplicate | System shows summary with all details for validation and approval. |
| Missing Required Fields | Drawer omits "Due Date" | System prevents advancement, shows error: "Fill in all required fields," and marks Duplicate as "Pending." |
| Drawer with Restrictions | Drawer is "Restricted" in SPC Grafeno | System blocks issuance, shows error: "Restricted Drawer. Issuance not permitted." |
| Inactive Drawer Status | Drawer is "Inactive" in SPC Grafeno database | System allows issuance and updates status to "Active." |

### Changes Made:
- **Consistency and Clarity**: Streamlined scenarios for easier understanding and testing.
- **Removed Ambiguities**: Provided precise actions and expected outcomes for each scenario.

By focusing on clarity and removing ambiguities, the improved user stories and functionalities provide a clear, actionable framework for development and testing, ensuring alignment with business goals and user needs.