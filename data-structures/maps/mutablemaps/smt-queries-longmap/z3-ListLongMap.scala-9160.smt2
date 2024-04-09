; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109972 () Bool)

(assert start!109972)

(declare-fun b_free!29235 () Bool)

(declare-fun b_next!29235 () Bool)

(assert (=> start!109972 (= b_free!29235 (not b_next!29235))))

(declare-fun tp!102846 () Bool)

(declare-fun b_and!47387 () Bool)

(assert (=> start!109972 (= tp!102846 b_and!47387)))

(declare-fun mapIsEmpty!53895 () Bool)

(declare-fun mapRes!53895 () Bool)

(assert (=> mapIsEmpty!53895 mapRes!53895))

(declare-fun b!1302221 () Bool)

(declare-fun e!742785 () Bool)

(declare-fun tp_is_empty!34875 () Bool)

(assert (=> b!1302221 (= e!742785 tp_is_empty!34875)))

(declare-fun b!1302223 () Bool)

(declare-fun res!865107 () Bool)

(declare-fun e!742788 () Bool)

(assert (=> b!1302223 (=> (not res!865107) (not e!742788))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51603 0))(
  ( (V!51604 (val!17512 Int)) )
))
(declare-datatypes ((ValueCell!16539 0))(
  ( (ValueCellFull!16539 (v!20122 V!51603)) (EmptyCell!16539) )
))
(declare-datatypes ((array!86723 0))(
  ( (array!86724 (arr!41851 (Array (_ BitVec 32) ValueCell!16539)) (size!42402 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86723)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86725 0))(
  ( (array!86726 (arr!41852 (Array (_ BitVec 32) (_ BitVec 64))) (size!42403 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86725)

(assert (=> b!1302223 (= res!865107 (and (= (size!42402 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42403 _keys!1741) (size!42402 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53895 () Bool)

(declare-fun tp!102847 () Bool)

(declare-fun e!742787 () Bool)

(assert (=> mapNonEmpty!53895 (= mapRes!53895 (and tp!102847 e!742787))))

(declare-fun mapRest!53895 () (Array (_ BitVec 32) ValueCell!16539))

(declare-fun mapValue!53895 () ValueCell!16539)

(declare-fun mapKey!53895 () (_ BitVec 32))

(assert (=> mapNonEmpty!53895 (= (arr!41851 _values!1445) (store mapRest!53895 mapKey!53895 mapValue!53895))))

(declare-fun b!1302224 () Bool)

(declare-fun res!865108 () Bool)

(assert (=> b!1302224 (=> (not res!865108) (not e!742788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86725 (_ BitVec 32)) Bool)

(assert (=> b!1302224 (= res!865108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1302225 () Bool)

(declare-fun res!865100 () Bool)

(assert (=> b!1302225 (=> (not res!865100) (not e!742788))))

(declare-fun minValue!1387 () V!51603)

(declare-fun zeroValue!1387 () V!51603)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22748 0))(
  ( (tuple2!22749 (_1!11384 (_ BitVec 64)) (_2!11384 V!51603)) )
))
(declare-datatypes ((List!29900 0))(
  ( (Nil!29897) (Cons!29896 (h!31105 tuple2!22748) (t!43495 List!29900)) )
))
(declare-datatypes ((ListLongMap!20417 0))(
  ( (ListLongMap!20418 (toList!10224 List!29900)) )
))
(declare-fun contains!8289 (ListLongMap!20417 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5189 (array!86725 array!86723 (_ BitVec 32) (_ BitVec 32) V!51603 V!51603 (_ BitVec 32) Int) ListLongMap!20417)

(assert (=> b!1302225 (= res!865100 (contains!8289 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1302226 () Bool)

(declare-fun res!865102 () Bool)

(assert (=> b!1302226 (=> (not res!865102) (not e!742788))))

(assert (=> b!1302226 (= res!865102 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42403 _keys!1741))))))

(declare-fun b!1302227 () Bool)

(declare-fun e!742789 () Bool)

(assert (=> b!1302227 (= e!742789 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!1205)))))

(declare-fun b!1302222 () Bool)

(declare-fun e!742786 () Bool)

(assert (=> b!1302222 (= e!742788 (not e!742786))))

(declare-fun res!865105 () Bool)

(assert (=> b!1302222 (=> res!865105 e!742786)))

(assert (=> b!1302222 (= res!865105 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1302222 (not (contains!8289 (ListLongMap!20418 Nil!29897) k0!1205))))

(declare-datatypes ((Unit!43057 0))(
  ( (Unit!43058) )
))
(declare-fun lt!582499 () Unit!43057)

(declare-fun emptyContainsNothing!212 ((_ BitVec 64)) Unit!43057)

(assert (=> b!1302222 (= lt!582499 (emptyContainsNothing!212 k0!1205))))

(declare-fun res!865101 () Bool)

(assert (=> start!109972 (=> (not res!865101) (not e!742788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109972 (= res!865101 (validMask!0 mask!2175))))

(assert (=> start!109972 e!742788))

(assert (=> start!109972 tp_is_empty!34875))

(assert (=> start!109972 true))

(declare-fun e!742784 () Bool)

(declare-fun array_inv!31655 (array!86723) Bool)

(assert (=> start!109972 (and (array_inv!31655 _values!1445) e!742784)))

(declare-fun array_inv!31656 (array!86725) Bool)

(assert (=> start!109972 (array_inv!31656 _keys!1741)))

(assert (=> start!109972 tp!102846))

(declare-fun b!1302228 () Bool)

(declare-fun res!865106 () Bool)

(assert (=> b!1302228 (=> (not res!865106) (not e!742788))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1302228 (= res!865106 (not (validKeyInArray!0 (select (arr!41852 _keys!1741) from!2144))))))

(declare-fun b!1302229 () Bool)

(assert (=> b!1302229 (= e!742784 (and e!742785 mapRes!53895))))

(declare-fun condMapEmpty!53895 () Bool)

(declare-fun mapDefault!53895 () ValueCell!16539)

(assert (=> b!1302229 (= condMapEmpty!53895 (= (arr!41851 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16539)) mapDefault!53895)))))

(declare-fun b!1302230 () Bool)

(declare-fun res!865103 () Bool)

(assert (=> b!1302230 (=> (not res!865103) (not e!742788))))

(declare-datatypes ((List!29901 0))(
  ( (Nil!29898) (Cons!29897 (h!31106 (_ BitVec 64)) (t!43496 List!29901)) )
))
(declare-fun arrayNoDuplicates!0 (array!86725 (_ BitVec 32) List!29901) Bool)

(assert (=> b!1302230 (= res!865103 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29898))))

(declare-fun b!1302231 () Bool)

(assert (=> b!1302231 (= e!742786 e!742789)))

(declare-fun res!865104 () Bool)

(assert (=> b!1302231 (=> (not res!865104) (not e!742789))))

(declare-fun getCurrentListMapNoExtraKeys!6159 (array!86725 array!86723 (_ BitVec 32) (_ BitVec 32) V!51603 V!51603 (_ BitVec 32) Int) ListLongMap!20417)

(assert (=> b!1302231 (= res!865104 (not (contains!8289 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205)))))

(declare-fun b!1302232 () Bool)

(declare-fun res!865109 () Bool)

(assert (=> b!1302232 (=> (not res!865109) (not e!742788))))

(assert (=> b!1302232 (= res!865109 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42403 _keys!1741))))))

(declare-fun b!1302233 () Bool)

(assert (=> b!1302233 (= e!742787 tp_is_empty!34875)))

(assert (= (and start!109972 res!865101) b!1302223))

(assert (= (and b!1302223 res!865107) b!1302224))

(assert (= (and b!1302224 res!865108) b!1302230))

(assert (= (and b!1302230 res!865103) b!1302232))

(assert (= (and b!1302232 res!865109) b!1302225))

(assert (= (and b!1302225 res!865100) b!1302226))

(assert (= (and b!1302226 res!865102) b!1302228))

(assert (= (and b!1302228 res!865106) b!1302222))

(assert (= (and b!1302222 (not res!865105)) b!1302231))

(assert (= (and b!1302231 res!865104) b!1302227))

(assert (= (and b!1302229 condMapEmpty!53895) mapIsEmpty!53895))

(assert (= (and b!1302229 (not condMapEmpty!53895)) mapNonEmpty!53895))

(get-info :version)

(assert (= (and mapNonEmpty!53895 ((_ is ValueCellFull!16539) mapValue!53895)) b!1302233))

(assert (= (and b!1302229 ((_ is ValueCellFull!16539) mapDefault!53895)) b!1302221))

(assert (= start!109972 b!1302229))

(declare-fun m!1193039 () Bool)

(assert (=> b!1302225 m!1193039))

(assert (=> b!1302225 m!1193039))

(declare-fun m!1193041 () Bool)

(assert (=> b!1302225 m!1193041))

(declare-fun m!1193043 () Bool)

(assert (=> b!1302231 m!1193043))

(assert (=> b!1302231 m!1193043))

(declare-fun m!1193045 () Bool)

(assert (=> b!1302231 m!1193045))

(declare-fun m!1193047 () Bool)

(assert (=> b!1302230 m!1193047))

(declare-fun m!1193049 () Bool)

(assert (=> mapNonEmpty!53895 m!1193049))

(declare-fun m!1193051 () Bool)

(assert (=> b!1302228 m!1193051))

(assert (=> b!1302228 m!1193051))

(declare-fun m!1193053 () Bool)

(assert (=> b!1302228 m!1193053))

(declare-fun m!1193055 () Bool)

(assert (=> b!1302224 m!1193055))

(declare-fun m!1193057 () Bool)

(assert (=> start!109972 m!1193057))

(declare-fun m!1193059 () Bool)

(assert (=> start!109972 m!1193059))

(declare-fun m!1193061 () Bool)

(assert (=> start!109972 m!1193061))

(declare-fun m!1193063 () Bool)

(assert (=> b!1302222 m!1193063))

(declare-fun m!1193065 () Bool)

(assert (=> b!1302222 m!1193065))

(check-sat (not mapNonEmpty!53895) (not b!1302228) (not b_next!29235) (not b!1302222) (not b!1302230) b_and!47387 tp_is_empty!34875 (not b!1302231) (not b!1302225) (not start!109972) (not b!1302224))
(check-sat b_and!47387 (not b_next!29235))
(get-model)

(declare-fun d!141351 () Bool)

(assert (=> d!141351 (= (validKeyInArray!0 (select (arr!41852 _keys!1741) from!2144)) (and (not (= (select (arr!41852 _keys!1741) from!2144) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41852 _keys!1741) from!2144) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1302228 d!141351))

(declare-fun d!141353 () Bool)

(declare-fun e!742816 () Bool)

(assert (=> d!141353 e!742816))

(declare-fun res!865142 () Bool)

(assert (=> d!141353 (=> res!865142 e!742816)))

(declare-fun lt!582513 () Bool)

(assert (=> d!141353 (= res!865142 (not lt!582513))))

(declare-fun lt!582511 () Bool)

(assert (=> d!141353 (= lt!582513 lt!582511)))

(declare-fun lt!582514 () Unit!43057)

(declare-fun e!742817 () Unit!43057)

(assert (=> d!141353 (= lt!582514 e!742817)))

(declare-fun c!124886 () Bool)

(assert (=> d!141353 (= c!124886 lt!582511)))

(declare-fun containsKey!722 (List!29900 (_ BitVec 64)) Bool)

(assert (=> d!141353 (= lt!582511 (containsKey!722 (toList!10224 (ListLongMap!20418 Nil!29897)) k0!1205))))

(assert (=> d!141353 (= (contains!8289 (ListLongMap!20418 Nil!29897) k0!1205) lt!582513)))

(declare-fun b!1302279 () Bool)

(declare-fun lt!582512 () Unit!43057)

(assert (=> b!1302279 (= e!742817 lt!582512)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!467 (List!29900 (_ BitVec 64)) Unit!43057)

(assert (=> b!1302279 (= lt!582512 (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!10224 (ListLongMap!20418 Nil!29897)) k0!1205))))

(declare-datatypes ((Option!755 0))(
  ( (Some!754 (v!20124 V!51603)) (None!753) )
))
(declare-fun isDefined!507 (Option!755) Bool)

(declare-fun getValueByKey!704 (List!29900 (_ BitVec 64)) Option!755)

(assert (=> b!1302279 (isDefined!507 (getValueByKey!704 (toList!10224 (ListLongMap!20418 Nil!29897)) k0!1205))))

(declare-fun b!1302280 () Bool)

(declare-fun Unit!43059 () Unit!43057)

(assert (=> b!1302280 (= e!742817 Unit!43059)))

(declare-fun b!1302281 () Bool)

(assert (=> b!1302281 (= e!742816 (isDefined!507 (getValueByKey!704 (toList!10224 (ListLongMap!20418 Nil!29897)) k0!1205)))))

(assert (= (and d!141353 c!124886) b!1302279))

(assert (= (and d!141353 (not c!124886)) b!1302280))

(assert (= (and d!141353 (not res!865142)) b!1302281))

(declare-fun m!1193095 () Bool)

(assert (=> d!141353 m!1193095))

(declare-fun m!1193097 () Bool)

(assert (=> b!1302279 m!1193097))

(declare-fun m!1193099 () Bool)

(assert (=> b!1302279 m!1193099))

(assert (=> b!1302279 m!1193099))

(declare-fun m!1193101 () Bool)

(assert (=> b!1302279 m!1193101))

(assert (=> b!1302281 m!1193099))

(assert (=> b!1302281 m!1193099))

(assert (=> b!1302281 m!1193101))

(assert (=> b!1302222 d!141353))

(declare-fun d!141355 () Bool)

(assert (=> d!141355 (not (contains!8289 (ListLongMap!20418 Nil!29897) k0!1205))))

(declare-fun lt!582517 () Unit!43057)

(declare-fun choose!1921 ((_ BitVec 64)) Unit!43057)

(assert (=> d!141355 (= lt!582517 (choose!1921 k0!1205))))

(assert (=> d!141355 (= (emptyContainsNothing!212 k0!1205) lt!582517)))

(declare-fun bs!37079 () Bool)

(assert (= bs!37079 d!141355))

(assert (=> bs!37079 m!1193063))

(declare-fun m!1193103 () Bool)

(assert (=> bs!37079 m!1193103))

(assert (=> b!1302222 d!141355))

(declare-fun d!141357 () Bool)

(declare-fun e!742818 () Bool)

(assert (=> d!141357 e!742818))

(declare-fun res!865143 () Bool)

(assert (=> d!141357 (=> res!865143 e!742818)))

(declare-fun lt!582520 () Bool)

(assert (=> d!141357 (= res!865143 (not lt!582520))))

(declare-fun lt!582518 () Bool)

(assert (=> d!141357 (= lt!582520 lt!582518)))

(declare-fun lt!582521 () Unit!43057)

(declare-fun e!742819 () Unit!43057)

(assert (=> d!141357 (= lt!582521 e!742819)))

(declare-fun c!124887 () Bool)

(assert (=> d!141357 (= c!124887 lt!582518)))

(assert (=> d!141357 (= lt!582518 (containsKey!722 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141357 (= (contains!8289 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!582520)))

(declare-fun b!1302282 () Bool)

(declare-fun lt!582519 () Unit!43057)

(assert (=> b!1302282 (= e!742819 lt!582519)))

(assert (=> b!1302282 (= lt!582519 (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> b!1302282 (isDefined!507 (getValueByKey!704 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1302283 () Bool)

(declare-fun Unit!43060 () Unit!43057)

(assert (=> b!1302283 (= e!742819 Unit!43060)))

(declare-fun b!1302284 () Bool)

(assert (=> b!1302284 (= e!742818 (isDefined!507 (getValueByKey!704 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141357 c!124887) b!1302282))

(assert (= (and d!141357 (not c!124887)) b!1302283))

(assert (= (and d!141357 (not res!865143)) b!1302284))

(declare-fun m!1193105 () Bool)

(assert (=> d!141357 m!1193105))

(declare-fun m!1193107 () Bool)

(assert (=> b!1302282 m!1193107))

(declare-fun m!1193109 () Bool)

(assert (=> b!1302282 m!1193109))

(assert (=> b!1302282 m!1193109))

(declare-fun m!1193111 () Bool)

(assert (=> b!1302282 m!1193111))

(assert (=> b!1302284 m!1193109))

(assert (=> b!1302284 m!1193109))

(assert (=> b!1302284 m!1193111))

(assert (=> b!1302231 d!141357))

(declare-fun b!1302310 () Bool)

(declare-fun res!865154 () Bool)

(declare-fun e!742835 () Bool)

(assert (=> b!1302310 (=> (not res!865154) (not e!742835))))

(declare-fun lt!582540 () ListLongMap!20417)

(assert (=> b!1302310 (= res!865154 (not (contains!8289 lt!582540 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1302311 () Bool)

(declare-fun e!742834 () Bool)

(declare-fun e!742839 () Bool)

(assert (=> b!1302311 (= e!742834 e!742839)))

(assert (=> b!1302311 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42403 _keys!1741)))))

(declare-fun res!865155 () Bool)

(assert (=> b!1302311 (= res!865155 (contains!8289 lt!582540 (select (arr!41852 _keys!1741) from!2144)))))

(assert (=> b!1302311 (=> (not res!865155) (not e!742839))))

(declare-fun b!1302312 () Bool)

(declare-fun lt!582542 () Unit!43057)

(declare-fun lt!582537 () Unit!43057)

(assert (=> b!1302312 (= lt!582542 lt!582537)))

(declare-fun lt!582541 () (_ BitVec 64))

(declare-fun lt!582536 () (_ BitVec 64))

(declare-fun lt!582539 () ListLongMap!20417)

(declare-fun lt!582538 () V!51603)

(declare-fun +!4445 (ListLongMap!20417 tuple2!22748) ListLongMap!20417)

(assert (=> b!1302312 (not (contains!8289 (+!4445 lt!582539 (tuple2!22749 lt!582536 lt!582538)) lt!582541))))

(declare-fun addStillNotContains!469 (ListLongMap!20417 (_ BitVec 64) V!51603 (_ BitVec 64)) Unit!43057)

(assert (=> b!1302312 (= lt!582537 (addStillNotContains!469 lt!582539 lt!582536 lt!582538 lt!582541))))

(assert (=> b!1302312 (= lt!582541 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!21186 (ValueCell!16539 V!51603) V!51603)

(declare-fun dynLambda!3506 (Int (_ BitVec 64)) V!51603)

(assert (=> b!1302312 (= lt!582538 (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1302312 (= lt!582536 (select (arr!41852 _keys!1741) from!2144))))

(declare-fun call!64112 () ListLongMap!20417)

(assert (=> b!1302312 (= lt!582539 call!64112)))

(declare-fun e!742840 () ListLongMap!20417)

(assert (=> b!1302312 (= e!742840 (+!4445 call!64112 (tuple2!22749 (select (arr!41852 _keys!1741) from!2144) (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!64109 () Bool)

(assert (=> bm!64109 (= call!64112 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1302313 () Bool)

(declare-fun e!742836 () Bool)

(declare-fun isEmpty!1060 (ListLongMap!20417) Bool)

(assert (=> b!1302313 (= e!742836 (isEmpty!1060 lt!582540))))

(declare-fun b!1302314 () Bool)

(assert (=> b!1302314 (= e!742840 call!64112)))

(declare-fun b!1302315 () Bool)

(declare-fun e!742837 () ListLongMap!20417)

(assert (=> b!1302315 (= e!742837 e!742840)))

(declare-fun c!124897 () Bool)

(assert (=> b!1302315 (= c!124897 (validKeyInArray!0 (select (arr!41852 _keys!1741) from!2144)))))

(declare-fun b!1302316 () Bool)

(declare-fun e!742838 () Bool)

(assert (=> b!1302316 (= e!742838 (validKeyInArray!0 (select (arr!41852 _keys!1741) from!2144)))))

(assert (=> b!1302316 (bvsge from!2144 #b00000000000000000000000000000000)))

(declare-fun b!1302317 () Bool)

(assert (=> b!1302317 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42403 _keys!1741)))))

(assert (=> b!1302317 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42402 _values!1445)))))

(declare-fun apply!1054 (ListLongMap!20417 (_ BitVec 64)) V!51603)

(assert (=> b!1302317 (= e!742839 (= (apply!1054 lt!582540 (select (arr!41852 _keys!1741) from!2144)) (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1302318 () Bool)

(assert (=> b!1302318 (= e!742835 e!742834)))

(declare-fun c!124899 () Bool)

(assert (=> b!1302318 (= c!124899 e!742838)))

(declare-fun res!865153 () Bool)

(assert (=> b!1302318 (=> (not res!865153) (not e!742838))))

(assert (=> b!1302318 (= res!865153 (bvslt from!2144 (size!42403 _keys!1741)))))

(declare-fun b!1302309 () Bool)

(assert (=> b!1302309 (= e!742834 e!742836)))

(declare-fun c!124898 () Bool)

(assert (=> b!1302309 (= c!124898 (bvslt from!2144 (size!42403 _keys!1741)))))

(declare-fun d!141359 () Bool)

(assert (=> d!141359 e!742835))

(declare-fun res!865152 () Bool)

(assert (=> d!141359 (=> (not res!865152) (not e!742835))))

(assert (=> d!141359 (= res!865152 (not (contains!8289 lt!582540 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!141359 (= lt!582540 e!742837)))

(declare-fun c!124896 () Bool)

(assert (=> d!141359 (= c!124896 (bvsge from!2144 (size!42403 _keys!1741)))))

(assert (=> d!141359 (validMask!0 mask!2175)))

(assert (=> d!141359 (= (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!582540)))

(declare-fun b!1302319 () Bool)

(assert (=> b!1302319 (= e!742836 (= lt!582540 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun b!1302320 () Bool)

(assert (=> b!1302320 (= e!742837 (ListLongMap!20418 Nil!29897))))

(assert (= (and d!141359 c!124896) b!1302320))

(assert (= (and d!141359 (not c!124896)) b!1302315))

(assert (= (and b!1302315 c!124897) b!1302312))

(assert (= (and b!1302315 (not c!124897)) b!1302314))

(assert (= (or b!1302312 b!1302314) bm!64109))

(assert (= (and d!141359 res!865152) b!1302310))

(assert (= (and b!1302310 res!865154) b!1302318))

(assert (= (and b!1302318 res!865153) b!1302316))

(assert (= (and b!1302318 c!124899) b!1302311))

(assert (= (and b!1302318 (not c!124899)) b!1302309))

(assert (= (and b!1302311 res!865155) b!1302317))

(assert (= (and b!1302309 c!124898) b!1302319))

(assert (= (and b!1302309 (not c!124898)) b!1302313))

(declare-fun b_lambda!23241 () Bool)

(assert (=> (not b_lambda!23241) (not b!1302312)))

(declare-fun t!43498 () Bool)

(declare-fun tb!11401 () Bool)

(assert (=> (and start!109972 (= defaultEntry!1448 defaultEntry!1448) t!43498) tb!11401))

(declare-fun result!23809 () Bool)

(assert (=> tb!11401 (= result!23809 tp_is_empty!34875)))

(assert (=> b!1302312 t!43498))

(declare-fun b_and!47391 () Bool)

(assert (= b_and!47387 (and (=> t!43498 result!23809) b_and!47391)))

(declare-fun b_lambda!23243 () Bool)

(assert (=> (not b_lambda!23243) (not b!1302317)))

(assert (=> b!1302317 t!43498))

(declare-fun b_and!47393 () Bool)

(assert (= b_and!47391 (and (=> t!43498 result!23809) b_and!47393)))

(declare-fun m!1193113 () Bool)

(assert (=> b!1302317 m!1193113))

(declare-fun m!1193115 () Bool)

(assert (=> b!1302317 m!1193115))

(assert (=> b!1302317 m!1193051))

(declare-fun m!1193117 () Bool)

(assert (=> b!1302317 m!1193117))

(assert (=> b!1302317 m!1193113))

(assert (=> b!1302317 m!1193115))

(declare-fun m!1193119 () Bool)

(assert (=> b!1302317 m!1193119))

(assert (=> b!1302317 m!1193051))

(declare-fun m!1193121 () Bool)

(assert (=> bm!64109 m!1193121))

(declare-fun m!1193123 () Bool)

(assert (=> d!141359 m!1193123))

(assert (=> d!141359 m!1193057))

(declare-fun m!1193125 () Bool)

(assert (=> b!1302313 m!1193125))

(assert (=> b!1302316 m!1193051))

(assert (=> b!1302316 m!1193051))

(assert (=> b!1302316 m!1193053))

(assert (=> b!1302315 m!1193051))

(assert (=> b!1302315 m!1193051))

(assert (=> b!1302315 m!1193053))

(declare-fun m!1193127 () Bool)

(assert (=> b!1302310 m!1193127))

(assert (=> b!1302319 m!1193121))

(declare-fun m!1193129 () Bool)

(assert (=> b!1302312 m!1193129))

(assert (=> b!1302312 m!1193113))

(assert (=> b!1302312 m!1193115))

(declare-fun m!1193131 () Bool)

(assert (=> b!1302312 m!1193131))

(assert (=> b!1302312 m!1193131))

(declare-fun m!1193133 () Bool)

(assert (=> b!1302312 m!1193133))

(declare-fun m!1193135 () Bool)

(assert (=> b!1302312 m!1193135))

(assert (=> b!1302312 m!1193113))

(assert (=> b!1302312 m!1193115))

(assert (=> b!1302312 m!1193119))

(assert (=> b!1302312 m!1193051))

(assert (=> b!1302311 m!1193051))

(assert (=> b!1302311 m!1193051))

(declare-fun m!1193137 () Bool)

(assert (=> b!1302311 m!1193137))

(assert (=> b!1302231 d!141359))

(declare-fun b!1302333 () Bool)

(declare-fun e!742852 () Bool)

(declare-fun e!742850 () Bool)

(assert (=> b!1302333 (= e!742852 e!742850)))

(declare-fun c!124902 () Bool)

(assert (=> b!1302333 (= c!124902 (validKeyInArray!0 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun bm!64112 () Bool)

(declare-fun call!64115 () Bool)

(assert (=> bm!64112 (= call!64115 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!124902 (Cons!29897 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000) Nil!29898) Nil!29898)))))

(declare-fun d!141361 () Bool)

(declare-fun res!865164 () Bool)

(declare-fun e!742849 () Bool)

(assert (=> d!141361 (=> res!865164 e!742849)))

(assert (=> d!141361 (= res!865164 (bvsge #b00000000000000000000000000000000 (size!42403 _keys!1741)))))

(assert (=> d!141361 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29898) e!742849)))

(declare-fun b!1302334 () Bool)

(declare-fun e!742851 () Bool)

(declare-fun contains!8290 (List!29901 (_ BitVec 64)) Bool)

(assert (=> b!1302334 (= e!742851 (contains!8290 Nil!29898 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1302335 () Bool)

(assert (=> b!1302335 (= e!742850 call!64115)))

(declare-fun b!1302336 () Bool)

(assert (=> b!1302336 (= e!742849 e!742852)))

(declare-fun res!865162 () Bool)

(assert (=> b!1302336 (=> (not res!865162) (not e!742852))))

(assert (=> b!1302336 (= res!865162 (not e!742851))))

(declare-fun res!865163 () Bool)

(assert (=> b!1302336 (=> (not res!865163) (not e!742851))))

(assert (=> b!1302336 (= res!865163 (validKeyInArray!0 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1302337 () Bool)

(assert (=> b!1302337 (= e!742850 call!64115)))

(assert (= (and d!141361 (not res!865164)) b!1302336))

(assert (= (and b!1302336 res!865163) b!1302334))

(assert (= (and b!1302336 res!865162) b!1302333))

(assert (= (and b!1302333 c!124902) b!1302337))

(assert (= (and b!1302333 (not c!124902)) b!1302335))

(assert (= (or b!1302337 b!1302335) bm!64112))

(declare-fun m!1193139 () Bool)

(assert (=> b!1302333 m!1193139))

(assert (=> b!1302333 m!1193139))

(declare-fun m!1193141 () Bool)

(assert (=> b!1302333 m!1193141))

(assert (=> bm!64112 m!1193139))

(declare-fun m!1193143 () Bool)

(assert (=> bm!64112 m!1193143))

(assert (=> b!1302334 m!1193139))

(assert (=> b!1302334 m!1193139))

(declare-fun m!1193145 () Bool)

(assert (=> b!1302334 m!1193145))

(assert (=> b!1302336 m!1193139))

(assert (=> b!1302336 m!1193139))

(assert (=> b!1302336 m!1193141))

(assert (=> b!1302230 d!141361))

(declare-fun d!141363 () Bool)

(declare-fun e!742853 () Bool)

(assert (=> d!141363 e!742853))

(declare-fun res!865165 () Bool)

(assert (=> d!141363 (=> res!865165 e!742853)))

(declare-fun lt!582545 () Bool)

(assert (=> d!141363 (= res!865165 (not lt!582545))))

(declare-fun lt!582543 () Bool)

(assert (=> d!141363 (= lt!582545 lt!582543)))

(declare-fun lt!582546 () Unit!43057)

(declare-fun e!742854 () Unit!43057)

(assert (=> d!141363 (= lt!582546 e!742854)))

(declare-fun c!124903 () Bool)

(assert (=> d!141363 (= c!124903 lt!582543)))

(assert (=> d!141363 (= lt!582543 (containsKey!722 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141363 (= (contains!8289 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!582545)))

(declare-fun b!1302338 () Bool)

(declare-fun lt!582544 () Unit!43057)

(assert (=> b!1302338 (= e!742854 lt!582544)))

(assert (=> b!1302338 (= lt!582544 (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> b!1302338 (isDefined!507 (getValueByKey!704 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1302339 () Bool)

(declare-fun Unit!43061 () Unit!43057)

(assert (=> b!1302339 (= e!742854 Unit!43061)))

(declare-fun b!1302340 () Bool)

(assert (=> b!1302340 (= e!742853 (isDefined!507 (getValueByKey!704 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141363 c!124903) b!1302338))

(assert (= (and d!141363 (not c!124903)) b!1302339))

(assert (= (and d!141363 (not res!865165)) b!1302340))

(declare-fun m!1193147 () Bool)

(assert (=> d!141363 m!1193147))

(declare-fun m!1193149 () Bool)

(assert (=> b!1302338 m!1193149))

(declare-fun m!1193151 () Bool)

(assert (=> b!1302338 m!1193151))

(assert (=> b!1302338 m!1193151))

(declare-fun m!1193153 () Bool)

(assert (=> b!1302338 m!1193153))

(assert (=> b!1302340 m!1193151))

(assert (=> b!1302340 m!1193151))

(assert (=> b!1302340 m!1193153))

(assert (=> b!1302225 d!141363))

(declare-fun bm!64127 () Bool)

(declare-fun call!64135 () ListLongMap!20417)

(declare-fun call!64136 () ListLongMap!20417)

(assert (=> bm!64127 (= call!64135 call!64136)))

(declare-fun b!1302383 () Bool)

(declare-fun e!742889 () Bool)

(declare-fun call!64130 () Bool)

(assert (=> b!1302383 (= e!742889 (not call!64130))))

(declare-fun b!1302384 () Bool)

(declare-fun e!742891 () Bool)

(declare-fun lt!582600 () ListLongMap!20417)

(assert (=> b!1302384 (= e!742891 (= (apply!1054 lt!582600 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun b!1302385 () Bool)

(declare-fun e!742886 () Bool)

(assert (=> b!1302385 (= e!742886 (validKeyInArray!0 (select (arr!41852 _keys!1741) from!2144)))))

(declare-fun b!1302386 () Bool)

(declare-fun res!865189 () Bool)

(declare-fun e!742884 () Bool)

(assert (=> b!1302386 (=> (not res!865189) (not e!742884))))

(declare-fun e!742892 () Bool)

(assert (=> b!1302386 (= res!865189 e!742892)))

(declare-fun res!865192 () Bool)

(assert (=> b!1302386 (=> res!865192 e!742892)))

(declare-fun e!742890 () Bool)

(assert (=> b!1302386 (= res!865192 (not e!742890))))

(declare-fun res!865190 () Bool)

(assert (=> b!1302386 (=> (not res!865190) (not e!742890))))

(assert (=> b!1302386 (= res!865190 (bvslt from!2144 (size!42403 _keys!1741)))))

(declare-fun b!1302387 () Bool)

(declare-fun e!742881 () Bool)

(assert (=> b!1302387 (= e!742881 (= (apply!1054 lt!582600 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1302388 () Bool)

(declare-fun e!742885 () ListLongMap!20417)

(declare-fun call!64133 () ListLongMap!20417)

(assert (=> b!1302388 (= e!742885 (+!4445 call!64133 (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun bm!64128 () Bool)

(assert (=> bm!64128 (= call!64130 (contains!8289 lt!582600 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1302389 () Bool)

(declare-fun e!742882 () ListLongMap!20417)

(declare-fun call!64132 () ListLongMap!20417)

(assert (=> b!1302389 (= e!742882 call!64132)))

(declare-fun bm!64129 () Bool)

(assert (=> bm!64129 (= call!64132 call!64133)))

(declare-fun b!1302390 () Bool)

(declare-fun e!742893 () ListLongMap!20417)

(assert (=> b!1302390 (= e!742885 e!742893)))

(declare-fun c!124921 () Bool)

(assert (=> b!1302390 (= c!124921 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1302392 () Bool)

(declare-fun e!742883 () Unit!43057)

(declare-fun lt!582602 () Unit!43057)

(assert (=> b!1302392 (= e!742883 lt!582602)))

(declare-fun lt!582591 () ListLongMap!20417)

(assert (=> b!1302392 (= lt!582591 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!582608 () (_ BitVec 64))

(assert (=> b!1302392 (= lt!582608 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!582609 () (_ BitVec 64))

(assert (=> b!1302392 (= lt!582609 (select (arr!41852 _keys!1741) from!2144))))

(declare-fun lt!582603 () Unit!43057)

(declare-fun addStillContains!1123 (ListLongMap!20417 (_ BitVec 64) V!51603 (_ BitVec 64)) Unit!43057)

(assert (=> b!1302392 (= lt!582603 (addStillContains!1123 lt!582591 lt!582608 zeroValue!1387 lt!582609))))

(assert (=> b!1302392 (contains!8289 (+!4445 lt!582591 (tuple2!22749 lt!582608 zeroValue!1387)) lt!582609)))

(declare-fun lt!582610 () Unit!43057)

(assert (=> b!1302392 (= lt!582610 lt!582603)))

(declare-fun lt!582592 () ListLongMap!20417)

(assert (=> b!1302392 (= lt!582592 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!582596 () (_ BitVec 64))

(assert (=> b!1302392 (= lt!582596 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!582601 () (_ BitVec 64))

(assert (=> b!1302392 (= lt!582601 (select (arr!41852 _keys!1741) from!2144))))

(declare-fun lt!582593 () Unit!43057)

(declare-fun addApplyDifferent!557 (ListLongMap!20417 (_ BitVec 64) V!51603 (_ BitVec 64)) Unit!43057)

(assert (=> b!1302392 (= lt!582593 (addApplyDifferent!557 lt!582592 lt!582596 minValue!1387 lt!582601))))

(assert (=> b!1302392 (= (apply!1054 (+!4445 lt!582592 (tuple2!22749 lt!582596 minValue!1387)) lt!582601) (apply!1054 lt!582592 lt!582601))))

(declare-fun lt!582611 () Unit!43057)

(assert (=> b!1302392 (= lt!582611 lt!582593)))

(declare-fun lt!582597 () ListLongMap!20417)

(assert (=> b!1302392 (= lt!582597 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!582607 () (_ BitVec 64))

(assert (=> b!1302392 (= lt!582607 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!582594 () (_ BitVec 64))

(assert (=> b!1302392 (= lt!582594 (select (arr!41852 _keys!1741) from!2144))))

(declare-fun lt!582595 () Unit!43057)

(assert (=> b!1302392 (= lt!582595 (addApplyDifferent!557 lt!582597 lt!582607 zeroValue!1387 lt!582594))))

(assert (=> b!1302392 (= (apply!1054 (+!4445 lt!582597 (tuple2!22749 lt!582607 zeroValue!1387)) lt!582594) (apply!1054 lt!582597 lt!582594))))

(declare-fun lt!582598 () Unit!43057)

(assert (=> b!1302392 (= lt!582598 lt!582595)))

(declare-fun lt!582599 () ListLongMap!20417)

(assert (=> b!1302392 (= lt!582599 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!582604 () (_ BitVec 64))

(assert (=> b!1302392 (= lt!582604 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!582606 () (_ BitVec 64))

(assert (=> b!1302392 (= lt!582606 (select (arr!41852 _keys!1741) from!2144))))

(assert (=> b!1302392 (= lt!582602 (addApplyDifferent!557 lt!582599 lt!582604 minValue!1387 lt!582606))))

(assert (=> b!1302392 (= (apply!1054 (+!4445 lt!582599 (tuple2!22749 lt!582604 minValue!1387)) lt!582606) (apply!1054 lt!582599 lt!582606))))

(declare-fun call!64134 () ListLongMap!20417)

(declare-fun c!124917 () Bool)

(declare-fun bm!64130 () Bool)

(assert (=> bm!64130 (= call!64133 (+!4445 (ite c!124917 call!64136 (ite c!124921 call!64135 call!64134)) (ite (or c!124917 c!124921) (tuple2!22749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1302393 () Bool)

(assert (=> b!1302393 (= e!742889 e!742891)))

(declare-fun res!865188 () Bool)

(assert (=> b!1302393 (= res!865188 call!64130)))

(assert (=> b!1302393 (=> (not res!865188) (not e!742891))))

(declare-fun b!1302394 () Bool)

(declare-fun Unit!43062 () Unit!43057)

(assert (=> b!1302394 (= e!742883 Unit!43062)))

(declare-fun b!1302395 () Bool)

(declare-fun c!124918 () Bool)

(assert (=> b!1302395 (= c!124918 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1302395 (= e!742893 e!742882)))

(declare-fun bm!64131 () Bool)

(assert (=> bm!64131 (= call!64136 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1302396 () Bool)

(declare-fun e!742887 () Bool)

(assert (=> b!1302396 (= e!742884 e!742887)))

(declare-fun c!124916 () Bool)

(assert (=> b!1302396 (= c!124916 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1302397 () Bool)

(declare-fun call!64131 () Bool)

(assert (=> b!1302397 (= e!742887 (not call!64131))))

(declare-fun bm!64132 () Bool)

(assert (=> bm!64132 (= call!64134 call!64135)))

(declare-fun b!1302398 () Bool)

(assert (=> b!1302398 (= e!742887 e!742881)))

(declare-fun res!865185 () Bool)

(assert (=> b!1302398 (= res!865185 call!64131)))

(assert (=> b!1302398 (=> (not res!865185) (not e!742881))))

(declare-fun b!1302399 () Bool)

(assert (=> b!1302399 (= e!742882 call!64134)))

(declare-fun b!1302400 () Bool)

(declare-fun res!865191 () Bool)

(assert (=> b!1302400 (=> (not res!865191) (not e!742884))))

(assert (=> b!1302400 (= res!865191 e!742889)))

(declare-fun c!124920 () Bool)

(assert (=> b!1302400 (= c!124920 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1302401 () Bool)

(assert (=> b!1302401 (= e!742893 call!64132)))

(declare-fun b!1302402 () Bool)

(assert (=> b!1302402 (= e!742890 (validKeyInArray!0 (select (arr!41852 _keys!1741) from!2144)))))

(declare-fun b!1302391 () Bool)

(declare-fun e!742888 () Bool)

(assert (=> b!1302391 (= e!742892 e!742888)))

(declare-fun res!865187 () Bool)

(assert (=> b!1302391 (=> (not res!865187) (not e!742888))))

(assert (=> b!1302391 (= res!865187 (contains!8289 lt!582600 (select (arr!41852 _keys!1741) from!2144)))))

(assert (=> b!1302391 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42403 _keys!1741)))))

(declare-fun d!141365 () Bool)

(assert (=> d!141365 e!742884))

(declare-fun res!865184 () Bool)

(assert (=> d!141365 (=> (not res!865184) (not e!742884))))

(assert (=> d!141365 (= res!865184 (or (bvsge from!2144 (size!42403 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42403 _keys!1741)))))))

(declare-fun lt!582605 () ListLongMap!20417)

(assert (=> d!141365 (= lt!582600 lt!582605)))

(declare-fun lt!582612 () Unit!43057)

(assert (=> d!141365 (= lt!582612 e!742883)))

(declare-fun c!124919 () Bool)

(assert (=> d!141365 (= c!124919 e!742886)))

(declare-fun res!865186 () Bool)

(assert (=> d!141365 (=> (not res!865186) (not e!742886))))

(assert (=> d!141365 (= res!865186 (bvslt from!2144 (size!42403 _keys!1741)))))

(assert (=> d!141365 (= lt!582605 e!742885)))

(assert (=> d!141365 (= c!124917 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!141365 (validMask!0 mask!2175)))

(assert (=> d!141365 (= (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!582600)))

(declare-fun bm!64133 () Bool)

(assert (=> bm!64133 (= call!64131 (contains!8289 lt!582600 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1302403 () Bool)

(assert (=> b!1302403 (= e!742888 (= (apply!1054 lt!582600 (select (arr!41852 _keys!1741) from!2144)) (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1302403 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42402 _values!1445)))))

(assert (=> b!1302403 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42403 _keys!1741)))))

(assert (= (and d!141365 c!124917) b!1302388))

(assert (= (and d!141365 (not c!124917)) b!1302390))

(assert (= (and b!1302390 c!124921) b!1302401))

(assert (= (and b!1302390 (not c!124921)) b!1302395))

(assert (= (and b!1302395 c!124918) b!1302389))

(assert (= (and b!1302395 (not c!124918)) b!1302399))

(assert (= (or b!1302389 b!1302399) bm!64132))

(assert (= (or b!1302401 bm!64132) bm!64127))

(assert (= (or b!1302401 b!1302389) bm!64129))

(assert (= (or b!1302388 bm!64127) bm!64131))

(assert (= (or b!1302388 bm!64129) bm!64130))

(assert (= (and d!141365 res!865186) b!1302385))

(assert (= (and d!141365 c!124919) b!1302392))

(assert (= (and d!141365 (not c!124919)) b!1302394))

(assert (= (and d!141365 res!865184) b!1302386))

(assert (= (and b!1302386 res!865190) b!1302402))

(assert (= (and b!1302386 (not res!865192)) b!1302391))

(assert (= (and b!1302391 res!865187) b!1302403))

(assert (= (and b!1302386 res!865189) b!1302400))

(assert (= (and b!1302400 c!124920) b!1302393))

(assert (= (and b!1302400 (not c!124920)) b!1302383))

(assert (= (and b!1302393 res!865188) b!1302384))

(assert (= (or b!1302393 b!1302383) bm!64128))

(assert (= (and b!1302400 res!865191) b!1302396))

(assert (= (and b!1302396 c!124916) b!1302398))

(assert (= (and b!1302396 (not c!124916)) b!1302397))

(assert (= (and b!1302398 res!865185) b!1302387))

(assert (= (or b!1302398 b!1302397) bm!64133))

(declare-fun b_lambda!23245 () Bool)

(assert (=> (not b_lambda!23245) (not b!1302403)))

(assert (=> b!1302403 t!43498))

(declare-fun b_and!47395 () Bool)

(assert (= b_and!47393 (and (=> t!43498 result!23809) b_and!47395)))

(declare-fun m!1193155 () Bool)

(assert (=> b!1302384 m!1193155))

(declare-fun m!1193157 () Bool)

(assert (=> bm!64133 m!1193157))

(declare-fun m!1193159 () Bool)

(assert (=> bm!64128 m!1193159))

(assert (=> b!1302402 m!1193051))

(assert (=> b!1302402 m!1193051))

(assert (=> b!1302402 m!1193053))

(assert (=> b!1302403 m!1193113))

(assert (=> b!1302403 m!1193115))

(assert (=> b!1302403 m!1193119))

(assert (=> b!1302403 m!1193113))

(assert (=> b!1302403 m!1193115))

(assert (=> b!1302403 m!1193051))

(assert (=> b!1302403 m!1193051))

(declare-fun m!1193161 () Bool)

(assert (=> b!1302403 m!1193161))

(assert (=> bm!64131 m!1193043))

(assert (=> b!1302385 m!1193051))

(assert (=> b!1302385 m!1193051))

(assert (=> b!1302385 m!1193053))

(assert (=> d!141365 m!1193057))

(declare-fun m!1193163 () Bool)

(assert (=> bm!64130 m!1193163))

(declare-fun m!1193165 () Bool)

(assert (=> b!1302392 m!1193165))

(declare-fun m!1193167 () Bool)

(assert (=> b!1302392 m!1193167))

(assert (=> b!1302392 m!1193051))

(declare-fun m!1193169 () Bool)

(assert (=> b!1302392 m!1193169))

(declare-fun m!1193171 () Bool)

(assert (=> b!1302392 m!1193171))

(assert (=> b!1302392 m!1193043))

(declare-fun m!1193173 () Bool)

(assert (=> b!1302392 m!1193173))

(declare-fun m!1193175 () Bool)

(assert (=> b!1302392 m!1193175))

(declare-fun m!1193177 () Bool)

(assert (=> b!1302392 m!1193177))

(assert (=> b!1302392 m!1193177))

(declare-fun m!1193179 () Bool)

(assert (=> b!1302392 m!1193179))

(declare-fun m!1193181 () Bool)

(assert (=> b!1302392 m!1193181))

(declare-fun m!1193183 () Bool)

(assert (=> b!1302392 m!1193183))

(declare-fun m!1193185 () Bool)

(assert (=> b!1302392 m!1193185))

(assert (=> b!1302392 m!1193171))

(declare-fun m!1193187 () Bool)

(assert (=> b!1302392 m!1193187))

(assert (=> b!1302392 m!1193165))

(declare-fun m!1193189 () Bool)

(assert (=> b!1302392 m!1193189))

(assert (=> b!1302392 m!1193185))

(declare-fun m!1193191 () Bool)

(assert (=> b!1302392 m!1193191))

(declare-fun m!1193193 () Bool)

(assert (=> b!1302392 m!1193193))

(declare-fun m!1193195 () Bool)

(assert (=> b!1302388 m!1193195))

(assert (=> b!1302391 m!1193051))

(assert (=> b!1302391 m!1193051))

(declare-fun m!1193197 () Bool)

(assert (=> b!1302391 m!1193197))

(declare-fun m!1193199 () Bool)

(assert (=> b!1302387 m!1193199))

(assert (=> b!1302225 d!141365))

(declare-fun bm!64136 () Bool)

(declare-fun call!64139 () Bool)

(assert (=> bm!64136 (= call!64139 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1302412 () Bool)

(declare-fun e!742901 () Bool)

(declare-fun e!742902 () Bool)

(assert (=> b!1302412 (= e!742901 e!742902)))

(declare-fun c!124924 () Bool)

(assert (=> b!1302412 (= c!124924 (validKeyInArray!0 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1302413 () Bool)

(assert (=> b!1302413 (= e!742902 call!64139)))

(declare-fun b!1302414 () Bool)

(declare-fun e!742900 () Bool)

(assert (=> b!1302414 (= e!742900 call!64139)))

(declare-fun b!1302415 () Bool)

(assert (=> b!1302415 (= e!742902 e!742900)))

(declare-fun lt!582619 () (_ BitVec 64))

(assert (=> b!1302415 (= lt!582619 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!582620 () Unit!43057)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86725 (_ BitVec 64) (_ BitVec 32)) Unit!43057)

(assert (=> b!1302415 (= lt!582620 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!582619 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1302415 (arrayContainsKey!0 _keys!1741 lt!582619 #b00000000000000000000000000000000)))

(declare-fun lt!582621 () Unit!43057)

(assert (=> b!1302415 (= lt!582621 lt!582620)))

(declare-fun res!865197 () Bool)

(declare-datatypes ((SeekEntryResult!10019 0))(
  ( (MissingZero!10019 (index!42446 (_ BitVec 32))) (Found!10019 (index!42447 (_ BitVec 32))) (Intermediate!10019 (undefined!10831 Bool) (index!42448 (_ BitVec 32)) (x!115668 (_ BitVec 32))) (Undefined!10019) (MissingVacant!10019 (index!42449 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86725 (_ BitVec 32)) SeekEntryResult!10019)

(assert (=> b!1302415 (= res!865197 (= (seekEntryOrOpen!0 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10019 #b00000000000000000000000000000000)))))

(assert (=> b!1302415 (=> (not res!865197) (not e!742900))))

(declare-fun d!141367 () Bool)

(declare-fun res!865198 () Bool)

(assert (=> d!141367 (=> res!865198 e!742901)))

(assert (=> d!141367 (= res!865198 (bvsge #b00000000000000000000000000000000 (size!42403 _keys!1741)))))

(assert (=> d!141367 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!742901)))

(assert (= (and d!141367 (not res!865198)) b!1302412))

(assert (= (and b!1302412 c!124924) b!1302415))

(assert (= (and b!1302412 (not c!124924)) b!1302413))

(assert (= (and b!1302415 res!865197) b!1302414))

(assert (= (or b!1302414 b!1302413) bm!64136))

(declare-fun m!1193201 () Bool)

(assert (=> bm!64136 m!1193201))

(assert (=> b!1302412 m!1193139))

(assert (=> b!1302412 m!1193139))

(assert (=> b!1302412 m!1193141))

(assert (=> b!1302415 m!1193139))

(declare-fun m!1193203 () Bool)

(assert (=> b!1302415 m!1193203))

(declare-fun m!1193205 () Bool)

(assert (=> b!1302415 m!1193205))

(assert (=> b!1302415 m!1193139))

(declare-fun m!1193207 () Bool)

(assert (=> b!1302415 m!1193207))

(assert (=> b!1302224 d!141367))

(declare-fun d!141369 () Bool)

(assert (=> d!141369 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!109972 d!141369))

(declare-fun d!141371 () Bool)

(assert (=> d!141371 (= (array_inv!31655 _values!1445) (bvsge (size!42402 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!109972 d!141371))

(declare-fun d!141373 () Bool)

(assert (=> d!141373 (= (array_inv!31656 _keys!1741) (bvsge (size!42403 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!109972 d!141373))

(declare-fun b!1302423 () Bool)

(declare-fun e!742908 () Bool)

(assert (=> b!1302423 (= e!742908 tp_is_empty!34875)))

(declare-fun b!1302422 () Bool)

(declare-fun e!742907 () Bool)

(assert (=> b!1302422 (= e!742907 tp_is_empty!34875)))

(declare-fun mapNonEmpty!53901 () Bool)

(declare-fun mapRes!53901 () Bool)

(declare-fun tp!102856 () Bool)

(assert (=> mapNonEmpty!53901 (= mapRes!53901 (and tp!102856 e!742907))))

(declare-fun mapKey!53901 () (_ BitVec 32))

(declare-fun mapValue!53901 () ValueCell!16539)

(declare-fun mapRest!53901 () (Array (_ BitVec 32) ValueCell!16539))

(assert (=> mapNonEmpty!53901 (= mapRest!53895 (store mapRest!53901 mapKey!53901 mapValue!53901))))

(declare-fun mapIsEmpty!53901 () Bool)

(assert (=> mapIsEmpty!53901 mapRes!53901))

(declare-fun condMapEmpty!53901 () Bool)

(declare-fun mapDefault!53901 () ValueCell!16539)

(assert (=> mapNonEmpty!53895 (= condMapEmpty!53901 (= mapRest!53895 ((as const (Array (_ BitVec 32) ValueCell!16539)) mapDefault!53901)))))

(assert (=> mapNonEmpty!53895 (= tp!102847 (and e!742908 mapRes!53901))))

(assert (= (and mapNonEmpty!53895 condMapEmpty!53901) mapIsEmpty!53901))

(assert (= (and mapNonEmpty!53895 (not condMapEmpty!53901)) mapNonEmpty!53901))

(assert (= (and mapNonEmpty!53901 ((_ is ValueCellFull!16539) mapValue!53901)) b!1302422))

(assert (= (and mapNonEmpty!53895 ((_ is ValueCellFull!16539) mapDefault!53901)) b!1302423))

(declare-fun m!1193209 () Bool)

(assert (=> mapNonEmpty!53901 m!1193209))

(declare-fun b_lambda!23247 () Bool)

(assert (= b_lambda!23241 (or (and start!109972 b_free!29235) b_lambda!23247)))

(declare-fun b_lambda!23249 () Bool)

(assert (= b_lambda!23243 (or (and start!109972 b_free!29235) b_lambda!23249)))

(declare-fun b_lambda!23251 () Bool)

(assert (= b_lambda!23245 (or (and start!109972 b_free!29235) b_lambda!23251)))

(check-sat (not b!1302334) (not b!1302317) (not d!141359) (not d!141365) (not b!1302402) (not b!1302313) (not b!1302336) (not mapNonEmpty!53901) (not b!1302385) (not b!1302392) (not b_lambda!23251) (not b!1302387) (not b!1302384) (not b!1302312) (not b!1302338) (not b!1302340) (not bm!64112) (not b!1302403) (not b!1302284) (not b!1302311) (not b!1302315) (not b!1302282) (not b!1302310) b_and!47395 (not d!141355) (not d!141363) (not b_lambda!23247) (not b!1302319) (not b!1302333) (not b_next!29235) (not b!1302316) (not b!1302415) (not b!1302412) (not bm!64133) (not b!1302388) (not d!141357) (not bm!64130) (not bm!64136) (not b_lambda!23249) (not d!141353) (not bm!64109) (not b!1302279) (not bm!64131) (not bm!64128) (not b!1302391) tp_is_empty!34875 (not b!1302281))
(check-sat b_and!47395 (not b_next!29235))
(get-model)

(assert (=> b!1302385 d!141351))

(assert (=> b!1302402 d!141351))

(declare-fun d!141375 () Bool)

(assert (=> d!141375 (= (validKeyInArray!0 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000)) (and (not (= (select (arr!41852 _keys!1741) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41852 _keys!1741) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1302333 d!141375))

(declare-fun d!141377 () Bool)

(assert (=> d!141377 (isDefined!507 (getValueByKey!704 (toList!10224 (ListLongMap!20418 Nil!29897)) k0!1205))))

(declare-fun lt!582624 () Unit!43057)

(declare-fun choose!1922 (List!29900 (_ BitVec 64)) Unit!43057)

(assert (=> d!141377 (= lt!582624 (choose!1922 (toList!10224 (ListLongMap!20418 Nil!29897)) k0!1205))))

(declare-fun e!742911 () Bool)

(assert (=> d!141377 e!742911))

(declare-fun res!865201 () Bool)

(assert (=> d!141377 (=> (not res!865201) (not e!742911))))

(declare-fun isStrictlySorted!868 (List!29900) Bool)

(assert (=> d!141377 (= res!865201 (isStrictlySorted!868 (toList!10224 (ListLongMap!20418 Nil!29897))))))

(assert (=> d!141377 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!10224 (ListLongMap!20418 Nil!29897)) k0!1205) lt!582624)))

(declare-fun b!1302426 () Bool)

(assert (=> b!1302426 (= e!742911 (containsKey!722 (toList!10224 (ListLongMap!20418 Nil!29897)) k0!1205))))

(assert (= (and d!141377 res!865201) b!1302426))

(assert (=> d!141377 m!1193099))

(assert (=> d!141377 m!1193099))

(assert (=> d!141377 m!1193101))

(declare-fun m!1193211 () Bool)

(assert (=> d!141377 m!1193211))

(declare-fun m!1193213 () Bool)

(assert (=> d!141377 m!1193213))

(assert (=> b!1302426 m!1193095))

(assert (=> b!1302279 d!141377))

(declare-fun d!141379 () Bool)

(declare-fun isEmpty!1061 (Option!755) Bool)

(assert (=> d!141379 (= (isDefined!507 (getValueByKey!704 (toList!10224 (ListLongMap!20418 Nil!29897)) k0!1205)) (not (isEmpty!1061 (getValueByKey!704 (toList!10224 (ListLongMap!20418 Nil!29897)) k0!1205))))))

(declare-fun bs!37080 () Bool)

(assert (= bs!37080 d!141379))

(assert (=> bs!37080 m!1193099))

(declare-fun m!1193215 () Bool)

(assert (=> bs!37080 m!1193215))

(assert (=> b!1302279 d!141379))

(declare-fun b!1302438 () Bool)

(declare-fun e!742917 () Option!755)

(assert (=> b!1302438 (= e!742917 None!753)))

(declare-fun b!1302436 () Bool)

(declare-fun e!742916 () Option!755)

(assert (=> b!1302436 (= e!742916 e!742917)))

(declare-fun c!124930 () Bool)

(assert (=> b!1302436 (= c!124930 (and ((_ is Cons!29896) (toList!10224 (ListLongMap!20418 Nil!29897))) (not (= (_1!11384 (h!31105 (toList!10224 (ListLongMap!20418 Nil!29897)))) k0!1205))))))

(declare-fun b!1302435 () Bool)

(assert (=> b!1302435 (= e!742916 (Some!754 (_2!11384 (h!31105 (toList!10224 (ListLongMap!20418 Nil!29897))))))))

(declare-fun b!1302437 () Bool)

(assert (=> b!1302437 (= e!742917 (getValueByKey!704 (t!43495 (toList!10224 (ListLongMap!20418 Nil!29897))) k0!1205))))

(declare-fun d!141381 () Bool)

(declare-fun c!124929 () Bool)

(assert (=> d!141381 (= c!124929 (and ((_ is Cons!29896) (toList!10224 (ListLongMap!20418 Nil!29897))) (= (_1!11384 (h!31105 (toList!10224 (ListLongMap!20418 Nil!29897)))) k0!1205)))))

(assert (=> d!141381 (= (getValueByKey!704 (toList!10224 (ListLongMap!20418 Nil!29897)) k0!1205) e!742916)))

(assert (= (and d!141381 c!124929) b!1302435))

(assert (= (and d!141381 (not c!124929)) b!1302436))

(assert (= (and b!1302436 c!124930) b!1302437))

(assert (= (and b!1302436 (not c!124930)) b!1302438))

(declare-fun m!1193217 () Bool)

(assert (=> b!1302437 m!1193217))

(assert (=> b!1302279 d!141381))

(declare-fun d!141383 () Bool)

(declare-fun get!21187 (Option!755) V!51603)

(assert (=> d!141383 (= (apply!1054 lt!582600 #b0000000000000000000000000000000000000000000000000000000000000000) (get!21187 (getValueByKey!704 (toList!10224 lt!582600) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37081 () Bool)

(assert (= bs!37081 d!141383))

(declare-fun m!1193219 () Bool)

(assert (=> bs!37081 m!1193219))

(assert (=> bs!37081 m!1193219))

(declare-fun m!1193221 () Bool)

(assert (=> bs!37081 m!1193221))

(assert (=> b!1302384 d!141383))

(declare-fun d!141385 () Bool)

(declare-fun e!742918 () Bool)

(assert (=> d!141385 e!742918))

(declare-fun res!865202 () Bool)

(assert (=> d!141385 (=> res!865202 e!742918)))

(declare-fun lt!582627 () Bool)

(assert (=> d!141385 (= res!865202 (not lt!582627))))

(declare-fun lt!582625 () Bool)

(assert (=> d!141385 (= lt!582627 lt!582625)))

(declare-fun lt!582628 () Unit!43057)

(declare-fun e!742919 () Unit!43057)

(assert (=> d!141385 (= lt!582628 e!742919)))

(declare-fun c!124931 () Bool)

(assert (=> d!141385 (= c!124931 lt!582625)))

(assert (=> d!141385 (= lt!582625 (containsKey!722 (toList!10224 lt!582540) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141385 (= (contains!8289 lt!582540 #b1000000000000000000000000000000000000000000000000000000000000000) lt!582627)))

(declare-fun b!1302439 () Bool)

(declare-fun lt!582626 () Unit!43057)

(assert (=> b!1302439 (= e!742919 lt!582626)))

(assert (=> b!1302439 (= lt!582626 (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!10224 lt!582540) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1302439 (isDefined!507 (getValueByKey!704 (toList!10224 lt!582540) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1302440 () Bool)

(declare-fun Unit!43063 () Unit!43057)

(assert (=> b!1302440 (= e!742919 Unit!43063)))

(declare-fun b!1302441 () Bool)

(assert (=> b!1302441 (= e!742918 (isDefined!507 (getValueByKey!704 (toList!10224 lt!582540) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141385 c!124931) b!1302439))

(assert (= (and d!141385 (not c!124931)) b!1302440))

(assert (= (and d!141385 (not res!865202)) b!1302441))

(declare-fun m!1193223 () Bool)

(assert (=> d!141385 m!1193223))

(declare-fun m!1193225 () Bool)

(assert (=> b!1302439 m!1193225))

(declare-fun m!1193227 () Bool)

(assert (=> b!1302439 m!1193227))

(assert (=> b!1302439 m!1193227))

(declare-fun m!1193229 () Bool)

(assert (=> b!1302439 m!1193229))

(assert (=> b!1302441 m!1193227))

(assert (=> b!1302441 m!1193227))

(assert (=> b!1302441 m!1193229))

(assert (=> b!1302310 d!141385))

(declare-fun d!141387 () Bool)

(assert (=> d!141387 (= (apply!1054 lt!582600 (select (arr!41852 _keys!1741) from!2144)) (get!21187 (getValueByKey!704 (toList!10224 lt!582600) (select (arr!41852 _keys!1741) from!2144))))))

(declare-fun bs!37082 () Bool)

(assert (= bs!37082 d!141387))

(assert (=> bs!37082 m!1193051))

(declare-fun m!1193231 () Bool)

(assert (=> bs!37082 m!1193231))

(assert (=> bs!37082 m!1193231))

(declare-fun m!1193233 () Bool)

(assert (=> bs!37082 m!1193233))

(assert (=> b!1302403 d!141387))

(declare-fun d!141389 () Bool)

(declare-fun c!124934 () Bool)

(assert (=> d!141389 (= c!124934 ((_ is ValueCellFull!16539) (select (arr!41851 _values!1445) from!2144)))))

(declare-fun e!742922 () V!51603)

(assert (=> d!141389 (= (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)) e!742922)))

(declare-fun b!1302446 () Bool)

(declare-fun get!21188 (ValueCell!16539 V!51603) V!51603)

(assert (=> b!1302446 (= e!742922 (get!21188 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1302447 () Bool)

(declare-fun get!21189 (ValueCell!16539 V!51603) V!51603)

(assert (=> b!1302447 (= e!742922 (get!21189 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141389 c!124934) b!1302446))

(assert (= (and d!141389 (not c!124934)) b!1302447))

(assert (=> b!1302446 m!1193113))

(assert (=> b!1302446 m!1193115))

(declare-fun m!1193235 () Bool)

(assert (=> b!1302446 m!1193235))

(assert (=> b!1302447 m!1193113))

(assert (=> b!1302447 m!1193115))

(declare-fun m!1193237 () Bool)

(assert (=> b!1302447 m!1193237))

(assert (=> b!1302403 d!141389))

(declare-fun d!141391 () Bool)

(declare-fun lt!582631 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!652 (List!29901) (InoxSet (_ BitVec 64)))

(assert (=> d!141391 (= lt!582631 (select (content!652 Nil!29898) (select (arr!41852 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun e!742928 () Bool)

(assert (=> d!141391 (= lt!582631 e!742928)))

(declare-fun res!865208 () Bool)

(assert (=> d!141391 (=> (not res!865208) (not e!742928))))

(assert (=> d!141391 (= res!865208 ((_ is Cons!29897) Nil!29898))))

(assert (=> d!141391 (= (contains!8290 Nil!29898 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000)) lt!582631)))

(declare-fun b!1302452 () Bool)

(declare-fun e!742927 () Bool)

(assert (=> b!1302452 (= e!742928 e!742927)))

(declare-fun res!865207 () Bool)

(assert (=> b!1302452 (=> res!865207 e!742927)))

(assert (=> b!1302452 (= res!865207 (= (h!31106 Nil!29898) (select (arr!41852 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1302453 () Bool)

(assert (=> b!1302453 (= e!742927 (contains!8290 (t!43496 Nil!29898) (select (arr!41852 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!141391 res!865208) b!1302452))

(assert (= (and b!1302452 (not res!865207)) b!1302453))

(declare-fun m!1193239 () Bool)

(assert (=> d!141391 m!1193239))

(assert (=> d!141391 m!1193139))

(declare-fun m!1193241 () Bool)

(assert (=> d!141391 m!1193241))

(assert (=> b!1302453 m!1193139))

(declare-fun m!1193243 () Bool)

(assert (=> b!1302453 m!1193243))

(assert (=> b!1302334 d!141391))

(declare-fun d!141393 () Bool)

(assert (=> d!141393 (isDefined!507 (getValueByKey!704 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun lt!582632 () Unit!43057)

(assert (=> d!141393 (= lt!582632 (choose!1922 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun e!742929 () Bool)

(assert (=> d!141393 e!742929))

(declare-fun res!865209 () Bool)

(assert (=> d!141393 (=> (not res!865209) (not e!742929))))

(assert (=> d!141393 (= res!865209 (isStrictlySorted!868 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))

(assert (=> d!141393 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) lt!582632)))

(declare-fun b!1302454 () Bool)

(assert (=> b!1302454 (= e!742929 (containsKey!722 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (= (and d!141393 res!865209) b!1302454))

(assert (=> d!141393 m!1193151))

(assert (=> d!141393 m!1193151))

(assert (=> d!141393 m!1193153))

(declare-fun m!1193245 () Bool)

(assert (=> d!141393 m!1193245))

(declare-fun m!1193247 () Bool)

(assert (=> d!141393 m!1193247))

(assert (=> b!1302454 m!1193147))

(assert (=> b!1302338 d!141393))

(declare-fun d!141395 () Bool)

(assert (=> d!141395 (= (isDefined!507 (getValueByKey!704 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)) (not (isEmpty!1061 (getValueByKey!704 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))))

(declare-fun bs!37083 () Bool)

(assert (= bs!37083 d!141395))

(assert (=> bs!37083 m!1193151))

(declare-fun m!1193249 () Bool)

(assert (=> bs!37083 m!1193249))

(assert (=> b!1302338 d!141395))

(declare-fun b!1302458 () Bool)

(declare-fun e!742931 () Option!755)

(assert (=> b!1302458 (= e!742931 None!753)))

(declare-fun b!1302456 () Bool)

(declare-fun e!742930 () Option!755)

(assert (=> b!1302456 (= e!742930 e!742931)))

(declare-fun c!124936 () Bool)

(assert (=> b!1302456 (= c!124936 (and ((_ is Cons!29896) (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (not (= (_1!11384 (h!31105 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205))))))

(declare-fun b!1302455 () Bool)

(assert (=> b!1302455 (= e!742930 (Some!754 (_2!11384 (h!31105 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))))

(declare-fun b!1302457 () Bool)

(assert (=> b!1302457 (= e!742931 (getValueByKey!704 (t!43495 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(declare-fun c!124935 () Bool)

(declare-fun d!141397 () Bool)

(assert (=> d!141397 (= c!124935 (and ((_ is Cons!29896) (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11384 (h!31105 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(assert (=> d!141397 (= (getValueByKey!704 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!742930)))

(assert (= (and d!141397 c!124935) b!1302455))

(assert (= (and d!141397 (not c!124935)) b!1302456))

(assert (= (and b!1302456 c!124936) b!1302457))

(assert (= (and b!1302456 (not c!124936)) b!1302458))

(declare-fun m!1193251 () Bool)

(assert (=> b!1302457 m!1193251))

(assert (=> b!1302338 d!141397))

(declare-fun d!141399 () Bool)

(declare-fun e!742934 () Bool)

(assert (=> d!141399 e!742934))

(declare-fun res!865214 () Bool)

(assert (=> d!141399 (=> (not res!865214) (not e!742934))))

(declare-fun lt!582644 () ListLongMap!20417)

(assert (=> d!141399 (= res!865214 (contains!8289 lt!582644 (_1!11384 (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun lt!582641 () List!29900)

(assert (=> d!141399 (= lt!582644 (ListLongMap!20418 lt!582641))))

(declare-fun lt!582642 () Unit!43057)

(declare-fun lt!582643 () Unit!43057)

(assert (=> d!141399 (= lt!582642 lt!582643)))

(assert (=> d!141399 (= (getValueByKey!704 lt!582641 (_1!11384 (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!754 (_2!11384 (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun lemmaContainsTupThenGetReturnValue!348 (List!29900 (_ BitVec 64) V!51603) Unit!43057)

(assert (=> d!141399 (= lt!582643 (lemmaContainsTupThenGetReturnValue!348 lt!582641 (_1!11384 (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11384 (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun insertStrictlySorted!477 (List!29900 (_ BitVec 64) V!51603) List!29900)

(assert (=> d!141399 (= lt!582641 (insertStrictlySorted!477 (toList!10224 call!64133) (_1!11384 (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11384 (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!141399 (= (+!4445 call!64133 (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) lt!582644)))

(declare-fun b!1302463 () Bool)

(declare-fun res!865215 () Bool)

(assert (=> b!1302463 (=> (not res!865215) (not e!742934))))

(assert (=> b!1302463 (= res!865215 (= (getValueByKey!704 (toList!10224 lt!582644) (_1!11384 (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!754 (_2!11384 (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun b!1302464 () Bool)

(declare-fun contains!8291 (List!29900 tuple2!22748) Bool)

(assert (=> b!1302464 (= e!742934 (contains!8291 (toList!10224 lt!582644) (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(assert (= (and d!141399 res!865214) b!1302463))

(assert (= (and b!1302463 res!865215) b!1302464))

(declare-fun m!1193253 () Bool)

(assert (=> d!141399 m!1193253))

(declare-fun m!1193255 () Bool)

(assert (=> d!141399 m!1193255))

(declare-fun m!1193257 () Bool)

(assert (=> d!141399 m!1193257))

(declare-fun m!1193259 () Bool)

(assert (=> d!141399 m!1193259))

(declare-fun m!1193261 () Bool)

(assert (=> b!1302463 m!1193261))

(declare-fun m!1193263 () Bool)

(assert (=> b!1302464 m!1193263))

(assert (=> b!1302388 d!141399))

(declare-fun d!141401 () Bool)

(declare-fun e!742935 () Bool)

(assert (=> d!141401 e!742935))

(declare-fun res!865216 () Bool)

(assert (=> d!141401 (=> res!865216 e!742935)))

(declare-fun lt!582647 () Bool)

(assert (=> d!141401 (= res!865216 (not lt!582647))))

(declare-fun lt!582645 () Bool)

(assert (=> d!141401 (= lt!582647 lt!582645)))

(declare-fun lt!582648 () Unit!43057)

(declare-fun e!742936 () Unit!43057)

(assert (=> d!141401 (= lt!582648 e!742936)))

(declare-fun c!124937 () Bool)

(assert (=> d!141401 (= c!124937 lt!582645)))

(assert (=> d!141401 (= lt!582645 (containsKey!722 (toList!10224 lt!582540) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141401 (= (contains!8289 lt!582540 #b0000000000000000000000000000000000000000000000000000000000000000) lt!582647)))

(declare-fun b!1302465 () Bool)

(declare-fun lt!582646 () Unit!43057)

(assert (=> b!1302465 (= e!742936 lt!582646)))

(assert (=> b!1302465 (= lt!582646 (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!10224 lt!582540) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1302465 (isDefined!507 (getValueByKey!704 (toList!10224 lt!582540) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1302466 () Bool)

(declare-fun Unit!43064 () Unit!43057)

(assert (=> b!1302466 (= e!742936 Unit!43064)))

(declare-fun b!1302467 () Bool)

(assert (=> b!1302467 (= e!742935 (isDefined!507 (getValueByKey!704 (toList!10224 lt!582540) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141401 c!124937) b!1302465))

(assert (= (and d!141401 (not c!124937)) b!1302466))

(assert (= (and d!141401 (not res!865216)) b!1302467))

(declare-fun m!1193265 () Bool)

(assert (=> d!141401 m!1193265))

(declare-fun m!1193267 () Bool)

(assert (=> b!1302465 m!1193267))

(declare-fun m!1193269 () Bool)

(assert (=> b!1302465 m!1193269))

(assert (=> b!1302465 m!1193269))

(declare-fun m!1193271 () Bool)

(assert (=> b!1302465 m!1193271))

(assert (=> b!1302467 m!1193269))

(assert (=> b!1302467 m!1193269))

(assert (=> b!1302467 m!1193271))

(assert (=> d!141359 d!141401))

(assert (=> d!141359 d!141369))

(declare-fun b!1302468 () Bool)

(declare-fun e!742940 () Bool)

(declare-fun e!742938 () Bool)

(assert (=> b!1302468 (= e!742940 e!742938)))

(declare-fun c!124938 () Bool)

(assert (=> b!1302468 (= c!124938 (validKeyInArray!0 (select (arr!41852 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun call!64140 () Bool)

(declare-fun bm!64137 () Bool)

(assert (=> bm!64137 (= call!64140 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!124938 (Cons!29897 (select (arr!41852 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!124902 (Cons!29897 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000) Nil!29898) Nil!29898)) (ite c!124902 (Cons!29897 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000) Nil!29898) Nil!29898))))))

(declare-fun d!141403 () Bool)

(declare-fun res!865219 () Bool)

(declare-fun e!742937 () Bool)

(assert (=> d!141403 (=> res!865219 e!742937)))

(assert (=> d!141403 (= res!865219 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!42403 _keys!1741)))))

(assert (=> d!141403 (= (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!124902 (Cons!29897 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000) Nil!29898) Nil!29898)) e!742937)))

(declare-fun b!1302469 () Bool)

(declare-fun e!742939 () Bool)

(assert (=> b!1302469 (= e!742939 (contains!8290 (ite c!124902 (Cons!29897 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000) Nil!29898) Nil!29898) (select (arr!41852 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1302470 () Bool)

(assert (=> b!1302470 (= e!742938 call!64140)))

(declare-fun b!1302471 () Bool)

(assert (=> b!1302471 (= e!742937 e!742940)))

(declare-fun res!865217 () Bool)

(assert (=> b!1302471 (=> (not res!865217) (not e!742940))))

(assert (=> b!1302471 (= res!865217 (not e!742939))))

(declare-fun res!865218 () Bool)

(assert (=> b!1302471 (=> (not res!865218) (not e!742939))))

(assert (=> b!1302471 (= res!865218 (validKeyInArray!0 (select (arr!41852 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1302472 () Bool)

(assert (=> b!1302472 (= e!742938 call!64140)))

(assert (= (and d!141403 (not res!865219)) b!1302471))

(assert (= (and b!1302471 res!865218) b!1302469))

(assert (= (and b!1302471 res!865217) b!1302468))

(assert (= (and b!1302468 c!124938) b!1302472))

(assert (= (and b!1302468 (not c!124938)) b!1302470))

(assert (= (or b!1302472 b!1302470) bm!64137))

(declare-fun m!1193273 () Bool)

(assert (=> b!1302468 m!1193273))

(assert (=> b!1302468 m!1193273))

(declare-fun m!1193275 () Bool)

(assert (=> b!1302468 m!1193275))

(assert (=> bm!64137 m!1193273))

(declare-fun m!1193277 () Bool)

(assert (=> bm!64137 m!1193277))

(assert (=> b!1302469 m!1193273))

(assert (=> b!1302469 m!1193273))

(declare-fun m!1193279 () Bool)

(assert (=> b!1302469 m!1193279))

(assert (=> b!1302471 m!1193273))

(assert (=> b!1302471 m!1193273))

(assert (=> b!1302471 m!1193275))

(assert (=> bm!64112 d!141403))

(declare-fun d!141405 () Bool)

(declare-fun res!865224 () Bool)

(declare-fun e!742945 () Bool)

(assert (=> d!141405 (=> res!865224 e!742945)))

(assert (=> d!141405 (= res!865224 (and ((_ is Cons!29896) (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11384 (h!31105 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(assert (=> d!141405 (= (containsKey!722 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!742945)))

(declare-fun b!1302477 () Bool)

(declare-fun e!742946 () Bool)

(assert (=> b!1302477 (= e!742945 e!742946)))

(declare-fun res!865225 () Bool)

(assert (=> b!1302477 (=> (not res!865225) (not e!742946))))

(assert (=> b!1302477 (= res!865225 (and (or (not ((_ is Cons!29896) (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) (bvsle (_1!11384 (h!31105 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)) ((_ is Cons!29896) (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (bvslt (_1!11384 (h!31105 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(declare-fun b!1302478 () Bool)

(assert (=> b!1302478 (= e!742946 (containsKey!722 (t!43495 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(assert (= (and d!141405 (not res!865224)) b!1302477))

(assert (= (and b!1302477 res!865225) b!1302478))

(declare-fun m!1193281 () Bool)

(assert (=> b!1302478 m!1193281))

(assert (=> d!141357 d!141405))

(declare-fun d!141407 () Bool)

(assert (=> d!141407 (= (apply!1054 lt!582600 #b1000000000000000000000000000000000000000000000000000000000000000) (get!21187 (getValueByKey!704 (toList!10224 lt!582600) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37084 () Bool)

(assert (= bs!37084 d!141407))

(declare-fun m!1193283 () Bool)

(assert (=> bs!37084 m!1193283))

(assert (=> bs!37084 m!1193283))

(declare-fun m!1193285 () Bool)

(assert (=> bs!37084 m!1193285))

(assert (=> b!1302387 d!141407))

(assert (=> b!1302281 d!141379))

(assert (=> b!1302281 d!141381))

(declare-fun d!141409 () Bool)

(declare-fun e!742947 () Bool)

(assert (=> d!141409 e!742947))

(declare-fun res!865226 () Bool)

(assert (=> d!141409 (=> res!865226 e!742947)))

(declare-fun lt!582651 () Bool)

(assert (=> d!141409 (= res!865226 (not lt!582651))))

(declare-fun lt!582649 () Bool)

(assert (=> d!141409 (= lt!582651 lt!582649)))

(declare-fun lt!582652 () Unit!43057)

(declare-fun e!742948 () Unit!43057)

(assert (=> d!141409 (= lt!582652 e!742948)))

(declare-fun c!124939 () Bool)

(assert (=> d!141409 (= c!124939 lt!582649)))

(assert (=> d!141409 (= lt!582649 (containsKey!722 (toList!10224 lt!582600) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141409 (= (contains!8289 lt!582600 #b1000000000000000000000000000000000000000000000000000000000000000) lt!582651)))

(declare-fun b!1302479 () Bool)

(declare-fun lt!582650 () Unit!43057)

(assert (=> b!1302479 (= e!742948 lt!582650)))

(assert (=> b!1302479 (= lt!582650 (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!10224 lt!582600) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1302479 (isDefined!507 (getValueByKey!704 (toList!10224 lt!582600) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1302480 () Bool)

(declare-fun Unit!43065 () Unit!43057)

(assert (=> b!1302480 (= e!742948 Unit!43065)))

(declare-fun b!1302481 () Bool)

(assert (=> b!1302481 (= e!742947 (isDefined!507 (getValueByKey!704 (toList!10224 lt!582600) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141409 c!124939) b!1302479))

(assert (= (and d!141409 (not c!124939)) b!1302480))

(assert (= (and d!141409 (not res!865226)) b!1302481))

(declare-fun m!1193287 () Bool)

(assert (=> d!141409 m!1193287))

(declare-fun m!1193289 () Bool)

(assert (=> b!1302479 m!1193289))

(assert (=> b!1302479 m!1193283))

(assert (=> b!1302479 m!1193283))

(declare-fun m!1193291 () Bool)

(assert (=> b!1302479 m!1193291))

(assert (=> b!1302481 m!1193283))

(assert (=> b!1302481 m!1193283))

(assert (=> b!1302481 m!1193291))

(assert (=> bm!64133 d!141409))

(declare-fun d!141411 () Bool)

(declare-fun res!865227 () Bool)

(declare-fun e!742949 () Bool)

(assert (=> d!141411 (=> res!865227 e!742949)))

(assert (=> d!141411 (= res!865227 (and ((_ is Cons!29896) (toList!10224 (ListLongMap!20418 Nil!29897))) (= (_1!11384 (h!31105 (toList!10224 (ListLongMap!20418 Nil!29897)))) k0!1205)))))

(assert (=> d!141411 (= (containsKey!722 (toList!10224 (ListLongMap!20418 Nil!29897)) k0!1205) e!742949)))

(declare-fun b!1302482 () Bool)

(declare-fun e!742950 () Bool)

(assert (=> b!1302482 (= e!742949 e!742950)))

(declare-fun res!865228 () Bool)

(assert (=> b!1302482 (=> (not res!865228) (not e!742950))))

(assert (=> b!1302482 (= res!865228 (and (or (not ((_ is Cons!29896) (toList!10224 (ListLongMap!20418 Nil!29897)))) (bvsle (_1!11384 (h!31105 (toList!10224 (ListLongMap!20418 Nil!29897)))) k0!1205)) ((_ is Cons!29896) (toList!10224 (ListLongMap!20418 Nil!29897))) (bvslt (_1!11384 (h!31105 (toList!10224 (ListLongMap!20418 Nil!29897)))) k0!1205)))))

(declare-fun b!1302483 () Bool)

(assert (=> b!1302483 (= e!742950 (containsKey!722 (t!43495 (toList!10224 (ListLongMap!20418 Nil!29897))) k0!1205))))

(assert (= (and d!141411 (not res!865227)) b!1302482))

(assert (= (and b!1302482 res!865228) b!1302483))

(declare-fun m!1193293 () Bool)

(assert (=> b!1302483 m!1193293))

(assert (=> d!141353 d!141411))

(declare-fun b!1302485 () Bool)

(declare-fun res!865231 () Bool)

(declare-fun e!742952 () Bool)

(assert (=> b!1302485 (=> (not res!865231) (not e!742952))))

(declare-fun lt!582657 () ListLongMap!20417)

(assert (=> b!1302485 (= res!865231 (not (contains!8289 lt!582657 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1302486 () Bool)

(declare-fun e!742951 () Bool)

(declare-fun e!742956 () Bool)

(assert (=> b!1302486 (= e!742951 e!742956)))

(assert (=> b!1302486 (and (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42403 _keys!1741)))))

(declare-fun res!865232 () Bool)

(assert (=> b!1302486 (= res!865232 (contains!8289 lt!582657 (select (arr!41852 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))))))

(assert (=> b!1302486 (=> (not res!865232) (not e!742956))))

(declare-fun b!1302487 () Bool)

(declare-fun lt!582659 () Unit!43057)

(declare-fun lt!582654 () Unit!43057)

(assert (=> b!1302487 (= lt!582659 lt!582654)))

(declare-fun lt!582653 () (_ BitVec 64))

(declare-fun lt!582655 () V!51603)

(declare-fun lt!582658 () (_ BitVec 64))

(declare-fun lt!582656 () ListLongMap!20417)

(assert (=> b!1302487 (not (contains!8289 (+!4445 lt!582656 (tuple2!22749 lt!582653 lt!582655)) lt!582658))))

(assert (=> b!1302487 (= lt!582654 (addStillNotContains!469 lt!582656 lt!582653 lt!582655 lt!582658))))

(assert (=> b!1302487 (= lt!582658 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1302487 (= lt!582655 (get!21186 (select (arr!41851 _values!1445) (bvadd from!2144 #b00000000000000000000000000000001)) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1302487 (= lt!582653 (select (arr!41852 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001)))))

(declare-fun call!64141 () ListLongMap!20417)

(assert (=> b!1302487 (= lt!582656 call!64141)))

(declare-fun e!742957 () ListLongMap!20417)

(assert (=> b!1302487 (= e!742957 (+!4445 call!64141 (tuple2!22749 (select (arr!41852 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001)) (get!21186 (select (arr!41851 _values!1445) (bvadd from!2144 #b00000000000000000000000000000001)) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!64138 () Bool)

(assert (=> bm!64138 (= call!64141 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1302488 () Bool)

(declare-fun e!742953 () Bool)

(assert (=> b!1302488 (= e!742953 (isEmpty!1060 lt!582657))))

(declare-fun b!1302489 () Bool)

(assert (=> b!1302489 (= e!742957 call!64141)))

(declare-fun b!1302490 () Bool)

(declare-fun e!742954 () ListLongMap!20417)

(assert (=> b!1302490 (= e!742954 e!742957)))

(declare-fun c!124941 () Bool)

(assert (=> b!1302490 (= c!124941 (validKeyInArray!0 (select (arr!41852 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))))))

(declare-fun b!1302491 () Bool)

(declare-fun e!742955 () Bool)

(assert (=> b!1302491 (= e!742955 (validKeyInArray!0 (select (arr!41852 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))))))

(assert (=> b!1302491 (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1302492 () Bool)

(assert (=> b!1302492 (and (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42403 _keys!1741)))))

(assert (=> b!1302492 (and (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42402 _values!1445)))))

(assert (=> b!1302492 (= e!742956 (= (apply!1054 lt!582657 (select (arr!41852 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))) (get!21186 (select (arr!41851 _values!1445) (bvadd from!2144 #b00000000000000000000000000000001)) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1302493 () Bool)

(assert (=> b!1302493 (= e!742952 e!742951)))

(declare-fun c!124943 () Bool)

(assert (=> b!1302493 (= c!124943 e!742955)))

(declare-fun res!865230 () Bool)

(assert (=> b!1302493 (=> (not res!865230) (not e!742955))))

(assert (=> b!1302493 (= res!865230 (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42403 _keys!1741)))))

(declare-fun b!1302484 () Bool)

(assert (=> b!1302484 (= e!742951 e!742953)))

(declare-fun c!124942 () Bool)

(assert (=> b!1302484 (= c!124942 (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42403 _keys!1741)))))

(declare-fun d!141413 () Bool)

(assert (=> d!141413 e!742952))

(declare-fun res!865229 () Bool)

(assert (=> d!141413 (=> (not res!865229) (not e!742952))))

(assert (=> d!141413 (= res!865229 (not (contains!8289 lt!582657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!141413 (= lt!582657 e!742954)))

(declare-fun c!124940 () Bool)

(assert (=> d!141413 (= c!124940 (bvsge (bvadd from!2144 #b00000000000000000000000000000001) (size!42403 _keys!1741)))))

(assert (=> d!141413 (validMask!0 mask!2175)))

(assert (=> d!141413 (= (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448) lt!582657)))

(declare-fun b!1302494 () Bool)

(assert (=> b!1302494 (= e!742953 (= lt!582657 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun b!1302495 () Bool)

(assert (=> b!1302495 (= e!742954 (ListLongMap!20418 Nil!29897))))

(assert (= (and d!141413 c!124940) b!1302495))

(assert (= (and d!141413 (not c!124940)) b!1302490))

(assert (= (and b!1302490 c!124941) b!1302487))

(assert (= (and b!1302490 (not c!124941)) b!1302489))

(assert (= (or b!1302487 b!1302489) bm!64138))

(assert (= (and d!141413 res!865229) b!1302485))

(assert (= (and b!1302485 res!865231) b!1302493))

(assert (= (and b!1302493 res!865230) b!1302491))

(assert (= (and b!1302493 c!124943) b!1302486))

(assert (= (and b!1302493 (not c!124943)) b!1302484))

(assert (= (and b!1302486 res!865232) b!1302492))

(assert (= (and b!1302484 c!124942) b!1302494))

(assert (= (and b!1302484 (not c!124942)) b!1302488))

(declare-fun b_lambda!23253 () Bool)

(assert (=> (not b_lambda!23253) (not b!1302487)))

(assert (=> b!1302487 t!43498))

(declare-fun b_and!47397 () Bool)

(assert (= b_and!47395 (and (=> t!43498 result!23809) b_and!47397)))

(declare-fun b_lambda!23255 () Bool)

(assert (=> (not b_lambda!23255) (not b!1302492)))

(assert (=> b!1302492 t!43498))

(declare-fun b_and!47399 () Bool)

(assert (= b_and!47397 (and (=> t!43498 result!23809) b_and!47399)))

(declare-fun m!1193295 () Bool)

(assert (=> b!1302492 m!1193295))

(assert (=> b!1302492 m!1193115))

(declare-fun m!1193297 () Bool)

(assert (=> b!1302492 m!1193297))

(declare-fun m!1193299 () Bool)

(assert (=> b!1302492 m!1193299))

(assert (=> b!1302492 m!1193295))

(assert (=> b!1302492 m!1193115))

(declare-fun m!1193301 () Bool)

(assert (=> b!1302492 m!1193301))

(assert (=> b!1302492 m!1193297))

(declare-fun m!1193303 () Bool)

(assert (=> bm!64138 m!1193303))

(declare-fun m!1193305 () Bool)

(assert (=> d!141413 m!1193305))

(assert (=> d!141413 m!1193057))

(declare-fun m!1193307 () Bool)

(assert (=> b!1302488 m!1193307))

(assert (=> b!1302491 m!1193297))

(assert (=> b!1302491 m!1193297))

(declare-fun m!1193309 () Bool)

(assert (=> b!1302491 m!1193309))

(assert (=> b!1302490 m!1193297))

(assert (=> b!1302490 m!1193297))

(assert (=> b!1302490 m!1193309))

(declare-fun m!1193311 () Bool)

(assert (=> b!1302485 m!1193311))

(assert (=> b!1302494 m!1193303))

(declare-fun m!1193313 () Bool)

(assert (=> b!1302487 m!1193313))

(assert (=> b!1302487 m!1193295))

(assert (=> b!1302487 m!1193115))

(declare-fun m!1193315 () Bool)

(assert (=> b!1302487 m!1193315))

(assert (=> b!1302487 m!1193315))

(declare-fun m!1193317 () Bool)

(assert (=> b!1302487 m!1193317))

(declare-fun m!1193319 () Bool)

(assert (=> b!1302487 m!1193319))

(assert (=> b!1302487 m!1193295))

(assert (=> b!1302487 m!1193115))

(assert (=> b!1302487 m!1193301))

(assert (=> b!1302487 m!1193297))

(assert (=> b!1302486 m!1193297))

(assert (=> b!1302486 m!1193297))

(declare-fun m!1193321 () Bool)

(assert (=> b!1302486 m!1193321))

(assert (=> bm!64109 d!141413))

(assert (=> b!1302340 d!141395))

(assert (=> b!1302340 d!141397))

(declare-fun d!141415 () Bool)

(declare-fun e!742958 () Bool)

(assert (=> d!141415 e!742958))

(declare-fun res!865233 () Bool)

(assert (=> d!141415 (=> (not res!865233) (not e!742958))))

(declare-fun lt!582663 () ListLongMap!20417)

(assert (=> d!141415 (= res!865233 (contains!8289 lt!582663 (_1!11384 (tuple2!22749 (select (arr!41852 _keys!1741) from!2144) (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!582660 () List!29900)

(assert (=> d!141415 (= lt!582663 (ListLongMap!20418 lt!582660))))

(declare-fun lt!582661 () Unit!43057)

(declare-fun lt!582662 () Unit!43057)

(assert (=> d!141415 (= lt!582661 lt!582662)))

(assert (=> d!141415 (= (getValueByKey!704 lt!582660 (_1!11384 (tuple2!22749 (select (arr!41852 _keys!1741) from!2144) (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!754 (_2!11384 (tuple2!22749 (select (arr!41852 _keys!1741) from!2144) (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141415 (= lt!582662 (lemmaContainsTupThenGetReturnValue!348 lt!582660 (_1!11384 (tuple2!22749 (select (arr!41852 _keys!1741) from!2144) (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11384 (tuple2!22749 (select (arr!41852 _keys!1741) from!2144) (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141415 (= lt!582660 (insertStrictlySorted!477 (toList!10224 call!64112) (_1!11384 (tuple2!22749 (select (arr!41852 _keys!1741) from!2144) (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11384 (tuple2!22749 (select (arr!41852 _keys!1741) from!2144) (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141415 (= (+!4445 call!64112 (tuple2!22749 (select (arr!41852 _keys!1741) from!2144) (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!582663)))

(declare-fun b!1302496 () Bool)

(declare-fun res!865234 () Bool)

(assert (=> b!1302496 (=> (not res!865234) (not e!742958))))

(assert (=> b!1302496 (= res!865234 (= (getValueByKey!704 (toList!10224 lt!582663) (_1!11384 (tuple2!22749 (select (arr!41852 _keys!1741) from!2144) (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!754 (_2!11384 (tuple2!22749 (select (arr!41852 _keys!1741) from!2144) (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1302497 () Bool)

(assert (=> b!1302497 (= e!742958 (contains!8291 (toList!10224 lt!582663) (tuple2!22749 (select (arr!41852 _keys!1741) from!2144) (get!21186 (select (arr!41851 _values!1445) from!2144) (dynLambda!3506 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!141415 res!865233) b!1302496))

(assert (= (and b!1302496 res!865234) b!1302497))

(declare-fun m!1193323 () Bool)

(assert (=> d!141415 m!1193323))

(declare-fun m!1193325 () Bool)

(assert (=> d!141415 m!1193325))

(declare-fun m!1193327 () Bool)

(assert (=> d!141415 m!1193327))

(declare-fun m!1193329 () Bool)

(assert (=> d!141415 m!1193329))

(declare-fun m!1193331 () Bool)

(assert (=> b!1302496 m!1193331))

(declare-fun m!1193333 () Bool)

(assert (=> b!1302497 m!1193333))

(assert (=> b!1302312 d!141415))

(declare-fun d!141417 () Bool)

(declare-fun e!742959 () Bool)

(assert (=> d!141417 e!742959))

(declare-fun res!865235 () Bool)

(assert (=> d!141417 (=> res!865235 e!742959)))

(declare-fun lt!582666 () Bool)

(assert (=> d!141417 (= res!865235 (not lt!582666))))

(declare-fun lt!582664 () Bool)

(assert (=> d!141417 (= lt!582666 lt!582664)))

(declare-fun lt!582667 () Unit!43057)

(declare-fun e!742960 () Unit!43057)

(assert (=> d!141417 (= lt!582667 e!742960)))

(declare-fun c!124944 () Bool)

(assert (=> d!141417 (= c!124944 lt!582664)))

(assert (=> d!141417 (= lt!582664 (containsKey!722 (toList!10224 (+!4445 lt!582539 (tuple2!22749 lt!582536 lt!582538))) lt!582541))))

(assert (=> d!141417 (= (contains!8289 (+!4445 lt!582539 (tuple2!22749 lt!582536 lt!582538)) lt!582541) lt!582666)))

(declare-fun b!1302498 () Bool)

(declare-fun lt!582665 () Unit!43057)

(assert (=> b!1302498 (= e!742960 lt!582665)))

(assert (=> b!1302498 (= lt!582665 (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!10224 (+!4445 lt!582539 (tuple2!22749 lt!582536 lt!582538))) lt!582541))))

(assert (=> b!1302498 (isDefined!507 (getValueByKey!704 (toList!10224 (+!4445 lt!582539 (tuple2!22749 lt!582536 lt!582538))) lt!582541))))

(declare-fun b!1302499 () Bool)

(declare-fun Unit!43066 () Unit!43057)

(assert (=> b!1302499 (= e!742960 Unit!43066)))

(declare-fun b!1302500 () Bool)

(assert (=> b!1302500 (= e!742959 (isDefined!507 (getValueByKey!704 (toList!10224 (+!4445 lt!582539 (tuple2!22749 lt!582536 lt!582538))) lt!582541)))))

(assert (= (and d!141417 c!124944) b!1302498))

(assert (= (and d!141417 (not c!124944)) b!1302499))

(assert (= (and d!141417 (not res!865235)) b!1302500))

(declare-fun m!1193335 () Bool)

(assert (=> d!141417 m!1193335))

(declare-fun m!1193337 () Bool)

(assert (=> b!1302498 m!1193337))

(declare-fun m!1193339 () Bool)

(assert (=> b!1302498 m!1193339))

(assert (=> b!1302498 m!1193339))

(declare-fun m!1193341 () Bool)

(assert (=> b!1302498 m!1193341))

(assert (=> b!1302500 m!1193339))

(assert (=> b!1302500 m!1193339))

(assert (=> b!1302500 m!1193341))

(assert (=> b!1302312 d!141417))

(declare-fun d!141419 () Bool)

(declare-fun e!742961 () Bool)

(assert (=> d!141419 e!742961))

(declare-fun res!865236 () Bool)

(assert (=> d!141419 (=> (not res!865236) (not e!742961))))

(declare-fun lt!582671 () ListLongMap!20417)

(assert (=> d!141419 (= res!865236 (contains!8289 lt!582671 (_1!11384 (tuple2!22749 lt!582536 lt!582538))))))

(declare-fun lt!582668 () List!29900)

(assert (=> d!141419 (= lt!582671 (ListLongMap!20418 lt!582668))))

(declare-fun lt!582669 () Unit!43057)

(declare-fun lt!582670 () Unit!43057)

(assert (=> d!141419 (= lt!582669 lt!582670)))

(assert (=> d!141419 (= (getValueByKey!704 lt!582668 (_1!11384 (tuple2!22749 lt!582536 lt!582538))) (Some!754 (_2!11384 (tuple2!22749 lt!582536 lt!582538))))))

(assert (=> d!141419 (= lt!582670 (lemmaContainsTupThenGetReturnValue!348 lt!582668 (_1!11384 (tuple2!22749 lt!582536 lt!582538)) (_2!11384 (tuple2!22749 lt!582536 lt!582538))))))

(assert (=> d!141419 (= lt!582668 (insertStrictlySorted!477 (toList!10224 lt!582539) (_1!11384 (tuple2!22749 lt!582536 lt!582538)) (_2!11384 (tuple2!22749 lt!582536 lt!582538))))))

(assert (=> d!141419 (= (+!4445 lt!582539 (tuple2!22749 lt!582536 lt!582538)) lt!582671)))

(declare-fun b!1302501 () Bool)

(declare-fun res!865237 () Bool)

(assert (=> b!1302501 (=> (not res!865237) (not e!742961))))

(assert (=> b!1302501 (= res!865237 (= (getValueByKey!704 (toList!10224 lt!582671) (_1!11384 (tuple2!22749 lt!582536 lt!582538))) (Some!754 (_2!11384 (tuple2!22749 lt!582536 lt!582538)))))))

(declare-fun b!1302502 () Bool)

(assert (=> b!1302502 (= e!742961 (contains!8291 (toList!10224 lt!582671) (tuple2!22749 lt!582536 lt!582538)))))

(assert (= (and d!141419 res!865236) b!1302501))

(assert (= (and b!1302501 res!865237) b!1302502))

(declare-fun m!1193343 () Bool)

(assert (=> d!141419 m!1193343))

(declare-fun m!1193345 () Bool)

(assert (=> d!141419 m!1193345))

(declare-fun m!1193347 () Bool)

(assert (=> d!141419 m!1193347))

(declare-fun m!1193349 () Bool)

(assert (=> d!141419 m!1193349))

(declare-fun m!1193351 () Bool)

(assert (=> b!1302501 m!1193351))

(declare-fun m!1193353 () Bool)

(assert (=> b!1302502 m!1193353))

(assert (=> b!1302312 d!141419))

(declare-fun d!141421 () Bool)

(assert (=> d!141421 (not (contains!8289 (+!4445 lt!582539 (tuple2!22749 lt!582536 lt!582538)) lt!582541))))

(declare-fun lt!582674 () Unit!43057)

(declare-fun choose!1923 (ListLongMap!20417 (_ BitVec 64) V!51603 (_ BitVec 64)) Unit!43057)

(assert (=> d!141421 (= lt!582674 (choose!1923 lt!582539 lt!582536 lt!582538 lt!582541))))

(declare-fun e!742964 () Bool)

(assert (=> d!141421 e!742964))

(declare-fun res!865240 () Bool)

(assert (=> d!141421 (=> (not res!865240) (not e!742964))))

(assert (=> d!141421 (= res!865240 (not (contains!8289 lt!582539 lt!582541)))))

(assert (=> d!141421 (= (addStillNotContains!469 lt!582539 lt!582536 lt!582538 lt!582541) lt!582674)))

(declare-fun b!1302506 () Bool)

(assert (=> b!1302506 (= e!742964 (not (= lt!582536 lt!582541)))))

(assert (= (and d!141421 res!865240) b!1302506))

(assert (=> d!141421 m!1193131))

(assert (=> d!141421 m!1193131))

(assert (=> d!141421 m!1193133))

(declare-fun m!1193355 () Bool)

(assert (=> d!141421 m!1193355))

(declare-fun m!1193357 () Bool)

(assert (=> d!141421 m!1193357))

(assert (=> b!1302312 d!141421))

(assert (=> b!1302312 d!141389))

(declare-fun d!141423 () Bool)

(declare-fun e!742965 () Bool)

(assert (=> d!141423 e!742965))

(declare-fun res!865241 () Bool)

(assert (=> d!141423 (=> res!865241 e!742965)))

(declare-fun lt!582677 () Bool)

(assert (=> d!141423 (= res!865241 (not lt!582677))))

(declare-fun lt!582675 () Bool)

(assert (=> d!141423 (= lt!582677 lt!582675)))

(declare-fun lt!582678 () Unit!43057)

(declare-fun e!742966 () Unit!43057)

(assert (=> d!141423 (= lt!582678 e!742966)))

(declare-fun c!124945 () Bool)

(assert (=> d!141423 (= c!124945 lt!582675)))

(assert (=> d!141423 (= lt!582675 (containsKey!722 (toList!10224 lt!582600) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141423 (= (contains!8289 lt!582600 #b0000000000000000000000000000000000000000000000000000000000000000) lt!582677)))

(declare-fun b!1302507 () Bool)

(declare-fun lt!582676 () Unit!43057)

(assert (=> b!1302507 (= e!742966 lt!582676)))

(assert (=> b!1302507 (= lt!582676 (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!10224 lt!582600) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1302507 (isDefined!507 (getValueByKey!704 (toList!10224 lt!582600) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1302508 () Bool)

(declare-fun Unit!43067 () Unit!43057)

(assert (=> b!1302508 (= e!742966 Unit!43067)))

(declare-fun b!1302509 () Bool)

(assert (=> b!1302509 (= e!742965 (isDefined!507 (getValueByKey!704 (toList!10224 lt!582600) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141423 c!124945) b!1302507))

(assert (= (and d!141423 (not c!124945)) b!1302508))

(assert (= (and d!141423 (not res!865241)) b!1302509))

(declare-fun m!1193359 () Bool)

(assert (=> d!141423 m!1193359))

(declare-fun m!1193361 () Bool)

(assert (=> b!1302507 m!1193361))

(assert (=> b!1302507 m!1193219))

(assert (=> b!1302507 m!1193219))

(declare-fun m!1193363 () Bool)

(assert (=> b!1302507 m!1193363))

(assert (=> b!1302509 m!1193219))

(assert (=> b!1302509 m!1193219))

(assert (=> b!1302509 m!1193363))

(assert (=> bm!64128 d!141423))

(declare-fun d!141425 () Bool)

(declare-fun e!742967 () Bool)

(assert (=> d!141425 e!742967))

(declare-fun res!865242 () Bool)

(assert (=> d!141425 (=> res!865242 e!742967)))

(declare-fun lt!582681 () Bool)

(assert (=> d!141425 (= res!865242 (not lt!582681))))

(declare-fun lt!582679 () Bool)

(assert (=> d!141425 (= lt!582681 lt!582679)))

(declare-fun lt!582682 () Unit!43057)

(declare-fun e!742968 () Unit!43057)

(assert (=> d!141425 (= lt!582682 e!742968)))

(declare-fun c!124946 () Bool)

(assert (=> d!141425 (= c!124946 lt!582679)))

(assert (=> d!141425 (= lt!582679 (containsKey!722 (toList!10224 lt!582540) (select (arr!41852 _keys!1741) from!2144)))))

(assert (=> d!141425 (= (contains!8289 lt!582540 (select (arr!41852 _keys!1741) from!2144)) lt!582681)))

(declare-fun b!1302510 () Bool)

(declare-fun lt!582680 () Unit!43057)

(assert (=> b!1302510 (= e!742968 lt!582680)))

(assert (=> b!1302510 (= lt!582680 (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!10224 lt!582540) (select (arr!41852 _keys!1741) from!2144)))))

(assert (=> b!1302510 (isDefined!507 (getValueByKey!704 (toList!10224 lt!582540) (select (arr!41852 _keys!1741) from!2144)))))

(declare-fun b!1302511 () Bool)

(declare-fun Unit!43068 () Unit!43057)

(assert (=> b!1302511 (= e!742968 Unit!43068)))

(declare-fun b!1302512 () Bool)

(assert (=> b!1302512 (= e!742967 (isDefined!507 (getValueByKey!704 (toList!10224 lt!582540) (select (arr!41852 _keys!1741) from!2144))))))

(assert (= (and d!141425 c!124946) b!1302510))

(assert (= (and d!141425 (not c!124946)) b!1302511))

(assert (= (and d!141425 (not res!865242)) b!1302512))

(assert (=> d!141425 m!1193051))

(declare-fun m!1193365 () Bool)

(assert (=> d!141425 m!1193365))

(assert (=> b!1302510 m!1193051))

(declare-fun m!1193367 () Bool)

(assert (=> b!1302510 m!1193367))

(assert (=> b!1302510 m!1193051))

(declare-fun m!1193369 () Bool)

(assert (=> b!1302510 m!1193369))

(assert (=> b!1302510 m!1193369))

(declare-fun m!1193371 () Bool)

(assert (=> b!1302510 m!1193371))

(assert (=> b!1302512 m!1193051))

(assert (=> b!1302512 m!1193369))

(assert (=> b!1302512 m!1193369))

(assert (=> b!1302512 m!1193371))

(assert (=> b!1302311 d!141425))

(assert (=> b!1302336 d!141375))

(declare-fun d!141427 () Bool)

(declare-fun e!742969 () Bool)

(assert (=> d!141427 e!742969))

(declare-fun res!865243 () Bool)

(assert (=> d!141427 (=> res!865243 e!742969)))

(declare-fun lt!582685 () Bool)

(assert (=> d!141427 (= res!865243 (not lt!582685))))

(declare-fun lt!582683 () Bool)

(assert (=> d!141427 (= lt!582685 lt!582683)))

(declare-fun lt!582686 () Unit!43057)

(declare-fun e!742970 () Unit!43057)

(assert (=> d!141427 (= lt!582686 e!742970)))

(declare-fun c!124947 () Bool)

(assert (=> d!141427 (= c!124947 lt!582683)))

(assert (=> d!141427 (= lt!582683 (containsKey!722 (toList!10224 lt!582600) (select (arr!41852 _keys!1741) from!2144)))))

(assert (=> d!141427 (= (contains!8289 lt!582600 (select (arr!41852 _keys!1741) from!2144)) lt!582685)))

(declare-fun b!1302513 () Bool)

(declare-fun lt!582684 () Unit!43057)

(assert (=> b!1302513 (= e!742970 lt!582684)))

(assert (=> b!1302513 (= lt!582684 (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!10224 lt!582600) (select (arr!41852 _keys!1741) from!2144)))))

(assert (=> b!1302513 (isDefined!507 (getValueByKey!704 (toList!10224 lt!582600) (select (arr!41852 _keys!1741) from!2144)))))

(declare-fun b!1302514 () Bool)

(declare-fun Unit!43069 () Unit!43057)

(assert (=> b!1302514 (= e!742970 Unit!43069)))

(declare-fun b!1302515 () Bool)

(assert (=> b!1302515 (= e!742969 (isDefined!507 (getValueByKey!704 (toList!10224 lt!582600) (select (arr!41852 _keys!1741) from!2144))))))

(assert (= (and d!141427 c!124947) b!1302513))

(assert (= (and d!141427 (not c!124947)) b!1302514))

(assert (= (and d!141427 (not res!865243)) b!1302515))

(assert (=> d!141427 m!1193051))

(declare-fun m!1193373 () Bool)

(assert (=> d!141427 m!1193373))

(assert (=> b!1302513 m!1193051))

(declare-fun m!1193375 () Bool)

(assert (=> b!1302513 m!1193375))

(assert (=> b!1302513 m!1193051))

(assert (=> b!1302513 m!1193231))

(assert (=> b!1302513 m!1193231))

(declare-fun m!1193377 () Bool)

(assert (=> b!1302513 m!1193377))

(assert (=> b!1302515 m!1193051))

(assert (=> b!1302515 m!1193231))

(assert (=> b!1302515 m!1193231))

(assert (=> b!1302515 m!1193377))

(assert (=> b!1302391 d!141427))

(declare-fun d!141429 () Bool)

(declare-fun isEmpty!1062 (List!29900) Bool)

(assert (=> d!141429 (= (isEmpty!1060 lt!582540) (isEmpty!1062 (toList!10224 lt!582540)))))

(declare-fun bs!37085 () Bool)

(assert (= bs!37085 d!141429))

(declare-fun m!1193379 () Bool)

(assert (=> bs!37085 m!1193379))

(assert (=> b!1302313 d!141429))

(declare-fun d!141431 () Bool)

(assert (=> d!141431 (isDefined!507 (getValueByKey!704 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun lt!582687 () Unit!43057)

(assert (=> d!141431 (= lt!582687 (choose!1922 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun e!742971 () Bool)

(assert (=> d!141431 e!742971))

(declare-fun res!865244 () Bool)

(assert (=> d!141431 (=> (not res!865244) (not e!742971))))

(assert (=> d!141431 (= res!865244 (isStrictlySorted!868 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))

(assert (=> d!141431 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) lt!582687)))

(declare-fun b!1302516 () Bool)

(assert (=> b!1302516 (= e!742971 (containsKey!722 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (= (and d!141431 res!865244) b!1302516))

(assert (=> d!141431 m!1193109))

(assert (=> d!141431 m!1193109))

(assert (=> d!141431 m!1193111))

(declare-fun m!1193381 () Bool)

(assert (=> d!141431 m!1193381))

(declare-fun m!1193383 () Bool)

(assert (=> d!141431 m!1193383))

(assert (=> b!1302516 m!1193105))

(assert (=> b!1302282 d!141431))

(declare-fun d!141433 () Bool)

(assert (=> d!141433 (= (isDefined!507 (getValueByKey!704 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)) (not (isEmpty!1061 (getValueByKey!704 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))))

(declare-fun bs!37086 () Bool)

(assert (= bs!37086 d!141433))

(assert (=> bs!37086 m!1193109))

(declare-fun m!1193385 () Bool)

(assert (=> bs!37086 m!1193385))

(assert (=> b!1302282 d!141433))

(declare-fun b!1302520 () Bool)

(declare-fun e!742973 () Option!755)

(assert (=> b!1302520 (= e!742973 None!753)))

(declare-fun b!1302518 () Bool)

(declare-fun e!742972 () Option!755)

(assert (=> b!1302518 (= e!742972 e!742973)))

(declare-fun c!124949 () Bool)

(assert (=> b!1302518 (= c!124949 (and ((_ is Cons!29896) (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (not (= (_1!11384 (h!31105 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205))))))

(declare-fun b!1302517 () Bool)

(assert (=> b!1302517 (= e!742972 (Some!754 (_2!11384 (h!31105 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))))

(declare-fun b!1302519 () Bool)

(assert (=> b!1302519 (= e!742973 (getValueByKey!704 (t!43495 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(declare-fun c!124948 () Bool)

(declare-fun d!141435 () Bool)

(assert (=> d!141435 (= c!124948 (and ((_ is Cons!29896) (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11384 (h!31105 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(assert (=> d!141435 (= (getValueByKey!704 (toList!10224 (getCurrentListMapNoExtraKeys!6159 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!742972)))

(assert (= (and d!141435 c!124948) b!1302517))

(assert (= (and d!141435 (not c!124948)) b!1302518))

(assert (= (and b!1302518 c!124949) b!1302519))

(assert (= (and b!1302518 (not c!124949)) b!1302520))

(declare-fun m!1193387 () Bool)

(assert (=> b!1302519 m!1193387))

(assert (=> b!1302282 d!141435))

(declare-fun d!141437 () Bool)

(assert (=> d!141437 (= (apply!1054 lt!582540 (select (arr!41852 _keys!1741) from!2144)) (get!21187 (getValueByKey!704 (toList!10224 lt!582540) (select (arr!41852 _keys!1741) from!2144))))))

(declare-fun bs!37087 () Bool)

(assert (= bs!37087 d!141437))

(assert (=> bs!37087 m!1193051))

(assert (=> bs!37087 m!1193369))

(assert (=> bs!37087 m!1193369))

(declare-fun m!1193389 () Bool)

(assert (=> bs!37087 m!1193389))

(assert (=> b!1302317 d!141437))

(assert (=> b!1302317 d!141389))

(assert (=> d!141355 d!141353))

(declare-fun d!141439 () Bool)

(assert (=> d!141439 (not (contains!8289 (ListLongMap!20418 Nil!29897) k0!1205))))

(assert (=> d!141439 true))

(declare-fun _$29!195 () Unit!43057)

(assert (=> d!141439 (= (choose!1921 k0!1205) _$29!195)))

(declare-fun bs!37088 () Bool)

(assert (= bs!37088 d!141439))

(assert (=> bs!37088 m!1193063))

(assert (=> d!141355 d!141439))

(assert (=> b!1302316 d!141351))

(declare-fun d!141441 () Bool)

(declare-fun e!742974 () Bool)

(assert (=> d!141441 e!742974))

(declare-fun res!865245 () Bool)

(assert (=> d!141441 (=> res!865245 e!742974)))

(declare-fun lt!582690 () Bool)

(assert (=> d!141441 (= res!865245 (not lt!582690))))

(declare-fun lt!582688 () Bool)

(assert (=> d!141441 (= lt!582690 lt!582688)))

(declare-fun lt!582691 () Unit!43057)

(declare-fun e!742975 () Unit!43057)

(assert (=> d!141441 (= lt!582691 e!742975)))

(declare-fun c!124950 () Bool)

(assert (=> d!141441 (= c!124950 lt!582688)))

(assert (=> d!141441 (= lt!582688 (containsKey!722 (toList!10224 (+!4445 lt!582591 (tuple2!22749 lt!582608 zeroValue!1387))) lt!582609))))

(assert (=> d!141441 (= (contains!8289 (+!4445 lt!582591 (tuple2!22749 lt!582608 zeroValue!1387)) lt!582609) lt!582690)))

(declare-fun b!1302521 () Bool)

(declare-fun lt!582689 () Unit!43057)

(assert (=> b!1302521 (= e!742975 lt!582689)))

(assert (=> b!1302521 (= lt!582689 (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!10224 (+!4445 lt!582591 (tuple2!22749 lt!582608 zeroValue!1387))) lt!582609))))

(assert (=> b!1302521 (isDefined!507 (getValueByKey!704 (toList!10224 (+!4445 lt!582591 (tuple2!22749 lt!582608 zeroValue!1387))) lt!582609))))

(declare-fun b!1302522 () Bool)

(declare-fun Unit!43070 () Unit!43057)

(assert (=> b!1302522 (= e!742975 Unit!43070)))

(declare-fun b!1302523 () Bool)

(assert (=> b!1302523 (= e!742974 (isDefined!507 (getValueByKey!704 (toList!10224 (+!4445 lt!582591 (tuple2!22749 lt!582608 zeroValue!1387))) lt!582609)))))

(assert (= (and d!141441 c!124950) b!1302521))

(assert (= (and d!141441 (not c!124950)) b!1302522))

(assert (= (and d!141441 (not res!865245)) b!1302523))

(declare-fun m!1193391 () Bool)

(assert (=> d!141441 m!1193391))

(declare-fun m!1193393 () Bool)

(assert (=> b!1302521 m!1193393))

(declare-fun m!1193395 () Bool)

(assert (=> b!1302521 m!1193395))

(assert (=> b!1302521 m!1193395))

(declare-fun m!1193397 () Bool)

(assert (=> b!1302521 m!1193397))

(assert (=> b!1302523 m!1193395))

(assert (=> b!1302523 m!1193395))

(assert (=> b!1302523 m!1193397))

(assert (=> b!1302392 d!141441))

(declare-fun d!141443 () Bool)

(assert (=> d!141443 (= (apply!1054 (+!4445 lt!582599 (tuple2!22749 lt!582604 minValue!1387)) lt!582606) (get!21187 (getValueByKey!704 (toList!10224 (+!4445 lt!582599 (tuple2!22749 lt!582604 minValue!1387))) lt!582606)))))

(declare-fun bs!37089 () Bool)

(assert (= bs!37089 d!141443))

(declare-fun m!1193399 () Bool)

(assert (=> bs!37089 m!1193399))

(assert (=> bs!37089 m!1193399))

(declare-fun m!1193401 () Bool)

(assert (=> bs!37089 m!1193401))

(assert (=> b!1302392 d!141443))

(declare-fun d!141445 () Bool)

(assert (=> d!141445 (contains!8289 (+!4445 lt!582591 (tuple2!22749 lt!582608 zeroValue!1387)) lt!582609)))

(declare-fun lt!582694 () Unit!43057)

(declare-fun choose!1924 (ListLongMap!20417 (_ BitVec 64) V!51603 (_ BitVec 64)) Unit!43057)

(assert (=> d!141445 (= lt!582694 (choose!1924 lt!582591 lt!582608 zeroValue!1387 lt!582609))))

(assert (=> d!141445 (contains!8289 lt!582591 lt!582609)))

(assert (=> d!141445 (= (addStillContains!1123 lt!582591 lt!582608 zeroValue!1387 lt!582609) lt!582694)))

(declare-fun bs!37090 () Bool)

(assert (= bs!37090 d!141445))

(assert (=> bs!37090 m!1193177))

(assert (=> bs!37090 m!1193177))

(assert (=> bs!37090 m!1193179))

(declare-fun m!1193403 () Bool)

(assert (=> bs!37090 m!1193403))

(declare-fun m!1193405 () Bool)

(assert (=> bs!37090 m!1193405))

(assert (=> b!1302392 d!141445))

(declare-fun d!141447 () Bool)

(assert (=> d!141447 (= (apply!1054 lt!582597 lt!582594) (get!21187 (getValueByKey!704 (toList!10224 lt!582597) lt!582594)))))

(declare-fun bs!37091 () Bool)

(assert (= bs!37091 d!141447))

(declare-fun m!1193407 () Bool)

(assert (=> bs!37091 m!1193407))

(assert (=> bs!37091 m!1193407))

(declare-fun m!1193409 () Bool)

(assert (=> bs!37091 m!1193409))

(assert (=> b!1302392 d!141447))

(declare-fun d!141449 () Bool)

(assert (=> d!141449 (= (apply!1054 lt!582592 lt!582601) (get!21187 (getValueByKey!704 (toList!10224 lt!582592) lt!582601)))))

(declare-fun bs!37092 () Bool)

(assert (= bs!37092 d!141449))

(declare-fun m!1193411 () Bool)

(assert (=> bs!37092 m!1193411))

(assert (=> bs!37092 m!1193411))

(declare-fun m!1193413 () Bool)

(assert (=> bs!37092 m!1193413))

(assert (=> b!1302392 d!141449))

(declare-fun d!141451 () Bool)

(assert (=> d!141451 (= (apply!1054 (+!4445 lt!582592 (tuple2!22749 lt!582596 minValue!1387)) lt!582601) (get!21187 (getValueByKey!704 (toList!10224 (+!4445 lt!582592 (tuple2!22749 lt!582596 minValue!1387))) lt!582601)))))

(declare-fun bs!37093 () Bool)

(assert (= bs!37093 d!141451))

(declare-fun m!1193415 () Bool)

(assert (=> bs!37093 m!1193415))

(assert (=> bs!37093 m!1193415))

(declare-fun m!1193417 () Bool)

(assert (=> bs!37093 m!1193417))

(assert (=> b!1302392 d!141451))

(declare-fun d!141453 () Bool)

(assert (=> d!141453 (= (apply!1054 (+!4445 lt!582597 (tuple2!22749 lt!582607 zeroValue!1387)) lt!582594) (apply!1054 lt!582597 lt!582594))))

(declare-fun lt!582697 () Unit!43057)

(declare-fun choose!1925 (ListLongMap!20417 (_ BitVec 64) V!51603 (_ BitVec 64)) Unit!43057)

(assert (=> d!141453 (= lt!582697 (choose!1925 lt!582597 lt!582607 zeroValue!1387 lt!582594))))

(declare-fun e!742978 () Bool)

(assert (=> d!141453 e!742978))

(declare-fun res!865248 () Bool)

(assert (=> d!141453 (=> (not res!865248) (not e!742978))))

(assert (=> d!141453 (= res!865248 (contains!8289 lt!582597 lt!582594))))

(assert (=> d!141453 (= (addApplyDifferent!557 lt!582597 lt!582607 zeroValue!1387 lt!582594) lt!582697)))

(declare-fun b!1302528 () Bool)

(assert (=> b!1302528 (= e!742978 (not (= lt!582594 lt!582607)))))

(assert (= (and d!141453 res!865248) b!1302528))

(assert (=> d!141453 m!1193165))

(declare-fun m!1193419 () Bool)

(assert (=> d!141453 m!1193419))

(assert (=> d!141453 m!1193165))

(assert (=> d!141453 m!1193167))

(declare-fun m!1193421 () Bool)

(assert (=> d!141453 m!1193421))

(assert (=> d!141453 m!1193169))

(assert (=> b!1302392 d!141453))

(declare-fun d!141455 () Bool)

(declare-fun e!742979 () Bool)

(assert (=> d!141455 e!742979))

(declare-fun res!865249 () Bool)

(assert (=> d!141455 (=> (not res!865249) (not e!742979))))

(declare-fun lt!582701 () ListLongMap!20417)

(assert (=> d!141455 (= res!865249 (contains!8289 lt!582701 (_1!11384 (tuple2!22749 lt!582608 zeroValue!1387))))))

(declare-fun lt!582698 () List!29900)

(assert (=> d!141455 (= lt!582701 (ListLongMap!20418 lt!582698))))

(declare-fun lt!582699 () Unit!43057)

(declare-fun lt!582700 () Unit!43057)

(assert (=> d!141455 (= lt!582699 lt!582700)))

(assert (=> d!141455 (= (getValueByKey!704 lt!582698 (_1!11384 (tuple2!22749 lt!582608 zeroValue!1387))) (Some!754 (_2!11384 (tuple2!22749 lt!582608 zeroValue!1387))))))

(assert (=> d!141455 (= lt!582700 (lemmaContainsTupThenGetReturnValue!348 lt!582698 (_1!11384 (tuple2!22749 lt!582608 zeroValue!1387)) (_2!11384 (tuple2!22749 lt!582608 zeroValue!1387))))))

(assert (=> d!141455 (= lt!582698 (insertStrictlySorted!477 (toList!10224 lt!582591) (_1!11384 (tuple2!22749 lt!582608 zeroValue!1387)) (_2!11384 (tuple2!22749 lt!582608 zeroValue!1387))))))

(assert (=> d!141455 (= (+!4445 lt!582591 (tuple2!22749 lt!582608 zeroValue!1387)) lt!582701)))

(declare-fun b!1302529 () Bool)

(declare-fun res!865250 () Bool)

(assert (=> b!1302529 (=> (not res!865250) (not e!742979))))

(assert (=> b!1302529 (= res!865250 (= (getValueByKey!704 (toList!10224 lt!582701) (_1!11384 (tuple2!22749 lt!582608 zeroValue!1387))) (Some!754 (_2!11384 (tuple2!22749 lt!582608 zeroValue!1387)))))))

(declare-fun b!1302530 () Bool)

(assert (=> b!1302530 (= e!742979 (contains!8291 (toList!10224 lt!582701) (tuple2!22749 lt!582608 zeroValue!1387)))))

(assert (= (and d!141455 res!865249) b!1302529))

(assert (= (and b!1302529 res!865250) b!1302530))

(declare-fun m!1193423 () Bool)

(assert (=> d!141455 m!1193423))

(declare-fun m!1193425 () Bool)

(assert (=> d!141455 m!1193425))

(declare-fun m!1193427 () Bool)

(assert (=> d!141455 m!1193427))

(declare-fun m!1193429 () Bool)

(assert (=> d!141455 m!1193429))

(declare-fun m!1193431 () Bool)

(assert (=> b!1302529 m!1193431))

(declare-fun m!1193433 () Bool)

(assert (=> b!1302530 m!1193433))

(assert (=> b!1302392 d!141455))

(declare-fun d!141457 () Bool)

(assert (=> d!141457 (= (apply!1054 lt!582599 lt!582606) (get!21187 (getValueByKey!704 (toList!10224 lt!582599) lt!582606)))))

(declare-fun bs!37094 () Bool)

(assert (= bs!37094 d!141457))

(declare-fun m!1193435 () Bool)

(assert (=> bs!37094 m!1193435))

(assert (=> bs!37094 m!1193435))

(declare-fun m!1193437 () Bool)

(assert (=> bs!37094 m!1193437))

(assert (=> b!1302392 d!141457))

(declare-fun d!141459 () Bool)

(declare-fun e!742980 () Bool)

(assert (=> d!141459 e!742980))

(declare-fun res!865251 () Bool)

(assert (=> d!141459 (=> (not res!865251) (not e!742980))))

(declare-fun lt!582705 () ListLongMap!20417)

(assert (=> d!141459 (= res!865251 (contains!8289 lt!582705 (_1!11384 (tuple2!22749 lt!582604 minValue!1387))))))

(declare-fun lt!582702 () List!29900)

(assert (=> d!141459 (= lt!582705 (ListLongMap!20418 lt!582702))))

(declare-fun lt!582703 () Unit!43057)

(declare-fun lt!582704 () Unit!43057)

(assert (=> d!141459 (= lt!582703 lt!582704)))

(assert (=> d!141459 (= (getValueByKey!704 lt!582702 (_1!11384 (tuple2!22749 lt!582604 minValue!1387))) (Some!754 (_2!11384 (tuple2!22749 lt!582604 minValue!1387))))))

(assert (=> d!141459 (= lt!582704 (lemmaContainsTupThenGetReturnValue!348 lt!582702 (_1!11384 (tuple2!22749 lt!582604 minValue!1387)) (_2!11384 (tuple2!22749 lt!582604 minValue!1387))))))

(assert (=> d!141459 (= lt!582702 (insertStrictlySorted!477 (toList!10224 lt!582599) (_1!11384 (tuple2!22749 lt!582604 minValue!1387)) (_2!11384 (tuple2!22749 lt!582604 minValue!1387))))))

(assert (=> d!141459 (= (+!4445 lt!582599 (tuple2!22749 lt!582604 minValue!1387)) lt!582705)))

(declare-fun b!1302531 () Bool)

(declare-fun res!865252 () Bool)

(assert (=> b!1302531 (=> (not res!865252) (not e!742980))))

(assert (=> b!1302531 (= res!865252 (= (getValueByKey!704 (toList!10224 lt!582705) (_1!11384 (tuple2!22749 lt!582604 minValue!1387))) (Some!754 (_2!11384 (tuple2!22749 lt!582604 minValue!1387)))))))

(declare-fun b!1302532 () Bool)

(assert (=> b!1302532 (= e!742980 (contains!8291 (toList!10224 lt!582705) (tuple2!22749 lt!582604 minValue!1387)))))

(assert (= (and d!141459 res!865251) b!1302531))

(assert (= (and b!1302531 res!865252) b!1302532))

(declare-fun m!1193439 () Bool)

(assert (=> d!141459 m!1193439))

(declare-fun m!1193441 () Bool)

(assert (=> d!141459 m!1193441))

(declare-fun m!1193443 () Bool)

(assert (=> d!141459 m!1193443))

(declare-fun m!1193445 () Bool)

(assert (=> d!141459 m!1193445))

(declare-fun m!1193447 () Bool)

(assert (=> b!1302531 m!1193447))

(declare-fun m!1193449 () Bool)

(assert (=> b!1302532 m!1193449))

(assert (=> b!1302392 d!141459))

(declare-fun d!141461 () Bool)

(declare-fun e!742981 () Bool)

(assert (=> d!141461 e!742981))

(declare-fun res!865253 () Bool)

(assert (=> d!141461 (=> (not res!865253) (not e!742981))))

(declare-fun lt!582709 () ListLongMap!20417)

(assert (=> d!141461 (= res!865253 (contains!8289 lt!582709 (_1!11384 (tuple2!22749 lt!582607 zeroValue!1387))))))

(declare-fun lt!582706 () List!29900)

(assert (=> d!141461 (= lt!582709 (ListLongMap!20418 lt!582706))))

(declare-fun lt!582707 () Unit!43057)

(declare-fun lt!582708 () Unit!43057)

(assert (=> d!141461 (= lt!582707 lt!582708)))

(assert (=> d!141461 (= (getValueByKey!704 lt!582706 (_1!11384 (tuple2!22749 lt!582607 zeroValue!1387))) (Some!754 (_2!11384 (tuple2!22749 lt!582607 zeroValue!1387))))))

(assert (=> d!141461 (= lt!582708 (lemmaContainsTupThenGetReturnValue!348 lt!582706 (_1!11384 (tuple2!22749 lt!582607 zeroValue!1387)) (_2!11384 (tuple2!22749 lt!582607 zeroValue!1387))))))

(assert (=> d!141461 (= lt!582706 (insertStrictlySorted!477 (toList!10224 lt!582597) (_1!11384 (tuple2!22749 lt!582607 zeroValue!1387)) (_2!11384 (tuple2!22749 lt!582607 zeroValue!1387))))))

(assert (=> d!141461 (= (+!4445 lt!582597 (tuple2!22749 lt!582607 zeroValue!1387)) lt!582709)))

(declare-fun b!1302533 () Bool)

(declare-fun res!865254 () Bool)

(assert (=> b!1302533 (=> (not res!865254) (not e!742981))))

(assert (=> b!1302533 (= res!865254 (= (getValueByKey!704 (toList!10224 lt!582709) (_1!11384 (tuple2!22749 lt!582607 zeroValue!1387))) (Some!754 (_2!11384 (tuple2!22749 lt!582607 zeroValue!1387)))))))

(declare-fun b!1302534 () Bool)

(assert (=> b!1302534 (= e!742981 (contains!8291 (toList!10224 lt!582709) (tuple2!22749 lt!582607 zeroValue!1387)))))

(assert (= (and d!141461 res!865253) b!1302533))

(assert (= (and b!1302533 res!865254) b!1302534))

(declare-fun m!1193451 () Bool)

(assert (=> d!141461 m!1193451))

(declare-fun m!1193453 () Bool)

(assert (=> d!141461 m!1193453))

(declare-fun m!1193455 () Bool)

(assert (=> d!141461 m!1193455))

(declare-fun m!1193457 () Bool)

(assert (=> d!141461 m!1193457))

(declare-fun m!1193459 () Bool)

(assert (=> b!1302533 m!1193459))

(declare-fun m!1193461 () Bool)

(assert (=> b!1302534 m!1193461))

(assert (=> b!1302392 d!141461))

(assert (=> b!1302392 d!141359))

(declare-fun d!141463 () Bool)

(assert (=> d!141463 (= (apply!1054 (+!4445 lt!582597 (tuple2!22749 lt!582607 zeroValue!1387)) lt!582594) (get!21187 (getValueByKey!704 (toList!10224 (+!4445 lt!582597 (tuple2!22749 lt!582607 zeroValue!1387))) lt!582594)))))

(declare-fun bs!37095 () Bool)

(assert (= bs!37095 d!141463))

(declare-fun m!1193463 () Bool)

(assert (=> bs!37095 m!1193463))

(assert (=> bs!37095 m!1193463))

(declare-fun m!1193465 () Bool)

(assert (=> bs!37095 m!1193465))

(assert (=> b!1302392 d!141463))

(declare-fun d!141465 () Bool)

(assert (=> d!141465 (= (apply!1054 (+!4445 lt!582599 (tuple2!22749 lt!582604 minValue!1387)) lt!582606) (apply!1054 lt!582599 lt!582606))))

(declare-fun lt!582710 () Unit!43057)

(assert (=> d!141465 (= lt!582710 (choose!1925 lt!582599 lt!582604 minValue!1387 lt!582606))))

(declare-fun e!742982 () Bool)

(assert (=> d!141465 e!742982))

(declare-fun res!865255 () Bool)

(assert (=> d!141465 (=> (not res!865255) (not e!742982))))

(assert (=> d!141465 (= res!865255 (contains!8289 lt!582599 lt!582606))))

(assert (=> d!141465 (= (addApplyDifferent!557 lt!582599 lt!582604 minValue!1387 lt!582606) lt!582710)))

(declare-fun b!1302535 () Bool)

(assert (=> b!1302535 (= e!742982 (not (= lt!582606 lt!582604)))))

(assert (= (and d!141465 res!865255) b!1302535))

(assert (=> d!141465 m!1193171))

(declare-fun m!1193467 () Bool)

(assert (=> d!141465 m!1193467))

(assert (=> d!141465 m!1193171))

(assert (=> d!141465 m!1193187))

(declare-fun m!1193469 () Bool)

(assert (=> d!141465 m!1193469))

(assert (=> d!141465 m!1193183))

(assert (=> b!1302392 d!141465))

(declare-fun d!141467 () Bool)

(assert (=> d!141467 (= (apply!1054 (+!4445 lt!582592 (tuple2!22749 lt!582596 minValue!1387)) lt!582601) (apply!1054 lt!582592 lt!582601))))

(declare-fun lt!582711 () Unit!43057)

(assert (=> d!141467 (= lt!582711 (choose!1925 lt!582592 lt!582596 minValue!1387 lt!582601))))

(declare-fun e!742983 () Bool)

(assert (=> d!141467 e!742983))

(declare-fun res!865256 () Bool)

(assert (=> d!141467 (=> (not res!865256) (not e!742983))))

(assert (=> d!141467 (= res!865256 (contains!8289 lt!582592 lt!582601))))

(assert (=> d!141467 (= (addApplyDifferent!557 lt!582592 lt!582596 minValue!1387 lt!582601) lt!582711)))

(declare-fun b!1302536 () Bool)

(assert (=> b!1302536 (= e!742983 (not (= lt!582601 lt!582596)))))

(assert (= (and d!141467 res!865256) b!1302536))

(assert (=> d!141467 m!1193185))

(declare-fun m!1193471 () Bool)

(assert (=> d!141467 m!1193471))

(assert (=> d!141467 m!1193185))

(assert (=> d!141467 m!1193191))

(declare-fun m!1193473 () Bool)

(assert (=> d!141467 m!1193473))

(assert (=> d!141467 m!1193175))

(assert (=> b!1302392 d!141467))

(declare-fun d!141469 () Bool)

(declare-fun e!742984 () Bool)

(assert (=> d!141469 e!742984))

(declare-fun res!865257 () Bool)

(assert (=> d!141469 (=> (not res!865257) (not e!742984))))

(declare-fun lt!582715 () ListLongMap!20417)

(assert (=> d!141469 (= res!865257 (contains!8289 lt!582715 (_1!11384 (tuple2!22749 lt!582596 minValue!1387))))))

(declare-fun lt!582712 () List!29900)

(assert (=> d!141469 (= lt!582715 (ListLongMap!20418 lt!582712))))

(declare-fun lt!582713 () Unit!43057)

(declare-fun lt!582714 () Unit!43057)

(assert (=> d!141469 (= lt!582713 lt!582714)))

(assert (=> d!141469 (= (getValueByKey!704 lt!582712 (_1!11384 (tuple2!22749 lt!582596 minValue!1387))) (Some!754 (_2!11384 (tuple2!22749 lt!582596 minValue!1387))))))

(assert (=> d!141469 (= lt!582714 (lemmaContainsTupThenGetReturnValue!348 lt!582712 (_1!11384 (tuple2!22749 lt!582596 minValue!1387)) (_2!11384 (tuple2!22749 lt!582596 minValue!1387))))))

(assert (=> d!141469 (= lt!582712 (insertStrictlySorted!477 (toList!10224 lt!582592) (_1!11384 (tuple2!22749 lt!582596 minValue!1387)) (_2!11384 (tuple2!22749 lt!582596 minValue!1387))))))

(assert (=> d!141469 (= (+!4445 lt!582592 (tuple2!22749 lt!582596 minValue!1387)) lt!582715)))

(declare-fun b!1302537 () Bool)

(declare-fun res!865258 () Bool)

(assert (=> b!1302537 (=> (not res!865258) (not e!742984))))

(assert (=> b!1302537 (= res!865258 (= (getValueByKey!704 (toList!10224 lt!582715) (_1!11384 (tuple2!22749 lt!582596 minValue!1387))) (Some!754 (_2!11384 (tuple2!22749 lt!582596 minValue!1387)))))))

(declare-fun b!1302538 () Bool)

(assert (=> b!1302538 (= e!742984 (contains!8291 (toList!10224 lt!582715) (tuple2!22749 lt!582596 minValue!1387)))))

(assert (= (and d!141469 res!865257) b!1302537))

(assert (= (and b!1302537 res!865258) b!1302538))

(declare-fun m!1193475 () Bool)

(assert (=> d!141469 m!1193475))

(declare-fun m!1193477 () Bool)

(assert (=> d!141469 m!1193477))

(declare-fun m!1193479 () Bool)

(assert (=> d!141469 m!1193479))

(declare-fun m!1193481 () Bool)

(assert (=> d!141469 m!1193481))

(declare-fun m!1193483 () Bool)

(assert (=> b!1302537 m!1193483))

(declare-fun m!1193485 () Bool)

(assert (=> b!1302538 m!1193485))

(assert (=> b!1302392 d!141469))

(assert (=> b!1302315 d!141351))

(declare-fun d!141471 () Bool)

(declare-fun e!742985 () Bool)

(assert (=> d!141471 e!742985))

(declare-fun res!865259 () Bool)

(assert (=> d!141471 (=> (not res!865259) (not e!742985))))

(declare-fun lt!582719 () ListLongMap!20417)

(assert (=> d!141471 (= res!865259 (contains!8289 lt!582719 (_1!11384 (ite (or c!124917 c!124921) (tuple2!22749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun lt!582716 () List!29900)

(assert (=> d!141471 (= lt!582719 (ListLongMap!20418 lt!582716))))

(declare-fun lt!582717 () Unit!43057)

(declare-fun lt!582718 () Unit!43057)

(assert (=> d!141471 (= lt!582717 lt!582718)))

(assert (=> d!141471 (= (getValueByKey!704 lt!582716 (_1!11384 (ite (or c!124917 c!124921) (tuple2!22749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (Some!754 (_2!11384 (ite (or c!124917 c!124921) (tuple2!22749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (=> d!141471 (= lt!582718 (lemmaContainsTupThenGetReturnValue!348 lt!582716 (_1!11384 (ite (or c!124917 c!124921) (tuple2!22749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (_2!11384 (ite (or c!124917 c!124921) (tuple2!22749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (=> d!141471 (= lt!582716 (insertStrictlySorted!477 (toList!10224 (ite c!124917 call!64136 (ite c!124921 call!64135 call!64134))) (_1!11384 (ite (or c!124917 c!124921) (tuple2!22749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (_2!11384 (ite (or c!124917 c!124921) (tuple2!22749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (=> d!141471 (= (+!4445 (ite c!124917 call!64136 (ite c!124921 call!64135 call!64134)) (ite (or c!124917 c!124921) (tuple2!22749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) lt!582719)))

(declare-fun b!1302539 () Bool)

(declare-fun res!865260 () Bool)

(assert (=> b!1302539 (=> (not res!865260) (not e!742985))))

(assert (=> b!1302539 (= res!865260 (= (getValueByKey!704 (toList!10224 lt!582719) (_1!11384 (ite (or c!124917 c!124921) (tuple2!22749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (Some!754 (_2!11384 (ite (or c!124917 c!124921) (tuple2!22749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(declare-fun b!1302540 () Bool)

(assert (=> b!1302540 (= e!742985 (contains!8291 (toList!10224 lt!582719) (ite (or c!124917 c!124921) (tuple2!22749 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22749 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (= (and d!141471 res!865259) b!1302539))

(assert (= (and b!1302539 res!865260) b!1302540))

(declare-fun m!1193487 () Bool)

(assert (=> d!141471 m!1193487))

(declare-fun m!1193489 () Bool)

(assert (=> d!141471 m!1193489))

(declare-fun m!1193491 () Bool)

(assert (=> d!141471 m!1193491))

(declare-fun m!1193493 () Bool)

(assert (=> d!141471 m!1193493))

(declare-fun m!1193495 () Bool)

(assert (=> b!1302539 m!1193495))

(declare-fun m!1193497 () Bool)

(assert (=> b!1302540 m!1193497))

(assert (=> bm!64130 d!141471))

(assert (=> b!1302284 d!141433))

(assert (=> b!1302284 d!141435))

(assert (=> b!1302319 d!141413))

(assert (=> bm!64131 d!141359))

(assert (=> b!1302412 d!141375))

(declare-fun d!141473 () Bool)

(declare-fun res!865261 () Bool)

(declare-fun e!742986 () Bool)

(assert (=> d!141473 (=> res!865261 e!742986)))

(assert (=> d!141473 (= res!865261 (and ((_ is Cons!29896) (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11384 (h!31105 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(assert (=> d!141473 (= (containsKey!722 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!742986)))

(declare-fun b!1302541 () Bool)

(declare-fun e!742987 () Bool)

(assert (=> b!1302541 (= e!742986 e!742987)))

(declare-fun res!865262 () Bool)

(assert (=> b!1302541 (=> (not res!865262) (not e!742987))))

(assert (=> b!1302541 (= res!865262 (and (or (not ((_ is Cons!29896) (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) (bvsle (_1!11384 (h!31105 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)) ((_ is Cons!29896) (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (bvslt (_1!11384 (h!31105 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(declare-fun b!1302542 () Bool)

(assert (=> b!1302542 (= e!742987 (containsKey!722 (t!43495 (toList!10224 (getCurrentListMap!5189 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(assert (= (and d!141473 (not res!865261)) b!1302541))

(assert (= (and b!1302541 res!865262) b!1302542))

(declare-fun m!1193499 () Bool)

(assert (=> b!1302542 m!1193499))

(assert (=> d!141363 d!141473))

(declare-fun bm!64139 () Bool)

(declare-fun call!64142 () Bool)

(assert (=> bm!64139 (= call!64142 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1302543 () Bool)

(declare-fun e!742989 () Bool)

(declare-fun e!742990 () Bool)

(assert (=> b!1302543 (= e!742989 e!742990)))

(declare-fun c!124951 () Bool)

(assert (=> b!1302543 (= c!124951 (validKeyInArray!0 (select (arr!41852 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1302544 () Bool)

(assert (=> b!1302544 (= e!742990 call!64142)))

(declare-fun b!1302545 () Bool)

(declare-fun e!742988 () Bool)

(assert (=> b!1302545 (= e!742988 call!64142)))

(declare-fun b!1302546 () Bool)

(assert (=> b!1302546 (= e!742990 e!742988)))

(declare-fun lt!582720 () (_ BitVec 64))

(assert (=> b!1302546 (= lt!582720 (select (arr!41852 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!582721 () Unit!43057)

(assert (=> b!1302546 (= lt!582721 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!582720 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1302546 (arrayContainsKey!0 _keys!1741 lt!582720 #b00000000000000000000000000000000)))

(declare-fun lt!582722 () Unit!43057)

(assert (=> b!1302546 (= lt!582722 lt!582721)))

(declare-fun res!865263 () Bool)

(assert (=> b!1302546 (= res!865263 (= (seekEntryOrOpen!0 (select (arr!41852 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1741 mask!2175) (Found!10019 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1302546 (=> (not res!865263) (not e!742988))))

(declare-fun d!141475 () Bool)

(declare-fun res!865264 () Bool)

(assert (=> d!141475 (=> res!865264 e!742989)))

(assert (=> d!141475 (= res!865264 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!42403 _keys!1741)))))

(assert (=> d!141475 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175) e!742989)))

(assert (= (and d!141475 (not res!865264)) b!1302543))

(assert (= (and b!1302543 c!124951) b!1302546))

(assert (= (and b!1302543 (not c!124951)) b!1302544))

(assert (= (and b!1302546 res!865263) b!1302545))

(assert (= (or b!1302545 b!1302544) bm!64139))

(declare-fun m!1193501 () Bool)

(assert (=> bm!64139 m!1193501))

(assert (=> b!1302543 m!1193273))

(assert (=> b!1302543 m!1193273))

(assert (=> b!1302543 m!1193275))

(assert (=> b!1302546 m!1193273))

(declare-fun m!1193503 () Bool)

(assert (=> b!1302546 m!1193503))

(declare-fun m!1193505 () Bool)

(assert (=> b!1302546 m!1193505))

(assert (=> b!1302546 m!1193273))

(declare-fun m!1193507 () Bool)

(assert (=> b!1302546 m!1193507))

(assert (=> bm!64136 d!141475))

(assert (=> d!141365 d!141369))

(declare-fun d!141477 () Bool)

(assert (=> d!141477 (arrayContainsKey!0 _keys!1741 lt!582619 #b00000000000000000000000000000000)))

(declare-fun lt!582725 () Unit!43057)

(declare-fun choose!13 (array!86725 (_ BitVec 64) (_ BitVec 32)) Unit!43057)

(assert (=> d!141477 (= lt!582725 (choose!13 _keys!1741 lt!582619 #b00000000000000000000000000000000))))

(assert (=> d!141477 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!141477 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!582619 #b00000000000000000000000000000000) lt!582725)))

(declare-fun bs!37096 () Bool)

(assert (= bs!37096 d!141477))

(assert (=> bs!37096 m!1193205))

(declare-fun m!1193509 () Bool)

(assert (=> bs!37096 m!1193509))

(assert (=> b!1302415 d!141477))

(declare-fun d!141479 () Bool)

(declare-fun res!865269 () Bool)

(declare-fun e!742995 () Bool)

(assert (=> d!141479 (=> res!865269 e!742995)))

(assert (=> d!141479 (= res!865269 (= (select (arr!41852 _keys!1741) #b00000000000000000000000000000000) lt!582619))))

(assert (=> d!141479 (= (arrayContainsKey!0 _keys!1741 lt!582619 #b00000000000000000000000000000000) e!742995)))

(declare-fun b!1302551 () Bool)

(declare-fun e!742996 () Bool)

(assert (=> b!1302551 (= e!742995 e!742996)))

(declare-fun res!865270 () Bool)

(assert (=> b!1302551 (=> (not res!865270) (not e!742996))))

(assert (=> b!1302551 (= res!865270 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!42403 _keys!1741)))))

(declare-fun b!1302552 () Bool)

(assert (=> b!1302552 (= e!742996 (arrayContainsKey!0 _keys!1741 lt!582619 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!141479 (not res!865269)) b!1302551))

(assert (= (and b!1302551 res!865270) b!1302552))

(assert (=> d!141479 m!1193139))

(declare-fun m!1193511 () Bool)

(assert (=> b!1302552 m!1193511))

(assert (=> b!1302415 d!141479))

(declare-fun b!1302565 () Bool)

(declare-fun e!743003 () SeekEntryResult!10019)

(declare-fun lt!582734 () SeekEntryResult!10019)

(assert (=> b!1302565 (= e!743003 (MissingZero!10019 (index!42448 lt!582734)))))

(declare-fun d!141481 () Bool)

(declare-fun lt!582732 () SeekEntryResult!10019)

(assert (=> d!141481 (and (or ((_ is Undefined!10019) lt!582732) (not ((_ is Found!10019) lt!582732)) (and (bvsge (index!42447 lt!582732) #b00000000000000000000000000000000) (bvslt (index!42447 lt!582732) (size!42403 _keys!1741)))) (or ((_ is Undefined!10019) lt!582732) ((_ is Found!10019) lt!582732) (not ((_ is MissingZero!10019) lt!582732)) (and (bvsge (index!42446 lt!582732) #b00000000000000000000000000000000) (bvslt (index!42446 lt!582732) (size!42403 _keys!1741)))) (or ((_ is Undefined!10019) lt!582732) ((_ is Found!10019) lt!582732) ((_ is MissingZero!10019) lt!582732) (not ((_ is MissingVacant!10019) lt!582732)) (and (bvsge (index!42449 lt!582732) #b00000000000000000000000000000000) (bvslt (index!42449 lt!582732) (size!42403 _keys!1741)))) (or ((_ is Undefined!10019) lt!582732) (ite ((_ is Found!10019) lt!582732) (= (select (arr!41852 _keys!1741) (index!42447 lt!582732)) (select (arr!41852 _keys!1741) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10019) lt!582732) (= (select (arr!41852 _keys!1741) (index!42446 lt!582732)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10019) lt!582732) (= (select (arr!41852 _keys!1741) (index!42449 lt!582732)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!743005 () SeekEntryResult!10019)

(assert (=> d!141481 (= lt!582732 e!743005)))

(declare-fun c!124960 () Bool)

(assert (=> d!141481 (= c!124960 (and ((_ is Intermediate!10019) lt!582734) (undefined!10831 lt!582734)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!86725 (_ BitVec 32)) SeekEntryResult!10019)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!141481 (= lt!582734 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000) mask!2175) (select (arr!41852 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175))))

(assert (=> d!141481 (validMask!0 mask!2175)))

(assert (=> d!141481 (= (seekEntryOrOpen!0 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) lt!582732)))

(declare-fun b!1302566 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!86725 (_ BitVec 32)) SeekEntryResult!10019)

(assert (=> b!1302566 (= e!743003 (seekKeyOrZeroReturnVacant!0 (x!115668 lt!582734) (index!42448 lt!582734) (index!42448 lt!582734) (select (arr!41852 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175))))

(declare-fun b!1302567 () Bool)

(declare-fun c!124959 () Bool)

(declare-fun lt!582733 () (_ BitVec 64))

(assert (=> b!1302567 (= c!124959 (= lt!582733 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!743004 () SeekEntryResult!10019)

(assert (=> b!1302567 (= e!743004 e!743003)))

(declare-fun b!1302568 () Bool)

(assert (=> b!1302568 (= e!743005 e!743004)))

(assert (=> b!1302568 (= lt!582733 (select (arr!41852 _keys!1741) (index!42448 lt!582734)))))

(declare-fun c!124958 () Bool)

(assert (=> b!1302568 (= c!124958 (= lt!582733 (select (arr!41852 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1302569 () Bool)

(assert (=> b!1302569 (= e!743004 (Found!10019 (index!42448 lt!582734)))))

(declare-fun b!1302570 () Bool)

(assert (=> b!1302570 (= e!743005 Undefined!10019)))

(assert (= (and d!141481 c!124960) b!1302570))

(assert (= (and d!141481 (not c!124960)) b!1302568))

(assert (= (and b!1302568 c!124958) b!1302569))

(assert (= (and b!1302568 (not c!124958)) b!1302567))

(assert (= (and b!1302567 c!124959) b!1302565))

(assert (= (and b!1302567 (not c!124959)) b!1302566))

(assert (=> d!141481 m!1193057))

(assert (=> d!141481 m!1193139))

(declare-fun m!1193513 () Bool)

(assert (=> d!141481 m!1193513))

(declare-fun m!1193515 () Bool)

(assert (=> d!141481 m!1193515))

(assert (=> d!141481 m!1193513))

(assert (=> d!141481 m!1193139))

(declare-fun m!1193517 () Bool)

(assert (=> d!141481 m!1193517))

(declare-fun m!1193519 () Bool)

(assert (=> d!141481 m!1193519))

(declare-fun m!1193521 () Bool)

(assert (=> d!141481 m!1193521))

(assert (=> b!1302566 m!1193139))

(declare-fun m!1193523 () Bool)

(assert (=> b!1302566 m!1193523))

(declare-fun m!1193525 () Bool)

(assert (=> b!1302568 m!1193525))

(assert (=> b!1302415 d!141481))

(declare-fun b!1302572 () Bool)

(declare-fun e!743007 () Bool)

(assert (=> b!1302572 (= e!743007 tp_is_empty!34875)))

(declare-fun b!1302571 () Bool)

(declare-fun e!743006 () Bool)

(assert (=> b!1302571 (= e!743006 tp_is_empty!34875)))

(declare-fun mapNonEmpty!53902 () Bool)

(declare-fun mapRes!53902 () Bool)

(declare-fun tp!102857 () Bool)

(assert (=> mapNonEmpty!53902 (= mapRes!53902 (and tp!102857 e!743006))))

(declare-fun mapKey!53902 () (_ BitVec 32))

(declare-fun mapRest!53902 () (Array (_ BitVec 32) ValueCell!16539))

(declare-fun mapValue!53902 () ValueCell!16539)

(assert (=> mapNonEmpty!53902 (= mapRest!53901 (store mapRest!53902 mapKey!53902 mapValue!53902))))

(declare-fun mapIsEmpty!53902 () Bool)

(assert (=> mapIsEmpty!53902 mapRes!53902))

(declare-fun condMapEmpty!53902 () Bool)

(declare-fun mapDefault!53902 () ValueCell!16539)

(assert (=> mapNonEmpty!53901 (= condMapEmpty!53902 (= mapRest!53901 ((as const (Array (_ BitVec 32) ValueCell!16539)) mapDefault!53902)))))

(assert (=> mapNonEmpty!53901 (= tp!102856 (and e!743007 mapRes!53902))))

(assert (= (and mapNonEmpty!53901 condMapEmpty!53902) mapIsEmpty!53902))

(assert (= (and mapNonEmpty!53901 (not condMapEmpty!53902)) mapNonEmpty!53902))

(assert (= (and mapNonEmpty!53902 ((_ is ValueCellFull!16539) mapValue!53902)) b!1302571))

(assert (= (and mapNonEmpty!53901 ((_ is ValueCellFull!16539) mapDefault!53902)) b!1302572))

(declare-fun m!1193527 () Bool)

(assert (=> mapNonEmpty!53902 m!1193527))

(declare-fun b_lambda!23257 () Bool)

(assert (= b_lambda!23253 (or (and start!109972 b_free!29235) b_lambda!23257)))

(declare-fun b_lambda!23259 () Bool)

(assert (= b_lambda!23255 (or (and start!109972 b_free!29235) b_lambda!23259)))

(check-sat (not b!1302521) (not b!1302516) (not d!141409) (not d!141387) (not b!1302457) (not b!1302491) (not d!141393) (not b!1302446) (not b!1302478) (not d!141395) (not b!1302507) (not d!141399) (not b!1302485) (not mapNonEmpty!53902) (not b!1302498) (not d!141439) (not b!1302469) (not b!1302483) (not d!141455) (not b!1302502) (not d!141425) (not d!141451) (not b!1302496) (not b!1302552) (not bm!64139) (not d!141477) (not b!1302534) (not d!141419) (not d!141427) (not b_lambda!23259) (not d!141471) (not b!1302538) (not b!1302468) (not b!1302453) (not b!1302542) b_and!47399 (not d!141407) (not d!141443) (not d!141481) (not d!141413) (not d!141437) (not d!141379) (not b!1302546) (not b!1302523) (not d!141467) (not b!1302530) (not d!141453) (not b_lambda!23247) (not b!1302543) (not bm!64137) (not b!1302529) (not b_lambda!23257) (not b!1302540) (not d!141377) (not b!1302512) (not d!141391) (not b!1302439) (not d!141463) (not b!1302465) (not d!141447) (not d!141445) (not b!1302454) (not b!1302426) (not b!1302510) (not b_next!29235) (not b!1302519) (not b!1302515) (not d!141431) (not d!141465) (not b!1302500) (not b!1302501) (not b!1302481) (not b!1302492) (not b!1302486) (not d!141461) (not b!1302566) (not b!1302497) (not d!141423) (not d!141469) (not b!1302447) (not b!1302471) (not d!141383) (not b!1302532) (not bm!64138) (not d!141417) (not b!1302531) (not b!1302533) (not d!141385) (not b_lambda!23249) (not b!1302441) (not b!1302437) (not d!141459) (not d!141401) (not b!1302464) (not b_lambda!23251) (not d!141441) (not b!1302509) (not b!1302467) (not b!1302537) (not d!141457) (not b!1302539) (not b!1302490) (not d!141415) (not b!1302487) (not b!1302479) (not d!141421) (not d!141429) (not b!1302488) (not d!141449) tp_is_empty!34875 (not b!1302513) (not b!1302463) (not b!1302494) (not d!141433))
(check-sat b_and!47399 (not b_next!29235))
