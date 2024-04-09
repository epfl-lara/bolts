; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17394 () Bool)

(assert start!17394)

(declare-fun b!174439 () Bool)

(declare-fun b_free!4317 () Bool)

(declare-fun b_next!4317 () Bool)

(assert (=> b!174439 (= b_free!4317 (not b_next!4317))))

(declare-fun tp!15619 () Bool)

(declare-fun b_and!10801 () Bool)

(assert (=> b!174439 (= tp!15619 b_and!10801)))

(declare-fun b!174436 () Bool)

(declare-fun e!115201 () Bool)

(declare-fun e!115202 () Bool)

(declare-fun mapRes!6965 () Bool)

(assert (=> b!174436 (= e!115201 (and e!115202 mapRes!6965))))

(declare-fun condMapEmpty!6965 () Bool)

(declare-datatypes ((V!5099 0))(
  ( (V!5100 (val!2089 Int)) )
))
(declare-datatypes ((ValueCell!1701 0))(
  ( (ValueCellFull!1701 (v!3956 V!5099)) (EmptyCell!1701) )
))
(declare-datatypes ((array!7310 0))(
  ( (array!7311 (arr!3472 (Array (_ BitVec 32) (_ BitVec 64))) (size!3772 (_ BitVec 32))) )
))
(declare-datatypes ((array!7312 0))(
  ( (array!7313 (arr!3473 (Array (_ BitVec 32) ValueCell!1701)) (size!3773 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2310 0))(
  ( (LongMapFixedSize!2311 (defaultEntry!3605 Int) (mask!8482 (_ BitVec 32)) (extraKeys!3342 (_ BitVec 32)) (zeroValue!3446 V!5099) (minValue!3446 V!5099) (_size!1204 (_ BitVec 32)) (_keys!5448 array!7310) (_values!3588 array!7312) (_vacant!1204 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2310)

(declare-fun mapDefault!6965 () ValueCell!1701)

(assert (=> b!174436 (= condMapEmpty!6965 (= (arr!3473 (_values!3588 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1701)) mapDefault!6965)))))

(declare-fun b!174437 () Bool)

(declare-fun res!82752 () Bool)

(declare-fun e!115203 () Bool)

(assert (=> b!174437 (=> (not res!82752) (not e!115203))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!174437 (= res!82752 (not (= key!828 (bvneg key!828))))))

(declare-fun b!174438 () Bool)

(declare-fun res!82754 () Bool)

(assert (=> b!174438 (=> (not res!82754) (not e!115203))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!554 0))(
  ( (MissingZero!554 (index!4384 (_ BitVec 32))) (Found!554 (index!4385 (_ BitVec 32))) (Intermediate!554 (undefined!1366 Bool) (index!4386 (_ BitVec 32)) (x!19224 (_ BitVec 32))) (Undefined!554) (MissingVacant!554 (index!4387 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7310 (_ BitVec 32)) SeekEntryResult!554)

(assert (=> b!174438 (= res!82754 ((_ is Undefined!554) (seekEntryOrOpen!0 key!828 (_keys!5448 thiss!1248) (mask!8482 thiss!1248))))))

(declare-fun tp_is_empty!4089 () Bool)

(declare-fun e!115200 () Bool)

(declare-fun array_inv!2213 (array!7310) Bool)

(declare-fun array_inv!2214 (array!7312) Bool)

(assert (=> b!174439 (= e!115200 (and tp!15619 tp_is_empty!4089 (array_inv!2213 (_keys!5448 thiss!1248)) (array_inv!2214 (_values!3588 thiss!1248)) e!115201))))

(declare-fun b!174440 () Bool)

(declare-fun e!115204 () Bool)

(assert (=> b!174440 (= e!115204 tp_is_empty!4089)))

(declare-fun res!82755 () Bool)

(assert (=> start!17394 (=> (not res!82755) (not e!115203))))

(declare-fun valid!968 (LongMapFixedSize!2310) Bool)

(assert (=> start!17394 (= res!82755 (valid!968 thiss!1248))))

(assert (=> start!17394 e!115203))

(assert (=> start!17394 e!115200))

(assert (=> start!17394 true))

(declare-fun b!174441 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!174441 (= e!115203 (not (validMask!0 (mask!8482 thiss!1248))))))

(declare-fun mapNonEmpty!6965 () Bool)

(declare-fun tp!15620 () Bool)

(assert (=> mapNonEmpty!6965 (= mapRes!6965 (and tp!15620 e!115204))))

(declare-fun mapRest!6965 () (Array (_ BitVec 32) ValueCell!1701))

(declare-fun mapValue!6965 () ValueCell!1701)

(declare-fun mapKey!6965 () (_ BitVec 32))

(assert (=> mapNonEmpty!6965 (= (arr!3473 (_values!3588 thiss!1248)) (store mapRest!6965 mapKey!6965 mapValue!6965))))

(declare-fun b!174442 () Bool)

(assert (=> b!174442 (= e!115202 tp_is_empty!4089)))

(declare-fun mapIsEmpty!6965 () Bool)

(assert (=> mapIsEmpty!6965 mapRes!6965))

(declare-fun b!174443 () Bool)

(declare-fun res!82753 () Bool)

(assert (=> b!174443 (=> (not res!82753) (not e!115203))))

(declare-datatypes ((tuple2!3242 0))(
  ( (tuple2!3243 (_1!1631 (_ BitVec 64)) (_2!1631 V!5099)) )
))
(declare-datatypes ((List!2230 0))(
  ( (Nil!2227) (Cons!2226 (h!2843 tuple2!3242) (t!7050 List!2230)) )
))
(declare-datatypes ((ListLongMap!2183 0))(
  ( (ListLongMap!2184 (toList!1107 List!2230)) )
))
(declare-fun contains!1157 (ListLongMap!2183 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!754 (array!7310 array!7312 (_ BitVec 32) (_ BitVec 32) V!5099 V!5099 (_ BitVec 32) Int) ListLongMap!2183)

(assert (=> b!174443 (= res!82753 (contains!1157 (getCurrentListMap!754 (_keys!5448 thiss!1248) (_values!3588 thiss!1248) (mask!8482 thiss!1248) (extraKeys!3342 thiss!1248) (zeroValue!3446 thiss!1248) (minValue!3446 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3605 thiss!1248)) key!828))))

(assert (= (and start!17394 res!82755) b!174437))

(assert (= (and b!174437 res!82752) b!174438))

(assert (= (and b!174438 res!82754) b!174443))

(assert (= (and b!174443 res!82753) b!174441))

(assert (= (and b!174436 condMapEmpty!6965) mapIsEmpty!6965))

(assert (= (and b!174436 (not condMapEmpty!6965)) mapNonEmpty!6965))

(assert (= (and mapNonEmpty!6965 ((_ is ValueCellFull!1701) mapValue!6965)) b!174440))

(assert (= (and b!174436 ((_ is ValueCellFull!1701) mapDefault!6965)) b!174442))

(assert (= b!174439 b!174436))

(assert (= start!17394 b!174439))

(declare-fun m!203507 () Bool)

(assert (=> b!174443 m!203507))

(assert (=> b!174443 m!203507))

(declare-fun m!203509 () Bool)

(assert (=> b!174443 m!203509))

(declare-fun m!203511 () Bool)

(assert (=> start!17394 m!203511))

(declare-fun m!203513 () Bool)

(assert (=> b!174441 m!203513))

(declare-fun m!203515 () Bool)

(assert (=> mapNonEmpty!6965 m!203515))

(declare-fun m!203517 () Bool)

(assert (=> b!174438 m!203517))

(declare-fun m!203519 () Bool)

(assert (=> b!174439 m!203519))

(declare-fun m!203521 () Bool)

(assert (=> b!174439 m!203521))

(check-sat tp_is_empty!4089 (not mapNonEmpty!6965) (not b!174439) (not b!174438) (not b!174443) (not b_next!4317) (not start!17394) (not b!174441) b_and!10801)
(check-sat b_and!10801 (not b_next!4317))
(get-model)

(declare-fun d!53193 () Bool)

(assert (=> d!53193 (= (array_inv!2213 (_keys!5448 thiss!1248)) (bvsge (size!3772 (_keys!5448 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!174439 d!53193))

(declare-fun d!53195 () Bool)

(assert (=> d!53195 (= (array_inv!2214 (_values!3588 thiss!1248)) (bvsge (size!3773 (_values!3588 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!174439 d!53195))

(declare-fun d!53197 () Bool)

(declare-fun res!82774 () Bool)

(declare-fun e!115226 () Bool)

(assert (=> d!53197 (=> (not res!82774) (not e!115226))))

(declare-fun simpleValid!144 (LongMapFixedSize!2310) Bool)

(assert (=> d!53197 (= res!82774 (simpleValid!144 thiss!1248))))

(assert (=> d!53197 (= (valid!968 thiss!1248) e!115226)))

(declare-fun b!174474 () Bool)

(declare-fun res!82775 () Bool)

(assert (=> b!174474 (=> (not res!82775) (not e!115226))))

(declare-fun arrayCountValidKeys!0 (array!7310 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!174474 (= res!82775 (= (arrayCountValidKeys!0 (_keys!5448 thiss!1248) #b00000000000000000000000000000000 (size!3772 (_keys!5448 thiss!1248))) (_size!1204 thiss!1248)))))

(declare-fun b!174475 () Bool)

(declare-fun res!82776 () Bool)

(assert (=> b!174475 (=> (not res!82776) (not e!115226))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7310 (_ BitVec 32)) Bool)

(assert (=> b!174475 (= res!82776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5448 thiss!1248) (mask!8482 thiss!1248)))))

(declare-fun b!174476 () Bool)

(declare-datatypes ((List!2232 0))(
  ( (Nil!2229) (Cons!2228 (h!2845 (_ BitVec 64)) (t!7054 List!2232)) )
))
(declare-fun arrayNoDuplicates!0 (array!7310 (_ BitVec 32) List!2232) Bool)

(assert (=> b!174476 (= e!115226 (arrayNoDuplicates!0 (_keys!5448 thiss!1248) #b00000000000000000000000000000000 Nil!2229))))

(assert (= (and d!53197 res!82774) b!174474))

(assert (= (and b!174474 res!82775) b!174475))

(assert (= (and b!174475 res!82776) b!174476))

(declare-fun m!203539 () Bool)

(assert (=> d!53197 m!203539))

(declare-fun m!203541 () Bool)

(assert (=> b!174474 m!203541))

(declare-fun m!203543 () Bool)

(assert (=> b!174475 m!203543))

(declare-fun m!203545 () Bool)

(assert (=> b!174476 m!203545))

(assert (=> start!17394 d!53197))

(declare-fun d!53199 () Bool)

(declare-fun e!115232 () Bool)

(assert (=> d!53199 e!115232))

(declare-fun res!82779 () Bool)

(assert (=> d!53199 (=> res!82779 e!115232)))

(declare-fun lt!86350 () Bool)

(assert (=> d!53199 (= res!82779 (not lt!86350))))

(declare-fun lt!86351 () Bool)

(assert (=> d!53199 (= lt!86350 lt!86351)))

(declare-datatypes ((Unit!5361 0))(
  ( (Unit!5362) )
))
(declare-fun lt!86349 () Unit!5361)

(declare-fun e!115231 () Unit!5361)

(assert (=> d!53199 (= lt!86349 e!115231)))

(declare-fun c!31211 () Bool)

(assert (=> d!53199 (= c!31211 lt!86351)))

(declare-fun containsKey!189 (List!2230 (_ BitVec 64)) Bool)

(assert (=> d!53199 (= lt!86351 (containsKey!189 (toList!1107 (getCurrentListMap!754 (_keys!5448 thiss!1248) (_values!3588 thiss!1248) (mask!8482 thiss!1248) (extraKeys!3342 thiss!1248) (zeroValue!3446 thiss!1248) (minValue!3446 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3605 thiss!1248))) key!828))))

(assert (=> d!53199 (= (contains!1157 (getCurrentListMap!754 (_keys!5448 thiss!1248) (_values!3588 thiss!1248) (mask!8482 thiss!1248) (extraKeys!3342 thiss!1248) (zeroValue!3446 thiss!1248) (minValue!3446 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3605 thiss!1248)) key!828) lt!86350)))

(declare-fun b!174483 () Bool)

(declare-fun lt!86348 () Unit!5361)

(assert (=> b!174483 (= e!115231 lt!86348)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!138 (List!2230 (_ BitVec 64)) Unit!5361)

(assert (=> b!174483 (= lt!86348 (lemmaContainsKeyImpliesGetValueByKeyDefined!138 (toList!1107 (getCurrentListMap!754 (_keys!5448 thiss!1248) (_values!3588 thiss!1248) (mask!8482 thiss!1248) (extraKeys!3342 thiss!1248) (zeroValue!3446 thiss!1248) (minValue!3446 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3605 thiss!1248))) key!828))))

(declare-datatypes ((Option!191 0))(
  ( (Some!190 (v!3958 V!5099)) (None!189) )
))
(declare-fun isDefined!139 (Option!191) Bool)

(declare-fun getValueByKey!185 (List!2230 (_ BitVec 64)) Option!191)

(assert (=> b!174483 (isDefined!139 (getValueByKey!185 (toList!1107 (getCurrentListMap!754 (_keys!5448 thiss!1248) (_values!3588 thiss!1248) (mask!8482 thiss!1248) (extraKeys!3342 thiss!1248) (zeroValue!3446 thiss!1248) (minValue!3446 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3605 thiss!1248))) key!828))))

(declare-fun b!174484 () Bool)

(declare-fun Unit!5363 () Unit!5361)

(assert (=> b!174484 (= e!115231 Unit!5363)))

(declare-fun b!174485 () Bool)

(assert (=> b!174485 (= e!115232 (isDefined!139 (getValueByKey!185 (toList!1107 (getCurrentListMap!754 (_keys!5448 thiss!1248) (_values!3588 thiss!1248) (mask!8482 thiss!1248) (extraKeys!3342 thiss!1248) (zeroValue!3446 thiss!1248) (minValue!3446 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3605 thiss!1248))) key!828)))))

(assert (= (and d!53199 c!31211) b!174483))

(assert (= (and d!53199 (not c!31211)) b!174484))

(assert (= (and d!53199 (not res!82779)) b!174485))

(declare-fun m!203547 () Bool)

(assert (=> d!53199 m!203547))

(declare-fun m!203549 () Bool)

(assert (=> b!174483 m!203549))

(declare-fun m!203551 () Bool)

(assert (=> b!174483 m!203551))

(assert (=> b!174483 m!203551))

(declare-fun m!203553 () Bool)

(assert (=> b!174483 m!203553))

(assert (=> b!174485 m!203551))

(assert (=> b!174485 m!203551))

(assert (=> b!174485 m!203553))

(assert (=> b!174443 d!53199))

(declare-fun b!174528 () Bool)

(declare-fun e!115262 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!174528 (= e!115262 (validKeyInArray!0 (select (arr!3472 (_keys!5448 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!174529 () Bool)

(declare-fun e!115264 () Bool)

(declare-fun call!17686 () Bool)

(assert (=> b!174529 (= e!115264 (not call!17686))))

(declare-fun b!174530 () Bool)

(declare-fun e!115260 () ListLongMap!2183)

(declare-fun call!17690 () ListLongMap!2183)

(assert (=> b!174530 (= e!115260 call!17690)))

(declare-fun bm!17681 () Bool)

(declare-fun call!17685 () ListLongMap!2183)

(declare-fun getCurrentListMapNoExtraKeys!161 (array!7310 array!7312 (_ BitVec 32) (_ BitVec 32) V!5099 V!5099 (_ BitVec 32) Int) ListLongMap!2183)

(assert (=> bm!17681 (= call!17685 (getCurrentListMapNoExtraKeys!161 (_keys!5448 thiss!1248) (_values!3588 thiss!1248) (mask!8482 thiss!1248) (extraKeys!3342 thiss!1248) (zeroValue!3446 thiss!1248) (minValue!3446 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3605 thiss!1248)))))

(declare-fun b!174531 () Bool)

(declare-fun e!115268 () Bool)

(declare-fun call!17688 () Bool)

(assert (=> b!174531 (= e!115268 (not call!17688))))

(declare-fun call!17689 () ListLongMap!2183)

(declare-fun c!31229 () Bool)

(declare-fun c!31226 () Bool)

(declare-fun call!17687 () ListLongMap!2183)

(declare-fun bm!17682 () Bool)

(declare-fun call!17684 () ListLongMap!2183)

(declare-fun +!243 (ListLongMap!2183 tuple2!3242) ListLongMap!2183)

(assert (=> bm!17682 (= call!17689 (+!243 (ite c!31229 call!17685 (ite c!31226 call!17687 call!17684)) (ite (or c!31229 c!31226) (tuple2!3243 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3446 thiss!1248)) (tuple2!3243 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3446 thiss!1248)))))))

(declare-fun b!174532 () Bool)

(declare-fun e!115265 () Unit!5361)

(declare-fun Unit!5364 () Unit!5361)

(assert (=> b!174532 (= e!115265 Unit!5364)))

(declare-fun bm!17683 () Bool)

(assert (=> bm!17683 (= call!17687 call!17685)))

(declare-fun b!174533 () Bool)

(declare-fun res!82800 () Bool)

(declare-fun e!115271 () Bool)

(assert (=> b!174533 (=> (not res!82800) (not e!115271))))

(assert (=> b!174533 (= res!82800 e!115264)))

(declare-fun c!31225 () Bool)

(assert (=> b!174533 (= c!31225 (not (= (bvand (extraKeys!3342 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!17684 () Bool)

(assert (=> bm!17684 (= call!17684 call!17687)))

(declare-fun b!174534 () Bool)

(declare-fun e!115270 () ListLongMap!2183)

(declare-fun e!115259 () ListLongMap!2183)

(assert (=> b!174534 (= e!115270 e!115259)))

(assert (=> b!174534 (= c!31226 (and (not (= (bvand (extraKeys!3342 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3342 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!174535 () Bool)

(declare-fun e!115266 () Bool)

(assert (=> b!174535 (= e!115264 e!115266)))

(declare-fun res!82803 () Bool)

(assert (=> b!174535 (= res!82803 call!17686)))

(assert (=> b!174535 (=> (not res!82803) (not e!115266))))

(declare-fun b!174536 () Bool)

(declare-fun lt!86413 () Unit!5361)

(assert (=> b!174536 (= e!115265 lt!86413)))

(declare-fun lt!86415 () ListLongMap!2183)

(assert (=> b!174536 (= lt!86415 (getCurrentListMapNoExtraKeys!161 (_keys!5448 thiss!1248) (_values!3588 thiss!1248) (mask!8482 thiss!1248) (extraKeys!3342 thiss!1248) (zeroValue!3446 thiss!1248) (minValue!3446 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3605 thiss!1248)))))

(declare-fun lt!86414 () (_ BitVec 64))

(assert (=> b!174536 (= lt!86414 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86398 () (_ BitVec 64))

(assert (=> b!174536 (= lt!86398 (select (arr!3472 (_keys!5448 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86409 () Unit!5361)

(declare-fun addStillContains!107 (ListLongMap!2183 (_ BitVec 64) V!5099 (_ BitVec 64)) Unit!5361)

(assert (=> b!174536 (= lt!86409 (addStillContains!107 lt!86415 lt!86414 (zeroValue!3446 thiss!1248) lt!86398))))

(assert (=> b!174536 (contains!1157 (+!243 lt!86415 (tuple2!3243 lt!86414 (zeroValue!3446 thiss!1248))) lt!86398)))

(declare-fun lt!86400 () Unit!5361)

(assert (=> b!174536 (= lt!86400 lt!86409)))

(declare-fun lt!86408 () ListLongMap!2183)

(assert (=> b!174536 (= lt!86408 (getCurrentListMapNoExtraKeys!161 (_keys!5448 thiss!1248) (_values!3588 thiss!1248) (mask!8482 thiss!1248) (extraKeys!3342 thiss!1248) (zeroValue!3446 thiss!1248) (minValue!3446 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3605 thiss!1248)))))

(declare-fun lt!86405 () (_ BitVec 64))

(assert (=> b!174536 (= lt!86405 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86410 () (_ BitVec 64))

(assert (=> b!174536 (= lt!86410 (select (arr!3472 (_keys!5448 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86412 () Unit!5361)

(declare-fun addApplyDifferent!107 (ListLongMap!2183 (_ BitVec 64) V!5099 (_ BitVec 64)) Unit!5361)

(assert (=> b!174536 (= lt!86412 (addApplyDifferent!107 lt!86408 lt!86405 (minValue!3446 thiss!1248) lt!86410))))

(declare-fun apply!131 (ListLongMap!2183 (_ BitVec 64)) V!5099)

(assert (=> b!174536 (= (apply!131 (+!243 lt!86408 (tuple2!3243 lt!86405 (minValue!3446 thiss!1248))) lt!86410) (apply!131 lt!86408 lt!86410))))

(declare-fun lt!86399 () Unit!5361)

(assert (=> b!174536 (= lt!86399 lt!86412)))

(declare-fun lt!86401 () ListLongMap!2183)

(assert (=> b!174536 (= lt!86401 (getCurrentListMapNoExtraKeys!161 (_keys!5448 thiss!1248) (_values!3588 thiss!1248) (mask!8482 thiss!1248) (extraKeys!3342 thiss!1248) (zeroValue!3446 thiss!1248) (minValue!3446 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3605 thiss!1248)))))

(declare-fun lt!86406 () (_ BitVec 64))

(assert (=> b!174536 (= lt!86406 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86403 () (_ BitVec 64))

(assert (=> b!174536 (= lt!86403 (select (arr!3472 (_keys!5448 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86417 () Unit!5361)

(assert (=> b!174536 (= lt!86417 (addApplyDifferent!107 lt!86401 lt!86406 (zeroValue!3446 thiss!1248) lt!86403))))

(assert (=> b!174536 (= (apply!131 (+!243 lt!86401 (tuple2!3243 lt!86406 (zeroValue!3446 thiss!1248))) lt!86403) (apply!131 lt!86401 lt!86403))))

(declare-fun lt!86396 () Unit!5361)

(assert (=> b!174536 (= lt!86396 lt!86417)))

(declare-fun lt!86402 () ListLongMap!2183)

(assert (=> b!174536 (= lt!86402 (getCurrentListMapNoExtraKeys!161 (_keys!5448 thiss!1248) (_values!3588 thiss!1248) (mask!8482 thiss!1248) (extraKeys!3342 thiss!1248) (zeroValue!3446 thiss!1248) (minValue!3446 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3605 thiss!1248)))))

(declare-fun lt!86411 () (_ BitVec 64))

(assert (=> b!174536 (= lt!86411 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86397 () (_ BitVec 64))

(assert (=> b!174536 (= lt!86397 (select (arr!3472 (_keys!5448 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!174536 (= lt!86413 (addApplyDifferent!107 lt!86402 lt!86411 (minValue!3446 thiss!1248) lt!86397))))

(assert (=> b!174536 (= (apply!131 (+!243 lt!86402 (tuple2!3243 lt!86411 (minValue!3446 thiss!1248))) lt!86397) (apply!131 lt!86402 lt!86397))))

(declare-fun b!174537 () Bool)

(declare-fun e!115263 () Bool)

(assert (=> b!174537 (= e!115263 (validKeyInArray!0 (select (arr!3472 (_keys!5448 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17685 () Bool)

(assert (=> bm!17685 (= call!17690 call!17689)))

(declare-fun bm!17686 () Bool)

(declare-fun lt!86404 () ListLongMap!2183)

(assert (=> bm!17686 (= call!17688 (contains!1157 lt!86404 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!174538 () Bool)

(declare-fun e!115261 () Bool)

(assert (=> b!174538 (= e!115261 (= (apply!131 lt!86404 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3446 thiss!1248)))))

(declare-fun b!174539 () Bool)

(declare-fun e!115267 () Bool)

(declare-fun get!1975 (ValueCell!1701 V!5099) V!5099)

(declare-fun dynLambda!469 (Int (_ BitVec 64)) V!5099)

(assert (=> b!174539 (= e!115267 (= (apply!131 lt!86404 (select (arr!3472 (_keys!5448 thiss!1248)) #b00000000000000000000000000000000)) (get!1975 (select (arr!3473 (_values!3588 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!469 (defaultEntry!3605 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!174539 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3773 (_values!3588 thiss!1248))))))

(assert (=> b!174539 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3772 (_keys!5448 thiss!1248))))))

(declare-fun b!174540 () Bool)

(assert (=> b!174540 (= e!115260 call!17684)))

(declare-fun d!53201 () Bool)

(assert (=> d!53201 e!115271))

(declare-fun res!82799 () Bool)

(assert (=> d!53201 (=> (not res!82799) (not e!115271))))

(assert (=> d!53201 (= res!82799 (or (bvsge #b00000000000000000000000000000000 (size!3772 (_keys!5448 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3772 (_keys!5448 thiss!1248))))))))

(declare-fun lt!86407 () ListLongMap!2183)

(assert (=> d!53201 (= lt!86404 lt!86407)))

(declare-fun lt!86416 () Unit!5361)

(assert (=> d!53201 (= lt!86416 e!115265)))

(declare-fun c!31227 () Bool)

(assert (=> d!53201 (= c!31227 e!115262)))

(declare-fun res!82801 () Bool)

(assert (=> d!53201 (=> (not res!82801) (not e!115262))))

(assert (=> d!53201 (= res!82801 (bvslt #b00000000000000000000000000000000 (size!3772 (_keys!5448 thiss!1248))))))

(assert (=> d!53201 (= lt!86407 e!115270)))

(assert (=> d!53201 (= c!31229 (and (not (= (bvand (extraKeys!3342 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3342 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!53201 (validMask!0 (mask!8482 thiss!1248))))

(assert (=> d!53201 (= (getCurrentListMap!754 (_keys!5448 thiss!1248) (_values!3588 thiss!1248) (mask!8482 thiss!1248) (extraKeys!3342 thiss!1248) (zeroValue!3446 thiss!1248) (minValue!3446 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3605 thiss!1248)) lt!86404)))

(declare-fun b!174541 () Bool)

(assert (=> b!174541 (= e!115259 call!17690)))

(declare-fun b!174542 () Bool)

(assert (=> b!174542 (= e!115270 (+!243 call!17689 (tuple2!3243 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3446 thiss!1248))))))

(declare-fun b!174543 () Bool)

(declare-fun e!115269 () Bool)

(assert (=> b!174543 (= e!115269 e!115267)))

(declare-fun res!82802 () Bool)

(assert (=> b!174543 (=> (not res!82802) (not e!115267))))

(assert (=> b!174543 (= res!82802 (contains!1157 lt!86404 (select (arr!3472 (_keys!5448 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!174543 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3772 (_keys!5448 thiss!1248))))))

(declare-fun bm!17687 () Bool)

(assert (=> bm!17687 (= call!17686 (contains!1157 lt!86404 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!174544 () Bool)

(assert (=> b!174544 (= e!115266 (= (apply!131 lt!86404 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3446 thiss!1248)))))

(declare-fun b!174545 () Bool)

(assert (=> b!174545 (= e!115268 e!115261)))

(declare-fun res!82805 () Bool)

(assert (=> b!174545 (= res!82805 call!17688)))

(assert (=> b!174545 (=> (not res!82805) (not e!115261))))

(declare-fun b!174546 () Bool)

(assert (=> b!174546 (= e!115271 e!115268)))

(declare-fun c!31228 () Bool)

(assert (=> b!174546 (= c!31228 (not (= (bvand (extraKeys!3342 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!174547 () Bool)

(declare-fun res!82798 () Bool)

(assert (=> b!174547 (=> (not res!82798) (not e!115271))))

(assert (=> b!174547 (= res!82798 e!115269)))

(declare-fun res!82804 () Bool)

(assert (=> b!174547 (=> res!82804 e!115269)))

(assert (=> b!174547 (= res!82804 (not e!115263))))

(declare-fun res!82806 () Bool)

(assert (=> b!174547 (=> (not res!82806) (not e!115263))))

(assert (=> b!174547 (= res!82806 (bvslt #b00000000000000000000000000000000 (size!3772 (_keys!5448 thiss!1248))))))

(declare-fun b!174548 () Bool)

(declare-fun c!31224 () Bool)

(assert (=> b!174548 (= c!31224 (and (not (= (bvand (extraKeys!3342 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3342 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!174548 (= e!115259 e!115260)))

(assert (= (and d!53201 c!31229) b!174542))

(assert (= (and d!53201 (not c!31229)) b!174534))

(assert (= (and b!174534 c!31226) b!174541))

(assert (= (and b!174534 (not c!31226)) b!174548))

(assert (= (and b!174548 c!31224) b!174530))

(assert (= (and b!174548 (not c!31224)) b!174540))

(assert (= (or b!174530 b!174540) bm!17684))

(assert (= (or b!174541 bm!17684) bm!17683))

(assert (= (or b!174541 b!174530) bm!17685))

(assert (= (or b!174542 bm!17683) bm!17681))

(assert (= (or b!174542 bm!17685) bm!17682))

(assert (= (and d!53201 res!82801) b!174528))

(assert (= (and d!53201 c!31227) b!174536))

(assert (= (and d!53201 (not c!31227)) b!174532))

(assert (= (and d!53201 res!82799) b!174547))

(assert (= (and b!174547 res!82806) b!174537))

(assert (= (and b!174547 (not res!82804)) b!174543))

(assert (= (and b!174543 res!82802) b!174539))

(assert (= (and b!174547 res!82798) b!174533))

(assert (= (and b!174533 c!31225) b!174535))

(assert (= (and b!174533 (not c!31225)) b!174529))

(assert (= (and b!174535 res!82803) b!174544))

(assert (= (or b!174535 b!174529) bm!17687))

(assert (= (and b!174533 res!82800) b!174546))

(assert (= (and b!174546 c!31228) b!174545))

(assert (= (and b!174546 (not c!31228)) b!174531))

(assert (= (and b!174545 res!82805) b!174538))

(assert (= (or b!174545 b!174531) bm!17686))

(declare-fun b_lambda!7013 () Bool)

(assert (=> (not b_lambda!7013) (not b!174539)))

(declare-fun t!7053 () Bool)

(declare-fun tb!2781 () Bool)

(assert (=> (and b!174439 (= (defaultEntry!3605 thiss!1248) (defaultEntry!3605 thiss!1248)) t!7053) tb!2781))

(declare-fun result!4601 () Bool)

(assert (=> tb!2781 (= result!4601 tp_is_empty!4089)))

(assert (=> b!174539 t!7053))

(declare-fun b_and!10805 () Bool)

(assert (= b_and!10801 (and (=> t!7053 result!4601) b_and!10805)))

(declare-fun m!203555 () Bool)

(assert (=> b!174543 m!203555))

(assert (=> b!174543 m!203555))

(declare-fun m!203557 () Bool)

(assert (=> b!174543 m!203557))

(assert (=> b!174537 m!203555))

(assert (=> b!174537 m!203555))

(declare-fun m!203559 () Bool)

(assert (=> b!174537 m!203559))

(declare-fun m!203561 () Bool)

(assert (=> bm!17681 m!203561))

(declare-fun m!203563 () Bool)

(assert (=> b!174544 m!203563))

(declare-fun m!203565 () Bool)

(assert (=> bm!17687 m!203565))

(declare-fun m!203567 () Bool)

(assert (=> b!174539 m!203567))

(assert (=> b!174539 m!203567))

(declare-fun m!203569 () Bool)

(assert (=> b!174539 m!203569))

(declare-fun m!203571 () Bool)

(assert (=> b!174539 m!203571))

(assert (=> b!174539 m!203555))

(assert (=> b!174539 m!203555))

(declare-fun m!203573 () Bool)

(assert (=> b!174539 m!203573))

(assert (=> b!174539 m!203569))

(assert (=> d!53201 m!203513))

(assert (=> b!174528 m!203555))

(assert (=> b!174528 m!203555))

(assert (=> b!174528 m!203559))

(declare-fun m!203575 () Bool)

(assert (=> bm!17682 m!203575))

(declare-fun m!203577 () Bool)

(assert (=> bm!17686 m!203577))

(declare-fun m!203579 () Bool)

(assert (=> b!174536 m!203579))

(declare-fun m!203581 () Bool)

(assert (=> b!174536 m!203581))

(declare-fun m!203583 () Bool)

(assert (=> b!174536 m!203583))

(assert (=> b!174536 m!203581))

(assert (=> b!174536 m!203561))

(declare-fun m!203585 () Bool)

(assert (=> b!174536 m!203585))

(declare-fun m!203587 () Bool)

(assert (=> b!174536 m!203587))

(declare-fun m!203589 () Bool)

(assert (=> b!174536 m!203589))

(declare-fun m!203591 () Bool)

(assert (=> b!174536 m!203591))

(declare-fun m!203593 () Bool)

(assert (=> b!174536 m!203593))

(assert (=> b!174536 m!203555))

(declare-fun m!203595 () Bool)

(assert (=> b!174536 m!203595))

(declare-fun m!203597 () Bool)

(assert (=> b!174536 m!203597))

(declare-fun m!203599 () Bool)

(assert (=> b!174536 m!203599))

(assert (=> b!174536 m!203591))

(declare-fun m!203601 () Bool)

(assert (=> b!174536 m!203601))

(declare-fun m!203603 () Bool)

(assert (=> b!174536 m!203603))

(declare-fun m!203605 () Bool)

(assert (=> b!174536 m!203605))

(assert (=> b!174536 m!203585))

(declare-fun m!203607 () Bool)

(assert (=> b!174536 m!203607))

(assert (=> b!174536 m!203603))

(declare-fun m!203609 () Bool)

(assert (=> b!174542 m!203609))

(declare-fun m!203611 () Bool)

(assert (=> b!174538 m!203611))

(assert (=> b!174443 d!53201))

(declare-fun d!53203 () Bool)

(assert (=> d!53203 (= (validMask!0 (mask!8482 thiss!1248)) (and (or (= (mask!8482 thiss!1248) #b00000000000000000000000000000111) (= (mask!8482 thiss!1248) #b00000000000000000000000000001111) (= (mask!8482 thiss!1248) #b00000000000000000000000000011111) (= (mask!8482 thiss!1248) #b00000000000000000000000000111111) (= (mask!8482 thiss!1248) #b00000000000000000000000001111111) (= (mask!8482 thiss!1248) #b00000000000000000000000011111111) (= (mask!8482 thiss!1248) #b00000000000000000000000111111111) (= (mask!8482 thiss!1248) #b00000000000000000000001111111111) (= (mask!8482 thiss!1248) #b00000000000000000000011111111111) (= (mask!8482 thiss!1248) #b00000000000000000000111111111111) (= (mask!8482 thiss!1248) #b00000000000000000001111111111111) (= (mask!8482 thiss!1248) #b00000000000000000011111111111111) (= (mask!8482 thiss!1248) #b00000000000000000111111111111111) (= (mask!8482 thiss!1248) #b00000000000000001111111111111111) (= (mask!8482 thiss!1248) #b00000000000000011111111111111111) (= (mask!8482 thiss!1248) #b00000000000000111111111111111111) (= (mask!8482 thiss!1248) #b00000000000001111111111111111111) (= (mask!8482 thiss!1248) #b00000000000011111111111111111111) (= (mask!8482 thiss!1248) #b00000000000111111111111111111111) (= (mask!8482 thiss!1248) #b00000000001111111111111111111111) (= (mask!8482 thiss!1248) #b00000000011111111111111111111111) (= (mask!8482 thiss!1248) #b00000000111111111111111111111111) (= (mask!8482 thiss!1248) #b00000001111111111111111111111111) (= (mask!8482 thiss!1248) #b00000011111111111111111111111111) (= (mask!8482 thiss!1248) #b00000111111111111111111111111111) (= (mask!8482 thiss!1248) #b00001111111111111111111111111111) (= (mask!8482 thiss!1248) #b00011111111111111111111111111111) (= (mask!8482 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8482 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!174441 d!53203))

(declare-fun b!174563 () Bool)

(declare-fun e!115280 () SeekEntryResult!554)

(assert (=> b!174563 (= e!115280 Undefined!554)))

(declare-fun b!174564 () Bool)

(declare-fun e!115278 () SeekEntryResult!554)

(declare-fun lt!86425 () SeekEntryResult!554)

(assert (=> b!174564 (= e!115278 (Found!554 (index!4386 lt!86425)))))

(declare-fun b!174565 () Bool)

(declare-fun e!115279 () SeekEntryResult!554)

(assert (=> b!174565 (= e!115279 (MissingZero!554 (index!4386 lt!86425)))))

(declare-fun b!174566 () Bool)

(assert (=> b!174566 (= e!115280 e!115278)))

(declare-fun lt!86426 () (_ BitVec 64))

(assert (=> b!174566 (= lt!86426 (select (arr!3472 (_keys!5448 thiss!1248)) (index!4386 lt!86425)))))

(declare-fun c!31237 () Bool)

(assert (=> b!174566 (= c!31237 (= lt!86426 key!828))))

(declare-fun b!174567 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7310 (_ BitVec 32)) SeekEntryResult!554)

(assert (=> b!174567 (= e!115279 (seekKeyOrZeroReturnVacant!0 (x!19224 lt!86425) (index!4386 lt!86425) (index!4386 lt!86425) key!828 (_keys!5448 thiss!1248) (mask!8482 thiss!1248)))))

(declare-fun d!53205 () Bool)

(declare-fun lt!86424 () SeekEntryResult!554)

(assert (=> d!53205 (and (or ((_ is Undefined!554) lt!86424) (not ((_ is Found!554) lt!86424)) (and (bvsge (index!4385 lt!86424) #b00000000000000000000000000000000) (bvslt (index!4385 lt!86424) (size!3772 (_keys!5448 thiss!1248))))) (or ((_ is Undefined!554) lt!86424) ((_ is Found!554) lt!86424) (not ((_ is MissingZero!554) lt!86424)) (and (bvsge (index!4384 lt!86424) #b00000000000000000000000000000000) (bvslt (index!4384 lt!86424) (size!3772 (_keys!5448 thiss!1248))))) (or ((_ is Undefined!554) lt!86424) ((_ is Found!554) lt!86424) ((_ is MissingZero!554) lt!86424) (not ((_ is MissingVacant!554) lt!86424)) (and (bvsge (index!4387 lt!86424) #b00000000000000000000000000000000) (bvslt (index!4387 lt!86424) (size!3772 (_keys!5448 thiss!1248))))) (or ((_ is Undefined!554) lt!86424) (ite ((_ is Found!554) lt!86424) (= (select (arr!3472 (_keys!5448 thiss!1248)) (index!4385 lt!86424)) key!828) (ite ((_ is MissingZero!554) lt!86424) (= (select (arr!3472 (_keys!5448 thiss!1248)) (index!4384 lt!86424)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!554) lt!86424) (= (select (arr!3472 (_keys!5448 thiss!1248)) (index!4387 lt!86424)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53205 (= lt!86424 e!115280)))

(declare-fun c!31238 () Bool)

(assert (=> d!53205 (= c!31238 (and ((_ is Intermediate!554) lt!86425) (undefined!1366 lt!86425)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7310 (_ BitVec 32)) SeekEntryResult!554)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53205 (= lt!86425 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8482 thiss!1248)) key!828 (_keys!5448 thiss!1248) (mask!8482 thiss!1248)))))

(assert (=> d!53205 (validMask!0 (mask!8482 thiss!1248))))

(assert (=> d!53205 (= (seekEntryOrOpen!0 key!828 (_keys!5448 thiss!1248) (mask!8482 thiss!1248)) lt!86424)))

(declare-fun b!174568 () Bool)

(declare-fun c!31236 () Bool)

(assert (=> b!174568 (= c!31236 (= lt!86426 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!174568 (= e!115278 e!115279)))

(assert (= (and d!53205 c!31238) b!174563))

(assert (= (and d!53205 (not c!31238)) b!174566))

(assert (= (and b!174566 c!31237) b!174564))

(assert (= (and b!174566 (not c!31237)) b!174568))

(assert (= (and b!174568 c!31236) b!174565))

(assert (= (and b!174568 (not c!31236)) b!174567))

(declare-fun m!203613 () Bool)

(assert (=> b!174566 m!203613))

(declare-fun m!203615 () Bool)

(assert (=> b!174567 m!203615))

(declare-fun m!203617 () Bool)

(assert (=> d!53205 m!203617))

(declare-fun m!203619 () Bool)

(assert (=> d!53205 m!203619))

(assert (=> d!53205 m!203513))

(declare-fun m!203621 () Bool)

(assert (=> d!53205 m!203621))

(declare-fun m!203623 () Bool)

(assert (=> d!53205 m!203623))

(declare-fun m!203625 () Bool)

(assert (=> d!53205 m!203625))

(assert (=> d!53205 m!203623))

(assert (=> b!174438 d!53205))

(declare-fun mapIsEmpty!6971 () Bool)

(declare-fun mapRes!6971 () Bool)

(assert (=> mapIsEmpty!6971 mapRes!6971))

(declare-fun b!174576 () Bool)

(declare-fun e!115286 () Bool)

(assert (=> b!174576 (= e!115286 tp_is_empty!4089)))

(declare-fun b!174575 () Bool)

(declare-fun e!115285 () Bool)

(assert (=> b!174575 (= e!115285 tp_is_empty!4089)))

(declare-fun condMapEmpty!6971 () Bool)

(declare-fun mapDefault!6971 () ValueCell!1701)

(assert (=> mapNonEmpty!6965 (= condMapEmpty!6971 (= mapRest!6965 ((as const (Array (_ BitVec 32) ValueCell!1701)) mapDefault!6971)))))

(assert (=> mapNonEmpty!6965 (= tp!15620 (and e!115286 mapRes!6971))))

(declare-fun mapNonEmpty!6971 () Bool)

(declare-fun tp!15629 () Bool)

(assert (=> mapNonEmpty!6971 (= mapRes!6971 (and tp!15629 e!115285))))

(declare-fun mapRest!6971 () (Array (_ BitVec 32) ValueCell!1701))

(declare-fun mapValue!6971 () ValueCell!1701)

(declare-fun mapKey!6971 () (_ BitVec 32))

(assert (=> mapNonEmpty!6971 (= mapRest!6965 (store mapRest!6971 mapKey!6971 mapValue!6971))))

(assert (= (and mapNonEmpty!6965 condMapEmpty!6971) mapIsEmpty!6971))

(assert (= (and mapNonEmpty!6965 (not condMapEmpty!6971)) mapNonEmpty!6971))

(assert (= (and mapNonEmpty!6971 ((_ is ValueCellFull!1701) mapValue!6971)) b!174575))

(assert (= (and mapNonEmpty!6965 ((_ is ValueCellFull!1701) mapDefault!6971)) b!174576))

(declare-fun m!203627 () Bool)

(assert (=> mapNonEmpty!6971 m!203627))

(declare-fun b_lambda!7015 () Bool)

(assert (= b_lambda!7013 (or (and b!174439 b_free!4317) b_lambda!7015)))

(check-sat (not b!174542) (not b!174528) (not b!174544) (not b_lambda!7015) (not bm!17687) (not b!174485) (not b!174537) (not bm!17682) (not b_next!4317) (not b!174483) (not b!174538) (not bm!17681) (not b!174543) (not d!53205) tp_is_empty!4089 (not bm!17686) (not b!174475) (not d!53201) (not b!174536) (not b!174476) (not d!53197) b_and!10805 (not b!174539) (not mapNonEmpty!6971) (not b!174474) (not b!174567) (not d!53199))
(check-sat b_and!10805 (not b_next!4317))
