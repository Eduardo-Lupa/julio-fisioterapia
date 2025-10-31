/*
  Warnings:

  - Added the required column `ecg` to the `peito` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "peito" ADD COLUMN     "ecg" TEXT NOT NULL;
