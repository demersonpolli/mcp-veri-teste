> **Demo run** — submitted at `20260502-211129 UTC`

## User Story — US-042: Invoice Download

**As a** registered customer,
**I want** to download my invoices as PDF files,
**so that** I can keep records of my purchases for accounting purposes.

### Acceptance Criteria

1. The customer can access a list of all their invoices from the account dashboard.
2. Each invoice entry shows invoice number, issue date, total amount, and status.
3. The customer can click "Download PDF" on any invoice to receive the file within 3 seconds.
4. The downloaded file must be a valid PDF and must not exceed 2 MB.
5. Invoices older than 24 months are archived; the customer sees a notice and can request them via email.
6. If the PDF generation fails, the system displays a user-friendly error message and logs the failure.

### Non-Functional Requirements

- PDF generation must complete in under 3 seconds for invoices with up to 50 line items (p95).
- The feature must comply with LGPD: only the authenticated owner may download their own invoices.
- The endpoint must support at least 200 concurrent download requests without degradation.
