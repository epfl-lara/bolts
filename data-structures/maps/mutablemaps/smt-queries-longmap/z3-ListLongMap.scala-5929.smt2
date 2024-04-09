; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77292 () Bool)

(assert start!77292)

(declare-fun b!901277 () Bool)

(declare-fun b_free!16077 () Bool)

(declare-fun b_next!16077 () Bool)

(assert (=> b!901277 (= b_free!16077 (not b_next!16077))))

(declare-fun tp!56331 () Bool)

(declare-fun b_and!26425 () Bool)

(assert (=> b!901277 (= tp!56331 b_and!26425)))

(declare-fun b!901273 () Bool)

(declare-fun e!504606 () Bool)

(declare-fun tp_is_empty!18405 () Bool)

(assert (=> b!901273 (= e!504606 tp_is_empty!18405)))

(declare-fun e!504607 () Bool)

(declare-fun b!901274 () Bool)

(declare-datatypes ((array!52852 0))(
  ( (array!52853 (arr!25390 (Array (_ BitVec 32) (_ BitVec 64))) (size!25850 (_ BitVec 32))) )
))
(declare-datatypes ((V!29505 0))(
  ( (V!29506 (val!9253 Int)) )
))
(declare-datatypes ((ValueCell!8721 0))(
  ( (ValueCellFull!8721 (v!11750 V!29505)) (EmptyCell!8721) )
))
(declare-datatypes ((array!52854 0))(
  ( (array!52855 (arr!25391 (Array (_ BitVec 32) ValueCell!8721)) (size!25851 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4458 0))(
  ( (LongMapFixedSize!4459 (defaultEntry!5469 Int) (mask!26272 (_ BitVec 32)) (extraKeys!5198 (_ BitVec 32)) (zeroValue!5302 V!29505) (minValue!5302 V!29505) (_size!2284 (_ BitVec 32)) (_keys!10278 array!52852) (_values!5489 array!52854) (_vacant!2284 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4458)

(declare-fun call!40125 () V!29505)

(declare-datatypes ((SeekEntryResult!8937 0))(
  ( (MissingZero!8937 (index!38118 (_ BitVec 32))) (Found!8937 (index!38119 (_ BitVec 32))) (Intermediate!8937 (undefined!9749 Bool) (index!38120 (_ BitVec 32)) (x!76783 (_ BitVec 32))) (Undefined!8937) (MissingVacant!8937 (index!38121 (_ BitVec 32))) )
))
(declare-fun lt!407361 () SeekEntryResult!8937)

(declare-fun get!13369 (ValueCell!8721 V!29505) V!29505)

(declare-fun dynLambda!1315 (Int (_ BitVec 64)) V!29505)

(assert (=> b!901274 (= e!504607 (= call!40125 (get!13369 (select (arr!25391 (_values!5489 thiss!1181)) (index!38119 lt!407361)) (dynLambda!1315 (defaultEntry!5469 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!901275 () Bool)

(declare-fun e!504603 () Bool)

(declare-fun e!504604 () Bool)

(assert (=> b!901275 (= e!504603 (not e!504604))))

(declare-fun res!608631 () Bool)

(assert (=> b!901275 (=> res!608631 e!504604)))

(get-info :version)

(assert (=> b!901275 (= res!608631 (not ((_ is Found!8937) lt!407361)))))

(declare-fun e!504602 () Bool)

(assert (=> b!901275 e!504602))

(declare-fun res!608630 () Bool)

(assert (=> b!901275 (=> res!608630 e!504602)))

(assert (=> b!901275 (= res!608630 (not ((_ is Found!8937) lt!407361)))))

(declare-datatypes ((Unit!30583 0))(
  ( (Unit!30584) )
))
(declare-fun lt!407364 () Unit!30583)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!115 (array!52852 array!52854 (_ BitVec 32) (_ BitVec 32) V!29505 V!29505 (_ BitVec 64)) Unit!30583)

(assert (=> b!901275 (= lt!407364 (lemmaSeekEntryGivesInRangeIndex!115 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52852 (_ BitVec 32)) SeekEntryResult!8937)

(assert (=> b!901275 (= lt!407361 (seekEntry!0 key!785 (_keys!10278 thiss!1181) (mask!26272 thiss!1181)))))

(declare-fun b!901276 () Bool)

(declare-fun res!608635 () Bool)

(assert (=> b!901276 (=> (not res!608635) (not e!504603))))

(assert (=> b!901276 (= res!608635 (not (= key!785 (bvneg key!785))))))

(declare-fun e!504601 () Bool)

(declare-fun e!504609 () Bool)

(declare-fun array_inv!19890 (array!52852) Bool)

(declare-fun array_inv!19891 (array!52854) Bool)

(assert (=> b!901277 (= e!504601 (and tp!56331 tp_is_empty!18405 (array_inv!19890 (_keys!10278 thiss!1181)) (array_inv!19891 (_values!5489 thiss!1181)) e!504609))))

(declare-fun b!901278 () Bool)

(declare-fun e!504611 () Bool)

(assert (=> b!901278 (= e!504611 tp_is_empty!18405)))

(declare-fun mapIsEmpty!29293 () Bool)

(declare-fun mapRes!29293 () Bool)

(assert (=> mapIsEmpty!29293 mapRes!29293))

(declare-fun res!608633 () Bool)

(assert (=> start!77292 (=> (not res!608633) (not e!504603))))

(declare-fun valid!1695 (LongMapFixedSize!4458) Bool)

(assert (=> start!77292 (= res!608633 (valid!1695 thiss!1181))))

(assert (=> start!77292 e!504603))

(assert (=> start!77292 e!504601))

(assert (=> start!77292 true))

(declare-fun b!901279 () Bool)

(assert (=> b!901279 (= e!504604 (and (bvsge (index!38119 lt!407361) #b00000000000000000000000000000000) (bvslt (index!38119 lt!407361) (size!25851 (_values!5489 thiss!1181)))))))

(declare-fun e!504605 () Bool)

(assert (=> b!901279 e!504605))

(declare-fun c!95386 () Bool)

(assert (=> b!901279 (= c!95386 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!407362 () Unit!30583)

(declare-fun lemmaKeyInListMapThenSameValueInArray!9 (array!52852 array!52854 (_ BitVec 32) (_ BitVec 32) V!29505 V!29505 (_ BitVec 64) (_ BitVec 32) Int) Unit!30583)

(assert (=> b!901279 (= lt!407362 (lemmaKeyInListMapThenSameValueInArray!9 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) key!785 (index!38119 lt!407361) (defaultEntry!5469 thiss!1181)))))

(declare-datatypes ((tuple2!12092 0))(
  ( (tuple2!12093 (_1!6056 (_ BitVec 64)) (_2!6056 V!29505)) )
))
(declare-datatypes ((List!17951 0))(
  ( (Nil!17948) (Cons!17947 (h!19093 tuple2!12092) (t!25322 List!17951)) )
))
(declare-datatypes ((ListLongMap!10803 0))(
  ( (ListLongMap!10804 (toList!5417 List!17951)) )
))
(declare-fun lt!407363 () ListLongMap!10803)

(declare-fun contains!4426 (ListLongMap!10803 (_ BitVec 64)) Bool)

(assert (=> b!901279 (contains!4426 lt!407363 (select (arr!25390 (_keys!10278 thiss!1181)) (index!38119 lt!407361)))))

(declare-fun getCurrentListMap!2657 (array!52852 array!52854 (_ BitVec 32) (_ BitVec 32) V!29505 V!29505 (_ BitVec 32) Int) ListLongMap!10803)

(assert (=> b!901279 (= lt!407363 (getCurrentListMap!2657 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5469 thiss!1181)))))

(declare-fun lt!407365 () Unit!30583)

(declare-fun lemmaValidKeyInArrayIsInListMap!250 (array!52852 array!52854 (_ BitVec 32) (_ BitVec 32) V!29505 V!29505 (_ BitVec 32) Int) Unit!30583)

(assert (=> b!901279 (= lt!407365 (lemmaValidKeyInArrayIsInListMap!250 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) (index!38119 lt!407361) (defaultEntry!5469 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!901279 (arrayContainsKey!0 (_keys!10278 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!407360 () Unit!30583)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52852 (_ BitVec 64) (_ BitVec 32)) Unit!30583)

(assert (=> b!901279 (= lt!407360 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10278 thiss!1181) key!785 (index!38119 lt!407361)))))

(declare-fun mapNonEmpty!29293 () Bool)

(declare-fun tp!56332 () Bool)

(assert (=> mapNonEmpty!29293 (= mapRes!29293 (and tp!56332 e!504606))))

(declare-fun mapValue!29293 () ValueCell!8721)

(declare-fun mapKey!29293 () (_ BitVec 32))

(declare-fun mapRest!29293 () (Array (_ BitVec 32) ValueCell!8721))

(assert (=> mapNonEmpty!29293 (= (arr!25391 (_values!5489 thiss!1181)) (store mapRest!29293 mapKey!29293 mapValue!29293))))

(declare-fun b!901280 () Bool)

(assert (=> b!901280 (= e!504609 (and e!504611 mapRes!29293))))

(declare-fun condMapEmpty!29293 () Bool)

(declare-fun mapDefault!29293 () ValueCell!8721)

(assert (=> b!901280 (= condMapEmpty!29293 (= (arr!25391 (_values!5489 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8721)) mapDefault!29293)))))

(declare-fun b!901281 () Bool)

(declare-fun e!504610 () Bool)

(assert (=> b!901281 (= e!504610 (= call!40125 (minValue!5302 thiss!1181)))))

(declare-fun bm!40122 () Bool)

(declare-fun call!40126 () V!29505)

(assert (=> bm!40122 (= call!40125 call!40126)))

(declare-fun bm!40123 () Bool)

(declare-fun apply!420 (ListLongMap!10803 (_ BitVec 64)) V!29505)

(assert (=> bm!40123 (= call!40126 (apply!420 lt!407363 key!785))))

(declare-fun b!901282 () Bool)

(declare-fun e!504608 () Bool)

(assert (=> b!901282 (= e!504605 e!504608)))

(declare-fun res!608632 () Bool)

(assert (=> b!901282 (= res!608632 (not (= (bvand (extraKeys!5198 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!901282 (=> (not res!608632) (not e!504608))))

(declare-fun b!901283 () Bool)

(assert (=> b!901283 (= e!504608 (= call!40126 (zeroValue!5302 thiss!1181)))))

(declare-fun b!901284 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!901284 (= e!504602 (inRange!0 (index!38119 lt!407361) (mask!26272 thiss!1181)))))

(declare-fun b!901285 () Bool)

(assert (=> b!901285 (= e!504605 e!504607)))

(declare-fun c!95385 () Bool)

(assert (=> b!901285 (= c!95385 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!901286 () Bool)

(declare-fun res!608634 () Bool)

(assert (=> b!901286 (=> (not res!608634) (not e!504610))))

(assert (=> b!901286 (= res!608634 (not (= (bvand (extraKeys!5198 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!901286 (= e!504607 e!504610)))

(assert (= (and start!77292 res!608633) b!901276))

(assert (= (and b!901276 res!608635) b!901275))

(assert (= (and b!901275 (not res!608630)) b!901284))

(assert (= (and b!901275 (not res!608631)) b!901279))

(assert (= (and b!901279 c!95386) b!901282))

(assert (= (and b!901279 (not c!95386)) b!901285))

(assert (= (and b!901282 res!608632) b!901283))

(assert (= (and b!901285 c!95385) b!901286))

(assert (= (and b!901285 (not c!95385)) b!901274))

(assert (= (and b!901286 res!608634) b!901281))

(assert (= (or b!901281 b!901274) bm!40122))

(assert (= (or b!901283 bm!40122) bm!40123))

(assert (= (and b!901280 condMapEmpty!29293) mapIsEmpty!29293))

(assert (= (and b!901280 (not condMapEmpty!29293)) mapNonEmpty!29293))

(assert (= (and mapNonEmpty!29293 ((_ is ValueCellFull!8721) mapValue!29293)) b!901273))

(assert (= (and b!901280 ((_ is ValueCellFull!8721) mapDefault!29293)) b!901278))

(assert (= b!901277 b!901280))

(assert (= start!77292 b!901277))

(declare-fun b_lambda!13063 () Bool)

(assert (=> (not b_lambda!13063) (not b!901274)))

(declare-fun t!25321 () Bool)

(declare-fun tb!5221 () Bool)

(assert (=> (and b!901277 (= (defaultEntry!5469 thiss!1181) (defaultEntry!5469 thiss!1181)) t!25321) tb!5221))

(declare-fun result!10217 () Bool)

(assert (=> tb!5221 (= result!10217 tp_is_empty!18405)))

(assert (=> b!901274 t!25321))

(declare-fun b_and!26427 () Bool)

(assert (= b_and!26425 (and (=> t!25321 result!10217) b_and!26427)))

(declare-fun m!837643 () Bool)

(assert (=> b!901275 m!837643))

(declare-fun m!837645 () Bool)

(assert (=> b!901275 m!837645))

(declare-fun m!837647 () Bool)

(assert (=> b!901277 m!837647))

(declare-fun m!837649 () Bool)

(assert (=> b!901277 m!837649))

(declare-fun m!837651 () Bool)

(assert (=> b!901284 m!837651))

(declare-fun m!837653 () Bool)

(assert (=> b!901274 m!837653))

(declare-fun m!837655 () Bool)

(assert (=> b!901274 m!837655))

(assert (=> b!901274 m!837653))

(assert (=> b!901274 m!837655))

(declare-fun m!837657 () Bool)

(assert (=> b!901274 m!837657))

(declare-fun m!837659 () Bool)

(assert (=> mapNonEmpty!29293 m!837659))

(declare-fun m!837661 () Bool)

(assert (=> bm!40123 m!837661))

(declare-fun m!837663 () Bool)

(assert (=> start!77292 m!837663))

(declare-fun m!837665 () Bool)

(assert (=> b!901279 m!837665))

(declare-fun m!837667 () Bool)

(assert (=> b!901279 m!837667))

(declare-fun m!837669 () Bool)

(assert (=> b!901279 m!837669))

(declare-fun m!837671 () Bool)

(assert (=> b!901279 m!837671))

(declare-fun m!837673 () Bool)

(assert (=> b!901279 m!837673))

(declare-fun m!837675 () Bool)

(assert (=> b!901279 m!837675))

(assert (=> b!901279 m!837673))

(declare-fun m!837677 () Bool)

(assert (=> b!901279 m!837677))

(check-sat (not start!77292) (not mapNonEmpty!29293) (not b!901279) (not b!901284) (not bm!40123) (not b_lambda!13063) (not b!901275) tp_is_empty!18405 (not b_next!16077) b_and!26427 (not b!901277) (not b!901274))
(check-sat b_and!26427 (not b_next!16077))
(get-model)

(declare-fun b_lambda!13067 () Bool)

(assert (= b_lambda!13063 (or (and b!901277 b_free!16077) b_lambda!13067)))

(check-sat (not start!77292) (not mapNonEmpty!29293) (not b!901279) (not b!901284) (not b_lambda!13067) (not bm!40123) (not b!901275) tp_is_empty!18405 (not b_next!16077) b_and!26427 (not b!901277) (not b!901274))
(check-sat b_and!26427 (not b_next!16077))
(get-model)

(declare-fun d!111751 () Bool)

(declare-fun c!95395 () Bool)

(assert (=> d!111751 (= c!95395 ((_ is ValueCellFull!8721) (select (arr!25391 (_values!5489 thiss!1181)) (index!38119 lt!407361))))))

(declare-fun e!504651 () V!29505)

(assert (=> d!111751 (= (get!13369 (select (arr!25391 (_values!5489 thiss!1181)) (index!38119 lt!407361)) (dynLambda!1315 (defaultEntry!5469 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)) e!504651)))

(declare-fun b!901337 () Bool)

(declare-fun get!13370 (ValueCell!8721 V!29505) V!29505)

(assert (=> b!901337 (= e!504651 (get!13370 (select (arr!25391 (_values!5489 thiss!1181)) (index!38119 lt!407361)) (dynLambda!1315 (defaultEntry!5469 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!901338 () Bool)

(declare-fun get!13371 (ValueCell!8721 V!29505) V!29505)

(assert (=> b!901338 (= e!504651 (get!13371 (select (arr!25391 (_values!5489 thiss!1181)) (index!38119 lt!407361)) (dynLambda!1315 (defaultEntry!5469 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!111751 c!95395) b!901337))

(assert (= (and d!111751 (not c!95395)) b!901338))

(assert (=> b!901337 m!837653))

(assert (=> b!901337 m!837655))

(declare-fun m!837715 () Bool)

(assert (=> b!901337 m!837715))

(assert (=> b!901338 m!837653))

(assert (=> b!901338 m!837655))

(declare-fun m!837717 () Bool)

(assert (=> b!901338 m!837717))

(assert (=> b!901274 d!111751))

(declare-fun d!111753 () Bool)

(declare-datatypes ((Option!471 0))(
  ( (Some!470 (v!11752 V!29505)) (None!469) )
))
(declare-fun get!13372 (Option!471) V!29505)

(declare-fun getValueByKey!465 (List!17951 (_ BitVec 64)) Option!471)

(assert (=> d!111753 (= (apply!420 lt!407363 key!785) (get!13372 (getValueByKey!465 (toList!5417 lt!407363) key!785)))))

(declare-fun bs!25297 () Bool)

(assert (= bs!25297 d!111753))

(declare-fun m!837719 () Bool)

(assert (=> bs!25297 m!837719))

(assert (=> bs!25297 m!837719))

(declare-fun m!837721 () Bool)

(assert (=> bs!25297 m!837721))

(assert (=> bm!40123 d!111753))

(declare-fun d!111755 () Bool)

(declare-fun e!504657 () Bool)

(assert (=> d!111755 e!504657))

(declare-fun res!608656 () Bool)

(assert (=> d!111755 (=> res!608656 e!504657)))

(declare-fun lt!407392 () Bool)

(assert (=> d!111755 (= res!608656 (not lt!407392))))

(declare-fun lt!407394 () Bool)

(assert (=> d!111755 (= lt!407392 lt!407394)))

(declare-fun lt!407393 () Unit!30583)

(declare-fun e!504656 () Unit!30583)

(assert (=> d!111755 (= lt!407393 e!504656)))

(declare-fun c!95398 () Bool)

(assert (=> d!111755 (= c!95398 lt!407394)))

(declare-fun containsKey!435 (List!17951 (_ BitVec 64)) Bool)

(assert (=> d!111755 (= lt!407394 (containsKey!435 (toList!5417 lt!407363) (select (arr!25390 (_keys!10278 thiss!1181)) (index!38119 lt!407361))))))

(assert (=> d!111755 (= (contains!4426 lt!407363 (select (arr!25390 (_keys!10278 thiss!1181)) (index!38119 lt!407361))) lt!407392)))

(declare-fun b!901345 () Bool)

(declare-fun lt!407395 () Unit!30583)

(assert (=> b!901345 (= e!504656 lt!407395)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!330 (List!17951 (_ BitVec 64)) Unit!30583)

(assert (=> b!901345 (= lt!407395 (lemmaContainsKeyImpliesGetValueByKeyDefined!330 (toList!5417 lt!407363) (select (arr!25390 (_keys!10278 thiss!1181)) (index!38119 lt!407361))))))

(declare-fun isDefined!340 (Option!471) Bool)

(assert (=> b!901345 (isDefined!340 (getValueByKey!465 (toList!5417 lt!407363) (select (arr!25390 (_keys!10278 thiss!1181)) (index!38119 lt!407361))))))

(declare-fun b!901346 () Bool)

(declare-fun Unit!30585 () Unit!30583)

(assert (=> b!901346 (= e!504656 Unit!30585)))

(declare-fun b!901347 () Bool)

(assert (=> b!901347 (= e!504657 (isDefined!340 (getValueByKey!465 (toList!5417 lt!407363) (select (arr!25390 (_keys!10278 thiss!1181)) (index!38119 lt!407361)))))))

(assert (= (and d!111755 c!95398) b!901345))

(assert (= (and d!111755 (not c!95398)) b!901346))

(assert (= (and d!111755 (not res!608656)) b!901347))

(assert (=> d!111755 m!837673))

(declare-fun m!837723 () Bool)

(assert (=> d!111755 m!837723))

(assert (=> b!901345 m!837673))

(declare-fun m!837725 () Bool)

(assert (=> b!901345 m!837725))

(assert (=> b!901345 m!837673))

(declare-fun m!837727 () Bool)

(assert (=> b!901345 m!837727))

(assert (=> b!901345 m!837727))

(declare-fun m!837729 () Bool)

(assert (=> b!901345 m!837729))

(assert (=> b!901347 m!837673))

(assert (=> b!901347 m!837727))

(assert (=> b!901347 m!837727))

(assert (=> b!901347 m!837729))

(assert (=> b!901279 d!111755))

(declare-fun d!111757 () Bool)

(declare-fun e!504660 () Bool)

(assert (=> d!111757 e!504660))

(declare-fun res!608659 () Bool)

(assert (=> d!111757 (=> (not res!608659) (not e!504660))))

(assert (=> d!111757 (= res!608659 (and (bvsge (index!38119 lt!407361) #b00000000000000000000000000000000) (bvslt (index!38119 lt!407361) (size!25850 (_keys!10278 thiss!1181)))))))

(declare-fun lt!407398 () Unit!30583)

(declare-fun choose!1528 (array!52852 array!52854 (_ BitVec 32) (_ BitVec 32) V!29505 V!29505 (_ BitVec 32) Int) Unit!30583)

(assert (=> d!111757 (= lt!407398 (choose!1528 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) (index!38119 lt!407361) (defaultEntry!5469 thiss!1181)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!111757 (validMask!0 (mask!26272 thiss!1181))))

(assert (=> d!111757 (= (lemmaValidKeyInArrayIsInListMap!250 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) (index!38119 lt!407361) (defaultEntry!5469 thiss!1181)) lt!407398)))

(declare-fun b!901350 () Bool)

(assert (=> b!901350 (= e!504660 (contains!4426 (getCurrentListMap!2657 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5469 thiss!1181)) (select (arr!25390 (_keys!10278 thiss!1181)) (index!38119 lt!407361))))))

(assert (= (and d!111757 res!608659) b!901350))

(declare-fun m!837731 () Bool)

(assert (=> d!111757 m!837731))

(declare-fun m!837733 () Bool)

(assert (=> d!111757 m!837733))

(assert (=> b!901350 m!837669))

(assert (=> b!901350 m!837673))

(assert (=> b!901350 m!837669))

(assert (=> b!901350 m!837673))

(declare-fun m!837735 () Bool)

(assert (=> b!901350 m!837735))

(assert (=> b!901279 d!111757))

(declare-fun d!111759 () Bool)

(assert (=> d!111759 (arrayContainsKey!0 (_keys!10278 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!407401 () Unit!30583)

(declare-fun choose!13 (array!52852 (_ BitVec 64) (_ BitVec 32)) Unit!30583)

(assert (=> d!111759 (= lt!407401 (choose!13 (_keys!10278 thiss!1181) key!785 (index!38119 lt!407361)))))

(assert (=> d!111759 (bvsge (index!38119 lt!407361) #b00000000000000000000000000000000)))

(assert (=> d!111759 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10278 thiss!1181) key!785 (index!38119 lt!407361)) lt!407401)))

(declare-fun bs!25298 () Bool)

(assert (= bs!25298 d!111759))

(assert (=> bs!25298 m!837665))

(declare-fun m!837737 () Bool)

(assert (=> bs!25298 m!837737))

(assert (=> b!901279 d!111759))

(declare-fun d!111761 () Bool)

(declare-fun res!608664 () Bool)

(declare-fun e!504665 () Bool)

(assert (=> d!111761 (=> res!608664 e!504665)))

(assert (=> d!111761 (= res!608664 (= (select (arr!25390 (_keys!10278 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111761 (= (arrayContainsKey!0 (_keys!10278 thiss!1181) key!785 #b00000000000000000000000000000000) e!504665)))

(declare-fun b!901355 () Bool)

(declare-fun e!504666 () Bool)

(assert (=> b!901355 (= e!504665 e!504666)))

(declare-fun res!608665 () Bool)

(assert (=> b!901355 (=> (not res!608665) (not e!504666))))

(assert (=> b!901355 (= res!608665 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25850 (_keys!10278 thiss!1181))))))

(declare-fun b!901356 () Bool)

(assert (=> b!901356 (= e!504666 (arrayContainsKey!0 (_keys!10278 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111761 (not res!608664)) b!901355))

(assert (= (and b!901355 res!608665) b!901356))

(declare-fun m!837739 () Bool)

(assert (=> d!111761 m!837739))

(declare-fun m!837741 () Bool)

(assert (=> b!901356 m!837741))

(assert (=> b!901279 d!111761))

(declare-fun b!901399 () Bool)

(declare-fun e!504700 () Bool)

(declare-fun e!504701 () Bool)

(assert (=> b!901399 (= e!504700 e!504701)))

(declare-fun c!95414 () Bool)

(assert (=> b!901399 (= c!95414 (not (= (bvand (extraKeys!5198 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!901400 () Bool)

(declare-fun e!504699 () Bool)

(declare-fun lt!407464 () ListLongMap!10803)

(assert (=> b!901400 (= e!504699 (= (apply!420 lt!407464 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5302 thiss!1181)))))

(declare-fun b!901401 () Bool)

(declare-fun res!608689 () Bool)

(assert (=> b!901401 (=> (not res!608689) (not e!504700))))

(declare-fun e!504693 () Bool)

(assert (=> b!901401 (= res!608689 e!504693)))

(declare-fun c!95411 () Bool)

(assert (=> b!901401 (= c!95411 (not (= (bvand (extraKeys!5198 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!901402 () Bool)

(declare-fun e!504702 () Unit!30583)

(declare-fun Unit!30586 () Unit!30583)

(assert (=> b!901402 (= e!504702 Unit!30586)))

(declare-fun b!901403 () Bool)

(declare-fun c!95413 () Bool)

(assert (=> b!901403 (= c!95413 (and (not (= (bvand (extraKeys!5198 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5198 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!504697 () ListLongMap!10803)

(declare-fun e!504705 () ListLongMap!10803)

(assert (=> b!901403 (= e!504697 e!504705)))

(declare-fun b!901404 () Bool)

(declare-fun call!40151 () Bool)

(assert (=> b!901404 (= e!504701 (not call!40151))))

(declare-fun bm!40144 () Bool)

(declare-fun call!40150 () ListLongMap!10803)

(declare-fun call!40148 () ListLongMap!10803)

(assert (=> bm!40144 (= call!40150 call!40148)))

(declare-fun bm!40145 () Bool)

(declare-fun call!40147 () ListLongMap!10803)

(declare-fun getCurrentListMapNoExtraKeys!3303 (array!52852 array!52854 (_ BitVec 32) (_ BitVec 32) V!29505 V!29505 (_ BitVec 32) Int) ListLongMap!10803)

(assert (=> bm!40145 (= call!40147 (getCurrentListMapNoExtraKeys!3303 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5469 thiss!1181)))))

(declare-fun d!111763 () Bool)

(assert (=> d!111763 e!504700))

(declare-fun res!608692 () Bool)

(assert (=> d!111763 (=> (not res!608692) (not e!504700))))

(assert (=> d!111763 (= res!608692 (or (bvsge #b00000000000000000000000000000000 (size!25850 (_keys!10278 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25850 (_keys!10278 thiss!1181))))))))

(declare-fun lt!407454 () ListLongMap!10803)

(assert (=> d!111763 (= lt!407464 lt!407454)))

(declare-fun lt!407460 () Unit!30583)

(assert (=> d!111763 (= lt!407460 e!504702)))

(declare-fun c!95415 () Bool)

(declare-fun e!504704 () Bool)

(assert (=> d!111763 (= c!95415 e!504704)))

(declare-fun res!608687 () Bool)

(assert (=> d!111763 (=> (not res!608687) (not e!504704))))

(assert (=> d!111763 (= res!608687 (bvslt #b00000000000000000000000000000000 (size!25850 (_keys!10278 thiss!1181))))))

(declare-fun e!504694 () ListLongMap!10803)

(assert (=> d!111763 (= lt!407454 e!504694)))

(declare-fun c!95412 () Bool)

(assert (=> d!111763 (= c!95412 (and (not (= (bvand (extraKeys!5198 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5198 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!111763 (validMask!0 (mask!26272 thiss!1181))))

(assert (=> d!111763 (= (getCurrentListMap!2657 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5469 thiss!1181)) lt!407464)))

(declare-fun b!901405 () Bool)

(declare-fun +!2555 (ListLongMap!10803 tuple2!12092) ListLongMap!10803)

(assert (=> b!901405 (= e!504694 (+!2555 call!40148 (tuple2!12093 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5302 thiss!1181))))))

(declare-fun bm!40146 () Bool)

(declare-fun c!95416 () Bool)

(declare-fun call!40153 () ListLongMap!10803)

(declare-fun call!40152 () ListLongMap!10803)

(assert (=> bm!40146 (= call!40148 (+!2555 (ite c!95412 call!40147 (ite c!95416 call!40152 call!40153)) (ite (or c!95412 c!95416) (tuple2!12093 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5302 thiss!1181)) (tuple2!12093 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5302 thiss!1181)))))))

(declare-fun bm!40147 () Bool)

(assert (=> bm!40147 (= call!40151 (contains!4426 lt!407464 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!901406 () Bool)

(assert (=> b!901406 (= e!504705 call!40153)))

(declare-fun b!901407 () Bool)

(declare-fun e!504695 () Bool)

(assert (=> b!901407 (= e!504695 (= (apply!420 lt!407464 (select (arr!25390 (_keys!10278 thiss!1181)) #b00000000000000000000000000000000)) (get!13369 (select (arr!25391 (_values!5489 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1315 (defaultEntry!5469 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!901407 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25851 (_values!5489 thiss!1181))))))

(assert (=> b!901407 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25850 (_keys!10278 thiss!1181))))))

(declare-fun bm!40148 () Bool)

(assert (=> bm!40148 (= call!40153 call!40152)))

(declare-fun b!901408 () Bool)

(declare-fun e!504703 () Bool)

(assert (=> b!901408 (= e!504701 e!504703)))

(declare-fun res!608691 () Bool)

(assert (=> b!901408 (= res!608691 call!40151)))

(assert (=> b!901408 (=> (not res!608691) (not e!504703))))

(declare-fun b!901409 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!901409 (= e!504704 (validKeyInArray!0 (select (arr!25390 (_keys!10278 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!901410 () Bool)

(declare-fun res!608686 () Bool)

(assert (=> b!901410 (=> (not res!608686) (not e!504700))))

(declare-fun e!504698 () Bool)

(assert (=> b!901410 (= res!608686 e!504698)))

(declare-fun res!608690 () Bool)

(assert (=> b!901410 (=> res!608690 e!504698)))

(declare-fun e!504696 () Bool)

(assert (=> b!901410 (= res!608690 (not e!504696))))

(declare-fun res!608684 () Bool)

(assert (=> b!901410 (=> (not res!608684) (not e!504696))))

(assert (=> b!901410 (= res!608684 (bvslt #b00000000000000000000000000000000 (size!25850 (_keys!10278 thiss!1181))))))

(declare-fun b!901411 () Bool)

(assert (=> b!901411 (= e!504697 call!40150)))

(declare-fun b!901412 () Bool)

(assert (=> b!901412 (= e!504705 call!40150)))

(declare-fun b!901413 () Bool)

(assert (=> b!901413 (= e!504696 (validKeyInArray!0 (select (arr!25390 (_keys!10278 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!40149 () Bool)

(declare-fun call!40149 () Bool)

(assert (=> bm!40149 (= call!40149 (contains!4426 lt!407464 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!901414 () Bool)

(assert (=> b!901414 (= e!504694 e!504697)))

(assert (=> b!901414 (= c!95416 (and (not (= (bvand (extraKeys!5198 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5198 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!901415 () Bool)

(assert (=> b!901415 (= e!504698 e!504695)))

(declare-fun res!608688 () Bool)

(assert (=> b!901415 (=> (not res!608688) (not e!504695))))

(assert (=> b!901415 (= res!608688 (contains!4426 lt!407464 (select (arr!25390 (_keys!10278 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!901415 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25850 (_keys!10278 thiss!1181))))))

(declare-fun b!901416 () Bool)

(declare-fun lt!407453 () Unit!30583)

(assert (=> b!901416 (= e!504702 lt!407453)))

(declare-fun lt!407465 () ListLongMap!10803)

(assert (=> b!901416 (= lt!407465 (getCurrentListMapNoExtraKeys!3303 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5469 thiss!1181)))))

(declare-fun lt!407456 () (_ BitVec 64))

(assert (=> b!901416 (= lt!407456 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407463 () (_ BitVec 64))

(assert (=> b!901416 (= lt!407463 (select (arr!25390 (_keys!10278 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!407450 () Unit!30583)

(declare-fun addStillContains!341 (ListLongMap!10803 (_ BitVec 64) V!29505 (_ BitVec 64)) Unit!30583)

(assert (=> b!901416 (= lt!407450 (addStillContains!341 lt!407465 lt!407456 (zeroValue!5302 thiss!1181) lt!407463))))

(assert (=> b!901416 (contains!4426 (+!2555 lt!407465 (tuple2!12093 lt!407456 (zeroValue!5302 thiss!1181))) lt!407463)))

(declare-fun lt!407449 () Unit!30583)

(assert (=> b!901416 (= lt!407449 lt!407450)))

(declare-fun lt!407462 () ListLongMap!10803)

(assert (=> b!901416 (= lt!407462 (getCurrentListMapNoExtraKeys!3303 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5469 thiss!1181)))))

(declare-fun lt!407458 () (_ BitVec 64))

(assert (=> b!901416 (= lt!407458 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407457 () (_ BitVec 64))

(assert (=> b!901416 (= lt!407457 (select (arr!25390 (_keys!10278 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!407461 () Unit!30583)

(declare-fun addApplyDifferent!341 (ListLongMap!10803 (_ BitVec 64) V!29505 (_ BitVec 64)) Unit!30583)

(assert (=> b!901416 (= lt!407461 (addApplyDifferent!341 lt!407462 lt!407458 (minValue!5302 thiss!1181) lt!407457))))

(assert (=> b!901416 (= (apply!420 (+!2555 lt!407462 (tuple2!12093 lt!407458 (minValue!5302 thiss!1181))) lt!407457) (apply!420 lt!407462 lt!407457))))

(declare-fun lt!407459 () Unit!30583)

(assert (=> b!901416 (= lt!407459 lt!407461)))

(declare-fun lt!407466 () ListLongMap!10803)

(assert (=> b!901416 (= lt!407466 (getCurrentListMapNoExtraKeys!3303 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5469 thiss!1181)))))

(declare-fun lt!407467 () (_ BitVec 64))

(assert (=> b!901416 (= lt!407467 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407451 () (_ BitVec 64))

(assert (=> b!901416 (= lt!407451 (select (arr!25390 (_keys!10278 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!407448 () Unit!30583)

(assert (=> b!901416 (= lt!407448 (addApplyDifferent!341 lt!407466 lt!407467 (zeroValue!5302 thiss!1181) lt!407451))))

(assert (=> b!901416 (= (apply!420 (+!2555 lt!407466 (tuple2!12093 lt!407467 (zeroValue!5302 thiss!1181))) lt!407451) (apply!420 lt!407466 lt!407451))))

(declare-fun lt!407446 () Unit!30583)

(assert (=> b!901416 (= lt!407446 lt!407448)))

(declare-fun lt!407447 () ListLongMap!10803)

(assert (=> b!901416 (= lt!407447 (getCurrentListMapNoExtraKeys!3303 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5469 thiss!1181)))))

(declare-fun lt!407452 () (_ BitVec 64))

(assert (=> b!901416 (= lt!407452 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407455 () (_ BitVec 64))

(assert (=> b!901416 (= lt!407455 (select (arr!25390 (_keys!10278 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!901416 (= lt!407453 (addApplyDifferent!341 lt!407447 lt!407452 (minValue!5302 thiss!1181) lt!407455))))

(assert (=> b!901416 (= (apply!420 (+!2555 lt!407447 (tuple2!12093 lt!407452 (minValue!5302 thiss!1181))) lt!407455) (apply!420 lt!407447 lt!407455))))

(declare-fun b!901417 () Bool)

(assert (=> b!901417 (= e!504693 (not call!40149))))

(declare-fun bm!40150 () Bool)

(assert (=> bm!40150 (= call!40152 call!40147)))

(declare-fun b!901418 () Bool)

(assert (=> b!901418 (= e!504693 e!504699)))

(declare-fun res!608685 () Bool)

(assert (=> b!901418 (= res!608685 call!40149)))

(assert (=> b!901418 (=> (not res!608685) (not e!504699))))

(declare-fun b!901419 () Bool)

(assert (=> b!901419 (= e!504703 (= (apply!420 lt!407464 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5302 thiss!1181)))))

(assert (= (and d!111763 c!95412) b!901405))

(assert (= (and d!111763 (not c!95412)) b!901414))

(assert (= (and b!901414 c!95416) b!901411))

(assert (= (and b!901414 (not c!95416)) b!901403))

(assert (= (and b!901403 c!95413) b!901412))

(assert (= (and b!901403 (not c!95413)) b!901406))

(assert (= (or b!901412 b!901406) bm!40148))

(assert (= (or b!901411 bm!40148) bm!40150))

(assert (= (or b!901411 b!901412) bm!40144))

(assert (= (or b!901405 bm!40150) bm!40145))

(assert (= (or b!901405 bm!40144) bm!40146))

(assert (= (and d!111763 res!608687) b!901409))

(assert (= (and d!111763 c!95415) b!901416))

(assert (= (and d!111763 (not c!95415)) b!901402))

(assert (= (and d!111763 res!608692) b!901410))

(assert (= (and b!901410 res!608684) b!901413))

(assert (= (and b!901410 (not res!608690)) b!901415))

(assert (= (and b!901415 res!608688) b!901407))

(assert (= (and b!901410 res!608686) b!901401))

(assert (= (and b!901401 c!95411) b!901418))

(assert (= (and b!901401 (not c!95411)) b!901417))

(assert (= (and b!901418 res!608685) b!901400))

(assert (= (or b!901418 b!901417) bm!40149))

(assert (= (and b!901401 res!608689) b!901399))

(assert (= (and b!901399 c!95414) b!901408))

(assert (= (and b!901399 (not c!95414)) b!901404))

(assert (= (and b!901408 res!608691) b!901419))

(assert (= (or b!901408 b!901404) bm!40147))

(declare-fun b_lambda!13069 () Bool)

(assert (=> (not b_lambda!13069) (not b!901407)))

(assert (=> b!901407 t!25321))

(declare-fun b_and!26433 () Bool)

(assert (= b_and!26427 (and (=> t!25321 result!10217) b_and!26433)))

(assert (=> b!901409 m!837739))

(assert (=> b!901409 m!837739))

(declare-fun m!837743 () Bool)

(assert (=> b!901409 m!837743))

(declare-fun m!837745 () Bool)

(assert (=> bm!40147 m!837745))

(assert (=> b!901413 m!837739))

(assert (=> b!901413 m!837739))

(assert (=> b!901413 m!837743))

(declare-fun m!837747 () Bool)

(assert (=> bm!40149 m!837747))

(declare-fun m!837749 () Bool)

(assert (=> bm!40145 m!837749))

(declare-fun m!837751 () Bool)

(assert (=> b!901419 m!837751))

(declare-fun m!837753 () Bool)

(assert (=> b!901416 m!837753))

(declare-fun m!837755 () Bool)

(assert (=> b!901416 m!837755))

(declare-fun m!837757 () Bool)

(assert (=> b!901416 m!837757))

(assert (=> b!901416 m!837749))

(declare-fun m!837759 () Bool)

(assert (=> b!901416 m!837759))

(declare-fun m!837761 () Bool)

(assert (=> b!901416 m!837761))

(declare-fun m!837763 () Bool)

(assert (=> b!901416 m!837763))

(assert (=> b!901416 m!837739))

(declare-fun m!837765 () Bool)

(assert (=> b!901416 m!837765))

(declare-fun m!837767 () Bool)

(assert (=> b!901416 m!837767))

(declare-fun m!837769 () Bool)

(assert (=> b!901416 m!837769))

(declare-fun m!837771 () Bool)

(assert (=> b!901416 m!837771))

(declare-fun m!837773 () Bool)

(assert (=> b!901416 m!837773))

(declare-fun m!837775 () Bool)

(assert (=> b!901416 m!837775))

(declare-fun m!837777 () Bool)

(assert (=> b!901416 m!837777))

(assert (=> b!901416 m!837759))

(assert (=> b!901416 m!837767))

(declare-fun m!837779 () Bool)

(assert (=> b!901416 m!837779))

(declare-fun m!837781 () Bool)

(assert (=> b!901416 m!837781))

(assert (=> b!901416 m!837771))

(assert (=> b!901416 m!837775))

(declare-fun m!837783 () Bool)

(assert (=> b!901400 m!837783))

(assert (=> b!901415 m!837739))

(assert (=> b!901415 m!837739))

(declare-fun m!837785 () Bool)

(assert (=> b!901415 m!837785))

(declare-fun m!837787 () Bool)

(assert (=> bm!40146 m!837787))

(assert (=> d!111763 m!837733))

(declare-fun m!837789 () Bool)

(assert (=> b!901405 m!837789))

(assert (=> b!901407 m!837739))

(declare-fun m!837791 () Bool)

(assert (=> b!901407 m!837791))

(declare-fun m!837793 () Bool)

(assert (=> b!901407 m!837793))

(assert (=> b!901407 m!837655))

(declare-fun m!837795 () Bool)

(assert (=> b!901407 m!837795))

(assert (=> b!901407 m!837655))

(assert (=> b!901407 m!837793))

(assert (=> b!901407 m!837739))

(assert (=> b!901279 d!111763))

(declare-fun call!40162 () ListLongMap!10803)

(declare-fun call!40165 () ListLongMap!10803)

(declare-fun bm!40159 () Bool)

(declare-fun call!40163 () V!29505)

(declare-fun c!95421 () Bool)

(assert (=> bm!40159 (= call!40163 (apply!420 (ite c!95421 call!40165 call!40162) key!785))))

(declare-fun b!901434 () Bool)

(declare-fun e!504716 () Bool)

(declare-fun e!504717 () Bool)

(assert (=> b!901434 (= e!504716 e!504717)))

(declare-fun c!95422 () Bool)

(assert (=> b!901434 (= c!95422 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!901435 () Bool)

(declare-fun e!504720 () Bool)

(assert (=> b!901435 (= e!504716 e!504720)))

(declare-fun res!608699 () Bool)

(assert (=> b!901435 (= res!608699 (not (= (bvand (extraKeys!5198 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!901435 (=> (not res!608699) (not e!504720))))

(declare-fun bm!40160 () Bool)

(declare-fun call!40164 () V!29505)

(assert (=> bm!40160 (= call!40164 call!40163)))

(declare-fun d!111765 () Bool)

(assert (=> d!111765 e!504716))

(assert (=> d!111765 (= c!95421 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!407470 () Unit!30583)

(declare-fun choose!1529 (array!52852 array!52854 (_ BitVec 32) (_ BitVec 32) V!29505 V!29505 (_ BitVec 64) (_ BitVec 32) Int) Unit!30583)

(assert (=> d!111765 (= lt!407470 (choose!1529 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) key!785 (index!38119 lt!407361) (defaultEntry!5469 thiss!1181)))))

(assert (=> d!111765 (validMask!0 (mask!26272 thiss!1181))))

(assert (=> d!111765 (= (lemmaKeyInListMapThenSameValueInArray!9 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) key!785 (index!38119 lt!407361) (defaultEntry!5469 thiss!1181)) lt!407470)))

(declare-fun bm!40161 () Bool)

(assert (=> bm!40161 (= call!40162 call!40165)))

(declare-fun b!901436 () Bool)

(declare-fun e!504719 () Bool)

(assert (=> b!901436 (= e!504719 (= call!40164 (get!13369 (select (arr!25391 (_values!5489 thiss!1181)) (index!38119 lt!407361)) (dynLambda!1315 (defaultEntry!5469 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!901436 (and (bvsge (index!38119 lt!407361) #b00000000000000000000000000000000) (bvslt (index!38119 lt!407361) (size!25851 (_values!5489 thiss!1181))))))

(declare-fun bm!40162 () Bool)

(assert (=> bm!40162 (= call!40165 (getCurrentListMap!2657 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5469 thiss!1181)))))

(declare-fun b!901437 () Bool)

(declare-fun e!504718 () Bool)

(assert (=> b!901437 (= e!504718 (= call!40164 (minValue!5302 thiss!1181)))))

(declare-fun b!901438 () Bool)

(assert (=> b!901438 (= e!504720 (= call!40163 (zeroValue!5302 thiss!1181)))))

(declare-fun b!901439 () Bool)

(declare-fun res!608700 () Bool)

(assert (=> b!901439 (=> (not res!608700) (not e!504718))))

(assert (=> b!901439 (= res!608700 (not (= (bvand (extraKeys!5198 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!901439 (= e!504717 e!504718)))

(declare-fun b!901440 () Bool)

(declare-fun res!608701 () Bool)

(assert (=> b!901440 (=> (not res!608701) (not e!504719))))

(assert (=> b!901440 (= res!608701 (arrayContainsKey!0 (_keys!10278 thiss!1181) key!785 #b00000000000000000000000000000000))))

(assert (=> b!901440 (= e!504717 e!504719)))

(assert (= (and d!111765 c!95421) b!901435))

(assert (= (and d!111765 (not c!95421)) b!901434))

(assert (= (and b!901435 res!608699) b!901438))

(assert (= (and b!901434 c!95422) b!901439))

(assert (= (and b!901434 (not c!95422)) b!901440))

(assert (= (and b!901439 res!608700) b!901437))

(assert (= (and b!901440 res!608701) b!901436))

(assert (= (or b!901437 b!901436) bm!40161))

(assert (= (or b!901437 b!901436) bm!40160))

(assert (= (or b!901438 bm!40161) bm!40162))

(assert (= (or b!901438 bm!40160) bm!40159))

(declare-fun b_lambda!13071 () Bool)

(assert (=> (not b_lambda!13071) (not b!901436)))

(assert (=> b!901436 t!25321))

(declare-fun b_and!26435 () Bool)

(assert (= b_and!26433 (and (=> t!25321 result!10217) b_and!26435)))

(assert (=> bm!40162 m!837669))

(declare-fun m!837797 () Bool)

(assert (=> d!111765 m!837797))

(assert (=> d!111765 m!837733))

(assert (=> b!901440 m!837665))

(declare-fun m!837799 () Bool)

(assert (=> bm!40159 m!837799))

(assert (=> b!901436 m!837653))

(assert (=> b!901436 m!837655))

(assert (=> b!901436 m!837653))

(assert (=> b!901436 m!837655))

(assert (=> b!901436 m!837657))

(assert (=> b!901279 d!111765))

(declare-fun d!111767 () Bool)

(declare-fun e!504723 () Bool)

(assert (=> d!111767 e!504723))

(declare-fun res!608704 () Bool)

(assert (=> d!111767 (=> res!608704 e!504723)))

(declare-fun lt!407476 () SeekEntryResult!8937)

(assert (=> d!111767 (= res!608704 (not ((_ is Found!8937) lt!407476)))))

(assert (=> d!111767 (= lt!407476 (seekEntry!0 key!785 (_keys!10278 thiss!1181) (mask!26272 thiss!1181)))))

(declare-fun lt!407475 () Unit!30583)

(declare-fun choose!1530 (array!52852 array!52854 (_ BitVec 32) (_ BitVec 32) V!29505 V!29505 (_ BitVec 64)) Unit!30583)

(assert (=> d!111767 (= lt!407475 (choose!1530 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) key!785))))

(assert (=> d!111767 (validMask!0 (mask!26272 thiss!1181))))

(assert (=> d!111767 (= (lemmaSeekEntryGivesInRangeIndex!115 (_keys!10278 thiss!1181) (_values!5489 thiss!1181) (mask!26272 thiss!1181) (extraKeys!5198 thiss!1181) (zeroValue!5302 thiss!1181) (minValue!5302 thiss!1181) key!785) lt!407475)))

(declare-fun b!901443 () Bool)

(assert (=> b!901443 (= e!504723 (inRange!0 (index!38119 lt!407476) (mask!26272 thiss!1181)))))

(assert (= (and d!111767 (not res!608704)) b!901443))

(assert (=> d!111767 m!837645))

(declare-fun m!837801 () Bool)

(assert (=> d!111767 m!837801))

(assert (=> d!111767 m!837733))

(declare-fun m!837803 () Bool)

(assert (=> b!901443 m!837803))

(assert (=> b!901275 d!111767))

(declare-fun b!901456 () Bool)

(declare-fun e!504731 () SeekEntryResult!8937)

(declare-fun lt!407486 () SeekEntryResult!8937)

(assert (=> b!901456 (= e!504731 (Found!8937 (index!38120 lt!407486)))))

(declare-fun d!111769 () Bool)

(declare-fun lt!407485 () SeekEntryResult!8937)

(assert (=> d!111769 (and (or ((_ is MissingVacant!8937) lt!407485) (not ((_ is Found!8937) lt!407485)) (and (bvsge (index!38119 lt!407485) #b00000000000000000000000000000000) (bvslt (index!38119 lt!407485) (size!25850 (_keys!10278 thiss!1181))))) (not ((_ is MissingVacant!8937) lt!407485)) (or (not ((_ is Found!8937) lt!407485)) (= (select (arr!25390 (_keys!10278 thiss!1181)) (index!38119 lt!407485)) key!785)))))

(declare-fun e!504730 () SeekEntryResult!8937)

(assert (=> d!111769 (= lt!407485 e!504730)))

(declare-fun c!95431 () Bool)

(assert (=> d!111769 (= c!95431 (and ((_ is Intermediate!8937) lt!407486) (undefined!9749 lt!407486)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52852 (_ BitVec 32)) SeekEntryResult!8937)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111769 (= lt!407486 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26272 thiss!1181)) key!785 (_keys!10278 thiss!1181) (mask!26272 thiss!1181)))))

(assert (=> d!111769 (validMask!0 (mask!26272 thiss!1181))))

(assert (=> d!111769 (= (seekEntry!0 key!785 (_keys!10278 thiss!1181) (mask!26272 thiss!1181)) lt!407485)))

(declare-fun b!901457 () Bool)

(declare-fun e!504732 () SeekEntryResult!8937)

(declare-fun lt!407487 () SeekEntryResult!8937)

(assert (=> b!901457 (= e!504732 (ite ((_ is MissingVacant!8937) lt!407487) (MissingZero!8937 (index!38121 lt!407487)) lt!407487))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52852 (_ BitVec 32)) SeekEntryResult!8937)

(assert (=> b!901457 (= lt!407487 (seekKeyOrZeroReturnVacant!0 (x!76783 lt!407486) (index!38120 lt!407486) (index!38120 lt!407486) key!785 (_keys!10278 thiss!1181) (mask!26272 thiss!1181)))))

(declare-fun b!901458 () Bool)

(assert (=> b!901458 (= e!504730 e!504731)))

(declare-fun lt!407488 () (_ BitVec 64))

(assert (=> b!901458 (= lt!407488 (select (arr!25390 (_keys!10278 thiss!1181)) (index!38120 lt!407486)))))

(declare-fun c!95429 () Bool)

(assert (=> b!901458 (= c!95429 (= lt!407488 key!785))))

(declare-fun b!901459 () Bool)

(assert (=> b!901459 (= e!504730 Undefined!8937)))

(declare-fun b!901460 () Bool)

(assert (=> b!901460 (= e!504732 (MissingZero!8937 (index!38120 lt!407486)))))

(declare-fun b!901461 () Bool)

(declare-fun c!95430 () Bool)

(assert (=> b!901461 (= c!95430 (= lt!407488 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!901461 (= e!504731 e!504732)))

(assert (= (and d!111769 c!95431) b!901459))

(assert (= (and d!111769 (not c!95431)) b!901458))

(assert (= (and b!901458 c!95429) b!901456))

(assert (= (and b!901458 (not c!95429)) b!901461))

(assert (= (and b!901461 c!95430) b!901460))

(assert (= (and b!901461 (not c!95430)) b!901457))

(declare-fun m!837805 () Bool)

(assert (=> d!111769 m!837805))

(declare-fun m!837807 () Bool)

(assert (=> d!111769 m!837807))

(assert (=> d!111769 m!837807))

(declare-fun m!837809 () Bool)

(assert (=> d!111769 m!837809))

(assert (=> d!111769 m!837733))

(declare-fun m!837811 () Bool)

(assert (=> b!901457 m!837811))

(declare-fun m!837813 () Bool)

(assert (=> b!901458 m!837813))

(assert (=> b!901275 d!111769))

(declare-fun d!111771 () Bool)

(declare-fun res!608711 () Bool)

(declare-fun e!504735 () Bool)

(assert (=> d!111771 (=> (not res!608711) (not e!504735))))

(declare-fun simpleValid!332 (LongMapFixedSize!4458) Bool)

(assert (=> d!111771 (= res!608711 (simpleValid!332 thiss!1181))))

(assert (=> d!111771 (= (valid!1695 thiss!1181) e!504735)))

(declare-fun b!901468 () Bool)

(declare-fun res!608712 () Bool)

(assert (=> b!901468 (=> (not res!608712) (not e!504735))))

(declare-fun arrayCountValidKeys!0 (array!52852 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!901468 (= res!608712 (= (arrayCountValidKeys!0 (_keys!10278 thiss!1181) #b00000000000000000000000000000000 (size!25850 (_keys!10278 thiss!1181))) (_size!2284 thiss!1181)))))

(declare-fun b!901469 () Bool)

(declare-fun res!608713 () Bool)

(assert (=> b!901469 (=> (not res!608713) (not e!504735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52852 (_ BitVec 32)) Bool)

(assert (=> b!901469 (= res!608713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10278 thiss!1181) (mask!26272 thiss!1181)))))

(declare-fun b!901470 () Bool)

(declare-datatypes ((List!17952 0))(
  ( (Nil!17949) (Cons!17948 (h!19094 (_ BitVec 64)) (t!25325 List!17952)) )
))
(declare-fun arrayNoDuplicates!0 (array!52852 (_ BitVec 32) List!17952) Bool)

(assert (=> b!901470 (= e!504735 (arrayNoDuplicates!0 (_keys!10278 thiss!1181) #b00000000000000000000000000000000 Nil!17949))))

(assert (= (and d!111771 res!608711) b!901468))

(assert (= (and b!901468 res!608712) b!901469))

(assert (= (and b!901469 res!608713) b!901470))

(declare-fun m!837815 () Bool)

(assert (=> d!111771 m!837815))

(declare-fun m!837817 () Bool)

(assert (=> b!901468 m!837817))

(declare-fun m!837819 () Bool)

(assert (=> b!901469 m!837819))

(declare-fun m!837821 () Bool)

(assert (=> b!901470 m!837821))

(assert (=> start!77292 d!111771))

(declare-fun d!111773 () Bool)

(assert (=> d!111773 (= (array_inv!19890 (_keys!10278 thiss!1181)) (bvsge (size!25850 (_keys!10278 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!901277 d!111773))

(declare-fun d!111775 () Bool)

(assert (=> d!111775 (= (array_inv!19891 (_values!5489 thiss!1181)) (bvsge (size!25851 (_values!5489 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!901277 d!111775))

(declare-fun d!111777 () Bool)

(assert (=> d!111777 (= (inRange!0 (index!38119 lt!407361) (mask!26272 thiss!1181)) (and (bvsge (index!38119 lt!407361) #b00000000000000000000000000000000) (bvslt (index!38119 lt!407361) (bvadd (mask!26272 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!901284 d!111777))

(declare-fun mapNonEmpty!29299 () Bool)

(declare-fun mapRes!29299 () Bool)

(declare-fun tp!56341 () Bool)

(declare-fun e!504741 () Bool)

(assert (=> mapNonEmpty!29299 (= mapRes!29299 (and tp!56341 e!504741))))

(declare-fun mapRest!29299 () (Array (_ BitVec 32) ValueCell!8721))

(declare-fun mapValue!29299 () ValueCell!8721)

(declare-fun mapKey!29299 () (_ BitVec 32))

(assert (=> mapNonEmpty!29299 (= mapRest!29293 (store mapRest!29299 mapKey!29299 mapValue!29299))))

(declare-fun mapIsEmpty!29299 () Bool)

(assert (=> mapIsEmpty!29299 mapRes!29299))

(declare-fun condMapEmpty!29299 () Bool)

(declare-fun mapDefault!29299 () ValueCell!8721)

(assert (=> mapNonEmpty!29293 (= condMapEmpty!29299 (= mapRest!29293 ((as const (Array (_ BitVec 32) ValueCell!8721)) mapDefault!29299)))))

(declare-fun e!504740 () Bool)

(assert (=> mapNonEmpty!29293 (= tp!56332 (and e!504740 mapRes!29299))))

(declare-fun b!901477 () Bool)

(assert (=> b!901477 (= e!504741 tp_is_empty!18405)))

(declare-fun b!901478 () Bool)

(assert (=> b!901478 (= e!504740 tp_is_empty!18405)))

(assert (= (and mapNonEmpty!29293 condMapEmpty!29299) mapIsEmpty!29299))

(assert (= (and mapNonEmpty!29293 (not condMapEmpty!29299)) mapNonEmpty!29299))

(assert (= (and mapNonEmpty!29299 ((_ is ValueCellFull!8721) mapValue!29299)) b!901477))

(assert (= (and mapNonEmpty!29293 ((_ is ValueCellFull!8721) mapDefault!29299)) b!901478))

(declare-fun m!837823 () Bool)

(assert (=> mapNonEmpty!29299 m!837823))

(declare-fun b_lambda!13073 () Bool)

(assert (= b_lambda!13069 (or (and b!901277 b_free!16077) b_lambda!13073)))

(declare-fun b_lambda!13075 () Bool)

(assert (= b_lambda!13071 (or (and b!901277 b_free!16077) b_lambda!13075)))

(check-sat (not d!111755) (not d!111771) (not b!901345) (not b_lambda!13075) (not b!901405) (not b!901413) (not d!111769) (not b!901470) (not mapNonEmpty!29299) (not b!901469) (not b!901356) (not d!111759) (not b!901400) b_and!26435 (not b!901440) (not b_next!16077) (not b!901416) (not b!901436) (not bm!40159) (not b!901419) (not bm!40149) (not d!111753) (not b!901350) (not b!901407) (not b_lambda!13067) (not b!901468) (not bm!40146) (not bm!40145) (not b!901337) (not d!111757) (not bm!40147) (not bm!40162) (not d!111767) (not d!111763) (not b!901457) tp_is_empty!18405 (not b!901415) (not b!901443) (not d!111765) (not b!901409) (not b!901338) (not b_lambda!13073) (not b!901347))
(check-sat b_and!26435 (not b_next!16077))
