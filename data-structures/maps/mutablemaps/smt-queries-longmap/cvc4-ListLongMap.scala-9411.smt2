; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112084 () Bool)

(assert start!112084)

(declare-fun mapIsEmpty!56239 () Bool)

(declare-fun mapRes!56239 () Bool)

(assert (=> mapIsEmpty!56239 mapRes!56239))

(declare-fun b!1327342 () Bool)

(declare-fun e!756648 () Bool)

(declare-fun e!756650 () Bool)

(assert (=> b!1327342 (= e!756648 (and e!756650 mapRes!56239))))

(declare-fun condMapEmpty!56239 () Bool)

(declare-datatypes ((V!53613 0))(
  ( (V!53614 (val!18266 Int)) )
))
(declare-datatypes ((ValueCell!17293 0))(
  ( (ValueCellFull!17293 (v!20900 V!53613)) (EmptyCell!17293) )
))
(declare-datatypes ((array!89635 0))(
  ( (array!89636 (arr!43282 (Array (_ BitVec 32) ValueCell!17293)) (size!43833 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89635)

(declare-fun mapDefault!56239 () ValueCell!17293)

