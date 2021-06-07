library(ggplot2)
plot(iris$Sepal.Length~iris$Sepal.Width)

# Scatter plot with x and y labels
plot(iris$Sepal.Length~iris$Sepal.Width,
     ylab = "Sepal Length",
     xlab = "Sepal Width",
     main = "Sepal Length vs Sepal Width")

# Scatter plot with color
plot(iris$Sepal.Length~iris$Sepal.Width,
     ylab = "Sepal Length",
     xlab = "Sepal Width",
     main = "Sepal Length vs Sepal Width",
     col = "blue",
     pch = 16)

# Histogram
hist(iris$Sepal.Width)

# Histogram with labels
hist(iris$Sepal.Width, col = "aquamarine3", xlab = "Sepal Width", ylab = "Frequency")

# Boxplot
boxplot(iris$Sepal.Length~iris$Species,
        xlab = "Species",
        ylab = "Sepal Length",
        col = "burlywood",
        main = "Boxplot of each Species")
################################################################################
library(ggplot2)

# Create empty plot
ggplot(data = iris)

# Create an empty plot with x and y axis
ggplot(data = iris, aes(y = Sepal.Length, x = Sepal.Width))

# Create a Scatter plot with Sepal.Length and Sepal.Width
ggplot(data = iris, aes(x = Sepal.Width, y = Sepal.Length)) + geom_point()

# Aesthetics
# Add Color to Species
ggplot(data = iris, aes(x = Sepal.Width, y = Sepal.Length, col = Species)) + geom_point()

# Add Shape to Species
ggplot(data = iris, aes(x = Sepal.Width, y = Sepal.Length, shape = Species)) + geom_point()

# Add both Shape and Color to Species
ggplot(data = iris, aes(x = Sepal.Width, y = Sepal.Length, shape = Species, col = Species)) + geom_point()

# Import Dataset
df = read.csv(file.choose())

# View the Dataset
View(df)

# Histogram
ggplot(data = df, aes(x = Item_Outlet_Sales)) + geom_histogram(bins = 50)
# Add color
ggplot(data = df, aes(x = Item_Outlet_Sales)) + geom_histogram(bins = 50, col = "orange")
# Add color and fill with color
ggplot(data = df, aes(x = Item_Outlet_Sales)) +
geom_histogram(bins = 50, col = "orange", fill = "orange") +
labs(y = "Frequency", x = "Item Outlet Sales", title = "Histogram of Item Outlet Sales")
# Use fill
ggplot(data = df, aes(x = Item_Outlet_Sales, fill = Item_Identifier)) + 
        geom_histogram(bins = 50)

# Barplots
ggplot(data = df, aes(x = Item_Type))+
        geom_bar(col = "lightskyblue", fill = "lightskyblue")+
        labs(x = "Item Type", y = "Frequency")+
        theme(axis.text.x = element_text(angle = 90, color = "lightcoral", face = "bold"))

# With position = "fill"
ggplot(data = df, aes(x = Item_Type, fill = Outlet_Location_Type))+
        geom_bar(position = "fill")+
        theme(axis.text.x = element_text(angle = 90))

ggplot(data = df, aes(x = Item_Type, fill = Outlet_Identifier))+
        geom_bar(position = "fill")+
        theme(axis.text.x = element_text(angle = 90))

# Frequency Polygon
ggplot(data = df, aes(x = Item_MRP))+
        geom_freqpoly(bins = 100)
# Add col = Outlet_Location_Type
ggplot(data = df, aes(x = Item_MRP, col = Outlet_Location_Type))+
        geom_freqpoly(bins = 30)

# Boxplot
ggplot(data = df, aes(x = Outlet_Type, y = Item_Outlet_Sales, fill = Outlet_Type))+
        geom_boxplot()

ggplot(data = df, aes(x = Outlet_Type, y = Item_Outlet_Sales, fill = Outlet_Location_Type))+
        geom_boxplot()

# Smooth Line
ggplot(data = df, aes(x = Item_MRP, y = Item_Outlet_Sales))+
        geom_smooth()

ggplot(data = df, aes(x = Item_MRP, y = Item_Outlet_Sales, col = Item_Identifier))+
        geom_smooth(se = F)

ggplot(data = df, aes(x = Item_MRP, y = Item_Outlet_Sales, col = Item_Identifier))+
        geom_smooth(se = F, method = "lm") + geom_point()

# Use facet
ggplot(data = df, aes(x = Item_MRP, y = Item_Outlet_Sales, col = Item_Identifier))+
        geom_smooth(se = F, method = "lm")+
        geom_point()+
        facet_grid(~Item_Identifier)









