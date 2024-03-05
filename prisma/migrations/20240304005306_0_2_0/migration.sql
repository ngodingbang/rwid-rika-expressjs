-- CreateTable
CREATE TABLE "Store" (
    "name" VARCHAR(255) NOT NULL,
    "branch" VARCHAR(255) NOT NULL,
    "branchid" VARCHAR(255) NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Store_name_key" ON "Store"("name");
