; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109614 () Bool)

(assert start!109614)

(declare-fun b_free!29067 () Bool)

(declare-fun b_next!29067 () Bool)

(assert (=> start!109614 (= b_free!29067 (not b_next!29067))))

(declare-fun tp!102321 () Bool)

(declare-fun b_and!47167 () Bool)

(assert (=> start!109614 (= tp!102321 b_and!47167)))

(declare-fun b!1297769 () Bool)

(declare-fun res!862545 () Bool)

(declare-fun e!740450 () Bool)

(assert (=> b!1297769 (=> (not res!862545) (not e!740450))))

(declare-datatypes ((V!51379 0))(
  ( (V!51380 (val!17428 Int)) )
))
(declare-fun minValue!1387 () V!51379)

(declare-fun zeroValue!1387 () V!51379)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16455 0))(
  ( (ValueCellFull!16455 (v!20029 V!51379)) (EmptyCell!16455) )
))
(declare-datatypes ((array!86387 0))(
  ( (array!86388 (arr!41690 (Array (_ BitVec 32) ValueCell!16455)) (size!42241 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86387)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86389 0))(
  ( (array!86390 (arr!41691 (Array (_ BitVec 32) (_ BitVec 64))) (size!42242 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86389)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22612 0))(
  ( (tuple2!22613 (_1!11316 (_ BitVec 64)) (_2!11316 V!51379)) )
))
(declare-datatypes ((List!29774 0))(
  ( (Nil!29771) (Cons!29770 (h!30979 tuple2!22612) (t!43345 List!29774)) )
))
(declare-datatypes ((ListLongMap!20281 0))(
  ( (ListLongMap!20282 (toList!10156 List!29774)) )
))
(declare-fun contains!8210 (ListLongMap!20281 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5130 (array!86389 array!86387 (_ BitVec 32) (_ BitVec 32) V!51379 V!51379 (_ BitVec 32) Int) ListLongMap!20281)

(assert (=> b!1297769 (= res!862545 (contains!8210 (getCurrentListMap!5130 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1297770 () Bool)

(declare-fun e!740449 () Bool)

(declare-fun tp_is_empty!34707 () Bool)

(assert (=> b!1297770 (= e!740449 tp_is_empty!34707)))

(declare-fun b!1297771 () Bool)

(declare-fun res!862546 () Bool)

(assert (=> b!1297771 (=> (not res!862546) (not e!740450))))

(assert (=> b!1297771 (= res!862546 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42242 _keys!1741)) (not (= (select (arr!41691 _keys!1741) from!2144) k0!1205))))))

(declare-fun mapNonEmpty!53621 () Bool)

(declare-fun mapRes!53621 () Bool)

(declare-fun tp!102320 () Bool)

(assert (=> mapNonEmpty!53621 (= mapRes!53621 (and tp!102320 e!740449))))

(declare-fun mapKey!53621 () (_ BitVec 32))

(declare-fun mapRest!53621 () (Array (_ BitVec 32) ValueCell!16455))

(declare-fun mapValue!53621 () ValueCell!16455)

(assert (=> mapNonEmpty!53621 (= (arr!41690 _values!1445) (store mapRest!53621 mapKey!53621 mapValue!53621))))

(declare-fun res!862543 () Bool)

(assert (=> start!109614 (=> (not res!862543) (not e!740450))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109614 (= res!862543 (validMask!0 mask!2175))))

(assert (=> start!109614 e!740450))

(assert (=> start!109614 tp_is_empty!34707))

(assert (=> start!109614 true))

(declare-fun e!740452 () Bool)

(declare-fun array_inv!31549 (array!86387) Bool)

(assert (=> start!109614 (and (array_inv!31549 _values!1445) e!740452)))

(declare-fun array_inv!31550 (array!86389) Bool)

(assert (=> start!109614 (array_inv!31550 _keys!1741)))

(assert (=> start!109614 tp!102321))

(declare-fun b!1297772 () Bool)

(declare-fun res!862548 () Bool)

(assert (=> b!1297772 (=> (not res!862548) (not e!740450))))

(assert (=> b!1297772 (= res!862548 (and (= (size!42241 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42242 _keys!1741) (size!42241 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297773 () Bool)

(assert (=> b!1297773 (= e!740450 (not true))))

(assert (=> b!1297773 (contains!8210 (getCurrentListMap!5130 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42910 0))(
  ( (Unit!42911) )
))
(declare-fun lt!580582 () Unit!42910)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!30 (array!86389 array!86387 (_ BitVec 32) (_ BitVec 32) V!51379 V!51379 (_ BitVec 64) (_ BitVec 32) Int) Unit!42910)

(assert (=> b!1297773 (= lt!580582 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!30 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1297774 () Bool)

(declare-fun e!740451 () Bool)

(assert (=> b!1297774 (= e!740451 tp_is_empty!34707)))

(declare-fun b!1297775 () Bool)

(declare-fun res!862547 () Bool)

(assert (=> b!1297775 (=> (not res!862547) (not e!740450))))

(declare-datatypes ((List!29775 0))(
  ( (Nil!29772) (Cons!29771 (h!30980 (_ BitVec 64)) (t!43346 List!29775)) )
))
(declare-fun arrayNoDuplicates!0 (array!86389 (_ BitVec 32) List!29775) Bool)

(assert (=> b!1297775 (= res!862547 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29772))))

(declare-fun b!1297776 () Bool)

(declare-fun res!862544 () Bool)

(assert (=> b!1297776 (=> (not res!862544) (not e!740450))))

(assert (=> b!1297776 (= res!862544 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42242 _keys!1741))))))

(declare-fun b!1297777 () Bool)

(assert (=> b!1297777 (= e!740452 (and e!740451 mapRes!53621))))

(declare-fun condMapEmpty!53621 () Bool)

(declare-fun mapDefault!53621 () ValueCell!16455)

(assert (=> b!1297777 (= condMapEmpty!53621 (= (arr!41690 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16455)) mapDefault!53621)))))

(declare-fun mapIsEmpty!53621 () Bool)

(assert (=> mapIsEmpty!53621 mapRes!53621))

(declare-fun b!1297778 () Bool)

(declare-fun res!862542 () Bool)

(assert (=> b!1297778 (=> (not res!862542) (not e!740450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86389 (_ BitVec 32)) Bool)

(assert (=> b!1297778 (= res!862542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!109614 res!862543) b!1297772))

(assert (= (and b!1297772 res!862548) b!1297778))

(assert (= (and b!1297778 res!862542) b!1297775))

(assert (= (and b!1297775 res!862547) b!1297776))

(assert (= (and b!1297776 res!862544) b!1297769))

(assert (= (and b!1297769 res!862545) b!1297771))

(assert (= (and b!1297771 res!862546) b!1297773))

(assert (= (and b!1297777 condMapEmpty!53621) mapIsEmpty!53621))

(assert (= (and b!1297777 (not condMapEmpty!53621)) mapNonEmpty!53621))

(get-info :version)

(assert (= (and mapNonEmpty!53621 ((_ is ValueCellFull!16455) mapValue!53621)) b!1297770))

(assert (= (and b!1297777 ((_ is ValueCellFull!16455) mapDefault!53621)) b!1297774))

(assert (= start!109614 b!1297777))

(declare-fun m!1189277 () Bool)

(assert (=> b!1297769 m!1189277))

(assert (=> b!1297769 m!1189277))

(declare-fun m!1189279 () Bool)

(assert (=> b!1297769 m!1189279))

(declare-fun m!1189281 () Bool)

(assert (=> b!1297773 m!1189281))

(assert (=> b!1297773 m!1189281))

(declare-fun m!1189283 () Bool)

(assert (=> b!1297773 m!1189283))

(declare-fun m!1189285 () Bool)

(assert (=> b!1297773 m!1189285))

(declare-fun m!1189287 () Bool)

(assert (=> b!1297778 m!1189287))

(declare-fun m!1189289 () Bool)

(assert (=> b!1297771 m!1189289))

(declare-fun m!1189291 () Bool)

(assert (=> mapNonEmpty!53621 m!1189291))

(declare-fun m!1189293 () Bool)

(assert (=> start!109614 m!1189293))

(declare-fun m!1189295 () Bool)

(assert (=> start!109614 m!1189295))

(declare-fun m!1189297 () Bool)

(assert (=> start!109614 m!1189297))

(declare-fun m!1189299 () Bool)

(assert (=> b!1297775 m!1189299))

(check-sat tp_is_empty!34707 (not b!1297773) (not b!1297775) (not start!109614) (not mapNonEmpty!53621) b_and!47167 (not b!1297778) (not b_next!29067) (not b!1297769))
(check-sat b_and!47167 (not b_next!29067))
