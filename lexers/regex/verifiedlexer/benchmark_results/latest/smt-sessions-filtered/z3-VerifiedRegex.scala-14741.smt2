; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758688 () Bool)

(assert start!758688)

(declare-fun b!8054528 () Bool)

(declare-fun e!4746296 () Bool)

(declare-fun e!4746289 () Bool)

(assert (=> b!8054528 (= e!4746296 e!4746289)))

(declare-fun res!3185525 () Bool)

(assert (=> b!8054528 (=> (not res!3185525) (not e!4746289))))

(declare-fun e!4746300 () Bool)

(assert (=> b!8054528 (= res!3185525 e!4746300)))

(declare-fun res!3185529 () Bool)

(assert (=> b!8054528 (=> res!3185529 e!4746300)))

(declare-fun e!4746294 () Bool)

(assert (=> b!8054528 (= res!3185529 e!4746294)))

(declare-fun res!3185515 () Bool)

(assert (=> b!8054528 (=> (not res!3185515) (not e!4746294))))

(declare-fun lt!2728342 () Bool)

(assert (=> b!8054528 (= res!3185515 (not lt!2728342))))

(declare-fun lt!2728344 () Bool)

(assert (=> b!8054528 (= lt!2728342 (not lt!2728344))))

(declare-datatypes ((K!22838 0))(
  ( (K!22839 (val!32943 Int)) )
))
(declare-datatypes ((V!23092 0))(
  ( (V!23093 (val!32944 Int)) )
))
(declare-datatypes ((tuple2!70908 0))(
  ( (tuple2!70909 (_1!38757 K!22838) (_2!38757 V!23092)) )
))
(declare-datatypes ((List!75688 0))(
  ( (Nil!75562) (Cons!75562 (h!82010 tuple2!70908) (t!391460 List!75688)) )
))
(declare-datatypes ((ListMap!7311 0))(
  ( (ListMap!7312 (toList!11930 List!75688)) )
))
(declare-fun acc!1298 () ListMap!7311)

(declare-fun key!6222 () K!22838)

(declare-fun contains!21235 (ListMap!7311 K!22838) Bool)

(assert (=> b!8054528 (= lt!2728344 (contains!21235 acc!1298 key!6222))))

(declare-fun b!8054529 () Bool)

(declare-fun res!3185518 () Bool)

(declare-fun e!4746291 () Bool)

(assert (=> b!8054529 (=> res!3185518 e!4746291)))

(declare-fun lt!2728343 () ListMap!7311)

(assert (=> b!8054529 (= res!3185518 (not (contains!21235 lt!2728343 key!6222)))))

(declare-fun b!8054530 () Bool)

(declare-fun l!14636 () List!75688)

(declare-fun containsKey!4869 (List!75688 K!22838) Bool)

(assert (=> b!8054530 (= e!4746294 (not (containsKey!4869 l!14636 key!6222)))))

(declare-fun b!8054531 () Bool)

(declare-fun res!3185516 () Bool)

(declare-fun e!4746292 () Bool)

(assert (=> b!8054531 (=> (not res!3185516) (not e!4746292))))

(declare-fun value!3131 () V!23092)

(declare-fun contains!21236 (List!75688 tuple2!70908) Bool)

(assert (=> b!8054531 (= res!3185516 (contains!21236 l!14636 (tuple2!70909 key!6222 value!3131)))))

(declare-fun b!8054532 () Bool)

(declare-fun e!4746293 () Bool)

(assert (=> b!8054532 (= e!4746293 (containsKey!4869 (t!391460 l!14636) key!6222))))

(declare-fun b!8054534 () Bool)

(assert (=> b!8054534 (= e!4746292 (not lt!2728344))))

(declare-fun b!8054535 () Bool)

(declare-fun res!3185522 () Bool)

(assert (=> b!8054535 (=> (not res!3185522) (not e!4746294))))

(declare-fun apply!14443 (ListMap!7311 K!22838) V!23092)

(assert (=> b!8054535 (= res!3185522 (= (apply!14443 acc!1298 key!6222) value!3131))))

(declare-fun b!8054536 () Bool)

(declare-fun ListPrimitiveSize!552 (List!75688) Int)

(assert (=> b!8054536 (= e!4746291 (< (ListPrimitiveSize!552 (t!391460 l!14636)) (ListPrimitiveSize!552 l!14636)))))

(declare-fun b!8054537 () Bool)

(declare-fun res!3185517 () Bool)

(assert (=> b!8054537 (=> (not res!3185517) (not e!4746296))))

(declare-fun addToMapMapFromBucket!1997 (List!75688 ListMap!7311) ListMap!7311)

(assert (=> b!8054537 (= res!3185517 (contains!21235 (addToMapMapFromBucket!1997 l!14636 acc!1298) key!6222))))

(declare-fun b!8054538 () Bool)

(declare-fun res!3185528 () Bool)

(assert (=> b!8054538 (=> res!3185528 e!4746291)))

(declare-fun e!4746290 () Bool)

(assert (=> b!8054538 (= res!3185528 e!4746290)))

(declare-fun res!3185527 () Bool)

(assert (=> b!8054538 (=> (not res!3185527) (not e!4746290))))

(assert (=> b!8054538 (= res!3185527 e!4746293)))

(declare-fun res!3185523 () Bool)

(assert (=> b!8054538 (=> res!3185523 e!4746293)))

(declare-fun lt!2728338 () V!23092)

(assert (=> b!8054538 (= res!3185523 (not (= lt!2728338 value!3131)))))

(declare-fun b!8054539 () Bool)

(declare-fun e!4746298 () Bool)

(assert (=> b!8054539 (= e!4746290 e!4746298)))

(declare-fun res!3185514 () Bool)

(assert (=> b!8054539 (=> res!3185514 e!4746298)))

(assert (=> b!8054539 (= res!3185514 (not (containsKey!4869 (t!391460 l!14636) key!6222)))))

(declare-fun b!8054540 () Bool)

(declare-fun res!3185526 () Bool)

(assert (=> b!8054540 (=> (not res!3185526) (not e!4746289))))

(get-info :version)

(assert (=> b!8054540 (= res!3185526 (not ((_ is Nil!75562) l!14636)))))

(declare-fun b!8054541 () Bool)

(declare-fun e!4746299 () Bool)

(assert (=> b!8054541 (= e!4746289 e!4746299)))

(declare-fun res!3185524 () Bool)

(assert (=> b!8054541 (=> (not res!3185524) (not e!4746299))))

(assert (=> b!8054541 (= res!3185524 (and (not (= (_1!38757 (h!82010 l!14636)) key!6222)) (not lt!2728342)))))

(declare-fun lt!2728341 () ListMap!7311)

(assert (=> b!8054541 (= lt!2728343 (addToMapMapFromBucket!1997 (t!391460 l!14636) lt!2728341))))

(declare-fun +!2681 (ListMap!7311 tuple2!70908) ListMap!7311)

(assert (=> b!8054541 (= lt!2728341 (+!2681 acc!1298 (h!82010 l!14636)))))

(declare-fun b!8054542 () Bool)

(declare-fun e!4746295 () Bool)

(declare-fun tp!2413829 () Bool)

(assert (=> b!8054542 (= e!4746295 tp!2413829)))

(declare-fun b!8054543 () Bool)

(assert (=> b!8054543 (= e!4746300 e!4746292)))

(declare-fun res!3185519 () Bool)

(assert (=> b!8054543 (=> (not res!3185519) (not e!4746292))))

(assert (=> b!8054543 (= res!3185519 (containsKey!4869 l!14636 key!6222))))

(declare-fun b!8054544 () Bool)

(assert (=> b!8054544 (= e!4746298 true)))

(declare-fun lt!2728337 () Bool)

(declare-fun lt!2728340 () tuple2!70908)

(assert (=> b!8054544 (= lt!2728337 (contains!21236 (t!391460 l!14636) lt!2728340))))

(declare-fun b!8054545 () Bool)

(assert (=> b!8054545 (= e!4746299 (not e!4746291))))

(declare-fun res!3185520 () Bool)

(assert (=> b!8054545 (=> res!3185520 e!4746291)))

(declare-fun noDuplicateKeys!2716 (List!75688) Bool)

(assert (=> b!8054545 (= res!3185520 (not (noDuplicateKeys!2716 (t!391460 l!14636))))))

(assert (=> b!8054545 (not (contains!21236 l!14636 lt!2728340))))

(assert (=> b!8054545 (= lt!2728340 (tuple2!70909 key!6222 value!3131))))

(declare-datatypes ((Unit!172115 0))(
  ( (Unit!172116) )
))
(declare-fun lt!2728339 () Unit!172115)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!32 (List!75688 K!22838 V!23092) Unit!172115)

(assert (=> b!8054545 (= lt!2728339 (lemmaNotContainsKeyThenCannotContainPair!32 l!14636 key!6222 value!3131))))

(assert (=> b!8054545 (= lt!2728338 (apply!14443 acc!1298 key!6222))))

(assert (=> b!8054545 (= lt!2728338 (apply!14443 lt!2728341 key!6222))))

(declare-fun lt!2728346 () Unit!172115)

(declare-fun addApplyDifferent!23 (ListMap!7311 K!22838 V!23092 K!22838) Unit!172115)

(assert (=> b!8054545 (= lt!2728346 (addApplyDifferent!23 acc!1298 (_1!38757 (h!82010 l!14636)) (_2!38757 (h!82010 l!14636)) key!6222))))

(assert (=> b!8054545 (contains!21235 lt!2728341 key!6222)))

(declare-fun lt!2728345 () Unit!172115)

(declare-fun addStillContains!49 (ListMap!7311 K!22838 V!23092 K!22838) Unit!172115)

(assert (=> b!8054545 (= lt!2728345 (addStillContains!49 acc!1298 (_1!38757 (h!82010 l!14636)) (_2!38757 (h!82010 l!14636)) key!6222))))

(declare-fun res!3185521 () Bool)

(assert (=> start!758688 (=> (not res!3185521) (not e!4746296))))

(assert (=> start!758688 (= res!3185521 (noDuplicateKeys!2716 l!14636))))

(assert (=> start!758688 e!4746296))

(declare-fun e!4746297 () Bool)

(assert (=> start!758688 e!4746297))

(declare-fun inv!97327 (ListMap!7311) Bool)

(assert (=> start!758688 (and (inv!97327 acc!1298) e!4746295)))

(declare-fun tp_is_empty!54939 () Bool)

(assert (=> start!758688 tp_is_empty!54939))

(declare-fun tp_is_empty!54941 () Bool)

(assert (=> start!758688 tp_is_empty!54941))

(declare-fun b!8054533 () Bool)

(declare-fun tp!2413828 () Bool)

(assert (=> b!8054533 (= e!4746297 (and tp_is_empty!54939 tp_is_empty!54941 tp!2413828))))

(assert (= (and start!758688 res!3185521) b!8054537))

(assert (= (and b!8054537 res!3185517) b!8054528))

(assert (= (and b!8054528 res!3185515) b!8054535))

(assert (= (and b!8054535 res!3185522) b!8054530))

(assert (= (and b!8054528 (not res!3185529)) b!8054543))

(assert (= (and b!8054543 res!3185519) b!8054531))

(assert (= (and b!8054531 res!3185516) b!8054534))

(assert (= (and b!8054528 res!3185525) b!8054540))

(assert (= (and b!8054540 res!3185526) b!8054541))

(assert (= (and b!8054541 res!3185524) b!8054545))

(assert (= (and b!8054545 (not res!3185520)) b!8054529))

(assert (= (and b!8054529 (not res!3185518)) b!8054538))

(assert (= (and b!8054538 (not res!3185523)) b!8054532))

(assert (= (and b!8054538 res!3185527) b!8054539))

(assert (= (and b!8054539 (not res!3185514)) b!8054544))

(assert (= (and b!8054538 (not res!3185528)) b!8054536))

(assert (= (and start!758688 ((_ is Cons!75562) l!14636)) b!8054533))

(assert (= start!758688 b!8054542))

(declare-fun m!8406986 () Bool)

(assert (=> start!758688 m!8406986))

(declare-fun m!8406988 () Bool)

(assert (=> start!758688 m!8406988))

(declare-fun m!8406990 () Bool)

(assert (=> b!8054530 m!8406990))

(declare-fun m!8406992 () Bool)

(assert (=> b!8054537 m!8406992))

(assert (=> b!8054537 m!8406992))

(declare-fun m!8406994 () Bool)

(assert (=> b!8054537 m!8406994))

(declare-fun m!8406996 () Bool)

(assert (=> b!8054529 m!8406996))

(assert (=> b!8054543 m!8406990))

(declare-fun m!8406998 () Bool)

(assert (=> b!8054528 m!8406998))

(declare-fun m!8407000 () Bool)

(assert (=> b!8054536 m!8407000))

(declare-fun m!8407002 () Bool)

(assert (=> b!8054536 m!8407002))

(declare-fun m!8407004 () Bool)

(assert (=> b!8054531 m!8407004))

(declare-fun m!8407006 () Bool)

(assert (=> b!8054541 m!8407006))

(declare-fun m!8407008 () Bool)

(assert (=> b!8054541 m!8407008))

(declare-fun m!8407010 () Bool)

(assert (=> b!8054545 m!8407010))

(declare-fun m!8407012 () Bool)

(assert (=> b!8054545 m!8407012))

(declare-fun m!8407014 () Bool)

(assert (=> b!8054545 m!8407014))

(declare-fun m!8407016 () Bool)

(assert (=> b!8054545 m!8407016))

(declare-fun m!8407018 () Bool)

(assert (=> b!8054545 m!8407018))

(declare-fun m!8407020 () Bool)

(assert (=> b!8054545 m!8407020))

(declare-fun m!8407022 () Bool)

(assert (=> b!8054545 m!8407022))

(declare-fun m!8407024 () Bool)

(assert (=> b!8054545 m!8407024))

(assert (=> b!8054535 m!8407020))

(declare-fun m!8407026 () Bool)

(assert (=> b!8054539 m!8407026))

(assert (=> b!8054532 m!8407026))

(declare-fun m!8407028 () Bool)

(assert (=> b!8054544 m!8407028))

(check-sat (not b!8054545) tp_is_empty!54939 (not b!8054536) (not b!8054539) (not b!8054533) (not b!8054541) (not b!8054542) (not b!8054535) (not b!8054532) (not b!8054529) (not b!8054544) (not b!8054531) (not start!758688) tp_is_empty!54941 (not b!8054528) (not b!8054530) (not b!8054537) (not b!8054543))
(check-sat)
(get-model)

(declare-fun lt!2728349 () Bool)

(declare-fun d!2398210 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16115 (List!75688) (InoxSet tuple2!70908))

(assert (=> d!2398210 (= lt!2728349 (select (content!16115 l!14636) (tuple2!70909 key!6222 value!3131)))))

(declare-fun e!4746305 () Bool)

(assert (=> d!2398210 (= lt!2728349 e!4746305)))

(declare-fun res!3185534 () Bool)

(assert (=> d!2398210 (=> (not res!3185534) (not e!4746305))))

(assert (=> d!2398210 (= res!3185534 ((_ is Cons!75562) l!14636))))

(assert (=> d!2398210 (= (contains!21236 l!14636 (tuple2!70909 key!6222 value!3131)) lt!2728349)))

(declare-fun b!8054550 () Bool)

(declare-fun e!4746306 () Bool)

(assert (=> b!8054550 (= e!4746305 e!4746306)))

(declare-fun res!3185535 () Bool)

(assert (=> b!8054550 (=> res!3185535 e!4746306)))

(assert (=> b!8054550 (= res!3185535 (= (h!82010 l!14636) (tuple2!70909 key!6222 value!3131)))))

(declare-fun b!8054551 () Bool)

(assert (=> b!8054551 (= e!4746306 (contains!21236 (t!391460 l!14636) (tuple2!70909 key!6222 value!3131)))))

(assert (= (and d!2398210 res!3185534) b!8054550))

(assert (= (and b!8054550 (not res!3185535)) b!8054551))

(declare-fun m!8407030 () Bool)

(assert (=> d!2398210 m!8407030))

(declare-fun m!8407032 () Bool)

(assert (=> d!2398210 m!8407032))

(declare-fun m!8407034 () Bool)

(assert (=> b!8054551 m!8407034))

(assert (=> b!8054531 d!2398210))

(declare-fun b!8054601 () Bool)

(assert (=> b!8054601 true))

(declare-fun bs!1972905 () Bool)

(declare-fun b!8054600 () Bool)

(assert (= bs!1972905 (and b!8054600 b!8054601)))

(declare-fun lambda!473941 () Int)

(declare-fun lambda!473940 () Int)

(assert (=> bs!1972905 (= lambda!473941 lambda!473940)))

(assert (=> b!8054600 true))

(declare-fun lt!2728432 () ListMap!7311)

(declare-fun lambda!473942 () Int)

(assert (=> bs!1972905 (= (= lt!2728432 lt!2728341) (= lambda!473942 lambda!473940))))

(assert (=> b!8054600 (= (= lt!2728432 lt!2728341) (= lambda!473942 lambda!473941))))

(assert (=> b!8054600 true))

(declare-fun bs!1972906 () Bool)

(declare-fun d!2398212 () Bool)

(assert (= bs!1972906 (and d!2398212 b!8054601)))

(declare-fun lt!2728427 () ListMap!7311)

(declare-fun lambda!473943 () Int)

(assert (=> bs!1972906 (= (= lt!2728427 lt!2728341) (= lambda!473943 lambda!473940))))

(declare-fun bs!1972907 () Bool)

(assert (= bs!1972907 (and d!2398212 b!8054600)))

(assert (=> bs!1972907 (= (= lt!2728427 lt!2728341) (= lambda!473943 lambda!473941))))

(assert (=> bs!1972907 (= (= lt!2728427 lt!2728432) (= lambda!473943 lambda!473942))))

(assert (=> d!2398212 true))

(declare-fun b!8054599 () Bool)

(declare-fun e!4746339 () Bool)

(declare-fun invariantList!1940 (List!75688) Bool)

(assert (=> b!8054599 (= e!4746339 (invariantList!1940 (toList!11930 lt!2728427)))))

(declare-fun call!747296 () Bool)

(declare-fun lt!2728437 () ListMap!7311)

(declare-fun c!1476351 () Bool)

(declare-fun bm!747290 () Bool)

(declare-fun forall!18511 (List!75688 Int) Bool)

(assert (=> bm!747290 (= call!747296 (forall!18511 (ite c!1476351 (toList!11930 lt!2728341) (toList!11930 lt!2728437)) (ite c!1476351 lambda!473940 lambda!473942)))))

(declare-fun e!4746341 () ListMap!7311)

(assert (=> b!8054600 (= e!4746341 lt!2728432)))

(assert (=> b!8054600 (= lt!2728437 (+!2681 lt!2728341 (h!82010 (t!391460 l!14636))))))

(assert (=> b!8054600 (= lt!2728432 (addToMapMapFromBucket!1997 (t!391460 (t!391460 l!14636)) (+!2681 lt!2728341 (h!82010 (t!391460 l!14636)))))))

(declare-fun lt!2728442 () Unit!172115)

(declare-fun call!747295 () Unit!172115)

(assert (=> b!8054600 (= lt!2728442 call!747295)))

(assert (=> b!8054600 (forall!18511 (toList!11930 lt!2728341) lambda!473941)))

(declare-fun lt!2728428 () Unit!172115)

(assert (=> b!8054600 (= lt!2728428 lt!2728442)))

(assert (=> b!8054600 (forall!18511 (toList!11930 lt!2728437) lambda!473942)))

(declare-fun lt!2728436 () Unit!172115)

(declare-fun Unit!172117 () Unit!172115)

(assert (=> b!8054600 (= lt!2728436 Unit!172117)))

(assert (=> b!8054600 (forall!18511 (t!391460 (t!391460 l!14636)) lambda!473942)))

(declare-fun lt!2728426 () Unit!172115)

(declare-fun Unit!172118 () Unit!172115)

(assert (=> b!8054600 (= lt!2728426 Unit!172118)))

(declare-fun lt!2728435 () Unit!172115)

(declare-fun Unit!172119 () Unit!172115)

(assert (=> b!8054600 (= lt!2728435 Unit!172119)))

(declare-fun lt!2728424 () Unit!172115)

(declare-fun forallContained!4665 (List!75688 Int tuple2!70908) Unit!172115)

(assert (=> b!8054600 (= lt!2728424 (forallContained!4665 (toList!11930 lt!2728437) lambda!473942 (h!82010 (t!391460 l!14636))))))

(assert (=> b!8054600 (contains!21235 lt!2728437 (_1!38757 (h!82010 (t!391460 l!14636))))))

(declare-fun lt!2728439 () Unit!172115)

(declare-fun Unit!172120 () Unit!172115)

(assert (=> b!8054600 (= lt!2728439 Unit!172120)))

(assert (=> b!8054600 (contains!21235 lt!2728432 (_1!38757 (h!82010 (t!391460 l!14636))))))

(declare-fun lt!2728429 () Unit!172115)

(declare-fun Unit!172121 () Unit!172115)

(assert (=> b!8054600 (= lt!2728429 Unit!172121)))

(assert (=> b!8054600 (forall!18511 (t!391460 l!14636) lambda!473942)))

(declare-fun lt!2728422 () Unit!172115)

(declare-fun Unit!172122 () Unit!172115)

(assert (=> b!8054600 (= lt!2728422 Unit!172122)))

(assert (=> b!8054600 call!747296))

(declare-fun lt!2728438 () Unit!172115)

(declare-fun Unit!172123 () Unit!172115)

(assert (=> b!8054600 (= lt!2728438 Unit!172123)))

(declare-fun lt!2728441 () Unit!172115)

(declare-fun Unit!172124 () Unit!172115)

(assert (=> b!8054600 (= lt!2728441 Unit!172124)))

(declare-fun lt!2728433 () Unit!172115)

(declare-fun addForallContainsKeyThenBeforeAdding!1090 (ListMap!7311 ListMap!7311 K!22838 V!23092) Unit!172115)

(assert (=> b!8054600 (= lt!2728433 (addForallContainsKeyThenBeforeAdding!1090 lt!2728341 lt!2728432 (_1!38757 (h!82010 (t!391460 l!14636))) (_2!38757 (h!82010 (t!391460 l!14636)))))))

(assert (=> b!8054600 (forall!18511 (toList!11930 lt!2728341) lambda!473942)))

(declare-fun lt!2728425 () Unit!172115)

(assert (=> b!8054600 (= lt!2728425 lt!2728433)))

(assert (=> b!8054600 (forall!18511 (toList!11930 lt!2728341) lambda!473942)))

(declare-fun lt!2728431 () Unit!172115)

(declare-fun Unit!172125 () Unit!172115)

(assert (=> b!8054600 (= lt!2728431 Unit!172125)))

(declare-fun res!3185559 () Bool)

(declare-fun call!747297 () Bool)

(assert (=> b!8054600 (= res!3185559 call!747297)))

(declare-fun e!4746340 () Bool)

(assert (=> b!8054600 (=> (not res!3185559) (not e!4746340))))

(assert (=> b!8054600 e!4746340))

(declare-fun lt!2728430 () Unit!172115)

(declare-fun Unit!172126 () Unit!172115)

(assert (=> b!8054600 (= lt!2728430 Unit!172126)))

(assert (=> b!8054601 (= e!4746341 lt!2728341)))

(declare-fun lt!2728440 () Unit!172115)

(assert (=> b!8054601 (= lt!2728440 call!747295)))

(assert (=> b!8054601 call!747296))

(declare-fun lt!2728423 () Unit!172115)

(assert (=> b!8054601 (= lt!2728423 lt!2728440)))

(assert (=> b!8054601 call!747297))

(declare-fun lt!2728434 () Unit!172115)

(declare-fun Unit!172127 () Unit!172115)

(assert (=> b!8054601 (= lt!2728434 Unit!172127)))

(declare-fun bm!747291 () Bool)

(assert (=> bm!747291 (= call!747297 (forall!18511 (ite c!1476351 (toList!11930 lt!2728341) (t!391460 l!14636)) (ite c!1476351 lambda!473940 lambda!473942)))))

(assert (=> d!2398212 e!4746339))

(declare-fun res!3185558 () Bool)

(assert (=> d!2398212 (=> (not res!3185558) (not e!4746339))))

(assert (=> d!2398212 (= res!3185558 (forall!18511 (t!391460 l!14636) lambda!473943))))

(assert (=> d!2398212 (= lt!2728427 e!4746341)))

(assert (=> d!2398212 (= c!1476351 ((_ is Nil!75562) (t!391460 l!14636)))))

(assert (=> d!2398212 (noDuplicateKeys!2716 (t!391460 l!14636))))

(assert (=> d!2398212 (= (addToMapMapFromBucket!1997 (t!391460 l!14636) lt!2728341) lt!2728427)))

(declare-fun bm!747292 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1092 (ListMap!7311) Unit!172115)

(assert (=> bm!747292 (= call!747295 (lemmaContainsAllItsOwnKeys!1092 lt!2728341))))

(declare-fun b!8054602 () Bool)

(declare-fun res!3185557 () Bool)

(assert (=> b!8054602 (=> (not res!3185557) (not e!4746339))))

(assert (=> b!8054602 (= res!3185557 (forall!18511 (toList!11930 lt!2728341) lambda!473943))))

(declare-fun b!8054603 () Bool)

(assert (=> b!8054603 (= e!4746340 (forall!18511 (toList!11930 lt!2728341) lambda!473942))))

(assert (= (and d!2398212 c!1476351) b!8054601))

(assert (= (and d!2398212 (not c!1476351)) b!8054600))

(assert (= (and b!8054600 res!3185559) b!8054603))

(assert (= (or b!8054601 b!8054600) bm!747291))

(assert (= (or b!8054601 b!8054600) bm!747290))

(assert (= (or b!8054601 b!8054600) bm!747292))

(assert (= (and d!2398212 res!3185558) b!8054602))

(assert (= (and b!8054602 res!3185557) b!8054599))

(declare-fun m!8407058 () Bool)

(assert (=> b!8054602 m!8407058))

(declare-fun m!8407060 () Bool)

(assert (=> d!2398212 m!8407060))

(assert (=> d!2398212 m!8407024))

(declare-fun m!8407062 () Bool)

(assert (=> bm!747292 m!8407062))

(declare-fun m!8407064 () Bool)

(assert (=> bm!747290 m!8407064))

(declare-fun m!8407066 () Bool)

(assert (=> bm!747291 m!8407066))

(declare-fun m!8407068 () Bool)

(assert (=> b!8054599 m!8407068))

(declare-fun m!8407070 () Bool)

(assert (=> b!8054603 m!8407070))

(declare-fun m!8407072 () Bool)

(assert (=> b!8054600 m!8407072))

(declare-fun m!8407074 () Bool)

(assert (=> b!8054600 m!8407074))

(declare-fun m!8407076 () Bool)

(assert (=> b!8054600 m!8407076))

(declare-fun m!8407078 () Bool)

(assert (=> b!8054600 m!8407078))

(assert (=> b!8054600 m!8407070))

(assert (=> b!8054600 m!8407074))

(declare-fun m!8407080 () Bool)

(assert (=> b!8054600 m!8407080))

(declare-fun m!8407082 () Bool)

(assert (=> b!8054600 m!8407082))

(declare-fun m!8407084 () Bool)

(assert (=> b!8054600 m!8407084))

(declare-fun m!8407086 () Bool)

(assert (=> b!8054600 m!8407086))

(assert (=> b!8054600 m!8407070))

(declare-fun m!8407088 () Bool)

(assert (=> b!8054600 m!8407088))

(declare-fun m!8407090 () Bool)

(assert (=> b!8054600 m!8407090))

(assert (=> b!8054541 d!2398212))

(declare-fun d!2398220 () Bool)

(declare-fun e!4746344 () Bool)

(assert (=> d!2398220 e!4746344))

(declare-fun res!3185565 () Bool)

(assert (=> d!2398220 (=> (not res!3185565) (not e!4746344))))

(declare-fun lt!2728454 () ListMap!7311)

(assert (=> d!2398220 (= res!3185565 (contains!21235 lt!2728454 (_1!38757 (h!82010 l!14636))))))

(declare-fun lt!2728452 () List!75688)

(assert (=> d!2398220 (= lt!2728454 (ListMap!7312 lt!2728452))))

(declare-fun lt!2728451 () Unit!172115)

(declare-fun lt!2728453 () Unit!172115)

(assert (=> d!2398220 (= lt!2728451 lt!2728453)))

(declare-datatypes ((Option!18005 0))(
  ( (None!18004) (Some!18004 (v!55339 V!23092)) )
))
(declare-fun getValueByKey!2789 (List!75688 K!22838) Option!18005)

(assert (=> d!2398220 (= (getValueByKey!2789 lt!2728452 (_1!38757 (h!82010 l!14636))) (Some!18004 (_2!38757 (h!82010 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1282 (List!75688 K!22838 V!23092) Unit!172115)

(assert (=> d!2398220 (= lt!2728453 (lemmaContainsTupThenGetReturnValue!1282 lt!2728452 (_1!38757 (h!82010 l!14636)) (_2!38757 (h!82010 l!14636))))))

(declare-fun insertNoDuplicatedKeys!790 (List!75688 K!22838 V!23092) List!75688)

(assert (=> d!2398220 (= lt!2728452 (insertNoDuplicatedKeys!790 (toList!11930 acc!1298) (_1!38757 (h!82010 l!14636)) (_2!38757 (h!82010 l!14636))))))

(assert (=> d!2398220 (= (+!2681 acc!1298 (h!82010 l!14636)) lt!2728454)))

(declare-fun b!8054610 () Bool)

(declare-fun res!3185564 () Bool)

(assert (=> b!8054610 (=> (not res!3185564) (not e!4746344))))

(assert (=> b!8054610 (= res!3185564 (= (getValueByKey!2789 (toList!11930 lt!2728454) (_1!38757 (h!82010 l!14636))) (Some!18004 (_2!38757 (h!82010 l!14636)))))))

(declare-fun b!8054611 () Bool)

(assert (=> b!8054611 (= e!4746344 (contains!21236 (toList!11930 lt!2728454) (h!82010 l!14636)))))

(assert (= (and d!2398220 res!3185565) b!8054610))

(assert (= (and b!8054610 res!3185564) b!8054611))

(declare-fun m!8407092 () Bool)

(assert (=> d!2398220 m!8407092))

(declare-fun m!8407094 () Bool)

(assert (=> d!2398220 m!8407094))

(declare-fun m!8407096 () Bool)

(assert (=> d!2398220 m!8407096))

(declare-fun m!8407098 () Bool)

(assert (=> d!2398220 m!8407098))

(declare-fun m!8407100 () Bool)

(assert (=> b!8054610 m!8407100))

(declare-fun m!8407102 () Bool)

(assert (=> b!8054611 m!8407102))

(assert (=> b!8054541 d!2398220))

(declare-fun d!2398222 () Bool)

(declare-fun res!3185570 () Bool)

(declare-fun e!4746349 () Bool)

(assert (=> d!2398222 (=> res!3185570 e!4746349)))

(assert (=> d!2398222 (= res!3185570 (and ((_ is Cons!75562) l!14636) (= (_1!38757 (h!82010 l!14636)) key!6222)))))

(assert (=> d!2398222 (= (containsKey!4869 l!14636 key!6222) e!4746349)))

(declare-fun b!8054616 () Bool)

(declare-fun e!4746350 () Bool)

(assert (=> b!8054616 (= e!4746349 e!4746350)))

(declare-fun res!3185571 () Bool)

(assert (=> b!8054616 (=> (not res!3185571) (not e!4746350))))

(assert (=> b!8054616 (= res!3185571 ((_ is Cons!75562) l!14636))))

(declare-fun b!8054617 () Bool)

(assert (=> b!8054617 (= e!4746350 (containsKey!4869 (t!391460 l!14636) key!6222))))

(assert (= (and d!2398222 (not res!3185570)) b!8054616))

(assert (= (and b!8054616 res!3185571) b!8054617))

(assert (=> b!8054617 m!8407026))

(assert (=> b!8054543 d!2398222))

(declare-fun d!2398224 () Bool)

(declare-fun res!3185572 () Bool)

(declare-fun e!4746351 () Bool)

(assert (=> d!2398224 (=> res!3185572 e!4746351)))

(assert (=> d!2398224 (= res!3185572 (and ((_ is Cons!75562) (t!391460 l!14636)) (= (_1!38757 (h!82010 (t!391460 l!14636))) key!6222)))))

(assert (=> d!2398224 (= (containsKey!4869 (t!391460 l!14636) key!6222) e!4746351)))

(declare-fun b!8054618 () Bool)

(declare-fun e!4746352 () Bool)

(assert (=> b!8054618 (= e!4746351 e!4746352)))

(declare-fun res!3185573 () Bool)

(assert (=> b!8054618 (=> (not res!3185573) (not e!4746352))))

(assert (=> b!8054618 (= res!3185573 ((_ is Cons!75562) (t!391460 l!14636)))))

(declare-fun b!8054619 () Bool)

(assert (=> b!8054619 (= e!4746352 (containsKey!4869 (t!391460 (t!391460 l!14636)) key!6222))))

(assert (= (and d!2398224 (not res!3185572)) b!8054618))

(assert (= (and b!8054618 res!3185573) b!8054619))

(declare-fun m!8407104 () Bool)

(assert (=> b!8054619 m!8407104))

(assert (=> b!8054532 d!2398224))

(declare-fun d!2398226 () Bool)

(declare-fun lt!2728455 () Bool)

(assert (=> d!2398226 (= lt!2728455 (select (content!16115 (t!391460 l!14636)) lt!2728340))))

(declare-fun e!4746353 () Bool)

(assert (=> d!2398226 (= lt!2728455 e!4746353)))

(declare-fun res!3185574 () Bool)

(assert (=> d!2398226 (=> (not res!3185574) (not e!4746353))))

(assert (=> d!2398226 (= res!3185574 ((_ is Cons!75562) (t!391460 l!14636)))))

(assert (=> d!2398226 (= (contains!21236 (t!391460 l!14636) lt!2728340) lt!2728455)))

(declare-fun b!8054620 () Bool)

(declare-fun e!4746354 () Bool)

(assert (=> b!8054620 (= e!4746353 e!4746354)))

(declare-fun res!3185575 () Bool)

(assert (=> b!8054620 (=> res!3185575 e!4746354)))

(assert (=> b!8054620 (= res!3185575 (= (h!82010 (t!391460 l!14636)) lt!2728340))))

(declare-fun b!8054621 () Bool)

(assert (=> b!8054621 (= e!4746354 (contains!21236 (t!391460 (t!391460 l!14636)) lt!2728340))))

(assert (= (and d!2398226 res!3185574) b!8054620))

(assert (= (and b!8054620 (not res!3185575)) b!8054621))

(declare-fun m!8407106 () Bool)

(assert (=> d!2398226 m!8407106))

(declare-fun m!8407108 () Bool)

(assert (=> d!2398226 m!8407108))

(declare-fun m!8407110 () Bool)

(assert (=> b!8054621 m!8407110))

(assert (=> b!8054544 d!2398226))

(declare-fun d!2398228 () Bool)

(declare-fun get!27228 (Option!18005) V!23092)

(assert (=> d!2398228 (= (apply!14443 acc!1298 key!6222) (get!27228 (getValueByKey!2789 (toList!11930 acc!1298) key!6222)))))

(declare-fun bs!1972908 () Bool)

(assert (= bs!1972908 d!2398228))

(declare-fun m!8407112 () Bool)

(assert (=> bs!1972908 m!8407112))

(assert (=> bs!1972908 m!8407112))

(declare-fun m!8407114 () Bool)

(assert (=> bs!1972908 m!8407114))

(assert (=> b!8054535 d!2398228))

(declare-fun d!2398230 () Bool)

(declare-fun lt!2728456 () Bool)

(assert (=> d!2398230 (= lt!2728456 (select (content!16115 l!14636) lt!2728340))))

(declare-fun e!4746355 () Bool)

(assert (=> d!2398230 (= lt!2728456 e!4746355)))

(declare-fun res!3185576 () Bool)

(assert (=> d!2398230 (=> (not res!3185576) (not e!4746355))))

(assert (=> d!2398230 (= res!3185576 ((_ is Cons!75562) l!14636))))

(assert (=> d!2398230 (= (contains!21236 l!14636 lt!2728340) lt!2728456)))

(declare-fun b!8054622 () Bool)

(declare-fun e!4746356 () Bool)

(assert (=> b!8054622 (= e!4746355 e!4746356)))

(declare-fun res!3185577 () Bool)

(assert (=> b!8054622 (=> res!3185577 e!4746356)))

(assert (=> b!8054622 (= res!3185577 (= (h!82010 l!14636) lt!2728340))))

(declare-fun b!8054623 () Bool)

(assert (=> b!8054623 (= e!4746356 (contains!21236 (t!391460 l!14636) lt!2728340))))

(assert (= (and d!2398230 res!3185576) b!8054622))

(assert (= (and b!8054622 (not res!3185577)) b!8054623))

(assert (=> d!2398230 m!8407030))

(declare-fun m!8407116 () Bool)

(assert (=> d!2398230 m!8407116))

(assert (=> b!8054623 m!8407028))

(assert (=> b!8054545 d!2398230))

(assert (=> b!8054545 d!2398228))

(declare-fun d!2398232 () Bool)

(assert (=> d!2398232 (contains!21235 (+!2681 acc!1298 (tuple2!70909 (_1!38757 (h!82010 l!14636)) (_2!38757 (h!82010 l!14636)))) key!6222)))

(declare-fun lt!2728459 () Unit!172115)

(declare-fun choose!60537 (ListMap!7311 K!22838 V!23092 K!22838) Unit!172115)

(assert (=> d!2398232 (= lt!2728459 (choose!60537 acc!1298 (_1!38757 (h!82010 l!14636)) (_2!38757 (h!82010 l!14636)) key!6222))))

(assert (=> d!2398232 (contains!21235 acc!1298 key!6222)))

(assert (=> d!2398232 (= (addStillContains!49 acc!1298 (_1!38757 (h!82010 l!14636)) (_2!38757 (h!82010 l!14636)) key!6222) lt!2728459)))

(declare-fun bs!1972909 () Bool)

(assert (= bs!1972909 d!2398232))

(declare-fun m!8407118 () Bool)

(assert (=> bs!1972909 m!8407118))

(assert (=> bs!1972909 m!8407118))

(declare-fun m!8407120 () Bool)

(assert (=> bs!1972909 m!8407120))

(declare-fun m!8407122 () Bool)

(assert (=> bs!1972909 m!8407122))

(assert (=> bs!1972909 m!8406998))

(assert (=> b!8054545 d!2398232))

(declare-fun d!2398234 () Bool)

(assert (=> d!2398234 (= (apply!14443 (+!2681 acc!1298 (tuple2!70909 (_1!38757 (h!82010 l!14636)) (_2!38757 (h!82010 l!14636)))) key!6222) (apply!14443 acc!1298 key!6222))))

(declare-fun lt!2728464 () Unit!172115)

(declare-fun choose!60538 (ListMap!7311 K!22838 V!23092 K!22838) Unit!172115)

(assert (=> d!2398234 (= lt!2728464 (choose!60538 acc!1298 (_1!38757 (h!82010 l!14636)) (_2!38757 (h!82010 l!14636)) key!6222))))

(declare-fun e!4746359 () Bool)

(assert (=> d!2398234 e!4746359))

(declare-fun res!3185580 () Bool)

(assert (=> d!2398234 (=> (not res!3185580) (not e!4746359))))

(assert (=> d!2398234 (= res!3185580 (contains!21235 acc!1298 key!6222))))

(assert (=> d!2398234 (= (addApplyDifferent!23 acc!1298 (_1!38757 (h!82010 l!14636)) (_2!38757 (h!82010 l!14636)) key!6222) lt!2728464)))

(declare-fun b!8054628 () Bool)

(assert (=> b!8054628 (= e!4746359 (not (= key!6222 (_1!38757 (h!82010 l!14636)))))))

(assert (= (and d!2398234 res!3185580) b!8054628))

(assert (=> d!2398234 m!8406998))

(assert (=> d!2398234 m!8407020))

(assert (=> d!2398234 m!8407118))

(declare-fun m!8407124 () Bool)

(assert (=> d!2398234 m!8407124))

(assert (=> d!2398234 m!8407118))

(declare-fun m!8407126 () Bool)

(assert (=> d!2398234 m!8407126))

(assert (=> b!8054545 d!2398234))

(declare-fun b!8054653 () Bool)

(declare-fun e!4746380 () Unit!172115)

(declare-fun e!4746376 () Unit!172115)

(assert (=> b!8054653 (= e!4746380 e!4746376)))

(declare-fun c!1476358 () Bool)

(declare-fun call!747306 () Bool)

(assert (=> b!8054653 (= c!1476358 call!747306)))

(declare-fun b!8054655 () Bool)

(assert (=> b!8054655 false))

(declare-fun lt!2728515 () Unit!172115)

(declare-fun lt!2728520 () Unit!172115)

(assert (=> b!8054655 (= lt!2728515 lt!2728520)))

(declare-fun containsKey!4871 (List!75688 K!22838) Bool)

(assert (=> b!8054655 (containsKey!4871 (toList!11930 lt!2728341) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1249 (List!75688 K!22838) Unit!172115)

(assert (=> b!8054655 (= lt!2728520 (lemmaInGetKeysListThenContainsKey!1249 (toList!11930 lt!2728341) key!6222))))

(declare-fun Unit!172140 () Unit!172115)

(assert (=> b!8054655 (= e!4746376 Unit!172140)))

(declare-fun bm!747301 () Bool)

(declare-datatypes ((List!75690 0))(
  ( (Nil!75564) (Cons!75564 (h!82012 K!22838) (t!391462 List!75690)) )
))
(declare-fun e!4746378 () List!75690)

(declare-fun contains!21238 (List!75690 K!22838) Bool)

(assert (=> bm!747301 (= call!747306 (contains!21238 e!4746378 key!6222))))

(declare-fun c!1476359 () Bool)

(declare-fun c!1476360 () Bool)

(assert (=> bm!747301 (= c!1476359 c!1476360)))

(declare-fun b!8054656 () Bool)

(declare-fun e!4746379 () Bool)

(declare-fun keys!30854 (ListMap!7311) List!75690)

(assert (=> b!8054656 (= e!4746379 (not (contains!21238 (keys!30854 lt!2728341) key!6222)))))

(declare-fun b!8054657 () Bool)

(declare-fun e!4746377 () Bool)

(declare-fun e!4746381 () Bool)

(assert (=> b!8054657 (= e!4746377 e!4746381)))

(declare-fun res!3185594 () Bool)

(assert (=> b!8054657 (=> (not res!3185594) (not e!4746381))))

(declare-fun isDefined!14539 (Option!18005) Bool)

(assert (=> b!8054657 (= res!3185594 (isDefined!14539 (getValueByKey!2789 (toList!11930 lt!2728341) key!6222)))))

(declare-fun b!8054658 () Bool)

(declare-fun lt!2728516 () Unit!172115)

(assert (=> b!8054658 (= e!4746380 lt!2728516)))

(declare-fun lt!2728522 () Unit!172115)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2561 (List!75688 K!22838) Unit!172115)

(assert (=> b!8054658 (= lt!2728522 (lemmaContainsKeyImpliesGetValueByKeyDefined!2561 (toList!11930 lt!2728341) key!6222))))

(assert (=> b!8054658 (isDefined!14539 (getValueByKey!2789 (toList!11930 lt!2728341) key!6222))))

(declare-fun lt!2728521 () Unit!172115)

(assert (=> b!8054658 (= lt!2728521 lt!2728522)))

(declare-fun lemmaInListThenGetKeysListContains!1244 (List!75688 K!22838) Unit!172115)

(assert (=> b!8054658 (= lt!2728516 (lemmaInListThenGetKeysListContains!1244 (toList!11930 lt!2728341) key!6222))))

(assert (=> b!8054658 call!747306))

(declare-fun b!8054659 () Bool)

(assert (=> b!8054659 (= e!4746381 (contains!21238 (keys!30854 lt!2728341) key!6222))))

(declare-fun b!8054654 () Bool)

(declare-fun Unit!172142 () Unit!172115)

(assert (=> b!8054654 (= e!4746376 Unit!172142)))

(declare-fun d!2398236 () Bool)

(assert (=> d!2398236 e!4746377))

(declare-fun res!3185593 () Bool)

(assert (=> d!2398236 (=> res!3185593 e!4746377)))

(assert (=> d!2398236 (= res!3185593 e!4746379)))

(declare-fun res!3185595 () Bool)

(assert (=> d!2398236 (=> (not res!3185595) (not e!4746379))))

(declare-fun lt!2728518 () Bool)

(assert (=> d!2398236 (= res!3185595 (not lt!2728518))))

(declare-fun lt!2728519 () Bool)

(assert (=> d!2398236 (= lt!2728518 lt!2728519)))

(declare-fun lt!2728517 () Unit!172115)

(assert (=> d!2398236 (= lt!2728517 e!4746380)))

(assert (=> d!2398236 (= c!1476360 lt!2728519)))

(assert (=> d!2398236 (= lt!2728519 (containsKey!4871 (toList!11930 lt!2728341) key!6222))))

(assert (=> d!2398236 (= (contains!21235 lt!2728341 key!6222) lt!2728518)))

(declare-fun b!8054660 () Bool)

(declare-fun getKeysList!1249 (List!75688) List!75690)

(assert (=> b!8054660 (= e!4746378 (getKeysList!1249 (toList!11930 lt!2728341)))))

(declare-fun b!8054661 () Bool)

(assert (=> b!8054661 (= e!4746378 (keys!30854 lt!2728341))))

(assert (= (and d!2398236 c!1476360) b!8054658))

(assert (= (and d!2398236 (not c!1476360)) b!8054653))

(assert (= (and b!8054653 c!1476358) b!8054655))

(assert (= (and b!8054653 (not c!1476358)) b!8054654))

(assert (= (or b!8054658 b!8054653) bm!747301))

(assert (= (and bm!747301 c!1476359) b!8054660))

(assert (= (and bm!747301 (not c!1476359)) b!8054661))

(assert (= (and d!2398236 res!3185595) b!8054656))

(assert (= (and d!2398236 (not res!3185593)) b!8054657))

(assert (= (and b!8054657 res!3185594) b!8054659))

(declare-fun m!8407128 () Bool)

(assert (=> b!8054656 m!8407128))

(assert (=> b!8054656 m!8407128))

(declare-fun m!8407130 () Bool)

(assert (=> b!8054656 m!8407130))

(declare-fun m!8407132 () Bool)

(assert (=> d!2398236 m!8407132))

(declare-fun m!8407134 () Bool)

(assert (=> b!8054660 m!8407134))

(declare-fun m!8407136 () Bool)

(assert (=> bm!747301 m!8407136))

(declare-fun m!8407138 () Bool)

(assert (=> b!8054658 m!8407138))

(declare-fun m!8407140 () Bool)

(assert (=> b!8054658 m!8407140))

(assert (=> b!8054658 m!8407140))

(declare-fun m!8407142 () Bool)

(assert (=> b!8054658 m!8407142))

(declare-fun m!8407144 () Bool)

(assert (=> b!8054658 m!8407144))

(assert (=> b!8054657 m!8407140))

(assert (=> b!8054657 m!8407140))

(assert (=> b!8054657 m!8407142))

(assert (=> b!8054661 m!8407128))

(assert (=> b!8054655 m!8407132))

(declare-fun m!8407146 () Bool)

(assert (=> b!8054655 m!8407146))

(assert (=> b!8054659 m!8407128))

(assert (=> b!8054659 m!8407128))

(assert (=> b!8054659 m!8407130))

(assert (=> b!8054545 d!2398236))

(declare-fun d!2398238 () Bool)

(assert (=> d!2398238 (= (apply!14443 lt!2728341 key!6222) (get!27228 (getValueByKey!2789 (toList!11930 lt!2728341) key!6222)))))

(declare-fun bs!1972911 () Bool)

(assert (= bs!1972911 d!2398238))

(assert (=> bs!1972911 m!8407140))

(assert (=> bs!1972911 m!8407140))

(declare-fun m!8407148 () Bool)

(assert (=> bs!1972911 m!8407148))

(assert (=> b!8054545 d!2398238))

(declare-fun d!2398240 () Bool)

(assert (=> d!2398240 (not (contains!21236 l!14636 (tuple2!70909 key!6222 value!3131)))))

(declare-fun lt!2728546 () Unit!172115)

(declare-fun choose!60539 (List!75688 K!22838 V!23092) Unit!172115)

(assert (=> d!2398240 (= lt!2728546 (choose!60539 l!14636 key!6222 value!3131))))

(assert (=> d!2398240 (not (containsKey!4869 l!14636 key!6222))))

(assert (=> d!2398240 (= (lemmaNotContainsKeyThenCannotContainPair!32 l!14636 key!6222 value!3131) lt!2728546)))

(declare-fun bs!1972914 () Bool)

(assert (= bs!1972914 d!2398240))

(assert (=> bs!1972914 m!8407004))

(declare-fun m!8407150 () Bool)

(assert (=> bs!1972914 m!8407150))

(assert (=> bs!1972914 m!8406990))

(assert (=> b!8054545 d!2398240))

(declare-fun d!2398242 () Bool)

(declare-fun res!3185606 () Bool)

(declare-fun e!4746392 () Bool)

(assert (=> d!2398242 (=> res!3185606 e!4746392)))

(assert (=> d!2398242 (= res!3185606 (not ((_ is Cons!75562) (t!391460 l!14636))))))

(assert (=> d!2398242 (= (noDuplicateKeys!2716 (t!391460 l!14636)) e!4746392)))

(declare-fun b!8054678 () Bool)

(declare-fun e!4746393 () Bool)

(assert (=> b!8054678 (= e!4746392 e!4746393)))

(declare-fun res!3185607 () Bool)

(assert (=> b!8054678 (=> (not res!3185607) (not e!4746393))))

(assert (=> b!8054678 (= res!3185607 (not (containsKey!4869 (t!391460 (t!391460 l!14636)) (_1!38757 (h!82010 (t!391460 l!14636))))))))

(declare-fun b!8054679 () Bool)

(assert (=> b!8054679 (= e!4746393 (noDuplicateKeys!2716 (t!391460 (t!391460 l!14636))))))

(assert (= (and d!2398242 (not res!3185606)) b!8054678))

(assert (= (and b!8054678 res!3185607) b!8054679))

(declare-fun m!8407184 () Bool)

(assert (=> b!8054678 m!8407184))

(declare-fun m!8407186 () Bool)

(assert (=> b!8054679 m!8407186))

(assert (=> b!8054545 d!2398242))

(declare-fun d!2398246 () Bool)

(declare-fun res!3185608 () Bool)

(declare-fun e!4746394 () Bool)

(assert (=> d!2398246 (=> res!3185608 e!4746394)))

(assert (=> d!2398246 (= res!3185608 (not ((_ is Cons!75562) l!14636)))))

(assert (=> d!2398246 (= (noDuplicateKeys!2716 l!14636) e!4746394)))

(declare-fun b!8054680 () Bool)

(declare-fun e!4746395 () Bool)

(assert (=> b!8054680 (= e!4746394 e!4746395)))

(declare-fun res!3185609 () Bool)

(assert (=> b!8054680 (=> (not res!3185609) (not e!4746395))))

(assert (=> b!8054680 (= res!3185609 (not (containsKey!4869 (t!391460 l!14636) (_1!38757 (h!82010 l!14636)))))))

(declare-fun b!8054681 () Bool)

(assert (=> b!8054681 (= e!4746395 (noDuplicateKeys!2716 (t!391460 l!14636)))))

(assert (= (and d!2398246 (not res!3185608)) b!8054680))

(assert (= (and b!8054680 res!3185609) b!8054681))

(declare-fun m!8407188 () Bool)

(assert (=> b!8054680 m!8407188))

(assert (=> b!8054681 m!8407024))

(assert (=> start!758688 d!2398246))

(declare-fun d!2398248 () Bool)

(assert (=> d!2398248 (= (inv!97327 acc!1298) (invariantList!1940 (toList!11930 acc!1298)))))

(declare-fun bs!1972922 () Bool)

(assert (= bs!1972922 d!2398248))

(declare-fun m!8407190 () Bool)

(assert (=> bs!1972922 m!8407190))

(assert (=> start!758688 d!2398248))

(declare-fun d!2398250 () Bool)

(declare-fun lt!2728570 () Int)

(assert (=> d!2398250 (>= lt!2728570 0)))

(declare-fun e!4746398 () Int)

(assert (=> d!2398250 (= lt!2728570 e!4746398)))

(declare-fun c!1476365 () Bool)

(assert (=> d!2398250 (= c!1476365 ((_ is Nil!75562) (t!391460 l!14636)))))

(assert (=> d!2398250 (= (ListPrimitiveSize!552 (t!391460 l!14636)) lt!2728570)))

(declare-fun b!8054686 () Bool)

(assert (=> b!8054686 (= e!4746398 0)))

(declare-fun b!8054687 () Bool)

(assert (=> b!8054687 (= e!4746398 (+ 1 (ListPrimitiveSize!552 (t!391460 (t!391460 l!14636)))))))

(assert (= (and d!2398250 c!1476365) b!8054686))

(assert (= (and d!2398250 (not c!1476365)) b!8054687))

(declare-fun m!8407192 () Bool)

(assert (=> b!8054687 m!8407192))

(assert (=> b!8054536 d!2398250))

(declare-fun d!2398252 () Bool)

(declare-fun lt!2728571 () Int)

(assert (=> d!2398252 (>= lt!2728571 0)))

(declare-fun e!4746399 () Int)

(assert (=> d!2398252 (= lt!2728571 e!4746399)))

(declare-fun c!1476366 () Bool)

(assert (=> d!2398252 (= c!1476366 ((_ is Nil!75562) l!14636))))

(assert (=> d!2398252 (= (ListPrimitiveSize!552 l!14636) lt!2728571)))

(declare-fun b!8054688 () Bool)

(assert (=> b!8054688 (= e!4746399 0)))

(declare-fun b!8054689 () Bool)

(assert (=> b!8054689 (= e!4746399 (+ 1 (ListPrimitiveSize!552 (t!391460 l!14636))))))

(assert (= (and d!2398252 c!1476366) b!8054688))

(assert (= (and d!2398252 (not c!1476366)) b!8054689))

(assert (=> b!8054689 m!8407000))

(assert (=> b!8054536 d!2398252))

(declare-fun b!8054690 () Bool)

(declare-fun e!4746404 () Unit!172115)

(declare-fun e!4746400 () Unit!172115)

(assert (=> b!8054690 (= e!4746404 e!4746400)))

(declare-fun c!1476367 () Bool)

(declare-fun call!747313 () Bool)

(assert (=> b!8054690 (= c!1476367 call!747313)))

(declare-fun b!8054692 () Bool)

(assert (=> b!8054692 false))

(declare-fun lt!2728572 () Unit!172115)

(declare-fun lt!2728577 () Unit!172115)

(assert (=> b!8054692 (= lt!2728572 lt!2728577)))

(assert (=> b!8054692 (containsKey!4871 (toList!11930 (addToMapMapFromBucket!1997 l!14636 acc!1298)) key!6222)))

(assert (=> b!8054692 (= lt!2728577 (lemmaInGetKeysListThenContainsKey!1249 (toList!11930 (addToMapMapFromBucket!1997 l!14636 acc!1298)) key!6222))))

(declare-fun Unit!172154 () Unit!172115)

(assert (=> b!8054692 (= e!4746400 Unit!172154)))

(declare-fun bm!747308 () Bool)

(declare-fun e!4746402 () List!75690)

(assert (=> bm!747308 (= call!747313 (contains!21238 e!4746402 key!6222))))

(declare-fun c!1476368 () Bool)

(declare-fun c!1476369 () Bool)

(assert (=> bm!747308 (= c!1476368 c!1476369)))

(declare-fun b!8054693 () Bool)

(declare-fun e!4746403 () Bool)

(assert (=> b!8054693 (= e!4746403 (not (contains!21238 (keys!30854 (addToMapMapFromBucket!1997 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8054694 () Bool)

(declare-fun e!4746401 () Bool)

(declare-fun e!4746405 () Bool)

(assert (=> b!8054694 (= e!4746401 e!4746405)))

(declare-fun res!3185611 () Bool)

(assert (=> b!8054694 (=> (not res!3185611) (not e!4746405))))

(assert (=> b!8054694 (= res!3185611 (isDefined!14539 (getValueByKey!2789 (toList!11930 (addToMapMapFromBucket!1997 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8054695 () Bool)

(declare-fun lt!2728573 () Unit!172115)

(assert (=> b!8054695 (= e!4746404 lt!2728573)))

(declare-fun lt!2728579 () Unit!172115)

(assert (=> b!8054695 (= lt!2728579 (lemmaContainsKeyImpliesGetValueByKeyDefined!2561 (toList!11930 (addToMapMapFromBucket!1997 l!14636 acc!1298)) key!6222))))

(assert (=> b!8054695 (isDefined!14539 (getValueByKey!2789 (toList!11930 (addToMapMapFromBucket!1997 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2728578 () Unit!172115)

(assert (=> b!8054695 (= lt!2728578 lt!2728579)))

(assert (=> b!8054695 (= lt!2728573 (lemmaInListThenGetKeysListContains!1244 (toList!11930 (addToMapMapFromBucket!1997 l!14636 acc!1298)) key!6222))))

(assert (=> b!8054695 call!747313))

(declare-fun b!8054696 () Bool)

(assert (=> b!8054696 (= e!4746405 (contains!21238 (keys!30854 (addToMapMapFromBucket!1997 l!14636 acc!1298)) key!6222))))

(declare-fun b!8054691 () Bool)

(declare-fun Unit!172156 () Unit!172115)

(assert (=> b!8054691 (= e!4746400 Unit!172156)))

(declare-fun d!2398254 () Bool)

(assert (=> d!2398254 e!4746401))

(declare-fun res!3185610 () Bool)

(assert (=> d!2398254 (=> res!3185610 e!4746401)))

(assert (=> d!2398254 (= res!3185610 e!4746403)))

(declare-fun res!3185612 () Bool)

(assert (=> d!2398254 (=> (not res!3185612) (not e!4746403))))

(declare-fun lt!2728575 () Bool)

(assert (=> d!2398254 (= res!3185612 (not lt!2728575))))

(declare-fun lt!2728576 () Bool)

(assert (=> d!2398254 (= lt!2728575 lt!2728576)))

(declare-fun lt!2728574 () Unit!172115)

(assert (=> d!2398254 (= lt!2728574 e!4746404)))

(assert (=> d!2398254 (= c!1476369 lt!2728576)))

(assert (=> d!2398254 (= lt!2728576 (containsKey!4871 (toList!11930 (addToMapMapFromBucket!1997 l!14636 acc!1298)) key!6222))))

(assert (=> d!2398254 (= (contains!21235 (addToMapMapFromBucket!1997 l!14636 acc!1298) key!6222) lt!2728575)))

(declare-fun b!8054697 () Bool)

(assert (=> b!8054697 (= e!4746402 (getKeysList!1249 (toList!11930 (addToMapMapFromBucket!1997 l!14636 acc!1298))))))

(declare-fun b!8054698 () Bool)

(assert (=> b!8054698 (= e!4746402 (keys!30854 (addToMapMapFromBucket!1997 l!14636 acc!1298)))))

(assert (= (and d!2398254 c!1476369) b!8054695))

(assert (= (and d!2398254 (not c!1476369)) b!8054690))

(assert (= (and b!8054690 c!1476367) b!8054692))

(assert (= (and b!8054690 (not c!1476367)) b!8054691))

(assert (= (or b!8054695 b!8054690) bm!747308))

(assert (= (and bm!747308 c!1476368) b!8054697))

(assert (= (and bm!747308 (not c!1476368)) b!8054698))

(assert (= (and d!2398254 res!3185612) b!8054693))

(assert (= (and d!2398254 (not res!3185610)) b!8054694))

(assert (= (and b!8054694 res!3185611) b!8054696))

(assert (=> b!8054693 m!8406992))

(declare-fun m!8407212 () Bool)

(assert (=> b!8054693 m!8407212))

(assert (=> b!8054693 m!8407212))

(declare-fun m!8407218 () Bool)

(assert (=> b!8054693 m!8407218))

(declare-fun m!8407222 () Bool)

(assert (=> d!2398254 m!8407222))

(declare-fun m!8407226 () Bool)

(assert (=> b!8054697 m!8407226))

(declare-fun m!8407228 () Bool)

(assert (=> bm!747308 m!8407228))

(declare-fun m!8407232 () Bool)

(assert (=> b!8054695 m!8407232))

(declare-fun m!8407234 () Bool)

(assert (=> b!8054695 m!8407234))

(assert (=> b!8054695 m!8407234))

(declare-fun m!8407240 () Bool)

(assert (=> b!8054695 m!8407240))

(declare-fun m!8407242 () Bool)

(assert (=> b!8054695 m!8407242))

(assert (=> b!8054694 m!8407234))

(assert (=> b!8054694 m!8407234))

(assert (=> b!8054694 m!8407240))

(assert (=> b!8054698 m!8406992))

(assert (=> b!8054698 m!8407212))

(assert (=> b!8054692 m!8407222))

(declare-fun m!8407246 () Bool)

(assert (=> b!8054692 m!8407246))

(assert (=> b!8054696 m!8406992))

(assert (=> b!8054696 m!8407212))

(assert (=> b!8054696 m!8407212))

(assert (=> b!8054696 m!8407218))

(assert (=> b!8054537 d!2398254))

(declare-fun bs!1972928 () Bool)

(declare-fun b!8054701 () Bool)

(assert (= bs!1972928 (and b!8054701 b!8054601)))

(declare-fun lambda!473980 () Int)

(assert (=> bs!1972928 (= (= acc!1298 lt!2728341) (= lambda!473980 lambda!473940))))

(declare-fun bs!1972929 () Bool)

(assert (= bs!1972929 (and b!8054701 b!8054600)))

(assert (=> bs!1972929 (= (= acc!1298 lt!2728341) (= lambda!473980 lambda!473941))))

(assert (=> bs!1972929 (= (= acc!1298 lt!2728432) (= lambda!473980 lambda!473942))))

(declare-fun bs!1972930 () Bool)

(assert (= bs!1972930 (and b!8054701 d!2398212)))

(assert (=> bs!1972930 (= (= acc!1298 lt!2728427) (= lambda!473980 lambda!473943))))

(assert (=> b!8054701 true))

(declare-fun bs!1972931 () Bool)

(declare-fun b!8054700 () Bool)

(assert (= bs!1972931 (and b!8054700 d!2398212)))

(declare-fun lambda!473981 () Int)

(assert (=> bs!1972931 (= (= acc!1298 lt!2728427) (= lambda!473981 lambda!473943))))

(declare-fun bs!1972932 () Bool)

(assert (= bs!1972932 (and b!8054700 b!8054601)))

(assert (=> bs!1972932 (= (= acc!1298 lt!2728341) (= lambda!473981 lambda!473940))))

(declare-fun bs!1972933 () Bool)

(assert (= bs!1972933 (and b!8054700 b!8054600)))

(assert (=> bs!1972933 (= (= acc!1298 lt!2728341) (= lambda!473981 lambda!473941))))

(declare-fun bs!1972934 () Bool)

(assert (= bs!1972934 (and b!8054700 b!8054701)))

(assert (=> bs!1972934 (= lambda!473981 lambda!473980)))

(assert (=> bs!1972933 (= (= acc!1298 lt!2728432) (= lambda!473981 lambda!473942))))

(assert (=> b!8054700 true))

(declare-fun lambda!473982 () Int)

(declare-fun lt!2728590 () ListMap!7311)

(assert (=> bs!1972931 (= (= lt!2728590 lt!2728427) (= lambda!473982 lambda!473943))))

(assert (=> bs!1972932 (= (= lt!2728590 lt!2728341) (= lambda!473982 lambda!473940))))

(assert (=> bs!1972934 (= (= lt!2728590 acc!1298) (= lambda!473982 lambda!473980))))

(assert (=> bs!1972933 (= (= lt!2728590 lt!2728432) (= lambda!473982 lambda!473942))))

(assert (=> bs!1972933 (= (= lt!2728590 lt!2728341) (= lambda!473982 lambda!473941))))

(assert (=> b!8054700 (= (= lt!2728590 acc!1298) (= lambda!473982 lambda!473981))))

(assert (=> b!8054700 true))

(declare-fun bs!1972935 () Bool)

(declare-fun d!2398258 () Bool)

(assert (= bs!1972935 (and d!2398258 d!2398212)))

(declare-fun lambda!473983 () Int)

(declare-fun lt!2728585 () ListMap!7311)

(assert (=> bs!1972935 (= (= lt!2728585 lt!2728427) (= lambda!473983 lambda!473943))))

(declare-fun bs!1972936 () Bool)

(assert (= bs!1972936 (and d!2398258 b!8054601)))

(assert (=> bs!1972936 (= (= lt!2728585 lt!2728341) (= lambda!473983 lambda!473940))))

(declare-fun bs!1972937 () Bool)

(assert (= bs!1972937 (and d!2398258 b!8054700)))

(assert (=> bs!1972937 (= (= lt!2728585 lt!2728590) (= lambda!473983 lambda!473982))))

(declare-fun bs!1972938 () Bool)

(assert (= bs!1972938 (and d!2398258 b!8054701)))

(assert (=> bs!1972938 (= (= lt!2728585 acc!1298) (= lambda!473983 lambda!473980))))

(declare-fun bs!1972939 () Bool)

(assert (= bs!1972939 (and d!2398258 b!8054600)))

(assert (=> bs!1972939 (= (= lt!2728585 lt!2728432) (= lambda!473983 lambda!473942))))

(assert (=> bs!1972939 (= (= lt!2728585 lt!2728341) (= lambda!473983 lambda!473941))))

(assert (=> bs!1972937 (= (= lt!2728585 acc!1298) (= lambda!473983 lambda!473981))))

(assert (=> d!2398258 true))

(declare-fun b!8054699 () Bool)

(declare-fun e!4746406 () Bool)

(assert (=> b!8054699 (= e!4746406 (invariantList!1940 (toList!11930 lt!2728585)))))

(declare-fun call!747315 () Bool)

(declare-fun c!1476370 () Bool)

(declare-fun lt!2728595 () ListMap!7311)

(declare-fun bm!747309 () Bool)

(assert (=> bm!747309 (= call!747315 (forall!18511 (ite c!1476370 (toList!11930 acc!1298) (toList!11930 lt!2728595)) (ite c!1476370 lambda!473980 lambda!473982)))))

(declare-fun e!4746408 () ListMap!7311)

(assert (=> b!8054700 (= e!4746408 lt!2728590)))

(assert (=> b!8054700 (= lt!2728595 (+!2681 acc!1298 (h!82010 l!14636)))))

(assert (=> b!8054700 (= lt!2728590 (addToMapMapFromBucket!1997 (t!391460 l!14636) (+!2681 acc!1298 (h!82010 l!14636))))))

(declare-fun lt!2728600 () Unit!172115)

(declare-fun call!747314 () Unit!172115)

(assert (=> b!8054700 (= lt!2728600 call!747314)))

(assert (=> b!8054700 (forall!18511 (toList!11930 acc!1298) lambda!473981)))

(declare-fun lt!2728586 () Unit!172115)

(assert (=> b!8054700 (= lt!2728586 lt!2728600)))

(assert (=> b!8054700 (forall!18511 (toList!11930 lt!2728595) lambda!473982)))

(declare-fun lt!2728594 () Unit!172115)

(declare-fun Unit!172158 () Unit!172115)

(assert (=> b!8054700 (= lt!2728594 Unit!172158)))

(assert (=> b!8054700 (forall!18511 (t!391460 l!14636) lambda!473982)))

(declare-fun lt!2728584 () Unit!172115)

(declare-fun Unit!172159 () Unit!172115)

(assert (=> b!8054700 (= lt!2728584 Unit!172159)))

(declare-fun lt!2728593 () Unit!172115)

(declare-fun Unit!172160 () Unit!172115)

(assert (=> b!8054700 (= lt!2728593 Unit!172160)))

(declare-fun lt!2728582 () Unit!172115)

(assert (=> b!8054700 (= lt!2728582 (forallContained!4665 (toList!11930 lt!2728595) lambda!473982 (h!82010 l!14636)))))

(assert (=> b!8054700 (contains!21235 lt!2728595 (_1!38757 (h!82010 l!14636)))))

(declare-fun lt!2728597 () Unit!172115)

(declare-fun Unit!172161 () Unit!172115)

(assert (=> b!8054700 (= lt!2728597 Unit!172161)))

(assert (=> b!8054700 (contains!21235 lt!2728590 (_1!38757 (h!82010 l!14636)))))

(declare-fun lt!2728587 () Unit!172115)

(declare-fun Unit!172162 () Unit!172115)

(assert (=> b!8054700 (= lt!2728587 Unit!172162)))

(assert (=> b!8054700 (forall!18511 l!14636 lambda!473982)))

(declare-fun lt!2728580 () Unit!172115)

(declare-fun Unit!172163 () Unit!172115)

(assert (=> b!8054700 (= lt!2728580 Unit!172163)))

(assert (=> b!8054700 call!747315))

(declare-fun lt!2728596 () Unit!172115)

(declare-fun Unit!172164 () Unit!172115)

(assert (=> b!8054700 (= lt!2728596 Unit!172164)))

(declare-fun lt!2728599 () Unit!172115)

(declare-fun Unit!172165 () Unit!172115)

(assert (=> b!8054700 (= lt!2728599 Unit!172165)))

(declare-fun lt!2728591 () Unit!172115)

(assert (=> b!8054700 (= lt!2728591 (addForallContainsKeyThenBeforeAdding!1090 acc!1298 lt!2728590 (_1!38757 (h!82010 l!14636)) (_2!38757 (h!82010 l!14636))))))

(assert (=> b!8054700 (forall!18511 (toList!11930 acc!1298) lambda!473982)))

(declare-fun lt!2728583 () Unit!172115)

(assert (=> b!8054700 (= lt!2728583 lt!2728591)))

(assert (=> b!8054700 (forall!18511 (toList!11930 acc!1298) lambda!473982)))

(declare-fun lt!2728589 () Unit!172115)

(declare-fun Unit!172166 () Unit!172115)

(assert (=> b!8054700 (= lt!2728589 Unit!172166)))

(declare-fun res!3185615 () Bool)

(declare-fun call!747316 () Bool)

(assert (=> b!8054700 (= res!3185615 call!747316)))

(declare-fun e!4746407 () Bool)

(assert (=> b!8054700 (=> (not res!3185615) (not e!4746407))))

(assert (=> b!8054700 e!4746407))

(declare-fun lt!2728588 () Unit!172115)

(declare-fun Unit!172167 () Unit!172115)

(assert (=> b!8054700 (= lt!2728588 Unit!172167)))

(assert (=> b!8054701 (= e!4746408 acc!1298)))

(declare-fun lt!2728598 () Unit!172115)

(assert (=> b!8054701 (= lt!2728598 call!747314)))

(assert (=> b!8054701 call!747315))

(declare-fun lt!2728581 () Unit!172115)

(assert (=> b!8054701 (= lt!2728581 lt!2728598)))

(assert (=> b!8054701 call!747316))

(declare-fun lt!2728592 () Unit!172115)

(declare-fun Unit!172168 () Unit!172115)

(assert (=> b!8054701 (= lt!2728592 Unit!172168)))

(declare-fun bm!747310 () Bool)

(assert (=> bm!747310 (= call!747316 (forall!18511 (ite c!1476370 (toList!11930 acc!1298) l!14636) (ite c!1476370 lambda!473980 lambda!473982)))))

(assert (=> d!2398258 e!4746406))

(declare-fun res!3185614 () Bool)

(assert (=> d!2398258 (=> (not res!3185614) (not e!4746406))))

(assert (=> d!2398258 (= res!3185614 (forall!18511 l!14636 lambda!473983))))

(assert (=> d!2398258 (= lt!2728585 e!4746408)))

(assert (=> d!2398258 (= c!1476370 ((_ is Nil!75562) l!14636))))

(assert (=> d!2398258 (noDuplicateKeys!2716 l!14636)))

(assert (=> d!2398258 (= (addToMapMapFromBucket!1997 l!14636 acc!1298) lt!2728585)))

(declare-fun bm!747311 () Bool)

(assert (=> bm!747311 (= call!747314 (lemmaContainsAllItsOwnKeys!1092 acc!1298))))

(declare-fun b!8054702 () Bool)

(declare-fun res!3185613 () Bool)

(assert (=> b!8054702 (=> (not res!3185613) (not e!4746406))))

(assert (=> b!8054702 (= res!3185613 (forall!18511 (toList!11930 acc!1298) lambda!473983))))

(declare-fun b!8054703 () Bool)

(assert (=> b!8054703 (= e!4746407 (forall!18511 (toList!11930 acc!1298) lambda!473982))))

(assert (= (and d!2398258 c!1476370) b!8054701))

(assert (= (and d!2398258 (not c!1476370)) b!8054700))

(assert (= (and b!8054700 res!3185615) b!8054703))

(assert (= (or b!8054701 b!8054700) bm!747310))

(assert (= (or b!8054701 b!8054700) bm!747309))

(assert (= (or b!8054701 b!8054700) bm!747311))

(assert (= (and d!2398258 res!3185614) b!8054702))

(assert (= (and b!8054702 res!3185613) b!8054699))

(declare-fun m!8407248 () Bool)

(assert (=> b!8054702 m!8407248))

(declare-fun m!8407250 () Bool)

(assert (=> d!2398258 m!8407250))

(assert (=> d!2398258 m!8406986))

(declare-fun m!8407252 () Bool)

(assert (=> bm!747311 m!8407252))

(declare-fun m!8407254 () Bool)

(assert (=> bm!747309 m!8407254))

(declare-fun m!8407256 () Bool)

(assert (=> bm!747310 m!8407256))

(declare-fun m!8407258 () Bool)

(assert (=> b!8054699 m!8407258))

(declare-fun m!8407260 () Bool)

(assert (=> b!8054703 m!8407260))

(declare-fun m!8407262 () Bool)

(assert (=> b!8054700 m!8407262))

(assert (=> b!8054700 m!8407008))

(declare-fun m!8407264 () Bool)

(assert (=> b!8054700 m!8407264))

(declare-fun m!8407266 () Bool)

(assert (=> b!8054700 m!8407266))

(assert (=> b!8054700 m!8407260))

(assert (=> b!8054700 m!8407008))

(declare-fun m!8407268 () Bool)

(assert (=> b!8054700 m!8407268))

(declare-fun m!8407270 () Bool)

(assert (=> b!8054700 m!8407270))

(declare-fun m!8407272 () Bool)

(assert (=> b!8054700 m!8407272))

(declare-fun m!8407274 () Bool)

(assert (=> b!8054700 m!8407274))

(assert (=> b!8054700 m!8407260))

(declare-fun m!8407276 () Bool)

(assert (=> b!8054700 m!8407276))

(declare-fun m!8407278 () Bool)

(assert (=> b!8054700 m!8407278))

(assert (=> b!8054537 d!2398258))

(assert (=> b!8054539 d!2398224))

(declare-fun b!8054704 () Bool)

(declare-fun e!4746413 () Unit!172115)

(declare-fun e!4746409 () Unit!172115)

(assert (=> b!8054704 (= e!4746413 e!4746409)))

(declare-fun c!1476371 () Bool)

(declare-fun call!747317 () Bool)

(assert (=> b!8054704 (= c!1476371 call!747317)))

(declare-fun b!8054706 () Bool)

(assert (=> b!8054706 false))

(declare-fun lt!2728601 () Unit!172115)

(declare-fun lt!2728606 () Unit!172115)

(assert (=> b!8054706 (= lt!2728601 lt!2728606)))

(assert (=> b!8054706 (containsKey!4871 (toList!11930 acc!1298) key!6222)))

(assert (=> b!8054706 (= lt!2728606 (lemmaInGetKeysListThenContainsKey!1249 (toList!11930 acc!1298) key!6222))))

(declare-fun Unit!172171 () Unit!172115)

(assert (=> b!8054706 (= e!4746409 Unit!172171)))

(declare-fun bm!747312 () Bool)

(declare-fun e!4746411 () List!75690)

(assert (=> bm!747312 (= call!747317 (contains!21238 e!4746411 key!6222))))

(declare-fun c!1476372 () Bool)

(declare-fun c!1476373 () Bool)

(assert (=> bm!747312 (= c!1476372 c!1476373)))

(declare-fun b!8054707 () Bool)

(declare-fun e!4746412 () Bool)

(assert (=> b!8054707 (= e!4746412 (not (contains!21238 (keys!30854 acc!1298) key!6222)))))

(declare-fun b!8054708 () Bool)

(declare-fun e!4746410 () Bool)

(declare-fun e!4746414 () Bool)

(assert (=> b!8054708 (= e!4746410 e!4746414)))

(declare-fun res!3185617 () Bool)

(assert (=> b!8054708 (=> (not res!3185617) (not e!4746414))))

(assert (=> b!8054708 (= res!3185617 (isDefined!14539 (getValueByKey!2789 (toList!11930 acc!1298) key!6222)))))

(declare-fun b!8054709 () Bool)

(declare-fun lt!2728602 () Unit!172115)

(assert (=> b!8054709 (= e!4746413 lt!2728602)))

(declare-fun lt!2728608 () Unit!172115)

(assert (=> b!8054709 (= lt!2728608 (lemmaContainsKeyImpliesGetValueByKeyDefined!2561 (toList!11930 acc!1298) key!6222))))

(assert (=> b!8054709 (isDefined!14539 (getValueByKey!2789 (toList!11930 acc!1298) key!6222))))

(declare-fun lt!2728607 () Unit!172115)

(assert (=> b!8054709 (= lt!2728607 lt!2728608)))

(assert (=> b!8054709 (= lt!2728602 (lemmaInListThenGetKeysListContains!1244 (toList!11930 acc!1298) key!6222))))

(assert (=> b!8054709 call!747317))

(declare-fun b!8054710 () Bool)

(assert (=> b!8054710 (= e!4746414 (contains!21238 (keys!30854 acc!1298) key!6222))))

(declare-fun b!8054705 () Bool)

(declare-fun Unit!172172 () Unit!172115)

(assert (=> b!8054705 (= e!4746409 Unit!172172)))

(declare-fun d!2398260 () Bool)

(assert (=> d!2398260 e!4746410))

(declare-fun res!3185616 () Bool)

(assert (=> d!2398260 (=> res!3185616 e!4746410)))

(assert (=> d!2398260 (= res!3185616 e!4746412)))

(declare-fun res!3185618 () Bool)

(assert (=> d!2398260 (=> (not res!3185618) (not e!4746412))))

(declare-fun lt!2728604 () Bool)

(assert (=> d!2398260 (= res!3185618 (not lt!2728604))))

(declare-fun lt!2728605 () Bool)

(assert (=> d!2398260 (= lt!2728604 lt!2728605)))

(declare-fun lt!2728603 () Unit!172115)

(assert (=> d!2398260 (= lt!2728603 e!4746413)))

(assert (=> d!2398260 (= c!1476373 lt!2728605)))

(assert (=> d!2398260 (= lt!2728605 (containsKey!4871 (toList!11930 acc!1298) key!6222))))

(assert (=> d!2398260 (= (contains!21235 acc!1298 key!6222) lt!2728604)))

(declare-fun b!8054711 () Bool)

(assert (=> b!8054711 (= e!4746411 (getKeysList!1249 (toList!11930 acc!1298)))))

(declare-fun b!8054712 () Bool)

(assert (=> b!8054712 (= e!4746411 (keys!30854 acc!1298))))

(assert (= (and d!2398260 c!1476373) b!8054709))

(assert (= (and d!2398260 (not c!1476373)) b!8054704))

(assert (= (and b!8054704 c!1476371) b!8054706))

(assert (= (and b!8054704 (not c!1476371)) b!8054705))

(assert (= (or b!8054709 b!8054704) bm!747312))

(assert (= (and bm!747312 c!1476372) b!8054711))

(assert (= (and bm!747312 (not c!1476372)) b!8054712))

(assert (= (and d!2398260 res!3185618) b!8054707))

(assert (= (and d!2398260 (not res!3185616)) b!8054708))

(assert (= (and b!8054708 res!3185617) b!8054710))

(declare-fun m!8407280 () Bool)

(assert (=> b!8054707 m!8407280))

(assert (=> b!8054707 m!8407280))

(declare-fun m!8407282 () Bool)

(assert (=> b!8054707 m!8407282))

(declare-fun m!8407284 () Bool)

(assert (=> d!2398260 m!8407284))

(declare-fun m!8407286 () Bool)

(assert (=> b!8054711 m!8407286))

(declare-fun m!8407288 () Bool)

(assert (=> bm!747312 m!8407288))

(declare-fun m!8407290 () Bool)

(assert (=> b!8054709 m!8407290))

(assert (=> b!8054709 m!8407112))

(assert (=> b!8054709 m!8407112))

(declare-fun m!8407292 () Bool)

(assert (=> b!8054709 m!8407292))

(declare-fun m!8407294 () Bool)

(assert (=> b!8054709 m!8407294))

(assert (=> b!8054708 m!8407112))

(assert (=> b!8054708 m!8407112))

(assert (=> b!8054708 m!8407292))

(assert (=> b!8054712 m!8407280))

(assert (=> b!8054706 m!8407284))

(declare-fun m!8407296 () Bool)

(assert (=> b!8054706 m!8407296))

(assert (=> b!8054710 m!8407280))

(assert (=> b!8054710 m!8407280))

(assert (=> b!8054710 m!8407282))

(assert (=> b!8054528 d!2398260))

(assert (=> b!8054530 d!2398222))

(declare-fun b!8054713 () Bool)

(declare-fun e!4746419 () Unit!172115)

(declare-fun e!4746415 () Unit!172115)

(assert (=> b!8054713 (= e!4746419 e!4746415)))

(declare-fun c!1476374 () Bool)

(declare-fun call!747318 () Bool)

(assert (=> b!8054713 (= c!1476374 call!747318)))

(declare-fun b!8054715 () Bool)

(assert (=> b!8054715 false))

(declare-fun lt!2728609 () Unit!172115)

(declare-fun lt!2728614 () Unit!172115)

(assert (=> b!8054715 (= lt!2728609 lt!2728614)))

(assert (=> b!8054715 (containsKey!4871 (toList!11930 lt!2728343) key!6222)))

(assert (=> b!8054715 (= lt!2728614 (lemmaInGetKeysListThenContainsKey!1249 (toList!11930 lt!2728343) key!6222))))

(declare-fun Unit!172173 () Unit!172115)

(assert (=> b!8054715 (= e!4746415 Unit!172173)))

(declare-fun bm!747313 () Bool)

(declare-fun e!4746417 () List!75690)

(assert (=> bm!747313 (= call!747318 (contains!21238 e!4746417 key!6222))))

(declare-fun c!1476375 () Bool)

(declare-fun c!1476376 () Bool)

(assert (=> bm!747313 (= c!1476375 c!1476376)))

(declare-fun b!8054716 () Bool)

(declare-fun e!4746418 () Bool)

(assert (=> b!8054716 (= e!4746418 (not (contains!21238 (keys!30854 lt!2728343) key!6222)))))

(declare-fun b!8054717 () Bool)

(declare-fun e!4746416 () Bool)

(declare-fun e!4746420 () Bool)

(assert (=> b!8054717 (= e!4746416 e!4746420)))

(declare-fun res!3185620 () Bool)

(assert (=> b!8054717 (=> (not res!3185620) (not e!4746420))))

(assert (=> b!8054717 (= res!3185620 (isDefined!14539 (getValueByKey!2789 (toList!11930 lt!2728343) key!6222)))))

(declare-fun b!8054718 () Bool)

(declare-fun lt!2728610 () Unit!172115)

(assert (=> b!8054718 (= e!4746419 lt!2728610)))

(declare-fun lt!2728620 () Unit!172115)

(assert (=> b!8054718 (= lt!2728620 (lemmaContainsKeyImpliesGetValueByKeyDefined!2561 (toList!11930 lt!2728343) key!6222))))

(assert (=> b!8054718 (isDefined!14539 (getValueByKey!2789 (toList!11930 lt!2728343) key!6222))))

(declare-fun lt!2728619 () Unit!172115)

(assert (=> b!8054718 (= lt!2728619 lt!2728620)))

(assert (=> b!8054718 (= lt!2728610 (lemmaInListThenGetKeysListContains!1244 (toList!11930 lt!2728343) key!6222))))

(assert (=> b!8054718 call!747318))

(declare-fun b!8054719 () Bool)

(assert (=> b!8054719 (= e!4746420 (contains!21238 (keys!30854 lt!2728343) key!6222))))

(declare-fun b!8054714 () Bool)

(declare-fun Unit!172174 () Unit!172115)

(assert (=> b!8054714 (= e!4746415 Unit!172174)))

(declare-fun d!2398262 () Bool)

(assert (=> d!2398262 e!4746416))

(declare-fun res!3185619 () Bool)

(assert (=> d!2398262 (=> res!3185619 e!4746416)))

(assert (=> d!2398262 (= res!3185619 e!4746418)))

(declare-fun res!3185621 () Bool)

(assert (=> d!2398262 (=> (not res!3185621) (not e!4746418))))

(declare-fun lt!2728612 () Bool)

(assert (=> d!2398262 (= res!3185621 (not lt!2728612))))

(declare-fun lt!2728613 () Bool)

(assert (=> d!2398262 (= lt!2728612 lt!2728613)))

(declare-fun lt!2728611 () Unit!172115)

(assert (=> d!2398262 (= lt!2728611 e!4746419)))

(assert (=> d!2398262 (= c!1476376 lt!2728613)))

(assert (=> d!2398262 (= lt!2728613 (containsKey!4871 (toList!11930 lt!2728343) key!6222))))

(assert (=> d!2398262 (= (contains!21235 lt!2728343 key!6222) lt!2728612)))

(declare-fun b!8054720 () Bool)

(assert (=> b!8054720 (= e!4746417 (getKeysList!1249 (toList!11930 lt!2728343)))))

(declare-fun b!8054721 () Bool)

(assert (=> b!8054721 (= e!4746417 (keys!30854 lt!2728343))))

(assert (= (and d!2398262 c!1476376) b!8054718))

(assert (= (and d!2398262 (not c!1476376)) b!8054713))

(assert (= (and b!8054713 c!1476374) b!8054715))

(assert (= (and b!8054713 (not c!1476374)) b!8054714))

(assert (= (or b!8054718 b!8054713) bm!747313))

(assert (= (and bm!747313 c!1476375) b!8054720))

(assert (= (and bm!747313 (not c!1476375)) b!8054721))

(assert (= (and d!2398262 res!3185621) b!8054716))

(assert (= (and d!2398262 (not res!3185619)) b!8054717))

(assert (= (and b!8054717 res!3185620) b!8054719))

(declare-fun m!8407298 () Bool)

(assert (=> b!8054716 m!8407298))

(assert (=> b!8054716 m!8407298))

(declare-fun m!8407300 () Bool)

(assert (=> b!8054716 m!8407300))

(declare-fun m!8407302 () Bool)

(assert (=> d!2398262 m!8407302))

(declare-fun m!8407304 () Bool)

(assert (=> b!8054720 m!8407304))

(declare-fun m!8407306 () Bool)

(assert (=> bm!747313 m!8407306))

(declare-fun m!8407308 () Bool)

(assert (=> b!8054718 m!8407308))

(declare-fun m!8407310 () Bool)

(assert (=> b!8054718 m!8407310))

(assert (=> b!8054718 m!8407310))

(declare-fun m!8407312 () Bool)

(assert (=> b!8054718 m!8407312))

(declare-fun m!8407314 () Bool)

(assert (=> b!8054718 m!8407314))

(assert (=> b!8054717 m!8407310))

(assert (=> b!8054717 m!8407310))

(assert (=> b!8054717 m!8407312))

(assert (=> b!8054721 m!8407298))

(assert (=> b!8054715 m!8407302))

(declare-fun m!8407316 () Bool)

(assert (=> b!8054715 m!8407316))

(assert (=> b!8054719 m!8407298))

(assert (=> b!8054719 m!8407298))

(assert (=> b!8054719 m!8407300))

(assert (=> b!8054529 d!2398262))

(declare-fun tp!2413832 () Bool)

(declare-fun b!8054730 () Bool)

(declare-fun e!4746425 () Bool)

(assert (=> b!8054730 (= e!4746425 (and tp_is_empty!54939 tp_is_empty!54941 tp!2413832))))

(assert (=> b!8054542 (= tp!2413829 e!4746425)))

(assert (= (and b!8054542 ((_ is Cons!75562) (toList!11930 acc!1298))) b!8054730))

(declare-fun e!4746426 () Bool)

(declare-fun b!8054731 () Bool)

(declare-fun tp!2413833 () Bool)

(assert (=> b!8054731 (= e!4746426 (and tp_is_empty!54939 tp_is_empty!54941 tp!2413833))))

(assert (=> b!8054533 (= tp!2413828 e!4746426)))

(assert (= (and b!8054533 ((_ is Cons!75562) (t!391460 l!14636))) b!8054731))

(check-sat (not b!8054700) (not b!8054694) (not d!2398240) (not b!8054710) (not b!8054600) (not bm!747291) (not b!8054695) (not b!8054703) (not bm!747309) (not bm!747313) (not b!8054611) (not b!8054655) (not d!2398232) (not b!8054717) tp_is_empty!54939 (not b!8054603) (not d!2398210) (not b!8054623) (not d!2398238) (not b!8054657) (not d!2398236) (not d!2398262) (not b!8054720) (not bm!747308) (not b!8054721) (not d!2398220) (not b!8054712) (not bm!747292) (not b!8054660) (not b!8054687) (not b!8054680) (not d!2398260) (not b!8054716) (not b!8054696) (not d!2398248) (not b!8054599) (not bm!747311) (not b!8054702) (not b!8054707) (not b!8054699) (not bm!747301) (not b!8054610) (not d!2398254) (not d!2398234) (not b!8054711) (not d!2398212) (not b!8054693) (not d!2398258) (not bm!747312) (not b!8054709) tp_is_empty!54941 (not b!8054689) (not b!8054617) (not b!8054661) (not b!8054730) (not b!8054697) (not b!8054706) (not b!8054718) (not b!8054619) (not b!8054719) (not b!8054692) (not bm!747310) (not b!8054681) (not d!2398226) (not b!8054698) (not b!8054602) (not b!8054731) (not b!8054551) (not b!8054659) (not b!8054715) (not d!2398230) (not b!8054678) (not b!8054679) (not d!2398228) (not b!8054658) (not b!8054621) (not b!8054656) (not bm!747290) (not b!8054708))
(check-sat)
