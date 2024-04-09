; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3758 () Bool)

(assert start!3758)

(declare-fun b!26263 () Bool)

(declare-fun e!17068 () Bool)

(declare-fun tp_is_empty!1081 () Bool)

(assert (=> b!26263 (= e!17068 tp_is_empty!1081)))

(declare-fun b!26264 () Bool)

(declare-fun e!17070 () Bool)

(declare-fun e!17067 () Bool)

(declare-fun mapRes!1138 () Bool)

(assert (=> b!26264 (= e!17070 (and e!17067 mapRes!1138))))

(declare-fun condMapEmpty!1138 () Bool)

(declare-datatypes ((V!1267 0))(
  ( (V!1268 (val!567 Int)) )
))
(declare-datatypes ((ValueCell!341 0))(
  ( (ValueCellFull!341 (v!1653 V!1267)) (EmptyCell!341) )
))
(declare-datatypes ((array!1395 0))(
  ( (array!1396 (arr!655 (Array (_ BitVec 32) ValueCell!341)) (size!756 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1395)

(declare-fun mapDefault!1138 () ValueCell!341)

