; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134518 () Bool)

(assert start!134518)

(declare-fun b!1569775 () Bool)

(declare-fun res!1072847 () Bool)

(declare-fun e!875148 () Bool)

(assert (=> b!1569775 (=> (not res!1072847) (not e!875148))))

(declare-datatypes ((B!2546 0))(
  ( (B!2547 (val!19635 Int)) )
))
(declare-datatypes ((tuple2!25536 0))(
  ( (tuple2!25537 (_1!12778 (_ BitVec 64)) (_2!12778 B!2546)) )
))
(declare-datatypes ((List!36916 0))(
  ( (Nil!36913) (Cons!36912 (h!38360 tuple2!25536) (t!51831 List!36916)) )
))
(declare-fun l!750 () List!36916)

(declare-fun isStrictlySorted!1017 (List!36916) Bool)

(assert (=> b!1569775 (= res!1072847 (isStrictlySorted!1017 l!750))))

(declare-fun b!1569776 () Bool)

(declare-fun e!875147 () Bool)

(declare-fun tp_is_empty!39097 () Bool)

(declare-fun tp!114211 () Bool)

(assert (=> b!1569776 (= e!875147 (and tp_is_empty!39097 tp!114211))))

(declare-fun b!1569778 () Bool)

(declare-fun res!1072845 () Bool)

(assert (=> b!1569778 (=> (not res!1072845) (not e!875148))))

(assert (=> b!1569778 (= res!1072845 (isStrictlySorted!1017 (t!51831 l!750)))))

(declare-fun v1!32 () B!2546)

(declare-fun v2!10 () B!2546)

(declare-fun b!1569779 () Bool)

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun insertStrictlySorted!595 (List!36916 (_ BitVec 64) B!2546) List!36916)

(assert (=> b!1569779 (= e!875148 (not (= (insertStrictlySorted!595 (insertStrictlySorted!595 l!750 key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!595 (insertStrictlySorted!595 l!750 key2!21 v2!10) key1!37 v1!32))))))

(assert (=> b!1569779 (= (insertStrictlySorted!595 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!595 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-datatypes ((Unit!52036 0))(
  ( (Unit!52037) )
))
(declare-fun lt!673261 () Unit!52036)

(declare-fun lemmaInsertStrictlySortedCommutative!16 (List!36916 (_ BitVec 64) B!2546 (_ BitVec 64) B!2546) Unit!52036)

(assert (=> b!1569779 (= lt!673261 (lemmaInsertStrictlySortedCommutative!16 (t!51831 l!750) key1!37 v1!32 key2!21 v2!10))))

(declare-fun b!1569777 () Bool)

(declare-fun res!1072846 () Bool)

(assert (=> b!1569777 (=> (not res!1072846) (not e!875148))))

(assert (=> b!1569777 (= res!1072846 (and (is-Cons!36912 l!750) (bvslt (_1!12778 (h!38360 l!750)) key1!37) (bvslt (_1!12778 (h!38360 l!750)) key2!21)))))

(declare-fun res!1072844 () Bool)

(assert (=> start!134518 (=> (not res!1072844) (not e!875148))))

(assert (=> start!134518 (= res!1072844 (not (= key1!37 key2!21)))))

(assert (=> start!134518 e!875148))

(assert (=> start!134518 tp_is_empty!39097))

(assert (=> start!134518 e!875147))

(assert (=> start!134518 true))

(assert (= (and start!134518 res!1072844) b!1569775))

(assert (= (and b!1569775 res!1072847) b!1569777))

(assert (= (and b!1569777 res!1072846) b!1569778))

(assert (= (and b!1569778 res!1072845) b!1569779))

(assert (= (and start!134518 (is-Cons!36912 l!750)) b!1569776))

(declare-fun m!1443859 () Bool)

(assert (=> b!1569775 m!1443859))

(declare-fun m!1443861 () Bool)

(assert (=> b!1569778 m!1443861))

(declare-fun m!1443863 () Bool)

(assert (=> b!1569779 m!1443863))

(declare-fun m!1443865 () Bool)

(assert (=> b!1569779 m!1443865))

(declare-fun m!1443867 () Bool)

(assert (=> b!1569779 m!1443867))

(declare-fun m!1443869 () Bool)

(assert (=> b!1569779 m!1443869))

(declare-fun m!1443871 () Bool)

(assert (=> b!1569779 m!1443871))

(assert (=> b!1569779 m!1443865))

(declare-fun m!1443873 () Bool)

(assert (=> b!1569779 m!1443873))

(assert (=> b!1569779 m!1443869))

(declare-fun m!1443875 () Bool)

(assert (=> b!1569779 m!1443875))

(declare-fun m!1443877 () Bool)

(assert (=> b!1569779 m!1443877))

(assert (=> b!1569779 m!1443875))

(assert (=> b!1569779 m!1443863))

(declare-fun m!1443879 () Bool)

(assert (=> b!1569779 m!1443879))

(push 1)

(assert (not b!1569779))

(assert (not b!1569775))

(assert (not b!1569776))

(assert (not b!1569778))

(assert tp_is_empty!39097)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163893 () Bool)

(declare-fun res!1072876 () Bool)

(declare-fun e!875165 () Bool)

(assert (=> d!163893 (=> res!1072876 e!875165)))

(assert (=> d!163893 (= res!1072876 (or (is-Nil!36913 l!750) (is-Nil!36913 (t!51831 l!750))))))

(assert (=> d!163893 (= (isStrictlySorted!1017 l!750) e!875165)))

(declare-fun b!1569814 () Bool)

(declare-fun e!875166 () Bool)

(assert (=> b!1569814 (= e!875165 e!875166)))

(declare-fun res!1072877 () Bool)

(assert (=> b!1569814 (=> (not res!1072877) (not e!875166))))

(assert (=> b!1569814 (= res!1072877 (bvslt (_1!12778 (h!38360 l!750)) (_1!12778 (h!38360 (t!51831 l!750)))))))

(declare-fun b!1569815 () Bool)

(assert (=> b!1569815 (= e!875166 (isStrictlySorted!1017 (t!51831 l!750)))))

(assert (= (and d!163893 (not res!1072876)) b!1569814))

(assert (= (and b!1569814 res!1072877) b!1569815))

(assert (=> b!1569815 m!1443861))

(assert (=> b!1569775 d!163893))

(declare-fun d!163895 () Bool)

(declare-fun res!1072878 () Bool)

(declare-fun e!875167 () Bool)

(assert (=> d!163895 (=> res!1072878 e!875167)))

(assert (=> d!163895 (= res!1072878 (or (is-Nil!36913 (t!51831 l!750)) (is-Nil!36913 (t!51831 (t!51831 l!750)))))))

(assert (=> d!163895 (= (isStrictlySorted!1017 (t!51831 l!750)) e!875167)))

(declare-fun b!1569816 () Bool)

(declare-fun e!875168 () Bool)

(assert (=> b!1569816 (= e!875167 e!875168)))

(declare-fun res!1072879 () Bool)

(assert (=> b!1569816 (=> (not res!1072879) (not e!875168))))

(assert (=> b!1569816 (= res!1072879 (bvslt (_1!12778 (h!38360 (t!51831 l!750))) (_1!12778 (h!38360 (t!51831 (t!51831 l!750))))))))

(declare-fun b!1569817 () Bool)

(assert (=> b!1569817 (= e!875168 (isStrictlySorted!1017 (t!51831 (t!51831 l!750))))))

(assert (= (and d!163895 (not res!1072878)) b!1569816))

(assert (= (and b!1569816 res!1072879) b!1569817))

(declare-fun m!1443925 () Bool)

(assert (=> b!1569817 m!1443925))

(assert (=> b!1569778 d!163895))

(declare-fun c!144754 () Bool)

(declare-fun c!144757 () Bool)

(declare-fun e!875214 () List!36916)

(declare-fun b!1569892 () Bool)

(assert (=> b!1569892 (= e!875214 (ite c!144757 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10)) (ite c!144754 (Cons!36912 (h!38360 (insertStrictlySorted!595 l!750 key2!21 v2!10)) (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10))) Nil!36913)))))

(declare-fun b!1569893 () Bool)

(declare-fun res!1072906 () Bool)

(declare-fun e!875213 () Bool)

(assert (=> b!1569893 (=> (not res!1072906) (not e!875213))))

(declare-fun lt!673274 () List!36916)

(declare-fun containsKey!867 (List!36916 (_ BitVec 64)) Bool)

(assert (=> b!1569893 (= res!1072906 (containsKey!867 lt!673274 key1!37))))

(declare-fun b!1569894 () Bool)

(declare-fun e!875217 () List!36916)

(declare-fun call!72135 () List!36916)

(assert (=> b!1569894 (= e!875217 call!72135)))

(declare-fun c!144756 () Bool)

(declare-fun bm!72132 () Bool)

(declare-fun call!72137 () List!36916)

(declare-fun $colon$colon!1002 (List!36916 tuple2!25536) List!36916)

(assert (=> bm!72132 (= call!72137 ($colon$colon!1002 e!875214 (ite c!144756 (h!38360 (insertStrictlySorted!595 l!750 key2!21 v2!10)) (tuple2!25537 key1!37 v1!32))))))

(declare-fun c!144755 () Bool)

(assert (=> bm!72132 (= c!144755 c!144756)))

(declare-fun b!1569895 () Bool)

(assert (=> b!1569895 (= c!144754 (and (is-Cons!36912 (insertStrictlySorted!595 l!750 key2!21 v2!10)) (bvsgt (_1!12778 (h!38360 (insertStrictlySorted!595 l!750 key2!21 v2!10))) key1!37)))))

(declare-fun e!875215 () List!36916)

(assert (=> b!1569895 (= e!875215 e!875217)))

(declare-fun d!163897 () Bool)

(assert (=> d!163897 e!875213))

(declare-fun res!1072907 () Bool)

(assert (=> d!163897 (=> (not res!1072907) (not e!875213))))

(assert (=> d!163897 (= res!1072907 (isStrictlySorted!1017 lt!673274))))

(declare-fun e!875216 () List!36916)

(assert (=> d!163897 (= lt!673274 e!875216)))

(assert (=> d!163897 (= c!144756 (and (is-Cons!36912 (insertStrictlySorted!595 l!750 key2!21 v2!10)) (bvslt (_1!12778 (h!38360 (insertStrictlySorted!595 l!750 key2!21 v2!10))) key1!37)))))

(assert (=> d!163897 (isStrictlySorted!1017 (insertStrictlySorted!595 l!750 key2!21 v2!10))))

(assert (=> d!163897 (= (insertStrictlySorted!595 (insertStrictlySorted!595 l!750 key2!21 v2!10) key1!37 v1!32) lt!673274)))

(declare-fun b!1569896 () Bool)

(declare-fun contains!10445 (List!36916 tuple2!25536) Bool)

(assert (=> b!1569896 (= e!875213 (contains!10445 lt!673274 (tuple2!25537 key1!37 v1!32)))))

(declare-fun bm!72133 () Bool)

(declare-fun call!72136 () List!36916)

(assert (=> bm!72133 (= call!72135 call!72136)))

(declare-fun b!1569897 () Bool)

(assert (=> b!1569897 (= e!875217 call!72135)))

(declare-fun bm!72134 () Bool)

(assert (=> bm!72134 (= call!72136 call!72137)))

(declare-fun b!1569898 () Bool)

(assert (=> b!1569898 (= e!875216 call!72137)))

(declare-fun b!1569899 () Bool)

(assert (=> b!1569899 (= e!875216 e!875215)))

(assert (=> b!1569899 (= c!144757 (and (is-Cons!36912 (insertStrictlySorted!595 l!750 key2!21 v2!10)) (= (_1!12778 (h!38360 (insertStrictlySorted!595 l!750 key2!21 v2!10))) key1!37)))))

(declare-fun b!1569900 () Bool)

(assert (=> b!1569900 (= e!875215 call!72136)))

(declare-fun b!1569901 () Bool)

(assert (=> b!1569901 (= e!875214 (insertStrictlySorted!595 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10)) key1!37 v1!32))))

(assert (= (and d!163897 c!144756) b!1569898))

(assert (= (and d!163897 (not c!144756)) b!1569899))

(assert (= (and b!1569899 c!144757) b!1569900))

(assert (= (and b!1569899 (not c!144757)) b!1569895))

(assert (= (and b!1569895 c!144754) b!1569894))

(assert (= (and b!1569895 (not c!144754)) b!1569897))

(assert (= (or b!1569894 b!1569897) bm!72133))

(assert (= (or b!1569900 bm!72133) bm!72134))

(assert (= (or b!1569898 bm!72134) bm!72132))

(assert (= (and bm!72132 c!144755) b!1569901))

(assert (= (and bm!72132 (not c!144755)) b!1569892))

(assert (= (and d!163897 res!1072907) b!1569893))

(assert (= (and b!1569893 res!1072906) b!1569896))

(declare-fun m!1443929 () Bool)

(assert (=> d!163897 m!1443929))

(assert (=> d!163897 m!1443875))

(declare-fun m!1443931 () Bool)

(assert (=> d!163897 m!1443931))

(declare-fun m!1443933 () Bool)

(assert (=> b!1569893 m!1443933))

(declare-fun m!1443935 () Bool)

(assert (=> b!1569896 m!1443935))

(declare-fun m!1443937 () Bool)

(assert (=> b!1569901 m!1443937))

(declare-fun m!1443939 () Bool)

(assert (=> bm!72132 m!1443939))

(assert (=> b!1569779 d!163897))

(declare-fun d!163909 () Bool)

(assert (=> d!163909 (= (insertStrictlySorted!595 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!595 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-fun lt!673284 () Unit!52036)

(declare-fun choose!2091 (List!36916 (_ BitVec 64) B!2546 (_ BitVec 64) B!2546) Unit!52036)

(assert (=> d!163909 (= lt!673284 (choose!2091 (t!51831 l!750) key1!37 v1!32 key2!21 v2!10))))

(assert (=> d!163909 (not (= key1!37 key2!21))))

(assert (=> d!163909 (= (lemmaInsertStrictlySortedCommutative!16 (t!51831 l!750) key1!37 v1!32 key2!21 v2!10) lt!673284)))

(declare-fun bs!45216 () Bool)

(assert (= bs!45216 d!163909))

(assert (=> bs!45216 m!1443865))

(assert (=> bs!45216 m!1443863))

(assert (=> bs!45216 m!1443879))

(declare-fun m!1443979 () Bool)

(assert (=> bs!45216 m!1443979))

(assert (=> bs!45216 m!1443863))

(assert (=> bs!45216 m!1443865))

(assert (=> bs!45216 m!1443867))

(assert (=> b!1569779 d!163909))

(declare-fun c!144774 () Bool)

(declare-fun c!144777 () Bool)

(declare-fun e!875239 () List!36916)

(declare-fun b!1569942 () Bool)

(assert (=> b!1569942 (= e!875239 (ite c!144777 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32)) (ite c!144774 (Cons!36912 (h!38360 (insertStrictlySorted!595 l!750 key1!37 v1!32)) (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32))) Nil!36913)))))

(declare-fun b!1569943 () Bool)

(declare-fun res!1072916 () Bool)

(declare-fun e!875238 () Bool)

(assert (=> b!1569943 (=> (not res!1072916) (not e!875238))))

(declare-fun lt!673285 () List!36916)

(assert (=> b!1569943 (= res!1072916 (containsKey!867 lt!673285 key2!21))))

(declare-fun b!1569944 () Bool)

(declare-fun e!875242 () List!36916)

(declare-fun call!72150 () List!36916)

(assert (=> b!1569944 (= e!875242 call!72150)))

(declare-fun c!144776 () Bool)

(declare-fun bm!72147 () Bool)

(declare-fun call!72152 () List!36916)

(assert (=> bm!72147 (= call!72152 ($colon$colon!1002 e!875239 (ite c!144776 (h!38360 (insertStrictlySorted!595 l!750 key1!37 v1!32)) (tuple2!25537 key2!21 v2!10))))))

(declare-fun c!144775 () Bool)

(assert (=> bm!72147 (= c!144775 c!144776)))

(declare-fun b!1569945 () Bool)

(assert (=> b!1569945 (= c!144774 (and (is-Cons!36912 (insertStrictlySorted!595 l!750 key1!37 v1!32)) (bvsgt (_1!12778 (h!38360 (insertStrictlySorted!595 l!750 key1!37 v1!32))) key2!21)))))

(declare-fun e!875240 () List!36916)

(assert (=> b!1569945 (= e!875240 e!875242)))

(declare-fun d!163919 () Bool)

(assert (=> d!163919 e!875238))

(declare-fun res!1072917 () Bool)

(assert (=> d!163919 (=> (not res!1072917) (not e!875238))))

(assert (=> d!163919 (= res!1072917 (isStrictlySorted!1017 lt!673285))))

(declare-fun e!875241 () List!36916)

(assert (=> d!163919 (= lt!673285 e!875241)))

(assert (=> d!163919 (= c!144776 (and (is-Cons!36912 (insertStrictlySorted!595 l!750 key1!37 v1!32)) (bvslt (_1!12778 (h!38360 (insertStrictlySorted!595 l!750 key1!37 v1!32))) key2!21)))))

(assert (=> d!163919 (isStrictlySorted!1017 (insertStrictlySorted!595 l!750 key1!37 v1!32))))

(assert (=> d!163919 (= (insertStrictlySorted!595 (insertStrictlySorted!595 l!750 key1!37 v1!32) key2!21 v2!10) lt!673285)))

(declare-fun b!1569946 () Bool)

(assert (=> b!1569946 (= e!875238 (contains!10445 lt!673285 (tuple2!25537 key2!21 v2!10)))))

(declare-fun bm!72148 () Bool)

(declare-fun call!72151 () List!36916)

(assert (=> bm!72148 (= call!72150 call!72151)))

(declare-fun b!1569947 () Bool)

(assert (=> b!1569947 (= e!875242 call!72150)))

(declare-fun bm!72149 () Bool)

(assert (=> bm!72149 (= call!72151 call!72152)))

(declare-fun b!1569948 () Bool)

(assert (=> b!1569948 (= e!875241 call!72152)))

(declare-fun b!1569949 () Bool)

(assert (=> b!1569949 (= e!875241 e!875240)))

(assert (=> b!1569949 (= c!144777 (and (is-Cons!36912 (insertStrictlySorted!595 l!750 key1!37 v1!32)) (= (_1!12778 (h!38360 (insertStrictlySorted!595 l!750 key1!37 v1!32))) key2!21)))))

(declare-fun b!1569950 () Bool)

(assert (=> b!1569950 (= e!875240 call!72151)))

(declare-fun b!1569951 () Bool)

(assert (=> b!1569951 (= e!875239 (insertStrictlySorted!595 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32)) key2!21 v2!10))))

(assert (= (and d!163919 c!144776) b!1569948))

(assert (= (and d!163919 (not c!144776)) b!1569949))

(assert (= (and b!1569949 c!144777) b!1569950))

(assert (= (and b!1569949 (not c!144777)) b!1569945))

(assert (= (and b!1569945 c!144774) b!1569944))

(assert (= (and b!1569945 (not c!144774)) b!1569947))

(assert (= (or b!1569944 b!1569947) bm!72148))

(assert (= (or b!1569950 bm!72148) bm!72149))

(assert (= (or b!1569948 bm!72149) bm!72147))

(assert (= (and bm!72147 c!144775) b!1569951))

(assert (= (and bm!72147 (not c!144775)) b!1569942))

(assert (= (and d!163919 res!1072917) b!1569943))

(assert (= (and b!1569943 res!1072916) b!1569946))

(declare-fun m!1443997 () Bool)

(assert (=> d!163919 m!1443997))

(assert (=> d!163919 m!1443869))

(declare-fun m!1443999 () Bool)

(assert (=> d!163919 m!1443999))

(declare-fun m!1444001 () Bool)

(assert (=> b!1569943 m!1444001))

(declare-fun m!1444003 () Bool)

(assert (=> b!1569946 m!1444003))

(declare-fun m!1444005 () Bool)

(assert (=> b!1569951 m!1444005))

(declare-fun m!1444007 () Bool)

(assert (=> bm!72147 m!1444007))

(assert (=> b!1569779 d!163919))

(declare-fun e!875254 () List!36916)

(declare-fun b!1569972 () Bool)

(declare-fun c!144786 () Bool)

(declare-fun c!144789 () Bool)

(assert (=> b!1569972 (= e!875254 (ite c!144789 (t!51831 l!750) (ite c!144786 (Cons!36912 (h!38360 l!750) (t!51831 l!750)) Nil!36913)))))

(declare-fun b!1569973 () Bool)

(declare-fun res!1072922 () Bool)

(declare-fun e!875253 () Bool)

(assert (=> b!1569973 (=> (not res!1072922) (not e!875253))))

(declare-fun lt!673290 () List!36916)

(assert (=> b!1569973 (= res!1072922 (containsKey!867 lt!673290 key2!21))))

(declare-fun b!1569974 () Bool)

(declare-fun e!875257 () List!36916)

(declare-fun call!72159 () List!36916)

(assert (=> b!1569974 (= e!875257 call!72159)))

(declare-fun bm!72156 () Bool)

(declare-fun c!144788 () Bool)

(declare-fun call!72161 () List!36916)

(assert (=> bm!72156 (= call!72161 ($colon$colon!1002 e!875254 (ite c!144788 (h!38360 l!750) (tuple2!25537 key2!21 v2!10))))))

(declare-fun c!144787 () Bool)

(assert (=> bm!72156 (= c!144787 c!144788)))

(declare-fun b!1569975 () Bool)

(assert (=> b!1569975 (= c!144786 (and (is-Cons!36912 l!750) (bvsgt (_1!12778 (h!38360 l!750)) key2!21)))))

(declare-fun e!875255 () List!36916)

(assert (=> b!1569975 (= e!875255 e!875257)))

(declare-fun d!163925 () Bool)

(assert (=> d!163925 e!875253))

(declare-fun res!1072923 () Bool)

(assert (=> d!163925 (=> (not res!1072923) (not e!875253))))

(assert (=> d!163925 (= res!1072923 (isStrictlySorted!1017 lt!673290))))

(declare-fun e!875256 () List!36916)

(assert (=> d!163925 (= lt!673290 e!875256)))

(assert (=> d!163925 (= c!144788 (and (is-Cons!36912 l!750) (bvslt (_1!12778 (h!38360 l!750)) key2!21)))))

(assert (=> d!163925 (isStrictlySorted!1017 l!750)))

(assert (=> d!163925 (= (insertStrictlySorted!595 l!750 key2!21 v2!10) lt!673290)))

(declare-fun b!1569976 () Bool)

(assert (=> b!1569976 (= e!875253 (contains!10445 lt!673290 (tuple2!25537 key2!21 v2!10)))))

(declare-fun bm!72157 () Bool)

(declare-fun call!72160 () List!36916)

(assert (=> bm!72157 (= call!72159 call!72160)))

(declare-fun b!1569977 () Bool)

(assert (=> b!1569977 (= e!875257 call!72159)))

(declare-fun bm!72158 () Bool)

(assert (=> bm!72158 (= call!72160 call!72161)))

(declare-fun b!1569978 () Bool)

(assert (=> b!1569978 (= e!875256 call!72161)))

(declare-fun b!1569979 () Bool)

(assert (=> b!1569979 (= e!875256 e!875255)))

(assert (=> b!1569979 (= c!144789 (and (is-Cons!36912 l!750) (= (_1!12778 (h!38360 l!750)) key2!21)))))

(declare-fun b!1569980 () Bool)

(assert (=> b!1569980 (= e!875255 call!72160)))

(declare-fun b!1569981 () Bool)

(assert (=> b!1569981 (= e!875254 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))))

(assert (= (and d!163925 c!144788) b!1569978))

(assert (= (and d!163925 (not c!144788)) b!1569979))

(assert (= (and b!1569979 c!144789) b!1569980))

(assert (= (and b!1569979 (not c!144789)) b!1569975))

(assert (= (and b!1569975 c!144786) b!1569974))

(assert (= (and b!1569975 (not c!144786)) b!1569977))

(assert (= (or b!1569974 b!1569977) bm!72157))

(assert (= (or b!1569980 bm!72157) bm!72158))

(assert (= (or b!1569978 bm!72158) bm!72156))

(assert (= (and bm!72156 c!144787) b!1569981))

(assert (= (and bm!72156 (not c!144787)) b!1569972))

(assert (= (and d!163925 res!1072923) b!1569973))

(assert (= (and b!1569973 res!1072922) b!1569976))

(declare-fun m!1444031 () Bool)

(assert (=> d!163925 m!1444031))

(assert (=> d!163925 m!1443859))

(declare-fun m!1444035 () Bool)

(assert (=> b!1569973 m!1444035))

(declare-fun m!1444037 () Bool)

(assert (=> b!1569976 m!1444037))

(assert (=> b!1569981 m!1443863))

(declare-fun m!1444039 () Bool)

(assert (=> bm!72156 m!1444039))

(assert (=> b!1569779 d!163925))

(declare-fun c!144805 () Bool)

(declare-fun b!1570012 () Bool)

(declare-fun c!144802 () Bool)

(declare-fun e!875274 () List!36916)

(assert (=> b!1570012 (= e!875274 (ite c!144805 (t!51831 l!750) (ite c!144802 (Cons!36912 (h!38360 l!750) (t!51831 l!750)) Nil!36913)))))

(declare-fun b!1570013 () Bool)

(declare-fun res!1072930 () Bool)

(declare-fun e!875273 () Bool)

(assert (=> b!1570013 (=> (not res!1072930) (not e!875273))))

(declare-fun lt!673295 () List!36916)

(assert (=> b!1570013 (= res!1072930 (containsKey!867 lt!673295 key1!37))))

(declare-fun b!1570014 () Bool)

(declare-fun e!875277 () List!36916)

(declare-fun call!72171 () List!36916)

(assert (=> b!1570014 (= e!875277 call!72171)))

(declare-fun call!72173 () List!36916)

(declare-fun c!144804 () Bool)

(declare-fun bm!72168 () Bool)

(assert (=> bm!72168 (= call!72173 ($colon$colon!1002 e!875274 (ite c!144804 (h!38360 l!750) (tuple2!25537 key1!37 v1!32))))))

(declare-fun c!144803 () Bool)

(assert (=> bm!72168 (= c!144803 c!144804)))

(declare-fun b!1570015 () Bool)

(assert (=> b!1570015 (= c!144802 (and (is-Cons!36912 l!750) (bvsgt (_1!12778 (h!38360 l!750)) key1!37)))))

(declare-fun e!875275 () List!36916)

(assert (=> b!1570015 (= e!875275 e!875277)))

(declare-fun d!163933 () Bool)

(assert (=> d!163933 e!875273))

(declare-fun res!1072931 () Bool)

(assert (=> d!163933 (=> (not res!1072931) (not e!875273))))

(assert (=> d!163933 (= res!1072931 (isStrictlySorted!1017 lt!673295))))

(declare-fun e!875276 () List!36916)

(assert (=> d!163933 (= lt!673295 e!875276)))

(assert (=> d!163933 (= c!144804 (and (is-Cons!36912 l!750) (bvslt (_1!12778 (h!38360 l!750)) key1!37)))))

(assert (=> d!163933 (isStrictlySorted!1017 l!750)))

(assert (=> d!163933 (= (insertStrictlySorted!595 l!750 key1!37 v1!32) lt!673295)))

(declare-fun b!1570016 () Bool)

(assert (=> b!1570016 (= e!875273 (contains!10445 lt!673295 (tuple2!25537 key1!37 v1!32)))))

(declare-fun bm!72169 () Bool)

(declare-fun call!72172 () List!36916)

(assert (=> bm!72169 (= call!72171 call!72172)))

(declare-fun b!1570017 () Bool)

(assert (=> b!1570017 (= e!875277 call!72171)))

(declare-fun bm!72170 () Bool)

(assert (=> bm!72170 (= call!72172 call!72173)))

(declare-fun b!1570018 () Bool)

(assert (=> b!1570018 (= e!875276 call!72173)))

(declare-fun b!1570019 () Bool)

(assert (=> b!1570019 (= e!875276 e!875275)))

(assert (=> b!1570019 (= c!144805 (and (is-Cons!36912 l!750) (= (_1!12778 (h!38360 l!750)) key1!37)))))

(declare-fun b!1570020 () Bool)

(assert (=> b!1570020 (= e!875275 call!72172)))

(declare-fun b!1570021 () Bool)

(assert (=> b!1570021 (= e!875274 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))))

(assert (= (and d!163933 c!144804) b!1570018))

(assert (= (and d!163933 (not c!144804)) b!1570019))

(assert (= (and b!1570019 c!144805) b!1570020))

(assert (= (and b!1570019 (not c!144805)) b!1570015))

(assert (= (and b!1570015 c!144802) b!1570014))

(assert (= (and b!1570015 (not c!144802)) b!1570017))

(assert (= (or b!1570014 b!1570017) bm!72169))

(assert (= (or b!1570020 bm!72169) bm!72170))

(assert (= (or b!1570018 bm!72170) bm!72168))

(assert (= (and bm!72168 c!144803) b!1570021))

(assert (= (and bm!72168 (not c!144803)) b!1570012))

(assert (= (and d!163933 res!1072931) b!1570013))

(assert (= (and b!1570013 res!1072930) b!1570016))

(declare-fun m!1444055 () Bool)

(assert (=> d!163933 m!1444055))

(assert (=> d!163933 m!1443859))

(declare-fun m!1444059 () Bool)

(assert (=> b!1570013 m!1444059))

(declare-fun m!1444063 () Bool)

(assert (=> b!1570016 m!1444063))

(assert (=> b!1570021 m!1443865))

(declare-fun m!1444069 () Bool)

(assert (=> bm!72168 m!1444069))

(assert (=> b!1569779 d!163933))

(declare-fun c!144811 () Bool)

(declare-fun c!144817 () Bool)

(declare-fun b!1570040 () Bool)

(declare-fun e!875289 () List!36916)

(assert (=> b!1570040 (= e!875289 (ite c!144817 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)) (ite c!144811 (Cons!36912 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)) (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))) Nil!36913)))))

(declare-fun b!1570042 () Bool)

(declare-fun res!1072936 () Bool)

(declare-fun e!875288 () Bool)

(assert (=> b!1570042 (=> (not res!1072936) (not e!875288))))

(declare-fun lt!673298 () List!36916)

(assert (=> b!1570042 (= res!1072936 (containsKey!867 lt!673298 key2!21))))

(declare-fun b!1570044 () Bool)

(declare-fun e!875292 () List!36916)

(declare-fun call!72180 () List!36916)

(assert (=> b!1570044 (= e!875292 call!72180)))

(declare-fun bm!72177 () Bool)

(declare-fun c!144816 () Bool)

(declare-fun call!72182 () List!36916)

(assert (=> bm!72177 (= call!72182 ($colon$colon!1002 e!875289 (ite c!144816 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)) (tuple2!25537 key2!21 v2!10))))))

(declare-fun c!144815 () Bool)

(assert (=> bm!72177 (= c!144815 c!144816)))

(declare-fun b!1570045 () Bool)

(assert (=> b!1570045 (= c!144811 (and (is-Cons!36912 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)) (bvsgt (_1!12778 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))) key2!21)))))

(declare-fun e!875290 () List!36916)

(assert (=> b!1570045 (= e!875290 e!875292)))

(declare-fun d!163937 () Bool)

(assert (=> d!163937 e!875288))

(declare-fun res!1072937 () Bool)

(assert (=> d!163937 (=> (not res!1072937) (not e!875288))))

(assert (=> d!163937 (= res!1072937 (isStrictlySorted!1017 lt!673298))))

(declare-fun e!875291 () List!36916)

(assert (=> d!163937 (= lt!673298 e!875291)))

(assert (=> d!163937 (= c!144816 (and (is-Cons!36912 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)) (bvslt (_1!12778 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))) key2!21)))))

(assert (=> d!163937 (isStrictlySorted!1017 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))))

(assert (=> d!163937 (= (insertStrictlySorted!595 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32) key2!21 v2!10) lt!673298)))

(declare-fun b!1570046 () Bool)

(assert (=> b!1570046 (= e!875288 (contains!10445 lt!673298 (tuple2!25537 key2!21 v2!10)))))

(declare-fun bm!72178 () Bool)

(declare-fun call!72181 () List!36916)

(assert (=> bm!72178 (= call!72180 call!72181)))

(declare-fun b!1570047 () Bool)

(assert (=> b!1570047 (= e!875292 call!72180)))

(declare-fun bm!72179 () Bool)

(assert (=> bm!72179 (= call!72181 call!72182)))

(declare-fun b!1570048 () Bool)

(assert (=> b!1570048 (= e!875291 call!72182)))

(declare-fun b!1570049 () Bool)

(assert (=> b!1570049 (= e!875291 e!875290)))

(assert (=> b!1570049 (= c!144817 (and (is-Cons!36912 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)) (= (_1!12778 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))) key2!21)))))

(declare-fun b!1570050 () Bool)

(assert (=> b!1570050 (= e!875290 call!72181)))

(declare-fun b!1570051 () Bool)

(assert (=> b!1570051 (= e!875289 (insertStrictlySorted!595 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)) key2!21 v2!10))))

(assert (= (and d!163937 c!144816) b!1570048))

(assert (= (and d!163937 (not c!144816)) b!1570049))

(assert (= (and b!1570049 c!144817) b!1570050))

(assert (= (and b!1570049 (not c!144817)) b!1570045))

(assert (= (and b!1570045 c!144811) b!1570044))

(assert (= (and b!1570045 (not c!144811)) b!1570047))

(assert (= (or b!1570044 b!1570047) bm!72178))

(assert (= (or b!1570050 bm!72178) bm!72179))

(assert (= (or b!1570048 bm!72179) bm!72177))

(assert (= (and bm!72177 c!144815) b!1570051))

(assert (= (and bm!72177 (not c!144815)) b!1570040))

(assert (= (and d!163937 res!1072937) b!1570042))

(assert (= (and b!1570042 res!1072936) b!1570046))

(declare-fun m!1444087 () Bool)

(assert (=> d!163937 m!1444087))

(assert (=> d!163937 m!1443865))

(declare-fun m!1444089 () Bool)

(assert (=> d!163937 m!1444089))

(declare-fun m!1444093 () Bool)

(assert (=> b!1570042 m!1444093))

(declare-fun m!1444095 () Bool)

(assert (=> b!1570046 m!1444095))

(declare-fun m!1444099 () Bool)

(assert (=> b!1570051 m!1444099))

(declare-fun m!1444101 () Bool)

(assert (=> bm!72177 m!1444101))

(assert (=> b!1569779 d!163937))

(declare-fun b!1570067 () Bool)

(declare-fun e!875302 () List!36916)

(declare-fun c!144822 () Bool)

(declare-fun c!144825 () Bool)

(assert (=> b!1570067 (= e!875302 (ite c!144825 (t!51831 (t!51831 l!750)) (ite c!144822 (Cons!36912 (h!38360 (t!51831 l!750)) (t!51831 (t!51831 l!750))) Nil!36913)))))

(declare-fun b!1570068 () Bool)

(declare-fun res!1072940 () Bool)

(declare-fun e!875301 () Bool)

(assert (=> b!1570068 (=> (not res!1072940) (not e!875301))))

(declare-fun lt!673300 () List!36916)

(assert (=> b!1570068 (= res!1072940 (containsKey!867 lt!673300 key2!21))))

(declare-fun b!1570069 () Bool)

(declare-fun e!875305 () List!36916)

(declare-fun call!72186 () List!36916)

(assert (=> b!1570069 (= e!875305 call!72186)))

(declare-fun c!144824 () Bool)

(declare-fun call!72188 () List!36916)

(declare-fun bm!72183 () Bool)

(assert (=> bm!72183 (= call!72188 ($colon$colon!1002 e!875302 (ite c!144824 (h!38360 (t!51831 l!750)) (tuple2!25537 key2!21 v2!10))))))

(declare-fun c!144823 () Bool)

(assert (=> bm!72183 (= c!144823 c!144824)))

(declare-fun b!1570070 () Bool)

(assert (=> b!1570070 (= c!144822 (and (is-Cons!36912 (t!51831 l!750)) (bvsgt (_1!12778 (h!38360 (t!51831 l!750))) key2!21)))))

(declare-fun e!875303 () List!36916)

(assert (=> b!1570070 (= e!875303 e!875305)))

(declare-fun d!163943 () Bool)

(assert (=> d!163943 e!875301))

(declare-fun res!1072941 () Bool)

(assert (=> d!163943 (=> (not res!1072941) (not e!875301))))

(assert (=> d!163943 (= res!1072941 (isStrictlySorted!1017 lt!673300))))

(declare-fun e!875304 () List!36916)

(assert (=> d!163943 (= lt!673300 e!875304)))

(assert (=> d!163943 (= c!144824 (and (is-Cons!36912 (t!51831 l!750)) (bvslt (_1!12778 (h!38360 (t!51831 l!750))) key2!21)))))

(assert (=> d!163943 (isStrictlySorted!1017 (t!51831 l!750))))

(assert (=> d!163943 (= (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10) lt!673300)))

(declare-fun b!1570071 () Bool)

(assert (=> b!1570071 (= e!875301 (contains!10445 lt!673300 (tuple2!25537 key2!21 v2!10)))))

(declare-fun bm!72184 () Bool)

(declare-fun call!72187 () List!36916)

(assert (=> bm!72184 (= call!72186 call!72187)))

(declare-fun b!1570072 () Bool)

(assert (=> b!1570072 (= e!875305 call!72186)))

(declare-fun bm!72185 () Bool)

(assert (=> bm!72185 (= call!72187 call!72188)))

(declare-fun b!1570073 () Bool)

(assert (=> b!1570073 (= e!875304 call!72188)))

(declare-fun b!1570074 () Bool)

(assert (=> b!1570074 (= e!875304 e!875303)))

(assert (=> b!1570074 (= c!144825 (and (is-Cons!36912 (t!51831 l!750)) (= (_1!12778 (h!38360 (t!51831 l!750))) key2!21)))))

(declare-fun b!1570075 () Bool)

(assert (=> b!1570075 (= e!875303 call!72187)))

(declare-fun b!1570076 () Bool)

(assert (=> b!1570076 (= e!875302 (insertStrictlySorted!595 (t!51831 (t!51831 l!750)) key2!21 v2!10))))

(assert (= (and d!163943 c!144824) b!1570073))

(assert (= (and d!163943 (not c!144824)) b!1570074))

(assert (= (and b!1570074 c!144825) b!1570075))

(assert (= (and b!1570074 (not c!144825)) b!1570070))

(assert (= (and b!1570070 c!144822) b!1570069))

(assert (= (and b!1570070 (not c!144822)) b!1570072))

(assert (= (or b!1570069 b!1570072) bm!72184))

(assert (= (or b!1570075 bm!72184) bm!72185))

(assert (= (or b!1570073 bm!72185) bm!72183))

(assert (= (and bm!72183 c!144823) b!1570076))

(assert (= (and bm!72183 (not c!144823)) b!1570067))

(assert (= (and d!163943 res!1072941) b!1570068))

(assert (= (and b!1570068 res!1072940) b!1570071))

(declare-fun m!1444107 () Bool)

(assert (=> d!163943 m!1444107))

(assert (=> d!163943 m!1443861))

(declare-fun m!1444111 () Bool)

(assert (=> b!1570068 m!1444111))

(declare-fun m!1444113 () Bool)

(assert (=> b!1570071 m!1444113))

(declare-fun m!1444117 () Bool)

(assert (=> b!1570076 m!1444117))

(declare-fun m!1444119 () Bool)

(assert (=> bm!72183 m!1444119))

(assert (=> b!1569779 d!163943))

(declare-fun e!875312 () List!36916)

(declare-fun b!1570087 () Bool)

(declare-fun c!144830 () Bool)

(declare-fun c!144833 () Bool)

(assert (=> b!1570087 (= e!875312 (ite c!144833 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)) (ite c!144830 (Cons!36912 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)) (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))) Nil!36913)))))

(declare-fun b!1570088 () Bool)

(declare-fun res!1072944 () Bool)

(declare-fun e!875311 () Bool)

(assert (=> b!1570088 (=> (not res!1072944) (not e!875311))))

(declare-fun lt!673302 () List!36916)

(assert (=> b!1570088 (= res!1072944 (containsKey!867 lt!673302 key1!37))))

(declare-fun b!1570089 () Bool)

(declare-fun e!875315 () List!36916)

(declare-fun call!72192 () List!36916)

(assert (=> b!1570089 (= e!875315 call!72192)))

(declare-fun bm!72189 () Bool)

(declare-fun call!72194 () List!36916)

(declare-fun c!144832 () Bool)

(assert (=> bm!72189 (= call!72194 ($colon$colon!1002 e!875312 (ite c!144832 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)) (tuple2!25537 key1!37 v1!32))))))

(declare-fun c!144831 () Bool)

(assert (=> bm!72189 (= c!144831 c!144832)))

(declare-fun b!1570090 () Bool)

(assert (=> b!1570090 (= c!144830 (and (is-Cons!36912 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)) (bvsgt (_1!12778 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))) key1!37)))))

(declare-fun e!875313 () List!36916)

(assert (=> b!1570090 (= e!875313 e!875315)))

(declare-fun d!163947 () Bool)

(assert (=> d!163947 e!875311))

(declare-fun res!1072945 () Bool)

(assert (=> d!163947 (=> (not res!1072945) (not e!875311))))

(assert (=> d!163947 (= res!1072945 (isStrictlySorted!1017 lt!673302))))

(declare-fun e!875314 () List!36916)

(assert (=> d!163947 (= lt!673302 e!875314)))

(assert (=> d!163947 (= c!144832 (and (is-Cons!36912 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)) (bvslt (_1!12778 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))) key1!37)))))

(assert (=> d!163947 (isStrictlySorted!1017 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))))

(assert (=> d!163947 (= (insertStrictlySorted!595 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10) key1!37 v1!32) lt!673302)))

(declare-fun b!1570091 () Bool)

(assert (=> b!1570091 (= e!875311 (contains!10445 lt!673302 (tuple2!25537 key1!37 v1!32)))))

(declare-fun bm!72190 () Bool)

(declare-fun call!72193 () List!36916)

(assert (=> bm!72190 (= call!72192 call!72193)))

(declare-fun b!1570092 () Bool)

(assert (=> b!1570092 (= e!875315 call!72192)))

(declare-fun bm!72191 () Bool)

(assert (=> bm!72191 (= call!72193 call!72194)))

(declare-fun b!1570093 () Bool)

(assert (=> b!1570093 (= e!875314 call!72194)))

(declare-fun b!1570094 () Bool)

(assert (=> b!1570094 (= e!875314 e!875313)))

(assert (=> b!1570094 (= c!144833 (and (is-Cons!36912 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)) (= (_1!12778 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))) key1!37)))))

(declare-fun b!1570095 () Bool)

(assert (=> b!1570095 (= e!875313 call!72193)))

(declare-fun b!1570096 () Bool)

(assert (=> b!1570096 (= e!875312 (insertStrictlySorted!595 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)) key1!37 v1!32))))

(assert (= (and d!163947 c!144832) b!1570093))

(assert (= (and d!163947 (not c!144832)) b!1570094))

(assert (= (and b!1570094 c!144833) b!1570095))

(assert (= (and b!1570094 (not c!144833)) b!1570090))

(assert (= (and b!1570090 c!144830) b!1570089))

(assert (= (and b!1570090 (not c!144830)) b!1570092))

(assert (= (or b!1570089 b!1570092) bm!72190))

(assert (= (or b!1570095 bm!72190) bm!72191))

(assert (= (or b!1570093 bm!72191) bm!72189))

(assert (= (and bm!72189 c!144831) b!1570096))

(assert (= (and bm!72189 (not c!144831)) b!1570087))

(assert (= (and d!163947 res!1072945) b!1570088))

(assert (= (and b!1570088 res!1072944) b!1570091))

(declare-fun m!1444124 () Bool)

(assert (=> d!163947 m!1444124))

(assert (=> d!163947 m!1443863))

(declare-fun m!1444128 () Bool)

(assert (=> d!163947 m!1444128))

(declare-fun m!1444131 () Bool)

(assert (=> b!1570088 m!1444131))

(declare-fun m!1444135 () Bool)

(assert (=> b!1570091 m!1444135))

(declare-fun m!1444139 () Bool)

(assert (=> b!1570096 m!1444139))

(declare-fun m!1444143 () Bool)

(assert (=> bm!72189 m!1444143))

(assert (=> b!1569779 d!163947))

(declare-fun e!875322 () List!36916)

(declare-fun c!144838 () Bool)

(declare-fun c!144841 () Bool)

(declare-fun b!1570107 () Bool)

(assert (=> b!1570107 (= e!875322 (ite c!144841 (t!51831 (t!51831 l!750)) (ite c!144838 (Cons!36912 (h!38360 (t!51831 l!750)) (t!51831 (t!51831 l!750))) Nil!36913)))))

(declare-fun b!1570108 () Bool)

(declare-fun res!1072948 () Bool)

(declare-fun e!875321 () Bool)

(assert (=> b!1570108 (=> (not res!1072948) (not e!875321))))

(declare-fun lt!673304 () List!36916)

(assert (=> b!1570108 (= res!1072948 (containsKey!867 lt!673304 key1!37))))

(declare-fun b!1570109 () Bool)

(declare-fun e!875325 () List!36916)

(declare-fun call!72198 () List!36916)

(assert (=> b!1570109 (= e!875325 call!72198)))

(declare-fun c!144840 () Bool)

(declare-fun call!72200 () List!36916)

(declare-fun bm!72195 () Bool)

(assert (=> bm!72195 (= call!72200 ($colon$colon!1002 e!875322 (ite c!144840 (h!38360 (t!51831 l!750)) (tuple2!25537 key1!37 v1!32))))))

(declare-fun c!144839 () Bool)

(assert (=> bm!72195 (= c!144839 c!144840)))

(declare-fun b!1570110 () Bool)

(assert (=> b!1570110 (= c!144838 (and (is-Cons!36912 (t!51831 l!750)) (bvsgt (_1!12778 (h!38360 (t!51831 l!750))) key1!37)))))

(declare-fun e!875323 () List!36916)

(assert (=> b!1570110 (= e!875323 e!875325)))

(declare-fun d!163951 () Bool)

(assert (=> d!163951 e!875321))

(declare-fun res!1072949 () Bool)

(assert (=> d!163951 (=> (not res!1072949) (not e!875321))))

(assert (=> d!163951 (= res!1072949 (isStrictlySorted!1017 lt!673304))))

(declare-fun e!875324 () List!36916)

(assert (=> d!163951 (= lt!673304 e!875324)))

(assert (=> d!163951 (= c!144840 (and (is-Cons!36912 (t!51831 l!750)) (bvslt (_1!12778 (h!38360 (t!51831 l!750))) key1!37)))))

(assert (=> d!163951 (isStrictlySorted!1017 (t!51831 l!750))))

(assert (=> d!163951 (= (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32) lt!673304)))

(declare-fun b!1570111 () Bool)

(assert (=> b!1570111 (= e!875321 (contains!10445 lt!673304 (tuple2!25537 key1!37 v1!32)))))

(declare-fun bm!72196 () Bool)

(declare-fun call!72199 () List!36916)

(assert (=> bm!72196 (= call!72198 call!72199)))

(declare-fun b!1570112 () Bool)

(assert (=> b!1570112 (= e!875325 call!72198)))

(declare-fun bm!72197 () Bool)

(assert (=> bm!72197 (= call!72199 call!72200)))

(declare-fun b!1570113 () Bool)

(assert (=> b!1570113 (= e!875324 call!72200)))

(declare-fun b!1570114 () Bool)

(assert (=> b!1570114 (= e!875324 e!875323)))

(assert (=> b!1570114 (= c!144841 (and (is-Cons!36912 (t!51831 l!750)) (= (_1!12778 (h!38360 (t!51831 l!750))) key1!37)))))

(declare-fun b!1570115 () Bool)

(assert (=> b!1570115 (= e!875323 call!72199)))

(declare-fun b!1570116 () Bool)

(assert (=> b!1570116 (= e!875322 (insertStrictlySorted!595 (t!51831 (t!51831 l!750)) key1!37 v1!32))))

(assert (= (and d!163951 c!144840) b!1570113))

(assert (= (and d!163951 (not c!144840)) b!1570114))

(assert (= (and b!1570114 c!144841) b!1570115))

(assert (= (and b!1570114 (not c!144841)) b!1570110))

(assert (= (and b!1570110 c!144838) b!1570109))

(assert (= (and b!1570110 (not c!144838)) b!1570112))

(assert (= (or b!1570109 b!1570112) bm!72196))

(assert (= (or b!1570115 bm!72196) bm!72197))

(assert (= (or b!1570113 bm!72197) bm!72195))

(assert (= (and bm!72195 c!144839) b!1570116))

(assert (= (and bm!72195 (not c!144839)) b!1570107))

(assert (= (and d!163951 res!1072949) b!1570108))

(assert (= (and b!1570108 res!1072948) b!1570111))

(declare-fun m!1444147 () Bool)

(assert (=> d!163951 m!1444147))

(assert (=> d!163951 m!1443861))

(declare-fun m!1444151 () Bool)

(assert (=> b!1570108 m!1444151))

(declare-fun m!1444154 () Bool)

(assert (=> b!1570111 m!1444154))

(declare-fun m!1444157 () Bool)

(assert (=> b!1570116 m!1444157))

(declare-fun m!1444162 () Bool)

(assert (=> bm!72195 m!1444162))

(assert (=> b!1569779 d!163951))

(declare-fun b!1570131 () Bool)

(declare-fun e!875333 () Bool)

(declare-fun tp!114223 () Bool)

(assert (=> b!1570131 (= e!875333 (and tp_is_empty!39097 tp!114223))))

(assert (=> b!1569776 (= tp!114211 e!875333)))

(assert (= (and b!1569776 (is-Cons!36912 (t!51831 l!750))) b!1570131))

(push 1)

(assert (not d!163897))

(assert (not d!163943))

(assert (not b!1569893))

(assert (not b!1570096))

(assert (not d!163909))

(assert (not b!1569951))

(assert (not b!1569896))

(assert (not bm!72177))

(assert (not bm!72156))

(assert (not bm!72189))

(assert (not d!163951))

(assert (not b!1569946))

(assert (not bm!72195))

(assert (not b!1570131))

(assert (not b!1570042))

(assert (not b!1569901))

(assert (not bm!72183))

(assert (not bm!72168))

(assert (not b!1570071))

(assert (not b!1569981))

(assert (not b!1569815))

(assert (not b!1569817))

(assert (not b!1570068))

(assert (not b!1569943))

(assert (not b!1570108))

(assert (not d!163947))

(assert (not b!1569976))

(assert (not b!1570013))

(assert (not b!1570111))

(assert (not b!1570051))

(assert (not b!1570091))

(assert (not b!1569973))

(assert (not d!163919))

(assert (not bm!72147))

(assert (not b!1570088))

(assert (not d!163925))

(assert (not b!1570076))

(assert (not d!163937))

(assert (not b!1570016))

(assert (not b!1570116))

(assert (not b!1570021))

(assert tp_is_empty!39097)

(assert (not b!1570046))

(assert (not bm!72132))

(assert (not d!163933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163959 () Bool)

(declare-fun res!1072960 () Bool)

(declare-fun e!875348 () Bool)

(assert (=> d!163959 (=> res!1072960 e!875348)))

(assert (=> d!163959 (= res!1072960 (and (is-Cons!36912 lt!673295) (= (_1!12778 (h!38360 lt!673295)) key1!37)))))

(assert (=> d!163959 (= (containsKey!867 lt!673295 key1!37) e!875348)))

(declare-fun b!1570153 () Bool)

(declare-fun e!875349 () Bool)

(assert (=> b!1570153 (= e!875348 e!875349)))

(declare-fun res!1072961 () Bool)

(assert (=> b!1570153 (=> (not res!1072961) (not e!875349))))

(assert (=> b!1570153 (= res!1072961 (and (or (not (is-Cons!36912 lt!673295)) (bvsle (_1!12778 (h!38360 lt!673295)) key1!37)) (is-Cons!36912 lt!673295) (bvslt (_1!12778 (h!38360 lt!673295)) key1!37)))))

(declare-fun b!1570154 () Bool)

(assert (=> b!1570154 (= e!875349 (containsKey!867 (t!51831 lt!673295) key1!37))))

(assert (= (and d!163959 (not res!1072960)) b!1570153))

(assert (= (and b!1570153 res!1072961) b!1570154))

(declare-fun m!1444189 () Bool)

(assert (=> b!1570154 m!1444189))

(assert (=> b!1570013 d!163959))

(declare-fun d!163961 () Bool)

(declare-fun res!1072962 () Bool)

(declare-fun e!875350 () Bool)

(assert (=> d!163961 (=> res!1072962 e!875350)))

(assert (=> d!163961 (= res!1072962 (or (is-Nil!36913 lt!673290) (is-Nil!36913 (t!51831 lt!673290))))))

(assert (=> d!163961 (= (isStrictlySorted!1017 lt!673290) e!875350)))

(declare-fun b!1570155 () Bool)

(declare-fun e!875351 () Bool)

(assert (=> b!1570155 (= e!875350 e!875351)))

(declare-fun res!1072963 () Bool)

(assert (=> b!1570155 (=> (not res!1072963) (not e!875351))))

(assert (=> b!1570155 (= res!1072963 (bvslt (_1!12778 (h!38360 lt!673290)) (_1!12778 (h!38360 (t!51831 lt!673290)))))))

(declare-fun b!1570156 () Bool)

(assert (=> b!1570156 (= e!875351 (isStrictlySorted!1017 (t!51831 lt!673290)))))

(assert (= (and d!163961 (not res!1072962)) b!1570155))

(assert (= (and b!1570155 res!1072963) b!1570156))

(declare-fun m!1444191 () Bool)

(assert (=> b!1570156 m!1444191))

(assert (=> d!163925 d!163961))

(assert (=> d!163925 d!163893))

(declare-fun d!163963 () Bool)

(declare-fun res!1072964 () Bool)

(declare-fun e!875352 () Bool)

(assert (=> d!163963 (=> res!1072964 e!875352)))

(assert (=> d!163963 (= res!1072964 (and (is-Cons!36912 lt!673290) (= (_1!12778 (h!38360 lt!673290)) key2!21)))))

(assert (=> d!163963 (= (containsKey!867 lt!673290 key2!21) e!875352)))

(declare-fun b!1570157 () Bool)

(declare-fun e!875353 () Bool)

(assert (=> b!1570157 (= e!875352 e!875353)))

(declare-fun res!1072965 () Bool)

(assert (=> b!1570157 (=> (not res!1072965) (not e!875353))))

(assert (=> b!1570157 (= res!1072965 (and (or (not (is-Cons!36912 lt!673290)) (bvsle (_1!12778 (h!38360 lt!673290)) key2!21)) (is-Cons!36912 lt!673290) (bvslt (_1!12778 (h!38360 lt!673290)) key2!21)))))

(declare-fun b!1570158 () Bool)

(assert (=> b!1570158 (= e!875353 (containsKey!867 (t!51831 lt!673290) key2!21))))

(assert (= (and d!163963 (not res!1072964)) b!1570157))

(assert (= (and b!1570157 res!1072965) b!1570158))

(declare-fun m!1444193 () Bool)

(assert (=> b!1570158 m!1444193))

(assert (=> b!1569973 d!163963))

(declare-fun lt!673309 () Bool)

(declare-fun d!163965 () Bool)

(declare-fun content!821 (List!36916) (Set tuple2!25536))

(assert (=> d!163965 (= lt!673309 (set.member (tuple2!25537 key2!21 v2!10) (content!821 lt!673300)))))

(declare-fun e!875358 () Bool)

(assert (=> d!163965 (= lt!673309 e!875358)))

(declare-fun res!1072970 () Bool)

(assert (=> d!163965 (=> (not res!1072970) (not e!875358))))

(assert (=> d!163965 (= res!1072970 (is-Cons!36912 lt!673300))))

(assert (=> d!163965 (= (contains!10445 lt!673300 (tuple2!25537 key2!21 v2!10)) lt!673309)))

(declare-fun b!1570163 () Bool)

(declare-fun e!875359 () Bool)

(assert (=> b!1570163 (= e!875358 e!875359)))

(declare-fun res!1072971 () Bool)

(assert (=> b!1570163 (=> res!1072971 e!875359)))

(assert (=> b!1570163 (= res!1072971 (= (h!38360 lt!673300) (tuple2!25537 key2!21 v2!10)))))

(declare-fun b!1570164 () Bool)

(assert (=> b!1570164 (= e!875359 (contains!10445 (t!51831 lt!673300) (tuple2!25537 key2!21 v2!10)))))

(assert (= (and d!163965 res!1072970) b!1570163))

(assert (= (and b!1570163 (not res!1072971)) b!1570164))

(declare-fun m!1444195 () Bool)

(assert (=> d!163965 m!1444195))

(declare-fun m!1444197 () Bool)

(assert (=> d!163965 m!1444197))

(declare-fun m!1444199 () Bool)

(assert (=> b!1570164 m!1444199))

(assert (=> b!1570071 d!163965))

(declare-fun d!163967 () Bool)

(declare-fun res!1072972 () Bool)

(declare-fun e!875360 () Bool)

(assert (=> d!163967 (=> res!1072972 e!875360)))

(assert (=> d!163967 (= res!1072972 (or (is-Nil!36913 (t!51831 (t!51831 l!750))) (is-Nil!36913 (t!51831 (t!51831 (t!51831 l!750))))))))

(assert (=> d!163967 (= (isStrictlySorted!1017 (t!51831 (t!51831 l!750))) e!875360)))

(declare-fun b!1570165 () Bool)

(declare-fun e!875361 () Bool)

(assert (=> b!1570165 (= e!875360 e!875361)))

(declare-fun res!1072973 () Bool)

(assert (=> b!1570165 (=> (not res!1072973) (not e!875361))))

(assert (=> b!1570165 (= res!1072973 (bvslt (_1!12778 (h!38360 (t!51831 (t!51831 l!750)))) (_1!12778 (h!38360 (t!51831 (t!51831 (t!51831 l!750)))))))))

(declare-fun b!1570166 () Bool)

(assert (=> b!1570166 (= e!875361 (isStrictlySorted!1017 (t!51831 (t!51831 (t!51831 l!750)))))))

(assert (= (and d!163967 (not res!1072972)) b!1570165))

(assert (= (and b!1570165 res!1072973) b!1570166))

(declare-fun m!1444201 () Bool)

(assert (=> b!1570166 m!1444201))

(assert (=> b!1569817 d!163967))

(declare-fun c!144850 () Bool)

(declare-fun c!144853 () Bool)

(declare-fun e!875363 () List!36916)

(declare-fun b!1570167 () Bool)

(assert (=> b!1570167 (= e!875363 (ite c!144853 (t!51831 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))) (ite c!144850 (Cons!36912 (h!38360 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))) (t!51831 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)))) Nil!36913)))))

(declare-fun b!1570168 () Bool)

(declare-fun res!1072974 () Bool)

(declare-fun e!875362 () Bool)

(assert (=> b!1570168 (=> (not res!1072974) (not e!875362))))

(declare-fun lt!673310 () List!36916)

(assert (=> b!1570168 (= res!1072974 (containsKey!867 lt!673310 key1!37))))

(declare-fun b!1570169 () Bool)

(declare-fun e!875366 () List!36916)

(declare-fun call!72207 () List!36916)

(assert (=> b!1570169 (= e!875366 call!72207)))

(declare-fun bm!72204 () Bool)

(declare-fun call!72209 () List!36916)

(declare-fun c!144852 () Bool)

(assert (=> bm!72204 (= call!72209 ($colon$colon!1002 e!875363 (ite c!144852 (h!38360 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))) (tuple2!25537 key1!37 v1!32))))))

(declare-fun c!144851 () Bool)

(assert (=> bm!72204 (= c!144851 c!144852)))

(declare-fun b!1570170 () Bool)

(assert (=> b!1570170 (= c!144850 (and (is-Cons!36912 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))) (bvsgt (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)))) key1!37)))))

(declare-fun e!875364 () List!36916)

(assert (=> b!1570170 (= e!875364 e!875366)))

(declare-fun d!163969 () Bool)

(assert (=> d!163969 e!875362))

(declare-fun res!1072975 () Bool)

(assert (=> d!163969 (=> (not res!1072975) (not e!875362))))

(assert (=> d!163969 (= res!1072975 (isStrictlySorted!1017 lt!673310))))

(declare-fun e!875365 () List!36916)

(assert (=> d!163969 (= lt!673310 e!875365)))

(assert (=> d!163969 (= c!144852 (and (is-Cons!36912 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))) (bvslt (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)))) key1!37)))))

(assert (=> d!163969 (isStrictlySorted!1017 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)))))

(assert (=> d!163969 (= (insertStrictlySorted!595 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)) key1!37 v1!32) lt!673310)))

(declare-fun b!1570171 () Bool)

(assert (=> b!1570171 (= e!875362 (contains!10445 lt!673310 (tuple2!25537 key1!37 v1!32)))))

(declare-fun bm!72205 () Bool)

(declare-fun call!72208 () List!36916)

(assert (=> bm!72205 (= call!72207 call!72208)))

(declare-fun b!1570172 () Bool)

(assert (=> b!1570172 (= e!875366 call!72207)))

(declare-fun bm!72206 () Bool)

(assert (=> bm!72206 (= call!72208 call!72209)))

(declare-fun b!1570173 () Bool)

(assert (=> b!1570173 (= e!875365 call!72209)))

(declare-fun b!1570174 () Bool)

(assert (=> b!1570174 (= e!875365 e!875364)))

(assert (=> b!1570174 (= c!144853 (and (is-Cons!36912 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))) (= (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)))) key1!37)))))

(declare-fun b!1570175 () Bool)

(assert (=> b!1570175 (= e!875364 call!72208)))

(declare-fun b!1570176 () Bool)

(assert (=> b!1570176 (= e!875363 (insertStrictlySorted!595 (t!51831 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))) key1!37 v1!32))))

(assert (= (and d!163969 c!144852) b!1570173))

(assert (= (and d!163969 (not c!144852)) b!1570174))

(assert (= (and b!1570174 c!144853) b!1570175))

(assert (= (and b!1570174 (not c!144853)) b!1570170))

(assert (= (and b!1570170 c!144850) b!1570169))

(assert (= (and b!1570170 (not c!144850)) b!1570172))

(assert (= (or b!1570169 b!1570172) bm!72205))

(assert (= (or b!1570175 bm!72205) bm!72206))

(assert (= (or b!1570173 bm!72206) bm!72204))

(assert (= (and bm!72204 c!144851) b!1570176))

(assert (= (and bm!72204 (not c!144851)) b!1570167))

(assert (= (and d!163969 res!1072975) b!1570168))

(assert (= (and b!1570168 res!1072974) b!1570171))

(declare-fun m!1444203 () Bool)

(assert (=> d!163969 m!1444203))

(declare-fun m!1444205 () Bool)

(assert (=> d!163969 m!1444205))

(declare-fun m!1444207 () Bool)

(assert (=> b!1570168 m!1444207))

(declare-fun m!1444209 () Bool)

(assert (=> b!1570171 m!1444209))

(declare-fun m!1444211 () Bool)

(assert (=> b!1570176 m!1444211))

(declare-fun m!1444213 () Bool)

(assert (=> bm!72204 m!1444213))

(assert (=> b!1570096 d!163969))

(declare-fun d!163971 () Bool)

(assert (=> d!163971 (= (insertStrictlySorted!595 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!595 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10) key1!37 v1!32))))

(assert (=> d!163971 true))

(declare-fun _$5!161 () Unit!52036)

(assert (=> d!163971 (= (choose!2091 (t!51831 l!750) key1!37 v1!32 key2!21 v2!10) _$5!161)))

(declare-fun bs!45218 () Bool)

(assert (= bs!45218 d!163971))

(assert (=> bs!45218 m!1443865))

(assert (=> bs!45218 m!1443865))

(assert (=> bs!45218 m!1443867))

(assert (=> bs!45218 m!1443863))

(assert (=> bs!45218 m!1443863))

(assert (=> bs!45218 m!1443879))

(assert (=> d!163909 d!163971))

(assert (=> d!163909 d!163937))

(assert (=> d!163909 d!163943))

(assert (=> d!163909 d!163947))

(assert (=> d!163909 d!163951))

(declare-fun d!163973 () Bool)

(declare-fun res!1072976 () Bool)

(declare-fun e!875367 () Bool)

(assert (=> d!163973 (=> res!1072976 e!875367)))

(assert (=> d!163973 (= res!1072976 (or (is-Nil!36913 lt!673300) (is-Nil!36913 (t!51831 lt!673300))))))

(assert (=> d!163973 (= (isStrictlySorted!1017 lt!673300) e!875367)))

(declare-fun b!1570177 () Bool)

(declare-fun e!875368 () Bool)

(assert (=> b!1570177 (= e!875367 e!875368)))

(declare-fun res!1072977 () Bool)

(assert (=> b!1570177 (=> (not res!1072977) (not e!875368))))

(assert (=> b!1570177 (= res!1072977 (bvslt (_1!12778 (h!38360 lt!673300)) (_1!12778 (h!38360 (t!51831 lt!673300)))))))

(declare-fun b!1570178 () Bool)

(assert (=> b!1570178 (= e!875368 (isStrictlySorted!1017 (t!51831 lt!673300)))))

(assert (= (and d!163973 (not res!1072976)) b!1570177))

(assert (= (and b!1570177 res!1072977) b!1570178))

(declare-fun m!1444215 () Bool)

(assert (=> b!1570178 m!1444215))

(assert (=> d!163943 d!163973))

(assert (=> d!163943 d!163895))

(declare-fun b!1570179 () Bool)

(declare-fun e!875370 () List!36916)

(declare-fun c!144854 () Bool)

(declare-fun c!144857 () Bool)

(assert (=> b!1570179 (= e!875370 (ite c!144857 (t!51831 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10))) (ite c!144854 (Cons!36912 (h!38360 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10))) (t!51831 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10)))) Nil!36913)))))

(declare-fun b!1570180 () Bool)

(declare-fun res!1072978 () Bool)

(declare-fun e!875369 () Bool)

(assert (=> b!1570180 (=> (not res!1072978) (not e!875369))))

(declare-fun lt!673311 () List!36916)

(assert (=> b!1570180 (= res!1072978 (containsKey!867 lt!673311 key1!37))))

(declare-fun b!1570181 () Bool)

(declare-fun e!875373 () List!36916)

(declare-fun call!72210 () List!36916)

(assert (=> b!1570181 (= e!875373 call!72210)))

(declare-fun bm!72207 () Bool)

(declare-fun c!144856 () Bool)

(declare-fun call!72212 () List!36916)

(assert (=> bm!72207 (= call!72212 ($colon$colon!1002 e!875370 (ite c!144856 (h!38360 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10))) (tuple2!25537 key1!37 v1!32))))))

(declare-fun c!144855 () Bool)

(assert (=> bm!72207 (= c!144855 c!144856)))

(declare-fun b!1570182 () Bool)

(assert (=> b!1570182 (= c!144854 (and (is-Cons!36912 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10))) (bvsgt (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10)))) key1!37)))))

(declare-fun e!875371 () List!36916)

(assert (=> b!1570182 (= e!875371 e!875373)))

(declare-fun d!163975 () Bool)

(assert (=> d!163975 e!875369))

(declare-fun res!1072979 () Bool)

(assert (=> d!163975 (=> (not res!1072979) (not e!875369))))

(assert (=> d!163975 (= res!1072979 (isStrictlySorted!1017 lt!673311))))

(declare-fun e!875372 () List!36916)

(assert (=> d!163975 (= lt!673311 e!875372)))

(assert (=> d!163975 (= c!144856 (and (is-Cons!36912 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10))) (bvslt (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10)))) key1!37)))))

(assert (=> d!163975 (isStrictlySorted!1017 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10)))))

(assert (=> d!163975 (= (insertStrictlySorted!595 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10)) key1!37 v1!32) lt!673311)))

(declare-fun b!1570183 () Bool)

(assert (=> b!1570183 (= e!875369 (contains!10445 lt!673311 (tuple2!25537 key1!37 v1!32)))))

(declare-fun bm!72208 () Bool)

(declare-fun call!72211 () List!36916)

(assert (=> bm!72208 (= call!72210 call!72211)))

(declare-fun b!1570184 () Bool)

(assert (=> b!1570184 (= e!875373 call!72210)))

(declare-fun bm!72209 () Bool)

(assert (=> bm!72209 (= call!72211 call!72212)))

(declare-fun b!1570185 () Bool)

(assert (=> b!1570185 (= e!875372 call!72212)))

(declare-fun b!1570186 () Bool)

(assert (=> b!1570186 (= e!875372 e!875371)))

(assert (=> b!1570186 (= c!144857 (and (is-Cons!36912 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10))) (= (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10)))) key1!37)))))

(declare-fun b!1570187 () Bool)

(assert (=> b!1570187 (= e!875371 call!72211)))

(declare-fun b!1570188 () Bool)

(assert (=> b!1570188 (= e!875370 (insertStrictlySorted!595 (t!51831 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10))) key1!37 v1!32))))

(assert (= (and d!163975 c!144856) b!1570185))

(assert (= (and d!163975 (not c!144856)) b!1570186))

(assert (= (and b!1570186 c!144857) b!1570187))

(assert (= (and b!1570186 (not c!144857)) b!1570182))

(assert (= (and b!1570182 c!144854) b!1570181))

(assert (= (and b!1570182 (not c!144854)) b!1570184))

(assert (= (or b!1570181 b!1570184) bm!72208))

(assert (= (or b!1570187 bm!72208) bm!72209))

(assert (= (or b!1570185 bm!72209) bm!72207))

(assert (= (and bm!72207 c!144855) b!1570188))

(assert (= (and bm!72207 (not c!144855)) b!1570179))

(assert (= (and d!163975 res!1072979) b!1570180))

(assert (= (and b!1570180 res!1072978) b!1570183))

(declare-fun m!1444217 () Bool)

(assert (=> d!163975 m!1444217))

(declare-fun m!1444219 () Bool)

(assert (=> d!163975 m!1444219))

(declare-fun m!1444221 () Bool)

(assert (=> b!1570180 m!1444221))

(declare-fun m!1444223 () Bool)

(assert (=> b!1570183 m!1444223))

(declare-fun m!1444225 () Bool)

(assert (=> b!1570188 m!1444225))

(declare-fun m!1444227 () Bool)

(assert (=> bm!72207 m!1444227))

(assert (=> b!1569901 d!163975))

(declare-fun e!875375 () List!36916)

(declare-fun c!144861 () Bool)

(declare-fun b!1570189 () Bool)

(declare-fun c!144858 () Bool)

(assert (=> b!1570189 (= e!875375 (ite c!144861 (t!51831 (t!51831 (t!51831 l!750))) (ite c!144858 (Cons!36912 (h!38360 (t!51831 (t!51831 l!750))) (t!51831 (t!51831 (t!51831 l!750)))) Nil!36913)))))

(declare-fun b!1570190 () Bool)

(declare-fun res!1072980 () Bool)

(declare-fun e!875374 () Bool)

(assert (=> b!1570190 (=> (not res!1072980) (not e!875374))))

(declare-fun lt!673312 () List!36916)

(assert (=> b!1570190 (= res!1072980 (containsKey!867 lt!673312 key1!37))))

(declare-fun b!1570191 () Bool)

(declare-fun e!875378 () List!36916)

(declare-fun call!72213 () List!36916)

(assert (=> b!1570191 (= e!875378 call!72213)))

(declare-fun c!144860 () Bool)

(declare-fun bm!72210 () Bool)

(declare-fun call!72215 () List!36916)

(assert (=> bm!72210 (= call!72215 ($colon$colon!1002 e!875375 (ite c!144860 (h!38360 (t!51831 (t!51831 l!750))) (tuple2!25537 key1!37 v1!32))))))

(declare-fun c!144859 () Bool)

(assert (=> bm!72210 (= c!144859 c!144860)))

(declare-fun b!1570192 () Bool)

(assert (=> b!1570192 (= c!144858 (and (is-Cons!36912 (t!51831 (t!51831 l!750))) (bvsgt (_1!12778 (h!38360 (t!51831 (t!51831 l!750)))) key1!37)))))

(declare-fun e!875376 () List!36916)

(assert (=> b!1570192 (= e!875376 e!875378)))

(declare-fun d!163977 () Bool)

(assert (=> d!163977 e!875374))

(declare-fun res!1072981 () Bool)

(assert (=> d!163977 (=> (not res!1072981) (not e!875374))))

(assert (=> d!163977 (= res!1072981 (isStrictlySorted!1017 lt!673312))))

(declare-fun e!875377 () List!36916)

(assert (=> d!163977 (= lt!673312 e!875377)))

(assert (=> d!163977 (= c!144860 (and (is-Cons!36912 (t!51831 (t!51831 l!750))) (bvslt (_1!12778 (h!38360 (t!51831 (t!51831 l!750)))) key1!37)))))

(assert (=> d!163977 (isStrictlySorted!1017 (t!51831 (t!51831 l!750)))))

(assert (=> d!163977 (= (insertStrictlySorted!595 (t!51831 (t!51831 l!750)) key1!37 v1!32) lt!673312)))

(declare-fun b!1570193 () Bool)

(assert (=> b!1570193 (= e!875374 (contains!10445 lt!673312 (tuple2!25537 key1!37 v1!32)))))

(declare-fun bm!72211 () Bool)

(declare-fun call!72214 () List!36916)

(assert (=> bm!72211 (= call!72213 call!72214)))

(declare-fun b!1570194 () Bool)

(assert (=> b!1570194 (= e!875378 call!72213)))

(declare-fun bm!72212 () Bool)

(assert (=> bm!72212 (= call!72214 call!72215)))

(declare-fun b!1570195 () Bool)

(assert (=> b!1570195 (= e!875377 call!72215)))

(declare-fun b!1570196 () Bool)

(assert (=> b!1570196 (= e!875377 e!875376)))

(assert (=> b!1570196 (= c!144861 (and (is-Cons!36912 (t!51831 (t!51831 l!750))) (= (_1!12778 (h!38360 (t!51831 (t!51831 l!750)))) key1!37)))))

(declare-fun b!1570197 () Bool)

(assert (=> b!1570197 (= e!875376 call!72214)))

(declare-fun b!1570198 () Bool)

(assert (=> b!1570198 (= e!875375 (insertStrictlySorted!595 (t!51831 (t!51831 (t!51831 l!750))) key1!37 v1!32))))

(assert (= (and d!163977 c!144860) b!1570195))

(assert (= (and d!163977 (not c!144860)) b!1570196))

(assert (= (and b!1570196 c!144861) b!1570197))

(assert (= (and b!1570196 (not c!144861)) b!1570192))

(assert (= (and b!1570192 c!144858) b!1570191))

(assert (= (and b!1570192 (not c!144858)) b!1570194))

(assert (= (or b!1570191 b!1570194) bm!72211))

(assert (= (or b!1570197 bm!72211) bm!72212))

(assert (= (or b!1570195 bm!72212) bm!72210))

(assert (= (and bm!72210 c!144859) b!1570198))

(assert (= (and bm!72210 (not c!144859)) b!1570189))

(assert (= (and d!163977 res!1072981) b!1570190))

(assert (= (and b!1570190 res!1072980) b!1570193))

(declare-fun m!1444229 () Bool)

(assert (=> d!163977 m!1444229))

(assert (=> d!163977 m!1443925))

(declare-fun m!1444231 () Bool)

(assert (=> b!1570190 m!1444231))

(declare-fun m!1444233 () Bool)

(assert (=> b!1570193 m!1444233))

(declare-fun m!1444235 () Bool)

(assert (=> b!1570198 m!1444235))

(declare-fun m!1444237 () Bool)

(assert (=> bm!72210 m!1444237))

(assert (=> b!1570116 d!163977))

(declare-fun d!163979 () Bool)

(assert (=> d!163979 (= ($colon$colon!1002 e!875302 (ite c!144824 (h!38360 (t!51831 l!750)) (tuple2!25537 key2!21 v2!10))) (Cons!36912 (ite c!144824 (h!38360 (t!51831 l!750)) (tuple2!25537 key2!21 v2!10)) e!875302))))

(assert (=> bm!72183 d!163979))

(declare-fun d!163981 () Bool)

(declare-fun res!1072982 () Bool)

(declare-fun e!875379 () Bool)

(assert (=> d!163981 (=> res!1072982 e!875379)))

(assert (=> d!163981 (= res!1072982 (and (is-Cons!36912 lt!673300) (= (_1!12778 (h!38360 lt!673300)) key2!21)))))

(assert (=> d!163981 (= (containsKey!867 lt!673300 key2!21) e!875379)))

(declare-fun b!1570199 () Bool)

(declare-fun e!875380 () Bool)

(assert (=> b!1570199 (= e!875379 e!875380)))

(declare-fun res!1072983 () Bool)

(assert (=> b!1570199 (=> (not res!1072983) (not e!875380))))

(assert (=> b!1570199 (= res!1072983 (and (or (not (is-Cons!36912 lt!673300)) (bvsle (_1!12778 (h!38360 lt!673300)) key2!21)) (is-Cons!36912 lt!673300) (bvslt (_1!12778 (h!38360 lt!673300)) key2!21)))))

(declare-fun b!1570200 () Bool)

(assert (=> b!1570200 (= e!875380 (containsKey!867 (t!51831 lt!673300) key2!21))))

(assert (= (and d!163981 (not res!1072982)) b!1570199))

(assert (= (and b!1570199 res!1072983) b!1570200))

(declare-fun m!1444239 () Bool)

(assert (=> b!1570200 m!1444239))

(assert (=> b!1570068 d!163981))

(declare-fun d!163983 () Bool)

(declare-fun res!1072984 () Bool)

(declare-fun e!875381 () Bool)

(assert (=> d!163983 (=> res!1072984 e!875381)))

(assert (=> d!163983 (= res!1072984 (or (is-Nil!36913 lt!673298) (is-Nil!36913 (t!51831 lt!673298))))))

(assert (=> d!163983 (= (isStrictlySorted!1017 lt!673298) e!875381)))

(declare-fun b!1570201 () Bool)

(declare-fun e!875382 () Bool)

(assert (=> b!1570201 (= e!875381 e!875382)))

(declare-fun res!1072985 () Bool)

(assert (=> b!1570201 (=> (not res!1072985) (not e!875382))))

(assert (=> b!1570201 (= res!1072985 (bvslt (_1!12778 (h!38360 lt!673298)) (_1!12778 (h!38360 (t!51831 lt!673298)))))))

(declare-fun b!1570202 () Bool)

(assert (=> b!1570202 (= e!875382 (isStrictlySorted!1017 (t!51831 lt!673298)))))

(assert (= (and d!163983 (not res!1072984)) b!1570201))

(assert (= (and b!1570201 res!1072985) b!1570202))

(declare-fun m!1444241 () Bool)

(assert (=> b!1570202 m!1444241))

(assert (=> d!163937 d!163983))

(declare-fun d!163985 () Bool)

(declare-fun res!1072986 () Bool)

(declare-fun e!875383 () Bool)

(assert (=> d!163985 (=> res!1072986 e!875383)))

(assert (=> d!163985 (= res!1072986 (or (is-Nil!36913 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)) (is-Nil!36913 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)))))))

(assert (=> d!163985 (= (isStrictlySorted!1017 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)) e!875383)))

(declare-fun b!1570203 () Bool)

(declare-fun e!875384 () Bool)

(assert (=> b!1570203 (= e!875383 e!875384)))

(declare-fun res!1072987 () Bool)

(assert (=> b!1570203 (=> (not res!1072987) (not e!875384))))

(assert (=> b!1570203 (= res!1072987 (bvslt (_1!12778 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))) (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))))))))

(declare-fun b!1570204 () Bool)

(assert (=> b!1570204 (= e!875384 (isStrictlySorted!1017 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))))))

(assert (= (and d!163985 (not res!1072986)) b!1570203))

(assert (= (and b!1570203 res!1072987) b!1570204))

(declare-fun m!1444243 () Bool)

(assert (=> b!1570204 m!1444243))

(assert (=> d!163937 d!163985))

(declare-fun e!875386 () List!36916)

(declare-fun c!144865 () Bool)

(declare-fun c!144862 () Bool)

(declare-fun b!1570205 () Bool)

(assert (=> b!1570205 (= e!875386 (ite c!144865 (t!51831 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))) (ite c!144862 (Cons!36912 (h!38360 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))) (t!51831 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)))) Nil!36913)))))

(declare-fun b!1570206 () Bool)

(declare-fun res!1072988 () Bool)

(declare-fun e!875385 () Bool)

(assert (=> b!1570206 (=> (not res!1072988) (not e!875385))))

(declare-fun lt!673313 () List!36916)

(assert (=> b!1570206 (= res!1072988 (containsKey!867 lt!673313 key2!21))))

(declare-fun b!1570207 () Bool)

(declare-fun e!875389 () List!36916)

(declare-fun call!72216 () List!36916)

(assert (=> b!1570207 (= e!875389 call!72216)))

(declare-fun call!72218 () List!36916)

(declare-fun bm!72213 () Bool)

(declare-fun c!144864 () Bool)

(assert (=> bm!72213 (= call!72218 ($colon$colon!1002 e!875386 (ite c!144864 (h!38360 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))) (tuple2!25537 key2!21 v2!10))))))

(declare-fun c!144863 () Bool)

(assert (=> bm!72213 (= c!144863 c!144864)))

(declare-fun b!1570208 () Bool)

(assert (=> b!1570208 (= c!144862 (and (is-Cons!36912 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))) (bvsgt (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)))) key2!21)))))

(declare-fun e!875387 () List!36916)

(assert (=> b!1570208 (= e!875387 e!875389)))

(declare-fun d!163987 () Bool)

(assert (=> d!163987 e!875385))

(declare-fun res!1072989 () Bool)

(assert (=> d!163987 (=> (not res!1072989) (not e!875385))))

(assert (=> d!163987 (= res!1072989 (isStrictlySorted!1017 lt!673313))))

(declare-fun e!875388 () List!36916)

(assert (=> d!163987 (= lt!673313 e!875388)))

(assert (=> d!163987 (= c!144864 (and (is-Cons!36912 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))) (bvslt (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)))) key2!21)))))

(assert (=> d!163987 (isStrictlySorted!1017 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)))))

(assert (=> d!163987 (= (insertStrictlySorted!595 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)) key2!21 v2!10) lt!673313)))

(declare-fun b!1570209 () Bool)

(assert (=> b!1570209 (= e!875385 (contains!10445 lt!673313 (tuple2!25537 key2!21 v2!10)))))

(declare-fun bm!72214 () Bool)

(declare-fun call!72217 () List!36916)

(assert (=> bm!72214 (= call!72216 call!72217)))

(declare-fun b!1570210 () Bool)

(assert (=> b!1570210 (= e!875389 call!72216)))

(declare-fun bm!72215 () Bool)

(assert (=> bm!72215 (= call!72217 call!72218)))

(declare-fun b!1570211 () Bool)

(assert (=> b!1570211 (= e!875388 call!72218)))

(declare-fun b!1570212 () Bool)

(assert (=> b!1570212 (= e!875388 e!875387)))

(assert (=> b!1570212 (= c!144865 (and (is-Cons!36912 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))) (= (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)))) key2!21)))))

(declare-fun b!1570213 () Bool)

(assert (=> b!1570213 (= e!875387 call!72217)))

(declare-fun b!1570214 () Bool)

(assert (=> b!1570214 (= e!875386 (insertStrictlySorted!595 (t!51831 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32))) key2!21 v2!10))))

(assert (= (and d!163987 c!144864) b!1570211))

(assert (= (and d!163987 (not c!144864)) b!1570212))

(assert (= (and b!1570212 c!144865) b!1570213))

(assert (= (and b!1570212 (not c!144865)) b!1570208))

(assert (= (and b!1570208 c!144862) b!1570207))

(assert (= (and b!1570208 (not c!144862)) b!1570210))

(assert (= (or b!1570207 b!1570210) bm!72214))

(assert (= (or b!1570213 bm!72214) bm!72215))

(assert (= (or b!1570211 bm!72215) bm!72213))

(assert (= (and bm!72213 c!144863) b!1570214))

(assert (= (and bm!72213 (not c!144863)) b!1570205))

(assert (= (and d!163987 res!1072989) b!1570206))

(assert (= (and b!1570206 res!1072988) b!1570209))

(declare-fun m!1444245 () Bool)

(assert (=> d!163987 m!1444245))

(assert (=> d!163987 m!1444243))

(declare-fun m!1444247 () Bool)

(assert (=> b!1570206 m!1444247))

(declare-fun m!1444249 () Bool)

(assert (=> b!1570209 m!1444249))

(declare-fun m!1444251 () Bool)

(assert (=> b!1570214 m!1444251))

(declare-fun m!1444253 () Bool)

(assert (=> bm!72213 m!1444253))

(assert (=> b!1570051 d!163987))

(assert (=> b!1569815 d!163895))

(declare-fun d!163989 () Bool)

(declare-fun lt!673314 () Bool)

(assert (=> d!163989 (= lt!673314 (set.member (tuple2!25537 key1!37 v1!32) (content!821 lt!673304)))))

(declare-fun e!875390 () Bool)

(assert (=> d!163989 (= lt!673314 e!875390)))

(declare-fun res!1072990 () Bool)

(assert (=> d!163989 (=> (not res!1072990) (not e!875390))))

(assert (=> d!163989 (= res!1072990 (is-Cons!36912 lt!673304))))

(assert (=> d!163989 (= (contains!10445 lt!673304 (tuple2!25537 key1!37 v1!32)) lt!673314)))

(declare-fun b!1570215 () Bool)

(declare-fun e!875391 () Bool)

(assert (=> b!1570215 (= e!875390 e!875391)))

(declare-fun res!1072991 () Bool)

(assert (=> b!1570215 (=> res!1072991 e!875391)))

(assert (=> b!1570215 (= res!1072991 (= (h!38360 lt!673304) (tuple2!25537 key1!37 v1!32)))))

(declare-fun b!1570216 () Bool)

(assert (=> b!1570216 (= e!875391 (contains!10445 (t!51831 lt!673304) (tuple2!25537 key1!37 v1!32)))))

(assert (= (and d!163989 res!1072990) b!1570215))

(assert (= (and b!1570215 (not res!1072991)) b!1570216))

(declare-fun m!1444255 () Bool)

(assert (=> d!163989 m!1444255))

(declare-fun m!1444257 () Bool)

(assert (=> d!163989 m!1444257))

(declare-fun m!1444259 () Bool)

(assert (=> b!1570216 m!1444259))

(assert (=> b!1570111 d!163989))

(assert (=> b!1570021 d!163951))

(declare-fun d!163991 () Bool)

(declare-fun lt!673315 () Bool)

(assert (=> d!163991 (= lt!673315 (set.member (tuple2!25537 key1!37 v1!32) (content!821 lt!673274)))))

(declare-fun e!875392 () Bool)

(assert (=> d!163991 (= lt!673315 e!875392)))

(declare-fun res!1072992 () Bool)

(assert (=> d!163991 (=> (not res!1072992) (not e!875392))))

(assert (=> d!163991 (= res!1072992 (is-Cons!36912 lt!673274))))

(assert (=> d!163991 (= (contains!10445 lt!673274 (tuple2!25537 key1!37 v1!32)) lt!673315)))

(declare-fun b!1570217 () Bool)

(declare-fun e!875393 () Bool)

(assert (=> b!1570217 (= e!875392 e!875393)))

(declare-fun res!1072993 () Bool)

(assert (=> b!1570217 (=> res!1072993 e!875393)))

(assert (=> b!1570217 (= res!1072993 (= (h!38360 lt!673274) (tuple2!25537 key1!37 v1!32)))))

(declare-fun b!1570218 () Bool)

(assert (=> b!1570218 (= e!875393 (contains!10445 (t!51831 lt!673274) (tuple2!25537 key1!37 v1!32)))))

(assert (= (and d!163991 res!1072992) b!1570217))

(assert (= (and b!1570217 (not res!1072993)) b!1570218))

(declare-fun m!1444261 () Bool)

(assert (=> d!163991 m!1444261))

(declare-fun m!1444263 () Bool)

(assert (=> d!163991 m!1444263))

(declare-fun m!1444265 () Bool)

(assert (=> b!1570218 m!1444265))

(assert (=> b!1569896 d!163991))

(declare-fun d!163993 () Bool)

(declare-fun lt!673316 () Bool)

(assert (=> d!163993 (= lt!673316 (set.member (tuple2!25537 key2!21 v2!10) (content!821 lt!673285)))))

(declare-fun e!875394 () Bool)

(assert (=> d!163993 (= lt!673316 e!875394)))

(declare-fun res!1072994 () Bool)

(assert (=> d!163993 (=> (not res!1072994) (not e!875394))))

(assert (=> d!163993 (= res!1072994 (is-Cons!36912 lt!673285))))

(assert (=> d!163993 (= (contains!10445 lt!673285 (tuple2!25537 key2!21 v2!10)) lt!673316)))

(declare-fun b!1570219 () Bool)

(declare-fun e!875395 () Bool)

(assert (=> b!1570219 (= e!875394 e!875395)))

(declare-fun res!1072995 () Bool)

(assert (=> b!1570219 (=> res!1072995 e!875395)))

(assert (=> b!1570219 (= res!1072995 (= (h!38360 lt!673285) (tuple2!25537 key2!21 v2!10)))))

(declare-fun b!1570220 () Bool)

(assert (=> b!1570220 (= e!875395 (contains!10445 (t!51831 lt!673285) (tuple2!25537 key2!21 v2!10)))))

(assert (= (and d!163993 res!1072994) b!1570219))

(assert (= (and b!1570219 (not res!1072995)) b!1570220))

(declare-fun m!1444267 () Bool)

(assert (=> d!163993 m!1444267))

(declare-fun m!1444269 () Bool)

(assert (=> d!163993 m!1444269))

(declare-fun m!1444271 () Bool)

(assert (=> b!1570220 m!1444271))

(assert (=> b!1569946 d!163993))

(assert (=> b!1569981 d!163943))

(declare-fun d!163995 () Bool)

(declare-fun lt!673317 () Bool)

(assert (=> d!163995 (= lt!673317 (set.member (tuple2!25537 key1!37 v1!32) (content!821 lt!673302)))))

(declare-fun e!875396 () Bool)

(assert (=> d!163995 (= lt!673317 e!875396)))

(declare-fun res!1072996 () Bool)

(assert (=> d!163995 (=> (not res!1072996) (not e!875396))))

(assert (=> d!163995 (= res!1072996 (is-Cons!36912 lt!673302))))

(assert (=> d!163995 (= (contains!10445 lt!673302 (tuple2!25537 key1!37 v1!32)) lt!673317)))

(declare-fun b!1570221 () Bool)

(declare-fun e!875397 () Bool)

(assert (=> b!1570221 (= e!875396 e!875397)))

(declare-fun res!1072997 () Bool)

(assert (=> b!1570221 (=> res!1072997 e!875397)))

(assert (=> b!1570221 (= res!1072997 (= (h!38360 lt!673302) (tuple2!25537 key1!37 v1!32)))))

(declare-fun b!1570222 () Bool)

(assert (=> b!1570222 (= e!875397 (contains!10445 (t!51831 lt!673302) (tuple2!25537 key1!37 v1!32)))))

(assert (= (and d!163995 res!1072996) b!1570221))

(assert (= (and b!1570221 (not res!1072997)) b!1570222))

(declare-fun m!1444273 () Bool)

(assert (=> d!163995 m!1444273))

(declare-fun m!1444275 () Bool)

(assert (=> d!163995 m!1444275))

(declare-fun m!1444277 () Bool)

(assert (=> b!1570222 m!1444277))

(assert (=> b!1570091 d!163995))

(declare-fun d!163997 () Bool)

(assert (=> d!163997 (= ($colon$colon!1002 e!875322 (ite c!144840 (h!38360 (t!51831 l!750)) (tuple2!25537 key1!37 v1!32))) (Cons!36912 (ite c!144840 (h!38360 (t!51831 l!750)) (tuple2!25537 key1!37 v1!32)) e!875322))))

(assert (=> bm!72195 d!163997))

(declare-fun d!163999 () Bool)

(declare-fun res!1072998 () Bool)

(declare-fun e!875398 () Bool)

(assert (=> d!163999 (=> res!1072998 e!875398)))

(assert (=> d!163999 (= res!1072998 (or (is-Nil!36913 lt!673285) (is-Nil!36913 (t!51831 lt!673285))))))

(assert (=> d!163999 (= (isStrictlySorted!1017 lt!673285) e!875398)))

(declare-fun b!1570223 () Bool)

(declare-fun e!875399 () Bool)

(assert (=> b!1570223 (= e!875398 e!875399)))

(declare-fun res!1072999 () Bool)

(assert (=> b!1570223 (=> (not res!1072999) (not e!875399))))

(assert (=> b!1570223 (= res!1072999 (bvslt (_1!12778 (h!38360 lt!673285)) (_1!12778 (h!38360 (t!51831 lt!673285)))))))

(declare-fun b!1570224 () Bool)

(assert (=> b!1570224 (= e!875399 (isStrictlySorted!1017 (t!51831 lt!673285)))))

(assert (= (and d!163999 (not res!1072998)) b!1570223))

(assert (= (and b!1570223 res!1072999) b!1570224))

(declare-fun m!1444279 () Bool)

(assert (=> b!1570224 m!1444279))

(assert (=> d!163919 d!163999))

(declare-fun d!164001 () Bool)

(declare-fun res!1073000 () Bool)

(declare-fun e!875400 () Bool)

(assert (=> d!164001 (=> res!1073000 e!875400)))

(assert (=> d!164001 (= res!1073000 (or (is-Nil!36913 (insertStrictlySorted!595 l!750 key1!37 v1!32)) (is-Nil!36913 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32)))))))

(assert (=> d!164001 (= (isStrictlySorted!1017 (insertStrictlySorted!595 l!750 key1!37 v1!32)) e!875400)))

(declare-fun b!1570225 () Bool)

(declare-fun e!875401 () Bool)

(assert (=> b!1570225 (= e!875400 e!875401)))

(declare-fun res!1073001 () Bool)

(assert (=> b!1570225 (=> (not res!1073001) (not e!875401))))

(assert (=> b!1570225 (= res!1073001 (bvslt (_1!12778 (h!38360 (insertStrictlySorted!595 l!750 key1!37 v1!32))) (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32))))))))

(declare-fun b!1570226 () Bool)

(assert (=> b!1570226 (= e!875401 (isStrictlySorted!1017 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32))))))

(assert (= (and d!164001 (not res!1073000)) b!1570225))

(assert (= (and b!1570225 res!1073001) b!1570226))

(declare-fun m!1444281 () Bool)

(assert (=> b!1570226 m!1444281))

(assert (=> d!163919 d!164001))

(declare-fun d!164003 () Bool)

(declare-fun res!1073002 () Bool)

(declare-fun e!875402 () Bool)

(assert (=> d!164003 (=> res!1073002 e!875402)))

(assert (=> d!164003 (= res!1073002 (and (is-Cons!36912 lt!673285) (= (_1!12778 (h!38360 lt!673285)) key2!21)))))

(assert (=> d!164003 (= (containsKey!867 lt!673285 key2!21) e!875402)))

(declare-fun b!1570227 () Bool)

(declare-fun e!875403 () Bool)

(assert (=> b!1570227 (= e!875402 e!875403)))

(declare-fun res!1073003 () Bool)

(assert (=> b!1570227 (=> (not res!1073003) (not e!875403))))

(assert (=> b!1570227 (= res!1073003 (and (or (not (is-Cons!36912 lt!673285)) (bvsle (_1!12778 (h!38360 lt!673285)) key2!21)) (is-Cons!36912 lt!673285) (bvslt (_1!12778 (h!38360 lt!673285)) key2!21)))))

(declare-fun b!1570228 () Bool)

(assert (=> b!1570228 (= e!875403 (containsKey!867 (t!51831 lt!673285) key2!21))))

(assert (= (and d!164003 (not res!1073002)) b!1570227))

(assert (= (and b!1570227 res!1073003) b!1570228))

(declare-fun m!1444283 () Bool)

(assert (=> b!1570228 m!1444283))

(assert (=> b!1569943 d!164003))

(declare-fun d!164005 () Bool)

(declare-fun res!1073004 () Bool)

(declare-fun e!875404 () Bool)

(assert (=> d!164005 (=> res!1073004 e!875404)))

(assert (=> d!164005 (= res!1073004 (and (is-Cons!36912 lt!673302) (= (_1!12778 (h!38360 lt!673302)) key1!37)))))

(assert (=> d!164005 (= (containsKey!867 lt!673302 key1!37) e!875404)))

(declare-fun b!1570229 () Bool)

(declare-fun e!875405 () Bool)

(assert (=> b!1570229 (= e!875404 e!875405)))

(declare-fun res!1073005 () Bool)

(assert (=> b!1570229 (=> (not res!1073005) (not e!875405))))

(assert (=> b!1570229 (= res!1073005 (and (or (not (is-Cons!36912 lt!673302)) (bvsle (_1!12778 (h!38360 lt!673302)) key1!37)) (is-Cons!36912 lt!673302) (bvslt (_1!12778 (h!38360 lt!673302)) key1!37)))))

(declare-fun b!1570230 () Bool)

(assert (=> b!1570230 (= e!875405 (containsKey!867 (t!51831 lt!673302) key1!37))))

(assert (= (and d!164005 (not res!1073004)) b!1570229))

(assert (= (and b!1570229 res!1073005) b!1570230))

(declare-fun m!1444285 () Bool)

(assert (=> b!1570230 m!1444285))

(assert (=> b!1570088 d!164005))

(declare-fun lt!673318 () Bool)

(declare-fun d!164007 () Bool)

(assert (=> d!164007 (= lt!673318 (set.member (tuple2!25537 key2!21 v2!10) (content!821 lt!673298)))))

(declare-fun e!875406 () Bool)

(assert (=> d!164007 (= lt!673318 e!875406)))

(declare-fun res!1073006 () Bool)

(assert (=> d!164007 (=> (not res!1073006) (not e!875406))))

(assert (=> d!164007 (= res!1073006 (is-Cons!36912 lt!673298))))

(assert (=> d!164007 (= (contains!10445 lt!673298 (tuple2!25537 key2!21 v2!10)) lt!673318)))

(declare-fun b!1570231 () Bool)

(declare-fun e!875407 () Bool)

(assert (=> b!1570231 (= e!875406 e!875407)))

(declare-fun res!1073007 () Bool)

(assert (=> b!1570231 (=> res!1073007 e!875407)))

(assert (=> b!1570231 (= res!1073007 (= (h!38360 lt!673298) (tuple2!25537 key2!21 v2!10)))))

(declare-fun b!1570232 () Bool)

(assert (=> b!1570232 (= e!875407 (contains!10445 (t!51831 lt!673298) (tuple2!25537 key2!21 v2!10)))))

(assert (= (and d!164007 res!1073006) b!1570231))

(assert (= (and b!1570231 (not res!1073007)) b!1570232))

(declare-fun m!1444287 () Bool)

(assert (=> d!164007 m!1444287))

(declare-fun m!1444289 () Bool)

(assert (=> d!164007 m!1444289))

(declare-fun m!1444291 () Bool)

(assert (=> b!1570232 m!1444291))

(assert (=> b!1570046 d!164007))

(declare-fun d!164009 () Bool)

(assert (=> d!164009 (= ($colon$colon!1002 e!875239 (ite c!144776 (h!38360 (insertStrictlySorted!595 l!750 key1!37 v1!32)) (tuple2!25537 key2!21 v2!10))) (Cons!36912 (ite c!144776 (h!38360 (insertStrictlySorted!595 l!750 key1!37 v1!32)) (tuple2!25537 key2!21 v2!10)) e!875239))))

(assert (=> bm!72147 d!164009))

(declare-fun d!164011 () Bool)

(assert (=> d!164011 (= ($colon$colon!1002 e!875312 (ite c!144832 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)) (tuple2!25537 key1!37 v1!32))) (Cons!36912 (ite c!144832 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)) (tuple2!25537 key1!37 v1!32)) e!875312))))

(assert (=> bm!72189 d!164011))

(declare-fun d!164013 () Bool)

(assert (=> d!164013 (= ($colon$colon!1002 e!875214 (ite c!144756 (h!38360 (insertStrictlySorted!595 l!750 key2!21 v2!10)) (tuple2!25537 key1!37 v1!32))) (Cons!36912 (ite c!144756 (h!38360 (insertStrictlySorted!595 l!750 key2!21 v2!10)) (tuple2!25537 key1!37 v1!32)) e!875214))))

(assert (=> bm!72132 d!164013))

(declare-fun d!164015 () Bool)

(declare-fun res!1073008 () Bool)

(declare-fun e!875408 () Bool)

(assert (=> d!164015 (=> res!1073008 e!875408)))

(assert (=> d!164015 (= res!1073008 (or (is-Nil!36913 lt!673295) (is-Nil!36913 (t!51831 lt!673295))))))

(assert (=> d!164015 (= (isStrictlySorted!1017 lt!673295) e!875408)))

(declare-fun b!1570233 () Bool)

(declare-fun e!875409 () Bool)

(assert (=> b!1570233 (= e!875408 e!875409)))

(declare-fun res!1073009 () Bool)

(assert (=> b!1570233 (=> (not res!1073009) (not e!875409))))

(assert (=> b!1570233 (= res!1073009 (bvslt (_1!12778 (h!38360 lt!673295)) (_1!12778 (h!38360 (t!51831 lt!673295)))))))

(declare-fun b!1570234 () Bool)

(assert (=> b!1570234 (= e!875409 (isStrictlySorted!1017 (t!51831 lt!673295)))))

(assert (= (and d!164015 (not res!1073008)) b!1570233))

(assert (= (and b!1570233 res!1073009) b!1570234))

(declare-fun m!1444293 () Bool)

(assert (=> b!1570234 m!1444293))

(assert (=> d!163933 d!164015))

(assert (=> d!163933 d!163893))

(declare-fun d!164017 () Bool)

(declare-fun res!1073010 () Bool)

(declare-fun e!875410 () Bool)

(assert (=> d!164017 (=> res!1073010 e!875410)))

(assert (=> d!164017 (= res!1073010 (and (is-Cons!36912 lt!673274) (= (_1!12778 (h!38360 lt!673274)) key1!37)))))

(assert (=> d!164017 (= (containsKey!867 lt!673274 key1!37) e!875410)))

(declare-fun b!1570235 () Bool)

(declare-fun e!875411 () Bool)

(assert (=> b!1570235 (= e!875410 e!875411)))

(declare-fun res!1073011 () Bool)

(assert (=> b!1570235 (=> (not res!1073011) (not e!875411))))

(assert (=> b!1570235 (= res!1073011 (and (or (not (is-Cons!36912 lt!673274)) (bvsle (_1!12778 (h!38360 lt!673274)) key1!37)) (is-Cons!36912 lt!673274) (bvslt (_1!12778 (h!38360 lt!673274)) key1!37)))))

(declare-fun b!1570236 () Bool)

(assert (=> b!1570236 (= e!875411 (containsKey!867 (t!51831 lt!673274) key1!37))))

(assert (= (and d!164017 (not res!1073010)) b!1570235))

(assert (= (and b!1570235 res!1073011) b!1570236))

(declare-fun m!1444295 () Bool)

(assert (=> b!1570236 m!1444295))

(assert (=> b!1569893 d!164017))

(declare-fun lt!673319 () Bool)

(declare-fun d!164019 () Bool)

(assert (=> d!164019 (= lt!673319 (set.member (tuple2!25537 key1!37 v1!32) (content!821 lt!673295)))))

(declare-fun e!875412 () Bool)

(assert (=> d!164019 (= lt!673319 e!875412)))

(declare-fun res!1073012 () Bool)

(assert (=> d!164019 (=> (not res!1073012) (not e!875412))))

(assert (=> d!164019 (= res!1073012 (is-Cons!36912 lt!673295))))

(assert (=> d!164019 (= (contains!10445 lt!673295 (tuple2!25537 key1!37 v1!32)) lt!673319)))

(declare-fun b!1570237 () Bool)

(declare-fun e!875413 () Bool)

(assert (=> b!1570237 (= e!875412 e!875413)))

(declare-fun res!1073013 () Bool)

(assert (=> b!1570237 (=> res!1073013 e!875413)))

(assert (=> b!1570237 (= res!1073013 (= (h!38360 lt!673295) (tuple2!25537 key1!37 v1!32)))))

(declare-fun b!1570238 () Bool)

(assert (=> b!1570238 (= e!875413 (contains!10445 (t!51831 lt!673295) (tuple2!25537 key1!37 v1!32)))))

(assert (= (and d!164019 res!1073012) b!1570237))

(assert (= (and b!1570237 (not res!1073013)) b!1570238))

(declare-fun m!1444297 () Bool)

(assert (=> d!164019 m!1444297))

(declare-fun m!1444299 () Bool)

(assert (=> d!164019 m!1444299))

(declare-fun m!1444301 () Bool)

(assert (=> b!1570238 m!1444301))

(assert (=> b!1570016 d!164019))

(declare-fun d!164021 () Bool)

(assert (=> d!164021 (= ($colon$colon!1002 e!875289 (ite c!144816 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)) (tuple2!25537 key2!21 v2!10))) (Cons!36912 (ite c!144816 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key1!37 v1!32)) (tuple2!25537 key2!21 v2!10)) e!875289))))

(assert (=> bm!72177 d!164021))

(declare-fun d!164023 () Bool)

(declare-fun res!1073014 () Bool)

(declare-fun e!875414 () Bool)

(assert (=> d!164023 (=> res!1073014 e!875414)))

(assert (=> d!164023 (= res!1073014 (or (is-Nil!36913 lt!673302) (is-Nil!36913 (t!51831 lt!673302))))))

(assert (=> d!164023 (= (isStrictlySorted!1017 lt!673302) e!875414)))

(declare-fun b!1570239 () Bool)

(declare-fun e!875415 () Bool)

(assert (=> b!1570239 (= e!875414 e!875415)))

(declare-fun res!1073015 () Bool)

(assert (=> b!1570239 (=> (not res!1073015) (not e!875415))))

(assert (=> b!1570239 (= res!1073015 (bvslt (_1!12778 (h!38360 lt!673302)) (_1!12778 (h!38360 (t!51831 lt!673302)))))))

(declare-fun b!1570240 () Bool)

(assert (=> b!1570240 (= e!875415 (isStrictlySorted!1017 (t!51831 lt!673302)))))

(assert (= (and d!164023 (not res!1073014)) b!1570239))

(assert (= (and b!1570239 res!1073015) b!1570240))

(declare-fun m!1444303 () Bool)

(assert (=> b!1570240 m!1444303))

(assert (=> d!163947 d!164023))

(declare-fun d!164025 () Bool)

(declare-fun res!1073016 () Bool)

(declare-fun e!875416 () Bool)

(assert (=> d!164025 (=> res!1073016 e!875416)))

(assert (=> d!164025 (= res!1073016 (or (is-Nil!36913 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)) (is-Nil!36913 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)))))))

(assert (=> d!164025 (= (isStrictlySorted!1017 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10)) e!875416)))

(declare-fun b!1570241 () Bool)

(declare-fun e!875417 () Bool)

(assert (=> b!1570241 (= e!875416 e!875417)))

(declare-fun res!1073017 () Bool)

(assert (=> b!1570241 (=> (not res!1073017) (not e!875417))))

(assert (=> b!1570241 (= res!1073017 (bvslt (_1!12778 (h!38360 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))) (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))))))))

(declare-fun b!1570242 () Bool)

(assert (=> b!1570242 (= e!875417 (isStrictlySorted!1017 (t!51831 (insertStrictlySorted!595 (t!51831 l!750) key2!21 v2!10))))))

(assert (= (and d!164025 (not res!1073016)) b!1570241))

(assert (= (and b!1570241 res!1073017) b!1570242))

(assert (=> b!1570242 m!1444205))

(assert (=> d!163947 d!164025))

(declare-fun d!164027 () Bool)

(declare-fun lt!673320 () Bool)

(assert (=> d!164027 (= lt!673320 (set.member (tuple2!25537 key2!21 v2!10) (content!821 lt!673290)))))

(declare-fun e!875418 () Bool)

(assert (=> d!164027 (= lt!673320 e!875418)))

(declare-fun res!1073018 () Bool)

(assert (=> d!164027 (=> (not res!1073018) (not e!875418))))

(assert (=> d!164027 (= res!1073018 (is-Cons!36912 lt!673290))))

(assert (=> d!164027 (= (contains!10445 lt!673290 (tuple2!25537 key2!21 v2!10)) lt!673320)))

(declare-fun b!1570243 () Bool)

(declare-fun e!875419 () Bool)

(assert (=> b!1570243 (= e!875418 e!875419)))

(declare-fun res!1073019 () Bool)

(assert (=> b!1570243 (=> res!1073019 e!875419)))

(assert (=> b!1570243 (= res!1073019 (= (h!38360 lt!673290) (tuple2!25537 key2!21 v2!10)))))

(declare-fun b!1570244 () Bool)

(assert (=> b!1570244 (= e!875419 (contains!10445 (t!51831 lt!673290) (tuple2!25537 key2!21 v2!10)))))

(assert (= (and d!164027 res!1073018) b!1570243))

(assert (= (and b!1570243 (not res!1073019)) b!1570244))

(declare-fun m!1444305 () Bool)

(assert (=> d!164027 m!1444305))

(declare-fun m!1444307 () Bool)

(assert (=> d!164027 m!1444307))

(declare-fun m!1444309 () Bool)

(assert (=> b!1570244 m!1444309))

(assert (=> b!1569976 d!164027))

(declare-fun e!875421 () List!36916)

(declare-fun c!144869 () Bool)

(declare-fun b!1570245 () Bool)

(declare-fun c!144866 () Bool)

(assert (=> b!1570245 (= e!875421 (ite c!144869 (t!51831 (t!51831 (t!51831 l!750))) (ite c!144866 (Cons!36912 (h!38360 (t!51831 (t!51831 l!750))) (t!51831 (t!51831 (t!51831 l!750)))) Nil!36913)))))

(declare-fun b!1570246 () Bool)

(declare-fun res!1073020 () Bool)

(declare-fun e!875420 () Bool)

(assert (=> b!1570246 (=> (not res!1073020) (not e!875420))))

(declare-fun lt!673321 () List!36916)

(assert (=> b!1570246 (= res!1073020 (containsKey!867 lt!673321 key2!21))))

(declare-fun b!1570247 () Bool)

(declare-fun e!875424 () List!36916)

(declare-fun call!72219 () List!36916)

(assert (=> b!1570247 (= e!875424 call!72219)))

(declare-fun bm!72216 () Bool)

(declare-fun call!72221 () List!36916)

(declare-fun c!144868 () Bool)

(assert (=> bm!72216 (= call!72221 ($colon$colon!1002 e!875421 (ite c!144868 (h!38360 (t!51831 (t!51831 l!750))) (tuple2!25537 key2!21 v2!10))))))

(declare-fun c!144867 () Bool)

(assert (=> bm!72216 (= c!144867 c!144868)))

(declare-fun b!1570248 () Bool)

(assert (=> b!1570248 (= c!144866 (and (is-Cons!36912 (t!51831 (t!51831 l!750))) (bvsgt (_1!12778 (h!38360 (t!51831 (t!51831 l!750)))) key2!21)))))

(declare-fun e!875422 () List!36916)

(assert (=> b!1570248 (= e!875422 e!875424)))

(declare-fun d!164029 () Bool)

(assert (=> d!164029 e!875420))

(declare-fun res!1073021 () Bool)

(assert (=> d!164029 (=> (not res!1073021) (not e!875420))))

(assert (=> d!164029 (= res!1073021 (isStrictlySorted!1017 lt!673321))))

(declare-fun e!875423 () List!36916)

(assert (=> d!164029 (= lt!673321 e!875423)))

(assert (=> d!164029 (= c!144868 (and (is-Cons!36912 (t!51831 (t!51831 l!750))) (bvslt (_1!12778 (h!38360 (t!51831 (t!51831 l!750)))) key2!21)))))

(assert (=> d!164029 (isStrictlySorted!1017 (t!51831 (t!51831 l!750)))))

(assert (=> d!164029 (= (insertStrictlySorted!595 (t!51831 (t!51831 l!750)) key2!21 v2!10) lt!673321)))

(declare-fun b!1570249 () Bool)

(assert (=> b!1570249 (= e!875420 (contains!10445 lt!673321 (tuple2!25537 key2!21 v2!10)))))

(declare-fun bm!72217 () Bool)

(declare-fun call!72220 () List!36916)

(assert (=> bm!72217 (= call!72219 call!72220)))

(declare-fun b!1570250 () Bool)

(assert (=> b!1570250 (= e!875424 call!72219)))

(declare-fun bm!72218 () Bool)

(assert (=> bm!72218 (= call!72220 call!72221)))

(declare-fun b!1570251 () Bool)

(assert (=> b!1570251 (= e!875423 call!72221)))

(declare-fun b!1570252 () Bool)

(assert (=> b!1570252 (= e!875423 e!875422)))

(assert (=> b!1570252 (= c!144869 (and (is-Cons!36912 (t!51831 (t!51831 l!750))) (= (_1!12778 (h!38360 (t!51831 (t!51831 l!750)))) key2!21)))))

(declare-fun b!1570253 () Bool)

(assert (=> b!1570253 (= e!875422 call!72220)))

(declare-fun b!1570254 () Bool)

(assert (=> b!1570254 (= e!875421 (insertStrictlySorted!595 (t!51831 (t!51831 (t!51831 l!750))) key2!21 v2!10))))

(assert (= (and d!164029 c!144868) b!1570251))

(assert (= (and d!164029 (not c!144868)) b!1570252))

(assert (= (and b!1570252 c!144869) b!1570253))

(assert (= (and b!1570252 (not c!144869)) b!1570248))

(assert (= (and b!1570248 c!144866) b!1570247))

(assert (= (and b!1570248 (not c!144866)) b!1570250))

(assert (= (or b!1570247 b!1570250) bm!72217))

(assert (= (or b!1570253 bm!72217) bm!72218))

(assert (= (or b!1570251 bm!72218) bm!72216))

(assert (= (and bm!72216 c!144867) b!1570254))

(assert (= (and bm!72216 (not c!144867)) b!1570245))

(assert (= (and d!164029 res!1073021) b!1570246))

(assert (= (and b!1570246 res!1073020) b!1570249))

(declare-fun m!1444311 () Bool)

(assert (=> d!164029 m!1444311))

(assert (=> d!164029 m!1443925))

(declare-fun m!1444313 () Bool)

(assert (=> b!1570246 m!1444313))

(declare-fun m!1444315 () Bool)

(assert (=> b!1570249 m!1444315))

(declare-fun m!1444317 () Bool)

(assert (=> b!1570254 m!1444317))

(declare-fun m!1444319 () Bool)

(assert (=> bm!72216 m!1444319))

(assert (=> b!1570076 d!164029))

(declare-fun d!164031 () Bool)

(declare-fun res!1073022 () Bool)

(declare-fun e!875425 () Bool)

(assert (=> d!164031 (=> res!1073022 e!875425)))

(assert (=> d!164031 (= res!1073022 (and (is-Cons!36912 lt!673304) (= (_1!12778 (h!38360 lt!673304)) key1!37)))))

(assert (=> d!164031 (= (containsKey!867 lt!673304 key1!37) e!875425)))

(declare-fun b!1570255 () Bool)

(declare-fun e!875426 () Bool)

(assert (=> b!1570255 (= e!875425 e!875426)))

(declare-fun res!1073023 () Bool)

(assert (=> b!1570255 (=> (not res!1073023) (not e!875426))))

(assert (=> b!1570255 (= res!1073023 (and (or (not (is-Cons!36912 lt!673304)) (bvsle (_1!12778 (h!38360 lt!673304)) key1!37)) (is-Cons!36912 lt!673304) (bvslt (_1!12778 (h!38360 lt!673304)) key1!37)))))

(declare-fun b!1570256 () Bool)

(assert (=> b!1570256 (= e!875426 (containsKey!867 (t!51831 lt!673304) key1!37))))

(assert (= (and d!164031 (not res!1073022)) b!1570255))

(assert (= (and b!1570255 res!1073023) b!1570256))

(declare-fun m!1444321 () Bool)

(assert (=> b!1570256 m!1444321))

(assert (=> b!1570108 d!164031))

(declare-fun d!164033 () Bool)

(assert (=> d!164033 (= ($colon$colon!1002 e!875254 (ite c!144788 (h!38360 l!750) (tuple2!25537 key2!21 v2!10))) (Cons!36912 (ite c!144788 (h!38360 l!750) (tuple2!25537 key2!21 v2!10)) e!875254))))

(assert (=> bm!72156 d!164033))

(declare-fun d!164035 () Bool)

(declare-fun res!1073024 () Bool)

(declare-fun e!875427 () Bool)

(assert (=> d!164035 (=> res!1073024 e!875427)))

(assert (=> d!164035 (= res!1073024 (and (is-Cons!36912 lt!673298) (= (_1!12778 (h!38360 lt!673298)) key2!21)))))

(assert (=> d!164035 (= (containsKey!867 lt!673298 key2!21) e!875427)))

(declare-fun b!1570257 () Bool)

(declare-fun e!875428 () Bool)

(assert (=> b!1570257 (= e!875427 e!875428)))

(declare-fun res!1073025 () Bool)

(assert (=> b!1570257 (=> (not res!1073025) (not e!875428))))

(assert (=> b!1570257 (= res!1073025 (and (or (not (is-Cons!36912 lt!673298)) (bvsle (_1!12778 (h!38360 lt!673298)) key2!21)) (is-Cons!36912 lt!673298) (bvslt (_1!12778 (h!38360 lt!673298)) key2!21)))))

(declare-fun b!1570258 () Bool)

(assert (=> b!1570258 (= e!875428 (containsKey!867 (t!51831 lt!673298) key2!21))))

(assert (= (and d!164035 (not res!1073024)) b!1570257))

(assert (= (and b!1570257 res!1073025) b!1570258))

(declare-fun m!1444323 () Bool)

(assert (=> b!1570258 m!1444323))

(assert (=> b!1570042 d!164035))

(declare-fun d!164037 () Bool)

(declare-fun res!1073026 () Bool)

(declare-fun e!875429 () Bool)

(assert (=> d!164037 (=> res!1073026 e!875429)))

(assert (=> d!164037 (= res!1073026 (or (is-Nil!36913 lt!673274) (is-Nil!36913 (t!51831 lt!673274))))))

(assert (=> d!164037 (= (isStrictlySorted!1017 lt!673274) e!875429)))

(declare-fun b!1570259 () Bool)

(declare-fun e!875430 () Bool)

(assert (=> b!1570259 (= e!875429 e!875430)))

(declare-fun res!1073027 () Bool)

(assert (=> b!1570259 (=> (not res!1073027) (not e!875430))))

(assert (=> b!1570259 (= res!1073027 (bvslt (_1!12778 (h!38360 lt!673274)) (_1!12778 (h!38360 (t!51831 lt!673274)))))))

(declare-fun b!1570260 () Bool)

(assert (=> b!1570260 (= e!875430 (isStrictlySorted!1017 (t!51831 lt!673274)))))

(assert (= (and d!164037 (not res!1073026)) b!1570259))

(assert (= (and b!1570259 res!1073027) b!1570260))

(declare-fun m!1444325 () Bool)

(assert (=> b!1570260 m!1444325))

(assert (=> d!163897 d!164037))

(declare-fun d!164039 () Bool)

(declare-fun res!1073028 () Bool)

(declare-fun e!875431 () Bool)

(assert (=> d!164039 (=> res!1073028 e!875431)))

(assert (=> d!164039 (= res!1073028 (or (is-Nil!36913 (insertStrictlySorted!595 l!750 key2!21 v2!10)) (is-Nil!36913 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10)))))))

(assert (=> d!164039 (= (isStrictlySorted!1017 (insertStrictlySorted!595 l!750 key2!21 v2!10)) e!875431)))

(declare-fun b!1570261 () Bool)

(declare-fun e!875432 () Bool)

(assert (=> b!1570261 (= e!875431 e!875432)))

(declare-fun res!1073029 () Bool)

(assert (=> b!1570261 (=> (not res!1073029) (not e!875432))))

(assert (=> b!1570261 (= res!1073029 (bvslt (_1!12778 (h!38360 (insertStrictlySorted!595 l!750 key2!21 v2!10))) (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10))))))))

(declare-fun b!1570262 () Bool)

(assert (=> b!1570262 (= e!875432 (isStrictlySorted!1017 (t!51831 (insertStrictlySorted!595 l!750 key2!21 v2!10))))))

(assert (= (and d!164039 (not res!1073028)) b!1570261))

(assert (= (and b!1570261 res!1073029) b!1570262))

(assert (=> b!1570262 m!1444219))

(assert (=> d!163897 d!164039))

(declare-fun d!164041 () Bool)

(declare-fun res!1073030 () Bool)

(declare-fun e!875433 () Bool)

(assert (=> d!164041 (=> res!1073030 e!875433)))

(assert (=> d!164041 (= res!1073030 (or (is-Nil!36913 lt!673304) (is-Nil!36913 (t!51831 lt!673304))))))

(assert (=> d!164041 (= (isStrictlySorted!1017 lt!673304) e!875433)))

(declare-fun b!1570263 () Bool)

(declare-fun e!875434 () Bool)

(assert (=> b!1570263 (= e!875433 e!875434)))

(declare-fun res!1073031 () Bool)

(assert (=> b!1570263 (=> (not res!1073031) (not e!875434))))

(assert (=> b!1570263 (= res!1073031 (bvslt (_1!12778 (h!38360 lt!673304)) (_1!12778 (h!38360 (t!51831 lt!673304)))))))

(declare-fun b!1570264 () Bool)

(assert (=> b!1570264 (= e!875434 (isStrictlySorted!1017 (t!51831 lt!673304)))))

(assert (= (and d!164041 (not res!1073030)) b!1570263))

(assert (= (and b!1570263 res!1073031) b!1570264))

(declare-fun m!1444327 () Bool)

(assert (=> b!1570264 m!1444327))

(assert (=> d!163951 d!164041))

(assert (=> d!163951 d!163895))

(declare-fun e!875436 () List!36916)

(declare-fun b!1570265 () Bool)

(declare-fun c!144870 () Bool)

(declare-fun c!144873 () Bool)

(assert (=> b!1570265 (= e!875436 (ite c!144873 (t!51831 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32))) (ite c!144870 (Cons!36912 (h!38360 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32))) (t!51831 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32)))) Nil!36913)))))

(declare-fun b!1570266 () Bool)

(declare-fun res!1073032 () Bool)

(declare-fun e!875435 () Bool)

(assert (=> b!1570266 (=> (not res!1073032) (not e!875435))))

(declare-fun lt!673322 () List!36916)

(assert (=> b!1570266 (= res!1073032 (containsKey!867 lt!673322 key2!21))))

(declare-fun b!1570267 () Bool)

(declare-fun e!875439 () List!36916)

(declare-fun call!72222 () List!36916)

(assert (=> b!1570267 (= e!875439 call!72222)))

(declare-fun bm!72219 () Bool)

(declare-fun call!72224 () List!36916)

(declare-fun c!144872 () Bool)

(assert (=> bm!72219 (= call!72224 ($colon$colon!1002 e!875436 (ite c!144872 (h!38360 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32))) (tuple2!25537 key2!21 v2!10))))))

(declare-fun c!144871 () Bool)

(assert (=> bm!72219 (= c!144871 c!144872)))

(declare-fun b!1570268 () Bool)

(assert (=> b!1570268 (= c!144870 (and (is-Cons!36912 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32))) (bvsgt (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32)))) key2!21)))))

(declare-fun e!875437 () List!36916)

(assert (=> b!1570268 (= e!875437 e!875439)))

(declare-fun d!164043 () Bool)

(assert (=> d!164043 e!875435))

(declare-fun res!1073033 () Bool)

(assert (=> d!164043 (=> (not res!1073033) (not e!875435))))

(assert (=> d!164043 (= res!1073033 (isStrictlySorted!1017 lt!673322))))

(declare-fun e!875438 () List!36916)

(assert (=> d!164043 (= lt!673322 e!875438)))

(assert (=> d!164043 (= c!144872 (and (is-Cons!36912 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32))) (bvslt (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32)))) key2!21)))))

(assert (=> d!164043 (isStrictlySorted!1017 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32)))))

(assert (=> d!164043 (= (insertStrictlySorted!595 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32)) key2!21 v2!10) lt!673322)))

(declare-fun b!1570269 () Bool)

(assert (=> b!1570269 (= e!875435 (contains!10445 lt!673322 (tuple2!25537 key2!21 v2!10)))))

(declare-fun bm!72220 () Bool)

(declare-fun call!72223 () List!36916)

(assert (=> bm!72220 (= call!72222 call!72223)))

(declare-fun b!1570270 () Bool)

(assert (=> b!1570270 (= e!875439 call!72222)))

(declare-fun bm!72221 () Bool)

(assert (=> bm!72221 (= call!72223 call!72224)))

(declare-fun b!1570271 () Bool)

(assert (=> b!1570271 (= e!875438 call!72224)))

(declare-fun b!1570272 () Bool)

(assert (=> b!1570272 (= e!875438 e!875437)))

(assert (=> b!1570272 (= c!144873 (and (is-Cons!36912 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32))) (= (_1!12778 (h!38360 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32)))) key2!21)))))

(declare-fun b!1570273 () Bool)

(assert (=> b!1570273 (= e!875437 call!72223)))

(declare-fun b!1570274 () Bool)

(assert (=> b!1570274 (= e!875436 (insertStrictlySorted!595 (t!51831 (t!51831 (insertStrictlySorted!595 l!750 key1!37 v1!32))) key2!21 v2!10))))

(assert (= (and d!164043 c!144872) b!1570271))

(assert (= (and d!164043 (not c!144872)) b!1570272))

(assert (= (and b!1570272 c!144873) b!1570273))

(assert (= (and b!1570272 (not c!144873)) b!1570268))

(assert (= (and b!1570268 c!144870) b!1570267))

(assert (= (and b!1570268 (not c!144870)) b!1570270))

(assert (= (or b!1570267 b!1570270) bm!72220))

(assert (= (or b!1570273 bm!72220) bm!72221))

(assert (= (or b!1570271 bm!72221) bm!72219))

(assert (= (and bm!72219 c!144871) b!1570274))

(assert (= (and bm!72219 (not c!144871)) b!1570265))

(assert (= (and d!164043 res!1073033) b!1570266))

(assert (= (and b!1570266 res!1073032) b!1570269))

(declare-fun m!1444329 () Bool)

(assert (=> d!164043 m!1444329))

(assert (=> d!164043 m!1444281))

(declare-fun m!1444331 () Bool)

(assert (=> b!1570266 m!1444331))

(declare-fun m!1444333 () Bool)

(assert (=> b!1570269 m!1444333))

(declare-fun m!1444335 () Bool)

(assert (=> b!1570274 m!1444335))

(declare-fun m!1444337 () Bool)

(assert (=> bm!72219 m!1444337))

(assert (=> b!1569951 d!164043))

(declare-fun d!164045 () Bool)

(assert (=> d!164045 (= ($colon$colon!1002 e!875274 (ite c!144804 (h!38360 l!750) (tuple2!25537 key1!37 v1!32))) (Cons!36912 (ite c!144804 (h!38360 l!750) (tuple2!25537 key1!37 v1!32)) e!875274))))

(assert (=> bm!72168 d!164045))

(declare-fun b!1570275 () Bool)

(declare-fun e!875440 () Bool)

(declare-fun tp!114227 () Bool)

(assert (=> b!1570275 (= e!875440 (and tp_is_empty!39097 tp!114227))))

(assert (=> b!1570131 (= tp!114223 e!875440)))

(assert (= (and b!1570131 (is-Cons!36912 (t!51831 (t!51831 l!750)))) b!1570275))

(push 1)

(assert (not d!164029))

(assert (not b!1570228))

(assert (not b!1570200))

(assert (not b!1570220))

(assert (not b!1570260))

(assert (not b!1570275))

(assert (not b!1570216))

(assert (not b!1570236))

(assert (not b!1570224))

(assert (not bm!72213))

(assert (not b!1570238))

(assert (not bm!72207))

(assert (not b!1570234))

(assert (not d!163969))

(assert (not d!163977))

(assert (not b!1570188))

(assert (not d!164027))

(assert (not b!1570190))

(assert (not b!1570274))

(assert (not b!1570156))

(assert (not b!1570232))

(assert (not b!1570178))

(assert (not bm!72204))

(assert (not d!163975))

(assert (not b!1570166))

(assert (not b!1570214))

(assert (not b!1570226))

(assert (not b!1570176))

(assert (not b!1570218))

(assert (not b!1570246))

(assert (not bm!72216))

(assert (not b!1570183))

(assert (not b!1570269))

(assert (not b!1570264))

(assert (not b!1570171))

(assert (not b!1570262))

(assert (not d!164043))

(assert (not b!1570256))

(assert (not b!1570258))

(assert (not b!1570164))

(assert (not b!1570249))

(assert (not b!1570244))

(assert (not d!163965))

(assert (not b!1570158))

(assert (not b!1570209))

(assert (not b!1570206))

(assert (not d!163987))

(assert (not b!1570240))

(assert (not b!1570168))

(assert (not b!1570242))

(assert (not b!1570180))

(assert (not b!1570193))

(assert (not b!1570254))

(assert (not b!1570266))

(assert (not d!163989))

(assert (not b!1570204))

(assert (not d!163993))

(assert (not b!1570230))

(assert (not d!163991))

(assert (not bm!72210))

(assert (not d!164019))

(assert (not d!164007))

(assert (not d!163971))

(assert (not d!163995))

(assert (not bm!72219))

(assert (not b!1570222))

(assert (not b!1570198))

(assert (not b!1570154))

(assert (not b!1570202))

(assert tp_is_empty!39097)

(check-sat)

(pop 1)

(push 1)

(check-sat)

