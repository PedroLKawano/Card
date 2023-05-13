-- CreateTable
CREATE TABLE "cartao_credito" (
    "id" TEXT NOT NULL,
    "numero_cartao" TEXT NOT NULL,
    "nome_cartao" TEXT NOT NULL,
    "CPF_cartao" TEXT NOT NULL,
    "ccv" TEXT NOT NULL,
    "data_validade" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "cartao_credito_pkey" PRIMARY KEY ("id")
);
