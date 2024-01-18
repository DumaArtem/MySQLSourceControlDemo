﻿CREATE TABLE `product` (
  `ProductId` INT NOT NULL AUTO_INCREMENT,
  `ProductName` VARCHAR(255) NOT NULL,
  `BrandId` INT NOT NULL,
  `CategoryId` INT NOT NULL,
  `ModelYear` SMALLINT DEFAULT NULL,
  `Price` DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (ProductId)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

ALTER TABLE `product` 
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (CategoryId)
    REFERENCES category(CategoryId) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `product` 
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (BrandId)
    REFERENCES brand(BrandId) ON DELETE CASCADE ON UPDATE CASCADE;