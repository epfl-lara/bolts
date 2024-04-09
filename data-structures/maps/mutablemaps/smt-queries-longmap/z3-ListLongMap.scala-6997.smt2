; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88798 () Bool)

(assert start!88798)

(declare-fun b!1019348 () Bool)

(declare-fun res!683467 () Bool)

(declare-fun e!573690 () Bool)

(assert (=> b!1019348 (=> (not res!683467) (not e!573690))))

(declare-datatypes ((B!1690 0))(
  ( (B!1691 (val!11929 Int)) )
))
(declare-datatypes ((tuple2!15494 0))(
  ( (tuple2!15495 (_1!7757 (_ BitVec 64)) (_2!7757 B!1690)) )
))
(declare-datatypes ((List!21731 0))(
  ( (Nil!21728) (Cons!21727 (h!22925 tuple2!15494) (t!30743 List!21731)) )
))
(declare-fun l!996 () List!21731)

(declare-fun isStrictlySorted!678 (List!21731) Bool)

(assert (=> b!1019348 (= res!683467 (isStrictlySorted!678 (t!30743 l!996)))))

(declare-fun b!1019349 () Bool)

(declare-fun lt!449649 () List!21731)

(declare-fun length!45 (List!21731) Int)

(assert (=> b!1019349 (= e!573690 (not (= (length!45 lt!449649) (length!45 l!996))))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun value!172 () B!1690)

(declare-fun insertStrictlySorted!360 (List!21731 (_ BitVec 64) B!1690) List!21731)

(assert (=> b!1019349 (= (length!45 (insertStrictlySorted!360 (t!30743 l!996) key!261 value!172)) (length!45 (t!30743 l!996)))))

(declare-datatypes ((Unit!33254 0))(
  ( (Unit!33255) )
))
(declare-fun lt!449648 () Unit!33254)

(declare-fun lemmaAddExistingKeyPreservesSize!5 (List!21731 (_ BitVec 64) B!1690) Unit!33254)

(assert (=> b!1019349 (= lt!449648 (lemmaAddExistingKeyPreservesSize!5 (t!30743 l!996) key!261 value!172))))

(declare-fun b!1019350 () Bool)

(declare-fun e!573691 () Bool)

(declare-fun tp_is_empty!23757 () Bool)

(declare-fun tp!71153 () Bool)

(assert (=> b!1019350 (= e!573691 (and tp_is_empty!23757 tp!71153))))

(declare-fun res!683469 () Bool)

(declare-fun e!573689 () Bool)

(assert (=> start!88798 (=> (not res!683469) (not e!573689))))

(assert (=> start!88798 (= res!683469 (isStrictlySorted!678 l!996))))

(assert (=> start!88798 e!573689))

(assert (=> start!88798 e!573691))

(assert (=> start!88798 true))

(assert (=> start!88798 tp_is_empty!23757))

(declare-fun b!1019351 () Bool)

(assert (=> b!1019351 (= e!573689 e!573690)))

(declare-fun res!683466 () Bool)

(assert (=> b!1019351 (=> (not res!683466) (not e!573690))))

(get-info :version)

(assert (=> b!1019351 (= res!683466 (and ((_ is Cons!21727) l!996) (bvslt (_1!7757 (h!22925 l!996)) key!261)))))

(assert (=> b!1019351 (= lt!449649 (insertStrictlySorted!360 l!996 key!261 value!172))))

(declare-fun b!1019352 () Bool)

(declare-fun res!683468 () Bool)

(assert (=> b!1019352 (=> (not res!683468) (not e!573690))))

(declare-fun containsKey!543 (List!21731 (_ BitVec 64)) Bool)

(assert (=> b!1019352 (= res!683468 (containsKey!543 (t!30743 l!996) key!261))))

(declare-fun b!1019353 () Bool)

(declare-fun res!683465 () Bool)

(assert (=> b!1019353 (=> (not res!683465) (not e!573689))))

(assert (=> b!1019353 (= res!683465 (containsKey!543 l!996 key!261))))

(assert (= (and start!88798 res!683469) b!1019353))

(assert (= (and b!1019353 res!683465) b!1019351))

(assert (= (and b!1019351 res!683466) b!1019348))

(assert (= (and b!1019348 res!683467) b!1019352))

(assert (= (and b!1019352 res!683468) b!1019349))

(assert (= (and start!88798 ((_ is Cons!21727) l!996)) b!1019350))

(declare-fun m!939837 () Bool)

(assert (=> b!1019352 m!939837))

(declare-fun m!939839 () Bool)

(assert (=> b!1019349 m!939839))

(declare-fun m!939841 () Bool)

(assert (=> b!1019349 m!939841))

(declare-fun m!939843 () Bool)

(assert (=> b!1019349 m!939843))

(declare-fun m!939845 () Bool)

(assert (=> b!1019349 m!939845))

(assert (=> b!1019349 m!939839))

(declare-fun m!939847 () Bool)

(assert (=> b!1019349 m!939847))

(declare-fun m!939849 () Bool)

(assert (=> b!1019349 m!939849))

(declare-fun m!939851 () Bool)

(assert (=> b!1019351 m!939851))

(declare-fun m!939853 () Bool)

(assert (=> b!1019348 m!939853))

(declare-fun m!939855 () Bool)

(assert (=> start!88798 m!939855))

(declare-fun m!939857 () Bool)

(assert (=> b!1019353 m!939857))

(check-sat (not b!1019348) (not b!1019351) (not b!1019349) (not b!1019353) (not b!1019352) (not start!88798) tp_is_empty!23757 (not b!1019350))
(check-sat)
(get-model)

(declare-fun b!1019426 () Bool)

(declare-fun e!573731 () List!21731)

(declare-fun call!43094 () List!21731)

(assert (=> b!1019426 (= e!573731 call!43094)))

(declare-fun lt!449661 () List!21731)

(declare-fun b!1019427 () Bool)

(declare-fun e!573730 () Bool)

(declare-fun contains!5921 (List!21731 tuple2!15494) Bool)

(assert (=> b!1019427 (= e!573730 (contains!5921 lt!449661 (tuple2!15495 key!261 value!172)))))

(declare-fun bm!43091 () Bool)

(declare-fun call!43096 () List!21731)

(assert (=> bm!43091 (= call!43096 call!43094)))

(declare-fun b!1019428 () Bool)

(declare-fun c!103291 () Bool)

(assert (=> b!1019428 (= c!103291 (and ((_ is Cons!21727) (t!30743 l!996)) (bvsgt (_1!7757 (h!22925 (t!30743 l!996))) key!261)))))

(declare-fun e!573734 () List!21731)

(assert (=> b!1019428 (= e!573731 e!573734)))

(declare-fun bm!43092 () Bool)

(declare-fun call!43095 () List!21731)

(assert (=> bm!43092 (= call!43094 call!43095)))

(declare-fun bm!43093 () Bool)

(declare-fun e!573732 () List!21731)

(declare-fun c!103294 () Bool)

(declare-fun $colon$colon!592 (List!21731 tuple2!15494) List!21731)

(assert (=> bm!43093 (= call!43095 ($colon$colon!592 e!573732 (ite c!103294 (h!22925 (t!30743 l!996)) (tuple2!15495 key!261 value!172))))))

(declare-fun c!103292 () Bool)

(assert (=> bm!43093 (= c!103292 c!103294)))

(declare-fun d!122019 () Bool)

(assert (=> d!122019 e!573730))

(declare-fun res!683500 () Bool)

(assert (=> d!122019 (=> (not res!683500) (not e!573730))))

(assert (=> d!122019 (= res!683500 (isStrictlySorted!678 lt!449661))))

(declare-fun e!573733 () List!21731)

(assert (=> d!122019 (= lt!449661 e!573733)))

(assert (=> d!122019 (= c!103294 (and ((_ is Cons!21727) (t!30743 l!996)) (bvslt (_1!7757 (h!22925 (t!30743 l!996))) key!261)))))

(assert (=> d!122019 (isStrictlySorted!678 (t!30743 l!996))))

(assert (=> d!122019 (= (insertStrictlySorted!360 (t!30743 l!996) key!261 value!172) lt!449661)))

(declare-fun b!1019429 () Bool)

(assert (=> b!1019429 (= e!573734 call!43096)))

(declare-fun b!1019430 () Bool)

(declare-fun res!683499 () Bool)

(assert (=> b!1019430 (=> (not res!683499) (not e!573730))))

(assert (=> b!1019430 (= res!683499 (containsKey!543 lt!449661 key!261))))

(declare-fun b!1019431 () Bool)

(assert (=> b!1019431 (= e!573733 e!573731)))

(declare-fun c!103293 () Bool)

(assert (=> b!1019431 (= c!103293 (and ((_ is Cons!21727) (t!30743 l!996)) (= (_1!7757 (h!22925 (t!30743 l!996))) key!261)))))

(declare-fun b!1019432 () Bool)

(assert (=> b!1019432 (= e!573734 call!43096)))

(declare-fun b!1019433 () Bool)

(assert (=> b!1019433 (= e!573732 (ite c!103293 (t!30743 (t!30743 l!996)) (ite c!103291 (Cons!21727 (h!22925 (t!30743 l!996)) (t!30743 (t!30743 l!996))) Nil!21728)))))

(declare-fun b!1019434 () Bool)

(assert (=> b!1019434 (= e!573733 call!43095)))

(declare-fun b!1019435 () Bool)

(assert (=> b!1019435 (= e!573732 (insertStrictlySorted!360 (t!30743 (t!30743 l!996)) key!261 value!172))))

(assert (= (and d!122019 c!103294) b!1019434))

(assert (= (and d!122019 (not c!103294)) b!1019431))

(assert (= (and b!1019431 c!103293) b!1019426))

(assert (= (and b!1019431 (not c!103293)) b!1019428))

(assert (= (and b!1019428 c!103291) b!1019429))

(assert (= (and b!1019428 (not c!103291)) b!1019432))

(assert (= (or b!1019429 b!1019432) bm!43091))

(assert (= (or b!1019426 bm!43091) bm!43092))

(assert (= (or b!1019434 bm!43092) bm!43093))

(assert (= (and bm!43093 c!103292) b!1019435))

(assert (= (and bm!43093 (not c!103292)) b!1019433))

(assert (= (and d!122019 res!683500) b!1019430))

(assert (= (and b!1019430 res!683499) b!1019427))

(declare-fun m!939891 () Bool)

(assert (=> bm!43093 m!939891))

(declare-fun m!939893 () Bool)

(assert (=> b!1019430 m!939893))

(declare-fun m!939895 () Bool)

(assert (=> b!1019435 m!939895))

(declare-fun m!939897 () Bool)

(assert (=> d!122019 m!939897))

(assert (=> d!122019 m!939853))

(declare-fun m!939899 () Bool)

(assert (=> b!1019427 m!939899))

(assert (=> b!1019349 d!122019))

(declare-fun d!122029 () Bool)

(declare-fun size!31146 (List!21731) Int)

(assert (=> d!122029 (= (length!45 (t!30743 l!996)) (size!31146 (t!30743 l!996)))))

(declare-fun bs!29683 () Bool)

(assert (= bs!29683 d!122029))

(declare-fun m!939901 () Bool)

(assert (=> bs!29683 m!939901))

(assert (=> b!1019349 d!122029))

(declare-fun d!122031 () Bool)

(assert (=> d!122031 (= (length!45 l!996) (size!31146 l!996))))

(declare-fun bs!29684 () Bool)

(assert (= bs!29684 d!122031))

(declare-fun m!939903 () Bool)

(assert (=> bs!29684 m!939903))

(assert (=> b!1019349 d!122031))

(declare-fun d!122033 () Bool)

(assert (=> d!122033 (= (length!45 lt!449649) (size!31146 lt!449649))))

(declare-fun bs!29685 () Bool)

(assert (= bs!29685 d!122033))

(declare-fun m!939905 () Bool)

(assert (=> bs!29685 m!939905))

(assert (=> b!1019349 d!122033))

(declare-fun d!122035 () Bool)

(assert (=> d!122035 (= (length!45 (insertStrictlySorted!360 (t!30743 l!996) key!261 value!172)) (length!45 (t!30743 l!996)))))

(declare-fun lt!449664 () Unit!33254)

(declare-fun choose!1681 (List!21731 (_ BitVec 64) B!1690) Unit!33254)

(assert (=> d!122035 (= lt!449664 (choose!1681 (t!30743 l!996) key!261 value!172))))

(assert (=> d!122035 (= (lemmaAddExistingKeyPreservesSize!5 (t!30743 l!996) key!261 value!172) lt!449664)))

(declare-fun bs!29686 () Bool)

(assert (= bs!29686 d!122035))

(assert (=> bs!29686 m!939839))

(assert (=> bs!29686 m!939839))

(assert (=> bs!29686 m!939841))

(assert (=> bs!29686 m!939847))

(declare-fun m!939911 () Bool)

(assert (=> bs!29686 m!939911))

(assert (=> b!1019349 d!122035))

(declare-fun d!122043 () Bool)

(assert (=> d!122043 (= (length!45 (insertStrictlySorted!360 (t!30743 l!996) key!261 value!172)) (size!31146 (insertStrictlySorted!360 (t!30743 l!996) key!261 value!172)))))

(declare-fun bs!29687 () Bool)

(assert (= bs!29687 d!122043))

(assert (=> bs!29687 m!939839))

(declare-fun m!939913 () Bool)

(assert (=> bs!29687 m!939913))

(assert (=> b!1019349 d!122043))

(declare-fun b!1019456 () Bool)

(declare-fun e!573756 () List!21731)

(declare-fun call!43097 () List!21731)

(assert (=> b!1019456 (= e!573756 call!43097)))

(declare-fun e!573755 () Bool)

(declare-fun lt!449665 () List!21731)

(declare-fun b!1019457 () Bool)

(assert (=> b!1019457 (= e!573755 (contains!5921 lt!449665 (tuple2!15495 key!261 value!172)))))

(declare-fun bm!43094 () Bool)

(declare-fun call!43099 () List!21731)

(assert (=> bm!43094 (= call!43099 call!43097)))

(declare-fun b!1019458 () Bool)

(declare-fun c!103295 () Bool)

(assert (=> b!1019458 (= c!103295 (and ((_ is Cons!21727) l!996) (bvsgt (_1!7757 (h!22925 l!996)) key!261)))))

(declare-fun e!573759 () List!21731)

(assert (=> b!1019458 (= e!573756 e!573759)))

(declare-fun bm!43095 () Bool)

(declare-fun call!43098 () List!21731)

(assert (=> bm!43095 (= call!43097 call!43098)))

(declare-fun e!573757 () List!21731)

(declare-fun c!103298 () Bool)

(declare-fun bm!43096 () Bool)

(assert (=> bm!43096 (= call!43098 ($colon$colon!592 e!573757 (ite c!103298 (h!22925 l!996) (tuple2!15495 key!261 value!172))))))

(declare-fun c!103296 () Bool)

(assert (=> bm!43096 (= c!103296 c!103298)))

(declare-fun d!122045 () Bool)

(assert (=> d!122045 e!573755))

(declare-fun res!683522 () Bool)

(assert (=> d!122045 (=> (not res!683522) (not e!573755))))

(assert (=> d!122045 (= res!683522 (isStrictlySorted!678 lt!449665))))

(declare-fun e!573758 () List!21731)

(assert (=> d!122045 (= lt!449665 e!573758)))

(assert (=> d!122045 (= c!103298 (and ((_ is Cons!21727) l!996) (bvslt (_1!7757 (h!22925 l!996)) key!261)))))

(assert (=> d!122045 (isStrictlySorted!678 l!996)))

(assert (=> d!122045 (= (insertStrictlySorted!360 l!996 key!261 value!172) lt!449665)))

(declare-fun b!1019459 () Bool)

(assert (=> b!1019459 (= e!573759 call!43099)))

(declare-fun b!1019460 () Bool)

(declare-fun res!683521 () Bool)

(assert (=> b!1019460 (=> (not res!683521) (not e!573755))))

(assert (=> b!1019460 (= res!683521 (containsKey!543 lt!449665 key!261))))

(declare-fun b!1019461 () Bool)

(assert (=> b!1019461 (= e!573758 e!573756)))

(declare-fun c!103297 () Bool)

(assert (=> b!1019461 (= c!103297 (and ((_ is Cons!21727) l!996) (= (_1!7757 (h!22925 l!996)) key!261)))))

(declare-fun b!1019462 () Bool)

(assert (=> b!1019462 (= e!573759 call!43099)))

(declare-fun b!1019463 () Bool)

(assert (=> b!1019463 (= e!573757 (ite c!103297 (t!30743 l!996) (ite c!103295 (Cons!21727 (h!22925 l!996) (t!30743 l!996)) Nil!21728)))))

(declare-fun b!1019464 () Bool)

(assert (=> b!1019464 (= e!573758 call!43098)))

(declare-fun b!1019465 () Bool)

(assert (=> b!1019465 (= e!573757 (insertStrictlySorted!360 (t!30743 l!996) key!261 value!172))))

(assert (= (and d!122045 c!103298) b!1019464))

(assert (= (and d!122045 (not c!103298)) b!1019461))

(assert (= (and b!1019461 c!103297) b!1019456))

(assert (= (and b!1019461 (not c!103297)) b!1019458))

(assert (= (and b!1019458 c!103295) b!1019459))

(assert (= (and b!1019458 (not c!103295)) b!1019462))

(assert (= (or b!1019459 b!1019462) bm!43094))

(assert (= (or b!1019456 bm!43094) bm!43095))

(assert (= (or b!1019464 bm!43095) bm!43096))

(assert (= (and bm!43096 c!103296) b!1019465))

(assert (= (and bm!43096 (not c!103296)) b!1019463))

(assert (= (and d!122045 res!683522) b!1019460))

(assert (= (and b!1019460 res!683521) b!1019457))

(declare-fun m!939917 () Bool)

(assert (=> bm!43096 m!939917))

(declare-fun m!939919 () Bool)

(assert (=> b!1019460 m!939919))

(assert (=> b!1019465 m!939839))

(declare-fun m!939921 () Bool)

(assert (=> d!122045 m!939921))

(assert (=> d!122045 m!939855))

(declare-fun m!939923 () Bool)

(assert (=> b!1019457 m!939923))

(assert (=> b!1019351 d!122045))

(declare-fun d!122051 () Bool)

(declare-fun res!683535 () Bool)

(declare-fun e!573775 () Bool)

(assert (=> d!122051 (=> res!683535 e!573775)))

(assert (=> d!122051 (= res!683535 (and ((_ is Cons!21727) (t!30743 l!996)) (= (_1!7757 (h!22925 (t!30743 l!996))) key!261)))))

(assert (=> d!122051 (= (containsKey!543 (t!30743 l!996) key!261) e!573775)))

(declare-fun b!1019486 () Bool)

(declare-fun e!573776 () Bool)

(assert (=> b!1019486 (= e!573775 e!573776)))

(declare-fun res!683536 () Bool)

(assert (=> b!1019486 (=> (not res!683536) (not e!573776))))

(assert (=> b!1019486 (= res!683536 (and (or (not ((_ is Cons!21727) (t!30743 l!996))) (bvsle (_1!7757 (h!22925 (t!30743 l!996))) key!261)) ((_ is Cons!21727) (t!30743 l!996)) (bvslt (_1!7757 (h!22925 (t!30743 l!996))) key!261)))))

(declare-fun b!1019487 () Bool)

(assert (=> b!1019487 (= e!573776 (containsKey!543 (t!30743 (t!30743 l!996)) key!261))))

(assert (= (and d!122051 (not res!683535)) b!1019486))

(assert (= (and b!1019486 res!683536) b!1019487))

(declare-fun m!939941 () Bool)

(assert (=> b!1019487 m!939941))

(assert (=> b!1019352 d!122051))

(declare-fun d!122063 () Bool)

(declare-fun res!683541 () Bool)

(declare-fun e!573789 () Bool)

(assert (=> d!122063 (=> res!683541 e!573789)))

(assert (=> d!122063 (= res!683541 (or ((_ is Nil!21728) (t!30743 l!996)) ((_ is Nil!21728) (t!30743 (t!30743 l!996)))))))

(assert (=> d!122063 (= (isStrictlySorted!678 (t!30743 l!996)) e!573789)))

(declare-fun b!1019508 () Bool)

(declare-fun e!573790 () Bool)

(assert (=> b!1019508 (= e!573789 e!573790)))

(declare-fun res!683542 () Bool)

(assert (=> b!1019508 (=> (not res!683542) (not e!573790))))

(assert (=> b!1019508 (= res!683542 (bvslt (_1!7757 (h!22925 (t!30743 l!996))) (_1!7757 (h!22925 (t!30743 (t!30743 l!996))))))))

(declare-fun b!1019509 () Bool)

(assert (=> b!1019509 (= e!573790 (isStrictlySorted!678 (t!30743 (t!30743 l!996))))))

(assert (= (and d!122063 (not res!683541)) b!1019508))

(assert (= (and b!1019508 res!683542) b!1019509))

(declare-fun m!939947 () Bool)

(assert (=> b!1019509 m!939947))

(assert (=> b!1019348 d!122063))

(declare-fun d!122067 () Bool)

(declare-fun res!683543 () Bool)

(declare-fun e!573792 () Bool)

(assert (=> d!122067 (=> res!683543 e!573792)))

(assert (=> d!122067 (= res!683543 (or ((_ is Nil!21728) l!996) ((_ is Nil!21728) (t!30743 l!996))))))

(assert (=> d!122067 (= (isStrictlySorted!678 l!996) e!573792)))

(declare-fun b!1019511 () Bool)

(declare-fun e!573793 () Bool)

(assert (=> b!1019511 (= e!573792 e!573793)))

(declare-fun res!683544 () Bool)

(assert (=> b!1019511 (=> (not res!683544) (not e!573793))))

(assert (=> b!1019511 (= res!683544 (bvslt (_1!7757 (h!22925 l!996)) (_1!7757 (h!22925 (t!30743 l!996)))))))

(declare-fun b!1019512 () Bool)

(assert (=> b!1019512 (= e!573793 (isStrictlySorted!678 (t!30743 l!996)))))

(assert (= (and d!122067 (not res!683543)) b!1019511))

(assert (= (and b!1019511 res!683544) b!1019512))

(assert (=> b!1019512 m!939853))

(assert (=> start!88798 d!122067))

(declare-fun d!122069 () Bool)

(declare-fun res!683545 () Bool)

(declare-fun e!573794 () Bool)

(assert (=> d!122069 (=> res!683545 e!573794)))

(assert (=> d!122069 (= res!683545 (and ((_ is Cons!21727) l!996) (= (_1!7757 (h!22925 l!996)) key!261)))))

(assert (=> d!122069 (= (containsKey!543 l!996 key!261) e!573794)))

(declare-fun b!1019513 () Bool)

(declare-fun e!573795 () Bool)

(assert (=> b!1019513 (= e!573794 e!573795)))

(declare-fun res!683546 () Bool)

(assert (=> b!1019513 (=> (not res!683546) (not e!573795))))

(assert (=> b!1019513 (= res!683546 (and (or (not ((_ is Cons!21727) l!996)) (bvsle (_1!7757 (h!22925 l!996)) key!261)) ((_ is Cons!21727) l!996) (bvslt (_1!7757 (h!22925 l!996)) key!261)))))

(declare-fun b!1019514 () Bool)

(assert (=> b!1019514 (= e!573795 (containsKey!543 (t!30743 l!996) key!261))))

(assert (= (and d!122069 (not res!683545)) b!1019513))

(assert (= (and b!1019513 res!683546) b!1019514))

(assert (=> b!1019514 m!939837))

(assert (=> b!1019353 d!122069))

(declare-fun b!1019519 () Bool)

(declare-fun e!573798 () Bool)

(declare-fun tp!71162 () Bool)

(assert (=> b!1019519 (= e!573798 (and tp_is_empty!23757 tp!71162))))

(assert (=> b!1019350 (= tp!71153 e!573798)))

(assert (= (and b!1019350 ((_ is Cons!21727) (t!30743 l!996))) b!1019519))

(check-sat (not b!1019512) (not d!122033) (not d!122029) (not b!1019487) (not b!1019519) (not b!1019430) (not d!122045) (not b!1019460) (not b!1019435) (not bm!43096) (not d!122019) (not b!1019509) (not b!1019465) (not d!122035) (not b!1019427) (not d!122031) (not bm!43093) (not d!122043) (not b!1019457) tp_is_empty!23757 (not b!1019514))
(check-sat)
(get-model)

(declare-fun d!122085 () Bool)

(declare-fun res!683557 () Bool)

(declare-fun e!573818 () Bool)

(assert (=> d!122085 (=> res!683557 e!573818)))

(assert (=> d!122085 (= res!683557 (and ((_ is Cons!21727) lt!449665) (= (_1!7757 (h!22925 lt!449665)) key!261)))))

(assert (=> d!122085 (= (containsKey!543 lt!449665 key!261) e!573818)))

(declare-fun b!1019555 () Bool)

(declare-fun e!573819 () Bool)

(assert (=> b!1019555 (= e!573818 e!573819)))

(declare-fun res!683558 () Bool)

(assert (=> b!1019555 (=> (not res!683558) (not e!573819))))

(assert (=> b!1019555 (= res!683558 (and (or (not ((_ is Cons!21727) lt!449665)) (bvsle (_1!7757 (h!22925 lt!449665)) key!261)) ((_ is Cons!21727) lt!449665) (bvslt (_1!7757 (h!22925 lt!449665)) key!261)))))

(declare-fun b!1019556 () Bool)

(assert (=> b!1019556 (= e!573819 (containsKey!543 (t!30743 lt!449665) key!261))))

(assert (= (and d!122085 (not res!683557)) b!1019555))

(assert (= (and b!1019555 res!683558) b!1019556))

(declare-fun m!939977 () Bool)

(assert (=> b!1019556 m!939977))

(assert (=> b!1019460 d!122085))

(declare-fun d!122087 () Bool)

(declare-fun res!683559 () Bool)

(declare-fun e!573820 () Bool)

(assert (=> d!122087 (=> res!683559 e!573820)))

(assert (=> d!122087 (= res!683559 (and ((_ is Cons!21727) lt!449661) (= (_1!7757 (h!22925 lt!449661)) key!261)))))

(assert (=> d!122087 (= (containsKey!543 lt!449661 key!261) e!573820)))

(declare-fun b!1019557 () Bool)

(declare-fun e!573821 () Bool)

(assert (=> b!1019557 (= e!573820 e!573821)))

(declare-fun res!683560 () Bool)

(assert (=> b!1019557 (=> (not res!683560) (not e!573821))))

(assert (=> b!1019557 (= res!683560 (and (or (not ((_ is Cons!21727) lt!449661)) (bvsle (_1!7757 (h!22925 lt!449661)) key!261)) ((_ is Cons!21727) lt!449661) (bvslt (_1!7757 (h!22925 lt!449661)) key!261)))))

(declare-fun b!1019558 () Bool)

(assert (=> b!1019558 (= e!573821 (containsKey!543 (t!30743 lt!449661) key!261))))

(assert (= (and d!122087 (not res!683559)) b!1019557))

(assert (= (and b!1019557 res!683560) b!1019558))

(declare-fun m!939979 () Bool)

(assert (=> b!1019558 m!939979))

(assert (=> b!1019430 d!122087))

(declare-fun d!122089 () Bool)

(declare-fun lt!449679 () Int)

(assert (=> d!122089 (>= lt!449679 0)))

(declare-fun e!573824 () Int)

(assert (=> d!122089 (= lt!449679 e!573824)))

(declare-fun c!103321 () Bool)

(assert (=> d!122089 (= c!103321 ((_ is Nil!21728) lt!449649))))

(assert (=> d!122089 (= (size!31146 lt!449649) lt!449679)))

(declare-fun b!1019563 () Bool)

(assert (=> b!1019563 (= e!573824 0)))

(declare-fun b!1019564 () Bool)

(assert (=> b!1019564 (= e!573824 (+ 1 (size!31146 (t!30743 lt!449649))))))

(assert (= (and d!122089 c!103321) b!1019563))

(assert (= (and d!122089 (not c!103321)) b!1019564))

(declare-fun m!939981 () Bool)

(assert (=> b!1019564 m!939981))

(assert (=> d!122033 d!122089))

(declare-fun d!122091 () Bool)

(declare-fun res!683561 () Bool)

(declare-fun e!573825 () Bool)

(assert (=> d!122091 (=> res!683561 e!573825)))

(assert (=> d!122091 (= res!683561 (and ((_ is Cons!21727) (t!30743 (t!30743 l!996))) (= (_1!7757 (h!22925 (t!30743 (t!30743 l!996)))) key!261)))))

(assert (=> d!122091 (= (containsKey!543 (t!30743 (t!30743 l!996)) key!261) e!573825)))

(declare-fun b!1019565 () Bool)

(declare-fun e!573826 () Bool)

(assert (=> b!1019565 (= e!573825 e!573826)))

(declare-fun res!683562 () Bool)

(assert (=> b!1019565 (=> (not res!683562) (not e!573826))))

(assert (=> b!1019565 (= res!683562 (and (or (not ((_ is Cons!21727) (t!30743 (t!30743 l!996)))) (bvsle (_1!7757 (h!22925 (t!30743 (t!30743 l!996)))) key!261)) ((_ is Cons!21727) (t!30743 (t!30743 l!996))) (bvslt (_1!7757 (h!22925 (t!30743 (t!30743 l!996)))) key!261)))))

(declare-fun b!1019566 () Bool)

(assert (=> b!1019566 (= e!573826 (containsKey!543 (t!30743 (t!30743 (t!30743 l!996))) key!261))))

(assert (= (and d!122091 (not res!683561)) b!1019565))

(assert (= (and b!1019565 res!683562) b!1019566))

(declare-fun m!939983 () Bool)

(assert (=> b!1019566 m!939983))

(assert (=> b!1019487 d!122091))

(declare-fun d!122093 () Bool)

(declare-fun lt!449680 () Int)

(assert (=> d!122093 (>= lt!449680 0)))

(declare-fun e!573827 () Int)

(assert (=> d!122093 (= lt!449680 e!573827)))

(declare-fun c!103322 () Bool)

(assert (=> d!122093 (= c!103322 ((_ is Nil!21728) (insertStrictlySorted!360 (t!30743 l!996) key!261 value!172)))))

(assert (=> d!122093 (= (size!31146 (insertStrictlySorted!360 (t!30743 l!996) key!261 value!172)) lt!449680)))

(declare-fun b!1019567 () Bool)

(assert (=> b!1019567 (= e!573827 0)))

(declare-fun b!1019568 () Bool)

(assert (=> b!1019568 (= e!573827 (+ 1 (size!31146 (t!30743 (insertStrictlySorted!360 (t!30743 l!996) key!261 value!172)))))))

(assert (= (and d!122093 c!103322) b!1019567))

(assert (= (and d!122093 (not c!103322)) b!1019568))

(declare-fun m!939985 () Bool)

(assert (=> b!1019568 m!939985))

(assert (=> d!122043 d!122093))

(declare-fun d!122095 () Bool)

(declare-fun lt!449683 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!492 (List!21731) (InoxSet tuple2!15494))

(assert (=> d!122095 (= lt!449683 (select (content!492 lt!449665) (tuple2!15495 key!261 value!172)))))

(declare-fun e!573833 () Bool)

(assert (=> d!122095 (= lt!449683 e!573833)))

(declare-fun res!683568 () Bool)

(assert (=> d!122095 (=> (not res!683568) (not e!573833))))

(assert (=> d!122095 (= res!683568 ((_ is Cons!21727) lt!449665))))

(assert (=> d!122095 (= (contains!5921 lt!449665 (tuple2!15495 key!261 value!172)) lt!449683)))

(declare-fun b!1019573 () Bool)

(declare-fun e!573832 () Bool)

(assert (=> b!1019573 (= e!573833 e!573832)))

(declare-fun res!683567 () Bool)

(assert (=> b!1019573 (=> res!683567 e!573832)))

(assert (=> b!1019573 (= res!683567 (= (h!22925 lt!449665) (tuple2!15495 key!261 value!172)))))

(declare-fun b!1019574 () Bool)

(assert (=> b!1019574 (= e!573832 (contains!5921 (t!30743 lt!449665) (tuple2!15495 key!261 value!172)))))

(assert (= (and d!122095 res!683568) b!1019573))

(assert (= (and b!1019573 (not res!683567)) b!1019574))

(declare-fun m!939987 () Bool)

(assert (=> d!122095 m!939987))

(declare-fun m!939989 () Bool)

(assert (=> d!122095 m!939989))

(declare-fun m!939991 () Bool)

(assert (=> b!1019574 m!939991))

(assert (=> b!1019457 d!122095))

(declare-fun d!122097 () Bool)

(declare-fun lt!449684 () Bool)

(assert (=> d!122097 (= lt!449684 (select (content!492 lt!449661) (tuple2!15495 key!261 value!172)))))

(declare-fun e!573835 () Bool)

(assert (=> d!122097 (= lt!449684 e!573835)))

(declare-fun res!683570 () Bool)

(assert (=> d!122097 (=> (not res!683570) (not e!573835))))

(assert (=> d!122097 (= res!683570 ((_ is Cons!21727) lt!449661))))

(assert (=> d!122097 (= (contains!5921 lt!449661 (tuple2!15495 key!261 value!172)) lt!449684)))

(declare-fun b!1019575 () Bool)

(declare-fun e!573834 () Bool)

(assert (=> b!1019575 (= e!573835 e!573834)))

(declare-fun res!683569 () Bool)

(assert (=> b!1019575 (=> res!683569 e!573834)))

(assert (=> b!1019575 (= res!683569 (= (h!22925 lt!449661) (tuple2!15495 key!261 value!172)))))

(declare-fun b!1019576 () Bool)

(assert (=> b!1019576 (= e!573834 (contains!5921 (t!30743 lt!449661) (tuple2!15495 key!261 value!172)))))

(assert (= (and d!122097 res!683570) b!1019575))

(assert (= (and b!1019575 (not res!683569)) b!1019576))

(declare-fun m!939993 () Bool)

(assert (=> d!122097 m!939993))

(declare-fun m!939995 () Bool)

(assert (=> d!122097 m!939995))

(declare-fun m!939997 () Bool)

(assert (=> b!1019576 m!939997))

(assert (=> b!1019427 d!122097))

(assert (=> b!1019465 d!122019))

(declare-fun b!1019577 () Bool)

(declare-fun e!573837 () List!21731)

(declare-fun call!43115 () List!21731)

(assert (=> b!1019577 (= e!573837 call!43115)))

(declare-fun lt!449685 () List!21731)

(declare-fun b!1019578 () Bool)

(declare-fun e!573836 () Bool)

(assert (=> b!1019578 (= e!573836 (contains!5921 lt!449685 (tuple2!15495 key!261 value!172)))))

(declare-fun bm!43112 () Bool)

(declare-fun call!43117 () List!21731)

(assert (=> bm!43112 (= call!43117 call!43115)))

(declare-fun b!1019579 () Bool)

(declare-fun c!103323 () Bool)

(assert (=> b!1019579 (= c!103323 (and ((_ is Cons!21727) (t!30743 (t!30743 l!996))) (bvsgt (_1!7757 (h!22925 (t!30743 (t!30743 l!996)))) key!261)))))

(declare-fun e!573840 () List!21731)

(assert (=> b!1019579 (= e!573837 e!573840)))

(declare-fun bm!43113 () Bool)

(declare-fun call!43116 () List!21731)

(assert (=> bm!43113 (= call!43115 call!43116)))

(declare-fun e!573838 () List!21731)

(declare-fun bm!43114 () Bool)

(declare-fun c!103326 () Bool)

(assert (=> bm!43114 (= call!43116 ($colon$colon!592 e!573838 (ite c!103326 (h!22925 (t!30743 (t!30743 l!996))) (tuple2!15495 key!261 value!172))))))

(declare-fun c!103324 () Bool)

(assert (=> bm!43114 (= c!103324 c!103326)))

(declare-fun d!122099 () Bool)

(assert (=> d!122099 e!573836))

(declare-fun res!683572 () Bool)

(assert (=> d!122099 (=> (not res!683572) (not e!573836))))

(assert (=> d!122099 (= res!683572 (isStrictlySorted!678 lt!449685))))

(declare-fun e!573839 () List!21731)

(assert (=> d!122099 (= lt!449685 e!573839)))

(assert (=> d!122099 (= c!103326 (and ((_ is Cons!21727) (t!30743 (t!30743 l!996))) (bvslt (_1!7757 (h!22925 (t!30743 (t!30743 l!996)))) key!261)))))

(assert (=> d!122099 (isStrictlySorted!678 (t!30743 (t!30743 l!996)))))

(assert (=> d!122099 (= (insertStrictlySorted!360 (t!30743 (t!30743 l!996)) key!261 value!172) lt!449685)))

(declare-fun b!1019580 () Bool)

(assert (=> b!1019580 (= e!573840 call!43117)))

(declare-fun b!1019581 () Bool)

(declare-fun res!683571 () Bool)

(assert (=> b!1019581 (=> (not res!683571) (not e!573836))))

(assert (=> b!1019581 (= res!683571 (containsKey!543 lt!449685 key!261))))

(declare-fun b!1019582 () Bool)

(assert (=> b!1019582 (= e!573839 e!573837)))

(declare-fun c!103325 () Bool)

(assert (=> b!1019582 (= c!103325 (and ((_ is Cons!21727) (t!30743 (t!30743 l!996))) (= (_1!7757 (h!22925 (t!30743 (t!30743 l!996)))) key!261)))))

(declare-fun b!1019583 () Bool)

(assert (=> b!1019583 (= e!573840 call!43117)))

(declare-fun b!1019584 () Bool)

(assert (=> b!1019584 (= e!573838 (ite c!103325 (t!30743 (t!30743 (t!30743 l!996))) (ite c!103323 (Cons!21727 (h!22925 (t!30743 (t!30743 l!996))) (t!30743 (t!30743 (t!30743 l!996)))) Nil!21728)))))

(declare-fun b!1019585 () Bool)

(assert (=> b!1019585 (= e!573839 call!43116)))

(declare-fun b!1019586 () Bool)

(assert (=> b!1019586 (= e!573838 (insertStrictlySorted!360 (t!30743 (t!30743 (t!30743 l!996))) key!261 value!172))))

(assert (= (and d!122099 c!103326) b!1019585))

(assert (= (and d!122099 (not c!103326)) b!1019582))

(assert (= (and b!1019582 c!103325) b!1019577))

(assert (= (and b!1019582 (not c!103325)) b!1019579))

(assert (= (and b!1019579 c!103323) b!1019580))

(assert (= (and b!1019579 (not c!103323)) b!1019583))

(assert (= (or b!1019580 b!1019583) bm!43112))

(assert (= (or b!1019577 bm!43112) bm!43113))

(assert (= (or b!1019585 bm!43113) bm!43114))

(assert (= (and bm!43114 c!103324) b!1019586))

(assert (= (and bm!43114 (not c!103324)) b!1019584))

(assert (= (and d!122099 res!683572) b!1019581))

(assert (= (and b!1019581 res!683571) b!1019578))

(declare-fun m!939999 () Bool)

(assert (=> bm!43114 m!939999))

(declare-fun m!940001 () Bool)

(assert (=> b!1019581 m!940001))

(declare-fun m!940003 () Bool)

(assert (=> b!1019586 m!940003))

(declare-fun m!940005 () Bool)

(assert (=> d!122099 m!940005))

(assert (=> d!122099 m!939947))

(declare-fun m!940007 () Bool)

(assert (=> b!1019578 m!940007))

(assert (=> b!1019435 d!122099))

(declare-fun d!122101 () Bool)

(declare-fun lt!449686 () Int)

(assert (=> d!122101 (>= lt!449686 0)))

(declare-fun e!573841 () Int)

(assert (=> d!122101 (= lt!449686 e!573841)))

(declare-fun c!103327 () Bool)

(assert (=> d!122101 (= c!103327 ((_ is Nil!21728) (t!30743 l!996)))))

(assert (=> d!122101 (= (size!31146 (t!30743 l!996)) lt!449686)))

(declare-fun b!1019587 () Bool)

(assert (=> b!1019587 (= e!573841 0)))

(declare-fun b!1019588 () Bool)

(assert (=> b!1019588 (= e!573841 (+ 1 (size!31146 (t!30743 (t!30743 l!996)))))))

(assert (= (and d!122101 c!103327) b!1019587))

(assert (= (and d!122101 (not c!103327)) b!1019588))

(declare-fun m!940009 () Bool)

(assert (=> b!1019588 m!940009))

(assert (=> d!122029 d!122101))

(declare-fun d!122103 () Bool)

(declare-fun res!683573 () Bool)

(declare-fun e!573842 () Bool)

(assert (=> d!122103 (=> res!683573 e!573842)))

(assert (=> d!122103 (= res!683573 (or ((_ is Nil!21728) (t!30743 (t!30743 l!996))) ((_ is Nil!21728) (t!30743 (t!30743 (t!30743 l!996))))))))

(assert (=> d!122103 (= (isStrictlySorted!678 (t!30743 (t!30743 l!996))) e!573842)))

(declare-fun b!1019589 () Bool)

(declare-fun e!573843 () Bool)

(assert (=> b!1019589 (= e!573842 e!573843)))

(declare-fun res!683574 () Bool)

(assert (=> b!1019589 (=> (not res!683574) (not e!573843))))

(assert (=> b!1019589 (= res!683574 (bvslt (_1!7757 (h!22925 (t!30743 (t!30743 l!996)))) (_1!7757 (h!22925 (t!30743 (t!30743 (t!30743 l!996)))))))))

(declare-fun b!1019590 () Bool)

(assert (=> b!1019590 (= e!573843 (isStrictlySorted!678 (t!30743 (t!30743 (t!30743 l!996)))))))

(assert (= (and d!122103 (not res!683573)) b!1019589))

(assert (= (and b!1019589 res!683574) b!1019590))

(declare-fun m!940011 () Bool)

(assert (=> b!1019590 m!940011))

(assert (=> b!1019509 d!122103))

(assert (=> d!122035 d!122043))

(assert (=> d!122035 d!122019))

(assert (=> d!122035 d!122029))

(declare-fun d!122105 () Bool)

(assert (=> d!122105 (= (length!45 (insertStrictlySorted!360 (t!30743 l!996) key!261 value!172)) (length!45 (t!30743 l!996)))))

(assert (=> d!122105 true))

(declare-fun _$10!25 () Unit!33254)

(assert (=> d!122105 (= (choose!1681 (t!30743 l!996) key!261 value!172) _$10!25)))

(declare-fun bs!29698 () Bool)

(assert (= bs!29698 d!122105))

(assert (=> bs!29698 m!939839))

(assert (=> bs!29698 m!939839))

(assert (=> bs!29698 m!939841))

(assert (=> bs!29698 m!939847))

(assert (=> d!122035 d!122105))

(declare-fun d!122107 () Bool)

(declare-fun lt!449687 () Int)

(assert (=> d!122107 (>= lt!449687 0)))

(declare-fun e!573844 () Int)

(assert (=> d!122107 (= lt!449687 e!573844)))

(declare-fun c!103328 () Bool)

(assert (=> d!122107 (= c!103328 ((_ is Nil!21728) l!996))))

(assert (=> d!122107 (= (size!31146 l!996) lt!449687)))

(declare-fun b!1019591 () Bool)

(assert (=> b!1019591 (= e!573844 0)))

(declare-fun b!1019592 () Bool)

(assert (=> b!1019592 (= e!573844 (+ 1 (size!31146 (t!30743 l!996))))))

(assert (= (and d!122107 c!103328) b!1019591))

(assert (= (and d!122107 (not c!103328)) b!1019592))

(assert (=> b!1019592 m!939901))

(assert (=> d!122031 d!122107))

(assert (=> b!1019512 d!122063))

(declare-fun d!122109 () Bool)

(assert (=> d!122109 (= ($colon$colon!592 e!573757 (ite c!103298 (h!22925 l!996) (tuple2!15495 key!261 value!172))) (Cons!21727 (ite c!103298 (h!22925 l!996) (tuple2!15495 key!261 value!172)) e!573757))))

(assert (=> bm!43096 d!122109))

(declare-fun d!122111 () Bool)

(assert (=> d!122111 (= ($colon$colon!592 e!573732 (ite c!103294 (h!22925 (t!30743 l!996)) (tuple2!15495 key!261 value!172))) (Cons!21727 (ite c!103294 (h!22925 (t!30743 l!996)) (tuple2!15495 key!261 value!172)) e!573732))))

(assert (=> bm!43093 d!122111))

(declare-fun d!122113 () Bool)

(declare-fun res!683575 () Bool)

(declare-fun e!573845 () Bool)

(assert (=> d!122113 (=> res!683575 e!573845)))

(assert (=> d!122113 (= res!683575 (or ((_ is Nil!21728) lt!449665) ((_ is Nil!21728) (t!30743 lt!449665))))))

(assert (=> d!122113 (= (isStrictlySorted!678 lt!449665) e!573845)))

(declare-fun b!1019593 () Bool)

(declare-fun e!573846 () Bool)

(assert (=> b!1019593 (= e!573845 e!573846)))

(declare-fun res!683576 () Bool)

(assert (=> b!1019593 (=> (not res!683576) (not e!573846))))

(assert (=> b!1019593 (= res!683576 (bvslt (_1!7757 (h!22925 lt!449665)) (_1!7757 (h!22925 (t!30743 lt!449665)))))))

(declare-fun b!1019594 () Bool)

(assert (=> b!1019594 (= e!573846 (isStrictlySorted!678 (t!30743 lt!449665)))))

(assert (= (and d!122113 (not res!683575)) b!1019593))

(assert (= (and b!1019593 res!683576) b!1019594))

(declare-fun m!940013 () Bool)

(assert (=> b!1019594 m!940013))

(assert (=> d!122045 d!122113))

(assert (=> d!122045 d!122067))

(declare-fun d!122115 () Bool)

(declare-fun res!683577 () Bool)

(declare-fun e!573847 () Bool)

(assert (=> d!122115 (=> res!683577 e!573847)))

(assert (=> d!122115 (= res!683577 (or ((_ is Nil!21728) lt!449661) ((_ is Nil!21728) (t!30743 lt!449661))))))

(assert (=> d!122115 (= (isStrictlySorted!678 lt!449661) e!573847)))

(declare-fun b!1019595 () Bool)

(declare-fun e!573848 () Bool)

(assert (=> b!1019595 (= e!573847 e!573848)))

(declare-fun res!683578 () Bool)

(assert (=> b!1019595 (=> (not res!683578) (not e!573848))))

(assert (=> b!1019595 (= res!683578 (bvslt (_1!7757 (h!22925 lt!449661)) (_1!7757 (h!22925 (t!30743 lt!449661)))))))

(declare-fun b!1019596 () Bool)

(assert (=> b!1019596 (= e!573848 (isStrictlySorted!678 (t!30743 lt!449661)))))

(assert (= (and d!122115 (not res!683577)) b!1019595))

(assert (= (and b!1019595 res!683578) b!1019596))

(declare-fun m!940015 () Bool)

(assert (=> b!1019596 m!940015))

(assert (=> d!122019 d!122115))

(assert (=> d!122019 d!122063))

(assert (=> b!1019514 d!122051))

(declare-fun b!1019597 () Bool)

(declare-fun e!573849 () Bool)

(declare-fun tp!71166 () Bool)

(assert (=> b!1019597 (= e!573849 (and tp_is_empty!23757 tp!71166))))

(assert (=> b!1019519 (= tp!71162 e!573849)))

(assert (= (and b!1019519 ((_ is Cons!21727) (t!30743 (t!30743 l!996)))) b!1019597))

(check-sat (not d!122105) (not b!1019578) (not b!1019556) (not d!122097) (not b!1019590) (not bm!43114) (not b!1019586) (not d!122095) (not b!1019592) (not b!1019558) (not b!1019576) (not d!122099) (not b!1019597) (not b!1019588) (not b!1019594) (not b!1019581) (not b!1019568) (not b!1019564) tp_is_empty!23757 (not b!1019566) (not b!1019574) (not b!1019596))
(check-sat)
