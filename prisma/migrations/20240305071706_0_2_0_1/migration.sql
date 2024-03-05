/*
  Warnings:

  - You are about to drop the column `branchid` on the `Store` table. All the data in the column will be lost.
  - Added the required column `branchId` to the `Store` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Store" DROP COLUMN "branchid",
ADD COLUMN     "branchId" VARCHAR(255) NOT NULL;

-- CreateTable
CREATE TABLE "Payment" (
    "paymentId" VARCHAR(4) NOT NULL,
    "paid" VARCHAR(4) NOT NULL,
    "methodId" VARCHAR(4) NOT NULL,
    "methodName" VARCHAR(15) NOT NULL,
    "approvalCode" VARCHAR(6) NOT NULL,

    CONSTRAINT "Payment_pkey" PRIMARY KEY ("paymentId")
);

-- CreateTable
CREATE TABLE "Transaction" (
    "transactionId" VARCHAR(32) NOT NULL,
    "totalItem" VARCHAR(3) NOT NULL,
    "Item" VARCHAR(255) NOT NULL,
    "totalTransaction" VARCHAR(7) NOT NULL,
    "timestamp" TIMESTAMP NOT NULL,

    CONSTRAINT "Transaction_pkey" PRIMARY KEY ("transactionId")
);

-- CreateTable
CREATE TABLE "Item" (
    "itemId" VARCHAR(32) NOT NULL,
    "quantity" VARCHAR(2) NOT NULL,
    "price" VARCHAR(12) NOT NULL,

    CONSTRAINT "Item_pkey" PRIMARY KEY ("itemId")
);

-- CreateTable
CREATE TABLE "Product" (
    "barcode" VARCHAR(12) NOT NULL,
    "productName" VARCHAR(30) NOT NULL,
    "productCategory" VARCHAR(255) NOT NULL,
    "supplier" VARCHAR(255) NOT NULL,
    "stock" VARCHAR(255) NOT NULL,

    CONSTRAINT "Product_pkey" PRIMARY KEY ("barcode")
);
