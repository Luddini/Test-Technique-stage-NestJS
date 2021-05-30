/*
  Warnings:

  - You are about to drop the column `editor_id` on the `article` table. All the data in the column will be lost.
  - You are about to drop the column `editor_id` on the `issue` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[email]` on the table `editor` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `author_id` to the `article` table without a default value. This is not possible if the table is not empty.
  - Added the required column `email` to the `editor` table without a default value. This is not possible if the table is not empty.
  - Added the required column `author_id` to the `issue` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "issue" DROP CONSTRAINT "issue_editor_id_fkey";

-- DropForeignKey
ALTER TABLE "article" DROP CONSTRAINT "article_editor_id_fkey";

-- AlterTable
ALTER TABLE "article" DROP COLUMN "editor_id",
ADD COLUMN     "author_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "editor" ADD COLUMN     "email" VARCHAR(255) NOT NULL;

-- AlterTable
ALTER TABLE "issue" DROP COLUMN "editor_id",
ADD COLUMN     "author_id" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "editor.email_unique" ON "editor"("email");

-- AddForeignKey
ALTER TABLE "issue" ADD FOREIGN KEY ("author_id") REFERENCES "editor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "article" ADD FOREIGN KEY ("author_id") REFERENCES "editor"("id") ON DELETE CASCADE ON UPDATE CASCADE;
