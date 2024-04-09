; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109650 () Bool)

(assert start!109650)

(declare-fun b_free!29103 () Bool)

(declare-fun b_next!29103 () Bool)

(assert (=> start!109650 (= b_free!29103 (not b_next!29103))))

(declare-fun tp!102429 () Bool)

(declare-fun b_and!47203 () Bool)

(assert (=> start!109650 (= tp!102429 b_and!47203)))

(declare-fun b!1298309 () Bool)

(declare-fun res!862920 () Bool)

(declare-fun e!740718 () Bool)

(assert (=> b!1298309 (=> (not res!862920) (not e!740718))))

(declare-datatypes ((array!86455 0))(
  ( (array!86456 (arr!41724 (Array (_ BitVec 32) (_ BitVec 64))) (size!42275 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86455)

(declare-datatypes ((List!29803 0))(
  ( (Nil!29800) (Cons!29799 (h!31008 (_ BitVec 64)) (t!43374 List!29803)) )
))
(declare-fun arrayNoDuplicates!0 (array!86455 (_ BitVec 32) List!29803) Bool)

(assert (=> b!1298309 (= res!862920 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29800))))

(declare-fun b!1298310 () Bool)

(declare-fun e!740719 () Bool)

(declare-fun e!740722 () Bool)

(declare-fun mapRes!53675 () Bool)

(assert (=> b!1298310 (= e!740719 (and e!740722 mapRes!53675))))

(declare-fun condMapEmpty!53675 () Bool)

(declare-datatypes ((V!51427 0))(
  ( (V!51428 (val!17446 Int)) )
))
(declare-datatypes ((ValueCell!16473 0))(
  ( (ValueCellFull!16473 (v!20047 V!51427)) (EmptyCell!16473) )
))
(declare-datatypes ((array!86457 0))(
  ( (array!86458 (arr!41725 (Array (_ BitVec 32) ValueCell!16473)) (size!42276 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86457)

(declare-fun mapDefault!53675 () ValueCell!16473)

(assert (=> b!1298310 (= condMapEmpty!53675 (= (arr!41725 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16473)) mapDefault!53675)))))

(declare-fun b!1298311 () Bool)

(assert (=> b!1298311 (= e!740718 (not true))))

(declare-fun minValue!1387 () V!51427)

(declare-fun zeroValue!1387 () V!51427)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22642 0))(
  ( (tuple2!22643 (_1!11331 (_ BitVec 64)) (_2!11331 V!51427)) )
))
(declare-datatypes ((List!29804 0))(
  ( (Nil!29801) (Cons!29800 (h!31009 tuple2!22642) (t!43375 List!29804)) )
))
(declare-datatypes ((ListLongMap!20311 0))(
  ( (ListLongMap!20312 (toList!10171 List!29804)) )
))
(declare-fun contains!8225 (ListLongMap!20311 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5145 (array!86455 array!86457 (_ BitVec 32) (_ BitVec 32) V!51427 V!51427 (_ BitVec 32) Int) ListLongMap!20311)

(assert (=> b!1298311 (contains!8225 (getCurrentListMap!5145 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42936 0))(
  ( (Unit!42937) )
))
(declare-fun lt!580636 () Unit!42936)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!43 (array!86455 array!86457 (_ BitVec 32) (_ BitVec 32) V!51427 V!51427 (_ BitVec 64) (_ BitVec 32) Int) Unit!42936)

(assert (=> b!1298311 (= lt!580636 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!43 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1298312 () Bool)

(declare-fun res!862922 () Bool)

(assert (=> b!1298312 (=> (not res!862922) (not e!740718))))

(assert (=> b!1298312 (= res!862922 (and (= (size!42276 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42275 _keys!1741) (size!42276 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53675 () Bool)

(assert (=> mapIsEmpty!53675 mapRes!53675))

(declare-fun b!1298313 () Bool)

(declare-fun tp_is_empty!34743 () Bool)

(assert (=> b!1298313 (= e!740722 tp_is_empty!34743)))

(declare-fun mapNonEmpty!53675 () Bool)

(declare-fun tp!102428 () Bool)

(declare-fun e!740721 () Bool)

(assert (=> mapNonEmpty!53675 (= mapRes!53675 (and tp!102428 e!740721))))

(declare-fun mapRest!53675 () (Array (_ BitVec 32) ValueCell!16473))

(declare-fun mapValue!53675 () ValueCell!16473)

(declare-fun mapKey!53675 () (_ BitVec 32))

(assert (=> mapNonEmpty!53675 (= (arr!41725 _values!1445) (store mapRest!53675 mapKey!53675 mapValue!53675))))

(declare-fun b!1298314 () Bool)

(assert (=> b!1298314 (= e!740721 tp_is_empty!34743)))

(declare-fun b!1298316 () Bool)

(declare-fun res!862925 () Bool)

(assert (=> b!1298316 (=> (not res!862925) (not e!740718))))

(assert (=> b!1298316 (= res!862925 (contains!8225 (getCurrentListMap!5145 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1298317 () Bool)

(declare-fun res!862921 () Bool)

(assert (=> b!1298317 (=> (not res!862921) (not e!740718))))

(assert (=> b!1298317 (= res!862921 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42275 _keys!1741))))))

(declare-fun b!1298318 () Bool)

(declare-fun res!862924 () Bool)

(assert (=> b!1298318 (=> (not res!862924) (not e!740718))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86455 (_ BitVec 32)) Bool)

(assert (=> b!1298318 (= res!862924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1298315 () Bool)

(declare-fun res!862923 () Bool)

(assert (=> b!1298315 (=> (not res!862923) (not e!740718))))

(assert (=> b!1298315 (= res!862923 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42275 _keys!1741)) (not (= (select (arr!41724 _keys!1741) from!2144) k0!1205))))))

(declare-fun res!862926 () Bool)

(assert (=> start!109650 (=> (not res!862926) (not e!740718))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109650 (= res!862926 (validMask!0 mask!2175))))

(assert (=> start!109650 e!740718))

(assert (=> start!109650 tp_is_empty!34743))

(assert (=> start!109650 true))

(declare-fun array_inv!31571 (array!86457) Bool)

(assert (=> start!109650 (and (array_inv!31571 _values!1445) e!740719)))

(declare-fun array_inv!31572 (array!86455) Bool)

(assert (=> start!109650 (array_inv!31572 _keys!1741)))

(assert (=> start!109650 tp!102429))

(assert (= (and start!109650 res!862926) b!1298312))

(assert (= (and b!1298312 res!862922) b!1298318))

(assert (= (and b!1298318 res!862924) b!1298309))

(assert (= (and b!1298309 res!862920) b!1298317))

(assert (= (and b!1298317 res!862921) b!1298316))

(assert (= (and b!1298316 res!862925) b!1298315))

(assert (= (and b!1298315 res!862923) b!1298311))

(assert (= (and b!1298310 condMapEmpty!53675) mapIsEmpty!53675))

(assert (= (and b!1298310 (not condMapEmpty!53675)) mapNonEmpty!53675))

(get-info :version)

(assert (= (and mapNonEmpty!53675 ((_ is ValueCellFull!16473) mapValue!53675)) b!1298314))

(assert (= (and b!1298310 ((_ is ValueCellFull!16473) mapDefault!53675)) b!1298313))

(assert (= start!109650 b!1298310))

(declare-fun m!1189709 () Bool)

(assert (=> b!1298311 m!1189709))

(assert (=> b!1298311 m!1189709))

(declare-fun m!1189711 () Bool)

(assert (=> b!1298311 m!1189711))

(declare-fun m!1189713 () Bool)

(assert (=> b!1298311 m!1189713))

(declare-fun m!1189715 () Bool)

(assert (=> b!1298315 m!1189715))

(declare-fun m!1189717 () Bool)

(assert (=> b!1298309 m!1189717))

(declare-fun m!1189719 () Bool)

(assert (=> start!109650 m!1189719))

(declare-fun m!1189721 () Bool)

(assert (=> start!109650 m!1189721))

(declare-fun m!1189723 () Bool)

(assert (=> start!109650 m!1189723))

(declare-fun m!1189725 () Bool)

(assert (=> mapNonEmpty!53675 m!1189725))

(declare-fun m!1189727 () Bool)

(assert (=> b!1298318 m!1189727))

(declare-fun m!1189729 () Bool)

(assert (=> b!1298316 m!1189729))

(assert (=> b!1298316 m!1189729))

(declare-fun m!1189731 () Bool)

(assert (=> b!1298316 m!1189731))

(check-sat (not b!1298316) (not b!1298309) tp_is_empty!34743 (not b_next!29103) b_and!47203 (not b!1298318) (not start!109650) (not mapNonEmpty!53675) (not b!1298311))
(check-sat b_and!47203 (not b_next!29103))
