; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108756 () Bool)

(assert start!108756)

(declare-fun b_free!28233 () Bool)

(declare-fun b_next!28233 () Bool)

(assert (=> start!108756 (= b_free!28233 (not b_next!28233))))

(declare-fun tp!99816 () Bool)

(declare-fun b_and!46309 () Bool)

(assert (=> start!108756 (= tp!99816 b_and!46309)))

(declare-fun b!1283534 () Bool)

(declare-fun res!852717 () Bool)

(declare-fun e!733285 () Bool)

(assert (=> b!1283534 (=> (not res!852717) (not e!733285))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!84763 0))(
  ( (array!84764 (arr!40879 (Array (_ BitVec 32) (_ BitVec 64))) (size!41430 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84763)

(assert (=> b!1283534 (= res!852717 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41430 _keys!1741))))))

(declare-fun b!1283535 () Bool)

(declare-fun res!852718 () Bool)

(assert (=> b!1283535 (=> (not res!852718) (not e!733285))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1283535 (= res!852718 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1283536 () Bool)

(declare-fun e!733284 () Bool)

(declare-fun e!733283 () Bool)

(declare-fun mapRes!52367 () Bool)

(assert (=> b!1283536 (= e!733284 (and e!733283 mapRes!52367))))

(declare-fun condMapEmpty!52367 () Bool)

(declare-datatypes ((V!50267 0))(
  ( (V!50268 (val!17011 Int)) )
))
(declare-datatypes ((ValueCell!16038 0))(
  ( (ValueCellFull!16038 (v!19611 V!50267)) (EmptyCell!16038) )
))
(declare-datatypes ((array!84765 0))(
  ( (array!84766 (arr!40880 (Array (_ BitVec 32) ValueCell!16038)) (size!41431 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84765)

(declare-fun mapDefault!52367 () ValueCell!16038)

(assert (=> b!1283536 (= condMapEmpty!52367 (= (arr!40880 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16038)) mapDefault!52367)))))

(declare-fun b!1283537 () Bool)

(declare-fun res!852715 () Bool)

(assert (=> b!1283537 (=> (not res!852715) (not e!733285))))

(declare-fun mask!2175 () (_ BitVec 32))

(assert (=> b!1283537 (= res!852715 (and (= (size!41431 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41430 _keys!1741) (size!41431 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283538 () Bool)

(declare-fun res!852712 () Bool)

(assert (=> b!1283538 (=> (not res!852712) (not e!733285))))

(assert (=> b!1283538 (= res!852712 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41430 _keys!1741))))))

(declare-fun b!1283539 () Bool)

(declare-fun res!852714 () Bool)

(assert (=> b!1283539 (=> (not res!852714) (not e!733285))))

(declare-fun minValue!1387 () V!50267)

(declare-fun zeroValue!1387 () V!50267)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21930 0))(
  ( (tuple2!21931 (_1!10975 (_ BitVec 64)) (_2!10975 V!50267)) )
))
(declare-datatypes ((List!29139 0))(
  ( (Nil!29136) (Cons!29135 (h!30344 tuple2!21930) (t!42690 List!29139)) )
))
(declare-datatypes ((ListLongMap!19599 0))(
  ( (ListLongMap!19600 (toList!9815 List!29139)) )
))
(declare-fun contains!7870 (ListLongMap!19599 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4833 (array!84763 array!84765 (_ BitVec 32) (_ BitVec 32) V!50267 V!50267 (_ BitVec 32) Int) ListLongMap!19599)

(assert (=> b!1283539 (= res!852714 (contains!7870 (getCurrentListMap!4833 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun res!852713 () Bool)

(assert (=> start!108756 (=> (not res!852713) (not e!733285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108756 (= res!852713 (validMask!0 mask!2175))))

(assert (=> start!108756 e!733285))

(declare-fun tp_is_empty!33873 () Bool)

(assert (=> start!108756 tp_is_empty!33873))

(assert (=> start!108756 true))

(declare-fun array_inv!30991 (array!84765) Bool)

(assert (=> start!108756 (and (array_inv!30991 _values!1445) e!733284)))

(declare-fun array_inv!30992 (array!84763) Bool)

(assert (=> start!108756 (array_inv!30992 _keys!1741)))

(assert (=> start!108756 tp!99816))

(declare-fun mapNonEmpty!52367 () Bool)

(declare-fun tp!99815 () Bool)

(declare-fun e!733281 () Bool)

(assert (=> mapNonEmpty!52367 (= mapRes!52367 (and tp!99815 e!733281))))

(declare-fun mapRest!52367 () (Array (_ BitVec 32) ValueCell!16038))

(declare-fun mapKey!52367 () (_ BitVec 32))

(declare-fun mapValue!52367 () ValueCell!16038)

(assert (=> mapNonEmpty!52367 (= (arr!40880 _values!1445) (store mapRest!52367 mapKey!52367 mapValue!52367))))

(declare-fun b!1283540 () Bool)

(declare-fun res!852720 () Bool)

(assert (=> b!1283540 (=> (not res!852720) (not e!733285))))

(declare-datatypes ((List!29140 0))(
  ( (Nil!29137) (Cons!29136 (h!30345 (_ BitVec 64)) (t!42691 List!29140)) )
))
(declare-fun arrayNoDuplicates!0 (array!84763 (_ BitVec 32) List!29140) Bool)

(assert (=> b!1283540 (= res!852720 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29137))))

(declare-fun mapIsEmpty!52367 () Bool)

(assert (=> mapIsEmpty!52367 mapRes!52367))

(declare-fun b!1283541 () Bool)

(declare-fun res!852716 () Bool)

(assert (=> b!1283541 (=> (not res!852716) (not e!733285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84763 (_ BitVec 32)) Bool)

(assert (=> b!1283541 (= res!852716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1283542 () Bool)

(assert (=> b!1283542 (= e!733285 (not true))))

(declare-fun lt!576624 () ListLongMap!19599)

(assert (=> b!1283542 (contains!7870 lt!576624 k0!1205)))

(declare-datatypes ((Unit!42419 0))(
  ( (Unit!42420) )
))
(declare-fun lt!576623 () Unit!42419)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!11 ((_ BitVec 64) (_ BitVec 64) V!50267 ListLongMap!19599) Unit!42419)

(assert (=> b!1283542 (= lt!576623 (lemmaInListMapAfterAddingDiffThenInBefore!11 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576624))))

(declare-fun +!4262 (ListLongMap!19599 tuple2!21930) ListLongMap!19599)

(declare-fun getCurrentListMapNoExtraKeys!5973 (array!84763 array!84765 (_ BitVec 32) (_ BitVec 32) V!50267 V!50267 (_ BitVec 32) Int) ListLongMap!19599)

(assert (=> b!1283542 (= lt!576624 (+!4262 (getCurrentListMapNoExtraKeys!5973 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21931 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1283543 () Bool)

(assert (=> b!1283543 (= e!733281 tp_is_empty!33873)))

(declare-fun b!1283544 () Bool)

(assert (=> b!1283544 (= e!733283 tp_is_empty!33873)))

(declare-fun b!1283545 () Bool)

(declare-fun res!852719 () Bool)

(assert (=> b!1283545 (=> (not res!852719) (not e!733285))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283545 (= res!852719 (validKeyInArray!0 (select (arr!40879 _keys!1741) from!2144)))))

(assert (= (and start!108756 res!852713) b!1283537))

(assert (= (and b!1283537 res!852715) b!1283541))

(assert (= (and b!1283541 res!852716) b!1283540))

(assert (= (and b!1283540 res!852720) b!1283538))

(assert (= (and b!1283538 res!852712) b!1283539))

(assert (= (and b!1283539 res!852714) b!1283534))

(assert (= (and b!1283534 res!852717) b!1283545))

(assert (= (and b!1283545 res!852719) b!1283535))

(assert (= (and b!1283535 res!852718) b!1283542))

(assert (= (and b!1283536 condMapEmpty!52367) mapIsEmpty!52367))

(assert (= (and b!1283536 (not condMapEmpty!52367)) mapNonEmpty!52367))

(get-info :version)

(assert (= (and mapNonEmpty!52367 ((_ is ValueCellFull!16038) mapValue!52367)) b!1283543))

(assert (= (and b!1283536 ((_ is ValueCellFull!16038) mapDefault!52367)) b!1283544))

(assert (= start!108756 b!1283536))

(declare-fun m!1177459 () Bool)

(assert (=> b!1283539 m!1177459))

(assert (=> b!1283539 m!1177459))

(declare-fun m!1177461 () Bool)

(assert (=> b!1283539 m!1177461))

(declare-fun m!1177463 () Bool)

(assert (=> mapNonEmpty!52367 m!1177463))

(declare-fun m!1177465 () Bool)

(assert (=> start!108756 m!1177465))

(declare-fun m!1177467 () Bool)

(assert (=> start!108756 m!1177467))

(declare-fun m!1177469 () Bool)

(assert (=> start!108756 m!1177469))

(declare-fun m!1177471 () Bool)

(assert (=> b!1283541 m!1177471))

(declare-fun m!1177473 () Bool)

(assert (=> b!1283542 m!1177473))

(declare-fun m!1177475 () Bool)

(assert (=> b!1283542 m!1177475))

(declare-fun m!1177477 () Bool)

(assert (=> b!1283542 m!1177477))

(assert (=> b!1283542 m!1177477))

(declare-fun m!1177479 () Bool)

(assert (=> b!1283542 m!1177479))

(declare-fun m!1177481 () Bool)

(assert (=> b!1283540 m!1177481))

(declare-fun m!1177483 () Bool)

(assert (=> b!1283545 m!1177483))

(assert (=> b!1283545 m!1177483))

(declare-fun m!1177485 () Bool)

(assert (=> b!1283545 m!1177485))

(check-sat (not b_next!28233) tp_is_empty!33873 (not b!1283540) (not b!1283542) (not b!1283539) (not mapNonEmpty!52367) (not b!1283545) (not b!1283541) (not start!108756) b_and!46309)
(check-sat b_and!46309 (not b_next!28233))
