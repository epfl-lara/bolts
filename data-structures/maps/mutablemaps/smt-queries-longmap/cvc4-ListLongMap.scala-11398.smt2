; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132728 () Bool)

(assert start!132728)

(declare-fun b!1554747 () Bool)

(declare-datatypes ((B!2268 0))(
  ( (B!2269 (val!19220 Int)) )
))
(declare-datatypes ((tuple2!24956 0))(
  ( (tuple2!24957 (_1!12488 (_ BitVec 64)) (_2!12488 B!2268)) )
))
(declare-datatypes ((List!36400 0))(
  ( (Nil!36397) (Cons!36396 (h!37843 tuple2!24956) (t!51128 List!36400)) )
))
(declare-fun lt!670106 () List!36400)

(declare-fun e!865799 () Bool)

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-fun l!1177 () List!36400)

(declare-datatypes ((Option!839 0))(
  ( (Some!838 (v!22019 B!2268)) (None!837) )
))
(declare-fun getValueByKey!764 (List!36400 (_ BitVec 64)) Option!839)

(assert (=> b!1554747 (= e!865799 (= (getValueByKey!764 lt!670106 otherKey!50) (getValueByKey!764 (t!51128 l!1177) otherKey!50)))))

(declare-fun b!1554748 () Bool)

(declare-fun res!1064031 () Bool)

(declare-fun e!865798 () Bool)

(assert (=> b!1554748 (=> (not res!1064031) (not e!865798))))

(declare-fun newKey!105 () (_ BitVec 64))

(assert (=> b!1554748 (= res!1064031 (and (not (= newKey!105 otherKey!50)) (is-Cons!36396 l!1177) (not (= (_1!12488 (h!37843 l!1177)) otherKey!50))))))

(declare-fun res!1064033 () Bool)

(assert (=> start!132728 (=> (not res!1064033) (not e!865798))))

(declare-fun isStrictlySorted!910 (List!36400) Bool)

(assert (=> start!132728 (= res!1064033 (isStrictlySorted!910 l!1177))))

(assert (=> start!132728 e!865798))

(declare-fun e!865800 () Bool)

(assert (=> start!132728 e!865800))

(assert (=> start!132728 true))

(declare-fun tp_is_empty!38279 () Bool)

(assert (=> start!132728 tp_is_empty!38279))

(declare-fun b!1554749 () Bool)

(declare-fun res!1064034 () Bool)

(assert (=> b!1554749 (=> (not res!1064034) (not e!865798))))

(assert (=> b!1554749 (= res!1064034 (isStrictlySorted!910 (t!51128 l!1177)))))

(declare-fun newValue!105 () B!2268)

(declare-fun b!1554750 () Bool)

(declare-fun insertStrictlySorted!524 (List!36400 (_ BitVec 64) B!2268) List!36400)

(assert (=> b!1554750 (= e!865798 (not (isStrictlySorted!910 (insertStrictlySorted!524 l!1177 newKey!105 newValue!105))))))

(assert (=> b!1554750 e!865799))

(declare-fun res!1064032 () Bool)

(assert (=> b!1554750 (=> (not res!1064032) (not e!865799))))

(declare-fun containsKey!782 (List!36400 (_ BitVec 64)) Bool)

(assert (=> b!1554750 (= res!1064032 (= (containsKey!782 lt!670106 otherKey!50) (containsKey!782 (t!51128 l!1177) otherKey!50)))))

(assert (=> b!1554750 (= lt!670106 (insertStrictlySorted!524 (t!51128 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51747 0))(
  ( (Unit!51748) )
))
(declare-fun lt!670105 () Unit!51747)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!21 (List!36400 (_ BitVec 64) B!2268 (_ BitVec 64)) Unit!51747)

(assert (=> b!1554750 (= lt!670105 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!21 (t!51128 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun b!1554751 () Bool)

(declare-fun tp!112243 () Bool)

(assert (=> b!1554751 (= e!865800 (and tp_is_empty!38279 tp!112243))))

(assert (= (and start!132728 res!1064033) b!1554748))

(assert (= (and b!1554748 res!1064031) b!1554749))

(assert (= (and b!1554749 res!1064034) b!1554750))

(assert (= (and b!1554750 res!1064032) b!1554747))

(assert (= (and start!132728 (is-Cons!36396 l!1177)) b!1554751))

(declare-fun m!1433011 () Bool)

(assert (=> b!1554747 m!1433011))

(declare-fun m!1433013 () Bool)

(assert (=> b!1554747 m!1433013))

(declare-fun m!1433015 () Bool)

(assert (=> start!132728 m!1433015))

(declare-fun m!1433017 () Bool)

(assert (=> b!1554749 m!1433017))

(declare-fun m!1433019 () Bool)

(assert (=> b!1554750 m!1433019))

(declare-fun m!1433021 () Bool)

(assert (=> b!1554750 m!1433021))

(declare-fun m!1433023 () Bool)

(assert (=> b!1554750 m!1433023))

(assert (=> b!1554750 m!1433019))

(declare-fun m!1433025 () Bool)

(assert (=> b!1554750 m!1433025))

(declare-fun m!1433027 () Bool)

(assert (=> b!1554750 m!1433027))

(declare-fun m!1433029 () Bool)

(assert (=> b!1554750 m!1433029))

(push 1)

(assert (not b!1554749))

(assert (not start!132728))

(assert (not b!1554747))

(assert (not b!1554750))

(assert (not b!1554751))

(assert tp_is_empty!38279)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161767 () Bool)

(declare-fun res!1064039 () Bool)

(declare-fun e!865805 () Bool)

(assert (=> d!161767 (=> res!1064039 e!865805)))

(assert (=> d!161767 (= res!1064039 (or (is-Nil!36397 (t!51128 l!1177)) (is-Nil!36397 (t!51128 (t!51128 l!1177)))))))

(assert (=> d!161767 (= (isStrictlySorted!910 (t!51128 l!1177)) e!865805)))

(declare-fun b!1554756 () Bool)

(declare-fun e!865806 () Bool)

(assert (=> b!1554756 (= e!865805 e!865806)))

(declare-fun res!1064040 () Bool)

(assert (=> b!1554756 (=> (not res!1064040) (not e!865806))))

(assert (=> b!1554756 (= res!1064040 (bvslt (_1!12488 (h!37843 (t!51128 l!1177))) (_1!12488 (h!37843 (t!51128 (t!51128 l!1177))))))))

(declare-fun b!1554757 () Bool)

(assert (=> b!1554757 (= e!865806 (isStrictlySorted!910 (t!51128 (t!51128 l!1177))))))

(assert (= (and d!161767 (not res!1064039)) b!1554756))

(assert (= (and b!1554756 res!1064040) b!1554757))

(declare-fun m!1433031 () Bool)

(assert (=> b!1554757 m!1433031))

(assert (=> b!1554749 d!161767))

(declare-fun c!143453 () Bool)

(declare-fun e!865846 () List!36400)

(declare-fun bm!71464 () Bool)

(declare-fun call!71468 () List!36400)

(declare-fun $colon$colon!957 (List!36400 tuple2!24956) List!36400)

(assert (=> bm!71464 (= call!71468 ($colon$colon!957 e!865846 (ite c!143453 (h!37843 l!1177) (tuple2!24957 newKey!105 newValue!105))))))

(declare-fun c!143452 () Bool)

(assert (=> bm!71464 (= c!143452 c!143453)))

(declare-fun b!1554830 () Bool)

(declare-fun e!865849 () List!36400)

(assert (=> b!1554830 (= e!865849 call!71468)))

(declare-fun b!1554831 () Bool)

(declare-fun c!143454 () Bool)

(assert (=> b!1554831 (= c!143454 (and (is-Cons!36396 l!1177) (bvsgt (_1!12488 (h!37843 l!1177)) newKey!105)))))

(declare-fun e!865850 () List!36400)

(declare-fun e!865847 () List!36400)

(assert (=> b!1554831 (= e!865850 e!865847)))

(declare-fun b!1554833 () Bool)

(declare-fun call!71469 () List!36400)

(assert (=> b!1554833 (= e!865847 call!71469)))

(declare-fun b!1554834 () Bool)

(assert (=> b!1554834 (= e!865847 call!71469)))

(declare-fun b!1554835 () Bool)

(declare-fun call!71467 () List!36400)

(assert (=> b!1554835 (= e!865850 call!71467)))

(declare-fun b!1554836 () Bool)

(assert (=> b!1554836 (= e!865849 e!865850)))

(declare-fun c!143455 () Bool)

(assert (=> b!1554836 (= c!143455 (and (is-Cons!36396 l!1177) (= (_1!12488 (h!37843 l!1177)) newKey!105)))))

(declare-fun bm!71465 () Bool)

(assert (=> bm!71465 (= call!71467 call!71468)))

(declare-fun b!1554837 () Bool)

(assert (=> b!1554837 (= e!865846 (insertStrictlySorted!524 (t!51128 l!1177) newKey!105 newValue!105))))

(declare-fun b!1554838 () Bool)

(declare-fun res!1064058 () Bool)

(declare-fun e!865848 () Bool)

(assert (=> b!1554838 (=> (not res!1064058) (not e!865848))))

(declare-fun lt!670112 () List!36400)

(assert (=> b!1554838 (= res!1064058 (containsKey!782 lt!670112 newKey!105))))

(declare-fun d!161771 () Bool)

(assert (=> d!161771 e!865848))

(declare-fun res!1064057 () Bool)

(assert (=> d!161771 (=> (not res!1064057) (not e!865848))))

(assert (=> d!161771 (= res!1064057 (isStrictlySorted!910 lt!670112))))

(assert (=> d!161771 (= lt!670112 e!865849)))

(assert (=> d!161771 (= c!143453 (and (is-Cons!36396 l!1177) (bvslt (_1!12488 (h!37843 l!1177)) newKey!105)))))

(assert (=> d!161771 (isStrictlySorted!910 l!1177)))

(assert (=> d!161771 (= (insertStrictlySorted!524 l!1177 newKey!105 newValue!105) lt!670112)))

(declare-fun b!1554832 () Bool)

(declare-fun contains!10178 (List!36400 tuple2!24956) Bool)

(assert (=> b!1554832 (= e!865848 (contains!10178 lt!670112 (tuple2!24957 newKey!105 newValue!105)))))

(declare-fun b!1554839 () Bool)

(assert (=> b!1554839 (= e!865846 (ite c!143455 (t!51128 l!1177) (ite c!143454 (Cons!36396 (h!37843 l!1177) (t!51128 l!1177)) Nil!36397)))))

(declare-fun bm!71466 () Bool)

(assert (=> bm!71466 (= call!71469 call!71467)))

(assert (= (and d!161771 c!143453) b!1554830))

(assert (= (and d!161771 (not c!143453)) b!1554836))

(assert (= (and b!1554836 c!143455) b!1554835))

(assert (= (and b!1554836 (not c!143455)) b!1554831))

(assert (= (and b!1554831 c!143454) b!1554834))

(assert (= (and b!1554831 (not c!143454)) b!1554833))

(assert (= (or b!1554834 b!1554833) bm!71466))

(assert (= (or b!1554835 bm!71466) bm!71465))

(assert (= (or b!1554830 bm!71465) bm!71464))

(assert (= (and bm!71464 c!143452) b!1554837))

(assert (= (and bm!71464 (not c!143452)) b!1554839))

(assert (= (and d!161771 res!1064057) b!1554838))

(assert (= (and b!1554838 res!1064058) b!1554832))

(assert (=> b!1554837 m!1433025))

(declare-fun m!1433045 () Bool)

(assert (=> b!1554832 m!1433045))

(declare-fun m!1433047 () Bool)

(assert (=> b!1554838 m!1433047))

(declare-fun m!1433049 () Bool)

(assert (=> d!161771 m!1433049))

(assert (=> d!161771 m!1433015))

(declare-fun m!1433051 () Bool)

(assert (=> bm!71464 m!1433051))

(assert (=> b!1554750 d!161771))

(declare-fun d!161781 () Bool)

(declare-fun e!865885 () Bool)

(assert (=> d!161781 e!865885))

(declare-fun res!1064081 () Bool)

(assert (=> d!161781 (=> (not res!1064081) (not e!865885))))

(assert (=> d!161781 (= res!1064081 (= (containsKey!782 (insertStrictlySorted!524 (t!51128 l!1177) newKey!105 newValue!105) otherKey!50) (containsKey!782 (t!51128 l!1177) otherKey!50)))))

(declare-fun lt!670122 () Unit!51747)

(declare-fun choose!2062 (List!36400 (_ BitVec 64) B!2268 (_ BitVec 64)) Unit!51747)

(assert (=> d!161781 (= lt!670122 (choose!2062 (t!51128 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun e!865886 () Bool)

(assert (=> d!161781 e!865886))

(declare-fun res!1064082 () Bool)

(assert (=> d!161781 (=> (not res!1064082) (not e!865886))))

(assert (=> d!161781 (= res!1064082 (isStrictlySorted!910 (t!51128 l!1177)))))

(assert (=> d!161781 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!21 (t!51128 l!1177) newKey!105 newValue!105 otherKey!50) lt!670122)))

(declare-fun b!1554894 () Bool)

(assert (=> b!1554894 (= e!865886 (not (= newKey!105 otherKey!50)))))

(declare-fun b!1554895 () Bool)

(assert (=> b!1554895 (= e!865885 (= (getValueByKey!764 (insertStrictlySorted!524 (t!51128 l!1177) newKey!105 newValue!105) otherKey!50) (getValueByKey!764 (t!51128 l!1177) otherKey!50)))))

(assert (= (and d!161781 res!1064082) b!1554894))

(assert (= (and d!161781 res!1064081) b!1554895))

(assert (=> d!161781 m!1433017))

(assert (=> d!161781 m!1433025))

(declare-fun m!1433069 () Bool)

(assert (=> d!161781 m!1433069))

(declare-fun m!1433073 () Bool)

(assert (=> d!161781 m!1433073))

(assert (=> d!161781 m!1433025))

(assert (=> d!161781 m!1433027))

(assert (=> b!1554895 m!1433025))

(assert (=> b!1554895 m!1433025))

(declare-fun m!1433075 () Bool)

(assert (=> b!1554895 m!1433075))

(assert (=> b!1554895 m!1433013))

(assert (=> b!1554750 d!161781))

(declare-fun bm!71479 () Bool)

(declare-fun call!71483 () List!36400)

(declare-fun e!865891 () List!36400)

(declare-fun c!143473 () Bool)

(assert (=> bm!71479 (= call!71483 ($colon$colon!957 e!865891 (ite c!143473 (h!37843 (t!51128 l!1177)) (tuple2!24957 newKey!105 newValue!105))))))

(declare-fun c!143472 () Bool)

(assert (=> bm!71479 (= c!143472 c!143473)))

(declare-fun b!1554900 () Bool)

(declare-fun e!865894 () List!36400)

(assert (=> b!1554900 (= e!865894 call!71483)))

(declare-fun b!1554901 () Bool)

(declare-fun c!143474 () Bool)

(assert (=> b!1554901 (= c!143474 (and (is-Cons!36396 (t!51128 l!1177)) (bvsgt (_1!12488 (h!37843 (t!51128 l!1177))) newKey!105)))))

(declare-fun e!865895 () List!36400)

(declare-fun e!865892 () List!36400)

(assert (=> b!1554901 (= e!865895 e!865892)))

(declare-fun b!1554903 () Bool)

(declare-fun call!71484 () List!36400)

(assert (=> b!1554903 (= e!865892 call!71484)))

(declare-fun b!1554904 () Bool)

(assert (=> b!1554904 (= e!865892 call!71484)))

(declare-fun b!1554905 () Bool)

(declare-fun call!71482 () List!36400)

(assert (=> b!1554905 (= e!865895 call!71482)))

(declare-fun b!1554906 () Bool)

(assert (=> b!1554906 (= e!865894 e!865895)))

(declare-fun c!143475 () Bool)

(assert (=> b!1554906 (= c!143475 (and (is-Cons!36396 (t!51128 l!1177)) (= (_1!12488 (h!37843 (t!51128 l!1177))) newKey!105)))))

(declare-fun bm!71480 () Bool)

(assert (=> bm!71480 (= call!71482 call!71483)))

(declare-fun b!1554907 () Bool)

(assert (=> b!1554907 (= e!865891 (insertStrictlySorted!524 (t!51128 (t!51128 l!1177)) newKey!105 newValue!105))))

(declare-fun b!1554908 () Bool)

(declare-fun res!1064088 () Bool)

(declare-fun e!865893 () Bool)

(assert (=> b!1554908 (=> (not res!1064088) (not e!865893))))

(declare-fun lt!670123 () List!36400)

(assert (=> b!1554908 (= res!1064088 (containsKey!782 lt!670123 newKey!105))))

(declare-fun d!161789 () Bool)

(assert (=> d!161789 e!865893))

(declare-fun res!1064087 () Bool)

(assert (=> d!161789 (=> (not res!1064087) (not e!865893))))

(assert (=> d!161789 (= res!1064087 (isStrictlySorted!910 lt!670123))))

(assert (=> d!161789 (= lt!670123 e!865894)))

(assert (=> d!161789 (= c!143473 (and (is-Cons!36396 (t!51128 l!1177)) (bvslt (_1!12488 (h!37843 (t!51128 l!1177))) newKey!105)))))

(assert (=> d!161789 (isStrictlySorted!910 (t!51128 l!1177))))

(assert (=> d!161789 (= (insertStrictlySorted!524 (t!51128 l!1177) newKey!105 newValue!105) lt!670123)))

(declare-fun b!1554902 () Bool)

(assert (=> b!1554902 (= e!865893 (contains!10178 lt!670123 (tuple2!24957 newKey!105 newValue!105)))))

(declare-fun b!1554909 () Bool)

(assert (=> b!1554909 (= e!865891 (ite c!143475 (t!51128 (t!51128 l!1177)) (ite c!143474 (Cons!36396 (h!37843 (t!51128 l!1177)) (t!51128 (t!51128 l!1177))) Nil!36397)))))

(declare-fun bm!71481 () Bool)

(assert (=> bm!71481 (= call!71484 call!71482)))

(assert (= (and d!161789 c!143473) b!1554900))

(assert (= (and d!161789 (not c!143473)) b!1554906))

(assert (= (and b!1554906 c!143475) b!1554905))

(assert (= (and b!1554906 (not c!143475)) b!1554901))

(assert (= (and b!1554901 c!143474) b!1554904))

(assert (= (and b!1554901 (not c!143474)) b!1554903))

(assert (= (or b!1554904 b!1554903) bm!71481))

(assert (= (or b!1554905 bm!71481) bm!71480))

(assert (= (or b!1554900 bm!71480) bm!71479))

(assert (= (and bm!71479 c!143472) b!1554907))

(assert (= (and bm!71479 (not c!143472)) b!1554909))

(assert (= (and d!161789 res!1064087) b!1554908))

(assert (= (and b!1554908 res!1064088) b!1554902))

(declare-fun m!1433087 () Bool)

(assert (=> b!1554907 m!1433087))

(declare-fun m!1433089 () Bool)

(assert (=> b!1554902 m!1433089))

(declare-fun m!1433091 () Bool)

(assert (=> b!1554908 m!1433091))

(declare-fun m!1433093 () Bool)

(assert (=> d!161789 m!1433093))

(assert (=> d!161789 m!1433017))

(declare-fun m!1433095 () Bool)

(assert (=> bm!71479 m!1433095))

(assert (=> b!1554750 d!161789))

(declare-fun d!161795 () Bool)

(declare-fun res!1064089 () Bool)

(declare-fun e!865896 () Bool)

(assert (=> d!161795 (=> res!1064089 e!865896)))

(assert (=> d!161795 (= res!1064089 (or (is-Nil!36397 (insertStrictlySorted!524 l!1177 newKey!105 newValue!105)) (is-Nil!36397 (t!51128 (insertStrictlySorted!524 l!1177 newKey!105 newValue!105)))))))

(assert (=> d!161795 (= (isStrictlySorted!910 (insertStrictlySorted!524 l!1177 newKey!105 newValue!105)) e!865896)))

(declare-fun b!1554910 () Bool)

(declare-fun e!865897 () Bool)

(assert (=> b!1554910 (= e!865896 e!865897)))

(declare-fun res!1064090 () Bool)

(assert (=> b!1554910 (=> (not res!1064090) (not e!865897))))

(assert (=> b!1554910 (= res!1064090 (bvslt (_1!12488 (h!37843 (insertStrictlySorted!524 l!1177 newKey!105 newValue!105))) (_1!12488 (h!37843 (t!51128 (insertStrictlySorted!524 l!1177 newKey!105 newValue!105))))))))

(declare-fun b!1554911 () Bool)

(assert (=> b!1554911 (= e!865897 (isStrictlySorted!910 (t!51128 (insertStrictlySorted!524 l!1177 newKey!105 newValue!105))))))

(assert (= (and d!161795 (not res!1064089)) b!1554910))

(assert (= (and b!1554910 res!1064090) b!1554911))

(declare-fun m!1433097 () Bool)

(assert (=> b!1554911 m!1433097))

(assert (=> b!1554750 d!161795))

(declare-fun d!161797 () Bool)

(declare-fun res!1064109 () Bool)

(declare-fun e!865916 () Bool)

(assert (=> d!161797 (=> res!1064109 e!865916)))

(assert (=> d!161797 (= res!1064109 (and (is-Cons!36396 lt!670106) (= (_1!12488 (h!37843 lt!670106)) otherKey!50)))))

(assert (=> d!161797 (= (containsKey!782 lt!670106 otherKey!50) e!865916)))

(declare-fun b!1554930 () Bool)

(declare-fun e!865917 () Bool)

(assert (=> b!1554930 (= e!865916 e!865917)))

(declare-fun res!1064110 () Bool)

(assert (=> b!1554930 (=> (not res!1064110) (not e!865917))))

(assert (=> b!1554930 (= res!1064110 (and (or (not (is-Cons!36396 lt!670106)) (bvsle (_1!12488 (h!37843 lt!670106)) otherKey!50)) (is-Cons!36396 lt!670106) (bvslt (_1!12488 (h!37843 lt!670106)) otherKey!50)))))

(declare-fun b!1554931 () Bool)

(assert (=> b!1554931 (= e!865917 (containsKey!782 (t!51128 lt!670106) otherKey!50))))

(assert (= (and d!161797 (not res!1064109)) b!1554930))

(assert (= (and b!1554930 res!1064110) b!1554931))

(declare-fun m!1433103 () Bool)

(assert (=> b!1554931 m!1433103))

(assert (=> b!1554750 d!161797))

(declare-fun d!161805 () Bool)

(declare-fun res!1064111 () Bool)

(declare-fun e!865918 () Bool)

(assert (=> d!161805 (=> res!1064111 e!865918)))

(assert (=> d!161805 (= res!1064111 (and (is-Cons!36396 (t!51128 l!1177)) (= (_1!12488 (h!37843 (t!51128 l!1177))) otherKey!50)))))

(assert (=> d!161805 (= (containsKey!782 (t!51128 l!1177) otherKey!50) e!865918)))

(declare-fun b!1554932 () Bool)

(declare-fun e!865919 () Bool)

(assert (=> b!1554932 (= e!865918 e!865919)))

(declare-fun res!1064112 () Bool)

(assert (=> b!1554932 (=> (not res!1064112) (not e!865919))))

(assert (=> b!1554932 (= res!1064112 (and (or (not (is-Cons!36396 (t!51128 l!1177))) (bvsle (_1!12488 (h!37843 (t!51128 l!1177))) otherKey!50)) (is-Cons!36396 (t!51128 l!1177)) (bvslt (_1!12488 (h!37843 (t!51128 l!1177))) otherKey!50)))))

(declare-fun b!1554933 () Bool)

(assert (=> b!1554933 (= e!865919 (containsKey!782 (t!51128 (t!51128 l!1177)) otherKey!50))))

(assert (= (and d!161805 (not res!1064111)) b!1554932))

(assert (= (and b!1554932 res!1064112) b!1554933))

(declare-fun m!1433105 () Bool)

(assert (=> b!1554933 m!1433105))

(assert (=> b!1554750 d!161805))

(declare-fun d!161807 () Bool)

(declare-fun c!143488 () Bool)

(assert (=> d!161807 (= c!143488 (and (is-Cons!36396 lt!670106) (= (_1!12488 (h!37843 lt!670106)) otherKey!50)))))

(declare-fun e!865941 () Option!839)

(assert (=> d!161807 (= (getValueByKey!764 lt!670106 otherKey!50) e!865941)))

(declare-fun b!1554972 () Bool)

(declare-fun e!865942 () Option!839)

(assert (=> b!1554972 (= e!865942 None!837)))

(declare-fun b!1554969 () Bool)

(assert (=> b!1554969 (= e!865941 (Some!838 (_2!12488 (h!37843 lt!670106))))))

(declare-fun b!1554971 () Bool)

(assert (=> b!1554971 (= e!865942 (getValueByKey!764 (t!51128 lt!670106) otherKey!50))))

(declare-fun b!1554970 () Bool)

(assert (=> b!1554970 (= e!865941 e!865942)))

(declare-fun c!143489 () Bool)

(assert (=> b!1554970 (= c!143489 (and (is-Cons!36396 lt!670106) (not (= (_1!12488 (h!37843 lt!670106)) otherKey!50))))))

(assert (= (and d!161807 c!143488) b!1554969))

(assert (= (and d!161807 (not c!143488)) b!1554970))

(assert (= (and b!1554970 c!143489) b!1554971))

(assert (= (and b!1554970 (not c!143489)) b!1554972))

(declare-fun m!1433117 () Bool)

(assert (=> b!1554971 m!1433117))

(assert (=> b!1554747 d!161807))

(declare-fun d!161813 () Bool)

(declare-fun c!143490 () Bool)

(assert (=> d!161813 (= c!143490 (and (is-Cons!36396 (t!51128 l!1177)) (= (_1!12488 (h!37843 (t!51128 l!1177))) otherKey!50)))))

(declare-fun e!865943 () Option!839)

(assert (=> d!161813 (= (getValueByKey!764 (t!51128 l!1177) otherKey!50) e!865943)))

(declare-fun b!1554976 () Bool)

(declare-fun e!865944 () Option!839)

(assert (=> b!1554976 (= e!865944 None!837)))

(declare-fun b!1554973 () Bool)

(assert (=> b!1554973 (= e!865943 (Some!838 (_2!12488 (h!37843 (t!51128 l!1177)))))))

(declare-fun b!1554975 () Bool)

