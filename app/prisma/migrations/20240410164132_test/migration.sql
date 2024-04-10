-- CreateTable
CREATE TABLE "annonces" (
    "Id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Titre" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "users" (
    "Id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Pseudo" TEXT NOT NULL,
    "password" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "tata" (
    "Id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Maman" TEXT
);

-- CreateTable
CREATE TABLE "toto" (
    "Id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Tonton" TEXT
);
