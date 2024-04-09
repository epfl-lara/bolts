; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106540 () Bool)

(assert start!106540)

(declare-fun b!1265862 () Bool)

(declare-fun e!720976 () Bool)

(declare-fun tp_is_empty!32527 () Bool)

(declare-fun tp!96411 () Bool)

(assert (=> b!1265862 (= e!720976 (and tp_is_empty!32527 tp!96411))))

(declare-fun res!842926 () Bool)

(declare-fun e!720975 () Bool)

(assert (=> start!106540 (=> (not res!842926) (not e!720975))))

(declare-datatypes ((B!1994 0))(
  ( (B!1995 (val!16332 Int)) )
))
(declare-datatypes ((tuple2!21332 0))(
  ( (tuple2!21333 (_1!10676 (_ BitVec 64)) (_2!10676 B!1994)) )
))
(declare-datatypes ((List!28499 0))(
  ( (Nil!28496) (Cons!28495 (h!29704 tuple2!21332) (t!42027 List!28499)) )
))
(declare-fun l!706 () List!28499)

(declare-fun isStrictlySorted!795 (List!28499) Bool)

(assert (=> start!106540 (= res!842926 (isStrictlySorted!795 l!706))))

(assert (=> start!106540 e!720975))

(assert (=> start!106540 e!720976))

(assert (=> start!106540 true))

(assert (=> start!106540 tp_is_empty!32527))

(declare-fun v1!26 () B!1994)

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun b!1265863 () Bool)

(declare-fun removeStrictlySorted!156 (List!28499 (_ BitVec 64)) List!28499)

(declare-fun insertStrictlySorted!465 (List!28499 (_ BitVec 64) B!1994) List!28499)

(assert (=> b!1265863 (= e!720975 (not (= (removeStrictlySorted!156 (insertStrictlySorted!465 l!706 key1!31 v1!26) key1!31) l!706)))))

(assert (=> b!1265863 (= (removeStrictlySorted!156 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26) key1!31) (t!42027 l!706))))

(declare-datatypes ((Unit!42131 0))(
  ( (Unit!42132) )
))
(declare-fun lt!574010 () Unit!42131)

(declare-fun lemmaInsertStrictlySortedThenRemoveIsSame!10 (List!28499 (_ BitVec 64) B!1994) Unit!42131)

(assert (=> b!1265863 (= lt!574010 (lemmaInsertStrictlySortedThenRemoveIsSame!10 (t!42027 l!706) key1!31 v1!26))))

(declare-fun b!1265864 () Bool)

(declare-fun res!842925 () Bool)

(assert (=> b!1265864 (=> (not res!842925) (not e!720975))))

(declare-fun containsKey!656 (List!28499 (_ BitVec 64)) Bool)

(assert (=> b!1265864 (= res!842925 (not (containsKey!656 (t!42027 l!706) key1!31)))))

(declare-fun b!1265865 () Bool)

(declare-fun res!842922 () Bool)

(assert (=> b!1265865 (=> (not res!842922) (not e!720975))))

(assert (=> b!1265865 (= res!842922 (isStrictlySorted!795 (t!42027 l!706)))))

(declare-fun b!1265866 () Bool)

(declare-fun res!842924 () Bool)

(assert (=> b!1265866 (=> (not res!842924) (not e!720975))))

(assert (=> b!1265866 (= res!842924 (is-Cons!28495 l!706))))

(declare-fun b!1265867 () Bool)

(declare-fun res!842923 () Bool)

(assert (=> b!1265867 (=> (not res!842923) (not e!720975))))

(assert (=> b!1265867 (= res!842923 (not (containsKey!656 l!706 key1!31)))))

(assert (= (and start!106540 res!842926) b!1265867))

(assert (= (and b!1265867 res!842923) b!1265866))

(assert (= (and b!1265866 res!842924) b!1265865))

(assert (= (and b!1265865 res!842922) b!1265864))

(assert (= (and b!1265864 res!842925) b!1265863))

(assert (= (and start!106540 (is-Cons!28495 l!706)) b!1265862))

(declare-fun m!1165749 () Bool)

(assert (=> start!106540 m!1165749))

(declare-fun m!1165751 () Bool)

(assert (=> b!1265864 m!1165751))

(declare-fun m!1165753 () Bool)

(assert (=> b!1265865 m!1165753))

(declare-fun m!1165755 () Bool)

(assert (=> b!1265863 m!1165755))

(declare-fun m!1165757 () Bool)

(assert (=> b!1265863 m!1165757))

(assert (=> b!1265863 m!1165755))

(declare-fun m!1165759 () Bool)

(assert (=> b!1265863 m!1165759))

(declare-fun m!1165761 () Bool)

(assert (=> b!1265863 m!1165761))

(assert (=> b!1265863 m!1165761))

(declare-fun m!1165763 () Bool)

(assert (=> b!1265863 m!1165763))

(declare-fun m!1165765 () Bool)

(assert (=> b!1265867 m!1165765))

(push 1)

(assert (not b!1265862))

(assert (not b!1265864))

(assert (not b!1265865))

(assert (not start!106540))

(assert tp_is_empty!32527)

(assert (not b!1265863))

(assert (not b!1265867))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138951 () Bool)

(declare-fun res!842961 () Bool)

(declare-fun e!720993 () Bool)

(assert (=> d!138951 (=> res!842961 e!720993)))

(assert (=> d!138951 (= res!842961 (or (is-Nil!28496 (t!42027 l!706)) (is-Nil!28496 (t!42027 (t!42027 l!706)))))))

(assert (=> d!138951 (= (isStrictlySorted!795 (t!42027 l!706)) e!720993)))

(declare-fun b!1265908 () Bool)

(declare-fun e!720994 () Bool)

(assert (=> b!1265908 (= e!720993 e!720994)))

(declare-fun res!842962 () Bool)

(assert (=> b!1265908 (=> (not res!842962) (not e!720994))))

(assert (=> b!1265908 (= res!842962 (bvslt (_1!10676 (h!29704 (t!42027 l!706))) (_1!10676 (h!29704 (t!42027 (t!42027 l!706))))))))

(declare-fun b!1265909 () Bool)

(assert (=> b!1265909 (= e!720994 (isStrictlySorted!795 (t!42027 (t!42027 l!706))))))

(assert (= (and d!138951 (not res!842961)) b!1265908))

(assert (= (and b!1265908 res!842962) b!1265909))

(declare-fun m!1165803 () Bool)

(assert (=> b!1265909 m!1165803))

(assert (=> b!1265865 d!138951))

(declare-fun d!138955 () Bool)

(declare-fun res!842979 () Bool)

(declare-fun e!721015 () Bool)

(assert (=> d!138955 (=> res!842979 e!721015)))

(assert (=> d!138955 (= res!842979 (and (is-Cons!28495 (t!42027 l!706)) (= (_1!10676 (h!29704 (t!42027 l!706))) key1!31)))))

(assert (=> d!138955 (= (containsKey!656 (t!42027 l!706) key1!31) e!721015)))

(declare-fun b!1265932 () Bool)

(declare-fun e!721016 () Bool)

(assert (=> b!1265932 (= e!721015 e!721016)))

(declare-fun res!842980 () Bool)

(assert (=> b!1265932 (=> (not res!842980) (not e!721016))))

(assert (=> b!1265932 (= res!842980 (and (or (not (is-Cons!28495 (t!42027 l!706))) (bvsle (_1!10676 (h!29704 (t!42027 l!706))) key1!31)) (is-Cons!28495 (t!42027 l!706)) (bvslt (_1!10676 (h!29704 (t!42027 l!706))) key1!31)))))

(declare-fun b!1265933 () Bool)

(assert (=> b!1265933 (= e!721016 (containsKey!656 (t!42027 (t!42027 l!706)) key1!31))))

(assert (= (and d!138955 (not res!842979)) b!1265932))

(assert (= (and b!1265932 res!842980) b!1265933))

(declare-fun m!1165807 () Bool)

(assert (=> b!1265933 m!1165807))

(assert (=> b!1265864 d!138955))

(declare-fun b!1265965 () Bool)

(declare-fun e!721037 () Bool)

(declare-fun lt!574024 () List!28499)

(assert (=> b!1265965 (= e!721037 (not (containsKey!656 lt!574024 key1!31)))))

(declare-fun b!1265966 () Bool)

(declare-fun e!721038 () List!28499)

(assert (=> b!1265966 (= e!721038 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26)))))

(declare-fun d!138959 () Bool)

(assert (=> d!138959 e!721037))

(declare-fun res!842990 () Bool)

(assert (=> d!138959 (=> (not res!842990) (not e!721037))))

(assert (=> d!138959 (= res!842990 (isStrictlySorted!795 lt!574024))))

(assert (=> d!138959 (= lt!574024 e!721038)))

(declare-fun c!123298 () Bool)

(assert (=> d!138959 (= c!123298 (and (is-Cons!28495 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26)) (= (_1!10676 (h!29704 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26))) key1!31)))))

(assert (=> d!138959 (isStrictlySorted!795 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26))))

(assert (=> d!138959 (= (removeStrictlySorted!156 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26) key1!31) lt!574024)))

(declare-fun b!1265967 () Bool)

(declare-fun e!721036 () List!28499)

(assert (=> b!1265967 (= e!721038 e!721036)))

(declare-fun c!123299 () Bool)

(assert (=> b!1265967 (= c!123299 (and (is-Cons!28495 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26)) (not (= (_1!10676 (h!29704 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26))) key1!31))))))

(declare-fun b!1265968 () Bool)

(assert (=> b!1265968 (= e!721036 Nil!28496)))

(declare-fun b!1265969 () Bool)

(declare-fun $colon$colon!643 (List!28499 tuple2!21332) List!28499)

(assert (=> b!1265969 (= e!721036 ($colon$colon!643 (removeStrictlySorted!156 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26)) key1!31) (h!29704 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26))))))

(assert (= (and d!138959 c!123298) b!1265966))

(assert (= (and d!138959 (not c!123298)) b!1265967))

(assert (= (and b!1265967 c!123299) b!1265969))

(assert (= (and b!1265967 (not c!123299)) b!1265968))

(assert (= (and d!138959 res!842990) b!1265965))

(declare-fun m!1165819 () Bool)

(assert (=> b!1265965 m!1165819))

(declare-fun m!1165821 () Bool)

(assert (=> d!138959 m!1165821))

(assert (=> d!138959 m!1165755))

(declare-fun m!1165823 () Bool)

(assert (=> d!138959 m!1165823))

(declare-fun m!1165825 () Bool)

(assert (=> b!1265969 m!1165825))

(assert (=> b!1265969 m!1165825))

(declare-fun m!1165827 () Bool)

(assert (=> b!1265969 m!1165827))

(assert (=> b!1265863 d!138959))

(declare-fun b!1266060 () Bool)

(declare-fun e!721087 () List!28499)

(declare-fun call!62443 () List!28499)

(assert (=> b!1266060 (= e!721087 call!62443)))

(declare-fun d!138967 () Bool)

(declare-fun e!721088 () Bool)

(assert (=> d!138967 e!721088))

(declare-fun res!843010 () Bool)

(assert (=> d!138967 (=> (not res!843010) (not e!721088))))

(declare-fun lt!574038 () List!28499)

(assert (=> d!138967 (= res!843010 (isStrictlySorted!795 lt!574038))))

(declare-fun e!721085 () List!28499)

(assert (=> d!138967 (= lt!574038 e!721085)))

(declare-fun c!123336 () Bool)

(assert (=> d!138967 (= c!123336 (and (is-Cons!28495 l!706) (bvslt (_1!10676 (h!29704 l!706)) key1!31)))))

(assert (=> d!138967 (isStrictlySorted!795 l!706)))

(assert (=> d!138967 (= (insertStrictlySorted!465 l!706 key1!31 v1!26) lt!574038)))

(declare-fun b!1266061 () Bool)

(declare-fun contains!7658 (List!28499 tuple2!21332) Bool)

(assert (=> b!1266061 (= e!721088 (contains!7658 lt!574038 (tuple2!21333 key1!31 v1!26)))))

(declare-fun e!721089 () List!28499)

(declare-fun call!62444 () List!28499)

(declare-fun bm!62440 () Bool)

(assert (=> bm!62440 (= call!62444 ($colon$colon!643 e!721089 (ite c!123336 (h!29704 l!706) (tuple2!21333 key1!31 v1!26))))))

(declare-fun c!123337 () Bool)

(assert (=> bm!62440 (= c!123337 c!123336)))

(declare-fun c!123338 () Bool)

(declare-fun c!123339 () Bool)

(declare-fun b!1266062 () Bool)

(assert (=> b!1266062 (= e!721089 (ite c!123338 (t!42027 l!706) (ite c!123339 (Cons!28495 (h!29704 l!706) (t!42027 l!706)) Nil!28496)))))

(declare-fun b!1266063 () Bool)

(declare-fun res!843009 () Bool)

(assert (=> b!1266063 (=> (not res!843009) (not e!721088))))

(assert (=> b!1266063 (= res!843009 (containsKey!656 lt!574038 key1!31))))

(declare-fun b!1266064 () Bool)

(assert (=> b!1266064 (= e!721087 call!62443)))

(declare-fun bm!62441 () Bool)

(declare-fun call!62445 () List!28499)

(assert (=> bm!62441 (= call!62443 call!62445)))

(declare-fun bm!62442 () Bool)

(assert (=> bm!62442 (= call!62445 call!62444)))

(declare-fun b!1266065 () Bool)

(assert (=> b!1266065 (= e!721085 call!62444)))

(declare-fun b!1266066 () Bool)

(declare-fun e!721086 () List!28499)

(assert (=> b!1266066 (= e!721086 call!62445)))

(declare-fun b!1266067 () Bool)

(assert (=> b!1266067 (= e!721085 e!721086)))

(assert (=> b!1266067 (= c!123338 (and (is-Cons!28495 l!706) (= (_1!10676 (h!29704 l!706)) key1!31)))))

(declare-fun b!1266068 () Bool)

(assert (=> b!1266068 (= c!123339 (and (is-Cons!28495 l!706) (bvsgt (_1!10676 (h!29704 l!706)) key1!31)))))

(assert (=> b!1266068 (= e!721086 e!721087)))

(declare-fun b!1266069 () Bool)

(assert (=> b!1266069 (= e!721089 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26))))

(assert (= (and d!138967 c!123336) b!1266065))

(assert (= (and d!138967 (not c!123336)) b!1266067))

(assert (= (and b!1266067 c!123338) b!1266066))

(assert (= (and b!1266067 (not c!123338)) b!1266068))

(assert (= (and b!1266068 c!123339) b!1266060))

(assert (= (and b!1266068 (not c!123339)) b!1266064))

(assert (= (or b!1266060 b!1266064) bm!62441))

(assert (= (or b!1266066 bm!62441) bm!62442))

(assert (= (or b!1266065 bm!62442) bm!62440))

(assert (= (and bm!62440 c!123337) b!1266069))

(assert (= (and bm!62440 (not c!123337)) b!1266062))

(assert (= (and d!138967 res!843010) b!1266063))

(assert (= (and b!1266063 res!843009) b!1266061))

(declare-fun m!1165869 () Bool)

(assert (=> b!1266063 m!1165869))

(declare-fun m!1165871 () Bool)

(assert (=> bm!62440 m!1165871))

(declare-fun m!1165873 () Bool)

(assert (=> b!1266061 m!1165873))

(declare-fun m!1165875 () Bool)

(assert (=> d!138967 m!1165875))

(assert (=> d!138967 m!1165749))

(assert (=> b!1266069 m!1165755))

(assert (=> b!1265863 d!138967))

(declare-fun b!1266070 () Bool)

(declare-fun e!721091 () Bool)

(declare-fun lt!574039 () List!28499)

(assert (=> b!1266070 (= e!721091 (not (containsKey!656 lt!574039 key1!31)))))

(declare-fun b!1266071 () Bool)

(declare-fun e!721092 () List!28499)

(assert (=> b!1266071 (= e!721092 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26)))))

(declare-fun d!138979 () Bool)

(assert (=> d!138979 e!721091))

(declare-fun res!843011 () Bool)

(assert (=> d!138979 (=> (not res!843011) (not e!721091))))

(assert (=> d!138979 (= res!843011 (isStrictlySorted!795 lt!574039))))

(assert (=> d!138979 (= lt!574039 e!721092)))

(declare-fun c!123340 () Bool)

(assert (=> d!138979 (= c!123340 (and (is-Cons!28495 (insertStrictlySorted!465 l!706 key1!31 v1!26)) (= (_1!10676 (h!29704 (insertStrictlySorted!465 l!706 key1!31 v1!26))) key1!31)))))

(assert (=> d!138979 (isStrictlySorted!795 (insertStrictlySorted!465 l!706 key1!31 v1!26))))

(assert (=> d!138979 (= (removeStrictlySorted!156 (insertStrictlySorted!465 l!706 key1!31 v1!26) key1!31) lt!574039)))

(declare-fun b!1266072 () Bool)

(declare-fun e!721090 () List!28499)

(assert (=> b!1266072 (= e!721092 e!721090)))

(declare-fun c!123341 () Bool)

(assert (=> b!1266072 (= c!123341 (and (is-Cons!28495 (insertStrictlySorted!465 l!706 key1!31 v1!26)) (not (= (_1!10676 (h!29704 (insertStrictlySorted!465 l!706 key1!31 v1!26))) key1!31))))))

(declare-fun b!1266073 () Bool)

(assert (=> b!1266073 (= e!721090 Nil!28496)))

(declare-fun b!1266074 () Bool)

(assert (=> b!1266074 (= e!721090 ($colon$colon!643 (removeStrictlySorted!156 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26)) key1!31) (h!29704 (insertStrictlySorted!465 l!706 key1!31 v1!26))))))

(assert (= (and d!138979 c!123340) b!1266071))

(assert (= (and d!138979 (not c!123340)) b!1266072))

(assert (= (and b!1266072 c!123341) b!1266074))

(assert (= (and b!1266072 (not c!123341)) b!1266073))

(assert (= (and d!138979 res!843011) b!1266070))

(declare-fun m!1165877 () Bool)

(assert (=> b!1266070 m!1165877))

(declare-fun m!1165879 () Bool)

(assert (=> d!138979 m!1165879))

(assert (=> d!138979 m!1165761))

(declare-fun m!1165881 () Bool)

(assert (=> d!138979 m!1165881))

(declare-fun m!1165883 () Bool)

(assert (=> b!1266074 m!1165883))

(assert (=> b!1266074 m!1165883))

(declare-fun m!1165885 () Bool)

(assert (=> b!1266074 m!1165885))

(assert (=> b!1265863 d!138979))

(declare-fun d!138981 () Bool)

(assert (=> d!138981 (= (removeStrictlySorted!156 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26) key1!31) (t!42027 l!706))))

(declare-fun lt!574044 () Unit!42131)

(declare-fun choose!1896 (List!28499 (_ BitVec 64) B!1994) Unit!42131)

(assert (=> d!138981 (= lt!574044 (choose!1896 (t!42027 l!706) key1!31 v1!26))))

(assert (=> d!138981 (isStrictlySorted!795 (t!42027 l!706))))

(assert (=> d!138981 (= (lemmaInsertStrictlySortedThenRemoveIsSame!10 (t!42027 l!706) key1!31 v1!26) lt!574044)))

(declare-fun bs!35828 () Bool)

(assert (= bs!35828 d!138981))

(assert (=> bs!35828 m!1165755))

(assert (=> bs!35828 m!1165755))

(assert (=> bs!35828 m!1165759))

(declare-fun m!1165905 () Bool)

(assert (=> bs!35828 m!1165905))

(assert (=> bs!35828 m!1165753))

(assert (=> b!1265863 d!138981))

(declare-fun b!1266100 () Bool)

(declare-fun e!721113 () List!28499)

(declare-fun call!62449 () List!28499)

(assert (=> b!1266100 (= e!721113 call!62449)))

(declare-fun d!138989 () Bool)

(declare-fun e!721114 () Bool)

(assert (=> d!138989 e!721114))

(declare-fun res!843026 () Bool)

(assert (=> d!138989 (=> (not res!843026) (not e!721114))))

(declare-fun lt!574045 () List!28499)

(assert (=> d!138989 (= res!843026 (isStrictlySorted!795 lt!574045))))

(declare-fun e!721111 () List!28499)

(assert (=> d!138989 (= lt!574045 e!721111)))

(declare-fun c!123348 () Bool)

(assert (=> d!138989 (= c!123348 (and (is-Cons!28495 (t!42027 l!706)) (bvslt (_1!10676 (h!29704 (t!42027 l!706))) key1!31)))))

(assert (=> d!138989 (isStrictlySorted!795 (t!42027 l!706))))

(assert (=> d!138989 (= (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26) lt!574045)))

(declare-fun b!1266101 () Bool)

(assert (=> b!1266101 (= e!721114 (contains!7658 lt!574045 (tuple2!21333 key1!31 v1!26)))))

(declare-fun bm!62446 () Bool)

(declare-fun e!721115 () List!28499)

(declare-fun call!62450 () List!28499)

(assert (=> bm!62446 (= call!62450 ($colon$colon!643 e!721115 (ite c!123348 (h!29704 (t!42027 l!706)) (tuple2!21333 key1!31 v1!26))))))

(declare-fun c!123349 () Bool)

(assert (=> bm!62446 (= c!123349 c!123348)))

(declare-fun c!123351 () Bool)

(declare-fun c!123350 () Bool)

(declare-fun b!1266102 () Bool)

(assert (=> b!1266102 (= e!721115 (ite c!123350 (t!42027 (t!42027 l!706)) (ite c!123351 (Cons!28495 (h!29704 (t!42027 l!706)) (t!42027 (t!42027 l!706))) Nil!28496)))))

(declare-fun b!1266103 () Bool)

(declare-fun res!843025 () Bool)

(assert (=> b!1266103 (=> (not res!843025) (not e!721114))))

(assert (=> b!1266103 (= res!843025 (containsKey!656 lt!574045 key1!31))))

(declare-fun b!1266104 () Bool)

(assert (=> b!1266104 (= e!721113 call!62449)))

(declare-fun bm!62447 () Bool)

(declare-fun call!62451 () List!28499)

(assert (=> bm!62447 (= call!62449 call!62451)))

(declare-fun bm!62448 () Bool)

(assert (=> bm!62448 (= call!62451 call!62450)))

(declare-fun b!1266105 () Bool)

(assert (=> b!1266105 (= e!721111 call!62450)))

(declare-fun b!1266106 () Bool)

(declare-fun e!721112 () List!28499)

(assert (=> b!1266106 (= e!721112 call!62451)))

(declare-fun b!1266107 () Bool)

(assert (=> b!1266107 (= e!721111 e!721112)))

(assert (=> b!1266107 (= c!123350 (and (is-Cons!28495 (t!42027 l!706)) (= (_1!10676 (h!29704 (t!42027 l!706))) key1!31)))))

(declare-fun b!1266108 () Bool)

(assert (=> b!1266108 (= c!123351 (and (is-Cons!28495 (t!42027 l!706)) (bvsgt (_1!10676 (h!29704 (t!42027 l!706))) key1!31)))))

(assert (=> b!1266108 (= e!721112 e!721113)))

(declare-fun b!1266109 () Bool)

(assert (=> b!1266109 (= e!721115 (insertStrictlySorted!465 (t!42027 (t!42027 l!706)) key1!31 v1!26))))

(assert (= (and d!138989 c!123348) b!1266105))

(assert (= (and d!138989 (not c!123348)) b!1266107))

(assert (= (and b!1266107 c!123350) b!1266106))

(assert (= (and b!1266107 (not c!123350)) b!1266108))

(assert (= (and b!1266108 c!123351) b!1266100))

(assert (= (and b!1266108 (not c!123351)) b!1266104))

(assert (= (or b!1266100 b!1266104) bm!62447))

(assert (= (or b!1266106 bm!62447) bm!62448))

(assert (= (or b!1266105 bm!62448) bm!62446))

(assert (= (and bm!62446 c!123349) b!1266109))

(assert (= (and bm!62446 (not c!123349)) b!1266102))

(assert (= (and d!138989 res!843026) b!1266103))

(assert (= (and b!1266103 res!843025) b!1266101))

(declare-fun m!1165907 () Bool)

(assert (=> b!1266103 m!1165907))

(declare-fun m!1165909 () Bool)

(assert (=> bm!62446 m!1165909))

(declare-fun m!1165911 () Bool)

(assert (=> b!1266101 m!1165911))

(declare-fun m!1165913 () Bool)

(assert (=> d!138989 m!1165913))

(assert (=> d!138989 m!1165753))

(declare-fun m!1165915 () Bool)

(assert (=> b!1266109 m!1165915))

(assert (=> b!1265863 d!138989))

(declare-fun d!138991 () Bool)

(declare-fun res!843029 () Bool)

(declare-fun e!721118 () Bool)

(assert (=> d!138991 (=> res!843029 e!721118)))

(assert (=> d!138991 (= res!843029 (or (is-Nil!28496 l!706) (is-Nil!28496 (t!42027 l!706))))))

(assert (=> d!138991 (= (isStrictlySorted!795 l!706) e!721118)))

(declare-fun b!1266112 () Bool)

(declare-fun e!721119 () Bool)

(assert (=> b!1266112 (= e!721118 e!721119)))

(declare-fun res!843030 () Bool)

(assert (=> b!1266112 (=> (not res!843030) (not e!721119))))

(assert (=> b!1266112 (= res!843030 (bvslt (_1!10676 (h!29704 l!706)) (_1!10676 (h!29704 (t!42027 l!706)))))))

(declare-fun b!1266113 () Bool)

(assert (=> b!1266113 (= e!721119 (isStrictlySorted!795 (t!42027 l!706)))))

(assert (= (and d!138991 (not res!843029)) b!1266112))

(assert (= (and b!1266112 res!843030) b!1266113))

(assert (=> b!1266113 m!1165753))

(assert (=> start!106540 d!138991))

(declare-fun d!138997 () Bool)

(declare-fun res!843033 () Bool)

(declare-fun e!721122 () Bool)

(assert (=> d!138997 (=> res!843033 e!721122)))

(assert (=> d!138997 (= res!843033 (and (is-Cons!28495 l!706) (= (_1!10676 (h!29704 l!706)) key1!31)))))

(assert (=> d!138997 (= (containsKey!656 l!706 key1!31) e!721122)))

(declare-fun b!1266116 () Bool)

(declare-fun e!721123 () Bool)

(assert (=> b!1266116 (= e!721122 e!721123)))

(declare-fun res!843034 () Bool)

(assert (=> b!1266116 (=> (not res!843034) (not e!721123))))

(assert (=> b!1266116 (= res!843034 (and (or (not (is-Cons!28495 l!706)) (bvsle (_1!10676 (h!29704 l!706)) key1!31)) (is-Cons!28495 l!706) (bvslt (_1!10676 (h!29704 l!706)) key1!31)))))

(declare-fun b!1266117 () Bool)

(assert (=> b!1266117 (= e!721123 (containsKey!656 (t!42027 l!706) key1!31))))

(assert (= (and d!138997 (not res!843033)) b!1266116))

(assert (= (and b!1266116 res!843034) b!1266117))

(assert (=> b!1266117 m!1165751))

(assert (=> b!1265867 d!138997))

(declare-fun b!1266138 () Bool)

(declare-fun e!721135 () Bool)

(declare-fun tp!96422 () Bool)

(assert (=> b!1266138 (= e!721135 (and tp_is_empty!32527 tp!96422))))

(assert (=> b!1265862 (= tp!96411 e!721135)))

(assert (= (and b!1265862 (is-Cons!28495 (t!42027 l!706))) b!1266138))

(push 1)

(assert (not d!138967))

(assert (not b!1265933))

(assert (not d!138979))

(assert (not b!1265909))

(assert (not b!1266070))

(assert (not b!1266101))

(assert (not b!1265969))

(assert (not d!138959))

(assert (not b!1266074))

(assert (not bm!62440))

(assert (not bm!62446))

(assert (not b!1266103))

(assert (not b!1266061))

(assert (not b!1266117))

(assert (not b!1266113))

(assert (not b!1266063))

(assert (not b!1266069))

(assert tp_is_empty!32527)

(assert (not b!1266109))

(assert (not d!138981))

(assert (not d!138989))

(assert (not b!1265965))

(assert (not b!1266138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!574059 () Bool)

(declare-fun d!139047 () Bool)

(declare-fun content!640 (List!28499) (Set tuple2!21332))

(assert (=> d!139047 (= lt!574059 (set.member (tuple2!21333 key1!31 v1!26) (content!640 lt!574038)))))

(declare-fun e!721191 () Bool)

(assert (=> d!139047 (= lt!574059 e!721191)))

(declare-fun res!843081 () Bool)

(assert (=> d!139047 (=> (not res!843081) (not e!721191))))

(assert (=> d!139047 (= res!843081 (is-Cons!28495 lt!574038))))

(assert (=> d!139047 (= (contains!7658 lt!574038 (tuple2!21333 key1!31 v1!26)) lt!574059)))

(declare-fun b!1266204 () Bool)

(declare-fun e!721190 () Bool)

(assert (=> b!1266204 (= e!721191 e!721190)))

(declare-fun res!843082 () Bool)

(assert (=> b!1266204 (=> res!843082 e!721190)))

(assert (=> b!1266204 (= res!843082 (= (h!29704 lt!574038) (tuple2!21333 key1!31 v1!26)))))

(declare-fun b!1266205 () Bool)

(assert (=> b!1266205 (= e!721190 (contains!7658 (t!42027 lt!574038) (tuple2!21333 key1!31 v1!26)))))

(assert (= (and d!139047 res!843081) b!1266204))

(assert (= (and b!1266204 (not res!843082)) b!1266205))

(declare-fun m!1165997 () Bool)

(assert (=> d!139047 m!1165997))

(declare-fun m!1165999 () Bool)

(assert (=> d!139047 m!1165999))

(declare-fun m!1166001 () Bool)

(assert (=> b!1266205 m!1166001))

(assert (=> b!1266061 d!139047))

(assert (=> b!1266069 d!138989))

(declare-fun d!139049 () Bool)

(declare-fun res!843083 () Bool)

(declare-fun e!721192 () Bool)

(assert (=> d!139049 (=> res!843083 e!721192)))

(assert (=> d!139049 (= res!843083 (or (is-Nil!28496 lt!574045) (is-Nil!28496 (t!42027 lt!574045))))))

(assert (=> d!139049 (= (isStrictlySorted!795 lt!574045) e!721192)))

(declare-fun b!1266206 () Bool)

(declare-fun e!721193 () Bool)

(assert (=> b!1266206 (= e!721192 e!721193)))

(declare-fun res!843084 () Bool)

(assert (=> b!1266206 (=> (not res!843084) (not e!721193))))

(assert (=> b!1266206 (= res!843084 (bvslt (_1!10676 (h!29704 lt!574045)) (_1!10676 (h!29704 (t!42027 lt!574045)))))))

(declare-fun b!1266207 () Bool)

(assert (=> b!1266207 (= e!721193 (isStrictlySorted!795 (t!42027 lt!574045)))))

(assert (= (and d!139049 (not res!843083)) b!1266206))

(assert (= (and b!1266206 res!843084) b!1266207))

(declare-fun m!1166003 () Bool)

(assert (=> b!1266207 m!1166003))

(assert (=> d!138989 d!139049))

(assert (=> d!138989 d!138951))

(assert (=> d!138981 d!138959))

(assert (=> d!138981 d!138989))

(declare-fun d!139051 () Bool)

(assert (=> d!139051 (= (removeStrictlySorted!156 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26) key1!31) (t!42027 l!706))))

(assert (=> d!139051 true))

(declare-fun _$4!64 () Unit!42131)

(assert (=> d!139051 (= (choose!1896 (t!42027 l!706) key1!31 v1!26) _$4!64)))

(declare-fun bs!35831 () Bool)

(assert (= bs!35831 d!139051))

(assert (=> bs!35831 m!1165755))

(assert (=> bs!35831 m!1165755))

(assert (=> bs!35831 m!1165759))

(assert (=> d!138981 d!139051))

(assert (=> d!138981 d!138951))

(declare-fun d!139053 () Bool)

(declare-fun res!843085 () Bool)

(declare-fun e!721194 () Bool)

(assert (=> d!139053 (=> res!843085 e!721194)))

(assert (=> d!139053 (= res!843085 (and (is-Cons!28495 lt!574045) (= (_1!10676 (h!29704 lt!574045)) key1!31)))))

(assert (=> d!139053 (= (containsKey!656 lt!574045 key1!31) e!721194)))

(declare-fun b!1266208 () Bool)

(declare-fun e!721195 () Bool)

(assert (=> b!1266208 (= e!721194 e!721195)))

(declare-fun res!843086 () Bool)

(assert (=> b!1266208 (=> (not res!843086) (not e!721195))))

(assert (=> b!1266208 (= res!843086 (and (or (not (is-Cons!28495 lt!574045)) (bvsle (_1!10676 (h!29704 lt!574045)) key1!31)) (is-Cons!28495 lt!574045) (bvslt (_1!10676 (h!29704 lt!574045)) key1!31)))))

(declare-fun b!1266209 () Bool)

(assert (=> b!1266209 (= e!721195 (containsKey!656 (t!42027 lt!574045) key1!31))))

(assert (= (and d!139053 (not res!843085)) b!1266208))

(assert (= (and b!1266208 res!843086) b!1266209))

(declare-fun m!1166005 () Bool)

(assert (=> b!1266209 m!1166005))

(assert (=> b!1266103 d!139053))

(declare-fun d!139055 () Bool)

(declare-fun res!843087 () Bool)

(declare-fun e!721196 () Bool)

(assert (=> d!139055 (=> res!843087 e!721196)))

(assert (=> d!139055 (= res!843087 (and (is-Cons!28495 lt!574024) (= (_1!10676 (h!29704 lt!574024)) key1!31)))))

(assert (=> d!139055 (= (containsKey!656 lt!574024 key1!31) e!721196)))

(declare-fun b!1266210 () Bool)

(declare-fun e!721197 () Bool)

(assert (=> b!1266210 (= e!721196 e!721197)))

(declare-fun res!843088 () Bool)

(assert (=> b!1266210 (=> (not res!843088) (not e!721197))))

(assert (=> b!1266210 (= res!843088 (and (or (not (is-Cons!28495 lt!574024)) (bvsle (_1!10676 (h!29704 lt!574024)) key1!31)) (is-Cons!28495 lt!574024) (bvslt (_1!10676 (h!29704 lt!574024)) key1!31)))))

(declare-fun b!1266211 () Bool)

(assert (=> b!1266211 (= e!721197 (containsKey!656 (t!42027 lt!574024) key1!31))))

(assert (= (and d!139055 (not res!843087)) b!1266210))

(assert (= (and b!1266210 res!843088) b!1266211))

(declare-fun m!1166007 () Bool)

(assert (=> b!1266211 m!1166007))

(assert (=> b!1265965 d!139055))

(declare-fun d!139057 () Bool)

(declare-fun res!843089 () Bool)

(declare-fun e!721198 () Bool)

(assert (=> d!139057 (=> res!843089 e!721198)))

(assert (=> d!139057 (= res!843089 (or (is-Nil!28496 (t!42027 (t!42027 l!706))) (is-Nil!28496 (t!42027 (t!42027 (t!42027 l!706))))))))

(assert (=> d!139057 (= (isStrictlySorted!795 (t!42027 (t!42027 l!706))) e!721198)))

(declare-fun b!1266212 () Bool)

(declare-fun e!721199 () Bool)

(assert (=> b!1266212 (= e!721198 e!721199)))

(declare-fun res!843090 () Bool)

(assert (=> b!1266212 (=> (not res!843090) (not e!721199))))

(assert (=> b!1266212 (= res!843090 (bvslt (_1!10676 (h!29704 (t!42027 (t!42027 l!706)))) (_1!10676 (h!29704 (t!42027 (t!42027 (t!42027 l!706)))))))))

(declare-fun b!1266213 () Bool)

(assert (=> b!1266213 (= e!721199 (isStrictlySorted!795 (t!42027 (t!42027 (t!42027 l!706)))))))

(assert (= (and d!139057 (not res!843089)) b!1266212))

(assert (= (and b!1266212 res!843090) b!1266213))

(declare-fun m!1166009 () Bool)

(assert (=> b!1266213 m!1166009))

(assert (=> b!1265909 d!139057))

(declare-fun d!139059 () Bool)

(declare-fun res!843091 () Bool)

(declare-fun e!721200 () Bool)

(assert (=> d!139059 (=> res!843091 e!721200)))

(assert (=> d!139059 (= res!843091 (and (is-Cons!28495 lt!574039) (= (_1!10676 (h!29704 lt!574039)) key1!31)))))

(assert (=> d!139059 (= (containsKey!656 lt!574039 key1!31) e!721200)))

(declare-fun b!1266214 () Bool)

(declare-fun e!721201 () Bool)

(assert (=> b!1266214 (= e!721200 e!721201)))

(declare-fun res!843092 () Bool)

(assert (=> b!1266214 (=> (not res!843092) (not e!721201))))

(assert (=> b!1266214 (= res!843092 (and (or (not (is-Cons!28495 lt!574039)) (bvsle (_1!10676 (h!29704 lt!574039)) key1!31)) (is-Cons!28495 lt!574039) (bvslt (_1!10676 (h!29704 lt!574039)) key1!31)))))

(declare-fun b!1266215 () Bool)

(assert (=> b!1266215 (= e!721201 (containsKey!656 (t!42027 lt!574039) key1!31))))

(assert (= (and d!139059 (not res!843091)) b!1266214))

(assert (= (and b!1266214 res!843092) b!1266215))

(declare-fun m!1166011 () Bool)

(assert (=> b!1266215 m!1166011))

(assert (=> b!1266070 d!139059))

(declare-fun d!139061 () Bool)

(declare-fun res!843093 () Bool)

(declare-fun e!721202 () Bool)

(assert (=> d!139061 (=> res!843093 e!721202)))

(assert (=> d!139061 (= res!843093 (and (is-Cons!28495 lt!574038) (= (_1!10676 (h!29704 lt!574038)) key1!31)))))

(assert (=> d!139061 (= (containsKey!656 lt!574038 key1!31) e!721202)))

(declare-fun b!1266216 () Bool)

(declare-fun e!721203 () Bool)

(assert (=> b!1266216 (= e!721202 e!721203)))

(declare-fun res!843094 () Bool)

(assert (=> b!1266216 (=> (not res!843094) (not e!721203))))

(assert (=> b!1266216 (= res!843094 (and (or (not (is-Cons!28495 lt!574038)) (bvsle (_1!10676 (h!29704 lt!574038)) key1!31)) (is-Cons!28495 lt!574038) (bvslt (_1!10676 (h!29704 lt!574038)) key1!31)))))

(declare-fun b!1266217 () Bool)

(assert (=> b!1266217 (= e!721203 (containsKey!656 (t!42027 lt!574038) key1!31))))

(assert (= (and d!139061 (not res!843093)) b!1266216))

(assert (= (and b!1266216 res!843094) b!1266217))

(declare-fun m!1166013 () Bool)

(assert (=> b!1266217 m!1166013))

(assert (=> b!1266063 d!139061))

(declare-fun d!139063 () Bool)

(assert (=> d!139063 (= ($colon$colon!643 (removeStrictlySorted!156 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26)) key1!31) (h!29704 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26))) (Cons!28495 (h!29704 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26)) (removeStrictlySorted!156 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26)) key1!31)))))

(assert (=> b!1265969 d!139063))

(declare-fun b!1266218 () Bool)

(declare-fun e!721205 () Bool)

(declare-fun lt!574060 () List!28499)

(assert (=> b!1266218 (= e!721205 (not (containsKey!656 lt!574060 key1!31)))))

(declare-fun b!1266219 () Bool)

(declare-fun e!721206 () List!28499)

(assert (=> b!1266219 (= e!721206 (t!42027 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26))))))

(declare-fun d!139065 () Bool)

(assert (=> d!139065 e!721205))

(declare-fun res!843095 () Bool)

(assert (=> d!139065 (=> (not res!843095) (not e!721205))))

(assert (=> d!139065 (= res!843095 (isStrictlySorted!795 lt!574060))))

(assert (=> d!139065 (= lt!574060 e!721206)))

(declare-fun c!123364 () Bool)

(assert (=> d!139065 (= c!123364 (and (is-Cons!28495 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26))) (= (_1!10676 (h!29704 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26)))) key1!31)))))

(assert (=> d!139065 (isStrictlySorted!795 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26)))))

(assert (=> d!139065 (= (removeStrictlySorted!156 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26)) key1!31) lt!574060)))

(declare-fun b!1266220 () Bool)

(declare-fun e!721204 () List!28499)

(assert (=> b!1266220 (= e!721206 e!721204)))

(declare-fun c!123365 () Bool)

(assert (=> b!1266220 (= c!123365 (and (is-Cons!28495 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26))) (not (= (_1!10676 (h!29704 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26)))) key1!31))))))

(declare-fun b!1266221 () Bool)

(assert (=> b!1266221 (= e!721204 Nil!28496)))

(declare-fun b!1266222 () Bool)

(assert (=> b!1266222 (= e!721204 ($colon$colon!643 (removeStrictlySorted!156 (t!42027 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26))) key1!31) (h!29704 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26)))))))

(assert (= (and d!139065 c!123364) b!1266219))

(assert (= (and d!139065 (not c!123364)) b!1266220))

(assert (= (and b!1266220 c!123365) b!1266222))

(assert (= (and b!1266220 (not c!123365)) b!1266221))

(assert (= (and d!139065 res!843095) b!1266218))

(declare-fun m!1166015 () Bool)

(assert (=> b!1266218 m!1166015))

(declare-fun m!1166017 () Bool)

(assert (=> d!139065 m!1166017))

(declare-fun m!1166019 () Bool)

(assert (=> d!139065 m!1166019))

(declare-fun m!1166021 () Bool)

(assert (=> b!1266222 m!1166021))

(assert (=> b!1266222 m!1166021))

(declare-fun m!1166023 () Bool)

(assert (=> b!1266222 m!1166023))

(assert (=> b!1265969 d!139065))

(declare-fun d!139067 () Bool)

(assert (=> d!139067 (= ($colon$colon!643 (removeStrictlySorted!156 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26)) key1!31) (h!29704 (insertStrictlySorted!465 l!706 key1!31 v1!26))) (Cons!28495 (h!29704 (insertStrictlySorted!465 l!706 key1!31 v1!26)) (removeStrictlySorted!156 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26)) key1!31)))))

(assert (=> b!1266074 d!139067))

(declare-fun b!1266223 () Bool)

(declare-fun e!721208 () Bool)

(declare-fun lt!574061 () List!28499)

(assert (=> b!1266223 (= e!721208 (not (containsKey!656 lt!574061 key1!31)))))

(declare-fun b!1266224 () Bool)

(declare-fun e!721209 () List!28499)

(assert (=> b!1266224 (= e!721209 (t!42027 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26))))))

(declare-fun d!139069 () Bool)

(assert (=> d!139069 e!721208))

(declare-fun res!843096 () Bool)

(assert (=> d!139069 (=> (not res!843096) (not e!721208))))

(assert (=> d!139069 (= res!843096 (isStrictlySorted!795 lt!574061))))

(assert (=> d!139069 (= lt!574061 e!721209)))

(declare-fun c!123366 () Bool)

(assert (=> d!139069 (= c!123366 (and (is-Cons!28495 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26))) (= (_1!10676 (h!29704 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26)))) key1!31)))))

(assert (=> d!139069 (isStrictlySorted!795 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26)))))

(assert (=> d!139069 (= (removeStrictlySorted!156 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26)) key1!31) lt!574061)))

(declare-fun b!1266225 () Bool)

(declare-fun e!721207 () List!28499)

(assert (=> b!1266225 (= e!721209 e!721207)))

(declare-fun c!123367 () Bool)

(assert (=> b!1266225 (= c!123367 (and (is-Cons!28495 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26))) (not (= (_1!10676 (h!29704 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26)))) key1!31))))))

(declare-fun b!1266226 () Bool)

(assert (=> b!1266226 (= e!721207 Nil!28496)))

(declare-fun b!1266227 () Bool)

(assert (=> b!1266227 (= e!721207 ($colon$colon!643 (removeStrictlySorted!156 (t!42027 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26))) key1!31) (h!29704 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26)))))))

(assert (= (and d!139069 c!123366) b!1266224))

(assert (= (and d!139069 (not c!123366)) b!1266225))

(assert (= (and b!1266225 c!123367) b!1266227))

(assert (= (and b!1266225 (not c!123367)) b!1266226))

(assert (= (and d!139069 res!843096) b!1266223))

(declare-fun m!1166025 () Bool)

(assert (=> b!1266223 m!1166025))

(declare-fun m!1166027 () Bool)

(assert (=> d!139069 m!1166027))

(declare-fun m!1166029 () Bool)

(assert (=> d!139069 m!1166029))

(declare-fun m!1166031 () Bool)

(assert (=> b!1266227 m!1166031))

(assert (=> b!1266227 m!1166031))

(declare-fun m!1166033 () Bool)

(assert (=> b!1266227 m!1166033))

(assert (=> b!1266074 d!139069))

(declare-fun d!139071 () Bool)

(declare-fun res!843097 () Bool)

(declare-fun e!721210 () Bool)

(assert (=> d!139071 (=> res!843097 e!721210)))

(assert (=> d!139071 (= res!843097 (or (is-Nil!28496 lt!574024) (is-Nil!28496 (t!42027 lt!574024))))))

(assert (=> d!139071 (= (isStrictlySorted!795 lt!574024) e!721210)))

(declare-fun b!1266228 () Bool)

(declare-fun e!721211 () Bool)

(assert (=> b!1266228 (= e!721210 e!721211)))

(declare-fun res!843098 () Bool)

(assert (=> b!1266228 (=> (not res!843098) (not e!721211))))

(assert (=> b!1266228 (= res!843098 (bvslt (_1!10676 (h!29704 lt!574024)) (_1!10676 (h!29704 (t!42027 lt!574024)))))))

(declare-fun b!1266229 () Bool)

(assert (=> b!1266229 (= e!721211 (isStrictlySorted!795 (t!42027 lt!574024)))))

(assert (= (and d!139071 (not res!843097)) b!1266228))

(assert (= (and b!1266228 res!843098) b!1266229))

(declare-fun m!1166035 () Bool)

(assert (=> b!1266229 m!1166035))

(assert (=> d!138959 d!139071))

(declare-fun d!139073 () Bool)

(declare-fun res!843099 () Bool)

(declare-fun e!721212 () Bool)

(assert (=> d!139073 (=> res!843099 e!721212)))

(assert (=> d!139073 (= res!843099 (or (is-Nil!28496 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26)) (is-Nil!28496 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26)))))))

(assert (=> d!139073 (= (isStrictlySorted!795 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26)) e!721212)))

(declare-fun b!1266230 () Bool)

(declare-fun e!721213 () Bool)

(assert (=> b!1266230 (= e!721212 e!721213)))

(declare-fun res!843100 () Bool)

(assert (=> b!1266230 (=> (not res!843100) (not e!721213))))

(assert (=> b!1266230 (= res!843100 (bvslt (_1!10676 (h!29704 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26))) (_1!10676 (h!29704 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26))))))))

(declare-fun b!1266231 () Bool)

(assert (=> b!1266231 (= e!721213 (isStrictlySorted!795 (t!42027 (insertStrictlySorted!465 (t!42027 l!706) key1!31 v1!26))))))

(assert (= (and d!139073 (not res!843099)) b!1266230))

(assert (= (and b!1266230 res!843100) b!1266231))

(assert (=> b!1266231 m!1166019))

(assert (=> d!138959 d!139073))

(declare-fun d!139075 () Bool)

(assert (=> d!139075 (= ($colon$colon!643 e!721089 (ite c!123336 (h!29704 l!706) (tuple2!21333 key1!31 v1!26))) (Cons!28495 (ite c!123336 (h!29704 l!706) (tuple2!21333 key1!31 v1!26)) e!721089))))

(assert (=> bm!62440 d!139075))

(declare-fun d!139077 () Bool)

(declare-fun res!843101 () Bool)

(declare-fun e!721214 () Bool)

(assert (=> d!139077 (=> res!843101 e!721214)))

(assert (=> d!139077 (= res!843101 (or (is-Nil!28496 lt!574039) (is-Nil!28496 (t!42027 lt!574039))))))

(assert (=> d!139077 (= (isStrictlySorted!795 lt!574039) e!721214)))

(declare-fun b!1266232 () Bool)

(declare-fun e!721215 () Bool)

(assert (=> b!1266232 (= e!721214 e!721215)))

(declare-fun res!843102 () Bool)

(assert (=> b!1266232 (=> (not res!843102) (not e!721215))))

(assert (=> b!1266232 (= res!843102 (bvslt (_1!10676 (h!29704 lt!574039)) (_1!10676 (h!29704 (t!42027 lt!574039)))))))

(declare-fun b!1266233 () Bool)

(assert (=> b!1266233 (= e!721215 (isStrictlySorted!795 (t!42027 lt!574039)))))

(assert (= (and d!139077 (not res!843101)) b!1266232))

(assert (= (and b!1266232 res!843102) b!1266233))

(declare-fun m!1166037 () Bool)

(assert (=> b!1266233 m!1166037))

(assert (=> d!138979 d!139077))

(declare-fun d!139079 () Bool)

(declare-fun res!843103 () Bool)

(declare-fun e!721216 () Bool)

(assert (=> d!139079 (=> res!843103 e!721216)))

(assert (=> d!139079 (= res!843103 (or (is-Nil!28496 (insertStrictlySorted!465 l!706 key1!31 v1!26)) (is-Nil!28496 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26)))))))

(assert (=> d!139079 (= (isStrictlySorted!795 (insertStrictlySorted!465 l!706 key1!31 v1!26)) e!721216)))

(declare-fun b!1266234 () Bool)

(declare-fun e!721217 () Bool)

(assert (=> b!1266234 (= e!721216 e!721217)))

(declare-fun res!843104 () Bool)

(assert (=> b!1266234 (=> (not res!843104) (not e!721217))))

(assert (=> b!1266234 (= res!843104 (bvslt (_1!10676 (h!29704 (insertStrictlySorted!465 l!706 key1!31 v1!26))) (_1!10676 (h!29704 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26))))))))

(declare-fun b!1266235 () Bool)

(assert (=> b!1266235 (= e!721217 (isStrictlySorted!795 (t!42027 (insertStrictlySorted!465 l!706 key1!31 v1!26))))))

(assert (= (and d!139079 (not res!843103)) b!1266234))

(assert (= (and b!1266234 res!843104) b!1266235))

(assert (=> b!1266235 m!1166029))

(assert (=> d!138979 d!139079))

(declare-fun d!139081 () Bool)

(declare-fun res!843105 () Bool)

(declare-fun e!721218 () Bool)

(assert (=> d!139081 (=> res!843105 e!721218)))

(assert (=> d!139081 (= res!843105 (and (is-Cons!28495 (t!42027 (t!42027 l!706))) (= (_1!10676 (h!29704 (t!42027 (t!42027 l!706)))) key1!31)))))

(assert (=> d!139081 (= (containsKey!656 (t!42027 (t!42027 l!706)) key1!31) e!721218)))

(declare-fun b!1266236 () Bool)

(declare-fun e!721219 () Bool)

(assert (=> b!1266236 (= e!721218 e!721219)))

(declare-fun res!843106 () Bool)

(assert (=> b!1266236 (=> (not res!843106) (not e!721219))))

(assert (=> b!1266236 (= res!843106 (and (or (not (is-Cons!28495 (t!42027 (t!42027 l!706)))) (bvsle (_1!10676 (h!29704 (t!42027 (t!42027 l!706)))) key1!31)) (is-Cons!28495 (t!42027 (t!42027 l!706))) (bvslt (_1!10676 (h!29704 (t!42027 (t!42027 l!706)))) key1!31)))))

(declare-fun b!1266237 () Bool)

(assert (=> b!1266237 (= e!721219 (containsKey!656 (t!42027 (t!42027 (t!42027 l!706))) key1!31))))

(assert (= (and d!139081 (not res!843105)) b!1266236))

(assert (= (and b!1266236 res!843106) b!1266237))

(declare-fun m!1166039 () Bool)

(assert (=> b!1266237 m!1166039))

(assert (=> b!1265933 d!139081))

(declare-fun d!139083 () Bool)

(declare-fun res!843107 () Bool)

(declare-fun e!721220 () Bool)

(assert (=> d!139083 (=> res!843107 e!721220)))

(assert (=> d!139083 (= res!843107 (or (is-Nil!28496 lt!574038) (is-Nil!28496 (t!42027 lt!574038))))))

(assert (=> d!139083 (= (isStrictlySorted!795 lt!574038) e!721220)))

(declare-fun b!1266238 () Bool)

(declare-fun e!721221 () Bool)

(assert (=> b!1266238 (= e!721220 e!721221)))

(declare-fun res!843108 () Bool)

(assert (=> b!1266238 (=> (not res!843108) (not e!721221))))

(assert (=> b!1266238 (= res!843108 (bvslt (_1!10676 (h!29704 lt!574038)) (_1!10676 (h!29704 (t!42027 lt!574038)))))))

(declare-fun b!1266239 () Bool)

(assert (=> b!1266239 (= e!721221 (isStrictlySorted!795 (t!42027 lt!574038)))))

(assert (= (and d!139083 (not res!843107)) b!1266238))

(assert (= (and b!1266238 res!843108) b!1266239))

(declare-fun m!1166041 () Bool)

(assert (=> b!1266239 m!1166041))

(assert (=> d!138967 d!139083))

(assert (=> d!138967 d!138991))

(declare-fun d!139085 () Bool)

(assert (=> d!139085 (= ($colon$colon!643 e!721115 (ite c!123348 (h!29704 (t!42027 l!706)) (tuple2!21333 key1!31 v1!26))) (Cons!28495 (ite c!123348 (h!29704 (t!42027 l!706)) (tuple2!21333 key1!31 v1!26)) e!721115))))

(assert (=> bm!62446 d!139085))

(declare-fun d!139087 () Bool)

(declare-fun lt!574062 () Bool)

(assert (=> d!139087 (= lt!574062 (set.member (tuple2!21333 key1!31 v1!26) (content!640 lt!574045)))))

(declare-fun e!721223 () Bool)

(assert (=> d!139087 (= lt!574062 e!721223)))

(declare-fun res!843109 () Bool)

(assert (=> d!139087 (=> (not res!843109) (not e!721223))))

(assert (=> d!139087 (= res!843109 (is-Cons!28495 lt!574045))))

(assert (=> d!139087 (= (contains!7658 lt!574045 (tuple2!21333 key1!31 v1!26)) lt!574062)))

(declare-fun b!1266240 () Bool)

(declare-fun e!721222 () Bool)

(assert (=> b!1266240 (= e!721223 e!721222)))

(declare-fun res!843110 () Bool)

(assert (=> b!1266240 (=> res!843110 e!721222)))

(assert (=> b!1266240 (= res!843110 (= (h!29704 lt!574045) (tuple2!21333 key1!31 v1!26)))))

(declare-fun b!1266241 () Bool)

(assert (=> b!1266241 (= e!721222 (contains!7658 (t!42027 lt!574045) (tuple2!21333 key1!31 v1!26)))))

(assert (= (and d!139087 res!843109) b!1266240))

(assert (= (and b!1266240 (not res!843110)) b!1266241))

(declare-fun m!1166043 () Bool)

(assert (=> d!139087 m!1166043))

(declare-fun m!1166045 () Bool)

(assert (=> d!139087 m!1166045))

(declare-fun m!1166047 () Bool)

(assert (=> b!1266241 m!1166047))

(assert (=> b!1266101 d!139087))

(assert (=> b!1266117 d!138955))

(declare-fun b!1266242 () Bool)

(declare-fun e!721226 () List!28499)

(declare-fun call!62458 () List!28499)

(assert (=> b!1266242 (= e!721226 call!62458)))

(declare-fun d!139089 () Bool)

(declare-fun e!721227 () Bool)

(assert (=> d!139089 e!721227))

(declare-fun res!843112 () Bool)

(assert (=> d!139089 (=> (not res!843112) (not e!721227))))

(declare-fun lt!574063 () List!28499)

(assert (=> d!139089 (= res!843112 (isStrictlySorted!795 lt!574063))))

(declare-fun e!721224 () List!28499)

(assert (=> d!139089 (= lt!574063 e!721224)))

(declare-fun c!123368 () Bool)

(assert (=> d!139089 (= c!123368 (and (is-Cons!28495 (t!42027 (t!42027 l!706))) (bvslt (_1!10676 (h!29704 (t!42027 (t!42027 l!706)))) key1!31)))))

(assert (=> d!139089 (isStrictlySorted!795 (t!42027 (t!42027 l!706)))))

(assert (=> d!139089 (= (insertStrictlySorted!465 (t!42027 (t!42027 l!706)) key1!31 v1!26) lt!574063)))

(declare-fun b!1266243 () Bool)

(assert (=> b!1266243 (= e!721227 (contains!7658 lt!574063 (tuple2!21333 key1!31 v1!26)))))

(declare-fun call!62459 () List!28499)

(declare-fun bm!62455 () Bool)

(declare-fun e!721228 () List!28499)

(assert (=> bm!62455 (= call!62459 ($colon$colon!643 e!721228 (ite c!123368 (h!29704 (t!42027 (t!42027 l!706))) (tuple2!21333 key1!31 v1!26))))))

(declare-fun c!123369 () Bool)

(assert (=> bm!62455 (= c!123369 c!123368)))

(declare-fun b!1266244 () Bool)

(declare-fun c!123371 () Bool)

(declare-fun c!123370 () Bool)

(assert (=> b!1266244 (= e!721228 (ite c!123370 (t!42027 (t!42027 (t!42027 l!706))) (ite c!123371 (Cons!28495 (h!29704 (t!42027 (t!42027 l!706))) (t!42027 (t!42027 (t!42027 l!706)))) Nil!28496)))))

(declare-fun b!1266245 () Bool)

(declare-fun res!843111 () Bool)

(assert (=> b!1266245 (=> (not res!843111) (not e!721227))))

(assert (=> b!1266245 (= res!843111 (containsKey!656 lt!574063 key1!31))))

(declare-fun b!1266246 () Bool)

(assert (=> b!1266246 (= e!721226 call!62458)))

(declare-fun bm!62456 () Bool)

(declare-fun call!62460 () List!28499)

(assert (=> bm!62456 (= call!62458 call!62460)))

(declare-fun bm!62457 () Bool)

(assert (=> bm!62457 (= call!62460 call!62459)))

(declare-fun b!1266247 () Bool)

(assert (=> b!1266247 (= e!721224 call!62459)))

(declare-fun b!1266248 () Bool)

(declare-fun e!721225 () List!28499)

(assert (=> b!1266248 (= e!721225 call!62460)))

(declare-fun b!1266249 () Bool)

(assert (=> b!1266249 (= e!721224 e!721225)))

(assert (=> b!1266249 (= c!123370 (and (is-Cons!28495 (t!42027 (t!42027 l!706))) (= (_1!10676 (h!29704 (t!42027 (t!42027 l!706)))) key1!31)))))

(declare-fun b!1266250 () Bool)

(assert (=> b!1266250 (= c!123371 (and (is-Cons!28495 (t!42027 (t!42027 l!706))) (bvsgt (_1!10676 (h!29704 (t!42027 (t!42027 l!706)))) key1!31)))))

(assert (=> b!1266250 (= e!721225 e!721226)))

(declare-fun b!1266251 () Bool)

(assert (=> b!1266251 (= e!721228 (insertStrictlySorted!465 (t!42027 (t!42027 (t!42027 l!706))) key1!31 v1!26))))

(assert (= (and d!139089 c!123368) b!1266247))

(assert (= (and d!139089 (not c!123368)) b!1266249))

(assert (= (and b!1266249 c!123370) b!1266248))

(assert (= (and b!1266249 (not c!123370)) b!1266250))

(assert (= (and b!1266250 c!123371) b!1266242))

(assert (= (and b!1266250 (not c!123371)) b!1266246))

(assert (= (or b!1266242 b!1266246) bm!62456))

(assert (= (or b!1266248 bm!62456) bm!62457))

(assert (= (or b!1266247 bm!62457) bm!62455))

(assert (= (and bm!62455 c!123369) b!1266251))

(assert (= (and bm!62455 (not c!123369)) b!1266244))

(assert (= (and d!139089 res!843112) b!1266245))

(assert (= (and b!1266245 res!843111) b!1266243))

(declare-fun m!1166049 () Bool)

(assert (=> b!1266245 m!1166049))

(declare-fun m!1166051 () Bool)

(assert (=> bm!62455 m!1166051))

(declare-fun m!1166053 () Bool)

(assert (=> b!1266243 m!1166053))

(declare-fun m!1166055 () Bool)

(assert (=> d!139089 m!1166055))

(assert (=> d!139089 m!1165803))

(declare-fun m!1166057 () Bool)

(assert (=> b!1266251 m!1166057))

(assert (=> b!1266109 d!139089))

(assert (=> b!1266113 d!138951))

(declare-fun b!1266252 () Bool)

(declare-fun e!721229 () Bool)

(declare-fun tp!96428 () Bool)

(assert (=> b!1266252 (= e!721229 (and tp_is_empty!32527 tp!96428))))

(assert (=> b!1266138 (= tp!96422 e!721229)))

(assert (= (and b!1266138 (is-Cons!28495 (t!42027 (t!42027 l!706)))) b!1266252))

(push 1)

(assert (not b!1266241))

(assert (not b!1266235))

(assert (not d!139089))

(assert tp_is_empty!32527)

(assert (not b!1266222))

(assert (not b!1266239))

(assert (not b!1266209))

(assert (not b!1266211))

(assert (not b!1266205))

(assert (not b!1266213))

(assert (not d!139087))

(assert (not d!139047))

(assert (not b!1266243))

(assert (not d!139065))

(assert (not b!1266231))

(assert (not b!1266229))

(assert (not b!1266217))

(assert (not b!1266233))

(assert (not b!1266223))

(assert (not b!1266207))

(assert (not b!1266252))

(assert (not b!1266251))

(assert (not bm!62455))

(assert (not d!139069))

(assert (not b!1266237))

(assert (not b!1266218))

(assert (not d!139051))

(assert (not b!1266215))

(assert (not b!1266227))

(assert (not b!1266245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

