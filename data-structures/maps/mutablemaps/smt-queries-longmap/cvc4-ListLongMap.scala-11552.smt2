; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134522 () Bool)

(assert start!134522)

(declare-fun b!1569805 () Bool)

(declare-fun res!1072869 () Bool)

(declare-fun e!875159 () Bool)

(assert (=> b!1569805 (=> (not res!1072869) (not e!875159))))

(declare-datatypes ((B!2550 0))(
  ( (B!2551 (val!19637 Int)) )
))
(declare-datatypes ((tuple2!25540 0))(
  ( (tuple2!25541 (_1!12780 (_ BitVec 64)) (_2!12780 B!2550)) )
))
(declare-datatypes ((List!36918 0))(
  ( (Nil!36915) (Cons!36914 (h!38362 tuple2!25540) (t!51833 List!36918)) )
))
(declare-fun l!750 () List!36918)

(declare-fun isStrictlySorted!1019 (List!36918) Bool)

(assert (=> b!1569805 (= res!1072869 (isStrictlySorted!1019 (t!51833 l!750)))))

(declare-fun b!1569806 () Bool)

(declare-fun res!1072870 () Bool)

(assert (=> b!1569806 (=> (not res!1072870) (not e!875159))))

(assert (=> b!1569806 (= res!1072870 (isStrictlySorted!1019 l!750))))

(declare-fun b!1569807 () Bool)

(declare-fun res!1072868 () Bool)

(assert (=> b!1569807 (=> (not res!1072868) (not e!875159))))

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(assert (=> b!1569807 (= res!1072868 (and (is-Cons!36914 l!750) (bvslt (_1!12780 (h!38362 l!750)) key1!37) (bvslt (_1!12780 (h!38362 l!750)) key2!21)))))

(declare-fun v1!32 () B!2550)

(declare-fun v2!10 () B!2550)

(declare-fun b!1569808 () Bool)

(declare-fun insertStrictlySorted!597 (List!36918 (_ BitVec 64) B!2550) List!36918)

(assert (=> b!1569808 (= e!875159 (not (= (insertStrictlySorted!597 (insertStrictlySorted!597 l!750 key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!597 (insertStrictlySorted!597 l!750 key2!21 v2!10) key1!37 v1!32))))))

(assert (=> b!1569808 (= (insertStrictlySorted!597 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!597 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-datatypes ((Unit!52040 0))(
  ( (Unit!52041) )
))
(declare-fun lt!673267 () Unit!52040)

(declare-fun lemmaInsertStrictlySortedCommutative!18 (List!36918 (_ BitVec 64) B!2550 (_ BitVec 64) B!2550) Unit!52040)

(assert (=> b!1569808 (= lt!673267 (lemmaInsertStrictlySortedCommutative!18 (t!51833 l!750) key1!37 v1!32 key2!21 v2!10))))

(declare-fun b!1569809 () Bool)

(declare-fun e!875160 () Bool)

(declare-fun tp_is_empty!39101 () Bool)

(declare-fun tp!114217 () Bool)

(assert (=> b!1569809 (= e!875160 (and tp_is_empty!39101 tp!114217))))

(declare-fun res!1072871 () Bool)

(assert (=> start!134522 (=> (not res!1072871) (not e!875159))))

(assert (=> start!134522 (= res!1072871 (not (= key1!37 key2!21)))))

(assert (=> start!134522 e!875159))

(assert (=> start!134522 tp_is_empty!39101))

(assert (=> start!134522 e!875160))

(assert (=> start!134522 true))

(assert (= (and start!134522 res!1072871) b!1569806))

(assert (= (and b!1569806 res!1072870) b!1569807))

(assert (= (and b!1569807 res!1072868) b!1569805))

(assert (= (and b!1569805 res!1072869) b!1569808))

(assert (= (and start!134522 (is-Cons!36914 l!750)) b!1569809))

(declare-fun m!1443903 () Bool)

(assert (=> b!1569805 m!1443903))

(declare-fun m!1443905 () Bool)

(assert (=> b!1569806 m!1443905))

(declare-fun m!1443907 () Bool)

(assert (=> b!1569808 m!1443907))

(declare-fun m!1443909 () Bool)

(assert (=> b!1569808 m!1443909))

(declare-fun m!1443911 () Bool)

(assert (=> b!1569808 m!1443911))

(declare-fun m!1443913 () Bool)

(assert (=> b!1569808 m!1443913))

(declare-fun m!1443915 () Bool)

(assert (=> b!1569808 m!1443915))

(assert (=> b!1569808 m!1443909))

(declare-fun m!1443917 () Bool)

(assert (=> b!1569808 m!1443917))

(assert (=> b!1569808 m!1443913))

(declare-fun m!1443919 () Bool)

(assert (=> b!1569808 m!1443919))

(declare-fun m!1443921 () Bool)

(assert (=> b!1569808 m!1443921))

(assert (=> b!1569808 m!1443919))

(assert (=> b!1569808 m!1443907))

(declare-fun m!1443923 () Bool)

(assert (=> b!1569808 m!1443923))

(push 1)

(assert (not b!1569805))

(assert (not b!1569808))

(assert (not b!1569809))

(assert tp_is_empty!39101)

(assert (not b!1569806))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163903 () Bool)

(declare-fun res!1072890 () Bool)

(declare-fun e!875179 () Bool)

(assert (=> d!163903 (=> res!1072890 e!875179)))

(assert (=> d!163903 (= res!1072890 (or (is-Nil!36915 l!750) (is-Nil!36915 (t!51833 l!750))))))

(assert (=> d!163903 (= (isStrictlySorted!1019 l!750) e!875179)))

(declare-fun b!1569828 () Bool)

(declare-fun e!875180 () Bool)

(assert (=> b!1569828 (= e!875179 e!875180)))

(declare-fun res!1072891 () Bool)

(assert (=> b!1569828 (=> (not res!1072891) (not e!875180))))

(assert (=> b!1569828 (= res!1072891 (bvslt (_1!12780 (h!38362 l!750)) (_1!12780 (h!38362 (t!51833 l!750)))))))

(declare-fun b!1569829 () Bool)

(assert (=> b!1569829 (= e!875180 (isStrictlySorted!1019 (t!51833 l!750)))))

(assert (= (and d!163903 (not res!1072890)) b!1569828))

(assert (= (and b!1569828 res!1072891) b!1569829))

(assert (=> b!1569829 m!1443903))

(assert (=> b!1569806 d!163903))

(declare-fun d!163905 () Bool)

(declare-fun res!1072892 () Bool)

(declare-fun e!875181 () Bool)

(assert (=> d!163905 (=> res!1072892 e!875181)))

(assert (=> d!163905 (= res!1072892 (or (is-Nil!36915 (t!51833 l!750)) (is-Nil!36915 (t!51833 (t!51833 l!750)))))))

(assert (=> d!163905 (= (isStrictlySorted!1019 (t!51833 l!750)) e!875181)))

(declare-fun b!1569830 () Bool)

(declare-fun e!875182 () Bool)

(assert (=> b!1569830 (= e!875181 e!875182)))

(declare-fun res!1072893 () Bool)

(assert (=> b!1569830 (=> (not res!1072893) (not e!875182))))

(assert (=> b!1569830 (= res!1072893 (bvslt (_1!12780 (h!38362 (t!51833 l!750))) (_1!12780 (h!38362 (t!51833 (t!51833 l!750))))))))

(declare-fun b!1569831 () Bool)

(assert (=> b!1569831 (= e!875182 (isStrictlySorted!1019 (t!51833 (t!51833 l!750))))))

(assert (= (and d!163905 (not res!1072892)) b!1569830))

(assert (= (and b!1569830 res!1072893) b!1569831))

(declare-fun m!1443927 () Bool)

(assert (=> b!1569831 m!1443927))

(assert (=> b!1569805 d!163905))

(declare-fun e!875220 () Bool)

(declare-fun lt!673275 () List!36918)

(declare-fun b!1569902 () Bool)

(declare-fun contains!10444 (List!36918 tuple2!25540) Bool)

(assert (=> b!1569902 (= e!875220 (contains!10444 lt!673275 (tuple2!25541 key1!37 v1!32)))))

(declare-fun b!1569904 () Bool)

(declare-fun e!875222 () List!36918)

(declare-fun call!72138 () List!36918)

(assert (=> b!1569904 (= e!875222 call!72138)))

(declare-fun b!1569905 () Bool)

(declare-fun e!875221 () List!36918)

(declare-fun call!72139 () List!36918)

(assert (=> b!1569905 (= e!875221 call!72139)))

(declare-fun e!875218 () List!36918)

(declare-fun c!144760 () Bool)

(declare-fun c!144761 () Bool)

(declare-fun b!1569906 () Bool)

(assert (=> b!1569906 (= e!875218 (ite c!144760 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10)) (ite c!144761 (Cons!36914 (h!38362 (insertStrictlySorted!597 l!750 key2!21 v2!10)) (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10))) Nil!36915)))))

(declare-fun bm!72135 () Bool)

(assert (=> bm!72135 (= call!72138 call!72139)))

(declare-fun b!1569907 () Bool)

(assert (=> b!1569907 (= c!144761 (and (is-Cons!36914 (insertStrictlySorted!597 l!750 key2!21 v2!10)) (bvsgt (_1!12780 (h!38362 (insertStrictlySorted!597 l!750 key2!21 v2!10))) key1!37)))))

(declare-fun e!875219 () List!36918)

(assert (=> b!1569907 (= e!875222 e!875219)))

(declare-fun d!163907 () Bool)

(assert (=> d!163907 e!875220))

(declare-fun res!1072908 () Bool)

(assert (=> d!163907 (=> (not res!1072908) (not e!875220))))

(assert (=> d!163907 (= res!1072908 (isStrictlySorted!1019 lt!673275))))

(assert (=> d!163907 (= lt!673275 e!875221)))

(declare-fun c!144758 () Bool)

(assert (=> d!163907 (= c!144758 (and (is-Cons!36914 (insertStrictlySorted!597 l!750 key2!21 v2!10)) (bvslt (_1!12780 (h!38362 (insertStrictlySorted!597 l!750 key2!21 v2!10))) key1!37)))))

(assert (=> d!163907 (isStrictlySorted!1019 (insertStrictlySorted!597 l!750 key2!21 v2!10))))

(assert (=> d!163907 (= (insertStrictlySorted!597 (insertStrictlySorted!597 l!750 key2!21 v2!10) key1!37 v1!32) lt!673275)))

(declare-fun b!1569903 () Bool)

(assert (=> b!1569903 (= e!875218 (insertStrictlySorted!597 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10)) key1!37 v1!32))))

(declare-fun b!1569908 () Bool)

(declare-fun call!72140 () List!36918)

(assert (=> b!1569908 (= e!875219 call!72140)))

(declare-fun bm!72136 () Bool)

(declare-fun $colon$colon!1001 (List!36918 tuple2!25540) List!36918)

(assert (=> bm!72136 (= call!72139 ($colon$colon!1001 e!875218 (ite c!144758 (h!38362 (insertStrictlySorted!597 l!750 key2!21 v2!10)) (tuple2!25541 key1!37 v1!32))))))

(declare-fun c!144759 () Bool)

(assert (=> bm!72136 (= c!144759 c!144758)))

(declare-fun bm!72137 () Bool)

(assert (=> bm!72137 (= call!72140 call!72138)))

(declare-fun b!1569909 () Bool)

(assert (=> b!1569909 (= e!875221 e!875222)))

(assert (=> b!1569909 (= c!144760 (and (is-Cons!36914 (insertStrictlySorted!597 l!750 key2!21 v2!10)) (= (_1!12780 (h!38362 (insertStrictlySorted!597 l!750 key2!21 v2!10))) key1!37)))))

(declare-fun b!1569910 () Bool)

(assert (=> b!1569910 (= e!875219 call!72140)))

(declare-fun b!1569911 () Bool)

(declare-fun res!1072909 () Bool)

(assert (=> b!1569911 (=> (not res!1072909) (not e!875220))))

(declare-fun containsKey!869 (List!36918 (_ BitVec 64)) Bool)

(assert (=> b!1569911 (= res!1072909 (containsKey!869 lt!673275 key1!37))))

(assert (= (and d!163907 c!144758) b!1569905))

(assert (= (and d!163907 (not c!144758)) b!1569909))

(assert (= (and b!1569909 c!144760) b!1569904))

(assert (= (and b!1569909 (not c!144760)) b!1569907))

(assert (= (and b!1569907 c!144761) b!1569910))

(assert (= (and b!1569907 (not c!144761)) b!1569908))

(assert (= (or b!1569910 b!1569908) bm!72137))

(assert (= (or b!1569904 bm!72137) bm!72135))

(assert (= (or b!1569905 bm!72135) bm!72136))

(assert (= (and bm!72136 c!144759) b!1569903))

(assert (= (and bm!72136 (not c!144759)) b!1569906))

(assert (= (and d!163907 res!1072908) b!1569911))

(assert (= (and b!1569911 res!1072909) b!1569902))

(declare-fun m!1443941 () Bool)

(assert (=> b!1569903 m!1443941))

(declare-fun m!1443943 () Bool)

(assert (=> b!1569911 m!1443943))

(declare-fun m!1443945 () Bool)

(assert (=> b!1569902 m!1443945))

(declare-fun m!1443947 () Bool)

(assert (=> d!163907 m!1443947))

(assert (=> d!163907 m!1443919))

(declare-fun m!1443949 () Bool)

(assert (=> d!163907 m!1443949))

(declare-fun m!1443951 () Bool)

(assert (=> bm!72136 m!1443951))

(assert (=> b!1569808 d!163907))

(declare-fun d!163911 () Bool)

(assert (=> d!163911 (= (insertStrictlySorted!597 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!597 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-fun lt!673279 () Unit!52040)

(declare-fun choose!2090 (List!36918 (_ BitVec 64) B!2550 (_ BitVec 64) B!2550) Unit!52040)

(assert (=> d!163911 (= lt!673279 (choose!2090 (t!51833 l!750) key1!37 v1!32 key2!21 v2!10))))

(assert (=> d!163911 (not (= key1!37 key2!21))))

(assert (=> d!163911 (= (lemmaInsertStrictlySortedCommutative!18 (t!51833 l!750) key1!37 v1!32 key2!21 v2!10) lt!673279)))

(declare-fun bs!45215 () Bool)

(assert (= bs!45215 d!163911))

(assert (=> bs!45215 m!1443909))

(assert (=> bs!45215 m!1443907))

(assert (=> bs!45215 m!1443923))

(assert (=> bs!45215 m!1443909))

(assert (=> bs!45215 m!1443911))

(declare-fun m!1443965 () Bool)

(assert (=> bs!45215 m!1443965))

(assert (=> bs!45215 m!1443907))

(assert (=> b!1569808 d!163911))

(declare-fun e!875230 () Bool)

(declare-fun lt!673282 () List!36918)

(declare-fun b!1569922 () Bool)

(assert (=> b!1569922 (= e!875230 (contains!10444 lt!673282 (tuple2!25541 key2!21 v2!10)))))

(declare-fun b!1569924 () Bool)

(declare-fun e!875232 () List!36918)

(declare-fun call!72144 () List!36918)

(assert (=> b!1569924 (= e!875232 call!72144)))

(declare-fun b!1569925 () Bool)

(declare-fun e!875231 () List!36918)

(declare-fun call!72145 () List!36918)

(assert (=> b!1569925 (= e!875231 call!72145)))

(declare-fun c!144768 () Bool)

(declare-fun b!1569926 () Bool)

(declare-fun e!875228 () List!36918)

(declare-fun c!144769 () Bool)

(assert (=> b!1569926 (= e!875228 (ite c!144768 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32)) (ite c!144769 (Cons!36914 (h!38362 (insertStrictlySorted!597 l!750 key1!37 v1!32)) (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32))) Nil!36915)))))

(declare-fun bm!72141 () Bool)

(assert (=> bm!72141 (= call!72144 call!72145)))

(declare-fun b!1569927 () Bool)

(assert (=> b!1569927 (= c!144769 (and (is-Cons!36914 (insertStrictlySorted!597 l!750 key1!37 v1!32)) (bvsgt (_1!12780 (h!38362 (insertStrictlySorted!597 l!750 key1!37 v1!32))) key2!21)))))

(declare-fun e!875229 () List!36918)

(assert (=> b!1569927 (= e!875232 e!875229)))

(declare-fun d!163915 () Bool)

(assert (=> d!163915 e!875230))

(declare-fun res!1072912 () Bool)

(assert (=> d!163915 (=> (not res!1072912) (not e!875230))))

(assert (=> d!163915 (= res!1072912 (isStrictlySorted!1019 lt!673282))))

(assert (=> d!163915 (= lt!673282 e!875231)))

(declare-fun c!144766 () Bool)

(assert (=> d!163915 (= c!144766 (and (is-Cons!36914 (insertStrictlySorted!597 l!750 key1!37 v1!32)) (bvslt (_1!12780 (h!38362 (insertStrictlySorted!597 l!750 key1!37 v1!32))) key2!21)))))

(assert (=> d!163915 (isStrictlySorted!1019 (insertStrictlySorted!597 l!750 key1!37 v1!32))))

(assert (=> d!163915 (= (insertStrictlySorted!597 (insertStrictlySorted!597 l!750 key1!37 v1!32) key2!21 v2!10) lt!673282)))

(declare-fun b!1569923 () Bool)

(assert (=> b!1569923 (= e!875228 (insertStrictlySorted!597 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32)) key2!21 v2!10))))

(declare-fun b!1569928 () Bool)

(declare-fun call!72146 () List!36918)

(assert (=> b!1569928 (= e!875229 call!72146)))

(declare-fun bm!72142 () Bool)

(assert (=> bm!72142 (= call!72145 ($colon$colon!1001 e!875228 (ite c!144766 (h!38362 (insertStrictlySorted!597 l!750 key1!37 v1!32)) (tuple2!25541 key2!21 v2!10))))))

(declare-fun c!144767 () Bool)

(assert (=> bm!72142 (= c!144767 c!144766)))

(declare-fun bm!72143 () Bool)

(assert (=> bm!72143 (= call!72146 call!72144)))

(declare-fun b!1569929 () Bool)

(assert (=> b!1569929 (= e!875231 e!875232)))

(assert (=> b!1569929 (= c!144768 (and (is-Cons!36914 (insertStrictlySorted!597 l!750 key1!37 v1!32)) (= (_1!12780 (h!38362 (insertStrictlySorted!597 l!750 key1!37 v1!32))) key2!21)))))

(declare-fun b!1569930 () Bool)

(assert (=> b!1569930 (= e!875229 call!72146)))

(declare-fun b!1569931 () Bool)

(declare-fun res!1072913 () Bool)

(assert (=> b!1569931 (=> (not res!1072913) (not e!875230))))

(assert (=> b!1569931 (= res!1072913 (containsKey!869 lt!673282 key2!21))))

(assert (= (and d!163915 c!144766) b!1569925))

(assert (= (and d!163915 (not c!144766)) b!1569929))

(assert (= (and b!1569929 c!144768) b!1569924))

(assert (= (and b!1569929 (not c!144768)) b!1569927))

(assert (= (and b!1569927 c!144769) b!1569930))

(assert (= (and b!1569927 (not c!144769)) b!1569928))

(assert (= (or b!1569930 b!1569928) bm!72143))

(assert (= (or b!1569924 bm!72143) bm!72141))

(assert (= (or b!1569925 bm!72141) bm!72142))

(assert (= (and bm!72142 c!144767) b!1569923))

(assert (= (and bm!72142 (not c!144767)) b!1569926))

(assert (= (and d!163915 res!1072912) b!1569931))

(assert (= (and b!1569931 res!1072913) b!1569922))

(declare-fun m!1443967 () Bool)

(assert (=> b!1569923 m!1443967))

(declare-fun m!1443969 () Bool)

(assert (=> b!1569931 m!1443969))

(declare-fun m!1443971 () Bool)

(assert (=> b!1569922 m!1443971))

(declare-fun m!1443973 () Bool)

(assert (=> d!163915 m!1443973))

(assert (=> d!163915 m!1443913))

(declare-fun m!1443975 () Bool)

(assert (=> d!163915 m!1443975))

(declare-fun m!1443977 () Bool)

(assert (=> bm!72142 m!1443977))

(assert (=> b!1569808 d!163915))

(declare-fun lt!673283 () List!36918)

(declare-fun e!875235 () Bool)

(declare-fun b!1569932 () Bool)

(assert (=> b!1569932 (= e!875235 (contains!10444 lt!673283 (tuple2!25541 key2!21 v2!10)))))

(declare-fun b!1569934 () Bool)

(declare-fun e!875237 () List!36918)

(declare-fun call!72147 () List!36918)

(assert (=> b!1569934 (= e!875237 call!72147)))

(declare-fun b!1569935 () Bool)

(declare-fun e!875236 () List!36918)

(declare-fun call!72148 () List!36918)

(assert (=> b!1569935 (= e!875236 call!72148)))

(declare-fun b!1569936 () Bool)

(declare-fun e!875233 () List!36918)

(declare-fun c!144773 () Bool)

(declare-fun c!144772 () Bool)

(assert (=> b!1569936 (= e!875233 (ite c!144772 (t!51833 l!750) (ite c!144773 (Cons!36914 (h!38362 l!750) (t!51833 l!750)) Nil!36915)))))

(declare-fun bm!72144 () Bool)

(assert (=> bm!72144 (= call!72147 call!72148)))

(declare-fun b!1569937 () Bool)

(assert (=> b!1569937 (= c!144773 (and (is-Cons!36914 l!750) (bvsgt (_1!12780 (h!38362 l!750)) key2!21)))))

(declare-fun e!875234 () List!36918)

(assert (=> b!1569937 (= e!875237 e!875234)))

(declare-fun d!163917 () Bool)

(assert (=> d!163917 e!875235))

(declare-fun res!1072914 () Bool)

(assert (=> d!163917 (=> (not res!1072914) (not e!875235))))

(assert (=> d!163917 (= res!1072914 (isStrictlySorted!1019 lt!673283))))

(assert (=> d!163917 (= lt!673283 e!875236)))

(declare-fun c!144770 () Bool)

(assert (=> d!163917 (= c!144770 (and (is-Cons!36914 l!750) (bvslt (_1!12780 (h!38362 l!750)) key2!21)))))

(assert (=> d!163917 (isStrictlySorted!1019 l!750)))

(assert (=> d!163917 (= (insertStrictlySorted!597 l!750 key2!21 v2!10) lt!673283)))

(declare-fun b!1569933 () Bool)

(assert (=> b!1569933 (= e!875233 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))))

(declare-fun b!1569938 () Bool)

(declare-fun call!72149 () List!36918)

(assert (=> b!1569938 (= e!875234 call!72149)))

(declare-fun bm!72145 () Bool)

(assert (=> bm!72145 (= call!72148 ($colon$colon!1001 e!875233 (ite c!144770 (h!38362 l!750) (tuple2!25541 key2!21 v2!10))))))

(declare-fun c!144771 () Bool)

(assert (=> bm!72145 (= c!144771 c!144770)))

(declare-fun bm!72146 () Bool)

(assert (=> bm!72146 (= call!72149 call!72147)))

(declare-fun b!1569939 () Bool)

(assert (=> b!1569939 (= e!875236 e!875237)))

(assert (=> b!1569939 (= c!144772 (and (is-Cons!36914 l!750) (= (_1!12780 (h!38362 l!750)) key2!21)))))

(declare-fun b!1569940 () Bool)

(assert (=> b!1569940 (= e!875234 call!72149)))

(declare-fun b!1569941 () Bool)

(declare-fun res!1072915 () Bool)

(assert (=> b!1569941 (=> (not res!1072915) (not e!875235))))

(assert (=> b!1569941 (= res!1072915 (containsKey!869 lt!673283 key2!21))))

(assert (= (and d!163917 c!144770) b!1569935))

(assert (= (and d!163917 (not c!144770)) b!1569939))

(assert (= (and b!1569939 c!144772) b!1569934))

(assert (= (and b!1569939 (not c!144772)) b!1569937))

(assert (= (and b!1569937 c!144773) b!1569940))

(assert (= (and b!1569937 (not c!144773)) b!1569938))

(assert (= (or b!1569940 b!1569938) bm!72146))

(assert (= (or b!1569934 bm!72146) bm!72144))

(assert (= (or b!1569935 bm!72144) bm!72145))

(assert (= (and bm!72145 c!144771) b!1569933))

(assert (= (and bm!72145 (not c!144771)) b!1569936))

(assert (= (and d!163917 res!1072914) b!1569941))

(assert (= (and b!1569941 res!1072915) b!1569932))

(assert (=> b!1569933 m!1443907))

(declare-fun m!1443981 () Bool)

(assert (=> b!1569941 m!1443981))

(declare-fun m!1443983 () Bool)

(assert (=> b!1569932 m!1443983))

(declare-fun m!1443985 () Bool)

(assert (=> d!163917 m!1443985))

(assert (=> d!163917 m!1443905))

(declare-fun m!1443987 () Bool)

(assert (=> bm!72145 m!1443987))

(assert (=> b!1569808 d!163917))

(declare-fun lt!673286 () List!36918)

(declare-fun e!875245 () Bool)

(declare-fun b!1569952 () Bool)

(assert (=> b!1569952 (= e!875245 (contains!10444 lt!673286 (tuple2!25541 key1!37 v1!32)))))

(declare-fun b!1569954 () Bool)

(declare-fun e!875247 () List!36918)

(declare-fun call!72153 () List!36918)

(assert (=> b!1569954 (= e!875247 call!72153)))

(declare-fun b!1569955 () Bool)

(declare-fun e!875246 () List!36918)

(declare-fun call!72154 () List!36918)

(assert (=> b!1569955 (= e!875246 call!72154)))

(declare-fun e!875243 () List!36918)

(declare-fun c!144780 () Bool)

(declare-fun c!144781 () Bool)

(declare-fun b!1569956 () Bool)

(assert (=> b!1569956 (= e!875243 (ite c!144780 (t!51833 l!750) (ite c!144781 (Cons!36914 (h!38362 l!750) (t!51833 l!750)) Nil!36915)))))

(declare-fun bm!72150 () Bool)

(assert (=> bm!72150 (= call!72153 call!72154)))

(declare-fun b!1569957 () Bool)

(assert (=> b!1569957 (= c!144781 (and (is-Cons!36914 l!750) (bvsgt (_1!12780 (h!38362 l!750)) key1!37)))))

(declare-fun e!875244 () List!36918)

(assert (=> b!1569957 (= e!875247 e!875244)))

(declare-fun d!163921 () Bool)

(assert (=> d!163921 e!875245))

(declare-fun res!1072918 () Bool)

(assert (=> d!163921 (=> (not res!1072918) (not e!875245))))

(assert (=> d!163921 (= res!1072918 (isStrictlySorted!1019 lt!673286))))

(assert (=> d!163921 (= lt!673286 e!875246)))

(declare-fun c!144778 () Bool)

(assert (=> d!163921 (= c!144778 (and (is-Cons!36914 l!750) (bvslt (_1!12780 (h!38362 l!750)) key1!37)))))

(assert (=> d!163921 (isStrictlySorted!1019 l!750)))

(assert (=> d!163921 (= (insertStrictlySorted!597 l!750 key1!37 v1!32) lt!673286)))

(declare-fun b!1569953 () Bool)

(assert (=> b!1569953 (= e!875243 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))))

(declare-fun b!1569958 () Bool)

(declare-fun call!72155 () List!36918)

(assert (=> b!1569958 (= e!875244 call!72155)))

(declare-fun bm!72151 () Bool)

(assert (=> bm!72151 (= call!72154 ($colon$colon!1001 e!875243 (ite c!144778 (h!38362 l!750) (tuple2!25541 key1!37 v1!32))))))

(declare-fun c!144779 () Bool)

(assert (=> bm!72151 (= c!144779 c!144778)))

(declare-fun bm!72152 () Bool)

(assert (=> bm!72152 (= call!72155 call!72153)))

(declare-fun b!1569959 () Bool)

(assert (=> b!1569959 (= e!875246 e!875247)))

(assert (=> b!1569959 (= c!144780 (and (is-Cons!36914 l!750) (= (_1!12780 (h!38362 l!750)) key1!37)))))

(declare-fun b!1569960 () Bool)

(assert (=> b!1569960 (= e!875244 call!72155)))

(declare-fun b!1569961 () Bool)

(declare-fun res!1072919 () Bool)

(assert (=> b!1569961 (=> (not res!1072919) (not e!875245))))

(assert (=> b!1569961 (= res!1072919 (containsKey!869 lt!673286 key1!37))))

(assert (= (and d!163921 c!144778) b!1569955))

(assert (= (and d!163921 (not c!144778)) b!1569959))

(assert (= (and b!1569959 c!144780) b!1569954))

(assert (= (and b!1569959 (not c!144780)) b!1569957))

(assert (= (and b!1569957 c!144781) b!1569960))

(assert (= (and b!1569957 (not c!144781)) b!1569958))

(assert (= (or b!1569960 b!1569958) bm!72152))

(assert (= (or b!1569954 bm!72152) bm!72150))

(assert (= (or b!1569955 bm!72150) bm!72151))

(assert (= (and bm!72151 c!144779) b!1569953))

(assert (= (and bm!72151 (not c!144779)) b!1569956))

(assert (= (and d!163921 res!1072918) b!1569961))

(assert (= (and b!1569961 res!1072919) b!1569952))

(assert (=> b!1569953 m!1443909))

(declare-fun m!1443989 () Bool)

(assert (=> b!1569961 m!1443989))

(declare-fun m!1443991 () Bool)

(assert (=> b!1569952 m!1443991))

(declare-fun m!1443993 () Bool)

(assert (=> d!163921 m!1443993))

(assert (=> d!163921 m!1443905))

(declare-fun m!1443995 () Bool)

(assert (=> bm!72151 m!1443995))

(assert (=> b!1569808 d!163921))

(declare-fun b!1569962 () Bool)

(declare-fun e!875250 () Bool)

(declare-fun lt!673287 () List!36918)

(assert (=> b!1569962 (= e!875250 (contains!10444 lt!673287 (tuple2!25541 key2!21 v2!10)))))

(declare-fun b!1569964 () Bool)

(declare-fun e!875252 () List!36918)

(declare-fun call!72156 () List!36918)

(assert (=> b!1569964 (= e!875252 call!72156)))

(declare-fun b!1569965 () Bool)

(declare-fun e!875251 () List!36918)

(declare-fun call!72157 () List!36918)

(assert (=> b!1569965 (= e!875251 call!72157)))

(declare-fun b!1569966 () Bool)

(declare-fun e!875248 () List!36918)

(declare-fun c!144784 () Bool)

(declare-fun c!144785 () Bool)

(assert (=> b!1569966 (= e!875248 (ite c!144784 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)) (ite c!144785 (Cons!36914 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)) (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))) Nil!36915)))))

(declare-fun bm!72153 () Bool)

(assert (=> bm!72153 (= call!72156 call!72157)))

(declare-fun b!1569967 () Bool)

(assert (=> b!1569967 (= c!144785 (and (is-Cons!36914 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)) (bvsgt (_1!12780 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))) key2!21)))))

(declare-fun e!875249 () List!36918)

(assert (=> b!1569967 (= e!875252 e!875249)))

(declare-fun d!163923 () Bool)

(assert (=> d!163923 e!875250))

(declare-fun res!1072920 () Bool)

(assert (=> d!163923 (=> (not res!1072920) (not e!875250))))

(assert (=> d!163923 (= res!1072920 (isStrictlySorted!1019 lt!673287))))

(assert (=> d!163923 (= lt!673287 e!875251)))

(declare-fun c!144782 () Bool)

(assert (=> d!163923 (= c!144782 (and (is-Cons!36914 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)) (bvslt (_1!12780 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))) key2!21)))))

(assert (=> d!163923 (isStrictlySorted!1019 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))))

(assert (=> d!163923 (= (insertStrictlySorted!597 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32) key2!21 v2!10) lt!673287)))

(declare-fun b!1569963 () Bool)

(assert (=> b!1569963 (= e!875248 (insertStrictlySorted!597 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)) key2!21 v2!10))))

(declare-fun b!1569968 () Bool)

(declare-fun call!72158 () List!36918)

(assert (=> b!1569968 (= e!875249 call!72158)))

(declare-fun bm!72154 () Bool)

(assert (=> bm!72154 (= call!72157 ($colon$colon!1001 e!875248 (ite c!144782 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)) (tuple2!25541 key2!21 v2!10))))))

(declare-fun c!144783 () Bool)

(assert (=> bm!72154 (= c!144783 c!144782)))

(declare-fun bm!72155 () Bool)

(assert (=> bm!72155 (= call!72158 call!72156)))

(declare-fun b!1569969 () Bool)

(assert (=> b!1569969 (= e!875251 e!875252)))

(assert (=> b!1569969 (= c!144784 (and (is-Cons!36914 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)) (= (_1!12780 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))) key2!21)))))

(declare-fun b!1569970 () Bool)

(assert (=> b!1569970 (= e!875249 call!72158)))

(declare-fun b!1569971 () Bool)

(declare-fun res!1072921 () Bool)

(assert (=> b!1569971 (=> (not res!1072921) (not e!875250))))

(assert (=> b!1569971 (= res!1072921 (containsKey!869 lt!673287 key2!21))))

(assert (= (and d!163923 c!144782) b!1569965))

(assert (= (and d!163923 (not c!144782)) b!1569969))

(assert (= (and b!1569969 c!144784) b!1569964))

(assert (= (and b!1569969 (not c!144784)) b!1569967))

(assert (= (and b!1569967 c!144785) b!1569970))

(assert (= (and b!1569967 (not c!144785)) b!1569968))

(assert (= (or b!1569970 b!1569968) bm!72155))

(assert (= (or b!1569964 bm!72155) bm!72153))

(assert (= (or b!1569965 bm!72153) bm!72154))

(assert (= (and bm!72154 c!144783) b!1569963))

(assert (= (and bm!72154 (not c!144783)) b!1569966))

(assert (= (and d!163923 res!1072920) b!1569971))

(assert (= (and b!1569971 res!1072921) b!1569962))

(declare-fun m!1444009 () Bool)

(assert (=> b!1569963 m!1444009))

(declare-fun m!1444011 () Bool)

(assert (=> b!1569971 m!1444011))

(declare-fun m!1444013 () Bool)

(assert (=> b!1569962 m!1444013))

(declare-fun m!1444015 () Bool)

(assert (=> d!163923 m!1444015))

(assert (=> d!163923 m!1443909))

(declare-fun m!1444017 () Bool)

(assert (=> d!163923 m!1444017))

(declare-fun m!1444019 () Bool)

(assert (=> bm!72154 m!1444019))

(assert (=> b!1569808 d!163923))

(declare-fun lt!673291 () List!36918)

(declare-fun e!875260 () Bool)

(declare-fun b!1569982 () Bool)

(assert (=> b!1569982 (= e!875260 (contains!10444 lt!673291 (tuple2!25541 key2!21 v2!10)))))

(declare-fun b!1569984 () Bool)

(declare-fun e!875262 () List!36918)

(declare-fun call!72162 () List!36918)

(assert (=> b!1569984 (= e!875262 call!72162)))

(declare-fun b!1569985 () Bool)

(declare-fun e!875261 () List!36918)

(declare-fun call!72163 () List!36918)

(assert (=> b!1569985 (= e!875261 call!72163)))

(declare-fun c!144792 () Bool)

(declare-fun c!144793 () Bool)

(declare-fun b!1569986 () Bool)

(declare-fun e!875258 () List!36918)

(assert (=> b!1569986 (= e!875258 (ite c!144792 (t!51833 (t!51833 l!750)) (ite c!144793 (Cons!36914 (h!38362 (t!51833 l!750)) (t!51833 (t!51833 l!750))) Nil!36915)))))

(declare-fun bm!72159 () Bool)

(assert (=> bm!72159 (= call!72162 call!72163)))

(declare-fun b!1569987 () Bool)

(assert (=> b!1569987 (= c!144793 (and (is-Cons!36914 (t!51833 l!750)) (bvsgt (_1!12780 (h!38362 (t!51833 l!750))) key2!21)))))

(declare-fun e!875259 () List!36918)

(assert (=> b!1569987 (= e!875262 e!875259)))

(declare-fun d!163927 () Bool)

(assert (=> d!163927 e!875260))

(declare-fun res!1072924 () Bool)

(assert (=> d!163927 (=> (not res!1072924) (not e!875260))))

(assert (=> d!163927 (= res!1072924 (isStrictlySorted!1019 lt!673291))))

(assert (=> d!163927 (= lt!673291 e!875261)))

(declare-fun c!144790 () Bool)

(assert (=> d!163927 (= c!144790 (and (is-Cons!36914 (t!51833 l!750)) (bvslt (_1!12780 (h!38362 (t!51833 l!750))) key2!21)))))

(assert (=> d!163927 (isStrictlySorted!1019 (t!51833 l!750))))

(assert (=> d!163927 (= (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10) lt!673291)))

(declare-fun b!1569983 () Bool)

(assert (=> b!1569983 (= e!875258 (insertStrictlySorted!597 (t!51833 (t!51833 l!750)) key2!21 v2!10))))

(declare-fun b!1569988 () Bool)

(declare-fun call!72164 () List!36918)

(assert (=> b!1569988 (= e!875259 call!72164)))

(declare-fun bm!72160 () Bool)

(assert (=> bm!72160 (= call!72163 ($colon$colon!1001 e!875258 (ite c!144790 (h!38362 (t!51833 l!750)) (tuple2!25541 key2!21 v2!10))))))

(declare-fun c!144791 () Bool)

(assert (=> bm!72160 (= c!144791 c!144790)))

(declare-fun bm!72161 () Bool)

(assert (=> bm!72161 (= call!72164 call!72162)))

(declare-fun b!1569989 () Bool)

(assert (=> b!1569989 (= e!875261 e!875262)))

(assert (=> b!1569989 (= c!144792 (and (is-Cons!36914 (t!51833 l!750)) (= (_1!12780 (h!38362 (t!51833 l!750))) key2!21)))))

(declare-fun b!1569990 () Bool)

(assert (=> b!1569990 (= e!875259 call!72164)))

(declare-fun b!1569991 () Bool)

(declare-fun res!1072925 () Bool)

(assert (=> b!1569991 (=> (not res!1072925) (not e!875260))))

(assert (=> b!1569991 (= res!1072925 (containsKey!869 lt!673291 key2!21))))

(assert (= (and d!163927 c!144790) b!1569985))

(assert (= (and d!163927 (not c!144790)) b!1569989))

(assert (= (and b!1569989 c!144792) b!1569984))

(assert (= (and b!1569989 (not c!144792)) b!1569987))

(assert (= (and b!1569987 c!144793) b!1569990))

(assert (= (and b!1569987 (not c!144793)) b!1569988))

(assert (= (or b!1569990 b!1569988) bm!72161))

(assert (= (or b!1569984 bm!72161) bm!72159))

(assert (= (or b!1569985 bm!72159) bm!72160))

(assert (= (and bm!72160 c!144791) b!1569983))

(assert (= (and bm!72160 (not c!144791)) b!1569986))

(assert (= (and d!163927 res!1072924) b!1569991))

(assert (= (and b!1569991 res!1072925) b!1569982))

(declare-fun m!1444021 () Bool)

(assert (=> b!1569983 m!1444021))

(declare-fun m!1444023 () Bool)

(assert (=> b!1569991 m!1444023))

(declare-fun m!1444025 () Bool)

(assert (=> b!1569982 m!1444025))

(declare-fun m!1444027 () Bool)

(assert (=> d!163927 m!1444027))

(assert (=> d!163927 m!1443903))

(declare-fun m!1444029 () Bool)

(assert (=> bm!72160 m!1444029))

(assert (=> b!1569808 d!163927))

(declare-fun b!1569992 () Bool)

(declare-fun lt!673293 () List!36918)

(declare-fun e!875265 () Bool)

(assert (=> b!1569992 (= e!875265 (contains!10444 lt!673293 (tuple2!25541 key1!37 v1!32)))))

(declare-fun b!1569994 () Bool)

(declare-fun e!875267 () List!36918)

(declare-fun call!72165 () List!36918)

(assert (=> b!1569994 (= e!875267 call!72165)))

(declare-fun b!1569995 () Bool)

(declare-fun e!875266 () List!36918)

(declare-fun call!72166 () List!36918)

(assert (=> b!1569995 (= e!875266 call!72166)))

(declare-fun e!875263 () List!36918)

(declare-fun b!1569996 () Bool)

(declare-fun c!144797 () Bool)

(declare-fun c!144796 () Bool)

(assert (=> b!1569996 (= e!875263 (ite c!144796 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)) (ite c!144797 (Cons!36914 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)) (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))) Nil!36915)))))

(declare-fun bm!72162 () Bool)

(assert (=> bm!72162 (= call!72165 call!72166)))

(declare-fun b!1569997 () Bool)

(assert (=> b!1569997 (= c!144797 (and (is-Cons!36914 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)) (bvsgt (_1!12780 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))) key1!37)))))

(declare-fun e!875264 () List!36918)

(assert (=> b!1569997 (= e!875267 e!875264)))

(declare-fun d!163929 () Bool)

(assert (=> d!163929 e!875265))

(declare-fun res!1072926 () Bool)

(assert (=> d!163929 (=> (not res!1072926) (not e!875265))))

(assert (=> d!163929 (= res!1072926 (isStrictlySorted!1019 lt!673293))))

(assert (=> d!163929 (= lt!673293 e!875266)))

(declare-fun c!144794 () Bool)

(assert (=> d!163929 (= c!144794 (and (is-Cons!36914 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)) (bvslt (_1!12780 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))) key1!37)))))

(assert (=> d!163929 (isStrictlySorted!1019 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))))

(assert (=> d!163929 (= (insertStrictlySorted!597 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10) key1!37 v1!32) lt!673293)))

(declare-fun b!1569993 () Bool)

(assert (=> b!1569993 (= e!875263 (insertStrictlySorted!597 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)) key1!37 v1!32))))

(declare-fun b!1569998 () Bool)

(declare-fun call!72167 () List!36918)

(assert (=> b!1569998 (= e!875264 call!72167)))

(declare-fun bm!72163 () Bool)

(assert (=> bm!72163 (= call!72166 ($colon$colon!1001 e!875263 (ite c!144794 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)) (tuple2!25541 key1!37 v1!32))))))

(declare-fun c!144795 () Bool)

(assert (=> bm!72163 (= c!144795 c!144794)))

(declare-fun bm!72164 () Bool)

(assert (=> bm!72164 (= call!72167 call!72165)))

(declare-fun b!1569999 () Bool)

(assert (=> b!1569999 (= e!875266 e!875267)))

(assert (=> b!1569999 (= c!144796 (and (is-Cons!36914 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)) (= (_1!12780 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))) key1!37)))))

(declare-fun b!1570000 () Bool)

(assert (=> b!1570000 (= e!875264 call!72167)))

(declare-fun b!1570001 () Bool)

(declare-fun res!1072927 () Bool)

(assert (=> b!1570001 (=> (not res!1072927) (not e!875265))))

(assert (=> b!1570001 (= res!1072927 (containsKey!869 lt!673293 key1!37))))

(assert (= (and d!163929 c!144794) b!1569995))

(assert (= (and d!163929 (not c!144794)) b!1569999))

(assert (= (and b!1569999 c!144796) b!1569994))

(assert (= (and b!1569999 (not c!144796)) b!1569997))

(assert (= (and b!1569997 c!144797) b!1570000))

(assert (= (and b!1569997 (not c!144797)) b!1569998))

(assert (= (or b!1570000 b!1569998) bm!72164))

(assert (= (or b!1569994 bm!72164) bm!72162))

(assert (= (or b!1569995 bm!72162) bm!72163))

(assert (= (and bm!72163 c!144795) b!1569993))

(assert (= (and bm!72163 (not c!144795)) b!1569996))

(assert (= (and d!163929 res!1072926) b!1570001))

(assert (= (and b!1570001 res!1072927) b!1569992))

(declare-fun m!1444041 () Bool)

(assert (=> b!1569993 m!1444041))

(declare-fun m!1444043 () Bool)

(assert (=> b!1570001 m!1444043))

(declare-fun m!1444045 () Bool)

(assert (=> b!1569992 m!1444045))

(declare-fun m!1444047 () Bool)

(assert (=> d!163929 m!1444047))

(assert (=> d!163929 m!1443907))

(declare-fun m!1444049 () Bool)

(assert (=> d!163929 m!1444049))

(declare-fun m!1444051 () Bool)

(assert (=> bm!72163 m!1444051))

(assert (=> b!1569808 d!163929))

(declare-fun lt!673296 () List!36918)

(declare-fun b!1570022 () Bool)

(declare-fun e!875280 () Bool)

(assert (=> b!1570022 (= e!875280 (contains!10444 lt!673296 (tuple2!25541 key1!37 v1!32)))))

(declare-fun b!1570024 () Bool)

(declare-fun e!875282 () List!36918)

(declare-fun call!72174 () List!36918)

(assert (=> b!1570024 (= e!875282 call!72174)))

(declare-fun b!1570025 () Bool)

(declare-fun e!875281 () List!36918)

(declare-fun call!72175 () List!36918)

(assert (=> b!1570025 (= e!875281 call!72175)))

(declare-fun c!144808 () Bool)

(declare-fun e!875278 () List!36918)

(declare-fun b!1570026 () Bool)

(declare-fun c!144809 () Bool)

(assert (=> b!1570026 (= e!875278 (ite c!144808 (t!51833 (t!51833 l!750)) (ite c!144809 (Cons!36914 (h!38362 (t!51833 l!750)) (t!51833 (t!51833 l!750))) Nil!36915)))))

(declare-fun bm!72171 () Bool)

(assert (=> bm!72171 (= call!72174 call!72175)))

(declare-fun b!1570027 () Bool)

(assert (=> b!1570027 (= c!144809 (and (is-Cons!36914 (t!51833 l!750)) (bvsgt (_1!12780 (h!38362 (t!51833 l!750))) key1!37)))))

(declare-fun e!875279 () List!36918)

(assert (=> b!1570027 (= e!875282 e!875279)))

(declare-fun d!163935 () Bool)

(assert (=> d!163935 e!875280))

(declare-fun res!1072932 () Bool)

(assert (=> d!163935 (=> (not res!1072932) (not e!875280))))

(assert (=> d!163935 (= res!1072932 (isStrictlySorted!1019 lt!673296))))

(assert (=> d!163935 (= lt!673296 e!875281)))

(declare-fun c!144806 () Bool)

(assert (=> d!163935 (= c!144806 (and (is-Cons!36914 (t!51833 l!750)) (bvslt (_1!12780 (h!38362 (t!51833 l!750))) key1!37)))))

(assert (=> d!163935 (isStrictlySorted!1019 (t!51833 l!750))))

(assert (=> d!163935 (= (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32) lt!673296)))

(declare-fun b!1570023 () Bool)

(assert (=> b!1570023 (= e!875278 (insertStrictlySorted!597 (t!51833 (t!51833 l!750)) key1!37 v1!32))))

(declare-fun b!1570028 () Bool)

(declare-fun call!72176 () List!36918)

(assert (=> b!1570028 (= e!875279 call!72176)))

(declare-fun bm!72172 () Bool)

(assert (=> bm!72172 (= call!72175 ($colon$colon!1001 e!875278 (ite c!144806 (h!38362 (t!51833 l!750)) (tuple2!25541 key1!37 v1!32))))))

(declare-fun c!144807 () Bool)

(assert (=> bm!72172 (= c!144807 c!144806)))

(declare-fun bm!72173 () Bool)

(assert (=> bm!72173 (= call!72176 call!72174)))

(declare-fun b!1570029 () Bool)

(assert (=> b!1570029 (= e!875281 e!875282)))

(assert (=> b!1570029 (= c!144808 (and (is-Cons!36914 (t!51833 l!750)) (= (_1!12780 (h!38362 (t!51833 l!750))) key1!37)))))

(declare-fun b!1570030 () Bool)

(assert (=> b!1570030 (= e!875279 call!72176)))

(declare-fun b!1570031 () Bool)

(declare-fun res!1072933 () Bool)

(assert (=> b!1570031 (=> (not res!1072933) (not e!875280))))

(assert (=> b!1570031 (= res!1072933 (containsKey!869 lt!673296 key1!37))))

(assert (= (and d!163935 c!144806) b!1570025))

(assert (= (and d!163935 (not c!144806)) b!1570029))

(assert (= (and b!1570029 c!144808) b!1570024))

(assert (= (and b!1570029 (not c!144808)) b!1570027))

(assert (= (and b!1570027 c!144809) b!1570030))

(assert (= (and b!1570027 (not c!144809)) b!1570028))

(assert (= (or b!1570030 b!1570028) bm!72173))

(assert (= (or b!1570024 bm!72173) bm!72171))

(assert (= (or b!1570025 bm!72171) bm!72172))

(assert (= (and bm!72172 c!144807) b!1570023))

(assert (= (and bm!72172 (not c!144807)) b!1570026))

(assert (= (and d!163935 res!1072932) b!1570031))

(assert (= (and b!1570031 res!1072933) b!1570022))

(declare-fun m!1444073 () Bool)

(assert (=> b!1570023 m!1444073))

(declare-fun m!1444075 () Bool)

(assert (=> b!1570031 m!1444075))

(declare-fun m!1444077 () Bool)

(assert (=> b!1570022 m!1444077))

(declare-fun m!1444079 () Bool)

(assert (=> d!163935 m!1444079))

(assert (=> d!163935 m!1443903))

(declare-fun m!1444081 () Bool)

(assert (=> bm!72172 m!1444081))

(assert (=> b!1569808 d!163935))

(declare-fun b!1570056 () Bool)

(declare-fun e!875295 () Bool)

(declare-fun tp!114220 () Bool)

(assert (=> b!1570056 (= e!875295 (and tp_is_empty!39101 tp!114220))))

(assert (=> b!1569809 (= tp!114217 e!875295)))

(assert (= (and b!1569809 (is-Cons!36914 (t!51833 l!750))) b!1570056))

(push 1)

(assert (not d!163917))

(assert (not b!1570001))

(assert (not bm!72163))

(assert (not bm!72145))

(assert (not bm!72142))

(assert (not b!1569992))

(assert (not b!1569971))

(assert (not b!1570023))

(assert (not d!163935))

(assert (not b!1569982))

(assert (not bm!72160))

(assert (not b!1569902))

(assert (not b!1569831))

(assert (not b!1569911))

(assert (not b!1570056))

(assert (not d!163915))

(assert (not d!163927))

(assert (not b!1569963))

(assert (not b!1570031))

(assert (not b!1569983))

(assert (not b!1569961))

(assert (not bm!72172))

(assert (not b!1569933))

(assert (not b!1569993))

(assert (not b!1569962))

(assert (not b!1569953))

(assert (not b!1570022))

(assert (not b!1569922))

(assert (not b!1569952))

(assert (not bm!72136))

(assert (not b!1569941))

(assert (not b!1569923))

(assert (not b!1569932))

(assert (not b!1569829))

(assert (not d!163921))

(assert (not d!163923))

(assert (not b!1569903))

(assert (not bm!72151))

(assert (not b!1569931))

(assert (not bm!72154))

(assert tp_is_empty!39101)

(assert (not d!163911))

(assert (not b!1569991))

(assert (not d!163907))

(assert (not d!163929))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!164135 () Bool)

(declare-fun res!1073112 () Bool)

(declare-fun e!875538 () Bool)

(assert (=> d!164135 (=> res!1073112 e!875538)))

(assert (=> d!164135 (= res!1073112 (or (is-Nil!36915 lt!673291) (is-Nil!36915 (t!51833 lt!673291))))))

(assert (=> d!164135 (= (isStrictlySorted!1019 lt!673291) e!875538)))

(declare-fun b!1570403 () Bool)

(declare-fun e!875539 () Bool)

(assert (=> b!1570403 (= e!875538 e!875539)))

(declare-fun res!1073113 () Bool)

(assert (=> b!1570403 (=> (not res!1073113) (not e!875539))))

(assert (=> b!1570403 (= res!1073113 (bvslt (_1!12780 (h!38362 lt!673291)) (_1!12780 (h!38362 (t!51833 lt!673291)))))))

(declare-fun b!1570404 () Bool)

(assert (=> b!1570404 (= e!875539 (isStrictlySorted!1019 (t!51833 lt!673291)))))

(assert (= (and d!164135 (not res!1073112)) b!1570403))

(assert (= (and b!1570403 res!1073113) b!1570404))

(declare-fun m!1444489 () Bool)

(assert (=> b!1570404 m!1444489))

(assert (=> d!163927 d!164135))

(assert (=> d!163927 d!163905))

(declare-fun d!164137 () Bool)

(assert (=> d!164137 (= ($colon$colon!1001 e!875243 (ite c!144778 (h!38362 l!750) (tuple2!25541 key1!37 v1!32))) (Cons!36914 (ite c!144778 (h!38362 l!750) (tuple2!25541 key1!37 v1!32)) e!875243))))

(assert (=> bm!72151 d!164137))

(declare-fun d!164139 () Bool)

(declare-fun res!1073114 () Bool)

(declare-fun e!875540 () Bool)

(assert (=> d!164139 (=> res!1073114 e!875540)))

(assert (=> d!164139 (= res!1073114 (or (is-Nil!36915 lt!673293) (is-Nil!36915 (t!51833 lt!673293))))))

(assert (=> d!164139 (= (isStrictlySorted!1019 lt!673293) e!875540)))

(declare-fun b!1570405 () Bool)

(declare-fun e!875541 () Bool)

(assert (=> b!1570405 (= e!875540 e!875541)))

(declare-fun res!1073115 () Bool)

(assert (=> b!1570405 (=> (not res!1073115) (not e!875541))))

(assert (=> b!1570405 (= res!1073115 (bvslt (_1!12780 (h!38362 lt!673293)) (_1!12780 (h!38362 (t!51833 lt!673293)))))))

(declare-fun b!1570406 () Bool)

(assert (=> b!1570406 (= e!875541 (isStrictlySorted!1019 (t!51833 lt!673293)))))

(assert (= (and d!164139 (not res!1073114)) b!1570405))

(assert (= (and b!1570405 res!1073115) b!1570406))

(declare-fun m!1444491 () Bool)

(assert (=> b!1570406 m!1444491))

(assert (=> d!163929 d!164139))

(declare-fun d!164141 () Bool)

(declare-fun res!1073116 () Bool)

(declare-fun e!875542 () Bool)

(assert (=> d!164141 (=> res!1073116 e!875542)))

(assert (=> d!164141 (= res!1073116 (or (is-Nil!36915 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)) (is-Nil!36915 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)))))))

(assert (=> d!164141 (= (isStrictlySorted!1019 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)) e!875542)))

(declare-fun b!1570407 () Bool)

(declare-fun e!875543 () Bool)

(assert (=> b!1570407 (= e!875542 e!875543)))

(declare-fun res!1073117 () Bool)

(assert (=> b!1570407 (=> (not res!1073117) (not e!875543))))

(assert (=> b!1570407 (= res!1073117 (bvslt (_1!12780 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))) (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))))))))

(declare-fun b!1570408 () Bool)

(assert (=> b!1570408 (= e!875543 (isStrictlySorted!1019 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))))))

(assert (= (and d!164141 (not res!1073116)) b!1570407))

(assert (= (and b!1570407 res!1073117) b!1570408))

(declare-fun m!1444493 () Bool)

(assert (=> b!1570408 m!1444493))

(assert (=> d!163929 d!164141))

(declare-fun lt!673341 () Bool)

(declare-fun d!164143 () Bool)

(declare-fun content!823 (List!36918) (Set tuple2!25540))

(assert (=> d!164143 (= lt!673341 (member (tuple2!25541 key1!37 v1!32) (content!823 lt!673296)))))

(declare-fun e!875548 () Bool)

(assert (=> d!164143 (= lt!673341 e!875548)))

(declare-fun res!1073123 () Bool)

(assert (=> d!164143 (=> (not res!1073123) (not e!875548))))

(assert (=> d!164143 (= res!1073123 (is-Cons!36914 lt!673296))))

(assert (=> d!164143 (= (contains!10444 lt!673296 (tuple2!25541 key1!37 v1!32)) lt!673341)))

(declare-fun b!1570413 () Bool)

(declare-fun e!875549 () Bool)

(assert (=> b!1570413 (= e!875548 e!875549)))

(declare-fun res!1073122 () Bool)

(assert (=> b!1570413 (=> res!1073122 e!875549)))

(assert (=> b!1570413 (= res!1073122 (= (h!38362 lt!673296) (tuple2!25541 key1!37 v1!32)))))

(declare-fun b!1570414 () Bool)

(assert (=> b!1570414 (= e!875549 (contains!10444 (t!51833 lt!673296) (tuple2!25541 key1!37 v1!32)))))

(assert (= (and d!164143 res!1073123) b!1570413))

(assert (= (and b!1570413 (not res!1073122)) b!1570414))

(declare-fun m!1444495 () Bool)

(assert (=> d!164143 m!1444495))

(declare-fun m!1444497 () Bool)

(assert (=> d!164143 m!1444497))

(declare-fun m!1444499 () Bool)

(assert (=> b!1570414 m!1444499))

(assert (=> b!1570022 d!164143))

(declare-fun d!164145 () Bool)

(declare-fun res!1073128 () Bool)

(declare-fun e!875554 () Bool)

(assert (=> d!164145 (=> res!1073128 e!875554)))

(assert (=> d!164145 (= res!1073128 (and (is-Cons!36914 lt!673287) (= (_1!12780 (h!38362 lt!673287)) key2!21)))))

(assert (=> d!164145 (= (containsKey!869 lt!673287 key2!21) e!875554)))

(declare-fun b!1570419 () Bool)

(declare-fun e!875555 () Bool)

(assert (=> b!1570419 (= e!875554 e!875555)))

(declare-fun res!1073129 () Bool)

(assert (=> b!1570419 (=> (not res!1073129) (not e!875555))))

(assert (=> b!1570419 (= res!1073129 (and (or (not (is-Cons!36914 lt!673287)) (bvsle (_1!12780 (h!38362 lt!673287)) key2!21)) (is-Cons!36914 lt!673287) (bvslt (_1!12780 (h!38362 lt!673287)) key2!21)))))

(declare-fun b!1570420 () Bool)

(assert (=> b!1570420 (= e!875555 (containsKey!869 (t!51833 lt!673287) key2!21))))

(assert (= (and d!164145 (not res!1073128)) b!1570419))

(assert (= (and b!1570419 res!1073129) b!1570420))

(declare-fun m!1444501 () Bool)

(assert (=> b!1570420 m!1444501))

(assert (=> b!1569971 d!164145))

(declare-fun b!1570421 () Bool)

(declare-fun lt!673342 () List!36918)

(declare-fun e!875558 () Bool)

(assert (=> b!1570421 (= e!875558 (contains!10444 lt!673342 (tuple2!25541 key1!37 v1!32)))))

(declare-fun b!1570423 () Bool)

(declare-fun e!875560 () List!36918)

(declare-fun call!72243 () List!36918)

(assert (=> b!1570423 (= e!875560 call!72243)))

(declare-fun b!1570424 () Bool)

(declare-fun e!875559 () List!36918)

(declare-fun call!72244 () List!36918)

(assert (=> b!1570424 (= e!875559 call!72244)))

(declare-fun e!875556 () List!36918)

(declare-fun c!144901 () Bool)

(declare-fun c!144900 () Bool)

(declare-fun b!1570425 () Bool)

(assert (=> b!1570425 (= e!875556 (ite c!144900 (t!51833 (t!51833 (t!51833 l!750))) (ite c!144901 (Cons!36914 (h!38362 (t!51833 (t!51833 l!750))) (t!51833 (t!51833 (t!51833 l!750)))) Nil!36915)))))

(declare-fun bm!72240 () Bool)

(assert (=> bm!72240 (= call!72243 call!72244)))

(declare-fun b!1570426 () Bool)

(assert (=> b!1570426 (= c!144901 (and (is-Cons!36914 (t!51833 (t!51833 l!750))) (bvsgt (_1!12780 (h!38362 (t!51833 (t!51833 l!750)))) key1!37)))))

(declare-fun e!875557 () List!36918)

(assert (=> b!1570426 (= e!875560 e!875557)))

(declare-fun d!164147 () Bool)

(assert (=> d!164147 e!875558))

(declare-fun res!1073130 () Bool)

(assert (=> d!164147 (=> (not res!1073130) (not e!875558))))

(assert (=> d!164147 (= res!1073130 (isStrictlySorted!1019 lt!673342))))

(assert (=> d!164147 (= lt!673342 e!875559)))

(declare-fun c!144898 () Bool)

(assert (=> d!164147 (= c!144898 (and (is-Cons!36914 (t!51833 (t!51833 l!750))) (bvslt (_1!12780 (h!38362 (t!51833 (t!51833 l!750)))) key1!37)))))

(assert (=> d!164147 (isStrictlySorted!1019 (t!51833 (t!51833 l!750)))))

(assert (=> d!164147 (= (insertStrictlySorted!597 (t!51833 (t!51833 l!750)) key1!37 v1!32) lt!673342)))

(declare-fun b!1570422 () Bool)

(assert (=> b!1570422 (= e!875556 (insertStrictlySorted!597 (t!51833 (t!51833 (t!51833 l!750))) key1!37 v1!32))))

(declare-fun b!1570427 () Bool)

(declare-fun call!72245 () List!36918)

(assert (=> b!1570427 (= e!875557 call!72245)))

(declare-fun bm!72241 () Bool)

(assert (=> bm!72241 (= call!72244 ($colon$colon!1001 e!875556 (ite c!144898 (h!38362 (t!51833 (t!51833 l!750))) (tuple2!25541 key1!37 v1!32))))))

(declare-fun c!144899 () Bool)

(assert (=> bm!72241 (= c!144899 c!144898)))

(declare-fun bm!72242 () Bool)

(assert (=> bm!72242 (= call!72245 call!72243)))

(declare-fun b!1570428 () Bool)

(assert (=> b!1570428 (= e!875559 e!875560)))

(assert (=> b!1570428 (= c!144900 (and (is-Cons!36914 (t!51833 (t!51833 l!750))) (= (_1!12780 (h!38362 (t!51833 (t!51833 l!750)))) key1!37)))))

(declare-fun b!1570429 () Bool)

(assert (=> b!1570429 (= e!875557 call!72245)))

(declare-fun b!1570430 () Bool)

(declare-fun res!1073131 () Bool)

(assert (=> b!1570430 (=> (not res!1073131) (not e!875558))))

(assert (=> b!1570430 (= res!1073131 (containsKey!869 lt!673342 key1!37))))

(assert (= (and d!164147 c!144898) b!1570424))

(assert (= (and d!164147 (not c!144898)) b!1570428))

(assert (= (and b!1570428 c!144900) b!1570423))

(assert (= (and b!1570428 (not c!144900)) b!1570426))

(assert (= (and b!1570426 c!144901) b!1570429))

(assert (= (and b!1570426 (not c!144901)) b!1570427))

(assert (= (or b!1570429 b!1570427) bm!72242))

(assert (= (or b!1570423 bm!72242) bm!72240))

(assert (= (or b!1570424 bm!72240) bm!72241))

(assert (= (and bm!72241 c!144899) b!1570422))

(assert (= (and bm!72241 (not c!144899)) b!1570425))

(assert (= (and d!164147 res!1073130) b!1570430))

(assert (= (and b!1570430 res!1073131) b!1570421))

(declare-fun m!1444503 () Bool)

(assert (=> b!1570422 m!1444503))

(declare-fun m!1444505 () Bool)

(assert (=> b!1570430 m!1444505))

(declare-fun m!1444507 () Bool)

(assert (=> b!1570421 m!1444507))

(declare-fun m!1444509 () Bool)

(assert (=> d!164147 m!1444509))

(assert (=> d!164147 m!1443927))

(declare-fun m!1444511 () Bool)

(assert (=> bm!72241 m!1444511))

(assert (=> b!1570023 d!164147))

(declare-fun d!164149 () Bool)

(declare-fun res!1073132 () Bool)

(declare-fun e!875561 () Bool)

(assert (=> d!164149 (=> res!1073132 e!875561)))

(assert (=> d!164149 (= res!1073132 (or (is-Nil!36915 lt!673275) (is-Nil!36915 (t!51833 lt!673275))))))

(assert (=> d!164149 (= (isStrictlySorted!1019 lt!673275) e!875561)))

(declare-fun b!1570431 () Bool)

(declare-fun e!875562 () Bool)

(assert (=> b!1570431 (= e!875561 e!875562)))

(declare-fun res!1073133 () Bool)

(assert (=> b!1570431 (=> (not res!1073133) (not e!875562))))

(assert (=> b!1570431 (= res!1073133 (bvslt (_1!12780 (h!38362 lt!673275)) (_1!12780 (h!38362 (t!51833 lt!673275)))))))

(declare-fun b!1570432 () Bool)

(assert (=> b!1570432 (= e!875562 (isStrictlySorted!1019 (t!51833 lt!673275)))))

(assert (= (and d!164149 (not res!1073132)) b!1570431))

(assert (= (and b!1570431 res!1073133) b!1570432))

(declare-fun m!1444513 () Bool)

(assert (=> b!1570432 m!1444513))

(assert (=> d!163907 d!164149))

(declare-fun d!164151 () Bool)

(declare-fun res!1073134 () Bool)

(declare-fun e!875563 () Bool)

(assert (=> d!164151 (=> res!1073134 e!875563)))

(assert (=> d!164151 (= res!1073134 (or (is-Nil!36915 (insertStrictlySorted!597 l!750 key2!21 v2!10)) (is-Nil!36915 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10)))))))

(assert (=> d!164151 (= (isStrictlySorted!1019 (insertStrictlySorted!597 l!750 key2!21 v2!10)) e!875563)))

(declare-fun b!1570433 () Bool)

(declare-fun e!875564 () Bool)

(assert (=> b!1570433 (= e!875563 e!875564)))

(declare-fun res!1073135 () Bool)

(assert (=> b!1570433 (=> (not res!1073135) (not e!875564))))

(assert (=> b!1570433 (= res!1073135 (bvslt (_1!12780 (h!38362 (insertStrictlySorted!597 l!750 key2!21 v2!10))) (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10))))))))

(declare-fun b!1570434 () Bool)

(assert (=> b!1570434 (= e!875564 (isStrictlySorted!1019 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10))))))

(assert (= (and d!164151 (not res!1073134)) b!1570433))

(assert (= (and b!1570433 res!1073135) b!1570434))

(declare-fun m!1444515 () Bool)

(assert (=> b!1570434 m!1444515))

(assert (=> d!163907 d!164151))

(declare-fun b!1570435 () Bool)

(declare-fun lt!673343 () List!36918)

(declare-fun e!875567 () Bool)

(assert (=> b!1570435 (= e!875567 (contains!10444 lt!673343 (tuple2!25541 key1!37 v1!32)))))

(declare-fun b!1570437 () Bool)

(declare-fun e!875569 () List!36918)

(declare-fun call!72246 () List!36918)

(assert (=> b!1570437 (= e!875569 call!72246)))

(declare-fun b!1570438 () Bool)

(declare-fun e!875568 () List!36918)

(declare-fun call!72247 () List!36918)

(assert (=> b!1570438 (= e!875568 call!72247)))

(declare-fun e!875565 () List!36918)

(declare-fun c!144905 () Bool)

(declare-fun c!144904 () Bool)

(declare-fun b!1570439 () Bool)

(assert (=> b!1570439 (= e!875565 (ite c!144904 (t!51833 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))) (ite c!144905 (Cons!36914 (h!38362 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))) (t!51833 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)))) Nil!36915)))))

(declare-fun bm!72243 () Bool)

(assert (=> bm!72243 (= call!72246 call!72247)))

(declare-fun b!1570440 () Bool)

(assert (=> b!1570440 (= c!144905 (and (is-Cons!36914 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))) (bvsgt (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)))) key1!37)))))

(declare-fun e!875566 () List!36918)

(assert (=> b!1570440 (= e!875569 e!875566)))

(declare-fun d!164153 () Bool)

(assert (=> d!164153 e!875567))

(declare-fun res!1073136 () Bool)

(assert (=> d!164153 (=> (not res!1073136) (not e!875567))))

(assert (=> d!164153 (= res!1073136 (isStrictlySorted!1019 lt!673343))))

(assert (=> d!164153 (= lt!673343 e!875568)))

(declare-fun c!144902 () Bool)

(assert (=> d!164153 (= c!144902 (and (is-Cons!36914 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))) (bvslt (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)))) key1!37)))))

(assert (=> d!164153 (isStrictlySorted!1019 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)))))

(assert (=> d!164153 (= (insertStrictlySorted!597 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)) key1!37 v1!32) lt!673343)))

(declare-fun b!1570436 () Bool)

(assert (=> b!1570436 (= e!875565 (insertStrictlySorted!597 (t!51833 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))) key1!37 v1!32))))

(declare-fun b!1570441 () Bool)

(declare-fun call!72248 () List!36918)

(assert (=> b!1570441 (= e!875566 call!72248)))

(declare-fun bm!72244 () Bool)

(assert (=> bm!72244 (= call!72247 ($colon$colon!1001 e!875565 (ite c!144902 (h!38362 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))) (tuple2!25541 key1!37 v1!32))))))

(declare-fun c!144903 () Bool)

(assert (=> bm!72244 (= c!144903 c!144902)))

(declare-fun bm!72245 () Bool)

(assert (=> bm!72245 (= call!72248 call!72246)))

(declare-fun b!1570442 () Bool)

(assert (=> b!1570442 (= e!875568 e!875569)))

(assert (=> b!1570442 (= c!144904 (and (is-Cons!36914 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10))) (= (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)))) key1!37)))))

(declare-fun b!1570443 () Bool)

(assert (=> b!1570443 (= e!875566 call!72248)))

(declare-fun b!1570444 () Bool)

(declare-fun res!1073137 () Bool)

(assert (=> b!1570444 (=> (not res!1073137) (not e!875567))))

(assert (=> b!1570444 (= res!1073137 (containsKey!869 lt!673343 key1!37))))

(assert (= (and d!164153 c!144902) b!1570438))

(assert (= (and d!164153 (not c!144902)) b!1570442))

(assert (= (and b!1570442 c!144904) b!1570437))

(assert (= (and b!1570442 (not c!144904)) b!1570440))

(assert (= (and b!1570440 c!144905) b!1570443))

(assert (= (and b!1570440 (not c!144905)) b!1570441))

(assert (= (or b!1570443 b!1570441) bm!72245))

(assert (= (or b!1570437 bm!72245) bm!72243))

(assert (= (or b!1570438 bm!72243) bm!72244))

(assert (= (and bm!72244 c!144903) b!1570436))

(assert (= (and bm!72244 (not c!144903)) b!1570439))

(assert (= (and d!164153 res!1073136) b!1570444))

(assert (= (and b!1570444 res!1073137) b!1570435))

(declare-fun m!1444517 () Bool)

(assert (=> b!1570436 m!1444517))

(declare-fun m!1444519 () Bool)

(assert (=> b!1570444 m!1444519))

(declare-fun m!1444521 () Bool)

(assert (=> b!1570435 m!1444521))

(declare-fun m!1444523 () Bool)

(assert (=> d!164153 m!1444523))

(assert (=> d!164153 m!1444493))

(declare-fun m!1444525 () Bool)

(assert (=> bm!72244 m!1444525))

(assert (=> b!1569993 d!164153))

(declare-fun d!164155 () Bool)

(assert (=> d!164155 (= ($colon$colon!1001 e!875218 (ite c!144758 (h!38362 (insertStrictlySorted!597 l!750 key2!21 v2!10)) (tuple2!25541 key1!37 v1!32))) (Cons!36914 (ite c!144758 (h!38362 (insertStrictlySorted!597 l!750 key2!21 v2!10)) (tuple2!25541 key1!37 v1!32)) e!875218))))

(assert (=> bm!72136 d!164155))

(declare-fun d!164157 () Bool)

(declare-fun res!1073138 () Bool)

(declare-fun e!875570 () Bool)

(assert (=> d!164157 (=> res!1073138 e!875570)))

(assert (=> d!164157 (= res!1073138 (or (is-Nil!36915 lt!673286) (is-Nil!36915 (t!51833 lt!673286))))))

(assert (=> d!164157 (= (isStrictlySorted!1019 lt!673286) e!875570)))

(declare-fun b!1570445 () Bool)

(declare-fun e!875571 () Bool)

(assert (=> b!1570445 (= e!875570 e!875571)))

(declare-fun res!1073139 () Bool)

(assert (=> b!1570445 (=> (not res!1073139) (not e!875571))))

(assert (=> b!1570445 (= res!1073139 (bvslt (_1!12780 (h!38362 lt!673286)) (_1!12780 (h!38362 (t!51833 lt!673286)))))))

(declare-fun b!1570446 () Bool)

(assert (=> b!1570446 (= e!875571 (isStrictlySorted!1019 (t!51833 lt!673286)))))

(assert (= (and d!164157 (not res!1073138)) b!1570445))

(assert (= (and b!1570445 res!1073139) b!1570446))

(declare-fun m!1444527 () Bool)

(assert (=> b!1570446 m!1444527))

(assert (=> d!163921 d!164157))

(assert (=> d!163921 d!163903))

(declare-fun d!164159 () Bool)

(declare-fun res!1073140 () Bool)

(declare-fun e!875572 () Bool)

(assert (=> d!164159 (=> res!1073140 e!875572)))

(assert (=> d!164159 (= res!1073140 (and (is-Cons!36914 lt!673282) (= (_1!12780 (h!38362 lt!673282)) key2!21)))))

(assert (=> d!164159 (= (containsKey!869 lt!673282 key2!21) e!875572)))

(declare-fun b!1570447 () Bool)

(declare-fun e!875573 () Bool)

(assert (=> b!1570447 (= e!875572 e!875573)))

(declare-fun res!1073141 () Bool)

(assert (=> b!1570447 (=> (not res!1073141) (not e!875573))))

(assert (=> b!1570447 (= res!1073141 (and (or (not (is-Cons!36914 lt!673282)) (bvsle (_1!12780 (h!38362 lt!673282)) key2!21)) (is-Cons!36914 lt!673282) (bvslt (_1!12780 (h!38362 lt!673282)) key2!21)))))

(declare-fun b!1570448 () Bool)

(assert (=> b!1570448 (= e!875573 (containsKey!869 (t!51833 lt!673282) key2!21))))

(assert (= (and d!164159 (not res!1073140)) b!1570447))

(assert (= (and b!1570447 res!1073141) b!1570448))

(declare-fun m!1444529 () Bool)

(assert (=> b!1570448 m!1444529))

(assert (=> b!1569931 d!164159))

(declare-fun lt!673344 () Bool)

(declare-fun d!164161 () Bool)

(assert (=> d!164161 (= lt!673344 (member (tuple2!25541 key2!21 v2!10) (content!823 lt!673291)))))

(declare-fun e!875574 () Bool)

(assert (=> d!164161 (= lt!673344 e!875574)))

(declare-fun res!1073143 () Bool)

(assert (=> d!164161 (=> (not res!1073143) (not e!875574))))

(assert (=> d!164161 (= res!1073143 (is-Cons!36914 lt!673291))))

(assert (=> d!164161 (= (contains!10444 lt!673291 (tuple2!25541 key2!21 v2!10)) lt!673344)))

(declare-fun b!1570449 () Bool)

(declare-fun e!875575 () Bool)

(assert (=> b!1570449 (= e!875574 e!875575)))

(declare-fun res!1073142 () Bool)

(assert (=> b!1570449 (=> res!1073142 e!875575)))

(assert (=> b!1570449 (= res!1073142 (= (h!38362 lt!673291) (tuple2!25541 key2!21 v2!10)))))

(declare-fun b!1570450 () Bool)

(assert (=> b!1570450 (= e!875575 (contains!10444 (t!51833 lt!673291) (tuple2!25541 key2!21 v2!10)))))

(assert (= (and d!164161 res!1073143) b!1570449))

(assert (= (and b!1570449 (not res!1073142)) b!1570450))

(declare-fun m!1444531 () Bool)

(assert (=> d!164161 m!1444531))

(declare-fun m!1444533 () Bool)

(assert (=> d!164161 m!1444533))

(declare-fun m!1444535 () Bool)

(assert (=> b!1570450 m!1444535))

(assert (=> b!1569982 d!164161))

(declare-fun lt!673345 () Bool)

(declare-fun d!164163 () Bool)

(assert (=> d!164163 (= lt!673345 (member (tuple2!25541 key1!37 v1!32) (content!823 lt!673293)))))

(declare-fun e!875576 () Bool)

(assert (=> d!164163 (= lt!673345 e!875576)))

(declare-fun res!1073145 () Bool)

(assert (=> d!164163 (=> (not res!1073145) (not e!875576))))

(assert (=> d!164163 (= res!1073145 (is-Cons!36914 lt!673293))))

(assert (=> d!164163 (= (contains!10444 lt!673293 (tuple2!25541 key1!37 v1!32)) lt!673345)))

(declare-fun b!1570451 () Bool)

(declare-fun e!875577 () Bool)

(assert (=> b!1570451 (= e!875576 e!875577)))

(declare-fun res!1073144 () Bool)

(assert (=> b!1570451 (=> res!1073144 e!875577)))

(assert (=> b!1570451 (= res!1073144 (= (h!38362 lt!673293) (tuple2!25541 key1!37 v1!32)))))

(declare-fun b!1570452 () Bool)

(assert (=> b!1570452 (= e!875577 (contains!10444 (t!51833 lt!673293) (tuple2!25541 key1!37 v1!32)))))

(assert (= (and d!164163 res!1073145) b!1570451))

(assert (= (and b!1570451 (not res!1073144)) b!1570452))

(declare-fun m!1444537 () Bool)

(assert (=> d!164163 m!1444537))

(declare-fun m!1444539 () Bool)

(assert (=> d!164163 m!1444539))

(declare-fun m!1444541 () Bool)

(assert (=> b!1570452 m!1444541))

(assert (=> b!1569992 d!164163))

(declare-fun d!164165 () Bool)

(declare-fun res!1073146 () Bool)

(declare-fun e!875578 () Bool)

(assert (=> d!164165 (=> res!1073146 e!875578)))

(assert (=> d!164165 (= res!1073146 (or (is-Nil!36915 (t!51833 (t!51833 l!750))) (is-Nil!36915 (t!51833 (t!51833 (t!51833 l!750))))))))

(assert (=> d!164165 (= (isStrictlySorted!1019 (t!51833 (t!51833 l!750))) e!875578)))

(declare-fun b!1570453 () Bool)

(declare-fun e!875579 () Bool)

(assert (=> b!1570453 (= e!875578 e!875579)))

(declare-fun res!1073147 () Bool)

(assert (=> b!1570453 (=> (not res!1073147) (not e!875579))))

(assert (=> b!1570453 (= res!1073147 (bvslt (_1!12780 (h!38362 (t!51833 (t!51833 l!750)))) (_1!12780 (h!38362 (t!51833 (t!51833 (t!51833 l!750)))))))))

(declare-fun b!1570454 () Bool)

(assert (=> b!1570454 (= e!875579 (isStrictlySorted!1019 (t!51833 (t!51833 (t!51833 l!750)))))))

(assert (= (and d!164165 (not res!1073146)) b!1570453))

(assert (= (and b!1570453 res!1073147) b!1570454))

(declare-fun m!1444543 () Bool)

(assert (=> b!1570454 m!1444543))

(assert (=> b!1569831 d!164165))

(declare-fun d!164167 () Bool)

(declare-fun res!1073148 () Bool)

(declare-fun e!875580 () Bool)

(assert (=> d!164167 (=> res!1073148 e!875580)))

(assert (=> d!164167 (= res!1073148 (and (is-Cons!36914 lt!673283) (= (_1!12780 (h!38362 lt!673283)) key2!21)))))

(assert (=> d!164167 (= (containsKey!869 lt!673283 key2!21) e!875580)))

(declare-fun b!1570455 () Bool)

(declare-fun e!875581 () Bool)

(assert (=> b!1570455 (= e!875580 e!875581)))

(declare-fun res!1073149 () Bool)

(assert (=> b!1570455 (=> (not res!1073149) (not e!875581))))

(assert (=> b!1570455 (= res!1073149 (and (or (not (is-Cons!36914 lt!673283)) (bvsle (_1!12780 (h!38362 lt!673283)) key2!21)) (is-Cons!36914 lt!673283) (bvslt (_1!12780 (h!38362 lt!673283)) key2!21)))))

(declare-fun b!1570456 () Bool)

(assert (=> b!1570456 (= e!875581 (containsKey!869 (t!51833 lt!673283) key2!21))))

(assert (= (and d!164167 (not res!1073148)) b!1570455))

(assert (= (and b!1570455 res!1073149) b!1570456))

(declare-fun m!1444545 () Bool)

(assert (=> b!1570456 m!1444545))

(assert (=> b!1569941 d!164167))

(declare-fun b!1570457 () Bool)

(declare-fun lt!673346 () List!36918)

(declare-fun e!875584 () Bool)

(assert (=> b!1570457 (= e!875584 (contains!10444 lt!673346 (tuple2!25541 key2!21 v2!10)))))

(declare-fun b!1570459 () Bool)

(declare-fun e!875586 () List!36918)

(declare-fun call!72249 () List!36918)

(assert (=> b!1570459 (= e!875586 call!72249)))

(declare-fun b!1570460 () Bool)

(declare-fun e!875585 () List!36918)

(declare-fun call!72250 () List!36918)

(assert (=> b!1570460 (= e!875585 call!72250)))

(declare-fun c!144909 () Bool)

(declare-fun c!144908 () Bool)

(declare-fun b!1570461 () Bool)

(declare-fun e!875582 () List!36918)

(assert (=> b!1570461 (= e!875582 (ite c!144908 (t!51833 (t!51833 (t!51833 l!750))) (ite c!144909 (Cons!36914 (h!38362 (t!51833 (t!51833 l!750))) (t!51833 (t!51833 (t!51833 l!750)))) Nil!36915)))))

(declare-fun bm!72246 () Bool)

(assert (=> bm!72246 (= call!72249 call!72250)))

(declare-fun b!1570462 () Bool)

(assert (=> b!1570462 (= c!144909 (and (is-Cons!36914 (t!51833 (t!51833 l!750))) (bvsgt (_1!12780 (h!38362 (t!51833 (t!51833 l!750)))) key2!21)))))

(declare-fun e!875583 () List!36918)

(assert (=> b!1570462 (= e!875586 e!875583)))

(declare-fun d!164169 () Bool)

(assert (=> d!164169 e!875584))

(declare-fun res!1073150 () Bool)

(assert (=> d!164169 (=> (not res!1073150) (not e!875584))))

(assert (=> d!164169 (= res!1073150 (isStrictlySorted!1019 lt!673346))))

(assert (=> d!164169 (= lt!673346 e!875585)))

(declare-fun c!144906 () Bool)

(assert (=> d!164169 (= c!144906 (and (is-Cons!36914 (t!51833 (t!51833 l!750))) (bvslt (_1!12780 (h!38362 (t!51833 (t!51833 l!750)))) key2!21)))))

(assert (=> d!164169 (isStrictlySorted!1019 (t!51833 (t!51833 l!750)))))

(assert (=> d!164169 (= (insertStrictlySorted!597 (t!51833 (t!51833 l!750)) key2!21 v2!10) lt!673346)))

(declare-fun b!1570458 () Bool)

(assert (=> b!1570458 (= e!875582 (insertStrictlySorted!597 (t!51833 (t!51833 (t!51833 l!750))) key2!21 v2!10))))

(declare-fun b!1570463 () Bool)

(declare-fun call!72251 () List!36918)

(assert (=> b!1570463 (= e!875583 call!72251)))

(declare-fun bm!72247 () Bool)

(assert (=> bm!72247 (= call!72250 ($colon$colon!1001 e!875582 (ite c!144906 (h!38362 (t!51833 (t!51833 l!750))) (tuple2!25541 key2!21 v2!10))))))

(declare-fun c!144907 () Bool)

(assert (=> bm!72247 (= c!144907 c!144906)))

(declare-fun bm!72248 () Bool)

(assert (=> bm!72248 (= call!72251 call!72249)))

(declare-fun b!1570464 () Bool)

(assert (=> b!1570464 (= e!875585 e!875586)))

(assert (=> b!1570464 (= c!144908 (and (is-Cons!36914 (t!51833 (t!51833 l!750))) (= (_1!12780 (h!38362 (t!51833 (t!51833 l!750)))) key2!21)))))

(declare-fun b!1570465 () Bool)

(assert (=> b!1570465 (= e!875583 call!72251)))

(declare-fun b!1570466 () Bool)

(declare-fun res!1073151 () Bool)

(assert (=> b!1570466 (=> (not res!1073151) (not e!875584))))

(assert (=> b!1570466 (= res!1073151 (containsKey!869 lt!673346 key2!21))))

(assert (= (and d!164169 c!144906) b!1570460))

(assert (= (and d!164169 (not c!144906)) b!1570464))

(assert (= (and b!1570464 c!144908) b!1570459))

(assert (= (and b!1570464 (not c!144908)) b!1570462))

(assert (= (and b!1570462 c!144909) b!1570465))

(assert (= (and b!1570462 (not c!144909)) b!1570463))

(assert (= (or b!1570465 b!1570463) bm!72248))

(assert (= (or b!1570459 bm!72248) bm!72246))

(assert (= (or b!1570460 bm!72246) bm!72247))

(assert (= (and bm!72247 c!144907) b!1570458))

(assert (= (and bm!72247 (not c!144907)) b!1570461))

(assert (= (and d!164169 res!1073150) b!1570466))

(assert (= (and b!1570466 res!1073151) b!1570457))

(declare-fun m!1444547 () Bool)

(assert (=> b!1570458 m!1444547))

(declare-fun m!1444549 () Bool)

(assert (=> b!1570466 m!1444549))

(declare-fun m!1444551 () Bool)

(assert (=> b!1570457 m!1444551))

(declare-fun m!1444553 () Bool)

(assert (=> d!164169 m!1444553))

(assert (=> d!164169 m!1443927))

(declare-fun m!1444555 () Bool)

(assert (=> bm!72247 m!1444555))

(assert (=> b!1569983 d!164169))

(declare-fun d!164171 () Bool)

(assert (=> d!164171 (= ($colon$colon!1001 e!875248 (ite c!144782 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)) (tuple2!25541 key2!21 v2!10))) (Cons!36914 (ite c!144782 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)) (tuple2!25541 key2!21 v2!10)) e!875248))))

(assert (=> bm!72154 d!164171))

(declare-fun d!164173 () Bool)

(assert (=> d!164173 (= ($colon$colon!1001 e!875228 (ite c!144766 (h!38362 (insertStrictlySorted!597 l!750 key1!37 v1!32)) (tuple2!25541 key2!21 v2!10))) (Cons!36914 (ite c!144766 (h!38362 (insertStrictlySorted!597 l!750 key1!37 v1!32)) (tuple2!25541 key2!21 v2!10)) e!875228))))

(assert (=> bm!72142 d!164173))

(declare-fun d!164175 () Bool)

(declare-fun lt!673347 () Bool)

(assert (=> d!164175 (= lt!673347 (member (tuple2!25541 key1!37 v1!32) (content!823 lt!673286)))))

(declare-fun e!875587 () Bool)

(assert (=> d!164175 (= lt!673347 e!875587)))

(declare-fun res!1073153 () Bool)

(assert (=> d!164175 (=> (not res!1073153) (not e!875587))))

(assert (=> d!164175 (= res!1073153 (is-Cons!36914 lt!673286))))

(assert (=> d!164175 (= (contains!10444 lt!673286 (tuple2!25541 key1!37 v1!32)) lt!673347)))

(declare-fun b!1570467 () Bool)

(declare-fun e!875588 () Bool)

(assert (=> b!1570467 (= e!875587 e!875588)))

(declare-fun res!1073152 () Bool)

(assert (=> b!1570467 (=> res!1073152 e!875588)))

(assert (=> b!1570467 (= res!1073152 (= (h!38362 lt!673286) (tuple2!25541 key1!37 v1!32)))))

(declare-fun b!1570468 () Bool)

(assert (=> b!1570468 (= e!875588 (contains!10444 (t!51833 lt!673286) (tuple2!25541 key1!37 v1!32)))))

(assert (= (and d!164175 res!1073153) b!1570467))

(assert (= (and b!1570467 (not res!1073152)) b!1570468))

(declare-fun m!1444557 () Bool)

(assert (=> d!164175 m!1444557))

(declare-fun m!1444559 () Bool)

(assert (=> d!164175 m!1444559))

(declare-fun m!1444561 () Bool)

(assert (=> b!1570468 m!1444561))

(assert (=> b!1569952 d!164175))

(declare-fun d!164177 () Bool)

(assert (=> d!164177 (= ($colon$colon!1001 e!875233 (ite c!144770 (h!38362 l!750) (tuple2!25541 key2!21 v2!10))) (Cons!36914 (ite c!144770 (h!38362 l!750) (tuple2!25541 key2!21 v2!10)) e!875233))))

(assert (=> bm!72145 d!164177))

(declare-fun e!875591 () Bool)

(declare-fun b!1570469 () Bool)

(declare-fun lt!673348 () List!36918)

(assert (=> b!1570469 (= e!875591 (contains!10444 lt!673348 (tuple2!25541 key1!37 v1!32)))))

(declare-fun b!1570471 () Bool)

(declare-fun e!875593 () List!36918)

(declare-fun call!72252 () List!36918)

(assert (=> b!1570471 (= e!875593 call!72252)))

(declare-fun b!1570472 () Bool)

(declare-fun e!875592 () List!36918)

(declare-fun call!72253 () List!36918)

(assert (=> b!1570472 (= e!875592 call!72253)))

(declare-fun c!144912 () Bool)

(declare-fun c!144913 () Bool)

(declare-fun e!875589 () List!36918)

(declare-fun b!1570473 () Bool)

(assert (=> b!1570473 (= e!875589 (ite c!144912 (t!51833 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10))) (ite c!144913 (Cons!36914 (h!38362 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10))) (t!51833 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10)))) Nil!36915)))))

(declare-fun bm!72249 () Bool)

(assert (=> bm!72249 (= call!72252 call!72253)))

(declare-fun b!1570474 () Bool)

(assert (=> b!1570474 (= c!144913 (and (is-Cons!36914 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10))) (bvsgt (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10)))) key1!37)))))

(declare-fun e!875590 () List!36918)

(assert (=> b!1570474 (= e!875593 e!875590)))

(declare-fun d!164179 () Bool)

(assert (=> d!164179 e!875591))

(declare-fun res!1073154 () Bool)

(assert (=> d!164179 (=> (not res!1073154) (not e!875591))))

(assert (=> d!164179 (= res!1073154 (isStrictlySorted!1019 lt!673348))))

(assert (=> d!164179 (= lt!673348 e!875592)))

(declare-fun c!144910 () Bool)

(assert (=> d!164179 (= c!144910 (and (is-Cons!36914 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10))) (bvslt (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10)))) key1!37)))))

(assert (=> d!164179 (isStrictlySorted!1019 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10)))))

(assert (=> d!164179 (= (insertStrictlySorted!597 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10)) key1!37 v1!32) lt!673348)))

(declare-fun b!1570470 () Bool)

(assert (=> b!1570470 (= e!875589 (insertStrictlySorted!597 (t!51833 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10))) key1!37 v1!32))))

(declare-fun b!1570475 () Bool)

(declare-fun call!72254 () List!36918)

(assert (=> b!1570475 (= e!875590 call!72254)))

(declare-fun bm!72250 () Bool)

(assert (=> bm!72250 (= call!72253 ($colon$colon!1001 e!875589 (ite c!144910 (h!38362 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10))) (tuple2!25541 key1!37 v1!32))))))

(declare-fun c!144911 () Bool)

(assert (=> bm!72250 (= c!144911 c!144910)))

(declare-fun bm!72251 () Bool)

(assert (=> bm!72251 (= call!72254 call!72252)))

(declare-fun b!1570476 () Bool)

(assert (=> b!1570476 (= e!875592 e!875593)))

(assert (=> b!1570476 (= c!144912 (and (is-Cons!36914 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10))) (= (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 l!750 key2!21 v2!10)))) key1!37)))))

(declare-fun b!1570477 () Bool)

(assert (=> b!1570477 (= e!875590 call!72254)))

(declare-fun b!1570478 () Bool)

(declare-fun res!1073155 () Bool)

(assert (=> b!1570478 (=> (not res!1073155) (not e!875591))))

(assert (=> b!1570478 (= res!1073155 (containsKey!869 lt!673348 key1!37))))

(assert (= (and d!164179 c!144910) b!1570472))

(assert (= (and d!164179 (not c!144910)) b!1570476))

(assert (= (and b!1570476 c!144912) b!1570471))

(assert (= (and b!1570476 (not c!144912)) b!1570474))

(assert (= (and b!1570474 c!144913) b!1570477))

(assert (= (and b!1570474 (not c!144913)) b!1570475))

(assert (= (or b!1570477 b!1570475) bm!72251))

(assert (= (or b!1570471 bm!72251) bm!72249))

(assert (= (or b!1570472 bm!72249) bm!72250))

(assert (= (and bm!72250 c!144911) b!1570470))

(assert (= (and bm!72250 (not c!144911)) b!1570473))

(assert (= (and d!164179 res!1073154) b!1570478))

(assert (= (and b!1570478 res!1073155) b!1570469))

(declare-fun m!1444563 () Bool)

(assert (=> b!1570470 m!1444563))

(declare-fun m!1444565 () Bool)

(assert (=> b!1570478 m!1444565))

(declare-fun m!1444567 () Bool)

(assert (=> b!1570469 m!1444567))

(declare-fun m!1444569 () Bool)

(assert (=> d!164179 m!1444569))

(assert (=> d!164179 m!1444515))

(declare-fun m!1444571 () Bool)

(assert (=> bm!72250 m!1444571))

(assert (=> b!1569903 d!164179))

(assert (=> b!1569953 d!163935))

(declare-fun d!164181 () Bool)

(declare-fun res!1073156 () Bool)

(declare-fun e!875594 () Bool)

(assert (=> d!164181 (=> res!1073156 e!875594)))

(assert (=> d!164181 (= res!1073156 (or (is-Nil!36915 lt!673287) (is-Nil!36915 (t!51833 lt!673287))))))

(assert (=> d!164181 (= (isStrictlySorted!1019 lt!673287) e!875594)))

(declare-fun b!1570479 () Bool)

(declare-fun e!875595 () Bool)

(assert (=> b!1570479 (= e!875594 e!875595)))

(declare-fun res!1073157 () Bool)

(assert (=> b!1570479 (=> (not res!1073157) (not e!875595))))

(assert (=> b!1570479 (= res!1073157 (bvslt (_1!12780 (h!38362 lt!673287)) (_1!12780 (h!38362 (t!51833 lt!673287)))))))

(declare-fun b!1570480 () Bool)

(assert (=> b!1570480 (= e!875595 (isStrictlySorted!1019 (t!51833 lt!673287)))))

(assert (= (and d!164181 (not res!1073156)) b!1570479))

(assert (= (and b!1570479 res!1073157) b!1570480))

(declare-fun m!1444573 () Bool)

(assert (=> b!1570480 m!1444573))

(assert (=> d!163923 d!164181))

(declare-fun d!164183 () Bool)

(declare-fun res!1073158 () Bool)

(declare-fun e!875596 () Bool)

(assert (=> d!164183 (=> res!1073158 e!875596)))

(assert (=> d!164183 (= res!1073158 (or (is-Nil!36915 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)) (is-Nil!36915 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)))))))

(assert (=> d!164183 (= (isStrictlySorted!1019 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)) e!875596)))

(declare-fun b!1570481 () Bool)

(declare-fun e!875597 () Bool)

(assert (=> b!1570481 (= e!875596 e!875597)))

(declare-fun res!1073159 () Bool)

(assert (=> b!1570481 (=> (not res!1073159) (not e!875597))))

(assert (=> b!1570481 (= res!1073159 (bvslt (_1!12780 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))) (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))))))))

(declare-fun b!1570482 () Bool)

(assert (=> b!1570482 (= e!875597 (isStrictlySorted!1019 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))))))

(assert (= (and d!164183 (not res!1073158)) b!1570481))

(assert (= (and b!1570481 res!1073159) b!1570482))

(declare-fun m!1444575 () Bool)

(assert (=> b!1570482 m!1444575))

(assert (=> d!163923 d!164183))

(declare-fun d!164185 () Bool)

(declare-fun res!1073160 () Bool)

(declare-fun e!875598 () Bool)

(assert (=> d!164185 (=> res!1073160 e!875598)))

(assert (=> d!164185 (= res!1073160 (or (is-Nil!36915 lt!673282) (is-Nil!36915 (t!51833 lt!673282))))))

(assert (=> d!164185 (= (isStrictlySorted!1019 lt!673282) e!875598)))

(declare-fun b!1570483 () Bool)

(declare-fun e!875599 () Bool)

(assert (=> b!1570483 (= e!875598 e!875599)))

(declare-fun res!1073161 () Bool)

(assert (=> b!1570483 (=> (not res!1073161) (not e!875599))))

(assert (=> b!1570483 (= res!1073161 (bvslt (_1!12780 (h!38362 lt!673282)) (_1!12780 (h!38362 (t!51833 lt!673282)))))))

(declare-fun b!1570484 () Bool)

(assert (=> b!1570484 (= e!875599 (isStrictlySorted!1019 (t!51833 lt!673282)))))

(assert (= (and d!164185 (not res!1073160)) b!1570483))

(assert (= (and b!1570483 res!1073161) b!1570484))

(declare-fun m!1444577 () Bool)

(assert (=> b!1570484 m!1444577))

(assert (=> d!163915 d!164185))

(declare-fun d!164187 () Bool)

(declare-fun res!1073162 () Bool)

(declare-fun e!875600 () Bool)

(assert (=> d!164187 (=> res!1073162 e!875600)))

(assert (=> d!164187 (= res!1073162 (or (is-Nil!36915 (insertStrictlySorted!597 l!750 key1!37 v1!32)) (is-Nil!36915 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32)))))))

(assert (=> d!164187 (= (isStrictlySorted!1019 (insertStrictlySorted!597 l!750 key1!37 v1!32)) e!875600)))

(declare-fun b!1570485 () Bool)

(declare-fun e!875601 () Bool)

(assert (=> b!1570485 (= e!875600 e!875601)))

(declare-fun res!1073163 () Bool)

(assert (=> b!1570485 (=> (not res!1073163) (not e!875601))))

(assert (=> b!1570485 (= res!1073163 (bvslt (_1!12780 (h!38362 (insertStrictlySorted!597 l!750 key1!37 v1!32))) (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32))))))))

(declare-fun b!1570486 () Bool)

(assert (=> b!1570486 (= e!875601 (isStrictlySorted!1019 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32))))))

(assert (= (and d!164187 (not res!1073162)) b!1570485))

(assert (= (and b!1570485 res!1073163) b!1570486))

(declare-fun m!1444579 () Bool)

(assert (=> b!1570486 m!1444579))

(assert (=> d!163915 d!164187))

(declare-fun d!164189 () Bool)

(declare-fun lt!673349 () Bool)

(assert (=> d!164189 (= lt!673349 (member (tuple2!25541 key1!37 v1!32) (content!823 lt!673275)))))

(declare-fun e!875602 () Bool)

(assert (=> d!164189 (= lt!673349 e!875602)))

(declare-fun res!1073165 () Bool)

(assert (=> d!164189 (=> (not res!1073165) (not e!875602))))

(assert (=> d!164189 (= res!1073165 (is-Cons!36914 lt!673275))))

(assert (=> d!164189 (= (contains!10444 lt!673275 (tuple2!25541 key1!37 v1!32)) lt!673349)))

(declare-fun b!1570487 () Bool)

(declare-fun e!875603 () Bool)

(assert (=> b!1570487 (= e!875602 e!875603)))

(declare-fun res!1073164 () Bool)

(assert (=> b!1570487 (=> res!1073164 e!875603)))

(assert (=> b!1570487 (= res!1073164 (= (h!38362 lt!673275) (tuple2!25541 key1!37 v1!32)))))

(declare-fun b!1570488 () Bool)

(assert (=> b!1570488 (= e!875603 (contains!10444 (t!51833 lt!673275) (tuple2!25541 key1!37 v1!32)))))

(assert (= (and d!164189 res!1073165) b!1570487))

(assert (= (and b!1570487 (not res!1073164)) b!1570488))

(declare-fun m!1444581 () Bool)

(assert (=> d!164189 m!1444581))

(declare-fun m!1444583 () Bool)

(assert (=> d!164189 m!1444583))

(declare-fun m!1444585 () Bool)

(assert (=> b!1570488 m!1444585))

(assert (=> b!1569902 d!164189))

(declare-fun d!164191 () Bool)

(declare-fun res!1073166 () Bool)

(declare-fun e!875604 () Bool)

(assert (=> d!164191 (=> res!1073166 e!875604)))

(assert (=> d!164191 (= res!1073166 (or (is-Nil!36915 lt!673283) (is-Nil!36915 (t!51833 lt!673283))))))

(assert (=> d!164191 (= (isStrictlySorted!1019 lt!673283) e!875604)))

(declare-fun b!1570489 () Bool)

(declare-fun e!875605 () Bool)

(assert (=> b!1570489 (= e!875604 e!875605)))

(declare-fun res!1073167 () Bool)

(assert (=> b!1570489 (=> (not res!1073167) (not e!875605))))

(assert (=> b!1570489 (= res!1073167 (bvslt (_1!12780 (h!38362 lt!673283)) (_1!12780 (h!38362 (t!51833 lt!673283)))))))

(declare-fun b!1570490 () Bool)

(assert (=> b!1570490 (= e!875605 (isStrictlySorted!1019 (t!51833 lt!673283)))))

(assert (= (and d!164191 (not res!1073166)) b!1570489))

(assert (= (and b!1570489 res!1073167) b!1570490))

(declare-fun m!1444587 () Bool)

(assert (=> b!1570490 m!1444587))

(assert (=> d!163917 d!164191))

(assert (=> d!163917 d!163903))

(declare-fun d!164193 () Bool)

(declare-fun res!1073168 () Bool)

(declare-fun e!875606 () Bool)

(assert (=> d!164193 (=> res!1073168 e!875606)))

(assert (=> d!164193 (= res!1073168 (and (is-Cons!36914 lt!673296) (= (_1!12780 (h!38362 lt!673296)) key1!37)))))

(assert (=> d!164193 (= (containsKey!869 lt!673296 key1!37) e!875606)))

(declare-fun b!1570491 () Bool)

(declare-fun e!875607 () Bool)

(assert (=> b!1570491 (= e!875606 e!875607)))

(declare-fun res!1073169 () Bool)

(assert (=> b!1570491 (=> (not res!1073169) (not e!875607))))

(assert (=> b!1570491 (= res!1073169 (and (or (not (is-Cons!36914 lt!673296)) (bvsle (_1!12780 (h!38362 lt!673296)) key1!37)) (is-Cons!36914 lt!673296) (bvslt (_1!12780 (h!38362 lt!673296)) key1!37)))))

(declare-fun b!1570492 () Bool)

(assert (=> b!1570492 (= e!875607 (containsKey!869 (t!51833 lt!673296) key1!37))))

(assert (= (and d!164193 (not res!1073168)) b!1570491))

(assert (= (and b!1570491 res!1073169) b!1570492))

(declare-fun m!1444589 () Bool)

(assert (=> b!1570492 m!1444589))

(assert (=> b!1570031 d!164193))

(declare-fun d!164195 () Bool)

(declare-fun res!1073170 () Bool)

(declare-fun e!875608 () Bool)

(assert (=> d!164195 (=> res!1073170 e!875608)))

(assert (=> d!164195 (= res!1073170 (and (is-Cons!36914 lt!673293) (= (_1!12780 (h!38362 lt!673293)) key1!37)))))

(assert (=> d!164195 (= (containsKey!869 lt!673293 key1!37) e!875608)))

(declare-fun b!1570493 () Bool)

(declare-fun e!875609 () Bool)

(assert (=> b!1570493 (= e!875608 e!875609)))

(declare-fun res!1073171 () Bool)

(assert (=> b!1570493 (=> (not res!1073171) (not e!875609))))

(assert (=> b!1570493 (= res!1073171 (and (or (not (is-Cons!36914 lt!673293)) (bvsle (_1!12780 (h!38362 lt!673293)) key1!37)) (is-Cons!36914 lt!673293) (bvslt (_1!12780 (h!38362 lt!673293)) key1!37)))))

(declare-fun b!1570494 () Bool)

(assert (=> b!1570494 (= e!875609 (containsKey!869 (t!51833 lt!673293) key1!37))))

(assert (= (and d!164195 (not res!1073170)) b!1570493))

(assert (= (and b!1570493 res!1073171) b!1570494))

(declare-fun m!1444591 () Bool)

(assert (=> b!1570494 m!1444591))

(assert (=> b!1570001 d!164195))

(declare-fun d!164197 () Bool)

(assert (=> d!164197 (= (insertStrictlySorted!597 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!597 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10) key1!37 v1!32))))

(assert (=> d!164197 true))

(declare-fun _$5!167 () Unit!52040)

(assert (=> d!164197 (= (choose!2090 (t!51833 l!750) key1!37 v1!32 key2!21 v2!10) _$5!167)))

(declare-fun bs!45220 () Bool)

(assert (= bs!45220 d!164197))

(assert (=> bs!45220 m!1443909))

(assert (=> bs!45220 m!1443909))

(assert (=> bs!45220 m!1443911))

(assert (=> bs!45220 m!1443907))

(assert (=> bs!45220 m!1443907))

(assert (=> bs!45220 m!1443923))

(assert (=> d!163911 d!164197))

(assert (=> d!163911 d!163923))

(assert (=> d!163911 d!163927))

(assert (=> d!163911 d!163929))

(assert (=> d!163911 d!163935))

(declare-fun d!164199 () Bool)

(assert (=> d!164199 (= ($colon$colon!1001 e!875278 (ite c!144806 (h!38362 (t!51833 l!750)) (tuple2!25541 key1!37 v1!32))) (Cons!36914 (ite c!144806 (h!38362 (t!51833 l!750)) (tuple2!25541 key1!37 v1!32)) e!875278))))

(assert (=> bm!72172 d!164199))

(declare-fun e!875612 () Bool)

(declare-fun lt!673350 () List!36918)

(declare-fun b!1570495 () Bool)

(assert (=> b!1570495 (= e!875612 (contains!10444 lt!673350 (tuple2!25541 key2!21 v2!10)))))

(declare-fun b!1570497 () Bool)

(declare-fun e!875614 () List!36918)

(declare-fun call!72255 () List!36918)

(assert (=> b!1570497 (= e!875614 call!72255)))

(declare-fun b!1570498 () Bool)

(declare-fun e!875613 () List!36918)

(declare-fun call!72256 () List!36918)

(assert (=> b!1570498 (= e!875613 call!72256)))

(declare-fun b!1570499 () Bool)

(declare-fun c!144917 () Bool)

(declare-fun e!875610 () List!36918)

(declare-fun c!144916 () Bool)

(assert (=> b!1570499 (= e!875610 (ite c!144916 (t!51833 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))) (ite c!144917 (Cons!36914 (h!38362 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))) (t!51833 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)))) Nil!36915)))))

(declare-fun bm!72252 () Bool)

(assert (=> bm!72252 (= call!72255 call!72256)))

(declare-fun b!1570500 () Bool)

(assert (=> b!1570500 (= c!144917 (and (is-Cons!36914 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))) (bvsgt (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)))) key2!21)))))

(declare-fun e!875611 () List!36918)

(assert (=> b!1570500 (= e!875614 e!875611)))

(declare-fun d!164201 () Bool)

(assert (=> d!164201 e!875612))

(declare-fun res!1073172 () Bool)

(assert (=> d!164201 (=> (not res!1073172) (not e!875612))))

(assert (=> d!164201 (= res!1073172 (isStrictlySorted!1019 lt!673350))))

(assert (=> d!164201 (= lt!673350 e!875613)))

(declare-fun c!144914 () Bool)

(assert (=> d!164201 (= c!144914 (and (is-Cons!36914 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))) (bvslt (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)))) key2!21)))))

(assert (=> d!164201 (isStrictlySorted!1019 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)))))

(assert (=> d!164201 (= (insertStrictlySorted!597 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)) key2!21 v2!10) lt!673350)))

(declare-fun b!1570496 () Bool)

(assert (=> b!1570496 (= e!875610 (insertStrictlySorted!597 (t!51833 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))) key2!21 v2!10))))

(declare-fun b!1570501 () Bool)

(declare-fun call!72257 () List!36918)

(assert (=> b!1570501 (= e!875611 call!72257)))

(declare-fun bm!72253 () Bool)

(assert (=> bm!72253 (= call!72256 ($colon$colon!1001 e!875610 (ite c!144914 (h!38362 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))) (tuple2!25541 key2!21 v2!10))))))

(declare-fun c!144915 () Bool)

(assert (=> bm!72253 (= c!144915 c!144914)))

(declare-fun bm!72254 () Bool)

(assert (=> bm!72254 (= call!72257 call!72255)))

(declare-fun b!1570502 () Bool)

(assert (=> b!1570502 (= e!875613 e!875614)))

(assert (=> b!1570502 (= c!144916 (and (is-Cons!36914 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32))) (= (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 (t!51833 l!750) key1!37 v1!32)))) key2!21)))))

(declare-fun b!1570503 () Bool)

(assert (=> b!1570503 (= e!875611 call!72257)))

(declare-fun b!1570504 () Bool)

(declare-fun res!1073173 () Bool)

(assert (=> b!1570504 (=> (not res!1073173) (not e!875612))))

(assert (=> b!1570504 (= res!1073173 (containsKey!869 lt!673350 key2!21))))

(assert (= (and d!164201 c!144914) b!1570498))

(assert (= (and d!164201 (not c!144914)) b!1570502))

(assert (= (and b!1570502 c!144916) b!1570497))

(assert (= (and b!1570502 (not c!144916)) b!1570500))

(assert (= (and b!1570500 c!144917) b!1570503))

(assert (= (and b!1570500 (not c!144917)) b!1570501))

(assert (= (or b!1570503 b!1570501) bm!72254))

(assert (= (or b!1570497 bm!72254) bm!72252))

(assert (= (or b!1570498 bm!72252) bm!72253))

(assert (= (and bm!72253 c!144915) b!1570496))

(assert (= (and bm!72253 (not c!144915)) b!1570499))

(assert (= (and d!164201 res!1073172) b!1570504))

(assert (= (and b!1570504 res!1073173) b!1570495))

(declare-fun m!1444593 () Bool)

(assert (=> b!1570496 m!1444593))

(declare-fun m!1444595 () Bool)

(assert (=> b!1570504 m!1444595))

(declare-fun m!1444597 () Bool)

(assert (=> b!1570495 m!1444597))

(declare-fun m!1444599 () Bool)

(assert (=> d!164201 m!1444599))

(assert (=> d!164201 m!1444575))

(declare-fun m!1444601 () Bool)

(assert (=> bm!72253 m!1444601))

(assert (=> b!1569963 d!164201))

(assert (=> b!1569829 d!163905))

(declare-fun lt!673351 () Bool)

(declare-fun d!164203 () Bool)

(assert (=> d!164203 (= lt!673351 (member (tuple2!25541 key2!21 v2!10) (content!823 lt!673287)))))

(declare-fun e!875615 () Bool)

(assert (=> d!164203 (= lt!673351 e!875615)))

(declare-fun res!1073175 () Bool)

(assert (=> d!164203 (=> (not res!1073175) (not e!875615))))

(assert (=> d!164203 (= res!1073175 (is-Cons!36914 lt!673287))))

(assert (=> d!164203 (= (contains!10444 lt!673287 (tuple2!25541 key2!21 v2!10)) lt!673351)))

(declare-fun b!1570505 () Bool)

(declare-fun e!875616 () Bool)

(assert (=> b!1570505 (= e!875615 e!875616)))

(declare-fun res!1073174 () Bool)

(assert (=> b!1570505 (=> res!1073174 e!875616)))

(assert (=> b!1570505 (= res!1073174 (= (h!38362 lt!673287) (tuple2!25541 key2!21 v2!10)))))

(declare-fun b!1570506 () Bool)

(assert (=> b!1570506 (= e!875616 (contains!10444 (t!51833 lt!673287) (tuple2!25541 key2!21 v2!10)))))

(assert (= (and d!164203 res!1073175) b!1570505))

(assert (= (and b!1570505 (not res!1073174)) b!1570506))

(declare-fun m!1444603 () Bool)

(assert (=> d!164203 m!1444603))

(declare-fun m!1444605 () Bool)

(assert (=> d!164203 m!1444605))

(declare-fun m!1444607 () Bool)

(assert (=> b!1570506 m!1444607))

(assert (=> b!1569962 d!164203))

(declare-fun d!164205 () Bool)

(declare-fun lt!673352 () Bool)

(assert (=> d!164205 (= lt!673352 (member (tuple2!25541 key2!21 v2!10) (content!823 lt!673282)))))

(declare-fun e!875617 () Bool)

(assert (=> d!164205 (= lt!673352 e!875617)))

(declare-fun res!1073177 () Bool)

(assert (=> d!164205 (=> (not res!1073177) (not e!875617))))

(assert (=> d!164205 (= res!1073177 (is-Cons!36914 lt!673282))))

(assert (=> d!164205 (= (contains!10444 lt!673282 (tuple2!25541 key2!21 v2!10)) lt!673352)))

(declare-fun b!1570507 () Bool)

(declare-fun e!875618 () Bool)

(assert (=> b!1570507 (= e!875617 e!875618)))

(declare-fun res!1073176 () Bool)

(assert (=> b!1570507 (=> res!1073176 e!875618)))

(assert (=> b!1570507 (= res!1073176 (= (h!38362 lt!673282) (tuple2!25541 key2!21 v2!10)))))

(declare-fun b!1570508 () Bool)

(assert (=> b!1570508 (= e!875618 (contains!10444 (t!51833 lt!673282) (tuple2!25541 key2!21 v2!10)))))

(assert (= (and d!164205 res!1073177) b!1570507))

(assert (= (and b!1570507 (not res!1073176)) b!1570508))

(declare-fun m!1444609 () Bool)

(assert (=> d!164205 m!1444609))

(declare-fun m!1444611 () Bool)

(assert (=> d!164205 m!1444611))

(declare-fun m!1444613 () Bool)

(assert (=> b!1570508 m!1444613))

(assert (=> b!1569922 d!164205))

(assert (=> b!1569933 d!163927))

(declare-fun d!164207 () Bool)

(declare-fun res!1073178 () Bool)

(declare-fun e!875619 () Bool)

(assert (=> d!164207 (=> res!1073178 e!875619)))

(assert (=> d!164207 (= res!1073178 (or (is-Nil!36915 lt!673296) (is-Nil!36915 (t!51833 lt!673296))))))

(assert (=> d!164207 (= (isStrictlySorted!1019 lt!673296) e!875619)))

(declare-fun b!1570509 () Bool)

(declare-fun e!875620 () Bool)

(assert (=> b!1570509 (= e!875619 e!875620)))

(declare-fun res!1073179 () Bool)

(assert (=> b!1570509 (=> (not res!1073179) (not e!875620))))

(assert (=> b!1570509 (= res!1073179 (bvslt (_1!12780 (h!38362 lt!673296)) (_1!12780 (h!38362 (t!51833 lt!673296)))))))

(declare-fun b!1570510 () Bool)

(assert (=> b!1570510 (= e!875620 (isStrictlySorted!1019 (t!51833 lt!673296)))))

(assert (= (and d!164207 (not res!1073178)) b!1570509))

(assert (= (and b!1570509 res!1073179) b!1570510))

(declare-fun m!1444615 () Bool)

(assert (=> b!1570510 m!1444615))

(assert (=> d!163935 d!164207))

(assert (=> d!163935 d!163905))

(declare-fun e!875623 () Bool)

(declare-fun lt!673353 () List!36918)

(declare-fun b!1570511 () Bool)

(assert (=> b!1570511 (= e!875623 (contains!10444 lt!673353 (tuple2!25541 key2!21 v2!10)))))

(declare-fun b!1570513 () Bool)

(declare-fun e!875625 () List!36918)

(declare-fun call!72258 () List!36918)

(assert (=> b!1570513 (= e!875625 call!72258)))

(declare-fun b!1570514 () Bool)

(declare-fun e!875624 () List!36918)

(declare-fun call!72259 () List!36918)

(assert (=> b!1570514 (= e!875624 call!72259)))

(declare-fun c!144921 () Bool)

(declare-fun b!1570515 () Bool)

(declare-fun e!875621 () List!36918)

(declare-fun c!144920 () Bool)

(assert (=> b!1570515 (= e!875621 (ite c!144920 (t!51833 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32))) (ite c!144921 (Cons!36914 (h!38362 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32))) (t!51833 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32)))) Nil!36915)))))

(declare-fun bm!72255 () Bool)

(assert (=> bm!72255 (= call!72258 call!72259)))

(declare-fun b!1570516 () Bool)

(assert (=> b!1570516 (= c!144921 (and (is-Cons!36914 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32))) (bvsgt (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32)))) key2!21)))))

(declare-fun e!875622 () List!36918)

(assert (=> b!1570516 (= e!875625 e!875622)))

(declare-fun d!164209 () Bool)

(assert (=> d!164209 e!875623))

(declare-fun res!1073180 () Bool)

(assert (=> d!164209 (=> (not res!1073180) (not e!875623))))

(assert (=> d!164209 (= res!1073180 (isStrictlySorted!1019 lt!673353))))

(assert (=> d!164209 (= lt!673353 e!875624)))

(declare-fun c!144918 () Bool)

(assert (=> d!164209 (= c!144918 (and (is-Cons!36914 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32))) (bvslt (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32)))) key2!21)))))

(assert (=> d!164209 (isStrictlySorted!1019 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32)))))

(assert (=> d!164209 (= (insertStrictlySorted!597 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32)) key2!21 v2!10) lt!673353)))

(declare-fun b!1570512 () Bool)

(assert (=> b!1570512 (= e!875621 (insertStrictlySorted!597 (t!51833 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32))) key2!21 v2!10))))

(declare-fun b!1570517 () Bool)

(declare-fun call!72260 () List!36918)

(assert (=> b!1570517 (= e!875622 call!72260)))

(declare-fun bm!72256 () Bool)

(assert (=> bm!72256 (= call!72259 ($colon$colon!1001 e!875621 (ite c!144918 (h!38362 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32))) (tuple2!25541 key2!21 v2!10))))))

(declare-fun c!144919 () Bool)

(assert (=> bm!72256 (= c!144919 c!144918)))

(declare-fun bm!72257 () Bool)

(assert (=> bm!72257 (= call!72260 call!72258)))

(declare-fun b!1570518 () Bool)

(assert (=> b!1570518 (= e!875624 e!875625)))

(assert (=> b!1570518 (= c!144920 (and (is-Cons!36914 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32))) (= (_1!12780 (h!38362 (t!51833 (insertStrictlySorted!597 l!750 key1!37 v1!32)))) key2!21)))))

(declare-fun b!1570519 () Bool)

(assert (=> b!1570519 (= e!875622 call!72260)))

(declare-fun b!1570520 () Bool)

(declare-fun res!1073181 () Bool)

(assert (=> b!1570520 (=> (not res!1073181) (not e!875623))))

(assert (=> b!1570520 (= res!1073181 (containsKey!869 lt!673353 key2!21))))

(assert (= (and d!164209 c!144918) b!1570514))

(assert (= (and d!164209 (not c!144918)) b!1570518))

(assert (= (and b!1570518 c!144920) b!1570513))

(assert (= (and b!1570518 (not c!144920)) b!1570516))

(assert (= (and b!1570516 c!144921) b!1570519))

(assert (= (and b!1570516 (not c!144921)) b!1570517))

(assert (= (or b!1570519 b!1570517) bm!72257))

(assert (= (or b!1570513 bm!72257) bm!72255))

(assert (= (or b!1570514 bm!72255) bm!72256))

(assert (= (and bm!72256 c!144919) b!1570512))

(assert (= (and bm!72256 (not c!144919)) b!1570515))

(assert (= (and d!164209 res!1073180) b!1570520))

(assert (= (and b!1570520 res!1073181) b!1570511))

(declare-fun m!1444617 () Bool)

(assert (=> b!1570512 m!1444617))

(declare-fun m!1444619 () Bool)

(assert (=> b!1570520 m!1444619))

(declare-fun m!1444621 () Bool)

(assert (=> b!1570511 m!1444621))

(declare-fun m!1444623 () Bool)

(assert (=> d!164209 m!1444623))

(assert (=> d!164209 m!1444579))

(declare-fun m!1444625 () Bool)

(assert (=> bm!72256 m!1444625))

(assert (=> b!1569923 d!164209))

(declare-fun d!164211 () Bool)

(declare-fun res!1073182 () Bool)

(declare-fun e!875626 () Bool)

(assert (=> d!164211 (=> res!1073182 e!875626)))

(assert (=> d!164211 (= res!1073182 (and (is-Cons!36914 lt!673291) (= (_1!12780 (h!38362 lt!673291)) key2!21)))))

(assert (=> d!164211 (= (containsKey!869 lt!673291 key2!21) e!875626)))

(declare-fun b!1570521 () Bool)

(declare-fun e!875627 () Bool)

(assert (=> b!1570521 (= e!875626 e!875627)))

(declare-fun res!1073183 () Bool)

(assert (=> b!1570521 (=> (not res!1073183) (not e!875627))))

(assert (=> b!1570521 (= res!1073183 (and (or (not (is-Cons!36914 lt!673291)) (bvsle (_1!12780 (h!38362 lt!673291)) key2!21)) (is-Cons!36914 lt!673291) (bvslt (_1!12780 (h!38362 lt!673291)) key2!21)))))

(declare-fun b!1570522 () Bool)

(assert (=> b!1570522 (= e!875627 (containsKey!869 (t!51833 lt!673291) key2!21))))

(assert (= (and d!164211 (not res!1073182)) b!1570521))

(assert (= (and b!1570521 res!1073183) b!1570522))

(declare-fun m!1444627 () Bool)

(assert (=> b!1570522 m!1444627))

(assert (=> b!1569991 d!164211))

(declare-fun lt!673354 () Bool)

(declare-fun d!164213 () Bool)

(assert (=> d!164213 (= lt!673354 (member (tuple2!25541 key2!21 v2!10) (content!823 lt!673283)))))

(declare-fun e!875628 () Bool)

(assert (=> d!164213 (= lt!673354 e!875628)))

(declare-fun res!1073185 () Bool)

(assert (=> d!164213 (=> (not res!1073185) (not e!875628))))

(assert (=> d!164213 (= res!1073185 (is-Cons!36914 lt!673283))))

(assert (=> d!164213 (= (contains!10444 lt!673283 (tuple2!25541 key2!21 v2!10)) lt!673354)))

(declare-fun b!1570523 () Bool)

(declare-fun e!875629 () Bool)

(assert (=> b!1570523 (= e!875628 e!875629)))

(declare-fun res!1073184 () Bool)

(assert (=> b!1570523 (=> res!1073184 e!875629)))

(assert (=> b!1570523 (= res!1073184 (= (h!38362 lt!673283) (tuple2!25541 key2!21 v2!10)))))

(declare-fun b!1570524 () Bool)

(assert (=> b!1570524 (= e!875629 (contains!10444 (t!51833 lt!673283) (tuple2!25541 key2!21 v2!10)))))

(assert (= (and d!164213 res!1073185) b!1570523))

(assert (= (and b!1570523 (not res!1073184)) b!1570524))

(declare-fun m!1444629 () Bool)

(assert (=> d!164213 m!1444629))

(declare-fun m!1444631 () Bool)

(assert (=> d!164213 m!1444631))

(declare-fun m!1444633 () Bool)

(assert (=> b!1570524 m!1444633))

(assert (=> b!1569932 d!164213))

(declare-fun d!164215 () Bool)

(assert (=> d!164215 (= ($colon$colon!1001 e!875258 (ite c!144790 (h!38362 (t!51833 l!750)) (tuple2!25541 key2!21 v2!10))) (Cons!36914 (ite c!144790 (h!38362 (t!51833 l!750)) (tuple2!25541 key2!21 v2!10)) e!875258))))

(assert (=> bm!72160 d!164215))

(declare-fun d!164217 () Bool)

(assert (=> d!164217 (= ($colon$colon!1001 e!875263 (ite c!144794 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)) (tuple2!25541 key1!37 v1!32))) (Cons!36914 (ite c!144794 (h!38362 (insertStrictlySorted!597 (t!51833 l!750) key2!21 v2!10)) (tuple2!25541 key1!37 v1!32)) e!875263))))

(assert (=> bm!72163 d!164217))

(declare-fun d!164219 () Bool)

(declare-fun res!1073186 () Bool)

(declare-fun e!875630 () Bool)

(assert (=> d!164219 (=> res!1073186 e!875630)))

(assert (=> d!164219 (= res!1073186 (and (is-Cons!36914 lt!673286) (= (_1!12780 (h!38362 lt!673286)) key1!37)))))

(assert (=> d!164219 (= (containsKey!869 lt!673286 key1!37) e!875630)))

(declare-fun b!1570525 () Bool)

(declare-fun e!875631 () Bool)

(assert (=> b!1570525 (= e!875630 e!875631)))

(declare-fun res!1073187 () Bool)

(assert (=> b!1570525 (=> (not res!1073187) (not e!875631))))

(assert (=> b!1570525 (= res!1073187 (and (or (not (is-Cons!36914 lt!673286)) (bvsle (_1!12780 (h!38362 lt!673286)) key1!37)) (is-Cons!36914 lt!673286) (bvslt (_1!12780 (h!38362 lt!673286)) key1!37)))))

(declare-fun b!1570526 () Bool)

(assert (=> b!1570526 (= e!875631 (containsKey!869 (t!51833 lt!673286) key1!37))))

(assert (= (and d!164219 (not res!1073186)) b!1570525))

(assert (= (and b!1570525 res!1073187) b!1570526))

(declare-fun m!1444635 () Bool)

(assert (=> b!1570526 m!1444635))

(assert (=> b!1569961 d!164219))

(declare-fun d!164221 () Bool)

(declare-fun res!1073188 () Bool)

(declare-fun e!875632 () Bool)

(assert (=> d!164221 (=> res!1073188 e!875632)))

(assert (=> d!164221 (= res!1073188 (and (is-Cons!36914 lt!673275) (= (_1!12780 (h!38362 lt!673275)) key1!37)))))

(assert (=> d!164221 (= (containsKey!869 lt!673275 key1!37) e!875632)))

(declare-fun b!1570527 () Bool)

(declare-fun e!875633 () Bool)

(assert (=> b!1570527 (= e!875632 e!875633)))

(declare-fun res!1073189 () Bool)

(assert (=> b!1570527 (=> (not res!1073189) (not e!875633))))

(assert (=> b!1570527 (= res!1073189 (and (or (not (is-Cons!36914 lt!673275)) (bvsle (_1!12780 (h!38362 lt!673275)) key1!37)) (is-Cons!36914 lt!673275) (bvslt (_1!12780 (h!38362 lt!673275)) key1!37)))))

(declare-fun b!1570528 () Bool)

(assert (=> b!1570528 (= e!875633 (containsKey!869 (t!51833 lt!673275) key1!37))))

(assert (= (and d!164221 (not res!1073188)) b!1570527))

(assert (= (and b!1570527 res!1073189) b!1570528))

(declare-fun m!1444637 () Bool)

(assert (=> b!1570528 m!1444637))

(assert (=> b!1569911 d!164221))

(declare-fun b!1570529 () Bool)

(declare-fun e!875634 () Bool)

(declare-fun tp!114229 () Bool)

(assert (=> b!1570529 (= e!875634 (and tp_is_empty!39101 tp!114229))))

(assert (=> b!1570056 (= tp!114220 e!875634)))

(assert (= (and b!1570056 (is-Cons!36914 (t!51833 (t!51833 l!750)))) b!1570529))

(push 1)

(assert (not bm!72250))

(assert (not b!1570529))

(assert (not d!164169))

(assert (not b!1570408))

(assert (not d!164205))

(assert (not b!1570444))

(assert (not d!164147))

(assert (not b!1570486))

(assert (not b!1570482))

(assert (not bm!72247))

(assert (not d!164153))

(assert (not d!164213))

(assert (not b!1570496))

(assert (not b!1570452))

(assert (not d!164201))

(assert (not b!1570495))

(assert (not b!1570508))

(assert (not b!1570492))

(assert (not b!1570436))

(assert (not b!1570466))

(assert (not bm!72253))

(assert (not b!1570478))

(assert (not b!1570468))

(assert (not b!1570446))

(assert (not d!164179))

(assert (not d!164209))

(assert (not b!1570435))

(assert (not b!1570470))

(assert (not b!1570454))

(assert (not b!1570404))

(assert (not bm!72241))

(assert (not b!1570488))

(assert (not d!164161))

(assert (not b!1570522))

(assert (not d!164143))

(assert (not d!164175))

(assert (not b!1570526))

(assert (not b!1570484))

(assert (not b!1570469))

(assert (not b!1570520))

(assert (not b!1570506))

(assert (not b!1570420))

(assert (not b!1570422))

(assert (not b!1570458))

(assert (not d!164197))

(assert (not bm!72256))

(assert (not b!1570504))

(assert tp_is_empty!39101)

(assert (not b!1570512))

(assert (not b!1570414))

(assert (not d!164189))

(assert (not b!1570480))

(assert (not b!1570450))

(assert (not b!1570430))

(assert (not b!1570448))

(assert (not b!1570510))

(assert (not bm!72244))

(assert (not b!1570528))

(assert (not b!1570511))

(assert (not b!1570457))

(assert (not b!1570494))

(assert (not b!1570490))

(assert (not b!1570421))

(assert (not b!1570432))

(assert (not b!1570456))

(assert (not d!164203))

(assert (not b!1570434))

(assert (not b!1570406))

(assert (not d!164163))

(assert (not b!1570524))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

