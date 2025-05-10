# Organization Management Database Schema

This repository contains the SQL definitions for an **Organization Management System**, supporting entities like branches, departments, events, users, products, team members, and more. The schema is structured to support features for file uploads, vacancies, applications, tenders, downloads, messaging, and organizational profiles.

## 📄 Database Tables

The SQL schema includes the following key tables:

- **orgs** – Stores organizational details
- **branches** – Branches of an organization
- **departments** – Organizational departments
- **events** – Event listings per organization
- **downloads** – Files for download (e.g., PDFs, Docs)
- **faqs** – Frequently asked questions
- **files** – General file uploads (linked to tenders or applications)
- **images** – Image resources for the org
- **latestnews** – Organization news and announcements
- **messages** – Contact or inquiry messages
- **products** – Product offerings
- **team_members** – Team member profiles
- **tenders** – Tender information
- **users** – Authenticated users
- **vacancies** – Job vacancies
- **vacancy_applications** – Applications for job vacancies

All tables use appropriate `foreign keys` to enforce relationships and data integrity.

## 🔗 Entity Relationship Diagram (ERD)

You can view the full ERD illustrating all relationships here:

👉 [View ERD Diagram]((https://dbdiagram.io/d/imarika-erd-681b4a7c5b2fc4582f9730e6))

> _Replace the above link with a real ERD link. You can generate it using [dbdiagram.io](https://dbdiagram.io), [DrawSQL](https://drawsql.app), or MySQL Workbench._

## 🛠 Technologies

- MySQL (latest version recommended)
- SQL DDL
- ERD tool: `dbdiagram.io`

## ✅ How to Use

1. Create a new MySQL database:
   ```sql
   CREATE DATABASE org_management;
