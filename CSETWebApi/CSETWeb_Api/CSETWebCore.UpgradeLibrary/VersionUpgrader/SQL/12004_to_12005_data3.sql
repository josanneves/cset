/*
Run this script on:

(localdb)\MSSQLLocalDB.CSETWeb12004    -  This database will be modified

to synchronize it with:

(localdb)\MSSQLLocalDB.CSETWeb12005

You are recommended to back up your database before running this script

Script created by SQL Data Compare version 14.5.22.19589 from Red Gate Software Ltd at 10/19/2022 2:26:18 PM

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

PRINT(N'Drop constraints from [dbo].[MATURITY_QUESTIONS]')
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK__MATURITY___Matur__5B638405]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_GROUPINGS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_LEVELS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_MODELS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_OPTIONS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_QUESTION_TYPES]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_QUESTIONS]

PRINT(N'Drop constraint FK_MATURITY_QUESTIONS_MAT_QUESTION_ID from [dbo].[ISE_ACTIONS]')
ALTER TABLE [dbo].[ISE_ACTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MAT_QUESTION_ID]

PRINT(N'Drop constraint FK_MATURITY_ANSWER_OPTIONS_MATURITY_QUESTIONS1 from [dbo].[MATURITY_ANSWER_OPTIONS]')
ALTER TABLE [dbo].[MATURITY_ANSWER_OPTIONS] NOCHECK CONSTRAINT [FK_MATURITY_ANSWER_OPTIONS_MATURITY_QUESTIONS1]

PRINT(N'Drop constraint FK_MATURITY_REFERENCE_TEXT_MATURITY_QUESTIONS from [dbo].[MATURITY_REFERENCE_TEXT]')
ALTER TABLE [dbo].[MATURITY_REFERENCE_TEXT] NOCHECK CONSTRAINT [FK_MATURITY_REFERENCE_TEXT_MATURITY_QUESTIONS]

PRINT(N'Drop constraint FK_MATURITY_REFERENCES_MATURITY_QUESTIONS from [dbo].[MATURITY_REFERENCES]')
ALTER TABLE [dbo].[MATURITY_REFERENCES] NOCHECK CONSTRAINT [FK_MATURITY_REFERENCES_MATURITY_QUESTIONS]

PRINT(N'Drop constraint FK_MATURITY_SOURCE_FILES_MATURITY_QUESTIONS from [dbo].[MATURITY_SOURCE_FILES]')
ALTER TABLE [dbo].[MATURITY_SOURCE_FILES] NOCHECK CONSTRAINT [FK_MATURITY_SOURCE_FILES_MATURITY_QUESTIONS]

PRINT(N'Update rows in [dbo].[MATURITY_QUESTIONS]')
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Parent_Question_Id]=7633 WHERE [Mat_Question_Id] = 7634
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Parent_Question_Id]=7633 WHERE [Mat_Question_Id] = 7635
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Parent_Question_Id]=7633 WHERE [Mat_Question_Id] = 7636
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Parent_Question_Id]=7633 WHERE [Mat_Question_Id] = 7637
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Parent_Question_Id]=7633 WHERE [Mat_Question_Id] = 7638
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Parent_Question_Id]=7633 WHERE [Mat_Question_Id] = 7711
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Parent_Question_Id]=7633 WHERE [Mat_Question_Id] = 7712
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Parent_Question_Id]=7633 WHERE [Mat_Question_Id] = 7713
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Parent_Question_Id]=7633 WHERE [Mat_Question_Id] = 7714
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Parent_Question_Id]=7633 WHERE [Mat_Question_Id] = 7715
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Parent_Question_Id]=7633 WHERE [Mat_Question_Id] = 7716
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Parent_Question_Id]=7633 WHERE [Mat_Question_Id] = 7717
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Parent_Question_Id]=7633 WHERE [Mat_Question_Id] = 7718
PRINT(N'Operation applied to 13 rows out of 13')

PRINT(N'Add constraints to [dbo].[MATURITY_QUESTIONS]')
ALTER TABLE [dbo].[MATURITY_QUESTIONS] CHECK CONSTRAINT [FK__MATURITY___Matur__5B638405]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_GROUPINGS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_LEVELS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] CHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_MODELS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_OPTIONS]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_QUESTION_TYPES]
ALTER TABLE [dbo].[ISE_ACTIONS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MAT_QUESTION_ID]
ALTER TABLE [dbo].[MATURITY_ANSWER_OPTIONS] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_ANSWER_OPTIONS_MATURITY_QUESTIONS1]
ALTER TABLE [dbo].[MATURITY_REFERENCE_TEXT] WITH CHECK CHECK CONSTRAINT [FK_MATURITY_REFERENCE_TEXT_MATURITY_QUESTIONS]
ALTER TABLE [dbo].[MATURITY_REFERENCES] CHECK CONSTRAINT [FK_MATURITY_REFERENCES_MATURITY_QUESTIONS]
ALTER TABLE [dbo].[MATURITY_SOURCE_FILES] CHECK CONSTRAINT [FK_MATURITY_SOURCE_FILES_MATURITY_QUESTIONS]
COMMIT TRANSACTION
GO
