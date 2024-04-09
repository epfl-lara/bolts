; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106544 () Bool)

(assert start!106544)

(declare-fun res!842952 () Bool)

(declare-fun e!720987 () Bool)

(assert (=> start!106544 (=> (not res!842952) (not e!720987))))

(declare-datatypes ((B!1998 0))(
  ( (B!1999 (val!16334 Int)) )
))
(declare-datatypes ((tuple2!21336 0))(
  ( (tuple2!21337 (_1!10678 (_ BitVec 64)) (_2!10678 B!1998)) )
))
(declare-datatypes ((List!28501 0))(
  ( (Nil!28498) (Cons!28497 (h!29706 tuple2!21336) (t!42029 List!28501)) )
))
(declare-fun l!706 () List!28501)

(declare-fun isStrictlySorted!797 (List!28501) Bool)

(assert (=> start!106544 (= res!842952 (isStrictlySorted!797 l!706))))

(assert (=> start!106544 e!720987))

(declare-fun e!720988 () Bool)

(assert (=> start!106544 e!720988))

(assert (=> start!106544 true))

(declare-fun tp_is_empty!32531 () Bool)

(assert (=> start!106544 tp_is_empty!32531))

(declare-fun b!1265898 () Bool)

(declare-fun res!842954 () Bool)

(assert (=> b!1265898 (=> (not res!842954) (not e!720987))))

(assert (=> b!1265898 (= res!842954 (is-Cons!28497 l!706))))

(declare-fun b!1265899 () Bool)

(declare-fun tp!96417 () Bool)

(assert (=> b!1265899 (= e!720988 (and tp_is_empty!32531 tp!96417))))

(declare-fun b!1265900 () Bool)

(declare-fun res!842953 () Bool)

(assert (=> b!1265900 (=> (not res!842953) (not e!720987))))

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!658 (List!28501 (_ BitVec 64)) Bool)

(assert (=> b!1265900 (= res!842953 (not (containsKey!658 (t!42029 l!706) key1!31)))))

(declare-fun b!1265901 () Bool)

(declare-fun res!842955 () Bool)

(assert (=> b!1265901 (=> (not res!842955) (not e!720987))))

(assert (=> b!1265901 (= res!842955 (isStrictlySorted!797 (t!42029 l!706)))))

(declare-fun b!1265902 () Bool)

(declare-fun v1!26 () B!1998)

(declare-fun removeStrictlySorted!158 (List!28501 (_ BitVec 64)) List!28501)

(declare-fun insertStrictlySorted!467 (List!28501 (_ BitVec 64) B!1998) List!28501)

(assert (=> b!1265902 (= e!720987 (not (= (removeStrictlySorted!158 (insertStrictlySorted!467 l!706 key1!31 v1!26) key1!31) l!706)))))

(assert (=> b!1265902 (= (removeStrictlySorted!158 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26) key1!31) (t!42029 l!706))))

(declare-datatypes ((Unit!42135 0))(
  ( (Unit!42136) )
))
(declare-fun lt!574016 () Unit!42135)

(declare-fun lemmaInsertStrictlySortedThenRemoveIsSame!12 (List!28501 (_ BitVec 64) B!1998) Unit!42135)

(assert (=> b!1265902 (= lt!574016 (lemmaInsertStrictlySortedThenRemoveIsSame!12 (t!42029 l!706) key1!31 v1!26))))

(declare-fun b!1265903 () Bool)

(declare-fun res!842956 () Bool)

(assert (=> b!1265903 (=> (not res!842956) (not e!720987))))

(assert (=> b!1265903 (= res!842956 (not (containsKey!658 l!706 key1!31)))))

(assert (= (and start!106544 res!842952) b!1265903))

(assert (= (and b!1265903 res!842956) b!1265898))

(assert (= (and b!1265898 res!842954) b!1265901))

(assert (= (and b!1265901 res!842955) b!1265900))

(assert (= (and b!1265900 res!842953) b!1265902))

(assert (= (and start!106544 (is-Cons!28497 l!706)) b!1265899))

(declare-fun m!1165785 () Bool)

(assert (=> b!1265900 m!1165785))

(declare-fun m!1165787 () Bool)

(assert (=> start!106544 m!1165787))

(declare-fun m!1165789 () Bool)

(assert (=> b!1265901 m!1165789))

(declare-fun m!1165791 () Bool)

(assert (=> b!1265903 m!1165791))

(declare-fun m!1165793 () Bool)

(assert (=> b!1265902 m!1165793))

(declare-fun m!1165795 () Bool)

(assert (=> b!1265902 m!1165795))

(assert (=> b!1265902 m!1165793))

(declare-fun m!1165797 () Bool)

(assert (=> b!1265902 m!1165797))

(declare-fun m!1165799 () Bool)

(assert (=> b!1265902 m!1165799))

(assert (=> b!1265902 m!1165799))

(declare-fun m!1165801 () Bool)

(assert (=> b!1265902 m!1165801))

(push 1)

(assert tp_is_empty!32531)

(assert (not b!1265899))

(assert (not b!1265900))

(assert (not b!1265902))

(assert (not b!1265901))

(assert (not b!1265903))

(assert (not start!106544))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138953 () Bool)

(declare-fun res!842967 () Bool)

(declare-fun e!721001 () Bool)

(assert (=> d!138953 (=> res!842967 e!721001)))

(assert (=> d!138953 (= res!842967 (and (is-Cons!28497 (t!42029 l!706)) (= (_1!10678 (h!29706 (t!42029 l!706))) key1!31)))))

(assert (=> d!138953 (= (containsKey!658 (t!42029 l!706) key1!31) e!721001)))

(declare-fun b!1265918 () Bool)

(declare-fun e!721002 () Bool)

(assert (=> b!1265918 (= e!721001 e!721002)))

(declare-fun res!842968 () Bool)

(assert (=> b!1265918 (=> (not res!842968) (not e!721002))))

(assert (=> b!1265918 (= res!842968 (and (or (not (is-Cons!28497 (t!42029 l!706))) (bvsle (_1!10678 (h!29706 (t!42029 l!706))) key1!31)) (is-Cons!28497 (t!42029 l!706)) (bvslt (_1!10678 (h!29706 (t!42029 l!706))) key1!31)))))

(declare-fun b!1265919 () Bool)

(assert (=> b!1265919 (= e!721002 (containsKey!658 (t!42029 (t!42029 l!706)) key1!31))))

(assert (= (and d!138953 (not res!842967)) b!1265918))

(assert (= (and b!1265918 res!842968) b!1265919))

(declare-fun m!1165805 () Bool)

(assert (=> b!1265919 m!1165805))

(assert (=> b!1265900 d!138953))

(declare-fun d!138957 () Bool)

(declare-fun res!842982 () Bool)

(declare-fun e!721020 () Bool)

(assert (=> d!138957 (=> res!842982 e!721020)))

(assert (=> d!138957 (= res!842982 (or (is-Nil!28498 l!706) (is-Nil!28498 (t!42029 l!706))))))

(assert (=> d!138957 (= (isStrictlySorted!797 l!706) e!721020)))

(declare-fun b!1265941 () Bool)

(declare-fun e!721021 () Bool)

(assert (=> b!1265941 (= e!721020 e!721021)))

(declare-fun res!842983 () Bool)

(assert (=> b!1265941 (=> (not res!842983) (not e!721021))))

(assert (=> b!1265941 (= res!842983 (bvslt (_1!10678 (h!29706 l!706)) (_1!10678 (h!29706 (t!42029 l!706)))))))

(declare-fun b!1265942 () Bool)

(assert (=> b!1265942 (= e!721021 (isStrictlySorted!797 (t!42029 l!706)))))

(assert (= (and d!138957 (not res!842982)) b!1265941))

(assert (= (and b!1265941 res!842983) b!1265942))

(assert (=> b!1265942 m!1165789))

(assert (=> start!106544 d!138957))

(declare-fun d!138961 () Bool)

(declare-fun res!842984 () Bool)

(declare-fun e!721022 () Bool)

(assert (=> d!138961 (=> res!842984 e!721022)))

(assert (=> d!138961 (= res!842984 (and (is-Cons!28497 l!706) (= (_1!10678 (h!29706 l!706)) key1!31)))))

(assert (=> d!138961 (= (containsKey!658 l!706 key1!31) e!721022)))

(declare-fun b!1265943 () Bool)

(declare-fun e!721023 () Bool)

(assert (=> b!1265943 (= e!721022 e!721023)))

(declare-fun res!842985 () Bool)

(assert (=> b!1265943 (=> (not res!842985) (not e!721023))))

(assert (=> b!1265943 (= res!842985 (and (or (not (is-Cons!28497 l!706)) (bvsle (_1!10678 (h!29706 l!706)) key1!31)) (is-Cons!28497 l!706) (bvslt (_1!10678 (h!29706 l!706)) key1!31)))))

(declare-fun b!1265944 () Bool)

(assert (=> b!1265944 (= e!721023 (containsKey!658 (t!42029 l!706) key1!31))))

(assert (= (and d!138961 (not res!842984)) b!1265943))

(assert (= (and b!1265943 res!842985) b!1265944))

(assert (=> b!1265944 m!1165785))

(assert (=> b!1265903 d!138961))

(declare-fun b!1265970 () Bool)

(declare-fun e!721039 () List!28501)

(declare-fun $colon$colon!644 (List!28501 tuple2!21336) List!28501)

(assert (=> b!1265970 (= e!721039 ($colon$colon!644 (removeStrictlySorted!158 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26)) key1!31) (h!29706 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26))))))

(declare-fun b!1265971 () Bool)

(declare-fun e!721041 () List!28501)

(assert (=> b!1265971 (= e!721041 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26)))))

(declare-fun b!1265973 () Bool)

(assert (=> b!1265973 (= e!721039 Nil!28498)))

(declare-fun b!1265974 () Bool)

(assert (=> b!1265974 (= e!721041 e!721039)))

(declare-fun c!123300 () Bool)

(assert (=> b!1265974 (= c!123300 (and (is-Cons!28497 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26)) (not (= (_1!10678 (h!29706 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26))) key1!31))))))

(declare-fun b!1265972 () Bool)

(declare-fun e!721040 () Bool)

(declare-fun lt!574025 () List!28501)

(assert (=> b!1265972 (= e!721040 (not (containsKey!658 lt!574025 key1!31)))))

(declare-fun d!138965 () Bool)

(assert (=> d!138965 e!721040))

(declare-fun res!842991 () Bool)

(assert (=> d!138965 (=> (not res!842991) (not e!721040))))

(assert (=> d!138965 (= res!842991 (isStrictlySorted!797 lt!574025))))

(assert (=> d!138965 (= lt!574025 e!721041)))

(declare-fun c!123301 () Bool)

(assert (=> d!138965 (= c!123301 (and (is-Cons!28497 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26)) (= (_1!10678 (h!29706 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26))) key1!31)))))

(assert (=> d!138965 (isStrictlySorted!797 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26))))

(assert (=> d!138965 (= (removeStrictlySorted!158 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26) key1!31) lt!574025)))

(assert (= (and d!138965 c!123301) b!1265971))

(assert (= (and d!138965 (not c!123301)) b!1265974))

(assert (= (and b!1265974 c!123300) b!1265970))

(assert (= (and b!1265974 (not c!123300)) b!1265973))

(assert (= (and d!138965 res!842991) b!1265972))

(declare-fun m!1165829 () Bool)

(assert (=> b!1265970 m!1165829))

(assert (=> b!1265970 m!1165829))

(declare-fun m!1165831 () Bool)

(assert (=> b!1265970 m!1165831))

(declare-fun m!1165833 () Bool)

(assert (=> b!1265972 m!1165833))

(declare-fun m!1165835 () Bool)

(assert (=> d!138965 m!1165835))

(assert (=> d!138965 m!1165793))

(declare-fun m!1165837 () Bool)

(assert (=> d!138965 m!1165837))

(assert (=> b!1265902 d!138965))

(declare-fun e!721097 () List!28501)

(declare-fun c!123343 () Bool)

(declare-fun b!1266075 () Bool)

(declare-fun c!123342 () Bool)

(assert (=> b!1266075 (= e!721097 (ite c!123343 (t!42029 l!706) (ite c!123342 (Cons!28497 (h!29706 l!706) (t!42029 l!706)) Nil!28498)))))

(declare-fun bm!62443 () Bool)

(declare-fun c!123345 () Bool)

(declare-fun call!62446 () List!28501)

(assert (=> bm!62443 (= call!62446 ($colon$colon!644 e!721097 (ite c!123345 (h!29706 l!706) (tuple2!21337 key1!31 v1!26))))))

(declare-fun c!123344 () Bool)

(assert (=> bm!62443 (= c!123344 c!123345)))

(declare-fun b!1266076 () Bool)

(declare-fun e!721095 () List!28501)

(declare-fun call!62447 () List!28501)

(assert (=> b!1266076 (= e!721095 call!62447)))

(declare-fun b!1266077 () Bool)

(declare-fun e!721096 () List!28501)

(declare-fun call!62448 () List!28501)

(assert (=> b!1266077 (= e!721096 call!62448)))

(declare-fun b!1266078 () Bool)

(assert (=> b!1266078 (= e!721095 call!62447)))

(declare-fun b!1266079 () Bool)

(assert (=> b!1266079 (= c!123342 (and (is-Cons!28497 l!706) (bvsgt (_1!10678 (h!29706 l!706)) key1!31)))))

(assert (=> b!1266079 (= e!721096 e!721095)))

(declare-fun b!1266080 () Bool)

(assert (=> b!1266080 (= e!721097 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26))))

(declare-fun b!1266081 () Bool)

(declare-fun e!721093 () List!28501)

(assert (=> b!1266081 (= e!721093 e!721096)))

(assert (=> b!1266081 (= c!123343 (and (is-Cons!28497 l!706) (= (_1!10678 (h!29706 l!706)) key1!31)))))

(declare-fun b!1266082 () Bool)

(declare-fun res!843013 () Bool)

(declare-fun e!721094 () Bool)

(assert (=> b!1266082 (=> (not res!843013) (not e!721094))))

(declare-fun lt!574040 () List!28501)

(assert (=> b!1266082 (= res!843013 (containsKey!658 lt!574040 key1!31))))

(declare-fun b!1266083 () Bool)

(declare-fun contains!7659 (List!28501 tuple2!21336) Bool)

(assert (=> b!1266083 (= e!721094 (contains!7659 lt!574040 (tuple2!21337 key1!31 v1!26)))))

(declare-fun bm!62445 () Bool)

(assert (=> bm!62445 (= call!62447 call!62448)))

(declare-fun b!1266084 () Bool)

(assert (=> b!1266084 (= e!721093 call!62446)))

(declare-fun bm!62444 () Bool)

(assert (=> bm!62444 (= call!62448 call!62446)))

(declare-fun d!138969 () Bool)

(assert (=> d!138969 e!721094))

(declare-fun res!843012 () Bool)

(assert (=> d!138969 (=> (not res!843012) (not e!721094))))

(assert (=> d!138969 (= res!843012 (isStrictlySorted!797 lt!574040))))

(assert (=> d!138969 (= lt!574040 e!721093)))

(assert (=> d!138969 (= c!123345 (and (is-Cons!28497 l!706) (bvslt (_1!10678 (h!29706 l!706)) key1!31)))))

(assert (=> d!138969 (isStrictlySorted!797 l!706)))

(assert (=> d!138969 (= (insertStrictlySorted!467 l!706 key1!31 v1!26) lt!574040)))

(assert (= (and d!138969 c!123345) b!1266084))

(assert (= (and d!138969 (not c!123345)) b!1266081))

(assert (= (and b!1266081 c!123343) b!1266077))

(assert (= (and b!1266081 (not c!123343)) b!1266079))

(assert (= (and b!1266079 c!123342) b!1266078))

(assert (= (and b!1266079 (not c!123342)) b!1266076))

(assert (= (or b!1266078 b!1266076) bm!62445))

(assert (= (or b!1266077 bm!62445) bm!62444))

(assert (= (or b!1266084 bm!62444) bm!62443))

(assert (= (and bm!62443 c!123344) b!1266080))

(assert (= (and bm!62443 (not c!123344)) b!1266075))

(assert (= (and d!138969 res!843012) b!1266082))

(assert (= (and b!1266082 res!843013) b!1266083))

(declare-fun m!1165887 () Bool)

(assert (=> b!1266082 m!1165887))

(declare-fun m!1165889 () Bool)

(assert (=> b!1266083 m!1165889))

(declare-fun m!1165891 () Bool)

(assert (=> bm!62443 m!1165891))

(assert (=> b!1266080 m!1165793))

(declare-fun m!1165893 () Bool)

(assert (=> d!138969 m!1165893))

(assert (=> d!138969 m!1165787))

(assert (=> b!1265902 d!138969))

(declare-fun b!1266089 () Bool)

(declare-fun e!721102 () List!28501)

(assert (=> b!1266089 (= e!721102 ($colon$colon!644 (removeStrictlySorted!158 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26)) key1!31) (h!29706 (insertStrictlySorted!467 l!706 key1!31 v1!26))))))

(declare-fun e!721104 () List!28501)

(declare-fun b!1266090 () Bool)

(assert (=> b!1266090 (= e!721104 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26)))))

(declare-fun b!1266092 () Bool)

(assert (=> b!1266092 (= e!721102 Nil!28498)))

(declare-fun b!1266093 () Bool)

(assert (=> b!1266093 (= e!721104 e!721102)))

(declare-fun c!123346 () Bool)

(assert (=> b!1266093 (= c!123346 (and (is-Cons!28497 (insertStrictlySorted!467 l!706 key1!31 v1!26)) (not (= (_1!10678 (h!29706 (insertStrictlySorted!467 l!706 key1!31 v1!26))) key1!31))))))

(declare-fun b!1266091 () Bool)

(declare-fun e!721103 () Bool)

(declare-fun lt!574041 () List!28501)

(assert (=> b!1266091 (= e!721103 (not (containsKey!658 lt!574041 key1!31)))))

(declare-fun d!138983 () Bool)

(assert (=> d!138983 e!721103))

(declare-fun res!843018 () Bool)

(assert (=> d!138983 (=> (not res!843018) (not e!721103))))

(assert (=> d!138983 (= res!843018 (isStrictlySorted!797 lt!574041))))

(assert (=> d!138983 (= lt!574041 e!721104)))

(declare-fun c!123347 () Bool)

(assert (=> d!138983 (= c!123347 (and (is-Cons!28497 (insertStrictlySorted!467 l!706 key1!31 v1!26)) (= (_1!10678 (h!29706 (insertStrictlySorted!467 l!706 key1!31 v1!26))) key1!31)))))

(assert (=> d!138983 (isStrictlySorted!797 (insertStrictlySorted!467 l!706 key1!31 v1!26))))

(assert (=> d!138983 (= (removeStrictlySorted!158 (insertStrictlySorted!467 l!706 key1!31 v1!26) key1!31) lt!574041)))

(assert (= (and d!138983 c!123347) b!1266090))

(assert (= (and d!138983 (not c!123347)) b!1266093))

(assert (= (and b!1266093 c!123346) b!1266089))

(assert (= (and b!1266093 (not c!123346)) b!1266092))

(assert (= (and d!138983 res!843018) b!1266091))

(declare-fun m!1165895 () Bool)

(assert (=> b!1266089 m!1165895))

(assert (=> b!1266089 m!1165895))

(declare-fun m!1165897 () Bool)

(assert (=> b!1266089 m!1165897))

(declare-fun m!1165899 () Bool)

(assert (=> b!1266091 m!1165899))

(declare-fun m!1165901 () Bool)

(assert (=> d!138983 m!1165901))

(assert (=> d!138983 m!1165799))

(declare-fun m!1165903 () Bool)

(assert (=> d!138983 m!1165903))

(assert (=> b!1265902 d!138983))

(declare-fun d!138985 () Bool)

(assert (=> d!138985 (= (removeStrictlySorted!158 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26) key1!31) (t!42029 l!706))))

(declare-fun lt!574048 () Unit!42135)

(declare-fun choose!1897 (List!28501 (_ BitVec 64) B!1998) Unit!42135)

(assert (=> d!138985 (= lt!574048 (choose!1897 (t!42029 l!706) key1!31 v1!26))))

(assert (=> d!138985 (isStrictlySorted!797 (t!42029 l!706))))

(assert (=> d!138985 (= (lemmaInsertStrictlySortedThenRemoveIsSame!12 (t!42029 l!706) key1!31 v1!26) lt!574048)))

(declare-fun bs!35829 () Bool)

(assert (= bs!35829 d!138985))

(assert (=> bs!35829 m!1165793))

(assert (=> bs!35829 m!1165793))

(assert (=> bs!35829 m!1165797))

(declare-fun m!1165917 () Bool)

(assert (=> bs!35829 m!1165917))

(assert (=> bs!35829 m!1165789))

(assert (=> b!1265902 d!138985))

(declare-fun b!1266118 () Bool)

(declare-fun c!123353 () Bool)

(declare-fun c!123352 () Bool)

(declare-fun e!721128 () List!28501)

(assert (=> b!1266118 (= e!721128 (ite c!123353 (t!42029 (t!42029 l!706)) (ite c!123352 (Cons!28497 (h!29706 (t!42029 l!706)) (t!42029 (t!42029 l!706))) Nil!28498)))))

(declare-fun bm!62449 () Bool)

(declare-fun c!123355 () Bool)

(declare-fun call!62452 () List!28501)

(assert (=> bm!62449 (= call!62452 ($colon$colon!644 e!721128 (ite c!123355 (h!29706 (t!42029 l!706)) (tuple2!21337 key1!31 v1!26))))))

(declare-fun c!123354 () Bool)

(assert (=> bm!62449 (= c!123354 c!123355)))

(declare-fun b!1266119 () Bool)

(declare-fun e!721126 () List!28501)

(declare-fun call!62453 () List!28501)

(assert (=> b!1266119 (= e!721126 call!62453)))

(declare-fun b!1266120 () Bool)

(declare-fun e!721127 () List!28501)

(declare-fun call!62454 () List!28501)

(assert (=> b!1266120 (= e!721127 call!62454)))

(declare-fun b!1266121 () Bool)

(assert (=> b!1266121 (= e!721126 call!62453)))

(declare-fun b!1266122 () Bool)

(assert (=> b!1266122 (= c!123352 (and (is-Cons!28497 (t!42029 l!706)) (bvsgt (_1!10678 (h!29706 (t!42029 l!706))) key1!31)))))

(assert (=> b!1266122 (= e!721127 e!721126)))

(declare-fun b!1266123 () Bool)

(assert (=> b!1266123 (= e!721128 (insertStrictlySorted!467 (t!42029 (t!42029 l!706)) key1!31 v1!26))))

(declare-fun b!1266124 () Bool)

(declare-fun e!721124 () List!28501)

(assert (=> b!1266124 (= e!721124 e!721127)))

(assert (=> b!1266124 (= c!123353 (and (is-Cons!28497 (t!42029 l!706)) (= (_1!10678 (h!29706 (t!42029 l!706))) key1!31)))))

(declare-fun b!1266125 () Bool)

(declare-fun res!843036 () Bool)

(declare-fun e!721125 () Bool)

(assert (=> b!1266125 (=> (not res!843036) (not e!721125))))

(declare-fun lt!574049 () List!28501)

(assert (=> b!1266125 (= res!843036 (containsKey!658 lt!574049 key1!31))))

(declare-fun b!1266126 () Bool)

(assert (=> b!1266126 (= e!721125 (contains!7659 lt!574049 (tuple2!21337 key1!31 v1!26)))))

(declare-fun bm!62451 () Bool)

(assert (=> bm!62451 (= call!62453 call!62454)))

(declare-fun b!1266127 () Bool)

(assert (=> b!1266127 (= e!721124 call!62452)))

(declare-fun bm!62450 () Bool)

(assert (=> bm!62450 (= call!62454 call!62452)))

(declare-fun d!138995 () Bool)

(assert (=> d!138995 e!721125))

(declare-fun res!843035 () Bool)

(assert (=> d!138995 (=> (not res!843035) (not e!721125))))

(assert (=> d!138995 (= res!843035 (isStrictlySorted!797 lt!574049))))

(assert (=> d!138995 (= lt!574049 e!721124)))

(assert (=> d!138995 (= c!123355 (and (is-Cons!28497 (t!42029 l!706)) (bvslt (_1!10678 (h!29706 (t!42029 l!706))) key1!31)))))

(assert (=> d!138995 (isStrictlySorted!797 (t!42029 l!706))))

(assert (=> d!138995 (= (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26) lt!574049)))

(assert (= (and d!138995 c!123355) b!1266127))

(assert (= (and d!138995 (not c!123355)) b!1266124))

(assert (= (and b!1266124 c!123353) b!1266120))

(assert (= (and b!1266124 (not c!123353)) b!1266122))

(assert (= (and b!1266122 c!123352) b!1266121))

(assert (= (and b!1266122 (not c!123352)) b!1266119))

(assert (= (or b!1266121 b!1266119) bm!62451))

(assert (= (or b!1266120 bm!62451) bm!62450))

(assert (= (or b!1266127 bm!62450) bm!62449))

(assert (= (and bm!62449 c!123354) b!1266123))

(assert (= (and bm!62449 (not c!123354)) b!1266118))

(assert (= (and d!138995 res!843035) b!1266125))

(assert (= (and b!1266125 res!843036) b!1266126))

(declare-fun m!1165923 () Bool)

(assert (=> b!1266125 m!1165923))

(declare-fun m!1165925 () Bool)

(assert (=> b!1266126 m!1165925))

(declare-fun m!1165927 () Bool)

(assert (=> bm!62449 m!1165927))

(declare-fun m!1165929 () Bool)

(assert (=> b!1266123 m!1165929))

(declare-fun m!1165931 () Bool)

(assert (=> d!138995 m!1165931))

(assert (=> d!138995 m!1165789))

(assert (=> b!1265902 d!138995))

(declare-fun d!139001 () Bool)

(declare-fun res!843039 () Bool)

(declare-fun e!721137 () Bool)

(assert (=> d!139001 (=> res!843039 e!721137)))

(assert (=> d!139001 (= res!843039 (or (is-Nil!28498 (t!42029 l!706)) (is-Nil!28498 (t!42029 (t!42029 l!706)))))))

(assert (=> d!139001 (= (isStrictlySorted!797 (t!42029 l!706)) e!721137)))

(declare-fun b!1266140 () Bool)

(declare-fun e!721138 () Bool)

(assert (=> b!1266140 (= e!721137 e!721138)))

(declare-fun res!843040 () Bool)

(assert (=> b!1266140 (=> (not res!843040) (not e!721138))))

(assert (=> b!1266140 (= res!843040 (bvslt (_1!10678 (h!29706 (t!42029 l!706))) (_1!10678 (h!29706 (t!42029 (t!42029 l!706))))))))

(declare-fun b!1266141 () Bool)

(assert (=> b!1266141 (= e!721138 (isStrictlySorted!797 (t!42029 (t!42029 l!706))))))

(assert (= (and d!139001 (not res!843039)) b!1266140))

(assert (= (and b!1266140 res!843040) b!1266141))

(declare-fun m!1165933 () Bool)

(assert (=> b!1266141 m!1165933))

(assert (=> b!1265901 d!139001))

(declare-fun b!1266146 () Bool)

(declare-fun e!721141 () Bool)

(declare-fun tp!96426 () Bool)

(assert (=> b!1266146 (= e!721141 (and tp_is_empty!32531 tp!96426))))

(assert (=> b!1265899 (= tp!96417 e!721141)))

(assert (= (and b!1265899 (is-Cons!28497 (t!42029 l!706))) b!1266146))

(push 1)

(assert (not d!138995))

(assert (not d!138965))

(assert (not b!1266091))

(assert (not b!1265972))

(assert (not b!1265919))

(assert (not b!1266126))

(assert (not b!1265942))

(assert (not b!1266089))

(assert (not b!1266080))

(assert (not d!138985))

(assert (not b!1265970))

(assert (not b!1266083))

(assert tp_is_empty!32531)

(assert (not b!1266146))

(assert (not d!138969))

(assert (not b!1266125))

(assert (not b!1265944))

(assert (not bm!62443))

(assert (not b!1266082))

(assert (not d!138983))

(assert (not b!1266141))

(assert (not b!1266123))

(assert (not bm!62449))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!574066 () Bool)

(declare-fun d!139091 () Bool)

(declare-fun content!642 (List!28501) (Set tuple2!21336))

(assert (=> d!139091 (= lt!574066 (member (tuple2!21337 key1!31 v1!26) (content!642 lt!574049)))))

(declare-fun e!721234 () Bool)

(assert (=> d!139091 (= lt!574066 e!721234)))

(declare-fun res!843118 () Bool)

(assert (=> d!139091 (=> (not res!843118) (not e!721234))))

(assert (=> d!139091 (= res!843118 (is-Cons!28497 lt!574049))))

(assert (=> d!139091 (= (contains!7659 lt!574049 (tuple2!21337 key1!31 v1!26)) lt!574066)))

(declare-fun b!1266257 () Bool)

(declare-fun e!721235 () Bool)

(assert (=> b!1266257 (= e!721234 e!721235)))

(declare-fun res!843117 () Bool)

(assert (=> b!1266257 (=> res!843117 e!721235)))

(assert (=> b!1266257 (= res!843117 (= (h!29706 lt!574049) (tuple2!21337 key1!31 v1!26)))))

(declare-fun b!1266258 () Bool)

(assert (=> b!1266258 (= e!721235 (contains!7659 (t!42029 lt!574049) (tuple2!21337 key1!31 v1!26)))))

(assert (= (and d!139091 res!843118) b!1266257))

(assert (= (and b!1266257 (not res!843117)) b!1266258))

(declare-fun m!1166059 () Bool)

(assert (=> d!139091 m!1166059))

(declare-fun m!1166061 () Bool)

(assert (=> d!139091 m!1166061))

(declare-fun m!1166063 () Bool)

(assert (=> b!1266258 m!1166063))

(assert (=> b!1266126 d!139091))

(assert (=> b!1265944 d!138953))

(declare-fun d!139093 () Bool)

(declare-fun res!843119 () Bool)

(declare-fun e!721236 () Bool)

(assert (=> d!139093 (=> res!843119 e!721236)))

(assert (=> d!139093 (= res!843119 (and (is-Cons!28497 lt!574049) (= (_1!10678 (h!29706 lt!574049)) key1!31)))))

(assert (=> d!139093 (= (containsKey!658 lt!574049 key1!31) e!721236)))

(declare-fun b!1266259 () Bool)

(declare-fun e!721237 () Bool)

(assert (=> b!1266259 (= e!721236 e!721237)))

(declare-fun res!843120 () Bool)

(assert (=> b!1266259 (=> (not res!843120) (not e!721237))))

(assert (=> b!1266259 (= res!843120 (and (or (not (is-Cons!28497 lt!574049)) (bvsle (_1!10678 (h!29706 lt!574049)) key1!31)) (is-Cons!28497 lt!574049) (bvslt (_1!10678 (h!29706 lt!574049)) key1!31)))))

(declare-fun b!1266260 () Bool)

(assert (=> b!1266260 (= e!721237 (containsKey!658 (t!42029 lt!574049) key1!31))))

(assert (= (and d!139093 (not res!843119)) b!1266259))

(assert (= (and b!1266259 res!843120) b!1266260))

(declare-fun m!1166065 () Bool)

(assert (=> b!1266260 m!1166065))

(assert (=> b!1266125 d!139093))

(declare-fun d!139095 () Bool)

(declare-fun res!843121 () Bool)

(declare-fun e!721238 () Bool)

(assert (=> d!139095 (=> res!843121 e!721238)))

(assert (=> d!139095 (= res!843121 (or (is-Nil!28498 lt!574049) (is-Nil!28498 (t!42029 lt!574049))))))

(assert (=> d!139095 (= (isStrictlySorted!797 lt!574049) e!721238)))

(declare-fun b!1266261 () Bool)

(declare-fun e!721239 () Bool)

(assert (=> b!1266261 (= e!721238 e!721239)))

(declare-fun res!843122 () Bool)

(assert (=> b!1266261 (=> (not res!843122) (not e!721239))))

(assert (=> b!1266261 (= res!843122 (bvslt (_1!10678 (h!29706 lt!574049)) (_1!10678 (h!29706 (t!42029 lt!574049)))))))

(declare-fun b!1266262 () Bool)

(assert (=> b!1266262 (= e!721239 (isStrictlySorted!797 (t!42029 lt!574049)))))

(assert (= (and d!139095 (not res!843121)) b!1266261))

(assert (= (and b!1266261 res!843122) b!1266262))

(declare-fun m!1166067 () Bool)

(assert (=> b!1266262 m!1166067))

(assert (=> d!138995 d!139095))

(assert (=> d!138995 d!139001))

(declare-fun d!139097 () Bool)

(declare-fun res!843123 () Bool)

(declare-fun e!721240 () Bool)

(assert (=> d!139097 (=> res!843123 e!721240)))

(assert (=> d!139097 (= res!843123 (or (is-Nil!28498 (t!42029 (t!42029 l!706))) (is-Nil!28498 (t!42029 (t!42029 (t!42029 l!706))))))))

(assert (=> d!139097 (= (isStrictlySorted!797 (t!42029 (t!42029 l!706))) e!721240)))

(declare-fun b!1266263 () Bool)

(declare-fun e!721241 () Bool)

(assert (=> b!1266263 (= e!721240 e!721241)))

(declare-fun res!843124 () Bool)

(assert (=> b!1266263 (=> (not res!843124) (not e!721241))))

(assert (=> b!1266263 (= res!843124 (bvslt (_1!10678 (h!29706 (t!42029 (t!42029 l!706)))) (_1!10678 (h!29706 (t!42029 (t!42029 (t!42029 l!706)))))))))

(declare-fun b!1266264 () Bool)

(assert (=> b!1266264 (= e!721241 (isStrictlySorted!797 (t!42029 (t!42029 (t!42029 l!706)))))))

(assert (= (and d!139097 (not res!843123)) b!1266263))

(assert (= (and b!1266263 res!843124) b!1266264))

(declare-fun m!1166069 () Bool)

(assert (=> b!1266264 m!1166069))

(assert (=> b!1266141 d!139097))

(declare-fun d!139099 () Bool)

(declare-fun res!843125 () Bool)

(declare-fun e!721242 () Bool)

(assert (=> d!139099 (=> res!843125 e!721242)))

(assert (=> d!139099 (= res!843125 (or (is-Nil!28498 lt!574025) (is-Nil!28498 (t!42029 lt!574025))))))

(assert (=> d!139099 (= (isStrictlySorted!797 lt!574025) e!721242)))

(declare-fun b!1266265 () Bool)

(declare-fun e!721243 () Bool)

(assert (=> b!1266265 (= e!721242 e!721243)))

(declare-fun res!843126 () Bool)

(assert (=> b!1266265 (=> (not res!843126) (not e!721243))))

(assert (=> b!1266265 (= res!843126 (bvslt (_1!10678 (h!29706 lt!574025)) (_1!10678 (h!29706 (t!42029 lt!574025)))))))

(declare-fun b!1266266 () Bool)

(assert (=> b!1266266 (= e!721243 (isStrictlySorted!797 (t!42029 lt!574025)))))

(assert (= (and d!139099 (not res!843125)) b!1266265))

(assert (= (and b!1266265 res!843126) b!1266266))

(declare-fun m!1166071 () Bool)

(assert (=> b!1266266 m!1166071))

(assert (=> d!138965 d!139099))

(declare-fun d!139101 () Bool)

(declare-fun res!843127 () Bool)

(declare-fun e!721244 () Bool)

(assert (=> d!139101 (=> res!843127 e!721244)))

(assert (=> d!139101 (= res!843127 (or (is-Nil!28498 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26)) (is-Nil!28498 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26)))))))

(assert (=> d!139101 (= (isStrictlySorted!797 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26)) e!721244)))

(declare-fun b!1266267 () Bool)

(declare-fun e!721245 () Bool)

(assert (=> b!1266267 (= e!721244 e!721245)))

(declare-fun res!843128 () Bool)

(assert (=> b!1266267 (=> (not res!843128) (not e!721245))))

(assert (=> b!1266267 (= res!843128 (bvslt (_1!10678 (h!29706 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26))) (_1!10678 (h!29706 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26))))))))

(declare-fun b!1266268 () Bool)

(assert (=> b!1266268 (= e!721245 (isStrictlySorted!797 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26))))))

(assert (= (and d!139101 (not res!843127)) b!1266267))

(assert (= (and b!1266267 res!843128) b!1266268))

(declare-fun m!1166073 () Bool)

(assert (=> b!1266268 m!1166073))

(assert (=> d!138965 d!139101))

(declare-fun d!139103 () Bool)

(assert (=> d!139103 (= ($colon$colon!644 e!721097 (ite c!123345 (h!29706 l!706) (tuple2!21337 key1!31 v1!26))) (Cons!28497 (ite c!123345 (h!29706 l!706) (tuple2!21337 key1!31 v1!26)) e!721097))))

(assert (=> bm!62443 d!139103))

(declare-fun d!139105 () Bool)

(declare-fun res!843129 () Bool)

(declare-fun e!721246 () Bool)

(assert (=> d!139105 (=> res!843129 e!721246)))

(assert (=> d!139105 (= res!843129 (and (is-Cons!28497 lt!574025) (= (_1!10678 (h!29706 lt!574025)) key1!31)))))

(assert (=> d!139105 (= (containsKey!658 lt!574025 key1!31) e!721246)))

(declare-fun b!1266269 () Bool)

(declare-fun e!721247 () Bool)

(assert (=> b!1266269 (= e!721246 e!721247)))

(declare-fun res!843130 () Bool)

(assert (=> b!1266269 (=> (not res!843130) (not e!721247))))

(assert (=> b!1266269 (= res!843130 (and (or (not (is-Cons!28497 lt!574025)) (bvsle (_1!10678 (h!29706 lt!574025)) key1!31)) (is-Cons!28497 lt!574025) (bvslt (_1!10678 (h!29706 lt!574025)) key1!31)))))

(declare-fun b!1266270 () Bool)

(assert (=> b!1266270 (= e!721247 (containsKey!658 (t!42029 lt!574025) key1!31))))

(assert (= (and d!139105 (not res!843129)) b!1266269))

(assert (= (and b!1266269 res!843130) b!1266270))

(declare-fun m!1166075 () Bool)

(assert (=> b!1266270 m!1166075))

(assert (=> b!1265972 d!139105))

(declare-fun d!139107 () Bool)

(declare-fun res!843131 () Bool)

(declare-fun e!721248 () Bool)

(assert (=> d!139107 (=> res!843131 e!721248)))

(assert (=> d!139107 (= res!843131 (and (is-Cons!28497 lt!574041) (= (_1!10678 (h!29706 lt!574041)) key1!31)))))

(assert (=> d!139107 (= (containsKey!658 lt!574041 key1!31) e!721248)))

(declare-fun b!1266271 () Bool)

(declare-fun e!721249 () Bool)

(assert (=> b!1266271 (= e!721248 e!721249)))

(declare-fun res!843132 () Bool)

(assert (=> b!1266271 (=> (not res!843132) (not e!721249))))

(assert (=> b!1266271 (= res!843132 (and (or (not (is-Cons!28497 lt!574041)) (bvsle (_1!10678 (h!29706 lt!574041)) key1!31)) (is-Cons!28497 lt!574041) (bvslt (_1!10678 (h!29706 lt!574041)) key1!31)))))

(declare-fun b!1266272 () Bool)

(assert (=> b!1266272 (= e!721249 (containsKey!658 (t!42029 lt!574041) key1!31))))

(assert (= (and d!139107 (not res!843131)) b!1266271))

(assert (= (and b!1266271 res!843132) b!1266272))

(declare-fun m!1166077 () Bool)

(assert (=> b!1266272 m!1166077))

(assert (=> b!1266091 d!139107))

(assert (=> b!1266080 d!138995))

(declare-fun d!139109 () Bool)

(assert (=> d!139109 (= ($colon$colon!644 e!721128 (ite c!123355 (h!29706 (t!42029 l!706)) (tuple2!21337 key1!31 v1!26))) (Cons!28497 (ite c!123355 (h!29706 (t!42029 l!706)) (tuple2!21337 key1!31 v1!26)) e!721128))))

(assert (=> bm!62449 d!139109))

(assert (=> d!138985 d!138965))

(assert (=> d!138985 d!138995))

(declare-fun d!139111 () Bool)

(assert (=> d!139111 (= (removeStrictlySorted!158 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26) key1!31) (t!42029 l!706))))

(assert (=> d!139111 true))

(declare-fun _$4!67 () Unit!42135)

(assert (=> d!139111 (= (choose!1897 (t!42029 l!706) key1!31 v1!26) _$4!67)))

(declare-fun bs!35832 () Bool)

(assert (= bs!35832 d!139111))

(assert (=> bs!35832 m!1165793))

(assert (=> bs!35832 m!1165793))

(assert (=> bs!35832 m!1165797))

(assert (=> d!138985 d!139111))

(assert (=> d!138985 d!139001))

(declare-fun d!139113 () Bool)

(assert (=> d!139113 (= ($colon$colon!644 (removeStrictlySorted!158 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26)) key1!31) (h!29706 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26))) (Cons!28497 (h!29706 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26)) (removeStrictlySorted!158 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26)) key1!31)))))

(assert (=> b!1265970 d!139113))

(declare-fun b!1266273 () Bool)

(declare-fun e!721250 () List!28501)

(assert (=> b!1266273 (= e!721250 ($colon$colon!644 (removeStrictlySorted!158 (t!42029 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26))) key1!31) (h!29706 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26)))))))

(declare-fun b!1266274 () Bool)

(declare-fun e!721252 () List!28501)

(assert (=> b!1266274 (= e!721252 (t!42029 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26))))))

(declare-fun b!1266276 () Bool)

(assert (=> b!1266276 (= e!721250 Nil!28498)))

(declare-fun b!1266277 () Bool)

(assert (=> b!1266277 (= e!721252 e!721250)))

(declare-fun c!123372 () Bool)

(assert (=> b!1266277 (= c!123372 (and (is-Cons!28497 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26))) (not (= (_1!10678 (h!29706 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26)))) key1!31))))))

(declare-fun b!1266275 () Bool)

(declare-fun e!721251 () Bool)

(declare-fun lt!574067 () List!28501)

(assert (=> b!1266275 (= e!721251 (not (containsKey!658 lt!574067 key1!31)))))

(declare-fun d!139115 () Bool)

(assert (=> d!139115 e!721251))

(declare-fun res!843133 () Bool)

(assert (=> d!139115 (=> (not res!843133) (not e!721251))))

(assert (=> d!139115 (= res!843133 (isStrictlySorted!797 lt!574067))))

(assert (=> d!139115 (= lt!574067 e!721252)))

(declare-fun c!123373 () Bool)

(assert (=> d!139115 (= c!123373 (and (is-Cons!28497 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26))) (= (_1!10678 (h!29706 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26)))) key1!31)))))

(assert (=> d!139115 (isStrictlySorted!797 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26)))))

(assert (=> d!139115 (= (removeStrictlySorted!158 (t!42029 (insertStrictlySorted!467 (t!42029 l!706) key1!31 v1!26)) key1!31) lt!574067)))

(assert (= (and d!139115 c!123373) b!1266274))

(assert (= (and d!139115 (not c!123373)) b!1266277))

(assert (= (and b!1266277 c!123372) b!1266273))

(assert (= (and b!1266277 (not c!123372)) b!1266276))

(assert (= (and d!139115 res!843133) b!1266275))

(declare-fun m!1166079 () Bool)

(assert (=> b!1266273 m!1166079))

(assert (=> b!1266273 m!1166079))

(declare-fun m!1166081 () Bool)

(assert (=> b!1266273 m!1166081))

(declare-fun m!1166083 () Bool)

(assert (=> b!1266275 m!1166083))

(declare-fun m!1166085 () Bool)

(assert (=> d!139115 m!1166085))

(assert (=> d!139115 m!1166073))

(assert (=> b!1265970 d!139115))

(declare-fun d!139117 () Bool)

(assert (=> d!139117 (= ($colon$colon!644 (removeStrictlySorted!158 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26)) key1!31) (h!29706 (insertStrictlySorted!467 l!706 key1!31 v1!26))) (Cons!28497 (h!29706 (insertStrictlySorted!467 l!706 key1!31 v1!26)) (removeStrictlySorted!158 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26)) key1!31)))))

(assert (=> b!1266089 d!139117))

(declare-fun e!721253 () List!28501)

(declare-fun b!1266278 () Bool)

(assert (=> b!1266278 (= e!721253 ($colon$colon!644 (removeStrictlySorted!158 (t!42029 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26))) key1!31) (h!29706 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26)))))))

(declare-fun b!1266279 () Bool)

(declare-fun e!721255 () List!28501)

(assert (=> b!1266279 (= e!721255 (t!42029 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26))))))

(declare-fun b!1266281 () Bool)

(assert (=> b!1266281 (= e!721253 Nil!28498)))

(declare-fun b!1266282 () Bool)

(assert (=> b!1266282 (= e!721255 e!721253)))

(declare-fun c!123374 () Bool)

(assert (=> b!1266282 (= c!123374 (and (is-Cons!28497 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26))) (not (= (_1!10678 (h!29706 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26)))) key1!31))))))

(declare-fun b!1266280 () Bool)

(declare-fun e!721254 () Bool)

(declare-fun lt!574068 () List!28501)

(assert (=> b!1266280 (= e!721254 (not (containsKey!658 lt!574068 key1!31)))))

(declare-fun d!139119 () Bool)

(assert (=> d!139119 e!721254))

(declare-fun res!843134 () Bool)

(assert (=> d!139119 (=> (not res!843134) (not e!721254))))

(assert (=> d!139119 (= res!843134 (isStrictlySorted!797 lt!574068))))

(assert (=> d!139119 (= lt!574068 e!721255)))

(declare-fun c!123375 () Bool)

(assert (=> d!139119 (= c!123375 (and (is-Cons!28497 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26))) (= (_1!10678 (h!29706 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26)))) key1!31)))))

(assert (=> d!139119 (isStrictlySorted!797 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26)))))

(assert (=> d!139119 (= (removeStrictlySorted!158 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26)) key1!31) lt!574068)))

(assert (= (and d!139119 c!123375) b!1266279))

(assert (= (and d!139119 (not c!123375)) b!1266282))

(assert (= (and b!1266282 c!123374) b!1266278))

(assert (= (and b!1266282 (not c!123374)) b!1266281))

(assert (= (and d!139119 res!843134) b!1266280))

(declare-fun m!1166087 () Bool)

(assert (=> b!1266278 m!1166087))

(assert (=> b!1266278 m!1166087))

(declare-fun m!1166089 () Bool)

(assert (=> b!1266278 m!1166089))

(declare-fun m!1166091 () Bool)

(assert (=> b!1266280 m!1166091))

(declare-fun m!1166093 () Bool)

(assert (=> d!139119 m!1166093))

(declare-fun m!1166095 () Bool)

(assert (=> d!139119 m!1166095))

(assert (=> b!1266089 d!139119))

(declare-fun d!139121 () Bool)

(declare-fun res!843135 () Bool)

(declare-fun e!721256 () Bool)

(assert (=> d!139121 (=> res!843135 e!721256)))

(assert (=> d!139121 (= res!843135 (and (is-Cons!28497 lt!574040) (= (_1!10678 (h!29706 lt!574040)) key1!31)))))

(assert (=> d!139121 (= (containsKey!658 lt!574040 key1!31) e!721256)))

(declare-fun b!1266283 () Bool)

(declare-fun e!721257 () Bool)

(assert (=> b!1266283 (= e!721256 e!721257)))

(declare-fun res!843136 () Bool)

(assert (=> b!1266283 (=> (not res!843136) (not e!721257))))

(assert (=> b!1266283 (= res!843136 (and (or (not (is-Cons!28497 lt!574040)) (bvsle (_1!10678 (h!29706 lt!574040)) key1!31)) (is-Cons!28497 lt!574040) (bvslt (_1!10678 (h!29706 lt!574040)) key1!31)))))

(declare-fun b!1266284 () Bool)

(assert (=> b!1266284 (= e!721257 (containsKey!658 (t!42029 lt!574040) key1!31))))

(assert (= (and d!139121 (not res!843135)) b!1266283))

(assert (= (and b!1266283 res!843136) b!1266284))

(declare-fun m!1166097 () Bool)

(assert (=> b!1266284 m!1166097))

(assert (=> b!1266082 d!139121))

(declare-fun d!139123 () Bool)

(declare-fun res!843137 () Bool)

(declare-fun e!721258 () Bool)

(assert (=> d!139123 (=> res!843137 e!721258)))

(assert (=> d!139123 (= res!843137 (or (is-Nil!28498 lt!574041) (is-Nil!28498 (t!42029 lt!574041))))))

(assert (=> d!139123 (= (isStrictlySorted!797 lt!574041) e!721258)))

(declare-fun b!1266285 () Bool)

(declare-fun e!721259 () Bool)

(assert (=> b!1266285 (= e!721258 e!721259)))

(declare-fun res!843138 () Bool)

(assert (=> b!1266285 (=> (not res!843138) (not e!721259))))

(assert (=> b!1266285 (= res!843138 (bvslt (_1!10678 (h!29706 lt!574041)) (_1!10678 (h!29706 (t!42029 lt!574041)))))))

(declare-fun b!1266286 () Bool)

(assert (=> b!1266286 (= e!721259 (isStrictlySorted!797 (t!42029 lt!574041)))))

(assert (= (and d!139123 (not res!843137)) b!1266285))

(assert (= (and b!1266285 res!843138) b!1266286))

(declare-fun m!1166099 () Bool)

(assert (=> b!1266286 m!1166099))

(assert (=> d!138983 d!139123))

(declare-fun d!139125 () Bool)

(declare-fun res!843139 () Bool)

(declare-fun e!721260 () Bool)

(assert (=> d!139125 (=> res!843139 e!721260)))

(assert (=> d!139125 (= res!843139 (or (is-Nil!28498 (insertStrictlySorted!467 l!706 key1!31 v1!26)) (is-Nil!28498 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26)))))))

(assert (=> d!139125 (= (isStrictlySorted!797 (insertStrictlySorted!467 l!706 key1!31 v1!26)) e!721260)))

(declare-fun b!1266287 () Bool)

(declare-fun e!721261 () Bool)

(assert (=> b!1266287 (= e!721260 e!721261)))

(declare-fun res!843140 () Bool)

(assert (=> b!1266287 (=> (not res!843140) (not e!721261))))

(assert (=> b!1266287 (= res!843140 (bvslt (_1!10678 (h!29706 (insertStrictlySorted!467 l!706 key1!31 v1!26))) (_1!10678 (h!29706 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26))))))))

(declare-fun b!1266288 () Bool)

(assert (=> b!1266288 (= e!721261 (isStrictlySorted!797 (t!42029 (insertStrictlySorted!467 l!706 key1!31 v1!26))))))

(assert (= (and d!139125 (not res!843139)) b!1266287))

(assert (= (and b!1266287 res!843140) b!1266288))

(assert (=> b!1266288 m!1166095))

(assert (=> d!138983 d!139125))

(assert (=> b!1265942 d!139001))

(declare-fun d!139127 () Bool)

(declare-fun res!843141 () Bool)

(declare-fun e!721262 () Bool)

(assert (=> d!139127 (=> res!843141 e!721262)))

(assert (=> d!139127 (= res!843141 (or (is-Nil!28498 lt!574040) (is-Nil!28498 (t!42029 lt!574040))))))

(assert (=> d!139127 (= (isStrictlySorted!797 lt!574040) e!721262)))

(declare-fun b!1266289 () Bool)

(declare-fun e!721263 () Bool)

(assert (=> b!1266289 (= e!721262 e!721263)))

(declare-fun res!843142 () Bool)

(assert (=> b!1266289 (=> (not res!843142) (not e!721263))))

(assert (=> b!1266289 (= res!843142 (bvslt (_1!10678 (h!29706 lt!574040)) (_1!10678 (h!29706 (t!42029 lt!574040)))))))

(declare-fun b!1266290 () Bool)

(assert (=> b!1266290 (= e!721263 (isStrictlySorted!797 (t!42029 lt!574040)))))

(assert (= (and d!139127 (not res!843141)) b!1266289))

(assert (= (and b!1266289 res!843142) b!1266290))

(declare-fun m!1166101 () Bool)

(assert (=> b!1266290 m!1166101))

(assert (=> d!138969 d!139127))

(assert (=> d!138969 d!138957))

(declare-fun c!123377 () Bool)

