; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134396 () Bool)

(assert start!134396)

(declare-datatypes ((B!2496 0))(
  ( (B!2497 (val!19610 Int)) )
))
(declare-fun v2!10 () B!2496)

(declare-datatypes ((tuple2!25486 0))(
  ( (tuple2!25487 (_1!12753 (_ BitVec 64)) (_2!12753 B!2496)) )
))
(declare-datatypes ((List!36891 0))(
  ( (Nil!36888) (Cons!36887 (h!38335 tuple2!25486) (t!51806 List!36891)) )
))
(declare-fun l!750 () List!36891)

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun b!1568887 () Bool)

(declare-fun e!874611 () Bool)

(declare-fun isStrictlySorted!1001 (List!36891) Bool)

(declare-fun insertStrictlySorted!588 (List!36891 (_ BitVec 64) B!2496) List!36891)

(assert (=> b!1568887 (= e!874611 (not (isStrictlySorted!1001 (insertStrictlySorted!588 l!750 key2!21 v2!10))))))

(declare-fun v1!32 () B!2496)

(declare-fun key1!37 () (_ BitVec 64))

(assert (=> b!1568887 (= (insertStrictlySorted!588 (insertStrictlySorted!588 (t!51806 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!588 (insertStrictlySorted!588 (t!51806 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-datatypes ((Unit!52034 0))(
  ( (Unit!52035) )
))
(declare-fun lt!673189 () Unit!52034)

(declare-fun lemmaInsertStrictlySortedCommutative!15 (List!36891 (_ BitVec 64) B!2496 (_ BitVec 64) B!2496) Unit!52034)

(assert (=> b!1568887 (= lt!673189 (lemmaInsertStrictlySortedCommutative!15 (t!51806 l!750) key1!37 v1!32 key2!21 v2!10))))

(declare-fun b!1568888 () Bool)

(declare-fun res!1072475 () Bool)

(assert (=> b!1568888 (=> (not res!1072475) (not e!874611))))

(assert (=> b!1568888 (= res!1072475 (isStrictlySorted!1001 (t!51806 l!750)))))

(declare-fun b!1568889 () Bool)

(declare-fun res!1072476 () Bool)

(assert (=> b!1568889 (=> (not res!1072476) (not e!874611))))

(assert (=> b!1568889 (= res!1072476 (isStrictlySorted!1001 l!750))))

(declare-fun b!1568890 () Bool)

(declare-fun res!1072477 () Bool)

(assert (=> b!1568890 (=> (not res!1072477) (not e!874611))))

(assert (=> b!1568890 (= res!1072477 (and (is-Cons!36887 l!750) (bvslt (_1!12753 (h!38335 l!750)) key1!37) (bvslt (_1!12753 (h!38335 l!750)) key2!21)))))

(declare-fun b!1568891 () Bool)

(declare-fun e!874610 () Bool)

(declare-fun tp_is_empty!39047 () Bool)

(declare-fun tp!114082 () Bool)

(assert (=> b!1568891 (= e!874610 (and tp_is_empty!39047 tp!114082))))

(declare-fun res!1072478 () Bool)

(assert (=> start!134396 (=> (not res!1072478) (not e!874611))))

(assert (=> start!134396 (= res!1072478 (not (= key1!37 key2!21)))))

(assert (=> start!134396 e!874611))

(assert (=> start!134396 tp_is_empty!39047))

(assert (=> start!134396 e!874610))

(assert (=> start!134396 true))

(assert (= (and start!134396 res!1072478) b!1568889))

(assert (= (and b!1568889 res!1072476) b!1568890))

(assert (= (and b!1568890 res!1072477) b!1568888))

(assert (= (and b!1568888 res!1072475) b!1568887))

(assert (= (and start!134396 (is-Cons!36887 l!750)) b!1568891))

(declare-fun m!1443469 () Bool)

(assert (=> b!1568887 m!1443469))

(declare-fun m!1443471 () Bool)

(assert (=> b!1568887 m!1443471))

(declare-fun m!1443473 () Bool)

(assert (=> b!1568887 m!1443473))

(assert (=> b!1568887 m!1443471))

(declare-fun m!1443475 () Bool)

(assert (=> b!1568887 m!1443475))

(declare-fun m!1443477 () Bool)

(assert (=> b!1568887 m!1443477))

(declare-fun m!1443479 () Bool)

(assert (=> b!1568887 m!1443479))

(assert (=> b!1568887 m!1443477))

(assert (=> b!1568887 m!1443469))

(declare-fun m!1443481 () Bool)

(assert (=> b!1568887 m!1443481))

(declare-fun m!1443483 () Bool)

(assert (=> b!1568888 m!1443483))

(declare-fun m!1443485 () Bool)

(assert (=> b!1568889 m!1443485))

(push 1)

(assert (not b!1568891))

(assert (not b!1568889))

(assert (not b!1568888))

(assert tp_is_empty!39047)

(assert (not b!1568887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163749 () Bool)

(declare-fun res!1072497 () Bool)

(declare-fun e!874630 () Bool)

(assert (=> d!163749 (=> res!1072497 e!874630)))

(assert (=> d!163749 (= res!1072497 (or (is-Nil!36888 (t!51806 l!750)) (is-Nil!36888 (t!51806 (t!51806 l!750)))))))

(assert (=> d!163749 (= (isStrictlySorted!1001 (t!51806 l!750)) e!874630)))

(declare-fun b!1568910 () Bool)

(declare-fun e!874631 () Bool)

(assert (=> b!1568910 (= e!874630 e!874631)))

(declare-fun res!1072498 () Bool)

(assert (=> b!1568910 (=> (not res!1072498) (not e!874631))))

(assert (=> b!1568910 (= res!1072498 (bvslt (_1!12753 (h!38335 (t!51806 l!750))) (_1!12753 (h!38335 (t!51806 (t!51806 l!750))))))))

(declare-fun b!1568911 () Bool)

(assert (=> b!1568911 (= e!874631 (isStrictlySorted!1001 (t!51806 (t!51806 l!750))))))

(assert (= (and d!163749 (not res!1072497)) b!1568910))

(assert (= (and b!1568910 res!1072498) b!1568911))

(declare-fun m!1443495 () Bool)

(assert (=> b!1568911 m!1443495))

(assert (=> b!1568888 d!163749))

(declare-fun d!163753 () Bool)

(declare-fun res!1072499 () Bool)

(declare-fun e!874632 () Bool)

(assert (=> d!163753 (=> res!1072499 e!874632)))

(assert (=> d!163753 (= res!1072499 (or (is-Nil!36888 l!750) (is-Nil!36888 (t!51806 l!750))))))

(assert (=> d!163753 (= (isStrictlySorted!1001 l!750) e!874632)))

(declare-fun b!1568912 () Bool)

(declare-fun e!874633 () Bool)

(assert (=> b!1568912 (= e!874632 e!874633)))

(declare-fun res!1072500 () Bool)

(assert (=> b!1568912 (=> (not res!1072500) (not e!874633))))

(assert (=> b!1568912 (= res!1072500 (bvslt (_1!12753 (h!38335 l!750)) (_1!12753 (h!38335 (t!51806 l!750)))))))

(declare-fun b!1568913 () Bool)

(assert (=> b!1568913 (= e!874633 (isStrictlySorted!1001 (t!51806 l!750)))))

(assert (= (and d!163753 (not res!1072499)) b!1568912))

(assert (= (and b!1568912 res!1072500) b!1568913))

(assert (=> b!1568913 m!1443483))

(assert (=> b!1568889 d!163753))

(declare-fun d!163755 () Bool)

(assert (=> d!163755 (= (insertStrictlySorted!588 (insertStrictlySorted!588 (t!51806 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!588 (insertStrictlySorted!588 (t!51806 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-fun lt!673200 () Unit!52034)

(declare-fun choose!2089 (List!36891 (_ BitVec 64) B!2496 (_ BitVec 64) B!2496) Unit!52034)

(assert (=> d!163755 (= lt!673200 (choose!2089 (t!51806 l!750) key1!37 v1!32 key2!21 v2!10))))

(assert (=> d!163755 (not (= key1!37 key2!21))))

(assert (=> d!163755 (= (lemmaInsertStrictlySortedCommutative!15 (t!51806 l!750) key1!37 v1!32 key2!21 v2!10) lt!673200)))

(declare-fun bs!45187 () Bool)

(assert (= bs!45187 d!163755))

(assert (=> bs!45187 m!1443471))

(assert (=> bs!45187 m!1443473))

(assert (=> bs!45187 m!1443469))

(assert (=> bs!45187 m!1443481))

(assert (=> bs!45187 m!1443471))

(declare-fun m!1443497 () Bool)

(assert (=> bs!45187 m!1443497))

(assert (=> bs!45187 m!1443469))

(assert (=> b!1568887 d!163755))

(declare-fun b!1569090 () Bool)

(declare-fun c!144620 () Bool)

(declare-fun c!144618 () Bool)

(declare-fun e!874727 () List!36891)

(assert (=> b!1569090 (= e!874727 (ite c!144620 (t!51806 l!750) (ite c!144618 (Cons!36887 (h!38335 l!750) (t!51806 l!750)) Nil!36888)))))

(declare-fun b!1569091 () Bool)

(declare-fun e!874729 () List!36891)

(declare-fun call!72050 () List!36891)

(assert (=> b!1569091 (= e!874729 call!72050)))

(declare-fun b!1569092 () Bool)

(assert (=> b!1569092 (= e!874727 (insertStrictlySorted!588 (t!51806 l!750) key2!21 v2!10))))

(declare-fun bm!72045 () Bool)

(declare-fun call!72049 () List!36891)

(assert (=> bm!72045 (= call!72050 call!72049)))

(declare-fun e!874726 () Bool)

(declare-fun lt!673215 () List!36891)

(declare-fun b!1569093 () Bool)

(declare-fun contains!10438 (List!36891 tuple2!25486) Bool)

(assert (=> b!1569093 (= e!874726 (contains!10438 lt!673215 (tuple2!25487 key2!21 v2!10)))))

(declare-fun b!1569094 () Bool)

(declare-fun res!1072539 () Bool)

(assert (=> b!1569094 (=> (not res!1072539) (not e!874726))))

(declare-fun containsKey!860 (List!36891 (_ BitVec 64)) Bool)

(assert (=> b!1569094 (= res!1072539 (containsKey!860 lt!673215 key2!21))))

(declare-fun b!1569095 () Bool)

(declare-fun e!874728 () List!36891)

(declare-fun call!72048 () List!36891)

(assert (=> b!1569095 (= e!874728 call!72048)))

(declare-fun b!1569096 () Bool)

(declare-fun e!874730 () List!36891)

(assert (=> b!1569096 (= e!874730 e!874729)))

(assert (=> b!1569096 (= c!144620 (and (is-Cons!36887 l!750) (= (_1!12753 (h!38335 l!750)) key2!21)))))

(declare-fun c!144617 () Bool)

(declare-fun bm!72046 () Bool)

(declare-fun $colon$colon!995 (List!36891 tuple2!25486) List!36891)

(assert (=> bm!72046 (= call!72049 ($colon$colon!995 e!874727 (ite c!144617 (h!38335 l!750) (tuple2!25487 key2!21 v2!10))))))

(declare-fun c!144619 () Bool)

(assert (=> bm!72046 (= c!144619 c!144617)))

(declare-fun d!163757 () Bool)

(assert (=> d!163757 e!874726))

(declare-fun res!1072540 () Bool)

(assert (=> d!163757 (=> (not res!1072540) (not e!874726))))

(assert (=> d!163757 (= res!1072540 (isStrictlySorted!1001 lt!673215))))

(assert (=> d!163757 (= lt!673215 e!874730)))

(assert (=> d!163757 (= c!144617 (and (is-Cons!36887 l!750) (bvslt (_1!12753 (h!38335 l!750)) key2!21)))))

(assert (=> d!163757 (isStrictlySorted!1001 l!750)))

(assert (=> d!163757 (= (insertStrictlySorted!588 l!750 key2!21 v2!10) lt!673215)))

(declare-fun b!1569097 () Bool)

(assert (=> b!1569097 (= c!144618 (and (is-Cons!36887 l!750) (bvsgt (_1!12753 (h!38335 l!750)) key2!21)))))

(assert (=> b!1569097 (= e!874729 e!874728)))

(declare-fun b!1569098 () Bool)

(assert (=> b!1569098 (= e!874730 call!72049)))

(declare-fun bm!72047 () Bool)

(assert (=> bm!72047 (= call!72048 call!72050)))

(declare-fun b!1569099 () Bool)

(assert (=> b!1569099 (= e!874728 call!72048)))

(assert (= (and d!163757 c!144617) b!1569098))

(assert (= (and d!163757 (not c!144617)) b!1569096))

(assert (= (and b!1569096 c!144620) b!1569091))

(assert (= (and b!1569096 (not c!144620)) b!1569097))

(assert (= (and b!1569097 c!144618) b!1569099))

(assert (= (and b!1569097 (not c!144618)) b!1569095))

(assert (= (or b!1569099 b!1569095) bm!72047))

(assert (= (or b!1569091 bm!72047) bm!72045))

(assert (= (or b!1569098 bm!72045) bm!72046))

(assert (= (and bm!72046 c!144619) b!1569092))

(assert (= (and bm!72046 (not c!144619)) b!1569090))

(assert (= (and d!163757 res!1072540) b!1569094))

(assert (= (and b!1569094 res!1072539) b!1569093))

(declare-fun m!1443607 () Bool)

(assert (=> b!1569094 m!1443607))

(declare-fun m!1443609 () Bool)

(assert (=> bm!72046 m!1443609))

(assert (=> b!1569092 m!1443469))

(declare-fun m!1443611 () Bool)

(assert (=> d!163757 m!1443611))

(assert (=> d!163757 m!1443485))

(declare-fun m!1443613 () Bool)

(assert (=> b!1569093 m!1443613))

(assert (=> b!1568887 d!163757))

(declare-fun c!144624 () Bool)

(declare-fun c!144622 () Bool)

(declare-fun e!874732 () List!36891)

(declare-fun b!1569100 () Bool)

(assert (=> b!1569100 (= e!874732 (ite c!144624 (t!51806 (insertStrictlySorted!588 (t!51806 l!750) key1!37 v1!32)) (ite c!144622 (Cons!36887 (h!38335 (insertStrictlySorted!588 (t!51806 l!750) key1!37 v1!32)) (t!51806 (insertStrictlySorted!588 (t!51806 l!750) key1!37 v1!32))) Nil!36888)))))

(declare-fun b!1569101 () Bool)

(declare-fun e!874734 () List!36891)

(declare-fun call!72053 () List!36891)

(assert (=> b!1569101 (= e!874734 call!72053)))

(declare-fun b!1569102 () Bool)

(assert (=> b!1569102 (= e!874732 (insertStrictlySorted!588 (t!51806 (insertStrictlySorted!588 (t!51806 l!750) key1!37 v1!32)) key2!21 v2!10))))

(declare-fun bm!72048 () Bool)

(declare-fun call!72052 () List!36891)

(assert (=> bm!72048 (= call!72053 call!72052)))

(declare-fun lt!673216 () List!36891)

(declare-fun e!874731 () Bool)

(declare-fun b!1569103 () Bool)

(assert (=> b!1569103 (= e!874731 (contains!10438 lt!673216 (tuple2!25487 key2!21 v2!10)))))

(declare-fun b!1569104 () Bool)

(declare-fun res!1072541 () Bool)

(assert (=> b!1569104 (=> (not res!1072541) (not e!874731))))

(assert (=> b!1569104 (= res!1072541 (containsKey!860 lt!673216 key2!21))))

(declare-fun b!1569105 () Bool)

(declare-fun e!874733 () List!36891)

(declare-fun call!72051 () List!36891)

(assert (=> b!1569105 (= e!874733 call!72051)))

(declare-fun b!1569106 () Bool)

(declare-fun e!874735 () List!36891)

(assert (=> b!1569106 (= e!874735 e!874734)))

(assert (=> b!1569106 (= c!144624 (and (is-Cons!36887 (insertStrictlySorted!588 (t!51806 l!750) key1!37 v1!32)) (= (_1!12753 (h!38335 (insertStrictlySorted!588 (t!51806 l!750) key1!37 v1!32))) key2!21)))))

(declare-fun c!144621 () Bool)

(declare-fun bm!72049 () Bool)

(assert (=> bm!72049 (= call!72052 ($colon$colon!995 e!874732 (ite c!144621 (h!38335 (insertStrictlySorted!588 (t!51806 l!750) key1!37 v1!32)) (tuple2!25487 key2!21 v2!10))))))

(declare-fun c!144623 () Bool)

(assert (=> bm!72049 (= c!144623 c!144621)))

(declare-fun d!163781 () Bool)

(assert (=> d!163781 e!874731))

(declare-fun res!1072542 () Bool)

(assert (=> d!163781 (=> (not res!1072542) (not e!874731))))

(assert (=> d!163781 (= res!1072542 (isStrictlySorted!1001 lt!673216))))

(assert (=> d!163781 (= lt!673216 e!874735)))

(assert (=> d!163781 (= c!144621 (and (is-Cons!36887 (insertStrictlySorted!588 (t!51806 l!750) key1!37 v1!32)) (bvslt (_1!12753 (h!38335 (insertStrictlySorted!588 (t!51806 l!750) key1!37 v1!32))) key2!21)))))

(assert (=> d!163781 (isStrictlySorted!1001 (insertStrictlySorted!588 (t!51806 l!750) key1!37 v1!32))))

(assert (=> d!163781 (= (insertStrictlySorted!588 (insertStrictlySorted!588 (t!51806 l!750) key1!37 v1!32) key2!21 v2!10) lt!673216)))

(declare-fun b!1569107 () Bool)

(assert (=> b!1569107 (= c!144622 (and (is-Cons!36887 (insertStrictlySorted!588 (t!51806 l!750) key1!37 v1!32)) (bvsgt (_1!12753 (h!38335 (insertStrictlySorted!588 (t!51806 l!750) key1!37 v1!32))) key2!21)))))

(assert (=> b!1569107 (= e!874734 e!874733)))

(declare-fun b!1569108 () Bool)

(assert (=> b!1569108 (= e!874735 call!72052)))

(declare-fun bm!72050 () Bool)

(assert (=> bm!72050 (= call!72051 call!72053)))

(declare-fun b!1569109 () Bool)

(assert (=> b!1569109 (= e!874733 call!72051)))

(assert (= (and d!163781 c!144621) b!1569108))

(assert (= (and d!163781 (not c!144621)) b!1569106))

(assert (= (and b!1569106 c!144624) b!1569101))

(assert (= (and b!1569106 (not c!144624)) b!1569107))

(assert (= (and b!1569107 c!144622) b!1569109))

(assert (= (and b!1569107 (not c!144622)) b!1569105))

(assert (= (or b!1569109 b!1569105) bm!72050))

(assert (= (or b!1569101 bm!72050) bm!72048))

(assert (= (or b!1569108 bm!72048) bm!72049))

(assert (= (and bm!72049 c!144623) b!1569102))

(assert (= (and bm!72049 (not c!144623)) b!1569100))

(assert (= (and d!163781 res!1072542) b!1569104))

(assert (= (and b!1569104 res!1072541) b!1569103))

(declare-fun m!1443615 () Bool)

(assert (=> b!1569104 m!1443615))

(declare-fun m!1443617 () Bool)

(assert (=> bm!72049 m!1443617))

(declare-fun m!1443619 () Bool)

(assert (=> b!1569102 m!1443619))

(declare-fun m!1443621 () Bool)

(assert (=> d!163781 m!1443621))

(assert (=> d!163781 m!1443471))

(declare-fun m!1443623 () Bool)

(assert (=> d!163781 m!1443623))

(declare-fun m!1443625 () Bool)

(assert (=> b!1569103 m!1443625))

(assert (=> b!1568887 d!163781))

(declare-fun c!144626 () Bool)

(declare-fun c!144628 () Bool)

(declare-fun b!1569110 () Bool)

(declare-fun e!874737 () List!36891)

(assert (=> b!1569110 (= e!874737 (ite c!144628 (t!51806 (t!51806 l!750)) (ite c!144626 (Cons!36887 (h!38335 (t!51806 l!750)) (t!51806 (t!51806 l!750))) Nil!36888)))))

(declare-fun b!1569111 () Bool)

(declare-fun e!874739 () List!36891)

(declare-fun call!72056 () List!36891)

(assert (=> b!1569111 (= e!874739 call!72056)))

(declare-fun b!1569112 () Bool)

(assert (=> b!1569112 (= e!874737 (insertStrictlySorted!588 (t!51806 (t!51806 l!750)) key2!21 v2!10))))

(declare-fun bm!72051 () Bool)

(declare-fun call!72055 () List!36891)

(assert (=> bm!72051 (= call!72056 call!72055)))

(declare-fun b!1569113 () Bool)

(declare-fun lt!673217 () List!36891)

(declare-fun e!874736 () Bool)

(assert (=> b!1569113 (= e!874736 (contains!10438 lt!673217 (tuple2!25487 key2!21 v2!10)))))

(declare-fun b!1569114 () Bool)

(declare-fun res!1072543 () Bool)

(assert (=> b!1569114 (=> (not res!1072543) (not e!874736))))

(assert (=> b!1569114 (= res!1072543 (containsKey!860 lt!673217 key2!21))))

(declare-fun b!1569115 () Bool)

(declare-fun e!874738 () List!36891)

(declare-fun call!72054 () List!36891)

(assert (=> b!1569115 (= e!874738 call!72054)))

(declare-fun b!1569116 () Bool)

(declare-fun e!874740 () List!36891)

(assert (=> b!1569116 (= e!874740 e!874739)))

(assert (=> b!1569116 (= c!144628 (and (is-Cons!36887 (t!51806 l!750)) (= (_1!12753 (h!38335 (t!51806 l!750))) key2!21)))))

(declare-fun c!144625 () Bool)

(declare-fun bm!72052 () Bool)

(assert (=> bm!72052 (= call!72055 ($colon$colon!995 e!874737 (ite c!144625 (h!38335 (t!51806 l!750)) (tuple2!25487 key2!21 v2!10))))))

(declare-fun c!144627 () Bool)

(assert (=> bm!72052 (= c!144627 c!144625)))

(declare-fun d!163783 () Bool)

(assert (=> d!163783 e!874736))

(declare-fun res!1072544 () Bool)

(assert (=> d!163783 (=> (not res!1072544) (not e!874736))))

(assert (=> d!163783 (= res!1072544 (isStrictlySorted!1001 lt!673217))))

(assert (=> d!163783 (= lt!673217 e!874740)))

(assert (=> d!163783 (= c!144625 (and (is-Cons!36887 (t!51806 l!750)) (bvslt (_1!12753 (h!38335 (t!51806 l!750))) key2!21)))))

(assert (=> d!163783 (isStrictlySorted!1001 (t!51806 l!750))))

(assert (=> d!163783 (= (insertStrictlySorted!588 (t!51806 l!750) key2!21 v2!10) lt!673217)))

(declare-fun b!1569117 () Bool)

(assert (=> b!1569117 (= c!144626 (and (is-Cons!36887 (t!51806 l!750)) (bvsgt (_1!12753 (h!38335 (t!51806 l!750))) key2!21)))))

(assert (=> b!1569117 (= e!874739 e!874738)))

(declare-fun b!1569118 () Bool)

(assert (=> b!1569118 (= e!874740 call!72055)))

(declare-fun bm!72053 () Bool)

(assert (=> bm!72053 (= call!72054 call!72056)))

(declare-fun b!1569119 () Bool)

(assert (=> b!1569119 (= e!874738 call!72054)))

(assert (= (and d!163783 c!144625) b!1569118))

(assert (= (and d!163783 (not c!144625)) b!1569116))

(assert (= (and b!1569116 c!144628) b!1569111))

(assert (= (and b!1569116 (not c!144628)) b!1569117))

(assert (= (and b!1569117 c!144626) b!1569119))

(assert (= (and b!1569117 (not c!144626)) b!1569115))

(assert (= (or b!1569119 b!1569115) bm!72053))

(assert (= (or b!1569111 bm!72053) bm!72051))

(assert (= (or b!1569118 bm!72051) bm!72052))

(assert (= (and bm!72052 c!144627) b!1569112))

(assert (= (and bm!72052 (not c!144627)) b!1569110))

(assert (= (and d!163783 res!1072544) b!1569114))

(assert (= (and b!1569114 res!1072543) b!1569113))

(declare-fun m!1443627 () Bool)

(assert (=> b!1569114 m!1443627))

(declare-fun m!1443629 () Bool)

(assert (=> bm!72052 m!1443629))

(declare-fun m!1443631 () Bool)

(assert (=> b!1569112 m!1443631))

(declare-fun m!1443633 () Bool)

(assert (=> d!163783 m!1443633))

(assert (=> d!163783 m!1443483))

(declare-fun m!1443635 () Bool)

(assert (=> b!1569113 m!1443635))

(assert (=> b!1568887 d!163783))

(declare-fun d!163785 () Bool)

(declare-fun res!1072545 () Bool)

(declare-fun e!874741 () Bool)

(assert (=> d!163785 (=> res!1072545 e!874741)))

(assert (=> d!163785 (= res!1072545 (or (is-Nil!36888 (insertStrictlySorted!588 l!750 key2!21 v2!10)) (is-Nil!36888 (t!51806 (insertStrictlySorted!588 l!750 key2!21 v2!10)))))))

(assert (=> d!163785 (= (isStrictlySorted!1001 (insertStrictlySorted!588 l!750 key2!21 v2!10)) e!874741)))

(declare-fun b!1569120 () Bool)

(declare-fun e!874742 () Bool)

(assert (=> b!1569120 (= e!874741 e!874742)))

(declare-fun res!1072546 () Bool)

(assert (=> b!1569120 (=> (not res!1072546) (not e!874742))))

(assert (=> b!1569120 (= res!1072546 (bvslt (_1!12753 (h!38335 (insertStrictlySorted!588 l!750 key2!21 v2!10))) (_1!12753 (h!38335 (t!51806 (insertStrictlySorted!588 l!750 key2!21 v2!10))))))))

(declare-fun b!1569121 () Bool)

(assert (=> b!1569121 (= e!874742 (isStrictlySorted!1001 (t!51806 (insertStrictlySorted!588 l!750 key2!21 v2!10))))))

(assert (= (and d!163785 (not res!1072545)) b!1569120))

(assert (= (and b!1569120 res!1072546) b!1569121))

(declare-fun m!1443637 () Bool)

(assert (=> b!1569121 m!1443637))

(assert (=> 