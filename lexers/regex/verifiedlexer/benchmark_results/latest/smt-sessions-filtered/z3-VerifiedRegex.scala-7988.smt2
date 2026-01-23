; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414094 () Bool)

(assert start!414094)

(declare-fun b!4309398 () Bool)

(declare-fun b_free!128587 () Bool)

(declare-fun b_next!129291 () Bool)

(assert (=> b!4309398 (= b_free!128587 (not b_next!129291))))

(declare-fun tp!1324373 () Bool)

(declare-fun b_and!340003 () Bool)

(assert (=> b!4309398 (= tp!1324373 b_and!340003)))

(declare-fun b!4309395 () Bool)

(declare-fun b_free!128589 () Bool)

(declare-fun b_next!129293 () Bool)

(assert (=> b!4309395 (= b_free!128589 (not b_next!129293))))

(declare-fun tp!1324372 () Bool)

(declare-fun b_and!340005 () Bool)

(assert (=> b!4309395 (= tp!1324372 b_and!340005)))

(declare-fun b!4309413 () Bool)

(declare-fun e!2680017 () Bool)

(declare-fun e!2680015 () Bool)

(assert (=> b!4309413 (= e!2680017 e!2680015)))

(declare-fun b!4309414 () Bool)

(declare-fun e!2680014 () Bool)

(declare-fun e!2680018 () Bool)

(assert (=> b!4309414 (= e!2680014 e!2680018)))

(declare-fun b!4309415 () Bool)

(declare-fun e!2680016 () Bool)

(assert (=> b!4309415 (= e!2680015 e!2680016)))

(declare-fun b!4309416 () Bool)

(declare-datatypes ((V!9591 0))(
  ( (V!9592 (val!15769 Int)) )
))
(declare-datatypes ((K!9389 0))(
  ( (K!9390 (val!15770 Int)) )
))
(declare-datatypes ((tuple2!46610 0))(
  ( (tuple2!46611 (_1!26584 K!9389) (_2!26584 V!9591)) )
))
(declare-datatypes ((List!48310 0))(
  ( (Nil!48186) (Cons!48186 (h!53620 tuple2!46610) (t!355111 List!48310)) )
))
(declare-datatypes ((array!16786 0))(
  ( (array!16787 (arr!7499 (Array (_ BitVec 32) (_ BitVec 64))) (size!35538 (_ BitVec 32))) )
))
(declare-datatypes ((array!16788 0))(
  ( (array!16789 (arr!7500 (Array (_ BitVec 32) List!48310)) (size!35539 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9314 0))(
  ( (LongMapFixedSize!9315 (defaultEntry!5042 Int) (mask!13214 (_ BitVec 32)) (extraKeys!4906 (_ BitVec 32)) (zeroValue!4916 List!48310) (minValue!4916 List!48310) (_size!9357 (_ BitVec 32)) (_keys!4957 array!16786) (_values!4938 array!16788) (_vacant!4718 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18437 0))(
  ( (Cell!18438 (v!42309 LongMapFixedSize!9314)) )
))
(declare-datatypes ((MutLongMap!4657 0))(
  ( (LongMap!4657 (underlying!9543 Cell!18437)) (MutLongMapExt!4656 (__x!29996 Int)) )
))
(declare-fun lt!1530252 () MutLongMap!4657)

(get-info :version)

(assert (=> b!4309416 (= e!2680018 (and e!2680017 ((_ is LongMap!4657) lt!1530252)))))

(declare-datatypes ((Hashable!4573 0))(
  ( (HashableExt!4572 (__x!29997 Int)) )
))
(declare-datatypes ((Cell!18439 0))(
  ( (Cell!18440 (v!42310 MutLongMap!4657)) )
))
(declare-datatypes ((MutableMap!4563 0))(
  ( (MutableMapExt!4562 (__x!29998 Int)) (HashMap!4563 (underlying!9544 Cell!18439) (hashF!6689 Hashable!4573) (_size!9358 (_ BitVec 32)) (defaultValue!4734 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4563)

(assert (=> b!4309416 (= lt!1530252 (v!42310 (underlying!9544 thiss!42308)))))

(declare-fun b!4309399 () Bool)

(assert (=> b!4309399 e!2680014))

(declare-fun b!4309417 () Bool)

(assert (=> b!4309417 (= e!2680016 true)))

(assert (= b!4309415 b!4309417))

(assert (= b!4309413 b!4309415))

(assert (= (and b!4309416 ((_ is LongMap!4657) (v!42310 (underlying!9544 thiss!42308)))) b!4309413))

(assert (= b!4309414 b!4309416))

(assert (= (and b!4309399 ((_ is HashMap!4563) thiss!42308)) b!4309414))

(declare-fun lambda!132876 () Int)

(declare-fun order!25097 () Int)

(declare-fun order!25099 () Int)

(declare-fun dynLambda!20425 (Int Int) Int)

(declare-fun dynLambda!20426 (Int Int) Int)

(assert (=> b!4309417 (< (dynLambda!20425 order!25097 (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) (dynLambda!20426 order!25099 lambda!132876))))

(declare-fun order!25101 () Int)

(declare-fun dynLambda!20427 (Int Int) Int)

(assert (=> b!4309414 (< (dynLambda!20427 order!25101 (defaultValue!4734 thiss!42308)) (dynLambda!20426 order!25099 lambda!132876))))

(declare-fun res!1766222 () Bool)

(declare-fun e!2680000 () Bool)

(assert (=> start!414094 (=> (not res!1766222) (not e!2680000))))

(assert (=> start!414094 (= res!1766222 ((_ is HashMap!4563) thiss!42308))))

(assert (=> start!414094 e!2680000))

(declare-fun e!2679994 () Bool)

(assert (=> start!414094 e!2679994))

(declare-fun tp_is_empty!23733 () Bool)

(assert (=> start!414094 tp_is_empty!23733))

(declare-fun tp_is_empty!23735 () Bool)

(assert (=> start!414094 tp_is_empty!23735))

(declare-fun b!4309391 () Bool)

(declare-fun res!1766220 () Bool)

(assert (=> b!4309391 (=> (not res!1766220) (not e!2680000))))

(declare-fun valid!3645 (MutableMap!4563) Bool)

(assert (=> b!4309391 (= res!1766220 (valid!3645 thiss!42308))))

(declare-fun b!4309392 () Bool)

(declare-fun e!2679995 () Bool)

(declare-fun e!2679997 () Bool)

(assert (=> b!4309392 (= e!2679995 e!2679997)))

(declare-fun b!4309393 () Bool)

(declare-fun e!2679998 () Bool)

(assert (=> b!4309393 (= e!2680000 e!2679998)))

(declare-fun res!1766223 () Bool)

(assert (=> b!4309393 (=> (not res!1766223) (not e!2679998))))

(declare-fun key!2048 () K!9389)

(declare-fun contains!10155 (MutableMap!4563 K!9389) Bool)

(assert (=> b!4309393 (= res!1766223 (contains!10155 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46612 0))(
  ( (tuple2!46613 (_1!26585 (_ BitVec 64)) (_2!26585 List!48310)) )
))
(declare-datatypes ((List!48311 0))(
  ( (Nil!48187) (Cons!48187 (h!53621 tuple2!46612) (t!355112 List!48311)) )
))
(declare-datatypes ((ListLongMap!1007 0))(
  ( (ListLongMap!1008 (toList!2395 List!48311)) )
))
(declare-fun lt!1530249 () ListLongMap!1007)

(declare-fun map!10174 (MutLongMap!4657) ListLongMap!1007)

(assert (=> b!4309393 (= lt!1530249 (map!10174 (v!42310 (underlying!9544 thiss!42308))))))

(declare-datatypes ((ListMap!1677 0))(
  ( (ListMap!1678 (toList!2396 List!48310)) )
))
(declare-fun lt!1530247 () ListMap!1677)

(declare-fun map!10175 (MutableMap!4563) ListMap!1677)

(assert (=> b!4309393 (= lt!1530247 (map!10175 thiss!42308))))

(declare-fun b!4309394 () Bool)

(declare-fun e!2680003 () Bool)

(declare-fun tp!1324376 () Bool)

(declare-fun mapRes!20797 () Bool)

(assert (=> b!4309394 (= e!2680003 (and tp!1324376 mapRes!20797))))

(declare-fun condMapEmpty!20797 () Bool)

(declare-fun mapDefault!20797 () List!48310)

(assert (=> b!4309394 (= condMapEmpty!20797 (= (arr!7500 (_values!4938 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48310)) mapDefault!20797)))))

(declare-fun e!2680001 () Bool)

(assert (=> b!4309395 (= e!2679994 (and e!2680001 tp!1324372))))

(declare-fun b!4309396 () Bool)

(declare-fun e!2679996 () Bool)

(assert (=> b!4309396 (= e!2679996 e!2679995)))

(declare-fun mapNonEmpty!20797 () Bool)

(declare-fun tp!1324375 () Bool)

(declare-fun tp!1324371 () Bool)

(assert (=> mapNonEmpty!20797 (= mapRes!20797 (and tp!1324375 tp!1324371))))

(declare-fun mapKey!20797 () (_ BitVec 32))

(declare-fun mapRest!20797 () (Array (_ BitVec 32) List!48310))

(declare-fun mapValue!20797 () List!48310)

(assert (=> mapNonEmpty!20797 (= (arr!7500 (_values!4938 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) (store mapRest!20797 mapKey!20797 mapValue!20797))))

(declare-fun b!4309397 () Bool)

(declare-fun e!2679999 () Bool)

(assert (=> b!4309397 (= e!2679998 e!2679999)))

(declare-fun res!1766221 () Bool)

(assert (=> b!4309397 (=> (not res!1766221) (not e!2679999))))

(declare-fun lt!1530248 () (_ BitVec 64))

(declare-fun v!9179 () V!9591)

(declare-datatypes ((tuple2!46614 0))(
  ( (tuple2!46615 (_1!26586 Bool) (_2!26586 MutLongMap!4657)) )
))
(declare-fun update!431 (MutLongMap!4657 (_ BitVec 64) List!48310) tuple2!46614)

(declare-fun removePairForKey!209 (List!48310 K!9389) List!48310)

(declare-fun apply!11008 (MutLongMap!4657 (_ BitVec 64)) List!48310)

(assert (=> b!4309397 (= res!1766221 (_1!26586 (update!431 (v!42310 (underlying!9544 thiss!42308)) lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048)))))))

(declare-fun hash!1001 (Hashable!4573 K!9389) (_ BitVec 64))

(assert (=> b!4309397 (= lt!1530248 (hash!1001 (hashF!6689 thiss!42308) key!2048))))

(declare-fun mapIsEmpty!20797 () Bool)

(assert (=> mapIsEmpty!20797 mapRes!20797))

(declare-fun tp!1324370 () Bool)

(declare-fun tp!1324374 () Bool)

(declare-fun array_inv!5379 (array!16786) Bool)

(declare-fun array_inv!5380 (array!16788) Bool)

(assert (=> b!4309398 (= e!2679997 (and tp!1324373 tp!1324370 tp!1324374 (array_inv!5379 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) (array_inv!5380 (_values!4938 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) e!2680003))))

(declare-fun forall!8726 (List!48311 Int) Bool)

(assert (=> b!4309399 (= e!2679999 (not (forall!8726 (toList!2395 lt!1530249) lambda!132876)))))

(declare-fun b!4309400 () Bool)

(declare-fun lt!1530246 () MutLongMap!4657)

(assert (=> b!4309400 (= e!2680001 (and e!2679996 ((_ is LongMap!4657) lt!1530246)))))

(assert (=> b!4309400 (= lt!1530246 (v!42310 (underlying!9544 thiss!42308)))))

(assert (= (and start!414094 res!1766222) b!4309391))

(assert (= (and b!4309391 res!1766220) b!4309393))

(assert (= (and b!4309393 res!1766223) b!4309397))

(assert (= (and b!4309397 res!1766221) b!4309399))

(assert (= (and b!4309394 condMapEmpty!20797) mapIsEmpty!20797))

(assert (= (and b!4309394 (not condMapEmpty!20797)) mapNonEmpty!20797))

(assert (= b!4309398 b!4309394))

(assert (= b!4309392 b!4309398))

(assert (= b!4309396 b!4309392))

(assert (= (and b!4309400 ((_ is LongMap!4657) (v!42310 (underlying!9544 thiss!42308)))) b!4309396))

(assert (= b!4309395 b!4309400))

(assert (= (and start!414094 ((_ is HashMap!4563) thiss!42308)) b!4309395))

(declare-fun m!4902441 () Bool)

(assert (=> b!4309393 m!4902441))

(declare-fun m!4902443 () Bool)

(assert (=> b!4309393 m!4902443))

(declare-fun m!4902445 () Bool)

(assert (=> b!4309393 m!4902445))

(declare-fun m!4902447 () Bool)

(assert (=> mapNonEmpty!20797 m!4902447))

(declare-fun m!4902449 () Bool)

(assert (=> b!4309391 m!4902449))

(declare-fun m!4902451 () Bool)

(assert (=> b!4309399 m!4902451))

(declare-fun m!4902453 () Bool)

(assert (=> b!4309397 m!4902453))

(assert (=> b!4309397 m!4902453))

(declare-fun m!4902455 () Bool)

(assert (=> b!4309397 m!4902455))

(declare-fun m!4902457 () Bool)

(assert (=> b!4309397 m!4902457))

(declare-fun m!4902459 () Bool)

(assert (=> b!4309397 m!4902459))

(declare-fun m!4902461 () Bool)

(assert (=> b!4309398 m!4902461))

(declare-fun m!4902463 () Bool)

(assert (=> b!4309398 m!4902463))

(check-sat (not b!4309397) (not b_next!129291) tp_is_empty!23733 (not b!4309399) (not b!4309398) (not b!4309393) (not b!4309391) b_and!340005 tp_is_empty!23735 (not mapNonEmpty!20797) (not b!4309394) b_and!340003 (not b_next!129293))
(check-sat b_and!340003 b_and!340005 (not b_next!129293) (not b_next!129291))
(get-model)

(declare-fun d!1267875 () Bool)

(declare-fun res!1766228 () Bool)

(declare-fun e!2680023 () Bool)

(assert (=> d!1267875 (=> res!1766228 e!2680023)))

(assert (=> d!1267875 (= res!1766228 ((_ is Nil!48187) (toList!2395 lt!1530249)))))

(assert (=> d!1267875 (= (forall!8726 (toList!2395 lt!1530249) lambda!132876) e!2680023)))

(declare-fun b!4309422 () Bool)

(declare-fun e!2680024 () Bool)

(assert (=> b!4309422 (= e!2680023 e!2680024)))

(declare-fun res!1766229 () Bool)

(assert (=> b!4309422 (=> (not res!1766229) (not e!2680024))))

(declare-fun dynLambda!20428 (Int tuple2!46612) Bool)

(assert (=> b!4309422 (= res!1766229 (dynLambda!20428 lambda!132876 (h!53621 (toList!2395 lt!1530249))))))

(declare-fun b!4309423 () Bool)

(assert (=> b!4309423 (= e!2680024 (forall!8726 (t!355112 (toList!2395 lt!1530249)) lambda!132876))))

(assert (= (and d!1267875 (not res!1766228)) b!4309422))

(assert (= (and b!4309422 res!1766229) b!4309423))

(declare-fun b_lambda!126587 () Bool)

(assert (=> (not b_lambda!126587) (not b!4309422)))

(declare-fun m!4902465 () Bool)

(assert (=> b!4309422 m!4902465))

(declare-fun m!4902467 () Bool)

(assert (=> b!4309423 m!4902467))

(assert (=> b!4309399 d!1267875))

(declare-fun bs!604988 () Bool)

(declare-fun b!4309428 () Bool)

(assert (= bs!604988 (and b!4309428 b!4309399)))

(declare-fun lambda!132879 () Int)

(assert (=> bs!604988 (not (= lambda!132879 lambda!132876))))

(declare-fun d!1267877 () Bool)

(declare-fun res!1766234 () Bool)

(declare-fun e!2680027 () Bool)

(assert (=> d!1267877 (=> (not res!1766234) (not e!2680027))))

(declare-fun valid!3646 (MutLongMap!4657) Bool)

(assert (=> d!1267877 (= res!1766234 (valid!3646 (v!42310 (underlying!9544 thiss!42308))))))

(assert (=> d!1267877 (= (valid!3645 thiss!42308) e!2680027)))

(declare-fun res!1766235 () Bool)

(assert (=> b!4309428 (=> (not res!1766235) (not e!2680027))))

(assert (=> b!4309428 (= res!1766235 (forall!8726 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) lambda!132879))))

(declare-fun b!4309429 () Bool)

(declare-fun allKeysSameHashInMap!334 (ListLongMap!1007 Hashable!4573) Bool)

(assert (=> b!4309429 (= e!2680027 (allKeysSameHashInMap!334 (map!10174 (v!42310 (underlying!9544 thiss!42308))) (hashF!6689 thiss!42308)))))

(assert (= (and d!1267877 res!1766234) b!4309428))

(assert (= (and b!4309428 res!1766235) b!4309429))

(declare-fun m!4902469 () Bool)

(assert (=> d!1267877 m!4902469))

(assert (=> b!4309428 m!4902443))

(declare-fun m!4902471 () Bool)

(assert (=> b!4309428 m!4902471))

(assert (=> b!4309429 m!4902443))

(assert (=> b!4309429 m!4902443))

(declare-fun m!4902473 () Bool)

(assert (=> b!4309429 m!4902473))

(assert (=> b!4309391 d!1267877))

(declare-fun b!4309448 () Bool)

(declare-fun e!2680039 () tuple2!46614)

(declare-fun lt!1530261 () tuple2!46614)

(assert (=> b!4309448 (= e!2680039 (tuple2!46615 (_1!26586 lt!1530261) (_2!26586 lt!1530261)))))

(declare-fun repack!53 (MutLongMap!4657) tuple2!46614)

(assert (=> b!4309448 (= lt!1530261 (repack!53 (v!42310 (underlying!9544 thiss!42308))))))

(declare-fun bm!297773 () Bool)

(declare-fun call!297778 () ListLongMap!1007)

(assert (=> bm!297773 (= call!297778 (map!10174 (v!42310 (underlying!9544 thiss!42308))))))

(declare-fun e!2680041 () Bool)

(declare-fun b!4309449 () Bool)

(declare-fun call!297779 () ListLongMap!1007)

(declare-fun +!266 (ListLongMap!1007 tuple2!46612) ListLongMap!1007)

(assert (=> b!4309449 (= e!2680041 (= call!297779 (+!266 call!297778 (tuple2!46613 lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))))))))

(declare-fun d!1267879 () Bool)

(declare-fun e!2680042 () Bool)

(assert (=> d!1267879 e!2680042))

(declare-fun res!1766244 () Bool)

(assert (=> d!1267879 (=> (not res!1766244) (not e!2680042))))

(declare-fun lt!1530262 () tuple2!46614)

(assert (=> d!1267879 (= res!1766244 ((_ is LongMap!4657) (_2!26586 lt!1530262)))))

(declare-fun e!2680038 () tuple2!46614)

(assert (=> d!1267879 (= lt!1530262 e!2680038)))

(declare-fun c!732655 () Bool)

(declare-fun lt!1530263 () tuple2!46614)

(assert (=> d!1267879 (= c!732655 (_1!26586 lt!1530263))))

(assert (=> d!1267879 (= lt!1530263 e!2680039)))

(declare-fun c!732657 () Bool)

(declare-fun imbalanced!49 (MutLongMap!4657) Bool)

(assert (=> d!1267879 (= c!732657 (imbalanced!49 (v!42310 (underlying!9544 thiss!42308))))))

(assert (=> d!1267879 (valid!3646 (v!42310 (underlying!9544 thiss!42308)))))

(assert (=> d!1267879 (= (update!431 (v!42310 (underlying!9544 thiss!42308)) lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))) lt!1530262)))

(declare-fun b!4309450 () Bool)

(declare-datatypes ((tuple2!46616 0))(
  ( (tuple2!46617 (_1!26587 Bool) (_2!26587 LongMapFixedSize!9314)) )
))
(declare-fun lt!1530264 () tuple2!46616)

(assert (=> b!4309450 (= e!2680038 (tuple2!46615 (_1!26587 lt!1530264) (LongMap!4657 (Cell!18438 (_2!26587 lt!1530264)))))))

(declare-fun update!432 (LongMapFixedSize!9314 (_ BitVec 64) List!48310) tuple2!46616)

(assert (=> b!4309450 (= lt!1530264 (update!432 (v!42309 (underlying!9543 (_2!26586 lt!1530263))) lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))))))

(declare-fun b!4309451 () Bool)

(assert (=> b!4309451 (= e!2680038 (tuple2!46615 false (_2!26586 lt!1530263)))))

(declare-fun b!4309452 () Bool)

(declare-fun e!2680040 () Bool)

(assert (=> b!4309452 (= e!2680042 e!2680040)))

(declare-fun c!732656 () Bool)

(assert (=> b!4309452 (= c!732656 (_1!26586 lt!1530262))))

(declare-fun b!4309453 () Bool)

(assert (=> b!4309453 (= e!2680040 (= call!297779 call!297778))))

(declare-fun b!4309454 () Bool)

(assert (=> b!4309454 (= e!2680039 (tuple2!46615 true (v!42310 (underlying!9544 thiss!42308))))))

(declare-fun bm!297774 () Bool)

(assert (=> bm!297774 (= call!297779 (map!10174 (_2!26586 lt!1530262)))))

(declare-fun b!4309455 () Bool)

(declare-fun res!1766242 () Bool)

(assert (=> b!4309455 (=> (not res!1766242) (not e!2680042))))

(assert (=> b!4309455 (= res!1766242 (valid!3646 (_2!26586 lt!1530262)))))

(declare-fun b!4309456 () Bool)

(assert (=> b!4309456 (= e!2680040 e!2680041)))

(declare-fun res!1766243 () Bool)

(declare-fun contains!10156 (ListLongMap!1007 (_ BitVec 64)) Bool)

(assert (=> b!4309456 (= res!1766243 (contains!10156 call!297779 lt!1530248))))

(assert (=> b!4309456 (=> (not res!1766243) (not e!2680041))))

(assert (= (and d!1267879 c!732657) b!4309448))

(assert (= (and d!1267879 (not c!732657)) b!4309454))

(assert (= (and d!1267879 c!732655) b!4309450))

(assert (= (and d!1267879 (not c!732655)) b!4309451))

(assert (= (and d!1267879 res!1766244) b!4309455))

(assert (= (and b!4309455 res!1766242) b!4309452))

(assert (= (and b!4309452 c!732656) b!4309456))

(assert (= (and b!4309452 (not c!732656)) b!4309453))

(assert (= (and b!4309456 res!1766243) b!4309449))

(assert (= (or b!4309456 b!4309449 b!4309453) bm!297774))

(assert (= (or b!4309449 b!4309453) bm!297773))

(declare-fun m!4902475 () Bool)

(assert (=> b!4309450 m!4902475))

(declare-fun m!4902477 () Bool)

(assert (=> b!4309455 m!4902477))

(declare-fun m!4902479 () Bool)

(assert (=> b!4309449 m!4902479))

(assert (=> bm!297773 m!4902443))

(declare-fun m!4902481 () Bool)

(assert (=> b!4309456 m!4902481))

(declare-fun m!4902483 () Bool)

(assert (=> b!4309448 m!4902483))

(declare-fun m!4902485 () Bool)

(assert (=> d!1267879 m!4902485))

(assert (=> d!1267879 m!4902469))

(declare-fun m!4902487 () Bool)

(assert (=> bm!297774 m!4902487))

(assert (=> b!4309397 d!1267879))

(declare-fun d!1267881 () Bool)

(declare-fun lt!1530267 () List!48310)

(declare-fun containsKey!307 (List!48310 K!9389) Bool)

(assert (=> d!1267881 (not (containsKey!307 lt!1530267 key!2048))))

(declare-fun e!2680047 () List!48310)

(assert (=> d!1267881 (= lt!1530267 e!2680047)))

(declare-fun c!732662 () Bool)

(assert (=> d!1267881 (= c!732662 (and ((_ is Cons!48186) (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248)) (= (_1!26584 (h!53620 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248))) key!2048)))))

(declare-fun noDuplicateKeys!208 (List!48310) Bool)

(assert (=> d!1267881 (noDuplicateKeys!208 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248))))

(assert (=> d!1267881 (= (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048) lt!1530267)))

(declare-fun b!4309468 () Bool)

(declare-fun e!2680048 () List!48310)

(assert (=> b!4309468 (= e!2680048 Nil!48186)))

(declare-fun b!4309465 () Bool)

(assert (=> b!4309465 (= e!2680047 (t!355111 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248)))))

(declare-fun b!4309466 () Bool)

(assert (=> b!4309466 (= e!2680047 e!2680048)))

(declare-fun c!732663 () Bool)

(assert (=> b!4309466 (= c!732663 ((_ is Cons!48186) (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248)))))

(declare-fun b!4309467 () Bool)

(assert (=> b!4309467 (= e!2680048 (Cons!48186 (h!53620 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248)) (removePairForKey!209 (t!355111 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248)) key!2048)))))

(assert (= (and d!1267881 c!732662) b!4309465))

(assert (= (and d!1267881 (not c!732662)) b!4309466))

(assert (= (and b!4309466 c!732663) b!4309467))

(assert (= (and b!4309466 (not c!732663)) b!4309468))

(declare-fun m!4902489 () Bool)

(assert (=> d!1267881 m!4902489))

(assert (=> d!1267881 m!4902453))

(declare-fun m!4902491 () Bool)

(assert (=> d!1267881 m!4902491))

(declare-fun m!4902493 () Bool)

(assert (=> b!4309467 m!4902493))

(assert (=> b!4309397 d!1267881))

(declare-fun d!1267883 () Bool)

(declare-fun e!2680051 () Bool)

(assert (=> d!1267883 e!2680051))

(declare-fun c!732666 () Bool)

(declare-fun contains!10157 (MutLongMap!4657 (_ BitVec 64)) Bool)

(assert (=> d!1267883 (= c!732666 (contains!10157 (v!42310 (underlying!9544 thiss!42308)) lt!1530248))))

(declare-fun lt!1530270 () List!48310)

(declare-fun apply!11009 (LongMapFixedSize!9314 (_ BitVec 64)) List!48310)

(assert (=> d!1267883 (= lt!1530270 (apply!11009 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))) lt!1530248))))

(assert (=> d!1267883 (valid!3646 (v!42310 (underlying!9544 thiss!42308)))))

(assert (=> d!1267883 (= (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) lt!1530270)))

(declare-fun b!4309473 () Bool)

(declare-datatypes ((Option!10224 0))(
  ( (None!10223) (Some!10223 (v!42315 List!48310)) )
))
(declare-fun get!15589 (Option!10224) List!48310)

(declare-fun getValueByKey!252 (List!48311 (_ BitVec 64)) Option!10224)

(assert (=> b!4309473 (= e!2680051 (= lt!1530270 (get!15589 (getValueByKey!252 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) lt!1530248))))))

(declare-fun b!4309474 () Bool)

(declare-fun dynLambda!20429 (Int (_ BitVec 64)) List!48310)

(assert (=> b!4309474 (= e!2680051 (= lt!1530270 (dynLambda!20429 (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) lt!1530248)))))

(assert (=> b!4309474 ((_ is LongMap!4657) (v!42310 (underlying!9544 thiss!42308)))))

(assert (= (and d!1267883 c!732666) b!4309473))

(assert (= (and d!1267883 (not c!732666)) b!4309474))

(declare-fun b_lambda!126589 () Bool)

(assert (=> (not b_lambda!126589) (not b!4309474)))

(declare-fun t!355114 () Bool)

(declare-fun tb!257287 () Bool)

(assert (=> (and b!4309398 (= (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) t!355114) tb!257287))

(assert (=> b!4309474 t!355114))

(declare-fun result!314676 () Bool)

(declare-fun b_and!340007 () Bool)

(assert (= b_and!340003 (and (=> t!355114 result!314676) b_and!340007)))

(declare-fun m!4902495 () Bool)

(assert (=> d!1267883 m!4902495))

(declare-fun m!4902497 () Bool)

(assert (=> d!1267883 m!4902497))

(assert (=> d!1267883 m!4902469))

(assert (=> b!4309473 m!4902443))

(declare-fun m!4902499 () Bool)

(assert (=> b!4309473 m!4902499))

(assert (=> b!4309473 m!4902499))

(declare-fun m!4902501 () Bool)

(assert (=> b!4309473 m!4902501))

(declare-fun m!4902503 () Bool)

(assert (=> b!4309474 m!4902503))

(assert (=> b!4309397 d!1267883))

(declare-fun d!1267885 () Bool)

(declare-fun hash!1002 (Hashable!4573 K!9389) (_ BitVec 64))

(assert (=> d!1267885 (= (hash!1001 (hashF!6689 thiss!42308) key!2048) (hash!1002 (hashF!6689 thiss!42308) key!2048))))

(declare-fun bs!604989 () Bool)

(assert (= bs!604989 d!1267885))

(declare-fun m!4902505 () Bool)

(assert (=> bs!604989 m!4902505))

(assert (=> b!4309397 d!1267885))

(declare-fun bs!604990 () Bool)

(declare-fun b!4309502 () Bool)

(assert (= bs!604990 (and b!4309502 b!4309399)))

(declare-fun lambda!132882 () Int)

(assert (=> bs!604990 (not (= lambda!132882 lambda!132876))))

(declare-fun bs!604991 () Bool)

(assert (= bs!604991 (and b!4309502 b!4309428)))

(assert (=> bs!604991 (= lambda!132882 lambda!132879)))

(declare-fun lt!1530328 () ListLongMap!1007)

(declare-fun c!732678 () Bool)

(declare-fun bm!297787 () Bool)

(declare-fun call!297793 () (_ BitVec 64))

(declare-fun call!297797 () ListLongMap!1007)

(declare-fun call!297795 () Bool)

(assert (=> bm!297787 (= call!297795 (contains!10156 (ite c!732678 lt!1530328 call!297797) call!297793))))

(declare-fun b!4309497 () Bool)

(declare-fun e!2680067 () Bool)

(declare-fun call!297792 () Bool)

(assert (=> b!4309497 (= e!2680067 call!297792)))

(declare-fun bm!297788 () Bool)

(declare-datatypes ((Option!10225 0))(
  ( (None!10224) (Some!10224 (v!42316 tuple2!46610)) )
))
(declare-fun call!297796 () Option!10225)

(declare-fun call!297794 () List!48310)

(declare-fun getPair!131 (List!48310 K!9389) Option!10225)

(assert (=> bm!297788 (= call!297796 (getPair!131 call!297794 key!2048))))

(declare-fun b!4309498 () Bool)

(declare-fun e!2680066 () Bool)

(assert (=> b!4309498 (= e!2680066 call!297792)))

(declare-fun d!1267887 () Bool)

(declare-fun lt!1530326 () Bool)

(declare-fun contains!10158 (ListMap!1677 K!9389) Bool)

(assert (=> d!1267887 (= lt!1530326 (contains!10158 (map!10175 thiss!42308) key!2048))))

(declare-fun e!2680069 () Bool)

(assert (=> d!1267887 (= lt!1530326 e!2680069)))

(declare-fun res!1766253 () Bool)

(assert (=> d!1267887 (=> (not res!1766253) (not e!2680069))))

(declare-fun lt!1530315 () (_ BitVec 64))

(assert (=> d!1267887 (= res!1766253 (contains!10157 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))))

(declare-datatypes ((Unit!67290 0))(
  ( (Unit!67291) )
))
(declare-fun lt!1530316 () Unit!67290)

(declare-fun e!2680068 () Unit!67290)

(assert (=> d!1267887 (= lt!1530316 e!2680068)))

(declare-fun extractMap!326 (List!48311) ListMap!1677)

(assert (=> d!1267887 (= c!732678 (contains!10158 (extractMap!326 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))) key!2048))))

(declare-fun lt!1530311 () Unit!67290)

(declare-fun e!2680072 () Unit!67290)

(assert (=> d!1267887 (= lt!1530311 e!2680072)))

(declare-fun c!732675 () Bool)

(assert (=> d!1267887 (= c!732675 (contains!10157 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))))

(assert (=> d!1267887 (= lt!1530315 (hash!1001 (hashF!6689 thiss!42308) key!2048))))

(assert (=> d!1267887 (valid!3645 thiss!42308)))

(assert (=> d!1267887 (= (contains!10155 thiss!42308 key!2048) lt!1530326)))

(declare-fun bm!297789 () Bool)

(declare-fun apply!11010 (ListLongMap!1007 (_ BitVec 64)) List!48310)

(assert (=> bm!297789 (= call!297794 (apply!11010 (ite c!732678 lt!1530328 call!297797) call!297793))))

(declare-fun b!4309499 () Bool)

(declare-fun e!2680070 () Unit!67290)

(declare-fun Unit!67292 () Unit!67290)

(assert (=> b!4309499 (= e!2680070 Unit!67292)))

(declare-fun b!4309500 () Bool)

(declare-fun Unit!67293 () Unit!67290)

(assert (=> b!4309500 (= e!2680072 Unit!67293)))

(declare-fun b!4309501 () Bool)

(declare-fun isDefined!7526 (Option!10225) Bool)

(assert (=> b!4309501 (= e!2680069 (isDefined!7526 (getPair!131 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315) key!2048)))))

(declare-fun forallContained!1498 (List!48311 Int tuple2!46612) Unit!67290)

(assert (=> b!4309502 (= e!2680072 (forallContained!1498 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) lambda!132882 (tuple2!46613 lt!1530315 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))))))

(declare-fun c!732677 () Bool)

(declare-fun contains!10159 (List!48311 tuple2!46612) Bool)

(assert (=> b!4309502 (= c!732677 (not (contains!10159 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) (tuple2!46613 lt!1530315 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315)))))))

(declare-fun lt!1530321 () Unit!67290)

(assert (=> b!4309502 (= lt!1530321 e!2680070)))

(declare-fun b!4309503 () Bool)

(assert (=> b!4309503 false))

(declare-fun lt!1530320 () Unit!67290)

(declare-fun lt!1530327 () Unit!67290)

(assert (=> b!4309503 (= lt!1530320 lt!1530327)))

(declare-fun lt!1530324 () List!48311)

(declare-fun lt!1530322 () List!48310)

(assert (=> b!4309503 (contains!10159 lt!1530324 (tuple2!46613 lt!1530315 lt!1530322))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!142 (List!48311 (_ BitVec 64) List!48310) Unit!67290)

(assert (=> b!4309503 (= lt!1530327 (lemmaGetValueByKeyImpliesContainsTuple!142 lt!1530324 lt!1530315 lt!1530322))))

(assert (=> b!4309503 (= lt!1530322 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))))

(assert (=> b!4309503 (= lt!1530324 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))))

(declare-fun lt!1530329 () Unit!67290)

(declare-fun lt!1530319 () Unit!67290)

(assert (=> b!4309503 (= lt!1530329 lt!1530319)))

(declare-fun lt!1530323 () List!48311)

(declare-fun isDefined!7527 (Option!10224) Bool)

(assert (=> b!4309503 (isDefined!7527 (getValueByKey!252 lt!1530323 lt!1530315))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!172 (List!48311 (_ BitVec 64)) Unit!67290)

(assert (=> b!4309503 (= lt!1530319 (lemmaContainsKeyImpliesGetValueByKeyDefined!172 lt!1530323 lt!1530315))))

(assert (=> b!4309503 (= lt!1530323 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))))

(declare-fun lt!1530317 () Unit!67290)

(declare-fun lt!1530314 () Unit!67290)

(assert (=> b!4309503 (= lt!1530317 lt!1530314)))

(declare-fun lt!1530325 () List!48311)

(declare-fun containsKey!308 (List!48311 (_ BitVec 64)) Bool)

(assert (=> b!4309503 (containsKey!308 lt!1530325 lt!1530315)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!132 (List!48311 (_ BitVec 64)) Unit!67290)

(assert (=> b!4309503 (= lt!1530314 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!132 lt!1530325 lt!1530315))))

(assert (=> b!4309503 (= lt!1530325 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))))

(declare-fun Unit!67294 () Unit!67290)

(assert (=> b!4309503 (= e!2680070 Unit!67294)))

(declare-fun b!4309504 () Bool)

(declare-fun e!2680071 () Unit!67290)

(declare-fun Unit!67295 () Unit!67290)

(assert (=> b!4309504 (= e!2680071 Unit!67295)))

(declare-fun bm!297790 () Bool)

(assert (=> bm!297790 (= call!297793 (hash!1001 (hashF!6689 thiss!42308) key!2048))))

(declare-fun b!4309505 () Bool)

(assert (=> b!4309505 (= e!2680068 e!2680071)))

(declare-fun res!1766252 () Bool)

(assert (=> b!4309505 (= res!1766252 call!297795)))

(assert (=> b!4309505 (=> (not res!1766252) (not e!2680067))))

(declare-fun c!732676 () Bool)

(assert (=> b!4309505 (= c!732676 e!2680067)))

(declare-fun bm!297791 () Bool)

(assert (=> bm!297791 (= call!297792 (isDefined!7526 call!297796))))

(declare-fun b!4309506 () Bool)

(declare-fun lt!1530330 () Unit!67290)

(assert (=> b!4309506 (= e!2680068 lt!1530330)))

(assert (=> b!4309506 (= lt!1530328 call!297797)))

(declare-fun lemmaInGenericMapThenInLongMap!131 (ListLongMap!1007 K!9389 Hashable!4573) Unit!67290)

(assert (=> b!4309506 (= lt!1530330 (lemmaInGenericMapThenInLongMap!131 lt!1530328 key!2048 (hashF!6689 thiss!42308)))))

(declare-fun res!1766251 () Bool)

(assert (=> b!4309506 (= res!1766251 call!297795)))

(assert (=> b!4309506 (=> (not res!1766251) (not e!2680066))))

(assert (=> b!4309506 e!2680066))

(declare-fun b!4309507 () Bool)

(assert (=> b!4309507 false))

(declare-fun lt!1530313 () Unit!67290)

(declare-fun lt!1530318 () Unit!67290)

(assert (=> b!4309507 (= lt!1530313 lt!1530318)))

(declare-fun lt!1530312 () ListLongMap!1007)

(assert (=> b!4309507 (contains!10158 (extractMap!326 (toList!2395 lt!1530312)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!131 (ListLongMap!1007 K!9389 Hashable!4573) Unit!67290)

(assert (=> b!4309507 (= lt!1530318 (lemmaInLongMapThenInGenericMap!131 lt!1530312 key!2048 (hashF!6689 thiss!42308)))))

(assert (=> b!4309507 (= lt!1530312 call!297797)))

(declare-fun Unit!67296 () Unit!67290)

(assert (=> b!4309507 (= e!2680071 Unit!67296)))

(declare-fun bm!297792 () Bool)

(assert (=> bm!297792 (= call!297797 (map!10174 (v!42310 (underlying!9544 thiss!42308))))))

(assert (= (and d!1267887 c!732675) b!4309502))

(assert (= (and d!1267887 (not c!732675)) b!4309500))

(assert (= (and b!4309502 c!732677) b!4309503))

(assert (= (and b!4309502 (not c!732677)) b!4309499))

(assert (= (and d!1267887 c!732678) b!4309506))

(assert (= (and d!1267887 (not c!732678)) b!4309505))

(assert (= (and b!4309506 res!1766251) b!4309498))

(assert (= (and b!4309505 res!1766252) b!4309497))

(assert (= (and b!4309505 c!732676) b!4309507))

(assert (= (and b!4309505 (not c!732676)) b!4309504))

(assert (= (or b!4309506 b!4309498 b!4309505 b!4309497) bm!297790))

(assert (= (or b!4309506 b!4309505 b!4309497 b!4309507) bm!297792))

(assert (= (or b!4309506 b!4309505) bm!297787))

(assert (= (or b!4309498 b!4309497) bm!297789))

(assert (= (or b!4309498 b!4309497) bm!297788))

(assert (= (or b!4309498 b!4309497) bm!297791))

(assert (= (and d!1267887 res!1766253) b!4309501))

(assert (=> d!1267887 m!4902445))

(declare-fun m!4902507 () Bool)

(assert (=> d!1267887 m!4902507))

(declare-fun m!4902509 () Bool)

(assert (=> d!1267887 m!4902509))

(assert (=> d!1267887 m!4902449))

(declare-fun m!4902511 () Bool)

(assert (=> d!1267887 m!4902511))

(assert (=> d!1267887 m!4902459))

(assert (=> d!1267887 m!4902511))

(declare-fun m!4902513 () Bool)

(assert (=> d!1267887 m!4902513))

(assert (=> d!1267887 m!4902443))

(assert (=> d!1267887 m!4902445))

(declare-fun m!4902515 () Bool)

(assert (=> bm!297789 m!4902515))

(declare-fun m!4902517 () Bool)

(assert (=> b!4309503 m!4902517))

(declare-fun m!4902519 () Bool)

(assert (=> b!4309503 m!4902519))

(declare-fun m!4902521 () Bool)

(assert (=> b!4309503 m!4902521))

(assert (=> b!4309503 m!4902443))

(declare-fun m!4902523 () Bool)

(assert (=> b!4309503 m!4902523))

(declare-fun m!4902525 () Bool)

(assert (=> b!4309503 m!4902525))

(declare-fun m!4902527 () Bool)

(assert (=> b!4309503 m!4902527))

(declare-fun m!4902529 () Bool)

(assert (=> b!4309503 m!4902529))

(assert (=> b!4309503 m!4902521))

(declare-fun m!4902531 () Bool)

(assert (=> b!4309503 m!4902531))

(assert (=> b!4309502 m!4902443))

(assert (=> b!4309502 m!4902525))

(declare-fun m!4902533 () Bool)

(assert (=> b!4309502 m!4902533))

(declare-fun m!4902535 () Bool)

(assert (=> b!4309502 m!4902535))

(assert (=> bm!297790 m!4902459))

(declare-fun m!4902537 () Bool)

(assert (=> b!4309506 m!4902537))

(assert (=> bm!297792 m!4902443))

(declare-fun m!4902539 () Bool)

(assert (=> b!4309507 m!4902539))

(assert (=> b!4309507 m!4902539))

(declare-fun m!4902541 () Bool)

(assert (=> b!4309507 m!4902541))

(declare-fun m!4902543 () Bool)

(assert (=> b!4309507 m!4902543))

(assert (=> b!4309501 m!4902525))

(assert (=> b!4309501 m!4902525))

(declare-fun m!4902545 () Bool)

(assert (=> b!4309501 m!4902545))

(assert (=> b!4309501 m!4902545))

(declare-fun m!4902547 () Bool)

(assert (=> b!4309501 m!4902547))

(declare-fun m!4902549 () Bool)

(assert (=> bm!297788 m!4902549))

(declare-fun m!4902551 () Bool)

(assert (=> bm!297787 m!4902551))

(declare-fun m!4902553 () Bool)

(assert (=> bm!297791 m!4902553))

(assert (=> b!4309393 d!1267887))

(declare-fun d!1267889 () Bool)

(declare-fun map!10176 (LongMapFixedSize!9314) ListLongMap!1007)

(assert (=> d!1267889 (= (map!10174 (v!42310 (underlying!9544 thiss!42308))) (map!10176 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))))))

(declare-fun bs!604992 () Bool)

(assert (= bs!604992 d!1267889))

(declare-fun m!4902555 () Bool)

(assert (=> bs!604992 m!4902555))

(assert (=> b!4309393 d!1267889))

(declare-fun d!1267891 () Bool)

(declare-fun lt!1530333 () ListMap!1677)

(declare-fun invariantList!570 (List!48310) Bool)

(assert (=> d!1267891 (invariantList!570 (toList!2396 lt!1530333))))

(assert (=> d!1267891 (= lt!1530333 (extractMap!326 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))))))

(assert (=> d!1267891 (valid!3645 thiss!42308)))

(assert (=> d!1267891 (= (map!10175 thiss!42308) lt!1530333)))

(declare-fun bs!604993 () Bool)

(assert (= bs!604993 d!1267891))

(declare-fun m!4902557 () Bool)

(assert (=> bs!604993 m!4902557))

(assert (=> bs!604993 m!4902443))

(assert (=> bs!604993 m!4902511))

(assert (=> bs!604993 m!4902449))

(assert (=> b!4309393 d!1267891))

(declare-fun d!1267893 () Bool)

(assert (=> d!1267893 (= (array_inv!5379 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) (bvsge (size!35538 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4309398 d!1267893))

(declare-fun d!1267895 () Bool)

(assert (=> d!1267895 (= (array_inv!5380 (_values!4938 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) (bvsge (size!35539 (_values!4938 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4309398 d!1267895))

(declare-fun e!2680078 () Bool)

(declare-fun tp!1324384 () Bool)

(declare-fun b!4309514 () Bool)

(assert (=> b!4309514 (= e!2680078 (and tp_is_empty!23733 tp_is_empty!23735 tp!1324384))))

(declare-fun mapIsEmpty!20800 () Bool)

(declare-fun mapRes!20800 () Bool)

(assert (=> mapIsEmpty!20800 mapRes!20800))

(declare-fun tp!1324383 () Bool)

(declare-fun b!4309515 () Bool)

(declare-fun e!2680077 () Bool)

(assert (=> b!4309515 (= e!2680077 (and tp_is_empty!23733 tp_is_empty!23735 tp!1324383))))

(declare-fun mapNonEmpty!20800 () Bool)

(declare-fun tp!1324385 () Bool)

(assert (=> mapNonEmpty!20800 (= mapRes!20800 (and tp!1324385 e!2680078))))

(declare-fun mapRest!20800 () (Array (_ BitVec 32) List!48310))

(declare-fun mapValue!20800 () List!48310)

(declare-fun mapKey!20800 () (_ BitVec 32))

(assert (=> mapNonEmpty!20800 (= mapRest!20797 (store mapRest!20800 mapKey!20800 mapValue!20800))))

(declare-fun condMapEmpty!20800 () Bool)

(declare-fun mapDefault!20800 () List!48310)

(assert (=> mapNonEmpty!20797 (= condMapEmpty!20800 (= mapRest!20797 ((as const (Array (_ BitVec 32) List!48310)) mapDefault!20800)))))

(assert (=> mapNonEmpty!20797 (= tp!1324375 (and e!2680077 mapRes!20800))))

(assert (= (and mapNonEmpty!20797 condMapEmpty!20800) mapIsEmpty!20800))

(assert (= (and mapNonEmpty!20797 (not condMapEmpty!20800)) mapNonEmpty!20800))

(assert (= (and mapNonEmpty!20800 ((_ is Cons!48186) mapValue!20800)) b!4309514))

(assert (= (and mapNonEmpty!20797 ((_ is Cons!48186) mapDefault!20800)) b!4309515))

(declare-fun m!4902559 () Bool)

(assert (=> mapNonEmpty!20800 m!4902559))

(declare-fun b!4309520 () Bool)

(declare-fun e!2680081 () Bool)

(declare-fun tp!1324388 () Bool)

(assert (=> b!4309520 (= e!2680081 (and tp_is_empty!23733 tp_is_empty!23735 tp!1324388))))

(assert (=> mapNonEmpty!20797 (= tp!1324371 e!2680081)))

(assert (= (and mapNonEmpty!20797 ((_ is Cons!48186) mapValue!20797)) b!4309520))

(declare-fun e!2680082 () Bool)

(declare-fun tp!1324389 () Bool)

(declare-fun b!4309521 () Bool)

(assert (=> b!4309521 (= e!2680082 (and tp_is_empty!23733 tp_is_empty!23735 tp!1324389))))

(assert (=> b!4309394 (= tp!1324376 e!2680082)))

(assert (= (and b!4309394 ((_ is Cons!48186) mapDefault!20797)) b!4309521))

(declare-fun e!2680083 () Bool)

(declare-fun b!4309522 () Bool)

(declare-fun tp!1324390 () Bool)

(assert (=> b!4309522 (= e!2680083 (and tp_is_empty!23733 tp_is_empty!23735 tp!1324390))))

(assert (=> b!4309398 (= tp!1324370 e!2680083)))

(assert (= (and b!4309398 ((_ is Cons!48186) (zeroValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))))) b!4309522))

(declare-fun e!2680084 () Bool)

(declare-fun tp!1324391 () Bool)

(declare-fun b!4309523 () Bool)

(assert (=> b!4309523 (= e!2680084 (and tp_is_empty!23733 tp_is_empty!23735 tp!1324391))))

(assert (=> b!4309398 (= tp!1324374 e!2680084)))

(assert (= (and b!4309398 ((_ is Cons!48186) (minValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))))) b!4309523))

(declare-fun b_lambda!126591 () Bool)

(assert (= b_lambda!126589 (or (and b!4309398 b_free!128587) b_lambda!126591)))

(declare-fun b_lambda!126593 () Bool)

(assert (= b_lambda!126587 (or b!4309399 b_lambda!126593)))

(declare-fun bs!604994 () Bool)

(declare-fun d!1267897 () Bool)

(assert (= bs!604994 (and d!1267897 b!4309399)))

(declare-fun allKeysSameHash!183 (List!48310 (_ BitVec 64) Hashable!4573) Bool)

(assert (=> bs!604994 (= (dynLambda!20428 lambda!132876 (h!53621 (toList!2395 lt!1530249))) (allKeysSameHash!183 (_2!26585 (h!53621 (toList!2395 lt!1530249))) (_1!26585 (h!53621 (toList!2395 lt!1530249))) (hashF!6689 thiss!42308)))))

(declare-fun m!4902561 () Bool)

(assert (=> bs!604994 m!4902561))

(assert (=> b!4309422 d!1267897))

(check-sat (not d!1267885) (not bm!297773) (not b!4309522) (not d!1267891) (not b!4309507) (not bm!297791) (not b!4309521) (not b!4309473) (not b_next!129293) (not b!4309514) (not d!1267889) (not d!1267887) (not b!4309450) (not b!4309502) b_and!340005 tp_is_empty!23735 (not b!4309423) (not bm!297789) (not bm!297792) (not b_lambda!126591) (not bm!297790) (not bs!604994) (not b!4309448) (not b!4309503) (not b!4309467) (not b!4309501) (not b!4309428) (not b!4309429) (not b_next!129291) b_and!340007 tp_is_empty!23733 (not tb!257287) (not b!4309449) (not b_lambda!126593) (not bm!297774) (not bm!297787) (not b!4309455) (not d!1267879) (not bm!297788) (not d!1267883) (not b!4309456) (not b!4309520) (not d!1267881) (not b!4309523) (not mapNonEmpty!20800) (not b!4309515) (not b!4309506) (not d!1267877))
(check-sat b_and!340007 b_and!340005 (not b_next!129293) (not b_next!129291))
(get-model)

(declare-fun d!1267899 () Bool)

(assert (=> d!1267899 (= (map!10174 (_2!26586 lt!1530262)) (map!10176 (v!42309 (underlying!9543 (_2!26586 lt!1530262)))))))

(declare-fun bs!604995 () Bool)

(assert (= bs!604995 d!1267899))

(declare-fun m!4902563 () Bool)

(assert (=> bs!604995 m!4902563))

(assert (=> bm!297774 d!1267899))

(assert (=> d!1267887 d!1267885))

(declare-fun b!4309542 () Bool)

(declare-fun e!2680100 () Unit!67290)

(declare-fun Unit!67297 () Unit!67290)

(assert (=> b!4309542 (= e!2680100 Unit!67297)))

(declare-fun d!1267901 () Bool)

(declare-fun e!2680099 () Bool)

(assert (=> d!1267901 e!2680099))

(declare-fun res!1766261 () Bool)

(assert (=> d!1267901 (=> res!1766261 e!2680099)))

(declare-fun e!2680098 () Bool)

(assert (=> d!1267901 (= res!1766261 e!2680098)))

(declare-fun res!1766260 () Bool)

(assert (=> d!1267901 (=> (not res!1766260) (not e!2680098))))

(declare-fun lt!1530354 () Bool)

(assert (=> d!1267901 (= res!1766260 (not lt!1530354))))

(declare-fun lt!1530357 () Bool)

(assert (=> d!1267901 (= lt!1530354 lt!1530357)))

(declare-fun lt!1530355 () Unit!67290)

(declare-fun e!2680101 () Unit!67290)

(assert (=> d!1267901 (= lt!1530355 e!2680101)))

(declare-fun c!732686 () Bool)

(assert (=> d!1267901 (= c!732686 lt!1530357)))

(declare-fun containsKey!309 (List!48310 K!9389) Bool)

(assert (=> d!1267901 (= lt!1530357 (containsKey!309 (toList!2396 (map!10175 thiss!42308)) key!2048))))

(assert (=> d!1267901 (= (contains!10158 (map!10175 thiss!42308) key!2048) lt!1530354)))

(declare-fun b!4309543 () Bool)

(declare-fun lt!1530356 () Unit!67290)

(assert (=> b!4309543 (= e!2680101 lt!1530356)))

(declare-fun lt!1530350 () Unit!67290)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!173 (List!48310 K!9389) Unit!67290)

(assert (=> b!4309543 (= lt!1530350 (lemmaContainsKeyImpliesGetValueByKeyDefined!173 (toList!2396 (map!10175 thiss!42308)) key!2048))))

(declare-datatypes ((Option!10226 0))(
  ( (None!10225) (Some!10225 (v!42323 V!9591)) )
))
(declare-fun isDefined!7528 (Option!10226) Bool)

(declare-fun getValueByKey!253 (List!48310 K!9389) Option!10226)

(assert (=> b!4309543 (isDefined!7528 (getValueByKey!253 (toList!2396 (map!10175 thiss!42308)) key!2048))))

(declare-fun lt!1530352 () Unit!67290)

(assert (=> b!4309543 (= lt!1530352 lt!1530350)))

(declare-fun lemmaInListThenGetKeysListContains!40 (List!48310 K!9389) Unit!67290)

(assert (=> b!4309543 (= lt!1530356 (lemmaInListThenGetKeysListContains!40 (toList!2396 (map!10175 thiss!42308)) key!2048))))

(declare-fun call!297800 () Bool)

(assert (=> b!4309543 call!297800))

(declare-fun b!4309544 () Bool)

(assert (=> b!4309544 false))

(declare-fun lt!1530353 () Unit!67290)

(declare-fun lt!1530351 () Unit!67290)

(assert (=> b!4309544 (= lt!1530353 lt!1530351)))

(assert (=> b!4309544 (containsKey!309 (toList!2396 (map!10175 thiss!42308)) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!40 (List!48310 K!9389) Unit!67290)

(assert (=> b!4309544 (= lt!1530351 (lemmaInGetKeysListThenContainsKey!40 (toList!2396 (map!10175 thiss!42308)) key!2048))))

(declare-fun Unit!67298 () Unit!67290)

(assert (=> b!4309544 (= e!2680100 Unit!67298)))

(declare-fun b!4309545 () Bool)

(declare-fun e!2680102 () Bool)

(assert (=> b!4309545 (= e!2680099 e!2680102)))

(declare-fun res!1766262 () Bool)

(assert (=> b!4309545 (=> (not res!1766262) (not e!2680102))))

(assert (=> b!4309545 (= res!1766262 (isDefined!7528 (getValueByKey!253 (toList!2396 (map!10175 thiss!42308)) key!2048)))))

(declare-fun b!4309546 () Bool)

(declare-datatypes ((List!48312 0))(
  ( (Nil!48188) (Cons!48188 (h!53623 K!9389) (t!355117 List!48312)) )
))
(declare-fun contains!10160 (List!48312 K!9389) Bool)

(declare-fun keys!16064 (ListMap!1677) List!48312)

(assert (=> b!4309546 (= e!2680098 (not (contains!10160 (keys!16064 (map!10175 thiss!42308)) key!2048)))))

(declare-fun b!4309547 () Bool)

(declare-fun e!2680097 () List!48312)

(assert (=> b!4309547 (= e!2680097 (keys!16064 (map!10175 thiss!42308)))))

(declare-fun bm!297795 () Bool)

(assert (=> bm!297795 (= call!297800 (contains!10160 e!2680097 key!2048))))

(declare-fun c!732685 () Bool)

(assert (=> bm!297795 (= c!732685 c!732686)))

(declare-fun b!4309548 () Bool)

(assert (=> b!4309548 (= e!2680102 (contains!10160 (keys!16064 (map!10175 thiss!42308)) key!2048))))

(declare-fun b!4309549 () Bool)

(declare-fun getKeysList!43 (List!48310) List!48312)

(assert (=> b!4309549 (= e!2680097 (getKeysList!43 (toList!2396 (map!10175 thiss!42308))))))

(declare-fun b!4309550 () Bool)

(assert (=> b!4309550 (= e!2680101 e!2680100)))

(declare-fun c!732687 () Bool)

(assert (=> b!4309550 (= c!732687 call!297800)))

(assert (= (and d!1267901 c!732686) b!4309543))

(assert (= (and d!1267901 (not c!732686)) b!4309550))

(assert (= (and b!4309550 c!732687) b!4309544))

(assert (= (and b!4309550 (not c!732687)) b!4309542))

(assert (= (or b!4309543 b!4309550) bm!297795))

(assert (= (and bm!297795 c!732685) b!4309549))

(assert (= (and bm!297795 (not c!732685)) b!4309547))

(assert (= (and d!1267901 res!1766260) b!4309546))

(assert (= (and d!1267901 (not res!1766261)) b!4309545))

(assert (= (and b!4309545 res!1766262) b!4309548))

(declare-fun m!4902565 () Bool)

(assert (=> b!4309544 m!4902565))

(declare-fun m!4902567 () Bool)

(assert (=> b!4309544 m!4902567))

(declare-fun m!4902569 () Bool)

(assert (=> b!4309543 m!4902569))

(declare-fun m!4902571 () Bool)

(assert (=> b!4309543 m!4902571))

(assert (=> b!4309543 m!4902571))

(declare-fun m!4902573 () Bool)

(assert (=> b!4309543 m!4902573))

(declare-fun m!4902575 () Bool)

(assert (=> b!4309543 m!4902575))

(assert (=> b!4309547 m!4902445))

(declare-fun m!4902577 () Bool)

(assert (=> b!4309547 m!4902577))

(declare-fun m!4902579 () Bool)

(assert (=> bm!297795 m!4902579))

(assert (=> b!4309545 m!4902571))

(assert (=> b!4309545 m!4902571))

(assert (=> b!4309545 m!4902573))

(assert (=> b!4309546 m!4902445))

(assert (=> b!4309546 m!4902577))

(assert (=> b!4309546 m!4902577))

(declare-fun m!4902581 () Bool)

(assert (=> b!4309546 m!4902581))

(declare-fun m!4902583 () Bool)

(assert (=> b!4309549 m!4902583))

(assert (=> b!4309548 m!4902445))

(assert (=> b!4309548 m!4902577))

(assert (=> b!4309548 m!4902577))

(assert (=> b!4309548 m!4902581))

(assert (=> d!1267901 m!4902565))

(assert (=> d!1267887 d!1267901))

(declare-fun b!4309551 () Bool)

(declare-fun e!2680106 () Unit!67290)

(declare-fun Unit!67299 () Unit!67290)

(assert (=> b!4309551 (= e!2680106 Unit!67299)))

(declare-fun d!1267903 () Bool)

(declare-fun e!2680105 () Bool)

(assert (=> d!1267903 e!2680105))

(declare-fun res!1766264 () Bool)

(assert (=> d!1267903 (=> res!1766264 e!2680105)))

(declare-fun e!2680104 () Bool)

(assert (=> d!1267903 (= res!1766264 e!2680104)))

(declare-fun res!1766263 () Bool)

(assert (=> d!1267903 (=> (not res!1766263) (not e!2680104))))

(declare-fun lt!1530362 () Bool)

(assert (=> d!1267903 (= res!1766263 (not lt!1530362))))

(declare-fun lt!1530365 () Bool)

(assert (=> d!1267903 (= lt!1530362 lt!1530365)))

(declare-fun lt!1530363 () Unit!67290)

(declare-fun e!2680107 () Unit!67290)

(assert (=> d!1267903 (= lt!1530363 e!2680107)))

(declare-fun c!732689 () Bool)

(assert (=> d!1267903 (= c!732689 lt!1530365)))

(assert (=> d!1267903 (= lt!1530365 (containsKey!309 (toList!2396 (extractMap!326 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))) key!2048))))

(assert (=> d!1267903 (= (contains!10158 (extractMap!326 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))) key!2048) lt!1530362)))

(declare-fun b!4309552 () Bool)

(declare-fun lt!1530364 () Unit!67290)

(assert (=> b!4309552 (= e!2680107 lt!1530364)))

(declare-fun lt!1530358 () Unit!67290)

(assert (=> b!4309552 (= lt!1530358 (lemmaContainsKeyImpliesGetValueByKeyDefined!173 (toList!2396 (extractMap!326 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))) key!2048))))

(assert (=> b!4309552 (isDefined!7528 (getValueByKey!253 (toList!2396 (extractMap!326 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))) key!2048))))

(declare-fun lt!1530360 () Unit!67290)

(assert (=> b!4309552 (= lt!1530360 lt!1530358)))

(assert (=> b!4309552 (= lt!1530364 (lemmaInListThenGetKeysListContains!40 (toList!2396 (extractMap!326 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))) key!2048))))

(declare-fun call!297801 () Bool)

(assert (=> b!4309552 call!297801))

(declare-fun b!4309553 () Bool)

(assert (=> b!4309553 false))

(declare-fun lt!1530361 () Unit!67290)

(declare-fun lt!1530359 () Unit!67290)

(assert (=> b!4309553 (= lt!1530361 lt!1530359)))

(assert (=> b!4309553 (containsKey!309 (toList!2396 (extractMap!326 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))) key!2048)))

(assert (=> b!4309553 (= lt!1530359 (lemmaInGetKeysListThenContainsKey!40 (toList!2396 (extractMap!326 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))) key!2048))))

(declare-fun Unit!67300 () Unit!67290)

(assert (=> b!4309553 (= e!2680106 Unit!67300)))

(declare-fun b!4309554 () Bool)

(declare-fun e!2680108 () Bool)

(assert (=> b!4309554 (= e!2680105 e!2680108)))

(declare-fun res!1766265 () Bool)

(assert (=> b!4309554 (=> (not res!1766265) (not e!2680108))))

(assert (=> b!4309554 (= res!1766265 (isDefined!7528 (getValueByKey!253 (toList!2396 (extractMap!326 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))) key!2048)))))

(declare-fun b!4309555 () Bool)

(assert (=> b!4309555 (= e!2680104 (not (contains!10160 (keys!16064 (extractMap!326 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))) key!2048)))))

(declare-fun b!4309556 () Bool)

(declare-fun e!2680103 () List!48312)

(assert (=> b!4309556 (= e!2680103 (keys!16064 (extractMap!326 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))))))

(declare-fun bm!297796 () Bool)

(assert (=> bm!297796 (= call!297801 (contains!10160 e!2680103 key!2048))))

(declare-fun c!732688 () Bool)

(assert (=> bm!297796 (= c!732688 c!732689)))

(declare-fun b!4309557 () Bool)

(assert (=> b!4309557 (= e!2680108 (contains!10160 (keys!16064 (extractMap!326 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))) key!2048))))

(declare-fun b!4309558 () Bool)

(assert (=> b!4309558 (= e!2680103 (getKeysList!43 (toList!2396 (extractMap!326 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))))))))

(declare-fun b!4309559 () Bool)

(assert (=> b!4309559 (= e!2680107 e!2680106)))

(declare-fun c!732690 () Bool)

(assert (=> b!4309559 (= c!732690 call!297801)))

(assert (= (and d!1267903 c!732689) b!4309552))

(assert (= (and d!1267903 (not c!732689)) b!4309559))

(assert (= (and b!4309559 c!732690) b!4309553))

(assert (= (and b!4309559 (not c!732690)) b!4309551))

(assert (= (or b!4309552 b!4309559) bm!297796))

(assert (= (and bm!297796 c!732688) b!4309558))

(assert (= (and bm!297796 (not c!732688)) b!4309556))

(assert (= (and d!1267903 res!1766263) b!4309555))

(assert (= (and d!1267903 (not res!1766264)) b!4309554))

(assert (= (and b!4309554 res!1766265) b!4309557))

(declare-fun m!4902585 () Bool)

(assert (=> b!4309553 m!4902585))

(declare-fun m!4902587 () Bool)

(assert (=> b!4309553 m!4902587))

(declare-fun m!4902589 () Bool)

(assert (=> b!4309552 m!4902589))

(declare-fun m!4902591 () Bool)

(assert (=> b!4309552 m!4902591))

(assert (=> b!4309552 m!4902591))

(declare-fun m!4902593 () Bool)

(assert (=> b!4309552 m!4902593))

(declare-fun m!4902595 () Bool)

(assert (=> b!4309552 m!4902595))

(assert (=> b!4309556 m!4902511))

(declare-fun m!4902597 () Bool)

(assert (=> b!4309556 m!4902597))

(declare-fun m!4902599 () Bool)

(assert (=> bm!297796 m!4902599))

(assert (=> b!4309554 m!4902591))

(assert (=> b!4309554 m!4902591))

(assert (=> b!4309554 m!4902593))

(assert (=> b!4309555 m!4902511))

(assert (=> b!4309555 m!4902597))

(assert (=> b!4309555 m!4902597))

(declare-fun m!4902601 () Bool)

(assert (=> b!4309555 m!4902601))

(declare-fun m!4902603 () Bool)

(assert (=> b!4309558 m!4902603))

(assert (=> b!4309557 m!4902511))

(assert (=> b!4309557 m!4902597))

(assert (=> b!4309557 m!4902597))

(assert (=> b!4309557 m!4902601))

(assert (=> d!1267903 m!4902585))

(assert (=> d!1267887 d!1267903))

(assert (=> d!1267887 d!1267877))

(declare-fun d!1267905 () Bool)

(declare-fun lt!1530368 () Bool)

(assert (=> d!1267905 (= lt!1530368 (contains!10156 (map!10174 (v!42310 (underlying!9544 thiss!42308))) lt!1530315))))

(declare-fun contains!10161 (LongMapFixedSize!9314 (_ BitVec 64)) Bool)

(assert (=> d!1267905 (= lt!1530368 (contains!10161 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))) lt!1530315))))

(assert (=> d!1267905 (valid!3646 (v!42310 (underlying!9544 thiss!42308)))))

(assert (=> d!1267905 (= (contains!10157 (v!42310 (underlying!9544 thiss!42308)) lt!1530315) lt!1530368)))

(declare-fun bs!604996 () Bool)

(assert (= bs!604996 d!1267905))

(assert (=> bs!604996 m!4902443))

(assert (=> bs!604996 m!4902443))

(declare-fun m!4902605 () Bool)

(assert (=> bs!604996 m!4902605))

(declare-fun m!4902607 () Bool)

(assert (=> bs!604996 m!4902607))

(assert (=> bs!604996 m!4902469))

(assert (=> d!1267887 d!1267905))

(assert (=> d!1267887 d!1267891))

(declare-fun bs!604997 () Bool)

(declare-fun d!1267907 () Bool)

(assert (= bs!604997 (and d!1267907 b!4309399)))

(declare-fun lambda!132885 () Int)

(assert (=> bs!604997 (not (= lambda!132885 lambda!132876))))

(declare-fun bs!604998 () Bool)

(assert (= bs!604998 (and d!1267907 b!4309428)))

(assert (=> bs!604998 (= lambda!132885 lambda!132879)))

(declare-fun bs!604999 () Bool)

(assert (= bs!604999 (and d!1267907 b!4309502)))

(assert (=> bs!604999 (= lambda!132885 lambda!132882)))

(declare-fun lt!1530371 () ListMap!1677)

(assert (=> d!1267907 (invariantList!570 (toList!2396 lt!1530371))))

(declare-fun e!2680111 () ListMap!1677)

(assert (=> d!1267907 (= lt!1530371 e!2680111)))

(declare-fun c!732693 () Bool)

(assert (=> d!1267907 (= c!732693 ((_ is Cons!48187) (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))))))

(assert (=> d!1267907 (forall!8726 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) lambda!132885)))

(assert (=> d!1267907 (= (extractMap!326 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))) lt!1530371)))

(declare-fun b!4309564 () Bool)

(declare-fun addToMapMapFromBucket!37 (List!48310 ListMap!1677) ListMap!1677)

(assert (=> b!4309564 (= e!2680111 (addToMapMapFromBucket!37 (_2!26585 (h!53621 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))) (extractMap!326 (t!355112 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))))))))

(declare-fun b!4309565 () Bool)

(assert (=> b!4309565 (= e!2680111 (ListMap!1678 Nil!48186))))

(assert (= (and d!1267907 c!732693) b!4309564))

(assert (= (and d!1267907 (not c!732693)) b!4309565))

(declare-fun m!4902609 () Bool)

(assert (=> d!1267907 m!4902609))

(declare-fun m!4902611 () Bool)

(assert (=> d!1267907 m!4902611))

(declare-fun m!4902613 () Bool)

(assert (=> b!4309564 m!4902613))

(assert (=> b!4309564 m!4902613))

(declare-fun m!4902615 () Bool)

(assert (=> b!4309564 m!4902615))

(assert (=> d!1267887 d!1267907))

(assert (=> d!1267887 d!1267889))

(declare-fun d!1267909 () Bool)

(declare-fun valid!3647 (LongMapFixedSize!9314) Bool)

(assert (=> d!1267909 (= (valid!3646 (_2!26586 lt!1530262)) (valid!3647 (v!42309 (underlying!9543 (_2!26586 lt!1530262)))))))

(declare-fun bs!605000 () Bool)

(assert (= bs!605000 d!1267909))

(declare-fun m!4902617 () Bool)

(assert (=> bs!605000 m!4902617))

(assert (=> b!4309455 d!1267909))

(declare-fun d!1267911 () Bool)

(declare-fun getCurrentListMap!17 (array!16786 array!16788 (_ BitVec 32) (_ BitVec 32) List!48310 List!48310 (_ BitVec 32) Int) ListLongMap!1007)

(assert (=> d!1267911 (= (map!10176 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (getCurrentListMap!17 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (_values!4938 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (mask!13214 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (zeroValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (minValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))))

(declare-fun bs!605001 () Bool)

(assert (= bs!605001 d!1267911))

(declare-fun m!4902619 () Bool)

(assert (=> bs!605001 m!4902619))

(assert (=> d!1267889 d!1267911))

(declare-fun d!1267913 () Bool)

(declare-fun e!2680117 () Bool)

(assert (=> d!1267913 e!2680117))

(declare-fun res!1766268 () Bool)

(assert (=> d!1267913 (=> res!1766268 e!2680117)))

(declare-fun lt!1530383 () Bool)

(assert (=> d!1267913 (= res!1766268 (not lt!1530383))))

(declare-fun lt!1530380 () Bool)

(assert (=> d!1267913 (= lt!1530383 lt!1530380)))

(declare-fun lt!1530382 () Unit!67290)

(declare-fun e!2680116 () Unit!67290)

(assert (=> d!1267913 (= lt!1530382 e!2680116)))

(declare-fun c!732696 () Bool)

(assert (=> d!1267913 (= c!732696 lt!1530380)))

(assert (=> d!1267913 (= lt!1530380 (containsKey!308 (toList!2395 call!297779) lt!1530248))))

(assert (=> d!1267913 (= (contains!10156 call!297779 lt!1530248) lt!1530383)))

(declare-fun b!4309572 () Bool)

(declare-fun lt!1530381 () Unit!67290)

(assert (=> b!4309572 (= e!2680116 lt!1530381)))

(assert (=> b!4309572 (= lt!1530381 (lemmaContainsKeyImpliesGetValueByKeyDefined!172 (toList!2395 call!297779) lt!1530248))))

(assert (=> b!4309572 (isDefined!7527 (getValueByKey!252 (toList!2395 call!297779) lt!1530248))))

(declare-fun b!4309573 () Bool)

(declare-fun Unit!67301 () Unit!67290)

(assert (=> b!4309573 (= e!2680116 Unit!67301)))

(declare-fun b!4309574 () Bool)

(assert (=> b!4309574 (= e!2680117 (isDefined!7527 (getValueByKey!252 (toList!2395 call!297779) lt!1530248)))))

(assert (= (and d!1267913 c!732696) b!4309572))

(assert (= (and d!1267913 (not c!732696)) b!4309573))

(assert (= (and d!1267913 (not res!1766268)) b!4309574))

(declare-fun m!4902621 () Bool)

(assert (=> d!1267913 m!4902621))

(declare-fun m!4902623 () Bool)

(assert (=> b!4309572 m!4902623))

(declare-fun m!4902625 () Bool)

(assert (=> b!4309572 m!4902625))

(assert (=> b!4309572 m!4902625))

(declare-fun m!4902627 () Bool)

(assert (=> b!4309572 m!4902627))

(assert (=> b!4309574 m!4902625))

(assert (=> b!4309574 m!4902625))

(assert (=> b!4309574 m!4902627))

(assert (=> b!4309456 d!1267913))

(declare-fun d!1267915 () Bool)

(assert (=> d!1267915 (= (apply!11010 (ite c!732678 lt!1530328 call!297797) call!297793) (get!15589 (getValueByKey!252 (toList!2395 (ite c!732678 lt!1530328 call!297797)) call!297793)))))

(declare-fun bs!605002 () Bool)

(assert (= bs!605002 d!1267915))

(declare-fun m!4902629 () Bool)

(assert (=> bs!605002 m!4902629))

(assert (=> bs!605002 m!4902629))

(declare-fun m!4902631 () Bool)

(assert (=> bs!605002 m!4902631))

(assert (=> bm!297789 d!1267915))

(declare-fun b!4309591 () Bool)

(declare-fun e!2680129 () Bool)

(declare-fun lt!1530386 () Option!10225)

(declare-fun contains!10162 (List!48310 tuple2!46610) Bool)

(declare-fun get!15590 (Option!10225) tuple2!46610)

(assert (=> b!4309591 (= e!2680129 (contains!10162 call!297794 (get!15590 lt!1530386)))))

(declare-fun b!4309592 () Bool)

(declare-fun e!2680130 () Option!10225)

(assert (=> b!4309592 (= e!2680130 None!10224)))

(declare-fun b!4309593 () Bool)

(declare-fun res!1766280 () Bool)

(assert (=> b!4309593 (=> (not res!1766280) (not e!2680129))))

(assert (=> b!4309593 (= res!1766280 (= (_1!26584 (get!15590 lt!1530386)) key!2048))))

(declare-fun b!4309594 () Bool)

(declare-fun e!2680128 () Option!10225)

(assert (=> b!4309594 (= e!2680128 e!2680130)))

(declare-fun c!732702 () Bool)

(assert (=> b!4309594 (= c!732702 ((_ is Cons!48186) call!297794))))

(declare-fun d!1267917 () Bool)

(declare-fun e!2680132 () Bool)

(assert (=> d!1267917 e!2680132))

(declare-fun res!1766278 () Bool)

(assert (=> d!1267917 (=> res!1766278 e!2680132)))

(declare-fun e!2680131 () Bool)

(assert (=> d!1267917 (= res!1766278 e!2680131)))

(declare-fun res!1766277 () Bool)

(assert (=> d!1267917 (=> (not res!1766277) (not e!2680131))))

(declare-fun isEmpty!28084 (Option!10225) Bool)

(assert (=> d!1267917 (= res!1766277 (isEmpty!28084 lt!1530386))))

(assert (=> d!1267917 (= lt!1530386 e!2680128)))

(declare-fun c!732701 () Bool)

(assert (=> d!1267917 (= c!732701 (and ((_ is Cons!48186) call!297794) (= (_1!26584 (h!53620 call!297794)) key!2048)))))

(assert (=> d!1267917 (noDuplicateKeys!208 call!297794)))

(assert (=> d!1267917 (= (getPair!131 call!297794 key!2048) lt!1530386)))

(declare-fun b!4309595 () Bool)

(assert (=> b!4309595 (= e!2680131 (not (containsKey!307 call!297794 key!2048)))))

(declare-fun b!4309596 () Bool)

(assert (=> b!4309596 (= e!2680132 e!2680129)))

(declare-fun res!1766279 () Bool)

(assert (=> b!4309596 (=> (not res!1766279) (not e!2680129))))

(assert (=> b!4309596 (= res!1766279 (isDefined!7526 lt!1530386))))

(declare-fun b!4309597 () Bool)

(assert (=> b!4309597 (= e!2680128 (Some!10224 (h!53620 call!297794)))))

(declare-fun b!4309598 () Bool)

(assert (=> b!4309598 (= e!2680130 (getPair!131 (t!355111 call!297794) key!2048))))

(assert (= (and d!1267917 c!732701) b!4309597))

(assert (= (and d!1267917 (not c!732701)) b!4309594))

(assert (= (and b!4309594 c!732702) b!4309598))

(assert (= (and b!4309594 (not c!732702)) b!4309592))

(assert (= (and d!1267917 res!1766277) b!4309595))

(assert (= (and d!1267917 (not res!1766278)) b!4309596))

(assert (= (and b!4309596 res!1766279) b!4309593))

(assert (= (and b!4309593 res!1766280) b!4309591))

(declare-fun m!4902633 () Bool)

(assert (=> d!1267917 m!4902633))

(declare-fun m!4902635 () Bool)

(assert (=> d!1267917 m!4902635))

(declare-fun m!4902637 () Bool)

(assert (=> b!4309598 m!4902637))

(declare-fun m!4902639 () Bool)

(assert (=> b!4309596 m!4902639))

(declare-fun m!4902641 () Bool)

(assert (=> b!4309593 m!4902641))

(assert (=> b!4309591 m!4902641))

(assert (=> b!4309591 m!4902641))

(declare-fun m!4902643 () Bool)

(assert (=> b!4309591 m!4902643))

(declare-fun m!4902645 () Bool)

(assert (=> b!4309595 m!4902645))

(assert (=> bm!297788 d!1267917))

(declare-fun bm!297845 () Bool)

(declare-datatypes ((SeekEntryResult!14 0))(
  ( (Found!14 (index!1435 (_ BitVec 32))) (Undefined!14) (MissingZero!14 (index!1436 (_ BitVec 32))) (MissingVacant!14 (index!1437 (_ BitVec 32))) (Intermediate!14 (undefined!95 Bool) (index!1438 (_ BitVec 32)) (x!747904 (_ BitVec 32))) )
))
(declare-fun call!297863 () SeekEntryResult!14)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16786 (_ BitVec 32)) SeekEntryResult!14)

(assert (=> bm!297845 (= call!297863 (seekEntryOrOpen!0 lt!1530248 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (mask!13214 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))))))

(declare-fun bm!297846 () Bool)

(declare-fun call!297872 () Bool)

(declare-fun call!297856 () Bool)

(assert (=> bm!297846 (= call!297872 call!297856)))

(declare-fun bm!297847 () Bool)

(declare-fun call!297870 () Bool)

(assert (=> bm!297847 (= call!297870 call!297856)))

(declare-fun bm!297848 () Bool)

(declare-fun call!297867 () Bool)

(declare-fun call!297859 () Bool)

(assert (=> bm!297848 (= call!297867 call!297859)))

(declare-fun b!4309675 () Bool)

(declare-fun e!2680176 () Bool)

(declare-fun e!2680188 () Bool)

(assert (=> b!4309675 (= e!2680176 e!2680188)))

(declare-fun c!732736 () Bool)

(declare-fun lt!1530441 () tuple2!46616)

(assert (=> b!4309675 (= c!732736 (_1!26587 lt!1530441))))

(declare-fun bm!297849 () Bool)

(declare-fun arrayContainsKey!0 (array!16786 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!297849 (= call!297856 (arrayContainsKey!0 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) lt!1530248 #b00000000000000000000000000000000))))

(declare-fun bm!297850 () Bool)

(declare-fun call!297869 () ListLongMap!1007)

(declare-fun call!297868 () ListLongMap!1007)

(assert (=> bm!297850 (= call!297869 call!297868)))

(declare-fun b!4309676 () Bool)

(declare-fun lt!1530458 () tuple2!46616)

(declare-fun call!297866 () tuple2!46616)

(assert (=> b!4309676 (= lt!1530458 call!297866)))

(declare-fun e!2680182 () tuple2!46616)

(assert (=> b!4309676 (= e!2680182 (tuple2!46617 (_1!26587 lt!1530458) (_2!26587 lt!1530458)))))

(declare-fun b!4309677 () Bool)

(declare-fun e!2680180 () tuple2!46616)

(declare-fun e!2680173 () tuple2!46616)

(assert (=> b!4309677 (= e!2680180 e!2680173)))

(declare-fun c!732729 () Bool)

(assert (=> b!4309677 (= c!732729 (= lt!1530248 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!297851 () Bool)

(declare-fun call!297857 () ListLongMap!1007)

(assert (=> bm!297851 (= call!297857 (map!10176 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))))))

(declare-fun c!732730 () Bool)

(declare-fun call!297865 () Bool)

(declare-fun lt!1530460 () SeekEntryResult!14)

(declare-fun c!732737 () Bool)

(declare-fun lt!1530466 () SeekEntryResult!14)

(declare-fun c!732727 () Bool)

(declare-fun lt!1530448 () SeekEntryResult!14)

(declare-fun bm!297852 () Bool)

(declare-fun c!732733 () Bool)

(declare-fun lt!1530443 () SeekEntryResult!14)

(declare-fun c!732728 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!297852 (= call!297865 (inRange!0 (ite c!732728 (ite c!732730 (index!1435 lt!1530448) (ite c!732737 (index!1436 lt!1530466) (index!1437 lt!1530466))) (ite c!732727 (index!1435 lt!1530460) (ite c!732733 (index!1436 lt!1530443) (index!1437 lt!1530443)))) (mask!13214 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))))))

(declare-fun bm!297853 () Bool)

(declare-fun call!297871 () Unit!67290)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!4 (array!16786 array!16788 (_ BitVec 32) (_ BitVec 32) List!48310 List!48310 (_ BitVec 64) Int) Unit!67290)

(assert (=> bm!297853 (= call!297871 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!4 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (mask!13214 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (extraKeys!4906 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (zeroValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (minValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) lt!1530248 (defaultEntry!5042 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))))))

(declare-fun call!297862 () ListLongMap!1007)

(declare-fun c!732732 () Bool)

(declare-fun call!297864 () ListLongMap!1007)

(declare-fun call!297854 () ListLongMap!1007)

(declare-fun bm!297854 () Bool)

(assert (=> bm!297854 (= call!297864 (+!266 (ite c!732732 call!297854 call!297862) (ite c!732732 (ite c!732729 (tuple2!46613 #b0000000000000000000000000000000000000000000000000000000000000000 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))) (tuple2!46613 #b1000000000000000000000000000000000000000000000000000000000000000 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048)))) (tuple2!46613 lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))))))))

(declare-fun b!4309678 () Bool)

(declare-fun res!1766310 () Bool)

(assert (=> b!4309678 (= res!1766310 (= (select (arr!7499 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))) (index!1437 lt!1530466)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2680190 () Bool)

(assert (=> b!4309678 (=> (not res!1766310) (not e!2680190))))

(declare-fun b!4309679 () Bool)

(declare-fun lt!1530467 () Unit!67290)

(declare-fun lt!1530453 () Unit!67290)

(assert (=> b!4309679 (= lt!1530467 lt!1530453)))

(declare-fun call!297853 () ListLongMap!1007)

(assert (=> b!4309679 (= call!297853 call!297869)))

(declare-fun lt!1530454 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!4 (array!16786 array!16788 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48310 List!48310 List!48310 Int) Unit!67290)

(assert (=> b!4309679 (= lt!1530453 (lemmaChangeZeroKeyThenAddPairToListMap!4 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (mask!13214 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (extraKeys!4906 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) lt!1530454 (zeroValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048)) (minValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (defaultEntry!5042 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))))))

(assert (=> b!4309679 (= lt!1530454 (bvor (extraKeys!4906 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) #b00000000000000000000000000000001))))

(assert (=> b!4309679 (= e!2680173 (tuple2!46617 true (LongMapFixedSize!9315 (defaultEntry!5042 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (mask!13214 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (bvor (extraKeys!4906 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) #b00000000000000000000000000000001) (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048)) (minValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (_size!9357 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (_vacant!4718 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))))))))

(declare-fun b!4309680 () Bool)

(declare-fun e!2680189 () tuple2!46616)

(assert (=> b!4309680 (= e!2680189 e!2680182)))

(declare-fun c!732734 () Bool)

(declare-fun lt!1530451 () SeekEntryResult!14)

(assert (=> b!4309680 (= c!732734 ((_ is MissingZero!14) lt!1530451))))

(declare-fun b!4309681 () Bool)

(declare-fun call!297858 () ListLongMap!1007)

(assert (=> b!4309681 (= e!2680188 (= call!297858 call!297857))))

(declare-fun b!4309682 () Bool)

(declare-fun res!1766317 () Bool)

(declare-fun e!2680181 () Bool)

(assert (=> b!4309682 (=> (not res!1766317) (not e!2680181))))

(declare-fun call!297850 () Bool)

(assert (=> b!4309682 (= res!1766317 call!297850)))

(declare-fun e!2680179 () Bool)

(assert (=> b!4309682 (= e!2680179 e!2680181)))

(declare-fun b!4309683 () Bool)

(declare-fun e!2680185 () Unit!67290)

(declare-fun Unit!67302 () Unit!67290)

(assert (=> b!4309683 (= e!2680185 Unit!67302)))

(declare-fun lt!1530459 () Unit!67290)

(declare-fun call!297851 () Unit!67290)

(assert (=> b!4309683 (= lt!1530459 call!297851)))

(declare-fun call!297861 () SeekEntryResult!14)

(assert (=> b!4309683 (= lt!1530448 call!297861)))

(declare-fun res!1766319 () Bool)

(assert (=> b!4309683 (= res!1766319 ((_ is Found!14) lt!1530448))))

(declare-fun e!2680183 () Bool)

(assert (=> b!4309683 (=> (not res!1766319) (not e!2680183))))

(assert (=> b!4309683 e!2680183))

(declare-fun lt!1530455 () Unit!67290)

(assert (=> b!4309683 (= lt!1530455 lt!1530459)))

(assert (=> b!4309683 false))

(declare-fun b!4309684 () Bool)

(declare-fun e!2680175 () Bool)

(assert (=> b!4309684 (= e!2680175 (not call!297872))))

(declare-fun b!4309685 () Bool)

(declare-fun c!732731 () Bool)

(assert (=> b!4309685 (= c!732731 ((_ is MissingVacant!14) lt!1530451))))

(declare-fun e!2680192 () tuple2!46616)

(assert (=> b!4309685 (= e!2680192 e!2680189)))

(declare-fun e!2680184 () Bool)

(declare-fun b!4309686 () Bool)

(assert (=> b!4309686 (= e!2680184 (= call!297858 (+!266 call!297857 (tuple2!46613 lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))))))))

(declare-fun bm!297855 () Bool)

(declare-fun call!297855 () Bool)

(assert (=> bm!297855 (= call!297850 call!297855)))

(declare-fun b!4309687 () Bool)

(declare-fun e!2680178 () Bool)

(assert (=> b!4309687 (= e!2680178 e!2680190)))

(declare-fun res!1766309 () Bool)

(assert (=> b!4309687 (= res!1766309 call!297850)))

(assert (=> b!4309687 (=> (not res!1766309) (not e!2680190))))

(declare-fun call!297860 () Bool)

(declare-fun call!297873 () ListLongMap!1007)

(declare-fun bm!297856 () Bool)

(assert (=> bm!297856 (= call!297860 (contains!10156 call!297873 (ite c!732728 lt!1530248 (select (arr!7499 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))) (index!1435 lt!1530451)))))))

(declare-fun bm!297857 () Bool)

(declare-fun lt!1530457 () array!16788)

(assert (=> bm!297857 (= call!297873 (getCurrentListMap!17 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (ite c!732728 (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) lt!1530457) (mask!13214 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (extraKeys!4906 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (zeroValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (minValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) #b00000000000000000000000000000000 (defaultEntry!5042 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))))))

(declare-fun d!1267919 () Bool)

(assert (=> d!1267919 e!2680176))

(declare-fun res!1766312 () Bool)

(assert (=> d!1267919 (=> (not res!1766312) (not e!2680176))))

(assert (=> d!1267919 (= res!1766312 (valid!3647 (_2!26587 lt!1530441)))))

(assert (=> d!1267919 (= lt!1530441 e!2680180)))

(assert (=> d!1267919 (= c!732732 (= lt!1530248 (bvneg lt!1530248)))))

(assert (=> d!1267919 (valid!3647 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))))

(assert (=> d!1267919 (= (update!432 (v!42309 (underlying!9543 (_2!26586 lt!1530263))) lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))) lt!1530441)))

(declare-fun b!4309688 () Bool)

(assert (=> b!4309688 (= e!2680180 e!2680192)))

(assert (=> b!4309688 (= lt!1530451 (seekEntryOrOpen!0 lt!1530248 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (mask!13214 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))))))

(assert (=> b!4309688 (= c!732728 ((_ is Undefined!14) lt!1530451))))

(declare-fun b!4309689 () Bool)

(declare-fun e!2680177 () Bool)

(assert (=> b!4309689 (= e!2680177 e!2680175)))

(declare-fun res!1766322 () Bool)

(assert (=> b!4309689 (= res!1766322 call!297867)))

(assert (=> b!4309689 (=> (not res!1766322) (not e!2680175))))

(declare-fun b!4309690 () Bool)

(declare-fun res!1766316 () Bool)

(assert (=> b!4309690 (= res!1766316 call!297859)))

(declare-fun e!2680187 () Bool)

(assert (=> b!4309690 (=> (not res!1766316) (not e!2680187))))

(declare-fun b!4309691 () Bool)

(declare-fun res!1766321 () Bool)

(assert (=> b!4309691 (= res!1766321 call!297855)))

(assert (=> b!4309691 (=> (not res!1766321) (not e!2680183))))

(declare-fun bm!297858 () Bool)

(assert (=> bm!297858 (= call!297853 call!297864)))

(declare-fun bm!297859 () Bool)

(assert (=> bm!297859 (= call!297854 call!297862)))

(declare-fun b!4309692 () Bool)

(assert (=> b!4309692 (= e!2680178 ((_ is Undefined!14) lt!1530466))))

(declare-fun b!4309693 () Bool)

(declare-fun lt!1530461 () tuple2!46616)

(assert (=> b!4309693 (= e!2680189 (tuple2!46617 (_1!26587 lt!1530461) (_2!26587 lt!1530461)))))

(assert (=> b!4309693 (= lt!1530461 call!297866)))

(declare-fun b!4309694 () Bool)

(declare-fun lt!1530444 () Unit!67290)

(assert (=> b!4309694 (= lt!1530444 e!2680185)))

(assert (=> b!4309694 (= c!732730 call!297860)))

(assert (=> b!4309694 (= e!2680192 (tuple2!46617 false (v!42309 (underlying!9543 (_2!26586 lt!1530263)))))))

(declare-fun b!4309695 () Bool)

(declare-fun e!2680186 () Unit!67290)

(declare-fun lt!1530447 () Unit!67290)

(assert (=> b!4309695 (= e!2680186 lt!1530447)))

(assert (=> b!4309695 (= lt!1530447 call!297851)))

(declare-fun call!297852 () SeekEntryResult!14)

(assert (=> b!4309695 (= lt!1530460 call!297852)))

(declare-fun res!1766315 () Bool)

(assert (=> b!4309695 (= res!1766315 ((_ is Found!14) lt!1530460))))

(assert (=> b!4309695 (=> (not res!1766315) (not e!2680187))))

(assert (=> b!4309695 e!2680187))

(declare-fun b!4309696 () Bool)

(assert (=> b!4309696 (= e!2680181 (not call!297870))))

(declare-fun b!4309697 () Bool)

(declare-fun res!1766320 () Bool)

(declare-fun e!2680191 () Bool)

(assert (=> b!4309697 (=> (not res!1766320) (not e!2680191))))

(assert (=> b!4309697 (= res!1766320 call!297867)))

(declare-fun e!2680174 () Bool)

(assert (=> b!4309697 (= e!2680174 e!2680191)))

(declare-fun bm!297860 () Bool)

(assert (=> bm!297860 (= call!297855 call!297865)))

(declare-fun b!4309698 () Bool)

(declare-fun res!1766318 () Bool)

(assert (=> b!4309698 (=> (not res!1766318) (not e!2680191))))

(assert (=> b!4309698 (= res!1766318 (= (select (arr!7499 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))) (index!1436 lt!1530443)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4309699 () Bool)

(assert (=> b!4309699 (= e!2680188 e!2680184)))

(declare-fun res!1766314 () Bool)

(assert (=> b!4309699 (= res!1766314 (contains!10156 call!297858 lt!1530248))))

(assert (=> b!4309699 (=> (not res!1766314) (not e!2680184))))

(declare-fun bm!297861 () Bool)

(assert (=> bm!297861 (= call!297858 (map!10176 (_2!26587 lt!1530441)))))

(declare-fun b!4309700 () Bool)

(assert (=> b!4309700 (= e!2680191 (not call!297872))))

(declare-fun bm!297862 () Bool)

(assert (=> bm!297862 (= call!297859 call!297865)))

(declare-fun bm!297863 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!4 (array!16786 array!16788 (_ BitVec 32) (_ BitVec 32) List!48310 List!48310 (_ BitVec 64) Int) Unit!67290)

(assert (=> bm!297863 (= call!297851 (lemmaInListMapThenSeekEntryOrOpenFindsIt!4 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (mask!13214 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (extraKeys!4906 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (zeroValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (minValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) lt!1530248 (defaultEntry!5042 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))))))

(declare-fun bm!297864 () Bool)

(assert (=> bm!297864 (= call!297862 (getCurrentListMap!17 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (mask!13214 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (extraKeys!4906 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (zeroValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (minValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) #b00000000000000000000000000000000 (defaultEntry!5042 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))))))

(declare-fun b!4309701 () Bool)

(assert (=> b!4309701 (= e!2680190 (not call!297870))))

(declare-fun b!4309702 () Bool)

(declare-fun res!1766313 () Bool)

(assert (=> b!4309702 (= res!1766313 (= (select (arr!7499 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))) (index!1437 lt!1530443)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4309702 (=> (not res!1766313) (not e!2680175))))

(declare-fun b!4309703 () Bool)

(assert (=> b!4309703 (= e!2680187 (= (select (arr!7499 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))) (index!1435 lt!1530460)) lt!1530248))))

(declare-fun b!4309704 () Bool)

(declare-fun c!732735 () Bool)

(assert (=> b!4309704 (= c!732735 ((_ is MissingVacant!14) lt!1530443))))

(assert (=> b!4309704 (= e!2680174 e!2680177)))

(declare-fun b!4309705 () Bool)

(declare-fun lt!1530450 () Unit!67290)

(declare-fun lt!1530456 () Unit!67290)

(assert (=> b!4309705 (= lt!1530450 lt!1530456)))

(assert (=> b!4309705 (= call!297853 call!297869)))

(declare-fun lt!1530464 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!4 (array!16786 array!16788 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48310 List!48310 List!48310 Int) Unit!67290)

(assert (=> b!4309705 (= lt!1530456 (lemmaChangeLongMinValueKeyThenAddPairToListMap!4 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (mask!13214 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (extraKeys!4906 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) lt!1530464 (zeroValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (minValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048)) (defaultEntry!5042 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))))))

(assert (=> b!4309705 (= lt!1530464 (bvor (extraKeys!4906 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) #b00000000000000000000000000000010))))

(assert (=> b!4309705 (= e!2680173 (tuple2!46617 true (LongMapFixedSize!9315 (defaultEntry!5042 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (mask!13214 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (bvor (extraKeys!4906 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) #b00000000000000000000000000000010) (zeroValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048)) (_size!9357 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (_vacant!4718 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))))))))

(declare-fun b!4309706 () Bool)

(declare-fun res!1766311 () Bool)

(assert (=> b!4309706 (=> (not res!1766311) (not e!2680181))))

(assert (=> b!4309706 (= res!1766311 (= (select (arr!7499 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))) (index!1436 lt!1530466)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4309707 () Bool)

(declare-fun c!732738 () Bool)

(assert (=> b!4309707 (= c!732738 ((_ is MissingVacant!14) lt!1530466))))

(assert (=> b!4309707 (= e!2680179 e!2680178)))

(declare-fun bm!297865 () Bool)

(assert (=> bm!297865 (= call!297852 call!297863)))

(declare-fun b!4309708 () Bool)

(declare-fun Unit!67303 () Unit!67290)

(assert (=> b!4309708 (= e!2680186 Unit!67303)))

(declare-fun lt!1530442 () Unit!67290)

(assert (=> b!4309708 (= lt!1530442 call!297871)))

(assert (=> b!4309708 (= lt!1530443 call!297852)))

(assert (=> b!4309708 (= c!732733 ((_ is MissingZero!14) lt!1530443))))

(assert (=> b!4309708 e!2680174))

(declare-fun lt!1530445 () Unit!67290)

(assert (=> b!4309708 (= lt!1530445 lt!1530442)))

(assert (=> b!4309708 false))

(declare-fun b!4309709 () Bool)

(declare-fun lt!1530446 () Unit!67290)

(declare-fun lt!1530452 () Unit!67290)

(assert (=> b!4309709 (= lt!1530446 lt!1530452)))

(assert (=> b!4309709 call!297860))

(declare-fun lemmaValidKeyInArrayIsInListMap!7 (array!16786 array!16788 (_ BitVec 32) (_ BitVec 32) List!48310 List!48310 (_ BitVec 32) Int) Unit!67290)

(assert (=> b!4309709 (= lt!1530452 (lemmaValidKeyInArrayIsInListMap!7 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) lt!1530457 (mask!13214 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (extraKeys!4906 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (zeroValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (minValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (index!1435 lt!1530451) (defaultEntry!5042 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))))))

(assert (=> b!4309709 (= lt!1530457 (array!16789 (store (arr!7500 (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))) (index!1435 lt!1530451) (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))) (size!35539 (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))))))))

(declare-fun lt!1530449 () Unit!67290)

(declare-fun lt!1530462 () Unit!67290)

(assert (=> b!4309709 (= lt!1530449 lt!1530462)))

(assert (=> b!4309709 (= call!297864 call!297868)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!4 (array!16786 array!16788 (_ BitVec 32) (_ BitVec 32) List!48310 List!48310 (_ BitVec 32) (_ BitVec 64) List!48310 Int) Unit!67290)

(assert (=> b!4309709 (= lt!1530462 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!4 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (mask!13214 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (extraKeys!4906 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (zeroValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (minValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (index!1435 lt!1530451) lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048)) (defaultEntry!5042 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))))))

(declare-fun lt!1530465 () Unit!67290)

(assert (=> b!4309709 (= lt!1530465 e!2680186)))

(assert (=> b!4309709 (= c!732727 (contains!10156 call!297862 lt!1530248))))

(assert (=> b!4309709 (= e!2680182 (tuple2!46617 true (LongMapFixedSize!9315 (defaultEntry!5042 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (mask!13214 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (extraKeys!4906 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (zeroValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (minValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (_size!9357 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (array!16789 (store (arr!7500 (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))) (index!1435 lt!1530451) (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))) (size!35539 (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))))) (_vacant!4718 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))))))))

(declare-fun bm!297866 () Bool)

(declare-fun updateHelperNewKey!4 (LongMapFixedSize!9314 (_ BitVec 64) List!48310 (_ BitVec 32)) tuple2!46616)

(assert (=> bm!297866 (= call!297866 (updateHelperNewKey!4 (v!42309 (underlying!9543 (_2!26586 lt!1530263))) lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048)) (ite c!732731 (index!1437 lt!1530451) (index!1436 lt!1530451))))))

(declare-fun bm!297867 () Bool)

(assert (=> bm!297867 (= call!297861 call!297863)))

(declare-fun b!4309710 () Bool)

(declare-fun lt!1530463 () Unit!67290)

(assert (=> b!4309710 (= e!2680185 lt!1530463)))

(assert (=> b!4309710 (= lt!1530463 call!297871)))

(assert (=> b!4309710 (= lt!1530466 call!297861)))

(assert (=> b!4309710 (= c!732737 ((_ is MissingZero!14) lt!1530466))))

(assert (=> b!4309710 e!2680179))

(declare-fun bm!297868 () Bool)

(assert (=> bm!297868 (= call!297868 (getCurrentListMap!17 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (ite c!732732 (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (array!16789 (store (arr!7500 (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))) (index!1435 lt!1530451) (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))) (size!35539 (_values!4938 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))))) (mask!13214 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (ite c!732732 (ite c!732729 lt!1530454 lt!1530464) (extraKeys!4906 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))) (ite (and c!732732 c!732729) (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048)) (zeroValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))) (ite c!732732 (ite c!732729 (minValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263)))) (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))) (minValue!4916 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))) #b00000000000000000000000000000000 (defaultEntry!5042 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))))))

(declare-fun b!4309711 () Bool)

(assert (=> b!4309711 (= e!2680183 (= (select (arr!7499 (_keys!4957 (v!42309 (underlying!9543 (_2!26586 lt!1530263))))) (index!1435 lt!1530448)) lt!1530248))))

(declare-fun b!4309712 () Bool)

(assert (=> b!4309712 (= e!2680177 ((_ is Undefined!14) lt!1530443))))

(assert (= (and d!1267919 c!732732) b!4309677))

(assert (= (and d!1267919 (not c!732732)) b!4309688))

(assert (= (and b!4309677 c!732729) b!4309679))

(assert (= (and b!4309677 (not c!732729)) b!4309705))

(assert (= (or b!4309679 b!4309705) bm!297859))

(assert (= (or b!4309679 b!4309705) bm!297850))

(assert (= (or b!4309679 b!4309705) bm!297858))

(assert (= (and b!4309688 c!732728) b!4309694))

(assert (= (and b!4309688 (not c!732728)) b!4309685))

(assert (= (and b!4309694 c!732730) b!4309683))

(assert (= (and b!4309694 (not c!732730)) b!4309710))

(assert (= (and b!4309683 res!1766319) b!4309691))

(assert (= (and b!4309691 res!1766321) b!4309711))

(assert (= (and b!4309710 c!732737) b!4309682))

(assert (= (and b!4309710 (not c!732737)) b!4309707))

(assert (= (and b!4309682 res!1766317) b!4309706))

(assert (= (and b!4309706 res!1766311) b!4309696))

(assert (= (and b!4309707 c!732738) b!4309687))

(assert (= (and b!4309707 (not c!732738)) b!4309692))

(assert (= (and b!4309687 res!1766309) b!4309678))

(assert (= (and b!4309678 res!1766310) b!4309701))

(assert (= (or b!4309696 b!4309701) bm!297847))

(assert (= (or b!4309682 b!4309687) bm!297855))

(assert (= (or b!4309691 bm!297855) bm!297860))

(assert (= (or b!4309683 b!4309710) bm!297867))

(assert (= (and b!4309685 c!732731) b!4309693))

(assert (= (and b!4309685 (not c!732731)) b!4309680))

(assert (= (and b!4309680 c!732734) b!4309676))

(assert (= (and b!4309680 (not c!732734)) b!4309709))

(assert (= (and b!4309709 c!732727) b!4309695))

(assert (= (and b!4309709 (not c!732727)) b!4309708))

(assert (= (and b!4309695 res!1766315) b!4309690))

(assert (= (and b!4309690 res!1766316) b!4309703))

(assert (= (and b!4309708 c!732733) b!4309697))

(assert (= (and b!4309708 (not c!732733)) b!4309704))

(assert (= (and b!4309697 res!1766320) b!4309698))

(assert (= (and b!4309698 res!1766318) b!4309700))

(assert (= (and b!4309704 c!732735) b!4309689))

(assert (= (and b!4309704 (not c!732735)) b!4309712))

(assert (= (and b!4309689 res!1766322) b!4309702))

(assert (= (and b!4309702 res!1766313) b!4309684))

(assert (= (or b!4309700 b!4309684) bm!297846))

(assert (= (or b!4309697 b!4309689) bm!297848))

(assert (= (or b!4309690 bm!297848) bm!297862))

(assert (= (or b!4309695 b!4309708) bm!297865))

(assert (= (or b!4309693 b!4309676) bm!297866))

(assert (= (or bm!297867 bm!297865) bm!297845))

(assert (= (or bm!297860 bm!297862) bm!297852))

(assert (= (or bm!297847 bm!297846) bm!297849))

(assert (= (or b!4309710 b!4309708) bm!297853))

(assert (= (or b!4309683 b!4309695) bm!297863))

(assert (= (or b!4309694 b!4309709) bm!297857))

(assert (= (or b!4309694 b!4309709) bm!297856))

(assert (= (or bm!297859 b!4309709) bm!297864))

(assert (= (or bm!297850 b!4309709) bm!297868))

(assert (= (or bm!297858 b!4309709) bm!297854))

(assert (= (and d!1267919 res!1766312) b!4309675))

(assert (= (and b!4309675 c!732736) b!4309699))

(assert (= (and b!4309675 (not c!732736)) b!4309681))

(assert (= (and b!4309699 res!1766314) b!4309686))

(assert (= (or b!4309686 b!4309681) bm!297851))

(assert (= (or b!4309699 b!4309686 b!4309681) bm!297861))

(declare-fun m!4902647 () Bool)

(assert (=> b!4309711 m!4902647))

(declare-fun m!4902649 () Bool)

(assert (=> bm!297864 m!4902649))

(declare-fun m!4902651 () Bool)

(assert (=> bm!297854 m!4902651))

(declare-fun m!4902653 () Bool)

(assert (=> bm!297851 m!4902653))

(declare-fun m!4902655 () Bool)

(assert (=> bm!297857 m!4902655))

(declare-fun m!4902657 () Bool)

(assert (=> b!4309705 m!4902657))

(declare-fun m!4902659 () Bool)

(assert (=> bm!297845 m!4902659))

(declare-fun m!4902661 () Bool)

(assert (=> bm!297861 m!4902661))

(assert (=> b!4309688 m!4902659))

(declare-fun m!4902663 () Bool)

(assert (=> bm!297856 m!4902663))

(declare-fun m!4902665 () Bool)

(assert (=> bm!297856 m!4902665))

(declare-fun m!4902667 () Bool)

(assert (=> bm!297853 m!4902667))

(declare-fun m!4902669 () Bool)

(assert (=> b!4309702 m!4902669))

(declare-fun m!4902671 () Bool)

(assert (=> b!4309678 m!4902671))

(declare-fun m!4902673 () Bool)

(assert (=> b!4309699 m!4902673))

(declare-fun m!4902675 () Bool)

(assert (=> bm!297863 m!4902675))

(declare-fun m!4902677 () Bool)

(assert (=> bm!297852 m!4902677))

(declare-fun m!4902679 () Bool)

(assert (=> b!4309703 m!4902679))

(declare-fun m!4902681 () Bool)

(assert (=> b!4309706 m!4902681))

(declare-fun m!4902683 () Bool)

(assert (=> b!4309709 m!4902683))

(declare-fun m!4902685 () Bool)

(assert (=> b!4309709 m!4902685))

(declare-fun m!4902687 () Bool)

(assert (=> b!4309709 m!4902687))

(declare-fun m!4902689 () Bool)

(assert (=> b!4309709 m!4902689))

(declare-fun m!4902691 () Bool)

(assert (=> bm!297866 m!4902691))

(declare-fun m!4902693 () Bool)

(assert (=> b!4309686 m!4902693))

(declare-fun m!4902695 () Bool)

(assert (=> d!1267919 m!4902695))

(declare-fun m!4902697 () Bool)

(assert (=> d!1267919 m!4902697))

(declare-fun m!4902699 () Bool)

(assert (=> b!4309679 m!4902699))

(declare-fun m!4902701 () Bool)

(assert (=> b!4309698 m!4902701))

(assert (=> bm!297868 m!4902685))

(declare-fun m!4902703 () Bool)

(assert (=> bm!297868 m!4902703))

(declare-fun m!4902705 () Bool)

(assert (=> bm!297849 m!4902705))

(assert (=> b!4309450 d!1267919))

(declare-fun d!1267921 () Bool)

(assert (=> d!1267921 (= (imbalanced!49 (v!42310 (underlying!9544 thiss!42308))) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!9357 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (_vacant!4718 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))))) (mask!13214 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) (bvsgt (_vacant!4718 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (_size!9357 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))))))))

(assert (=> d!1267879 d!1267921))

(declare-fun d!1267923 () Bool)

(assert (=> d!1267923 (= (valid!3646 (v!42310 (underlying!9544 thiss!42308))) (valid!3647 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))))))

(declare-fun bs!605003 () Bool)

(assert (= bs!605003 d!1267923))

(declare-fun m!4902707 () Bool)

(assert (=> bs!605003 m!4902707))

(assert (=> d!1267879 d!1267923))

(assert (=> bm!297790 d!1267885))

(declare-fun d!1267925 () Bool)

(declare-fun res!1766327 () Bool)

(declare-fun e!2680197 () Bool)

(assert (=> d!1267925 (=> res!1766327 e!2680197)))

(assert (=> d!1267925 (= res!1766327 (and ((_ is Cons!48186) lt!1530267) (= (_1!26584 (h!53620 lt!1530267)) key!2048)))))

(assert (=> d!1267925 (= (containsKey!307 lt!1530267 key!2048) e!2680197)))

(declare-fun b!4309717 () Bool)

(declare-fun e!2680198 () Bool)

(assert (=> b!4309717 (= e!2680197 e!2680198)))

(declare-fun res!1766328 () Bool)

(assert (=> b!4309717 (=> (not res!1766328) (not e!2680198))))

(assert (=> b!4309717 (= res!1766328 ((_ is Cons!48186) lt!1530267))))

(declare-fun b!4309718 () Bool)

(assert (=> b!4309718 (= e!2680198 (containsKey!307 (t!355111 lt!1530267) key!2048))))

(assert (= (and d!1267925 (not res!1766327)) b!4309717))

(assert (= (and b!4309717 res!1766328) b!4309718))

(declare-fun m!4902709 () Bool)

(assert (=> b!4309718 m!4902709))

(assert (=> d!1267881 d!1267925))

(declare-fun d!1267927 () Bool)

(declare-fun res!1766333 () Bool)

(declare-fun e!2680203 () Bool)

(assert (=> d!1267927 (=> res!1766333 e!2680203)))

(assert (=> d!1267927 (= res!1766333 (not ((_ is Cons!48186) (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248))))))

(assert (=> d!1267927 (= (noDuplicateKeys!208 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248)) e!2680203)))

(declare-fun b!4309723 () Bool)

(declare-fun e!2680204 () Bool)

(assert (=> b!4309723 (= e!2680203 e!2680204)))

(declare-fun res!1766334 () Bool)

(assert (=> b!4309723 (=> (not res!1766334) (not e!2680204))))

(assert (=> b!4309723 (= res!1766334 (not (containsKey!307 (t!355111 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248)) (_1!26584 (h!53620 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248))))))))

(declare-fun b!4309724 () Bool)

(assert (=> b!4309724 (= e!2680204 (noDuplicateKeys!208 (t!355111 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248))))))

(assert (= (and d!1267927 (not res!1766333)) b!4309723))

(assert (= (and b!4309723 res!1766334) b!4309724))

(declare-fun m!4902711 () Bool)

(assert (=> b!4309723 m!4902711))

(declare-fun m!4902713 () Bool)

(assert (=> b!4309724 m!4902713))

(assert (=> d!1267881 d!1267927))

(declare-fun d!1267929 () Bool)

(assert (=> d!1267929 true))

(assert (=> d!1267929 true))

(declare-fun lambda!132888 () Int)

(declare-fun forall!8727 (List!48310 Int) Bool)

(assert (=> d!1267929 (= (allKeysSameHash!183 (_2!26585 (h!53621 (toList!2395 lt!1530249))) (_1!26585 (h!53621 (toList!2395 lt!1530249))) (hashF!6689 thiss!42308)) (forall!8727 (_2!26585 (h!53621 (toList!2395 lt!1530249))) lambda!132888))))

(declare-fun bs!605004 () Bool)

(assert (= bs!605004 d!1267929))

(declare-fun m!4902715 () Bool)

(assert (=> bs!605004 m!4902715))

(assert (=> bs!604994 d!1267929))

(declare-fun d!1267931 () Bool)

(assert (=> d!1267931 (contains!10159 lt!1530324 (tuple2!46613 lt!1530315 lt!1530322))))

(declare-fun lt!1530470 () Unit!67290)

(declare-fun choose!26248 (List!48311 (_ BitVec 64) List!48310) Unit!67290)

(assert (=> d!1267931 (= lt!1530470 (choose!26248 lt!1530324 lt!1530315 lt!1530322))))

(declare-fun e!2680207 () Bool)

(assert (=> d!1267931 e!2680207))

(declare-fun res!1766337 () Bool)

(assert (=> d!1267931 (=> (not res!1766337) (not e!2680207))))

(declare-fun isStrictlySorted!13 (List!48311) Bool)

(assert (=> d!1267931 (= res!1766337 (isStrictlySorted!13 lt!1530324))))

(assert (=> d!1267931 (= (lemmaGetValueByKeyImpliesContainsTuple!142 lt!1530324 lt!1530315 lt!1530322) lt!1530470)))

(declare-fun b!4309731 () Bool)

(assert (=> b!4309731 (= e!2680207 (= (getValueByKey!252 lt!1530324 lt!1530315) (Some!10223 lt!1530322)))))

(assert (= (and d!1267931 res!1766337) b!4309731))

(assert (=> d!1267931 m!4902519))

(declare-fun m!4902717 () Bool)

(assert (=> d!1267931 m!4902717))

(declare-fun m!4902719 () Bool)

(assert (=> d!1267931 m!4902719))

(declare-fun m!4902721 () Bool)

(assert (=> b!4309731 m!4902721))

(assert (=> b!4309503 d!1267931))

(declare-fun d!1267933 () Bool)

(declare-fun e!2680208 () Bool)

(assert (=> d!1267933 e!2680208))

(declare-fun c!732739 () Bool)

(assert (=> d!1267933 (= c!732739 (contains!10157 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))))

(declare-fun lt!1530471 () List!48310)

(assert (=> d!1267933 (= lt!1530471 (apply!11009 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))) lt!1530315))))

(assert (=> d!1267933 (valid!3646 (v!42310 (underlying!9544 thiss!42308)))))

(assert (=> d!1267933 (= (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315) lt!1530471)))

(declare-fun b!4309732 () Bool)

(assert (=> b!4309732 (= e!2680208 (= lt!1530471 (get!15589 (getValueByKey!252 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) lt!1530315))))))

(declare-fun b!4309733 () Bool)

(assert (=> b!4309733 (= e!2680208 (= lt!1530471 (dynLambda!20429 (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) lt!1530315)))))

(assert (=> b!4309733 ((_ is LongMap!4657) (v!42310 (underlying!9544 thiss!42308)))))

(assert (= (and d!1267933 c!732739) b!4309732))

(assert (= (and d!1267933 (not c!732739)) b!4309733))

(declare-fun b_lambda!126595 () Bool)

(assert (=> (not b_lambda!126595) (not b!4309733)))

(declare-fun t!355116 () Bool)

(declare-fun tb!257289 () Bool)

(assert (=> (and b!4309398 (= (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) t!355116) tb!257289))

(assert (=> b!4309733 t!355116))

(declare-fun result!314682 () Bool)

(declare-fun b_and!340009 () Bool)

(assert (= b_and!340007 (and (=> t!355116 result!314682) b_and!340009)))

(assert (=> d!1267933 m!4902509))

(declare-fun m!4902723 () Bool)

(assert (=> d!1267933 m!4902723))

(assert (=> d!1267933 m!4902469))

(assert (=> b!4309732 m!4902443))

(declare-fun m!4902725 () Bool)

(assert (=> b!4309732 m!4902725))

(assert (=> b!4309732 m!4902725))

(declare-fun m!4902727 () Bool)

(assert (=> b!4309732 m!4902727))

(declare-fun m!4902729 () Bool)

(assert (=> b!4309733 m!4902729))

(assert (=> b!4309503 d!1267933))

(declare-fun d!1267935 () Bool)

(assert (=> d!1267935 (containsKey!308 lt!1530325 lt!1530315)))

(declare-fun lt!1530474 () Unit!67290)

(declare-fun choose!26249 (List!48311 (_ BitVec 64)) Unit!67290)

(assert (=> d!1267935 (= lt!1530474 (choose!26249 lt!1530325 lt!1530315))))

(declare-fun e!2680211 () Bool)

(assert (=> d!1267935 e!2680211))

(declare-fun res!1766340 () Bool)

(assert (=> d!1267935 (=> (not res!1766340) (not e!2680211))))

(assert (=> d!1267935 (= res!1766340 (isStrictlySorted!13 lt!1530325))))

(assert (=> d!1267935 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!132 lt!1530325 lt!1530315) lt!1530474)))

(declare-fun b!4309736 () Bool)

(assert (=> b!4309736 (= e!2680211 (isDefined!7527 (getValueByKey!252 lt!1530325 lt!1530315)))))

(assert (= (and d!1267935 res!1766340) b!4309736))

(assert (=> d!1267935 m!4902517))

(declare-fun m!4902731 () Bool)

(assert (=> d!1267935 m!4902731))

(declare-fun m!4902733 () Bool)

(assert (=> d!1267935 m!4902733))

(declare-fun m!4902735 () Bool)

(assert (=> b!4309736 m!4902735))

(assert (=> b!4309736 m!4902735))

(declare-fun m!4902737 () Bool)

(assert (=> b!4309736 m!4902737))

(assert (=> b!4309503 d!1267935))

(declare-fun lt!1530477 () Bool)

(declare-fun d!1267937 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7554 (List!48311) (InoxSet tuple2!46612))

(assert (=> d!1267937 (= lt!1530477 (select (content!7554 lt!1530324) (tuple2!46613 lt!1530315 lt!1530322)))))

(declare-fun e!2680217 () Bool)

(assert (=> d!1267937 (= lt!1530477 e!2680217)))

(declare-fun res!1766345 () Bool)

(assert (=> d!1267937 (=> (not res!1766345) (not e!2680217))))

(assert (=> d!1267937 (= res!1766345 ((_ is Cons!48187) lt!1530324))))

(assert (=> d!1267937 (= (contains!10159 lt!1530324 (tuple2!46613 lt!1530315 lt!1530322)) lt!1530477)))

(declare-fun b!4309741 () Bool)

(declare-fun e!2680216 () Bool)

(assert (=> b!4309741 (= e!2680217 e!2680216)))

(declare-fun res!1766346 () Bool)

(assert (=> b!4309741 (=> res!1766346 e!2680216)))

(assert (=> b!4309741 (= res!1766346 (= (h!53621 lt!1530324) (tuple2!46613 lt!1530315 lt!1530322)))))

(declare-fun b!4309742 () Bool)

(assert (=> b!4309742 (= e!2680216 (contains!10159 (t!355112 lt!1530324) (tuple2!46613 lt!1530315 lt!1530322)))))

(assert (= (and d!1267937 res!1766345) b!4309741))

(assert (= (and b!4309741 (not res!1766346)) b!4309742))

(declare-fun m!4902739 () Bool)

(assert (=> d!1267937 m!4902739))

(declare-fun m!4902741 () Bool)

(assert (=> d!1267937 m!4902741))

(declare-fun m!4902743 () Bool)

(assert (=> b!4309742 m!4902743))

(assert (=> b!4309503 d!1267937))

(declare-fun b!4309751 () Bool)

(declare-fun e!2680222 () Option!10224)

(assert (=> b!4309751 (= e!2680222 (Some!10223 (_2!26585 (h!53621 lt!1530323))))))

(declare-fun b!4309754 () Bool)

(declare-fun e!2680223 () Option!10224)

(assert (=> b!4309754 (= e!2680223 None!10223)))

(declare-fun d!1267939 () Bool)

(declare-fun c!732744 () Bool)

(assert (=> d!1267939 (= c!732744 (and ((_ is Cons!48187) lt!1530323) (= (_1!26585 (h!53621 lt!1530323)) lt!1530315)))))

(assert (=> d!1267939 (= (getValueByKey!252 lt!1530323 lt!1530315) e!2680222)))

(declare-fun b!4309752 () Bool)

(assert (=> b!4309752 (= e!2680222 e!2680223)))

(declare-fun c!732745 () Bool)

(assert (=> b!4309752 (= c!732745 (and ((_ is Cons!48187) lt!1530323) (not (= (_1!26585 (h!53621 lt!1530323)) lt!1530315))))))

(declare-fun b!4309753 () Bool)

(assert (=> b!4309753 (= e!2680223 (getValueByKey!252 (t!355112 lt!1530323) lt!1530315))))

(assert (= (and d!1267939 c!732744) b!4309751))

(assert (= (and d!1267939 (not c!732744)) b!4309752))

(assert (= (and b!4309752 c!732745) b!4309753))

(assert (= (and b!4309752 (not c!732745)) b!4309754))

(declare-fun m!4902745 () Bool)

(assert (=> b!4309753 m!4902745))

(assert (=> b!4309503 d!1267939))

(declare-fun d!1267941 () Bool)

(declare-fun isEmpty!28085 (Option!10224) Bool)

(assert (=> d!1267941 (= (isDefined!7527 (getValueByKey!252 lt!1530323 lt!1530315)) (not (isEmpty!28085 (getValueByKey!252 lt!1530323 lt!1530315))))))

(declare-fun bs!605005 () Bool)

(assert (= bs!605005 d!1267941))

(assert (=> bs!605005 m!4902521))

(declare-fun m!4902747 () Bool)

(assert (=> bs!605005 m!4902747))

(assert (=> b!4309503 d!1267941))

(declare-fun d!1267943 () Bool)

(declare-fun res!1766351 () Bool)

(declare-fun e!2680228 () Bool)

(assert (=> d!1267943 (=> res!1766351 e!2680228)))

(assert (=> d!1267943 (= res!1766351 (and ((_ is Cons!48187) lt!1530325) (= (_1!26585 (h!53621 lt!1530325)) lt!1530315)))))

(assert (=> d!1267943 (= (containsKey!308 lt!1530325 lt!1530315) e!2680228)))

(declare-fun b!4309759 () Bool)

(declare-fun e!2680229 () Bool)

(assert (=> b!4309759 (= e!2680228 e!2680229)))

(declare-fun res!1766352 () Bool)

(assert (=> b!4309759 (=> (not res!1766352) (not e!2680229))))

(assert (=> b!4309759 (= res!1766352 (and (or (not ((_ is Cons!48187) lt!1530325)) (bvsle (_1!26585 (h!53621 lt!1530325)) lt!1530315)) ((_ is Cons!48187) lt!1530325) (bvslt (_1!26585 (h!53621 lt!1530325)) lt!1530315)))))

(declare-fun b!4309760 () Bool)

(assert (=> b!4309760 (= e!2680229 (containsKey!308 (t!355112 lt!1530325) lt!1530315))))

(assert (= (and d!1267943 (not res!1766351)) b!4309759))

(assert (= (and b!4309759 res!1766352) b!4309760))

(declare-fun m!4902749 () Bool)

(assert (=> b!4309760 m!4902749))

(assert (=> b!4309503 d!1267943))

(declare-fun d!1267945 () Bool)

(assert (=> d!1267945 (isDefined!7527 (getValueByKey!252 lt!1530323 lt!1530315))))

(declare-fun lt!1530480 () Unit!67290)

(declare-fun choose!26250 (List!48311 (_ BitVec 64)) Unit!67290)

(assert (=> d!1267945 (= lt!1530480 (choose!26250 lt!1530323 lt!1530315))))

(declare-fun e!2680232 () Bool)

(assert (=> d!1267945 e!2680232))

(declare-fun res!1766355 () Bool)

(assert (=> d!1267945 (=> (not res!1766355) (not e!2680232))))

(assert (=> d!1267945 (= res!1766355 (isStrictlySorted!13 lt!1530323))))

(assert (=> d!1267945 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!172 lt!1530323 lt!1530315) lt!1530480)))

(declare-fun b!4309763 () Bool)

(assert (=> b!4309763 (= e!2680232 (containsKey!308 lt!1530323 lt!1530315))))

(assert (= (and d!1267945 res!1766355) b!4309763))

(assert (=> d!1267945 m!4902521))

(assert (=> d!1267945 m!4902521))

(assert (=> d!1267945 m!4902531))

(declare-fun m!4902751 () Bool)

(assert (=> d!1267945 m!4902751))

(declare-fun m!4902753 () Bool)

(assert (=> d!1267945 m!4902753))

(declare-fun m!4902755 () Bool)

(assert (=> b!4309763 m!4902755))

(assert (=> b!4309503 d!1267945))

(assert (=> b!4309503 d!1267889))

(declare-fun d!1267947 () Bool)

(declare-fun res!1766356 () Bool)

(declare-fun e!2680233 () Bool)

(assert (=> d!1267947 (=> res!1766356 e!2680233)))

(assert (=> d!1267947 (= res!1766356 ((_ is Nil!48187) (t!355112 (toList!2395 lt!1530249))))))

(assert (=> d!1267947 (= (forall!8726 (t!355112 (toList!2395 lt!1530249)) lambda!132876) e!2680233)))

(declare-fun b!4309764 () Bool)

(declare-fun e!2680234 () Bool)

(assert (=> b!4309764 (= e!2680233 e!2680234)))

(declare-fun res!1766357 () Bool)

(assert (=> b!4309764 (=> (not res!1766357) (not e!2680234))))

(assert (=> b!4309764 (= res!1766357 (dynLambda!20428 lambda!132876 (h!53621 (t!355112 (toList!2395 lt!1530249)))))))

(declare-fun b!4309765 () Bool)

(assert (=> b!4309765 (= e!2680234 (forall!8726 (t!355112 (t!355112 (toList!2395 lt!1530249))) lambda!132876))))

(assert (= (and d!1267947 (not res!1766356)) b!4309764))

(assert (= (and b!4309764 res!1766357) b!4309765))

(declare-fun b_lambda!126597 () Bool)

(assert (=> (not b_lambda!126597) (not b!4309764)))

(declare-fun m!4902757 () Bool)

(assert (=> b!4309764 m!4902757))

(declare-fun m!4902759 () Bool)

(assert (=> b!4309765 m!4902759))

(assert (=> b!4309423 d!1267947))

(declare-fun d!1267949 () Bool)

(assert (=> d!1267949 (dynLambda!20428 lambda!132882 (tuple2!46613 lt!1530315 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315)))))

(declare-fun lt!1530483 () Unit!67290)

(declare-fun choose!26251 (List!48311 Int tuple2!46612) Unit!67290)

(assert (=> d!1267949 (= lt!1530483 (choose!26251 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) lambda!132882 (tuple2!46613 lt!1530315 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))))))

(declare-fun e!2680237 () Bool)

(assert (=> d!1267949 e!2680237))

(declare-fun res!1766360 () Bool)

(assert (=> d!1267949 (=> (not res!1766360) (not e!2680237))))

(assert (=> d!1267949 (= res!1766360 (forall!8726 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) lambda!132882))))

(assert (=> d!1267949 (= (forallContained!1498 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) lambda!132882 (tuple2!46613 lt!1530315 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))) lt!1530483)))

(declare-fun b!4309768 () Bool)

(assert (=> b!4309768 (= e!2680237 (contains!10159 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) (tuple2!46613 lt!1530315 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))))))

(assert (= (and d!1267949 res!1766360) b!4309768))

(declare-fun b_lambda!126599 () Bool)

(assert (=> (not b_lambda!126599) (not d!1267949)))

(declare-fun m!4902761 () Bool)

(assert (=> d!1267949 m!4902761))

(declare-fun m!4902763 () Bool)

(assert (=> d!1267949 m!4902763))

(declare-fun m!4902765 () Bool)

(assert (=> d!1267949 m!4902765))

(assert (=> b!4309768 m!4902535))

(assert (=> b!4309502 d!1267949))

(assert (=> b!4309502 d!1267889))

(assert (=> b!4309502 d!1267933))

(declare-fun d!1267951 () Bool)

(declare-fun lt!1530484 () Bool)

(assert (=> d!1267951 (= lt!1530484 (select (content!7554 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))) (tuple2!46613 lt!1530315 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))))))

(declare-fun e!2680239 () Bool)

(assert (=> d!1267951 (= lt!1530484 e!2680239)))

(declare-fun res!1766361 () Bool)

(assert (=> d!1267951 (=> (not res!1766361) (not e!2680239))))

(assert (=> d!1267951 (= res!1766361 ((_ is Cons!48187) (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))))))

(assert (=> d!1267951 (= (contains!10159 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) (tuple2!46613 lt!1530315 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))) lt!1530484)))

(declare-fun b!4309769 () Bool)

(declare-fun e!2680238 () Bool)

(assert (=> b!4309769 (= e!2680239 e!2680238)))

(declare-fun res!1766362 () Bool)

(assert (=> b!4309769 (=> res!1766362 e!2680238)))

(assert (=> b!4309769 (= res!1766362 (= (h!53621 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))) (tuple2!46613 lt!1530315 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))))))

(declare-fun b!4309770 () Bool)

(assert (=> b!4309770 (= e!2680238 (contains!10159 (t!355112 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))) (tuple2!46613 lt!1530315 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))))))

(assert (= (and d!1267951 res!1766361) b!4309769))

(assert (= (and b!4309769 (not res!1766362)) b!4309770))

(declare-fun m!4902767 () Bool)

(assert (=> d!1267951 m!4902767))

(declare-fun m!4902769 () Bool)

(assert (=> d!1267951 m!4902769))

(declare-fun m!4902771 () Bool)

(assert (=> b!4309770 m!4902771))

(assert (=> b!4309502 d!1267951))

(declare-fun d!1267953 () Bool)

(assert (=> d!1267953 (= (isDefined!7526 (getPair!131 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315) key!2048)) (not (isEmpty!28084 (getPair!131 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315) key!2048))))))

(declare-fun bs!605006 () Bool)

(assert (= bs!605006 d!1267953))

(assert (=> bs!605006 m!4902545))

(declare-fun m!4902773 () Bool)

(assert (=> bs!605006 m!4902773))

(assert (=> b!4309501 d!1267953))

(declare-fun lt!1530485 () Option!10225)

(declare-fun e!2680241 () Bool)

(declare-fun b!4309771 () Bool)

(assert (=> b!4309771 (= e!2680241 (contains!10162 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315) (get!15590 lt!1530485)))))

(declare-fun b!4309772 () Bool)

(declare-fun e!2680242 () Option!10225)

(assert (=> b!4309772 (= e!2680242 None!10224)))

(declare-fun b!4309773 () Bool)

(declare-fun res!1766366 () Bool)

(assert (=> b!4309773 (=> (not res!1766366) (not e!2680241))))

(assert (=> b!4309773 (= res!1766366 (= (_1!26584 (get!15590 lt!1530485)) key!2048))))

(declare-fun b!4309774 () Bool)

(declare-fun e!2680240 () Option!10225)

(assert (=> b!4309774 (= e!2680240 e!2680242)))

(declare-fun c!732747 () Bool)

(assert (=> b!4309774 (= c!732747 ((_ is Cons!48186) (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315)))))

(declare-fun d!1267955 () Bool)

(declare-fun e!2680244 () Bool)

(assert (=> d!1267955 e!2680244))

(declare-fun res!1766364 () Bool)

(assert (=> d!1267955 (=> res!1766364 e!2680244)))

(declare-fun e!2680243 () Bool)

(assert (=> d!1267955 (= res!1766364 e!2680243)))

(declare-fun res!1766363 () Bool)

(assert (=> d!1267955 (=> (not res!1766363) (not e!2680243))))

(assert (=> d!1267955 (= res!1766363 (isEmpty!28084 lt!1530485))))

(assert (=> d!1267955 (= lt!1530485 e!2680240)))

(declare-fun c!732746 () Bool)

(assert (=> d!1267955 (= c!732746 (and ((_ is Cons!48186) (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315)) (= (_1!26584 (h!53620 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))) key!2048)))))

(assert (=> d!1267955 (noDuplicateKeys!208 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))))

(assert (=> d!1267955 (= (getPair!131 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315) key!2048) lt!1530485)))

(declare-fun b!4309775 () Bool)

(assert (=> b!4309775 (= e!2680243 (not (containsKey!307 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315) key!2048)))))

(declare-fun b!4309776 () Bool)

(assert (=> b!4309776 (= e!2680244 e!2680241)))

(declare-fun res!1766365 () Bool)

(assert (=> b!4309776 (=> (not res!1766365) (not e!2680241))))

(assert (=> b!4309776 (= res!1766365 (isDefined!7526 lt!1530485))))

(declare-fun b!4309777 () Bool)

(assert (=> b!4309777 (= e!2680240 (Some!10224 (h!53620 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))))))

(declare-fun b!4309778 () Bool)

(assert (=> b!4309778 (= e!2680242 (getPair!131 (t!355111 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315)) key!2048))))

(assert (= (and d!1267955 c!732746) b!4309777))

(assert (= (and d!1267955 (not c!732746)) b!4309774))

(assert (= (and b!4309774 c!732747) b!4309778))

(assert (= (and b!4309774 (not c!732747)) b!4309772))

(assert (= (and d!1267955 res!1766363) b!4309775))

(assert (= (and d!1267955 (not res!1766364)) b!4309776))

(assert (= (and b!4309776 res!1766365) b!4309773))

(assert (= (and b!4309773 res!1766366) b!4309771))

(declare-fun m!4902775 () Bool)

(assert (=> d!1267955 m!4902775))

(assert (=> d!1267955 m!4902525))

(declare-fun m!4902777 () Bool)

(assert (=> d!1267955 m!4902777))

(declare-fun m!4902779 () Bool)

(assert (=> b!4309778 m!4902779))

(declare-fun m!4902781 () Bool)

(assert (=> b!4309776 m!4902781))

(declare-fun m!4902783 () Bool)

(assert (=> b!4309773 m!4902783))

(assert (=> b!4309771 m!4902783))

(assert (=> b!4309771 m!4902525))

(assert (=> b!4309771 m!4902783))

(declare-fun m!4902785 () Bool)

(assert (=> b!4309771 m!4902785))

(assert (=> b!4309775 m!4902525))

(declare-fun m!4902787 () Bool)

(assert (=> b!4309775 m!4902787))

(assert (=> b!4309501 d!1267955))

(assert (=> b!4309501 d!1267933))

(declare-fun d!1267957 () Bool)

(assert (=> d!1267957 (= (get!15589 (getValueByKey!252 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) lt!1530248)) (v!42315 (getValueByKey!252 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) lt!1530248)))))

(assert (=> b!4309473 d!1267957))

(declare-fun b!4309779 () Bool)

(declare-fun e!2680245 () Option!10224)

(assert (=> b!4309779 (= e!2680245 (Some!10223 (_2!26585 (h!53621 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))))))))

(declare-fun b!4309782 () Bool)

(declare-fun e!2680246 () Option!10224)

(assert (=> b!4309782 (= e!2680246 None!10223)))

(declare-fun d!1267959 () Bool)

(declare-fun c!732748 () Bool)

(assert (=> d!1267959 (= c!732748 (and ((_ is Cons!48187) (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))) (= (_1!26585 (h!53621 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))) lt!1530248)))))

(assert (=> d!1267959 (= (getValueByKey!252 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) lt!1530248) e!2680245)))

(declare-fun b!4309780 () Bool)

(assert (=> b!4309780 (= e!2680245 e!2680246)))

(declare-fun c!732749 () Bool)

(assert (=> b!4309780 (= c!732749 (and ((_ is Cons!48187) (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))) (not (= (_1!26585 (h!53621 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))) lt!1530248))))))

(declare-fun b!4309781 () Bool)

(assert (=> b!4309781 (= e!2680246 (getValueByKey!252 (t!355112 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))) lt!1530248))))

(assert (= (and d!1267959 c!732748) b!4309779))

(assert (= (and d!1267959 (not c!732748)) b!4309780))

(assert (= (and b!4309780 c!732749) b!4309781))

(assert (= (and b!4309780 (not c!732749)) b!4309782))

(declare-fun m!4902789 () Bool)

(assert (=> b!4309781 m!4902789))

(assert (=> b!4309473 d!1267959))

(assert (=> b!4309473 d!1267889))

(assert (=> bm!297792 d!1267889))

(declare-fun d!1267961 () Bool)

(declare-fun choose!26252 (Hashable!4573 K!9389) (_ BitVec 64))

(assert (=> d!1267961 (= (hash!1002 (hashF!6689 thiss!42308) key!2048) (choose!26252 (hashF!6689 thiss!42308) key!2048))))

(declare-fun bs!605007 () Bool)

(assert (= bs!605007 d!1267961))

(declare-fun m!4902791 () Bool)

(assert (=> bs!605007 m!4902791))

(assert (=> d!1267885 d!1267961))

(declare-fun b!4309783 () Bool)

(declare-fun e!2680250 () Unit!67290)

(declare-fun Unit!67304 () Unit!67290)

(assert (=> b!4309783 (= e!2680250 Unit!67304)))

(declare-fun d!1267963 () Bool)

(declare-fun e!2680249 () Bool)

(assert (=> d!1267963 e!2680249))

(declare-fun res!1766368 () Bool)

(assert (=> d!1267963 (=> res!1766368 e!2680249)))

(declare-fun e!2680248 () Bool)

(assert (=> d!1267963 (= res!1766368 e!2680248)))

(declare-fun res!1766367 () Bool)

(assert (=> d!1267963 (=> (not res!1766367) (not e!2680248))))

(declare-fun lt!1530490 () Bool)

(assert (=> d!1267963 (= res!1766367 (not lt!1530490))))

(declare-fun lt!1530493 () Bool)

(assert (=> d!1267963 (= lt!1530490 lt!1530493)))

(declare-fun lt!1530491 () Unit!67290)

(declare-fun e!2680251 () Unit!67290)

(assert (=> d!1267963 (= lt!1530491 e!2680251)))

(declare-fun c!732751 () Bool)

(assert (=> d!1267963 (= c!732751 lt!1530493)))

(assert (=> d!1267963 (= lt!1530493 (containsKey!309 (toList!2396 (extractMap!326 (toList!2395 lt!1530312))) key!2048))))

(assert (=> d!1267963 (= (contains!10158 (extractMap!326 (toList!2395 lt!1530312)) key!2048) lt!1530490)))

(declare-fun b!4309784 () Bool)

(declare-fun lt!1530492 () Unit!67290)

(assert (=> b!4309784 (= e!2680251 lt!1530492)))

(declare-fun lt!1530486 () Unit!67290)

(assert (=> b!4309784 (= lt!1530486 (lemmaContainsKeyImpliesGetValueByKeyDefined!173 (toList!2396 (extractMap!326 (toList!2395 lt!1530312))) key!2048))))

(assert (=> b!4309784 (isDefined!7528 (getValueByKey!253 (toList!2396 (extractMap!326 (toList!2395 lt!1530312))) key!2048))))

(declare-fun lt!1530488 () Unit!67290)

(assert (=> b!4309784 (= lt!1530488 lt!1530486)))

(assert (=> b!4309784 (= lt!1530492 (lemmaInListThenGetKeysListContains!40 (toList!2396 (extractMap!326 (toList!2395 lt!1530312))) key!2048))))

(declare-fun call!297874 () Bool)

(assert (=> b!4309784 call!297874))

(declare-fun b!4309785 () Bool)

(assert (=> b!4309785 false))

(declare-fun lt!1530489 () Unit!67290)

(declare-fun lt!1530487 () Unit!67290)

(assert (=> b!4309785 (= lt!1530489 lt!1530487)))

(assert (=> b!4309785 (containsKey!309 (toList!2396 (extractMap!326 (toList!2395 lt!1530312))) key!2048)))

(assert (=> b!4309785 (= lt!1530487 (lemmaInGetKeysListThenContainsKey!40 (toList!2396 (extractMap!326 (toList!2395 lt!1530312))) key!2048))))

(declare-fun Unit!67305 () Unit!67290)

(assert (=> b!4309785 (= e!2680250 Unit!67305)))

(declare-fun b!4309786 () Bool)

(declare-fun e!2680252 () Bool)

(assert (=> b!4309786 (= e!2680249 e!2680252)))

(declare-fun res!1766369 () Bool)

(assert (=> b!4309786 (=> (not res!1766369) (not e!2680252))))

(assert (=> b!4309786 (= res!1766369 (isDefined!7528 (getValueByKey!253 (toList!2396 (extractMap!326 (toList!2395 lt!1530312))) key!2048)))))

(declare-fun b!4309787 () Bool)

(assert (=> b!4309787 (= e!2680248 (not (contains!10160 (keys!16064 (extractMap!326 (toList!2395 lt!1530312))) key!2048)))))

(declare-fun b!4309788 () Bool)

(declare-fun e!2680247 () List!48312)

(assert (=> b!4309788 (= e!2680247 (keys!16064 (extractMap!326 (toList!2395 lt!1530312))))))

(declare-fun bm!297869 () Bool)

(assert (=> bm!297869 (= call!297874 (contains!10160 e!2680247 key!2048))))

(declare-fun c!732750 () Bool)

(assert (=> bm!297869 (= c!732750 c!732751)))

(declare-fun b!4309789 () Bool)

(assert (=> b!4309789 (= e!2680252 (contains!10160 (keys!16064 (extractMap!326 (toList!2395 lt!1530312))) key!2048))))

(declare-fun b!4309790 () Bool)

(assert (=> b!4309790 (= e!2680247 (getKeysList!43 (toList!2396 (extractMap!326 (toList!2395 lt!1530312)))))))

(declare-fun b!4309791 () Bool)

(assert (=> b!4309791 (= e!2680251 e!2680250)))

(declare-fun c!732752 () Bool)

(assert (=> b!4309791 (= c!732752 call!297874)))

(assert (= (and d!1267963 c!732751) b!4309784))

(assert (= (and d!1267963 (not c!732751)) b!4309791))

(assert (= (and b!4309791 c!732752) b!4309785))

(assert (= (and b!4309791 (not c!732752)) b!4309783))

(assert (= (or b!4309784 b!4309791) bm!297869))

(assert (= (and bm!297869 c!732750) b!4309790))

(assert (= (and bm!297869 (not c!732750)) b!4309788))

(assert (= (and d!1267963 res!1766367) b!4309787))

(assert (= (and d!1267963 (not res!1766368)) b!4309786))

(assert (= (and b!4309786 res!1766369) b!4309789))

(declare-fun m!4902793 () Bool)

(assert (=> b!4309785 m!4902793))

(declare-fun m!4902795 () Bool)

(assert (=> b!4309785 m!4902795))

(declare-fun m!4902797 () Bool)

(assert (=> b!4309784 m!4902797))

(declare-fun m!4902799 () Bool)

(assert (=> b!4309784 m!4902799))

(assert (=> b!4309784 m!4902799))

(declare-fun m!4902801 () Bool)

(assert (=> b!4309784 m!4902801))

(declare-fun m!4902803 () Bool)

(assert (=> b!4309784 m!4902803))

(assert (=> b!4309788 m!4902539))

(declare-fun m!4902805 () Bool)

(assert (=> b!4309788 m!4902805))

(declare-fun m!4902807 () Bool)

(assert (=> bm!297869 m!4902807))

(assert (=> b!4309786 m!4902799))

(assert (=> b!4309786 m!4902799))

(assert (=> b!4309786 m!4902801))

(assert (=> b!4309787 m!4902539))

(assert (=> b!4309787 m!4902805))

(assert (=> b!4309787 m!4902805))

(declare-fun m!4902809 () Bool)

(assert (=> b!4309787 m!4902809))

(declare-fun m!4902811 () Bool)

(assert (=> b!4309790 m!4902811))

(assert (=> b!4309789 m!4902539))

(assert (=> b!4309789 m!4902805))

(assert (=> b!4309789 m!4902805))

(assert (=> b!4309789 m!4902809))

(assert (=> d!1267963 m!4902793))

(assert (=> b!4309507 d!1267963))

(declare-fun bs!605008 () Bool)

(declare-fun d!1267965 () Bool)

(assert (= bs!605008 (and d!1267965 b!4309399)))

(declare-fun lambda!132889 () Int)

(assert (=> bs!605008 (not (= lambda!132889 lambda!132876))))

(declare-fun bs!605009 () Bool)

(assert (= bs!605009 (and d!1267965 b!4309428)))

(assert (=> bs!605009 (= lambda!132889 lambda!132879)))

(declare-fun bs!605010 () Bool)

(assert (= bs!605010 (and d!1267965 b!4309502)))

(assert (=> bs!605010 (= lambda!132889 lambda!132882)))

(declare-fun bs!605011 () Bool)

(assert (= bs!605011 (and d!1267965 d!1267907)))

(assert (=> bs!605011 (= lambda!132889 lambda!132885)))

(declare-fun lt!1530494 () ListMap!1677)

(assert (=> d!1267965 (invariantList!570 (toList!2396 lt!1530494))))

(declare-fun e!2680253 () ListMap!1677)

(assert (=> d!1267965 (= lt!1530494 e!2680253)))

(declare-fun c!732753 () Bool)

(assert (=> d!1267965 (= c!732753 ((_ is Cons!48187) (toList!2395 lt!1530312)))))

(assert (=> d!1267965 (forall!8726 (toList!2395 lt!1530312) lambda!132889)))

(assert (=> d!1267965 (= (extractMap!326 (toList!2395 lt!1530312)) lt!1530494)))

(declare-fun b!4309792 () Bool)

(assert (=> b!4309792 (= e!2680253 (addToMapMapFromBucket!37 (_2!26585 (h!53621 (toList!2395 lt!1530312))) (extractMap!326 (t!355112 (toList!2395 lt!1530312)))))))

(declare-fun b!4309793 () Bool)

(assert (=> b!4309793 (= e!2680253 (ListMap!1678 Nil!48186))))

(assert (= (and d!1267965 c!732753) b!4309792))

(assert (= (and d!1267965 (not c!732753)) b!4309793))

(declare-fun m!4902813 () Bool)

(assert (=> d!1267965 m!4902813))

(declare-fun m!4902815 () Bool)

(assert (=> d!1267965 m!4902815))

(declare-fun m!4902817 () Bool)

(assert (=> b!4309792 m!4902817))

(assert (=> b!4309792 m!4902817))

(declare-fun m!4902819 () Bool)

(assert (=> b!4309792 m!4902819))

(assert (=> b!4309507 d!1267965))

(declare-fun bs!605012 () Bool)

(declare-fun d!1267967 () Bool)

(assert (= bs!605012 (and d!1267967 b!4309399)))

(declare-fun lambda!132892 () Int)

(assert (=> bs!605012 (not (= lambda!132892 lambda!132876))))

(declare-fun bs!605013 () Bool)

(assert (= bs!605013 (and d!1267967 d!1267965)))

(assert (=> bs!605013 (= lambda!132892 lambda!132889)))

(declare-fun bs!605014 () Bool)

(assert (= bs!605014 (and d!1267967 d!1267907)))

(assert (=> bs!605014 (= lambda!132892 lambda!132885)))

(declare-fun bs!605015 () Bool)

(assert (= bs!605015 (and d!1267967 b!4309502)))

(assert (=> bs!605015 (= lambda!132892 lambda!132882)))

(declare-fun bs!605016 () Bool)

(assert (= bs!605016 (and d!1267967 b!4309428)))

(assert (=> bs!605016 (= lambda!132892 lambda!132879)))

(assert (=> d!1267967 (contains!10158 (extractMap!326 (toList!2395 lt!1530312)) key!2048)))

(declare-fun lt!1530497 () Unit!67290)

(declare-fun choose!26253 (ListLongMap!1007 K!9389 Hashable!4573) Unit!67290)

(assert (=> d!1267967 (= lt!1530497 (choose!26253 lt!1530312 key!2048 (hashF!6689 thiss!42308)))))

(assert (=> d!1267967 (forall!8726 (toList!2395 lt!1530312) lambda!132892)))

(assert (=> d!1267967 (= (lemmaInLongMapThenInGenericMap!131 lt!1530312 key!2048 (hashF!6689 thiss!42308)) lt!1530497)))

(declare-fun bs!605017 () Bool)

(assert (= bs!605017 d!1267967))

(assert (=> bs!605017 m!4902539))

(assert (=> bs!605017 m!4902539))

(assert (=> bs!605017 m!4902541))

(declare-fun m!4902821 () Bool)

(assert (=> bs!605017 m!4902821))

(declare-fun m!4902823 () Bool)

(assert (=> bs!605017 m!4902823))

(assert (=> b!4309507 d!1267967))

(declare-fun bm!297878 () Bool)

(declare-fun call!297883 () tuple2!46616)

(declare-fun call!297884 () tuple2!46616)

(assert (=> bm!297878 (= call!297883 call!297884)))

(declare-fun bm!297879 () Bool)

(declare-fun call!297885 () LongMapFixedSize!9314)

(declare-fun lt!1530520 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!20 ((_ BitVec 32) Int) LongMapFixedSize!9314)

(assert (=> bm!297879 (= call!297885 (getNewLongMapFixedSize!20 lt!1530520 (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))))

(declare-fun b!4309814 () Bool)

(declare-datatypes ((tuple2!46618 0))(
  ( (tuple2!46619 (_1!26588 Bool) (_2!26588 Cell!18437)) )
))
(declare-fun e!2680267 () tuple2!46618)

(declare-fun lt!1530522 () Cell!18437)

(assert (=> b!4309814 (= e!2680267 (tuple2!46619 true lt!1530522))))

(declare-fun b!4309815 () Bool)

(declare-fun e!2680271 () Bool)

(declare-fun lt!1530523 () tuple2!46614)

(assert (=> b!4309815 (= e!2680271 (= (map!10174 (_2!26586 lt!1530523)) (map!10174 (v!42310 (underlying!9544 thiss!42308)))))))

(declare-fun d!1267969 () Bool)

(declare-fun e!2680270 () Bool)

(assert (=> d!1267969 e!2680270))

(declare-fun res!1766375 () Bool)

(assert (=> d!1267969 (=> (not res!1766375) (not e!2680270))))

(assert (=> d!1267969 (= res!1766375 ((_ is LongMap!4657) (_2!26586 lt!1530523)))))

(declare-datatypes ((tuple3!5492 0))(
  ( (tuple3!5493 (_1!26589 Bool) (_2!26589 Cell!18437) (_3!3279 MutLongMap!4657)) )
))
(declare-fun lt!1530525 () tuple3!5492)

(assert (=> d!1267969 (= lt!1530523 (tuple2!46615 (_1!26589 lt!1530525) (_3!3279 lt!1530525)))))

(declare-fun e!2680268 () tuple3!5492)

(assert (=> d!1267969 (= lt!1530525 e!2680268)))

(declare-fun c!732764 () Bool)

(declare-fun lt!1530521 () tuple2!46618)

(assert (=> d!1267969 (= c!732764 (not (_1!26588 lt!1530521)))))

(declare-fun e!2680269 () tuple2!46618)

(assert (=> d!1267969 (= lt!1530521 e!2680269)))

(declare-fun c!732763 () Bool)

(assert (=> d!1267969 (= c!732763 (and (not (= (bvand (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1267969 (= lt!1530522 (Cell!18438 (getNewLongMapFixedSize!20 lt!1530520 (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))))))))

(declare-fun computeNewMask!6 (MutLongMap!4657 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1267969 (= lt!1530520 (computeNewMask!6 (v!42310 (underlying!9544 thiss!42308)) (mask!13214 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (_vacant!4718 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (_size!9357 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))))

(assert (=> d!1267969 (valid!3646 (v!42310 (underlying!9544 thiss!42308)))))

(assert (=> d!1267969 (= (repack!53 (v!42310 (underlying!9544 thiss!42308))) lt!1530523)))

(declare-fun lt!1530518 () tuple2!46616)

(declare-fun bm!297880 () Bool)

(declare-fun call!297886 () LongMapFixedSize!9314)

(declare-fun c!732762 () Bool)

(assert (=> bm!297880 (= call!297884 (update!432 (ite c!732763 (_2!26587 lt!1530518) call!297886) (ite c!732763 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!732762 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!732763 (minValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (ite c!732762 (zeroValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (minValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))))))

(declare-fun bm!297881 () Bool)

(assert (=> bm!297881 (= call!297886 call!297885)))

(declare-fun b!4309816 () Bool)

(declare-fun lt!1530526 () tuple2!46616)

(assert (=> b!4309816 (= lt!1530526 call!297883)))

(declare-fun e!2680266 () tuple2!46618)

(assert (=> b!4309816 (= e!2680266 (tuple2!46619 (_1!26587 lt!1530526) (Cell!18438 (_2!26587 lt!1530526))))))

(declare-fun b!4309817 () Bool)

(declare-fun lt!1530527 () tuple2!46616)

(assert (=> b!4309817 (= e!2680269 (tuple2!46619 (and (_1!26587 lt!1530518) (_1!26587 lt!1530527)) (Cell!18438 (_2!26587 lt!1530527))))))

(assert (=> b!4309817 (= lt!1530518 (update!432 call!297885 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))))

(assert (=> b!4309817 (= lt!1530527 call!297884)))

(declare-fun b!4309818 () Bool)

(declare-fun lt!1530519 () tuple2!46616)

(assert (=> b!4309818 (= e!2680268 (ite (_1!26587 lt!1530519) (tuple3!5493 true (underlying!9543 (v!42310 (underlying!9544 thiss!42308))) (LongMap!4657 (Cell!18438 (_2!26587 lt!1530519)))) (tuple3!5493 false (Cell!18438 (_2!26587 lt!1530519)) (v!42310 (underlying!9544 thiss!42308)))))))

(declare-fun repackFrom!6 (MutLongMap!4657 LongMapFixedSize!9314 (_ BitVec 32)) tuple2!46616)

(assert (=> b!4309818 (= lt!1530519 (repackFrom!6 (v!42310 (underlying!9544 thiss!42308)) (v!42309 (_2!26588 lt!1530521)) (bvsub (size!35538 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) #b00000000000000000000000000000001)))))

(declare-fun b!4309819 () Bool)

(assert (=> b!4309819 (= e!2680269 e!2680266)))

(assert (=> b!4309819 (= c!732762 (and (not (= (bvand (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4309820 () Bool)

(declare-fun c!732765 () Bool)

(assert (=> b!4309820 (= c!732765 (and (not (= (bvand (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4309820 (= e!2680266 e!2680267)))

(declare-fun b!4309821 () Bool)

(assert (=> b!4309821 (= e!2680270 e!2680271)))

(declare-fun res!1766374 () Bool)

(assert (=> b!4309821 (=> res!1766374 e!2680271)))

(assert (=> b!4309821 (= res!1766374 (= (_1!26586 lt!1530523) false))))

(declare-fun b!4309822 () Bool)

(declare-fun lt!1530524 () tuple2!46616)

(assert (=> b!4309822 (= e!2680267 (tuple2!46619 (_1!26587 lt!1530524) (Cell!18438 (_2!26587 lt!1530524))))))

(assert (=> b!4309822 (= lt!1530524 call!297883)))

(declare-fun b!4309823 () Bool)

(assert (=> b!4309823 (= e!2680268 (tuple3!5493 false (_2!26588 lt!1530521) (v!42310 (underlying!9544 thiss!42308))))))

(assert (= (and d!1267969 c!732763) b!4309817))

(assert (= (and d!1267969 (not c!732763)) b!4309819))

(assert (= (and b!4309819 c!732762) b!4309816))

(assert (= (and b!4309819 (not c!732762)) b!4309820))

(assert (= (and b!4309820 c!732765) b!4309822))

(assert (= (and b!4309820 (not c!732765)) b!4309814))

(assert (= (or b!4309816 b!4309822) bm!297881))

(assert (= (or b!4309816 b!4309822) bm!297878))

(assert (= (or b!4309817 bm!297881) bm!297879))

(assert (= (or b!4309817 bm!297878) bm!297880))

(assert (= (and d!1267969 c!732764) b!4309823))

(assert (= (and d!1267969 (not c!732764)) b!4309818))

(assert (= (and d!1267969 res!1766375) b!4309821))

(assert (= (and b!4309821 (not res!1766374)) b!4309815))

(declare-fun m!4902825 () Bool)

(assert (=> d!1267969 m!4902825))

(declare-fun m!4902827 () Bool)

(assert (=> d!1267969 m!4902827))

(assert (=> d!1267969 m!4902469))

(declare-fun m!4902829 () Bool)

(assert (=> bm!297880 m!4902829))

(declare-fun m!4902831 () Bool)

(assert (=> b!4309815 m!4902831))

(assert (=> b!4309815 m!4902443))

(assert (=> bm!297879 m!4902825))

(declare-fun m!4902833 () Bool)

(assert (=> b!4309817 m!4902833))

(declare-fun m!4902835 () Bool)

(assert (=> b!4309818 m!4902835))

(assert (=> b!4309448 d!1267969))

(declare-fun bs!605018 () Bool)

(declare-fun d!1267971 () Bool)

(assert (= bs!605018 (and d!1267971 d!1267967)))

(declare-fun lambda!132895 () Int)

(assert (=> bs!605018 (= lambda!132895 lambda!132892)))

(declare-fun bs!605019 () Bool)

(assert (= bs!605019 (and d!1267971 b!4309399)))

(assert (=> bs!605019 (not (= lambda!132895 lambda!132876))))

(declare-fun bs!605020 () Bool)

(assert (= bs!605020 (and d!1267971 d!1267965)))

(assert (=> bs!605020 (= lambda!132895 lambda!132889)))

(declare-fun bs!605021 () Bool)

(assert (= bs!605021 (and d!1267971 d!1267907)))

(assert (=> bs!605021 (= lambda!132895 lambda!132885)))

(declare-fun bs!605022 () Bool)

(assert (= bs!605022 (and d!1267971 b!4309502)))

(assert (=> bs!605022 (= lambda!132895 lambda!132882)))

(declare-fun bs!605023 () Bool)

(assert (= bs!605023 (and d!1267971 b!4309428)))

(assert (=> bs!605023 (= lambda!132895 lambda!132879)))

(declare-fun e!2680274 () Bool)

(assert (=> d!1267971 e!2680274))

(declare-fun res!1766378 () Bool)

(assert (=> d!1267971 (=> (not res!1766378) (not e!2680274))))

(assert (=> d!1267971 (= res!1766378 (contains!10156 lt!1530328 (hash!1001 (hashF!6689 thiss!42308) key!2048)))))

(declare-fun lt!1530530 () Unit!67290)

(declare-fun choose!26254 (ListLongMap!1007 K!9389 Hashable!4573) Unit!67290)

(assert (=> d!1267971 (= lt!1530530 (choose!26254 lt!1530328 key!2048 (hashF!6689 thiss!42308)))))

(assert (=> d!1267971 (forall!8726 (toList!2395 lt!1530328) lambda!132895)))

(assert (=> d!1267971 (= (lemmaInGenericMapThenInLongMap!131 lt!1530328 key!2048 (hashF!6689 thiss!42308)) lt!1530530)))

(declare-fun b!4309826 () Bool)

(assert (=> b!4309826 (= e!2680274 (isDefined!7526 (getPair!131 (apply!11010 lt!1530328 (hash!1001 (hashF!6689 thiss!42308) key!2048)) key!2048)))))

(assert (= (and d!1267971 res!1766378) b!4309826))

(assert (=> d!1267971 m!4902459))

(assert (=> d!1267971 m!4902459))

(declare-fun m!4902837 () Bool)

(assert (=> d!1267971 m!4902837))

(declare-fun m!4902839 () Bool)

(assert (=> d!1267971 m!4902839))

(declare-fun m!4902841 () Bool)

(assert (=> d!1267971 m!4902841))

(assert (=> b!4309826 m!4902459))

(assert (=> b!4309826 m!4902459))

(declare-fun m!4902843 () Bool)

(assert (=> b!4309826 m!4902843))

(assert (=> b!4309826 m!4902843))

(declare-fun m!4902845 () Bool)

(assert (=> b!4309826 m!4902845))

(assert (=> b!4309826 m!4902845))

(declare-fun m!4902847 () Bool)

(assert (=> b!4309826 m!4902847))

(assert (=> b!4309506 d!1267971))

(assert (=> bm!297773 d!1267889))

(declare-fun d!1267973 () Bool)

(declare-fun lt!1530531 () Bool)

(assert (=> d!1267973 (= lt!1530531 (contains!10156 (map!10174 (v!42310 (underlying!9544 thiss!42308))) lt!1530248))))

(assert (=> d!1267973 (= lt!1530531 (contains!10161 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))) lt!1530248))))

(assert (=> d!1267973 (valid!3646 (v!42310 (underlying!9544 thiss!42308)))))

(assert (=> d!1267973 (= (contains!10157 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) lt!1530531)))

(declare-fun bs!605024 () Bool)

(assert (= bs!605024 d!1267973))

(assert (=> bs!605024 m!4902443))

(assert (=> bs!605024 m!4902443))

(declare-fun m!4902849 () Bool)

(assert (=> bs!605024 m!4902849))

(declare-fun m!4902851 () Bool)

(assert (=> bs!605024 m!4902851))

(assert (=> bs!605024 m!4902469))

(assert (=> d!1267883 d!1267973))

(declare-fun b!4309863 () Bool)

(declare-fun lt!1530554 () Unit!67290)

(declare-fun lt!1530556 () Unit!67290)

(assert (=> b!4309863 (= lt!1530554 lt!1530556)))

(declare-fun e!2680304 () Bool)

(assert (=> b!4309863 e!2680304))

(declare-fun c!732780 () Bool)

(assert (=> b!4309863 (= c!732780 (= lt!1530248 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!1530555 () SeekEntryResult!14)

(declare-fun lemmaKeyInListMapThenSameValueInArray!4 (array!16786 array!16788 (_ BitVec 32) (_ BitVec 32) List!48310 List!48310 (_ BitVec 64) (_ BitVec 32) Int) Unit!67290)

(assert (=> b!4309863 (= lt!1530556 (lemmaKeyInListMapThenSameValueInArray!4 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (_values!4938 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (mask!13214 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (zeroValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (minValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) lt!1530248 (index!1435 lt!1530555) (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))))

(declare-fun lt!1530564 () Unit!67290)

(declare-fun lt!1530558 () Unit!67290)

(assert (=> b!4309863 (= lt!1530564 lt!1530558)))

(assert (=> b!4309863 (contains!10156 (getCurrentListMap!17 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (_values!4938 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (mask!13214 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (zeroValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (minValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) (select (arr!7499 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) (index!1435 lt!1530555)))))

(assert (=> b!4309863 (= lt!1530558 (lemmaValidKeyInArrayIsInListMap!7 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (_values!4938 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (mask!13214 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (zeroValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (minValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (index!1435 lt!1530555) (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))))

(declare-fun lt!1530561 () Unit!67290)

(declare-fun lt!1530563 () Unit!67290)

(assert (=> b!4309863 (= lt!1530561 lt!1530563)))

(assert (=> b!4309863 (arrayContainsKey!0 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) lt!1530248 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16786 (_ BitVec 64) (_ BitVec 32)) Unit!67290)

(assert (=> b!4309863 (= lt!1530563 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) lt!1530248 (index!1435 lt!1530555)))))

(declare-fun e!2680303 () List!48310)

(assert (=> b!4309863 (= e!2680303 (select (arr!7500 (_values!4938 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) (index!1435 lt!1530555)))))

(declare-fun b!4309864 () Bool)

(declare-fun e!2680305 () List!48310)

(assert (=> b!4309864 (= e!2680305 (dynLambda!20429 (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) lt!1530248))))

(declare-fun b!4309865 () Bool)

(declare-fun res!1766389 () Bool)

(declare-fun e!2680300 () Bool)

(assert (=> b!4309865 (=> (not res!1766389) (not e!2680300))))

(assert (=> b!4309865 (= res!1766389 (arrayContainsKey!0 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) lt!1530248 #b00000000000000000000000000000000))))

(declare-fun e!2680307 () Bool)

(assert (=> b!4309865 (= e!2680307 e!2680300)))

(declare-fun b!4309866 () Bool)

(assert (=> b!4309866 (= e!2680305 (minValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))))))

(declare-fun b!4309867 () Bool)

(declare-fun e!2680298 () Bool)

(declare-fun lt!1530559 () SeekEntryResult!14)

(assert (=> b!4309867 (= e!2680298 (inRange!0 (index!1435 lt!1530559) (mask!13214 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))))

(declare-fun lt!1530562 () List!48310)

(declare-fun b!4309869 () Bool)

(declare-fun e!2680302 () Bool)

(assert (=> b!4309869 (= e!2680302 (= lt!1530562 (get!15589 (getValueByKey!252 (toList!2395 (map!10176 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) lt!1530248))))))

(declare-fun bm!297890 () Bool)

(declare-fun call!297898 () ListLongMap!1007)

(declare-fun call!297896 () ListLongMap!1007)

(assert (=> bm!297890 (= call!297898 call!297896)))

(declare-fun b!4309870 () Bool)

(assert (=> b!4309870 (= e!2680302 (= lt!1530562 (dynLambda!20429 (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) lt!1530248)))))

(declare-fun bm!297891 () Bool)

(assert (=> bm!297891 (= call!297896 (getCurrentListMap!17 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (_values!4938 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (mask!13214 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (zeroValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (minValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))))

(declare-fun b!4309871 () Bool)

(declare-fun e!2680306 () Bool)

(assert (=> b!4309871 (= e!2680304 e!2680306)))

(declare-fun res!1766388 () Bool)

(assert (=> b!4309871 (= res!1766388 (not (= (bvand (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4309871 (=> (not res!1766388) (not e!2680306))))

(declare-fun b!4309872 () Bool)

(declare-fun e!2680299 () List!48310)

(assert (=> b!4309872 (= e!2680299 e!2680303)))

(declare-fun seekEntry!0 ((_ BitVec 64) array!16786 (_ BitVec 32)) SeekEntryResult!14)

(assert (=> b!4309872 (= lt!1530555 (seekEntry!0 lt!1530248 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (mask!13214 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))))

(declare-fun lt!1530557 () Unit!67290)

(declare-fun lemmaSeekEntryGivesInRangeIndex!4 (array!16786 array!16788 (_ BitVec 32) (_ BitVec 32) List!48310 List!48310 (_ BitVec 64)) Unit!67290)

(assert (=> b!4309872 (= lt!1530557 (lemmaSeekEntryGivesInRangeIndex!4 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (_values!4938 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (mask!13214 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (zeroValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (minValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) lt!1530248))))

(assert (=> b!4309872 (= lt!1530559 (seekEntry!0 lt!1530248 (_keys!4957 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) (mask!13214 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))))

(declare-fun res!1766390 () Bool)

(assert (=> b!4309872 (= res!1766390 (not ((_ is Found!14) lt!1530559)))))

(assert (=> b!4309872 (=> res!1766390 e!2680298)))

(assert (=> b!4309872 e!2680298))

(declare-fun lt!1530560 () Unit!67290)

(assert (=> b!4309872 (= lt!1530560 lt!1530557)))

(declare-fun c!732781 () Bool)

(assert (=> b!4309872 (= c!732781 ((_ is Found!14) lt!1530555))))

(declare-fun b!4309873 () Bool)

(declare-fun res!1766387 () Bool)

(declare-fun e!2680301 () Bool)

(assert (=> b!4309873 (=> (not res!1766387) (not e!2680301))))

(assert (=> b!4309873 (= res!1766387 (not (= (bvand (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!4309873 (= e!2680307 e!2680301)))

(declare-fun call!297897 () List!48310)

(declare-fun bm!297892 () Bool)

(assert (=> bm!297892 (= call!297897 (apply!11010 (ite c!732780 call!297896 call!297898) lt!1530248))))

(declare-fun call!297895 () List!48310)

(declare-fun b!4309874 () Bool)

(assert (=> b!4309874 (= e!2680300 (= call!297895 (select (arr!7500 (_values!4938 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))) (index!1435 lt!1530555))))))

(declare-fun b!4309875 () Bool)

(assert (=> b!4309875 (= e!2680306 (= call!297897 (zeroValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))))

(declare-fun b!4309876 () Bool)

(assert (=> b!4309876 (= e!2680304 e!2680307)))

(declare-fun c!732786 () Bool)

(assert (=> b!4309876 (= c!732786 (= lt!1530248 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4309877 () Bool)

(assert (=> b!4309877 (= e!2680303 (dynLambda!20429 (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) lt!1530248))))

(declare-fun b!4309878 () Bool)

(declare-fun e!2680297 () List!48310)

(assert (=> b!4309878 (= e!2680297 (zeroValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))))))

(declare-fun b!4309879 () Bool)

(assert (=> b!4309879 (= e!2680301 (= call!297895 (minValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))))

(declare-fun b!4309868 () Bool)

(assert (=> b!4309868 (= e!2680299 e!2680297)))

(declare-fun c!732782 () Bool)

(assert (=> b!4309868 (= c!732782 (and (= lt!1530248 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun d!1267975 () Bool)

(assert (=> d!1267975 e!2680302))

(declare-fun c!732784 () Bool)

(assert (=> d!1267975 (= c!732784 (contains!10161 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))) lt!1530248))))

(assert (=> d!1267975 (= lt!1530562 e!2680299)))

(declare-fun c!732783 () Bool)

(assert (=> d!1267975 (= c!732783 (= lt!1530248 (bvneg lt!1530248)))))

(assert (=> d!1267975 (valid!3647 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))

(assert (=> d!1267975 (= (apply!11009 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))) lt!1530248) lt!1530562)))

(declare-fun bm!297893 () Bool)

(assert (=> bm!297893 (= call!297895 call!297897)))

(declare-fun b!4309880 () Bool)

(declare-fun c!732785 () Bool)

(assert (=> b!4309880 (= c!732785 (and (= lt!1530248 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4906 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!4309880 (= e!2680297 e!2680305)))

(assert (= (and d!1267975 c!732783) b!4309868))

(assert (= (and d!1267975 (not c!732783)) b!4309872))

(assert (= (and b!4309868 c!732782) b!4309878))

(assert (= (and b!4309868 (not c!732782)) b!4309880))

(assert (= (and b!4309880 c!732785) b!4309866))

(assert (= (and b!4309880 (not c!732785)) b!4309864))

(assert (= (and b!4309872 (not res!1766390)) b!4309867))

(assert (= (and b!4309872 c!732781) b!4309863))

(assert (= (and b!4309872 (not c!732781)) b!4309877))

(assert (= (and b!4309863 c!732780) b!4309871))

(assert (= (and b!4309863 (not c!732780)) b!4309876))

(assert (= (and b!4309871 res!1766388) b!4309875))

(assert (= (and b!4309876 c!732786) b!4309873))

(assert (= (and b!4309876 (not c!732786)) b!4309865))

(assert (= (and b!4309873 res!1766387) b!4309879))

(assert (= (and b!4309865 res!1766389) b!4309874))

(assert (= (or b!4309879 b!4309874) bm!297890))

(assert (= (or b!4309879 b!4309874) bm!297893))

(assert (= (or b!4309875 bm!297890) bm!297891))

(assert (= (or b!4309875 bm!297893) bm!297892))

(assert (= (and d!1267975 c!732784) b!4309869))

(assert (= (and d!1267975 (not c!732784)) b!4309870))

(declare-fun b_lambda!126601 () Bool)

(assert (=> (not b_lambda!126601) (not b!4309864)))

(assert (=> b!4309864 t!355114))

(declare-fun b_and!340011 () Bool)

(assert (= b_and!340009 (and (=> t!355114 result!314676) b_and!340011)))

(declare-fun b_lambda!126603 () Bool)

(assert (=> (not b_lambda!126603) (not b!4309870)))

(assert (=> b!4309870 t!355114))

(declare-fun b_and!340013 () Bool)

(assert (= b_and!340011 (and (=> t!355114 result!314676) b_and!340013)))

(declare-fun b_lambda!126605 () Bool)

(assert (=> (not b_lambda!126605) (not b!4309877)))

(assert (=> b!4309877 t!355114))

(declare-fun b_and!340015 () Bool)

(assert (= b_and!340013 (and (=> t!355114 result!314676) b_and!340015)))

(assert (=> b!4309863 m!4902619))

(declare-fun m!4902853 () Bool)

(assert (=> b!4309863 m!4902853))

(declare-fun m!4902855 () Bool)

(assert (=> b!4309863 m!4902855))

(declare-fun m!4902857 () Bool)

(assert (=> b!4309863 m!4902857))

(declare-fun m!4902859 () Bool)

(assert (=> b!4309863 m!4902859))

(declare-fun m!4902861 () Bool)

(assert (=> b!4309863 m!4902861))

(declare-fun m!4902863 () Bool)

(assert (=> b!4309863 m!4902863))

(assert (=> b!4309863 m!4902619))

(declare-fun m!4902865 () Bool)

(assert (=> b!4309863 m!4902865))

(assert (=> b!4309863 m!4902853))

(declare-fun m!4902867 () Bool)

(assert (=> bm!297892 m!4902867))

(assert (=> b!4309869 m!4902555))

(declare-fun m!4902869 () Bool)

(assert (=> b!4309869 m!4902869))

(assert (=> b!4309869 m!4902869))

(declare-fun m!4902871 () Bool)

(assert (=> b!4309869 m!4902871))

(assert (=> b!4309865 m!4902863))

(assert (=> bm!297891 m!4902619))

(declare-fun m!4902873 () Bool)

(assert (=> b!4309867 m!4902873))

(declare-fun m!4902875 () Bool)

(assert (=> b!4309872 m!4902875))

(declare-fun m!4902877 () Bool)

(assert (=> b!4309872 m!4902877))

(assert (=> d!1267975 m!4902851))

(assert (=> d!1267975 m!4902707))

(assert (=> b!4309877 m!4902503))

(assert (=> b!4309874 m!4902857))

(assert (=> b!4309864 m!4902503))

(assert (=> b!4309870 m!4902503))

(assert (=> d!1267883 d!1267975))

(assert (=> d!1267883 d!1267923))

(declare-fun d!1267977 () Bool)

(assert (=> d!1267977 (= (isDefined!7526 call!297796) (not (isEmpty!28084 call!297796)))))

(declare-fun bs!605025 () Bool)

(assert (= bs!605025 d!1267977))

(declare-fun m!4902879 () Bool)

(assert (=> bs!605025 m!4902879))

(assert (=> bm!297791 d!1267977))

(declare-fun d!1267979 () Bool)

(declare-fun noDuplicatedKeys!96 (List!48310) Bool)

(assert (=> d!1267979 (= (invariantList!570 (toList!2396 lt!1530333)) (noDuplicatedKeys!96 (toList!2396 lt!1530333)))))

(declare-fun bs!605026 () Bool)

(assert (= bs!605026 d!1267979))

(declare-fun m!4902881 () Bool)

(assert (=> bs!605026 m!4902881))

(assert (=> d!1267891 d!1267979))

(assert (=> d!1267891 d!1267907))

(assert (=> d!1267891 d!1267889))

(assert (=> d!1267891 d!1267877))

(declare-fun d!1267981 () Bool)

(declare-fun e!2680310 () Bool)

(assert (=> d!1267981 e!2680310))

(declare-fun res!1766396 () Bool)

(assert (=> d!1267981 (=> (not res!1766396) (not e!2680310))))

(declare-fun lt!1530575 () ListLongMap!1007)

(assert (=> d!1267981 (= res!1766396 (contains!10156 lt!1530575 (_1!26585 (tuple2!46613 lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))))))))

(declare-fun lt!1530574 () List!48311)

(assert (=> d!1267981 (= lt!1530575 (ListLongMap!1008 lt!1530574))))

(declare-fun lt!1530573 () Unit!67290)

(declare-fun lt!1530576 () Unit!67290)

(assert (=> d!1267981 (= lt!1530573 lt!1530576)))

(assert (=> d!1267981 (= (getValueByKey!252 lt!1530574 (_1!26585 (tuple2!46613 lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))))) (Some!10223 (_2!26585 (tuple2!46613 lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!74 (List!48311 (_ BitVec 64) List!48310) Unit!67290)

(assert (=> d!1267981 (= lt!1530576 (lemmaContainsTupThenGetReturnValue!74 lt!1530574 (_1!26585 (tuple2!46613 lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048)))) (_2!26585 (tuple2!46613 lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))))))))

(declare-fun insertStrictlySorted!38 (List!48311 (_ BitVec 64) List!48310) List!48311)

(assert (=> d!1267981 (= lt!1530574 (insertStrictlySorted!38 (toList!2395 call!297778) (_1!26585 (tuple2!46613 lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048)))) (_2!26585 (tuple2!46613 lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))))))))

(assert (=> d!1267981 (= (+!266 call!297778 (tuple2!46613 lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048)))) lt!1530575)))

(declare-fun b!4309885 () Bool)

(declare-fun res!1766395 () Bool)

(assert (=> b!4309885 (=> (not res!1766395) (not e!2680310))))

(assert (=> b!4309885 (= res!1766395 (= (getValueByKey!252 (toList!2395 lt!1530575) (_1!26585 (tuple2!46613 lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048))))) (Some!10223 (_2!26585 (tuple2!46613 lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048)))))))))

(declare-fun b!4309886 () Bool)

(assert (=> b!4309886 (= e!2680310 (contains!10159 (toList!2395 lt!1530575) (tuple2!46613 lt!1530248 (Cons!48186 (tuple2!46611 key!2048 v!9179) (removePairForKey!209 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248) key!2048)))))))

(assert (= (and d!1267981 res!1766396) b!4309885))

(assert (= (and b!4309885 res!1766395) b!4309886))

(declare-fun m!4902883 () Bool)

(assert (=> d!1267981 m!4902883))

(declare-fun m!4902885 () Bool)

(assert (=> d!1267981 m!4902885))

(declare-fun m!4902887 () Bool)

(assert (=> d!1267981 m!4902887))

(declare-fun m!4902889 () Bool)

(assert (=> d!1267981 m!4902889))

(declare-fun m!4902891 () Bool)

(assert (=> b!4309885 m!4902891))

(declare-fun m!4902893 () Bool)

(assert (=> b!4309886 m!4902893))

(assert (=> b!4309449 d!1267981))

(declare-fun d!1267983 () Bool)

(declare-fun lt!1530577 () List!48310)

(assert (=> d!1267983 (not (containsKey!307 lt!1530577 key!2048))))

(declare-fun e!2680311 () List!48310)

(assert (=> d!1267983 (= lt!1530577 e!2680311)))

(declare-fun c!732787 () Bool)

(assert (=> d!1267983 (= c!732787 (and ((_ is Cons!48186) (t!355111 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248))) (= (_1!26584 (h!53620 (t!355111 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248)))) key!2048)))))

(assert (=> d!1267983 (noDuplicateKeys!208 (t!355111 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248)))))

(assert (=> d!1267983 (= (removePairForKey!209 (t!355111 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248)) key!2048) lt!1530577)))

(declare-fun b!4309890 () Bool)

(declare-fun e!2680312 () List!48310)

(assert (=> b!4309890 (= e!2680312 Nil!48186)))

(declare-fun b!4309887 () Bool)

(assert (=> b!4309887 (= e!2680311 (t!355111 (t!355111 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248))))))

(declare-fun b!4309888 () Bool)

(assert (=> b!4309888 (= e!2680311 e!2680312)))

(declare-fun c!732788 () Bool)

(assert (=> b!4309888 (= c!732788 ((_ is Cons!48186) (t!355111 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248))))))

(declare-fun b!4309889 () Bool)

(assert (=> b!4309889 (= e!2680312 (Cons!48186 (h!53620 (t!355111 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248))) (removePairForKey!209 (t!355111 (t!355111 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530248))) key!2048)))))

(assert (= (and d!1267983 c!732787) b!4309887))

(assert (= (and d!1267983 (not c!732787)) b!4309888))

(assert (= (and b!4309888 c!732788) b!4309889))

(assert (= (and b!4309888 (not c!732788)) b!4309890))

(declare-fun m!4902895 () Bool)

(assert (=> d!1267983 m!4902895))

(assert (=> d!1267983 m!4902713))

(declare-fun m!4902897 () Bool)

(assert (=> b!4309889 m!4902897))

(assert (=> b!4309467 d!1267983))

(declare-fun d!1267985 () Bool)

(declare-fun res!1766397 () Bool)

(declare-fun e!2680313 () Bool)

(assert (=> d!1267985 (=> res!1766397 e!2680313)))

(assert (=> d!1267985 (= res!1766397 ((_ is Nil!48187) (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))))))

(assert (=> d!1267985 (= (forall!8726 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) lambda!132879) e!2680313)))

(declare-fun b!4309891 () Bool)

(declare-fun e!2680314 () Bool)

(assert (=> b!4309891 (= e!2680313 e!2680314)))

(declare-fun res!1766398 () Bool)

(assert (=> b!4309891 (=> (not res!1766398) (not e!2680314))))

(assert (=> b!4309891 (= res!1766398 (dynLambda!20428 lambda!132879 (h!53621 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))))))

(declare-fun b!4309892 () Bool)

(assert (=> b!4309892 (= e!2680314 (forall!8726 (t!355112 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))) lambda!132879))))

(assert (= (and d!1267985 (not res!1766397)) b!4309891))

(assert (= (and b!4309891 res!1766398) b!4309892))

(declare-fun b_lambda!126607 () Bool)

(assert (=> (not b_lambda!126607) (not b!4309891)))

(declare-fun m!4902899 () Bool)

(assert (=> b!4309891 m!4902899))

(declare-fun m!4902901 () Bool)

(assert (=> b!4309892 m!4902901))

(assert (=> b!4309428 d!1267985))

(assert (=> b!4309428 d!1267889))

(assert (=> d!1267877 d!1267923))

(declare-fun d!1267987 () Bool)

(declare-fun e!2680316 () Bool)

(assert (=> d!1267987 e!2680316))

(declare-fun res!1766399 () Bool)

(assert (=> d!1267987 (=> res!1766399 e!2680316)))

(declare-fun lt!1530581 () Bool)

(assert (=> d!1267987 (= res!1766399 (not lt!1530581))))

(declare-fun lt!1530578 () Bool)

(assert (=> d!1267987 (= lt!1530581 lt!1530578)))

(declare-fun lt!1530580 () Unit!67290)

(declare-fun e!2680315 () Unit!67290)

(assert (=> d!1267987 (= lt!1530580 e!2680315)))

(declare-fun c!732789 () Bool)

(assert (=> d!1267987 (= c!732789 lt!1530578)))

(assert (=> d!1267987 (= lt!1530578 (containsKey!308 (toList!2395 (ite c!732678 lt!1530328 call!297797)) call!297793))))

(assert (=> d!1267987 (= (contains!10156 (ite c!732678 lt!1530328 call!297797) call!297793) lt!1530581)))

(declare-fun b!4309893 () Bool)

(declare-fun lt!1530579 () Unit!67290)

(assert (=> b!4309893 (= e!2680315 lt!1530579)))

(assert (=> b!4309893 (= lt!1530579 (lemmaContainsKeyImpliesGetValueByKeyDefined!172 (toList!2395 (ite c!732678 lt!1530328 call!297797)) call!297793))))

(assert (=> b!4309893 (isDefined!7527 (getValueByKey!252 (toList!2395 (ite c!732678 lt!1530328 call!297797)) call!297793))))

(declare-fun b!4309894 () Bool)

(declare-fun Unit!67306 () Unit!67290)

(assert (=> b!4309894 (= e!2680315 Unit!67306)))

(declare-fun b!4309895 () Bool)

(assert (=> b!4309895 (= e!2680316 (isDefined!7527 (getValueByKey!252 (toList!2395 (ite c!732678 lt!1530328 call!297797)) call!297793)))))

(assert (= (and d!1267987 c!732789) b!4309893))

(assert (= (and d!1267987 (not c!732789)) b!4309894))

(assert (= (and d!1267987 (not res!1766399)) b!4309895))

(declare-fun m!4902903 () Bool)

(assert (=> d!1267987 m!4902903))

(declare-fun m!4902905 () Bool)

(assert (=> b!4309893 m!4902905))

(assert (=> b!4309893 m!4902629))

(assert (=> b!4309893 m!4902629))

(declare-fun m!4902907 () Bool)

(assert (=> b!4309893 m!4902907))

(assert (=> b!4309895 m!4902629))

(assert (=> b!4309895 m!4902629))

(assert (=> b!4309895 m!4902907))

(assert (=> bm!297787 d!1267987))

(declare-fun bs!605027 () Bool)

(declare-fun d!1267989 () Bool)

(assert (= bs!605027 (and d!1267989 d!1267967)))

(declare-fun lambda!132898 () Int)

(assert (=> bs!605027 (not (= lambda!132898 lambda!132892))))

(declare-fun bs!605028 () Bool)

(assert (= bs!605028 (and d!1267989 b!4309399)))

(assert (=> bs!605028 (= lambda!132898 lambda!132876)))

(declare-fun bs!605029 () Bool)

(assert (= bs!605029 (and d!1267989 d!1267965)))

(assert (=> bs!605029 (not (= lambda!132898 lambda!132889))))

(declare-fun bs!605030 () Bool)

(assert (= bs!605030 (and d!1267989 d!1267907)))

(assert (=> bs!605030 (not (= lambda!132898 lambda!132885))))

(declare-fun bs!605031 () Bool)

(assert (= bs!605031 (and d!1267989 d!1267971)))

(assert (=> bs!605031 (not (= lambda!132898 lambda!132895))))

(declare-fun bs!605032 () Bool)

(assert (= bs!605032 (and d!1267989 b!4309502)))

(assert (=> bs!605032 (not (= lambda!132898 lambda!132882))))

(declare-fun bs!605033 () Bool)

(assert (= bs!605033 (and d!1267989 b!4309428)))

(assert (=> bs!605033 (not (= lambda!132898 lambda!132879))))

(assert (=> d!1267989 true))

(assert (=> d!1267989 (= (allKeysSameHashInMap!334 (map!10174 (v!42310 (underlying!9544 thiss!42308))) (hashF!6689 thiss!42308)) (forall!8726 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))) lambda!132898))))

(declare-fun bs!605034 () Bool)

(assert (= bs!605034 d!1267989))

(declare-fun m!4902909 () Bool)

(assert (=> bs!605034 m!4902909))

(assert (=> b!4309429 d!1267989))

(assert (=> b!4309429 d!1267889))

(declare-fun b!4309898 () Bool)

(declare-fun e!2680318 () Bool)

(declare-fun tp!1324393 () Bool)

(assert (=> b!4309898 (= e!2680318 (and tp_is_empty!23733 tp_is_empty!23735 tp!1324393))))

(declare-fun mapIsEmpty!20801 () Bool)

(declare-fun mapRes!20801 () Bool)

(assert (=> mapIsEmpty!20801 mapRes!20801))

(declare-fun tp!1324392 () Bool)

(declare-fun e!2680317 () Bool)

(declare-fun b!4309899 () Bool)

(assert (=> b!4309899 (= e!2680317 (and tp_is_empty!23733 tp_is_empty!23735 tp!1324392))))

(declare-fun mapNonEmpty!20801 () Bool)

(declare-fun tp!1324394 () Bool)

(assert (=> mapNonEmpty!20801 (= mapRes!20801 (and tp!1324394 e!2680318))))

(declare-fun mapRest!20801 () (Array (_ BitVec 32) List!48310))

(declare-fun mapValue!20801 () List!48310)

(declare-fun mapKey!20801 () (_ BitVec 32))

(assert (=> mapNonEmpty!20801 (= mapRest!20800 (store mapRest!20801 mapKey!20801 mapValue!20801))))

(declare-fun condMapEmpty!20801 () Bool)

(declare-fun mapDefault!20801 () List!48310)

(assert (=> mapNonEmpty!20800 (= condMapEmpty!20801 (= mapRest!20800 ((as const (Array (_ BitVec 32) List!48310)) mapDefault!20801)))))

(assert (=> mapNonEmpty!20800 (= tp!1324385 (and e!2680317 mapRes!20801))))

(assert (= (and mapNonEmpty!20800 condMapEmpty!20801) mapIsEmpty!20801))

(assert (= (and mapNonEmpty!20800 (not condMapEmpty!20801)) mapNonEmpty!20801))

(assert (= (and mapNonEmpty!20801 ((_ is Cons!48186) mapValue!20801)) b!4309898))

(assert (= (and mapNonEmpty!20800 ((_ is Cons!48186) mapDefault!20801)) b!4309899))

(declare-fun m!4902911 () Bool)

(assert (=> mapNonEmpty!20801 m!4902911))

(declare-fun tp!1324395 () Bool)

(declare-fun e!2680319 () Bool)

(declare-fun b!4309900 () Bool)

(assert (=> b!4309900 (= e!2680319 (and tp_is_empty!23733 tp_is_empty!23735 tp!1324395))))

(assert (=> b!4309522 (= tp!1324390 e!2680319)))

(assert (= (and b!4309522 ((_ is Cons!48186) (t!355111 (zeroValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))) b!4309900))

(declare-fun tp!1324396 () Bool)

(declare-fun b!4309901 () Bool)

(declare-fun e!2680320 () Bool)

(assert (=> b!4309901 (= e!2680320 (and tp_is_empty!23733 tp_is_empty!23735 tp!1324396))))

(assert (=> tb!257287 (= result!314676 e!2680320)))

(assert (= (and tb!257287 ((_ is Cons!48186) (dynLambda!20429 (defaultEntry!5042 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308))))) lt!1530248))) b!4309901))

(declare-fun b!4309902 () Bool)

(declare-fun tp!1324397 () Bool)

(declare-fun e!2680321 () Bool)

(assert (=> b!4309902 (= e!2680321 (and tp_is_empty!23733 tp_is_empty!23735 tp!1324397))))

(assert (=> b!4309520 (= tp!1324388 e!2680321)))

(assert (= (and b!4309520 ((_ is Cons!48186) (t!355111 mapValue!20797))) b!4309902))

(declare-fun tp!1324398 () Bool)

(declare-fun e!2680322 () Bool)

(declare-fun b!4309903 () Bool)

(assert (=> b!4309903 (= e!2680322 (and tp_is_empty!23733 tp_is_empty!23735 tp!1324398))))

(assert (=> b!4309515 (= tp!1324383 e!2680322)))

(assert (= (and b!4309515 ((_ is Cons!48186) (t!355111 mapDefault!20800))) b!4309903))

(declare-fun b!4309904 () Bool)

(declare-fun tp!1324399 () Bool)

(declare-fun e!2680323 () Bool)

(assert (=> b!4309904 (= e!2680323 (and tp_is_empty!23733 tp_is_empty!23735 tp!1324399))))

(assert (=> b!4309523 (= tp!1324391 e!2680323)))

(assert (= (and b!4309523 ((_ is Cons!48186) (t!355111 (minValue!4916 (v!42309 (underlying!9543 (v!42310 (underlying!9544 thiss!42308)))))))) b!4309904))

(declare-fun tp!1324400 () Bool)

(declare-fun b!4309905 () Bool)

(declare-fun e!2680324 () Bool)

(assert (=> b!4309905 (= e!2680324 (and tp_is_empty!23733 tp_is_empty!23735 tp!1324400))))

(assert (=> b!4309514 (= tp!1324384 e!2680324)))

(assert (= (and b!4309514 ((_ is Cons!48186) (t!355111 mapValue!20800))) b!4309905))

(declare-fun b!4309906 () Bool)

(declare-fun e!2680325 () Bool)

(declare-fun tp!1324401 () Bool)

(assert (=> b!4309906 (= e!2680325 (and tp_is_empty!23733 tp_is_empty!23735 tp!1324401))))

(assert (=> b!4309521 (= tp!1324389 e!2680325)))

(assert (= (and b!4309521 ((_ is Cons!48186) (t!355111 mapDefault!20797))) b!4309906))

(declare-fun b_lambda!126609 () Bool)

(assert (= b_lambda!126605 (or (and b!4309398 b_free!128587) b_lambda!126609)))

(declare-fun b_lambda!126611 () Bool)

(assert (= b_lambda!126599 (or b!4309502 b_lambda!126611)))

(declare-fun bs!605035 () Bool)

(declare-fun d!1267991 () Bool)

(assert (= bs!605035 (and d!1267991 b!4309502)))

(assert (=> bs!605035 (= (dynLambda!20428 lambda!132882 (tuple2!46613 lt!1530315 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315))) (noDuplicateKeys!208 (_2!26585 (tuple2!46613 lt!1530315 (apply!11008 (v!42310 (underlying!9544 thiss!42308)) lt!1530315)))))))

(declare-fun m!4902913 () Bool)

(assert (=> bs!605035 m!4902913))

(assert (=> d!1267949 d!1267991))

(declare-fun b_lambda!126613 () Bool)

(assert (= b_lambda!126601 (or (and b!4309398 b_free!128587) b_lambda!126613)))

(declare-fun b_lambda!126615 () Bool)

(assert (= b_lambda!126597 (or b!4309399 b_lambda!126615)))

(declare-fun bs!605036 () Bool)

(declare-fun d!1267993 () Bool)

(assert (= bs!605036 (and d!1267993 b!4309399)))

(assert (=> bs!605036 (= (dynLambda!20428 lambda!132876 (h!53621 (t!355112 (toList!2395 lt!1530249)))) (allKeysSameHash!183 (_2!26585 (h!53621 (t!355112 (toList!2395 lt!1530249)))) (_1!26585 (h!53621 (t!355112 (toList!2395 lt!1530249)))) (hashF!6689 thiss!42308)))))

(declare-fun m!4902915 () Bool)

(assert (=> bs!605036 m!4902915))

(assert (=> b!4309764 d!1267993))

(declare-fun b_lambda!126617 () Bool)

(assert (= b_lambda!126603 (or (and b!4309398 b_free!128587) b_lambda!126617)))

(declare-fun b_lambda!126619 () Bool)

(assert (= b_lambda!126607 (or b!4309428 b_lambda!126619)))

(declare-fun bs!605037 () Bool)

(declare-fun d!1267995 () Bool)

(assert (= bs!605037 (and d!1267995 b!4309428)))

(assert (=> bs!605037 (= (dynLambda!20428 lambda!132879 (h!53621 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308)))))) (noDuplicateKeys!208 (_2!26585 (h!53621 (toList!2395 (map!10174 (v!42310 (underlying!9544 thiss!42308))))))))))

(declare-fun m!4902917 () Bool)

(assert (=> bs!605037 m!4902917))

(assert (=> b!4309891 d!1267995))

(declare-fun b_lambda!126621 () Bool)

(assert (= b_lambda!126595 (or (and b!4309398 b_free!128587) b_lambda!126621)))

(check-sat (not d!1267901) (not d!1267903) (not bm!297880) (not d!1267953) (not b!4309817) (not bm!297879) (not d!1267941) (not b!4309548) (not b!4309893) (not b!4309544) (not d!1267931) (not b!4309904) (not b!4309776) (not b!4309784) (not b!4309753) (not d!1267899) b_and!340015 (not b!4309763) (not b!4309543) (not b!4309768) (not bm!297845) (not b!4309895) (not b!4309760) (not b!4309686) (not b!4309865) (not b!4309591) (not b!4309553) (not bm!297853) (not d!1267919) (not b!4309818) (not d!1267975) (not b!4309593) (not d!1267969) (not b!4309742) (not bm!297892) (not b!4309765) b_and!340005 (not b!4309731) (not bm!297796) tp_is_empty!23735 (not d!1267907) (not b!4309863) (not bm!297854) (not b_lambda!126591) (not bm!297869) (not b!4309596) (not b!4309788) (not b!4309905) (not b!4309545) (not b!4309872) (not d!1267937) (not b!4309564) (not d!1267967) (not b_lambda!126619) (not d!1267945) (not b!4309826) (not b!4309554) (not b_lambda!126611) (not d!1267917) (not b!4309555) (not b_lambda!126609) (not d!1267977) (not b!4309898) (not b!4309892) (not b!4309903) (not bm!297852) (not d!1267983) (not b_lambda!126615) (not d!1267987) (not bm!297857) (not d!1267979) (not d!1267981) (not d!1267965) (not d!1267973) (not b!4309557) (not b!4309899) (not b!4309572) (not b!4309775) (not b!4309552) (not mapNonEmpty!20801) (not bm!297868) (not b_next!129291) (not b_lambda!126613) (not b!4309724) (not bm!297864) (not bs!605037) tp_is_empty!23733 (not bm!297795) (not b!4309781) (not b!4309867) (not b!4309785) (not b!4309736) (not d!1267923) (not b!4309789) (not d!1267971) (not b!4309556) (not b!4309709) (not b!4309595) (not b!4309688) (not bm!297861) (not b_lambda!126593) (not d!1267915) (not b!4309732) (not b!4309906) (not b_lambda!126617) (not b!4309886) (not b!4309718) (not d!1267913) (not b!4309790) (not bm!297849) (not bm!297856) (not bs!605036) (not b!4309598) (not d!1267933) (not b!4309869) (not b!4309900) (not b!4309889) (not bm!297863) (not b!4309723) (not bm!297866) (not d!1267951) (not b!4309547) (not b!4309786) (not b!4309815) (not b_lambda!126621) (not b!4309778) (not b!4309792) (not bs!605035) (not bm!297851) (not d!1267963) (not b!4309558) (not d!1267949) (not b!4309773) (not bm!297891) (not b!4309549) (not d!1267989) (not b!4309885) (not d!1267905) (not d!1267961) (not b!4309787) (not b!4309901) (not d!1267935) (not b!4309902) (not b!4309546) (not b!4309699) (not d!1267911) (not tb!257289) (not b!4309771) (not b!4309705) (not b!4309679) (not d!1267929) (not d!1267909) (not d!1267955) (not b!4309574) (not b!4309770) (not b_next!129293))
(check-sat b_and!340015 b_and!340005 (not b_next!129293) (not b_next!129291))
