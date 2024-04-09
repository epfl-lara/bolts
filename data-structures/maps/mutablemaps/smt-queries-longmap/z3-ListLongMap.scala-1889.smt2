; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33814 () Bool)

(assert start!33814)

(declare-fun b_free!7005 () Bool)

(declare-fun b_next!7005 () Bool)

(assert (=> start!33814 (= b_free!7005 (not b_next!7005))))

(declare-fun tp!24525 () Bool)

(declare-fun b_and!14207 () Bool)

(assert (=> start!33814 (= tp!24525 b_and!14207)))

(declare-fun b!336084 () Bool)

(declare-fun res!185570 () Bool)

(declare-fun e!206313 () Bool)

(assert (=> b!336084 (=> (not res!185570) (not e!206313))))

(declare-datatypes ((array!17495 0))(
  ( (array!17496 (arr!8273 (Array (_ BitVec 32) (_ BitVec 64))) (size!8625 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17495)

(declare-datatypes ((List!4759 0))(
  ( (Nil!4756) (Cons!4755 (h!5611 (_ BitVec 64)) (t!9859 List!4759)) )
))
(declare-fun arrayNoDuplicates!0 (array!17495 (_ BitVec 32) List!4759) Bool)

(assert (=> b!336084 (= res!185570 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4756))))

(declare-fun b!336085 () Bool)

(declare-fun e!206310 () Bool)

(assert (=> b!336085 (= e!206310 (or (bvsge #b00000000000000000000000000000000 (size!8625 _keys!1895)) (bvsge (size!8625 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun b!336086 () Bool)

(declare-fun res!185563 () Bool)

(assert (=> b!336086 (=> (not res!185563) (not e!206313))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10253 0))(
  ( (V!10254 (val!3523 Int)) )
))
(declare-datatypes ((ValueCell!3135 0))(
  ( (ValueCellFull!3135 (v!5683 V!10253)) (EmptyCell!3135) )
))
(declare-datatypes ((array!17497 0))(
  ( (array!17498 (arr!8274 (Array (_ BitVec 32) ValueCell!3135)) (size!8626 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17497)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!336086 (= res!185563 (and (= (size!8626 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8625 _keys!1895) (size!8626 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!336087 () Bool)

(declare-fun e!206312 () Bool)

(declare-fun tp_is_empty!6957 () Bool)

(assert (=> b!336087 (= e!206312 tp_is_empty!6957)))

(declare-fun mapIsEmpty!11838 () Bool)

(declare-fun mapRes!11838 () Bool)

(assert (=> mapIsEmpty!11838 mapRes!11838))

(declare-fun b!336088 () Bool)

(declare-fun res!185567 () Bool)

(assert (=> b!336088 (=> (not res!185567) (not e!206313))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17495 (_ BitVec 32)) Bool)

(assert (=> b!336088 (= res!185567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!336089 () Bool)

(declare-fun e!206309 () Bool)

(assert (=> b!336089 (= e!206309 tp_is_empty!6957)))

(declare-fun b!336090 () Bool)

(declare-fun res!185568 () Bool)

(assert (=> b!336090 (=> (not res!185568) (not e!206310))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17495 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336090 (= res!185568 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!11838 () Bool)

(declare-fun tp!24524 () Bool)

(assert (=> mapNonEmpty!11838 (= mapRes!11838 (and tp!24524 e!206309))))

(declare-fun mapValue!11838 () ValueCell!3135)

(declare-fun mapRest!11838 () (Array (_ BitVec 32) ValueCell!3135))

(declare-fun mapKey!11838 () (_ BitVec 32))

(assert (=> mapNonEmpty!11838 (= (arr!8274 _values!1525) (store mapRest!11838 mapKey!11838 mapValue!11838))))

(declare-fun b!336092 () Bool)

(declare-fun res!185566 () Bool)

(assert (=> b!336092 (=> (not res!185566) (not e!206313))))

(declare-fun zeroValue!1467 () V!10253)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10253)

(declare-datatypes ((tuple2!5120 0))(
  ( (tuple2!5121 (_1!2570 (_ BitVec 64)) (_2!2570 V!10253)) )
))
(declare-datatypes ((List!4760 0))(
  ( (Nil!4757) (Cons!4756 (h!5612 tuple2!5120) (t!9860 List!4760)) )
))
(declare-datatypes ((ListLongMap!4047 0))(
  ( (ListLongMap!4048 (toList!2039 List!4760)) )
))
(declare-fun contains!2081 (ListLongMap!4047 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1559 (array!17495 array!17497 (_ BitVec 32) (_ BitVec 32) V!10253 V!10253 (_ BitVec 32) Int) ListLongMap!4047)

(assert (=> b!336092 (= res!185566 (not (contains!2081 (getCurrentListMap!1559 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!336093 () Bool)

(declare-fun e!206308 () Bool)

(assert (=> b!336093 (= e!206308 (and e!206312 mapRes!11838))))

(declare-fun condMapEmpty!11838 () Bool)

(declare-fun mapDefault!11838 () ValueCell!3135)

(assert (=> b!336093 (= condMapEmpty!11838 (= (arr!8274 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3135)) mapDefault!11838)))))

(declare-fun b!336094 () Bool)

(assert (=> b!336094 (= e!206313 e!206310)))

(declare-fun res!185564 () Bool)

(assert (=> b!336094 (=> (not res!185564) (not e!206310))))

(declare-datatypes ((SeekEntryResult!3208 0))(
  ( (MissingZero!3208 (index!15011 (_ BitVec 32))) (Found!3208 (index!15012 (_ BitVec 32))) (Intermediate!3208 (undefined!4020 Bool) (index!15013 (_ BitVec 32)) (x!33517 (_ BitVec 32))) (Undefined!3208) (MissingVacant!3208 (index!15014 (_ BitVec 32))) )
))
(declare-fun lt!160122 () SeekEntryResult!3208)

(get-info :version)

(assert (=> b!336094 (= res!185564 (and (not ((_ is Found!3208) lt!160122)) ((_ is MissingZero!3208) lt!160122)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17495 (_ BitVec 32)) SeekEntryResult!3208)

(assert (=> b!336094 (= lt!160122 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!336091 () Bool)

(declare-fun res!185565 () Bool)

(assert (=> b!336091 (=> (not res!185565) (not e!206313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336091 (= res!185565 (validKeyInArray!0 k0!1348))))

(declare-fun res!185569 () Bool)

(assert (=> start!33814 (=> (not res!185569) (not e!206313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33814 (= res!185569 (validMask!0 mask!2385))))

(assert (=> start!33814 e!206313))

(assert (=> start!33814 true))

(assert (=> start!33814 tp_is_empty!6957))

(assert (=> start!33814 tp!24525))

(declare-fun array_inv!6132 (array!17497) Bool)

(assert (=> start!33814 (and (array_inv!6132 _values!1525) e!206308)))

(declare-fun array_inv!6133 (array!17495) Bool)

(assert (=> start!33814 (array_inv!6133 _keys!1895)))

(assert (= (and start!33814 res!185569) b!336086))

(assert (= (and b!336086 res!185563) b!336088))

(assert (= (and b!336088 res!185567) b!336084))

(assert (= (and b!336084 res!185570) b!336091))

(assert (= (and b!336091 res!185565) b!336092))

(assert (= (and b!336092 res!185566) b!336094))

(assert (= (and b!336094 res!185564) b!336090))

(assert (= (and b!336090 res!185568) b!336085))

(assert (= (and b!336093 condMapEmpty!11838) mapIsEmpty!11838))

(assert (= (and b!336093 (not condMapEmpty!11838)) mapNonEmpty!11838))

(assert (= (and mapNonEmpty!11838 ((_ is ValueCellFull!3135) mapValue!11838)) b!336089))

(assert (= (and b!336093 ((_ is ValueCellFull!3135) mapDefault!11838)) b!336087))

(assert (= start!33814 b!336093))

(declare-fun m!339971 () Bool)

(assert (=> b!336084 m!339971))

(declare-fun m!339973 () Bool)

(assert (=> b!336091 m!339973))

(declare-fun m!339975 () Bool)

(assert (=> b!336094 m!339975))

(declare-fun m!339977 () Bool)

(assert (=> b!336088 m!339977))

(declare-fun m!339979 () Bool)

(assert (=> b!336090 m!339979))

(declare-fun m!339981 () Bool)

(assert (=> mapNonEmpty!11838 m!339981))

(declare-fun m!339983 () Bool)

(assert (=> b!336092 m!339983))

(assert (=> b!336092 m!339983))

(declare-fun m!339985 () Bool)

(assert (=> b!336092 m!339985))

(declare-fun m!339987 () Bool)

(assert (=> start!33814 m!339987))

(declare-fun m!339989 () Bool)

(assert (=> start!33814 m!339989))

(declare-fun m!339991 () Bool)

(assert (=> start!33814 m!339991))

(check-sat (not b!336092) (not b!336091) b_and!14207 (not b!336084) (not b_next!7005) (not start!33814) (not b!336090) (not b!336094) (not mapNonEmpty!11838) tp_is_empty!6957 (not b!336088))
(check-sat b_and!14207 (not b_next!7005))
(get-model)

(declare-fun d!70561 () Bool)

(assert (=> d!70561 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!336091 d!70561))

(declare-fun d!70563 () Bool)

(assert (=> d!70563 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!33814 d!70563))

(declare-fun d!70565 () Bool)

(assert (=> d!70565 (= (array_inv!6132 _values!1525) (bvsge (size!8626 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!33814 d!70565))

(declare-fun d!70567 () Bool)

(assert (=> d!70567 (= (array_inv!6133 _keys!1895) (bvsge (size!8625 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!33814 d!70567))

(declare-fun d!70569 () Bool)

(declare-fun res!185600 () Bool)

(declare-fun e!206338 () Bool)

(assert (=> d!70569 (=> res!185600 e!206338)))

(assert (=> d!70569 (= res!185600 (bvsge #b00000000000000000000000000000000 (size!8625 _keys!1895)))))

(assert (=> d!70569 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!206338)))

(declare-fun b!336136 () Bool)

(declare-fun e!206340 () Bool)

(declare-fun e!206339 () Bool)

(assert (=> b!336136 (= e!206340 e!206339)))

(declare-fun lt!160132 () (_ BitVec 64))

(assert (=> b!336136 (= lt!160132 (select (arr!8273 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10450 0))(
  ( (Unit!10451) )
))
(declare-fun lt!160134 () Unit!10450)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17495 (_ BitVec 64) (_ BitVec 32)) Unit!10450)

(assert (=> b!336136 (= lt!160134 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!160132 #b00000000000000000000000000000000))))

(assert (=> b!336136 (arrayContainsKey!0 _keys!1895 lt!160132 #b00000000000000000000000000000000)))

(declare-fun lt!160133 () Unit!10450)

(assert (=> b!336136 (= lt!160133 lt!160134)))

(declare-fun res!185599 () Bool)

(assert (=> b!336136 (= res!185599 (= (seekEntryOrOpen!0 (select (arr!8273 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3208 #b00000000000000000000000000000000)))))

(assert (=> b!336136 (=> (not res!185599) (not e!206339))))

(declare-fun b!336137 () Bool)

(assert (=> b!336137 (= e!206338 e!206340)))

(declare-fun c!52190 () Bool)

(assert (=> b!336137 (= c!52190 (validKeyInArray!0 (select (arr!8273 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26345 () Bool)

(declare-fun call!26348 () Bool)

(assert (=> bm!26345 (= call!26348 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!336138 () Bool)

(assert (=> b!336138 (= e!206339 call!26348)))

(declare-fun b!336139 () Bool)

(assert (=> b!336139 (= e!206340 call!26348)))

(assert (= (and d!70569 (not res!185600)) b!336137))

(assert (= (and b!336137 c!52190) b!336136))

(assert (= (and b!336137 (not c!52190)) b!336139))

(assert (= (and b!336136 res!185599) b!336138))

(assert (= (or b!336138 b!336139) bm!26345))

(declare-fun m!340015 () Bool)

(assert (=> b!336136 m!340015))

(declare-fun m!340017 () Bool)

(assert (=> b!336136 m!340017))

(declare-fun m!340019 () Bool)

(assert (=> b!336136 m!340019))

(assert (=> b!336136 m!340015))

(declare-fun m!340021 () Bool)

(assert (=> b!336136 m!340021))

(assert (=> b!336137 m!340015))

(assert (=> b!336137 m!340015))

(declare-fun m!340023 () Bool)

(assert (=> b!336137 m!340023))

(declare-fun m!340025 () Bool)

(assert (=> bm!26345 m!340025))

(assert (=> b!336088 d!70569))

(declare-fun d!70571 () Bool)

(declare-fun e!206345 () Bool)

(assert (=> d!70571 e!206345))

(declare-fun res!185603 () Bool)

(assert (=> d!70571 (=> res!185603 e!206345)))

(declare-fun lt!160143 () Bool)

(assert (=> d!70571 (= res!185603 (not lt!160143))))

(declare-fun lt!160146 () Bool)

(assert (=> d!70571 (= lt!160143 lt!160146)))

(declare-fun lt!160144 () Unit!10450)

(declare-fun e!206346 () Unit!10450)

(assert (=> d!70571 (= lt!160144 e!206346)))

(declare-fun c!52193 () Bool)

(assert (=> d!70571 (= c!52193 lt!160146)))

(declare-fun containsKey!317 (List!4760 (_ BitVec 64)) Bool)

(assert (=> d!70571 (= lt!160146 (containsKey!317 (toList!2039 (getCurrentListMap!1559 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70571 (= (contains!2081 (getCurrentListMap!1559 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!160143)))

(declare-fun b!336146 () Bool)

(declare-fun lt!160145 () Unit!10450)

(assert (=> b!336146 (= e!206346 lt!160145)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!266 (List!4760 (_ BitVec 64)) Unit!10450)

(assert (=> b!336146 (= lt!160145 (lemmaContainsKeyImpliesGetValueByKeyDefined!266 (toList!2039 (getCurrentListMap!1559 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!331 0))(
  ( (Some!330 (v!5685 V!10253)) (None!329) )
))
(declare-fun isDefined!267 (Option!331) Bool)

(declare-fun getValueByKey!325 (List!4760 (_ BitVec 64)) Option!331)

(assert (=> b!336146 (isDefined!267 (getValueByKey!325 (toList!2039 (getCurrentListMap!1559 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!336147 () Bool)

(declare-fun Unit!10452 () Unit!10450)

(assert (=> b!336147 (= e!206346 Unit!10452)))

(declare-fun b!336148 () Bool)

(assert (=> b!336148 (= e!206345 (isDefined!267 (getValueByKey!325 (toList!2039 (getCurrentListMap!1559 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70571 c!52193) b!336146))

(assert (= (and d!70571 (not c!52193)) b!336147))

(assert (= (and d!70571 (not res!185603)) b!336148))

(declare-fun m!340027 () Bool)

(assert (=> d!70571 m!340027))

(declare-fun m!340029 () Bool)

(assert (=> b!336146 m!340029))

(declare-fun m!340031 () Bool)

(assert (=> b!336146 m!340031))

(assert (=> b!336146 m!340031))

(declare-fun m!340033 () Bool)

(assert (=> b!336146 m!340033))

(assert (=> b!336148 m!340031))

(assert (=> b!336148 m!340031))

(assert (=> b!336148 m!340033))

(assert (=> b!336092 d!70571))

(declare-fun b!336191 () Bool)

(declare-fun e!206382 () Bool)

(assert (=> b!336191 (= e!206382 (validKeyInArray!0 (select (arr!8273 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26360 () Bool)

(declare-fun call!26364 () ListLongMap!4047)

(declare-fun call!26367 () ListLongMap!4047)

(assert (=> bm!26360 (= call!26364 call!26367)))

(declare-fun b!336192 () Bool)

(declare-fun e!206385 () Bool)

(declare-fun e!206383 () Bool)

(assert (=> b!336192 (= e!206385 e!206383)))

(declare-fun res!185626 () Bool)

(declare-fun call!26363 () Bool)

(assert (=> b!336192 (= res!185626 call!26363)))

(assert (=> b!336192 (=> (not res!185626) (not e!206383))))

(declare-fun c!52209 () Bool)

(declare-fun call!26366 () ListLongMap!4047)

(declare-fun call!26368 () ListLongMap!4047)

(declare-fun c!52206 () Bool)

(declare-fun bm!26361 () Bool)

(declare-fun call!26365 () ListLongMap!4047)

(declare-fun +!712 (ListLongMap!4047 tuple2!5120) ListLongMap!4047)

(assert (=> bm!26361 (= call!26367 (+!712 (ite c!52209 call!26366 (ite c!52206 call!26368 call!26365)) (ite (or c!52209 c!52206) (tuple2!5121 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5121 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!336193 () Bool)

(declare-fun e!206384 () ListLongMap!4047)

(assert (=> b!336193 (= e!206384 call!26365)))

(declare-fun b!336194 () Bool)

(declare-fun e!206373 () Bool)

(declare-fun call!26369 () Bool)

(assert (=> b!336194 (= e!206373 (not call!26369))))

(declare-fun b!336195 () Bool)

(declare-fun lt!160202 () ListLongMap!4047)

(declare-fun apply!268 (ListLongMap!4047 (_ BitVec 64)) V!10253)

(assert (=> b!336195 (= e!206383 (= (apply!268 lt!160202 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!336196 () Bool)

(declare-fun c!52208 () Bool)

(assert (=> b!336196 (= c!52208 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!206375 () ListLongMap!4047)

(assert (=> b!336196 (= e!206375 e!206384)))

(declare-fun b!336197 () Bool)

(declare-fun e!206376 () Bool)

(assert (=> b!336197 (= e!206376 (= (apply!268 lt!160202 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun bm!26362 () Bool)

(assert (=> bm!26362 (= call!26368 call!26366)))

(declare-fun b!336198 () Bool)

(declare-fun e!206379 () Bool)

(assert (=> b!336198 (= e!206379 (validKeyInArray!0 (select (arr!8273 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!336199 () Bool)

(declare-fun res!185627 () Bool)

(declare-fun e!206381 () Bool)

(assert (=> b!336199 (=> (not res!185627) (not e!206381))))

(assert (=> b!336199 (= res!185627 e!206385)))

(declare-fun c!52207 () Bool)

(assert (=> b!336199 (= c!52207 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!336200 () Bool)

(declare-fun e!206380 () Unit!10450)

(declare-fun Unit!10453 () Unit!10450)

(assert (=> b!336200 (= e!206380 Unit!10453)))

(declare-fun b!336201 () Bool)

(declare-fun res!185629 () Bool)

(assert (=> b!336201 (=> (not res!185629) (not e!206381))))

(declare-fun e!206374 () Bool)

(assert (=> b!336201 (= res!185629 e!206374)))

(declare-fun res!185625 () Bool)

(assert (=> b!336201 (=> res!185625 e!206374)))

(assert (=> b!336201 (= res!185625 (not e!206382))))

(declare-fun res!185630 () Bool)

(assert (=> b!336201 (=> (not res!185630) (not e!206382))))

(assert (=> b!336201 (= res!185630 (bvslt #b00000000000000000000000000000000 (size!8625 _keys!1895)))))

(declare-fun bm!26363 () Bool)

(assert (=> bm!26363 (= call!26363 (contains!2081 lt!160202 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!206378 () Bool)

(declare-fun b!336202 () Bool)

(declare-fun get!4533 (ValueCell!3135 V!10253) V!10253)

(declare-fun dynLambda!606 (Int (_ BitVec 64)) V!10253)

(assert (=> b!336202 (= e!206378 (= (apply!268 lt!160202 (select (arr!8273 _keys!1895) #b00000000000000000000000000000000)) (get!4533 (select (arr!8274 _values!1525) #b00000000000000000000000000000000) (dynLambda!606 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!336202 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8626 _values!1525)))))

(assert (=> b!336202 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8625 _keys!1895)))))

(declare-fun b!336203 () Bool)

(assert (=> b!336203 (= e!206374 e!206378)))

(declare-fun res!185622 () Bool)

(assert (=> b!336203 (=> (not res!185622) (not e!206378))))

(assert (=> b!336203 (= res!185622 (contains!2081 lt!160202 (select (arr!8273 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!336203 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8625 _keys!1895)))))

(declare-fun bm!26364 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!587 (array!17495 array!17497 (_ BitVec 32) (_ BitVec 32) V!10253 V!10253 (_ BitVec 32) Int) ListLongMap!4047)

(assert (=> bm!26364 (= call!26366 (getCurrentListMapNoExtraKeys!587 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!336204 () Bool)

(declare-fun e!206377 () ListLongMap!4047)

(assert (=> b!336204 (= e!206377 (+!712 call!26367 (tuple2!5121 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun d!70573 () Bool)

(assert (=> d!70573 e!206381))

(declare-fun res!185623 () Bool)

(assert (=> d!70573 (=> (not res!185623) (not e!206381))))

(assert (=> d!70573 (= res!185623 (or (bvsge #b00000000000000000000000000000000 (size!8625 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8625 _keys!1895)))))))

(declare-fun lt!160207 () ListLongMap!4047)

(assert (=> d!70573 (= lt!160202 lt!160207)))

(declare-fun lt!160203 () Unit!10450)

(assert (=> d!70573 (= lt!160203 e!206380)))

(declare-fun c!52210 () Bool)

(assert (=> d!70573 (= c!52210 e!206379)))

(declare-fun res!185628 () Bool)

(assert (=> d!70573 (=> (not res!185628) (not e!206379))))

(assert (=> d!70573 (= res!185628 (bvslt #b00000000000000000000000000000000 (size!8625 _keys!1895)))))

(assert (=> d!70573 (= lt!160207 e!206377)))

(assert (=> d!70573 (= c!52209 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70573 (validMask!0 mask!2385)))

(assert (=> d!70573 (= (getCurrentListMap!1559 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!160202)))

(declare-fun bm!26365 () Bool)

(assert (=> bm!26365 (= call!26365 call!26368)))

(declare-fun b!336205 () Bool)

(assert (=> b!336205 (= e!206377 e!206375)))

(assert (=> b!336205 (= c!52206 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!336206 () Bool)

(assert (=> b!336206 (= e!206373 e!206376)))

(declare-fun res!185624 () Bool)

(assert (=> b!336206 (= res!185624 call!26369)))

(assert (=> b!336206 (=> (not res!185624) (not e!206376))))

(declare-fun bm!26366 () Bool)

(assert (=> bm!26366 (= call!26369 (contains!2081 lt!160202 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!336207 () Bool)

(assert (=> b!336207 (= e!206384 call!26364)))

(declare-fun b!336208 () Bool)

(assert (=> b!336208 (= e!206381 e!206373)))

(declare-fun c!52211 () Bool)

(assert (=> b!336208 (= c!52211 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!336209 () Bool)

(assert (=> b!336209 (= e!206375 call!26364)))

(declare-fun b!336210 () Bool)

(assert (=> b!336210 (= e!206385 (not call!26363))))

(declare-fun b!336211 () Bool)

(declare-fun lt!160210 () Unit!10450)

(assert (=> b!336211 (= e!206380 lt!160210)))

(declare-fun lt!160208 () ListLongMap!4047)

(assert (=> b!336211 (= lt!160208 (getCurrentListMapNoExtraKeys!587 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160192 () (_ BitVec 64))

(assert (=> b!336211 (= lt!160192 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160209 () (_ BitVec 64))

(assert (=> b!336211 (= lt!160209 (select (arr!8273 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160194 () Unit!10450)

(declare-fun addStillContains!244 (ListLongMap!4047 (_ BitVec 64) V!10253 (_ BitVec 64)) Unit!10450)

(assert (=> b!336211 (= lt!160194 (addStillContains!244 lt!160208 lt!160192 zeroValue!1467 lt!160209))))

(assert (=> b!336211 (contains!2081 (+!712 lt!160208 (tuple2!5121 lt!160192 zeroValue!1467)) lt!160209)))

(declare-fun lt!160200 () Unit!10450)

(assert (=> b!336211 (= lt!160200 lt!160194)))

(declare-fun lt!160191 () ListLongMap!4047)

(assert (=> b!336211 (= lt!160191 (getCurrentListMapNoExtraKeys!587 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160212 () (_ BitVec 64))

(assert (=> b!336211 (= lt!160212 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160199 () (_ BitVec 64))

(assert (=> b!336211 (= lt!160199 (select (arr!8273 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160205 () Unit!10450)

(declare-fun addApplyDifferent!244 (ListLongMap!4047 (_ BitVec 64) V!10253 (_ BitVec 64)) Unit!10450)

(assert (=> b!336211 (= lt!160205 (addApplyDifferent!244 lt!160191 lt!160212 minValue!1467 lt!160199))))

(assert (=> b!336211 (= (apply!268 (+!712 lt!160191 (tuple2!5121 lt!160212 minValue!1467)) lt!160199) (apply!268 lt!160191 lt!160199))))

(declare-fun lt!160198 () Unit!10450)

(assert (=> b!336211 (= lt!160198 lt!160205)))

(declare-fun lt!160201 () ListLongMap!4047)

(assert (=> b!336211 (= lt!160201 (getCurrentListMapNoExtraKeys!587 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160197 () (_ BitVec 64))

(assert (=> b!336211 (= lt!160197 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160206 () (_ BitVec 64))

(assert (=> b!336211 (= lt!160206 (select (arr!8273 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!160195 () Unit!10450)

(assert (=> b!336211 (= lt!160195 (addApplyDifferent!244 lt!160201 lt!160197 zeroValue!1467 lt!160206))))

(assert (=> b!336211 (= (apply!268 (+!712 lt!160201 (tuple2!5121 lt!160197 zeroValue!1467)) lt!160206) (apply!268 lt!160201 lt!160206))))

(declare-fun lt!160193 () Unit!10450)

(assert (=> b!336211 (= lt!160193 lt!160195)))

(declare-fun lt!160196 () ListLongMap!4047)

(assert (=> b!336211 (= lt!160196 (getCurrentListMapNoExtraKeys!587 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!160204 () (_ BitVec 64))

(assert (=> b!336211 (= lt!160204 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!160211 () (_ BitVec 64))

(assert (=> b!336211 (= lt!160211 (select (arr!8273 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!336211 (= lt!160210 (addApplyDifferent!244 lt!160196 lt!160204 minValue!1467 lt!160211))))

(assert (=> b!336211 (= (apply!268 (+!712 lt!160196 (tuple2!5121 lt!160204 minValue!1467)) lt!160211) (apply!268 lt!160196 lt!160211))))

(assert (= (and d!70573 c!52209) b!336204))

(assert (= (and d!70573 (not c!52209)) b!336205))

(assert (= (and b!336205 c!52206) b!336209))

(assert (= (and b!336205 (not c!52206)) b!336196))

(assert (= (and b!336196 c!52208) b!336207))

(assert (= (and b!336196 (not c!52208)) b!336193))

(assert (= (or b!336207 b!336193) bm!26365))

(assert (= (or b!336209 bm!26365) bm!26362))

(assert (= (or b!336209 b!336207) bm!26360))

(assert (= (or b!336204 bm!26362) bm!26364))

(assert (= (or b!336204 bm!26360) bm!26361))

(assert (= (and d!70573 res!185628) b!336198))

(assert (= (and d!70573 c!52210) b!336211))

(assert (= (and d!70573 (not c!52210)) b!336200))

(assert (= (and d!70573 res!185623) b!336201))

(assert (= (and b!336201 res!185630) b!336191))

(assert (= (and b!336201 (not res!185625)) b!336203))

(assert (= (and b!336203 res!185622) b!336202))

(assert (= (and b!336201 res!185629) b!336199))

(assert (= (and b!336199 c!52207) b!336192))

(assert (= (and b!336199 (not c!52207)) b!336210))

(assert (= (and b!336192 res!185626) b!336195))

(assert (= (or b!336192 b!336210) bm!26363))

(assert (= (and b!336199 res!185627) b!336208))

(assert (= (and b!336208 c!52211) b!336206))

(assert (= (and b!336208 (not c!52211)) b!336194))

(assert (= (and b!336206 res!185624) b!336197))

(assert (= (or b!336206 b!336194) bm!26366))

(declare-fun b_lambda!8441 () Bool)

(assert (=> (not b_lambda!8441) (not b!336202)))

(declare-fun t!9862 () Bool)

(declare-fun tb!3059 () Bool)

(assert (=> (and start!33814 (= defaultEntry!1528 defaultEntry!1528) t!9862) tb!3059))

(declare-fun result!5491 () Bool)

(assert (=> tb!3059 (= result!5491 tp_is_empty!6957)))

(assert (=> b!336202 t!9862))

(declare-fun b_and!14211 () Bool)

(assert (= b_and!14207 (and (=> t!9862 result!5491) b_and!14211)))

(declare-fun m!340035 () Bool)

(assert (=> b!336204 m!340035))

(assert (=> b!336191 m!340015))

(assert (=> b!336191 m!340015))

(assert (=> b!336191 m!340023))

(declare-fun m!340037 () Bool)

(assert (=> b!336202 m!340037))

(declare-fun m!340039 () Bool)

(assert (=> b!336202 m!340039))

(declare-fun m!340041 () Bool)

(assert (=> b!336202 m!340041))

(assert (=> b!336202 m!340015))

(declare-fun m!340043 () Bool)

(assert (=> b!336202 m!340043))

(assert (=> b!336202 m!340037))

(assert (=> b!336202 m!340015))

(assert (=> b!336202 m!340039))

(declare-fun m!340045 () Bool)

(assert (=> b!336197 m!340045))

(declare-fun m!340047 () Bool)

(assert (=> bm!26361 m!340047))

(declare-fun m!340049 () Bool)

(assert (=> b!336211 m!340049))

(declare-fun m!340051 () Bool)

(assert (=> b!336211 m!340051))

(declare-fun m!340053 () Bool)

(assert (=> b!336211 m!340053))

(declare-fun m!340055 () Bool)

(assert (=> b!336211 m!340055))

(declare-fun m!340057 () Bool)

(assert (=> b!336211 m!340057))

(declare-fun m!340059 () Bool)

(assert (=> b!336211 m!340059))

(assert (=> b!336211 m!340057))

(declare-fun m!340061 () Bool)

(assert (=> b!336211 m!340061))

(declare-fun m!340063 () Bool)

(assert (=> b!336211 m!340063))

(declare-fun m!340065 () Bool)

(assert (=> b!336211 m!340065))

(assert (=> b!336211 m!340051))

(declare-fun m!340067 () Bool)

(assert (=> b!336211 m!340067))

(declare-fun m!340069 () Bool)

(assert (=> b!336211 m!340069))

(assert (=> b!336211 m!340067))

(declare-fun m!340071 () Bool)

(assert (=> b!336211 m!340071))

(declare-fun m!340073 () Bool)

(assert (=> b!336211 m!340073))

(declare-fun m!340075 () Bool)

(assert (=> b!336211 m!340075))

(declare-fun m!340077 () Bool)

(assert (=> b!336211 m!340077))

(assert (=> b!336211 m!340063))

(declare-fun m!340079 () Bool)

(assert (=> b!336211 m!340079))

(assert (=> b!336211 m!340015))

(declare-fun m!340081 () Bool)

(assert (=> bm!26366 m!340081))

(assert (=> b!336203 m!340015))

(assert (=> b!336203 m!340015))

(declare-fun m!340083 () Bool)

(assert (=> b!336203 m!340083))

(declare-fun m!340085 () Bool)

(assert (=> b!336195 m!340085))

(assert (=> b!336198 m!340015))

(assert (=> b!336198 m!340015))

(assert (=> b!336198 m!340023))

(declare-fun m!340087 () Bool)

(assert (=> bm!26363 m!340087))

(assert (=> d!70573 m!339987))

(assert (=> bm!26364 m!340065))

(assert (=> b!336092 d!70573))

(declare-fun b!336224 () Bool)

(declare-fun e!206395 () Bool)

(declare-fun contains!2082 (List!4759 (_ BitVec 64)) Bool)

(assert (=> b!336224 (= e!206395 (contains!2082 Nil!4756 (select (arr!8273 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!336225 () Bool)

(declare-fun e!206394 () Bool)

(declare-fun call!26372 () Bool)

(assert (=> b!336225 (= e!206394 call!26372)))

(declare-fun d!70575 () Bool)

(declare-fun res!185637 () Bool)

(declare-fun e!206396 () Bool)

(assert (=> d!70575 (=> res!185637 e!206396)))

(assert (=> d!70575 (= res!185637 (bvsge #b00000000000000000000000000000000 (size!8625 _keys!1895)))))

(assert (=> d!70575 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4756) e!206396)))

(declare-fun bm!26369 () Bool)

(declare-fun c!52214 () Bool)

(assert (=> bm!26369 (= call!26372 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52214 (Cons!4755 (select (arr!8273 _keys!1895) #b00000000000000000000000000000000) Nil!4756) Nil!4756)))))

(declare-fun b!336226 () Bool)

(declare-fun e!206397 () Bool)

(assert (=> b!336226 (= e!206396 e!206397)))

(declare-fun res!185639 () Bool)

(assert (=> b!336226 (=> (not res!185639) (not e!206397))))

(assert (=> b!336226 (= res!185639 (not e!206395))))

(declare-fun res!185638 () Bool)

(assert (=> b!336226 (=> (not res!185638) (not e!206395))))

(assert (=> b!336226 (= res!185638 (validKeyInArray!0 (select (arr!8273 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!336227 () Bool)

(assert (=> b!336227 (= e!206397 e!206394)))

(assert (=> b!336227 (= c!52214 (validKeyInArray!0 (select (arr!8273 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!336228 () Bool)

(assert (=> b!336228 (= e!206394 call!26372)))

(assert (= (and d!70575 (not res!185637)) b!336226))

(assert (= (and b!336226 res!185638) b!336224))

(assert (= (and b!336226 res!185639) b!336227))

(assert (= (and b!336227 c!52214) b!336225))

(assert (= (and b!336227 (not c!52214)) b!336228))

(assert (= (or b!336225 b!336228) bm!26369))

(assert (=> b!336224 m!340015))

(assert (=> b!336224 m!340015))

(declare-fun m!340089 () Bool)

(assert (=> b!336224 m!340089))

(assert (=> bm!26369 m!340015))

(declare-fun m!340091 () Bool)

(assert (=> bm!26369 m!340091))

(assert (=> b!336226 m!340015))

(assert (=> b!336226 m!340015))

(assert (=> b!336226 m!340023))

(assert (=> b!336227 m!340015))

(assert (=> b!336227 m!340015))

(assert (=> b!336227 m!340023))

(assert (=> b!336084 d!70575))

(declare-fun d!70577 () Bool)

(declare-fun res!185644 () Bool)

(declare-fun e!206402 () Bool)

(assert (=> d!70577 (=> res!185644 e!206402)))

(assert (=> d!70577 (= res!185644 (= (select (arr!8273 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!70577 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!206402)))

(declare-fun b!336233 () Bool)

(declare-fun e!206403 () Bool)

(assert (=> b!336233 (= e!206402 e!206403)))

(declare-fun res!185645 () Bool)

(assert (=> b!336233 (=> (not res!185645) (not e!206403))))

(assert (=> b!336233 (= res!185645 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8625 _keys!1895)))))

(declare-fun b!336234 () Bool)

(assert (=> b!336234 (= e!206403 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70577 (not res!185644)) b!336233))

(assert (= (and b!336233 res!185645) b!336234))

(assert (=> d!70577 m!340015))

(declare-fun m!340093 () Bool)

(assert (=> b!336234 m!340093))

(assert (=> b!336090 d!70577))

(declare-fun b!336247 () Bool)

(declare-fun e!206412 () SeekEntryResult!3208)

(declare-fun e!206411 () SeekEntryResult!3208)

(assert (=> b!336247 (= e!206412 e!206411)))

(declare-fun lt!160221 () (_ BitVec 64))

(declare-fun lt!160220 () SeekEntryResult!3208)

(assert (=> b!336247 (= lt!160221 (select (arr!8273 _keys!1895) (index!15013 lt!160220)))))

(declare-fun c!52223 () Bool)

(assert (=> b!336247 (= c!52223 (= lt!160221 k0!1348))))

(declare-fun d!70579 () Bool)

(declare-fun lt!160219 () SeekEntryResult!3208)

(assert (=> d!70579 (and (or ((_ is Undefined!3208) lt!160219) (not ((_ is Found!3208) lt!160219)) (and (bvsge (index!15012 lt!160219) #b00000000000000000000000000000000) (bvslt (index!15012 lt!160219) (size!8625 _keys!1895)))) (or ((_ is Undefined!3208) lt!160219) ((_ is Found!3208) lt!160219) (not ((_ is MissingZero!3208) lt!160219)) (and (bvsge (index!15011 lt!160219) #b00000000000000000000000000000000) (bvslt (index!15011 lt!160219) (size!8625 _keys!1895)))) (or ((_ is Undefined!3208) lt!160219) ((_ is Found!3208) lt!160219) ((_ is MissingZero!3208) lt!160219) (not ((_ is MissingVacant!3208) lt!160219)) (and (bvsge (index!15014 lt!160219) #b00000000000000000000000000000000) (bvslt (index!15014 lt!160219) (size!8625 _keys!1895)))) (or ((_ is Undefined!3208) lt!160219) (ite ((_ is Found!3208) lt!160219) (= (select (arr!8273 _keys!1895) (index!15012 lt!160219)) k0!1348) (ite ((_ is MissingZero!3208) lt!160219) (= (select (arr!8273 _keys!1895) (index!15011 lt!160219)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3208) lt!160219) (= (select (arr!8273 _keys!1895) (index!15014 lt!160219)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70579 (= lt!160219 e!206412)))

(declare-fun c!52221 () Bool)

(assert (=> d!70579 (= c!52221 (and ((_ is Intermediate!3208) lt!160220) (undefined!4020 lt!160220)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17495 (_ BitVec 32)) SeekEntryResult!3208)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70579 (= lt!160220 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70579 (validMask!0 mask!2385)))

(assert (=> d!70579 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!160219)))

(declare-fun b!336248 () Bool)

(assert (=> b!336248 (= e!206412 Undefined!3208)))

(declare-fun e!206410 () SeekEntryResult!3208)

(declare-fun b!336249 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17495 (_ BitVec 32)) SeekEntryResult!3208)

(assert (=> b!336249 (= e!206410 (seekKeyOrZeroReturnVacant!0 (x!33517 lt!160220) (index!15013 lt!160220) (index!15013 lt!160220) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!336250 () Bool)

(assert (=> b!336250 (= e!206411 (Found!3208 (index!15013 lt!160220)))))

(declare-fun b!336251 () Bool)

(declare-fun c!52222 () Bool)

(assert (=> b!336251 (= c!52222 (= lt!160221 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!336251 (= e!206411 e!206410)))

(declare-fun b!336252 () Bool)

(assert (=> b!336252 (= e!206410 (MissingZero!3208 (index!15013 lt!160220)))))

(assert (= (and d!70579 c!52221) b!336248))

(assert (= (and d!70579 (not c!52221)) b!336247))

(assert (= (and b!336247 c!52223) b!336250))

(assert (= (and b!336247 (not c!52223)) b!336251))

(assert (= (and b!336251 c!52222) b!336252))

(assert (= (and b!336251 (not c!52222)) b!336249))

(declare-fun m!340095 () Bool)

(assert (=> b!336247 m!340095))

(declare-fun m!340097 () Bool)

(assert (=> d!70579 m!340097))

(assert (=> d!70579 m!340097))

(declare-fun m!340099 () Bool)

(assert (=> d!70579 m!340099))

(declare-fun m!340101 () Bool)

(assert (=> d!70579 m!340101))

(declare-fun m!340103 () Bool)

(assert (=> d!70579 m!340103))

(declare-fun m!340105 () Bool)

(assert (=> d!70579 m!340105))

(assert (=> d!70579 m!339987))

(declare-fun m!340107 () Bool)

(assert (=> b!336249 m!340107))

(assert (=> b!336094 d!70579))

(declare-fun mapIsEmpty!11844 () Bool)

(declare-fun mapRes!11844 () Bool)

(assert (=> mapIsEmpty!11844 mapRes!11844))

(declare-fun mapNonEmpty!11844 () Bool)

(declare-fun tp!24534 () Bool)

(declare-fun e!206418 () Bool)

(assert (=> mapNonEmpty!11844 (= mapRes!11844 (and tp!24534 e!206418))))

(declare-fun mapValue!11844 () ValueCell!3135)

(declare-fun mapRest!11844 () (Array (_ BitVec 32) ValueCell!3135))

(declare-fun mapKey!11844 () (_ BitVec 32))

(assert (=> mapNonEmpty!11844 (= mapRest!11838 (store mapRest!11844 mapKey!11844 mapValue!11844))))

(declare-fun b!336260 () Bool)

(declare-fun e!206417 () Bool)

(assert (=> b!336260 (= e!206417 tp_is_empty!6957)))

(declare-fun b!336259 () Bool)

(assert (=> b!336259 (= e!206418 tp_is_empty!6957)))

(declare-fun condMapEmpty!11844 () Bool)

(declare-fun mapDefault!11844 () ValueCell!3135)

(assert (=> mapNonEmpty!11838 (= condMapEmpty!11844 (= mapRest!11838 ((as const (Array (_ BitVec 32) ValueCell!3135)) mapDefault!11844)))))

(assert (=> mapNonEmpty!11838 (= tp!24524 (and e!206417 mapRes!11844))))

(assert (= (and mapNonEmpty!11838 condMapEmpty!11844) mapIsEmpty!11844))

(assert (= (and mapNonEmpty!11838 (not condMapEmpty!11844)) mapNonEmpty!11844))

(assert (= (and mapNonEmpty!11844 ((_ is ValueCellFull!3135) mapValue!11844)) b!336259))

(assert (= (and mapNonEmpty!11838 ((_ is ValueCellFull!3135) mapDefault!11844)) b!336260))

(declare-fun m!340109 () Bool)

(assert (=> mapNonEmpty!11844 m!340109))

(declare-fun b_lambda!8443 () Bool)

(assert (= b_lambda!8441 (or (and start!33814 b_free!7005) b_lambda!8443)))

(check-sat (not b!336197) (not b!336234) (not b!336226) b_and!14211 (not b!336191) (not b!336211) (not b!336195) (not mapNonEmpty!11844) (not d!70573) (not b!336148) (not b!336146) (not b!336136) (not b!336202) (not bm!26369) (not b!336137) (not d!70571) (not b!336224) (not b_next!7005) (not bm!26345) (not b!336249) (not bm!26366) (not b_lambda!8443) (not bm!26363) (not bm!26361) (not d!70579) (not b!336227) tp_is_empty!6957 (not b!336198) (not b!336204) (not bm!26364) (not b!336203))
(check-sat b_and!14211 (not b_next!7005))
