; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759484 () Bool)

(assert start!759484)

(declare-datatypes ((K!23028 0))(
  ( (K!23029 (val!33095 Int)) )
))
(declare-datatypes ((B!4505 0))(
  ( (B!4506 (val!33096 Int)) )
))
(declare-datatypes ((tuple2!71060 0))(
  ( (tuple2!71061 (_1!38833 K!23028) (_2!38833 B!4505)) )
))
(declare-datatypes ((List!75787 0))(
  ( (Nil!75661) (Cons!75661 (h!82109 tuple2!71060) (t!391559 List!75787)) )
))
(declare-fun lt!2732661 () List!75787)

(declare-fun keyValue!4 () tuple2!71060)

(declare-datatypes ((Option!18031 0))(
  ( (None!18030) (Some!18030 (v!55389 B!4505)) )
))
(declare-fun getValueByKey!2815 (List!75787 K!23028) Option!18031)

(assert (=> start!759484 (= (getValueByKey!2815 lt!2732661 (_1!38833 keyValue!4)) (Some!18030 (_2!38833 keyValue!4)))))

(declare-datatypes ((Unit!172770 0))(
  ( (Unit!172771) )
))
(declare-fun lt!2732662 () Unit!172770)

(declare-fun lemmaContainsTupThenGetReturnValue!1308 (List!75787 K!23028 B!4505) Unit!172770)

(assert (=> start!759484 (= lt!2732662 (lemmaContainsTupThenGetReturnValue!1308 lt!2732661 (_1!38833 keyValue!4) (_2!38833 keyValue!4)))))

(declare-datatypes ((ListMap!7427 0))(
  ( (ListMap!7428 (toList!11988 List!75787)) )
))
(declare-fun thiss!41857 () ListMap!7427)

(declare-fun insertNoDuplicatedKeys!820 (List!75787 K!23028 B!4505) List!75787)

(assert (=> start!759484 (= lt!2732661 (insertNoDuplicatedKeys!820 (toList!11988 thiss!41857) (_1!38833 keyValue!4) (_2!38833 keyValue!4)))))

(declare-fun inv!97499 (ListMap!7427) Bool)

(assert (=> start!759484 (not (inv!97499 (ListMap!7428 lt!2732661)))))

(declare-fun e!4749498 () Bool)

(assert (=> start!759484 (and (inv!97499 thiss!41857) e!4749498)))

(declare-fun tp_is_empty!55235 () Bool)

(declare-fun tp_is_empty!55237 () Bool)

(assert (=> start!759484 (and tp_is_empty!55235 tp_is_empty!55237)))

(declare-fun b!8059299 () Bool)

(declare-fun tp!2414388 () Bool)

(assert (=> b!8059299 (= e!4749498 tp!2414388)))

(assert (= start!759484 b!8059299))

(declare-fun m!8412558 () Bool)

(assert (=> start!759484 m!8412558))

(declare-fun m!8412560 () Bool)

(assert (=> start!759484 m!8412560))

(declare-fun m!8412562 () Bool)

(assert (=> start!759484 m!8412562))

(declare-fun m!8412564 () Bool)

(assert (=> start!759484 m!8412564))

(declare-fun m!8412566 () Bool)

(assert (=> start!759484 m!8412566))

(check-sat (not start!759484) (not b!8059299) tp_is_empty!55235 tp_is_empty!55237)
(check-sat)
(get-model)

(declare-fun d!2399340 () Bool)

(declare-fun invariantList!1976 (List!75787) Bool)

(assert (=> d!2399340 (= (inv!97499 (ListMap!7428 lt!2732661)) (invariantList!1976 (toList!11988 (ListMap!7428 lt!2732661))))))

(declare-fun bs!1973561 () Bool)

(assert (= bs!1973561 d!2399340))

(declare-fun m!8412568 () Bool)

(assert (=> bs!1973561 m!8412568))

(assert (=> start!759484 d!2399340))

(declare-fun b!8059317 () Bool)

(declare-fun e!4749507 () Option!18031)

(assert (=> b!8059317 (= e!4749507 None!18030)))

(declare-fun b!8059314 () Bool)

(declare-fun e!4749506 () Option!18031)

(assert (=> b!8059314 (= e!4749506 (Some!18030 (_2!38833 (h!82109 lt!2732661))))))

(declare-fun d!2399342 () Bool)

(declare-fun c!1476876 () Bool)

(get-info :version)

(assert (=> d!2399342 (= c!1476876 (and ((_ is Cons!75661) lt!2732661) (= (_1!38833 (h!82109 lt!2732661)) (_1!38833 keyValue!4))))))

(assert (=> d!2399342 (= (getValueByKey!2815 lt!2732661 (_1!38833 keyValue!4)) e!4749506)))

(declare-fun b!8059316 () Bool)

(assert (=> b!8059316 (= e!4749507 (getValueByKey!2815 (t!391559 lt!2732661) (_1!38833 keyValue!4)))))

(declare-fun b!8059315 () Bool)

(assert (=> b!8059315 (= e!4749506 e!4749507)))

(declare-fun c!1476877 () Bool)

(assert (=> b!8059315 (= c!1476877 (and ((_ is Cons!75661) lt!2732661) (not (= (_1!38833 (h!82109 lt!2732661)) (_1!38833 keyValue!4)))))))

(assert (= (and d!2399342 c!1476876) b!8059314))

(assert (= (and d!2399342 (not c!1476876)) b!8059315))

(assert (= (and b!8059315 c!1476877) b!8059316))

(assert (= (and b!8059315 (not c!1476877)) b!8059317))

(declare-fun m!8412578 () Bool)

(assert (=> b!8059316 m!8412578))

(assert (=> start!759484 d!2399342))

(declare-fun d!2399346 () Bool)

(assert (=> d!2399346 (= (getValueByKey!2815 lt!2732661 (_1!38833 keyValue!4)) (Some!18030 (_2!38833 keyValue!4)))))

(declare-fun lt!2732668 () Unit!172770)

(declare-fun choose!60586 (List!75787 K!23028 B!4505) Unit!172770)

(assert (=> d!2399346 (= lt!2732668 (choose!60586 lt!2732661 (_1!38833 keyValue!4) (_2!38833 keyValue!4)))))

(declare-fun e!4749516 () Bool)

(assert (=> d!2399346 e!4749516))

(declare-fun res!3188451 () Bool)

(assert (=> d!2399346 (=> (not res!3188451) (not e!4749516))))

(assert (=> d!2399346 (= res!3188451 (invariantList!1976 lt!2732661))))

(assert (=> d!2399346 (= (lemmaContainsTupThenGetReturnValue!1308 lt!2732661 (_1!38833 keyValue!4) (_2!38833 keyValue!4)) lt!2732668)))

(declare-fun b!8059334 () Bool)

(declare-fun res!3188452 () Bool)

(assert (=> b!8059334 (=> (not res!3188452) (not e!4749516))))

(declare-fun containsKey!4941 (List!75787 K!23028) Bool)

(assert (=> b!8059334 (= res!3188452 (containsKey!4941 lt!2732661 (_1!38833 keyValue!4)))))

(declare-fun b!8059335 () Bool)

(declare-fun contains!21330 (List!75787 tuple2!71060) Bool)

(assert (=> b!8059335 (= e!4749516 (contains!21330 lt!2732661 (tuple2!71061 (_1!38833 keyValue!4) (_2!38833 keyValue!4))))))

(assert (= (and d!2399346 res!3188451) b!8059334))

(assert (= (and b!8059334 res!3188452) b!8059335))

(assert (=> d!2399346 m!8412558))

(declare-fun m!8412586 () Bool)

(assert (=> d!2399346 m!8412586))

(declare-fun m!8412588 () Bool)

(assert (=> d!2399346 m!8412588))

(declare-fun m!8412590 () Bool)

(assert (=> b!8059334 m!8412590))

(declare-fun m!8412592 () Bool)

(assert (=> b!8059335 m!8412592))

(assert (=> start!759484 d!2399346))

(declare-fun d!2399354 () Bool)

(assert (=> d!2399354 (= (inv!97499 thiss!41857) (invariantList!1976 (toList!11988 thiss!41857)))))

(declare-fun bs!1973564 () Bool)

(assert (= bs!1973564 d!2399354))

(declare-fun m!8412594 () Bool)

(assert (=> bs!1973564 m!8412594))

(assert (=> start!759484 d!2399354))

(declare-fun b!8059406 () Bool)

(declare-fun e!4749552 () List!75787)

(assert (=> b!8059406 (= e!4749552 (insertNoDuplicatedKeys!820 (t!391559 (toList!11988 thiss!41857)) (_1!38833 keyValue!4) (_2!38833 keyValue!4)))))

(declare-fun b!8059407 () Bool)

(declare-fun e!4749558 () Bool)

(assert (=> b!8059407 (= e!4749558 (not (containsKey!4941 (toList!11988 thiss!41857) (_1!38833 keyValue!4))))))

(declare-fun b!8059408 () Bool)

(declare-fun e!4749556 () List!75787)

(declare-fun call!747738 () List!75787)

(assert (=> b!8059408 (= e!4749556 call!747738)))

(declare-fun b!8059409 () Bool)

(assert (=> b!8059409 false))

(declare-fun lt!2732729 () Unit!172770)

(declare-fun lt!2732727 () Unit!172770)

(assert (=> b!8059409 (= lt!2732729 lt!2732727)))

(assert (=> b!8059409 (containsKey!4941 (t!391559 (toList!11988 thiss!41857)) (_1!38833 (h!82109 (toList!11988 thiss!41857))))))

(declare-fun lemmaInGetKeysListThenContainsKey!1272 (List!75787 K!23028) Unit!172770)

(assert (=> b!8059409 (= lt!2732727 (lemmaInGetKeysListThenContainsKey!1272 (t!391559 (toList!11988 thiss!41857)) (_1!38833 (h!82109 (toList!11988 thiss!41857)))))))

(declare-fun lt!2732731 () Unit!172770)

(declare-fun lt!2732734 () Unit!172770)

(assert (=> b!8059409 (= lt!2732731 lt!2732734)))

(declare-datatypes ((List!75789 0))(
  ( (Nil!75663) (Cons!75663 (h!82111 K!23028) (t!391561 List!75789)) )
))
(declare-fun call!747739 () List!75789)

(declare-fun contains!21332 (List!75789 K!23028) Bool)

(assert (=> b!8059409 (contains!21332 call!747739 (_1!38833 (h!82109 (toList!11988 thiss!41857))))))

(declare-fun lt!2732724 () List!75787)

(declare-fun lemmaInListThenGetKeysListContains!1267 (List!75787 K!23028) Unit!172770)

(assert (=> b!8059409 (= lt!2732734 (lemmaInListThenGetKeysListContains!1267 lt!2732724 (_1!38833 (h!82109 (toList!11988 thiss!41857)))))))

(assert (=> b!8059409 (= lt!2732724 (insertNoDuplicatedKeys!820 (t!391559 (toList!11988 thiss!41857)) (_1!38833 keyValue!4) (_2!38833 keyValue!4)))))

(declare-fun e!4749553 () Unit!172770)

(declare-fun Unit!172773 () Unit!172770)

(assert (=> b!8059409 (= e!4749553 Unit!172773)))

(declare-fun b!8059410 () Bool)

(declare-fun res!3188473 () Bool)

(declare-fun e!4749557 () Bool)

(assert (=> b!8059410 (=> (not res!3188473) (not e!4749557))))

(declare-fun lt!2732732 () List!75787)

(assert (=> b!8059410 (= res!3188473 (containsKey!4941 lt!2732732 (_1!38833 keyValue!4)))))

(declare-fun d!2399356 () Bool)

(assert (=> d!2399356 e!4749557))

(declare-fun res!3188474 () Bool)

(assert (=> d!2399356 (=> (not res!3188474) (not e!4749557))))

(assert (=> d!2399356 (= res!3188474 (invariantList!1976 lt!2732732))))

(declare-fun e!4749554 () List!75787)

(assert (=> d!2399356 (= lt!2732732 e!4749554)))

(declare-fun c!1476909 () Bool)

(assert (=> d!2399356 (= c!1476909 (and ((_ is Cons!75661) (toList!11988 thiss!41857)) (= (_1!38833 (h!82109 (toList!11988 thiss!41857))) (_1!38833 keyValue!4))))))

(assert (=> d!2399356 (invariantList!1976 (toList!11988 thiss!41857))))

(assert (=> d!2399356 (= (insertNoDuplicatedKeys!820 (toList!11988 thiss!41857) (_1!38833 keyValue!4) (_2!38833 keyValue!4)) lt!2732732)))

(declare-fun bm!747731 () Bool)

(declare-fun getKeysList!1272 (List!75787) List!75789)

(assert (=> bm!747731 (= call!747739 (getKeysList!1272 (ite c!1476909 (toList!11988 thiss!41857) lt!2732724)))))

(declare-fun b!8059411 () Bool)

(declare-fun Unit!172774 () Unit!172770)

(assert (=> b!8059411 (= e!4749553 Unit!172774)))

(declare-fun bm!747732 () Bool)

(declare-fun call!747737 () List!75787)

(assert (=> bm!747732 (= call!747737 call!747738)))

(declare-fun c!1476911 () Bool)

(declare-fun c!1476912 () Bool)

(assert (=> bm!747732 (= c!1476911 c!1476912)))

(declare-fun b!8059412 () Bool)

(declare-fun e!4749555 () List!75787)

(assert (=> b!8059412 (= e!4749555 call!747737)))

(declare-fun call!747736 () List!75787)

(declare-fun bm!747733 () Bool)

(declare-fun c!1476910 () Bool)

(declare-fun $colon$colon!3432 (List!75787 tuple2!71060) List!75787)

(assert (=> bm!747733 (= call!747736 ($colon$colon!3432 (ite c!1476909 (t!391559 (toList!11988 thiss!41857)) (ite c!1476910 (toList!11988 thiss!41857) e!4749552)) (ite (or c!1476909 c!1476910) (tuple2!71061 (_1!38833 keyValue!4) (_2!38833 keyValue!4)) (ite c!1476912 (h!82109 (toList!11988 thiss!41857)) (tuple2!71061 (_1!38833 keyValue!4) (_2!38833 keyValue!4))))))))

(declare-fun b!8059413 () Bool)

(assert (=> b!8059413 (= e!4749554 e!4749556)))

(declare-fun res!3188475 () Bool)

(assert (=> b!8059413 (= res!3188475 ((_ is Cons!75661) (toList!11988 thiss!41857)))))

(assert (=> b!8059413 (=> (not res!3188475) (not e!4749558))))

(assert (=> b!8059413 (= c!1476910 e!4749558)))

(declare-fun b!8059414 () Bool)

(declare-fun lt!2732733 () List!75787)

(assert (=> b!8059414 (= e!4749555 lt!2732733)))

(assert (=> b!8059414 (= lt!2732733 call!747737)))

(declare-fun c!1476913 () Bool)

(assert (=> b!8059414 (= c!1476913 (containsKey!4941 (insertNoDuplicatedKeys!820 (t!391559 (toList!11988 thiss!41857)) (_1!38833 keyValue!4) (_2!38833 keyValue!4)) (_1!38833 (h!82109 (toList!11988 thiss!41857)))))))

(declare-fun lt!2732728 () Unit!172770)

(assert (=> b!8059414 (= lt!2732728 e!4749553)))

(declare-fun bm!747734 () Bool)

(assert (=> bm!747734 (= call!747738 call!747736)))

(declare-fun b!8059415 () Bool)

(declare-fun res!3188476 () Bool)

(assert (=> b!8059415 (=> (not res!3188476) (not e!4749557))))

(assert (=> b!8059415 (= res!3188476 (contains!21330 lt!2732732 (tuple2!71061 (_1!38833 keyValue!4) (_2!38833 keyValue!4))))))

(declare-fun b!8059416 () Bool)

(assert (=> b!8059416 (= e!4749554 call!747736)))

(declare-fun lt!2732726 () List!75789)

(assert (=> b!8059416 (= lt!2732726 call!747739)))

(declare-fun lt!2732730 () Unit!172770)

(declare-fun lemmaSubseqRefl!211 (List!75789) Unit!172770)

(assert (=> b!8059416 (= lt!2732730 (lemmaSubseqRefl!211 lt!2732726))))

(declare-fun subseq!933 (List!75789 List!75789) Bool)

(assert (=> b!8059416 (subseq!933 lt!2732726 lt!2732726)))

(declare-fun lt!2732725 () Unit!172770)

(assert (=> b!8059416 (= lt!2732725 lt!2732730)))

(declare-fun b!8059417 () Bool)

(assert (=> b!8059417 (= e!4749552 Nil!75661)))

(declare-fun b!8059418 () Bool)

(assert (=> b!8059418 (= c!1476912 ((_ is Cons!75661) (toList!11988 thiss!41857)))))

(assert (=> b!8059418 (= e!4749556 e!4749555)))

(declare-fun b!8059419 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16139 (List!75789) (InoxSet K!23028))

(assert (=> b!8059419 (= e!4749557 (= (content!16139 (getKeysList!1272 lt!2732732)) ((_ map or) (content!16139 (getKeysList!1272 (toList!11988 thiss!41857))) (store ((as const (Array K!23028 Bool)) false) (_1!38833 keyValue!4) true))))))

(assert (= (and d!2399356 c!1476909) b!8059416))

(assert (= (and d!2399356 (not c!1476909)) b!8059413))

(assert (= (and b!8059413 res!3188475) b!8059407))

(assert (= (and b!8059413 c!1476910) b!8059408))

(assert (= (and b!8059413 (not c!1476910)) b!8059418))

(assert (= (and b!8059418 c!1476912) b!8059414))

(assert (= (and b!8059418 (not c!1476912)) b!8059412))

(assert (= (and b!8059414 c!1476913) b!8059409))

(assert (= (and b!8059414 (not c!1476913)) b!8059411))

(assert (= (or b!8059414 b!8059412) bm!747732))

(assert (= (and bm!747732 c!1476911) b!8059406))

(assert (= (and bm!747732 (not c!1476911)) b!8059417))

(assert (= (or b!8059408 bm!747732) bm!747734))

(assert (= (or b!8059416 b!8059409) bm!747731))

(assert (= (or b!8059416 bm!747734) bm!747733))

(assert (= (and d!2399356 res!3188474) b!8059410))

(assert (= (and b!8059410 res!3188473) b!8059415))

(assert (= (and b!8059415 res!3188476) b!8059419))

(declare-fun m!8412602 () Bool)

(assert (=> b!8059407 m!8412602))

(declare-fun m!8412604 () Bool)

(assert (=> b!8059416 m!8412604))

(declare-fun m!8412608 () Bool)

(assert (=> b!8059416 m!8412608))

(declare-fun m!8412612 () Bool)

(assert (=> b!8059410 m!8412612))

(declare-fun m!8412616 () Bool)

(assert (=> b!8059409 m!8412616))

(declare-fun m!8412618 () Bool)

(assert (=> b!8059409 m!8412618))

(declare-fun m!8412622 () Bool)

(assert (=> b!8059409 m!8412622))

(declare-fun m!8412628 () Bool)

(assert (=> b!8059409 m!8412628))

(declare-fun m!8412632 () Bool)

(assert (=> b!8059409 m!8412632))

(declare-fun m!8412638 () Bool)

(assert (=> bm!747733 m!8412638))

(assert (=> b!8059414 m!8412632))

(assert (=> b!8059414 m!8412632))

(declare-fun m!8412644 () Bool)

(assert (=> b!8059414 m!8412644))

(assert (=> b!8059406 m!8412632))

(declare-fun m!8412648 () Bool)

(assert (=> b!8059415 m!8412648))

(declare-fun m!8412650 () Bool)

(assert (=> b!8059419 m!8412650))

(declare-fun m!8412652 () Bool)

(assert (=> b!8059419 m!8412652))

(declare-fun m!8412656 () Bool)

(assert (=> b!8059419 m!8412656))

(assert (=> b!8059419 m!8412650))

(declare-fun m!8412660 () Bool)

(assert (=> b!8059419 m!8412660))

(declare-fun m!8412664 () Bool)

(assert (=> b!8059419 m!8412664))

(assert (=> b!8059419 m!8412660))

(declare-fun m!8412668 () Bool)

(assert (=> d!2399356 m!8412668))

(assert (=> d!2399356 m!8412594))

(declare-fun m!8412670 () Bool)

(assert (=> bm!747731 m!8412670))

(assert (=> start!759484 d!2399356))

(declare-fun b!8059429 () Bool)

(declare-fun tp!2414394 () Bool)

(declare-fun e!4749564 () Bool)

(assert (=> b!8059429 (= e!4749564 (and tp_is_empty!55235 tp_is_empty!55237 tp!2414394))))

(assert (=> b!8059299 (= tp!2414388 e!4749564)))

(assert (= (and b!8059299 ((_ is Cons!75661) (toList!11988 thiss!41857))) b!8059429))

(check-sat tp_is_empty!55235 (not d!2399340) (not b!8059416) (not bm!747731) (not b!8059415) (not b!8059406) tp_is_empty!55237 (not bm!747733) (not b!8059316) (not b!8059407) (not d!2399346) (not b!8059409) (not b!8059335) (not b!8059334) (not b!8059429) (not d!2399356) (not d!2399354) (not b!8059419) (not b!8059410) (not b!8059414))
(check-sat)
