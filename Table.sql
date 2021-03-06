USE [XSSystem]
GO
/****** Object:  Table [dbo].[xs_users]    Script Date: 07/11/2014 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xs_users](
	[user_no] [nvarchar](20) NOT NULL,
	[user_name] [nvarchar](20) NULL,
	[user_password] [nvarchar](20) NULL,
 CONSTRAINT [PK_xs_users] PRIMARY KEY CLUSTERED 
(
	[user_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xs_product_type]    Script Date: 07/11/2014 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xs_product_type](
	[product_type_id] [nvarchar](20) NOT NULL,
	[product_type_name] [nvarchar](20) NULL,
	[product_type_remark] [nvarchar](100) NULL,
 CONSTRAINT [PK_xs_producttype] PRIMARY KEY CLUSTERED 
(
	[product_type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xs_product]    Script Date: 07/11/2014 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xs_product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_title] [nvarchar](100) NULL,
	[product_remark] [nvarchar](200) NULL,
	[product_content] [text] NULL,
	[product_imgurl] [nvarchar](200) NULL,
	[product_type_id] [nvarchar](20) NULL,
	[product_create_time] [datetime] NULL,
	[product_create_user] [nvarchar](20) NULL,
	[product_update_time] [datetime] NULL,
	[product_update_user] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xs_new_type]    Script Date: 07/11/2014 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xs_new_type](
	[new_type_id] [nvarchar](20) NOT NULL,
	[new_type_name] [nvarchar](20) NULL,
	[new_type_remark] [nvarchar](50) NULL,
 CONSTRAINT [PK_xs_new_type] PRIMARY KEY CLUSTERED 
(
	[new_type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xs_new]    Script Date: 07/11/2014 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xs_new](
	[new_id] [int] IDENTITY(1,1) NOT NULL,
	[new_title] [nvarchar](100) NULL,
	[new_content] [text] NULL,
	[create_time] [datetime] NULL,
	[create_user] [nvarchar](20) NULL,
	[update_user] [nvarchar](20) NULL,
	[update_time] [datetime] NULL,
	[new_type_id] [nvarchar](20) NULL,
	[new_sort] [nchar](1) NULL,
 CONSTRAINT [PK_xs_new] PRIMARY KEY CLUSTERED 
(
	[new_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xs_main]    Script Date: 07/11/2014 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xs_main](
	[main_id] [nvarchar](20) NOT NULL,
	[main_name] [nvarchar](10) NULL,
	[main_content] [nvarchar](max) NULL,
	[updateuser] [nvarchar](20) NULL,
	[updatetime] [datetime] NULL,
 CONSTRAINT [pk_mainid] PRIMARY KEY NONCLUSTERED 
(
	[main_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xs_leave]    Script Date: 07/11/2014 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xs_leave](
	[leave_id] [int] IDENTITY(1,1) NOT NULL,
	[leave_Content] [nvarchar](500) NULL,
	[leave_time] [datetime] NULL,
	[leave_contact] [nvarchar](50) NULL,
	[leave_user] [nvarchar](10) NULL,
 CONSTRAINT [PK_xs_leave] PRIMARY KEY CLUSTERED 
(
	[leave_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xs_hire_template]    Script Date: 07/11/2014 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xs_hire_template](
	[hire_template_id] [int] IDENTITY(1,1) NOT NULL,
	[hire_template_name] [nvarchar](20) NULL,
	[hire_template_content] [nvarchar](max) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xs_hire]    Script Date: 07/11/2014 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xs_hire](
	[hire_id] [nvarchar](20) NOT NULL,
	[hire_name] [nvarchar](20) NULL,
	[hire_count] [nvarchar](10) NULL,
	[hire_place] [nvarchar](20) NULL,
	[hire_remark] [nvarchar](max) NULL,
	[hire_time] [datetime] NULL,
 CONSTRAINT [PK_xs_hire] PRIMARY KEY CLUSTERED 
(
	[hire_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xs_group_user]    Script Date: 07/11/2014 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xs_group_user](
	[group_id] [nvarchar](20) NULL,
	[user_no] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_xs_group_user] PRIMARY KEY CLUSTERED 
(
	[user_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xs_group_function]    Script Date: 07/11/2014 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xs_group_function](
	[group_id] [nvarchar](20) NOT NULL,
	[function_id] [nvarchar](20) NOT NULL,
	[group_action] [nvarchar](100) NULL,
 CONSTRAINT [PK_xs_group_function] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC,
	[function_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xs_group]    Script Date: 07/11/2014 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xs_group](
	[group_id] [nvarchar](20) NOT NULL,
	[group_name] [nvarchar](50) NULL,
	[group_remark] [nvarchar](100) NULL,
 CONSTRAINT [PK_xs_group] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[xs_function]    Script Date: 07/11/2014 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xs_function](
	[function_id] [nvarchar](20) NOT NULL,
	[function_brother_id] [nvarchar](20) NOT NULL,
	[function_name] [nvarchar](50) NULL,
	[function_url] [nvarchar](200) NULL,
	[function_level] [int] NULL,
	[function_sort] [int] NULL,
	[function_action] [nvarchar](100) NULL,
	[function_parent_id] [nvarchar](20) NULL,
	[function_inmenu] [bit] NULL,
 CONSTRAINT [PK_xs_function] PRIMARY KEY CLUSTERED 
(
	[function_id] ASC,
	[function_brother_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 equals in menu,1 equals not in menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xs_function', @level2type=N'COLUMN',@level2name=N'function_inmenu'
GO
/****** Object:  Table [dbo].[xs_action]    Script Date: 07/11/2014 17:58:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xs_action](
	[action_id] [nchar](2) NOT NULL,
	[action_name] [nvarchar](10) NULL,
 CONSTRAINT [PK_xs_action] PRIMARY KEY CLUSTERED 
(
	[action_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[f_ConvertDate]    Script Date: 07/11/2014 17:58:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[f_ConvertDate](@Date datetime)
returns  nvarchar(max)
as
begin
declare @Return nvarchar(max)
set @Return=(select Convert(varchar,@Date,120))
return (@Return)
end
GO
/****** Object:  Default [DF_xs_hire_hire_time]    Script Date: 07/11/2014 17:58:31 ******/
ALTER TABLE [dbo].[xs_hire] ADD  CONSTRAINT [DF_xs_hire_hire_time]  DEFAULT (getdate()) FOR [hire_time]
GO
/****** Object:  Default [DF_xs_leave_leave_time]    Script Date: 07/11/2014 17:58:31 ******/
ALTER TABLE [dbo].[xs_leave] ADD  CONSTRAINT [DF_xs_leave_leave_time]  DEFAULT (getdate()) FOR [leave_time]
GO
/****** Object:  Default [DF_xs_main_updatetime]    Script Date: 07/11/2014 17:58:31 ******/
ALTER TABLE [dbo].[xs_main] ADD  CONSTRAINT [DF_xs_main_updatetime]  DEFAULT (getdate()) FOR [updatetime]
GO
/****** Object:  Default [DF_xs_new_create_time]    Script Date: 07/11/2014 17:58:31 ******/
ALTER TABLE [dbo].[xs_new] ADD  CONSTRAINT [DF_xs_new_create_time]  DEFAULT (getdate()) FOR [create_time]
GO
/****** Object:  Default [DF_xs_producttime]    Script Date: 07/11/2014 17:58:31 ******/
ALTER TABLE [dbo].[xs_product] ADD  CONSTRAINT [DF_xs_producttime]  DEFAULT (getdate()) FOR [product_create_time]
GO
