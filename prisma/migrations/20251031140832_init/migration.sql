/*
  Warnings:

  - Changed the type of `ecg` on the `peito` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "peito" DROP COLUMN "ecg",
ADD COLUMN     "ecg" DOUBLE PRECISION NOT NULL;
