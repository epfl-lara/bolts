; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108832 () Bool)

(assert start!108832)

(declare-fun b_free!28309 () Bool)

(declare-fun b_next!28309 () Bool)

(assert (=> start!108832 (= b_free!28309 (not b_next!28309))))

(declare-fun tp!100044 () Bool)

(declare-fun b_and!46385 () Bool)

(assert (=> start!108832 (= tp!100044 b_and!46385)))

(declare-fun b!1284642 () Bool)

(declare-fun res!853478 () Bool)

(declare-fun e!733855 () Bool)

(assert (=> b!1284642 (=> (not res!853478) (not e!733855))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84913 0))(
  ( (array!84914 (arr!40954 (Array (_ BitVec 32) (_ BitVec 64))) (size!41505 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84913)

(assert (=> b!1284642 (= res!853478 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41505 _keys!1741))))))

(declare-fun mapNonEmpty!52481 () Bool)

(declare-fun mapRes!52481 () Bool)

(declare-fun tp!100043 () Bool)

(declare-fun e!733851 () Bool)

(assert (=> mapNonEmpty!52481 (= mapRes!52481 (and tp!100043 e!733851))))

(declare-fun mapKey!52481 () (_ BitVec 32))

(declare-datatypes ((V!50369 0))(
  ( (V!50370 (val!17049 Int)) )
))
(declare-datatypes ((ValueCell!16076 0))(
  ( (ValueCellFull!16076 (v!19649 V!50369)) (EmptyCell!16076) )
))
(declare-fun mapRest!52481 () (Array (_ BitVec 32) ValueCell!16076))

(declare-datatypes ((array!84915 0))(
  ( (array!84916 (arr!40955 (Array (_ BitVec 32) ValueCell!16076)) (size!41506 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84915)

(declare-fun mapValue!52481 () ValueCell!16076)

(assert (=> mapNonEmpty!52481 (= (arr!40955 _values!1445) (store mapRest!52481 mapKey!52481 mapValue!52481))))

(declare-fun res!853481 () Bool)

(assert (=> start!108832 (=> (not res!853481) (not e!733855))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108832 (= res!853481 (validMask!0 mask!2175))))

(assert (=> start!108832 e!733855))

(declare-fun tp_is_empty!33949 () Bool)

(assert (=> start!108832 tp_is_empty!33949))

(assert (=> start!108832 true))

(declare-fun e!733854 () Bool)

(declare-fun array_inv!31043 (array!84915) Bool)

(assert (=> start!108832 (and (array_inv!31043 _values!1445) e!733854)))

(declare-fun array_inv!31044 (array!84913) Bool)

(assert (=> start!108832 (array_inv!31044 _keys!1741)))

(assert (=> start!108832 tp!100044))

(declare-fun b!1284643 () Bool)

(assert (=> b!1284643 (= e!733851 tp_is_empty!33949)))

(declare-fun b!1284644 () Bool)

(declare-fun res!853482 () Bool)

(assert (=> b!1284644 (=> (not res!853482) (not e!733855))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1284644 (= res!853482 (and (= (size!41506 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41505 _keys!1741) (size!41506 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!52481 () Bool)

(assert (=> mapIsEmpty!52481 mapRes!52481))

(declare-fun b!1284645 () Bool)

(declare-fun res!853479 () Bool)

(assert (=> b!1284645 (=> (not res!853479) (not e!733855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84913 (_ BitVec 32)) Bool)

(assert (=> b!1284645 (= res!853479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284646 () Bool)

(assert (=> b!1284646 (= e!733855 false)))

(declare-fun minValue!1387 () V!50369)

(declare-fun zeroValue!1387 () V!50369)

(declare-fun lt!576786 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21980 0))(
  ( (tuple2!21981 (_1!11000 (_ BitVec 64)) (_2!11000 V!50369)) )
))
(declare-datatypes ((List!29192 0))(
  ( (Nil!29189) (Cons!29188 (h!30397 tuple2!21980) (t!42743 List!29192)) )
))
(declare-datatypes ((ListLongMap!19649 0))(
  ( (ListLongMap!19650 (toList!9840 List!29192)) )
))
(declare-fun contains!7895 (ListLongMap!19649 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4858 (array!84913 array!84915 (_ BitVec 32) (_ BitVec 32) V!50369 V!50369 (_ BitVec 32) Int) ListLongMap!19649)

(assert (=> b!1284646 (= lt!576786 (contains!7895 (getCurrentListMap!4858 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1284647 () Bool)

(declare-fun e!733852 () Bool)

(assert (=> b!1284647 (= e!733852 tp_is_empty!33949)))

(declare-fun b!1284648 () Bool)

(declare-fun res!853480 () Bool)

(assert (=> b!1284648 (=> (not res!853480) (not e!733855))))

(declare-datatypes ((List!29193 0))(
  ( (Nil!29190) (Cons!29189 (h!30398 (_ BitVec 64)) (t!42744 List!29193)) )
))
(declare-fun arrayNoDuplicates!0 (array!84913 (_ BitVec 32) List!29193) Bool)

(assert (=> b!1284648 (= res!853480 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29190))))

(declare-fun b!1284649 () Bool)

(assert (=> b!1284649 (= e!733854 (and e!733852 mapRes!52481))))

(declare-fun condMapEmpty!52481 () Bool)

(declare-fun mapDefault!52481 () ValueCell!16076)

