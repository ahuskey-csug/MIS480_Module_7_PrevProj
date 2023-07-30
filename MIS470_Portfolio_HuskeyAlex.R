min(`MIS470housingtesting(460x25)`$SalePrice)
max(`MIS470housingtesting(460x25)`$SalePrice)
mean(`MIS470housingtesting(460x25)`$SalePrice)
median(`MIS470housingtesting(460x25)`$SalePrice)
sd(`MIS470housingtesting(460x25)`$SalePrice)
options(scipen = 999)
hist(`MIS470housingtesting(460x25)`$SalePrice, main= "Histogram of Sales Price for testing Data")
combined.sets <- rbind(`MIS470housingtesting(460x25)`,`MIS470HousingTraining(1000x25)`)
dim(combined.sets)
is.data.frame(combined.sets)
hist(combined.sets$SalePrice, main = "Histogram of Sales Price for the Combined Sets")
lin_reg <-glm(formula = SalePrice ~ MSSubClass + LotArea
              + OverallQual 
              + OverallCond
              + YearBuilt
              + MasVnrArea     
              + TotalBsmtSF    
              + GrLivArea      
              + BedroomAbvGr   
              + KitchenAbvGr              
              + TotRmsAbvGrd   
              + Fireplaces                
              + GarageArea, data = `MIS470HousingTraining(1000x25)`)
NewTesting <- na.omit(`MIS470housingtesting(460x25)`)
Predicted_Prices <- predict(lin_reg, `NewTesting`)
head(Predicted_Prices, 20)

