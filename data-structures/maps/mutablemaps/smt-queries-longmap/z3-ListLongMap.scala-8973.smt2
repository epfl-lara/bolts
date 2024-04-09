; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108602 () Bool)

(assert start!108602)

(declare-fun b_free!28113 () Bool)

(declare-fun b_next!28113 () Bool)

(assert (=> start!108602 (= b_free!28113 (not b_next!28113))))

(declare-fun tp!99449 () Bool)

(declare-fun b_and!46183 () Bool)

(assert (=> start!108602 (= tp!99449 b_and!46183)))

(declare-fun mapIsEmpty!52181 () Bool)

(declare-fun mapRes!52181 () Bool)

(assert (=> mapIsEmpty!52181 mapRes!52181))

(declare-fun b!1281520 () Bool)

(declare-fun e!732213 () Bool)

(declare-fun tp_is_empty!33753 () Bool)

(assert (=> b!1281520 (= e!732213 tp_is_empty!33753)))

(declare-fun res!851389 () Bool)

(declare-fun e!732210 () Bool)

(assert (=> start!108602 (=> (not res!851389) (not e!732210))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108602 (= res!851389 (validMask!0 mask!2175))))

(assert (=> start!108602 e!732210))

(assert (=> start!108602 tp_is_empty!33753))

(assert (=> start!108602 true))

(declare-datatypes ((V!50107 0))(
  ( (V!50108 (val!16951 Int)) )
))
(declare-datatypes ((ValueCell!15978 0))(
  ( (ValueCellFull!15978 (v!19549 V!50107)) (EmptyCell!15978) )
))
(declare-datatypes ((array!84529 0))(
  ( (array!84530 (arr!40764 (Array (_ BitVec 32) ValueCell!15978)) (size!41315 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84529)

(declare-fun e!732209 () Bool)

(declare-fun array_inv!30917 (array!84529) Bool)

(assert (=> start!108602 (and (array_inv!30917 _values!1445) e!732209)))

(declare-datatypes ((array!84531 0))(
  ( (array!84532 (arr!40765 (Array (_ BitVec 32) (_ BitVec 64))) (size!41316 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84531)

(declare-fun array_inv!30918 (array!84531) Bool)

(assert (=> start!108602 (array_inv!30918 _keys!1741)))

(assert (=> start!108602 tp!99449))

(declare-fun b!1281521 () Bool)

(declare-fun e!732211 () Bool)

(assert (=> b!1281521 (= e!732211 (bvslt (size!41316 _keys!1741) #b01111111111111111111111111111111))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!84531 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1281521 (arrayContainsKey!0 _keys!1741 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144))))

(declare-fun minValue!1387 () V!50107)

(declare-fun zeroValue!1387 () V!50107)

(declare-datatypes ((Unit!42387 0))(
  ( (Unit!42388) )
))
(declare-fun lt!576201 () Unit!42387)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!639 (array!84531 array!84529 (_ BitVec 32) (_ BitVec 32) V!50107 V!50107 (_ BitVec 64) (_ BitVec 32) Int) Unit!42387)

(assert (=> b!1281521 (= lt!576201 (lemmaListMapContainsThenArrayContainsFrom!639 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun b!1281522 () Bool)

(declare-fun e!732214 () Bool)

(assert (=> b!1281522 (= e!732214 tp_is_empty!33753)))

(declare-fun b!1281523 () Bool)

(declare-fun res!851391 () Bool)

(assert (=> b!1281523 (=> (not res!851391) (not e!732210))))

(assert (=> b!1281523 (= res!851391 (and (= (size!41315 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41316 _keys!1741) (size!41315 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1281524 () Bool)

(declare-fun res!851393 () Bool)

(assert (=> b!1281524 (=> (not res!851393) (not e!732210))))

(assert (=> b!1281524 (= res!851393 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41316 _keys!1741))))))

(declare-fun b!1281525 () Bool)

(declare-fun res!851388 () Bool)

(assert (=> b!1281525 (=> (not res!851388) (not e!732210))))

(declare-datatypes ((List!29059 0))(
  ( (Nil!29056) (Cons!29055 (h!30264 (_ BitVec 64)) (t!42606 List!29059)) )
))
(declare-fun arrayNoDuplicates!0 (array!84531 (_ BitVec 32) List!29059) Bool)

(assert (=> b!1281525 (= res!851388 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29056))))

(declare-fun b!1281526 () Bool)

(declare-fun res!851392 () Bool)

(assert (=> b!1281526 (=> (not res!851392) (not e!732210))))

(assert (=> b!1281526 (= res!851392 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41316 _keys!1741)) (not (= (select (arr!40765 _keys!1741) from!2144) k0!1205))))))

(declare-fun b!1281527 () Bool)

(declare-fun res!851387 () Bool)

(assert (=> b!1281527 (=> (not res!851387) (not e!732210))))

(declare-datatypes ((tuple2!21852 0))(
  ( (tuple2!21853 (_1!10936 (_ BitVec 64)) (_2!10936 V!50107)) )
))
(declare-datatypes ((List!29060 0))(
  ( (Nil!29057) (Cons!29056 (h!30265 tuple2!21852) (t!42607 List!29060)) )
))
(declare-datatypes ((ListLongMap!19521 0))(
  ( (ListLongMap!19522 (toList!9776 List!29060)) )
))
(declare-fun contains!7829 (ListLongMap!19521 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4796 (array!84531 array!84529 (_ BitVec 32) (_ BitVec 32) V!50107 V!50107 (_ BitVec 32) Int) ListLongMap!19521)

(assert (=> b!1281527 (= res!851387 (contains!7829 (getCurrentListMap!4796 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!52181 () Bool)

(declare-fun tp!99450 () Bool)

(assert (=> mapNonEmpty!52181 (= mapRes!52181 (and tp!99450 e!732214))))

(declare-fun mapValue!52181 () ValueCell!15978)

(declare-fun mapKey!52181 () (_ BitVec 32))

(declare-fun mapRest!52181 () (Array (_ BitVec 32) ValueCell!15978))

(assert (=> mapNonEmpty!52181 (= (arr!40764 _values!1445) (store mapRest!52181 mapKey!52181 mapValue!52181))))

(declare-fun b!1281528 () Bool)

(assert (=> b!1281528 (= e!732209 (and e!732213 mapRes!52181))))

(declare-fun condMapEmpty!52181 () Bool)

(declare-fun mapDefault!52181 () ValueCell!15978)

(assert (=> b!1281528 (= condMapEmpty!52181 (= (arr!40764 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15978)) mapDefault!52181)))))

(declare-fun b!1281529 () Bool)

(assert (=> b!1281529 (= e!732210 (not e!732211))))

(declare-fun res!851386 () Bool)

(assert (=> b!1281529 (=> res!851386 e!732211)))

(assert (=> b!1281529 (= res!851386 (bvslt (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000))))

(assert (=> b!1281529 (contains!7829 (getCurrentListMap!4796 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-fun lt!576202 () Unit!42387)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!24 (array!84531 array!84529 (_ BitVec 32) (_ BitVec 32) V!50107 V!50107 (_ BitVec 64) (_ BitVec 32) Int) Unit!42387)

(assert (=> b!1281529 (= lt!576202 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!24 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1281530 () Bool)

(declare-fun res!851390 () Bool)

(assert (=> b!1281530 (=> (not res!851390) (not e!732210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84531 (_ BitVec 32)) Bool)

(assert (=> b!1281530 (= res!851390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!108602 res!851389) b!1281523))

(assert (= (and b!1281523 res!851391) b!1281530))

(assert (= (and b!1281530 res!851390) b!1281525))

(assert (= (and b!1281525 res!851388) b!1281524))

(assert (= (and b!1281524 res!851393) b!1281527))

(assert (= (and b!1281527 res!851387) b!1281526))

(assert (= (and b!1281526 res!851392) b!1281529))

(assert (= (and b!1281529 (not res!851386)) b!1281521))

(assert (= (and b!1281528 condMapEmpty!52181) mapIsEmpty!52181))

(assert (= (and b!1281528 (not condMapEmpty!52181)) mapNonEmpty!52181))

(get-info :version)

(assert (= (and mapNonEmpty!52181 ((_ is ValueCellFull!15978) mapValue!52181)) b!1281522))

(assert (= (and b!1281528 ((_ is ValueCellFull!15978) mapDefault!52181)) b!1281520))

(assert (= start!108602 b!1281528))

(declare-fun m!1175955 () Bool)

(assert (=> mapNonEmpty!52181 m!1175955))

(declare-fun m!1175957 () Bool)

(assert (=> start!108602 m!1175957))

(declare-fun m!1175959 () Bool)

(assert (=> start!108602 m!1175959))

(declare-fun m!1175961 () Bool)

(assert (=> start!108602 m!1175961))

(declare-fun m!1175963 () Bool)

(assert (=> b!1281525 m!1175963))

(declare-fun m!1175965 () Bool)

(assert (=> b!1281530 m!1175965))

(declare-fun m!1175967 () Bool)

(assert (=> b!1281526 m!1175967))

(declare-fun m!1175969 () Bool)

(assert (=> b!1281521 m!1175969))

(declare-fun m!1175971 () Bool)

(assert (=> b!1281521 m!1175971))

(declare-fun m!1175973 () Bool)

(assert (=> b!1281529 m!1175973))

(assert (=> b!1281529 m!1175973))

(declare-fun m!1175975 () Bool)

(assert (=> b!1281529 m!1175975))

(declare-fun m!1175977 () Bool)

(assert (=> b!1281529 m!1175977))

(declare-fun m!1175979 () Bool)

(assert (=> b!1281527 m!1175979))

(assert (=> b!1281527 m!1175979))

(declare-fun m!1175981 () Bool)

(assert (=> b!1281527 m!1175981))

(check-sat (not b_next!28113) (not mapNonEmpty!52181) (not b!1281530) (not b!1281527) (not b!1281529) (not b!1281525) (not b!1281521) (not start!108602) tp_is_empty!33753 b_and!46183)
(check-sat b_and!46183 (not b_next!28113))
(get-model)

(declare-fun d!140561 () Bool)

(assert (=> d!140561 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!108602 d!140561))

(declare-fun d!140563 () Bool)

(assert (=> d!140563 (= (array_inv!30917 _values!1445) (bvsge (size!41315 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!108602 d!140563))

(declare-fun d!140565 () Bool)

(assert (=> d!140565 (= (array_inv!30918 _keys!1741) (bvsge (size!41316 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!108602 d!140565))

(declare-fun d!140567 () Bool)

(declare-fun e!732238 () Bool)

(assert (=> d!140567 e!732238))

(declare-fun res!851420 () Bool)

(assert (=> d!140567 (=> res!851420 e!732238)))

(declare-fun lt!576220 () Bool)

(assert (=> d!140567 (= res!851420 (not lt!576220))))

(declare-fun lt!576218 () Bool)

(assert (=> d!140567 (= lt!576220 lt!576218)))

(declare-fun lt!576217 () Unit!42387)

(declare-fun e!732237 () Unit!42387)

(assert (=> d!140567 (= lt!576217 e!732237)))

(declare-fun c!123984 () Bool)

(assert (=> d!140567 (= c!123984 lt!576218)))

(declare-fun containsKey!712 (List!29060 (_ BitVec 64)) Bool)

(assert (=> d!140567 (= lt!576218 (containsKey!712 (toList!9776 (getCurrentListMap!4796 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448)) k0!1205))))

(assert (=> d!140567 (= (contains!7829 (getCurrentListMap!4796 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205) lt!576220)))

(declare-fun b!1281570 () Bool)

(declare-fun lt!576219 () Unit!42387)

(assert (=> b!1281570 (= e!732237 lt!576219)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!457 (List!29060 (_ BitVec 64)) Unit!42387)

(assert (=> b!1281570 (= lt!576219 (lemmaContainsKeyImpliesGetValueByKeyDefined!457 (toList!9776 (getCurrentListMap!4796 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448)) k0!1205))))

(declare-datatypes ((Option!745 0))(
  ( (Some!744 (v!19551 V!50107)) (None!743) )
))
(declare-fun isDefined!497 (Option!745) Bool)

(declare-fun getValueByKey!694 (List!29060 (_ BitVec 64)) Option!745)

(assert (=> b!1281570 (isDefined!497 (getValueByKey!694 (toList!9776 (getCurrentListMap!4796 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448)) k0!1205))))

(declare-fun b!1281571 () Bool)

(declare-fun Unit!42391 () Unit!42387)

(assert (=> b!1281571 (= e!732237 Unit!42391)))

(declare-fun b!1281572 () Bool)

(assert (=> b!1281572 (= e!732238 (isDefined!497 (getValueByKey!694 (toList!9776 (getCurrentListMap!4796 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448)) k0!1205)))))

(assert (= (and d!140567 c!123984) b!1281570))

(assert (= (and d!140567 (not c!123984)) b!1281571))

(assert (= (and d!140567 (not res!851420)) b!1281572))

(declare-fun m!1176011 () Bool)

(assert (=> d!140567 m!1176011))

(declare-fun m!1176013 () Bool)

(assert (=> b!1281570 m!1176013))

(declare-fun m!1176015 () Bool)

(assert (=> b!1281570 m!1176015))

(assert (=> b!1281570 m!1176015))

(declare-fun m!1176017 () Bool)

(assert (=> b!1281570 m!1176017))

(assert (=> b!1281572 m!1176015))

(assert (=> b!1281572 m!1176015))

(assert (=> b!1281572 m!1176017))

(assert (=> b!1281529 d!140567))

(declare-fun b!1281615 () Bool)

(declare-fun e!732266 () Bool)

(declare-fun lt!576268 () ListLongMap!19521)

(declare-fun apply!1044 (ListLongMap!19521 (_ BitVec 64)) V!50107)

(assert (=> b!1281615 (= e!732266 (= (apply!1044 lt!576268 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1281616 () Bool)

(declare-fun res!851443 () Bool)

(declare-fun e!732269 () Bool)

(assert (=> b!1281616 (=> (not res!851443) (not e!732269))))

(declare-fun e!732267 () Bool)

(assert (=> b!1281616 (= res!851443 e!732267)))

(declare-fun res!851440 () Bool)

(assert (=> b!1281616 (=> res!851440 e!732267)))

(declare-fun e!732270 () Bool)

(assert (=> b!1281616 (= res!851440 (not e!732270))))

(declare-fun res!851447 () Bool)

(assert (=> b!1281616 (=> (not res!851447) (not e!732270))))

(assert (=> b!1281616 (= res!851447 (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41316 _keys!1741)))))

(declare-fun b!1281617 () Bool)

(declare-fun e!732276 () ListLongMap!19521)

(declare-fun e!732275 () ListLongMap!19521)

(assert (=> b!1281617 (= e!732276 e!732275)))

(declare-fun c!123997 () Bool)

(assert (=> b!1281617 (= c!123997 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1281618 () Bool)

(declare-fun e!732272 () Bool)

(declare-fun e!732271 () Bool)

(assert (=> b!1281618 (= e!732272 e!732271)))

(declare-fun res!851445 () Bool)

(declare-fun call!62729 () Bool)

(assert (=> b!1281618 (= res!851445 call!62729)))

(assert (=> b!1281618 (=> (not res!851445) (not e!732271))))

(declare-fun bm!62725 () Bool)

(declare-fun call!62727 () ListLongMap!19521)

(declare-fun call!62733 () ListLongMap!19521)

(assert (=> bm!62725 (= call!62727 call!62733)))

(declare-fun b!1281619 () Bool)

(declare-fun e!732277 () Unit!42387)

(declare-fun lt!576265 () Unit!42387)

(assert (=> b!1281619 (= e!732277 lt!576265)))

(declare-fun lt!576271 () ListLongMap!19521)

(declare-fun getCurrentListMapNoExtraKeys!5957 (array!84531 array!84529 (_ BitVec 32) (_ BitVec 32) V!50107 V!50107 (_ BitVec 32) Int) ListLongMap!19521)

(assert (=> b!1281619 (= lt!576271 (getCurrentListMapNoExtraKeys!5957 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun lt!576267 () (_ BitVec 64))

(assert (=> b!1281619 (= lt!576267 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!576283 () (_ BitVec 64))

(assert (=> b!1281619 (= lt!576283 (select (arr!40765 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144)))))

(declare-fun lt!576273 () Unit!42387)

(declare-fun addStillContains!1113 (ListLongMap!19521 (_ BitVec 64) V!50107 (_ BitVec 64)) Unit!42387)

(assert (=> b!1281619 (= lt!576273 (addStillContains!1113 lt!576271 lt!576267 zeroValue!1387 lt!576283))))

(declare-fun +!4246 (ListLongMap!19521 tuple2!21852) ListLongMap!19521)

(assert (=> b!1281619 (contains!7829 (+!4246 lt!576271 (tuple2!21853 lt!576267 zeroValue!1387)) lt!576283)))

(declare-fun lt!576277 () Unit!42387)

(assert (=> b!1281619 (= lt!576277 lt!576273)))

(declare-fun lt!576286 () ListLongMap!19521)

(assert (=> b!1281619 (= lt!576286 (getCurrentListMapNoExtraKeys!5957 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun lt!576285 () (_ BitVec 64))

(assert (=> b!1281619 (= lt!576285 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!576276 () (_ BitVec 64))

(assert (=> b!1281619 (= lt!576276 (select (arr!40765 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144)))))

(declare-fun lt!576274 () Unit!42387)

(declare-fun addApplyDifferent!547 (ListLongMap!19521 (_ BitVec 64) V!50107 (_ BitVec 64)) Unit!42387)

(assert (=> b!1281619 (= lt!576274 (addApplyDifferent!547 lt!576286 lt!576285 minValue!1387 lt!576276))))

(assert (=> b!1281619 (= (apply!1044 (+!4246 lt!576286 (tuple2!21853 lt!576285 minValue!1387)) lt!576276) (apply!1044 lt!576286 lt!576276))))

(declare-fun lt!576279 () Unit!42387)

(assert (=> b!1281619 (= lt!576279 lt!576274)))

(declare-fun lt!576280 () ListLongMap!19521)

(assert (=> b!1281619 (= lt!576280 (getCurrentListMapNoExtraKeys!5957 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun lt!576269 () (_ BitVec 64))

(assert (=> b!1281619 (= lt!576269 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!576270 () (_ BitVec 64))

(assert (=> b!1281619 (= lt!576270 (select (arr!40765 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144)))))

(declare-fun lt!576281 () Unit!42387)

(assert (=> b!1281619 (= lt!576281 (addApplyDifferent!547 lt!576280 lt!576269 zeroValue!1387 lt!576270))))

(assert (=> b!1281619 (= (apply!1044 (+!4246 lt!576280 (tuple2!21853 lt!576269 zeroValue!1387)) lt!576270) (apply!1044 lt!576280 lt!576270))))

(declare-fun lt!576284 () Unit!42387)

(assert (=> b!1281619 (= lt!576284 lt!576281)))

(declare-fun lt!576275 () ListLongMap!19521)

(assert (=> b!1281619 (= lt!576275 (getCurrentListMapNoExtraKeys!5957 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun lt!576282 () (_ BitVec 64))

(assert (=> b!1281619 (= lt!576282 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!576272 () (_ BitVec 64))

(assert (=> b!1281619 (= lt!576272 (select (arr!40765 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144)))))

(assert (=> b!1281619 (= lt!576265 (addApplyDifferent!547 lt!576275 lt!576282 minValue!1387 lt!576272))))

(assert (=> b!1281619 (= (apply!1044 (+!4246 lt!576275 (tuple2!21853 lt!576282 minValue!1387)) lt!576272) (apply!1044 lt!576275 lt!576272))))

(declare-fun bm!62726 () Bool)

(declare-fun call!62731 () Bool)

(assert (=> bm!62726 (= call!62731 (contains!7829 lt!576268 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62727 () Bool)

(assert (=> bm!62727 (= call!62733 (getCurrentListMapNoExtraKeys!5957 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun e!732273 () Bool)

(declare-fun b!1281620 () Bool)

(declare-fun get!20792 (ValueCell!15978 V!50107) V!50107)

(declare-fun dynLambda!3489 (Int (_ BitVec 64)) V!50107)

(assert (=> b!1281620 (= e!732273 (= (apply!1044 lt!576268 (select (arr!40765 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144))) (get!20792 (select (arr!40764 _values!1445) (bvadd #b00000000000000000000000000000001 from!2144)) (dynLambda!3489 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1281620 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41315 _values!1445)))))

(assert (=> b!1281620 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41316 _keys!1741)))))

(declare-fun b!1281621 () Bool)

(declare-fun e!732274 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1281621 (= e!732274 (validKeyInArray!0 (select (arr!40765 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144))))))

(declare-fun bm!62724 () Bool)

(declare-fun call!62730 () ListLongMap!19521)

(assert (=> bm!62724 (= call!62730 call!62727)))

(declare-fun d!140569 () Bool)

(assert (=> d!140569 e!732269))

(declare-fun res!851441 () Bool)

(assert (=> d!140569 (=> (not res!851441) (not e!732269))))

(assert (=> d!140569 (= res!851441 (or (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41316 _keys!1741)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41316 _keys!1741)))))))

(declare-fun lt!576278 () ListLongMap!19521)

(assert (=> d!140569 (= lt!576268 lt!576278)))

(declare-fun lt!576266 () Unit!42387)

(assert (=> d!140569 (= lt!576266 e!732277)))

(declare-fun c!123999 () Bool)

(assert (=> d!140569 (= c!123999 e!732274)))

(declare-fun res!851444 () Bool)

(assert (=> d!140569 (=> (not res!851444) (not e!732274))))

(assert (=> d!140569 (= res!851444 (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41316 _keys!1741)))))

(assert (=> d!140569 (= lt!576278 e!732276)))

(declare-fun c!124002 () Bool)

(assert (=> d!140569 (= c!124002 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!140569 (validMask!0 mask!2175)))

(assert (=> d!140569 (= (getCurrentListMap!4796 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) lt!576268)))

(declare-fun b!1281622 () Bool)

(declare-fun Unit!42392 () Unit!42387)

(assert (=> b!1281622 (= e!732277 Unit!42392)))

(declare-fun bm!62728 () Bool)

(declare-fun call!62728 () ListLongMap!19521)

(declare-fun call!62732 () ListLongMap!19521)

(assert (=> bm!62728 (= call!62728 call!62732)))

(declare-fun b!1281623 () Bool)

(declare-fun e!732268 () ListLongMap!19521)

(assert (=> b!1281623 (= e!732268 call!62730)))

(declare-fun b!1281624 () Bool)

(assert (=> b!1281624 (= e!732270 (validKeyInArray!0 (select (arr!40765 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144))))))

(declare-fun b!1281625 () Bool)

(assert (=> b!1281625 (= e!732275 call!62728)))

(declare-fun bm!62729 () Bool)

(assert (=> bm!62729 (= call!62732 (+!4246 (ite c!124002 call!62733 (ite c!123997 call!62727 call!62730)) (ite (or c!124002 c!123997) (tuple2!21853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!21853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1281626 () Bool)

(declare-fun c!123998 () Bool)

(assert (=> b!1281626 (= c!123998 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1281626 (= e!732275 e!732268)))

(declare-fun bm!62730 () Bool)

(assert (=> bm!62730 (= call!62729 (contains!7829 lt!576268 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1281627 () Bool)

(declare-fun e!732265 () Bool)

(assert (=> b!1281627 (= e!732265 (not call!62731))))

(declare-fun b!1281628 () Bool)

(assert (=> b!1281628 (= e!732267 e!732273)))

(declare-fun res!851442 () Bool)

(assert (=> b!1281628 (=> (not res!851442) (not e!732273))))

(assert (=> b!1281628 (= res!851442 (contains!7829 lt!576268 (select (arr!40765 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144))))))

(assert (=> b!1281628 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41316 _keys!1741)))))

(declare-fun b!1281629 () Bool)

(declare-fun res!851446 () Bool)

(assert (=> b!1281629 (=> (not res!851446) (not e!732269))))

(assert (=> b!1281629 (= res!851446 e!732272)))

(declare-fun c!124001 () Bool)

(assert (=> b!1281629 (= c!124001 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1281630 () Bool)

(assert (=> b!1281630 (= e!732265 e!732266)))

(declare-fun res!851439 () Bool)

(assert (=> b!1281630 (= res!851439 call!62731)))

(assert (=> b!1281630 (=> (not res!851439) (not e!732266))))

(declare-fun b!1281631 () Bool)

(assert (=> b!1281631 (= e!732276 (+!4246 call!62732 (tuple2!21853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1281632 () Bool)

(assert (=> b!1281632 (= e!732272 (not call!62729))))

(declare-fun b!1281633 () Bool)

(assert (=> b!1281633 (= e!732269 e!732265)))

(declare-fun c!124000 () Bool)

(assert (=> b!1281633 (= c!124000 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1281634 () Bool)

(assert (=> b!1281634 (= e!732268 call!62728)))

(declare-fun b!1281635 () Bool)

(assert (=> b!1281635 (= e!732271 (= (apply!1044 lt!576268 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(assert (= (and d!140569 c!124002) b!1281631))

(assert (= (and d!140569 (not c!124002)) b!1281617))

(assert (= (and b!1281617 c!123997) b!1281625))

(assert (= (and b!1281617 (not c!123997)) b!1281626))

(assert (= (and b!1281626 c!123998) b!1281634))

(assert (= (and b!1281626 (not c!123998)) b!1281623))

(assert (= (or b!1281634 b!1281623) bm!62724))

(assert (= (or b!1281625 bm!62724) bm!62725))

(assert (= (or b!1281625 b!1281634) bm!62728))

(assert (= (or b!1281631 bm!62725) bm!62727))

(assert (= (or b!1281631 bm!62728) bm!62729))

(assert (= (and d!140569 res!851444) b!1281621))

(assert (= (and d!140569 c!123999) b!1281619))

(assert (= (and d!140569 (not c!123999)) b!1281622))

(assert (= (and d!140569 res!851441) b!1281616))

(assert (= (and b!1281616 res!851447) b!1281624))

(assert (= (and b!1281616 (not res!851440)) b!1281628))

(assert (= (and b!1281628 res!851442) b!1281620))

(assert (= (and b!1281616 res!851443) b!1281629))

(assert (= (and b!1281629 c!124001) b!1281618))

(assert (= (and b!1281629 (not c!124001)) b!1281632))

(assert (= (and b!1281618 res!851445) b!1281635))

(assert (= (or b!1281618 b!1281632) bm!62730))

(assert (= (and b!1281629 res!851446) b!1281633))

(assert (= (and b!1281633 c!124000) b!1281630))

(assert (= (and b!1281633 (not c!124000)) b!1281627))

(assert (= (and b!1281630 res!851439) b!1281615))

(assert (= (or b!1281630 b!1281627) bm!62726))

(declare-fun b_lambda!23105 () Bool)

(assert (=> (not b_lambda!23105) (not b!1281620)))

(declare-fun t!42611 () Bool)

(declare-fun tb!11353 () Bool)

(assert (=> (and start!108602 (= defaultEntry!1448 defaultEntry!1448) t!42611) tb!11353))

(declare-fun result!23693 () Bool)

(assert (=> tb!11353 (= result!23693 tp_is_empty!33753)))

(assert (=> b!1281620 t!42611))

(declare-fun b_and!46187 () Bool)

(assert (= b_and!46183 (and (=> t!42611 result!23693) b_and!46187)))

(assert (=> d!140569 m!1175957))

(declare-fun m!1176019 () Bool)

(assert (=> bm!62726 m!1176019))

(declare-fun m!1176021 () Bool)

(assert (=> b!1281620 m!1176021))

(declare-fun m!1176023 () Bool)

(assert (=> b!1281620 m!1176023))

(declare-fun m!1176025 () Bool)

(assert (=> b!1281620 m!1176025))

(declare-fun m!1176027 () Bool)

(assert (=> b!1281620 m!1176027))

(assert (=> b!1281620 m!1176021))

(assert (=> b!1281620 m!1176025))

(assert (=> b!1281620 m!1176027))

(declare-fun m!1176029 () Bool)

(assert (=> b!1281620 m!1176029))

(assert (=> b!1281624 m!1176021))

(assert (=> b!1281624 m!1176021))

(declare-fun m!1176031 () Bool)

(assert (=> b!1281624 m!1176031))

(declare-fun m!1176033 () Bool)

(assert (=> b!1281635 m!1176033))

(declare-fun m!1176035 () Bool)

(assert (=> b!1281619 m!1176035))

(declare-fun m!1176037 () Bool)

(assert (=> b!1281619 m!1176037))

(declare-fun m!1176039 () Bool)

(assert (=> b!1281619 m!1176039))

(declare-fun m!1176041 () Bool)

(assert (=> b!1281619 m!1176041))

(declare-fun m!1176043 () Bool)

(assert (=> b!1281619 m!1176043))

(declare-fun m!1176045 () Bool)

(assert (=> b!1281619 m!1176045))

(declare-fun m!1176047 () Bool)

(assert (=> b!1281619 m!1176047))

(declare-fun m!1176049 () Bool)

(assert (=> b!1281619 m!1176049))

(declare-fun m!1176051 () Bool)

(assert (=> b!1281619 m!1176051))

(declare-fun m!1176053 () Bool)

(assert (=> b!1281619 m!1176053))

(assert (=> b!1281619 m!1176049))

(declare-fun m!1176055 () Bool)

(assert (=> b!1281619 m!1176055))

(assert (=> b!1281619 m!1176021))

(assert (=> b!1281619 m!1176037))

(declare-fun m!1176057 () Bool)

(assert (=> b!1281619 m!1176057))

(declare-fun m!1176059 () Bool)

(assert (=> b!1281619 m!1176059))

(assert (=> b!1281619 m!1176043))

(declare-fun m!1176061 () Bool)

(assert (=> b!1281619 m!1176061))

(assert (=> b!1281619 m!1176051))

(declare-fun m!1176063 () Bool)

(assert (=> b!1281619 m!1176063))

(declare-fun m!1176065 () Bool)

(assert (=> b!1281619 m!1176065))

(assert (=> b!1281621 m!1176021))

(assert (=> b!1281621 m!1176021))

(assert (=> b!1281621 m!1176031))

(declare-fun m!1176067 () Bool)

(assert (=> b!1281615 m!1176067))

(declare-fun m!1176069 () Bool)

(assert (=> bm!62730 m!1176069))

(declare-fun m!1176071 () Bool)

(assert (=> bm!62729 m!1176071))

(declare-fun m!1176073 () Bool)

(assert (=> b!1281631 m!1176073))

(assert (=> b!1281628 m!1176021))

(assert (=> b!1281628 m!1176021))

(declare-fun m!1176075 () Bool)

(assert (=> b!1281628 m!1176075))

(assert (=> bm!62727 m!1176041))

(assert (=> b!1281529 d!140569))

(declare-fun d!140571 () Bool)

(assert (=> d!140571 (contains!7829 (getCurrentListMap!4796 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448) k0!1205)))

(declare-fun lt!576289 () Unit!42387)

(declare-fun choose!1906 (array!84531 array!84529 (_ BitVec 32) (_ BitVec 32) V!50107 V!50107 (_ BitVec 64) (_ BitVec 32) Int) Unit!42387)

(assert (=> d!140571 (= lt!576289 (choose!1906 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(assert (=> d!140571 (validMask!0 mask!2175)))

(assert (=> d!140571 (= (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!24 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448) lt!576289)))

(declare-fun bs!36485 () Bool)

(assert (= bs!36485 d!140571))

(declare-fun m!1176077 () Bool)

(assert (=> bs!36485 m!1176077))

(assert (=> bs!36485 m!1176077))

(declare-fun m!1176079 () Bool)

(assert (=> bs!36485 m!1176079))

(declare-fun m!1176081 () Bool)

(assert (=> bs!36485 m!1176081))

(assert (=> bs!36485 m!1175957))

(assert (=> b!1281529 d!140571))

(declare-fun b!1281646 () Bool)

(declare-fun e!732284 () Bool)

(declare-fun e!732285 () Bool)

(assert (=> b!1281646 (= e!732284 e!732285)))

(declare-fun lt!576298 () (_ BitVec 64))

(assert (=> b!1281646 (= lt!576298 (select (arr!40765 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!576297 () Unit!42387)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!84531 (_ BitVec 64) (_ BitVec 32)) Unit!42387)

(assert (=> b!1281646 (= lt!576297 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!576298 #b00000000000000000000000000000000))))

(assert (=> b!1281646 (arrayContainsKey!0 _keys!1741 lt!576298 #b00000000000000000000000000000000)))

(declare-fun lt!576296 () Unit!42387)

(assert (=> b!1281646 (= lt!576296 lt!576297)))

(declare-fun res!851452 () Bool)

(declare-datatypes ((SeekEntryResult!10009 0))(
  ( (MissingZero!10009 (index!42406 (_ BitVec 32))) (Found!10009 (index!42407 (_ BitVec 32))) (Intermediate!10009 (undefined!10821 Bool) (index!42408 (_ BitVec 32)) (x!113669 (_ BitVec 32))) (Undefined!10009) (MissingVacant!10009 (index!42409 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!84531 (_ BitVec 32)) SeekEntryResult!10009)

(assert (=> b!1281646 (= res!851452 (= (seekEntryOrOpen!0 (select (arr!40765 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10009 #b00000000000000000000000000000000)))))

(assert (=> b!1281646 (=> (not res!851452) (not e!732285))))

(declare-fun b!1281647 () Bool)

(declare-fun call!62736 () Bool)

(assert (=> b!1281647 (= e!732284 call!62736)))

(declare-fun b!1281648 () Bool)

(declare-fun e!732286 () Bool)

(assert (=> b!1281648 (= e!732286 e!732284)))

(declare-fun c!124005 () Bool)

(assert (=> b!1281648 (= c!124005 (validKeyInArray!0 (select (arr!40765 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun d!140573 () Bool)

(declare-fun res!851453 () Bool)

(assert (=> d!140573 (=> res!851453 e!732286)))

(assert (=> d!140573 (= res!851453 (bvsge #b00000000000000000000000000000000 (size!41316 _keys!1741)))))

(assert (=> d!140573 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!732286)))

(declare-fun bm!62733 () Bool)

(assert (=> bm!62733 (= call!62736 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1281649 () Bool)

(assert (=> b!1281649 (= e!732285 call!62736)))

(assert (= (and d!140573 (not res!851453)) b!1281648))

(assert (= (and b!1281648 c!124005) b!1281646))

(assert (= (and b!1281648 (not c!124005)) b!1281647))

(assert (= (and b!1281646 res!851452) b!1281649))

(assert (= (or b!1281649 b!1281647) bm!62733))

(declare-fun m!1176083 () Bool)

(assert (=> b!1281646 m!1176083))

(declare-fun m!1176085 () Bool)

(assert (=> b!1281646 m!1176085))

(declare-fun m!1176087 () Bool)

(assert (=> b!1281646 m!1176087))

(assert (=> b!1281646 m!1176083))

(declare-fun m!1176089 () Bool)

(assert (=> b!1281646 m!1176089))

(assert (=> b!1281648 m!1176083))

(assert (=> b!1281648 m!1176083))

(declare-fun m!1176091 () Bool)

(assert (=> b!1281648 m!1176091))

(declare-fun m!1176093 () Bool)

(assert (=> bm!62733 m!1176093))

(assert (=> b!1281530 d!140573))

(declare-fun b!1281660 () Bool)

(declare-fun e!732297 () Bool)

(declare-fun e!732296 () Bool)

(assert (=> b!1281660 (= e!732297 e!732296)))

(declare-fun res!851461 () Bool)

(assert (=> b!1281660 (=> (not res!851461) (not e!732296))))

(declare-fun e!732298 () Bool)

(assert (=> b!1281660 (= res!851461 (not e!732298))))

(declare-fun res!851462 () Bool)

(assert (=> b!1281660 (=> (not res!851462) (not e!732298))))

(assert (=> b!1281660 (= res!851462 (validKeyInArray!0 (select (arr!40765 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1281661 () Bool)

(declare-fun e!732295 () Bool)

(assert (=> b!1281661 (= e!732296 e!732295)))

(declare-fun c!124008 () Bool)

(assert (=> b!1281661 (= c!124008 (validKeyInArray!0 (select (arr!40765 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun d!140575 () Bool)

(declare-fun res!851460 () Bool)

(assert (=> d!140575 (=> res!851460 e!732297)))

(assert (=> d!140575 (= res!851460 (bvsge #b00000000000000000000000000000000 (size!41316 _keys!1741)))))

(assert (=> d!140575 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29056) e!732297)))

(declare-fun bm!62736 () Bool)

(declare-fun call!62739 () Bool)

(assert (=> bm!62736 (= call!62739 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!124008 (Cons!29055 (select (arr!40765 _keys!1741) #b00000000000000000000000000000000) Nil!29056) Nil!29056)))))

(declare-fun b!1281662 () Bool)

(declare-fun contains!7831 (List!29059 (_ BitVec 64)) Bool)

(assert (=> b!1281662 (= e!732298 (contains!7831 Nil!29056 (select (arr!40765 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1281663 () Bool)

(assert (=> b!1281663 (= e!732295 call!62739)))

(declare-fun b!1281664 () Bool)

(assert (=> b!1281664 (= e!732295 call!62739)))

(assert (= (and d!140575 (not res!851460)) b!1281660))

(assert (= (and b!1281660 res!851462) b!1281662))

(assert (= (and b!1281660 res!851461) b!1281661))

(assert (= (and b!1281661 c!124008) b!1281663))

(assert (= (and b!1281661 (not c!124008)) b!1281664))

(assert (= (or b!1281663 b!1281664) bm!62736))

(assert (=> b!1281660 m!1176083))

(assert (=> b!1281660 m!1176083))

(assert (=> b!1281660 m!1176091))

(assert (=> b!1281661 m!1176083))

(assert (=> b!1281661 m!1176083))

(assert (=> b!1281661 m!1176091))

(assert (=> bm!62736 m!1176083))

(declare-fun m!1176095 () Bool)

(assert (=> bm!62736 m!1176095))

(assert (=> b!1281662 m!1176083))

(assert (=> b!1281662 m!1176083))

(declare-fun m!1176097 () Bool)

(assert (=> b!1281662 m!1176097))

(assert (=> b!1281525 d!140575))

(declare-fun d!140577 () Bool)

(declare-fun e!732300 () Bool)

(assert (=> d!140577 e!732300))

(declare-fun res!851463 () Bool)

(assert (=> d!140577 (=> res!851463 e!732300)))

(declare-fun lt!576302 () Bool)

(assert (=> d!140577 (= res!851463 (not lt!576302))))

(declare-fun lt!576300 () Bool)

(assert (=> d!140577 (= lt!576302 lt!576300)))

(declare-fun lt!576299 () Unit!42387)

(declare-fun e!732299 () Unit!42387)

(assert (=> d!140577 (= lt!576299 e!732299)))

(declare-fun c!124009 () Bool)

(assert (=> d!140577 (= c!124009 lt!576300)))

(assert (=> d!140577 (= lt!576300 (containsKey!712 (toList!9776 (getCurrentListMap!4796 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!140577 (= (contains!7829 (getCurrentListMap!4796 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!576302)))

(declare-fun b!1281665 () Bool)

(declare-fun lt!576301 () Unit!42387)

(assert (=> b!1281665 (= e!732299 lt!576301)))

(assert (=> b!1281665 (= lt!576301 (lemmaContainsKeyImpliesGetValueByKeyDefined!457 (toList!9776 (getCurrentListMap!4796 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> b!1281665 (isDefined!497 (getValueByKey!694 (toList!9776 (getCurrentListMap!4796 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1281666 () Bool)

(declare-fun Unit!42393 () Unit!42387)

(assert (=> b!1281666 (= e!732299 Unit!42393)))

(declare-fun b!1281667 () Bool)

(assert (=> b!1281667 (= e!732300 (isDefined!497 (getValueByKey!694 (toList!9776 (getCurrentListMap!4796 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!140577 c!124009) b!1281665))

(assert (= (and d!140577 (not c!124009)) b!1281666))

(assert (= (and d!140577 (not res!851463)) b!1281667))

(declare-fun m!1176099 () Bool)

(assert (=> d!140577 m!1176099))

(declare-fun m!1176101 () Bool)

(assert (=> b!1281665 m!1176101))

(declare-fun m!1176103 () Bool)

(assert (=> b!1281665 m!1176103))

(assert (=> b!1281665 m!1176103))

(declare-fun m!1176105 () Bool)

(assert (=> b!1281665 m!1176105))

(assert (=> b!1281667 m!1176103))

(assert (=> b!1281667 m!1176103))

(assert (=> b!1281667 m!1176105))

(assert (=> b!1281527 d!140577))

(declare-fun b!1281668 () Bool)

(declare-fun e!732302 () Bool)

(declare-fun lt!576306 () ListLongMap!19521)

(assert (=> b!1281668 (= e!732302 (= (apply!1044 lt!576306 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1281669 () Bool)

(declare-fun res!851468 () Bool)

(declare-fun e!732305 () Bool)

(assert (=> b!1281669 (=> (not res!851468) (not e!732305))))

(declare-fun e!732303 () Bool)

(assert (=> b!1281669 (= res!851468 e!732303)))

(declare-fun res!851465 () Bool)

(assert (=> b!1281669 (=> res!851465 e!732303)))

(declare-fun e!732306 () Bool)

(assert (=> b!1281669 (= res!851465 (not e!732306))))

(declare-fun res!851472 () Bool)

(assert (=> b!1281669 (=> (not res!851472) (not e!732306))))

(assert (=> b!1281669 (= res!851472 (bvslt from!2144 (size!41316 _keys!1741)))))

(declare-fun b!1281670 () Bool)

(declare-fun e!732312 () ListLongMap!19521)

(declare-fun e!732311 () ListLongMap!19521)

(assert (=> b!1281670 (= e!732312 e!732311)))

(declare-fun c!124010 () Bool)

(assert (=> b!1281670 (= c!124010 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1281671 () Bool)

(declare-fun e!732308 () Bool)

(declare-fun e!732307 () Bool)

(assert (=> b!1281671 (= e!732308 e!732307)))

(declare-fun res!851470 () Bool)

(declare-fun call!62742 () Bool)

(assert (=> b!1281671 (= res!851470 call!62742)))

(assert (=> b!1281671 (=> (not res!851470) (not e!732307))))

(declare-fun bm!62738 () Bool)

(declare-fun call!62740 () ListLongMap!19521)

(declare-fun call!62746 () ListLongMap!19521)

(assert (=> bm!62738 (= call!62740 call!62746)))

(declare-fun b!1281672 () Bool)

(declare-fun e!732313 () Unit!42387)

(declare-fun lt!576303 () Unit!42387)

(assert (=> b!1281672 (= e!732313 lt!576303)))

(declare-fun lt!576309 () ListLongMap!19521)

(assert (=> b!1281672 (= lt!576309 (getCurrentListMapNoExtraKeys!5957 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!576305 () (_ BitVec 64))

(assert (=> b!1281672 (= lt!576305 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!576321 () (_ BitVec 64))

(assert (=> b!1281672 (= lt!576321 (select (arr!40765 _keys!1741) from!2144))))

(declare-fun lt!576311 () Unit!42387)

(assert (=> b!1281672 (= lt!576311 (addStillContains!1113 lt!576309 lt!576305 zeroValue!1387 lt!576321))))

(assert (=> b!1281672 (contains!7829 (+!4246 lt!576309 (tuple2!21853 lt!576305 zeroValue!1387)) lt!576321)))

(declare-fun lt!576315 () Unit!42387)

(assert (=> b!1281672 (= lt!576315 lt!576311)))

(declare-fun lt!576324 () ListLongMap!19521)

(assert (=> b!1281672 (= lt!576324 (getCurrentListMapNoExtraKeys!5957 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!576323 () (_ BitVec 64))

(assert (=> b!1281672 (= lt!576323 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!576314 () (_ BitVec 64))

(assert (=> b!1281672 (= lt!576314 (select (arr!40765 _keys!1741) from!2144))))

(declare-fun lt!576312 () Unit!42387)

(assert (=> b!1281672 (= lt!576312 (addApplyDifferent!547 lt!576324 lt!576323 minValue!1387 lt!576314))))

(assert (=> b!1281672 (= (apply!1044 (+!4246 lt!576324 (tuple2!21853 lt!576323 minValue!1387)) lt!576314) (apply!1044 lt!576324 lt!576314))))

(declare-fun lt!576317 () Unit!42387)

(assert (=> b!1281672 (= lt!576317 lt!576312)))

(declare-fun lt!576318 () ListLongMap!19521)

(assert (=> b!1281672 (= lt!576318 (getCurrentListMapNoExtraKeys!5957 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!576307 () (_ BitVec 64))

(assert (=> b!1281672 (= lt!576307 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!576308 () (_ BitVec 64))

(assert (=> b!1281672 (= lt!576308 (select (arr!40765 _keys!1741) from!2144))))

(declare-fun lt!576319 () Unit!42387)

(assert (=> b!1281672 (= lt!576319 (addApplyDifferent!547 lt!576318 lt!576307 zeroValue!1387 lt!576308))))

(assert (=> b!1281672 (= (apply!1044 (+!4246 lt!576318 (tuple2!21853 lt!576307 zeroValue!1387)) lt!576308) (apply!1044 lt!576318 lt!576308))))

(declare-fun lt!576322 () Unit!42387)

(assert (=> b!1281672 (= lt!576322 lt!576319)))

(declare-fun lt!576313 () ListLongMap!19521)

(assert (=> b!1281672 (= lt!576313 (getCurrentListMapNoExtraKeys!5957 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!576320 () (_ BitVec 64))

(assert (=> b!1281672 (= lt!576320 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!576310 () (_ BitVec 64))

(assert (=> b!1281672 (= lt!576310 (select (arr!40765 _keys!1741) from!2144))))

(assert (=> b!1281672 (= lt!576303 (addApplyDifferent!547 lt!576313 lt!576320 minValue!1387 lt!576310))))

(assert (=> b!1281672 (= (apply!1044 (+!4246 lt!576313 (tuple2!21853 lt!576320 minValue!1387)) lt!576310) (apply!1044 lt!576313 lt!576310))))

(declare-fun bm!62739 () Bool)

(declare-fun call!62744 () Bool)

(assert (=> bm!62739 (= call!62744 (contains!7829 lt!576306 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!62740 () Bool)

(assert (=> bm!62740 (= call!62746 (getCurrentListMapNoExtraKeys!5957 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1281673 () Bool)

(declare-fun e!732309 () Bool)

(assert (=> b!1281673 (= e!732309 (= (apply!1044 lt!576306 (select (arr!40765 _keys!1741) from!2144)) (get!20792 (select (arr!40764 _values!1445) from!2144) (dynLambda!3489 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1281673 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41315 _values!1445)))))

(assert (=> b!1281673 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41316 _keys!1741)))))

(declare-fun b!1281674 () Bool)

(declare-fun e!732310 () Bool)

(assert (=> b!1281674 (= e!732310 (validKeyInArray!0 (select (arr!40765 _keys!1741) from!2144)))))

(declare-fun bm!62737 () Bool)

(declare-fun call!62743 () ListLongMap!19521)

(assert (=> bm!62737 (= call!62743 call!62740)))

(declare-fun d!140579 () Bool)

(assert (=> d!140579 e!732305))

(declare-fun res!851466 () Bool)

(assert (=> d!140579 (=> (not res!851466) (not e!732305))))

(assert (=> d!140579 (= res!851466 (or (bvsge from!2144 (size!41316 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41316 _keys!1741)))))))

(declare-fun lt!576316 () ListLongMap!19521)

(assert (=> d!140579 (= lt!576306 lt!576316)))

(declare-fun lt!576304 () Unit!42387)

(assert (=> d!140579 (= lt!576304 e!732313)))

(declare-fun c!124012 () Bool)

(assert (=> d!140579 (= c!124012 e!732310)))

(declare-fun res!851469 () Bool)

(assert (=> d!140579 (=> (not res!851469) (not e!732310))))

(assert (=> d!140579 (= res!851469 (bvslt from!2144 (size!41316 _keys!1741)))))

(assert (=> d!140579 (= lt!576316 e!732312)))

(declare-fun c!124015 () Bool)

(assert (=> d!140579 (= c!124015 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!140579 (validMask!0 mask!2175)))

(assert (=> d!140579 (= (getCurrentListMap!4796 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!576306)))

(declare-fun b!1281675 () Bool)

(declare-fun Unit!42394 () Unit!42387)

(assert (=> b!1281675 (= e!732313 Unit!42394)))

(declare-fun bm!62741 () Bool)

(declare-fun call!62741 () ListLongMap!19521)

(declare-fun call!62745 () ListLongMap!19521)

(assert (=> bm!62741 (= call!62741 call!62745)))

(declare-fun b!1281676 () Bool)

(declare-fun e!732304 () ListLongMap!19521)

(assert (=> b!1281676 (= e!732304 call!62743)))

(declare-fun b!1281677 () Bool)

(assert (=> b!1281677 (= e!732306 (validKeyInArray!0 (select (arr!40765 _keys!1741) from!2144)))))

(declare-fun b!1281678 () Bool)

(assert (=> b!1281678 (= e!732311 call!62741)))

(declare-fun bm!62742 () Bool)

(assert (=> bm!62742 (= call!62745 (+!4246 (ite c!124015 call!62746 (ite c!124010 call!62740 call!62743)) (ite (or c!124015 c!124010) (tuple2!21853 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!21853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1281679 () Bool)

(declare-fun c!124011 () Bool)

(assert (=> b!1281679 (= c!124011 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1281679 (= e!732311 e!732304)))

(declare-fun bm!62743 () Bool)

(assert (=> bm!62743 (= call!62742 (contains!7829 lt!576306 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1281680 () Bool)

(declare-fun e!732301 () Bool)

(assert (=> b!1281680 (= e!732301 (not call!62744))))

(declare-fun b!1281681 () Bool)

(assert (=> b!1281681 (= e!732303 e!732309)))

(declare-fun res!851467 () Bool)

(assert (=> b!1281681 (=> (not res!851467) (not e!732309))))

(assert (=> b!1281681 (= res!851467 (contains!7829 lt!576306 (select (arr!40765 _keys!1741) from!2144)))))

(assert (=> b!1281681 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41316 _keys!1741)))))

(declare-fun b!1281682 () Bool)

(declare-fun res!851471 () Bool)

(assert (=> b!1281682 (=> (not res!851471) (not e!732305))))

(assert (=> b!1281682 (= res!851471 e!732308)))

(declare-fun c!124014 () Bool)

(assert (=> b!1281682 (= c!124014 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1281683 () Bool)

(assert (=> b!1281683 (= e!732301 e!732302)))

(declare-fun res!851464 () Bool)

(assert (=> b!1281683 (= res!851464 call!62744)))

(assert (=> b!1281683 (=> (not res!851464) (not e!732302))))

(declare-fun b!1281684 () Bool)

(assert (=> b!1281684 (= e!732312 (+!4246 call!62745 (tuple2!21853 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1281685 () Bool)

(assert (=> b!1281685 (= e!732308 (not call!62742))))

(declare-fun b!1281686 () Bool)

(assert (=> b!1281686 (= e!732305 e!732301)))

(declare-fun c!124013 () Bool)

(assert (=> b!1281686 (= c!124013 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1281687 () Bool)

(assert (=> b!1281687 (= e!732304 call!62741)))

(declare-fun b!1281688 () Bool)

(assert (=> b!1281688 (= e!732307 (= (apply!1044 lt!576306 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(assert (= (and d!140579 c!124015) b!1281684))

(assert (= (and d!140579 (not c!124015)) b!1281670))

(assert (= (and b!1281670 c!124010) b!1281678))

(assert (= (and b!1281670 (not c!124010)) b!1281679))

(assert (= (and b!1281679 c!124011) b!1281687))

(assert (= (and b!1281679 (not c!124011)) b!1281676))

(assert (= (or b!1281687 b!1281676) bm!62737))

(assert (= (or b!1281678 bm!62737) bm!62738))

(assert (= (or b!1281678 b!1281687) bm!62741))

(assert (= (or b!1281684 bm!62738) bm!62740))

(assert (= (or b!1281684 bm!62741) bm!62742))

(assert (= (and d!140579 res!851469) b!1281674))

(assert (= (and d!140579 c!124012) b!1281672))

(assert (= (and d!140579 (not c!124012)) b!1281675))

(assert (= (and d!140579 res!851466) b!1281669))

(assert (= (and b!1281669 res!851472) b!1281677))

(assert (= (and b!1281669 (not res!851465)) b!1281681))

(assert (= (and b!1281681 res!851467) b!1281673))

(assert (= (and b!1281669 res!851468) b!1281682))

(assert (= (and b!1281682 c!124014) b!1281671))

(assert (= (and b!1281682 (not c!124014)) b!1281685))

(assert (= (and b!1281671 res!851470) b!1281688))

(assert (= (or b!1281671 b!1281685) bm!62743))

(assert (= (and b!1281682 res!851471) b!1281686))

(assert (= (and b!1281686 c!124013) b!1281683))

(assert (= (and b!1281686 (not c!124013)) b!1281680))

(assert (= (and b!1281683 res!851464) b!1281668))

(assert (= (or b!1281683 b!1281680) bm!62739))

(declare-fun b_lambda!23107 () Bool)

(assert (=> (not b_lambda!23107) (not b!1281673)))

(assert (=> b!1281673 t!42611))

(declare-fun b_and!46189 () Bool)

(assert (= b_and!46187 (and (=> t!42611 result!23693) b_and!46189)))

(assert (=> d!140579 m!1175957))

(declare-fun m!1176107 () Bool)

(assert (=> bm!62739 m!1176107))

(assert (=> b!1281673 m!1175967))

(declare-fun m!1176109 () Bool)

(assert (=> b!1281673 m!1176109))

(declare-fun m!1176111 () Bool)

(assert (=> b!1281673 m!1176111))

(assert (=> b!1281673 m!1176027))

(assert (=> b!1281673 m!1175967))

(assert (=> b!1281673 m!1176111))

(assert (=> b!1281673 m!1176027))

(declare-fun m!1176113 () Bool)

(assert (=> b!1281673 m!1176113))

(assert (=> b!1281677 m!1175967))

(assert (=> b!1281677 m!1175967))

(declare-fun m!1176115 () Bool)

(assert (=> b!1281677 m!1176115))

(declare-fun m!1176117 () Bool)

(assert (=> b!1281688 m!1176117))

(declare-fun m!1176119 () Bool)

(assert (=> b!1281672 m!1176119))

(declare-fun m!1176121 () Bool)

(assert (=> b!1281672 m!1176121))

(declare-fun m!1176123 () Bool)

(assert (=> b!1281672 m!1176123))

(declare-fun m!1176125 () Bool)

(assert (=> b!1281672 m!1176125))

(declare-fun m!1176127 () Bool)

(assert (=> b!1281672 m!1176127))

(declare-fun m!1176129 () Bool)

(assert (=> b!1281672 m!1176129))

(declare-fun m!1176131 () Bool)

(assert (=> b!1281672 m!1176131))

(declare-fun m!1176133 () Bool)

(assert (=> b!1281672 m!1176133))

(declare-fun m!1176135 () Bool)

(assert (=> b!1281672 m!1176135))

(declare-fun m!1176137 () Bool)

(assert (=> b!1281672 m!1176137))

(assert (=> b!1281672 m!1176133))

(declare-fun m!1176139 () Bool)

(assert (=> b!1281672 m!1176139))

(assert (=> b!1281672 m!1175967))

(assert (=> b!1281672 m!1176121))

(declare-fun m!1176141 () Bool)

(assert (=> b!1281672 m!1176141))

(declare-fun m!1176143 () Bool)

(assert (=> b!1281672 m!1176143))

(assert (=> b!1281672 m!1176127))

(declare-fun m!1176145 () Bool)

(assert (=> b!1281672 m!1176145))

(assert (=> b!1281672 m!1176135))

(declare-fun m!1176147 () Bool)

(assert (=> b!1281672 m!1176147))

(declare-fun m!1176149 () Bool)

(assert (=> b!1281672 m!1176149))

(assert (=> b!1281674 m!1175967))

(assert (=> b!1281674 m!1175967))

(assert (=> b!1281674 m!1176115))

(declare-fun m!1176151 () Bool)

(assert (=> b!1281668 m!1176151))

(declare-fun m!1176153 () Bool)

(assert (=> bm!62743 m!1176153))

(declare-fun m!1176155 () Bool)

(assert (=> bm!62742 m!1176155))

(declare-fun m!1176157 () Bool)

(assert (=> b!1281684 m!1176157))

(assert (=> b!1281681 m!1175967))

(assert (=> b!1281681 m!1175967))

(declare-fun m!1176159 () Bool)

(assert (=> b!1281681 m!1176159))

(assert (=> bm!62740 m!1176125))

(assert (=> b!1281527 d!140579))

(declare-fun d!140581 () Bool)

(declare-fun res!851477 () Bool)

(declare-fun e!732318 () Bool)

(assert (=> d!140581 (=> res!851477 e!732318)))

(assert (=> d!140581 (= res!851477 (= (select (arr!40765 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144)) k0!1205))))

(assert (=> d!140581 (= (arrayContainsKey!0 _keys!1741 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144)) e!732318)))

(declare-fun b!1281693 () Bool)

(declare-fun e!732319 () Bool)

(assert (=> b!1281693 (= e!732318 e!732319)))

(declare-fun res!851478 () Bool)

(assert (=> b!1281693 (=> (not res!851478) (not e!732319))))

(assert (=> b!1281693 (= res!851478 (bvslt (bvadd #b00000000000000000000000000000001 from!2144 #b00000000000000000000000000000001) (size!41316 _keys!1741)))))

(declare-fun b!1281694 () Bool)

(assert (=> b!1281694 (= e!732319 (arrayContainsKey!0 _keys!1741 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144 #b00000000000000000000000000000001)))))

(assert (= (and d!140581 (not res!851477)) b!1281693))

(assert (= (and b!1281693 res!851478) b!1281694))

(assert (=> d!140581 m!1176021))

(declare-fun m!1176161 () Bool)

(assert (=> b!1281694 m!1176161))

(assert (=> b!1281521 d!140581))

(declare-fun d!140583 () Bool)

(declare-fun e!732322 () Bool)

(assert (=> d!140583 e!732322))

(declare-fun c!124018 () Bool)

(assert (=> d!140583 (= c!124018 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!576327 () Unit!42387)

(declare-fun choose!1907 (array!84531 array!84529 (_ BitVec 32) (_ BitVec 32) V!50107 V!50107 (_ BitVec 64) (_ BitVec 32) Int) Unit!42387)

(assert (=> d!140583 (= lt!576327 (choose!1907 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(assert (=> d!140583 (validMask!0 mask!2175)))

(assert (=> d!140583 (= (lemmaListMapContainsThenArrayContainsFrom!639 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) lt!576327)))

(declare-fun b!1281699 () Bool)

(assert (=> b!1281699 (= e!732322 (arrayContainsKey!0 _keys!1741 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144)))))

(declare-fun b!1281700 () Bool)

(assert (=> b!1281700 (= e!732322 (ite (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!140583 c!124018) b!1281699))

(assert (= (and d!140583 (not c!124018)) b!1281700))

(declare-fun m!1176163 () Bool)

(assert (=> d!140583 m!1176163))

(assert (=> d!140583 m!1175957))

(assert (=> b!1281699 m!1175969))

(assert (=> b!1281521 d!140583))

(declare-fun mapNonEmpty!52187 () Bool)

(declare-fun mapRes!52187 () Bool)

(declare-fun tp!99459 () Bool)

(declare-fun e!732327 () Bool)

(assert (=> mapNonEmpty!52187 (= mapRes!52187 (and tp!99459 e!732327))))

(declare-fun mapValue!52187 () ValueCell!15978)

(declare-fun mapKey!52187 () (_ BitVec 32))

(declare-fun mapRest!52187 () (Array (_ BitVec 32) ValueCell!15978))

(assert (=> mapNonEmpty!52187 (= mapRest!52181 (store mapRest!52187 mapKey!52187 mapValue!52187))))

(declare-fun b!1281708 () Bool)

(declare-fun e!732328 () Bool)

(assert (=> b!1281708 (= e!732328 tp_is_empty!33753)))

(declare-fun mapIsEmpty!52187 () Bool)

(assert (=> mapIsEmpty!52187 mapRes!52187))

(declare-fun condMapEmpty!52187 () Bool)

(declare-fun mapDefault!52187 () ValueCell!15978)

(assert (=> mapNonEmpty!52181 (= condMapEmpty!52187 (= mapRest!52181 ((as const (Array (_ BitVec 32) ValueCell!15978)) mapDefault!52187)))))

(assert (=> mapNonEmpty!52181 (= tp!99450 (and e!732328 mapRes!52187))))

(declare-fun b!1281707 () Bool)

(assert (=> b!1281707 (= e!732327 tp_is_empty!33753)))

(assert (= (and mapNonEmpty!52181 condMapEmpty!52187) mapIsEmpty!52187))

(assert (= (and mapNonEmpty!52181 (not condMapEmpty!52187)) mapNonEmpty!52187))

(assert (= (and mapNonEmpty!52187 ((_ is ValueCellFull!15978) mapValue!52187)) b!1281707))

(assert (= (and mapNonEmpty!52181 ((_ is ValueCellFull!15978) mapDefault!52187)) b!1281708))

(declare-fun m!1176165 () Bool)

(assert (=> mapNonEmpty!52187 m!1176165))

(declare-fun b_lambda!23109 () Bool)

(assert (= b_lambda!23105 (or (and start!108602 b_free!28113) b_lambda!23109)))

(declare-fun b_lambda!23111 () Bool)

(assert (= b_lambda!23107 (or (and start!108602 b_free!28113) b_lambda!23111)))

(check-sat (not b!1281672) (not b_next!28113) (not b!1281631) (not bm!62743) (not b!1281572) (not b!1281677) (not b!1281621) (not b!1281694) (not d!140567) (not bm!62733) (not d!140577) (not b!1281619) (not b!1281688) (not b!1281662) (not b!1281674) (not b!1281660) (not b!1281570) (not b_lambda!23111) (not d!140579) (not b!1281665) (not bm!62742) (not b!1281699) (not b!1281684) (not d!140583) (not b!1281635) (not d!140571) (not b!1281667) (not bm!62730) (not bm!62739) (not bm!62726) (not b!1281615) (not b_lambda!23109) (not b!1281661) (not b!1281624) (not bm!62736) (not b!1281628) (not b!1281646) (not d!140569) (not b!1281620) (not b!1281648) (not b!1281668) (not b!1281673) b_and!46189 (not mapNonEmpty!52187) (not bm!62727) tp_is_empty!33753 (not bm!62729) (not b!1281681) (not bm!62740))
(check-sat b_and!46189 (not b_next!28113))
