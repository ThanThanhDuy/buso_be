/*
  Warnings:

  - You are about to drop the column `userId` on the `image` table. All the data in the column will be lost.
  - Added the required column `avatarUrl` to the `user` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "image" DROP CONSTRAINT "image_userId_fkey";

-- DropIndex
DROP INDEX "image_userId_key";

-- AlterTable
ALTER TABLE "image" DROP COLUMN "userId";

-- AlterTable
ALTER TABLE "user" ADD COLUMN     "avatarUrl" TEXT NOT NULL;
