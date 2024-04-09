; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110202 () Bool)

(assert start!110202)

(declare-fun b_free!29289 () Bool)

(declare-fun b_next!29289 () Bool)

(assert (=> start!110202 (= b_free!29289 (not b_next!29289))))

(declare-fun tp!103025 () Bool)

(declare-fun b_and!47479 () Bool)

(assert (=> start!110202 (= tp!103025 b_and!47479)))

(declare-fun b!1304317 () Bool)

(declare-fun res!866331 () Bool)

(declare-fun e!744010 () Bool)

(assert (=> b!1304317 (=> (not res!866331) (not e!744010))))

(declare-datatypes ((V!51675 0))(
  ( (V!51676 (val!17539 Int)) )
))
(declare-fun minValue!1387 () V!51675)

(declare-fun zeroValue!1387 () V!51675)

(declare-datatypes ((ValueCell!16566 0))(
  ( (ValueCellFull!16566 (v!20156 V!51675)) (EmptyCell!16566) )
))
(declare-datatypes ((array!86839 0))(
  ( (array!86840 (arr!41904 (Array (_ BitVec 32) ValueCell!16566)) (size!42455 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86839)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86841 0))(
  ( (array!86842 (arr!41905 (Array (_ BitVec 32) (_ BitVec 64))) (size!42456 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86841)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22796 0))(
  ( (tuple2!22797 (_1!11408 (_ BitVec 64)) (_2!11408 V!51675)) )
))
(declare-datatypes ((List!29946 0))(
  ( (Nil!29943) (Cons!29942 (h!31151 tuple2!22796) (t!43551 List!29946)) )
))
(declare-datatypes ((ListLongMap!20465 0))(
  ( (ListLongMap!20466 (toList!10248 List!29946)) )
))
(declare-fun contains!8323 (ListLongMap!20465 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5206 (array!86841 array!86839 (_ BitVec 32) (_ BitVec 32) V!51675 V!51675 (_ BitVec 32) Int) ListLongMap!20465)

(assert (=> b!1304317 (= res!866331 (contains!8323 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun res!866332 () Bool)

(assert (=> start!110202 (=> (not res!866332) (not e!744010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110202 (= res!866332 (validMask!0 mask!2175))))

(assert (=> start!110202 e!744010))

(declare-fun tp_is_empty!34929 () Bool)

(assert (=> start!110202 tp_is_empty!34929))

(assert (=> start!110202 true))

(declare-fun e!744011 () Bool)

(declare-fun array_inv!31691 (array!86839) Bool)

(assert (=> start!110202 (and (array_inv!31691 _values!1445) e!744011)))

(declare-fun array_inv!31692 (array!86841) Bool)

(assert (=> start!110202 (array_inv!31692 _keys!1741)))

(assert (=> start!110202 tp!103025))

(declare-fun mapNonEmpty!53993 () Bool)

(declare-fun mapRes!53993 () Bool)

(declare-fun tp!103026 () Bool)

(declare-fun e!744009 () Bool)

(assert (=> mapNonEmpty!53993 (= mapRes!53993 (and tp!103026 e!744009))))

(declare-fun mapKey!53993 () (_ BitVec 32))

(declare-fun mapRest!53993 () (Array (_ BitVec 32) ValueCell!16566))

(declare-fun mapValue!53993 () ValueCell!16566)

(assert (=> mapNonEmpty!53993 (= (arr!41904 _values!1445) (store mapRest!53993 mapKey!53993 mapValue!53993))))

(declare-fun b!1304318 () Bool)

(declare-fun res!866338 () Bool)

(assert (=> b!1304318 (=> (not res!866338) (not e!744010))))

(assert (=> b!1304318 (= res!866338 (and (= (size!42455 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42456 _keys!1741) (size!42455 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1304319 () Bool)

(declare-fun res!866337 () Bool)

(assert (=> b!1304319 (=> (not res!866337) (not e!744010))))

(assert (=> b!1304319 (= res!866337 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42456 _keys!1741))))))

(declare-fun b!1304320 () Bool)

(declare-fun res!866335 () Bool)

(assert (=> b!1304320 (=> (not res!866335) (not e!744010))))

(assert (=> b!1304320 (= res!866335 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42456 _keys!1741))))))

(declare-fun b!1304321 () Bool)

(declare-fun res!866333 () Bool)

(assert (=> b!1304321 (=> (not res!866333) (not e!744010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86841 (_ BitVec 32)) Bool)

(assert (=> b!1304321 (= res!866333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!53993 () Bool)

(assert (=> mapIsEmpty!53993 mapRes!53993))

(declare-fun b!1304322 () Bool)

(declare-fun e!744012 () Bool)

(declare-fun e!744013 () Bool)

(assert (=> b!1304322 (= e!744012 e!744013)))

(declare-fun res!866330 () Bool)

(assert (=> b!1304322 (=> (not res!866330) (not e!744013))))

(declare-fun getCurrentListMapNoExtraKeys!6182 (array!86841 array!86839 (_ BitVec 32) (_ BitVec 32) V!51675 V!51675 (_ BitVec 32) Int) ListLongMap!20465)

(assert (=> b!1304322 (= res!866330 (not (contains!8323 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205)))))

(declare-fun b!1304323 () Bool)

(declare-fun res!866334 () Bool)

(assert (=> b!1304323 (=> (not res!866334) (not e!744010))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1304323 (= res!866334 (not (validKeyInArray!0 (select (arr!41905 _keys!1741) from!2144))))))

(declare-fun b!1304324 () Bool)

(assert (=> b!1304324 (= e!744013 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!1205)))))

(declare-fun b!1304325 () Bool)

(assert (=> b!1304325 (= e!744009 tp_is_empty!34929)))

(declare-fun b!1304326 () Bool)

(declare-fun e!744008 () Bool)

(assert (=> b!1304326 (= e!744011 (and e!744008 mapRes!53993))))

(declare-fun condMapEmpty!53993 () Bool)

(declare-fun mapDefault!53993 () ValueCell!16566)

(assert (=> b!1304326 (= condMapEmpty!53993 (= (arr!41904 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16566)) mapDefault!53993)))))

(declare-fun b!1304327 () Bool)

(declare-fun res!866339 () Bool)

(assert (=> b!1304327 (=> (not res!866339) (not e!744010))))

(declare-datatypes ((List!29947 0))(
  ( (Nil!29944) (Cons!29943 (h!31152 (_ BitVec 64)) (t!43552 List!29947)) )
))
(declare-fun arrayNoDuplicates!0 (array!86841 (_ BitVec 32) List!29947) Bool)

(assert (=> b!1304327 (= res!866339 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29944))))

(declare-fun b!1304328 () Bool)

(assert (=> b!1304328 (= e!744008 tp_is_empty!34929)))

(declare-fun b!1304329 () Bool)

(assert (=> b!1304329 (= e!744010 (not e!744012))))

(declare-fun res!866336 () Bool)

(assert (=> b!1304329 (=> res!866336 e!744012)))

(assert (=> b!1304329 (= res!866336 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1304329 (not (contains!8323 (ListLongMap!20466 Nil!29943) k0!1205))))

(declare-datatypes ((Unit!43144 0))(
  ( (Unit!43145) )
))
(declare-fun lt!583710 () Unit!43144)

(declare-fun emptyContainsNothing!231 ((_ BitVec 64)) Unit!43144)

(assert (=> b!1304329 (= lt!583710 (emptyContainsNothing!231 k0!1205))))

(assert (= (and start!110202 res!866332) b!1304318))

(assert (= (and b!1304318 res!866338) b!1304321))

(assert (= (and b!1304321 res!866333) b!1304327))

(assert (= (and b!1304327 res!866339) b!1304319))

(assert (= (and b!1304319 res!866337) b!1304317))

(assert (= (and b!1304317 res!866331) b!1304320))

(assert (= (and b!1304320 res!866335) b!1304323))

(assert (= (and b!1304323 res!866334) b!1304329))

(assert (= (and b!1304329 (not res!866336)) b!1304322))

(assert (= (and b!1304322 res!866330) b!1304324))

(assert (= (and b!1304326 condMapEmpty!53993) mapIsEmpty!53993))

(assert (= (and b!1304326 (not condMapEmpty!53993)) mapNonEmpty!53993))

(get-info :version)

(assert (= (and mapNonEmpty!53993 ((_ is ValueCellFull!16566) mapValue!53993)) b!1304325))

(assert (= (and b!1304326 ((_ is ValueCellFull!16566) mapDefault!53993)) b!1304328))

(assert (= start!110202 b!1304326))

(declare-fun m!1195311 () Bool)

(assert (=> b!1304322 m!1195311))

(assert (=> b!1304322 m!1195311))

(declare-fun m!1195313 () Bool)

(assert (=> b!1304322 m!1195313))

(declare-fun m!1195315 () Bool)

(assert (=> start!110202 m!1195315))

(declare-fun m!1195317 () Bool)

(assert (=> start!110202 m!1195317))

(declare-fun m!1195319 () Bool)

(assert (=> start!110202 m!1195319))

(declare-fun m!1195321 () Bool)

(assert (=> mapNonEmpty!53993 m!1195321))

(declare-fun m!1195323 () Bool)

(assert (=> b!1304323 m!1195323))

(assert (=> b!1304323 m!1195323))

(declare-fun m!1195325 () Bool)

(assert (=> b!1304323 m!1195325))

(declare-fun m!1195327 () Bool)

(assert (=> b!1304321 m!1195327))

(declare-fun m!1195329 () Bool)

(assert (=> b!1304329 m!1195329))

(declare-fun m!1195331 () Bool)

(assert (=> b!1304329 m!1195331))

(declare-fun m!1195333 () Bool)

(assert (=> b!1304317 m!1195333))

(assert (=> b!1304317 m!1195333))

(declare-fun m!1195335 () Bool)

(assert (=> b!1304317 m!1195335))

(declare-fun m!1195337 () Bool)

(assert (=> b!1304327 m!1195337))

(check-sat (not b!1304322) (not start!110202) (not b!1304323) b_and!47479 tp_is_empty!34929 (not mapNonEmpty!53993) (not b!1304327) (not b!1304321) (not b!1304329) (not b_next!29289) (not b!1304317))
(check-sat b_and!47479 (not b_next!29289))
(get-model)

(declare-fun d!141729 () Bool)

(declare-fun e!744039 () Bool)

(assert (=> d!141729 e!744039))

(declare-fun res!866372 () Bool)

(assert (=> d!141729 (=> res!866372 e!744039)))

(declare-fun lt!583722 () Bool)

(assert (=> d!141729 (= res!866372 (not lt!583722))))

(declare-fun lt!583724 () Bool)

(assert (=> d!141729 (= lt!583722 lt!583724)))

(declare-fun lt!583723 () Unit!43144)

(declare-fun e!744040 () Unit!43144)

(assert (=> d!141729 (= lt!583723 e!744040)))

(declare-fun c!125166 () Bool)

(assert (=> d!141729 (= c!125166 lt!583724)))

(declare-fun containsKey!727 (List!29946 (_ BitVec 64)) Bool)

(assert (=> d!141729 (= lt!583724 (containsKey!727 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141729 (= (contains!8323 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!583722)))

(declare-fun b!1304375 () Bool)

(declare-fun lt!583725 () Unit!43144)

(assert (=> b!1304375 (= e!744040 lt!583725)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!472 (List!29946 (_ BitVec 64)) Unit!43144)

(assert (=> b!1304375 (= lt!583725 (lemmaContainsKeyImpliesGetValueByKeyDefined!472 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-datatypes ((Option!760 0))(
  ( (Some!759 (v!20158 V!51675)) (None!758) )
))
(declare-fun isDefined!512 (Option!760) Bool)

(declare-fun getValueByKey!709 (List!29946 (_ BitVec 64)) Option!760)

(assert (=> b!1304375 (isDefined!512 (getValueByKey!709 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1304376 () Bool)

(declare-fun Unit!43146 () Unit!43144)

(assert (=> b!1304376 (= e!744040 Unit!43146)))

(declare-fun b!1304377 () Bool)

(assert (=> b!1304377 (= e!744039 (isDefined!512 (getValueByKey!709 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141729 c!125166) b!1304375))

(assert (= (and d!141729 (not c!125166)) b!1304376))

(assert (= (and d!141729 (not res!866372)) b!1304377))

(declare-fun m!1195367 () Bool)

(assert (=> d!141729 m!1195367))

(declare-fun m!1195369 () Bool)

(assert (=> b!1304375 m!1195369))

(declare-fun m!1195371 () Bool)

(assert (=> b!1304375 m!1195371))

(assert (=> b!1304375 m!1195371))

(declare-fun m!1195373 () Bool)

(assert (=> b!1304375 m!1195373))

(assert (=> b!1304377 m!1195371))

(assert (=> b!1304377 m!1195371))

(assert (=> b!1304377 m!1195373))

(assert (=> b!1304322 d!141729))

(declare-fun d!141731 () Bool)

(declare-fun e!744056 () Bool)

(assert (=> d!141731 e!744056))

(declare-fun res!866384 () Bool)

(assert (=> d!141731 (=> (not res!866384) (not e!744056))))

(declare-fun lt!583742 () ListLongMap!20465)

(assert (=> d!141731 (= res!866384 (not (contains!8323 lt!583742 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!744060 () ListLongMap!20465)

(assert (=> d!141731 (= lt!583742 e!744060)))

(declare-fun c!125178 () Bool)

(assert (=> d!141731 (= c!125178 (bvsge from!2144 (size!42456 _keys!1741)))))

(assert (=> d!141731 (validMask!0 mask!2175)))

(assert (=> d!141731 (= (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!583742)))

(declare-fun b!1304402 () Bool)

(assert (=> b!1304402 (= e!744060 (ListLongMap!20466 Nil!29943))))

(declare-fun e!744057 () Bool)

(declare-fun b!1304403 () Bool)

(assert (=> b!1304403 (= e!744057 (= lt!583742 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun call!64268 () ListLongMap!20465)

(declare-fun bm!64265 () Bool)

(assert (=> bm!64265 (= call!64268 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1304404 () Bool)

(declare-fun e!744059 () ListLongMap!20465)

(assert (=> b!1304404 (= e!744060 e!744059)))

(declare-fun c!125176 () Bool)

(assert (=> b!1304404 (= c!125176 (validKeyInArray!0 (select (arr!41905 _keys!1741) from!2144)))))

(declare-fun b!1304405 () Bool)

(declare-fun lt!583740 () Unit!43144)

(declare-fun lt!583746 () Unit!43144)

(assert (=> b!1304405 (= lt!583740 lt!583746)))

(declare-fun lt!583743 () (_ BitVec 64))

(declare-fun lt!583745 () ListLongMap!20465)

(declare-fun lt!583741 () V!51675)

(declare-fun lt!583744 () (_ BitVec 64))

(declare-fun +!4465 (ListLongMap!20465 tuple2!22796) ListLongMap!20465)

(assert (=> b!1304405 (not (contains!8323 (+!4465 lt!583745 (tuple2!22797 lt!583744 lt!583741)) lt!583743))))

(declare-fun addStillNotContains!489 (ListLongMap!20465 (_ BitVec 64) V!51675 (_ BitVec 64)) Unit!43144)

(assert (=> b!1304405 (= lt!583746 (addStillNotContains!489 lt!583745 lt!583744 lt!583741 lt!583743))))

(assert (=> b!1304405 (= lt!583743 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!21215 (ValueCell!16566 V!51675) V!51675)

(declare-fun dynLambda!3511 (Int (_ BitVec 64)) V!51675)

(assert (=> b!1304405 (= lt!583741 (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1304405 (= lt!583744 (select (arr!41905 _keys!1741) from!2144))))

(assert (=> b!1304405 (= lt!583745 call!64268)))

(assert (=> b!1304405 (= e!744059 (+!4465 call!64268 (tuple2!22797 (select (arr!41905 _keys!1741) from!2144) (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1304406 () Bool)

(declare-fun e!744055 () Bool)

(assert (=> b!1304406 (= e!744056 e!744055)))

(declare-fun c!125175 () Bool)

(declare-fun e!744061 () Bool)

(assert (=> b!1304406 (= c!125175 e!744061)))

(declare-fun res!866382 () Bool)

(assert (=> b!1304406 (=> (not res!866382) (not e!744061))))

(assert (=> b!1304406 (= res!866382 (bvslt from!2144 (size!42456 _keys!1741)))))

(declare-fun b!1304407 () Bool)

(declare-fun res!866383 () Bool)

(assert (=> b!1304407 (=> (not res!866383) (not e!744056))))

(assert (=> b!1304407 (= res!866383 (not (contains!8323 lt!583742 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1304408 () Bool)

(assert (=> b!1304408 (= e!744055 e!744057)))

(declare-fun c!125177 () Bool)

(assert (=> b!1304408 (= c!125177 (bvslt from!2144 (size!42456 _keys!1741)))))

(declare-fun b!1304409 () Bool)

(declare-fun e!744058 () Bool)

(assert (=> b!1304409 (= e!744055 e!744058)))

(assert (=> b!1304409 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42456 _keys!1741)))))

(declare-fun res!866381 () Bool)

(assert (=> b!1304409 (= res!866381 (contains!8323 lt!583742 (select (arr!41905 _keys!1741) from!2144)))))

(assert (=> b!1304409 (=> (not res!866381) (not e!744058))))

(declare-fun b!1304410 () Bool)

(assert (=> b!1304410 (= e!744061 (validKeyInArray!0 (select (arr!41905 _keys!1741) from!2144)))))

(assert (=> b!1304410 (bvsge from!2144 #b00000000000000000000000000000000)))

(declare-fun b!1304411 () Bool)

(assert (=> b!1304411 (= e!744059 call!64268)))

(declare-fun b!1304412 () Bool)

(assert (=> b!1304412 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42456 _keys!1741)))))

(assert (=> b!1304412 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42455 _values!1445)))))

(declare-fun apply!1059 (ListLongMap!20465 (_ BitVec 64)) V!51675)

(assert (=> b!1304412 (= e!744058 (= (apply!1059 lt!583742 (select (arr!41905 _keys!1741) from!2144)) (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1304413 () Bool)

(declare-fun isEmpty!1069 (ListLongMap!20465) Bool)

(assert (=> b!1304413 (= e!744057 (isEmpty!1069 lt!583742))))

(assert (= (and d!141731 c!125178) b!1304402))

(assert (= (and d!141731 (not c!125178)) b!1304404))

(assert (= (and b!1304404 c!125176) b!1304405))

(assert (= (and b!1304404 (not c!125176)) b!1304411))

(assert (= (or b!1304405 b!1304411) bm!64265))

(assert (= (and d!141731 res!866384) b!1304407))

(assert (= (and b!1304407 res!866383) b!1304406))

(assert (= (and b!1304406 res!866382) b!1304410))

(assert (= (and b!1304406 c!125175) b!1304409))

(assert (= (and b!1304406 (not c!125175)) b!1304408))

(assert (= (and b!1304409 res!866381) b!1304412))

(assert (= (and b!1304408 c!125177) b!1304403))

(assert (= (and b!1304408 (not c!125177)) b!1304413))

(declare-fun b_lambda!23317 () Bool)

(assert (=> (not b_lambda!23317) (not b!1304405)))

(declare-fun t!43554 () Bool)

(declare-fun tb!11411 () Bool)

(assert (=> (and start!110202 (= defaultEntry!1448 defaultEntry!1448) t!43554) tb!11411))

(declare-fun result!23839 () Bool)

(assert (=> tb!11411 (= result!23839 tp_is_empty!34929)))

(assert (=> b!1304405 t!43554))

(declare-fun b_and!47483 () Bool)

(assert (= b_and!47479 (and (=> t!43554 result!23839) b_and!47483)))

(declare-fun b_lambda!23319 () Bool)

(assert (=> (not b_lambda!23319) (not b!1304412)))

(assert (=> b!1304412 t!43554))

(declare-fun b_and!47485 () Bool)

(assert (= b_and!47483 (and (=> t!43554 result!23839) b_and!47485)))

(declare-fun m!1195375 () Bool)

(assert (=> b!1304405 m!1195375))

(declare-fun m!1195377 () Bool)

(assert (=> b!1304405 m!1195377))

(assert (=> b!1304405 m!1195375))

(declare-fun m!1195379 () Bool)

(assert (=> b!1304405 m!1195379))

(declare-fun m!1195381 () Bool)

(assert (=> b!1304405 m!1195381))

(assert (=> b!1304405 m!1195379))

(declare-fun m!1195383 () Bool)

(assert (=> b!1304405 m!1195383))

(assert (=> b!1304405 m!1195323))

(assert (=> b!1304405 m!1195383))

(declare-fun m!1195385 () Bool)

(assert (=> b!1304405 m!1195385))

(declare-fun m!1195387 () Bool)

(assert (=> b!1304405 m!1195387))

(assert (=> b!1304409 m!1195323))

(assert (=> b!1304409 m!1195323))

(declare-fun m!1195389 () Bool)

(assert (=> b!1304409 m!1195389))

(declare-fun m!1195391 () Bool)

(assert (=> bm!64265 m!1195391))

(declare-fun m!1195393 () Bool)

(assert (=> b!1304407 m!1195393))

(assert (=> b!1304410 m!1195323))

(assert (=> b!1304410 m!1195323))

(assert (=> b!1304410 m!1195325))

(declare-fun m!1195395 () Bool)

(assert (=> b!1304413 m!1195395))

(declare-fun m!1195397 () Bool)

(assert (=> d!141731 m!1195397))

(assert (=> d!141731 m!1195315))

(assert (=> b!1304404 m!1195323))

(assert (=> b!1304404 m!1195323))

(assert (=> b!1304404 m!1195325))

(assert (=> b!1304403 m!1195391))

(assert (=> b!1304412 m!1195375))

(assert (=> b!1304412 m!1195375))

(assert (=> b!1304412 m!1195379))

(assert (=> b!1304412 m!1195381))

(assert (=> b!1304412 m!1195323))

(assert (=> b!1304412 m!1195379))

(assert (=> b!1304412 m!1195323))

(declare-fun m!1195399 () Bool)

(assert (=> b!1304412 m!1195399))

(assert (=> b!1304322 d!141731))

(declare-fun b!1304426 () Bool)

(declare-fun e!744070 () Bool)

(declare-fun e!744073 () Bool)

(assert (=> b!1304426 (= e!744070 e!744073)))

(declare-fun res!866393 () Bool)

(assert (=> b!1304426 (=> (not res!866393) (not e!744073))))

(declare-fun e!744071 () Bool)

(assert (=> b!1304426 (= res!866393 (not e!744071))))

(declare-fun res!866391 () Bool)

(assert (=> b!1304426 (=> (not res!866391) (not e!744071))))

(assert (=> b!1304426 (= res!866391 (validKeyInArray!0 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1304427 () Bool)

(declare-fun e!744072 () Bool)

(assert (=> b!1304427 (= e!744073 e!744072)))

(declare-fun c!125181 () Bool)

(assert (=> b!1304427 (= c!125181 (validKeyInArray!0 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun bm!64268 () Bool)

(declare-fun call!64271 () Bool)

(assert (=> bm!64268 (= call!64271 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125181 (Cons!29943 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000) Nil!29944) Nil!29944)))))

(declare-fun b!1304428 () Bool)

(declare-fun contains!8324 (List!29947 (_ BitVec 64)) Bool)

(assert (=> b!1304428 (= e!744071 (contains!8324 Nil!29944 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1304429 () Bool)

(assert (=> b!1304429 (= e!744072 call!64271)))

(declare-fun b!1304430 () Bool)

(assert (=> b!1304430 (= e!744072 call!64271)))

(declare-fun d!141733 () Bool)

(declare-fun res!866392 () Bool)

(assert (=> d!141733 (=> res!866392 e!744070)))

(assert (=> d!141733 (= res!866392 (bvsge #b00000000000000000000000000000000 (size!42456 _keys!1741)))))

(assert (=> d!141733 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29944) e!744070)))

(assert (= (and d!141733 (not res!866392)) b!1304426))

(assert (= (and b!1304426 res!866391) b!1304428))

(assert (= (and b!1304426 res!866393) b!1304427))

(assert (= (and b!1304427 c!125181) b!1304429))

(assert (= (and b!1304427 (not c!125181)) b!1304430))

(assert (= (or b!1304429 b!1304430) bm!64268))

(declare-fun m!1195401 () Bool)

(assert (=> b!1304426 m!1195401))

(assert (=> b!1304426 m!1195401))

(declare-fun m!1195403 () Bool)

(assert (=> b!1304426 m!1195403))

(assert (=> b!1304427 m!1195401))

(assert (=> b!1304427 m!1195401))

(assert (=> b!1304427 m!1195403))

(assert (=> bm!64268 m!1195401))

(declare-fun m!1195405 () Bool)

(assert (=> bm!64268 m!1195405))

(assert (=> b!1304428 m!1195401))

(assert (=> b!1304428 m!1195401))

(declare-fun m!1195407 () Bool)

(assert (=> b!1304428 m!1195407))

(assert (=> b!1304327 d!141733))

(declare-fun d!141735 () Bool)

(assert (=> d!141735 (= (validKeyInArray!0 (select (arr!41905 _keys!1741) from!2144)) (and (not (= (select (arr!41905 _keys!1741) from!2144) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41905 _keys!1741) from!2144) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1304323 d!141735))

(declare-fun d!141737 () Bool)

(declare-fun e!744074 () Bool)

(assert (=> d!141737 e!744074))

(declare-fun res!866394 () Bool)

(assert (=> d!141737 (=> res!866394 e!744074)))

(declare-fun lt!583747 () Bool)

(assert (=> d!141737 (= res!866394 (not lt!583747))))

(declare-fun lt!583749 () Bool)

(assert (=> d!141737 (= lt!583747 lt!583749)))

(declare-fun lt!583748 () Unit!43144)

(declare-fun e!744075 () Unit!43144)

(assert (=> d!141737 (= lt!583748 e!744075)))

(declare-fun c!125182 () Bool)

(assert (=> d!141737 (= c!125182 lt!583749)))

(assert (=> d!141737 (= lt!583749 (containsKey!727 (toList!10248 (ListLongMap!20466 Nil!29943)) k0!1205))))

(assert (=> d!141737 (= (contains!8323 (ListLongMap!20466 Nil!29943) k0!1205) lt!583747)))

(declare-fun b!1304431 () Bool)

(declare-fun lt!583750 () Unit!43144)

(assert (=> b!1304431 (= e!744075 lt!583750)))

(assert (=> b!1304431 (= lt!583750 (lemmaContainsKeyImpliesGetValueByKeyDefined!472 (toList!10248 (ListLongMap!20466 Nil!29943)) k0!1205))))

(assert (=> b!1304431 (isDefined!512 (getValueByKey!709 (toList!10248 (ListLongMap!20466 Nil!29943)) k0!1205))))

(declare-fun b!1304432 () Bool)

(declare-fun Unit!43147 () Unit!43144)

(assert (=> b!1304432 (= e!744075 Unit!43147)))

(declare-fun b!1304433 () Bool)

(assert (=> b!1304433 (= e!744074 (isDefined!512 (getValueByKey!709 (toList!10248 (ListLongMap!20466 Nil!29943)) k0!1205)))))

(assert (= (and d!141737 c!125182) b!1304431))

(assert (= (and d!141737 (not c!125182)) b!1304432))

(assert (= (and d!141737 (not res!866394)) b!1304433))

(declare-fun m!1195409 () Bool)

(assert (=> d!141737 m!1195409))

(declare-fun m!1195411 () Bool)

(assert (=> b!1304431 m!1195411))

(declare-fun m!1195413 () Bool)

(assert (=> b!1304431 m!1195413))

(assert (=> b!1304431 m!1195413))

(declare-fun m!1195415 () Bool)

(assert (=> b!1304431 m!1195415))

(assert (=> b!1304433 m!1195413))

(assert (=> b!1304433 m!1195413))

(assert (=> b!1304433 m!1195415))

(assert (=> b!1304329 d!141737))

(declare-fun d!141739 () Bool)

(assert (=> d!141739 (not (contains!8323 (ListLongMap!20466 Nil!29943) k0!1205))))

(declare-fun lt!583753 () Unit!43144)

(declare-fun choose!1937 ((_ BitVec 64)) Unit!43144)

(assert (=> d!141739 (= lt!583753 (choose!1937 k0!1205))))

(assert (=> d!141739 (= (emptyContainsNothing!231 k0!1205) lt!583753)))

(declare-fun bs!37145 () Bool)

(assert (= bs!37145 d!141739))

(assert (=> bs!37145 m!1195329))

(declare-fun m!1195417 () Bool)

(assert (=> bs!37145 m!1195417))

(assert (=> b!1304329 d!141739))

(declare-fun b!1304442 () Bool)

(declare-fun e!744084 () Bool)

(declare-fun e!744082 () Bool)

(assert (=> b!1304442 (= e!744084 e!744082)))

(declare-fun c!125185 () Bool)

(assert (=> b!1304442 (= c!125185 (validKeyInArray!0 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1304443 () Bool)

(declare-fun e!744083 () Bool)

(declare-fun call!64274 () Bool)

(assert (=> b!1304443 (= e!744083 call!64274)))

(declare-fun bm!64271 () Bool)

(assert (=> bm!64271 (= call!64274 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1304444 () Bool)

(assert (=> b!1304444 (= e!744082 call!64274)))

(declare-fun d!141741 () Bool)

(declare-fun res!866400 () Bool)

(assert (=> d!141741 (=> res!866400 e!744084)))

(assert (=> d!141741 (= res!866400 (bvsge #b00000000000000000000000000000000 (size!42456 _keys!1741)))))

(assert (=> d!141741 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!744084)))

(declare-fun b!1304445 () Bool)

(assert (=> b!1304445 (= e!744082 e!744083)))

(declare-fun lt!583761 () (_ BitVec 64))

(assert (=> b!1304445 (= lt!583761 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!583760 () Unit!43144)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86841 (_ BitVec 64) (_ BitVec 32)) Unit!43144)

(assert (=> b!1304445 (= lt!583760 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!583761 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86841 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1304445 (arrayContainsKey!0 _keys!1741 lt!583761 #b00000000000000000000000000000000)))

(declare-fun lt!583762 () Unit!43144)

(assert (=> b!1304445 (= lt!583762 lt!583760)))

(declare-fun res!866399 () Bool)

(declare-datatypes ((SeekEntryResult!10024 0))(
  ( (MissingZero!10024 (index!42466 (_ BitVec 32))) (Found!10024 (index!42467 (_ BitVec 32))) (Intermediate!10024 (undefined!10836 Bool) (index!42468 (_ BitVec 32)) (x!115853 (_ BitVec 32))) (Undefined!10024) (MissingVacant!10024 (index!42469 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86841 (_ BitVec 32)) SeekEntryResult!10024)

(assert (=> b!1304445 (= res!866399 (= (seekEntryOrOpen!0 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10024 #b00000000000000000000000000000000)))))

(assert (=> b!1304445 (=> (not res!866399) (not e!744083))))

(assert (= (and d!141741 (not res!866400)) b!1304442))

(assert (= (and b!1304442 c!125185) b!1304445))

(assert (= (and b!1304442 (not c!125185)) b!1304444))

(assert (= (and b!1304445 res!866399) b!1304443))

(assert (= (or b!1304443 b!1304444) bm!64271))

(assert (=> b!1304442 m!1195401))

(assert (=> b!1304442 m!1195401))

(assert (=> b!1304442 m!1195403))

(declare-fun m!1195419 () Bool)

(assert (=> bm!64271 m!1195419))

(assert (=> b!1304445 m!1195401))

(declare-fun m!1195421 () Bool)

(assert (=> b!1304445 m!1195421))

(declare-fun m!1195423 () Bool)

(assert (=> b!1304445 m!1195423))

(assert (=> b!1304445 m!1195401))

(declare-fun m!1195425 () Bool)

(assert (=> b!1304445 m!1195425))

(assert (=> b!1304321 d!141741))

(declare-fun d!141743 () Bool)

(declare-fun e!744085 () Bool)

(assert (=> d!141743 e!744085))

(declare-fun res!866401 () Bool)

(assert (=> d!141743 (=> res!866401 e!744085)))

(declare-fun lt!583763 () Bool)

(assert (=> d!141743 (= res!866401 (not lt!583763))))

(declare-fun lt!583765 () Bool)

(assert (=> d!141743 (= lt!583763 lt!583765)))

(declare-fun lt!583764 () Unit!43144)

(declare-fun e!744086 () Unit!43144)

(assert (=> d!141743 (= lt!583764 e!744086)))

(declare-fun c!125186 () Bool)

(assert (=> d!141743 (= c!125186 lt!583765)))

(assert (=> d!141743 (= lt!583765 (containsKey!727 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141743 (= (contains!8323 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!583763)))

(declare-fun b!1304446 () Bool)

(declare-fun lt!583766 () Unit!43144)

(assert (=> b!1304446 (= e!744086 lt!583766)))

(assert (=> b!1304446 (= lt!583766 (lemmaContainsKeyImpliesGetValueByKeyDefined!472 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> b!1304446 (isDefined!512 (getValueByKey!709 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1304447 () Bool)

(declare-fun Unit!43148 () Unit!43144)

(assert (=> b!1304447 (= e!744086 Unit!43148)))

(declare-fun b!1304448 () Bool)

(assert (=> b!1304448 (= e!744085 (isDefined!512 (getValueByKey!709 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141743 c!125186) b!1304446))

(assert (= (and d!141743 (not c!125186)) b!1304447))

(assert (= (and d!141743 (not res!866401)) b!1304448))

(declare-fun m!1195427 () Bool)

(assert (=> d!141743 m!1195427))

(declare-fun m!1195429 () Bool)

(assert (=> b!1304446 m!1195429))

(declare-fun m!1195431 () Bool)

(assert (=> b!1304446 m!1195431))

(assert (=> b!1304446 m!1195431))

(declare-fun m!1195433 () Bool)

(assert (=> b!1304446 m!1195433))

(assert (=> b!1304448 m!1195431))

(assert (=> b!1304448 m!1195431))

(assert (=> b!1304448 m!1195433))

(assert (=> b!1304317 d!141743))

(declare-fun b!1304491 () Bool)

(declare-fun res!866420 () Bool)

(declare-fun e!744115 () Bool)

(assert (=> b!1304491 (=> (not res!866420) (not e!744115))))

(declare-fun e!744122 () Bool)

(assert (=> b!1304491 (= res!866420 e!744122)))

(declare-fun c!125200 () Bool)

(assert (=> b!1304491 (= c!125200 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!64286 () Bool)

(declare-fun call!64295 () ListLongMap!20465)

(declare-fun call!64294 () ListLongMap!20465)

(assert (=> bm!64286 (= call!64295 call!64294)))

(declare-fun b!1304492 () Bool)

(declare-fun e!744116 () Bool)

(assert (=> b!1304492 (= e!744115 e!744116)))

(declare-fun c!125201 () Bool)

(assert (=> b!1304492 (= c!125201 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1304493 () Bool)

(declare-fun e!744120 () Unit!43144)

(declare-fun lt!583824 () Unit!43144)

(assert (=> b!1304493 (= e!744120 lt!583824)))

(declare-fun lt!583828 () ListLongMap!20465)

(assert (=> b!1304493 (= lt!583828 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583823 () (_ BitVec 64))

(assert (=> b!1304493 (= lt!583823 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583820 () (_ BitVec 64))

(assert (=> b!1304493 (= lt!583820 (select (arr!41905 _keys!1741) from!2144))))

(declare-fun lt!583830 () Unit!43144)

(declare-fun addStillContains!1128 (ListLongMap!20465 (_ BitVec 64) V!51675 (_ BitVec 64)) Unit!43144)

(assert (=> b!1304493 (= lt!583830 (addStillContains!1128 lt!583828 lt!583823 zeroValue!1387 lt!583820))))

(assert (=> b!1304493 (contains!8323 (+!4465 lt!583828 (tuple2!22797 lt!583823 zeroValue!1387)) lt!583820)))

(declare-fun lt!583821 () Unit!43144)

(assert (=> b!1304493 (= lt!583821 lt!583830)))

(declare-fun lt!583814 () ListLongMap!20465)

(assert (=> b!1304493 (= lt!583814 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583816 () (_ BitVec 64))

(assert (=> b!1304493 (= lt!583816 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583822 () (_ BitVec 64))

(assert (=> b!1304493 (= lt!583822 (select (arr!41905 _keys!1741) from!2144))))

(declare-fun lt!583827 () Unit!43144)

(declare-fun addApplyDifferent!562 (ListLongMap!20465 (_ BitVec 64) V!51675 (_ BitVec 64)) Unit!43144)

(assert (=> b!1304493 (= lt!583827 (addApplyDifferent!562 lt!583814 lt!583816 minValue!1387 lt!583822))))

(assert (=> b!1304493 (= (apply!1059 (+!4465 lt!583814 (tuple2!22797 lt!583816 minValue!1387)) lt!583822) (apply!1059 lt!583814 lt!583822))))

(declare-fun lt!583829 () Unit!43144)

(assert (=> b!1304493 (= lt!583829 lt!583827)))

(declare-fun lt!583831 () ListLongMap!20465)

(assert (=> b!1304493 (= lt!583831 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583826 () (_ BitVec 64))

(assert (=> b!1304493 (= lt!583826 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583811 () (_ BitVec 64))

(assert (=> b!1304493 (= lt!583811 (select (arr!41905 _keys!1741) from!2144))))

(declare-fun lt!583812 () Unit!43144)

(assert (=> b!1304493 (= lt!583812 (addApplyDifferent!562 lt!583831 lt!583826 zeroValue!1387 lt!583811))))

(assert (=> b!1304493 (= (apply!1059 (+!4465 lt!583831 (tuple2!22797 lt!583826 zeroValue!1387)) lt!583811) (apply!1059 lt!583831 lt!583811))))

(declare-fun lt!583825 () Unit!43144)

(assert (=> b!1304493 (= lt!583825 lt!583812)))

(declare-fun lt!583817 () ListLongMap!20465)

(assert (=> b!1304493 (= lt!583817 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583818 () (_ BitVec 64))

(assert (=> b!1304493 (= lt!583818 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583815 () (_ BitVec 64))

(assert (=> b!1304493 (= lt!583815 (select (arr!41905 _keys!1741) from!2144))))

(assert (=> b!1304493 (= lt!583824 (addApplyDifferent!562 lt!583817 lt!583818 minValue!1387 lt!583815))))

(assert (=> b!1304493 (= (apply!1059 (+!4465 lt!583817 (tuple2!22797 lt!583818 minValue!1387)) lt!583815) (apply!1059 lt!583817 lt!583815))))

(declare-fun bm!64287 () Bool)

(declare-fun call!64292 () ListLongMap!20465)

(assert (=> bm!64287 (= call!64294 call!64292)))

(declare-fun b!1304494 () Bool)

(declare-fun e!744114 () Bool)

(declare-fun lt!583813 () ListLongMap!20465)

(assert (=> b!1304494 (= e!744114 (= (apply!1059 lt!583813 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1304495 () Bool)

(declare-fun e!744124 () Bool)

(assert (=> b!1304495 (= e!744122 e!744124)))

(declare-fun res!866428 () Bool)

(declare-fun call!64290 () Bool)

(assert (=> b!1304495 (= res!866428 call!64290)))

(assert (=> b!1304495 (=> (not res!866428) (not e!744124))))

(declare-fun b!1304496 () Bool)

(declare-fun e!744113 () ListLongMap!20465)

(declare-fun e!744118 () ListLongMap!20465)

(assert (=> b!1304496 (= e!744113 e!744118)))

(declare-fun c!125203 () Bool)

(assert (=> b!1304496 (= c!125203 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1304497 () Bool)

(declare-fun e!744121 () Bool)

(declare-fun e!744117 () Bool)

(assert (=> b!1304497 (= e!744121 e!744117)))

(declare-fun res!866423 () Bool)

(assert (=> b!1304497 (=> (not res!866423) (not e!744117))))

(assert (=> b!1304497 (= res!866423 (contains!8323 lt!583813 (select (arr!41905 _keys!1741) from!2144)))))

(assert (=> b!1304497 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42456 _keys!1741)))))

(declare-fun d!141745 () Bool)

(assert (=> d!141745 e!744115))

(declare-fun res!866427 () Bool)

(assert (=> d!141745 (=> (not res!866427) (not e!744115))))

(assert (=> d!141745 (= res!866427 (or (bvsge from!2144 (size!42456 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42456 _keys!1741)))))))

(declare-fun lt!583819 () ListLongMap!20465)

(assert (=> d!141745 (= lt!583813 lt!583819)))

(declare-fun lt!583832 () Unit!43144)

(assert (=> d!141745 (= lt!583832 e!744120)))

(declare-fun c!125202 () Bool)

(declare-fun e!744119 () Bool)

(assert (=> d!141745 (= c!125202 e!744119)))

(declare-fun res!866421 () Bool)

(assert (=> d!141745 (=> (not res!866421) (not e!744119))))

(assert (=> d!141745 (= res!866421 (bvslt from!2144 (size!42456 _keys!1741)))))

(assert (=> d!141745 (= lt!583819 e!744113)))

(declare-fun c!125199 () Bool)

(assert (=> d!141745 (= c!125199 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!141745 (validMask!0 mask!2175)))

(assert (=> d!141745 (= (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!583813)))

(declare-fun b!1304498 () Bool)

(declare-fun call!64291 () ListLongMap!20465)

(assert (=> b!1304498 (= e!744118 call!64291)))

(declare-fun bm!64288 () Bool)

(declare-fun call!64289 () ListLongMap!20465)

(assert (=> bm!64288 (= call!64289 (+!4465 (ite c!125199 call!64292 (ite c!125203 call!64294 call!64295)) (ite (or c!125199 c!125203) (tuple2!22797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1304499 () Bool)

(assert (=> b!1304499 (= e!744113 (+!4465 call!64289 (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1304500 () Bool)

(assert (=> b!1304500 (= e!744119 (validKeyInArray!0 (select (arr!41905 _keys!1741) from!2144)))))

(declare-fun b!1304501 () Bool)

(assert (=> b!1304501 (= e!744124 (= (apply!1059 lt!583813 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun bm!64289 () Bool)

(declare-fun call!64293 () Bool)

(assert (=> bm!64289 (= call!64293 (contains!8323 lt!583813 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1304502 () Bool)

(declare-fun e!744125 () ListLongMap!20465)

(assert (=> b!1304502 (= e!744125 call!64291)))

(declare-fun bm!64290 () Bool)

(assert (=> bm!64290 (= call!64292 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1304503 () Bool)

(assert (=> b!1304503 (= e!744125 call!64295)))

(declare-fun b!1304504 () Bool)

(assert (=> b!1304504 (= e!744116 (not call!64293))))

(declare-fun b!1304505 () Bool)

(assert (=> b!1304505 (= e!744117 (= (apply!1059 lt!583813 (select (arr!41905 _keys!1741) from!2144)) (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1304505 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42455 _values!1445)))))

(assert (=> b!1304505 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42456 _keys!1741)))))

(declare-fun b!1304506 () Bool)

(declare-fun res!866425 () Bool)

(assert (=> b!1304506 (=> (not res!866425) (not e!744115))))

(assert (=> b!1304506 (= res!866425 e!744121)))

(declare-fun res!866426 () Bool)

(assert (=> b!1304506 (=> res!866426 e!744121)))

(declare-fun e!744123 () Bool)

(assert (=> b!1304506 (= res!866426 (not e!744123))))

(declare-fun res!866424 () Bool)

(assert (=> b!1304506 (=> (not res!866424) (not e!744123))))

(assert (=> b!1304506 (= res!866424 (bvslt from!2144 (size!42456 _keys!1741)))))

(declare-fun b!1304507 () Bool)

(declare-fun Unit!43149 () Unit!43144)

(assert (=> b!1304507 (= e!744120 Unit!43149)))

(declare-fun b!1304508 () Bool)

(declare-fun c!125204 () Bool)

(assert (=> b!1304508 (= c!125204 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1304508 (= e!744118 e!744125)))

(declare-fun b!1304509 () Bool)

(assert (=> b!1304509 (= e!744123 (validKeyInArray!0 (select (arr!41905 _keys!1741) from!2144)))))

(declare-fun b!1304510 () Bool)

(assert (=> b!1304510 (= e!744122 (not call!64290))))

(declare-fun bm!64291 () Bool)

(assert (=> bm!64291 (= call!64291 call!64289)))

(declare-fun b!1304511 () Bool)

(assert (=> b!1304511 (= e!744116 e!744114)))

(declare-fun res!866422 () Bool)

(assert (=> b!1304511 (= res!866422 call!64293)))

(assert (=> b!1304511 (=> (not res!866422) (not e!744114))))

(declare-fun bm!64292 () Bool)

(assert (=> bm!64292 (= call!64290 (contains!8323 lt!583813 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!141745 c!125199) b!1304499))

(assert (= (and d!141745 (not c!125199)) b!1304496))

(assert (= (and b!1304496 c!125203) b!1304498))

(assert (= (and b!1304496 (not c!125203)) b!1304508))

(assert (= (and b!1304508 c!125204) b!1304502))

(assert (= (and b!1304508 (not c!125204)) b!1304503))

(assert (= (or b!1304502 b!1304503) bm!64286))

(assert (= (or b!1304498 bm!64286) bm!64287))

(assert (= (or b!1304498 b!1304502) bm!64291))

(assert (= (or b!1304499 bm!64287) bm!64290))

(assert (= (or b!1304499 bm!64291) bm!64288))

(assert (= (and d!141745 res!866421) b!1304500))

(assert (= (and d!141745 c!125202) b!1304493))

(assert (= (and d!141745 (not c!125202)) b!1304507))

(assert (= (and d!141745 res!866427) b!1304506))

(assert (= (and b!1304506 res!866424) b!1304509))

(assert (= (and b!1304506 (not res!866426)) b!1304497))

(assert (= (and b!1304497 res!866423) b!1304505))

(assert (= (and b!1304506 res!866425) b!1304491))

(assert (= (and b!1304491 c!125200) b!1304495))

(assert (= (and b!1304491 (not c!125200)) b!1304510))

(assert (= (and b!1304495 res!866428) b!1304501))

(assert (= (or b!1304495 b!1304510) bm!64292))

(assert (= (and b!1304491 res!866420) b!1304492))

(assert (= (and b!1304492 c!125201) b!1304511))

(assert (= (and b!1304492 (not c!125201)) b!1304504))

(assert (= (and b!1304511 res!866422) b!1304494))

(assert (= (or b!1304511 b!1304504) bm!64289))

(declare-fun b_lambda!23321 () Bool)

(assert (=> (not b_lambda!23321) (not b!1304505)))

(assert (=> b!1304505 t!43554))

(declare-fun b_and!47487 () Bool)

(assert (= b_and!47485 (and (=> t!43554 result!23839) b_and!47487)))

(declare-fun m!1195435 () Bool)

(assert (=> b!1304501 m!1195435))

(declare-fun m!1195437 () Bool)

(assert (=> bm!64292 m!1195437))

(assert (=> bm!64290 m!1195311))

(declare-fun m!1195439 () Bool)

(assert (=> bm!64289 m!1195439))

(assert (=> d!141745 m!1195315))

(declare-fun m!1195441 () Bool)

(assert (=> b!1304499 m!1195441))

(assert (=> b!1304500 m!1195323))

(assert (=> b!1304500 m!1195323))

(assert (=> b!1304500 m!1195325))

(declare-fun m!1195443 () Bool)

(assert (=> b!1304494 m!1195443))

(declare-fun m!1195445 () Bool)

(assert (=> b!1304493 m!1195445))

(declare-fun m!1195447 () Bool)

(assert (=> b!1304493 m!1195447))

(declare-fun m!1195449 () Bool)

(assert (=> b!1304493 m!1195449))

(declare-fun m!1195451 () Bool)

(assert (=> b!1304493 m!1195451))

(declare-fun m!1195453 () Bool)

(assert (=> b!1304493 m!1195453))

(assert (=> b!1304493 m!1195449))

(declare-fun m!1195455 () Bool)

(assert (=> b!1304493 m!1195455))

(declare-fun m!1195457 () Bool)

(assert (=> b!1304493 m!1195457))

(declare-fun m!1195459 () Bool)

(assert (=> b!1304493 m!1195459))

(declare-fun m!1195461 () Bool)

(assert (=> b!1304493 m!1195461))

(assert (=> b!1304493 m!1195323))

(assert (=> b!1304493 m!1195311))

(declare-fun m!1195463 () Bool)

(assert (=> b!1304493 m!1195463))

(declare-fun m!1195465 () Bool)

(assert (=> b!1304493 m!1195465))

(declare-fun m!1195467 () Bool)

(assert (=> b!1304493 m!1195467))

(assert (=> b!1304493 m!1195453))

(declare-fun m!1195469 () Bool)

(assert (=> b!1304493 m!1195469))

(assert (=> b!1304493 m!1195445))

(declare-fun m!1195471 () Bool)

(assert (=> b!1304493 m!1195471))

(assert (=> b!1304493 m!1195457))

(declare-fun m!1195473 () Bool)

(assert (=> b!1304493 m!1195473))

(assert (=> b!1304509 m!1195323))

(assert (=> b!1304509 m!1195323))

(assert (=> b!1304509 m!1195325))

(declare-fun m!1195475 () Bool)

(assert (=> bm!64288 m!1195475))

(assert (=> b!1304505 m!1195323))

(declare-fun m!1195477 () Bool)

(assert (=> b!1304505 m!1195477))

(assert (=> b!1304505 m!1195375))

(assert (=> b!1304505 m!1195379))

(assert (=> b!1304505 m!1195381))

(assert (=> b!1304505 m!1195379))

(assert (=> b!1304505 m!1195323))

(assert (=> b!1304505 m!1195375))

(assert (=> b!1304497 m!1195323))

(assert (=> b!1304497 m!1195323))

(declare-fun m!1195479 () Bool)

(assert (=> b!1304497 m!1195479))

(assert (=> b!1304317 d!141745))

(declare-fun d!141747 () Bool)

(assert (=> d!141747 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!110202 d!141747))

(declare-fun d!141749 () Bool)

(assert (=> d!141749 (= (array_inv!31691 _values!1445) (bvsge (size!42455 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!110202 d!141749))

(declare-fun d!141751 () Bool)

(assert (=> d!141751 (= (array_inv!31692 _keys!1741) (bvsge (size!42456 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!110202 d!141751))

(declare-fun b!1304518 () Bool)

(declare-fun e!744131 () Bool)

(assert (=> b!1304518 (= e!744131 tp_is_empty!34929)))

(declare-fun mapIsEmpty!53999 () Bool)

(declare-fun mapRes!53999 () Bool)

(assert (=> mapIsEmpty!53999 mapRes!53999))

(declare-fun b!1304519 () Bool)

(declare-fun e!744130 () Bool)

(assert (=> b!1304519 (= e!744130 tp_is_empty!34929)))

(declare-fun mapNonEmpty!53999 () Bool)

(declare-fun tp!103035 () Bool)

(assert (=> mapNonEmpty!53999 (= mapRes!53999 (and tp!103035 e!744131))))

(declare-fun mapKey!53999 () (_ BitVec 32))

(declare-fun mapValue!53999 () ValueCell!16566)

(declare-fun mapRest!53999 () (Array (_ BitVec 32) ValueCell!16566))

(assert (=> mapNonEmpty!53999 (= mapRest!53993 (store mapRest!53999 mapKey!53999 mapValue!53999))))

(declare-fun condMapEmpty!53999 () Bool)

(declare-fun mapDefault!53999 () ValueCell!16566)

(assert (=> mapNonEmpty!53993 (= condMapEmpty!53999 (= mapRest!53993 ((as const (Array (_ BitVec 32) ValueCell!16566)) mapDefault!53999)))))

(assert (=> mapNonEmpty!53993 (= tp!103026 (and e!744130 mapRes!53999))))

(assert (= (and mapNonEmpty!53993 condMapEmpty!53999) mapIsEmpty!53999))

(assert (= (and mapNonEmpty!53993 (not condMapEmpty!53999)) mapNonEmpty!53999))

(assert (= (and mapNonEmpty!53999 ((_ is ValueCellFull!16566) mapValue!53999)) b!1304518))

(assert (= (and mapNonEmpty!53993 ((_ is ValueCellFull!16566) mapDefault!53999)) b!1304519))

(declare-fun m!1195481 () Bool)

(assert (=> mapNonEmpty!53999 m!1195481))

(declare-fun b_lambda!23323 () Bool)

(assert (= b_lambda!23321 (or (and start!110202 b_free!29289) b_lambda!23323)))

(declare-fun b_lambda!23325 () Bool)

(assert (= b_lambda!23317 (or (and start!110202 b_free!29289) b_lambda!23325)))

(declare-fun b_lambda!23327 () Bool)

(assert (= b_lambda!23319 (or (and start!110202 b_free!29289) b_lambda!23327)))

(check-sat (not b_lambda!23323) (not bm!64289) (not b!1304442) (not b!1304428) (not b!1304405) (not b!1304493) (not b!1304445) (not b!1304431) (not b_lambda!23327) (not b_lambda!23325) (not b!1304404) (not bm!64290) (not b!1304427) (not b!1304501) (not b_next!29289) (not mapNonEmpty!53999) (not b!1304410) (not b!1304407) (not b!1304500) (not d!141737) (not b!1304377) (not bm!64292) (not b!1304448) (not bm!64288) (not d!141745) (not bm!64265) (not b!1304494) (not bm!64271) (not b!1304409) (not b!1304509) (not bm!64268) (not d!141739) (not b!1304403) (not b!1304433) b_and!47487 (not b!1304413) (not b!1304499) (not d!141743) (not b!1304505) (not b!1304375) (not d!141731) (not b!1304497) (not d!141729) (not b!1304412) tp_is_empty!34929 (not b!1304446) (not b!1304426))
(check-sat b_and!47487 (not b_next!29289))
(get-model)

(assert (=> d!141739 d!141737))

(declare-fun d!141753 () Bool)

(assert (=> d!141753 (not (contains!8323 (ListLongMap!20466 Nil!29943) k0!1205))))

(assert (=> d!141753 true))

(declare-fun _$29!201 () Unit!43144)

(assert (=> d!141753 (= (choose!1937 k0!1205) _$29!201)))

(declare-fun bs!37146 () Bool)

(assert (= bs!37146 d!141753))

(assert (=> bs!37146 m!1195329))

(assert (=> d!141739 d!141753))

(declare-fun d!141755 () Bool)

(assert (=> d!141755 (= (validKeyInArray!0 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000)) (and (not (= (select (arr!41905 _keys!1741) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41905 _keys!1741) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1304426 d!141755))

(declare-fun d!141757 () Bool)

(declare-fun e!744134 () Bool)

(assert (=> d!141757 e!744134))

(declare-fun res!866433 () Bool)

(assert (=> d!141757 (=> (not res!866433) (not e!744134))))

(declare-fun lt!583843 () ListLongMap!20465)

(assert (=> d!141757 (= res!866433 (contains!8323 lt!583843 (_1!11408 (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun lt!583842 () List!29946)

(assert (=> d!141757 (= lt!583843 (ListLongMap!20466 lt!583842))))

(declare-fun lt!583841 () Unit!43144)

(declare-fun lt!583844 () Unit!43144)

(assert (=> d!141757 (= lt!583841 lt!583844)))

(assert (=> d!141757 (= (getValueByKey!709 lt!583842 (_1!11408 (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!759 (_2!11408 (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun lemmaContainsTupThenGetReturnValue!353 (List!29946 (_ BitVec 64) V!51675) Unit!43144)

(assert (=> d!141757 (= lt!583844 (lemmaContainsTupThenGetReturnValue!353 lt!583842 (_1!11408 (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11408 (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun insertStrictlySorted!482 (List!29946 (_ BitVec 64) V!51675) List!29946)

(assert (=> d!141757 (= lt!583842 (insertStrictlySorted!482 (toList!10248 call!64289) (_1!11408 (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11408 (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!141757 (= (+!4465 call!64289 (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) lt!583843)))

(declare-fun b!1304524 () Bool)

(declare-fun res!866434 () Bool)

(assert (=> b!1304524 (=> (not res!866434) (not e!744134))))

(assert (=> b!1304524 (= res!866434 (= (getValueByKey!709 (toList!10248 lt!583843) (_1!11408 (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!759 (_2!11408 (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun b!1304525 () Bool)

(declare-fun contains!8325 (List!29946 tuple2!22796) Bool)

(assert (=> b!1304525 (= e!744134 (contains!8325 (toList!10248 lt!583843) (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(assert (= (and d!141757 res!866433) b!1304524))

(assert (= (and b!1304524 res!866434) b!1304525))

(declare-fun m!1195483 () Bool)

(assert (=> d!141757 m!1195483))

(declare-fun m!1195485 () Bool)

(assert (=> d!141757 m!1195485))

(declare-fun m!1195487 () Bool)

(assert (=> d!141757 m!1195487))

(declare-fun m!1195489 () Bool)

(assert (=> d!141757 m!1195489))

(declare-fun m!1195491 () Bool)

(assert (=> b!1304524 m!1195491))

(declare-fun m!1195493 () Bool)

(assert (=> b!1304525 m!1195493))

(assert (=> b!1304499 d!141757))

(assert (=> b!1304427 d!141755))

(assert (=> b!1304500 d!141735))

(declare-fun d!141759 () Bool)

(declare-fun e!744135 () Bool)

(assert (=> d!141759 e!744135))

(declare-fun res!866435 () Bool)

(assert (=> d!141759 (=> res!866435 e!744135)))

(declare-fun lt!583845 () Bool)

(assert (=> d!141759 (= res!866435 (not lt!583845))))

(declare-fun lt!583847 () Bool)

(assert (=> d!141759 (= lt!583845 lt!583847)))

(declare-fun lt!583846 () Unit!43144)

(declare-fun e!744136 () Unit!43144)

(assert (=> d!141759 (= lt!583846 e!744136)))

(declare-fun c!125205 () Bool)

(assert (=> d!141759 (= c!125205 lt!583847)))

(assert (=> d!141759 (= lt!583847 (containsKey!727 (toList!10248 lt!583742) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141759 (= (contains!8323 lt!583742 #b0000000000000000000000000000000000000000000000000000000000000000) lt!583845)))

(declare-fun b!1304526 () Bool)

(declare-fun lt!583848 () Unit!43144)

(assert (=> b!1304526 (= e!744136 lt!583848)))

(assert (=> b!1304526 (= lt!583848 (lemmaContainsKeyImpliesGetValueByKeyDefined!472 (toList!10248 lt!583742) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1304526 (isDefined!512 (getValueByKey!709 (toList!10248 lt!583742) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1304527 () Bool)

(declare-fun Unit!43150 () Unit!43144)

(assert (=> b!1304527 (= e!744136 Unit!43150)))

(declare-fun b!1304528 () Bool)

(assert (=> b!1304528 (= e!744135 (isDefined!512 (getValueByKey!709 (toList!10248 lt!583742) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141759 c!125205) b!1304526))

(assert (= (and d!141759 (not c!125205)) b!1304527))

(assert (= (and d!141759 (not res!866435)) b!1304528))

(declare-fun m!1195495 () Bool)

(assert (=> d!141759 m!1195495))

(declare-fun m!1195497 () Bool)

(assert (=> b!1304526 m!1195497))

(declare-fun m!1195499 () Bool)

(assert (=> b!1304526 m!1195499))

(assert (=> b!1304526 m!1195499))

(declare-fun m!1195501 () Bool)

(assert (=> b!1304526 m!1195501))

(assert (=> b!1304528 m!1195499))

(assert (=> b!1304528 m!1195499))

(assert (=> b!1304528 m!1195501))

(assert (=> d!141731 d!141759))

(assert (=> d!141731 d!141747))

(declare-fun d!141761 () Bool)

(declare-fun res!866440 () Bool)

(declare-fun e!744141 () Bool)

(assert (=> d!141761 (=> res!866440 e!744141)))

(assert (=> d!141761 (= res!866440 (and ((_ is Cons!29942) (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11408 (h!31151 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(assert (=> d!141761 (= (containsKey!727 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!744141)))

(declare-fun b!1304533 () Bool)

(declare-fun e!744142 () Bool)

(assert (=> b!1304533 (= e!744141 e!744142)))

(declare-fun res!866441 () Bool)

(assert (=> b!1304533 (=> (not res!866441) (not e!744142))))

(assert (=> b!1304533 (= res!866441 (and (or (not ((_ is Cons!29942) (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) (bvsle (_1!11408 (h!31151 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)) ((_ is Cons!29942) (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (bvslt (_1!11408 (h!31151 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(declare-fun b!1304534 () Bool)

(assert (=> b!1304534 (= e!744142 (containsKey!727 (t!43551 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(assert (= (and d!141761 (not res!866440)) b!1304533))

(assert (= (and b!1304533 res!866441) b!1304534))

(declare-fun m!1195503 () Bool)

(assert (=> b!1304534 m!1195503))

(assert (=> d!141729 d!141761))

(declare-fun d!141763 () Bool)

(declare-fun isEmpty!1070 (Option!760) Bool)

(assert (=> d!141763 (= (isDefined!512 (getValueByKey!709 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)) (not (isEmpty!1070 (getValueByKey!709 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))))

(declare-fun bs!37147 () Bool)

(assert (= bs!37147 d!141763))

(assert (=> bs!37147 m!1195431))

(declare-fun m!1195505 () Bool)

(assert (=> bs!37147 m!1195505))

(assert (=> b!1304448 d!141763))

(declare-fun e!744147 () Option!760)

(declare-fun b!1304543 () Bool)

(assert (=> b!1304543 (= e!744147 (Some!759 (_2!11408 (h!31151 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))))

(declare-fun b!1304545 () Bool)

(declare-fun e!744148 () Option!760)

(assert (=> b!1304545 (= e!744148 (getValueByKey!709 (t!43551 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(declare-fun b!1304544 () Bool)

(assert (=> b!1304544 (= e!744147 e!744148)))

(declare-fun c!125211 () Bool)

(assert (=> b!1304544 (= c!125211 (and ((_ is Cons!29942) (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (not (= (_1!11408 (h!31151 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205))))))

(declare-fun b!1304546 () Bool)

(assert (=> b!1304546 (= e!744148 None!758)))

(declare-fun c!125210 () Bool)

(declare-fun d!141765 () Bool)

(assert (=> d!141765 (= c!125210 (and ((_ is Cons!29942) (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11408 (h!31151 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(assert (=> d!141765 (= (getValueByKey!709 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!744147)))

(assert (= (and d!141765 c!125210) b!1304543))

(assert (= (and d!141765 (not c!125210)) b!1304544))

(assert (= (and b!1304544 c!125211) b!1304545))

(assert (= (and b!1304544 (not c!125211)) b!1304546))

(declare-fun m!1195507 () Bool)

(assert (=> b!1304545 m!1195507))

(assert (=> b!1304448 d!141765))

(declare-fun d!141767 () Bool)

(declare-fun e!744149 () Bool)

(assert (=> d!141767 e!744149))

(declare-fun res!866442 () Bool)

(assert (=> d!141767 (=> res!866442 e!744149)))

(declare-fun lt!583849 () Bool)

(assert (=> d!141767 (= res!866442 (not lt!583849))))

(declare-fun lt!583851 () Bool)

(assert (=> d!141767 (= lt!583849 lt!583851)))

(declare-fun lt!583850 () Unit!43144)

(declare-fun e!744150 () Unit!43144)

(assert (=> d!141767 (= lt!583850 e!744150)))

(declare-fun c!125212 () Bool)

(assert (=> d!141767 (= c!125212 lt!583851)))

(assert (=> d!141767 (= lt!583851 (containsKey!727 (toList!10248 lt!583813) (select (arr!41905 _keys!1741) from!2144)))))

(assert (=> d!141767 (= (contains!8323 lt!583813 (select (arr!41905 _keys!1741) from!2144)) lt!583849)))

(declare-fun b!1304547 () Bool)

(declare-fun lt!583852 () Unit!43144)

(assert (=> b!1304547 (= e!744150 lt!583852)))

(assert (=> b!1304547 (= lt!583852 (lemmaContainsKeyImpliesGetValueByKeyDefined!472 (toList!10248 lt!583813) (select (arr!41905 _keys!1741) from!2144)))))

(assert (=> b!1304547 (isDefined!512 (getValueByKey!709 (toList!10248 lt!583813) (select (arr!41905 _keys!1741) from!2144)))))

(declare-fun b!1304548 () Bool)

(declare-fun Unit!43151 () Unit!43144)

(assert (=> b!1304548 (= e!744150 Unit!43151)))

(declare-fun b!1304549 () Bool)

(assert (=> b!1304549 (= e!744149 (isDefined!512 (getValueByKey!709 (toList!10248 lt!583813) (select (arr!41905 _keys!1741) from!2144))))))

(assert (= (and d!141767 c!125212) b!1304547))

(assert (= (and d!141767 (not c!125212)) b!1304548))

(assert (= (and d!141767 (not res!866442)) b!1304549))

(assert (=> d!141767 m!1195323))

(declare-fun m!1195509 () Bool)

(assert (=> d!141767 m!1195509))

(assert (=> b!1304547 m!1195323))

(declare-fun m!1195511 () Bool)

(assert (=> b!1304547 m!1195511))

(assert (=> b!1304547 m!1195323))

(declare-fun m!1195513 () Bool)

(assert (=> b!1304547 m!1195513))

(assert (=> b!1304547 m!1195513))

(declare-fun m!1195515 () Bool)

(assert (=> b!1304547 m!1195515))

(assert (=> b!1304549 m!1195323))

(assert (=> b!1304549 m!1195513))

(assert (=> b!1304549 m!1195513))

(assert (=> b!1304549 m!1195515))

(assert (=> b!1304497 d!141767))

(declare-fun d!141769 () Bool)

(assert (=> d!141769 (arrayContainsKey!0 _keys!1741 lt!583761 #b00000000000000000000000000000000)))

(declare-fun lt!583855 () Unit!43144)

(declare-fun choose!13 (array!86841 (_ BitVec 64) (_ BitVec 32)) Unit!43144)

(assert (=> d!141769 (= lt!583855 (choose!13 _keys!1741 lt!583761 #b00000000000000000000000000000000))))

(assert (=> d!141769 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!141769 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!583761 #b00000000000000000000000000000000) lt!583855)))

(declare-fun bs!37148 () Bool)

(assert (= bs!37148 d!141769))

(assert (=> bs!37148 m!1195423))

(declare-fun m!1195517 () Bool)

(assert (=> bs!37148 m!1195517))

(assert (=> b!1304445 d!141769))

(declare-fun d!141771 () Bool)

(declare-fun res!866447 () Bool)

(declare-fun e!744155 () Bool)

(assert (=> d!141771 (=> res!866447 e!744155)))

(assert (=> d!141771 (= res!866447 (= (select (arr!41905 _keys!1741) #b00000000000000000000000000000000) lt!583761))))

(assert (=> d!141771 (= (arrayContainsKey!0 _keys!1741 lt!583761 #b00000000000000000000000000000000) e!744155)))

(declare-fun b!1304554 () Bool)

(declare-fun e!744156 () Bool)

(assert (=> b!1304554 (= e!744155 e!744156)))

(declare-fun res!866448 () Bool)

(assert (=> b!1304554 (=> (not res!866448) (not e!744156))))

(assert (=> b!1304554 (= res!866448 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!42456 _keys!1741)))))

(declare-fun b!1304555 () Bool)

(assert (=> b!1304555 (= e!744156 (arrayContainsKey!0 _keys!1741 lt!583761 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!141771 (not res!866447)) b!1304554))

(assert (= (and b!1304554 res!866448) b!1304555))

(assert (=> d!141771 m!1195401))

(declare-fun m!1195519 () Bool)

(assert (=> b!1304555 m!1195519))

(assert (=> b!1304445 d!141771))

(declare-fun b!1304568 () Bool)

(declare-fun e!744163 () SeekEntryResult!10024)

(declare-fun lt!583864 () SeekEntryResult!10024)

(assert (=> b!1304568 (= e!744163 (MissingZero!10024 (index!42468 lt!583864)))))

(declare-fun b!1304569 () Bool)

(declare-fun c!125220 () Bool)

(declare-fun lt!583863 () (_ BitVec 64))

(assert (=> b!1304569 (= c!125220 (= lt!583863 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!744164 () SeekEntryResult!10024)

(assert (=> b!1304569 (= e!744164 e!744163)))

(declare-fun b!1304570 () Bool)

(declare-fun e!744165 () SeekEntryResult!10024)

(assert (=> b!1304570 (= e!744165 Undefined!10024)))

(declare-fun d!141773 () Bool)

(declare-fun lt!583862 () SeekEntryResult!10024)

(assert (=> d!141773 (and (or ((_ is Undefined!10024) lt!583862) (not ((_ is Found!10024) lt!583862)) (and (bvsge (index!42467 lt!583862) #b00000000000000000000000000000000) (bvslt (index!42467 lt!583862) (size!42456 _keys!1741)))) (or ((_ is Undefined!10024) lt!583862) ((_ is Found!10024) lt!583862) (not ((_ is MissingZero!10024) lt!583862)) (and (bvsge (index!42466 lt!583862) #b00000000000000000000000000000000) (bvslt (index!42466 lt!583862) (size!42456 _keys!1741)))) (or ((_ is Undefined!10024) lt!583862) ((_ is Found!10024) lt!583862) ((_ is MissingZero!10024) lt!583862) (not ((_ is MissingVacant!10024) lt!583862)) (and (bvsge (index!42469 lt!583862) #b00000000000000000000000000000000) (bvslt (index!42469 lt!583862) (size!42456 _keys!1741)))) (or ((_ is Undefined!10024) lt!583862) (ite ((_ is Found!10024) lt!583862) (= (select (arr!41905 _keys!1741) (index!42467 lt!583862)) (select (arr!41905 _keys!1741) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10024) lt!583862) (= (select (arr!41905 _keys!1741) (index!42466 lt!583862)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10024) lt!583862) (= (select (arr!41905 _keys!1741) (index!42469 lt!583862)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141773 (= lt!583862 e!744165)))

(declare-fun c!125221 () Bool)

(assert (=> d!141773 (= c!125221 (and ((_ is Intermediate!10024) lt!583864) (undefined!10836 lt!583864)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!86841 (_ BitVec 32)) SeekEntryResult!10024)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!141773 (= lt!583864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000) mask!2175) (select (arr!41905 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175))))

(assert (=> d!141773 (validMask!0 mask!2175)))

(assert (=> d!141773 (= (seekEntryOrOpen!0 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) lt!583862)))

(declare-fun b!1304571 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!86841 (_ BitVec 32)) SeekEntryResult!10024)

(assert (=> b!1304571 (= e!744163 (seekKeyOrZeroReturnVacant!0 (x!115853 lt!583864) (index!42468 lt!583864) (index!42468 lt!583864) (select (arr!41905 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175))))

(declare-fun b!1304572 () Bool)

(assert (=> b!1304572 (= e!744164 (Found!10024 (index!42468 lt!583864)))))

(declare-fun b!1304573 () Bool)

(assert (=> b!1304573 (= e!744165 e!744164)))

(assert (=> b!1304573 (= lt!583863 (select (arr!41905 _keys!1741) (index!42468 lt!583864)))))

(declare-fun c!125219 () Bool)

(assert (=> b!1304573 (= c!125219 (= lt!583863 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!141773 c!125221) b!1304570))

(assert (= (and d!141773 (not c!125221)) b!1304573))

(assert (= (and b!1304573 c!125219) b!1304572))

(assert (= (and b!1304573 (not c!125219)) b!1304569))

(assert (= (and b!1304569 c!125220) b!1304568))

(assert (= (and b!1304569 (not c!125220)) b!1304571))

(declare-fun m!1195521 () Bool)

(assert (=> d!141773 m!1195521))

(assert (=> d!141773 m!1195401))

(declare-fun m!1195523 () Bool)

(assert (=> d!141773 m!1195523))

(declare-fun m!1195525 () Bool)

(assert (=> d!141773 m!1195525))

(assert (=> d!141773 m!1195315))

(declare-fun m!1195527 () Bool)

(assert (=> d!141773 m!1195527))

(declare-fun m!1195529 () Bool)

(assert (=> d!141773 m!1195529))

(assert (=> d!141773 m!1195401))

(assert (=> d!141773 m!1195521))

(assert (=> b!1304571 m!1195401))

(declare-fun m!1195531 () Bool)

(assert (=> b!1304571 m!1195531))

(declare-fun m!1195533 () Bool)

(assert (=> b!1304573 m!1195533))

(assert (=> b!1304445 d!141773))

(declare-fun d!141775 () Bool)

(declare-fun e!744166 () Bool)

(assert (=> d!141775 e!744166))

(declare-fun res!866449 () Bool)

(assert (=> d!141775 (=> (not res!866449) (not e!744166))))

(declare-fun lt!583867 () ListLongMap!20465)

(assert (=> d!141775 (= res!866449 (contains!8323 lt!583867 (_1!11408 (ite (or c!125199 c!125203) (tuple2!22797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun lt!583866 () List!29946)

(assert (=> d!141775 (= lt!583867 (ListLongMap!20466 lt!583866))))

(declare-fun lt!583865 () Unit!43144)

(declare-fun lt!583868 () Unit!43144)

(assert (=> d!141775 (= lt!583865 lt!583868)))

(assert (=> d!141775 (= (getValueByKey!709 lt!583866 (_1!11408 (ite (or c!125199 c!125203) (tuple2!22797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (Some!759 (_2!11408 (ite (or c!125199 c!125203) (tuple2!22797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (=> d!141775 (= lt!583868 (lemmaContainsTupThenGetReturnValue!353 lt!583866 (_1!11408 (ite (or c!125199 c!125203) (tuple2!22797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (_2!11408 (ite (or c!125199 c!125203) (tuple2!22797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (=> d!141775 (= lt!583866 (insertStrictlySorted!482 (toList!10248 (ite c!125199 call!64292 (ite c!125203 call!64294 call!64295))) (_1!11408 (ite (or c!125199 c!125203) (tuple2!22797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (_2!11408 (ite (or c!125199 c!125203) (tuple2!22797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(assert (=> d!141775 (= (+!4465 (ite c!125199 call!64292 (ite c!125203 call!64294 call!64295)) (ite (or c!125199 c!125203) (tuple2!22797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) lt!583867)))

(declare-fun b!1304574 () Bool)

(declare-fun res!866450 () Bool)

(assert (=> b!1304574 (=> (not res!866450) (not e!744166))))

(assert (=> b!1304574 (= res!866450 (= (getValueByKey!709 (toList!10248 lt!583867) (_1!11408 (ite (or c!125199 c!125203) (tuple2!22797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))) (Some!759 (_2!11408 (ite (or c!125199 c!125203) (tuple2!22797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))))

(declare-fun b!1304575 () Bool)

(assert (=> b!1304575 (= e!744166 (contains!8325 (toList!10248 lt!583867) (ite (or c!125199 c!125203) (tuple2!22797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (= (and d!141775 res!866449) b!1304574))

(assert (= (and b!1304574 res!866450) b!1304575))

(declare-fun m!1195535 () Bool)

(assert (=> d!141775 m!1195535))

(declare-fun m!1195537 () Bool)

(assert (=> d!141775 m!1195537))

(declare-fun m!1195539 () Bool)

(assert (=> d!141775 m!1195539))

(declare-fun m!1195541 () Bool)

(assert (=> d!141775 m!1195541))

(declare-fun m!1195543 () Bool)

(assert (=> b!1304574 m!1195543))

(declare-fun m!1195545 () Bool)

(assert (=> b!1304575 m!1195545))

(assert (=> bm!64288 d!141775))

(declare-fun d!141777 () Bool)

(declare-fun res!866451 () Bool)

(declare-fun e!744167 () Bool)

(assert (=> d!141777 (=> res!866451 e!744167)))

(assert (=> d!141777 (= res!866451 (and ((_ is Cons!29942) (toList!10248 (ListLongMap!20466 Nil!29943))) (= (_1!11408 (h!31151 (toList!10248 (ListLongMap!20466 Nil!29943)))) k0!1205)))))

(assert (=> d!141777 (= (containsKey!727 (toList!10248 (ListLongMap!20466 Nil!29943)) k0!1205) e!744167)))

(declare-fun b!1304576 () Bool)

(declare-fun e!744168 () Bool)

(assert (=> b!1304576 (= e!744167 e!744168)))

(declare-fun res!866452 () Bool)

(assert (=> b!1304576 (=> (not res!866452) (not e!744168))))

(assert (=> b!1304576 (= res!866452 (and (or (not ((_ is Cons!29942) (toList!10248 (ListLongMap!20466 Nil!29943)))) (bvsle (_1!11408 (h!31151 (toList!10248 (ListLongMap!20466 Nil!29943)))) k0!1205)) ((_ is Cons!29942) (toList!10248 (ListLongMap!20466 Nil!29943))) (bvslt (_1!11408 (h!31151 (toList!10248 (ListLongMap!20466 Nil!29943)))) k0!1205)))))

(declare-fun b!1304577 () Bool)

(assert (=> b!1304577 (= e!744168 (containsKey!727 (t!43551 (toList!10248 (ListLongMap!20466 Nil!29943))) k0!1205))))

(assert (= (and d!141777 (not res!866451)) b!1304576))

(assert (= (and b!1304576 res!866452) b!1304577))

(declare-fun m!1195547 () Bool)

(assert (=> b!1304577 m!1195547))

(assert (=> d!141737 d!141777))

(declare-fun d!141779 () Bool)

(declare-fun get!21216 (Option!760) V!51675)

(assert (=> d!141779 (= (apply!1059 lt!583813 #b1000000000000000000000000000000000000000000000000000000000000000) (get!21216 (getValueByKey!709 (toList!10248 lt!583813) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37149 () Bool)

(assert (= bs!37149 d!141779))

(declare-fun m!1195549 () Bool)

(assert (=> bs!37149 m!1195549))

(assert (=> bs!37149 m!1195549))

(declare-fun m!1195551 () Bool)

(assert (=> bs!37149 m!1195551))

(assert (=> b!1304494 d!141779))

(declare-fun d!141781 () Bool)

(assert (=> d!141781 (isDefined!512 (getValueByKey!709 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun lt!583871 () Unit!43144)

(declare-fun choose!1938 (List!29946 (_ BitVec 64)) Unit!43144)

(assert (=> d!141781 (= lt!583871 (choose!1938 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun e!744171 () Bool)

(assert (=> d!141781 e!744171))

(declare-fun res!866455 () Bool)

(assert (=> d!141781 (=> (not res!866455) (not e!744171))))

(declare-fun isStrictlySorted!870 (List!29946) Bool)

(assert (=> d!141781 (= res!866455 (isStrictlySorted!870 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))

(assert (=> d!141781 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!472 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) lt!583871)))

(declare-fun b!1304580 () Bool)

(assert (=> b!1304580 (= e!744171 (containsKey!727 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (= (and d!141781 res!866455) b!1304580))

(assert (=> d!141781 m!1195431))

(assert (=> d!141781 m!1195431))

(assert (=> d!141781 m!1195433))

(declare-fun m!1195553 () Bool)

(assert (=> d!141781 m!1195553))

(declare-fun m!1195555 () Bool)

(assert (=> d!141781 m!1195555))

(assert (=> b!1304580 m!1195427))

(assert (=> b!1304446 d!141781))

(assert (=> b!1304446 d!141763))

(assert (=> b!1304446 d!141765))

(declare-fun d!141783 () Bool)

(declare-fun e!744172 () Bool)

(assert (=> d!141783 e!744172))

(declare-fun res!866456 () Bool)

(assert (=> d!141783 (=> res!866456 e!744172)))

(declare-fun lt!583872 () Bool)

(assert (=> d!141783 (= res!866456 (not lt!583872))))

(declare-fun lt!583874 () Bool)

(assert (=> d!141783 (= lt!583872 lt!583874)))

(declare-fun lt!583873 () Unit!43144)

(declare-fun e!744173 () Unit!43144)

(assert (=> d!141783 (= lt!583873 e!744173)))

(declare-fun c!125222 () Bool)

(assert (=> d!141783 (= c!125222 lt!583874)))

(assert (=> d!141783 (= lt!583874 (containsKey!727 (toList!10248 lt!583813) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141783 (= (contains!8323 lt!583813 #b0000000000000000000000000000000000000000000000000000000000000000) lt!583872)))

(declare-fun b!1304581 () Bool)

(declare-fun lt!583875 () Unit!43144)

(assert (=> b!1304581 (= e!744173 lt!583875)))

(assert (=> b!1304581 (= lt!583875 (lemmaContainsKeyImpliesGetValueByKeyDefined!472 (toList!10248 lt!583813) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1304581 (isDefined!512 (getValueByKey!709 (toList!10248 lt!583813) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1304582 () Bool)

(declare-fun Unit!43152 () Unit!43144)

(assert (=> b!1304582 (= e!744173 Unit!43152)))

(declare-fun b!1304583 () Bool)

(assert (=> b!1304583 (= e!744172 (isDefined!512 (getValueByKey!709 (toList!10248 lt!583813) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141783 c!125222) b!1304581))

(assert (= (and d!141783 (not c!125222)) b!1304582))

(assert (= (and d!141783 (not res!866456)) b!1304583))

(declare-fun m!1195557 () Bool)

(assert (=> d!141783 m!1195557))

(declare-fun m!1195559 () Bool)

(assert (=> b!1304581 m!1195559))

(declare-fun m!1195561 () Bool)

(assert (=> b!1304581 m!1195561))

(assert (=> b!1304581 m!1195561))

(declare-fun m!1195563 () Bool)

(assert (=> b!1304581 m!1195563))

(assert (=> b!1304583 m!1195561))

(assert (=> b!1304583 m!1195561))

(assert (=> b!1304583 m!1195563))

(assert (=> bm!64292 d!141783))

(declare-fun b!1304584 () Bool)

(declare-fun e!744176 () Bool)

(declare-fun e!744174 () Bool)

(assert (=> b!1304584 (= e!744176 e!744174)))

(declare-fun c!125223 () Bool)

(assert (=> b!1304584 (= c!125223 (validKeyInArray!0 (select (arr!41905 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1304585 () Bool)

(declare-fun e!744175 () Bool)

(declare-fun call!64296 () Bool)

(assert (=> b!1304585 (= e!744175 call!64296)))

(declare-fun bm!64293 () Bool)

(assert (=> bm!64293 (= call!64296 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1304586 () Bool)

(assert (=> b!1304586 (= e!744174 call!64296)))

(declare-fun d!141785 () Bool)

(declare-fun res!866458 () Bool)

(assert (=> d!141785 (=> res!866458 e!744176)))

(assert (=> d!141785 (= res!866458 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!42456 _keys!1741)))))

(assert (=> d!141785 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175) e!744176)))

(declare-fun b!1304587 () Bool)

(assert (=> b!1304587 (= e!744174 e!744175)))

(declare-fun lt!583877 () (_ BitVec 64))

(assert (=> b!1304587 (= lt!583877 (select (arr!41905 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!583876 () Unit!43144)

(assert (=> b!1304587 (= lt!583876 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!583877 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1304587 (arrayContainsKey!0 _keys!1741 lt!583877 #b00000000000000000000000000000000)))

(declare-fun lt!583878 () Unit!43144)

(assert (=> b!1304587 (= lt!583878 lt!583876)))

(declare-fun res!866457 () Bool)

(assert (=> b!1304587 (= res!866457 (= (seekEntryOrOpen!0 (select (arr!41905 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1741 mask!2175) (Found!10024 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1304587 (=> (not res!866457) (not e!744175))))

(assert (= (and d!141785 (not res!866458)) b!1304584))

(assert (= (and b!1304584 c!125223) b!1304587))

(assert (= (and b!1304584 (not c!125223)) b!1304586))

(assert (= (and b!1304587 res!866457) b!1304585))

(assert (= (or b!1304585 b!1304586) bm!64293))

(declare-fun m!1195565 () Bool)

(assert (=> b!1304584 m!1195565))

(assert (=> b!1304584 m!1195565))

(declare-fun m!1195567 () Bool)

(assert (=> b!1304584 m!1195567))

(declare-fun m!1195569 () Bool)

(assert (=> bm!64293 m!1195569))

(assert (=> b!1304587 m!1195565))

(declare-fun m!1195571 () Bool)

(assert (=> b!1304587 m!1195571))

(declare-fun m!1195573 () Bool)

(assert (=> b!1304587 m!1195573))

(assert (=> b!1304587 m!1195565))

(declare-fun m!1195575 () Bool)

(assert (=> b!1304587 m!1195575))

(assert (=> bm!64271 d!141785))

(declare-fun d!141787 () Bool)

(assert (=> d!141787 (= (isDefined!512 (getValueByKey!709 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)) (not (isEmpty!1070 (getValueByKey!709 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))))

(declare-fun bs!37150 () Bool)

(assert (= bs!37150 d!141787))

(assert (=> bs!37150 m!1195371))

(declare-fun m!1195577 () Bool)

(assert (=> bs!37150 m!1195577))

(assert (=> b!1304377 d!141787))

(declare-fun e!744177 () Option!760)

(declare-fun b!1304588 () Bool)

(assert (=> b!1304588 (= e!744177 (Some!759 (_2!11408 (h!31151 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))))

(declare-fun b!1304590 () Bool)

(declare-fun e!744178 () Option!760)

(assert (=> b!1304590 (= e!744178 (getValueByKey!709 (t!43551 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(declare-fun b!1304589 () Bool)

(assert (=> b!1304589 (= e!744177 e!744178)))

(declare-fun c!125225 () Bool)

(assert (=> b!1304589 (= c!125225 (and ((_ is Cons!29942) (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (not (= (_1!11408 (h!31151 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205))))))

(declare-fun b!1304591 () Bool)

(assert (=> b!1304591 (= e!744178 None!758)))

(declare-fun c!125224 () Bool)

(declare-fun d!141789 () Bool)

(assert (=> d!141789 (= c!125224 (and ((_ is Cons!29942) (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11408 (h!31151 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(assert (=> d!141789 (= (getValueByKey!709 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!744177)))

(assert (= (and d!141789 c!125224) b!1304588))

(assert (= (and d!141789 (not c!125224)) b!1304589))

(assert (= (and b!1304589 c!125225) b!1304590))

(assert (= (and b!1304589 (not c!125225)) b!1304591))

(declare-fun m!1195579 () Bool)

(assert (=> b!1304590 m!1195579))

(assert (=> b!1304377 d!141789))

(declare-fun d!141791 () Bool)

(assert (=> d!141791 (= (apply!1059 lt!583742 (select (arr!41905 _keys!1741) from!2144)) (get!21216 (getValueByKey!709 (toList!10248 lt!583742) (select (arr!41905 _keys!1741) from!2144))))))

(declare-fun bs!37151 () Bool)

(assert (= bs!37151 d!141791))

(assert (=> bs!37151 m!1195323))

(declare-fun m!1195581 () Bool)

(assert (=> bs!37151 m!1195581))

(assert (=> bs!37151 m!1195581))

(declare-fun m!1195583 () Bool)

(assert (=> bs!37151 m!1195583))

(assert (=> b!1304412 d!141791))

(declare-fun d!141793 () Bool)

(declare-fun c!125228 () Bool)

(assert (=> d!141793 (= c!125228 ((_ is ValueCellFull!16566) (select (arr!41904 _values!1445) from!2144)))))

(declare-fun e!744181 () V!51675)

(assert (=> d!141793 (= (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)) e!744181)))

(declare-fun b!1304596 () Bool)

(declare-fun get!21217 (ValueCell!16566 V!51675) V!51675)

(assert (=> b!1304596 (= e!744181 (get!21217 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1304597 () Bool)

(declare-fun get!21218 (ValueCell!16566 V!51675) V!51675)

(assert (=> b!1304597 (= e!744181 (get!21218 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141793 c!125228) b!1304596))

(assert (= (and d!141793 (not c!125228)) b!1304597))

(assert (=> b!1304596 m!1195375))

(assert (=> b!1304596 m!1195379))

(declare-fun m!1195585 () Bool)

(assert (=> b!1304596 m!1195585))

(assert (=> b!1304597 m!1195375))

(assert (=> b!1304597 m!1195379))

(declare-fun m!1195587 () Bool)

(assert (=> b!1304597 m!1195587))

(assert (=> b!1304412 d!141793))

(declare-fun d!141795 () Bool)

(declare-fun isEmpty!1071 (List!29946) Bool)

(assert (=> d!141795 (= (isEmpty!1069 lt!583742) (isEmpty!1071 (toList!10248 lt!583742)))))

(declare-fun bs!37152 () Bool)

(assert (= bs!37152 d!141795))

(declare-fun m!1195589 () Bool)

(assert (=> bs!37152 m!1195589))

(assert (=> b!1304413 d!141795))

(declare-fun d!141797 () Bool)

(assert (=> d!141797 (= (apply!1059 (+!4465 lt!583817 (tuple2!22797 lt!583818 minValue!1387)) lt!583815) (apply!1059 lt!583817 lt!583815))))

(declare-fun lt!583881 () Unit!43144)

(declare-fun choose!1939 (ListLongMap!20465 (_ BitVec 64) V!51675 (_ BitVec 64)) Unit!43144)

(assert (=> d!141797 (= lt!583881 (choose!1939 lt!583817 lt!583818 minValue!1387 lt!583815))))

(declare-fun e!744184 () Bool)

(assert (=> d!141797 e!744184))

(declare-fun res!866461 () Bool)

(assert (=> d!141797 (=> (not res!866461) (not e!744184))))

(assert (=> d!141797 (= res!866461 (contains!8323 lt!583817 lt!583815))))

(assert (=> d!141797 (= (addApplyDifferent!562 lt!583817 lt!583818 minValue!1387 lt!583815) lt!583881)))

(declare-fun b!1304601 () Bool)

(assert (=> b!1304601 (= e!744184 (not (= lt!583815 lt!583818)))))

(assert (= (and d!141797 res!866461) b!1304601))

(assert (=> d!141797 m!1195449))

(assert (=> d!141797 m!1195463))

(declare-fun m!1195591 () Bool)

(assert (=> d!141797 m!1195591))

(assert (=> d!141797 m!1195449))

(assert (=> d!141797 m!1195451))

(declare-fun m!1195593 () Bool)

(assert (=> d!141797 m!1195593))

(assert (=> b!1304493 d!141797))

(declare-fun d!141799 () Bool)

(assert (=> d!141799 (= (apply!1059 (+!4465 lt!583814 (tuple2!22797 lt!583816 minValue!1387)) lt!583822) (apply!1059 lt!583814 lt!583822))))

(declare-fun lt!583882 () Unit!43144)

(assert (=> d!141799 (= lt!583882 (choose!1939 lt!583814 lt!583816 minValue!1387 lt!583822))))

(declare-fun e!744185 () Bool)

(assert (=> d!141799 e!744185))

(declare-fun res!866462 () Bool)

(assert (=> d!141799 (=> (not res!866462) (not e!744185))))

(assert (=> d!141799 (= res!866462 (contains!8323 lt!583814 lt!583822))))

(assert (=> d!141799 (= (addApplyDifferent!562 lt!583814 lt!583816 minValue!1387 lt!583822) lt!583882)))

(declare-fun b!1304602 () Bool)

(assert (=> b!1304602 (= e!744185 (not (= lt!583822 lt!583816)))))

(assert (= (and d!141799 res!866462) b!1304602))

(assert (=> d!141799 m!1195445))

(assert (=> d!141799 m!1195455))

(declare-fun m!1195595 () Bool)

(assert (=> d!141799 m!1195595))

(assert (=> d!141799 m!1195445))

(assert (=> d!141799 m!1195447))

(declare-fun m!1195597 () Bool)

(assert (=> d!141799 m!1195597))

(assert (=> b!1304493 d!141799))

(declare-fun d!141801 () Bool)

(assert (=> d!141801 (= (apply!1059 lt!583817 lt!583815) (get!21216 (getValueByKey!709 (toList!10248 lt!583817) lt!583815)))))

(declare-fun bs!37153 () Bool)

(assert (= bs!37153 d!141801))

(declare-fun m!1195599 () Bool)

(assert (=> bs!37153 m!1195599))

(assert (=> bs!37153 m!1195599))

(declare-fun m!1195601 () Bool)

(assert (=> bs!37153 m!1195601))

(assert (=> b!1304493 d!141801))

(declare-fun d!141803 () Bool)

(assert (=> d!141803 (= (apply!1059 (+!4465 lt!583817 (tuple2!22797 lt!583818 minValue!1387)) lt!583815) (get!21216 (getValueByKey!709 (toList!10248 (+!4465 lt!583817 (tuple2!22797 lt!583818 minValue!1387))) lt!583815)))))

(declare-fun bs!37154 () Bool)

(assert (= bs!37154 d!141803))

(declare-fun m!1195603 () Bool)

(assert (=> bs!37154 m!1195603))

(assert (=> bs!37154 m!1195603))

(declare-fun m!1195605 () Bool)

(assert (=> bs!37154 m!1195605))

(assert (=> b!1304493 d!141803))

(declare-fun d!141805 () Bool)

(assert (=> d!141805 (= (apply!1059 (+!4465 lt!583814 (tuple2!22797 lt!583816 minValue!1387)) lt!583822) (get!21216 (getValueByKey!709 (toList!10248 (+!4465 lt!583814 (tuple2!22797 lt!583816 minValue!1387))) lt!583822)))))

(declare-fun bs!37155 () Bool)

(assert (= bs!37155 d!141805))

(declare-fun m!1195607 () Bool)

(assert (=> bs!37155 m!1195607))

(assert (=> bs!37155 m!1195607))

(declare-fun m!1195609 () Bool)

(assert (=> bs!37155 m!1195609))

(assert (=> b!1304493 d!141805))

(declare-fun d!141807 () Bool)

(assert (=> d!141807 (contains!8323 (+!4465 lt!583828 (tuple2!22797 lt!583823 zeroValue!1387)) lt!583820)))

(declare-fun lt!583885 () Unit!43144)

(declare-fun choose!1940 (ListLongMap!20465 (_ BitVec 64) V!51675 (_ BitVec 64)) Unit!43144)

(assert (=> d!141807 (= lt!583885 (choose!1940 lt!583828 lt!583823 zeroValue!1387 lt!583820))))

(assert (=> d!141807 (contains!8323 lt!583828 lt!583820)))

(assert (=> d!141807 (= (addStillContains!1128 lt!583828 lt!583823 zeroValue!1387 lt!583820) lt!583885)))

(declare-fun bs!37156 () Bool)

(assert (= bs!37156 d!141807))

(assert (=> bs!37156 m!1195453))

(assert (=> bs!37156 m!1195453))

(assert (=> bs!37156 m!1195469))

(declare-fun m!1195611 () Bool)

(assert (=> bs!37156 m!1195611))

(declare-fun m!1195613 () Bool)

(assert (=> bs!37156 m!1195613))

(assert (=> b!1304493 d!141807))

(declare-fun d!141809 () Bool)

(assert (=> d!141809 (= (apply!1059 lt!583831 lt!583811) (get!21216 (getValueByKey!709 (toList!10248 lt!583831) lt!583811)))))

(declare-fun bs!37157 () Bool)

(assert (= bs!37157 d!141809))

(declare-fun m!1195615 () Bool)

(assert (=> bs!37157 m!1195615))

(assert (=> bs!37157 m!1195615))

(declare-fun m!1195617 () Bool)

(assert (=> bs!37157 m!1195617))

(assert (=> b!1304493 d!141809))

(declare-fun d!141811 () Bool)

(declare-fun e!744186 () Bool)

(assert (=> d!141811 e!744186))

(declare-fun res!866463 () Bool)

(assert (=> d!141811 (=> (not res!866463) (not e!744186))))

(declare-fun lt!583888 () ListLongMap!20465)

(assert (=> d!141811 (= res!866463 (contains!8323 lt!583888 (_1!11408 (tuple2!22797 lt!583818 minValue!1387))))))

(declare-fun lt!583887 () List!29946)

(assert (=> d!141811 (= lt!583888 (ListLongMap!20466 lt!583887))))

(declare-fun lt!583886 () Unit!43144)

(declare-fun lt!583889 () Unit!43144)

(assert (=> d!141811 (= lt!583886 lt!583889)))

(assert (=> d!141811 (= (getValueByKey!709 lt!583887 (_1!11408 (tuple2!22797 lt!583818 minValue!1387))) (Some!759 (_2!11408 (tuple2!22797 lt!583818 minValue!1387))))))

(assert (=> d!141811 (= lt!583889 (lemmaContainsTupThenGetReturnValue!353 lt!583887 (_1!11408 (tuple2!22797 lt!583818 minValue!1387)) (_2!11408 (tuple2!22797 lt!583818 minValue!1387))))))

(assert (=> d!141811 (= lt!583887 (insertStrictlySorted!482 (toList!10248 lt!583817) (_1!11408 (tuple2!22797 lt!583818 minValue!1387)) (_2!11408 (tuple2!22797 lt!583818 minValue!1387))))))

(assert (=> d!141811 (= (+!4465 lt!583817 (tuple2!22797 lt!583818 minValue!1387)) lt!583888)))

(declare-fun b!1304604 () Bool)

(declare-fun res!866464 () Bool)

(assert (=> b!1304604 (=> (not res!866464) (not e!744186))))

(assert (=> b!1304604 (= res!866464 (= (getValueByKey!709 (toList!10248 lt!583888) (_1!11408 (tuple2!22797 lt!583818 minValue!1387))) (Some!759 (_2!11408 (tuple2!22797 lt!583818 minValue!1387)))))))

(declare-fun b!1304605 () Bool)

(assert (=> b!1304605 (= e!744186 (contains!8325 (toList!10248 lt!583888) (tuple2!22797 lt!583818 minValue!1387)))))

(assert (= (and d!141811 res!866463) b!1304604))

(assert (= (and b!1304604 res!866464) b!1304605))

(declare-fun m!1195619 () Bool)

(assert (=> d!141811 m!1195619))

(declare-fun m!1195621 () Bool)

(assert (=> d!141811 m!1195621))

(declare-fun m!1195623 () Bool)

(assert (=> d!141811 m!1195623))

(declare-fun m!1195625 () Bool)

(assert (=> d!141811 m!1195625))

(declare-fun m!1195627 () Bool)

(assert (=> b!1304604 m!1195627))

(declare-fun m!1195629 () Bool)

(assert (=> b!1304605 m!1195629))

(assert (=> b!1304493 d!141811))

(declare-fun d!141813 () Bool)

(declare-fun e!744187 () Bool)

(assert (=> d!141813 e!744187))

(declare-fun res!866465 () Bool)

(assert (=> d!141813 (=> res!866465 e!744187)))

(declare-fun lt!583890 () Bool)

(assert (=> d!141813 (= res!866465 (not lt!583890))))

(declare-fun lt!583892 () Bool)

(assert (=> d!141813 (= lt!583890 lt!583892)))

(declare-fun lt!583891 () Unit!43144)

(declare-fun e!744188 () Unit!43144)

(assert (=> d!141813 (= lt!583891 e!744188)))

(declare-fun c!125229 () Bool)

(assert (=> d!141813 (= c!125229 lt!583892)))

(assert (=> d!141813 (= lt!583892 (containsKey!727 (toList!10248 (+!4465 lt!583828 (tuple2!22797 lt!583823 zeroValue!1387))) lt!583820))))

(assert (=> d!141813 (= (contains!8323 (+!4465 lt!583828 (tuple2!22797 lt!583823 zeroValue!1387)) lt!583820) lt!583890)))

(declare-fun b!1304606 () Bool)

(declare-fun lt!583893 () Unit!43144)

(assert (=> b!1304606 (= e!744188 lt!583893)))

(assert (=> b!1304606 (= lt!583893 (lemmaContainsKeyImpliesGetValueByKeyDefined!472 (toList!10248 (+!4465 lt!583828 (tuple2!22797 lt!583823 zeroValue!1387))) lt!583820))))

(assert (=> b!1304606 (isDefined!512 (getValueByKey!709 (toList!10248 (+!4465 lt!583828 (tuple2!22797 lt!583823 zeroValue!1387))) lt!583820))))

(declare-fun b!1304607 () Bool)

(declare-fun Unit!43153 () Unit!43144)

(assert (=> b!1304607 (= e!744188 Unit!43153)))

(declare-fun b!1304608 () Bool)

(assert (=> b!1304608 (= e!744187 (isDefined!512 (getValueByKey!709 (toList!10248 (+!4465 lt!583828 (tuple2!22797 lt!583823 zeroValue!1387))) lt!583820)))))

(assert (= (and d!141813 c!125229) b!1304606))

(assert (= (and d!141813 (not c!125229)) b!1304607))

(assert (= (and d!141813 (not res!866465)) b!1304608))

(declare-fun m!1195631 () Bool)

(assert (=> d!141813 m!1195631))

(declare-fun m!1195633 () Bool)

(assert (=> b!1304606 m!1195633))

(declare-fun m!1195635 () Bool)

(assert (=> b!1304606 m!1195635))

(assert (=> b!1304606 m!1195635))

(declare-fun m!1195637 () Bool)

(assert (=> b!1304606 m!1195637))

(assert (=> b!1304608 m!1195635))

(assert (=> b!1304608 m!1195635))

(assert (=> b!1304608 m!1195637))

(assert (=> b!1304493 d!141813))

(declare-fun d!141815 () Bool)

(declare-fun e!744189 () Bool)

(assert (=> d!141815 e!744189))

(declare-fun res!866466 () Bool)

(assert (=> d!141815 (=> (not res!866466) (not e!744189))))

(declare-fun lt!583896 () ListLongMap!20465)

(assert (=> d!141815 (= res!866466 (contains!8323 lt!583896 (_1!11408 (tuple2!22797 lt!583816 minValue!1387))))))

(declare-fun lt!583895 () List!29946)

(assert (=> d!141815 (= lt!583896 (ListLongMap!20466 lt!583895))))

(declare-fun lt!583894 () Unit!43144)

(declare-fun lt!583897 () Unit!43144)

(assert (=> d!141815 (= lt!583894 lt!583897)))

(assert (=> d!141815 (= (getValueByKey!709 lt!583895 (_1!11408 (tuple2!22797 lt!583816 minValue!1387))) (Some!759 (_2!11408 (tuple2!22797 lt!583816 minValue!1387))))))

(assert (=> d!141815 (= lt!583897 (lemmaContainsTupThenGetReturnValue!353 lt!583895 (_1!11408 (tuple2!22797 lt!583816 minValue!1387)) (_2!11408 (tuple2!22797 lt!583816 minValue!1387))))))

(assert (=> d!141815 (= lt!583895 (insertStrictlySorted!482 (toList!10248 lt!583814) (_1!11408 (tuple2!22797 lt!583816 minValue!1387)) (_2!11408 (tuple2!22797 lt!583816 minValue!1387))))))

(assert (=> d!141815 (= (+!4465 lt!583814 (tuple2!22797 lt!583816 minValue!1387)) lt!583896)))

(declare-fun b!1304609 () Bool)

(declare-fun res!866467 () Bool)

(assert (=> b!1304609 (=> (not res!866467) (not e!744189))))

(assert (=> b!1304609 (= res!866467 (= (getValueByKey!709 (toList!10248 lt!583896) (_1!11408 (tuple2!22797 lt!583816 minValue!1387))) (Some!759 (_2!11408 (tuple2!22797 lt!583816 minValue!1387)))))))

(declare-fun b!1304610 () Bool)

(assert (=> b!1304610 (= e!744189 (contains!8325 (toList!10248 lt!583896) (tuple2!22797 lt!583816 minValue!1387)))))

(assert (= (and d!141815 res!866466) b!1304609))

(assert (= (and b!1304609 res!866467) b!1304610))

(declare-fun m!1195639 () Bool)

(assert (=> d!141815 m!1195639))

(declare-fun m!1195641 () Bool)

(assert (=> d!141815 m!1195641))

(declare-fun m!1195643 () Bool)

(assert (=> d!141815 m!1195643))

(declare-fun m!1195645 () Bool)

(assert (=> d!141815 m!1195645))

(declare-fun m!1195647 () Bool)

(assert (=> b!1304609 m!1195647))

(declare-fun m!1195649 () Bool)

(assert (=> b!1304610 m!1195649))

(assert (=> b!1304493 d!141815))

(declare-fun d!141817 () Bool)

(declare-fun e!744190 () Bool)

(assert (=> d!141817 e!744190))

(declare-fun res!866468 () Bool)

(assert (=> d!141817 (=> (not res!866468) (not e!744190))))

(declare-fun lt!583900 () ListLongMap!20465)

(assert (=> d!141817 (= res!866468 (contains!8323 lt!583900 (_1!11408 (tuple2!22797 lt!583826 zeroValue!1387))))))

(declare-fun lt!583899 () List!29946)

(assert (=> d!141817 (= lt!583900 (ListLongMap!20466 lt!583899))))

(declare-fun lt!583898 () Unit!43144)

(declare-fun lt!583901 () Unit!43144)

(assert (=> d!141817 (= lt!583898 lt!583901)))

(assert (=> d!141817 (= (getValueByKey!709 lt!583899 (_1!11408 (tuple2!22797 lt!583826 zeroValue!1387))) (Some!759 (_2!11408 (tuple2!22797 lt!583826 zeroValue!1387))))))

(assert (=> d!141817 (= lt!583901 (lemmaContainsTupThenGetReturnValue!353 lt!583899 (_1!11408 (tuple2!22797 lt!583826 zeroValue!1387)) (_2!11408 (tuple2!22797 lt!583826 zeroValue!1387))))))

(assert (=> d!141817 (= lt!583899 (insertStrictlySorted!482 (toList!10248 lt!583831) (_1!11408 (tuple2!22797 lt!583826 zeroValue!1387)) (_2!11408 (tuple2!22797 lt!583826 zeroValue!1387))))))

(assert (=> d!141817 (= (+!4465 lt!583831 (tuple2!22797 lt!583826 zeroValue!1387)) lt!583900)))

(declare-fun b!1304611 () Bool)

(declare-fun res!866469 () Bool)

(assert (=> b!1304611 (=> (not res!866469) (not e!744190))))

(assert (=> b!1304611 (= res!866469 (= (getValueByKey!709 (toList!10248 lt!583900) (_1!11408 (tuple2!22797 lt!583826 zeroValue!1387))) (Some!759 (_2!11408 (tuple2!22797 lt!583826 zeroValue!1387)))))))

(declare-fun b!1304612 () Bool)

(assert (=> b!1304612 (= e!744190 (contains!8325 (toList!10248 lt!583900) (tuple2!22797 lt!583826 zeroValue!1387)))))

(assert (= (and d!141817 res!866468) b!1304611))

(assert (= (and b!1304611 res!866469) b!1304612))

(declare-fun m!1195651 () Bool)

(assert (=> d!141817 m!1195651))

(declare-fun m!1195653 () Bool)

(assert (=> d!141817 m!1195653))

(declare-fun m!1195655 () Bool)

(assert (=> d!141817 m!1195655))

(declare-fun m!1195657 () Bool)

(assert (=> d!141817 m!1195657))

(declare-fun m!1195659 () Bool)

(assert (=> b!1304611 m!1195659))

(declare-fun m!1195661 () Bool)

(assert (=> b!1304612 m!1195661))

(assert (=> b!1304493 d!141817))

(declare-fun d!141819 () Bool)

(assert (=> d!141819 (= (apply!1059 lt!583814 lt!583822) (get!21216 (getValueByKey!709 (toList!10248 lt!583814) lt!583822)))))

(declare-fun bs!37158 () Bool)

(assert (= bs!37158 d!141819))

(declare-fun m!1195663 () Bool)

(assert (=> bs!37158 m!1195663))

(assert (=> bs!37158 m!1195663))

(declare-fun m!1195665 () Bool)

(assert (=> bs!37158 m!1195665))

(assert (=> b!1304493 d!141819))

(declare-fun d!141821 () Bool)

(declare-fun e!744191 () Bool)

(assert (=> d!141821 e!744191))

(declare-fun res!866470 () Bool)

(assert (=> d!141821 (=> (not res!866470) (not e!744191))))

(declare-fun lt!583904 () ListLongMap!20465)

(assert (=> d!141821 (= res!866470 (contains!8323 lt!583904 (_1!11408 (tuple2!22797 lt!583823 zeroValue!1387))))))

(declare-fun lt!583903 () List!29946)

(assert (=> d!141821 (= lt!583904 (ListLongMap!20466 lt!583903))))

(declare-fun lt!583902 () Unit!43144)

(declare-fun lt!583905 () Unit!43144)

(assert (=> d!141821 (= lt!583902 lt!583905)))

(assert (=> d!141821 (= (getValueByKey!709 lt!583903 (_1!11408 (tuple2!22797 lt!583823 zeroValue!1387))) (Some!759 (_2!11408 (tuple2!22797 lt!583823 zeroValue!1387))))))

(assert (=> d!141821 (= lt!583905 (lemmaContainsTupThenGetReturnValue!353 lt!583903 (_1!11408 (tuple2!22797 lt!583823 zeroValue!1387)) (_2!11408 (tuple2!22797 lt!583823 zeroValue!1387))))))

(assert (=> d!141821 (= lt!583903 (insertStrictlySorted!482 (toList!10248 lt!583828) (_1!11408 (tuple2!22797 lt!583823 zeroValue!1387)) (_2!11408 (tuple2!22797 lt!583823 zeroValue!1387))))))

(assert (=> d!141821 (= (+!4465 lt!583828 (tuple2!22797 lt!583823 zeroValue!1387)) lt!583904)))

(declare-fun b!1304613 () Bool)

(declare-fun res!866471 () Bool)

(assert (=> b!1304613 (=> (not res!866471) (not e!744191))))

(assert (=> b!1304613 (= res!866471 (= (getValueByKey!709 (toList!10248 lt!583904) (_1!11408 (tuple2!22797 lt!583823 zeroValue!1387))) (Some!759 (_2!11408 (tuple2!22797 lt!583823 zeroValue!1387)))))))

(declare-fun b!1304614 () Bool)

(assert (=> b!1304614 (= e!744191 (contains!8325 (toList!10248 lt!583904) (tuple2!22797 lt!583823 zeroValue!1387)))))

(assert (= (and d!141821 res!866470) b!1304613))

(assert (= (and b!1304613 res!866471) b!1304614))

(declare-fun m!1195667 () Bool)

(assert (=> d!141821 m!1195667))

(declare-fun m!1195669 () Bool)

(assert (=> d!141821 m!1195669))

(declare-fun m!1195671 () Bool)

(assert (=> d!141821 m!1195671))

(declare-fun m!1195673 () Bool)

(assert (=> d!141821 m!1195673))

(declare-fun m!1195675 () Bool)

(assert (=> b!1304613 m!1195675))

(declare-fun m!1195677 () Bool)

(assert (=> b!1304614 m!1195677))

(assert (=> b!1304493 d!141821))

(assert (=> b!1304493 d!141731))

(declare-fun d!141823 () Bool)

(assert (=> d!141823 (= (apply!1059 (+!4465 lt!583831 (tuple2!22797 lt!583826 zeroValue!1387)) lt!583811) (apply!1059 lt!583831 lt!583811))))

(declare-fun lt!583906 () Unit!43144)

(assert (=> d!141823 (= lt!583906 (choose!1939 lt!583831 lt!583826 zeroValue!1387 lt!583811))))

(declare-fun e!744192 () Bool)

(assert (=> d!141823 e!744192))

(declare-fun res!866472 () Bool)

(assert (=> d!141823 (=> (not res!866472) (not e!744192))))

(assert (=> d!141823 (= res!866472 (contains!8323 lt!583831 lt!583811))))

(assert (=> d!141823 (= (addApplyDifferent!562 lt!583831 lt!583826 zeroValue!1387 lt!583811) lt!583906)))

(declare-fun b!1304615 () Bool)

(assert (=> b!1304615 (= e!744192 (not (= lt!583811 lt!583826)))))

(assert (= (and d!141823 res!866472) b!1304615))

(assert (=> d!141823 m!1195457))

(assert (=> d!141823 m!1195467))

(declare-fun m!1195679 () Bool)

(assert (=> d!141823 m!1195679))

(assert (=> d!141823 m!1195457))

(assert (=> d!141823 m!1195459))

(declare-fun m!1195681 () Bool)

(assert (=> d!141823 m!1195681))

(assert (=> b!1304493 d!141823))

(declare-fun d!141825 () Bool)

(assert (=> d!141825 (= (apply!1059 (+!4465 lt!583831 (tuple2!22797 lt!583826 zeroValue!1387)) lt!583811) (get!21216 (getValueByKey!709 (toList!10248 (+!4465 lt!583831 (tuple2!22797 lt!583826 zeroValue!1387))) lt!583811)))))

(declare-fun bs!37159 () Bool)

(assert (= bs!37159 d!141825))

(declare-fun m!1195683 () Bool)

(assert (=> bs!37159 m!1195683))

(assert (=> bs!37159 m!1195683))

(declare-fun m!1195685 () Bool)

(assert (=> bs!37159 m!1195685))

(assert (=> b!1304493 d!141825))

(assert (=> b!1304442 d!141755))

(declare-fun d!141827 () Bool)

(assert (=> d!141827 (isDefined!512 (getValueByKey!709 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun lt!583907 () Unit!43144)

(assert (=> d!141827 (= lt!583907 (choose!1938 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun e!744193 () Bool)

(assert (=> d!141827 e!744193))

(declare-fun res!866473 () Bool)

(assert (=> d!141827 (=> (not res!866473) (not e!744193))))

(assert (=> d!141827 (= res!866473 (isStrictlySorted!870 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))))

(assert (=> d!141827 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!472 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) lt!583907)))

(declare-fun b!1304616 () Bool)

(assert (=> b!1304616 (= e!744193 (containsKey!727 (toList!10248 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (= (and d!141827 res!866473) b!1304616))

(assert (=> d!141827 m!1195371))

(assert (=> d!141827 m!1195371))

(assert (=> d!141827 m!1195373))

(declare-fun m!1195687 () Bool)

(assert (=> d!141827 m!1195687))

(declare-fun m!1195689 () Bool)

(assert (=> d!141827 m!1195689))

(assert (=> b!1304616 m!1195367))

(assert (=> b!1304375 d!141827))

(assert (=> b!1304375 d!141787))

(assert (=> b!1304375 d!141789))

(assert (=> b!1304410 d!141735))

(declare-fun d!141829 () Bool)

(assert (=> d!141829 (= (isDefined!512 (getValueByKey!709 (toList!10248 (ListLongMap!20466 Nil!29943)) k0!1205)) (not (isEmpty!1070 (getValueByKey!709 (toList!10248 (ListLongMap!20466 Nil!29943)) k0!1205))))))

(declare-fun bs!37160 () Bool)

(assert (= bs!37160 d!141829))

(assert (=> bs!37160 m!1195413))

(declare-fun m!1195691 () Bool)

(assert (=> bs!37160 m!1195691))

(assert (=> b!1304433 d!141829))

(declare-fun b!1304617 () Bool)

(declare-fun e!744194 () Option!760)

(assert (=> b!1304617 (= e!744194 (Some!759 (_2!11408 (h!31151 (toList!10248 (ListLongMap!20466 Nil!29943))))))))

(declare-fun b!1304619 () Bool)

(declare-fun e!744195 () Option!760)

(assert (=> b!1304619 (= e!744195 (getValueByKey!709 (t!43551 (toList!10248 (ListLongMap!20466 Nil!29943))) k0!1205))))

(declare-fun b!1304618 () Bool)

(assert (=> b!1304618 (= e!744194 e!744195)))

(declare-fun c!125231 () Bool)

(assert (=> b!1304618 (= c!125231 (and ((_ is Cons!29942) (toList!10248 (ListLongMap!20466 Nil!29943))) (not (= (_1!11408 (h!31151 (toList!10248 (ListLongMap!20466 Nil!29943)))) k0!1205))))))

(declare-fun b!1304620 () Bool)

(assert (=> b!1304620 (= e!744195 None!758)))

(declare-fun d!141831 () Bool)

(declare-fun c!125230 () Bool)

(assert (=> d!141831 (= c!125230 (and ((_ is Cons!29942) (toList!10248 (ListLongMap!20466 Nil!29943))) (= (_1!11408 (h!31151 (toList!10248 (ListLongMap!20466 Nil!29943)))) k0!1205)))))

(assert (=> d!141831 (= (getValueByKey!709 (toList!10248 (ListLongMap!20466 Nil!29943)) k0!1205) e!744194)))

(assert (= (and d!141831 c!125230) b!1304617))

(assert (= (and d!141831 (not c!125230)) b!1304618))

(assert (= (and b!1304618 c!125231) b!1304619))

(assert (= (and b!1304618 (not c!125231)) b!1304620))

(declare-fun m!1195693 () Bool)

(assert (=> b!1304619 m!1195693))

(assert (=> b!1304433 d!141831))

(assert (=> b!1304509 d!141735))

(declare-fun d!141833 () Bool)

(declare-fun e!744196 () Bool)

(assert (=> d!141833 e!744196))

(declare-fun res!866474 () Bool)

(assert (=> d!141833 (=> res!866474 e!744196)))

(declare-fun lt!583908 () Bool)

(assert (=> d!141833 (= res!866474 (not lt!583908))))

(declare-fun lt!583910 () Bool)

(assert (=> d!141833 (= lt!583908 lt!583910)))

(declare-fun lt!583909 () Unit!43144)

(declare-fun e!744197 () Unit!43144)

(assert (=> d!141833 (= lt!583909 e!744197)))

(declare-fun c!125232 () Bool)

(assert (=> d!141833 (= c!125232 lt!583910)))

(assert (=> d!141833 (= lt!583910 (containsKey!727 (toList!10248 lt!583742) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141833 (= (contains!8323 lt!583742 #b1000000000000000000000000000000000000000000000000000000000000000) lt!583908)))

(declare-fun b!1304621 () Bool)

(declare-fun lt!583911 () Unit!43144)

(assert (=> b!1304621 (= e!744197 lt!583911)))

(assert (=> b!1304621 (= lt!583911 (lemmaContainsKeyImpliesGetValueByKeyDefined!472 (toList!10248 lt!583742) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1304621 (isDefined!512 (getValueByKey!709 (toList!10248 lt!583742) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1304622 () Bool)

(declare-fun Unit!43154 () Unit!43144)

(assert (=> b!1304622 (= e!744197 Unit!43154)))

(declare-fun b!1304623 () Bool)

(assert (=> b!1304623 (= e!744196 (isDefined!512 (getValueByKey!709 (toList!10248 lt!583742) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141833 c!125232) b!1304621))

(assert (= (and d!141833 (not c!125232)) b!1304622))

(assert (= (and d!141833 (not res!866474)) b!1304623))

(declare-fun m!1195695 () Bool)

(assert (=> d!141833 m!1195695))

(declare-fun m!1195697 () Bool)

(assert (=> b!1304621 m!1195697))

(declare-fun m!1195699 () Bool)

(assert (=> b!1304621 m!1195699))

(assert (=> b!1304621 m!1195699))

(declare-fun m!1195701 () Bool)

(assert (=> b!1304621 m!1195701))

(assert (=> b!1304623 m!1195699))

(assert (=> b!1304623 m!1195699))

(assert (=> b!1304623 m!1195701))

(assert (=> b!1304407 d!141833))

(declare-fun d!141835 () Bool)

(declare-fun res!866475 () Bool)

(declare-fun e!744198 () Bool)

(assert (=> d!141835 (=> res!866475 e!744198)))

(assert (=> d!141835 (= res!866475 (and ((_ is Cons!29942) (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (= (_1!11408 (h!31151 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(assert (=> d!141835 (= (containsKey!727 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205) e!744198)))

(declare-fun b!1304624 () Bool)

(declare-fun e!744199 () Bool)

(assert (=> b!1304624 (= e!744198 e!744199)))

(declare-fun res!866476 () Bool)

(assert (=> b!1304624 (=> (not res!866476) (not e!744199))))

(assert (=> b!1304624 (= res!866476 (and (or (not ((_ is Cons!29942) (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) (bvsle (_1!11408 (h!31151 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)) ((_ is Cons!29942) (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) (bvslt (_1!11408 (h!31151 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)))) k0!1205)))))

(declare-fun b!1304625 () Bool)

(assert (=> b!1304625 (= e!744199 (containsKey!727 (t!43551 (toList!10248 (getCurrentListMap!5206 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))) k0!1205))))

(assert (= (and d!141835 (not res!866475)) b!1304624))

(assert (= (and b!1304624 res!866476) b!1304625))

(declare-fun m!1195703 () Bool)

(assert (=> b!1304625 m!1195703))

(assert (=> d!141743 d!141835))

(declare-fun d!141837 () Bool)

(assert (=> d!141837 (= (apply!1059 lt!583813 (select (arr!41905 _keys!1741) from!2144)) (get!21216 (getValueByKey!709 (toList!10248 lt!583813) (select (arr!41905 _keys!1741) from!2144))))))

(declare-fun bs!37161 () Bool)

(assert (= bs!37161 d!141837))

(assert (=> bs!37161 m!1195323))

(assert (=> bs!37161 m!1195513))

(assert (=> bs!37161 m!1195513))

(declare-fun m!1195705 () Bool)

(assert (=> bs!37161 m!1195705))

(assert (=> b!1304505 d!141837))

(assert (=> b!1304505 d!141793))

(declare-fun d!141839 () Bool)

(assert (=> d!141839 (isDefined!512 (getValueByKey!709 (toList!10248 (ListLongMap!20466 Nil!29943)) k0!1205))))

(declare-fun lt!583912 () Unit!43144)

(assert (=> d!141839 (= lt!583912 (choose!1938 (toList!10248 (ListLongMap!20466 Nil!29943)) k0!1205))))

(declare-fun e!744200 () Bool)

(assert (=> d!141839 e!744200))

(declare-fun res!866477 () Bool)

(assert (=> d!141839 (=> (not res!866477) (not e!744200))))

(assert (=> d!141839 (= res!866477 (isStrictlySorted!870 (toList!10248 (ListLongMap!20466 Nil!29943))))))

(assert (=> d!141839 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!472 (toList!10248 (ListLongMap!20466 Nil!29943)) k0!1205) lt!583912)))

(declare-fun b!1304626 () Bool)

(assert (=> b!1304626 (= e!744200 (containsKey!727 (toList!10248 (ListLongMap!20466 Nil!29943)) k0!1205))))

(assert (= (and d!141839 res!866477) b!1304626))

(assert (=> d!141839 m!1195413))

(assert (=> d!141839 m!1195413))

(assert (=> d!141839 m!1195415))

(declare-fun m!1195707 () Bool)

(assert (=> d!141839 m!1195707))

(declare-fun m!1195709 () Bool)

(assert (=> d!141839 m!1195709))

(assert (=> b!1304626 m!1195409))

(assert (=> b!1304431 d!141839))

(assert (=> b!1304431 d!141829))

(assert (=> b!1304431 d!141831))

(declare-fun d!141841 () Bool)

(declare-fun e!744201 () Bool)

(assert (=> d!141841 e!744201))

(declare-fun res!866478 () Bool)

(assert (=> d!141841 (=> res!866478 e!744201)))

(declare-fun lt!583913 () Bool)

(assert (=> d!141841 (= res!866478 (not lt!583913))))

(declare-fun lt!583915 () Bool)

(assert (=> d!141841 (= lt!583913 lt!583915)))

(declare-fun lt!583914 () Unit!43144)

(declare-fun e!744202 () Unit!43144)

(assert (=> d!141841 (= lt!583914 e!744202)))

(declare-fun c!125233 () Bool)

(assert (=> d!141841 (= c!125233 lt!583915)))

(assert (=> d!141841 (= lt!583915 (containsKey!727 (toList!10248 lt!583742) (select (arr!41905 _keys!1741) from!2144)))))

(assert (=> d!141841 (= (contains!8323 lt!583742 (select (arr!41905 _keys!1741) from!2144)) lt!583913)))

(declare-fun b!1304627 () Bool)

(declare-fun lt!583916 () Unit!43144)

(assert (=> b!1304627 (= e!744202 lt!583916)))

(assert (=> b!1304627 (= lt!583916 (lemmaContainsKeyImpliesGetValueByKeyDefined!472 (toList!10248 lt!583742) (select (arr!41905 _keys!1741) from!2144)))))

(assert (=> b!1304627 (isDefined!512 (getValueByKey!709 (toList!10248 lt!583742) (select (arr!41905 _keys!1741) from!2144)))))

(declare-fun b!1304628 () Bool)

(declare-fun Unit!43155 () Unit!43144)

(assert (=> b!1304628 (= e!744202 Unit!43155)))

(declare-fun b!1304629 () Bool)

(assert (=> b!1304629 (= e!744201 (isDefined!512 (getValueByKey!709 (toList!10248 lt!583742) (select (arr!41905 _keys!1741) from!2144))))))

(assert (= (and d!141841 c!125233) b!1304627))

(assert (= (and d!141841 (not c!125233)) b!1304628))

(assert (= (and d!141841 (not res!866478)) b!1304629))

(assert (=> d!141841 m!1195323))

(declare-fun m!1195711 () Bool)

(assert (=> d!141841 m!1195711))

(assert (=> b!1304627 m!1195323))

(declare-fun m!1195713 () Bool)

(assert (=> b!1304627 m!1195713))

(assert (=> b!1304627 m!1195323))

(assert (=> b!1304627 m!1195581))

(assert (=> b!1304627 m!1195581))

(declare-fun m!1195715 () Bool)

(assert (=> b!1304627 m!1195715))

(assert (=> b!1304629 m!1195323))

(assert (=> b!1304629 m!1195581))

(assert (=> b!1304629 m!1195581))

(assert (=> b!1304629 m!1195715))

(assert (=> b!1304409 d!141841))

(assert (=> bm!64290 d!141731))

(assert (=> b!1304404 d!141735))

(declare-fun d!141843 () Bool)

(declare-fun e!744203 () Bool)

(assert (=> d!141843 e!744203))

(declare-fun res!866479 () Bool)

(assert (=> d!141843 (=> (not res!866479) (not e!744203))))

(declare-fun lt!583919 () ListLongMap!20465)

(assert (=> d!141843 (= res!866479 (contains!8323 lt!583919 (_1!11408 (tuple2!22797 (select (arr!41905 _keys!1741) from!2144) (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!583918 () List!29946)

(assert (=> d!141843 (= lt!583919 (ListLongMap!20466 lt!583918))))

(declare-fun lt!583917 () Unit!43144)

(declare-fun lt!583920 () Unit!43144)

(assert (=> d!141843 (= lt!583917 lt!583920)))

(assert (=> d!141843 (= (getValueByKey!709 lt!583918 (_1!11408 (tuple2!22797 (select (arr!41905 _keys!1741) from!2144) (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!759 (_2!11408 (tuple2!22797 (select (arr!41905 _keys!1741) from!2144) (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141843 (= lt!583920 (lemmaContainsTupThenGetReturnValue!353 lt!583918 (_1!11408 (tuple2!22797 (select (arr!41905 _keys!1741) from!2144) (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11408 (tuple2!22797 (select (arr!41905 _keys!1741) from!2144) (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141843 (= lt!583918 (insertStrictlySorted!482 (toList!10248 call!64268) (_1!11408 (tuple2!22797 (select (arr!41905 _keys!1741) from!2144) (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11408 (tuple2!22797 (select (arr!41905 _keys!1741) from!2144) (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!141843 (= (+!4465 call!64268 (tuple2!22797 (select (arr!41905 _keys!1741) from!2144) (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!583919)))

(declare-fun b!1304630 () Bool)

(declare-fun res!866480 () Bool)

(assert (=> b!1304630 (=> (not res!866480) (not e!744203))))

(assert (=> b!1304630 (= res!866480 (= (getValueByKey!709 (toList!10248 lt!583919) (_1!11408 (tuple2!22797 (select (arr!41905 _keys!1741) from!2144) (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!759 (_2!11408 (tuple2!22797 (select (arr!41905 _keys!1741) from!2144) (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1304631 () Bool)

(assert (=> b!1304631 (= e!744203 (contains!8325 (toList!10248 lt!583919) (tuple2!22797 (select (arr!41905 _keys!1741) from!2144) (get!21215 (select (arr!41904 _values!1445) from!2144) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!141843 res!866479) b!1304630))

(assert (= (and b!1304630 res!866480) b!1304631))

(declare-fun m!1195717 () Bool)

(assert (=> d!141843 m!1195717))

(declare-fun m!1195719 () Bool)

(assert (=> d!141843 m!1195719))

(declare-fun m!1195721 () Bool)

(assert (=> d!141843 m!1195721))

(declare-fun m!1195723 () Bool)

(assert (=> d!141843 m!1195723))

(declare-fun m!1195725 () Bool)

(assert (=> b!1304630 m!1195725))

(declare-fun m!1195727 () Bool)

(assert (=> b!1304631 m!1195727))

(assert (=> b!1304405 d!141843))

(declare-fun d!141845 () Bool)

(declare-fun e!744204 () Bool)

(assert (=> d!141845 e!744204))

(declare-fun res!866481 () Bool)

(assert (=> d!141845 (=> res!866481 e!744204)))

(declare-fun lt!583921 () Bool)

(assert (=> d!141845 (= res!866481 (not lt!583921))))

(declare-fun lt!583923 () Bool)

(assert (=> d!141845 (= lt!583921 lt!583923)))

(declare-fun lt!583922 () Unit!43144)

(declare-fun e!744205 () Unit!43144)

(assert (=> d!141845 (= lt!583922 e!744205)))

(declare-fun c!125234 () Bool)

(assert (=> d!141845 (= c!125234 lt!583923)))

(assert (=> d!141845 (= lt!583923 (containsKey!727 (toList!10248 (+!4465 lt!583745 (tuple2!22797 lt!583744 lt!583741))) lt!583743))))

(assert (=> d!141845 (= (contains!8323 (+!4465 lt!583745 (tuple2!22797 lt!583744 lt!583741)) lt!583743) lt!583921)))

(declare-fun b!1304632 () Bool)

(declare-fun lt!583924 () Unit!43144)

(assert (=> b!1304632 (= e!744205 lt!583924)))

(assert (=> b!1304632 (= lt!583924 (lemmaContainsKeyImpliesGetValueByKeyDefined!472 (toList!10248 (+!4465 lt!583745 (tuple2!22797 lt!583744 lt!583741))) lt!583743))))

(assert (=> b!1304632 (isDefined!512 (getValueByKey!709 (toList!10248 (+!4465 lt!583745 (tuple2!22797 lt!583744 lt!583741))) lt!583743))))

(declare-fun b!1304633 () Bool)

(declare-fun Unit!43156 () Unit!43144)

(assert (=> b!1304633 (= e!744205 Unit!43156)))

(declare-fun b!1304634 () Bool)

(assert (=> b!1304634 (= e!744204 (isDefined!512 (getValueByKey!709 (toList!10248 (+!4465 lt!583745 (tuple2!22797 lt!583744 lt!583741))) lt!583743)))))

(assert (= (and d!141845 c!125234) b!1304632))

(assert (= (and d!141845 (not c!125234)) b!1304633))

(assert (= (and d!141845 (not res!866481)) b!1304634))

(declare-fun m!1195729 () Bool)

(assert (=> d!141845 m!1195729))

(declare-fun m!1195731 () Bool)

(assert (=> b!1304632 m!1195731))

(declare-fun m!1195733 () Bool)

(assert (=> b!1304632 m!1195733))

(assert (=> b!1304632 m!1195733))

(declare-fun m!1195735 () Bool)

(assert (=> b!1304632 m!1195735))

(assert (=> b!1304634 m!1195733))

(assert (=> b!1304634 m!1195733))

(assert (=> b!1304634 m!1195735))

(assert (=> b!1304405 d!141845))

(declare-fun d!141847 () Bool)

(declare-fun e!744206 () Bool)

(assert (=> d!141847 e!744206))

(declare-fun res!866482 () Bool)

(assert (=> d!141847 (=> (not res!866482) (not e!744206))))

(declare-fun lt!583927 () ListLongMap!20465)

(assert (=> d!141847 (= res!866482 (contains!8323 lt!583927 (_1!11408 (tuple2!22797 lt!583744 lt!583741))))))

(declare-fun lt!583926 () List!29946)

(assert (=> d!141847 (= lt!583927 (ListLongMap!20466 lt!583926))))

(declare-fun lt!583925 () Unit!43144)

(declare-fun lt!583928 () Unit!43144)

(assert (=> d!141847 (= lt!583925 lt!583928)))

(assert (=> d!141847 (= (getValueByKey!709 lt!583926 (_1!11408 (tuple2!22797 lt!583744 lt!583741))) (Some!759 (_2!11408 (tuple2!22797 lt!583744 lt!583741))))))

(assert (=> d!141847 (= lt!583928 (lemmaContainsTupThenGetReturnValue!353 lt!583926 (_1!11408 (tuple2!22797 lt!583744 lt!583741)) (_2!11408 (tuple2!22797 lt!583744 lt!583741))))))

(assert (=> d!141847 (= lt!583926 (insertStrictlySorted!482 (toList!10248 lt!583745) (_1!11408 (tuple2!22797 lt!583744 lt!583741)) (_2!11408 (tuple2!22797 lt!583744 lt!583741))))))

(assert (=> d!141847 (= (+!4465 lt!583745 (tuple2!22797 lt!583744 lt!583741)) lt!583927)))

(declare-fun b!1304635 () Bool)

(declare-fun res!866483 () Bool)

(assert (=> b!1304635 (=> (not res!866483) (not e!744206))))

(assert (=> b!1304635 (= res!866483 (= (getValueByKey!709 (toList!10248 lt!583927) (_1!11408 (tuple2!22797 lt!583744 lt!583741))) (Some!759 (_2!11408 (tuple2!22797 lt!583744 lt!583741)))))))

(declare-fun b!1304636 () Bool)

(assert (=> b!1304636 (= e!744206 (contains!8325 (toList!10248 lt!583927) (tuple2!22797 lt!583744 lt!583741)))))

(assert (= (and d!141847 res!866482) b!1304635))

(assert (= (and b!1304635 res!866483) b!1304636))

(declare-fun m!1195737 () Bool)

(assert (=> d!141847 m!1195737))

(declare-fun m!1195739 () Bool)

(assert (=> d!141847 m!1195739))

(declare-fun m!1195741 () Bool)

(assert (=> d!141847 m!1195741))

(declare-fun m!1195743 () Bool)

(assert (=> d!141847 m!1195743))

(declare-fun m!1195745 () Bool)

(assert (=> b!1304635 m!1195745))

(declare-fun m!1195747 () Bool)

(assert (=> b!1304636 m!1195747))

(assert (=> b!1304405 d!141847))

(declare-fun d!141849 () Bool)

(assert (=> d!141849 (not (contains!8323 (+!4465 lt!583745 (tuple2!22797 lt!583744 lt!583741)) lt!583743))))

(declare-fun lt!583931 () Unit!43144)

(declare-fun choose!1941 (ListLongMap!20465 (_ BitVec 64) V!51675 (_ BitVec 64)) Unit!43144)

(assert (=> d!141849 (= lt!583931 (choose!1941 lt!583745 lt!583744 lt!583741 lt!583743))))

(declare-fun e!744209 () Bool)

(assert (=> d!141849 e!744209))

(declare-fun res!866486 () Bool)

(assert (=> d!141849 (=> (not res!866486) (not e!744209))))

(assert (=> d!141849 (= res!866486 (not (contains!8323 lt!583745 lt!583743)))))

(assert (=> d!141849 (= (addStillNotContains!489 lt!583745 lt!583744 lt!583741 lt!583743) lt!583931)))

(declare-fun b!1304640 () Bool)

(assert (=> b!1304640 (= e!744209 (not (= lt!583744 lt!583743)))))

(assert (= (and d!141849 res!866486) b!1304640))

(assert (=> d!141849 m!1195383))

(assert (=> d!141849 m!1195383))

(assert (=> d!141849 m!1195385))

(declare-fun m!1195749 () Bool)

(assert (=> d!141849 m!1195749))

(declare-fun m!1195751 () Bool)

(assert (=> d!141849 m!1195751))

(assert (=> b!1304405 d!141849))

(assert (=> b!1304405 d!141793))

(assert (=> d!141745 d!141747))

(declare-fun b!1304641 () Bool)

(declare-fun e!744210 () Bool)

(declare-fun e!744213 () Bool)

(assert (=> b!1304641 (= e!744210 e!744213)))

(declare-fun res!866489 () Bool)

(assert (=> b!1304641 (=> (not res!866489) (not e!744213))))

(declare-fun e!744211 () Bool)

(assert (=> b!1304641 (= res!866489 (not e!744211))))

(declare-fun res!866487 () Bool)

(assert (=> b!1304641 (=> (not res!866487) (not e!744211))))

(assert (=> b!1304641 (= res!866487 (validKeyInArray!0 (select (arr!41905 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1304642 () Bool)

(declare-fun e!744212 () Bool)

(assert (=> b!1304642 (= e!744213 e!744212)))

(declare-fun c!125235 () Bool)

(assert (=> b!1304642 (= c!125235 (validKeyInArray!0 (select (arr!41905 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!64294 () Bool)

(declare-fun call!64297 () Bool)

(assert (=> bm!64294 (= call!64297 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!125235 (Cons!29943 (select (arr!41905 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!125181 (Cons!29943 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000) Nil!29944) Nil!29944)) (ite c!125181 (Cons!29943 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000) Nil!29944) Nil!29944))))))

(declare-fun b!1304643 () Bool)

(assert (=> b!1304643 (= e!744211 (contains!8324 (ite c!125181 (Cons!29943 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000) Nil!29944) Nil!29944) (select (arr!41905 _keys!1741) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1304644 () Bool)

(assert (=> b!1304644 (= e!744212 call!64297)))

(declare-fun b!1304645 () Bool)

(assert (=> b!1304645 (= e!744212 call!64297)))

(declare-fun d!141851 () Bool)

(declare-fun res!866488 () Bool)

(assert (=> d!141851 (=> res!866488 e!744210)))

(assert (=> d!141851 (= res!866488 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!42456 _keys!1741)))))

(assert (=> d!141851 (= (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125181 (Cons!29943 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000) Nil!29944) Nil!29944)) e!744210)))

(assert (= (and d!141851 (not res!866488)) b!1304641))

(assert (= (and b!1304641 res!866487) b!1304643))

(assert (= (and b!1304641 res!866489) b!1304642))

(assert (= (and b!1304642 c!125235) b!1304644))

(assert (= (and b!1304642 (not c!125235)) b!1304645))

(assert (= (or b!1304644 b!1304645) bm!64294))

(assert (=> b!1304641 m!1195565))

(assert (=> b!1304641 m!1195565))

(assert (=> b!1304641 m!1195567))

(assert (=> b!1304642 m!1195565))

(assert (=> b!1304642 m!1195565))

(assert (=> b!1304642 m!1195567))

(assert (=> bm!64294 m!1195565))

(declare-fun m!1195753 () Bool)

(assert (=> bm!64294 m!1195753))

(assert (=> b!1304643 m!1195565))

(assert (=> b!1304643 m!1195565))

(declare-fun m!1195755 () Bool)

(assert (=> b!1304643 m!1195755))

(assert (=> bm!64268 d!141851))

(declare-fun d!141853 () Bool)

(assert (=> d!141853 (= (apply!1059 lt!583813 #b0000000000000000000000000000000000000000000000000000000000000000) (get!21216 (getValueByKey!709 (toList!10248 lt!583813) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37162 () Bool)

(assert (= bs!37162 d!141853))

(assert (=> bs!37162 m!1195561))

(assert (=> bs!37162 m!1195561))

(declare-fun m!1195757 () Bool)

(assert (=> bs!37162 m!1195757))

(assert (=> b!1304501 d!141853))

(declare-fun d!141855 () Bool)

(declare-fun lt!583934 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!654 (List!29947) (InoxSet (_ BitVec 64)))

(assert (=> d!141855 (= lt!583934 (select (content!654 Nil!29944) (select (arr!41905 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun e!744218 () Bool)

(assert (=> d!141855 (= lt!583934 e!744218)))

(declare-fun res!866495 () Bool)

(assert (=> d!141855 (=> (not res!866495) (not e!744218))))

(assert (=> d!141855 (= res!866495 ((_ is Cons!29943) Nil!29944))))

(assert (=> d!141855 (= (contains!8324 Nil!29944 (select (arr!41905 _keys!1741) #b00000000000000000000000000000000)) lt!583934)))

(declare-fun b!1304650 () Bool)

(declare-fun e!744219 () Bool)

(assert (=> b!1304650 (= e!744218 e!744219)))

(declare-fun res!866494 () Bool)

(assert (=> b!1304650 (=> res!866494 e!744219)))

(assert (=> b!1304650 (= res!866494 (= (h!31152 Nil!29944) (select (arr!41905 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1304651 () Bool)

(assert (=> b!1304651 (= e!744219 (contains!8324 (t!43552 Nil!29944) (select (arr!41905 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!141855 res!866495) b!1304650))

(assert (= (and b!1304650 (not res!866494)) b!1304651))

(declare-fun m!1195759 () Bool)

(assert (=> d!141855 m!1195759))

(assert (=> d!141855 m!1195401))

(declare-fun m!1195761 () Bool)

(assert (=> d!141855 m!1195761))

(assert (=> b!1304651 m!1195401))

(declare-fun m!1195763 () Bool)

(assert (=> b!1304651 m!1195763))

(assert (=> b!1304428 d!141855))

(declare-fun d!141857 () Bool)

(declare-fun e!744220 () Bool)

(assert (=> d!141857 e!744220))

(declare-fun res!866496 () Bool)

(assert (=> d!141857 (=> res!866496 e!744220)))

(declare-fun lt!583935 () Bool)

(assert (=> d!141857 (= res!866496 (not lt!583935))))

(declare-fun lt!583937 () Bool)

(assert (=> d!141857 (= lt!583935 lt!583937)))

(declare-fun lt!583936 () Unit!43144)

(declare-fun e!744221 () Unit!43144)

(assert (=> d!141857 (= lt!583936 e!744221)))

(declare-fun c!125236 () Bool)

(assert (=> d!141857 (= c!125236 lt!583937)))

(assert (=> d!141857 (= lt!583937 (containsKey!727 (toList!10248 lt!583813) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!141857 (= (contains!8323 lt!583813 #b1000000000000000000000000000000000000000000000000000000000000000) lt!583935)))

(declare-fun b!1304652 () Bool)

(declare-fun lt!583938 () Unit!43144)

(assert (=> b!1304652 (= e!744221 lt!583938)))

(assert (=> b!1304652 (= lt!583938 (lemmaContainsKeyImpliesGetValueByKeyDefined!472 (toList!10248 lt!583813) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1304652 (isDefined!512 (getValueByKey!709 (toList!10248 lt!583813) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1304653 () Bool)

(declare-fun Unit!43157 () Unit!43144)

(assert (=> b!1304653 (= e!744221 Unit!43157)))

(declare-fun b!1304654 () Bool)

(assert (=> b!1304654 (= e!744220 (isDefined!512 (getValueByKey!709 (toList!10248 lt!583813) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141857 c!125236) b!1304652))

(assert (= (and d!141857 (not c!125236)) b!1304653))

(assert (= (and d!141857 (not res!866496)) b!1304654))

(declare-fun m!1195765 () Bool)

(assert (=> d!141857 m!1195765))

(declare-fun m!1195767 () Bool)

(assert (=> b!1304652 m!1195767))

(assert (=> b!1304652 m!1195549))

(assert (=> b!1304652 m!1195549))

(declare-fun m!1195769 () Bool)

(assert (=> b!1304652 m!1195769))

(assert (=> b!1304654 m!1195549))

(assert (=> b!1304654 m!1195549))

(assert (=> b!1304654 m!1195769))

(assert (=> bm!64289 d!141857))

(declare-fun d!141859 () Bool)

(declare-fun e!744223 () Bool)

(assert (=> d!141859 e!744223))

(declare-fun res!866500 () Bool)

(assert (=> d!141859 (=> (not res!866500) (not e!744223))))

(declare-fun lt!583941 () ListLongMap!20465)

(assert (=> d!141859 (= res!866500 (not (contains!8323 lt!583941 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!744227 () ListLongMap!20465)

(assert (=> d!141859 (= lt!583941 e!744227)))

(declare-fun c!125240 () Bool)

(assert (=> d!141859 (= c!125240 (bvsge (bvadd from!2144 #b00000000000000000000000000000001) (size!42456 _keys!1741)))))

(assert (=> d!141859 (validMask!0 mask!2175)))

(assert (=> d!141859 (= (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448) lt!583941)))

(declare-fun b!1304655 () Bool)

(assert (=> b!1304655 (= e!744227 (ListLongMap!20466 Nil!29943))))

(declare-fun b!1304656 () Bool)

(declare-fun e!744224 () Bool)

(assert (=> b!1304656 (= e!744224 (= lt!583941 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun bm!64295 () Bool)

(declare-fun call!64298 () ListLongMap!20465)

(assert (=> bm!64295 (= call!64298 (getCurrentListMapNoExtraKeys!6182 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1304657 () Bool)

(declare-fun e!744226 () ListLongMap!20465)

(assert (=> b!1304657 (= e!744227 e!744226)))

(declare-fun c!125238 () Bool)

(assert (=> b!1304657 (= c!125238 (validKeyInArray!0 (select (arr!41905 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))))))

(declare-fun b!1304658 () Bool)

(declare-fun lt!583939 () Unit!43144)

(declare-fun lt!583945 () Unit!43144)

(assert (=> b!1304658 (= lt!583939 lt!583945)))

(declare-fun lt!583942 () (_ BitVec 64))

(declare-fun lt!583944 () ListLongMap!20465)

(declare-fun lt!583940 () V!51675)

(declare-fun lt!583943 () (_ BitVec 64))

(assert (=> b!1304658 (not (contains!8323 (+!4465 lt!583944 (tuple2!22797 lt!583943 lt!583940)) lt!583942))))

(assert (=> b!1304658 (= lt!583945 (addStillNotContains!489 lt!583944 lt!583943 lt!583940 lt!583942))))

(assert (=> b!1304658 (= lt!583942 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1304658 (= lt!583940 (get!21215 (select (arr!41904 _values!1445) (bvadd from!2144 #b00000000000000000000000000000001)) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1304658 (= lt!583943 (select (arr!41905 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001)))))

(assert (=> b!1304658 (= lt!583944 call!64298)))

(assert (=> b!1304658 (= e!744226 (+!4465 call!64298 (tuple2!22797 (select (arr!41905 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001)) (get!21215 (select (arr!41904 _values!1445) (bvadd from!2144 #b00000000000000000000000000000001)) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1304659 () Bool)

(declare-fun e!744222 () Bool)

(assert (=> b!1304659 (= e!744223 e!744222)))

(declare-fun c!125237 () Bool)

(declare-fun e!744228 () Bool)

(assert (=> b!1304659 (= c!125237 e!744228)))

(declare-fun res!866498 () Bool)

(assert (=> b!1304659 (=> (not res!866498) (not e!744228))))

(assert (=> b!1304659 (= res!866498 (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42456 _keys!1741)))))

(declare-fun b!1304660 () Bool)

(declare-fun res!866499 () Bool)

(assert (=> b!1304660 (=> (not res!866499) (not e!744223))))

(assert (=> b!1304660 (= res!866499 (not (contains!8323 lt!583941 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1304661 () Bool)

(assert (=> b!1304661 (= e!744222 e!744224)))

(declare-fun c!125239 () Bool)

(assert (=> b!1304661 (= c!125239 (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42456 _keys!1741)))))

(declare-fun b!1304662 () Bool)

(declare-fun e!744225 () Bool)

(assert (=> b!1304662 (= e!744222 e!744225)))

(assert (=> b!1304662 (and (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42456 _keys!1741)))))

(declare-fun res!866497 () Bool)

(assert (=> b!1304662 (= res!866497 (contains!8323 lt!583941 (select (arr!41905 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))))))

(assert (=> b!1304662 (=> (not res!866497) (not e!744225))))

(declare-fun b!1304663 () Bool)

(assert (=> b!1304663 (= e!744228 (validKeyInArray!0 (select (arr!41905 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))))))

(assert (=> b!1304663 (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1304664 () Bool)

(assert (=> b!1304664 (= e!744226 call!64298)))

(declare-fun b!1304665 () Bool)

(assert (=> b!1304665 (and (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42456 _keys!1741)))))

(assert (=> b!1304665 (and (bvsge (bvadd from!2144 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42455 _values!1445)))))

(assert (=> b!1304665 (= e!744225 (= (apply!1059 lt!583941 (select (arr!41905 _keys!1741) (bvadd from!2144 #b00000000000000000000000000000001))) (get!21215 (select (arr!41904 _values!1445) (bvadd from!2144 #b00000000000000000000000000000001)) (dynLambda!3511 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1304666 () Bool)

(assert (=> b!1304666 (= e!744224 (isEmpty!1069 lt!583941))))

(assert (= (and d!141859 c!125240) b!1304655))

(assert (= (and d!141859 (not c!125240)) b!1304657))

(assert (= (and b!1304657 c!125238) b!1304658))

(assert (= (and b!1304657 (not c!125238)) b!1304664))

(assert (= (or b!1304658 b!1304664) bm!64295))

(assert (= (and d!141859 res!866500) b!1304660))

(assert (= (and b!1304660 res!866499) b!1304659))

(assert (= (and b!1304659 res!866498) b!1304663))

(assert (= (and b!1304659 c!125237) b!1304662))

(assert (= (and b!1304659 (not c!125237)) b!1304661))

(assert (= (and b!1304662 res!866497) b!1304665))

(assert (= (and b!1304661 c!125239) b!1304656))

(assert (= (and b!1304661 (not c!125239)) b!1304666))

(declare-fun b_lambda!23329 () Bool)

(assert (=> (not b_lambda!23329) (not b!1304658)))

(assert (=> b!1304658 t!43554))

(declare-fun b_and!47489 () Bool)

(assert (= b_and!47487 (and (=> t!43554 result!23839) b_and!47489)))

(declare-fun b_lambda!23331 () Bool)

(assert (=> (not b_lambda!23331) (not b!1304665)))

(assert (=> b!1304665 t!43554))

(declare-fun b_and!47491 () Bool)

(assert (= b_and!47489 (and (=> t!43554 result!23839) b_and!47491)))

(declare-fun m!1195771 () Bool)

(assert (=> b!1304658 m!1195771))

(declare-fun m!1195773 () Bool)

(assert (=> b!1304658 m!1195773))

(assert (=> b!1304658 m!1195771))

(assert (=> b!1304658 m!1195379))

(declare-fun m!1195775 () Bool)

(assert (=> b!1304658 m!1195775))

(assert (=> b!1304658 m!1195379))

(declare-fun m!1195777 () Bool)

(assert (=> b!1304658 m!1195777))

(declare-fun m!1195779 () Bool)

(assert (=> b!1304658 m!1195779))

(assert (=> b!1304658 m!1195777))

(declare-fun m!1195781 () Bool)

(assert (=> b!1304658 m!1195781))

(declare-fun m!1195783 () Bool)

(assert (=> b!1304658 m!1195783))

(assert (=> b!1304662 m!1195779))

(assert (=> b!1304662 m!1195779))

(declare-fun m!1195785 () Bool)

(assert (=> b!1304662 m!1195785))

(declare-fun m!1195787 () Bool)

(assert (=> bm!64295 m!1195787))

(declare-fun m!1195789 () Bool)

(assert (=> b!1304660 m!1195789))

(assert (=> b!1304663 m!1195779))

(assert (=> b!1304663 m!1195779))

(declare-fun m!1195791 () Bool)

(assert (=> b!1304663 m!1195791))

(declare-fun m!1195793 () Bool)

(assert (=> b!1304666 m!1195793))

(declare-fun m!1195795 () Bool)

(assert (=> d!141859 m!1195795))

(assert (=> d!141859 m!1195315))

(assert (=> b!1304657 m!1195779))

(assert (=> b!1304657 m!1195779))

(assert (=> b!1304657 m!1195791))

(assert (=> b!1304656 m!1195787))

(assert (=> b!1304665 m!1195771))

(assert (=> b!1304665 m!1195771))

(assert (=> b!1304665 m!1195379))

(assert (=> b!1304665 m!1195775))

(assert (=> b!1304665 m!1195779))

(assert (=> b!1304665 m!1195379))

(assert (=> b!1304665 m!1195779))

(declare-fun m!1195797 () Bool)

(assert (=> b!1304665 m!1195797))

(assert (=> b!1304403 d!141859))

(assert (=> bm!64265 d!141859))

(declare-fun b!1304667 () Bool)

(declare-fun e!744230 () Bool)

(assert (=> b!1304667 (= e!744230 tp_is_empty!34929)))

(declare-fun mapIsEmpty!54000 () Bool)

(declare-fun mapRes!54000 () Bool)

(assert (=> mapIsEmpty!54000 mapRes!54000))

(declare-fun b!1304668 () Bool)

(declare-fun e!744229 () Bool)

(assert (=> b!1304668 (= e!744229 tp_is_empty!34929)))

(declare-fun mapNonEmpty!54000 () Bool)

(declare-fun tp!103036 () Bool)

(assert (=> mapNonEmpty!54000 (= mapRes!54000 (and tp!103036 e!744230))))

(declare-fun mapKey!54000 () (_ BitVec 32))

(declare-fun mapValue!54000 () ValueCell!16566)

(declare-fun mapRest!54000 () (Array (_ BitVec 32) ValueCell!16566))

(assert (=> mapNonEmpty!54000 (= mapRest!53999 (store mapRest!54000 mapKey!54000 mapValue!54000))))

(declare-fun condMapEmpty!54000 () Bool)

(declare-fun mapDefault!54000 () ValueCell!16566)

(assert (=> mapNonEmpty!53999 (= condMapEmpty!54000 (= mapRest!53999 ((as const (Array (_ BitVec 32) ValueCell!16566)) mapDefault!54000)))))

(assert (=> mapNonEmpty!53999 (= tp!103035 (and e!744229 mapRes!54000))))

(assert (= (and mapNonEmpty!53999 condMapEmpty!54000) mapIsEmpty!54000))

(assert (= (and mapNonEmpty!53999 (not condMapEmpty!54000)) mapNonEmpty!54000))

(assert (= (and mapNonEmpty!54000 ((_ is ValueCellFull!16566) mapValue!54000)) b!1304667))

(assert (= (and mapNonEmpty!53999 ((_ is ValueCellFull!16566) mapDefault!54000)) b!1304668))

(declare-fun m!1195799 () Bool)

(assert (=> mapNonEmpty!54000 m!1195799))

(declare-fun b_lambda!23333 () Bool)

(assert (= b_lambda!23329 (or (and start!110202 b_free!29289) b_lambda!23333)))

(declare-fun b_lambda!23335 () Bool)

(assert (= b_lambda!23331 (or (and start!110202 b_free!29289) b_lambda!23335)))

(check-sat (not b!1304616) (not b!1304549) (not b!1304583) (not d!141787) (not b!1304627) (not b!1304584) (not b_lambda!23323) (not b!1304614) (not mapNonEmpty!54000) (not b!1304580) (not b!1304625) (not d!141797) (not b!1304534) (not b!1304526) (not d!141821) (not b!1304581) (not d!141833) (not b!1304574) (not b!1304613) (not b_next!29289) (not b!1304590) (not d!141843) (not b!1304632) (not d!141807) (not d!141825) (not b_lambda!23335) (not d!141819) (not d!141769) (not b!1304660) (not d!141805) (not d!141839) (not d!141823) (not d!141855) (not d!141799) (not b!1304635) (not d!141759) (not d!141853) (not b!1304528) (not bm!64293) (not d!141791) (not d!141817) (not b!1304606) b_and!47491 (not b!1304656) (not b!1304636) (not d!141767) (not b!1304666) (not b!1304643) (not bm!64294) (not b!1304658) (not b!1304597) (not b!1304605) (not b!1304623) (not d!141841) (not b!1304611) (not b!1304524) (not b!1304587) (not b!1304575) (not d!141811) (not b!1304663) (not b!1304621) (not b!1304547) (not b!1304654) (not b!1304631) (not b_lambda!23327) (not d!141849) (not d!141763) (not b!1304612) (not d!141809) (not d!141837) (not b!1304657) (not d!141773) (not b!1304629) (not b!1304651) (not b!1304577) (not d!141757) (not b!1304608) (not b!1304545) (not d!141829) (not b!1304604) (not b_lambda!23333) (not b!1304662) (not d!141779) (not b!1304642) (not b!1304652) (not d!141847) (not d!141775) (not d!141813) (not d!141801) (not b!1304555) (not b!1304596) (not b!1304630) (not d!141753) (not b!1304571) (not b!1304619) (not b_lambda!23325) (not d!141845) (not b!1304525) (not d!141815) (not b!1304665) (not bm!64295) (not b!1304641) tp_is_empty!34929 (not d!141857) (not d!141795) (not b!1304609) (not d!141781) (not b!1304610) (not d!141783) (not d!141803) (not b!1304634) (not b!1304626) (not d!141859) (not d!141827))
(check-sat b_and!47491 (not b_next!29289))
