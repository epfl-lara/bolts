; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!497986 () Bool)

(assert start!497986)

(declare-fun b!4814572 () Bool)

(declare-fun res!2047904 () Bool)

(declare-fun e!3008044 () Bool)

(assert (=> b!4814572 (=> (not res!2047904) (not e!3008044))))

(declare-datatypes ((K!16322 0))(
  ( (K!16323 (val!21363 Int)) )
))
(declare-datatypes ((V!16568 0))(
  ( (V!16569 (val!21364 Int)) )
))
(declare-datatypes ((tuple2!57662 0))(
  ( (tuple2!57663 (_1!32125 K!16322) (_2!32125 V!16568)) )
))
(declare-datatypes ((List!54801 0))(
  ( (Nil!54677) (Cons!54677 (h!61109 tuple2!57662) (t!362297 List!54801)) )
))
(declare-datatypes ((tuple2!57664 0))(
  ( (tuple2!57665 (_1!32126 (_ BitVec 64)) (_2!32126 List!54801)) )
))
(declare-datatypes ((List!54802 0))(
  ( (Nil!54678) (Cons!54678 (h!61110 tuple2!57664) (t!362298 List!54802)) )
))
(declare-datatypes ((ListLongMap!5729 0))(
  ( (ListLongMap!5730 (toList!7249 List!54802)) )
))
(declare-fun lm!1254 () ListLongMap!5729)

(declare-fun key!2670 () K!16322)

(declare-datatypes ((ListMap!6663 0))(
  ( (ListMap!6664 (toList!7250 List!54801)) )
))
(declare-fun contains!18458 (ListMap!6663 K!16322) Bool)

(declare-fun extractMap!2583 (List!54802) ListMap!6663)

(assert (=> b!4814572 (= res!2047904 (contains!18458 (extractMap!2583 (toList!7249 lm!1254)) key!2670))))

(declare-fun b!4814573 () Bool)

(declare-fun e!3008045 () Bool)

(assert (=> b!4814573 (= e!3008044 (not e!3008045))))

(declare-fun res!2047905 () Bool)

(assert (=> b!4814573 (=> res!2047905 e!3008045)))

(declare-fun lt!1965452 () List!54801)

(declare-fun lt!1965453 () (_ BitVec 64))

(declare-fun contains!18459 (List!54802 tuple2!57664) Bool)

(assert (=> b!4814573 (= res!2047905 (contains!18459 (toList!7249 lm!1254) (tuple2!57665 lt!1965453 lt!1965452)))))

(declare-fun apply!13238 (ListLongMap!5729 (_ BitVec 64)) List!54801)

(assert (=> b!4814573 (= lt!1965452 (apply!13238 lm!1254 lt!1965453))))

(declare-fun contains!18460 (ListLongMap!5729 (_ BitVec 64)) Bool)

(assert (=> b!4814573 (contains!18460 lm!1254 lt!1965453)))

(declare-datatypes ((Hashable!7133 0))(
  ( (HashableExt!7132 (__x!33408 Int)) )
))
(declare-fun hashF!938 () Hashable!7133)

(declare-fun hash!5200 (Hashable!7133 K!16322) (_ BitVec 64))

(assert (=> b!4814573 (= lt!1965453 (hash!5200 hashF!938 key!2670))))

(declare-datatypes ((Unit!141814 0))(
  ( (Unit!141815) )
))
(declare-fun lt!1965454 () Unit!141814)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1071 (ListLongMap!5729 K!16322 Hashable!7133) Unit!141814)

(assert (=> b!4814573 (= lt!1965454 (lemmaInGenMapThenLongMapContainsHash!1071 lm!1254 key!2670 hashF!938))))

(declare-fun b!4814574 () Bool)

(declare-fun e!3008042 () Bool)

(declare-datatypes ((Option!13382 0))(
  ( (None!13381) (Some!13381 (v!49024 List!54801)) )
))
(declare-fun lt!1965456 () Option!13382)

(assert (=> b!4814574 (= e!3008042 (= lt!1965456 (Some!13381 lt!1965452)))))

(declare-fun b!4814575 () Bool)

(declare-fun e!3008043 () Bool)

(declare-fun tp!1361734 () Bool)

(assert (=> b!4814575 (= e!3008043 tp!1361734)))

(declare-fun b!4814576 () Bool)

(declare-fun res!2047903 () Bool)

(assert (=> b!4814576 (=> (not res!2047903) (not e!3008044))))

(declare-fun allKeysSameHashInMap!2449 (ListLongMap!5729 Hashable!7133) Bool)

(assert (=> b!4814576 (= res!2047903 (allKeysSameHashInMap!2449 lm!1254 hashF!938))))

(declare-fun b!4814577 () Bool)

(assert (=> b!4814577 (= e!3008045 e!3008042)))

(declare-fun res!2047902 () Bool)

(assert (=> b!4814577 (=> (not res!2047902) (not e!3008042))))

(declare-fun isStrictlySorted!944 (List!54802) Bool)

(assert (=> b!4814577 (= res!2047902 (isStrictlySorted!944 (toList!7249 lm!1254)))))

(declare-fun isDefined!10519 (Option!13382) Bool)

(assert (=> b!4814577 (isDefined!10519 lt!1965456)))

(declare-fun getValueByKey!2545 (List!54802 (_ BitVec 64)) Option!13382)

(assert (=> b!4814577 (= lt!1965456 (getValueByKey!2545 (toList!7249 lm!1254) lt!1965453))))

(declare-fun lt!1965451 () Unit!141814)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2331 (List!54802 (_ BitVec 64)) Unit!141814)

(assert (=> b!4814577 (= lt!1965451 (lemmaContainsKeyImpliesGetValueByKeyDefined!2331 (toList!7249 lm!1254) lt!1965453))))

(declare-fun containsKey!4215 (List!54802 (_ BitVec 64)) Bool)

(assert (=> b!4814577 (containsKey!4215 (toList!7249 lm!1254) lt!1965453)))

(declare-fun lt!1965455 () Unit!141814)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!322 (List!54802 (_ BitVec 64)) Unit!141814)

(assert (=> b!4814577 (= lt!1965455 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!322 (toList!7249 lm!1254) lt!1965453))))

(declare-fun res!2047906 () Bool)

(assert (=> start!497986 (=> (not res!2047906) (not e!3008044))))

(declare-fun lambda!234157 () Int)

(declare-fun forall!12437 (List!54802 Int) Bool)

(assert (=> start!497986 (= res!2047906 (forall!12437 (toList!7249 lm!1254) lambda!234157))))

(assert (=> start!497986 e!3008044))

(declare-fun inv!70223 (ListLongMap!5729) Bool)

(assert (=> start!497986 (and (inv!70223 lm!1254) e!3008043)))

(assert (=> start!497986 true))

(declare-fun tp_is_empty!34135 () Bool)

(assert (=> start!497986 tp_is_empty!34135))

(assert (= (and start!497986 res!2047906) b!4814576))

(assert (= (and b!4814576 res!2047903) b!4814572))

(assert (= (and b!4814572 res!2047904) b!4814573))

(assert (= (and b!4814573 (not res!2047905)) b!4814577))

(assert (= (and b!4814577 res!2047902) b!4814574))

(assert (= start!497986 b!4814575))

(declare-fun m!5800446 () Bool)

(assert (=> b!4814573 m!5800446))

(declare-fun m!5800448 () Bool)

(assert (=> b!4814573 m!5800448))

(declare-fun m!5800450 () Bool)

(assert (=> b!4814573 m!5800450))

(declare-fun m!5800452 () Bool)

(assert (=> b!4814573 m!5800452))

(declare-fun m!5800454 () Bool)

(assert (=> b!4814573 m!5800454))

(declare-fun m!5800456 () Bool)

(assert (=> start!497986 m!5800456))

(declare-fun m!5800458 () Bool)

(assert (=> start!497986 m!5800458))

(declare-fun m!5800460 () Bool)

(assert (=> b!4814572 m!5800460))

(assert (=> b!4814572 m!5800460))

(declare-fun m!5800462 () Bool)

(assert (=> b!4814572 m!5800462))

(declare-fun m!5800464 () Bool)

(assert (=> b!4814576 m!5800464))

(declare-fun m!5800466 () Bool)

(assert (=> b!4814577 m!5800466))

(declare-fun m!5800468 () Bool)

(assert (=> b!4814577 m!5800468))

(declare-fun m!5800470 () Bool)

(assert (=> b!4814577 m!5800470))

(declare-fun m!5800472 () Bool)

(assert (=> b!4814577 m!5800472))

(declare-fun m!5800474 () Bool)

(assert (=> b!4814577 m!5800474))

(declare-fun m!5800476 () Bool)

(assert (=> b!4814577 m!5800476))

(push 1)

(assert (not b!4814572))

(assert (not b!4814576))

(assert (not b!4814573))

(assert (not b!4814575))

(assert (not b!4814577))

(assert (not start!497986))

(assert tp_is_empty!34135)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1541008 () Bool)

(declare-fun isEmpty!29566 (Option!13382) Bool)

(assert (=> d!1541008 (= (isDefined!10519 lt!1965456) (not (isEmpty!29566 lt!1965456)))))

(declare-fun bs!1160373 () Bool)

(assert (= bs!1160373 d!1541008))

(declare-fun m!5800510 () Bool)

(assert (=> bs!1160373 m!5800510))

(assert (=> b!4814577 d!1541008))

(declare-fun d!1541010 () Bool)

(declare-fun res!2047926 () Bool)

(declare-fun e!3008062 () Bool)

(assert (=> d!1541010 (=> res!2047926 e!3008062)))

(assert (=> d!1541010 (= res!2047926 (or (is-Nil!54678 (toList!7249 lm!1254)) (is-Nil!54678 (t!362298 (toList!7249 lm!1254)))))))

(assert (=> d!1541010 (= (isStrictlySorted!944 (toList!7249 lm!1254)) e!3008062)))

(declare-fun b!4814600 () Bool)

(declare-fun e!3008063 () Bool)

(assert (=> b!4814600 (= e!3008062 e!3008063)))

(declare-fun res!2047927 () Bool)

(assert (=> b!4814600 (=> (not res!2047927) (not e!3008063))))

(assert (=> b!4814600 (= res!2047927 (bvslt (_1!32126 (h!61110 (toList!7249 lm!1254))) (_1!32126 (h!61110 (t!362298 (toList!7249 lm!1254))))))))

(declare-fun b!4814601 () Bool)

(assert (=> b!4814601 (= e!3008063 (isStrictlySorted!944 (t!362298 (toList!7249 lm!1254))))))

(assert (= (and d!1541010 (not res!2047926)) b!4814600))

(assert (= (and b!4814600 res!2047927) b!4814601))

(declare-fun m!5800512 () Bool)

(assert (=> b!4814601 m!5800512))

(assert (=> b!4814577 d!1541010))

(declare-fun d!1541012 () Bool)

(declare-fun c!820579 () Bool)

(assert (=> d!1541012 (= c!820579 (and (is-Cons!54678 (toList!7249 lm!1254)) (= (_1!32126 (h!61110 (toList!7249 lm!1254))) lt!1965453)))))

(declare-fun e!3008068 () Option!13382)

(assert (=> d!1541012 (= (getValueByKey!2545 (toList!7249 lm!1254) lt!1965453) e!3008068)))

(declare-fun b!4814613 () Bool)

(declare-fun e!3008069 () Option!13382)

(assert (=> b!4814613 (= e!3008069 None!13381)))

(declare-fun b!4814610 () Bool)

(assert (=> b!4814610 (= e!3008068 (Some!13381 (_2!32126 (h!61110 (toList!7249 lm!1254)))))))

(declare-fun b!4814611 () Bool)

(assert (=> b!4814611 (= e!3008068 e!3008069)))

(declare-fun c!820580 () Bool)

(assert (=> b!4814611 (= c!820580 (and (is-Cons!54678 (toList!7249 lm!1254)) (not (= (_1!32126 (h!61110 (toList!7249 lm!1254))) lt!1965453))))))

(declare-fun b!4814612 () Bool)

(assert (=> b!4814612 (= e!3008069 (getValueByKey!2545 (t!362298 (toList!7249 lm!1254)) lt!1965453))))

(assert (= (and d!1541012 c!820579) b!4814610))

(assert (= (and d!1541012 (not c!820579)) b!4814611))

(assert (= (and b!4814611 c!820580) b!4814612))

(assert (= (and b!4814611 (not c!820580)) b!4814613))

(declare-fun m!5800514 () Bool)

(assert (=> b!4814612 m!5800514))

(assert (=> b!4814577 d!1541012))

(declare-fun d!1541014 () Bool)

(declare-fun res!2047932 () Bool)

(declare-fun e!3008074 () Bool)

(assert (=> d!1541014 (=> res!2047932 e!3008074)))

(assert (=> d!1541014 (= res!2047932 (and (is-Cons!54678 (toList!7249 lm!1254)) (= (_1!32126 (h!61110 (toList!7249 lm!1254))) lt!1965453)))))

(assert (=> d!1541014 (= (containsKey!4215 (toList!7249 lm!1254) lt!1965453) e!3008074)))

(declare-fun b!4814618 () Bool)

(declare-fun e!3008075 () Bool)

(assert (=> b!4814618 (= e!3008074 e!3008075)))

(declare-fun res!2047933 () Bool)

(assert (=> b!4814618 (=> (not res!2047933) (not e!3008075))))

(assert (=> b!4814618 (= res!2047933 (and (or (not (is-Cons!54678 (toList!7249 lm!1254))) (bvsle (_1!32126 (h!61110 (toList!7249 lm!1254))) lt!1965453)) (is-Cons!54678 (toList!7249 lm!1254)) (bvslt (_1!32126 (h!61110 (toList!7249 lm!1254))) lt!1965453)))))

(declare-fun b!4814619 () Bool)

(assert (=> b!4814619 (= e!3008075 (containsKey!4215 (t!362298 (toList!7249 lm!1254)) lt!1965453))))

(assert (= (and d!1541014 (not res!2047932)) b!4814618))

(assert (= (and b!4814618 res!2047933) b!4814619))

(declare-fun m!5800516 () Bool)

(assert (=> b!4814619 m!5800516))

(assert (=> b!4814577 d!1541014))

(declare-fun d!1541016 () Bool)

(assert (=> d!1541016 (containsKey!4215 (toList!7249 lm!1254) lt!1965453)))

(declare-fun lt!1965477 () Unit!141814)

(declare-fun choose!34901 (List!54802 (_ BitVec 64)) Unit!141814)

(assert (=> d!1541016 (= lt!1965477 (choose!34901 (toList!7249 lm!1254) lt!1965453))))

(declare-fun e!3008078 () Bool)

(assert (=> d!1541016 e!3008078))

(declare-fun res!2047936 () Bool)

(assert (=> d!1541016 (=> (not res!2047936) (not e!3008078))))

(assert (=> d!1541016 (= res!2047936 (isStrictlySorted!944 (toList!7249 lm!1254)))))

(assert (=> d!1541016 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!322 (toList!7249 lm!1254) lt!1965453) lt!1965477)))

(declare-fun b!4814622 () Bool)

(assert (=> b!4814622 (= e!3008078 (isDefined!10519 (getValueByKey!2545 (toList!7249 lm!1254) lt!1965453)))))

(assert (= (and d!1541016 res!2047936) b!4814622))

(assert (=> d!1541016 m!5800474))

(declare-fun m!5800518 () Bool)

(assert (=> d!1541016 m!5800518))

(assert (=> d!1541016 m!5800468))

(assert (=> b!4814622 m!5800476))

(assert (=> b!4814622 m!5800476))

(declare-fun m!5800520 () Bool)

(assert (=> b!4814622 m!5800520))

(assert (=> b!4814577 d!1541016))

(declare-fun d!1541018 () Bool)

(assert (=> d!1541018 (isDefined!10519 (getValueByKey!2545 (toList!7249 lm!1254) lt!1965453))))

(declare-fun lt!1965480 () Unit!141814)

(declare-fun choose!34902 (List!54802 (_ BitVec 64)) Unit!141814)

(assert (=> d!1541018 (= lt!1965480 (choose!34902 (toList!7249 lm!1254) lt!1965453))))

(declare-fun e!3008081 () Bool)

(assert (=> d!1541018 e!3008081))

(declare-fun res!2047939 () Bool)

(assert (=> d!1541018 (=> (not res!2047939) (not e!3008081))))

(assert (=> d!1541018 (= res!2047939 (isStrictlySorted!944 (toList!7249 lm!1254)))))

(assert (=> d!1541018 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2331 (toList!7249 lm!1254) lt!1965453) lt!1965480)))

(declare-fun b!4814625 () Bool)

(assert (=> b!4814625 (= e!3008081 (containsKey!4215 (toList!7249 lm!1254) lt!1965453))))

(assert (= (and d!1541018 res!2047939) b!4814625))

(assert (=> d!1541018 m!5800476))

(assert (=> d!1541018 m!5800476))

(assert (=> d!1541018 m!5800520))

(declare-fun m!5800522 () Bool)

(assert (=> d!1541018 m!5800522))

(assert (=> d!1541018 m!5800468))

(assert (=> b!4814625 m!5800474))

(assert (=> b!4814577 d!1541018))

(declare-fun bm!335924 () Bool)

(declare-fun call!335929 () Bool)

(declare-datatypes ((List!54805 0))(
  ( (Nil!54681) (Cons!54681 (h!61113 K!16322) (t!362301 List!54805)) )
))
(declare-fun e!3008097 () List!54805)

(declare-fun contains!18464 (List!54805 K!16322) Bool)

(assert (=> bm!335924 (= call!335929 (contains!18464 e!3008097 key!2670))))

(declare-fun c!820587 () Bool)

(declare-fun c!820589 () Bool)

(assert (=> bm!335924 (= c!820587 c!820589)))

(declare-fun b!4814644 () Bool)

(declare-fun e!3008096 () Unit!141814)

(declare-fun e!3008099 () Unit!141814)

(assert (=> b!4814644 (= e!3008096 e!3008099)))

(declare-fun c!820588 () Bool)

(assert (=> b!4814644 (= c!820588 call!335929)))

(declare-fun b!4814645 () Bool)

(declare-fun e!3008098 () Bool)

(declare-fun e!3008095 () Bool)

(assert (=> b!4814645 (= e!3008098 e!3008095)))

(declare-fun res!2047947 () Bool)

(assert (=> b!4814645 (=> (not res!2047947) (not e!3008095))))

(declare-datatypes ((Option!13384 0))(
  ( (None!13383) (Some!13383 (v!49027 V!16568)) )
))
(declare-fun isDefined!10521 (Option!13384) Bool)

(declare-fun getValueByKey!2547 (List!54801 K!16322) Option!13384)

(assert (=> b!4814645 (= res!2047947 (isDefined!10521 (getValueByKey!2547 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670)))))

(declare-fun b!4814646 () Bool)

(declare-fun e!3008094 () Bool)

(declare-fun keys!20063 (ListMap!6663) List!54805)

(assert (=> b!4814646 (= e!3008094 (not (contains!18464 (keys!20063 (extractMap!2583 (toList!7249 lm!1254))) key!2670)))))

(declare-fun b!4814647 () Bool)

(declare-fun lt!1965499 () Unit!141814)

(assert (=> b!4814647 (= e!3008096 lt!1965499)))

(declare-fun lt!1965500 () Unit!141814)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2333 (List!54801 K!16322) Unit!141814)

(assert (=> b!4814647 (= lt!1965500 (lemmaContainsKeyImpliesGetValueByKeyDefined!2333 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670))))

(assert (=> b!4814647 (isDefined!10521 (getValueByKey!2547 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670))))

(declare-fun lt!1965501 () Unit!141814)

(assert (=> b!4814647 (= lt!1965501 lt!1965500)))

(declare-fun lemmaInListThenGetKeysListContains!1125 (List!54801 K!16322) Unit!141814)

(assert (=> b!4814647 (= lt!1965499 (lemmaInListThenGetKeysListContains!1125 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670))))

(assert (=> b!4814647 call!335929))

(declare-fun b!4814648 () Bool)

(declare-fun Unit!141818 () Unit!141814)

(assert (=> b!4814648 (= e!3008099 Unit!141818)))

(declare-fun b!4814650 () Bool)

(assert (=> b!4814650 (= e!3008095 (contains!18464 (keys!20063 (extractMap!2583 (toList!7249 lm!1254))) key!2670))))

(declare-fun d!1541020 () Bool)

(assert (=> d!1541020 e!3008098))

(declare-fun res!2047948 () Bool)

(assert (=> d!1541020 (=> res!2047948 e!3008098)))

(assert (=> d!1541020 (= res!2047948 e!3008094)))

(declare-fun res!2047946 () Bool)

(assert (=> d!1541020 (=> (not res!2047946) (not e!3008094))))

(declare-fun lt!1965504 () Bool)

(assert (=> d!1541020 (= res!2047946 (not lt!1965504))))

(declare-fun lt!1965497 () Bool)

(assert (=> d!1541020 (= lt!1965504 lt!1965497)))

(declare-fun lt!1965503 () Unit!141814)

(assert (=> d!1541020 (= lt!1965503 e!3008096)))

(assert (=> d!1541020 (= c!820589 lt!1965497)))

(declare-fun containsKey!4217 (List!54801 K!16322) Bool)

(assert (=> d!1541020 (= lt!1965497 (containsKey!4217 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670))))

(assert (=> d!1541020 (= (contains!18458 (extractMap!2583 (toList!7249 lm!1254)) key!2670) lt!1965504)))

(declare-fun b!4814649 () Bool)

(assert (=> b!4814649 false))

(declare-fun lt!1965498 () Unit!141814)

(declare-fun lt!1965502 () Unit!141814)

(assert (=> b!4814649 (= lt!1965498 lt!1965502)))

(assert (=> b!4814649 (containsKey!4217 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670)))

(declare-fun lemmaInGetKeysListThenContainsKey!1130 (List!54801 K!16322) Unit!141814)

(assert (=> b!4814649 (= lt!1965502 (lemmaInGetKeysListThenContainsKey!1130 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670))))

(declare-fun Unit!141819 () Unit!141814)

(assert (=> b!4814649 (= e!3008099 Unit!141819)))

(declare-fun b!4814651 () Bool)

(assert (=> b!4814651 (= e!3008097 (keys!20063 (extractMap!2583 (toList!7249 lm!1254))))))

(declare-fun b!4814652 () Bool)

(declare-fun getKeysList!1130 (List!54801) List!54805)

(assert (=> b!4814652 (= e!3008097 (getKeysList!1130 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))))))

(assert (= (and d!1541020 c!820589) b!4814647))

(assert (= (and d!1541020 (not c!820589)) b!4814644))

(assert (= (and b!4814644 c!820588) b!4814649))

(assert (= (and b!4814644 (not c!820588)) b!4814648))

(assert (= (or b!4814647 b!4814644) bm!335924))

(assert (= (and bm!335924 c!820587) b!4814652))

(assert (= (and bm!335924 (not c!820587)) b!4814651))

(assert (= (and d!1541020 res!2047946) b!4814646))

(assert (= (and d!1541020 (not res!2047948)) b!4814645))

(assert (= (and b!4814645 res!2047947) b!4814650))

(assert (=> b!4814646 m!5800460))

(declare-fun m!5800524 () Bool)

(assert (=> b!4814646 m!5800524))

(assert (=> b!4814646 m!5800524))

(declare-fun m!5800526 () Bool)

(assert (=> b!4814646 m!5800526))

(assert (=> b!4814650 m!5800460))

(assert (=> b!4814650 m!5800524))

(assert (=> b!4814650 m!5800524))

(assert (=> b!4814650 m!5800526))

(declare-fun m!5800528 () Bool)

(assert (=> bm!335924 m!5800528))

(declare-fun m!5800530 () Bool)

(assert (=> b!4814645 m!5800530))

(assert (=> b!4814645 m!5800530))

(declare-fun m!5800532 () Bool)

(assert (=> b!4814645 m!5800532))

(declare-fun m!5800534 () Bool)

(assert (=> d!1541020 m!5800534))

(declare-fun m!5800536 () Bool)

(assert (=> b!4814652 m!5800536))

(declare-fun m!5800538 () Bool)

(assert (=> b!4814647 m!5800538))

(assert (=> b!4814647 m!5800530))

(assert (=> b!4814647 m!5800530))

(assert (=> b!4814647 m!5800532))

(declare-fun m!5800540 () Bool)

(assert (=> b!4814647 m!5800540))

(assert (=> b!4814651 m!5800460))

(assert (=> b!4814651 m!5800524))

(assert (=> b!4814649 m!5800534))

(declare-fun m!5800542 () Bool)

(assert (=> b!4814649 m!5800542))

(assert (=> b!4814572 d!1541020))

(declare-fun bs!1160374 () Bool)

(declare-fun d!1541024 () Bool)

(assert (= bs!1160374 (and d!1541024 start!497986)))

(declare-fun lambda!234163 () Int)

(assert (=> bs!1160374 (= lambda!234163 lambda!234157)))

(declare-fun lt!1965507 () ListMap!6663)

(declare-fun invariantList!1784 (List!54801) Bool)

(assert (=> d!1541024 (invariantList!1784 (toList!7250 lt!1965507))))

(declare-fun e!3008102 () ListMap!6663)

(assert (=> d!1541024 (= lt!1965507 e!3008102)))

(declare-fun c!820592 () Bool)

(assert (=> d!1541024 (= c!820592 (is-Cons!54678 (toList!7249 lm!1254)))))

(assert (=> d!1541024 (forall!12437 (toList!7249 lm!1254) lambda!234163)))

(assert (=> d!1541024 (= (extractMap!2583 (toList!7249 lm!1254)) lt!1965507)))

(declare-fun b!4814657 () Bool)

(declare-fun addToMapMapFromBucket!1761 (List!54801 ListMap!6663) ListMap!6663)

(assert (=> b!4814657 (= e!3008102 (addToMapMapFromBucket!1761 (_2!32126 (h!61110 (toList!7249 lm!1254))) (extractMap!2583 (t!362298 (toList!7249 lm!1254)))))))

(declare-fun b!4814658 () Bool)

(assert (=> b!4814658 (= e!3008102 (ListMap!6664 Nil!54677))))

(assert (= (and d!1541024 c!820592) b!4814657))

(assert (= (and d!1541024 (not c!820592)) b!4814658))

(declare-fun m!5800544 () Bool)

(assert (=> d!1541024 m!5800544))

(declare-fun m!5800546 () Bool)

(assert (=> d!1541024 m!5800546))

(declare-fun m!5800548 () Bool)

(assert (=> b!4814657 m!5800548))

(assert (=> b!4814657 m!5800548))

(declare-fun m!5800550 () Bool)

(assert (=> b!4814657 m!5800550))

(assert (=> b!4814572 d!1541024))

(declare-fun d!1541026 () Bool)

(declare-fun res!2047953 () Bool)

(declare-fun e!3008107 () Bool)

(assert (=> d!1541026 (=> res!2047953 e!3008107)))

(assert (=> d!1541026 (= res!2047953 (is-Nil!54678 (toList!7249 lm!1254)))))

(assert (=> d!1541026 (= (forall!12437 (toList!7249 lm!1254) lambda!234157) e!3008107)))

(declare-fun b!4814663 () Bool)

(declare-fun e!3008108 () Bool)

(assert (=> b!4814663 (= e!3008107 e!3008108)))

(declare-fun res!2047954 () Bool)

(assert (=> b!4814663 (=> (not res!2047954) (not e!3008108))))

(declare-fun dynLambda!22155 (Int tuple2!57664) Bool)

(assert (=> b!4814663 (= res!2047954 (dynLambda!22155 lambda!234157 (h!61110 (toList!7249 lm!1254))))))

(declare-fun b!4814664 () Bool)

(assert (=> b!4814664 (= e!3008108 (forall!12437 (t!362298 (toList!7249 lm!1254)) lambda!234157))))

(assert (= (and d!1541026 (not res!2047953)) b!4814663))

(assert (= (and b!4814663 res!2047954) b!4814664))

(declare-fun b_lambda!188353 () Bool)

(assert (=> (not b_lambda!188353) (not b!4814663)))

(declare-fun m!5800552 () Bool)

(assert (=> b!4814663 m!5800552))

(declare-fun m!5800554 () Bool)

(assert (=> b!4814664 m!5800554))

(assert (=> start!497986 d!1541026))

(declare-fun d!1541028 () Bool)

(assert (=> d!1541028 (= (inv!70223 lm!1254) (isStrictlySorted!944 (toList!7249 lm!1254)))))

(declare-fun bs!1160375 () Bool)

(assert (= bs!1160375 d!1541028))

(assert (=> bs!1160375 m!5800468))

(assert (=> start!497986 d!1541028))

(declare-fun bs!1160376 () Bool)

(declare-fun d!1541030 () Bool)

(assert (= bs!1160376 (and d!1541030 start!497986)))

(declare-fun lambda!234166 () Int)

(assert (=> bs!1160376 (not (= lambda!234166 lambda!234157))))

(declare-fun bs!1160377 () Bool)

(assert (= bs!1160377 (and d!1541030 d!1541024)))

(assert (=> bs!1160377 (not (= lambda!234166 lambda!234163))))

(assert (=> d!1541030 true))

(assert (=> d!1541030 (= (allKeysSameHashInMap!2449 lm!1254 hashF!938) (forall!12437 (toList!7249 lm!1254) lambda!234166))))

(declare-fun bs!1160378 () Bool)

(assert (= bs!1160378 d!1541030))

(declare-fun m!5800556 () Bool)

(assert (=> bs!1160378 m!5800556))

(assert (=> b!4814576 d!1541030))

(declare-fun bs!1160379 () Bool)

(declare-fun d!1541032 () Bool)

(assert (= bs!1160379 (and d!1541032 start!497986)))

(declare-fun lambda!234169 () Int)

(assert (=> bs!1160379 (= lambda!234169 lambda!234157)))

(declare-fun bs!1160380 () Bool)

(assert (= bs!1160380 (and d!1541032 d!1541024)))

(assert (=> bs!1160380 (= lambda!234169 lambda!234163)))

(declare-fun bs!1160381 () Bool)

(assert (= bs!1160381 (and d!1541032 d!1541030)))

(assert (=> bs!1160381 (not (= lambda!234169 lambda!234166))))

(assert (=> d!1541032 (contains!18460 lm!1254 (hash!5200 hashF!938 key!2670))))

(declare-fun lt!1965526 () Unit!141814)

(declare-fun choose!34903 (ListLongMap!5729 K!16322 Hashable!7133) Unit!141814)

(assert (=> d!1541032 (= lt!1965526 (choose!34903 lm!1254 key!2670 hashF!938))))

(assert (=> d!1541032 (forall!12437 (toList!7249 lm!1254) lambda!234169)))

(assert (=> d!1541032 (= (lemmaInGenMapThenLongMapContainsHash!1071 lm!1254 key!2670 hashF!938) lt!1965526)))

(declare-fun bs!1160382 () Bool)

(assert (= bs!1160382 d!1541032))

(assert (=> bs!1160382 m!5800452))

(assert (=> bs!1160382 m!5800452))

(declare-fun m!5800558 () Bool)

(assert (=> bs!1160382 m!5800558))

(declare-fun m!5800560 () Bool)

(assert (=> bs!1160382 m!5800560))

(declare-fun m!5800562 () Bool)

(assert (=> bs!1160382 m!5800562))

(assert (=> b!4814573 d!1541032))

(declare-fun d!1541034 () Bool)

(declare-fun lt!1965529 () Bool)

(declare-fun content!9787 (List!54802) (Set tuple2!57664))

(assert (=> d!1541034 (= lt!1965529 (set.member (tuple2!57665 lt!1965453 lt!1965452) (content!9787 (toList!7249 lm!1254))))))

(declare-fun e!3008126 () Bool)

(assert (=> d!1541034 (= lt!1965529 e!3008126)))

(declare-fun res!2047966 () Bool)

(assert (=> d!1541034 (=> (not res!2047966) (not e!3008126))))

(assert (=> d!1541034 (= res!2047966 (is-Cons!54678 (toList!7249 lm!1254)))))

(assert (=> d!1541034 (= (contains!18459 (toList!7249 lm!1254) (tuple2!57665 lt!1965453 lt!1965452)) lt!1965529)))

(declare-fun b!4814689 () Bool)

(declare-fun e!3008125 () Bool)

(assert (=> b!4814689 (= e!3008126 e!3008125)))

(declare-fun res!2047965 () Bool)

(assert (=> b!4814689 (=> res!2047965 e!3008125)))

(assert (=> b!4814689 (= res!2047965 (= (h!61110 (toList!7249 lm!1254)) (tuple2!57665 lt!1965453 lt!1965452)))))

(declare-fun b!4814690 () Bool)

(assert (=> b!4814690 (= e!3008125 (contains!18459 (t!362298 (toList!7249 lm!1254)) (tuple2!57665 lt!1965453 lt!1965452)))))

(assert (= (and d!1541034 res!2047966) b!4814689))

(assert (= (and b!4814689 (not res!2047965)) b!4814690))

(declare-fun m!5800564 () Bool)

(assert (=> d!1541034 m!5800564))

(declare-fun m!5800566 () Bool)

(assert (=> d!1541034 m!5800566))

(declare-fun m!5800568 () Bool)

(assert (=> b!4814690 m!5800568))

(assert (=> b!4814573 d!1541034))

(declare-fun d!1541036 () Bool)

(declare-fun e!3008131 () Bool)

(assert (=> d!1541036 e!3008131))

(declare-fun res!2047969 () Bool)

(assert (=> d!1541036 (=> res!2047969 e!3008131)))

(declare-fun lt!1965541 () Bool)

(assert (=> d!1541036 (= res!2047969 (not lt!1965541))))

(declare-fun lt!1965539 () Bool)

(assert (=> d!1541036 (= lt!1965541 lt!1965539)))

(declare-fun lt!1965540 () Unit!141814)

(declare-fun e!3008132 () Unit!141814)

(assert (=> d!1541036 (= lt!1965540 e!3008132)))

(declare-fun c!820601 () Bool)

(assert (=> d!1541036 (= c!820601 lt!1965539)))

(assert (=> d!1541036 (= lt!1965539 (containsKey!4215 (toList!7249 lm!1254) lt!1965453))))

(assert (=> d!1541036 (= (contains!18460 lm!1254 lt!1965453) lt!1965541)))

(declare-fun b!4814697 () Bool)

(declare-fun lt!1965538 () Unit!141814)

(assert (=> b!4814697 (= e!3008132 lt!1965538)))

(assert (=> b!4814697 (= lt!1965538 (lemmaContainsKeyImpliesGetValueByKeyDefined!2331 (toList!7249 lm!1254) lt!1965453))))

(assert (=> b!4814697 (isDefined!10519 (getValueByKey!2545 (toList!7249 lm!1254) lt!1965453))))

(declare-fun b!4814698 () Bool)

(declare-fun Unit!141820 () Unit!141814)

(assert (=> b!4814698 (= e!3008132 Unit!141820)))

(declare-fun b!4814699 () Bool)

(assert (=> b!4814699 (= e!3008131 (isDefined!10519 (getValueByKey!2545 (toList!7249 lm!1254) lt!1965453)))))

(assert (= (and d!1541036 c!820601) b!4814697))

(assert (= (and d!1541036 (not c!820601)) b!4814698))

(assert (= (and d!1541036 (not res!2047969)) b!4814699))

(assert (=> d!1541036 m!5800474))

(assert (=> b!4814697 m!5800470))

(assert (=> b!4814697 m!5800476))

(assert (=> b!4814697 m!5800476))

(assert (=> b!4814697 m!5800520))

(assert (=> b!4814699 m!5800476))

(assert (=> b!4814699 m!5800476))

(assert (=> b!4814699 m!5800520))

(assert (=> b!4814573 d!1541036))

(declare-fun d!1541038 () Bool)

(declare-fun hash!5202 (Hashable!7133 K!16322) (_ BitVec 64))

(assert (=> d!1541038 (= (hash!5200 hashF!938 key!2670) (hash!5202 hashF!938 key!2670))))

(declare-fun bs!1160383 () Bool)

(assert (= bs!1160383 d!1541038))

(declare-fun m!5800570 () Bool)

(assert (=> bs!1160383 m!5800570))

(assert (=> b!4814573 d!1541038))

(declare-fun d!1541040 () Bool)

(declare-fun get!18709 (Option!13382) List!54801)

(assert (=> d!1541040 (= (apply!13238 lm!1254 lt!1965453) (get!18709 (getValueByKey!2545 (toList!7249 lm!1254) lt!1965453)))))

(declare-fun bs!1160384 () Bool)

(assert (= bs!1160384 d!1541040))

(assert (=> bs!1160384 m!5800476))

(assert (=> bs!1160384 m!5800476))

(declare-fun m!5800572 () Bool)

(assert (=> bs!1160384 m!5800572))

(assert (=> b!4814573 d!1541040))

(declare-fun b!4814713 () Bool)

(declare-fun e!3008141 () Bool)

(declare-fun tp!1361742 () Bool)

(declare-fun tp!1361743 () Bool)

(assert (=> b!4814713 (= e!3008141 (and tp!1361742 tp!1361743))))

(assert (=> b!4814575 (= tp!1361734 e!3008141)))

(assert (= (and b!4814575 (is-Cons!54678 (toList!7249 lm!1254))) b!4814713))

(declare-fun b_lambda!188355 () Bool)

(assert (= b_lambda!188353 (or start!497986 b_lambda!188355)))

(declare-fun bs!1160385 () Bool)

(declare-fun d!1541042 () Bool)

(assert (= bs!1160385 (and d!1541042 start!497986)))

(declare-fun noDuplicateKeys!2400 (List!54801) Bool)

(assert (=> bs!1160385 (= (dynLambda!22155 lambda!234157 (h!61110 (toList!7249 lm!1254))) (noDuplicateKeys!2400 (_2!32126 (h!61110 (toList!7249 lm!1254)))))))

(declare-fun m!5800574 () Bool)

(assert (=> bs!1160385 m!5800574))

(assert (=> b!4814663 d!1541042))

(push 1)

(assert (not b!4814651))

(assert (not b!4814652))

(assert (not d!1541018))

(assert (not d!1541024))

(assert (not b!4814650))

(assert (not b!4814649))

(assert (not d!1541040))

(assert (not bs!1160385))

(assert (not d!1541008))

(assert (not b!4814690))

(assert (not b!4814619))

(assert (not b!4814647))

(assert (not d!1541032))

(assert (not b!4814657))

(assert (not d!1541034))

(assert (not b_lambda!188355))

(assert (not d!1541036))

(assert (not b!4814601))

(assert (not b!4814713))

(assert (not b!4814612))

(assert (not d!1541028))

(assert (not d!1541020))

(assert (not d!1541016))

(assert (not b!4814697))

(assert (not b!4814699))

(assert tp_is_empty!34135)

(assert (not b!4814646))

(assert (not b!4814645))

(assert (not b!4814622))

(assert (not d!1541038))

(assert (not b!4814625))

(assert (not d!1541030))

(assert (not bm!335924))

(assert (not b!4814664))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1541076 () Bool)

(declare-fun res!2048010 () Bool)

(declare-fun e!3008194 () Bool)

(assert (=> d!1541076 (=> res!2048010 e!3008194)))

(assert (=> d!1541076 (= res!2048010 (not (is-Cons!54677 (_2!32126 (h!61110 (toList!7249 lm!1254))))))))

(assert (=> d!1541076 (= (noDuplicateKeys!2400 (_2!32126 (h!61110 (toList!7249 lm!1254)))) e!3008194)))

(declare-fun b!4814782 () Bool)

(declare-fun e!3008195 () Bool)

(assert (=> b!4814782 (= e!3008194 e!3008195)))

(declare-fun res!2048011 () Bool)

(assert (=> b!4814782 (=> (not res!2048011) (not e!3008195))))

(declare-fun containsKey!4219 (List!54801 K!16322) Bool)

(assert (=> b!4814782 (= res!2048011 (not (containsKey!4219 (t!362297 (_2!32126 (h!61110 (toList!7249 lm!1254)))) (_1!32125 (h!61109 (_2!32126 (h!61110 (toList!7249 lm!1254))))))))))

(declare-fun b!4814783 () Bool)

(assert (=> b!4814783 (= e!3008195 (noDuplicateKeys!2400 (t!362297 (_2!32126 (h!61110 (toList!7249 lm!1254))))))))

(assert (= (and d!1541076 (not res!2048010)) b!4814782))

(assert (= (and b!4814782 res!2048011) b!4814783))

(declare-fun m!5800642 () Bool)

(assert (=> b!4814782 m!5800642))

(declare-fun m!5800644 () Bool)

(assert (=> b!4814783 m!5800644))

(assert (=> bs!1160385 d!1541076))

(declare-fun d!1541078 () Bool)

(declare-fun lt!1965579 () Bool)

(declare-fun content!9789 (List!54805) (Set K!16322))

(assert (=> d!1541078 (= lt!1965579 (set.member key!2670 (content!9789 e!3008097)))))

(declare-fun e!3008201 () Bool)

(assert (=> d!1541078 (= lt!1965579 e!3008201)))

(declare-fun res!2048017 () Bool)

(assert (=> d!1541078 (=> (not res!2048017) (not e!3008201))))

(assert (=> d!1541078 (= res!2048017 (is-Cons!54681 e!3008097))))

(assert (=> d!1541078 (= (contains!18464 e!3008097 key!2670) lt!1965579)))

(declare-fun b!4814788 () Bool)

(declare-fun e!3008200 () Bool)

(assert (=> b!4814788 (= e!3008201 e!3008200)))

(declare-fun res!2048016 () Bool)

(assert (=> b!4814788 (=> res!2048016 e!3008200)))

(assert (=> b!4814788 (= res!2048016 (= (h!61113 e!3008097) key!2670))))

(declare-fun b!4814789 () Bool)

(assert (=> b!4814789 (= e!3008200 (contains!18464 (t!362301 e!3008097) key!2670))))

(assert (= (and d!1541078 res!2048017) b!4814788))

(assert (= (and b!4814788 (not res!2048016)) b!4814789))

(declare-fun m!5800646 () Bool)

(assert (=> d!1541078 m!5800646))

(declare-fun m!5800648 () Bool)

(assert (=> d!1541078 m!5800648))

(declare-fun m!5800650 () Bool)

(assert (=> b!4814789 m!5800650))

(assert (=> bm!335924 d!1541078))

(assert (=> d!1541036 d!1541014))

(declare-fun d!1541080 () Bool)

(declare-fun e!3008202 () Bool)

(assert (=> d!1541080 e!3008202))

(declare-fun res!2048018 () Bool)

(assert (=> d!1541080 (=> res!2048018 e!3008202)))

(declare-fun lt!1965583 () Bool)

(assert (=> d!1541080 (= res!2048018 (not lt!1965583))))

(declare-fun lt!1965581 () Bool)

(assert (=> d!1541080 (= lt!1965583 lt!1965581)))

(declare-fun lt!1965582 () Unit!141814)

(declare-fun e!3008203 () Unit!141814)

(assert (=> d!1541080 (= lt!1965582 e!3008203)))

(declare-fun c!820617 () Bool)

(assert (=> d!1541080 (= c!820617 lt!1965581)))

(assert (=> d!1541080 (= lt!1965581 (containsKey!4215 (toList!7249 lm!1254) (hash!5200 hashF!938 key!2670)))))

(assert (=> d!1541080 (= (contains!18460 lm!1254 (hash!5200 hashF!938 key!2670)) lt!1965583)))

(declare-fun b!4814790 () Bool)

(declare-fun lt!1965580 () Unit!141814)

(assert (=> b!4814790 (= e!3008203 lt!1965580)))

(assert (=> b!4814790 (= lt!1965580 (lemmaContainsKeyImpliesGetValueByKeyDefined!2331 (toList!7249 lm!1254) (hash!5200 hashF!938 key!2670)))))

(assert (=> b!4814790 (isDefined!10519 (getValueByKey!2545 (toList!7249 lm!1254) (hash!5200 hashF!938 key!2670)))))

(declare-fun b!4814791 () Bool)

(declare-fun Unit!141824 () Unit!141814)

(assert (=> b!4814791 (= e!3008203 Unit!141824)))

(declare-fun b!4814792 () Bool)

(assert (=> b!4814792 (= e!3008202 (isDefined!10519 (getValueByKey!2545 (toList!7249 lm!1254) (hash!5200 hashF!938 key!2670))))))

(assert (= (and d!1541080 c!820617) b!4814790))

(assert (= (and d!1541080 (not c!820617)) b!4814791))

(assert (= (and d!1541080 (not res!2048018)) b!4814792))

(assert (=> d!1541080 m!5800452))

(declare-fun m!5800652 () Bool)

(assert (=> d!1541080 m!5800652))

(assert (=> b!4814790 m!5800452))

(declare-fun m!5800654 () Bool)

(assert (=> b!4814790 m!5800654))

(assert (=> b!4814790 m!5800452))

(declare-fun m!5800656 () Bool)

(assert (=> b!4814790 m!5800656))

(assert (=> b!4814790 m!5800656))

(declare-fun m!5800658 () Bool)

(assert (=> b!4814790 m!5800658))

(assert (=> b!4814792 m!5800452))

(assert (=> b!4814792 m!5800656))

(assert (=> b!4814792 m!5800656))

(assert (=> b!4814792 m!5800658))

(assert (=> d!1541032 d!1541080))

(assert (=> d!1541032 d!1541038))

(declare-fun d!1541082 () Bool)

(assert (=> d!1541082 (contains!18460 lm!1254 (hash!5200 hashF!938 key!2670))))

(assert (=> d!1541082 true))

(declare-fun _$27!1622 () Unit!141814)

(assert (=> d!1541082 (= (choose!34903 lm!1254 key!2670 hashF!938) _$27!1622)))

(declare-fun bs!1160399 () Bool)

(assert (= bs!1160399 d!1541082))

(assert (=> bs!1160399 m!5800452))

(assert (=> bs!1160399 m!5800452))

(assert (=> bs!1160399 m!5800558))

(assert (=> d!1541032 d!1541082))

(declare-fun d!1541084 () Bool)

(declare-fun res!2048019 () Bool)

(declare-fun e!3008204 () Bool)

(assert (=> d!1541084 (=> res!2048019 e!3008204)))

(assert (=> d!1541084 (= res!2048019 (is-Nil!54678 (toList!7249 lm!1254)))))

(assert (=> d!1541084 (= (forall!12437 (toList!7249 lm!1254) lambda!234169) e!3008204)))

(declare-fun b!4814793 () Bool)

(declare-fun e!3008205 () Bool)

(assert (=> b!4814793 (= e!3008204 e!3008205)))

(declare-fun res!2048020 () Bool)

(assert (=> b!4814793 (=> (not res!2048020) (not e!3008205))))

(assert (=> b!4814793 (= res!2048020 (dynLambda!22155 lambda!234169 (h!61110 (toList!7249 lm!1254))))))

(declare-fun b!4814794 () Bool)

(assert (=> b!4814794 (= e!3008205 (forall!12437 (t!362298 (toList!7249 lm!1254)) lambda!234169))))

(assert (= (and d!1541084 (not res!2048019)) b!4814793))

(assert (= (and b!4814793 res!2048020) b!4814794))

(declare-fun b_lambda!188361 () Bool)

(assert (=> (not b_lambda!188361) (not b!4814793)))

(declare-fun m!5800660 () Bool)

(assert (=> b!4814793 m!5800660))

(declare-fun m!5800662 () Bool)

(assert (=> b!4814794 m!5800662))

(assert (=> d!1541032 d!1541084))

(declare-fun d!1541086 () Bool)

(declare-fun res!2048021 () Bool)

(declare-fun e!3008206 () Bool)

(assert (=> d!1541086 (=> res!2048021 e!3008206)))

(assert (=> d!1541086 (= res!2048021 (is-Nil!54678 (toList!7249 lm!1254)))))

(assert (=> d!1541086 (= (forall!12437 (toList!7249 lm!1254) lambda!234166) e!3008206)))

(declare-fun b!4814795 () Bool)

(declare-fun e!3008207 () Bool)

(assert (=> b!4814795 (= e!3008206 e!3008207)))

(declare-fun res!2048022 () Bool)

(assert (=> b!4814795 (=> (not res!2048022) (not e!3008207))))

(assert (=> b!4814795 (= res!2048022 (dynLambda!22155 lambda!234166 (h!61110 (toList!7249 lm!1254))))))

(declare-fun b!4814796 () Bool)

(assert (=> b!4814796 (= e!3008207 (forall!12437 (t!362298 (toList!7249 lm!1254)) lambda!234166))))

(assert (= (and d!1541086 (not res!2048021)) b!4814795))

(assert (= (and b!4814795 res!2048022) b!4814796))

(declare-fun b_lambda!188363 () Bool)

(assert (=> (not b_lambda!188363) (not b!4814795)))

(declare-fun m!5800664 () Bool)

(assert (=> b!4814795 m!5800664))

(declare-fun m!5800666 () Bool)

(assert (=> b!4814796 m!5800666))

(assert (=> d!1541030 d!1541086))

(declare-fun d!1541088 () Bool)

(assert (=> d!1541088 (= (isEmpty!29566 lt!1965456) (not (is-Some!13381 lt!1965456)))))

(assert (=> d!1541008 d!1541088))

(declare-fun d!1541090 () Bool)

(assert (=> d!1541090 (isDefined!10521 (getValueByKey!2547 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670))))

(declare-fun lt!1965586 () Unit!141814)

(declare-fun choose!34907 (List!54801 K!16322) Unit!141814)

(assert (=> d!1541090 (= lt!1965586 (choose!34907 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670))))

(assert (=> d!1541090 (invariantList!1784 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))))

(assert (=> d!1541090 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2333 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670) lt!1965586)))

(declare-fun bs!1160400 () Bool)

(assert (= bs!1160400 d!1541090))

(assert (=> bs!1160400 m!5800530))

(assert (=> bs!1160400 m!5800530))

(assert (=> bs!1160400 m!5800532))

(declare-fun m!5800668 () Bool)

(assert (=> bs!1160400 m!5800668))

(declare-fun m!5800670 () Bool)

(assert (=> bs!1160400 m!5800670))

(assert (=> b!4814647 d!1541090))

(declare-fun d!1541092 () Bool)

(declare-fun isEmpty!29568 (Option!13384) Bool)

(assert (=> d!1541092 (= (isDefined!10521 (getValueByKey!2547 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670)) (not (isEmpty!29568 (getValueByKey!2547 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670))))))

(declare-fun bs!1160401 () Bool)

(assert (= bs!1160401 d!1541092))

(assert (=> bs!1160401 m!5800530))

(declare-fun m!5800672 () Bool)

(assert (=> bs!1160401 m!5800672))

(assert (=> b!4814647 d!1541092))

(declare-fun b!4814805 () Bool)

(declare-fun e!3008212 () Option!13384)

(assert (=> b!4814805 (= e!3008212 (Some!13383 (_2!32125 (h!61109 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))))))))

(declare-fun b!4814806 () Bool)

(declare-fun e!3008213 () Option!13384)

(assert (=> b!4814806 (= e!3008212 e!3008213)))

(declare-fun c!820623 () Bool)

(assert (=> b!4814806 (= c!820623 (and (is-Cons!54677 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))) (not (= (_1!32125 (h!61109 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))) key!2670))))))

(declare-fun b!4814808 () Bool)

(assert (=> b!4814808 (= e!3008213 None!13383)))

(declare-fun d!1541094 () Bool)

(declare-fun c!820622 () Bool)

(assert (=> d!1541094 (= c!820622 (and (is-Cons!54677 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))) (= (_1!32125 (h!61109 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))) key!2670)))))

(assert (=> d!1541094 (= (getValueByKey!2547 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670) e!3008212)))

(declare-fun b!4814807 () Bool)

(assert (=> b!4814807 (= e!3008213 (getValueByKey!2547 (t!362297 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))) key!2670))))

(assert (= (and d!1541094 c!820622) b!4814805))

(assert (= (and d!1541094 (not c!820622)) b!4814806))

(assert (= (and b!4814806 c!820623) b!4814807))

(assert (= (and b!4814806 (not c!820623)) b!4814808))

(declare-fun m!5800674 () Bool)

(assert (=> b!4814807 m!5800674))

(assert (=> b!4814647 d!1541094))

(declare-fun d!1541096 () Bool)

(assert (=> d!1541096 (contains!18464 (getKeysList!1130 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))) key!2670)))

(declare-fun lt!1965589 () Unit!141814)

(declare-fun choose!34908 (List!54801 K!16322) Unit!141814)

(assert (=> d!1541096 (= lt!1965589 (choose!34908 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670))))

(assert (=> d!1541096 (invariantList!1784 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))))

(assert (=> d!1541096 (= (lemmaInListThenGetKeysListContains!1125 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670) lt!1965589)))

(declare-fun bs!1160402 () Bool)

(assert (= bs!1160402 d!1541096))

(assert (=> bs!1160402 m!5800536))

(assert (=> bs!1160402 m!5800536))

(declare-fun m!5800676 () Bool)

(assert (=> bs!1160402 m!5800676))

(declare-fun m!5800678 () Bool)

(assert (=> bs!1160402 m!5800678))

(assert (=> bs!1160402 m!5800670))

(assert (=> b!4814647 d!1541096))

(assert (=> b!4814645 d!1541092))

(assert (=> b!4814645 d!1541094))

(declare-fun d!1541098 () Bool)

(declare-fun lt!1965590 () Bool)

(assert (=> d!1541098 (= lt!1965590 (set.member key!2670 (content!9789 (keys!20063 (extractMap!2583 (toList!7249 lm!1254))))))))

(declare-fun e!3008215 () Bool)

(assert (=> d!1541098 (= lt!1965590 e!3008215)))

(declare-fun res!2048024 () Bool)

(assert (=> d!1541098 (=> (not res!2048024) (not e!3008215))))

(assert (=> d!1541098 (= res!2048024 (is-Cons!54681 (keys!20063 (extractMap!2583 (toList!7249 lm!1254)))))))

(assert (=> d!1541098 (= (contains!18464 (keys!20063 (extractMap!2583 (toList!7249 lm!1254))) key!2670) lt!1965590)))

(declare-fun b!4814809 () Bool)

(declare-fun e!3008214 () Bool)

(assert (=> b!4814809 (= e!3008215 e!3008214)))

(declare-fun res!2048023 () Bool)

(assert (=> b!4814809 (=> res!2048023 e!3008214)))

(assert (=> b!4814809 (= res!2048023 (= (h!61113 (keys!20063 (extractMap!2583 (toList!7249 lm!1254)))) key!2670))))

(declare-fun b!4814810 () Bool)

(assert (=> b!4814810 (= e!3008214 (contains!18464 (t!362301 (keys!20063 (extractMap!2583 (toList!7249 lm!1254)))) key!2670))))

(assert (= (and d!1541098 res!2048024) b!4814809))

(assert (= (and b!4814809 (not res!2048023)) b!4814810))

(assert (=> d!1541098 m!5800524))

(declare-fun m!5800680 () Bool)

(assert (=> d!1541098 m!5800680))

(declare-fun m!5800682 () Bool)

(assert (=> d!1541098 m!5800682))

(declare-fun m!5800684 () Bool)

(assert (=> b!4814810 m!5800684))

(assert (=> b!4814646 d!1541098))

(declare-fun b!4814818 () Bool)

(assert (=> b!4814818 true))

(declare-fun d!1541100 () Bool)

(declare-fun e!3008218 () Bool)

(assert (=> d!1541100 e!3008218))

(declare-fun res!2048031 () Bool)

(assert (=> d!1541100 (=> (not res!2048031) (not e!3008218))))

(declare-fun lt!1965593 () List!54805)

(declare-fun noDuplicate!942 (List!54805) Bool)

(assert (=> d!1541100 (= res!2048031 (noDuplicate!942 lt!1965593))))

(assert (=> d!1541100 (= lt!1965593 (getKeysList!1130 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))))))

(assert (=> d!1541100 (= (keys!20063 (extractMap!2583 (toList!7249 lm!1254))) lt!1965593)))

(declare-fun b!4814817 () Bool)

(declare-fun res!2048032 () Bool)

(assert (=> b!4814817 (=> (not res!2048032) (not e!3008218))))

(declare-fun length!740 (List!54805) Int)

(declare-fun length!741 (List!54801) Int)

(assert (=> b!4814817 (= res!2048032 (= (length!740 lt!1965593) (length!741 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))))))

(declare-fun res!2048033 () Bool)

(assert (=> b!4814818 (=> (not res!2048033) (not e!3008218))))

(declare-fun lambda!234183 () Int)

(declare-fun forall!12439 (List!54805 Int) Bool)

(assert (=> b!4814818 (= res!2048033 (forall!12439 lt!1965593 lambda!234183))))

(declare-fun b!4814819 () Bool)

(declare-fun lambda!234184 () Int)

(declare-fun map!12495 (List!54801 Int) List!54805)

(assert (=> b!4814819 (= e!3008218 (= (content!9789 lt!1965593) (content!9789 (map!12495 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) lambda!234184))))))

(assert (= (and d!1541100 res!2048031) b!4814817))

(assert (= (and b!4814817 res!2048032) b!4814818))

(assert (= (and b!4814818 res!2048033) b!4814819))

(declare-fun m!5800686 () Bool)

(assert (=> d!1541100 m!5800686))

(assert (=> d!1541100 m!5800536))

(declare-fun m!5800688 () Bool)

(assert (=> b!4814817 m!5800688))

(declare-fun m!5800690 () Bool)

(assert (=> b!4814817 m!5800690))

(declare-fun m!5800692 () Bool)

(assert (=> b!4814818 m!5800692))

(declare-fun m!5800694 () Bool)

(assert (=> b!4814819 m!5800694))

(declare-fun m!5800696 () Bool)

(assert (=> b!4814819 m!5800696))

(assert (=> b!4814819 m!5800696))

(declare-fun m!5800698 () Bool)

(assert (=> b!4814819 m!5800698))

(assert (=> b!4814646 d!1541100))

(declare-fun d!1541102 () Bool)

(declare-fun res!2048034 () Bool)

(declare-fun e!3008219 () Bool)

(assert (=> d!1541102 (=> res!2048034 e!3008219)))

(assert (=> d!1541102 (= res!2048034 (is-Nil!54678 (t!362298 (toList!7249 lm!1254))))))

(assert (=> d!1541102 (= (forall!12437 (t!362298 (toList!7249 lm!1254)) lambda!234157) e!3008219)))

(declare-fun b!4814822 () Bool)

(declare-fun e!3008220 () Bool)

(assert (=> b!4814822 (= e!3008219 e!3008220)))

(declare-fun res!2048035 () Bool)

(assert (=> b!4814822 (=> (not res!2048035) (not e!3008220))))

(assert (=> b!4814822 (= res!2048035 (dynLambda!22155 lambda!234157 (h!61110 (t!362298 (toList!7249 lm!1254)))))))

(declare-fun b!4814823 () Bool)

(assert (=> b!4814823 (= e!3008220 (forall!12437 (t!362298 (t!362298 (toList!7249 lm!1254))) lambda!234157))))

(assert (= (and d!1541102 (not res!2048034)) b!4814822))

(assert (= (and b!4814822 res!2048035) b!4814823))

(declare-fun b_lambda!188365 () Bool)

(assert (=> (not b_lambda!188365) (not b!4814822)))

(declare-fun m!5800700 () Bool)

(assert (=> b!4814822 m!5800700))

(declare-fun m!5800702 () Bool)

(assert (=> b!4814823 m!5800702))

(assert (=> b!4814664 d!1541102))

(declare-fun d!1541104 () Bool)

(declare-fun c!820624 () Bool)

(assert (=> d!1541104 (= c!820624 (and (is-Cons!54678 (t!362298 (toList!7249 lm!1254))) (= (_1!32126 (h!61110 (t!362298 (toList!7249 lm!1254)))) lt!1965453)))))

(declare-fun e!3008221 () Option!13382)

(assert (=> d!1541104 (= (getValueByKey!2545 (t!362298 (toList!7249 lm!1254)) lt!1965453) e!3008221)))

(declare-fun b!4814827 () Bool)

(declare-fun e!3008222 () Option!13382)

(assert (=> b!4814827 (= e!3008222 None!13381)))

(declare-fun b!4814824 () Bool)

(assert (=> b!4814824 (= e!3008221 (Some!13381 (_2!32126 (h!61110 (t!362298 (toList!7249 lm!1254))))))))

(declare-fun b!4814825 () Bool)

(assert (=> b!4814825 (= e!3008221 e!3008222)))

(declare-fun c!820625 () Bool)

(assert (=> b!4814825 (= c!820625 (and (is-Cons!54678 (t!362298 (toList!7249 lm!1254))) (not (= (_1!32126 (h!61110 (t!362298 (toList!7249 lm!1254)))) lt!1965453))))))

(declare-fun b!4814826 () Bool)

(assert (=> b!4814826 (= e!3008222 (getValueByKey!2545 (t!362298 (t!362298 (toList!7249 lm!1254))) lt!1965453))))

(assert (= (and d!1541104 c!820624) b!4814824))

(assert (= (and d!1541104 (not c!820624)) b!4814825))

(assert (= (and b!4814825 c!820625) b!4814826))

(assert (= (and b!4814825 (not c!820625)) b!4814827))

(declare-fun m!5800704 () Bool)

(assert (=> b!4814826 m!5800704))

(assert (=> b!4814612 d!1541104))

(declare-fun b!4814840 () Bool)

(assert (=> b!4814840 true))

(declare-fun bs!1160403 () Bool)

(declare-fun b!4814839 () Bool)

(assert (= bs!1160403 (and b!4814839 b!4814840)))

(declare-fun lambda!234214 () Int)

(declare-fun lambda!234213 () Int)

(assert (=> bs!1160403 (= lambda!234214 lambda!234213)))

(assert (=> b!4814839 true))

(declare-fun lt!1965642 () ListMap!6663)

(declare-fun lambda!234215 () Int)

(assert (=> bs!1160403 (= (= lt!1965642 (extractMap!2583 (t!362298 (toList!7249 lm!1254)))) (= lambda!234215 lambda!234213))))

(assert (=> b!4814839 (= (= lt!1965642 (extractMap!2583 (t!362298 (toList!7249 lm!1254)))) (= lambda!234215 lambda!234214))))

(assert (=> b!4814839 true))

(declare-fun bs!1160404 () Bool)

(declare-fun d!1541106 () Bool)

(assert (= bs!1160404 (and d!1541106 b!4814840)))

(declare-fun lambda!234216 () Int)

(declare-fun lt!1965650 () ListMap!6663)

(assert (=> bs!1160404 (= (= lt!1965650 (extractMap!2583 (t!362298 (toList!7249 lm!1254)))) (= lambda!234216 lambda!234213))))

(declare-fun bs!1160405 () Bool)

(assert (= bs!1160405 (and d!1541106 b!4814839)))

(assert (=> bs!1160405 (= (= lt!1965650 (extractMap!2583 (t!362298 (toList!7249 lm!1254)))) (= lambda!234216 lambda!234214))))

(assert (=> bs!1160405 (= (= lt!1965650 lt!1965642) (= lambda!234216 lambda!234215))))

(assert (=> d!1541106 true))

(declare-fun bm!335934 () Bool)

(declare-fun call!335940 () Unit!141814)

(declare-fun lemmaContainsAllItsOwnKeys!972 (ListMap!6663) Unit!141814)

(assert (=> bm!335934 (= call!335940 (lemmaContainsAllItsOwnKeys!972 (extractMap!2583 (t!362298 (toList!7249 lm!1254)))))))

(declare-fun b!4814838 () Bool)

(declare-fun e!3008229 () Bool)

(declare-fun call!335939 () Bool)

(assert (=> b!4814838 (= e!3008229 call!335939)))

(declare-fun e!3008230 () ListMap!6663)

(assert (=> b!4814839 (= e!3008230 lt!1965642)))

(declare-fun lt!1965644 () ListMap!6663)

(declare-fun +!2517 (ListMap!6663 tuple2!57662) ListMap!6663)

(assert (=> b!4814839 (= lt!1965644 (+!2517 (extractMap!2583 (t!362298 (toList!7249 lm!1254))) (h!61109 (_2!32126 (h!61110 (toList!7249 lm!1254))))))))

(assert (=> b!4814839 (= lt!1965642 (addToMapMapFromBucket!1761 (t!362297 (_2!32126 (h!61110 (toList!7249 lm!1254)))) (+!2517 (extractMap!2583 (t!362298 (toList!7249 lm!1254))) (h!61109 (_2!32126 (h!61110 (toList!7249 lm!1254)))))))))

(declare-fun lt!1965656 () Unit!141814)

(assert (=> b!4814839 (= lt!1965656 call!335940)))

(declare-fun call!335941 () Bool)

(assert (=> b!4814839 call!335941))

(declare-fun lt!1965648 () Unit!141814)

(assert (=> b!4814839 (= lt!1965648 lt!1965656)))

(declare-fun forall!12440 (List!54801 Int) Bool)

(assert (=> b!4814839 (forall!12440 (toList!7250 lt!1965644) lambda!234215)))

(declare-fun lt!1965639 () Unit!141814)

(declare-fun Unit!141825 () Unit!141814)

(assert (=> b!4814839 (= lt!1965639 Unit!141825)))

(assert (=> b!4814839 (forall!12440 (t!362297 (_2!32126 (h!61110 (toList!7249 lm!1254)))) lambda!234215)))

(declare-fun lt!1965651 () Unit!141814)

(declare-fun Unit!141826 () Unit!141814)

(assert (=> b!4814839 (= lt!1965651 Unit!141826)))

(declare-fun lt!1965655 () Unit!141814)

(declare-fun Unit!141827 () Unit!141814)

(assert (=> b!4814839 (= lt!1965655 Unit!141827)))

(declare-fun lt!1965652 () Unit!141814)

(declare-fun forallContained!4303 (List!54801 Int tuple2!57662) Unit!141814)

(assert (=> b!4814839 (= lt!1965652 (forallContained!4303 (toList!7250 lt!1965644) lambda!234215 (h!61109 (_2!32126 (h!61110 (toList!7249 lm!1254))))))))

(assert (=> b!4814839 (contains!18458 lt!1965644 (_1!32125 (h!61109 (_2!32126 (h!61110 (toList!7249 lm!1254))))))))

(declare-fun lt!1965638 () Unit!141814)

(declare-fun Unit!141828 () Unit!141814)

(assert (=> b!4814839 (= lt!1965638 Unit!141828)))

(assert (=> b!4814839 (contains!18458 lt!1965642 (_1!32125 (h!61109 (_2!32126 (h!61110 (toList!7249 lm!1254))))))))

(declare-fun lt!1965647 () Unit!141814)

(declare-fun Unit!141829 () Unit!141814)

(assert (=> b!4814839 (= lt!1965647 Unit!141829)))

(assert (=> b!4814839 (forall!12440 (_2!32126 (h!61110 (toList!7249 lm!1254))) lambda!234215)))

(declare-fun lt!1965654 () Unit!141814)

(declare-fun Unit!141830 () Unit!141814)

(assert (=> b!4814839 (= lt!1965654 Unit!141830)))

(assert (=> b!4814839 (forall!12440 (toList!7250 lt!1965644) lambda!234215)))

(declare-fun lt!1965637 () Unit!141814)

(declare-fun Unit!141831 () Unit!141814)

(assert (=> b!4814839 (= lt!1965637 Unit!141831)))

(declare-fun lt!1965640 () Unit!141814)

(declare-fun Unit!141832 () Unit!141814)

(assert (=> b!4814839 (= lt!1965640 Unit!141832)))

(declare-fun lt!1965649 () Unit!141814)

(declare-fun addForallContainsKeyThenBeforeAdding!971 (ListMap!6663 ListMap!6663 K!16322 V!16568) Unit!141814)

(assert (=> b!4814839 (= lt!1965649 (addForallContainsKeyThenBeforeAdding!971 (extractMap!2583 (t!362298 (toList!7249 lm!1254))) lt!1965642 (_1!32125 (h!61109 (_2!32126 (h!61110 (toList!7249 lm!1254))))) (_2!32125 (h!61109 (_2!32126 (h!61110 (toList!7249 lm!1254)))))))))

(assert (=> b!4814839 (forall!12440 (toList!7250 (extractMap!2583 (t!362298 (toList!7249 lm!1254)))) lambda!234215)))

(declare-fun lt!1965643 () Unit!141814)

(assert (=> b!4814839 (= lt!1965643 lt!1965649)))

(assert (=> b!4814839 (forall!12440 (toList!7250 (extractMap!2583 (t!362298 (toList!7249 lm!1254)))) lambda!234215)))

(declare-fun lt!1965645 () Unit!141814)

(declare-fun Unit!141833 () Unit!141814)

(assert (=> b!4814839 (= lt!1965645 Unit!141833)))

(declare-fun res!2048042 () Bool)

(assert (=> b!4814839 (= res!2048042 (forall!12440 (_2!32126 (h!61110 (toList!7249 lm!1254))) lambda!234215))))

(assert (=> b!4814839 (=> (not res!2048042) (not e!3008229))))

(assert (=> b!4814839 e!3008229))

(declare-fun lt!1965636 () Unit!141814)

(declare-fun Unit!141834 () Unit!141814)

(assert (=> b!4814839 (= lt!1965636 Unit!141834)))

(assert (=> b!4814840 (= e!3008230 (extractMap!2583 (t!362298 (toList!7249 lm!1254))))))

(declare-fun lt!1965646 () Unit!141814)

(assert (=> b!4814840 (= lt!1965646 call!335940)))

(assert (=> b!4814840 call!335939))

(declare-fun lt!1965653 () Unit!141814)

(assert (=> b!4814840 (= lt!1965653 lt!1965646)))

(assert (=> b!4814840 call!335941))

(declare-fun lt!1965641 () Unit!141814)

(declare-fun Unit!141835 () Unit!141814)

(assert (=> b!4814840 (= lt!1965641 Unit!141835)))

(declare-fun e!3008231 () Bool)

(assert (=> d!1541106 e!3008231))

(declare-fun res!2048043 () Bool)

(assert (=> d!1541106 (=> (not res!2048043) (not e!3008231))))

(assert (=> d!1541106 (= res!2048043 (forall!12440 (_2!32126 (h!61110 (toList!7249 lm!1254))) lambda!234216))))

(assert (=> d!1541106 (= lt!1965650 e!3008230)))

(declare-fun c!820628 () Bool)

(assert (=> d!1541106 (= c!820628 (is-Nil!54677 (_2!32126 (h!61110 (toList!7249 lm!1254)))))))

(assert (=> d!1541106 (noDuplicateKeys!2400 (_2!32126 (h!61110 (toList!7249 lm!1254))))))

(assert (=> d!1541106 (= (addToMapMapFromBucket!1761 (_2!32126 (h!61110 (toList!7249 lm!1254))) (extractMap!2583 (t!362298 (toList!7249 lm!1254)))) lt!1965650)))

(declare-fun b!4814841 () Bool)

(declare-fun res!2048044 () Bool)

(assert (=> b!4814841 (=> (not res!2048044) (not e!3008231))))

(assert (=> b!4814841 (= res!2048044 (forall!12440 (toList!7250 (extractMap!2583 (t!362298 (toList!7249 lm!1254)))) lambda!234216))))

(declare-fun bm!335935 () Bool)

(assert (=> bm!335935 (= call!335941 (forall!12440 (toList!7250 (extractMap!2583 (t!362298 (toList!7249 lm!1254)))) (ite c!820628 lambda!234213 lambda!234214)))))

(declare-fun bm!335936 () Bool)

(assert (=> bm!335936 (= call!335939 (forall!12440 (toList!7250 (extractMap!2583 (t!362298 (toList!7249 lm!1254)))) (ite c!820628 lambda!234213 lambda!234215)))))

(declare-fun b!4814842 () Bool)

(assert (=> b!4814842 (= e!3008231 (invariantList!1784 (toList!7250 lt!1965650)))))

(assert (= (and d!1541106 c!820628) b!4814840))

(assert (= (and d!1541106 (not c!820628)) b!4814839))

(assert (= (and b!4814839 res!2048042) b!4814838))

(assert (= (or b!4814840 b!4814839) bm!335934))

(assert (= (or b!4814840 b!4814839) bm!335935))

(assert (= (or b!4814840 b!4814838) bm!335936))

(assert (= (and d!1541106 res!2048043) b!4814841))

(assert (= (and b!4814841 res!2048044) b!4814842))

(declare-fun m!5800706 () Bool)

(assert (=> d!1541106 m!5800706))

(assert (=> d!1541106 m!5800574))

(declare-fun m!5800708 () Bool)

(assert (=> b!4814842 m!5800708))

(declare-fun m!5800710 () Bool)

(assert (=> b!4814841 m!5800710))

(declare-fun m!5800712 () Bool)

(assert (=> bm!335936 m!5800712))

(declare-fun m!5800714 () Bool)

(assert (=> bm!335935 m!5800714))

(assert (=> b!4814839 m!5800548))

(declare-fun m!5800716 () Bool)

(assert (=> b!4814839 m!5800716))

(declare-fun m!5800718 () Bool)

(assert (=> b!4814839 m!5800718))

(assert (=> b!4814839 m!5800548))

(declare-fun m!5800720 () Bool)

(assert (=> b!4814839 m!5800720))

(declare-fun m!5800722 () Bool)

(assert (=> b!4814839 m!5800722))

(declare-fun m!5800724 () Bool)

(assert (=> b!4814839 m!5800724))

(declare-fun m!5800726 () Bool)

(assert (=> b!4814839 m!5800726))

(declare-fun m!5800728 () Bool)

(assert (=> b!4814839 m!5800728))

(assert (=> b!4814839 m!5800722))

(assert (=> b!4814839 m!5800718))

(assert (=> b!4814839 m!5800720))

(declare-fun m!5800730 () Bool)

(assert (=> b!4814839 m!5800730))

(declare-fun m!5800732 () Bool)

(assert (=> b!4814839 m!5800732))

(declare-fun m!5800734 () Bool)

(assert (=> b!4814839 m!5800734))

(assert (=> b!4814839 m!5800734))

(assert (=> bm!335934 m!5800548))

(declare-fun m!5800736 () Bool)

(assert (=> bm!335934 m!5800736))

(assert (=> b!4814657 d!1541106))

(declare-fun bs!1160406 () Bool)

(declare-fun d!1541108 () Bool)

(assert (= bs!1160406 (and d!1541108 start!497986)))

(declare-fun lambda!234217 () Int)

(assert (=> bs!1160406 (= lambda!234217 lambda!234157)))

(declare-fun bs!1160407 () Bool)

(assert (= bs!1160407 (and d!1541108 d!1541024)))

(assert (=> bs!1160407 (= lambda!234217 lambda!234163)))

(declare-fun bs!1160408 () Bool)

(assert (= bs!1160408 (and d!1541108 d!1541030)))

(assert (=> bs!1160408 (not (= lambda!234217 lambda!234166))))

(declare-fun bs!1160409 () Bool)

(assert (= bs!1160409 (and d!1541108 d!1541032)))

(assert (=> bs!1160409 (= lambda!234217 lambda!234169)))

(declare-fun lt!1965657 () ListMap!6663)

(assert (=> d!1541108 (invariantList!1784 (toList!7250 lt!1965657))))

(declare-fun e!3008232 () ListMap!6663)

(assert (=> d!1541108 (= lt!1965657 e!3008232)))

(declare-fun c!820629 () Bool)

(assert (=> d!1541108 (= c!820629 (is-Cons!54678 (t!362298 (toList!7249 lm!1254))))))

(assert (=> d!1541108 (forall!12437 (t!362298 (toList!7249 lm!1254)) lambda!234217)))

(assert (=> d!1541108 (= (extractMap!2583 (t!362298 (toList!7249 lm!1254))) lt!1965657)))

(declare-fun b!4814845 () Bool)

(assert (=> b!4814845 (= e!3008232 (addToMapMapFromBucket!1761 (_2!32126 (h!61110 (t!362298 (toList!7249 lm!1254)))) (extractMap!2583 (t!362298 (t!362298 (toList!7249 lm!1254))))))))

(declare-fun b!4814846 () Bool)

(assert (=> b!4814846 (= e!3008232 (ListMap!6664 Nil!54677))))

(assert (= (and d!1541108 c!820629) b!4814845))

(assert (= (and d!1541108 (not c!820629)) b!4814846))

(declare-fun m!5800738 () Bool)

(assert (=> d!1541108 m!5800738))

(declare-fun m!5800740 () Bool)

(assert (=> d!1541108 m!5800740))

(declare-fun m!5800742 () Bool)

(assert (=> b!4814845 m!5800742))

(assert (=> b!4814845 m!5800742))

(declare-fun m!5800744 () Bool)

(assert (=> b!4814845 m!5800744))

(assert (=> b!4814657 d!1541108))

(declare-fun d!1541110 () Bool)

(declare-fun lt!1965658 () Bool)

(assert (=> d!1541110 (= lt!1965658 (set.member (tuple2!57665 lt!1965453 lt!1965452) (content!9787 (t!362298 (toList!7249 lm!1254)))))))

(declare-fun e!3008234 () Bool)

(assert (=> d!1541110 (= lt!1965658 e!3008234)))

(declare-fun res!2048046 () Bool)

(assert (=> d!1541110 (=> (not res!2048046) (not e!3008234))))

(assert (=> d!1541110 (= res!2048046 (is-Cons!54678 (t!362298 (toList!7249 lm!1254))))))

(assert (=> d!1541110 (= (contains!18459 (t!362298 (toList!7249 lm!1254)) (tuple2!57665 lt!1965453 lt!1965452)) lt!1965658)))

(declare-fun b!4814847 () Bool)

(declare-fun e!3008233 () Bool)

(assert (=> b!4814847 (= e!3008234 e!3008233)))

(declare-fun res!2048045 () Bool)

(assert (=> b!4814847 (=> res!2048045 e!3008233)))

(assert (=> b!4814847 (= res!2048045 (= (h!61110 (t!362298 (toList!7249 lm!1254))) (tuple2!57665 lt!1965453 lt!1965452)))))

(declare-fun b!4814848 () Bool)

(assert (=> b!4814848 (= e!3008233 (contains!18459 (t!362298 (t!362298 (toList!7249 lm!1254))) (tuple2!57665 lt!1965453 lt!1965452)))))

(assert (= (and d!1541110 res!2048046) b!4814847))

(assert (= (and b!4814847 (not res!2048045)) b!4814848))

(declare-fun m!5800746 () Bool)

(assert (=> d!1541110 m!5800746))

(declare-fun m!5800748 () Bool)

(assert (=> d!1541110 m!5800748))

(declare-fun m!5800750 () Bool)

(assert (=> b!4814848 m!5800750))

(assert (=> b!4814690 d!1541110))

(assert (=> b!4814697 d!1541018))

(declare-fun d!1541112 () Bool)

(assert (=> d!1541112 (= (isDefined!10519 (getValueByKey!2545 (toList!7249 lm!1254) lt!1965453)) (not (isEmpty!29566 (getValueByKey!2545 (toList!7249 lm!1254) lt!1965453))))))

(declare-fun bs!1160410 () Bool)

(assert (= bs!1160410 d!1541112))

(assert (=> bs!1160410 m!5800476))

(declare-fun m!5800752 () Bool)

(assert (=> bs!1160410 m!5800752))

(assert (=> b!4814697 d!1541112))

(assert (=> b!4814697 d!1541012))

(assert (=> b!4814625 d!1541014))

(assert (=> d!1541028 d!1541010))

(declare-fun bs!1160411 () Bool)

(declare-fun b!4814868 () Bool)

(assert (= bs!1160411 (and b!4814868 b!4814818)))

(declare-fun lambda!234226 () Int)

(assert (=> bs!1160411 (= (= (t!362297 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))) (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))) (= lambda!234226 lambda!234183))))

(assert (=> b!4814868 true))

(declare-fun bs!1160412 () Bool)

(declare-fun b!4814870 () Bool)

(assert (= bs!1160412 (and b!4814870 b!4814818)))

(declare-fun lambda!234227 () Int)

(assert (=> bs!1160412 (= (= (Cons!54677 (h!61109 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))) (t!362297 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))) (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))) (= lambda!234227 lambda!234183))))

(declare-fun bs!1160413 () Bool)

(assert (= bs!1160413 (and b!4814870 b!4814868)))

(assert (=> bs!1160413 (= (= (Cons!54677 (h!61109 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))) (t!362297 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))) (t!362297 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))) (= lambda!234227 lambda!234226))))

(assert (=> b!4814870 true))

(declare-fun bs!1160414 () Bool)

(declare-fun b!4814874 () Bool)

(assert (= bs!1160414 (and b!4814874 b!4814818)))

(declare-fun lambda!234228 () Int)

(assert (=> bs!1160414 (= lambda!234228 lambda!234183)))

(declare-fun bs!1160415 () Bool)

(assert (= bs!1160415 (and b!4814874 b!4814868)))

(assert (=> bs!1160415 (= (= (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) (t!362297 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))) (= lambda!234228 lambda!234226))))

(declare-fun bs!1160416 () Bool)

(assert (= bs!1160416 (and b!4814874 b!4814870)))

(assert (=> bs!1160416 (= (= (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) (Cons!54677 (h!61109 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))) (t!362297 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))))) (= lambda!234228 lambda!234227))))

(assert (=> b!4814874 true))

(declare-fun bs!1160417 () Bool)

(declare-fun b!4814867 () Bool)

(assert (= bs!1160417 (and b!4814867 b!4814819)))

(declare-fun lambda!234229 () Int)

(assert (=> bs!1160417 (= lambda!234229 lambda!234184)))

(declare-fun lt!1965673 () List!54805)

(declare-fun e!3008246 () Bool)

(assert (=> b!4814867 (= e!3008246 (= (content!9789 lt!1965673) (content!9789 (map!12495 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) lambda!234229))))))

(assert (=> b!4814868 false))

(declare-fun lt!1965678 () Unit!141814)

(declare-fun forallContained!4304 (List!54805 Int K!16322) Unit!141814)

(assert (=> b!4814868 (= lt!1965678 (forallContained!4304 (getKeysList!1130 (t!362297 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))) lambda!234226 (_1!32125 (h!61109 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))))))))

(declare-fun e!3008244 () Unit!141814)

(declare-fun Unit!141836 () Unit!141814)

(assert (=> b!4814868 (= e!3008244 Unit!141836)))

(declare-fun b!4814869 () Bool)

(declare-fun Unit!141837 () Unit!141814)

(assert (=> b!4814869 (= e!3008244 Unit!141837)))

(declare-fun e!3008243 () List!54805)

(assert (=> b!4814870 (= e!3008243 (Cons!54681 (_1!32125 (h!61109 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))) (getKeysList!1130 (t!362297 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))))))))

(declare-fun c!820637 () Bool)

(assert (=> b!4814870 (= c!820637 (containsKey!4217 (t!362297 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))) (_1!32125 (h!61109 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))))))))

(declare-fun lt!1965674 () Unit!141814)

(declare-fun e!3008245 () Unit!141814)

(assert (=> b!4814870 (= lt!1965674 e!3008245)))

(declare-fun c!820638 () Bool)

(assert (=> b!4814870 (= c!820638 (contains!18464 (getKeysList!1130 (t!362297 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))) (_1!32125 (h!61109 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))))))))

(declare-fun lt!1965676 () Unit!141814)

(assert (=> b!4814870 (= lt!1965676 e!3008244)))

(declare-fun lt!1965675 () List!54805)

(assert (=> b!4814870 (= lt!1965675 (getKeysList!1130 (t!362297 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))))))

(declare-fun lt!1965679 () Unit!141814)

(declare-fun lemmaForallContainsAddHeadPreserves!357 (List!54801 List!54805 tuple2!57662) Unit!141814)

(assert (=> b!4814870 (= lt!1965679 (lemmaForallContainsAddHeadPreserves!357 (t!362297 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))) lt!1965675 (h!61109 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))))))

(assert (=> b!4814870 (forall!12439 lt!1965675 lambda!234227)))

(declare-fun lt!1965677 () Unit!141814)

(assert (=> b!4814870 (= lt!1965677 lt!1965679)))

(declare-fun d!1541114 () Bool)

(assert (=> d!1541114 e!3008246))

(declare-fun res!2048054 () Bool)

(assert (=> d!1541114 (=> (not res!2048054) (not e!3008246))))

(assert (=> d!1541114 (= res!2048054 (noDuplicate!942 lt!1965673))))

(assert (=> d!1541114 (= lt!1965673 e!3008243)))

(declare-fun c!820636 () Bool)

(assert (=> d!1541114 (= c!820636 (is-Cons!54677 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))))))

(assert (=> d!1541114 (invariantList!1784 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))))

(assert (=> d!1541114 (= (getKeysList!1130 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))) lt!1965673)))

(declare-fun b!4814871 () Bool)

(assert (=> b!4814871 false))

(declare-fun Unit!141838 () Unit!141814)

(assert (=> b!4814871 (= e!3008245 Unit!141838)))

(declare-fun b!4814872 () Bool)

(assert (=> b!4814872 (= e!3008243 Nil!54681)))

(declare-fun b!4814873 () Bool)

(declare-fun res!2048055 () Bool)

(assert (=> b!4814873 (=> (not res!2048055) (not e!3008246))))

(assert (=> b!4814873 (= res!2048055 (= (length!740 lt!1965673) (length!741 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))))))

(declare-fun res!2048053 () Bool)

(assert (=> b!4814874 (=> (not res!2048053) (not e!3008246))))

(assert (=> b!4814874 (= res!2048053 (forall!12439 lt!1965673 lambda!234228))))

(declare-fun b!4814875 () Bool)

(declare-fun Unit!141839 () Unit!141814)

(assert (=> b!4814875 (= e!3008245 Unit!141839)))

(assert (= (and d!1541114 c!820636) b!4814870))

(assert (= (and d!1541114 (not c!820636)) b!4814872))

(assert (= (and b!4814870 c!820637) b!4814871))

(assert (= (and b!4814870 (not c!820637)) b!4814875))

(assert (= (and b!4814870 c!820638) b!4814868))

(assert (= (and b!4814870 (not c!820638)) b!4814869))

(assert (= (and d!1541114 res!2048054) b!4814873))

(assert (= (and b!4814873 res!2048055) b!4814874))

(assert (= (and b!4814874 res!2048053) b!4814867))

(declare-fun m!5800754 () Bool)

(assert (=> d!1541114 m!5800754))

(assert (=> d!1541114 m!5800670))

(declare-fun m!5800756 () Bool)

(assert (=> b!4814867 m!5800756))

(declare-fun m!5800758 () Bool)

(assert (=> b!4814867 m!5800758))

(assert (=> b!4814867 m!5800758))

(declare-fun m!5800760 () Bool)

(assert (=> b!4814867 m!5800760))

(declare-fun m!5800762 () Bool)

(assert (=> b!4814870 m!5800762))

(declare-fun m!5800764 () Bool)

(assert (=> b!4814870 m!5800764))

(declare-fun m!5800766 () Bool)

(assert (=> b!4814870 m!5800766))

(declare-fun m!5800768 () Bool)

(assert (=> b!4814870 m!5800768))

(declare-fun m!5800770 () Bool)

(assert (=> b!4814870 m!5800770))

(assert (=> b!4814870 m!5800768))

(declare-fun m!5800772 () Bool)

(assert (=> b!4814874 m!5800772))

(declare-fun m!5800774 () Bool)

(assert (=> b!4814873 m!5800774))

(assert (=> b!4814873 m!5800690))

(assert (=> b!4814868 m!5800768))

(assert (=> b!4814868 m!5800768))

(declare-fun m!5800776 () Bool)

(assert (=> b!4814868 m!5800776))

(assert (=> b!4814652 d!1541114))

(declare-fun d!1541116 () Bool)

(declare-fun noDuplicatedKeys!460 (List!54801) Bool)

(assert (=> d!1541116 (= (invariantList!1784 (toList!7250 lt!1965507)) (noDuplicatedKeys!460 (toList!7250 lt!1965507)))))

(declare-fun bs!1160418 () Bool)

(assert (= bs!1160418 d!1541116))

(declare-fun m!5800778 () Bool)

(assert (=> bs!1160418 m!5800778))

(assert (=> d!1541024 d!1541116))

(declare-fun d!1541118 () Bool)

(declare-fun res!2048056 () Bool)

(declare-fun e!3008247 () Bool)

(assert (=> d!1541118 (=> res!2048056 e!3008247)))

(assert (=> d!1541118 (= res!2048056 (is-Nil!54678 (toList!7249 lm!1254)))))

(assert (=> d!1541118 (= (forall!12437 (toList!7249 lm!1254) lambda!234163) e!3008247)))

(declare-fun b!4814878 () Bool)

(declare-fun e!3008248 () Bool)

(assert (=> b!4814878 (= e!3008247 e!3008248)))

(declare-fun res!2048057 () Bool)

(assert (=> b!4814878 (=> (not res!2048057) (not e!3008248))))

(assert (=> b!4814878 (= res!2048057 (dynLambda!22155 lambda!234163 (h!61110 (toList!7249 lm!1254))))))

(declare-fun b!4814879 () Bool)

(assert (=> b!4814879 (= e!3008248 (forall!12437 (t!362298 (toList!7249 lm!1254)) lambda!234163))))

(assert (= (and d!1541118 (not res!2048056)) b!4814878))

(assert (= (and b!4814878 res!2048057) b!4814879))

(declare-fun b_lambda!188367 () Bool)

(assert (=> (not b_lambda!188367) (not b!4814878)))

(declare-fun m!5800780 () Bool)

(assert (=> b!4814878 m!5800780))

(declare-fun m!5800782 () Bool)

(assert (=> b!4814879 m!5800782))

(assert (=> d!1541024 d!1541118))

(declare-fun d!1541120 () Bool)

(declare-fun res!2048058 () Bool)

(declare-fun e!3008249 () Bool)

(assert (=> d!1541120 (=> res!2048058 e!3008249)))

(assert (=> d!1541120 (= res!2048058 (and (is-Cons!54678 (t!362298 (toList!7249 lm!1254))) (= (_1!32126 (h!61110 (t!362298 (toList!7249 lm!1254)))) lt!1965453)))))

(assert (=> d!1541120 (= (containsKey!4215 (t!362298 (toList!7249 lm!1254)) lt!1965453) e!3008249)))

(declare-fun b!4814880 () Bool)

(declare-fun e!3008250 () Bool)

(assert (=> b!4814880 (= e!3008249 e!3008250)))

(declare-fun res!2048059 () Bool)

(assert (=> b!4814880 (=> (not res!2048059) (not e!3008250))))

(assert (=> b!4814880 (= res!2048059 (and (or (not (is-Cons!54678 (t!362298 (toList!7249 lm!1254)))) (bvsle (_1!32126 (h!61110 (t!362298 (toList!7249 lm!1254)))) lt!1965453)) (is-Cons!54678 (t!362298 (toList!7249 lm!1254))) (bvslt (_1!32126 (h!61110 (t!362298 (toList!7249 lm!1254)))) lt!1965453)))))

(declare-fun b!4814881 () Bool)

(assert (=> b!4814881 (= e!3008250 (containsKey!4215 (t!362298 (t!362298 (toList!7249 lm!1254))) lt!1965453))))

(assert (= (and d!1541120 (not res!2048058)) b!4814880))

(assert (= (and b!4814880 res!2048059) b!4814881))

(declare-fun m!5800784 () Bool)

(assert (=> b!4814881 m!5800784))

(assert (=> b!4814619 d!1541120))

(assert (=> b!4814622 d!1541112))

(assert (=> b!4814622 d!1541012))

(assert (=> b!4814651 d!1541100))

(declare-fun d!1541122 () Bool)

(declare-fun res!2048064 () Bool)

(declare-fun e!3008255 () Bool)

(assert (=> d!1541122 (=> res!2048064 e!3008255)))

(assert (=> d!1541122 (= res!2048064 (and (is-Cons!54677 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))) (= (_1!32125 (h!61109 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))) key!2670)))))

(assert (=> d!1541122 (= (containsKey!4217 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670) e!3008255)))

(declare-fun b!4814886 () Bool)

(declare-fun e!3008256 () Bool)

(assert (=> b!4814886 (= e!3008255 e!3008256)))

(declare-fun res!2048065 () Bool)

(assert (=> b!4814886 (=> (not res!2048065) (not e!3008256))))

(assert (=> b!4814886 (= res!2048065 (is-Cons!54677 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))))))

(declare-fun b!4814887 () Bool)

(assert (=> b!4814887 (= e!3008256 (containsKey!4217 (t!362297 (toList!7250 (extractMap!2583 (toList!7249 lm!1254)))) key!2670))))

(assert (= (and d!1541122 (not res!2048064)) b!4814886))

(assert (= (and b!4814886 res!2048065) b!4814887))

(declare-fun m!5800786 () Bool)

(assert (=> b!4814887 m!5800786))

(assert (=> b!4814649 d!1541122))

(declare-fun d!1541124 () Bool)

(assert (=> d!1541124 (containsKey!4217 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670)))

(declare-fun lt!1965682 () Unit!141814)

(declare-fun choose!34909 (List!54801 K!16322) Unit!141814)

(assert (=> d!1541124 (= lt!1965682 (choose!34909 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670))))

(assert (=> d!1541124 (invariantList!1784 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))))))

(assert (=> d!1541124 (= (lemmaInGetKeysListThenContainsKey!1130 (toList!7250 (extractMap!2583 (toList!7249 lm!1254))) key!2670) lt!1965682)))

(declare-fun bs!1160419 () Bool)

(assert (= bs!1160419 d!1541124))

(assert (=> bs!1160419 m!5800534))

(declare-fun m!5800788 () Bool)

(assert (=> bs!1160419 m!5800788))

(assert (=> bs!1160419 m!5800670))

(assert (=> b!4814649 d!1541124))

(assert (=> b!4814650 d!1541098))

(assert (=> b!4814650 d!1541100))

(declare-fun d!1541126 () Bool)

(declare-fun c!820641 () Bool)

(assert (=> d!1541126 (= c!820641 (is-Nil!54678 (toList!7249 lm!1254)))))

(declare-fun e!3008259 () (Set tuple2!57664))

(assert (=> d!1541126 (= (content!9787 (toList!7249 lm!1254)) e!3008259)))

(declare-fun b!4814892 () Bool)

(assert (=> b!4814892 (= e!3008259 (as set.empty (Set tuple2!57664)))))

(declare-fun b!4814893 () Bool)

(assert (=> b!4814893 (= e!3008259 (set.union (set.insert (h!61110 (toList!7249 lm!1254)) (as set.empty (Set tuple2!57664))) (content!9787 (t!362298 (toList!7249 lm!1254)))))))

(assert (= (and d!1541126 c!820641) b!4814892))

(assert (= (and d!1541126 (not c!820641)) b!4814893))

(declare-fun m!5800790 () Bool)

(assert (=> b!4814893 m!5800790))

(assert (=> b!4814893 m!5800746))

(assert (=> d!1541034 d!1541126))

(assert (=> d!1541018 d!1541112))

(assert (=> d!1541018 d!1541012))

(declare-fun d!1541128 () Bool)

(assert (=> d!1541128 (isDefined!10519 (getValueByKey!2545 (toList!7249 lm!1254) lt!1965453))))

(assert (=> d!1541128 true))

(declare-fun _$13!1642 () Unit!141814)

(assert (=> d!1541128 (= (choose!34902 (toList!7249 lm!1254) lt!1965453) _$13!1642)))

(declare-fun bs!1160420 () Bool)

(assert (= bs!1160420 d!1541128))

(assert (=> bs!1160420 m!5800476))

(assert (=> bs!1160420 m!5800476))

(assert (=> bs!1160420 m!5800520))

(assert (=> d!1541018 d!1541128))

(assert (=> d!1541018 d!1541010))

(declare-fun d!1541130 () Bool)

(declare-fun choose!34910 (Hashable!7133 K!16322) (_ BitVec 64))

(assert (=> d!1541130 (= (hash!5202 hashF!938 key!2670) (choose!34910 hashF!938 key!2670))))

(declare-fun bs!1160421 () Bool)

(assert (= bs!1160421 d!1541130))

(declare-fun m!5800792 () Bool)

(assert (=> bs!1160421 m!5800792))

(assert (=> d!1541038 d!1541130))

(assert (=> d!1541020 d!1541122))

(assert (=> b!4814699 d!1541112))

(assert (=> b!4814699 d!1541012))

(assert (=> d!1541016 d!1541014))

(declare-fun d!1541132 () Bool)

(assert (=> d!1541132 (containsKey!4215 (toList!7249 lm!1254) lt!1965453)))

(assert (=> d!1541132 true))

(declare-fun _$12!1241 () Unit!141814)

(assert (=> d!1541132 (= (choose!34901 (toList!7249 lm!1254) lt!1965453) _$12!1241)))

(declare-fun bs!1160422 () Bool)

(assert (= bs!1160422 d!1541132))

(assert (=> bs!1160422 m!5800474))

(assert (=> d!1541016 d!1541132))

(assert (=> d!1541016 d!1541010))

(declare-fun d!1541134 () Bool)

(declare-fun res!2048066 () Bool)

(declare-fun e!3008260 () Bool)

(assert (=> d!1541134 (=> res!2048066 e!3008260)))

(assert (=> d!1541134 (= res!2048066 (or (is-Nil!54678 (t!362298 (toList!7249 lm!1254))) (is-Nil!54678 (t!362298 (t!362298 (toList!7249 lm!1254))))))))

(assert (=> d!1541134 (= (isStrictlySorted!944 (t!362298 (toList!7249 lm!1254))) e!3008260)))

(declare-fun b!4814894 () Bool)

(declare-fun e!3008261 () Bool)

(assert (=> b!4814894 (= e!3008260 e!3008261)))

(declare-fun res!2048067 () Bool)

(assert (=> b!4814894 (=> (not res!2048067) (not e!3008261))))

(assert (=> b!4814894 (= res!2048067 (bvslt (_1!32126 (h!61110 (t!362298 (toList!7249 lm!1254)))) (_1!32126 (h!61110 (t!362298 (t!362298 (toList!7249 lm!1254)))))))))

(declare-fun b!4814895 () Bool)

(assert (=> b!4814895 (= e!3008261 (isStrictlySorted!944 (t!362298 (t!362298 (toList!7249 lm!1254)))))))

(assert (= (and d!1541134 (not res!2048066)) b!4814894))

(assert (= (and b!4814894 res!2048067) b!4814895))

(declare-fun m!5800794 () Bool)

(assert (=> b!4814895 m!5800794))

(assert (=> b!4814601 d!1541134))

(declare-fun d!1541136 () Bool)

(assert (=> d!1541136 (= (get!18709 (getValueByKey!2545 (toList!7249 lm!1254) lt!1965453)) (v!49024 (getValueByKey!2545 (toList!7249 lm!1254) lt!1965453)))))

(assert (=> d!1541040 d!1541136))

(assert (=> d!1541040 d!1541012))

(declare-fun tp!1361752 () Bool)

(declare-fun b!4814900 () Bool)

(declare-fun tp_is_empty!34139 () Bool)

(declare-fun e!3008264 () Bool)

(assert (=> b!4814900 (= e!3008264 (and tp_is_empty!34135 tp_is_empty!34139 tp!1361752))))

(assert (=> b!4814713 (= tp!1361742 e!3008264)))

(assert (= (and b!4814713 (is-Cons!54677 (_2!32126 (h!61110 (toList!7249 lm!1254))))) b!4814900))

(declare-fun b!4814901 () Bool)

(declare-fun e!3008265 () Bool)

(declare-fun tp!1361753 () Bool)

(declare-fun tp!1361754 () Bool)

(assert (=> b!4814901 (= e!3008265 (and tp!1361753 tp!1361754))))

(assert (=> b!4814713 (= tp!1361743 e!3008265)))

(assert (= (and b!4814713 (is-Cons!54678 (t!362298 (toList!7249 lm!1254)))) b!4814901))

(declare-fun b_lambda!188369 () Bool)

(assert (= b_lambda!188361 (or d!1541032 b_lambda!188369)))

(declare-fun bs!1160423 () Bool)

(declare-fun d!1541138 () Bool)

(assert (= bs!1160423 (and d!1541138 d!1541032)))

(assert (=> bs!1160423 (= (dynLambda!22155 lambda!234169 (h!61110 (toList!7249 lm!1254))) (noDuplicateKeys!2400 (_2!32126 (h!61110 (toList!7249 lm!1254)))))))

(assert (=> bs!1160423 m!5800574))

(assert (=> b!4814793 d!1541138))

(declare-fun b_lambda!188371 () Bool)

(assert (= b_lambda!188363 (or d!1541030 b_lambda!188371)))

(declare-fun bs!1160424 () Bool)

(declare-fun d!1541140 () Bool)

(assert (= bs!1160424 (and d!1541140 d!1541030)))

(declare-fun allKeysSameHash!1984 (List!54801 (_ BitVec 64) Hashable!7133) Bool)

(assert (=> bs!1160424 (= (dynLambda!22155 lambda!234166 (h!61110 (toList!7249 lm!1254))) (allKeysSameHash!1984 (_2!32126 (h!61110 (toList!7249 lm!1254))) (_1!32126 (h!61110 (toList!7249 lm!1254))) hashF!938))))

(declare-fun m!5800796 () Bool)

(assert (=> bs!1160424 m!5800796))

(assert (=> b!4814795 d!1541140))

(declare-fun b_lambda!188373 () Bool)

(assert (= b_lambda!188365 (or start!497986 b_lambda!188373)))

(declare-fun bs!1160425 () Bool)

(declare-fun d!1541142 () Bool)

(assert (= bs!1160425 (and d!1541142 start!497986)))

(assert (=> bs!1160425 (= (dynLambda!22155 lambda!234157 (h!61110 (t!362298 (toList!7249 lm!1254)))) (noDuplicateKeys!2400 (_2!32126 (h!61110 (t!362298 (toList!7249 lm!1254))))))))

(declare-fun m!5800798 () Bool)

(assert (=> bs!1160425 m!5800798))

(assert (=> b!4814822 d!1541142))

(declare-fun b_lambda!188375 () Bool)

(assert (= b_lambda!188367 (or d!1541024 b_lambda!188375)))

(declare-fun bs!1160426 () Bool)

(declare-fun d!1541144 () Bool)

(assert (= bs!1160426 (and d!1541144 d!1541024)))

(assert (=> bs!1160426 (= (dynLambda!22155 lambda!234163 (h!61110 (toList!7249 lm!1254))) (noDuplicateKeys!2400 (_2!32126 (h!61110 (toList!7249 lm!1254)))))))

(assert (=> bs!1160426 m!5800574))

(assert (=> b!4814878 d!1541144))

(push 1)

(assert (not bs!1160426))

(assert (not b!4814874))

(assert (not b_lambda!188369))

(assert (not d!1541092))

(assert (not bm!335934))

(assert (not d!1541112))

(assert (not b!4814789))

(assert (not d!1541108))

(assert (not b!4814881))

(assert (not bs!1160424))

(assert (not b_lambda!188355))

(assert (not b!4814870))

(assert (not bs!1160425))

(assert (not b!4814794))

(assert (not b!4814790))

(assert (not b!4814893))

(assert (not d!1541124))

(assert (not b!4814887))

(assert (not d!1541116))

(assert (not b!4814818))

(assert (not b!4814867))

(assert (not b!4814792))

(assert (not b!4814826))

(assert (not b!4814819))

(assert (not b!4814782))

(assert (not b_lambda!188375))

(assert (not d!1541080))

(assert (not b_lambda!188371))

(assert (not b!4814901))

(assert (not d!1541098))

(assert (not bm!335936))

(assert (not d!1541130))

(assert (not b!4814841))

(assert (not d!1541082))

(assert (not b!4814783))

(assert (not b!4814810))

(assert (not d!1541128))

(assert (not b!4814879))

(assert (not d!1541114))

(assert (not d!1541090))

(assert tp_is_empty!34135)

(assert (not d!1541110))

(assert (not d!1541078))

(assert (not b_lambda!188373))

(assert (not b!4814817))

(assert (not b!4814868))

(assert (not d!1541106))

(assert (not b!4814842))

(assert (not d!1541132))

(assert (not b!4814900))

(assert (not b!4814823))

(assert tp_is_empty!34139)

(assert (not b!4814807))

(assert (not b!4814839))

(assert (not bm!335935))

(assert (not b!4814895))

(assert (not b!4814873))

(assert (not bs!1160423))

(assert (not d!1541096))

(assert (not b!4814845))

(assert (not b!4814796))

(assert (not d!1541100))

(assert (not b!4814848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

