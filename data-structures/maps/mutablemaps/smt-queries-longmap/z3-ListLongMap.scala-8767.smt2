; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106542 () Bool)

(assert start!106542)

(declare-fun b!1265880 () Bool)

(declare-fun res!842938 () Bool)

(declare-fun e!720982 () Bool)

(assert (=> b!1265880 (=> (not res!842938) (not e!720982))))

(declare-datatypes ((B!1996 0))(
  ( (B!1997 (val!16333 Int)) )
))
(declare-datatypes ((tuple2!21334 0))(
  ( (tuple2!21335 (_1!10677 (_ BitVec 64)) (_2!10677 B!1996)) )
))
(declare-datatypes ((List!28500 0))(
  ( (Nil!28497) (Cons!28496 (h!29705 tuple2!21334) (t!42028 List!28500)) )
))
(declare-fun l!706 () List!28500)

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!657 (List!28500 (_ BitVec 64)) Bool)

(assert (=> b!1265880 (= res!842938 (not (containsKey!657 l!706 key1!31)))))

(declare-fun b!1265881 () Bool)

(declare-fun v1!26 () B!1996)

(declare-fun removeStrictlySorted!157 (List!28500 (_ BitVec 64)) List!28500)

(declare-fun insertStrictlySorted!466 (List!28500 (_ BitVec 64) B!1996) List!28500)

(assert (=> b!1265881 (= e!720982 (not (= (removeStrictlySorted!157 (insertStrictlySorted!466 l!706 key1!31 v1!26) key1!31) l!706)))))

(assert (=> b!1265881 (= (removeStrictlySorted!157 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26) key1!31) (t!42028 l!706))))

(declare-datatypes ((Unit!42133 0))(
  ( (Unit!42134) )
))
(declare-fun lt!574013 () Unit!42133)

(declare-fun lemmaInsertStrictlySortedThenRemoveIsSame!11 (List!28500 (_ BitVec 64) B!1996) Unit!42133)

(assert (=> b!1265881 (= lt!574013 (lemmaInsertStrictlySortedThenRemoveIsSame!11 (t!42028 l!706) key1!31 v1!26))))

(declare-fun b!1265882 () Bool)

(declare-fun res!842940 () Bool)

(assert (=> b!1265882 (=> (not res!842940) (not e!720982))))

(get-info :version)

(assert (=> b!1265882 (= res!842940 ((_ is Cons!28496) l!706))))

(declare-fun res!842939 () Bool)

(assert (=> start!106542 (=> (not res!842939) (not e!720982))))

(declare-fun isStrictlySorted!796 (List!28500) Bool)

(assert (=> start!106542 (= res!842939 (isStrictlySorted!796 l!706))))

(assert (=> start!106542 e!720982))

(declare-fun e!720981 () Bool)

(assert (=> start!106542 e!720981))

(assert (=> start!106542 true))

(declare-fun tp_is_empty!32529 () Bool)

(assert (=> start!106542 tp_is_empty!32529))

(declare-fun b!1265883 () Bool)

(declare-fun tp!96414 () Bool)

(assert (=> b!1265883 (= e!720981 (and tp_is_empty!32529 tp!96414))))

(declare-fun b!1265884 () Bool)

(declare-fun res!842941 () Bool)

(assert (=> b!1265884 (=> (not res!842941) (not e!720982))))

(assert (=> b!1265884 (= res!842941 (isStrictlySorted!796 (t!42028 l!706)))))

(declare-fun b!1265885 () Bool)

(declare-fun res!842937 () Bool)

(assert (=> b!1265885 (=> (not res!842937) (not e!720982))))

(assert (=> b!1265885 (= res!842937 (not (containsKey!657 (t!42028 l!706) key1!31)))))

(assert (= (and start!106542 res!842939) b!1265880))

(assert (= (and b!1265880 res!842938) b!1265882))

(assert (= (and b!1265882 res!842940) b!1265884))

(assert (= (and b!1265884 res!842941) b!1265885))

(assert (= (and b!1265885 res!842937) b!1265881))

(assert (= (and start!106542 ((_ is Cons!28496) l!706)) b!1265883))

(declare-fun m!1165767 () Bool)

(assert (=> b!1265884 m!1165767))

(declare-fun m!1165769 () Bool)

(assert (=> b!1265885 m!1165769))

(declare-fun m!1165771 () Bool)

(assert (=> b!1265881 m!1165771))

(declare-fun m!1165773 () Bool)

(assert (=> b!1265881 m!1165773))

(assert (=> b!1265881 m!1165771))

(declare-fun m!1165775 () Bool)

(assert (=> b!1265881 m!1165775))

(declare-fun m!1165777 () Bool)

(assert (=> b!1265881 m!1165777))

(assert (=> b!1265881 m!1165777))

(declare-fun m!1165779 () Bool)

(assert (=> b!1265881 m!1165779))

(declare-fun m!1165781 () Bool)

(assert (=> b!1265880 m!1165781))

(declare-fun m!1165783 () Bool)

(assert (=> start!106542 m!1165783))

(check-sat (not b!1265880) tp_is_empty!32529 (not b!1265881) (not start!106542) (not b!1265883) (not b!1265884) (not b!1265885))
(check-sat)
(get-model)

(declare-fun e!721019 () List!28500)

(declare-fun b!1265936 () Bool)

(assert (=> b!1265936 (= e!721019 (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26)))))

(declare-fun b!1265937 () Bool)

(declare-fun e!721018 () Bool)

(declare-fun lt!574019 () List!28500)

(assert (=> b!1265937 (= e!721018 (not (containsKey!657 lt!574019 key1!31)))))

(declare-fun d!138949 () Bool)

(assert (=> d!138949 e!721018))

(declare-fun res!842981 () Bool)

(assert (=> d!138949 (=> (not res!842981) (not e!721018))))

(assert (=> d!138949 (= res!842981 (isStrictlySorted!796 lt!574019))))

(assert (=> d!138949 (= lt!574019 e!721019)))

(declare-fun c!123288 () Bool)

(assert (=> d!138949 (= c!123288 (and ((_ is Cons!28496) (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26)) (= (_1!10677 (h!29705 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26))) key1!31)))))

(assert (=> d!138949 (isStrictlySorted!796 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26))))

(assert (=> d!138949 (= (removeStrictlySorted!157 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26) key1!31) lt!574019)))

(declare-fun b!1265938 () Bool)

(declare-fun e!721017 () List!28500)

(declare-fun $colon$colon!642 (List!28500 tuple2!21334) List!28500)

(assert (=> b!1265938 (= e!721017 ($colon$colon!642 (removeStrictlySorted!157 (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26)) key1!31) (h!29705 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26))))))

(declare-fun b!1265939 () Bool)

(assert (=> b!1265939 (= e!721019 e!721017)))

(declare-fun c!123289 () Bool)

(assert (=> b!1265939 (= c!123289 (and ((_ is Cons!28496) (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26)) (not (= (_1!10677 (h!29705 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26))) key1!31))))))

(declare-fun b!1265940 () Bool)

(assert (=> b!1265940 (= e!721017 Nil!28497)))

(assert (= (and d!138949 c!123288) b!1265936))

(assert (= (and d!138949 (not c!123288)) b!1265939))

(assert (= (and b!1265939 c!123289) b!1265938))

(assert (= (and b!1265939 (not c!123289)) b!1265940))

(assert (= (and d!138949 res!842981) b!1265937))

(declare-fun m!1165809 () Bool)

(assert (=> b!1265937 m!1165809))

(declare-fun m!1165811 () Bool)

(assert (=> d!138949 m!1165811))

(assert (=> d!138949 m!1165771))

(declare-fun m!1165813 () Bool)

(assert (=> d!138949 m!1165813))

(declare-fun m!1165815 () Bool)

(assert (=> b!1265938 m!1165815))

(assert (=> b!1265938 m!1165815))

(declare-fun m!1165817 () Bool)

(assert (=> b!1265938 m!1165817))

(assert (=> b!1265881 d!138949))

(declare-fun bm!62422 () Bool)

(declare-fun call!62425 () List!28500)

(declare-fun call!62426 () List!28500)

(assert (=> bm!62422 (= call!62425 call!62426)))

(declare-fun b!1265997 () Bool)

(declare-fun e!721052 () List!28500)

(assert (=> b!1265997 (= e!721052 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26))))

(declare-fun bm!62423 () Bool)

(declare-fun c!123313 () Bool)

(assert (=> bm!62423 (= call!62426 ($colon$colon!642 e!721052 (ite c!123313 (h!29705 l!706) (tuple2!21335 key1!31 v1!26))))))

(declare-fun c!123311 () Bool)

(assert (=> bm!62423 (= c!123311 c!123313)))

(declare-fun bm!62424 () Bool)

(declare-fun call!62427 () List!28500)

(assert (=> bm!62424 (= call!62427 call!62425)))

(declare-fun b!1265998 () Bool)

(declare-fun e!721053 () List!28500)

(assert (=> b!1265998 (= e!721053 call!62427)))

(declare-fun b!1265999 () Bool)

(declare-fun res!842997 () Bool)

(declare-fun e!721056 () Bool)

(assert (=> b!1265999 (=> (not res!842997) (not e!721056))))

(declare-fun lt!574030 () List!28500)

(assert (=> b!1265999 (= res!842997 (containsKey!657 lt!574030 key1!31))))

(declare-fun b!1266000 () Bool)

(assert (=> b!1266000 (= e!721053 call!62427)))

(declare-fun b!1266001 () Bool)

(declare-fun e!721055 () List!28500)

(assert (=> b!1266001 (= e!721055 call!62425)))

(declare-fun b!1266002 () Bool)

(declare-fun c!123312 () Bool)

(assert (=> b!1266002 (= c!123312 (and ((_ is Cons!28496) l!706) (bvsgt (_1!10677 (h!29705 l!706)) key1!31)))))

(assert (=> b!1266002 (= e!721055 e!721053)))

(declare-fun b!1266003 () Bool)

(declare-fun e!721054 () List!28500)

(assert (=> b!1266003 (= e!721054 call!62426)))

(declare-fun d!138963 () Bool)

(assert (=> d!138963 e!721056))

(declare-fun res!842996 () Bool)

(assert (=> d!138963 (=> (not res!842996) (not e!721056))))

(assert (=> d!138963 (= res!842996 (isStrictlySorted!796 lt!574030))))

(assert (=> d!138963 (= lt!574030 e!721054)))

(assert (=> d!138963 (= c!123313 (and ((_ is Cons!28496) l!706) (bvslt (_1!10677 (h!29705 l!706)) key1!31)))))

(assert (=> d!138963 (isStrictlySorted!796 l!706)))

(assert (=> d!138963 (= (insertStrictlySorted!466 l!706 key1!31 v1!26) lt!574030)))

(declare-fun b!1266004 () Bool)

(declare-fun c!123310 () Bool)

(assert (=> b!1266004 (= e!721052 (ite c!123310 (t!42028 l!706) (ite c!123312 (Cons!28496 (h!29705 l!706) (t!42028 l!706)) Nil!28497)))))

(declare-fun b!1266005 () Bool)

(declare-fun contains!7657 (List!28500 tuple2!21334) Bool)

(assert (=> b!1266005 (= e!721056 (contains!7657 lt!574030 (tuple2!21335 key1!31 v1!26)))))

(declare-fun b!1266006 () Bool)

(assert (=> b!1266006 (= e!721054 e!721055)))

(assert (=> b!1266006 (= c!123310 (and ((_ is Cons!28496) l!706) (= (_1!10677 (h!29705 l!706)) key1!31)))))

(assert (= (and d!138963 c!123313) b!1266003))

(assert (= (and d!138963 (not c!123313)) b!1266006))

(assert (= (and b!1266006 c!123310) b!1266001))

(assert (= (and b!1266006 (not c!123310)) b!1266002))

(assert (= (and b!1266002 c!123312) b!1265998))

(assert (= (and b!1266002 (not c!123312)) b!1266000))

(assert (= (or b!1265998 b!1266000) bm!62424))

(assert (= (or b!1266001 bm!62424) bm!62422))

(assert (= (or b!1266003 bm!62422) bm!62423))

(assert (= (and bm!62423 c!123311) b!1265997))

(assert (= (and bm!62423 (not c!123311)) b!1266004))

(assert (= (and d!138963 res!842996) b!1265999))

(assert (= (and b!1265999 res!842997) b!1266005))

(declare-fun m!1165839 () Bool)

(assert (=> b!1265999 m!1165839))

(declare-fun m!1165841 () Bool)

(assert (=> d!138963 m!1165841))

(assert (=> d!138963 m!1165783))

(declare-fun m!1165843 () Bool)

(assert (=> b!1266005 m!1165843))

(declare-fun m!1165845 () Bool)

(assert (=> bm!62423 m!1165845))

(assert (=> b!1265997 m!1165771))

(assert (=> b!1265881 d!138963))

(declare-fun e!721065 () List!28500)

(declare-fun b!1266017 () Bool)

(assert (=> b!1266017 (= e!721065 (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26)))))

(declare-fun b!1266018 () Bool)

(declare-fun e!721064 () Bool)

(declare-fun lt!574031 () List!28500)

(assert (=> b!1266018 (= e!721064 (not (containsKey!657 lt!574031 key1!31)))))

(declare-fun d!138971 () Bool)

(assert (=> d!138971 e!721064))

(declare-fun res!842998 () Bool)

(assert (=> d!138971 (=> (not res!842998) (not e!721064))))

(assert (=> d!138971 (= res!842998 (isStrictlySorted!796 lt!574031))))

(assert (=> d!138971 (= lt!574031 e!721065)))

(declare-fun c!123320 () Bool)

(assert (=> d!138971 (= c!123320 (and ((_ is Cons!28496) (insertStrictlySorted!466 l!706 key1!31 v1!26)) (= (_1!10677 (h!29705 (insertStrictlySorted!466 l!706 key1!31 v1!26))) key1!31)))))

(assert (=> d!138971 (isStrictlySorted!796 (insertStrictlySorted!466 l!706 key1!31 v1!26))))

(assert (=> d!138971 (= (removeStrictlySorted!157 (insertStrictlySorted!466 l!706 key1!31 v1!26) key1!31) lt!574031)))

(declare-fun e!721063 () List!28500)

(declare-fun b!1266019 () Bool)

(assert (=> b!1266019 (= e!721063 ($colon$colon!642 (removeStrictlySorted!157 (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26)) key1!31) (h!29705 (insertStrictlySorted!466 l!706 key1!31 v1!26))))))

(declare-fun b!1266020 () Bool)

(assert (=> b!1266020 (= e!721065 e!721063)))

(declare-fun c!123321 () Bool)

(assert (=> b!1266020 (= c!123321 (and ((_ is Cons!28496) (insertStrictlySorted!466 l!706 key1!31 v1!26)) (not (= (_1!10677 (h!29705 (insertStrictlySorted!466 l!706 key1!31 v1!26))) key1!31))))))

(declare-fun b!1266021 () Bool)

(assert (=> b!1266021 (= e!721063 Nil!28497)))

(assert (= (and d!138971 c!123320) b!1266017))

(assert (= (and d!138971 (not c!123320)) b!1266020))

(assert (= (and b!1266020 c!123321) b!1266019))

(assert (= (and b!1266020 (not c!123321)) b!1266021))

(assert (= (and d!138971 res!842998) b!1266018))

(declare-fun m!1165847 () Bool)

(assert (=> b!1266018 m!1165847))

(declare-fun m!1165849 () Bool)

(assert (=> d!138971 m!1165849))

(assert (=> d!138971 m!1165777))

(declare-fun m!1165851 () Bool)

(assert (=> d!138971 m!1165851))

(declare-fun m!1165853 () Bool)

(assert (=> b!1266019 m!1165853))

(assert (=> b!1266019 m!1165853))

(declare-fun m!1165855 () Bool)

(assert (=> b!1266019 m!1165855))

(assert (=> b!1265881 d!138971))

(declare-fun d!138973 () Bool)

(assert (=> d!138973 (= (removeStrictlySorted!157 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26) key1!31) (t!42028 l!706))))

(declare-fun lt!574036 () Unit!42133)

(declare-fun choose!1895 (List!28500 (_ BitVec 64) B!1996) Unit!42133)

(assert (=> d!138973 (= lt!574036 (choose!1895 (t!42028 l!706) key1!31 v1!26))))

(assert (=> d!138973 (isStrictlySorted!796 (t!42028 l!706))))

(assert (=> d!138973 (= (lemmaInsertStrictlySortedThenRemoveIsSame!11 (t!42028 l!706) key1!31 v1!26) lt!574036)))

(declare-fun bs!35827 () Bool)

(assert (= bs!35827 d!138973))

(assert (=> bs!35827 m!1165771))

(assert (=> bs!35827 m!1165771))

(assert (=> bs!35827 m!1165775))

(declare-fun m!1165857 () Bool)

(assert (=> bs!35827 m!1165857))

(assert (=> bs!35827 m!1165767))

(assert (=> b!1265881 d!138973))

(declare-fun bm!62437 () Bool)

(declare-fun call!62440 () List!28500)

(declare-fun call!62441 () List!28500)

(assert (=> bm!62437 (= call!62440 call!62441)))

(declare-fun b!1266050 () Bool)

(declare-fun e!721080 () List!28500)

(assert (=> b!1266050 (= e!721080 (insertStrictlySorted!466 (t!42028 (t!42028 l!706)) key1!31 v1!26))))

(declare-fun c!123335 () Bool)

(declare-fun bm!62438 () Bool)

(assert (=> bm!62438 (= call!62441 ($colon$colon!642 e!721080 (ite c!123335 (h!29705 (t!42028 l!706)) (tuple2!21335 key1!31 v1!26))))))

(declare-fun c!123333 () Bool)

(assert (=> bm!62438 (= c!123333 c!123335)))

(declare-fun bm!62439 () Bool)

(declare-fun call!62442 () List!28500)

(assert (=> bm!62439 (= call!62442 call!62440)))

(declare-fun b!1266051 () Bool)

(declare-fun e!721081 () List!28500)

(assert (=> b!1266051 (= e!721081 call!62442)))

(declare-fun b!1266052 () Bool)

(declare-fun res!843008 () Bool)

(declare-fun e!721084 () Bool)

(assert (=> b!1266052 (=> (not res!843008) (not e!721084))))

(declare-fun lt!574037 () List!28500)

(assert (=> b!1266052 (= res!843008 (containsKey!657 lt!574037 key1!31))))

(declare-fun b!1266053 () Bool)

(assert (=> b!1266053 (= e!721081 call!62442)))

(declare-fun b!1266054 () Bool)

(declare-fun e!721083 () List!28500)

(assert (=> b!1266054 (= e!721083 call!62440)))

(declare-fun b!1266055 () Bool)

(declare-fun c!123334 () Bool)

(assert (=> b!1266055 (= c!123334 (and ((_ is Cons!28496) (t!42028 l!706)) (bvsgt (_1!10677 (h!29705 (t!42028 l!706))) key1!31)))))

(assert (=> b!1266055 (= e!721083 e!721081)))

(declare-fun b!1266056 () Bool)

(declare-fun e!721082 () List!28500)

(assert (=> b!1266056 (= e!721082 call!62441)))

(declare-fun d!138975 () Bool)

(assert (=> d!138975 e!721084))

(declare-fun res!843007 () Bool)

(assert (=> d!138975 (=> (not res!843007) (not e!721084))))

(assert (=> d!138975 (= res!843007 (isStrictlySorted!796 lt!574037))))

(assert (=> d!138975 (= lt!574037 e!721082)))

(assert (=> d!138975 (= c!123335 (and ((_ is Cons!28496) (t!42028 l!706)) (bvslt (_1!10677 (h!29705 (t!42028 l!706))) key1!31)))))

(assert (=> d!138975 (isStrictlySorted!796 (t!42028 l!706))))

(assert (=> d!138975 (= (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26) lt!574037)))

(declare-fun b!1266057 () Bool)

(declare-fun c!123332 () Bool)

(assert (=> b!1266057 (= e!721080 (ite c!123332 (t!42028 (t!42028 l!706)) (ite c!123334 (Cons!28496 (h!29705 (t!42028 l!706)) (t!42028 (t!42028 l!706))) Nil!28497)))))

(declare-fun b!1266058 () Bool)

(assert (=> b!1266058 (= e!721084 (contains!7657 lt!574037 (tuple2!21335 key1!31 v1!26)))))

(declare-fun b!1266059 () Bool)

(assert (=> b!1266059 (= e!721082 e!721083)))

(assert (=> b!1266059 (= c!123332 (and ((_ is Cons!28496) (t!42028 l!706)) (= (_1!10677 (h!29705 (t!42028 l!706))) key1!31)))))

(assert (= (and d!138975 c!123335) b!1266056))

(assert (= (and d!138975 (not c!123335)) b!1266059))

(assert (= (and b!1266059 c!123332) b!1266054))

(assert (= (and b!1266059 (not c!123332)) b!1266055))

(assert (= (and b!1266055 c!123334) b!1266051))

(assert (= (and b!1266055 (not c!123334)) b!1266053))

(assert (= (or b!1266051 b!1266053) bm!62439))

(assert (= (or b!1266054 bm!62439) bm!62437))

(assert (= (or b!1266056 bm!62437) bm!62438))

(assert (= (and bm!62438 c!123333) b!1266050))

(assert (= (and bm!62438 (not c!123333)) b!1266057))

(assert (= (and d!138975 res!843007) b!1266052))

(assert (= (and b!1266052 res!843008) b!1266058))

(declare-fun m!1165859 () Bool)

(assert (=> b!1266052 m!1165859))

(declare-fun m!1165861 () Bool)

(assert (=> d!138975 m!1165861))

(assert (=> d!138975 m!1165767))

(declare-fun m!1165863 () Bool)

(assert (=> b!1266058 m!1165863))

(declare-fun m!1165865 () Bool)

(assert (=> bm!62438 m!1165865))

(declare-fun m!1165867 () Bool)

(assert (=> b!1266050 m!1165867))

(assert (=> b!1265881 d!138975))

(declare-fun d!138977 () Bool)

(declare-fun res!843019 () Bool)

(declare-fun e!721105 () Bool)

(assert (=> d!138977 (=> res!843019 e!721105)))

(assert (=> d!138977 (= res!843019 (or ((_ is Nil!28497) l!706) ((_ is Nil!28497) (t!42028 l!706))))))

(assert (=> d!138977 (= (isStrictlySorted!796 l!706) e!721105)))

(declare-fun b!1266094 () Bool)

(declare-fun e!721106 () Bool)

(assert (=> b!1266094 (= e!721105 e!721106)))

(declare-fun res!843020 () Bool)

(assert (=> b!1266094 (=> (not res!843020) (not e!721106))))

(assert (=> b!1266094 (= res!843020 (bvslt (_1!10677 (h!29705 l!706)) (_1!10677 (h!29705 (t!42028 l!706)))))))

(declare-fun b!1266095 () Bool)

(assert (=> b!1266095 (= e!721106 (isStrictlySorted!796 (t!42028 l!706)))))

(assert (= (and d!138977 (not res!843019)) b!1266094))

(assert (= (and b!1266094 res!843020) b!1266095))

(assert (=> b!1266095 m!1165767))

(assert (=> start!106542 d!138977))

(declare-fun d!138987 () Bool)

(declare-fun res!843027 () Bool)

(declare-fun e!721116 () Bool)

(assert (=> d!138987 (=> res!843027 e!721116)))

(assert (=> d!138987 (= res!843027 (and ((_ is Cons!28496) l!706) (= (_1!10677 (h!29705 l!706)) key1!31)))))

(assert (=> d!138987 (= (containsKey!657 l!706 key1!31) e!721116)))

(declare-fun b!1266110 () Bool)

(declare-fun e!721117 () Bool)

(assert (=> b!1266110 (= e!721116 e!721117)))

(declare-fun res!843028 () Bool)

(assert (=> b!1266110 (=> (not res!843028) (not e!721117))))

(assert (=> b!1266110 (= res!843028 (and (or (not ((_ is Cons!28496) l!706)) (bvsle (_1!10677 (h!29705 l!706)) key1!31)) ((_ is Cons!28496) l!706) (bvslt (_1!10677 (h!29705 l!706)) key1!31)))))

(declare-fun b!1266111 () Bool)

(assert (=> b!1266111 (= e!721117 (containsKey!657 (t!42028 l!706) key1!31))))

(assert (= (and d!138987 (not res!843027)) b!1266110))

(assert (= (and b!1266110 res!843028) b!1266111))

(assert (=> b!1266111 m!1165769))

(assert (=> b!1265880 d!138987))

(declare-fun d!138993 () Bool)

(declare-fun res!843031 () Bool)

(declare-fun e!721120 () Bool)

(assert (=> d!138993 (=> res!843031 e!721120)))

(assert (=> d!138993 (= res!843031 (and ((_ is Cons!28496) (t!42028 l!706)) (= (_1!10677 (h!29705 (t!42028 l!706))) key1!31)))))

(assert (=> d!138993 (= (containsKey!657 (t!42028 l!706) key1!31) e!721120)))

(declare-fun b!1266114 () Bool)

(declare-fun e!721121 () Bool)

(assert (=> b!1266114 (= e!721120 e!721121)))

(declare-fun res!843032 () Bool)

(assert (=> b!1266114 (=> (not res!843032) (not e!721121))))

(assert (=> b!1266114 (= res!843032 (and (or (not ((_ is Cons!28496) (t!42028 l!706))) (bvsle (_1!10677 (h!29705 (t!42028 l!706))) key1!31)) ((_ is Cons!28496) (t!42028 l!706)) (bvslt (_1!10677 (h!29705 (t!42028 l!706))) key1!31)))))

(declare-fun b!1266115 () Bool)

(assert (=> b!1266115 (= e!721121 (containsKey!657 (t!42028 (t!42028 l!706)) key1!31))))

(assert (= (and d!138993 (not res!843031)) b!1266114))

(assert (= (and b!1266114 res!843032) b!1266115))

(declare-fun m!1165919 () Bool)

(assert (=> b!1266115 m!1165919))

(assert (=> b!1265885 d!138993))

(declare-fun d!138999 () Bool)

(declare-fun res!843037 () Bool)

(declare-fun e!721129 () Bool)

(assert (=> d!138999 (=> res!843037 e!721129)))

(assert (=> d!138999 (= res!843037 (or ((_ is Nil!28497) (t!42028 l!706)) ((_ is Nil!28497) (t!42028 (t!42028 l!706)))))))

(assert (=> d!138999 (= (isStrictlySorted!796 (t!42028 l!706)) e!721129)))

(declare-fun b!1266128 () Bool)

(declare-fun e!721130 () Bool)

(assert (=> b!1266128 (= e!721129 e!721130)))

(declare-fun res!843038 () Bool)

(assert (=> b!1266128 (=> (not res!843038) (not e!721130))))

(assert (=> b!1266128 (= res!843038 (bvslt (_1!10677 (h!29705 (t!42028 l!706))) (_1!10677 (h!29705 (t!42028 (t!42028 l!706))))))))

(declare-fun b!1266129 () Bool)

(assert (=> b!1266129 (= e!721130 (isStrictlySorted!796 (t!42028 (t!42028 l!706))))))

(assert (= (and d!138999 (not res!843037)) b!1266128))

(assert (= (and b!1266128 res!843038) b!1266129))

(declare-fun m!1165921 () Bool)

(assert (=> b!1266129 m!1165921))

(assert (=> b!1265884 d!138999))

(declare-fun b!1266139 () Bool)

(declare-fun e!721136 () Bool)

(declare-fun tp!96423 () Bool)

(assert (=> b!1266139 (= e!721136 (and tp_is_empty!32529 tp!96423))))

(assert (=> b!1265883 (= tp!96414 e!721136)))

(assert (= (and b!1265883 ((_ is Cons!28496) (t!42028 l!706))) b!1266139))

(check-sat (not b!1265938) (not bm!62438) (not b!1266019) (not b!1266095) (not b!1266018) (not b!1266005) (not d!138963) (not b!1266052) (not b!1266115) (not b!1265997) (not b!1266058) (not b!1265999) (not b!1266050) (not d!138971) (not b!1265937) (not b!1266129) (not bm!62423) tp_is_empty!32529 (not d!138975) (not d!138973) (not d!138949) (not b!1266111) (not b!1266139))
(check-sat)
(get-model)

(declare-fun d!139003 () Bool)

(assert (=> d!139003 (= ($colon$colon!642 (removeStrictlySorted!157 (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26)) key1!31) (h!29705 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26))) (Cons!28496 (h!29705 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26)) (removeStrictlySorted!157 (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26)) key1!31)))))

(assert (=> b!1265938 d!139003))

(declare-fun e!721144 () List!28500)

(declare-fun b!1266147 () Bool)

(assert (=> b!1266147 (= e!721144 (t!42028 (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26))))))

(declare-fun b!1266148 () Bool)

(declare-fun e!721143 () Bool)

(declare-fun lt!574050 () List!28500)

(assert (=> b!1266148 (= e!721143 (not (containsKey!657 lt!574050 key1!31)))))

(declare-fun d!139005 () Bool)

(assert (=> d!139005 e!721143))

(declare-fun res!843041 () Bool)

(assert (=> d!139005 (=> (not res!843041) (not e!721143))))

(assert (=> d!139005 (= res!843041 (isStrictlySorted!796 lt!574050))))

(assert (=> d!139005 (= lt!574050 e!721144)))

(declare-fun c!123356 () Bool)

(assert (=> d!139005 (= c!123356 (and ((_ is Cons!28496) (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26))) (= (_1!10677 (h!29705 (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26)))) key1!31)))))

(assert (=> d!139005 (isStrictlySorted!796 (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26)))))

(assert (=> d!139005 (= (removeStrictlySorted!157 (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26)) key1!31) lt!574050)))

(declare-fun b!1266149 () Bool)

(declare-fun e!721142 () List!28500)

(assert (=> b!1266149 (= e!721142 ($colon$colon!642 (removeStrictlySorted!157 (t!42028 (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26))) key1!31) (h!29705 (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26)))))))

(declare-fun b!1266150 () Bool)

(assert (=> b!1266150 (= e!721144 e!721142)))

(declare-fun c!123357 () Bool)

(assert (=> b!1266150 (= c!123357 (and ((_ is Cons!28496) (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26))) (not (= (_1!10677 (h!29705 (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26)))) key1!31))))))

(declare-fun b!1266151 () Bool)

(assert (=> b!1266151 (= e!721142 Nil!28497)))

(assert (= (and d!139005 c!123356) b!1266147))

(assert (= (and d!139005 (not c!123356)) b!1266150))

(assert (= (and b!1266150 c!123357) b!1266149))

(assert (= (and b!1266150 (not c!123357)) b!1266151))

(assert (= (and d!139005 res!843041) b!1266148))

(declare-fun m!1165935 () Bool)

(assert (=> b!1266148 m!1165935))

(declare-fun m!1165937 () Bool)

(assert (=> d!139005 m!1165937))

(declare-fun m!1165939 () Bool)

(assert (=> d!139005 m!1165939))

(declare-fun m!1165941 () Bool)

(assert (=> b!1266149 m!1165941))

(assert (=> b!1266149 m!1165941))

(declare-fun m!1165943 () Bool)

(assert (=> b!1266149 m!1165943))

(assert (=> b!1265938 d!139005))

(declare-fun d!139007 () Bool)

(declare-fun res!843042 () Bool)

(declare-fun e!721145 () Bool)

(assert (=> d!139007 (=> res!843042 e!721145)))

(assert (=> d!139007 (= res!843042 (and ((_ is Cons!28496) lt!574031) (= (_1!10677 (h!29705 lt!574031)) key1!31)))))

(assert (=> d!139007 (= (containsKey!657 lt!574031 key1!31) e!721145)))

(declare-fun b!1266152 () Bool)

(declare-fun e!721146 () Bool)

(assert (=> b!1266152 (= e!721145 e!721146)))

(declare-fun res!843043 () Bool)

(assert (=> b!1266152 (=> (not res!843043) (not e!721146))))

(assert (=> b!1266152 (= res!843043 (and (or (not ((_ is Cons!28496) lt!574031)) (bvsle (_1!10677 (h!29705 lt!574031)) key1!31)) ((_ is Cons!28496) lt!574031) (bvslt (_1!10677 (h!29705 lt!574031)) key1!31)))))

(declare-fun b!1266153 () Bool)

(assert (=> b!1266153 (= e!721146 (containsKey!657 (t!42028 lt!574031) key1!31))))

(assert (= (and d!139007 (not res!843042)) b!1266152))

(assert (= (and b!1266152 res!843043) b!1266153))

(declare-fun m!1165945 () Bool)

(assert (=> b!1266153 m!1165945))

(assert (=> b!1266018 d!139007))

(declare-fun d!139009 () Bool)

(declare-fun res!843044 () Bool)

(declare-fun e!721147 () Bool)

(assert (=> d!139009 (=> res!843044 e!721147)))

(assert (=> d!139009 (= res!843044 (and ((_ is Cons!28496) lt!574019) (= (_1!10677 (h!29705 lt!574019)) key1!31)))))

(assert (=> d!139009 (= (containsKey!657 lt!574019 key1!31) e!721147)))

(declare-fun b!1266154 () Bool)

(declare-fun e!721148 () Bool)

(assert (=> b!1266154 (= e!721147 e!721148)))

(declare-fun res!843045 () Bool)

(assert (=> b!1266154 (=> (not res!843045) (not e!721148))))

(assert (=> b!1266154 (= res!843045 (and (or (not ((_ is Cons!28496) lt!574019)) (bvsle (_1!10677 (h!29705 lt!574019)) key1!31)) ((_ is Cons!28496) lt!574019) (bvslt (_1!10677 (h!29705 lt!574019)) key1!31)))))

(declare-fun b!1266155 () Bool)

(assert (=> b!1266155 (= e!721148 (containsKey!657 (t!42028 lt!574019) key1!31))))

(assert (= (and d!139009 (not res!843044)) b!1266154))

(assert (= (and b!1266154 res!843045) b!1266155))

(declare-fun m!1165947 () Bool)

(assert (=> b!1266155 m!1165947))

(assert (=> b!1265937 d!139009))

(declare-fun d!139011 () Bool)

(assert (=> d!139011 (= ($colon$colon!642 e!721052 (ite c!123313 (h!29705 l!706) (tuple2!21335 key1!31 v1!26))) (Cons!28496 (ite c!123313 (h!29705 l!706) (tuple2!21335 key1!31 v1!26)) e!721052))))

(assert (=> bm!62423 d!139011))

(declare-fun d!139013 () Bool)

(declare-fun res!843046 () Bool)

(declare-fun e!721149 () Bool)

(assert (=> d!139013 (=> res!843046 e!721149)))

(assert (=> d!139013 (= res!843046 (or ((_ is Nil!28497) (t!42028 (t!42028 l!706))) ((_ is Nil!28497) (t!42028 (t!42028 (t!42028 l!706))))))))

(assert (=> d!139013 (= (isStrictlySorted!796 (t!42028 (t!42028 l!706))) e!721149)))

(declare-fun b!1266156 () Bool)

(declare-fun e!721150 () Bool)

(assert (=> b!1266156 (= e!721149 e!721150)))

(declare-fun res!843047 () Bool)

(assert (=> b!1266156 (=> (not res!843047) (not e!721150))))

(assert (=> b!1266156 (= res!843047 (bvslt (_1!10677 (h!29705 (t!42028 (t!42028 l!706)))) (_1!10677 (h!29705 (t!42028 (t!42028 (t!42028 l!706)))))))))

(declare-fun b!1266157 () Bool)

(assert (=> b!1266157 (= e!721150 (isStrictlySorted!796 (t!42028 (t!42028 (t!42028 l!706)))))))

(assert (= (and d!139013 (not res!843046)) b!1266156))

(assert (= (and b!1266156 res!843047) b!1266157))

(declare-fun m!1165949 () Bool)

(assert (=> b!1266157 m!1165949))

(assert (=> b!1266129 d!139013))

(declare-fun d!139015 () Bool)

(declare-fun res!843048 () Bool)

(declare-fun e!721151 () Bool)

(assert (=> d!139015 (=> res!843048 e!721151)))

(assert (=> d!139015 (= res!843048 (or ((_ is Nil!28497) lt!574031) ((_ is Nil!28497) (t!42028 lt!574031))))))

(assert (=> d!139015 (= (isStrictlySorted!796 lt!574031) e!721151)))

(declare-fun b!1266158 () Bool)

(declare-fun e!721152 () Bool)

(assert (=> b!1266158 (= e!721151 e!721152)))

(declare-fun res!843049 () Bool)

(assert (=> b!1266158 (=> (not res!843049) (not e!721152))))

(assert (=> b!1266158 (= res!843049 (bvslt (_1!10677 (h!29705 lt!574031)) (_1!10677 (h!29705 (t!42028 lt!574031)))))))

(declare-fun b!1266159 () Bool)

(assert (=> b!1266159 (= e!721152 (isStrictlySorted!796 (t!42028 lt!574031)))))

(assert (= (and d!139015 (not res!843048)) b!1266158))

(assert (= (and b!1266158 res!843049) b!1266159))

(declare-fun m!1165951 () Bool)

(assert (=> b!1266159 m!1165951))

(assert (=> d!138971 d!139015))

(declare-fun d!139017 () Bool)

(declare-fun res!843050 () Bool)

(declare-fun e!721153 () Bool)

(assert (=> d!139017 (=> res!843050 e!721153)))

(assert (=> d!139017 (= res!843050 (or ((_ is Nil!28497) (insertStrictlySorted!466 l!706 key1!31 v1!26)) ((_ is Nil!28497) (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26)))))))

(assert (=> d!139017 (= (isStrictlySorted!796 (insertStrictlySorted!466 l!706 key1!31 v1!26)) e!721153)))

(declare-fun b!1266160 () Bool)

(declare-fun e!721154 () Bool)

(assert (=> b!1266160 (= e!721153 e!721154)))

(declare-fun res!843051 () Bool)

(assert (=> b!1266160 (=> (not res!843051) (not e!721154))))

(assert (=> b!1266160 (= res!843051 (bvslt (_1!10677 (h!29705 (insertStrictlySorted!466 l!706 key1!31 v1!26))) (_1!10677 (h!29705 (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26))))))))

(declare-fun b!1266161 () Bool)

(assert (=> b!1266161 (= e!721154 (isStrictlySorted!796 (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26))))))

(assert (= (and d!139017 (not res!843050)) b!1266160))

(assert (= (and b!1266160 res!843051) b!1266161))

(declare-fun m!1165953 () Bool)

(assert (=> b!1266161 m!1165953))

(assert (=> d!138971 d!139017))

(declare-fun d!139019 () Bool)

(declare-fun res!843052 () Bool)

(declare-fun e!721155 () Bool)

(assert (=> d!139019 (=> res!843052 e!721155)))

(assert (=> d!139019 (= res!843052 (and ((_ is Cons!28496) lt!574030) (= (_1!10677 (h!29705 lt!574030)) key1!31)))))

(assert (=> d!139019 (= (containsKey!657 lt!574030 key1!31) e!721155)))

(declare-fun b!1266162 () Bool)

(declare-fun e!721156 () Bool)

(assert (=> b!1266162 (= e!721155 e!721156)))

(declare-fun res!843053 () Bool)

(assert (=> b!1266162 (=> (not res!843053) (not e!721156))))

(assert (=> b!1266162 (= res!843053 (and (or (not ((_ is Cons!28496) lt!574030)) (bvsle (_1!10677 (h!29705 lt!574030)) key1!31)) ((_ is Cons!28496) lt!574030) (bvslt (_1!10677 (h!29705 lt!574030)) key1!31)))))

(declare-fun b!1266163 () Bool)

(assert (=> b!1266163 (= e!721156 (containsKey!657 (t!42028 lt!574030) key1!31))))

(assert (= (and d!139019 (not res!843052)) b!1266162))

(assert (= (and b!1266162 res!843053) b!1266163))

(declare-fun m!1165955 () Bool)

(assert (=> b!1266163 m!1165955))

(assert (=> b!1265999 d!139019))

(declare-fun d!139021 () Bool)

(assert (=> d!139021 (= ($colon$colon!642 (removeStrictlySorted!157 (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26)) key1!31) (h!29705 (insertStrictlySorted!466 l!706 key1!31 v1!26))) (Cons!28496 (h!29705 (insertStrictlySorted!466 l!706 key1!31 v1!26)) (removeStrictlySorted!157 (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26)) key1!31)))))

(assert (=> b!1266019 d!139021))

(declare-fun b!1266164 () Bool)

(declare-fun e!721159 () List!28500)

(assert (=> b!1266164 (= e!721159 (t!42028 (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26))))))

(declare-fun b!1266165 () Bool)

(declare-fun e!721158 () Bool)

(declare-fun lt!574051 () List!28500)

(assert (=> b!1266165 (= e!721158 (not (containsKey!657 lt!574051 key1!31)))))

(declare-fun d!139023 () Bool)

(assert (=> d!139023 e!721158))

(declare-fun res!843054 () Bool)

(assert (=> d!139023 (=> (not res!843054) (not e!721158))))

(assert (=> d!139023 (= res!843054 (isStrictlySorted!796 lt!574051))))

(assert (=> d!139023 (= lt!574051 e!721159)))

(declare-fun c!123358 () Bool)

(assert (=> d!139023 (= c!123358 (and ((_ is Cons!28496) (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26))) (= (_1!10677 (h!29705 (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26)))) key1!31)))))

(assert (=> d!139023 (isStrictlySorted!796 (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26)))))

(assert (=> d!139023 (= (removeStrictlySorted!157 (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26)) key1!31) lt!574051)))

(declare-fun e!721157 () List!28500)

(declare-fun b!1266166 () Bool)

(assert (=> b!1266166 (= e!721157 ($colon$colon!642 (removeStrictlySorted!157 (t!42028 (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26))) key1!31) (h!29705 (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26)))))))

(declare-fun b!1266167 () Bool)

(assert (=> b!1266167 (= e!721159 e!721157)))

(declare-fun c!123359 () Bool)

(assert (=> b!1266167 (= c!123359 (and ((_ is Cons!28496) (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26))) (not (= (_1!10677 (h!29705 (t!42028 (insertStrictlySorted!466 l!706 key1!31 v1!26)))) key1!31))))))

(declare-fun b!1266168 () Bool)

(assert (=> b!1266168 (= e!721157 Nil!28497)))

(assert (= (and d!139023 c!123358) b!1266164))

(assert (= (and d!139023 (not c!123358)) b!1266167))

(assert (= (and b!1266167 c!123359) b!1266166))

(assert (= (and b!1266167 (not c!123359)) b!1266168))

(assert (= (and d!139023 res!843054) b!1266165))

(declare-fun m!1165957 () Bool)

(assert (=> b!1266165 m!1165957))

(declare-fun m!1165959 () Bool)

(assert (=> d!139023 m!1165959))

(assert (=> d!139023 m!1165953))

(declare-fun m!1165961 () Bool)

(assert (=> b!1266166 m!1165961))

(assert (=> b!1266166 m!1165961))

(declare-fun m!1165963 () Bool)

(assert (=> b!1266166 m!1165963))

(assert (=> b!1266019 d!139023))

(assert (=> b!1266111 d!138993))

(declare-fun d!139025 () Bool)

(declare-fun res!843055 () Bool)

(declare-fun e!721160 () Bool)

(assert (=> d!139025 (=> res!843055 e!721160)))

(assert (=> d!139025 (= res!843055 (and ((_ is Cons!28496) (t!42028 (t!42028 l!706))) (= (_1!10677 (h!29705 (t!42028 (t!42028 l!706)))) key1!31)))))

(assert (=> d!139025 (= (containsKey!657 (t!42028 (t!42028 l!706)) key1!31) e!721160)))

(declare-fun b!1266169 () Bool)

(declare-fun e!721161 () Bool)

(assert (=> b!1266169 (= e!721160 e!721161)))

(declare-fun res!843056 () Bool)

(assert (=> b!1266169 (=> (not res!843056) (not e!721161))))

(assert (=> b!1266169 (= res!843056 (and (or (not ((_ is Cons!28496) (t!42028 (t!42028 l!706)))) (bvsle (_1!10677 (h!29705 (t!42028 (t!42028 l!706)))) key1!31)) ((_ is Cons!28496) (t!42028 (t!42028 l!706))) (bvslt (_1!10677 (h!29705 (t!42028 (t!42028 l!706)))) key1!31)))))

(declare-fun b!1266170 () Bool)

(assert (=> b!1266170 (= e!721161 (containsKey!657 (t!42028 (t!42028 (t!42028 l!706))) key1!31))))

(assert (= (and d!139025 (not res!843055)) b!1266169))

(assert (= (and b!1266169 res!843056) b!1266170))

(declare-fun m!1165965 () Bool)

(assert (=> b!1266170 m!1165965))

(assert (=> b!1266115 d!139025))

(declare-fun d!139027 () Bool)

(declare-fun res!843057 () Bool)

(declare-fun e!721162 () Bool)

(assert (=> d!139027 (=> res!843057 e!721162)))

(assert (=> d!139027 (= res!843057 (or ((_ is Nil!28497) lt!574019) ((_ is Nil!28497) (t!42028 lt!574019))))))

(assert (=> d!139027 (= (isStrictlySorted!796 lt!574019) e!721162)))

(declare-fun b!1266171 () Bool)

(declare-fun e!721163 () Bool)

(assert (=> b!1266171 (= e!721162 e!721163)))

(declare-fun res!843058 () Bool)

(assert (=> b!1266171 (=> (not res!843058) (not e!721163))))

(assert (=> b!1266171 (= res!843058 (bvslt (_1!10677 (h!29705 lt!574019)) (_1!10677 (h!29705 (t!42028 lt!574019)))))))

(declare-fun b!1266172 () Bool)

(assert (=> b!1266172 (= e!721163 (isStrictlySorted!796 (t!42028 lt!574019)))))

(assert (= (and d!139027 (not res!843057)) b!1266171))

(assert (= (and b!1266171 res!843058) b!1266172))

(declare-fun m!1165967 () Bool)

(assert (=> b!1266172 m!1165967))

(assert (=> d!138949 d!139027))

(declare-fun d!139029 () Bool)

(declare-fun res!843059 () Bool)

(declare-fun e!721164 () Bool)

(assert (=> d!139029 (=> res!843059 e!721164)))

(assert (=> d!139029 (= res!843059 (or ((_ is Nil!28497) (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26)) ((_ is Nil!28497) (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26)))))))

(assert (=> d!139029 (= (isStrictlySorted!796 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26)) e!721164)))

(declare-fun b!1266173 () Bool)

(declare-fun e!721165 () Bool)

(assert (=> b!1266173 (= e!721164 e!721165)))

(declare-fun res!843060 () Bool)

(assert (=> b!1266173 (=> (not res!843060) (not e!721165))))

(assert (=> b!1266173 (= res!843060 (bvslt (_1!10677 (h!29705 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26))) (_1!10677 (h!29705 (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26))))))))

(declare-fun b!1266174 () Bool)

(assert (=> b!1266174 (= e!721165 (isStrictlySorted!796 (t!42028 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26))))))

(assert (= (and d!139029 (not res!843059)) b!1266173))

(assert (= (and b!1266173 res!843060) b!1266174))

(assert (=> b!1266174 m!1165939))

(assert (=> d!138949 d!139029))

(declare-fun d!139031 () Bool)

(assert (=> d!139031 (= ($colon$colon!642 e!721080 (ite c!123335 (h!29705 (t!42028 l!706)) (tuple2!21335 key1!31 v1!26))) (Cons!28496 (ite c!123335 (h!29705 (t!42028 l!706)) (tuple2!21335 key1!31 v1!26)) e!721080))))

(assert (=> bm!62438 d!139031))

(declare-fun bm!62452 () Bool)

(declare-fun call!62455 () List!28500)

(declare-fun call!62456 () List!28500)

(assert (=> bm!62452 (= call!62455 call!62456)))

(declare-fun e!721166 () List!28500)

(declare-fun b!1266175 () Bool)

(assert (=> b!1266175 (= e!721166 (insertStrictlySorted!466 (t!42028 (t!42028 (t!42028 l!706))) key1!31 v1!26))))

(declare-fun c!123363 () Bool)

(declare-fun bm!62453 () Bool)

(assert (=> bm!62453 (= call!62456 ($colon$colon!642 e!721166 (ite c!123363 (h!29705 (t!42028 (t!42028 l!706))) (tuple2!21335 key1!31 v1!26))))))

(declare-fun c!123361 () Bool)

(assert (=> bm!62453 (= c!123361 c!123363)))

(declare-fun bm!62454 () Bool)

(declare-fun call!62457 () List!28500)

(assert (=> bm!62454 (= call!62457 call!62455)))

(declare-fun b!1266176 () Bool)

(declare-fun e!721167 () List!28500)

(assert (=> b!1266176 (= e!721167 call!62457)))

(declare-fun b!1266177 () Bool)

(declare-fun res!843062 () Bool)

(declare-fun e!721170 () Bool)

(assert (=> b!1266177 (=> (not res!843062) (not e!721170))))

(declare-fun lt!574052 () List!28500)

(assert (=> b!1266177 (= res!843062 (containsKey!657 lt!574052 key1!31))))

(declare-fun b!1266178 () Bool)

(assert (=> b!1266178 (= e!721167 call!62457)))

(declare-fun b!1266179 () Bool)

(declare-fun e!721169 () List!28500)

(assert (=> b!1266179 (= e!721169 call!62455)))

(declare-fun b!1266180 () Bool)

(declare-fun c!123362 () Bool)

(assert (=> b!1266180 (= c!123362 (and ((_ is Cons!28496) (t!42028 (t!42028 l!706))) (bvsgt (_1!10677 (h!29705 (t!42028 (t!42028 l!706)))) key1!31)))))

(assert (=> b!1266180 (= e!721169 e!721167)))

(declare-fun b!1266181 () Bool)

(declare-fun e!721168 () List!28500)

(assert (=> b!1266181 (= e!721168 call!62456)))

(declare-fun d!139033 () Bool)

(assert (=> d!139033 e!721170))

(declare-fun res!843061 () Bool)

(assert (=> d!139033 (=> (not res!843061) (not e!721170))))

(assert (=> d!139033 (= res!843061 (isStrictlySorted!796 lt!574052))))

(assert (=> d!139033 (= lt!574052 e!721168)))

(assert (=> d!139033 (= c!123363 (and ((_ is Cons!28496) (t!42028 (t!42028 l!706))) (bvslt (_1!10677 (h!29705 (t!42028 (t!42028 l!706)))) key1!31)))))

(assert (=> d!139033 (isStrictlySorted!796 (t!42028 (t!42028 l!706)))))

(assert (=> d!139033 (= (insertStrictlySorted!466 (t!42028 (t!42028 l!706)) key1!31 v1!26) lt!574052)))

(declare-fun b!1266182 () Bool)

(declare-fun c!123360 () Bool)

(assert (=> b!1266182 (= e!721166 (ite c!123360 (t!42028 (t!42028 (t!42028 l!706))) (ite c!123362 (Cons!28496 (h!29705 (t!42028 (t!42028 l!706))) (t!42028 (t!42028 (t!42028 l!706)))) Nil!28497)))))

(declare-fun b!1266183 () Bool)

(assert (=> b!1266183 (= e!721170 (contains!7657 lt!574052 (tuple2!21335 key1!31 v1!26)))))

(declare-fun b!1266184 () Bool)

(assert (=> b!1266184 (= e!721168 e!721169)))

(assert (=> b!1266184 (= c!123360 (and ((_ is Cons!28496) (t!42028 (t!42028 l!706))) (= (_1!10677 (h!29705 (t!42028 (t!42028 l!706)))) key1!31)))))

(assert (= (and d!139033 c!123363) b!1266181))

(assert (= (and d!139033 (not c!123363)) b!1266184))

(assert (= (and b!1266184 c!123360) b!1266179))

(assert (= (and b!1266184 (not c!123360)) b!1266180))

(assert (= (and b!1266180 c!123362) b!1266176))

(assert (= (and b!1266180 (not c!123362)) b!1266178))

(assert (= (or b!1266176 b!1266178) bm!62454))

(assert (= (or b!1266179 bm!62454) bm!62452))

(assert (= (or b!1266181 bm!62452) bm!62453))

(assert (= (and bm!62453 c!123361) b!1266175))

(assert (= (and bm!62453 (not c!123361)) b!1266182))

(assert (= (and d!139033 res!843061) b!1266177))

(assert (= (and b!1266177 res!843062) b!1266183))

(declare-fun m!1165969 () Bool)

(assert (=> b!1266177 m!1165969))

(declare-fun m!1165971 () Bool)

(assert (=> d!139033 m!1165971))

(assert (=> d!139033 m!1165921))

(declare-fun m!1165973 () Bool)

(assert (=> b!1266183 m!1165973))

(declare-fun m!1165975 () Bool)

(assert (=> bm!62453 m!1165975))

(declare-fun m!1165977 () Bool)

(assert (=> b!1266175 m!1165977))

(assert (=> b!1266050 d!139033))

(assert (=> b!1266095 d!138999))

(declare-fun lt!574055 () Bool)

(declare-fun d!139035 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!641 (List!28500) (InoxSet tuple2!21334))

(assert (=> d!139035 (= lt!574055 (select (content!641 lt!574037) (tuple2!21335 key1!31 v1!26)))))

(declare-fun e!721176 () Bool)

(assert (=> d!139035 (= lt!574055 e!721176)))

(declare-fun res!843068 () Bool)

(assert (=> d!139035 (=> (not res!843068) (not e!721176))))

(assert (=> d!139035 (= res!843068 ((_ is Cons!28496) lt!574037))))

(assert (=> d!139035 (= (contains!7657 lt!574037 (tuple2!21335 key1!31 v1!26)) lt!574055)))

(declare-fun b!1266189 () Bool)

(declare-fun e!721175 () Bool)

(assert (=> b!1266189 (= e!721176 e!721175)))

(declare-fun res!843067 () Bool)

(assert (=> b!1266189 (=> res!843067 e!721175)))

(assert (=> b!1266189 (= res!843067 (= (h!29705 lt!574037) (tuple2!21335 key1!31 v1!26)))))

(declare-fun b!1266190 () Bool)

(assert (=> b!1266190 (= e!721175 (contains!7657 (t!42028 lt!574037) (tuple2!21335 key1!31 v1!26)))))

(assert (= (and d!139035 res!843068) b!1266189))

(assert (= (and b!1266189 (not res!843067)) b!1266190))

(declare-fun m!1165979 () Bool)

(assert (=> d!139035 m!1165979))

(declare-fun m!1165981 () Bool)

(assert (=> d!139035 m!1165981))

(declare-fun m!1165983 () Bool)

(assert (=> b!1266190 m!1165983))

(assert (=> b!1266058 d!139035))

(declare-fun d!139037 () Bool)

(declare-fun res!843069 () Bool)

(declare-fun e!721177 () Bool)

(assert (=> d!139037 (=> res!843069 e!721177)))

(assert (=> d!139037 (= res!843069 (and ((_ is Cons!28496) lt!574037) (= (_1!10677 (h!29705 lt!574037)) key1!31)))))

(assert (=> d!139037 (= (containsKey!657 lt!574037 key1!31) e!721177)))

(declare-fun b!1266191 () Bool)

(declare-fun e!721178 () Bool)

(assert (=> b!1266191 (= e!721177 e!721178)))

(declare-fun res!843070 () Bool)

(assert (=> b!1266191 (=> (not res!843070) (not e!721178))))

(assert (=> b!1266191 (= res!843070 (and (or (not ((_ is Cons!28496) lt!574037)) (bvsle (_1!10677 (h!29705 lt!574037)) key1!31)) ((_ is Cons!28496) lt!574037) (bvslt (_1!10677 (h!29705 lt!574037)) key1!31)))))

(declare-fun b!1266192 () Bool)

(assert (=> b!1266192 (= e!721178 (containsKey!657 (t!42028 lt!574037) key1!31))))

(assert (= (and d!139037 (not res!843069)) b!1266191))

(assert (= (and b!1266191 res!843070) b!1266192))

(declare-fun m!1165985 () Bool)

(assert (=> b!1266192 m!1165985))

(assert (=> b!1266052 d!139037))

(assert (=> b!1265997 d!138975))

(declare-fun d!139039 () Bool)

(declare-fun res!843071 () Bool)

(declare-fun e!721179 () Bool)

(assert (=> d!139039 (=> res!843071 e!721179)))

(assert (=> d!139039 (= res!843071 (or ((_ is Nil!28497) lt!574037) ((_ is Nil!28497) (t!42028 lt!574037))))))

(assert (=> d!139039 (= (isStrictlySorted!796 lt!574037) e!721179)))

(declare-fun b!1266193 () Bool)

(declare-fun e!721180 () Bool)

(assert (=> b!1266193 (= e!721179 e!721180)))

(declare-fun res!843072 () Bool)

(assert (=> b!1266193 (=> (not res!843072) (not e!721180))))

(assert (=> b!1266193 (= res!843072 (bvslt (_1!10677 (h!29705 lt!574037)) (_1!10677 (h!29705 (t!42028 lt!574037)))))))

(declare-fun b!1266194 () Bool)

(assert (=> b!1266194 (= e!721180 (isStrictlySorted!796 (t!42028 lt!574037)))))

(assert (= (and d!139039 (not res!843071)) b!1266193))

(assert (= (and b!1266193 res!843072) b!1266194))

(declare-fun m!1165987 () Bool)

(assert (=> b!1266194 m!1165987))

(assert (=> d!138975 d!139039))

(assert (=> d!138975 d!138999))

(declare-fun lt!574056 () Bool)

(declare-fun d!139041 () Bool)

(assert (=> d!139041 (= lt!574056 (select (content!641 lt!574030) (tuple2!21335 key1!31 v1!26)))))

(declare-fun e!721182 () Bool)

(assert (=> d!139041 (= lt!574056 e!721182)))

(declare-fun res!843074 () Bool)

(assert (=> d!139041 (=> (not res!843074) (not e!721182))))

(assert (=> d!139041 (= res!843074 ((_ is Cons!28496) lt!574030))))

(assert (=> d!139041 (= (contains!7657 lt!574030 (tuple2!21335 key1!31 v1!26)) lt!574056)))

(declare-fun b!1266195 () Bool)

(declare-fun e!721181 () Bool)

(assert (=> b!1266195 (= e!721182 e!721181)))

(declare-fun res!843073 () Bool)

(assert (=> b!1266195 (=> res!843073 e!721181)))

(assert (=> b!1266195 (= res!843073 (= (h!29705 lt!574030) (tuple2!21335 key1!31 v1!26)))))

(declare-fun b!1266196 () Bool)

(assert (=> b!1266196 (= e!721181 (contains!7657 (t!42028 lt!574030) (tuple2!21335 key1!31 v1!26)))))

(assert (= (and d!139041 res!843074) b!1266195))

(assert (= (and b!1266195 (not res!843073)) b!1266196))

(declare-fun m!1165989 () Bool)

(assert (=> d!139041 m!1165989))

(declare-fun m!1165991 () Bool)

(assert (=> d!139041 m!1165991))

(declare-fun m!1165993 () Bool)

(assert (=> b!1266196 m!1165993))

(assert (=> b!1266005 d!139041))

(assert (=> d!138973 d!138949))

(assert (=> d!138973 d!138975))

(declare-fun d!139043 () Bool)

(assert (=> d!139043 (= (removeStrictlySorted!157 (insertStrictlySorted!466 (t!42028 l!706) key1!31 v1!26) key1!31) (t!42028 l!706))))

(assert (=> d!139043 true))

(declare-fun _$4!61 () Unit!42133)

(assert (=> d!139043 (= (choose!1895 (t!42028 l!706) key1!31 v1!26) _$4!61)))

(declare-fun bs!35830 () Bool)

(assert (= bs!35830 d!139043))

(assert (=> bs!35830 m!1165771))

(assert (=> bs!35830 m!1165771))

(assert (=> bs!35830 m!1165775))

(assert (=> d!138973 d!139043))

(assert (=> d!138973 d!138999))

(declare-fun d!139045 () Bool)

(declare-fun res!843075 () Bool)

(declare-fun e!721183 () Bool)

(assert (=> d!139045 (=> res!843075 e!721183)))

(assert (=> d!139045 (= res!843075 (or ((_ is Nil!28497) lt!574030) ((_ is Nil!28497) (t!42028 lt!574030))))))

(assert (=> d!139045 (= (isStrictlySorted!796 lt!574030) e!721183)))

(declare-fun b!1266197 () Bool)

(declare-fun e!721184 () Bool)

(assert (=> b!1266197 (= e!721183 e!721184)))

(declare-fun res!843076 () Bool)

(assert (=> b!1266197 (=> (not res!843076) (not e!721184))))

(assert (=> b!1266197 (= res!843076 (bvslt (_1!10677 (h!29705 lt!574030)) (_1!10677 (h!29705 (t!42028 lt!574030)))))))

(declare-fun b!1266198 () Bool)

(assert (=> b!1266198 (= e!721184 (isStrictlySorted!796 (t!42028 lt!574030)))))

(assert (= (and d!139045 (not res!843075)) b!1266197))

(assert (= (and b!1266197 res!843076) b!1266198))

(declare-fun m!1165995 () Bool)

(assert (=> b!1266198 m!1165995))

(assert (=> d!138963 d!139045))

(assert (=> d!138963 d!138977))

(declare-fun b!1266199 () Bool)

(declare-fun e!721185 () Bool)

(declare-fun tp!96427 () Bool)

(assert (=> b!1266199 (= e!721185 (and tp_is_empty!32529 tp!96427))))

(assert (=> b!1266139 (= tp!96423 e!721185)))

(assert (= (and b!1266139 ((_ is Cons!28496) (t!42028 (t!42028 l!706)))) b!1266199))

(check-sat (not b!1266153) (not d!139043) (not b!1266163) (not b!1266192) (not b!1266199) (not b!1266148) (not b!1266198) (not b!1266194) (not b!1266190) (not b!1266155) (not d!139041) (not b!1266161) (not b!1266149) tp_is_empty!32529 (not b!1266175) (not d!139035) (not d!139023) (not b!1266170) (not b!1266159) (not d!139033) (not b!1266165) (not b!1266177) (not b!1266172) (not d!139005) (not b!1266157) (not b!1266166) (not b!1266183) (not b!1266196) (not bm!62453) (not b!1266174))
(check-sat)
