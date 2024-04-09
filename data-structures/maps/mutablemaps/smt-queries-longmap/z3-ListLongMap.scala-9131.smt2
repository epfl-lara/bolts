; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109608 () Bool)

(assert start!109608)

(declare-fun b_free!29061 () Bool)

(declare-fun b_next!29061 () Bool)

(assert (=> start!109608 (= b_free!29061 (not b_next!29061))))

(declare-fun tp!102302 () Bool)

(declare-fun b_and!47161 () Bool)

(assert (=> start!109608 (= tp!102302 b_and!47161)))

(declare-fun b!1297679 () Bool)

(declare-fun e!740406 () Bool)

(declare-fun tp_is_empty!34701 () Bool)

(assert (=> b!1297679 (= e!740406 tp_is_empty!34701)))

(declare-fun mapNonEmpty!53612 () Bool)

(declare-fun mapRes!53612 () Bool)

(declare-fun tp!102303 () Bool)

(assert (=> mapNonEmpty!53612 (= mapRes!53612 (and tp!102303 e!740406))))

(declare-fun mapKey!53612 () (_ BitVec 32))

(declare-datatypes ((V!51371 0))(
  ( (V!51372 (val!17425 Int)) )
))
(declare-datatypes ((ValueCell!16452 0))(
  ( (ValueCellFull!16452 (v!20026 V!51371)) (EmptyCell!16452) )
))
(declare-fun mapRest!53612 () (Array (_ BitVec 32) ValueCell!16452))

(declare-datatypes ((array!86375 0))(
  ( (array!86376 (arr!41684 (Array (_ BitVec 32) ValueCell!16452)) (size!42235 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86375)

(declare-fun mapValue!53612 () ValueCell!16452)

(assert (=> mapNonEmpty!53612 (= (arr!41684 _values!1445) (store mapRest!53612 mapKey!53612 mapValue!53612))))

(declare-fun b!1297680 () Bool)

(declare-fun res!862481 () Bool)

(declare-fun e!740404 () Bool)

(assert (=> b!1297680 (=> (not res!862481) (not e!740404))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86377 0))(
  ( (array!86378 (arr!41685 (Array (_ BitVec 32) (_ BitVec 64))) (size!42236 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86377)

(assert (=> b!1297680 (= res!862481 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42236 _keys!1741))))))

(declare-fun b!1297681 () Bool)

(declare-fun e!740403 () Bool)

(declare-fun e!740405 () Bool)

(assert (=> b!1297681 (= e!740403 (and e!740405 mapRes!53612))))

(declare-fun condMapEmpty!53612 () Bool)

(declare-fun mapDefault!53612 () ValueCell!16452)

(assert (=> b!1297681 (= condMapEmpty!53612 (= (arr!41684 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16452)) mapDefault!53612)))))

(declare-fun b!1297682 () Bool)

(assert (=> b!1297682 (= e!740404 (not true))))

(declare-fun minValue!1387 () V!51371)

(declare-fun zeroValue!1387 () V!51371)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22606 0))(
  ( (tuple2!22607 (_1!11313 (_ BitVec 64)) (_2!11313 V!51371)) )
))
(declare-datatypes ((List!29769 0))(
  ( (Nil!29766) (Cons!29765 (h!30974 tuple2!22606) (t!43340 List!29769)) )
))
(declare-datatypes ((ListLongMap!20275 0))(
  ( (ListLongMap!20276 (toList!10153 List!29769)) )
))
(declare-fun contains!8207 (ListLongMap!20275 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5127 (array!86377 array!86375 (_ BitVec 32) (_ BitVec 32) V!51371 V!51371 (_ BitVec 32) Int) ListLongMap!20275)

(assert (=> b!1297682 (contains!8207 (getCurrentListMap!5127 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42904 0))(
  ( (Unit!42905) )
))
(declare-fun lt!580573 () Unit!42904)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!27 (array!86377 array!86375 (_ BitVec 32) (_ BitVec 32) V!51371 V!51371 (_ BitVec 64) (_ BitVec 32) Int) Unit!42904)

(assert (=> b!1297682 (= lt!580573 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!27 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun res!862485 () Bool)

(assert (=> start!109608 (=> (not res!862485) (not e!740404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109608 (= res!862485 (validMask!0 mask!2175))))

(assert (=> start!109608 e!740404))

(assert (=> start!109608 tp_is_empty!34701))

(assert (=> start!109608 true))

(declare-fun array_inv!31543 (array!86375) Bool)

(assert (=> start!109608 (and (array_inv!31543 _values!1445) e!740403)))

(declare-fun array_inv!31544 (array!86377) Bool)

(assert (=> start!109608 (array_inv!31544 _keys!1741)))

(assert (=> start!109608 tp!102302))

(declare-fun b!1297683 () Bool)

(declare-fun res!862483 () Bool)

(assert (=> b!1297683 (=> (not res!862483) (not e!740404))))

(assert (=> b!1297683 (= res!862483 (and (= (size!42235 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42236 _keys!1741) (size!42235 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297684 () Bool)

(declare-fun res!862479 () Bool)

(assert (=> b!1297684 (=> (not res!862479) (not e!740404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86377 (_ BitVec 32)) Bool)

(assert (=> b!1297684 (= res!862479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297685 () Bool)

(declare-fun res!862480 () Bool)

(assert (=> b!1297685 (=> (not res!862480) (not e!740404))))

(assert (=> b!1297685 (= res!862480 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42236 _keys!1741)) (not (= (select (arr!41685 _keys!1741) from!2144) k0!1205))))))

(declare-fun mapIsEmpty!53612 () Bool)

(assert (=> mapIsEmpty!53612 mapRes!53612))

(declare-fun b!1297686 () Bool)

(declare-fun res!862482 () Bool)

(assert (=> b!1297686 (=> (not res!862482) (not e!740404))))

(declare-datatypes ((List!29770 0))(
  ( (Nil!29767) (Cons!29766 (h!30975 (_ BitVec 64)) (t!43341 List!29770)) )
))
(declare-fun arrayNoDuplicates!0 (array!86377 (_ BitVec 32) List!29770) Bool)

(assert (=> b!1297686 (= res!862482 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29767))))

(declare-fun b!1297687 () Bool)

(assert (=> b!1297687 (= e!740405 tp_is_empty!34701)))

(declare-fun b!1297688 () Bool)

(declare-fun res!862484 () Bool)

(assert (=> b!1297688 (=> (not res!862484) (not e!740404))))

(assert (=> b!1297688 (= res!862484 (contains!8207 (getCurrentListMap!5127 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!109608 res!862485) b!1297683))

(assert (= (and b!1297683 res!862483) b!1297684))

(assert (= (and b!1297684 res!862479) b!1297686))

(assert (= (and b!1297686 res!862482) b!1297680))

(assert (= (and b!1297680 res!862481) b!1297688))

(assert (= (and b!1297688 res!862484) b!1297685))

(assert (= (and b!1297685 res!862480) b!1297682))

(assert (= (and b!1297681 condMapEmpty!53612) mapIsEmpty!53612))

(assert (= (and b!1297681 (not condMapEmpty!53612)) mapNonEmpty!53612))

(get-info :version)

(assert (= (and mapNonEmpty!53612 ((_ is ValueCellFull!16452) mapValue!53612)) b!1297679))

(assert (= (and b!1297681 ((_ is ValueCellFull!16452) mapDefault!53612)) b!1297687))

(assert (= start!109608 b!1297681))

(declare-fun m!1189205 () Bool)

(assert (=> b!1297684 m!1189205))

(declare-fun m!1189207 () Bool)

(assert (=> start!109608 m!1189207))

(declare-fun m!1189209 () Bool)

(assert (=> start!109608 m!1189209))

(declare-fun m!1189211 () Bool)

(assert (=> start!109608 m!1189211))

(declare-fun m!1189213 () Bool)

(assert (=> b!1297682 m!1189213))

(assert (=> b!1297682 m!1189213))

(declare-fun m!1189215 () Bool)

(assert (=> b!1297682 m!1189215))

(declare-fun m!1189217 () Bool)

(assert (=> b!1297682 m!1189217))

(declare-fun m!1189219 () Bool)

(assert (=> mapNonEmpty!53612 m!1189219))

(declare-fun m!1189221 () Bool)

(assert (=> b!1297688 m!1189221))

(assert (=> b!1297688 m!1189221))

(declare-fun m!1189223 () Bool)

(assert (=> b!1297688 m!1189223))

(declare-fun m!1189225 () Bool)

(assert (=> b!1297686 m!1189225))

(declare-fun m!1189227 () Bool)

(assert (=> b!1297685 m!1189227))

(check-sat (not mapNonEmpty!53612) (not b!1297688) (not start!109608) (not b!1297682) (not b!1297684) (not b_next!29061) b_and!47161 (not b!1297686) tp_is_empty!34701)
(check-sat b_and!47161 (not b_next!29061))
