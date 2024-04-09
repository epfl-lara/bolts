; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110096 () Bool)

(assert start!110096)

(declare-fun b_free!29259 () Bool)

(declare-fun b_next!29259 () Bool)

(assert (=> start!110096 (= b_free!29259 (not b_next!29259))))

(declare-fun tp!102929 () Bool)

(declare-fun b_and!47433 () Bool)

(assert (=> start!110096 (= tp!102929 b_and!47433)))

(declare-fun b!1303302 () Bool)

(declare-fun e!743428 () Bool)

(declare-fun e!743425 () Bool)

(declare-fun mapRes!53941 () Bool)

(assert (=> b!1303302 (= e!743428 (and e!743425 mapRes!53941))))

(declare-fun condMapEmpty!53941 () Bool)

(declare-datatypes ((V!51635 0))(
  ( (V!51636 (val!17524 Int)) )
))
(declare-datatypes ((ValueCell!16551 0))(
  ( (ValueCellFull!16551 (v!20138 V!51635)) (EmptyCell!16551) )
))
(declare-datatypes ((array!86775 0))(
  ( (array!86776 (arr!41874 (Array (_ BitVec 32) ValueCell!16551)) (size!42425 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86775)

(declare-fun mapDefault!53941 () ValueCell!16551)

(assert (=> b!1303302 (= condMapEmpty!53941 (= (arr!41874 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16551)) mapDefault!53941)))))

(declare-fun b!1303303 () Bool)

(declare-fun res!865718 () Bool)

(declare-fun e!743424 () Bool)

(assert (=> b!1303303 (=> (not res!865718) (not e!743424))))

(declare-datatypes ((array!86777 0))(
  ( (array!86778 (arr!41875 (Array (_ BitVec 32) (_ BitVec 64))) (size!42426 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86777)

(declare-datatypes ((List!29918 0))(
  ( (Nil!29915) (Cons!29914 (h!31123 (_ BitVec 64)) (t!43519 List!29918)) )
))
(declare-fun arrayNoDuplicates!0 (array!86777 (_ BitVec 32) List!29918) Bool)

(assert (=> b!1303303 (= res!865718 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29915))))

(declare-fun b!1303304 () Bool)

(declare-fun res!865720 () Bool)

(assert (=> b!1303304 (=> (not res!865720) (not e!743424))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1303304 (= res!865720 (not (validKeyInArray!0 (select (arr!41875 _keys!1741) from!2144))))))

(declare-fun b!1303305 () Bool)

(declare-fun res!865712 () Bool)

(assert (=> b!1303305 (=> (not res!865712) (not e!743424))))

(declare-fun minValue!1387 () V!51635)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun zeroValue!1387 () V!51635)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22766 0))(
  ( (tuple2!22767 (_1!11393 (_ BitVec 64)) (_2!11393 V!51635)) )
))
(declare-datatypes ((List!29919 0))(
  ( (Nil!29916) (Cons!29915 (h!31124 tuple2!22766) (t!43520 List!29919)) )
))
(declare-datatypes ((ListLongMap!20435 0))(
  ( (ListLongMap!20436 (toList!10233 List!29919)) )
))
(declare-fun contains!8304 (ListLongMap!20435 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5195 (array!86777 array!86775 (_ BitVec 32) (_ BitVec 32) V!51635 V!51635 (_ BitVec 32) Int) ListLongMap!20435)

(assert (=> b!1303305 (= res!865712 (contains!8304 (getCurrentListMap!5195 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1303306 () Bool)

(declare-fun e!743427 () Bool)

(assert (=> b!1303306 (= e!743424 (not e!743427))))

(declare-fun res!865713 () Bool)

(assert (=> b!1303306 (=> res!865713 e!743427)))

(assert (=> b!1303306 (= res!865713 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1303306 (not (contains!8304 (ListLongMap!20436 Nil!29916) k0!1205))))

(declare-datatypes ((Unit!43098 0))(
  ( (Unit!43099) )
))
(declare-fun lt!583199 () Unit!43098)

(declare-fun emptyContainsNothing!220 ((_ BitVec 64)) Unit!43098)

(assert (=> b!1303306 (= lt!583199 (emptyContainsNothing!220 k0!1205))))

(declare-fun b!1303307 () Bool)

(declare-fun res!865716 () Bool)

(assert (=> b!1303307 (=> (not res!865716) (not e!743424))))

(assert (=> b!1303307 (= res!865716 (and (= (size!42425 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42426 _keys!1741) (size!42425 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!865717 () Bool)

(assert (=> start!110096 (=> (not res!865717) (not e!743424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110096 (= res!865717 (validMask!0 mask!2175))))

(assert (=> start!110096 e!743424))

(declare-fun tp_is_empty!34899 () Bool)

(assert (=> start!110096 tp_is_empty!34899))

(assert (=> start!110096 true))

(declare-fun array_inv!31669 (array!86775) Bool)

(assert (=> start!110096 (and (array_inv!31669 _values!1445) e!743428)))

(declare-fun array_inv!31670 (array!86777) Bool)

(assert (=> start!110096 (array_inv!31670 _keys!1741)))

(assert (=> start!110096 tp!102929))

(declare-fun mapIsEmpty!53941 () Bool)

(assert (=> mapIsEmpty!53941 mapRes!53941))

(declare-fun mapNonEmpty!53941 () Bool)

(declare-fun tp!102928 () Bool)

(declare-fun e!743426 () Bool)

(assert (=> mapNonEmpty!53941 (= mapRes!53941 (and tp!102928 e!743426))))

(declare-fun mapRest!53941 () (Array (_ BitVec 32) ValueCell!16551))

(declare-fun mapKey!53941 () (_ BitVec 32))

(declare-fun mapValue!53941 () ValueCell!16551)

(assert (=> mapNonEmpty!53941 (= (arr!41874 _values!1445) (store mapRest!53941 mapKey!53941 mapValue!53941))))

(declare-fun b!1303308 () Bool)

(declare-fun res!865715 () Bool)

(assert (=> b!1303308 (=> (not res!865715) (not e!743424))))

(assert (=> b!1303308 (= res!865715 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42426 _keys!1741))))))

(declare-fun b!1303309 () Bool)

(declare-fun res!865719 () Bool)

(assert (=> b!1303309 (=> (not res!865719) (not e!743424))))

(assert (=> b!1303309 (= res!865719 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42426 _keys!1741))))))

(declare-fun b!1303310 () Bool)

(declare-fun res!865714 () Bool)

(assert (=> b!1303310 (=> (not res!865714) (not e!743424))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86777 (_ BitVec 32)) Bool)

(assert (=> b!1303310 (= res!865714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1303311 () Bool)

(assert (=> b!1303311 (= e!743425 tp_is_empty!34899)))

(declare-fun b!1303312 () Bool)

(assert (=> b!1303312 (= e!743426 tp_is_empty!34899)))

(declare-fun b!1303313 () Bool)

(assert (=> b!1303313 (= e!743427 true)))

(assert (=> b!1303313 false))

(declare-fun lt!583202 () ListLongMap!20435)

(declare-fun lt!583198 () Unit!43098)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!86 ((_ BitVec 64) (_ BitVec 64) V!51635 ListLongMap!20435) Unit!43098)

(assert (=> b!1303313 (= lt!583198 (lemmaInListMapAfterAddingDiffThenInBefore!86 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!583202))))

(declare-fun lt!583200 () ListLongMap!20435)

(declare-fun +!4453 (ListLongMap!20435 tuple2!22766) ListLongMap!20435)

(assert (=> b!1303313 (not (contains!8304 (+!4453 lt!583200 (tuple2!22767 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!583201 () Unit!43098)

(declare-fun addStillNotContains!477 (ListLongMap!20435 (_ BitVec 64) V!51635 (_ BitVec 64)) Unit!43098)

(assert (=> b!1303313 (= lt!583201 (addStillNotContains!477 lt!583200 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1303313 (not (contains!8304 lt!583202 k0!1205))))

(assert (=> b!1303313 (= lt!583202 (+!4453 lt!583200 (tuple2!22767 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!583203 () Unit!43098)

(assert (=> b!1303313 (= lt!583203 (addStillNotContains!477 lt!583200 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6167 (array!86777 array!86775 (_ BitVec 32) (_ BitVec 32) V!51635 V!51635 (_ BitVec 32) Int) ListLongMap!20435)

(assert (=> b!1303313 (= lt!583200 (getCurrentListMapNoExtraKeys!6167 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(assert (= (and start!110096 res!865717) b!1303307))

(assert (= (and b!1303307 res!865716) b!1303310))

(assert (= (and b!1303310 res!865714) b!1303303))

(assert (= (and b!1303303 res!865718) b!1303308))

(assert (= (and b!1303308 res!865715) b!1303305))

(assert (= (and b!1303305 res!865712) b!1303309))

(assert (= (and b!1303309 res!865719) b!1303304))

(assert (= (and b!1303304 res!865720) b!1303306))

(assert (= (and b!1303306 (not res!865713)) b!1303313))

(assert (= (and b!1303302 condMapEmpty!53941) mapIsEmpty!53941))

(assert (= (and b!1303302 (not condMapEmpty!53941)) mapNonEmpty!53941))

(get-info :version)

(assert (= (and mapNonEmpty!53941 ((_ is ValueCellFull!16551) mapValue!53941)) b!1303312))

(assert (= (and b!1303302 ((_ is ValueCellFull!16551) mapDefault!53941)) b!1303311))

(assert (= start!110096 b!1303302))

(declare-fun m!1194241 () Bool)

(assert (=> b!1303310 m!1194241))

(declare-fun m!1194243 () Bool)

(assert (=> b!1303306 m!1194243))

(declare-fun m!1194245 () Bool)

(assert (=> b!1303306 m!1194245))

(declare-fun m!1194247 () Bool)

(assert (=> start!110096 m!1194247))

(declare-fun m!1194249 () Bool)

(assert (=> start!110096 m!1194249))

(declare-fun m!1194251 () Bool)

(assert (=> start!110096 m!1194251))

(declare-fun m!1194253 () Bool)

(assert (=> mapNonEmpty!53941 m!1194253))

(declare-fun m!1194255 () Bool)

(assert (=> b!1303304 m!1194255))

(assert (=> b!1303304 m!1194255))

(declare-fun m!1194257 () Bool)

(assert (=> b!1303304 m!1194257))

(declare-fun m!1194259 () Bool)

(assert (=> b!1303303 m!1194259))

(declare-fun m!1194261 () Bool)

(assert (=> b!1303313 m!1194261))

(declare-fun m!1194263 () Bool)

(assert (=> b!1303313 m!1194263))

(declare-fun m!1194265 () Bool)

(assert (=> b!1303313 m!1194265))

(declare-fun m!1194267 () Bool)

(assert (=> b!1303313 m!1194267))

(declare-fun m!1194269 () Bool)

(assert (=> b!1303313 m!1194269))

(declare-fun m!1194271 () Bool)

(assert (=> b!1303313 m!1194271))

(declare-fun m!1194273 () Bool)

(assert (=> b!1303313 m!1194273))

(declare-fun m!1194275 () Bool)

(assert (=> b!1303313 m!1194275))

(assert (=> b!1303313 m!1194263))

(declare-fun m!1194277 () Bool)

(assert (=> b!1303305 m!1194277))

(assert (=> b!1303305 m!1194277))

(declare-fun m!1194279 () Bool)

(assert (=> b!1303305 m!1194279))

(check-sat (not b!1303306) (not b!1303313) (not b!1303303) b_and!47433 (not b!1303304) (not start!110096) (not b!1303310) (not b!1303305) (not b_next!29259) tp_is_empty!34899 (not mapNonEmpty!53941))
(check-sat b_and!47433 (not b_next!29259))
