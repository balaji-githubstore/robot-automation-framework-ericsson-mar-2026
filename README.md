# Robot Framework Automation — Training Session

A hands-on Robot Framework automation project built as part of a structured training programme. The project covers Web UI test automation using Robot Framework and SeleniumLibrary, targeting the OrangeHRM demo application.

---

## What's Covered

### Core Concepts
- Robot Framework project structure and best practices
- Writing and organising test suites and test cases
- Using **Resources** to separate page-level keywords from common utilities
- Configuring **Test Setup** and **Test Teardown** for browser lifecycle management
- Centralised timeout and wait configuration via YAML

### Page Object Organisation
- `CommonFunctionalities.resource` — shared browser utilities and reusable custom keywords
- `LoginPage.resource` — page-specific keywords and locators for the login page
- `DashboardPage.resource` — page-specific keywords and locators for the dashboard

### Data-Driven Testing
- Inline data directly in test cases
- **Test Templates** with multiple data rows
- External data via **CSV** files using the `DataDriver` library
- External data via **Excel** files using the `DataDriver` library
- External data via **YAML** files using Robot Framework's `Variables` import

### Configuration Management
- Centralised timeout and retry values managed through `time-config.yaml`
- YAML-based variable files for environment-level configuration

---

## Project Structure

```
robot-automation-framework-ericsson-mar-2026/
├── Configuration/
│   └── time-config.yaml          # Global timeouts and retry settings
├── Data/
│   └── LoginSuiteData/
│       ├── invalid_login_data.csv
│       └── login_suite_data.yaml
├── Resource/
│   └── UI/
│       ├── CommonFunctionalities.resource
│       └── Pages/
│           ├── LoginPage.resource
│           └── DashboardPage.resource
├── TestSuites/
│   └── WebUITestSuites/
│       ├── LoginSuite/
│       │   ├── 1__valid_login_suite.robot
│       │   ├── 2__invalid_login_suite.robot
│       │   ├── 3__invalid_login_suite_demo2_test_template.robot
│       │   ├── 4__invalid_login_suite_demo3_csv.robot
│       │   ├── 5__invalid_login_suite_demo3_excel.robot
│       │   └── 6_data_yaml_suite.robot
│       └── EmployeeSuite/
│           └── add_valid_employee_suite.robot
├── KeywordDocumentation/
│   └── LoginPage.html
└── requirements.txt
```

---

## Test Suite Breakdown

### LoginSuite

| Suite | What It Covers |
|---|---|
| `1__valid_login_suite.robot` | Validates a successful login and verifies post-login dashboard content |
| `2__invalid_login_suite.robot` | Validates the error message shown on an invalid login attempt |
| `3__invalid_login_suite_demo2_test_template.robot` | Applies a **Test Template** to run the same login verification logic across multiple in-file data rows |
| `4__invalid_login_suite_demo3_csv.robot` | Uses the `DataDriver` library to drive invalid login tests from a **CSV** file |
| `5__invalid_login_suite_demo3_excel.robot` | Uses the `DataDriver` library to drive invalid login tests from an **Excel** file |
| `6_data_yaml_suite.robot` | Demonstrates loading test variables from an external **YAML** file |

### EmployeeSuite

| Suite | What It Covers |
|---|---|
| `add_valid_employee_suite.robot` | Covers the login flow as the entry point for navigating to employee-related functionality |

---

## Prerequisites

- Python 3.x
- Google Chrome (or the browser configured in `CommonFunctionalities.resource`)
- ChromeDriver (managed via Selenium)

Install all dependencies:

```bash
pip install -r requirements.txt
```

---

## Running Tests

Run the full suite:

```bash
robot TestSuites/
```

Run a specific suite:

```bash
robot TestSuites/WebUITestSuites/LoginSuite/1__valid_login_suite.robot
```

Run with a custom output directory:

```bash
robot --outputdir log TestSuites/
```

---

## Key Libraries Used

| Library | Purpose |
|---|---|
| `robotframework-seleniumlibrary` | Web UI browser automation |
| `robotframework-datadriver` | Data-driven testing via CSV / Excel |
| `PyYAML` | YAML variable and configuration file support |
| `openpyxl` / `xlrd` | Excel file reading |
| `pandas` | Data handling support |
