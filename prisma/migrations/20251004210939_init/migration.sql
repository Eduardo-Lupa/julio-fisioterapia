-- CreateTable
CREATE TABLE "mao_esquerda" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "eixo_x" DOUBLE PRECISION NOT NULL,
    "eixo_y" DOUBLE PRECISION NOT NULL,
    "eixo_z" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "mao_esquerda_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "mao_direita" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "eixo_x" DOUBLE PRECISION NOT NULL,
    "eixo_y" DOUBLE PRECISION NOT NULL,
    "eixo_z" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "mao_direita_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pe_esquerdo" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "eixo_x" DOUBLE PRECISION NOT NULL,
    "eixo_y" DOUBLE PRECISION NOT NULL,
    "eixo_z" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "pe_esquerdo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pe_direito" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "eixo_x" DOUBLE PRECISION NOT NULL,
    "eixo_y" DOUBLE PRECISION NOT NULL,
    "eixo_z" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "pe_direito_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "peito" (
    "id" SERIAL NOT NULL,
    "time" TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "eixo_x" DOUBLE PRECISION NOT NULL,
    "eixo_y" DOUBLE PRECISION NOT NULL,
    "eixo_z" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "peito_pkey" PRIMARY KEY ("id")
);
