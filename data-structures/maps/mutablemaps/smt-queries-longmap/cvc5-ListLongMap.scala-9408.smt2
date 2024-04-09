; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112048 () Bool)

(assert start!112048)

(declare-fun b!1327148 () Bool)

(declare-fun e!756461 () Bool)

(declare-fun e!756463 () Bool)

(declare-fun mapRes!56200 () Bool)

(assert (=> b!1327148 (= e!756461 (and e!756463 mapRes!56200))))

(declare-fun condMapEmpty!56200 () Bool)

(declare-datatypes ((V!53585 0))(
  ( (V!53586 (val!18255 Int)) )
))
(declare-datatypes ((ValueCell!17282 0))(
  ( (ValueCellFull!17282 (v!20889 V!53585)) (EmptyCell!17282) )
))
(declare-datatypes ((array!89593 0))(
  ( (array!89594 (arr!43263 (Array (_ BitVec 32) ValueCell!17282)) (size!43814 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89593)

(declare-fun mapDefault!56200 () ValueCell!17282)

