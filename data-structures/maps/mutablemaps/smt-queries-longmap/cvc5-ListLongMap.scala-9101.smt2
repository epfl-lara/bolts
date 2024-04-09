; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109426 () Bool)

(assert start!109426)

(declare-fun b_free!28879 () Bool)

(declare-fun b_next!28879 () Bool)

(assert (=> start!109426 (= b_free!28879 (not b_next!28879))))

(declare-fun tp!101757 () Bool)

(declare-fun b_and!46979 () Bool)

(assert (=> start!109426 (= tp!101757 b_and!46979)))

(declare-fun b!1294845 () Bool)

(declare-fun e!738862 () Bool)

(declare-fun tp_is_empty!34519 () Bool)

(assert (=> b!1294845 (= e!738862 tp_is_empty!34519)))

(declare-fun b!1294846 () Bool)

(declare-fun res!860632 () Bool)

(declare-fun e!738860 () Bool)

(assert (=> b!1294846 (=> (not res!860632) (not e!738860))))

(declare-datatypes ((array!86023 0))(
  ( (array!86024 (arr!41508 (Array (_ BitVec 32) (_ BitVec 64))) (size!42059 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86023)

(declare-datatypes ((List!29634 0))(
  ( (Nil!29631) (Cons!29630 (h!30839 (_ BitVec 64)) (t!43205 List!29634)) )
))
(declare-fun arrayNoDuplicates!0 (array!86023 (_ BitVec 32) List!29634) Bool)

(assert (=> b!1294846 (= res!860632 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29631))))

(declare-fun mapNonEmpty!53339 () Bool)

(declare-fun mapRes!53339 () Bool)

(declare-fun tp!101756 () Bool)

(declare-fun e!738864 () Bool)

(assert (=> mapNonEmpty!53339 (= mapRes!53339 (and tp!101756 e!738864))))

(declare-datatypes ((V!51129 0))(
  ( (V!51130 (val!17334 Int)) )
))
(declare-datatypes ((ValueCell!16361 0))(
  ( (ValueCellFull!16361 (v!19935 V!51129)) (EmptyCell!16361) )
))
(declare-fun mapValue!53339 () ValueCell!16361)

(declare-fun mapRest!53339 () (Array (_ BitVec 32) ValueCell!16361))

(declare-datatypes ((array!86025 0))(
  ( (array!86026 (arr!41509 (Array (_ BitVec 32) ValueCell!16361)) (size!42060 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86025)

(declare-fun mapKey!53339 () (_ BitVec 32))

(assert (=> mapNonEmpty!53339 (= (arr!41509 _values!1445) (store mapRest!53339 mapKey!53339 mapValue!53339))))

(declare-fun b!1294847 () Bool)

(declare-fun res!860633 () Bool)

(assert (=> b!1294847 (=> (not res!860633) (not e!738860))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1294847 (= res!860633 (and (= (size!42060 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42059 _keys!1741) (size!42060 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1294848 () Bool)

(declare-fun e!738865 () Bool)

(assert (=> b!1294848 (= e!738860 (not e!738865))))

(declare-fun res!860626 () Bool)

(assert (=> b!1294848 (=> res!860626 e!738865)))

(assert (=> b!1294848 (= res!860626 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22464 0))(
  ( (tuple2!22465 (_1!11242 (_ BitVec 64)) (_2!11242 V!51129)) )
))
(declare-datatypes ((List!29635 0))(
  ( (Nil!29632) (Cons!29631 (h!30840 tuple2!22464) (t!43206 List!29635)) )
))
(declare-datatypes ((ListLongMap!20133 0))(
  ( (ListLongMap!20134 (toList!10082 List!29635)) )
))
(declare-fun contains!8138 (ListLongMap!20133 (_ BitVec 64)) Bool)

(assert (=> b!1294848 (not (contains!8138 (ListLongMap!20134 Nil!29632) k!1205))))

(declare-datatypes ((Unit!42831 0))(
  ( (Unit!42832) )
))
(declare-fun lt!579711 () Unit!42831)

(declare-fun emptyContainsNothing!172 ((_ BitVec 64)) Unit!42831)

(assert (=> b!1294848 (= lt!579711 (emptyContainsNothing!172 k!1205))))

(declare-fun b!1294849 () Bool)

(declare-fun res!860631 () Bool)

(assert (=> b!1294849 (=> (not res!860631) (not e!738860))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86023 (_ BitVec 32)) Bool)

(assert (=> b!1294849 (= res!860631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294850 () Bool)

(declare-fun res!860634 () Bool)

(assert (=> b!1294850 (=> (not res!860634) (not e!738860))))

(declare-fun minValue!1387 () V!51129)

(declare-fun zeroValue!1387 () V!51129)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5064 (array!86023 array!86025 (_ BitVec 32) (_ BitVec 32) V!51129 V!51129 (_ BitVec 32) Int) ListLongMap!20133)

(assert (=> b!1294850 (= res!860634 (contains!8138 (getCurrentListMap!5064 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1294851 () Bool)

(assert (=> b!1294851 (= e!738865 true)))

(declare-fun lt!579710 () ListLongMap!20133)

(declare-fun +!4386 (ListLongMap!20133 tuple2!22464) ListLongMap!20133)

(assert (=> b!1294851 (not (contains!8138 (+!4386 lt!579710 (tuple2!22465 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!579712 () Unit!42831)

(declare-fun addStillNotContains!431 (ListLongMap!20133 (_ BitVec 64) V!51129 (_ BitVec 64)) Unit!42831)

(assert (=> b!1294851 (= lt!579712 (addStillNotContains!431 lt!579710 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6102 (array!86023 array!86025 (_ BitVec 32) (_ BitVec 32) V!51129 V!51129 (_ BitVec 32) Int) ListLongMap!20133)

(assert (=> b!1294851 (= lt!579710 (getCurrentListMapNoExtraKeys!6102 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun res!860627 () Bool)

(assert (=> start!109426 (=> (not res!860627) (not e!738860))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109426 (= res!860627 (validMask!0 mask!2175))))

(assert (=> start!109426 e!738860))

(assert (=> start!109426 tp_is_empty!34519))

(assert (=> start!109426 true))

(declare-fun e!738861 () Bool)

(declare-fun array_inv!31409 (array!86025) Bool)

(assert (=> start!109426 (and (array_inv!31409 _values!1445) e!738861)))

(declare-fun array_inv!31410 (array!86023) Bool)

(assert (=> start!109426 (array_inv!31410 _keys!1741)))

(assert (=> start!109426 tp!101757))

(declare-fun b!1294852 () Bool)

(assert (=> b!1294852 (= e!738861 (and e!738862 mapRes!53339))))

(declare-fun condMapEmpty!53339 () Bool)

(declare-fun mapDefault!53339 () ValueCell!16361)

