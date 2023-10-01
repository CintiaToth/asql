-- Databricks notebook source
SELECT *
FROM silver.olist.pedido
WHERE NOT date(dtEntregue) > date(dtEstimativaEntrega)

--FILTRAR PEDIDOS EM ATRASO

-- COMMAND ----------

SELECT *
FROM silver.olist.produto
WHERE descCategoria = 'bebes'
AND vlComprimentoCm * vlAlturaCm * vlLarguraCm < 1000

-- COMMAND ----------

SELECT *

FROM silver.olist.produto

WHERE (descCategoria = 'bebes'
OR descCategoria = 'perfumaria')
AND vlComprimentoCm * vlAlturaCm * vlLarguraCm > 1000

-- COMMAND ----------

SELECT *

FROM silver.olist.produto

WHERE descCategoria IN ('bebes', 'perfumaria', 'artes')
AND vlComprimentoCm * vlAlturaCm * vlLarguraCm > 1000


-- COMMAND ----------

SELECT *
FROM silver.olist.produto
WHERE descCategoria LIKE '%ferramenta%'
