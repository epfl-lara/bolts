; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7150 () Bool)

(assert start!7150)

(declare-fun b!45829 () Bool)

(declare-fun e!29173 () Bool)

(declare-fun tp_is_empty!1939 () Bool)

(declare-fun tp!6011 () Bool)

(assert (=> b!45829 (= e!29173 (and tp_is_empty!1939 tp!6011))))

(declare-fun b!45827 () Bool)

(declare-fun res!26845 () Bool)

(declare-fun e!29174 () Bool)

(assert (=> b!45827 (=> (not res!26845) (not e!29174))))

(declare-datatypes ((B!842 0))(
  ( (B!843 (val!1008 Int)) )
))
(declare-datatypes ((tuple2!1668 0))(
  ( (tuple2!1669 (_1!844 (_ BitVec 64)) (_2!844 B!842)) )
))
(declare-datatypes ((List!1242 0))(
  ( (Nil!1239) (Cons!1238 (h!1818 tuple2!1668) (t!4275 List!1242)) )
))
(declare-fun l!812 () List!1242)

(declare-fun isStrictlySorted!219 (List!1242) Bool)

(assert (=> b!45827 (= res!26845 (isStrictlySorted!219 (t!4275 l!812)))))

(declare-fun b!45828 () Bool)

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun removeStrictlySorted!34 (List!1242 (_ BitVec 64)) List!1242)

(assert (=> b!45828 (= e!29174 (not (isStrictlySorted!219 (removeStrictlySorted!34 l!812 key2!27))))))

(declare-fun key1!43 () (_ BitVec 64))

(assert (=> b!45828 (= (removeStrictlySorted!34 (removeStrictlySorted!34 (t!4275 l!812) key1!43) key2!27) (removeStrictlySorted!34 (removeStrictlySorted!34 (t!4275 l!812) key2!27) key1!43))))

(declare-datatypes ((Unit!1315 0))(
  ( (Unit!1316) )
))
(declare-fun lt!20234 () Unit!1315)

(declare-fun lemmaRemoveStrictlySortedCommutative!13 (List!1242 (_ BitVec 64) (_ BitVec 64)) Unit!1315)

(assert (=> b!45828 (= lt!20234 (lemmaRemoveStrictlySortedCommutative!13 (t!4275 l!812) key1!43 key2!27))))

(declare-fun res!26844 () Bool)

(assert (=> start!7150 (=> (not res!26844) (not e!29174))))

(assert (=> start!7150 (= res!26844 (isStrictlySorted!219 l!812))))

(assert (=> start!7150 e!29174))

(assert (=> start!7150 e!29173))

(assert (=> start!7150 true))

(declare-fun b!45826 () Bool)

(declare-fun res!26843 () Bool)

(assert (=> b!45826 (=> (not res!26843) (not e!29174))))

(assert (=> b!45826 (= res!26843 (is-Cons!1238 l!812))))

(assert (= (and start!7150 res!26844) b!45826))

(assert (= (and b!45826 res!26843) b!45827))

(assert (= (and b!45827 res!26845) b!45828))

(assert (= (and start!7150 (is-Cons!1238 l!812)) b!45829))

(declare-fun m!40395 () Bool)

(assert (=> b!45827 m!40395))

(declare-fun m!40397 () Bool)

(assert (=> b!45828 m!40397))

(declare-fun m!40399 () Bool)

(assert (=> b!45828 m!40399))

(declare-fun m!40401 () Bool)

(assert (=> b!45828 m!40401))

(declare-fun m!40403 () Bool)

(assert (=> b!45828 m!40403))

(assert (=> b!45828 m!40401))

(assert (=> b!45828 m!40399))

(declare-fun m!40405 () Bool)

(assert (=> b!45828 m!40405))

(assert (=> b!45828 m!40397))

(declare-fun m!40407 () Bool)

(assert (=> b!45828 m!40407))

(declare-fun m!40409 () Bool)

(assert (=> b!45828 m!40409))

(declare-fun m!40411 () Bool)

(assert (=> start!7150 m!40411))

(push 1)

(assert tp_is_empty!1939)

(assert (not b!45828))

(assert (not b!45829))

(assert (not start!7150))

(assert (not b!45827))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8975 () Bool)

(declare-fun res!26868 () Bool)

(declare-fun e!29191 () Bool)

(assert (=> d!8975 (=> res!26868 e!29191)))

(assert (=> d!8975 (= res!26868 (or (is-Nil!1239 l!812) (is-Nil!1239 (t!4275 l!812))))))

(assert (=> d!8975 (= (isStrictlySorted!219 l!812) e!29191)))

(declare-fun b!45858 () Bool)

(declare-fun e!29192 () Bool)

(assert (=> b!45858 (= e!29191 e!29192)))

(declare-fun res!26869 () Bool)

(assert (=> b!45858 (=> (not res!26869) (not e!29192))))

(assert (=> b!45858 (= res!26869 (bvslt (_1!844 (h!1818 l!812)) (_1!844 (h!1818 (t!4275 l!812)))))))

(declare-fun b!45859 () Bool)

(assert (=> b!45859 (= e!29192 (isStrictlySorted!219 (t!4275 l!812)))))

(assert (= (and d!8975 (not res!26868)) b!45858))

(assert (= (and b!45858 res!26869) b!45859))

(assert (=> b!45859 m!40395))

(assert (=> start!7150 d!8975))

(declare-fun b!45897 () Bool)

(declare-fun e!29220 () List!1242)

(declare-fun $colon$colon!34 (List!1242 tuple2!1668) List!1242)

(assert (=> b!45897 (= e!29220 ($colon$colon!34 (removeStrictlySorted!34 (t!4275 l!812) key2!27) (h!1818 l!812)))))

(declare-fun d!8977 () Bool)

(declare-fun e!29222 () Bool)

(assert (=> d!8977 e!29222))

(declare-fun res!26887 () Bool)

(assert (=> d!8977 (=> (not res!26887) (not e!29222))))

(declare-fun lt!20246 () List!1242)

(assert (=> d!8977 (= res!26887 (isStrictlySorted!219 lt!20246))))

(declare-fun e!29221 () List!1242)

(assert (=> d!8977 (= lt!20246 e!29221)))

(declare-fun c!6194 () Bool)

(assert (=> d!8977 (= c!6194 (and (is-Cons!1238 l!812) (= (_1!844 (h!1818 l!812)) key2!27)))))

(assert (=> d!8977 (isStrictlySorted!219 l!812)))

(assert (=> d!8977 (= (removeStrictlySorted!34 l!812 key2!27) lt!20246)))

(declare-fun b!45898 () Bool)

(assert (=> b!45898 (= e!29220 Nil!1239)))

(declare-fun b!45899 () Bool)

(declare-fun containsKey!81 (List!1242 (_ BitVec 64)) Bool)

(assert (=> b!45899 (= e!29222 (not (containsKey!81 lt!20246 key2!27)))))

(declare-fun b!45900 () Bool)

(assert (=> b!45900 (= e!29221 (t!4275 l!812))))

(declare-fun b!45901 () Bool)

(assert (=> b!45901 (= e!29221 e!29220)))

(declare-fun c!6195 () Bool)

(assert (=> b!45901 (= c!6195 (and (is-Cons!1238 l!812) (not (= (_1!844 (h!1818 l!812)) key2!27))))))

(assert (= (and d!8977 c!6194) b!45900))

(assert (= (and d!8977 (not c!6194)) b!45901))

(assert (= (and b!45901 c!6195) b!45897))

(assert (= (and b!45901 (not c!6195)) b!45898))

(assert (= (and d!8977 res!26887) b!45899))

(assert (=> b!45897 m!40397))

(assert (=> b!45897 m!40397))

(declare-fun m!40457 () Bool)

(assert (=> b!45897 m!40457))

(declare-fun m!40459 () Bool)

(assert (=> d!8977 m!40459))

(assert (=> d!8977 m!40411))

(declare-fun m!40461 () Bool)

(assert (=> b!45899 m!40461))

(assert (=> b!45828 d!8977))

(declare-fun d!8987 () Bool)

(declare-fun res!26889 () Bool)

(declare-fun e!29226 () Bool)

(assert (=> d!8987 (=> res!26889 e!29226)))

(assert (=> d!8987 (= res!26889 (or (is-Nil!1239 (removeStrictlySorted!34 l!812 key2!27)) (is-Nil!1239 (t!4275 (removeStrictlySorted!34 l!812 key2!27)))))))

(assert (=> d!8987 (= (isStrictlySorted!219 (removeStrictlySorted!34 l!812 key2!27)) e!29226)))

(declare-fun b!45907 () Bool)

(declare-fun e!29227 () Bool)

(assert (=> b!45907 (= e!29226 e!29227)))

(declare-fun res!26890 () Bool)

(assert (=> b!45907 (=> (not res!26890) (not e!29227))))

(assert (=> b!45907 (= res!26890 (bvslt (_1!844 (h!1818 (removeStrictlySorted!34 l!812 key2!27))) (_1!844 (h!1818 (t!4275 (removeStrictlySorted!34 l!812 key2!27))))))))

(declare-fun b!45908 () Bool)

(assert (=> b!45908 (= e!29227 (isStrictlySorted!219 (t!4275 (removeStrictlySorted!34 l!812 key2!27))))))

(assert (= (and d!8987 (not res!26889)) b!45907))

(assert (= (and b!45907 res!26890) b!45908))

(declare-fun m!40471 () Bool)

(assert (=> b!45908 m!40471))

(assert (=> b!45828 d!8987))

(declare-fun b!45909 () Bool)

(declare-fun e!29228 () List!1242)

(assert (=> b!45909 (= e!29228 ($colon$colon!34 (removeStrictlySorted!34 (t!4275 (t!4275 l!812)) key2!27) (h!1818 (t!4275 l!812))))))

(declare-fun d!8991 () Bool)

(declare-fun e!29230 () Bool)

(assert (=> d!8991 e!29230))

(declare-fun res!26891 () Bool)

(assert (=> d!8991 (=> (not res!26891) (not e!29230))))

(declare-fun lt!20248 () List!1242)

(assert (=> d!8991 (= res!26891 (isStrictlySorted!219 lt!20248))))

(declare-fun e!29229 () List!1242)

(assert (=> d!8991 (= lt!20248 e!29229)))

(declare-fun c!6198 () Bool)

(assert (=> d!8991 (= c!6198 (and (is-Cons!1238 (t!4275 l!812)) (= (_1!844 (h!1818 (t!4275 l!812))) key2!27)))))

(assert (=> d!8991 (isStrictlySorted!219 (t!4275 l!812))))

(assert (=> d!8991 (= (removeStrictlySorted!34 (t!4275 l!812) key2!27) lt!20248)))

(declare-fun b!45910 () Bool)

(assert (=> b!45910 (= e!29228 Nil!1239)))

(declare-fun b!45911 () Bool)

(assert (=> b!45911 (= e!29230 (not (containsKey!81 lt!20248 key2!27)))))

(declare-fun b!45912 () Bool)

(assert (=> b!45912 (= e!29229 (t!4275 (t!4275 l!812)))))

(declare-fun b!45913 () Bool)

(assert (=> b!45913 (= e!29229 e!29228)))

(declare-fun c!6199 () Bool)

(assert (=> b!45913 (= c!6199 (and (is-Cons!1238 (t!4275 l!812)) (not (= (_1!844 (h!1818 (t!4275 l!812))) key2!27))))))

(assert (= (and d!8991 c!6198) b!45912))

(assert (= (and d!8991 (not c!6198)) b!45913))

(assert (= (and b!45913 c!6199) b!45909))

(assert (= (and b!45913 (not c!6199)) b!45910))

(assert (= (and d!8991 res!26891) b!45911))

(declare-fun m!40473 () Bool)

(assert (=> b!45909 m!40473))

(assert (=> b!45909 m!40473))

(declare-fun m!40475 () Bool)

(assert (=> b!45909 m!40475))

(declare-fun m!40477 () Bool)

(assert (=> d!8991 m!40477))

(assert (=> d!8991 m!40395))

(declare-fun m!40479 () Bool)

(assert (=> b!45911 m!40479))

(assert (=> b!45828 d!8991))

(declare-fun d!8993 () Bool)

(assert (=> d!8993 (= (removeStrictlySorted!34 (removeStrictlySorted!34 (t!4275 l!812) key1!43) key2!27) (removeStrictlySorted!34 (removeStrictlySorted!34 (t!4275 l!812) key2!27) key1!43))))

(declare-fun lt!20257 () Unit!1315)

(declare-fun choose!283 (List!1242 (_ BitVec 64) (_ BitVec 64)) Unit!1315)

(assert (=> d!8993 (= lt!20257 (choose!283 (t!4275 l!812) key1!43 key2!27))))

(assert (=> d!8993 (isStrictlySorted!219 (t!4275 l!812))))

(assert (=> d!8993 (= (lemmaRemoveStrictlySortedCommutative!13 (t!4275 l!812) key1!43 key2!27) lt!20257)))

(declare-fun bs!2157 () Bool)

(assert (= bs!2157 d!8993))

(assert (=> bs!2157 m!40397))

(assert (=> bs!2157 m!40407))

(assert (=> bs!2157 m!40395))

(assert (=> bs!2157 m!40397))

(assert (=> bs!2157 m!40401))

(assert (=> bs!2157 m!40401))

(assert (=> bs!2157 m!40403))

(declare-fun m!40493 () Bool)

(assert (=> bs!2157 m!40493))

(assert (=> b!45828 d!8993))

(declare-fun b!45934 () Bool)

(declare-fun e!29243 () List!1242)

(assert (=> b!45934 (= e!29243 ($colon$colon!34 (removeStrictlySorted!34 (t!4275 (removeStrictlySorted!34 (t!4275 l!812) key1!43)) key2!27) (h!1818 (removeStrictlySorted!34 (t!4275 l!812) key1!43))))))

(declare-fun d!8999 () Bool)

(declare-fun e!29245 () Bool)

(assert (=> d!8999 e!29245))

(declare-fun res!26896 () Bool)

(assert (=> d!8999 (=> (not res!26896) (not e!29245))))

(declare-fun lt!20259 () List!1242)

(assert (=> d!8999 (= res!26896 (isStrictlySorted!219 lt!20259))))

(declare-fun e!29244 () List!1242)

(assert (=> d!8999 (= lt!20259 e!29244)))

(declare-fun c!6208 () Bool)

(assert (=> d!8999 (= c!6208 (and (is-Cons!1238 (removeStrictlySorted!34 (t!4275 l!812) key1!43)) (= (_1!844 (h!1818 (removeStrictlySorted!34 (t!4275 l!812) key1!43))) key2!27)))))

(assert (=> d!8999 (isStrictlySorted!219 (removeStrictlySorted!34 (t!4275 l!812) key1!43))))

(assert (=> d!8999 (= (removeStrictlySorted!34 (removeStrictlySorted!34 (t!4275 l!812) key1!43) key2!27) lt!20259)))

(declare-fun b!45935 () Bool)

(assert (=> b!45935 (= e!29243 Nil!1239)))

(declare-fun b!45936 () Bool)

(assert (=> b!45936 (= e!29245 (not (containsKey!81 lt!20259 key2!27)))))

(declare-fun b!45937 () Bool)

(assert (=> b!45937 (= e!29244 (t!4275 (removeStrictlySorted!34 (t!4275 l!812) key1!43)))))

(declare-fun b!45938 () Bool)

(assert (=> b!45938 (= e!29244 e!29243)))

(declare-fun c!6209 () Bool)

(assert (=> b!45938 (= c!6209 (and (is-Cons!1238 (removeStrictlySorted!34 (t!4275 l!812) key1!43)) (not (= (_1!844 (h!1818 (removeStrictlySorted!34 (t!4275 l!812) key1!43))) key2!27))))))

(assert (= (and d!8999 c!6208) b!45937))

(assert (= (and d!8999 (not c!6208)) b!45938))

(assert (= (and b!45938 c!6209) b!45934))

(assert (= (and b!45938 (not c!6209)) b!45935))

(assert (= (and d!8999 res!26896) b!45936))

(declare-fun m!40505 () Bool)

(assert (=> b!45934 m!40505))

(assert (=> b!45934 m!40505))

(declare-fun m!40507 () Bool)

(assert (=> b!45934 m!40507))

(declare-fun m!40511 () Bool)

(assert (=> d!8999 m!40511))

(assert (=> d!8999 m!40401))

(declare-fun m!40515 () Bool)

(assert (=> d!8999 m!40515))

(declare-fun m!40517 () Bool)

(assert (=> b!45936 m!40517))

(assert (=> b!45828 d!8999))

(declare-fun b!45951 () Bool)

(declare-fun e!29254 () List!1242)

(assert (=> b!45951 (= e!29254 ($colon$colon!34 (removeStrictlySorted!34 (t!4275 (t!4275 l!812)) key1!43) (h!1818 (t!4275 l!812))))))

(declare-fun d!9005 () Bool)

(declare-fun e!29256 () Bool)

(assert (=> d!9005 e!29256))

(declare-fun res!26901 () Bool)

(assert (=> d!9005 (=> (not res!26901) (not e!29256))))

(declare-fun lt!20262 () List!1242)

(assert (=> d!9005 (= res!26901 (isStrictlySorted!219 lt!20262))))

(declare-fun e!29255 () List!1242)

(assert (=> d!9005 (= lt!20262 e!29255)))

(declare-fun c!6214 () Bool)

(assert (=> d!9005 (= c!6214 (and (is-Cons!1238 (t!4275 l!812)) (= (_1!844 (h!1818 (t!4275 l!812))) key1!43)))))

(assert (=> d!9005 (isStrictlySorted!219 (t!4275 l!812))))

(assert (=> d!9005 (= (removeStrictlySorted!34 (t!4275 l!812) key1!43) lt!20262)))

(declare-fun b!45952 () Bool)

(assert (=> b!45952 (= e!29254 Nil!1239)))

(declare-fun b!45953 () Bool)

(assert (=> b!45953 (= e!29256 (not (containsKey!81 lt!20262 key1!43)))))

(declare-fun b!45954 () Bool)

(assert (=> b!45954 (= e!29255 (t!4275 (t!4275 l!812)))))

(declare-fun b!45955 () Bool)

(assert (=> b!45955 (= e!29255 e!29254)))

(declare-fun c!6215 () Bool)

(assert (=> b!45955 (= c!6215 (and (is-Cons!1238 (t!4275 l!812)) (not (= (_1!844 (h!1818 (t!4275 l!812))) key1!43))))))

(assert (= (and d!9005 c!6214) b!45954))

(assert (= (and d!9005 (not c!6214)) b!45955))

(assert (= (and b!45955 c!6215) b!45951))

(assert (= (and b!45955 (not c!6215)) b!45952))

(assert (= (and d!9005 res!26901) b!45953))

(declare-fun m!40531 () Bool)

(assert (=> b!45951 m!40531))

(assert (=> b!45951 m!40531))

(declare-fun m!40533 () Bool)

(assert (=> b!45951 m!40533))

(declare-fun m!40535 () Bool)

(assert (=> d!9005 m!40535))

(assert (=> d!9005 m!40395))

(declare-fun m!40537 () Bool)

(assert (=> b!45953 m!40537))

(assert (=> b!45828 d!9005))

(declare-fun b!45963 () Bool)

(declare-fun e!29262 () List!1242)

(assert (=> b!45963 (= e!29262 ($colon$colon!34 (removeStrictlySorted!34 (t!4275 (removeStrictlySorted!34 (t!4275 l!812) key2!27)) key1!43) (h!1818 (removeStrictlySorted!34 (t!4275 l!812) key2!27))))))

(declare-fun d!9011 () Bool)

(declare-fun e!29264 () Bool)

(assert (=> d!9011 e!29264))

(declare-fun res!26905 () Bool)

(assert (=> d!9011 (=> (not res!26905) (not e!29264))))

(declare-fun lt!20264 () List!1242)

(assert (=> d!9011 (= res!26905 (isStrictlySorted!219 lt!20264))))

(declare-fun e!29263 () List!1242)

(assert (=> d!9011 (= lt!20264 e!29263)))

(declare-fun c!6218 () Bool)

(assert (=> d!9011 (= c!6218 (and (is-Cons!1238 (removeStrictlySorted!34 (t!4275 l!812) key2!27)) (= (_1!844 (h!1818 (removeStrictlySorted!34 (t!4275 l!812) key2!27))) key1!43)))))

(assert (=> d!9011 (isStrictlySorted!219 (removeStrictlySorted!34 (t!4275 l!812) key2!27))))

(assert (=> d!9011 (= (removeStrictlySorted!34 (removeStrictlySorted!34 (t!4275 l!812) key2!27) key1!43) lt!20264)))

(declare-fun b!45964 () Bool)

(assert (=> b!45964 (= e!29262 Nil!1239)))

(declare-fun b!45965 () Bool)

(assert (=> b!45965 (= e!29264 (not (containsKey!81 lt!20264 key1!43)))))

(declare-fun b!45966 () Bool)

(assert (=> b!45966 (= e!29263 (t!4275 (removeStrictlySorted!34 (t!4275 l!812) key2!27)))))

(declare-fun b!45967 () Bool)

(assert (=> b!45967 (= e!29263 e!29262)))

(declare-fun c!6219 () Bool)

(assert (=> b!45967 (= c!6219 (and (is-Cons!1238 (removeStrictlySorted!34 (t!4275 l!812) key2!27)) (not (= (_1!844 (h!1818 (removeStrictlySorted!34 (t!4275 l!812) key2!27))) key1!43))))))

(assert (= (and d!9011 c!6218) b!45966))

(assert (= (and d!9011 (not c!6218)) b!45967))

(assert (= (and b!45967 c!6219) b!45963))

(assert (= (and b!45967 (not c!6219)) b!45964))

(assert (= (and d!9011 res!26905) b!45965))

(declare-fun m!40549 () Bool)

(assert (=> b!45963 m!40549))

(assert (=> b!45963 m!40549))

(declare-fun m!40551 () Bool)

(assert (=> b!45963 m!40551))

(declare-fun m!40553 () Bool)

(assert (=> d!9011 m!40553))

(assert (=> d!9011 m!40397))

(declare-fun m!40555 () Bool)

(assert (=> d!9011 m!40555))

(declare-fun m!40557 () Bool)

(assert (=> b!45965 m!40557))

(assert (=> b!45828 d!9011))

(declare-fun d!9017 () Bool)

(declare-fun res!26908 () Bool)

(declare-fun e!29269 () Bool)

(assert (=> d!9017 (=> res!26908 e!29269)))

(assert (=> d!9017 (= res!26908 (or (is-Nil!1239 (t!4275 l!812)) (is-Nil!1239 (t!4275 (t!4275 l!812)))))))

(assert (=> d!9017 (= (isStrictlySorted!219 (t!4275 l!812)) e!29269)))

(declare-fun b!45974 () Bool)

(declare-fun e!29270 () Bool)

(assert (=> b!45974 (= e!29269 e!29270)))

(declare-fun res!26909 () Bool)

(assert (=> b!45974 (=> (not res!26909) (not e!29270))))

(assert (=> b!45974 (= res!26909 (bvslt (_1!844 (h!1818 (t!4275 l!812))) (_1!844 (h!1818 (t!4275 (t!4275 l!812))))))))

(declare-fun b!45975 () Bool)

(assert (=> b!45975 (= e!29270 (isStrictlySorted!219 (t!4275 (t!4275 l!812))))))

(assert (= (and d!9017 (not res!26908)) b!45974))

(assert (= (and b!45974 res!26909) b!45975))

(declare-fun m!40559 () Bool)

(assert (=> b!45975 m!40559))

(assert (=> b!45827 d!9017))

(declare-fun b!45981 () Bool)

(declare-fun e!29274 () Bool)

(declare-fun tp!6023 () Bool)

(assert (=> b!45981 (= e!29274 (and tp_is_empty!1939 tp!6023))))

(assert (=> b!45829 (= tp!6011 e!29274)))

(assert (= (and b!45829 (is-Cons!1238 (t!4275 l!812))) b!45981))

(push 1)

