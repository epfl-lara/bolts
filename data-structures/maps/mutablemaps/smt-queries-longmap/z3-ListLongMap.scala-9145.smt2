; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109728 () Bool)

(assert start!109728)

(declare-fun b_free!29145 () Bool)

(declare-fun b_next!29145 () Bool)

(assert (=> start!109728 (= b_free!29145 (not b_next!29145))))

(declare-fun tp!102560 () Bool)

(declare-fun b_and!47251 () Bool)

(assert (=> start!109728 (= tp!102560 b_and!47251)))

(declare-fun b!1299202 () Bool)

(declare-fun res!863483 () Bool)

(declare-fun e!741219 () Bool)

(assert (=> b!1299202 (=> (not res!863483) (not e!741219))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1299202 (= res!863483 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1299203 () Bool)

(declare-fun e!741222 () Bool)

(declare-fun tp_is_empty!34785 () Bool)

(assert (=> b!1299203 (= e!741222 tp_is_empty!34785)))

(declare-fun b!1299204 () Bool)

(declare-fun res!863476 () Bool)

(assert (=> b!1299204 (=> (not res!863476) (not e!741219))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86541 0))(
  ( (array!86542 (arr!41765 (Array (_ BitVec 32) (_ BitVec 64))) (size!42316 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86541)

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1299204 (= res!863476 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42316 _keys!1741))))))

(declare-fun b!1299205 () Bool)

(declare-fun res!863481 () Bool)

(assert (=> b!1299205 (=> (not res!863481) (not e!741219))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86541 (_ BitVec 32)) Bool)

(assert (=> b!1299205 (= res!863481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!53744 () Bool)

(declare-fun mapRes!53744 () Bool)

(assert (=> mapIsEmpty!53744 mapRes!53744))

(declare-fun b!1299206 () Bool)

(declare-fun res!863482 () Bool)

(assert (=> b!1299206 (=> (not res!863482) (not e!741219))))

(assert (=> b!1299206 (= res!863482 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42316 _keys!1741))))))

(declare-fun b!1299207 () Bool)

(declare-fun res!863484 () Bool)

(assert (=> b!1299207 (=> (not res!863484) (not e!741219))))

(declare-datatypes ((V!51483 0))(
  ( (V!51484 (val!17467 Int)) )
))
(declare-fun minValue!1387 () V!51483)

(declare-fun zeroValue!1387 () V!51483)

(declare-datatypes ((ValueCell!16494 0))(
  ( (ValueCellFull!16494 (v!20070 V!51483)) (EmptyCell!16494) )
))
(declare-datatypes ((array!86543 0))(
  ( (array!86544 (arr!41766 (Array (_ BitVec 32) ValueCell!16494)) (size!42317 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86543)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22672 0))(
  ( (tuple2!22673 (_1!11346 (_ BitVec 64)) (_2!11346 V!51483)) )
))
(declare-datatypes ((List!29832 0))(
  ( (Nil!29829) (Cons!29828 (h!31037 tuple2!22672) (t!43407 List!29832)) )
))
(declare-datatypes ((ListLongMap!20341 0))(
  ( (ListLongMap!20342 (toList!10186 List!29832)) )
))
(declare-fun contains!8242 (ListLongMap!20341 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5160 (array!86541 array!86543 (_ BitVec 32) (_ BitVec 32) V!51483 V!51483 (_ BitVec 32) Int) ListLongMap!20341)

(assert (=> b!1299207 (= res!863484 (contains!8242 (getCurrentListMap!5160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1299208 () Bool)

(declare-fun res!863479 () Bool)

(assert (=> b!1299208 (=> (not res!863479) (not e!741219))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1299208 (= res!863479 (validKeyInArray!0 (select (arr!41765 _keys!1741) from!2144)))))

(declare-fun b!1299210 () Bool)

(declare-fun e!741221 () Bool)

(assert (=> b!1299210 (= e!741221 (and e!741222 mapRes!53744))))

(declare-fun condMapEmpty!53744 () Bool)

(declare-fun mapDefault!53744 () ValueCell!16494)

(assert (=> b!1299210 (= condMapEmpty!53744 (= (arr!41766 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16494)) mapDefault!53744)))))

(declare-fun mapNonEmpty!53744 () Bool)

(declare-fun tp!102561 () Bool)

(declare-fun e!741218 () Bool)

(assert (=> mapNonEmpty!53744 (= mapRes!53744 (and tp!102561 e!741218))))

(declare-fun mapRest!53744 () (Array (_ BitVec 32) ValueCell!16494))

(declare-fun mapKey!53744 () (_ BitVec 32))

(declare-fun mapValue!53744 () ValueCell!16494)

(assert (=> mapNonEmpty!53744 (= (arr!41766 _values!1445) (store mapRest!53744 mapKey!53744 mapValue!53744))))

(declare-fun b!1299211 () Bool)

(declare-fun res!863477 () Bool)

(assert (=> b!1299211 (=> (not res!863477) (not e!741219))))

(declare-datatypes ((List!29833 0))(
  ( (Nil!29830) (Cons!29829 (h!31038 (_ BitVec 64)) (t!43408 List!29833)) )
))
(declare-fun arrayNoDuplicates!0 (array!86541 (_ BitVec 32) List!29833) Bool)

(assert (=> b!1299211 (= res!863477 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29830))))

(declare-fun b!1299212 () Bool)

(assert (=> b!1299212 (= e!741218 tp_is_empty!34785)))

(declare-fun b!1299213 () Bool)

(declare-fun +!4418 (ListLongMap!20341 tuple2!22672) ListLongMap!20341)

(declare-fun getCurrentListMapNoExtraKeys!6131 (array!86541 array!86543 (_ BitVec 32) (_ BitVec 32) V!51483 V!51483 (_ BitVec 32) Int) ListLongMap!20341)

(assert (=> b!1299213 (= e!741219 (not (contains!8242 (+!4418 (+!4418 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205)))))

(declare-fun res!863480 () Bool)

(assert (=> start!109728 (=> (not res!863480) (not e!741219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109728 (= res!863480 (validMask!0 mask!2175))))

(assert (=> start!109728 e!741219))

(assert (=> start!109728 tp_is_empty!34785))

(assert (=> start!109728 true))

(declare-fun array_inv!31601 (array!86543) Bool)

(assert (=> start!109728 (and (array_inv!31601 _values!1445) e!741221)))

(declare-fun array_inv!31602 (array!86541) Bool)

(assert (=> start!109728 (array_inv!31602 _keys!1741)))

(assert (=> start!109728 tp!102560))

(declare-fun b!1299209 () Bool)

(declare-fun res!863478 () Bool)

(assert (=> b!1299209 (=> (not res!863478) (not e!741219))))

(assert (=> b!1299209 (= res!863478 (and (= (size!42317 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42316 _keys!1741) (size!42317 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!109728 res!863480) b!1299209))

(assert (= (and b!1299209 res!863478) b!1299205))

(assert (= (and b!1299205 res!863481) b!1299211))

(assert (= (and b!1299211 res!863477) b!1299206))

(assert (= (and b!1299206 res!863482) b!1299207))

(assert (= (and b!1299207 res!863484) b!1299204))

(assert (= (and b!1299204 res!863476) b!1299208))

(assert (= (and b!1299208 res!863479) b!1299202))

(assert (= (and b!1299202 res!863483) b!1299213))

(assert (= (and b!1299210 condMapEmpty!53744) mapIsEmpty!53744))

(assert (= (and b!1299210 (not condMapEmpty!53744)) mapNonEmpty!53744))

(get-info :version)

(assert (= (and mapNonEmpty!53744 ((_ is ValueCellFull!16494) mapValue!53744)) b!1299212))

(assert (= (and b!1299210 ((_ is ValueCellFull!16494) mapDefault!53744)) b!1299203))

(assert (= start!109728 b!1299210))

(declare-fun m!1190441 () Bool)

(assert (=> b!1299211 m!1190441))

(declare-fun m!1190443 () Bool)

(assert (=> b!1299213 m!1190443))

(assert (=> b!1299213 m!1190443))

(declare-fun m!1190445 () Bool)

(assert (=> b!1299213 m!1190445))

(assert (=> b!1299213 m!1190445))

(declare-fun m!1190447 () Bool)

(assert (=> b!1299213 m!1190447))

(assert (=> b!1299213 m!1190447))

(declare-fun m!1190449 () Bool)

(assert (=> b!1299213 m!1190449))

(declare-fun m!1190451 () Bool)

(assert (=> start!109728 m!1190451))

(declare-fun m!1190453 () Bool)

(assert (=> start!109728 m!1190453))

(declare-fun m!1190455 () Bool)

(assert (=> start!109728 m!1190455))

(declare-fun m!1190457 () Bool)

(assert (=> b!1299207 m!1190457))

(assert (=> b!1299207 m!1190457))

(declare-fun m!1190459 () Bool)

(assert (=> b!1299207 m!1190459))

(declare-fun m!1190461 () Bool)

(assert (=> mapNonEmpty!53744 m!1190461))

(declare-fun m!1190463 () Bool)

(assert (=> b!1299208 m!1190463))

(assert (=> b!1299208 m!1190463))

(declare-fun m!1190465 () Bool)

(assert (=> b!1299208 m!1190465))

(declare-fun m!1190467 () Bool)

(assert (=> b!1299205 m!1190467))

(check-sat (not mapNonEmpty!53744) b_and!47251 tp_is_empty!34785 (not b!1299207) (not b!1299213) (not start!109728) (not b!1299205) (not b!1299208) (not b!1299211) (not b_next!29145))
(check-sat b_and!47251 (not b_next!29145))
(get-model)

(declare-fun d!141017 () Bool)

(declare-fun e!741242 () Bool)

(assert (=> d!141017 e!741242))

(declare-fun res!863514 () Bool)

(assert (=> d!141017 (=> res!863514 e!741242)))

(declare-fun lt!580908 () Bool)

(assert (=> d!141017 (= res!863514 (not lt!580908))))

(declare-fun lt!580911 () Bool)

(assert (=> d!141017 (= lt!580908 lt!580911)))

(declare-datatypes ((Unit!42964 0))(
  ( (Unit!42965) )
))
(declare-fun lt!580910 () Unit!42964)

(declare-fun e!741243 () Unit!42964)

(assert (=> d!141017 (= lt!580910 e!741243)))

(declare-fun c!124424 () Bool)

(assert (=> d!141017 (= c!124424 lt!580911)))

(declare-fun containsKey!717 (List!29832 (_ BitVec 64)) Bool)

(assert (=> d!141017 (= lt!580911 (containsKey!717 (toList!10186 (+!4418 (+!4418 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205))))

(assert (=> d!141017 (= (contains!8242 (+!4418 (+!4418 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205) lt!580908)))

(declare-fun b!1299256 () Bool)

(declare-fun lt!580909 () Unit!42964)

(assert (=> b!1299256 (= e!741243 lt!580909)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!462 (List!29832 (_ BitVec 64)) Unit!42964)

(assert (=> b!1299256 (= lt!580909 (lemmaContainsKeyImpliesGetValueByKeyDefined!462 (toList!10186 (+!4418 (+!4418 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205))))

(declare-datatypes ((Option!750 0))(
  ( (Some!749 (v!20072 V!51483)) (None!748) )
))
(declare-fun isDefined!502 (Option!750) Bool)

(declare-fun getValueByKey!699 (List!29832 (_ BitVec 64)) Option!750)

(assert (=> b!1299256 (isDefined!502 (getValueByKey!699 (toList!10186 (+!4418 (+!4418 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205))))

(declare-fun b!1299257 () Bool)

(declare-fun Unit!42966 () Unit!42964)

(assert (=> b!1299257 (= e!741243 Unit!42966)))

(declare-fun b!1299258 () Bool)

(assert (=> b!1299258 (= e!741242 (isDefined!502 (getValueByKey!699 (toList!10186 (+!4418 (+!4418 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205)))))

(assert (= (and d!141017 c!124424) b!1299256))

(assert (= (and d!141017 (not c!124424)) b!1299257))

(assert (= (and d!141017 (not res!863514)) b!1299258))

(declare-fun m!1190497 () Bool)

(assert (=> d!141017 m!1190497))

(declare-fun m!1190499 () Bool)

(assert (=> b!1299256 m!1190499))

(declare-fun m!1190501 () Bool)

(assert (=> b!1299256 m!1190501))

(assert (=> b!1299256 m!1190501))

(declare-fun m!1190503 () Bool)

(assert (=> b!1299256 m!1190503))

(assert (=> b!1299258 m!1190501))

(assert (=> b!1299258 m!1190501))

(assert (=> b!1299258 m!1190503))

(assert (=> b!1299213 d!141017))

(declare-fun d!141019 () Bool)

(declare-fun e!741246 () Bool)

(assert (=> d!141019 e!741246))

(declare-fun res!863520 () Bool)

(assert (=> d!141019 (=> (not res!863520) (not e!741246))))

(declare-fun lt!580920 () ListLongMap!20341)

(assert (=> d!141019 (= res!863520 (contains!8242 lt!580920 (_1!11346 (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun lt!580923 () List!29832)

(assert (=> d!141019 (= lt!580920 (ListLongMap!20342 lt!580923))))

(declare-fun lt!580922 () Unit!42964)

(declare-fun lt!580921 () Unit!42964)

(assert (=> d!141019 (= lt!580922 lt!580921)))

(assert (=> d!141019 (= (getValueByKey!699 lt!580923 (_1!11346 (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!749 (_2!11346 (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun lemmaContainsTupThenGetReturnValue!343 (List!29832 (_ BitVec 64) V!51483) Unit!42964)

(assert (=> d!141019 (= lt!580921 (lemmaContainsTupThenGetReturnValue!343 lt!580923 (_1!11346 (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11346 (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun insertStrictlySorted!472 (List!29832 (_ BitVec 64) V!51483) List!29832)

(assert (=> d!141019 (= lt!580923 (insertStrictlySorted!472 (toList!10186 (+!4418 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (_1!11346 (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11346 (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!141019 (= (+!4418 (+!4418 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) lt!580920)))

(declare-fun b!1299263 () Bool)

(declare-fun res!863519 () Bool)

(assert (=> b!1299263 (=> (not res!863519) (not e!741246))))

(assert (=> b!1299263 (= res!863519 (= (getValueByKey!699 (toList!10186 lt!580920) (_1!11346 (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!749 (_2!11346 (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun b!1299264 () Bool)

(declare-fun contains!8244 (List!29832 tuple2!22672) Bool)

(assert (=> b!1299264 (= e!741246 (contains!8244 (toList!10186 lt!580920) (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(assert (= (and d!141019 res!863520) b!1299263))

(assert (= (and b!1299263 res!863519) b!1299264))

(declare-fun m!1190505 () Bool)

(assert (=> d!141019 m!1190505))

(declare-fun m!1190507 () Bool)

(assert (=> d!141019 m!1190507))

(declare-fun m!1190509 () Bool)

(assert (=> d!141019 m!1190509))

(declare-fun m!1190511 () Bool)

(assert (=> d!141019 m!1190511))

(declare-fun m!1190513 () Bool)

(assert (=> b!1299263 m!1190513))

(declare-fun m!1190515 () Bool)

(assert (=> b!1299264 m!1190515))

(assert (=> b!1299213 d!141019))

(declare-fun d!141021 () Bool)

(declare-fun e!741247 () Bool)

(assert (=> d!141021 e!741247))

(declare-fun res!863522 () Bool)

(assert (=> d!141021 (=> (not res!863522) (not e!741247))))

(declare-fun lt!580924 () ListLongMap!20341)

(assert (=> d!141021 (= res!863522 (contains!8242 lt!580924 (_1!11346 (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lt!580927 () List!29832)

(assert (=> d!141021 (= lt!580924 (ListLongMap!20342 lt!580927))))

(declare-fun lt!580926 () Unit!42964)

(declare-fun lt!580925 () Unit!42964)

(assert (=> d!141021 (= lt!580926 lt!580925)))

(assert (=> d!141021 (= (getValueByKey!699 lt!580927 (_1!11346 (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!749 (_2!11346 (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141021 (= lt!580925 (lemmaContainsTupThenGetReturnValue!343 lt!580927 (_1!11346 (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11346 (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141021 (= lt!580927 (insertStrictlySorted!472 (toList!10186 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) (_1!11346 (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11346 (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141021 (= (+!4418 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) lt!580924)))

(declare-fun b!1299265 () Bool)

(declare-fun res!863521 () Bool)

(assert (=> b!1299265 (=> (not res!863521) (not e!741247))))

(assert (=> b!1299265 (= res!863521 (= (getValueByKey!699 (toList!10186 lt!580924) (_1!11346 (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!749 (_2!11346 (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun b!1299266 () Bool)

(assert (=> b!1299266 (= e!741247 (contains!8244 (toList!10186 lt!580924) (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(assert (= (and d!141021 res!863522) b!1299265))

(assert (= (and b!1299265 res!863521) b!1299266))

(declare-fun m!1190517 () Bool)

(assert (=> d!141021 m!1190517))

(declare-fun m!1190519 () Bool)

(assert (=> d!141021 m!1190519))

(declare-fun m!1190521 () Bool)

(assert (=> d!141021 m!1190521))

(declare-fun m!1190523 () Bool)

(assert (=> d!141021 m!1190523))

(declare-fun m!1190525 () Bool)

(assert (=> b!1299265 m!1190525))

(declare-fun m!1190527 () Bool)

(assert (=> b!1299266 m!1190527))

(assert (=> b!1299213 d!141021))

(declare-fun b!1299291 () Bool)

(declare-fun e!741265 () Bool)

(assert (=> b!1299291 (= e!741265 (validKeyInArray!0 (select (arr!41765 _keys!1741) from!2144)))))

(assert (=> b!1299291 (bvsge from!2144 #b00000000000000000000000000000000)))

(declare-fun d!141023 () Bool)

(declare-fun e!741266 () Bool)

(assert (=> d!141023 e!741266))

(declare-fun res!863534 () Bool)

(assert (=> d!141023 (=> (not res!863534) (not e!741266))))

(declare-fun lt!580947 () ListLongMap!20341)

(assert (=> d!141023 (= res!863534 (not (contains!8242 lt!580947 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!741263 () ListLongMap!20341)

(assert (=> d!141023 (= lt!580947 e!741263)))

(declare-fun c!124433 () Bool)

(assert (=> d!141023 (= c!124433 (bvsge from!2144 (size!42316 _keys!1741)))))

(assert (=> d!141023 (validMask!0 mask!2175)))

(assert (=> d!141023 (= (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!580947)))

(declare-fun b!1299292 () Bool)

(declare-fun e!741268 () Bool)

(declare-fun isEmpty!1053 (ListLongMap!20341) Bool)

(assert (=> b!1299292 (= e!741268 (isEmpty!1053 lt!580947))))

(declare-fun b!1299293 () Bool)

(declare-fun lt!580944 () Unit!42964)

(declare-fun lt!580945 () Unit!42964)

(assert (=> b!1299293 (= lt!580944 lt!580945)))

(declare-fun lt!580946 () V!51483)

(declare-fun lt!580943 () (_ BitVec 64))

(declare-fun lt!580942 () ListLongMap!20341)

(declare-fun lt!580948 () (_ BitVec 64))

(assert (=> b!1299293 (not (contains!8242 (+!4418 lt!580942 (tuple2!22673 lt!580948 lt!580946)) lt!580943))))

(declare-fun addStillNotContains!462 (ListLongMap!20341 (_ BitVec 64) V!51483 (_ BitVec 64)) Unit!42964)

(assert (=> b!1299293 (= lt!580945 (addStillNotContains!462 lt!580942 lt!580948 lt!580946 lt!580943))))

(assert (=> b!1299293 (= lt!580943 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!21146 (ValueCell!16494 V!51483) V!51483)

(declare-fun dynLambda!3499 (Int (_ BitVec 64)) V!51483)

(assert (=> b!1299293 (= lt!580946 (get!21146 (select (arr!41766 _values!1445) from!2144) (dynLambda!3499 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1299293 (= lt!580948 (select (arr!41765 _keys!1741) from!2144))))

(declare-fun call!63569 () ListLongMap!20341)

(assert (=> b!1299293 (= lt!580942 call!63569)))

(declare-fun e!741267 () ListLongMap!20341)

(assert (=> b!1299293 (= e!741267 (+!4418 call!63569 (tuple2!22673 (select (arr!41765 _keys!1741) from!2144) (get!21146 (select (arr!41766 _values!1445) from!2144) (dynLambda!3499 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!63566 () Bool)

(assert (=> bm!63566 (= call!63569 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1299294 () Bool)

(declare-fun res!863532 () Bool)

(assert (=> b!1299294 (=> (not res!863532) (not e!741266))))

(assert (=> b!1299294 (= res!863532 (not (contains!8242 lt!580947 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1299295 () Bool)

(assert (=> b!1299295 (= e!741268 (= lt!580947 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun b!1299296 () Bool)

(assert (=> b!1299296 (= e!741263 e!741267)))

(declare-fun c!124436 () Bool)

(assert (=> b!1299296 (= c!124436 (validKeyInArray!0 (select (arr!41765 _keys!1741) from!2144)))))

(declare-fun b!1299297 () Bool)

(assert (=> b!1299297 (= e!741267 call!63569)))

(declare-fun b!1299298 () Bool)

(declare-fun e!741262 () Bool)

(assert (=> b!1299298 (= e!741262 e!741268)))

(declare-fun c!124435 () Bool)

(assert (=> b!1299298 (= c!124435 (bvslt from!2144 (size!42316 _keys!1741)))))

(declare-fun b!1299299 () Bool)

(assert (=> b!1299299 (= e!741266 e!741262)))

(declare-fun c!124434 () Bool)

(assert (=> b!1299299 (= c!124434 e!741265)))

(declare-fun res!863533 () Bool)

(assert (=> b!1299299 (=> (not res!863533) (not e!741265))))

(assert (=> b!1299299 (= res!863533 (bvslt from!2144 (size!42316 _keys!1741)))))

(declare-fun b!1299300 () Bool)

(declare-fun e!741264 () Bool)

(assert (=> b!1299300 (= e!741262 e!741264)))

(assert (=> b!1299300 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42316 _keys!1741)))))

(declare-fun res!863531 () Bool)

(assert (=> b!1299300 (= res!863531 (contains!8242 lt!580947 (select (arr!41765 _keys!1741) from!2144)))))

(assert (=> b!1299300 (=> (not res!863531) (not e!741264))))

(declare-fun b!1299301 () Bool)

(assert (=> b!1299301 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42316 _keys!1741)))))

(assert (=> b!1299301 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42317 _values!1445)))))

(declare-fun apply!1049 (ListLongMap!20341 (_ BitVec 64)) V!51483)

(assert (=> b!1299301 (= e!741264 (= (apply!1049 lt!580947 (select (arr!41765 _keys!1741) from!2144)) (get!21146 (select (arr!41766 _values!1445) from!2144) (dynLambda!3499 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1299302 () Bool)

(assert (=> b!1299302 (= e!741263 (ListLongMap!20342 Nil!29829))))

(assert (= (and d!141023 c!124433) b!1299302))

(assert (= (and d!141023 (not c!124433)) b!1299296))

(assert (= (and b!1299296 c!124436) b!1299293))

(assert (= (and b!1299296 (not c!124436)) b!1299297))

(assert (= (or b!1299293 b!1299297) bm!63566))

(assert (= (and d!141023 res!863534) b!1299294))

(assert (= (and b!1299294 res!863532) b!1299299))

(assert (= (and b!1299299 res!863533) b!1299291))

(assert (= (and b!1299299 c!124434) b!1299300))

(assert (= (and b!1299299 (not c!124434)) b!1299298))

(assert (= (and b!1299300 res!863531) b!1299301))

(assert (= (and b!1299298 c!124435) b!1299295))

(assert (= (and b!1299298 (not c!124435)) b!1299292))

(declare-fun b_lambda!23159 () Bool)

(assert (=> (not b_lambda!23159) (not b!1299293)))

(declare-fun t!43412 () Bool)

(declare-fun tb!11381 () Bool)

(assert (=> (and start!109728 (= defaultEntry!1448 defaultEntry!1448) t!43412) tb!11381))

(declare-fun result!23759 () Bool)

(assert (=> tb!11381 (= result!23759 tp_is_empty!34785)))

(assert (=> b!1299293 t!43412))

(declare-fun b_and!47255 () Bool)

(assert (= b_and!47251 (and (=> t!43412 result!23759) b_and!47255)))

(declare-fun b_lambda!23161 () Bool)

(assert (=> (not b_lambda!23161) (not b!1299301)))

(assert (=> b!1299301 t!43412))

(declare-fun b_and!47257 () Bool)

(assert (= b_and!47255 (and (=> t!43412 result!23759) b_and!47257)))

(assert (=> b!1299291 m!1190463))

(assert (=> b!1299291 m!1190463))

(assert (=> b!1299291 m!1190465))

(declare-fun m!1190529 () Bool)

(assert (=> b!1299294 m!1190529))

(declare-fun m!1190531 () Bool)

(assert (=> b!1299292 m!1190531))

(declare-fun m!1190533 () Bool)

(assert (=> b!1299295 m!1190533))

(declare-fun m!1190535 () Bool)

(assert (=> b!1299301 m!1190535))

(declare-fun m!1190537 () Bool)

(assert (=> b!1299301 m!1190537))

(assert (=> b!1299301 m!1190535))

(declare-fun m!1190539 () Bool)

(assert (=> b!1299301 m!1190539))

(assert (=> b!1299301 m!1190463))

(assert (=> b!1299301 m!1190463))

(declare-fun m!1190541 () Bool)

(assert (=> b!1299301 m!1190541))

(assert (=> b!1299301 m!1190537))

(assert (=> b!1299293 m!1190535))

(assert (=> b!1299293 m!1190537))

(assert (=> b!1299293 m!1190535))

(assert (=> b!1299293 m!1190539))

(declare-fun m!1190543 () Bool)

(assert (=> b!1299293 m!1190543))

(assert (=> b!1299293 m!1190463))

(assert (=> b!1299293 m!1190543))

(declare-fun m!1190545 () Bool)

(assert (=> b!1299293 m!1190545))

(declare-fun m!1190547 () Bool)

(assert (=> b!1299293 m!1190547))

(declare-fun m!1190549 () Bool)

(assert (=> b!1299293 m!1190549))

(assert (=> b!1299293 m!1190537))

(assert (=> bm!63566 m!1190533))

(declare-fun m!1190551 () Bool)

(assert (=> d!141023 m!1190551))

(assert (=> d!141023 m!1190451))

(assert (=> b!1299300 m!1190463))

(assert (=> b!1299300 m!1190463))

(declare-fun m!1190553 () Bool)

(assert (=> b!1299300 m!1190553))

(assert (=> b!1299296 m!1190463))

(assert (=> b!1299296 m!1190463))

(assert (=> b!1299296 m!1190465))

(assert (=> b!1299213 d!141023))

(declare-fun b!1299313 () Bool)

(declare-fun e!741277 () Bool)

(declare-fun e!741276 () Bool)

(assert (=> b!1299313 (= e!741277 e!741276)))

(declare-fun lt!580955 () (_ BitVec 64))

(assert (=> b!1299313 (= lt!580955 (select (arr!41765 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!580956 () Unit!42964)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86541 (_ BitVec 64) (_ BitVec 32)) Unit!42964)

(assert (=> b!1299313 (= lt!580956 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!580955 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86541 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1299313 (arrayContainsKey!0 _keys!1741 lt!580955 #b00000000000000000000000000000000)))

(declare-fun lt!580957 () Unit!42964)

(assert (=> b!1299313 (= lt!580957 lt!580956)))

(declare-fun res!863539 () Bool)

(declare-datatypes ((SeekEntryResult!10014 0))(
  ( (MissingZero!10014 (index!42426 (_ BitVec 32))) (Found!10014 (index!42427 (_ BitVec 32))) (Intermediate!10014 (undefined!10826 Bool) (index!42428 (_ BitVec 32)) (x!115422 (_ BitVec 32))) (Undefined!10014) (MissingVacant!10014 (index!42429 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86541 (_ BitVec 32)) SeekEntryResult!10014)

(assert (=> b!1299313 (= res!863539 (= (seekEntryOrOpen!0 (select (arr!41765 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10014 #b00000000000000000000000000000000)))))

(assert (=> b!1299313 (=> (not res!863539) (not e!741276))))

(declare-fun b!1299314 () Bool)

(declare-fun e!741275 () Bool)

(assert (=> b!1299314 (= e!741275 e!741277)))

(declare-fun c!124439 () Bool)

(assert (=> b!1299314 (= c!124439 (validKeyInArray!0 (select (arr!41765 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1299315 () Bool)

(declare-fun call!63572 () Bool)

(assert (=> b!1299315 (= e!741276 call!63572)))

(declare-fun b!1299316 () Bool)

(assert (=> b!1299316 (= e!741277 call!63572)))

(declare-fun bm!63569 () Bool)

(assert (=> bm!63569 (= call!63572 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun d!141025 () Bool)

(declare-fun res!863540 () Bool)

(assert (=> d!141025 (=> res!863540 e!741275)))

(assert (=> d!141025 (= res!863540 (bvsge #b00000000000000000000000000000000 (size!42316 _keys!1741)))))

(assert (=> d!141025 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!741275)))

(assert (= (and d!141025 (not res!863540)) b!1299314))

(assert (= (and b!1299314 c!124439) b!1299313))

(assert (= (and b!1299314 (not c!124439)) b!1299316))

(assert (= (and b!1299313 res!863539) b!1299315))

(assert (= (or b!1299315 b!1299316) bm!63569))

(declare-fun m!1190555 () Bool)

(assert (=> b!1299313 m!1190555))

(declare-fun m!1190557 () Bool)

(assert (=> b!1299313 m!1190557))

(declare-fun m!1190559 () Bool)

(assert (=> b!1299313 m!1190559))

(assert (=> b!1299313 m!1190555))

(declare-fun m!1190561 () Bool)

(assert (=> b!1299313 m!1190561))

(assert (=> b!1299314 m!1190555))

(assert (=> b!1299314 m!1190555))

(declare-fun m!1190563 () Bool)

(assert (=> b!1299314 m!1190563))

(declare-fun m!1190565 () Bool)

(assert (=> bm!63569 m!1190565))

(assert (=> b!1299205 d!141025))

(declare-fun d!141027 () Bool)

(assert (=> d!141027 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!109728 d!141027))

(declare-fun d!141029 () Bool)

(assert (=> d!141029 (= (array_inv!31601 _values!1445) (bvsge (size!42317 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!109728 d!141029))

(declare-fun d!141031 () Bool)

(assert (=> d!141031 (= (array_inv!31602 _keys!1741) (bvsge (size!42316 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!109728 d!141031))

(declare-fun b!1299327 () Bool)

(declare-fun e!741288 () Bool)

(declare-fun contains!8245 (List!29833 (_ BitVec 64)) Bool)

(assert (=> b!1299327 (= e!741288 (contains!8245 Nil!29830 (select (arr!41765 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun bm!63572 () Bool)

(declare-fun call!63575 () Bool)

(declare-fun c!124442 () Bool)

(assert (=> bm!63572 (= call!63575 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!124442 (Cons!29829 (select (arr!41765 _keys!1741) #b00000000000000000000000000000000) Nil!29830) Nil!29830)))))

(declare-fun b!1299328 () Bool)

(declare-fun e!741289 () Bool)

(assert (=> b!1299328 (= e!741289 call!63575)))

(declare-fun d!141033 () Bool)

(declare-fun res!863548 () Bool)

(declare-fun e!741286 () Bool)

(assert (=> d!141033 (=> res!863548 e!741286)))

(assert (=> d!141033 (= res!863548 (bvsge #b00000000000000000000000000000000 (size!42316 _keys!1741)))))

(assert (=> d!141033 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29830) e!741286)))

(declare-fun b!1299329 () Bool)

(assert (=> b!1299329 (= e!741289 call!63575)))

(declare-fun b!1299330 () Bool)

(declare-fun e!741287 () Bool)

(assert (=> b!1299330 (= e!741287 e!741289)))

(assert (=> b!1299330 (= c!124442 (validKeyInArray!0 (select (arr!41765 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1299331 () Bool)

(assert (=> b!1299331 (= e!741286 e!741287)))

(declare-fun res!863547 () Bool)

(assert (=> b!1299331 (=> (not res!863547) (not e!741287))))

(assert (=> b!1299331 (= res!863547 (not e!741288))))

(declare-fun res!863549 () Bool)

(assert (=> b!1299331 (=> (not res!863549) (not e!741288))))

(assert (=> b!1299331 (= res!863549 (validKeyInArray!0 (select (arr!41765 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!141033 (not res!863548)) b!1299331))

(assert (= (and b!1299331 res!863549) b!1299327))

(assert (= (and b!1299331 res!863547) b!1299330))

(assert (= (and b!1299330 c!124442) b!1299329))

(assert (= (and b!1299330 (not c!124442)) b!1299328))

(assert (= (or b!1299329 b!1299328) bm!63572))

(assert (=> b!1299327 m!1190555))

(assert (=> b!1299327 m!1190555))

(declare-fun m!1190567 () Bool)

(assert (=> b!1299327 m!1190567))

(assert (=> bm!63572 m!1190555))

(declare-fun m!1190569 () Bool)

(assert (=> bm!63572 m!1190569))

(assert (=> b!1299330 m!1190555))

(assert (=> b!1299330 m!1190555))

(assert (=> b!1299330 m!1190563))

(assert (=> b!1299331 m!1190555))

(assert (=> b!1299331 m!1190555))

(assert (=> b!1299331 m!1190563))

(assert (=> b!1299211 d!141033))

(declare-fun d!141035 () Bool)

(declare-fun e!741290 () Bool)

(assert (=> d!141035 e!741290))

(declare-fun res!863550 () Bool)

(assert (=> d!141035 (=> res!863550 e!741290)))

(declare-fun lt!580958 () Bool)

(assert (=> d!141035 (= res!863550 (not lt!580958))))

(declare-fun lt!580961 () Bool)

(assert (=> d!141035 (= lt!580958 lt!580961)))

(declare-fun lt!580960 () Unit!42964)

(declare-fun e!741291 () Unit!42964)

(assert (=> d!141035 (= lt!580960 e!741291)))

(declare-fun c!124443 () Bool)

(assert (=> d!141035 (= c!124443 lt!580961)))

(assert (=> d!141035 (= lt!580961 (containsKey!717 (toList!10186 (getCurrentListMap!5160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141035 (= (contains!8242 (getCurrentListMap!5160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!580958)))

(declare-fun b!1299332 () Bool)

(declare-fun lt!580959 () Unit!42964)

(assert (=> b!1299332 (= e!741291 lt!580959)))

(assert (=> b!1299332 (= lt!580959 (lemmaContainsKeyImpliesGetValueByKeyDefined!462 (toList!10186 (getCurrentListMap!5160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> b!1299332 (isDefined!502 (getValueByKey!699 (toList!10186 (getCurrentListMap!5160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1299333 () Bool)

(declare-fun Unit!42967 () Unit!42964)

(assert (=> b!1299333 (= e!741291 Unit!42967)))

(declare-fun b!1299334 () Bool)

(assert (=> b!1299334 (= e!741290 (isDefined!502 (getValueByKey!699 (toList!10186 (getCurrentListMap!5160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141035 c!124443) b!1299332))

(assert (= (and d!141035 (not c!124443)) b!1299333))

(assert (= (and d!141035 (not res!863550)) b!1299334))

(declare-fun m!1190571 () Bool)

(assert (=> d!141035 m!1190571))

(declare-fun m!1190573 () Bool)

(assert (=> b!1299332 m!1190573))

(declare-fun m!1190575 () Bool)

(assert (=> b!1299332 m!1190575))

(assert (=> b!1299332 m!1190575))

(declare-fun m!1190577 () Bool)

(assert (=> b!1299332 m!1190577))

(assert (=> b!1299334 m!1190575))

(assert (=> b!1299334 m!1190575))

(assert (=> b!1299334 m!1190577))

(assert (=> b!1299207 d!141035))

(declare-fun b!1299377 () Bool)

(declare-fun e!741325 () Bool)

(assert (=> b!1299377 (= e!741325 (validKeyInArray!0 (select (arr!41765 _keys!1741) from!2144)))))

(declare-fun bm!63587 () Bool)

(declare-fun call!63591 () ListLongMap!20341)

(declare-fun call!63595 () ListLongMap!20341)

(assert (=> bm!63587 (= call!63591 call!63595)))

(declare-fun call!63593 () ListLongMap!20341)

(declare-fun c!124461 () Bool)

(declare-fun c!124458 () Bool)

(declare-fun call!63596 () ListLongMap!20341)

(declare-fun call!63594 () ListLongMap!20341)

(declare-fun bm!63588 () Bool)

(assert (=> bm!63588 (= call!63595 (+!4418 (ite c!124461 call!63594 (ite c!124458 call!63593 call!63596)) (ite (or c!124461 c!124458) (tuple2!22673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1299378 () Bool)

(declare-fun res!863575 () Bool)

(declare-fun e!741318 () Bool)

(assert (=> b!1299378 (=> (not res!863575) (not e!741318))))

(declare-fun e!741321 () Bool)

(assert (=> b!1299378 (= res!863575 e!741321)))

(declare-fun c!124457 () Bool)

(assert (=> b!1299378 (= c!124457 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1299379 () Bool)

(declare-fun e!741324 () Bool)

(declare-fun e!741326 () Bool)

(assert (=> b!1299379 (= e!741324 e!741326)))

(declare-fun res!863574 () Bool)

(assert (=> b!1299379 (=> (not res!863574) (not e!741326))))

(declare-fun lt!581018 () ListLongMap!20341)

(assert (=> b!1299379 (= res!863574 (contains!8242 lt!581018 (select (arr!41765 _keys!1741) from!2144)))))

(assert (=> b!1299379 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42316 _keys!1741)))))

(declare-fun b!1299380 () Bool)

(declare-fun c!124460 () Bool)

(assert (=> b!1299380 (= c!124460 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!741320 () ListLongMap!20341)

(declare-fun e!741329 () ListLongMap!20341)

(assert (=> b!1299380 (= e!741320 e!741329)))

(declare-fun bm!63590 () Bool)

(assert (=> bm!63590 (= call!63594 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1299381 () Bool)

(declare-fun e!741327 () ListLongMap!20341)

(assert (=> b!1299381 (= e!741327 (+!4418 call!63595 (tuple2!22673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1299382 () Bool)

(assert (=> b!1299382 (= e!741327 e!741320)))

(assert (=> b!1299382 (= c!124458 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1299383 () Bool)

(declare-fun res!863573 () Bool)

(assert (=> b!1299383 (=> (not res!863573) (not e!741318))))

(assert (=> b!1299383 (= res!863573 e!741324)))

(declare-fun res!863569 () Bool)

(assert (=> b!1299383 (=> res!863569 e!741324)))

(assert (=> b!1299383 (= res!863569 (not e!741325))))

(declare-fun res!863577 () Bool)

(assert (=> b!1299383 (=> (not res!863577) (not e!741325))))

(assert (=> b!1299383 (= res!863577 (bvslt from!2144 (size!42316 _keys!1741)))))

(declare-fun b!1299384 () Bool)

(assert (=> b!1299384 (= e!741329 call!63591)))

(declare-fun b!1299385 () Bool)

(declare-fun e!741330 () Bool)

(assert (=> b!1299385 (= e!741321 e!741330)))

(declare-fun res!863576 () Bool)

(declare-fun call!63590 () Bool)

(assert (=> b!1299385 (= res!863576 call!63590)))

(assert (=> b!1299385 (=> (not res!863576) (not e!741330))))

(declare-fun b!1299386 () Bool)

(declare-fun e!741328 () Bool)

(assert (=> b!1299386 (= e!741318 e!741328)))

(declare-fun c!124459 () Bool)

(assert (=> b!1299386 (= c!124459 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!63591 () Bool)

(assert (=> bm!63591 (= call!63593 call!63594)))

(declare-fun b!1299387 () Bool)

(declare-fun e!741323 () Bool)

(assert (=> b!1299387 (= e!741323 (validKeyInArray!0 (select (arr!41765 _keys!1741) from!2144)))))

(declare-fun b!1299388 () Bool)

(declare-fun e!741322 () Unit!42964)

(declare-fun lt!581016 () Unit!42964)

(assert (=> b!1299388 (= e!741322 lt!581016)))

(declare-fun lt!581027 () ListLongMap!20341)

(assert (=> b!1299388 (= lt!581027 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581025 () (_ BitVec 64))

(assert (=> b!1299388 (= lt!581025 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581021 () (_ BitVec 64))

(assert (=> b!1299388 (= lt!581021 (select (arr!41765 _keys!1741) from!2144))))

(declare-fun lt!581024 () Unit!42964)

(declare-fun addStillContains!1118 (ListLongMap!20341 (_ BitVec 64) V!51483 (_ BitVec 64)) Unit!42964)

(assert (=> b!1299388 (= lt!581024 (addStillContains!1118 lt!581027 lt!581025 zeroValue!1387 lt!581021))))

(assert (=> b!1299388 (contains!8242 (+!4418 lt!581027 (tuple2!22673 lt!581025 zeroValue!1387)) lt!581021)))

(declare-fun lt!581026 () Unit!42964)

(assert (=> b!1299388 (= lt!581026 lt!581024)))

(declare-fun lt!581019 () ListLongMap!20341)

(assert (=> b!1299388 (= lt!581019 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581013 () (_ BitVec 64))

(assert (=> b!1299388 (= lt!581013 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581006 () (_ BitVec 64))

(assert (=> b!1299388 (= lt!581006 (select (arr!41765 _keys!1741) from!2144))))

(declare-fun lt!581010 () Unit!42964)

(declare-fun addApplyDifferent!552 (ListLongMap!20341 (_ BitVec 64) V!51483 (_ BitVec 64)) Unit!42964)

(assert (=> b!1299388 (= lt!581010 (addApplyDifferent!552 lt!581019 lt!581013 minValue!1387 lt!581006))))

(assert (=> b!1299388 (= (apply!1049 (+!4418 lt!581019 (tuple2!22673 lt!581013 minValue!1387)) lt!581006) (apply!1049 lt!581019 lt!581006))))

(declare-fun lt!581014 () Unit!42964)

(assert (=> b!1299388 (= lt!581014 lt!581010)))

(declare-fun lt!581022 () ListLongMap!20341)

(assert (=> b!1299388 (= lt!581022 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581023 () (_ BitVec 64))

(assert (=> b!1299388 (= lt!581023 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581017 () (_ BitVec 64))

(assert (=> b!1299388 (= lt!581017 (select (arr!41765 _keys!1741) from!2144))))

(declare-fun lt!581009 () Unit!42964)

(assert (=> b!1299388 (= lt!581009 (addApplyDifferent!552 lt!581022 lt!581023 zeroValue!1387 lt!581017))))

(assert (=> b!1299388 (= (apply!1049 (+!4418 lt!581022 (tuple2!22673 lt!581023 zeroValue!1387)) lt!581017) (apply!1049 lt!581022 lt!581017))))

(declare-fun lt!581020 () Unit!42964)

(assert (=> b!1299388 (= lt!581020 lt!581009)))

(declare-fun lt!581008 () ListLongMap!20341)

(assert (=> b!1299388 (= lt!581008 (getCurrentListMapNoExtraKeys!6131 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581012 () (_ BitVec 64))

(assert (=> b!1299388 (= lt!581012 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581011 () (_ BitVec 64))

(assert (=> b!1299388 (= lt!581011 (select (arr!41765 _keys!1741) from!2144))))

(assert (=> b!1299388 (= lt!581016 (addApplyDifferent!552 lt!581008 lt!581012 minValue!1387 lt!581011))))

(assert (=> b!1299388 (= (apply!1049 (+!4418 lt!581008 (tuple2!22673 lt!581012 minValue!1387)) lt!581011) (apply!1049 lt!581008 lt!581011))))

(declare-fun b!1299389 () Bool)

(declare-fun e!741319 () Bool)

(assert (=> b!1299389 (= e!741319 (= (apply!1049 lt!581018 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1299390 () Bool)

(assert (=> b!1299390 (= e!741320 call!63591)))

(declare-fun b!1299391 () Bool)

(assert (=> b!1299391 (= e!741321 (not call!63590))))

(declare-fun b!1299392 () Bool)

(assert (=> b!1299392 (= e!741330 (= (apply!1049 lt!581018 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun b!1299393 () Bool)

(assert (=> b!1299393 (= e!741326 (= (apply!1049 lt!581018 (select (arr!41765 _keys!1741) from!2144)) (get!21146 (select (arr!41766 _values!1445) from!2144) (dynLambda!3499 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1299393 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42317 _values!1445)))))

(assert (=> b!1299393 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42316 _keys!1741)))))

(declare-fun b!1299394 () Bool)

(declare-fun Unit!42968 () Unit!42964)

(assert (=> b!1299394 (= e!741322 Unit!42968)))

(declare-fun b!1299395 () Bool)

(assert (=> b!1299395 (= e!741328 e!741319)))

(declare-fun res!863572 () Bool)

(declare-fun call!63592 () Bool)

(assert (=> b!1299395 (= res!863572 call!63592)))

(assert (=> b!1299395 (=> (not res!863572) (not e!741319))))

(declare-fun b!1299396 () Bool)

(assert (=> b!1299396 (= e!741328 (not call!63592))))

(declare-fun bm!63592 () Bool)

(assert (=> bm!63592 (= call!63592 (contains!8242 lt!581018 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!63593 () Bool)

(assert (=> bm!63593 (= call!63596 call!63593)))

(declare-fun b!1299397 () Bool)

(assert (=> b!1299397 (= e!741329 call!63596)))

(declare-fun bm!63589 () Bool)

(assert (=> bm!63589 (= call!63590 (contains!8242 lt!581018 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!141037 () Bool)

(assert (=> d!141037 e!741318))

(declare-fun res!863571 () Bool)

(assert (=> d!141037 (=> (not res!863571) (not e!741318))))

(assert (=> d!141037 (= res!863571 (or (bvsge from!2144 (size!42316 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42316 _keys!1741)))))))

(declare-fun lt!581015 () ListLongMap!20341)

(assert (=> d!141037 (= lt!581018 lt!581015)))

(declare-fun lt!581007 () Unit!42964)

(assert (=> d!141037 (= lt!581007 e!741322)))

(declare-fun c!124456 () Bool)

(assert (=> d!141037 (= c!124456 e!741323)))

(declare-fun res!863570 () Bool)

(assert (=> d!141037 (=> (not res!863570) (not e!741323))))

(assert (=> d!141037 (= res!863570 (bvslt from!2144 (size!42316 _keys!1741)))))

(assert (=> d!141037 (= lt!581015 e!741327)))

(assert (=> d!141037 (= c!124461 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!141037 (validMask!0 mask!2175)))

(assert (=> d!141037 (= (getCurrentListMap!5160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!581018)))

(assert (= (and d!141037 c!124461) b!1299381))

(assert (= (and d!141037 (not c!124461)) b!1299382))

(assert (= (and b!1299382 c!124458) b!1299390))

(assert (= (and b!1299382 (not c!124458)) b!1299380))

(assert (= (and b!1299380 c!124460) b!1299384))

(assert (= (and b!1299380 (not c!124460)) b!1299397))

(assert (= (or b!1299384 b!1299397) bm!63593))

(assert (= (or b!1299390 bm!63593) bm!63591))

(assert (= (or b!1299390 b!1299384) bm!63587))

(assert (= (or b!1299381 bm!63591) bm!63590))

(assert (= (or b!1299381 bm!63587) bm!63588))

(assert (= (and d!141037 res!863570) b!1299387))

(assert (= (and d!141037 c!124456) b!1299388))

(assert (= (and d!141037 (not c!124456)) b!1299394))

(assert (= (and d!141037 res!863571) b!1299383))

(assert (= (and b!1299383 res!863577) b!1299377))

(assert (= (and b!1299383 (not res!863569)) b!1299379))

(assert (= (and b!1299379 res!863574) b!1299393))

(assert (= (and b!1299383 res!863573) b!1299378))

(assert (= (and b!1299378 c!124457) b!1299385))

(assert (= (and b!1299378 (not c!124457)) b!1299391))

(assert (= (and b!1299385 res!863576) b!1299392))

(assert (= (or b!1299385 b!1299391) bm!63589))

(assert (= (and b!1299378 res!863575) b!1299386))

(assert (= (and b!1299386 c!124459) b!1299395))

(assert (= (and b!1299386 (not c!124459)) b!1299396))

(assert (= (and b!1299395 res!863572) b!1299389))

(assert (= (or b!1299395 b!1299396) bm!63592))

(declare-fun b_lambda!23163 () Bool)

(assert (=> (not b_lambda!23163) (not b!1299393)))

(assert (=> b!1299393 t!43412))

(declare-fun b_and!47259 () Bool)

(assert (= b_and!47257 (and (=> t!43412 result!23759) b_and!47259)))

(declare-fun m!1190579 () Bool)

(assert (=> bm!63589 m!1190579))

(assert (=> b!1299393 m!1190535))

(assert (=> b!1299393 m!1190537))

(assert (=> b!1299393 m!1190463))

(assert (=> b!1299393 m!1190537))

(assert (=> b!1299393 m!1190535))

(assert (=> b!1299393 m!1190539))

(assert (=> b!1299393 m!1190463))

(declare-fun m!1190581 () Bool)

(assert (=> b!1299393 m!1190581))

(assert (=> d!141037 m!1190451))

(declare-fun m!1190583 () Bool)

(assert (=> b!1299388 m!1190583))

(declare-fun m!1190585 () Bool)

(assert (=> b!1299388 m!1190585))

(declare-fun m!1190587 () Bool)

(assert (=> b!1299388 m!1190587))

(declare-fun m!1190589 () Bool)

(assert (=> b!1299388 m!1190589))

(declare-fun m!1190591 () Bool)

(assert (=> b!1299388 m!1190591))

(declare-fun m!1190593 () Bool)

(assert (=> b!1299388 m!1190593))

(assert (=> b!1299388 m!1190443))

(assert (=> b!1299388 m!1190463))

(assert (=> b!1299388 m!1190589))

(declare-fun m!1190595 () Bool)

(assert (=> b!1299388 m!1190595))

(declare-fun m!1190597 () Bool)

(assert (=> b!1299388 m!1190597))

(declare-fun m!1190599 () Bool)

(assert (=> b!1299388 m!1190599))

(declare-fun m!1190601 () Bool)

(assert (=> b!1299388 m!1190601))

(declare-fun m!1190603 () Bool)

(assert (=> b!1299388 m!1190603))

(declare-fun m!1190605 () Bool)

(assert (=> b!1299388 m!1190605))

(assert (=> b!1299388 m!1190599))

(declare-fun m!1190607 () Bool)

(assert (=> b!1299388 m!1190607))

(declare-fun m!1190609 () Bool)

(assert (=> b!1299388 m!1190609))

(assert (=> b!1299388 m!1190591))

(declare-fun m!1190611 () Bool)

(assert (=> b!1299388 m!1190611))

(assert (=> b!1299388 m!1190583))

(assert (=> b!1299387 m!1190463))

(assert (=> b!1299387 m!1190463))

(assert (=> b!1299387 m!1190465))

(declare-fun m!1190613 () Bool)

(assert (=> bm!63592 m!1190613))

(declare-fun m!1190615 () Bool)

(assert (=> b!1299381 m!1190615))

(declare-fun m!1190617 () Bool)

(assert (=> bm!63588 m!1190617))

(declare-fun m!1190619 () Bool)

(assert (=> b!1299389 m!1190619))

(assert (=> b!1299379 m!1190463))

(assert (=> b!1299379 m!1190463))

(declare-fun m!1190621 () Bool)

(assert (=> b!1299379 m!1190621))

(assert (=> b!1299377 m!1190463))

(assert (=> b!1299377 m!1190463))

(assert (=> b!1299377 m!1190465))

(assert (=> bm!63590 m!1190443))

(declare-fun m!1190623 () Bool)

(assert (=> b!1299392 m!1190623))

(assert (=> b!1299207 d!141037))

(declare-fun d!141039 () Bool)

(assert (=> d!141039 (= (validKeyInArray!0 (select (arr!41765 _keys!1741) from!2144)) (and (not (= (select (arr!41765 _keys!1741) from!2144) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41765 _keys!1741) from!2144) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1299208 d!141039))

(declare-fun b!1299405 () Bool)

(declare-fun e!741336 () Bool)

(assert (=> b!1299405 (= e!741336 tp_is_empty!34785)))

(declare-fun mapNonEmpty!53750 () Bool)

(declare-fun mapRes!53750 () Bool)

(declare-fun tp!102570 () Bool)

(declare-fun e!741335 () Bool)

(assert (=> mapNonEmpty!53750 (= mapRes!53750 (and tp!102570 e!741335))))

(declare-fun mapValue!53750 () ValueCell!16494)

(declare-fun mapRest!53750 () (Array (_ BitVec 32) ValueCell!16494))

(declare-fun mapKey!53750 () (_ BitVec 32))

(assert (=> mapNonEmpty!53750 (= mapRest!53744 (store mapRest!53750 mapKey!53750 mapValue!53750))))

(declare-fun mapIsEmpty!53750 () Bool)

(assert (=> mapIsEmpty!53750 mapRes!53750))

(declare-fun b!1299404 () Bool)

(assert (=> b!1299404 (= e!741335 tp_is_empty!34785)))

(declare-fun condMapEmpty!53750 () Bool)

(declare-fun mapDefault!53750 () ValueCell!16494)

(assert (=> mapNonEmpty!53744 (= condMapEmpty!53750 (= mapRest!53744 ((as const (Array (_ BitVec 32) ValueCell!16494)) mapDefault!53750)))))

(assert (=> mapNonEmpty!53744 (= tp!102561 (and e!741336 mapRes!53750))))

(assert (= (and mapNonEmpty!53744 condMapEmpty!53750) mapIsEmpty!53750))

(assert (= (and mapNonEmpty!53744 (not condMapEmpty!53750)) mapNonEmpty!53750))

(assert (= (and mapNonEmpty!53750 ((_ is ValueCellFull!16494) mapValue!53750)) b!1299404))

(assert (= (and mapNonEmpty!53744 ((_ is ValueCellFull!16494) mapDefault!53750)) b!1299405))

(declare-fun m!1190625 () Bool)

(assert (=> mapNonEmpty!53750 m!1190625))

(declare-fun b_lambda!23165 () Bool)

(assert (= b_lambda!23163 (or (and start!109728 b_free!29145) b_lambda!23165)))

(declare-fun b_lambda!23167 () Bool)

(assert (= b_lambda!23159 (or (and start!109728 b_free!29145) b_lambda!23167)))

(declare-fun b_lambda!23169 () Bool)

(assert (= b_lambda!23161 (or (and start!109728 b_free!29145) b_lambda!23169)))

(check-sat (not b!1299266) (not bm!63590) (not b_lambda!23169) (not d!141023) (not bm!63589) (not b!1299393) (not b_lambda!23167) (not b!1299387) (not d!141037) (not b!1299256) (not b!1299330) (not b!1299258) (not bm!63588) (not bm!63592) (not b!1299291) (not d!141021) (not d!141017) (not b!1299263) (not mapNonEmpty!53750) (not b!1299381) (not d!141035) (not b!1299377) (not b!1299389) (not bm!63566) (not b!1299300) (not b!1299294) (not b!1299265) (not b!1299301) (not bm!63569) (not b_lambda!23165) (not bm!63572) (not b!1299296) (not b!1299334) b_and!47259 (not b!1299264) (not b!1299388) (not b!1299379) (not b!1299292) (not b!1299332) tp_is_empty!34785 (not d!141019) (not b!1299392) (not b!1299295) (not b!1299327) (not b!1299313) (not b!1299314) (not b!1299331) (not b_next!29145) (not b!1299293))
(check-sat b_and!47259 (not b_next!29145))
