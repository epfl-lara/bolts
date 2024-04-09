; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134570 () Bool)

(assert start!134570)

(declare-fun b!1570562 () Bool)

(declare-fun res!1073215 () Bool)

(declare-fun e!875651 () Bool)

(assert (=> b!1570562 (=> (not res!1073215) (not e!875651))))

(declare-datatypes ((B!2556 0))(
  ( (B!2557 (val!19640 Int)) )
))
(declare-datatypes ((tuple2!25546 0))(
  ( (tuple2!25547 (_1!12783 (_ BitVec 64)) (_2!12783 B!2556)) )
))
(declare-datatypes ((List!36921 0))(
  ( (Nil!36918) (Cons!36917 (h!38365 tuple2!25546) (t!51839 List!36921)) )
))
(declare-fun l!750 () List!36921)

(declare-fun isStrictlySorted!1022 (List!36921) Bool)

(assert (=> b!1570562 (= res!1073215 (isStrictlySorted!1022 l!750))))

(declare-fun b!1570563 () Bool)

(declare-fun res!1073214 () Bool)

(assert (=> b!1570563 (=> (not res!1073214) (not e!875651))))

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(assert (=> b!1570563 (= res!1073214 (or (not (is-Cons!36917 l!750)) (bvsge (_1!12783 (h!38365 l!750)) key1!37) (bvsge (_1!12783 (h!38365 l!750)) key2!21)))))

(declare-fun res!1073216 () Bool)

(assert (=> start!134570 (=> (not res!1073216) (not e!875651))))

(assert (=> start!134570 (= res!1073216 (not (= key1!37 key2!21)))))

(assert (=> start!134570 e!875651))

(declare-fun tp_is_empty!39107 () Bool)

(assert (=> start!134570 tp_is_empty!39107))

(declare-fun e!875652 () Bool)

(assert (=> start!134570 e!875652))

(assert (=> start!134570 true))

(declare-fun b!1570565 () Bool)

(declare-fun tp!114238 () Bool)

(assert (=> b!1570565 (= e!875652 (and tp_is_empty!39107 tp!114238))))

(declare-fun v1!32 () B!2556)

(declare-fun b!1570564 () Bool)

(declare-fun v2!10 () B!2556)

(declare-fun insertStrictlySorted!600 (List!36921 (_ BitVec 64) B!2556) List!36921)

(assert (=> b!1570564 (= e!875651 (not (= (insertStrictlySorted!600 (insertStrictlySorted!600 l!750 key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!600 (insertStrictlySorted!600 l!750 key2!21 v2!10) key1!37 v1!32))))))

(assert (= (and start!134570 res!1073216) b!1570562))

(assert (= (and b!1570562 res!1073215) b!1570563))

(assert (= (and b!1570563 res!1073214) b!1570564))

(assert (= (and start!134570 (is-Cons!36917 l!750)) b!1570565))

(declare-fun m!1444659 () Bool)

(assert (=> b!1570562 m!1444659))

(declare-fun m!1444661 () Bool)

(assert (=> b!1570564 m!1444661))

(assert (=> b!1570564 m!1444661))

(declare-fun m!1444663 () Bool)

(assert (=> b!1570564 m!1444663))

(declare-fun m!1444665 () Bool)

(assert (=> b!1570564 m!1444665))

(assert (=> b!1570564 m!1444665))

(declare-fun m!1444667 () Bool)

(assert (=> b!1570564 m!1444667))

(push 1)

(assert (not b!1570562))

(assert (not b!1570564))

(assert (not b!1570565))

(assert tp_is_empty!39107)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164227 () Bool)

(declare-fun res!1073225 () Bool)

(declare-fun e!875661 () Bool)

(assert (=> d!164227 (=> res!1073225 e!875661)))

(assert (=> d!164227 (= res!1073225 (or (is-Nil!36918 l!750) (is-Nil!36918 (t!51839 l!750))))))

(assert (=> d!164227 (= (isStrictlySorted!1022 l!750) e!875661)))

(declare-fun b!1570574 () Bool)

(declare-fun e!875663 () Bool)

(assert (=> b!1570574 (= e!875661 e!875663)))

(declare-fun res!1073227 () Bool)

(assert (=> b!1570574 (=> (not res!1073227) (not e!875663))))

(assert (=> b!1570574 (= res!1073227 (bvslt (_1!12783 (h!38365 l!750)) (_1!12783 (h!38365 (t!51839 l!750)))))))

(declare-fun b!1570576 () Bool)

(assert (=> b!1570576 (= e!875663 (isStrictlySorted!1022 (t!51839 l!750)))))

(assert (= (and d!164227 (not res!1073225)) b!1570574))

(assert (= (and b!1570574 res!1073227) b!1570576))

(declare-fun m!1444671 () Bool)

(assert (=> b!1570576 m!1444671))

(assert (=> b!1570562 d!164227))

(declare-fun bm!72270 () Bool)

(declare-fun call!72275 () List!36921)

(declare-fun call!72277 () List!36921)

(assert (=> bm!72270 (= call!72275 call!72277)))

(declare-fun b!1570636 () Bool)

(declare-fun e!875697 () List!36921)

(assert (=> b!1570636 (= e!875697 (insertStrictlySorted!600 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32)) key2!21 v2!10))))

(declare-fun b!1570638 () Bool)

(declare-fun e!875699 () List!36921)

(declare-fun call!72274 () List!36921)

(assert (=> b!1570638 (= e!875699 call!72274)))

(declare-fun b!1570640 () Bool)

(declare-fun res!1073243 () Bool)

(declare-fun e!875703 () Bool)

(assert (=> b!1570640 (=> (not res!1073243) (not e!875703))))

(declare-fun lt!673361 () List!36921)

(declare-fun containsKey!870 (List!36921 (_ BitVec 64)) Bool)

(assert (=> b!1570640 (= res!1073243 (containsKey!870 lt!673361 key2!21))))

(declare-fun d!164232 () Bool)

(assert (=> d!164232 e!875703))

(declare-fun res!1073246 () Bool)

(assert (=> d!164232 (=> (not res!1073246) (not e!875703))))

(assert (=> d!164232 (= res!1073246 (isStrictlySorted!1022 lt!673361))))

(assert (=> d!164232 (= lt!673361 e!875699)))

(declare-fun c!144949 () Bool)

(assert (=> d!164232 (= c!144949 (and (is-Cons!36917 (insertStrictlySorted!600 l!750 key1!37 v1!32)) (bvslt (_1!12783 (h!38365 (insertStrictlySorted!600 l!750 key1!37 v1!32))) key2!21)))))

(assert (=> d!164232 (isStrictlySorted!1022 (insertStrictlySorted!600 l!750 key1!37 v1!32))))

(assert (=> d!164232 (= (insertStrictlySorted!600 (insertStrictlySorted!600 l!750 key1!37 v1!32) key2!21 v2!10) lt!673361)))

(declare-fun bm!72272 () Bool)

(declare-fun $colon$colon!1004 (List!36921 tuple2!25546) List!36921)

(assert (=> bm!72272 (= call!72274 ($colon$colon!1004 e!875697 (ite c!144949 (h!38365 (insertStrictlySorted!600 l!750 key1!37 v1!32)) (tuple2!25547 key2!21 v2!10))))))

(declare-fun c!144947 () Bool)

(assert (=> bm!72272 (= c!144947 c!144949)))

(declare-fun b!1570643 () Bool)

(declare-fun e!875701 () List!36921)

(assert (=> b!1570643 (= e!875701 call!72275)))

(declare-fun c!144945 () Bool)

(declare-fun c!144951 () Bool)

(declare-fun b!1570645 () Bool)

(assert (=> b!1570645 (= e!875697 (ite c!144945 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32)) (ite c!144951 (Cons!36917 (h!38365 (insertStrictlySorted!600 l!750 key1!37 v1!32)) (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32))) Nil!36918)))))

(declare-fun b!1570647 () Bool)

(declare-fun contains!10448 (List!36921 tuple2!25546) Bool)

(assert (=> b!1570647 (= e!875703 (contains!10448 lt!673361 (tuple2!25547 key2!21 v2!10)))))

(declare-fun bm!72273 () Bool)

(assert (=> bm!72273 (= call!72277 call!72274)))

(declare-fun b!1570649 () Bool)

(assert (=> b!1570649 (= e!875701 call!72275)))

(declare-fun b!1570650 () Bool)

(declare-fun e!875705 () List!36921)

(assert (=> b!1570650 (= e!875699 e!875705)))

(assert (=> b!1570650 (= c!144945 (and (is-Cons!36917 (insertStrictlySorted!600 l!750 key1!37 v1!32)) (= (_1!12783 (h!38365 (insertStrictlySorted!600 l!750 key1!37 v1!32))) key2!21)))))

(declare-fun b!1570652 () Bool)

(assert (=> b!1570652 (= c!144951 (and (is-Cons!36917 (insertStrictlySorted!600 l!750 key1!37 v1!32)) (bvsgt (_1!12783 (h!38365 (insertStrictlySorted!600 l!750 key1!37 v1!32))) key2!21)))))

(assert (=> b!1570652 (= e!875705 e!875701)))

(declare-fun b!1570654 () Bool)

(assert (=> b!1570654 (= e!875705 call!72277)))

(assert (= (and d!164232 c!144949) b!1570638))

(assert (= (and d!164232 (not c!144949)) b!1570650))

(assert (= (and b!1570650 c!144945) b!1570654))

(assert (= (and b!1570650 (not c!144945)) b!1570652))

(assert (= (and b!1570652 c!144951) b!1570649))

(assert (= (and b!1570652 (not c!144951)) b!1570643))

(assert (= (or b!1570649 b!1570643) bm!72270))

(assert (= (or b!1570654 bm!72270) bm!72273))

(assert (= (or b!1570638 bm!72273) bm!72272))

(assert (= (and bm!72272 c!144947) b!1570636))

(assert (= (and bm!72272 (not c!144947)) b!1570645))

(assert (= (and d!164232 res!1073246) b!1570640))

(assert (= (and b!1570640 res!1073243) b!1570647))

(declare-fun m!1444675 () Bool)

(assert (=> d!164232 m!1444675))

(assert (=> d!164232 m!1444661))

(declare-fun m!1444679 () Bool)

(assert (=> d!164232 m!1444679))

(declare-fun m!1444683 () Bool)

(assert (=> b!1570640 m!1444683))

(declare-fun m!1444687 () Bool)

(assert (=> b!1570647 m!1444687))

(declare-fun m!1444691 () Bool)

(assert (=> bm!72272 m!1444691))

(declare-fun m!1444695 () Bool)

(assert (=> b!1570636 m!1444695))

(assert (=> b!1570564 d!164232))

(declare-fun bm!72280 () Bool)

(declare-fun call!72285 () List!36921)

(declare-fun call!72287 () List!36921)

(assert (=> bm!72280 (= call!72285 call!72287)))

(declare-fun e!875707 () List!36921)

(declare-fun b!1570656 () Bool)

(assert (=> b!1570656 (= e!875707 (insertStrictlySorted!600 (t!51839 l!750) key1!37 v1!32))))

(declare-fun b!1570658 () Bool)

(declare-fun e!875709 () List!36921)

(declare-fun call!72284 () List!36921)

(assert (=> b!1570658 (= e!875709 call!72284)))

(declare-fun b!1570660 () Bool)

(declare-fun res!1073247 () Bool)

(declare-fun e!875713 () Bool)

(assert (=> b!1570660 (=> (not res!1073247) (not e!875713))))

(declare-fun lt!673363 () List!36921)

(assert (=> b!1570660 (= res!1073247 (containsKey!870 lt!673363 key1!37))))

(declare-fun d!164237 () Bool)

(assert (=> d!164237 e!875713))

(declare-fun res!1073250 () Bool)

(assert (=> d!164237 (=> (not res!1073250) (not e!875713))))

(assert (=> d!164237 (= res!1073250 (isStrictlySorted!1022 lt!673363))))

(assert (=> d!164237 (= lt!673363 e!875709)))

(declare-fun c!144957 () Bool)

(assert (=> d!164237 (= c!144957 (and (is-Cons!36917 l!750) (bvslt (_1!12783 (h!38365 l!750)) key1!37)))))

(assert (=> d!164237 (isStrictlySorted!1022 l!750)))

(assert (=> d!164237 (= (insertStrictlySorted!600 l!750 key1!37 v1!32) lt!673363)))

(declare-fun bm!72282 () Bool)

(assert (=> bm!72282 (= call!72284 ($colon$colon!1004 e!875707 (ite c!144957 (h!38365 l!750) (tuple2!25547 key1!37 v1!32))))))

(declare-fun c!144955 () Bool)

(assert (=> bm!72282 (= c!144955 c!144957)))

(declare-fun b!1570663 () Bool)

(declare-fun e!875711 () List!36921)

(assert (=> b!1570663 (= e!875711 call!72285)))

(declare-fun c!144953 () Bool)

(declare-fun c!144959 () Bool)

(declare-fun b!1570665 () Bool)

(assert (=> b!1570665 (= e!875707 (ite c!144953 (t!51839 l!750) (ite c!144959 (Cons!36917 (h!38365 l!750) (t!51839 l!750)) Nil!36918)))))

(declare-fun b!1570667 () Bool)

(assert (=> b!1570667 (= e!875713 (contains!10448 lt!673363 (tuple2!25547 key1!37 v1!32)))))

(declare-fun bm!72283 () Bool)

(assert (=> bm!72283 (= call!72287 call!72284)))

(declare-fun b!1570669 () Bool)

(assert (=> b!1570669 (= e!875711 call!72285)))

(declare-fun b!1570670 () Bool)

(declare-fun e!875715 () List!36921)

(assert (=> b!1570670 (= e!875709 e!875715)))

(assert (=> b!1570670 (= c!144953 (and (is-Cons!36917 l!750) (= (_1!12783 (h!38365 l!750)) key1!37)))))

(declare-fun b!1570672 () Bool)

(assert (=> b!1570672 (= c!144959 (and (is-Cons!36917 l!750) (bvsgt (_1!12783 (h!38365 l!750)) key1!37)))))

(assert (=> b!1570672 (= e!875715 e!875711)))

(declare-fun b!1570674 () Bool)

(assert (=> b!1570674 (= e!875715 call!72287)))

(assert (= (and d!164237 c!144957) b!1570658))

(assert (= (and d!164237 (not c!144957)) b!1570670))

(assert (= (and b!1570670 c!144953) b!1570674))

(assert (= (and b!1570670 (not c!144953)) b!1570672))

(assert (= (and b!1570672 c!144959) b!1570669))

(assert (= (and b!1570672 (not c!144959)) b!1570663))

(assert (= (or b!1570669 b!1570663) bm!72280))

(assert (= (or b!1570674 bm!72280) bm!72283))

(assert (= (or b!1570658 bm!72283) bm!72282))

(assert (= (and bm!72282 c!144955) b!1570656))

(assert (= (and bm!72282 (not c!144955)) b!1570665))

(assert (= (and d!164237 res!1073250) b!1570660))

(assert (= (and b!1570660 res!1073247) b!1570667))

(declare-fun m!1444699 () Bool)

(assert (=> d!164237 m!1444699))

(assert (=> d!164237 m!1444659))

(declare-fun m!1444703 () Bool)

(assert (=> b!1570660 m!1444703))

(declare-fun m!1444709 () Bool)

(assert (=> b!1570667 m!1444709))

(declare-fun m!1444713 () Bool)

(assert (=> bm!72282 m!1444713))

(declare-fun m!1444717 () Bool)

(assert (=> b!1570656 m!1444717))

(assert (=> b!1570564 d!164237))

(declare-fun bm!72288 () Bool)

(declare-fun call!72293 () List!36921)

(declare-fun call!72295 () List!36921)

(assert (=> bm!72288 (= call!72293 call!72295)))

(declare-fun b!1570680 () Bool)

(declare-fun e!875719 () List!36921)

(assert (=> b!1570680 (= e!875719 (insertStrictlySorted!600 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10)) key1!37 v1!32))))

(declare-fun b!1570682 () Bool)

(declare-fun e!875721 () List!36921)

(declare-fun call!72292 () List!36921)

(assert (=> b!1570682 (= e!875721 call!72292)))

(declare-fun b!1570684 () Bool)

(declare-fun res!1073251 () Bool)

(declare-fun e!875725 () Bool)

(assert (=> b!1570684 (=> (not res!1073251) (not e!875725))))

(declare-fun lt!673365 () List!36921)

(assert (=> b!1570684 (= res!1073251 (containsKey!870 lt!673365 key1!37))))

(declare-fun d!164241 () Bool)

(assert (=> d!164241 e!875725))

(declare-fun res!1073254 () Bool)

(assert (=> d!164241 (=> (not res!1073254) (not e!875725))))

(assert (=> d!164241 (= res!1073254 (isStrictlySorted!1022 lt!673365))))

(assert (=> d!164241 (= lt!673365 e!875721)))

(declare-fun c!144967 () Bool)

(assert (=> d!164241 (= c!144967 (and (is-Cons!36917 (insertStrictlySorted!600 l!750 key2!21 v2!10)) (bvslt (_1!12783 (h!38365 (insertStrictlySorted!600 l!750 key2!21 v2!10))) key1!37)))))

(assert (=> d!164241 (isStrictlySorted!1022 (insertStrictlySorted!600 l!750 key2!21 v2!10))))

(assert (=> d!164241 (= (insertStrictlySorted!600 (insertStrictlySorted!600 l!750 key2!21 v2!10) key1!37 v1!32) lt!673365)))

(declare-fun bm!72290 () Bool)

(assert (=> bm!72290 (= call!72292 ($colon$colon!1004 e!875719 (ite c!144967 (h!38365 (insertStrictlySorted!600 l!750 key2!21 v2!10)) (tuple2!25547 key1!37 v1!32))))))

(declare-fun c!144965 () Bool)

(assert (=> bm!72290 (= c!144965 c!144967)))

(declare-fun b!1570687 () Bool)

(declare-fun e!875723 () List!36921)

(assert (=> b!1570687 (= e!875723 call!72293)))

(declare-fun b!1570689 () Bool)

(declare-fun c!144969 () Bool)

(declare-fun c!144963 () Bool)

(assert (=> b!1570689 (= e!875719 (ite c!144963 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10)) (ite c!144969 (Cons!36917 (h!38365 (insertStrictlySorted!600 l!750 key2!21 v2!10)) (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10))) Nil!36918)))))

(declare-fun b!1570691 () Bool)

(assert (=> b!1570691 (= e!875725 (contains!10448 lt!673365 (tuple2!25547 key1!37 v1!32)))))

(declare-fun bm!72291 () Bool)

(assert (=> bm!72291 (= call!72295 call!72292)))

(declare-fun b!1570693 () Bool)

(assert (=> b!1570693 (= e!875723 call!72293)))

(declare-fun b!1570694 () Bool)

(declare-fun e!875727 () List!36921)

(assert (=> b!1570694 (= e!875721 e!875727)))

(assert (=> b!1570694 (= c!144963 (and (is-Cons!36917 (insertStrictlySorted!600 l!750 key2!21 v2!10)) (= (_1!12783 (h!38365 (insertStrictlySorted!600 l!750 key2!21 v2!10))) key1!37)))))

(declare-fun b!1570696 () Bool)

(assert (=> b!1570696 (= c!144969 (and (is-Cons!36917 (insertStrictlySorted!600 l!750 key2!21 v2!10)) (bvsgt (_1!12783 (h!38365 (insertStrictlySorted!600 l!750 key2!21 v2!10))) key1!37)))))

(assert (=> b!1570696 (= e!875727 e!875723)))

(declare-fun b!1570698 () Bool)

(assert (=> b!1570698 (= e!875727 call!72295)))

(assert (= (and d!164241 c!144967) b!1570682))

(assert (= (and d!164241 (not c!144967)) b!1570694))

(assert (= (and b!1570694 c!144963) b!1570698))

(assert (= (and b!1570694 (not c!144963)) b!1570696))

(assert (= (and b!1570696 c!144969) b!1570693))

(assert (= (and b!1570696 (not c!144969)) b!1570687))

(assert (= (or b!1570693 b!1570687) bm!72288))

(assert (= (or b!1570698 bm!72288) bm!72291))

(assert (= (or b!1570682 bm!72291) bm!72290))

(assert (= (and bm!72290 c!144965) b!1570680))

(assert (= (and bm!72290 (not c!144965)) b!1570689))

(assert (= (and d!164241 res!1073254) b!1570684))

(assert (= (and b!1570684 res!1073251) b!1570691))

(declare-fun m!1444720 () Bool)

(assert (=> d!164241 m!1444720))

(assert (=> d!164241 m!1444665))

(declare-fun m!1444723 () Bool)

(assert (=> d!164241 m!1444723))

(declare-fun m!1444727 () Bool)

(assert (=> b!1570684 m!1444727))

(declare-fun m!1444731 () Bool)

(assert (=> b!1570691 m!1444731))

(declare-fun m!1444737 () Bool)

(assert (=> bm!72290 m!1444737))

(declare-fun m!1444741 () Bool)

(assert (=> b!1570680 m!1444741))

(assert (=> b!1570564 d!164241))

(declare-fun bm!72297 () Bool)

(declare-fun call!72301 () List!36921)

(declare-fun call!72302 () List!36921)

(assert (=> bm!72297 (= call!72301 call!72302)))

(declare-fun e!875734 () List!36921)

(declare-fun b!1570714 () Bool)

(assert (=> b!1570714 (= e!875734 (insertStrictlySorted!600 (t!51839 l!750) key2!21 v2!10))))

(declare-fun b!1570715 () Bool)

(declare-fun e!875737 () List!36921)

(declare-fun call!72300 () List!36921)

(assert (=> b!1570715 (= e!875737 call!72300)))

(declare-fun b!1570716 () Bool)

(declare-fun res!1073261 () Bool)

(declare-fun e!875739 () Bool)

(assert (=> b!1570716 (=> (not res!1073261) (not e!875739))))

(declare-fun lt!673368 () List!36921)

(assert (=> b!1570716 (= res!1073261 (containsKey!870 lt!673368 key2!21))))

(declare-fun d!164247 () Bool)

(assert (=> d!164247 e!875739))

(declare-fun res!1073262 () Bool)

(assert (=> d!164247 (=> (not res!1073262) (not e!875739))))

(assert (=> d!164247 (= res!1073262 (isStrictlySorted!1022 lt!673368))))

(assert (=> d!164247 (= lt!673368 e!875737)))

(declare-fun c!144976 () Bool)

(assert (=> d!164247 (= c!144976 (and (is-Cons!36917 l!750) (bvslt (_1!12783 (h!38365 l!750)) key2!21)))))

(assert (=> d!164247 (isStrictlySorted!1022 l!750)))

(assert (=> d!164247 (= (insertStrictlySorted!600 l!750 key2!21 v2!10) lt!673368)))

(declare-fun bm!72298 () Bool)

(assert (=> bm!72298 (= call!72300 ($colon$colon!1004 e!875734 (ite c!144976 (h!38365 l!750) (tuple2!25547 key2!21 v2!10))))))

(declare-fun c!144975 () Bool)

(assert (=> bm!72298 (= c!144975 c!144976)))

(declare-fun b!1570717 () Bool)

(declare-fun e!875738 () List!36921)

(assert (=> b!1570717 (= e!875738 call!72301)))

(declare-fun c!144977 () Bool)

(declare-fun b!1570718 () Bool)

(declare-fun c!144974 () Bool)

(assert (=> b!1570718 (= e!875734 (ite c!144974 (t!51839 l!750) (ite c!144977 (Cons!36917 (h!38365 l!750) (t!51839 l!750)) Nil!36918)))))

(declare-fun b!1570719 () Bool)

(assert (=> b!1570719 (= e!875739 (contains!10448 lt!673368 (tuple2!25547 key2!21 v2!10)))))

(declare-fun bm!72299 () Bool)

(assert (=> bm!72299 (= call!72302 call!72300)))

(declare-fun b!1570720 () Bool)

(assert (=> b!1570720 (= e!875738 call!72301)))

(declare-fun b!1570721 () Bool)

(declare-fun e!875740 () List!36921)

(assert (=> b!1570721 (= e!875737 e!875740)))

(assert (=> b!1570721 (= c!144974 (and (is-Cons!36917 l!750) (= (_1!12783 (h!38365 l!750)) key2!21)))))

(declare-fun b!1570722 () Bool)

(assert (=> b!1570722 (= c!144977 (and (is-Cons!36917 l!750) (bvsgt (_1!12783 (h!38365 l!750)) key2!21)))))

(assert (=> b!1570722 (= e!875740 e!875738)))

(declare-fun b!1570723 () Bool)

(assert (=> b!1570723 (= e!875740 call!72302)))

(assert (= (and d!164247 c!144976) b!1570715))

(assert (= (and d!164247 (not c!144976)) b!1570721))

(assert (= (and b!1570721 c!144974) b!1570723))

(assert (= (and b!1570721 (not c!144974)) b!1570722))

(assert (= (and b!1570722 c!144977) b!1570720))

(assert (= (and b!1570722 (not c!144977)) b!1570717))

(assert (= (or b!1570720 b!1570717) bm!72297))

(assert (= (or b!1570723 bm!72297) bm!72299))

(assert (= (or b!1570715 bm!72299) bm!72298))

(assert (= (and bm!72298 c!144975) b!1570714))

(assert (= (and bm!72298 (not c!144975)) b!1570718))

(assert (= (and d!164247 res!1073262) b!1570716))

(assert (= (and b!1570716 res!1073261) b!1570719))

(declare-fun m!1444743 () Bool)

(assert (=> d!164247 m!1444743))

(assert (=> d!164247 m!1444659))

(declare-fun m!1444747 () Bool)

(assert (=> b!1570716 m!1444747))

(declare-fun m!1444753 () Bool)

(assert (=> b!1570719 m!1444753))

(declare-fun m!1444757 () Bool)

(assert (=> bm!72298 m!1444757))

(declare-fun m!1444761 () Bool)

(assert (=> b!1570714 m!1444761))

(assert (=> b!1570564 d!164247))

(declare-fun b!1570733 () Bool)

(declare-fun e!875746 () Bool)

(declare-fun tp!114244 () Bool)

(assert (=> b!1570733 (= e!875746 (and tp_is_empty!39107 tp!114244))))

(assert (=> b!1570565 (= tp!114238 e!875746)))

(assert (= (and b!1570565 (is-Cons!36917 (t!51839 l!750))) b!1570733))

(push 1)

(assert (not b!1570714))

(assert (not b!1570733))

(assert (not d!164232))

(assert (not d!164247))

(assert (not d!164237))

(assert (not bm!72298))

(assert (not bm!72290))

(assert (not b!1570691))

(assert (not b!1570716))

(assert (not b!1570684))

(assert (not b!1570656))

(assert (not b!1570640))

(assert (not b!1570719))

(assert (not b!1570660))

(assert (not b!1570647))

(assert (not b!1570667))

(assert (not d!164241))

(assert (not b!1570636))

(assert (not bm!72272))

(assert (not b!1570680))

(assert (not b!1570576))

(assert (not bm!72282))

(assert tp_is_empty!39107)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164347 () Bool)

(declare-fun res!1073363 () Bool)

(declare-fun e!875888 () Bool)

(assert (=> d!164347 (=> res!1073363 e!875888)))

(assert (=> d!164347 (= res!1073363 (or (is-Nil!36918 lt!673363) (is-Nil!36918 (t!51839 lt!673363))))))

(assert (=> d!164347 (= (isStrictlySorted!1022 lt!673363) e!875888)))

(declare-fun b!1570937 () Bool)

(declare-fun e!875889 () Bool)

(assert (=> b!1570937 (= e!875888 e!875889)))

(declare-fun res!1073364 () Bool)

(assert (=> b!1570937 (=> (not res!1073364) (not e!875889))))

(assert (=> b!1570937 (= res!1073364 (bvslt (_1!12783 (h!38365 lt!673363)) (_1!12783 (h!38365 (t!51839 lt!673363)))))))

(declare-fun b!1570938 () Bool)

(assert (=> b!1570938 (= e!875889 (isStrictlySorted!1022 (t!51839 lt!673363)))))

(assert (= (and d!164347 (not res!1073363)) b!1570937))

(assert (= (and b!1570937 res!1073364) b!1570938))

(declare-fun m!1444979 () Bool)

(assert (=> b!1570938 m!1444979))

(assert (=> d!164237 d!164347))

(assert (=> d!164237 d!164227))

(declare-fun d!164349 () Bool)

(declare-fun res!1073369 () Bool)

(declare-fun e!875894 () Bool)

(assert (=> d!164349 (=> res!1073369 e!875894)))

(assert (=> d!164349 (= res!1073369 (and (is-Cons!36917 lt!673361) (= (_1!12783 (h!38365 lt!673361)) key2!21)))))

(assert (=> d!164349 (= (containsKey!870 lt!673361 key2!21) e!875894)))

(declare-fun b!1570943 () Bool)

(declare-fun e!875895 () Bool)

(assert (=> b!1570943 (= e!875894 e!875895)))

(declare-fun res!1073370 () Bool)

(assert (=> b!1570943 (=> (not res!1073370) (not e!875895))))

(assert (=> b!1570943 (= res!1073370 (and (or (not (is-Cons!36917 lt!673361)) (bvsle (_1!12783 (h!38365 lt!673361)) key2!21)) (is-Cons!36917 lt!673361) (bvslt (_1!12783 (h!38365 lt!673361)) key2!21)))))

(declare-fun b!1570944 () Bool)

(assert (=> b!1570944 (= e!875895 (containsKey!870 (t!51839 lt!673361) key2!21))))

(assert (= (and d!164349 (not res!1073369)) b!1570943))

(assert (= (and b!1570943 res!1073370) b!1570944))

(declare-fun m!1444981 () Bool)

(assert (=> b!1570944 m!1444981))

(assert (=> b!1570640 d!164349))

(declare-fun d!164351 () Bool)

(declare-fun lt!673395 () Bool)

(declare-fun content!825 (List!36921) (Set tuple2!25546))

(assert (=> d!164351 (= lt!673395 (member (tuple2!25547 key1!37 v1!32) (content!825 lt!673365)))))

(declare-fun e!875901 () Bool)

(assert (=> d!164351 (= lt!673395 e!875901)))

(declare-fun res!1073376 () Bool)

(assert (=> d!164351 (=> (not res!1073376) (not e!875901))))

(assert (=> d!164351 (= res!1073376 (is-Cons!36917 lt!673365))))

(assert (=> d!164351 (= (contains!10448 lt!673365 (tuple2!25547 key1!37 v1!32)) lt!673395)))

(declare-fun b!1570949 () Bool)

(declare-fun e!875900 () Bool)

(assert (=> b!1570949 (= e!875901 e!875900)))

(declare-fun res!1073375 () Bool)

(assert (=> b!1570949 (=> res!1073375 e!875900)))

(assert (=> b!1570949 (= res!1073375 (= (h!38365 lt!673365) (tuple2!25547 key1!37 v1!32)))))

(declare-fun b!1570950 () Bool)

(assert (=> b!1570950 (= e!875900 (contains!10448 (t!51839 lt!673365) (tuple2!25547 key1!37 v1!32)))))

(assert (= (and d!164351 res!1073376) b!1570949))

(assert (= (and b!1570949 (not res!1073375)) b!1570950))

(declare-fun m!1444983 () Bool)

(assert (=> d!164351 m!1444983))

(declare-fun m!1444985 () Bool)

(assert (=> d!164351 m!1444985))

(declare-fun m!1444987 () Bool)

(assert (=> b!1570950 m!1444987))

(assert (=> b!1570691 d!164351))

(declare-fun d!164353 () Bool)

(declare-fun res!1073377 () Bool)

(declare-fun e!875902 () Bool)

(assert (=> d!164353 (=> res!1073377 e!875902)))

(assert (=> d!164353 (= res!1073377 (and (is-Cons!36917 lt!673368) (= (_1!12783 (h!38365 lt!673368)) key2!21)))))

(assert (=> d!164353 (= (containsKey!870 lt!673368 key2!21) e!875902)))

(declare-fun b!1570951 () Bool)

(declare-fun e!875903 () Bool)

(assert (=> b!1570951 (= e!875902 e!875903)))

(declare-fun res!1073378 () Bool)

(assert (=> b!1570951 (=> (not res!1073378) (not e!875903))))

(assert (=> b!1570951 (= res!1073378 (and (or (not (is-Cons!36917 lt!673368)) (bvsle (_1!12783 (h!38365 lt!673368)) key2!21)) (is-Cons!36917 lt!673368) (bvslt (_1!12783 (h!38365 lt!673368)) key2!21)))))

(declare-fun b!1570952 () Bool)

(assert (=> b!1570952 (= e!875903 (containsKey!870 (t!51839 lt!673368) key2!21))))

(assert (= (and d!164353 (not res!1073377)) b!1570951))

(assert (= (and b!1570951 res!1073378) b!1570952))

(declare-fun m!1444989 () Bool)

(assert (=> b!1570952 m!1444989))

(assert (=> b!1570716 d!164353))

(declare-fun d!164355 () Bool)

(declare-fun res!1073379 () Bool)

(declare-fun e!875904 () Bool)

(assert (=> d!164355 (=> res!1073379 e!875904)))

(assert (=> d!164355 (= res!1073379 (or (is-Nil!36918 (t!51839 l!750)) (is-Nil!36918 (t!51839 (t!51839 l!750)))))))

(assert (=> d!164355 (= (isStrictlySorted!1022 (t!51839 l!750)) e!875904)))

(declare-fun b!1570953 () Bool)

(declare-fun e!875905 () Bool)

(assert (=> b!1570953 (= e!875904 e!875905)))

(declare-fun res!1073380 () Bool)

(assert (=> b!1570953 (=> (not res!1073380) (not e!875905))))

(assert (=> b!1570953 (= res!1073380 (bvslt (_1!12783 (h!38365 (t!51839 l!750))) (_1!12783 (h!38365 (t!51839 (t!51839 l!750))))))))

(declare-fun b!1570954 () Bool)

(assert (=> b!1570954 (= e!875905 (isStrictlySorted!1022 (t!51839 (t!51839 l!750))))))

(assert (= (and d!164355 (not res!1073379)) b!1570953))

(assert (= (and b!1570953 res!1073380) b!1570954))

(declare-fun m!1444991 () Bool)

(assert (=> b!1570954 m!1444991))

(assert (=> b!1570576 d!164355))

(declare-fun d!164357 () Bool)

(assert (=> d!164357 (= ($colon$colon!1004 e!875734 (ite c!144976 (h!38365 l!750) (tuple2!25547 key2!21 v2!10))) (Cons!36917 (ite c!144976 (h!38365 l!750) (tuple2!25547 key2!21 v2!10)) e!875734))))

(assert (=> bm!72298 d!164357))

(declare-fun lt!673396 () Bool)

(declare-fun d!164359 () Bool)

(assert (=> d!164359 (= lt!673396 (member (tuple2!25547 key2!21 v2!10) (content!825 lt!673361)))))

(declare-fun e!875907 () Bool)

(assert (=> d!164359 (= lt!673396 e!875907)))

(declare-fun res!1073382 () Bool)

(assert (=> d!164359 (=> (not res!1073382) (not e!875907))))

(assert (=> d!164359 (= res!1073382 (is-Cons!36917 lt!673361))))

(assert (=> d!164359 (= (contains!10448 lt!673361 (tuple2!25547 key2!21 v2!10)) lt!673396)))

(declare-fun b!1570955 () Bool)

(declare-fun e!875906 () Bool)

(assert (=> b!1570955 (= e!875907 e!875906)))

(declare-fun res!1073381 () Bool)

(assert (=> b!1570955 (=> res!1073381 e!875906)))

(assert (=> b!1570955 (= res!1073381 (= (h!38365 lt!673361) (tuple2!25547 key2!21 v2!10)))))

(declare-fun b!1570956 () Bool)

(assert (=> b!1570956 (= e!875906 (contains!10448 (t!51839 lt!673361) (tuple2!25547 key2!21 v2!10)))))

(assert (= (and d!164359 res!1073382) b!1570955))

(assert (= (and b!1570955 (not res!1073381)) b!1570956))

(declare-fun m!1444993 () Bool)

(assert (=> d!164359 m!1444993))

(declare-fun m!1444995 () Bool)

(assert (=> d!164359 m!1444995))

(declare-fun m!1444997 () Bool)

(assert (=> b!1570956 m!1444997))

(assert (=> b!1570647 d!164359))

(declare-fun d!164361 () Bool)

(declare-fun res!1073383 () Bool)

(declare-fun e!875908 () Bool)

(assert (=> d!164361 (=> res!1073383 e!875908)))

(assert (=> d!164361 (= res!1073383 (or (is-Nil!36918 lt!673361) (is-Nil!36918 (t!51839 lt!673361))))))

(assert (=> d!164361 (= (isStrictlySorted!1022 lt!673361) e!875908)))

(declare-fun b!1570957 () Bool)

(declare-fun e!875909 () Bool)

(assert (=> b!1570957 (= e!875908 e!875909)))

(declare-fun res!1073384 () Bool)

(assert (=> b!1570957 (=> (not res!1073384) (not e!875909))))

(assert (=> b!1570957 (= res!1073384 (bvslt (_1!12783 (h!38365 lt!673361)) (_1!12783 (h!38365 (t!51839 lt!673361)))))))

(declare-fun b!1570958 () Bool)

(assert (=> b!1570958 (= e!875909 (isStrictlySorted!1022 (t!51839 lt!673361)))))

(assert (= (and d!164361 (not res!1073383)) b!1570957))

(assert (= (and b!1570957 res!1073384) b!1570958))

(declare-fun m!1444999 () Bool)

(assert (=> b!1570958 m!1444999))

(assert (=> d!164232 d!164361))

(declare-fun d!164363 () Bool)

(declare-fun res!1073385 () Bool)

(declare-fun e!875910 () Bool)

(assert (=> d!164363 (=> res!1073385 e!875910)))

(assert (=> d!164363 (= res!1073385 (or (is-Nil!36918 (insertStrictlySorted!600 l!750 key1!37 v1!32)) (is-Nil!36918 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32)))))))

(assert (=> d!164363 (= (isStrictlySorted!1022 (insertStrictlySorted!600 l!750 key1!37 v1!32)) e!875910)))

(declare-fun b!1570959 () Bool)

(declare-fun e!875911 () Bool)

(assert (=> b!1570959 (= e!875910 e!875911)))

(declare-fun res!1073386 () Bool)

(assert (=> b!1570959 (=> (not res!1073386) (not e!875911))))

(assert (=> b!1570959 (= res!1073386 (bvslt (_1!12783 (h!38365 (insertStrictlySorted!600 l!750 key1!37 v1!32))) (_1!12783 (h!38365 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32))))))))

(declare-fun b!1570960 () Bool)

(assert (=> b!1570960 (= e!875911 (isStrictlySorted!1022 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32))))))

(assert (= (and d!164363 (not res!1073385)) b!1570959))

(assert (= (and b!1570959 res!1073386) b!1570960))

(declare-fun m!1445001 () Bool)

(assert (=> b!1570960 m!1445001))

(assert (=> d!164232 d!164363))

(declare-fun d!164365 () Bool)

(assert (=> d!164365 (= ($colon$colon!1004 e!875707 (ite c!144957 (h!38365 l!750) (tuple2!25547 key1!37 v1!32))) (Cons!36917 (ite c!144957 (h!38365 l!750) (tuple2!25547 key1!37 v1!32)) e!875707))))

(assert (=> bm!72282 d!164365))

(declare-fun bm!72336 () Bool)

(declare-fun call!72340 () List!36921)

(declare-fun call!72341 () List!36921)

(assert (=> bm!72336 (= call!72340 call!72341)))

(declare-fun e!875912 () List!36921)

(declare-fun b!1570961 () Bool)

(assert (=> b!1570961 (= e!875912 (insertStrictlySorted!600 (t!51839 (t!51839 l!750)) key2!21 v2!10))))

(declare-fun b!1570962 () Bool)

(declare-fun e!875913 () List!36921)

(declare-fun call!72339 () List!36921)

(assert (=> b!1570962 (= e!875913 call!72339)))

(declare-fun b!1570963 () Bool)

(declare-fun res!1073387 () Bool)

(declare-fun e!875915 () Bool)

(assert (=> b!1570963 (=> (not res!1073387) (not e!875915))))

(declare-fun lt!673397 () List!36921)

(assert (=> b!1570963 (= res!1073387 (containsKey!870 lt!673397 key2!21))))

(declare-fun d!164367 () Bool)

(assert (=> d!164367 e!875915))

(declare-fun res!1073388 () Bool)

(assert (=> d!164367 (=> (not res!1073388) (not e!875915))))

(assert (=> d!164367 (= res!1073388 (isStrictlySorted!1022 lt!673397))))

(assert (=> d!164367 (= lt!673397 e!875913)))

(declare-fun c!145028 () Bool)

(assert (=> d!164367 (= c!145028 (and (is-Cons!36917 (t!51839 l!750)) (bvslt (_1!12783 (h!38365 (t!51839 l!750))) key2!21)))))

(assert (=> d!164367 (isStrictlySorted!1022 (t!51839 l!750))))

(assert (=> d!164367 (= (insertStrictlySorted!600 (t!51839 l!750) key2!21 v2!10) lt!673397)))

(declare-fun bm!72337 () Bool)

(assert (=> bm!72337 (= call!72339 ($colon$colon!1004 e!875912 (ite c!145028 (h!38365 (t!51839 l!750)) (tuple2!25547 key2!21 v2!10))))))

(declare-fun c!145027 () Bool)

(assert (=> bm!72337 (= c!145027 c!145028)))

(declare-fun b!1570964 () Bool)

(declare-fun e!875914 () List!36921)

(assert (=> b!1570964 (= e!875914 call!72340)))

(declare-fun c!145026 () Bool)

(declare-fun b!1570965 () Bool)

(declare-fun c!145029 () Bool)

(assert (=> b!1570965 (= e!875912 (ite c!145026 (t!51839 (t!51839 l!750)) (ite c!145029 (Cons!36917 (h!38365 (t!51839 l!750)) (t!51839 (t!51839 l!750))) Nil!36918)))))

(declare-fun b!1570966 () Bool)

(assert (=> b!1570966 (= e!875915 (contains!10448 lt!673397 (tuple2!25547 key2!21 v2!10)))))

(declare-fun bm!72338 () Bool)

(assert (=> bm!72338 (= call!72341 call!72339)))

(declare-fun b!1570967 () Bool)

(assert (=> b!1570967 (= e!875914 call!72340)))

(declare-fun b!1570968 () Bool)

(declare-fun e!875916 () List!36921)

(assert (=> b!1570968 (= e!875913 e!875916)))

(assert (=> b!1570968 (= c!145026 (and (is-Cons!36917 (t!51839 l!750)) (= (_1!12783 (h!38365 (t!51839 l!750))) key2!21)))))

(declare-fun b!1570969 () Bool)

(assert (=> b!1570969 (= c!145029 (and (is-Cons!36917 (t!51839 l!750)) (bvsgt (_1!12783 (h!38365 (t!51839 l!750))) key2!21)))))

(assert (=> b!1570969 (= e!875916 e!875914)))

(declare-fun b!1570970 () Bool)

(assert (=> b!1570970 (= e!875916 call!72341)))

(assert (= (and d!164367 c!145028) b!1570962))

(assert (= (and d!164367 (not c!145028)) b!1570968))

(assert (= (and b!1570968 c!145026) b!1570970))

(assert (= (and b!1570968 (not c!145026)) b!1570969))

(assert (= (and b!1570969 c!145029) b!1570967))

(assert (= (and b!1570969 (not c!145029)) b!1570964))

(assert (= (or b!1570967 b!1570964) bm!72336))

(assert (= (or b!1570970 bm!72336) bm!72338))

(assert (= (or b!1570962 bm!72338) bm!72337))

(assert (= (and bm!72337 c!145027) b!1570961))

(assert (= (and bm!72337 (not c!145027)) b!1570965))

(assert (= (and d!164367 res!1073388) b!1570963))

(assert (= (and b!1570963 res!1073387) b!1570966))

(declare-fun m!1445003 () Bool)

(assert (=> d!164367 m!1445003))

(assert (=> d!164367 m!1444671))

(declare-fun m!1445005 () Bool)

(assert (=> b!1570963 m!1445005))

(declare-fun m!1445007 () Bool)

(assert (=> b!1570966 m!1445007))

(declare-fun m!1445009 () Bool)

(assert (=> bm!72337 m!1445009))

(declare-fun m!1445011 () Bool)

(assert (=> b!1570961 m!1445011))

(assert (=> b!1570714 d!164367))

(declare-fun bm!72339 () Bool)

(declare-fun call!72343 () List!36921)

(declare-fun call!72344 () List!36921)

(assert (=> bm!72339 (= call!72343 call!72344)))

(declare-fun b!1570971 () Bool)

(declare-fun e!875917 () List!36921)

(assert (=> b!1570971 (= e!875917 (insertStrictlySorted!600 (t!51839 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10))) key1!37 v1!32))))

(declare-fun b!1570972 () Bool)

(declare-fun e!875918 () List!36921)

(declare-fun call!72342 () List!36921)

(assert (=> b!1570972 (= e!875918 call!72342)))

(declare-fun b!1570973 () Bool)

(declare-fun res!1073389 () Bool)

(declare-fun e!875920 () Bool)

(assert (=> b!1570973 (=> (not res!1073389) (not e!875920))))

(declare-fun lt!673398 () List!36921)

(assert (=> b!1570973 (= res!1073389 (containsKey!870 lt!673398 key1!37))))

(declare-fun d!164369 () Bool)

(assert (=> d!164369 e!875920))

(declare-fun res!1073390 () Bool)

(assert (=> d!164369 (=> (not res!1073390) (not e!875920))))

(assert (=> d!164369 (= res!1073390 (isStrictlySorted!1022 lt!673398))))

(assert (=> d!164369 (= lt!673398 e!875918)))

(declare-fun c!145032 () Bool)

(assert (=> d!164369 (= c!145032 (and (is-Cons!36917 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10))) (bvslt (_1!12783 (h!38365 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10)))) key1!37)))))

(assert (=> d!164369 (isStrictlySorted!1022 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10)))))

(assert (=> d!164369 (= (insertStrictlySorted!600 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10)) key1!37 v1!32) lt!673398)))

(declare-fun bm!72340 () Bool)

(assert (=> bm!72340 (= call!72342 ($colon$colon!1004 e!875917 (ite c!145032 (h!38365 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10))) (tuple2!25547 key1!37 v1!32))))))

(declare-fun c!145031 () Bool)

(assert (=> bm!72340 (= c!145031 c!145032)))

(declare-fun b!1570974 () Bool)

(declare-fun e!875919 () List!36921)

(assert (=> b!1570974 (= e!875919 call!72343)))

(declare-fun c!145033 () Bool)

(declare-fun c!145030 () Bool)

(declare-fun b!1570975 () Bool)

(assert (=> b!1570975 (= e!875917 (ite c!145030 (t!51839 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10))) (ite c!145033 (Cons!36917 (h!38365 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10))) (t!51839 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10)))) Nil!36918)))))

(declare-fun b!1570976 () Bool)

(assert (=> b!1570976 (= e!875920 (contains!10448 lt!673398 (tuple2!25547 key1!37 v1!32)))))

(declare-fun bm!72341 () Bool)

(assert (=> bm!72341 (= call!72344 call!72342)))

(declare-fun b!1570977 () Bool)

(assert (=> b!1570977 (= e!875919 call!72343)))

(declare-fun b!1570978 () Bool)

(declare-fun e!875921 () List!36921)

(assert (=> b!1570978 (= e!875918 e!875921)))

(assert (=> b!1570978 (= c!145030 (and (is-Cons!36917 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10))) (= (_1!12783 (h!38365 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10)))) key1!37)))))

(declare-fun b!1570979 () Bool)

(assert (=> b!1570979 (= c!145033 (and (is-Cons!36917 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10))) (bvsgt (_1!12783 (h!38365 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10)))) key1!37)))))

(assert (=> b!1570979 (= e!875921 e!875919)))

(declare-fun b!1570980 () Bool)

(assert (=> b!1570980 (= e!875921 call!72344)))

(assert (= (and d!164369 c!145032) b!1570972))

(assert (= (and d!164369 (not c!145032)) b!1570978))

(assert (= (and b!1570978 c!145030) b!1570980))

(assert (= (and b!1570978 (not c!145030)) b!1570979))

(assert (= (and b!1570979 c!145033) b!1570977))

(assert (= (and b!1570979 (not c!145033)) b!1570974))

(assert (= (or b!1570977 b!1570974) bm!72339))

(assert (= (or b!1570980 bm!72339) bm!72341))

(assert (= (or b!1570972 bm!72341) bm!72340))

(assert (= (and bm!72340 c!145031) b!1570971))

(assert (= (and bm!72340 (not c!145031)) b!1570975))

(assert (= (and d!164369 res!1073390) b!1570973))

(assert (= (and b!1570973 res!1073389) b!1570976))

(declare-fun m!1445013 () Bool)

(assert (=> d!164369 m!1445013))

(declare-fun m!1445015 () Bool)

(assert (=> d!164369 m!1445015))

(declare-fun m!1445017 () Bool)

(assert (=> b!1570973 m!1445017))

(declare-fun m!1445019 () Bool)

(assert (=> b!1570976 m!1445019))

(declare-fun m!1445021 () Bool)

(assert (=> bm!72340 m!1445021))

(declare-fun m!1445023 () Bool)

(assert (=> b!1570971 m!1445023))

(assert (=> b!1570680 d!164369))

(declare-fun d!164371 () Bool)

(assert (=> d!164371 (= ($colon$colon!1004 e!875719 (ite c!144967 (h!38365 (insertStrictlySorted!600 l!750 key2!21 v2!10)) (tuple2!25547 key1!37 v1!32))) (Cons!36917 (ite c!144967 (h!38365 (insertStrictlySorted!600 l!750 key2!21 v2!10)) (tuple2!25547 key1!37 v1!32)) e!875719))))

(assert (=> bm!72290 d!164371))

(declare-fun d!164373 () Bool)

(declare-fun res!1073391 () Bool)

(declare-fun e!875922 () Bool)

(assert (=> d!164373 (=> res!1073391 e!875922)))

(assert (=> d!164373 (= res!1073391 (or (is-Nil!36918 lt!673365) (is-Nil!36918 (t!51839 lt!673365))))))

(assert (=> d!164373 (= (isStrictlySorted!1022 lt!673365) e!875922)))

(declare-fun b!1570981 () Bool)

(declare-fun e!875923 () Bool)

(assert (=> b!1570981 (= e!875922 e!875923)))

(declare-fun res!1073392 () Bool)

(assert (=> b!1570981 (=> (not res!1073392) (not e!875923))))

(assert (=> b!1570981 (= res!1073392 (bvslt (_1!12783 (h!38365 lt!673365)) (_1!12783 (h!38365 (t!51839 lt!673365)))))))

(declare-fun b!1570982 () Bool)

(assert (=> b!1570982 (= e!875923 (isStrictlySorted!1022 (t!51839 lt!673365)))))

(assert (= (and d!164373 (not res!1073391)) b!1570981))

(assert (= (and b!1570981 res!1073392) b!1570982))

(declare-fun m!1445025 () Bool)

(assert (=> b!1570982 m!1445025))

(assert (=> d!164241 d!164373))

(declare-fun d!164375 () Bool)

(declare-fun res!1073393 () Bool)

(declare-fun e!875924 () Bool)

(assert (=> d!164375 (=> res!1073393 e!875924)))

(assert (=> d!164375 (= res!1073393 (or (is-Nil!36918 (insertStrictlySorted!600 l!750 key2!21 v2!10)) (is-Nil!36918 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10)))))))

(assert (=> d!164375 (= (isStrictlySorted!1022 (insertStrictlySorted!600 l!750 key2!21 v2!10)) e!875924)))

(declare-fun b!1570983 () Bool)

(declare-fun e!875925 () Bool)

(assert (=> b!1570983 (= e!875924 e!875925)))

(declare-fun res!1073394 () Bool)

(assert (=> b!1570983 (=> (not res!1073394) (not e!875925))))

(assert (=> b!1570983 (= res!1073394 (bvslt (_1!12783 (h!38365 (insertStrictlySorted!600 l!750 key2!21 v2!10))) (_1!12783 (h!38365 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10))))))))

(declare-fun b!1570984 () Bool)

(assert (=> b!1570984 (= e!875925 (isStrictlySorted!1022 (t!51839 (insertStrictlySorted!600 l!750 key2!21 v2!10))))))

(assert (= (and d!164375 (not res!1073393)) b!1570983))

(assert (= (and b!1570983 res!1073394) b!1570984))

(assert (=> b!1570984 m!1445015))

(assert (=> d!164241 d!164375))

(declare-fun d!164377 () Bool)

(declare-fun res!1073395 () Bool)

(declare-fun e!875926 () Bool)

(assert (=> d!164377 (=> res!1073395 e!875926)))

(assert (=> d!164377 (= res!1073395 (or (is-Nil!36918 lt!673368) (is-Nil!36918 (t!51839 lt!673368))))))

(assert (=> d!164377 (= (isStrictlySorted!1022 lt!673368) e!875926)))

(declare-fun b!1570985 () Bool)

(declare-fun e!875927 () Bool)

(assert (=> b!1570985 (= e!875926 e!875927)))

(declare-fun res!1073396 () Bool)

(assert (=> b!1570985 (=> (not res!1073396) (not e!875927))))

(assert (=> b!1570985 (= res!1073396 (bvslt (_1!12783 (h!38365 lt!673368)) (_1!12783 (h!38365 (t!51839 lt!673368)))))))

(declare-fun b!1570986 () Bool)

(assert (=> b!1570986 (= e!875927 (isStrictlySorted!1022 (t!51839 lt!673368)))))

(assert (= (and d!164377 (not res!1073395)) b!1570985))

(assert (= (and b!1570985 res!1073396) b!1570986))

(declare-fun m!1445027 () Bool)

(assert (=> b!1570986 m!1445027))

(assert (=> d!164247 d!164377))

(assert (=> d!164247 d!164227))

(declare-fun bm!72342 () Bool)

(declare-fun call!72346 () List!36921)

(declare-fun call!72347 () List!36921)

(assert (=> bm!72342 (= call!72346 call!72347)))

(declare-fun e!875928 () List!36921)

(declare-fun b!1570987 () Bool)

(assert (=> b!1570987 (= e!875928 (insertStrictlySorted!600 (t!51839 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32))) key2!21 v2!10))))

(declare-fun b!1570988 () Bool)

(declare-fun e!875929 () List!36921)

(declare-fun call!72345 () List!36921)

(assert (=> b!1570988 (= e!875929 call!72345)))

(declare-fun b!1570989 () Bool)

(declare-fun res!1073397 () Bool)

(declare-fun e!875931 () Bool)

(assert (=> b!1570989 (=> (not res!1073397) (not e!875931))))

(declare-fun lt!673399 () List!36921)

(assert (=> b!1570989 (= res!1073397 (containsKey!870 lt!673399 key2!21))))

(declare-fun d!164379 () Bool)

(assert (=> d!164379 e!875931))

(declare-fun res!1073398 () Bool)

(assert (=> d!164379 (=> (not res!1073398) (not e!875931))))

(assert (=> d!164379 (= res!1073398 (isStrictlySorted!1022 lt!673399))))

(assert (=> d!164379 (= lt!673399 e!875929)))

(declare-fun c!145036 () Bool)

(assert (=> d!164379 (= c!145036 (and (is-Cons!36917 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32))) (bvslt (_1!12783 (h!38365 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32)))) key2!21)))))

(assert (=> d!164379 (isStrictlySorted!1022 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32)))))

(assert (=> d!164379 (= (insertStrictlySorted!600 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32)) key2!21 v2!10) lt!673399)))

(declare-fun bm!72343 () Bool)

(assert (=> bm!72343 (= call!72345 ($colon$colon!1004 e!875928 (ite c!145036 (h!38365 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32))) (tuple2!25547 key2!21 v2!10))))))

(declare-fun c!145035 () Bool)

(assert (=> bm!72343 (= c!145035 c!145036)))

(declare-fun b!1570990 () Bool)

(declare-fun e!875930 () List!36921)

(assert (=> b!1570990 (= e!875930 call!72346)))

(declare-fun c!145034 () Bool)

(declare-fun b!1570991 () Bool)

(declare-fun c!145037 () Bool)

(assert (=> b!1570991 (= e!875928 (ite c!145034 (t!51839 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32))) (ite c!145037 (Cons!36917 (h!38365 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32))) (t!51839 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32)))) Nil!36918)))))

(declare-fun b!1570992 () Bool)

(assert (=> b!1570992 (= e!875931 (contains!10448 lt!673399 (tuple2!25547 key2!21 v2!10)))))

(declare-fun bm!72344 () Bool)

(assert (=> bm!72344 (= call!72347 call!72345)))

(declare-fun b!1570993 () Bool)

(assert (=> b!1570993 (= e!875930 call!72346)))

(declare-fun b!1570994 () Bool)

(declare-fun e!875932 () List!36921)

(assert (=> b!1570994 (= e!875929 e!875932)))

(assert (=> b!1570994 (= c!145034 (and (is-Cons!36917 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32))) (= (_1!12783 (h!38365 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32)))) key2!21)))))

(declare-fun b!1570995 () Bool)

(assert (=> b!1570995 (= c!145037 (and (is-Cons!36917 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32))) (bvsgt (_1!12783 (h!38365 (t!51839 (insertStrictlySorted!600 l!750 key1!37 v1!32)))) key2!21)))))

(assert (=> b!1570995 (= e!875932 e!875930)))

(declare-fun b!1570996 () Bool)

(assert (=> b!1570996 (= e!875932 call!72347)))

(assert (= (and d!164379 c!145036) b!1570988))

(assert (= (and d!164379 (not c!145036)) b!1570994))

(assert (= (and b!1570994 c!145034) b!1570996))

(assert (= (and b!1570994 (not c!145034)) b!1570995))

(assert (= (and b!1570995 c!145037) b!1570993))

(assert (= (and b!1570995 (not c!145037)) b!1570990))

(assert (= (or b!1570993 b!1570990) bm!72342))

(assert (= (or b!1570996 bm!72342) bm!72344))

(assert (= (or b!1570988 bm!72344) bm!72343))

(assert (= (and bm!72343 c!145035) b!1570987))

(assert (= (and bm!72343 (not c!145035)) b!1570991))

(assert (= (and d!164379 res!1073398) b!1570989))

(assert (= (and b!1570989 res!1073397) b!1570992))

(declare-fun m!1445029 () Bool)

(assert (=> d!164379 m!1445029))

(assert (=> d!164379 m!1445001))

(declare-fun m!1445031 () Bool)

(assert (=> b!1570989 m!1445031))

(declare-fun m!1445033 () Bool)

(assert (=> b!1570992 m!1445033))

(declare-fun m!1445035 () Bool)

(assert (=> bm!72343 m!1445035))

(declare-fun m!1445037 () Bool)

(assert (=> b!1570987 m!1445037))

(assert (=> b!1570636 d!164379))

(declare-fun d!164381 () Bool)

(declare-fun res!1073399 () Bool)

(declare-fun e!875933 () Bool)

(assert (=> d!164381 (=> res!1073399 e!875933)))

(assert (=> d!164381 (= res!1073399 (and (is-Cons!36917 lt!673363) (= (_1!12783 (h!38365 lt!673363)) key1!37)))))

(assert (=> d!164381 (= (containsKey!870 lt!673363 key1!37) e!875933)))

(declare-fun b!1570997 () Bool)

(declare-fun e!875934 () Bool)

(assert (=> b!1570997 (= e!875933 e!875934)))

(declare-fun res!1073400 () Bool)

(assert (=> b!1570997 (=> (not res!1073400) (not e!875934))))

(assert (=> b!1570997 (= res!1073400 (and (or (not (is-Cons!36917 lt!673363)) (bvsle (_1!12783 (h!38365 lt!673363)) key1!37)) (is-Cons!36917 lt!673363) (bvslt (_1!12783 (h!38365 lt!673363)) key1!37)))))

(declare-fun b!1570998 () Bool)

(assert (=> b!1570998 (= e!875934 (containsKey!870 (t!51839 lt!673363) key1!37))))

(assert (= (and d!164381 (not res!1073399)) b!1570997))

(assert (= (and b!1570997 res!1073400) b!1570998))

(declare-fun m!1445039 () Bool)

(assert (=> b!1570998 m!1445039))

(assert (=> b!1570660 d!164381))

(declare-fun d!164383 () Bool)

(assert (=> d!164383 (= ($colon$colon!1004 e!875697 (ite c!144949 (h!38365 (insertStrictlySorted!600 l!750 key1!37 v1!32)) (tuple2!25547 key2!21 v2!10))) (Cons!36917 (ite c!144949 (h!38365 (insertStrictlySorted!600 l!750 key1!37 v1!32)) (tuple2!25547 key2!21 v2!10)) e!875697))))

(assert (=> bm!72272 d!164383))

(declare-fun bm!72345 () Bool)

(declare-fun call!72349 () List!36921)

(declare-fun call!72350 () List!36921)

(assert (=> bm!72345 (= call!72349 call!72350)))

(declare-fun e!875935 () List!36921)

(declare-fun b!1570999 () Bool)

(assert (=> b!1570999 (= e!875935 (insertStrictlySorted!600 (t!51839 (t!51839 l!750)) key1!37 v1!32))))

(declare-fun b!1571000 () Bool)

(declare-fun e!875936 () List!36921)

(declare-fun call!72348 () List!36921)

(assert (=> b!1571000 (= e!875936 call!72348)))

(declare-fun b!1571001 () Bool)

(declare-fun res!1073401 () Bool)

(declare-fun e!875938 () Bool)

(assert (=> b!1571001 (=> (not res!1073401) (not e!875938))))

(declare-fun lt!673400 () List!36921)

(assert (=> b!1571001 (= res!1073401 (containsKey!870 lt!673400 key1!37))))

(declare-fun d!164385 () Bool)

(assert (=> d!164385 e!875938))

(declare-fun res!1073402 () Bool)

(assert (=> d!164385 (=> (not res!1073402) (not e!875938))))

(assert (=> d!164385 (= res!1073402 (isStrictlySorted!1022 lt!673400))))

(assert (=> d!164385 (= lt!673400 e!875936)))

(declare-fun c!145040 () Bool)

(assert (=> d!164385 (= c!145040 (and (is-Cons!36917 (t!51839 l!750)) (bvslt (_1!12783 (h!38365 (t!51839 l!750))) key1!37)))))

(assert (=> d!164385 (isStrictlySorted!1022 (t!51839 l!750))))

(assert (=> d!164385 (= (insertStrictlySorted!600 (t!51839 l!750) key1!37 v1!32) lt!673400)))

(declare-fun bm!72346 () Bool)

(assert (=> bm!72346 (= call!72348 ($colon$colon!1004 e!875935 (ite c!145040 (h!38365 (t!51839 l!750)) (tuple2!25547 key1!37 v1!32))))))

(declare-fun c!145039 () Bool)

(assert (=> bm!72346 (= c!145039 c!145040)))

(declare-fun b!1571002 () Bool)

(declare-fun e!875937 () List!36921)

(assert (=> b!1571002 (= e!875937 call!72349)))

(declare-fun c!145038 () Bool)

(declare-fun c!145041 () Bool)

(declare-fun b!1571003 () Bool)

(assert (=> b!1571003 (= e!875935 (ite c!145038 (t!51839 (t!51839 l!750)) (ite c!145041 (Cons!36917 (h!38365 (t!51839 l!750)) (t!51839 (t!51839 l!750))) Nil!36918)))))

(declare-fun b!1571004 () Bool)

(assert (=> b!1571004 (= e!875938 (contains!10448 lt!673400 (tuple2!25547 key1!37 v1!32)))))

(declare-fun bm!72347 () Bool)

(assert (=> bm!72347 (= call!72350 call!72348)))

(declare-fun b!1571005 () Bool)

(assert (=> b!1571005 (= e!875937 call!72349)))

(declare-fun b!1571006 () Bool)

(declare-fun e!875939 () List!36921)

(assert (=> b!1571006 (= e!875936 e!875939)))

(assert (=> b!1571006 (= c!145038 (and (is-Cons!36917 (t!51839 l!750)) (= (_1!12783 (h!38365 (t!51839 l!750))) key1!37)))))

(declare-fun b!1571007 () Bool)

(assert (=> b!1571007 (= c!145041 (and (is-Cons!36917 (t!51839 l!750)) (bvsgt (_1!12783 (h!38365 (t!51839 l!750))) key1!37)))))

(assert (=> b!1571007 (= e!875939 e!875937)))

(declare-fun b!1571008 () Bool)

(assert (=> b!1571008 (= e!875939 call!72350)))

(assert (= (and d!164385 c!145040) b!1571000))

(assert (= (and d!164385 (not c!145040)) b!1571006))

(assert (= (and b!1571006 c!145038) b!1571008))

(assert (= (and b!1571006 (not c!145038)) b!1571007))

(assert (= (and b!1571007 c!145041) b!1571005))

(assert (= (and b!1571007 (not c!145041)) b!1571002))

(assert (= (or b!1571005 b!1571002) bm!72345))

(assert (= (or b!1571008 bm!72345) bm!72347))

(assert (= (or b!1571000 bm!72347) bm!72346))

(assert (= (and bm!72346 c!145039) b!1570999))

(assert (= (and bm!72346 (not c!145039)) b!1571003))

(assert (= (and d!164385 res!1073402) b!1571001))

(assert (= (and b!1571001 res!1073401) b!1571004))

(declare-fun m!1445041 () Bool)

(assert (=> d!164385 m!1445041))

(assert (=> d!164385 m!1444671))

(declare-fun m!1445043 () Bool)

(assert (=> b!1571001 m!1445043))

(declare-fun m!1445045 () Bool)

(assert (=> b!1571004 m!1445045))

(declare-fun m!1445047 () Bool)

(assert (=> bm!72346 m!1445047))

(declare-fun m!1445049 () Bool)

(assert (=> b!1570999 m!1445049))

(assert (=> b!1570656 d!164385))

(declare-fun d!164387 () Bool)

(declare-fun res!1073403 () Bool)

(declare-fun e!875940 () Bool)

(assert (=> d!164387 (=> res!1073403 e!875940)))

(assert (=> d!164387 (= res!1073403 (and (is-Cons!36917 lt!673365) (= (_1!12783 (h!38365 lt!673365)) key1!37)))))

(assert (=> d!164387 (= (containsKey!870 lt!673365 key1!37) e!875940)))

(declare-fun b!1571009 () Bool)

(declare-fun e!875941 () Bool)

(assert (=> b!1571009 (= e!875940 e!875941)))

(declare-fun res!1073404 () Bool)

(assert (=> b!1571009 (=> (not res!1073404) (not e!875941))))

(assert (=> b!1571009 (= res!1073404 (and (or (not (is-Cons!36917 lt!673365)) (bvsle (_1!12783 (h!38365 lt!673365)) key1!37)) (is-Cons!36917 lt!673365) (bvslt (_1!12783 (h!38365 lt!673365)) key1!37)))))

(declare-fun b!1571010 () Bool)

(assert (=> b!1571010 (= e!875941 (containsKey!870 (t!51839 lt!673365) key1!37))))

(assert (= (and d!164387 (not res!1073403)) b!1571009))

(assert (= (and b!1571009 res!1073404) b!1571010))

(declare-fun m!1445051 () Bool)

(assert (=> b!1571010 m!1445051))

(assert (=> b!1570684 d!164387))

(declare-fun d!164389 () Bool)

(declare-fun lt!673401 () Bool)

(assert (=> d!164389 (= lt!673401 (member (tuple2!25547 key1!37 v1!32) (content!825 lt!673363)))))

(declare-fun e!875943 () Bool)

(assert (=> d!164389 (= lt!673401 e!875943)))

(declare-fun res!1073406 () Bool)

(assert (=> d!164389 (=> (not res!1073406) (not e!875943))))

(assert (=> d!164389 (= res!1073406 (is-Cons!36917 lt!673363))))

(assert (=> d!164389 (= (contains!10448 lt!673363 (tuple2!25547 key1!37 v1!32)) lt!673401)))

(declare-fun b!1571011 () Bool)

(declare-fun e!875942 () Bool)

(assert (=> b!1571011 (= e!875943 e!875942)))

(declare-fun res!1073405 () Bool)

(assert (=> b!1571011 (=> res!1073405 e!875942)))

(assert (=> b!1571011 (= res!1073405 (= (h!38365 lt!673363) (tuple2!25547 key1!37 v1!32)))))

(declare-fun b!1571012 () Bool)

(assert (=> b!1571012 (= e!875942 (contains!10448 (t!51839 lt!673363) (tuple2!25547 key1!37 v1!32)))))

(assert (= (and d!164389 res!1073406) b!1571011))

(assert (= (and b!1571011 (not res!1073405)) b!1571012))

(declare-fun m!1445053 () Bool)

(assert (=> d!164389 m!1445053))

(declare-fun m!1445055 () Bool)

(assert (=> d!164389 m!1445055))

(declare-fun m!1445057 () Bool)

(assert (=> b!1571012 m!1445057))

(assert (=> b!1570667 d!164389))

(declare-fun lt!673402 () Bool)

(declare-fun d!164391 () Bool)

(assert (=> d!164391 (= lt!673402 (member (tuple2!25547 key2!21 v2!10) (content!825 lt!673368)))))

(declare-fun e!875945 () Bool)

(assert (=> d!164391 (= lt!673402 e!875945)))

(declare-fun res!1073408 () Bool)

(assert (=> d!164391 (=> (not res!1073408) (not e!875945))))

(assert (=> d!164391 (= res!1073408 (is-Cons!36917 lt!673368))))

(assert (=> d!164391 (= (contains!10448 lt!673368 (tuple2!25547 key2!21 v2!10)) lt!673402)))

(declare-fun b!1571013 () Bool)

(declare-fun e!875944 () Bool)

(assert (=> b!1571013 (= e!875945 e!875944)))

(declare-fun res!1073407 () Bool)

(assert (=> b!1571013 (=> res!1073407 e!875944)))

(assert (=> b!1571013 (= res!1073407 (= (h!38365 lt!673368) (tuple2!25547 key2!21 v2!10)))))

(declare-fun b!1571014 () Bool)

(assert (=> b!1571014 (= e!875944 (contains!10448 (t!51839 lt!673368) (tuple2!25547 key2!21 v2!10)))))

(assert (= (and d!164391 res!1073408) b!1571013))

(assert (= (and b!1571013 (not res!1073407)) b!1571014))

(declare-fun m!1445059 () Bool)

(assert (=> d!164391 m!1445059))

(declare-fun m!1445061 () Bool)

(assert (=> d!164391 m!1445061))

(declare-fun m!1445063 () Bool)

(assert (=> b!1571014 m!1445063))

(assert (=> b!1570719 d!164391))

(declare-fun b!1571015 () Bool)

(declare-fun e!875946 () Bool)

(declare-fun tp!114250 () Bool)

(assert (=> b!1571015 (= e!875946 (and tp_is_empty!39107 tp!114250))))

(assert (=> b!1570733 (= tp!114244 e!875946)))

(assert (= (and b!1570733 (is-Cons!36917 (t!51839 (t!51839 l!750)))) b!1571015))

(push 1)

(assert (not b!1570960))

(assert (not b!1570992))

(assert (not d!164351))

(assert (not b!1570952))

(assert (not d!164379))

(assert (not b!1570973))

(assert tp_is_empty!39107)

(assert (not b!1570971))

(assert (not b!1571004))

(assert (not b!1571010))

(assert (not b!1570976))

(assert (not d!164385))

(assert (not b!1570944))

(assert (not b!1570961))

(assert (not b!1570950))

(assert (not b!1570998))

(assert (not bm!72343))

(assert (not b!1570986))

(assert (not b!1570963))

(assert (not d!164389))

(assert (not d!164369))

(assert (not bm!72346))

(assert (not d!164359))

(assert (not bm!72340))

(assert (not bm!72337))

(assert (not b!1570999))

(assert (not b!1570989))

(assert (not b!1571001))

(assert (not b!1570958))

(assert (not b!1571015))

(assert (not b!1570984))

(assert (not b!1570938))

(assert (not b!1570982))

(assert (not b!1570954))

(assert (not b!1570966))

(assert (not b!1571012))

(assert (not b!1570987))

(assert (not d!164391))

(assert (not b!1570956))

(assert (not d!164367))

(assert (not b!1571014))

(check-sat)

(pop 1)

(push 1)

(check-sat)

