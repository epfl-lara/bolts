; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4042 () Bool)

(assert start!4042)

(declare-fun b_free!949 () Bool)

(declare-fun b_next!949 () Bool)

(assert (=> start!4042 (= b_free!949 (not b_next!949))))

(declare-fun tp!4267 () Bool)

(declare-fun b_and!1761 () Bool)

(assert (=> start!4042 (= tp!4267 b_and!1761)))

(declare-fun b!29672 () Bool)

(declare-fun res!17796 () Bool)

(declare-fun e!19146 () Bool)

(assert (=> b!29672 (=> (not res!17796) (not e!19146))))

(declare-datatypes ((array!1827 0))(
  ( (array!1828 (arr!867 (Array (_ BitVec 32) (_ BitVec 64))) (size!968 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1827)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1827 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29672 (= res!17796 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!1483 () Bool)

(declare-fun mapRes!1483 () Bool)

(declare-fun tp!4266 () Bool)

(declare-fun e!19147 () Bool)

(assert (=> mapNonEmpty!1483 (= mapRes!1483 (and tp!4266 e!19147))))

(declare-datatypes ((V!1563 0))(
  ( (V!1564 (val!678 Int)) )
))
(declare-datatypes ((ValueCell!452 0))(
  ( (ValueCellFull!452 (v!1767 V!1563)) (EmptyCell!452) )
))
(declare-datatypes ((array!1829 0))(
  ( (array!1830 (arr!868 (Array (_ BitVec 32) ValueCell!452)) (size!969 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1829)

(declare-fun mapRest!1483 () (Array (_ BitVec 32) ValueCell!452))

(declare-fun mapKey!1483 () (_ BitVec 32))

(declare-fun mapValue!1483 () ValueCell!452)

(assert (=> mapNonEmpty!1483 (= (arr!868 _values!1501) (store mapRest!1483 mapKey!1483 mapValue!1483))))

(declare-fun b!29674 () Bool)

(declare-fun tp_is_empty!1303 () Bool)

(assert (=> b!29674 (= e!19147 tp_is_empty!1303)))

(declare-fun mapIsEmpty!1483 () Bool)

(assert (=> mapIsEmpty!1483 mapRes!1483))

(declare-fun b!29675 () Bool)

(declare-fun res!17792 () Bool)

(assert (=> b!29675 (=> (not res!17792) (not e!19146))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!29675 (= res!17792 (and (= (size!969 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!968 _keys!1833) (size!969 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!29676 () Bool)

(declare-fun res!17791 () Bool)

(assert (=> b!29676 (=> (not res!17791) (not e!19146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1827 (_ BitVec 32)) Bool)

(assert (=> b!29676 (= res!17791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29677 () Bool)

(declare-fun res!17795 () Bool)

(assert (=> b!29677 (=> (not res!17795) (not e!19146))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1563)

(declare-fun minValue!1443 () V!1563)

(declare-datatypes ((tuple2!1112 0))(
  ( (tuple2!1113 (_1!566 (_ BitVec 64)) (_2!566 V!1563)) )
))
(declare-datatypes ((List!717 0))(
  ( (Nil!714) (Cons!713 (h!1280 tuple2!1112) (t!3412 List!717)) )
))
(declare-datatypes ((ListLongMap!693 0))(
  ( (ListLongMap!694 (toList!362 List!717)) )
))
(declare-fun contains!299 (ListLongMap!693 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!189 (array!1827 array!1829 (_ BitVec 32) (_ BitVec 32) V!1563 V!1563 (_ BitVec 32) Int) ListLongMap!693)

(assert (=> b!29677 (= res!17795 (not (contains!299 (getCurrentListMap!189 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!29678 () Bool)

(declare-fun e!19144 () Bool)

(declare-fun e!19145 () Bool)

(assert (=> b!29678 (= e!19144 (and e!19145 mapRes!1483))))

(declare-fun condMapEmpty!1483 () Bool)

(declare-fun mapDefault!1483 () ValueCell!452)

