; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134566 () Bool)

(assert start!134566)

(declare-fun b!1570538 () Bool)

(declare-fun res!1073198 () Bool)

(declare-fun e!875639 () Bool)

(assert (=> b!1570538 (=> (not res!1073198) (not e!875639))))

(declare-datatypes ((B!2552 0))(
  ( (B!2553 (val!19638 Int)) )
))
(declare-datatypes ((tuple2!25542 0))(
  ( (tuple2!25543 (_1!12781 (_ BitVec 64)) (_2!12781 B!2552)) )
))
(declare-datatypes ((List!36919 0))(
  ( (Nil!36916) (Cons!36915 (h!38363 tuple2!25542) (t!51837 List!36919)) )
))
(declare-fun l!750 () List!36919)

(declare-fun isStrictlySorted!1020 (List!36919) Bool)

(assert (=> b!1570538 (= res!1073198 (isStrictlySorted!1020 l!750))))

(declare-fun b!1570539 () Bool)

(declare-fun res!1073196 () Bool)

(assert (=> b!1570539 (=> (not res!1073196) (not e!875639))))

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(assert (=> b!1570539 (= res!1073196 (or (not (is-Cons!36915 l!750)) (bvsge (_1!12781 (h!38363 l!750)) key1!37) (bvsge (_1!12781 (h!38363 l!750)) key2!21)))))

(declare-fun v1!32 () B!2552)

(declare-fun v2!10 () B!2552)

(declare-fun b!1570540 () Bool)

(declare-fun insertStrictlySorted!598 (List!36919 (_ BitVec 64) B!2552) List!36919)

(assert (=> b!1570540 (= e!875639 (not (= (insertStrictlySorted!598 (insertStrictlySorted!598 l!750 key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!598 (insertStrictlySorted!598 l!750 key2!21 v2!10) key1!37 v1!32))))))

(declare-fun b!1570541 () Bool)

(declare-fun e!875640 () Bool)

(declare-fun tp_is_empty!39103 () Bool)

(declare-fun tp!114232 () Bool)

(assert (=> b!1570541 (= e!875640 (and tp_is_empty!39103 tp!114232))))

(declare-fun res!1073197 () Bool)

(assert (=> start!134566 (=> (not res!1073197) (not e!875639))))

(assert (=> start!134566 (= res!1073197 (not (= key1!37 key2!21)))))

(assert (=> start!134566 e!875639))

(assert (=> start!134566 tp_is_empty!39103))

(assert (=> start!134566 e!875640))

(assert (=> start!134566 true))

(assert (= (and start!134566 res!1073197) b!1570538))

(assert (= (and b!1570538 res!1073198) b!1570539))

(assert (= (and b!1570539 res!1073196) b!1570540))

(assert (= (and start!134566 (is-Cons!36915 l!750)) b!1570541))

(declare-fun m!1444639 () Bool)

(assert (=> b!1570538 m!1444639))

(declare-fun m!1444641 () Bool)

(assert (=> b!1570540 m!1444641))

(assert (=> b!1570540 m!1444641))

(declare-fun m!1444643 () Bool)

(assert (=> b!1570540 m!1444643))

(declare-fun m!1444645 () Bool)

(assert (=> b!1570540 m!1444645))

(assert (=> b!1570540 m!1444645))

(declare-fun m!1444647 () Bool)

(assert (=> b!1570540 m!1444647))

(push 1)

(assert (not b!1570538))

(assert (not b!1570540))

(assert (not b!1570541))

(assert tp_is_empty!39103)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164229 () Bool)

(declare-fun res!1073233 () Bool)

(declare-fun e!875669 () Bool)

(assert (=> d!164229 (=> res!1073233 e!875669)))

(assert (=> d!164229 (= res!1073233 (or (is-Nil!36916 l!750) (is-Nil!36916 (t!51837 l!750))))))

(assert (=> d!164229 (= (isStrictlySorted!1020 l!750) e!875669)))

(declare-fun b!1570582 () Bool)

(declare-fun e!875670 () Bool)

(assert (=> b!1570582 (= e!875669 e!875670)))

(declare-fun res!1073234 () Bool)

(assert (=> b!1570582 (=> (not res!1073234) (not e!875670))))

(assert (=> b!1570582 (= res!1073234 (bvslt (_1!12781 (h!38363 l!750)) (_1!12781 (h!38363 (t!51837 l!750)))))))

(declare-fun b!1570583 () Bool)

(assert (=> b!1570583 (= e!875670 (isStrictlySorted!1020 (t!51837 l!750)))))

(assert (= (and d!164229 (not res!1073233)) b!1570582))

(assert (= (and b!1570582 res!1073234) b!1570583))

(declare-fun m!1444673 () Bool)

(assert (=> b!1570583 m!1444673))

(assert (=> b!1570538 d!164229))

(declare-fun c!144978 () Bool)

(declare-fun call!72305 () List!36919)

(declare-fun bm!72300 () Bool)

(declare-fun e!875747 () List!36919)

(declare-fun $colon$colon!1005 (List!36919 tuple2!25542) List!36919)

(assert (=> bm!72300 (= call!72305 ($colon$colon!1005 e!875747 (ite c!144978 (h!38363 (insertStrictlySorted!598 l!750 key1!37 v1!32)) (tuple2!25543 key2!21 v2!10))))))

(declare-fun c!144979 () Bool)

(assert (=> bm!72300 (= c!144979 c!144978)))

(declare-fun b!1570734 () Bool)

(declare-fun e!875750 () List!36919)

(declare-fun e!875748 () List!36919)

(assert (=> b!1570734 (= e!875750 e!875748)))

(declare-fun c!144980 () Bool)

(assert (=> b!1570734 (= c!144980 (and (is-Cons!36915 (insertStrictlySorted!598 l!750 key1!37 v1!32)) (= (_1!12781 (h!38363 (insertStrictlySorted!598 l!750 key1!37 v1!32))) key2!21)))))

(declare-fun b!1570735 () Bool)

(declare-fun e!875751 () List!36919)

(declare-fun call!72304 () List!36919)

(assert (=> b!1570735 (= e!875751 call!72304)))

(declare-fun b!1570736 () Bool)

(assert (=> b!1570736 (= e!875751 call!72304)))

(declare-fun d!164235 () Bool)

(declare-fun e!875749 () Bool)

(assert (=> d!164235 e!875749))

(declare-fun res!1073264 () Bool)

(assert (=> d!164235 (=> (not res!1073264) (not e!875749))))

(declare-fun lt!673369 () List!36919)

(assert (=> d!164235 (= res!1073264 (isStrictlySorted!1020 lt!673369))))

(assert (=> d!164235 (= lt!673369 e!875750)))

(assert (=> d!164235 (= c!144978 (and (is-Cons!36915 (insertStrictlySorted!598 l!750 key1!37 v1!32)) (bvslt (_1!12781 (h!38363 (insertStrictlySorted!598 l!750 key1!37 v1!32))) key2!21)))))

(assert (=> d!164235 (isStrictlySorted!1020 (insertStrictlySorted!598 l!750 key1!37 v1!32))))

(assert (=> d!164235 (= (insertStrictlySorted!598 (insertStrictlySorted!598 l!750 key1!37 v1!32) key2!21 v2!10) lt!673369)))

(declare-fun bm!72301 () Bool)

(declare-fun call!72303 () List!36919)

(assert (=> bm!72301 (= call!72304 call!72303)))

(declare-fun c!144981 () Bool)

(declare-fun b!1570737 () Bool)

(assert (=> b!1570737 (= e!875747 (ite c!144980 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32)) (ite c!144981 (Cons!36915 (h!38363 (insertStrictlySorted!598 l!750 key1!37 v1!32)) (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32))) Nil!36916)))))

(declare-fun b!1570738 () Bool)

(declare-fun contains!10449 (List!36919 tuple2!25542) Bool)

(assert (=> b!1570738 (= e!875749 (contains!10449 lt!673369 (tuple2!25543 key2!21 v2!10)))))

(declare-fun b!1570739 () Bool)

(assert (=> b!1570739 (= c!144981 (and (is-Cons!36915 (insertStrictlySorted!598 l!750 key1!37 v1!32)) (bvsgt (_1!12781 (h!38363 (insertStrictlySorted!598 l!750 key1!37 v1!32))) key2!21)))))

(assert (=> b!1570739 (= e!875748 e!875751)))

(declare-fun b!1570740 () Bool)

(assert (=> b!1570740 (= e!875750 call!72305)))

(declare-fun bm!72302 () Bool)

(assert (=> bm!72302 (= call!72303 call!72305)))

(declare-fun b!1570741 () Bool)

(assert (=> b!1570741 (= e!875748 call!72303)))

(declare-fun b!1570742 () Bool)

(declare-fun res!1073263 () Bool)

(assert (=> b!1570742 (=> (not res!1073263) (not e!875749))))

(declare-fun containsKey!872 (List!36919 (_ BitVec 64)) Bool)

(assert (=> b!1570742 (= res!1073263 (containsKey!872 lt!673369 key2!21))))

(declare-fun b!1570743 () Bool)

(assert (=> b!1570743 (= e!875747 (insertStrictlySorted!598 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32)) key2!21 v2!10))))

(assert (= (and d!164235 c!144978) b!1570740))

(assert (= (and d!164235 (not c!144978)) b!1570734))

(assert (= (and b!1570734 c!144980) b!1570741))

(assert (= (and b!1570734 (not c!144980)) b!1570739))

(assert (= (and b!1570739 c!144981) b!1570736))

(assert (= (and b!1570739 (not c!144981)) b!1570735))

(assert (= (or b!1570736 b!1570735) bm!72301))

(assert (= (or b!1570741 bm!72301) bm!72302))

(assert (= (or b!1570740 bm!72302) bm!72300))

(assert (= (and bm!72300 c!144979) b!1570743))

(assert (= (and bm!72300 (not c!144979)) b!1570737))

(assert (= (and d!164235 res!1073264) b!1570742))

(assert (= (and b!1570742 res!1073263) b!1570738))

(declare-fun m!1444763 () Bool)

(assert (=> b!1570742 m!1444763))

(declare-fun m!1444765 () Bool)

(assert (=> bm!72300 m!1444765))

(declare-fun m!1444767 () Bool)

(assert (=> b!1570743 m!1444767))

(declare-fun m!1444769 () Bool)

(assert (=> b!1570738 m!1444769))

(declare-fun m!1444771 () Bool)

(assert (=> d!164235 m!1444771))

(assert (=> d!164235 m!1444641))

(declare-fun m!1444773 () Bool)

(assert (=> d!164235 m!1444773))

(assert (=> b!1570540 d!164235))

(declare-fun c!144982 () Bool)

(declare-fun call!72308 () List!36919)

(declare-fun e!875752 () List!36919)

(declare-fun bm!72303 () Bool)

(assert (=> bm!72303 (= call!72308 ($colon$colon!1005 e!875752 (ite c!144982 (h!38363 l!750) (tuple2!25543 key1!37 v1!32))))))

(declare-fun c!144983 () Bool)

(assert (=> bm!72303 (= c!144983 c!144982)))

(declare-fun b!1570744 () Bool)

(declare-fun e!875755 () List!36919)

(declare-fun e!875753 () List!36919)

(assert (=> b!1570744 (= e!875755 e!875753)))

(declare-fun c!144984 () Bool)

(assert (=> b!1570744 (= c!144984 (and (is-Cons!36915 l!750) (= (_1!12781 (h!38363 l!750)) key1!37)))))

(declare-fun b!1570745 () Bool)

(declare-fun e!875756 () List!36919)

(declare-fun call!72307 () List!36919)

(assert (=> b!1570745 (= e!875756 call!72307)))

(declare-fun b!1570746 () Bool)

(assert (=> b!1570746 (= e!875756 call!72307)))

(declare-fun d!164249 () Bool)

(declare-fun e!875754 () Bool)

(assert (=> d!164249 e!875754))

(declare-fun res!1073266 () Bool)

(assert (=> d!164249 (=> (not res!1073266) (not e!875754))))

(declare-fun lt!673370 () List!36919)

(assert (=> d!164249 (= res!1073266 (isStrictlySorted!1020 lt!673370))))

(assert (=> d!164249 (= lt!673370 e!875755)))

(assert (=> d!164249 (= c!144982 (and (is-Cons!36915 l!750) (bvslt (_1!12781 (h!38363 l!750)) key1!37)))))

(assert (=> d!164249 (isStrictlySorted!1020 l!750)))

(assert (=> d!164249 (= (insertStrictlySorted!598 l!750 key1!37 v1!32) lt!673370)))

(declare-fun bm!72304 () Bool)

(declare-fun call!72306 () List!36919)

(assert (=> bm!72304 (= call!72307 call!72306)))

(declare-fun b!1570747 () Bool)

(declare-fun c!144985 () Bool)

(assert (=> b!1570747 (= e!875752 (ite c!144984 (t!51837 l!750) (ite c!144985 (Cons!36915 (h!38363 l!750) (t!51837 l!750)) Nil!36916)))))

(declare-fun b!1570748 () Bool)

(assert (=> b!1570748 (= e!875754 (contains!10449 lt!673370 (tuple2!25543 key1!37 v1!32)))))

(declare-fun b!1570749 () Bool)

(assert (=> b!1570749 (= c!144985 (and (is-Cons!36915 l!750) (bvsgt (_1!12781 (h!38363 l!750)) key1!37)))))

(assert (=> b!1570749 (= e!875753 e!875756)))

(declare-fun b!1570750 () Bool)

(assert (=> b!1570750 (= e!875755 call!72308)))

(declare-fun bm!72305 () Bool)

(assert (=> bm!72305 (= call!72306 call!72308)))

(declare-fun b!1570751 () Bool)

(assert (=> b!1570751 (= e!875753 call!72306)))

(declare-fun b!1570752 () Bool)

(declare-fun res!1073265 () Bool)

(assert (=> b!1570752 (=> (not res!1073265) (not e!875754))))

(assert (=> b!1570752 (= res!1073265 (containsKey!872 lt!673370 key1!37))))

(declare-fun b!1570753 () Bool)

(assert (=> b!1570753 (= e!875752 (insertStrictlySorted!598 (t!51837 l!750) key1!37 v1!32))))

(assert (= (and d!164249 c!144982) b!1570750))

(assert (= (and d!164249 (not c!144982)) b!1570744))

(assert (= (and b!1570744 c!144984) b!1570751))

(assert (= (and b!1570744 (not c!144984)) b!1570749))

(assert (= (and b!1570749 c!144985) b!1570746))

(assert (= (and b!1570749 (not c!144985)) b!1570745))

(assert (= (or b!1570746 b!1570745) bm!72304))

(assert (= (or b!1570751 bm!72304) bm!72305))

(assert (= (or b!1570750 bm!72305) bm!72303))

(assert (= (and bm!72303 c!144983) b!1570753))

(assert (= (and bm!72303 (not c!144983)) b!1570747))

(assert (= (and d!164249 res!1073266) b!1570752))

(assert (= (and b!1570752 res!1073265) b!1570748))

(declare-fun m!1444775 () Bool)

(assert (=> b!1570752 m!1444775))

(declare-fun m!1444777 () Bool)

(assert (=> bm!72303 m!1444777))

(declare-fun m!1444779 () Bool)

(assert (=> b!1570753 m!1444779))

(declare-fun m!1444781 () Bool)

(assert (=> b!1570748 m!1444781))

(declare-fun m!1444783 () Bool)

(assert (=> d!164249 m!1444783))

(assert (=> d!164249 m!1444639))

(assert (=> b!1570540 d!164249))

(declare-fun bm!72306 () Bool)

(declare-fun call!72311 () List!36919)

(declare-fun e!875757 () List!36919)

(declare-fun c!144986 () Bool)

(assert (=> bm!72306 (= call!72311 ($colon$colon!1005 e!875757 (ite c!144986 (h!38363 (insertStrictlySorted!598 l!750 key2!21 v2!10)) (tuple2!25543 key1!37 v1!32))))))

(declare-fun c!144987 () Bool)

(assert (=> bm!72306 (= c!144987 c!144986)))

(declare-fun b!1570754 () Bool)

(declare-fun e!875760 () List!36919)

(declare-fun e!875758 () List!36919)

(assert (=> b!1570754 (= e!875760 e!875758)))

(declare-fun c!144988 () Bool)

(assert (=> b!1570754 (= c!144988 (and (is-Cons!36915 (insertStrictlySorted!598 l!750 key2!21 v2!10)) (= (_1!12781 (h!38363 (insertStrictlySorted!598 l!750 key2!21 v2!10))) key1!37)))))

(declare-fun b!1570755 () Bool)

(declare-fun e!875761 () List!36919)

(declare-fun call!72310 () List!36919)

(assert (=> b!1570755 (= e!875761 call!72310)))

(declare-fun b!1570756 () Bool)

(assert (=> b!1570756 (= e!875761 call!72310)))

(declare-fun d!164251 () Bool)

(declare-fun e!875759 () Bool)

(assert (=> d!164251 e!875759))

(declare-fun res!1073268 () Bool)

(assert (=> d!164251 (=> (not res!1073268) (not e!875759))))

(declare-fun lt!673371 () List!36919)

(assert (=> d!164251 (= res!1073268 (isStrictlySorted!1020 lt!673371))))

(assert (=> d!164251 (= lt!673371 e!875760)))

(assert (=> d!164251 (= c!144986 (and (is-Cons!36915 (insertStrictlySorted!598 l!750 key2!21 v2!10)) (bvslt (_1!12781 (h!38363 (insertStrictlySorted!598 l!750 key2!21 v2!10))) key1!37)))))

(assert (=> d!164251 (isStrictlySorted!1020 (insertStrictlySorted!598 l!750 key2!21 v2!10))))

(assert (=> d!164251 (= (insertStrictlySorted!598 (insertStrictlySorted!598 l!750 key2!21 v2!10) key1!37 v1!32) lt!673371)))

(declare-fun bm!72307 () Bool)

(declare-fun call!72309 () List!36919)

(assert (=> bm!72307 (= call!72310 call!72309)))

(declare-fun b!1570757 () Bool)

(declare-fun c!144989 () Bool)

(assert (=> b!1570757 (= e!875757 (ite c!144988 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10)) (ite c!144989 (Cons!36915 (h!38363 (insertStrictlySorted!598 l!750 key2!21 v2!10)) (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10))) Nil!36916)))))

(declare-fun b!1570758 () Bool)

(assert (=> b!1570758 (= e!875759 (contains!10449 lt!673371 (tuple2!25543 key1!37 v1!32)))))

(declare-fun b!1570759 () Bool)

(assert (=> b!1570759 (= c!144989 (and (is-Cons!36915 (insertStrictlySorted!598 l!750 key2!21 v2!10)) (bvsgt (_1!12781 (h!38363 (insertStrictlySorted!598 l!750 key2!21 v2!10))) key1!37)))))

(assert (=> b!1570759 (= e!875758 e!875761)))

(declare-fun b!1570760 () Bool)

(assert (=> b!1570760 (= e!875760 call!72311)))

(declare-fun bm!72308 () Bool)

(assert (=> bm!72308 (= call!72309 call!72311)))

(declare-fun b!1570761 () Bool)

(assert (=> b!1570761 (= e!875758 call!72309)))

(declare-fun b!1570762 () Bool)

(declare-fun res!1073267 () Bool)

(assert (=> b!1570762 (=> (not res!1073267) (not e!875759))))

(assert (=> b!1570762 (= res!1073267 (containsKey!872 lt!673371 key1!37))))

(declare-fun b!1570763 () Bool)

(assert (=> b!1570763 (= e!875757 (insertStrictlySorted!598 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10)) key1!37 v1!32))))

(assert (= (and d!164251 c!144986) b!1570760))

(assert (= (and d!164251 (not c!144986)) b!1570754))

(assert (= (and b!1570754 c!144988) b!1570761))

(assert (= (and b!1570754 (not c!144988)) b!1570759))

(assert (= (and b!1570759 c!144989) b!1570756))

(assert (= (and b!1570759 (not c!144989)) b!1570755))

(assert (= (or b!1570756 b!1570755) bm!72307))

(assert (= (or b!1570761 bm!72307) bm!72308))

(assert (= (or b!1570760 bm!72308) bm!72306))

(assert (= (and bm!72306 c!144987) b!1570763))

(assert (= (and bm!72306 (not c!144987)) b!1570757))

(assert (= (and d!164251 res!1073268) b!1570762))

(assert (= (and b!1570762 res!1073267) b!1570758))

(declare-fun m!1444785 () Bool)

(assert (=> b!1570762 m!1444785))

(declare-fun m!1444787 () Bool)

(assert (=> bm!72306 m!1444787))

(declare-fun m!1444789 () Bool)

(assert (=> b!1570763 m!1444789))

(declare-fun m!1444791 () Bool)

(assert (=> b!1570758 m!1444791))

(declare-fun m!1444793 () Bool)

(assert (=> d!164251 m!1444793))

(assert (=> d!164251 m!1444645))

(declare-fun m!1444795 () Bool)

(assert (=> d!164251 m!1444795))

(assert (=> b!1570540 d!164251))

(declare-fun call!72314 () List!36919)

(declare-fun e!875762 () List!36919)

(declare-fun bm!72309 () Bool)

(declare-fun c!144990 () Bool)

(assert (=> bm!72309 (= call!72314 ($colon$colon!1005 e!875762 (ite c!144990 (h!38363 l!750) (tuple2!25543 key2!21 v2!10))))))

(declare-fun c!144991 () Bool)

(assert (=> bm!72309 (= c!144991 c!144990)))

(declare-fun b!1570764 () Bool)

(declare-fun e!875765 () List!36919)

(declare-fun e!875763 () List!36919)

(assert (=> b!1570764 (= e!875765 e!875763)))

(declare-fun c!144992 () Bool)

(assert (=> b!1570764 (= c!144992 (and (is-Cons!36915 l!750) (= (_1!12781 (h!38363 l!750)) key2!21)))))

(declare-fun b!1570765 () Bool)

(declare-fun e!875766 () List!36919)

(declare-fun call!72313 () List!36919)

(assert (=> b!1570765 (= e!875766 call!72313)))

(declare-fun b!1570766 () Bool)

(assert (=> b!1570766 (= e!875766 call!72313)))

(declare-fun d!164253 () Bool)

(declare-fun e!875764 () Bool)

(assert (=> d!164253 e!875764))

(declare-fun res!1073270 () Bool)

(assert (=> d!164253 (=> (not res!1073270) (not e!875764))))

(declare-fun lt!673372 () List!36919)

(assert (=> d!164253 (= res!1073270 (isStrictlySorted!1020 lt!673372))))

(assert (=> d!164253 (= lt!673372 e!875765)))

(assert (=> d!164253 (= c!144990 (and (is-Cons!36915 l!750) (bvslt (_1!12781 (h!38363 l!750)) key2!21)))))

(assert (=> d!164253 (isStrictlySorted!1020 l!750)))

(assert (=> d!164253 (= (insertStrictlySorted!598 l!750 key2!21 v2!10) lt!673372)))

(declare-fun bm!72310 () Bool)

(declare-fun call!72312 () List!36919)

(assert (=> bm!72310 (= call!72313 call!72312)))

(declare-fun c!144993 () Bool)

(declare-fun b!1570767 () Bool)

(assert (=> b!1570767 (= e!875762 (ite c!144992 (t!51837 l!750) (ite c!144993 (Cons!36915 (h!38363 l!750) (t!51837 l!750)) Nil!36916)))))

(declare-fun b!1570768 () Bool)

(assert (=> b!1570768 (= e!875764 (contains!10449 lt!673372 (tuple2!25543 key2!21 v2!10)))))

(declare-fun b!1570769 () Bool)

(assert (=> b!1570769 (= c!144993 (and (is-Cons!36915 l!750) (bvsgt (_1!12781 (h!38363 l!750)) key2!21)))))

(assert (=> b!1570769 (= e!875763 e!875766)))

(declare-fun b!1570770 () Bool)

(assert (=> b!1570770 (= e!875765 call!72314)))

(declare-fun bm!72311 () Bool)

(assert (=> bm!72311 (= call!72312 call!72314)))

(declare-fun b!1570771 () Bool)

(assert (=> b!1570771 (= e!875763 call!72312)))

(declare-fun b!1570772 () Bool)

(declare-fun res!1073269 () Bool)

(assert (=> b!1570772 (=> (not res!1073269) (not e!875764))))

(assert (=> b!1570772 (= res!1073269 (containsKey!872 lt!673372 key2!21))))

(declare-fun b!1570773 () Bool)

(assert (=> b!1570773 (= e!875762 (insertStrictlySorted!598 (t!51837 l!750) key2!21 v2!10))))

(assert (= (and d!164253 c!144990) b!1570770))

(assert (= (and d!164253 (not c!144990)) b!1570764))

(assert (= (and b!1570764 c!144992) b!1570771))

(assert (= (and b!1570764 (not c!144992)) b!1570769))

(assert (= (and b!1570769 c!144993) b!1570766))

(assert (= (and b!1570769 (not c!144993)) b!1570765))

(assert (= (or b!1570766 b!1570765) bm!72310))

(assert (= (or b!1570771 bm!72310) bm!72311))

(assert (= (or b!1570770 bm!72311) bm!72309))

(assert (= (and bm!72309 c!144991) b!1570773))

(assert (= (and bm!72309 (not c!144991)) b!1570767))

(assert (= (and d!164253 res!1073270) b!1570772))

(assert (= (and b!1570772 res!1073269) b!1570768))

(declare-fun m!1444797 () Bool)

(assert (=> b!1570772 m!1444797))

(declare-fun m!1444799 () Bool)

(assert (=> bm!72309 m!1444799))

(declare-fun m!1444801 () Bool)

(assert (=> b!1570773 m!1444801))

(declare-fun m!1444803 () Bool)

(assert (=> b!1570768 m!1444803))

(declare-fun m!1444805 () Bool)

(assert (=> d!164253 m!1444805))

(assert (=> d!164253 m!1444639))

(assert (=> b!1570540 d!164253))

(declare-fun b!1570778 () Bool)

(declare-fun e!875769 () Bool)

(declare-fun tp!114247 () Bool)

(assert (=> b!1570778 (= e!875769 (and tp_is_empty!39103 tp!114247))))

(assert (=> b!1570541 (= tp!114232 e!875769)))

(assert (= (and b!1570541 (is-Cons!36915 (t!51837 l!750))) b!1570778))

(push 1)

(assert (not b!1570743))

(assert (not b!1570762))

(assert (not d!164253))

(assert (not b!1570742))

(assert (not b!1570768))

(assert (not bm!72309))

(assert (not b!1570748))

(assert (not b!1570763))

(assert (not b!1570583))

(assert (not bm!72300))

(assert (not b!1570758))

(assert (not b!1570778))

(assert (not b!1570752))

(assert (not d!164235))

(assert (not b!1570738))

(assert (not b!1570773))

(assert (not bm!72306))

(assert (not d!164251))

(assert tp_is_empty!39103)

(assert (not b!1570772))

(assert (not d!164249))

(assert (not b!1570753))

(assert (not bm!72303))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164259 () Bool)

(assert (=> d!164259 (= ($colon$colon!1005 e!875752 (ite c!144982 (h!38363 l!750) (tuple2!25543 key1!37 v1!32))) (Cons!36915 (ite c!144982 (h!38363 l!750) (tuple2!25543 key1!37 v1!32)) e!875752))))

(assert (=> bm!72303 d!164259))

(declare-fun d!164261 () Bool)

(declare-fun res!1073283 () Bool)

(declare-fun e!875782 () Bool)

(assert (=> d!164261 (=> res!1073283 e!875782)))

(assert (=> d!164261 (= res!1073283 (and (is-Cons!36915 lt!673370) (= (_1!12781 (h!38363 lt!673370)) key1!37)))))

(assert (=> d!164261 (= (containsKey!872 lt!673370 key1!37) e!875782)))

(declare-fun b!1570791 () Bool)

(declare-fun e!875783 () Bool)

(assert (=> b!1570791 (= e!875782 e!875783)))

(declare-fun res!1073284 () Bool)

(assert (=> b!1570791 (=> (not res!1073284) (not e!875783))))

(assert (=> b!1570791 (= res!1073284 (and (or (not (is-Cons!36915 lt!673370)) (bvsle (_1!12781 (h!38363 lt!673370)) key1!37)) (is-Cons!36915 lt!673370) (bvslt (_1!12781 (h!38363 lt!673370)) key1!37)))))

(declare-fun b!1570792 () Bool)

(assert (=> b!1570792 (= e!875783 (containsKey!872 (t!51837 lt!673370) key1!37))))

(assert (= (and d!164261 (not res!1073283)) b!1570791))

(assert (= (and b!1570791 res!1073284) b!1570792))

(declare-fun m!1444813 () Bool)

(assert (=> b!1570792 m!1444813))

(assert (=> b!1570752 d!164261))

(declare-fun d!164265 () Bool)

(assert (=> d!164265 (= ($colon$colon!1005 e!875747 (ite c!144978 (h!38363 (insertStrictlySorted!598 l!750 key1!37 v1!32)) (tuple2!25543 key2!21 v2!10))) (Cons!36915 (ite c!144978 (h!38363 (insertStrictlySorted!598 l!750 key1!37 v1!32)) (tuple2!25543 key2!21 v2!10)) e!875747))))

(assert (=> bm!72300 d!164265))

(declare-fun d!164267 () Bool)

(declare-fun res!1073287 () Bool)

(declare-fun e!875786 () Bool)

(assert (=> d!164267 (=> res!1073287 e!875786)))

(assert (=> d!164267 (= res!1073287 (and (is-Cons!36915 lt!673369) (= (_1!12781 (h!38363 lt!673369)) key2!21)))))

(assert (=> d!164267 (= (containsKey!872 lt!673369 key2!21) e!875786)))

(declare-fun b!1570795 () Bool)

(declare-fun e!875787 () Bool)

(assert (=> b!1570795 (= e!875786 e!875787)))

(declare-fun res!1073288 () Bool)

(assert (=> b!1570795 (=> (not res!1073288) (not e!875787))))

(assert (=> b!1570795 (= res!1073288 (and (or (not (is-Cons!36915 lt!673369)) (bvsle (_1!12781 (h!38363 lt!673369)) key2!21)) (is-Cons!36915 lt!673369) (bvslt (_1!12781 (h!38363 lt!673369)) key2!21)))))

(declare-fun b!1570796 () Bool)

(assert (=> b!1570796 (= e!875787 (containsKey!872 (t!51837 lt!673369) key2!21))))

(assert (= (and d!164267 (not res!1073287)) b!1570795))

(assert (= (and b!1570795 res!1073288) b!1570796))

(declare-fun m!1444815 () Bool)

(assert (=> b!1570796 m!1444815))

(assert (=> b!1570742 d!164267))

(declare-fun call!72317 () List!36919)

(declare-fun bm!72312 () Bool)

(declare-fun e!875788 () List!36919)

(declare-fun c!144994 () Bool)

(assert (=> bm!72312 (= call!72317 ($colon$colon!1005 e!875788 (ite c!144994 (h!38363 (t!51837 l!750)) (tuple2!25543 key1!37 v1!32))))))

(declare-fun c!144995 () Bool)

(assert (=> bm!72312 (= c!144995 c!144994)))

(declare-fun b!1570797 () Bool)

(declare-fun e!875791 () List!36919)

(declare-fun e!875789 () List!36919)

(assert (=> b!1570797 (= e!875791 e!875789)))

(declare-fun c!144996 () Bool)

(assert (=> b!1570797 (= c!144996 (and (is-Cons!36915 (t!51837 l!750)) (= (_1!12781 (h!38363 (t!51837 l!750))) key1!37)))))

(declare-fun b!1570798 () Bool)

(declare-fun e!875792 () List!36919)

(declare-fun call!72316 () List!36919)

(assert (=> b!1570798 (= e!875792 call!72316)))

(declare-fun b!1570799 () Bool)

(assert (=> b!1570799 (= e!875792 call!72316)))

(declare-fun d!164269 () Bool)

(declare-fun e!875790 () Bool)

(assert (=> d!164269 e!875790))

(declare-fun res!1073290 () Bool)

(assert (=> d!164269 (=> (not res!1073290) (not e!875790))))

(declare-fun lt!673376 () List!36919)

(assert (=> d!164269 (= res!1073290 (isStrictlySorted!1020 lt!673376))))

(assert (=> d!164269 (= lt!673376 e!875791)))

(assert (=> d!164269 (= c!144994 (and (is-Cons!36915 (t!51837 l!750)) (bvslt (_1!12781 (h!38363 (t!51837 l!750))) key1!37)))))

(assert (=> d!164269 (isStrictlySorted!1020 (t!51837 l!750))))

(assert (=> d!164269 (= (insertStrictlySorted!598 (t!51837 l!750) key1!37 v1!32) lt!673376)))

(declare-fun bm!72313 () Bool)

(declare-fun call!72315 () List!36919)

(assert (=> bm!72313 (= call!72316 call!72315)))

(declare-fun b!1570800 () Bool)

(declare-fun c!144997 () Bool)

(assert (=> b!1570800 (= e!875788 (ite c!144996 (t!51837 (t!51837 l!750)) (ite c!144997 (Cons!36915 (h!38363 (t!51837 l!750)) (t!51837 (t!51837 l!750))) Nil!36916)))))

(declare-fun b!1570801 () Bool)

(assert (=> b!1570801 (= e!875790 (contains!10449 lt!673376 (tuple2!25543 key1!37 v1!32)))))

(declare-fun b!1570802 () Bool)

(assert (=> b!1570802 (= c!144997 (and (is-Cons!36915 (t!51837 l!750)) (bvsgt (_1!12781 (h!38363 (t!51837 l!750))) key1!37)))))

(assert (=> b!1570802 (= e!875789 e!875792)))

(declare-fun b!1570803 () Bool)

(assert (=> b!1570803 (= e!875791 call!72317)))

(declare-fun bm!72314 () Bool)

(assert (=> bm!72314 (= call!72315 call!72317)))

(declare-fun b!1570804 () Bool)

(assert (=> b!1570804 (= e!875789 call!72315)))

(declare-fun b!1570805 () Bool)

(declare-fun res!1073289 () Bool)

(assert (=> b!1570805 (=> (not res!1073289) (not e!875790))))

(assert (=> b!1570805 (= res!1073289 (containsKey!872 lt!673376 key1!37))))

(declare-fun b!1570806 () Bool)

(assert (=> b!1570806 (= e!875788 (insertStrictlySorted!598 (t!51837 (t!51837 l!750)) key1!37 v1!32))))

(assert (= (and d!164269 c!144994) b!1570803))

(assert (= (and d!164269 (not c!144994)) b!1570797))

(assert (= (and b!1570797 c!144996) b!1570804))

(assert (= (and b!1570797 (not c!144996)) b!1570802))

(assert (= (and b!1570802 c!144997) b!1570799))

(assert (= (and b!1570802 (not c!144997)) b!1570798))

(assert (= (or b!1570799 b!1570798) bm!72313))

(assert (= (or b!1570804 bm!72313) bm!72314))

(assert (= (or b!1570803 bm!72314) bm!72312))

(assert (= (and bm!72312 c!144995) b!1570806))

(assert (= (and bm!72312 (not c!144995)) b!1570800))

(assert (= (and d!164269 res!1073290) b!1570805))

(assert (= (and b!1570805 res!1073289) b!1570801))

(declare-fun m!1444819 () Bool)

(assert (=> b!1570805 m!1444819))

(declare-fun m!1444823 () Bool)

(assert (=> bm!72312 m!1444823))

(declare-fun m!1444825 () Bool)

(assert (=> b!1570806 m!1444825))

(declare-fun m!1444827 () Bool)

(assert (=> b!1570801 m!1444827))

(declare-fun m!1444829 () Bool)

(assert (=> d!164269 m!1444829))

(assert (=> d!164269 m!1444673))

(assert (=> b!1570753 d!164269))

(declare-fun e!875797 () List!36919)

(declare-fun bm!72315 () Bool)

(declare-fun call!72322 () List!36919)

(declare-fun c!145000 () Bool)

(assert (=> bm!72315 (= call!72322 ($colon$colon!1005 e!875797 (ite c!145000 (h!38363 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32))) (tuple2!25543 key2!21 v2!10))))))

(declare-fun c!145001 () Bool)

(assert (=> bm!72315 (= c!145001 c!145000)))

(declare-fun b!1570811 () Bool)

(declare-fun e!875801 () List!36919)

(declare-fun e!875799 () List!36919)

(assert (=> b!1570811 (= e!875801 e!875799)))

(declare-fun c!145002 () Bool)

(assert (=> b!1570811 (= c!145002 (and (is-Cons!36915 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32))) (= (_1!12781 (h!38363 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32)))) key2!21)))))

(declare-fun b!1570812 () Bool)

(declare-fun e!875805 () List!36919)

(declare-fun call!72321 () List!36919)

(assert (=> b!1570812 (= e!875805 call!72321)))

(declare-fun b!1570813 () Bool)

(assert (=> b!1570813 (= e!875805 call!72321)))

(declare-fun d!164275 () Bool)

(declare-fun e!875800 () Bool)

(assert (=> d!164275 e!875800))

(declare-fun res!1073298 () Bool)

(assert (=> d!164275 (=> (not res!1073298) (not e!875800))))

(declare-fun lt!673377 () List!36919)

(assert (=> d!164275 (= res!1073298 (isStrictlySorted!1020 lt!673377))))

(assert (=> d!164275 (= lt!673377 e!875801)))

(assert (=> d!164275 (= c!145000 (and (is-Cons!36915 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32))) (bvslt (_1!12781 (h!38363 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32)))) key2!21)))))

(assert (=> d!164275 (isStrictlySorted!1020 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32)))))

(assert (=> d!164275 (= (insertStrictlySorted!598 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32)) key2!21 v2!10) lt!673377)))

(declare-fun bm!72317 () Bool)

(declare-fun call!72319 () List!36919)

(assert (=> bm!72317 (= call!72321 call!72319)))

(declare-fun b!1570816 () Bool)

(declare-fun c!145005 () Bool)

(assert (=> b!1570816 (= e!875797 (ite c!145002 (t!51837 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32))) (ite c!145005 (Cons!36915 (h!38363 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32))) (t!51837 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32)))) Nil!36916)))))

(declare-fun b!1570818 () Bool)

(assert (=> b!1570818 (= e!875800 (contains!10449 lt!673377 (tuple2!25543 key2!21 v2!10)))))

(declare-fun b!1570820 () Bool)

(assert (=> b!1570820 (= c!145005 (and (is-Cons!36915 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32))) (bvsgt (_1!12781 (h!38363 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32)))) key2!21)))))

(assert (=> b!1570820 (= e!875799 e!875805)))

(declare-fun b!1570822 () Bool)

(assert (=> b!1570822 (= e!875801 call!72322)))

(declare-fun bm!72318 () Bool)

(assert (=> bm!72318 (= call!72319 call!72322)))

(declare-fun b!1570825 () Bool)

(assert (=> b!1570825 (= e!875799 call!72319)))

(declare-fun b!1570826 () Bool)

(declare-fun res!1073295 () Bool)

(assert (=> b!1570826 (=> (not res!1073295) (not e!875800))))

(assert (=> b!1570826 (= res!1073295 (containsKey!872 lt!673377 key2!21))))

(declare-fun b!1570827 () Bool)

(assert (=> b!1570827 (= e!875797 (insertStrictlySorted!598 (t!51837 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32))) key2!21 v2!10))))

(assert (= (and d!164275 c!145000) b!1570822))

(assert (= (and d!164275 (not c!145000)) b!1570811))

(assert (= (and b!1570811 c!145002) b!1570825))

(assert (= (and b!1570811 (not c!145002)) b!1570820))

(assert (= (and b!1570820 c!145005) b!1570813))

(assert (= (and b!1570820 (not c!145005)) b!1570812))

(assert (= (or b!1570813 b!1570812) bm!72317))

(assert (= (or b!1570825 bm!72317) bm!72318))

(assert (= (or b!1570822 bm!72318) bm!72315))

(assert (= (and bm!72315 c!145001) b!1570827))

(assert (= (and bm!72315 (not c!145001)) b!1570816))

(assert (= (and d!164275 res!1073298) b!1570826))

(assert (= (and b!1570826 res!1073295) b!1570818))

(declare-fun m!1444831 () Bool)

(assert (=> b!1570826 m!1444831))

(declare-fun m!1444833 () Bool)

(assert (=> bm!72315 m!1444833))

(declare-fun m!1444837 () Bool)

(assert (=> b!1570827 m!1444837))

(declare-fun m!1444841 () Bool)

(assert (=> b!1570818 m!1444841))

(declare-fun m!1444844 () Bool)

(assert (=> d!164275 m!1444844))

(declare-fun m!1444847 () Bool)

(assert (=> d!164275 m!1444847))

(assert (=> b!1570743 d!164275))

(declare-fun d!164279 () Bool)

(declare-fun res!1073299 () Bool)

(declare-fun e!875807 () Bool)

(assert (=> d!164279 (=> res!1073299 e!875807)))

(assert (=> d!164279 (= res!1073299 (or (is-Nil!36916 lt!673372) (is-Nil!36916 (t!51837 lt!673372))))))

(assert (=> d!164279 (= (isStrictlySorted!1020 lt!673372) e!875807)))

(declare-fun b!1570831 () Bool)

(declare-fun e!875808 () Bool)

(assert (=> b!1570831 (= e!875807 e!875808)))

(declare-fun res!1073300 () Bool)

(assert (=> b!1570831 (=> (not res!1073300) (not e!875808))))

(assert (=> b!1570831 (= res!1073300 (bvslt (_1!12781 (h!38363 lt!673372)) (_1!12781 (h!38363 (t!51837 lt!673372)))))))

(declare-fun b!1570832 () Bool)

(assert (=> b!1570832 (= e!875808 (isStrictlySorted!1020 (t!51837 lt!673372)))))

(assert (= (and d!164279 (not res!1073299)) b!1570831))

(assert (= (and b!1570831 res!1073300) b!1570832))

(declare-fun m!1444855 () Bool)

(assert (=> b!1570832 m!1444855))

(assert (=> d!164253 d!164279))

(assert (=> d!164253 d!164229))

(declare-fun d!164283 () Bool)

(declare-fun res!1073303 () Bool)

(declare-fun e!875811 () Bool)

(assert (=> d!164283 (=> res!1073303 e!875811)))

(assert (=> d!164283 (= res!1073303 (and (is-Cons!36915 lt!673372) (= (_1!12781 (h!38363 lt!673372)) key2!21)))))

(assert (=> d!164283 (= (containsKey!872 lt!673372 key2!21) e!875811)))

(declare-fun b!1570835 () Bool)

(declare-fun e!875812 () Bool)

(assert (=> b!1570835 (= e!875811 e!875812)))

(declare-fun res!1073304 () Bool)

(assert (=> b!1570835 (=> (not res!1073304) (not e!875812))))

(assert (=> b!1570835 (= res!1073304 (and (or (not (is-Cons!36915 lt!673372)) (bvsle (_1!12781 (h!38363 lt!673372)) key2!21)) (is-Cons!36915 lt!673372) (bvslt (_1!12781 (h!38363 lt!673372)) key2!21)))))

(declare-fun b!1570836 () Bool)

(assert (=> b!1570836 (= e!875812 (containsKey!872 (t!51837 lt!673372) key2!21))))

(assert (= (and d!164283 (not res!1073303)) b!1570835))

(assert (= (and b!1570835 res!1073304) b!1570836))

(declare-fun m!1444859 () Bool)

(assert (=> b!1570836 m!1444859))

(assert (=> b!1570772 d!164283))

(declare-fun d!164287 () Bool)

(assert (=> d!164287 (= ($colon$colon!1005 e!875757 (ite c!144986 (h!38363 (insertStrictlySorted!598 l!750 key2!21 v2!10)) (tuple2!25543 key1!37 v1!32))) (Cons!36915 (ite c!144986 (h!38363 (insertStrictlySorted!598 l!750 key2!21 v2!10)) (tuple2!25543 key1!37 v1!32)) e!875757))))

(assert (=> bm!72306 d!164287))

(declare-fun d!164291 () Bool)

(declare-fun res!1073309 () Bool)

(declare-fun e!875817 () Bool)

(assert (=> d!164291 (=> res!1073309 e!875817)))

(assert (=> d!164291 (= res!1073309 (and (is-Cons!36915 lt!673371) (= (_1!12781 (h!38363 lt!673371)) key1!37)))))

(assert (=> d!164291 (= (containsKey!872 lt!673371 key1!37) e!875817)))

(declare-fun b!1570841 () Bool)

(declare-fun e!875818 () Bool)

(assert (=> b!1570841 (= e!875817 e!875818)))

(declare-fun res!1073310 () Bool)

(assert (=> b!1570841 (=> (not res!1073310) (not e!875818))))

(assert (=> b!1570841 (= res!1073310 (and (or (not (is-Cons!36915 lt!673371)) (bvsle (_1!12781 (h!38363 lt!673371)) key1!37)) (is-Cons!36915 lt!673371) (bvslt (_1!12781 (h!38363 lt!673371)) key1!37)))))

(declare-fun b!1570842 () Bool)

(assert (=> b!1570842 (= e!875818 (containsKey!872 (t!51837 lt!673371) key1!37))))

(assert (= (and d!164291 (not res!1073309)) b!1570841))

(assert (= (and b!1570841 res!1073310) b!1570842))

(declare-fun m!1444865 () Bool)

(assert (=> b!1570842 m!1444865))

(assert (=> b!1570762 d!164291))

(declare-fun call!72326 () List!36919)

(declare-fun e!875821 () List!36919)

(declare-fun bm!72321 () Bool)

(declare-fun c!145006 () Bool)

(assert (=> bm!72321 (= call!72326 ($colon$colon!1005 e!875821 (ite c!145006 (h!38363 (t!51837 l!750)) (tuple2!25543 key2!21 v2!10))))))

(declare-fun c!145007 () Bool)

(assert (=> bm!72321 (= c!145007 c!145006)))

(declare-fun b!1570845 () Bool)

(declare-fun e!875824 () List!36919)

(declare-fun e!875822 () List!36919)

(assert (=> b!1570845 (= e!875824 e!875822)))

(declare-fun c!145008 () Bool)

(assert (=> b!1570845 (= c!145008 (and (is-Cons!36915 (t!51837 l!750)) (= (_1!12781 (h!38363 (t!51837 l!750))) key2!21)))))

(declare-fun b!1570846 () Bool)

(declare-fun e!875825 () List!36919)

(declare-fun call!72325 () List!36919)

(assert (=> b!1570846 (= e!875825 call!72325)))

(declare-fun b!1570847 () Bool)

(assert (=> b!1570847 (= e!875825 call!72325)))

(declare-fun d!164295 () Bool)

(declare-fun e!875823 () Bool)

(assert (=> d!164295 e!875823))

(declare-fun res!1073314 () Bool)

(assert (=> d!164295 (=> (not res!1073314) (not e!875823))))

(declare-fun lt!673379 () List!36919)

(assert (=> d!164295 (= res!1073314 (isStrictlySorted!1020 lt!673379))))

(assert (=> d!164295 (= lt!673379 e!875824)))

(assert (=> d!164295 (= c!145006 (and (is-Cons!36915 (t!51837 l!750)) (bvslt (_1!12781 (h!38363 (t!51837 l!750))) key2!21)))))

(assert (=> d!164295 (isStrictlySorted!1020 (t!51837 l!750))))

(assert (=> d!164295 (= (insertStrictlySorted!598 (t!51837 l!750) key2!21 v2!10) lt!673379)))

(declare-fun bm!72322 () Bool)

(declare-fun call!72324 () List!36919)

(assert (=> bm!72322 (= call!72325 call!72324)))

(declare-fun b!1570848 () Bool)

(declare-fun c!145009 () Bool)

(assert (=> b!1570848 (= e!875821 (ite c!145008 (t!51837 (t!51837 l!750)) (ite c!145009 (Cons!36915 (h!38363 (t!51837 l!750)) (t!51837 (t!51837 l!750))) Nil!36916)))))

(declare-fun b!1570849 () Bool)

(assert (=> b!1570849 (= e!875823 (contains!10449 lt!673379 (tuple2!25543 key2!21 v2!10)))))

(declare-fun b!1570850 () Bool)

(assert (=> b!1570850 (= c!145009 (and (is-Cons!36915 (t!51837 l!750)) (bvsgt (_1!12781 (h!38363 (t!51837 l!750))) key2!21)))))

(assert (=> b!1570850 (= e!875822 e!875825)))

(declare-fun b!1570851 () Bool)

(assert (=> b!1570851 (= e!875824 call!72326)))

(declare-fun bm!72323 () Bool)

(assert (=> bm!72323 (= call!72324 call!72326)))

(declare-fun b!1570852 () Bool)

(assert (=> b!1570852 (= e!875822 call!72324)))

(declare-fun b!1570853 () Bool)

(declare-fun res!1073313 () Bool)

(assert (=> b!1570853 (=> (not res!1073313) (not e!875823))))

(assert (=> b!1570853 (= res!1073313 (containsKey!872 lt!673379 key2!21))))

(declare-fun b!1570854 () Bool)

(assert (=> b!1570854 (= e!875821 (insertStrictlySorted!598 (t!51837 (t!51837 l!750)) key2!21 v2!10))))

(assert (= (and d!164295 c!145006) b!1570851))

(assert (= (and d!164295 (not c!145006)) b!1570845))

(assert (= (and b!1570845 c!145008) b!1570852))

(assert (= (and b!1570845 (not c!145008)) b!1570850))

(assert (= (and b!1570850 c!145009) b!1570847))

(assert (= (and b!1570850 (not c!145009)) b!1570846))

(assert (= (or b!1570847 b!1570846) bm!72322))

(assert (= (or b!1570852 bm!72322) bm!72323))

(assert (= (or b!1570851 bm!72323) bm!72321))

(assert (= (and bm!72321 c!145007) b!1570854))

(assert (= (and bm!72321 (not c!145007)) b!1570848))

(assert (= (and d!164295 res!1073314) b!1570853))

(assert (= (and b!1570853 res!1073313) b!1570849))

(declare-fun m!1444871 () Bool)

(assert (=> b!1570853 m!1444871))

(declare-fun m!1444873 () Bool)

(assert (=> bm!72321 m!1444873))

(declare-fun m!1444875 () Bool)

(assert (=> b!1570854 m!1444875))

(declare-fun m!1444877 () Bool)

(assert (=> b!1570849 m!1444877))

(declare-fun m!1444879 () Bool)

(assert (=> d!164295 m!1444879))

(assert (=> d!164295 m!1444673))

(assert (=> b!1570773 d!164295))

(declare-fun d!164303 () Bool)

(declare-fun res!1073321 () Bool)

(declare-fun e!875835 () Bool)

(assert (=> d!164303 (=> res!1073321 e!875835)))

(assert (=> d!164303 (= res!1073321 (or (is-Nil!36916 (t!51837 l!750)) (is-Nil!36916 (t!51837 (t!51837 l!750)))))))

(assert (=> d!164303 (= (isStrictlySorted!1020 (t!51837 l!750)) e!875835)))

(declare-fun b!1570869 () Bool)

(declare-fun e!875836 () Bool)

(assert (=> b!1570869 (= e!875835 e!875836)))

(declare-fun res!1073322 () Bool)

(assert (=> b!1570869 (=> (not res!1073322) (not e!875836))))

(assert (=> b!1570869 (= res!1073322 (bvslt (_1!12781 (h!38363 (t!51837 l!750))) (_1!12781 (h!38363 (t!51837 (t!51837 l!750))))))))

(declare-fun b!1570870 () Bool)

(assert (=> b!1570870 (= e!875836 (isStrictlySorted!1020 (t!51837 (t!51837 l!750))))))

(assert (= (and d!164303 (not res!1073321)) b!1570869))

(assert (= (and b!1570869 res!1073322) b!1570870))

(declare-fun m!1444881 () Bool)

(assert (=> b!1570870 m!1444881))

(assert (=> b!1570583 d!164303))

(declare-fun bm!72327 () Bool)

(declare-fun e!875837 () List!36919)

(declare-fun call!72332 () List!36919)

(declare-fun c!145014 () Bool)

(assert (=> bm!72327 (= call!72332 ($colon$colon!1005 e!875837 (ite c!145014 (h!38363 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10))) (tuple2!25543 key1!37 v1!32))))))

(declare-fun c!145015 () Bool)

(assert (=> bm!72327 (= c!145015 c!145014)))

(declare-fun b!1570871 () Bool)

(declare-fun e!875840 () List!36919)

(declare-fun e!875838 () List!36919)

(assert (=> b!1570871 (= e!875840 e!875838)))

(declare-fun c!145016 () Bool)

(assert (=> b!1570871 (= c!145016 (and (is-Cons!36915 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10))) (= (_1!12781 (h!38363 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10)))) key1!37)))))

(declare-fun b!1570872 () Bool)

(declare-fun e!875841 () List!36919)

(declare-fun call!72331 () List!36919)

(assert (=> b!1570872 (= e!875841 call!72331)))

(declare-fun b!1570873 () Bool)

(assert (=> b!1570873 (= e!875841 call!72331)))

(declare-fun d!164305 () Bool)

(declare-fun e!875839 () Bool)

(assert (=> d!164305 e!875839))

(declare-fun res!1073324 () Bool)

(assert (=> d!164305 (=> (not res!1073324) (not e!875839))))

(declare-fun lt!673381 () List!36919)

(assert (=> d!164305 (= res!1073324 (isStrictlySorted!1020 lt!673381))))

(assert (=> d!164305 (= lt!673381 e!875840)))

(assert (=> d!164305 (= c!145014 (and (is-Cons!36915 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10))) (bvslt (_1!12781 (h!38363 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10)))) key1!37)))))

(assert (=> d!164305 (isStrictlySorted!1020 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10)))))

(assert (=> d!164305 (= (insertStrictlySorted!598 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10)) key1!37 v1!32) lt!673381)))

(declare-fun bm!72328 () Bool)

(declare-fun call!72330 () List!36919)

(assert (=> bm!72328 (= call!72331 call!72330)))

(declare-fun c!145017 () Bool)

(declare-fun b!1570874 () Bool)

(assert (=> b!1570874 (= e!875837 (ite c!145016 (t!51837 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10))) (ite c!145017 (Cons!36915 (h!38363 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10))) (t!51837 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10)))) Nil!36916)))))

(declare-fun b!1570875 () Bool)

(assert (=> b!1570875 (= e!875839 (contains!10449 lt!673381 (tuple2!25543 key1!37 v1!32)))))

(declare-fun b!1570876 () Bool)

(assert (=> b!1570876 (= c!145017 (and (is-Cons!36915 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10))) (bvsgt (_1!12781 (h!38363 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10)))) key1!37)))))

(assert (=> b!1570876 (= e!875838 e!875841)))

(declare-fun b!1570877 () Bool)

(assert (=> b!1570877 (= e!875840 call!72332)))

(declare-fun bm!72329 () Bool)

(assert (=> bm!72329 (= call!72330 call!72332)))

(declare-fun b!1570878 () Bool)

(assert (=> b!1570878 (= e!875838 call!72330)))

(declare-fun b!1570879 () Bool)

(declare-fun res!1073323 () Bool)

(assert (=> b!1570879 (=> (not res!1073323) (not e!875839))))

(assert (=> b!1570879 (= res!1073323 (containsKey!872 lt!673381 key1!37))))

(declare-fun b!1570880 () Bool)

(assert (=> b!1570880 (= e!875837 (insertStrictlySorted!598 (t!51837 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10))) key1!37 v1!32))))

(assert (= (and d!164305 c!145014) b!1570877))

(assert (= (and d!164305 (not c!145014)) b!1570871))

(assert (= (and b!1570871 c!145016) b!1570878))

(assert (= (and b!1570871 (not c!145016)) b!1570876))

(assert (= (and b!1570876 c!145017) b!1570873))

(assert (= (and b!1570876 (not c!145017)) b!1570872))

(assert (= (or b!1570873 b!1570872) bm!72328))

(assert (= (or b!1570878 bm!72328) bm!72329))

(assert (= (or b!1570877 bm!72329) bm!72327))

(assert (= (and bm!72327 c!145015) b!1570880))

(assert (= (and bm!72327 (not c!145015)) b!1570874))

(assert (= (and d!164305 res!1073324) b!1570879))

(assert (= (and b!1570879 res!1073323) b!1570875))

(declare-fun m!1444893 () Bool)

(assert (=> b!1570879 m!1444893))

(declare-fun m!1444895 () Bool)

(assert (=> bm!72327 m!1444895))

(declare-fun m!1444897 () Bool)

(assert (=> b!1570880 m!1444897))

(declare-fun m!1444899 () Bool)

(assert (=> b!1570875 m!1444899))

(declare-fun m!1444901 () Bool)

(assert (=> d!164305 m!1444901))

(declare-fun m!1444903 () Bool)

(assert (=> d!164305 m!1444903))

(assert (=> b!1570763 d!164305))

(declare-fun d!164309 () Bool)

(declare-fun res!1073327 () Bool)

(declare-fun e!875847 () Bool)

(assert (=> d!164309 (=> res!1073327 e!875847)))

(assert (=> d!164309 (= res!1073327 (or (is-Nil!36916 lt!673370) (is-Nil!36916 (t!51837 lt!673370))))))

(assert (=> d!164309 (= (isStrictlySorted!1020 lt!673370) e!875847)))

(declare-fun b!1570891 () Bool)

(declare-fun e!875848 () Bool)

(assert (=> b!1570891 (= e!875847 e!875848)))

(declare-fun res!1073328 () Bool)

(assert (=> b!1570891 (=> (not res!1073328) (not e!875848))))

(assert (=> b!1570891 (= res!1073328 (bvslt (_1!12781 (h!38363 lt!673370)) (_1!12781 (h!38363 (t!51837 lt!673370)))))))

(declare-fun b!1570892 () Bool)

(assert (=> b!1570892 (= e!875848 (isStrictlySorted!1020 (t!51837 lt!673370)))))

(assert (= (and d!164309 (not res!1073327)) b!1570891))

(assert (= (and b!1570891 res!1073328) b!1570892))

(declare-fun m!1444905 () Bool)

(assert (=> b!1570892 m!1444905))

(assert (=> d!164249 d!164309))

(assert (=> d!164249 d!164229))

(declare-fun d!164311 () Bool)

(declare-fun lt!673389 () Bool)

(declare-fun content!826 (List!36919) (Set tuple2!25542))

(assert (=> d!164311 (= lt!673389 (set.member (tuple2!25543 key1!37 v1!32) (content!826 lt!673370)))))

(declare-fun e!875869 () Bool)

(assert (=> d!164311 (= lt!673389 e!875869)))

(declare-fun res!1073345 () Bool)

(assert (=> d!164311 (=> (not res!1073345) (not e!875869))))

(assert (=> d!164311 (= res!1073345 (is-Cons!36915 lt!673370))))

(assert (=> d!164311 (= (contains!10449 lt!673370 (tuple2!25543 key1!37 v1!32)) lt!673389)))

(declare-fun b!1570917 () Bool)

(declare-fun e!875868 () Bool)

(assert (=> b!1570917 (= e!875869 e!875868)))

(declare-fun res!1073346 () Bool)

(assert (=> b!1570917 (=> res!1073346 e!875868)))

(assert (=> b!1570917 (= res!1073346 (= (h!38363 lt!673370) (tuple2!25543 key1!37 v1!32)))))

(declare-fun b!1570918 () Bool)

(assert (=> b!1570918 (= e!875868 (contains!10449 (t!51837 lt!673370) (tuple2!25543 key1!37 v1!32)))))

(assert (= (and d!164311 res!1073345) b!1570917))

(assert (= (and b!1570917 (not res!1073346)) b!1570918))

(declare-fun m!1444949 () Bool)

(assert (=> d!164311 m!1444949))

(declare-fun m!1444951 () Bool)

(assert (=> d!164311 m!1444951))

(declare-fun m!1444953 () Bool)

(assert (=> b!1570918 m!1444953))

(assert (=> b!1570748 d!164311))

(declare-fun d!164331 () Bool)

(declare-fun lt!673390 () Bool)

(assert (=> d!164331 (= lt!673390 (set.member (tuple2!25543 key2!21 v2!10) (content!826 lt!673369)))))

(declare-fun e!875873 () Bool)

(assert (=> d!164331 (= lt!673390 e!875873)))

(declare-fun res!1073349 () Bool)

(assert (=> d!164331 (=> (not res!1073349) (not e!875873))))

(assert (=> d!164331 (= res!1073349 (is-Cons!36915 lt!673369))))

(assert (=> d!164331 (= (contains!10449 lt!673369 (tuple2!25543 key2!21 v2!10)) lt!673390)))

(declare-fun b!1570921 () Bool)

(declare-fun e!875872 () Bool)

(assert (=> b!1570921 (= e!875873 e!875872)))

(declare-fun res!1073350 () Bool)

(assert (=> b!1570921 (=> res!1073350 e!875872)))

(assert (=> b!1570921 (= res!1073350 (= (h!38363 lt!673369) (tuple2!25543 key2!21 v2!10)))))

(declare-fun b!1570922 () Bool)

(assert (=> b!1570922 (= e!875872 (contains!10449 (t!51837 lt!673369) (tuple2!25543 key2!21 v2!10)))))

(assert (= (and d!164331 res!1073349) b!1570921))

(assert (= (and b!1570921 (not res!1073350)) b!1570922))

(declare-fun m!1444957 () Bool)

(assert (=> d!164331 m!1444957))

(declare-fun m!1444959 () Bool)

(assert (=> d!164331 m!1444959))

(declare-fun m!1444961 () Bool)

(assert (=> b!1570922 m!1444961))

(assert (=> b!1570738 d!164331))

(declare-fun d!164333 () Bool)

(assert (=> d!164333 (= ($colon$colon!1005 e!875762 (ite c!144990 (h!38363 l!750) (tuple2!25543 key2!21 v2!10))) (Cons!36915 (ite c!144990 (h!38363 l!750) (tuple2!25543 key2!21 v2!10)) e!875762))))

(assert (=> bm!72309 d!164333))

(declare-fun d!164335 () Bool)

(declare-fun res!1073351 () Bool)

(declare-fun e!875875 () Bool)

(assert (=> d!164335 (=> res!1073351 e!875875)))

(assert (=> d!164335 (= res!1073351 (or (is-Nil!36916 lt!673369) (is-Nil!36916 (t!51837 lt!673369))))))

(assert (=> d!164335 (= (isStrictlySorted!1020 lt!673369) e!875875)))

(declare-fun b!1570924 () Bool)

(declare-fun e!875876 () Bool)

(assert (=> b!1570924 (= e!875875 e!875876)))

(declare-fun res!1073352 () Bool)

(assert (=> b!1570924 (=> (not res!1073352) (not e!875876))))

(assert (=> b!1570924 (= res!1073352 (bvslt (_1!12781 (h!38363 lt!673369)) (_1!12781 (h!38363 (t!51837 lt!673369)))))))

(declare-fun b!1570925 () Bool)

(assert (=> b!1570925 (= e!875876 (isStrictlySorted!1020 (t!51837 lt!673369)))))

(assert (= (and d!164335 (not res!1073351)) b!1570924))

(assert (= (and b!1570924 res!1073352) b!1570925))

(declare-fun m!1444963 () Bool)

(assert (=> b!1570925 m!1444963))

(assert (=> d!164235 d!164335))

(declare-fun d!164337 () Bool)

(declare-fun res!1073353 () Bool)

(declare-fun e!875877 () Bool)

(assert (=> d!164337 (=> res!1073353 e!875877)))

(assert (=> d!164337 (= res!1073353 (or (is-Nil!36916 (insertStrictlySorted!598 l!750 key1!37 v1!32)) (is-Nil!36916 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32)))))))

(assert (=> d!164337 (= (isStrictlySorted!1020 (insertStrictlySorted!598 l!750 key1!37 v1!32)) e!875877)))

(declare-fun b!1570926 () Bool)

(declare-fun e!875878 () Bool)

(assert (=> b!1570926 (= e!875877 e!875878)))

(declare-fun res!1073354 () Bool)

(assert (=> b!1570926 (=> (not res!1073354) (not e!875878))))

(assert (=> b!1570926 (= res!1073354 (bvslt (_1!12781 (h!38363 (insertStrictlySorted!598 l!750 key1!37 v1!32))) (_1!12781 (h!38363 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32))))))))

(declare-fun b!1570927 () Bool)

(assert (=> b!1570927 (= e!875878 (isStrictlySorted!1020 (t!51837 (insertStrictlySorted!598 l!750 key1!37 v1!32))))))

(assert (= (and d!164337 (not res!1073353)) b!1570926))

(assert (= (and b!1570926 res!1073354) b!1570927))

(assert (=> b!1570927 m!1444847))

(assert (=> d!164235 d!164337))

(declare-fun d!164339 () Bool)

(declare-fun res!1073355 () Bool)

(declare-fun e!875879 () Bool)

(assert (=> d!164339 (=> res!1073355 e!875879)))

(assert (=> d!164339 (= res!1073355 (or (is-Nil!36916 lt!673371) (is-Nil!36916 (t!51837 lt!673371))))))

(assert (=> d!164339 (= (isStrictlySorted!1020 lt!673371) e!875879)))

(declare-fun b!1570928 () Bool)

(declare-fun e!875880 () Bool)

(assert (=> b!1570928 (= e!875879 e!875880)))

(declare-fun res!1073356 () Bool)

(assert (=> b!1570928 (=> (not res!1073356) (not e!875880))))

(assert (=> b!1570928 (= res!1073356 (bvslt (_1!12781 (h!38363 lt!673371)) (_1!12781 (h!38363 (t!51837 lt!673371)))))))

(declare-fun b!1570929 () Bool)

(assert (=> b!1570929 (= e!875880 (isStrictlySorted!1020 (t!51837 lt!673371)))))

(assert (= (and d!164339 (not res!1073355)) b!1570928))

(assert (= (and b!1570928 res!1073356) b!1570929))

(declare-fun m!1444965 () Bool)

(assert (=> b!1570929 m!1444965))

(assert (=> d!164251 d!164339))

(declare-fun d!164341 () Bool)

(declare-fun res!1073357 () Bool)

(declare-fun e!875881 () Bool)

(assert (=> d!164341 (=> res!1073357 e!875881)))

(assert (=> d!164341 (= res!1073357 (or (is-Nil!36916 (insertStrictlySorted!598 l!750 key2!21 v2!10)) (is-Nil!36916 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10)))))))

(assert (=> d!164341 (= (isStrictlySorted!1020 (insertStrictlySorted!598 l!750 key2!21 v2!10)) e!875881)))

(declare-fun b!1570930 () Bool)

(declare-fun e!875882 () Bool)

(assert (=> b!1570930 (= e!875881 e!875882)))

(declare-fun res!1073358 () Bool)

(assert (=> b!1570930 (=> (not res!1073358) (not e!875882))))

(assert (=> b!1570930 (= res!1073358 (bvslt (_1!12781 (h!38363 (insertStrictlySorted!598 l!750 key2!21 v2!10))) (_1!12781 (h!38363 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10))))))))

(declare-fun b!1570931 () Bool)

(assert (=> b!1570931 (= e!875882 (isStrictlySorted!1020 (t!51837 (insertStrictlySorted!598 l!750 key2!21 v2!10))))))

(assert (= (and d!164341 (not res!1073357)) b!1570930))

(assert (= (and b!1570930 res!1073358) b!1570931))

(assert (=> b!1570931 m!1444903))

(assert (=> d!164251 d!164341))

(declare-fun lt!673391 () Bool)

(declare-fun d!164343 () Bool)

(assert (=> d!164343 (= lt!673391 (set.member (tuple2!25543 key2!21 v2!10) (content!826 lt!673372)))))

(declare-fun e!875884 () Bool)

(assert (=> d!164343 (= lt!673391 e!875884)))

(declare-fun res!1073359 () Bool)

(assert (=> d!164343 (=> (not res!1073359) (not e!875884))))

(assert (=> d!164343 (= res!1073359 (is-Cons!36915 lt!673372))))

(assert (=> d!164343 (= (contains!10449 lt!673372 (tuple2!25543 key2!21 v2!10)) lt!673391)))

(declare-fun b!1570932 () Bool)

(declare-fun e!875883 () Bool)

(assert (=> b!1570932 (= e!875884 e!875883)))

(declare-fun res!1073360 () Bool)

(assert (=> b!1570932 (=> res!1073360 e!875883)))

(assert (=> b!1570932 (= res!1073360 (= (h!38363 lt!673372) (tuple2!25543 key2!21 v2!10)))))

(declare-fun b!1570933 () Bool)

(assert (=> b!1570933 (= e!875883 (contains!10449 (t!51837 lt!673372) (tuple2!25543 key2!21 v2!10)))))

(assert (= (and d!164343 res!1073359) b!1570932))

(assert (= (and b!1570932 (not res!1073360)) b!1570933))

(declare-fun m!1444967 () Bool)

(assert (=> d!164343 m!1444967))

(declare-fun m!1444969 () Bool)

(assert (=> d!164343 m!1444969))

(declare-fun m!1444971 () Bool)

(assert (=> b!1570933 m!1444971))

(assert (=> b!1570768 d!164343))

(declare-fun lt!673392 () Bool)

(declare-fun d!164345 () Bool)

(assert (=> d!164345 (= lt!673392 (set.member (tuple2!25543 key1!37 v1!32) (content!826 lt!673371)))))

(declare-fun e!875886 () Bool)

(assert (=> d!164345 (= lt!673392 e!875886)))

(declare-fun res!1073361 () Bool)

(assert (=> d!164345 (=> (not res!1073361) (not e!875886))))

(assert (=> d!164345 (= res!1073361 (is-Cons!36915 lt!673371))))

(assert (=> d!164345 (= (contains!10449 lt!673371 (tuple2!25543 key1!37 v1!32)) lt!673392)))

(declare-fun b!1570934 () Bool)

(declare-fun e!875885 () Bool)

(assert (=> b!1570934 (= e!875886 e!875885)))

(declare-fun res!1073362 () Bool)

(assert (=> b!1570934 (=> res!1073362 e!875885)))

(assert (=> b!1570934 (= res!1073362 (= (h!38363 lt!673371) (tuple2!25543 key1!37 v1!32)))))

(declare-fun b!1570935 () Bool)

(assert (=> b!1570935 (= e!875885 (contains!10449 (t!51837 lt!673371) (tuple2!25543 key1!37 v1!32)))))

(assert (= (and d!164345 res!1073361) b!1570934))

(assert (= (and b!1570934 (not res!1073362)) b!1570935))

(declare-fun m!1444973 () Bool)

(assert (=> d!164345 m!1444973))

(declare-fun m!1444975 () Bool)

(assert (=> d!164345 m!1444975))

(declare-fun m!1444977 () Bool)

(assert (=> b!1570935 m!1444977))

(assert (=> b!1570758 d!164345))

(declare-fun b!1570936 () Bool)

(declare-fun e!875887 () Bool)

(declare-fun tp!114249 () Bool)

(assert (=> b!1570936 (= e!875887 (and tp_is_empty!39103 tp!114249))))

(assert (=> b!1570778 (= tp!114247 e!875887)))

(assert (= (and b!1570778 (is-Cons!36915 (t!51837 (t!51837 l!750)))) b!1570936))

(push 1)

(assert (not bm!72321))

(assert (not b!1570832))

(assert (not b!1570827))

(assert (not d!164305))

(assert (not b!1570892))

(assert (not d!164345))

(assert (not b!1570922))

(assert (not b!1570936))

(assert (not d!164343))

(assert (not b!1570931))

(assert (not b!1570853))

(assert (not b!1570933))

(assert (not d!164269))

(assert (not b!1570849))

(assert (not b!1570925))

(assert (not b!1570801))

(assert (not b!1570818))

(assert (not b!1570927))

(assert (not bm!72312))

(assert (not d!164275))

(assert (not bm!72315))

(assert tp_is_empty!39103)

(assert (not b!1570792))

(assert (not b!1570796))

(assert (not b!1570929))

(assert (not b!1570826))

(assert (not d!164311))

(assert (not b!1570842))

(assert (not d!164295))

(assert (not b!1570805))

(assert (not b!1570879))

(assert (not b!1570880))

(assert (not b!1570870))

(assert (not bm!72327))

(assert (not b!1570806))

(assert (not b!1570854))

(assert (not b!1570875))

(assert (not b!1570935))

(assert (not b!1570918))

(assert (not d!164331))

(assert (not b!1570836))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

