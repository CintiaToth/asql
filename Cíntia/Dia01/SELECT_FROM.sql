-- Databricks notebook source
SELECT * 
FROM silver.olist.pedido

-- SELECIONE TODAS AS COLUNAS DA TABELA silver.olist.pedido

-- COMMAND ----------

SELECT
      idPedido,
      idCliente,
      dtEntregue

FROM silver.olist.pedido

--SELECIONAR COLUNAS ESPECÍFICAS

-- COMMAND ----------

SELECT *,
       dtEntregue > dtEstimativaEntrega AS flAtraso

 FROM silver.olist.pedido

-- COMMAND ----------

SELECT  idPedido,
        idCliente,
        dtEntregue > dtEstimativaEntrega AS flAtraso
      
FROM silver.olist.pedido

-- COMMAND ----------

SELECT  idPedido,
        idCliente,
        dtEntregue,
        dtEstimativaEntrega,
        date(dtEntregue) AS dataEntrega,
        date(dtEstimativaEntrega) AS dataEstimativa,
        dtEntregue > dtEstimativaEntrega AS flAtraso,
        date(dtEntregue) > date(dtEstimativaEntrega) AS flDataAtraso

FROM silver.olist.pedido

-- COMMAND ----------



-- COMMAND ----------

SELECT  idPedido,
        idCliente,
        date(dtEntregue) AS dataEntrega,
        date(dtEstimativaEntrega) AS dataEstimativa,
        date(dtEntregue) > date(dtEstimativaEntrega) AS flDataAtraso,
        date_diff(dtEntregue, dtEstimativaEntrega) AS nrDiasEntrega

FROM silver.olist.pedido

-- COMMAND ----------

SELECT  *
FROM silver.olist.produto

-- COMMAND ----------

SELECT
        idProduto,
        vlComprimentoCm * vlAlturaCm * vlLarguraCm AS volCM3

FROM silver.olist.produto
