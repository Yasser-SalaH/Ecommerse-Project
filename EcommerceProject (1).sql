USE [EcommerceProject]
GO
/****** Object:  Table [dbo].[AboutUs]    Script Date: 2/28/2020 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutUs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Vision] [nvarchar](max) NOT NULL,
	[Mission] [nvarchar](max) NOT NULL,
	[WhoAreWe] [nvarchar](500) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_AboutUs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Brand]    Script Date: 2/28/2020 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 2/28/2020 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Color]    Script Date: 2/28/2020 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Code] [nvarchar](150) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactMesaage]    Script Date: 2/28/2020 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactMesaage](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ContactMesaage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 2/28/2020 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUs](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[address] [nvarchar](500) NOT NULL,
	[facebook] [nvarchar](150) NULL,
	[phone] [nvarchar](15) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ContactUs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 2/28/2020 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [bigint] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[TotalPrice] [bigint] NOT NULL,
	[UserAddressFK] [bigint] NOT NULL,
	[UserFK] [bigint] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2/28/2020 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Price] [bigint] NOT NULL,
	[TotalPrice] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderFK] [bigint] NOT NULL,
	[ProductFK] [bigint] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/28/2020 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Price] [bigint] NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Decription] [nvarchar](500) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
	[SubCatFK] [bigint] NULL,
	[CatFK] [bigint] NOT NULL,
	[BrandFK] [bigint] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductColor]    Script Date: 2/28/2020 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductColor](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[ProductFK] [bigint] NOT NULL,
	[ColorFk] [bigint] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ProductColor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 2/28/2020 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [bigint] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 2/28/2020 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
	[CategoryFK] [bigint] NOT NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 2/28/2020 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[RoleFK] [bigint] NOT NULL,
	[CreatedBy] [bigint] NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAddress]    Script Date: 2/28/2020 1:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAddress](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[phone] [nvarchar](15) NOT NULL,
	[UserFK] [bigint] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_UserAddress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AboutUs]  WITH CHECK ADD  CONSTRAINT [FK_AboutUs_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[AboutUs] CHECK CONSTRAINT [FK_AboutUs_User]
GO
ALTER TABLE [dbo].[AboutUs]  WITH CHECK ADD  CONSTRAINT [FK_AboutUs_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[AboutUs] CHECK CONSTRAINT [FK_AboutUs_User1]
GO
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD  CONSTRAINT [FK_Brand_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Brand] CHECK CONSTRAINT [FK_Brand_User]
GO
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD  CONSTRAINT [FK_Brand_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Brand] CHECK CONSTRAINT [FK_Brand_User1]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_User]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_User1]
GO
ALTER TABLE [dbo].[Color]  WITH CHECK ADD  CONSTRAINT [FK_Color_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Color] CHECK CONSTRAINT [FK_Color_User]
GO
ALTER TABLE [dbo].[Color]  WITH CHECK ADD  CONSTRAINT [FK_Color_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Color] CHECK CONSTRAINT [FK_Color_User1]
GO
ALTER TABLE [dbo].[ContactMesaage]  WITH CHECK ADD  CONSTRAINT [FK_ContactMesaage_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ContactMesaage] CHECK CONSTRAINT [FK_ContactMesaage_User]
GO
ALTER TABLE [dbo].[ContactMesaage]  WITH CHECK ADD  CONSTRAINT [FK_ContactMesaage_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ContactMesaage] CHECK CONSTRAINT [FK_ContactMesaage_User1]
GO
ALTER TABLE [dbo].[ContactUs]  WITH CHECK ADD  CONSTRAINT [FK_ContactUs_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ContactUs] CHECK CONSTRAINT [FK_ContactUs_User]
GO
ALTER TABLE [dbo].[ContactUs]  WITH CHECK ADD  CONSTRAINT [FK_ContactUs_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ContactUs] CHECK CONSTRAINT [FK_ContactUs_User1]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserFK])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User1]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User2] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User2]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_UserAddress] FOREIGN KEY([UserAddressFK])
REFERENCES [dbo].[UserAddress] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_UserAddress]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([OrderFK])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY([ProductFK])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Product]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_User]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_User1]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([BrandFK])
REFERENCES [dbo].[Brand] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CatFK])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_SubCategory] FOREIGN KEY([SubCatFK])
REFERENCES [dbo].[SubCategory] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_SubCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_User1]
GO
ALTER TABLE [dbo].[ProductColor]  WITH CHECK ADD  CONSTRAINT [FK_ProductColor_Color] FOREIGN KEY([ColorFk])
REFERENCES [dbo].[Color] ([ID])
GO
ALTER TABLE [dbo].[ProductColor] CHECK CONSTRAINT [FK_ProductColor_Color]
GO
ALTER TABLE [dbo].[ProductColor]  WITH CHECK ADD  CONSTRAINT [FK_ProductColor_Product] FOREIGN KEY([ProductFK])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductColor] CHECK CONSTRAINT [FK_ProductColor_Product]
GO
ALTER TABLE [dbo].[ProductColor]  WITH CHECK ADD  CONSTRAINT [FK_ProductColor_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ProductColor] CHECK CONSTRAINT [FK_ProductColor_User]
GO
ALTER TABLE [dbo].[ProductColor]  WITH CHECK ADD  CONSTRAINT [FK_ProductColor_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ProductColor] CHECK CONSTRAINT [FK_ProductColor_User1]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Category] FOREIGN KEY([CategoryFK])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Category]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_User]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_User1]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleFK])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_User] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_User1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_User1]
GO
ALTER TABLE [dbo].[UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_UserAddress_User] FOREIGN KEY([UserFK])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserAddress] CHECK CONSTRAINT [FK_UserAddress_User]
GO
ALTER TABLE [dbo].[UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_UserAddress_User1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserAddress] CHECK CONSTRAINT [FK_UserAddress_User1]
GO
ALTER TABLE [dbo].[UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_UserAddress_User2] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserAddress] CHECK CONSTRAINT [FK_UserAddress_User2]
GO
