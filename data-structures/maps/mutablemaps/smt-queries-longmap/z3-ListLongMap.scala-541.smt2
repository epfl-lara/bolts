; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13974 () Bool)

(assert start!13974)

(declare-fun b!129396 () Bool)

(declare-fun b_free!2885 () Bool)

(declare-fun b_next!2885 () Bool)

(assert (=> b!129396 (= b_free!2885 (not b_next!2885))))

(declare-fun tp!11079 () Bool)

(declare-fun b_and!8021 () Bool)

(assert (=> b!129396 (= tp!11079 b_and!8021)))

(declare-fun b!129399 () Bool)

(declare-fun b_free!2887 () Bool)

(declare-fun b_next!2887 () Bool)

(assert (=> b!129399 (= b_free!2887 (not b_next!2887))))

(declare-fun tp!11077 () Bool)

(declare-fun b_and!8023 () Bool)

(assert (=> b!129399 (= tp!11077 b_and!8023)))

(declare-fun b!129384 () Bool)

(declare-fun e!84472 () Bool)

(declare-datatypes ((V!3459 0))(
  ( (V!3460 (val!1474 Int)) )
))
(declare-datatypes ((array!4738 0))(
  ( (array!4739 (arr!2242 (Array (_ BitVec 32) (_ BitVec 64))) (size!2508 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1086 0))(
  ( (ValueCellFull!1086 (v!3158 V!3459)) (EmptyCell!1086) )
))
(declare-datatypes ((array!4740 0))(
  ( (array!4741 (arr!2243 (Array (_ BitVec 32) ValueCell!1086)) (size!2509 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1080 0))(
  ( (LongMapFixedSize!1081 (defaultEntry!2824 Int) (mask!7102 (_ BitVec 32)) (extraKeys!2597 (_ BitVec 32)) (zeroValue!2683 V!3459) (minValue!2683 V!3459) (_size!589 (_ BitVec 32)) (_keys!4565 array!4738) (_values!2807 array!4740) (_vacant!589 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!870 0))(
  ( (Cell!871 (v!3159 LongMapFixedSize!1080)) )
))
(declare-datatypes ((LongMap!870 0))(
  ( (LongMap!871 (underlying!446 Cell!870)) )
))
(declare-fun thiss!992 () LongMap!870)

(assert (=> b!129384 (= e!84472 (and (= (size!2509 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!7102 (v!3159 (underlying!446 thiss!992))))) (= (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (size!2509 (_values!2807 (v!3159 (underlying!446 thiss!992))))) (bvsge (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!129385 () Bool)

(declare-fun e!84471 () Bool)

(assert (=> b!129385 (= e!84471 e!84472)))

(declare-fun res!62448 () Bool)

(assert (=> b!129385 (=> (not res!62448) (not e!84472))))

(declare-datatypes ((tuple2!2592 0))(
  ( (tuple2!2593 (_1!1306 (_ BitVec 64)) (_2!1306 V!3459)) )
))
(declare-datatypes ((List!1728 0))(
  ( (Nil!1725) (Cons!1724 (h!2328 tuple2!2592) (t!6139 List!1728)) )
))
(declare-datatypes ((ListLongMap!1699 0))(
  ( (ListLongMap!1700 (toList!865 List!1728)) )
))
(declare-fun lt!67149 () ListLongMap!1699)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!886 (ListLongMap!1699 (_ BitVec 64)) Bool)

(assert (=> b!129385 (= res!62448 (contains!886 lt!67149 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!1080)

(declare-datatypes ((tuple2!2594 0))(
  ( (tuple2!2595 (_1!1307 Bool) (_2!1307 LongMapFixedSize!1080)) )
))
(declare-fun lt!67148 () tuple2!2594)

(declare-fun update!188 (LongMapFixedSize!1080 (_ BitVec 64) V!3459) tuple2!2594)

(declare-fun get!1469 (ValueCell!1086 V!3459) V!3459)

(declare-fun dynLambda!421 (Int (_ BitVec 64)) V!3459)

(assert (=> b!129385 (= lt!67148 (update!188 newMap!16 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!129386 () Bool)

(declare-fun e!84469 () Bool)

(declare-fun e!84464 () Bool)

(assert (=> b!129386 (= e!84469 e!84464)))

(declare-fun b!129387 () Bool)

(declare-fun e!84466 () Bool)

(declare-fun tp_is_empty!2859 () Bool)

(assert (=> b!129387 (= e!84466 tp_is_empty!2859)))

(declare-fun b!129388 () Bool)

(declare-fun res!62443 () Bool)

(declare-fun e!84459 () Bool)

(assert (=> b!129388 (=> (not res!62443) (not e!84459))))

(assert (=> b!129388 (= res!62443 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!129389 () Bool)

(declare-fun res!62447 () Bool)

(assert (=> b!129389 (=> (not res!62447) (not e!84459))))

(assert (=> b!129389 (= res!62447 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7102 newMap!16)) (_size!589 (v!3159 (underlying!446 thiss!992)))))))

(declare-fun b!129390 () Bool)

(declare-fun e!84465 () Bool)

(declare-fun mapRes!4570 () Bool)

(assert (=> b!129390 (= e!84465 (and e!84466 mapRes!4570))))

(declare-fun condMapEmpty!4569 () Bool)

(declare-fun mapDefault!4570 () ValueCell!1086)

(assert (=> b!129390 (= condMapEmpty!4569 (= (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1086)) mapDefault!4570)))))

(declare-fun b!129391 () Bool)

(declare-fun e!84467 () Bool)

(assert (=> b!129391 (= e!84467 tp_is_empty!2859)))

(declare-fun b!129392 () Bool)

(assert (=> b!129392 (= e!84459 e!84471)))

(declare-fun res!62442 () Bool)

(assert (=> b!129392 (=> (not res!62442) (not e!84471))))

(declare-fun lt!67147 () ListLongMap!1699)

(assert (=> b!129392 (= res!62442 (and (= lt!67147 lt!67149) (not (= (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1395 (LongMapFixedSize!1080) ListLongMap!1699)

(assert (=> b!129392 (= lt!67149 (map!1395 newMap!16))))

(declare-fun getCurrentListMap!536 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 (_ BitVec 32) Int) ListLongMap!1699)

(assert (=> b!129392 (= lt!67147 (getCurrentListMap!536 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (_values!2807 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992))) (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) (minValue!2683 (v!3159 (underlying!446 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992)))))))

(declare-fun b!129393 () Bool)

(declare-fun e!84462 () Bool)

(assert (=> b!129393 (= e!84462 tp_is_empty!2859)))

(declare-fun b!129394 () Bool)

(declare-fun e!84461 () Bool)

(assert (=> b!129394 (= e!84464 e!84461)))

(declare-fun b!129395 () Bool)

(declare-fun e!84460 () Bool)

(declare-fun e!84458 () Bool)

(declare-fun mapRes!4569 () Bool)

(assert (=> b!129395 (= e!84460 (and e!84458 mapRes!4569))))

(declare-fun condMapEmpty!4570 () Bool)

(declare-fun mapDefault!4569 () ValueCell!1086)

(assert (=> b!129395 (= condMapEmpty!4570 (= (arr!2243 (_values!2807 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1086)) mapDefault!4569)))))

(declare-fun mapNonEmpty!4569 () Bool)

(declare-fun tp!11078 () Bool)

(assert (=> mapNonEmpty!4569 (= mapRes!4570 (and tp!11078 e!84467))))

(declare-fun mapKey!4570 () (_ BitVec 32))

(declare-fun mapRest!4570 () (Array (_ BitVec 32) ValueCell!1086))

(declare-fun mapValue!4569 () ValueCell!1086)

(assert (=> mapNonEmpty!4569 (= (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (store mapRest!4570 mapKey!4570 mapValue!4569))))

(declare-fun res!62446 () Bool)

(assert (=> start!13974 (=> (not res!62446) (not e!84459))))

(declare-fun valid!512 (LongMap!870) Bool)

(assert (=> start!13974 (= res!62446 (valid!512 thiss!992))))

(assert (=> start!13974 e!84459))

(assert (=> start!13974 e!84469))

(assert (=> start!13974 true))

(declare-fun e!84463 () Bool)

(assert (=> start!13974 e!84463))

(declare-fun mapIsEmpty!4569 () Bool)

(assert (=> mapIsEmpty!4569 mapRes!4569))

(declare-fun array_inv!1379 (array!4738) Bool)

(declare-fun array_inv!1380 (array!4740) Bool)

(assert (=> b!129396 (= e!84461 (and tp!11079 tp_is_empty!2859 (array_inv!1379 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (array_inv!1380 (_values!2807 (v!3159 (underlying!446 thiss!992)))) e!84465))))

(declare-fun b!129397 () Bool)

(declare-fun res!62444 () Bool)

(assert (=> b!129397 (=> (not res!62444) (not e!84459))))

(declare-fun valid!513 (LongMapFixedSize!1080) Bool)

(assert (=> b!129397 (= res!62444 (valid!513 newMap!16))))

(declare-fun mapNonEmpty!4570 () Bool)

(declare-fun tp!11080 () Bool)

(assert (=> mapNonEmpty!4570 (= mapRes!4569 (and tp!11080 e!84462))))

(declare-fun mapKey!4569 () (_ BitVec 32))

(declare-fun mapValue!4570 () ValueCell!1086)

(declare-fun mapRest!4569 () (Array (_ BitVec 32) ValueCell!1086))

(assert (=> mapNonEmpty!4570 (= (arr!2243 (_values!2807 newMap!16)) (store mapRest!4569 mapKey!4569 mapValue!4570))))

(declare-fun mapIsEmpty!4570 () Bool)

(assert (=> mapIsEmpty!4570 mapRes!4570))

(declare-fun b!129398 () Bool)

(declare-fun res!62445 () Bool)

(assert (=> b!129398 (=> (not res!62445) (not e!84472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!129398 (= res!62445 (validMask!0 (mask!7102 (v!3159 (underlying!446 thiss!992)))))))

(assert (=> b!129399 (= e!84463 (and tp!11077 tp_is_empty!2859 (array_inv!1379 (_keys!4565 newMap!16)) (array_inv!1380 (_values!2807 newMap!16)) e!84460))))

(declare-fun b!129400 () Bool)

(assert (=> b!129400 (= e!84458 tp_is_empty!2859)))

(assert (= (and start!13974 res!62446) b!129388))

(assert (= (and b!129388 res!62443) b!129397))

(assert (= (and b!129397 res!62444) b!129389))

(assert (= (and b!129389 res!62447) b!129392))

(assert (= (and b!129392 res!62442) b!129385))

(assert (= (and b!129385 res!62448) b!129398))

(assert (= (and b!129398 res!62445) b!129384))

(assert (= (and b!129390 condMapEmpty!4569) mapIsEmpty!4570))

(assert (= (and b!129390 (not condMapEmpty!4569)) mapNonEmpty!4569))

(get-info :version)

(assert (= (and mapNonEmpty!4569 ((_ is ValueCellFull!1086) mapValue!4569)) b!129391))

(assert (= (and b!129390 ((_ is ValueCellFull!1086) mapDefault!4570)) b!129387))

(assert (= b!129396 b!129390))

(assert (= b!129394 b!129396))

(assert (= b!129386 b!129394))

(assert (= start!13974 b!129386))

(assert (= (and b!129395 condMapEmpty!4570) mapIsEmpty!4569))

(assert (= (and b!129395 (not condMapEmpty!4570)) mapNonEmpty!4570))

(assert (= (and mapNonEmpty!4570 ((_ is ValueCellFull!1086) mapValue!4570)) b!129393))

(assert (= (and b!129395 ((_ is ValueCellFull!1086) mapDefault!4569)) b!129400))

(assert (= b!129399 b!129395))

(assert (= start!13974 b!129399))

(declare-fun b_lambda!5773 () Bool)

(assert (=> (not b_lambda!5773) (not b!129385)))

(declare-fun t!6136 () Bool)

(declare-fun tb!2373 () Bool)

(assert (=> (and b!129396 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992)))) t!6136) tb!2373))

(declare-fun result!3919 () Bool)

(assert (=> tb!2373 (= result!3919 tp_is_empty!2859)))

(assert (=> b!129385 t!6136))

(declare-fun b_and!8025 () Bool)

(assert (= b_and!8021 (and (=> t!6136 result!3919) b_and!8025)))

(declare-fun tb!2375 () Bool)

(declare-fun t!6138 () Bool)

(assert (=> (and b!129399 (= (defaultEntry!2824 newMap!16) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992)))) t!6138) tb!2375))

(declare-fun result!3923 () Bool)

(assert (= result!3923 result!3919))

(assert (=> b!129385 t!6138))

(declare-fun b_and!8027 () Bool)

(assert (= b_and!8023 (and (=> t!6138 result!3923) b_and!8027)))

(declare-fun m!152185 () Bool)

(assert (=> mapNonEmpty!4570 m!152185))

(declare-fun m!152187 () Bool)

(assert (=> b!129399 m!152187))

(declare-fun m!152189 () Bool)

(assert (=> b!129399 m!152189))

(declare-fun m!152191 () Bool)

(assert (=> b!129398 m!152191))

(declare-fun m!152193 () Bool)

(assert (=> b!129396 m!152193))

(declare-fun m!152195 () Bool)

(assert (=> b!129396 m!152195))

(declare-fun m!152197 () Bool)

(assert (=> start!13974 m!152197))

(declare-fun m!152199 () Bool)

(assert (=> mapNonEmpty!4569 m!152199))

(declare-fun m!152201 () Bool)

(assert (=> b!129397 m!152201))

(declare-fun m!152203 () Bool)

(assert (=> b!129385 m!152203))

(declare-fun m!152205 () Bool)

(assert (=> b!129385 m!152205))

(declare-fun m!152207 () Bool)

(assert (=> b!129385 m!152207))

(declare-fun m!152209 () Bool)

(assert (=> b!129385 m!152209))

(assert (=> b!129385 m!152209))

(declare-fun m!152211 () Bool)

(assert (=> b!129385 m!152211))

(assert (=> b!129385 m!152205))

(assert (=> b!129385 m!152209))

(assert (=> b!129385 m!152207))

(declare-fun m!152213 () Bool)

(assert (=> b!129385 m!152213))

(assert (=> b!129385 m!152203))

(assert (=> b!129392 m!152209))

(declare-fun m!152215 () Bool)

(assert (=> b!129392 m!152215))

(declare-fun m!152217 () Bool)

(assert (=> b!129392 m!152217))

(check-sat (not start!13974) (not b!129392) (not b_next!2887) b_and!8025 b_and!8027 (not b!129399) (not b_lambda!5773) (not mapNonEmpty!4570) tp_is_empty!2859 (not mapNonEmpty!4569) (not b!129398) (not b!129385) (not b_next!2885) (not b!129397) (not b!129396))
(check-sat b_and!8025 b_and!8027 (not b_next!2885) (not b_next!2887))
(get-model)

(declare-fun b_lambda!5777 () Bool)

(assert (= b_lambda!5773 (or (and b!129396 b_free!2885) (and b!129399 b_free!2887 (= (defaultEntry!2824 newMap!16) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))))) b_lambda!5777)))

(check-sat (not start!13974) (not b!129392) (not b_next!2887) b_and!8025 b_and!8027 (not b_lambda!5777) (not b!129399) (not mapNonEmpty!4570) tp_is_empty!2859 (not mapNonEmpty!4569) (not b!129398) (not b!129385) (not b_next!2885) (not b!129397) (not b!129396))
(check-sat b_and!8025 b_and!8027 (not b_next!2885) (not b_next!2887))
(get-model)

(declare-fun d!39315 () Bool)

(assert (=> d!39315 (= (array_inv!1379 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvsge (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!129396 d!39315))

(declare-fun d!39317 () Bool)

(assert (=> d!39317 (= (array_inv!1380 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvsge (size!2509 (_values!2807 (v!3159 (underlying!446 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!129396 d!39317))

(declare-fun d!39319 () Bool)

(assert (=> d!39319 (= (array_inv!1379 (_keys!4565 newMap!16)) (bvsge (size!2508 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!129399 d!39319))

(declare-fun d!39321 () Bool)

(assert (=> d!39321 (= (array_inv!1380 (_values!2807 newMap!16)) (bvsge (size!2509 (_values!2807 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!129399 d!39321))

(declare-fun d!39323 () Bool)

(assert (=> d!39323 (= (map!1395 newMap!16) (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun bs!5375 () Bool)

(assert (= bs!5375 d!39323))

(declare-fun m!152253 () Bool)

(assert (=> bs!5375 m!152253))

(assert (=> b!129392 d!39323))

(declare-fun b!129498 () Bool)

(declare-fun e!84549 () Bool)

(declare-fun e!84544 () Bool)

(assert (=> b!129498 (= e!84549 e!84544)))

(declare-fun res!62492 () Bool)

(declare-fun call!14029 () Bool)

(assert (=> b!129498 (= res!62492 call!14029)))

(assert (=> b!129498 (=> (not res!62492) (not e!84544))))

(declare-fun b!129499 () Bool)

(declare-fun e!84553 () Bool)

(assert (=> b!129499 (= e!84553 e!84549)))

(declare-fun c!23811 () Bool)

(assert (=> b!129499 (= c!23811 (not (= (bvand (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!14026 () ListLongMap!1699)

(declare-fun c!23809 () Bool)

(declare-fun call!14024 () ListLongMap!1699)

(declare-fun call!14025 () ListLongMap!1699)

(declare-fun call!14027 () ListLongMap!1699)

(declare-fun c!23808 () Bool)

(declare-fun bm!14021 () Bool)

(declare-fun +!167 (ListLongMap!1699 tuple2!2592) ListLongMap!1699)

(assert (=> bm!14021 (= call!14024 (+!167 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027)) (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!129500 () Bool)

(declare-fun e!84550 () Bool)

(declare-fun call!14028 () Bool)

(assert (=> b!129500 (= e!84550 (not call!14028))))

(declare-fun b!129501 () Bool)

(declare-fun res!62496 () Bool)

(assert (=> b!129501 (=> (not res!62496) (not e!84553))))

(assert (=> b!129501 (= res!62496 e!84550)))

(declare-fun c!23810 () Bool)

(assert (=> b!129501 (= c!23810 (not (= (bvand (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!14022 () Bool)

(declare-fun call!14030 () ListLongMap!1699)

(assert (=> bm!14022 (= call!14030 call!14024)))

(declare-fun lt!67214 () ListLongMap!1699)

(declare-fun e!84548 () Bool)

(declare-fun b!129502 () Bool)

(declare-fun apply!113 (ListLongMap!1699 (_ BitVec 64)) V!3459)

(assert (=> b!129502 (= e!84548 (= (apply!113 lt!67214 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!129502 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2509 (_values!2807 (v!3159 (underlying!446 thiss!992))))))))

(assert (=> b!129502 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun b!129503 () Bool)

(declare-datatypes ((Unit!4055 0))(
  ( (Unit!4056) )
))
(declare-fun e!84556 () Unit!4055)

(declare-fun Unit!4057 () Unit!4055)

(assert (=> b!129503 (= e!84556 Unit!4057)))

(declare-fun b!129504 () Bool)

(declare-fun res!62491 () Bool)

(assert (=> b!129504 (=> (not res!62491) (not e!84553))))

(declare-fun e!84547 () Bool)

(assert (=> b!129504 (= res!62491 e!84547)))

(declare-fun res!62494 () Bool)

(assert (=> b!129504 (=> res!62494 e!84547)))

(declare-fun e!84552 () Bool)

(assert (=> b!129504 (= res!62494 (not e!84552))))

(declare-fun res!62489 () Bool)

(assert (=> b!129504 (=> (not res!62489) (not e!84552))))

(assert (=> b!129504 (= res!62489 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun b!129505 () Bool)

(declare-fun e!84554 () ListLongMap!1699)

(assert (=> b!129505 (= e!84554 call!14030)))

(declare-fun bm!14023 () Bool)

(assert (=> bm!14023 (= call!14025 call!14026)))

(declare-fun b!129506 () Bool)

(assert (=> b!129506 (= e!84547 e!84548)))

(declare-fun res!62488 () Bool)

(assert (=> b!129506 (=> (not res!62488) (not e!84548))))

(assert (=> b!129506 (= res!62488 (contains!886 lt!67214 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!129506 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun bm!14024 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!134 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 (_ BitVec 32) Int) ListLongMap!1699)

(assert (=> bm!14024 (= call!14026 (getCurrentListMapNoExtraKeys!134 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (_values!2807 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992))) (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) (minValue!2683 (v!3159 (underlying!446 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992)))))))

(declare-fun b!129507 () Bool)

(declare-fun e!84551 () Bool)

(assert (=> b!129507 (= e!84550 e!84551)))

(declare-fun res!62490 () Bool)

(assert (=> b!129507 (= res!62490 call!14028)))

(assert (=> b!129507 (=> (not res!62490) (not e!84551))))

(declare-fun bm!14025 () Bool)

(assert (=> bm!14025 (= call!14028 (contains!886 lt!67214 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!39325 () Bool)

(assert (=> d!39325 e!84553))

(declare-fun res!62495 () Bool)

(assert (=> d!39325 (=> (not res!62495) (not e!84553))))

(assert (=> d!39325 (= res!62495 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun lt!67212 () ListLongMap!1699)

(assert (=> d!39325 (= lt!67214 lt!67212)))

(declare-fun lt!67209 () Unit!4055)

(assert (=> d!39325 (= lt!67209 e!84556)))

(declare-fun c!23807 () Bool)

(declare-fun e!84546 () Bool)

(assert (=> d!39325 (= c!23807 e!84546)))

(declare-fun res!62493 () Bool)

(assert (=> d!39325 (=> (not res!62493) (not e!84546))))

(assert (=> d!39325 (= res!62493 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun e!84555 () ListLongMap!1699)

(assert (=> d!39325 (= lt!67212 e!84555)))

(assert (=> d!39325 (= c!23808 (and (not (= (bvand (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39325 (validMask!0 (mask!7102 (v!3159 (underlying!446 thiss!992))))))

(assert (=> d!39325 (= (getCurrentListMap!536 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (_values!2807 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992))) (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) (minValue!2683 (v!3159 (underlying!446 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992)))) lt!67214)))

(declare-fun b!129508 () Bool)

(declare-fun e!84545 () ListLongMap!1699)

(assert (=> b!129508 (= e!84555 e!84545)))

(assert (=> b!129508 (= c!23809 (and (not (= (bvand (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!129509 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!129509 (= e!84546 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!14026 () Bool)

(assert (=> bm!14026 (= call!14029 (contains!886 lt!67214 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129510 () Bool)

(declare-fun c!23806 () Bool)

(assert (=> b!129510 (= c!23806 (and (not (= (bvand (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!129510 (= e!84545 e!84554)))

(declare-fun b!129511 () Bool)

(declare-fun lt!67217 () Unit!4055)

(assert (=> b!129511 (= e!84556 lt!67217)))

(declare-fun lt!67213 () ListLongMap!1699)

(assert (=> b!129511 (= lt!67213 (getCurrentListMapNoExtraKeys!134 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (_values!2807 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992))) (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) (minValue!2683 (v!3159 (underlying!446 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992)))))))

(declare-fun lt!67222 () (_ BitVec 64))

(assert (=> b!129511 (= lt!67222 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67219 () (_ BitVec 64))

(assert (=> b!129511 (= lt!67219 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!67215 () Unit!4055)

(declare-fun addStillContains!89 (ListLongMap!1699 (_ BitVec 64) V!3459 (_ BitVec 64)) Unit!4055)

(assert (=> b!129511 (= lt!67215 (addStillContains!89 lt!67213 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67219))))

(assert (=> b!129511 (contains!886 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67219)))

(declare-fun lt!67203 () Unit!4055)

(assert (=> b!129511 (= lt!67203 lt!67215)))

(declare-fun lt!67216 () ListLongMap!1699)

(assert (=> b!129511 (= lt!67216 (getCurrentListMapNoExtraKeys!134 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (_values!2807 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992))) (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) (minValue!2683 (v!3159 (underlying!446 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992)))))))

(declare-fun lt!67224 () (_ BitVec 64))

(assert (=> b!129511 (= lt!67224 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67207 () (_ BitVec 64))

(assert (=> b!129511 (= lt!67207 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!67210 () Unit!4055)

(declare-fun addApplyDifferent!89 (ListLongMap!1699 (_ BitVec 64) V!3459 (_ BitVec 64)) Unit!4055)

(assert (=> b!129511 (= lt!67210 (addApplyDifferent!89 lt!67216 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67207))))

(assert (=> b!129511 (= (apply!113 (+!167 lt!67216 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67207) (apply!113 lt!67216 lt!67207))))

(declare-fun lt!67221 () Unit!4055)

(assert (=> b!129511 (= lt!67221 lt!67210)))

(declare-fun lt!67223 () ListLongMap!1699)

(assert (=> b!129511 (= lt!67223 (getCurrentListMapNoExtraKeys!134 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (_values!2807 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992))) (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) (minValue!2683 (v!3159 (underlying!446 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992)))))))

(declare-fun lt!67208 () (_ BitVec 64))

(assert (=> b!129511 (= lt!67208 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67205 () (_ BitVec 64))

(assert (=> b!129511 (= lt!67205 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!67204 () Unit!4055)

(assert (=> b!129511 (= lt!67204 (addApplyDifferent!89 lt!67223 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67205))))

(assert (=> b!129511 (= (apply!113 (+!167 lt!67223 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67205) (apply!113 lt!67223 lt!67205))))

(declare-fun lt!67206 () Unit!4055)

(assert (=> b!129511 (= lt!67206 lt!67204)))

(declare-fun lt!67211 () ListLongMap!1699)

(assert (=> b!129511 (= lt!67211 (getCurrentListMapNoExtraKeys!134 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (_values!2807 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992))) (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) (minValue!2683 (v!3159 (underlying!446 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992)))))))

(declare-fun lt!67220 () (_ BitVec 64))

(assert (=> b!129511 (= lt!67220 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67218 () (_ BitVec 64))

(assert (=> b!129511 (= lt!67218 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!129511 (= lt!67217 (addApplyDifferent!89 lt!67211 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67218))))

(assert (=> b!129511 (= (apply!113 (+!167 lt!67211 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67218) (apply!113 lt!67211 lt!67218))))

(declare-fun b!129512 () Bool)

(assert (=> b!129512 (= e!84552 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!129513 () Bool)

(assert (=> b!129513 (= e!84545 call!14030)))

(declare-fun b!129514 () Bool)

(assert (=> b!129514 (= e!84549 (not call!14029))))

(declare-fun b!129515 () Bool)

(assert (=> b!129515 (= e!84544 (= (apply!113 lt!67214 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))

(declare-fun b!129516 () Bool)

(assert (=> b!129516 (= e!84551 (= (apply!113 lt!67214 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))

(declare-fun b!129517 () Bool)

(assert (=> b!129517 (= e!84555 (+!167 call!14024 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun b!129518 () Bool)

(assert (=> b!129518 (= e!84554 call!14027)))

(declare-fun bm!14027 () Bool)

(assert (=> bm!14027 (= call!14027 call!14025)))

(assert (= (and d!39325 c!23808) b!129517))

(assert (= (and d!39325 (not c!23808)) b!129508))

(assert (= (and b!129508 c!23809) b!129513))

(assert (= (and b!129508 (not c!23809)) b!129510))

(assert (= (and b!129510 c!23806) b!129505))

(assert (= (and b!129510 (not c!23806)) b!129518))

(assert (= (or b!129505 b!129518) bm!14027))

(assert (= (or b!129513 bm!14027) bm!14023))

(assert (= (or b!129513 b!129505) bm!14022))

(assert (= (or b!129517 bm!14023) bm!14024))

(assert (= (or b!129517 bm!14022) bm!14021))

(assert (= (and d!39325 res!62493) b!129509))

(assert (= (and d!39325 c!23807) b!129511))

(assert (= (and d!39325 (not c!23807)) b!129503))

(assert (= (and d!39325 res!62495) b!129504))

(assert (= (and b!129504 res!62489) b!129512))

(assert (= (and b!129504 (not res!62494)) b!129506))

(assert (= (and b!129506 res!62488) b!129502))

(assert (= (and b!129504 res!62491) b!129501))

(assert (= (and b!129501 c!23810) b!129507))

(assert (= (and b!129501 (not c!23810)) b!129500))

(assert (= (and b!129507 res!62490) b!129516))

(assert (= (or b!129507 b!129500) bm!14025))

(assert (= (and b!129501 res!62496) b!129499))

(assert (= (and b!129499 c!23811) b!129498))

(assert (= (and b!129499 (not c!23811)) b!129514))

(assert (= (and b!129498 res!62492) b!129515))

(assert (= (or b!129498 b!129514) bm!14026))

(declare-fun b_lambda!5779 () Bool)

(assert (=> (not b_lambda!5779) (not b!129502)))

(assert (=> b!129502 t!6136))

(declare-fun b_and!8037 () Bool)

(assert (= b_and!8025 (and (=> t!6136 result!3919) b_and!8037)))

(assert (=> b!129502 t!6138))

(declare-fun b_and!8039 () Bool)

(assert (= b_and!8027 (and (=> t!6138 result!3923) b_and!8039)))

(declare-fun m!152255 () Bool)

(assert (=> b!129512 m!152255))

(assert (=> b!129512 m!152255))

(declare-fun m!152257 () Bool)

(assert (=> b!129512 m!152257))

(declare-fun m!152259 () Bool)

(assert (=> bm!14021 m!152259))

(assert (=> d!39325 m!152191))

(assert (=> b!129511 m!152255))

(declare-fun m!152261 () Bool)

(assert (=> b!129511 m!152261))

(declare-fun m!152263 () Bool)

(assert (=> b!129511 m!152263))

(declare-fun m!152265 () Bool)

(assert (=> b!129511 m!152265))

(declare-fun m!152267 () Bool)

(assert (=> b!129511 m!152267))

(declare-fun m!152269 () Bool)

(assert (=> b!129511 m!152269))

(assert (=> b!129511 m!152261))

(declare-fun m!152271 () Bool)

(assert (=> b!129511 m!152271))

(declare-fun m!152273 () Bool)

(assert (=> b!129511 m!152273))

(declare-fun m!152275 () Bool)

(assert (=> b!129511 m!152275))

(declare-fun m!152277 () Bool)

(assert (=> b!129511 m!152277))

(assert (=> b!129511 m!152263))

(declare-fun m!152279 () Bool)

(assert (=> b!129511 m!152279))

(declare-fun m!152281 () Bool)

(assert (=> b!129511 m!152281))

(declare-fun m!152283 () Bool)

(assert (=> b!129511 m!152283))

(declare-fun m!152285 () Bool)

(assert (=> b!129511 m!152285))

(declare-fun m!152287 () Bool)

(assert (=> b!129511 m!152287))

(declare-fun m!152289 () Bool)

(assert (=> b!129511 m!152289))

(assert (=> b!129511 m!152287))

(declare-fun m!152291 () Bool)

(assert (=> b!129511 m!152291))

(assert (=> b!129511 m!152279))

(assert (=> b!129506 m!152255))

(assert (=> b!129506 m!152255))

(declare-fun m!152293 () Bool)

(assert (=> b!129506 m!152293))

(declare-fun m!152295 () Bool)

(assert (=> bm!14025 m!152295))

(assert (=> b!129502 m!152255))

(assert (=> b!129502 m!152205))

(declare-fun m!152297 () Bool)

(assert (=> b!129502 m!152297))

(assert (=> b!129502 m!152205))

(declare-fun m!152299 () Bool)

(assert (=> b!129502 m!152299))

(assert (=> b!129502 m!152297))

(assert (=> b!129502 m!152255))

(declare-fun m!152301 () Bool)

(assert (=> b!129502 m!152301))

(declare-fun m!152303 () Bool)

(assert (=> b!129515 m!152303))

(declare-fun m!152305 () Bool)

(assert (=> b!129516 m!152305))

(assert (=> bm!14024 m!152275))

(declare-fun m!152307 () Bool)

(assert (=> bm!14026 m!152307))

(assert (=> b!129509 m!152255))

(assert (=> b!129509 m!152255))

(assert (=> b!129509 m!152257))

(declare-fun m!152309 () Bool)

(assert (=> b!129517 m!152309))

(assert (=> b!129392 d!39325))

(declare-fun d!39327 () Bool)

(assert (=> d!39327 (= (valid!512 thiss!992) (valid!513 (v!3159 (underlying!446 thiss!992))))))

(declare-fun bs!5376 () Bool)

(assert (= bs!5376 d!39327))

(declare-fun m!152311 () Bool)

(assert (=> bs!5376 m!152311))

(assert (=> start!13974 d!39327))

(declare-fun d!39329 () Bool)

(assert (=> d!39329 (= (validMask!0 (mask!7102 (v!3159 (underlying!446 thiss!992)))) (and (or (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000001111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000011111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000001111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000011111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000001111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000011111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000001111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000011111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000111111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000001111111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000011111111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000111111111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000001111111111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000011111111111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000111111111111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000001111111111111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000011111111111111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000111111111111111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000001111111111111111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000011111111111111111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000111111111111111111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00001111111111111111111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00011111111111111111111111111111) (= (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!129398 d!39329))

(declare-fun d!39331 () Bool)

(declare-fun e!84562 () Bool)

(assert (=> d!39331 e!84562))

(declare-fun res!62499 () Bool)

(assert (=> d!39331 (=> res!62499 e!84562)))

(declare-fun lt!67233 () Bool)

(assert (=> d!39331 (= res!62499 (not lt!67233))))

(declare-fun lt!67236 () Bool)

(assert (=> d!39331 (= lt!67233 lt!67236)))

(declare-fun lt!67235 () Unit!4055)

(declare-fun e!84561 () Unit!4055)

(assert (=> d!39331 (= lt!67235 e!84561)))

(declare-fun c!23814 () Bool)

(assert (=> d!39331 (= c!23814 lt!67236)))

(declare-fun containsKey!172 (List!1728 (_ BitVec 64)) Bool)

(assert (=> d!39331 (= lt!67236 (containsKey!172 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> d!39331 (= (contains!886 lt!67149 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) lt!67233)))

(declare-fun b!129525 () Bool)

(declare-fun lt!67234 () Unit!4055)

(assert (=> b!129525 (= e!84561 lt!67234)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!121 (List!1728 (_ BitVec 64)) Unit!4055)

(assert (=> b!129525 (= lt!67234 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-datatypes ((Option!174 0))(
  ( (Some!173 (v!3163 V!3459)) (None!172) )
))
(declare-fun isDefined!122 (Option!174) Bool)

(declare-fun getValueByKey!168 (List!1728 (_ BitVec 64)) Option!174)

(assert (=> b!129525 (isDefined!122 (getValueByKey!168 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun b!129526 () Bool)

(declare-fun Unit!4058 () Unit!4055)

(assert (=> b!129526 (= e!84561 Unit!4058)))

(declare-fun b!129527 () Bool)

(assert (=> b!129527 (= e!84562 (isDefined!122 (getValueByKey!168 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(assert (= (and d!39331 c!23814) b!129525))

(assert (= (and d!39331 (not c!23814)) b!129526))

(assert (= (and d!39331 (not res!62499)) b!129527))

(assert (=> d!39331 m!152209))

(declare-fun m!152313 () Bool)

(assert (=> d!39331 m!152313))

(assert (=> b!129525 m!152209))

(declare-fun m!152315 () Bool)

(assert (=> b!129525 m!152315))

(assert (=> b!129525 m!152209))

(declare-fun m!152317 () Bool)

(assert (=> b!129525 m!152317))

(assert (=> b!129525 m!152317))

(declare-fun m!152319 () Bool)

(assert (=> b!129525 m!152319))

(assert (=> b!129527 m!152209))

(assert (=> b!129527 m!152317))

(assert (=> b!129527 m!152317))

(assert (=> b!129527 m!152319))

(assert (=> b!129385 d!39331))

(declare-fun bm!14076 () Bool)

(declare-fun call!14098 () ListLongMap!1699)

(declare-fun call!14087 () ListLongMap!1699)

(assert (=> bm!14076 (= call!14098 call!14087)))

(declare-fun b!129608 () Bool)

(declare-fun res!62538 () Bool)

(declare-fun e!84608 () Bool)

(assert (=> b!129608 (=> (not res!62538) (not e!84608))))

(declare-fun call!14101 () Bool)

(assert (=> b!129608 (= res!62538 call!14101)))

(declare-fun e!84622 () Bool)

(assert (=> b!129608 (= e!84622 e!84608)))

(declare-fun bm!14077 () Bool)

(declare-fun call!14079 () Unit!4055)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!58 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 (_ BitVec 64) Int) Unit!4055)

(assert (=> bm!14077 (= call!14079 (lemmaInListMapThenSeekEntryOrOpenFindsIt!58 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (defaultEntry!2824 newMap!16)))))

(declare-fun d!39333 () Bool)

(declare-fun e!84621 () Bool)

(assert (=> d!39333 e!84621))

(declare-fun res!62532 () Bool)

(assert (=> d!39333 (=> (not res!62532) (not e!84621))))

(declare-fun lt!67308 () tuple2!2594)

(assert (=> d!39333 (= res!62532 (valid!513 (_2!1307 lt!67308)))))

(declare-fun e!84606 () tuple2!2594)

(assert (=> d!39333 (= lt!67308 e!84606)))

(declare-fun c!23852 () Bool)

(assert (=> d!39333 (= c!23852 (= (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (bvneg (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(assert (=> d!39333 (valid!513 newMap!16)))

(assert (=> d!39333 (= (update!188 newMap!16 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!67308)))

(declare-fun b!129609 () Bool)

(declare-fun lt!67313 () tuple2!2594)

(declare-fun call!14094 () tuple2!2594)

(assert (=> b!129609 (= lt!67313 call!14094)))

(declare-fun e!84620 () tuple2!2594)

(assert (=> b!129609 (= e!84620 (tuple2!2595 (_1!1307 lt!67313) (_2!1307 lt!67313)))))

(declare-fun b!129610 () Bool)

(declare-fun e!84611 () Bool)

(declare-fun e!84618 () Bool)

(assert (=> b!129610 (= e!84611 e!84618)))

(declare-fun res!62531 () Bool)

(declare-fun call!14081 () Bool)

(assert (=> b!129610 (= res!62531 call!14081)))

(assert (=> b!129610 (=> (not res!62531) (not e!84618))))

(declare-fun bm!14078 () Bool)

(declare-fun call!14099 () Bool)

(declare-fun call!14086 () Bool)

(assert (=> bm!14078 (= call!14099 call!14086)))

(declare-datatypes ((SeekEntryResult!282 0))(
  ( (MissingZero!282 (index!3285 (_ BitVec 32))) (Found!282 (index!3286 (_ BitVec 32))) (Intermediate!282 (undefined!1094 Bool) (index!3287 (_ BitVec 32)) (x!15277 (_ BitVec 32))) (Undefined!282) (MissingVacant!282 (index!3288 (_ BitVec 32))) )
))
(declare-fun lt!67291 () SeekEntryResult!282)

(declare-fun bm!14079 () Bool)

(declare-fun lt!67312 () SeekEntryResult!282)

(declare-fun lt!67302 () SeekEntryResult!282)

(declare-fun lt!67301 () SeekEntryResult!282)

(declare-fun c!23846 () Bool)

(declare-fun c!23853 () Bool)

(declare-fun c!23847 () Bool)

(declare-fun c!23850 () Bool)

(declare-fun c!23848 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!14079 (= call!14086 (inRange!0 (ite c!23846 (ite c!23848 (index!3286 lt!67291) (ite c!23853 (index!3285 lt!67301) (index!3288 lt!67301))) (ite c!23847 (index!3286 lt!67302) (ite c!23850 (index!3285 lt!67312) (index!3288 lt!67312)))) (mask!7102 newMap!16)))))

(declare-fun b!129611 () Bool)

(declare-fun res!62534 () Bool)

(assert (=> b!129611 (= res!62534 call!14099)))

(declare-fun e!84625 () Bool)

(assert (=> b!129611 (=> (not res!62534) (not e!84625))))

(declare-fun bm!14080 () Bool)

(declare-fun call!14090 () SeekEntryResult!282)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4738 (_ BitVec 32)) SeekEntryResult!282)

(assert (=> bm!14080 (= call!14090 (seekEntryOrOpen!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(declare-fun b!129612 () Bool)

(declare-fun e!84616 () Bool)

(assert (=> b!129612 (= e!84616 ((_ is Undefined!282) lt!67301))))

(declare-fun b!129613 () Bool)

(declare-fun e!84612 () Unit!4055)

(declare-fun Unit!4059 () Unit!4055)

(assert (=> b!129613 (= e!84612 Unit!4059)))

(declare-fun lt!67316 () Unit!4055)

(assert (=> b!129613 (= lt!67316 call!14079)))

(declare-fun call!14082 () SeekEntryResult!282)

(assert (=> b!129613 (= lt!67291 call!14082)))

(declare-fun res!62537 () Bool)

(assert (=> b!129613 (= res!62537 ((_ is Found!282) lt!67291))))

(declare-fun e!84610 () Bool)

(assert (=> b!129613 (=> (not res!62537) (not e!84610))))

(assert (=> b!129613 e!84610))

(declare-fun lt!67306 () Unit!4055)

(assert (=> b!129613 (= lt!67306 lt!67316)))

(assert (=> b!129613 false))

(declare-fun b!129614 () Bool)

(declare-fun lt!67296 () Unit!4055)

(declare-fun lt!67292 () Unit!4055)

(assert (=> b!129614 (= lt!67296 lt!67292)))

(declare-fun call!14083 () ListLongMap!1699)

(assert (=> b!129614 (= call!14098 call!14083)))

(declare-fun lt!67295 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!58 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 V!3459 Int) Unit!4055)

(assert (=> b!129614 (= lt!67292 (lemmaChangeLongMinValueKeyThenAddPairToListMap!58 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) lt!67295 (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2824 newMap!16)))))

(assert (=> b!129614 (= lt!67295 (bvor (extraKeys!2597 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!84607 () tuple2!2594)

(assert (=> b!129614 (= e!84607 (tuple2!2595 true (LongMapFixedSize!1081 (defaultEntry!2824 newMap!16) (mask!7102 newMap!16) (bvor (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) (zeroValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!589 newMap!16) (_keys!4565 newMap!16) (_values!2807 newMap!16) (_vacant!589 newMap!16))))))

(declare-fun b!129615 () Bool)

(declare-fun c!23842 () Bool)

(declare-fun lt!67299 () SeekEntryResult!282)

(assert (=> b!129615 (= c!23842 ((_ is MissingVacant!282) lt!67299))))

(declare-fun e!84624 () tuple2!2594)

(declare-fun e!84614 () tuple2!2594)

(assert (=> b!129615 (= e!84624 e!84614)))

(declare-fun b!129616 () Bool)

(declare-fun res!62529 () Bool)

(declare-fun call!14092 () Bool)

(assert (=> b!129616 (= res!62529 call!14092)))

(assert (=> b!129616 (=> (not res!62529) (not e!84610))))

(declare-fun bm!14081 () Bool)

(declare-fun call!14088 () ListLongMap!1699)

(assert (=> bm!14081 (= call!14088 (map!1395 (_2!1307 lt!67308)))))

(declare-fun call!14084 () ListLongMap!1699)

(declare-fun lt!67305 () (_ BitVec 32))

(declare-fun bm!14082 () Bool)

(declare-fun c!23844 () Bool)

(declare-fun lt!67304 () array!4740)

(assert (=> bm!14082 (= call!14084 (getCurrentListMap!536 (_keys!4565 newMap!16) (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304) (mask!7102 newMap!16) (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun bm!14083 () Bool)

(assert (=> bm!14083 (= call!14082 call!14090)))

(declare-fun bm!14084 () Bool)

(assert (=> bm!14084 (= call!14092 call!14086)))

(declare-fun b!129617 () Bool)

(declare-fun lt!67311 () Unit!4055)

(assert (=> b!129617 (= e!84612 lt!67311)))

(declare-fun call!14085 () Unit!4055)

(assert (=> b!129617 (= lt!67311 call!14085)))

(assert (=> b!129617 (= lt!67301 call!14082)))

(assert (=> b!129617 (= c!23853 ((_ is MissingZero!282) lt!67301))))

(assert (=> b!129617 e!84622))

(declare-fun b!129618 () Bool)

(declare-fun res!62535 () Bool)

(assert (=> b!129618 (= res!62535 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3288 lt!67312)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!129618 (=> (not res!62535) (not e!84618))))

(declare-fun b!129619 () Bool)

(assert (=> b!129619 (= e!84611 ((_ is Undefined!282) lt!67312))))

(declare-fun bm!14085 () Bool)

(declare-fun updateHelperNewKey!58 (LongMapFixedSize!1080 (_ BitVec 64) V!3459 (_ BitVec 32)) tuple2!2594)

(assert (=> bm!14085 (= call!14094 (updateHelperNewKey!58 newMap!16 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299))))))

(declare-fun bm!14086 () Bool)

(declare-fun call!14102 () ListLongMap!1699)

(assert (=> bm!14086 (= call!14102 call!14084)))

(declare-fun b!129620 () Bool)

(declare-fun e!84615 () Bool)

(assert (=> b!129620 (= e!84616 e!84615)))

(declare-fun res!62530 () Bool)

(assert (=> b!129620 (= res!62530 call!14101)))

(assert (=> b!129620 (=> (not res!62530) (not e!84615))))

(declare-fun bm!14087 () Bool)

(declare-fun call!14080 () Bool)

(declare-fun call!14091 () Bool)

(assert (=> bm!14087 (= call!14080 call!14091)))

(declare-fun b!129621 () Bool)

(assert (=> b!129621 (= e!84614 e!84620)))

(declare-fun c!23849 () Bool)

(assert (=> b!129621 (= c!23849 ((_ is MissingZero!282) lt!67299))))

(declare-fun b!129622 () Bool)

(declare-fun c!23851 () Bool)

(assert (=> b!129622 (= c!23851 ((_ is MissingVacant!282) lt!67301))))

(assert (=> b!129622 (= e!84622 e!84616)))

(declare-fun bm!14088 () Bool)

(declare-fun call!14097 () Bool)

(assert (=> bm!14088 (= call!14097 call!14091)))

(declare-fun b!129623 () Bool)

(declare-fun e!84613 () Bool)

(assert (=> b!129623 (= e!84621 e!84613)))

(declare-fun c!23841 () Bool)

(assert (=> b!129623 (= c!23841 (_1!1307 lt!67308))))

(declare-fun b!129624 () Bool)

(declare-fun e!84605 () Unit!4055)

(declare-fun Unit!4060 () Unit!4055)

(assert (=> b!129624 (= e!84605 Unit!4060)))

(declare-fun lt!67310 () Unit!4055)

(assert (=> b!129624 (= lt!67310 call!14085)))

(declare-fun call!14093 () SeekEntryResult!282)

(assert (=> b!129624 (= lt!67312 call!14093)))

(assert (=> b!129624 (= c!23850 ((_ is MissingZero!282) lt!67312))))

(declare-fun e!84617 () Bool)

(assert (=> b!129624 e!84617))

(declare-fun lt!67297 () Unit!4055)

(assert (=> b!129624 (= lt!67297 lt!67310)))

(assert (=> b!129624 false))

(declare-fun bm!14089 () Bool)

(declare-fun arrayContainsKey!0 (array!4738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!14089 (= call!14091 (arrayContainsKey!0 (_keys!4565 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!129625 () Bool)

(declare-fun res!62533 () Bool)

(assert (=> b!129625 (= res!62533 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3288 lt!67301)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!129625 (=> (not res!62533) (not e!84615))))

(declare-fun e!84623 () ListLongMap!1699)

(declare-fun bm!14090 () Bool)

(assert (=> bm!14090 (= call!14087 (+!167 e!84623 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!23845 () Bool)

(assert (=> bm!14090 (= c!23845 c!23852)))

(declare-fun b!129626 () Bool)

(assert (=> b!129626 (= e!84606 e!84624)))

(assert (=> b!129626 (= lt!67299 (seekEntryOrOpen!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(assert (=> b!129626 (= c!23846 ((_ is Undefined!282) lt!67299))))

(declare-fun b!129627 () Bool)

(declare-fun lt!67309 () Unit!4055)

(assert (=> b!129627 (= e!84605 lt!67309)))

(assert (=> b!129627 (= lt!67309 call!14079)))

(assert (=> b!129627 (= lt!67302 call!14093)))

(declare-fun res!62541 () Bool)

(assert (=> b!129627 (= res!62541 ((_ is Found!282) lt!67302))))

(assert (=> b!129627 (=> (not res!62541) (not e!84625))))

(assert (=> b!129627 e!84625))

(declare-fun bm!14091 () Bool)

(declare-fun call!14095 () ListLongMap!1699)

(assert (=> bm!14091 (= call!14095 call!14084)))

(declare-fun b!129628 () Bool)

(assert (=> b!129628 (= e!84623 (ite c!23844 call!14083 call!14095))))

(declare-fun bm!14092 () Bool)

(declare-fun call!14089 () Bool)

(assert (=> bm!14092 (= call!14089 (contains!886 call!14102 (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))))))

(declare-fun b!129629 () Bool)

(declare-fun call!14100 () ListLongMap!1699)

(assert (=> b!129629 (= e!84613 (= call!14088 call!14100))))

(declare-fun b!129630 () Bool)

(assert (=> b!129630 (= e!84608 (not call!14097))))

(declare-fun bm!14093 () Bool)

(declare-fun call!14096 () ListLongMap!1699)

(assert (=> bm!14093 (= call!14083 call!14096)))

(declare-fun b!129631 () Bool)

(declare-fun res!62539 () Bool)

(declare-fun e!84619 () Bool)

(assert (=> b!129631 (=> (not res!62539) (not e!84619))))

(assert (=> b!129631 (= res!62539 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3285 lt!67312)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129632 () Bool)

(assert (=> b!129632 (= e!84625 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67302)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun bm!14094 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!58 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 (_ BitVec 64) Int) Unit!4055)

(assert (=> bm!14094 (= call!14085 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!58 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (defaultEntry!2824 newMap!16)))))

(declare-fun bm!14095 () Bool)

(assert (=> bm!14095 (= call!14101 call!14092)))

(declare-fun b!129633 () Bool)

(declare-fun res!62540 () Bool)

(assert (=> b!129633 (=> (not res!62540) (not e!84608))))

(assert (=> b!129633 (= res!62540 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3285 lt!67301)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129634 () Bool)

(declare-fun lt!67293 () Unit!4055)

(declare-fun lt!67298 () Unit!4055)

(assert (=> b!129634 (= lt!67293 lt!67298)))

(assert (=> b!129634 call!14089))

(declare-fun lemmaValidKeyInArrayIsInListMap!116 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 (_ BitVec 32) Int) Unit!4055)

(assert (=> b!129634 (= lt!67298 (lemmaValidKeyInArrayIsInListMap!116 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (index!3286 lt!67299) (defaultEntry!2824 newMap!16)))))

(assert (=> b!129634 (= lt!67304 (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))))))

(declare-fun lt!67300 () Unit!4055)

(declare-fun lt!67303 () Unit!4055)

(assert (=> b!129634 (= lt!67300 lt!67303)))

(assert (=> b!129634 (= call!14087 call!14096)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!58 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 (_ BitVec 32) (_ BitVec 64) V!3459 Int) Unit!4055)

(assert (=> b!129634 (= lt!67303 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!58 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (index!3286 lt!67299) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67315 () Unit!4055)

(assert (=> b!129634 (= lt!67315 e!84605)))

(assert (=> b!129634 (= c!23847 (contains!886 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> b!129634 (= e!84620 (tuple2!2595 true (LongMapFixedSize!1081 (defaultEntry!2824 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (_size!589 newMap!16) (_keys!4565 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (_vacant!589 newMap!16))))))

(declare-fun b!129635 () Bool)

(assert (=> b!129635 (= e!84618 (not call!14080))))

(declare-fun b!129636 () Bool)

(declare-fun res!62536 () Bool)

(assert (=> b!129636 (=> (not res!62536) (not e!84619))))

(assert (=> b!129636 (= res!62536 call!14081)))

(assert (=> b!129636 (= e!84617 e!84619)))

(declare-fun b!129637 () Bool)

(assert (=> b!129637 (= e!84610 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67291)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun b!129638 () Bool)

(assert (=> b!129638 (= e!84619 (not call!14080))))

(declare-fun b!129639 () Bool)

(assert (=> b!129639 (= e!84623 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun bm!14096 () Bool)

(assert (=> bm!14096 (= call!14100 (map!1395 newMap!16))))

(declare-fun bm!14097 () Bool)

(assert (=> bm!14097 (= call!14096 (getCurrentListMap!536 (_keys!4565 newMap!16) (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16)))) (mask!7102 newMap!16) (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) (zeroValue!2683 newMap!16) (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun b!129640 () Bool)

(assert (=> b!129640 (= e!84606 e!84607)))

(assert (=> b!129640 (= c!23844 (= (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129641 () Bool)

(declare-fun lt!67294 () Unit!4055)

(assert (=> b!129641 (= lt!67294 e!84612)))

(assert (=> b!129641 (= c!23848 call!14089)))

(assert (=> b!129641 (= e!84624 (tuple2!2595 false newMap!16))))

(declare-fun bm!14098 () Bool)

(assert (=> bm!14098 (= call!14093 call!14090)))

(declare-fun bm!14099 () Bool)

(assert (=> bm!14099 (= call!14081 call!14099)))

(declare-fun b!129642 () Bool)

(declare-fun lt!67307 () Unit!4055)

(declare-fun lt!67317 () Unit!4055)

(assert (=> b!129642 (= lt!67307 lt!67317)))

(assert (=> b!129642 (= call!14098 call!14095)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!58 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 V!3459 Int) Unit!4055)

(assert (=> b!129642 (= lt!67317 (lemmaChangeZeroKeyThenAddPairToListMap!58 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) lt!67305 (zeroValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2683 newMap!16) (defaultEntry!2824 newMap!16)))))

(assert (=> b!129642 (= lt!67305 (bvor (extraKeys!2597 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!129642 (= e!84607 (tuple2!2595 true (LongMapFixedSize!1081 (defaultEntry!2824 newMap!16) (mask!7102 newMap!16) (bvor (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2683 newMap!16) (_size!589 newMap!16) (_keys!4565 newMap!16) (_values!2807 newMap!16) (_vacant!589 newMap!16))))))

(declare-fun b!129643 () Bool)

(declare-fun lt!67314 () tuple2!2594)

(assert (=> b!129643 (= e!84614 (tuple2!2595 (_1!1307 lt!67314) (_2!1307 lt!67314)))))

(assert (=> b!129643 (= lt!67314 call!14094)))

(declare-fun b!129644 () Bool)

(declare-fun c!23843 () Bool)

(assert (=> b!129644 (= c!23843 ((_ is MissingVacant!282) lt!67312))))

(assert (=> b!129644 (= e!84617 e!84611)))

(declare-fun e!84609 () Bool)

(declare-fun b!129645 () Bool)

(assert (=> b!129645 (= e!84609 (= call!14088 (+!167 call!14100 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!129646 () Bool)

(assert (=> b!129646 (= e!84615 (not call!14097))))

(declare-fun b!129647 () Bool)

(assert (=> b!129647 (= e!84613 e!84609)))

(declare-fun res!62528 () Bool)

(assert (=> b!129647 (= res!62528 (contains!886 call!14088 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> b!129647 (=> (not res!62528) (not e!84609))))

(assert (= (and d!39333 c!23852) b!129640))

(assert (= (and d!39333 (not c!23852)) b!129626))

(assert (= (and b!129640 c!23844) b!129642))

(assert (= (and b!129640 (not c!23844)) b!129614))

(assert (= (or b!129642 b!129614) bm!14093))

(assert (= (or b!129642 b!129614) bm!14091))

(assert (= (or b!129642 b!129614) bm!14076))

(assert (= (and b!129626 c!23846) b!129641))

(assert (= (and b!129626 (not c!23846)) b!129615))

(assert (= (and b!129641 c!23848) b!129613))

(assert (= (and b!129641 (not c!23848)) b!129617))

(assert (= (and b!129613 res!62537) b!129616))

(assert (= (and b!129616 res!62529) b!129637))

(assert (= (and b!129617 c!23853) b!129608))

(assert (= (and b!129617 (not c!23853)) b!129622))

(assert (= (and b!129608 res!62538) b!129633))

(assert (= (and b!129633 res!62540) b!129630))

(assert (= (and b!129622 c!23851) b!129620))

(assert (= (and b!129622 (not c!23851)) b!129612))

(assert (= (and b!129620 res!62530) b!129625))

(assert (= (and b!129625 res!62533) b!129646))

(assert (= (or b!129608 b!129620) bm!14095))

(assert (= (or b!129630 b!129646) bm!14088))

(assert (= (or b!129616 bm!14095) bm!14084))

(assert (= (or b!129613 b!129617) bm!14083))

(assert (= (and b!129615 c!23842) b!129643))

(assert (= (and b!129615 (not c!23842)) b!129621))

(assert (= (and b!129621 c!23849) b!129609))

(assert (= (and b!129621 (not c!23849)) b!129634))

(assert (= (and b!129634 c!23847) b!129627))

(assert (= (and b!129634 (not c!23847)) b!129624))

(assert (= (and b!129627 res!62541) b!129611))

(assert (= (and b!129611 res!62534) b!129632))

(assert (= (and b!129624 c!23850) b!129636))

(assert (= (and b!129624 (not c!23850)) b!129644))

(assert (= (and b!129636 res!62536) b!129631))

(assert (= (and b!129631 res!62539) b!129638))

(assert (= (and b!129644 c!23843) b!129610))

(assert (= (and b!129644 (not c!23843)) b!129619))

(assert (= (and b!129610 res!62531) b!129618))

(assert (= (and b!129618 res!62535) b!129635))

(assert (= (or b!129636 b!129610) bm!14099))

(assert (= (or b!129638 b!129635) bm!14087))

(assert (= (or b!129611 bm!14099) bm!14078))

(assert (= (or b!129627 b!129624) bm!14098))

(assert (= (or b!129643 b!129609) bm!14085))

(assert (= (or b!129641 b!129634) bm!14086))

(assert (= (or bm!14083 bm!14098) bm!14080))

(assert (= (or bm!14084 bm!14078) bm!14079))

(assert (= (or bm!14088 bm!14087) bm!14089))

(assert (= (or b!129617 b!129624) bm!14094))

(assert (= (or b!129613 b!129627) bm!14077))

(assert (= (or b!129641 b!129634) bm!14092))

(assert (= (or bm!14091 bm!14086) bm!14082))

(assert (= (or bm!14093 b!129634) bm!14097))

(assert (= (or bm!14076 b!129634) bm!14090))

(assert (= (and bm!14090 c!23845) b!129628))

(assert (= (and bm!14090 (not c!23845)) b!129639))

(assert (= (and d!39333 res!62532) b!129623))

(assert (= (and b!129623 c!23841) b!129647))

(assert (= (and b!129623 (not c!23841)) b!129629))

(assert (= (and b!129647 res!62528) b!129645))

(assert (= (or b!129645 b!129629) bm!14096))

(assert (= (or b!129647 b!129645 b!129629) bm!14081))

(declare-fun m!152321 () Bool)

(assert (=> bm!14092 m!152321))

(declare-fun m!152323 () Bool)

(assert (=> bm!14092 m!152323))

(assert (=> bm!14085 m!152209))

(assert (=> bm!14085 m!152207))

(declare-fun m!152325 () Bool)

(assert (=> bm!14085 m!152325))

(declare-fun m!152327 () Bool)

(assert (=> bm!14081 m!152327))

(assert (=> bm!14096 m!152215))

(declare-fun m!152329 () Bool)

(assert (=> b!129637 m!152329))

(declare-fun m!152331 () Bool)

(assert (=> b!129634 m!152331))

(assert (=> b!129634 m!152253))

(assert (=> b!129634 m!152209))

(assert (=> b!129634 m!152207))

(declare-fun m!152333 () Bool)

(assert (=> b!129634 m!152333))

(assert (=> b!129634 m!152253))

(assert (=> b!129634 m!152209))

(declare-fun m!152335 () Bool)

(assert (=> b!129634 m!152335))

(declare-fun m!152337 () Bool)

(assert (=> b!129634 m!152337))

(assert (=> b!129626 m!152209))

(declare-fun m!152339 () Bool)

(assert (=> b!129626 m!152339))

(assert (=> bm!14077 m!152209))

(declare-fun m!152341 () Bool)

(assert (=> bm!14077 m!152341))

(assert (=> b!129614 m!152207))

(declare-fun m!152343 () Bool)

(assert (=> b!129614 m!152343))

(assert (=> bm!14080 m!152209))

(assert (=> bm!14080 m!152339))

(declare-fun m!152345 () Bool)

(assert (=> d!39333 m!152345))

(assert (=> d!39333 m!152201))

(declare-fun m!152347 () Bool)

(assert (=> bm!14079 m!152347))

(declare-fun m!152349 () Bool)

(assert (=> b!129625 m!152349))

(declare-fun m!152351 () Bool)

(assert (=> bm!14082 m!152351))

(declare-fun m!152353 () Bool)

(assert (=> b!129631 m!152353))

(declare-fun m!152355 () Bool)

(assert (=> b!129645 m!152355))

(assert (=> b!129647 m!152209))

(declare-fun m!152357 () Bool)

(assert (=> b!129647 m!152357))

(assert (=> b!129642 m!152207))

(declare-fun m!152359 () Bool)

(assert (=> b!129642 m!152359))

(declare-fun m!152361 () Bool)

(assert (=> b!129632 m!152361))

(declare-fun m!152363 () Bool)

(assert (=> b!129633 m!152363))

(assert (=> b!129639 m!152253))

(assert (=> bm!14097 m!152331))

(declare-fun m!152365 () Bool)

(assert (=> bm!14097 m!152365))

(assert (=> bm!14094 m!152209))

(declare-fun m!152367 () Bool)

(assert (=> bm!14094 m!152367))

(declare-fun m!152369 () Bool)

(assert (=> bm!14090 m!152369))

(assert (=> bm!14089 m!152209))

(declare-fun m!152371 () Bool)

(assert (=> bm!14089 m!152371))

(declare-fun m!152373 () Bool)

(assert (=> b!129618 m!152373))

(assert (=> b!129385 d!39333))

(declare-fun d!39335 () Bool)

(declare-fun c!23856 () Bool)

(assert (=> d!39335 (= c!23856 ((_ is ValueCellFull!1086) (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun e!84628 () V!3459)

(assert (=> d!39335 (= (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!84628)))

(declare-fun b!129652 () Bool)

(declare-fun get!1470 (ValueCell!1086 V!3459) V!3459)

(assert (=> b!129652 (= e!84628 (get!1470 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!129653 () Bool)

(declare-fun get!1471 (ValueCell!1086 V!3459) V!3459)

(assert (=> b!129653 (= e!84628 (get!1471 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39335 c!23856) b!129652))

(assert (= (and d!39335 (not c!23856)) b!129653))

(assert (=> b!129652 m!152203))

(assert (=> b!129652 m!152205))

(declare-fun m!152375 () Bool)

(assert (=> b!129652 m!152375))

(assert (=> b!129653 m!152203))

(assert (=> b!129653 m!152205))

(declare-fun m!152377 () Bool)

(assert (=> b!129653 m!152377))

(assert (=> b!129385 d!39335))

(declare-fun d!39337 () Bool)

(declare-fun res!62548 () Bool)

(declare-fun e!84631 () Bool)

(assert (=> d!39337 (=> (not res!62548) (not e!84631))))

(declare-fun simpleValid!88 (LongMapFixedSize!1080) Bool)

(assert (=> d!39337 (= res!62548 (simpleValid!88 newMap!16))))

(assert (=> d!39337 (= (valid!513 newMap!16) e!84631)))

(declare-fun b!129660 () Bool)

(declare-fun res!62549 () Bool)

(assert (=> b!129660 (=> (not res!62549) (not e!84631))))

(declare-fun arrayCountValidKeys!0 (array!4738 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!129660 (= res!62549 (= (arrayCountValidKeys!0 (_keys!4565 newMap!16) #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) (_size!589 newMap!16)))))

(declare-fun b!129661 () Bool)

(declare-fun res!62550 () Bool)

(assert (=> b!129661 (=> (not res!62550) (not e!84631))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4738 (_ BitVec 32)) Bool)

(assert (=> b!129661 (= res!62550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(declare-fun b!129662 () Bool)

(declare-datatypes ((List!1729 0))(
  ( (Nil!1726) (Cons!1725 (h!2329 (_ BitVec 64)) (t!6144 List!1729)) )
))
(declare-fun arrayNoDuplicates!0 (array!4738 (_ BitVec 32) List!1729) Bool)

(assert (=> b!129662 (= e!84631 (arrayNoDuplicates!0 (_keys!4565 newMap!16) #b00000000000000000000000000000000 Nil!1726))))

(assert (= (and d!39337 res!62548) b!129660))

(assert (= (and b!129660 res!62549) b!129661))

(assert (= (and b!129661 res!62550) b!129662))

(declare-fun m!152379 () Bool)

(assert (=> d!39337 m!152379))

(declare-fun m!152381 () Bool)

(assert (=> b!129660 m!152381))

(declare-fun m!152383 () Bool)

(assert (=> b!129661 m!152383))

(declare-fun m!152385 () Bool)

(assert (=> b!129662 m!152385))

(assert (=> b!129397 d!39337))

(declare-fun mapIsEmpty!4579 () Bool)

(declare-fun mapRes!4579 () Bool)

(assert (=> mapIsEmpty!4579 mapRes!4579))

(declare-fun b!129669 () Bool)

(declare-fun e!84637 () Bool)

(assert (=> b!129669 (= e!84637 tp_is_empty!2859)))

(declare-fun condMapEmpty!4579 () Bool)

(declare-fun mapDefault!4579 () ValueCell!1086)

(assert (=> mapNonEmpty!4569 (= condMapEmpty!4579 (= mapRest!4570 ((as const (Array (_ BitVec 32) ValueCell!1086)) mapDefault!4579)))))

(declare-fun e!84636 () Bool)

(assert (=> mapNonEmpty!4569 (= tp!11078 (and e!84636 mapRes!4579))))

(declare-fun mapNonEmpty!4579 () Bool)

(declare-fun tp!11095 () Bool)

(assert (=> mapNonEmpty!4579 (= mapRes!4579 (and tp!11095 e!84637))))

(declare-fun mapRest!4579 () (Array (_ BitVec 32) ValueCell!1086))

(declare-fun mapKey!4579 () (_ BitVec 32))

(declare-fun mapValue!4579 () ValueCell!1086)

(assert (=> mapNonEmpty!4579 (= mapRest!4570 (store mapRest!4579 mapKey!4579 mapValue!4579))))

(declare-fun b!129670 () Bool)

(assert (=> b!129670 (= e!84636 tp_is_empty!2859)))

(assert (= (and mapNonEmpty!4569 condMapEmpty!4579) mapIsEmpty!4579))

(assert (= (and mapNonEmpty!4569 (not condMapEmpty!4579)) mapNonEmpty!4579))

(assert (= (and mapNonEmpty!4579 ((_ is ValueCellFull!1086) mapValue!4579)) b!129669))

(assert (= (and mapNonEmpty!4569 ((_ is ValueCellFull!1086) mapDefault!4579)) b!129670))

(declare-fun m!152387 () Bool)

(assert (=> mapNonEmpty!4579 m!152387))

(declare-fun mapIsEmpty!4580 () Bool)

(declare-fun mapRes!4580 () Bool)

(assert (=> mapIsEmpty!4580 mapRes!4580))

(declare-fun b!129671 () Bool)

(declare-fun e!84639 () Bool)

(assert (=> b!129671 (= e!84639 tp_is_empty!2859)))

(declare-fun condMapEmpty!4580 () Bool)

(declare-fun mapDefault!4580 () ValueCell!1086)

(assert (=> mapNonEmpty!4570 (= condMapEmpty!4580 (= mapRest!4569 ((as const (Array (_ BitVec 32) ValueCell!1086)) mapDefault!4580)))))

(declare-fun e!84638 () Bool)

(assert (=> mapNonEmpty!4570 (= tp!11080 (and e!84638 mapRes!4580))))

(declare-fun mapNonEmpty!4580 () Bool)

(declare-fun tp!11096 () Bool)

(assert (=> mapNonEmpty!4580 (= mapRes!4580 (and tp!11096 e!84639))))

(declare-fun mapRest!4580 () (Array (_ BitVec 32) ValueCell!1086))

(declare-fun mapValue!4580 () ValueCell!1086)

(declare-fun mapKey!4580 () (_ BitVec 32))

(assert (=> mapNonEmpty!4580 (= mapRest!4569 (store mapRest!4580 mapKey!4580 mapValue!4580))))

(declare-fun b!129672 () Bool)

(assert (=> b!129672 (= e!84638 tp_is_empty!2859)))

(assert (= (and mapNonEmpty!4570 condMapEmpty!4580) mapIsEmpty!4580))

(assert (= (and mapNonEmpty!4570 (not condMapEmpty!4580)) mapNonEmpty!4580))

(assert (= (and mapNonEmpty!4580 ((_ is ValueCellFull!1086) mapValue!4580)) b!129671))

(assert (= (and mapNonEmpty!4570 ((_ is ValueCellFull!1086) mapDefault!4580)) b!129672))

(declare-fun m!152389 () Bool)

(assert (=> mapNonEmpty!4580 m!152389))

(declare-fun b_lambda!5781 () Bool)

(assert (= b_lambda!5779 (or (and b!129396 b_free!2885) (and b!129399 b_free!2887 (= (defaultEntry!2824 newMap!16) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))))) b_lambda!5781)))

(check-sat (not b!129525) (not b!129653) b_and!8037 (not b!129647) (not d!39331) (not b!129506) (not b_next!2885) (not bm!14085) (not b!129626) (not b_lambda!5777) (not b!129652) (not b!129516) tp_is_empty!2859 (not d!39323) (not b!129645) (not bm!14094) (not bm!14097) (not bm!14077) (not mapNonEmpty!4579) (not bm!14024) (not b!129661) (not bm!14089) b_and!8039 (not b!129527) (not b!129642) (not bm!14082) (not b!129662) (not b!129509) (not bm!14021) (not b!129660) (not b_next!2887) (not mapNonEmpty!4580) (not bm!14092) (not bm!14080) (not b!129517) (not b!129511) (not d!39333) (not bm!14025) (not d!39337) (not bm!14096) (not bm!14081) (not b!129634) (not d!39325) (not b!129515) (not bm!14026) (not b!129614) (not bm!14079) (not b!129502) (not b!129639) (not d!39327) (not bm!14090) (not b_lambda!5781) (not b!129512))
(check-sat b_and!8037 b_and!8039 (not b_next!2885) (not b_next!2887))
(get-model)

(declare-fun d!39339 () Bool)

(declare-fun e!84642 () Bool)

(assert (=> d!39339 e!84642))

(declare-fun res!62556 () Bool)

(assert (=> d!39339 (=> (not res!62556) (not e!84642))))

(declare-fun lt!67323 () SeekEntryResult!282)

(assert (=> d!39339 (= res!62556 ((_ is Found!282) lt!67323))))

(assert (=> d!39339 (= lt!67323 (seekEntryOrOpen!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(declare-fun lt!67322 () Unit!4055)

(declare-fun choose!794 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 (_ BitVec 64) Int) Unit!4055)

(assert (=> d!39339 (= lt!67322 (choose!794 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (defaultEntry!2824 newMap!16)))))

(assert (=> d!39339 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39339 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!58 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (defaultEntry!2824 newMap!16)) lt!67322)))

(declare-fun b!129677 () Bool)

(declare-fun res!62555 () Bool)

(assert (=> b!129677 (=> (not res!62555) (not e!84642))))

(assert (=> b!129677 (= res!62555 (inRange!0 (index!3286 lt!67323) (mask!7102 newMap!16)))))

(declare-fun b!129678 () Bool)

(assert (=> b!129678 (= e!84642 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67323)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> b!129678 (and (bvsge (index!3286 lt!67323) #b00000000000000000000000000000000) (bvslt (index!3286 lt!67323) (size!2508 (_keys!4565 newMap!16))))))

(assert (= (and d!39339 res!62556) b!129677))

(assert (= (and b!129677 res!62555) b!129678))

(assert (=> d!39339 m!152209))

(assert (=> d!39339 m!152339))

(assert (=> d!39339 m!152209))

(declare-fun m!152391 () Bool)

(assert (=> d!39339 m!152391))

(declare-fun m!152393 () Bool)

(assert (=> d!39339 m!152393))

(declare-fun m!152395 () Bool)

(assert (=> b!129677 m!152395))

(declare-fun m!152397 () Bool)

(assert (=> b!129678 m!152397))

(assert (=> bm!14077 d!39339))

(declare-fun d!39341 () Bool)

(declare-fun get!1472 (Option!174) V!3459)

(assert (=> d!39341 (= (apply!113 lt!67214 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1472 (getValueByKey!168 (toList!865 lt!67214) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!5377 () Bool)

(assert (= bs!5377 d!39341))

(assert (=> bs!5377 m!152255))

(declare-fun m!152399 () Bool)

(assert (=> bs!5377 m!152399))

(assert (=> bs!5377 m!152399))

(declare-fun m!152401 () Bool)

(assert (=> bs!5377 m!152401))

(assert (=> b!129502 d!39341))

(declare-fun d!39343 () Bool)

(declare-fun c!23857 () Bool)

(assert (=> d!39343 (= c!23857 ((_ is ValueCellFull!1086) (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!84643 () V!3459)

(assert (=> d!39343 (= (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!84643)))

(declare-fun b!129679 () Bool)

(assert (=> b!129679 (= e!84643 (get!1470 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!129680 () Bool)

(assert (=> b!129680 (= e!84643 (get!1471 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39343 c!23857) b!129679))

(assert (= (and d!39343 (not c!23857)) b!129680))

(assert (=> b!129679 m!152297))

(assert (=> b!129679 m!152205))

(declare-fun m!152403 () Bool)

(assert (=> b!129679 m!152403))

(assert (=> b!129680 m!152297))

(assert (=> b!129680 m!152205))

(declare-fun m!152405 () Bool)

(assert (=> b!129680 m!152405))

(assert (=> b!129502 d!39343))

(declare-fun b!129697 () Bool)

(declare-fun e!84653 () Bool)

(declare-fun e!84654 () Bool)

(assert (=> b!129697 (= e!84653 e!84654)))

(declare-fun c!23862 () Bool)

(declare-fun lt!67328 () SeekEntryResult!282)

(assert (=> b!129697 (= c!23862 ((_ is MissingVacant!282) lt!67328))))

(declare-fun d!39345 () Bool)

(assert (=> d!39345 e!84653))

(declare-fun c!23863 () Bool)

(assert (=> d!39345 (= c!23863 ((_ is MissingZero!282) lt!67328))))

(assert (=> d!39345 (= lt!67328 (seekEntryOrOpen!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(declare-fun lt!67329 () Unit!4055)

(declare-fun choose!795 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 (_ BitVec 64) Int) Unit!4055)

(assert (=> d!39345 (= lt!67329 (choose!795 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (defaultEntry!2824 newMap!16)))))

(assert (=> d!39345 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39345 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!58 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (defaultEntry!2824 newMap!16)) lt!67329)))

(declare-fun b!129698 () Bool)

(declare-fun res!62567 () Bool)

(declare-fun e!84652 () Bool)

(assert (=> b!129698 (=> (not res!62567) (not e!84652))))

(assert (=> b!129698 (= res!62567 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3288 lt!67328)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!129698 (and (bvsge (index!3288 lt!67328) #b00000000000000000000000000000000) (bvslt (index!3288 lt!67328) (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!129699 () Bool)

(declare-fun call!14108 () Bool)

(assert (=> b!129699 (= e!84652 (not call!14108))))

(declare-fun call!14107 () Bool)

(declare-fun bm!14104 () Bool)

(assert (=> bm!14104 (= call!14107 (inRange!0 (ite c!23863 (index!3285 lt!67328) (index!3288 lt!67328)) (mask!7102 newMap!16)))))

(declare-fun bm!14105 () Bool)

(assert (=> bm!14105 (= call!14108 (arrayContainsKey!0 (_keys!4565 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!129700 () Bool)

(declare-fun e!84655 () Bool)

(assert (=> b!129700 (= e!84653 e!84655)))

(declare-fun res!62565 () Bool)

(assert (=> b!129700 (= res!62565 call!14107)))

(assert (=> b!129700 (=> (not res!62565) (not e!84655))))

(declare-fun b!129701 () Bool)

(assert (=> b!129701 (= e!84655 (not call!14108))))

(declare-fun b!129702 () Bool)

(assert (=> b!129702 (= e!84654 ((_ is Undefined!282) lt!67328))))

(declare-fun b!129703 () Bool)

(assert (=> b!129703 (and (bvsge (index!3285 lt!67328) #b00000000000000000000000000000000) (bvslt (index!3285 lt!67328) (size!2508 (_keys!4565 newMap!16))))))

(declare-fun res!62568 () Bool)

(assert (=> b!129703 (= res!62568 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3285 lt!67328)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!129703 (=> (not res!62568) (not e!84655))))

(declare-fun b!129704 () Bool)

(declare-fun res!62566 () Bool)

(assert (=> b!129704 (=> (not res!62566) (not e!84652))))

(assert (=> b!129704 (= res!62566 call!14107)))

(assert (=> b!129704 (= e!84654 e!84652)))

(assert (= (and d!39345 c!23863) b!129700))

(assert (= (and d!39345 (not c!23863)) b!129697))

(assert (= (and b!129700 res!62565) b!129703))

(assert (= (and b!129703 res!62568) b!129701))

(assert (= (and b!129697 c!23862) b!129704))

(assert (= (and b!129697 (not c!23862)) b!129702))

(assert (= (and b!129704 res!62566) b!129698))

(assert (= (and b!129698 res!62567) b!129699))

(assert (= (or b!129700 b!129704) bm!14104))

(assert (= (or b!129701 b!129699) bm!14105))

(assert (=> d!39345 m!152209))

(assert (=> d!39345 m!152339))

(assert (=> d!39345 m!152209))

(declare-fun m!152407 () Bool)

(assert (=> d!39345 m!152407))

(assert (=> d!39345 m!152393))

(assert (=> bm!14105 m!152209))

(assert (=> bm!14105 m!152371))

(declare-fun m!152409 () Bool)

(assert (=> bm!14104 m!152409))

(declare-fun m!152411 () Bool)

(assert (=> b!129698 m!152411))

(declare-fun m!152413 () Bool)

(assert (=> b!129703 m!152413))

(assert (=> bm!14094 d!39345))

(declare-fun d!39347 () Bool)

(assert (=> d!39347 (isDefined!122 (getValueByKey!168 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun lt!67332 () Unit!4055)

(declare-fun choose!796 (List!1728 (_ BitVec 64)) Unit!4055)

(assert (=> d!39347 (= lt!67332 (choose!796 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun e!84658 () Bool)

(assert (=> d!39347 e!84658))

(declare-fun res!62571 () Bool)

(assert (=> d!39347 (=> (not res!62571) (not e!84658))))

(declare-fun isStrictlySorted!314 (List!1728) Bool)

(assert (=> d!39347 (= res!62571 (isStrictlySorted!314 (toList!865 lt!67149)))))

(assert (=> d!39347 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) lt!67332)))

(declare-fun b!129707 () Bool)

(assert (=> b!129707 (= e!84658 (containsKey!172 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (= (and d!39347 res!62571) b!129707))

(assert (=> d!39347 m!152209))

(assert (=> d!39347 m!152317))

(assert (=> d!39347 m!152317))

(assert (=> d!39347 m!152319))

(assert (=> d!39347 m!152209))

(declare-fun m!152415 () Bool)

(assert (=> d!39347 m!152415))

(declare-fun m!152417 () Bool)

(assert (=> d!39347 m!152417))

(assert (=> b!129707 m!152209))

(assert (=> b!129707 m!152313))

(assert (=> b!129525 d!39347))

(declare-fun d!39349 () Bool)

(declare-fun isEmpty!407 (Option!174) Bool)

(assert (=> d!39349 (= (isDefined!122 (getValueByKey!168 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))) (not (isEmpty!407 (getValueByKey!168 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))))

(declare-fun bs!5378 () Bool)

(assert (= bs!5378 d!39349))

(assert (=> bs!5378 m!152317))

(declare-fun m!152419 () Bool)

(assert (=> bs!5378 m!152419))

(assert (=> b!129525 d!39349))

(declare-fun e!84664 () Option!174)

(declare-fun b!129718 () Bool)

(assert (=> b!129718 (= e!84664 (getValueByKey!168 (t!6139 (toList!865 lt!67149)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun b!129716 () Bool)

(declare-fun e!84663 () Option!174)

(assert (=> b!129716 (= e!84663 (Some!173 (_2!1306 (h!2328 (toList!865 lt!67149)))))))

(declare-fun b!129717 () Bool)

(assert (=> b!129717 (= e!84663 e!84664)))

(declare-fun c!23869 () Bool)

(assert (=> b!129717 (= c!23869 (and ((_ is Cons!1724) (toList!865 lt!67149)) (not (= (_1!1306 (h!2328 (toList!865 lt!67149))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))))

(declare-fun b!129719 () Bool)

(assert (=> b!129719 (= e!84664 None!172)))

(declare-fun d!39351 () Bool)

(declare-fun c!23868 () Bool)

(assert (=> d!39351 (= c!23868 (and ((_ is Cons!1724) (toList!865 lt!67149)) (= (_1!1306 (h!2328 (toList!865 lt!67149))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(assert (=> d!39351 (= (getValueByKey!168 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) e!84663)))

(assert (= (and d!39351 c!23868) b!129716))

(assert (= (and d!39351 (not c!23868)) b!129717))

(assert (= (and b!129717 c!23869) b!129718))

(assert (= (and b!129717 (not c!23869)) b!129719))

(assert (=> b!129718 m!152209))

(declare-fun m!152421 () Bool)

(assert (=> b!129718 m!152421))

(assert (=> b!129525 d!39351))

(declare-fun d!39353 () Bool)

(declare-fun e!84666 () Bool)

(assert (=> d!39353 e!84666))

(declare-fun res!62572 () Bool)

(assert (=> d!39353 (=> res!62572 e!84666)))

(declare-fun lt!67333 () Bool)

(assert (=> d!39353 (= res!62572 (not lt!67333))))

(declare-fun lt!67336 () Bool)

(assert (=> d!39353 (= lt!67333 lt!67336)))

(declare-fun lt!67335 () Unit!4055)

(declare-fun e!84665 () Unit!4055)

(assert (=> d!39353 (= lt!67335 e!84665)))

(declare-fun c!23870 () Bool)

(assert (=> d!39353 (= c!23870 lt!67336)))

(assert (=> d!39353 (= lt!67336 (containsKey!172 (toList!865 lt!67214) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!39353 (= (contains!886 lt!67214 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!67333)))

(declare-fun b!129720 () Bool)

(declare-fun lt!67334 () Unit!4055)

(assert (=> b!129720 (= e!84665 lt!67334)))

(assert (=> b!129720 (= lt!67334 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67214) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!129720 (isDefined!122 (getValueByKey!168 (toList!865 lt!67214) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!129721 () Bool)

(declare-fun Unit!4061 () Unit!4055)

(assert (=> b!129721 (= e!84665 Unit!4061)))

(declare-fun b!129722 () Bool)

(assert (=> b!129722 (= e!84666 (isDefined!122 (getValueByKey!168 (toList!865 lt!67214) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!39353 c!23870) b!129720))

(assert (= (and d!39353 (not c!23870)) b!129721))

(assert (= (and d!39353 (not res!62572)) b!129722))

(assert (=> d!39353 m!152255))

(declare-fun m!152423 () Bool)

(assert (=> d!39353 m!152423))

(assert (=> b!129720 m!152255))

(declare-fun m!152425 () Bool)

(assert (=> b!129720 m!152425))

(assert (=> b!129720 m!152255))

(assert (=> b!129720 m!152399))

(assert (=> b!129720 m!152399))

(declare-fun m!152427 () Bool)

(assert (=> b!129720 m!152427))

(assert (=> b!129722 m!152255))

(assert (=> b!129722 m!152399))

(assert (=> b!129722 m!152399))

(assert (=> b!129722 m!152427))

(assert (=> b!129506 d!39353))

(declare-fun b!129723 () Bool)

(declare-fun e!84672 () Bool)

(declare-fun e!84667 () Bool)

(assert (=> b!129723 (= e!84672 e!84667)))

(declare-fun res!62577 () Bool)

(declare-fun call!14114 () Bool)

(assert (=> b!129723 (= res!62577 call!14114)))

(assert (=> b!129723 (=> (not res!62577) (not e!84667))))

(declare-fun b!129724 () Bool)

(declare-fun e!84676 () Bool)

(assert (=> b!129724 (= e!84676 e!84672)))

(declare-fun c!23876 () Bool)

(assert (=> b!129724 (= c!23876 (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!14111 () ListLongMap!1699)

(declare-fun call!14109 () ListLongMap!1699)

(declare-fun c!23873 () Bool)

(declare-fun call!14112 () ListLongMap!1699)

(declare-fun c!23874 () Bool)

(declare-fun call!14110 () ListLongMap!1699)

(declare-fun bm!14106 () Bool)

(assert (=> bm!14106 (= call!14109 (+!167 (ite c!23873 call!14111 (ite c!23874 call!14110 call!14112)) (ite (or c!23873 c!23874) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(declare-fun b!129725 () Bool)

(declare-fun e!84673 () Bool)

(declare-fun call!14113 () Bool)

(assert (=> b!129725 (= e!84673 (not call!14113))))

(declare-fun b!129726 () Bool)

(declare-fun res!62581 () Bool)

(assert (=> b!129726 (=> (not res!62581) (not e!84676))))

(assert (=> b!129726 (= res!62581 e!84673)))

(declare-fun c!23875 () Bool)

(assert (=> b!129726 (= c!23875 (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!14107 () Bool)

(declare-fun call!14115 () ListLongMap!1699)

(assert (=> bm!14107 (= call!14115 call!14109)))

(declare-fun b!129727 () Bool)

(declare-fun e!84671 () Bool)

(declare-fun lt!67348 () ListLongMap!1699)

(assert (=> b!129727 (= e!84671 (= (apply!113 lt!67348 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) (get!1469 (select (arr!2243 (_values!2807 newMap!16)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!129727 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2509 (_values!2807 newMap!16))))))

(assert (=> b!129727 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!129728 () Bool)

(declare-fun e!84679 () Unit!4055)

(declare-fun Unit!4062 () Unit!4055)

(assert (=> b!129728 (= e!84679 Unit!4062)))

(declare-fun b!129729 () Bool)

(declare-fun res!62576 () Bool)

(assert (=> b!129729 (=> (not res!62576) (not e!84676))))

(declare-fun e!84670 () Bool)

(assert (=> b!129729 (= res!62576 e!84670)))

(declare-fun res!62579 () Bool)

(assert (=> b!129729 (=> res!62579 e!84670)))

(declare-fun e!84675 () Bool)

(assert (=> b!129729 (= res!62579 (not e!84675))))

(declare-fun res!62574 () Bool)

(assert (=> b!129729 (=> (not res!62574) (not e!84675))))

(assert (=> b!129729 (= res!62574 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!129730 () Bool)

(declare-fun e!84677 () ListLongMap!1699)

(assert (=> b!129730 (= e!84677 call!14115)))

(declare-fun bm!14108 () Bool)

(assert (=> bm!14108 (= call!14110 call!14111)))

(declare-fun b!129731 () Bool)

(assert (=> b!129731 (= e!84670 e!84671)))

(declare-fun res!62573 () Bool)

(assert (=> b!129731 (=> (not res!62573) (not e!84671))))

(assert (=> b!129731 (= res!62573 (contains!886 lt!67348 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!129731 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun bm!14109 () Bool)

(assert (=> bm!14109 (= call!14111 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun b!129732 () Bool)

(declare-fun e!84674 () Bool)

(assert (=> b!129732 (= e!84673 e!84674)))

(declare-fun res!62575 () Bool)

(assert (=> b!129732 (= res!62575 call!14113)))

(assert (=> b!129732 (=> (not res!62575) (not e!84674))))

(declare-fun bm!14110 () Bool)

(assert (=> bm!14110 (= call!14113 (contains!886 lt!67348 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!39355 () Bool)

(assert (=> d!39355 e!84676))

(declare-fun res!62580 () Bool)

(assert (=> d!39355 (=> (not res!62580) (not e!84676))))

(assert (=> d!39355 (= res!62580 (or (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))))

(declare-fun lt!67346 () ListLongMap!1699)

(assert (=> d!39355 (= lt!67348 lt!67346)))

(declare-fun lt!67343 () Unit!4055)

(assert (=> d!39355 (= lt!67343 e!84679)))

(declare-fun c!23872 () Bool)

(declare-fun e!84669 () Bool)

(assert (=> d!39355 (= c!23872 e!84669)))

(declare-fun res!62578 () Bool)

(assert (=> d!39355 (=> (not res!62578) (not e!84669))))

(assert (=> d!39355 (= res!62578 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun e!84678 () ListLongMap!1699)

(assert (=> d!39355 (= lt!67346 e!84678)))

(assert (=> d!39355 (= c!23873 (and (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39355 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39355 (= (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) lt!67348)))

(declare-fun b!129733 () Bool)

(declare-fun e!84668 () ListLongMap!1699)

(assert (=> b!129733 (= e!84678 e!84668)))

(assert (=> b!129733 (= c!23874 (and (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!129734 () Bool)

(assert (=> b!129734 (= e!84669 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!14111 () Bool)

(assert (=> bm!14111 (= call!14114 (contains!886 lt!67348 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129735 () Bool)

(declare-fun c!23871 () Bool)

(assert (=> b!129735 (= c!23871 (and (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!129735 (= e!84668 e!84677)))

(declare-fun b!129736 () Bool)

(declare-fun lt!67351 () Unit!4055)

(assert (=> b!129736 (= e!84679 lt!67351)))

(declare-fun lt!67347 () ListLongMap!1699)

(assert (=> b!129736 (= lt!67347 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67356 () (_ BitVec 64))

(assert (=> b!129736 (= lt!67356 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67353 () (_ BitVec 64))

(assert (=> b!129736 (= lt!67353 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67349 () Unit!4055)

(assert (=> b!129736 (= lt!67349 (addStillContains!89 lt!67347 lt!67356 (zeroValue!2683 newMap!16) lt!67353))))

(assert (=> b!129736 (contains!886 (+!167 lt!67347 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16))) lt!67353)))

(declare-fun lt!67337 () Unit!4055)

(assert (=> b!129736 (= lt!67337 lt!67349)))

(declare-fun lt!67350 () ListLongMap!1699)

(assert (=> b!129736 (= lt!67350 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67358 () (_ BitVec 64))

(assert (=> b!129736 (= lt!67358 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67341 () (_ BitVec 64))

(assert (=> b!129736 (= lt!67341 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67344 () Unit!4055)

(assert (=> b!129736 (= lt!67344 (addApplyDifferent!89 lt!67350 lt!67358 (minValue!2683 newMap!16) lt!67341))))

(assert (=> b!129736 (= (apply!113 (+!167 lt!67350 (tuple2!2593 lt!67358 (minValue!2683 newMap!16))) lt!67341) (apply!113 lt!67350 lt!67341))))

(declare-fun lt!67355 () Unit!4055)

(assert (=> b!129736 (= lt!67355 lt!67344)))

(declare-fun lt!67357 () ListLongMap!1699)

(assert (=> b!129736 (= lt!67357 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67342 () (_ BitVec 64))

(assert (=> b!129736 (= lt!67342 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67339 () (_ BitVec 64))

(assert (=> b!129736 (= lt!67339 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67338 () Unit!4055)

(assert (=> b!129736 (= lt!67338 (addApplyDifferent!89 lt!67357 lt!67342 (zeroValue!2683 newMap!16) lt!67339))))

(assert (=> b!129736 (= (apply!113 (+!167 lt!67357 (tuple2!2593 lt!67342 (zeroValue!2683 newMap!16))) lt!67339) (apply!113 lt!67357 lt!67339))))

(declare-fun lt!67340 () Unit!4055)

(assert (=> b!129736 (= lt!67340 lt!67338)))

(declare-fun lt!67345 () ListLongMap!1699)

(assert (=> b!129736 (= lt!67345 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67354 () (_ BitVec 64))

(assert (=> b!129736 (= lt!67354 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67352 () (_ BitVec 64))

(assert (=> b!129736 (= lt!67352 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!129736 (= lt!67351 (addApplyDifferent!89 lt!67345 lt!67354 (minValue!2683 newMap!16) lt!67352))))

(assert (=> b!129736 (= (apply!113 (+!167 lt!67345 (tuple2!2593 lt!67354 (minValue!2683 newMap!16))) lt!67352) (apply!113 lt!67345 lt!67352))))

(declare-fun b!129737 () Bool)

(assert (=> b!129737 (= e!84675 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!129738 () Bool)

(assert (=> b!129738 (= e!84668 call!14115)))

(declare-fun b!129739 () Bool)

(assert (=> b!129739 (= e!84672 (not call!14114))))

(declare-fun b!129740 () Bool)

(assert (=> b!129740 (= e!84667 (= (apply!113 lt!67348 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2683 newMap!16)))))

(declare-fun b!129741 () Bool)

(assert (=> b!129741 (= e!84674 (= (apply!113 lt!67348 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2683 newMap!16)))))

(declare-fun b!129742 () Bool)

(assert (=> b!129742 (= e!84678 (+!167 call!14109 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))

(declare-fun b!129743 () Bool)

(assert (=> b!129743 (= e!84677 call!14112)))

(declare-fun bm!14112 () Bool)

(assert (=> bm!14112 (= call!14112 call!14110)))

(assert (= (and d!39355 c!23873) b!129742))

(assert (= (and d!39355 (not c!23873)) b!129733))

(assert (= (and b!129733 c!23874) b!129738))

(assert (= (and b!129733 (not c!23874)) b!129735))

(assert (= (and b!129735 c!23871) b!129730))

(assert (= (and b!129735 (not c!23871)) b!129743))

(assert (= (or b!129730 b!129743) bm!14112))

(assert (= (or b!129738 bm!14112) bm!14108))

(assert (= (or b!129738 b!129730) bm!14107))

(assert (= (or b!129742 bm!14108) bm!14109))

(assert (= (or b!129742 bm!14107) bm!14106))

(assert (= (and d!39355 res!62578) b!129734))

(assert (= (and d!39355 c!23872) b!129736))

(assert (= (and d!39355 (not c!23872)) b!129728))

(assert (= (and d!39355 res!62580) b!129729))

(assert (= (and b!129729 res!62574) b!129737))

(assert (= (and b!129729 (not res!62579)) b!129731))

(assert (= (and b!129731 res!62573) b!129727))

(assert (= (and b!129729 res!62576) b!129726))

(assert (= (and b!129726 c!23875) b!129732))

(assert (= (and b!129726 (not c!23875)) b!129725))

(assert (= (and b!129732 res!62575) b!129741))

(assert (= (or b!129732 b!129725) bm!14110))

(assert (= (and b!129726 res!62581) b!129724))

(assert (= (and b!129724 c!23876) b!129723))

(assert (= (and b!129724 (not c!23876)) b!129739))

(assert (= (and b!129723 res!62577) b!129740))

(assert (= (or b!129723 b!129739) bm!14111))

(declare-fun b_lambda!5783 () Bool)

(assert (=> (not b_lambda!5783) (not b!129727)))

(declare-fun t!6146 () Bool)

(declare-fun tb!2381 () Bool)

(assert (=> (and b!129396 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16)) t!6146) tb!2381))

(declare-fun result!3933 () Bool)

(assert (=> tb!2381 (= result!3933 tp_is_empty!2859)))

(assert (=> b!129727 t!6146))

(declare-fun b_and!8041 () Bool)

(assert (= b_and!8037 (and (=> t!6146 result!3933) b_and!8041)))

(declare-fun t!6148 () Bool)

(declare-fun tb!2383 () Bool)

(assert (=> (and b!129399 (= (defaultEntry!2824 newMap!16) (defaultEntry!2824 newMap!16)) t!6148) tb!2383))

(declare-fun result!3935 () Bool)

(assert (= result!3935 result!3933))

(assert (=> b!129727 t!6148))

(declare-fun b_and!8043 () Bool)

(assert (= b_and!8039 (and (=> t!6148 result!3935) b_and!8043)))

(declare-fun m!152429 () Bool)

(assert (=> b!129737 m!152429))

(assert (=> b!129737 m!152429))

(declare-fun m!152431 () Bool)

(assert (=> b!129737 m!152431))

(declare-fun m!152433 () Bool)

(assert (=> bm!14106 m!152433))

(assert (=> d!39355 m!152393))

(assert (=> b!129736 m!152429))

(declare-fun m!152435 () Bool)

(assert (=> b!129736 m!152435))

(declare-fun m!152437 () Bool)

(assert (=> b!129736 m!152437))

(declare-fun m!152439 () Bool)

(assert (=> b!129736 m!152439))

(declare-fun m!152441 () Bool)

(assert (=> b!129736 m!152441))

(declare-fun m!152443 () Bool)

(assert (=> b!129736 m!152443))

(assert (=> b!129736 m!152435))

(declare-fun m!152445 () Bool)

(assert (=> b!129736 m!152445))

(declare-fun m!152447 () Bool)

(assert (=> b!129736 m!152447))

(declare-fun m!152449 () Bool)

(assert (=> b!129736 m!152449))

(declare-fun m!152451 () Bool)

(assert (=> b!129736 m!152451))

(assert (=> b!129736 m!152437))

(declare-fun m!152453 () Bool)

(assert (=> b!129736 m!152453))

(declare-fun m!152455 () Bool)

(assert (=> b!129736 m!152455))

(declare-fun m!152457 () Bool)

(assert (=> b!129736 m!152457))

(declare-fun m!152459 () Bool)

(assert (=> b!129736 m!152459))

(declare-fun m!152461 () Bool)

(assert (=> b!129736 m!152461))

(declare-fun m!152463 () Bool)

(assert (=> b!129736 m!152463))

(assert (=> b!129736 m!152461))

(declare-fun m!152465 () Bool)

(assert (=> b!129736 m!152465))

(assert (=> b!129736 m!152453))

(assert (=> b!129731 m!152429))

(assert (=> b!129731 m!152429))

(declare-fun m!152467 () Bool)

(assert (=> b!129731 m!152467))

(declare-fun m!152469 () Bool)

(assert (=> bm!14110 m!152469))

(assert (=> b!129727 m!152429))

(declare-fun m!152471 () Bool)

(assert (=> b!129727 m!152471))

(declare-fun m!152473 () Bool)

(assert (=> b!129727 m!152473))

(assert (=> b!129727 m!152471))

(declare-fun m!152475 () Bool)

(assert (=> b!129727 m!152475))

(assert (=> b!129727 m!152473))

(assert (=> b!129727 m!152429))

(declare-fun m!152477 () Bool)

(assert (=> b!129727 m!152477))

(declare-fun m!152479 () Bool)

(assert (=> b!129740 m!152479))

(declare-fun m!152481 () Bool)

(assert (=> b!129741 m!152481))

(assert (=> bm!14109 m!152449))

(declare-fun m!152483 () Bool)

(assert (=> bm!14111 m!152483))

(assert (=> b!129734 m!152429))

(assert (=> b!129734 m!152429))

(assert (=> b!129734 m!152431))

(declare-fun m!152485 () Bool)

(assert (=> b!129742 m!152485))

(assert (=> d!39323 d!39355))

(declare-fun d!39357 () Bool)

(declare-fun e!84682 () Bool)

(assert (=> d!39357 e!84682))

(declare-fun res!62584 () Bool)

(assert (=> d!39357 (=> (not res!62584) (not e!84682))))

(assert (=> d!39357 (= res!62584 (and (bvsge (index!3286 lt!67299) #b00000000000000000000000000000000) (bvslt (index!3286 lt!67299) (size!2508 (_keys!4565 newMap!16)))))))

(declare-fun lt!67361 () Unit!4055)

(declare-fun choose!797 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 (_ BitVec 32) Int) Unit!4055)

(assert (=> d!39357 (= lt!67361 (choose!797 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (index!3286 lt!67299) (defaultEntry!2824 newMap!16)))))

(assert (=> d!39357 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39357 (= (lemmaValidKeyInArrayIsInListMap!116 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (index!3286 lt!67299) (defaultEntry!2824 newMap!16)) lt!67361)))

(declare-fun b!129746 () Bool)

(assert (=> b!129746 (= e!84682 (contains!886 (getCurrentListMap!536 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299))))))

(assert (= (and d!39357 res!62584) b!129746))

(declare-fun m!152487 () Bool)

(assert (=> d!39357 m!152487))

(assert (=> d!39357 m!152393))

(declare-fun m!152489 () Bool)

(assert (=> b!129746 m!152489))

(assert (=> b!129746 m!152321))

(assert (=> b!129746 m!152489))

(assert (=> b!129746 m!152321))

(declare-fun m!152491 () Bool)

(assert (=> b!129746 m!152491))

(assert (=> b!129634 d!39357))

(declare-fun d!39359 () Bool)

(declare-fun e!84685 () Bool)

(assert (=> d!39359 e!84685))

(declare-fun res!62587 () Bool)

(assert (=> d!39359 (=> (not res!62587) (not e!84685))))

(assert (=> d!39359 (= res!62587 (and (bvsge (index!3286 lt!67299) #b00000000000000000000000000000000) (bvslt (index!3286 lt!67299) (size!2509 (_values!2807 newMap!16)))))))

(declare-fun lt!67364 () Unit!4055)

(declare-fun choose!798 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 (_ BitVec 32) (_ BitVec 64) V!3459 Int) Unit!4055)

(assert (=> d!39359 (= lt!67364 (choose!798 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (index!3286 lt!67299) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2824 newMap!16)))))

(assert (=> d!39359 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39359 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!58 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (index!3286 lt!67299) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2824 newMap!16)) lt!67364)))

(declare-fun b!129749 () Bool)

(assert (=> b!129749 (= e!84685 (= (+!167 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!536 (_keys!4565 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))))))

(assert (= (and d!39359 res!62587) b!129749))

(assert (=> d!39359 m!152209))

(assert (=> d!39359 m!152207))

(declare-fun m!152493 () Bool)

(assert (=> d!39359 m!152493))

(assert (=> d!39359 m!152393))

(assert (=> b!129749 m!152253))

(assert (=> b!129749 m!152253))

(declare-fun m!152495 () Bool)

(assert (=> b!129749 m!152495))

(assert (=> b!129749 m!152331))

(declare-fun m!152497 () Bool)

(assert (=> b!129749 m!152497))

(assert (=> b!129634 d!39359))

(declare-fun d!39361 () Bool)

(declare-fun e!84687 () Bool)

(assert (=> d!39361 e!84687))

(declare-fun res!62588 () Bool)

(assert (=> d!39361 (=> res!62588 e!84687)))

(declare-fun lt!67365 () Bool)

(assert (=> d!39361 (= res!62588 (not lt!67365))))

(declare-fun lt!67368 () Bool)

(assert (=> d!39361 (= lt!67365 lt!67368)))

(declare-fun lt!67367 () Unit!4055)

(declare-fun e!84686 () Unit!4055)

(assert (=> d!39361 (= lt!67367 e!84686)))

(declare-fun c!23877 () Bool)

(assert (=> d!39361 (= c!23877 lt!67368)))

(assert (=> d!39361 (= lt!67368 (containsKey!172 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> d!39361 (= (contains!886 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) lt!67365)))

(declare-fun b!129750 () Bool)

(declare-fun lt!67366 () Unit!4055)

(assert (=> b!129750 (= e!84686 lt!67366)))

(assert (=> b!129750 (= lt!67366 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> b!129750 (isDefined!122 (getValueByKey!168 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun b!129751 () Bool)

(declare-fun Unit!4063 () Unit!4055)

(assert (=> b!129751 (= e!84686 Unit!4063)))

(declare-fun b!129752 () Bool)

(assert (=> b!129752 (= e!84687 (isDefined!122 (getValueByKey!168 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(assert (= (and d!39361 c!23877) b!129750))

(assert (= (and d!39361 (not c!23877)) b!129751))

(assert (= (and d!39361 (not res!62588)) b!129752))

(assert (=> d!39361 m!152209))

(declare-fun m!152499 () Bool)

(assert (=> d!39361 m!152499))

(assert (=> b!129750 m!152209))

(declare-fun m!152501 () Bool)

(assert (=> b!129750 m!152501))

(assert (=> b!129750 m!152209))

(declare-fun m!152503 () Bool)

(assert (=> b!129750 m!152503))

(assert (=> b!129750 m!152503))

(declare-fun m!152505 () Bool)

(assert (=> b!129750 m!152505))

(assert (=> b!129752 m!152209))

(assert (=> b!129752 m!152503))

(assert (=> b!129752 m!152503))

(assert (=> b!129752 m!152505))

(assert (=> b!129634 d!39361))

(assert (=> b!129634 d!39355))

(declare-fun d!39363 () Bool)

(assert (=> d!39363 (= (get!1471 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!129653 d!39363))

(assert (=> b!129527 d!39349))

(assert (=> b!129527 d!39351))

(declare-fun d!39365 () Bool)

(assert (=> d!39365 (= (get!1470 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3158 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> b!129652 d!39365))

(declare-fun d!39367 () Bool)

(assert (=> d!39367 (= (inRange!0 (ite c!23846 (ite c!23848 (index!3286 lt!67291) (ite c!23853 (index!3285 lt!67301) (index!3288 lt!67301))) (ite c!23847 (index!3286 lt!67302) (ite c!23850 (index!3285 lt!67312) (index!3288 lt!67312)))) (mask!7102 newMap!16)) (and (bvsge (ite c!23846 (ite c!23848 (index!3286 lt!67291) (ite c!23853 (index!3285 lt!67301) (index!3288 lt!67301))) (ite c!23847 (index!3286 lt!67302) (ite c!23850 (index!3285 lt!67312) (index!3288 lt!67312)))) #b00000000000000000000000000000000) (bvslt (ite c!23846 (ite c!23848 (index!3286 lt!67291) (ite c!23853 (index!3285 lt!67301) (index!3288 lt!67301))) (ite c!23847 (index!3286 lt!67302) (ite c!23850 (index!3285 lt!67312) (index!3288 lt!67312)))) (bvadd (mask!7102 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!14079 d!39367))

(declare-fun b!129777 () Bool)

(declare-fun e!84707 () ListLongMap!1699)

(assert (=> b!129777 (= e!84707 (ListLongMap!1700 Nil!1725))))

(declare-fun b!129778 () Bool)

(declare-fun res!62600 () Bool)

(declare-fun e!84704 () Bool)

(assert (=> b!129778 (=> (not res!62600) (not e!84704))))

(declare-fun lt!67384 () ListLongMap!1699)

(assert (=> b!129778 (= res!62600 (not (contains!886 lt!67384 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!14115 () Bool)

(declare-fun call!14118 () ListLongMap!1699)

(assert (=> bm!14115 (= call!14118 (getCurrentListMapNoExtraKeys!134 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (_values!2807 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992))) (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) (minValue!2683 (v!3159 (underlying!446 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992)))))))

(declare-fun b!129779 () Bool)

(declare-fun e!84705 () Bool)

(declare-fun e!84702 () Bool)

(assert (=> b!129779 (= e!84705 e!84702)))

(assert (=> b!129779 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun res!62597 () Bool)

(assert (=> b!129779 (= res!62597 (contains!886 lt!67384 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!129779 (=> (not res!62597) (not e!84702))))

(declare-fun b!129780 () Bool)

(declare-fun e!84708 () ListLongMap!1699)

(assert (=> b!129780 (= e!84708 call!14118)))

(declare-fun b!129781 () Bool)

(declare-fun e!84706 () Bool)

(assert (=> b!129781 (= e!84705 e!84706)))

(declare-fun c!23887 () Bool)

(assert (=> b!129781 (= c!23887 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun b!129782 () Bool)

(assert (=> b!129782 (= e!84707 e!84708)))

(declare-fun c!23886 () Bool)

(assert (=> b!129782 (= c!23886 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!129783 () Bool)

(declare-fun lt!67386 () Unit!4055)

(declare-fun lt!67383 () Unit!4055)

(assert (=> b!129783 (= lt!67386 lt!67383)))

(declare-fun lt!67387 () V!3459)

(declare-fun lt!67388 () (_ BitVec 64))

(declare-fun lt!67389 () ListLongMap!1699)

(declare-fun lt!67385 () (_ BitVec 64))

(assert (=> b!129783 (not (contains!886 (+!167 lt!67389 (tuple2!2593 lt!67388 lt!67387)) lt!67385))))

(declare-fun addStillNotContains!60 (ListLongMap!1699 (_ BitVec 64) V!3459 (_ BitVec 64)) Unit!4055)

(assert (=> b!129783 (= lt!67383 (addStillNotContains!60 lt!67389 lt!67388 lt!67387 lt!67385))))

(assert (=> b!129783 (= lt!67385 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!129783 (= lt!67387 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!129783 (= lt!67388 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!129783 (= lt!67389 call!14118)))

(assert (=> b!129783 (= e!84708 (+!167 call!14118 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!129784 () Bool)

(assert (=> b!129784 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(assert (=> b!129784 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2509 (_values!2807 (v!3159 (underlying!446 thiss!992))))))))

(assert (=> b!129784 (= e!84702 (= (apply!113 lt!67384 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!129785 () Bool)

(assert (=> b!129785 (= e!84704 e!84705)))

(declare-fun c!23888 () Bool)

(declare-fun e!84703 () Bool)

(assert (=> b!129785 (= c!23888 e!84703)))

(declare-fun res!62598 () Bool)

(assert (=> b!129785 (=> (not res!62598) (not e!84703))))

(assert (=> b!129785 (= res!62598 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun d!39369 () Bool)

(assert (=> d!39369 e!84704))

(declare-fun res!62599 () Bool)

(assert (=> d!39369 (=> (not res!62599) (not e!84704))))

(assert (=> d!39369 (= res!62599 (not (contains!886 lt!67384 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39369 (= lt!67384 e!84707)))

(declare-fun c!23889 () Bool)

(assert (=> d!39369 (= c!23889 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(assert (=> d!39369 (validMask!0 (mask!7102 (v!3159 (underlying!446 thiss!992))))))

(assert (=> d!39369 (= (getCurrentListMapNoExtraKeys!134 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (_values!2807 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992))) (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) (minValue!2683 (v!3159 (underlying!446 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992)))) lt!67384)))

(declare-fun b!129786 () Bool)

(assert (=> b!129786 (= e!84703 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!129786 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!129787 () Bool)

(assert (=> b!129787 (= e!84706 (= lt!67384 (getCurrentListMapNoExtraKeys!134 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (_values!2807 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992))) (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) (minValue!2683 (v!3159 (underlying!446 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun b!129788 () Bool)

(declare-fun isEmpty!408 (ListLongMap!1699) Bool)

(assert (=> b!129788 (= e!84706 (isEmpty!408 lt!67384))))

(assert (= (and d!39369 c!23889) b!129777))

(assert (= (and d!39369 (not c!23889)) b!129782))

(assert (= (and b!129782 c!23886) b!129783))

(assert (= (and b!129782 (not c!23886)) b!129780))

(assert (= (or b!129783 b!129780) bm!14115))

(assert (= (and d!39369 res!62599) b!129778))

(assert (= (and b!129778 res!62600) b!129785))

(assert (= (and b!129785 res!62598) b!129786))

(assert (= (and b!129785 c!23888) b!129779))

(assert (= (and b!129785 (not c!23888)) b!129781))

(assert (= (and b!129779 res!62597) b!129784))

(assert (= (and b!129781 c!23887) b!129787))

(assert (= (and b!129781 (not c!23887)) b!129788))

(declare-fun b_lambda!5785 () Bool)

(assert (=> (not b_lambda!5785) (not b!129783)))

(assert (=> b!129783 t!6136))

(declare-fun b_and!8045 () Bool)

(assert (= b_and!8041 (and (=> t!6136 result!3919) b_and!8045)))

(assert (=> b!129783 t!6138))

(declare-fun b_and!8047 () Bool)

(assert (= b_and!8043 (and (=> t!6138 result!3923) b_and!8047)))

(declare-fun b_lambda!5787 () Bool)

(assert (=> (not b_lambda!5787) (not b!129784)))

(assert (=> b!129784 t!6136))

(declare-fun b_and!8049 () Bool)

(assert (= b_and!8045 (and (=> t!6136 result!3919) b_and!8049)))

(assert (=> b!129784 t!6138))

(declare-fun b_and!8051 () Bool)

(assert (= b_and!8047 (and (=> t!6138 result!3923) b_and!8051)))

(declare-fun m!152507 () Bool)

(assert (=> b!129788 m!152507))

(assert (=> b!129782 m!152255))

(assert (=> b!129782 m!152255))

(assert (=> b!129782 m!152257))

(declare-fun m!152509 () Bool)

(assert (=> b!129783 m!152509))

(assert (=> b!129783 m!152255))

(assert (=> b!129783 m!152297))

(assert (=> b!129783 m!152205))

(declare-fun m!152511 () Bool)

(assert (=> b!129783 m!152511))

(assert (=> b!129783 m!152297))

(assert (=> b!129783 m!152205))

(assert (=> b!129783 m!152299))

(declare-fun m!152513 () Bool)

(assert (=> b!129783 m!152513))

(declare-fun m!152515 () Bool)

(assert (=> b!129783 m!152515))

(assert (=> b!129783 m!152513))

(assert (=> b!129784 m!152255))

(assert (=> b!129784 m!152297))

(assert (=> b!129784 m!152205))

(assert (=> b!129784 m!152297))

(assert (=> b!129784 m!152205))

(assert (=> b!129784 m!152299))

(assert (=> b!129784 m!152255))

(declare-fun m!152517 () Bool)

(assert (=> b!129784 m!152517))

(declare-fun m!152519 () Bool)

(assert (=> d!39369 m!152519))

(assert (=> d!39369 m!152191))

(declare-fun m!152521 () Bool)

(assert (=> b!129778 m!152521))

(assert (=> b!129786 m!152255))

(assert (=> b!129786 m!152255))

(assert (=> b!129786 m!152257))

(declare-fun m!152523 () Bool)

(assert (=> b!129787 m!152523))

(assert (=> bm!14115 m!152523))

(assert (=> b!129779 m!152255))

(assert (=> b!129779 m!152255))

(declare-fun m!152525 () Bool)

(assert (=> b!129779 m!152525))

(assert (=> bm!14024 d!39369))

(declare-fun d!39371 () Bool)

(assert (=> d!39371 (= (validKeyInArray!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!129509 d!39371))

(declare-fun b!129789 () Bool)

(declare-fun e!84714 () Bool)

(declare-fun e!84709 () Bool)

(assert (=> b!129789 (= e!84714 e!84709)))

(declare-fun res!62605 () Bool)

(declare-fun call!14124 () Bool)

(assert (=> b!129789 (= res!62605 call!14124)))

(assert (=> b!129789 (=> (not res!62605) (not e!84709))))

(declare-fun b!129790 () Bool)

(declare-fun e!84718 () Bool)

(assert (=> b!129790 (= e!84718 e!84714)))

(declare-fun c!23895 () Bool)

(assert (=> b!129790 (= c!23895 (not (= (bvand (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!14122 () ListLongMap!1699)

(declare-fun c!23892 () Bool)

(declare-fun c!23893 () Bool)

(declare-fun call!14119 () ListLongMap!1699)

(declare-fun call!14121 () ListLongMap!1699)

(declare-fun call!14120 () ListLongMap!1699)

(declare-fun bm!14116 () Bool)

(assert (=> bm!14116 (= call!14119 (+!167 (ite c!23892 call!14121 (ite c!23893 call!14120 call!14122)) (ite (or c!23892 c!23893) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))))

(declare-fun b!129791 () Bool)

(declare-fun e!84715 () Bool)

(declare-fun call!14123 () Bool)

(assert (=> b!129791 (= e!84715 (not call!14123))))

(declare-fun b!129792 () Bool)

(declare-fun res!62609 () Bool)

(assert (=> b!129792 (=> (not res!62609) (not e!84718))))

(assert (=> b!129792 (= res!62609 e!84715)))

(declare-fun c!23894 () Bool)

(assert (=> b!129792 (= c!23894 (not (= (bvand (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!14117 () Bool)

(declare-fun call!14125 () ListLongMap!1699)

(assert (=> bm!14117 (= call!14125 call!14119)))

(declare-fun b!129793 () Bool)

(declare-fun lt!67401 () ListLongMap!1699)

(declare-fun e!84713 () Bool)

(assert (=> b!129793 (= e!84713 (= (apply!113 lt!67401 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) (get!1469 (select (arr!2243 (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!129793 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2509 (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16)))))))))

(assert (=> b!129793 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!129794 () Bool)

(declare-fun e!84721 () Unit!4055)

(declare-fun Unit!4064 () Unit!4055)

(assert (=> b!129794 (= e!84721 Unit!4064)))

(declare-fun b!129795 () Bool)

(declare-fun res!62604 () Bool)

(assert (=> b!129795 (=> (not res!62604) (not e!84718))))

(declare-fun e!84712 () Bool)

(assert (=> b!129795 (= res!62604 e!84712)))

(declare-fun res!62607 () Bool)

(assert (=> b!129795 (=> res!62607 e!84712)))

(declare-fun e!84717 () Bool)

(assert (=> b!129795 (= res!62607 (not e!84717))))

(declare-fun res!62602 () Bool)

(assert (=> b!129795 (=> (not res!62602) (not e!84717))))

(assert (=> b!129795 (= res!62602 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!129796 () Bool)

(declare-fun e!84719 () ListLongMap!1699)

(assert (=> b!129796 (= e!84719 call!14125)))

(declare-fun bm!14118 () Bool)

(assert (=> bm!14118 (= call!14120 call!14121)))

(declare-fun b!129797 () Bool)

(assert (=> b!129797 (= e!84712 e!84713)))

(declare-fun res!62601 () Bool)

(assert (=> b!129797 (=> (not res!62601) (not e!84713))))

(assert (=> b!129797 (= res!62601 (contains!886 lt!67401 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!129797 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun bm!14119 () Bool)

(assert (=> bm!14119 (= call!14121 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16)))) (mask!7102 newMap!16) (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) (zeroValue!2683 newMap!16) (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun b!129798 () Bool)

(declare-fun e!84716 () Bool)

(assert (=> b!129798 (= e!84715 e!84716)))

(declare-fun res!62603 () Bool)

(assert (=> b!129798 (= res!62603 call!14123)))

(assert (=> b!129798 (=> (not res!62603) (not e!84716))))

(declare-fun bm!14120 () Bool)

(assert (=> bm!14120 (= call!14123 (contains!886 lt!67401 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!39373 () Bool)

(assert (=> d!39373 e!84718))

(declare-fun res!62608 () Bool)

(assert (=> d!39373 (=> (not res!62608) (not e!84718))))

(assert (=> d!39373 (= res!62608 (or (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))))

(declare-fun lt!67399 () ListLongMap!1699)

(assert (=> d!39373 (= lt!67401 lt!67399)))

(declare-fun lt!67396 () Unit!4055)

(assert (=> d!39373 (= lt!67396 e!84721)))

(declare-fun c!23891 () Bool)

(declare-fun e!84711 () Bool)

(assert (=> d!39373 (= c!23891 e!84711)))

(declare-fun res!62606 () Bool)

(assert (=> d!39373 (=> (not res!62606) (not e!84711))))

(assert (=> d!39373 (= res!62606 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun e!84720 () ListLongMap!1699)

(assert (=> d!39373 (= lt!67399 e!84720)))

(assert (=> d!39373 (= c!23892 (and (not (= (bvand (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39373 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39373 (= (getCurrentListMap!536 (_keys!4565 newMap!16) (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16)))) (mask!7102 newMap!16) (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) (zeroValue!2683 newMap!16) (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) lt!67401)))

(declare-fun b!129799 () Bool)

(declare-fun e!84710 () ListLongMap!1699)

(assert (=> b!129799 (= e!84720 e!84710)))

(assert (=> b!129799 (= c!23893 (and (not (= (bvand (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!129800 () Bool)

(assert (=> b!129800 (= e!84711 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!14121 () Bool)

(assert (=> bm!14121 (= call!14124 (contains!886 lt!67401 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129801 () Bool)

(declare-fun c!23890 () Bool)

(assert (=> b!129801 (= c!23890 (and (not (= (bvand (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!129801 (= e!84710 e!84719)))

(declare-fun b!129802 () Bool)

(declare-fun lt!67404 () Unit!4055)

(assert (=> b!129802 (= e!84721 lt!67404)))

(declare-fun lt!67400 () ListLongMap!1699)

(assert (=> b!129802 (= lt!67400 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16)))) (mask!7102 newMap!16) (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) (zeroValue!2683 newMap!16) (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67409 () (_ BitVec 64))

(assert (=> b!129802 (= lt!67409 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67406 () (_ BitVec 64))

(assert (=> b!129802 (= lt!67406 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67402 () Unit!4055)

(assert (=> b!129802 (= lt!67402 (addStillContains!89 lt!67400 lt!67409 (zeroValue!2683 newMap!16) lt!67406))))

(assert (=> b!129802 (contains!886 (+!167 lt!67400 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16))) lt!67406)))

(declare-fun lt!67390 () Unit!4055)

(assert (=> b!129802 (= lt!67390 lt!67402)))

(declare-fun lt!67403 () ListLongMap!1699)

(assert (=> b!129802 (= lt!67403 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16)))) (mask!7102 newMap!16) (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) (zeroValue!2683 newMap!16) (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67411 () (_ BitVec 64))

(assert (=> b!129802 (= lt!67411 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67394 () (_ BitVec 64))

(assert (=> b!129802 (= lt!67394 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67397 () Unit!4055)

(assert (=> b!129802 (= lt!67397 (addApplyDifferent!89 lt!67403 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) lt!67394))))

(assert (=> b!129802 (= (apply!113 (+!167 lt!67403 (tuple2!2593 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))) lt!67394) (apply!113 lt!67403 lt!67394))))

(declare-fun lt!67408 () Unit!4055)

(assert (=> b!129802 (= lt!67408 lt!67397)))

(declare-fun lt!67410 () ListLongMap!1699)

(assert (=> b!129802 (= lt!67410 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16)))) (mask!7102 newMap!16) (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) (zeroValue!2683 newMap!16) (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67395 () (_ BitVec 64))

(assert (=> b!129802 (= lt!67395 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67392 () (_ BitVec 64))

(assert (=> b!129802 (= lt!67392 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67391 () Unit!4055)

(assert (=> b!129802 (= lt!67391 (addApplyDifferent!89 lt!67410 lt!67395 (zeroValue!2683 newMap!16) lt!67392))))

(assert (=> b!129802 (= (apply!113 (+!167 lt!67410 (tuple2!2593 lt!67395 (zeroValue!2683 newMap!16))) lt!67392) (apply!113 lt!67410 lt!67392))))

(declare-fun lt!67393 () Unit!4055)

(assert (=> b!129802 (= lt!67393 lt!67391)))

(declare-fun lt!67398 () ListLongMap!1699)

(assert (=> b!129802 (= lt!67398 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16)))) (mask!7102 newMap!16) (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) (zeroValue!2683 newMap!16) (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67407 () (_ BitVec 64))

(assert (=> b!129802 (= lt!67407 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67405 () (_ BitVec 64))

(assert (=> b!129802 (= lt!67405 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!129802 (= lt!67404 (addApplyDifferent!89 lt!67398 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) lt!67405))))

(assert (=> b!129802 (= (apply!113 (+!167 lt!67398 (tuple2!2593 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))) lt!67405) (apply!113 lt!67398 lt!67405))))

(declare-fun b!129803 () Bool)

(assert (=> b!129803 (= e!84717 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!129804 () Bool)

(assert (=> b!129804 (= e!84710 call!14125)))

(declare-fun b!129805 () Bool)

(assert (=> b!129805 (= e!84714 (not call!14124))))

(declare-fun b!129806 () Bool)

(assert (=> b!129806 (= e!84709 (= (apply!113 lt!67401 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))

(declare-fun b!129807 () Bool)

(assert (=> b!129807 (= e!84716 (= (apply!113 lt!67401 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2683 newMap!16)))))

(declare-fun b!129808 () Bool)

(assert (=> b!129808 (= e!84720 (+!167 call!14119 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))))))

(declare-fun b!129809 () Bool)

(assert (=> b!129809 (= e!84719 call!14122)))

(declare-fun bm!14122 () Bool)

(assert (=> bm!14122 (= call!14122 call!14120)))

(assert (= (and d!39373 c!23892) b!129808))

(assert (= (and d!39373 (not c!23892)) b!129799))

(assert (= (and b!129799 c!23893) b!129804))

(assert (= (and b!129799 (not c!23893)) b!129801))

(assert (= (and b!129801 c!23890) b!129796))

(assert (= (and b!129801 (not c!23890)) b!129809))

(assert (= (or b!129796 b!129809) bm!14122))

(assert (= (or b!129804 bm!14122) bm!14118))

(assert (= (or b!129804 b!129796) bm!14117))

(assert (= (or b!129808 bm!14118) bm!14119))

(assert (= (or b!129808 bm!14117) bm!14116))

(assert (= (and d!39373 res!62606) b!129800))

(assert (= (and d!39373 c!23891) b!129802))

(assert (= (and d!39373 (not c!23891)) b!129794))

(assert (= (and d!39373 res!62608) b!129795))

(assert (= (and b!129795 res!62602) b!129803))

(assert (= (and b!129795 (not res!62607)) b!129797))

(assert (= (and b!129797 res!62601) b!129793))

(assert (= (and b!129795 res!62604) b!129792))

(assert (= (and b!129792 c!23894) b!129798))

(assert (= (and b!129792 (not c!23894)) b!129791))

(assert (= (and b!129798 res!62603) b!129807))

(assert (= (or b!129798 b!129791) bm!14120))

(assert (= (and b!129792 res!62609) b!129790))

(assert (= (and b!129790 c!23895) b!129789))

(assert (= (and b!129790 (not c!23895)) b!129805))

(assert (= (and b!129789 res!62605) b!129806))

(assert (= (or b!129789 b!129805) bm!14121))

(declare-fun b_lambda!5789 () Bool)

(assert (=> (not b_lambda!5789) (not b!129793)))

(assert (=> b!129793 t!6146))

(declare-fun b_and!8053 () Bool)

(assert (= b_and!8049 (and (=> t!6146 result!3933) b_and!8053)))

(assert (=> b!129793 t!6148))

(declare-fun b_and!8055 () Bool)

(assert (= b_and!8051 (and (=> t!6148 result!3935) b_and!8055)))

(assert (=> b!129803 m!152429))

(assert (=> b!129803 m!152429))

(assert (=> b!129803 m!152431))

(declare-fun m!152527 () Bool)

(assert (=> bm!14116 m!152527))

(assert (=> d!39373 m!152393))

(assert (=> b!129802 m!152429))

(declare-fun m!152529 () Bool)

(assert (=> b!129802 m!152529))

(declare-fun m!152531 () Bool)

(assert (=> b!129802 m!152531))

(declare-fun m!152533 () Bool)

(assert (=> b!129802 m!152533))

(declare-fun m!152535 () Bool)

(assert (=> b!129802 m!152535))

(declare-fun m!152537 () Bool)

(assert (=> b!129802 m!152537))

(assert (=> b!129802 m!152529))

(declare-fun m!152539 () Bool)

(assert (=> b!129802 m!152539))

(declare-fun m!152541 () Bool)

(assert (=> b!129802 m!152541))

(declare-fun m!152543 () Bool)

(assert (=> b!129802 m!152543))

(declare-fun m!152545 () Bool)

(assert (=> b!129802 m!152545))

(assert (=> b!129802 m!152531))

(declare-fun m!152547 () Bool)

(assert (=> b!129802 m!152547))

(declare-fun m!152549 () Bool)

(assert (=> b!129802 m!152549))

(declare-fun m!152551 () Bool)

(assert (=> b!129802 m!152551))

(declare-fun m!152553 () Bool)

(assert (=> b!129802 m!152553))

(declare-fun m!152555 () Bool)

(assert (=> b!129802 m!152555))

(declare-fun m!152557 () Bool)

(assert (=> b!129802 m!152557))

(assert (=> b!129802 m!152555))

(declare-fun m!152559 () Bool)

(assert (=> b!129802 m!152559))

(assert (=> b!129802 m!152547))

(assert (=> b!129797 m!152429))

(assert (=> b!129797 m!152429))

(declare-fun m!152561 () Bool)

(assert (=> b!129797 m!152561))

(declare-fun m!152563 () Bool)

(assert (=> bm!14120 m!152563))

(assert (=> b!129793 m!152429))

(assert (=> b!129793 m!152471))

(declare-fun m!152565 () Bool)

(assert (=> b!129793 m!152565))

(assert (=> b!129793 m!152471))

(declare-fun m!152567 () Bool)

(assert (=> b!129793 m!152567))

(assert (=> b!129793 m!152565))

(assert (=> b!129793 m!152429))

(declare-fun m!152569 () Bool)

(assert (=> b!129793 m!152569))

(declare-fun m!152571 () Bool)

(assert (=> b!129806 m!152571))

(declare-fun m!152573 () Bool)

(assert (=> b!129807 m!152573))

(assert (=> bm!14119 m!152543))

(declare-fun m!152575 () Bool)

(assert (=> bm!14121 m!152575))

(assert (=> b!129800 m!152429))

(assert (=> b!129800 m!152429))

(assert (=> b!129800 m!152431))

(declare-fun m!152577 () Bool)

(assert (=> b!129808 m!152577))

(assert (=> bm!14097 d!39373))

(assert (=> bm!14096 d!39323))

(declare-fun d!39375 () Bool)

(declare-fun res!62614 () Bool)

(declare-fun e!84726 () Bool)

(assert (=> d!39375 (=> res!62614 e!84726)))

(assert (=> d!39375 (= res!62614 (= (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> d!39375 (= (arrayContainsKey!0 (_keys!4565 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b00000000000000000000000000000000) e!84726)))

(declare-fun b!129814 () Bool)

(declare-fun e!84727 () Bool)

(assert (=> b!129814 (= e!84726 e!84727)))

(declare-fun res!62615 () Bool)

(assert (=> b!129814 (=> (not res!62615) (not e!84727))))

(assert (=> b!129814 (= res!62615 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!129815 () Bool)

(assert (=> b!129815 (= e!84727 (arrayContainsKey!0 (_keys!4565 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!39375 (not res!62614)) b!129814))

(assert (= (and b!129814 res!62615) b!129815))

(assert (=> d!39375 m!152429))

(assert (=> b!129815 m!152209))

(declare-fun m!152579 () Bool)

(assert (=> b!129815 m!152579))

(assert (=> bm!14089 d!39375))

(declare-fun b!129828 () Bool)

(declare-fun e!84735 () SeekEntryResult!282)

(declare-fun e!84734 () SeekEntryResult!282)

(assert (=> b!129828 (= e!84735 e!84734)))

(declare-fun lt!67419 () (_ BitVec 64))

(declare-fun lt!67418 () SeekEntryResult!282)

(assert (=> b!129828 (= lt!67419 (select (arr!2242 (_keys!4565 newMap!16)) (index!3287 lt!67418)))))

(declare-fun c!23904 () Bool)

(assert (=> b!129828 (= c!23904 (= lt!67419 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun b!129829 () Bool)

(assert (=> b!129829 (= e!84735 Undefined!282)))

(declare-fun e!84736 () SeekEntryResult!282)

(declare-fun b!129830 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4738 (_ BitVec 32)) SeekEntryResult!282)

(assert (=> b!129830 (= e!84736 (seekKeyOrZeroReturnVacant!0 (x!15277 lt!67418) (index!3287 lt!67418) (index!3287 lt!67418) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(declare-fun b!129831 () Bool)

(assert (=> b!129831 (= e!84736 (MissingZero!282 (index!3287 lt!67418)))))

(declare-fun d!39377 () Bool)

(declare-fun lt!67420 () SeekEntryResult!282)

(assert (=> d!39377 (and (or ((_ is Undefined!282) lt!67420) (not ((_ is Found!282) lt!67420)) (and (bvsge (index!3286 lt!67420) #b00000000000000000000000000000000) (bvslt (index!3286 lt!67420) (size!2508 (_keys!4565 newMap!16))))) (or ((_ is Undefined!282) lt!67420) ((_ is Found!282) lt!67420) (not ((_ is MissingZero!282) lt!67420)) (and (bvsge (index!3285 lt!67420) #b00000000000000000000000000000000) (bvslt (index!3285 lt!67420) (size!2508 (_keys!4565 newMap!16))))) (or ((_ is Undefined!282) lt!67420) ((_ is Found!282) lt!67420) ((_ is MissingZero!282) lt!67420) (not ((_ is MissingVacant!282) lt!67420)) (and (bvsge (index!3288 lt!67420) #b00000000000000000000000000000000) (bvslt (index!3288 lt!67420) (size!2508 (_keys!4565 newMap!16))))) (or ((_ is Undefined!282) lt!67420) (ite ((_ is Found!282) lt!67420) (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67420)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (ite ((_ is MissingZero!282) lt!67420) (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3285 lt!67420)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!282) lt!67420) (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3288 lt!67420)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39377 (= lt!67420 e!84735)))

(declare-fun c!23903 () Bool)

(assert (=> d!39377 (= c!23903 (and ((_ is Intermediate!282) lt!67418) (undefined!1094 lt!67418)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4738 (_ BitVec 32)) SeekEntryResult!282)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!39377 (= lt!67418 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (mask!7102 newMap!16)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(assert (=> d!39377 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39377 (= (seekEntryOrOpen!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (mask!7102 newMap!16)) lt!67420)))

(declare-fun b!129832 () Bool)

(declare-fun c!23902 () Bool)

(assert (=> b!129832 (= c!23902 (= lt!67419 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!129832 (= e!84734 e!84736)))

(declare-fun b!129833 () Bool)

(assert (=> b!129833 (= e!84734 (Found!282 (index!3287 lt!67418)))))

(assert (= (and d!39377 c!23903) b!129829))

(assert (= (and d!39377 (not c!23903)) b!129828))

(assert (= (and b!129828 c!23904) b!129833))

(assert (= (and b!129828 (not c!23904)) b!129832))

(assert (= (and b!129832 c!23902) b!129831))

(assert (= (and b!129832 (not c!23902)) b!129830))

(declare-fun m!152581 () Bool)

(assert (=> b!129828 m!152581))

(assert (=> b!129830 m!152209))

(declare-fun m!152583 () Bool)

(assert (=> b!129830 m!152583))

(declare-fun m!152585 () Bool)

(assert (=> d!39377 m!152585))

(assert (=> d!39377 m!152393))

(assert (=> d!39377 m!152209))

(declare-fun m!152587 () Bool)

(assert (=> d!39377 m!152587))

(declare-fun m!152589 () Bool)

(assert (=> d!39377 m!152589))

(declare-fun m!152591 () Bool)

(assert (=> d!39377 m!152591))

(assert (=> d!39377 m!152587))

(assert (=> d!39377 m!152209))

(declare-fun m!152593 () Bool)

(assert (=> d!39377 m!152593))

(assert (=> bm!14080 d!39377))

(declare-fun d!39379 () Bool)

(declare-fun e!84738 () Bool)

(assert (=> d!39379 e!84738))

(declare-fun res!62616 () Bool)

(assert (=> d!39379 (=> res!62616 e!84738)))

(declare-fun lt!67421 () Bool)

(assert (=> d!39379 (= res!62616 (not lt!67421))))

(declare-fun lt!67424 () Bool)

(assert (=> d!39379 (= lt!67421 lt!67424)))

(declare-fun lt!67423 () Unit!4055)

(declare-fun e!84737 () Unit!4055)

(assert (=> d!39379 (= lt!67423 e!84737)))

(declare-fun c!23905 () Bool)

(assert (=> d!39379 (= c!23905 lt!67424)))

(assert (=> d!39379 (= lt!67424 (containsKey!172 (toList!865 lt!67214) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!39379 (= (contains!886 lt!67214 #b0000000000000000000000000000000000000000000000000000000000000000) lt!67421)))

(declare-fun b!129834 () Bool)

(declare-fun lt!67422 () Unit!4055)

(assert (=> b!129834 (= e!84737 lt!67422)))

(assert (=> b!129834 (= lt!67422 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67214) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!129834 (isDefined!122 (getValueByKey!168 (toList!865 lt!67214) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129835 () Bool)

(declare-fun Unit!4065 () Unit!4055)

(assert (=> b!129835 (= e!84737 Unit!4065)))

(declare-fun b!129836 () Bool)

(assert (=> b!129836 (= e!84738 (isDefined!122 (getValueByKey!168 (toList!865 lt!67214) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39379 c!23905) b!129834))

(assert (= (and d!39379 (not c!23905)) b!129835))

(assert (= (and d!39379 (not res!62616)) b!129836))

(declare-fun m!152595 () Bool)

(assert (=> d!39379 m!152595))

(declare-fun m!152597 () Bool)

(assert (=> b!129834 m!152597))

(declare-fun m!152599 () Bool)

(assert (=> b!129834 m!152599))

(assert (=> b!129834 m!152599))

(declare-fun m!152601 () Bool)

(assert (=> b!129834 m!152601))

(assert (=> b!129836 m!152599))

(assert (=> b!129836 m!152599))

(assert (=> b!129836 m!152601))

(assert (=> bm!14025 d!39379))

(assert (=> b!129639 d!39355))

(declare-fun d!39381 () Bool)

(declare-fun res!62621 () Bool)

(declare-fun e!84743 () Bool)

(assert (=> d!39381 (=> res!62621 e!84743)))

(assert (=> d!39381 (= res!62621 (and ((_ is Cons!1724) (toList!865 lt!67149)) (= (_1!1306 (h!2328 (toList!865 lt!67149))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(assert (=> d!39381 (= (containsKey!172 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) e!84743)))

(declare-fun b!129841 () Bool)

(declare-fun e!84744 () Bool)

(assert (=> b!129841 (= e!84743 e!84744)))

(declare-fun res!62622 () Bool)

(assert (=> b!129841 (=> (not res!62622) (not e!84744))))

(assert (=> b!129841 (= res!62622 (and (or (not ((_ is Cons!1724) (toList!865 lt!67149))) (bvsle (_1!1306 (h!2328 (toList!865 lt!67149))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))) ((_ is Cons!1724) (toList!865 lt!67149)) (bvslt (_1!1306 (h!2328 (toList!865 lt!67149))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(declare-fun b!129842 () Bool)

(assert (=> b!129842 (= e!84744 (containsKey!172 (t!6139 (toList!865 lt!67149)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (= (and d!39381 (not res!62621)) b!129841))

(assert (= (and b!129841 res!62622) b!129842))

(assert (=> b!129842 m!152209))

(declare-fun m!152603 () Bool)

(assert (=> b!129842 m!152603))

(assert (=> d!39331 d!39381))

(declare-fun b!129851 () Bool)

(declare-fun res!62632 () Bool)

(declare-fun e!84747 () Bool)

(assert (=> b!129851 (=> (not res!62632) (not e!84747))))

(assert (=> b!129851 (= res!62632 (and (= (size!2509 (_values!2807 newMap!16)) (bvadd (mask!7102 newMap!16) #b00000000000000000000000000000001)) (= (size!2508 (_keys!4565 newMap!16)) (size!2509 (_values!2807 newMap!16))) (bvsge (_size!589 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!589 newMap!16) (bvadd (mask!7102 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun d!39383 () Bool)

(declare-fun res!62634 () Bool)

(assert (=> d!39383 (=> (not res!62634) (not e!84747))))

(assert (=> d!39383 (= res!62634 (validMask!0 (mask!7102 newMap!16)))))

(assert (=> d!39383 (= (simpleValid!88 newMap!16) e!84747)))

(declare-fun b!129852 () Bool)

(declare-fun res!62633 () Bool)

(assert (=> b!129852 (=> (not res!62633) (not e!84747))))

(declare-fun size!2512 (LongMapFixedSize!1080) (_ BitVec 32))

(assert (=> b!129852 (= res!62633 (bvsge (size!2512 newMap!16) (_size!589 newMap!16)))))

(declare-fun b!129853 () Bool)

(declare-fun res!62631 () Bool)

(assert (=> b!129853 (=> (not res!62631) (not e!84747))))

(assert (=> b!129853 (= res!62631 (= (size!2512 newMap!16) (bvadd (_size!589 newMap!16) (bvsdiv (bvadd (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!129854 () Bool)

(assert (=> b!129854 (= e!84747 (and (bvsge (extraKeys!2597 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2597 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!589 newMap!16) #b00000000000000000000000000000000)))))

(assert (= (and d!39383 res!62634) b!129851))

(assert (= (and b!129851 res!62632) b!129852))

(assert (= (and b!129852 res!62633) b!129853))

(assert (= (and b!129853 res!62631) b!129854))

(assert (=> d!39383 m!152393))

(declare-fun m!152605 () Bool)

(assert (=> b!129852 m!152605))

(assert (=> b!129853 m!152605))

(assert (=> d!39337 d!39383))

(declare-fun d!39385 () Bool)

(assert (=> d!39385 (= (apply!113 lt!67216 lt!67207) (get!1472 (getValueByKey!168 (toList!865 lt!67216) lt!67207)))))

(declare-fun bs!5379 () Bool)

(assert (= bs!5379 d!39385))

(declare-fun m!152607 () Bool)

(assert (=> bs!5379 m!152607))

(assert (=> bs!5379 m!152607))

(declare-fun m!152609 () Bool)

(assert (=> bs!5379 m!152609))

(assert (=> b!129511 d!39385))

(declare-fun d!39387 () Bool)

(assert (=> d!39387 (= (apply!113 (+!167 lt!67211 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67218) (apply!113 lt!67211 lt!67218))))

(declare-fun lt!67427 () Unit!4055)

(declare-fun choose!799 (ListLongMap!1699 (_ BitVec 64) V!3459 (_ BitVec 64)) Unit!4055)

(assert (=> d!39387 (= lt!67427 (choose!799 lt!67211 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67218))))

(declare-fun e!84750 () Bool)

(assert (=> d!39387 e!84750))

(declare-fun res!62637 () Bool)

(assert (=> d!39387 (=> (not res!62637) (not e!84750))))

(assert (=> d!39387 (= res!62637 (contains!886 lt!67211 lt!67218))))

(assert (=> d!39387 (= (addApplyDifferent!89 lt!67211 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67218) lt!67427)))

(declare-fun b!129858 () Bool)

(assert (=> b!129858 (= e!84750 (not (= lt!67218 lt!67220)))))

(assert (= (and d!39387 res!62637) b!129858))

(assert (=> d!39387 m!152261))

(assert (=> d!39387 m!152261))

(assert (=> d!39387 m!152271))

(assert (=> d!39387 m!152273))

(declare-fun m!152611 () Bool)

(assert (=> d!39387 m!152611))

(declare-fun m!152613 () Bool)

(assert (=> d!39387 m!152613))

(assert (=> b!129511 d!39387))

(declare-fun d!39389 () Bool)

(assert (=> d!39389 (= (apply!113 lt!67211 lt!67218) (get!1472 (getValueByKey!168 (toList!865 lt!67211) lt!67218)))))

(declare-fun bs!5380 () Bool)

(assert (= bs!5380 d!39389))

(declare-fun m!152615 () Bool)

(assert (=> bs!5380 m!152615))

(assert (=> bs!5380 m!152615))

(declare-fun m!152617 () Bool)

(assert (=> bs!5380 m!152617))

(assert (=> b!129511 d!39389))

(assert (=> b!129511 d!39369))

(declare-fun d!39391 () Bool)

(assert (=> d!39391 (= (apply!113 (+!167 lt!67223 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67205) (get!1472 (getValueByKey!168 (toList!865 (+!167 lt!67223 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67205)))))

(declare-fun bs!5381 () Bool)

(assert (= bs!5381 d!39391))

(declare-fun m!152619 () Bool)

(assert (=> bs!5381 m!152619))

(assert (=> bs!5381 m!152619))

(declare-fun m!152621 () Bool)

(assert (=> bs!5381 m!152621))

(assert (=> b!129511 d!39391))

(declare-fun d!39393 () Bool)

(assert (=> d!39393 (= (apply!113 (+!167 lt!67216 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67207) (get!1472 (getValueByKey!168 (toList!865 (+!167 lt!67216 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67207)))))

(declare-fun bs!5382 () Bool)

(assert (= bs!5382 d!39393))

(declare-fun m!152623 () Bool)

(assert (=> bs!5382 m!152623))

(assert (=> bs!5382 m!152623))

(declare-fun m!152625 () Bool)

(assert (=> bs!5382 m!152625))

(assert (=> b!129511 d!39393))

(declare-fun d!39395 () Bool)

(assert (=> d!39395 (= (apply!113 (+!167 lt!67223 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67205) (apply!113 lt!67223 lt!67205))))

(declare-fun lt!67428 () Unit!4055)

(assert (=> d!39395 (= lt!67428 (choose!799 lt!67223 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67205))))

(declare-fun e!84751 () Bool)

(assert (=> d!39395 e!84751))

(declare-fun res!62638 () Bool)

(assert (=> d!39395 (=> (not res!62638) (not e!84751))))

(assert (=> d!39395 (= res!62638 (contains!886 lt!67223 lt!67205))))

(assert (=> d!39395 (= (addApplyDifferent!89 lt!67223 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67205) lt!67428)))

(declare-fun b!129859 () Bool)

(assert (=> b!129859 (= e!84751 (not (= lt!67205 lt!67208)))))

(assert (= (and d!39395 res!62638) b!129859))

(assert (=> d!39395 m!152279))

(assert (=> d!39395 m!152279))

(assert (=> d!39395 m!152281))

(assert (=> d!39395 m!152267))

(declare-fun m!152627 () Bool)

(assert (=> d!39395 m!152627))

(declare-fun m!152629 () Bool)

(assert (=> d!39395 m!152629))

(assert (=> b!129511 d!39395))

(declare-fun d!39397 () Bool)

(declare-fun e!84753 () Bool)

(assert (=> d!39397 e!84753))

(declare-fun res!62639 () Bool)

(assert (=> d!39397 (=> res!62639 e!84753)))

(declare-fun lt!67429 () Bool)

(assert (=> d!39397 (= res!62639 (not lt!67429))))

(declare-fun lt!67432 () Bool)

(assert (=> d!39397 (= lt!67429 lt!67432)))

(declare-fun lt!67431 () Unit!4055)

(declare-fun e!84752 () Unit!4055)

(assert (=> d!39397 (= lt!67431 e!84752)))

(declare-fun c!23906 () Bool)

(assert (=> d!39397 (= c!23906 lt!67432)))

(assert (=> d!39397 (= lt!67432 (containsKey!172 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67219))))

(assert (=> d!39397 (= (contains!886 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67219) lt!67429)))

(declare-fun b!129860 () Bool)

(declare-fun lt!67430 () Unit!4055)

(assert (=> b!129860 (= e!84752 lt!67430)))

(assert (=> b!129860 (= lt!67430 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67219))))

(assert (=> b!129860 (isDefined!122 (getValueByKey!168 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67219))))

(declare-fun b!129861 () Bool)

(declare-fun Unit!4066 () Unit!4055)

(assert (=> b!129861 (= e!84752 Unit!4066)))

(declare-fun b!129862 () Bool)

(assert (=> b!129862 (= e!84753 (isDefined!122 (getValueByKey!168 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67219)))))

(assert (= (and d!39397 c!23906) b!129860))

(assert (= (and d!39397 (not c!23906)) b!129861))

(assert (= (and d!39397 (not res!62639)) b!129862))

(declare-fun m!152631 () Bool)

(assert (=> d!39397 m!152631))

(declare-fun m!152633 () Bool)

(assert (=> b!129860 m!152633))

(declare-fun m!152635 () Bool)

(assert (=> b!129860 m!152635))

(assert (=> b!129860 m!152635))

(declare-fun m!152637 () Bool)

(assert (=> b!129860 m!152637))

(assert (=> b!129862 m!152635))

(assert (=> b!129862 m!152635))

(assert (=> b!129862 m!152637))

(assert (=> b!129511 d!39397))

(declare-fun d!39399 () Bool)

(declare-fun e!84756 () Bool)

(assert (=> d!39399 e!84756))

(declare-fun res!62645 () Bool)

(assert (=> d!39399 (=> (not res!62645) (not e!84756))))

(declare-fun lt!67444 () ListLongMap!1699)

(assert (=> d!39399 (= res!62645 (contains!886 lt!67444 (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun lt!67443 () List!1728)

(assert (=> d!39399 (= lt!67444 (ListLongMap!1700 lt!67443))))

(declare-fun lt!67442 () Unit!4055)

(declare-fun lt!67441 () Unit!4055)

(assert (=> d!39399 (= lt!67442 lt!67441)))

(assert (=> d!39399 (= (getValueByKey!168 lt!67443 (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) (Some!173 (_2!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!85 (List!1728 (_ BitVec 64) V!3459) Unit!4055)

(assert (=> d!39399 (= lt!67441 (lemmaContainsTupThenGetReturnValue!85 lt!67443 (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun insertStrictlySorted!87 (List!1728 (_ BitVec 64) V!3459) List!1728)

(assert (=> d!39399 (= lt!67443 (insertStrictlySorted!87 (toList!865 lt!67223) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39399 (= (+!167 lt!67223 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67444)))

(declare-fun b!129867 () Bool)

(declare-fun res!62644 () Bool)

(assert (=> b!129867 (=> (not res!62644) (not e!84756))))

(assert (=> b!129867 (= res!62644 (= (getValueByKey!168 (toList!865 lt!67444) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) (Some!173 (_2!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!129868 () Bool)

(declare-fun contains!887 (List!1728 tuple2!2592) Bool)

(assert (=> b!129868 (= e!84756 (contains!887 (toList!865 lt!67444) (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(assert (= (and d!39399 res!62645) b!129867))

(assert (= (and b!129867 res!62644) b!129868))

(declare-fun m!152639 () Bool)

(assert (=> d!39399 m!152639))

(declare-fun m!152641 () Bool)

(assert (=> d!39399 m!152641))

(declare-fun m!152643 () Bool)

(assert (=> d!39399 m!152643))

(declare-fun m!152645 () Bool)

(assert (=> d!39399 m!152645))

(declare-fun m!152647 () Bool)

(assert (=> b!129867 m!152647))

(declare-fun m!152649 () Bool)

(assert (=> b!129868 m!152649))

(assert (=> b!129511 d!39399))

(declare-fun d!39401 () Bool)

(declare-fun e!84757 () Bool)

(assert (=> d!39401 e!84757))

(declare-fun res!62647 () Bool)

(assert (=> d!39401 (=> (not res!62647) (not e!84757))))

(declare-fun lt!67448 () ListLongMap!1699)

(assert (=> d!39401 (= res!62647 (contains!886 lt!67448 (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun lt!67447 () List!1728)

(assert (=> d!39401 (= lt!67448 (ListLongMap!1700 lt!67447))))

(declare-fun lt!67446 () Unit!4055)

(declare-fun lt!67445 () Unit!4055)

(assert (=> d!39401 (= lt!67446 lt!67445)))

(assert (=> d!39401 (= (getValueByKey!168 lt!67447 (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) (Some!173 (_2!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39401 (= lt!67445 (lemmaContainsTupThenGetReturnValue!85 lt!67447 (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39401 (= lt!67447 (insertStrictlySorted!87 (toList!865 lt!67213) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39401 (= (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67448)))

(declare-fun b!129869 () Bool)

(declare-fun res!62646 () Bool)

(assert (=> b!129869 (=> (not res!62646) (not e!84757))))

(assert (=> b!129869 (= res!62646 (= (getValueByKey!168 (toList!865 lt!67448) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) (Some!173 (_2!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!129870 () Bool)

(assert (=> b!129870 (= e!84757 (contains!887 (toList!865 lt!67448) (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(assert (= (and d!39401 res!62647) b!129869))

(assert (= (and b!129869 res!62646) b!129870))

(declare-fun m!152651 () Bool)

(assert (=> d!39401 m!152651))

(declare-fun m!152653 () Bool)

(assert (=> d!39401 m!152653))

(declare-fun m!152655 () Bool)

(assert (=> d!39401 m!152655))

(declare-fun m!152657 () Bool)

(assert (=> d!39401 m!152657))

(declare-fun m!152659 () Bool)

(assert (=> b!129869 m!152659))

(declare-fun m!152661 () Bool)

(assert (=> b!129870 m!152661))

(assert (=> b!129511 d!39401))

(declare-fun d!39403 () Bool)

(assert (=> d!39403 (= (apply!113 (+!167 lt!67216 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67207) (apply!113 lt!67216 lt!67207))))

(declare-fun lt!67449 () Unit!4055)

(assert (=> d!39403 (= lt!67449 (choose!799 lt!67216 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67207))))

(declare-fun e!84758 () Bool)

(assert (=> d!39403 e!84758))

(declare-fun res!62648 () Bool)

(assert (=> d!39403 (=> (not res!62648) (not e!84758))))

(assert (=> d!39403 (= res!62648 (contains!886 lt!67216 lt!67207))))

(assert (=> d!39403 (= (addApplyDifferent!89 lt!67216 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67207) lt!67449)))

(declare-fun b!129871 () Bool)

(assert (=> b!129871 (= e!84758 (not (= lt!67207 lt!67224)))))

(assert (= (and d!39403 res!62648) b!129871))

(assert (=> d!39403 m!152263))

(assert (=> d!39403 m!152263))

(assert (=> d!39403 m!152265))

(assert (=> d!39403 m!152269))

(declare-fun m!152663 () Bool)

(assert (=> d!39403 m!152663))

(declare-fun m!152665 () Bool)

(assert (=> d!39403 m!152665))

(assert (=> b!129511 d!39403))

(declare-fun d!39405 () Bool)

(declare-fun e!84759 () Bool)

(assert (=> d!39405 e!84759))

(declare-fun res!62650 () Bool)

(assert (=> d!39405 (=> (not res!62650) (not e!84759))))

(declare-fun lt!67453 () ListLongMap!1699)

(assert (=> d!39405 (= res!62650 (contains!886 lt!67453 (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun lt!67452 () List!1728)

(assert (=> d!39405 (= lt!67453 (ListLongMap!1700 lt!67452))))

(declare-fun lt!67451 () Unit!4055)

(declare-fun lt!67450 () Unit!4055)

(assert (=> d!39405 (= lt!67451 lt!67450)))

(assert (=> d!39405 (= (getValueByKey!168 lt!67452 (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (Some!173 (_2!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39405 (= lt!67450 (lemmaContainsTupThenGetReturnValue!85 lt!67452 (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39405 (= lt!67452 (insertStrictlySorted!87 (toList!865 lt!67216) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39405 (= (+!167 lt!67216 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67453)))

(declare-fun b!129872 () Bool)

(declare-fun res!62649 () Bool)

(assert (=> b!129872 (=> (not res!62649) (not e!84759))))

(assert (=> b!129872 (= res!62649 (= (getValueByKey!168 (toList!865 lt!67453) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (Some!173 (_2!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!129873 () Bool)

(assert (=> b!129873 (= e!84759 (contains!887 (toList!865 lt!67453) (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(assert (= (and d!39405 res!62650) b!129872))

(assert (= (and b!129872 res!62649) b!129873))

(declare-fun m!152667 () Bool)

(assert (=> d!39405 m!152667))

(declare-fun m!152669 () Bool)

(assert (=> d!39405 m!152669))

(declare-fun m!152671 () Bool)

(assert (=> d!39405 m!152671))

(declare-fun m!152673 () Bool)

(assert (=> d!39405 m!152673))

(declare-fun m!152675 () Bool)

(assert (=> b!129872 m!152675))

(declare-fun m!152677 () Bool)

(assert (=> b!129873 m!152677))

(assert (=> b!129511 d!39405))

(declare-fun d!39407 () Bool)

(assert (=> d!39407 (contains!886 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67219)))

(declare-fun lt!67456 () Unit!4055)

(declare-fun choose!800 (ListLongMap!1699 (_ BitVec 64) V!3459 (_ BitVec 64)) Unit!4055)

(assert (=> d!39407 (= lt!67456 (choose!800 lt!67213 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67219))))

(assert (=> d!39407 (contains!886 lt!67213 lt!67219)))

(assert (=> d!39407 (= (addStillContains!89 lt!67213 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67219) lt!67456)))

(declare-fun bs!5383 () Bool)

(assert (= bs!5383 d!39407))

(assert (=> bs!5383 m!152287))

(assert (=> bs!5383 m!152287))

(assert (=> bs!5383 m!152291))

(declare-fun m!152679 () Bool)

(assert (=> bs!5383 m!152679))

(declare-fun m!152681 () Bool)

(assert (=> bs!5383 m!152681))

(assert (=> b!129511 d!39407))

(declare-fun d!39409 () Bool)

(assert (=> d!39409 (= (apply!113 (+!167 lt!67211 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67218) (get!1472 (getValueByKey!168 (toList!865 (+!167 lt!67211 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67218)))))

(declare-fun bs!5384 () Bool)

(assert (= bs!5384 d!39409))

(declare-fun m!152683 () Bool)

(assert (=> bs!5384 m!152683))

(assert (=> bs!5384 m!152683))

(declare-fun m!152685 () Bool)

(assert (=> bs!5384 m!152685))

(assert (=> b!129511 d!39409))

(declare-fun d!39411 () Bool)

(declare-fun e!84760 () Bool)

(assert (=> d!39411 e!84760))

(declare-fun res!62652 () Bool)

(assert (=> d!39411 (=> (not res!62652) (not e!84760))))

(declare-fun lt!67460 () ListLongMap!1699)

(assert (=> d!39411 (= res!62652 (contains!886 lt!67460 (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun lt!67459 () List!1728)

(assert (=> d!39411 (= lt!67460 (ListLongMap!1700 lt!67459))))

(declare-fun lt!67458 () Unit!4055)

(declare-fun lt!67457 () Unit!4055)

(assert (=> d!39411 (= lt!67458 lt!67457)))

(assert (=> d!39411 (= (getValueByKey!168 lt!67459 (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (Some!173 (_2!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39411 (= lt!67457 (lemmaContainsTupThenGetReturnValue!85 lt!67459 (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39411 (= lt!67459 (insertStrictlySorted!87 (toList!865 lt!67211) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39411 (= (+!167 lt!67211 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67460)))

(declare-fun b!129875 () Bool)

(declare-fun res!62651 () Bool)

(assert (=> b!129875 (=> (not res!62651) (not e!84760))))

(assert (=> b!129875 (= res!62651 (= (getValueByKey!168 (toList!865 lt!67460) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (Some!173 (_2!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!129876 () Bool)

(assert (=> b!129876 (= e!84760 (contains!887 (toList!865 lt!67460) (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(assert (= (and d!39411 res!62652) b!129875))

(assert (= (and b!129875 res!62651) b!129876))

(declare-fun m!152687 () Bool)

(assert (=> d!39411 m!152687))

(declare-fun m!152689 () Bool)

(assert (=> d!39411 m!152689))

(declare-fun m!152691 () Bool)

(assert (=> d!39411 m!152691))

(declare-fun m!152693 () Bool)

(assert (=> d!39411 m!152693))

(declare-fun m!152695 () Bool)

(assert (=> b!129875 m!152695))

(declare-fun m!152697 () Bool)

(assert (=> b!129876 m!152697))

(assert (=> b!129511 d!39411))

(declare-fun d!39413 () Bool)

(assert (=> d!39413 (= (apply!113 lt!67223 lt!67205) (get!1472 (getValueByKey!168 (toList!865 lt!67223) lt!67205)))))

(declare-fun bs!5385 () Bool)

(assert (= bs!5385 d!39413))

(declare-fun m!152699 () Bool)

(assert (=> bs!5385 m!152699))

(assert (=> bs!5385 m!152699))

(declare-fun m!152701 () Bool)

(assert (=> bs!5385 m!152701))

(assert (=> b!129511 d!39413))

(assert (=> d!39325 d!39329))

(assert (=> b!129626 d!39377))

(declare-fun d!39415 () Bool)

(declare-fun e!84761 () Bool)

(assert (=> d!39415 e!84761))

(declare-fun res!62654 () Bool)

(assert (=> d!39415 (=> (not res!62654) (not e!84761))))

(declare-fun lt!67464 () ListLongMap!1699)

(assert (=> d!39415 (= res!62654 (contains!886 lt!67464 (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!67463 () List!1728)

(assert (=> d!39415 (= lt!67464 (ListLongMap!1700 lt!67463))))

(declare-fun lt!67462 () Unit!4055)

(declare-fun lt!67461 () Unit!4055)

(assert (=> d!39415 (= lt!67462 lt!67461)))

(assert (=> d!39415 (= (getValueByKey!168 lt!67463 (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!173 (_2!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!39415 (= lt!67461 (lemmaContainsTupThenGetReturnValue!85 lt!67463 (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!39415 (= lt!67463 (insertStrictlySorted!87 (toList!865 e!84623) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!39415 (= (+!167 e!84623 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!67464)))

(declare-fun b!129877 () Bool)

(declare-fun res!62653 () Bool)

(assert (=> b!129877 (=> (not res!62653) (not e!84761))))

(assert (=> b!129877 (= res!62653 (= (getValueByKey!168 (toList!865 lt!67464) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!173 (_2!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!129878 () Bool)

(assert (=> b!129878 (= e!84761 (contains!887 (toList!865 lt!67464) (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!39415 res!62654) b!129877))

(assert (= (and b!129877 res!62653) b!129878))

(declare-fun m!152703 () Bool)

(assert (=> d!39415 m!152703))

(declare-fun m!152705 () Bool)

(assert (=> d!39415 m!152705))

(declare-fun m!152707 () Bool)

(assert (=> d!39415 m!152707))

(declare-fun m!152709 () Bool)

(assert (=> d!39415 m!152709))

(declare-fun m!152711 () Bool)

(assert (=> b!129877 m!152711))

(declare-fun m!152713 () Bool)

(assert (=> b!129878 m!152713))

(assert (=> bm!14090 d!39415))

(declare-fun d!39417 () Bool)

(assert (=> d!39417 (= (+!167 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67295 (zeroValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67467 () Unit!4055)

(declare-fun choose!801 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 V!3459 Int) Unit!4055)

(assert (=> d!39417 (= lt!67467 (choose!801 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) lt!67295 (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2824 newMap!16)))))

(assert (=> d!39417 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39417 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!58 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) lt!67295 (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2824 newMap!16)) lt!67467)))

(declare-fun bs!5386 () Bool)

(assert (= bs!5386 d!39417))

(assert (=> bs!5386 m!152207))

(declare-fun m!152715 () Bool)

(assert (=> bs!5386 m!152715))

(assert (=> bs!5386 m!152207))

(declare-fun m!152717 () Bool)

(assert (=> bs!5386 m!152717))

(assert (=> bs!5386 m!152253))

(assert (=> bs!5386 m!152253))

(declare-fun m!152719 () Bool)

(assert (=> bs!5386 m!152719))

(assert (=> bs!5386 m!152393))

(assert (=> b!129614 d!39417))

(declare-fun d!39419 () Bool)

(declare-fun e!84763 () Bool)

(assert (=> d!39419 e!84763))

(declare-fun res!62655 () Bool)

(assert (=> d!39419 (=> res!62655 e!84763)))

(declare-fun lt!67468 () Bool)

(assert (=> d!39419 (= res!62655 (not lt!67468))))

(declare-fun lt!67471 () Bool)

(assert (=> d!39419 (= lt!67468 lt!67471)))

(declare-fun lt!67470 () Unit!4055)

(declare-fun e!84762 () Unit!4055)

(assert (=> d!39419 (= lt!67470 e!84762)))

(declare-fun c!23907 () Bool)

(assert (=> d!39419 (= c!23907 lt!67471)))

(assert (=> d!39419 (= lt!67471 (containsKey!172 (toList!865 lt!67214) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!39419 (= (contains!886 lt!67214 #b1000000000000000000000000000000000000000000000000000000000000000) lt!67468)))

(declare-fun b!129879 () Bool)

(declare-fun lt!67469 () Unit!4055)

(assert (=> b!129879 (= e!84762 lt!67469)))

(assert (=> b!129879 (= lt!67469 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67214) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!129879 (isDefined!122 (getValueByKey!168 (toList!865 lt!67214) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129880 () Bool)

(declare-fun Unit!4067 () Unit!4055)

(assert (=> b!129880 (= e!84762 Unit!4067)))

(declare-fun b!129881 () Bool)

(assert (=> b!129881 (= e!84763 (isDefined!122 (getValueByKey!168 (toList!865 lt!67214) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39419 c!23907) b!129879))

(assert (= (and d!39419 (not c!23907)) b!129880))

(assert (= (and d!39419 (not res!62655)) b!129881))

(declare-fun m!152721 () Bool)

(assert (=> d!39419 m!152721))

(declare-fun m!152723 () Bool)

(assert (=> b!129879 m!152723))

(declare-fun m!152725 () Bool)

(assert (=> b!129879 m!152725))

(assert (=> b!129879 m!152725))

(declare-fun m!152727 () Bool)

(assert (=> b!129879 m!152727))

(assert (=> b!129881 m!152725))

(assert (=> b!129881 m!152725))

(assert (=> b!129881 m!152727))

(assert (=> bm!14026 d!39419))

(declare-fun d!39421 () Bool)

(assert (=> d!39421 (= (+!167 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67305 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67474 () Unit!4055)

(declare-fun choose!802 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 V!3459 Int) Unit!4055)

(assert (=> d!39421 (= lt!67474 (choose!802 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) lt!67305 (zeroValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2683 newMap!16) (defaultEntry!2824 newMap!16)))))

(assert (=> d!39421 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39421 (= (lemmaChangeZeroKeyThenAddPairToListMap!58 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) lt!67305 (zeroValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2683 newMap!16) (defaultEntry!2824 newMap!16)) lt!67474)))

(declare-fun bs!5387 () Bool)

(assert (= bs!5387 d!39421))

(assert (=> bs!5387 m!152393))

(assert (=> bs!5387 m!152253))

(declare-fun m!152729 () Bool)

(assert (=> bs!5387 m!152729))

(assert (=> bs!5387 m!152253))

(assert (=> bs!5387 m!152207))

(declare-fun m!152731 () Bool)

(assert (=> bs!5387 m!152731))

(assert (=> bs!5387 m!152207))

(declare-fun m!152733 () Bool)

(assert (=> bs!5387 m!152733))

(assert (=> b!129642 d!39421))

(declare-fun b!129892 () Bool)

(declare-fun e!84773 () Bool)

(declare-fun e!84774 () Bool)

(assert (=> b!129892 (= e!84773 e!84774)))

(declare-fun c!23910 () Bool)

(assert (=> b!129892 (= c!23910 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!129893 () Bool)

(declare-fun e!84772 () Bool)

(assert (=> b!129893 (= e!84772 e!84773)))

(declare-fun res!62664 () Bool)

(assert (=> b!129893 (=> (not res!62664) (not e!84773))))

(declare-fun e!84775 () Bool)

(assert (=> b!129893 (= res!62664 (not e!84775))))

(declare-fun res!62663 () Bool)

(assert (=> b!129893 (=> (not res!62663) (not e!84775))))

(assert (=> b!129893 (= res!62663 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!14125 () Bool)

(declare-fun call!14128 () Bool)

(assert (=> bm!14125 (= call!14128 (arrayNoDuplicates!0 (_keys!4565 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!23910 (Cons!1725 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) Nil!1726) Nil!1726)))))

(declare-fun b!129894 () Bool)

(assert (=> b!129894 (= e!84774 call!14128)))

(declare-fun b!129895 () Bool)

(assert (=> b!129895 (= e!84774 call!14128)))

(declare-fun b!129896 () Bool)

(declare-fun contains!888 (List!1729 (_ BitVec 64)) Bool)

(assert (=> b!129896 (= e!84775 (contains!888 Nil!1726 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!39423 () Bool)

(declare-fun res!62662 () Bool)

(assert (=> d!39423 (=> res!62662 e!84772)))

(assert (=> d!39423 (= res!62662 (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(assert (=> d!39423 (= (arrayNoDuplicates!0 (_keys!4565 newMap!16) #b00000000000000000000000000000000 Nil!1726) e!84772)))

(assert (= (and d!39423 (not res!62662)) b!129893))

(assert (= (and b!129893 res!62663) b!129896))

(assert (= (and b!129893 res!62664) b!129892))

(assert (= (and b!129892 c!23910) b!129894))

(assert (= (and b!129892 (not c!23910)) b!129895))

(assert (= (or b!129894 b!129895) bm!14125))

(assert (=> b!129892 m!152429))

(assert (=> b!129892 m!152429))

(assert (=> b!129892 m!152431))

(assert (=> b!129893 m!152429))

(assert (=> b!129893 m!152429))

(assert (=> b!129893 m!152431))

(assert (=> bm!14125 m!152429))

(declare-fun m!152735 () Bool)

(assert (=> bm!14125 m!152735))

(assert (=> b!129896 m!152429))

(assert (=> b!129896 m!152429))

(declare-fun m!152737 () Bool)

(assert (=> b!129896 m!152737))

(assert (=> b!129662 d!39423))

(declare-fun d!39425 () Bool)

(declare-fun e!84777 () Bool)

(assert (=> d!39425 e!84777))

(declare-fun res!62665 () Bool)

(assert (=> d!39425 (=> res!62665 e!84777)))

(declare-fun lt!67475 () Bool)

(assert (=> d!39425 (= res!62665 (not lt!67475))))

(declare-fun lt!67478 () Bool)

(assert (=> d!39425 (= lt!67475 lt!67478)))

(declare-fun lt!67477 () Unit!4055)

(declare-fun e!84776 () Unit!4055)

(assert (=> d!39425 (= lt!67477 e!84776)))

(declare-fun c!23911 () Bool)

(assert (=> d!39425 (= c!23911 lt!67478)))

(assert (=> d!39425 (= lt!67478 (containsKey!172 (toList!865 call!14102) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))))))

(assert (=> d!39425 (= (contains!886 call!14102 (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))) lt!67475)))

(declare-fun b!129897 () Bool)

(declare-fun lt!67476 () Unit!4055)

(assert (=> b!129897 (= e!84776 lt!67476)))

(assert (=> b!129897 (= lt!67476 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 call!14102) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))))))

(assert (=> b!129897 (isDefined!122 (getValueByKey!168 (toList!865 call!14102) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))))))

(declare-fun b!129898 () Bool)

(declare-fun Unit!4068 () Unit!4055)

(assert (=> b!129898 (= e!84776 Unit!4068)))

(declare-fun b!129899 () Bool)

(assert (=> b!129899 (= e!84777 (isDefined!122 (getValueByKey!168 (toList!865 call!14102) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299))))))))

(assert (= (and d!39425 c!23911) b!129897))

(assert (= (and d!39425 (not c!23911)) b!129898))

(assert (= (and d!39425 (not res!62665)) b!129899))

(declare-fun m!152739 () Bool)

(assert (=> d!39425 m!152739))

(declare-fun m!152741 () Bool)

(assert (=> b!129897 m!152741))

(declare-fun m!152743 () Bool)

(assert (=> b!129897 m!152743))

(assert (=> b!129897 m!152743))

(declare-fun m!152745 () Bool)

(assert (=> b!129897 m!152745))

(assert (=> b!129899 m!152743))

(assert (=> b!129899 m!152743))

(assert (=> b!129899 m!152745))

(assert (=> bm!14092 d!39425))

(declare-fun d!39427 () Bool)

(declare-fun res!62670 () Bool)

(declare-fun e!84786 () Bool)

(assert (=> d!39427 (=> res!62670 e!84786)))

(assert (=> d!39427 (= res!62670 (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(assert (=> d!39427 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4565 newMap!16) (mask!7102 newMap!16)) e!84786)))

(declare-fun b!129908 () Bool)

(declare-fun e!84785 () Bool)

(declare-fun e!84784 () Bool)

(assert (=> b!129908 (= e!84785 e!84784)))

(declare-fun lt!67487 () (_ BitVec 64))

(assert (=> b!129908 (= lt!67487 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67485 () Unit!4055)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4738 (_ BitVec 64) (_ BitVec 32)) Unit!4055)

(assert (=> b!129908 (= lt!67485 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4565 newMap!16) lt!67487 #b00000000000000000000000000000000))))

(assert (=> b!129908 (arrayContainsKey!0 (_keys!4565 newMap!16) lt!67487 #b00000000000000000000000000000000)))

(declare-fun lt!67486 () Unit!4055)

(assert (=> b!129908 (= lt!67486 lt!67485)))

(declare-fun res!62671 () Bool)

(assert (=> b!129908 (= res!62671 (= (seekEntryOrOpen!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) (_keys!4565 newMap!16) (mask!7102 newMap!16)) (Found!282 #b00000000000000000000000000000000)))))

(assert (=> b!129908 (=> (not res!62671) (not e!84784))))

(declare-fun b!129909 () Bool)

(declare-fun call!14131 () Bool)

(assert (=> b!129909 (= e!84784 call!14131)))

(declare-fun b!129910 () Bool)

(assert (=> b!129910 (= e!84786 e!84785)))

(declare-fun c!23914 () Bool)

(assert (=> b!129910 (= c!23914 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!14128 () Bool)

(assert (=> bm!14128 (= call!14131 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(declare-fun b!129911 () Bool)

(assert (=> b!129911 (= e!84785 call!14131)))

(assert (= (and d!39427 (not res!62670)) b!129910))

(assert (= (and b!129910 c!23914) b!129908))

(assert (= (and b!129910 (not c!23914)) b!129911))

(assert (= (and b!129908 res!62671) b!129909))

(assert (= (or b!129909 b!129911) bm!14128))

(assert (=> b!129908 m!152429))

(declare-fun m!152747 () Bool)

(assert (=> b!129908 m!152747))

(declare-fun m!152749 () Bool)

(assert (=> b!129908 m!152749))

(assert (=> b!129908 m!152429))

(declare-fun m!152751 () Bool)

(assert (=> b!129908 m!152751))

(assert (=> b!129910 m!152429))

(assert (=> b!129910 m!152429))

(assert (=> b!129910 m!152431))

(declare-fun m!152753 () Bool)

(assert (=> bm!14128 m!152753))

(assert (=> b!129661 d!39427))

(declare-fun b!129912 () Bool)

(declare-fun e!84792 () Bool)

(declare-fun e!84787 () Bool)

(assert (=> b!129912 (= e!84792 e!84787)))

(declare-fun res!62676 () Bool)

(declare-fun call!14137 () Bool)

(assert (=> b!129912 (= res!62676 call!14137)))

(assert (=> b!129912 (=> (not res!62676) (not e!84787))))

(declare-fun b!129913 () Bool)

(declare-fun e!84796 () Bool)

(assert (=> b!129913 (= e!84796 e!84792)))

(declare-fun c!23920 () Bool)

(assert (=> b!129913 (= c!23920 (not (= (bvand (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!14132 () ListLongMap!1699)

(declare-fun c!23918 () Bool)

(declare-fun call!14134 () ListLongMap!1699)

(declare-fun c!23917 () Bool)

(declare-fun call!14135 () ListLongMap!1699)

(declare-fun call!14133 () ListLongMap!1699)

(declare-fun bm!14129 () Bool)

(assert (=> bm!14129 (= call!14132 (+!167 (ite c!23917 call!14134 (ite c!23918 call!14133 call!14135)) (ite (or c!23917 c!23918) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(declare-fun b!129914 () Bool)

(declare-fun e!84793 () Bool)

(declare-fun call!14136 () Bool)

(assert (=> b!129914 (= e!84793 (not call!14136))))

(declare-fun b!129915 () Bool)

(declare-fun res!62680 () Bool)

(assert (=> b!129915 (=> (not res!62680) (not e!84796))))

(assert (=> b!129915 (= res!62680 e!84793)))

(declare-fun c!23919 () Bool)

(assert (=> b!129915 (= c!23919 (not (= (bvand (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!14130 () Bool)

(declare-fun call!14138 () ListLongMap!1699)

(assert (=> bm!14130 (= call!14138 call!14132)))

(declare-fun b!129916 () Bool)

(declare-fun e!84791 () Bool)

(declare-fun lt!67499 () ListLongMap!1699)

(assert (=> b!129916 (= e!84791 (= (apply!113 lt!67499 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) (get!1469 (select (arr!2243 (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!129916 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2509 (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304))))))

(assert (=> b!129916 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!129917 () Bool)

(declare-fun e!84799 () Unit!4055)

(declare-fun Unit!4069 () Unit!4055)

(assert (=> b!129917 (= e!84799 Unit!4069)))

(declare-fun b!129918 () Bool)

(declare-fun res!62675 () Bool)

(assert (=> b!129918 (=> (not res!62675) (not e!84796))))

(declare-fun e!84790 () Bool)

(assert (=> b!129918 (= res!62675 e!84790)))

(declare-fun res!62678 () Bool)

(assert (=> b!129918 (=> res!62678 e!84790)))

(declare-fun e!84795 () Bool)

(assert (=> b!129918 (= res!62678 (not e!84795))))

(declare-fun res!62673 () Bool)

(assert (=> b!129918 (=> (not res!62673) (not e!84795))))

(assert (=> b!129918 (= res!62673 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!129919 () Bool)

(declare-fun e!84797 () ListLongMap!1699)

(assert (=> b!129919 (= e!84797 call!14138)))

(declare-fun bm!14131 () Bool)

(assert (=> bm!14131 (= call!14133 call!14134)))

(declare-fun b!129920 () Bool)

(assert (=> b!129920 (= e!84790 e!84791)))

(declare-fun res!62672 () Bool)

(assert (=> b!129920 (=> (not res!62672) (not e!84791))))

(assert (=> b!129920 (= res!62672 (contains!886 lt!67499 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!129920 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun bm!14132 () Bool)

(assert (=> bm!14132 (= call!14134 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304) (mask!7102 newMap!16) (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun b!129921 () Bool)

(declare-fun e!84794 () Bool)

(assert (=> b!129921 (= e!84793 e!84794)))

(declare-fun res!62674 () Bool)

(assert (=> b!129921 (= res!62674 call!14136)))

(assert (=> b!129921 (=> (not res!62674) (not e!84794))))

(declare-fun bm!14133 () Bool)

(assert (=> bm!14133 (= call!14136 (contains!886 lt!67499 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!39429 () Bool)

(assert (=> d!39429 e!84796))

(declare-fun res!62679 () Bool)

(assert (=> d!39429 (=> (not res!62679) (not e!84796))))

(assert (=> d!39429 (= res!62679 (or (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))))

(declare-fun lt!67497 () ListLongMap!1699)

(assert (=> d!39429 (= lt!67499 lt!67497)))

(declare-fun lt!67494 () Unit!4055)

(assert (=> d!39429 (= lt!67494 e!84799)))

(declare-fun c!23916 () Bool)

(declare-fun e!84789 () Bool)

(assert (=> d!39429 (= c!23916 e!84789)))

(declare-fun res!62677 () Bool)

(assert (=> d!39429 (=> (not res!62677) (not e!84789))))

(assert (=> d!39429 (= res!62677 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun e!84798 () ListLongMap!1699)

(assert (=> d!39429 (= lt!67497 e!84798)))

(assert (=> d!39429 (= c!23917 (and (not (= (bvand (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39429 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39429 (= (getCurrentListMap!536 (_keys!4565 newMap!16) (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304) (mask!7102 newMap!16) (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) lt!67499)))

(declare-fun b!129922 () Bool)

(declare-fun e!84788 () ListLongMap!1699)

(assert (=> b!129922 (= e!84798 e!84788)))

(assert (=> b!129922 (= c!23918 (and (not (= (bvand (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!129923 () Bool)

(assert (=> b!129923 (= e!84789 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!14134 () Bool)

(assert (=> bm!14134 (= call!14137 (contains!886 lt!67499 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!129924 () Bool)

(declare-fun c!23915 () Bool)

(assert (=> b!129924 (= c!23915 (and (not (= (bvand (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!129924 (= e!84788 e!84797)))

(declare-fun b!129925 () Bool)

(declare-fun lt!67502 () Unit!4055)

(assert (=> b!129925 (= e!84799 lt!67502)))

(declare-fun lt!67498 () ListLongMap!1699)

(assert (=> b!129925 (= lt!67498 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304) (mask!7102 newMap!16) (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67507 () (_ BitVec 64))

(assert (=> b!129925 (= lt!67507 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67504 () (_ BitVec 64))

(assert (=> b!129925 (= lt!67504 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67500 () Unit!4055)

(assert (=> b!129925 (= lt!67500 (addStillContains!89 lt!67498 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) lt!67504))))

(assert (=> b!129925 (contains!886 (+!167 lt!67498 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))) lt!67504)))

(declare-fun lt!67488 () Unit!4055)

(assert (=> b!129925 (= lt!67488 lt!67500)))

(declare-fun lt!67501 () ListLongMap!1699)

(assert (=> b!129925 (= lt!67501 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304) (mask!7102 newMap!16) (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67509 () (_ BitVec 64))

(assert (=> b!129925 (= lt!67509 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67492 () (_ BitVec 64))

(assert (=> b!129925 (= lt!67492 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67495 () Unit!4055)

(assert (=> b!129925 (= lt!67495 (addApplyDifferent!89 lt!67501 lt!67509 (minValue!2683 newMap!16) lt!67492))))

(assert (=> b!129925 (= (apply!113 (+!167 lt!67501 (tuple2!2593 lt!67509 (minValue!2683 newMap!16))) lt!67492) (apply!113 lt!67501 lt!67492))))

(declare-fun lt!67506 () Unit!4055)

(assert (=> b!129925 (= lt!67506 lt!67495)))

(declare-fun lt!67508 () ListLongMap!1699)

(assert (=> b!129925 (= lt!67508 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304) (mask!7102 newMap!16) (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67493 () (_ BitVec 64))

(assert (=> b!129925 (= lt!67493 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67490 () (_ BitVec 64))

(assert (=> b!129925 (= lt!67490 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67489 () Unit!4055)

(assert (=> b!129925 (= lt!67489 (addApplyDifferent!89 lt!67508 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) lt!67490))))

(assert (=> b!129925 (= (apply!113 (+!167 lt!67508 (tuple2!2593 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))) lt!67490) (apply!113 lt!67508 lt!67490))))

(declare-fun lt!67491 () Unit!4055)

(assert (=> b!129925 (= lt!67491 lt!67489)))

(declare-fun lt!67496 () ListLongMap!1699)

(assert (=> b!129925 (= lt!67496 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304) (mask!7102 newMap!16) (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67505 () (_ BitVec 64))

(assert (=> b!129925 (= lt!67505 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67503 () (_ BitVec 64))

(assert (=> b!129925 (= lt!67503 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!129925 (= lt!67502 (addApplyDifferent!89 lt!67496 lt!67505 (minValue!2683 newMap!16) lt!67503))))

(assert (=> b!129925 (= (apply!113 (+!167 lt!67496 (tuple2!2593 lt!67505 (minValue!2683 newMap!16))) lt!67503) (apply!113 lt!67496 lt!67503))))

(declare-fun b!129926 () Bool)

(assert (=> b!129926 (= e!84795 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!129927 () Bool)

(assert (=> b!129927 (= e!84788 call!14138)))

(declare-fun b!129928 () Bool)

(assert (=> b!129928 (= e!84792 (not call!14137))))

(declare-fun b!129929 () Bool)

(assert (=> b!129929 (= e!84787 (= (apply!113 lt!67499 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2683 newMap!16)))))

(declare-fun b!129930 () Bool)

(assert (=> b!129930 (= e!84794 (= (apply!113 lt!67499 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))))

(declare-fun b!129931 () Bool)

(assert (=> b!129931 (= e!84798 (+!167 call!14132 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))

(declare-fun b!129932 () Bool)

(assert (=> b!129932 (= e!84797 call!14135)))

(declare-fun bm!14135 () Bool)

(assert (=> bm!14135 (= call!14135 call!14133)))

(assert (= (and d!39429 c!23917) b!129931))

(assert (= (and d!39429 (not c!23917)) b!129922))

(assert (= (and b!129922 c!23918) b!129927))

(assert (= (and b!129922 (not c!23918)) b!129924))

(assert (= (and b!129924 c!23915) b!129919))

(assert (= (and b!129924 (not c!23915)) b!129932))

(assert (= (or b!129919 b!129932) bm!14135))

(assert (= (or b!129927 bm!14135) bm!14131))

(assert (= (or b!129927 b!129919) bm!14130))

(assert (= (or b!129931 bm!14131) bm!14132))

(assert (= (or b!129931 bm!14130) bm!14129))

(assert (= (and d!39429 res!62677) b!129923))

(assert (= (and d!39429 c!23916) b!129925))

(assert (= (and d!39429 (not c!23916)) b!129917))

(assert (= (and d!39429 res!62679) b!129918))

(assert (= (and b!129918 res!62673) b!129926))

(assert (= (and b!129918 (not res!62678)) b!129920))

(assert (= (and b!129920 res!62672) b!129916))

(assert (= (and b!129918 res!62675) b!129915))

(assert (= (and b!129915 c!23919) b!129921))

(assert (= (and b!129915 (not c!23919)) b!129914))

(assert (= (and b!129921 res!62674) b!129930))

(assert (= (or b!129921 b!129914) bm!14133))

(assert (= (and b!129915 res!62680) b!129913))

(assert (= (and b!129913 c!23920) b!129912))

(assert (= (and b!129913 (not c!23920)) b!129928))

(assert (= (and b!129912 res!62676) b!129929))

(assert (= (or b!129912 b!129928) bm!14134))

(declare-fun b_lambda!5791 () Bool)

(assert (=> (not b_lambda!5791) (not b!129916)))

(assert (=> b!129916 t!6146))

(declare-fun b_and!8057 () Bool)

(assert (= b_and!8053 (and (=> t!6146 result!3933) b_and!8057)))

(assert (=> b!129916 t!6148))

(declare-fun b_and!8059 () Bool)

(assert (= b_and!8055 (and (=> t!6148 result!3935) b_and!8059)))

(assert (=> b!129926 m!152429))

(assert (=> b!129926 m!152429))

(assert (=> b!129926 m!152431))

(declare-fun m!152755 () Bool)

(assert (=> bm!14129 m!152755))

(assert (=> d!39429 m!152393))

(assert (=> b!129925 m!152429))

(declare-fun m!152757 () Bool)

(assert (=> b!129925 m!152757))

(declare-fun m!152759 () Bool)

(assert (=> b!129925 m!152759))

(declare-fun m!152761 () Bool)

(assert (=> b!129925 m!152761))

(declare-fun m!152763 () Bool)

(assert (=> b!129925 m!152763))

(declare-fun m!152765 () Bool)

(assert (=> b!129925 m!152765))

(assert (=> b!129925 m!152757))

(declare-fun m!152767 () Bool)

(assert (=> b!129925 m!152767))

(declare-fun m!152769 () Bool)

(assert (=> b!129925 m!152769))

(declare-fun m!152771 () Bool)

(assert (=> b!129925 m!152771))

(declare-fun m!152773 () Bool)

(assert (=> b!129925 m!152773))

(assert (=> b!129925 m!152759))

(declare-fun m!152775 () Bool)

(assert (=> b!129925 m!152775))

(declare-fun m!152777 () Bool)

(assert (=> b!129925 m!152777))

(declare-fun m!152779 () Bool)

(assert (=> b!129925 m!152779))

(declare-fun m!152781 () Bool)

(assert (=> b!129925 m!152781))

(declare-fun m!152783 () Bool)

(assert (=> b!129925 m!152783))

(declare-fun m!152785 () Bool)

(assert (=> b!129925 m!152785))

(assert (=> b!129925 m!152783))

(declare-fun m!152787 () Bool)

(assert (=> b!129925 m!152787))

(assert (=> b!129925 m!152775))

(assert (=> b!129920 m!152429))

(assert (=> b!129920 m!152429))

(declare-fun m!152789 () Bool)

(assert (=> b!129920 m!152789))

(declare-fun m!152791 () Bool)

(assert (=> bm!14133 m!152791))

(assert (=> b!129916 m!152429))

(assert (=> b!129916 m!152471))

(declare-fun m!152793 () Bool)

(assert (=> b!129916 m!152793))

(assert (=> b!129916 m!152471))

(declare-fun m!152795 () Bool)

(assert (=> b!129916 m!152795))

(assert (=> b!129916 m!152793))

(assert (=> b!129916 m!152429))

(declare-fun m!152797 () Bool)

(assert (=> b!129916 m!152797))

(declare-fun m!152799 () Bool)

(assert (=> b!129929 m!152799))

(declare-fun m!152801 () Bool)

(assert (=> b!129930 m!152801))

(assert (=> bm!14132 m!152771))

(declare-fun m!152803 () Bool)

(assert (=> bm!14134 m!152803))

(assert (=> b!129923 m!152429))

(assert (=> b!129923 m!152429))

(assert (=> b!129923 m!152431))

(declare-fun m!152805 () Bool)

(assert (=> b!129931 m!152805))

(assert (=> bm!14082 d!39429))

(declare-fun d!39431 () Bool)

(assert (=> d!39431 (= (map!1395 (_2!1307 lt!67308)) (getCurrentListMap!536 (_keys!4565 (_2!1307 lt!67308)) (_values!2807 (_2!1307 lt!67308)) (mask!7102 (_2!1307 lt!67308)) (extraKeys!2597 (_2!1307 lt!67308)) (zeroValue!2683 (_2!1307 lt!67308)) (minValue!2683 (_2!1307 lt!67308)) #b00000000000000000000000000000000 (defaultEntry!2824 (_2!1307 lt!67308))))))

(declare-fun bs!5388 () Bool)

(assert (= bs!5388 d!39431))

(declare-fun m!152807 () Bool)

(assert (=> bs!5388 m!152807))

(assert (=> bm!14081 d!39431))

(assert (=> b!129512 d!39371))

(declare-fun b!129941 () Bool)

(declare-fun e!84804 () (_ BitVec 32))

(declare-fun e!84805 () (_ BitVec 32))

(assert (=> b!129941 (= e!84804 e!84805)))

(declare-fun c!23925 () Bool)

(assert (=> b!129941 (= c!23925 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!39433 () Bool)

(declare-fun lt!67512 () (_ BitVec 32))

(assert (=> d!39433 (and (bvsge lt!67512 #b00000000000000000000000000000000) (bvsle lt!67512 (bvsub (size!2508 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!39433 (= lt!67512 e!84804)))

(declare-fun c!23926 () Bool)

(assert (=> d!39433 (= c!23926 (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(assert (=> d!39433 (and (bvsle #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2508 (_keys!4565 newMap!16)) (size!2508 (_keys!4565 newMap!16))))))

(assert (=> d!39433 (= (arrayCountValidKeys!0 (_keys!4565 newMap!16) #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) lt!67512)))

(declare-fun b!129942 () Bool)

(declare-fun call!14141 () (_ BitVec 32))

(assert (=> b!129942 (= e!84805 call!14141)))

(declare-fun b!129943 () Bool)

(assert (=> b!129943 (= e!84804 #b00000000000000000000000000000000)))

(declare-fun bm!14138 () Bool)

(assert (=> bm!14138 (= call!14141 (arrayCountValidKeys!0 (_keys!4565 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!129944 () Bool)

(assert (=> b!129944 (= e!84805 (bvadd #b00000000000000000000000000000001 call!14141))))

(assert (= (and d!39433 c!23926) b!129943))

(assert (= (and d!39433 (not c!23926)) b!129941))

(assert (= (and b!129941 c!23925) b!129944))

(assert (= (and b!129941 (not c!23925)) b!129942))

(assert (= (or b!129944 b!129942) bm!14138))

(assert (=> b!129941 m!152429))

(assert (=> b!129941 m!152429))

(assert (=> b!129941 m!152431))

(declare-fun m!152809 () Bool)

(assert (=> bm!14138 m!152809))

(assert (=> b!129660 d!39433))

(declare-fun d!39435 () Bool)

(assert (=> d!39435 (= (apply!113 lt!67214 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1472 (getValueByKey!168 (toList!865 lt!67214) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5389 () Bool)

(assert (= bs!5389 d!39435))

(assert (=> bs!5389 m!152599))

(assert (=> bs!5389 m!152599))

(declare-fun m!152811 () Bool)

(assert (=> bs!5389 m!152811))

(assert (=> b!129516 d!39435))

(declare-fun d!39437 () Bool)

(declare-fun e!84806 () Bool)

(assert (=> d!39437 e!84806))

(declare-fun res!62682 () Bool)

(assert (=> d!39437 (=> (not res!62682) (not e!84806))))

(declare-fun lt!67516 () ListLongMap!1699)

(assert (=> d!39437 (= res!62682 (contains!886 lt!67516 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!67515 () List!1728)

(assert (=> d!39437 (= lt!67516 (ListLongMap!1700 lt!67515))))

(declare-fun lt!67514 () Unit!4055)

(declare-fun lt!67513 () Unit!4055)

(assert (=> d!39437 (= lt!67514 lt!67513)))

(assert (=> d!39437 (= (getValueByKey!168 lt!67515 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!173 (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39437 (= lt!67513 (lemmaContainsTupThenGetReturnValue!85 lt!67515 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39437 (= lt!67515 (insertStrictlySorted!87 (toList!865 call!14100) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39437 (= (+!167 call!14100 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!67516)))

(declare-fun b!129945 () Bool)

(declare-fun res!62681 () Bool)

(assert (=> b!129945 (=> (not res!62681) (not e!84806))))

(assert (=> b!129945 (= res!62681 (= (getValueByKey!168 (toList!865 lt!67516) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!173 (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!129946 () Bool)

(assert (=> b!129946 (= e!84806 (contains!887 (toList!865 lt!67516) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!39437 res!62682) b!129945))

(assert (= (and b!129945 res!62681) b!129946))

(declare-fun m!152813 () Bool)

(assert (=> d!39437 m!152813))

(declare-fun m!152815 () Bool)

(assert (=> d!39437 m!152815))

(declare-fun m!152817 () Bool)

(assert (=> d!39437 m!152817))

(declare-fun m!152819 () Bool)

(assert (=> d!39437 m!152819))

(declare-fun m!152821 () Bool)

(assert (=> b!129945 m!152821))

(declare-fun m!152823 () Bool)

(assert (=> b!129946 m!152823))

(assert (=> b!129645 d!39437))

(declare-fun d!39439 () Bool)

(declare-fun e!84807 () Bool)

(assert (=> d!39439 e!84807))

(declare-fun res!62684 () Bool)

(assert (=> d!39439 (=> (not res!62684) (not e!84807))))

(declare-fun lt!67520 () ListLongMap!1699)

(assert (=> d!39439 (= res!62684 (contains!886 lt!67520 (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun lt!67519 () List!1728)

(assert (=> d!39439 (= lt!67520 (ListLongMap!1700 lt!67519))))

(declare-fun lt!67518 () Unit!4055)

(declare-fun lt!67517 () Unit!4055)

(assert (=> d!39439 (= lt!67518 lt!67517)))

(assert (=> d!39439 (= (getValueByKey!168 lt!67519 (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))) (Some!173 (_2!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39439 (= lt!67517 (lemmaContainsTupThenGetReturnValue!85 lt!67519 (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (_2!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39439 (= lt!67519 (insertStrictlySorted!87 (toList!865 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027))) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (_2!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39439 (= (+!167 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027)) (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67520)))

(declare-fun b!129947 () Bool)

(declare-fun res!62683 () Bool)

(assert (=> b!129947 (=> (not res!62683) (not e!84807))))

(assert (=> b!129947 (= res!62683 (= (getValueByKey!168 (toList!865 lt!67520) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))) (Some!173 (_2!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun b!129948 () Bool)

(assert (=> b!129948 (= e!84807 (contains!887 (toList!865 lt!67520) (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (= (and d!39439 res!62684) b!129947))

(assert (= (and b!129947 res!62683) b!129948))

(declare-fun m!152825 () Bool)

(assert (=> d!39439 m!152825))

(declare-fun m!152827 () Bool)

(assert (=> d!39439 m!152827))

(declare-fun m!152829 () Bool)

(assert (=> d!39439 m!152829))

(declare-fun m!152831 () Bool)

(assert (=> d!39439 m!152831))

(declare-fun m!152833 () Bool)

(assert (=> b!129947 m!152833))

(declare-fun m!152835 () Bool)

(assert (=> b!129948 m!152835))

(assert (=> bm!14021 d!39439))

(declare-fun d!39441 () Bool)

(declare-fun res!62685 () Bool)

(declare-fun e!84808 () Bool)

(assert (=> d!39441 (=> (not res!62685) (not e!84808))))

(assert (=> d!39441 (= res!62685 (simpleValid!88 (_2!1307 lt!67308)))))

(assert (=> d!39441 (= (valid!513 (_2!1307 lt!67308)) e!84808)))

(declare-fun b!129949 () Bool)

(declare-fun res!62686 () Bool)

(assert (=> b!129949 (=> (not res!62686) (not e!84808))))

(assert (=> b!129949 (= res!62686 (= (arrayCountValidKeys!0 (_keys!4565 (_2!1307 lt!67308)) #b00000000000000000000000000000000 (size!2508 (_keys!4565 (_2!1307 lt!67308)))) (_size!589 (_2!1307 lt!67308))))))

(declare-fun b!129950 () Bool)

(declare-fun res!62687 () Bool)

(assert (=> b!129950 (=> (not res!62687) (not e!84808))))

(assert (=> b!129950 (= res!62687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4565 (_2!1307 lt!67308)) (mask!7102 (_2!1307 lt!67308))))))

(declare-fun b!129951 () Bool)

(assert (=> b!129951 (= e!84808 (arrayNoDuplicates!0 (_keys!4565 (_2!1307 lt!67308)) #b00000000000000000000000000000000 Nil!1726))))

(assert (= (and d!39441 res!62685) b!129949))

(assert (= (and b!129949 res!62686) b!129950))

(assert (= (and b!129950 res!62687) b!129951))

(declare-fun m!152837 () Bool)

(assert (=> d!39441 m!152837))

(declare-fun m!152839 () Bool)

(assert (=> b!129949 m!152839))

(declare-fun m!152841 () Bool)

(assert (=> b!129950 m!152841))

(declare-fun m!152843 () Bool)

(assert (=> b!129951 m!152843))

(assert (=> d!39333 d!39441))

(assert (=> d!39333 d!39337))

(declare-fun d!39443 () Bool)

(assert (=> d!39443 (= (apply!113 lt!67214 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1472 (getValueByKey!168 (toList!865 lt!67214) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5390 () Bool)

(assert (= bs!5390 d!39443))

(assert (=> bs!5390 m!152725))

(assert (=> bs!5390 m!152725))

(declare-fun m!152845 () Bool)

(assert (=> bs!5390 m!152845))

(assert (=> b!129515 d!39443))

(declare-fun b!129986 () Bool)

(declare-fun e!84825 () Unit!4055)

(declare-fun lt!67601 () Unit!4055)

(assert (=> b!129986 (= e!84825 lt!67601)))

(assert (=> b!129986 (= lt!67601 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!58 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67593 () SeekEntryResult!282)

(declare-fun call!14152 () SeekEntryResult!282)

(assert (=> b!129986 (= lt!67593 call!14152)))

(declare-fun c!23935 () Bool)

(assert (=> b!129986 (= c!23935 ((_ is MissingZero!282) lt!67593))))

(declare-fun e!84830 () Bool)

(assert (=> b!129986 e!84830))

(declare-fun b!129987 () Bool)

(declare-fun e!84827 () Unit!4055)

(declare-fun Unit!4070 () Unit!4055)

(assert (=> b!129987 (= e!84827 Unit!4070)))

(declare-fun b!129988 () Bool)

(declare-fun e!84832 () Bool)

(declare-fun lt!67585 () tuple2!2594)

(assert (=> b!129988 (= e!84832 (= (map!1395 (_2!1307 lt!67585)) (+!167 (map!1395 newMap!16) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun d!39445 () Bool)

(assert (=> d!39445 e!84832))

(declare-fun res!62710 () Bool)

(assert (=> d!39445 (=> (not res!62710) (not e!84832))))

(assert (=> d!39445 (= res!62710 (_1!1307 lt!67585))))

(assert (=> d!39445 (= lt!67585 (tuple2!2595 true (LongMapFixedSize!1081 (defaultEntry!2824 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (bvadd (_size!589 newMap!16) #b00000000000000000000000000000001) (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (_vacant!589 newMap!16))))))

(declare-fun lt!67590 () Unit!4055)

(declare-fun lt!67592 () Unit!4055)

(assert (=> d!39445 (= lt!67590 lt!67592)))

(declare-fun lt!67595 () array!4740)

(declare-fun lt!67608 () array!4738)

(assert (=> d!39445 (contains!886 (getCurrentListMap!536 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (select (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299))))))

(assert (=> d!39445 (= lt!67592 (lemmaValidKeyInArrayIsInListMap!116 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (defaultEntry!2824 newMap!16)))))

(assert (=> d!39445 (= lt!67595 (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))))))

(assert (=> d!39445 (= lt!67608 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))))))

(declare-fun lt!67583 () Unit!4055)

(declare-fun lt!67582 () Unit!4055)

(assert (=> d!39445 (= lt!67583 lt!67582)))

(declare-fun lt!67604 () array!4738)

(assert (=> d!39445 (= (arrayCountValidKeys!0 lt!67604 (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (bvadd (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4738 (_ BitVec 32)) Unit!4055)

(assert (=> d!39445 (= lt!67582 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!67604 (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299))))))

(assert (=> d!39445 (= lt!67604 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))))))

(declare-fun lt!67588 () Unit!4055)

(declare-fun lt!67610 () Unit!4055)

(assert (=> d!39445 (= lt!67588 lt!67610)))

(declare-fun lt!67596 () array!4738)

(assert (=> d!39445 (arrayContainsKey!0 lt!67596 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!39445 (= lt!67610 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!67596 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299))))))

(assert (=> d!39445 (= lt!67596 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))))))

(declare-fun lt!67584 () Unit!4055)

(declare-fun lt!67586 () Unit!4055)

(assert (=> d!39445 (= lt!67584 lt!67586)))

(assert (=> d!39445 (= (+!167 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!536 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!39 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 (_ BitVec 32) (_ BitVec 64) V!3459 Int) Unit!4055)

(assert (=> d!39445 (= lt!67586 (lemmaAddValidKeyToArrayThenAddPairToListMap!39 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67598 () Unit!4055)

(declare-fun lt!67581 () Unit!4055)

(assert (=> d!39445 (= lt!67598 lt!67581)))

(assert (=> d!39445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (mask!7102 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4738 (_ BitVec 32) (_ BitVec 32)) Unit!4055)

(assert (=> d!39445 (= lt!67581 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (mask!7102 newMap!16)))))

(declare-fun lt!67591 () Unit!4055)

(declare-fun lt!67605 () Unit!4055)

(assert (=> d!39445 (= lt!67591 lt!67605)))

(assert (=> d!39445 (= (arrayCountValidKeys!0 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4565 newMap!16) #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4738 (_ BitVec 32) (_ BitVec 64)) Unit!4055)

(assert (=> d!39445 (= lt!67605 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4565 newMap!16) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun lt!67602 () Unit!4055)

(declare-fun lt!67594 () Unit!4055)

(assert (=> d!39445 (= lt!67602 lt!67594)))

(declare-fun lt!67597 () List!1729)

(declare-fun lt!67600 () (_ BitVec 32))

(assert (=> d!39445 (arrayNoDuplicates!0 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) lt!67600 lt!67597)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4738 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1729) Unit!4055)

(assert (=> d!39445 (= lt!67594 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4565 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) lt!67600 lt!67597))))

(assert (=> d!39445 (= lt!67597 Nil!1726)))

(assert (=> d!39445 (= lt!67600 #b00000000000000000000000000000000)))

(declare-fun lt!67599 () Unit!4055)

(assert (=> d!39445 (= lt!67599 e!84827)))

(declare-fun c!23937 () Bool)

(assert (=> d!39445 (= c!23937 (arrayContainsKey!0 (_keys!4565 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!67587 () Unit!4055)

(assert (=> d!39445 (= lt!67587 e!84825)))

(declare-fun c!23936 () Bool)

(assert (=> d!39445 (= c!23936 (contains!886 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> d!39445 (valid!513 newMap!16)))

(assert (=> d!39445 (= (updateHelperNewKey!58 newMap!16 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299))) lt!67585)))

(declare-fun b!129989 () Bool)

(declare-fun res!62709 () Bool)

(assert (=> b!129989 (= res!62709 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3288 lt!67593)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!84828 () Bool)

(assert (=> b!129989 (=> (not res!62709) (not e!84828))))

(declare-fun b!129990 () Bool)

(declare-fun call!14150 () Bool)

(assert (=> b!129990 (= e!84828 (not call!14150))))

(declare-fun b!129991 () Bool)

(declare-fun e!84831 () Bool)

(assert (=> b!129991 (= e!84831 (not call!14150))))

(declare-fun b!129992 () Bool)

(declare-fun e!84829 () Bool)

(assert (=> b!129992 (= e!84829 ((_ is Undefined!282) lt!67593))))

(declare-fun lt!67603 () SeekEntryResult!282)

(declare-fun bm!14147 () Bool)

(declare-fun call!14151 () Bool)

(assert (=> bm!14147 (= call!14151 (inRange!0 (ite c!23936 (index!3286 lt!67603) (ite c!23935 (index!3285 lt!67593) (index!3288 lt!67593))) (mask!7102 newMap!16)))))

(declare-fun b!129993 () Bool)

(declare-fun res!62712 () Bool)

(assert (=> b!129993 (=> (not res!62712) (not e!84832))))

(assert (=> b!129993 (= res!62712 (valid!513 (_2!1307 lt!67585)))))

(declare-fun b!129994 () Bool)

(declare-fun Unit!4071 () Unit!4055)

(assert (=> b!129994 (= e!84827 Unit!4071)))

(declare-fun lt!67607 () Unit!4055)

(declare-fun lemmaArrayContainsKeyThenInListMap!39 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 (_ BitVec 64) (_ BitVec 32) Int) Unit!4055)

(assert (=> b!129994 (= lt!67607 (lemmaArrayContainsKeyThenInListMap!39 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(assert (=> b!129994 (contains!886 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))

(declare-fun lt!67606 () Unit!4055)

(assert (=> b!129994 (= lt!67606 lt!67607)))

(assert (=> b!129994 false))

(declare-fun e!84826 () Bool)

(declare-fun b!129995 () Bool)

(assert (=> b!129995 (= e!84826 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67603)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun bm!14148 () Bool)

(assert (=> bm!14148 (= call!14150 (arrayContainsKey!0 (_keys!4565 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!129996 () Bool)

(declare-fun c!23938 () Bool)

(assert (=> b!129996 (= c!23938 ((_ is MissingVacant!282) lt!67593))))

(assert (=> b!129996 (= e!84830 e!84829)))

(declare-fun b!129997 () Bool)

(assert (=> b!129997 (= e!84829 e!84828)))

(declare-fun res!62708 () Bool)

(declare-fun call!14153 () Bool)

(assert (=> b!129997 (= res!62708 call!14153)))

(assert (=> b!129997 (=> (not res!62708) (not e!84828))))

(declare-fun b!129998 () Bool)

(declare-fun res!62706 () Bool)

(assert (=> b!129998 (= res!62706 call!14151)))

(assert (=> b!129998 (=> (not res!62706) (not e!84826))))

(declare-fun bm!14149 () Bool)

(assert (=> bm!14149 (= call!14153 call!14151)))

(declare-fun b!129999 () Bool)

(declare-fun res!62713 () Bool)

(assert (=> b!129999 (=> (not res!62713) (not e!84831))))

(assert (=> b!129999 (= res!62713 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3285 lt!67593)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130000 () Bool)

(declare-fun res!62711 () Bool)

(assert (=> b!130000 (=> (not res!62711) (not e!84832))))

(assert (=> b!130000 (= res!62711 (contains!886 (map!1395 (_2!1307 lt!67585)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun bm!14150 () Bool)

(assert (=> bm!14150 (= call!14152 (seekEntryOrOpen!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(declare-fun b!130001 () Bool)

(declare-fun Unit!4072 () Unit!4055)

(assert (=> b!130001 (= e!84825 Unit!4072)))

(declare-fun lt!67589 () Unit!4055)

(assert (=> b!130001 (= lt!67589 (lemmaInListMapThenSeekEntryOrOpenFindsIt!58 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (defaultEntry!2824 newMap!16)))))

(assert (=> b!130001 (= lt!67603 call!14152)))

(declare-fun res!62714 () Bool)

(assert (=> b!130001 (= res!62714 ((_ is Found!282) lt!67603))))

(assert (=> b!130001 (=> (not res!62714) (not e!84826))))

(assert (=> b!130001 e!84826))

(declare-fun lt!67609 () Unit!4055)

(assert (=> b!130001 (= lt!67609 lt!67589)))

(assert (=> b!130001 false))

(declare-fun b!130002 () Bool)

(declare-fun res!62707 () Bool)

(assert (=> b!130002 (=> (not res!62707) (not e!84831))))

(assert (=> b!130002 (= res!62707 call!14153)))

(assert (=> b!130002 (= e!84830 e!84831)))

(assert (= (and d!39445 c!23936) b!130001))

(assert (= (and d!39445 (not c!23936)) b!129986))

(assert (= (and b!130001 res!62714) b!129998))

(assert (= (and b!129998 res!62706) b!129995))

(assert (= (and b!129986 c!23935) b!130002))

(assert (= (and b!129986 (not c!23935)) b!129996))

(assert (= (and b!130002 res!62707) b!129999))

(assert (= (and b!129999 res!62713) b!129991))

(assert (= (and b!129996 c!23938) b!129997))

(assert (= (and b!129996 (not c!23938)) b!129992))

(assert (= (and b!129997 res!62708) b!129989))

(assert (= (and b!129989 res!62709) b!129990))

(assert (= (or b!130002 b!129997) bm!14149))

(assert (= (or b!129991 b!129990) bm!14148))

(assert (= (or b!129998 bm!14149) bm!14147))

(assert (= (or b!130001 b!129986) bm!14150))

(assert (= (and d!39445 c!23937) b!129994))

(assert (= (and d!39445 (not c!23937)) b!129987))

(assert (= (and d!39445 res!62710) b!129993))

(assert (= (and b!129993 res!62712) b!130000))

(assert (= (and b!130000 res!62711) b!129988))

(assert (=> bm!14148 m!152209))

(assert (=> bm!14148 m!152371))

(declare-fun m!152847 () Bool)

(assert (=> b!129995 m!152847))

(declare-fun m!152849 () Bool)

(assert (=> b!130000 m!152849))

(assert (=> b!130000 m!152849))

(assert (=> b!130000 m!152209))

(declare-fun m!152851 () Bool)

(assert (=> b!130000 m!152851))

(declare-fun m!152853 () Bool)

(assert (=> bm!14147 m!152853))

(declare-fun m!152855 () Bool)

(assert (=> d!39445 m!152855))

(assert (=> d!39445 m!152209))

(assert (=> d!39445 m!152207))

(declare-fun m!152857 () Bool)

(assert (=> d!39445 m!152857))

(assert (=> d!39445 m!152253))

(assert (=> d!39445 m!152209))

(assert (=> d!39445 m!152371))

(declare-fun m!152859 () Bool)

(assert (=> d!39445 m!152859))

(declare-fun m!152861 () Bool)

(assert (=> d!39445 m!152861))

(assert (=> d!39445 m!152209))

(declare-fun m!152863 () Bool)

(assert (=> d!39445 m!152863))

(assert (=> d!39445 m!152253))

(assert (=> d!39445 m!152495))

(assert (=> d!39445 m!152201))

(assert (=> d!39445 m!152209))

(declare-fun m!152865 () Bool)

(assert (=> d!39445 m!152865))

(assert (=> d!39445 m!152209))

(declare-fun m!152867 () Bool)

(assert (=> d!39445 m!152867))

(assert (=> d!39445 m!152855))

(declare-fun m!152869 () Bool)

(assert (=> d!39445 m!152869))

(declare-fun m!152871 () Bool)

(assert (=> d!39445 m!152871))

(declare-fun m!152873 () Bool)

(assert (=> d!39445 m!152873))

(assert (=> d!39445 m!152209))

(declare-fun m!152875 () Bool)

(assert (=> d!39445 m!152875))

(assert (=> d!39445 m!152253))

(assert (=> d!39445 m!152209))

(assert (=> d!39445 m!152335))

(declare-fun m!152877 () Bool)

(assert (=> d!39445 m!152877))

(assert (=> d!39445 m!152381))

(declare-fun m!152879 () Bool)

(assert (=> d!39445 m!152879))

(declare-fun m!152881 () Bool)

(assert (=> d!39445 m!152881))

(assert (=> d!39445 m!152869))

(declare-fun m!152883 () Bool)

(assert (=> d!39445 m!152883))

(assert (=> d!39445 m!152209))

(declare-fun m!152885 () Bool)

(assert (=> d!39445 m!152885))

(declare-fun m!152887 () Bool)

(assert (=> d!39445 m!152887))

(declare-fun m!152889 () Bool)

(assert (=> d!39445 m!152889))

(declare-fun m!152891 () Bool)

(assert (=> b!129999 m!152891))

(declare-fun m!152893 () Bool)

(assert (=> b!129993 m!152893))

(assert (=> b!129988 m!152849))

(assert (=> b!129988 m!152215))

(assert (=> b!129988 m!152215))

(declare-fun m!152895 () Bool)

(assert (=> b!129988 m!152895))

(assert (=> b!129994 m!152209))

(declare-fun m!152897 () Bool)

(assert (=> b!129994 m!152897))

(assert (=> b!129994 m!152253))

(assert (=> b!129994 m!152253))

(assert (=> b!129994 m!152209))

(assert (=> b!129994 m!152335))

(assert (=> b!130001 m!152209))

(assert (=> b!130001 m!152341))

(assert (=> b!129986 m!152209))

(assert (=> b!129986 m!152367))

(declare-fun m!152899 () Bool)

(assert (=> b!129989 m!152899))

(assert (=> bm!14150 m!152209))

(assert (=> bm!14150 m!152339))

(assert (=> bm!14085 d!39445))

(declare-fun d!39447 () Bool)

(declare-fun res!62715 () Bool)

(declare-fun e!84833 () Bool)

(assert (=> d!39447 (=> (not res!62715) (not e!84833))))

(assert (=> d!39447 (= res!62715 (simpleValid!88 (v!3159 (underlying!446 thiss!992))))))

(assert (=> d!39447 (= (valid!513 (v!3159 (underlying!446 thiss!992))) e!84833)))

(declare-fun b!130003 () Bool)

(declare-fun res!62716 () Bool)

(assert (=> b!130003 (=> (not res!62716) (not e!84833))))

(assert (=> b!130003 (= res!62716 (= (arrayCountValidKeys!0 (_keys!4565 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000000 (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))) (_size!589 (v!3159 (underlying!446 thiss!992)))))))

(declare-fun b!130004 () Bool)

(declare-fun res!62717 () Bool)

(assert (=> b!130004 (=> (not res!62717) (not e!84833))))

(assert (=> b!130004 (= res!62717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992)))))))

(declare-fun b!130005 () Bool)

(assert (=> b!130005 (= e!84833 (arrayNoDuplicates!0 (_keys!4565 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000000 Nil!1726))))

(assert (= (and d!39447 res!62715) b!130003))

(assert (= (and b!130003 res!62716) b!130004))

(assert (= (and b!130004 res!62717) b!130005))

(declare-fun m!152901 () Bool)

(assert (=> d!39447 m!152901))

(declare-fun m!152903 () Bool)

(assert (=> b!130003 m!152903))

(declare-fun m!152905 () Bool)

(assert (=> b!130004 m!152905))

(declare-fun m!152907 () Bool)

(assert (=> b!130005 m!152907))

(assert (=> d!39327 d!39447))

(declare-fun d!39449 () Bool)

(declare-fun e!84835 () Bool)

(assert (=> d!39449 e!84835))

(declare-fun res!62718 () Bool)

(assert (=> d!39449 (=> res!62718 e!84835)))

(declare-fun lt!67611 () Bool)

(assert (=> d!39449 (= res!62718 (not lt!67611))))

(declare-fun lt!67614 () Bool)

(assert (=> d!39449 (= lt!67611 lt!67614)))

(declare-fun lt!67613 () Unit!4055)

(declare-fun e!84834 () Unit!4055)

(assert (=> d!39449 (= lt!67613 e!84834)))

(declare-fun c!23939 () Bool)

(assert (=> d!39449 (= c!23939 lt!67614)))

(assert (=> d!39449 (= lt!67614 (containsKey!172 (toList!865 call!14088) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> d!39449 (= (contains!886 call!14088 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) lt!67611)))

(declare-fun b!130006 () Bool)

(declare-fun lt!67612 () Unit!4055)

(assert (=> b!130006 (= e!84834 lt!67612)))

(assert (=> b!130006 (= lt!67612 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 call!14088) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> b!130006 (isDefined!122 (getValueByKey!168 (toList!865 call!14088) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun b!130007 () Bool)

(declare-fun Unit!4073 () Unit!4055)

(assert (=> b!130007 (= e!84834 Unit!4073)))

(declare-fun b!130008 () Bool)

(assert (=> b!130008 (= e!84835 (isDefined!122 (getValueByKey!168 (toList!865 call!14088) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(assert (= (and d!39449 c!23939) b!130006))

(assert (= (and d!39449 (not c!23939)) b!130007))

(assert (= (and d!39449 (not res!62718)) b!130008))

(assert (=> d!39449 m!152209))

(declare-fun m!152909 () Bool)

(assert (=> d!39449 m!152909))

(assert (=> b!130006 m!152209))

(declare-fun m!152911 () Bool)

(assert (=> b!130006 m!152911))

(assert (=> b!130006 m!152209))

(declare-fun m!152913 () Bool)

(assert (=> b!130006 m!152913))

(assert (=> b!130006 m!152913))

(declare-fun m!152915 () Bool)

(assert (=> b!130006 m!152915))

(assert (=> b!130008 m!152209))

(assert (=> b!130008 m!152913))

(assert (=> b!130008 m!152913))

(assert (=> b!130008 m!152915))

(assert (=> b!129647 d!39449))

(declare-fun d!39451 () Bool)

(declare-fun e!84836 () Bool)

(assert (=> d!39451 e!84836))

(declare-fun res!62720 () Bool)

(assert (=> d!39451 (=> (not res!62720) (not e!84836))))

(declare-fun lt!67618 () ListLongMap!1699)

(assert (=> d!39451 (= res!62720 (contains!886 lt!67618 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun lt!67617 () List!1728)

(assert (=> d!39451 (= lt!67618 (ListLongMap!1700 lt!67617))))

(declare-fun lt!67616 () Unit!4055)

(declare-fun lt!67615 () Unit!4055)

(assert (=> d!39451 (= lt!67616 lt!67615)))

(assert (=> d!39451 (= (getValueByKey!168 lt!67617 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (Some!173 (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39451 (= lt!67615 (lemmaContainsTupThenGetReturnValue!85 lt!67617 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39451 (= lt!67617 (insertStrictlySorted!87 (toList!865 call!14024) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39451 (= (+!167 call!14024 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67618)))

(declare-fun b!130009 () Bool)

(declare-fun res!62719 () Bool)

(assert (=> b!130009 (=> (not res!62719) (not e!84836))))

(assert (=> b!130009 (= res!62719 (= (getValueByKey!168 (toList!865 lt!67618) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (Some!173 (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!130010 () Bool)

(assert (=> b!130010 (= e!84836 (contains!887 (toList!865 lt!67618) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(assert (= (and d!39451 res!62720) b!130009))

(assert (= (and b!130009 res!62719) b!130010))

(declare-fun m!152917 () Bool)

(assert (=> d!39451 m!152917))

(declare-fun m!152919 () Bool)

(assert (=> d!39451 m!152919))

(declare-fun m!152921 () Bool)

(assert (=> d!39451 m!152921))

(declare-fun m!152923 () Bool)

(assert (=> d!39451 m!152923))

(declare-fun m!152925 () Bool)

(assert (=> b!130009 m!152925))

(declare-fun m!152927 () Bool)

(assert (=> b!130010 m!152927))

(assert (=> b!129517 d!39451))

(declare-fun mapIsEmpty!4581 () Bool)

(declare-fun mapRes!4581 () Bool)

(assert (=> mapIsEmpty!4581 mapRes!4581))

(declare-fun b!130011 () Bool)

(declare-fun e!84838 () Bool)

(assert (=> b!130011 (= e!84838 tp_is_empty!2859)))

(declare-fun condMapEmpty!4581 () Bool)

(declare-fun mapDefault!4581 () ValueCell!1086)

(assert (=> mapNonEmpty!4580 (= condMapEmpty!4581 (= mapRest!4580 ((as const (Array (_ BitVec 32) ValueCell!1086)) mapDefault!4581)))))

(declare-fun e!84837 () Bool)

(assert (=> mapNonEmpty!4580 (= tp!11096 (and e!84837 mapRes!4581))))

(declare-fun mapNonEmpty!4581 () Bool)

(declare-fun tp!11097 () Bool)

(assert (=> mapNonEmpty!4581 (= mapRes!4581 (and tp!11097 e!84838))))

(declare-fun mapValue!4581 () ValueCell!1086)

(declare-fun mapRest!4581 () (Array (_ BitVec 32) ValueCell!1086))

(declare-fun mapKey!4581 () (_ BitVec 32))

(assert (=> mapNonEmpty!4581 (= mapRest!4580 (store mapRest!4581 mapKey!4581 mapValue!4581))))

(declare-fun b!130012 () Bool)

(assert (=> b!130012 (= e!84837 tp_is_empty!2859)))

(assert (= (and mapNonEmpty!4580 condMapEmpty!4581) mapIsEmpty!4581))

(assert (= (and mapNonEmpty!4580 (not condMapEmpty!4581)) mapNonEmpty!4581))

(assert (= (and mapNonEmpty!4581 ((_ is ValueCellFull!1086) mapValue!4581)) b!130011))

(assert (= (and mapNonEmpty!4580 ((_ is ValueCellFull!1086) mapDefault!4581)) b!130012))

(declare-fun m!152929 () Bool)

(assert (=> mapNonEmpty!4581 m!152929))

(declare-fun mapIsEmpty!4582 () Bool)

(declare-fun mapRes!4582 () Bool)

(assert (=> mapIsEmpty!4582 mapRes!4582))

(declare-fun b!130013 () Bool)

(declare-fun e!84840 () Bool)

(assert (=> b!130013 (= e!84840 tp_is_empty!2859)))

(declare-fun condMapEmpty!4582 () Bool)

(declare-fun mapDefault!4582 () ValueCell!1086)

(assert (=> mapNonEmpty!4579 (= condMapEmpty!4582 (= mapRest!4579 ((as const (Array (_ BitVec 32) ValueCell!1086)) mapDefault!4582)))))

(declare-fun e!84839 () Bool)

(assert (=> mapNonEmpty!4579 (= tp!11095 (and e!84839 mapRes!4582))))

(declare-fun mapNonEmpty!4582 () Bool)

(declare-fun tp!11098 () Bool)

(assert (=> mapNonEmpty!4582 (= mapRes!4582 (and tp!11098 e!84840))))

(declare-fun mapKey!4582 () (_ BitVec 32))

(declare-fun mapRest!4582 () (Array (_ BitVec 32) ValueCell!1086))

(declare-fun mapValue!4582 () ValueCell!1086)

(assert (=> mapNonEmpty!4582 (= mapRest!4579 (store mapRest!4582 mapKey!4582 mapValue!4582))))

(declare-fun b!130014 () Bool)

(assert (=> b!130014 (= e!84839 tp_is_empty!2859)))

(assert (= (and mapNonEmpty!4579 condMapEmpty!4582) mapIsEmpty!4582))

(assert (= (and mapNonEmpty!4579 (not condMapEmpty!4582)) mapNonEmpty!4582))

(assert (= (and mapNonEmpty!4582 ((_ is ValueCellFull!1086) mapValue!4582)) b!130013))

(assert (= (and mapNonEmpty!4579 ((_ is ValueCellFull!1086) mapDefault!4582)) b!130014))

(declare-fun m!152931 () Bool)

(assert (=> mapNonEmpty!4582 m!152931))

(declare-fun b_lambda!5793 () Bool)

(assert (= b_lambda!5785 (or (and b!129396 b_free!2885) (and b!129399 b_free!2887 (= (defaultEntry!2824 newMap!16) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))))) b_lambda!5793)))

(declare-fun b_lambda!5795 () Bool)

(assert (= b_lambda!5787 (or (and b!129396 b_free!2885) (and b!129399 b_free!2887 (= (defaultEntry!2824 newMap!16) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))))) b_lambda!5795)))

(declare-fun b_lambda!5797 () Bool)

(assert (= b_lambda!5791 (or (and b!129396 b_free!2885 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16))) (and b!129399 b_free!2887) b_lambda!5797)))

(declare-fun b_lambda!5799 () Bool)

(assert (= b_lambda!5789 (or (and b!129396 b_free!2885 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16))) (and b!129399 b_free!2887) b_lambda!5799)))

(declare-fun b_lambda!5801 () Bool)

(assert (= b_lambda!5783 (or (and b!129396 b_free!2885 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16))) (and b!129399 b_free!2887) b_lambda!5801)))

(check-sat (not b!129788) (not b!129993) (not b!129803) (not b!130001) (not d!39401) (not b!129867) (not b!129782) (not b_lambda!5795) (not b!129869) (not d!39421) tp_is_empty!2859 (not d!39397) (not b!130005) (not bm!14133) (not d!39361) (not bm!14138) (not b!129878) (not d!39431) (not b!129786) (not b!129783) (not b!129949) (not b!129892) (not bm!14116) (not bm!14125) (not d!39407) (not bm!14128) (not b!129994) (not b!129842) (not b!129868) (not b!129834) (not d!39357) (not b_lambda!5801) (not b!129899) (not d!39369) (not bm!14110) (not b!129677) (not b!129853) (not b!129720) (not b!129734) (not b!129679) (not d!39385) (not b!129727) (not b!129908) (not b!130004) (not d!39443) (not b!129870) (not b!130010) (not bm!14111) (not mapNonEmpty!4582) (not b!129815) (not d!39395) (not bm!14120) (not d!39449) (not b!129680) (not d!39355) (not b!129923) (not d!39391) (not b!129879) (not b!129793) (not b!129836) (not d!39451) (not d!39415) (not b!129741) (not b!129931) (not b!130003) (not b!129925) (not b!129830) (not b!129806) (not b!129731) (not b!129946) (not b!129797) (not d!39389) (not b_lambda!5797) (not d!39429) (not b!129718) (not d!39373) (not bm!14109) (not b!129779) (not b_next!2887) (not b!129897) (not b!129860) (not b!129896) (not bm!14147) (not d!39441) (not d!39403) (not b!129945) (not bm!14132) (not b!129951) (not bm!14119) (not b!129750) (not bm!14105) (not b!129778) (not b_lambda!5799) (not d!39377) (not bm!14115) (not b!129920) (not b!129876) (not b!129948) (not b!129787) (not b_next!2885) (not b!129916) (not d!39347) (not b!129875) (not bm!14129) (not b!129930) (not b!129950) (not d!39405) (not d!39393) (not b!130000) (not d!39425) (not b!129737) (not d!39379) (not b!129784) (not bm!14148) (not d!39447) (not b!129910) (not b!129852) (not d!39411) (not b!129941) (not d!39341) (not b!129926) (not d!39383) (not d!39437) (not b!129881) (not bm!14106) (not d!39359) (not b!129800) (not b!129807) (not d!39349) (not b!129872) (not b!129988) (not b!129808) (not b!130008) (not b!129877) (not b!129752) (not b!129947) (not b!130009) (not b_lambda!5777) (not b!129873) (not d!39353) (not d!39399) (not d!39439) (not bm!14134) (not b!129802) (not d!39387) (not d!39419) (not d!39409) (not b!130006) (not b!129746) (not b_lambda!5793) b_and!8057 (not d!39445) (not d!39413) (not mapNonEmpty!4581) (not bm!14121) b_and!8059 (not bm!14150) (not b!129862) (not b!129893) (not b!129749) (not bm!14104) (not d!39339) (not b!129740) (not b!129707) (not d!39417) (not b_lambda!5781) (not b!129929) (not b!129742) (not b!129986) (not b!129736) (not d!39435) (not d!39345) (not b!129722))
(check-sat b_and!8057 b_and!8059 (not b_next!2885) (not b_next!2887))
(get-model)

(declare-fun d!39453 () Bool)

(assert (=> d!39453 (= (apply!113 lt!67508 lt!67490) (get!1472 (getValueByKey!168 (toList!865 lt!67508) lt!67490)))))

(declare-fun bs!5391 () Bool)

(assert (= bs!5391 d!39453))

(declare-fun m!152933 () Bool)

(assert (=> bs!5391 m!152933))

(assert (=> bs!5391 m!152933))

(declare-fun m!152935 () Bool)

(assert (=> bs!5391 m!152935))

(assert (=> b!129925 d!39453))

(declare-fun d!39455 () Bool)

(assert (=> d!39455 (contains!886 (+!167 lt!67498 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))) lt!67504)))

(declare-fun lt!67619 () Unit!4055)

(assert (=> d!39455 (= lt!67619 (choose!800 lt!67498 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) lt!67504))))

(assert (=> d!39455 (contains!886 lt!67498 lt!67504)))

(assert (=> d!39455 (= (addStillContains!89 lt!67498 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) lt!67504) lt!67619)))

(declare-fun bs!5392 () Bool)

(assert (= bs!5392 d!39455))

(assert (=> bs!5392 m!152783))

(assert (=> bs!5392 m!152783))

(assert (=> bs!5392 m!152787))

(declare-fun m!152937 () Bool)

(assert (=> bs!5392 m!152937))

(declare-fun m!152939 () Bool)

(assert (=> bs!5392 m!152939))

(assert (=> b!129925 d!39455))

(declare-fun d!39457 () Bool)

(assert (=> d!39457 (= (apply!113 (+!167 lt!67496 (tuple2!2593 lt!67505 (minValue!2683 newMap!16))) lt!67503) (get!1472 (getValueByKey!168 (toList!865 (+!167 lt!67496 (tuple2!2593 lt!67505 (minValue!2683 newMap!16)))) lt!67503)))))

(declare-fun bs!5393 () Bool)

(assert (= bs!5393 d!39457))

(declare-fun m!152941 () Bool)

(assert (=> bs!5393 m!152941))

(assert (=> bs!5393 m!152941))

(declare-fun m!152943 () Bool)

(assert (=> bs!5393 m!152943))

(assert (=> b!129925 d!39457))

(declare-fun d!39459 () Bool)

(assert (=> d!39459 (= (apply!113 lt!67501 lt!67492) (get!1472 (getValueByKey!168 (toList!865 lt!67501) lt!67492)))))

(declare-fun bs!5394 () Bool)

(assert (= bs!5394 d!39459))

(declare-fun m!152945 () Bool)

(assert (=> bs!5394 m!152945))

(assert (=> bs!5394 m!152945))

(declare-fun m!152947 () Bool)

(assert (=> bs!5394 m!152947))

(assert (=> b!129925 d!39459))

(declare-fun d!39461 () Bool)

(declare-fun e!84841 () Bool)

(assert (=> d!39461 e!84841))

(declare-fun res!62722 () Bool)

(assert (=> d!39461 (=> (not res!62722) (not e!84841))))

(declare-fun lt!67623 () ListLongMap!1699)

(assert (=> d!39461 (= res!62722 (contains!886 lt!67623 (_1!1306 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))))))

(declare-fun lt!67622 () List!1728)

(assert (=> d!39461 (= lt!67623 (ListLongMap!1700 lt!67622))))

(declare-fun lt!67621 () Unit!4055)

(declare-fun lt!67620 () Unit!4055)

(assert (=> d!39461 (= lt!67621 lt!67620)))

(assert (=> d!39461 (= (getValueByKey!168 lt!67622 (_1!1306 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))) (Some!173 (_2!1306 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))))))

(assert (=> d!39461 (= lt!67620 (lemmaContainsTupThenGetReturnValue!85 lt!67622 (_1!1306 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))) (_2!1306 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))))))

(assert (=> d!39461 (= lt!67622 (insertStrictlySorted!87 (toList!865 lt!67498) (_1!1306 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))) (_2!1306 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))))))

(assert (=> d!39461 (= (+!167 lt!67498 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))) lt!67623)))

(declare-fun b!130015 () Bool)

(declare-fun res!62721 () Bool)

(assert (=> b!130015 (=> (not res!62721) (not e!84841))))

(assert (=> b!130015 (= res!62721 (= (getValueByKey!168 (toList!865 lt!67623) (_1!1306 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))) (Some!173 (_2!1306 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))))))))

(declare-fun b!130016 () Bool)

(assert (=> b!130016 (= e!84841 (contains!887 (toList!865 lt!67623) (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))))))

(assert (= (and d!39461 res!62722) b!130015))

(assert (= (and b!130015 res!62721) b!130016))

(declare-fun m!152949 () Bool)

(assert (=> d!39461 m!152949))

(declare-fun m!152951 () Bool)

(assert (=> d!39461 m!152951))

(declare-fun m!152953 () Bool)

(assert (=> d!39461 m!152953))

(declare-fun m!152955 () Bool)

(assert (=> d!39461 m!152955))

(declare-fun m!152957 () Bool)

(assert (=> b!130015 m!152957))

(declare-fun m!152959 () Bool)

(assert (=> b!130016 m!152959))

(assert (=> b!129925 d!39461))

(declare-fun d!39463 () Bool)

(assert (=> d!39463 (= (apply!113 (+!167 lt!67496 (tuple2!2593 lt!67505 (minValue!2683 newMap!16))) lt!67503) (apply!113 lt!67496 lt!67503))))

(declare-fun lt!67624 () Unit!4055)

(assert (=> d!39463 (= lt!67624 (choose!799 lt!67496 lt!67505 (minValue!2683 newMap!16) lt!67503))))

(declare-fun e!84842 () Bool)

(assert (=> d!39463 e!84842))

(declare-fun res!62723 () Bool)

(assert (=> d!39463 (=> (not res!62723) (not e!84842))))

(assert (=> d!39463 (= res!62723 (contains!886 lt!67496 lt!67503))))

(assert (=> d!39463 (= (addApplyDifferent!89 lt!67496 lt!67505 (minValue!2683 newMap!16) lt!67503) lt!67624)))

(declare-fun b!130017 () Bool)

(assert (=> b!130017 (= e!84842 (not (= lt!67503 lt!67505)))))

(assert (= (and d!39463 res!62723) b!130017))

(assert (=> d!39463 m!152757))

(assert (=> d!39463 m!152757))

(assert (=> d!39463 m!152767))

(assert (=> d!39463 m!152769))

(declare-fun m!152961 () Bool)

(assert (=> d!39463 m!152961))

(declare-fun m!152963 () Bool)

(assert (=> d!39463 m!152963))

(assert (=> b!129925 d!39463))

(declare-fun d!39465 () Bool)

(assert (=> d!39465 (= (apply!113 (+!167 lt!67501 (tuple2!2593 lt!67509 (minValue!2683 newMap!16))) lt!67492) (apply!113 lt!67501 lt!67492))))

(declare-fun lt!67625 () Unit!4055)

(assert (=> d!39465 (= lt!67625 (choose!799 lt!67501 lt!67509 (minValue!2683 newMap!16) lt!67492))))

(declare-fun e!84843 () Bool)

(assert (=> d!39465 e!84843))

(declare-fun res!62724 () Bool)

(assert (=> d!39465 (=> (not res!62724) (not e!84843))))

(assert (=> d!39465 (= res!62724 (contains!886 lt!67501 lt!67492))))

(assert (=> d!39465 (= (addApplyDifferent!89 lt!67501 lt!67509 (minValue!2683 newMap!16) lt!67492) lt!67625)))

(declare-fun b!130018 () Bool)

(assert (=> b!130018 (= e!84843 (not (= lt!67492 lt!67509)))))

(assert (= (and d!39465 res!62724) b!130018))

(assert (=> d!39465 m!152759))

(assert (=> d!39465 m!152759))

(assert (=> d!39465 m!152761))

(assert (=> d!39465 m!152765))

(declare-fun m!152965 () Bool)

(assert (=> d!39465 m!152965))

(declare-fun m!152967 () Bool)

(assert (=> d!39465 m!152967))

(assert (=> b!129925 d!39465))

(declare-fun b!130019 () Bool)

(declare-fun e!84849 () ListLongMap!1699)

(assert (=> b!130019 (= e!84849 (ListLongMap!1700 Nil!1725))))

(declare-fun b!130020 () Bool)

(declare-fun res!62728 () Bool)

(declare-fun e!84846 () Bool)

(assert (=> b!130020 (=> (not res!62728) (not e!84846))))

(declare-fun lt!67627 () ListLongMap!1699)

(assert (=> b!130020 (= res!62728 (not (contains!886 lt!67627 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun call!14154 () ListLongMap!1699)

(declare-fun bm!14151 () Bool)

(assert (=> bm!14151 (= call!14154 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304) (mask!7102 newMap!16) (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) (minValue!2683 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2824 newMap!16)))))

(declare-fun b!130021 () Bool)

(declare-fun e!84847 () Bool)

(declare-fun e!84844 () Bool)

(assert (=> b!130021 (= e!84847 e!84844)))

(assert (=> b!130021 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun res!62725 () Bool)

(assert (=> b!130021 (= res!62725 (contains!886 lt!67627 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!130021 (=> (not res!62725) (not e!84844))))

(declare-fun b!130022 () Bool)

(declare-fun e!84850 () ListLongMap!1699)

(assert (=> b!130022 (= e!84850 call!14154)))

(declare-fun b!130023 () Bool)

(declare-fun e!84848 () Bool)

(assert (=> b!130023 (= e!84847 e!84848)))

(declare-fun c!23941 () Bool)

(assert (=> b!130023 (= c!23941 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!130024 () Bool)

(assert (=> b!130024 (= e!84849 e!84850)))

(declare-fun c!23940 () Bool)

(assert (=> b!130024 (= c!23940 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!130025 () Bool)

(declare-fun lt!67629 () Unit!4055)

(declare-fun lt!67626 () Unit!4055)

(assert (=> b!130025 (= lt!67629 lt!67626)))

(declare-fun lt!67631 () (_ BitVec 64))

(declare-fun lt!67630 () V!3459)

(declare-fun lt!67628 () (_ BitVec 64))

(declare-fun lt!67632 () ListLongMap!1699)

(assert (=> b!130025 (not (contains!886 (+!167 lt!67632 (tuple2!2593 lt!67631 lt!67630)) lt!67628))))

(assert (=> b!130025 (= lt!67626 (addStillNotContains!60 lt!67632 lt!67631 lt!67630 lt!67628))))

(assert (=> b!130025 (= lt!67628 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!130025 (= lt!67630 (get!1469 (select (arr!2243 (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!130025 (= lt!67631 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!130025 (= lt!67632 call!14154)))

(assert (=> b!130025 (= e!84850 (+!167 call!14154 (tuple2!2593 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) (get!1469 (select (arr!2243 (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!130026 () Bool)

(assert (=> b!130026 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(assert (=> b!130026 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2509 (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304))))))

(assert (=> b!130026 (= e!84844 (= (apply!113 lt!67627 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) (get!1469 (select (arr!2243 (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!130027 () Bool)

(assert (=> b!130027 (= e!84846 e!84847)))

(declare-fun c!23942 () Bool)

(declare-fun e!84845 () Bool)

(assert (=> b!130027 (= c!23942 e!84845)))

(declare-fun res!62726 () Bool)

(assert (=> b!130027 (=> (not res!62726) (not e!84845))))

(assert (=> b!130027 (= res!62726 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun d!39467 () Bool)

(assert (=> d!39467 e!84846))

(declare-fun res!62727 () Bool)

(assert (=> d!39467 (=> (not res!62727) (not e!84846))))

(assert (=> d!39467 (= res!62727 (not (contains!886 lt!67627 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39467 (= lt!67627 e!84849)))

(declare-fun c!23943 () Bool)

(assert (=> d!39467 (= c!23943 (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(assert (=> d!39467 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39467 (= (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304) (mask!7102 newMap!16) (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) lt!67627)))

(declare-fun b!130028 () Bool)

(assert (=> b!130028 (= e!84845 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!130028 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!130029 () Bool)

(assert (=> b!130029 (= e!84848 (= lt!67627 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304) (mask!7102 newMap!16) (ite (and c!23852 c!23844) lt!67305 (extraKeys!2597 newMap!16)) (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) (minValue!2683 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2824 newMap!16))))))

(declare-fun b!130030 () Bool)

(assert (=> b!130030 (= e!84848 (isEmpty!408 lt!67627))))

(assert (= (and d!39467 c!23943) b!130019))

(assert (= (and d!39467 (not c!23943)) b!130024))

(assert (= (and b!130024 c!23940) b!130025))

(assert (= (and b!130024 (not c!23940)) b!130022))

(assert (= (or b!130025 b!130022) bm!14151))

(assert (= (and d!39467 res!62727) b!130020))

(assert (= (and b!130020 res!62728) b!130027))

(assert (= (and b!130027 res!62726) b!130028))

(assert (= (and b!130027 c!23942) b!130021))

(assert (= (and b!130027 (not c!23942)) b!130023))

(assert (= (and b!130021 res!62725) b!130026))

(assert (= (and b!130023 c!23941) b!130029))

(assert (= (and b!130023 (not c!23941)) b!130030))

(declare-fun b_lambda!5803 () Bool)

(assert (=> (not b_lambda!5803) (not b!130025)))

(assert (=> b!130025 t!6146))

(declare-fun b_and!8061 () Bool)

(assert (= b_and!8057 (and (=> t!6146 result!3933) b_and!8061)))

(assert (=> b!130025 t!6148))

(declare-fun b_and!8063 () Bool)

(assert (= b_and!8059 (and (=> t!6148 result!3935) b_and!8063)))

(declare-fun b_lambda!5805 () Bool)

(assert (=> (not b_lambda!5805) (not b!130026)))

(assert (=> b!130026 t!6146))

(declare-fun b_and!8065 () Bool)

(assert (= b_and!8061 (and (=> t!6146 result!3933) b_and!8065)))

(assert (=> b!130026 t!6148))

(declare-fun b_and!8067 () Bool)

(assert (= b_and!8063 (and (=> t!6148 result!3935) b_and!8067)))

(declare-fun m!152969 () Bool)

(assert (=> b!130030 m!152969))

(assert (=> b!130024 m!152429))

(assert (=> b!130024 m!152429))

(assert (=> b!130024 m!152431))

(declare-fun m!152971 () Bool)

(assert (=> b!130025 m!152971))

(assert (=> b!130025 m!152429))

(assert (=> b!130025 m!152793))

(assert (=> b!130025 m!152471))

(declare-fun m!152973 () Bool)

(assert (=> b!130025 m!152973))

(assert (=> b!130025 m!152793))

(assert (=> b!130025 m!152471))

(assert (=> b!130025 m!152795))

(declare-fun m!152975 () Bool)

(assert (=> b!130025 m!152975))

(declare-fun m!152977 () Bool)

(assert (=> b!130025 m!152977))

(assert (=> b!130025 m!152975))

(assert (=> b!130026 m!152429))

(assert (=> b!130026 m!152793))

(assert (=> b!130026 m!152471))

(assert (=> b!130026 m!152793))

(assert (=> b!130026 m!152471))

(assert (=> b!130026 m!152795))

(assert (=> b!130026 m!152429))

(declare-fun m!152979 () Bool)

(assert (=> b!130026 m!152979))

(declare-fun m!152981 () Bool)

(assert (=> d!39467 m!152981))

(assert (=> d!39467 m!152393))

(declare-fun m!152983 () Bool)

(assert (=> b!130020 m!152983))

(assert (=> b!130028 m!152429))

(assert (=> b!130028 m!152429))

(assert (=> b!130028 m!152431))

(declare-fun m!152985 () Bool)

(assert (=> b!130029 m!152985))

(assert (=> bm!14151 m!152985))

(assert (=> b!130021 m!152429))

(assert (=> b!130021 m!152429))

(declare-fun m!152987 () Bool)

(assert (=> b!130021 m!152987))

(assert (=> b!129925 d!39467))

(declare-fun d!39469 () Bool)

(declare-fun e!84851 () Bool)

(assert (=> d!39469 e!84851))

(declare-fun res!62730 () Bool)

(assert (=> d!39469 (=> (not res!62730) (not e!84851))))

(declare-fun lt!67636 () ListLongMap!1699)

(assert (=> d!39469 (= res!62730 (contains!886 lt!67636 (_1!1306 (tuple2!2593 lt!67509 (minValue!2683 newMap!16)))))))

(declare-fun lt!67635 () List!1728)

(assert (=> d!39469 (= lt!67636 (ListLongMap!1700 lt!67635))))

(declare-fun lt!67634 () Unit!4055)

(declare-fun lt!67633 () Unit!4055)

(assert (=> d!39469 (= lt!67634 lt!67633)))

(assert (=> d!39469 (= (getValueByKey!168 lt!67635 (_1!1306 (tuple2!2593 lt!67509 (minValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67509 (minValue!2683 newMap!16)))))))

(assert (=> d!39469 (= lt!67633 (lemmaContainsTupThenGetReturnValue!85 lt!67635 (_1!1306 (tuple2!2593 lt!67509 (minValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67509 (minValue!2683 newMap!16)))))))

(assert (=> d!39469 (= lt!67635 (insertStrictlySorted!87 (toList!865 lt!67501) (_1!1306 (tuple2!2593 lt!67509 (minValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67509 (minValue!2683 newMap!16)))))))

(assert (=> d!39469 (= (+!167 lt!67501 (tuple2!2593 lt!67509 (minValue!2683 newMap!16))) lt!67636)))

(declare-fun b!130031 () Bool)

(declare-fun res!62729 () Bool)

(assert (=> b!130031 (=> (not res!62729) (not e!84851))))

(assert (=> b!130031 (= res!62729 (= (getValueByKey!168 (toList!865 lt!67636) (_1!1306 (tuple2!2593 lt!67509 (minValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67509 (minValue!2683 newMap!16))))))))

(declare-fun b!130032 () Bool)

(assert (=> b!130032 (= e!84851 (contains!887 (toList!865 lt!67636) (tuple2!2593 lt!67509 (minValue!2683 newMap!16))))))

(assert (= (and d!39469 res!62730) b!130031))

(assert (= (and b!130031 res!62729) b!130032))

(declare-fun m!152989 () Bool)

(assert (=> d!39469 m!152989))

(declare-fun m!152991 () Bool)

(assert (=> d!39469 m!152991))

(declare-fun m!152993 () Bool)

(assert (=> d!39469 m!152993))

(declare-fun m!152995 () Bool)

(assert (=> d!39469 m!152995))

(declare-fun m!152997 () Bool)

(assert (=> b!130031 m!152997))

(declare-fun m!152999 () Bool)

(assert (=> b!130032 m!152999))

(assert (=> b!129925 d!39469))

(declare-fun d!39471 () Bool)

(assert (=> d!39471 (= (apply!113 (+!167 lt!67508 (tuple2!2593 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))) lt!67490) (apply!113 lt!67508 lt!67490))))

(declare-fun lt!67637 () Unit!4055)

(assert (=> d!39471 (= lt!67637 (choose!799 lt!67508 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) lt!67490))))

(declare-fun e!84852 () Bool)

(assert (=> d!39471 e!84852))

(declare-fun res!62731 () Bool)

(assert (=> d!39471 (=> (not res!62731) (not e!84852))))

(assert (=> d!39471 (= res!62731 (contains!886 lt!67508 lt!67490))))

(assert (=> d!39471 (= (addApplyDifferent!89 lt!67508 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)) lt!67490) lt!67637)))

(declare-fun b!130033 () Bool)

(assert (=> b!130033 (= e!84852 (not (= lt!67490 lt!67493)))))

(assert (= (and d!39471 res!62731) b!130033))

(assert (=> d!39471 m!152775))

(assert (=> d!39471 m!152775))

(assert (=> d!39471 m!152777))

(assert (=> d!39471 m!152763))

(declare-fun m!153001 () Bool)

(assert (=> d!39471 m!153001))

(declare-fun m!153003 () Bool)

(assert (=> d!39471 m!153003))

(assert (=> b!129925 d!39471))

(declare-fun d!39473 () Bool)

(assert (=> d!39473 (= (apply!113 (+!167 lt!67508 (tuple2!2593 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))) lt!67490) (get!1472 (getValueByKey!168 (toList!865 (+!167 lt!67508 (tuple2!2593 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))) lt!67490)))))

(declare-fun bs!5395 () Bool)

(assert (= bs!5395 d!39473))

(declare-fun m!153005 () Bool)

(assert (=> bs!5395 m!153005))

(assert (=> bs!5395 m!153005))

(declare-fun m!153007 () Bool)

(assert (=> bs!5395 m!153007))

(assert (=> b!129925 d!39473))

(declare-fun d!39475 () Bool)

(assert (=> d!39475 (= (apply!113 (+!167 lt!67501 (tuple2!2593 lt!67509 (minValue!2683 newMap!16))) lt!67492) (get!1472 (getValueByKey!168 (toList!865 (+!167 lt!67501 (tuple2!2593 lt!67509 (minValue!2683 newMap!16)))) lt!67492)))))

(declare-fun bs!5396 () Bool)

(assert (= bs!5396 d!39475))

(declare-fun m!153009 () Bool)

(assert (=> bs!5396 m!153009))

(assert (=> bs!5396 m!153009))

(declare-fun m!153011 () Bool)

(assert (=> bs!5396 m!153011))

(assert (=> b!129925 d!39475))

(declare-fun d!39477 () Bool)

(assert (=> d!39477 (= (apply!113 lt!67496 lt!67503) (get!1472 (getValueByKey!168 (toList!865 lt!67496) lt!67503)))))

(declare-fun bs!5397 () Bool)

(assert (= bs!5397 d!39477))

(declare-fun m!153013 () Bool)

(assert (=> bs!5397 m!153013))

(assert (=> bs!5397 m!153013))

(declare-fun m!153015 () Bool)

(assert (=> bs!5397 m!153015))

(assert (=> b!129925 d!39477))

(declare-fun d!39479 () Bool)

(declare-fun e!84853 () Bool)

(assert (=> d!39479 e!84853))

(declare-fun res!62733 () Bool)

(assert (=> d!39479 (=> (not res!62733) (not e!84853))))

(declare-fun lt!67641 () ListLongMap!1699)

(assert (=> d!39479 (= res!62733 (contains!886 lt!67641 (_1!1306 (tuple2!2593 lt!67505 (minValue!2683 newMap!16)))))))

(declare-fun lt!67640 () List!1728)

(assert (=> d!39479 (= lt!67641 (ListLongMap!1700 lt!67640))))

(declare-fun lt!67639 () Unit!4055)

(declare-fun lt!67638 () Unit!4055)

(assert (=> d!39479 (= lt!67639 lt!67638)))

(assert (=> d!39479 (= (getValueByKey!168 lt!67640 (_1!1306 (tuple2!2593 lt!67505 (minValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67505 (minValue!2683 newMap!16)))))))

(assert (=> d!39479 (= lt!67638 (lemmaContainsTupThenGetReturnValue!85 lt!67640 (_1!1306 (tuple2!2593 lt!67505 (minValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67505 (minValue!2683 newMap!16)))))))

(assert (=> d!39479 (= lt!67640 (insertStrictlySorted!87 (toList!865 lt!67496) (_1!1306 (tuple2!2593 lt!67505 (minValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67505 (minValue!2683 newMap!16)))))))

(assert (=> d!39479 (= (+!167 lt!67496 (tuple2!2593 lt!67505 (minValue!2683 newMap!16))) lt!67641)))

(declare-fun b!130034 () Bool)

(declare-fun res!62732 () Bool)

(assert (=> b!130034 (=> (not res!62732) (not e!84853))))

(assert (=> b!130034 (= res!62732 (= (getValueByKey!168 (toList!865 lt!67641) (_1!1306 (tuple2!2593 lt!67505 (minValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67505 (minValue!2683 newMap!16))))))))

(declare-fun b!130035 () Bool)

(assert (=> b!130035 (= e!84853 (contains!887 (toList!865 lt!67641) (tuple2!2593 lt!67505 (minValue!2683 newMap!16))))))

(assert (= (and d!39479 res!62733) b!130034))

(assert (= (and b!130034 res!62732) b!130035))

(declare-fun m!153017 () Bool)

(assert (=> d!39479 m!153017))

(declare-fun m!153019 () Bool)

(assert (=> d!39479 m!153019))

(declare-fun m!153021 () Bool)

(assert (=> d!39479 m!153021))

(declare-fun m!153023 () Bool)

(assert (=> d!39479 m!153023))

(declare-fun m!153025 () Bool)

(assert (=> b!130034 m!153025))

(declare-fun m!153027 () Bool)

(assert (=> b!130035 m!153027))

(assert (=> b!129925 d!39479))

(declare-fun d!39481 () Bool)

(declare-fun e!84855 () Bool)

(assert (=> d!39481 e!84855))

(declare-fun res!62734 () Bool)

(assert (=> d!39481 (=> res!62734 e!84855)))

(declare-fun lt!67642 () Bool)

(assert (=> d!39481 (= res!62734 (not lt!67642))))

(declare-fun lt!67645 () Bool)

(assert (=> d!39481 (= lt!67642 lt!67645)))

(declare-fun lt!67644 () Unit!4055)

(declare-fun e!84854 () Unit!4055)

(assert (=> d!39481 (= lt!67644 e!84854)))

(declare-fun c!23944 () Bool)

(assert (=> d!39481 (= c!23944 lt!67645)))

(assert (=> d!39481 (= lt!67645 (containsKey!172 (toList!865 (+!167 lt!67498 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))) lt!67504))))

(assert (=> d!39481 (= (contains!886 (+!167 lt!67498 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))) lt!67504) lt!67642)))

(declare-fun b!130036 () Bool)

(declare-fun lt!67643 () Unit!4055)

(assert (=> b!130036 (= e!84854 lt!67643)))

(assert (=> b!130036 (= lt!67643 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 (+!167 lt!67498 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))) lt!67504))))

(assert (=> b!130036 (isDefined!122 (getValueByKey!168 (toList!865 (+!167 lt!67498 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))) lt!67504))))

(declare-fun b!130037 () Bool)

(declare-fun Unit!4074 () Unit!4055)

(assert (=> b!130037 (= e!84854 Unit!4074)))

(declare-fun b!130038 () Bool)

(assert (=> b!130038 (= e!84855 (isDefined!122 (getValueByKey!168 (toList!865 (+!167 lt!67498 (tuple2!2593 lt!67507 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))) lt!67504)))))

(assert (= (and d!39481 c!23944) b!130036))

(assert (= (and d!39481 (not c!23944)) b!130037))

(assert (= (and d!39481 (not res!62734)) b!130038))

(declare-fun m!153029 () Bool)

(assert (=> d!39481 m!153029))

(declare-fun m!153031 () Bool)

(assert (=> b!130036 m!153031))

(declare-fun m!153033 () Bool)

(assert (=> b!130036 m!153033))

(assert (=> b!130036 m!153033))

(declare-fun m!153035 () Bool)

(assert (=> b!130036 m!153035))

(assert (=> b!130038 m!153033))

(assert (=> b!130038 m!153033))

(assert (=> b!130038 m!153035))

(assert (=> b!129925 d!39481))

(declare-fun d!39483 () Bool)

(declare-fun e!84856 () Bool)

(assert (=> d!39483 e!84856))

(declare-fun res!62736 () Bool)

(assert (=> d!39483 (=> (not res!62736) (not e!84856))))

(declare-fun lt!67649 () ListLongMap!1699)

(assert (=> d!39483 (= res!62736 (contains!886 lt!67649 (_1!1306 (tuple2!2593 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))))))

(declare-fun lt!67648 () List!1728)

(assert (=> d!39483 (= lt!67649 (ListLongMap!1700 lt!67648))))

(declare-fun lt!67647 () Unit!4055)

(declare-fun lt!67646 () Unit!4055)

(assert (=> d!39483 (= lt!67647 lt!67646)))

(assert (=> d!39483 (= (getValueByKey!168 lt!67648 (_1!1306 (tuple2!2593 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))) (Some!173 (_2!1306 (tuple2!2593 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))))))

(assert (=> d!39483 (= lt!67646 (lemmaContainsTupThenGetReturnValue!85 lt!67648 (_1!1306 (tuple2!2593 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))) (_2!1306 (tuple2!2593 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))))))

(assert (=> d!39483 (= lt!67648 (insertStrictlySorted!87 (toList!865 lt!67508) (_1!1306 (tuple2!2593 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))) (_2!1306 (tuple2!2593 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))))))

(assert (=> d!39483 (= (+!167 lt!67508 (tuple2!2593 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))) lt!67649)))

(declare-fun b!130039 () Bool)

(declare-fun res!62735 () Bool)

(assert (=> b!130039 (=> (not res!62735) (not e!84856))))

(assert (=> b!130039 (= res!62735 (= (getValueByKey!168 (toList!865 lt!67649) (_1!1306 (tuple2!2593 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))))) (Some!173 (_2!1306 (tuple2!2593 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))))))))

(declare-fun b!130040 () Bool)

(assert (=> b!130040 (= e!84856 (contains!887 (toList!865 lt!67649) (tuple2!2593 lt!67493 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16)))))))

(assert (= (and d!39483 res!62736) b!130039))

(assert (= (and b!130039 res!62735) b!130040))

(declare-fun m!153037 () Bool)

(assert (=> d!39483 m!153037))

(declare-fun m!153039 () Bool)

(assert (=> d!39483 m!153039))

(declare-fun m!153041 () Bool)

(assert (=> d!39483 m!153041))

(declare-fun m!153043 () Bool)

(assert (=> d!39483 m!153043))

(declare-fun m!153045 () Bool)

(assert (=> b!130039 m!153045))

(declare-fun m!153047 () Bool)

(assert (=> b!130040 m!153047))

(assert (=> b!129925 d!39483))

(declare-fun d!39485 () Bool)

(assert (=> d!39485 (= (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) (and (not (= (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!129800 d!39485))

(declare-fun e!84858 () Option!174)

(declare-fun b!130043 () Bool)

(assert (=> b!130043 (= e!84858 (getValueByKey!168 (t!6139 (toList!865 lt!67444)) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130041 () Bool)

(declare-fun e!84857 () Option!174)

(assert (=> b!130041 (= e!84857 (Some!173 (_2!1306 (h!2328 (toList!865 lt!67444)))))))

(declare-fun b!130042 () Bool)

(assert (=> b!130042 (= e!84857 e!84858)))

(declare-fun c!23946 () Bool)

(assert (=> b!130042 (= c!23946 (and ((_ is Cons!1724) (toList!865 lt!67444)) (not (= (_1!1306 (h!2328 (toList!865 lt!67444))) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun b!130044 () Bool)

(assert (=> b!130044 (= e!84858 None!172)))

(declare-fun d!39487 () Bool)

(declare-fun c!23945 () Bool)

(assert (=> d!39487 (= c!23945 (and ((_ is Cons!1724) (toList!865 lt!67444)) (= (_1!1306 (h!2328 (toList!865 lt!67444))) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39487 (= (getValueByKey!168 (toList!865 lt!67444) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) e!84857)))

(assert (= (and d!39487 c!23945) b!130041))

(assert (= (and d!39487 (not c!23945)) b!130042))

(assert (= (and b!130042 c!23946) b!130043))

(assert (= (and b!130042 (not c!23946)) b!130044))

(declare-fun m!153049 () Bool)

(assert (=> b!130043 m!153049))

(assert (=> b!129867 d!39487))

(declare-fun d!39489 () Bool)

(declare-fun e!84860 () Bool)

(assert (=> d!39489 e!84860))

(declare-fun res!62737 () Bool)

(assert (=> d!39489 (=> res!62737 e!84860)))

(declare-fun lt!67650 () Bool)

(assert (=> d!39489 (= res!62737 (not lt!67650))))

(declare-fun lt!67653 () Bool)

(assert (=> d!39489 (= lt!67650 lt!67653)))

(declare-fun lt!67652 () Unit!4055)

(declare-fun e!84859 () Unit!4055)

(assert (=> d!39489 (= lt!67652 e!84859)))

(declare-fun c!23947 () Bool)

(assert (=> d!39489 (= c!23947 lt!67653)))

(assert (=> d!39489 (= lt!67653 (containsKey!172 (toList!865 lt!67348) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!39489 (= (contains!886 lt!67348 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) lt!67650)))

(declare-fun b!130045 () Bool)

(declare-fun lt!67651 () Unit!4055)

(assert (=> b!130045 (= e!84859 lt!67651)))

(assert (=> b!130045 (= lt!67651 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67348) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!130045 (isDefined!122 (getValueByKey!168 (toList!865 lt!67348) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!130046 () Bool)

(declare-fun Unit!4075 () Unit!4055)

(assert (=> b!130046 (= e!84859 Unit!4075)))

(declare-fun b!130047 () Bool)

(assert (=> b!130047 (= e!84860 (isDefined!122 (getValueByKey!168 (toList!865 lt!67348) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))))

(assert (= (and d!39489 c!23947) b!130045))

(assert (= (and d!39489 (not c!23947)) b!130046))

(assert (= (and d!39489 (not res!62737)) b!130047))

(assert (=> d!39489 m!152429))

(declare-fun m!153051 () Bool)

(assert (=> d!39489 m!153051))

(assert (=> b!130045 m!152429))

(declare-fun m!153053 () Bool)

(assert (=> b!130045 m!153053))

(assert (=> b!130045 m!152429))

(declare-fun m!153055 () Bool)

(assert (=> b!130045 m!153055))

(assert (=> b!130045 m!153055))

(declare-fun m!153057 () Bool)

(assert (=> b!130045 m!153057))

(assert (=> b!130047 m!152429))

(assert (=> b!130047 m!153055))

(assert (=> b!130047 m!153055))

(assert (=> b!130047 m!153057))

(assert (=> b!129731 d!39489))

(declare-fun d!39491 () Bool)

(assert (=> d!39491 (isDefined!122 (getValueByKey!168 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67219))))

(declare-fun lt!67654 () Unit!4055)

(assert (=> d!39491 (= lt!67654 (choose!796 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67219))))

(declare-fun e!84861 () Bool)

(assert (=> d!39491 e!84861))

(declare-fun res!62738 () Bool)

(assert (=> d!39491 (=> (not res!62738) (not e!84861))))

(assert (=> d!39491 (= res!62738 (isStrictlySorted!314 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39491 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67219) lt!67654)))

(declare-fun b!130048 () Bool)

(assert (=> b!130048 (= e!84861 (containsKey!172 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67219))))

(assert (= (and d!39491 res!62738) b!130048))

(assert (=> d!39491 m!152635))

(assert (=> d!39491 m!152635))

(assert (=> d!39491 m!152637))

(declare-fun m!153059 () Bool)

(assert (=> d!39491 m!153059))

(declare-fun m!153061 () Bool)

(assert (=> d!39491 m!153061))

(assert (=> b!130048 m!152631))

(assert (=> b!129860 d!39491))

(declare-fun d!39493 () Bool)

(assert (=> d!39493 (= (isDefined!122 (getValueByKey!168 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67219)) (not (isEmpty!407 (getValueByKey!168 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67219))))))

(declare-fun bs!5398 () Bool)

(assert (= bs!5398 d!39493))

(assert (=> bs!5398 m!152635))

(declare-fun m!153063 () Bool)

(assert (=> bs!5398 m!153063))

(assert (=> b!129860 d!39493))

(declare-fun b!130051 () Bool)

(declare-fun e!84863 () Option!174)

(assert (=> b!130051 (= e!84863 (getValueByKey!168 (t!6139 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))) lt!67219))))

(declare-fun b!130049 () Bool)

(declare-fun e!84862 () Option!174)

(assert (=> b!130049 (= e!84862 (Some!173 (_2!1306 (h!2328 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))))

(declare-fun b!130050 () Bool)

(assert (=> b!130050 (= e!84862 e!84863)))

(declare-fun c!23949 () Bool)

(assert (=> b!130050 (= c!23949 (and ((_ is Cons!1724) (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))) (not (= (_1!1306 (h!2328 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))) lt!67219))))))

(declare-fun b!130052 () Bool)

(assert (=> b!130052 (= e!84863 None!172)))

(declare-fun d!39495 () Bool)

(declare-fun c!23948 () Bool)

(assert (=> d!39495 (= c!23948 (and ((_ is Cons!1724) (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))) (= (_1!1306 (h!2328 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))) lt!67219)))))

(assert (=> d!39495 (= (getValueByKey!168 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67219) e!84862)))

(assert (= (and d!39495 c!23948) b!130049))

(assert (= (and d!39495 (not c!23948)) b!130050))

(assert (= (and b!130050 c!23949) b!130051))

(assert (= (and b!130050 (not c!23949)) b!130052))

(declare-fun m!153065 () Bool)

(assert (=> b!130051 m!153065))

(assert (=> b!129860 d!39495))

(declare-fun d!39497 () Bool)

(assert (=> d!39497 (= (isDefined!122 (getValueByKey!168 (toList!865 call!14102) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299))))) (not (isEmpty!407 (getValueByKey!168 (toList!865 call!14102) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))))))))

(declare-fun bs!5399 () Bool)

(assert (= bs!5399 d!39497))

(assert (=> bs!5399 m!152743))

(declare-fun m!153067 () Bool)

(assert (=> bs!5399 m!153067))

(assert (=> b!129899 d!39497))

(declare-fun e!84865 () Option!174)

(declare-fun b!130055 () Bool)

(assert (=> b!130055 (= e!84865 (getValueByKey!168 (t!6139 (toList!865 call!14102)) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))))))

(declare-fun b!130053 () Bool)

(declare-fun e!84864 () Option!174)

(assert (=> b!130053 (= e!84864 (Some!173 (_2!1306 (h!2328 (toList!865 call!14102)))))))

(declare-fun b!130054 () Bool)

(assert (=> b!130054 (= e!84864 e!84865)))

(declare-fun c!23951 () Bool)

(assert (=> b!130054 (= c!23951 (and ((_ is Cons!1724) (toList!865 call!14102)) (not (= (_1!1306 (h!2328 (toList!865 call!14102))) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))))))))

(declare-fun b!130056 () Bool)

(assert (=> b!130056 (= e!84865 None!172)))

(declare-fun d!39499 () Bool)

(declare-fun c!23950 () Bool)

(assert (=> d!39499 (= c!23950 (and ((_ is Cons!1724) (toList!865 call!14102)) (= (_1!1306 (h!2328 (toList!865 call!14102))) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299))))))))

(assert (=> d!39499 (= (getValueByKey!168 (toList!865 call!14102) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))) e!84864)))

(assert (= (and d!39499 c!23950) b!130053))

(assert (= (and d!39499 (not c!23950)) b!130054))

(assert (= (and b!130054 c!23951) b!130055))

(assert (= (and b!130054 (not c!23951)) b!130056))

(declare-fun m!153069 () Bool)

(assert (=> b!130055 m!153069))

(assert (=> b!129899 d!39499))

(assert (=> b!129893 d!39485))

(declare-fun d!39501 () Bool)

(assert (=> d!39501 (= (validMask!0 (mask!7102 newMap!16)) (and (or (= (mask!7102 newMap!16) #b00000000000000000000000000000111) (= (mask!7102 newMap!16) #b00000000000000000000000000001111) (= (mask!7102 newMap!16) #b00000000000000000000000000011111) (= (mask!7102 newMap!16) #b00000000000000000000000000111111) (= (mask!7102 newMap!16) #b00000000000000000000000001111111) (= (mask!7102 newMap!16) #b00000000000000000000000011111111) (= (mask!7102 newMap!16) #b00000000000000000000000111111111) (= (mask!7102 newMap!16) #b00000000000000000000001111111111) (= (mask!7102 newMap!16) #b00000000000000000000011111111111) (= (mask!7102 newMap!16) #b00000000000000000000111111111111) (= (mask!7102 newMap!16) #b00000000000000000001111111111111) (= (mask!7102 newMap!16) #b00000000000000000011111111111111) (= (mask!7102 newMap!16) #b00000000000000000111111111111111) (= (mask!7102 newMap!16) #b00000000000000001111111111111111) (= (mask!7102 newMap!16) #b00000000000000011111111111111111) (= (mask!7102 newMap!16) #b00000000000000111111111111111111) (= (mask!7102 newMap!16) #b00000000000001111111111111111111) (= (mask!7102 newMap!16) #b00000000000011111111111111111111) (= (mask!7102 newMap!16) #b00000000000111111111111111111111) (= (mask!7102 newMap!16) #b00000000001111111111111111111111) (= (mask!7102 newMap!16) #b00000000011111111111111111111111) (= (mask!7102 newMap!16) #b00000000111111111111111111111111) (= (mask!7102 newMap!16) #b00000001111111111111111111111111) (= (mask!7102 newMap!16) #b00000011111111111111111111111111) (= (mask!7102 newMap!16) #b00000111111111111111111111111111) (= (mask!7102 newMap!16) #b00001111111111111111111111111111) (= (mask!7102 newMap!16) #b00011111111111111111111111111111) (= (mask!7102 newMap!16) #b00111111111111111111111111111111)) (bvsle (mask!7102 newMap!16) #b00111111111111111111111111111111)))))

(assert (=> d!39383 d!39501))

(declare-fun d!39503 () Bool)

(declare-fun res!62739 () Bool)

(declare-fun e!84868 () Bool)

(assert (=> d!39503 (=> res!62739 e!84868)))

(assert (=> d!39503 (= res!62739 (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 (_2!1307 lt!67308)))))))

(assert (=> d!39503 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4565 (_2!1307 lt!67308)) (mask!7102 (_2!1307 lt!67308))) e!84868)))

(declare-fun b!130057 () Bool)

(declare-fun e!84867 () Bool)

(declare-fun e!84866 () Bool)

(assert (=> b!130057 (= e!84867 e!84866)))

(declare-fun lt!67657 () (_ BitVec 64))

(assert (=> b!130057 (= lt!67657 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000))))

(declare-fun lt!67655 () Unit!4055)

(assert (=> b!130057 (= lt!67655 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4565 (_2!1307 lt!67308)) lt!67657 #b00000000000000000000000000000000))))

(assert (=> b!130057 (arrayContainsKey!0 (_keys!4565 (_2!1307 lt!67308)) lt!67657 #b00000000000000000000000000000000)))

(declare-fun lt!67656 () Unit!4055)

(assert (=> b!130057 (= lt!67656 lt!67655)))

(declare-fun res!62740 () Bool)

(assert (=> b!130057 (= res!62740 (= (seekEntryOrOpen!0 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000) (_keys!4565 (_2!1307 lt!67308)) (mask!7102 (_2!1307 lt!67308))) (Found!282 #b00000000000000000000000000000000)))))

(assert (=> b!130057 (=> (not res!62740) (not e!84866))))

(declare-fun b!130058 () Bool)

(declare-fun call!14155 () Bool)

(assert (=> b!130058 (= e!84866 call!14155)))

(declare-fun b!130059 () Bool)

(assert (=> b!130059 (= e!84868 e!84867)))

(declare-fun c!23952 () Bool)

(assert (=> b!130059 (= c!23952 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000)))))

(declare-fun bm!14152 () Bool)

(assert (=> bm!14152 (= call!14155 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4565 (_2!1307 lt!67308)) (mask!7102 (_2!1307 lt!67308))))))

(declare-fun b!130060 () Bool)

(assert (=> b!130060 (= e!84867 call!14155)))

(assert (= (and d!39503 (not res!62739)) b!130059))

(assert (= (and b!130059 c!23952) b!130057))

(assert (= (and b!130059 (not c!23952)) b!130060))

(assert (= (and b!130057 res!62740) b!130058))

(assert (= (or b!130058 b!130060) bm!14152))

(declare-fun m!153071 () Bool)

(assert (=> b!130057 m!153071))

(declare-fun m!153073 () Bool)

(assert (=> b!130057 m!153073))

(declare-fun m!153075 () Bool)

(assert (=> b!130057 m!153075))

(assert (=> b!130057 m!153071))

(declare-fun m!153077 () Bool)

(assert (=> b!130057 m!153077))

(assert (=> b!130059 m!153071))

(assert (=> b!130059 m!153071))

(declare-fun m!153079 () Bool)

(assert (=> b!130059 m!153079))

(declare-fun m!153081 () Bool)

(assert (=> bm!14152 m!153081))

(assert (=> b!129950 d!39503))

(declare-fun b!130063 () Bool)

(declare-fun e!84870 () Option!174)

(assert (=> b!130063 (= e!84870 (getValueByKey!168 (t!6139 (toList!865 lt!67520)) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!130061 () Bool)

(declare-fun e!84869 () Option!174)

(assert (=> b!130061 (= e!84869 (Some!173 (_2!1306 (h!2328 (toList!865 lt!67520)))))))

(declare-fun b!130062 () Bool)

(assert (=> b!130062 (= e!84869 e!84870)))

(declare-fun c!23954 () Bool)

(assert (=> b!130062 (= c!23954 (and ((_ is Cons!1724) (toList!865 lt!67520)) (not (= (_1!1306 (h!2328 (toList!865 lt!67520))) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))))

(declare-fun b!130064 () Bool)

(assert (=> b!130064 (= e!84870 None!172)))

(declare-fun c!23953 () Bool)

(declare-fun d!39505 () Bool)

(assert (=> d!39505 (= c!23953 (and ((_ is Cons!1724) (toList!865 lt!67520)) (= (_1!1306 (h!2328 (toList!865 lt!67520))) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(assert (=> d!39505 (= (getValueByKey!168 (toList!865 lt!67520) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))) e!84869)))

(assert (= (and d!39505 c!23953) b!130061))

(assert (= (and d!39505 (not c!23953)) b!130062))

(assert (= (and b!130062 c!23954) b!130063))

(assert (= (and b!130062 (not c!23954)) b!130064))

(declare-fun m!153083 () Bool)

(assert (=> b!130063 m!153083))

(assert (=> b!129947 d!39505))

(declare-fun d!39507 () Bool)

(assert (=> d!39507 (contains!886 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))

(declare-fun lt!67660 () Unit!4055)

(declare-fun choose!803 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 (_ BitVec 64) (_ BitVec 32) Int) Unit!4055)

(assert (=> d!39507 (= lt!67660 (choose!803 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(assert (=> d!39507 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39507 (= (lemmaArrayContainsKeyThenInListMap!39 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) lt!67660)))

(declare-fun bs!5400 () Bool)

(assert (= bs!5400 d!39507))

(assert (=> bs!5400 m!152253))

(assert (=> bs!5400 m!152253))

(assert (=> bs!5400 m!152209))

(assert (=> bs!5400 m!152335))

(assert (=> bs!5400 m!152209))

(declare-fun m!153085 () Bool)

(assert (=> bs!5400 m!153085))

(assert (=> bs!5400 m!152393))

(assert (=> b!129994 d!39507))

(assert (=> b!129994 d!39361))

(assert (=> b!129994 d!39355))

(assert (=> d!39407 d!39397))

(assert (=> d!39407 d!39401))

(declare-fun d!39509 () Bool)

(assert (=> d!39509 (contains!886 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67219)))

(assert (=> d!39509 true))

(declare-fun _$35!377 () Unit!4055)

(assert (=> d!39509 (= (choose!800 lt!67213 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67219) _$35!377)))

(declare-fun bs!5401 () Bool)

(assert (= bs!5401 d!39509))

(assert (=> bs!5401 m!152287))

(assert (=> bs!5401 m!152287))

(assert (=> bs!5401 m!152291))

(assert (=> d!39407 d!39509))

(declare-fun d!39511 () Bool)

(declare-fun e!84872 () Bool)

(assert (=> d!39511 e!84872))

(declare-fun res!62741 () Bool)

(assert (=> d!39511 (=> res!62741 e!84872)))

(declare-fun lt!67661 () Bool)

(assert (=> d!39511 (= res!62741 (not lt!67661))))

(declare-fun lt!67664 () Bool)

(assert (=> d!39511 (= lt!67661 lt!67664)))

(declare-fun lt!67663 () Unit!4055)

(declare-fun e!84871 () Unit!4055)

(assert (=> d!39511 (= lt!67663 e!84871)))

(declare-fun c!23955 () Bool)

(assert (=> d!39511 (= c!23955 lt!67664)))

(assert (=> d!39511 (= lt!67664 (containsKey!172 (toList!865 lt!67213) lt!67219))))

(assert (=> d!39511 (= (contains!886 lt!67213 lt!67219) lt!67661)))

(declare-fun b!130066 () Bool)

(declare-fun lt!67662 () Unit!4055)

(assert (=> b!130066 (= e!84871 lt!67662)))

(assert (=> b!130066 (= lt!67662 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67213) lt!67219))))

(assert (=> b!130066 (isDefined!122 (getValueByKey!168 (toList!865 lt!67213) lt!67219))))

(declare-fun b!130067 () Bool)

(declare-fun Unit!4076 () Unit!4055)

(assert (=> b!130067 (= e!84871 Unit!4076)))

(declare-fun b!130068 () Bool)

(assert (=> b!130068 (= e!84872 (isDefined!122 (getValueByKey!168 (toList!865 lt!67213) lt!67219)))))

(assert (= (and d!39511 c!23955) b!130066))

(assert (= (and d!39511 (not c!23955)) b!130067))

(assert (= (and d!39511 (not res!62741)) b!130068))

(declare-fun m!153087 () Bool)

(assert (=> d!39511 m!153087))

(declare-fun m!153089 () Bool)

(assert (=> b!130066 m!153089))

(declare-fun m!153091 () Bool)

(assert (=> b!130066 m!153091))

(assert (=> b!130066 m!153091))

(declare-fun m!153093 () Bool)

(assert (=> b!130066 m!153093))

(assert (=> b!130068 m!153091))

(assert (=> b!130068 m!153091))

(assert (=> b!130068 m!153093))

(assert (=> d!39407 d!39511))

(declare-fun d!39513 () Bool)

(assert (=> d!39513 (isDefined!122 (getValueByKey!168 (toList!865 lt!67214) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!67665 () Unit!4055)

(assert (=> d!39513 (= lt!67665 (choose!796 (toList!865 lt!67214) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!84873 () Bool)

(assert (=> d!39513 e!84873))

(declare-fun res!62742 () Bool)

(assert (=> d!39513 (=> (not res!62742) (not e!84873))))

(assert (=> d!39513 (= res!62742 (isStrictlySorted!314 (toList!865 lt!67214)))))

(assert (=> d!39513 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67214) #b0000000000000000000000000000000000000000000000000000000000000000) lt!67665)))

(declare-fun b!130069 () Bool)

(assert (=> b!130069 (= e!84873 (containsKey!172 (toList!865 lt!67214) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!39513 res!62742) b!130069))

(assert (=> d!39513 m!152599))

(assert (=> d!39513 m!152599))

(assert (=> d!39513 m!152601))

(declare-fun m!153095 () Bool)

(assert (=> d!39513 m!153095))

(declare-fun m!153097 () Bool)

(assert (=> d!39513 m!153097))

(assert (=> b!130069 m!152595))

(assert (=> b!129834 d!39513))

(declare-fun d!39515 () Bool)

(assert (=> d!39515 (= (isDefined!122 (getValueByKey!168 (toList!865 lt!67214) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!407 (getValueByKey!168 (toList!865 lt!67214) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!5402 () Bool)

(assert (= bs!5402 d!39515))

(assert (=> bs!5402 m!152599))

(declare-fun m!153099 () Bool)

(assert (=> bs!5402 m!153099))

(assert (=> b!129834 d!39515))

(declare-fun b!130072 () Bool)

(declare-fun e!84875 () Option!174)

(assert (=> b!130072 (= e!84875 (getValueByKey!168 (t!6139 (toList!865 lt!67214)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130070 () Bool)

(declare-fun e!84874 () Option!174)

(assert (=> b!130070 (= e!84874 (Some!173 (_2!1306 (h!2328 (toList!865 lt!67214)))))))

(declare-fun b!130071 () Bool)

(assert (=> b!130071 (= e!84874 e!84875)))

(declare-fun c!23957 () Bool)

(assert (=> b!130071 (= c!23957 (and ((_ is Cons!1724) (toList!865 lt!67214)) (not (= (_1!1306 (h!2328 (toList!865 lt!67214))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!130073 () Bool)

(assert (=> b!130073 (= e!84875 None!172)))

(declare-fun d!39517 () Bool)

(declare-fun c!23956 () Bool)

(assert (=> d!39517 (= c!23956 (and ((_ is Cons!1724) (toList!865 lt!67214)) (= (_1!1306 (h!2328 (toList!865 lt!67214))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39517 (= (getValueByKey!168 (toList!865 lt!67214) #b0000000000000000000000000000000000000000000000000000000000000000) e!84874)))

(assert (= (and d!39517 c!23956) b!130070))

(assert (= (and d!39517 (not c!23956)) b!130071))

(assert (= (and b!130071 c!23957) b!130072))

(assert (= (and b!130071 (not c!23957)) b!130073))

(declare-fun m!153101 () Bool)

(assert (=> b!130072 m!153101))

(assert (=> b!129834 d!39517))

(declare-fun d!39519 () Bool)

(declare-fun e!84877 () Bool)

(assert (=> d!39519 e!84877))

(declare-fun res!62743 () Bool)

(assert (=> d!39519 (=> res!62743 e!84877)))

(declare-fun lt!67666 () Bool)

(assert (=> d!39519 (= res!62743 (not lt!67666))))

(declare-fun lt!67669 () Bool)

(assert (=> d!39519 (= lt!67666 lt!67669)))

(declare-fun lt!67668 () Unit!4055)

(declare-fun e!84876 () Unit!4055)

(assert (=> d!39519 (= lt!67668 e!84876)))

(declare-fun c!23958 () Bool)

(assert (=> d!39519 (= c!23958 lt!67669)))

(assert (=> d!39519 (= lt!67669 (containsKey!172 (toList!865 lt!67618) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39519 (= (contains!886 lt!67618 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67666)))

(declare-fun b!130074 () Bool)

(declare-fun lt!67667 () Unit!4055)

(assert (=> b!130074 (= e!84876 lt!67667)))

(assert (=> b!130074 (= lt!67667 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67618) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> b!130074 (isDefined!122 (getValueByKey!168 (toList!865 lt!67618) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130075 () Bool)

(declare-fun Unit!4077 () Unit!4055)

(assert (=> b!130075 (= e!84876 Unit!4077)))

(declare-fun b!130076 () Bool)

(assert (=> b!130076 (= e!84877 (isDefined!122 (getValueByKey!168 (toList!865 lt!67618) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (= (and d!39519 c!23958) b!130074))

(assert (= (and d!39519 (not c!23958)) b!130075))

(assert (= (and d!39519 (not res!62743)) b!130076))

(declare-fun m!153103 () Bool)

(assert (=> d!39519 m!153103))

(declare-fun m!153105 () Bool)

(assert (=> b!130074 m!153105))

(assert (=> b!130074 m!152925))

(assert (=> b!130074 m!152925))

(declare-fun m!153107 () Bool)

(assert (=> b!130074 m!153107))

(assert (=> b!130076 m!152925))

(assert (=> b!130076 m!152925))

(assert (=> b!130076 m!153107))

(assert (=> d!39451 d!39519))

(declare-fun b!130079 () Bool)

(declare-fun e!84879 () Option!174)

(assert (=> b!130079 (= e!84879 (getValueByKey!168 (t!6139 lt!67617) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130077 () Bool)

(declare-fun e!84878 () Option!174)

(assert (=> b!130077 (= e!84878 (Some!173 (_2!1306 (h!2328 lt!67617))))))

(declare-fun b!130078 () Bool)

(assert (=> b!130078 (= e!84878 e!84879)))

(declare-fun c!23960 () Bool)

(assert (=> b!130078 (= c!23960 (and ((_ is Cons!1724) lt!67617) (not (= (_1!1306 (h!2328 lt!67617)) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun b!130080 () Bool)

(assert (=> b!130080 (= e!84879 None!172)))

(declare-fun d!39521 () Bool)

(declare-fun c!23959 () Bool)

(assert (=> d!39521 (= c!23959 (and ((_ is Cons!1724) lt!67617) (= (_1!1306 (h!2328 lt!67617)) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39521 (= (getValueByKey!168 lt!67617 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) e!84878)))

(assert (= (and d!39521 c!23959) b!130077))

(assert (= (and d!39521 (not c!23959)) b!130078))

(assert (= (and b!130078 c!23960) b!130079))

(assert (= (and b!130078 (not c!23960)) b!130080))

(declare-fun m!153109 () Bool)

(assert (=> b!130079 m!153109))

(assert (=> d!39451 d!39521))

(declare-fun d!39523 () Bool)

(assert (=> d!39523 (= (getValueByKey!168 lt!67617 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (Some!173 (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun lt!67672 () Unit!4055)

(declare-fun choose!804 (List!1728 (_ BitVec 64) V!3459) Unit!4055)

(assert (=> d!39523 (= lt!67672 (choose!804 lt!67617 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun e!84882 () Bool)

(assert (=> d!39523 e!84882))

(declare-fun res!62748 () Bool)

(assert (=> d!39523 (=> (not res!62748) (not e!84882))))

(assert (=> d!39523 (= res!62748 (isStrictlySorted!314 lt!67617))))

(assert (=> d!39523 (= (lemmaContainsTupThenGetReturnValue!85 lt!67617 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67672)))

(declare-fun b!130085 () Bool)

(declare-fun res!62749 () Bool)

(assert (=> b!130085 (=> (not res!62749) (not e!84882))))

(assert (=> b!130085 (= res!62749 (containsKey!172 lt!67617 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130086 () Bool)

(assert (=> b!130086 (= e!84882 (contains!887 lt!67617 (tuple2!2593 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (= (and d!39523 res!62748) b!130085))

(assert (= (and b!130085 res!62749) b!130086))

(assert (=> d!39523 m!152919))

(declare-fun m!153111 () Bool)

(assert (=> d!39523 m!153111))

(declare-fun m!153113 () Bool)

(assert (=> d!39523 m!153113))

(declare-fun m!153115 () Bool)

(assert (=> b!130085 m!153115))

(declare-fun m!153117 () Bool)

(assert (=> b!130086 m!153117))

(assert (=> d!39451 d!39523))

(declare-fun b!130107 () Bool)

(declare-fun e!84894 () List!1728)

(declare-fun call!14164 () List!1728)

(assert (=> b!130107 (= e!84894 call!14164)))

(declare-fun b!130108 () Bool)

(declare-fun e!84893 () List!1728)

(declare-fun call!14163 () List!1728)

(assert (=> b!130108 (= e!84893 call!14163)))

(declare-fun b!130109 () Bool)

(declare-fun e!84895 () List!1728)

(declare-fun call!14162 () List!1728)

(assert (=> b!130109 (= e!84895 call!14162)))

(declare-fun b!130110 () Bool)

(assert (=> b!130110 (= e!84895 e!84893)))

(declare-fun c!23971 () Bool)

(assert (=> b!130110 (= c!23971 (and ((_ is Cons!1724) (toList!865 call!14024)) (= (_1!1306 (h!2328 (toList!865 call!14024))) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun bm!14159 () Bool)

(assert (=> bm!14159 (= call!14164 call!14163)))

(declare-fun e!84896 () List!1728)

(declare-fun c!23972 () Bool)

(declare-fun bm!14160 () Bool)

(declare-fun $colon$colon!90 (List!1728 tuple2!2592) List!1728)

(assert (=> bm!14160 (= call!14162 ($colon$colon!90 e!84896 (ite c!23972 (h!2328 (toList!865 call!14024)) (tuple2!2593 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun c!23970 () Bool)

(assert (=> bm!14160 (= c!23970 c!23972)))

(declare-fun d!39525 () Bool)

(declare-fun e!84897 () Bool)

(assert (=> d!39525 e!84897))

(declare-fun res!62755 () Bool)

(assert (=> d!39525 (=> (not res!62755) (not e!84897))))

(declare-fun lt!67675 () List!1728)

(assert (=> d!39525 (= res!62755 (isStrictlySorted!314 lt!67675))))

(assert (=> d!39525 (= lt!67675 e!84895)))

(assert (=> d!39525 (= c!23972 (and ((_ is Cons!1724) (toList!865 call!14024)) (bvslt (_1!1306 (h!2328 (toList!865 call!14024))) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39525 (isStrictlySorted!314 (toList!865 call!14024))))

(assert (=> d!39525 (= (insertStrictlySorted!87 (toList!865 call!14024) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67675)))

(declare-fun b!130111 () Bool)

(declare-fun res!62754 () Bool)

(assert (=> b!130111 (=> (not res!62754) (not e!84897))))

(assert (=> b!130111 (= res!62754 (containsKey!172 lt!67675 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130112 () Bool)

(assert (=> b!130112 (= e!84897 (contains!887 lt!67675 (tuple2!2593 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!130113 () Bool)

(assert (=> b!130113 (= e!84896 (insertStrictlySorted!87 (t!6139 (toList!865 call!14024)) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun c!23969 () Bool)

(declare-fun b!130114 () Bool)

(assert (=> b!130114 (= e!84896 (ite c!23971 (t!6139 (toList!865 call!14024)) (ite c!23969 (Cons!1724 (h!2328 (toList!865 call!14024)) (t!6139 (toList!865 call!14024))) Nil!1725)))))

(declare-fun b!130115 () Bool)

(assert (=> b!130115 (= e!84894 call!14164)))

(declare-fun bm!14161 () Bool)

(assert (=> bm!14161 (= call!14163 call!14162)))

(declare-fun b!130116 () Bool)

(assert (=> b!130116 (= c!23969 (and ((_ is Cons!1724) (toList!865 call!14024)) (bvsgt (_1!1306 (h!2328 (toList!865 call!14024))) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> b!130116 (= e!84893 e!84894)))

(assert (= (and d!39525 c!23972) b!130109))

(assert (= (and d!39525 (not c!23972)) b!130110))

(assert (= (and b!130110 c!23971) b!130108))

(assert (= (and b!130110 (not c!23971)) b!130116))

(assert (= (and b!130116 c!23969) b!130115))

(assert (= (and b!130116 (not c!23969)) b!130107))

(assert (= (or b!130115 b!130107) bm!14159))

(assert (= (or b!130108 bm!14159) bm!14161))

(assert (= (or b!130109 bm!14161) bm!14160))

(assert (= (and bm!14160 c!23970) b!130113))

(assert (= (and bm!14160 (not c!23970)) b!130114))

(assert (= (and d!39525 res!62755) b!130111))

(assert (= (and b!130111 res!62754) b!130112))

(declare-fun m!153119 () Bool)

(assert (=> bm!14160 m!153119))

(declare-fun m!153121 () Bool)

(assert (=> b!130113 m!153121))

(declare-fun m!153123 () Bool)

(assert (=> d!39525 m!153123))

(declare-fun m!153125 () Bool)

(assert (=> d!39525 m!153125))

(declare-fun m!153127 () Bool)

(assert (=> b!130112 m!153127))

(declare-fun m!153129 () Bool)

(assert (=> b!130111 m!153129))

(assert (=> d!39451 d!39525))

(declare-fun d!39527 () Bool)

(assert (=> d!39527 (= (apply!113 lt!67499 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1472 (getValueByKey!168 (toList!865 lt!67499) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5403 () Bool)

(assert (= bs!5403 d!39527))

(declare-fun m!153131 () Bool)

(assert (=> bs!5403 m!153131))

(assert (=> bs!5403 m!153131))

(declare-fun m!153133 () Bool)

(assert (=> bs!5403 m!153133))

(assert (=> b!129929 d!39527))

(declare-fun d!39529 () Bool)

(declare-fun res!62756 () Bool)

(declare-fun e!84898 () Bool)

(assert (=> d!39529 (=> res!62756 e!84898)))

(assert (=> d!39529 (= res!62756 (and ((_ is Cons!1724) (toList!865 call!14088)) (= (_1!1306 (h!2328 (toList!865 call!14088))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(assert (=> d!39529 (= (containsKey!172 (toList!865 call!14088) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) e!84898)))

(declare-fun b!130117 () Bool)

(declare-fun e!84899 () Bool)

(assert (=> b!130117 (= e!84898 e!84899)))

(declare-fun res!62757 () Bool)

(assert (=> b!130117 (=> (not res!62757) (not e!84899))))

(assert (=> b!130117 (= res!62757 (and (or (not ((_ is Cons!1724) (toList!865 call!14088))) (bvsle (_1!1306 (h!2328 (toList!865 call!14088))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))) ((_ is Cons!1724) (toList!865 call!14088)) (bvslt (_1!1306 (h!2328 (toList!865 call!14088))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(declare-fun b!130118 () Bool)

(assert (=> b!130118 (= e!84899 (containsKey!172 (t!6139 (toList!865 call!14088)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (= (and d!39529 (not res!62756)) b!130117))

(assert (= (and b!130117 res!62757) b!130118))

(assert (=> b!130118 m!152209))

(declare-fun m!153135 () Bool)

(assert (=> b!130118 m!153135))

(assert (=> d!39449 d!39529))

(declare-fun d!39531 () Bool)

(declare-fun e!84900 () Bool)

(assert (=> d!39531 e!84900))

(declare-fun res!62759 () Bool)

(assert (=> d!39531 (=> (not res!62759) (not e!84900))))

(declare-fun lt!67679 () ListLongMap!1699)

(assert (=> d!39531 (= res!62759 (contains!886 lt!67679 (_1!1306 (ite (or c!23917 c!23918) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))))

(declare-fun lt!67678 () List!1728)

(assert (=> d!39531 (= lt!67679 (ListLongMap!1700 lt!67678))))

(declare-fun lt!67677 () Unit!4055)

(declare-fun lt!67676 () Unit!4055)

(assert (=> d!39531 (= lt!67677 lt!67676)))

(assert (=> d!39531 (= (getValueByKey!168 lt!67678 (_1!1306 (ite (or c!23917 c!23918) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))) (Some!173 (_2!1306 (ite (or c!23917 c!23918) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))))

(assert (=> d!39531 (= lt!67676 (lemmaContainsTupThenGetReturnValue!85 lt!67678 (_1!1306 (ite (or c!23917 c!23918) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))) (_2!1306 (ite (or c!23917 c!23918) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))))

(assert (=> d!39531 (= lt!67678 (insertStrictlySorted!87 (toList!865 (ite c!23917 call!14134 (ite c!23918 call!14133 call!14135))) (_1!1306 (ite (or c!23917 c!23918) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))) (_2!1306 (ite (or c!23917 c!23918) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))))

(assert (=> d!39531 (= (+!167 (ite c!23917 call!14134 (ite c!23918 call!14133 call!14135)) (ite (or c!23917 c!23918) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))) lt!67679)))

(declare-fun b!130119 () Bool)

(declare-fun res!62758 () Bool)

(assert (=> b!130119 (=> (not res!62758) (not e!84900))))

(assert (=> b!130119 (= res!62758 (= (getValueByKey!168 (toList!865 lt!67679) (_1!1306 (ite (or c!23917 c!23918) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))) (Some!173 (_2!1306 (ite (or c!23917 c!23918) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))))

(declare-fun b!130120 () Bool)

(assert (=> b!130120 (= e!84900 (contains!887 (toList!865 lt!67679) (ite (or c!23917 c!23918) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!23852 c!23844) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2683 newMap!16))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(assert (= (and d!39531 res!62759) b!130119))

(assert (= (and b!130119 res!62758) b!130120))

(declare-fun m!153137 () Bool)

(assert (=> d!39531 m!153137))

(declare-fun m!153139 () Bool)

(assert (=> d!39531 m!153139))

(declare-fun m!153141 () Bool)

(assert (=> d!39531 m!153141))

(declare-fun m!153143 () Bool)

(assert (=> d!39531 m!153143))

(declare-fun m!153145 () Bool)

(assert (=> b!130119 m!153145))

(declare-fun m!153147 () Bool)

(assert (=> b!130120 m!153147))

(assert (=> bm!14129 d!39531))

(assert (=> b!129803 d!39485))

(declare-fun d!39533 () Bool)

(assert (=> d!39533 (= (size!2512 newMap!16) (bvadd (_size!589 newMap!16) (bvsdiv (bvadd (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!129853 d!39533))

(declare-fun d!39535 () Bool)

(assert (=> d!39535 (= (apply!113 lt!67499 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) (get!1472 (getValueByKey!168 (toList!865 lt!67499) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))))

(declare-fun bs!5404 () Bool)

(assert (= bs!5404 d!39535))

(assert (=> bs!5404 m!152429))

(declare-fun m!153149 () Bool)

(assert (=> bs!5404 m!153149))

(assert (=> bs!5404 m!153149))

(declare-fun m!153151 () Bool)

(assert (=> bs!5404 m!153151))

(assert (=> b!129916 d!39535))

(declare-fun c!23973 () Bool)

(declare-fun d!39537 () Bool)

(assert (=> d!39537 (= c!23973 ((_ is ValueCellFull!1086) (select (arr!2243 (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304)) #b00000000000000000000000000000000)))))

(declare-fun e!84901 () V!3459)

(assert (=> d!39537 (= (get!1469 (select (arr!2243 (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)) e!84901)))

(declare-fun b!130121 () Bool)

(assert (=> b!130121 (= e!84901 (get!1470 (select (arr!2243 (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!130122 () Bool)

(assert (=> b!130122 (= e!84901 (get!1471 (select (arr!2243 (ite (or c!23852 c!23846) (_values!2807 newMap!16) lt!67304)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39537 c!23973) b!130121))

(assert (= (and d!39537 (not c!23973)) b!130122))

(assert (=> b!130121 m!152793))

(assert (=> b!130121 m!152471))

(declare-fun m!153153 () Bool)

(assert (=> b!130121 m!153153))

(assert (=> b!130122 m!152793))

(assert (=> b!130122 m!152471))

(declare-fun m!153155 () Bool)

(assert (=> b!130122 m!153155))

(assert (=> b!129916 d!39537))

(declare-fun d!39539 () Bool)

(assert (=> d!39539 (= (apply!113 lt!67401 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1472 (getValueByKey!168 (toList!865 lt!67401) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5405 () Bool)

(assert (= bs!5405 d!39539))

(declare-fun m!153157 () Bool)

(assert (=> bs!5405 m!153157))

(assert (=> bs!5405 m!153157))

(declare-fun m!153159 () Bool)

(assert (=> bs!5405 m!153159))

(assert (=> b!129807 d!39539))

(declare-fun b!130123 () Bool)

(declare-fun res!62761 () Bool)

(declare-fun e!84902 () Bool)

(assert (=> b!130123 (=> (not res!62761) (not e!84902))))

(assert (=> b!130123 (= res!62761 (and (= (size!2509 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000001)) (= (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (size!2509 (_values!2807 (v!3159 (underlying!446 thiss!992))))) (bvsge (_size!589 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000000) (bvsle (_size!589 (v!3159 (underlying!446 thiss!992))) (bvadd (mask!7102 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000001))))))

(declare-fun d!39541 () Bool)

(declare-fun res!62763 () Bool)

(assert (=> d!39541 (=> (not res!62763) (not e!84902))))

(assert (=> d!39541 (= res!62763 (validMask!0 (mask!7102 (v!3159 (underlying!446 thiss!992)))))))

(assert (=> d!39541 (= (simpleValid!88 (v!3159 (underlying!446 thiss!992))) e!84902)))

(declare-fun b!130124 () Bool)

(declare-fun res!62762 () Bool)

(assert (=> b!130124 (=> (not res!62762) (not e!84902))))

(assert (=> b!130124 (= res!62762 (bvsge (size!2512 (v!3159 (underlying!446 thiss!992))) (_size!589 (v!3159 (underlying!446 thiss!992)))))))

(declare-fun b!130125 () Bool)

(declare-fun res!62760 () Bool)

(assert (=> b!130125 (=> (not res!62760) (not e!84902))))

(assert (=> b!130125 (= res!62760 (= (size!2512 (v!3159 (underlying!446 thiss!992))) (bvadd (_size!589 (v!3159 (underlying!446 thiss!992))) (bvsdiv (bvadd (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!130126 () Bool)

(assert (=> b!130126 (= e!84902 (and (bvsge (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000011) (bvsge (_vacant!589 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000000)))))

(assert (= (and d!39541 res!62763) b!130123))

(assert (= (and b!130123 res!62761) b!130124))

(assert (= (and b!130124 res!62762) b!130125))

(assert (= (and b!130125 res!62760) b!130126))

(assert (=> d!39541 m!152191))

(declare-fun m!153161 () Bool)

(assert (=> b!130124 m!153161))

(assert (=> b!130125 m!153161))

(assert (=> d!39447 d!39541))

(declare-fun d!39543 () Bool)

(declare-fun e!84904 () Bool)

(assert (=> d!39543 e!84904))

(declare-fun res!62764 () Bool)

(assert (=> d!39543 (=> res!62764 e!84904)))

(declare-fun lt!67680 () Bool)

(assert (=> d!39543 (= res!62764 (not lt!67680))))

(declare-fun lt!67683 () Bool)

(assert (=> d!39543 (= lt!67680 lt!67683)))

(declare-fun lt!67682 () Unit!4055)

(declare-fun e!84903 () Unit!4055)

(assert (=> d!39543 (= lt!67682 e!84903)))

(declare-fun c!23974 () Bool)

(assert (=> d!39543 (= c!23974 lt!67683)))

(assert (=> d!39543 (= lt!67683 (containsKey!172 (toList!865 lt!67384) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!39543 (= (contains!886 lt!67384 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!67680)))

(declare-fun b!130127 () Bool)

(declare-fun lt!67681 () Unit!4055)

(assert (=> b!130127 (= e!84903 lt!67681)))

(assert (=> b!130127 (= lt!67681 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67384) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!130127 (isDefined!122 (getValueByKey!168 (toList!865 lt!67384) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!130128 () Bool)

(declare-fun Unit!4078 () Unit!4055)

(assert (=> b!130128 (= e!84903 Unit!4078)))

(declare-fun b!130129 () Bool)

(assert (=> b!130129 (= e!84904 (isDefined!122 (getValueByKey!168 (toList!865 lt!67384) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!39543 c!23974) b!130127))

(assert (= (and d!39543 (not c!23974)) b!130128))

(assert (= (and d!39543 (not res!62764)) b!130129))

(assert (=> d!39543 m!152255))

(declare-fun m!153163 () Bool)

(assert (=> d!39543 m!153163))

(assert (=> b!130127 m!152255))

(declare-fun m!153165 () Bool)

(assert (=> b!130127 m!153165))

(assert (=> b!130127 m!152255))

(declare-fun m!153167 () Bool)

(assert (=> b!130127 m!153167))

(assert (=> b!130127 m!153167))

(declare-fun m!153169 () Bool)

(assert (=> b!130127 m!153169))

(assert (=> b!130129 m!152255))

(assert (=> b!130129 m!153167))

(assert (=> b!130129 m!153167))

(assert (=> b!130129 m!153169))

(assert (=> b!129779 d!39543))

(declare-fun d!39545 () Bool)

(declare-fun lt!67686 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!128 (List!1729) (InoxSet (_ BitVec 64)))

(assert (=> d!39545 (= lt!67686 (select (content!128 Nil!1726) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!84910 () Bool)

(assert (=> d!39545 (= lt!67686 e!84910)))

(declare-fun res!62770 () Bool)

(assert (=> d!39545 (=> (not res!62770) (not e!84910))))

(assert (=> d!39545 (= res!62770 ((_ is Cons!1725) Nil!1726))))

(assert (=> d!39545 (= (contains!888 Nil!1726 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) lt!67686)))

(declare-fun b!130134 () Bool)

(declare-fun e!84909 () Bool)

(assert (=> b!130134 (= e!84910 e!84909)))

(declare-fun res!62769 () Bool)

(assert (=> b!130134 (=> res!62769 e!84909)))

(assert (=> b!130134 (= res!62769 (= (h!2329 Nil!1726) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!130135 () Bool)

(assert (=> b!130135 (= e!84909 (contains!888 (t!6144 Nil!1726) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!39545 res!62770) b!130134))

(assert (= (and b!130134 (not res!62769)) b!130135))

(declare-fun m!153171 () Bool)

(assert (=> d!39545 m!153171))

(assert (=> d!39545 m!152429))

(declare-fun m!153173 () Bool)

(assert (=> d!39545 m!153173))

(assert (=> b!130135 m!152429))

(declare-fun m!153175 () Bool)

(assert (=> b!130135 m!153175))

(assert (=> b!129896 d!39545))

(declare-fun d!39547 () Bool)

(declare-fun e!84911 () Bool)

(assert (=> d!39547 e!84911))

(declare-fun res!62772 () Bool)

(assert (=> d!39547 (=> (not res!62772) (not e!84911))))

(declare-fun lt!67690 () ListLongMap!1699)

(assert (=> d!39547 (= res!62772 (contains!886 lt!67690 (_1!1306 (tuple2!2593 lt!67342 (zeroValue!2683 newMap!16)))))))

(declare-fun lt!67689 () List!1728)

(assert (=> d!39547 (= lt!67690 (ListLongMap!1700 lt!67689))))

(declare-fun lt!67688 () Unit!4055)

(declare-fun lt!67687 () Unit!4055)

(assert (=> d!39547 (= lt!67688 lt!67687)))

(assert (=> d!39547 (= (getValueByKey!168 lt!67689 (_1!1306 (tuple2!2593 lt!67342 (zeroValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67342 (zeroValue!2683 newMap!16)))))))

(assert (=> d!39547 (= lt!67687 (lemmaContainsTupThenGetReturnValue!85 lt!67689 (_1!1306 (tuple2!2593 lt!67342 (zeroValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67342 (zeroValue!2683 newMap!16)))))))

(assert (=> d!39547 (= lt!67689 (insertStrictlySorted!87 (toList!865 lt!67357) (_1!1306 (tuple2!2593 lt!67342 (zeroValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67342 (zeroValue!2683 newMap!16)))))))

(assert (=> d!39547 (= (+!167 lt!67357 (tuple2!2593 lt!67342 (zeroValue!2683 newMap!16))) lt!67690)))

(declare-fun b!130136 () Bool)

(declare-fun res!62771 () Bool)

(assert (=> b!130136 (=> (not res!62771) (not e!84911))))

(assert (=> b!130136 (= res!62771 (= (getValueByKey!168 (toList!865 lt!67690) (_1!1306 (tuple2!2593 lt!67342 (zeroValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67342 (zeroValue!2683 newMap!16))))))))

(declare-fun b!130137 () Bool)

(assert (=> b!130137 (= e!84911 (contains!887 (toList!865 lt!67690) (tuple2!2593 lt!67342 (zeroValue!2683 newMap!16))))))

(assert (= (and d!39547 res!62772) b!130136))

(assert (= (and b!130136 res!62771) b!130137))

(declare-fun m!153177 () Bool)

(assert (=> d!39547 m!153177))

(declare-fun m!153179 () Bool)

(assert (=> d!39547 m!153179))

(declare-fun m!153181 () Bool)

(assert (=> d!39547 m!153181))

(declare-fun m!153183 () Bool)

(assert (=> d!39547 m!153183))

(declare-fun m!153185 () Bool)

(assert (=> b!130136 m!153185))

(declare-fun m!153187 () Bool)

(assert (=> b!130137 m!153187))

(assert (=> b!129736 d!39547))

(declare-fun d!39549 () Bool)

(assert (=> d!39549 (= (apply!113 (+!167 lt!67350 (tuple2!2593 lt!67358 (minValue!2683 newMap!16))) lt!67341) (apply!113 lt!67350 lt!67341))))

(declare-fun lt!67691 () Unit!4055)

(assert (=> d!39549 (= lt!67691 (choose!799 lt!67350 lt!67358 (minValue!2683 newMap!16) lt!67341))))

(declare-fun e!84912 () Bool)

(assert (=> d!39549 e!84912))

(declare-fun res!62773 () Bool)

(assert (=> d!39549 (=> (not res!62773) (not e!84912))))

(assert (=> d!39549 (= res!62773 (contains!886 lt!67350 lt!67341))))

(assert (=> d!39549 (= (addApplyDifferent!89 lt!67350 lt!67358 (minValue!2683 newMap!16) lt!67341) lt!67691)))

(declare-fun b!130138 () Bool)

(assert (=> b!130138 (= e!84912 (not (= lt!67341 lt!67358)))))

(assert (= (and d!39549 res!62773) b!130138))

(assert (=> d!39549 m!152437))

(assert (=> d!39549 m!152437))

(assert (=> d!39549 m!152439))

(assert (=> d!39549 m!152443))

(declare-fun m!153189 () Bool)

(assert (=> d!39549 m!153189))

(declare-fun m!153191 () Bool)

(assert (=> d!39549 m!153191))

(assert (=> b!129736 d!39549))

(declare-fun d!39551 () Bool)

(declare-fun e!84913 () Bool)

(assert (=> d!39551 e!84913))

(declare-fun res!62775 () Bool)

(assert (=> d!39551 (=> (not res!62775) (not e!84913))))

(declare-fun lt!67695 () ListLongMap!1699)

(assert (=> d!39551 (= res!62775 (contains!886 lt!67695 (_1!1306 (tuple2!2593 lt!67354 (minValue!2683 newMap!16)))))))

(declare-fun lt!67694 () List!1728)

(assert (=> d!39551 (= lt!67695 (ListLongMap!1700 lt!67694))))

(declare-fun lt!67693 () Unit!4055)

(declare-fun lt!67692 () Unit!4055)

(assert (=> d!39551 (= lt!67693 lt!67692)))

(assert (=> d!39551 (= (getValueByKey!168 lt!67694 (_1!1306 (tuple2!2593 lt!67354 (minValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67354 (minValue!2683 newMap!16)))))))

(assert (=> d!39551 (= lt!67692 (lemmaContainsTupThenGetReturnValue!85 lt!67694 (_1!1306 (tuple2!2593 lt!67354 (minValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67354 (minValue!2683 newMap!16)))))))

(assert (=> d!39551 (= lt!67694 (insertStrictlySorted!87 (toList!865 lt!67345) (_1!1306 (tuple2!2593 lt!67354 (minValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67354 (minValue!2683 newMap!16)))))))

(assert (=> d!39551 (= (+!167 lt!67345 (tuple2!2593 lt!67354 (minValue!2683 newMap!16))) lt!67695)))

(declare-fun b!130139 () Bool)

(declare-fun res!62774 () Bool)

(assert (=> b!130139 (=> (not res!62774) (not e!84913))))

(assert (=> b!130139 (= res!62774 (= (getValueByKey!168 (toList!865 lt!67695) (_1!1306 (tuple2!2593 lt!67354 (minValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67354 (minValue!2683 newMap!16))))))))

(declare-fun b!130140 () Bool)

(assert (=> b!130140 (= e!84913 (contains!887 (toList!865 lt!67695) (tuple2!2593 lt!67354 (minValue!2683 newMap!16))))))

(assert (= (and d!39551 res!62775) b!130139))

(assert (= (and b!130139 res!62774) b!130140))

(declare-fun m!153193 () Bool)

(assert (=> d!39551 m!153193))

(declare-fun m!153195 () Bool)

(assert (=> d!39551 m!153195))

(declare-fun m!153197 () Bool)

(assert (=> d!39551 m!153197))

(declare-fun m!153199 () Bool)

(assert (=> d!39551 m!153199))

(declare-fun m!153201 () Bool)

(assert (=> b!130139 m!153201))

(declare-fun m!153203 () Bool)

(assert (=> b!130140 m!153203))

(assert (=> b!129736 d!39551))

(declare-fun d!39553 () Bool)

(declare-fun e!84915 () Bool)

(assert (=> d!39553 e!84915))

(declare-fun res!62776 () Bool)

(assert (=> d!39553 (=> res!62776 e!84915)))

(declare-fun lt!67696 () Bool)

(assert (=> d!39553 (= res!62776 (not lt!67696))))

(declare-fun lt!67699 () Bool)

(assert (=> d!39553 (= lt!67696 lt!67699)))

(declare-fun lt!67698 () Unit!4055)

(declare-fun e!84914 () Unit!4055)

(assert (=> d!39553 (= lt!67698 e!84914)))

(declare-fun c!23975 () Bool)

(assert (=> d!39553 (= c!23975 lt!67699)))

(assert (=> d!39553 (= lt!67699 (containsKey!172 (toList!865 (+!167 lt!67347 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16)))) lt!67353))))

(assert (=> d!39553 (= (contains!886 (+!167 lt!67347 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16))) lt!67353) lt!67696)))

(declare-fun b!130141 () Bool)

(declare-fun lt!67697 () Unit!4055)

(assert (=> b!130141 (= e!84914 lt!67697)))

(assert (=> b!130141 (= lt!67697 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 (+!167 lt!67347 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16)))) lt!67353))))

(assert (=> b!130141 (isDefined!122 (getValueByKey!168 (toList!865 (+!167 lt!67347 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16)))) lt!67353))))

(declare-fun b!130142 () Bool)

(declare-fun Unit!4079 () Unit!4055)

(assert (=> b!130142 (= e!84914 Unit!4079)))

(declare-fun b!130143 () Bool)

(assert (=> b!130143 (= e!84915 (isDefined!122 (getValueByKey!168 (toList!865 (+!167 lt!67347 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16)))) lt!67353)))))

(assert (= (and d!39553 c!23975) b!130141))

(assert (= (and d!39553 (not c!23975)) b!130142))

(assert (= (and d!39553 (not res!62776)) b!130143))

(declare-fun m!153205 () Bool)

(assert (=> d!39553 m!153205))

(declare-fun m!153207 () Bool)

(assert (=> b!130141 m!153207))

(declare-fun m!153209 () Bool)

(assert (=> b!130141 m!153209))

(assert (=> b!130141 m!153209))

(declare-fun m!153211 () Bool)

(assert (=> b!130141 m!153211))

(assert (=> b!130143 m!153209))

(assert (=> b!130143 m!153209))

(assert (=> b!130143 m!153211))

(assert (=> b!129736 d!39553))

(declare-fun d!39555 () Bool)

(assert (=> d!39555 (= (apply!113 lt!67357 lt!67339) (get!1472 (getValueByKey!168 (toList!865 lt!67357) lt!67339)))))

(declare-fun bs!5406 () Bool)

(assert (= bs!5406 d!39555))

(declare-fun m!153213 () Bool)

(assert (=> bs!5406 m!153213))

(assert (=> bs!5406 m!153213))

(declare-fun m!153215 () Bool)

(assert (=> bs!5406 m!153215))

(assert (=> b!129736 d!39555))

(declare-fun d!39557 () Bool)

(assert (=> d!39557 (= (apply!113 (+!167 lt!67350 (tuple2!2593 lt!67358 (minValue!2683 newMap!16))) lt!67341) (get!1472 (getValueByKey!168 (toList!865 (+!167 lt!67350 (tuple2!2593 lt!67358 (minValue!2683 newMap!16)))) lt!67341)))))

(declare-fun bs!5407 () Bool)

(assert (= bs!5407 d!39557))

(declare-fun m!153217 () Bool)

(assert (=> bs!5407 m!153217))

(assert (=> bs!5407 m!153217))

(declare-fun m!153219 () Bool)

(assert (=> bs!5407 m!153219))

(assert (=> b!129736 d!39557))

(declare-fun d!39559 () Bool)

(assert (=> d!39559 (contains!886 (+!167 lt!67347 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16))) lt!67353)))

(declare-fun lt!67700 () Unit!4055)

(assert (=> d!39559 (= lt!67700 (choose!800 lt!67347 lt!67356 (zeroValue!2683 newMap!16) lt!67353))))

(assert (=> d!39559 (contains!886 lt!67347 lt!67353)))

(assert (=> d!39559 (= (addStillContains!89 lt!67347 lt!67356 (zeroValue!2683 newMap!16) lt!67353) lt!67700)))

(declare-fun bs!5408 () Bool)

(assert (= bs!5408 d!39559))

(assert (=> bs!5408 m!152461))

(assert (=> bs!5408 m!152461))

(assert (=> bs!5408 m!152465))

(declare-fun m!153221 () Bool)

(assert (=> bs!5408 m!153221))

(declare-fun m!153223 () Bool)

(assert (=> bs!5408 m!153223))

(assert (=> b!129736 d!39559))

(declare-fun d!39561 () Bool)

(assert (=> d!39561 (= (apply!113 (+!167 lt!67357 (tuple2!2593 lt!67342 (zeroValue!2683 newMap!16))) lt!67339) (get!1472 (getValueByKey!168 (toList!865 (+!167 lt!67357 (tuple2!2593 lt!67342 (zeroValue!2683 newMap!16)))) lt!67339)))))

(declare-fun bs!5409 () Bool)

(assert (= bs!5409 d!39561))

(declare-fun m!153225 () Bool)

(assert (=> bs!5409 m!153225))

(assert (=> bs!5409 m!153225))

(declare-fun m!153227 () Bool)

(assert (=> bs!5409 m!153227))

(assert (=> b!129736 d!39561))

(declare-fun d!39563 () Bool)

(assert (=> d!39563 (= (apply!113 (+!167 lt!67345 (tuple2!2593 lt!67354 (minValue!2683 newMap!16))) lt!67352) (apply!113 lt!67345 lt!67352))))

(declare-fun lt!67701 () Unit!4055)

(assert (=> d!39563 (= lt!67701 (choose!799 lt!67345 lt!67354 (minValue!2683 newMap!16) lt!67352))))

(declare-fun e!84916 () Bool)

(assert (=> d!39563 e!84916))

(declare-fun res!62777 () Bool)

(assert (=> d!39563 (=> (not res!62777) (not e!84916))))

(assert (=> d!39563 (= res!62777 (contains!886 lt!67345 lt!67352))))

(assert (=> d!39563 (= (addApplyDifferent!89 lt!67345 lt!67354 (minValue!2683 newMap!16) lt!67352) lt!67701)))

(declare-fun b!130144 () Bool)

(assert (=> b!130144 (= e!84916 (not (= lt!67352 lt!67354)))))

(assert (= (and d!39563 res!62777) b!130144))

(assert (=> d!39563 m!152435))

(assert (=> d!39563 m!152435))

(assert (=> d!39563 m!152445))

(assert (=> d!39563 m!152447))

(declare-fun m!153229 () Bool)

(assert (=> d!39563 m!153229))

(declare-fun m!153231 () Bool)

(assert (=> d!39563 m!153231))

(assert (=> b!129736 d!39563))

(declare-fun d!39565 () Bool)

(assert (=> d!39565 (= (apply!113 lt!67350 lt!67341) (get!1472 (getValueByKey!168 (toList!865 lt!67350) lt!67341)))))

(declare-fun bs!5410 () Bool)

(assert (= bs!5410 d!39565))

(declare-fun m!153233 () Bool)

(assert (=> bs!5410 m!153233))

(assert (=> bs!5410 m!153233))

(declare-fun m!153235 () Bool)

(assert (=> bs!5410 m!153235))

(assert (=> b!129736 d!39565))

(declare-fun d!39567 () Bool)

(assert (=> d!39567 (= (apply!113 (+!167 lt!67357 (tuple2!2593 lt!67342 (zeroValue!2683 newMap!16))) lt!67339) (apply!113 lt!67357 lt!67339))))

(declare-fun lt!67702 () Unit!4055)

(assert (=> d!39567 (= lt!67702 (choose!799 lt!67357 lt!67342 (zeroValue!2683 newMap!16) lt!67339))))

(declare-fun e!84917 () Bool)

(assert (=> d!39567 e!84917))

(declare-fun res!62778 () Bool)

(assert (=> d!39567 (=> (not res!62778) (not e!84917))))

(assert (=> d!39567 (= res!62778 (contains!886 lt!67357 lt!67339))))

(assert (=> d!39567 (= (addApplyDifferent!89 lt!67357 lt!67342 (zeroValue!2683 newMap!16) lt!67339) lt!67702)))

(declare-fun b!130145 () Bool)

(assert (=> b!130145 (= e!84917 (not (= lt!67339 lt!67342)))))

(assert (= (and d!39567 res!62778) b!130145))

(assert (=> d!39567 m!152453))

(assert (=> d!39567 m!152453))

(assert (=> d!39567 m!152455))

(assert (=> d!39567 m!152441))

(declare-fun m!153237 () Bool)

(assert (=> d!39567 m!153237))

(declare-fun m!153239 () Bool)

(assert (=> d!39567 m!153239))

(assert (=> b!129736 d!39567))

(declare-fun d!39569 () Bool)

(declare-fun e!84918 () Bool)

(assert (=> d!39569 e!84918))

(declare-fun res!62780 () Bool)

(assert (=> d!39569 (=> (not res!62780) (not e!84918))))

(declare-fun lt!67706 () ListLongMap!1699)

(assert (=> d!39569 (= res!62780 (contains!886 lt!67706 (_1!1306 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16)))))))

(declare-fun lt!67705 () List!1728)

(assert (=> d!39569 (= lt!67706 (ListLongMap!1700 lt!67705))))

(declare-fun lt!67704 () Unit!4055)

(declare-fun lt!67703 () Unit!4055)

(assert (=> d!39569 (= lt!67704 lt!67703)))

(assert (=> d!39569 (= (getValueByKey!168 lt!67705 (_1!1306 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16)))))))

(assert (=> d!39569 (= lt!67703 (lemmaContainsTupThenGetReturnValue!85 lt!67705 (_1!1306 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16)))))))

(assert (=> d!39569 (= lt!67705 (insertStrictlySorted!87 (toList!865 lt!67347) (_1!1306 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16)))))))

(assert (=> d!39569 (= (+!167 lt!67347 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16))) lt!67706)))

(declare-fun b!130146 () Bool)

(declare-fun res!62779 () Bool)

(assert (=> b!130146 (=> (not res!62779) (not e!84918))))

(assert (=> b!130146 (= res!62779 (= (getValueByKey!168 (toList!865 lt!67706) (_1!1306 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16))))))))

(declare-fun b!130147 () Bool)

(assert (=> b!130147 (= e!84918 (contains!887 (toList!865 lt!67706) (tuple2!2593 lt!67356 (zeroValue!2683 newMap!16))))))

(assert (= (and d!39569 res!62780) b!130146))

(assert (= (and b!130146 res!62779) b!130147))

(declare-fun m!153241 () Bool)

(assert (=> d!39569 m!153241))

(declare-fun m!153243 () Bool)

(assert (=> d!39569 m!153243))

(declare-fun m!153245 () Bool)

(assert (=> d!39569 m!153245))

(declare-fun m!153247 () Bool)

(assert (=> d!39569 m!153247))

(declare-fun m!153249 () Bool)

(assert (=> b!130146 m!153249))

(declare-fun m!153251 () Bool)

(assert (=> b!130147 m!153251))

(assert (=> b!129736 d!39569))

(declare-fun d!39571 () Bool)

(assert (=> d!39571 (= (apply!113 (+!167 lt!67345 (tuple2!2593 lt!67354 (minValue!2683 newMap!16))) lt!67352) (get!1472 (getValueByKey!168 (toList!865 (+!167 lt!67345 (tuple2!2593 lt!67354 (minValue!2683 newMap!16)))) lt!67352)))))

(declare-fun bs!5411 () Bool)

(assert (= bs!5411 d!39571))

(declare-fun m!153253 () Bool)

(assert (=> bs!5411 m!153253))

(assert (=> bs!5411 m!153253))

(declare-fun m!153255 () Bool)

(assert (=> bs!5411 m!153255))

(assert (=> b!129736 d!39571))

(declare-fun d!39573 () Bool)

(declare-fun e!84919 () Bool)

(assert (=> d!39573 e!84919))

(declare-fun res!62782 () Bool)

(assert (=> d!39573 (=> (not res!62782) (not e!84919))))

(declare-fun lt!67710 () ListLongMap!1699)

(assert (=> d!39573 (= res!62782 (contains!886 lt!67710 (_1!1306 (tuple2!2593 lt!67358 (minValue!2683 newMap!16)))))))

(declare-fun lt!67709 () List!1728)

(assert (=> d!39573 (= lt!67710 (ListLongMap!1700 lt!67709))))

(declare-fun lt!67708 () Unit!4055)

(declare-fun lt!67707 () Unit!4055)

(assert (=> d!39573 (= lt!67708 lt!67707)))

(assert (=> d!39573 (= (getValueByKey!168 lt!67709 (_1!1306 (tuple2!2593 lt!67358 (minValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67358 (minValue!2683 newMap!16)))))))

(assert (=> d!39573 (= lt!67707 (lemmaContainsTupThenGetReturnValue!85 lt!67709 (_1!1306 (tuple2!2593 lt!67358 (minValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67358 (minValue!2683 newMap!16)))))))

(assert (=> d!39573 (= lt!67709 (insertStrictlySorted!87 (toList!865 lt!67350) (_1!1306 (tuple2!2593 lt!67358 (minValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67358 (minValue!2683 newMap!16)))))))

(assert (=> d!39573 (= (+!167 lt!67350 (tuple2!2593 lt!67358 (minValue!2683 newMap!16))) lt!67710)))

(declare-fun b!130148 () Bool)

(declare-fun res!62781 () Bool)

(assert (=> b!130148 (=> (not res!62781) (not e!84919))))

(assert (=> b!130148 (= res!62781 (= (getValueByKey!168 (toList!865 lt!67710) (_1!1306 (tuple2!2593 lt!67358 (minValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67358 (minValue!2683 newMap!16))))))))

(declare-fun b!130149 () Bool)

(assert (=> b!130149 (= e!84919 (contains!887 (toList!865 lt!67710) (tuple2!2593 lt!67358 (minValue!2683 newMap!16))))))

(assert (= (and d!39573 res!62782) b!130148))

(assert (= (and b!130148 res!62781) b!130149))

(declare-fun m!153257 () Bool)

(assert (=> d!39573 m!153257))

(declare-fun m!153259 () Bool)

(assert (=> d!39573 m!153259))

(declare-fun m!153261 () Bool)

(assert (=> d!39573 m!153261))

(declare-fun m!153263 () Bool)

(assert (=> d!39573 m!153263))

(declare-fun m!153265 () Bool)

(assert (=> b!130148 m!153265))

(declare-fun m!153267 () Bool)

(assert (=> b!130149 m!153267))

(assert (=> b!129736 d!39573))

(declare-fun d!39575 () Bool)

(assert (=> d!39575 (= (apply!113 lt!67345 lt!67352) (get!1472 (getValueByKey!168 (toList!865 lt!67345) lt!67352)))))

(declare-fun bs!5412 () Bool)

(assert (= bs!5412 d!39575))

(declare-fun m!153269 () Bool)

(assert (=> bs!5412 m!153269))

(assert (=> bs!5412 m!153269))

(declare-fun m!153271 () Bool)

(assert (=> bs!5412 m!153271))

(assert (=> b!129736 d!39575))

(declare-fun b!130150 () Bool)

(declare-fun e!84925 () ListLongMap!1699)

(assert (=> b!130150 (= e!84925 (ListLongMap!1700 Nil!1725))))

(declare-fun b!130151 () Bool)

(declare-fun res!62786 () Bool)

(declare-fun e!84922 () Bool)

(assert (=> b!130151 (=> (not res!62786) (not e!84922))))

(declare-fun lt!67712 () ListLongMap!1699)

(assert (=> b!130151 (= res!62786 (not (contains!886 lt!67712 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!14162 () Bool)

(declare-fun call!14165 () ListLongMap!1699)

(assert (=> bm!14162 (= call!14165 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2824 newMap!16)))))

(declare-fun b!130152 () Bool)

(declare-fun e!84923 () Bool)

(declare-fun e!84920 () Bool)

(assert (=> b!130152 (= e!84923 e!84920)))

(assert (=> b!130152 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun res!62783 () Bool)

(assert (=> b!130152 (= res!62783 (contains!886 lt!67712 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!130152 (=> (not res!62783) (not e!84920))))

(declare-fun b!130153 () Bool)

(declare-fun e!84926 () ListLongMap!1699)

(assert (=> b!130153 (= e!84926 call!14165)))

(declare-fun b!130154 () Bool)

(declare-fun e!84924 () Bool)

(assert (=> b!130154 (= e!84923 e!84924)))

(declare-fun c!23977 () Bool)

(assert (=> b!130154 (= c!23977 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!130155 () Bool)

(assert (=> b!130155 (= e!84925 e!84926)))

(declare-fun c!23976 () Bool)

(assert (=> b!130155 (= c!23976 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!130156 () Bool)

(declare-fun lt!67714 () Unit!4055)

(declare-fun lt!67711 () Unit!4055)

(assert (=> b!130156 (= lt!67714 lt!67711)))

(declare-fun lt!67715 () V!3459)

(declare-fun lt!67716 () (_ BitVec 64))

(declare-fun lt!67713 () (_ BitVec 64))

(declare-fun lt!67717 () ListLongMap!1699)

(assert (=> b!130156 (not (contains!886 (+!167 lt!67717 (tuple2!2593 lt!67716 lt!67715)) lt!67713))))

(assert (=> b!130156 (= lt!67711 (addStillNotContains!60 lt!67717 lt!67716 lt!67715 lt!67713))))

(assert (=> b!130156 (= lt!67713 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!130156 (= lt!67715 (get!1469 (select (arr!2243 (_values!2807 newMap!16)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!130156 (= lt!67716 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!130156 (= lt!67717 call!14165)))

(assert (=> b!130156 (= e!84926 (+!167 call!14165 (tuple2!2593 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) (get!1469 (select (arr!2243 (_values!2807 newMap!16)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!130157 () Bool)

(assert (=> b!130157 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(assert (=> b!130157 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2509 (_values!2807 newMap!16))))))

(assert (=> b!130157 (= e!84920 (= (apply!113 lt!67712 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) (get!1469 (select (arr!2243 (_values!2807 newMap!16)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!130158 () Bool)

(assert (=> b!130158 (= e!84922 e!84923)))

(declare-fun c!23978 () Bool)

(declare-fun e!84921 () Bool)

(assert (=> b!130158 (= c!23978 e!84921)))

(declare-fun res!62784 () Bool)

(assert (=> b!130158 (=> (not res!62784) (not e!84921))))

(assert (=> b!130158 (= res!62784 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun d!39577 () Bool)

(assert (=> d!39577 e!84922))

(declare-fun res!62785 () Bool)

(assert (=> d!39577 (=> (not res!62785) (not e!84922))))

(assert (=> d!39577 (= res!62785 (not (contains!886 lt!67712 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39577 (= lt!67712 e!84925)))

(declare-fun c!23979 () Bool)

(assert (=> d!39577 (= c!23979 (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(assert (=> d!39577 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39577 (= (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) lt!67712)))

(declare-fun b!130159 () Bool)

(assert (=> b!130159 (= e!84921 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!130159 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!130160 () Bool)

(assert (=> b!130160 (= e!84924 (= lt!67712 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2824 newMap!16))))))

(declare-fun b!130161 () Bool)

(assert (=> b!130161 (= e!84924 (isEmpty!408 lt!67712))))

(assert (= (and d!39577 c!23979) b!130150))

(assert (= (and d!39577 (not c!23979)) b!130155))

(assert (= (and b!130155 c!23976) b!130156))

(assert (= (and b!130155 (not c!23976)) b!130153))

(assert (= (or b!130156 b!130153) bm!14162))

(assert (= (and d!39577 res!62785) b!130151))

(assert (= (and b!130151 res!62786) b!130158))

(assert (= (and b!130158 res!62784) b!130159))

(assert (= (and b!130158 c!23978) b!130152))

(assert (= (and b!130158 (not c!23978)) b!130154))

(assert (= (and b!130152 res!62783) b!130157))

(assert (= (and b!130154 c!23977) b!130160))

(assert (= (and b!130154 (not c!23977)) b!130161))

(declare-fun b_lambda!5807 () Bool)

(assert (=> (not b_lambda!5807) (not b!130156)))

(assert (=> b!130156 t!6146))

(declare-fun b_and!8069 () Bool)

(assert (= b_and!8065 (and (=> t!6146 result!3933) b_and!8069)))

(assert (=> b!130156 t!6148))

(declare-fun b_and!8071 () Bool)

(assert (= b_and!8067 (and (=> t!6148 result!3935) b_and!8071)))

(declare-fun b_lambda!5809 () Bool)

(assert (=> (not b_lambda!5809) (not b!130157)))

(assert (=> b!130157 t!6146))

(declare-fun b_and!8073 () Bool)

(assert (= b_and!8069 (and (=> t!6146 result!3933) b_and!8073)))

(assert (=> b!130157 t!6148))

(declare-fun b_and!8075 () Bool)

(assert (= b_and!8071 (and (=> t!6148 result!3935) b_and!8075)))

(declare-fun m!153273 () Bool)

(assert (=> b!130161 m!153273))

(assert (=> b!130155 m!152429))

(assert (=> b!130155 m!152429))

(assert (=> b!130155 m!152431))

(declare-fun m!153275 () Bool)

(assert (=> b!130156 m!153275))

(assert (=> b!130156 m!152429))

(assert (=> b!130156 m!152473))

(assert (=> b!130156 m!152471))

(declare-fun m!153277 () Bool)

(assert (=> b!130156 m!153277))

(assert (=> b!130156 m!152473))

(assert (=> b!130156 m!152471))

(assert (=> b!130156 m!152475))

(declare-fun m!153279 () Bool)

(assert (=> b!130156 m!153279))

(declare-fun m!153281 () Bool)

(assert (=> b!130156 m!153281))

(assert (=> b!130156 m!153279))

(assert (=> b!130157 m!152429))

(assert (=> b!130157 m!152473))

(assert (=> b!130157 m!152471))

(assert (=> b!130157 m!152473))

(assert (=> b!130157 m!152471))

(assert (=> b!130157 m!152475))

(assert (=> b!130157 m!152429))

(declare-fun m!153283 () Bool)

(assert (=> b!130157 m!153283))

(declare-fun m!153285 () Bool)

(assert (=> d!39577 m!153285))

(assert (=> d!39577 m!152393))

(declare-fun m!153287 () Bool)

(assert (=> b!130151 m!153287))

(assert (=> b!130159 m!152429))

(assert (=> b!130159 m!152429))

(assert (=> b!130159 m!152431))

(declare-fun m!153289 () Bool)

(assert (=> b!130160 m!153289))

(assert (=> bm!14162 m!153289))

(assert (=> b!130152 m!152429))

(assert (=> b!130152 m!152429))

(declare-fun m!153291 () Bool)

(assert (=> b!130152 m!153291))

(assert (=> b!129736 d!39577))

(declare-fun d!39579 () Bool)

(assert (=> d!39579 (= (get!1471 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!129680 d!39579))

(declare-fun d!39581 () Bool)

(assert (=> d!39581 (= (apply!113 lt!67384 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1472 (getValueByKey!168 (toList!865 lt!67384) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!5413 () Bool)

(assert (= bs!5413 d!39581))

(assert (=> bs!5413 m!152255))

(assert (=> bs!5413 m!153167))

(assert (=> bs!5413 m!153167))

(declare-fun m!153293 () Bool)

(assert (=> bs!5413 m!153293))

(assert (=> b!129784 d!39581))

(assert (=> b!129784 d!39343))

(declare-fun d!39583 () Bool)

(declare-fun e!84927 () Bool)

(assert (=> d!39583 e!84927))

(declare-fun res!62788 () Bool)

(assert (=> d!39583 (=> (not res!62788) (not e!84927))))

(declare-fun lt!67721 () ListLongMap!1699)

(assert (=> d!39583 (= res!62788 (contains!886 lt!67721 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))))

(declare-fun lt!67720 () List!1728)

(assert (=> d!39583 (= lt!67721 (ListLongMap!1700 lt!67720))))

(declare-fun lt!67719 () Unit!4055)

(declare-fun lt!67718 () Unit!4055)

(assert (=> d!39583 (= lt!67719 lt!67718)))

(assert (=> d!39583 (= (getValueByKey!168 lt!67720 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))) (Some!173 (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))))

(assert (=> d!39583 (= lt!67718 (lemmaContainsTupThenGetReturnValue!85 lt!67720 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))))

(assert (=> d!39583 (= lt!67720 (insertStrictlySorted!87 (toList!865 call!14119) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))))

(assert (=> d!39583 (= (+!167 call!14119 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))) lt!67721)))

(declare-fun b!130162 () Bool)

(declare-fun res!62787 () Bool)

(assert (=> b!130162 (=> (not res!62787) (not e!84927))))

(assert (=> b!130162 (= res!62787 (= (getValueByKey!168 (toList!865 lt!67721) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))) (Some!173 (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))))))))

(declare-fun b!130163 () Bool)

(assert (=> b!130163 (= e!84927 (contains!887 (toList!865 lt!67721) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))))))

(assert (= (and d!39583 res!62788) b!130162))

(assert (= (and b!130162 res!62787) b!130163))

(declare-fun m!153295 () Bool)

(assert (=> d!39583 m!153295))

(declare-fun m!153297 () Bool)

(assert (=> d!39583 m!153297))

(declare-fun m!153299 () Bool)

(assert (=> d!39583 m!153299))

(declare-fun m!153301 () Bool)

(assert (=> d!39583 m!153301))

(declare-fun m!153303 () Bool)

(assert (=> b!130162 m!153303))

(declare-fun m!153305 () Bool)

(assert (=> b!130163 m!153305))

(assert (=> b!129808 d!39583))

(declare-fun d!39585 () Bool)

(assert (=> d!39585 (= (isDefined!122 (getValueByKey!168 (toList!865 lt!67214) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!407 (getValueByKey!168 (toList!865 lt!67214) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!5414 () Bool)

(assert (= bs!5414 d!39585))

(assert (=> bs!5414 m!152725))

(declare-fun m!153307 () Bool)

(assert (=> bs!5414 m!153307))

(assert (=> b!129881 d!39585))

(declare-fun b!130166 () Bool)

(declare-fun e!84929 () Option!174)

(assert (=> b!130166 (= e!84929 (getValueByKey!168 (t!6139 (toList!865 lt!67214)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130164 () Bool)

(declare-fun e!84928 () Option!174)

(assert (=> b!130164 (= e!84928 (Some!173 (_2!1306 (h!2328 (toList!865 lt!67214)))))))

(declare-fun b!130165 () Bool)

(assert (=> b!130165 (= e!84928 e!84929)))

(declare-fun c!23981 () Bool)

(assert (=> b!130165 (= c!23981 (and ((_ is Cons!1724) (toList!865 lt!67214)) (not (= (_1!1306 (h!2328 (toList!865 lt!67214))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!130167 () Bool)

(assert (=> b!130167 (= e!84929 None!172)))

(declare-fun d!39587 () Bool)

(declare-fun c!23980 () Bool)

(assert (=> d!39587 (= c!23980 (and ((_ is Cons!1724) (toList!865 lt!67214)) (= (_1!1306 (h!2328 (toList!865 lt!67214))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39587 (= (getValueByKey!168 (toList!865 lt!67214) #b1000000000000000000000000000000000000000000000000000000000000000) e!84928)))

(assert (= (and d!39587 c!23980) b!130164))

(assert (= (and d!39587 (not c!23980)) b!130165))

(assert (= (and b!130165 c!23981) b!130166))

(assert (= (and b!130165 (not c!23981)) b!130167))

(declare-fun m!153309 () Bool)

(assert (=> b!130166 m!153309))

(assert (=> b!129881 d!39587))

(declare-fun d!39589 () Bool)

(assert (=> d!39589 (= (get!1472 (getValueByKey!168 (toList!865 (+!167 lt!67223 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67205)) (v!3163 (getValueByKey!168 (toList!865 (+!167 lt!67223 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67205)))))

(assert (=> d!39391 d!39589))

(declare-fun b!130170 () Bool)

(declare-fun e!84931 () Option!174)

(assert (=> b!130170 (= e!84931 (getValueByKey!168 (t!6139 (toList!865 (+!167 lt!67223 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))) lt!67205))))

(declare-fun e!84930 () Option!174)

(declare-fun b!130168 () Bool)

(assert (=> b!130168 (= e!84930 (Some!173 (_2!1306 (h!2328 (toList!865 (+!167 lt!67223 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))))

(declare-fun b!130169 () Bool)

(assert (=> b!130169 (= e!84930 e!84931)))

(declare-fun c!23983 () Bool)

(assert (=> b!130169 (= c!23983 (and ((_ is Cons!1724) (toList!865 (+!167 lt!67223 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))) (not (= (_1!1306 (h!2328 (toList!865 (+!167 lt!67223 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))) lt!67205))))))

(declare-fun b!130171 () Bool)

(assert (=> b!130171 (= e!84931 None!172)))

(declare-fun c!23982 () Bool)

(declare-fun d!39591 () Bool)

(assert (=> d!39591 (= c!23982 (and ((_ is Cons!1724) (toList!865 (+!167 lt!67223 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))) (= (_1!1306 (h!2328 (toList!865 (+!167 lt!67223 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))) lt!67205)))))

(assert (=> d!39591 (= (getValueByKey!168 (toList!865 (+!167 lt!67223 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67205) e!84930)))

(assert (= (and d!39591 c!23982) b!130168))

(assert (= (and d!39591 (not c!23982)) b!130169))

(assert (= (and b!130169 c!23983) b!130170))

(assert (= (and b!130169 (not c!23983)) b!130171))

(declare-fun m!153311 () Bool)

(assert (=> b!130170 m!153311))

(assert (=> d!39391 d!39591))

(declare-fun d!39593 () Bool)

(declare-fun lt!67724 () Bool)

(declare-fun content!129 (List!1728) (InoxSet tuple2!2592))

(assert (=> d!39593 (= lt!67724 (select (content!129 (toList!865 lt!67618)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun e!84936 () Bool)

(assert (=> d!39593 (= lt!67724 e!84936)))

(declare-fun res!62794 () Bool)

(assert (=> d!39593 (=> (not res!62794) (not e!84936))))

(assert (=> d!39593 (= res!62794 ((_ is Cons!1724) (toList!865 lt!67618)))))

(assert (=> d!39593 (= (contains!887 (toList!865 lt!67618) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67724)))

(declare-fun b!130176 () Bool)

(declare-fun e!84937 () Bool)

(assert (=> b!130176 (= e!84936 e!84937)))

(declare-fun res!62793 () Bool)

(assert (=> b!130176 (=> res!62793 e!84937)))

(assert (=> b!130176 (= res!62793 (= (h!2328 (toList!865 lt!67618)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun b!130177 () Bool)

(assert (=> b!130177 (= e!84937 (contains!887 (t!6139 (toList!865 lt!67618)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(assert (= (and d!39593 res!62794) b!130176))

(assert (= (and b!130176 (not res!62793)) b!130177))

(declare-fun m!153313 () Bool)

(assert (=> d!39593 m!153313))

(declare-fun m!153315 () Bool)

(assert (=> d!39593 m!153315))

(declare-fun m!153317 () Bool)

(assert (=> b!130177 m!153317))

(assert (=> b!130010 d!39593))

(declare-fun d!39595 () Bool)

(assert (=> d!39595 (isDefined!122 (getValueByKey!168 (toList!865 call!14088) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun lt!67725 () Unit!4055)

(assert (=> d!39595 (= lt!67725 (choose!796 (toList!865 call!14088) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun e!84938 () Bool)

(assert (=> d!39595 e!84938))

(declare-fun res!62795 () Bool)

(assert (=> d!39595 (=> (not res!62795) (not e!84938))))

(assert (=> d!39595 (= res!62795 (isStrictlySorted!314 (toList!865 call!14088)))))

(assert (=> d!39595 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 call!14088) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) lt!67725)))

(declare-fun b!130178 () Bool)

(assert (=> b!130178 (= e!84938 (containsKey!172 (toList!865 call!14088) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (= (and d!39595 res!62795) b!130178))

(assert (=> d!39595 m!152209))

(assert (=> d!39595 m!152913))

(assert (=> d!39595 m!152913))

(assert (=> d!39595 m!152915))

(assert (=> d!39595 m!152209))

(declare-fun m!153319 () Bool)

(assert (=> d!39595 m!153319))

(declare-fun m!153321 () Bool)

(assert (=> d!39595 m!153321))

(assert (=> b!130178 m!152209))

(assert (=> b!130178 m!152909))

(assert (=> b!130006 d!39595))

(declare-fun d!39597 () Bool)

(assert (=> d!39597 (= (isDefined!122 (getValueByKey!168 (toList!865 call!14088) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))) (not (isEmpty!407 (getValueByKey!168 (toList!865 call!14088) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))))

(declare-fun bs!5415 () Bool)

(assert (= bs!5415 d!39597))

(assert (=> bs!5415 m!152913))

(declare-fun m!153323 () Bool)

(assert (=> bs!5415 m!153323))

(assert (=> b!130006 d!39597))

(declare-fun b!130181 () Bool)

(declare-fun e!84940 () Option!174)

(assert (=> b!130181 (= e!84940 (getValueByKey!168 (t!6139 (toList!865 call!14088)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun b!130179 () Bool)

(declare-fun e!84939 () Option!174)

(assert (=> b!130179 (= e!84939 (Some!173 (_2!1306 (h!2328 (toList!865 call!14088)))))))

(declare-fun b!130180 () Bool)

(assert (=> b!130180 (= e!84939 e!84940)))

(declare-fun c!23985 () Bool)

(assert (=> b!130180 (= c!23985 (and ((_ is Cons!1724) (toList!865 call!14088)) (not (= (_1!1306 (h!2328 (toList!865 call!14088))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))))

(declare-fun b!130182 () Bool)

(assert (=> b!130182 (= e!84940 None!172)))

(declare-fun d!39599 () Bool)

(declare-fun c!23984 () Bool)

(assert (=> d!39599 (= c!23984 (and ((_ is Cons!1724) (toList!865 call!14088)) (= (_1!1306 (h!2328 (toList!865 call!14088))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(assert (=> d!39599 (= (getValueByKey!168 (toList!865 call!14088) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) e!84939)))

(assert (= (and d!39599 c!23984) b!130179))

(assert (= (and d!39599 (not c!23984)) b!130180))

(assert (= (and b!130180 c!23985) b!130181))

(assert (= (and b!130180 (not c!23985)) b!130182))

(assert (=> b!130181 m!152209))

(declare-fun m!153325 () Bool)

(assert (=> b!130181 m!153325))

(assert (=> b!130006 d!39599))

(declare-fun d!39601 () Bool)

(declare-fun e!84942 () Bool)

(assert (=> d!39601 e!84942))

(declare-fun res!62796 () Bool)

(assert (=> d!39601 (=> res!62796 e!84942)))

(declare-fun lt!67726 () Bool)

(assert (=> d!39601 (= res!62796 (not lt!67726))))

(declare-fun lt!67729 () Bool)

(assert (=> d!39601 (= lt!67726 lt!67729)))

(declare-fun lt!67728 () Unit!4055)

(declare-fun e!84941 () Unit!4055)

(assert (=> d!39601 (= lt!67728 e!84941)))

(declare-fun c!23986 () Bool)

(assert (=> d!39601 (= c!23986 lt!67729)))

(assert (=> d!39601 (= lt!67729 (containsKey!172 (toList!865 lt!67499) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!39601 (= (contains!886 lt!67499 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) lt!67726)))

(declare-fun b!130183 () Bool)

(declare-fun lt!67727 () Unit!4055)

(assert (=> b!130183 (= e!84941 lt!67727)))

(assert (=> b!130183 (= lt!67727 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67499) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!130183 (isDefined!122 (getValueByKey!168 (toList!865 lt!67499) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!130184 () Bool)

(declare-fun Unit!4080 () Unit!4055)

(assert (=> b!130184 (= e!84941 Unit!4080)))

(declare-fun b!130185 () Bool)

(assert (=> b!130185 (= e!84942 (isDefined!122 (getValueByKey!168 (toList!865 lt!67499) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))))

(assert (= (and d!39601 c!23986) b!130183))

(assert (= (and d!39601 (not c!23986)) b!130184))

(assert (= (and d!39601 (not res!62796)) b!130185))

(assert (=> d!39601 m!152429))

(declare-fun m!153327 () Bool)

(assert (=> d!39601 m!153327))

(assert (=> b!130183 m!152429))

(declare-fun m!153329 () Bool)

(assert (=> b!130183 m!153329))

(assert (=> b!130183 m!152429))

(assert (=> b!130183 m!153149))

(assert (=> b!130183 m!153149))

(declare-fun m!153331 () Bool)

(assert (=> b!130183 m!153331))

(assert (=> b!130185 m!152429))

(assert (=> b!130185 m!153149))

(assert (=> b!130185 m!153149))

(assert (=> b!130185 m!153331))

(assert (=> b!129920 d!39601))

(declare-fun b!130186 () Bool)

(declare-fun e!84943 () (_ BitVec 32))

(declare-fun e!84944 () (_ BitVec 32))

(assert (=> b!130186 (= e!84943 e!84944)))

(declare-fun c!23987 () Bool)

(assert (=> b!130186 (= c!23987 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!39603 () Bool)

(declare-fun lt!67730 () (_ BitVec 32))

(assert (=> d!39603 (and (bvsge lt!67730 #b00000000000000000000000000000000) (bvsle lt!67730 (bvsub (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (=> d!39603 (= lt!67730 e!84943)))

(declare-fun c!23988 () Bool)

(assert (=> d!39603 (= c!23988 (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(assert (=> d!39603 (and (bvsle #b00000000000000000000000000000000 (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(assert (=> d!39603 (= (arrayCountValidKeys!0 (_keys!4565 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000000 (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))) lt!67730)))

(declare-fun b!130187 () Bool)

(declare-fun call!14166 () (_ BitVec 32))

(assert (=> b!130187 (= e!84944 call!14166)))

(declare-fun b!130188 () Bool)

(assert (=> b!130188 (= e!84943 #b00000000000000000000000000000000)))

(declare-fun bm!14163 () Bool)

(assert (=> bm!14163 (= call!14166 (arrayCountValidKeys!0 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun b!130189 () Bool)

(assert (=> b!130189 (= e!84944 (bvadd #b00000000000000000000000000000001 call!14166))))

(assert (= (and d!39603 c!23988) b!130188))

(assert (= (and d!39603 (not c!23988)) b!130186))

(assert (= (and b!130186 c!23987) b!130189))

(assert (= (and b!130186 (not c!23987)) b!130187))

(assert (= (or b!130189 b!130187) bm!14163))

(declare-fun m!153333 () Bool)

(assert (=> b!130186 m!153333))

(assert (=> b!130186 m!153333))

(declare-fun m!153335 () Bool)

(assert (=> b!130186 m!153335))

(declare-fun m!153337 () Bool)

(assert (=> bm!14163 m!153337))

(assert (=> b!130003 d!39603))

(declare-fun d!39605 () Bool)

(assert (=> d!39605 (= (get!1472 (getValueByKey!168 (toList!865 lt!67216) lt!67207)) (v!3163 (getValueByKey!168 (toList!865 lt!67216) lt!67207)))))

(assert (=> d!39385 d!39605))

(declare-fun b!130192 () Bool)

(declare-fun e!84946 () Option!174)

(assert (=> b!130192 (= e!84946 (getValueByKey!168 (t!6139 (toList!865 lt!67216)) lt!67207))))

(declare-fun b!130190 () Bool)

(declare-fun e!84945 () Option!174)

(assert (=> b!130190 (= e!84945 (Some!173 (_2!1306 (h!2328 (toList!865 lt!67216)))))))

(declare-fun b!130191 () Bool)

(assert (=> b!130191 (= e!84945 e!84946)))

(declare-fun c!23990 () Bool)

(assert (=> b!130191 (= c!23990 (and ((_ is Cons!1724) (toList!865 lt!67216)) (not (= (_1!1306 (h!2328 (toList!865 lt!67216))) lt!67207))))))

(declare-fun b!130193 () Bool)

(assert (=> b!130193 (= e!84946 None!172)))

(declare-fun d!39607 () Bool)

(declare-fun c!23989 () Bool)

(assert (=> d!39607 (= c!23989 (and ((_ is Cons!1724) (toList!865 lt!67216)) (= (_1!1306 (h!2328 (toList!865 lt!67216))) lt!67207)))))

(assert (=> d!39607 (= (getValueByKey!168 (toList!865 lt!67216) lt!67207) e!84945)))

(assert (= (and d!39607 c!23989) b!130190))

(assert (= (and d!39607 (not c!23989)) b!130191))

(assert (= (and b!130191 c!23990) b!130192))

(assert (= (and b!130191 (not c!23990)) b!130193))

(declare-fun m!153339 () Bool)

(assert (=> b!130192 m!153339))

(assert (=> d!39385 d!39607))

(declare-fun d!39609 () Bool)

(assert (=> d!39609 (= (apply!113 lt!67348 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1472 (getValueByKey!168 (toList!865 lt!67348) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5416 () Bool)

(assert (= bs!5416 d!39609))

(declare-fun m!153341 () Bool)

(assert (=> bs!5416 m!153341))

(assert (=> bs!5416 m!153341))

(declare-fun m!153343 () Bool)

(assert (=> bs!5416 m!153343))

(assert (=> b!129741 d!39609))

(assert (=> b!129707 d!39381))

(assert (=> bm!14150 d!39377))

(declare-fun d!39611 () Bool)

(declare-fun isEmpty!409 (List!1728) Bool)

(assert (=> d!39611 (= (isEmpty!408 lt!67384) (isEmpty!409 (toList!865 lt!67384)))))

(declare-fun bs!5417 () Bool)

(assert (= bs!5417 d!39611))

(declare-fun m!153345 () Bool)

(assert (=> bs!5417 m!153345))

(assert (=> b!129788 d!39611))

(declare-fun d!39613 () Bool)

(declare-fun e!84948 () Bool)

(assert (=> d!39613 e!84948))

(declare-fun res!62797 () Bool)

(assert (=> d!39613 (=> res!62797 e!84948)))

(declare-fun lt!67731 () Bool)

(assert (=> d!39613 (= res!62797 (not lt!67731))))

(declare-fun lt!67734 () Bool)

(assert (=> d!39613 (= lt!67731 lt!67734)))

(declare-fun lt!67733 () Unit!4055)

(declare-fun e!84947 () Unit!4055)

(assert (=> d!39613 (= lt!67733 e!84947)))

(declare-fun c!23991 () Bool)

(assert (=> d!39613 (= c!23991 lt!67734)))

(assert (=> d!39613 (= lt!67734 (containsKey!172 (toList!865 lt!67520) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39613 (= (contains!886 lt!67520 (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))) lt!67731)))

(declare-fun b!130194 () Bool)

(declare-fun lt!67732 () Unit!4055)

(assert (=> b!130194 (= e!84947 lt!67732)))

(assert (=> b!130194 (= lt!67732 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67520) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> b!130194 (isDefined!122 (getValueByKey!168 (toList!865 lt!67520) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!130195 () Bool)

(declare-fun Unit!4081 () Unit!4055)

(assert (=> b!130195 (= e!84947 Unit!4081)))

(declare-fun b!130196 () Bool)

(assert (=> b!130196 (= e!84948 (isDefined!122 (getValueByKey!168 (toList!865 lt!67520) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(assert (= (and d!39613 c!23991) b!130194))

(assert (= (and d!39613 (not c!23991)) b!130195))

(assert (= (and d!39613 (not res!62797)) b!130196))

(declare-fun m!153347 () Bool)

(assert (=> d!39613 m!153347))

(declare-fun m!153349 () Bool)

(assert (=> b!130194 m!153349))

(assert (=> b!130194 m!152833))

(assert (=> b!130194 m!152833))

(declare-fun m!153351 () Bool)

(assert (=> b!130194 m!153351))

(assert (=> b!130196 m!152833))

(assert (=> b!130196 m!152833))

(assert (=> b!130196 m!153351))

(assert (=> d!39439 d!39613))

(declare-fun b!130199 () Bool)

(declare-fun e!84950 () Option!174)

(assert (=> b!130199 (= e!84950 (getValueByKey!168 (t!6139 lt!67519) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!130197 () Bool)

(declare-fun e!84949 () Option!174)

(assert (=> b!130197 (= e!84949 (Some!173 (_2!1306 (h!2328 lt!67519))))))

(declare-fun b!130198 () Bool)

(assert (=> b!130198 (= e!84949 e!84950)))

(declare-fun c!23993 () Bool)

(assert (=> b!130198 (= c!23993 (and ((_ is Cons!1724) lt!67519) (not (= (_1!1306 (h!2328 lt!67519)) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))))

(declare-fun b!130200 () Bool)

(assert (=> b!130200 (= e!84950 None!172)))

(declare-fun c!23992 () Bool)

(declare-fun d!39615 () Bool)

(assert (=> d!39615 (= c!23992 (and ((_ is Cons!1724) lt!67519) (= (_1!1306 (h!2328 lt!67519)) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(assert (=> d!39615 (= (getValueByKey!168 lt!67519 (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))) e!84949)))

(assert (= (and d!39615 c!23992) b!130197))

(assert (= (and d!39615 (not c!23992)) b!130198))

(assert (= (and b!130198 c!23993) b!130199))

(assert (= (and b!130198 (not c!23993)) b!130200))

(declare-fun m!153353 () Bool)

(assert (=> b!130199 m!153353))

(assert (=> d!39439 d!39615))

(declare-fun d!39617 () Bool)

(assert (=> d!39617 (= (getValueByKey!168 lt!67519 (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))) (Some!173 (_2!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun lt!67735 () Unit!4055)

(assert (=> d!39617 (= lt!67735 (choose!804 lt!67519 (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (_2!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun e!84951 () Bool)

(assert (=> d!39617 e!84951))

(declare-fun res!62798 () Bool)

(assert (=> d!39617 (=> (not res!62798) (not e!84951))))

(assert (=> d!39617 (= res!62798 (isStrictlySorted!314 lt!67519))))

(assert (=> d!39617 (= (lemmaContainsTupThenGetReturnValue!85 lt!67519 (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (_2!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))) lt!67735)))

(declare-fun b!130201 () Bool)

(declare-fun res!62799 () Bool)

(assert (=> b!130201 (=> (not res!62799) (not e!84951))))

(assert (=> b!130201 (= res!62799 (containsKey!172 lt!67519 (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!130202 () Bool)

(assert (=> b!130202 (= e!84951 (contains!887 lt!67519 (tuple2!2593 (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (_2!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(assert (= (and d!39617 res!62798) b!130201))

(assert (= (and b!130201 res!62799) b!130202))

(assert (=> d!39617 m!152827))

(declare-fun m!153355 () Bool)

(assert (=> d!39617 m!153355))

(declare-fun m!153357 () Bool)

(assert (=> d!39617 m!153357))

(declare-fun m!153359 () Bool)

(assert (=> b!130201 m!153359))

(declare-fun m!153361 () Bool)

(assert (=> b!130202 m!153361))

(assert (=> d!39439 d!39617))

(declare-fun b!130203 () Bool)

(declare-fun e!84953 () List!1728)

(declare-fun call!14169 () List!1728)

(assert (=> b!130203 (= e!84953 call!14169)))

(declare-fun b!130204 () Bool)

(declare-fun e!84952 () List!1728)

(declare-fun call!14168 () List!1728)

(assert (=> b!130204 (= e!84952 call!14168)))

(declare-fun b!130205 () Bool)

(declare-fun e!84954 () List!1728)

(declare-fun call!14167 () List!1728)

(assert (=> b!130205 (= e!84954 call!14167)))

(declare-fun b!130206 () Bool)

(assert (=> b!130206 (= e!84954 e!84952)))

(declare-fun c!23996 () Bool)

(assert (=> b!130206 (= c!23996 (and ((_ is Cons!1724) (toList!865 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027)))) (= (_1!1306 (h!2328 (toList!865 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027))))) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun bm!14164 () Bool)

(assert (=> bm!14164 (= call!14169 call!14168)))

(declare-fun e!84955 () List!1728)

(declare-fun bm!14165 () Bool)

(declare-fun c!23997 () Bool)

(assert (=> bm!14165 (= call!14167 ($colon$colon!90 e!84955 (ite c!23997 (h!2328 (toList!865 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027)))) (tuple2!2593 (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (_2!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))))

(declare-fun c!23995 () Bool)

(assert (=> bm!14165 (= c!23995 c!23997)))

(declare-fun d!39619 () Bool)

(declare-fun e!84956 () Bool)

(assert (=> d!39619 e!84956))

(declare-fun res!62801 () Bool)

(assert (=> d!39619 (=> (not res!62801) (not e!84956))))

(declare-fun lt!67736 () List!1728)

(assert (=> d!39619 (= res!62801 (isStrictlySorted!314 lt!67736))))

(assert (=> d!39619 (= lt!67736 e!84954)))

(assert (=> d!39619 (= c!23997 (and ((_ is Cons!1724) (toList!865 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027)))) (bvslt (_1!1306 (h!2328 (toList!865 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027))))) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(assert (=> d!39619 (isStrictlySorted!314 (toList!865 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027))))))

(assert (=> d!39619 (= (insertStrictlySorted!87 (toList!865 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027))) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (_2!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))) lt!67736)))

(declare-fun b!130207 () Bool)

(declare-fun res!62800 () Bool)

(assert (=> b!130207 (=> (not res!62800) (not e!84956))))

(assert (=> b!130207 (= res!62800 (containsKey!172 lt!67736 (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!130208 () Bool)

(assert (=> b!130208 (= e!84956 (contains!887 lt!67736 (tuple2!2593 (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (_2!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun b!130209 () Bool)

(assert (=> b!130209 (= e!84955 (insertStrictlySorted!87 (t!6139 (toList!865 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027)))) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (_2!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!130210 () Bool)

(declare-fun c!23994 () Bool)

(assert (=> b!130210 (= e!84955 (ite c!23996 (t!6139 (toList!865 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027)))) (ite c!23994 (Cons!1724 (h!2328 (toList!865 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027)))) (t!6139 (toList!865 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027))))) Nil!1725)))))

(declare-fun b!130211 () Bool)

(assert (=> b!130211 (= e!84953 call!14169)))

(declare-fun bm!14166 () Bool)

(assert (=> bm!14166 (= call!14168 call!14167)))

(declare-fun b!130212 () Bool)

(assert (=> b!130212 (= c!23994 (and ((_ is Cons!1724) (toList!865 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027)))) (bvsgt (_1!1306 (h!2328 (toList!865 (ite c!23808 call!14026 (ite c!23809 call!14025 call!14027))))) (_1!1306 (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(assert (=> b!130212 (= e!84952 e!84953)))

(assert (= (and d!39619 c!23997) b!130205))

(assert (= (and d!39619 (not c!23997)) b!130206))

(assert (= (and b!130206 c!23996) b!130204))

(assert (= (and b!130206 (not c!23996)) b!130212))

(assert (= (and b!130212 c!23994) b!130211))

(assert (= (and b!130212 (not c!23994)) b!130203))

(assert (= (or b!130211 b!130203) bm!14164))

(assert (= (or b!130204 bm!14164) bm!14166))

(assert (= (or b!130205 bm!14166) bm!14165))

(assert (= (and bm!14165 c!23995) b!130209))

(assert (= (and bm!14165 (not c!23995)) b!130210))

(assert (= (and d!39619 res!62801) b!130207))

(assert (= (and b!130207 res!62800) b!130208))

(declare-fun m!153363 () Bool)

(assert (=> bm!14165 m!153363))

(declare-fun m!153365 () Bool)

(assert (=> b!130209 m!153365))

(declare-fun m!153367 () Bool)

(assert (=> d!39619 m!153367))

(declare-fun m!153369 () Bool)

(assert (=> d!39619 m!153369))

(declare-fun m!153371 () Bool)

(assert (=> b!130208 m!153371))

(declare-fun m!153373 () Bool)

(assert (=> b!130207 m!153373))

(assert (=> d!39439 d!39619))

(declare-fun d!39621 () Bool)

(assert (=> d!39621 (= (apply!113 (+!167 lt!67216 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67207) (apply!113 lt!67216 lt!67207))))

(assert (=> d!39621 true))

(declare-fun _$34!963 () Unit!4055)

(assert (=> d!39621 (= (choose!799 lt!67216 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67207) _$34!963)))

(declare-fun bs!5418 () Bool)

(assert (= bs!5418 d!39621))

(assert (=> bs!5418 m!152263))

(assert (=> bs!5418 m!152263))

(assert (=> bs!5418 m!152265))

(assert (=> bs!5418 m!152269))

(assert (=> d!39403 d!39621))

(assert (=> d!39403 d!39385))

(assert (=> d!39403 d!39393))

(declare-fun d!39623 () Bool)

(declare-fun e!84958 () Bool)

(assert (=> d!39623 e!84958))

(declare-fun res!62802 () Bool)

(assert (=> d!39623 (=> res!62802 e!84958)))

(declare-fun lt!67737 () Bool)

(assert (=> d!39623 (= res!62802 (not lt!67737))))

(declare-fun lt!67740 () Bool)

(assert (=> d!39623 (= lt!67737 lt!67740)))

(declare-fun lt!67739 () Unit!4055)

(declare-fun e!84957 () Unit!4055)

(assert (=> d!39623 (= lt!67739 e!84957)))

(declare-fun c!23998 () Bool)

(assert (=> d!39623 (= c!23998 lt!67740)))

(assert (=> d!39623 (= lt!67740 (containsKey!172 (toList!865 lt!67216) lt!67207))))

(assert (=> d!39623 (= (contains!886 lt!67216 lt!67207) lt!67737)))

(declare-fun b!130214 () Bool)

(declare-fun lt!67738 () Unit!4055)

(assert (=> b!130214 (= e!84957 lt!67738)))

(assert (=> b!130214 (= lt!67738 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67216) lt!67207))))

(assert (=> b!130214 (isDefined!122 (getValueByKey!168 (toList!865 lt!67216) lt!67207))))

(declare-fun b!130215 () Bool)

(declare-fun Unit!4082 () Unit!4055)

(assert (=> b!130215 (= e!84957 Unit!4082)))

(declare-fun b!130216 () Bool)

(assert (=> b!130216 (= e!84958 (isDefined!122 (getValueByKey!168 (toList!865 lt!67216) lt!67207)))))

(assert (= (and d!39623 c!23998) b!130214))

(assert (= (and d!39623 (not c!23998)) b!130215))

(assert (= (and d!39623 (not res!62802)) b!130216))

(declare-fun m!153375 () Bool)

(assert (=> d!39623 m!153375))

(declare-fun m!153377 () Bool)

(assert (=> b!130214 m!153377))

(assert (=> b!130214 m!152607))

(assert (=> b!130214 m!152607))

(declare-fun m!153379 () Bool)

(assert (=> b!130214 m!153379))

(assert (=> b!130216 m!152607))

(assert (=> b!130216 m!152607))

(assert (=> b!130216 m!153379))

(assert (=> d!39403 d!39623))

(assert (=> d!39403 d!39405))

(declare-fun d!39625 () Bool)

(declare-fun res!62803 () Bool)

(declare-fun e!84959 () Bool)

(assert (=> d!39625 (=> res!62803 e!84959)))

(assert (=> d!39625 (= res!62803 (and ((_ is Cons!1724) (t!6139 (toList!865 lt!67149))) (= (_1!1306 (h!2328 (t!6139 (toList!865 lt!67149)))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(assert (=> d!39625 (= (containsKey!172 (t!6139 (toList!865 lt!67149)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) e!84959)))

(declare-fun b!130217 () Bool)

(declare-fun e!84960 () Bool)

(assert (=> b!130217 (= e!84959 e!84960)))

(declare-fun res!62804 () Bool)

(assert (=> b!130217 (=> (not res!62804) (not e!84960))))

(assert (=> b!130217 (= res!62804 (and (or (not ((_ is Cons!1724) (t!6139 (toList!865 lt!67149)))) (bvsle (_1!1306 (h!2328 (t!6139 (toList!865 lt!67149)))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))) ((_ is Cons!1724) (t!6139 (toList!865 lt!67149))) (bvslt (_1!1306 (h!2328 (t!6139 (toList!865 lt!67149)))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(declare-fun b!130218 () Bool)

(assert (=> b!130218 (= e!84960 (containsKey!172 (t!6139 (t!6139 (toList!865 lt!67149))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (= (and d!39625 (not res!62803)) b!130217))

(assert (= (and b!130217 res!62804) b!130218))

(assert (=> b!130218 m!152209))

(declare-fun m!153381 () Bool)

(assert (=> b!130218 m!153381))

(assert (=> b!129842 d!39625))

(declare-fun d!39627 () Bool)

(declare-fun res!62805 () Bool)

(declare-fun e!84963 () Bool)

(assert (=> d!39627 (=> res!62805 e!84963)))

(assert (=> d!39627 (= res!62805 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2508 (_keys!4565 newMap!16))))))

(assert (=> d!39627 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4565 newMap!16) (mask!7102 newMap!16)) e!84963)))

(declare-fun b!130219 () Bool)

(declare-fun e!84962 () Bool)

(declare-fun e!84961 () Bool)

(assert (=> b!130219 (= e!84962 e!84961)))

(declare-fun lt!67743 () (_ BitVec 64))

(assert (=> b!130219 (= lt!67743 (select (arr!2242 (_keys!4565 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!67741 () Unit!4055)

(assert (=> b!130219 (= lt!67741 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4565 newMap!16) lt!67743 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!130219 (arrayContainsKey!0 (_keys!4565 newMap!16) lt!67743 #b00000000000000000000000000000000)))

(declare-fun lt!67742 () Unit!4055)

(assert (=> b!130219 (= lt!67742 lt!67741)))

(declare-fun res!62806 () Bool)

(assert (=> b!130219 (= res!62806 (= (seekEntryOrOpen!0 (select (arr!2242 (_keys!4565 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!4565 newMap!16) (mask!7102 newMap!16)) (Found!282 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!130219 (=> (not res!62806) (not e!84961))))

(declare-fun b!130220 () Bool)

(declare-fun call!14170 () Bool)

(assert (=> b!130220 (= e!84961 call!14170)))

(declare-fun b!130221 () Bool)

(assert (=> b!130221 (= e!84963 e!84962)))

(declare-fun c!23999 () Bool)

(assert (=> b!130221 (= c!23999 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!14167 () Bool)

(assert (=> bm!14167 (= call!14170 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(declare-fun b!130222 () Bool)

(assert (=> b!130222 (= e!84962 call!14170)))

(assert (= (and d!39627 (not res!62805)) b!130221))

(assert (= (and b!130221 c!23999) b!130219))

(assert (= (and b!130221 (not c!23999)) b!130222))

(assert (= (and b!130219 res!62806) b!130220))

(assert (= (or b!130220 b!130222) bm!14167))

(declare-fun m!153383 () Bool)

(assert (=> b!130219 m!153383))

(declare-fun m!153385 () Bool)

(assert (=> b!130219 m!153385))

(declare-fun m!153387 () Bool)

(assert (=> b!130219 m!153387))

(assert (=> b!130219 m!153383))

(declare-fun m!153389 () Bool)

(assert (=> b!130219 m!153389))

(assert (=> b!130221 m!153383))

(assert (=> b!130221 m!153383))

(declare-fun m!153391 () Bool)

(assert (=> b!130221 m!153391))

(declare-fun m!153393 () Bool)

(assert (=> bm!14167 m!153393))

(assert (=> bm!14128 d!39627))

(declare-fun d!39629 () Bool)

(declare-fun e!84964 () Bool)

(assert (=> d!39629 e!84964))

(declare-fun res!62808 () Bool)

(assert (=> d!39629 (=> (not res!62808) (not e!84964))))

(declare-fun lt!67747 () ListLongMap!1699)

(assert (=> d!39629 (= res!62808 (contains!886 lt!67747 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!67746 () List!1728)

(assert (=> d!39629 (= lt!67747 (ListLongMap!1700 lt!67746))))

(declare-fun lt!67745 () Unit!4055)

(declare-fun lt!67744 () Unit!4055)

(assert (=> d!39629 (= lt!67745 lt!67744)))

(assert (=> d!39629 (= (getValueByKey!168 lt!67746 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!173 (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39629 (= lt!67744 (lemmaContainsTupThenGetReturnValue!85 lt!67746 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39629 (= lt!67746 (insertStrictlySorted!87 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39629 (= (+!167 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!67747)))

(declare-fun b!130223 () Bool)

(declare-fun res!62807 () Bool)

(assert (=> b!130223 (=> (not res!62807) (not e!84964))))

(assert (=> b!130223 (= res!62807 (= (getValueByKey!168 (toList!865 lt!67747) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!173 (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!130224 () Bool)

(assert (=> b!130224 (= e!84964 (contains!887 (toList!865 lt!67747) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!39629 res!62808) b!130223))

(assert (= (and b!130223 res!62807) b!130224))

(declare-fun m!153395 () Bool)

(assert (=> d!39629 m!153395))

(declare-fun m!153397 () Bool)

(assert (=> d!39629 m!153397))

(declare-fun m!153399 () Bool)

(assert (=> d!39629 m!153399))

(declare-fun m!153401 () Bool)

(assert (=> d!39629 m!153401))

(declare-fun m!153403 () Bool)

(assert (=> b!130223 m!153403))

(declare-fun m!153405 () Bool)

(assert (=> b!130224 m!153405))

(assert (=> d!39417 d!39629))

(assert (=> d!39417 d!39355))

(declare-fun d!39631 () Bool)

(assert (=> d!39631 (= (+!167 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67295 (zeroValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(assert (=> d!39631 true))

(declare-fun _$8!115 () Unit!4055)

(assert (=> d!39631 (= (choose!801 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) lt!67295 (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2824 newMap!16)) _$8!115)))

(declare-fun bs!5419 () Bool)

(assert (= bs!5419 d!39631))

(assert (=> bs!5419 m!152253))

(assert (=> bs!5419 m!152253))

(assert (=> bs!5419 m!152719))

(assert (=> bs!5419 m!152207))

(assert (=> bs!5419 m!152715))

(assert (=> d!39417 d!39631))

(declare-fun b!130225 () Bool)

(declare-fun e!84970 () Bool)

(declare-fun e!84965 () Bool)

(assert (=> b!130225 (= e!84970 e!84965)))

(declare-fun res!62813 () Bool)

(declare-fun call!14176 () Bool)

(assert (=> b!130225 (= res!62813 call!14176)))

(assert (=> b!130225 (=> (not res!62813) (not e!84965))))

(declare-fun b!130226 () Bool)

(declare-fun e!84974 () Bool)

(assert (=> b!130226 (= e!84974 e!84970)))

(declare-fun c!24005 () Bool)

(assert (=> b!130226 (= c!24005 (not (= (bvand lt!67295 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!24002 () Bool)

(declare-fun call!14174 () ListLongMap!1699)

(declare-fun call!14172 () ListLongMap!1699)

(declare-fun bm!14168 () Bool)

(declare-fun c!24003 () Bool)

(declare-fun call!14171 () ListLongMap!1699)

(declare-fun call!14173 () ListLongMap!1699)

(assert (=> bm!14168 (= call!14171 (+!167 (ite c!24002 call!14173 (ite c!24003 call!14172 call!14174)) (ite (or c!24002 c!24003) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!130227 () Bool)

(declare-fun e!84971 () Bool)

(declare-fun call!14175 () Bool)

(assert (=> b!130227 (= e!84971 (not call!14175))))

(declare-fun b!130228 () Bool)

(declare-fun res!62817 () Bool)

(assert (=> b!130228 (=> (not res!62817) (not e!84974))))

(assert (=> b!130228 (= res!62817 e!84971)))

(declare-fun c!24004 () Bool)

(assert (=> b!130228 (= c!24004 (not (= (bvand lt!67295 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!14169 () Bool)

(declare-fun call!14177 () ListLongMap!1699)

(assert (=> bm!14169 (= call!14177 call!14171)))

(declare-fun b!130229 () Bool)

(declare-fun e!84969 () Bool)

(declare-fun lt!67759 () ListLongMap!1699)

(assert (=> b!130229 (= e!84969 (= (apply!113 lt!67759 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) (get!1469 (select (arr!2243 (_values!2807 newMap!16)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!130229 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2509 (_values!2807 newMap!16))))))

(assert (=> b!130229 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!130230 () Bool)

(declare-fun e!84977 () Unit!4055)

(declare-fun Unit!4083 () Unit!4055)

(assert (=> b!130230 (= e!84977 Unit!4083)))

(declare-fun b!130231 () Bool)

(declare-fun res!62812 () Bool)

(assert (=> b!130231 (=> (not res!62812) (not e!84974))))

(declare-fun e!84968 () Bool)

(assert (=> b!130231 (= res!62812 e!84968)))

(declare-fun res!62815 () Bool)

(assert (=> b!130231 (=> res!62815 e!84968)))

(declare-fun e!84973 () Bool)

(assert (=> b!130231 (= res!62815 (not e!84973))))

(declare-fun res!62810 () Bool)

(assert (=> b!130231 (=> (not res!62810) (not e!84973))))

(assert (=> b!130231 (= res!62810 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!130232 () Bool)

(declare-fun e!84975 () ListLongMap!1699)

(assert (=> b!130232 (= e!84975 call!14177)))

(declare-fun bm!14170 () Bool)

(assert (=> bm!14170 (= call!14172 call!14173)))

(declare-fun b!130233 () Bool)

(assert (=> b!130233 (= e!84968 e!84969)))

(declare-fun res!62809 () Bool)

(assert (=> b!130233 (=> (not res!62809) (not e!84969))))

(assert (=> b!130233 (= res!62809 (contains!886 lt!67759 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!130233 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun bm!14171 () Bool)

(assert (=> bm!14171 (= call!14173 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67295 (zeroValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun b!130234 () Bool)

(declare-fun e!84972 () Bool)

(assert (=> b!130234 (= e!84971 e!84972)))

(declare-fun res!62811 () Bool)

(assert (=> b!130234 (= res!62811 call!14175)))

(assert (=> b!130234 (=> (not res!62811) (not e!84972))))

(declare-fun bm!14172 () Bool)

(assert (=> bm!14172 (= call!14175 (contains!886 lt!67759 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!39633 () Bool)

(assert (=> d!39633 e!84974))

(declare-fun res!62816 () Bool)

(assert (=> d!39633 (=> (not res!62816) (not e!84974))))

(assert (=> d!39633 (= res!62816 (or (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))))

(declare-fun lt!67757 () ListLongMap!1699)

(assert (=> d!39633 (= lt!67759 lt!67757)))

(declare-fun lt!67754 () Unit!4055)

(assert (=> d!39633 (= lt!67754 e!84977)))

(declare-fun c!24001 () Bool)

(declare-fun e!84967 () Bool)

(assert (=> d!39633 (= c!24001 e!84967)))

(declare-fun res!62814 () Bool)

(assert (=> d!39633 (=> (not res!62814) (not e!84967))))

(assert (=> d!39633 (= res!62814 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun e!84976 () ListLongMap!1699)

(assert (=> d!39633 (= lt!67757 e!84976)))

(assert (=> d!39633 (= c!24002 (and (not (= (bvand lt!67295 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!67295 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39633 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39633 (= (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67295 (zeroValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) lt!67759)))

(declare-fun b!130235 () Bool)

(declare-fun e!84966 () ListLongMap!1699)

(assert (=> b!130235 (= e!84976 e!84966)))

(assert (=> b!130235 (= c!24003 (and (not (= (bvand lt!67295 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand lt!67295 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!130236 () Bool)

(assert (=> b!130236 (= e!84967 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!14173 () Bool)

(assert (=> bm!14173 (= call!14176 (contains!886 lt!67759 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130237 () Bool)

(declare-fun c!24000 () Bool)

(assert (=> b!130237 (= c!24000 (and (not (= (bvand lt!67295 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand lt!67295 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!130237 (= e!84966 e!84975)))

(declare-fun b!130238 () Bool)

(declare-fun lt!67762 () Unit!4055)

(assert (=> b!130238 (= e!84977 lt!67762)))

(declare-fun lt!67758 () ListLongMap!1699)

(assert (=> b!130238 (= lt!67758 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67295 (zeroValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67767 () (_ BitVec 64))

(assert (=> b!130238 (= lt!67767 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67764 () (_ BitVec 64))

(assert (=> b!130238 (= lt!67764 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67760 () Unit!4055)

(assert (=> b!130238 (= lt!67760 (addStillContains!89 lt!67758 lt!67767 (zeroValue!2683 newMap!16) lt!67764))))

(assert (=> b!130238 (contains!886 (+!167 lt!67758 (tuple2!2593 lt!67767 (zeroValue!2683 newMap!16))) lt!67764)))

(declare-fun lt!67748 () Unit!4055)

(assert (=> b!130238 (= lt!67748 lt!67760)))

(declare-fun lt!67761 () ListLongMap!1699)

(assert (=> b!130238 (= lt!67761 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67295 (zeroValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67769 () (_ BitVec 64))

(assert (=> b!130238 (= lt!67769 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67752 () (_ BitVec 64))

(assert (=> b!130238 (= lt!67752 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67755 () Unit!4055)

(assert (=> b!130238 (= lt!67755 (addApplyDifferent!89 lt!67761 lt!67769 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) lt!67752))))

(assert (=> b!130238 (= (apply!113 (+!167 lt!67761 (tuple2!2593 lt!67769 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!67752) (apply!113 lt!67761 lt!67752))))

(declare-fun lt!67766 () Unit!4055)

(assert (=> b!130238 (= lt!67766 lt!67755)))

(declare-fun lt!67768 () ListLongMap!1699)

(assert (=> b!130238 (= lt!67768 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67295 (zeroValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67753 () (_ BitVec 64))

(assert (=> b!130238 (= lt!67753 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67750 () (_ BitVec 64))

(assert (=> b!130238 (= lt!67750 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67749 () Unit!4055)

(assert (=> b!130238 (= lt!67749 (addApplyDifferent!89 lt!67768 lt!67753 (zeroValue!2683 newMap!16) lt!67750))))

(assert (=> b!130238 (= (apply!113 (+!167 lt!67768 (tuple2!2593 lt!67753 (zeroValue!2683 newMap!16))) lt!67750) (apply!113 lt!67768 lt!67750))))

(declare-fun lt!67751 () Unit!4055)

(assert (=> b!130238 (= lt!67751 lt!67749)))

(declare-fun lt!67756 () ListLongMap!1699)

(assert (=> b!130238 (= lt!67756 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67295 (zeroValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67765 () (_ BitVec 64))

(assert (=> b!130238 (= lt!67765 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67763 () (_ BitVec 64))

(assert (=> b!130238 (= lt!67763 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!130238 (= lt!67762 (addApplyDifferent!89 lt!67756 lt!67765 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) lt!67763))))

(assert (=> b!130238 (= (apply!113 (+!167 lt!67756 (tuple2!2593 lt!67765 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!67763) (apply!113 lt!67756 lt!67763))))

(declare-fun b!130239 () Bool)

(assert (=> b!130239 (= e!84973 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!130240 () Bool)

(assert (=> b!130240 (= e!84966 call!14177)))

(declare-fun b!130241 () Bool)

(assert (=> b!130241 (= e!84970 (not call!14176))))

(declare-fun b!130242 () Bool)

(assert (=> b!130242 (= e!84965 (= (apply!113 lt!67759 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!130243 () Bool)

(assert (=> b!130243 (= e!84972 (= (apply!113 lt!67759 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2683 newMap!16)))))

(declare-fun b!130244 () Bool)

(assert (=> b!130244 (= e!84976 (+!167 call!14171 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!130245 () Bool)

(assert (=> b!130245 (= e!84975 call!14174)))

(declare-fun bm!14174 () Bool)

(assert (=> bm!14174 (= call!14174 call!14172)))

(assert (= (and d!39633 c!24002) b!130244))

(assert (= (and d!39633 (not c!24002)) b!130235))

(assert (= (and b!130235 c!24003) b!130240))

(assert (= (and b!130235 (not c!24003)) b!130237))

(assert (= (and b!130237 c!24000) b!130232))

(assert (= (and b!130237 (not c!24000)) b!130245))

(assert (= (or b!130232 b!130245) bm!14174))

(assert (= (or b!130240 bm!14174) bm!14170))

(assert (= (or b!130240 b!130232) bm!14169))

(assert (= (or b!130244 bm!14170) bm!14171))

(assert (= (or b!130244 bm!14169) bm!14168))

(assert (= (and d!39633 res!62814) b!130236))

(assert (= (and d!39633 c!24001) b!130238))

(assert (= (and d!39633 (not c!24001)) b!130230))

(assert (= (and d!39633 res!62816) b!130231))

(assert (= (and b!130231 res!62810) b!130239))

(assert (= (and b!130231 (not res!62815)) b!130233))

(assert (= (and b!130233 res!62809) b!130229))

(assert (= (and b!130231 res!62812) b!130228))

(assert (= (and b!130228 c!24004) b!130234))

(assert (= (and b!130228 (not c!24004)) b!130227))

(assert (= (and b!130234 res!62811) b!130243))

(assert (= (or b!130234 b!130227) bm!14172))

(assert (= (and b!130228 res!62817) b!130226))

(assert (= (and b!130226 c!24005) b!130225))

(assert (= (and b!130226 (not c!24005)) b!130241))

(assert (= (and b!130225 res!62813) b!130242))

(assert (= (or b!130225 b!130241) bm!14173))

(declare-fun b_lambda!5811 () Bool)

(assert (=> (not b_lambda!5811) (not b!130229)))

(assert (=> b!130229 t!6146))

(declare-fun b_and!8077 () Bool)

(assert (= b_and!8073 (and (=> t!6146 result!3933) b_and!8077)))

(assert (=> b!130229 t!6148))

(declare-fun b_and!8079 () Bool)

(assert (= b_and!8075 (and (=> t!6148 result!3935) b_and!8079)))

(assert (=> b!130239 m!152429))

(assert (=> b!130239 m!152429))

(assert (=> b!130239 m!152431))

(declare-fun m!153407 () Bool)

(assert (=> bm!14168 m!153407))

(assert (=> d!39633 m!152393))

(assert (=> b!130238 m!152429))

(declare-fun m!153409 () Bool)

(assert (=> b!130238 m!153409))

(declare-fun m!153411 () Bool)

(assert (=> b!130238 m!153411))

(declare-fun m!153413 () Bool)

(assert (=> b!130238 m!153413))

(declare-fun m!153415 () Bool)

(assert (=> b!130238 m!153415))

(declare-fun m!153417 () Bool)

(assert (=> b!130238 m!153417))

(assert (=> b!130238 m!153409))

(declare-fun m!153419 () Bool)

(assert (=> b!130238 m!153419))

(declare-fun m!153421 () Bool)

(assert (=> b!130238 m!153421))

(assert (=> b!130238 m!152207))

(declare-fun m!153423 () Bool)

(assert (=> b!130238 m!153423))

(declare-fun m!153425 () Bool)

(assert (=> b!130238 m!153425))

(assert (=> b!130238 m!153411))

(declare-fun m!153427 () Bool)

(assert (=> b!130238 m!153427))

(declare-fun m!153429 () Bool)

(assert (=> b!130238 m!153429))

(assert (=> b!130238 m!152207))

(declare-fun m!153431 () Bool)

(assert (=> b!130238 m!153431))

(declare-fun m!153433 () Bool)

(assert (=> b!130238 m!153433))

(declare-fun m!153435 () Bool)

(assert (=> b!130238 m!153435))

(assert (=> b!130238 m!152207))

(declare-fun m!153437 () Bool)

(assert (=> b!130238 m!153437))

(assert (=> b!130238 m!153435))

(declare-fun m!153439 () Bool)

(assert (=> b!130238 m!153439))

(assert (=> b!130238 m!153427))

(assert (=> b!130233 m!152429))

(assert (=> b!130233 m!152429))

(declare-fun m!153441 () Bool)

(assert (=> b!130233 m!153441))

(declare-fun m!153443 () Bool)

(assert (=> bm!14172 m!153443))

(assert (=> b!130229 m!152429))

(assert (=> b!130229 m!152471))

(assert (=> b!130229 m!152473))

(assert (=> b!130229 m!152471))

(assert (=> b!130229 m!152475))

(assert (=> b!130229 m!152473))

(assert (=> b!130229 m!152429))

(declare-fun m!153445 () Bool)

(assert (=> b!130229 m!153445))

(declare-fun m!153447 () Bool)

(assert (=> b!130242 m!153447))

(declare-fun m!153449 () Bool)

(assert (=> b!130243 m!153449))

(assert (=> bm!14171 m!152207))

(assert (=> bm!14171 m!153423))

(declare-fun m!153451 () Bool)

(assert (=> bm!14173 m!153451))

(assert (=> b!130236 m!152429))

(assert (=> b!130236 m!152429))

(assert (=> b!130236 m!152431))

(declare-fun m!153453 () Bool)

(assert (=> b!130244 m!153453))

(assert (=> d!39417 d!39633))

(assert (=> d!39417 d!39501))

(declare-fun b!130246 () Bool)

(declare-fun e!84983 () ListLongMap!1699)

(assert (=> b!130246 (= e!84983 (ListLongMap!1700 Nil!1725))))

(declare-fun b!130247 () Bool)

(declare-fun res!62821 () Bool)

(declare-fun e!84980 () Bool)

(assert (=> b!130247 (=> (not res!62821) (not e!84980))))

(declare-fun lt!67771 () ListLongMap!1699)

(assert (=> b!130247 (= res!62821 (not (contains!886 lt!67771 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!14175 () Bool)

(declare-fun call!14178 () ListLongMap!1699)

(assert (=> bm!14175 (= call!14178 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16)))) (mask!7102 newMap!16) (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) (zeroValue!2683 newMap!16) (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2824 newMap!16)))))

(declare-fun b!130248 () Bool)

(declare-fun e!84981 () Bool)

(declare-fun e!84978 () Bool)

(assert (=> b!130248 (= e!84981 e!84978)))

(assert (=> b!130248 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun res!62818 () Bool)

(assert (=> b!130248 (= res!62818 (contains!886 lt!67771 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!130248 (=> (not res!62818) (not e!84978))))

(declare-fun b!130249 () Bool)

(declare-fun e!84984 () ListLongMap!1699)

(assert (=> b!130249 (= e!84984 call!14178)))

(declare-fun b!130250 () Bool)

(declare-fun e!84982 () Bool)

(assert (=> b!130250 (= e!84981 e!84982)))

(declare-fun c!24007 () Bool)

(assert (=> b!130250 (= c!24007 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!130251 () Bool)

(assert (=> b!130251 (= e!84983 e!84984)))

(declare-fun c!24006 () Bool)

(assert (=> b!130251 (= c!24006 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!130252 () Bool)

(declare-fun lt!67773 () Unit!4055)

(declare-fun lt!67770 () Unit!4055)

(assert (=> b!130252 (= lt!67773 lt!67770)))

(declare-fun lt!67775 () (_ BitVec 64))

(declare-fun lt!67776 () ListLongMap!1699)

(declare-fun lt!67772 () (_ BitVec 64))

(declare-fun lt!67774 () V!3459)

(assert (=> b!130252 (not (contains!886 (+!167 lt!67776 (tuple2!2593 lt!67775 lt!67774)) lt!67772))))

(assert (=> b!130252 (= lt!67770 (addStillNotContains!60 lt!67776 lt!67775 lt!67774 lt!67772))))

(assert (=> b!130252 (= lt!67772 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!130252 (= lt!67774 (get!1469 (select (arr!2243 (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!130252 (= lt!67775 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!130252 (= lt!67776 call!14178)))

(assert (=> b!130252 (= e!84984 (+!167 call!14178 (tuple2!2593 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) (get!1469 (select (arr!2243 (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!130253 () Bool)

(assert (=> b!130253 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(assert (=> b!130253 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2509 (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16)))))))))

(assert (=> b!130253 (= e!84978 (= (apply!113 lt!67771 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) (get!1469 (select (arr!2243 (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!130254 () Bool)

(assert (=> b!130254 (= e!84980 e!84981)))

(declare-fun c!24008 () Bool)

(declare-fun e!84979 () Bool)

(assert (=> b!130254 (= c!24008 e!84979)))

(declare-fun res!62819 () Bool)

(assert (=> b!130254 (=> (not res!62819) (not e!84979))))

(assert (=> b!130254 (= res!62819 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun d!39635 () Bool)

(assert (=> d!39635 e!84980))

(declare-fun res!62820 () Bool)

(assert (=> d!39635 (=> (not res!62820) (not e!84980))))

(assert (=> d!39635 (= res!62820 (not (contains!886 lt!67771 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39635 (= lt!67771 e!84983)))

(declare-fun c!24009 () Bool)

(assert (=> d!39635 (= c!24009 (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(assert (=> d!39635 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39635 (= (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16)))) (mask!7102 newMap!16) (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) (zeroValue!2683 newMap!16) (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) lt!67771)))

(declare-fun b!130255 () Bool)

(assert (=> b!130255 (= e!84979 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!130255 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!130256 () Bool)

(assert (=> b!130256 (= e!84982 (= lt!67771 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16)))) (mask!7102 newMap!16) (ite c!23852 (ite c!23844 (extraKeys!2597 newMap!16) lt!67295) (extraKeys!2597 newMap!16)) (zeroValue!2683 newMap!16) (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!2824 newMap!16))))))

(declare-fun b!130257 () Bool)

(assert (=> b!130257 (= e!84982 (isEmpty!408 lt!67771))))

(assert (= (and d!39635 c!24009) b!130246))

(assert (= (and d!39635 (not c!24009)) b!130251))

(assert (= (and b!130251 c!24006) b!130252))

(assert (= (and b!130251 (not c!24006)) b!130249))

(assert (= (or b!130252 b!130249) bm!14175))

(assert (= (and d!39635 res!62820) b!130247))

(assert (= (and b!130247 res!62821) b!130254))

(assert (= (and b!130254 res!62819) b!130255))

(assert (= (and b!130254 c!24008) b!130248))

(assert (= (and b!130254 (not c!24008)) b!130250))

(assert (= (and b!130248 res!62818) b!130253))

(assert (= (and b!130250 c!24007) b!130256))

(assert (= (and b!130250 (not c!24007)) b!130257))

(declare-fun b_lambda!5813 () Bool)

(assert (=> (not b_lambda!5813) (not b!130252)))

(assert (=> b!130252 t!6146))

(declare-fun b_and!8081 () Bool)

(assert (= b_and!8077 (and (=> t!6146 result!3933) b_and!8081)))

(assert (=> b!130252 t!6148))

(declare-fun b_and!8083 () Bool)

(assert (= b_and!8079 (and (=> t!6148 result!3935) b_and!8083)))

(declare-fun b_lambda!5815 () Bool)

(assert (=> (not b_lambda!5815) (not b!130253)))

(assert (=> b!130253 t!6146))

(declare-fun b_and!8085 () Bool)

(assert (= b_and!8081 (and (=> t!6146 result!3933) b_and!8085)))

(assert (=> b!130253 t!6148))

(declare-fun b_and!8087 () Bool)

(assert (= b_and!8083 (and (=> t!6148 result!3935) b_and!8087)))

(declare-fun m!153455 () Bool)

(assert (=> b!130257 m!153455))

(assert (=> b!130251 m!152429))

(assert (=> b!130251 m!152429))

(assert (=> b!130251 m!152431))

(declare-fun m!153457 () Bool)

(assert (=> b!130252 m!153457))

(assert (=> b!130252 m!152429))

(assert (=> b!130252 m!152565))

(assert (=> b!130252 m!152471))

(declare-fun m!153459 () Bool)

(assert (=> b!130252 m!153459))

(assert (=> b!130252 m!152565))

(assert (=> b!130252 m!152471))

(assert (=> b!130252 m!152567))

(declare-fun m!153461 () Bool)

(assert (=> b!130252 m!153461))

(declare-fun m!153463 () Bool)

(assert (=> b!130252 m!153463))

(assert (=> b!130252 m!153461))

(assert (=> b!130253 m!152429))

(assert (=> b!130253 m!152565))

(assert (=> b!130253 m!152471))

(assert (=> b!130253 m!152565))

(assert (=> b!130253 m!152471))

(assert (=> b!130253 m!152567))

(assert (=> b!130253 m!152429))

(declare-fun m!153465 () Bool)

(assert (=> b!130253 m!153465))

(declare-fun m!153467 () Bool)

(assert (=> d!39635 m!153467))

(assert (=> d!39635 m!152393))

(declare-fun m!153469 () Bool)

(assert (=> b!130247 m!153469))

(assert (=> b!130255 m!152429))

(assert (=> b!130255 m!152429))

(assert (=> b!130255 m!152431))

(declare-fun m!153471 () Bool)

(assert (=> b!130256 m!153471))

(assert (=> bm!14175 m!153471))

(assert (=> b!130248 m!152429))

(assert (=> b!130248 m!152429))

(declare-fun m!153473 () Bool)

(assert (=> b!130248 m!153473))

(assert (=> bm!14119 d!39635))

(declare-fun d!39637 () Bool)

(assert (=> d!39637 (= (isDefined!122 (getValueByKey!168 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))) (not (isEmpty!407 (getValueByKey!168 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))))

(declare-fun bs!5420 () Bool)

(assert (= bs!5420 d!39637))

(assert (=> bs!5420 m!152503))

(declare-fun m!153475 () Bool)

(assert (=> bs!5420 m!153475))

(assert (=> b!129752 d!39637))

(declare-fun b!130260 () Bool)

(declare-fun e!84986 () Option!174)

(assert (=> b!130260 (= e!84986 (getValueByKey!168 (t!6139 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun b!130258 () Bool)

(declare-fun e!84985 () Option!174)

(assert (=> b!130258 (= e!84985 (Some!173 (_2!1306 (h!2328 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))))))

(declare-fun b!130259 () Bool)

(assert (=> b!130259 (= e!84985 e!84986)))

(declare-fun c!24011 () Bool)

(assert (=> b!130259 (= c!24011 (and ((_ is Cons!1724) (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))) (not (= (_1!1306 (h!2328 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))))

(declare-fun b!130261 () Bool)

(assert (=> b!130261 (= e!84986 None!172)))

(declare-fun d!39639 () Bool)

(declare-fun c!24010 () Bool)

(assert (=> d!39639 (= c!24010 (and ((_ is Cons!1724) (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))) (= (_1!1306 (h!2328 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(assert (=> d!39639 (= (getValueByKey!168 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) e!84985)))

(assert (= (and d!39639 c!24010) b!130258))

(assert (= (and d!39639 (not c!24010)) b!130259))

(assert (= (and b!130259 c!24011) b!130260))

(assert (= (and b!130259 (not c!24011)) b!130261))

(assert (=> b!130260 m!152209))

(declare-fun m!153477 () Bool)

(assert (=> b!130260 m!153477))

(assert (=> b!129752 d!39639))

(declare-fun d!39641 () Bool)

(declare-fun res!62822 () Bool)

(declare-fun e!84987 () Bool)

(assert (=> d!39641 (=> res!62822 e!84987)))

(assert (=> d!39641 (= res!62822 (and ((_ is Cons!1724) (toList!865 lt!67214)) (= (_1!1306 (h!2328 (toList!865 lt!67214))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (=> d!39641 (= (containsKey!172 (toList!865 lt!67214) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) e!84987)))

(declare-fun b!130262 () Bool)

(declare-fun e!84988 () Bool)

(assert (=> b!130262 (= e!84987 e!84988)))

(declare-fun res!62823 () Bool)

(assert (=> b!130262 (=> (not res!62823) (not e!84988))))

(assert (=> b!130262 (= res!62823 (and (or (not ((_ is Cons!1724) (toList!865 lt!67214))) (bvsle (_1!1306 (h!2328 (toList!865 lt!67214))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))) ((_ is Cons!1724) (toList!865 lt!67214)) (bvslt (_1!1306 (h!2328 (toList!865 lt!67214))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun b!130263 () Bool)

(assert (=> b!130263 (= e!84988 (containsKey!172 (t!6139 (toList!865 lt!67214)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (= (and d!39641 (not res!62822)) b!130262))

(assert (= (and b!130262 res!62823) b!130263))

(assert (=> b!130263 m!152255))

(declare-fun m!153479 () Bool)

(assert (=> b!130263 m!153479))

(assert (=> d!39353 d!39641))

(declare-fun b!130264 () Bool)

(declare-fun e!84989 () (_ BitVec 32))

(declare-fun e!84990 () (_ BitVec 32))

(assert (=> b!130264 (= e!84989 e!84990)))

(declare-fun c!24012 () Bool)

(assert (=> b!130264 (= c!24012 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000)))))

(declare-fun d!39643 () Bool)

(declare-fun lt!67777 () (_ BitVec 32))

(assert (=> d!39643 (and (bvsge lt!67777 #b00000000000000000000000000000000) (bvsle lt!67777 (bvsub (size!2508 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000)))))

(assert (=> d!39643 (= lt!67777 e!84989)))

(declare-fun c!24013 () Bool)

(assert (=> d!39643 (= c!24013 (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 (_2!1307 lt!67308)))))))

(assert (=> d!39643 (and (bvsle #b00000000000000000000000000000000 (size!2508 (_keys!4565 (_2!1307 lt!67308)))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2508 (_keys!4565 (_2!1307 lt!67308))) (size!2508 (_keys!4565 (_2!1307 lt!67308)))))))

(assert (=> d!39643 (= (arrayCountValidKeys!0 (_keys!4565 (_2!1307 lt!67308)) #b00000000000000000000000000000000 (size!2508 (_keys!4565 (_2!1307 lt!67308)))) lt!67777)))

(declare-fun b!130265 () Bool)

(declare-fun call!14179 () (_ BitVec 32))

(assert (=> b!130265 (= e!84990 call!14179)))

(declare-fun b!130266 () Bool)

(assert (=> b!130266 (= e!84989 #b00000000000000000000000000000000)))

(declare-fun bm!14176 () Bool)

(assert (=> bm!14176 (= call!14179 (arrayCountValidKeys!0 (_keys!4565 (_2!1307 lt!67308)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2508 (_keys!4565 (_2!1307 lt!67308)))))))

(declare-fun b!130267 () Bool)

(assert (=> b!130267 (= e!84990 (bvadd #b00000000000000000000000000000001 call!14179))))

(assert (= (and d!39643 c!24013) b!130266))

(assert (= (and d!39643 (not c!24013)) b!130264))

(assert (= (and b!130264 c!24012) b!130267))

(assert (= (and b!130264 (not c!24012)) b!130265))

(assert (= (or b!130267 b!130265) bm!14176))

(assert (=> b!130264 m!153071))

(assert (=> b!130264 m!153071))

(assert (=> b!130264 m!153079))

(declare-fun m!153481 () Bool)

(assert (=> bm!14176 m!153481))

(assert (=> b!129949 d!39643))

(declare-fun d!39645 () Bool)

(assert (=> d!39645 (= (get!1472 (getValueByKey!168 (toList!865 (+!167 lt!67211 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67218)) (v!3163 (getValueByKey!168 (toList!865 (+!167 lt!67211 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67218)))))

(assert (=> d!39409 d!39645))

(declare-fun b!130270 () Bool)

(declare-fun e!84992 () Option!174)

(assert (=> b!130270 (= e!84992 (getValueByKey!168 (t!6139 (toList!865 (+!167 lt!67211 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))) lt!67218))))

(declare-fun b!130268 () Bool)

(declare-fun e!84991 () Option!174)

(assert (=> b!130268 (= e!84991 (Some!173 (_2!1306 (h!2328 (toList!865 (+!167 lt!67211 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))))

(declare-fun b!130269 () Bool)

(assert (=> b!130269 (= e!84991 e!84992)))

(declare-fun c!24015 () Bool)

(assert (=> b!130269 (= c!24015 (and ((_ is Cons!1724) (toList!865 (+!167 lt!67211 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))) (not (= (_1!1306 (h!2328 (toList!865 (+!167 lt!67211 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))) lt!67218))))))

(declare-fun b!130271 () Bool)

(assert (=> b!130271 (= e!84992 None!172)))

(declare-fun d!39647 () Bool)

(declare-fun c!24014 () Bool)

(assert (=> d!39647 (= c!24014 (and ((_ is Cons!1724) (toList!865 (+!167 lt!67211 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))) (= (_1!1306 (h!2328 (toList!865 (+!167 lt!67211 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))) lt!67218)))))

(assert (=> d!39647 (= (getValueByKey!168 (toList!865 (+!167 lt!67211 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67218) e!84991)))

(assert (= (and d!39647 c!24014) b!130268))

(assert (= (and d!39647 (not c!24014)) b!130269))

(assert (= (and b!130269 c!24015) b!130270))

(assert (= (and b!130269 (not c!24015)) b!130271))

(declare-fun m!153483 () Bool)

(assert (=> b!130270 m!153483))

(assert (=> d!39409 d!39647))

(assert (=> d!39387 d!39409))

(assert (=> d!39387 d!39389))

(declare-fun d!39649 () Bool)

(declare-fun e!84994 () Bool)

(assert (=> d!39649 e!84994))

(declare-fun res!62824 () Bool)

(assert (=> d!39649 (=> res!62824 e!84994)))

(declare-fun lt!67778 () Bool)

(assert (=> d!39649 (= res!62824 (not lt!67778))))

(declare-fun lt!67781 () Bool)

(assert (=> d!39649 (= lt!67778 lt!67781)))

(declare-fun lt!67780 () Unit!4055)

(declare-fun e!84993 () Unit!4055)

(assert (=> d!39649 (= lt!67780 e!84993)))

(declare-fun c!24016 () Bool)

(assert (=> d!39649 (= c!24016 lt!67781)))

(assert (=> d!39649 (= lt!67781 (containsKey!172 (toList!865 lt!67211) lt!67218))))

(assert (=> d!39649 (= (contains!886 lt!67211 lt!67218) lt!67778)))

(declare-fun b!130272 () Bool)

(declare-fun lt!67779 () Unit!4055)

(assert (=> b!130272 (= e!84993 lt!67779)))

(assert (=> b!130272 (= lt!67779 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67211) lt!67218))))

(assert (=> b!130272 (isDefined!122 (getValueByKey!168 (toList!865 lt!67211) lt!67218))))

(declare-fun b!130273 () Bool)

(declare-fun Unit!4084 () Unit!4055)

(assert (=> b!130273 (= e!84993 Unit!4084)))

(declare-fun b!130274 () Bool)

(assert (=> b!130274 (= e!84994 (isDefined!122 (getValueByKey!168 (toList!865 lt!67211) lt!67218)))))

(assert (= (and d!39649 c!24016) b!130272))

(assert (= (and d!39649 (not c!24016)) b!130273))

(assert (= (and d!39649 (not res!62824)) b!130274))

(declare-fun m!153485 () Bool)

(assert (=> d!39649 m!153485))

(declare-fun m!153487 () Bool)

(assert (=> b!130272 m!153487))

(assert (=> b!130272 m!152615))

(assert (=> b!130272 m!152615))

(declare-fun m!153489 () Bool)

(assert (=> b!130272 m!153489))

(assert (=> b!130274 m!152615))

(assert (=> b!130274 m!152615))

(assert (=> b!130274 m!153489))

(assert (=> d!39387 d!39649))

(declare-fun d!39651 () Bool)

(assert (=> d!39651 (= (apply!113 (+!167 lt!67211 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67218) (apply!113 lt!67211 lt!67218))))

(assert (=> d!39651 true))

(declare-fun _$34!964 () Unit!4055)

(assert (=> d!39651 (= (choose!799 lt!67211 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67218) _$34!964)))

(declare-fun bs!5421 () Bool)

(assert (= bs!5421 d!39651))

(assert (=> bs!5421 m!152261))

(assert (=> bs!5421 m!152261))

(assert (=> bs!5421 m!152271))

(assert (=> bs!5421 m!152273))

(assert (=> d!39387 d!39651))

(assert (=> d!39387 d!39411))

(declare-fun d!39653 () Bool)

(assert (=> d!39653 (= (inRange!0 (index!3286 lt!67323) (mask!7102 newMap!16)) (and (bvsge (index!3286 lt!67323) #b00000000000000000000000000000000) (bvslt (index!3286 lt!67323) (bvadd (mask!7102 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> b!129677 d!39653))

(declare-fun d!39655 () Bool)

(declare-fun e!84995 () Bool)

(assert (=> d!39655 e!84995))

(declare-fun res!62826 () Bool)

(assert (=> d!39655 (=> (not res!62826) (not e!84995))))

(declare-fun lt!67785 () ListLongMap!1699)

(assert (=> d!39655 (= res!62826 (contains!886 lt!67785 (_1!1306 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16)))))))

(declare-fun lt!67784 () List!1728)

(assert (=> d!39655 (= lt!67785 (ListLongMap!1700 lt!67784))))

(declare-fun lt!67783 () Unit!4055)

(declare-fun lt!67782 () Unit!4055)

(assert (=> d!39655 (= lt!67783 lt!67782)))

(assert (=> d!39655 (= (getValueByKey!168 lt!67784 (_1!1306 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16)))))))

(assert (=> d!39655 (= lt!67782 (lemmaContainsTupThenGetReturnValue!85 lt!67784 (_1!1306 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16)))))))

(assert (=> d!39655 (= lt!67784 (insertStrictlySorted!87 (toList!865 lt!67400) (_1!1306 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16)))))))

(assert (=> d!39655 (= (+!167 lt!67400 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16))) lt!67785)))

(declare-fun b!130275 () Bool)

(declare-fun res!62825 () Bool)

(assert (=> b!130275 (=> (not res!62825) (not e!84995))))

(assert (=> b!130275 (= res!62825 (= (getValueByKey!168 (toList!865 lt!67785) (_1!1306 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16))))))))

(declare-fun b!130276 () Bool)

(assert (=> b!130276 (= e!84995 (contains!887 (toList!865 lt!67785) (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16))))))

(assert (= (and d!39655 res!62826) b!130275))

(assert (= (and b!130275 res!62825) b!130276))

(declare-fun m!153491 () Bool)

(assert (=> d!39655 m!153491))

(declare-fun m!153493 () Bool)

(assert (=> d!39655 m!153493))

(declare-fun m!153495 () Bool)

(assert (=> d!39655 m!153495))

(declare-fun m!153497 () Bool)

(assert (=> d!39655 m!153497))

(declare-fun m!153499 () Bool)

(assert (=> b!130275 m!153499))

(declare-fun m!153501 () Bool)

(assert (=> b!130276 m!153501))

(assert (=> b!129802 d!39655))

(declare-fun d!39657 () Bool)

(declare-fun e!84996 () Bool)

(assert (=> d!39657 e!84996))

(declare-fun res!62828 () Bool)

(assert (=> d!39657 (=> (not res!62828) (not e!84996))))

(declare-fun lt!67789 () ListLongMap!1699)

(assert (=> d!39657 (= res!62828 (contains!886 lt!67789 (_1!1306 (tuple2!2593 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))))

(declare-fun lt!67788 () List!1728)

(assert (=> d!39657 (= lt!67789 (ListLongMap!1700 lt!67788))))

(declare-fun lt!67787 () Unit!4055)

(declare-fun lt!67786 () Unit!4055)

(assert (=> d!39657 (= lt!67787 lt!67786)))

(assert (=> d!39657 (= (getValueByKey!168 lt!67788 (_1!1306 (tuple2!2593 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))) (Some!173 (_2!1306 (tuple2!2593 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))))

(assert (=> d!39657 (= lt!67786 (lemmaContainsTupThenGetReturnValue!85 lt!67788 (_1!1306 (tuple2!2593 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))) (_2!1306 (tuple2!2593 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))))

(assert (=> d!39657 (= lt!67788 (insertStrictlySorted!87 (toList!865 lt!67398) (_1!1306 (tuple2!2593 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))) (_2!1306 (tuple2!2593 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))))

(assert (=> d!39657 (= (+!167 lt!67398 (tuple2!2593 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))) lt!67789)))

(declare-fun b!130277 () Bool)

(declare-fun res!62827 () Bool)

(assert (=> b!130277 (=> (not res!62827) (not e!84996))))

(assert (=> b!130277 (= res!62827 (= (getValueByKey!168 (toList!865 lt!67789) (_1!1306 (tuple2!2593 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))) (Some!173 (_2!1306 (tuple2!2593 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))))))))

(declare-fun b!130278 () Bool)

(assert (=> b!130278 (= e!84996 (contains!887 (toList!865 lt!67789) (tuple2!2593 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))))))

(assert (= (and d!39657 res!62828) b!130277))

(assert (= (and b!130277 res!62827) b!130278))

(declare-fun m!153503 () Bool)

(assert (=> d!39657 m!153503))

(declare-fun m!153505 () Bool)

(assert (=> d!39657 m!153505))

(declare-fun m!153507 () Bool)

(assert (=> d!39657 m!153507))

(declare-fun m!153509 () Bool)

(assert (=> d!39657 m!153509))

(declare-fun m!153511 () Bool)

(assert (=> b!130277 m!153511))

(declare-fun m!153513 () Bool)

(assert (=> b!130278 m!153513))

(assert (=> b!129802 d!39657))

(declare-fun d!39659 () Bool)

(declare-fun e!84998 () Bool)

(assert (=> d!39659 e!84998))

(declare-fun res!62829 () Bool)

(assert (=> d!39659 (=> res!62829 e!84998)))

(declare-fun lt!67790 () Bool)

(assert (=> d!39659 (= res!62829 (not lt!67790))))

(declare-fun lt!67793 () Bool)

(assert (=> d!39659 (= lt!67790 lt!67793)))

(declare-fun lt!67792 () Unit!4055)

(declare-fun e!84997 () Unit!4055)

(assert (=> d!39659 (= lt!67792 e!84997)))

(declare-fun c!24017 () Bool)

(assert (=> d!39659 (= c!24017 lt!67793)))

(assert (=> d!39659 (= lt!67793 (containsKey!172 (toList!865 (+!167 lt!67400 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16)))) lt!67406))))

(assert (=> d!39659 (= (contains!886 (+!167 lt!67400 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16))) lt!67406) lt!67790)))

(declare-fun b!130279 () Bool)

(declare-fun lt!67791 () Unit!4055)

(assert (=> b!130279 (= e!84997 lt!67791)))

(assert (=> b!130279 (= lt!67791 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 (+!167 lt!67400 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16)))) lt!67406))))

(assert (=> b!130279 (isDefined!122 (getValueByKey!168 (toList!865 (+!167 lt!67400 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16)))) lt!67406))))

(declare-fun b!130280 () Bool)

(declare-fun Unit!4085 () Unit!4055)

(assert (=> b!130280 (= e!84997 Unit!4085)))

(declare-fun b!130281 () Bool)

(assert (=> b!130281 (= e!84998 (isDefined!122 (getValueByKey!168 (toList!865 (+!167 lt!67400 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16)))) lt!67406)))))

(assert (= (and d!39659 c!24017) b!130279))

(assert (= (and d!39659 (not c!24017)) b!130280))

(assert (= (and d!39659 (not res!62829)) b!130281))

(declare-fun m!153515 () Bool)

(assert (=> d!39659 m!153515))

(declare-fun m!153517 () Bool)

(assert (=> b!130279 m!153517))

(declare-fun m!153519 () Bool)

(assert (=> b!130279 m!153519))

(assert (=> b!130279 m!153519))

(declare-fun m!153521 () Bool)

(assert (=> b!130279 m!153521))

(assert (=> b!130281 m!153519))

(assert (=> b!130281 m!153519))

(assert (=> b!130281 m!153521))

(assert (=> b!129802 d!39659))

(declare-fun d!39661 () Bool)

(assert (=> d!39661 (= (apply!113 (+!167 lt!67403 (tuple2!2593 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))) lt!67394) (get!1472 (getValueByKey!168 (toList!865 (+!167 lt!67403 (tuple2!2593 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))) lt!67394)))))

(declare-fun bs!5422 () Bool)

(assert (= bs!5422 d!39661))

(declare-fun m!153523 () Bool)

(assert (=> bs!5422 m!153523))

(assert (=> bs!5422 m!153523))

(declare-fun m!153525 () Bool)

(assert (=> bs!5422 m!153525))

(assert (=> b!129802 d!39661))

(declare-fun d!39663 () Bool)

(assert (=> d!39663 (= (apply!113 (+!167 lt!67403 (tuple2!2593 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))) lt!67394) (apply!113 lt!67403 lt!67394))))

(declare-fun lt!67794 () Unit!4055)

(assert (=> d!39663 (= lt!67794 (choose!799 lt!67403 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) lt!67394))))

(declare-fun e!84999 () Bool)

(assert (=> d!39663 e!84999))

(declare-fun res!62830 () Bool)

(assert (=> d!39663 (=> (not res!62830) (not e!84999))))

(assert (=> d!39663 (= res!62830 (contains!886 lt!67403 lt!67394))))

(assert (=> d!39663 (= (addApplyDifferent!89 lt!67403 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) lt!67394) lt!67794)))

(declare-fun b!130282 () Bool)

(assert (=> b!130282 (= e!84999 (not (= lt!67394 lt!67411)))))

(assert (= (and d!39663 res!62830) b!130282))

(assert (=> d!39663 m!152531))

(assert (=> d!39663 m!152531))

(assert (=> d!39663 m!152533))

(assert (=> d!39663 m!152537))

(declare-fun m!153527 () Bool)

(assert (=> d!39663 m!153527))

(declare-fun m!153529 () Bool)

(assert (=> d!39663 m!153529))

(assert (=> b!129802 d!39663))

(declare-fun d!39665 () Bool)

(assert (=> d!39665 (= (apply!113 lt!67410 lt!67392) (get!1472 (getValueByKey!168 (toList!865 lt!67410) lt!67392)))))

(declare-fun bs!5423 () Bool)

(assert (= bs!5423 d!39665))

(declare-fun m!153531 () Bool)

(assert (=> bs!5423 m!153531))

(assert (=> bs!5423 m!153531))

(declare-fun m!153533 () Bool)

(assert (=> bs!5423 m!153533))

(assert (=> b!129802 d!39665))

(declare-fun d!39667 () Bool)

(assert (=> d!39667 (= (apply!113 lt!67403 lt!67394) (get!1472 (getValueByKey!168 (toList!865 lt!67403) lt!67394)))))

(declare-fun bs!5424 () Bool)

(assert (= bs!5424 d!39667))

(declare-fun m!153535 () Bool)

(assert (=> bs!5424 m!153535))

(assert (=> bs!5424 m!153535))

(declare-fun m!153537 () Bool)

(assert (=> bs!5424 m!153537))

(assert (=> b!129802 d!39667))

(declare-fun d!39669 () Bool)

(assert (=> d!39669 (contains!886 (+!167 lt!67400 (tuple2!2593 lt!67409 (zeroValue!2683 newMap!16))) lt!67406)))

(declare-fun lt!67795 () Unit!4055)

(assert (=> d!39669 (= lt!67795 (choose!800 lt!67400 lt!67409 (zeroValue!2683 newMap!16) lt!67406))))

(assert (=> d!39669 (contains!886 lt!67400 lt!67406)))

(assert (=> d!39669 (= (addStillContains!89 lt!67400 lt!67409 (zeroValue!2683 newMap!16) lt!67406) lt!67795)))

(declare-fun bs!5425 () Bool)

(assert (= bs!5425 d!39669))

(assert (=> bs!5425 m!152555))

(assert (=> bs!5425 m!152555))

(assert (=> bs!5425 m!152559))

(declare-fun m!153539 () Bool)

(assert (=> bs!5425 m!153539))

(declare-fun m!153541 () Bool)

(assert (=> bs!5425 m!153541))

(assert (=> b!129802 d!39669))

(declare-fun d!39671 () Bool)

(assert (=> d!39671 (= (apply!113 (+!167 lt!67398 (tuple2!2593 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))) lt!67405) (get!1472 (getValueByKey!168 (toList!865 (+!167 lt!67398 (tuple2!2593 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))) lt!67405)))))

(declare-fun bs!5426 () Bool)

(assert (= bs!5426 d!39671))

(declare-fun m!153543 () Bool)

(assert (=> bs!5426 m!153543))

(assert (=> bs!5426 m!153543))

(declare-fun m!153545 () Bool)

(assert (=> bs!5426 m!153545))

(assert (=> b!129802 d!39671))

(declare-fun d!39673 () Bool)

(assert (=> d!39673 (= (apply!113 (+!167 lt!67410 (tuple2!2593 lt!67395 (zeroValue!2683 newMap!16))) lt!67392) (get!1472 (getValueByKey!168 (toList!865 (+!167 lt!67410 (tuple2!2593 lt!67395 (zeroValue!2683 newMap!16)))) lt!67392)))))

(declare-fun bs!5427 () Bool)

(assert (= bs!5427 d!39673))

(declare-fun m!153547 () Bool)

(assert (=> bs!5427 m!153547))

(assert (=> bs!5427 m!153547))

(declare-fun m!153549 () Bool)

(assert (=> bs!5427 m!153549))

(assert (=> b!129802 d!39673))

(declare-fun d!39675 () Bool)

(assert (=> d!39675 (= (apply!113 lt!67398 lt!67405) (get!1472 (getValueByKey!168 (toList!865 lt!67398) lt!67405)))))

(declare-fun bs!5428 () Bool)

(assert (= bs!5428 d!39675))

(declare-fun m!153551 () Bool)

(assert (=> bs!5428 m!153551))

(assert (=> bs!5428 m!153551))

(declare-fun m!153553 () Bool)

(assert (=> bs!5428 m!153553))

(assert (=> b!129802 d!39675))

(declare-fun d!39677 () Bool)

(assert (=> d!39677 (= (apply!113 (+!167 lt!67410 (tuple2!2593 lt!67395 (zeroValue!2683 newMap!16))) lt!67392) (apply!113 lt!67410 lt!67392))))

(declare-fun lt!67796 () Unit!4055)

(assert (=> d!39677 (= lt!67796 (choose!799 lt!67410 lt!67395 (zeroValue!2683 newMap!16) lt!67392))))

(declare-fun e!85000 () Bool)

(assert (=> d!39677 e!85000))

(declare-fun res!62831 () Bool)

(assert (=> d!39677 (=> (not res!62831) (not e!85000))))

(assert (=> d!39677 (= res!62831 (contains!886 lt!67410 lt!67392))))

(assert (=> d!39677 (= (addApplyDifferent!89 lt!67410 lt!67395 (zeroValue!2683 newMap!16) lt!67392) lt!67796)))

(declare-fun b!130283 () Bool)

(assert (=> b!130283 (= e!85000 (not (= lt!67392 lt!67395)))))

(assert (= (and d!39677 res!62831) b!130283))

(assert (=> d!39677 m!152547))

(assert (=> d!39677 m!152547))

(assert (=> d!39677 m!152549))

(assert (=> d!39677 m!152535))

(declare-fun m!153555 () Bool)

(assert (=> d!39677 m!153555))

(declare-fun m!153557 () Bool)

(assert (=> d!39677 m!153557))

(assert (=> b!129802 d!39677))

(declare-fun d!39679 () Bool)

(declare-fun e!85001 () Bool)

(assert (=> d!39679 e!85001))

(declare-fun res!62833 () Bool)

(assert (=> d!39679 (=> (not res!62833) (not e!85001))))

(declare-fun lt!67800 () ListLongMap!1699)

(assert (=> d!39679 (= res!62833 (contains!886 lt!67800 (_1!1306 (tuple2!2593 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))))

(declare-fun lt!67799 () List!1728)

(assert (=> d!39679 (= lt!67800 (ListLongMap!1700 lt!67799))))

(declare-fun lt!67798 () Unit!4055)

(declare-fun lt!67797 () Unit!4055)

(assert (=> d!39679 (= lt!67798 lt!67797)))

(assert (=> d!39679 (= (getValueByKey!168 lt!67799 (_1!1306 (tuple2!2593 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))) (Some!173 (_2!1306 (tuple2!2593 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))))

(assert (=> d!39679 (= lt!67797 (lemmaContainsTupThenGetReturnValue!85 lt!67799 (_1!1306 (tuple2!2593 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))) (_2!1306 (tuple2!2593 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))))

(assert (=> d!39679 (= lt!67799 (insertStrictlySorted!87 (toList!865 lt!67403) (_1!1306 (tuple2!2593 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))) (_2!1306 (tuple2!2593 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))))

(assert (=> d!39679 (= (+!167 lt!67403 (tuple2!2593 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))) lt!67800)))

(declare-fun b!130284 () Bool)

(declare-fun res!62832 () Bool)

(assert (=> b!130284 (=> (not res!62832) (not e!85001))))

(assert (=> b!130284 (= res!62832 (= (getValueByKey!168 (toList!865 lt!67800) (_1!1306 (tuple2!2593 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))) (Some!173 (_2!1306 (tuple2!2593 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))))))))

(declare-fun b!130285 () Bool)

(assert (=> b!130285 (= e!85001 (contains!887 (toList!865 lt!67800) (tuple2!2593 lt!67411 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))))))

(assert (= (and d!39679 res!62833) b!130284))

(assert (= (and b!130284 res!62832) b!130285))

(declare-fun m!153559 () Bool)

(assert (=> d!39679 m!153559))

(declare-fun m!153561 () Bool)

(assert (=> d!39679 m!153561))

(declare-fun m!153563 () Bool)

(assert (=> d!39679 m!153563))

(declare-fun m!153565 () Bool)

(assert (=> d!39679 m!153565))

(declare-fun m!153567 () Bool)

(assert (=> b!130284 m!153567))

(declare-fun m!153569 () Bool)

(assert (=> b!130285 m!153569))

(assert (=> b!129802 d!39679))

(assert (=> b!129802 d!39635))

(declare-fun d!39681 () Bool)

(declare-fun e!85002 () Bool)

(assert (=> d!39681 e!85002))

(declare-fun res!62835 () Bool)

(assert (=> d!39681 (=> (not res!62835) (not e!85002))))

(declare-fun lt!67804 () ListLongMap!1699)

(assert (=> d!39681 (= res!62835 (contains!886 lt!67804 (_1!1306 (tuple2!2593 lt!67395 (zeroValue!2683 newMap!16)))))))

(declare-fun lt!67803 () List!1728)

(assert (=> d!39681 (= lt!67804 (ListLongMap!1700 lt!67803))))

(declare-fun lt!67802 () Unit!4055)

(declare-fun lt!67801 () Unit!4055)

(assert (=> d!39681 (= lt!67802 lt!67801)))

(assert (=> d!39681 (= (getValueByKey!168 lt!67803 (_1!1306 (tuple2!2593 lt!67395 (zeroValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67395 (zeroValue!2683 newMap!16)))))))

(assert (=> d!39681 (= lt!67801 (lemmaContainsTupThenGetReturnValue!85 lt!67803 (_1!1306 (tuple2!2593 lt!67395 (zeroValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67395 (zeroValue!2683 newMap!16)))))))

(assert (=> d!39681 (= lt!67803 (insertStrictlySorted!87 (toList!865 lt!67410) (_1!1306 (tuple2!2593 lt!67395 (zeroValue!2683 newMap!16))) (_2!1306 (tuple2!2593 lt!67395 (zeroValue!2683 newMap!16)))))))

(assert (=> d!39681 (= (+!167 lt!67410 (tuple2!2593 lt!67395 (zeroValue!2683 newMap!16))) lt!67804)))

(declare-fun b!130286 () Bool)

(declare-fun res!62834 () Bool)

(assert (=> b!130286 (=> (not res!62834) (not e!85002))))

(assert (=> b!130286 (= res!62834 (= (getValueByKey!168 (toList!865 lt!67804) (_1!1306 (tuple2!2593 lt!67395 (zeroValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 lt!67395 (zeroValue!2683 newMap!16))))))))

(declare-fun b!130287 () Bool)

(assert (=> b!130287 (= e!85002 (contains!887 (toList!865 lt!67804) (tuple2!2593 lt!67395 (zeroValue!2683 newMap!16))))))

(assert (= (and d!39681 res!62835) b!130286))

(assert (= (and b!130286 res!62834) b!130287))

(declare-fun m!153571 () Bool)

(assert (=> d!39681 m!153571))

(declare-fun m!153573 () Bool)

(assert (=> d!39681 m!153573))

(declare-fun m!153575 () Bool)

(assert (=> d!39681 m!153575))

(declare-fun m!153577 () Bool)

(assert (=> d!39681 m!153577))

(declare-fun m!153579 () Bool)

(assert (=> b!130286 m!153579))

(declare-fun m!153581 () Bool)

(assert (=> b!130287 m!153581))

(assert (=> b!129802 d!39681))

(declare-fun d!39683 () Bool)

(assert (=> d!39683 (= (apply!113 (+!167 lt!67398 (tuple2!2593 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))) lt!67405) (apply!113 lt!67398 lt!67405))))

(declare-fun lt!67805 () Unit!4055)

(assert (=> d!39683 (= lt!67805 (choose!799 lt!67398 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) lt!67405))))

(declare-fun e!85003 () Bool)

(assert (=> d!39683 e!85003))

(declare-fun res!62836 () Bool)

(assert (=> d!39683 (=> (not res!62836) (not e!85003))))

(assert (=> d!39683 (= res!62836 (contains!886 lt!67398 lt!67405))))

(assert (=> d!39683 (= (addApplyDifferent!89 lt!67398 lt!67407 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)) lt!67405) lt!67805)))

(declare-fun b!130288 () Bool)

(assert (=> b!130288 (= e!85003 (not (= lt!67405 lt!67407)))))

(assert (= (and d!39683 res!62836) b!130288))

(assert (=> d!39683 m!152529))

(assert (=> d!39683 m!152529))

(assert (=> d!39683 m!152539))

(assert (=> d!39683 m!152541))

(declare-fun m!153583 () Bool)

(assert (=> d!39683 m!153583))

(declare-fun m!153585 () Bool)

(assert (=> d!39683 m!153585))

(assert (=> b!129802 d!39683))

(declare-fun d!39685 () Bool)

(declare-fun e!85005 () Bool)

(assert (=> d!39685 e!85005))

(declare-fun res!62837 () Bool)

(assert (=> d!39685 (=> res!62837 e!85005)))

(declare-fun lt!67806 () Bool)

(assert (=> d!39685 (= res!62837 (not lt!67806))))

(declare-fun lt!67809 () Bool)

(assert (=> d!39685 (= lt!67806 lt!67809)))

(declare-fun lt!67808 () Unit!4055)

(declare-fun e!85004 () Unit!4055)

(assert (=> d!39685 (= lt!67808 e!85004)))

(declare-fun c!24018 () Bool)

(assert (=> d!39685 (= c!24018 lt!67809)))

(assert (=> d!39685 (= lt!67809 (containsKey!172 (toList!865 lt!67384) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!39685 (= (contains!886 lt!67384 #b0000000000000000000000000000000000000000000000000000000000000000) lt!67806)))

(declare-fun b!130289 () Bool)

(declare-fun lt!67807 () Unit!4055)

(assert (=> b!130289 (= e!85004 lt!67807)))

(assert (=> b!130289 (= lt!67807 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67384) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!130289 (isDefined!122 (getValueByKey!168 (toList!865 lt!67384) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130290 () Bool)

(declare-fun Unit!4086 () Unit!4055)

(assert (=> b!130290 (= e!85004 Unit!4086)))

(declare-fun b!130291 () Bool)

(assert (=> b!130291 (= e!85005 (isDefined!122 (getValueByKey!168 (toList!865 lt!67384) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39685 c!24018) b!130289))

(assert (= (and d!39685 (not c!24018)) b!130290))

(assert (= (and d!39685 (not res!62837)) b!130291))

(declare-fun m!153587 () Bool)

(assert (=> d!39685 m!153587))

(declare-fun m!153589 () Bool)

(assert (=> b!130289 m!153589))

(declare-fun m!153591 () Bool)

(assert (=> b!130289 m!153591))

(assert (=> b!130289 m!153591))

(declare-fun m!153593 () Bool)

(assert (=> b!130289 m!153593))

(assert (=> b!130291 m!153591))

(assert (=> b!130291 m!153591))

(assert (=> b!130291 m!153593))

(assert (=> d!39369 d!39685))

(assert (=> d!39369 d!39329))

(declare-fun lt!67810 () Bool)

(declare-fun d!39687 () Bool)

(assert (=> d!39687 (= lt!67810 (select (content!129 (toList!865 lt!67516)) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!85006 () Bool)

(assert (=> d!39687 (= lt!67810 e!85006)))

(declare-fun res!62839 () Bool)

(assert (=> d!39687 (=> (not res!62839) (not e!85006))))

(assert (=> d!39687 (= res!62839 ((_ is Cons!1724) (toList!865 lt!67516)))))

(assert (=> d!39687 (= (contains!887 (toList!865 lt!67516) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!67810)))

(declare-fun b!130292 () Bool)

(declare-fun e!85007 () Bool)

(assert (=> b!130292 (= e!85006 e!85007)))

(declare-fun res!62838 () Bool)

(assert (=> b!130292 (=> res!62838 e!85007)))

(assert (=> b!130292 (= res!62838 (= (h!2328 (toList!865 lt!67516)) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!130293 () Bool)

(assert (=> b!130293 (= e!85007 (contains!887 (t!6139 (toList!865 lt!67516)) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!39687 res!62839) b!130292))

(assert (= (and b!130292 (not res!62838)) b!130293))

(declare-fun m!153595 () Bool)

(assert (=> d!39687 m!153595))

(declare-fun m!153597 () Bool)

(assert (=> d!39687 m!153597))

(declare-fun m!153599 () Bool)

(assert (=> b!130293 m!153599))

(assert (=> b!129946 d!39687))

(declare-fun d!39689 () Bool)

(declare-fun lt!67811 () Bool)

(assert (=> d!39689 (= lt!67811 (select (content!129 (toList!865 lt!67448)) (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun e!85008 () Bool)

(assert (=> d!39689 (= lt!67811 e!85008)))

(declare-fun res!62841 () Bool)

(assert (=> d!39689 (=> (not res!62841) (not e!85008))))

(assert (=> d!39689 (= res!62841 ((_ is Cons!1724) (toList!865 lt!67448)))))

(assert (=> d!39689 (= (contains!887 (toList!865 lt!67448) (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67811)))

(declare-fun b!130294 () Bool)

(declare-fun e!85009 () Bool)

(assert (=> b!130294 (= e!85008 e!85009)))

(declare-fun res!62840 () Bool)

(assert (=> b!130294 (=> res!62840 e!85009)))

(assert (=> b!130294 (= res!62840 (= (h!2328 (toList!865 lt!67448)) (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun b!130295 () Bool)

(assert (=> b!130295 (= e!85009 (contains!887 (t!6139 (toList!865 lt!67448)) (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(assert (= (and d!39689 res!62841) b!130294))

(assert (= (and b!130294 (not res!62840)) b!130295))

(declare-fun m!153601 () Bool)

(assert (=> d!39689 m!153601))

(declare-fun m!153603 () Bool)

(assert (=> d!39689 m!153603))

(declare-fun m!153605 () Bool)

(assert (=> b!130295 m!153605))

(assert (=> b!129870 d!39689))

(declare-fun d!39691 () Bool)

(declare-fun e!85011 () Bool)

(assert (=> d!39691 e!85011))

(declare-fun res!62842 () Bool)

(assert (=> d!39691 (=> res!62842 e!85011)))

(declare-fun lt!67812 () Bool)

(assert (=> d!39691 (= res!62842 (not lt!67812))))

(declare-fun lt!67815 () Bool)

(assert (=> d!39691 (= lt!67812 lt!67815)))

(declare-fun lt!67814 () Unit!4055)

(declare-fun e!85010 () Unit!4055)

(assert (=> d!39691 (= lt!67814 e!85010)))

(declare-fun c!24019 () Bool)

(assert (=> d!39691 (= c!24019 lt!67815)))

(assert (=> d!39691 (= lt!67815 (containsKey!172 (toList!865 lt!67348) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!39691 (= (contains!886 lt!67348 #b0000000000000000000000000000000000000000000000000000000000000000) lt!67812)))

(declare-fun b!130296 () Bool)

(declare-fun lt!67813 () Unit!4055)

(assert (=> b!130296 (= e!85010 lt!67813)))

(assert (=> b!130296 (= lt!67813 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67348) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!130296 (isDefined!122 (getValueByKey!168 (toList!865 lt!67348) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130297 () Bool)

(declare-fun Unit!4087 () Unit!4055)

(assert (=> b!130297 (= e!85010 Unit!4087)))

(declare-fun b!130298 () Bool)

(assert (=> b!130298 (= e!85011 (isDefined!122 (getValueByKey!168 (toList!865 lt!67348) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39691 c!24019) b!130296))

(assert (= (and d!39691 (not c!24019)) b!130297))

(assert (= (and d!39691 (not res!62842)) b!130298))

(declare-fun m!153607 () Bool)

(assert (=> d!39691 m!153607))

(declare-fun m!153609 () Bool)

(assert (=> b!130296 m!153609))

(assert (=> b!130296 m!153341))

(assert (=> b!130296 m!153341))

(declare-fun m!153611 () Bool)

(assert (=> b!130296 m!153611))

(assert (=> b!130298 m!153341))

(assert (=> b!130298 m!153341))

(assert (=> b!130298 m!153611))

(assert (=> bm!14110 d!39691))

(assert (=> b!129892 d!39485))

(declare-fun b!130299 () Bool)

(declare-fun e!85017 () ListLongMap!1699)

(assert (=> b!130299 (= e!85017 (ListLongMap!1700 Nil!1725))))

(declare-fun b!130300 () Bool)

(declare-fun res!62846 () Bool)

(declare-fun e!85014 () Bool)

(assert (=> b!130300 (=> (not res!62846) (not e!85014))))

(declare-fun lt!67817 () ListLongMap!1699)

(assert (=> b!130300 (= res!62846 (not (contains!886 lt!67817 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!14177 () Bool)

(declare-fun call!14180 () ListLongMap!1699)

(assert (=> bm!14177 (= call!14180 (getCurrentListMapNoExtraKeys!134 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (_values!2807 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992))) (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) (minValue!2683 (v!3159 (underlying!446 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992)))))))

(declare-fun b!130301 () Bool)

(declare-fun e!85015 () Bool)

(declare-fun e!85012 () Bool)

(assert (=> b!130301 (= e!85015 e!85012)))

(assert (=> b!130301 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun res!62843 () Bool)

(assert (=> b!130301 (= res!62843 (contains!886 lt!67817 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!130301 (=> (not res!62843) (not e!85012))))

(declare-fun b!130302 () Bool)

(declare-fun e!85018 () ListLongMap!1699)

(assert (=> b!130302 (= e!85018 call!14180)))

(declare-fun b!130303 () Bool)

(declare-fun e!85016 () Bool)

(assert (=> b!130303 (= e!85015 e!85016)))

(declare-fun c!24021 () Bool)

(assert (=> b!130303 (= c!24021 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun b!130304 () Bool)

(assert (=> b!130304 (= e!85017 e!85018)))

(declare-fun c!24020 () Bool)

(assert (=> b!130304 (= c!24020 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(declare-fun b!130305 () Bool)

(declare-fun lt!67819 () Unit!4055)

(declare-fun lt!67816 () Unit!4055)

(assert (=> b!130305 (= lt!67819 lt!67816)))

(declare-fun lt!67818 () (_ BitVec 64))

(declare-fun lt!67821 () (_ BitVec 64))

(declare-fun lt!67822 () ListLongMap!1699)

(declare-fun lt!67820 () V!3459)

(assert (=> b!130305 (not (contains!886 (+!167 lt!67822 (tuple2!2593 lt!67821 lt!67820)) lt!67818))))

(assert (=> b!130305 (= lt!67816 (addStillNotContains!60 lt!67822 lt!67821 lt!67820 lt!67818))))

(assert (=> b!130305 (= lt!67818 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!130305 (= lt!67820 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!130305 (= lt!67821 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (=> b!130305 (= lt!67822 call!14180)))

(assert (=> b!130305 (= e!85018 (+!167 call!14180 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!130306 () Bool)

(assert (=> b!130306 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(assert (=> b!130306 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2509 (_values!2807 (v!3159 (underlying!446 thiss!992))))))))

(assert (=> b!130306 (= e!85012 (= (apply!113 lt!67817 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!130307 () Bool)

(assert (=> b!130307 (= e!85014 e!85015)))

(declare-fun c!24022 () Bool)

(declare-fun e!85013 () Bool)

(assert (=> b!130307 (= c!24022 e!85013)))

(declare-fun res!62844 () Bool)

(assert (=> b!130307 (=> (not res!62844) (not e!85013))))

(assert (=> b!130307 (= res!62844 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun d!39693 () Bool)

(assert (=> d!39693 e!85014))

(declare-fun res!62845 () Bool)

(assert (=> d!39693 (=> (not res!62845) (not e!85014))))

(assert (=> d!39693 (= res!62845 (not (contains!886 lt!67817 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39693 (= lt!67817 e!85017)))

(declare-fun c!24023 () Bool)

(assert (=> d!39693 (= c!24023 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(assert (=> d!39693 (validMask!0 (mask!7102 (v!3159 (underlying!446 thiss!992))))))

(assert (=> d!39693 (= (getCurrentListMapNoExtraKeys!134 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (_values!2807 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992))) (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) (minValue!2683 (v!3159 (underlying!446 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992)))) lt!67817)))

(declare-fun b!130308 () Bool)

(assert (=> b!130308 (= e!85013 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001))))))

(assert (=> b!130308 (bvsge (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!130309 () Bool)

(assert (=> b!130309 (= e!85016 (= lt!67817 (getCurrentListMapNoExtraKeys!134 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (_values!2807 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992))) (extraKeys!2597 (v!3159 (underlying!446 thiss!992))) (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) (minValue!2683 (v!3159 (underlying!446 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun b!130310 () Bool)

(assert (=> b!130310 (= e!85016 (isEmpty!408 lt!67817))))

(assert (= (and d!39693 c!24023) b!130299))

(assert (= (and d!39693 (not c!24023)) b!130304))

(assert (= (and b!130304 c!24020) b!130305))

(assert (= (and b!130304 (not c!24020)) b!130302))

(assert (= (or b!130305 b!130302) bm!14177))

(assert (= (and d!39693 res!62845) b!130300))

(assert (= (and b!130300 res!62846) b!130307))

(assert (= (and b!130307 res!62844) b!130308))

(assert (= (and b!130307 c!24022) b!130301))

(assert (= (and b!130307 (not c!24022)) b!130303))

(assert (= (and b!130301 res!62843) b!130306))

(assert (= (and b!130303 c!24021) b!130309))

(assert (= (and b!130303 (not c!24021)) b!130310))

(declare-fun b_lambda!5817 () Bool)

(assert (=> (not b_lambda!5817) (not b!130305)))

(assert (=> b!130305 t!6136))

(declare-fun b_and!8089 () Bool)

(assert (= b_and!8085 (and (=> t!6136 result!3919) b_and!8089)))

(assert (=> b!130305 t!6138))

(declare-fun b_and!8091 () Bool)

(assert (= b_and!8087 (and (=> t!6138 result!3923) b_and!8091)))

(declare-fun b_lambda!5819 () Bool)

(assert (=> (not b_lambda!5819) (not b!130306)))

(assert (=> b!130306 t!6136))

(declare-fun b_and!8093 () Bool)

(assert (= b_and!8089 (and (=> t!6136 result!3919) b_and!8093)))

(assert (=> b!130306 t!6138))

(declare-fun b_and!8095 () Bool)

(assert (= b_and!8091 (and (=> t!6138 result!3923) b_and!8095)))

(declare-fun m!153613 () Bool)

(assert (=> b!130310 m!153613))

(declare-fun m!153615 () Bool)

(assert (=> b!130304 m!153615))

(assert (=> b!130304 m!153615))

(declare-fun m!153617 () Bool)

(assert (=> b!130304 m!153617))

(declare-fun m!153619 () Bool)

(assert (=> b!130305 m!153619))

(assert (=> b!130305 m!153615))

(declare-fun m!153621 () Bool)

(assert (=> b!130305 m!153621))

(assert (=> b!130305 m!152205))

(declare-fun m!153623 () Bool)

(assert (=> b!130305 m!153623))

(assert (=> b!130305 m!153621))

(assert (=> b!130305 m!152205))

(declare-fun m!153625 () Bool)

(assert (=> b!130305 m!153625))

(declare-fun m!153627 () Bool)

(assert (=> b!130305 m!153627))

(declare-fun m!153629 () Bool)

(assert (=> b!130305 m!153629))

(assert (=> b!130305 m!153627))

(assert (=> b!130306 m!153615))

(assert (=> b!130306 m!153621))

(assert (=> b!130306 m!152205))

(assert (=> b!130306 m!153621))

(assert (=> b!130306 m!152205))

(assert (=> b!130306 m!153625))

(assert (=> b!130306 m!153615))

(declare-fun m!153631 () Bool)

(assert (=> b!130306 m!153631))

(declare-fun m!153633 () Bool)

(assert (=> d!39693 m!153633))

(assert (=> d!39693 m!152191))

(declare-fun m!153635 () Bool)

(assert (=> b!130300 m!153635))

(assert (=> b!130308 m!153615))

(assert (=> b!130308 m!153615))

(assert (=> b!130308 m!153617))

(declare-fun m!153637 () Bool)

(assert (=> b!130309 m!153637))

(assert (=> bm!14177 m!153637))

(assert (=> b!130301 m!153615))

(assert (=> b!130301 m!153615))

(declare-fun m!153639 () Bool)

(assert (=> b!130301 m!153639))

(assert (=> bm!14115 d!39693))

(declare-fun d!39695 () Bool)

(assert (=> d!39695 (= (get!1470 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3158 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!129679 d!39695))

(declare-fun d!39697 () Bool)

(declare-fun lt!67823 () Bool)

(assert (=> d!39697 (= lt!67823 (select (content!129 (toList!865 lt!67464)) (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!85019 () Bool)

(assert (=> d!39697 (= lt!67823 e!85019)))

(declare-fun res!62848 () Bool)

(assert (=> d!39697 (=> (not res!62848) (not e!85019))))

(assert (=> d!39697 (= res!62848 ((_ is Cons!1724) (toList!865 lt!67464)))))

(assert (=> d!39697 (= (contains!887 (toList!865 lt!67464) (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!67823)))

(declare-fun b!130311 () Bool)

(declare-fun e!85020 () Bool)

(assert (=> b!130311 (= e!85019 e!85020)))

(declare-fun res!62847 () Bool)

(assert (=> b!130311 (=> res!62847 e!85020)))

(assert (=> b!130311 (= res!62847 (= (h!2328 (toList!865 lt!67464)) (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!130312 () Bool)

(assert (=> b!130312 (= e!85020 (contains!887 (t!6139 (toList!865 lt!67464)) (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!39697 res!62848) b!130311))

(assert (= (and b!130311 (not res!62847)) b!130312))

(declare-fun m!153641 () Bool)

(assert (=> d!39697 m!153641))

(declare-fun m!153643 () Bool)

(assert (=> d!39697 m!153643))

(declare-fun m!153645 () Bool)

(assert (=> b!130312 m!153645))

(assert (=> b!129878 d!39697))

(assert (=> bm!14105 d!39375))

(declare-fun d!39699 () Bool)

(declare-fun res!62849 () Bool)

(declare-fun e!85021 () Bool)

(assert (=> d!39699 (=> (not res!62849) (not e!85021))))

(assert (=> d!39699 (= res!62849 (simpleValid!88 (_2!1307 lt!67585)))))

(assert (=> d!39699 (= (valid!513 (_2!1307 lt!67585)) e!85021)))

(declare-fun b!130313 () Bool)

(declare-fun res!62850 () Bool)

(assert (=> b!130313 (=> (not res!62850) (not e!85021))))

(assert (=> b!130313 (= res!62850 (= (arrayCountValidKeys!0 (_keys!4565 (_2!1307 lt!67585)) #b00000000000000000000000000000000 (size!2508 (_keys!4565 (_2!1307 lt!67585)))) (_size!589 (_2!1307 lt!67585))))))

(declare-fun b!130314 () Bool)

(declare-fun res!62851 () Bool)

(assert (=> b!130314 (=> (not res!62851) (not e!85021))))

(assert (=> b!130314 (= res!62851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4565 (_2!1307 lt!67585)) (mask!7102 (_2!1307 lt!67585))))))

(declare-fun b!130315 () Bool)

(assert (=> b!130315 (= e!85021 (arrayNoDuplicates!0 (_keys!4565 (_2!1307 lt!67585)) #b00000000000000000000000000000000 Nil!1726))))

(assert (= (and d!39699 res!62849) b!130313))

(assert (= (and b!130313 res!62850) b!130314))

(assert (= (and b!130314 res!62851) b!130315))

(declare-fun m!153647 () Bool)

(assert (=> d!39699 m!153647))

(declare-fun m!153649 () Bool)

(assert (=> b!130313 m!153649))

(declare-fun m!153651 () Bool)

(assert (=> b!130314 m!153651))

(declare-fun m!153653 () Bool)

(assert (=> b!130315 m!153653))

(assert (=> b!129993 d!39699))

(assert (=> b!129852 d!39533))

(declare-fun d!39701 () Bool)

(declare-fun e!85022 () Bool)

(assert (=> d!39701 e!85022))

(declare-fun res!62853 () Bool)

(assert (=> d!39701 (=> (not res!62853) (not e!85022))))

(declare-fun lt!67827 () ListLongMap!1699)

(assert (=> d!39701 (= res!62853 (contains!886 lt!67827 (_1!1306 (ite (or c!23892 c!23893) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))))))))

(declare-fun lt!67826 () List!1728)

(assert (=> d!39701 (= lt!67827 (ListLongMap!1700 lt!67826))))

(declare-fun lt!67825 () Unit!4055)

(declare-fun lt!67824 () Unit!4055)

(assert (=> d!39701 (= lt!67825 lt!67824)))

(assert (=> d!39701 (= (getValueByKey!168 lt!67826 (_1!1306 (ite (or c!23892 c!23893) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))))) (Some!173 (_2!1306 (ite (or c!23892 c!23893) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))))))))

(assert (=> d!39701 (= lt!67824 (lemmaContainsTupThenGetReturnValue!85 lt!67826 (_1!1306 (ite (or c!23892 c!23893) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))) (_2!1306 (ite (or c!23892 c!23893) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))))))))

(assert (=> d!39701 (= lt!67826 (insertStrictlySorted!87 (toList!865 (ite c!23892 call!14121 (ite c!23893 call!14120 call!14122))) (_1!1306 (ite (or c!23892 c!23893) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))) (_2!1306 (ite (or c!23892 c!23893) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))))))))

(assert (=> d!39701 (= (+!167 (ite c!23892 call!14121 (ite c!23893 call!14120 call!14122)) (ite (or c!23892 c!23893) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))) lt!67827)))

(declare-fun b!130316 () Bool)

(declare-fun res!62852 () Bool)

(assert (=> b!130316 (=> (not res!62852) (not e!85022))))

(assert (=> b!130316 (= res!62852 (= (getValueByKey!168 (toList!865 lt!67827) (_1!1306 (ite (or c!23892 c!23893) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16)))))) (Some!173 (_2!1306 (ite (or c!23892 c!23893) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))))))

(declare-fun b!130317 () Bool)

(assert (=> b!130317 (= e!85022 (contains!887 (toList!865 lt!67827) (ite (or c!23892 c!23893) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!23852 (ite c!23844 (minValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2683 newMap!16))))))))

(assert (= (and d!39701 res!62853) b!130316))

(assert (= (and b!130316 res!62852) b!130317))

(declare-fun m!153655 () Bool)

(assert (=> d!39701 m!153655))

(declare-fun m!153657 () Bool)

(assert (=> d!39701 m!153657))

(declare-fun m!153659 () Bool)

(assert (=> d!39701 m!153659))

(declare-fun m!153661 () Bool)

(assert (=> d!39701 m!153661))

(declare-fun m!153663 () Bool)

(assert (=> b!130316 m!153663))

(declare-fun m!153665 () Bool)

(assert (=> b!130317 m!153665))

(assert (=> bm!14116 d!39701))

(assert (=> d!39429 d!39501))

(declare-fun d!39703 () Bool)

(declare-fun e!85024 () Bool)

(assert (=> d!39703 e!85024))

(declare-fun res!62854 () Bool)

(assert (=> d!39703 (=> res!62854 e!85024)))

(declare-fun lt!67828 () Bool)

(assert (=> d!39703 (= res!62854 (not lt!67828))))

(declare-fun lt!67831 () Bool)

(assert (=> d!39703 (= lt!67828 lt!67831)))

(declare-fun lt!67830 () Unit!4055)

(declare-fun e!85023 () Unit!4055)

(assert (=> d!39703 (= lt!67830 e!85023)))

(declare-fun c!24024 () Bool)

(assert (=> d!39703 (= c!24024 lt!67831)))

(assert (=> d!39703 (= lt!67831 (containsKey!172 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299))))))

(assert (=> d!39703 (= (contains!886 (getCurrentListMap!536 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299))) lt!67828)))

(declare-fun b!130318 () Bool)

(declare-fun lt!67829 () Unit!4055)

(assert (=> b!130318 (= e!85023 lt!67829)))

(assert (=> b!130318 (= lt!67829 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299))))))

(assert (=> b!130318 (isDefined!122 (getValueByKey!168 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299))))))

(declare-fun b!130319 () Bool)

(declare-fun Unit!4088 () Unit!4055)

(assert (=> b!130319 (= e!85023 Unit!4088)))

(declare-fun b!130320 () Bool)

(assert (=> b!130320 (= e!85024 (isDefined!122 (getValueByKey!168 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))))))

(assert (= (and d!39703 c!24024) b!130318))

(assert (= (and d!39703 (not c!24024)) b!130319))

(assert (= (and d!39703 (not res!62854)) b!130320))

(assert (=> d!39703 m!152321))

(declare-fun m!153667 () Bool)

(assert (=> d!39703 m!153667))

(assert (=> b!130318 m!152321))

(declare-fun m!153669 () Bool)

(assert (=> b!130318 m!153669))

(assert (=> b!130318 m!152321))

(declare-fun m!153671 () Bool)

(assert (=> b!130318 m!153671))

(assert (=> b!130318 m!153671))

(declare-fun m!153673 () Bool)

(assert (=> b!130318 m!153673))

(assert (=> b!130320 m!152321))

(assert (=> b!130320 m!153671))

(assert (=> b!130320 m!153671))

(assert (=> b!130320 m!153673))

(assert (=> b!129746 d!39703))

(declare-fun b!130321 () Bool)

(declare-fun e!85030 () Bool)

(declare-fun e!85025 () Bool)

(assert (=> b!130321 (= e!85030 e!85025)))

(declare-fun res!62859 () Bool)

(declare-fun call!14186 () Bool)

(assert (=> b!130321 (= res!62859 call!14186)))

(assert (=> b!130321 (=> (not res!62859) (not e!85025))))

(declare-fun b!130322 () Bool)

(declare-fun e!85034 () Bool)

(assert (=> b!130322 (= e!85034 e!85030)))

(declare-fun c!24030 () Bool)

(assert (=> b!130322 (= c!24030 (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!14184 () ListLongMap!1699)

(declare-fun call!14181 () ListLongMap!1699)

(declare-fun c!24028 () Bool)

(declare-fun bm!14178 () Bool)

(declare-fun c!24027 () Bool)

(declare-fun call!14182 () ListLongMap!1699)

(declare-fun call!14183 () ListLongMap!1699)

(assert (=> bm!14178 (= call!14181 (+!167 (ite c!24027 call!14183 (ite c!24028 call!14182 call!14184)) (ite (or c!24027 c!24028) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(declare-fun b!130323 () Bool)

(declare-fun e!85031 () Bool)

(declare-fun call!14185 () Bool)

(assert (=> b!130323 (= e!85031 (not call!14185))))

(declare-fun b!130324 () Bool)

(declare-fun res!62863 () Bool)

(assert (=> b!130324 (=> (not res!62863) (not e!85034))))

(assert (=> b!130324 (= res!62863 e!85031)))

(declare-fun c!24029 () Bool)

(assert (=> b!130324 (= c!24029 (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!14179 () Bool)

(declare-fun call!14187 () ListLongMap!1699)

(assert (=> bm!14179 (= call!14187 call!14181)))

(declare-fun e!85029 () Bool)

(declare-fun b!130325 () Bool)

(declare-fun lt!67843 () ListLongMap!1699)

(assert (=> b!130325 (= e!85029 (= (apply!113 lt!67843 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) (get!1469 (select (arr!2243 lt!67304) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!130325 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2509 lt!67304)))))

(assert (=> b!130325 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!130326 () Bool)

(declare-fun e!85037 () Unit!4055)

(declare-fun Unit!4089 () Unit!4055)

(assert (=> b!130326 (= e!85037 Unit!4089)))

(declare-fun b!130327 () Bool)

(declare-fun res!62858 () Bool)

(assert (=> b!130327 (=> (not res!62858) (not e!85034))))

(declare-fun e!85028 () Bool)

(assert (=> b!130327 (= res!62858 e!85028)))

(declare-fun res!62861 () Bool)

(assert (=> b!130327 (=> res!62861 e!85028)))

(declare-fun e!85033 () Bool)

(assert (=> b!130327 (= res!62861 (not e!85033))))

(declare-fun res!62856 () Bool)

(assert (=> b!130327 (=> (not res!62856) (not e!85033))))

(assert (=> b!130327 (= res!62856 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!130328 () Bool)

(declare-fun e!85035 () ListLongMap!1699)

(assert (=> b!130328 (= e!85035 call!14187)))

(declare-fun bm!14180 () Bool)

(assert (=> bm!14180 (= call!14182 call!14183)))

(declare-fun b!130329 () Bool)

(assert (=> b!130329 (= e!85028 e!85029)))

(declare-fun res!62855 () Bool)

(assert (=> b!130329 (=> (not res!62855) (not e!85029))))

(assert (=> b!130329 (= res!62855 (contains!886 lt!67843 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!130329 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun bm!14181 () Bool)

(assert (=> bm!14181 (= call!14183 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun b!130330 () Bool)

(declare-fun e!85032 () Bool)

(assert (=> b!130330 (= e!85031 e!85032)))

(declare-fun res!62857 () Bool)

(assert (=> b!130330 (= res!62857 call!14185)))

(assert (=> b!130330 (=> (not res!62857) (not e!85032))))

(declare-fun bm!14182 () Bool)

(assert (=> bm!14182 (= call!14185 (contains!886 lt!67843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!39705 () Bool)

(assert (=> d!39705 e!85034))

(declare-fun res!62862 () Bool)

(assert (=> d!39705 (=> (not res!62862) (not e!85034))))

(assert (=> d!39705 (= res!62862 (or (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))))

(declare-fun lt!67841 () ListLongMap!1699)

(assert (=> d!39705 (= lt!67843 lt!67841)))

(declare-fun lt!67838 () Unit!4055)

(assert (=> d!39705 (= lt!67838 e!85037)))

(declare-fun c!24026 () Bool)

(declare-fun e!85027 () Bool)

(assert (=> d!39705 (= c!24026 e!85027)))

(declare-fun res!62860 () Bool)

(assert (=> d!39705 (=> (not res!62860) (not e!85027))))

(assert (=> d!39705 (= res!62860 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun e!85036 () ListLongMap!1699)

(assert (=> d!39705 (= lt!67841 e!85036)))

(assert (=> d!39705 (= c!24027 (and (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39705 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39705 (= (getCurrentListMap!536 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) lt!67843)))

(declare-fun b!130331 () Bool)

(declare-fun e!85026 () ListLongMap!1699)

(assert (=> b!130331 (= e!85036 e!85026)))

(assert (=> b!130331 (= c!24028 (and (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!130332 () Bool)

(assert (=> b!130332 (= e!85027 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!14183 () Bool)

(assert (=> bm!14183 (= call!14186 (contains!886 lt!67843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130333 () Bool)

(declare-fun c!24025 () Bool)

(assert (=> b!130333 (= c!24025 (and (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!130333 (= e!85026 e!85035)))

(declare-fun b!130334 () Bool)

(declare-fun lt!67846 () Unit!4055)

(assert (=> b!130334 (= e!85037 lt!67846)))

(declare-fun lt!67842 () ListLongMap!1699)

(assert (=> b!130334 (= lt!67842 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67851 () (_ BitVec 64))

(assert (=> b!130334 (= lt!67851 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67848 () (_ BitVec 64))

(assert (=> b!130334 (= lt!67848 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67844 () Unit!4055)

(assert (=> b!130334 (= lt!67844 (addStillContains!89 lt!67842 lt!67851 (zeroValue!2683 newMap!16) lt!67848))))

(assert (=> b!130334 (contains!886 (+!167 lt!67842 (tuple2!2593 lt!67851 (zeroValue!2683 newMap!16))) lt!67848)))

(declare-fun lt!67832 () Unit!4055)

(assert (=> b!130334 (= lt!67832 lt!67844)))

(declare-fun lt!67845 () ListLongMap!1699)

(assert (=> b!130334 (= lt!67845 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67853 () (_ BitVec 64))

(assert (=> b!130334 (= lt!67853 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67836 () (_ BitVec 64))

(assert (=> b!130334 (= lt!67836 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67839 () Unit!4055)

(assert (=> b!130334 (= lt!67839 (addApplyDifferent!89 lt!67845 lt!67853 (minValue!2683 newMap!16) lt!67836))))

(assert (=> b!130334 (= (apply!113 (+!167 lt!67845 (tuple2!2593 lt!67853 (minValue!2683 newMap!16))) lt!67836) (apply!113 lt!67845 lt!67836))))

(declare-fun lt!67850 () Unit!4055)

(assert (=> b!130334 (= lt!67850 lt!67839)))

(declare-fun lt!67852 () ListLongMap!1699)

(assert (=> b!130334 (= lt!67852 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67837 () (_ BitVec 64))

(assert (=> b!130334 (= lt!67837 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67834 () (_ BitVec 64))

(assert (=> b!130334 (= lt!67834 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67833 () Unit!4055)

(assert (=> b!130334 (= lt!67833 (addApplyDifferent!89 lt!67852 lt!67837 (zeroValue!2683 newMap!16) lt!67834))))

(assert (=> b!130334 (= (apply!113 (+!167 lt!67852 (tuple2!2593 lt!67837 (zeroValue!2683 newMap!16))) lt!67834) (apply!113 lt!67852 lt!67834))))

(declare-fun lt!67835 () Unit!4055)

(assert (=> b!130334 (= lt!67835 lt!67833)))

(declare-fun lt!67840 () ListLongMap!1699)

(assert (=> b!130334 (= lt!67840 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67849 () (_ BitVec 64))

(assert (=> b!130334 (= lt!67849 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67847 () (_ BitVec 64))

(assert (=> b!130334 (= lt!67847 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!130334 (= lt!67846 (addApplyDifferent!89 lt!67840 lt!67849 (minValue!2683 newMap!16) lt!67847))))

(assert (=> b!130334 (= (apply!113 (+!167 lt!67840 (tuple2!2593 lt!67849 (minValue!2683 newMap!16))) lt!67847) (apply!113 lt!67840 lt!67847))))

(declare-fun b!130335 () Bool)

(assert (=> b!130335 (= e!85033 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!130336 () Bool)

(assert (=> b!130336 (= e!85026 call!14187)))

(declare-fun b!130337 () Bool)

(assert (=> b!130337 (= e!85030 (not call!14186))))

(declare-fun b!130338 () Bool)

(assert (=> b!130338 (= e!85025 (= (apply!113 lt!67843 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2683 newMap!16)))))

(declare-fun b!130339 () Bool)

(assert (=> b!130339 (= e!85032 (= (apply!113 lt!67843 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2683 newMap!16)))))

(declare-fun b!130340 () Bool)

(assert (=> b!130340 (= e!85036 (+!167 call!14181 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))

(declare-fun b!130341 () Bool)

(assert (=> b!130341 (= e!85035 call!14184)))

(declare-fun bm!14184 () Bool)

(assert (=> bm!14184 (= call!14184 call!14182)))

(assert (= (and d!39705 c!24027) b!130340))

(assert (= (and d!39705 (not c!24027)) b!130331))

(assert (= (and b!130331 c!24028) b!130336))

(assert (= (and b!130331 (not c!24028)) b!130333))

(assert (= (and b!130333 c!24025) b!130328))

(assert (= (and b!130333 (not c!24025)) b!130341))

(assert (= (or b!130328 b!130341) bm!14184))

(assert (= (or b!130336 bm!14184) bm!14180))

(assert (= (or b!130336 b!130328) bm!14179))

(assert (= (or b!130340 bm!14180) bm!14181))

(assert (= (or b!130340 bm!14179) bm!14178))

(assert (= (and d!39705 res!62860) b!130332))

(assert (= (and d!39705 c!24026) b!130334))

(assert (= (and d!39705 (not c!24026)) b!130326))

(assert (= (and d!39705 res!62862) b!130327))

(assert (= (and b!130327 res!62856) b!130335))

(assert (= (and b!130327 (not res!62861)) b!130329))

(assert (= (and b!130329 res!62855) b!130325))

(assert (= (and b!130327 res!62858) b!130324))

(assert (= (and b!130324 c!24029) b!130330))

(assert (= (and b!130324 (not c!24029)) b!130323))

(assert (= (and b!130330 res!62857) b!130339))

(assert (= (or b!130330 b!130323) bm!14182))

(assert (= (and b!130324 res!62863) b!130322))

(assert (= (and b!130322 c!24030) b!130321))

(assert (= (and b!130322 (not c!24030)) b!130337))

(assert (= (and b!130321 res!62859) b!130338))

(assert (= (or b!130321 b!130337) bm!14183))

(declare-fun b_lambda!5821 () Bool)

(assert (=> (not b_lambda!5821) (not b!130325)))

(assert (=> b!130325 t!6146))

(declare-fun b_and!8097 () Bool)

(assert (= b_and!8093 (and (=> t!6146 result!3933) b_and!8097)))

(assert (=> b!130325 t!6148))

(declare-fun b_and!8099 () Bool)

(assert (= b_and!8095 (and (=> t!6148 result!3935) b_and!8099)))

(assert (=> b!130335 m!152429))

(assert (=> b!130335 m!152429))

(assert (=> b!130335 m!152431))

(declare-fun m!153675 () Bool)

(assert (=> bm!14178 m!153675))

(assert (=> d!39705 m!152393))

(assert (=> b!130334 m!152429))

(declare-fun m!153677 () Bool)

(assert (=> b!130334 m!153677))

(declare-fun m!153679 () Bool)

(assert (=> b!130334 m!153679))

(declare-fun m!153681 () Bool)

(assert (=> b!130334 m!153681))

(declare-fun m!153683 () Bool)

(assert (=> b!130334 m!153683))

(declare-fun m!153685 () Bool)

(assert (=> b!130334 m!153685))

(assert (=> b!130334 m!153677))

(declare-fun m!153687 () Bool)

(assert (=> b!130334 m!153687))

(declare-fun m!153689 () Bool)

(assert (=> b!130334 m!153689))

(declare-fun m!153691 () Bool)

(assert (=> b!130334 m!153691))

(declare-fun m!153693 () Bool)

(assert (=> b!130334 m!153693))

(assert (=> b!130334 m!153679))

(declare-fun m!153695 () Bool)

(assert (=> b!130334 m!153695))

(declare-fun m!153697 () Bool)

(assert (=> b!130334 m!153697))

(declare-fun m!153699 () Bool)

(assert (=> b!130334 m!153699))

(declare-fun m!153701 () Bool)

(assert (=> b!130334 m!153701))

(declare-fun m!153703 () Bool)

(assert (=> b!130334 m!153703))

(declare-fun m!153705 () Bool)

(assert (=> b!130334 m!153705))

(assert (=> b!130334 m!153703))

(declare-fun m!153707 () Bool)

(assert (=> b!130334 m!153707))

(assert (=> b!130334 m!153695))

(assert (=> b!130329 m!152429))

(assert (=> b!130329 m!152429))

(declare-fun m!153709 () Bool)

(assert (=> b!130329 m!153709))

(declare-fun m!153711 () Bool)

(assert (=> bm!14182 m!153711))

(assert (=> b!130325 m!152429))

(assert (=> b!130325 m!152471))

(declare-fun m!153713 () Bool)

(assert (=> b!130325 m!153713))

(assert (=> b!130325 m!152471))

(declare-fun m!153715 () Bool)

(assert (=> b!130325 m!153715))

(assert (=> b!130325 m!153713))

(assert (=> b!130325 m!152429))

(declare-fun m!153717 () Bool)

(assert (=> b!130325 m!153717))

(declare-fun m!153719 () Bool)

(assert (=> b!130338 m!153719))

(declare-fun m!153721 () Bool)

(assert (=> b!130339 m!153721))

(assert (=> bm!14181 m!153691))

(declare-fun m!153723 () Bool)

(assert (=> bm!14183 m!153723))

(assert (=> b!130332 m!152429))

(assert (=> b!130332 m!152429))

(assert (=> b!130332 m!152431))

(declare-fun m!153725 () Bool)

(assert (=> b!130340 m!153725))

(assert (=> b!129746 d!39705))

(declare-fun d!39707 () Bool)

(assert (=> d!39707 (= (apply!113 lt!67401 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1472 (getValueByKey!168 (toList!865 lt!67401) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5429 () Bool)

(assert (= bs!5429 d!39707))

(declare-fun m!153727 () Bool)

(assert (=> bs!5429 m!153727))

(assert (=> bs!5429 m!153727))

(declare-fun m!153729 () Bool)

(assert (=> bs!5429 m!153729))

(assert (=> b!129806 d!39707))

(declare-fun d!39709 () Bool)

(assert (=> d!39709 (= (isDefined!122 (getValueByKey!168 (toList!865 lt!67214) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))) (not (isEmpty!407 (getValueByKey!168 (toList!865 lt!67214) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))))

(declare-fun bs!5430 () Bool)

(assert (= bs!5430 d!39709))

(assert (=> bs!5430 m!152399))

(declare-fun m!153731 () Bool)

(assert (=> bs!5430 m!153731))

(assert (=> b!129722 d!39709))

(declare-fun e!85039 () Option!174)

(declare-fun b!130344 () Bool)

(assert (=> b!130344 (= e!85039 (getValueByKey!168 (t!6139 (toList!865 lt!67214)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!130342 () Bool)

(declare-fun e!85038 () Option!174)

(assert (=> b!130342 (= e!85038 (Some!173 (_2!1306 (h!2328 (toList!865 lt!67214)))))))

(declare-fun b!130343 () Bool)

(assert (=> b!130343 (= e!85038 e!85039)))

(declare-fun c!24032 () Bool)

(assert (=> b!130343 (= c!24032 (and ((_ is Cons!1724) (toList!865 lt!67214)) (not (= (_1!1306 (h!2328 (toList!865 lt!67214))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))))

(declare-fun b!130345 () Bool)

(assert (=> b!130345 (= e!85039 None!172)))

(declare-fun c!24031 () Bool)

(declare-fun d!39711 () Bool)

(assert (=> d!39711 (= c!24031 (and ((_ is Cons!1724) (toList!865 lt!67214)) (= (_1!1306 (h!2328 (toList!865 lt!67214))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (=> d!39711 (= (getValueByKey!168 (toList!865 lt!67214) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) e!85038)))

(assert (= (and d!39711 c!24031) b!130342))

(assert (= (and d!39711 (not c!24031)) b!130343))

(assert (= (and b!130343 c!24032) b!130344))

(assert (= (and b!130343 (not c!24032)) b!130345))

(assert (=> b!130344 m!152255))

(declare-fun m!153733 () Bool)

(assert (=> b!130344 m!153733))

(assert (=> b!129722 d!39711))

(declare-fun d!39713 () Bool)

(assert (=> d!39713 (isDefined!122 (getValueByKey!168 (toList!865 lt!67214) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!67854 () Unit!4055)

(assert (=> d!39713 (= lt!67854 (choose!796 (toList!865 lt!67214) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!85040 () Bool)

(assert (=> d!39713 e!85040))

(declare-fun res!62864 () Bool)

(assert (=> d!39713 (=> (not res!62864) (not e!85040))))

(assert (=> d!39713 (= res!62864 (isStrictlySorted!314 (toList!865 lt!67214)))))

(assert (=> d!39713 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67214) #b1000000000000000000000000000000000000000000000000000000000000000) lt!67854)))

(declare-fun b!130346 () Bool)

(assert (=> b!130346 (= e!85040 (containsKey!172 (toList!865 lt!67214) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!39713 res!62864) b!130346))

(assert (=> d!39713 m!152725))

(assert (=> d!39713 m!152725))

(assert (=> d!39713 m!152727))

(declare-fun m!153735 () Bool)

(assert (=> d!39713 m!153735))

(assert (=> d!39713 m!153097))

(assert (=> b!130346 m!152721))

(assert (=> b!129879 d!39713))

(assert (=> b!129879 d!39585))

(assert (=> b!129879 d!39587))

(assert (=> b!129783 d!39343))

(declare-fun d!39715 () Bool)

(declare-fun e!85042 () Bool)

(assert (=> d!39715 e!85042))

(declare-fun res!62865 () Bool)

(assert (=> d!39715 (=> res!62865 e!85042)))

(declare-fun lt!67855 () Bool)

(assert (=> d!39715 (= res!62865 (not lt!67855))))

(declare-fun lt!67858 () Bool)

(assert (=> d!39715 (= lt!67855 lt!67858)))

(declare-fun lt!67857 () Unit!4055)

(declare-fun e!85041 () Unit!4055)

(assert (=> d!39715 (= lt!67857 e!85041)))

(declare-fun c!24033 () Bool)

(assert (=> d!39715 (= c!24033 lt!67858)))

(assert (=> d!39715 (= lt!67858 (containsKey!172 (toList!865 (+!167 lt!67389 (tuple2!2593 lt!67388 lt!67387))) lt!67385))))

(assert (=> d!39715 (= (contains!886 (+!167 lt!67389 (tuple2!2593 lt!67388 lt!67387)) lt!67385) lt!67855)))

(declare-fun b!130347 () Bool)

(declare-fun lt!67856 () Unit!4055)

(assert (=> b!130347 (= e!85041 lt!67856)))

(assert (=> b!130347 (= lt!67856 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 (+!167 lt!67389 (tuple2!2593 lt!67388 lt!67387))) lt!67385))))

(assert (=> b!130347 (isDefined!122 (getValueByKey!168 (toList!865 (+!167 lt!67389 (tuple2!2593 lt!67388 lt!67387))) lt!67385))))

(declare-fun b!130348 () Bool)

(declare-fun Unit!4090 () Unit!4055)

(assert (=> b!130348 (= e!85041 Unit!4090)))

(declare-fun b!130349 () Bool)

(assert (=> b!130349 (= e!85042 (isDefined!122 (getValueByKey!168 (toList!865 (+!167 lt!67389 (tuple2!2593 lt!67388 lt!67387))) lt!67385)))))

(assert (= (and d!39715 c!24033) b!130347))

(assert (= (and d!39715 (not c!24033)) b!130348))

(assert (= (and d!39715 (not res!62865)) b!130349))

(declare-fun m!153737 () Bool)

(assert (=> d!39715 m!153737))

(declare-fun m!153739 () Bool)

(assert (=> b!130347 m!153739))

(declare-fun m!153741 () Bool)

(assert (=> b!130347 m!153741))

(assert (=> b!130347 m!153741))

(declare-fun m!153743 () Bool)

(assert (=> b!130347 m!153743))

(assert (=> b!130349 m!153741))

(assert (=> b!130349 m!153741))

(assert (=> b!130349 m!153743))

(assert (=> b!129783 d!39715))

(declare-fun d!39717 () Bool)

(assert (=> d!39717 (not (contains!886 (+!167 lt!67389 (tuple2!2593 lt!67388 lt!67387)) lt!67385))))

(declare-fun lt!67861 () Unit!4055)

(declare-fun choose!805 (ListLongMap!1699 (_ BitVec 64) V!3459 (_ BitVec 64)) Unit!4055)

(assert (=> d!39717 (= lt!67861 (choose!805 lt!67389 lt!67388 lt!67387 lt!67385))))

(declare-fun e!85045 () Bool)

(assert (=> d!39717 e!85045))

(declare-fun res!62868 () Bool)

(assert (=> d!39717 (=> (not res!62868) (not e!85045))))

(assert (=> d!39717 (= res!62868 (not (contains!886 lt!67389 lt!67385)))))

(assert (=> d!39717 (= (addStillNotContains!60 lt!67389 lt!67388 lt!67387 lt!67385) lt!67861)))

(declare-fun b!130353 () Bool)

(assert (=> b!130353 (= e!85045 (not (= lt!67388 lt!67385)))))

(assert (= (and d!39717 res!62868) b!130353))

(assert (=> d!39717 m!152513))

(assert (=> d!39717 m!152513))

(assert (=> d!39717 m!152515))

(declare-fun m!153745 () Bool)

(assert (=> d!39717 m!153745))

(declare-fun m!153747 () Bool)

(assert (=> d!39717 m!153747))

(assert (=> b!129783 d!39717))

(declare-fun d!39719 () Bool)

(declare-fun e!85046 () Bool)

(assert (=> d!39719 e!85046))

(declare-fun res!62870 () Bool)

(assert (=> d!39719 (=> (not res!62870) (not e!85046))))

(declare-fun lt!67865 () ListLongMap!1699)

(assert (=> d!39719 (= res!62870 (contains!886 lt!67865 (_1!1306 (tuple2!2593 lt!67388 lt!67387))))))

(declare-fun lt!67864 () List!1728)

(assert (=> d!39719 (= lt!67865 (ListLongMap!1700 lt!67864))))

(declare-fun lt!67863 () Unit!4055)

(declare-fun lt!67862 () Unit!4055)

(assert (=> d!39719 (= lt!67863 lt!67862)))

(assert (=> d!39719 (= (getValueByKey!168 lt!67864 (_1!1306 (tuple2!2593 lt!67388 lt!67387))) (Some!173 (_2!1306 (tuple2!2593 lt!67388 lt!67387))))))

(assert (=> d!39719 (= lt!67862 (lemmaContainsTupThenGetReturnValue!85 lt!67864 (_1!1306 (tuple2!2593 lt!67388 lt!67387)) (_2!1306 (tuple2!2593 lt!67388 lt!67387))))))

(assert (=> d!39719 (= lt!67864 (insertStrictlySorted!87 (toList!865 lt!67389) (_1!1306 (tuple2!2593 lt!67388 lt!67387)) (_2!1306 (tuple2!2593 lt!67388 lt!67387))))))

(assert (=> d!39719 (= (+!167 lt!67389 (tuple2!2593 lt!67388 lt!67387)) lt!67865)))

(declare-fun b!130354 () Bool)

(declare-fun res!62869 () Bool)

(assert (=> b!130354 (=> (not res!62869) (not e!85046))))

(assert (=> b!130354 (= res!62869 (= (getValueByKey!168 (toList!865 lt!67865) (_1!1306 (tuple2!2593 lt!67388 lt!67387))) (Some!173 (_2!1306 (tuple2!2593 lt!67388 lt!67387)))))))

(declare-fun b!130355 () Bool)

(assert (=> b!130355 (= e!85046 (contains!887 (toList!865 lt!67865) (tuple2!2593 lt!67388 lt!67387)))))

(assert (= (and d!39719 res!62870) b!130354))

(assert (= (and b!130354 res!62869) b!130355))

(declare-fun m!153749 () Bool)

(assert (=> d!39719 m!153749))

(declare-fun m!153751 () Bool)

(assert (=> d!39719 m!153751))

(declare-fun m!153753 () Bool)

(assert (=> d!39719 m!153753))

(declare-fun m!153755 () Bool)

(assert (=> d!39719 m!153755))

(declare-fun m!153757 () Bool)

(assert (=> b!130354 m!153757))

(declare-fun m!153759 () Bool)

(assert (=> b!130355 m!153759))

(assert (=> b!129783 d!39719))

(declare-fun d!39721 () Bool)

(declare-fun e!85047 () Bool)

(assert (=> d!39721 e!85047))

(declare-fun res!62872 () Bool)

(assert (=> d!39721 (=> (not res!62872) (not e!85047))))

(declare-fun lt!67869 () ListLongMap!1699)

(assert (=> d!39721 (= res!62872 (contains!886 lt!67869 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!67868 () List!1728)

(assert (=> d!39721 (= lt!67869 (ListLongMap!1700 lt!67868))))

(declare-fun lt!67867 () Unit!4055)

(declare-fun lt!67866 () Unit!4055)

(assert (=> d!39721 (= lt!67867 lt!67866)))

(assert (=> d!39721 (= (getValueByKey!168 lt!67868 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!173 (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39721 (= lt!67866 (lemmaContainsTupThenGetReturnValue!85 lt!67868 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39721 (= lt!67868 (insertStrictlySorted!87 (toList!865 call!14118) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39721 (= (+!167 call!14118 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!67869)))

(declare-fun b!130356 () Bool)

(declare-fun res!62871 () Bool)

(assert (=> b!130356 (=> (not res!62871) (not e!85047))))

(assert (=> b!130356 (= res!62871 (= (getValueByKey!168 (toList!865 lt!67869) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!173 (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!130357 () Bool)

(assert (=> b!130357 (= e!85047 (contains!887 (toList!865 lt!67869) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!39721 res!62872) b!130356))

(assert (= (and b!130356 res!62871) b!130357))

(declare-fun m!153761 () Bool)

(assert (=> d!39721 m!153761))

(declare-fun m!153763 () Bool)

(assert (=> d!39721 m!153763))

(declare-fun m!153765 () Bool)

(assert (=> d!39721 m!153765))

(declare-fun m!153767 () Bool)

(assert (=> d!39721 m!153767))

(declare-fun m!153769 () Bool)

(assert (=> b!130356 m!153769))

(declare-fun m!153771 () Bool)

(assert (=> b!130357 m!153771))

(assert (=> b!129783 d!39721))

(declare-fun d!39723 () Bool)

(declare-fun e!85048 () Bool)

(assert (=> d!39723 e!85048))

(declare-fun res!62874 () Bool)

(assert (=> d!39723 (=> (not res!62874) (not e!85048))))

(declare-fun lt!67873 () ListLongMap!1699)

(assert (=> d!39723 (= res!62874 (contains!886 lt!67873 (_1!1306 (ite (or c!23873 c!23874) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))))

(declare-fun lt!67872 () List!1728)

(assert (=> d!39723 (= lt!67873 (ListLongMap!1700 lt!67872))))

(declare-fun lt!67871 () Unit!4055)

(declare-fun lt!67870 () Unit!4055)

(assert (=> d!39723 (= lt!67871 lt!67870)))

(assert (=> d!39723 (= (getValueByKey!168 lt!67872 (_1!1306 (ite (or c!23873 c!23874) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))) (Some!173 (_2!1306 (ite (or c!23873 c!23874) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))))

(assert (=> d!39723 (= lt!67870 (lemmaContainsTupThenGetReturnValue!85 lt!67872 (_1!1306 (ite (or c!23873 c!23874) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))) (_2!1306 (ite (or c!23873 c!23874) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))))

(assert (=> d!39723 (= lt!67872 (insertStrictlySorted!87 (toList!865 (ite c!23873 call!14111 (ite c!23874 call!14110 call!14112))) (_1!1306 (ite (or c!23873 c!23874) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))) (_2!1306 (ite (or c!23873 c!23874) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))))

(assert (=> d!39723 (= (+!167 (ite c!23873 call!14111 (ite c!23874 call!14110 call!14112)) (ite (or c!23873 c!23874) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))) lt!67873)))

(declare-fun b!130358 () Bool)

(declare-fun res!62873 () Bool)

(assert (=> b!130358 (=> (not res!62873) (not e!85048))))

(assert (=> b!130358 (= res!62873 (= (getValueByKey!168 (toList!865 lt!67873) (_1!1306 (ite (or c!23873 c!23874) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))) (Some!173 (_2!1306 (ite (or c!23873 c!23874) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))))

(declare-fun b!130359 () Bool)

(assert (=> b!130359 (= e!85048 (contains!887 (toList!865 lt!67873) (ite (or c!23873 c!23874) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(assert (= (and d!39723 res!62874) b!130358))

(assert (= (and b!130358 res!62873) b!130359))

(declare-fun m!153773 () Bool)

(assert (=> d!39723 m!153773))

(declare-fun m!153775 () Bool)

(assert (=> d!39723 m!153775))

(declare-fun m!153777 () Bool)

(assert (=> d!39723 m!153777))

(declare-fun m!153779 () Bool)

(assert (=> d!39723 m!153779))

(declare-fun m!153781 () Bool)

(assert (=> b!130358 m!153781))

(declare-fun m!153783 () Bool)

(assert (=> b!130359 m!153783))

(assert (=> bm!14106 d!39723))

(declare-fun d!39725 () Bool)

(assert (=> d!39725 (= (apply!113 lt!67348 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1472 (getValueByKey!168 (toList!865 lt!67348) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5431 () Bool)

(assert (= bs!5431 d!39725))

(declare-fun m!153785 () Bool)

(assert (=> bs!5431 m!153785))

(assert (=> bs!5431 m!153785))

(declare-fun m!153787 () Bool)

(assert (=> bs!5431 m!153787))

(assert (=> b!129740 d!39725))

(declare-fun d!39727 () Bool)

(declare-fun e!85050 () Bool)

(assert (=> d!39727 e!85050))

(declare-fun res!62875 () Bool)

(assert (=> d!39727 (=> res!62875 e!85050)))

(declare-fun lt!67874 () Bool)

(assert (=> d!39727 (= res!62875 (not lt!67874))))

(declare-fun lt!67877 () Bool)

(assert (=> d!39727 (= lt!67874 lt!67877)))

(declare-fun lt!67876 () Unit!4055)

(declare-fun e!85049 () Unit!4055)

(assert (=> d!39727 (= lt!67876 e!85049)))

(declare-fun c!24034 () Bool)

(assert (=> d!39727 (= c!24034 lt!67877)))

(assert (=> d!39727 (= lt!67877 (containsKey!172 (toList!865 lt!67444) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39727 (= (contains!886 lt!67444 (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67874)))

(declare-fun b!130360 () Bool)

(declare-fun lt!67875 () Unit!4055)

(assert (=> b!130360 (= e!85049 lt!67875)))

(assert (=> b!130360 (= lt!67875 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67444) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> b!130360 (isDefined!122 (getValueByKey!168 (toList!865 lt!67444) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130361 () Bool)

(declare-fun Unit!4091 () Unit!4055)

(assert (=> b!130361 (= e!85049 Unit!4091)))

(declare-fun b!130362 () Bool)

(assert (=> b!130362 (= e!85050 (isDefined!122 (getValueByKey!168 (toList!865 lt!67444) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (= (and d!39727 c!24034) b!130360))

(assert (= (and d!39727 (not c!24034)) b!130361))

(assert (= (and d!39727 (not res!62875)) b!130362))

(declare-fun m!153789 () Bool)

(assert (=> d!39727 m!153789))

(declare-fun m!153791 () Bool)

(assert (=> b!130360 m!153791))

(assert (=> b!130360 m!152647))

(assert (=> b!130360 m!152647))

(declare-fun m!153793 () Bool)

(assert (=> b!130360 m!153793))

(assert (=> b!130362 m!152647))

(assert (=> b!130362 m!152647))

(assert (=> b!130362 m!153793))

(assert (=> d!39399 d!39727))

(declare-fun e!85052 () Option!174)

(declare-fun b!130365 () Bool)

(assert (=> b!130365 (= e!85052 (getValueByKey!168 (t!6139 lt!67443) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130363 () Bool)

(declare-fun e!85051 () Option!174)

(assert (=> b!130363 (= e!85051 (Some!173 (_2!1306 (h!2328 lt!67443))))))

(declare-fun b!130364 () Bool)

(assert (=> b!130364 (= e!85051 e!85052)))

(declare-fun c!24036 () Bool)

(assert (=> b!130364 (= c!24036 (and ((_ is Cons!1724) lt!67443) (not (= (_1!1306 (h!2328 lt!67443)) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun b!130366 () Bool)

(assert (=> b!130366 (= e!85052 None!172)))

(declare-fun c!24035 () Bool)

(declare-fun d!39729 () Bool)

(assert (=> d!39729 (= c!24035 (and ((_ is Cons!1724) lt!67443) (= (_1!1306 (h!2328 lt!67443)) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39729 (= (getValueByKey!168 lt!67443 (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) e!85051)))

(assert (= (and d!39729 c!24035) b!130363))

(assert (= (and d!39729 (not c!24035)) b!130364))

(assert (= (and b!130364 c!24036) b!130365))

(assert (= (and b!130364 (not c!24036)) b!130366))

(declare-fun m!153795 () Bool)

(assert (=> b!130365 m!153795))

(assert (=> d!39399 d!39729))

(declare-fun d!39731 () Bool)

(assert (=> d!39731 (= (getValueByKey!168 lt!67443 (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) (Some!173 (_2!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun lt!67878 () Unit!4055)

(assert (=> d!39731 (= lt!67878 (choose!804 lt!67443 (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun e!85053 () Bool)

(assert (=> d!39731 e!85053))

(declare-fun res!62876 () Bool)

(assert (=> d!39731 (=> (not res!62876) (not e!85053))))

(assert (=> d!39731 (= res!62876 (isStrictlySorted!314 lt!67443))))

(assert (=> d!39731 (= (lemmaContainsTupThenGetReturnValue!85 lt!67443 (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67878)))

(declare-fun b!130367 () Bool)

(declare-fun res!62877 () Bool)

(assert (=> b!130367 (=> (not res!62877) (not e!85053))))

(assert (=> b!130367 (= res!62877 (containsKey!172 lt!67443 (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130368 () Bool)

(assert (=> b!130368 (= e!85053 (contains!887 lt!67443 (tuple2!2593 (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (= (and d!39731 res!62876) b!130367))

(assert (= (and b!130367 res!62877) b!130368))

(assert (=> d!39731 m!152641))

(declare-fun m!153797 () Bool)

(assert (=> d!39731 m!153797))

(declare-fun m!153799 () Bool)

(assert (=> d!39731 m!153799))

(declare-fun m!153801 () Bool)

(assert (=> b!130367 m!153801))

(declare-fun m!153803 () Bool)

(assert (=> b!130368 m!153803))

(assert (=> d!39399 d!39731))

(declare-fun b!130369 () Bool)

(declare-fun e!85055 () List!1728)

(declare-fun call!14190 () List!1728)

(assert (=> b!130369 (= e!85055 call!14190)))

(declare-fun b!130370 () Bool)

(declare-fun e!85054 () List!1728)

(declare-fun call!14189 () List!1728)

(assert (=> b!130370 (= e!85054 call!14189)))

(declare-fun b!130371 () Bool)

(declare-fun e!85056 () List!1728)

(declare-fun call!14188 () List!1728)

(assert (=> b!130371 (= e!85056 call!14188)))

(declare-fun b!130372 () Bool)

(assert (=> b!130372 (= e!85056 e!85054)))

(declare-fun c!24039 () Bool)

(assert (=> b!130372 (= c!24039 (and ((_ is Cons!1724) (toList!865 lt!67223)) (= (_1!1306 (h!2328 (toList!865 lt!67223))) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun bm!14185 () Bool)

(assert (=> bm!14185 (= call!14190 call!14189)))

(declare-fun c!24040 () Bool)

(declare-fun bm!14186 () Bool)

(declare-fun e!85057 () List!1728)

(assert (=> bm!14186 (= call!14188 ($colon$colon!90 e!85057 (ite c!24040 (h!2328 (toList!865 lt!67223)) (tuple2!2593 (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun c!24038 () Bool)

(assert (=> bm!14186 (= c!24038 c!24040)))

(declare-fun d!39733 () Bool)

(declare-fun e!85058 () Bool)

(assert (=> d!39733 e!85058))

(declare-fun res!62879 () Bool)

(assert (=> d!39733 (=> (not res!62879) (not e!85058))))

(declare-fun lt!67879 () List!1728)

(assert (=> d!39733 (= res!62879 (isStrictlySorted!314 lt!67879))))

(assert (=> d!39733 (= lt!67879 e!85056)))

(assert (=> d!39733 (= c!24040 (and ((_ is Cons!1724) (toList!865 lt!67223)) (bvslt (_1!1306 (h!2328 (toList!865 lt!67223))) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39733 (isStrictlySorted!314 (toList!865 lt!67223))))

(assert (=> d!39733 (= (insertStrictlySorted!87 (toList!865 lt!67223) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67879)))

(declare-fun b!130373 () Bool)

(declare-fun res!62878 () Bool)

(assert (=> b!130373 (=> (not res!62878) (not e!85058))))

(assert (=> b!130373 (= res!62878 (containsKey!172 lt!67879 (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130374 () Bool)

(assert (=> b!130374 (= e!85058 (contains!887 lt!67879 (tuple2!2593 (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!130375 () Bool)

(assert (=> b!130375 (= e!85057 (insertStrictlySorted!87 (t!6139 (toList!865 lt!67223)) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130376 () Bool)

(declare-fun c!24037 () Bool)

(assert (=> b!130376 (= e!85057 (ite c!24039 (t!6139 (toList!865 lt!67223)) (ite c!24037 (Cons!1724 (h!2328 (toList!865 lt!67223)) (t!6139 (toList!865 lt!67223))) Nil!1725)))))

(declare-fun b!130377 () Bool)

(assert (=> b!130377 (= e!85055 call!14190)))

(declare-fun bm!14187 () Bool)

(assert (=> bm!14187 (= call!14189 call!14188)))

(declare-fun b!130378 () Bool)

(assert (=> b!130378 (= c!24037 (and ((_ is Cons!1724) (toList!865 lt!67223)) (bvsgt (_1!1306 (h!2328 (toList!865 lt!67223))) (_1!1306 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> b!130378 (= e!85054 e!85055)))

(assert (= (and d!39733 c!24040) b!130371))

(assert (= (and d!39733 (not c!24040)) b!130372))

(assert (= (and b!130372 c!24039) b!130370))

(assert (= (and b!130372 (not c!24039)) b!130378))

(assert (= (and b!130378 c!24037) b!130377))

(assert (= (and b!130378 (not c!24037)) b!130369))

(assert (= (or b!130377 b!130369) bm!14185))

(assert (= (or b!130370 bm!14185) bm!14187))

(assert (= (or b!130371 bm!14187) bm!14186))

(assert (= (and bm!14186 c!24038) b!130375))

(assert (= (and bm!14186 (not c!24038)) b!130376))

(assert (= (and d!39733 res!62879) b!130373))

(assert (= (and b!130373 res!62878) b!130374))

(declare-fun m!153805 () Bool)

(assert (=> bm!14186 m!153805))

(declare-fun m!153807 () Bool)

(assert (=> b!130375 m!153807))

(declare-fun m!153809 () Bool)

(assert (=> d!39733 m!153809))

(declare-fun m!153811 () Bool)

(assert (=> d!39733 m!153811))

(declare-fun m!153813 () Bool)

(assert (=> b!130374 m!153813))

(declare-fun m!153815 () Bool)

(assert (=> b!130373 m!153815))

(assert (=> d!39399 d!39733))

(declare-fun d!39735 () Bool)

(assert (=> d!39735 (= (get!1472 (getValueByKey!168 (toList!865 lt!67223) lt!67205)) (v!3163 (getValueByKey!168 (toList!865 lt!67223) lt!67205)))))

(assert (=> d!39413 d!39735))

(declare-fun b!130381 () Bool)

(declare-fun e!85060 () Option!174)

(assert (=> b!130381 (= e!85060 (getValueByKey!168 (t!6139 (toList!865 lt!67223)) lt!67205))))

(declare-fun b!130379 () Bool)

(declare-fun e!85059 () Option!174)

(assert (=> b!130379 (= e!85059 (Some!173 (_2!1306 (h!2328 (toList!865 lt!67223)))))))

(declare-fun b!130380 () Bool)

(assert (=> b!130380 (= e!85059 e!85060)))

(declare-fun c!24042 () Bool)

(assert (=> b!130380 (= c!24042 (and ((_ is Cons!1724) (toList!865 lt!67223)) (not (= (_1!1306 (h!2328 (toList!865 lt!67223))) lt!67205))))))

(declare-fun b!130382 () Bool)

(assert (=> b!130382 (= e!85060 None!172)))

(declare-fun d!39737 () Bool)

(declare-fun c!24041 () Bool)

(assert (=> d!39737 (= c!24041 (and ((_ is Cons!1724) (toList!865 lt!67223)) (= (_1!1306 (h!2328 (toList!865 lt!67223))) lt!67205)))))

(assert (=> d!39737 (= (getValueByKey!168 (toList!865 lt!67223) lt!67205) e!85059)))

(assert (= (and d!39737 c!24041) b!130379))

(assert (= (and d!39737 (not c!24041)) b!130380))

(assert (= (and b!130380 c!24042) b!130381))

(assert (= (and b!130380 (not c!24042)) b!130382))

(declare-fun m!153817 () Bool)

(assert (=> b!130381 m!153817))

(assert (=> d!39413 d!39737))

(declare-fun d!39739 () Bool)

(declare-fun e!85062 () Bool)

(assert (=> d!39739 e!85062))

(declare-fun res!62880 () Bool)

(assert (=> d!39739 (=> res!62880 e!85062)))

(declare-fun lt!67880 () Bool)

(assert (=> d!39739 (= res!62880 (not lt!67880))))

(declare-fun lt!67883 () Bool)

(assert (=> d!39739 (= lt!67880 lt!67883)))

(declare-fun lt!67882 () Unit!4055)

(declare-fun e!85061 () Unit!4055)

(assert (=> d!39739 (= lt!67882 e!85061)))

(declare-fun c!24043 () Bool)

(assert (=> d!39739 (= c!24043 lt!67883)))

(assert (=> d!39739 (= lt!67883 (containsKey!172 (toList!865 (map!1395 (_2!1307 lt!67585))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> d!39739 (= (contains!886 (map!1395 (_2!1307 lt!67585)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) lt!67880)))

(declare-fun b!130383 () Bool)

(declare-fun lt!67881 () Unit!4055)

(assert (=> b!130383 (= e!85061 lt!67881)))

(assert (=> b!130383 (= lt!67881 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 (map!1395 (_2!1307 lt!67585))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> b!130383 (isDefined!122 (getValueByKey!168 (toList!865 (map!1395 (_2!1307 lt!67585))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun b!130384 () Bool)

(declare-fun Unit!4092 () Unit!4055)

(assert (=> b!130384 (= e!85061 Unit!4092)))

(declare-fun b!130385 () Bool)

(assert (=> b!130385 (= e!85062 (isDefined!122 (getValueByKey!168 (toList!865 (map!1395 (_2!1307 lt!67585))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(assert (= (and d!39739 c!24043) b!130383))

(assert (= (and d!39739 (not c!24043)) b!130384))

(assert (= (and d!39739 (not res!62880)) b!130385))

(assert (=> d!39739 m!152209))

(declare-fun m!153819 () Bool)

(assert (=> d!39739 m!153819))

(assert (=> b!130383 m!152209))

(declare-fun m!153821 () Bool)

(assert (=> b!130383 m!153821))

(assert (=> b!130383 m!152209))

(declare-fun m!153823 () Bool)

(assert (=> b!130383 m!153823))

(assert (=> b!130383 m!153823))

(declare-fun m!153825 () Bool)

(assert (=> b!130383 m!153825))

(assert (=> b!130385 m!152209))

(assert (=> b!130385 m!153823))

(assert (=> b!130385 m!153823))

(assert (=> b!130385 m!153825))

(assert (=> b!130000 d!39739))

(declare-fun d!39741 () Bool)

(assert (=> d!39741 (= (map!1395 (_2!1307 lt!67585)) (getCurrentListMap!536 (_keys!4565 (_2!1307 lt!67585)) (_values!2807 (_2!1307 lt!67585)) (mask!7102 (_2!1307 lt!67585)) (extraKeys!2597 (_2!1307 lt!67585)) (zeroValue!2683 (_2!1307 lt!67585)) (minValue!2683 (_2!1307 lt!67585)) #b00000000000000000000000000000000 (defaultEntry!2824 (_2!1307 lt!67585))))))

(declare-fun bs!5432 () Bool)

(assert (= bs!5432 d!39741))

(declare-fun m!153827 () Bool)

(assert (=> bs!5432 m!153827))

(assert (=> b!130000 d!39741))

(declare-fun d!39743 () Bool)

(declare-fun res!62881 () Bool)

(declare-fun e!85063 () Bool)

(assert (=> d!39743 (=> res!62881 e!85063)))

(assert (=> d!39743 (= res!62881 (and ((_ is Cons!1724) (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))) (= (_1!1306 (h!2328 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))) lt!67219)))))

(assert (=> d!39743 (= (containsKey!172 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67219) e!85063)))

(declare-fun b!130386 () Bool)

(declare-fun e!85064 () Bool)

(assert (=> b!130386 (= e!85063 e!85064)))

(declare-fun res!62882 () Bool)

(assert (=> b!130386 (=> (not res!62882) (not e!85064))))

(assert (=> b!130386 (= res!62882 (and (or (not ((_ is Cons!1724) (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))) (bvsle (_1!1306 (h!2328 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))) lt!67219)) ((_ is Cons!1724) (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))) (bvslt (_1!1306 (h!2328 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))) lt!67219)))))

(declare-fun b!130387 () Bool)

(assert (=> b!130387 (= e!85064 (containsKey!172 (t!6139 (toList!865 (+!167 lt!67213 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))) lt!67219))))

(assert (= (and d!39743 (not res!62881)) b!130386))

(assert (= (and b!130386 res!62882) b!130387))

(declare-fun m!153829 () Bool)

(assert (=> b!130387 m!153829))

(assert (=> d!39397 d!39743))

(declare-fun b!130390 () Bool)

(declare-fun e!85066 () Option!174)

(assert (=> b!130390 (= e!85066 (getValueByKey!168 (t!6139 (toList!865 lt!67618)) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130388 () Bool)

(declare-fun e!85065 () Option!174)

(assert (=> b!130388 (= e!85065 (Some!173 (_2!1306 (h!2328 (toList!865 lt!67618)))))))

(declare-fun b!130389 () Bool)

(assert (=> b!130389 (= e!85065 e!85066)))

(declare-fun c!24045 () Bool)

(assert (=> b!130389 (= c!24045 (and ((_ is Cons!1724) (toList!865 lt!67618)) (not (= (_1!1306 (h!2328 (toList!865 lt!67618))) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun b!130391 () Bool)

(assert (=> b!130391 (= e!85066 None!172)))

(declare-fun d!39745 () Bool)

(declare-fun c!24044 () Bool)

(assert (=> d!39745 (= c!24044 (and ((_ is Cons!1724) (toList!865 lt!67618)) (= (_1!1306 (h!2328 (toList!865 lt!67618))) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39745 (= (getValueByKey!168 (toList!865 lt!67618) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) e!85065)))

(assert (= (and d!39745 c!24044) b!130388))

(assert (= (and d!39745 (not c!24044)) b!130389))

(assert (= (and b!130389 c!24045) b!130390))

(assert (= (and b!130389 (not c!24045)) b!130391))

(declare-fun m!153831 () Bool)

(assert (=> b!130390 m!153831))

(assert (=> b!130009 d!39745))

(declare-fun b!130394 () Bool)

(declare-fun e!85068 () Option!174)

(assert (=> b!130394 (= e!85068 (getValueByKey!168 (t!6139 (t!6139 (toList!865 lt!67149))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun b!130392 () Bool)

(declare-fun e!85067 () Option!174)

(assert (=> b!130392 (= e!85067 (Some!173 (_2!1306 (h!2328 (t!6139 (toList!865 lt!67149))))))))

(declare-fun b!130393 () Bool)

(assert (=> b!130393 (= e!85067 e!85068)))

(declare-fun c!24047 () Bool)

(assert (=> b!130393 (= c!24047 (and ((_ is Cons!1724) (t!6139 (toList!865 lt!67149))) (not (= (_1!1306 (h!2328 (t!6139 (toList!865 lt!67149)))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))))

(declare-fun b!130395 () Bool)

(assert (=> b!130395 (= e!85068 None!172)))

(declare-fun c!24046 () Bool)

(declare-fun d!39747 () Bool)

(assert (=> d!39747 (= c!24046 (and ((_ is Cons!1724) (t!6139 (toList!865 lt!67149))) (= (_1!1306 (h!2328 (t!6139 (toList!865 lt!67149)))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(assert (=> d!39747 (= (getValueByKey!168 (t!6139 (toList!865 lt!67149)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) e!85067)))

(assert (= (and d!39747 c!24046) b!130392))

(assert (= (and d!39747 (not c!24046)) b!130393))

(assert (= (and b!130393 c!24047) b!130394))

(assert (= (and b!130393 (not c!24047)) b!130395))

(assert (=> b!130394 m!152209))

(declare-fun m!153833 () Bool)

(assert (=> b!130394 m!153833))

(assert (=> b!129718 d!39747))

(declare-fun d!39749 () Bool)

(assert (=> d!39749 (= (get!1472 (getValueByKey!168 (toList!865 (+!167 lt!67216 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67207)) (v!3163 (getValueByKey!168 (toList!865 (+!167 lt!67216 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67207)))))

(assert (=> d!39393 d!39749))

(declare-fun e!85070 () Option!174)

(declare-fun b!130398 () Bool)

(assert (=> b!130398 (= e!85070 (getValueByKey!168 (t!6139 (toList!865 (+!167 lt!67216 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))) lt!67207))))

(declare-fun e!85069 () Option!174)

(declare-fun b!130396 () Bool)

(assert (=> b!130396 (= e!85069 (Some!173 (_2!1306 (h!2328 (toList!865 (+!167 lt!67216 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))))

(declare-fun b!130397 () Bool)

(assert (=> b!130397 (= e!85069 e!85070)))

(declare-fun c!24049 () Bool)

(assert (=> b!130397 (= c!24049 (and ((_ is Cons!1724) (toList!865 (+!167 lt!67216 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))) (not (= (_1!1306 (h!2328 (toList!865 (+!167 lt!67216 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))) lt!67207))))))

(declare-fun b!130399 () Bool)

(assert (=> b!130399 (= e!85070 None!172)))

(declare-fun c!24048 () Bool)

(declare-fun d!39751 () Bool)

(assert (=> d!39751 (= c!24048 (and ((_ is Cons!1724) (toList!865 (+!167 lt!67216 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))) (= (_1!1306 (h!2328 (toList!865 (+!167 lt!67216 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))) lt!67207)))))

(assert (=> d!39751 (= (getValueByKey!168 (toList!865 (+!167 lt!67216 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!67207) e!85069)))

(assert (= (and d!39751 c!24048) b!130396))

(assert (= (and d!39751 (not c!24048)) b!130397))

(assert (= (and b!130397 c!24049) b!130398))

(assert (= (and b!130397 (not c!24049)) b!130399))

(declare-fun m!153835 () Bool)

(assert (=> b!130398 m!153835))

(assert (=> d!39393 d!39751))

(declare-fun d!39753 () Bool)

(declare-fun e!85072 () Bool)

(assert (=> d!39753 e!85072))

(declare-fun res!62883 () Bool)

(assert (=> d!39753 (=> res!62883 e!85072)))

(declare-fun lt!67884 () Bool)

(assert (=> d!39753 (= res!62883 (not lt!67884))))

(declare-fun lt!67887 () Bool)

(assert (=> d!39753 (= lt!67884 lt!67887)))

(declare-fun lt!67886 () Unit!4055)

(declare-fun e!85071 () Unit!4055)

(assert (=> d!39753 (= lt!67886 e!85071)))

(declare-fun c!24050 () Bool)

(assert (=> d!39753 (= c!24050 lt!67887)))

(assert (=> d!39753 (= lt!67887 (containsKey!172 (toList!865 lt!67401) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!39753 (= (contains!886 lt!67401 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) lt!67884)))

(declare-fun b!130400 () Bool)

(declare-fun lt!67885 () Unit!4055)

(assert (=> b!130400 (= e!85071 lt!67885)))

(assert (=> b!130400 (= lt!67885 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67401) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!130400 (isDefined!122 (getValueByKey!168 (toList!865 lt!67401) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!130401 () Bool)

(declare-fun Unit!4093 () Unit!4055)

(assert (=> b!130401 (= e!85071 Unit!4093)))

(declare-fun b!130402 () Bool)

(assert (=> b!130402 (= e!85072 (isDefined!122 (getValueByKey!168 (toList!865 lt!67401) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))))

(assert (= (and d!39753 c!24050) b!130400))

(assert (= (and d!39753 (not c!24050)) b!130401))

(assert (= (and d!39753 (not res!62883)) b!130402))

(assert (=> d!39753 m!152429))

(declare-fun m!153837 () Bool)

(assert (=> d!39753 m!153837))

(assert (=> b!130400 m!152429))

(declare-fun m!153839 () Bool)

(assert (=> b!130400 m!153839))

(assert (=> b!130400 m!152429))

(declare-fun m!153841 () Bool)

(assert (=> b!130400 m!153841))

(assert (=> b!130400 m!153841))

(declare-fun m!153843 () Bool)

(assert (=> b!130400 m!153843))

(assert (=> b!130402 m!152429))

(assert (=> b!130402 m!153841))

(assert (=> b!130402 m!153841))

(assert (=> b!130402 m!153843))

(assert (=> b!129797 d!39753))

(declare-fun d!39755 () Bool)

(declare-fun e!85074 () Bool)

(assert (=> d!39755 e!85074))

(declare-fun res!62884 () Bool)

(assert (=> d!39755 (=> res!62884 e!85074)))

(declare-fun lt!67888 () Bool)

(assert (=> d!39755 (= res!62884 (not lt!67888))))

(declare-fun lt!67891 () Bool)

(assert (=> d!39755 (= lt!67888 lt!67891)))

(declare-fun lt!67890 () Unit!4055)

(declare-fun e!85073 () Unit!4055)

(assert (=> d!39755 (= lt!67890 e!85073)))

(declare-fun c!24051 () Bool)

(assert (=> d!39755 (= c!24051 lt!67891)))

(assert (=> d!39755 (= lt!67891 (containsKey!172 (toList!865 lt!67499) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!39755 (= (contains!886 lt!67499 #b0000000000000000000000000000000000000000000000000000000000000000) lt!67888)))

(declare-fun b!130403 () Bool)

(declare-fun lt!67889 () Unit!4055)

(assert (=> b!130403 (= e!85073 lt!67889)))

(assert (=> b!130403 (= lt!67889 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67499) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!130403 (isDefined!122 (getValueByKey!168 (toList!865 lt!67499) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130404 () Bool)

(declare-fun Unit!4094 () Unit!4055)

(assert (=> b!130404 (= e!85073 Unit!4094)))

(declare-fun b!130405 () Bool)

(assert (=> b!130405 (= e!85074 (isDefined!122 (getValueByKey!168 (toList!865 lt!67499) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39755 c!24051) b!130403))

(assert (= (and d!39755 (not c!24051)) b!130404))

(assert (= (and d!39755 (not res!62884)) b!130405))

(declare-fun m!153845 () Bool)

(assert (=> d!39755 m!153845))

(declare-fun m!153847 () Bool)

(assert (=> b!130403 m!153847))

(declare-fun m!153849 () Bool)

(assert (=> b!130403 m!153849))

(assert (=> b!130403 m!153849))

(declare-fun m!153851 () Bool)

(assert (=> b!130403 m!153851))

(assert (=> b!130405 m!153849))

(assert (=> b!130405 m!153849))

(assert (=> b!130405 m!153851))

(assert (=> bm!14133 d!39755))

(assert (=> b!129787 d!39693))

(declare-fun d!39757 () Bool)

(assert (=> d!39757 (= (apply!113 lt!67348 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) (get!1472 (getValueByKey!168 (toList!865 lt!67348) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))))

(declare-fun bs!5433 () Bool)

(assert (= bs!5433 d!39757))

(assert (=> bs!5433 m!152429))

(assert (=> bs!5433 m!153055))

(assert (=> bs!5433 m!153055))

(declare-fun m!153853 () Bool)

(assert (=> bs!5433 m!153853))

(assert (=> b!129727 d!39757))

(declare-fun d!39759 () Bool)

(declare-fun c!24052 () Bool)

(assert (=> d!39759 (= c!24052 ((_ is ValueCellFull!1086) (select (arr!2243 (_values!2807 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!85075 () V!3459)

(assert (=> d!39759 (= (get!1469 (select (arr!2243 (_values!2807 newMap!16)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)) e!85075)))

(declare-fun b!130406 () Bool)

(assert (=> b!130406 (= e!85075 (get!1470 (select (arr!2243 (_values!2807 newMap!16)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!130407 () Bool)

(assert (=> b!130407 (= e!85075 (get!1471 (select (arr!2243 (_values!2807 newMap!16)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39759 c!24052) b!130406))

(assert (= (and d!39759 (not c!24052)) b!130407))

(assert (=> b!130406 m!152473))

(assert (=> b!130406 m!152471))

(declare-fun m!153855 () Bool)

(assert (=> b!130406 m!153855))

(assert (=> b!130407 m!152473))

(assert (=> b!130407 m!152471))

(declare-fun m!153857 () Bool)

(assert (=> b!130407 m!153857))

(assert (=> b!129727 d!39759))

(declare-fun d!39761 () Bool)

(declare-fun e!85076 () Bool)

(assert (=> d!39761 e!85076))

(declare-fun res!62886 () Bool)

(assert (=> d!39761 (=> (not res!62886) (not e!85076))))

(declare-fun lt!67895 () ListLongMap!1699)

(assert (=> d!39761 (= res!62886 (contains!886 lt!67895 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!67894 () List!1728)

(assert (=> d!39761 (= lt!67895 (ListLongMap!1700 lt!67894))))

(declare-fun lt!67893 () Unit!4055)

(declare-fun lt!67892 () Unit!4055)

(assert (=> d!39761 (= lt!67893 lt!67892)))

(assert (=> d!39761 (= (getValueByKey!168 lt!67894 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!173 (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39761 (= lt!67892 (lemmaContainsTupThenGetReturnValue!85 lt!67894 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39761 (= lt!67894 (insertStrictlySorted!87 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39761 (= (+!167 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!67895)))

(declare-fun b!130408 () Bool)

(declare-fun res!62885 () Bool)

(assert (=> b!130408 (=> (not res!62885) (not e!85076))))

(assert (=> b!130408 (= res!62885 (= (getValueByKey!168 (toList!865 lt!67895) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!173 (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!130409 () Bool)

(assert (=> b!130409 (= e!85076 (contains!887 (toList!865 lt!67895) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!39761 res!62886) b!130408))

(assert (= (and b!130408 res!62885) b!130409))

(declare-fun m!153859 () Bool)

(assert (=> d!39761 m!153859))

(declare-fun m!153861 () Bool)

(assert (=> d!39761 m!153861))

(declare-fun m!153863 () Bool)

(assert (=> d!39761 m!153863))

(declare-fun m!153865 () Bool)

(assert (=> d!39761 m!153865))

(declare-fun m!153867 () Bool)

(assert (=> b!130408 m!153867))

(declare-fun m!153869 () Bool)

(assert (=> b!130409 m!153869))

(assert (=> d!39445 d!39761))

(declare-fun d!39763 () Bool)

(declare-fun res!62887 () Bool)

(declare-fun e!85079 () Bool)

(assert (=> d!39763 (=> res!62887 e!85079)))

(assert (=> d!39763 (= res!62887 (bvsge #b00000000000000000000000000000000 (size!2508 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))))))))

(assert (=> d!39763 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (mask!7102 newMap!16)) e!85079)))

(declare-fun b!130410 () Bool)

(declare-fun e!85078 () Bool)

(declare-fun e!85077 () Bool)

(assert (=> b!130410 (= e!85078 e!85077)))

(declare-fun lt!67898 () (_ BitVec 64))

(assert (=> b!130410 (= lt!67898 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) #b00000000000000000000000000000000))))

(declare-fun lt!67896 () Unit!4055)

(assert (=> b!130410 (= lt!67896 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) lt!67898 #b00000000000000000000000000000000))))

(assert (=> b!130410 (arrayContainsKey!0 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) lt!67898 #b00000000000000000000000000000000)))

(declare-fun lt!67897 () Unit!4055)

(assert (=> b!130410 (= lt!67897 lt!67896)))

(declare-fun res!62888 () Bool)

(assert (=> b!130410 (= res!62888 (= (seekEntryOrOpen!0 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) #b00000000000000000000000000000000) (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (mask!7102 newMap!16)) (Found!282 #b00000000000000000000000000000000)))))

(assert (=> b!130410 (=> (not res!62888) (not e!85077))))

(declare-fun b!130411 () Bool)

(declare-fun call!14191 () Bool)

(assert (=> b!130411 (= e!85077 call!14191)))

(declare-fun b!130412 () Bool)

(assert (=> b!130412 (= e!85079 e!85078)))

(declare-fun c!24053 () Bool)

(assert (=> b!130412 (= c!24053 (validKeyInArray!0 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) #b00000000000000000000000000000000)))))

(declare-fun bm!14188 () Bool)

(assert (=> bm!14188 (= call!14191 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (mask!7102 newMap!16)))))

(declare-fun b!130413 () Bool)

(assert (=> b!130413 (= e!85078 call!14191)))

(assert (= (and d!39763 (not res!62887)) b!130412))

(assert (= (and b!130412 c!24053) b!130410))

(assert (= (and b!130412 (not c!24053)) b!130413))

(assert (= (and b!130410 res!62888) b!130411))

(assert (= (or b!130411 b!130413) bm!14188))

(declare-fun m!153871 () Bool)

(assert (=> b!130410 m!153871))

(declare-fun m!153873 () Bool)

(assert (=> b!130410 m!153873))

(declare-fun m!153875 () Bool)

(assert (=> b!130410 m!153875))

(assert (=> b!130410 m!153871))

(declare-fun m!153877 () Bool)

(assert (=> b!130410 m!153877))

(assert (=> b!130412 m!153871))

(assert (=> b!130412 m!153871))

(declare-fun m!153879 () Bool)

(assert (=> b!130412 m!153879))

(declare-fun m!153881 () Bool)

(assert (=> bm!14188 m!153881))

(assert (=> d!39445 d!39763))

(declare-fun b!130414 () Bool)

(declare-fun e!85085 () Bool)

(declare-fun e!85080 () Bool)

(assert (=> b!130414 (= e!85085 e!85080)))

(declare-fun res!62893 () Bool)

(declare-fun call!14197 () Bool)

(assert (=> b!130414 (= res!62893 call!14197)))

(assert (=> b!130414 (=> (not res!62893) (not e!85080))))

(declare-fun b!130415 () Bool)

(declare-fun e!85089 () Bool)

(assert (=> b!130415 (= e!85089 e!85085)))

(declare-fun c!24059 () Bool)

(assert (=> b!130415 (= c!24059 (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!14194 () ListLongMap!1699)

(declare-fun call!14195 () ListLongMap!1699)

(declare-fun call!14192 () ListLongMap!1699)

(declare-fun call!14193 () ListLongMap!1699)

(declare-fun bm!14189 () Bool)

(declare-fun c!24057 () Bool)

(declare-fun c!24056 () Bool)

(assert (=> bm!14189 (= call!14192 (+!167 (ite c!24056 call!14194 (ite c!24057 call!14193 call!14195)) (ite (or c!24056 c!24057) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(declare-fun b!130416 () Bool)

(declare-fun e!85086 () Bool)

(declare-fun call!14196 () Bool)

(assert (=> b!130416 (= e!85086 (not call!14196))))

(declare-fun b!130417 () Bool)

(declare-fun res!62897 () Bool)

(assert (=> b!130417 (=> (not res!62897) (not e!85089))))

(assert (=> b!130417 (= res!62897 e!85086)))

(declare-fun c!24058 () Bool)

(assert (=> b!130417 (= c!24058 (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!14190 () Bool)

(declare-fun call!14198 () ListLongMap!1699)

(assert (=> bm!14190 (= call!14198 call!14192)))

(declare-fun lt!67910 () ListLongMap!1699)

(declare-fun e!85084 () Bool)

(declare-fun b!130418 () Bool)

(assert (=> b!130418 (= e!85084 (= (apply!113 lt!67910 (select (arr!2242 lt!67608) #b00000000000000000000000000000000)) (get!1469 (select (arr!2243 lt!67595) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!130418 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2509 lt!67595)))))

(assert (=> b!130418 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 lt!67608)))))

(declare-fun b!130419 () Bool)

(declare-fun e!85092 () Unit!4055)

(declare-fun Unit!4095 () Unit!4055)

(assert (=> b!130419 (= e!85092 Unit!4095)))

(declare-fun b!130420 () Bool)

(declare-fun res!62892 () Bool)

(assert (=> b!130420 (=> (not res!62892) (not e!85089))))

(declare-fun e!85083 () Bool)

(assert (=> b!130420 (= res!62892 e!85083)))

(declare-fun res!62895 () Bool)

(assert (=> b!130420 (=> res!62895 e!85083)))

(declare-fun e!85088 () Bool)

(assert (=> b!130420 (= res!62895 (not e!85088))))

(declare-fun res!62890 () Bool)

(assert (=> b!130420 (=> (not res!62890) (not e!85088))))

(assert (=> b!130420 (= res!62890 (bvslt #b00000000000000000000000000000000 (size!2508 lt!67608)))))

(declare-fun b!130421 () Bool)

(declare-fun e!85090 () ListLongMap!1699)

(assert (=> b!130421 (= e!85090 call!14198)))

(declare-fun bm!14191 () Bool)

(assert (=> bm!14191 (= call!14193 call!14194)))

(declare-fun b!130422 () Bool)

(assert (=> b!130422 (= e!85083 e!85084)))

(declare-fun res!62889 () Bool)

(assert (=> b!130422 (=> (not res!62889) (not e!85084))))

(assert (=> b!130422 (= res!62889 (contains!886 lt!67910 (select (arr!2242 lt!67608) #b00000000000000000000000000000000)))))

(assert (=> b!130422 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 lt!67608)))))

(declare-fun bm!14192 () Bool)

(assert (=> bm!14192 (= call!14194 (getCurrentListMapNoExtraKeys!134 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun b!130423 () Bool)

(declare-fun e!85087 () Bool)

(assert (=> b!130423 (= e!85086 e!85087)))

(declare-fun res!62891 () Bool)

(assert (=> b!130423 (= res!62891 call!14196)))

(assert (=> b!130423 (=> (not res!62891) (not e!85087))))

(declare-fun bm!14193 () Bool)

(assert (=> bm!14193 (= call!14196 (contains!886 lt!67910 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!39765 () Bool)

(assert (=> d!39765 e!85089))

(declare-fun res!62896 () Bool)

(assert (=> d!39765 (=> (not res!62896) (not e!85089))))

(assert (=> d!39765 (= res!62896 (or (bvsge #b00000000000000000000000000000000 (size!2508 lt!67608)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 lt!67608)))))))

(declare-fun lt!67908 () ListLongMap!1699)

(assert (=> d!39765 (= lt!67910 lt!67908)))

(declare-fun lt!67905 () Unit!4055)

(assert (=> d!39765 (= lt!67905 e!85092)))

(declare-fun c!24055 () Bool)

(declare-fun e!85082 () Bool)

(assert (=> d!39765 (= c!24055 e!85082)))

(declare-fun res!62894 () Bool)

(assert (=> d!39765 (=> (not res!62894) (not e!85082))))

(assert (=> d!39765 (= res!62894 (bvslt #b00000000000000000000000000000000 (size!2508 lt!67608)))))

(declare-fun e!85091 () ListLongMap!1699)

(assert (=> d!39765 (= lt!67908 e!85091)))

(assert (=> d!39765 (= c!24056 (and (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39765 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39765 (= (getCurrentListMap!536 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) lt!67910)))

(declare-fun b!130424 () Bool)

(declare-fun e!85081 () ListLongMap!1699)

(assert (=> b!130424 (= e!85091 e!85081)))

(assert (=> b!130424 (= c!24057 (and (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!130425 () Bool)

(assert (=> b!130425 (= e!85082 (validKeyInArray!0 (select (arr!2242 lt!67608) #b00000000000000000000000000000000)))))

(declare-fun bm!14194 () Bool)

(assert (=> bm!14194 (= call!14197 (contains!886 lt!67910 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130426 () Bool)

(declare-fun c!24054 () Bool)

(assert (=> b!130426 (= c!24054 (and (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!130426 (= e!85081 e!85090)))

(declare-fun b!130427 () Bool)

(declare-fun lt!67913 () Unit!4055)

(assert (=> b!130427 (= e!85092 lt!67913)))

(declare-fun lt!67909 () ListLongMap!1699)

(assert (=> b!130427 (= lt!67909 (getCurrentListMapNoExtraKeys!134 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67918 () (_ BitVec 64))

(assert (=> b!130427 (= lt!67918 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67915 () (_ BitVec 64))

(assert (=> b!130427 (= lt!67915 (select (arr!2242 lt!67608) #b00000000000000000000000000000000))))

(declare-fun lt!67911 () Unit!4055)

(assert (=> b!130427 (= lt!67911 (addStillContains!89 lt!67909 lt!67918 (zeroValue!2683 newMap!16) lt!67915))))

(assert (=> b!130427 (contains!886 (+!167 lt!67909 (tuple2!2593 lt!67918 (zeroValue!2683 newMap!16))) lt!67915)))

(declare-fun lt!67899 () Unit!4055)

(assert (=> b!130427 (= lt!67899 lt!67911)))

(declare-fun lt!67912 () ListLongMap!1699)

(assert (=> b!130427 (= lt!67912 (getCurrentListMapNoExtraKeys!134 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67920 () (_ BitVec 64))

(assert (=> b!130427 (= lt!67920 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67903 () (_ BitVec 64))

(assert (=> b!130427 (= lt!67903 (select (arr!2242 lt!67608) #b00000000000000000000000000000000))))

(declare-fun lt!67906 () Unit!4055)

(assert (=> b!130427 (= lt!67906 (addApplyDifferent!89 lt!67912 lt!67920 (minValue!2683 newMap!16) lt!67903))))

(assert (=> b!130427 (= (apply!113 (+!167 lt!67912 (tuple2!2593 lt!67920 (minValue!2683 newMap!16))) lt!67903) (apply!113 lt!67912 lt!67903))))

(declare-fun lt!67917 () Unit!4055)

(assert (=> b!130427 (= lt!67917 lt!67906)))

(declare-fun lt!67919 () ListLongMap!1699)

(assert (=> b!130427 (= lt!67919 (getCurrentListMapNoExtraKeys!134 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67904 () (_ BitVec 64))

(assert (=> b!130427 (= lt!67904 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67901 () (_ BitVec 64))

(assert (=> b!130427 (= lt!67901 (select (arr!2242 lt!67608) #b00000000000000000000000000000000))))

(declare-fun lt!67900 () Unit!4055)

(assert (=> b!130427 (= lt!67900 (addApplyDifferent!89 lt!67919 lt!67904 (zeroValue!2683 newMap!16) lt!67901))))

(assert (=> b!130427 (= (apply!113 (+!167 lt!67919 (tuple2!2593 lt!67904 (zeroValue!2683 newMap!16))) lt!67901) (apply!113 lt!67919 lt!67901))))

(declare-fun lt!67902 () Unit!4055)

(assert (=> b!130427 (= lt!67902 lt!67900)))

(declare-fun lt!67907 () ListLongMap!1699)

(assert (=> b!130427 (= lt!67907 (getCurrentListMapNoExtraKeys!134 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67916 () (_ BitVec 64))

(assert (=> b!130427 (= lt!67916 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67914 () (_ BitVec 64))

(assert (=> b!130427 (= lt!67914 (select (arr!2242 lt!67608) #b00000000000000000000000000000000))))

(assert (=> b!130427 (= lt!67913 (addApplyDifferent!89 lt!67907 lt!67916 (minValue!2683 newMap!16) lt!67914))))

(assert (=> b!130427 (= (apply!113 (+!167 lt!67907 (tuple2!2593 lt!67916 (minValue!2683 newMap!16))) lt!67914) (apply!113 lt!67907 lt!67914))))

(declare-fun b!130428 () Bool)

(assert (=> b!130428 (= e!85088 (validKeyInArray!0 (select (arr!2242 lt!67608) #b00000000000000000000000000000000)))))

(declare-fun b!130429 () Bool)

(assert (=> b!130429 (= e!85081 call!14198)))

(declare-fun b!130430 () Bool)

(assert (=> b!130430 (= e!85085 (not call!14197))))

(declare-fun b!130431 () Bool)

(assert (=> b!130431 (= e!85080 (= (apply!113 lt!67910 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2683 newMap!16)))))

(declare-fun b!130432 () Bool)

(assert (=> b!130432 (= e!85087 (= (apply!113 lt!67910 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2683 newMap!16)))))

(declare-fun b!130433 () Bool)

(assert (=> b!130433 (= e!85091 (+!167 call!14192 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))

(declare-fun b!130434 () Bool)

(assert (=> b!130434 (= e!85090 call!14195)))

(declare-fun bm!14195 () Bool)

(assert (=> bm!14195 (= call!14195 call!14193)))

(assert (= (and d!39765 c!24056) b!130433))

(assert (= (and d!39765 (not c!24056)) b!130424))

(assert (= (and b!130424 c!24057) b!130429))

(assert (= (and b!130424 (not c!24057)) b!130426))

(assert (= (and b!130426 c!24054) b!130421))

(assert (= (and b!130426 (not c!24054)) b!130434))

(assert (= (or b!130421 b!130434) bm!14195))

(assert (= (or b!130429 bm!14195) bm!14191))

(assert (= (or b!130429 b!130421) bm!14190))

(assert (= (or b!130433 bm!14191) bm!14192))

(assert (= (or b!130433 bm!14190) bm!14189))

(assert (= (and d!39765 res!62894) b!130425))

(assert (= (and d!39765 c!24055) b!130427))

(assert (= (and d!39765 (not c!24055)) b!130419))

(assert (= (and d!39765 res!62896) b!130420))

(assert (= (and b!130420 res!62890) b!130428))

(assert (= (and b!130420 (not res!62895)) b!130422))

(assert (= (and b!130422 res!62889) b!130418))

(assert (= (and b!130420 res!62892) b!130417))

(assert (= (and b!130417 c!24058) b!130423))

(assert (= (and b!130417 (not c!24058)) b!130416))

(assert (= (and b!130423 res!62891) b!130432))

(assert (= (or b!130423 b!130416) bm!14193))

(assert (= (and b!130417 res!62897) b!130415))

(assert (= (and b!130415 c!24059) b!130414))

(assert (= (and b!130415 (not c!24059)) b!130430))

(assert (= (and b!130414 res!62893) b!130431))

(assert (= (or b!130414 b!130430) bm!14194))

(declare-fun b_lambda!5823 () Bool)

(assert (=> (not b_lambda!5823) (not b!130418)))

(assert (=> b!130418 t!6146))

(declare-fun b_and!8101 () Bool)

(assert (= b_and!8097 (and (=> t!6146 result!3933) b_and!8101)))

(assert (=> b!130418 t!6148))

(declare-fun b_and!8103 () Bool)

(assert (= b_and!8099 (and (=> t!6148 result!3935) b_and!8103)))

(declare-fun m!153883 () Bool)

(assert (=> b!130428 m!153883))

(assert (=> b!130428 m!153883))

(declare-fun m!153885 () Bool)

(assert (=> b!130428 m!153885))

(declare-fun m!153887 () Bool)

(assert (=> bm!14189 m!153887))

(assert (=> d!39765 m!152393))

(assert (=> b!130427 m!153883))

(declare-fun m!153889 () Bool)

(assert (=> b!130427 m!153889))

(declare-fun m!153891 () Bool)

(assert (=> b!130427 m!153891))

(declare-fun m!153893 () Bool)

(assert (=> b!130427 m!153893))

(declare-fun m!153895 () Bool)

(assert (=> b!130427 m!153895))

(declare-fun m!153897 () Bool)

(assert (=> b!130427 m!153897))

(assert (=> b!130427 m!153889))

(declare-fun m!153899 () Bool)

(assert (=> b!130427 m!153899))

(declare-fun m!153901 () Bool)

(assert (=> b!130427 m!153901))

(declare-fun m!153903 () Bool)

(assert (=> b!130427 m!153903))

(declare-fun m!153905 () Bool)

(assert (=> b!130427 m!153905))

(assert (=> b!130427 m!153891))

(declare-fun m!153907 () Bool)

(assert (=> b!130427 m!153907))

(declare-fun m!153909 () Bool)

(assert (=> b!130427 m!153909))

(declare-fun m!153911 () Bool)

(assert (=> b!130427 m!153911))

(declare-fun m!153913 () Bool)

(assert (=> b!130427 m!153913))

(declare-fun m!153915 () Bool)

(assert (=> b!130427 m!153915))

(declare-fun m!153917 () Bool)

(assert (=> b!130427 m!153917))

(assert (=> b!130427 m!153915))

(declare-fun m!153919 () Bool)

(assert (=> b!130427 m!153919))

(assert (=> b!130427 m!153907))

(assert (=> b!130422 m!153883))

(assert (=> b!130422 m!153883))

(declare-fun m!153921 () Bool)

(assert (=> b!130422 m!153921))

(declare-fun m!153923 () Bool)

(assert (=> bm!14193 m!153923))

(assert (=> b!130418 m!153883))

(assert (=> b!130418 m!152471))

(declare-fun m!153925 () Bool)

(assert (=> b!130418 m!153925))

(assert (=> b!130418 m!152471))

(declare-fun m!153927 () Bool)

(assert (=> b!130418 m!153927))

(assert (=> b!130418 m!153925))

(assert (=> b!130418 m!153883))

(declare-fun m!153929 () Bool)

(assert (=> b!130418 m!153929))

(declare-fun m!153931 () Bool)

(assert (=> b!130431 m!153931))

(declare-fun m!153933 () Bool)

(assert (=> b!130432 m!153933))

(assert (=> bm!14192 m!153903))

(declare-fun m!153935 () Bool)

(assert (=> bm!14194 m!153935))

(assert (=> b!130425 m!153883))

(assert (=> b!130425 m!153883))

(assert (=> b!130425 m!153885))

(declare-fun m!153937 () Bool)

(assert (=> b!130433 m!153937))

(assert (=> d!39445 d!39765))

(declare-fun d!39767 () Bool)

(declare-fun e!85094 () Bool)

(assert (=> d!39767 e!85094))

(declare-fun res!62898 () Bool)

(assert (=> d!39767 (=> res!62898 e!85094)))

(declare-fun lt!67921 () Bool)

(assert (=> d!39767 (= res!62898 (not lt!67921))))

(declare-fun lt!67924 () Bool)

(assert (=> d!39767 (= lt!67921 lt!67924)))

(declare-fun lt!67923 () Unit!4055)

(declare-fun e!85093 () Unit!4055)

(assert (=> d!39767 (= lt!67923 e!85093)))

(declare-fun c!24060 () Bool)

(assert (=> d!39767 (= c!24060 lt!67924)))

(assert (=> d!39767 (= lt!67924 (containsKey!172 (toList!865 (getCurrentListMap!536 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)))))))

(assert (=> d!39767 (= (contains!886 (getCurrentListMap!536 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (select (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)))) lt!67921)))

(declare-fun b!130435 () Bool)

(declare-fun lt!67922 () Unit!4055)

(assert (=> b!130435 (= e!85093 lt!67922)))

(assert (=> b!130435 (= lt!67922 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 (getCurrentListMap!536 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)))))))

(assert (=> b!130435 (isDefined!122 (getValueByKey!168 (toList!865 (getCurrentListMap!536 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)))))))

(declare-fun b!130436 () Bool)

(declare-fun Unit!4096 () Unit!4055)

(assert (=> b!130436 (= e!85093 Unit!4096)))

(declare-fun b!130437 () Bool)

(assert (=> b!130437 (= e!85094 (isDefined!122 (getValueByKey!168 (toList!865 (getCurrentListMap!536 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299))))))))

(assert (= (and d!39767 c!24060) b!130435))

(assert (= (and d!39767 (not c!24060)) b!130436))

(assert (= (and d!39767 (not res!62898)) b!130437))

(assert (=> d!39767 m!152869))

(declare-fun m!153939 () Bool)

(assert (=> d!39767 m!153939))

(assert (=> b!130435 m!152869))

(declare-fun m!153941 () Bool)

(assert (=> b!130435 m!153941))

(assert (=> b!130435 m!152869))

(declare-fun m!153943 () Bool)

(assert (=> b!130435 m!153943))

(assert (=> b!130435 m!153943))

(declare-fun m!153945 () Bool)

(assert (=> b!130435 m!153945))

(assert (=> b!130437 m!152869))

(assert (=> b!130437 m!153943))

(assert (=> b!130437 m!153943))

(assert (=> b!130437 m!153945))

(assert (=> d!39445 d!39767))

(assert (=> d!39445 d!39361))

(assert (=> d!39445 d!39355))

(declare-fun b!130438 () Bool)

(declare-fun e!85095 () (_ BitVec 32))

(declare-fun e!85096 () (_ BitVec 32))

(assert (=> b!130438 (= e!85095 e!85096)))

(declare-fun c!24061 () Bool)

(assert (=> b!130438 (= c!24061 (validKeyInArray!0 (select (arr!2242 lt!67604) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)))))))

(declare-fun lt!67925 () (_ BitVec 32))

(declare-fun d!39769 () Bool)

(assert (=> d!39769 (and (bvsge lt!67925 #b00000000000000000000000000000000) (bvsle lt!67925 (bvsub (size!2508 lt!67604) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)))))))

(assert (=> d!39769 (= lt!67925 e!85095)))

(declare-fun c!24062 () Bool)

(assert (=> d!39769 (= c!24062 (bvsge (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (bvadd (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000001)))))

(assert (=> d!39769 (and (bvsle (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (bvadd (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000001)) (bvsge (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000000) (bvsle (bvadd (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000001) (size!2508 lt!67604)))))

(assert (=> d!39769 (= (arrayCountValidKeys!0 lt!67604 (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (bvadd (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000001)) lt!67925)))

(declare-fun b!130439 () Bool)

(declare-fun call!14199 () (_ BitVec 32))

(assert (=> b!130439 (= e!85096 call!14199)))

(declare-fun b!130440 () Bool)

(assert (=> b!130440 (= e!85095 #b00000000000000000000000000000000)))

(declare-fun bm!14196 () Bool)

(assert (=> bm!14196 (= call!14199 (arrayCountValidKeys!0 lt!67604 (bvadd (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000001) (bvadd (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000001)))))

(declare-fun b!130441 () Bool)

(assert (=> b!130441 (= e!85096 (bvadd #b00000000000000000000000000000001 call!14199))))

(assert (= (and d!39769 c!24062) b!130440))

(assert (= (and d!39769 (not c!24062)) b!130438))

(assert (= (and b!130438 c!24061) b!130441))

(assert (= (and b!130438 (not c!24061)) b!130439))

(assert (= (or b!130441 b!130439) bm!14196))

(declare-fun m!153947 () Bool)

(assert (=> b!130438 m!153947))

(assert (=> b!130438 m!153947))

(declare-fun m!153949 () Bool)

(assert (=> b!130438 m!153949))

(declare-fun m!153951 () Bool)

(assert (=> bm!14196 m!153951))

(assert (=> d!39445 d!39769))

(declare-fun b!130442 () Bool)

(declare-fun e!85097 () (_ BitVec 32))

(declare-fun e!85098 () (_ BitVec 32))

(assert (=> b!130442 (= e!85097 e!85098)))

(declare-fun c!24063 () Bool)

(assert (=> b!130442 (= c!24063 (validKeyInArray!0 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) #b00000000000000000000000000000000)))))

(declare-fun d!39771 () Bool)

(declare-fun lt!67926 () (_ BitVec 32))

(assert (=> d!39771 (and (bvsge lt!67926 #b00000000000000000000000000000000) (bvsle lt!67926 (bvsub (size!2508 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) #b00000000000000000000000000000000)))))

(assert (=> d!39771 (= lt!67926 e!85097)))

(declare-fun c!24064 () Bool)

(assert (=> d!39771 (= c!24064 (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(assert (=> d!39771 (and (bvsle #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2508 (_keys!4565 newMap!16)) (size!2508 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))))))))

(assert (=> d!39771 (= (arrayCountValidKeys!0 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) lt!67926)))

(declare-fun b!130443 () Bool)

(declare-fun call!14200 () (_ BitVec 32))

(assert (=> b!130443 (= e!85098 call!14200)))

(declare-fun b!130444 () Bool)

(assert (=> b!130444 (= e!85097 #b00000000000000000000000000000000)))

(declare-fun bm!14197 () Bool)

(assert (=> bm!14197 (= call!14200 (arrayCountValidKeys!0 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!130445 () Bool)

(assert (=> b!130445 (= e!85098 (bvadd #b00000000000000000000000000000001 call!14200))))

(assert (= (and d!39771 c!24064) b!130444))

(assert (= (and d!39771 (not c!24064)) b!130442))

(assert (= (and b!130442 c!24063) b!130445))

(assert (= (and b!130442 (not c!24063)) b!130443))

(assert (= (or b!130445 b!130443) bm!14197))

(assert (=> b!130442 m!153871))

(assert (=> b!130442 m!153871))

(assert (=> b!130442 m!153879))

(declare-fun m!153953 () Bool)

(assert (=> bm!14197 m!153953))

(assert (=> d!39445 d!39771))

(assert (=> d!39445 d!39433))

(declare-fun d!39773 () Bool)

(declare-fun e!85101 () Bool)

(assert (=> d!39773 e!85101))

(declare-fun res!62901 () Bool)

(assert (=> d!39773 (=> (not res!62901) (not e!85101))))

(assert (=> d!39773 (= res!62901 (and (bvsge (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000000) (bvslt (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (size!2508 (_keys!4565 newMap!16))) (bvslt (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (size!2509 (_values!2807 newMap!16)))))))

(declare-fun lt!67929 () Unit!4055)

(declare-fun choose!806 (array!4738 array!4740 (_ BitVec 32) (_ BitVec 32) V!3459 V!3459 (_ BitVec 32) (_ BitVec 64) V!3459 Int) Unit!4055)

(assert (=> d!39773 (= lt!67929 (choose!806 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2824 newMap!16)))))

(assert (=> d!39773 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39773 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!39 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2824 newMap!16)) lt!67929)))

(declare-fun b!130448 () Bool)

(assert (=> b!130448 (= e!85101 (= (+!167 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!536 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))))))

(assert (= (and d!39773 res!62901) b!130448))

(assert (=> d!39773 m!152209))

(assert (=> d!39773 m!152207))

(declare-fun m!153955 () Bool)

(assert (=> d!39773 m!153955))

(assert (=> d!39773 m!152393))

(assert (=> b!130448 m!152861))

(assert (=> b!130448 m!152881))

(assert (=> b!130448 m!152253))

(assert (=> b!130448 m!152495))

(assert (=> b!130448 m!152889))

(assert (=> b!130448 m!152253))

(assert (=> d!39445 d!39773))

(declare-fun d!39775 () Bool)

(declare-fun e!85102 () Bool)

(assert (=> d!39775 e!85102))

(declare-fun res!62902 () Bool)

(assert (=> d!39775 (=> (not res!62902) (not e!85102))))

(assert (=> d!39775 (= res!62902 (and (bvsge (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000000) (bvslt (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (size!2508 lt!67608))))))

(declare-fun lt!67930 () Unit!4055)

(assert (=> d!39775 (= lt!67930 (choose!797 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (defaultEntry!2824 newMap!16)))))

(assert (=> d!39775 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39775 (= (lemmaValidKeyInArrayIsInListMap!116 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (defaultEntry!2824 newMap!16)) lt!67930)))

(declare-fun b!130449 () Bool)

(assert (=> b!130449 (= e!85102 (contains!886 (getCurrentListMap!536 lt!67608 lt!67595 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (select (arr!2242 lt!67608) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)))))))

(assert (= (and d!39775 res!62902) b!130449))

(declare-fun m!153957 () Bool)

(assert (=> d!39775 m!153957))

(assert (=> d!39775 m!152393))

(assert (=> b!130449 m!152855))

(declare-fun m!153959 () Bool)

(assert (=> b!130449 m!153959))

(assert (=> b!130449 m!152855))

(assert (=> b!130449 m!153959))

(declare-fun m!153961 () Bool)

(assert (=> b!130449 m!153961))

(assert (=> d!39445 d!39775))

(declare-fun d!39777 () Bool)

(declare-fun e!85105 () Bool)

(assert (=> d!39777 e!85105))

(declare-fun res!62905 () Bool)

(assert (=> d!39777 (=> (not res!62905) (not e!85105))))

(assert (=> d!39777 (= res!62905 (and (bvsge (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000000) (bvslt (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (size!2508 (_keys!4565 newMap!16)))))))

(declare-fun lt!67933 () Unit!4055)

(declare-fun choose!41 (array!4738 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1729) Unit!4055)

(assert (=> d!39777 (= lt!67933 (choose!41 (_keys!4565 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) lt!67600 lt!67597))))

(assert (=> d!39777 (bvslt (size!2508 (_keys!4565 newMap!16)) #b01111111111111111111111111111111)))

(assert (=> d!39777 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4565 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) lt!67600 lt!67597) lt!67933)))

(declare-fun b!130452 () Bool)

(assert (=> b!130452 (= e!85105 (arrayNoDuplicates!0 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) lt!67600 lt!67597))))

(assert (= (and d!39777 res!62905) b!130452))

(assert (=> d!39777 m!152209))

(declare-fun m!153963 () Bool)

(assert (=> d!39777 m!153963))

(assert (=> b!130452 m!152881))

(assert (=> b!130452 m!152879))

(assert (=> d!39445 d!39777))

(declare-fun d!39779 () Bool)

(declare-fun e!85108 () Bool)

(assert (=> d!39779 e!85108))

(declare-fun res!62908 () Bool)

(assert (=> d!39779 (=> (not res!62908) (not e!85108))))

(assert (=> d!39779 (= res!62908 (and (bvsge (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000000) (bvslt (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (size!2508 (_keys!4565 newMap!16)))))))

(declare-fun lt!67936 () Unit!4055)

(declare-fun choose!102 ((_ BitVec 64) array!4738 (_ BitVec 32) (_ BitVec 32)) Unit!4055)

(assert (=> d!39779 (= lt!67936 (choose!102 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (mask!7102 newMap!16)))))

(assert (=> d!39779 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39779 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (mask!7102 newMap!16)) lt!67936)))

(declare-fun b!130455 () Bool)

(assert (=> b!130455 (= e!85108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (mask!7102 newMap!16)))))

(assert (= (and d!39779 res!62908) b!130455))

(assert (=> d!39779 m!152209))

(declare-fun m!153965 () Bool)

(assert (=> d!39779 m!153965))

(assert (=> d!39779 m!152393))

(assert (=> b!130455 m!152881))

(assert (=> b!130455 m!152887))

(assert (=> d!39445 d!39779))

(declare-fun d!39781 () Bool)

(declare-fun res!62909 () Bool)

(declare-fun e!85109 () Bool)

(assert (=> d!39781 (=> res!62909 e!85109)))

(assert (=> d!39781 (= res!62909 (= (select (arr!2242 lt!67596) #b00000000000000000000000000000000) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> d!39781 (= (arrayContainsKey!0 lt!67596 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b00000000000000000000000000000000) e!85109)))

(declare-fun b!130456 () Bool)

(declare-fun e!85110 () Bool)

(assert (=> b!130456 (= e!85109 e!85110)))

(declare-fun res!62910 () Bool)

(assert (=> b!130456 (=> (not res!62910) (not e!85110))))

(assert (=> b!130456 (= res!62910 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2508 lt!67596)))))

(declare-fun b!130457 () Bool)

(assert (=> b!130457 (= e!85110 (arrayContainsKey!0 lt!67596 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!39781 (not res!62909)) b!130456))

(assert (= (and b!130456 res!62910) b!130457))

(declare-fun m!153967 () Bool)

(assert (=> d!39781 m!153967))

(assert (=> b!130457 m!152209))

(declare-fun m!153969 () Bool)

(assert (=> b!130457 m!153969))

(assert (=> d!39445 d!39781))

(declare-fun d!39783 () Bool)

(assert (=> d!39783 (= (arrayCountValidKeys!0 lt!67604 (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (bvadd (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lt!67939 () Unit!4055)

(declare-fun choose!2 (array!4738 (_ BitVec 32)) Unit!4055)

(assert (=> d!39783 (= lt!67939 (choose!2 lt!67604 (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299))))))

(declare-fun e!85113 () Bool)

(assert (=> d!39783 e!85113))

(declare-fun res!62915 () Bool)

(assert (=> d!39783 (=> (not res!62915) (not e!85113))))

(assert (=> d!39783 (= res!62915 (and (bvsge (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000000) (bvslt (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (size!2508 lt!67604))))))

(assert (=> d!39783 (= (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!67604 (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299))) lt!67939)))

(declare-fun b!130462 () Bool)

(declare-fun res!62916 () Bool)

(assert (=> b!130462 (=> (not res!62916) (not e!85113))))

(assert (=> b!130462 (= res!62916 (validKeyInArray!0 (select (arr!2242 lt!67604) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)))))))

(declare-fun b!130463 () Bool)

(assert (=> b!130463 (= e!85113 (bvslt (size!2508 lt!67604) #b01111111111111111111111111111111))))

(assert (= (and d!39783 res!62915) b!130462))

(assert (= (and b!130462 res!62916) b!130463))

(assert (=> d!39783 m!152883))

(declare-fun m!153971 () Bool)

(assert (=> d!39783 m!153971))

(assert (=> b!130462 m!153947))

(assert (=> b!130462 m!153947))

(assert (=> b!130462 m!153949))

(assert (=> d!39445 d!39783))

(declare-fun b!130464 () Bool)

(declare-fun e!85115 () Bool)

(declare-fun e!85116 () Bool)

(assert (=> b!130464 (= e!85115 e!85116)))

(declare-fun c!24065 () Bool)

(assert (=> b!130464 (= c!24065 (validKeyInArray!0 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) lt!67600)))))

(declare-fun b!130465 () Bool)

(declare-fun e!85114 () Bool)

(assert (=> b!130465 (= e!85114 e!85115)))

(declare-fun res!62919 () Bool)

(assert (=> b!130465 (=> (not res!62919) (not e!85115))))

(declare-fun e!85117 () Bool)

(assert (=> b!130465 (= res!62919 (not e!85117))))

(declare-fun res!62918 () Bool)

(assert (=> b!130465 (=> (not res!62918) (not e!85117))))

(assert (=> b!130465 (= res!62918 (validKeyInArray!0 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) lt!67600)))))

(declare-fun call!14201 () Bool)

(declare-fun bm!14198 () Bool)

(assert (=> bm!14198 (= call!14201 (arrayNoDuplicates!0 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (bvadd lt!67600 #b00000000000000000000000000000001) (ite c!24065 (Cons!1725 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) lt!67600) lt!67597) lt!67597)))))

(declare-fun b!130466 () Bool)

(assert (=> b!130466 (= e!85116 call!14201)))

(declare-fun b!130467 () Bool)

(assert (=> b!130467 (= e!85116 call!14201)))

(declare-fun b!130468 () Bool)

(assert (=> b!130468 (= e!85117 (contains!888 lt!67597 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) lt!67600)))))

(declare-fun d!39785 () Bool)

(declare-fun res!62917 () Bool)

(assert (=> d!39785 (=> res!62917 e!85114)))

(assert (=> d!39785 (= res!62917 (bvsge lt!67600 (size!2508 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))))))))

(assert (=> d!39785 (= (arrayNoDuplicates!0 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) lt!67600 lt!67597) e!85114)))

(assert (= (and d!39785 (not res!62917)) b!130465))

(assert (= (and b!130465 res!62918) b!130468))

(assert (= (and b!130465 res!62919) b!130464))

(assert (= (and b!130464 c!24065) b!130466))

(assert (= (and b!130464 (not c!24065)) b!130467))

(assert (= (or b!130466 b!130467) bm!14198))

(declare-fun m!153973 () Bool)

(assert (=> b!130464 m!153973))

(assert (=> b!130464 m!153973))

(declare-fun m!153975 () Bool)

(assert (=> b!130464 m!153975))

(assert (=> b!130465 m!153973))

(assert (=> b!130465 m!153973))

(assert (=> b!130465 m!153975))

(assert (=> bm!14198 m!153973))

(declare-fun m!153977 () Bool)

(assert (=> bm!14198 m!153977))

(assert (=> b!130468 m!153973))

(assert (=> b!130468 m!153973))

(declare-fun m!153979 () Bool)

(assert (=> b!130468 m!153979))

(assert (=> d!39445 d!39785))

(declare-fun d!39787 () Bool)

(assert (=> d!39787 (arrayContainsKey!0 lt!67596 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(declare-fun lt!67942 () Unit!4055)

(declare-fun choose!13 (array!4738 (_ BitVec 64) (_ BitVec 32)) Unit!4055)

(assert (=> d!39787 (= lt!67942 (choose!13 lt!67596 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299))))))

(assert (=> d!39787 (bvsge (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000000)))

(assert (=> d!39787 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!67596 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299))) lt!67942)))

(declare-fun bs!5434 () Bool)

(assert (= bs!5434 d!39787))

(assert (=> bs!5434 m!152209))

(assert (=> bs!5434 m!152865))

(assert (=> bs!5434 m!152209))

(declare-fun m!153981 () Bool)

(assert (=> bs!5434 m!153981))

(assert (=> d!39445 d!39787))

(assert (=> d!39445 d!39337))

(declare-fun b!130469 () Bool)

(declare-fun e!85123 () Bool)

(declare-fun e!85118 () Bool)

(assert (=> b!130469 (= e!85123 e!85118)))

(declare-fun res!62924 () Bool)

(declare-fun call!14207 () Bool)

(assert (=> b!130469 (= res!62924 call!14207)))

(assert (=> b!130469 (=> (not res!62924) (not e!85118))))

(declare-fun b!130470 () Bool)

(declare-fun e!85127 () Bool)

(assert (=> b!130470 (= e!85127 e!85123)))

(declare-fun c!24071 () Bool)

(assert (=> b!130470 (= c!24071 (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!24069 () Bool)

(declare-fun c!24068 () Bool)

(declare-fun call!14202 () ListLongMap!1699)

(declare-fun bm!14199 () Bool)

(declare-fun call!14205 () ListLongMap!1699)

(declare-fun call!14203 () ListLongMap!1699)

(declare-fun call!14204 () ListLongMap!1699)

(assert (=> bm!14199 (= call!14202 (+!167 (ite c!24068 call!14204 (ite c!24069 call!14203 call!14205)) (ite (or c!24068 c!24069) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(declare-fun b!130471 () Bool)

(declare-fun e!85124 () Bool)

(declare-fun call!14206 () Bool)

(assert (=> b!130471 (= e!85124 (not call!14206))))

(declare-fun b!130472 () Bool)

(declare-fun res!62928 () Bool)

(assert (=> b!130472 (=> (not res!62928) (not e!85127))))

(assert (=> b!130472 (= res!62928 e!85124)))

(declare-fun c!24070 () Bool)

(assert (=> b!130472 (= c!24070 (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!14200 () Bool)

(declare-fun call!14208 () ListLongMap!1699)

(assert (=> bm!14200 (= call!14208 call!14202)))

(declare-fun b!130473 () Bool)

(declare-fun lt!67954 () ListLongMap!1699)

(declare-fun e!85122 () Bool)

(assert (=> b!130473 (= e!85122 (= (apply!113 lt!67954 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) #b00000000000000000000000000000000)) (get!1469 (select (arr!2243 (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16)))) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!130473 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2509 (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))))))))

(assert (=> b!130473 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))))))))

(declare-fun b!130474 () Bool)

(declare-fun e!85130 () Unit!4055)

(declare-fun Unit!4097 () Unit!4055)

(assert (=> b!130474 (= e!85130 Unit!4097)))

(declare-fun b!130475 () Bool)

(declare-fun res!62923 () Bool)

(assert (=> b!130475 (=> (not res!62923) (not e!85127))))

(declare-fun e!85121 () Bool)

(assert (=> b!130475 (= res!62923 e!85121)))

(declare-fun res!62926 () Bool)

(assert (=> b!130475 (=> res!62926 e!85121)))

(declare-fun e!85126 () Bool)

(assert (=> b!130475 (= res!62926 (not e!85126))))

(declare-fun res!62921 () Bool)

(assert (=> b!130475 (=> (not res!62921) (not e!85126))))

(assert (=> b!130475 (= res!62921 (bvslt #b00000000000000000000000000000000 (size!2508 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))))))))

(declare-fun b!130476 () Bool)

(declare-fun e!85128 () ListLongMap!1699)

(assert (=> b!130476 (= e!85128 call!14208)))

(declare-fun bm!14201 () Bool)

(assert (=> bm!14201 (= call!14203 call!14204)))

(declare-fun b!130477 () Bool)

(assert (=> b!130477 (= e!85121 e!85122)))

(declare-fun res!62920 () Bool)

(assert (=> b!130477 (=> (not res!62920) (not e!85122))))

(assert (=> b!130477 (= res!62920 (contains!886 lt!67954 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) #b00000000000000000000000000000000)))))

(assert (=> b!130477 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))))))))

(declare-fun bm!14202 () Bool)

(assert (=> bm!14202 (= call!14204 (getCurrentListMapNoExtraKeys!134 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun b!130478 () Bool)

(declare-fun e!85125 () Bool)

(assert (=> b!130478 (= e!85124 e!85125)))

(declare-fun res!62922 () Bool)

(assert (=> b!130478 (= res!62922 call!14206)))

(assert (=> b!130478 (=> (not res!62922) (not e!85125))))

(declare-fun bm!14203 () Bool)

(assert (=> bm!14203 (= call!14206 (contains!886 lt!67954 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!39789 () Bool)

(assert (=> d!39789 e!85127))

(declare-fun res!62927 () Bool)

(assert (=> d!39789 (=> (not res!62927) (not e!85127))))

(assert (=> d!39789 (= res!62927 (or (bvsge #b00000000000000000000000000000000 (size!2508 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))))))))))

(declare-fun lt!67952 () ListLongMap!1699)

(assert (=> d!39789 (= lt!67954 lt!67952)))

(declare-fun lt!67949 () Unit!4055)

(assert (=> d!39789 (= lt!67949 e!85130)))

(declare-fun c!24067 () Bool)

(declare-fun e!85120 () Bool)

(assert (=> d!39789 (= c!24067 e!85120)))

(declare-fun res!62925 () Bool)

(assert (=> d!39789 (=> (not res!62925) (not e!85120))))

(assert (=> d!39789 (= res!62925 (bvslt #b00000000000000000000000000000000 (size!2508 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))))))))

(declare-fun e!85129 () ListLongMap!1699)

(assert (=> d!39789 (= lt!67952 e!85129)))

(assert (=> d!39789 (= c!24068 (and (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39789 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39789 (= (getCurrentListMap!536 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) lt!67954)))

(declare-fun b!130479 () Bool)

(declare-fun e!85119 () ListLongMap!1699)

(assert (=> b!130479 (= e!85129 e!85119)))

(assert (=> b!130479 (= c!24069 (and (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!130480 () Bool)

(assert (=> b!130480 (= e!85120 (validKeyInArray!0 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) #b00000000000000000000000000000000)))))

(declare-fun bm!14204 () Bool)

(assert (=> bm!14204 (= call!14207 (contains!886 lt!67954 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130481 () Bool)

(declare-fun c!24066 () Bool)

(assert (=> b!130481 (= c!24066 (and (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!130481 (= e!85119 e!85128)))

(declare-fun b!130482 () Bool)

(declare-fun lt!67957 () Unit!4055)

(assert (=> b!130482 (= e!85130 lt!67957)))

(declare-fun lt!67953 () ListLongMap!1699)

(assert (=> b!130482 (= lt!67953 (getCurrentListMapNoExtraKeys!134 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67962 () (_ BitVec 64))

(assert (=> b!130482 (= lt!67962 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67959 () (_ BitVec 64))

(assert (=> b!130482 (= lt!67959 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) #b00000000000000000000000000000000))))

(declare-fun lt!67955 () Unit!4055)

(assert (=> b!130482 (= lt!67955 (addStillContains!89 lt!67953 lt!67962 (zeroValue!2683 newMap!16) lt!67959))))

(assert (=> b!130482 (contains!886 (+!167 lt!67953 (tuple2!2593 lt!67962 (zeroValue!2683 newMap!16))) lt!67959)))

(declare-fun lt!67943 () Unit!4055)

(assert (=> b!130482 (= lt!67943 lt!67955)))

(declare-fun lt!67956 () ListLongMap!1699)

(assert (=> b!130482 (= lt!67956 (getCurrentListMapNoExtraKeys!134 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67964 () (_ BitVec 64))

(assert (=> b!130482 (= lt!67964 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67947 () (_ BitVec 64))

(assert (=> b!130482 (= lt!67947 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) #b00000000000000000000000000000000))))

(declare-fun lt!67950 () Unit!4055)

(assert (=> b!130482 (= lt!67950 (addApplyDifferent!89 lt!67956 lt!67964 (minValue!2683 newMap!16) lt!67947))))

(assert (=> b!130482 (= (apply!113 (+!167 lt!67956 (tuple2!2593 lt!67964 (minValue!2683 newMap!16))) lt!67947) (apply!113 lt!67956 lt!67947))))

(declare-fun lt!67961 () Unit!4055)

(assert (=> b!130482 (= lt!67961 lt!67950)))

(declare-fun lt!67963 () ListLongMap!1699)

(assert (=> b!130482 (= lt!67963 (getCurrentListMapNoExtraKeys!134 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67948 () (_ BitVec 64))

(assert (=> b!130482 (= lt!67948 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67945 () (_ BitVec 64))

(assert (=> b!130482 (= lt!67945 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) #b00000000000000000000000000000000))))

(declare-fun lt!67944 () Unit!4055)

(assert (=> b!130482 (= lt!67944 (addApplyDifferent!89 lt!67963 lt!67948 (zeroValue!2683 newMap!16) lt!67945))))

(assert (=> b!130482 (= (apply!113 (+!167 lt!67963 (tuple2!2593 lt!67948 (zeroValue!2683 newMap!16))) lt!67945) (apply!113 lt!67963 lt!67945))))

(declare-fun lt!67946 () Unit!4055)

(assert (=> b!130482 (= lt!67946 lt!67944)))

(declare-fun lt!67951 () ListLongMap!1699)

(assert (=> b!130482 (= lt!67951 (getCurrentListMapNoExtraKeys!134 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67960 () (_ BitVec 64))

(assert (=> b!130482 (= lt!67960 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67958 () (_ BitVec 64))

(assert (=> b!130482 (= lt!67958 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) #b00000000000000000000000000000000))))

(assert (=> b!130482 (= lt!67957 (addApplyDifferent!89 lt!67951 lt!67960 (minValue!2683 newMap!16) lt!67958))))

(assert (=> b!130482 (= (apply!113 (+!167 lt!67951 (tuple2!2593 lt!67960 (minValue!2683 newMap!16))) lt!67958) (apply!113 lt!67951 lt!67958))))

(declare-fun b!130483 () Bool)

(assert (=> b!130483 (= e!85126 (validKeyInArray!0 (select (arr!2242 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16)))) #b00000000000000000000000000000000)))))

(declare-fun b!130484 () Bool)

(assert (=> b!130484 (= e!85119 call!14208)))

(declare-fun b!130485 () Bool)

(assert (=> b!130485 (= e!85123 (not call!14207))))

(declare-fun b!130486 () Bool)

(assert (=> b!130486 (= e!85118 (= (apply!113 lt!67954 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2683 newMap!16)))))

(declare-fun b!130487 () Bool)

(assert (=> b!130487 (= e!85125 (= (apply!113 lt!67954 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2683 newMap!16)))))

(declare-fun b!130488 () Bool)

(assert (=> b!130488 (= e!85129 (+!167 call!14202 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))

(declare-fun b!130489 () Bool)

(assert (=> b!130489 (= e!85128 call!14205)))

(declare-fun bm!14205 () Bool)

(assert (=> bm!14205 (= call!14205 call!14203)))

(assert (= (and d!39789 c!24068) b!130488))

(assert (= (and d!39789 (not c!24068)) b!130479))

(assert (= (and b!130479 c!24069) b!130484))

(assert (= (and b!130479 (not c!24069)) b!130481))

(assert (= (and b!130481 c!24066) b!130476))

(assert (= (and b!130481 (not c!24066)) b!130489))

(assert (= (or b!130476 b!130489) bm!14205))

(assert (= (or b!130484 bm!14205) bm!14201))

(assert (= (or b!130484 b!130476) bm!14200))

(assert (= (or b!130488 bm!14201) bm!14202))

(assert (= (or b!130488 bm!14200) bm!14199))

(assert (= (and d!39789 res!62925) b!130480))

(assert (= (and d!39789 c!24067) b!130482))

(assert (= (and d!39789 (not c!24067)) b!130474))

(assert (= (and d!39789 res!62927) b!130475))

(assert (= (and b!130475 res!62921) b!130483))

(assert (= (and b!130475 (not res!62926)) b!130477))

(assert (= (and b!130477 res!62920) b!130473))

(assert (= (and b!130475 res!62923) b!130472))

(assert (= (and b!130472 c!24070) b!130478))

(assert (= (and b!130472 (not c!24070)) b!130471))

(assert (= (and b!130478 res!62922) b!130487))

(assert (= (or b!130478 b!130471) bm!14203))

(assert (= (and b!130472 res!62928) b!130470))

(assert (= (and b!130470 c!24071) b!130469))

(assert (= (and b!130470 (not c!24071)) b!130485))

(assert (= (and b!130469 res!62924) b!130486))

(assert (= (or b!130469 b!130485) bm!14204))

(declare-fun b_lambda!5825 () Bool)

(assert (=> (not b_lambda!5825) (not b!130473)))

(assert (=> b!130473 t!6146))

(declare-fun b_and!8105 () Bool)

(assert (= b_and!8101 (and (=> t!6146 result!3933) b_and!8105)))

(assert (=> b!130473 t!6148))

(declare-fun b_and!8107 () Bool)

(assert (= b_and!8103 (and (=> t!6148 result!3935) b_and!8107)))

(assert (=> b!130483 m!153871))

(assert (=> b!130483 m!153871))

(assert (=> b!130483 m!153879))

(declare-fun m!153983 () Bool)

(assert (=> bm!14199 m!153983))

(assert (=> d!39789 m!152393))

(assert (=> b!130482 m!153871))

(declare-fun m!153985 () Bool)

(assert (=> b!130482 m!153985))

(declare-fun m!153987 () Bool)

(assert (=> b!130482 m!153987))

(declare-fun m!153989 () Bool)

(assert (=> b!130482 m!153989))

(declare-fun m!153991 () Bool)

(assert (=> b!130482 m!153991))

(declare-fun m!153993 () Bool)

(assert (=> b!130482 m!153993))

(assert (=> b!130482 m!153985))

(declare-fun m!153995 () Bool)

(assert (=> b!130482 m!153995))

(declare-fun m!153997 () Bool)

(assert (=> b!130482 m!153997))

(declare-fun m!153999 () Bool)

(assert (=> b!130482 m!153999))

(declare-fun m!154001 () Bool)

(assert (=> b!130482 m!154001))

(assert (=> b!130482 m!153987))

(declare-fun m!154003 () Bool)

(assert (=> b!130482 m!154003))

(declare-fun m!154005 () Bool)

(assert (=> b!130482 m!154005))

(declare-fun m!154007 () Bool)

(assert (=> b!130482 m!154007))

(declare-fun m!154009 () Bool)

(assert (=> b!130482 m!154009))

(declare-fun m!154011 () Bool)

(assert (=> b!130482 m!154011))

(declare-fun m!154013 () Bool)

(assert (=> b!130482 m!154013))

(assert (=> b!130482 m!154011))

(declare-fun m!154015 () Bool)

(assert (=> b!130482 m!154015))

(assert (=> b!130482 m!154003))

(assert (=> b!130477 m!153871))

(assert (=> b!130477 m!153871))

(declare-fun m!154017 () Bool)

(assert (=> b!130477 m!154017))

(declare-fun m!154019 () Bool)

(assert (=> bm!14203 m!154019))

(assert (=> b!130473 m!153871))

(assert (=> b!130473 m!152471))

(declare-fun m!154021 () Bool)

(assert (=> b!130473 m!154021))

(assert (=> b!130473 m!152471))

(declare-fun m!154023 () Bool)

(assert (=> b!130473 m!154023))

(assert (=> b!130473 m!154021))

(assert (=> b!130473 m!153871))

(declare-fun m!154025 () Bool)

(assert (=> b!130473 m!154025))

(declare-fun m!154027 () Bool)

(assert (=> b!130486 m!154027))

(declare-fun m!154029 () Bool)

(assert (=> b!130487 m!154029))

(assert (=> bm!14202 m!153999))

(declare-fun m!154031 () Bool)

(assert (=> bm!14204 m!154031))

(assert (=> b!130480 m!153871))

(assert (=> b!130480 m!153871))

(assert (=> b!130480 m!153879))

(declare-fun m!154033 () Bool)

(assert (=> b!130488 m!154033))

(assert (=> d!39445 d!39789))

(assert (=> d!39445 d!39375))

(declare-fun b!130498 () Bool)

(declare-fun res!62940 () Bool)

(declare-fun e!85135 () Bool)

(assert (=> b!130498 (=> (not res!62940) (not e!85135))))

(assert (=> b!130498 (= res!62940 (not (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299))))))))

(declare-fun b!130500 () Bool)

(assert (=> b!130500 (= e!85135 (bvslt (size!2508 (_keys!4565 newMap!16)) #b01111111111111111111111111111111))))

(declare-fun d!39791 () Bool)

(declare-fun e!85136 () Bool)

(assert (=> d!39791 e!85136))

(declare-fun res!62937 () Bool)

(assert (=> d!39791 (=> (not res!62937) (not e!85136))))

(assert (=> d!39791 (= res!62937 (and (bvsge (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000000) (bvslt (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (size!2508 (_keys!4565 newMap!16)))))))

(declare-fun lt!67967 () Unit!4055)

(declare-fun choose!1 (array!4738 (_ BitVec 32) (_ BitVec 64)) Unit!4055)

(assert (=> d!39791 (= lt!67967 (choose!1 (_keys!4565 newMap!16) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> d!39791 e!85135))

(declare-fun res!62939 () Bool)

(assert (=> d!39791 (=> (not res!62939) (not e!85135))))

(assert (=> d!39791 (= res!62939 (and (bvsge (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) #b00000000000000000000000000000000) (bvslt (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (size!2508 (_keys!4565 newMap!16)))))))

(assert (=> d!39791 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4565 newMap!16) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) lt!67967)))

(declare-fun b!130501 () Bool)

(assert (=> b!130501 (= e!85136 (= (arrayCountValidKeys!0 (array!4739 (store (arr!2242 (_keys!4565 newMap!16)) (ite c!23842 (index!3288 lt!67299) (index!3285 lt!67299)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (size!2508 (_keys!4565 newMap!16))) #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4565 newMap!16) #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) #b00000000000000000000000000000001)))))

(declare-fun b!130499 () Bool)

(declare-fun res!62938 () Bool)

(assert (=> b!130499 (=> (not res!62938) (not e!85135))))

(assert (=> b!130499 (= res!62938 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (= (and d!39791 res!62939) b!130498))

(assert (= (and b!130498 res!62940) b!130499))

(assert (= (and b!130499 res!62938) b!130500))

(assert (= (and d!39791 res!62937) b!130501))

(declare-fun m!154035 () Bool)

(assert (=> b!130498 m!154035))

(assert (=> b!130498 m!154035))

(declare-fun m!154037 () Bool)

(assert (=> b!130498 m!154037))

(assert (=> d!39791 m!152209))

(declare-fun m!154039 () Bool)

(assert (=> d!39791 m!154039))

(assert (=> b!130501 m!152881))

(assert (=> b!130501 m!152877))

(assert (=> b!130501 m!152381))

(assert (=> b!130499 m!152209))

(declare-fun m!154041 () Bool)

(assert (=> b!130499 m!154041))

(assert (=> d!39445 d!39791))

(declare-fun d!39793 () Bool)

(declare-fun res!62941 () Bool)

(declare-fun e!85137 () Bool)

(assert (=> d!39793 (=> res!62941 e!85137)))

(assert (=> d!39793 (= res!62941 (and ((_ is Cons!1724) (toList!865 lt!67214)) (= (_1!1306 (h!2328 (toList!865 lt!67214))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39793 (= (containsKey!172 (toList!865 lt!67214) #b0000000000000000000000000000000000000000000000000000000000000000) e!85137)))

(declare-fun b!130502 () Bool)

(declare-fun e!85138 () Bool)

(assert (=> b!130502 (= e!85137 e!85138)))

(declare-fun res!62942 () Bool)

(assert (=> b!130502 (=> (not res!62942) (not e!85138))))

(assert (=> b!130502 (= res!62942 (and (or (not ((_ is Cons!1724) (toList!865 lt!67214))) (bvsle (_1!1306 (h!2328 (toList!865 lt!67214))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!1724) (toList!865 lt!67214)) (bvslt (_1!1306 (h!2328 (toList!865 lt!67214))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!130503 () Bool)

(assert (=> b!130503 (= e!85138 (containsKey!172 (t!6139 (toList!865 lt!67214)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!39793 (not res!62941)) b!130502))

(assert (= (and b!130502 res!62942) b!130503))

(declare-fun m!154043 () Bool)

(assert (=> b!130503 m!154043))

(assert (=> d!39379 d!39793))

(assert (=> b!129910 d!39485))

(assert (=> b!129986 d!39345))

(declare-fun e!85140 () Option!174)

(declare-fun b!130506 () Bool)

(assert (=> b!130506 (= e!85140 (getValueByKey!168 (t!6139 (toList!865 lt!67516)) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!130504 () Bool)

(declare-fun e!85139 () Option!174)

(assert (=> b!130504 (= e!85139 (Some!173 (_2!1306 (h!2328 (toList!865 lt!67516)))))))

(declare-fun b!130505 () Bool)

(assert (=> b!130505 (= e!85139 e!85140)))

(declare-fun c!24073 () Bool)

(assert (=> b!130505 (= c!24073 (and ((_ is Cons!1724) (toList!865 lt!67516)) (not (= (_1!1306 (h!2328 (toList!865 lt!67516))) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!130507 () Bool)

(assert (=> b!130507 (= e!85140 None!172)))

(declare-fun d!39795 () Bool)

(declare-fun c!24072 () Bool)

(assert (=> d!39795 (= c!24072 (and ((_ is Cons!1724) (toList!865 lt!67516)) (= (_1!1306 (h!2328 (toList!865 lt!67516))) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!39795 (= (getValueByKey!168 (toList!865 lt!67516) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) e!85139)))

(assert (= (and d!39795 c!24072) b!130504))

(assert (= (and d!39795 (not c!24072)) b!130505))

(assert (= (and b!130505 c!24073) b!130506))

(assert (= (and b!130505 (not c!24073)) b!130507))

(declare-fun m!154045 () Bool)

(assert (=> b!130506 m!154045))

(assert (=> b!129945 d!39795))

(assert (=> b!129941 d!39485))

(declare-fun d!39797 () Bool)

(assert (=> d!39797 (isDefined!122 (getValueByKey!168 (toList!865 call!14102) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))))))

(declare-fun lt!67968 () Unit!4055)

(assert (=> d!39797 (= lt!67968 (choose!796 (toList!865 call!14102) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))))))

(declare-fun e!85141 () Bool)

(assert (=> d!39797 e!85141))

(declare-fun res!62943 () Bool)

(assert (=> d!39797 (=> (not res!62943) (not e!85141))))

(assert (=> d!39797 (= res!62943 (isStrictlySorted!314 (toList!865 call!14102)))))

(assert (=> d!39797 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 call!14102) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))) lt!67968)))

(declare-fun b!130508 () Bool)

(assert (=> b!130508 (= e!85141 (containsKey!172 (toList!865 call!14102) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))))))

(assert (= (and d!39797 res!62943) b!130508))

(assert (=> d!39797 m!152743))

(assert (=> d!39797 m!152743))

(assert (=> d!39797 m!152745))

(declare-fun m!154047 () Bool)

(assert (=> d!39797 m!154047))

(declare-fun m!154049 () Bool)

(assert (=> d!39797 m!154049))

(assert (=> b!130508 m!152739))

(assert (=> b!129897 d!39797))

(assert (=> b!129897 d!39497))

(assert (=> b!129897 d!39499))

(declare-fun b!130511 () Bool)

(declare-fun e!85143 () Option!174)

(assert (=> b!130511 (= e!85143 (getValueByKey!168 (t!6139 (toList!865 lt!67448)) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130509 () Bool)

(declare-fun e!85142 () Option!174)

(assert (=> b!130509 (= e!85142 (Some!173 (_2!1306 (h!2328 (toList!865 lt!67448)))))))

(declare-fun b!130510 () Bool)

(assert (=> b!130510 (= e!85142 e!85143)))

(declare-fun c!24075 () Bool)

(assert (=> b!130510 (= c!24075 (and ((_ is Cons!1724) (toList!865 lt!67448)) (not (= (_1!1306 (h!2328 (toList!865 lt!67448))) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun b!130512 () Bool)

(assert (=> b!130512 (= e!85143 None!172)))

(declare-fun d!39799 () Bool)

(declare-fun c!24074 () Bool)

(assert (=> d!39799 (= c!24074 (and ((_ is Cons!1724) (toList!865 lt!67448)) (= (_1!1306 (h!2328 (toList!865 lt!67448))) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39799 (= (getValueByKey!168 (toList!865 lt!67448) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) e!85142)))

(assert (= (and d!39799 c!24074) b!130509))

(assert (= (and d!39799 (not c!24074)) b!130510))

(assert (= (and b!130510 c!24075) b!130511))

(assert (= (and b!130510 (not c!24075)) b!130512))

(declare-fun m!154051 () Bool)

(assert (=> b!130511 m!154051))

(assert (=> b!129869 d!39799))

(assert (=> b!129749 d!39761))

(assert (=> b!129749 d!39355))

(declare-fun b!130513 () Bool)

(declare-fun e!85149 () Bool)

(declare-fun e!85144 () Bool)

(assert (=> b!130513 (= e!85149 e!85144)))

(declare-fun res!62948 () Bool)

(declare-fun call!14214 () Bool)

(assert (=> b!130513 (= res!62948 call!14214)))

(assert (=> b!130513 (=> (not res!62948) (not e!85144))))

(declare-fun b!130514 () Bool)

(declare-fun e!85153 () Bool)

(assert (=> b!130514 (= e!85153 e!85149)))

(declare-fun c!24081 () Bool)

(assert (=> b!130514 (= c!24081 (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!14212 () ListLongMap!1699)

(declare-fun call!14211 () ListLongMap!1699)

(declare-fun c!24078 () Bool)

(declare-fun call!14209 () ListLongMap!1699)

(declare-fun call!14210 () ListLongMap!1699)

(declare-fun bm!14206 () Bool)

(declare-fun c!24079 () Bool)

(assert (=> bm!14206 (= call!14209 (+!167 (ite c!24078 call!14211 (ite c!24079 call!14210 call!14212)) (ite (or c!24078 c!24079) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 newMap!16)) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(declare-fun b!130515 () Bool)

(declare-fun e!85150 () Bool)

(declare-fun call!14213 () Bool)

(assert (=> b!130515 (= e!85150 (not call!14213))))

(declare-fun b!130516 () Bool)

(declare-fun res!62952 () Bool)

(assert (=> b!130516 (=> (not res!62952) (not e!85153))))

(assert (=> b!130516 (= res!62952 e!85150)))

(declare-fun c!24080 () Bool)

(assert (=> b!130516 (= c!24080 (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!14207 () Bool)

(declare-fun call!14215 () ListLongMap!1699)

(assert (=> bm!14207 (= call!14215 call!14209)))

(declare-fun b!130517 () Bool)

(declare-fun lt!67980 () ListLongMap!1699)

(declare-fun e!85148 () Bool)

(assert (=> b!130517 (= e!85148 (= (apply!113 lt!67980 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) (get!1469 (select (arr!2243 (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16)))) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!130517 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2509 (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))))))))

(assert (=> b!130517 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!130518 () Bool)

(declare-fun e!85156 () Unit!4055)

(declare-fun Unit!4098 () Unit!4055)

(assert (=> b!130518 (= e!85156 Unit!4098)))

(declare-fun b!130519 () Bool)

(declare-fun res!62947 () Bool)

(assert (=> b!130519 (=> (not res!62947) (not e!85153))))

(declare-fun e!85147 () Bool)

(assert (=> b!130519 (= res!62947 e!85147)))

(declare-fun res!62950 () Bool)

(assert (=> b!130519 (=> res!62950 e!85147)))

(declare-fun e!85152 () Bool)

(assert (=> b!130519 (= res!62950 (not e!85152))))

(declare-fun res!62945 () Bool)

(assert (=> b!130519 (=> (not res!62945) (not e!85152))))

(assert (=> b!130519 (= res!62945 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!130520 () Bool)

(declare-fun e!85154 () ListLongMap!1699)

(assert (=> b!130520 (= e!85154 call!14215)))

(declare-fun bm!14208 () Bool)

(assert (=> bm!14208 (= call!14210 call!14211)))

(declare-fun b!130521 () Bool)

(assert (=> b!130521 (= e!85147 e!85148)))

(declare-fun res!62944 () Bool)

(assert (=> b!130521 (=> (not res!62944) (not e!85148))))

(assert (=> b!130521 (= res!62944 (contains!886 lt!67980 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!130521 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun bm!14209 () Bool)

(assert (=> bm!14209 (= call!14211 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun b!130522 () Bool)

(declare-fun e!85151 () Bool)

(assert (=> b!130522 (= e!85150 e!85151)))

(declare-fun res!62946 () Bool)

(assert (=> b!130522 (= res!62946 call!14213)))

(assert (=> b!130522 (=> (not res!62946) (not e!85151))))

(declare-fun bm!14210 () Bool)

(assert (=> bm!14210 (= call!14213 (contains!886 lt!67980 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!39801 () Bool)

(assert (=> d!39801 e!85153))

(declare-fun res!62951 () Bool)

(assert (=> d!39801 (=> (not res!62951) (not e!85153))))

(assert (=> d!39801 (= res!62951 (or (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))))

(declare-fun lt!67978 () ListLongMap!1699)

(assert (=> d!39801 (= lt!67980 lt!67978)))

(declare-fun lt!67975 () Unit!4055)

(assert (=> d!39801 (= lt!67975 e!85156)))

(declare-fun c!24077 () Bool)

(declare-fun e!85146 () Bool)

(assert (=> d!39801 (= c!24077 e!85146)))

(declare-fun res!62949 () Bool)

(assert (=> d!39801 (=> (not res!62949) (not e!85146))))

(assert (=> d!39801 (= res!62949 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun e!85155 () ListLongMap!1699)

(assert (=> d!39801 (= lt!67978 e!85155)))

(assert (=> d!39801 (= c!24078 (and (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39801 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39801 (= (getCurrentListMap!536 (_keys!4565 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) lt!67980)))

(declare-fun b!130523 () Bool)

(declare-fun e!85145 () ListLongMap!1699)

(assert (=> b!130523 (= e!85155 e!85145)))

(assert (=> b!130523 (= c!24079 (and (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!130524 () Bool)

(assert (=> b!130524 (= e!85146 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!14211 () Bool)

(assert (=> bm!14211 (= call!14214 (contains!886 lt!67980 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130525 () Bool)

(declare-fun c!24076 () Bool)

(assert (=> b!130525 (= c!24076 (and (not (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2597 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!130525 (= e!85145 e!85154)))

(declare-fun b!130526 () Bool)

(declare-fun lt!67983 () Unit!4055)

(assert (=> b!130526 (= e!85156 lt!67983)))

(declare-fun lt!67979 () ListLongMap!1699)

(assert (=> b!130526 (= lt!67979 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67988 () (_ BitVec 64))

(assert (=> b!130526 (= lt!67988 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67985 () (_ BitVec 64))

(assert (=> b!130526 (= lt!67985 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67981 () Unit!4055)

(assert (=> b!130526 (= lt!67981 (addStillContains!89 lt!67979 lt!67988 (zeroValue!2683 newMap!16) lt!67985))))

(assert (=> b!130526 (contains!886 (+!167 lt!67979 (tuple2!2593 lt!67988 (zeroValue!2683 newMap!16))) lt!67985)))

(declare-fun lt!67969 () Unit!4055)

(assert (=> b!130526 (= lt!67969 lt!67981)))

(declare-fun lt!67982 () ListLongMap!1699)

(assert (=> b!130526 (= lt!67982 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67990 () (_ BitVec 64))

(assert (=> b!130526 (= lt!67990 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67973 () (_ BitVec 64))

(assert (=> b!130526 (= lt!67973 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67976 () Unit!4055)

(assert (=> b!130526 (= lt!67976 (addApplyDifferent!89 lt!67982 lt!67990 (minValue!2683 newMap!16) lt!67973))))

(assert (=> b!130526 (= (apply!113 (+!167 lt!67982 (tuple2!2593 lt!67990 (minValue!2683 newMap!16))) lt!67973) (apply!113 lt!67982 lt!67973))))

(declare-fun lt!67987 () Unit!4055)

(assert (=> b!130526 (= lt!67987 lt!67976)))

(declare-fun lt!67989 () ListLongMap!1699)

(assert (=> b!130526 (= lt!67989 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67974 () (_ BitVec 64))

(assert (=> b!130526 (= lt!67974 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67971 () (_ BitVec 64))

(assert (=> b!130526 (= lt!67971 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!67970 () Unit!4055)

(assert (=> b!130526 (= lt!67970 (addApplyDifferent!89 lt!67989 lt!67974 (zeroValue!2683 newMap!16) lt!67971))))

(assert (=> b!130526 (= (apply!113 (+!167 lt!67989 (tuple2!2593 lt!67974 (zeroValue!2683 newMap!16))) lt!67971) (apply!113 lt!67989 lt!67971))))

(declare-fun lt!67972 () Unit!4055)

(assert (=> b!130526 (= lt!67972 lt!67970)))

(declare-fun lt!67977 () ListLongMap!1699)

(assert (=> b!130526 (= lt!67977 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!67986 () (_ BitVec 64))

(assert (=> b!130526 (= lt!67986 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!67984 () (_ BitVec 64))

(assert (=> b!130526 (= lt!67984 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!130526 (= lt!67983 (addApplyDifferent!89 lt!67977 lt!67986 (minValue!2683 newMap!16) lt!67984))))

(assert (=> b!130526 (= (apply!113 (+!167 lt!67977 (tuple2!2593 lt!67986 (minValue!2683 newMap!16))) lt!67984) (apply!113 lt!67977 lt!67984))))

(declare-fun b!130527 () Bool)

(assert (=> b!130527 (= e!85152 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!130528 () Bool)

(assert (=> b!130528 (= e!85145 call!14215)))

(declare-fun b!130529 () Bool)

(assert (=> b!130529 (= e!85149 (not call!14214))))

(declare-fun b!130530 () Bool)

(assert (=> b!130530 (= e!85144 (= (apply!113 lt!67980 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2683 newMap!16)))))

(declare-fun b!130531 () Bool)

(assert (=> b!130531 (= e!85151 (= (apply!113 lt!67980 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2683 newMap!16)))))

(declare-fun b!130532 () Bool)

(assert (=> b!130532 (= e!85155 (+!167 call!14209 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))

(declare-fun b!130533 () Bool)

(assert (=> b!130533 (= e!85154 call!14212)))

(declare-fun bm!14212 () Bool)

(assert (=> bm!14212 (= call!14212 call!14210)))

(assert (= (and d!39801 c!24078) b!130532))

(assert (= (and d!39801 (not c!24078)) b!130523))

(assert (= (and b!130523 c!24079) b!130528))

(assert (= (and b!130523 (not c!24079)) b!130525))

(assert (= (and b!130525 c!24076) b!130520))

(assert (= (and b!130525 (not c!24076)) b!130533))

(assert (= (or b!130520 b!130533) bm!14212))

(assert (= (or b!130528 bm!14212) bm!14208))

(assert (= (or b!130528 b!130520) bm!14207))

(assert (= (or b!130532 bm!14208) bm!14209))

(assert (= (or b!130532 bm!14207) bm!14206))

(assert (= (and d!39801 res!62949) b!130524))

(assert (= (and d!39801 c!24077) b!130526))

(assert (= (and d!39801 (not c!24077)) b!130518))

(assert (= (and d!39801 res!62951) b!130519))

(assert (= (and b!130519 res!62945) b!130527))

(assert (= (and b!130519 (not res!62950)) b!130521))

(assert (= (and b!130521 res!62944) b!130517))

(assert (= (and b!130519 res!62947) b!130516))

(assert (= (and b!130516 c!24080) b!130522))

(assert (= (and b!130516 (not c!24080)) b!130515))

(assert (= (and b!130522 res!62946) b!130531))

(assert (= (or b!130522 b!130515) bm!14210))

(assert (= (and b!130516 res!62952) b!130514))

(assert (= (and b!130514 c!24081) b!130513))

(assert (= (and b!130514 (not c!24081)) b!130529))

(assert (= (and b!130513 res!62948) b!130530))

(assert (= (or b!130513 b!130529) bm!14211))

(declare-fun b_lambda!5827 () Bool)

(assert (=> (not b_lambda!5827) (not b!130517)))

(assert (=> b!130517 t!6146))

(declare-fun b_and!8109 () Bool)

(assert (= b_and!8105 (and (=> t!6146 result!3933) b_and!8109)))

(assert (=> b!130517 t!6148))

(declare-fun b_and!8111 () Bool)

(assert (= b_and!8107 (and (=> t!6148 result!3935) b_and!8111)))

(assert (=> b!130527 m!152429))

(assert (=> b!130527 m!152429))

(assert (=> b!130527 m!152431))

(declare-fun m!154053 () Bool)

(assert (=> bm!14206 m!154053))

(assert (=> d!39801 m!152393))

(assert (=> b!130526 m!152429))

(declare-fun m!154055 () Bool)

(assert (=> b!130526 m!154055))

(declare-fun m!154057 () Bool)

(assert (=> b!130526 m!154057))

(declare-fun m!154059 () Bool)

(assert (=> b!130526 m!154059))

(declare-fun m!154061 () Bool)

(assert (=> b!130526 m!154061))

(declare-fun m!154063 () Bool)

(assert (=> b!130526 m!154063))

(assert (=> b!130526 m!154055))

(declare-fun m!154065 () Bool)

(assert (=> b!130526 m!154065))

(declare-fun m!154067 () Bool)

(assert (=> b!130526 m!154067))

(declare-fun m!154069 () Bool)

(assert (=> b!130526 m!154069))

(declare-fun m!154071 () Bool)

(assert (=> b!130526 m!154071))

(assert (=> b!130526 m!154057))

(declare-fun m!154073 () Bool)

(assert (=> b!130526 m!154073))

(declare-fun m!154075 () Bool)

(assert (=> b!130526 m!154075))

(declare-fun m!154077 () Bool)

(assert (=> b!130526 m!154077))

(declare-fun m!154079 () Bool)

(assert (=> b!130526 m!154079))

(declare-fun m!154081 () Bool)

(assert (=> b!130526 m!154081))

(declare-fun m!154083 () Bool)

(assert (=> b!130526 m!154083))

(assert (=> b!130526 m!154081))

(declare-fun m!154085 () Bool)

(assert (=> b!130526 m!154085))

(assert (=> b!130526 m!154073))

(assert (=> b!130521 m!152429))

(assert (=> b!130521 m!152429))

(declare-fun m!154087 () Bool)

(assert (=> b!130521 m!154087))

(declare-fun m!154089 () Bool)

(assert (=> bm!14210 m!154089))

(assert (=> b!130517 m!152429))

(assert (=> b!130517 m!152471))

(declare-fun m!154091 () Bool)

(assert (=> b!130517 m!154091))

(assert (=> b!130517 m!152471))

(declare-fun m!154093 () Bool)

(assert (=> b!130517 m!154093))

(assert (=> b!130517 m!154091))

(assert (=> b!130517 m!152429))

(declare-fun m!154095 () Bool)

(assert (=> b!130517 m!154095))

(declare-fun m!154097 () Bool)

(assert (=> b!130530 m!154097))

(declare-fun m!154099 () Bool)

(assert (=> b!130531 m!154099))

(assert (=> bm!14209 m!154069))

(declare-fun m!154101 () Bool)

(assert (=> bm!14211 m!154101))

(assert (=> b!130524 m!152429))

(assert (=> b!130524 m!152429))

(assert (=> b!130524 m!152431))

(declare-fun m!154103 () Bool)

(assert (=> b!130532 m!154103))

(assert (=> b!129749 d!39801))

(declare-fun d!39803 () Bool)

(declare-fun e!85158 () Bool)

(assert (=> d!39803 e!85158))

(declare-fun res!62953 () Bool)

(assert (=> d!39803 (=> res!62953 e!85158)))

(declare-fun lt!67991 () Bool)

(assert (=> d!39803 (= res!62953 (not lt!67991))))

(declare-fun lt!67994 () Bool)

(assert (=> d!39803 (= lt!67991 lt!67994)))

(declare-fun lt!67993 () Unit!4055)

(declare-fun e!85157 () Unit!4055)

(assert (=> d!39803 (= lt!67993 e!85157)))

(declare-fun c!24082 () Bool)

(assert (=> d!39803 (= c!24082 lt!67994)))

(assert (=> d!39803 (= lt!67994 (containsKey!172 (toList!865 lt!67401) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!39803 (= (contains!886 lt!67401 #b0000000000000000000000000000000000000000000000000000000000000000) lt!67991)))

(declare-fun b!130534 () Bool)

(declare-fun lt!67992 () Unit!4055)

(assert (=> b!130534 (= e!85157 lt!67992)))

(assert (=> b!130534 (= lt!67992 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67401) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!130534 (isDefined!122 (getValueByKey!168 (toList!865 lt!67401) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130535 () Bool)

(declare-fun Unit!4099 () Unit!4055)

(assert (=> b!130535 (= e!85157 Unit!4099)))

(declare-fun b!130536 () Bool)

(assert (=> b!130536 (= e!85158 (isDefined!122 (getValueByKey!168 (toList!865 lt!67401) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39803 c!24082) b!130534))

(assert (= (and d!39803 (not c!24082)) b!130535))

(assert (= (and d!39803 (not res!62953)) b!130536))

(declare-fun m!154105 () Bool)

(assert (=> d!39803 m!154105))

(declare-fun m!154107 () Bool)

(assert (=> b!130534 m!154107))

(assert (=> b!130534 m!153157))

(assert (=> b!130534 m!153157))

(declare-fun m!154109 () Bool)

(assert (=> b!130534 m!154109))

(assert (=> b!130536 m!153157))

(assert (=> b!130536 m!153157))

(assert (=> b!130536 m!154109))

(assert (=> bm!14120 d!39803))

(declare-fun d!39805 () Bool)

(assert (=> d!39805 (= (isEmpty!407 (getValueByKey!168 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))) (not ((_ is Some!173) (getValueByKey!168 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))))

(assert (=> d!39349 d!39805))

(declare-fun e!85160 () Option!174)

(declare-fun b!130539 () Bool)

(assert (=> b!130539 (= e!85160 (getValueByKey!168 (t!6139 (toList!865 lt!67464)) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!130537 () Bool)

(declare-fun e!85159 () Option!174)

(assert (=> b!130537 (= e!85159 (Some!173 (_2!1306 (h!2328 (toList!865 lt!67464)))))))

(declare-fun b!130538 () Bool)

(assert (=> b!130538 (= e!85159 e!85160)))

(declare-fun c!24084 () Bool)

(assert (=> b!130538 (= c!24084 (and ((_ is Cons!1724) (toList!865 lt!67464)) (not (= (_1!1306 (h!2328 (toList!865 lt!67464))) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))))

(declare-fun b!130540 () Bool)

(assert (=> b!130540 (= e!85160 None!172)))

(declare-fun c!24083 () Bool)

(declare-fun d!39807 () Bool)

(assert (=> d!39807 (= c!24083 (and ((_ is Cons!1724) (toList!865 lt!67464)) (= (_1!1306 (h!2328 (toList!865 lt!67464))) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (=> d!39807 (= (getValueByKey!168 (toList!865 lt!67464) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) e!85159)))

(assert (= (and d!39807 c!24083) b!130537))

(assert (= (and d!39807 (not c!24083)) b!130538))

(assert (= (and b!130538 c!24084) b!130539))

(assert (= (and b!130538 (not c!24084)) b!130540))

(declare-fun m!154111 () Bool)

(assert (=> b!130539 m!154111))

(assert (=> b!129877 d!39807))

(assert (=> b!129862 d!39493))

(assert (=> b!129862 d!39495))

(declare-fun d!39809 () Bool)

(assert (=> d!39809 (= (get!1472 (getValueByKey!168 (toList!865 lt!67211) lt!67218)) (v!3163 (getValueByKey!168 (toList!865 lt!67211) lt!67218)))))

(assert (=> d!39389 d!39809))

(declare-fun b!130543 () Bool)

(declare-fun e!85162 () Option!174)

(assert (=> b!130543 (= e!85162 (getValueByKey!168 (t!6139 (toList!865 lt!67211)) lt!67218))))

(declare-fun b!130541 () Bool)

(declare-fun e!85161 () Option!174)

(assert (=> b!130541 (= e!85161 (Some!173 (_2!1306 (h!2328 (toList!865 lt!67211)))))))

(declare-fun b!130542 () Bool)

(assert (=> b!130542 (= e!85161 e!85162)))

(declare-fun c!24086 () Bool)

(assert (=> b!130542 (= c!24086 (and ((_ is Cons!1724) (toList!865 lt!67211)) (not (= (_1!1306 (h!2328 (toList!865 lt!67211))) lt!67218))))))

(declare-fun b!130544 () Bool)

(assert (=> b!130544 (= e!85162 None!172)))

(declare-fun d!39811 () Bool)

(declare-fun c!24085 () Bool)

(assert (=> d!39811 (= c!24085 (and ((_ is Cons!1724) (toList!865 lt!67211)) (= (_1!1306 (h!2328 (toList!865 lt!67211))) lt!67218)))))

(assert (=> d!39811 (= (getValueByKey!168 (toList!865 lt!67211) lt!67218) e!85161)))

(assert (= (and d!39811 c!24085) b!130541))

(assert (= (and d!39811 (not c!24085)) b!130542))

(assert (= (and b!130542 c!24086) b!130543))

(assert (= (and b!130542 (not c!24086)) b!130544))

(declare-fun m!154113 () Bool)

(assert (=> b!130543 m!154113))

(assert (=> d!39389 d!39811))

(assert (=> d!39395 d!39391))

(declare-fun d!39813 () Bool)

(declare-fun e!85164 () Bool)

(assert (=> d!39813 e!85164))

(declare-fun res!62954 () Bool)

(assert (=> d!39813 (=> res!62954 e!85164)))

(declare-fun lt!67995 () Bool)

(assert (=> d!39813 (= res!62954 (not lt!67995))))

(declare-fun lt!67998 () Bool)

(assert (=> d!39813 (= lt!67995 lt!67998)))

(declare-fun lt!67997 () Unit!4055)

(declare-fun e!85163 () Unit!4055)

(assert (=> d!39813 (= lt!67997 e!85163)))

(declare-fun c!24087 () Bool)

(assert (=> d!39813 (= c!24087 lt!67998)))

(assert (=> d!39813 (= lt!67998 (containsKey!172 (toList!865 lt!67223) lt!67205))))

(assert (=> d!39813 (= (contains!886 lt!67223 lt!67205) lt!67995)))

(declare-fun b!130545 () Bool)

(declare-fun lt!67996 () Unit!4055)

(assert (=> b!130545 (= e!85163 lt!67996)))

(assert (=> b!130545 (= lt!67996 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67223) lt!67205))))

(assert (=> b!130545 (isDefined!122 (getValueByKey!168 (toList!865 lt!67223) lt!67205))))

(declare-fun b!130546 () Bool)

(declare-fun Unit!4100 () Unit!4055)

(assert (=> b!130546 (= e!85163 Unit!4100)))

(declare-fun b!130547 () Bool)

(assert (=> b!130547 (= e!85164 (isDefined!122 (getValueByKey!168 (toList!865 lt!67223) lt!67205)))))

(assert (= (and d!39813 c!24087) b!130545))

(assert (= (and d!39813 (not c!24087)) b!130546))

(assert (= (and d!39813 (not res!62954)) b!130547))

(declare-fun m!154115 () Bool)

(assert (=> d!39813 m!154115))

(declare-fun m!154117 () Bool)

(assert (=> b!130545 m!154117))

(assert (=> b!130545 m!152699))

(assert (=> b!130545 m!152699))

(declare-fun m!154119 () Bool)

(assert (=> b!130545 m!154119))

(assert (=> b!130547 m!152699))

(assert (=> b!130547 m!152699))

(assert (=> b!130547 m!154119))

(assert (=> d!39395 d!39813))

(assert (=> d!39395 d!39399))

(assert (=> d!39395 d!39413))

(declare-fun d!39815 () Bool)

(assert (=> d!39815 (= (apply!113 (+!167 lt!67223 (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!67205) (apply!113 lt!67223 lt!67205))))

(assert (=> d!39815 true))

(declare-fun _$34!965 () Unit!4055)

(assert (=> d!39815 (= (choose!799 lt!67223 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))) lt!67205) _$34!965)))

(declare-fun bs!5435 () Bool)

(assert (= bs!5435 d!39815))

(assert (=> bs!5435 m!152279))

(assert (=> bs!5435 m!152279))

(assert (=> bs!5435 m!152281))

(assert (=> bs!5435 m!152267))

(assert (=> d!39395 d!39815))

(declare-fun d!39817 () Bool)

(declare-fun e!85166 () Bool)

(assert (=> d!39817 e!85166))

(declare-fun res!62955 () Bool)

(assert (=> d!39817 (=> res!62955 e!85166)))

(declare-fun lt!67999 () Bool)

(assert (=> d!39817 (= res!62955 (not lt!67999))))

(declare-fun lt!68002 () Bool)

(assert (=> d!39817 (= lt!67999 lt!68002)))

(declare-fun lt!68001 () Unit!4055)

(declare-fun e!85165 () Unit!4055)

(assert (=> d!39817 (= lt!68001 e!85165)))

(declare-fun c!24088 () Bool)

(assert (=> d!39817 (= c!24088 lt!68002)))

(assert (=> d!39817 (= lt!68002 (containsKey!172 (toList!865 lt!67348) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!39817 (= (contains!886 lt!67348 #b1000000000000000000000000000000000000000000000000000000000000000) lt!67999)))

(declare-fun b!130548 () Bool)

(declare-fun lt!68000 () Unit!4055)

(assert (=> b!130548 (= e!85165 lt!68000)))

(assert (=> b!130548 (= lt!68000 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67348) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!130548 (isDefined!122 (getValueByKey!168 (toList!865 lt!67348) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130549 () Bool)

(declare-fun Unit!4101 () Unit!4055)

(assert (=> b!130549 (= e!85165 Unit!4101)))

(declare-fun b!130550 () Bool)

(assert (=> b!130550 (= e!85166 (isDefined!122 (getValueByKey!168 (toList!865 lt!67348) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39817 c!24088) b!130548))

(assert (= (and d!39817 (not c!24088)) b!130549))

(assert (= (and d!39817 (not res!62955)) b!130550))

(declare-fun m!154121 () Bool)

(assert (=> d!39817 m!154121))

(declare-fun m!154123 () Bool)

(assert (=> b!130548 m!154123))

(assert (=> b!130548 m!153785))

(assert (=> b!130548 m!153785))

(declare-fun m!154125 () Bool)

(assert (=> b!130548 m!154125))

(assert (=> b!130550 m!153785))

(assert (=> b!130550 m!153785))

(assert (=> b!130550 m!154125))

(assert (=> bm!14111 d!39817))

(declare-fun d!39819 () Bool)

(declare-fun e!85167 () Bool)

(assert (=> d!39819 e!85167))

(declare-fun res!62957 () Bool)

(assert (=> d!39819 (=> (not res!62957) (not e!85167))))

(declare-fun lt!68006 () ListLongMap!1699)

(assert (=> d!39819 (= res!62957 (contains!886 lt!68006 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(declare-fun lt!68005 () List!1728)

(assert (=> d!39819 (= lt!68006 (ListLongMap!1700 lt!68005))))

(declare-fun lt!68004 () Unit!4055)

(declare-fun lt!68003 () Unit!4055)

(assert (=> d!39819 (= lt!68004 lt!68003)))

(assert (=> d!39819 (= (getValueByKey!168 lt!68005 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(assert (=> d!39819 (= lt!68003 (lemmaContainsTupThenGetReturnValue!85 lt!68005 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(assert (=> d!39819 (= lt!68005 (insertStrictlySorted!87 (toList!865 call!14132) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(assert (=> d!39819 (= (+!167 call!14132 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))) lt!68006)))

(declare-fun b!130551 () Bool)

(declare-fun res!62956 () Bool)

(assert (=> b!130551 (=> (not res!62956) (not e!85167))))

(assert (=> b!130551 (= res!62956 (= (getValueByKey!168 (toList!865 lt!68006) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))))

(declare-fun b!130552 () Bool)

(assert (=> b!130552 (= e!85167 (contains!887 (toList!865 lt!68006) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))

(assert (= (and d!39819 res!62957) b!130551))

(assert (= (and b!130551 res!62956) b!130552))

(declare-fun m!154127 () Bool)

(assert (=> d!39819 m!154127))

(declare-fun m!154129 () Bool)

(assert (=> d!39819 m!154129))

(declare-fun m!154131 () Bool)

(assert (=> d!39819 m!154131))

(declare-fun m!154133 () Bool)

(assert (=> d!39819 m!154133))

(declare-fun m!154135 () Bool)

(assert (=> b!130551 m!154135))

(declare-fun m!154137 () Bool)

(assert (=> b!130552 m!154137))

(assert (=> b!129931 d!39819))

(declare-fun d!39821 () Bool)

(assert (=> d!39821 (= (inRange!0 (ite c!23936 (index!3286 lt!67603) (ite c!23935 (index!3285 lt!67593) (index!3288 lt!67593))) (mask!7102 newMap!16)) (and (bvsge (ite c!23936 (index!3286 lt!67603) (ite c!23935 (index!3285 lt!67593) (index!3288 lt!67593))) #b00000000000000000000000000000000) (bvslt (ite c!23936 (index!3286 lt!67603) (ite c!23935 (index!3285 lt!67593) (index!3288 lt!67593))) (bvadd (mask!7102 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!14147 d!39821))

(declare-fun d!39823 () Bool)

(assert (=> d!39823 (= (inRange!0 (ite c!23863 (index!3285 lt!67328) (index!3288 lt!67328)) (mask!7102 newMap!16)) (and (bvsge (ite c!23863 (index!3285 lt!67328) (index!3288 lt!67328)) #b00000000000000000000000000000000) (bvslt (ite c!23863 (index!3285 lt!67328) (index!3288 lt!67328)) (bvadd (mask!7102 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!14104 d!39823))

(declare-fun d!39825 () Bool)

(declare-fun e!85169 () Bool)

(assert (=> d!39825 e!85169))

(declare-fun res!62958 () Bool)

(assert (=> d!39825 (=> res!62958 e!85169)))

(declare-fun lt!68007 () Bool)

(assert (=> d!39825 (= res!62958 (not lt!68007))))

(declare-fun lt!68010 () Bool)

(assert (=> d!39825 (= lt!68007 lt!68010)))

(declare-fun lt!68009 () Unit!4055)

(declare-fun e!85168 () Unit!4055)

(assert (=> d!39825 (= lt!68009 e!85168)))

(declare-fun c!24089 () Bool)

(assert (=> d!39825 (= c!24089 lt!68010)))

(assert (=> d!39825 (= lt!68010 (containsKey!172 (toList!865 lt!67453) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39825 (= (contains!886 lt!67453 (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!68007)))

(declare-fun b!130553 () Bool)

(declare-fun lt!68008 () Unit!4055)

(assert (=> b!130553 (= e!85168 lt!68008)))

(assert (=> b!130553 (= lt!68008 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67453) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> b!130553 (isDefined!122 (getValueByKey!168 (toList!865 lt!67453) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130554 () Bool)

(declare-fun Unit!4102 () Unit!4055)

(assert (=> b!130554 (= e!85168 Unit!4102)))

(declare-fun b!130555 () Bool)

(assert (=> b!130555 (= e!85169 (isDefined!122 (getValueByKey!168 (toList!865 lt!67453) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (= (and d!39825 c!24089) b!130553))

(assert (= (and d!39825 (not c!24089)) b!130554))

(assert (= (and d!39825 (not res!62958)) b!130555))

(declare-fun m!154139 () Bool)

(assert (=> d!39825 m!154139))

(declare-fun m!154141 () Bool)

(assert (=> b!130553 m!154141))

(assert (=> b!130553 m!152675))

(assert (=> b!130553 m!152675))

(declare-fun m!154143 () Bool)

(assert (=> b!130553 m!154143))

(assert (=> b!130555 m!152675))

(assert (=> b!130555 m!152675))

(assert (=> b!130555 m!154143))

(assert (=> d!39405 d!39825))

(declare-fun b!130558 () Bool)

(declare-fun e!85171 () Option!174)

(assert (=> b!130558 (= e!85171 (getValueByKey!168 (t!6139 lt!67452) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130556 () Bool)

(declare-fun e!85170 () Option!174)

(assert (=> b!130556 (= e!85170 (Some!173 (_2!1306 (h!2328 lt!67452))))))

(declare-fun b!130557 () Bool)

(assert (=> b!130557 (= e!85170 e!85171)))

(declare-fun c!24091 () Bool)

(assert (=> b!130557 (= c!24091 (and ((_ is Cons!1724) lt!67452) (not (= (_1!1306 (h!2328 lt!67452)) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun b!130559 () Bool)

(assert (=> b!130559 (= e!85171 None!172)))

(declare-fun c!24090 () Bool)

(declare-fun d!39827 () Bool)

(assert (=> d!39827 (= c!24090 (and ((_ is Cons!1724) lt!67452) (= (_1!1306 (h!2328 lt!67452)) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39827 (= (getValueByKey!168 lt!67452 (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) e!85170)))

(assert (= (and d!39827 c!24090) b!130556))

(assert (= (and d!39827 (not c!24090)) b!130557))

(assert (= (and b!130557 c!24091) b!130558))

(assert (= (and b!130557 (not c!24091)) b!130559))

(declare-fun m!154145 () Bool)

(assert (=> b!130558 m!154145))

(assert (=> d!39405 d!39827))

(declare-fun d!39829 () Bool)

(assert (=> d!39829 (= (getValueByKey!168 lt!67452 (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (Some!173 (_2!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun lt!68011 () Unit!4055)

(assert (=> d!39829 (= lt!68011 (choose!804 lt!67452 (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun e!85172 () Bool)

(assert (=> d!39829 e!85172))

(declare-fun res!62959 () Bool)

(assert (=> d!39829 (=> (not res!62959) (not e!85172))))

(assert (=> d!39829 (= res!62959 (isStrictlySorted!314 lt!67452))))

(assert (=> d!39829 (= (lemmaContainsTupThenGetReturnValue!85 lt!67452 (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!68011)))

(declare-fun b!130560 () Bool)

(declare-fun res!62960 () Bool)

(assert (=> b!130560 (=> (not res!62960) (not e!85172))))

(assert (=> b!130560 (= res!62960 (containsKey!172 lt!67452 (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130561 () Bool)

(assert (=> b!130561 (= e!85172 (contains!887 lt!67452 (tuple2!2593 (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (= (and d!39829 res!62959) b!130560))

(assert (= (and b!130560 res!62960) b!130561))

(assert (=> d!39829 m!152669))

(declare-fun m!154147 () Bool)

(assert (=> d!39829 m!154147))

(declare-fun m!154149 () Bool)

(assert (=> d!39829 m!154149))

(declare-fun m!154151 () Bool)

(assert (=> b!130560 m!154151))

(declare-fun m!154153 () Bool)

(assert (=> b!130561 m!154153))

(assert (=> d!39405 d!39829))

(declare-fun b!130562 () Bool)

(declare-fun e!85174 () List!1728)

(declare-fun call!14218 () List!1728)

(assert (=> b!130562 (= e!85174 call!14218)))

(declare-fun b!130563 () Bool)

(declare-fun e!85173 () List!1728)

(declare-fun call!14217 () List!1728)

(assert (=> b!130563 (= e!85173 call!14217)))

(declare-fun b!130564 () Bool)

(declare-fun e!85175 () List!1728)

(declare-fun call!14216 () List!1728)

(assert (=> b!130564 (= e!85175 call!14216)))

(declare-fun b!130565 () Bool)

(assert (=> b!130565 (= e!85175 e!85173)))

(declare-fun c!24094 () Bool)

(assert (=> b!130565 (= c!24094 (and ((_ is Cons!1724) (toList!865 lt!67216)) (= (_1!1306 (h!2328 (toList!865 lt!67216))) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun bm!14213 () Bool)

(assert (=> bm!14213 (= call!14218 call!14217)))

(declare-fun c!24095 () Bool)

(declare-fun e!85176 () List!1728)

(declare-fun bm!14214 () Bool)

(assert (=> bm!14214 (= call!14216 ($colon$colon!90 e!85176 (ite c!24095 (h!2328 (toList!865 lt!67216)) (tuple2!2593 (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun c!24093 () Bool)

(assert (=> bm!14214 (= c!24093 c!24095)))

(declare-fun d!39831 () Bool)

(declare-fun e!85177 () Bool)

(assert (=> d!39831 e!85177))

(declare-fun res!62962 () Bool)

(assert (=> d!39831 (=> (not res!62962) (not e!85177))))

(declare-fun lt!68012 () List!1728)

(assert (=> d!39831 (= res!62962 (isStrictlySorted!314 lt!68012))))

(assert (=> d!39831 (= lt!68012 e!85175)))

(assert (=> d!39831 (= c!24095 (and ((_ is Cons!1724) (toList!865 lt!67216)) (bvslt (_1!1306 (h!2328 (toList!865 lt!67216))) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39831 (isStrictlySorted!314 (toList!865 lt!67216))))

(assert (=> d!39831 (= (insertStrictlySorted!87 (toList!865 lt!67216) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!68012)))

(declare-fun b!130566 () Bool)

(declare-fun res!62961 () Bool)

(assert (=> b!130566 (=> (not res!62961) (not e!85177))))

(assert (=> b!130566 (= res!62961 (containsKey!172 lt!68012 (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130567 () Bool)

(assert (=> b!130567 (= e!85177 (contains!887 lt!68012 (tuple2!2593 (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!130568 () Bool)

(assert (=> b!130568 (= e!85176 (insertStrictlySorted!87 (t!6139 (toList!865 lt!67216)) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130569 () Bool)

(declare-fun c!24092 () Bool)

(assert (=> b!130569 (= e!85176 (ite c!24094 (t!6139 (toList!865 lt!67216)) (ite c!24092 (Cons!1724 (h!2328 (toList!865 lt!67216)) (t!6139 (toList!865 lt!67216))) Nil!1725)))))

(declare-fun b!130570 () Bool)

(assert (=> b!130570 (= e!85174 call!14218)))

(declare-fun bm!14215 () Bool)

(assert (=> bm!14215 (= call!14217 call!14216)))

(declare-fun b!130571 () Bool)

(assert (=> b!130571 (= c!24092 (and ((_ is Cons!1724) (toList!865 lt!67216)) (bvsgt (_1!1306 (h!2328 (toList!865 lt!67216))) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> b!130571 (= e!85173 e!85174)))

(assert (= (and d!39831 c!24095) b!130564))

(assert (= (and d!39831 (not c!24095)) b!130565))

(assert (= (and b!130565 c!24094) b!130563))

(assert (= (and b!130565 (not c!24094)) b!130571))

(assert (= (and b!130571 c!24092) b!130570))

(assert (= (and b!130571 (not c!24092)) b!130562))

(assert (= (or b!130570 b!130562) bm!14213))

(assert (= (or b!130563 bm!14213) bm!14215))

(assert (= (or b!130564 bm!14215) bm!14214))

(assert (= (and bm!14214 c!24093) b!130568))

(assert (= (and bm!14214 (not c!24093)) b!130569))

(assert (= (and d!39831 res!62962) b!130566))

(assert (= (and b!130566 res!62961) b!130567))

(declare-fun m!154155 () Bool)

(assert (=> bm!14214 m!154155))

(declare-fun m!154157 () Bool)

(assert (=> b!130568 m!154157))

(declare-fun m!154159 () Bool)

(assert (=> d!39831 m!154159))

(declare-fun m!154161 () Bool)

(assert (=> d!39831 m!154161))

(declare-fun m!154163 () Bool)

(assert (=> b!130567 m!154163))

(declare-fun m!154165 () Bool)

(assert (=> b!130566 m!154165))

(assert (=> d!39405 d!39831))

(declare-fun d!39833 () Bool)

(declare-fun e!85179 () Bool)

(assert (=> d!39833 e!85179))

(declare-fun res!62963 () Bool)

(assert (=> d!39833 (=> res!62963 e!85179)))

(declare-fun lt!68013 () Bool)

(assert (=> d!39833 (= res!62963 (not lt!68013))))

(declare-fun lt!68016 () Bool)

(assert (=> d!39833 (= lt!68013 lt!68016)))

(declare-fun lt!68015 () Unit!4055)

(declare-fun e!85178 () Unit!4055)

(assert (=> d!39833 (= lt!68015 e!85178)))

(declare-fun c!24096 () Bool)

(assert (=> d!39833 (= c!24096 lt!68016)))

(assert (=> d!39833 (= lt!68016 (containsKey!172 (toList!865 lt!67384) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!39833 (= (contains!886 lt!67384 #b1000000000000000000000000000000000000000000000000000000000000000) lt!68013)))

(declare-fun b!130572 () Bool)

(declare-fun lt!68014 () Unit!4055)

(assert (=> b!130572 (= e!85178 lt!68014)))

(assert (=> b!130572 (= lt!68014 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67384) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!130572 (isDefined!122 (getValueByKey!168 (toList!865 lt!67384) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130573 () Bool)

(declare-fun Unit!4103 () Unit!4055)

(assert (=> b!130573 (= e!85178 Unit!4103)))

(declare-fun b!130574 () Bool)

(assert (=> b!130574 (= e!85179 (isDefined!122 (getValueByKey!168 (toList!865 lt!67384) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39833 c!24096) b!130572))

(assert (= (and d!39833 (not c!24096)) b!130573))

(assert (= (and d!39833 (not res!62963)) b!130574))

(declare-fun m!154167 () Bool)

(assert (=> d!39833 m!154167))

(declare-fun m!154169 () Bool)

(assert (=> b!130572 m!154169))

(declare-fun m!154171 () Bool)

(assert (=> b!130572 m!154171))

(assert (=> b!130572 m!154171))

(declare-fun m!154173 () Bool)

(assert (=> b!130572 m!154173))

(assert (=> b!130574 m!154171))

(assert (=> b!130574 m!154171))

(assert (=> b!130574 m!154173))

(assert (=> b!129778 d!39833))

(assert (=> bm!14148 d!39375))

(assert (=> b!129836 d!39515))

(assert (=> b!129836 d!39517))

(declare-fun d!39835 () Bool)

(assert (=> d!39835 (contains!886 (getCurrentListMap!536 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))))

(assert (=> d!39835 true))

(declare-fun _$16!148 () Unit!4055)

(assert (=> d!39835 (= (choose!797 (_keys!4565 newMap!16) lt!67304 (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (index!3286 lt!67299) (defaultEntry!2824 newMap!16)) _$16!148)))

(declare-fun bs!5436 () Bool)

(assert (= bs!5436 d!39835))

(assert (=> bs!5436 m!152489))

(assert (=> bs!5436 m!152321))

(assert (=> bs!5436 m!152489))

(assert (=> bs!5436 m!152321))

(assert (=> bs!5436 m!152491))

(assert (=> d!39357 d!39835))

(assert (=> d!39357 d!39501))

(declare-fun d!39837 () Bool)

(assert (=> d!39837 (= (get!1472 (getValueByKey!168 (toList!865 lt!67214) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3163 (getValueByKey!168 (toList!865 lt!67214) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39435 d!39837))

(assert (=> d!39435 d!39517))

(declare-fun d!39839 () Bool)

(declare-fun res!62964 () Bool)

(declare-fun e!85180 () Bool)

(assert (=> d!39839 (=> res!62964 e!85180)))

(assert (=> d!39839 (= res!62964 (and ((_ is Cons!1724) (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))) (= (_1!1306 (h!2328 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(assert (=> d!39839 (= (containsKey!172 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) e!85180)))

(declare-fun b!130575 () Bool)

(declare-fun e!85181 () Bool)

(assert (=> b!130575 (= e!85180 e!85181)))

(declare-fun res!62965 () Bool)

(assert (=> b!130575 (=> (not res!62965) (not e!85181))))

(assert (=> b!130575 (= res!62965 (and (or (not ((_ is Cons!1724) (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))))) (bvsle (_1!1306 (h!2328 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))) ((_ is Cons!1724) (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))) (bvslt (_1!1306 (h!2328 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355))))))

(declare-fun b!130576 () Bool)

(assert (=> b!130576 (= e!85181 (containsKey!172 (t!6139 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (= (and d!39839 (not res!62964)) b!130575))

(assert (= (and b!130575 res!62965) b!130576))

(assert (=> b!130576 m!152209))

(declare-fun m!154175 () Bool)

(assert (=> b!130576 m!154175))

(assert (=> d!39361 d!39839))

(declare-fun d!39841 () Bool)

(declare-fun e!85183 () Bool)

(assert (=> d!39841 e!85183))

(declare-fun res!62966 () Bool)

(assert (=> d!39841 (=> res!62966 e!85183)))

(declare-fun lt!68017 () Bool)

(assert (=> d!39841 (= res!62966 (not lt!68017))))

(declare-fun lt!68020 () Bool)

(assert (=> d!39841 (= lt!68017 lt!68020)))

(declare-fun lt!68019 () Unit!4055)

(declare-fun e!85182 () Unit!4055)

(assert (=> d!39841 (= lt!68019 e!85182)))

(declare-fun c!24097 () Bool)

(assert (=> d!39841 (= c!24097 lt!68020)))

(assert (=> d!39841 (= lt!68020 (containsKey!172 (toList!865 lt!67460) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39841 (= (contains!886 lt!67460 (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!68017)))

(declare-fun b!130577 () Bool)

(declare-fun lt!68018 () Unit!4055)

(assert (=> b!130577 (= e!85182 lt!68018)))

(assert (=> b!130577 (= lt!68018 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67460) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> b!130577 (isDefined!122 (getValueByKey!168 (toList!865 lt!67460) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130578 () Bool)

(declare-fun Unit!4104 () Unit!4055)

(assert (=> b!130578 (= e!85182 Unit!4104)))

(declare-fun b!130579 () Bool)

(assert (=> b!130579 (= e!85183 (isDefined!122 (getValueByKey!168 (toList!865 lt!67460) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (= (and d!39841 c!24097) b!130577))

(assert (= (and d!39841 (not c!24097)) b!130578))

(assert (= (and d!39841 (not res!62966)) b!130579))

(declare-fun m!154177 () Bool)

(assert (=> d!39841 m!154177))

(declare-fun m!154179 () Bool)

(assert (=> b!130577 m!154179))

(assert (=> b!130577 m!152695))

(assert (=> b!130577 m!152695))

(declare-fun m!154181 () Bool)

(assert (=> b!130577 m!154181))

(assert (=> b!130579 m!152695))

(assert (=> b!130579 m!152695))

(assert (=> b!130579 m!154181))

(assert (=> d!39411 d!39841))

(declare-fun e!85185 () Option!174)

(declare-fun b!130582 () Bool)

(assert (=> b!130582 (= e!85185 (getValueByKey!168 (t!6139 lt!67459) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130580 () Bool)

(declare-fun e!85184 () Option!174)

(assert (=> b!130580 (= e!85184 (Some!173 (_2!1306 (h!2328 lt!67459))))))

(declare-fun b!130581 () Bool)

(assert (=> b!130581 (= e!85184 e!85185)))

(declare-fun c!24099 () Bool)

(assert (=> b!130581 (= c!24099 (and ((_ is Cons!1724) lt!67459) (not (= (_1!1306 (h!2328 lt!67459)) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun b!130583 () Bool)

(assert (=> b!130583 (= e!85185 None!172)))

(declare-fun d!39843 () Bool)

(declare-fun c!24098 () Bool)

(assert (=> d!39843 (= c!24098 (and ((_ is Cons!1724) lt!67459) (= (_1!1306 (h!2328 lt!67459)) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39843 (= (getValueByKey!168 lt!67459 (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) e!85184)))

(assert (= (and d!39843 c!24098) b!130580))

(assert (= (and d!39843 (not c!24098)) b!130581))

(assert (= (and b!130581 c!24099) b!130582))

(assert (= (and b!130581 (not c!24099)) b!130583))

(declare-fun m!154183 () Bool)

(assert (=> b!130582 m!154183))

(assert (=> d!39411 d!39843))

(declare-fun d!39845 () Bool)

(assert (=> d!39845 (= (getValueByKey!168 lt!67459 (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) (Some!173 (_2!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun lt!68021 () Unit!4055)

(assert (=> d!39845 (= lt!68021 (choose!804 lt!67459 (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun e!85186 () Bool)

(assert (=> d!39845 e!85186))

(declare-fun res!62967 () Bool)

(assert (=> d!39845 (=> (not res!62967) (not e!85186))))

(assert (=> d!39845 (= res!62967 (isStrictlySorted!314 lt!67459))))

(assert (=> d!39845 (= (lemmaContainsTupThenGetReturnValue!85 lt!67459 (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!68021)))

(declare-fun b!130584 () Bool)

(declare-fun res!62968 () Bool)

(assert (=> b!130584 (=> (not res!62968) (not e!85186))))

(assert (=> b!130584 (= res!62968 (containsKey!172 lt!67459 (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130585 () Bool)

(assert (=> b!130585 (= e!85186 (contains!887 lt!67459 (tuple2!2593 (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (= (and d!39845 res!62967) b!130584))

(assert (= (and b!130584 res!62968) b!130585))

(assert (=> d!39845 m!152689))

(declare-fun m!154185 () Bool)

(assert (=> d!39845 m!154185))

(declare-fun m!154187 () Bool)

(assert (=> d!39845 m!154187))

(declare-fun m!154189 () Bool)

(assert (=> b!130584 m!154189))

(declare-fun m!154191 () Bool)

(assert (=> b!130585 m!154191))

(assert (=> d!39411 d!39845))

(declare-fun b!130586 () Bool)

(declare-fun e!85188 () List!1728)

(declare-fun call!14221 () List!1728)

(assert (=> b!130586 (= e!85188 call!14221)))

(declare-fun b!130587 () Bool)

(declare-fun e!85187 () List!1728)

(declare-fun call!14220 () List!1728)

(assert (=> b!130587 (= e!85187 call!14220)))

(declare-fun b!130588 () Bool)

(declare-fun e!85189 () List!1728)

(declare-fun call!14219 () List!1728)

(assert (=> b!130588 (= e!85189 call!14219)))

(declare-fun b!130589 () Bool)

(assert (=> b!130589 (= e!85189 e!85187)))

(declare-fun c!24102 () Bool)

(assert (=> b!130589 (= c!24102 (and ((_ is Cons!1724) (toList!865 lt!67211)) (= (_1!1306 (h!2328 (toList!865 lt!67211))) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun bm!14216 () Bool)

(assert (=> bm!14216 (= call!14221 call!14220)))

(declare-fun c!24103 () Bool)

(declare-fun bm!14217 () Bool)

(declare-fun e!85190 () List!1728)

(assert (=> bm!14217 (= call!14219 ($colon$colon!90 e!85190 (ite c!24103 (h!2328 (toList!865 lt!67211)) (tuple2!2593 (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun c!24101 () Bool)

(assert (=> bm!14217 (= c!24101 c!24103)))

(declare-fun d!39847 () Bool)

(declare-fun e!85191 () Bool)

(assert (=> d!39847 e!85191))

(declare-fun res!62970 () Bool)

(assert (=> d!39847 (=> (not res!62970) (not e!85191))))

(declare-fun lt!68022 () List!1728)

(assert (=> d!39847 (= res!62970 (isStrictlySorted!314 lt!68022))))

(assert (=> d!39847 (= lt!68022 e!85189)))

(assert (=> d!39847 (= c!24103 (and ((_ is Cons!1724) (toList!865 lt!67211)) (bvslt (_1!1306 (h!2328 (toList!865 lt!67211))) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39847 (isStrictlySorted!314 (toList!865 lt!67211))))

(assert (=> d!39847 (= (insertStrictlySorted!87 (toList!865 lt!67211) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!68022)))

(declare-fun b!130590 () Bool)

(declare-fun res!62969 () Bool)

(assert (=> b!130590 (=> (not res!62969) (not e!85191))))

(assert (=> b!130590 (= res!62969 (containsKey!172 lt!68022 (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130591 () Bool)

(assert (=> b!130591 (= e!85191 (contains!887 lt!68022 (tuple2!2593 (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!130592 () Bool)

(assert (=> b!130592 (= e!85190 (insertStrictlySorted!87 (t!6139 (toList!865 lt!67211)) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun c!24100 () Bool)

(declare-fun b!130593 () Bool)

(assert (=> b!130593 (= e!85190 (ite c!24102 (t!6139 (toList!865 lt!67211)) (ite c!24100 (Cons!1724 (h!2328 (toList!865 lt!67211)) (t!6139 (toList!865 lt!67211))) Nil!1725)))))

(declare-fun b!130594 () Bool)

(assert (=> b!130594 (= e!85188 call!14221)))

(declare-fun bm!14218 () Bool)

(assert (=> bm!14218 (= call!14220 call!14219)))

(declare-fun b!130595 () Bool)

(assert (=> b!130595 (= c!24100 (and ((_ is Cons!1724) (toList!865 lt!67211)) (bvsgt (_1!1306 (h!2328 (toList!865 lt!67211))) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> b!130595 (= e!85187 e!85188)))

(assert (= (and d!39847 c!24103) b!130588))

(assert (= (and d!39847 (not c!24103)) b!130589))

(assert (= (and b!130589 c!24102) b!130587))

(assert (= (and b!130589 (not c!24102)) b!130595))

(assert (= (and b!130595 c!24100) b!130594))

(assert (= (and b!130595 (not c!24100)) b!130586))

(assert (= (or b!130594 b!130586) bm!14216))

(assert (= (or b!130587 bm!14216) bm!14218))

(assert (= (or b!130588 bm!14218) bm!14217))

(assert (= (and bm!14217 c!24101) b!130592))

(assert (= (and bm!14217 (not c!24101)) b!130593))

(assert (= (and d!39847 res!62970) b!130590))

(assert (= (and b!130590 res!62969) b!130591))

(declare-fun m!154193 () Bool)

(assert (=> bm!14217 m!154193))

(declare-fun m!154195 () Bool)

(assert (=> b!130592 m!154195))

(declare-fun m!154197 () Bool)

(assert (=> d!39847 m!154197))

(declare-fun m!154199 () Bool)

(assert (=> d!39847 m!154199))

(declare-fun m!154201 () Bool)

(assert (=> b!130591 m!154201))

(declare-fun m!154203 () Bool)

(assert (=> b!130590 m!154203))

(assert (=> d!39411 d!39847))

(assert (=> b!129782 d!39371))

(assert (=> b!129786 d!39371))

(declare-fun d!39849 () Bool)

(declare-fun lt!68023 () Bool)

(assert (=> d!39849 (= lt!68023 (select (content!129 (toList!865 lt!67453)) (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun e!85192 () Bool)

(assert (=> d!39849 (= lt!68023 e!85192)))

(declare-fun res!62972 () Bool)

(assert (=> d!39849 (=> (not res!62972) (not e!85192))))

(assert (=> d!39849 (= res!62972 ((_ is Cons!1724) (toList!865 lt!67453)))))

(assert (=> d!39849 (= (contains!887 (toList!865 lt!67453) (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!68023)))

(declare-fun b!130596 () Bool)

(declare-fun e!85193 () Bool)

(assert (=> b!130596 (= e!85192 e!85193)))

(declare-fun res!62971 () Bool)

(assert (=> b!130596 (=> res!62971 e!85193)))

(assert (=> b!130596 (= res!62971 (= (h!2328 (toList!865 lt!67453)) (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun b!130597 () Bool)

(assert (=> b!130597 (= e!85193 (contains!887 (t!6139 (toList!865 lt!67453)) (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(assert (= (and d!39849 res!62972) b!130596))

(assert (= (and b!130596 (not res!62971)) b!130597))

(declare-fun m!154205 () Bool)

(assert (=> d!39849 m!154205))

(declare-fun m!154207 () Bool)

(assert (=> d!39849 m!154207))

(declare-fun m!154209 () Bool)

(assert (=> b!130597 m!154209))

(assert (=> b!129873 d!39849))

(declare-fun d!39851 () Bool)

(declare-fun e!85195 () Bool)

(assert (=> d!39851 e!85195))

(declare-fun res!62973 () Bool)

(assert (=> d!39851 (=> res!62973 e!85195)))

(declare-fun lt!68024 () Bool)

(assert (=> d!39851 (= res!62973 (not lt!68024))))

(declare-fun lt!68027 () Bool)

(assert (=> d!39851 (= lt!68024 lt!68027)))

(declare-fun lt!68026 () Unit!4055)

(declare-fun e!85194 () Unit!4055)

(assert (=> d!39851 (= lt!68026 e!85194)))

(declare-fun c!24104 () Bool)

(assert (=> d!39851 (= c!24104 lt!68027)))

(assert (=> d!39851 (= lt!68027 (containsKey!172 (toList!865 lt!67516) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39851 (= (contains!886 lt!67516 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!68024)))

(declare-fun b!130598 () Bool)

(declare-fun lt!68025 () Unit!4055)

(assert (=> b!130598 (= e!85194 lt!68025)))

(assert (=> b!130598 (= lt!68025 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67516) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!130598 (isDefined!122 (getValueByKey!168 (toList!865 lt!67516) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!130599 () Bool)

(declare-fun Unit!4105 () Unit!4055)

(assert (=> b!130599 (= e!85194 Unit!4105)))

(declare-fun b!130600 () Bool)

(assert (=> b!130600 (= e!85195 (isDefined!122 (getValueByKey!168 (toList!865 lt!67516) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!39851 c!24104) b!130598))

(assert (= (and d!39851 (not c!24104)) b!130599))

(assert (= (and d!39851 (not res!62973)) b!130600))

(declare-fun m!154211 () Bool)

(assert (=> d!39851 m!154211))

(declare-fun m!154213 () Bool)

(assert (=> b!130598 m!154213))

(assert (=> b!130598 m!152821))

(assert (=> b!130598 m!152821))

(declare-fun m!154215 () Bool)

(assert (=> b!130598 m!154215))

(assert (=> b!130600 m!152821))

(assert (=> b!130600 m!152821))

(assert (=> b!130600 m!154215))

(assert (=> d!39437 d!39851))

(declare-fun b!130603 () Bool)

(declare-fun e!85197 () Option!174)

(assert (=> b!130603 (= e!85197 (getValueByKey!168 (t!6139 lt!67515) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!130601 () Bool)

(declare-fun e!85196 () Option!174)

(assert (=> b!130601 (= e!85196 (Some!173 (_2!1306 (h!2328 lt!67515))))))

(declare-fun b!130602 () Bool)

(assert (=> b!130602 (= e!85196 e!85197)))

(declare-fun c!24106 () Bool)

(assert (=> b!130602 (= c!24106 (and ((_ is Cons!1724) lt!67515) (not (= (_1!1306 (h!2328 lt!67515)) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!130604 () Bool)

(assert (=> b!130604 (= e!85197 None!172)))

(declare-fun c!24105 () Bool)

(declare-fun d!39853 () Bool)

(assert (=> d!39853 (= c!24105 (and ((_ is Cons!1724) lt!67515) (= (_1!1306 (h!2328 lt!67515)) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!39853 (= (getValueByKey!168 lt!67515 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) e!85196)))

(assert (= (and d!39853 c!24105) b!130601))

(assert (= (and d!39853 (not c!24105)) b!130602))

(assert (= (and b!130602 c!24106) b!130603))

(assert (= (and b!130602 (not c!24106)) b!130604))

(declare-fun m!154217 () Bool)

(assert (=> b!130603 m!154217))

(assert (=> d!39437 d!39853))

(declare-fun d!39855 () Bool)

(assert (=> d!39855 (= (getValueByKey!168 lt!67515 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!173 (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!68028 () Unit!4055)

(assert (=> d!39855 (= lt!68028 (choose!804 lt!67515 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!85198 () Bool)

(assert (=> d!39855 e!85198))

(declare-fun res!62974 () Bool)

(assert (=> d!39855 (=> (not res!62974) (not e!85198))))

(assert (=> d!39855 (= res!62974 (isStrictlySorted!314 lt!67515))))

(assert (=> d!39855 (= (lemmaContainsTupThenGetReturnValue!85 lt!67515 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!68028)))

(declare-fun b!130605 () Bool)

(declare-fun res!62975 () Bool)

(assert (=> b!130605 (=> (not res!62975) (not e!85198))))

(assert (=> b!130605 (= res!62975 (containsKey!172 lt!67515 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!130606 () Bool)

(assert (=> b!130606 (= e!85198 (contains!887 lt!67515 (tuple2!2593 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!39855 res!62974) b!130605))

(assert (= (and b!130605 res!62975) b!130606))

(assert (=> d!39855 m!152815))

(declare-fun m!154219 () Bool)

(assert (=> d!39855 m!154219))

(declare-fun m!154221 () Bool)

(assert (=> d!39855 m!154221))

(declare-fun m!154223 () Bool)

(assert (=> b!130605 m!154223))

(declare-fun m!154225 () Bool)

(assert (=> b!130606 m!154225))

(assert (=> d!39437 d!39855))

(declare-fun b!130607 () Bool)

(declare-fun e!85200 () List!1728)

(declare-fun call!14224 () List!1728)

(assert (=> b!130607 (= e!85200 call!14224)))

(declare-fun b!130608 () Bool)

(declare-fun e!85199 () List!1728)

(declare-fun call!14223 () List!1728)

(assert (=> b!130608 (= e!85199 call!14223)))

(declare-fun b!130609 () Bool)

(declare-fun e!85201 () List!1728)

(declare-fun call!14222 () List!1728)

(assert (=> b!130609 (= e!85201 call!14222)))

(declare-fun b!130610 () Bool)

(assert (=> b!130610 (= e!85201 e!85199)))

(declare-fun c!24109 () Bool)

(assert (=> b!130610 (= c!24109 (and ((_ is Cons!1724) (toList!865 call!14100)) (= (_1!1306 (h!2328 (toList!865 call!14100))) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun bm!14219 () Bool)

(assert (=> bm!14219 (= call!14224 call!14223)))

(declare-fun c!24110 () Bool)

(declare-fun bm!14220 () Bool)

(declare-fun e!85202 () List!1728)

(assert (=> bm!14220 (= call!14222 ($colon$colon!90 e!85202 (ite c!24110 (h!2328 (toList!865 call!14100)) (tuple2!2593 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!24108 () Bool)

(assert (=> bm!14220 (= c!24108 c!24110)))

(declare-fun d!39857 () Bool)

(declare-fun e!85203 () Bool)

(assert (=> d!39857 e!85203))

(declare-fun res!62977 () Bool)

(assert (=> d!39857 (=> (not res!62977) (not e!85203))))

(declare-fun lt!68029 () List!1728)

(assert (=> d!39857 (= res!62977 (isStrictlySorted!314 lt!68029))))

(assert (=> d!39857 (= lt!68029 e!85201)))

(assert (=> d!39857 (= c!24110 (and ((_ is Cons!1724) (toList!865 call!14100)) (bvslt (_1!1306 (h!2328 (toList!865 call!14100))) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!39857 (isStrictlySorted!314 (toList!865 call!14100))))

(assert (=> d!39857 (= (insertStrictlySorted!87 (toList!865 call!14100) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!68029)))

(declare-fun b!130611 () Bool)

(declare-fun res!62976 () Bool)

(assert (=> b!130611 (=> (not res!62976) (not e!85203))))

(assert (=> b!130611 (= res!62976 (containsKey!172 lt!68029 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!130612 () Bool)

(assert (=> b!130612 (= e!85203 (contains!887 lt!68029 (tuple2!2593 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!130613 () Bool)

(assert (=> b!130613 (= e!85202 (insertStrictlySorted!87 (t!6139 (toList!865 call!14100)) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!24107 () Bool)

(declare-fun b!130614 () Bool)

(assert (=> b!130614 (= e!85202 (ite c!24109 (t!6139 (toList!865 call!14100)) (ite c!24107 (Cons!1724 (h!2328 (toList!865 call!14100)) (t!6139 (toList!865 call!14100))) Nil!1725)))))

(declare-fun b!130615 () Bool)

(assert (=> b!130615 (= e!85200 call!14224)))

(declare-fun bm!14221 () Bool)

(assert (=> bm!14221 (= call!14223 call!14222)))

(declare-fun b!130616 () Bool)

(assert (=> b!130616 (= c!24107 (and ((_ is Cons!1724) (toList!865 call!14100)) (bvsgt (_1!1306 (h!2328 (toList!865 call!14100))) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!130616 (= e!85199 e!85200)))

(assert (= (and d!39857 c!24110) b!130609))

(assert (= (and d!39857 (not c!24110)) b!130610))

(assert (= (and b!130610 c!24109) b!130608))

(assert (= (and b!130610 (not c!24109)) b!130616))

(assert (= (and b!130616 c!24107) b!130615))

(assert (= (and b!130616 (not c!24107)) b!130607))

(assert (= (or b!130615 b!130607) bm!14219))

(assert (= (or b!130608 bm!14219) bm!14221))

(assert (= (or b!130609 bm!14221) bm!14220))

(assert (= (and bm!14220 c!24108) b!130613))

(assert (= (and bm!14220 (not c!24108)) b!130614))

(assert (= (and d!39857 res!62977) b!130611))

(assert (= (and b!130611 res!62976) b!130612))

(declare-fun m!154227 () Bool)

(assert (=> bm!14220 m!154227))

(declare-fun m!154229 () Bool)

(assert (=> b!130613 m!154229))

(declare-fun m!154231 () Bool)

(assert (=> d!39857 m!154231))

(declare-fun m!154233 () Bool)

(assert (=> d!39857 m!154233))

(declare-fun m!154235 () Bool)

(assert (=> b!130612 m!154235))

(declare-fun m!154237 () Bool)

(assert (=> b!130611 m!154237))

(assert (=> d!39437 d!39857))

(declare-fun d!39859 () Bool)

(declare-fun e!85205 () Bool)

(assert (=> d!39859 e!85205))

(declare-fun res!62978 () Bool)

(assert (=> d!39859 (=> res!62978 e!85205)))

(declare-fun lt!68030 () Bool)

(assert (=> d!39859 (= res!62978 (not lt!68030))))

(declare-fun lt!68033 () Bool)

(assert (=> d!39859 (= lt!68030 lt!68033)))

(declare-fun lt!68032 () Unit!4055)

(declare-fun e!85204 () Unit!4055)

(assert (=> d!39859 (= lt!68032 e!85204)))

(declare-fun c!24111 () Bool)

(assert (=> d!39859 (= c!24111 lt!68033)))

(assert (=> d!39859 (= lt!68033 (containsKey!172 (toList!865 lt!67448) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> d!39859 (= (contains!886 lt!67448 (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!68030)))

(declare-fun b!130617 () Bool)

(declare-fun lt!68031 () Unit!4055)

(assert (=> b!130617 (= e!85204 lt!68031)))

(assert (=> b!130617 (= lt!68031 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67448) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (=> b!130617 (isDefined!122 (getValueByKey!168 (toList!865 lt!67448) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130618 () Bool)

(declare-fun Unit!4106 () Unit!4055)

(assert (=> b!130618 (= e!85204 Unit!4106)))

(declare-fun b!130619 () Bool)

(assert (=> b!130619 (= e!85205 (isDefined!122 (getValueByKey!168 (toList!865 lt!67448) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (= (and d!39859 c!24111) b!130617))

(assert (= (and d!39859 (not c!24111)) b!130618))

(assert (= (and d!39859 (not res!62978)) b!130619))

(declare-fun m!154239 () Bool)

(assert (=> d!39859 m!154239))

(declare-fun m!154241 () Bool)

(assert (=> b!130617 m!154241))

(assert (=> b!130617 m!152659))

(assert (=> b!130617 m!152659))

(declare-fun m!154243 () Bool)

(assert (=> b!130617 m!154243))

(assert (=> b!130619 m!152659))

(assert (=> b!130619 m!152659))

(assert (=> b!130619 m!154243))

(assert (=> d!39401 d!39859))

(declare-fun b!130622 () Bool)

(declare-fun e!85207 () Option!174)

(assert (=> b!130622 (= e!85207 (getValueByKey!168 (t!6139 lt!67447) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130620 () Bool)

(declare-fun e!85206 () Option!174)

(assert (=> b!130620 (= e!85206 (Some!173 (_2!1306 (h!2328 lt!67447))))))

(declare-fun b!130621 () Bool)

(assert (=> b!130621 (= e!85206 e!85207)))

(declare-fun c!24113 () Bool)

(assert (=> b!130621 (= c!24113 (and ((_ is Cons!1724) lt!67447) (not (= (_1!1306 (h!2328 lt!67447)) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun b!130623 () Bool)

(assert (=> b!130623 (= e!85207 None!172)))

(declare-fun c!24112 () Bool)

(declare-fun d!39861 () Bool)

(assert (=> d!39861 (= c!24112 (and ((_ is Cons!1724) lt!67447) (= (_1!1306 (h!2328 lt!67447)) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39861 (= (getValueByKey!168 lt!67447 (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) e!85206)))

(assert (= (and d!39861 c!24112) b!130620))

(assert (= (and d!39861 (not c!24112)) b!130621))

(assert (= (and b!130621 c!24113) b!130622))

(assert (= (and b!130621 (not c!24113)) b!130623))

(declare-fun m!154245 () Bool)

(assert (=> b!130622 m!154245))

(assert (=> d!39401 d!39861))

(declare-fun d!39863 () Bool)

(assert (=> d!39863 (= (getValueByKey!168 lt!67447 (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) (Some!173 (_2!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun lt!68034 () Unit!4055)

(assert (=> d!39863 (= lt!68034 (choose!804 lt!67447 (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun e!85208 () Bool)

(assert (=> d!39863 e!85208))

(declare-fun res!62979 () Bool)

(assert (=> d!39863 (=> (not res!62979) (not e!85208))))

(assert (=> d!39863 (= res!62979 (isStrictlySorted!314 lt!67447))))

(assert (=> d!39863 (= (lemmaContainsTupThenGetReturnValue!85 lt!67447 (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!68034)))

(declare-fun b!130624 () Bool)

(declare-fun res!62980 () Bool)

(assert (=> b!130624 (=> (not res!62980) (not e!85208))))

(assert (=> b!130624 (= res!62980 (containsKey!172 lt!67447 (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130625 () Bool)

(assert (=> b!130625 (= e!85208 (contains!887 lt!67447 (tuple2!2593 (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (= (and d!39863 res!62979) b!130624))

(assert (= (and b!130624 res!62980) b!130625))

(assert (=> d!39863 m!152653))

(declare-fun m!154247 () Bool)

(assert (=> d!39863 m!154247))

(declare-fun m!154249 () Bool)

(assert (=> d!39863 m!154249))

(declare-fun m!154251 () Bool)

(assert (=> b!130624 m!154251))

(declare-fun m!154253 () Bool)

(assert (=> b!130625 m!154253))

(assert (=> d!39401 d!39863))

(declare-fun b!130626 () Bool)

(declare-fun e!85210 () List!1728)

(declare-fun call!14227 () List!1728)

(assert (=> b!130626 (= e!85210 call!14227)))

(declare-fun b!130627 () Bool)

(declare-fun e!85209 () List!1728)

(declare-fun call!14226 () List!1728)

(assert (=> b!130627 (= e!85209 call!14226)))

(declare-fun b!130628 () Bool)

(declare-fun e!85211 () List!1728)

(declare-fun call!14225 () List!1728)

(assert (=> b!130628 (= e!85211 call!14225)))

(declare-fun b!130629 () Bool)

(assert (=> b!130629 (= e!85211 e!85209)))

(declare-fun c!24116 () Bool)

(assert (=> b!130629 (= c!24116 (and ((_ is Cons!1724) (toList!865 lt!67213)) (= (_1!1306 (h!2328 (toList!865 lt!67213))) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun bm!14222 () Bool)

(assert (=> bm!14222 (= call!14227 call!14226)))

(declare-fun bm!14223 () Bool)

(declare-fun e!85212 () List!1728)

(declare-fun c!24117 () Bool)

(assert (=> bm!14223 (= call!14225 ($colon$colon!90 e!85212 (ite c!24117 (h!2328 (toList!865 lt!67213)) (tuple2!2593 (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun c!24115 () Bool)

(assert (=> bm!14223 (= c!24115 c!24117)))

(declare-fun d!39865 () Bool)

(declare-fun e!85213 () Bool)

(assert (=> d!39865 e!85213))

(declare-fun res!62982 () Bool)

(assert (=> d!39865 (=> (not res!62982) (not e!85213))))

(declare-fun lt!68035 () List!1728)

(assert (=> d!39865 (= res!62982 (isStrictlySorted!314 lt!68035))))

(assert (=> d!39865 (= lt!68035 e!85211)))

(assert (=> d!39865 (= c!24117 (and ((_ is Cons!1724) (toList!865 lt!67213)) (bvslt (_1!1306 (h!2328 (toList!865 lt!67213))) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39865 (isStrictlySorted!314 (toList!865 lt!67213))))

(assert (=> d!39865 (= (insertStrictlySorted!87 (toList!865 lt!67213) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!68035)))

(declare-fun b!130630 () Bool)

(declare-fun res!62981 () Bool)

(assert (=> b!130630 (=> (not res!62981) (not e!85213))))

(assert (=> b!130630 (= res!62981 (containsKey!172 lt!68035 (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130631 () Bool)

(assert (=> b!130631 (= e!85213 (contains!887 lt!68035 (tuple2!2593 (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(declare-fun b!130632 () Bool)

(assert (=> b!130632 (= e!85212 (insertStrictlySorted!87 (t!6139 (toList!865 lt!67213)) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) (_2!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun c!24114 () Bool)

(declare-fun b!130633 () Bool)

(assert (=> b!130633 (= e!85212 (ite c!24116 (t!6139 (toList!865 lt!67213)) (ite c!24114 (Cons!1724 (h!2328 (toList!865 lt!67213)) (t!6139 (toList!865 lt!67213))) Nil!1725)))))

(declare-fun b!130634 () Bool)

(assert (=> b!130634 (= e!85210 call!14227)))

(declare-fun bm!14224 () Bool)

(assert (=> bm!14224 (= call!14226 call!14225)))

(declare-fun b!130635 () Bool)

(assert (=> b!130635 (= c!24114 (and ((_ is Cons!1724) (toList!865 lt!67213)) (bvsgt (_1!1306 (h!2328 (toList!865 lt!67213))) (_1!1306 (tuple2!2593 lt!67222 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> b!130635 (= e!85209 e!85210)))

(assert (= (and d!39865 c!24117) b!130628))

(assert (= (and d!39865 (not c!24117)) b!130629))

(assert (= (and b!130629 c!24116) b!130627))

(assert (= (and b!130629 (not c!24116)) b!130635))

(assert (= (and b!130635 c!24114) b!130634))

(assert (= (and b!130635 (not c!24114)) b!130626))

(assert (= (or b!130634 b!130626) bm!14222))

(assert (= (or b!130627 bm!14222) bm!14224))

(assert (= (or b!130628 bm!14224) bm!14223))

(assert (= (and bm!14223 c!24115) b!130632))

(assert (= (and bm!14223 (not c!24115)) b!130633))

(assert (= (and d!39865 res!62982) b!130630))

(assert (= (and b!130630 res!62981) b!130631))

(declare-fun m!154255 () Bool)

(assert (=> bm!14223 m!154255))

(declare-fun m!154257 () Bool)

(assert (=> b!130632 m!154257))

(declare-fun m!154259 () Bool)

(assert (=> d!39865 m!154259))

(declare-fun m!154261 () Bool)

(assert (=> d!39865 m!154261))

(declare-fun m!154263 () Bool)

(assert (=> b!130631 m!154263))

(declare-fun m!154265 () Bool)

(assert (=> b!130630 m!154265))

(assert (=> d!39401 d!39865))

(declare-fun d!39867 () Bool)

(assert (=> d!39867 (= (apply!113 lt!67401 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) (get!1472 (getValueByKey!168 (toList!865 lt!67401) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))))

(declare-fun bs!5437 () Bool)

(assert (= bs!5437 d!39867))

(assert (=> bs!5437 m!152429))

(assert (=> bs!5437 m!153841))

(assert (=> bs!5437 m!153841))

(declare-fun m!154267 () Bool)

(assert (=> bs!5437 m!154267))

(assert (=> b!129793 d!39867))

(declare-fun d!39869 () Bool)

(declare-fun c!24118 () Bool)

(assert (=> d!39869 (= c!24118 ((_ is ValueCellFull!1086) (select (arr!2243 (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))))) #b00000000000000000000000000000000)))))

(declare-fun e!85214 () V!3459)

(assert (=> d!39869 (= (get!1469 (select (arr!2243 (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)) e!85214)))

(declare-fun b!130636 () Bool)

(assert (=> b!130636 (= e!85214 (get!1470 (select (arr!2243 (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!130637 () Bool)

(assert (=> b!130637 (= e!85214 (get!1471 (select (arr!2243 (ite c!23852 (_values!2807 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39869 c!24118) b!130636))

(assert (= (and d!39869 (not c!24118)) b!130637))

(assert (=> b!130636 m!152565))

(assert (=> b!130636 m!152471))

(declare-fun m!154269 () Bool)

(assert (=> b!130636 m!154269))

(assert (=> b!130637 m!152565))

(assert (=> b!130637 m!152471))

(declare-fun m!154271 () Bool)

(assert (=> b!130637 m!154271))

(assert (=> b!129793 d!39869))

(declare-fun d!39871 () Bool)

(assert (=> d!39871 (= (get!1472 (getValueByKey!168 (toList!865 lt!67214) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!3163 (getValueByKey!168 (toList!865 lt!67214) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39443 d!39871))

(assert (=> d!39443 d!39587))

(declare-fun b!130638 () Bool)

(declare-fun e!85216 () Bool)

(declare-fun e!85217 () Bool)

(assert (=> b!130638 (= e!85216 e!85217)))

(declare-fun c!24119 () Bool)

(assert (=> b!130638 (= c!24119 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!130639 () Bool)

(declare-fun e!85215 () Bool)

(assert (=> b!130639 (= e!85215 e!85216)))

(declare-fun res!62985 () Bool)

(assert (=> b!130639 (=> (not res!62985) (not e!85216))))

(declare-fun e!85218 () Bool)

(assert (=> b!130639 (= res!62985 (not e!85218))))

(declare-fun res!62984 () Bool)

(assert (=> b!130639 (=> (not res!62984) (not e!85218))))

(assert (=> b!130639 (= res!62984 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun bm!14225 () Bool)

(declare-fun call!14228 () Bool)

(assert (=> bm!14225 (= call!14228 (arrayNoDuplicates!0 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!24119 (Cons!1725 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) #b00000000000000000000000000000000) Nil!1726) Nil!1726)))))

(declare-fun b!130640 () Bool)

(assert (=> b!130640 (= e!85217 call!14228)))

(declare-fun b!130641 () Bool)

(assert (=> b!130641 (= e!85217 call!14228)))

(declare-fun b!130642 () Bool)

(assert (=> b!130642 (= e!85218 (contains!888 Nil!1726 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!39873 () Bool)

(declare-fun res!62983 () Bool)

(assert (=> d!39873 (=> res!62983 e!85215)))

(assert (=> d!39873 (= res!62983 (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(assert (=> d!39873 (= (arrayNoDuplicates!0 (_keys!4565 (v!3159 (underlying!446 thiss!992))) #b00000000000000000000000000000000 Nil!1726) e!85215)))

(assert (= (and d!39873 (not res!62983)) b!130639))

(assert (= (and b!130639 res!62984) b!130642))

(assert (= (and b!130639 res!62985) b!130638))

(assert (= (and b!130638 c!24119) b!130640))

(assert (= (and b!130638 (not c!24119)) b!130641))

(assert (= (or b!130640 b!130641) bm!14225))

(assert (=> b!130638 m!153333))

(assert (=> b!130638 m!153333))

(assert (=> b!130638 m!153335))

(assert (=> b!130639 m!153333))

(assert (=> b!130639 m!153333))

(assert (=> b!130639 m!153335))

(assert (=> bm!14225 m!153333))

(declare-fun m!154273 () Bool)

(assert (=> bm!14225 m!154273))

(assert (=> b!130642 m!153333))

(assert (=> b!130642 m!153333))

(declare-fun m!154275 () Bool)

(assert (=> b!130642 m!154275))

(assert (=> b!130005 d!39873))

(declare-fun d!39875 () Bool)

(assert (=> d!39875 (isDefined!122 (getValueByKey!168 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun lt!68036 () Unit!4055)

(assert (=> d!39875 (= lt!68036 (choose!796 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(declare-fun e!85219 () Bool)

(assert (=> d!39875 e!85219))

(declare-fun res!62986 () Bool)

(assert (=> d!39875 (=> (not res!62986) (not e!85219))))

(assert (=> d!39875 (= res!62986 (isStrictlySorted!314 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))))

(assert (=> d!39875 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) lt!68036)))

(declare-fun b!130643 () Bool)

(assert (=> b!130643 (= e!85219 (containsKey!172 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (= (and d!39875 res!62986) b!130643))

(assert (=> d!39875 m!152209))

(assert (=> d!39875 m!152503))

(assert (=> d!39875 m!152503))

(assert (=> d!39875 m!152505))

(assert (=> d!39875 m!152209))

(declare-fun m!154277 () Bool)

(assert (=> d!39875 m!154277))

(declare-fun m!154279 () Bool)

(assert (=> d!39875 m!154279))

(assert (=> b!130643 m!152209))

(assert (=> b!130643 m!152499))

(assert (=> b!129750 d!39875))

(assert (=> b!129750 d!39637))

(assert (=> b!129750 d!39639))

(declare-fun d!39877 () Bool)

(declare-fun e!85221 () Bool)

(assert (=> d!39877 e!85221))

(declare-fun res!62987 () Bool)

(assert (=> d!39877 (=> res!62987 e!85221)))

(declare-fun lt!68037 () Bool)

(assert (=> d!39877 (= res!62987 (not lt!68037))))

(declare-fun lt!68040 () Bool)

(assert (=> d!39877 (= lt!68037 lt!68040)))

(declare-fun lt!68039 () Unit!4055)

(declare-fun e!85220 () Unit!4055)

(assert (=> d!39877 (= lt!68039 e!85220)))

(declare-fun c!24120 () Bool)

(assert (=> d!39877 (= c!24120 lt!68040)))

(assert (=> d!39877 (= lt!68040 (containsKey!172 (toList!865 lt!67464) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!39877 (= (contains!886 lt!67464 (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) lt!68037)))

(declare-fun b!130644 () Bool)

(declare-fun lt!68038 () Unit!4055)

(assert (=> b!130644 (= e!85220 lt!68038)))

(assert (=> b!130644 (= lt!68038 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67464) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!130644 (isDefined!122 (getValueByKey!168 (toList!865 lt!67464) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!130645 () Bool)

(declare-fun Unit!4107 () Unit!4055)

(assert (=> b!130645 (= e!85220 Unit!4107)))

(declare-fun b!130646 () Bool)

(assert (=> b!130646 (= e!85221 (isDefined!122 (getValueByKey!168 (toList!865 lt!67464) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!39877 c!24120) b!130644))

(assert (= (and d!39877 (not c!24120)) b!130645))

(assert (= (and d!39877 (not res!62987)) b!130646))

(declare-fun m!154281 () Bool)

(assert (=> d!39877 m!154281))

(declare-fun m!154283 () Bool)

(assert (=> b!130644 m!154283))

(assert (=> b!130644 m!152711))

(assert (=> b!130644 m!152711))

(declare-fun m!154285 () Bool)

(assert (=> b!130644 m!154285))

(assert (=> b!130646 m!152711))

(assert (=> b!130646 m!152711))

(assert (=> b!130646 m!154285))

(assert (=> d!39415 d!39877))

(declare-fun e!85223 () Option!174)

(declare-fun b!130649 () Bool)

(assert (=> b!130649 (= e!85223 (getValueByKey!168 (t!6139 lt!67463) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!130647 () Bool)

(declare-fun e!85222 () Option!174)

(assert (=> b!130647 (= e!85222 (Some!173 (_2!1306 (h!2328 lt!67463))))))

(declare-fun b!130648 () Bool)

(assert (=> b!130648 (= e!85222 e!85223)))

(declare-fun c!24122 () Bool)

(assert (=> b!130648 (= c!24122 (and ((_ is Cons!1724) lt!67463) (not (= (_1!1306 (h!2328 lt!67463)) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))))

(declare-fun b!130650 () Bool)

(assert (=> b!130650 (= e!85223 None!172)))

(declare-fun c!24121 () Bool)

(declare-fun d!39879 () Bool)

(assert (=> d!39879 (= c!24121 (and ((_ is Cons!1724) lt!67463) (= (_1!1306 (h!2328 lt!67463)) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (=> d!39879 (= (getValueByKey!168 lt!67463 (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) e!85222)))

(assert (= (and d!39879 c!24121) b!130647))

(assert (= (and d!39879 (not c!24121)) b!130648))

(assert (= (and b!130648 c!24122) b!130649))

(assert (= (and b!130648 (not c!24122)) b!130650))

(declare-fun m!154287 () Bool)

(assert (=> b!130649 m!154287))

(assert (=> d!39415 d!39879))

(declare-fun d!39881 () Bool)

(assert (=> d!39881 (= (getValueByKey!168 lt!67463 (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!173 (_2!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!68041 () Unit!4055)

(assert (=> d!39881 (= lt!68041 (choose!804 lt!67463 (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!85224 () Bool)

(assert (=> d!39881 e!85224))

(declare-fun res!62988 () Bool)

(assert (=> d!39881 (=> (not res!62988) (not e!85224))))

(assert (=> d!39881 (= res!62988 (isStrictlySorted!314 lt!67463))))

(assert (=> d!39881 (= (lemmaContainsTupThenGetReturnValue!85 lt!67463 (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) lt!68041)))

(declare-fun b!130651 () Bool)

(declare-fun res!62989 () Bool)

(assert (=> b!130651 (=> (not res!62989) (not e!85224))))

(assert (=> b!130651 (= res!62989 (containsKey!172 lt!67463 (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!130652 () Bool)

(assert (=> b!130652 (= e!85224 (contains!887 lt!67463 (tuple2!2593 (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!39881 res!62988) b!130651))

(assert (= (and b!130651 res!62989) b!130652))

(assert (=> d!39881 m!152705))

(declare-fun m!154289 () Bool)

(assert (=> d!39881 m!154289))

(declare-fun m!154291 () Bool)

(assert (=> d!39881 m!154291))

(declare-fun m!154293 () Bool)

(assert (=> b!130651 m!154293))

(declare-fun m!154295 () Bool)

(assert (=> b!130652 m!154295))

(assert (=> d!39415 d!39881))

(declare-fun b!130653 () Bool)

(declare-fun e!85226 () List!1728)

(declare-fun call!14231 () List!1728)

(assert (=> b!130653 (= e!85226 call!14231)))

(declare-fun b!130654 () Bool)

(declare-fun e!85225 () List!1728)

(declare-fun call!14230 () List!1728)

(assert (=> b!130654 (= e!85225 call!14230)))

(declare-fun b!130655 () Bool)

(declare-fun e!85227 () List!1728)

(declare-fun call!14229 () List!1728)

(assert (=> b!130655 (= e!85227 call!14229)))

(declare-fun b!130656 () Bool)

(assert (=> b!130656 (= e!85227 e!85225)))

(declare-fun c!24125 () Bool)

(assert (=> b!130656 (= c!24125 (and ((_ is Cons!1724) (toList!865 e!84623)) (= (_1!1306 (h!2328 (toList!865 e!84623))) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun bm!14226 () Bool)

(assert (=> bm!14226 (= call!14231 call!14230)))

(declare-fun bm!14227 () Bool)

(declare-fun c!24126 () Bool)

(declare-fun e!85228 () List!1728)

(assert (=> bm!14227 (= call!14229 ($colon$colon!90 e!85228 (ite c!24126 (h!2328 (toList!865 e!84623)) (tuple2!2593 (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))))

(declare-fun c!24124 () Bool)

(assert (=> bm!14227 (= c!24124 c!24126)))

(declare-fun d!39883 () Bool)

(declare-fun e!85229 () Bool)

(assert (=> d!39883 e!85229))

(declare-fun res!62991 () Bool)

(assert (=> d!39883 (=> (not res!62991) (not e!85229))))

(declare-fun lt!68042 () List!1728)

(assert (=> d!39883 (= res!62991 (isStrictlySorted!314 lt!68042))))

(assert (=> d!39883 (= lt!68042 e!85227)))

(assert (=> d!39883 (= c!24126 (and ((_ is Cons!1724) (toList!865 e!84623)) (bvslt (_1!1306 (h!2328 (toList!865 e!84623))) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (=> d!39883 (isStrictlySorted!314 (toList!865 e!84623))))

(assert (=> d!39883 (= (insertStrictlySorted!87 (toList!865 e!84623) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) lt!68042)))

(declare-fun b!130657 () Bool)

(declare-fun res!62990 () Bool)

(assert (=> b!130657 (=> (not res!62990) (not e!85229))))

(assert (=> b!130657 (= res!62990 (containsKey!172 lt!68042 (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!130658 () Bool)

(assert (=> b!130658 (= e!85229 (contains!887 lt!68042 (tuple2!2593 (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!130659 () Bool)

(assert (=> b!130659 (= e!85228 (insertStrictlySorted!87 (t!6139 (toList!865 e!84623)) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun c!24123 () Bool)

(declare-fun b!130660 () Bool)

(assert (=> b!130660 (= e!85228 (ite c!24125 (t!6139 (toList!865 e!84623)) (ite c!24123 (Cons!1724 (h!2328 (toList!865 e!84623)) (t!6139 (toList!865 e!84623))) Nil!1725)))))

(declare-fun b!130661 () Bool)

(assert (=> b!130661 (= e!85226 call!14231)))

(declare-fun bm!14228 () Bool)

(assert (=> bm!14228 (= call!14230 call!14229)))

(declare-fun b!130662 () Bool)

(assert (=> b!130662 (= c!24123 (and ((_ is Cons!1724) (toList!865 e!84623)) (bvsgt (_1!1306 (h!2328 (toList!865 e!84623))) (_1!1306 (ite c!23852 (ite c!23844 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (=> b!130662 (= e!85225 e!85226)))

(assert (= (and d!39883 c!24126) b!130655))

(assert (= (and d!39883 (not c!24126)) b!130656))

(assert (= (and b!130656 c!24125) b!130654))

(assert (= (and b!130656 (not c!24125)) b!130662))

(assert (= (and b!130662 c!24123) b!130661))

(assert (= (and b!130662 (not c!24123)) b!130653))

(assert (= (or b!130661 b!130653) bm!14226))

(assert (= (or b!130654 bm!14226) bm!14228))

(assert (= (or b!130655 bm!14228) bm!14227))

(assert (= (and bm!14227 c!24124) b!130659))

(assert (= (and bm!14227 (not c!24124)) b!130660))

(assert (= (and d!39883 res!62991) b!130657))

(assert (= (and b!130657 res!62990) b!130658))

(declare-fun m!154297 () Bool)

(assert (=> bm!14227 m!154297))

(declare-fun m!154299 () Bool)

(assert (=> b!130659 m!154299))

(declare-fun m!154301 () Bool)

(assert (=> d!39883 m!154301))

(declare-fun m!154303 () Bool)

(assert (=> d!39883 m!154303))

(declare-fun m!154305 () Bool)

(assert (=> b!130658 m!154305))

(declare-fun m!154307 () Bool)

(assert (=> b!130657 m!154307))

(assert (=> d!39415 d!39883))

(declare-fun lt!68043 () Bool)

(declare-fun d!39885 () Bool)

(assert (=> d!39885 (= lt!68043 (select (content!129 (toList!865 lt!67460)) (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun e!85230 () Bool)

(assert (=> d!39885 (= lt!68043 e!85230)))

(declare-fun res!62993 () Bool)

(assert (=> d!39885 (=> (not res!62993) (not e!85230))))

(assert (=> d!39885 (= res!62993 ((_ is Cons!1724) (toList!865 lt!67460)))))

(assert (=> d!39885 (= (contains!887 (toList!865 lt!67460) (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!68043)))

(declare-fun b!130663 () Bool)

(declare-fun e!85231 () Bool)

(assert (=> b!130663 (= e!85230 e!85231)))

(declare-fun res!62992 () Bool)

(assert (=> b!130663 (=> res!62992 e!85231)))

(assert (=> b!130663 (= res!62992 (= (h!2328 (toList!865 lt!67460)) (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun b!130664 () Bool)

(assert (=> b!130664 (= e!85231 (contains!887 (t!6139 (toList!865 lt!67460)) (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(assert (= (and d!39885 res!62993) b!130663))

(assert (= (and b!130663 (not res!62992)) b!130664))

(declare-fun m!154309 () Bool)

(assert (=> d!39885 m!154309))

(declare-fun m!154311 () Bool)

(assert (=> d!39885 m!154311))

(declare-fun m!154313 () Bool)

(assert (=> b!130664 m!154313))

(assert (=> b!129876 d!39885))

(declare-fun d!39887 () Bool)

(assert (=> d!39887 (= (+!167 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!536 (_keys!4565 newMap!16) (array!4741 (store (arr!2243 (_values!2807 newMap!16)) (index!3286 lt!67299) (ValueCellFull!1086 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2509 (_values!2807 newMap!16))) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(assert (=> d!39887 true))

(declare-fun _$5!131 () Unit!4055)

(assert (=> d!39887 (= (choose!798 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (index!3286 lt!67299) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2824 newMap!16)) _$5!131)))

(declare-fun bs!5438 () Bool)

(assert (= bs!5438 d!39887))

(assert (=> bs!5438 m!152253))

(assert (=> bs!5438 m!152253))

(assert (=> bs!5438 m!152495))

(assert (=> bs!5438 m!152331))

(assert (=> bs!5438 m!152497))

(assert (=> d!39359 d!39887))

(assert (=> d!39359 d!39501))

(declare-fun b!130665 () Bool)

(declare-fun res!62995 () Bool)

(declare-fun e!85232 () Bool)

(assert (=> b!130665 (=> (not res!62995) (not e!85232))))

(assert (=> b!130665 (= res!62995 (and (= (size!2509 (_values!2807 (_2!1307 lt!67308))) (bvadd (mask!7102 (_2!1307 lt!67308)) #b00000000000000000000000000000001)) (= (size!2508 (_keys!4565 (_2!1307 lt!67308))) (size!2509 (_values!2807 (_2!1307 lt!67308)))) (bvsge (_size!589 (_2!1307 lt!67308)) #b00000000000000000000000000000000) (bvsle (_size!589 (_2!1307 lt!67308)) (bvadd (mask!7102 (_2!1307 lt!67308)) #b00000000000000000000000000000001))))))

(declare-fun d!39889 () Bool)

(declare-fun res!62997 () Bool)

(assert (=> d!39889 (=> (not res!62997) (not e!85232))))

(assert (=> d!39889 (= res!62997 (validMask!0 (mask!7102 (_2!1307 lt!67308))))))

(assert (=> d!39889 (= (simpleValid!88 (_2!1307 lt!67308)) e!85232)))

(declare-fun b!130666 () Bool)

(declare-fun res!62996 () Bool)

(assert (=> b!130666 (=> (not res!62996) (not e!85232))))

(assert (=> b!130666 (= res!62996 (bvsge (size!2512 (_2!1307 lt!67308)) (_size!589 (_2!1307 lt!67308))))))

(declare-fun b!130667 () Bool)

(declare-fun res!62994 () Bool)

(assert (=> b!130667 (=> (not res!62994) (not e!85232))))

(assert (=> b!130667 (= res!62994 (= (size!2512 (_2!1307 lt!67308)) (bvadd (_size!589 (_2!1307 lt!67308)) (bvsdiv (bvadd (extraKeys!2597 (_2!1307 lt!67308)) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!130668 () Bool)

(assert (=> b!130668 (= e!85232 (and (bvsge (extraKeys!2597 (_2!1307 lt!67308)) #b00000000000000000000000000000000) (bvsle (extraKeys!2597 (_2!1307 lt!67308)) #b00000000000000000000000000000011) (bvsge (_vacant!589 (_2!1307 lt!67308)) #b00000000000000000000000000000000)))))

(assert (= (and d!39889 res!62997) b!130665))

(assert (= (and b!130665 res!62995) b!130666))

(assert (= (and b!130666 res!62996) b!130667))

(assert (= (and b!130667 res!62994) b!130668))

(declare-fun m!154315 () Bool)

(assert (=> d!39889 m!154315))

(declare-fun m!154317 () Bool)

(assert (=> b!130666 m!154317))

(assert (=> b!130667 m!154317))

(assert (=> d!39441 d!39889))

(assert (=> d!39355 d!39501))

(assert (=> d!39339 d!39377))

(declare-fun d!39891 () Bool)

(declare-fun e!85235 () Bool)

(assert (=> d!39891 e!85235))

(declare-fun res!63003 () Bool)

(assert (=> d!39891 (=> (not res!63003) (not e!85235))))

(declare-fun lt!68046 () SeekEntryResult!282)

(assert (=> d!39891 (= res!63003 ((_ is Found!282) lt!68046))))

(assert (=> d!39891 (= lt!68046 (seekEntryOrOpen!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(assert (=> d!39891 true))

(declare-fun _$33!111 () Unit!4055)

(assert (=> d!39891 (= (choose!794 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (defaultEntry!2824 newMap!16)) _$33!111)))

(declare-fun b!130673 () Bool)

(declare-fun res!63002 () Bool)

(assert (=> b!130673 (=> (not res!63002) (not e!85235))))

(assert (=> b!130673 (= res!63002 (inRange!0 (index!3286 lt!68046) (mask!7102 newMap!16)))))

(declare-fun b!130674 () Bool)

(assert (=> b!130674 (= e!85235 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!68046)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (= (and d!39891 res!63003) b!130673))

(assert (= (and b!130673 res!63002) b!130674))

(assert (=> d!39891 m!152209))

(assert (=> d!39891 m!152339))

(declare-fun m!154319 () Bool)

(assert (=> b!130673 m!154319))

(declare-fun m!154321 () Bool)

(assert (=> b!130674 m!154321))

(assert (=> d!39339 d!39891))

(assert (=> d!39339 d!39501))

(assert (=> b!130008 d!39597))

(assert (=> b!130008 d!39599))

(declare-fun d!39893 () Bool)

(declare-fun e!85236 () Bool)

(assert (=> d!39893 e!85236))

(declare-fun res!63005 () Bool)

(assert (=> d!39893 (=> (not res!63005) (not e!85236))))

(declare-fun lt!68050 () ListLongMap!1699)

(assert (=> d!39893 (= res!63005 (contains!886 lt!68050 (_1!1306 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!68049 () List!1728)

(assert (=> d!39893 (= lt!68050 (ListLongMap!1700 lt!68049))))

(declare-fun lt!68048 () Unit!4055)

(declare-fun lt!68047 () Unit!4055)

(assert (=> d!39893 (= lt!68048 lt!68047)))

(assert (=> d!39893 (= (getValueByKey!168 lt!68049 (_1!1306 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!173 (_2!1306 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39893 (= lt!68047 (lemmaContainsTupThenGetReturnValue!85 lt!68049 (_1!1306 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39893 (= lt!68049 (insertStrictlySorted!87 (toList!865 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16))) (_1!1306 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39893 (= (+!167 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!68050)))

(declare-fun b!130675 () Bool)

(declare-fun res!63004 () Bool)

(assert (=> b!130675 (=> (not res!63004) (not e!85236))))

(assert (=> b!130675 (= res!63004 (= (getValueByKey!168 (toList!865 lt!68050) (_1!1306 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!173 (_2!1306 (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!130676 () Bool)

(assert (=> b!130676 (= e!85236 (contains!887 (toList!865 lt!68050) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!39893 res!63005) b!130675))

(assert (= (and b!130675 res!63004) b!130676))

(declare-fun m!154323 () Bool)

(assert (=> d!39893 m!154323))

(declare-fun m!154325 () Bool)

(assert (=> d!39893 m!154325))

(declare-fun m!154327 () Bool)

(assert (=> d!39893 m!154327))

(declare-fun m!154329 () Bool)

(assert (=> d!39893 m!154329))

(declare-fun m!154331 () Bool)

(assert (=> b!130675 m!154331))

(declare-fun m!154333 () Bool)

(assert (=> b!130676 m!154333))

(assert (=> d!39421 d!39893))

(declare-fun d!39895 () Bool)

(assert (=> d!39895 (= (+!167 (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67305 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(assert (=> d!39895 true))

(declare-fun _$7!113 () Unit!4055)

(assert (=> d!39895 (= (choose!802 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) lt!67305 (zeroValue!2683 newMap!16) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2683 newMap!16) (defaultEntry!2824 newMap!16)) _$7!113)))

(declare-fun bs!5439 () Bool)

(assert (= bs!5439 d!39895))

(assert (=> bs!5439 m!152253))

(assert (=> bs!5439 m!152253))

(assert (=> bs!5439 m!152729))

(assert (=> bs!5439 m!152207))

(assert (=> bs!5439 m!152733))

(assert (=> d!39421 d!39895))

(declare-fun b!130677 () Bool)

(declare-fun e!85242 () Bool)

(declare-fun e!85237 () Bool)

(assert (=> b!130677 (= e!85242 e!85237)))

(declare-fun res!63010 () Bool)

(declare-fun call!14237 () Bool)

(assert (=> b!130677 (= res!63010 call!14237)))

(assert (=> b!130677 (=> (not res!63010) (not e!85237))))

(declare-fun b!130678 () Bool)

(declare-fun e!85246 () Bool)

(assert (=> b!130678 (= e!85246 e!85242)))

(declare-fun c!24132 () Bool)

(assert (=> b!130678 (= c!24132 (not (= (bvand lt!67305 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!14229 () Bool)

(declare-fun call!14232 () ListLongMap!1699)

(declare-fun c!24129 () Bool)

(declare-fun call!14233 () ListLongMap!1699)

(declare-fun c!24130 () Bool)

(declare-fun call!14234 () ListLongMap!1699)

(declare-fun call!14235 () ListLongMap!1699)

(assert (=> bm!14229 (= call!14232 (+!167 (ite c!24129 call!14234 (ite c!24130 call!14233 call!14235)) (ite (or c!24129 c!24130) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(declare-fun b!130679 () Bool)

(declare-fun e!85243 () Bool)

(declare-fun call!14236 () Bool)

(assert (=> b!130679 (= e!85243 (not call!14236))))

(declare-fun b!130680 () Bool)

(declare-fun res!63014 () Bool)

(assert (=> b!130680 (=> (not res!63014) (not e!85246))))

(assert (=> b!130680 (= res!63014 e!85243)))

(declare-fun c!24131 () Bool)

(assert (=> b!130680 (= c!24131 (not (= (bvand lt!67305 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!14230 () Bool)

(declare-fun call!14238 () ListLongMap!1699)

(assert (=> bm!14230 (= call!14238 call!14232)))

(declare-fun b!130681 () Bool)

(declare-fun e!85241 () Bool)

(declare-fun lt!68062 () ListLongMap!1699)

(assert (=> b!130681 (= e!85241 (= (apply!113 lt!68062 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) (get!1469 (select (arr!2243 (_values!2807 newMap!16)) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!130681 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2509 (_values!2807 newMap!16))))))

(assert (=> b!130681 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!130682 () Bool)

(declare-fun e!85249 () Unit!4055)

(declare-fun Unit!4108 () Unit!4055)

(assert (=> b!130682 (= e!85249 Unit!4108)))

(declare-fun b!130683 () Bool)

(declare-fun res!63009 () Bool)

(assert (=> b!130683 (=> (not res!63009) (not e!85246))))

(declare-fun e!85240 () Bool)

(assert (=> b!130683 (= res!63009 e!85240)))

(declare-fun res!63012 () Bool)

(assert (=> b!130683 (=> res!63012 e!85240)))

(declare-fun e!85245 () Bool)

(assert (=> b!130683 (= res!63012 (not e!85245))))

(declare-fun res!63007 () Bool)

(assert (=> b!130683 (=> (not res!63007) (not e!85245))))

(assert (=> b!130683 (= res!63007 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!130684 () Bool)

(declare-fun e!85247 () ListLongMap!1699)

(assert (=> b!130684 (= e!85247 call!14238)))

(declare-fun bm!14231 () Bool)

(assert (=> bm!14231 (= call!14233 call!14234)))

(declare-fun b!130685 () Bool)

(assert (=> b!130685 (= e!85240 e!85241)))

(declare-fun res!63006 () Bool)

(assert (=> b!130685 (=> (not res!63006) (not e!85241))))

(assert (=> b!130685 (= res!63006 (contains!886 lt!68062 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!130685 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun bm!14232 () Bool)

(assert (=> bm!14232 (= call!14234 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67305 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun b!130686 () Bool)

(declare-fun e!85244 () Bool)

(assert (=> b!130686 (= e!85243 e!85244)))

(declare-fun res!63008 () Bool)

(assert (=> b!130686 (= res!63008 call!14236)))

(assert (=> b!130686 (=> (not res!63008) (not e!85244))))

(declare-fun bm!14233 () Bool)

(assert (=> bm!14233 (= call!14236 (contains!886 lt!68062 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!39897 () Bool)

(assert (=> d!39897 e!85246))

(declare-fun res!63013 () Bool)

(assert (=> d!39897 (=> (not res!63013) (not e!85246))))

(assert (=> d!39897 (= res!63013 (or (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))))

(declare-fun lt!68060 () ListLongMap!1699)

(assert (=> d!39897 (= lt!68062 lt!68060)))

(declare-fun lt!68057 () Unit!4055)

(assert (=> d!39897 (= lt!68057 e!85249)))

(declare-fun c!24128 () Bool)

(declare-fun e!85239 () Bool)

(assert (=> d!39897 (= c!24128 e!85239)))

(declare-fun res!63011 () Bool)

(assert (=> d!39897 (=> (not res!63011) (not e!85239))))

(assert (=> d!39897 (= res!63011 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 newMap!16))))))

(declare-fun e!85248 () ListLongMap!1699)

(assert (=> d!39897 (= lt!68060 e!85248)))

(assert (=> d!39897 (= c!24129 (and (not (= (bvand lt!67305 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!67305 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39897 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39897 (= (getCurrentListMap!536 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67305 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)) lt!68062)))

(declare-fun b!130687 () Bool)

(declare-fun e!85238 () ListLongMap!1699)

(assert (=> b!130687 (= e!85248 e!85238)))

(assert (=> b!130687 (= c!24130 (and (not (= (bvand lt!67305 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand lt!67305 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!130688 () Bool)

(assert (=> b!130688 (= e!85239 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!14234 () Bool)

(assert (=> bm!14234 (= call!14237 (contains!886 lt!68062 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130689 () Bool)

(declare-fun c!24127 () Bool)

(assert (=> b!130689 (= c!24127 (and (not (= (bvand lt!67305 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand lt!67305 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!130689 (= e!85238 e!85247)))

(declare-fun b!130690 () Bool)

(declare-fun lt!68065 () Unit!4055)

(assert (=> b!130690 (= e!85249 lt!68065)))

(declare-fun lt!68061 () ListLongMap!1699)

(assert (=> b!130690 (= lt!68061 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67305 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!68070 () (_ BitVec 64))

(assert (=> b!130690 (= lt!68070 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68067 () (_ BitVec 64))

(assert (=> b!130690 (= lt!68067 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68063 () Unit!4055)

(assert (=> b!130690 (= lt!68063 (addStillContains!89 lt!68061 lt!68070 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) lt!68067))))

(assert (=> b!130690 (contains!886 (+!167 lt!68061 (tuple2!2593 lt!68070 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!68067)))

(declare-fun lt!68051 () Unit!4055)

(assert (=> b!130690 (= lt!68051 lt!68063)))

(declare-fun lt!68064 () ListLongMap!1699)

(assert (=> b!130690 (= lt!68064 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67305 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!68072 () (_ BitVec 64))

(assert (=> b!130690 (= lt!68072 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68055 () (_ BitVec 64))

(assert (=> b!130690 (= lt!68055 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68058 () Unit!4055)

(assert (=> b!130690 (= lt!68058 (addApplyDifferent!89 lt!68064 lt!68072 (minValue!2683 newMap!16) lt!68055))))

(assert (=> b!130690 (= (apply!113 (+!167 lt!68064 (tuple2!2593 lt!68072 (minValue!2683 newMap!16))) lt!68055) (apply!113 lt!68064 lt!68055))))

(declare-fun lt!68069 () Unit!4055)

(assert (=> b!130690 (= lt!68069 lt!68058)))

(declare-fun lt!68071 () ListLongMap!1699)

(assert (=> b!130690 (= lt!68071 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67305 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!68056 () (_ BitVec 64))

(assert (=> b!130690 (= lt!68056 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68053 () (_ BitVec 64))

(assert (=> b!130690 (= lt!68053 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68052 () Unit!4055)

(assert (=> b!130690 (= lt!68052 (addApplyDifferent!89 lt!68071 lt!68056 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) lt!68053))))

(assert (=> b!130690 (= (apply!113 (+!167 lt!68071 (tuple2!2593 lt!68056 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!68053) (apply!113 lt!68071 lt!68053))))

(declare-fun lt!68054 () Unit!4055)

(assert (=> b!130690 (= lt!68054 lt!68052)))

(declare-fun lt!68059 () ListLongMap!1699)

(assert (=> b!130690 (= lt!68059 (getCurrentListMapNoExtraKeys!134 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) lt!67305 (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2683 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2824 newMap!16)))))

(declare-fun lt!68068 () (_ BitVec 64))

(assert (=> b!130690 (= lt!68068 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68066 () (_ BitVec 64))

(assert (=> b!130690 (= lt!68066 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!130690 (= lt!68065 (addApplyDifferent!89 lt!68059 lt!68068 (minValue!2683 newMap!16) lt!68066))))

(assert (=> b!130690 (= (apply!113 (+!167 lt!68059 (tuple2!2593 lt!68068 (minValue!2683 newMap!16))) lt!68066) (apply!113 lt!68059 lt!68066))))

(declare-fun b!130691 () Bool)

(assert (=> b!130691 (= e!85245 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!130692 () Bool)

(assert (=> b!130692 (= e!85238 call!14238)))

(declare-fun b!130693 () Bool)

(assert (=> b!130693 (= e!85242 (not call!14237))))

(declare-fun b!130694 () Bool)

(assert (=> b!130694 (= e!85237 (= (apply!113 lt!68062 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2683 newMap!16)))))

(declare-fun b!130695 () Bool)

(assert (=> b!130695 (= e!85244 (= (apply!113 lt!68062 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!130696 () Bool)

(assert (=> b!130696 (= e!85248 (+!167 call!14232 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))

(declare-fun b!130697 () Bool)

(assert (=> b!130697 (= e!85247 call!14235)))

(declare-fun bm!14235 () Bool)

(assert (=> bm!14235 (= call!14235 call!14233)))

(assert (= (and d!39897 c!24129) b!130696))

(assert (= (and d!39897 (not c!24129)) b!130687))

(assert (= (and b!130687 c!24130) b!130692))

(assert (= (and b!130687 (not c!24130)) b!130689))

(assert (= (and b!130689 c!24127) b!130684))

(assert (= (and b!130689 (not c!24127)) b!130697))

(assert (= (or b!130684 b!130697) bm!14235))

(assert (= (or b!130692 bm!14235) bm!14231))

(assert (= (or b!130692 b!130684) bm!14230))

(assert (= (or b!130696 bm!14231) bm!14232))

(assert (= (or b!130696 bm!14230) bm!14229))

(assert (= (and d!39897 res!63011) b!130688))

(assert (= (and d!39897 c!24128) b!130690))

(assert (= (and d!39897 (not c!24128)) b!130682))

(assert (= (and d!39897 res!63013) b!130683))

(assert (= (and b!130683 res!63007) b!130691))

(assert (= (and b!130683 (not res!63012)) b!130685))

(assert (= (and b!130685 res!63006) b!130681))

(assert (= (and b!130683 res!63009) b!130680))

(assert (= (and b!130680 c!24131) b!130686))

(assert (= (and b!130680 (not c!24131)) b!130679))

(assert (= (and b!130686 res!63008) b!130695))

(assert (= (or b!130686 b!130679) bm!14233))

(assert (= (and b!130680 res!63014) b!130678))

(assert (= (and b!130678 c!24132) b!130677))

(assert (= (and b!130678 (not c!24132)) b!130693))

(assert (= (and b!130677 res!63010) b!130694))

(assert (= (or b!130677 b!130693) bm!14234))

(declare-fun b_lambda!5829 () Bool)

(assert (=> (not b_lambda!5829) (not b!130681)))

(assert (=> b!130681 t!6146))

(declare-fun b_and!8113 () Bool)

(assert (= b_and!8109 (and (=> t!6146 result!3933) b_and!8113)))

(assert (=> b!130681 t!6148))

(declare-fun b_and!8115 () Bool)

(assert (= b_and!8111 (and (=> t!6148 result!3935) b_and!8115)))

(assert (=> b!130691 m!152429))

(assert (=> b!130691 m!152429))

(assert (=> b!130691 m!152431))

(declare-fun m!154335 () Bool)

(assert (=> bm!14229 m!154335))

(assert (=> d!39897 m!152393))

(assert (=> b!130690 m!152429))

(declare-fun m!154337 () Bool)

(assert (=> b!130690 m!154337))

(declare-fun m!154339 () Bool)

(assert (=> b!130690 m!154339))

(declare-fun m!154341 () Bool)

(assert (=> b!130690 m!154341))

(declare-fun m!154343 () Bool)

(assert (=> b!130690 m!154343))

(declare-fun m!154345 () Bool)

(assert (=> b!130690 m!154345))

(assert (=> b!130690 m!154337))

(declare-fun m!154347 () Bool)

(assert (=> b!130690 m!154347))

(declare-fun m!154349 () Bool)

(assert (=> b!130690 m!154349))

(assert (=> b!130690 m!152207))

(declare-fun m!154351 () Bool)

(assert (=> b!130690 m!154351))

(assert (=> b!130690 m!152207))

(declare-fun m!154353 () Bool)

(assert (=> b!130690 m!154353))

(assert (=> b!130690 m!154339))

(declare-fun m!154355 () Bool)

(assert (=> b!130690 m!154355))

(declare-fun m!154357 () Bool)

(assert (=> b!130690 m!154357))

(declare-fun m!154359 () Bool)

(assert (=> b!130690 m!154359))

(assert (=> b!130690 m!152207))

(declare-fun m!154361 () Bool)

(assert (=> b!130690 m!154361))

(declare-fun m!154363 () Bool)

(assert (=> b!130690 m!154363))

(declare-fun m!154365 () Bool)

(assert (=> b!130690 m!154365))

(assert (=> b!130690 m!154363))

(declare-fun m!154367 () Bool)

(assert (=> b!130690 m!154367))

(assert (=> b!130690 m!154355))

(assert (=> b!130685 m!152429))

(assert (=> b!130685 m!152429))

(declare-fun m!154369 () Bool)

(assert (=> b!130685 m!154369))

(declare-fun m!154371 () Bool)

(assert (=> bm!14233 m!154371))

(assert (=> b!130681 m!152429))

(assert (=> b!130681 m!152471))

(assert (=> b!130681 m!152473))

(assert (=> b!130681 m!152471))

(assert (=> b!130681 m!152475))

(assert (=> b!130681 m!152473))

(assert (=> b!130681 m!152429))

(declare-fun m!154373 () Bool)

(assert (=> b!130681 m!154373))

(declare-fun m!154375 () Bool)

(assert (=> b!130694 m!154375))

(declare-fun m!154377 () Bool)

(assert (=> b!130695 m!154377))

(assert (=> bm!14232 m!152207))

(assert (=> bm!14232 m!154351))

(declare-fun m!154379 () Bool)

(assert (=> bm!14234 m!154379))

(assert (=> b!130688 m!152429))

(assert (=> b!130688 m!152429))

(assert (=> b!130688 m!152431))

(declare-fun m!154381 () Bool)

(assert (=> b!130696 m!154381))

(assert (=> d!39421 d!39897))

(assert (=> d!39421 d!39355))

(assert (=> d!39421 d!39501))

(declare-fun d!39899 () Bool)

(declare-fun e!85251 () Bool)

(assert (=> d!39899 e!85251))

(declare-fun res!63015 () Bool)

(assert (=> d!39899 (=> res!63015 e!85251)))

(declare-fun lt!68073 () Bool)

(assert (=> d!39899 (= res!63015 (not lt!68073))))

(declare-fun lt!68076 () Bool)

(assert (=> d!39899 (= lt!68073 lt!68076)))

(declare-fun lt!68075 () Unit!4055)

(declare-fun e!85250 () Unit!4055)

(assert (=> d!39899 (= lt!68075 e!85250)))

(declare-fun c!24133 () Bool)

(assert (=> d!39899 (= c!24133 lt!68076)))

(assert (=> d!39899 (= lt!68076 (containsKey!172 (toList!865 lt!67499) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!39899 (= (contains!886 lt!67499 #b1000000000000000000000000000000000000000000000000000000000000000) lt!68073)))

(declare-fun b!130698 () Bool)

(declare-fun lt!68074 () Unit!4055)

(assert (=> b!130698 (= e!85250 lt!68074)))

(assert (=> b!130698 (= lt!68074 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67499) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!130698 (isDefined!122 (getValueByKey!168 (toList!865 lt!67499) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130699 () Bool)

(declare-fun Unit!4109 () Unit!4055)

(assert (=> b!130699 (= e!85250 Unit!4109)))

(declare-fun b!130700 () Bool)

(assert (=> b!130700 (= e!85251 (isDefined!122 (getValueByKey!168 (toList!865 lt!67499) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39899 c!24133) b!130698))

(assert (= (and d!39899 (not c!24133)) b!130699))

(assert (= (and d!39899 (not res!63015)) b!130700))

(declare-fun m!154383 () Bool)

(assert (=> d!39899 m!154383))

(declare-fun m!154385 () Bool)

(assert (=> b!130698 m!154385))

(assert (=> b!130698 m!153131))

(assert (=> b!130698 m!153131))

(declare-fun m!154387 () Bool)

(assert (=> b!130698 m!154387))

(assert (=> b!130700 m!153131))

(assert (=> b!130700 m!153131))

(assert (=> b!130700 m!154387))

(assert (=> bm!14134 d!39899))

(declare-fun d!39901 () Bool)

(declare-fun res!63016 () Bool)

(declare-fun e!85252 () Bool)

(assert (=> d!39901 (=> res!63016 e!85252)))

(assert (=> d!39901 (= res!63016 (and ((_ is Cons!1724) (toList!865 lt!67214)) (= (_1!1306 (h!2328 (toList!865 lt!67214))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!39901 (= (containsKey!172 (toList!865 lt!67214) #b1000000000000000000000000000000000000000000000000000000000000000) e!85252)))

(declare-fun b!130701 () Bool)

(declare-fun e!85253 () Bool)

(assert (=> b!130701 (= e!85252 e!85253)))

(declare-fun res!63017 () Bool)

(assert (=> b!130701 (=> (not res!63017) (not e!85253))))

(assert (=> b!130701 (= res!63017 (and (or (not ((_ is Cons!1724) (toList!865 lt!67214))) (bvsle (_1!1306 (h!2328 (toList!865 lt!67214))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!1724) (toList!865 lt!67214)) (bvslt (_1!1306 (h!2328 (toList!865 lt!67214))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!130702 () Bool)

(assert (=> b!130702 (= e!85253 (containsKey!172 (t!6139 (toList!865 lt!67214)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!39901 (not res!63016)) b!130701))

(assert (= (and b!130701 res!63017) b!130702))

(declare-fun m!154389 () Bool)

(assert (=> b!130702 m!154389))

(assert (=> d!39419 d!39901))

(assert (=> bm!14109 d!39577))

(declare-fun lt!68077 () Bool)

(declare-fun d!39903 () Bool)

(assert (=> d!39903 (= lt!68077 (select (content!129 (toList!865 lt!67444)) (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun e!85254 () Bool)

(assert (=> d!39903 (= lt!68077 e!85254)))

(declare-fun res!63019 () Bool)

(assert (=> d!39903 (=> (not res!63019) (not e!85254))))

(assert (=> d!39903 (= res!63019 ((_ is Cons!1724) (toList!865 lt!67444)))))

(assert (=> d!39903 (= (contains!887 (toList!865 lt!67444) (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))) lt!68077)))

(declare-fun b!130703 () Bool)

(declare-fun e!85255 () Bool)

(assert (=> b!130703 (= e!85254 e!85255)))

(declare-fun res!63018 () Bool)

(assert (=> b!130703 (=> res!63018 e!85255)))

(assert (=> b!130703 (= res!63018 (= (h!2328 (toList!865 lt!67444)) (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(declare-fun b!130704 () Bool)

(assert (=> b!130704 (= e!85255 (contains!887 (t!6139 (toList!865 lt!67444)) (tuple2!2593 lt!67208 (zeroValue!2683 (v!3159 (underlying!446 thiss!992))))))))

(assert (= (and d!39903 res!63019) b!130703))

(assert (= (and b!130703 (not res!63018)) b!130704))

(declare-fun m!154391 () Bool)

(assert (=> d!39903 m!154391))

(declare-fun m!154393 () Bool)

(assert (=> d!39903 m!154393))

(declare-fun m!154395 () Bool)

(assert (=> b!130704 m!154395))

(assert (=> b!129868 d!39903))

(assert (=> d!39347 d!39349))

(assert (=> d!39347 d!39351))

(declare-fun d!39905 () Bool)

(assert (=> d!39905 (isDefined!122 (getValueByKey!168 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> d!39905 true))

(declare-fun _$12!396 () Unit!4055)

(assert (=> d!39905 (= (choose!796 (toList!865 lt!67149) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) _$12!396)))

(declare-fun bs!5440 () Bool)

(assert (= bs!5440 d!39905))

(assert (=> bs!5440 m!152209))

(assert (=> bs!5440 m!152317))

(assert (=> bs!5440 m!152317))

(assert (=> bs!5440 m!152319))

(assert (=> d!39347 d!39905))

(declare-fun d!39907 () Bool)

(declare-fun res!63024 () Bool)

(declare-fun e!85260 () Bool)

(assert (=> d!39907 (=> res!63024 e!85260)))

(assert (=> d!39907 (= res!63024 (or ((_ is Nil!1725) (toList!865 lt!67149)) ((_ is Nil!1725) (t!6139 (toList!865 lt!67149)))))))

(assert (=> d!39907 (= (isStrictlySorted!314 (toList!865 lt!67149)) e!85260)))

(declare-fun b!130709 () Bool)

(declare-fun e!85261 () Bool)

(assert (=> b!130709 (= e!85260 e!85261)))

(declare-fun res!63025 () Bool)

(assert (=> b!130709 (=> (not res!63025) (not e!85261))))

(assert (=> b!130709 (= res!63025 (bvslt (_1!1306 (h!2328 (toList!865 lt!67149))) (_1!1306 (h!2328 (t!6139 (toList!865 lt!67149))))))))

(declare-fun b!130710 () Bool)

(assert (=> b!130710 (= e!85261 (isStrictlySorted!314 (t!6139 (toList!865 lt!67149))))))

(assert (= (and d!39907 (not res!63024)) b!130709))

(assert (= (and b!130709 res!63025) b!130710))

(declare-fun m!154397 () Bool)

(assert (=> b!130710 m!154397))

(assert (=> d!39347 d!39907))

(assert (=> b!129988 d!39741))

(declare-fun d!39909 () Bool)

(declare-fun e!85262 () Bool)

(assert (=> d!39909 e!85262))

(declare-fun res!63027 () Bool)

(assert (=> d!39909 (=> (not res!63027) (not e!85262))))

(declare-fun lt!68081 () ListLongMap!1699)

(assert (=> d!39909 (= res!63027 (contains!886 lt!68081 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!68080 () List!1728)

(assert (=> d!39909 (= lt!68081 (ListLongMap!1700 lt!68080))))

(declare-fun lt!68079 () Unit!4055)

(declare-fun lt!68078 () Unit!4055)

(assert (=> d!39909 (= lt!68079 lt!68078)))

(assert (=> d!39909 (= (getValueByKey!168 lt!68080 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!173 (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39909 (= lt!68078 (lemmaContainsTupThenGetReturnValue!85 lt!68080 (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39909 (= lt!68080 (insertStrictlySorted!87 (toList!865 (map!1395 newMap!16)) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39909 (= (+!167 (map!1395 newMap!16) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!68081)))

(declare-fun b!130711 () Bool)

(declare-fun res!63026 () Bool)

(assert (=> b!130711 (=> (not res!63026) (not e!85262))))

(assert (=> b!130711 (= res!63026 (= (getValueByKey!168 (toList!865 lt!68081) (_1!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!173 (_2!1306 (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!130712 () Bool)

(assert (=> b!130712 (= e!85262 (contains!887 (toList!865 lt!68081) (tuple2!2593 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (get!1469 (select (arr!2243 (_values!2807 (v!3159 (underlying!446 thiss!992)))) from!355) (dynLambda!421 (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!39909 res!63027) b!130711))

(assert (= (and b!130711 res!63026) b!130712))

(declare-fun m!154399 () Bool)

(assert (=> d!39909 m!154399))

(declare-fun m!154401 () Bool)

(assert (=> d!39909 m!154401))

(declare-fun m!154403 () Bool)

(assert (=> d!39909 m!154403))

(declare-fun m!154405 () Bool)

(assert (=> d!39909 m!154405))

(declare-fun m!154407 () Bool)

(assert (=> b!130711 m!154407))

(declare-fun m!154409 () Bool)

(assert (=> b!130712 m!154409))

(assert (=> b!129988 d!39909))

(assert (=> b!129988 d!39323))

(declare-fun b!130725 () Bool)

(declare-fun e!85269 () SeekEntryResult!282)

(assert (=> b!130725 (= e!85269 (MissingVacant!282 (index!3287 lt!67418)))))

(declare-fun b!130726 () Bool)

(declare-fun e!85271 () SeekEntryResult!282)

(assert (=> b!130726 (= e!85271 (Found!282 (index!3287 lt!67418)))))

(declare-fun b!130727 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!130727 (= e!85269 (seekKeyOrZeroReturnVacant!0 (bvadd (x!15277 lt!67418) #b00000000000000000000000000000001) (nextIndex!0 (index!3287 lt!67418) (x!15277 lt!67418) (mask!7102 newMap!16)) (index!3287 lt!67418) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(declare-fun lt!68086 () SeekEntryResult!282)

(declare-fun d!39911 () Bool)

(assert (=> d!39911 (and (or ((_ is Undefined!282) lt!68086) (not ((_ is Found!282) lt!68086)) (and (bvsge (index!3286 lt!68086) #b00000000000000000000000000000000) (bvslt (index!3286 lt!68086) (size!2508 (_keys!4565 newMap!16))))) (or ((_ is Undefined!282) lt!68086) ((_ is Found!282) lt!68086) (not ((_ is MissingVacant!282) lt!68086)) (not (= (index!3288 lt!68086) (index!3287 lt!67418))) (and (bvsge (index!3288 lt!68086) #b00000000000000000000000000000000) (bvslt (index!3288 lt!68086) (size!2508 (_keys!4565 newMap!16))))) (or ((_ is Undefined!282) lt!68086) (ite ((_ is Found!282) lt!68086) (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!68086)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (and ((_ is MissingVacant!282) lt!68086) (= (index!3288 lt!68086) (index!3287 lt!67418)) (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3288 lt!68086)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!85270 () SeekEntryResult!282)

(assert (=> d!39911 (= lt!68086 e!85270)))

(declare-fun c!24142 () Bool)

(assert (=> d!39911 (= c!24142 (bvsge (x!15277 lt!67418) #b01111111111111111111111111111110))))

(declare-fun lt!68087 () (_ BitVec 64))

(assert (=> d!39911 (= lt!68087 (select (arr!2242 (_keys!4565 newMap!16)) (index!3287 lt!67418)))))

(assert (=> d!39911 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39911 (= (seekKeyOrZeroReturnVacant!0 (x!15277 lt!67418) (index!3287 lt!67418) (index!3287 lt!67418) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (mask!7102 newMap!16)) lt!68086)))

(declare-fun b!130728 () Bool)

(assert (=> b!130728 (= e!85270 Undefined!282)))

(declare-fun b!130729 () Bool)

(declare-fun c!24141 () Bool)

(assert (=> b!130729 (= c!24141 (= lt!68087 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!130729 (= e!85271 e!85269)))

(declare-fun b!130730 () Bool)

(assert (=> b!130730 (= e!85270 e!85271)))

(declare-fun c!24140 () Bool)

(assert (=> b!130730 (= c!24140 (= lt!68087 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (= (and d!39911 c!24142) b!130728))

(assert (= (and d!39911 (not c!24142)) b!130730))

(assert (= (and b!130730 c!24140) b!130726))

(assert (= (and b!130730 (not c!24140)) b!130729))

(assert (= (and b!130729 c!24141) b!130725))

(assert (= (and b!130729 (not c!24141)) b!130727))

(declare-fun m!154411 () Bool)

(assert (=> b!130727 m!154411))

(assert (=> b!130727 m!154411))

(assert (=> b!130727 m!152209))

(declare-fun m!154413 () Bool)

(assert (=> b!130727 m!154413))

(declare-fun m!154415 () Bool)

(assert (=> d!39911 m!154415))

(declare-fun m!154417 () Bool)

(assert (=> d!39911 m!154417))

(assert (=> d!39911 m!152581))

(assert (=> d!39911 m!152393))

(assert (=> b!129830 d!39911))

(declare-fun b!130731 () Bool)

(declare-fun e!85273 () Bool)

(declare-fun e!85274 () Bool)

(assert (=> b!130731 (= e!85273 e!85274)))

(declare-fun c!24143 () Bool)

(assert (=> b!130731 (= c!24143 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000)))))

(declare-fun b!130732 () Bool)

(declare-fun e!85272 () Bool)

(assert (=> b!130732 (= e!85272 e!85273)))

(declare-fun res!63030 () Bool)

(assert (=> b!130732 (=> (not res!63030) (not e!85273))))

(declare-fun e!85275 () Bool)

(assert (=> b!130732 (= res!63030 (not e!85275))))

(declare-fun res!63029 () Bool)

(assert (=> b!130732 (=> (not res!63029) (not e!85275))))

(assert (=> b!130732 (= res!63029 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000)))))

(declare-fun bm!14236 () Bool)

(declare-fun call!14239 () Bool)

(assert (=> bm!14236 (= call!14239 (arrayNoDuplicates!0 (_keys!4565 (_2!1307 lt!67308)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!24143 (Cons!1725 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000) Nil!1726) Nil!1726)))))

(declare-fun b!130733 () Bool)

(assert (=> b!130733 (= e!85274 call!14239)))

(declare-fun b!130734 () Bool)

(assert (=> b!130734 (= e!85274 call!14239)))

(declare-fun b!130735 () Bool)

(assert (=> b!130735 (= e!85275 (contains!888 Nil!1726 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000)))))

(declare-fun d!39913 () Bool)

(declare-fun res!63028 () Bool)

(assert (=> d!39913 (=> res!63028 e!85272)))

(assert (=> d!39913 (= res!63028 (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 (_2!1307 lt!67308)))))))

(assert (=> d!39913 (= (arrayNoDuplicates!0 (_keys!4565 (_2!1307 lt!67308)) #b00000000000000000000000000000000 Nil!1726) e!85272)))

(assert (= (and d!39913 (not res!63028)) b!130732))

(assert (= (and b!130732 res!63029) b!130735))

(assert (= (and b!130732 res!63030) b!130731))

(assert (= (and b!130731 c!24143) b!130733))

(assert (= (and b!130731 (not c!24143)) b!130734))

(assert (= (or b!130733 b!130734) bm!14236))

(assert (=> b!130731 m!153071))

(assert (=> b!130731 m!153071))

(assert (=> b!130731 m!153079))

(assert (=> b!130732 m!153071))

(assert (=> b!130732 m!153071))

(assert (=> b!130732 m!153079))

(assert (=> bm!14236 m!153071))

(declare-fun m!154419 () Bool)

(assert (=> bm!14236 m!154419))

(assert (=> b!130735 m!153071))

(assert (=> b!130735 m!153071))

(declare-fun m!154421 () Bool)

(assert (=> b!130735 m!154421))

(assert (=> b!129951 d!39913))

(declare-fun lt!68088 () Bool)

(declare-fun d!39915 () Bool)

(assert (=> d!39915 (= lt!68088 (select (content!129 (toList!865 lt!67520)) (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun e!85276 () Bool)

(assert (=> d!39915 (= lt!68088 e!85276)))

(declare-fun res!63032 () Bool)

(assert (=> d!39915 (=> (not res!63032) (not e!85276))))

(assert (=> d!39915 (= res!63032 ((_ is Cons!1724) (toList!865 lt!67520)))))

(assert (=> d!39915 (= (contains!887 (toList!865 lt!67520) (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) lt!68088)))

(declare-fun b!130736 () Bool)

(declare-fun e!85277 () Bool)

(assert (=> b!130736 (= e!85276 e!85277)))

(declare-fun res!63031 () Bool)

(assert (=> b!130736 (=> res!63031 e!85277)))

(assert (=> b!130736 (= res!63031 (= (h!2328 (toList!865 lt!67520)) (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130737 () Bool)

(assert (=> b!130737 (= e!85277 (contains!887 (t!6139 (toList!865 lt!67520)) (ite (or c!23808 c!23809) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (v!3159 (underlying!446 thiss!992)))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(assert (= (and d!39915 res!63032) b!130736))

(assert (= (and b!130736 (not res!63031)) b!130737))

(declare-fun m!154423 () Bool)

(assert (=> d!39915 m!154423))

(declare-fun m!154425 () Bool)

(assert (=> d!39915 m!154425))

(declare-fun m!154427 () Bool)

(assert (=> b!130737 m!154427))

(assert (=> b!129948 d!39915))

(declare-fun b!130738 () Bool)

(declare-fun e!85278 () (_ BitVec 32))

(declare-fun e!85279 () (_ BitVec 32))

(assert (=> b!130738 (= e!85278 e!85279)))

(declare-fun c!24144 () Bool)

(assert (=> b!130738 (= c!24144 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!39917 () Bool)

(declare-fun lt!68089 () (_ BitVec 32))

(assert (=> d!39917 (and (bvsge lt!68089 #b00000000000000000000000000000000) (bvsle lt!68089 (bvsub (size!2508 (_keys!4565 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!39917 (= lt!68089 e!85278)))

(declare-fun c!24145 () Bool)

(assert (=> d!39917 (= c!24145 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2508 (_keys!4565 newMap!16))))))

(assert (=> d!39917 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2508 (_keys!4565 newMap!16))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!2508 (_keys!4565 newMap!16)) (size!2508 (_keys!4565 newMap!16))))))

(assert (=> d!39917 (= (arrayCountValidKeys!0 (_keys!4565 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2508 (_keys!4565 newMap!16))) lt!68089)))

(declare-fun b!130739 () Bool)

(declare-fun call!14240 () (_ BitVec 32))

(assert (=> b!130739 (= e!85279 call!14240)))

(declare-fun b!130740 () Bool)

(assert (=> b!130740 (= e!85278 #b00000000000000000000000000000000)))

(declare-fun bm!14237 () Bool)

(assert (=> bm!14237 (= call!14240 (arrayCountValidKeys!0 (_keys!4565 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!130741 () Bool)

(assert (=> b!130741 (= e!85279 (bvadd #b00000000000000000000000000000001 call!14240))))

(assert (= (and d!39917 c!24145) b!130740))

(assert (= (and d!39917 (not c!24145)) b!130738))

(assert (= (and b!130738 c!24144) b!130741))

(assert (= (and b!130738 (not c!24144)) b!130739))

(assert (= (or b!130741 b!130739) bm!14237))

(assert (=> b!130738 m!153383))

(assert (=> b!130738 m!153383))

(assert (=> b!130738 m!153391))

(declare-fun m!154429 () Bool)

(assert (=> bm!14237 m!154429))

(assert (=> bm!14138 d!39917))

(declare-fun d!39919 () Bool)

(declare-fun e!85281 () Bool)

(assert (=> d!39919 e!85281))

(declare-fun res!63033 () Bool)

(assert (=> d!39919 (=> res!63033 e!85281)))

(declare-fun lt!68090 () Bool)

(assert (=> d!39919 (= res!63033 (not lt!68090))))

(declare-fun lt!68093 () Bool)

(assert (=> d!39919 (= lt!68090 lt!68093)))

(declare-fun lt!68092 () Unit!4055)

(declare-fun e!85280 () Unit!4055)

(assert (=> d!39919 (= lt!68092 e!85280)))

(declare-fun c!24146 () Bool)

(assert (=> d!39919 (= c!24146 lt!68093)))

(assert (=> d!39919 (= lt!68093 (containsKey!172 (toList!865 lt!67401) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!39919 (= (contains!886 lt!67401 #b1000000000000000000000000000000000000000000000000000000000000000) lt!68090)))

(declare-fun b!130742 () Bool)

(declare-fun lt!68091 () Unit!4055)

(assert (=> b!130742 (= e!85280 lt!68091)))

(assert (=> b!130742 (= lt!68091 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67401) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!130742 (isDefined!122 (getValueByKey!168 (toList!865 lt!67401) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130743 () Bool)

(declare-fun Unit!4110 () Unit!4055)

(assert (=> b!130743 (= e!85280 Unit!4110)))

(declare-fun b!130744 () Bool)

(assert (=> b!130744 (= e!85281 (isDefined!122 (getValueByKey!168 (toList!865 lt!67401) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!39919 c!24146) b!130742))

(assert (= (and d!39919 (not c!24146)) b!130743))

(assert (= (and d!39919 (not res!63033)) b!130744))

(declare-fun m!154431 () Bool)

(assert (=> d!39919 m!154431))

(declare-fun m!154433 () Bool)

(assert (=> b!130742 m!154433))

(assert (=> b!130742 m!153727))

(assert (=> b!130742 m!153727))

(declare-fun m!154435 () Bool)

(assert (=> b!130742 m!154435))

(assert (=> b!130744 m!153727))

(assert (=> b!130744 m!153727))

(assert (=> b!130744 m!154435))

(assert (=> bm!14121 d!39919))

(assert (=> b!129926 d!39485))

(declare-fun d!39921 () Bool)

(assert (=> d!39921 (isDefined!122 (getValueByKey!168 (toList!865 lt!67214) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun lt!68094 () Unit!4055)

(assert (=> d!39921 (= lt!68094 (choose!796 (toList!865 lt!67214) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!85282 () Bool)

(assert (=> d!39921 e!85282))

(declare-fun res!63034 () Bool)

(assert (=> d!39921 (=> (not res!63034) (not e!85282))))

(assert (=> d!39921 (= res!63034 (isStrictlySorted!314 (toList!865 lt!67214)))))

(assert (=> d!39921 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!121 (toList!865 lt!67214) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!68094)))

(declare-fun b!130745 () Bool)

(assert (=> b!130745 (= e!85282 (containsKey!172 (toList!865 lt!67214) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (= (and d!39921 res!63034) b!130745))

(assert (=> d!39921 m!152255))

(assert (=> d!39921 m!152399))

(assert (=> d!39921 m!152399))

(assert (=> d!39921 m!152427))

(assert (=> d!39921 m!152255))

(declare-fun m!154437 () Bool)

(assert (=> d!39921 m!154437))

(assert (=> d!39921 m!153097))

(assert (=> b!130745 m!152255))

(assert (=> b!130745 m!152423))

(assert (=> b!129720 d!39921))

(assert (=> b!129720 d!39709))

(assert (=> b!129720 d!39711))

(declare-fun d!39923 () Bool)

(assert (=> d!39923 (= (apply!113 lt!67499 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1472 (getValueByKey!168 (toList!865 lt!67499) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5441 () Bool)

(assert (= bs!5441 d!39923))

(assert (=> bs!5441 m!153849))

(assert (=> bs!5441 m!153849))

(declare-fun m!154439 () Bool)

(assert (=> bs!5441 m!154439))

(assert (=> b!129930 d!39923))

(assert (=> b!129734 d!39485))

(declare-fun b!130746 () Bool)

(declare-fun e!85284 () Bool)

(declare-fun e!85285 () Bool)

(assert (=> b!130746 (= e!85284 e!85285)))

(declare-fun c!24147 () Bool)

(assert (=> b!130746 (= c!24147 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!130747 () Bool)

(declare-fun e!85283 () Bool)

(assert (=> b!130747 (= e!85283 e!85284)))

(declare-fun res!63037 () Bool)

(assert (=> b!130747 (=> (not res!63037) (not e!85284))))

(declare-fun e!85286 () Bool)

(assert (=> b!130747 (= res!63037 (not e!85286))))

(declare-fun res!63036 () Bool)

(assert (=> b!130747 (=> (not res!63036) (not e!85286))))

(assert (=> b!130747 (= res!63036 (validKeyInArray!0 (select (arr!2242 (_keys!4565 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!14238 () Bool)

(declare-fun call!14241 () Bool)

(assert (=> bm!14238 (= call!14241 (arrayNoDuplicates!0 (_keys!4565 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!24147 (Cons!1725 (select (arr!2242 (_keys!4565 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!23910 (Cons!1725 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) Nil!1726) Nil!1726)) (ite c!23910 (Cons!1725 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) Nil!1726) Nil!1726))))))

(declare-fun b!130748 () Bool)

(assert (=> b!130748 (= e!85285 call!14241)))

(declare-fun b!130749 () Bool)

(assert (=> b!130749 (= e!85285 call!14241)))

(declare-fun b!130750 () Bool)

(assert (=> b!130750 (= e!85286 (contains!888 (ite c!23910 (Cons!1725 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) Nil!1726) Nil!1726) (select (arr!2242 (_keys!4565 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!39925 () Bool)

(declare-fun res!63035 () Bool)

(assert (=> d!39925 (=> res!63035 e!85283)))

(assert (=> d!39925 (= res!63035 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2508 (_keys!4565 newMap!16))))))

(assert (=> d!39925 (= (arrayNoDuplicates!0 (_keys!4565 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!23910 (Cons!1725 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) Nil!1726) Nil!1726)) e!85283)))

(assert (= (and d!39925 (not res!63035)) b!130747))

(assert (= (and b!130747 res!63036) b!130750))

(assert (= (and b!130747 res!63037) b!130746))

(assert (= (and b!130746 c!24147) b!130748))

(assert (= (and b!130746 (not c!24147)) b!130749))

(assert (= (or b!130748 b!130749) bm!14238))

(assert (=> b!130746 m!153383))

(assert (=> b!130746 m!153383))

(assert (=> b!130746 m!153391))

(assert (=> b!130747 m!153383))

(assert (=> b!130747 m!153383))

(assert (=> b!130747 m!153391))

(assert (=> bm!14238 m!153383))

(declare-fun m!154441 () Bool)

(assert (=> bm!14238 m!154441))

(assert (=> b!130750 m!153383))

(assert (=> b!130750 m!153383))

(declare-fun m!154443 () Bool)

(assert (=> b!130750 m!154443))

(assert (=> bm!14125 d!39925))

(declare-fun b!130751 () Bool)

(declare-fun e!85292 () Bool)

(declare-fun e!85287 () Bool)

(assert (=> b!130751 (= e!85292 e!85287)))

(declare-fun res!63042 () Bool)

(declare-fun call!14247 () Bool)

(assert (=> b!130751 (= res!63042 call!14247)))

(assert (=> b!130751 (=> (not res!63042) (not e!85287))))

(declare-fun b!130752 () Bool)

(declare-fun e!85296 () Bool)

(assert (=> b!130752 (= e!85296 e!85292)))

(declare-fun c!24153 () Bool)

(assert (=> b!130752 (= c!24153 (not (= (bvand (extraKeys!2597 (_2!1307 lt!67308)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!14244 () ListLongMap!1699)

(declare-fun c!24151 () Bool)

(declare-fun call!14242 () ListLongMap!1699)

(declare-fun call!14243 () ListLongMap!1699)

(declare-fun call!14245 () ListLongMap!1699)

(declare-fun bm!14239 () Bool)

(declare-fun c!24150 () Bool)

(assert (=> bm!14239 (= call!14242 (+!167 (ite c!24150 call!14244 (ite c!24151 call!14243 call!14245)) (ite (or c!24150 c!24151) (tuple2!2593 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2683 (_2!1307 lt!67308))) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (_2!1307 lt!67308))))))))

(declare-fun b!130753 () Bool)

(declare-fun e!85293 () Bool)

(declare-fun call!14246 () Bool)

(assert (=> b!130753 (= e!85293 (not call!14246))))

(declare-fun b!130754 () Bool)

(declare-fun res!63046 () Bool)

(assert (=> b!130754 (=> (not res!63046) (not e!85296))))

(assert (=> b!130754 (= res!63046 e!85293)))

(declare-fun c!24152 () Bool)

(assert (=> b!130754 (= c!24152 (not (= (bvand (extraKeys!2597 (_2!1307 lt!67308)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!14240 () Bool)

(declare-fun call!14248 () ListLongMap!1699)

(assert (=> bm!14240 (= call!14248 call!14242)))

(declare-fun b!130755 () Bool)

(declare-fun e!85291 () Bool)

(declare-fun lt!68106 () ListLongMap!1699)

(assert (=> b!130755 (= e!85291 (= (apply!113 lt!68106 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000)) (get!1469 (select (arr!2243 (_values!2807 (_2!1307 lt!67308))) #b00000000000000000000000000000000) (dynLambda!421 (defaultEntry!2824 (_2!1307 lt!67308)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!130755 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2509 (_values!2807 (_2!1307 lt!67308)))))))

(assert (=> b!130755 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 (_2!1307 lt!67308)))))))

(declare-fun b!130756 () Bool)

(declare-fun e!85299 () Unit!4055)

(declare-fun Unit!4111 () Unit!4055)

(assert (=> b!130756 (= e!85299 Unit!4111)))

(declare-fun b!130757 () Bool)

(declare-fun res!63041 () Bool)

(assert (=> b!130757 (=> (not res!63041) (not e!85296))))

(declare-fun e!85290 () Bool)

(assert (=> b!130757 (= res!63041 e!85290)))

(declare-fun res!63044 () Bool)

(assert (=> b!130757 (=> res!63044 e!85290)))

(declare-fun e!85295 () Bool)

(assert (=> b!130757 (= res!63044 (not e!85295))))

(declare-fun res!63039 () Bool)

(assert (=> b!130757 (=> (not res!63039) (not e!85295))))

(assert (=> b!130757 (= res!63039 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 (_2!1307 lt!67308)))))))

(declare-fun b!130758 () Bool)

(declare-fun e!85297 () ListLongMap!1699)

(assert (=> b!130758 (= e!85297 call!14248)))

(declare-fun bm!14241 () Bool)

(assert (=> bm!14241 (= call!14243 call!14244)))

(declare-fun b!130759 () Bool)

(assert (=> b!130759 (= e!85290 e!85291)))

(declare-fun res!63038 () Bool)

(assert (=> b!130759 (=> (not res!63038) (not e!85291))))

(assert (=> b!130759 (= res!63038 (contains!886 lt!68106 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000)))))

(assert (=> b!130759 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 (_2!1307 lt!67308)))))))

(declare-fun bm!14242 () Bool)

(assert (=> bm!14242 (= call!14244 (getCurrentListMapNoExtraKeys!134 (_keys!4565 (_2!1307 lt!67308)) (_values!2807 (_2!1307 lt!67308)) (mask!7102 (_2!1307 lt!67308)) (extraKeys!2597 (_2!1307 lt!67308)) (zeroValue!2683 (_2!1307 lt!67308)) (minValue!2683 (_2!1307 lt!67308)) #b00000000000000000000000000000000 (defaultEntry!2824 (_2!1307 lt!67308))))))

(declare-fun b!130760 () Bool)

(declare-fun e!85294 () Bool)

(assert (=> b!130760 (= e!85293 e!85294)))

(declare-fun res!63040 () Bool)

(assert (=> b!130760 (= res!63040 call!14246)))

(assert (=> b!130760 (=> (not res!63040) (not e!85294))))

(declare-fun bm!14243 () Bool)

(assert (=> bm!14243 (= call!14246 (contains!886 lt!68106 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!39927 () Bool)

(assert (=> d!39927 e!85296))

(declare-fun res!63045 () Bool)

(assert (=> d!39927 (=> (not res!63045) (not e!85296))))

(assert (=> d!39927 (= res!63045 (or (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 (_2!1307 lt!67308)))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 (_2!1307 lt!67308)))))))))

(declare-fun lt!68104 () ListLongMap!1699)

(assert (=> d!39927 (= lt!68106 lt!68104)))

(declare-fun lt!68101 () Unit!4055)

(assert (=> d!39927 (= lt!68101 e!85299)))

(declare-fun c!24149 () Bool)

(declare-fun e!85289 () Bool)

(assert (=> d!39927 (= c!24149 e!85289)))

(declare-fun res!63043 () Bool)

(assert (=> d!39927 (=> (not res!63043) (not e!85289))))

(assert (=> d!39927 (= res!63043 (bvslt #b00000000000000000000000000000000 (size!2508 (_keys!4565 (_2!1307 lt!67308)))))))

(declare-fun e!85298 () ListLongMap!1699)

(assert (=> d!39927 (= lt!68104 e!85298)))

(assert (=> d!39927 (= c!24150 (and (not (= (bvand (extraKeys!2597 (_2!1307 lt!67308)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2597 (_2!1307 lt!67308)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!39927 (validMask!0 (mask!7102 (_2!1307 lt!67308)))))

(assert (=> d!39927 (= (getCurrentListMap!536 (_keys!4565 (_2!1307 lt!67308)) (_values!2807 (_2!1307 lt!67308)) (mask!7102 (_2!1307 lt!67308)) (extraKeys!2597 (_2!1307 lt!67308)) (zeroValue!2683 (_2!1307 lt!67308)) (minValue!2683 (_2!1307 lt!67308)) #b00000000000000000000000000000000 (defaultEntry!2824 (_2!1307 lt!67308))) lt!68106)))

(declare-fun b!130761 () Bool)

(declare-fun e!85288 () ListLongMap!1699)

(assert (=> b!130761 (= e!85298 e!85288)))

(assert (=> b!130761 (= c!24151 (and (not (= (bvand (extraKeys!2597 (_2!1307 lt!67308)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2597 (_2!1307 lt!67308)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!130762 () Bool)

(assert (=> b!130762 (= e!85289 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000)))))

(declare-fun bm!14244 () Bool)

(assert (=> bm!14244 (= call!14247 (contains!886 lt!68106 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130763 () Bool)

(declare-fun c!24148 () Bool)

(assert (=> b!130763 (= c!24148 (and (not (= (bvand (extraKeys!2597 (_2!1307 lt!67308)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2597 (_2!1307 lt!67308)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!130763 (= e!85288 e!85297)))

(declare-fun b!130764 () Bool)

(declare-fun lt!68109 () Unit!4055)

(assert (=> b!130764 (= e!85299 lt!68109)))

(declare-fun lt!68105 () ListLongMap!1699)

(assert (=> b!130764 (= lt!68105 (getCurrentListMapNoExtraKeys!134 (_keys!4565 (_2!1307 lt!67308)) (_values!2807 (_2!1307 lt!67308)) (mask!7102 (_2!1307 lt!67308)) (extraKeys!2597 (_2!1307 lt!67308)) (zeroValue!2683 (_2!1307 lt!67308)) (minValue!2683 (_2!1307 lt!67308)) #b00000000000000000000000000000000 (defaultEntry!2824 (_2!1307 lt!67308))))))

(declare-fun lt!68114 () (_ BitVec 64))

(assert (=> b!130764 (= lt!68114 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68111 () (_ BitVec 64))

(assert (=> b!130764 (= lt!68111 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000))))

(declare-fun lt!68107 () Unit!4055)

(assert (=> b!130764 (= lt!68107 (addStillContains!89 lt!68105 lt!68114 (zeroValue!2683 (_2!1307 lt!67308)) lt!68111))))

(assert (=> b!130764 (contains!886 (+!167 lt!68105 (tuple2!2593 lt!68114 (zeroValue!2683 (_2!1307 lt!67308)))) lt!68111)))

(declare-fun lt!68095 () Unit!4055)

(assert (=> b!130764 (= lt!68095 lt!68107)))

(declare-fun lt!68108 () ListLongMap!1699)

(assert (=> b!130764 (= lt!68108 (getCurrentListMapNoExtraKeys!134 (_keys!4565 (_2!1307 lt!67308)) (_values!2807 (_2!1307 lt!67308)) (mask!7102 (_2!1307 lt!67308)) (extraKeys!2597 (_2!1307 lt!67308)) (zeroValue!2683 (_2!1307 lt!67308)) (minValue!2683 (_2!1307 lt!67308)) #b00000000000000000000000000000000 (defaultEntry!2824 (_2!1307 lt!67308))))))

(declare-fun lt!68116 () (_ BitVec 64))

(assert (=> b!130764 (= lt!68116 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68099 () (_ BitVec 64))

(assert (=> b!130764 (= lt!68099 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000))))

(declare-fun lt!68102 () Unit!4055)

(assert (=> b!130764 (= lt!68102 (addApplyDifferent!89 lt!68108 lt!68116 (minValue!2683 (_2!1307 lt!67308)) lt!68099))))

(assert (=> b!130764 (= (apply!113 (+!167 lt!68108 (tuple2!2593 lt!68116 (minValue!2683 (_2!1307 lt!67308)))) lt!68099) (apply!113 lt!68108 lt!68099))))

(declare-fun lt!68113 () Unit!4055)

(assert (=> b!130764 (= lt!68113 lt!68102)))

(declare-fun lt!68115 () ListLongMap!1699)

(assert (=> b!130764 (= lt!68115 (getCurrentListMapNoExtraKeys!134 (_keys!4565 (_2!1307 lt!67308)) (_values!2807 (_2!1307 lt!67308)) (mask!7102 (_2!1307 lt!67308)) (extraKeys!2597 (_2!1307 lt!67308)) (zeroValue!2683 (_2!1307 lt!67308)) (minValue!2683 (_2!1307 lt!67308)) #b00000000000000000000000000000000 (defaultEntry!2824 (_2!1307 lt!67308))))))

(declare-fun lt!68100 () (_ BitVec 64))

(assert (=> b!130764 (= lt!68100 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68097 () (_ BitVec 64))

(assert (=> b!130764 (= lt!68097 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000))))

(declare-fun lt!68096 () Unit!4055)

(assert (=> b!130764 (= lt!68096 (addApplyDifferent!89 lt!68115 lt!68100 (zeroValue!2683 (_2!1307 lt!67308)) lt!68097))))

(assert (=> b!130764 (= (apply!113 (+!167 lt!68115 (tuple2!2593 lt!68100 (zeroValue!2683 (_2!1307 lt!67308)))) lt!68097) (apply!113 lt!68115 lt!68097))))

(declare-fun lt!68098 () Unit!4055)

(assert (=> b!130764 (= lt!68098 lt!68096)))

(declare-fun lt!68103 () ListLongMap!1699)

(assert (=> b!130764 (= lt!68103 (getCurrentListMapNoExtraKeys!134 (_keys!4565 (_2!1307 lt!67308)) (_values!2807 (_2!1307 lt!67308)) (mask!7102 (_2!1307 lt!67308)) (extraKeys!2597 (_2!1307 lt!67308)) (zeroValue!2683 (_2!1307 lt!67308)) (minValue!2683 (_2!1307 lt!67308)) #b00000000000000000000000000000000 (defaultEntry!2824 (_2!1307 lt!67308))))))

(declare-fun lt!68112 () (_ BitVec 64))

(assert (=> b!130764 (= lt!68112 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68110 () (_ BitVec 64))

(assert (=> b!130764 (= lt!68110 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000))))

(assert (=> b!130764 (= lt!68109 (addApplyDifferent!89 lt!68103 lt!68112 (minValue!2683 (_2!1307 lt!67308)) lt!68110))))

(assert (=> b!130764 (= (apply!113 (+!167 lt!68103 (tuple2!2593 lt!68112 (minValue!2683 (_2!1307 lt!67308)))) lt!68110) (apply!113 lt!68103 lt!68110))))

(declare-fun b!130765 () Bool)

(assert (=> b!130765 (= e!85295 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (_2!1307 lt!67308))) #b00000000000000000000000000000000)))))

(declare-fun b!130766 () Bool)

(assert (=> b!130766 (= e!85288 call!14248)))

(declare-fun b!130767 () Bool)

(assert (=> b!130767 (= e!85292 (not call!14247))))

(declare-fun b!130768 () Bool)

(assert (=> b!130768 (= e!85287 (= (apply!113 lt!68106 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2683 (_2!1307 lt!67308))))))

(declare-fun b!130769 () Bool)

(assert (=> b!130769 (= e!85294 (= (apply!113 lt!68106 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2683 (_2!1307 lt!67308))))))

(declare-fun b!130770 () Bool)

(assert (=> b!130770 (= e!85298 (+!167 call!14242 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 (_2!1307 lt!67308)))))))

(declare-fun b!130771 () Bool)

(assert (=> b!130771 (= e!85297 call!14245)))

(declare-fun bm!14245 () Bool)

(assert (=> bm!14245 (= call!14245 call!14243)))

(assert (= (and d!39927 c!24150) b!130770))

(assert (= (and d!39927 (not c!24150)) b!130761))

(assert (= (and b!130761 c!24151) b!130766))

(assert (= (and b!130761 (not c!24151)) b!130763))

(assert (= (and b!130763 c!24148) b!130758))

(assert (= (and b!130763 (not c!24148)) b!130771))

(assert (= (or b!130758 b!130771) bm!14245))

(assert (= (or b!130766 bm!14245) bm!14241))

(assert (= (or b!130766 b!130758) bm!14240))

(assert (= (or b!130770 bm!14241) bm!14242))

(assert (= (or b!130770 bm!14240) bm!14239))

(assert (= (and d!39927 res!63043) b!130762))

(assert (= (and d!39927 c!24149) b!130764))

(assert (= (and d!39927 (not c!24149)) b!130756))

(assert (= (and d!39927 res!63045) b!130757))

(assert (= (and b!130757 res!63039) b!130765))

(assert (= (and b!130757 (not res!63044)) b!130759))

(assert (= (and b!130759 res!63038) b!130755))

(assert (= (and b!130757 res!63041) b!130754))

(assert (= (and b!130754 c!24152) b!130760))

(assert (= (and b!130754 (not c!24152)) b!130753))

(assert (= (and b!130760 res!63040) b!130769))

(assert (= (or b!130760 b!130753) bm!14243))

(assert (= (and b!130754 res!63046) b!130752))

(assert (= (and b!130752 c!24153) b!130751))

(assert (= (and b!130752 (not c!24153)) b!130767))

(assert (= (and b!130751 res!63042) b!130768))

(assert (= (or b!130751 b!130767) bm!14244))

(declare-fun b_lambda!5831 () Bool)

(assert (=> (not b_lambda!5831) (not b!130755)))

(declare-fun t!6150 () Bool)

(declare-fun tb!2385 () Bool)

(assert (=> (and b!129396 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 (_2!1307 lt!67308))) t!6150) tb!2385))

(declare-fun result!3937 () Bool)

(assert (=> tb!2385 (= result!3937 tp_is_empty!2859)))

(assert (=> b!130755 t!6150))

(declare-fun b_and!8117 () Bool)

(assert (= b_and!8113 (and (=> t!6150 result!3937) b_and!8117)))

(declare-fun tb!2387 () Bool)

(declare-fun t!6152 () Bool)

(assert (=> (and b!129399 (= (defaultEntry!2824 newMap!16) (defaultEntry!2824 (_2!1307 lt!67308))) t!6152) tb!2387))

(declare-fun result!3939 () Bool)

(assert (= result!3939 result!3937))

(assert (=> b!130755 t!6152))

(declare-fun b_and!8119 () Bool)

(assert (= b_and!8115 (and (=> t!6152 result!3939) b_and!8119)))

(assert (=> b!130765 m!153071))

(assert (=> b!130765 m!153071))

(assert (=> b!130765 m!153079))

(declare-fun m!154445 () Bool)

(assert (=> bm!14239 m!154445))

(assert (=> d!39927 m!154315))

(assert (=> b!130764 m!153071))

(declare-fun m!154447 () Bool)

(assert (=> b!130764 m!154447))

(declare-fun m!154449 () Bool)

(assert (=> b!130764 m!154449))

(declare-fun m!154451 () Bool)

(assert (=> b!130764 m!154451))

(declare-fun m!154453 () Bool)

(assert (=> b!130764 m!154453))

(declare-fun m!154455 () Bool)

(assert (=> b!130764 m!154455))

(assert (=> b!130764 m!154447))

(declare-fun m!154457 () Bool)

(assert (=> b!130764 m!154457))

(declare-fun m!154459 () Bool)

(assert (=> b!130764 m!154459))

(declare-fun m!154461 () Bool)

(assert (=> b!130764 m!154461))

(declare-fun m!154463 () Bool)

(assert (=> b!130764 m!154463))

(assert (=> b!130764 m!154449))

(declare-fun m!154465 () Bool)

(assert (=> b!130764 m!154465))

(declare-fun m!154467 () Bool)

(assert (=> b!130764 m!154467))

(declare-fun m!154469 () Bool)

(assert (=> b!130764 m!154469))

(declare-fun m!154471 () Bool)

(assert (=> b!130764 m!154471))

(declare-fun m!154473 () Bool)

(assert (=> b!130764 m!154473))

(declare-fun m!154475 () Bool)

(assert (=> b!130764 m!154475))

(assert (=> b!130764 m!154473))

(declare-fun m!154477 () Bool)

(assert (=> b!130764 m!154477))

(assert (=> b!130764 m!154465))

(assert (=> b!130759 m!153071))

(assert (=> b!130759 m!153071))

(declare-fun m!154479 () Bool)

(assert (=> b!130759 m!154479))

(declare-fun m!154481 () Bool)

(assert (=> bm!14243 m!154481))

(assert (=> b!130755 m!153071))

(declare-fun m!154483 () Bool)

(assert (=> b!130755 m!154483))

(declare-fun m!154485 () Bool)

(assert (=> b!130755 m!154485))

(assert (=> b!130755 m!154483))

(declare-fun m!154487 () Bool)

(assert (=> b!130755 m!154487))

(assert (=> b!130755 m!154485))

(assert (=> b!130755 m!153071))

(declare-fun m!154489 () Bool)

(assert (=> b!130755 m!154489))

(declare-fun m!154491 () Bool)

(assert (=> b!130768 m!154491))

(declare-fun m!154493 () Bool)

(assert (=> b!130769 m!154493))

(assert (=> bm!14242 m!154461))

(declare-fun m!154495 () Bool)

(assert (=> bm!14244 m!154495))

(assert (=> b!130762 m!153071))

(assert (=> b!130762 m!153071))

(assert (=> b!130762 m!153079))

(declare-fun m!154497 () Bool)

(assert (=> b!130770 m!154497))

(assert (=> d!39431 d!39927))

(assert (=> b!129737 d!39485))

(declare-fun d!39929 () Bool)

(declare-fun res!63047 () Bool)

(declare-fun e!85300 () Bool)

(assert (=> d!39929 (=> res!63047 e!85300)))

(assert (=> d!39929 (= res!63047 (= (select (arr!2242 (_keys!4565 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> d!39929 (= (arrayContainsKey!0 (_keys!4565 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!85300)))

(declare-fun b!130772 () Bool)

(declare-fun e!85301 () Bool)

(assert (=> b!130772 (= e!85300 e!85301)))

(declare-fun res!63048 () Bool)

(assert (=> b!130772 (=> (not res!63048) (not e!85301))))

(assert (=> b!130772 (= res!63048 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!130773 () Bool)

(assert (=> b!130773 (= e!85301 (arrayContainsKey!0 (_keys!4565 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!39929 (not res!63047)) b!130772))

(assert (= (and b!130772 res!63048) b!130773))

(assert (=> d!39929 m!153383))

(assert (=> b!130773 m!152209))

(declare-fun m!154499 () Bool)

(assert (=> b!130773 m!154499))

(assert (=> b!129815 d!39929))

(declare-fun d!39931 () Bool)

(assert (=> d!39931 (= (get!1472 (getValueByKey!168 (toList!865 lt!67214) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))) (v!3163 (getValueByKey!168 (toList!865 lt!67214) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (=> d!39341 d!39931))

(assert (=> d!39341 d!39711))

(declare-fun b!130792 () Bool)

(declare-fun e!85313 () Bool)

(declare-fun e!85315 () Bool)

(assert (=> b!130792 (= e!85313 e!85315)))

(declare-fun res!63057 () Bool)

(declare-fun lt!68121 () SeekEntryResult!282)

(assert (=> b!130792 (= res!63057 (and ((_ is Intermediate!282) lt!68121) (not (undefined!1094 lt!68121)) (bvslt (x!15277 lt!68121) #b01111111111111111111111111111110) (bvsge (x!15277 lt!68121) #b00000000000000000000000000000000) (bvsge (x!15277 lt!68121) #b00000000000000000000000000000000)))))

(assert (=> b!130792 (=> (not res!63057) (not e!85315))))

(declare-fun e!85314 () SeekEntryResult!282)

(declare-fun b!130793 () Bool)

(assert (=> b!130793 (= e!85314 (Intermediate!282 false (toIndex!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (mask!7102 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun b!130794 () Bool)

(assert (=> b!130794 (and (bvsge (index!3287 lt!68121) #b00000000000000000000000000000000) (bvslt (index!3287 lt!68121) (size!2508 (_keys!4565 newMap!16))))))

(declare-fun e!85312 () Bool)

(assert (=> b!130794 (= e!85312 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3287 lt!68121)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130795 () Bool)

(declare-fun e!85316 () SeekEntryResult!282)

(assert (=> b!130795 (= e!85316 e!85314)))

(declare-fun c!24161 () Bool)

(declare-fun lt!68122 () (_ BitVec 64))

(assert (=> b!130795 (= c!24161 (or (= lt!68122 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)) (= (bvadd lt!68122 lt!68122) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!130796 () Bool)

(assert (=> b!130796 (= e!85316 (Intermediate!282 true (toIndex!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (mask!7102 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun b!130797 () Bool)

(assert (=> b!130797 (and (bvsge (index!3287 lt!68121) #b00000000000000000000000000000000) (bvslt (index!3287 lt!68121) (size!2508 (_keys!4565 newMap!16))))))

(declare-fun res!63055 () Bool)

(assert (=> b!130797 (= res!63055 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3287 lt!68121)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355)))))

(assert (=> b!130797 (=> res!63055 e!85312)))

(assert (=> b!130797 (= e!85315 e!85312)))

(declare-fun b!130798 () Bool)

(assert (=> b!130798 (and (bvsge (index!3287 lt!68121) #b00000000000000000000000000000000) (bvslt (index!3287 lt!68121) (size!2508 (_keys!4565 newMap!16))))))

(declare-fun res!63056 () Bool)

(assert (=> b!130798 (= res!63056 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3287 lt!68121)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!130798 (=> res!63056 e!85312)))

(declare-fun d!39933 () Bool)

(assert (=> d!39933 e!85313))

(declare-fun c!24162 () Bool)

(assert (=> d!39933 (= c!24162 (and ((_ is Intermediate!282) lt!68121) (undefined!1094 lt!68121)))))

(assert (=> d!39933 (= lt!68121 e!85316)))

(declare-fun c!24160 () Bool)

(assert (=> d!39933 (= c!24160 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!39933 (= lt!68122 (select (arr!2242 (_keys!4565 newMap!16)) (toIndex!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (mask!7102 newMap!16))))))

(assert (=> d!39933 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39933 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (mask!7102 newMap!16)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (mask!7102 newMap!16)) lt!68121)))

(declare-fun b!130799 () Bool)

(assert (=> b!130799 (= e!85313 (bvsge (x!15277 lt!68121) #b01111111111111111111111111111110))))

(declare-fun b!130800 () Bool)

(assert (=> b!130800 (= e!85314 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (mask!7102 newMap!16)) #b00000000000000000000000000000000 (mask!7102 newMap!16)) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(assert (= (and d!39933 c!24160) b!130796))

(assert (= (and d!39933 (not c!24160)) b!130795))

(assert (= (and b!130795 c!24161) b!130793))

(assert (= (and b!130795 (not c!24161)) b!130800))

(assert (= (and d!39933 c!24162) b!130799))

(assert (= (and d!39933 (not c!24162)) b!130792))

(assert (= (and b!130792 res!63057) b!130797))

(assert (= (and b!130797 (not res!63055)) b!130798))

(assert (= (and b!130798 (not res!63056)) b!130794))

(declare-fun m!154501 () Bool)

(assert (=> b!130798 m!154501))

(assert (=> d!39933 m!152587))

(declare-fun m!154503 () Bool)

(assert (=> d!39933 m!154503))

(assert (=> d!39933 m!152393))

(assert (=> b!130800 m!152587))

(declare-fun m!154505 () Bool)

(assert (=> b!130800 m!154505))

(assert (=> b!130800 m!154505))

(assert (=> b!130800 m!152209))

(declare-fun m!154507 () Bool)

(assert (=> b!130800 m!154507))

(assert (=> b!130794 m!154501))

(assert (=> b!130797 m!154501))

(assert (=> d!39377 d!39933))

(declare-fun d!39935 () Bool)

(declare-fun lt!68128 () (_ BitVec 32))

(declare-fun lt!68127 () (_ BitVec 32))

(assert (=> d!39935 (= lt!68128 (bvmul (bvxor lt!68127 (bvlshr lt!68127 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!39935 (= lt!68127 ((_ extract 31 0) (bvand (bvxor (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (bvlshr (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!39935 (and (bvsge (mask!7102 newMap!16) #b00000000000000000000000000000000) (let ((res!63058 (let ((h!2330 ((_ extract 31 0) (bvand (bvxor (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (bvlshr (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!15381 (bvmul (bvxor h!2330 (bvlshr h!2330 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!15381 (bvlshr x!15381 #b00000000000000000000000000001101)) (mask!7102 newMap!16)))))) (and (bvslt res!63058 (bvadd (mask!7102 newMap!16) #b00000000000000000000000000000001)) (bvsge res!63058 #b00000000000000000000000000000000))))))

(assert (=> d!39935 (= (toIndex!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (mask!7102 newMap!16)) (bvand (bvxor lt!68128 (bvlshr lt!68128 #b00000000000000000000000000001101)) (mask!7102 newMap!16)))))

(assert (=> d!39377 d!39935))

(assert (=> d!39377 d!39501))

(declare-fun d!39937 () Bool)

(declare-fun e!85317 () Bool)

(assert (=> d!39937 e!85317))

(declare-fun res!63060 () Bool)

(assert (=> d!39937 (=> (not res!63060) (not e!85317))))

(declare-fun lt!68132 () ListLongMap!1699)

(assert (=> d!39937 (= res!63060 (contains!886 lt!68132 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(declare-fun lt!68131 () List!1728)

(assert (=> d!39937 (= lt!68132 (ListLongMap!1700 lt!68131))))

(declare-fun lt!68130 () Unit!4055)

(declare-fun lt!68129 () Unit!4055)

(assert (=> d!39937 (= lt!68130 lt!68129)))

(assert (=> d!39937 (= (getValueByKey!168 lt!68131 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(assert (=> d!39937 (= lt!68129 (lemmaContainsTupThenGetReturnValue!85 lt!68131 (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(assert (=> d!39937 (= lt!68131 (insertStrictlySorted!87 (toList!865 call!14109) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))) (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))))))

(assert (=> d!39937 (= (+!167 call!14109 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))) lt!68132)))

(declare-fun b!130801 () Bool)

(declare-fun res!63059 () Bool)

(assert (=> b!130801 (=> (not res!63059) (not e!85317))))

(assert (=> b!130801 (= res!63059 (= (getValueByKey!168 (toList!865 lt!68132) (_1!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16)))) (Some!173 (_2!1306 (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))))

(declare-fun b!130802 () Bool)

(assert (=> b!130802 (= e!85317 (contains!887 (toList!865 lt!68132) (tuple2!2593 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2683 newMap!16))))))

(assert (= (and d!39937 res!63060) b!130801))

(assert (= (and b!130801 res!63059) b!130802))

(declare-fun m!154509 () Bool)

(assert (=> d!39937 m!154509))

(declare-fun m!154511 () Bool)

(assert (=> d!39937 m!154511))

(declare-fun m!154513 () Bool)

(assert (=> d!39937 m!154513))

(declare-fun m!154515 () Bool)

(assert (=> d!39937 m!154515))

(declare-fun m!154517 () Bool)

(assert (=> b!130801 m!154517))

(declare-fun m!154519 () Bool)

(assert (=> b!130802 m!154519))

(assert (=> b!129742 d!39937))

(assert (=> d!39345 d!39377))

(declare-fun b!130819 () Bool)

(declare-fun e!85329 () Bool)

(declare-fun call!14254 () Bool)

(assert (=> b!130819 (= e!85329 (not call!14254))))

(declare-fun b!130820 () Bool)

(declare-fun res!63070 () Bool)

(declare-fun lt!68135 () SeekEntryResult!282)

(assert (=> b!130820 (= res!63070 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3285 lt!68135)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!85327 () Bool)

(assert (=> b!130820 (=> (not res!63070) (not e!85327))))

(declare-fun b!130821 () Bool)

(declare-fun e!85326 () Bool)

(assert (=> b!130821 (= e!85326 ((_ is Undefined!282) lt!68135))))

(declare-fun b!130822 () Bool)

(declare-fun res!63069 () Bool)

(assert (=> b!130822 (=> (not res!63069) (not e!85329))))

(assert (=> b!130822 (= res!63069 (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3288 lt!68135)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!130823 () Bool)

(declare-fun e!85328 () Bool)

(assert (=> b!130823 (= e!85328 e!85326)))

(declare-fun c!24167 () Bool)

(assert (=> b!130823 (= c!24167 ((_ is MissingVacant!282) lt!68135))))

(declare-fun b!130824 () Bool)

(assert (=> b!130824 (= e!85328 e!85327)))

(declare-fun res!63072 () Bool)

(declare-fun call!14253 () Bool)

(assert (=> b!130824 (= res!63072 call!14253)))

(assert (=> b!130824 (=> (not res!63072) (not e!85327))))

(declare-fun bm!14250 () Bool)

(declare-fun c!24168 () Bool)

(assert (=> bm!14250 (= call!14253 (inRange!0 (ite c!24168 (index!3285 lt!68135) (index!3288 lt!68135)) (mask!7102 newMap!16)))))

(declare-fun b!130825 () Bool)

(declare-fun res!63071 () Bool)

(assert (=> b!130825 (=> (not res!63071) (not e!85329))))

(assert (=> b!130825 (= res!63071 call!14253)))

(assert (=> b!130825 (= e!85326 e!85329)))

(declare-fun b!130826 () Bool)

(assert (=> b!130826 (= e!85327 (not call!14254))))

(declare-fun bm!14251 () Bool)

(assert (=> bm!14251 (= call!14254 (arrayContainsKey!0 (_keys!4565 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun d!39939 () Bool)

(assert (=> d!39939 e!85328))

(assert (=> d!39939 (= c!24168 ((_ is MissingZero!282) lt!68135))))

(assert (=> d!39939 (= lt!68135 (seekEntryOrOpen!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(assert (=> d!39939 true))

(declare-fun _$34!968 () Unit!4055)

(assert (=> d!39939 (= (choose!795 (_keys!4565 newMap!16) (_values!2807 newMap!16) (mask!7102 newMap!16) (extraKeys!2597 newMap!16) (zeroValue!2683 newMap!16) (minValue!2683 newMap!16) (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (defaultEntry!2824 newMap!16)) _$34!968)))

(assert (= (and d!39939 c!24168) b!130824))

(assert (= (and d!39939 (not c!24168)) b!130823))

(assert (= (and b!130824 res!63072) b!130820))

(assert (= (and b!130820 res!63070) b!130826))

(assert (= (and b!130823 c!24167) b!130825))

(assert (= (and b!130823 (not c!24167)) b!130821))

(assert (= (and b!130825 res!63071) b!130822))

(assert (= (and b!130822 res!63069) b!130819))

(assert (= (or b!130824 b!130825) bm!14250))

(assert (= (or b!130826 b!130819) bm!14251))

(declare-fun m!154521 () Bool)

(assert (=> b!130820 m!154521))

(assert (=> d!39939 m!152209))

(assert (=> d!39939 m!152339))

(assert (=> bm!14251 m!152209))

(assert (=> bm!14251 m!152371))

(declare-fun m!154523 () Bool)

(assert (=> b!130822 m!154523))

(declare-fun m!154525 () Bool)

(assert (=> bm!14250 m!154525))

(assert (=> d!39345 d!39939))

(assert (=> d!39345 d!39501))

(assert (=> d!39373 d!39501))

(declare-fun b!130829 () Bool)

(declare-fun e!85331 () Option!174)

(assert (=> b!130829 (= e!85331 (getValueByKey!168 (t!6139 (toList!865 lt!67453)) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130827 () Bool)

(declare-fun e!85330 () Option!174)

(assert (=> b!130827 (= e!85330 (Some!173 (_2!1306 (h!2328 (toList!865 lt!67453)))))))

(declare-fun b!130828 () Bool)

(assert (=> b!130828 (= e!85330 e!85331)))

(declare-fun c!24170 () Bool)

(assert (=> b!130828 (= c!24170 (and ((_ is Cons!1724) (toList!865 lt!67453)) (not (= (_1!1306 (h!2328 (toList!865 lt!67453))) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun b!130830 () Bool)

(assert (=> b!130830 (= e!85331 None!172)))

(declare-fun c!24169 () Bool)

(declare-fun d!39941 () Bool)

(assert (=> d!39941 (= c!24169 (and ((_ is Cons!1724) (toList!865 lt!67453)) (= (_1!1306 (h!2328 (toList!865 lt!67453))) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39941 (= (getValueByKey!168 (toList!865 lt!67453) (_1!1306 (tuple2!2593 lt!67224 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) e!85330)))

(assert (= (and d!39941 c!24169) b!130827))

(assert (= (and d!39941 (not c!24169)) b!130828))

(assert (= (and b!130828 c!24170) b!130829))

(assert (= (and b!130828 (not c!24170)) b!130830))

(declare-fun m!154527 () Bool)

(assert (=> b!130829 m!154527))

(assert (=> b!129872 d!39941))

(declare-fun d!39943 () Bool)

(declare-fun res!63073 () Bool)

(declare-fun e!85332 () Bool)

(assert (=> d!39943 (=> res!63073 e!85332)))

(assert (=> d!39943 (= res!63073 (and ((_ is Cons!1724) (toList!865 call!14102)) (= (_1!1306 (h!2328 (toList!865 call!14102))) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299))))))))

(assert (=> d!39943 (= (containsKey!172 (toList!865 call!14102) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))) e!85332)))

(declare-fun b!130831 () Bool)

(declare-fun e!85333 () Bool)

(assert (=> b!130831 (= e!85332 e!85333)))

(declare-fun res!63074 () Bool)

(assert (=> b!130831 (=> (not res!63074) (not e!85333))))

(assert (=> b!130831 (= res!63074 (and (or (not ((_ is Cons!1724) (toList!865 call!14102))) (bvsle (_1!1306 (h!2328 (toList!865 call!14102))) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299))))) ((_ is Cons!1724) (toList!865 call!14102)) (bvslt (_1!1306 (h!2328 (toList!865 call!14102))) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299))))))))

(declare-fun b!130832 () Bool)

(assert (=> b!130832 (= e!85333 (containsKey!172 (t!6139 (toList!865 call!14102)) (ite c!23846 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) from!355) (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!67299)))))))

(assert (= (and d!39943 (not res!63073)) b!130831))

(assert (= (and b!130831 res!63074) b!130832))

(declare-fun m!154529 () Bool)

(assert (=> b!130832 m!154529))

(assert (=> d!39425 d!39943))

(assert (=> b!130001 d!39339))

(declare-fun d!39945 () Bool)

(assert (=> d!39945 (arrayContainsKey!0 (_keys!4565 newMap!16) lt!67487 #b00000000000000000000000000000000)))

(declare-fun lt!68136 () Unit!4055)

(assert (=> d!39945 (= lt!68136 (choose!13 (_keys!4565 newMap!16) lt!67487 #b00000000000000000000000000000000))))

(assert (=> d!39945 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!39945 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4565 newMap!16) lt!67487 #b00000000000000000000000000000000) lt!68136)))

(declare-fun bs!5442 () Bool)

(assert (= bs!5442 d!39945))

(assert (=> bs!5442 m!152749))

(declare-fun m!154531 () Bool)

(assert (=> bs!5442 m!154531))

(assert (=> b!129908 d!39945))

(declare-fun d!39947 () Bool)

(declare-fun res!63075 () Bool)

(declare-fun e!85334 () Bool)

(assert (=> d!39947 (=> res!63075 e!85334)))

(assert (=> d!39947 (= res!63075 (= (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) lt!67487))))

(assert (=> d!39947 (= (arrayContainsKey!0 (_keys!4565 newMap!16) lt!67487 #b00000000000000000000000000000000) e!85334)))

(declare-fun b!130833 () Bool)

(declare-fun e!85335 () Bool)

(assert (=> b!130833 (= e!85334 e!85335)))

(declare-fun res!63076 () Bool)

(assert (=> b!130833 (=> (not res!63076) (not e!85335))))

(assert (=> b!130833 (= res!63076 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2508 (_keys!4565 newMap!16))))))

(declare-fun b!130834 () Bool)

(assert (=> b!130834 (= e!85335 (arrayContainsKey!0 (_keys!4565 newMap!16) lt!67487 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!39947 (not res!63075)) b!130833))

(assert (= (and b!130833 res!63076) b!130834))

(assert (=> d!39947 m!152429))

(declare-fun m!154533 () Bool)

(assert (=> b!130834 m!154533))

(assert (=> b!129908 d!39947))

(declare-fun b!130835 () Bool)

(declare-fun e!85337 () SeekEntryResult!282)

(declare-fun e!85336 () SeekEntryResult!282)

(assert (=> b!130835 (= e!85337 e!85336)))

(declare-fun lt!68138 () (_ BitVec 64))

(declare-fun lt!68137 () SeekEntryResult!282)

(assert (=> b!130835 (= lt!68138 (select (arr!2242 (_keys!4565 newMap!16)) (index!3287 lt!68137)))))

(declare-fun c!24173 () Bool)

(assert (=> b!130835 (= c!24173 (= lt!68138 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!130836 () Bool)

(assert (=> b!130836 (= e!85337 Undefined!282)))

(declare-fun b!130837 () Bool)

(declare-fun e!85338 () SeekEntryResult!282)

(assert (=> b!130837 (= e!85338 (seekKeyOrZeroReturnVacant!0 (x!15277 lt!68137) (index!3287 lt!68137) (index!3287 lt!68137) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(declare-fun b!130838 () Bool)

(assert (=> b!130838 (= e!85338 (MissingZero!282 (index!3287 lt!68137)))))

(declare-fun d!39949 () Bool)

(declare-fun lt!68139 () SeekEntryResult!282)

(assert (=> d!39949 (and (or ((_ is Undefined!282) lt!68139) (not ((_ is Found!282) lt!68139)) (and (bvsge (index!3286 lt!68139) #b00000000000000000000000000000000) (bvslt (index!3286 lt!68139) (size!2508 (_keys!4565 newMap!16))))) (or ((_ is Undefined!282) lt!68139) ((_ is Found!282) lt!68139) (not ((_ is MissingZero!282) lt!68139)) (and (bvsge (index!3285 lt!68139) #b00000000000000000000000000000000) (bvslt (index!3285 lt!68139) (size!2508 (_keys!4565 newMap!16))))) (or ((_ is Undefined!282) lt!68139) ((_ is Found!282) lt!68139) ((_ is MissingZero!282) lt!68139) (not ((_ is MissingVacant!282) lt!68139)) (and (bvsge (index!3288 lt!68139) #b00000000000000000000000000000000) (bvslt (index!3288 lt!68139) (size!2508 (_keys!4565 newMap!16))))) (or ((_ is Undefined!282) lt!68139) (ite ((_ is Found!282) lt!68139) (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3286 lt!68139)) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!282) lt!68139) (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3285 lt!68139)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!282) lt!68139) (= (select (arr!2242 (_keys!4565 newMap!16)) (index!3288 lt!68139)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!39949 (= lt!68139 e!85337)))

(declare-fun c!24172 () Bool)

(assert (=> d!39949 (= c!24172 (and ((_ is Intermediate!282) lt!68137) (undefined!1094 lt!68137)))))

(assert (=> d!39949 (= lt!68137 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) (mask!7102 newMap!16)) (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) (_keys!4565 newMap!16) (mask!7102 newMap!16)))))

(assert (=> d!39949 (validMask!0 (mask!7102 newMap!16))))

(assert (=> d!39949 (= (seekEntryOrOpen!0 (select (arr!2242 (_keys!4565 newMap!16)) #b00000000000000000000000000000000) (_keys!4565 newMap!16) (mask!7102 newMap!16)) lt!68139)))

(declare-fun b!130839 () Bool)

(declare-fun c!24171 () Bool)

(assert (=> b!130839 (= c!24171 (= lt!68138 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!130839 (= e!85336 e!85338)))

(declare-fun b!130840 () Bool)

(assert (=> b!130840 (= e!85336 (Found!282 (index!3287 lt!68137)))))

(assert (= (and d!39949 c!24172) b!130836))

(assert (= (and d!39949 (not c!24172)) b!130835))

(assert (= (and b!130835 c!24173) b!130840))

(assert (= (and b!130835 (not c!24173)) b!130839))

(assert (= (and b!130839 c!24171) b!130838))

(assert (= (and b!130839 (not c!24171)) b!130837))

(declare-fun m!154535 () Bool)

(assert (=> b!130835 m!154535))

(assert (=> b!130837 m!152429))

(declare-fun m!154537 () Bool)

(assert (=> b!130837 m!154537))

(declare-fun m!154539 () Bool)

(assert (=> d!39949 m!154539))

(assert (=> d!39949 m!152393))

(assert (=> d!39949 m!152429))

(declare-fun m!154541 () Bool)

(assert (=> d!39949 m!154541))

(declare-fun m!154543 () Bool)

(assert (=> d!39949 m!154543))

(declare-fun m!154545 () Bool)

(assert (=> d!39949 m!154545))

(assert (=> d!39949 m!154541))

(assert (=> d!39949 m!152429))

(declare-fun m!154547 () Bool)

(assert (=> d!39949 m!154547))

(assert (=> b!129908 d!39949))

(assert (=> bm!14132 d!39467))

(declare-fun d!39951 () Bool)

(declare-fun res!63077 () Bool)

(declare-fun e!85341 () Bool)

(assert (=> d!39951 (=> res!63077 e!85341)))

(assert (=> d!39951 (= res!63077 (bvsge #b00000000000000000000000000000000 (size!2508 (_keys!4565 (v!3159 (underlying!446 thiss!992))))))))

(assert (=> d!39951 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4565 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992)))) e!85341)))

(declare-fun b!130841 () Bool)

(declare-fun e!85340 () Bool)

(declare-fun e!85339 () Bool)

(assert (=> b!130841 (= e!85340 e!85339)))

(declare-fun lt!68142 () (_ BitVec 64))

(assert (=> b!130841 (= lt!68142 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!68140 () Unit!4055)

(assert (=> b!130841 (= lt!68140 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4565 (v!3159 (underlying!446 thiss!992))) lt!68142 #b00000000000000000000000000000000))))

(assert (=> b!130841 (arrayContainsKey!0 (_keys!4565 (v!3159 (underlying!446 thiss!992))) lt!68142 #b00000000000000000000000000000000)))

(declare-fun lt!68141 () Unit!4055)

(assert (=> b!130841 (= lt!68141 lt!68140)))

(declare-fun res!63078 () Bool)

(assert (=> b!130841 (= res!63078 (= (seekEntryOrOpen!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) #b00000000000000000000000000000000) (_keys!4565 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992)))) (Found!282 #b00000000000000000000000000000000)))))

(assert (=> b!130841 (=> (not res!63078) (not e!85339))))

(declare-fun b!130842 () Bool)

(declare-fun call!14255 () Bool)

(assert (=> b!130842 (= e!85339 call!14255)))

(declare-fun b!130843 () Bool)

(assert (=> b!130843 (= e!85341 e!85340)))

(declare-fun c!24174 () Bool)

(assert (=> b!130843 (= c!24174 (validKeyInArray!0 (select (arr!2242 (_keys!4565 (v!3159 (underlying!446 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun bm!14252 () Bool)

(assert (=> bm!14252 (= call!14255 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4565 (v!3159 (underlying!446 thiss!992))) (mask!7102 (v!3159 (underlying!446 thiss!992)))))))

(declare-fun b!130844 () Bool)

(assert (=> b!130844 (= e!85340 call!14255)))

(assert (= (and d!39951 (not res!63077)) b!130843))

(assert (= (and b!130843 c!24174) b!130841))

(assert (= (and b!130843 (not c!24174)) b!130844))

(assert (= (and b!130841 res!63078) b!130842))

(assert (= (or b!130842 b!130844) bm!14252))

(assert (=> b!130841 m!153333))

(declare-fun m!154549 () Bool)

(assert (=> b!130841 m!154549))

(declare-fun m!154551 () Bool)

(assert (=> b!130841 m!154551))

(assert (=> b!130841 m!153333))

(declare-fun m!154553 () Bool)

(assert (=> b!130841 m!154553))

(assert (=> b!130843 m!153333))

(assert (=> b!130843 m!153333))

(assert (=> b!130843 m!153335))

(declare-fun m!154555 () Bool)

(assert (=> bm!14252 m!154555))

(assert (=> b!130004 d!39951))

(declare-fun b!130847 () Bool)

(declare-fun e!85343 () Option!174)

(assert (=> b!130847 (= e!85343 (getValueByKey!168 (t!6139 (toList!865 lt!67460)) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))

(declare-fun b!130845 () Bool)

(declare-fun e!85342 () Option!174)

(assert (=> b!130845 (= e!85342 (Some!173 (_2!1306 (h!2328 (toList!865 lt!67460)))))))

(declare-fun b!130846 () Bool)

(assert (=> b!130846 (= e!85342 e!85343)))

(declare-fun c!24176 () Bool)

(assert (=> b!130846 (= c!24176 (and ((_ is Cons!1724) (toList!865 lt!67460)) (not (= (_1!1306 (h!2328 (toList!865 lt!67460))) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))))))))

(declare-fun b!130848 () Bool)

(assert (=> b!130848 (= e!85343 None!172)))

(declare-fun d!39953 () Bool)

(declare-fun c!24175 () Bool)

(assert (=> d!39953 (= c!24175 (and ((_ is Cons!1724) (toList!865 lt!67460)) (= (_1!1306 (h!2328 (toList!865 lt!67460))) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992))))))))))

(assert (=> d!39953 (= (getValueByKey!168 (toList!865 lt!67460) (_1!1306 (tuple2!2593 lt!67220 (minValue!2683 (v!3159 (underlying!446 thiss!992)))))) e!85342)))

(assert (= (and d!39953 c!24175) b!130845))

(assert (= (and d!39953 (not c!24175)) b!130846))

(assert (= (and b!130846 c!24176) b!130847))

(assert (= (and b!130846 (not c!24176)) b!130848))

(declare-fun m!154557 () Bool)

(assert (=> b!130847 m!154557))

(assert (=> b!129875 d!39953))

(assert (=> b!129923 d!39485))

(declare-fun mapIsEmpty!4583 () Bool)

(declare-fun mapRes!4583 () Bool)

(assert (=> mapIsEmpty!4583 mapRes!4583))

(declare-fun b!130849 () Bool)

(declare-fun e!85345 () Bool)

(assert (=> b!130849 (= e!85345 tp_is_empty!2859)))

(declare-fun condMapEmpty!4583 () Bool)

(declare-fun mapDefault!4583 () ValueCell!1086)

(assert (=> mapNonEmpty!4581 (= condMapEmpty!4583 (= mapRest!4581 ((as const (Array (_ BitVec 32) ValueCell!1086)) mapDefault!4583)))))

(declare-fun e!85344 () Bool)

(assert (=> mapNonEmpty!4581 (= tp!11097 (and e!85344 mapRes!4583))))

(declare-fun mapNonEmpty!4583 () Bool)

(declare-fun tp!11099 () Bool)

(assert (=> mapNonEmpty!4583 (= mapRes!4583 (and tp!11099 e!85345))))

(declare-fun mapValue!4583 () ValueCell!1086)

(declare-fun mapKey!4583 () (_ BitVec 32))

(declare-fun mapRest!4583 () (Array (_ BitVec 32) ValueCell!1086))

(assert (=> mapNonEmpty!4583 (= mapRest!4581 (store mapRest!4583 mapKey!4583 mapValue!4583))))

(declare-fun b!130850 () Bool)

(assert (=> b!130850 (= e!85344 tp_is_empty!2859)))

(assert (= (and mapNonEmpty!4581 condMapEmpty!4583) mapIsEmpty!4583))

(assert (= (and mapNonEmpty!4581 (not condMapEmpty!4583)) mapNonEmpty!4583))

(assert (= (and mapNonEmpty!4583 ((_ is ValueCellFull!1086) mapValue!4583)) b!130849))

(assert (= (and mapNonEmpty!4581 ((_ is ValueCellFull!1086) mapDefault!4583)) b!130850))

(declare-fun m!154559 () Bool)

(assert (=> mapNonEmpty!4583 m!154559))

(declare-fun mapIsEmpty!4584 () Bool)

(declare-fun mapRes!4584 () Bool)

(assert (=> mapIsEmpty!4584 mapRes!4584))

(declare-fun b!130851 () Bool)

(declare-fun e!85347 () Bool)

(assert (=> b!130851 (= e!85347 tp_is_empty!2859)))

(declare-fun condMapEmpty!4584 () Bool)

(declare-fun mapDefault!4584 () ValueCell!1086)

(assert (=> mapNonEmpty!4582 (= condMapEmpty!4584 (= mapRest!4582 ((as const (Array (_ BitVec 32) ValueCell!1086)) mapDefault!4584)))))

(declare-fun e!85346 () Bool)

(assert (=> mapNonEmpty!4582 (= tp!11098 (and e!85346 mapRes!4584))))

(declare-fun mapNonEmpty!4584 () Bool)

(declare-fun tp!11100 () Bool)

(assert (=> mapNonEmpty!4584 (= mapRes!4584 (and tp!11100 e!85347))))

(declare-fun mapValue!4584 () ValueCell!1086)

(declare-fun mapKey!4584 () (_ BitVec 32))

(declare-fun mapRest!4584 () (Array (_ BitVec 32) ValueCell!1086))

(assert (=> mapNonEmpty!4584 (= mapRest!4582 (store mapRest!4584 mapKey!4584 mapValue!4584))))

(declare-fun b!130852 () Bool)

(assert (=> b!130852 (= e!85346 tp_is_empty!2859)))

(assert (= (and mapNonEmpty!4582 condMapEmpty!4584) mapIsEmpty!4584))

(assert (= (and mapNonEmpty!4582 (not condMapEmpty!4584)) mapNonEmpty!4584))

(assert (= (and mapNonEmpty!4584 ((_ is ValueCellFull!1086) mapValue!4584)) b!130851))

(assert (= (and mapNonEmpty!4582 ((_ is ValueCellFull!1086) mapDefault!4584)) b!130852))

(declare-fun m!154561 () Bool)

(assert (=> mapNonEmpty!4584 m!154561))

(declare-fun b_lambda!5833 () Bool)

(assert (= b_lambda!5815 (or (and b!129396 b_free!2885 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16))) (and b!129399 b_free!2887) b_lambda!5833)))

(declare-fun b_lambda!5835 () Bool)

(assert (= b_lambda!5827 (or (and b!129396 b_free!2885 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16))) (and b!129399 b_free!2887) b_lambda!5835)))

(declare-fun b_lambda!5837 () Bool)

(assert (= b_lambda!5813 (or (and b!129396 b_free!2885 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16))) (and b!129399 b_free!2887) b_lambda!5837)))

(declare-fun b_lambda!5839 () Bool)

(assert (= b_lambda!5811 (or (and b!129396 b_free!2885 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16))) (and b!129399 b_free!2887) b_lambda!5839)))

(declare-fun b_lambda!5841 () Bool)

(assert (= b_lambda!5829 (or (and b!129396 b_free!2885 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16))) (and b!129399 b_free!2887) b_lambda!5841)))

(declare-fun b_lambda!5843 () Bool)

(assert (= b_lambda!5825 (or (and b!129396 b_free!2885 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16))) (and b!129399 b_free!2887) b_lambda!5843)))

(declare-fun b_lambda!5845 () Bool)

(assert (= b_lambda!5809 (or (and b!129396 b_free!2885 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16))) (and b!129399 b_free!2887) b_lambda!5845)))

(declare-fun b_lambda!5847 () Bool)

(assert (= b_lambda!5817 (or (and b!129396 b_free!2885) (and b!129399 b_free!2887 (= (defaultEntry!2824 newMap!16) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))))) b_lambda!5847)))

(declare-fun b_lambda!5849 () Bool)

(assert (= b_lambda!5807 (or (and b!129396 b_free!2885 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16))) (and b!129399 b_free!2887) b_lambda!5849)))

(declare-fun b_lambda!5851 () Bool)

(assert (= b_lambda!5803 (or (and b!129396 b_free!2885 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16))) (and b!129399 b_free!2887) b_lambda!5851)))

(declare-fun b_lambda!5853 () Bool)

(assert (= b_lambda!5819 (or (and b!129396 b_free!2885) (and b!129399 b_free!2887 (= (defaultEntry!2824 newMap!16) (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))))) b_lambda!5853)))

(declare-fun b_lambda!5855 () Bool)

(assert (= b_lambda!5823 (or (and b!129396 b_free!2885 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16))) (and b!129399 b_free!2887) b_lambda!5855)))

(declare-fun b_lambda!5857 () Bool)

(assert (= b_lambda!5805 (or (and b!129396 b_free!2885 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16))) (and b!129399 b_free!2887) b_lambda!5857)))

(declare-fun b_lambda!5859 () Bool)

(assert (= b_lambda!5821 (or (and b!129396 b_free!2885 (= (defaultEntry!2824 (v!3159 (underlying!446 thiss!992))) (defaultEntry!2824 newMap!16))) (and b!129399 b_free!2887) b_lambda!5859)))

(check-sat (not b!130543) (not b!130358) (not b!130166) (not d!39709) (not d!39571) (not bm!14202) (not b!130636) (not b!130251) (not b!130312) (not b!130367) (not bm!14250) (not b!130801) (not b!130239) (not b!130063) (not b_lambda!5795) (not bm!14168) (not d!39761) (not b_lambda!5845) (not b!130530) (not b!130658) (not d!39461) (not b!130649) (not b!130317) (not d!39635) (not b!130508) (not b!130243) (not b!130612) (not b!130242) (not b!130438) (not b!130360) (not b!130694) (not b!130152) (not b!130711) (not d!39689) (not b!130381) tp_is_empty!2859 (not b!130592) (not d!39555) (not b!130584) (not b!130603) (not b!130695) (not bm!14251) (not d!39937) (not b!130631) (not b!130625) (not b!130305) (not b!130832) (not b!130483) (not d!39755) (not d!39577) (not b!130681) (not b!130260) (not d!39601) (not b!130598) (not d!39527) (not b!130745) (not d!39831) (not b!130362) (not d!39657) (not b!130028) (not b!130263) (not b!130318) (not bm!14182) (not b!130410) (not d!39557) (not b_lambda!5847) (not b!130368) (not d!39673) (not b!130611) (not b!130320) (not b!130038) (not d!39727) (not b!130433) (not b!130659) (not b!130275) (not b!130457) (not d!39457) (not b!130121) (not b!130765) (not d!39469) (not b!130473) (not b!130664) (not bm!14211) (not bm!14176) (not b!130286) (not b!130147) (not d!39593) (not d!39909) (not b!130600) (not d!39725) (not bm!14229) (not d!39609) (not b!130403) (not b!130216) (not d!39791) (not d!39939) (not b!130035) (not b!130843) (not b!130435) (not b!130402) (not bm!14162) (not b!130177) (not d!39779) (not b!130759) (not d!39471) (not b!130155) (not d!39671) (not b!130521) (not b!130163) (not b!130207) (not bm!14188) (not b_lambda!5801) (not d!39479) (not b!130622) (not b!130047) (not b!130744) (not b!130264) (not b!130770) (not b!130696) (not b!130375) (not b!130112) (not b!130597) (not b!130185) (not d!39855) (not b!130051) (not b!130085) (not b!130405) (not d!39715) (not b!130356) (not b!130755) (not b!130385) (not b!130630) (not bm!14175) (not d!39863) (not b!130577) (not b!130293) (not d!39575) (not b!130365) (not d!39905) (not b!130296) (not d!39783) (not b!130704) (not b!130045) (not b!130691) (not d!39733) (not bm!14172) (not b!130551) (not b_lambda!5849) (not b!130702) (not d!39883) (not d!39483) (not d!39567) (not d!39867) (not d!39523) (not bm!14223) (not d!39543) (not d!39891) (not b_lambda!5843) (not b!130579) (not d!39551) (not b!130452) (not b!130499) (not d!39741) (not b!130308) (not bm!14197) (not d!39481) (not b!130427) (not b!130196) (not b!130015) (not b!130449) (not bm!14232) (not b!130289) (not b!130373) (not b!130355) (not b!130119) (not b!130675) (not b!130125) (not bm!14196) (not d!39797) (not b!130501) (not b!130700) (not b!130151) (not d!39535) (not d!39841) (not b!130480) (not b!130346) (not d!39489) (not d!39731) (not b!130560) b_and!8119 (not d!39919) (not b!130214) (not b!130688) (not b!130576) (not b!130040) (not b!130437) (not b!130285) (not b_lambda!5835) (not b!130732) (not b_lambda!5855) (not d!39595) (not b!130287) (not d!39923) (not b!130136) (not d!39691) (not d!39895) (not b!130291) (not d!39921) (not b!130329) (not b!130298) (not d!39655) (not b!130768) (not bm!14186) (not bm!14233) (not bm!14178) (not mapNonEmpty!4583) (not d!39515) (not b!130032) (not b!130309) (not b!130487) (not b!130252) (not bm!14244) (not b!130143) (not d!39623) (not b!130408) (not b!130248) (not b!130619) (not b!130746) (not b!130135) (not d!39565) (not bm!14227) (not d!39857) (not b!130025) (not d!39661) (not d!39819) (not b_lambda!5797) (not d!39697) (not d!39723) (not d!39833) (not d!39801) (not b!130072) (not d!39637) (not b!130639) (not d!39803) (not bm!14209) (not b_lambda!5853) (not b!130192) (not d!39573) (not bm!14163) (not b!130574) (not b!130034) (not b!130140) (not b!130847) (not d!39875) (not b!130338) (not bm!14152) (not b!130547) (not b!130398) (not b!130498) (not b_lambda!5857) (not d!39707) (not b_next!2887) (not d!39511) (not d!39659) (not d!39679) (not bm!14177) (not d!39701) (not b_lambda!5831) (not d!39787) (not b!130764) (not b!130279) (not bm!14167) (not b!130464) (not b!130020) (not bm!14189) (not b!130802) (not bm!14194) (not b!130129) (not d!39885) (not b!130555) (not d!39721) (not d!39757) (not b!130428) (not b_lambda!5859) (not b!130076) (not d!39459) (not d!39539) (not b!130685) (not b!130276) (not b!130834) (not b!130146) (not b!130432) (not b!130455) (not b!130209) (not b!130347) (not b!130412) (not b!130482) (not d!39569) (not d!39663) (not b!130199) (not d!39825) (not d!39687) (not d!39611) (not b!130233) (not bm!14236) (not d!39465) (not b!130157) (not b!130550) (not d!39889) (not bm!14252) (not b!130407) (not d!39773) (not bm!14199) (not b!130036) (not b!130149) (not b!130735) (not d!39665) (not b!130667) (not b!130079) (not b!130111) (not b!130400) (not b!130162) (not d!39563) (not d!39477) (not b!130310) (not b!130229) (not b!130031) (not d!39829) (not bm!14151) (not b!130465) (not b!130335) (not b!130301) (not d!39519) (not b!130306) (not b!130829) (not b_lambda!5799) (not d!39549) (not b!130183) (not b!130617) (not d!39525) (not d!39949) (not d!39493) (not b!130208) (not b!130181) (not d!39619) (not d!39649) (not b!130086) (not bm!14193) (not b!130676) (not b!130244) (not b!130224) (not b!130606) (not d!39945) (not b!130284) (not b!130118) (not d!39765) (not b!130029) (not b!130652) (not d!39453) (not b!130255) (not b!130558) (not b!130270) (not b!130043) (not b!130068) (not d!39817) (not b!130605) (not b_lambda!5833) (not b!130552) (not d!39815) (not b!130223) (not bm!14160) (not mapNonEmpty!4584) (not b!130637) (not b!130315) (not b!130657) (not b!130256) (not d!39775) (not b!130236) (not b!130651) (not b_next!2885) (not b!130526) (not d!39777) (not b!130349) (not d!39545) (not b!130139) (not b!130030) (not b!130178) (not b!130021) (not b!130425) (not b!130257) (not b!130272) (not d!39859) (not b_lambda!5841) (not d!39927) (not d!39491) (not b!130057) (not b!130590) (not b!130477) (not b!130161) (not d!39597) (not d!39903) (not b!130218) (not d!39881) (not b!130221) (not d!39475) (not b_lambda!5839) (not b!130572) (not b!130548) (not b!130531) (not d!39455) (not d!39835) (not d!39683) (not b!130277) (not b!130442) (not b!130506) (not b!130074) (not b!130712) (not b!130113) (not bm!14237) (not b_lambda!5837) (not bm!14220) (not d!39509) (not d!39699) (not bm!14183) (not b!130304) (not b!130536) (not d!39631) (not b!130059) (not b!130344) (not bm!14225) (not b!130387) (not b!130666) (not b!130124) (not b!130069) (not b!130202) (not d!39553) (not b!130281) (not b!130568) (not b!130532) (not bm!14210) (not b!130127) (not b!130632) (not b!130359) (not bm!14214) (not b!130390) (not d!39933) (not b!130539) (not b!130738) (not d!39739) (not b!130274) (not b!130406) (not b!130394) (not d!39613) (not bm!14203) (not b!130642) (not b!130159) (not b!130517) (not d!39681) (not b!130737) (not b!130773) (not b!130585) (not b!130462) (not d!39887) (not bm!14243) (not b!130374) (not bm!14181) (not d!39559) (not b!130527) (not d!39813) (not d!39541) (not b!130646) (not d!39531) (not b!130122) (not b!130325) (not b!130448) (not b!130313) (not b!130841) (not bm!14204) (not b!130354) (not b_lambda!5777) (not b!130339) (not b!130170) (not b!130769) (not b!130837) (not b!130613) (not b!130422) (not b!130141) (not b!130016) (not b!130750) (not b!130742) (not d!39865) (not d!39719) (not b!130747) (not b!130431) (not b!130418) (not b!130066) (not b!130314) (not d!39473) (not b!130553) (not d!39497) (not b!130503) (not b!130148) (not d!39789) (not b!130253) (not b!130340) (not bm!14242) (not d!39915) (not d!39899) (not b!130731) (not bm!14217) (not bm!14206) (not b!130561) (not d!39667) (not b!130567) (not d!39713) (not b_lambda!5793) (not b!130800) (not b!130160) (not b!130727) (not bm!14173) (not b!130039) (not b!130055) (not b!130409) (not d!39677) (not b!130644) (not b!130762) (not b!130238) (not d!39911) (not d!39583) (not b!130643) (not bm!14238) (not b!130219) (not b!130201) (not d!39629) (not d!39767) (not bm!14198) (not d!39897) (not b!130247) (not b!130295) (not d!39893) (not bm!14165) (not b!130673) (not b!130566) (not d!39753) (not d!39685) (not d!39547) (not b!130194) (not d!39669) (not b!130524) (not d!39849) (not b!130591) (not bm!14239) (not b!130486) (not d!39703) (not b!130048) (not d!39633) (not b!130026) (not b!130698) (not bm!14171) (not b!130511) (not b!130156) (not d!39513) (not b!130332) b_and!8117 (not b!130582) (not b!130690) (not d!39507) (not d!39847) (not b!130468) (not d!39717) (not d!39693) (not b_lambda!5851) (not d!39467) (not b!130186) (not b!130534) (not d!39585) (not b!130357) (not d!39877) (not bm!14234) (not b!130120) (not d!39651) (not b!130334) (not bm!14192) (not b!130024) (not d!39675) (not b!130488) (not b!130624) (not d!39617) (not d!39581) (not d!39621) (not b!130300) (not b!130137) (not b!130638) (not d!39851) (not b!130710) (not b_lambda!5781) (not d!39561) (not d!39845) (not d!39463) (not b!130316) (not b!130383) (not d!39705) (not b!130278) (not b!130545))
(check-sat b_and!8117 b_and!8119 (not b_next!2885) (not b_next!2887))
