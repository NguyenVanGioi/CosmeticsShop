USE [NYP]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/14/2023 11:35:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 5/14/2023 11:35:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FromUserID] [int] NULL,
	[ToUserID] [int] NULL,
	[Content] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[Send] [bit] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 5/14/2023 11:35:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[ProductName] [nvarchar](100) NULL,
	[ProductPrice] [int] NULL,
	[Quantity] [int] NULL,
	[OrderID] [int] NULL,
	[ProductImage] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/14/2023 11:35:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[DateOrder] [datetime] NULL,
	[DateShip] [datetime] NULL,
	[IsPaid] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/14/2023 11:35:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Price] [int] NULL,
	[CreatedBy] [int] NULL,
	[ViewCount] [int] NULL,
	[Image1] [nvarchar](500) NULL,
	[Image2] [nvarchar](500) NULL,
	[Image3] [nvarchar](500) NULL,
	[Quantity] [int] NULL,
	[PurchasedCount] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[CategoryID] [int] NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/14/2023 11:35:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](11) NULL,
	[UserTypeID] [int] NULL,
	[MK] [nvarchar](50) NULL,
	[Avatar] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[IsConfirm] [bit] NULL,
	[Captcha] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 5/14/2023 11:35:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (1, N'Bia, nước ngọt, nước ép trái cây', 1)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (2, N'Mì ăn liền, miến, hủ tiếu, phở', 1)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (3, N'Dầu ăn, nước mắm, nước tương', 1)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (4, N'Sữa tươi, sữa đặc, ngũ cốc', 1)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (5, N'Dầu gội, sữa tắm, dầu xả', 1)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (6, N'Bột giặt, nước xả, nước rửa chén', 1)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (7, N'Khăn giấy, dĩa, đũa, dao', 1)
INSERT [dbo].[Categories] ([ID], [Name], [IsActive]) VALUES (8, N'Ăn vặt', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (9, 1, N'Bia Tiger lon 330ml', 17900, 5, 1, N'tiger1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (10, 2, N'Bia Sài Gòn Special Sleek lon 330ml', 15000, 5, 1, N'saigon1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (11, 20, N'Sữa dinh dưỡng có đường Vinamilk Happy Star bịch 220ml', 7400, 1, 2, N'vinamilk1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (12, 8, N'Mì 3 Miền tôm chua cay gói 65g', 3500, 1, 2, N'3mien1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (13, 18, N'Nước tương đậm đặc Nam Dương chính hiệu Con Mèo Đen chai 500ml', 15600, 1, 2, N'namduong1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (14, 20, N'Sữa dinh dưỡng có đường Vinamilk Happy Star bịch 220ml', 7400, 1, 3, N'vinamilk1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (15, 8, N'Mì 3 Miền tôm chua cay gói 65g', 3500, 1, 3, N'3mien1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (16, 18, N'Nước tương đậm đặc Nam Dương chính hiệu Con Mèo Đen chai 500ml', 15600, 1, 3, N'namduong1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (17, 36, N'Nước rửa chén Gift hương chanh chai 800g', 25000, 1, 4, N'gift1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (18, 44, N'Kem vani socola Merino Super Teen cây 60g', 13000, 1, 4, N'merino1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (19, 22, N'Kem đặc có đường Ngôi sao Phương Nam Xanh lá hộp 380g', 19500, 1, 4, N'ngoisao1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (20, 6, N'Nước ép táo Vfresh 1 lít', 41000, 1, 4, N'tao1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (21, 12, N'Phở bò Đệ Nhất gói 65g', 8200, 1, 4, N'denhat1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (22, 10, N'Miến sườn heo Vifon gói 58g', 10500, 1, 4, N'mien1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (23, 1, N'Bia Tiger', 17900, 5, 5, N'tiger1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (24, 2, N'Bia Sài Gòn Special Sleek', 15000, 5, 5, N'saigon1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (25, 1, N'Bia Tiger', 17900, 5, 6, N'tiger1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (26, 2, N'Bia Sài Gòn Special Sleek', 15000, 5, 6, N'saigon1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (27, 1, N'Bia Tiger', 17900, 5, 7, N'tiger1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (28, 1, N'Bia Tiger', 17900, 6, 8, N'tiger1.png')
INSERT [dbo].[OrderDetails] ([ID], [ProductID], [ProductName], [ProductPrice], [Quantity], [OrderID], [ProductImage]) VALUES (29, 3, N'Nước tăng lực Sting dâu', 10500, 3, 8, N'sting1.png')
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (1, 6, N'Complete', CAST(N'2023-05-14T11:57:46.163' AS DateTime), CAST(N'2023-05-14T14:57:46.163' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (2, 6, N'Delivering', CAST(N'2023-05-14T18:19:01.117' AS DateTime), CAST(N'2023-05-17T21:42:19.590' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (3, 6, N'Delivering', CAST(N'2023-05-13T18:19:17.833' AS DateTime), CAST(N'2023-05-17T21:57:33.300' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (4, 6, N'Delivering', CAST(N'2023-05-14T19:06:24.257' AS DateTime), CAST(N'2023-05-17T19:15:34.237' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (5, 6, N'Delivering', CAST(N'2023-05-14T21:39:47.333' AS DateTime), CAST(N'2023-05-17T22:42:41.100' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (6, 6, N'Processed', CAST(N'2023-05-14T21:54:02.497' AS DateTime), CAST(N'2023-05-17T21:57:17.437' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (7, 6, N'Processed', CAST(N'2023-05-14T22:36:56.033' AS DateTime), CAST(N'2023-05-17T22:42:26.633' AS DateTime), 0)
INSERT [dbo].[Orders] ([ID], [UserID], [Status], [DateOrder], [DateShip], [IsPaid]) VALUES (8, 6, N'Delivering', CAST(N'2023-05-14T23:06:42.160' AS DateTime), CAST(N'2023-05-17T23:11:50.270' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (1, N'Bia Tiger', 17900, 1, 0, N'tiger1.png', N'tiger2.png', N'tiger3.png', 120, 48, N'Loại bia hương vị truyền thống, quen thuộc hay còn gọi là bia Tiger nâu được lên men tự nhiên từ các thành phần chính nước, đại mạch, ngũ cốc và hoa bia. Bia Tiger nâu lon 330ml có hương vị độc đáo và rất riêng của Tiger, đậm đà kết hợp với vị ngọt tự nhiên của lúa mạch. ', 1, 1, N'Combination')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (2, N'Bia Sài Gòn Special Sleek', 15000, 1, 0, N'saigon1.png', N'saigon2.png', N'saigon3.png', 120, 24, N'Sản phẩm bia ngon chất lượng từ nước, malt đại mạch và hoa bia, cam kết kết chính hãng thương hiệu bia Sài Gòn. Bia Sài Gòn Special Sleek 330ml đã quá quen thuộc với người dân Việt Nam với hương vị thơm ngon, đậm đà, nay thiết kế lon cao thanh lịch sang trọng mang đến sự đẳng cấp hơn', 1, 1, N'Combination')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (3, N'Nước tăng lực Sting dâu', 10500, 1, 0, N'sting1.png', N'sting2.png', N'sting3.png', 100, 10, N'Nước tăng lực Sting với mùi vị thơm ngon, sảng khoái, bổ sung hồng sâm chất lượng. Sting giúp cơ thể bù đắp nước, bổ sung năng lượng, vitamin C và E, giúp xua tan cơn khát và cảm giác mệt mỏi cùng dâu cho nhẹ nhàng và dễ chịu. Cam kết chính hãng, chất lượng và an toàn', 1, 1, N'Combination')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (4, N'Nước ngọt Coca Cola', 10600, 1, 0, N'coca1.png', N'coca2.png', N'coca3.png', 100, 15, N'Là loại nước ngọt được nhiều người yêu thích với hương vị thơm ngon, sảng khoái. Nước ngọt Coca Cola 320ml chính hãng nước ngọt Coca Cola với lượng gas lớn sẽ giúp bạn xua tan mọi cảm giác mệt mỏi, căng thẳng, đem lại cảm giác thoải mái sau khi hoạt động ngoài trời.', 1, 1, N'Combination')
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (5, N'Nước ép lựu & táo Vinamilk ', 60000, 1, 0, N'luu1.png', N'luu2.png', N'luu3.png', 36, 10, N'Nước trái cây chính hãng nước ép Vinamilk an toàn và đảm bảo sức khỏe. Nước trái cây Vinamilk Vfresh hương táo lựu 1 lít với dưỡng chất tinh túy từ thiên nhiên và giữ trọn vị ngọt tự nhiên giàu chất dinh dưỡng cho cơ thể khỏe mạnh và tràn đầy năng lượng.', 1, 1, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (6, N'Nước ép táo Vfresh', 41000, 1, 0, N'tao1.png', N'tao2.png', N'tao3.png', 36, 12, N'Sản phẩm nước ép trái cây từ thương hiệu nước ép Vfresh được làm từ nguyên liệu tự nhiên tươi ngon có hương vị ngọt dịu, thơm mát từ những trái táo tươi ngon, sản phẩm chứa nhiều khoáng chất, dinh dưỡng, chất chống oxy hóa, lượng vitamin C cao tốt cho sức khỏe', 1, 1, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (7, N'Mì Hảo Hảo vị tôm chua cay', 4400, 1, 0, N'mihaohao1.png', N'mihaohao2.png', N'mihaohao3.png', 50, 11, N'Mì ăn liền dai ngon hòa quyện trong nước súp tôm chua cay, đậm đà chính hãng mì Hảo Hảo, hương thơm quyến rũ ngất ngây. Mì Hảo Hảo vị tôm chua cay gói 75g là lựa chọn hấp dẫn không thể bỏ qua đặc biệt là cho những ngày bận rộn cần bổ sung năng lượng nhanh chóng đơn giản mà vẫn đủ chất', 1, 2, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (8, N'Mì 3 Miền tôm chua cay', 3500, 1, 0, N'3mien1.png', N'3mien2.png', N'3mien3.png', 50, 18, N'Mì ăn liền chính hãng mì 3 Miền sở hữu nét đậm đà chuẩn hương vị truyền thống. Mì 3 Miền tôm chua cay gói 65g có được vị chua cay từ quá trình tìm tòi cũng như chắt lọc các nét đặc trưng nhất của các món chua cay dọc 3 miền tổ quốc mang đến hương vị tinh tế nhất và tuyệt hảo nhất', 1, 2, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (9, N'Hủ tiếu Nam Vang Nhịp Sống', 9400, 1, 0, N'hutieu1.png', N'hutieu2.png', N'hutieu3.png', 50, 9, N'Bữa ăn cực tiện lợi và thơm ngon. Hủ tiếu Nam Vang Nhịp Sống gói 70g là sản phẩm hủ tiếu ăn liền của thương hiệu hủ tiếu Nhịp sống với hương vị hủ tiếu Nam Vang đậm đà thấm đều trong từng sợi hủ tiếu dai ngon cực đã cùng mùi hương hấp dẫn lôi cuốn không thể chối từ', 1, 2, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (10, N'Miến sườn heo Vifon', 10500, 1, 0, N'mien1.png', N'mien2.png', N'mien3.png', 50, 13, N'Miến ăn liền chuẩn vị thơm ngon, chính hãng miến Vifon với cam kết không sử dụng phẩm màu tổng hợp. Miến sườn heo Vifon gói 58g được bổ sung tinh bột đậu xanh dinh dưỡng trong từng sợi hòa quyện hài hòa cùng nước súp vị sườn heo đậm đà mang đến cho gia định bạn bữa ăn ngon, hợp khẩu vị', 1, 2, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (11, N'Phở bò Vifon ', 8400, 1, 0, N'vifon1.png', N'vifon2.png', N'vifon3.png', 50, 15, N'Phở ăn liền sản xuất theo công nghệ hiện đại dưới sự giám sát và kiểm tra nghiêm ngặt của các chuyên gia thực phẩm hàng đầu của phở Vifon phở ngon top 10 thế giới, sản phẩm không chứa chất bảo quản, đảm bảo an toàn cho sức khỏe. Phở bò Vifon gói 65g lựa chọn hoàn hảo cho bữa ăn tiện lợi, dinh dưỡng', 1, 2, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (12, N'Phở bò Đệ Nhất ', 8200, 1, 0, N'denhat1.png', N'denhat2.png', N'denhat3.png', 50, 12, N'Từng sợi phở mềm dai đắm mình trong nước súp phở Đệ Nhất thơm ngon tuyệt hảo. Phở bò Đệ Nhất gói 65g là sự kết hợp hài hòa, tỉ mỉ của các gia vị phở truyền thống, cùng nước cốt thịt bò và nhiều hành lá tươi ngon, bạn sẽ được thưởng thức tô phở ngon như phở quán dù ở nhà hay bất cứ nơi đâu.', 1, 2, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (13, N'Dầu ăn Happi Koki', 49000, 1, 0, N'koki1.png', N'koki2.png', N'koki3.png', 20, 5, N'Dầu ăn cao cấp Happy Koki chai 1 lít là sản phẩm dầu ăn có nguồn gốc 100% từ thực vật thích hợp chế biến thực phẩm từ chiên, xào, ướp các món mặn cho đến món chay. Dầu ăn Happi Koki không chứa cholesterol, không axit béo cấu hình Trans, giàu vitamin A, E và Omega 3, 6, 9, an toàn cho sức khỏe.', 1, 3, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (14, N'Dầu ăn Neptune Light ', 68000, 1, 0, N'neptune1.png', N'neptune2.png', N'neptune3.png', 20, 6, N'Là dòng dầu ăn thượng hạng của thương hiệu dầu ăn Neptune. Sản phẩm Dầu ăn thượng hạng Neptune Light can 1 lít không chứa cholesterol, đặc biệt với công thức Healthy GP giúp cơ thể giảm hấp thụ cholesterol từ thực phẩm, nên rất an toàn cho sức khỏe.', 1, 3, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (15, N'Nước chấm Nam Ngư Đệ Nhị', 25000, 1, 0, N'namngu1.png', N'namngu2.pnng', N'namngu3.png', 20, 5, N'Nước mắm Nam Ngư là thương hiệu nước mắm rất nổi tiếng tại Việt Nam. Nước chấm Nam Ngư đệ nhị chai 900ml với thành phần cá cơm tươi ngon cùng với công thức pha chế đặc biệt, mang đến những bữa ăn trọn vẹn, đảm bảo an toàn cho gia đình.', 1, 3, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (16, N'Nước mắm hương cá hồi  Chinsu', 50500, 1, 0, N'chinsu1.png', N'chinsu2.png', N'chinsu3.png', 20, 4, N'Là loại nước mắm hảo hạng với hương thơm cá hồi đặc trưng đậm đà, tròn vị, dậy mùi thơm, thích hợp chấm, ướp, nấu đều ngon đến từ thương hiệu nước mắm Chinsu. Nước mắm hương cá hồi hảo hạng Chinsu chai 500ml luôn được tin dùng bởi hàng triệu gia đình Việt.', 1, 3, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (17, N'Nước tương đậu nành Maggi', 34500, 1, 0, N'maggi1.png', N'maggi2.png', N'maggi3.png', 20, 10, N'Với hương vị thanh ngon đặc trưng trong từng giọt nước tương sánh đậm, để lại dư vị tinh tế cho từng món ăn. Nước tương Maggi Đậm đặc chai 700ml với tinh chất đậu nành đậm đặc, sử dụng công nghệ lên men tự nhiên 100% giúp giữ lại vị ngon tinh túy đến từ thương hiệu nước tương Maggi.', 1, 3, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (18, N'Nước tương  Nam Dương Con Mèo Đen', 15600, 1, 0, N'namduong1.png', N'namduong2.png', N'namduong3.png', 20, 16, N'Là loại nước tương quen thuộc với các bà nội trợ từ thương hiệu nước tương Nam Dương. Nước tương đậm đặc Nam Dương 500ml bổ sung vi chất sắt cùng với vị ngọt thanh, thơm dịu của nước tương truyền thống mang đến hương vị thơm ngon, bổ dưỡng cho món ăn.', 1, 3, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (19, N'Lốc 4 hộp sữa tươi Dutch Lady', 28500, 1, 0, N'lady1.png', N'lady2.png', N'lady3.png', 25, 6, N'Sữa tươi Dutch Lady sử dụng nguyên liệu là sữa tươi, bổ sung protein, phốt pho, Vitamin B2 và B12 cùng nhiều vitamin và khoáng chất trong sữa tươi cần thiết cho cơ thể. Lốc 4 hộp sữa tươi tiệt trùng có đường Dutch Lady 180ml bán lốc 4 tiện sử dụng, tiết kiệm, thêm đường dễ uống.', 1, 4, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (20, N'Sữa dinh dưỡng Vinamilk Happy Star', 7400, 1, 0, N'vinamilk1.png', N'vinamilk2.png', N'vinamilk3.png', 48, 24, N'Được chế biến từ nguồn sữa tươi 100% chứa nhiều dưỡng chất như vitamin A, D3, canxi,... tốt cho xương và hệ miễn dịch, sữa tươi Vinamilk là thương hiệu được tin dùng hàng đầu với chất lượng tuyệt vời. Sữa dinh dưỡng có đường Vinamilk Happy Star bịch 220ml bổ dưỡng, thơm ngon', 1, 4, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (21, N'Sữa đặc có đường Ông Thọ', 25000, 1, 0, N'ongtho1.png', N'ongtho2.png', N'ongtho3.png', 24, 9, N'Sữa đặc Ông Thọ với vị thơm ngon, sánh đặc, là bí quyết giúp mẹ có những món ăn ngon, chăm sóc cho cả gia đình. Sữa đặc có đường Ông Thọ trắng nhãn xanh hộp 380g ngọt đậm và có hàm lượng chất béo khá cao. Ngoài ra, sữa đặc còn là nguồn nguyên liệu hoàn hảo để làm món ăn, thức uống khác.', 1, 4, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (22, N'Sữa đặc Ngôi sao Phương Nam', 19500, 1, 0, N'ngoisao1.png', N'ngoisao2.png', N'ngoisao3.png', 24, 13, N'Sữa đặc Ngôi sao Phương Nam xanh lá đậm đà đặc sánh, mang lại hương vị hài hòa, thơm béo. Sữa đặc là nguồn nguyên liệu lý tưởng dùng để pha sữa, chấm bánh mì,.. thơm ngon tuyệt vời. Kem đặc có đường Ngôi sao Phương Nam xanh lá hộp 380g ngọt và béo nhất so với các sản phẩm cùng loại.', 1, 4, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (23, N'Ngũ cốc dinh dưỡng VinaCafé B''fast', 67500, 1, 0, N'vinacafe1.png', N'vinacafe2.png', N'vinacafe3.png', 15, 5, N'Ngũ cốc VinaCafé B''fast là nguồn bổ sung canxi cho gia đình mỗi ngày. Ngoài ra, ngũ cốc còn giúp cung cấp thêm chất đạm, chất xơ, phốt phát, carbohydrate,.. có thể dùng thay thế bữa ăn nhẹ cho cả nhà. Ngũ cốc dinh dưỡng VinaCafé B''fast Kachi bịch 500g có 20 gói nhỏ tiện dùng, dễ pha', 1, 4, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (24, N'Thức uống dinh dưỡng Ovaltin', 66000, 1, 0, N'ovatine1.png', N'ovatine2.png', N'ovatine3.png', 15, 10, N'Sản phẩm ngũ cốc của thương hiệu yến mạch, ngũ cốc Ovaltine nổi tiếng với chất lượng tuyệt vời và nguồn dinh dưỡng dồi dào cho trẻ. Đặc biệt, thức uống dinh dưỡng Ovaltine hũ 400g giúp phát triển não bộ nhờ cung cấp 10 loại vitamin và nhiều dưỡng chất khác.', 1, 4, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (25, N'Dầu gội sạch gàu Clear', 168000, 1, 0, N'clear1.png', N'clear2.png', N'clear.png', 20, 6, N'Dầu gội Clear thương hiệu Hà Lan, là dầu gội làm sạch gàu số 1 Việt Nam. Dầu gội Clear mát lạnh bạc hà 854ml với công nghệ sạch gàu 3 tác động: loại bỏ gàu, tấn công gàu, ngăn gàu tái phát và Vitamin B3 nuôi dưỡng da dầu khoẻ hơn.', 1, 5, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (26, N'Dầu gội TRESemmé Keratin Smooth', 198000, 1, 0, N'tresemme1.png', N'tresemme2.png', N'tresemme3.png', 15, 5, N'Dầu gội TRESemmé là loại dầu gội chăm sóc tóc chuẩn salon. Dầu gội TRESemmé Keratin Smooth tinh dầu Argan 850g công thức chứa keratin protein và vitamin sẽ giúp nuôi dưỡng và bảo vệ  từng sợi tóc của bạn đồng thời giảm thiểu những tác hại hư tổn do thuốc nhuộm tóc.', 1, 5, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (27, N'Sữa tắm bảo vệ khỏi vi khuẩn Lifebuo', 167000, 1, 0, N'lifebuoy1.png', N'lifebuoy2.png', N'lifebuoy3.png', 25, 12, N'Lifebuoy là nhãn hiệu sạch khuẩn số 1 thế giới với sản phẩm giúp bảo vệ cả gia đình như sữa tắm. Sữa tắm bảo vệ khỏi vi khuẩn Lifebuoy bảo vệ vượt trội 980ml giúp bảo vệ và chăm sóc da khỏi vi khuẩn tốt hơn gấp 10 lần, dưỡng da không bị khô', 1, 5, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (28, N'Sữa tắm Puri sữa dê & ngọc trai', 56000, 1, 0, N'puri1.png', N'puri2.png', N'puri3.png', 20, 10, N'Sữa tắm Puri là loại sữa tắm được sản xuất tại Việt Nam. Sữa tắm Protex Men Sport 500ml giúp làm sạch da vượt trội, dưỡng chất và vitamin E nhẹ nhàng làm sạch cơ thể, giúp làn da trông mịn màng, mềm mại và tươi sáng hơn', 1, 5, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (29, N'Dầu xả Sunsilk óng mượt rạng ngời', 114000, 1, 0, N'sunsilk1.png', N'sunsilk2.png', N'sunsilk3.png', 15, 7, N'Dầu xả Sunsilk là thương hiệu thuộc tập đoàn Unilever với các dòng dầu xả chất lượng, được nhiều người tiêu dùng yêu thích. Dầu xả Sunsilk óng mượt rạng ngời 653ml với chiết xuất từ bồ kết, vitamin E, dầu dừa và protein gạo đen giúp nuôi dưỡng mái tóc óng mượt và chắc khoẻ tự nhiên.', 1, 5, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (30, N'Kem xả Dove phục hồi hư tổn', 18000, 1, 0, N'dove1.png', N'dove2.png', N'dove3.png', 20, 5, N'Là dòng dầu xả chứa thành phần chiết xuất tự nhiên, dưỡng chất keratin, dầu xả Dove giúp tóc mềm mượt tức thì, chắc khỏe lâu dài. Kem xả Dove phục hồi hư tổn 6.3ml x 10 gói mang lại mái tóc óng ả, vào nếp thẳng mượt, phục hồi hư tổn từ sâu bên trong.', 1, 5, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (31, N'Nước giặt OMO Matic cửa trước ', 185000, 1, 0, N'omo1.png', N'omo2.png', N'omo3.png', 15, 5, N'Nước giặt OMO sở hữu công thức x3 sức mạnh bảo vệ quần áo. Nước giặt còn giúp bảo vệ máy giặt và thân thiện với môi trường. Nước giặt OMO Matic cửa trước khử mùi thư thái hoa oải hương 3.4 lít cho quần áo thơm tho, là người bạn không thể thiếu giúp các bà nội trợ chăm sóc gia đình.', 1, 6, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (32, N'Nước giặt Ariel cửa trước', 270000, 1, 0, N'ariel.png', N'ariel2.png', N'ariel3.png', 15, 6, N'Nước giặt Ariel sở hữu công thức bền hương bền màu, giúp dễ dàng tẩy sạch hơn các vết bẩn. Ngoài ra, nước giặt còn không để lại cặn bột giặt và giữ màu quần áo rất hiệu quả. Nước giặt Ariel chuyên gia cửa trước hương Downy oải hương túi 3.62 lít thơm hương oải hương tươi mát cả ngày dài.', 1, 6, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (33, N'Nước xả Downy', 230000, 1, 0, N'downy1.png', N'downy2.png', N'downy.png', 15, 8, N'Nước xả Downy thuộc nhãn hiệu P&G của Mỹ, với công nghệ giúp lưu giữ hương thơm dài lâu, có thể lên đến 3 ngày. Nước xả Downy được hàng ngàn người nội trợ lựa chọn với giá phải chăng, mềm quần áo hiệu quả. Nước xả vải Downy làn gió mát túi 3 lít mang tới hương thơm như làn gió mới cho quần áo', 1, 6, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (34, N'Nước xả vải giữ màu Comfort', 199000, 1, 0, N'comfort1.png', N'comfort2.png', N'comfort3.png', 15, 8, N'Là một thương hiệu nước xả vải rất được lòng các chị em nội trợ, nước xả Comfort với hương nước hoa dễ chịu, giúp làm mềm vải hiệu quả, an toàn cho da và công thức xả đậm đặc tiết kiệm hơn rất nhiều. Nước xả vải Comfort một lần xả hương ban mai túi 3.2 lít hương thơm ban mai dễ chịu cho quần áo', 1, 6, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (35, N'Nước rửa chén Sunlight', 53000, 1, 0, N'sunlight1.png', N'sunlight2.png', N'sunlight3.png', 20, 10, N'Nước rửa chén Sunlight giúp khử mùi tanh triệt để trên chén dĩa chỉ với 1 lần rửa, thơm mát hương muối khoáng và lô hội. Đây là thương hiệu nước rửa chén yêu thích của hàng triệu người nội trợ. Nước rửa chén Sunlight thiên nhiên muối khoáng và lô hội túi 2 lít sạch nhanh dầu mỡ, dịu nhẹ cho da tay.', 1, 6, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (36, N'Nước rửa chén Gift hương chanh', 25000, 1, 0, N'gift1.png', N'gift2.ng', N'gift3.png', 20, 15, N'Nước rửa chén Gift đánh bay mọi vết dầu mỡ cho chén bát sạch bóng, sạch nhanh chỉ với vài giọt. Nước rửa chén còn không làm hại da tay và không lo kích ứng da. Nước rửa chén Gift hương chanh chai 800g hương chanh thơm ngát dễ chịu, khử mùi tanh hiệu quả.', 1, 6, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (37, N'Khăn ướt Yuniku', 37500, 1, 0, N'yuniku1.png', N'yuniku2.png', N'yuniku3.png', 15, 9, N'Là loại khăn ướt giúp làm sạch không mùi, bổ sung tinh chất trà xanh nha đam hoàn toàn không gây hại cho da bé. Khăn ướt em bé Yuniku không mùi gói 90 tờ với thiết kế tiện dụng đảm bảo, tính chất trà xanh nha đam dịu nhẹ, không mùi đến từ thương hiệu khăn ướt Yuniku', 1, 7, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (38, N'12 cuộn giấy vệ sinh Posy Economic', 32000, 1, 0, N'posy1.png', N'posy2.png', N'posy3.png', 15, 6, N'Giấy vệ sinh của thương hiệu giấy vệ sinh Posy với thành phần từ bột giấy nguyên sinh, an toàn cho da. Giấy vệ sinh Posy Economic 12 cuộn 2 lớp mềm mại, thấm hút tốt, dùng để vệ sinh cá nhân, lau chùi các bề mặt, vật dụng,...trong gia đình, văn phòng.', 1, 7, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (39, N'Lốc 3 cuộn túi rác đen tự huỷ sinh học', 56000, 1, 0, N'tuirac1.png', N'tuirac2.png', N'tuirac3.png', 20, 11, N'Túi đựng rác Bách hóa XANH được sản xuất từ chất liệu nhựa HDPE, giữa các túi đựng rác có gân sọc dễ dàng xé, tách túi khi dùng, thuận tiện và dễ dàng. Lốc 3 cuộn túi rác đen tự huỷ sinh học Bách Hóa XANH 64x78cm thích hợp sử dụng đựng rác thải, thức ăn thừa không sử dụng.', 1, 7, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (40, N'Màng bọc thực phẩm PE Ringo ', 22000, 1, 0, N'boctp1.png', N'boctp2.png', N'boctp3.png', 15, 5, N'Màng bọc Ringo được làm từ chất liệu nhựa PE nên màng bọc không gây độc hại cho thực phẩm, an toàn cho sức khoẻ. Màng bọc thực phẩm PE Ringo 30cm x 30m dễ dàng sử dụng, bảo quản thực phẩm tươi lâu, răng cưa cắt màng tiện lợi.', 1, 7, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (41, N'Màng nhôm bọc thực phẩm Sakura ', 30000, 1, 0, N'sakura1.png', N'sakura2.png', N'sakura3.png', 10, 6, N'Màng nhôm Sakura được làm từ kim loại nhôm nguyên chất, có khả năng giữ nhiệt tốt. Màng nhôm lại an toàn cho sức khoẻ và dùng được trong lò vi sóng, lò nướng, tủ đông. Màng nhôm 30cm x 7.6m Sakura SK 12 dạng cuộn tiện lợi là món đồ không thể thiếu trong gian bếp.', 1, 7, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (42, N'Giấy thấm dầu Tuyền Hưng Phú', 31500, 1, 0, N'thamdau1.png', N'thamdau2.png', N'thamdau3.png', 15, 8, N'Màng bọc thực phẩm là vật dụng không thể thiếu trong gian bếp, màng bọc thực phẩm, túi zipper Tuyền Hưng Phú thương hiệu nổi tiếng hàng đầu tại Việt Nam. Giấy thấm dầu Tuyền Hưng Phú (20 tờ) 24 x 25cm giúp bọc sản phẩm thấm dầu mà không bị khô, giữ nguyên độ thơm ngon khó cưỡng.', 1, 7, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (43, N'Kem que Topten Socola Wall''s ', 11500, 1, 0, N'topten1.png', N'topten2.png', N'topten3.png', 20, 10, N'Sản phẩm đến từ thương hiệu kem Wall''s quen thuộc. Kem que Topten Socola Wall''s 55g với lớp vỏ socola đậu phộng giòn rụm cùng vị thơm ngon ngọt bùi của lớp kem socola bên trong, mang đến hương vị đầy lôi cuốn ngay từ miếng cắn đầu tiên.', 1, 8, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (44, N'Kem vani socola Merino Super Teen', 13000, 1, 0, N'merino1.png', N'merino2.png', N'merino3.png', 20, 15, N'Kem que Merino là thương hiệu kem truyền thống trên thị trường Việt Nam trong nhiều năm qua. Sản phẩm kem vani socola Merino Super Teen cây 60g với sự kết hợp giữa bánh ốc giòn cùng vị kem vani socola khoái khẩu.', 1, 8, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (45, N'Snack khoai tây Classic Lay''s ', 31000, 1, 0, N'khoaitay1.png', N'khoaitay2.png', N'khoaitay3', 10, 4, N'Snack khoai tây vị tự nhiên Classic Lay''s gói 150g giòn rụm với gói lớn phù hợp cho các buổi picnic, vui chơi cùng bạn bè, gia đình. Snack Lay''s là thương hiệu có đa dạng sản phẩm với hương vị thơm ngon, gia vị đậm đà. Snack là món ăn vặt phù hợp với khẩu vị của nhiều người.', 1, 8, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (46, N'Snack vị cua Kinh Đô ', 6500, 1, 0, N'kinhdo1.png', N'kinhdo2.png', N'kinhdo3.png', 10, 5, N'Snack có hình dáng ngộ nghĩnh của những chú cua kích thích vị giác. Snack vị cua Kinh Đô gói 32g giòn ngon, hấp dẫn là món ăn yêu thích không chỉ trẻ em mà còn người lớn. Snack Kinh Đô chất lượng, tiện lợi, dễ mang theo cho các buổi đi chơi, là món ăn vặt giúp bạn thư giãn.', 1, 8, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (47, N'Snack mực tẩm gia vị cay ngọt Bento ', 27000, 1, 0, N'bento1.png', N'bento2.png', N'bento3.png', 20, 10, N'Tẩm gia vị cay ngọt, gia vị hoàn hảo lại còn đậm đà cho từng miếng mực giòn ngon, thơm khó cưỡng. Snack mực tẩm gia vị cay ngọt Bento gói 20g nội địa Thái Lan kích thích vị giác vừa ăn vừa xem phim là tuyệt vời. Snack Bento khá nổi tiếng và được nhiều người đón nhận.', 1, 8, NULL)
INSERT [dbo].[Products] ([ID], [Name], [Price], [CreatedBy], [ViewCount], [Image1], [Image2], [Image3], [Quantity], [PurchasedCount], [Description], [IsActive], [CategoryID], [Type]) VALUES (48, N'Bánh xốp phủ socola KitKat', 27700, 1, 0, N'kitkat1.png', N'kitkat2.png', N'kitkat3.png', 20, 7, N'Bánh xốp phủ socola ngọt, thơm. Bánh xốp giòn, thơm cùng lớp socola đen nhưng không đắng phủ bên ngoài ngọt thanh hòa quyện vào nhau rất hoàn hảo. Gói 6 thanh bánh xốp phủ socola KitKat 17g nhỏ gọn, dễ mang theo bên người. Bánh socola KitKat được sản xuất tại Malaysia chất lượng, an toàn', 1, 8, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [MK], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (1, N'Tiêu Quốc Cường', N'tqc@gmail.com', N'0123456789', 1, N'1', N'admin.png', N'Vĩnh Long', NULL, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [MK], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (2, N'Nguyễn Huỳnh Văn Sĩ', N'nhvs@gmail.com', N'0123456789', 1, N'2', N'admin.png', N'An Giang', NULL, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [MK], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (3, N'Nguyễn Văn Giỏi', N'nvg@gmail.com', N'0123456789', 1, N'3', N'admin.png', N'An Giang', NULL, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [MK], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (4, N'Trương Công Vinh', N'tcv@gmail.com', N'0123456789', 1, N'4', N'admin.png', N'An Giang', NULL, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [MK], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (5, N'Lê Thị Định', N'ltd@gmail.com', N'0987654321', 2, N'5', NULL, N'Sóc Trăng', NULL, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [MK], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (6, N'Trần Thị Bé Na', N'ttbn@gmail.com', N'0987654321', 2, N'6', NULL, N'Đồng Tháp', NULL, NULL)
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [MK], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (8, N'ABC', N'abc@gmail.com', N'1234567890', 2, NULL, NULL, N'pr.jpg', 0, N'822348')
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [MK], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (9, N'Nguyễn Văn A', N'nva@gmail.com', N'1234567890', 2, NULL, NULL, N'pr.jpg', 0, N'868640')
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [MK], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (10, N'Nguyễn Văn An', N'nva1@gmail.com', N'1234567890', 2, NULL, NULL, N'pr.jpg', 0, N'758124')
INSERT [dbo].[Users] ([ID], [Name], [Email], [Phone], [UserTypeID], [MK], [Avatar], [Address], [IsConfirm], [Captcha]) VALUES (11, N'Nguyễn Văn An', N'va@gamil.com', N'1234567890', 2, NULL, NULL, N'pr.jpg', 0, N'238915')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (2, N'Client')
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Users] FOREIGN KEY([FromUserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Users]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Users1] FOREIGN KEY([ToUserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Users1]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders1] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders1]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserType] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserType]
GO
