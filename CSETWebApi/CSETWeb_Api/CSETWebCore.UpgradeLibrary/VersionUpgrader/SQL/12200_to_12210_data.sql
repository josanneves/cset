/*
Run this script on:

(localdb)\INLLocalDB2022.CSETWeb12200    -  This database will be modified

to synchronize it with:

(localdb)\INLLocalDB2022.CSETWeb12210

You are recommended to back up your database before running this script

Script created by SQL Data Compare version 14.10.9.22680 from Red Gate Software Ltd at 6/11/2024 10:56:38 AM

*/
		
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL Serializable
GO
BEGIN TRANSACTION

PRINT(N'Drop constraints from [dbo].[TTP_MAT_QUESTION]')
ALTER TABLE [dbo].[TTP_MAT_QUESTION] NOCHECK CONSTRAINT [FK_TTP_MAT_QUESTION_MATURITY_QUESTIONS]
ALTER TABLE [dbo].[TTP_MAT_QUESTION] NOCHECK CONSTRAINT [FK_TTP_MAT_QUESTION_TTP]

PRINT(N'Drop constraints from [dbo].[MATURITY_REFERENCE_TEXT]')
ALTER TABLE [dbo].[MATURITY_REFERENCE_TEXT] NOCHECK CONSTRAINT [FK_MATURITY_REFERENCE_TEXT_MATURITY_QUESTIONS]

PRINT(N'Drop constraints from [dbo].[MATURITY_QUESTION_PROPS]')
ALTER TABLE [dbo].[MATURITY_QUESTION_PROPS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTION_PROPS_MATURITY_QUESTIONS]

PRINT(N'Drop constraints from [dbo].[NEW_REQUIREMENT]')
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_NCSF_Category]
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_QUESTION_GROUP_HEADING]
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_SETS]
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_STANDARD_CATEGORY]

PRINT(N'Drop constraint FK_FINANCIAL_REQUIREMENTS_NEW_REQUIREMENT from [dbo].[FINANCIAL_REQUIREMENTS]')
ALTER TABLE [dbo].[FINANCIAL_REQUIREMENTS] NOCHECK CONSTRAINT [FK_FINANCIAL_REQUIREMENTS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_NERC_RISK_RANKING_NEW_REQUIREMENT from [dbo].[NERC_RISK_RANKING]')
ALTER TABLE [dbo].[NERC_RISK_RANKING] NOCHECK CONSTRAINT [FK_NERC_RISK_RANKING_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_Parameter_Requirements_NEW_REQUIREMENT from [dbo].[PARAMETER_REQUIREMENTS]')
ALTER TABLE [dbo].[PARAMETER_REQUIREMENTS] NOCHECK CONSTRAINT [FK_Parameter_Requirements_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_LEVELS_NEW_REQUIREMENT from [dbo].[REQUIREMENT_LEVELS]')
ALTER TABLE [dbo].[REQUIREMENT_LEVELS] NOCHECK CONSTRAINT [FK_REQUIREMENT_LEVELS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_QUESTIONS_SETS_NEW_REQUIREMENT from [dbo].[REQUIREMENT_QUESTIONS_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_REFERENCE_TEXT_NEW_REQUIREMENT from [dbo].[REQUIREMENT_REFERENCE_TEXT]')
ALTER TABLE [dbo].[REQUIREMENT_REFERENCE_TEXT] NOCHECK CONSTRAINT [FK_REQUIREMENT_REFERENCE_TEXT_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_REFERENCES_NEW_REQUIREMENT from [dbo].[REQUIREMENT_REFERENCES]')
ALTER TABLE [dbo].[REQUIREMENT_REFERENCES] NOCHECK CONSTRAINT [FK_REQUIREMENT_REFERENCES_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_SETS_NEW_REQUIREMENT from [dbo].[REQUIREMENT_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_SETS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_SOURCE_FILES_NEW_REQUIREMENT from [dbo].[REQUIREMENT_SOURCE_FILES]')
ALTER TABLE [dbo].[REQUIREMENT_SOURCE_FILES] NOCHECK CONSTRAINT [FK_REQUIREMENT_SOURCE_FILES_NEW_REQUIREMENT]

PRINT(N'Drop constraints from [dbo].[MATURITY_QUESTIONS]')
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK__MATURITY___Matur__5B638405]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_GROUPINGS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_LEVELS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_MODELS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_OPTIONS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_QUESTION_TYPES]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_QUESTIONS]

PRINT(N'Drop constraint FK__HYDRO_DAT__Mat_Q__38652BE2 from [dbo].[HYDRO_DATA]')
ALTER TABLE [dbo].[HYDRO_DATA] NOCHECK CONSTRAINT [FK__HYDRO_DAT__Mat_Q__38652BE2]

PRINT(N'Drop constraint FK_MATURITY_QUESTIONS_MAT_QUESTION_ID from [dbo].[ISE_ACTIONS]')
ALTER TABLE [dbo].[ISE_ACTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MAT_QUESTION_ID]

PRINT(N'Drop constraint FK_MATURITY_ANSWER_OPTIONS_MATURITY_QUESTIONS1 from [dbo].[MATURITY_ANSWER_OPTIONS]')
ALTER TABLE [dbo].[MATURITY_ANSWER_OPTIONS] NOCHECK CONSTRAINT [FK_MATURITY_ANSWER_OPTIONS_MATURITY_QUESTIONS1]

PRINT(N'Drop constraint FK_MATURITY_REFERENCES_MATURITY_QUESTIONS from [dbo].[MATURITY_REFERENCES]')
ALTER TABLE [dbo].[MATURITY_REFERENCES] NOCHECK CONSTRAINT [FK_MATURITY_REFERENCES_MATURITY_QUESTIONS]

PRINT(N'Drop constraint FK_MATURITY_SOURCE_FILES_MATURITY_QUESTIONS from [dbo].[MATURITY_SOURCE_FILES]')
ALTER TABLE [dbo].[MATURITY_SOURCE_FILES] NOCHECK CONSTRAINT [FK_MATURITY_SOURCE_FILES_MATURITY_QUESTIONS]

PRINT(N'Drop constraint FK_MATURITY_SUB_MODEL_QUESTIONS_MATURITY_QUESTIONS from [dbo].[MATURITY_SUB_MODEL_QUESTIONS]')
ALTER TABLE [dbo].[MATURITY_SUB_MODEL_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_SUB_MODEL_QUESTIONS_MATURITY_QUESTIONS]

PRINT(N'Drop constraint FK_mq_bonus_mat_q from [dbo].[MQ_BONUS]')
ALTER TABLE [dbo].[MQ_BONUS] NOCHECK CONSTRAINT [FK_mq_bonus_mat_q]

PRINT(N'Drop constraint FK_mq_bonus_mat_q1 from [dbo].[MQ_BONUS]')
ALTER TABLE [dbo].[MQ_BONUS] NOCHECK CONSTRAINT [FK_mq_bonus_mat_q1]

PRINT(N'Drop constraints from [dbo].[CUSTOM_STANDARD_BASE_STANDARD]')
ALTER TABLE [dbo].[CUSTOM_STANDARD_BASE_STANDARD] NOCHECK CONSTRAINT [FK_CUSTOM_STANDARD_BASE_STANDARD_SETS]
ALTER TABLE [dbo].[CUSTOM_STANDARD_BASE_STANDARD] NOCHECK CONSTRAINT [FK_CUSTOM_STANDARD_BASE_STANDARD_SETS1]

PRINT(N'Drop constraints from [dbo].[STATES_AND_PROVINCES]')
ALTER TABLE [dbo].[STATES_AND_PROVINCES] NOCHECK CONSTRAINT [FK_STATES_AND_PROVINCES_COUNTRIES]

PRINT(N'Drop constraints from [dbo].[SETS]')
ALTER TABLE [dbo].[SETS] NOCHECK CONSTRAINT [FK_SETS_Sets_Category]

PRINT(N'Drop constraint FK_AVAILABLE_STANDARDS_SETS from [dbo].[AVAILABLE_STANDARDS]')
ALTER TABLE [dbo].[AVAILABLE_STANDARDS] NOCHECK CONSTRAINT [FK_AVAILABLE_STANDARDS_SETS]

PRINT(N'Drop constraint FK_MODES_MATURITY_MODELS_SETS from [dbo].[MODES_SETS_MATURITY_MODELS]')
ALTER TABLE [dbo].[MODES_SETS_MATURITY_MODELS] NOCHECK CONSTRAINT [FK_MODES_MATURITY_MODELS_SETS]

PRINT(N'Drop constraint FK_NEW_QUESTION_SETS_SETS from [dbo].[NEW_QUESTION_SETS]')
ALTER TABLE [dbo].[NEW_QUESTION_SETS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_SETS_SETS]

PRINT(N'Drop constraint FK_REPORT_STANDARDS_SELECTION_SETS from [dbo].[REPORT_STANDARDS_SELECTION]')
ALTER TABLE [dbo].[REPORT_STANDARDS_SELECTION] NOCHECK CONSTRAINT [FK_REPORT_STANDARDS_SELECTION_SETS]

PRINT(N'Drop constraint FK_REQUIREMENT_QUESTIONS_SETS_SETS from [dbo].[REQUIREMENT_QUESTIONS_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_SETS]

PRINT(N'Drop constraint FK_QUESTION_SETS_SETS from [dbo].[REQUIREMENT_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_SETS] NOCHECK CONSTRAINT [FK_QUESTION_SETS_SETS]

PRINT(N'Drop constraint FK_SECTOR_STANDARD_RECOMMENDATIONS_SETS from [dbo].[SECTOR_STANDARD_RECOMMENDATIONS]')
ALTER TABLE [dbo].[SECTOR_STANDARD_RECOMMENDATIONS] NOCHECK CONSTRAINT [FK_SECTOR_STANDARD_RECOMMENDATIONS_SETS]

PRINT(N'Drop constraint FK_SET_FILES_SETS from [dbo].[SET_FILES]')
ALTER TABLE [dbo].[SET_FILES] NOCHECK CONSTRAINT [FK_SET_FILES_SETS]

PRINT(N'Drop constraint FK_STANDARD_CATEGORY_SEQUENCE_SETS from [dbo].[STANDARD_CATEGORY_SEQUENCE]')
ALTER TABLE [dbo].[STANDARD_CATEGORY_SEQUENCE] NOCHECK CONSTRAINT [FK_STANDARD_CATEGORY_SEQUENCE_SETS]

PRINT(N'Drop constraint FK_Standard_Source_File_SETS from [dbo].[STANDARD_SOURCE_FILE]')
ALTER TABLE [dbo].[STANDARD_SOURCE_FILE] NOCHECK CONSTRAINT [FK_Standard_Source_File_SETS]

PRINT(N'Drop constraint FK_UNIVERSAL_SUB_CATEGORY_HEADINGS_SETS from [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS]')
ALTER TABLE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] NOCHECK CONSTRAINT [FK_UNIVERSAL_SUB_CATEGORY_HEADINGS_SETS]

PRINT(N'Drop constraints from [dbo].[MATURITY_MODELS]')
ALTER TABLE [dbo].[MATURITY_MODELS] NOCHECK CONSTRAINT [FK_MATURITY_MODELS_MATURITY_LEVEL_USAGE_TYPES]

PRINT(N'Drop constraint FK_ANALYTICS_MATURITY_GROUPINGS_MATURITY_MODELS from [dbo].[ANALYTICS_MATURITY_GROUPINGS]')
ALTER TABLE [dbo].[ANALYTICS_MATURITY_GROUPINGS] NOCHECK CONSTRAINT [FK_ANALYTICS_MATURITY_GROUPINGS_MATURITY_MODELS]

PRINT(N'Drop constraint FK__AVAILABLE__model__6F6A7CB2 from [dbo].[AVAILABLE_MATURITY_MODELS]')
ALTER TABLE [dbo].[AVAILABLE_MATURITY_MODELS] NOCHECK CONSTRAINT [FK__AVAILABLE__model__6F6A7CB2]

PRINT(N'Drop constraint FK_MATURITY_LEVELS_MATURITY_MODELS from [dbo].[MATURITY_LEVELS]')
ALTER TABLE [dbo].[MATURITY_LEVELS] NOCHECK CONSTRAINT [FK_MATURITY_LEVELS_MATURITY_MODELS]

PRINT(N'Drop constraint FK_MODES_SETS_MATURITY_MODELS_MATURITY_MODELS from [dbo].[MODES_SETS_MATURITY_MODELS]')
ALTER TABLE [dbo].[MODES_SETS_MATURITY_MODELS] NOCHECK CONSTRAINT [FK_MODES_SETS_MATURITY_MODELS_MATURITY_MODELS]

PRINT(N'Drop constraint FK_mq_bonus_mat_model from [dbo].[MQ_BONUS]')
ALTER TABLE [dbo].[MQ_BONUS] NOCHECK CONSTRAINT [FK_mq_bonus_mat_model]

PRINT(N'Drop constraints from [dbo].[GEN_FILE]')
ALTER TABLE [dbo].[GEN_FILE] NOCHECK CONSTRAINT [FK_GEN_FILE_FILE_REF_KEYS]
ALTER TABLE [dbo].[GEN_FILE] NOCHECK CONSTRAINT [FK_GEN_FILE_FILE_TYPE]

PRINT(N'Drop constraint FILE_KEYWORDS_GEN_FILE_FK from [dbo].[FILE_KEYWORDS]')
ALTER TABLE [dbo].[FILE_KEYWORDS] NOCHECK CONSTRAINT [FILE_KEYWORDS_GEN_FILE_FK]

PRINT(N'Drop constraint FK_GEN_FILE_LIB_PATH_CORL_GEN_FILE from [dbo].[GEN_FILE_LIB_PATH_CORL]')
ALTER TABLE [dbo].[GEN_FILE_LIB_PATH_CORL] NOCHECK CONSTRAINT [FK_GEN_FILE_LIB_PATH_CORL_GEN_FILE]

PRINT(N'Drop constraint FK_MATURITY_REFERENCES_GEN_FILE from [dbo].[MATURITY_REFERENCES]')
ALTER TABLE [dbo].[MATURITY_REFERENCES] NOCHECK CONSTRAINT [FK_MATURITY_REFERENCES_GEN_FILE]

PRINT(N'Drop constraint FK_MATURITY_SOURCE_FILES_GEN_FILE from [dbo].[MATURITY_SOURCE_FILES]')
ALTER TABLE [dbo].[MATURITY_SOURCE_FILES] NOCHECK CONSTRAINT [FK_MATURITY_SOURCE_FILES_GEN_FILE]

PRINT(N'Drop constraint FK_REQUIREMENT_REFERENCES_GEN_FILE from [dbo].[REQUIREMENT_REFERENCES]')
ALTER TABLE [dbo].[REQUIREMENT_REFERENCES] NOCHECK CONSTRAINT [FK_REQUIREMENT_REFERENCES_GEN_FILE]

PRINT(N'Drop constraint FK_REQUIREMENT_SOURCE_FILES_GEN_FILE from [dbo].[REQUIREMENT_SOURCE_FILES]')
ALTER TABLE [dbo].[REQUIREMENT_SOURCE_FILES] NOCHECK CONSTRAINT [FK_REQUIREMENT_SOURCE_FILES_GEN_FILE]

PRINT(N'Drop constraint FK_SET_FILES_GEN_FILE from [dbo].[SET_FILES]')
ALTER TABLE [dbo].[SET_FILES] NOCHECK CONSTRAINT [FK_SET_FILES_GEN_FILE]

PRINT(N'Update rows in [dbo].[NEW_REQUIREMENT]')
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Access Control Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:

1. [Selection (one or more): Organization-level; Mission/business process-level; System level] access control policy that:
(a) Addresses purpose, scope, roles, responsibilities, management commitment,
coordination among organizational entities, and compliance; and
(b) Is consistent with applicable laws, executive orders, directives, regulations, policies,
standards, and guidelines; and

2. Procedures to facilitate the implementation of the access control policy and the
associated access controls;
b. Designate an [Assignment: organization-defined official] to manage the development,
documentation, and dissemination of the access control policy and procedures; and
c. Review and update the current access control:
1. Policy [Assignment: organization-defined frequency] and following [Assignment: organization-defined events]; and
2. Procedures [Assignment: organization-defined frequency] and following [Assignment: organization-defined events].
' WHERE [Requirement_Id] = 37523
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Concurrent Session Control</b></p>Limit the number of concurrent sessions for each [Assignment: organization-defined account and/or account type] to [Assignment: organization-defined number].' WHERE [Requirement_Id] = 37524
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Device Lock</b></p>a. Prevent further access to the system by [Selection (one or more): initiating a device lock after [Assignment: organization-defined time period] of inactivity; requiring the user to initiate a device lock before leaving the system unattended]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Session Termination</b></p>Automatically terminate a user session after [Assignment: organization-defined conditions or trigger events requiring session disconnect].' WHERE [Requirement_Id] = 37527
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Permitted Actions Without Identification or Authentication</b></p>a. Identify [Assignment: organization-defined user actions] that can be performed on the system without identification or authentication consistent with organizational mission and business functions; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Remote Access</b></p>a. Establish and document usage restrictions, configuration/connection requirements, and implementation guidance for each type of remote access allowed; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Privileged Commands and Access</b></p>(a) Authorize the execution of privileged commands and access to security-relevant information via remote access only in a format that provides assessable evidence and for the following needs: [Assignment: organization-defined needs]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Wireless Access</b></p>a. Establish configuration requirements, connection requirements, and implementation guidance for each type of wireless access; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Disable Wireless Networking</b></p>Disable, when not intended for use, wireless networking capabilities embedded within system components prior to issuance and deployment.' WHERE [Requirement_Id] = 37538
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Restrict Configurations by Users</b></p>Identify and explicitly authorize users allowed to independently configure wireless networking capabilities.' WHERE [Requirement_Id] = 37539
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Access Control for Mobile Devices</b></p>a. Establish configuration requirements, connection requirements, and implementation guidance for organization-controlled mobile devices, to include when such devices are outside of controlled areas; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Full Device or Container-based Encryption</b></p>Employ [Selection: full-device encryption; container-based encryption] to protect the confidentiality and integrity of information on [Assignment: organization-defined mobile devices].' WHERE [Requirement_Id] = 37542
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Account Management</b></p>a. Define and document the types of accounts allowed and specifically prohibited for use within the system;
<br>
C.4. Enforcement of standards that limit the availability and use of shared accounts to those that are critical for operations, and then only if absolutely necessary. When the Owner/Operator uses shared accounts for operational purposes, the policies and procedures must ensure (p.7)
 <br>
C.4.a. Access to shared accounts is limited through account management that uses principles of least privilege and separation of duties; and (p.7)
<br>C.4.b. Individuals who no longer need access do not have knowledge of the password necessary to access the shared accounts. (p.7)</p>' WHERE [Requirement_Id] = 37543
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated System Account Management</b></p>Support the management of system accounts using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37544
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Usage Conditions</b></p>Enforce [Assignment: organization-defined circumstances and/or usage conditions] for [Assignment: organization-defined system accounts].' WHERE [Requirement_Id] = 37545
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Account Monitoring for Atypical Usage</b></p>(a) Monitor system accounts for [Assignment: organization-defined atypical usage]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Disable Accounts</b></p>Disable accounts within [Assignment: organization-defined time period] when the accounts:
Disable Accounts</strong>

C.4.b. Individuals who no longer need access do not have knowledge of the password necessary to access the shared accounts. (p.7)</p>' WHERE [Requirement_Id] = 37549
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Audit Actions</b></p>Automatically audit account creation, modification, enabling, disabling, and removal actions.' WHERE [Requirement_Id] = 37550
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Use of External Systems</b></p>a. [Selection (one or more): Establish [Assignment: organization-defined terms and conditions]; Identify [Assignment: organization-defined controls asserted to be implemented on external systems]], consistent with the trust relationships established with other organizations owning, operating, and/or maintaining external systems, allowing authorized individuals to:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Limits on Authorized Use</b></p>Permit authorized individuals to use an external system to access the system or to process, store, or transmit organization-controlled information only after:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Portable Storage Devices — Restricted Use</b></p>Restrict the use of organization-controlled portable storage devices by authorized individuals on external systems using [Assignment: organization-defined restrictions].' WHERE [Requirement_Id] = 37554
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Information Sharing</b></p>a. Enable authorized users to determine whether access authorizations assigned to a sharing partner match the information’s access and use restrictions for [Assignment: organization-defined information sharing circumstances where user discretion is required]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Publicly Accessible Content</b></p>a. Designate individuals authorized to make information publicly accessible;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Reference Monitor</b></p>Implement a reference monitor for [Assignment: organization-defined access control policies] that is tamperproof, always invoked, and small enough to be subject to analysis and testing, the completeness of which can be assured.' WHERE [Requirement_Id] = 37557
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Access Enforcement</b></p>Enforce approved authorizations for logical access to information and system resources in accordance with applicable access control policies.', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>a. Enforce approved authorizations for logical access to information and system resources in accordance with applicable access control processes and procedures.</p><p><strong><u>OT Systems Only:</strong></u> The organization ensures that access enforcement mechanisms do not adversely impact the operational performance of the OT. Example compensating controls include encapsulation. Policy for logical access control to non-addressable and non-routable system resources and the associated information is made explicit. Access control mechanisms include hardware, firmware, and software that control the device or have device access, such as device drivers and communications controllers. Physical access control may serve as a compensating control for logical access control; however, it may not provide sufficient granularity in situations where users require access to different functions.</p><p>Related Controls:  AC-2, AC-4, AC-5, AC-6, AC-17, AC-18, AC-19, AC-20, AC-21, AC-22, AC-25, AT-2, AT-3, AU-9, CA-9, CM-5, CM-11, IA-2, IA-5, IA-6, IA-7, IA-11, MA-3, MA-4, MA-5, MP-4, PM-2, PS-3, PT-2, PT-3, SA-17, SC-2, SC-3, SC-4, SC-12, SC-13, SC-28, SI-4, SI-8</p><p>b.  Security Controls Enhancement(s):</p><p><strong><u>NIST 800-82 Rev 3:</strong></u><br>OT Discussion: The organization ensures that access enforcement mechanisms do not adversely <br>impact the operational performance of the OT. Example compensating controls include <br>encapsulation. The policy for logical access control to non-addressable and non-routable system <br>resources and the associated information is made explicit. Access control mechanisms include <br>hardware, firmware, and software that control the device or have device access, such as device <br>drivers and communications controllers. Physical access control may serve as a compensating <br>control for logical access control. However, it may not provide sufficient granularity when users <br>require access to different functions.</p><p><strong>NIST SP800-53 R5</strong></p><p>Access control policies control access between active entities or subjects (i.e., users or processes acting on behalf of users) and passive entities or objects (i.e., devices, files, records, domains) in organizational systems. In addition to enforcing authorized access at the system level and recognizing that systems can host many applications and services in support of mission and business functions, access enforcement mechanisms can also be employed at the application and service level to provide increased information security and privacy. In contrast to logical access controls that are implemented within the system, physical access controls are addressed by the controls in the Physical and Environmental Protection (PE) family.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Access Enforcement</strong>

C.4. Enforcement of standards that limit the availability and use of shared accounts to those that are critical for operations, and then only if absolutely necessary. When the Owner/Operator uses shared accounts for operational purposes, the policies and procedures must ensure� (p.7)
</p>' WHERE [Requirement_Id] = 37558
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Individual Access</b></p>Provide [Assignment: organization-defined mechanisms] to enable individuals to have access to the following elements of their personally identifiable information: [Assignment: organization-defined elements].' WHERE [Requirement_Id] = 37560
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Role Based Access Control</b></p>Enforce a role-based access control policy over defined subjects and objects and control access based upon [Assignment: organization-defined roles and users authorized to assume such roles].' WHERE [Requirement_Id] = 37561
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Information Flow Enforcement</b></p>Enforce approved authorizations for controlling the flow of information within the system and between connected systems based on [Assignment: organization-defined information flow control policies].', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>a.  Ensure that the flow of information within the system, and between connected systems, is  documented and authorized. All WMATA systems shall have a Data Flow Diagram that documents the  storage movement, and processing of data in the system.</p><p><strong><u>OT Systems Only: </strong></u>Information flow policy may be achieved using a combination of logical and physical flow restriction techniques. Inspection of message content may enforce information flow policy. For example, industrial OT protocols may be restricted using inbound and outbound traffic rules on a network control device between OT and IT networks. For non-routable communication such as serial connections, devices may be configured to limit commands to and from specific tags within the OT device. Information flow policy may be supported by labeling or coloring physical connectors to aid in connecting networks. Devices that do not have a business need to communicate should not be connected (i.e., air gapped).</p><p>Related Controls:  AC-3, AC-6, AC-17, AC-19, AC-21, AU-10, CA-3, CA-9, CM-7, PL-9, PM-24, SA-17, SC-4, SC-7</p><p>b. Security Controls Enhancement(s):</p><p><strong><u>NIST 800-82 Rev 3:</strong></u><br>OT Discussion: Information flow policy may be achieved using a combination of logical and <br>physical flow restriction techniques. The inspection of message content may enforce information <br>flow policy. For example, industrial OT protocols may be restricted using inbound and outbound <br>traffic rules on a network control device between OT and IT networks. For non-routable <br>communication, such as serial connections, devices may be configured to limit commands to and <br>from specific tags within the OT device. The information flow policy may be supported by <br>labeling or coloring physical connectors to aid in connecting networks. Devices that do not have <br>a business need to communicate should not be connected (i.e., air gapped). </p><p><strong>NIST SP800-53 R5</strong></p><p>Information flow control regulates where information can travel within a system and between systems (in contrast to who is allowed to access the information) and without regard to subsequent accesses to that information. Flow control restrictions include blocking external traffic that claims to be from within the organization, keeping export-controlled information from being transmitted in the clear to the Internet, restricting web requests that are not from the internal web proxy server, and limiting information transfers between organizations based on data structures and content. Transferring information between organizations may require an agreement specifying how the information flow is enforced (see CA-3). Transferring information between systems in different security or privacy domains with different security or privacy policies introduces the risk that such transfers violate one or more domain security or privacy policies. In such situations, information owners/stewards provide guidance at designated policy enforcement points between connected systems. Organizations consider mandating specific architectural solutions to enforce specific security and privacy policies. Enforcement includes prohibiting information transfers between connected systems (i.e., allowing access only), verifying write permissions before accepting information from another security or privacy domain or connected system, employing hardware mechanisms to enforce one-way information&#160;flows, and implementing trustworthy regrading mechanisms to reassign security or privacy attributes and labels.<div><br></div><div>Organizations commonly employ information flow control policies and enforcement mechanisms to control the flow of information between designated sources and destinations within systems and between connected systems. Flow control is based on the characteristics of the information and/or the information path. Enforcement occurs, for example, in boundary protection devices that employ rule sets or establish configuration settings that restrict system services, provide a packet-filtering capability based on header information, or provide a message-filtering capability based on message content. Organizations also consider the trustworthiness of filtering and/or inspection mechanisms (i.e., hardware, firmware, and software components) that are critical to information flow enforcement. Control enhancements 3 through 32 primarily address cross-domain solution needs that focus on more advanced filtering techniques, in-depth analysis, and stronger flow enforcement mechanisms implemented in cross-domain products, such as high-assurance guards. Such capabilities are generally not available in commercial off-the-shelf products. Information flow enforcement also applies to control plane traffic (e.g., routing and DNS).<br></div></p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Information Flow Enforcement</strong>

C.5. Regularly updated schedule for review of existing domain trust relationships to ensure their necessity and establish policies to manage these relationships. (p.7)</p>' WHERE [Requirement_Id] = 37562
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Flow Control of Encrypted Information</b></p>Prevent encrypted information from bypassing [Assignment: organization-defined information flow control mechanisms] by [Selection (one or more): decrypting the information; blocking the flow of the encrypted information; terminating communications sessions attempting to pass encrypted information; [Assignment: organization-defined procedure or method]].' WHERE [Requirement_Id] = 37563
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Separation of Duties</b></p>a. Identify and document [Assignment: organization-defined duties of individuals requiring separation]; and

C.3. Policies and procedures to manage access rights based on the principles of least privilege and separation of duties. Where not technically feasible to apply these principles, the policies and procedures must describe the compensating controls that the Owner/Operator will apply. (p.7)

C.4.a. Access to shared accounts is limited through account management that uses principles of least privilege and separation of duties; and (p.7)</p>' WHERE [Requirement_Id] = 37564
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Least Privilege</b></p>Employ the principle of least privilege, allowing only authorized accesses for users (or processes acting on behalf of users) that are necessary to accomplish assigned organizational tasks.', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>a.  Employ the principle of least privilege, allowing only authorized accesses for users (or <br>processes acting on behalf of users) that are necessary to accomplish assigned organizational tasks <br>in accordance with WMATA missions and business functions. Least privilege applies to all stages of <br>the System Development Lifecycle (SDLC).</p><p>b.  Only authorized individuals shall access, manage, and perform updates to sensitive information <br>as classified in Control 3.8 Data Sensitivity.</p><p><strong><u>OT Systems Only: </strong></u>Example compensating controls include providing increased personnel security and auditing. The organization carefully considers the appropriateness of a single individual having multiple critical privileges. System privilege models may be tailored to enforce integrity and availability (e.g., lower privileges include read access and higher privileges include write access).</p><p>Related Controls : AC-2, AC-3, AC-5, CM-5, CM-11, PL-2, PM-12, SA-8, SA-15, SA-17  </p><p>c. Security Controls Enhancement(s):</p><p><strong><u>NIST 800-82 Rev 3:</strong></u><br>OT Discussion: Example compensating controls include providing increased personnel security <br>and auditing. The organization carefully considers the appropriateness of a single individual <br>having multiple critical privileges. System privilege models may be tailored to enforce integrity <br>and availability (e.g., lower privileges include read access, and higher privileges include write <br>access).</p><p><strong>NIST SP800-53 R5</strong></p><p>Organizations employ least privilege for specific duties and systems. The principle of least privilege is also applied to system processes, ensuring that the processes have access to systems and operate at privilege levels no higher than necessary to accomplish organizational missions or business functions. Organizations consider the creation of additional processes, roles, and accounts as necessary to achieve least privilege. Organizations apply least privilege to the development, implementation, and operation of organizational systems.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Least Privilege</strong>

C.3. Policies and procedures to manage access rights based on the principles of least privilege and separation of duties. Where not technically feasible to apply these principles, the policies and procedures must describe the compensating controls that the Owner/Operator will apply. (p.7)

C.4.a. Access to shared accounts is limited through account management that uses principles of least privilege and separation of duties; and (p.7)</p>' WHERE [Requirement_Id] = 37565
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Review of User Privileges</b></p>(a) Review [Assignment: organization-defined frequency] the privileges assigned to [Assignment: organization-defined roles or classes of users] to validate the need for such privileges; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Unsuccessful Logon Attempts</b></p>a. Enforce a limit of [Assignment: organization-defined number] consecutive invalid logon attempts by a user during a [Assignment: organization-defined time period]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>System Use Notification</b></p>a. Display [Assignment: organization-defined system use notification message or banner] to users before granting access to the system that provides privacy and security notices consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines and state that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Awareness and Training Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Literacy Training and Awareness</b></p>a. Provide security and privacy literacy training to system users (including managers, senior executives, and contractors):
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Insider Threat</b></p>Provide literacy training on recognizing and reporting potential indicators of insider threat.' WHERE [Requirement_Id] = 37577
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Social Engineering and Mining</b></p>Provide literacy training on recognizing and reporting potential and actual instances of social engineering and social mining.' WHERE [Requirement_Id] = 37578
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Role-based Training</b></p>a. Provide role-based security and privacy training to personnel with the following roles and responsibilities: [Assignment: organization-defined roles and responsibilities]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Processing Personally Identifiable Information</b></p>Provide [Assignment: organization-defined personnel or roles] with initial and [Assignment: organization-defined frequency] training in the employment and operation of personally identifiable information processing and transparency controls.' WHERE [Requirement_Id] = 37581
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Training Records</b></p>a. Document and monitor information security and privacy training activities, including security and privacy awareness training and specific role-based security and privacy training; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Audit and Accountability Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Non-repudiation</b></p>Provide irrefutable evidence that an individual (or process acting on behalf of an individual) has performed [Assignment: organization-defined actions to be covered by non-repudiation].' WHERE [Requirement_Id] = 37584
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Audit Record Retention</b></p>Retain audit records for [Assignment: organization-defined time period consistent with records retention policy] to provide support for after-the-fact investigations of incidents and to meet regulatory and organizational information retention requirements.', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>a.  Retain audit records for all WMATA systems for at least five years or longer if specified by applicable regulation, law, or external compliance mandate to provide support for after-the- fact investigations of incidents and to meet regulatory and organizational information retention requirements.</p><p>Related Controls: AU-2, AU-4, AU-5, AU-6, AU-9, MP-6, RA-5, SI-12</p><p><strong>NIST SP800-53 R5</strong></p><p>Organizations retain audit records until it is determined that the records are no longer needed for administrative, legal, audit, or other operational purposes. This includes the retention and availability of audit records relative to Freedom of Information Act (FOIA) requests, subpoenas, and law enforcement actions. Organizations develop standard categories of audit records relative to such types of actions and standard response processes for each type of action. The National Archives and Records Administration (NARA) General Records Schedules provide federal policy on records retention.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Audit Record Retention</strong>

D.3. Logging policies that �
D.3.b. Ensure data is maintained for sufficient periods, to provide effective investigation of cybersecurity incidents. (p.8)</p>' WHERE [Requirement_Id] = 37585
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Audit Record Generation</b></p>a. Provide audit record generation capability for the event types the system is capable of auditing as defined in AU-2a on [Assignment: organization-defined system components];

D.2. Procedures to� 
D.2.a. Audit unauthorized access to internet domains and addresses; (p.8)

D.2.b. Document and audit any communications between the Operational Technology system and an external system that deviates from the Owner/Operator�s identified baseline of communications; (p.8)</p>' WHERE [Requirement_Id] = 37586
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Session Audit</b></p>a. Provide and implement the capability for [Assignment: organization-defined users or roles] to [Selection (one or more): record; view; hear; log] the content of a user session under [Assignment: organization-defined circumstances]; and

D.2. Procedures to� 
D.2.a. Audit unauthorized access to internet domains and addresses; (p.8)

D.2.b. Document and audit any communications between the Operational Technology system and an external system that deviates from the Owner/Operator�s identified baseline of communications; (p.8)</p>' WHERE [Requirement_Id] = 37589
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Event Logging</b></p>a. Identify the types of events that the system is capable of logging in support of the audit function: [Assignment: organization-defined event types that the system is capable of logging];

D.2. Procedures to� 
D.2.a. Audit unauthorized access to internet domains and addresses; (p.8)

D.2.b. Document and audit any communications between the Operational Technology system and an external system that deviates from the Owner/Operator�s identified baseline of communications; (p.8)

D.3. Logging policies that � 
D.3.a. Require continuous collection and analyzing of data for potential intrusions and anomalous behavior on Critical Cyber Systems and other Operational and Information Technology systems that directly connects with Critical Cyber Systems; and (p.8)

</p>' WHERE [Requirement_Id] = 37590
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Content of Audit Records</b></p>a. What type of event occurred;

D.2. Procedures to� 
D.2.a. Audit unauthorized access to internet domains and addresses; (p.8)

D.2.b. Document and audit any communications between the Operational Technology system and an external system that deviates from the Owner/Operator�s identified baseline of communications; (p.8)

D.3. Logging policies that � 
D.3.a. Require continuous collection and analyzing of data for potential intrusions and anomalous behavior on Critical Cyber Systems and other Operational and Information Technology systems that directly connects with Critical Cyber Systems; and (p.8)</p>' WHERE [Requirement_Id] = 37591
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Additional Audit Information</b></p>Generate audit records containing the following additional information: [Assignment: organization-defined additional information].', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>Generate audit records that contain content specified in Control 3.3 Audit and Accountability, Section 3, AU-3 (a) – (c), “Content of Audit Records”. In addition, ensure that audit records contain access control or flow control rules that are invoked, and<br>individual user identities are used for access to group accounts.</p><p><strong>NIST SP800-53 R5</strong></p><p>The ability to add information generated in audit records is dependent on system functionality to configure the audit record content. Organizations may consider additional information in audit records including, but not limited to, access control or flow control rules invoked and individual identities of group account users. Organizations may also consider limiting additional audit record information to only information that is explicitly needed for audit requirements. This facilitates the use of audit trails and audit logs by not including information in audit records that could potentially be misleading, make it more difficult to locate information of interest, or increase the risk to individuals'' privacy.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Content of Audit Records | Additional Audit Information</strong>

D.3. Logging policies that � 
D.3.a. Require continuous collection and analyzing of data for potential intrusions and anomalous behavior on Critical Cyber Systems and other Operational and Information Technology systems that directly connects with Critical Cyber Systems; and (p.8)</p>' WHERE [Requirement_Id] = 37592
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Limit Personally Identifiable Information Elements</b></p>Limit personally identifiable information contained in audit records to the following elements identified in the privacy risk assessment: [Assignment: organization-defined elements].' WHERE [Requirement_Id] = 37593
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Audit Log Storage Capacity</b></p>Allocate audit log storage capacity to accommodate [Assignment: organization-defined audit log retention requirements].', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>Allocate audit log storage capacity to accommodate application or system requirements. Assess capacity requirements for audit logging to never exceed 75% capacity. Exceptions to the capacity limit in the range of 76-89% must be approved by the AO and include the following justifications:</p><p>a. Demonstrated acceptable system performance above 75% capacity limit;</p><p>b. Define the limited business impact of system failure;</p><p>c. Business explanation why 75% capacity limit cannot be achieved; </p><p>Capacity limit shall not exceed 90%.</p><p>Reassess capacity requirements whenever exceeding the authorized threshold. Additionally, reassessing capacity requirements for audit logging based on system changes, performance, and alerts.</p><p>Related Controls: AU-2, AU-5, AU-6, AU-7, AU-9, AU-11, AU-12, SI-4</p><p>Security Controls Enhancement(s):</p><p><strong>NIST SP800-53 R5</strong></p><p>Organizations consider the types of audit logging to be performed and the audit log processing requirements when allocating audit log storage capacity. Allocating sufficient audit log storage capacity reduces the likelihood of such capacity being exceeded and resulting in the potential loss or reduction of audit logging capability.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Audit Log Storage Capacity</strong>

D.2. Procedures to� 
D.2.a. Audit unauthorized access to internet domains and addresses; (p.8)

D.2.b. Document and audit any communications between the Operational Technology system and an external system that deviates from the Owner/Operator�s identified baseline of communications; (p.8)

D.3. Logging policies that �
D.3.b. Ensure data is maintained for sufficient periods, to provide effective investigation of cybersecurity incidents. (p.8)</p>' WHERE [Requirement_Id] = 37594
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Response to Audit Logging Process Failures</b></p>a. Alert [Assignment: organization-defined personnel or roles] within [Assignment: organization-defined time period] in the event of an audit logging process failure; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Storage Capacity Warning</b></p>Provide a warning to [Assignment: organization-defined personnel, roles, and/or locations] within [Assignment: organization-defined time period] when allocated audit log storage volume reaches [Assignment: organization-defined percentage] of repository maximum audit log storage capacity.' WHERE [Requirement_Id] = 37597
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Real-time Alerts</b></p>Provide an alert within [Assignment: organization-defined real-time period] to [Assignment: organization-defined personnel, roles, and/or locations] when the following audit failure events occur: [Assignment: organization-defined audit logging failure events requiring real-time alerts].' WHERE [Requirement_Id] = 37598
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Audit Record Review, Analysis, and Reporting</b></p>a. Review and analyze system audit records [Assignment: organization-defined frequency] for indications of [Assignment: organization-defined inappropriate or unusual activity] and the potential impact of the inappropriate or unusual activity;

D.2. Procedures to� 
D.2.a. Audit unauthorized access to internet domains and addresses; (p.8)

D.2.b. Document and audit any communications between the Operational Technology system and an external system that deviates from the Owner/Operator�s identified baseline of communications; (p.8)</p>' WHERE [Requirement_Id] = 37599
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Correlate Audit Record Repositories</b></p>Analyze and correlate audit records across different repositories to gain organization-wide situational awareness.' WHERE [Requirement_Id] = 37601
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Integrated Analysis of Audit Records</b></p>Integrate analysis of audit records with analysis of [Selection (one or more): vulnerability scanning information; performance data; system monitoring information; [Assignment: organization-defined data/information collected from other sources]] to further enhance the ability to identify inappropriate or unusual activity.' WHERE [Requirement_Id] = 37602
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Correlation with Physical Monitoring</b></p>Correlate information from audit records with information obtained from monitoring physical access to further enhance the ability to identify suspicious, inappropriate, unusual, or malevolent activity.' WHERE [Requirement_Id] = 37603
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Audit Record Reduction and Report Generation</b></p>a. Supports on-demand audit record review, analysis, and reporting requirements and after-the-fact investigations of incidents; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automatic Processing</b></p>Provide and implement the capability to process, sort, and search audit records for events of interest based on the following content: [Assignment: organization-defined fields within audit records].' WHERE [Requirement_Id] = 37605
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Time Stamps</b></p>a. Use internal system clocks to generate time stamps for audit records; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Protection of Audit Information</b></p>a. Protect audit information and audit logging tools from unauthorized access, modification, and deletion; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Store on Separate Physical Systems or Components</b></p>Store audit records [Assignment: organization-defined frequency] in a repository that is part of a physically different system or system component than the system or component being audited.' WHERE [Requirement_Id] = 37608
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Cryptographic Protection</b></p>Implement cryptographic mechanisms to protect the integrity of audit information and audit tools.' WHERE [Requirement_Id] = 37609
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Access by Subset of Privileged Users</b></p>Authorize access to management of audit logging functionality to only [Assignment: organization-defined subset of privileged users or roles].' WHERE [Requirement_Id] = 37610
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Assessment, Authorization and Monitoring Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Control Assessments</b></p>a. Select the appropriate assessor or assessment team for the type of assessment to be conducted;

2.  Develop a Cybersecurity Assessment Plan and submit (a) an annual update, for approval, that describes how the Owner/Operator will proactively and regularly assess the effectiveness of cybersecurity measures, and identify and resolve device, network, and/or system vulnerabilities, and (b) an annual report that provides Cybersecurity Assessment Plan results from the previous year. See Section III.F. (p.3)

III. Cybersecurity Measures

D. Implement continuous monitoring and detection policies and procedures that are designed 
to prevent, detect, and respond to cybersecurity threats and correct anomalies affecting 
Critical Cyber Systems. These measures must include: (p.7)

F.1. The Owner/Operator must develop a Cybersecurity Assessment Plan for proactively assessing Critical Cyber Systems to ascertain the effectiveness of cybersecurity measures and to identify and resolve device, network, and/or system vulnerabilities. (p.9)

F.2. The Cybersecurity Assessment Plan required by Section III.F.1. must � (p.9)
F.2.a. Assess the effectiveness of the Owner/Operator�s TSA-approved Cybersecurity Implementation Plan; (p.9)

F.2.e. Ensure an annual report of the results of assessments conducted in accordance with the Cybersecurity Assessment Plan is submitted to TSA as described in paragraph F.4. of this section. The required report must indicate� (p.10)

F.2.e.i. For the previous 12 months, which assessment method(s) were used to determine whether the policies, procedures, and capabilities described by the Owner/Operator in its Cybersecurity Implementation Plan are effective; and (p.10)

F.2.e.ii. Results of the individual assessments conducted in the previous 12 months. (p.10)

F.3. The Owner/Operator must review and update its Cybersecurity Assessment Plan on an annual basis and submit it to TSA for approval no later than 12 months from the date the Owner/Operator submitted its first Cybersecurity Assessment Plan under Security Directive 1580/82-2022-01. The next Cybersecurity Assessment Plan submitted under this Security Directive, and all other Cybersecurity Assessment Plans thereafter, must be submitted to TSA no later than 12 months from the date of TSA�s approval of the most recent Cybersecurity Assessment Plan. (p.10)

F.4. The Owner/Operator must submit the Cybersecurity Assessment Plan report required by subparagraph F.2.e. of this section on an annual basis but no later than 12 months from the date the Owner/Operator submitted its first Cybersecurity Assessment Plan under Security Directive 1580/82-2022-01. The next Cybersecurity Assessment Plan report submitted under this Security 
Directive, and all other Cybersecurity Assessment Plan reports thereafter, must be submitted to TSA no later than 12 months from the date of TSA�s approval of the most recent Cybersecurity Assessment Plan. (p.10)

IV. Records

A.  Use of previous plans, assessments, tests, and evaluations. As applicable, Owner/Operators may use previously developed plans, assessments, tests, and evaluations to meet the requirements of this Security Directive. If the Owner/Operator relies on these materials, it must include an index of the records and their location organized in the same sequence as the requirements in this Security Directive. In addition, these materials must be explicitly incorporated by reference into the Cybersecurity Implementation Plan and made available to TSA upon request.  (pp.10-11)
</p>' WHERE [Requirement_Id] = 37612
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Independent Assessors</b></p>Employ independent assessors or assessment teams to conduct control assessments.' WHERE [Requirement_Id] = 37613
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Specialized Assessments</b></p>Include as part of control assessments, [Assignment: organization-defined frequency], [Selection: announced; unannounced], [Selection (one or more): in-depth monitoring; security instrumentation; automated security test cases; vulnerability scanning; malicious user testing; insider threat assessment; performance and load testing; data leakage or data loss assessment; [Assignment: organization-defined other forms of assessment]].' WHERE [Requirement_Id] = 37614
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Information Exchange</b></p>a. Approve and manage the exchange of information between the system and other systems using [Selection (one or more): interconnection security agreements; information exchange security agreements; memoranda of understanding or agreement; service level agreements; user agreements; nondisclosure agreements; [Assignment: organization-defined type of agreement]];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Transfer Authorizations</b></p>Verify that individuals or systems transferring data between interconnecting systems have the requisite authorizations (i.e., write permissions or privileges) prior to accepting such data.' WHERE [Requirement_Id] = 37616
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Plan of Action and Milestones</b></p>a. Develop a plan of action and milestones for the system to document the planned remediation actions of the organization to correct weaknesses or deficiencies noted during the assessment of the controls and to reduce or eliminate known vulnerabilities in the system; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Authorization</b></p>a. Assign a senior official as the authorizing official for the system;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Continuous Monitoring</b></p>Develop a system-level continuous monitoring strategy and implement continuous monitoring in accordance with the organization-level continuous monitoring strategy that includes:

1.b. Implement access control measures to secure and prevent unauthorized access to Critical Cyber Systems;  (p.2)

1.c. Implement continuous monitoring and detection policies and procedures to detect cybersecurity threats and correct anomalies that affect Critical Cyber System operations; and (pp.2-3) 

2.  Develop a Cybersecurity Assessment Plan and submit (a) an annual update, for approval, that describes how the Owner/Operator will proactively and regularly assess the effectiveness of cybersecurity measures, and identify and resolve device, network, and/or system vulnerabilities, and (b) an annual report that provides Cybersecurity Assessment Plan results from the previous year. See Section III.F. (p.3)

III. Cybersecurity Measures

D. Implement continuous monitoring and detection policies and procedures that are designed 
to prevent, detect, and respond to cybersecurity threats and correct anomalies affecting 
Critical Cyber Systems. These measures must include: (p.7)

F.2.d. Include a schedule for assessing and auditing specific cybersecurity measures and/or actions required by subparagraphs F.2.a. through F.2.c. of this section. The schedule must ensure that at least one-third (1/3) of the policies, procedures, measures, and capabilities in the TSA-approved Cybersecurity 
Implementation Plan are assessed each year, with 100 percent assessed over any three-year period; and (p.9)</p>' WHERE [Requirement_Id] = 37619
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Independent Assessment</b></p>Employ independent assessors or assessment teams to monitor the controls in the system on an ongoing basis.' WHERE [Requirement_Id] = 37620
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Risk Monitoring</b></p>Ensure risk monitoring is an integral part of the continuous monitoring strategy that includes the following:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Penetration Testing</b></p>Conduct penetration testing [Assignment: organization-defined frequency] on [Assignment: organization-defined systems or system components].', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>a.  Conduct penetration testing annually or as prescribed and approved by the AO in the SSP.  Penetration testing shall be performed at the discretion of DMCS on new products and services before deployment within WMATA’s computing environment or prior to hosting WMATA data on the system/service.</p><p><strong><u>OT Systems Only: </strong></u>Penetration testing is used with care on OT networks to ensure that OT functions are not adversely impacted by the testing process. In general, OT systems are highly sensitive to timing constraints and have limited resources. Example compensating controls include employing a replicated, virtualized, or simulated system to conduct penetration testing. Production OT may need to be taken off-line before testing can be conducted. If OT systems are taken off-line for testing, tests are scheduled to occur during planned OT outages whenever possible. If penetration testing is performed on non-OT networks, extra care is taken to ensure that tests do not propagate into the OT network.</p><p>Related Controls: RA-5, RA-10, SA-11, SR-5, SR-6</p><p>b. Security Controls Enhancement(s):</p><p><strong><u>NIST 800-82 Rev 3:</strong></u><br>OT Discussion: Penetration testing is used with care on OT networks to ensure that OT functions are not adversely impacted by the testing process. In general, OT systems are highly sensitive to timing constraints and have limited resources. Example compensating controls include employing a replicated, virtualized, or simulated system to conduct penetration testing. Production OT may need to be taken offline before testing can be conducted. If OT systems are taken offline for testing, tests are scheduled to occur during planned OT outages whenever possible. If penetration testing is performed on non-OT networks, extra care is taken to ensure that tests do not propagate into the OT network. </p><p><strong>NIST SP800-53 R5</strong></p><p>Penetration testing is a specialized type of assessment conducted on systems or individual system components to identify vulnerabilities that could be exploited by adversaries. Penetration testing goes beyond automated vulnerability scanning and is conducted by agents and teams with demonstrable skills and experience that include technical expertise in network, operating system, and/or application level security. Penetration testing can be used to validate vulnerabilities or determine the degree of penetration resistance of systems to adversaries within specified constraints. Such constraints include time, resources, and skills. Penetration testing attempts to duplicate the actions of adversaries and provides a more in-depth analysis of security- and privacy-related weaknesses or deficiencies. Penetration testing is especially important when organizations are transitioning from older technologies to newer technologies (e.g., transitioning from IPv4 to IPv6 network protocols).<div><br></div><div>Organizations can use the results of vulnerability analyses to support penetration testing activities. Penetration testing can be conducted internally or externally on the hardware, software, or firmware components of a system and can exercise both physical and technical controls. A standard method for penetration testing includes a pretest analysis based on full knowledge of the system, pretest identification of potential vulnerabilities based on the pretest analysis, and testing designed to determine the exploitability of vulnerabilities. All parties agree to the rules of engagement before commencing penetration testing scenarios. Organizations correlate the rules of engagement for the penetration tests with the tools, techniques, and procedures that are anticipated to be employed by adversaries. Penetration testing may result in the exposure of information that is protected by laws or regulations, to individuals conducting the testing. Rules of engagement, contracts, or other appropriate mechanisms can be used to communicate expectations for how to protect this information. Risk assessments guide the decisions on the level of independence required for the personnel conducting penetration testing.<br></div></p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Penetration Testing</strong>

F.2.c. Incorporate other assessment capabilities designed to identify vulnerabilities based on evolving threat information and adversarial capabilities, such as penetration testing of Information Technology systems, including the use of �red� and �purple� team (adversarial perspective) testing. (pp.8-9)</p>' WHERE [Requirement_Id] = 37622
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Internal System Connections</b></p>a. Authorize internal connections of [Assignment: organization-defined system components or classes of components] to the system;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Configuration Management Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Software Usage Restrictions</b></p>a. Use software and associated documentation in accordance with contract agreements and copyright laws;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>User-installed Software</b></p>a. Establish [Assignment: organization-defined policies] governing the installation of software by users;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Information Location</b></p>a. Identify and document the location of [Assignment: organization-defined information] and the specific system components on which the information is processed and stored;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Tools to Support Information Location</b></p>Use automated tools to identify [Assignment: organization-defined information by information type] on [Assignment: organization-defined system components] to ensure controls are in place to protect organizational information and individual privacy.' WHERE [Requirement_Id] = 37629
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Baseline Configuration</b></p>a. Develop, document, and maintain under configuration control, a current baseline configuration of the system; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automation Support for Accuracy and Currency</b></p>Maintain the currency, completeness, accuracy, and availability of the baseline configuration of the system using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37631
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Retention of Previous Configurations</b></p>Retain [Assignment: organization-defined number] of previous versions of baseline configurations of the system to support rollback.' WHERE [Requirement_Id] = 37632
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Configure Systems and Components for High-risk Areas</b></p>(a) Issue [Assignment: organization-defined systems or system components] with [Assignment: organization-defined configurations] to individuals traveling to locations that the organization deems to be of significant risk; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Configuration Change Control</b></p>a. Determine and document the types of changes to the system that are configuration-controlled;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Documentation, Notification, and Prohibition of Changes</b></p>Use [Assignment: organization-defined automated mechanisms] to:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Testing, Validation, and Documentation of Changes</b></p>Test, validate, and document changes to the system before finalizing the implementation of the changes.' WHERE [Requirement_Id] = 37636
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Security and Privacy Representatives</b></p>Require [Assignment: organization-defined security and privacy representatives] to be members of the [Assignment: organization-defined configuration change control element].' WHERE [Requirement_Id] = 37637
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Cryptography Management</b></p>Ensure that cryptographic mechanisms used to provide the following controls are under configuration management: [Assignment: organization-defined controls].' WHERE [Requirement_Id] = 37638
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Impact Analyses</b></p>Analyze changes to the system to determine potential security and privacy impacts prior to change implementation.' WHERE [Requirement_Id] = 37641
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Separate Test Environments</b></p>Analyze changes to the system in a separate test environment before implementation in an operational environment, looking for security and privacy impacts due to flaws, weaknesses, incompatibility, or intentional malice.' WHERE [Requirement_Id] = 37642
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Verification of Controls</b></p>After system changes, verify that the impacted controls are implemented correctly, operating as intended, and producing the desired outcome with regard to meeting the security and privacy requirements for the system.' WHERE [Requirement_Id] = 37643
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Access Restrictions for Change</b></p>Define, document, approve, and enforce physical and logical access restrictions associated with changes to the system.' WHERE [Requirement_Id] = 37644
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Access Enforcement and Audit Records</b></p>(a) Enforce access restrictions using [Assignment: organization-defined automated mechanisms]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Configuration Settings</b></p>a. Establish and document configuration settings for components employed within the system that reflect the most restrictive mode consistent with operational requirements using [Assignment: organization-defined common secure configurations];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Management, Application, and Verification</b></p>Manage, apply, and verify configuration settings for [Assignment: organization-defined system components] using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37647
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Respond to Unauthorized Changes</b></p>Take the following actions in response to unauthorized changes to [Assignment: organization-defined configuration settings]: [Assignment: organization-defined actions].' WHERE [Requirement_Id] = 37648
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Least Functionality</b></p>a. Configure the system to provide only [Assignment: organization-defined mission essential capabilities]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Periodic Review</b></p>(a) Review the system [Assignment: organization-defined frequency] to identify unnecessary and/or nonsecure functions, ports, protocols, software, and services; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Prevent Program Execution</b></p>Prevent program execution in accordance with [Selection (one or more): [Assignment: organization-defined policies, rules of behavior, and/or access agreements regarding software program usage and restrictions]; rules authorizing the terms and conditions of software program usage].' WHERE [Requirement_Id] = 37651
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>System Component Inventory</b></p>a. Develop and document an inventory of system components that:

C.  Documentation to Establish Compliance
C.2.a. Hardware/software asset inventory, including supervisory control, and data acquisition systems. (p.11)</p>' WHERE [Requirement_Id] = 37653
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Updates During Installation and Removal</b></p>Update the inventory of system components as part of component installations, removals, and system updates.' WHERE [Requirement_Id] = 37654
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Maintenance</b></p>Maintain the currency, completeness, accuracy, and availability of the inventory of system components using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37655
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Unauthorized Component Detection</b></p>(a) Detect the presence of unauthorized hardware, software, and firmware components within the system using [Assignment: organization-defined automated mechanisms] [Assignment: organization-defined frequency]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Accountability Information</b></p>Include in the system component inventory information, a means for identifying by [Selection (one or more): name; position; role], individuals responsible and accountable for administering those components.' WHERE [Requirement_Id] = 37657
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Configuration Management Plan</b></p>Develop, document, and implement a configuration management plan for the system that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Contingency Planning Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>System Recovery and Reconstitution</b></p>Provide for the recovery and reconstitution of the system to a known state within [Assignment: organization-defined time period consistent with recovery time and recovery point objectives] after a disruption, compromise, or failure.' WHERE [Requirement_Id] = 37660
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Transaction Recovery</b></p>Implement transaction recovery for systems that are transaction-based.' WHERE [Requirement_Id] = 37661
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Restore Within Time Period</b></p>Provide the capability to restore system components within [Assignment: organization-defined restoration time periods] from configuration-controlled and integrity-protected information representing a known, operational state for the components.' WHERE [Requirement_Id] = 37662
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Safe Mode</b></p>When [Assignment: organization-defined conditions] are detected, enter a safe mode of operation with [Assignment: organization-defined restrictions of safe mode of operation].' WHERE [Requirement_Id] = 37664
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Contingency Plan</b></p>a. Develop a contingency plan for the system that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Coordinate with Related Plans</b></p>Coordinate contingency plan development with organizational elements responsible for related plans.' WHERE [Requirement_Id] = 37666
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Capacity Planning</b></p>Conduct capacity planning so that necessary capacity for information processing, telecommunications, and environmental support exists during contingency operations.' WHERE [Requirement_Id] = 37667
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Resume Mission and Business Functions</b></p>Plan for the resumption of [Selection: all; essential] mission and business functions within [Assignment: organization-defined time period] of contingency plan activation.' WHERE [Requirement_Id] = 37668
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Continue Mission and Business Functions</b></p>Plan for the continuance of [Selection: all; essential] mission and business functions with minimal or no loss of operational continuity and sustains that continuity until full system restoration at primary processing and/or storage sites.' WHERE [Requirement_Id] = 37669
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Identify Critical Assets</b></p>Identify critical system assets supporting [Selection: all; essential] mission and business functions.' WHERE [Requirement_Id] = 37670
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Contingency Training</b></p>a. Provide contingency training to system users consistent with assigned roles and responsibilities:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Simulated Events</b></p>Incorporate simulated events into contingency training to facilitate effective response by personnel in crisis situations.' WHERE [Requirement_Id] = 37672
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Contingency Plan Testing</b></p>a. Test the contingency plan for the system [Assignment: organization-defined frequency] using the following tests to determine the effectiveness of the plan and the readiness to execute the plan: [Assignment: organization-defined tests].
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Coordinate with Related Plans</b></p>Coordinate contingency plan testing with organizational elements responsible for related plans.' WHERE [Requirement_Id] = 37674
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Alternate Storage Site</b></p>a. Establish an alternate storage site, including necessary agreements to permit the storage and retrieval of system backup information; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Separation from Primary Site</b></p>Identify an alternate storage site that is sufficiently separated from the primary storage site to reduce susceptibility to the same threats.' WHERE [Requirement_Id] = 37677
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Recovery Time and Recovery Point Objectives</b></p>Configure the alternate storage site to facilitate recovery operations in accordance with recovery time and recovery point objectives.' WHERE [Requirement_Id] = 37678
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Accessibility</b></p>Identify potential accessibility problems to the alternate storage site in the event of an area-wide disruption or disaster and outline explicit mitigation actions.' WHERE [Requirement_Id] = 37679
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Alternate Processing Site</b></p>a. Establish an alternate processing site, including necessary agreements to permit the transfer and resumption of [Assignment: organization-defined system operations] for essential mission and business functions within [Assignment: organization-defined time period consistent with recovery time and recovery point objectives] when the primary processing capabilities are unavailable;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Separation from Primary Site</b></p>Identify an alternate processing site that is sufficiently separated from the primary processing site to reduce susceptibility to the same threats.' WHERE [Requirement_Id] = 37681
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Accessibility</b></p>Identify potential accessibility problems to alternate processing sites in the event of an area-wide disruption or disaster and outlines explicit mitigation actions.' WHERE [Requirement_Id] = 37682
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Priority of Service</b></p>Develop alternate processing site agreements that contain priority-of-service provisions in accordance with availability requirements (including recovery time objectives).' WHERE [Requirement_Id] = 37683
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Preparation for Use</b></p>Prepare the alternate processing site so that the site can serve as the operational site supporting essential mission and business functions.' WHERE [Requirement_Id] = 37684
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Telecommunications Services</b></p>Establish alternate telecommunications services, including necessary agreements to permit the resumption of [Assignment: organization-defined system operations] for essential mission and business functions within [Assignment: organization-defined time period] when the primary telecommunications capabilities are unavailable at either the primary or alternate processing or storage sites.' WHERE [Requirement_Id] = 37685
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Separation of Primary and Alternate Providers</b></p>Obtain alternate telecommunications services from providers that are separated from primary service providers to reduce susceptibility to the same threats.' WHERE [Requirement_Id] = 37688
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Provider Contingency Plan</b></p>(a) Require primary and alternate telecommunications service providers to have contingency plans;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>System Backup</b></p>a. Conduct backups of user-level information contained in [Assignment: organization-defined system components] [Assignment: organization-defined frequency consistent with recovery time and recovery point objectives];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Testing for Reliability and Integrity</b></p>Test backup information [Assignment: organization-defined frequency] to verify media reliability and information integrity.' WHERE [Requirement_Id] = 37691
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Test Restoration Using Sampling</b></p>Use a sample of backup information in the restoration of selected system functions as part of contingency plan testing.' WHERE [Requirement_Id] = 37692
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Separate Storage for Critical Information</b></p>Store backup copies of [Assignment: organization-defined critical system software and other security-related information] in a separate facility or in a fire rated container that is not collocated with the operational system.' WHERE [Requirement_Id] = 37693
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Transfer to Alternate Storage Site</b></p>Transfer system backup information to the alternate storage site [Assignment: organization-defined time period and transfer rate consistent with the recovery time and recovery point objectives].' WHERE [Requirement_Id] = 37694
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Cryptographic Protection</b></p>Implement cryptographic mechanisms to prevent unauthorized disclosure and modification of [Assignment: organization-defined backup information].' WHERE [Requirement_Id] = 37695
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Identification and Authentication Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:

C.1. Identification and authentication policies and procedures designed to prevent 
unauthorized access to Critical Cyber Systems that include� (p.6)</p>' WHERE [Requirement_Id] = 37696
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Re-authentication</b></p>Require users to re-authenticate when [Assignment: organization-defined circumstances or situations requiring re-authentication].' WHERE [Requirement_Id] = 37697
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Identity Proofing</b></p>a. Identity proof users that require accounts for logical access to systems based on appropriate identity assurance level requirements as specified in applicable standards and guidelines;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Identification and Authentication  (Organizational Users)</b></p>Uniquely identify and authenticate organizational users and associate that unique identification with processes acting on behalf of those users.', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>a. Uniquely identify and authenticate users and associate that unique identification with processes acting on behalf of those users leveraging an authorized Identity and Access Management (IAM) solution.</p><p>Related Controls: AC-2, AC-3, AC-4, AC-14, AC-17, AC-18, AU-1, AU-6, IA-4, IA-5, IA-8, MA-4, MA-5, PE-2, PL-4, SA-4, SA-8</p><p>b. Security Controls Enhancement(s):</p><p><strong><u>NIST 800-82 Rev 3:</strong></u><br>OT Discussion: When shared accounts are required, compensating controls include providing increased physical security, personnel security, and auditing measures. For certain OT, the capability for immediate operator interaction is critical. Local emergency actions for OT are not hampered by identification or authentication requirements. Access to these systems may be restricted by appropriate physical controls.</p><p><strong>NIST SP800-53 R5</strong></p><p>Organizations can satisfy the identification and authentication requirements by complying with the requirements in [HSPD 12]. Organizational users include employees or individuals who organizations consider to have an equivalent status to employees (e.g., contractors and guest researchers). Unique identification and authentication of users applies to all accesses other than those that are explicitly identified in AC-14 and that occur through the authorized use of group authenticators without individual authentication. Since processes execute on behalf of groups and roles, organizations may require unique identification of individuals in group accounts or for detailed accountability of individual activity.<div><br></div><div>Organizations employ passwords, physical authenticators, or biometrics to authenticate user identities or, in the case of multi-factor authentication, some combination thereof. Access to organizational systems is defined as either local access or network access. Local access is any access to organizational systems by users or processes acting on behalf of users, where access is obtained through direct connections without the use of networks. Network access is access to organizational systems by users (or processes acting on behalf of users) where access is obtained through network connections (i.e., nonlocal accesses). Remote access is a type of network access that involves communication through external networks. Internal networks include local area networks and wide area networks.<br></div><div><br></div><div>The use of encrypted virtual private networks for network connections between organization-controlled endpoints and non-organization-controlled endpoints may be treated as internal networks with respect to protecting the confidentiality and integrity of information traversing the network. Identification and authentication requirements for non-organizational users are described in IA-8.<br></div></p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Identification and Authentication (Organizational Users)</strong>

C.2. Multi-factor authentication, or other logical and physical security controls that supplement password authentication to provide risk mitigation commensurate to multi-factor authentication. If an Owner/Operator does not apply multi-factor authentication for access to Operational Technology components or assets, the Owner/Operator must specify what compensating controls are used to manage access. (p.7)</p>' WHERE [Requirement_Id] = 37704
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>Implement multi-factor authentication for access to privileged accounts.</p><p>OT Systems Only: As a compensating control, physical access restrictions may sufficiently represent one authentication factor, provided the system is not remotely accessible.</p><p>Related Controls: AC-5, AC-6</p><p><strong><u>NIST 800-82 Rev 3:<br></strong></u>OT Discussion: As a compensating control, physical access restrictions may sufficiently represent one authentication factor, provided that the system is not remotely accessible.</p><p><strong>NIST SP800-53 R5</strong></p><p>Multi-factor authentication requires the use of two or more different factors to achieve authentication. The authentication factors are defined as follows: something you know (e.g., a personal identification number [PIN]), something you have (e.g., a physical authenticator such as a cryptographic private key), or something you are (e.g., a biometric). Multi-factor authentication solutions that feature physical authenticators include hardware authenticators that provide time-based or challenge-response outputs and smart cards such as the U.S. Government Personal Identity Verification (PIV) card or the Department of Defense (DoD) Common Access Card (CAC). In addition to authenticating users at the system level (i.e., at logon), organizations may employ authentication mechanisms at the application level, at their discretion, to provide increased security. Regardless of the type of access (i.e., local, network, remote), privileged accounts are authenticated using multi-factor options appropriate for the level of risk. Organizations can add additional security measures, such as additional or more rigorous authentication mechanisms, for specific types of access.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Identification and Authentication (organizational Users) | Multi-factor Authentication to Privileged Accounts</strong>

C.2. Multi-factor authentication, or other logical and physical security controls that supplement password authentication to provide risk mitigation commensurate to multi-factor authentication. If an Owner/Operator does not apply multi-factor authentication for access to Operational Technology components or assets, the Owner/Operator must specify what compensating controls are used to manage access. (p.7)</p>' WHERE [Requirement_Id] = 37705
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>Implement multi-factor authentication for access to non-privileged accounts.</p><p>OT Systems Only: As a compensating control, physical access restrictions may sufficiently represent one authentication factor, provided the system is not remotely accessible.</p><p>Related Controls: AC-5</p><p><strong><u>NIST 800-82 Rev 3:</strong></u><br>OT Discussion: As a compensating control, physical access restrictions may sufficiently represent one authentication factor, provided that the system is not remotely accessible.</p><p><strong>NIST SP800-53 R5</strong></p><p>Multi-factor authentication requires the use of two or more different factors to achieve authentication. The authentication factors are defined as follows: something you know (e.g., a personal identification number [PIN]), something you have (e.g., a physical authenticator such as a cryptographic private key), or something you are (e.g., a biometric). Multi-factor authentication solutions that feature physical authenticators include hardware authenticators that provide time-based or challenge-response outputs and smart cards such as the U.S. Government Personal Identity Verification card or the DoD Common Access Card. In addition to authenticating users at the system level, organizations may also employ authentication mechanisms at the application level, at their discretion, to provide increased information security. Regardless of the type of access (i.e., local, network, remote), non-privileged accounts are authenticated using multi-factor options appropriate for the level of risk. Organizations can provide additional security measures, such as additional or more rigorous authentication mechanisms, for specific types of access.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Identification and Authentication (organizational Users) | Multi-factor Authentication to Non-privileged Accounts</strong>

C.2. Multi-factor authentication, or other logical and physical security controls that supplement password authentication to provide risk mitigation commensurate to multi-factor authentication. If an Owner/Operator does not apply multi-factor authentication for access to Operational Technology components or assets, the Owner/Operator must specify what compensating controls are used to manage access. (p.7)</p>' WHERE [Requirement_Id] = 37707
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>Identifiers and authenticators shall not be shared within the WMATA Enterprise unless authorized by the AO/AODR. When shared identifiers or authenticators are in use, users shall be individually authenticated before access is granted to a shared account or resource.</p><p><strong><u>NIST 800-82 Rev 3:</strong></u><br>OT Discussion: For local access, physical access controls and logging may be used as an alternative to individual authentication on an OT system. For remote access, the remote access authentication mechanism will be used to identify, permit, and log individual access before permitting the use of shared accounts. </p><p><strong>NIST SP800-53 R5</strong></p><p>Individual authentication prior to shared group authentication mitigates the risk of using group accounts or authenticators.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Identification and Authentication (organizational Users) | Individual Authentication with Group Authentication</strong>

C.2. Multi-factor authentication, or other logical and physical security controls that supplement password authentication to provide risk mitigation commensurate to multi-factor authentication. If an Owner/Operator does not apply multi-factor authentication for access to Operational Technology components or assets, the Owner/Operator must specify what compensating controls are used to manage access. (p.7)

C.4. Enforcement of standards that limit the availability and use of shared accounts to 
those that are critical for operations, and then only if absolutely necessary. When the 
Owner/Operator uses shared accounts for operational purposes, the policies and 
procedures must ensure� (p.7)
</p>' WHERE [Requirement_Id] = 37708
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Access to Accounts — Replay Resistant</b></p>Implement replay-resistant authentication mechanisms for access to [Selection (one or more): privileged accounts; non-privileged accounts].' WHERE [Requirement_Id] = 37709
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Device Identification and Authentication</b></p>Uniquely identify and authenticate [Assignment: organization-defined devices and/or types of devices] before establishing a [Selection (one or more): local; remote; network] connection.' WHERE [Requirement_Id] = 37710
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Identifier Management</b></p>a. Receiving authorization from [Assignment: organization-defined personnel or roles] to assign an individual, group, role, service, or device identifier;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Authenticator Management</b></p>a. Verifying, as part of the initial authenticator distribution, the identity of the individual, group, role, service, or device receiving the authenticator;

C.1.a. A policy for memorized secret authenticators resets that includes criteria for when 
resets must occur [10]; and (p.7)</p>' WHERE [Requirement_Id] = 37715
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Password-based Authentication</b></p>For password-based authentication:

C.1.a. A policy for memorized secret authenticators resets that includes criteria for when 
resets must occur [10]; and (p.7)</p>' WHERE [Requirement_Id] = 37716
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Public Key-based Authentication</b></p>(a) For public key-based authentication:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Protection of Authenticators</b></p>Protect authenticators commensurate with the security category of the information to which use of the authenticator permits access.' WHERE [Requirement_Id] = 37718
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Authentication Feedback</b></p>Obscure feedback of authentication information during the authentication process to protect the information from possible exploitation and use by unauthorized individuals.' WHERE [Requirement_Id] = 37719
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Cryptographic Module Authentication</b></p>Implement mechanisms for authentication to a cryptographic module that meet the requirements of applicable laws, executive orders, directives, policies, regulations, standards, and guidelines for such authentication.' WHERE [Requirement_Id] = 37720
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Identification and Authentication  (non-organizational Users)</b></p>Uniquely identify and authenticate non-organizational users or processes acting on behalf of non-organizational users.' WHERE [Requirement_Id] = 37721
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Cybersecurity Incident Response Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Incident Response Training</b></p>a. Provide incident response training to system users consistent with assigned roles and responsibilities:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Simulated Events</b></p>Incorporate simulated events into incident response training to facilitate the required response by personnel in crisis situations.' WHERE [Requirement_Id] = 37727
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Training Environments</b></p>Provide an incident response training environment using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37728
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Breach</b></p>Provide incident response training on how to identify and respond to a breach, including the organization’s process for reporting a breach.' WHERE [Requirement_Id] = 37729
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Incident Response Testing</b></p>Test the effectiveness of the incident response capability for the system [Assignment: organization-defined frequency] using the following tests: [Assignment: organization-defined tests].' WHERE [Requirement_Id] = 37730
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Coordination with Related Plans</b></p>Coordinate incident response testing with organizational elements responsible for related plans.' WHERE [Requirement_Id] = 37731
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Incident Handling</b></p>a. Implement an incident handling capability for incidents that is consistent with the incident response plan and includes preparation, detection and analysis, containment, eradication, and recovery;

D.2. Procedures to�
d. Implement capabilities (such as Security, Orchestration, Automation, and Response) to define, prioritize, and drive standardized incident response activities.  (p.8)

D.4. Mitigation measures or manual controls to ensure industrial control systems can be isolated when a cybersecurity incident in the Information Technology system creates risk to the safety and reliability of the Operational Technology system. (p.8)</p>' WHERE [Requirement_Id] = 37732
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Incident Handling Processes</b></p>Support the incident handling process using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37733
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Integrated Incident Response Team</b></p>Establish and maintain an integrated incident response team that can be deployed to any location identified by the organization in [Assignment: organization-defined time period].' WHERE [Requirement_Id] = 37734
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Information Correlation</b></p>Correlate incident information and individual incident responses to achieve an organization-wide perspective on incident awareness and response.' WHERE [Requirement_Id] = 37735
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Incident Monitoring</b></p>Track and document incidents.', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>a. Track and document incidents.</p><p>Related Controls: AU-6, AU-7, IR-4, IR-6, IR-8, PE-6, PM-5, SC-5, SC-7, SI-3, SI-4, SI-7</p><p>b. Security Controls Enhancement(s):</p><p><strong>NIST SP800-53 R5</strong></p><p>Documenting incidents includes maintaining records about each incident, the status of the incident, and other pertinent information necessary for forensics as well as evaluating incident details, trends, and handling. Incident information can be obtained from a variety of sources, including network monitoring, incident reports, incident response teams, user complaints, supply chain partners, audit monitoring, physical access monitoring, and user and administrator reports. IR-4 provides information on the types of incidents that are appropriate for monitoring.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Incident Monitoring</strong>

D.2. Procedures to�
d. Implement capabilities (such as Security, Orchestration, Automation, and Response) to define, prioritize, and drive standardized incident response activities.  (p.8)
</p>' WHERE [Requirement_Id] = 37736
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Tracking, Data Collection, and Analysis</b></p>Track incidents and collect and analyze incident information using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37737
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Incident Reporting</b></p>a. Require personnel to report suspected incidents to the organizational incident response capability within [Assignment: organization-defined time period]; and

D.2. Procedures to�
d. Implement capabilities (such as Security, Orchestration, Automation, and Response) to define, prioritize, and drive standardized incident response activities.  (p.8)
</p>' WHERE [Requirement_Id] = 37738
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>Report incidents using the designated Security Orchestration, Automation and Response (SOAR).</p><p><strong><u>OT Systems Only:</strong></u> The automated mechanisms used to support the incident reporting process are not necessarily part of, or connected to, the OT. </p><p>Related Controls: IR-7</p><p><strong><u>NIST 800-82 Rev 3:</strong></u><br>OT Discussion: The automated mechanisms used to support the incident reporting process are not necessarily part of or connected to the OT.</p><p><strong>NIST SP800-53 R5</strong></p><p>The recipients of incident reports are specified in IR-6b. Automated reporting mechanisms include email, posting on websites (with automatic updates), and automated incident response tools and programs.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Incident Reporting | Automated Reporting</strong>

D.2. Procedures to�
d. Implement capabilities (such as Security, Orchestration, Automation, and Response) to define, prioritize, and drive standardized incident response activities.  (p.8)
</p>' WHERE [Requirement_Id] = 37739
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Supply Chain Coordination</b></p>Provide incident information to the provider of the product or service and other organizations involved in the supply chain or supply chain governance for systems or system components related to the incident.' WHERE [Requirement_Id] = 37740
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Incident Response Assistance</b></p>Provide an incident response support resource, integral to the organizational incident response capability, that offers advice and assistance to users of the system for the handling and reporting of incidents.' WHERE [Requirement_Id] = 37741
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automation Support for Availability of Information and Support</b></p>Increase the availability of incident response information and support using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37742
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Incident Response Plan</b></p>a. Develop an incident response plan that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Breaches</b></p>Include the following in the Incident Response Plan for breaches involving personally identifiable information:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Information Spillage Response</b></p>Respond to information spills by:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Training</b></p>Provide information spillage response training [Assignment: organization-defined frequency].' WHERE [Requirement_Id] = 37746
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Post-Spill Operations</b></p>Implement the following procedures to ensure that organizational personnel impacted by information spills can continue to carry out assigned tasks while contaminated systems are undergoing corrective actions: [Assignment: organization-defined procedures].' WHERE [Requirement_Id] = 37747
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Exposure to Unauthorized Personnel</b></p>Employ the following controls for personnel exposed to information not within assigned access authorizations: [Assignment: organization-defined controls].' WHERE [Requirement_Id] = 37748
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Maintenance Policy and Procedures</b></p>Control:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Controlled Maintenance</b></p>a. Schedule, document, and review records of maintenance, repair, and replacement on system components in accordance with manufacturer or vendor specifications and/or organizational requirements;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Maintenance Activities</b></p>(a) Schedule, conduct, and document maintenance, repair, and replacement actions for the system using [Assignment: organization-defined automated mechanisms]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Maintenance Tools</b></p>a. Approve, control, and monitor the use of system maintenance tools; and

2.  Develop a Cybersecurity Assessment Plan and submit (a) an annual update, for approval, that describes how the Owner/Operator will proactively and regularly assess the effectiveness of cybersecurity measures, and identify and resolve device, network, and/or system vulnerabilities, and (b) an annual report that provides Cybersecurity Assessment Plan results from the previous year. See Section III.F. (p.3)</p>' WHERE [Requirement_Id] = 37752
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Inspect Tools</b></p>Inspect the maintenance tools used by maintenance personnel for improper or unauthorized modifications.' WHERE [Requirement_Id] = 37753
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Inspect Media</b></p>Check media containing diagnostic and test programs for malicious code before the media are used in the system.' WHERE [Requirement_Id] = 37754
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Prevent Unauthorized Removal</b></p>Prevent the removal of maintenance equipment containing organizational information by:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Software Updates and Patches</b></p>Inspect maintenance tools to ensure the latest software updates and patches are installed.', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>Inspect maintenance tools to ensure the latest software updates and patches are installed.</p><p>Related Controls: AC-3, AC-6</p><p><strong>NIST SP800-53 R5</strong></p><p>Maintenance tools using outdated and/or unpatched software can provide a threat vector for adversaries and result in a significant vulnerability for organizations.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> I. Purpose and General Information Maintenance Tools | Software Updates and Patches</strong>

2.  Develop a Cybersecurity Assessment Plan and submit (a) an annual update, for approval, that describes how the Owner/Operator will proactively and regularly assess the effectiveness of cybersecurity measures, and identify and resolve device, network, and/or system vulnerabilities, and (b) an annual report that provides Cybersecurity Assessment Plan results from the previous year. See Section III.F. (p.3)</p>' WHERE [Requirement_Id] = 37756
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Nonlocal Maintenance</b></p>a. Approve and monitor nonlocal maintenance and diagnostic activities;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Maintenance Personnel</b></p>a. Establish a process for maintenance personnel authorization and maintain a list of authorized maintenance organizations or personnel;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Individuals Without Appropriate Access</b></p>(a) Implement procedures for the use of maintenance personnel that lack appropriate security clearances or are not U.S. citizens, that include the following requirements:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Timely Maintenance</b></p>Obtain maintenance support and/or spare parts for [Assignment: organization-defined system components] within [Assignment: organization-defined time period] of failure.' WHERE [Requirement_Id] = 37762
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Media Protection Policy and Procedures</b></p>Control:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Media Access</b></p>Restrict access to [Assignment: organization-defined types of digital and/or non-digital media] to [Assignment: organization-defined personnel or roles].' WHERE [Requirement_Id] = 37764
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Media Marking</b></p>a. Mark system media indicating the distribution limitations, handling caveats, and applicable security markings (if any) of the information; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Media Storage</b></p>a. Physically control and securely store [Assignment: organization-defined types of digital and/or non-digital media] within [Assignment: organization-defined controlled areas]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Media Transport</b></p>a. Protect and control [Assignment: organization-defined types of system media] during transport outside of controlled areas using [Assignment: organization-defined controls];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Media Sanitization</b></p>a. Sanitize [Assignment: organization-defined system media] prior to disposal, release out of organizational control, or release for reuse using [Assignment: organization-defined sanitization techniques and procedures]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Review, Approve, Track, Document, and Verify</b></p>Review, approve, track, document, and verify media sanitization and disposal actions.' WHERE [Requirement_Id] = 37769
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Equipment Testing</b></p>Test sanitization equipment and procedures [Assignment: organization-defined frequency] to ensure that the intended sanitization is being achieved.' WHERE [Requirement_Id] = 37770
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Nondestructive Techniques</b></p>Apply nondestructive sanitization techniques to portable storage devices prior to connecting such devices to the system under the following circumstances: [Assignment: organization-defined circumstances requiring sanitization of portable storage devices].' WHERE [Requirement_Id] = 37771
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Field Maintenance</b></p>Restrict or prohibit field maintenance on [Assignment: organization-defined systems or system components] to [Assignment: organization-defined trusted maintenance facilities].' WHERE [Requirement_Id] = 37772
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Media Use</b></p>a. [Selection: Restrict; Prohibit] the use of [Assignment: organization-defined types of system media] on [Assignment: organization-defined systems or system components] using [Assignment: organization-defined controls]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Physical and Environmental Protection Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Emergency Shutoff</b></p>a. Provide the capability of shutting off power to [Assignment: organization-defined system or individual system components] in emergency situations;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Emergency Power</b></p>Provide an uninterruptible power supply to facilitate [Selection (one or more): an orderly shutdown of the system; transition of the system to long-term alternate power] in the event of a primary power source loss.' WHERE [Requirement_Id] = 37776
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Alternate Power Supply — Minimal Operational Capability</b></p>Provide an alternate power supply for the system that is activated [Selection: manually; automatically] and that can maintain minimally required operational capability in the event of an extended loss of the primary power source.' WHERE [Requirement_Id] = 37777
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Alternate Power Supply – Self-Contained</b></p>Provide an alternate power supply for the system that is activated [Selection: manually; automatically] and that is:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Emergency Lighting</b></p>Employ and maintain automatic emergency lighting for the system that activates in the event of a power outage or disruption and that covers emergency exits and evacuation routes within the facility.' WHERE [Requirement_Id] = 37779
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Fire Protection</b></p>Employ and maintain fire detection and suppression systems that are supported by an independent energy source.' WHERE [Requirement_Id] = 37780
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Detection Systems – Automatic Activation and Notification</b></p>Employ fire detection systems that activate automatically and notify [Assignment: organization-defined personnel or roles] and [Assignment: organization-defined emergency responders] in the event of a fire.' WHERE [Requirement_Id] = 37781
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Suppression Systems – Automatic Activation and Notification</b></p>(a) Employ fire suppression systems that activate automatically and notify [Assignment: organization-defined personnel or roles] and [Assignment: organization-defined emergency responders]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Environmental Controls</b></p>a. Maintain [Selection (one or more): temperature; humidity; pressure; radiation; [Assignment: organization-defined environmental control]] levels within the facility where the system resides at [Assignment: organization-defined acceptable levels]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Water Damage Protection</b></p>Protect the system from damage resulting from water leakage by providing master shutoff or isolation valves that are accessible, working properly, and known to key personnel.' WHERE [Requirement_Id] = 37784
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automation Support</b></p>Detect the presence of water near the system and alert [Assignment: organization-defined personnel or roles] using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37785
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Delivery and Removal</b></p>a. Authorize and control [Assignment: organization-defined types of system components] entering and exiting the facility; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Alternate Work Site</b></p>a. Determine and document the [Assignment: organization-defined alternate work sites] allowed for use by employees;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Location of System Components</b></p>Position system components within the facility to minimize potential damage from [Assignment: organization-defined physical and environmental hazards] and to minimize the opportunity for unauthorized access.' WHERE [Requirement_Id] = 37788
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Physical Access Authorizations</b></p>a. Develop, approve, and maintain a list of individuals with authorized access to the facility where the system resides;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Electromagnetic Pulse Protection</b></p>Employ [Assignment: organization-defined protective measures] against electromagnetic pulse damage for [Assignment: organization-defined systems and system components].' WHERE [Requirement_Id] = 37790
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Component Marking</b></p>Mark [Assignment: organization-defined system hardware components] indicating the impact level or classification level of the information permitted to be processed, stored, or transmitted by the hardware component.' WHERE [Requirement_Id] = 37791
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Physical Access Control</b></p>a. Enforce physical access authorizations at [Assignment: organization-defined entry and exit points to the facility where the system resides] by:

C.5. Regularly updated schedule for review of existing domain trust relationships to 
ensure their necessity and establish policies to manage these relationships. (p.7)</p>' WHERE [Requirement_Id] = 37792
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> System Access</b></p>Enforce physical access authorizations to the system in addition to the physical access controls for the facility at [Assignment: organization-defined physical spaces containing one or more components of the system].' WHERE [Requirement_Id] = 37793
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Access Control for Transmission</b></p>Control physical access to [Assignment: organization-defined system distribution and transmission lines] within organizational facilities using [Assignment: organization-defined security controls].' WHERE [Requirement_Id] = 37794
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Access Control for Output Devices</b></p>Control physical access to output from [Assignment: organization-defined output devices] to prevent unauthorized individuals from obtaining the output.' WHERE [Requirement_Id] = 37795
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Monitoring Physical Access</b></p>a. Monitor physical access to the facility where the system resides to detect and respond to physical security incidents;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Intrusion Alarms and Surveillance Equipment</b></p>Monitor physical access to the facility where the system resides using physical intrusion alarms and surveillance equipment.' WHERE [Requirement_Id] = 37797
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Visitor Access Records</b></p>a. Maintain visitor access records to the facility where the system resides for [Assignment: organization-defined time period];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Records Maintenance and Review</b></p>Maintain and review visitor access records using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37800
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Limit Personally Identifiable Information Elements</b></p>Limit personally identifiable information contained in visitor access records to the following elements identified in the privacy risk assessment: [Assignment: organization-defined elements].' WHERE [Requirement_Id] = 37801
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Power Equipment and Cabling</b></p>Protect power equipment and power cabling for the system from damage and destruction.' WHERE [Requirement_Id] = 37802
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Planning Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Baseline Selection</b></p>Select a control baseline for the system.' WHERE [Requirement_Id] = 37804
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Baseline Tailoring</b></p>Tailor the selected control baseline by applying specified tailoring actions.' WHERE [Requirement_Id] = 37805
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>System Security and Privacy Plans</b></p>a. Develop security and privacy plans for the system that:

1. Establish and implement a TSA-approved Cybersecurity Implementation Plan that describes the specific measures employed and the schedule for achieving the following outcomes, as more fully described in Section III.A through III.E.: (p.2)

III. Cybersecurity Measures

B.2. An identification and description of measures for securing and defending zone 
boundaries, that includes security controls� (p.6)

C.1.b. Documented and defined mitigation measures for components of Critical Cyber 
Systems that will not fall under the policy required by the preceding subparagraph 
(III.C.1.a), and a timeframe to complete these mitigations. (p.7)

C.3. Policies and procedures to manage access rights based on the principles of least 
privilege and separation of duties. Where not technically feasible to apply these 
principles, the policies and procedures must describe the compensating controls that 
the Owner/Operator will apply. (p.7)

C.5. Regularly updated schedule for review of existing domain trust relationships to 
ensure their necessity and establish policies to manage these relationships. (p.7)</p>' WHERE [Requirement_Id] = 37806
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Rules of Behavior</b></p>a. Establish and provide to individuals requiring access to the system, the rules that describe their responsibilities and expected behavior for information and system usage, security, and privacy;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Social Media and External Site/application Usage Restrictions</b></p>Include in the rules of behavior, restrictions on:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Concept of Operations</b></p>a. Develop a Concept of Operations (CONOPS) for the system describing how the organization intends to operate the system from the perspective of information security and privacy; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Security and Privacy Architectures</b></p>a. Develop security and privacy architectures for the system that:

F.2.b. Include a cybersecurity architecture design review to be conducted within the first 12 months after the Cybersecurity Implementation Plan approval and at least once every two years thereafter. A cybersecurity architecture design review contains verification and validation of network traffic, a system log review, and analysis to identify cybersecurity vulnerabilities related to network design, configuration, and inter-connectivity to internal and external systems; and (p.9)</p>' WHERE [Requirement_Id] = 37810
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Central Management</b></p>Centrally manage [Assignment: organization-defined controls and related processes].' WHERE [Requirement_Id] = 37812
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Information Security Program Plan</b></p>a. Develop and disseminate an organization-wide information security program plan that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Authorization Process</b></p>a. Manage the security and privacy state of organizational systems and the environments in which those systems operate through authorization processes;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Mission and Business Process Definition</b></p>a. Define organizational mission and business processes with consideration for information security and privacy and the resulting risk to organizational operations, organizational assets, individuals, other organizations, and the Nation; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Insider Threat Program</b></p>Implement an insider threat program that includes a cross-discipline insider threat incident handling team.' WHERE [Requirement_Id] = 37816
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Security and Privacy Workforce</b></p>Establish a security and privacy workforce development and improvement program.' WHERE [Requirement_Id] = 37817
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Testing, Training, and Monitoring</b></p>a. Implement a process for ensuring that organizational plans for conducting security and privacy testing, training, and monitoring activities associated with organizational systems:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Security and Privacy Groups and Associations</b></p>Establish and institutionalize contact with selected groups and associations within the security and privacy communities:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Threat Awareness Program</b></p>Implement a threat awareness program that includes a cross-organization information-sharing capability for threat intelligence.' WHERE [Requirement_Id] = 37820
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Means for Sharing Threat Intelligence</b></p>Employ automated mechanisms to maximize the effectiveness of sharing threat intelligence information.' WHERE [Requirement_Id] = 37821
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Protecting Controlled Unclassified Information on External Systems</b></p>a. Establish policy and procedures to ensure that requirements for the protection of controlled unclassified information that is processed, stored or transmitted on external systems, are implemented in accordance with applicable laws, executive orders, directives, policies, regulations, and standards; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Privacy Program Plan</b></p>a. Develop and disseminate an organization-wide privacy program plan that provides an overview of the agency’s privacy program, and:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Privacy Program Leadership Role</b></p>Appoint a senior agency official for privacy with the authority, mission, accountability, and resources to coordinate, develop, and implement, applicable privacy requirements and manage privacy risks through the organization-wide privacy program.' WHERE [Requirement_Id] = 37824
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Information Security Program Leadership Role</b></p>Appoint a senior agency information security officer with the mission and resources to coordinate, develop, implement, and maintain an organization-wide information security program.' WHERE [Requirement_Id] = 37825
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Dissemination of Privacy Program Information</b></p>Maintain a central resource webpage on the organization’s principal public website that serves as a central source of information about the organization’s privacy program and that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Accounting of Disclosures</b></p>a. Develop and maintain an accurate accounting of disclosures of personally identifiable information, including:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Personally Identifiable Information Quality Management</b></p>Develop and document organization-wide policies and procedures for:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Data Governance Body</b></p>Establish a Data Governance Body consisting of [Assignment: organization-defined roles] with [Assignment: organization-defined responsibilities].' WHERE [Requirement_Id] = 37829
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Data Integrity Board</b></p>Establish a Data Integrity Board to:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Minimization of Personally Identifiable Information Used in Testing, Training, and Research</b></p>a. Develop, document, and implement policies and procedures that address the use of personally identifiable information for internal testing, training, and research;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Complaint Management</b></p>Implement a process for receiving and responding to complaints, concerns, or questions from individuals about the organizational security and privacy practices that includes:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Privacy Reporting</b></p>a. Develop [Assignment: organization-defined privacy reports] and disseminate to:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Risk Framing</b></p>a. Identify and document:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Risk Management Program Leadership Roles</b></p>a. Appoint a Senior Accountable Official for Risk Management to align organizational information security and privacy management processes with strategic, operational, and budgetary planning processes; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Information Security and Privacy Resources</b></p>a. Include the resources needed to implement the information security and privacy programs in capital planning and investment requests and document all exceptions to this requirement;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Supply Chain Risk Management Strategy</b></p>a. Develop an organization-wide strategy for managing supply chain risks associated with the development, acquisition, maintenance, and disposal of systems, system components, and system services;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Suppliers of Critical or Mission-essential Items</b></p>Identify, prioritize, and assess suppliers of critical or mission-essential technologies, products, and services.' WHERE [Requirement_Id] = 37838
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Continuous Monitoring Strategy</b></p>Develop an organization-wide continuous monitoring strategy and implement continuous monitoring programs that include:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Purposing</b></p>Analyze [Assignment: organization-defined systems or systems components] supporting mission essential services or functions to ensure that the information resources are being used consistent with their intended purpose.' WHERE [Requirement_Id] = 37840
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Plan of Action and Milestones Process</b></p>a. Implement a process to ensure that plans of action and milestones for the information security, privacy, and supply chain risk management programs and associated organizational systems:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>System Inventory</b></p>Develop and update [Assignment: organization-defined frequency] an inventory of organizational systems.' WHERE [Requirement_Id] = 37842
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Inventory of Personally Identifiable Information</b></p>Establish, maintain, and update [Assignment: organization-defined frequency] an inventory of all systems, applications, and projects that process personally identifiable information.' WHERE [Requirement_Id] = 37843
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Measures of Performance</b></p>Develop, monitor, and report on the results of information security and privacy measures of performance.' WHERE [Requirement_Id] = 37844
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Enterprise Architecture</b></p>Develop and maintain an enterprise architecture with consideration for information security, privacy, and the resulting risk to organizational operations and assets, individuals, other organizations, and the Nation.' WHERE [Requirement_Id] = 37845
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Offloading</b></p>Offload [Assignment: organization-defined non-essential functions or services] to other systems, system components, or an external provider.' WHERE [Requirement_Id] = 37846
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Critical Infrastructure Plan</b></p>Address information security and privacy issues in the development, documentation, and updating of a critical infrastructure and key resources protection plan.' WHERE [Requirement_Id] = 37847
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Risk Management Strategy</b></p>a. Develops a comprehensive strategy to manage:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Personnel Security Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Position Risk Designation</b></p>a. Assign a risk designation to all organizational positions;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Personnel Screening</b></p>a. Screen individuals prior to authorizing access to the system; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Personnel Termination</b></p>Upon termination of individual employment:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Actions</b></p>Use [Assignment: organization-defined automated mechanisms] to [Selection (one or more): notify [Assignment: organization-defined personnel or roles] of individual termination actions; disable access to system resources].' WHERE [Requirement_Id] = 37853
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Personnel Transfer</b></p>a. Review and confirm ongoing operational need for current logical and physical access authorizations to systems and facilities when individuals are reassigned or transferred to other positions within the organization;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Access Agreements</b></p>a. Develop and document access agreements for organizational systems;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>External Personnel Security</b></p>a. Establish personnel security requirements, including security roles and responsibilities for external providers;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Personnel Sanctions</b></p>a. Employ a formal sanctions process for individuals failing to comply with established information security and privacy policies and procedures; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Position Descriptions</b></p>Incorporate security and privacy roles and responsibilities into organizational position descriptions.' WHERE [Requirement_Id] = 37858
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Personally Identifiable Information Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Authority to Process Personally Identifiable Information</b></p>a. Determine and document the [Assignment: organization-defined authority] that permits the [Assignment: organization-defined processing] of personally identifiable information; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Data Tagging</b></p>Attach data tags containing [Assignment: organization-defined authorized processing] to [Assignment: organization-defined elements of personally identifiable information].' WHERE [Requirement_Id] = 37861
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automation</b></p>Manage enforcement of the authorized processing of personally identifiable information using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37862
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Personally Identifiable Information Processing Purposes</b></p>a. Identify and document the [Assignment: organization-defined purpose(s)] for processing personally identifiable information;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Data Tagging</b></p>Attach data tags containing the following purposes to [Assignment: organization-defined elements of personally identifiable information]: [Assignment: organization-defined processing purposes].' WHERE [Requirement_Id] = 37864
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automation</b></p>Track processing purposes of personally identifiable information using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37865
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Consent</b></p>Implement [Assignment: organization-defined tools or mechanisms] for individuals to consent to the processing of their personally identifiable information prior to its collection that facilitate individuals’ informed decision-making.' WHERE [Requirement_Id] = 37866
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Tailored Consent</b></p>Provide [Assignment: organization-defined mechanisms] to allow individuals to tailor processing permissions to selected elements of personally identifiable information.' WHERE [Requirement_Id] = 37867
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Just-in-time Consent</b></p>Present [Assignment: organization-defined consent mechanisms] to individuals at [Assignment: organization-defined frequency] and in conjunction with [Assignment: organization-defined personally identifiable information processing].' WHERE [Requirement_Id] = 37868
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Revocation</b></p>Implement [Assignment: organization-defined tools or mechanisms] for individuals to revoke consent to the processing of their personally identifiable information.' WHERE [Requirement_Id] = 37869
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Privacy Notice</b></p>Provide notice to individuals about the processing of personally identifiable information that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Just-in-time Notice</b></p>Present notice of personally identifiable information processing to individuals at a time and location where the individual provides personally identifiable information or in conjunction with a data action, or [Assignment: organization-defined frequency].' WHERE [Requirement_Id] = 37871
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Privacy Act Statements</b></p>Include Privacy Act statements on forms that collect information that will be maintained in a Privacy Act system of records, or provide Privacy Act statements on separate forms that can be retained by individuals.' WHERE [Requirement_Id] = 37872
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>System of Records Notice</b></p>For systems that process information that will be maintained in a Privacy Act system of records:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Routine Uses</b></p>Review all routine uses published in the system of records notice at [Assignment: organization-defined frequency] to ensure continued accuracy, and to ensure that routine uses continue to be compatible with the purpose for which the information was collected.' WHERE [Requirement_Id] = 37874
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Exemption Rules</b></p>Review all Privacy Act exemptions claimed for the system of records at [Assignment: organization-defined frequency] to ensure they remain appropriate and necessary in accordance with law, that they have been promulgated as regulations, and that they are accurately described in the system of records notice.' WHERE [Requirement_Id] = 37875
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Specific Categories of Personally Identifiable Information</b></p>Apply [Assignment: organization-defined processing conditions] for specific categories of personally identifiable information.' WHERE [Requirement_Id] = 37876
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Social Security Numbers</b></p>When a system processes Social Security numbers:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> First Amendment Information</b></p>Prohibit the processing of information describing how any individual exercises rights guaranteed by the First Amendment unless expressly authorized by statute or by the individual or unless pertinent to and within the scope of an authorized law enforcement activity.' WHERE [Requirement_Id] = 37878
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Computer Matching Requirements</b></p>When a system or organization processes information for the purpose of conducting a matching program:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Risk Assessment Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Security Categorization</b></p>a. Categorize the system and information it processes, stores, and transmits;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Risk Assessment</b></p>a. Conduct a risk assessment, including:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Supply Chain Risk Assessment</b></p>(a) Assess supply chain risks associated with [Assignment: organization-defined systems, system components, and system services]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Vulnerability Monitoring and Scanning</b></p>a. Monitor and scan for vulnerabilities in the system and hosted applications [Assignment: organization-defined frequency and/or randomly in accordance with organization-defined process] and when new vulnerabilities potentially affecting the system are identified and reported;

1.d. Reduce the risk of exploitation of unpatched systems through the application of 
security patches and updates for operating systems, applications, drivers and 
firmware on Critical Cyber Systems in a timely manner using a risk-based 
methodology. (p.3)

2.  Develop a Cybersecurity Assessment Plan and submit (a) an annual update, for approval, that describes how the Owner/Operator will proactively and regularly assess the effectiveness of cybersecurity measures, and identify and resolve device, network, and/or system vulnerabilities, and (b) an annual report that provides Cybersecurity Assessment Plan results from the previous year. See Section III.F. (p.3)

III. Cybersecurity Measures

E. Reduce the risk of exploitation of unpatched systems through the application of security patches and updates for operating systems, applications, drivers, and firmware on Critical Cyber Systems consistent with the Owner/Operator�s risk based methodology. These 
measures must include: (pp.8-9)

E.1. A patch management strategy that ensures all critical security patches and updates on 
Critical Cyber Systems are current.  (p.9)

E.2. The strategy required by Section III.E.1. must include: (p.9)

E.2.a. The risk methodology for categorizing and determining criticality of patches and updates, and an implementation timeline based on categorization and criticality; and (p.9)

E.2.b. Prioritization of all security patches and updates on the Cybersecurity and Infrastructure Security Agency''s Known Exploited Vulnerabilities Catalog. (p.9)

E.3. If the Owner/Operator cannot apply patches and updates on specific Operational Technology systems without causing a severe degradation of operational capability to meet necessary capacity, the patch management strategy must include a description 
and timeline of additional mitigations that address the risk created by not installing the patch or update. (p.9)
</p>' WHERE [Requirement_Id] = 37884
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Update Vulnerabilities to Be Scanned</b></p>Update the system vulnerabilities to be scanned [Selection (one or more): [Assignment: organization-defined frequency]; prior to a new scan; when new vulnerabilities are identified and reported].' WHERE [Requirement_Id] = 37886
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Privileged Access</b></p>Implement privileged access authorization to [Assignment: organization-defined system components] for [Assignment: organization-defined vulnerability scanning activities].' WHERE [Requirement_Id] = 37888
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Risk Response</b></p>Respond to findings from security and privacy assessments, monitoring, and audits in accordance with organizational risk tolerance.' WHERE [Requirement_Id] = 37889
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Privacy Impact Assessments</b></p>Conduct privacy impact assessments for systems, programs, or other activities before:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Criticality Analysis</b></p>Identify critical system components and functions by performing a criticality analysis for [Assignment: organization-defined systems, system components, or system services] at [Assignment: organization-defined decision points in the system development life cycle].' WHERE [Requirement_Id] = 37891
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>System and Services Acquisition Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Developer Configuration Management</b></p>Require the developer of the system, system component, or system service to:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Developer Testing and Evaluation</b></p>Require the developer of the system, system component, or system service, at all post-design stages of the system development life cycle, to:

2.  Develop a Cybersecurity Assessment Plan and submit (a) an annual update, for approval, that describes how the Owner/Operator will proactively and regularly assess the effectiveness of cybersecurity measures, and identify and resolve device, network, and/or system vulnerabilities, and (b) an annual report that provides Cybersecurity Assessment Plan results from the previous year. See Section III.F. (p.3)</p>' WHERE [Requirement_Id] = 37894
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Development Process, Standards, and Tools</b></p>a. Require the developer of the system, system component, or system service to follow a documented development process that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Criticality Analysis</b></p>Require the developer of the system, system component, or system service to perform a criticality analysis:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Developer-provided Training</b></p>Require the developer of the system, system component, or system service to provide the following training on the correct use and operation of the implemented security and privacy functions, controls, and/or mechanisms: [Assignment: organization-defined training].' WHERE [Requirement_Id] = 37897
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Developer Security and Privacy Architecture and Design</b></p>Require the developer of the system, system component, or system service to produce a design specification and security and privacy architecture that:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Allocation of Resources</b></p>a. Determine the high-level information security and privacy requirements for the system or system service in mission and business process planning;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Developer Screening</b></p>Require that the developer of [Assignment: organization-defined system, system component, or system service]:

1.d. Reduce the risk of exploitation of unpatched systems through the application of 
security patches and updates for operating systems, applications, drivers and 
firmware on Critical Cyber Systems in a timely manner using a risk-based 
methodology. (p.3)

III. Cybersecurity Measures

E. Reduce the risk of exploitation of unpatched systems through the application of security patches and updates for operating systems, applications, drivers, and firmware on Critical Cyber Systems consistent with the Owner/Operator�s risk based methodology. These 
measures must include: (pp.8-9)

E.1. A patch management strategy that ensures all critical security patches and updates on 
Critical Cyber Systems are current.  (p.9)</p>' WHERE [Requirement_Id] = 37900
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Unsupported System Components</b></p>a. Replace system components when support for the components is no longer available from the developer, vendor, or manufacturer; or
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>System Development Life Cycle</b></p>a. Acquire, develop, and manage the system using [Assignment: organization-defined system development life cycle] that incorporates information security and privacy considerations;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Acquisition Process</b></p>Include the following requirements, descriptions, and criteria, explicitly or by reference, using [Selection (one or more): standardized contract language; [Assignment: organization-defined contract language]] in the acquisition contract for the system, system component, or system service:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> System, Component, and Service Configurations</b></p>Require the developer of the system, system component, or system service to:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>System Documentation</b></p>a. Obtain or develop administrator documentation for the system, system component, or system service that describes:

C.5. Regularly updated schedule for review of existing domain trust relationships to 
ensure their necessity and establish policies to manage these relationships. (p.7)</p>' WHERE [Requirement_Id] = 37912
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Security and Privacy Engineering Principles</b></p>Apply the following systems security and privacy engineering principles in the specification, design, development, implementation, and modification of the system and system components: [Assignment: organization-defined systems security and privacy engineering principles].' WHERE [Requirement_Id] = 37913
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Minimization</b></p>Implement the privacy principle of minimization using [Assignment: organization-defined processes].' WHERE [Requirement_Id] = 37914
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>External System Services</b></p>a. Require that providers of external system services comply with organizational security and privacy requirements and employ the following controls: [Assignment: organization-defined controls];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Identification of Functions, Ports, Protocols, and Services</b></p>Require providers of the following external system services to identify the functions, ports, protocols, and other services required for the use of such services: [Assignment: organization-defined external system services].' WHERE [Requirement_Id] = 37916
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>System and Communication Protection Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Network Disconnect</b></p>Terminate the network connection associated with a communications session at the end of the session or after [Assignment: organization-defined time period] of inactivity.' WHERE [Requirement_Id] = 37918
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Cryptographic Key Establishment and Management</b></p>Establish and manage cryptographic keys when cryptography is employed within the system in accordance with the following key management requirements: [Assignment: organization-defined requirements for key generation, distribution, storage, access, and destruction].' WHERE [Requirement_Id] = 37919
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Availability</b></p>Maintain availability of information in the event of the loss of cryptographic keys by users.' WHERE [Requirement_Id] = 37920
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Cryptographic Protection</b></p>a. Determine the [Assignment: organization-defined cryptographic uses]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Collaborative Computing Devices and Applications</b></p>a. Prohibit remote activation of collaborative computing devices and applications with the following exceptions: [Assignment: organization-defined exceptions where remote activation is to be allowed]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Public Key Infrastructure Certificates</b></p>a. Issue public key certificates under an [Assignment: organization-defined certificate policy] or obtain public key certificates from an approved service provider; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Mobile Code</b></p>a. Define acceptable and unacceptable mobile code and mobile code technologies; and

D.1.d. Block and prevent unauthorized code, including macro scripts, from executing; 
and (p.8) 

D.2. Procedures to�
c. Identify and respond to execution of unauthorized code, including macro scripts; and (p.8)</p>' WHERE [Requirement_Id] = 37924
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Identify Unacceptable Code and Take Corrective Actions</b></p>Identify [Assignment: organization-defined unacceptable mobile code] and take [Assignment: organization-defined corrective actions].', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>Unapproved mobile code and mobile code technologies shall be removed from the WMATA environment. The System Owner shall document a POA&M identifying corrective actions and associated timeline subject to the approval of the AO.</p><p><strong>NIST SP800-53 R5</strong></p><p>Corrective actions when unacceptable mobile code is detected include blocking, quarantine, or alerting administrators. Blocking includes preventing the transmission of word processing files with embedded macros when such macros have been determined to be unacceptable mobile code.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Mobile Code |Identify Unacceptable Code and Take Corrective Actions</strong>

D.1.d. Block and prevent unauthorized code, including macro scripts, from executing; 
and (p.8)

D.2. Procedures to�
c. Identify and respond to execution of unauthorized code, including macro scripts; and (p.8)</p>' WHERE [Requirement_Id] = 37925
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Acquisition, Development, and Use</b></p>Verify that the acquisition, development, and use of mobile code to be deployed in the system meets [Assignment: organization-defined mobile code requirements].' WHERE [Requirement_Id] = 37926
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Prevent Downloading and Execution</b></p>Prevent the download and execution of [Assignment: organization-defined unacceptable mobile code].' WHERE [Requirement_Id] = 37927
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Prevent Automatic Execution</b></p>Prevent the automatic execution of mobile code in [Assignment: organization-defined software applications] and enforce [Assignment: organization-defined actions] prior to executing the code.' WHERE [Requirement_Id] = 37928
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Allow Execution Only in Confined Environments</b></p>Allow execution of permitted mobile code only in confined virtual machine environments.' WHERE [Requirement_Id] = 37929
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Separation of System and User Functionality</b></p>Separate user functionality, including user interface services, from system management functionality.' WHERE [Requirement_Id] = 37930
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Secure Name/address Resolution Service  (authoritative Source)</b></p>a. Provide additional data origin authentication and integrity verification artifacts along with the authoritative name resolution data the system returns in response to external name/address resolution queries; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Secure Name/address Resolution Service  (recursive or Caching Resolver)</b></p>Request and perform data origin authentication and data integrity verification on the name/address resolution responses the system receives from authoritative sources.' WHERE [Requirement_Id] = 37932
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Architecture and Provisioning for Name/address Resolution Service</b></p>Ensure the systems that collectively provide name/address resolution service for an organization are fault-tolerant and implement internal and external role separation.' WHERE [Requirement_Id] = 37933
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Session Authenticity</b></p>Protect the authenticity of communications sessions.' WHERE [Requirement_Id] = 37934
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Fail in Known State</b></p>Fail to a [Assignment: organization-defined known system state] for the following failures on the indicated components while preserving [Assignment: organization-defined system state information] in failure: [Assignment: list of organization-defined types of system failures on organization-defined system components].' WHERE [Requirement_Id] = 37935
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Protection of Information at Rest</b></p>Protect the [Selection (one or more): confidentiality; integrity] of the following information at rest: [Assignment: organization-defined information at rest].' WHERE [Requirement_Id] = 37936
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Cryptographic Protection</b></p>Implement cryptographic mechanisms to prevent unauthorized disclosure and modification of the following information at rest on [Assignment: organization-defined system components or media]: [Assignment: organization-defined information].' WHERE [Requirement_Id] = 37937
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Security Function Isolation</b></p>Isolate security functions from nonsecurity functions.' WHERE [Requirement_Id] = 37938
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>System Partitioning</b></p>Partition the system into [Assignment: organization-defined system components] residing in separate [Selection: physical; logical] domains or environments based on [Assignment: organization-defined circumstances for physical or logical separation of components].' WHERE [Requirement_Id] = 37939
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Process Isolation</b></p>Maintain a separate execution domain for each executing system process.' WHERE [Requirement_Id] = 37941
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Information in Shared System Resources</b></p>Prevent unauthorized and unintended information transfer via shared system resources.' WHERE [Requirement_Id] = 37942
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Port and I/O Device Access</b></p>[Selection: Physically; Logically] disable or remove [Assignment: organization-defined connection ports or input/output devices] on the following systems or system components: [Assignment: organization-defined systems or system components].' WHERE [Requirement_Id] = 37943
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>System Time Synchronization</b></p>Synchronize system clocks within and between systems and system components.' WHERE [Requirement_Id] = 37944
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Alternate Communication Paths</b></p>Establish [Assignment: organization-defined alternate communications paths] for system operations organizational command and control.' WHERE [Requirement_Id] = 37946
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Denial-of-service Protection</b></p>a. [Selection: Protect against; Limit] the effects of the following types of denial-of-service events: [Assignment: organization-defined types of denial-of-service events]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Hardware-Based Protection</b></p>a. Employ hardware-based, write-protect for [Assignment: organization-defined system firmware components]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Boundary Protection</b></p>a. Monitor and control communications at the external managed interfaces to the system and at key internal managed interfaces within the system;

1.a. Implement network segmentation policies and controls to ensure that the Operational Technology system can continue to safely operate in the event that an Information Technology system has been compromised; (p.2)

III. Cybersecurity Measures

C.5. Regularly updated schedule for review of existing domain trust relationships to 
ensure their necessity and establish policies to manage these relationships. (p.7)

D.1.b. Block ingress and egress communications with known or suspected malicious Internet Protocol addresses; (p.8)

D.1.c. Control impact of known or suspected malicious web domains or web applications, such as by preventing users and devices from accessing malicious websites; (p.8)

D.1.e. Monitor and/or block connections from known or suspected malicious command and control servers (such as Tor exit nodes, and other anonymization services). (p.8)

D.2. Procedures to� 
D.2.a. Audit unauthorized access to internet domains and addresses; (p.8)

D.2.b. Document and audit any communications between the Operational Technology system and an external system that deviates from the Owner/Operator�s identified baseline of communications; (p.8)

D.4. Mitigation measures or manual controls to ensure industrial control systems can be isolated when a cybersecurity incident in the Information Technology system creates risk to the safety and reliability of the Operational Technology system. (p.8)

IV. Records

C.  Documentation to Establish Compliance
C.2.a. Hardware/software asset inventory, including supervisory control, and data acquisition systems. (p.11)</p>' WHERE [Requirement_Id] = 37949
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Restrict Incoming Communications Traffic</b></p>Only allow incoming communications from [Assignment: organization-defined authorized sources] to be routed to [Assignment: organization-defined authorized destinations].', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>Only allow incoming communications from [Assignment: organization-defined authorized <br>sources] to be routed to [Assignment: organization-defined authorized destinations].</p><p>Related Controls: AC-3</p><p><strong>NIST SP800-53 R5</strong></p><p>General source address validation techniques are applied to restrict the use of illegal and unallocated source addresses as well as source addresses that should only be used within the system. The restriction of incoming communications traffic provides determinations that source and destination address pairs represent authorized or allowed communications. Determinations can be based on several factors, including the presence of such address pairs in the lists of authorized or allowed communications, the absence of such address pairs in lists of unauthorized or disallowed pairs, or meeting more general rules for authorized or allowed source and destination pairs. Strong authentication of network addresses is not possible without the use of explicit security protocols, and thus, addresses can often be spoofed. Further, identity-based incoming traffic restriction methods can be employed, including router access control lists and firewall rules.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Boundary Protection | Restrict Incoming Communications Traffic</strong>

D.1.b. Block ingress and egress communications with known or suspected malicious Internet Protocol addresses; (p.8)

D.1.c. Control impact of known or suspected malicious web domains or web applications, such as by preventing users and devices from accessing malicious websites; (p.8)

D.1.e. Monitor and/or block connections from known or suspected malicious command and control servers (such as Tor exit nodes, and other anonymization services). (p.8)

D.2. Procedures to� 
D.2.a. Audit unauthorized access to internet domains and addresses; (p.8)

D.2.b. Document and audit any communications between the Operational Technology system and an external system that deviates from the Owner/Operator�s identified baseline of communications; (p.8)

D.4. Mitigation measures or manual controls to ensure industrial control systems can be isolated when a cybersecurity incident in the Information Technology system creates risk to the safety and reliability of the Operational Technology system. (p.8)</p>' WHERE [Requirement_Id] = 37950
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Dynamic Isolation and Segregation</b></p>Provide the capability to dynamically isolate [Assignment: organization-defined system components] from other system components.', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>Provide the capability to dynamically isolate [Assignment: organization-defined system <br>components] from other system components.</p><p><strong>NIST SP800-53 R5</strong></p><p>The capability to dynamically isolate certain internal system components is useful when it is necessary to partition or separate system components of questionable origin from components that possess greater trustworthiness. Component isolation reduces the attack surface of organizational systems. Isolating selected system components can also limit the damage from successful attacks when such attacks occur.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Boundary Protection | Dynamic Isolation and Segregation</strong>

D.1.b. Block ingress and egress communications with known or suspected malicious Internet Protocol addresses; (p.8)

D.1.c. Control impact of known or suspected malicious web domains or web applications, such as by preventing users and devices from accessing malicious websites; (p.8)

D.1.e. Monitor and/or block connections from known or suspected malicious command and control servers (such as Tor exit nodes, and other anonymization services). (p.8)

D.2. Procedures to� 
D.2.a. Audit unauthorized access to internet domains and addresses; (p.8)

D.2.b. Document and audit any communications between the Operational Technology system and an external system that deviates from the Owner/Operator�s identified baseline of communications; (p.8)

D.4. Mitigation measures or manual controls to ensure industrial control systems can be isolated when a cybersecurity incident in the Information Technology system creates risk to the safety and reliability of the Operational Technology system. (p.8)

</p>' WHERE [Requirement_Id] = 37952
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Isolation of System Components</b></p>Employ boundary protection mechanisms to isolate [Assignment: organization-defined system components] supporting [Assignment: organization-defined missions and/or business functions].', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>Employ additional boundary protection mechanisms to isolate system components supporting critical or essential missions and/or business functions (e.g., financial systems, health systems, payment card systems, industrial control systems, etc.).</p><p>Related Controls: CA-9</p><p><strong>NIST SP800-53 R5</strong></p><p>Organizations can isolate system components that perform different mission or business functions. Such isolation limits unauthorized information flows among system components and provides the opportunity to deploy greater levels of protection for selected system components. Isolating system components with boundary protection mechanisms provides the capability for increased protection of individual system components and to more effectively control information flows between those components. Isolating system components provides enhanced protection that limits the potential harm from hostile cyber-attacks and errors. The degree of isolation varies depending upon the mechanisms chosen. Boundary protection mechanisms include routers, gateways, and firewalls that separate system components into physically separate networks or subnetworks; cross-domain devices&#160;that separate subnetworks; virtualization techniques; and the encryption of information flows among system components using distinct encryption keys.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> I. Purpose and General Information Boundary Protection | Isolation of System Components</strong>

1.a. Implement network segmentation policies and controls to ensure that the Operational Technology system can continue to safely operate in the event that an Information Technology system has been compromised; (p.2)


III. Cybersecurity Measures

C.5. Regularly updated schedule for review of existing domain trust relationships to 
ensure their necessity and establish policies to manage these relationships. (p.7)

D.1.b. Block ingress and egress communications with known or suspected malicious Internet Protocol addresses; (p.8)

D.1.c. Control impact of known or suspected malicious web domains or web applications, such as by preventing users and devices from accessing malicious websites; (p.8)

D.1.e. Monitor and/or block connections from known or suspected malicious command and control servers (such as Tor exit nodes, and other anonymization services). (p.8)

D.2. Procedures to� 
D.2.a. Audit unauthorized access to internet domains and addresses; (p.8)

D.2.b. Document and audit any communications between the Operational Technology system and an external system that deviates from the Owner/Operator�s identified baseline of communications; (p.8)

D.4. Mitigation measures or manual controls to ensure industrial control systems can be isolated when a cybersecurity incident in the Information Technology system creates risk to the safety and reliability of the Operational Technology system. (p.8)</p>' WHERE [Requirement_Id] = 37953
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Personally Identifiable Information</b></p>For systems that process personally identifiable information:

D.1.b. Block ingress and egress communications with known or suspected malicious Internet Protocol addresses; (p.8)

D.1.c. Control impact of known or suspected malicious web domains or web applications, such as by preventing users and devices from accessing malicious websites; (p.8)

D.1.e. Monitor and/or block connections from known or suspected malicious command and control servers (such as Tor exit nodes, and other anonymization services). (p.8)</p>' WHERE [Requirement_Id] = 37954
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Access Points</b></p>Limit the number of external network connections to the system.', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>Limit the number of external network connections to the system. External network connections must be documented via a System Architecture/Topology/Data Flow and PPS/M. An ISA may be required at the discretion of the AO.</p><p></p><p><strong>NIST SP800-53 R5</strong></p><p>Limiting the number of external network connections facilitates monitoring of inbound and outbound communications traffic. The Trusted Internet Connection [DHS TIC] initiative is an example of a federal guideline that requires limits on the number of external network connections. Limiting the number of external network connections to the system is important during transition periods from older to newer technologies (e.g., transitioning from IPv4 to IPv6 network protocols). Such transitions may require implementing the older and newer technologies simultaneously during the transition period and thus increase the number of access points to the system.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> I. Purpose and General Information Boundary Protection | Access Points</strong>

1.a. Implement network segmentation policies and controls to ensure that the Operational Technology system can continue to safely operate in the event that an Information Technology system has been compromised; (p.2)

III. Cybersecurity Measures

C.5. Regularly updated schedule for review of existing domain trust relationships to 
ensure their necessity and establish policies to manage these relationships. (p.7)

D.1.b. Block ingress and egress communications with known or suspected malicious Internet Protocol addresses; (p.8)

D.1.c. Control impact of known or suspected malicious web domains or web applications, such as by preventing users and devices from accessing malicious websites; (p.8)

D.1.e. Monitor and/or block connections from known or suspected malicious command and control servers (such as Tor exit nodes, and other anonymization services). (p.8)

D.2. Procedures to� 
D.2.a. Audit unauthorized access to internet domains and addresses; (p.8)

D.2.b. Document and audit any communications between the Operational Technology system and an external system that deviates from the Owner/Operator�s identified baseline of communications; (p.8)

D.4. Mitigation measures or manual controls to ensure industrial control systems can be isolated when a cybersecurity incident in the Information Technology system creates risk to the safety and reliability of the Operational Technology system. (p.8)</p>' WHERE [Requirement_Id] = 37957
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> External Telecommunications Services</b></p>(a) Implement a managed interface for each external telecommunication service;

1, a. Implement network segmentation policies and controls to ensure that the Operational Technology system can continue to safely operate in the event that an Information Technology system has been compromised; (p.2)

III. Cybersecurity Measures

C.5. Regularly updated schedule for review of existing domain trust relationships to 
ensure their necessity and establish policies to manage these relationships. (p.7)

D.2. Procedures to� 
D.2.a. Audit unauthorized access to internet domains and addresses; (p.8)

D.2.b. Document and audit any communications between the Operational Technology system and an external system that deviates from the Owner/Operator�s identified baseline of communications; (p.8)

D.4. Mitigation measures or manual controls to ensure industrial control systems can be isolated when a cybersecurity incident in the Information Technology system creates risk to the safety and reliability of the Operational Technology system. (p.8)

</p>' WHERE [Requirement_Id] = 37958
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Deny by Default — Allow by Exception</b></p>Deny network communications traffic by default and allow network communications traffic by exception [Selection (one or more): at managed interfaces; for [Assignment: organization-defined systems]].', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>Deny network communications traffic by default. Any explicit rules to allow network communications traffic by default or exception shall be authorized by the AO.</p><p><strong>NIST SP800-53 R5</strong></p><p>Denying by default and allowing by exception applies to inbound and outbound network communications traffic. A deny-all, permit-by-exception network communications traffic policy ensures that only those system connections that are essential and approved are&#160;allowed. Deny by default, allow by exception also applies to a system that is connected to an external system.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> I. Purpose and General Information Boundary Protection | Deny by Default � Allow by Exception</strong>

1.a. Implement network segmentation policies and controls to ensure that the Operational Technology system can continue to safely operate in the event that an Information Technology system has been compromised; (p.2)

III. Cybersecurity Measures

C.5. Regularly updated schedule for review of existing domain trust relationships to 
ensure their necessity and establish policies to manage these relationships. (p.7)

D.1.b. Block ingress and egress communications with known or suspected malicious Internet Protocol addresses; (p.8)

D.1.c. Control impact of known or suspected malicious web domains or web applications, such as by preventing users and devices from accessing malicious websites; (p.8)

D.1.e. Monitor and/or block connections from known or suspected malicious command and control servers (such as Tor exit nodes, and other anonymization services). (p.8)

D.2. Procedures to� 
D.2.a. Audit unauthorized access to internet domains and addresses; (p.8)

D.2.b. Document and audit any communications between the Operational Technology system and an external system that deviates from the Owner/Operator�s identified baseline of communications; (p.8)

D.4. Mitigation measures or manual controls to ensure industrial control systems can be isolated when a cybersecurity incident in the Information Technology system creates risk to the safety and reliability of the Operational Technology system. (p.8)

</p>' WHERE [Requirement_Id] = 37959
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Split Tunneling for Remote Devices</b></p>Prevent split tunneling for remote devices connecting to organizational systems unless the split tunnel is securely provisioned using [Assignment: organization-defined safeguards].' WHERE [Requirement_Id] = 37960
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Route Traffic to Authenticated Proxy Servers</b></p>Route [Assignment: organization-defined internal communications traffic] to [Assignment: organization-defined external networks] through authenticated proxy servers at managed interfaces.' WHERE [Requirement_Id] = 37961
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Transmission Confidentiality and Integrity</b></p>Protect the [Selection (one or more): confidentiality; integrity] of transmitted information.', [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>a. Protect the confidentiality and integrity of transmitted information.</p><p>Related Controls:  AC-17, AC-18, AU-10, IA-3, IA-8, MA-4, PE-4, SA-4, SA-8, SC-7, SC-20, SC-23, SC-28</p><p>b. Security Controls Enhancement(s):</p><p><strong>NIST SP800-53 R5</strong></p><p>Protecting the confidentiality and integrity of transmitted information applies to internal and external networks as well as any system components that can transmit information, including servers, notebook computers, desktop computers, mobile devices, printers, copiers, scanners, facsimile machines, and radios. Unprotected communication paths are exposed to the possibility of interception and modification. Protecting the confidentiality and integrity of information can be accomplished by physical or logical means. Physical protection can be achieved by using protected distribution systems. A protected distribution system is a wireline or fiber-optics telecommunications system that includes terminals and adequate electromagnetic,&#160;acoustical, electrical, and physical controls to permit its use for the unencrypted transmission of classified information. Logical protection can be achieved by employing encryption techniques.<div><br></div><div>Organizations that rely on commercial providers who offer transmission services as commodity services rather than as fully dedicated services may find it difficult to obtain the necessary assurances regarding the implementation of needed controls for transmission confidentiality and integrity. In such situations, organizations determine what types of confidentiality or integrity services are available in standard, commercial telecommunications service packages. If it is not feasible to obtain the necessary controls and assurances of control effectiveness through appropriate contracting vehicles, organizations can implement appropriate compensating controls.<br></div></p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Transmission Confidentiality and Integrity</strong>

B.2.b.  To prohibit Operational Technology system services from traversing the Information Technology system, and vice-versa, unless the content is encrypted or, if not technologically feasible, otherwise secured and protected to ensure integrity and prevent corruption or compromise while the content is in transit. (p.6)</p>' WHERE [Requirement_Id] = 37962
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>Implement cryptographic mechanisms to prevent unauthorized disclosure of information and detect changes to information during transmission.</p><p><strong><u>OT Systems Only: </strong></u>When transmitting across untrusted network segments, the organization explores all possible cryptographic integrity mechanisms (e.g., digital signature, hash function) to protect confidentiality and integrity of the information. Example compensating controls include physical protections, such as a secure conduit (e.g., point-to-point link) between two system components. </p><p>Related Controls: SC-12, SC-13</p><p><strong><u>NIST 800-82 Rev 3:</strong></u><br>OT Discussion: When transmitting across untrusted network segments, the organization explores all possible cryptographic integrity mechanisms (e.g., digital signature, hash function) to protect the confidentiality and integrity of the information. Example compensating controls include physical protections, such as a secure conduit (e.g., point-to-point link) between two system components. <br></p><p><strong>NIST SP800-53 R5</strong></p><p>Encryption protects information from unauthorized disclosure and modification during transmission. Cryptographic mechanisms that protect the confidentiality and integrity of information during transmission include TLS and IPSec. Cryptographic mechanisms used to protect information integrity include cryptographic hash functions that have applications in digital signatures, checksums, and message authentication codes.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Transmission Confidentiality and Integrity | Cryptographic Protection</strong>

B.2.b.  To prohibit Operational Technology system services from traversing the Information Technology system, and vice-versa, unless the content is encrypted or, if not technologically feasible, otherwise secured and protected to ensure integrity and prevent corruption or compromise while the content is in transit. (p.6)</p>' WHERE [Requirement_Id] = 37963
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>System and Information Integrity Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Information Input Validation</b></p>Check the validity of the following information inputs: [Assignment: organization-defined information inputs to the system].' WHERE [Requirement_Id] = 37965
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Error Handling</b></p>a. Generate error messages that provide information necessary for corrective actions without revealing information that could be exploited; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Information Management and Retention</b></p>Manage and retain information within the system and information output from the system in accordance with applicable laws, executive orders, directives, regulations, policies, standards, guidelines and operational requirements.' WHERE [Requirement_Id] = 37967
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Limit Personally Identifiable Information Elements</b></p>Limit personally identifiable information being processed in the information life cycle to the following elements of personally identifiable information: [Assignment: organization-defined elements of personally identifiable information].' WHERE [Requirement_Id] = 37968
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Minimize Personally Identifiable Information in Testing, Training, and Research</b></p>Use the following techniques to minimize the use of personally identifiable information for research, testing, or training: [Assignment: organization-defined techniques].' WHERE [Requirement_Id] = 37969
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Information Disposal</b></p>Use the following techniques to dispose of, destroy, or erase information following the retention period: [Assignment: organization-defined techniques].' WHERE [Requirement_Id] = 37970
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Predictable Failure Protection</b></p>a. Determine mean time to failure (MTTF) for the following system components in specific environments of operation: [Assignment: organization-defined system components]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Memory Protection</b></p>Implement the following controls to protect the system memory from unauthorized code execution: [Assignment: organization-defined controls].' WHERE [Requirement_Id] = 37972
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Fail-Safe Procedures</b></p>Implement the indicated fail-safe procedures when the indicated failures occur: [Assignment: organization-defined list of failure conditions and associated fail-safe procedures].' WHERE [Requirement_Id] = 37973
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Personally Identifiable Information Quality Operations</b></p>a. Check the accuracy, relevance, timeliness, and completeness of personally identifiable information across the information life cycle [Assignment: organization-defined frequency]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Individual Requests</b></p>Correct or delete personally identifiable information upon request by individuals or their designated representatives.' WHERE [Requirement_Id] = 37975
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>De-Identification</b></p>a. Remove the following elements of personally identifiable information from datasets: [Assignment: organization-defined elements of personally identifiable information]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Flaw Remediation</b></p>a. Identify, report, and correct system flaws;

1.d. Reduce the risk of exploitation of unpatched systems through the application of 
security patches and updates for operating systems, applications, drivers and 
firmware on Critical Cyber Systems in a timely manner using a risk-based 
methodology. (p.3)

2.  Develop a Cybersecurity Assessment Plan and submit (a) an annual update, for approval, that describes how the Owner/Operator will proactively and regularly assess the effectiveness of cybersecurity measures, and identify and resolve device, network, and/or system vulnerabilities, and (b) an annual report that provides Cybersecurity Assessment Plan results from the previous year. See Section III.F. (p.3)

III. Cybersecurity Measures

E. Reduce the risk of exploitation of unpatched systems through the application of security patches and updates for operating systems, applications, drivers, and firmware on Critical Cyber Systems consistent with the Owner/Operator�s risk based methodology. These measures must include: (pp.8-9)

E.1. A patch management strategy that ensures all critical security patches and updates on 
Critical Cyber Systems are current.  (p.9)

E.2. The strategy required by Section III.E.1. must include: (p.9)

E.2.a. The risk methodology for categorizing and determining criticality of patches and updates, and an implementation timeline based on categorization and criticality; and (p.9)

E.2.b. Prioritization of all security patches and updates on the Cybersecurity and Infrastructure Security Agency''s Known Exploited Vulnerabilities Catalog. (p.9)

E.3. If the Owner/Operator cannot apply patches and updates on specific Operational Technology systems without causing a severe degradation of operational capability to meet necessary capacity, the patch management strategy must include a description and timeline of additional mitigations that address the risk created by not installing the patch or update. (p.9)</p>' WHERE [Requirement_Id] = 37977
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Flaw Remediation Status</b></p>Determine if system components have applicable security-relevant software and firmware updates installed using [Assignment: organization-defined automated mechanisms] [Assignment: organization-defined frequency].' WHERE [Requirement_Id] = 37978
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Information Diversity</b></p>a. Identify the following alternative sources of information for [Assignment: organization-defined essential functions and services]: [Assignment: organization-defined alternative information sources]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Malicious Code Protection</b></p>a. Implement [Selection (one or more): signature based; non-signature based] malicious code protection mechanisms at system entry and exit points to detect and eradicate malicious code;

D.1.d. Block and prevent unauthorized code, including macro scripts, from executing; 
and (p.8)


</p>' WHERE [Requirement_Id] = 37980
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>System Monitoring</b></p>a. Monitor the system to detect:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Visibility of Encrypted Communications</b></p>Make provisions so that [Assignment: organization-defined encrypted communications traffic] is visible to [Assignment: organization-defined system monitoring tools and mechanisms].' WHERE [Requirement_Id] = 37982
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Organization-generated Alerts</b></p>Alert [Assignment: organization-defined personnel or roles] using [Assignment: organization-defined automated mechanisms] when the following indications of inappropriate or unusual activities with security or privacy implications occur: [Assignment: organization-defined activities that trigger alerts].' WHERE [Requirement_Id] = 37983
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Wireless Intrusion Detection</b></p>Employ a wireless intrusion detection system to identify rogue wireless devices and to detect attack attempts and potential compromises or breaches to the system.' WHERE [Requirement_Id] = 37984
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Privileged Users</b></p>Implement the following additional monitoring of privileged users: [Assignment: organization-defined additional monitoring].' WHERE [Requirement_Id] = 37986
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Unauthorized Network Services</b></p>(a) Detect network services that have not been authorized or approved by [Assignment: organization-defined authorization or approval processes]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Inbound and Outbound Communications Traffic</b></p>(a) Determine criteria for unusual or unauthorized activities or conditions for inbound and outbound communications traffic;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Security Alerts, Advisories, and Directives</b></p>a. Receive system security alerts, advisories, and directives from [Assignment: organization-defined external organizations] on an ongoing basis;
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Automated Alerts and Advisories</b></p>Broadcast security alert and advisory information throughout the organization using [Assignment: organization-defined automated mechanisms].' WHERE [Requirement_Id] = 37991
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Security and Privacy Function Verification</b></p>a. Verify the correct operation of [Assignment: organization-defined security and privacy functions];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Software, Firmware, and Information Integrity</b></p>a. Employ integrity verification tools to detect unauthorized changes to the following software, firmware, and information: [Assignment: organization-defined software, firmware, and information]; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Spam Protection</b></p>a. Employ spam protection mechanisms at system entry and exit points to detect and act on unsolicited messages; and

D.1. Capabilities to� 
a. Defend against malicious email, such as spam and phishing emails, to preclude or 
mitigate against adverse impacts to operations; (p.7)</p>' WHERE [Requirement_Id] = 37999
UPDATE [dbo].[NEW_REQUIREMENT] SET [Supplemental_Info]=N'<p><strong>WMATA Policy</strong></p><p>Automatically and continuously update spam protection mechanisms to ensure that updates occur on a regular basis and provide the latest content and protection capabilities.</p><p><strong><u>NIST 800-82 Rev 3:<br></strong></u>Rationale for removing SI-8 (2) from MOD and HIGH baselines: Spam transport mechanisms are disabled or removed from the OT, so automatic updates are not necessary. </p><p><strong>NIST SP800-53 R5</strong></p><p>Using automated mechanisms to update spam protection mechanisms helps to ensure that updates occur on a regular basis and provide the latest content and protection capabilities.</p><p><strong><u>DHS TSA Security Directive 1580/82-2022-01A</u></strong></p><p><strong> III. Cybersecurity Measures Spam Protection | Automatic Updates</strong>

D.1. Capabilities to� 
a. Defend against malicious email, such as spam and phishing emails, to preclude or 
mitigate against adverse impacts to operations; (p.7)</p>' WHERE [Requirement_Id] = 38000
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Cybersecurity Supply Chain Risk Management Policy and Procedures</b></p>a. Develop, document, and disseminate to [Assignment: organization-defined personnel or roles]:
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Inspection of Systems or Components</b></p>Inspect the following systems or system components [Selection (one or more): at random; at [Assignment: organization-defined frequency], upon [Assignment: organization-defined indications of need for inspection]] to detect tampering: [Assignment: organization-defined systems or system components].' WHERE [Requirement_Id] = 38002
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Component Authenticity</b></p>a. Develop and implement anti-counterfeit policy and procedures that include the means to detect and prevent counterfeit components from entering the system; and
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Anti-counterfeit Training</b></p>Train [Assignment: organization-defined personnel or roles] to detect counterfeit system components (including hardware, software, and firmware).' WHERE [Requirement_Id] = 38004
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Configuration Control for Component Service and Repair</b></p>Maintain configuration control over the following system components awaiting service or repair and serviced or repaired components awaiting return to service: [Assignment: organization-defined system components].' WHERE [Requirement_Id] = 38005
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Component Disposal</b></p>Dispose of [Assignment: organization-defined data, documentation, tools, or system components] using the following techniques and methods: [Assignment: organization-defined techniques and methods].' WHERE [Requirement_Id] = 38006
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Supply Chain Risk Management Plan</b></p>a. Develop a plan for managing supply chain risks associated with the research and development, design, manufacturing, acquisition, delivery, integration, operations and maintenance, and disposal of the following systems, system components or system services: [Assignment: organization-defined systems, system components, or system services];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Establish SCRM Team</b></p>Establish a supply chain risk management team consisting of [Assignment: organization-defined personnel, roles, and responsibilities] to lead and support the following SCRM activities: [Assignment: organization-defined supply chain risk management activities].' WHERE [Requirement_Id] = 38008
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Supply Chain Controls and Processes</b></p>a. Establish a process or processes to identify and address weaknesses or deficiencies in the supply chain elements and processes of [Assignment: organization-defined system or system component] in coordination with [Assignment: organization-defined supply chain personnel];
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Limitation of Harm</b></p>Employ the following controls to limit harm from potential adversaries identifying and targeting the organizational supply chain: [Assignment: organization-defined controls].' WHERE [Requirement_Id] = 38011
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Sub-Tier Flow Down</b></p>Ensure that the controls included in the contracts of prime contractors are also included in the contracts of subcontractors.' WHERE [Requirement_Id] = 38012
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Provenance</b></p>Document, monitor, and maintain valid provenance of the following systems, system components, and associated data: [Assignment: organization-defined systems, system components, and associated data].' WHERE [Requirement_Id] = 38013
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Identity</b></p>Establish and maintain unique identification of the following supply chain elements, processes, and personnel associated with the identified system and critical system components: [Assignment: organization-defined supply chain elements, processes, and personnel associated with organization-defined systems and critical system components].' WHERE [Requirement_Id] = 38014
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Track and Trace</b></p>Establish and maintain unique identification of the following systems and critical system components for tracking through the supply chain: [Assignment: organization-defined systems and critical system components].' WHERE [Requirement_Id] = 38015
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Validate as Genuine and Not Altered</b></p>Employ the following controls to validate that the system or system component received is genuine and has not been altered: [Assignment: organization-defined controls].' WHERE [Requirement_Id] = 38016
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Supply Chain Integrity – Pedigree</b></p>Employ [Assignment: organization-defined controls] and conduct [Assignment: organization-defined analysis] to ensure the integrity of the system and system components by validating the internal composition and provenance of critical or mission-essential technologies, products, and services.' WHERE [Requirement_Id] = 38017
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Acquisition Strategies, Tools, and Methods</b></p>Employ the following acquisition strategies, contract tools, and procurement methods to protect against, identify, and mitigate supply chain risks: [Assignment: organization-defined acquisition strategies, contract tools, and procurement methods].' WHERE [Requirement_Id] = 38018
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Assessments Prior to Selection, Acceptance, Modification, or Update</b></p>Assess the system, system component, or system service prior to selection, acceptance, modification, or update.' WHERE [Requirement_Id] = 38020
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Supplier Assessments and Reviews</b></p>Assess and review the supply chain-related risks associated with suppliers or contractors and the system, system component, or system service they provide [Assignment: organization-defined frequency].' WHERE [Requirement_Id] = 38021
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Testing and Analysis</b></p>Employ [Selection (one or more): organizational analysis; independent third-party analysis; organizational testing; independent third-party testing] of the following supply chain elements, processes, and actors associated with the system, system component, or system service: [Assignment: organization-defined supply chain elements, processes, and actors].' WHERE [Requirement_Id] = 38022
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Supply Chain Operations Security</b></p>Employ the following Operations Security (OPSEC) controls to protect supply chain-related information for the system, system component, or system service: [Assignment: organization-defined Operations Security (OPSEC) controls].' WHERE [Requirement_Id] = 38023
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Notification Agreements</b></p>Establish agreements and procedures with entities involved in the supply chain for the system, system component, or system service for the [Selection (one or more): notification of supply chain compromises; results of assessments or audits; [Assignment: organization-defined information]].' WHERE [Requirement_Id] = 38024
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b>Tamper Resistance and Detection</b></p>Implement a tamper protection program for the system, system component, or system service.' WHERE [Requirement_Id] = 38025
UPDATE [dbo].[NEW_REQUIREMENT] SET [Requirement_Text]=N'<p><b> Multiple Stages of System Development Life Cycle</b></p>Employ anti-tamper technologies, tools, and techniques throughout the system development life cycle.' WHERE [Requirement_Id] = 38026
PRINT(N'Operation applied to 434 rows out of 434')

PRINT(N'Update rows in [dbo].[MATURITY_QUESTIONS]')
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Protect sensitive information from unauthorized access.', [Security_Practice]=N'Secure Sensitive Data' WHERE [Mat_Question_Id] = 9880
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Reduce the likelihood of adversaries accessing the OT network after compromising the IT network.', [Security_Practice]=N'Network Segmentation' WHERE [Mat_Question_Id] = 9881
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Reduce risk from common email-based threats, such as spoofing, phishing, and interception.', [Security_Practice]=N'Email Security' WHERE [Mat_Question_Id] = 9882
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Protect organizations from automated, credential-based attacks.', [Security_Practice]=N'Detection of Unsuccessful (Automated) Login Attempts' WHERE [Mat_Question_Id] = 9883
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Personnel responsible for securing OT assets received specialized OT-focused cybersecurity training.', [Security_Practice]=N'OT Cybersecurity Training' WHERE [Mat_Question_Id] = 9884
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Add a critical, additional layer of security to protect assets accounts whose credentials have been compromised.', [Security_Practice]=N'Phishing Resistant Multi-Factor Authentication (MFA)' WHERE [Mat_Question_Id] = 9885
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Organizational users learn and perform more secure behaviors.', [Security_Practice]=N'Basic Cybersecurity Training' WHERE [Mat_Question_Id] = 9886
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Increase visibility into deployed technology assets, and reduce the likelihood of breach by users installing unapproved hardware, firmware, or software.', [Security_Practice]=N'Hardware and Software Approval Process' WHERE [Mat_Question_Id] = 9887
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Reduce the risk from embedded macros and similar executive code, a common and highly-effective adversary TTP.', [Security_Practice]=N'Disable Macros by Default' WHERE [Mat_Question_Id] = 9888
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Better identify known, unknown (shadow), and unmanaged assets, and more rapidly detect and respond to new vulnerabilities.', [Security_Practice]=N'Asset Inventory' WHERE [Mat_Question_Id] = 9889
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Prevent malicious actors from achieving initial access or data exfiltration via unauthorized portable media devices.', [Security_Practice]=N'Prohibit Connection of Unauthorized Devices' WHERE [Mat_Question_Id] = 9890
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'More efficiently and effectively manage, respond to, and recover from cyberattacks against the organization and maintain service continuity.', [Security_Practice]=N'Document Device Configurations' WHERE [Mat_Question_Id] = 9891
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Achieve better visibility to detect and effectively respond to cyber-attacks.', [Security_Practice]=N'Log Collection' WHERE [Mat_Question_Id] = 9892
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Organizations'' security logs are protected from unauthorized access and tampering.', [Security_Practice]=N'Secure Log Storage' WHERE [Mat_Question_Id] = 9893
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Attackers are unable to reuse compromised credentials to move laterally across the organization, particularly between IT and OT networks.', [Security_Practice]=N'Unique Credentials' WHERE [Mat_Question_Id] = 9894
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Prevent unauthorized access to organizational accounts or resources by former employees.', [Security_Practice]=N'Revoking Credentials for Departing Employees' WHERE [Mat_Question_Id] = 9895
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'A single leader is responsible and accountable for cybersecurity within an organization.', [Security_Practice]=N'Organizational Cybersecurity Leadership' WHERE [Mat_Question_Id] = 9896
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'A single leader is responsible and accountable for OT-specific cybersecurity within an organization with OT assets.', [Security_Practice]=N'OT Cybersecurity Leadership' WHERE [Mat_Question_Id] = 9897
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Prevent adversaries from using default passwords to achieve initial access or move laterally in a network.', [Security_Practice]=N'Changing Default Passwords' WHERE [Mat_Question_Id] = 9898
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Organizational passwords are harder to guess or crack by adversaries.', [Security_Practice]=N'Minimum Password Strength' WHERE [Mat_Question_Id] = 9899
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Improve OT cybersecurity and more rapidly and effectively respond to OT cyber incidents.', [Security_Practice]=N'Improving IT and OT Cybersecurity Relationships' WHERE [Mat_Question_Id] = 9900
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Reduce the likelihood of adversaries exploiting known vulnerabilities to breach organizational networks.', [Security_Practice]=N'Mitigating Known Vulnerabilities' WHERE [Mat_Question_Id] = 9901
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'CISA and other organizations are better able to provide assistance or understand the broader scope of a cyber-attack.', [Security_Practice]=N'Incident Reporting' WHERE [Mat_Question_Id] = 9902
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Organizations more rapidly learn about vulnerabilities or weaknesses in their assets discovered by security researchers; researchers are more incentivized to responsibly share their findings.', [Security_Practice]=N'Vulnerability Disclosure/Reporting' WHERE [Mat_Question_Id] = 9903
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Unauthorized users cannot gain an initial system foothold by exploiting known weaknesses in public-facing assets.', [Security_Practice]=N'No Exploitable Services on the Internet' WHERE [Mat_Question_Id] = 9904
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Reduce the risk of adversaries exploiting or interrupting OT assets connected to the public internet.', [Security_Practice]=N'Limit OT Connections to Public Internet' WHERE [Mat_Question_Id] = 9905
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Identify TTPs that lack proper defenses, and establish confidence in organizational cyber defenses.', [Security_Practice]=N'Third-Party Validation of Cybersecurity Control Effectiveness' WHERE [Mat_Question_Id] = 9906
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Reduce risk by buying more secure products and services from more secure suppliers.', [Security_Practice]=N'Vendor/Supplier Cybersecurity Requirements' WHERE [Mat_Question_Id] = 9907
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Organizations more rapidly learn about and respond to known incidents or breaches across vendors and service providers.', [Security_Practice]=N'Supply Chain Incident Reporting' WHERE [Mat_Question_Id] = 9908
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Organizations more rapidly learn about and respond to vulnerabilities in assets provided by vendors and service providers.', [Security_Practice]=N'Supply Chain Vulnerability Disclosure' WHERE [Mat_Question_Id] = 9909
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Allow security researchers to submit discovered weaknesses or vulnerabilities faster.', [Security_Practice]=N'Deploy Security.txt Files' WHERE [Mat_Question_Id] = 9910
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Organizations maintain, practice, and update cybersecurity incident response plans for relevant threat scenarios.', [Security_Practice]=N'Incident Response (IR) Plans' WHERE [Mat_Question_Id] = 9911
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Organizations reduce the likelihood and duration of data loss at loss of service delivery or operations.', [Security_Practice]=N'System Back Ups' WHERE [Mat_Question_Id] = 9912
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'More efficiently and effectively respond to cyber-attacks and maintain service continuity.', [Security_Practice]=N'Document Network Topology' WHERE [Mat_Question_Id] = 9913
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Effective encryption deployed to maintain confidentiality of sensitive data and integrity of IT and OT traffic.', [Security_Practice]=N'Strong and Agile Encryption' WHERE [Mat_Question_Id] = 9914
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Organizations are aware of and able to detect relevant threats and TTPs.', [Security_Practice]=N'Detecting Relevant Threats and TTPs' WHERE [Mat_Question_Id] = 9915
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Make it harder for adversaries to gain access to administrator or privileged accounts, even if common user accounts are compromised.', [Security_Practice]=N'Separating User and Privileged Accounts' WHERE [Mat_Question_Id] = 9916
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Question_Text]=N'', [Outcome]=N'Organizations are capable of safely and effectively recovering from a cybersecurity incident.', [Security_Practice]=N'Incident Planning and Preparedness' WHERE [Mat_Question_Id] = 9917
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Implement a structured process that mandates supervisors of personnel with elevated privileges to perform a quarterly review. During these reviews, supervisors would hold one-on-one meetings with each user to verbally confirm their ownership of elevated privilege accounts and assess the continued necessity for such access based on current job roles and responsibilities. Documentation of these reviews should be meticulous, capturing the date, time, and key details of the discussion, including any changes in access requirements or security concerns raised. This documentation should be stored in a secure, auditable system to ensure compliance and facilitate future audits. Additionally, any discrepancies or changes in access needs identified during these reviews should prompt an immediate update of the access permissions to mitigate potential security risks. This approach ensures not only the verification of account ownership but also the ongoing justification of elevated access, which is crucial for maintaining stringent security protocols in Information and Operational Technology systems.' WHERE [Mat_Question_Id] = 9979
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Establish a detailed, automated schedule using a project management or compliance tracking tool that prompts key stakeholders to confirm the continued need every 90 days. Each scheduled task would include a reminder system to ensure timely completion. Additionally, I would create standardized documentation templates to record each confirmation, including the date, personnel involved, and any pertinent details. This documentation should be securely stored and easily retrievable to ensure audit readiness. By utilizing automated tools and standardized processes, we can ensure consistent compliance and maintain a clear, documented history of all verifications.' WHERE [Mat_Question_Id] = 9980
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'To ensure compliance with the current version of NIST Special Publication 800-63B, Digital Identity Guidelines, Multifactor Authentication (MFA) should be implemented for all non-service accounts accessing Information and Operational Technology (OT) systems. This setup should utilize multifactor cryptographic device authenticators that meet or exceed the guidelines outlined in NIST 800-63B for Authentication and Lifecycle Management. The implementation should support diverse authentication factors, including something the user knows (e.g., a PIN), something the user has (e.g., a hardware cryptographic token), and something the user is (e.g., biometric data). All cryptographic devices must be securely provisioned, managed, and revoked in accordance with lifecycle management practices. Detailed logging and monitoring should be enabled to track access attempts and any anomalies, and periodic audits must be conducted to ensure ongoing compliance. Additionally, user education and support infrastructure should be established to assist with the adoption of MFA practices and address potential usability issues.' WHERE [Mat_Question_Id] = 9982
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Network segmentation should be rigorously designed and enforced. This involves creating distinct security zones for the OT and IT environments with robust firewall protections and access controls to limit communication between the two systems. Implementing a Demilitarized Zone (DMZ) can act as a buffer where necessary data exchanges occur under strict scrutiny, using intrusion detection systems to identify and mitigate potential threats. Network traffic should be micro-segmented within the OT environment to isolate critical assets and reduce lateral movement opportunities for an attacker.' WHERE [Mat_Question_Id] = 9983
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Map out the entire IT and OT infrastructure, detailing every network component, connection point, and data flow. Utilizing network discovery tools alongside rigorous manual validation will reveal how interconnected systems communicate and depend on each other. Special attention should be given to critical nodes and pathways where IT and OT systems intersect, as these are potential points of vulnerability.' WHERE [Mat_Question_Id] = 9984
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Physical segmentation can be achieved by utilizing separate network hardware, such as distinct routers, switches, and firewalls, for the IT and OT networks, ensuring there is no direct physical connection between the two. Logical segmentation should be enforced through network segmentation techniques like VLANs (Virtual Local Area Networks), robust firewall rules, and access control lists that rigorously control and monitor the data flow between IT and OT environments. Additionally, the implementation of rigorous network zoning practices can create multiple layers of security, isolating critical OT systems in highly controlled zones that have limited and strictly monitored interactions with the IT systems.' WHERE [Mat_Question_Id] = 9985
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Establish a clearly delineated DMZ, which acts as an intermediate security zone positioned between the IT and OT networks. Deploy robust firewalls at both the boundary of the IT and OT networks and the DMZ, configuring them with stringent rules to only allow necessary traffic while blocking any unauthorized or potentially harmful data exchanges. Utilize network segmentation and VLANs for physical and logical separation, preventing any direct routing between IT and OT systems.' WHERE [Mat_Question_Id] = 9986
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Conduct a comprehensive risk assessment to understand the critical functions of each asset and their interdependencies. Unrelated sub-processes should be isolated in separate zones, minimizing risk propagation and simplifying incident containment. Adopt network segmentation strategies based on a zero-trust model, using firewalls, VLANs, and access control lists to manage and monitor traffic between these zones rigorously. Documenting and regularly reviewing the zoning strategy is essential to accommodate any changes in the operational environment or threat landscape, ensuring an adaptable and robust segregation of OT system assets.' WHERE [Mat_Question_Id] = 9987
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Establish defined communication conduits and robust security controls. This involves segmenting the network into distinct logical zones based on trust levels and applications, and implementing firewalls, intrusion detection/prevention systems (IDS/IPS), and other boundary protection mechanisms at the interfaces between these zones. Active monitoring of network traffic should be conducted using security information and event management (SIEM) systems to detect and respond to anomalies in real-time.' WHERE [Mat_Question_Id] = 9988
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Configure firewalls and routers to strictly block unencrpyted OT protocols from crossing into the IT domain. Any necessary communication between OT and IT systems would be mandated to traverse only through a highly secure, encrypted point-to-point tunnel, such as a Virtual Private Network (VPN) or Secure Socket Layer (SSL) connection. This approach includes strictly employing advanced encryption standards (AES-256, for instance), end-to-end encryption, and frequent audits to verify the integrity of the encrypted tunnels.' WHERE [Mat_Question_Id] = 9989
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'These controls should include clearly defined procedures for isolating ICS networks from IT networks, with distinct physical disconnection mechanisms such as air gaps or hardware switches that can be engaged in response to identified threats. Staff should be thoroughly trained in these procedures, ensuring that isolation can be executed swiftly and efficiently. Moreover, continuous monitoring and auditing of the ICS and IT interface should be conducted to identify potential risks proactively, allowing for preemptive activation of manual isolation controls when necessary. Finally, testing and drills should be scheduled regularly to ensure preparedness and to validate that the isolation process maintains the safe and reliable operation of OT systems under all foreseeable circumstances.' WHERE [Mat_Question_Id] = 9990
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Ensure that the log retention policies are eviewed and updated to align with NIST SP 800-92 standards. This process involves a comprehensive evaluation of current policies to confirm they encapsulate key principles such as log retention duration, secure storage, and systematic disposal methods. The policies should dictate the retention of logs for a period sufficient to support incident investigation, compliance, and audit functions—typically ranging from 90 days to multiple years, depending on the sensitivity of the monitored data and organizational requirements. Verify that the procedures include regular reviews and verifications to ensure these strategies are effectively enforced and updated in response to evolving cybersecurity threats and regulatory changes. If necessary, develop policy documents supporting the systematic collection, retention, and analysis of log data, detailing specific roles and responsibilities.' WHERE [Mat_Question_Id] = 9991
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Implement a comprehensive and centralized logging system that captures, stores, and manages logs from all relevant sources, such as firewalls, intrusion detection/prevention systems, servers, applications, and endpoints. The system should support real-time log collection, ensuring that logs are time-synchronized and formatted consistently to facilitate analysis. Logs must be retained according to regulatory and business requirements, securely stored to prevent tampering or unauthorized access, and backed up regularly to ensure availability in the event of data loss.' WHERE [Mat_Question_Id] = 9992
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Implement a robust and comprehensive solution that ensures the integrity, confidentiality, and availability of log data. This encompasses deploying centralized log collection systems that aggregate logs from various sources such as servers, network devices, and applications. The infrastructure should include strong access controls to restrict log access to authorized personnel only, secure transmission protocols like TLS to protect log data in transit, and encryption mechanisms to safeguard logs at rest. Additionally, the solution should support log tamper-detection techniques and maintain an immutable audit trail to ensure that logs cannot be altered or deleted without detection. Regular log review and automated alerting mechanisms should be in place to promptly identify and respond to any suspicious activities.' WHERE [Mat_Question_Id] = 9993
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Implement a policy mandating that all log data be securely stored and maintained for a minimum period of one year. This duration allows for a comprehensive audit trail that can support incident investigation, regulatory compliance, and historical analysis of security events. The logs should include detailed records of access, user activities, system changes, and any security-related events. Periodic reviews and audits of the log data retention policy should be conducted to adapt to evolving regulatory requirements and organizational needs.' WHERE [Mat_Question_Id] = 9994
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Implement a robust multi-layered email security solution. This includes advanced spam filter and threat intelligence integration to detect and block harmful emails before they enter the inbox. Additionally, the system should utilize real-time analysis and heuristics to identify malicious content and sender patterns.' WHERE [Mat_Question_Id] = 9996
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Implement a dynamic, regularly updated threat intelligence feed that captures the latest known malicious IP addresses. Network firewalls, Intrusion Detection Systems (IDS), and Intrusion Prevention Systems (IPS) should be configured to automatically block any traffic to and from these IP addresses.' WHERE [Mat_Question_Id] = 9997
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Implement a robust URL filtering solution that incorporates both block lists (blacklists) and allow lists (whitelists). This involves deploying a secure web gateway or a next-generation firewall that can continuously update its URL databases with known malicious sites, ensuring real-time threat intelligence is integrated into the network security posture. Additionally, it''s important to customize the block lists based on ongoing assessments of threat vectors specific to the organization while maintaining a comprehensive allow list to ensure legitimate sites critical for business operations remain accessible.' WHERE [Mat_Question_Id] = 9998
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Implement a robust network security strategy that includes an allowlist-based firewall or proxy server. Begin by thoroughly identifying and documenting the specific external internet destinations necessary for OT system operations, ensuring these destinations are critical, vetted, and approved. Configure the firewall or proxy server to permit access only to these pre-approved IP addresses, domain names, or URLs, effectively blocking all other traffic by default. Regularly review and update the allowlist to adapt to changing operational needs while maintaining the security posture. Additionally, integrate monitoring and logging mechanisms to track access attempts, enabling detection and response to unauthorized connection attempts and potential security incidents.' WHERE [Mat_Question_Id] = 9999
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Implement a comprehensive monitoring and alerting mechanism to continuously track all inbound and outbound traffic. This would involve establishing a well-documented baseline of normal communication patterns and protocols using tools like network traffic analyzers and Intrusion Detection Systems (IDS). Any deviation from this baseline would automatically trigger an alert, prompting a detailed analysis. Investigate these anomalies by examining packet logs, user authentication records, and device connection histories to determine their legitimacy. If a deviation is detected, verify necessity with operational requirements through asset owners and relevant stakeholders to ensure it is essential for operations.' WHERE [Mat_Question_Id] = 10000
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'These programs should be set to use the latest virus definitions and signatures to maximize their effectiveness. In addition to scheduled weekly scans, systems must be configured for on-access scanning to continuously check files as they are accessed or modified, and on-demand scanning to permit immediate scans when necessary. Regular updates to the antivirus and anti-malware software should be scheduled to maintain the currency of threat definitions.' WHERE [Mat_Question_Id] = 10001
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'This system must be capable of collecting, storing, and analyzing DNS query and response data without interfering with the active resolution process. Key actions include setting up sensors to capture DNS traffic, ensuring that data is comprehensive and anonymized to protect user privacy, and integrating with industry-standard data formats such as Passive DNS Common Output Format (RFC 5905). Furthermore, the system should support the correlation of DNS data with other security tools to enhance threat detection and response capabilities. Regular audits and updates should be performed to ensure compliance with the latest standards and best practices, ensuring that the passive DNS capabilities remain effective and secure.' WHERE [Mat_Question_Id] = 10002
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Deploy a DNS logging and monitoring solution integrated with detailed analytics capabilities. The solution should be capable of real-time logging of all DNS requests and responses, including the specific IP addresses of the hosts initiating the queries. It should leverage a centralized logging repository, such as a Security Information and Event Management (SIEM) system, to collect, correlate, and analyze this data efficiently. The analytics software should include user-friendly dashboards and customizable alerts to swiftly highlight anomalies or potential security threats. Furthermore, maintaining a detailed audit trail of all DNS activities is crucial, enabling Owner/Operators to trace the origin of queries and respond promptly to any suspicious activities. Ensuring the scalability and reliability of this solution is equally important to handle high traffic and provide uninterrupted monitoring.' WHERE [Mat_Question_Id] = 10003
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'To ensure the list remains current and accurate, periodic reviews and audits would be conducted, incorporating feedback from user activity patterns and any newly emerging web trends relevant to the organization. This proactive strategy not only enhances the scope of cybersecurity by accounting for prevalent but less common domains but also ensures that the organization''s network remains robust against potential threats.' WHERE [Mat_Question_Id] = 10004
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Implement a threat intelligence solution capable of assessing and flagging domains with dubious reputations. Policies should outline specific criteria and thresholds for what constitutes "rarely queried" domains, leveraging historical data and access patterns unique to the organization. Procedures should include steps for cross-referencing flagged domains against trusted threat intelligence databases, thorough documentation of findings, and a clearly defined escalation path for domains deemed high-risk. Periodic reviews and updates to these policies and procedures should ensure they remain effective against emerging threats.' WHERE [Mat_Question_Id] = 10005
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'To meet the requirement for installing patches and updates listed on CISA''s Known Exploited Vulnerabilities Catalog with a NIST Base Score of "Critical" within 15 days of availability, an organization should establish a robust and streamlined patch management process. This begins with continuous monitoring of the Known Exploited Vulnerabilities Catalog to promptly identify any new critical vulnerabilities. Once identified, a dedicated team should prioritize these vulnerabilities and initiate the patching process immediately. Comprehensive testing in a controlled environment should be conducted to ensure the stability and compatibility of the patch/update with existing systems. Following successful testing, the patch/update should be deployed across all relevant systems within the 15-day timeframe. Additionally, clear documentation and communication protocols should be maintained to record the patching process and inform stakeholders of the updates and any required actions. Regular audits of this process ensure compliance and enable the organization to address any inefficiencies promptly, thus maintaining a secure and resilient infrastructure against critical vulnerabilities.' WHERE [Mat_Question_Id] = 10008
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Maintain a comprehensive cumulative list that integrates both operational and other risk-based considerations to provide a justified rationale for not meeting the stringent 15-day deadline. The list should detail any rationale that would render a patch not applicable to the given system. The list should detail specific operational constraints such as resource limitations, staffing issues, and technological bottlenecks that hinder timely compliance. Additionally, it should incorporate risk assessments that evaluate the potential impact and likelihood of threats if the deadline is extended, supported by historical data and trend analysis.' WHERE [Mat_Question_Id] = 10010
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'The organization should include risk assessments to determine whether the patch is applicable to the given system.' WHERE [Mat_Question_Id] = 10011
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'The organization should include risk assessments to determine whether the patch is applicable to the given system.' WHERE [Mat_Question_Id] = 10012
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Implement a structured and methodical approach to software updates and patches for Operational Technology (OT) systems. This process starts with identifying and cataloging all available updates and patches upon release. Within 35 days, these updates and patches must be tested rigorously in a controlled environment that mirrors the production setup, ensuring no adverse effects on system functionality or security. Post successful testing, implementation of these patches should occur within the next 35 days, prioritizing critical systems and those with significant security implications. For patches that are deemed non-implementable, a comprehensive and periodically reviewed cumulative list should be maintained. This list should document each patch, the justification for non-application based on operational impact assessments and risk analyses, and any alternative mitigations applied. Continuous monitoring and reassessment ensure that deferred patches are not overlooked and that the OT systems remain resilient to emerging threats and vulnerabilities.' WHERE [Mat_Question_Id] = 10013
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Consider implementing guidance from NIST SP 800-207 or SP 800-207(A)' WHERE [Mat_Question_Id] = 10014
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'This involves creating and maintaining a dynamic list of approved applications by thoroughly cataloging all legitimate software necessary for operations. Implement stringent software restriction policies through tools such as Group Policy Objects (GPO) for Windows environments or equivalent mechanisms for other platforms. These policies should be configured to prevent any unlisted, unauthorized, or known malicious programs from executing. Additionally, similar controls like execution prevention systems or centrally managed endpoint security solutions should be deployed to offer equivalent security benefits.' WHERE [Mat_Question_Id] = 10016
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'This process should involve a review to identify and remove any applications that are no longer in use, ensuring that only necessary and authorized software can execute within the environment. Detailed records of these updates should be maintained for accountability and continuous improvement purposes.' WHERE [Mat_Question_Id] = 10017
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Deploy intrusion detection/prevention systems (IDS/IPS) that are configured to analyze and log all incoming and outgoing traffic to detect any communication attempts with blocklisted IP addresses. Additionally, the organization should enforce strict access control policies to ensure that external connections to known suspicious IPs and non-standard ports (i.e., those that are not explicitly required for essential services like VPN gateways, mail servers, or web servers) are automatically blocked. Continuous updating and fine-tuning of the threat intelligence feed and IDS/IPS rules should be ensured to adapt to evolving threats, while regular security audits and penetration testing can help identify and mitigate vulnerabilities associated with unexpected external connections.' WHERE [Mat_Question_Id] = 10018
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'This integration should include deploying tools and technologies that automate incident response workflows, centralize threat intelligence, and coordinate defensive measures across the network. Consider NIST SP 800-215 - Guide to a Secure Enterprise Network Landscape. If the Owner/Operator assesses that SOAR capabilities are not applicable to certain aspects of their system, they must provide comprehensive documentation detailing the specific components excluded from SOAR integration and present a justification for each exclusion. This justification should encompass reasons such as the absence of relevant threat vectors, operational constraints, or the use of alternative effective measures.' WHERE [Mat_Question_Id] = 10019
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Deploy intrusion detection and prevention systems (IDPS) that utilize a comprehensive and frequently updated database of signatures. These signatures should specifically target patterns and behaviors associated with well-known post-exploitation tools like Metasploit, Cobalt Strike, and Empire. Furthermore, crafting custom signatures based on the organization''s unique threat landscape and previous incident patterns will enhance the robustness of detection capabilities. Integration of threat intelligence feeds can further refine the accuracy of these signatures, reducing false positives and ensuring timely response to potential threats. Good practice also involves periodic testing and validation of the signature-based systems to assess their efficacy and to fine-tune detection algorithms for optimal performance in dynamic environments.' WHERE [Mat_Question_Id] = 10020
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'This involves creating and enforcing account usage policies that define acceptable uses for various types of accounts including user, service, and privileged accounts. Utilizing User Account Control (UAC) mechanisms to ensure elevated actions require administrative approval and are tracked can help maintain these constraints. Additionally, deploying Privileged Account Management (PAM) solutions to monitor, audit, and limit the use of privileged accounts will reinforce the security posture. Role-Based Access Control (RBAC) should be leveraged to ensure that roles align with the separation of duties principle, preventing conflict of interest or abuse by ensuring no single user has control over all critical functions. Periodic reviews and audits will be necessary to ensure compliance and adjust access levels as roles and requirements evolve, maintaining alignment with the latest NIST 800-53 guidelines.' WHERE [Mat_Question_Id] = 10021
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Establish a documented process for regularly reviewing the operational need and justification of each group account. This process should have a detailed justification for the continued usage of the account. A centralized, up-to-date list of all group accounts must be maintained, including their associated personnel and dates of the last password resets. Ensure that all memorized secret authenticators conform to NIST SP 800-63B standards. Additionally, the organization should keep a list of both current and former employees who have had access to these group accounts to facilitate precise tracking and accountability. Regular audits should be conducted to enforce adherence to these protocols and identify any potential non-compliance.' WHERE [Mat_Question_Id] = 10022
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Conduct an audit of current identity stores and cross-system access points. All existing trust relationships and shared credentials between IT and OT networks must be identified and a plan for remediation created. Dedicated identity providers should be established for each domain, ensuring that there is no overlap or interdependence between the two. This will involve setting up separate authentication servers, configuring independent identity and access management (IAM) policies, and ensuring that multifactor authentication (MFA) is enforced within both IT and OT environments. Additionally, network segmentation should be implemented to prevent any unauthorized access between IT and OT systems, supported by continuous monitoring to detect and address any potential breaches. Documentation and consistent review of these measures would be required to maintain compliance and security integrity.' WHERE [Mat_Question_Id] = 10023
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'The primary documents and artifacts to look for include a comprehensive IT/OT interdependency matrix or mapping. This document should detail the critical systems and subsystems, illustrate how they interact, and highlight the dependencies and interactions between IT and OT environments. Additionally, detailed network diagrams and architecture schematics that show the connections between IT and OT systems should be present. Policies and procedures should explicitly address how these interdependencies are managed, monitored, and protected, including incident response plans, change management processes, and communication protocols between IT and OT teams.
 
 Best practices and standards to follow include NIST SP 800-82 "Guide to Industrial Control Systems (ICS) Security," ISO/IEC 27001 for information security management, and the ISA/IEC 62443 series for security of industrial automation and control systems. These frameworks emphasize the importance of thoroughly understanding and documenting system interdependencies to ensure comprehensive risk management and robust security controls. Adhering to these standards will help ensure that the organization can adequately address vulnerabilities and threats arising from IT/OT interactions.' WHERE [Mat_Question_Id] = 10027
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'The following documents are key to answering the question: a comprehensive network diagram showing all external connections, interfaces, and data flow; access control policies detailing who has authorization to access these connections; and a risk assessment report identifying potential threats and vulnerabilities associated with the external connections. Additionally, configuration management and change control records should be maintained to track any modifications to the external connections.
 
 The National Institute of Standards and Technology (NIST) Special Publication 800-82, "Guide to Industrial Control Systems (ICS) Security," offers detailed guidelines on securing OT environments, including documenting external connections. Additionally, the International Society of Automation (ISA) 99/IEC 62443 series of standards provides a framework for managing OT cybersecurity risks.' WHERE [Mat_Question_Id] = 10028
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Primarily, the organization should have a network topology diagram that clearly illustrates the different zone boundaries, such as demilitarized zones (DMZs), internal network zones, and external network interfaces. Accompanying this should be a detailed description of each zone, including their purpose, the types of systems and data they host, and the security controls and mechanisms in place to protect and monitor traffic across these boundaries.
 
 Relevant policies might include the Network Security Policy, which outlines the principles and practices for segmenting the network into different security zones, and the Access Control Policy, detailing who can access each zone and under what circumstances. Artifacts like firewall configuration files, access control lists (ACLs), and intrusion detection/prevention system (IDS/IPS) logs should be reviewed to ensure they align with the defined zone boundaries and associated policies. Best practices and standards to follow include the National Institute of Standards and Technology (NIST) Special Publication 800-41 for firewall policy and architecture, and the ISO/IEC 27033 standard for network security, both of which provide comprehensive guidelines on properly segmenting and securing network zones.' WHERE [Mat_Question_Id] = 10029
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Organizations should have a comprehensive network diagram that clearly delineates zone boundaries, and a security policy that defines the criteria for demarcating these zones. Additionally, there should be a detailed asset inventory that categorizes IT and OT systems. The security architecture documents should describe segmentation controls such as firewalls, VLANs, or software-defined networking technologies that enforce these boundaries.
 
 Standards and best practices to follow include the ISA/IEC 62443 series for industrial automation and control systems security, which offers detailed guidance on network segmentation and the distinction between IT and OT systems. The National Institute of Standards and Technology (NIST) SP 800-82 offers guidelines on securing Industrial Control Systems (ICS), and also emphasizes the importance of clear zone definitions and protections.' WHERE [Mat_Question_Id] = 10030
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'There should be a network diagram or architecture document detailing the segmentation of systems into different security zones, such as IT, OT, and any other relevant subdivisions. This should clearly indicate how critical assets are isolated and protected based on their importance and impact on operations. Additionally, a risk assessment document identifying the consequence of potential breaches in each zone should be available. Policies related to network segmentation, access control, and incident response should also be on hand to outline the procedures and standards used to enforce and maintain these zones.
 
 Adherence to standards and best practices such as those prescribed by the NIST (National Institute of Standards and Technology) Cybersecurity Framework, IEC 62443 for Industrial Automation and Control Systems Security, and CIS (Center for Internet Security) controls should be evident in the documentation. These frameworks offer guidelines for categorizing and protecting assets based on their criticality and operational importance.' WHERE [Mat_Question_Id] = 10031
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'The organization should have documentation such as: network architecture diagrams, security policies, access control policies, and firewall rulesets. These documents should clearly identify zone boundaries and detail the security controls in place, such as: Intrusion Detection Systems (IDS), Intrusion Prevention Systems (IPS), firewalls, and demilitarized zones (DMZ). Additionally, it is essential to verify the implementation of network segmentation practices.
 
 Standards and best practices that could be followed include those from the National Institute of Standards and Technology (NIST), specifically NIST SP 800-41 for firewalls and NIST SP 800-53 for security and privacy controls. The Center for Internet Security (CIS) Controls, particularly CIS Control 14 on controlled access based on the need to know, also offers relevant guidance.' WHERE [Mat_Question_Id] = 10032
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Organizations should have the following documentation: network segementation policies, firewall and VPN configruations, encryption policies, access control policies, incident response plan, and compliance audits and log reviews.
 
 Standards such as the NIST SP 800-82 (Guide to Industrial Control Systems Security), NIST SP 800-53 (Security and Privacy Controls for Information Systems and Organizations), and the ISO/IEC 27001 framework provide best practice guidance. Specifically, controls like Network Segmentation (AC-4), Transmission Confidentiality and Integrity (SC-8, SC-12), and Boundary Protection (SC-7) are crucial. Best practices include implementing strict firewall policies, DMZ architectures, rigorous encryption mechanisms, and continuous monitoring of network traffic to enforce and validate the segregation of OT and IT services.' WHERE [Mat_Question_Id] = 10033
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Key items should include the formalized Identification and Authentication (I&A) policy document, detailing how access is controlled and monitored, supported by specific procedures for managing memorized secret authenticators (i.e., passwords or PINs). These procedures should outline the process for regular reset schedules, criteria for password complexity, and the process for secure distribution and update of authenticators. Additionally, logs or records showing the historical compliance with the reset schedule should be available. Training materials and records that demonstrate user awareness and adherence to these policies are also critical.
 
 In terms of standards and best practices, adherence to frameworks such as NIST Special Publication 800-53 (Security and Privacy Controls for Information Systems and Organizations) or ISO/IEC 27001 (Information Security Management) is advisable. Specifically, NIST controls like IA-5 (Authenticator Management) provide detailed guidance on managing authenticators, including memorized secrets. Moreover, adhering to best practices such as using multi-factor authentication (MFA) where feasible is recommended to enhance security posture.' WHERE [Mat_Question_Id] = 10035
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'A mitigation plan should be a detailed document outlining the alternative security measures implemented to protect the systems for which passwords are not reset as per the standard schedule. It should include specific controls such as multi-factor authentication (MFA), account monitoring, and access restrictions. The plan should include a schedule of when mitigations will be completed.' WHERE [Mat_Question_Id] = 10036
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'The organization should have a formal Access Control Policy that outlines the rationale for not implementing MFA and describes the alternative compensating controls in place. This could include enhanced password policies, physical security measures, and monitoring and auditing procedures. Additionally, Risk Assessment Reports documenting the potential risks and justifications for using compensating controls should be evaluated. Training records and user awareness programs indicating that staff are educated on the importance of secure access and how to use the compensating controls effectively are also essential.' WHERE [Mat_Question_Id] = 10038
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'The organization should have a comprehensive security policy, specific procedural documentation that outlines compensating controls, a risk assessment report, and any documented exceptions or deviations. Additionally, there should be demonstrable evidence that these compensating controls are regularly reviewed, tested, and updated as necessary, such as audit logs, control testing reports, and change management records. 
 
 Relevant standards or best practices for this assessment include the National Institute of Standards and Technology (NIST) Special Publication 800-53, which provides a catalog of security and privacy controls for federal information systems and organizations. Compensating controls must address the underlying risk, be as rigorous as the original control, and provide equivalent protection, ensuring that the organization''s risk exposure is minimized despite the technical infeasibility of applying certain security principles directly.' WHERE [Mat_Question_Id] = 10040
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Organizations should have a formal Access Control Policy, a Trust Relationship Management Policy, and a documented schedule for periodic reviews. The organization should maintain logs or records of past reviews, changes, and justifications for maintaining or removing trust relationships. Additionally, procedures for conducting these reviews and criteria for evaluating the necessity of trust relationships should be clearly defined and documented.
 
 Best practices and standards to follow include the NIST Special Publication 800-53, specifically the AC-5 (Separation of Duties) and AC-6 (Least Privilege) controls, which emphasize the importance of limiting access and ensuring responsibilities among trusted domains are appropriately managed. Furthermore, ISO/IEC 27001:2013 includes guidelines on access control (A.9.1, A.9.2) and regularly reviewing access rights to ensure continued appropriateness. Organizations should also adhere to the principle of least privilege, ensuring that trust relationships are minimized and reviewed periodically to mitigate any unnecessary risks.' WHERE [Mat_Question_Id] = 10045
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'When assessing the presence of access control measures related to the management of domain trusts, the following documentation, artifacts, and policies should be reviewed:
 
 Access Control Policy: This should include detailed provisions on how domain trusts are established, maintained, and monitored. It should outline the criteria for establishing trust relationships, approval processes, and periodic reviews.
 
 Domain Trust Management Policy: This specific policy should detail how domain trusts are configured and managed. It should address aspects like trust types (e.g., one-way, two-way, transitive), security settings, and how frequently trust relationships are audited and validated.
 
 Audit Logs and Monitoring Reports: These artifacts should demonstrate that domain trust activities are being logged and monitored continuously. Logs should include attempts to modify domain trusts, successful changes, and potential security incidents.
 
 Configuration Standards and Guidelines: Documentation from IT or network administrators that provides a standard procedure for configuring domain trusts, ensuring that all trusts comply with organizational security policies.' WHERE [Mat_Question_Id] = 10046
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Key documents should include a formal Continuous Monitoring Policy, Incident Response Plan, and Standard Operating Procedures (SOPs) for threat detection and response. Implementation evidence such as logs from Security Information and Event Management (SIEM) systems, reports from Intrusion Detection Systems (IDS) and Intrusion Prevention Systems (IPS), and records of cybersecurity awareness and training programs are crucial. Additionally, the O/O should provide documented evidence of periodic reviews and updates to these policies and procedures to ensure they evolve with emerging threats.
 
 Best practices and standards to follow include guidelines from the National Institute of Standards and Technology (NIST) such as NIST SP 800-137 "Information Security Continuous Monitoring (ISCM) for Federal Information Systems and Organizations" and the NIST Cybersecurity Framework (CSF). Also, adherence to the International Organization for Standardization (ISO) standards like ISO/IEC 27001 for Information Security Management can provide robust frameworks. These standards recommend a continual assessment and improvement cycle, ensuring that measures are effectively mitigating risks and are adaptable to new threat landscapes.' WHERE [Mat_Question_Id] = 10047
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Key documentation includes an Email Security Policy that outlines procedures for detecting and managing spam and phishing emails and an Incident Response Plan that includes specific protocols for handling email-based threats. Technical artifacts should include evidence of deployed email filtering and scanning solutions, such as Secure Email Gateways (SEGs), anti-phishing software, and spam filters. Additionally, reports from these tools demonstrating recent detection and mitigation of email threats should be available. Training records should also document that employees receive regular awareness training on identifying and reporting phishing attempts.
 
 Best practices and standards to follow include guidelines from the National Institute of Standards and Technology (NIST) Special Publication 800-177 on Trustworthy Email. Adherence to the recommendations of the Center for Internet Security (CIS) Critical Security Controls, particularly Control 7, which deals with email and web browser protections, is also advisable.' WHERE [Mat_Question_Id] = 10049
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Key documentation should include an up-to-date Incident Response Plan, detailing procedures for identifying and mitigating threats from malicious domains or web applications. Organizations should also provide evidence of a Web Filtering Policy, which outlines the use of web filters to block access to harmful websites and applications. Additionally, logs from web filtering tools and proof of regular updates to threat intelligence databases should be accessible, demonstrating proactive measures against potential threats. Reports from security assessment tools like Intrusion Detection Systems (IDS) and Intrusion Prevention Systems (IPS) that highlight incidents involving malicious sites are also critical.
 
 Regarding standards and best practices, organizations should align with frameworks like the National Institute of Standards and Technology (NIST) Special Publication 800-53, which outlines controls for continuous monitoring and detection, including AC-6 (Least Privilege) and SC-7 (Boundary Protection). Another relevant standard is the ISO/IEC 27002, which provides guidance on implementing information security controls, specifically within sections on access control and monitoring. Implementing best practices such as deploying secure DNS services, regularly updating blocklists and allowlists, and employee training on recognizing and reporting suspicious web activity also forms an essential part of a robust defense mechanism.' WHERE [Mat_Question_Id] = 10051
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'The following documentation, artifacts, and policies should be present:
 
 Network Monitoring Policy: This should outline the procedures and tools used to monitor network traffic, detailing specific actions taken to detect and block communications with malicious C&C servers. It should also specify the use of threat intelligence feeds to update lists of known malicious servers.
 
 Incident Response Plan: An updated Incident Response Plan should demonstrate the organization’s preparedness for detecting and responding to connections to C&C servers, including containment and remediation steps.
 
 Technical Configurations and Logs: Firewall configurations, intrusion detection/prevention systems (IDS/IPS) settings, and security information and event management (SIEM) system rules should be available for review. Logs from these systems showing historical detections and block actions would also be critical.
 
 Threat Intelligence Integration: Documentation showing how threat intelligence is integrated into the monitoring systems—including sources like threat intelligence platforms, feeds from cybersecurity vendors, and government advisories.
 
 Best practices and standards to follow include the NIST SP 800-137 for Information Security Continuous Monitoring (ISCM), the CIS Controls (especially Controls 7 and 13 concerning email and web browser protections and boundary defenses), and ISO/IEC 27001 for Information Security Management Systems. These frameworks provide guidance on establishing a robust continuous monitoring program that can effectively detect and mitigate threats from malicious C&C servers.' WHERE [Mat_Question_Id] = 10053
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Key artifacts include the organization’s Incident Response Plan, Network Security Policy, Continuous Monitoring Plan, and documented Standard Operating Procedures (SOPs) for auditing unauthorized access. Additionally, logs from security information and event management (SIEM) systems, intrusion detection/prevention systems (IDS/IPS), and firewall logs should be analyzed to verify active monitoring and auditing of unauthorized access attempts. Evidence of regular audits and reviews of these logs should also be present, alongside records of any incident response activities related to unauthorized access.
 
 Best practices and standards to be followed include NIST SP 800-53 (Security and Privacy Controls for Federal Information Systems and Organizations), particularly the sections on audit and accountability controls (AU family), continuous monitoring (CA family), and incident response controls (IR family). Additionally, frameworks such as the CIS Controls, especially Control 6 (Maintenance, Monitoring and Analysis of Audit Logs) and Control 16 (Account Monitoring and Control), provide actionable guidelines.' WHERE [Mat_Question_Id] = 10055
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'The following documentation, artifacts, or policies should be present: 
 
 Continuous Monitoring and Detection Policy: This policy should outline the organization''s approach to continuously monitoring OT systems, including the procedures for detecting and responding to deviations from normal communication patterns. 
 
 Baseline Document: A documented baseline of normal communications for the OT system against which deviations are measured.
 
 Incident Response Plan (IRP): Procedures in the IRP should include steps for handling and documenting deviations from the baseline, including the specifics of what constitutes a reportable event.
 
 Audit Logs: Detailed logs of network traffic and communications involving the OT systems, including timestamps and source/destination information to aid in auditing.
 
 Access Control and Authentication Logs: Records showing who accessed the OT system and what changes or communications they performed.
 
 Communication Protocols and Procedures: Manuals and guidelines specifying the approved and expected communication protocols and how these are protected and monitored.
 
 Standards and best practices to follow include those delineated by NIST SP 800-82 for Industrial Control System (ICS) Security, ISO/IEC 27001 for Information Security Management Systems, and the NIST Cybersecurity Framework (CSF). These standards encompass comprehensive guidance on setting baselines, monitoring network traffic, logging, and auditing communication activities to ensure deviations are properly documented and analyzed as part of a broader continuous monitoring program.' WHERE [Mat_Question_Id] = 10056
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Key documents include a comprehensive Logging and Monitoring Policy, Incident Response Policy, and Security Information and Event Management (SIEM) documentation. Additionally, log configuration files, alerting and reporting mechanisms, as well as logs showing historical data collection and correlation activities must be reviewed.
 
 Best practices and standards to follow include those outlined in the National Institute of Standards and Technology (NIST) Special Publication 800-137 on Information Security Continuous Monitoring (ISCM), and ISO/IEC 27001 for information security management systems. These standards emphasize the need for real-time monitoring, regular analysis, and timely responses to detected anomalies.' WHERE [Mat_Question_Id] = 10060
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'The following documentation, artifacts, or policies should be present:
 
 Logging Policy Document: This document should outline the organization''s formal logging policies, including data retention schedules, types of events logged, logging formats, and the scope of logs maintained.
 
 Retention Policy: Specific clauses or standalone documents should address how long different types of logs (e.g., security, application, system logs) are kept, ensuring they are available for a sufficient period to support incident investigations.
 
 Compliance Reports and Audit Logs: Periodic compliance reports and audit logs showing adherence to the logging and retention policies.
 
 The assessment should be guided by standards and best practices such as the NIST Special Publication 800-92 (Guide to Computer Security Log Management), which recommends that organizations retain logs for a duration suited to forensic investigation and regulatory requirements. Additionally, ISO/IEC 27001 and its control framework ISO/IEC 27002 provide comprehensive guidelines for maintaining information security logs, ensuring data integrity, and ensuring that data is available for incident response.' WHERE [Mat_Question_Id] = 10061
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Key documents include a comprehensive Incident Response Plan (IRP), guidelines on the integration and segmentation between IT and Operational Technology (OT) environments, and specific isolation procedures. Evidence should also demonstrate regular testing and drills of these procedures, along with documented roles and responsibilities for response teams. Additionally, system architecture diagrams illustrating IT-OT boundaries and isolation points are crucial.
 
 Standards and best practices that should be followed include NIST''s SP 800-82 "Guide to Industrial Control Systems (ICS) Security," which provides a detailed framework for securing ICS environments. The IEC 62443 series of standards offers guidance on achieving security at all stages of the ICS lifecycle, including incident handling and response.' WHERE [Mat_Question_Id] = 10062
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Key documents include incident response policies, network segmentation diagrams, and access control policies. The incident response policy should outline clear steps for identifying and isolating infected devices, including roles and responsibilities. Network segmentation diagrams should illustrate how the network is structured to allow for quick isolation of compromised assets. Access control policies need to ensure that there are mechanisms in place for rapidly revoking network access for devices that are identified as infected.
 
 Key standards and best practices to follow include those outlined by NIST''s Special Publication 800-61 Rev. 2 (Computer Security Incident Handling Guide) and ISO/IEC 27001:2013, which provide guidance on incident response and information security management, respectively. These standards emphasize fast detection and containment of security incidents to minimize damage and prevent the infection from spreading across the network. It is essential that organizations regularly review and test their incident response plans and network segmentation strategies to ensure effectiveness during actual security events.' WHERE [Mat_Question_Id] = 10075
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'A comprehensive Network Segmentation Policy should outline the procedures for isolating infected devices and ensuring other devices on the network are segmented effectively to prevent the spread of malware or other malicious activities. Network diagrams and asset inventories should be available to show how devices are segregated and to identify which devices could potentially share the same network as infected ones. Incident Response Plans should detail the steps taken when an infection is detected, including immediate segregation measures. Additionally, logs from network monitoring tools and access control lists (ACLs) can provide evidence that network segmentation was implemented as part of an incident response.
 
 Best practices and industry standards such as the NIST Special Publication 800-61 Rev. 2 (Computer Security Incident Handling Guide) and ISO/IEC 27001 controls related to network security and incident response can guide the implementation of these measures. Documentation should demonstrate adherence to these standards, verifying that processes for immediate and effective network segregation are in place and routinely tested during incident response exercises. Ensuring devices are segregated minimizes the risk of lateral movement by malicious actors, effectively containing potential breaches and securing the wider network environment.' WHERE [Mat_Question_Id] = 10076
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Organizations should have an Incident Response Plan (IRP) that details the procedures for volatile memory preservation, and forensic imaging policies that specify the tools and methods used. Documentation should include Standard Operating Procedures (SOPs) for different types of devices, training records for personnel responsible for incident response, and logs demonstrating adherence to these procedures in past incidents.
 
 Key artifacts would include forensic memory images themselves, hash values to ensure the integrity of collected data, and incident logs that track the actions taken by responders. Standards and best practices to follow include those from the National Institute of Standards and Technology (NIST) Special Publication 800-86 (Guide to Integrating Forensic Techniques into Incident Response) and ISO/IEC 27037:2012 (Guidelines for the Identification, Collection, Acquisition, and Preservation of Digital Evidence). Ensuring that all actions are well-documented and that staff is trained according to these standards is critical for maintaining the chain of custody and the integrity of the forensic process.' WHERE [Mat_Question_Id] = 10077
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Key documentation includes a comprehensive Incident Response Plan (IRP) and Backup and Recovery Policy detailing the specific procedures for verifying the integrity of backup data. This should encompass the use of antivirus or anti-malware tools, integrity checks, and regular scanning schedules before data is backed up and during restoral tests. Additionally, records of these scans, including logs and reports, should be maintained as artifacts to demonstrate compliance.
 
 Standards and best practices that should be followed include those from the National Institute of Standards and Technology (NIST), specifically NIST SP 800-34 Rev. 1 for Contingency Planning and NIST SP 800-184 for Guide for Cybersecurity Event Recovery. These guidelines advocate for detailed planning and control mechanisms to prevent the restoration of malicious code. Additionally, adherence to the International Organization for Standardization (ISO) standards like ISO/IEC 27031 for IT readiness for business continuity and ISO/IEC 27002 for security controls would also bolster compliance.' WHERE [Mat_Question_Id] = 10082
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Key documentation includes the exercise plans, after-action reports, and participant rosters which detail who was involved in each exercise. Specifically, cross-reference the names or positions listed in the exercise documentation with those specified in section 7.7 to ensure alignment. Other relevant documents may include training schedules, attendance sheets, and communication records that confirm participation.
 
 Standards or best practices that should be followed include guidelines from the National Institute of Standards and Technology (NIST) Special Publication 800-84 "Guide to Test, Training, and Exercise Programs for IT Plans and Capabilities" and ISO/IEC 27001:2013, particularly sections related to training, awareness, and testing. These frameworks emphasize the importance of not only conducting regular exercises but also ensuring that relevant personnel are appropriately involved to sustain and enhance organizational preparedness and resilience.' WHERE [Mat_Question_Id] = 10089
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Supplemental_Info]=N'Key documents include the original CAP submission records, timestamps of both the previous submission and TSA’s approval, and the current CAP submission records. Additionally, any TSA correspondences acknowledging receipt and approval of the previous CAP should be documented. The O/O should also maintain a log or schedule that tracks the CAP submission cycle to ensure timely submissions.
 
 Best practices and standards to follow include adhering to guidelines outlined in TSA''s Pipeline Security Guidelines or any specific TSA directives that pertain to CAP submission requirements.' WHERE [Mat_Question_Id] = 10109
PRINT(N'Operation applied to 105 rows out of 105')

PRINT(N'Update row in [dbo].[SETS]')
UPDATE [dbo].[SETS] SET [Short_Name]=N'Cyber Florida CSF V1.1' WHERE [Set_Name] = N'Florida_NCSF_V1'

PRINT(N'Update row in [dbo].[GEN_FILE]')
UPDATE [dbo].[GEN_FILE] SET [Title]=N'FAA Order 8900.1 Volume 4 Chapter 15 Section 1' WHERE [Gen_File_Id] = 3789

PRINT(N'Add rows to [dbo].[CSF_MAPPING]')
INSERT INTO [dbo].[CSF_MAPPING] ([CSF_Code], [Question_Type], [Question_Id]) VALUES (N'ID.AM-1', N'Maturity', 8502)
INSERT INTO [dbo].[CSF_MAPPING] ([CSF_Code], [Question_Type], [Question_Id]) VALUES (N'ID.AM-2', N'Maturity', 8502)
INSERT INTO [dbo].[CSF_MAPPING] ([CSF_Code], [Question_Type], [Question_Id]) VALUES (N'ID.AM-5', N'Maturity', 8501)
INSERT INTO [dbo].[CSF_MAPPING] ([CSF_Code], [Question_Type], [Question_Id]) VALUES (N'PR.IP-2', N'Maturity', 8500)
PRINT(N'Operation applied to 4 rows out of 4')

PRINT(N'Add rows to [dbo].[LU_WEIGHTS]')
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.AE-01', 0.0236529288622057)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.AE-02', 0.0110348756609136)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.AE-03', 0.0115575292698437)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.AE-04', 0.00983010595431147)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.AE-05', 0.0082121056665717)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.CM-01', 0.00838846544912348)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.CM-02', 0.00856874863948049)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.CM-03', 0.00561135733268978)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.CM-04', 0.00590894963556157)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.CM-05', 0.00525453237217557)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.CM-06', 0.00553055954472903)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.CM-07', 0.00686701952308051)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.CM-08', 0.00458609777408265)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.DP-01', 0.0170972854164827)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.DP-02', 0.0122788553368166)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.DP-03', 0.0172503295857901)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.DP-04', 0.0140509545256184)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'DE.DP-05', 0.010038875090523)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.AM-01', 0.0119849560910415)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.AM-02', 0.0118905749639713)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.AM-03', 0.0112130546471314)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.AM-04', 0.00804343984636551)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.AM-05', 0.00726032840698468)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.AM-06', 0.00690637931833069)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.BE-01', 0.00886542384534304)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.BE-02', 0.0108114492570314)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.BE-03', 0.0123749384397014)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.BE-04', 0.0119208619984872)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.BE-05', 0.00987831701330689)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.GV-01', 0.00910305019486431)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.GV-02', 0.00704618151837831)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.GV-03', 0.00686813153068726)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.GV-04', 0.00903163454046076)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.RA-01', 0.00900005563312724)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.RA-02', 0.0053458486060255)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.RA-03', 0.00739876315024313)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.RA-04', 0.00931509445379012)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.RA-05', 0.00756369884850119)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.RA-06', 0.00678682802005993)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.RM-01', 0.0113550405928881)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.RM-02', 0.0164542949332128)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.RM-03', 0.0131949777259949)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.SC-01', 0.00817160366523528)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.SC-02', 0.00608293292476298)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.SC-03', 0.00467507956381146)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.SC-04', 0.00417445460726222)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'ID.SC-05', 0.00452305653740266)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.AC-01', 0.00850192454704912)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.AC-02', 0.00839535290396235)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.AC-03', 0.00952020694672647)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.AC-04', 0.00793442079254714)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.AC-05', 0.00988893960538948)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.AC-06', 0.00504774503859514)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.AC-07', 0.00491125794815035)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.AT-01', 0.00542267843760574)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.AT-02', 0.00589914314776282)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.AT-03', 0.00297379502405405)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.AT-04', 0.00516939946201082)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.AT-05', 0.0056977491391394)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.DS-01', 0.005774079650265)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.DS-02', 0.0055113121816004)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.DS-03', 0.00538748586557943)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.DS-04', 0.005193292409594)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.DS-05', 0.00401426259055895)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.DS-06', 0.00448215565421032)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.DS-07', 0.00608650841891082)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.DS-08', 0.0032868757348932)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.IP-01', 0.00566901583436272)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.IP-02', 0.00374873618316925)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.IP-03', 0.00455804648601752)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.IP-04', 0.00621871262783854)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.IP-05', 0.00309060878686957)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.IP-06', 0.00215602606407651)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.IP-07', 0.002793530229841)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.IP-08', 0.00225922767833252)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.IP-09', 0.00442415673306567)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.IP-10', 0.00406250724168178)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.IP-11', 0.0021311625971546)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.IP-12', 0.00343794606427266)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.MA-01', 0.011965780435408)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.MA-02', 0.0124669649562628)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.PT-01', 0.00496674605005775)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.PT-02', 0.00549889445224713)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.PT-03', 0.0081135569655438)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.PT-04', 0.00950605526340884)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'PR.PT-05', 0.00553916871901696)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RC.CO-01', 0.0165309489304592)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RC.CO-02', 0.0108031201343791)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RC.CO-03', 0.0292191772762065)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RC.IM-01', 0.0169796071635396)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RC.IM-02', 0.0161306268053626)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RC.RP-01', 0.0988473408268688)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.AN-01', 0.00983399996283944)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.AN-02', 0.00755115662520608)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.AN-03', 0.00531141627295921)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.AN-04', 0.00525977285044245)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.AN-05', 0.0073326605067245)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.CO-01', 0.0111264168071742)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.CO-02', 0.00554123279449693)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.CO-03', 0.00517770451537918)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.CO-04', 0.006285134870328)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.CO-05', 0.00271120895317564)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.IM-01', 0.00789966235131747)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.IM-02', 0.00654190788468478)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.MI-01', 0.0135917152991138)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.MI-02', 0.0105637566474296)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.MI-03', 0.00776084897661387)
INSERT INTO [dbo].[LU_WEIGHTS] ([DisplayID], [WEIGHT_VAL]) VALUES (N'RS.RP-01', 0.0343351281636632)
PRINT(N'Operation applied to 108 rows out of 108')

PRINT(N'Add row to [dbo].[MATURITY_MODELS]')
SET IDENTITY_INSERT [dbo].[MATURITY_MODELS] ON
INSERT INTO [dbo].[MATURITY_MODELS] ([Maturity_Model_Id], [Model_Name], [Answer_Options], [Questions_Alias], [Analytics_Rollup_Level], [Model_Title], [Maturity_Level_Usage_Type]) VALUES (18, N'SSG Chemical', N'Y,I,S,N', N'Security Practices', 1, N'SSG Chemical', N'Static')
SET IDENTITY_INSERT [dbo].[MATURITY_MODELS] OFF

PRINT(N'Add rows to [dbo].[STATES_AND_PROVINCES]')
SET IDENTITY_INSERT [dbo].[STATES_AND_PROVINCES] ON
INSERT INTO [dbo].[STATES_AND_PROVINCES] ([STATES_AND_PROVINCES_ID], [ISO_code], [Display_Name], [Country_Code]) VALUES (64, N'US-DC', N'District of Columbia', N'USA')
INSERT INTO [dbo].[STATES_AND_PROVINCES] ([STATES_AND_PROVINCES_ID], [ISO_code], [Display_Name], [Country_Code]) VALUES (65, N'US-AS', N'American Samoa', N'USA')
INSERT INTO [dbo].[STATES_AND_PROVINCES] ([STATES_AND_PROVINCES_ID], [ISO_code], [Display_Name], [Country_Code]) VALUES (66, N'US-PR', N'Puerto Rico', N'USA')
INSERT INTO [dbo].[STATES_AND_PROVINCES] ([STATES_AND_PROVINCES_ID], [ISO_code], [Display_Name], [Country_Code]) VALUES (67, N'US-GU', N'Guam', N'USA')
INSERT INTO [dbo].[STATES_AND_PROVINCES] ([STATES_AND_PROVINCES_ID], [ISO_code], [Display_Name], [Country_Code]) VALUES (68, N'US-MP', N'Commonwealth of the Northern Mariana Islands', N'USA')
INSERT INTO [dbo].[STATES_AND_PROVINCES] ([STATES_AND_PROVINCES_ID], [ISO_code], [Display_Name], [Country_Code]) VALUES (69, N'US-VI', N'United States Virgin Islands', N'USA')
SET IDENTITY_INSERT [dbo].[STATES_AND_PROVINCES] OFF
PRINT(N'Operation applied to 6 rows out of 6')

PRINT(N'Add rows to [dbo].[TTP]')
INSERT INTO [dbo].[TTP] ([TTP_Code], [URL], [Description]) VALUES (N'T1404', N'https://attack.mitre.org/techniques/T1404/', N'Privilege Escalation (Mobile – T1404 Exploitation for Privilege Escalation)')
INSERT INTO [dbo].[TTP] ([TTP_Code], [URL], [Description]) VALUES (N'T1481', N'https://attack.mitre.org/techniques/T1481/', N'Command and Control (Mobile T1481 – Web Service)')
INSERT INTO [dbo].[TTP] ([TTP_Code], [URL], [Description]) VALUES (N'T1577', N'https://attack.mitre.org/techniques/T1577/', N'Persistence (Mobile T1577 – Compromise Application Executable)')
INSERT INTO [dbo].[TTP] ([TTP_Code], [URL], [Description]) VALUES (N'T1624', N'https://attack.mitre.org/techniques/T1624/', N'Persistence (Mobile T1624 – Event Triggered Execution)')
PRINT(N'Operation applied to 4 rows out of 4')

PRINT(N'Add row to [dbo].[CUSTOM_STANDARD_BASE_STANDARD]')
SET IDENTITY_INSERT [dbo].[CUSTOM_STANDARD_BASE_STANDARD] ON
INSERT INTO [dbo].[CUSTOM_STANDARD_BASE_STANDARD] ([Custom_Standard_Base_Standard_Id], [Custom_Questionaire_Name], [Base_Standard]) VALUES (2021, N'WMATA', N'SP800-82 V3')
SET IDENTITY_INSERT [dbo].[CUSTOM_STANDARD_BASE_STANDARD] OFF

PRINT(N'Add rows to [dbo].[MATURITY_QUESTIONS]')
SET IDENTITY_INSERT [dbo].[MATURITY_QUESTIONS] ON
INSERT INTO [dbo].[MATURITY_QUESTIONS] ([Mat_Question_Id], [Question_Title], [Question_Text], [Supplemental_Info], [Category], [Sub_Category], [Maturity_Level_Id], [Sequence], [Maturity_Model_Id], [Parent_Question_Id], [Ranking], [Grouping_Id], [Examination_Approach], [Short_Name], [Mat_Question_Type], [Parent_Option_Id], [Supplemental_Fact], [Scope], [Recommend_Action], [Risk_Addressed], [Services], [Outcome], [Security_Practice]) VALUES (8500, N'CHEM.1', N'', NULL, NULL, NULL, 1, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'IT and OT assets (including physical access control systems that are connected to networks).', N'Implement a System Lifecycle management process for applications and assets in use throughout facility networks.  Existing applications or assets, which are no longer supported by the manufacturer should be prioritzed for retirement and replacement.  ', NULL, NULL, N'Incorporate System Lifecycle considerations into the facility system engineering process.', N'System Lifecycle Management')
INSERT INTO [dbo].[MATURITY_QUESTIONS] ([Mat_Question_Id], [Question_Title], [Question_Text], [Supplemental_Info], [Category], [Sub_Category], [Maturity_Level_Id], [Sequence], [Maturity_Model_Id], [Parent_Question_Id], [Ranking], [Grouping_Id], [Examination_Approach], [Short_Name], [Mat_Question_Type], [Parent_Option_Id], [Supplemental_Fact], [Scope], [Recommend_Action], [Risk_Addressed], [Services], [Outcome], [Security_Practice]) VALUES (8501, N'CHEM.2', N'', NULL, NULL, NULL, 1, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'IT and OT assets.', N'Implement a program to identify and inventory unused IT/OT services and devices on the facility network(s) and disable and/or remove any that are not in use or not needed for facility operations.', NULL, NULL, N'Disable all applications, services, and other devices not used on the facilities’ networks.', N'Disable unnecessary systems, applications, and services.')
INSERT INTO [dbo].[MATURITY_QUESTIONS] ([Mat_Question_Id], [Question_Title], [Question_Text], [Supplemental_Info], [Category], [Sub_Category], [Maturity_Level_Id], [Sequence], [Maturity_Model_Id], [Parent_Question_Id], [Ranking], [Grouping_Id], [Examination_Approach], [Short_Name], [Mat_Question_Type], [Parent_Option_Id], [Supplemental_Fact], [Scope], [Recommend_Action], [Risk_Addressed], [Services], [Outcome], [Security_Practice]) VALUES (8502, N'CHEM.3', N'', NULL, NULL, NULL, 1, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'IT and OT assets.', N'<p>An inventory of mobile assets within an organization can lower the likelihood of exploitation of these devices. Additional measures to document and approve certain applications for use on these mobile devices can reduce organizational vulnerabilities. Acceptable use policies for mobile devices can (1) reduce the installation of unapproved applications (Shadow IT), and (2) restrict access to websites or programs which do or may contain vulnerabilities.</p><p>MDM programs can be implemented by first conducting asset inventory and ensuring the devices are regularly updated and only approved applications are on the device. Additionally, password protection would prevent unauthorized access, particularly within facilities, which use mobile/edge devices for OT networks. For Bring Your Own Device (BYOD) policies, entities should note the type of device used, along with documentation that the end user will maintain vulnerability management and adhere to applicable company policies.</p><p>Over the longer-term, use of the resources noted here can help mature an MDM program over time and assist the entity''s efforts to mitigate vulnerabilities while governing use of mobile applications.</p><p>Initial steps for establish an MDM program include:</p><p><u>1. Asset and Application Inventory</u><br>NIST SP 800-124, Rev 1 (Keep a current inventory of all applications installed on each device), page 20.<br>NIST SP 1800-4 (Inventory of mobile device hardware, firmware, and software), page 33.<br></p><p><u>2. Password Protection</u><br>NIST SP 800-124, Rev 1 (Require basic parameters for password strength)<br>CISA Checklist for Organizations Mobile Devices, page 1.<br>NSA Mobile Device Checklist, all</p><p><u>3. Application Vulnerability Management</u><br>NCCOE Mobile Device Cybersecurity- Cloud and Hybrid Builds, section 3.4<br>OWASP Mobile Application Security, all</p><p>Supporting capabilities for establishing an MDM program include:</p><p>Many organizations purchase a resource such as Microsoft Intune, Citrix Endpoint Management, or Ivanti Unified Endpoint Manager.</p><p>Ability to inventory deployed mobile devices and determine which applications should be approved for the device.</p>', NULL, NULL, N'Identify all mobile devices in use within the organization, approved applications used on those devices, and approved use. ', N'Mobile Device Management')
SET IDENTITY_INSERT [dbo].[MATURITY_QUESTIONS] OFF
PRINT(N'Operation applied to 3 rows out of 3')

PRINT(N'Add rows to [dbo].[MATURITY_QUESTION_PROPS]')
INSERT INTO [dbo].[MATURITY_QUESTION_PROPS] ([Mat_Question_Id], [PropertyName], [PropertyValue]) VALUES (8500, 'COMPLEXITY', 'HIGH')
INSERT INTO [dbo].[MATURITY_QUESTION_PROPS] ([Mat_Question_Id], [PropertyName], [PropertyValue]) VALUES (8500, 'COST', '4')
INSERT INTO [dbo].[MATURITY_QUESTION_PROPS] ([Mat_Question_Id], [PropertyName], [PropertyValue]) VALUES (8500, 'IMPACT', 'HIGH')
INSERT INTO [dbo].[MATURITY_QUESTION_PROPS] ([Mat_Question_Id], [PropertyName], [PropertyValue]) VALUES (8501, 'COMPLEXITY', 'MEDIUM')
INSERT INTO [dbo].[MATURITY_QUESTION_PROPS] ([Mat_Question_Id], [PropertyName], [PropertyValue]) VALUES (8501, 'COST', '1')
INSERT INTO [dbo].[MATURITY_QUESTION_PROPS] ([Mat_Question_Id], [PropertyName], [PropertyValue]) VALUES (8501, 'IMPACT', 'MEDIUM')
INSERT INTO [dbo].[MATURITY_QUESTION_PROPS] ([Mat_Question_Id], [PropertyName], [PropertyValue]) VALUES (8502, 'COMPLEXITY', 'MEDIUM')
INSERT INTO [dbo].[MATURITY_QUESTION_PROPS] ([Mat_Question_Id], [PropertyName], [PropertyValue]) VALUES (8502, 'COST', '1')
INSERT INTO [dbo].[MATURITY_QUESTION_PROPS] ([Mat_Question_Id], [PropertyName], [PropertyValue]) VALUES (8502, 'IMPACT', 'HIGH')
PRINT(N'Operation applied to 9 rows out of 9')

PRINT(N'Add rows to [dbo].[MATURITY_REFERENCE_TEXT]')
INSERT INTO [dbo].[MATURITY_REFERENCE_TEXT] ([Mat_Question_Id], [Sequence], [Reference_Text]) VALUES (8500, 1, N'<div class="sub-header-1">Additional External References</div><p>ISA 62443-2-1:2009 4.3.4.3.3</p>')
INSERT INTO [dbo].[MATURITY_REFERENCE_TEXT] ([Mat_Question_Id], [Sequence], [Reference_Text]) VALUES (8501, 1, N'<div class="sub-header-1">Additional External References</div><p> ISA 62443-2-1:2009 4.2.3.6</p>')
INSERT INTO [dbo].[MATURITY_REFERENCE_TEXT] ([Mat_Question_Id], [Sequence], [Reference_Text]) VALUES (8502, 1, N'<div class="sub-header-1">Additional External References</div><p>MITRE ATT&CK Mobile- https://attack.mitre.org/matrices/mobile/</p>

<p>NIST SP 1800-21- https://csrc.nist.gov/pubs/sp/1800/21/final</p>

<p>NIST SP 800-124, Rev 2- https://csrc.nist.gov/pubs/sp/800/124/r2/final</p>

<p>NIST SP 800-163, Rev 1- https://csrc.nist.gov/pubs/sp/800/163/r1/final</p>

<p>NCCOE Mobile Device Cybersecurity- Cloud and Hybrid Builds (NIST SP 1800-4B)- https://www.nccoe.nist.gov/mobile-device-security</p>

<p>CISA Capacity Ehancement Guide- Mobile Device Cybersecurity Checklist for Organizations- https://www.cisa.gov/sites/default/files/publications/CEG_Mobile%20Device%20Cybersecurty%20Checklist%20for%20Organizations.pdf</p>

<p>CISA Capacity Enhancement Guide - Cybersecurity Checklist for Consumers- https://www.cisa.gov/sites/default/files/publications/CEG_Mobile%20Device%20Cybersecurty%20Checklist%20for%20Consumers.pdf</p>

<p>NSA Mobile Device Best Practices- https://www.nsa.gov/Press-Room/Telework-and-Mobile-Security-Guidance/</p>

<p>NIST National Vulnerabilities Database- https://nvd.nist.gov/vuln</p>

<p>MITRE CVE Catalogue- https://csrc.nist.gov/pubs/sp/800/163/r1/final</p>

<p>OWASP Mobile Application Security- https://owasp.org/www-project-mobile-app-security/</p>')
PRINT(N'Operation applied to 3 rows out of 3')

PRINT(N'Add rows to [dbo].[TTP_MAT_QUESTION]')
INSERT INTO [dbo].[TTP_MAT_QUESTION] ([TTP_Code], [Mat_Question_Id]) VALUES (N'T0819', 8501)
INSERT INTO [dbo].[TTP_MAT_QUESTION] ([TTP_Code], [Mat_Question_Id]) VALUES (N'T0883', 8501)
INSERT INTO [dbo].[TTP_MAT_QUESTION] ([TTP_Code], [Mat_Question_Id]) VALUES (N'T1133', 8500)
INSERT INTO [dbo].[TTP_MAT_QUESTION] ([TTP_Code], [Mat_Question_Id]) VALUES (N'T1190', 8500)
INSERT INTO [dbo].[TTP_MAT_QUESTION] ([TTP_Code], [Mat_Question_Id]) VALUES (N'T1195', 8500)
INSERT INTO [dbo].[TTP_MAT_QUESTION] ([TTP_Code], [Mat_Question_Id]) VALUES (N'T1195', 8501)
INSERT INTO [dbo].[TTP_MAT_QUESTION] ([TTP_Code], [Mat_Question_Id]) VALUES (N'T1200', 8501)
INSERT INTO [dbo].[TTP_MAT_QUESTION] ([TTP_Code], [Mat_Question_Id]) VALUES (N'T1210', 8500)
INSERT INTO [dbo].[TTP_MAT_QUESTION] ([TTP_Code], [Mat_Question_Id]) VALUES (N'T1404', 8502)
INSERT INTO [dbo].[TTP_MAT_QUESTION] ([TTP_Code], [Mat_Question_Id]) VALUES (N'T1481', 8502)
INSERT INTO [dbo].[TTP_MAT_QUESTION] ([TTP_Code], [Mat_Question_Id]) VALUES (N'T1577', 8502)
INSERT INTO [dbo].[TTP_MAT_QUESTION] ([TTP_Code], [Mat_Question_Id]) VALUES (N'T1595.002', 8500)
INSERT INTO [dbo].[TTP_MAT_QUESTION] ([TTP_Code], [Mat_Question_Id]) VALUES (N'T1624', 8502)
INSERT INTO [dbo].[TTP_MAT_QUESTION] ([TTP_Code], [Mat_Question_Id]) VALUES (N'TA0001', 8500)
PRINT(N'Operation applied to 14 rows out of 14')

PRINT(N'Add constraints to [dbo].[TTP_MAT_QUESTION]')
ALTER TABLE [dbo].[TTP_MAT_QUESTION] WITH CHECK CHECK CONSTRAINT [FK_TTP_MAT_QUESTION_MATURITY_QUESTIONS]
ALTER TABLE [dbo].[TTP_MAT_QUESTION] WITH CHECK CHECK CONSTRAINT [FK_TTP_MAT_QUESTION_TTP]

PRINT(N'Add constraints to [dbo].[MATURITY_REFERENCE_TEXT]')
ALTER TABLE [dbo].[MATURITY_REFERENCE_TEXT] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_REFERENCE_TEXT_MATURITY_QUESTIONS]

PRINT(N'Add constraints to [dbo].[MATURITY_QUESTION_PROPS]')
ALTER TABLE [dbo].[MATURITY_QUESTION_PROPS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_QUESTION_PROPS_MATURITY_QUESTIONS]

PRINT(N'Add constraints to [dbo].[NEW_REQUIREMENT]')
ALTER TABLE [dbo].[NEW_REQUIREMENT] CHECK CONSTRAINT [FK_NEW_REQUIREMENT_NCSF_Category]
ALTER TABLE [dbo].[NEW_REQUIREMENT] WITH CHECK CHECK CONSTRAINT [FK_NEW_REQUIREMENT_QUESTION_GROUP_HEADING]
ALTER TABLE [dbo].[NEW_REQUIREMENT] CHECK CONSTRAINT [FK_NEW_REQUIREMENT_STANDARD_CATEGORY]
ALTER TABLE [dbo].[FINANCIAL_REQUIREMENTS] WITH CHECK CHECK CONSTRAINT [FK_FINANCIAL_REQUIREMENTS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[NERC_RISK_RANKING] CHECK CONSTRAINT [FK_NERC_RISK_RANKING_NEW_REQUIREMENT]
ALTER TABLE [dbo].[PARAMETER_REQUIREMENTS] CHECK CONSTRAINT [FK_Parameter_Requirements_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_LEVELS] CHECK CONSTRAINT [FK_REQUIREMENT_LEVELS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] WITH CHECK CHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_REFERENCE_TEXT] WITH CHECK CHECK CONSTRAINT [FK_REQUIREMENT_REFERENCE_TEXT_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_REFERENCES] CHECK CONSTRAINT [FK_REQUIREMENT_REFERENCES_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_SETS] CHECK CONSTRAINT [FK_REQUIREMENT_SETS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_SOURCE_FILES] CHECK CONSTRAINT [FK_REQUIREMENT_SOURCE_FILES_NEW_REQUIREMENT]

PRINT(N'Add constraints to [dbo].[MATURITY_QUESTIONS]')
ALTER TABLE [dbo].[MATURITY_QUESTIONS] CHECK CONSTRAINT [FK__MATURITY___Matur__5B638405]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_GROUPINGS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_LEVELS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] CHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_MODELS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_OPTIONS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_QUESTION_TYPES]
ALTER TABLE [dbo].[HYDRO_DATA] WITH CHECK CHECK CONSTRAINT [FK__HYDRO_DAT__Mat_Q__38652BE2]
ALTER TABLE [dbo].[ISE_ACTIONS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MAT_QUESTION_ID]
ALTER TABLE [dbo].[MATURITY_ANSWER_OPTIONS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_ANSWER_OPTIONS_MATURITY_QUESTIONS1]
ALTER TABLE [dbo].[MATURITY_REFERENCES] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_REFERENCES_MATURITY_QUESTIONS]
ALTER TABLE [dbo].[MATURITY_SOURCE_FILES] CHECK CONSTRAINT [FK_MATURITY_SOURCE_FILES_MATURITY_QUESTIONS]
ALTER TABLE [dbo].[MATURITY_SUB_MODEL_QUESTIONS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_SUB_MODEL_QUESTIONS_MATURITY_QUESTIONS]
ALTER TABLE [dbo].[MQ_BONUS] WITH CHECK CHECK CONSTRAINT [FK_mq_bonus_mat_q]
ALTER TABLE [dbo].[MQ_BONUS] WITH CHECK CHECK CONSTRAINT [FK_mq_bonus_mat_q1]

PRINT(N'Add constraints to [dbo].[CUSTOM_STANDARD_BASE_STANDARD]')
ALTER TABLE [dbo].[CUSTOM_STANDARD_BASE_STANDARD] CHECK CONSTRAINT [FK_CUSTOM_STANDARD_BASE_STANDARD_SETS]
ALTER TABLE [dbo].[CUSTOM_STANDARD_BASE_STANDARD] CHECK CONSTRAINT [FK_CUSTOM_STANDARD_BASE_STANDARD_SETS1]

PRINT(N'Add constraints to [dbo].[STATES_AND_PROVINCES]')
ALTER TABLE [dbo].[STATES_AND_PROVINCES] WITH CHECK CHECK CONSTRAINT [FK_STATES_AND_PROVINCES_COUNTRIES]

PRINT(N'Add constraints to [dbo].[SETS]')
ALTER TABLE [dbo].[SETS] WITH CHECK CHECK CONSTRAINT [FK_SETS_Sets_Category]
ALTER TABLE [dbo].[AVAILABLE_STANDARDS] WITH CHECK CHECK CONSTRAINT [FK_AVAILABLE_STANDARDS_SETS]
ALTER TABLE [dbo].[MODES_SETS_MATURITY_MODELS] WITH CHECK CHECK CONSTRAINT [FK_MODES_MATURITY_MODELS_SETS]
ALTER TABLE [dbo].[NEW_QUESTION_SETS] CHECK CONSTRAINT [FK_NEW_QUESTION_SETS_SETS]
ALTER TABLE [dbo].[REPORT_STANDARDS_SELECTION] WITH CHECK CHECK CONSTRAINT [FK_REPORT_STANDARDS_SELECTION_SETS]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] WITH CHECK CHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_SETS]
ALTER TABLE [dbo].[REQUIREMENT_SETS] CHECK CONSTRAINT [FK_QUESTION_SETS_SETS]
ALTER TABLE [dbo].[SECTOR_STANDARD_RECOMMENDATIONS] CHECK CONSTRAINT [FK_SECTOR_STANDARD_RECOMMENDATIONS_SETS]
ALTER TABLE [dbo].[SET_FILES] WITH CHECK CHECK CONSTRAINT [FK_SET_FILES_SETS]
ALTER TABLE [dbo].[STANDARD_CATEGORY_SEQUENCE] CHECK CONSTRAINT [FK_STANDARD_CATEGORY_SEQUENCE_SETS]
ALTER TABLE [dbo].[STANDARD_SOURCE_FILE] CHECK CONSTRAINT [FK_Standard_Source_File_SETS]
ALTER TABLE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] WITH CHECK CHECK CONSTRAINT [FK_UNIVERSAL_SUB_CATEGORY_HEADINGS_SETS]

PRINT(N'Add constraints to [dbo].[MATURITY_MODELS]')
ALTER TABLE [dbo].[MATURITY_MODELS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_MODELS_MATURITY_LEVEL_USAGE_TYPES]
ALTER TABLE [dbo].[ANALYTICS_MATURITY_GROUPINGS] WITH CHECK CHECK CONSTRAINT [FK_ANALYTICS_MATURITY_GROUPINGS_MATURITY_MODELS]
ALTER TABLE [dbo].[AVAILABLE_MATURITY_MODELS] WITH CHECK CHECK CONSTRAINT [FK__AVAILABLE__model__6F6A7CB2]
ALTER TABLE [dbo].[MATURITY_LEVELS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_LEVELS_MATURITY_MODELS]
ALTER TABLE [dbo].[MODES_SETS_MATURITY_MODELS] WITH CHECK CHECK CONSTRAINT [FK_MODES_SETS_MATURITY_MODELS_MATURITY_MODELS]
ALTER TABLE [dbo].[MQ_BONUS] WITH CHECK CHECK CONSTRAINT [FK_mq_bonus_mat_model]

PRINT(N'Add constraints to [dbo].[GEN_FILE]')
ALTER TABLE [dbo].[GEN_FILE] WITH CHECK CHECK CONSTRAINT [FK_GEN_FILE_FILE_REF_KEYS]
ALTER TABLE [dbo].[GEN_FILE] WITH CHECK CHECK CONSTRAINT [FK_GEN_FILE_FILE_TYPE]
ALTER TABLE [dbo].[FILE_KEYWORDS] CHECK CONSTRAINT [FILE_KEYWORDS_GEN_FILE_FK]
ALTER TABLE [dbo].[GEN_FILE_LIB_PATH_CORL] CHECK CONSTRAINT [FK_GEN_FILE_LIB_PATH_CORL_GEN_FILE]
ALTER TABLE [dbo].[MATURITY_REFERENCES] CHECK CONSTRAINT [FK_MATURITY_REFERENCES_GEN_FILE]
ALTER TABLE [dbo].[MATURITY_SOURCE_FILES] CHECK CONSTRAINT [FK_MATURITY_SOURCE_FILES_GEN_FILE]
ALTER TABLE [dbo].[REQUIREMENT_REFERENCES] CHECK CONSTRAINT [FK_REQUIREMENT_REFERENCES_GEN_FILE]
ALTER TABLE [dbo].[REQUIREMENT_SOURCE_FILES] CHECK CONSTRAINT [FK_REQUIREMENT_SOURCE_FILES_GEN_FILE]
ALTER TABLE [dbo].[SET_FILES] WITH CHECK CHECK CONSTRAINT [FK_SET_FILES_GEN_FILE]
COMMIT TRANSACTION
GO