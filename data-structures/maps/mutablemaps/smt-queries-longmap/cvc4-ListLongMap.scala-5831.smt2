; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75282 () Bool)

(assert start!75282)

(declare-fun res!601892 () Bool)

(declare-fun e!493499 () Bool)

(assert (=> start!75282 (=> (not res!601892) (not e!493499))))

(declare-datatypes ((B!1308 0))(
  ( (B!1309 (val!8960 Int)) )
))
(declare-datatypes ((tuple2!11940 0))(
  ( (tuple2!11941 (_1!5980 (_ BitVec 64)) (_2!5980 B!1308)) )
))
(declare-datatypes ((List!17760 0))(
  ( (Nil!17757) (Cons!17756 (h!18887 tuple2!11940) (t!25048 List!17760)) )
))
(declare-fun l!906 () List!17760)

(declare-fun isStrictlySorted!490 (List!17760) Bool)

(assert (=> start!75282 (= res!601892 (isStrictlySorted!490 l!906))))

(assert (=> start!75282 e!493499))

(declare-fun e!493498 () Bool)

(assert (=> start!75282 e!493498))

(assert (=> start!75282 true))

(declare-fun tp_is_empty!17819 () Bool)

(assert (=> start!75282 tp_is_empty!17819))

(declare-fun b!886460 () Bool)

(declare-fun res!601891 () Bool)

(assert (=> b!886460 (=> (not res!601891) (not e!493499))))

(declare-fun key1!49 () (_ BitVec 64))

(assert (=> b!886460 (= res!601891 (or (not (is-Cons!17756 l!906)) (bvsge (_1!5980 (h!18887 l!906)) key1!49)))))

(declare-fun b!886461 () Bool)

(declare-fun v1!38 () B!1308)

(declare-fun v2!16 () B!1308)

(declare-fun insertStrictlySorted!302 (List!17760 (_ BitVec 64) B!1308) List!17760)

(assert (=> b!886461 (= e!493499 (not (= (insertStrictlySorted!302 (insertStrictlySorted!302 l!906 key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!302 l!906 key1!49 v2!16))))))

(declare-fun b!886462 () Bool)

(declare-fun tp!54393 () Bool)

(assert (=> b!886462 (= e!493498 (and tp_is_empty!17819 tp!54393))))

(assert (= (and start!75282 res!601892) b!886460))

(assert (= (and b!886460 res!601891) b!886461))

(assert (= (and start!75282 (is-Cons!17756 l!906)) b!886462))

(declare-fun m!826455 () Bool)

(assert (=> start!75282 m!826455))

(declare-fun m!826457 () Bool)

(assert (=> b!886461 m!826457))

(assert (=> b!886461 m!826457))

(declare-fun m!826459 () Bool)

(assert (=> b!886461 m!826459))

(declare-fun m!826461 () Bool)

(assert (=> b!886461 m!826461))

(push 1)

(assert (not start!75282))

(assert (not b!886461))

(assert (not b!886462))

(assert tp_is_empty!17819)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109671 () Bool)

(declare-fun res!601901 () Bool)

(declare-fun e!493508 () Bool)

(assert (=> d!109671 (=> res!601901 e!493508)))

(assert (=> d!109671 (= res!601901 (or (is-Nil!17757 l!906) (is-Nil!17757 (t!25048 l!906))))))

(assert (=> d!109671 (= (isStrictlySorted!490 l!906) e!493508)))

(declare-fun b!886471 () Bool)

(declare-fun e!493509 () Bool)

(assert (=> b!886471 (= e!493508 e!493509)))

(declare-fun res!601902 () Bool)

(assert (=> b!886471 (=> (not res!601902) (not e!493509))))

(assert (=> b!886471 (= res!601902 (bvslt (_1!5980 (h!18887 l!906)) (_1!5980 (h!18887 (t!25048 l!906)))))))

(declare-fun b!886472 () Bool)

(assert (=> b!886472 (= e!493509 (isStrictlySorted!490 (t!25048 l!906)))))

(assert (= (and d!109671 (not res!601901)) b!886471))

(assert (= (and b!886471 res!601902) b!886472))

(declare-fun m!826463 () Bool)

(assert (=> b!886472 m!826463))

(assert (=> start!75282 d!109671))

(declare-fun d!109673 () Bool)

(declare-fun e!493559 () Bool)

(assert (=> d!109673 e!493559))

(declare-fun res!601923 () Bool)

(assert (=> d!109673 (=> (not res!601923) (not e!493559))))

(declare-fun lt!401098 () List!17760)

(assert (=> d!109673 (= res!601923 (isStrictlySorted!490 lt!401098))))

(declare-fun e!493558 () List!17760)

(assert (=> d!109673 (= lt!401098 e!493558)))

(declare-fun c!93473 () Bool)

(assert (=> d!109673 (= c!93473 (and (is-Cons!17756 (insertStrictlySorted!302 l!906 key1!49 v1!38)) (bvslt (_1!5980 (h!18887 (insertStrictlySorted!302 l!906 key1!49 v1!38))) key1!49)))))

(assert (=> d!109673 (isStrictlySorted!490 (insertStrictlySorted!302 l!906 key1!49 v1!38))))

(assert (=> d!109673 (= (insertStrictlySorted!302 (insertStrictlySorted!302 l!906 key1!49 v1!38) key1!49 v2!16) lt!401098)))

(declare-fun b!886565 () Bool)

(declare-fun contains!4295 (List!17760 tuple2!11940) Bool)

(assert (=> b!886565 (= e!493559 (contains!4295 lt!401098 (tuple2!11941 key1!49 v2!16)))))

(declare-fun b!886566 () Bool)

(declare-fun res!601924 () Bool)

(assert (=> b!886566 (=> (not res!601924) (not e!493559))))

(declare-fun containsKey!417 (List!17760 (_ BitVec 64)) Bool)

(assert (=> b!886566 (= res!601924 (containsKey!417 lt!401098 key1!49))))

(declare-fun bm!39281 () Bool)

(declare-fun call!39284 () List!17760)

(declare-fun call!39286 () List!17760)

(assert (=> bm!39281 (= call!39284 call!39286)))

(declare-fun c!93476 () Bool)

(declare-fun b!886567 () Bool)

(assert (=> b!886567 (= c!93476 (and (is-Cons!17756 (insertStrictlySorted!302 l!906 key1!49 v1!38)) (bvsgt (_1!5980 (h!18887 (insertStrictlySorted!302 l!906 key1!49 v1!38))) key1!49)))))

(declare-fun e!493557 () List!17760)

(declare-fun e!493560 () List!17760)

(assert (=> b!886567 (= e!493557 e!493560)))

(declare-fun b!886568 () Bool)

(assert (=> b!886568 (= e!493558 e!493557)))

(declare-fun c!93474 () Bool)

(assert (=> b!886568 (= c!93474 (and (is-Cons!17756 (insertStrictlySorted!302 l!906 key1!49 v1!38)) (= (_1!5980 (h!18887 (insertStrictlySorted!302 l!906 key1!49 v1!38))) key1!49)))))

(declare-fun b!886569 () Bool)

(assert (=> b!886569 (= e!493560 call!39284)))

(declare-fun e!493561 () List!17760)

(declare-fun bm!39282 () Bool)

(declare-fun call!39285 () List!17760)

(declare-fun $colon$colon!552 (List!17760 tuple2!11940) List!17760)

(assert (=> bm!39282 (= call!39285 ($colon$colon!552 e!493561 (ite c!93473 (h!18887 (insertStrictlySorted!302 l!906 key1!49 v1!38)) (tuple2!11941 key1!49 v2!16))))))

(declare-fun c!93475 () Bool)

(assert (=> bm!39282 (= c!93475 c!93473)))

(declare-fun bm!39283 () Bool)

(assert (=> bm!39283 (= call!39286 call!39285)))

(declare-fun b!886570 () Bool)

(assert (=> b!886570 (= e!493557 call!39286)))

(declare-fun b!886571 () Bool)

(assert (=> b!886571 (= e!493561 (insertStrictlySorted!302 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38)) key1!49 v2!16))))

(declare-fun b!886572 () Bool)

(assert (=> b!886572 (= e!493558 call!39285)))

(declare-fun b!886573 () Bool)

(assert (=> b!886573 (= e!493560 call!39284)))

(declare-fun b!886574 () Bool)

(assert (=> b!886574 (= e!493561 (ite c!93474 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38)) (ite c!93476 (Cons!17756 (h!18887 (insertStrictlySorted!302 l!906 key1!49 v1!38)) (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38))) Nil!17757)))))

(assert (= (and d!109673 c!93473) b!886572))

(assert (= (and d!109673 (not c!93473)) b!886568))

(assert (= (and b!886568 c!93474) b!886570))

(assert (= (and b!886568 (not c!93474)) b!886567))

(assert (= (and b!886567 c!93476) b!886569))

(assert (= (and b!886567 (not c!93476)) b!886573))

(assert (= (or b!886569 b!886573) bm!39281))

(assert (= (or b!886570 bm!39281) bm!39283))

(assert (= (or b!886572 bm!39283) bm!39282))

(assert (= (and bm!39282 c!93475) b!886571))

(assert (= (and bm!39282 (not c!93475)) b!886574))

(assert (= (and d!109673 res!601923) b!886566))

(assert (= (and b!886566 res!601924) b!886565))

(declare-fun m!826499 () Bool)

(assert (=> b!886566 m!826499))

(declare-fun m!826501 () Bool)

(assert (=> d!109673 m!826501))

(assert (=> d!109673 m!826457))

(declare-fun m!826503 () Bool)

(assert (=> d!109673 m!826503))

(declare-fun m!826505 () Bool)

(assert (=> b!886565 m!826505))

(declare-fun m!826507 () Bool)

(assert (=> bm!39282 m!826507))

(declare-fun m!826509 () Bool)

(assert (=> b!886571 m!826509))

(assert (=> b!886461 d!109673))

(declare-fun d!109683 () Bool)

(declare-fun e!493573 () Bool)

(assert (=> d!109683 e!493573))

(declare-fun res!601931 () Bool)

(assert (=> d!109683 (=> (not res!601931) (not e!493573))))

(declare-fun lt!401100 () List!17760)

(assert (=> d!109683 (= res!601931 (isStrictlySorted!490 lt!401100))))

(declare-fun e!493572 () List!17760)

(assert (=> d!109683 (= lt!401100 e!493572)))

(declare-fun c!93481 () Bool)

(assert (=> d!109683 (= c!93481 (and (is-Cons!17756 l!906) (bvslt (_1!5980 (h!18887 l!906)) key1!49)))))

(assert (=> d!109683 (isStrictlySorted!490 l!906)))

(assert (=> d!109683 (= (insertStrictlySorted!302 l!906 key1!49 v1!38) lt!401100)))

(declare-fun b!886589 () Bool)

(assert (=> b!886589 (= e!493573 (contains!4295 lt!401100 (tuple2!11941 key1!49 v1!38)))))

(declare-fun b!886590 () Bool)

(declare-fun res!601932 () Bool)

(assert (=> b!886590 (=> (not res!601932) (not e!493573))))

(assert (=> b!886590 (= res!601932 (containsKey!417 lt!401100 key1!49))))

(declare-fun bm!39287 () Bool)

(declare-fun call!39290 () List!17760)

(declare-fun call!39292 () List!17760)

(assert (=> bm!39287 (= call!39290 call!39292)))

(declare-fun b!886591 () Bool)

(declare-fun c!93484 () Bool)

(assert (=> b!886591 (= c!93484 (and (is-Cons!17756 l!906) (bvsgt (_1!5980 (h!18887 l!906)) key1!49)))))

(declare-fun e!493571 () List!17760)

(declare-fun e!493574 () List!17760)

(assert (=> b!886591 (= e!493571 e!493574)))

(declare-fun b!886592 () Bool)

(assert (=> b!886592 (= e!493572 e!493571)))

(declare-fun c!93482 () Bool)

(assert (=> b!886592 (= c!93482 (and (is-Cons!17756 l!906) (= (_1!5980 (h!18887 l!906)) key1!49)))))

(declare-fun b!886593 () Bool)

(assert (=> b!886593 (= e!493574 call!39290)))

(declare-fun call!39291 () List!17760)

(declare-fun bm!39288 () Bool)

(declare-fun e!493575 () List!17760)

(assert (=> bm!39288 (= call!39291 ($colon$colon!552 e!493575 (ite c!93481 (h!18887 l!906) (tuple2!11941 key1!49 v1!38))))))

(declare-fun c!93483 () Bool)

(assert (=> bm!39288 (= c!93483 c!93481)))

(declare-fun bm!39289 () Bool)

(assert (=> bm!39289 (= call!39292 call!39291)))

(declare-fun b!886594 () Bool)

(assert (=> b!886594 (= e!493571 call!39292)))

(declare-fun b!886595 () Bool)

(assert (=> b!886595 (= e!493575 (insertStrictlySorted!302 (t!25048 l!906) key1!49 v1!38))))

(declare-fun b!886596 () Bool)

(assert (=> b!886596 (= e!493572 call!39291)))

(declare-fun b!886597 () Bool)

(assert (=> b!886597 (= e!493574 call!39290)))

(declare-fun b!886598 () Bool)

(assert (=> b!886598 (= e!493575 (ite c!93482 (t!25048 l!906) (ite c!93484 (Cons!17756 (h!18887 l!906) (t!25048 l!906)) Nil!17757)))))

(assert (= (and d!109683 c!93481) b!886596))

(assert (= (and d!109683 (not c!93481)) b!886592))

(assert (= (and b!886592 c!93482) b!886594))

(assert (= (and b!886592 (not c!93482)) b!886591))

(assert (= (and b!886591 c!93484) b!886593))

(assert (= (and b!886591 (not c!93484)) b!886597))

(assert (= (or b!886593 b!886597) bm!39287))

(assert (= (or b!886594 bm!39287) bm!39289))

(assert (= (or b!886596 bm!39289) bm!39288))

(assert (= (and bm!39288 c!93483) b!886595))

(assert (= (and bm!39288 (not c!93483)) b!886598))

(assert (= (and d!109683 res!601931) b!886590))

(assert (= (and b!886590 res!601932) b!886589))

(declare-fun m!826525 () Bool)

(assert (=> b!886590 m!826525))

(declare-fun m!826527 () Bool)

(assert (=> d!109683 m!826527))

(assert (=> d!109683 m!826455))

(declare-fun m!826529 () Bool)

(assert (=> b!886589 m!826529))

(declare-fun m!826531 () Bool)

(assert (=> bm!39288 m!826531))

(declare-fun m!826533 () Bool)

(assert (=> b!886595 m!826533))

(assert (=> b!886461 d!109683))

(declare-fun d!109687 () Bool)

(declare-fun e!493588 () Bool)

(assert (=> d!109687 e!493588))

(declare-fun res!601937 () Bool)

(assert (=> d!109687 (=> (not res!601937) (not e!493588))))

(declare-fun lt!401102 () List!17760)

(assert (=> d!109687 (= res!601937 (isStrictlySorted!490 lt!401102))))

(declare-fun e!493587 () List!17760)

(assert (=> d!109687 (= lt!401102 e!493587)))

(declare-fun c!93489 () Bool)

(assert (=> d!109687 (= c!93489 (and (is-Cons!17756 l!906) (bvslt (_1!5980 (h!18887 l!906)) key1!49)))))

(assert (=> d!109687 (isStrictlySorted!490 l!906)))

(assert (=> d!109687 (= (insertStrictlySorted!302 l!906 key1!49 v2!16) lt!401102)))

(declare-fun b!886616 () Bool)

(assert (=> b!886616 (= e!493588 (contains!4295 lt!401102 (tuple2!11941 key1!49 v2!16)))))

(declare-fun b!886617 () Bool)

(declare-fun res!601938 () Bool)

(assert (=> b!886617 (=> (not res!601938) (not e!493588))))

(assert (=> b!886617 (= res!601938 (containsKey!417 lt!401102 key1!49))))

(declare-fun bm!39293 () Bool)

(declare-fun call!39296 () List!17760)

(declare-fun call!39298 () List!17760)

(assert (=> bm!39293 (= call!39296 call!39298)))

(declare-fun b!886618 () Bool)

(declare-fun c!93492 () Bool)

(assert (=> b!886618 (= c!93492 (and (is-Cons!17756 l!906) (bvsgt (_1!5980 (h!18887 l!906)) key1!49)))))

(declare-fun e!493586 () List!17760)

(declare-fun e!493589 () List!17760)

(assert (=> b!886618 (= e!493586 e!493589)))

(declare-fun b!886619 () Bool)

(assert (=> b!886619 (= e!493587 e!493586)))

(declare-fun c!93490 () Bool)

(assert (=> b!886619 (= c!93490 (and (is-Cons!17756 l!906) (= (_1!5980 (h!18887 l!906)) key1!49)))))

(declare-fun b!886620 () Bool)

(assert (=> b!886620 (= e!493589 call!39296)))

(declare-fun e!493590 () List!17760)

(declare-fun call!39297 () List!17760)

(declare-fun bm!39294 () Bool)

(assert (=> bm!39294 (= call!39297 ($colon$colon!552 e!493590 (ite c!93489 (h!18887 l!906) (tuple2!11941 key1!49 v2!16))))))

(declare-fun c!93491 () Bool)

(assert (=> bm!39294 (= c!93491 c!93489)))

(declare-fun bm!39295 () Bool)

(assert (=> bm!39295 (= call!39298 call!39297)))

(declare-fun b!886621 () Bool)

(assert (=> b!886621 (= e!493586 call!39298)))

(declare-fun b!886622 () Bool)

(assert (=> b!886622 (= e!493590 (insertStrictlySorted!302 (t!25048 l!906) key1!49 v2!16))))

(declare-fun b!886623 () Bool)

(assert (=> b!886623 (= e!493587 call!39297)))

(declare-fun b!886624 () Bool)

(assert (=> b!886624 (= e!493589 call!39296)))

(declare-fun b!886625 () Bool)

(assert (=> b!886625 (= e!493590 (ite c!93490 (t!25048 l!906) (ite c!93492 (Cons!17756 (h!18887 l!906) (t!25048 l!906)) Nil!17757)))))

(assert (= (and d!109687 c!93489) b!886623))

(assert (= (and d!109687 (not c!93489)) b!886619))

(assert (= (and b!886619 c!93490) b!886621))

(assert (= (and b!886619 (not c!93490)) b!886618))

(assert (= (and b!886618 c!93492) b!886620))

(assert (= (and b!886618 (not c!93492)) b!886624))

(assert (= (or b!886620 b!886624) bm!39293))

(assert (= (or b!886621 bm!39293) bm!39295))

(assert (= (or b!886623 bm!39295) bm!39294))

(assert (= (and bm!39294 c!93491) b!886622))

(assert (= (and bm!39294 (not c!93491)) b!886625))

(assert (= (and d!109687 res!601937) b!886617))

(assert (= (and b!886617 res!601938) b!886616))

(declare-fun m!826545 () Bool)

(assert (=> b!886617 m!826545))

(declare-fun m!826547 () Bool)

(assert (=> d!109687 m!826547))

(assert (=> d!109687 m!826455))

(declare-fun m!826549 () Bool)

(assert (=> b!886616 m!826549))

(declare-fun m!826551 () Bool)

(assert (=> bm!39294 m!826551))

(declare-fun m!826553 () Bool)

(assert (=> b!886622 m!826553))

(assert (=> b!886461 d!109687))

(declare-fun b!886644 () Bool)

(declare-fun e!493600 () Bool)

(declare-fun tp!54399 () Bool)

(assert (=> b!886644 (= e!493600 (and tp_is_empty!17819 tp!54399))))

(assert (=> b!886462 (= tp!54393 e!493600)))

(assert (= (and b!886462 (is-Cons!17756 (t!25048 l!906))) b!886644))

(push 1)

(assert tp_is_empty!17819)

(assert (not b!886622))

(assert (not b!886589))

(assert (not bm!39288))

(assert (not b!886644))

(assert (not b!886565))

(assert (not b!886617))

(assert (not bm!39294))

(assert (not d!109673))

(assert (not b!886590))

(assert (not b!886472))

(assert (not bm!39282))

(assert (not d!109683))

(assert (not b!886616))

(assert (not d!109687))

(assert (not b!886595))

(assert (not b!886566))

(assert (not b!886571))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109759 () Bool)

(declare-fun res!602017 () Bool)

(declare-fun e!493698 () Bool)

(assert (=> d!109759 (=> res!602017 e!493698)))

(assert (=> d!109759 (= res!602017 (and (is-Cons!17756 lt!401098) (= (_1!5980 (h!18887 lt!401098)) key1!49)))))

(assert (=> d!109759 (= (containsKey!417 lt!401098 key1!49) e!493698)))

(declare-fun b!886772 () Bool)

(declare-fun e!493699 () Bool)

(assert (=> b!886772 (= e!493698 e!493699)))

(declare-fun res!602018 () Bool)

(assert (=> b!886772 (=> (not res!602018) (not e!493699))))

(assert (=> b!886772 (= res!602018 (and (or (not (is-Cons!17756 lt!401098)) (bvsle (_1!5980 (h!18887 lt!401098)) key1!49)) (is-Cons!17756 lt!401098) (bvslt (_1!5980 (h!18887 lt!401098)) key1!49)))))

(declare-fun b!886773 () Bool)

(assert (=> b!886773 (= e!493699 (containsKey!417 (t!25048 lt!401098) key1!49))))

(assert (= (and d!109759 (not res!602017)) b!886772))

(assert (= (and b!886772 res!602018) b!886773))

(declare-fun m!826693 () Bool)

(assert (=> b!886773 m!826693))

(assert (=> b!886566 d!109759))

(declare-fun d!109761 () Bool)

(declare-fun res!602019 () Bool)

(declare-fun e!493700 () Bool)

(assert (=> d!109761 (=> res!602019 e!493700)))

(assert (=> d!109761 (= res!602019 (or (is-Nil!17757 lt!401102) (is-Nil!17757 (t!25048 lt!401102))))))

(assert (=> d!109761 (= (isStrictlySorted!490 lt!401102) e!493700)))

(declare-fun b!886774 () Bool)

(declare-fun e!493701 () Bool)

(assert (=> b!886774 (= e!493700 e!493701)))

(declare-fun res!602020 () Bool)

(assert (=> b!886774 (=> (not res!602020) (not e!493701))))

(assert (=> b!886774 (= res!602020 (bvslt (_1!5980 (h!18887 lt!401102)) (_1!5980 (h!18887 (t!25048 lt!401102)))))))

(declare-fun b!886775 () Bool)

(assert (=> b!886775 (= e!493701 (isStrictlySorted!490 (t!25048 lt!401102)))))

(assert (= (and d!109761 (not res!602019)) b!886774))

(assert (= (and b!886774 res!602020) b!886775))

(declare-fun m!826695 () Bool)

(assert (=> b!886775 m!826695))

(assert (=> d!109687 d!109761))

(assert (=> d!109687 d!109671))

(declare-fun d!109763 () Bool)

(declare-fun res!602021 () Bool)

(declare-fun e!493702 () Bool)

(assert (=> d!109763 (=> res!602021 e!493702)))

(assert (=> d!109763 (= res!602021 (and (is-Cons!17756 lt!401100) (= (_1!5980 (h!18887 lt!401100)) key1!49)))))

(assert (=> d!109763 (= (containsKey!417 lt!401100 key1!49) e!493702)))

(declare-fun b!886776 () Bool)

(declare-fun e!493703 () Bool)

(assert (=> b!886776 (= e!493702 e!493703)))

(declare-fun res!602022 () Bool)

(assert (=> b!886776 (=> (not res!602022) (not e!493703))))

(assert (=> b!886776 (= res!602022 (and (or (not (is-Cons!17756 lt!401100)) (bvsle (_1!5980 (h!18887 lt!401100)) key1!49)) (is-Cons!17756 lt!401100) (bvslt (_1!5980 (h!18887 lt!401100)) key1!49)))))

(declare-fun b!886777 () Bool)

(assert (=> b!886777 (= e!493703 (containsKey!417 (t!25048 lt!401100) key1!49))))

(assert (= (and d!109763 (not res!602021)) b!886776))

(assert (= (and b!886776 res!602022) b!886777))

(declare-fun m!826697 () Bool)

(assert (=> b!886777 m!826697))

(assert (=> b!886590 d!109763))

(declare-fun d!109765 () Bool)

(declare-fun lt!401122 () Bool)

(declare-fun content!401 (List!17760) (Set tuple2!11940))

(assert (=> d!109765 (= lt!401122 (member (tuple2!11941 key1!49 v1!38) (content!401 lt!401100)))))

(declare-fun e!493709 () Bool)

(assert (=> d!109765 (= lt!401122 e!493709)))

(declare-fun res!602028 () Bool)

(assert (=> d!109765 (=> (not res!602028) (not e!493709))))

(assert (=> d!109765 (= res!602028 (is-Cons!17756 lt!401100))))

(assert (=> d!109765 (= (contains!4295 lt!401100 (tuple2!11941 key1!49 v1!38)) lt!401122)))

(declare-fun b!886782 () Bool)

(declare-fun e!493708 () Bool)

(assert (=> b!886782 (= e!493709 e!493708)))

(declare-fun res!602027 () Bool)

(assert (=> b!886782 (=> res!602027 e!493708)))

(assert (=> b!886782 (= res!602027 (= (h!18887 lt!401100) (tuple2!11941 key1!49 v1!38)))))

(declare-fun b!886783 () Bool)

(assert (=> b!886783 (= e!493708 (contains!4295 (t!25048 lt!401100) (tuple2!11941 key1!49 v1!38)))))

(assert (= (and d!109765 res!602028) b!886782))

(assert (= (and b!886782 (not res!602027)) b!886783))

(declare-fun m!826699 () Bool)

(assert (=> d!109765 m!826699))

(declare-fun m!826701 () Bool)

(assert (=> d!109765 m!826701))

(declare-fun m!826703 () Bool)

(assert (=> b!886783 m!826703))

(assert (=> b!886589 d!109765))

(declare-fun lt!401123 () Bool)

(declare-fun d!109767 () Bool)

(assert (=> d!109767 (= lt!401123 (member (tuple2!11941 key1!49 v2!16) (content!401 lt!401098)))))

(declare-fun e!493711 () Bool)

(assert (=> d!109767 (= lt!401123 e!493711)))

(declare-fun res!602030 () Bool)

(assert (=> d!109767 (=> (not res!602030) (not e!493711))))

(assert (=> d!109767 (= res!602030 (is-Cons!17756 lt!401098))))

(assert (=> d!109767 (= (contains!4295 lt!401098 (tuple2!11941 key1!49 v2!16)) lt!401123)))

(declare-fun b!886784 () Bool)

(declare-fun e!493710 () Bool)

(assert (=> b!886784 (= e!493711 e!493710)))

(declare-fun res!602029 () Bool)

(assert (=> b!886784 (=> res!602029 e!493710)))

(assert (=> b!886784 (= res!602029 (= (h!18887 lt!401098) (tuple2!11941 key1!49 v2!16)))))

(declare-fun b!886785 () Bool)

(assert (=> b!886785 (= e!493710 (contains!4295 (t!25048 lt!401098) (tuple2!11941 key1!49 v2!16)))))

(assert (= (and d!109767 res!602030) b!886784))

(assert (= (and b!886784 (not res!602029)) b!886785))

(declare-fun m!826705 () Bool)

(assert (=> d!109767 m!826705))

(declare-fun m!826707 () Bool)

(assert (=> d!109767 m!826707))

(declare-fun m!826709 () Bool)

(assert (=> b!886785 m!826709))

(assert (=> b!886565 d!109767))

(declare-fun d!109769 () Bool)

(declare-fun res!602031 () Bool)

(declare-fun e!493712 () Bool)

(assert (=> d!109769 (=> res!602031 e!493712)))

(assert (=> d!109769 (= res!602031 (and (is-Cons!17756 lt!401102) (= (_1!5980 (h!18887 lt!401102)) key1!49)))))

(assert (=> d!109769 (= (containsKey!417 lt!401102 key1!49) e!493712)))

(declare-fun b!886786 () Bool)

(declare-fun e!493713 () Bool)

(assert (=> b!886786 (= e!493712 e!493713)))

(declare-fun res!602032 () Bool)

(assert (=> b!886786 (=> (not res!602032) (not e!493713))))

(assert (=> b!886786 (= res!602032 (and (or (not (is-Cons!17756 lt!401102)) (bvsle (_1!5980 (h!18887 lt!401102)) key1!49)) (is-Cons!17756 lt!401102) (bvslt (_1!5980 (h!18887 lt!401102)) key1!49)))))

(declare-fun b!886787 () Bool)

(assert (=> b!886787 (= e!493713 (containsKey!417 (t!25048 lt!401102) key1!49))))

(assert (= (and d!109769 (not res!602031)) b!886786))

(assert (= (and b!886786 res!602032) b!886787))

(declare-fun m!826711 () Bool)

(assert (=> b!886787 m!826711))

(assert (=> b!886617 d!109769))

(declare-fun d!109771 () Bool)

(declare-fun e!493716 () Bool)

(assert (=> d!109771 e!493716))

(declare-fun res!602033 () Bool)

(assert (=> d!109771 (=> (not res!602033) (not e!493716))))

(declare-fun lt!401124 () List!17760)

(assert (=> d!109771 (= res!602033 (isStrictlySorted!490 lt!401124))))

(declare-fun e!493715 () List!17760)

(assert (=> d!109771 (= lt!401124 e!493715)))

(declare-fun c!93521 () Bool)

(assert (=> d!109771 (= c!93521 (and (is-Cons!17756 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38))) (bvslt (_1!5980 (h!18887 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38)))) key1!49)))))

(assert (=> d!109771 (isStrictlySorted!490 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38)))))

(assert (=> d!109771 (= (insertStrictlySorted!302 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38)) key1!49 v2!16) lt!401124)))

(declare-fun b!886788 () Bool)

(assert (=> b!886788 (= e!493716 (contains!4295 lt!401124 (tuple2!11941 key1!49 v2!16)))))

(declare-fun b!886789 () Bool)

(declare-fun res!602034 () Bool)

(assert (=> b!886789 (=> (not res!602034) (not e!493716))))

(assert (=> b!886789 (= res!602034 (containsKey!417 lt!401124 key1!49))))

(declare-fun bm!39317 () Bool)

(declare-fun call!39320 () List!17760)

(declare-fun call!39322 () List!17760)

(assert (=> bm!39317 (= call!39320 call!39322)))

(declare-fun c!93524 () Bool)

(declare-fun b!886790 () Bool)

(assert (=> b!886790 (= c!93524 (and (is-Cons!17756 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38))) (bvsgt (_1!5980 (h!18887 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38)))) key1!49)))))

(declare-fun e!493714 () List!17760)

(declare-fun e!493717 () List!17760)

(assert (=> b!886790 (= e!493714 e!493717)))

(declare-fun b!886791 () Bool)

(assert (=> b!886791 (= e!493715 e!493714)))

(declare-fun c!93522 () Bool)

(assert (=> b!886791 (= c!93522 (and (is-Cons!17756 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38))) (= (_1!5980 (h!18887 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38)))) key1!49)))))

(declare-fun b!886792 () Bool)

(assert (=> b!886792 (= e!493717 call!39320)))

(declare-fun bm!39318 () Bool)

(declare-fun e!493718 () List!17760)

(declare-fun call!39321 () List!17760)

(assert (=> bm!39318 (= call!39321 ($colon$colon!552 e!493718 (ite c!93521 (h!18887 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38))) (tuple2!11941 key1!49 v2!16))))))

(declare-fun c!93523 () Bool)

(assert (=> bm!39318 (= c!93523 c!93521)))

(declare-fun bm!39319 () Bool)

(assert (=> bm!39319 (= call!39322 call!39321)))

(declare-fun b!886793 () Bool)

(assert (=> b!886793 (= e!493714 call!39322)))

(declare-fun b!886794 () Bool)

(assert (=> b!886794 (= e!493718 (insertStrictlySorted!302 (t!25048 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38))) key1!49 v2!16))))

(declare-fun b!886795 () Bool)

(assert (=> b!886795 (= e!493715 call!39321)))

(declare-fun b!886796 () Bool)

(assert (=> b!886796 (= e!493717 call!39320)))

(declare-fun b!886797 () Bool)

(assert (=> b!886797 (= e!493718 (ite c!93522 (t!25048 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38))) (ite c!93524 (Cons!17756 (h!18887 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38))) (t!25048 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38)))) Nil!17757)))))

(assert (= (and d!109771 c!93521) b!886795))

(assert (= (and d!109771 (not c!93521)) b!886791))

(assert (= (and b!886791 c!93522) b!886793))

(assert (= (and b!886791 (not c!93522)) b!886790))

(assert (= (and b!886790 c!93524) b!886792))

(assert (= (and b!886790 (not c!93524)) b!886796))

(assert (= (or b!886792 b!886796) bm!39317))

(assert (= (or b!886793 bm!39317) bm!39319))

(assert (= (or b!886795 bm!39319) bm!39318))

(assert (= (and bm!39318 c!93523) b!886794))

(assert (= (and bm!39318 (not c!93523)) b!886797))

(assert (= (and d!109771 res!602033) b!886789))

(assert (= (and b!886789 res!602034) b!886788))

(declare-fun m!826713 () Bool)

(assert (=> b!886789 m!826713))

(declare-fun m!826715 () Bool)

(assert (=> d!109771 m!826715))

(declare-fun m!826717 () Bool)

(assert (=> d!109771 m!826717))

(declare-fun m!826719 () Bool)

(assert (=> b!886788 m!826719))

(declare-fun m!826721 () Bool)

(assert (=> bm!39318 m!826721))

(declare-fun m!826723 () Bool)

(assert (=> b!886794 m!826723))

(assert (=> b!886571 d!109771))

(declare-fun lt!401125 () Bool)

(declare-fun d!109773 () Bool)

(assert (=> d!109773 (= lt!401125 (member (tuple2!11941 key1!49 v2!16) (content!401 lt!401102)))))

(declare-fun e!493720 () Bool)

(assert (=> d!109773 (= lt!401125 e!493720)))

(declare-fun res!602036 () Bool)

(assert (=> d!109773 (=> (not res!602036) (not e!493720))))

(assert (=> d!109773 (= res!602036 (is-Cons!17756 lt!401102))))

(assert (=> d!109773 (= (contains!4295 lt!401102 (tuple2!11941 key1!49 v2!16)) lt!401125)))

(declare-fun b!886798 () Bool)

(declare-fun e!493719 () Bool)

(assert (=> b!886798 (= e!493720 e!493719)))

(declare-fun res!602035 () Bool)

(assert (=> b!886798 (=> res!602035 e!493719)))

(assert (=> b!886798 (= res!602035 (= (h!18887 lt!401102) (tuple2!11941 key1!49 v2!16)))))

(declare-fun b!886799 () Bool)

(assert (=> b!886799 (= e!493719 (contains!4295 (t!25048 lt!401102) (tuple2!11941 key1!49 v2!16)))))

(assert (= (and d!109773 res!602036) b!886798))

(assert (= (and b!886798 (not res!602035)) b!886799))

(declare-fun m!826725 () Bool)

(assert (=> d!109773 m!826725))

(declare-fun m!826727 () Bool)

(assert (=> d!109773 m!826727))

(declare-fun m!826729 () Bool)

(assert (=> b!886799 m!826729))

(assert (=> b!886616 d!109773))

(declare-fun d!109775 () Bool)

(declare-fun e!493723 () Bool)

(assert (=> d!109775 e!493723))

(declare-fun res!602037 () Bool)

(assert (=> d!109775 (=> (not res!602037) (not e!493723))))

(declare-fun lt!401126 () List!17760)

(assert (=> d!109775 (= res!602037 (isStrictlySorted!490 lt!401126))))

(declare-fun e!493722 () List!17760)

(assert (=> d!109775 (= lt!401126 e!493722)))

(declare-fun c!93525 () Bool)

(assert (=> d!109775 (= c!93525 (and (is-Cons!17756 (t!25048 l!906)) (bvslt (_1!5980 (h!18887 (t!25048 l!906))) key1!49)))))

(assert (=> d!109775 (isStrictlySorted!490 (t!25048 l!906))))

(assert (=> d!109775 (= (insertStrictlySorted!302 (t!25048 l!906) key1!49 v1!38) lt!401126)))

(declare-fun b!886800 () Bool)

(assert (=> b!886800 (= e!493723 (contains!4295 lt!401126 (tuple2!11941 key1!49 v1!38)))))

(declare-fun b!886801 () Bool)

(declare-fun res!602038 () Bool)

(assert (=> b!886801 (=> (not res!602038) (not e!493723))))

(assert (=> b!886801 (= res!602038 (containsKey!417 lt!401126 key1!49))))

(declare-fun bm!39320 () Bool)

(declare-fun call!39323 () List!17760)

(declare-fun call!39325 () List!17760)

(assert (=> bm!39320 (= call!39323 call!39325)))

(declare-fun b!886802 () Bool)

(declare-fun c!93528 () Bool)

(assert (=> b!886802 (= c!93528 (and (is-Cons!17756 (t!25048 l!906)) (bvsgt (_1!5980 (h!18887 (t!25048 l!906))) key1!49)))))

(declare-fun e!493721 () List!17760)

(declare-fun e!493724 () List!17760)

(assert (=> b!886802 (= e!493721 e!493724)))

(declare-fun b!886803 () Bool)

(assert (=> b!886803 (= e!493722 e!493721)))

(declare-fun c!93526 () Bool)

(assert (=> b!886803 (= c!93526 (and (is-Cons!17756 (t!25048 l!906)) (= (_1!5980 (h!18887 (t!25048 l!906))) key1!49)))))

(declare-fun b!886804 () Bool)

(assert (=> b!886804 (= e!493724 call!39323)))

(declare-fun call!39324 () List!17760)

(declare-fun e!493725 () List!17760)

(declare-fun bm!39321 () Bool)

(assert (=> bm!39321 (= call!39324 ($colon$colon!552 e!493725 (ite c!93525 (h!18887 (t!25048 l!906)) (tuple2!11941 key1!49 v1!38))))))

(declare-fun c!93527 () Bool)

(assert (=> bm!39321 (= c!93527 c!93525)))

(declare-fun bm!39322 () Bool)

(assert (=> bm!39322 (= call!39325 call!39324)))

(declare-fun b!886805 () Bool)

(assert (=> b!886805 (= e!493721 call!39325)))

(declare-fun b!886806 () Bool)

(assert (=> b!886806 (= e!493725 (insertStrictlySorted!302 (t!25048 (t!25048 l!906)) key1!49 v1!38))))

(declare-fun b!886807 () Bool)

(assert (=> b!886807 (= e!493722 call!39324)))

(declare-fun b!886808 () Bool)

(assert (=> b!886808 (= e!493724 call!39323)))

(declare-fun b!886809 () Bool)

(assert (=> b!886809 (= e!493725 (ite c!93526 (t!25048 (t!25048 l!906)) (ite c!93528 (Cons!17756 (h!18887 (t!25048 l!906)) (t!25048 (t!25048 l!906))) Nil!17757)))))

(assert (= (and d!109775 c!93525) b!886807))

(assert (= (and d!109775 (not c!93525)) b!886803))

(assert (= (and b!886803 c!93526) b!886805))

(assert (= (and b!886803 (not c!93526)) b!886802))

(assert (= (and b!886802 c!93528) b!886804))

(assert (= (and b!886802 (not c!93528)) b!886808))

(assert (= (or b!886804 b!886808) bm!39320))

(assert (= (or b!886805 bm!39320) bm!39322))

(assert (= (or b!886807 bm!39322) bm!39321))

(assert (= (and bm!39321 c!93527) b!886806))

(assert (= (and bm!39321 (not c!93527)) b!886809))

(assert (= (and d!109775 res!602037) b!886801))

(assert (= (and b!886801 res!602038) b!886800))

(declare-fun m!826731 () Bool)

(assert (=> b!886801 m!826731))

(declare-fun m!826733 () Bool)

(assert (=> d!109775 m!826733))

(assert (=> d!109775 m!826463))

(declare-fun m!826735 () Bool)

(assert (=> b!886800 m!826735))

(declare-fun m!826737 () Bool)

(assert (=> bm!39321 m!826737))

(declare-fun m!826739 () Bool)

(assert (=> b!886806 m!826739))

(assert (=> b!886595 d!109775))

(declare-fun d!109777 () Bool)

(declare-fun res!602039 () Bool)

(declare-fun e!493726 () Bool)

(assert (=> d!109777 (=> res!602039 e!493726)))

(assert (=> d!109777 (= res!602039 (or (is-Nil!17757 lt!401098) (is-Nil!17757 (t!25048 lt!401098))))))

(assert (=> d!109777 (= (isStrictlySorted!490 lt!401098) e!493726)))

(declare-fun b!886810 () Bool)

(declare-fun e!493727 () Bool)

(assert (=> b!886810 (= e!493726 e!493727)))

(declare-fun res!602040 () Bool)

(assert (=> b!886810 (=> (not res!602040) (not e!493727))))

(assert (=> b!886810 (= res!602040 (bvslt (_1!5980 (h!18887 lt!401098)) (_1!5980 (h!18887 (t!25048 lt!401098)))))))

(declare-fun b!886811 () Bool)

(assert (=> b!886811 (= e!493727 (isStrictlySorted!490 (t!25048 lt!401098)))))

(assert (= (and d!109777 (not res!602039)) b!886810))

(assert (= (and b!886810 res!602040) b!886811))

(declare-fun m!826741 () Bool)

(assert (=> b!886811 m!826741))

(assert (=> d!109673 d!109777))

(declare-fun d!109779 () Bool)

(declare-fun res!602041 () Bool)

(declare-fun e!493728 () Bool)

(assert (=> d!109779 (=> res!602041 e!493728)))

(assert (=> d!109779 (= res!602041 (or (is-Nil!17757 (insertStrictlySorted!302 l!906 key1!49 v1!38)) (is-Nil!17757 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38)))))))

(assert (=> d!109779 (= (isStrictlySorted!490 (insertStrictlySorted!302 l!906 key1!49 v1!38)) e!493728)))

(declare-fun b!886812 () Bool)

(declare-fun e!493729 () Bool)

(assert (=> b!886812 (= e!493728 e!493729)))

(declare-fun res!602042 () Bool)

(assert (=> b!886812 (=> (not res!602042) (not e!493729))))

(assert (=> b!886812 (= res!602042 (bvslt (_1!5980 (h!18887 (insertStrictlySorted!302 l!906 key1!49 v1!38))) (_1!5980 (h!18887 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38))))))))

(declare-fun b!886813 () Bool)

(assert (=> b!886813 (= e!493729 (isStrictlySorted!490 (t!25048 (insertStrictlySorted!302 l!906 key1!49 v1!38))))))

(assert (= (and d!109779 (not res!602041)) b!886812))

(assert (= (and b!886812 res!602042) b!886813))

(assert (=> b!886813 m!826717))

(assert (=> d!109673 d!109779))

(declare-fun d!109781 () Bool)

(declare-fun e!493732 () Bool)

(assert (=> d!109781 e!493732))

(declare-fun res!602043 () Bool)

(assert (=> d!109781 (=> (not res!602043) (not e!493732))))

(declare-fun lt!401127 () List!17760)

(assert (=> d!109781 (= res!602043 (isStrictlySorted!490 lt!401127))))

(declare-fun e!493731 () List!17760)

(assert (=> d!109781 (= lt!401127 e!493731)))

(declare-fun c!93529 () Bool)

(assert (=> d!109781 (= c!93529 (and (is-Cons!17756 (t!25048 l!906)) (bvslt (_1!5980 (h!18887 (t!25048 l!906))) key1!49)))))

(assert (=> d!109781 (isStrictlySorted!490 (t!25048 l!906))))

(assert (=> d!109781 (= (insertStrictlySorted!302 (t!25048 l!906) key1!49 v2!16) lt!401127)))

(declare-fun b!886814 () Bool)

(assert (=> b!886814 (= e!493732 (contains!4295 lt!401127 (tuple2!11941 key1!49 v2!16)))))

(declare-fun b!886815 () Bool)

(declare-fun res!602044 () Bool)

(assert (=> b!886815 (=> (not res!602044) (not e!493732))))

(assert (=> b!886815 (= res!602044 (containsKey!417 lt!401127 key1!49))))

(declare-fun bm!39323 () Bool)

(declare-fun call!39326 () List!17760)

(declare-fun call!39328 () List!17760)

(assert (=> bm!39323 (= call!39326 call!39328)))

(declare-fun b!886816 () Bool)

(declare-fun c!93532 () Bool)

(assert (=> b!886816 (= c!93532 (and (is-Cons!17756 (t!25048 l!906)) (bvsgt (_1!5980 (h!18887 (t!25048 l!906))) key1!49)))))

(declare-fun e!493730 () List!17760)

(declare-fun e!493733 () List!17760)

(assert (=> b!886816 (= e!493730 e!493733)))

(declare-fun b!886817 () Bool)

(assert (=> b!886817 (= e!493731 e!493730)))

(declare-fun c!93530 () Bool)

(assert (=> b!886817 (= c!93530 (and (is-Cons!17756 (t!25048 l!906)) (= (_1!5980 (h!18887 (t!25048 l!906))) key1!49)))))

(declare-fun b!886818 () Bool)

(assert (=> b!886818 (= e!493733 call!39326)))

(declare-fun call!39327 () List!17760)

(declare-fun e!493734 () List!17760)

(declare-fun bm!39324 () Bool)

(assert (=> bm!39324 (= call!39327 ($colon$colon!552 e!493734 (ite c!93529 (h!18887 (t!25048 l!906)) (tuple2!11941 key1!49 v2!16))))))

(declare-fun c!93531 () Bool)

(assert (=> bm!39324 (= c!93531 c!93529)))

(declare-fun bm!39325 () Bool)

(assert (=> bm!39325 (= call!39328 call!39327)))

(declare-fun b!886819 () Bool)

(assert (=> b!886819 (= e!493730 call!39328)))

(declare-fun b!886820 () Bool)

(assert (=> b!886820 (= e!493734 (insertStrictlySorted!302 (t!25048 (t!25048 l!906)) key1!49 v2!16))))

(declare-fun b!886821 () Bool)

(assert (=> b!886821 (= e!493731 call!39327)))

(declare-fun b!886822 () Bool)

(assert (=> b!886822 (= e!493733 call!39326)))

(declare-fun b!886823 () Bool)

(assert (=> b!886823 (= e!493734 (ite c!93530 (t!25048 (t!25048 l!906)) (ite c!93532 (Cons!17756 (h!18887 (t!25048 l!906)) (t!25048 (t!25048 l!906))) Nil!17757)))))

(assert (= (and d!109781 c!93529) b!886821))

(assert (= (and d!109781 (not c!93529)) b!886817))

(assert (= (and b!886817 c!93530) b!886819))

(assert (= (and b!886817 (not c!93530)) b!886816))

(assert (= (and b!886816 c!93532) b!886818))

(assert (= (and b!886816 (not c!93532)) b!886822))

(assert (= (or b!886818 b!886822) bm!39323))

(assert (= (or b!886819 bm!39323) bm!39325))

(assert (= (or b!886821 bm!39325) bm!39324))

(assert (= (and bm!39324 c!93531) b!886820))

(assert (= (and bm!39324 (not c!93531)) b!886823))

(assert (= (and d!109781 res!602043) b!886815))

(assert (= (and b!886815 res!602044) b!886814))

(declare-fun m!826743 () Bool)

(assert (=> b!886815 m!826743))

(declare-fun m!826745 () Bool)

(assert (=> d!109781 m!826745))

(assert (=> d!109781 m!826463))

(declare-fun m!826747 () Bool)

(assert (=> b!886814 m!826747))

(declare-fun m!826749 () Bool)

(assert (=> bm!39324 m!826749))

(declare-fun m!826751 () Bool)

(assert (=> b!886820 m!826751))

(assert (=> b!886622 d!109781))

(declare-fun d!109783 () Bool)

(declare-fun res!602045 () Bool)

(declare-fun e!493735 () Bool)

(assert (=> d!109783 (=> res!602045 e!493735)))

(assert (=> d!109783 (= res!602045 (or (is-Nil!17757 (t!25048 l!906)) (is-Nil!17757 (t!25048 (t!25048 l!906)))))))

(assert (=> d!109783 (= (isStrictlySorted!490 (t!25048 l!906)) e!493735)))

(declare-fun b!886824 () Bool)

(declare-fun e!493736 () Bool)

(assert (=> b!886824 (= e!493735 e!493736)))

(declare-fun res!602046 () Bool)

(assert (=> b!886824 (=> (not res!602046) (not e!493736))))

(assert (=> b!886824 (= res!602046 (bvslt (_1!5980 (h!18887 (t!25048 l!906))) (_1!5980 (h!18887 (t!25048 (t!25048 l!906))))))))

(declare-fun b!886825 () Bool)

(assert (=> b!886825 (= e!493736 (isStrictlySorted!490 (t!25048 (t!25048 l!906))))))

(assert (= (and d!109783 (not res!602045)) b!886824))

(assert (= (and b!886824 res!602046) b!886825))

(declare-fun m!826753 () Bool)

(assert (=> b!886825 m!826753))

(assert (=> b!886472 d!109783))

(declare-fun d!109785 () Bool)

(assert (=> d!109785 (= ($colon$colon!552 e!493575 (ite c!93481 (h!18887 l!906) (tuple2!11941 key1!49 v1!38))) (Cons!17756 (ite c!93481 (h!18887 l!906) (tuple2!11941 key1!49 v1!38)) e!493575))))

(assert (=> bm!39288 d!109785))

(declare-fun d!109787 () Bool)

(assert (=> d!109787 (= ($colon$colon!552 e!493561 (ite c!93473 (h!18887 (insertStrictlySorted!302 l!906 key1!49 v1!38)) (tuple2!11941 key1!49 v2!16))) (Cons!17756 (ite c!93473 (h!18887 (insertStrictlySorted!302 l!906 key1!49 v1!38)) (tuple2!11941 key1!49 v2!16)) e!493561))))

(assert (=> bm!39282 d!109787))

(declare-fun d!109789 () Bool)

(declare-fun res!602047 () Bool)

(declare-fun e!493737 () Bool)

(assert (=> d!109789 (=> res!602047 e!493737)))

(assert (=> d!109789 (= res!602047 (or (is-Nil!17757 lt!401100) (is-Nil!17757 (t!25048 lt!401100))))))

(assert (=> d!109789 (= (isStrictlySorted!490 lt!401100) e!493737)))

(declare-fun b!886826 () Bool)

(declare-fun e!493738 () Bool)

(assert (=> b!886826 (= e!493737 e!493738)))

(declare-fun res!602048 () Bool)

(assert (=> b!886826 (=> (not res!602048) (not e!493738))))

(assert (=> b!886826 (= res!602048 (bvslt (_1!5980 (h!18887 lt!401100)) (_1!5980 (h!18887 (t!25048 lt!401100)))))))

(declare-fun b!886827 () Bool)

(assert (=> b!886827 (= e!493738 (isStrictlySorted!490 (t!25048 lt!401100)))))

(assert (= (and d!109789 (not res!602047)) b!886826))

(assert (= (and b!886826 res!602048) b!886827))

(declare-fun m!826755 () Bool)

(assert (=> b!886827 m!826755))

(assert (=> d!109683 d!109789))

(assert (=> d!109683 d!109671))

(declare-fun d!109791 () Bool)

(assert (=> d!109791 (= ($colon$colon!552 e!493590 (ite c!93489 (h!18887 l!906) (tuple2!11941 key1!49 v2!16))) (Cons!17756 (ite c!93489 (h!18887 l!906) (tuple2!11941 key1!49 v2!16)) e!493590))))

(assert (=> bm!39294 d!109791))

(declare-fun b!886828 () Bool)

(declare-fun e!493739 () Bool)

(declare-fun tp!54405 () Bool)

(assert (=> b!886828 (= e!493739 (and tp_is_empty!17819 tp!54405))))

(assert (=> b!886644 (= tp!54399 e!493739)))

(assert (= (and b!886644 (is-Cons!17756 (t!25048 (t!25048 l!906)))) b!886828))

(push 1)

