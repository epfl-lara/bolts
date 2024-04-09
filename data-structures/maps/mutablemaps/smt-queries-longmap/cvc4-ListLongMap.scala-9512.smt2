; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112930 () Bool)

(assert start!112930)

(declare-fun b!1338572 () Bool)

(declare-fun e!762276 () Bool)

(declare-fun tp_is_empty!36989 () Bool)

(assert (=> b!1338572 (= e!762276 tp_is_empty!36989)))

(declare-fun mapIsEmpty!57175 () Bool)

(declare-fun mapRes!57175 () Bool)

(assert (=> mapIsEmpty!57175 mapRes!57175))

(declare-fun b!1338573 () Bool)

(declare-fun e!762272 () Bool)

(assert (=> b!1338573 (= e!762272 (and e!762276 mapRes!57175))))

(declare-fun condMapEmpty!57175 () Bool)

(declare-datatypes ((V!54421 0))(
  ( (V!54422 (val!18569 Int)) )
))
(declare-datatypes ((ValueCell!17596 0))(
  ( (ValueCellFull!17596 (v!21214 V!54421)) (EmptyCell!17596) )
))
(declare-datatypes ((array!90811 0))(
  ( (array!90812 (arr!43862 (Array (_ BitVec 32) ValueCell!17596)) (size!44413 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90811)

(declare-fun mapDefault!57175 () ValueCell!17596)

