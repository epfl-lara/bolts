; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46460 () Bool)

(assert start!46460)

(declare-fun b!513323 () Bool)

(declare-fun b_free!13305 () Bool)

(declare-fun b_next!13305 () Bool)

(assert (=> b!513323 (= b_free!13305 (not b_next!13305))))

(declare-fun tp!159809 () Bool)

(declare-fun b_and!50731 () Bool)

(assert (=> b!513323 (= tp!159809 b_and!50731)))

(declare-fun b!513324 () Bool)

(declare-fun b_free!13307 () Bool)

(declare-fun b_next!13307 () Bool)

(assert (=> b!513324 (= b_free!13307 (not b_next!13307))))

(declare-fun tp!159807 () Bool)

(declare-fun b_and!50733 () Bool)

(assert (=> b!513324 (= tp!159807 b_and!50733)))

(declare-fun b!513314 () Bool)

(declare-fun e!306655 () Bool)

(declare-fun e!306651 () Bool)

(assert (=> b!513314 (= e!306655 e!306651)))

(declare-fun b!513315 () Bool)

(declare-fun e!306656 () Bool)

(declare-fun call!37287 () Bool)

(assert (=> b!513315 (= e!306656 call!37287)))

(declare-datatypes ((K!1302 0))(
  ( (K!1303 (val!1705 Int)) )
))
(declare-datatypes ((V!1400 0))(
  ( (V!1401 (val!1706 Int)) )
))
(declare-datatypes ((tuple2!5560 0))(
  ( (tuple2!5561 (_1!2996 K!1302) (_2!2996 V!1400)) )
))
(declare-datatypes ((List!4664 0))(
  ( (Nil!4654) (Cons!4654 (h!10051 tuple2!5560) (t!73186 List!4664)) )
))
(declare-datatypes ((ListMap!109 0))(
  ( (ListMap!110 (toList!365 List!4664)) )
))
(declare-fun e!306649 () ListMap!109)

(declare-fun bm!37280 () Bool)

(declare-fun call!37285 () ListMap!109)

(declare-fun lt!212325 () ListMap!109)

(declare-fun c!99689 () Bool)

(declare-fun eq!7 (ListMap!109 ListMap!109) Bool)

(assert (=> bm!37280 (= call!37287 (eq!7 (ite c!99689 lt!212325 call!37285) e!306649))))

(declare-fun c!99688 () Bool)

(assert (=> bm!37280 (= c!99688 c!99689)))

(declare-fun mapNonEmpty!1830 () Bool)

(declare-fun mapRes!1830 () Bool)

(declare-fun tp!159805 () Bool)

(declare-fun tp!159810 () Bool)

(assert (=> mapNonEmpty!1830 (= mapRes!1830 (and tp!159805 tp!159810))))

(declare-datatypes ((array!1805 0))(
  ( (array!1806 (arr!834 (Array (_ BitVec 32) (_ BitVec 64))) (size!3768 (_ BitVec 32))) )
))
(declare-datatypes ((array!1807 0))(
  ( (array!1808 (arr!835 (Array (_ BitVec 32) List!4664)) (size!3769 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!950 0))(
  ( (LongMapFixedSize!951 (defaultEntry!826 Int) (mask!1877 (_ BitVec 32)) (extraKeys!721 (_ BitVec 32)) (zeroValue!731 List!4664) (minValue!731 List!4664) (_size!1059 (_ BitVec 32)) (_keys!766 array!1805) (_values!753 array!1807) (_vacant!536 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!447 0))(
  ( (HashableExt!446 (__x!3316 Int)) )
))
(declare-datatypes ((Cell!1841 0))(
  ( (Cell!1842 (v!15662 LongMapFixedSize!950)) )
))
(declare-datatypes ((MutLongMap!475 0))(
  ( (LongMap!475 (underlying!1129 Cell!1841)) (MutLongMapExt!474 (__x!3317 Int)) )
))
(declare-datatypes ((Cell!1843 0))(
  ( (Cell!1844 (v!15663 MutLongMap!475)) )
))
(declare-datatypes ((MutableMap!447 0))(
  ( (MutableMapExt!446 (__x!3318 Int)) (HashMap!447 (underlying!1130 Cell!1843) (hashF!2323 Hashable!447) (_size!1060 (_ BitVec 32)) (defaultValue!596 Int)) )
))
(declare-fun thiss!47794 () MutableMap!447)

(declare-fun mapValue!1830 () List!4664)

(declare-fun mapRest!1830 () (Array (_ BitVec 32) List!4664))

(declare-fun mapKey!1830 () (_ BitVec 32))

(assert (=> mapNonEmpty!1830 (= (arr!835 (_values!753 (v!15662 (underlying!1129 (v!15663 (underlying!1130 thiss!47794)))))) (store mapRest!1830 mapKey!1830 mapValue!1830))))

(declare-fun res!217686 () Bool)

(declare-fun e!306646 () Bool)

(assert (=> start!46460 (=> (not res!217686) (not e!306646))))

(get-info :version)

(assert (=> start!46460 (= res!217686 ((_ is MutableMapExt!446) thiss!47794))))

(assert (=> start!46460 e!306646))

(declare-fun e!306654 () Bool)

(assert (=> start!46460 e!306654))

(declare-fun tp_is_empty!2513 () Bool)

(assert (=> start!46460 tp_is_empty!2513))

(declare-fun tp_is_empty!2515 () Bool)

(assert (=> start!46460 tp_is_empty!2515))

(declare-fun b!513316 () Bool)

(declare-fun e!306647 () Bool)

(declare-fun lt!212326 () MutLongMap!475)

(assert (=> b!513316 (= e!306647 (and e!306655 ((_ is LongMap!475) lt!212326)))))

(assert (=> b!513316 (= lt!212326 (v!15663 (underlying!1130 thiss!47794)))))

(declare-fun b!513317 () Bool)

(declare-fun e!306657 () Bool)

(assert (=> b!513317 (= e!306651 e!306657)))

(declare-fun v!11800 () V!1400)

(declare-fun key!7215 () K!1302)

(declare-fun call!37286 () ListMap!109)

(declare-fun b!513318 () Bool)

(declare-fun +!11 (ListMap!109 tuple2!5560) ListMap!109)

(assert (=> b!513318 (= e!306649 (+!11 call!37286 (tuple2!5561 key!7215 v!11800)))))

(declare-fun bm!37281 () Bool)

(declare-fun abstractMap!39 (MutableMap!447) ListMap!109)

(assert (=> bm!37281 (= call!37286 (abstractMap!39 thiss!47794))))

(declare-fun bm!37282 () Bool)

(declare-datatypes ((tuple2!5562 0))(
  ( (tuple2!5563 (_1!2997 Bool) (_2!2997 MutableMap!447)) )
))
(declare-fun lt!212324 () tuple2!5562)

(assert (=> bm!37282 (= call!37285 (abstractMap!39 (_2!2997 lt!212324)))))

(declare-fun b!513319 () Bool)

(declare-fun e!306652 () Bool)

(declare-fun e!306653 () Bool)

(assert (=> b!513319 (= e!306652 e!306653)))

(assert (=> b!513319 (= c!99689 (_1!2997 lt!212324))))

(declare-fun b!513320 () Bool)

(assert (=> b!513320 (= e!306653 e!306656)))

(assert (=> b!513320 (= lt!212325 call!37285)))

(declare-fun res!217689 () Bool)

(declare-fun contains!1054 (ListMap!109 K!1302) Bool)

(assert (=> b!513320 (= res!217689 (contains!1054 lt!212325 key!7215))))

(assert (=> b!513320 (=> (not res!217689) (not e!306656))))

(declare-fun b!513321 () Bool)

(declare-fun e!306650 () Bool)

(declare-fun tp!159806 () Bool)

(assert (=> b!513321 (= e!306650 (and tp!159806 mapRes!1830))))

(declare-fun condMapEmpty!1830 () Bool)

(declare-fun mapDefault!1830 () List!4664)

(assert (=> b!513321 (= condMapEmpty!1830 (= (arr!835 (_values!753 (v!15662 (underlying!1129 (v!15663 (underlying!1130 thiss!47794)))))) ((as const (Array (_ BitVec 32) List!4664)) mapDefault!1830)))))

(declare-fun b!513322 () Bool)

(assert (=> b!513322 (= e!306646 (not e!306652))))

(declare-fun res!217688 () Bool)

(assert (=> b!513322 (=> (not res!217688) (not e!306652))))

(declare-fun valid!429 (MutableMap!447) Bool)

(assert (=> b!513322 (= res!217688 (valid!429 (_2!2997 lt!212324)))))

(assert (=> b!513322 ((_ is MutableMapExt!446) (_2!2997 lt!212324))))

(declare-fun choose!3660 (MutableMap!447 K!1302 V!1400) tuple2!5562)

(assert (=> b!513322 (= lt!212324 (choose!3660 thiss!47794 key!7215 v!11800))))

(declare-fun tp!159808 () Bool)

(declare-fun tp!159811 () Bool)

(declare-fun array_inv!597 (array!1805) Bool)

(declare-fun array_inv!598 (array!1807) Bool)

(assert (=> b!513323 (= e!306657 (and tp!159809 tp!159808 tp!159811 (array_inv!597 (_keys!766 (v!15662 (underlying!1129 (v!15663 (underlying!1130 thiss!47794)))))) (array_inv!598 (_values!753 (v!15662 (underlying!1129 (v!15663 (underlying!1130 thiss!47794)))))) e!306650))))

(assert (=> b!513324 (= e!306654 (and e!306647 tp!159807))))

(declare-fun b!513325 () Bool)

(declare-fun res!217687 () Bool)

(assert (=> b!513325 (=> (not res!217687) (not e!306646))))

(assert (=> b!513325 (= res!217687 (valid!429 thiss!47794))))

(declare-fun b!513326 () Bool)

(assert (=> b!513326 (= e!306649 call!37286)))

(declare-fun mapIsEmpty!1830 () Bool)

(assert (=> mapIsEmpty!1830 mapRes!1830))

(declare-fun b!513327 () Bool)

(assert (=> b!513327 (= e!306653 call!37287)))

(assert (= (and start!46460 res!217686) b!513325))

(assert (= (and b!513325 res!217687) b!513322))

(assert (= (and b!513322 res!217688) b!513319))

(assert (= (and b!513319 c!99689) b!513320))

(assert (= (and b!513319 (not c!99689)) b!513327))

(assert (= (and b!513320 res!217689) b!513315))

(assert (= (or b!513320 b!513327) bm!37282))

(assert (= (or b!513315 b!513327) bm!37281))

(assert (= (or b!513315 b!513327) bm!37280))

(assert (= (and bm!37280 c!99688) b!513318))

(assert (= (and bm!37280 (not c!99688)) b!513326))

(assert (= (and b!513321 condMapEmpty!1830) mapIsEmpty!1830))

(assert (= (and b!513321 (not condMapEmpty!1830)) mapNonEmpty!1830))

(assert (= b!513323 b!513321))

(assert (= b!513317 b!513323))

(assert (= b!513314 b!513317))

(assert (= (and b!513316 ((_ is LongMap!475) (v!15663 (underlying!1130 thiss!47794)))) b!513314))

(assert (= b!513324 b!513316))

(assert (= (and start!46460 ((_ is HashMap!447) thiss!47794)) b!513324))

(declare-fun m!759431 () Bool)

(assert (=> b!513320 m!759431))

(declare-fun m!759433 () Bool)

(assert (=> b!513325 m!759433))

(declare-fun m!759435 () Bool)

(assert (=> b!513322 m!759435))

(declare-fun m!759437 () Bool)

(assert (=> b!513322 m!759437))

(declare-fun m!759439 () Bool)

(assert (=> mapNonEmpty!1830 m!759439))

(declare-fun m!759441 () Bool)

(assert (=> b!513318 m!759441))

(declare-fun m!759443 () Bool)

(assert (=> b!513323 m!759443))

(declare-fun m!759445 () Bool)

(assert (=> b!513323 m!759445))

(declare-fun m!759447 () Bool)

(assert (=> bm!37280 m!759447))

(declare-fun m!759449 () Bool)

(assert (=> bm!37281 m!759449))

(declare-fun m!759451 () Bool)

(assert (=> bm!37282 m!759451))

(check-sat (not b!513325) tp_is_empty!2513 (not bm!37281) (not b!513323) tp_is_empty!2515 b_and!50731 (not bm!37282) (not b!513318) (not bm!37280) (not b_next!13305) (not b!513322) (not b!513320) (not b!513321) b_and!50733 (not b_next!13307) (not mapNonEmpty!1830))
(check-sat b_and!50731 b_and!50733 (not b_next!13307) (not b_next!13305))
(get-model)

(declare-fun d!184170 () Bool)

(declare-fun c!99692 () Bool)

(assert (=> d!184170 (= c!99692 ((_ is MutableMapExt!446) (_2!2997 lt!212324)))))

(declare-fun e!306660 () ListMap!109)

(assert (=> d!184170 (= (abstractMap!39 (_2!2997 lt!212324)) e!306660)))

(declare-fun b!513332 () Bool)

(declare-fun abstractMap!40 (MutableMap!447) ListMap!109)

(assert (=> b!513332 (= e!306660 (abstractMap!40 (_2!2997 lt!212324)))))

(declare-fun b!513333 () Bool)

(declare-fun abstractMap!41 (MutableMap!447) ListMap!109)

(assert (=> b!513333 (= e!306660 (abstractMap!41 (_2!2997 lt!212324)))))

(assert (= (and d!184170 c!99692) b!513332))

(assert (= (and d!184170 (not c!99692)) b!513333))

(declare-fun m!759453 () Bool)

(assert (=> b!513332 m!759453))

(declare-fun m!759455 () Bool)

(assert (=> b!513333 m!759455))

(assert (=> bm!37282 d!184170))

(declare-fun d!184172 () Bool)

(assert (=> d!184172 (= (array_inv!597 (_keys!766 (v!15662 (underlying!1129 (v!15663 (underlying!1130 thiss!47794)))))) (bvsge (size!3768 (_keys!766 (v!15662 (underlying!1129 (v!15663 (underlying!1130 thiss!47794)))))) #b00000000000000000000000000000000))))

(assert (=> b!513323 d!184172))

(declare-fun d!184174 () Bool)

(assert (=> d!184174 (= (array_inv!598 (_values!753 (v!15662 (underlying!1129 (v!15663 (underlying!1130 thiss!47794)))))) (bvsge (size!3769 (_values!753 (v!15662 (underlying!1129 (v!15663 (underlying!1130 thiss!47794)))))) #b00000000000000000000000000000000))))

(assert (=> b!513323 d!184174))

(declare-fun b!513352 () Bool)

(assert (=> b!513352 false))

(declare-datatypes ((Unit!8405 0))(
  ( (Unit!8406) )
))
(declare-fun lt!212344 () Unit!8405)

(declare-fun lt!212347 () Unit!8405)

(assert (=> b!513352 (= lt!212344 lt!212347)))

(declare-fun containsKey!12 (List!4664 K!1302) Bool)

(assert (=> b!513352 (containsKey!12 (toList!365 lt!212325) key!7215)))

(declare-fun lemmaInGetKeysListThenContainsKey!3 (List!4664 K!1302) Unit!8405)

(assert (=> b!513352 (= lt!212347 (lemmaInGetKeysListThenContainsKey!3 (toList!365 lt!212325) key!7215))))

(declare-fun e!306673 () Unit!8405)

(declare-fun Unit!8407 () Unit!8405)

(assert (=> b!513352 (= e!306673 Unit!8407)))

(declare-fun d!184176 () Bool)

(declare-fun e!306674 () Bool)

(assert (=> d!184176 e!306674))

(declare-fun res!217697 () Bool)

(assert (=> d!184176 (=> res!217697 e!306674)))

(declare-fun e!306675 () Bool)

(assert (=> d!184176 (= res!217697 e!306675)))

(declare-fun res!217696 () Bool)

(assert (=> d!184176 (=> (not res!217696) (not e!306675))))

(declare-fun lt!212345 () Bool)

(assert (=> d!184176 (= res!217696 (not lt!212345))))

(declare-fun lt!212348 () Bool)

(assert (=> d!184176 (= lt!212345 lt!212348)))

(declare-fun lt!212346 () Unit!8405)

(declare-fun e!306678 () Unit!8405)

(assert (=> d!184176 (= lt!212346 e!306678)))

(declare-fun c!99700 () Bool)

(assert (=> d!184176 (= c!99700 lt!212348)))

(assert (=> d!184176 (= lt!212348 (containsKey!12 (toList!365 lt!212325) key!7215))))

(assert (=> d!184176 (= (contains!1054 lt!212325 key!7215) lt!212345)))

(declare-fun b!513353 () Bool)

(declare-fun Unit!8408 () Unit!8405)

(assert (=> b!513353 (= e!306673 Unit!8408)))

(declare-fun b!513354 () Bool)

(declare-datatypes ((List!4665 0))(
  ( (Nil!4655) (Cons!4655 (h!10052 K!1302) (t!73187 List!4665)) )
))
(declare-fun e!306677 () List!4665)

(declare-fun keys!1795 (ListMap!109) List!4665)

(assert (=> b!513354 (= e!306677 (keys!1795 lt!212325))))

(declare-fun b!513355 () Bool)

(declare-fun e!306676 () Bool)

(declare-fun contains!1055 (List!4665 K!1302) Bool)

(assert (=> b!513355 (= e!306676 (contains!1055 (keys!1795 lt!212325) key!7215))))

(declare-fun b!513356 () Bool)

(assert (=> b!513356 (= e!306678 e!306673)))

(declare-fun c!99699 () Bool)

(declare-fun call!37290 () Bool)

(assert (=> b!513356 (= c!99699 call!37290)))

(declare-fun b!513357 () Bool)

(assert (=> b!513357 (= e!306675 (not (contains!1055 (keys!1795 lt!212325) key!7215)))))

(declare-fun bm!37285 () Bool)

(assert (=> bm!37285 (= call!37290 (contains!1055 e!306677 key!7215))))

(declare-fun c!99701 () Bool)

(assert (=> bm!37285 (= c!99701 c!99700)))

(declare-fun b!513358 () Bool)

(declare-fun getKeysList!4 (List!4664) List!4665)

(assert (=> b!513358 (= e!306677 (getKeysList!4 (toList!365 lt!212325)))))

(declare-fun b!513359 () Bool)

(declare-fun lt!212350 () Unit!8405)

(assert (=> b!513359 (= e!306678 lt!212350)))

(declare-fun lt!212343 () Unit!8405)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!7 (List!4664 K!1302) Unit!8405)

(assert (=> b!513359 (= lt!212343 (lemmaContainsKeyImpliesGetValueByKeyDefined!7 (toList!365 lt!212325) key!7215))))

(declare-datatypes ((Option!1229 0))(
  ( (None!1228) (Some!1228 (v!15665 V!1400)) )
))
(declare-fun isDefined!1043 (Option!1229) Bool)

(declare-fun getValueByKey!15 (List!4664 K!1302) Option!1229)

(assert (=> b!513359 (isDefined!1043 (getValueByKey!15 (toList!365 lt!212325) key!7215))))

(declare-fun lt!212349 () Unit!8405)

(assert (=> b!513359 (= lt!212349 lt!212343)))

(declare-fun lemmaInListThenGetKeysListContains!3 (List!4664 K!1302) Unit!8405)

(assert (=> b!513359 (= lt!212350 (lemmaInListThenGetKeysListContains!3 (toList!365 lt!212325) key!7215))))

(assert (=> b!513359 call!37290))

(declare-fun b!513360 () Bool)

(assert (=> b!513360 (= e!306674 e!306676)))

(declare-fun res!217698 () Bool)

(assert (=> b!513360 (=> (not res!217698) (not e!306676))))

(assert (=> b!513360 (= res!217698 (isDefined!1043 (getValueByKey!15 (toList!365 lt!212325) key!7215)))))

(assert (= (and d!184176 c!99700) b!513359))

(assert (= (and d!184176 (not c!99700)) b!513356))

(assert (= (and b!513356 c!99699) b!513352))

(assert (= (and b!513356 (not c!99699)) b!513353))

(assert (= (or b!513359 b!513356) bm!37285))

(assert (= (and bm!37285 c!99701) b!513358))

(assert (= (and bm!37285 (not c!99701)) b!513354))

(assert (= (and d!184176 res!217696) b!513357))

(assert (= (and d!184176 (not res!217697)) b!513360))

(assert (= (and b!513360 res!217698) b!513355))

(declare-fun m!759457 () Bool)

(assert (=> d!184176 m!759457))

(declare-fun m!759459 () Bool)

(assert (=> b!513359 m!759459))

(declare-fun m!759461 () Bool)

(assert (=> b!513359 m!759461))

(assert (=> b!513359 m!759461))

(declare-fun m!759463 () Bool)

(assert (=> b!513359 m!759463))

(declare-fun m!759465 () Bool)

(assert (=> b!513359 m!759465))

(declare-fun m!759467 () Bool)

(assert (=> b!513354 m!759467))

(declare-fun m!759469 () Bool)

(assert (=> bm!37285 m!759469))

(declare-fun m!759471 () Bool)

(assert (=> b!513358 m!759471))

(assert (=> b!513357 m!759467))

(assert (=> b!513357 m!759467))

(declare-fun m!759473 () Bool)

(assert (=> b!513357 m!759473))

(assert (=> b!513355 m!759467))

(assert (=> b!513355 m!759467))

(assert (=> b!513355 m!759473))

(assert (=> b!513360 m!759461))

(assert (=> b!513360 m!759461))

(assert (=> b!513360 m!759463))

(assert (=> b!513352 m!759457))

(declare-fun m!759475 () Bool)

(assert (=> b!513352 m!759475))

(assert (=> b!513320 d!184176))

(declare-fun d!184178 () Bool)

(declare-fun c!99704 () Bool)

(assert (=> d!184178 (= c!99704 ((_ is MutableMapExt!446) thiss!47794))))

(declare-fun e!306681 () Bool)

(assert (=> d!184178 (= (valid!429 thiss!47794) e!306681)))

(declare-fun b!513365 () Bool)

(declare-fun valid!430 (MutableMap!447) Bool)

(assert (=> b!513365 (= e!306681 (valid!430 thiss!47794))))

(declare-fun b!513366 () Bool)

(declare-fun valid!431 (MutableMap!447) Bool)

(assert (=> b!513366 (= e!306681 (valid!431 thiss!47794))))

(assert (= (and d!184178 c!99704) b!513365))

(assert (= (and d!184178 (not c!99704)) b!513366))

(declare-fun m!759477 () Bool)

(assert (=> b!513365 m!759477))

(declare-fun m!759479 () Bool)

(assert (=> b!513366 m!759479))

(assert (=> b!513325 d!184178))

(declare-fun d!184180 () Bool)

(declare-fun e!306684 () Bool)

(assert (=> d!184180 e!306684))

(declare-fun res!217703 () Bool)

(assert (=> d!184180 (=> (not res!217703) (not e!306684))))

(declare-fun lt!212361 () ListMap!109)

(assert (=> d!184180 (= res!217703 (contains!1054 lt!212361 (_1!2996 (tuple2!5561 key!7215 v!11800))))))

(declare-fun lt!212360 () List!4664)

(assert (=> d!184180 (= lt!212361 (ListMap!110 lt!212360))))

(declare-fun lt!212362 () Unit!8405)

(declare-fun lt!212359 () Unit!8405)

(assert (=> d!184180 (= lt!212362 lt!212359)))

(assert (=> d!184180 (= (getValueByKey!15 lt!212360 (_1!2996 (tuple2!5561 key!7215 v!11800))) (Some!1228 (_2!2996 (tuple2!5561 key!7215 v!11800))))))

(declare-fun lemmaContainsTupThenGetReturnValue!5 (List!4664 K!1302 V!1400) Unit!8405)

(assert (=> d!184180 (= lt!212359 (lemmaContainsTupThenGetReturnValue!5 lt!212360 (_1!2996 (tuple2!5561 key!7215 v!11800)) (_2!2996 (tuple2!5561 key!7215 v!11800))))))

(declare-fun insertNoDuplicatedKeys!3 (List!4664 K!1302 V!1400) List!4664)

(assert (=> d!184180 (= lt!212360 (insertNoDuplicatedKeys!3 (toList!365 call!37286) (_1!2996 (tuple2!5561 key!7215 v!11800)) (_2!2996 (tuple2!5561 key!7215 v!11800))))))

(assert (=> d!184180 (= (+!11 call!37286 (tuple2!5561 key!7215 v!11800)) lt!212361)))

(declare-fun b!513371 () Bool)

(declare-fun res!217704 () Bool)

(assert (=> b!513371 (=> (not res!217704) (not e!306684))))

(assert (=> b!513371 (= res!217704 (= (getValueByKey!15 (toList!365 lt!212361) (_1!2996 (tuple2!5561 key!7215 v!11800))) (Some!1228 (_2!2996 (tuple2!5561 key!7215 v!11800)))))))

(declare-fun b!513372 () Bool)

(declare-fun contains!1056 (List!4664 tuple2!5560) Bool)

(assert (=> b!513372 (= e!306684 (contains!1056 (toList!365 lt!212361) (tuple2!5561 key!7215 v!11800)))))

(assert (= (and d!184180 res!217703) b!513371))

(assert (= (and b!513371 res!217704) b!513372))

(declare-fun m!759481 () Bool)

(assert (=> d!184180 m!759481))

(declare-fun m!759483 () Bool)

(assert (=> d!184180 m!759483))

(declare-fun m!759485 () Bool)

(assert (=> d!184180 m!759485))

(declare-fun m!759487 () Bool)

(assert (=> d!184180 m!759487))

(declare-fun m!759489 () Bool)

(assert (=> b!513371 m!759489))

(declare-fun m!759491 () Bool)

(assert (=> b!513372 m!759491))

(assert (=> b!513318 d!184180))

(declare-fun d!184182 () Bool)

(declare-fun c!99705 () Bool)

(assert (=> d!184182 (= c!99705 ((_ is MutableMapExt!446) (_2!2997 lt!212324)))))

(declare-fun e!306685 () Bool)

(assert (=> d!184182 (= (valid!429 (_2!2997 lt!212324)) e!306685)))

(declare-fun b!513373 () Bool)

(assert (=> b!513373 (= e!306685 (valid!430 (_2!2997 lt!212324)))))

(declare-fun b!513374 () Bool)

(assert (=> b!513374 (= e!306685 (valid!431 (_2!2997 lt!212324)))))

(assert (= (and d!184182 c!99705) b!513373))

(assert (= (and d!184182 (not c!99705)) b!513374))

(declare-fun m!759493 () Bool)

(assert (=> b!513373 m!759493))

(declare-fun m!759495 () Bool)

(assert (=> b!513374 m!759495))

(assert (=> b!513322 d!184182))

(declare-fun d!184184 () Bool)

(declare-fun choose!3661 (MutableMap!447 K!1302 V!1400) tuple2!5562)

(assert (=> d!184184 (= (choose!3660 thiss!47794 key!7215 v!11800) (choose!3661 thiss!47794 key!7215 v!11800))))

(declare-fun bs!59373 () Bool)

(assert (= bs!59373 d!184184))

(declare-fun m!759497 () Bool)

(assert (=> bs!59373 m!759497))

(assert (=> b!513322 d!184184))

(declare-fun d!184186 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!806 (List!4664) (InoxSet tuple2!5560))

(assert (=> d!184186 (= (eq!7 (ite c!99689 lt!212325 call!37285) e!306649) (= (content!806 (toList!365 (ite c!99689 lt!212325 call!37285))) (content!806 (toList!365 e!306649))))))

(declare-fun bs!59374 () Bool)

(assert (= bs!59374 d!184186))

(declare-fun m!759499 () Bool)

(assert (=> bs!59374 m!759499))

(declare-fun m!759501 () Bool)

(assert (=> bs!59374 m!759501))

(assert (=> bm!37280 d!184186))

(declare-fun d!184188 () Bool)

(declare-fun c!99706 () Bool)

(assert (=> d!184188 (= c!99706 ((_ is MutableMapExt!446) thiss!47794))))

(declare-fun e!306686 () ListMap!109)

(assert (=> d!184188 (= (abstractMap!39 thiss!47794) e!306686)))

(declare-fun b!513375 () Bool)

(assert (=> b!513375 (= e!306686 (abstractMap!40 thiss!47794))))

(declare-fun b!513376 () Bool)

(assert (=> b!513376 (= e!306686 (abstractMap!41 thiss!47794))))

(assert (= (and d!184188 c!99706) b!513375))

(assert (= (and d!184188 (not c!99706)) b!513376))

(declare-fun m!759503 () Bool)

(assert (=> b!513375 m!759503))

(declare-fun m!759505 () Bool)

(assert (=> b!513376 m!759505))

(assert (=> bm!37281 d!184188))

(declare-fun e!306689 () Bool)

(declare-fun b!513381 () Bool)

(declare-fun tp!159814 () Bool)

(assert (=> b!513381 (= e!306689 (and tp_is_empty!2513 tp_is_empty!2515 tp!159814))))

(assert (=> b!513323 (= tp!159808 e!306689)))

(assert (= (and b!513323 ((_ is Cons!4654) (zeroValue!731 (v!15662 (underlying!1129 (v!15663 (underlying!1130 thiss!47794))))))) b!513381))

(declare-fun tp!159815 () Bool)

(declare-fun e!306690 () Bool)

(declare-fun b!513382 () Bool)

(assert (=> b!513382 (= e!306690 (and tp_is_empty!2513 tp_is_empty!2515 tp!159815))))

(assert (=> b!513323 (= tp!159811 e!306690)))

(assert (= (and b!513323 ((_ is Cons!4654) (minValue!731 (v!15662 (underlying!1129 (v!15663 (underlying!1130 thiss!47794))))))) b!513382))

(declare-fun mapIsEmpty!1833 () Bool)

(declare-fun mapRes!1833 () Bool)

(assert (=> mapIsEmpty!1833 mapRes!1833))

(declare-fun e!306695 () Bool)

(declare-fun tp!159823 () Bool)

(declare-fun b!513389 () Bool)

(assert (=> b!513389 (= e!306695 (and tp_is_empty!2513 tp_is_empty!2515 tp!159823))))

(declare-fun condMapEmpty!1833 () Bool)

(declare-fun mapDefault!1833 () List!4664)

(assert (=> mapNonEmpty!1830 (= condMapEmpty!1833 (= mapRest!1830 ((as const (Array (_ BitVec 32) List!4664)) mapDefault!1833)))))

(declare-fun e!306696 () Bool)

(assert (=> mapNonEmpty!1830 (= tp!159805 (and e!306696 mapRes!1833))))

(declare-fun tp!159824 () Bool)

(declare-fun b!513390 () Bool)

(assert (=> b!513390 (= e!306696 (and tp_is_empty!2513 tp_is_empty!2515 tp!159824))))

(declare-fun mapNonEmpty!1833 () Bool)

(declare-fun tp!159822 () Bool)

(assert (=> mapNonEmpty!1833 (= mapRes!1833 (and tp!159822 e!306695))))

(declare-fun mapKey!1833 () (_ BitVec 32))

(declare-fun mapValue!1833 () List!4664)

(declare-fun mapRest!1833 () (Array (_ BitVec 32) List!4664))

(assert (=> mapNonEmpty!1833 (= mapRest!1830 (store mapRest!1833 mapKey!1833 mapValue!1833))))

(assert (= (and mapNonEmpty!1830 condMapEmpty!1833) mapIsEmpty!1833))

(assert (= (and mapNonEmpty!1830 (not condMapEmpty!1833)) mapNonEmpty!1833))

(assert (= (and mapNonEmpty!1833 ((_ is Cons!4654) mapValue!1833)) b!513389))

(assert (= (and mapNonEmpty!1830 ((_ is Cons!4654) mapDefault!1833)) b!513390))

(declare-fun m!759507 () Bool)

(assert (=> mapNonEmpty!1833 m!759507))

(declare-fun tp!159825 () Bool)

(declare-fun b!513391 () Bool)

(declare-fun e!306697 () Bool)

(assert (=> b!513391 (= e!306697 (and tp_is_empty!2513 tp_is_empty!2515 tp!159825))))

(assert (=> mapNonEmpty!1830 (= tp!159810 e!306697)))

(assert (= (and mapNonEmpty!1830 ((_ is Cons!4654) mapValue!1830)) b!513391))

(declare-fun e!306698 () Bool)

(declare-fun tp!159826 () Bool)

(declare-fun b!513392 () Bool)

(assert (=> b!513392 (= e!306698 (and tp_is_empty!2513 tp_is_empty!2515 tp!159826))))

(assert (=> b!513321 (= tp!159806 e!306698)))

(assert (= (and b!513321 ((_ is Cons!4654) mapDefault!1830)) b!513392))

(check-sat (not b!513375) tp_is_empty!2513 (not b!513373) (not b!513382) (not b!513374) (not b!513357) (not b!513371) (not b!513376) (not b!513392) (not mapNonEmpty!1833) (not b!513352) (not b_next!13305) (not b!513365) (not b!513354) (not b!513358) tp_is_empty!2515 (not d!184184) (not d!184176) (not bm!37285) (not b!513390) (not d!184180) (not b!513333) b_and!50733 (not b!513372) b_and!50731 (not b!513332) (not b!513359) (not b!513366) (not b!513389) (not b!513355) (not b!513381) (not b!513360) (not b_next!13307) (not d!184186) (not b!513391))
(check-sat b_and!50731 b_and!50733 (not b_next!13307) (not b_next!13305))
(get-model)

(declare-fun d!184190 () Bool)

(declare-fun choose!3662 (MutableMap!447) Bool)

(assert (=> d!184190 (= (valid!430 (_2!2997 lt!212324)) (choose!3662 (_2!2997 lt!212324)))))

(declare-fun bs!59375 () Bool)

(assert (= bs!59375 d!184190))

(declare-fun m!759509 () Bool)

(assert (=> bs!59375 m!759509))

(assert (=> b!513373 d!184190))

(declare-fun d!184192 () Bool)

(declare-fun res!217709 () Bool)

(declare-fun e!306701 () Bool)

(assert (=> d!184192 (=> (not res!217709) (not e!306701))))

(declare-fun valid!432 (MutLongMap!475) Bool)

(assert (=> d!184192 (= res!217709 (valid!432 (v!15663 (underlying!1130 (_2!2997 lt!212324)))))))

(assert (=> d!184192 (= (valid!431 (_2!2997 lt!212324)) e!306701)))

(declare-fun b!513397 () Bool)

(declare-fun res!217710 () Bool)

(assert (=> b!513397 (=> (not res!217710) (not e!306701))))

(declare-fun lambda!14266 () Int)

(declare-datatypes ((tuple2!5564 0))(
  ( (tuple2!5565 (_1!2998 (_ BitVec 64)) (_2!2998 List!4664)) )
))
(declare-datatypes ((List!4666 0))(
  ( (Nil!4656) (Cons!4656 (h!10053 tuple2!5564) (t!73188 List!4666)) )
))
(declare-fun forall!1350 (List!4666 Int) Bool)

(declare-datatypes ((ListLongMap!53 0))(
  ( (ListLongMap!54 (toList!366 List!4666)) )
))
(declare-fun map!962 (MutLongMap!475) ListLongMap!53)

(assert (=> b!513397 (= res!217710 (forall!1350 (toList!366 (map!962 (v!15663 (underlying!1130 (_2!2997 lt!212324))))) lambda!14266))))

(declare-fun b!513398 () Bool)

(declare-fun allKeysSameHashInMap!15 (ListLongMap!53 Hashable!447) Bool)

(assert (=> b!513398 (= e!306701 (allKeysSameHashInMap!15 (map!962 (v!15663 (underlying!1130 (_2!2997 lt!212324)))) (hashF!2323 (_2!2997 lt!212324))))))

(assert (= (and d!184192 res!217709) b!513397))

(assert (= (and b!513397 res!217710) b!513398))

(declare-fun m!759511 () Bool)

(assert (=> d!184192 m!759511))

(declare-fun m!759513 () Bool)

(assert (=> b!513397 m!759513))

(declare-fun m!759515 () Bool)

(assert (=> b!513397 m!759515))

(assert (=> b!513398 m!759513))

(assert (=> b!513398 m!759513))

(declare-fun m!759517 () Bool)

(assert (=> b!513398 m!759517))

(assert (=> b!513374 d!184192))

(declare-fun d!184194 () Bool)

(declare-fun lt!212365 () Bool)

(declare-fun content!807 (List!4665) (InoxSet K!1302))

(assert (=> d!184194 (= lt!212365 (select (content!807 (keys!1795 lt!212325)) key!7215))))

(declare-fun e!306706 () Bool)

(assert (=> d!184194 (= lt!212365 e!306706)))

(declare-fun res!217715 () Bool)

(assert (=> d!184194 (=> (not res!217715) (not e!306706))))

(assert (=> d!184194 (= res!217715 ((_ is Cons!4655) (keys!1795 lt!212325)))))

(assert (=> d!184194 (= (contains!1055 (keys!1795 lt!212325) key!7215) lt!212365)))

(declare-fun b!513403 () Bool)

(declare-fun e!306707 () Bool)

(assert (=> b!513403 (= e!306706 e!306707)))

(declare-fun res!217716 () Bool)

(assert (=> b!513403 (=> res!217716 e!306707)))

(assert (=> b!513403 (= res!217716 (= (h!10052 (keys!1795 lt!212325)) key!7215))))

(declare-fun b!513404 () Bool)

(assert (=> b!513404 (= e!306707 (contains!1055 (t!73187 (keys!1795 lt!212325)) key!7215))))

(assert (= (and d!184194 res!217715) b!513403))

(assert (= (and b!513403 (not res!217716)) b!513404))

(assert (=> d!184194 m!759467))

(declare-fun m!759519 () Bool)

(assert (=> d!184194 m!759519))

(declare-fun m!759521 () Bool)

(assert (=> d!184194 m!759521))

(declare-fun m!759523 () Bool)

(assert (=> b!513404 m!759523))

(assert (=> b!513357 d!184194))

(declare-fun b!513412 () Bool)

(assert (=> b!513412 true))

(declare-fun d!184196 () Bool)

(declare-fun e!306710 () Bool)

(assert (=> d!184196 e!306710))

(declare-fun res!217725 () Bool)

(assert (=> d!184196 (=> (not res!217725) (not e!306710))))

(declare-fun lt!212368 () List!4665)

(declare-fun noDuplicate!109 (List!4665) Bool)

(assert (=> d!184196 (= res!217725 (noDuplicate!109 lt!212368))))

(assert (=> d!184196 (= lt!212368 (getKeysList!4 (toList!365 lt!212325)))))

(assert (=> d!184196 (= (keys!1795 lt!212325) lt!212368)))

(declare-fun b!513411 () Bool)

(declare-fun res!217723 () Bool)

(assert (=> b!513411 (=> (not res!217723) (not e!306710))))

(declare-fun length!4 (List!4665) Int)

(declare-fun length!5 (List!4664) Int)

(assert (=> b!513411 (= res!217723 (= (length!4 lt!212368) (length!5 (toList!365 lt!212325))))))

(declare-fun res!217724 () Bool)

(assert (=> b!513412 (=> (not res!217724) (not e!306710))))

(declare-fun lambda!14271 () Int)

(declare-fun forall!1351 (List!4665 Int) Bool)

(assert (=> b!513412 (= res!217724 (forall!1351 lt!212368 lambda!14271))))

(declare-fun b!513413 () Bool)

(declare-fun lambda!14272 () Int)

(declare-fun map!963 (List!4664 Int) List!4665)

(assert (=> b!513413 (= e!306710 (= (content!807 lt!212368) (content!807 (map!963 (toList!365 lt!212325) lambda!14272))))))

(assert (= (and d!184196 res!217725) b!513411))

(assert (= (and b!513411 res!217723) b!513412))

(assert (= (and b!513412 res!217724) b!513413))

(declare-fun m!759525 () Bool)

(assert (=> d!184196 m!759525))

(assert (=> d!184196 m!759471))

(declare-fun m!759527 () Bool)

(assert (=> b!513411 m!759527))

(declare-fun m!759529 () Bool)

(assert (=> b!513411 m!759529))

(declare-fun m!759531 () Bool)

(assert (=> b!513412 m!759531))

(declare-fun m!759533 () Bool)

(assert (=> b!513413 m!759533))

(declare-fun m!759535 () Bool)

(assert (=> b!513413 m!759535))

(assert (=> b!513413 m!759535))

(declare-fun m!759537 () Bool)

(assert (=> b!513413 m!759537))

(assert (=> b!513357 d!184196))

(declare-fun d!184198 () Bool)

(declare-fun c!99709 () Bool)

(assert (=> d!184198 (= c!99709 ((_ is Nil!4654) (toList!365 (ite c!99689 lt!212325 call!37285))))))

(declare-fun e!306713 () (InoxSet tuple2!5560))

(assert (=> d!184198 (= (content!806 (toList!365 (ite c!99689 lt!212325 call!37285))) e!306713)))

(declare-fun b!513420 () Bool)

(assert (=> b!513420 (= e!306713 ((as const (Array tuple2!5560 Bool)) false))))

(declare-fun b!513421 () Bool)

(assert (=> b!513421 (= e!306713 ((_ map or) (store ((as const (Array tuple2!5560 Bool)) false) (h!10051 (toList!365 (ite c!99689 lt!212325 call!37285))) true) (content!806 (t!73186 (toList!365 (ite c!99689 lt!212325 call!37285))))))))

(assert (= (and d!184198 c!99709) b!513420))

(assert (= (and d!184198 (not c!99709)) b!513421))

(declare-fun m!759539 () Bool)

(assert (=> b!513421 m!759539))

(declare-fun m!759541 () Bool)

(assert (=> b!513421 m!759541))

(assert (=> d!184186 d!184198))

(declare-fun d!184200 () Bool)

(declare-fun c!99710 () Bool)

(assert (=> d!184200 (= c!99710 ((_ is Nil!4654) (toList!365 e!306649)))))

(declare-fun e!306714 () (InoxSet tuple2!5560))

(assert (=> d!184200 (= (content!806 (toList!365 e!306649)) e!306714)))

(declare-fun b!513422 () Bool)

(assert (=> b!513422 (= e!306714 ((as const (Array tuple2!5560 Bool)) false))))

(declare-fun b!513423 () Bool)

(assert (=> b!513423 (= e!306714 ((_ map or) (store ((as const (Array tuple2!5560 Bool)) false) (h!10051 (toList!365 e!306649)) true) (content!806 (t!73186 (toList!365 e!306649)))))))

(assert (= (and d!184200 c!99710) b!513422))

(assert (= (and d!184200 (not c!99710)) b!513423))

(declare-fun m!759543 () Bool)

(assert (=> b!513423 m!759543))

(declare-fun m!759545 () Bool)

(assert (=> b!513423 m!759545))

(assert (=> d!184186 d!184200))

(declare-fun d!184202 () Bool)

(declare-fun lt!212369 () Bool)

(assert (=> d!184202 (= lt!212369 (select (content!807 e!306677) key!7215))))

(declare-fun e!306715 () Bool)

(assert (=> d!184202 (= lt!212369 e!306715)))

(declare-fun res!217726 () Bool)

(assert (=> d!184202 (=> (not res!217726) (not e!306715))))

(assert (=> d!184202 (= res!217726 ((_ is Cons!4655) e!306677))))

(assert (=> d!184202 (= (contains!1055 e!306677 key!7215) lt!212369)))

(declare-fun b!513424 () Bool)

(declare-fun e!306716 () Bool)

(assert (=> b!513424 (= e!306715 e!306716)))

(declare-fun res!217727 () Bool)

(assert (=> b!513424 (=> res!217727 e!306716)))

(assert (=> b!513424 (= res!217727 (= (h!10052 e!306677) key!7215))))

(declare-fun b!513425 () Bool)

(assert (=> b!513425 (= e!306716 (contains!1055 (t!73187 e!306677) key!7215))))

(assert (= (and d!184202 res!217726) b!513424))

(assert (= (and b!513424 (not res!217727)) b!513425))

(declare-fun m!759547 () Bool)

(assert (=> d!184202 m!759547))

(declare-fun m!759549 () Bool)

(assert (=> d!184202 m!759549))

(declare-fun m!759551 () Bool)

(assert (=> b!513425 m!759551))

(assert (=> bm!37285 d!184202))

(declare-fun bs!59376 () Bool)

(declare-fun b!513450 () Bool)

(assert (= bs!59376 (and b!513450 b!513412)))

(declare-fun lambda!14281 () Int)

(assert (=> bs!59376 (= (= (t!73186 (toList!365 lt!212325)) (toList!365 lt!212325)) (= lambda!14281 lambda!14271))))

(assert (=> b!513450 true))

(declare-fun bs!59377 () Bool)

(declare-fun b!513444 () Bool)

(assert (= bs!59377 (and b!513444 b!513412)))

(declare-fun lambda!14282 () Int)

(assert (=> bs!59377 (= (= (Cons!4654 (h!10051 (toList!365 lt!212325)) (t!73186 (toList!365 lt!212325))) (toList!365 lt!212325)) (= lambda!14282 lambda!14271))))

(declare-fun bs!59378 () Bool)

(assert (= bs!59378 (and b!513444 b!513450)))

(assert (=> bs!59378 (= (= (Cons!4654 (h!10051 (toList!365 lt!212325)) (t!73186 (toList!365 lt!212325))) (t!73186 (toList!365 lt!212325))) (= lambda!14282 lambda!14281))))

(assert (=> b!513444 true))

(declare-fun bs!59379 () Bool)

(declare-fun b!513447 () Bool)

(assert (= bs!59379 (and b!513447 b!513412)))

(declare-fun lambda!14283 () Int)

(assert (=> bs!59379 (= lambda!14283 lambda!14271)))

(declare-fun bs!59380 () Bool)

(assert (= bs!59380 (and b!513447 b!513450)))

(assert (=> bs!59380 (= (= (toList!365 lt!212325) (t!73186 (toList!365 lt!212325))) (= lambda!14283 lambda!14281))))

(declare-fun bs!59381 () Bool)

(assert (= bs!59381 (and b!513447 b!513444)))

(assert (=> bs!59381 (= (= (toList!365 lt!212325) (Cons!4654 (h!10051 (toList!365 lt!212325)) (t!73186 (toList!365 lt!212325)))) (= lambda!14283 lambda!14282))))

(assert (=> b!513447 true))

(declare-fun bs!59382 () Bool)

(declare-fun b!513448 () Bool)

(assert (= bs!59382 (and b!513448 b!513413)))

(declare-fun lambda!14284 () Int)

(assert (=> bs!59382 (= lambda!14284 lambda!14272)))

(declare-fun e!306728 () List!4665)

(assert (=> b!513444 (= e!306728 (Cons!4655 (_1!2996 (h!10051 (toList!365 lt!212325))) (getKeysList!4 (t!73186 (toList!365 lt!212325)))))))

(declare-fun c!99718 () Bool)

(assert (=> b!513444 (= c!99718 (containsKey!12 (t!73186 (toList!365 lt!212325)) (_1!2996 (h!10051 (toList!365 lt!212325)))))))

(declare-fun lt!212390 () Unit!8405)

(declare-fun e!306727 () Unit!8405)

(assert (=> b!513444 (= lt!212390 e!306727)))

(declare-fun c!99717 () Bool)

(assert (=> b!513444 (= c!99717 (contains!1055 (getKeysList!4 (t!73186 (toList!365 lt!212325))) (_1!2996 (h!10051 (toList!365 lt!212325)))))))

(declare-fun lt!212386 () Unit!8405)

(declare-fun e!306726 () Unit!8405)

(assert (=> b!513444 (= lt!212386 e!306726)))

(declare-fun lt!212389 () List!4665)

(assert (=> b!513444 (= lt!212389 (getKeysList!4 (t!73186 (toList!365 lt!212325))))))

(declare-fun lt!212385 () Unit!8405)

(declare-fun lemmaForallContainsAddHeadPreserves!2 (List!4664 List!4665 tuple2!5560) Unit!8405)

(assert (=> b!513444 (= lt!212385 (lemmaForallContainsAddHeadPreserves!2 (t!73186 (toList!365 lt!212325)) lt!212389 (h!10051 (toList!365 lt!212325))))))

(assert (=> b!513444 (forall!1351 lt!212389 lambda!14282)))

(declare-fun lt!212387 () Unit!8405)

(assert (=> b!513444 (= lt!212387 lt!212385)))

(declare-fun b!513445 () Bool)

(assert (=> b!513445 (= e!306728 Nil!4655)))

(declare-fun b!513446 () Bool)

(declare-fun Unit!8409 () Unit!8405)

(assert (=> b!513446 (= e!306726 Unit!8409)))

(declare-fun res!217736 () Bool)

(declare-fun e!306725 () Bool)

(assert (=> b!513447 (=> (not res!217736) (not e!306725))))

(declare-fun lt!212384 () List!4665)

(assert (=> b!513447 (= res!217736 (forall!1351 lt!212384 lambda!14283))))

(assert (=> b!513448 (= e!306725 (= (content!807 lt!212384) (content!807 (map!963 (toList!365 lt!212325) lambda!14284))))))

(declare-fun b!513449 () Bool)

(declare-fun Unit!8410 () Unit!8405)

(assert (=> b!513449 (= e!306727 Unit!8410)))

(assert (=> b!513450 false))

(declare-fun lt!212388 () Unit!8405)

(declare-fun forallContained!433 (List!4665 Int K!1302) Unit!8405)

(assert (=> b!513450 (= lt!212388 (forallContained!433 (getKeysList!4 (t!73186 (toList!365 lt!212325))) lambda!14281 (_1!2996 (h!10051 (toList!365 lt!212325)))))))

(declare-fun Unit!8411 () Unit!8405)

(assert (=> b!513450 (= e!306726 Unit!8411)))

(declare-fun b!513451 () Bool)

(declare-fun res!217734 () Bool)

(assert (=> b!513451 (=> (not res!217734) (not e!306725))))

(assert (=> b!513451 (= res!217734 (= (length!4 lt!212384) (length!5 (toList!365 lt!212325))))))

(declare-fun d!184204 () Bool)

(assert (=> d!184204 e!306725))

(declare-fun res!217735 () Bool)

(assert (=> d!184204 (=> (not res!217735) (not e!306725))))

(assert (=> d!184204 (= res!217735 (noDuplicate!109 lt!212384))))

(assert (=> d!184204 (= lt!212384 e!306728)))

(declare-fun c!99719 () Bool)

(assert (=> d!184204 (= c!99719 ((_ is Cons!4654) (toList!365 lt!212325)))))

(declare-fun invariantList!40 (List!4664) Bool)

(assert (=> d!184204 (invariantList!40 (toList!365 lt!212325))))

(assert (=> d!184204 (= (getKeysList!4 (toList!365 lt!212325)) lt!212384)))

(declare-fun b!513452 () Bool)

(assert (=> b!513452 false))

(declare-fun Unit!8412 () Unit!8405)

(assert (=> b!513452 (= e!306727 Unit!8412)))

(assert (= (and d!184204 c!99719) b!513444))

(assert (= (and d!184204 (not c!99719)) b!513445))

(assert (= (and b!513444 c!99718) b!513452))

(assert (= (and b!513444 (not c!99718)) b!513449))

(assert (= (and b!513444 c!99717) b!513450))

(assert (= (and b!513444 (not c!99717)) b!513446))

(assert (= (and d!184204 res!217735) b!513451))

(assert (= (and b!513451 res!217734) b!513447))

(assert (= (and b!513447 res!217736) b!513448))

(declare-fun m!759553 () Bool)

(assert (=> b!513450 m!759553))

(assert (=> b!513450 m!759553))

(declare-fun m!759555 () Bool)

(assert (=> b!513450 m!759555))

(declare-fun m!759557 () Bool)

(assert (=> b!513451 m!759557))

(assert (=> b!513451 m!759529))

(declare-fun m!759559 () Bool)

(assert (=> b!513444 m!759559))

(assert (=> b!513444 m!759553))

(declare-fun m!759561 () Bool)

(assert (=> b!513444 m!759561))

(assert (=> b!513444 m!759553))

(declare-fun m!759563 () Bool)

(assert (=> b!513444 m!759563))

(declare-fun m!759565 () Bool)

(assert (=> b!513444 m!759565))

(declare-fun m!759567 () Bool)

(assert (=> b!513448 m!759567))

(declare-fun m!759569 () Bool)

(assert (=> b!513448 m!759569))

(assert (=> b!513448 m!759569))

(declare-fun m!759571 () Bool)

(assert (=> b!513448 m!759571))

(declare-fun m!759573 () Bool)

(assert (=> d!184204 m!759573))

(declare-fun m!759575 () Bool)

(assert (=> d!184204 m!759575))

(declare-fun m!759577 () Bool)

(assert (=> b!513447 m!759577))

(assert (=> b!513358 d!184204))

(declare-fun b!513463 () Bool)

(declare-fun e!306733 () Option!1229)

(assert (=> b!513463 (= e!306733 (Some!1228 (_2!2996 (h!10051 (toList!365 lt!212361)))))))

(declare-fun b!513466 () Bool)

(declare-fun e!306734 () Option!1229)

(assert (=> b!513466 (= e!306734 None!1228)))

(declare-fun b!513464 () Bool)

(assert (=> b!513464 (= e!306733 e!306734)))

(declare-fun c!99725 () Bool)

(assert (=> b!513464 (= c!99725 (and ((_ is Cons!4654) (toList!365 lt!212361)) (not (= (_1!2996 (h!10051 (toList!365 lt!212361))) (_1!2996 (tuple2!5561 key!7215 v!11800))))))))

(declare-fun b!513465 () Bool)

(assert (=> b!513465 (= e!306734 (getValueByKey!15 (t!73186 (toList!365 lt!212361)) (_1!2996 (tuple2!5561 key!7215 v!11800))))))

(declare-fun d!184206 () Bool)

(declare-fun c!99724 () Bool)

(assert (=> d!184206 (= c!99724 (and ((_ is Cons!4654) (toList!365 lt!212361)) (= (_1!2996 (h!10051 (toList!365 lt!212361))) (_1!2996 (tuple2!5561 key!7215 v!11800)))))))

(assert (=> d!184206 (= (getValueByKey!15 (toList!365 lt!212361) (_1!2996 (tuple2!5561 key!7215 v!11800))) e!306733)))

(assert (= (and d!184206 c!99724) b!513463))

(assert (= (and d!184206 (not c!99724)) b!513464))

(assert (= (and b!513464 c!99725) b!513465))

(assert (= (and b!513464 (not c!99725)) b!513466))

(declare-fun m!759579 () Bool)

(assert (=> b!513465 m!759579))

(assert (=> b!513371 d!184206))

(declare-fun d!184208 () Bool)

(declare-fun res!217741 () Bool)

(declare-fun e!306739 () Bool)

(assert (=> d!184208 (=> res!217741 e!306739)))

(assert (=> d!184208 (= res!217741 (and ((_ is Cons!4654) (toList!365 lt!212325)) (= (_1!2996 (h!10051 (toList!365 lt!212325))) key!7215)))))

(assert (=> d!184208 (= (containsKey!12 (toList!365 lt!212325) key!7215) e!306739)))

(declare-fun b!513471 () Bool)

(declare-fun e!306740 () Bool)

(assert (=> b!513471 (= e!306739 e!306740)))

(declare-fun res!217742 () Bool)

(assert (=> b!513471 (=> (not res!217742) (not e!306740))))

(assert (=> b!513471 (= res!217742 ((_ is Cons!4654) (toList!365 lt!212325)))))

(declare-fun b!513472 () Bool)

(assert (=> b!513472 (= e!306740 (containsKey!12 (t!73186 (toList!365 lt!212325)) key!7215))))

(assert (= (and d!184208 (not res!217741)) b!513471))

(assert (= (and b!513471 res!217742) b!513472))

(declare-fun m!759581 () Bool)

(assert (=> b!513472 m!759581))

(assert (=> d!184176 d!184208))

(declare-fun d!184210 () Bool)

(assert (=> d!184210 (isDefined!1043 (getValueByKey!15 (toList!365 lt!212325) key!7215))))

(declare-fun lt!212393 () Unit!8405)

(declare-fun choose!3663 (List!4664 K!1302) Unit!8405)

(assert (=> d!184210 (= lt!212393 (choose!3663 (toList!365 lt!212325) key!7215))))

(assert (=> d!184210 (invariantList!40 (toList!365 lt!212325))))

(assert (=> d!184210 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!7 (toList!365 lt!212325) key!7215) lt!212393)))

(declare-fun bs!59383 () Bool)

(assert (= bs!59383 d!184210))

(assert (=> bs!59383 m!759461))

(assert (=> bs!59383 m!759461))

(assert (=> bs!59383 m!759463))

(declare-fun m!759583 () Bool)

(assert (=> bs!59383 m!759583))

(assert (=> bs!59383 m!759575))

(assert (=> b!513359 d!184210))

(declare-fun d!184212 () Bool)

(declare-fun isEmpty!3577 (Option!1229) Bool)

(assert (=> d!184212 (= (isDefined!1043 (getValueByKey!15 (toList!365 lt!212325) key!7215)) (not (isEmpty!3577 (getValueByKey!15 (toList!365 lt!212325) key!7215))))))

(declare-fun bs!59384 () Bool)

(assert (= bs!59384 d!184212))

(assert (=> bs!59384 m!759461))

(declare-fun m!759585 () Bool)

(assert (=> bs!59384 m!759585))

(assert (=> b!513359 d!184212))

(declare-fun b!513473 () Bool)

(declare-fun e!306741 () Option!1229)

(assert (=> b!513473 (= e!306741 (Some!1228 (_2!2996 (h!10051 (toList!365 lt!212325)))))))

(declare-fun b!513476 () Bool)

(declare-fun e!306742 () Option!1229)

(assert (=> b!513476 (= e!306742 None!1228)))

(declare-fun b!513474 () Bool)

(assert (=> b!513474 (= e!306741 e!306742)))

(declare-fun c!99727 () Bool)

(assert (=> b!513474 (= c!99727 (and ((_ is Cons!4654) (toList!365 lt!212325)) (not (= (_1!2996 (h!10051 (toList!365 lt!212325))) key!7215))))))

(declare-fun b!513475 () Bool)

(assert (=> b!513475 (= e!306742 (getValueByKey!15 (t!73186 (toList!365 lt!212325)) key!7215))))

(declare-fun d!184214 () Bool)

(declare-fun c!99726 () Bool)

(assert (=> d!184214 (= c!99726 (and ((_ is Cons!4654) (toList!365 lt!212325)) (= (_1!2996 (h!10051 (toList!365 lt!212325))) key!7215)))))

(assert (=> d!184214 (= (getValueByKey!15 (toList!365 lt!212325) key!7215) e!306741)))

(assert (= (and d!184214 c!99726) b!513473))

(assert (= (and d!184214 (not c!99726)) b!513474))

(assert (= (and b!513474 c!99727) b!513475))

(assert (= (and b!513474 (not c!99727)) b!513476))

(declare-fun m!759587 () Bool)

(assert (=> b!513475 m!759587))

(assert (=> b!513359 d!184214))

(declare-fun d!184216 () Bool)

(assert (=> d!184216 (contains!1055 (getKeysList!4 (toList!365 lt!212325)) key!7215)))

(declare-fun lt!212396 () Unit!8405)

(declare-fun choose!3664 (List!4664 K!1302) Unit!8405)

(assert (=> d!184216 (= lt!212396 (choose!3664 (toList!365 lt!212325) key!7215))))

(assert (=> d!184216 (invariantList!40 (toList!365 lt!212325))))

(assert (=> d!184216 (= (lemmaInListThenGetKeysListContains!3 (toList!365 lt!212325) key!7215) lt!212396)))

(declare-fun bs!59385 () Bool)

(assert (= bs!59385 d!184216))

(assert (=> bs!59385 m!759471))

(assert (=> bs!59385 m!759471))

(declare-fun m!759589 () Bool)

(assert (=> bs!59385 m!759589))

(declare-fun m!759591 () Bool)

(assert (=> bs!59385 m!759591))

(assert (=> bs!59385 m!759575))

(assert (=> b!513359 d!184216))

(declare-fun lt!212399 () Bool)

(declare-fun d!184218 () Bool)

(assert (=> d!184218 (= lt!212399 (select (content!806 (toList!365 lt!212361)) (tuple2!5561 key!7215 v!11800)))))

(declare-fun e!306747 () Bool)

(assert (=> d!184218 (= lt!212399 e!306747)))

(declare-fun res!217748 () Bool)

(assert (=> d!184218 (=> (not res!217748) (not e!306747))))

(assert (=> d!184218 (= res!217748 ((_ is Cons!4654) (toList!365 lt!212361)))))

(assert (=> d!184218 (= (contains!1056 (toList!365 lt!212361) (tuple2!5561 key!7215 v!11800)) lt!212399)))

(declare-fun b!513481 () Bool)

(declare-fun e!306748 () Bool)

(assert (=> b!513481 (= e!306747 e!306748)))

(declare-fun res!217747 () Bool)

(assert (=> b!513481 (=> res!217747 e!306748)))

(assert (=> b!513481 (= res!217747 (= (h!10051 (toList!365 lt!212361)) (tuple2!5561 key!7215 v!11800)))))

(declare-fun b!513482 () Bool)

(assert (=> b!513482 (= e!306748 (contains!1056 (t!73186 (toList!365 lt!212361)) (tuple2!5561 key!7215 v!11800)))))

(assert (= (and d!184218 res!217748) b!513481))

(assert (= (and b!513481 (not res!217747)) b!513482))

(declare-fun m!759593 () Bool)

(assert (=> d!184218 m!759593))

(declare-fun m!759595 () Bool)

(assert (=> d!184218 m!759595))

(declare-fun m!759597 () Bool)

(assert (=> b!513482 m!759597))

(assert (=> b!513372 d!184218))

(declare-fun d!184220 () Bool)

(declare-fun choose!3665 (MutableMap!447) ListMap!109)

(assert (=> d!184220 (= (abstractMap!40 thiss!47794) (choose!3665 thiss!47794))))

(declare-fun bs!59386 () Bool)

(assert (= bs!59386 d!184220))

(declare-fun m!759599 () Bool)

(assert (=> bs!59386 m!759599))

(assert (=> b!513375 d!184220))

(assert (=> b!513360 d!184212))

(assert (=> b!513360 d!184214))

(declare-fun b!513483 () Bool)

(assert (=> b!513483 false))

(declare-fun lt!212401 () Unit!8405)

(declare-fun lt!212404 () Unit!8405)

(assert (=> b!513483 (= lt!212401 lt!212404)))

(assert (=> b!513483 (containsKey!12 (toList!365 lt!212361) (_1!2996 (tuple2!5561 key!7215 v!11800)))))

(assert (=> b!513483 (= lt!212404 (lemmaInGetKeysListThenContainsKey!3 (toList!365 lt!212361) (_1!2996 (tuple2!5561 key!7215 v!11800))))))

(declare-fun e!306749 () Unit!8405)

(declare-fun Unit!8413 () Unit!8405)

(assert (=> b!513483 (= e!306749 Unit!8413)))

(declare-fun d!184222 () Bool)

(declare-fun e!306750 () Bool)

(assert (=> d!184222 e!306750))

(declare-fun res!217750 () Bool)

(assert (=> d!184222 (=> res!217750 e!306750)))

(declare-fun e!306751 () Bool)

(assert (=> d!184222 (= res!217750 e!306751)))

(declare-fun res!217749 () Bool)

(assert (=> d!184222 (=> (not res!217749) (not e!306751))))

(declare-fun lt!212402 () Bool)

(assert (=> d!184222 (= res!217749 (not lt!212402))))

(declare-fun lt!212405 () Bool)

(assert (=> d!184222 (= lt!212402 lt!212405)))

(declare-fun lt!212403 () Unit!8405)

(declare-fun e!306754 () Unit!8405)

(assert (=> d!184222 (= lt!212403 e!306754)))

(declare-fun c!99729 () Bool)

(assert (=> d!184222 (= c!99729 lt!212405)))

(assert (=> d!184222 (= lt!212405 (containsKey!12 (toList!365 lt!212361) (_1!2996 (tuple2!5561 key!7215 v!11800))))))

(assert (=> d!184222 (= (contains!1054 lt!212361 (_1!2996 (tuple2!5561 key!7215 v!11800))) lt!212402)))

(declare-fun b!513484 () Bool)

(declare-fun Unit!8414 () Unit!8405)

(assert (=> b!513484 (= e!306749 Unit!8414)))

(declare-fun b!513485 () Bool)

(declare-fun e!306753 () List!4665)

(assert (=> b!513485 (= e!306753 (keys!1795 lt!212361))))

(declare-fun e!306752 () Bool)

(declare-fun b!513486 () Bool)

(assert (=> b!513486 (= e!306752 (contains!1055 (keys!1795 lt!212361) (_1!2996 (tuple2!5561 key!7215 v!11800))))))

(declare-fun b!513487 () Bool)

(assert (=> b!513487 (= e!306754 e!306749)))

(declare-fun c!99728 () Bool)

(declare-fun call!37291 () Bool)

(assert (=> b!513487 (= c!99728 call!37291)))

(declare-fun b!513488 () Bool)

(assert (=> b!513488 (= e!306751 (not (contains!1055 (keys!1795 lt!212361) (_1!2996 (tuple2!5561 key!7215 v!11800)))))))

(declare-fun bm!37286 () Bool)

(assert (=> bm!37286 (= call!37291 (contains!1055 e!306753 (_1!2996 (tuple2!5561 key!7215 v!11800))))))

(declare-fun c!99730 () Bool)

(assert (=> bm!37286 (= c!99730 c!99729)))

(declare-fun b!513489 () Bool)

(assert (=> b!513489 (= e!306753 (getKeysList!4 (toList!365 lt!212361)))))

(declare-fun b!513490 () Bool)

(declare-fun lt!212407 () Unit!8405)

(assert (=> b!513490 (= e!306754 lt!212407)))

(declare-fun lt!212400 () Unit!8405)

(assert (=> b!513490 (= lt!212400 (lemmaContainsKeyImpliesGetValueByKeyDefined!7 (toList!365 lt!212361) (_1!2996 (tuple2!5561 key!7215 v!11800))))))

(assert (=> b!513490 (isDefined!1043 (getValueByKey!15 (toList!365 lt!212361) (_1!2996 (tuple2!5561 key!7215 v!11800))))))

(declare-fun lt!212406 () Unit!8405)

(assert (=> b!513490 (= lt!212406 lt!212400)))

(assert (=> b!513490 (= lt!212407 (lemmaInListThenGetKeysListContains!3 (toList!365 lt!212361) (_1!2996 (tuple2!5561 key!7215 v!11800))))))

(assert (=> b!513490 call!37291))

(declare-fun b!513491 () Bool)

(assert (=> b!513491 (= e!306750 e!306752)))

(declare-fun res!217751 () Bool)

(assert (=> b!513491 (=> (not res!217751) (not e!306752))))

(assert (=> b!513491 (= res!217751 (isDefined!1043 (getValueByKey!15 (toList!365 lt!212361) (_1!2996 (tuple2!5561 key!7215 v!11800)))))))

(assert (= (and d!184222 c!99729) b!513490))

(assert (= (and d!184222 (not c!99729)) b!513487))

(assert (= (and b!513487 c!99728) b!513483))

(assert (= (and b!513487 (not c!99728)) b!513484))

(assert (= (or b!513490 b!513487) bm!37286))

(assert (= (and bm!37286 c!99730) b!513489))

(assert (= (and bm!37286 (not c!99730)) b!513485))

(assert (= (and d!184222 res!217749) b!513488))

(assert (= (and d!184222 (not res!217750)) b!513491))

(assert (= (and b!513491 res!217751) b!513486))

(declare-fun m!759601 () Bool)

(assert (=> d!184222 m!759601))

(declare-fun m!759603 () Bool)

(assert (=> b!513490 m!759603))

(assert (=> b!513490 m!759489))

(assert (=> b!513490 m!759489))

(declare-fun m!759605 () Bool)

(assert (=> b!513490 m!759605))

(declare-fun m!759607 () Bool)

(assert (=> b!513490 m!759607))

(declare-fun m!759609 () Bool)

(assert (=> b!513485 m!759609))

(declare-fun m!759611 () Bool)

(assert (=> bm!37286 m!759611))

(declare-fun m!759613 () Bool)

(assert (=> b!513489 m!759613))

(assert (=> b!513488 m!759609))

(assert (=> b!513488 m!759609))

(declare-fun m!759615 () Bool)

(assert (=> b!513488 m!759615))

(assert (=> b!513486 m!759609))

(assert (=> b!513486 m!759609))

(assert (=> b!513486 m!759615))

(assert (=> b!513491 m!759489))

(assert (=> b!513491 m!759489))

(assert (=> b!513491 m!759605))

(assert (=> b!513483 m!759601))

(declare-fun m!759617 () Bool)

(assert (=> b!513483 m!759617))

(assert (=> d!184180 d!184222))

(declare-fun b!513492 () Bool)

(declare-fun e!306755 () Option!1229)

(assert (=> b!513492 (= e!306755 (Some!1228 (_2!2996 (h!10051 lt!212360))))))

(declare-fun b!513495 () Bool)

(declare-fun e!306756 () Option!1229)

(assert (=> b!513495 (= e!306756 None!1228)))

(declare-fun b!513493 () Bool)

(assert (=> b!513493 (= e!306755 e!306756)))

(declare-fun c!99732 () Bool)

(assert (=> b!513493 (= c!99732 (and ((_ is Cons!4654) lt!212360) (not (= (_1!2996 (h!10051 lt!212360)) (_1!2996 (tuple2!5561 key!7215 v!11800))))))))

(declare-fun b!513494 () Bool)

(assert (=> b!513494 (= e!306756 (getValueByKey!15 (t!73186 lt!212360) (_1!2996 (tuple2!5561 key!7215 v!11800))))))

(declare-fun c!99731 () Bool)

(declare-fun d!184224 () Bool)

(assert (=> d!184224 (= c!99731 (and ((_ is Cons!4654) lt!212360) (= (_1!2996 (h!10051 lt!212360)) (_1!2996 (tuple2!5561 key!7215 v!11800)))))))

(assert (=> d!184224 (= (getValueByKey!15 lt!212360 (_1!2996 (tuple2!5561 key!7215 v!11800))) e!306755)))

(assert (= (and d!184224 c!99731) b!513492))

(assert (= (and d!184224 (not c!99731)) b!513493))

(assert (= (and b!513493 c!99732) b!513494))

(assert (= (and b!513493 (not c!99732)) b!513495))

(declare-fun m!759619 () Bool)

(assert (=> b!513494 m!759619))

(assert (=> d!184180 d!184224))

(declare-fun d!184226 () Bool)

(assert (=> d!184226 (= (getValueByKey!15 lt!212360 (_1!2996 (tuple2!5561 key!7215 v!11800))) (Some!1228 (_2!2996 (tuple2!5561 key!7215 v!11800))))))

(declare-fun lt!212410 () Unit!8405)

(declare-fun choose!3666 (List!4664 K!1302 V!1400) Unit!8405)

(assert (=> d!184226 (= lt!212410 (choose!3666 lt!212360 (_1!2996 (tuple2!5561 key!7215 v!11800)) (_2!2996 (tuple2!5561 key!7215 v!11800))))))

(declare-fun e!306759 () Bool)

(assert (=> d!184226 e!306759))

(declare-fun res!217756 () Bool)

(assert (=> d!184226 (=> (not res!217756) (not e!306759))))

(assert (=> d!184226 (= res!217756 (invariantList!40 lt!212360))))

(assert (=> d!184226 (= (lemmaContainsTupThenGetReturnValue!5 lt!212360 (_1!2996 (tuple2!5561 key!7215 v!11800)) (_2!2996 (tuple2!5561 key!7215 v!11800))) lt!212410)))

(declare-fun b!513500 () Bool)

(declare-fun res!217757 () Bool)

(assert (=> b!513500 (=> (not res!217757) (not e!306759))))

(assert (=> b!513500 (= res!217757 (containsKey!12 lt!212360 (_1!2996 (tuple2!5561 key!7215 v!11800))))))

(declare-fun b!513501 () Bool)

(assert (=> b!513501 (= e!306759 (contains!1056 lt!212360 (tuple2!5561 (_1!2996 (tuple2!5561 key!7215 v!11800)) (_2!2996 (tuple2!5561 key!7215 v!11800)))))))

(assert (= (and d!184226 res!217756) b!513500))

(assert (= (and b!513500 res!217757) b!513501))

(assert (=> d!184226 m!759483))

(declare-fun m!759621 () Bool)

(assert (=> d!184226 m!759621))

(declare-fun m!759623 () Bool)

(assert (=> d!184226 m!759623))

(declare-fun m!759625 () Bool)

(assert (=> b!513500 m!759625))

(declare-fun m!759627 () Bool)

(assert (=> b!513501 m!759627))

(assert (=> d!184180 d!184226))

(declare-fun b!513530 () Bool)

(declare-fun res!217766 () Bool)

(declare-fun e!306774 () Bool)

(assert (=> b!513530 (=> (not res!217766) (not e!306774))))

(declare-fun lt!212443 () List!4664)

(assert (=> b!513530 (= res!217766 (contains!1056 lt!212443 (tuple2!5561 (_1!2996 (tuple2!5561 key!7215 v!11800)) (_2!2996 (tuple2!5561 key!7215 v!11800)))))))

(declare-fun b!513531 () Bool)

(assert (=> b!513531 (= e!306774 (= (content!807 (getKeysList!4 lt!212443)) ((_ map or) (content!807 (getKeysList!4 (toList!365 call!37286))) (store ((as const (Array K!1302 Bool)) false) (_1!2996 (tuple2!5561 key!7215 v!11800)) true))))))

(declare-fun b!513532 () Bool)

(declare-fun e!306779 () List!4664)

(declare-fun lt!212434 () List!4664)

(assert (=> b!513532 (= e!306779 lt!212434)))

(declare-fun call!37302 () List!4664)

(assert (=> b!513532 (= lt!212434 call!37302)))

(declare-fun c!99745 () Bool)

(assert (=> b!513532 (= c!99745 (containsKey!12 (insertNoDuplicatedKeys!3 (t!73186 (toList!365 call!37286)) (_1!2996 (tuple2!5561 key!7215 v!11800)) (_2!2996 (tuple2!5561 key!7215 v!11800))) (_1!2996 (h!10051 (toList!365 call!37286)))))))

(declare-fun lt!212442 () Unit!8405)

(declare-fun e!306778 () Unit!8405)

(assert (=> b!513532 (= lt!212442 e!306778)))

(declare-fun bm!37295 () Bool)

(declare-fun call!37301 () List!4664)

(declare-fun call!37300 () List!4664)

(assert (=> bm!37295 (= call!37301 call!37300)))

(declare-fun b!513533 () Bool)

(assert (=> b!513533 false))

(declare-fun lt!212440 () Unit!8405)

(declare-fun lt!212441 () Unit!8405)

(assert (=> b!513533 (= lt!212440 lt!212441)))

(assert (=> b!513533 (containsKey!12 (t!73186 (toList!365 call!37286)) (_1!2996 (h!10051 (toList!365 call!37286))))))

(assert (=> b!513533 (= lt!212441 (lemmaInGetKeysListThenContainsKey!3 (t!73186 (toList!365 call!37286)) (_1!2996 (h!10051 (toList!365 call!37286)))))))

(declare-fun lt!212433 () Unit!8405)

(declare-fun lt!212437 () Unit!8405)

(assert (=> b!513533 (= lt!212433 lt!212437)))

(declare-fun call!37303 () List!4665)

(assert (=> b!513533 (contains!1055 call!37303 (_1!2996 (h!10051 (toList!365 call!37286))))))

(declare-fun lt!212436 () List!4664)

(assert (=> b!513533 (= lt!212437 (lemmaInListThenGetKeysListContains!3 lt!212436 (_1!2996 (h!10051 (toList!365 call!37286)))))))

(assert (=> b!513533 (= lt!212436 (insertNoDuplicatedKeys!3 (t!73186 (toList!365 call!37286)) (_1!2996 (tuple2!5561 key!7215 v!11800)) (_2!2996 (tuple2!5561 key!7215 v!11800))))))

(declare-fun Unit!8415 () Unit!8405)

(assert (=> b!513533 (= e!306778 Unit!8415)))

(declare-fun b!513534 () Bool)

(declare-fun res!217769 () Bool)

(assert (=> b!513534 (=> (not res!217769) (not e!306774))))

(assert (=> b!513534 (= res!217769 (containsKey!12 lt!212443 (_1!2996 (tuple2!5561 key!7215 v!11800))))))

(declare-fun bm!37296 () Bool)

(assert (=> bm!37296 (= call!37302 call!37301)))

(declare-fun c!99744 () Bool)

(declare-fun c!99747 () Bool)

(assert (=> bm!37296 (= c!99744 c!99747)))

(declare-fun b!513535 () Bool)

(declare-fun e!306775 () List!4664)

(assert (=> b!513535 (= e!306775 call!37300)))

(declare-fun lt!212438 () List!4665)

(assert (=> b!513535 (= lt!212438 call!37303)))

(declare-fun lt!212439 () Unit!8405)

(declare-fun lemmaSubseqRefl!39 (List!4665) Unit!8405)

(assert (=> b!513535 (= lt!212439 (lemmaSubseqRefl!39 lt!212438))))

(declare-fun subseq!118 (List!4665 List!4665) Bool)

(assert (=> b!513535 (subseq!118 lt!212438 lt!212438)))

(declare-fun lt!212435 () Unit!8405)

(assert (=> b!513535 (= lt!212435 lt!212439)))

(declare-fun d!184228 () Bool)

(assert (=> d!184228 e!306774))

(declare-fun res!217767 () Bool)

(assert (=> d!184228 (=> (not res!217767) (not e!306774))))

(assert (=> d!184228 (= res!217767 (invariantList!40 lt!212443))))

(assert (=> d!184228 (= lt!212443 e!306775)))

(declare-fun c!99746 () Bool)

(assert (=> d!184228 (= c!99746 (and ((_ is Cons!4654) (toList!365 call!37286)) (= (_1!2996 (h!10051 (toList!365 call!37286))) (_1!2996 (tuple2!5561 key!7215 v!11800)))))))

(assert (=> d!184228 (invariantList!40 (toList!365 call!37286))))

(assert (=> d!184228 (= (insertNoDuplicatedKeys!3 (toList!365 call!37286) (_1!2996 (tuple2!5561 key!7215 v!11800)) (_2!2996 (tuple2!5561 key!7215 v!11800))) lt!212443)))

(declare-fun b!513536 () Bool)

(declare-fun Unit!8416 () Unit!8405)

(assert (=> b!513536 (= e!306778 Unit!8416)))

(declare-fun b!513537 () Bool)

(declare-fun e!306776 () List!4664)

(assert (=> b!513537 (= e!306775 e!306776)))

(declare-fun res!217768 () Bool)

(assert (=> b!513537 (= res!217768 ((_ is Cons!4654) (toList!365 call!37286)))))

(declare-fun e!306780 () Bool)

(assert (=> b!513537 (=> (not res!217768) (not e!306780))))

(declare-fun c!99743 () Bool)

(assert (=> b!513537 (= c!99743 e!306780)))

(declare-fun b!513538 () Bool)

(declare-fun e!306777 () List!4664)

(assert (=> b!513538 (= e!306777 Nil!4654)))

(declare-fun bm!37297 () Bool)

(declare-fun $colon$colon!39 (List!4664 tuple2!5560) List!4664)

(assert (=> bm!37297 (= call!37300 ($colon$colon!39 (ite c!99746 (t!73186 (toList!365 call!37286)) (ite c!99743 (toList!365 call!37286) e!306777)) (ite (or c!99746 c!99743) (tuple2!5561 (_1!2996 (tuple2!5561 key!7215 v!11800)) (_2!2996 (tuple2!5561 key!7215 v!11800))) (ite c!99747 (h!10051 (toList!365 call!37286)) (tuple2!5561 (_1!2996 (tuple2!5561 key!7215 v!11800)) (_2!2996 (tuple2!5561 key!7215 v!11800)))))))))

(declare-fun bm!37298 () Bool)

(assert (=> bm!37298 (= call!37303 (getKeysList!4 (ite c!99746 (toList!365 call!37286) lt!212436)))))

(declare-fun b!513539 () Bool)

(assert (=> b!513539 (= e!306779 call!37302)))

(declare-fun b!513540 () Bool)

(assert (=> b!513540 (= c!99747 ((_ is Cons!4654) (toList!365 call!37286)))))

(assert (=> b!513540 (= e!306776 e!306779)))

(declare-fun b!513541 () Bool)

(assert (=> b!513541 (= e!306776 call!37301)))

(declare-fun b!513542 () Bool)

(assert (=> b!513542 (= e!306777 (insertNoDuplicatedKeys!3 (t!73186 (toList!365 call!37286)) (_1!2996 (tuple2!5561 key!7215 v!11800)) (_2!2996 (tuple2!5561 key!7215 v!11800))))))

(declare-fun b!513543 () Bool)

(assert (=> b!513543 (= e!306780 (not (containsKey!12 (toList!365 call!37286) (_1!2996 (tuple2!5561 key!7215 v!11800)))))))

(assert (= (and d!184228 c!99746) b!513535))

(assert (= (and d!184228 (not c!99746)) b!513537))

(assert (= (and b!513537 res!217768) b!513543))

(assert (= (and b!513537 c!99743) b!513541))

(assert (= (and b!513537 (not c!99743)) b!513540))

(assert (= (and b!513540 c!99747) b!513532))

(assert (= (and b!513540 (not c!99747)) b!513539))

(assert (= (and b!513532 c!99745) b!513533))

(assert (= (and b!513532 (not c!99745)) b!513536))

(assert (= (or b!513532 b!513539) bm!37296))

(assert (= (and bm!37296 c!99744) b!513542))

(assert (= (and bm!37296 (not c!99744)) b!513538))

(assert (= (or b!513541 bm!37296) bm!37295))

(assert (= (or b!513535 bm!37295) bm!37297))

(assert (= (or b!513535 b!513533) bm!37298))

(assert (= (and d!184228 res!217767) b!513534))

(assert (= (and b!513534 res!217769) b!513530))

(assert (= (and b!513530 res!217766) b!513531))

(declare-fun m!759629 () Bool)

(assert (=> b!513534 m!759629))

(declare-fun m!759631 () Bool)

(assert (=> b!513533 m!759631))

(declare-fun m!759633 () Bool)

(assert (=> b!513533 m!759633))

(declare-fun m!759635 () Bool)

(assert (=> b!513533 m!759635))

(declare-fun m!759637 () Bool)

(assert (=> b!513533 m!759637))

(declare-fun m!759639 () Bool)

(assert (=> b!513533 m!759639))

(declare-fun m!759641 () Bool)

(assert (=> b!513531 m!759641))

(declare-fun m!759643 () Bool)

(assert (=> b!513531 m!759643))

(declare-fun m!759645 () Bool)

(assert (=> b!513531 m!759645))

(declare-fun m!759647 () Bool)

(assert (=> b!513531 m!759647))

(declare-fun m!759649 () Bool)

(assert (=> b!513531 m!759649))

(assert (=> b!513531 m!759643))

(assert (=> b!513531 m!759647))

(assert (=> b!513532 m!759633))

(assert (=> b!513532 m!759633))

(declare-fun m!759651 () Bool)

(assert (=> b!513532 m!759651))

(declare-fun m!759653 () Bool)

(assert (=> bm!37298 m!759653))

(declare-fun m!759655 () Bool)

(assert (=> d!184228 m!759655))

(declare-fun m!759657 () Bool)

(assert (=> d!184228 m!759657))

(assert (=> b!513542 m!759633))

(declare-fun m!759659 () Bool)

(assert (=> b!513543 m!759659))

(declare-fun m!759661 () Bool)

(assert (=> bm!37297 m!759661))

(declare-fun m!759663 () Bool)

(assert (=> b!513530 m!759663))

(declare-fun m!759665 () Bool)

(assert (=> b!513535 m!759665))

(declare-fun m!759667 () Bool)

(assert (=> b!513535 m!759667))

(assert (=> d!184180 d!184228))

(declare-fun d!184230 () Bool)

(declare-fun map!964 (MutableMap!447) ListMap!109)

(assert (=> d!184230 (= (abstractMap!41 thiss!47794) (map!964 thiss!47794))))

(declare-fun bs!59387 () Bool)

(assert (= bs!59387 d!184230))

(declare-fun m!759669 () Bool)

(assert (=> bs!59387 m!759669))

(assert (=> b!513376 d!184230))

(assert (=> b!513352 d!184208))

(declare-fun d!184232 () Bool)

(assert (=> d!184232 (containsKey!12 (toList!365 lt!212325) key!7215)))

(declare-fun lt!212446 () Unit!8405)

(declare-fun choose!3667 (List!4664 K!1302) Unit!8405)

(assert (=> d!184232 (= lt!212446 (choose!3667 (toList!365 lt!212325) key!7215))))

(assert (=> d!184232 (invariantList!40 (toList!365 lt!212325))))

(assert (=> d!184232 (= (lemmaInGetKeysListThenContainsKey!3 (toList!365 lt!212325) key!7215) lt!212446)))

(declare-fun bs!59388 () Bool)

(assert (= bs!59388 d!184232))

(assert (=> bs!59388 m!759457))

(declare-fun m!759671 () Bool)

(assert (=> bs!59388 m!759671))

(assert (=> bs!59388 m!759575))

(assert (=> b!513352 d!184232))

(declare-fun b!513574 () Bool)

(declare-fun b_free!13309 () Bool)

(declare-fun b_next!13309 () Bool)

(assert (=> b!513574 (= b_free!13309 (not b_next!13309))))

(declare-fun tp!159843 () Bool)

(declare-fun b_and!50735 () Bool)

(assert (=> b!513574 (= tp!159843 b_and!50735)))

(declare-fun b!513570 () Bool)

(declare-fun b_free!13311 () Bool)

(declare-fun b_next!13311 () Bool)

(assert (=> b!513570 (= b_free!13311 (not b_next!13311))))

(declare-fun tp!159847 () Bool)

(declare-fun b_and!50737 () Bool)

(assert (=> b!513570 (= tp!159847 b_and!50737)))

(declare-fun b!513568 () Bool)

(declare-fun e!306812 () ListMap!109)

(declare-fun call!37312 () ListMap!109)

(assert (=> b!513568 (= e!306812 call!37312)))

(declare-fun bm!37305 () Bool)

(declare-fun call!37310 () ListMap!109)

(declare-fun res!217776 () tuple2!5562)

(assert (=> bm!37305 (= call!37310 (abstractMap!39 (_2!2997 res!217776)))))

(declare-fun bm!37306 () Bool)

(declare-fun call!37311 () Bool)

(assert (=> bm!37306 (= call!37311 (eq!7 call!37310 e!306812))))

(declare-fun c!99752 () Bool)

(declare-fun c!99753 () Bool)

(assert (=> bm!37306 (= c!99752 c!99753)))

(declare-fun d!184234 () Bool)

(declare-fun e!306808 () Bool)

(assert (=> d!184234 e!306808))

(declare-fun res!217777 () Bool)

(assert (=> d!184234 (=> (not res!217777) (not e!306808))))

(assert (=> d!184234 (= res!217777 (valid!429 (_2!2997 res!217776)))))

(assert (=> d!184234 ((_ is MutableMapExt!446) (_2!2997 res!217776))))

(declare-fun e!306811 () Bool)

(declare-fun lt!212451 () tuple2!5562)

(assert (=> d!184234 (and e!306811 ((_ is MutableMapExt!446) (_2!2997 lt!212451)))))

(assert (=> d!184234 (= lt!212451 res!217776)))

(assert (=> d!184234 (= (choose!3661 thiss!47794 key!7215 v!11800) res!217776)))

(declare-fun b!513569 () Bool)

(declare-fun e!306807 () Bool)

(declare-fun e!306806 () Bool)

(assert (=> b!513569 (= e!306807 e!306806)))

(declare-fun tp!159845 () Bool)

(declare-fun tp!159841 () Bool)

(declare-fun e!306809 () Bool)

(assert (=> b!513570 (= e!306806 (and tp!159847 tp!159841 tp!159845 (array_inv!597 (_keys!766 (v!15662 (underlying!1129 (v!15663 (underlying!1130 (_2!2997 res!217776))))))) (array_inv!598 (_values!753 (v!15662 (underlying!1129 (v!15663 (underlying!1130 (_2!2997 res!217776))))))) e!306809))))

(declare-fun b!513571 () Bool)

(declare-fun tp!159846 () Bool)

(declare-fun mapRes!1836 () Bool)

(assert (=> b!513571 (= e!306809 (and tp!159846 mapRes!1836))))

(declare-fun condMapEmpty!1836 () Bool)

(declare-fun mapDefault!1836 () List!4664)

(assert (=> b!513571 (= condMapEmpty!1836 (= (arr!835 (_values!753 (v!15662 (underlying!1129 (v!15663 (underlying!1130 (_2!2997 res!217776))))))) ((as const (Array (_ BitVec 32) List!4664)) mapDefault!1836)))))

(declare-fun mapNonEmpty!1836 () Bool)

(declare-fun tp!159842 () Bool)

(declare-fun tp!159844 () Bool)

(assert (=> mapNonEmpty!1836 (= mapRes!1836 (and tp!159842 tp!159844))))

(declare-fun mapValue!1836 () List!4664)

(declare-fun mapKey!1836 () (_ BitVec 32))

(declare-fun mapRest!1836 () (Array (_ BitVec 32) List!4664))

(assert (=> mapNonEmpty!1836 (= (arr!835 (_values!753 (v!15662 (underlying!1129 (v!15663 (underlying!1130 (_2!2997 res!217776))))))) (store mapRest!1836 mapKey!1836 mapValue!1836))))

(declare-fun mapIsEmpty!1836 () Bool)

(assert (=> mapIsEmpty!1836 mapRes!1836))

(declare-fun b!513572 () Bool)

(declare-fun e!306803 () Bool)

(assert (=> b!513572 (= e!306808 e!306803)))

(assert (=> b!513572 (= c!99753 (_1!2997 res!217776))))

(declare-fun b!513573 () Bool)

(declare-fun e!306813 () Bool)

(assert (=> b!513573 (= e!306803 e!306813)))

(declare-fun res!217778 () Bool)

(assert (=> b!513573 (= res!217778 (contains!1054 call!37310 key!7215))))

(assert (=> b!513573 (=> (not res!217778) (not e!306813))))

(declare-fun e!306805 () Bool)

(assert (=> b!513574 (= e!306811 (and e!306805 tp!159843))))

(declare-fun b!513575 () Bool)

(assert (=> b!513575 (= e!306803 call!37311)))

(declare-fun b!513576 () Bool)

(assert (=> b!513576 (= e!306812 (+!11 call!37312 (tuple2!5561 key!7215 v!11800)))))

(declare-fun bm!37307 () Bool)

(assert (=> bm!37307 (= call!37312 (abstractMap!39 thiss!47794))))

(declare-fun b!513577 () Bool)

(declare-fun e!306804 () Bool)

(declare-fun lt!212452 () MutLongMap!475)

(assert (=> b!513577 (= e!306805 (and e!306804 ((_ is LongMap!475) lt!212452)))))

(assert (=> b!513577 (= lt!212452 (v!15663 (underlying!1130 (_2!2997 res!217776))))))

(declare-fun b!513578 () Bool)

(assert (=> b!513578 (= e!306804 e!306807)))

(declare-fun b!513579 () Bool)

(assert (=> b!513579 (= e!306813 call!37311)))

(assert (= (and b!513571 condMapEmpty!1836) mapIsEmpty!1836))

(assert (= (and b!513571 (not condMapEmpty!1836)) mapNonEmpty!1836))

(assert (= b!513570 b!513571))

(assert (= b!513569 b!513570))

(assert (= b!513578 b!513569))

(assert (= (and b!513577 ((_ is LongMap!475) (v!15663 (underlying!1130 (_2!2997 res!217776))))) b!513578))

(assert (= b!513574 b!513577))

(assert (= (and d!184234 ((_ is HashMap!447) (_2!2997 res!217776))) b!513574))

(assert (= (and d!184234 res!217777) b!513572))

(assert (= (and b!513572 c!99753) b!513573))

(assert (= (and b!513572 (not c!99753)) b!513575))

(assert (= (and b!513573 res!217778) b!513579))

(assert (= (or b!513579 b!513575) bm!37307))

(assert (= (or b!513573 b!513579 b!513575) bm!37305))

(assert (= (or b!513579 b!513575) bm!37306))

(assert (= (and bm!37306 c!99752) b!513576))

(assert (= (and bm!37306 (not c!99752)) b!513568))

(declare-fun m!759673 () Bool)

(assert (=> d!184234 m!759673))

(declare-fun m!759675 () Bool)

(assert (=> mapNonEmpty!1836 m!759675))

(declare-fun m!759677 () Bool)

(assert (=> bm!37306 m!759677))

(declare-fun m!759679 () Bool)

(assert (=> b!513573 m!759679))

(declare-fun m!759681 () Bool)

(assert (=> b!513576 m!759681))

(declare-fun m!759683 () Bool)

(assert (=> b!513570 m!759683))

(declare-fun m!759685 () Bool)

(assert (=> b!513570 m!759685))

(assert (=> bm!37307 m!759449))

(declare-fun m!759687 () Bool)

(assert (=> bm!37305 m!759687))

(assert (=> d!184184 d!184234))

(declare-fun d!184236 () Bool)

(assert (=> d!184236 (= (abstractMap!40 (_2!2997 lt!212324)) (choose!3665 (_2!2997 lt!212324)))))

(declare-fun bs!59389 () Bool)

(assert (= bs!59389 d!184236))

(declare-fun m!759689 () Bool)

(assert (=> bs!59389 m!759689))

(assert (=> b!513332 d!184236))

(assert (=> b!513354 d!184196))

(declare-fun d!184238 () Bool)

(assert (=> d!184238 (= (abstractMap!41 (_2!2997 lt!212324)) (map!964 (_2!2997 lt!212324)))))

(declare-fun bs!59390 () Bool)

(assert (= bs!59390 d!184238))

(declare-fun m!759691 () Bool)

(assert (=> bs!59390 m!759691))

(assert (=> b!513333 d!184238))

(declare-fun d!184240 () Bool)

(assert (=> d!184240 (= (valid!430 thiss!47794) (choose!3662 thiss!47794))))

(declare-fun bs!59391 () Bool)

(assert (= bs!59391 d!184240))

(declare-fun m!759693 () Bool)

(assert (=> bs!59391 m!759693))

(assert (=> b!513365 d!184240))

(assert (=> b!513355 d!184194))

(assert (=> b!513355 d!184196))

(declare-fun bs!59392 () Bool)

(declare-fun b!513580 () Bool)

(assert (= bs!59392 (and b!513580 b!513397)))

(declare-fun lambda!14285 () Int)

(assert (=> bs!59392 (= lambda!14285 lambda!14266)))

(declare-fun d!184242 () Bool)

(declare-fun res!217779 () Bool)

(declare-fun e!306814 () Bool)

(assert (=> d!184242 (=> (not res!217779) (not e!306814))))

(assert (=> d!184242 (= res!217779 (valid!432 (v!15663 (underlying!1130 thiss!47794))))))

(assert (=> d!184242 (= (valid!431 thiss!47794) e!306814)))

(declare-fun res!217780 () Bool)

(assert (=> b!513580 (=> (not res!217780) (not e!306814))))

(assert (=> b!513580 (= res!217780 (forall!1350 (toList!366 (map!962 (v!15663 (underlying!1130 thiss!47794)))) lambda!14285))))

(declare-fun b!513581 () Bool)

(assert (=> b!513581 (= e!306814 (allKeysSameHashInMap!15 (map!962 (v!15663 (underlying!1130 thiss!47794))) (hashF!2323 thiss!47794)))))

(assert (= (and d!184242 res!217779) b!513580))

(assert (= (and b!513580 res!217780) b!513581))

(declare-fun m!759695 () Bool)

(assert (=> d!184242 m!759695))

(declare-fun m!759697 () Bool)

(assert (=> b!513580 m!759697))

(declare-fun m!759699 () Bool)

(assert (=> b!513580 m!759699))

(assert (=> b!513581 m!759697))

(assert (=> b!513581 m!759697))

(declare-fun m!759701 () Bool)

(assert (=> b!513581 m!759701))

(assert (=> b!513366 d!184242))

(declare-fun b!513582 () Bool)

(declare-fun tp!159848 () Bool)

(declare-fun e!306815 () Bool)

(assert (=> b!513582 (= e!306815 (and tp_is_empty!2513 tp_is_empty!2515 tp!159848))))

(assert (=> b!513392 (= tp!159826 e!306815)))

(assert (= (and b!513392 ((_ is Cons!4654) (t!73186 mapDefault!1830))) b!513582))

(declare-fun mapIsEmpty!1837 () Bool)

(declare-fun mapRes!1837 () Bool)

(assert (=> mapIsEmpty!1837 mapRes!1837))

(declare-fun tp!159850 () Bool)

(declare-fun e!306816 () Bool)

(declare-fun b!513583 () Bool)

(assert (=> b!513583 (= e!306816 (and tp_is_empty!2513 tp_is_empty!2515 tp!159850))))

(declare-fun condMapEmpty!1837 () Bool)

(declare-fun mapDefault!1837 () List!4664)

(assert (=> mapNonEmpty!1833 (= condMapEmpty!1837 (= mapRest!1833 ((as const (Array (_ BitVec 32) List!4664)) mapDefault!1837)))))

(declare-fun e!306817 () Bool)

(assert (=> mapNonEmpty!1833 (= tp!159822 (and e!306817 mapRes!1837))))

(declare-fun tp!159851 () Bool)

(declare-fun b!513584 () Bool)

(assert (=> b!513584 (= e!306817 (and tp_is_empty!2513 tp_is_empty!2515 tp!159851))))

(declare-fun mapNonEmpty!1837 () Bool)

(declare-fun tp!159849 () Bool)

(assert (=> mapNonEmpty!1837 (= mapRes!1837 (and tp!159849 e!306816))))

(declare-fun mapRest!1837 () (Array (_ BitVec 32) List!4664))

(declare-fun mapValue!1837 () List!4664)

(declare-fun mapKey!1837 () (_ BitVec 32))

(assert (=> mapNonEmpty!1837 (= mapRest!1833 (store mapRest!1837 mapKey!1837 mapValue!1837))))

(assert (= (and mapNonEmpty!1833 condMapEmpty!1837) mapIsEmpty!1837))

(assert (= (and mapNonEmpty!1833 (not condMapEmpty!1837)) mapNonEmpty!1837))

(assert (= (and mapNonEmpty!1837 ((_ is Cons!4654) mapValue!1837)) b!513583))

(assert (= (and mapNonEmpty!1833 ((_ is Cons!4654) mapDefault!1837)) b!513584))

(declare-fun m!759703 () Bool)

(assert (=> mapNonEmpty!1837 m!759703))

(declare-fun tp!159852 () Bool)

(declare-fun e!306818 () Bool)

(declare-fun b!513585 () Bool)

(assert (=> b!513585 (= e!306818 (and tp_is_empty!2513 tp_is_empty!2515 tp!159852))))

(assert (=> b!513389 (= tp!159823 e!306818)))

(assert (= (and b!513389 ((_ is Cons!4654) (t!73186 mapValue!1833))) b!513585))

(declare-fun b!513586 () Bool)

(declare-fun e!306819 () Bool)

(declare-fun tp!159853 () Bool)

(assert (=> b!513586 (= e!306819 (and tp_is_empty!2513 tp_is_empty!2515 tp!159853))))

(assert (=> b!513381 (= tp!159814 e!306819)))

(assert (= (and b!513381 ((_ is Cons!4654) (t!73186 (zeroValue!731 (v!15662 (underlying!1129 (v!15663 (underlying!1130 thiss!47794)))))))) b!513586))

(declare-fun e!306820 () Bool)

(declare-fun tp!159854 () Bool)

(declare-fun b!513587 () Bool)

(assert (=> b!513587 (= e!306820 (and tp_is_empty!2513 tp_is_empty!2515 tp!159854))))

(assert (=> b!513390 (= tp!159824 e!306820)))

(assert (= (and b!513390 ((_ is Cons!4654) (t!73186 mapDefault!1833))) b!513587))

(declare-fun b!513588 () Bool)

(declare-fun tp!159855 () Bool)

(declare-fun e!306821 () Bool)

(assert (=> b!513588 (= e!306821 (and tp_is_empty!2513 tp_is_empty!2515 tp!159855))))

(assert (=> b!513382 (= tp!159815 e!306821)))

(assert (= (and b!513382 ((_ is Cons!4654) (t!73186 (minValue!731 (v!15662 (underlying!1129 (v!15663 (underlying!1130 thiss!47794)))))))) b!513588))

(declare-fun lt!212457 () tuple2!5562)

(assert (=> d!184184 (= lt!212457 (choose!3660 thiss!47794 key!7215 v!11800))))

(declare-fun e!306826 () Bool)

(assert (=> d!184184 (= true (and e!306826 ((_ is MutableMapExt!446) (_2!2997 lt!212457))))))

(declare-fun b!513596 () Bool)

(declare-fun e!306827 () Bool)

(declare-fun lt!212458 () MutLongMap!475)

(assert (=> b!513596 (= e!306827 ((_ is LongMap!475) lt!212458))))

(assert (=> b!513596 (= lt!212458 (v!15663 (underlying!1130 (_2!2997 (choose!3660 thiss!47794 key!7215 v!11800)))))))

(declare-fun b!513595 () Bool)

(assert (=> b!513595 (= e!306826 e!306827)))

(assert (= b!513595 b!513596))

(assert (= (and d!184184 ((_ is HashMap!447) (_2!2997 (choose!3660 thiss!47794 key!7215 v!11800)))) b!513595))

(declare-fun e!306828 () Bool)

(declare-fun tp!159856 () Bool)

(declare-fun b!513597 () Bool)

(assert (=> b!513597 (= e!306828 (and tp_is_empty!2513 tp_is_empty!2515 tp!159856))))

(assert (=> b!513391 (= tp!159825 e!306828)))

(assert (= (and b!513391 ((_ is Cons!4654) (t!73186 mapValue!1830))) b!513597))

(check-sat (not b!513532) b_and!50735 (not d!184240) (not b!513486) (not b!513490) (not bm!37305) (not d!184238) (not d!184242) (not b!513534) (not bm!37307) (not b!513570) (not d!184232) (not d!184202) (not bm!37298) (not d!184212) (not d!184190) (not b!513543) (not b!513411) (not d!184220) (not bm!37297) tp_is_empty!2513 (not d!184226) (not b!513448) (not b!513482) (not b!513573) (not d!184228) (not b!513491) (not b!513465) (not d!184196) (not b!513451) (not b!513581) (not b!513576) (not d!184218) (not d!184230) (not b!513483) (not b!513450) (not mapNonEmpty!1837) (not b!513425) (not b!513583) (not mapNonEmpty!1836) (not d!184210) (not b!513531) (not b!513597) (not d!184234) (not b!513580) (not d!184236) (not b!513530) (not b!513588) (not d!184216) (not b_next!13305) (not b_next!13309) (not b!513397) (not b!513485) (not b!513584) tp_is_empty!2515 (not b!513475) (not b!513586) (not d!184222) (not b!513533) b_and!50733 (not bm!37286) (not b!513501) (not b!513582) b_and!50731 (not bm!37306) (not b!513472) (not b!513444) (not d!184194) (not b!513398) (not b!513535) (not b!513412) (not b!513404) (not b!513500) (not b!513488) (not b!513413) (not d!184204) b_and!50737 (not b!513423) (not b!513494) (not d!184192) (not b!513447) (not b!513489) (not b!513421) (not b!513571) (not b!513585) (not b!513587) (not b!513542) (not b_next!13307) (not b_next!13311))
(check-sat (not b_next!13305) (not b_next!13309) b_and!50735 b_and!50733 b_and!50731 b_and!50737 (not b_next!13307) (not b_next!13311))
