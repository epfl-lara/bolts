; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112128 () Bool)

(assert start!112128)

(declare-fun mapIsEmpty!56269 () Bool)

(declare-fun mapRes!56269 () Bool)

(assert (=> mapIsEmpty!56269 mapRes!56269))

(declare-fun b!1327584 () Bool)

(declare-fun e!756825 () Bool)

(declare-fun e!756828 () Bool)

(assert (=> b!1327584 (= e!756825 (and e!756828 mapRes!56269))))

(declare-fun condMapEmpty!56269 () Bool)

(declare-datatypes ((V!53633 0))(
  ( (V!53634 (val!18273 Int)) )
))
(declare-datatypes ((ValueCell!17300 0))(
  ( (ValueCellFull!17300 (v!20908 V!53633)) (EmptyCell!17300) )
))
(declare-datatypes ((array!89663 0))(
  ( (array!89664 (arr!43293 (Array (_ BitVec 32) ValueCell!17300)) (size!43844 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89663)

(declare-fun mapDefault!56269 () ValueCell!17300)

