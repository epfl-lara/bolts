; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112970 () Bool)

(assert start!112970)

(declare-fun b!1338788 () Bool)

(declare-fun e!762445 () Bool)

(declare-fun tp_is_empty!37007 () Bool)

(assert (=> b!1338788 (= e!762445 tp_is_empty!37007)))

(declare-fun b!1338789 () Bool)

(declare-fun e!762444 () Bool)

(declare-fun mapRes!57211 () Bool)

(assert (=> b!1338789 (= e!762444 (and e!762445 mapRes!57211))))

(declare-fun condMapEmpty!57211 () Bool)

(declare-datatypes ((V!54445 0))(
  ( (V!54446 (val!18578 Int)) )
))
(declare-datatypes ((ValueCell!17605 0))(
  ( (ValueCellFull!17605 (v!21223 V!54445)) (EmptyCell!17605) )
))
(declare-datatypes ((array!90845 0))(
  ( (array!90846 (arr!43876 (Array (_ BitVec 32) ValueCell!17605)) (size!44427 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90845)

(declare-fun mapDefault!57211 () ValueCell!17605)

