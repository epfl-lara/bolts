; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!798 () Bool)

(assert start!798)

(declare-fun b_free!191 () Bool)

(declare-fun b_next!191 () Bool)

(assert (=> start!798 (= b_free!191 (not b_next!191))))

(declare-fun tp!802 () Bool)

(declare-fun b_and!337 () Bool)

(assert (=> start!798 (= tp!802 b_and!337)))

(declare-fun b!5904 () Bool)

(declare-fun res!6502 () Bool)

(declare-fun e!3218 () Bool)

(assert (=> b!5904 (=> (not res!6502) (not e!3218))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!535 0))(
  ( (V!536 (val!140 Int)) )
))
(declare-datatypes ((ValueCell!118 0))(
  ( (ValueCellFull!118 (v!1231 V!535)) (EmptyCell!118) )
))
(declare-datatypes ((array!473 0))(
  ( (array!474 (arr!225 (Array (_ BitVec 32) ValueCell!118)) (size!287 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!473)

(declare-fun minValue!1434 () V!535)

(declare-datatypes ((array!475 0))(
  ( (array!476 (arr!226 (Array (_ BitVec 32) (_ BitVec 64))) (size!288 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!475)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!535)

(declare-datatypes ((tuple2!132 0))(
  ( (tuple2!133 (_1!66 (_ BitVec 64)) (_2!66 V!535)) )
))
(declare-datatypes ((List!144 0))(
  ( (Nil!141) (Cons!140 (h!706 tuple2!132) (t!2279 List!144)) )
))
(declare-datatypes ((ListLongMap!137 0))(
  ( (ListLongMap!138 (toList!84 List!144)) )
))
(declare-fun contains!58 (ListLongMap!137 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!43 (array!475 array!473 (_ BitVec 32) (_ BitVec 32) V!535 V!535 (_ BitVec 32) Int) ListLongMap!137)

(assert (=> b!5904 (= res!6502 (contains!58 (getCurrentListMap!43 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!5905 () Bool)

(declare-fun e!3220 () Bool)

(assert (=> b!5905 (= e!3220 true)))

(declare-fun lt!1073 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!475 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!5905 (= lt!1073 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!374 () Bool)

(declare-fun mapRes!374 () Bool)

(declare-fun tp!803 () Bool)

(declare-fun e!3215 () Bool)

(assert (=> mapNonEmpty!374 (= mapRes!374 (and tp!803 e!3215))))

(declare-fun mapKey!374 () (_ BitVec 32))

(declare-fun mapValue!374 () ValueCell!118)

(declare-fun mapRest!374 () (Array (_ BitVec 32) ValueCell!118))

(assert (=> mapNonEmpty!374 (= (arr!225 _values!1492) (store mapRest!374 mapKey!374 mapValue!374))))

(declare-fun b!5906 () Bool)

(declare-fun e!3219 () Bool)

(declare-fun e!3216 () Bool)

(assert (=> b!5906 (= e!3219 (and e!3216 mapRes!374))))

(declare-fun condMapEmpty!374 () Bool)

(declare-fun mapDefault!374 () ValueCell!118)

