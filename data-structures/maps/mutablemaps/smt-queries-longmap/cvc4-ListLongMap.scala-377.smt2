; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7154 () Bool)

(assert start!7154)

(declare-fun b!45851 () Bool)

(declare-fun res!26863 () Bool)

(declare-fun e!29185 () Bool)

(assert (=> b!45851 (=> (not res!26863) (not e!29185))))

(declare-datatypes ((B!846 0))(
  ( (B!847 (val!1010 Int)) )
))
(declare-datatypes ((tuple2!1672 0))(
  ( (tuple2!1673 (_1!846 (_ BitVec 64)) (_2!846 B!846)) )
))
(declare-datatypes ((List!1244 0))(
  ( (Nil!1241) (Cons!1240 (h!1820 tuple2!1672) (t!4277 List!1244)) )
))
(declare-fun l!812 () List!1244)

(declare-fun isStrictlySorted!221 (List!1244) Bool)

(assert (=> b!45851 (= res!26863 (isStrictlySorted!221 (t!4277 l!812)))))

(declare-fun res!26862 () Bool)

(assert (=> start!7154 (=> (not res!26862) (not e!29185))))

(assert (=> start!7154 (= res!26862 (isStrictlySorted!221 l!812))))

(assert (=> start!7154 e!29185))

(declare-fun e!29186 () Bool)

(assert (=> start!7154 e!29186))

(assert (=> start!7154 true))

(declare-fun b!45850 () Bool)

(declare-fun res!26861 () Bool)

(assert (=> b!45850 (=> (not res!26861) (not e!29185))))

(assert (=> b!45850 (= res!26861 (is-Cons!1240 l!812))))

(declare-fun b!45852 () Bool)

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun removeStrictlySorted!36 (List!1244 (_ BitVec 64)) List!1244)

(assert (=> b!45852 (= e!29185 (not (isStrictlySorted!221 (removeStrictlySorted!36 l!812 key2!27))))))

(declare-fun key1!43 () (_ BitVec 64))

(assert (=> b!45852 (= (removeStrictlySorted!36 (removeStrictlySorted!36 (t!4277 l!812) key1!43) key2!27) (removeStrictlySorted!36 (removeStrictlySorted!36 (t!4277 l!812) key2!27) key1!43))))

(declare-datatypes ((Unit!1319 0))(
  ( (Unit!1320) )
))
(declare-fun lt!20240 () Unit!1319)

(declare-fun lemmaRemoveStrictlySortedCommutative!15 (List!1244 (_ BitVec 64) (_ BitVec 64)) Unit!1319)

(assert (=> b!45852 (= lt!20240 (lemmaRemoveStrictlySortedCommutative!15 (t!4277 l!812) key1!43 key2!27))))

(declare-fun b!45853 () Bool)

(declare-fun tp_is_empty!1943 () Bool)

(declare-fun tp!6017 () Bool)

(assert (=> b!45853 (= e!29186 (and tp_is_empty!1943 tp!6017))))

(assert (= (and start!7154 res!26862) b!45850))

(assert (= (and b!45850 res!26861) b!45851))

(assert (= (and b!45851 res!26863) b!45852))

(assert (= (and start!7154 (is-Cons!1240 l!812)) b!45853))

(declare-fun m!40431 () Bool)

(assert (=> b!45851 m!40431))

(declare-fun m!40433 () Bool)

(assert (=> start!7154 m!40433))

(declare-fun m!40435 () Bool)

(assert (=> b!45852 m!40435))

(declare-fun m!40437 () Bool)

(assert (=> b!45852 m!40437))

(declare-fun m!40439 () Bool)

(assert (=> b!45852 m!40439))

(declare-fun m!40441 () Bool)

(assert (=> b!45852 m!40441))

(assert (=> b!45852 m!40439))

(assert (=> b!45852 m!40437))

(declare-fun m!40443 () Bool)

(assert (=> b!45852 m!40443))

(assert (=> b!45852 m!40435))

(declare-fun m!40445 () Bool)

(assert (=> b!45852 m!40445))

(declare-fun m!40447 () Bool)

(assert (=> b!45852 m!40447))

(push 1)

(assert (not start!7154))

(assert (not b!45853))

(assert tp_is_empty!1943)

(assert (not b!45851))

(assert (not b!45852))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8979 () Bool)

(declare-fun res!26879 () Bool)

(declare-fun e!29212 () Bool)

(assert (=> d!8979 (=> res!26879 e!29212)))

(assert (=> d!8979 (= res!26879 (or (is-Nil!1241 l!812) (is-Nil!1241 (t!4277 l!812))))))

(assert (=> d!8979 (= (isStrictlySorted!221 l!812) e!29212)))

(declare-fun b!45889 () Bool)

(declare-fun e!29213 () Bool)

(assert (=> b!45889 (= e!29212 e!29213)))

(declare-fun res!26880 () Bool)

(assert (=> b!45889 (=> (not res!26880) (not e!29213))))

(assert (=> b!45889 (= res!26880 (bvslt (_1!846 (h!1820 l!812)) (_1!846 (h!1820 (t!4277 l!812)))))))

(declare-fun b!45890 () Bool)

(assert (=> b!45890 (= e!29213 (isStrictlySorted!221 (t!4277 l!812)))))

(assert (= (and d!8979 (not res!26879)) b!45889))

(assert (= (and b!45889 res!26880) b!45890))

(assert (=> b!45890 m!40431))

(assert (=> start!7154 d!8979))

(declare-fun b!45939 () Bool)

(declare-fun e!29246 () Bool)

(declare-fun lt!20260 () List!1244)

(declare-fun containsKey!82 (List!1244 (_ BitVec 64)) Bool)

(assert (=> b!45939 (= e!29246 (not (containsKey!82 lt!20260 key2!27)))))

(declare-fun b!45940 () Bool)

(declare-fun e!29247 () List!1244)

(declare-fun $colon$colon!36 (List!1244 tuple2!1672) List!1244)

(assert (=> b!45940 (= e!29247 ($colon$colon!36 (removeStrictlySorted!36 (t!4277 l!812) key2!27) (h!1820 l!812)))))

(declare-fun d!8983 () Bool)

(assert (=> d!8983 e!29246))

(declare-fun res!26897 () Bool)

(assert (=> d!8983 (=> (not res!26897) (not e!29246))))

(assert (=> d!8983 (= res!26897 (isStrictlySorted!221 lt!20260))))

(declare-fun e!29248 () List!1244)

(assert (=> d!8983 (= lt!20260 e!29248)))

(declare-fun c!6210 () Bool)

(assert (=> d!8983 (= c!6210 (and (is-Cons!1240 l!812) (= (_1!846 (h!1820 l!812)) key2!27)))))

(assert (=> d!8983 (isStrictlySorted!221 l!812)))

(assert (=> d!8983 (= (removeStrictlySorted!36 l!812 key2!27) lt!20260)))

(declare-fun b!45941 () Bool)

(assert (=> b!45941 (= e!29248 (t!4277 l!812))))

(declare-fun b!45942 () Bool)

(assert (=> b!45942 (= e!29247 Nil!1241)))

(declare-fun b!45943 () Bool)

(assert (=> b!45943 (= e!29248 e!29247)))

(declare-fun c!6211 () Bool)

(assert (=> b!45943 (= c!6211 (and (is-Cons!1240 l!812) (not (= (_1!846 (h!1820 l!812)) key2!27))))))

(assert (= (and d!8983 c!6210) b!45941))

(assert (= (and d!8983 (not c!6210)) b!45943))

(assert (= (and b!45943 c!6211) b!45940))

(assert (= (and b!45943 (not c!6211)) b!45942))

(assert (= (and d!8983 res!26897) b!45939))

(declare-fun m!40503 () Bool)

(assert (=> b!45939 m!40503))

(assert (=> b!45940 m!40435))

(assert (=> b!45940 m!40435))

(declare-fun m!40509 () Bool)

(assert (=> b!45940 m!40509))

(declare-fun m!40513 () Bool)

(assert (=> d!8983 m!40513))

(assert (=> d!8983 m!40433))

(assert (=> b!45852 d!8983))

(declare-fun d!9003 () Bool)

(declare-fun res!26899 () Bool)

(declare-fun e!29252 () Bool)

(assert (=> d!9003 (=> res!26899 e!29252)))

(assert (=> d!9003 (= res!26899 (or (is-Nil!1241 (removeStrictlySorted!36 l!812 key2!27)) (is-Nil!1241 (t!4277 (removeStrictlySorted!36 l!812 key2!27)))))))

(assert (=> d!9003 (= (isStrictlySorted!221 (removeStrictlySorted!36 l!812 key2!27)) e!29252)))

(declare-fun b!45949 () Bool)

(declare-fun e!29253 () Bool)

(assert (=> b!45949 (= e!29252 e!29253)))

(declare-fun res!26900 () Bool)

(assert (=> b!45949 (=> (not res!26900) (not e!29253))))

(assert (=> b!45949 (= res!26900 (bvslt (_1!846 (h!1820 (removeStrictlySorted!36 l!812 key2!27))) (_1!846 (h!1820 (t!4277 (removeStrictlySorted!36 l!812 key2!27))))))))

(declare-fun b!45950 () Bool)

(assert (=> b!45950 (= e!29253 (isStrictlySorted!221 (t!4277 (removeStrictlySorted!36 l!812 key2!27))))))

(assert (= (and d!9003 (not res!26899)) b!45949))

(assert (= (and b!45949 res!26900) b!45950))

(declare-fun m!40525 () Bool)

(assert (=> b!45950 m!40525))

(assert (=> b!45852 d!9003))

(declare-fun b!45956 () Bool)

(declare-fun e!29257 () Bool)

(declare-fun lt!20263 () List!1244)

(assert (=> b!45956 (= e!29257 (not (containsKey!82 lt!20263 key2!27)))))

(declare-fun b!45957 () Bool)

(declare-fun e!29258 () List!1244)

(assert (=> b!45957 (= e!29258 ($colon$colon!36 (removeStrictlySorted!36 (t!4277 (t!4277 l!812)) key2!27) (h!1820 (t!4277 l!812))))))

(declare-fun d!9007 () Bool)

(assert (=> d!9007 e!29257))

(declare-fun res!26902 () Bool)

(assert (=> d!9007 (=> (not res!26902) (not e!29257))))

(assert (=> d!9007 (= res!26902 (isStrictlySorted!221 lt!20263))))

(declare-fun e!29259 () List!1244)

(assert (=> d!9007 (= lt!20263 e!29259)))

(declare-fun c!6216 () Bool)

(assert (=> d!9007 (= c!6216 (and (is-Cons!1240 (t!4277 l!812)) (= (_1!846 (h!1820 (t!4277 l!812))) key2!27)))))

(assert (=> d!9007 (isStrictlySorted!221 (t!4277 l!812))))

(assert (=> d!9007 (= (removeStrictlySorted!36 (t!4277 l!812) key2!27) lt!20263)))

(declare-fun b!45958 () Bool)

(assert (=> b!45958 (= e!29259 (t!4277 (t!4277 l!812)))))

(declare-fun b!45959 () Bool)

(assert (=> b!45959 (= e!29258 Nil!1241)))

(declare-fun b!45960 () Bool)

(assert (=> b!45960 (= e!29259 e!29258)))

(declare-fun c!6217 () Bool)

(assert (=> b!45960 (= c!6217 (and (is-Cons!1240 (t!4277 l!812)) (not (= (_1!846 (h!1820 (t!4277 l!812))) key2!27))))))

(assert (= (and d!9007 c!6216) b!45958))

(assert (= (and d!9007 (not c!6216)) b!45960))

(assert (= (and b!45960 c!6217) b!45957))

(assert (= (and b!45960 (not c!6217)) b!45959))

(assert (= (and d!9007 res!26902) b!45956))

(declare-fun m!40541 () Bool)

(assert (=> b!45956 m!40541))

(declare-fun m!40543 () Bool)

(assert (=> b!45957 m!40543))

(assert (=> b!45957 m!40543))

(declare-fun m!40545 () Bool)

(assert (=> b!45957 m!40545))

(declare-fun m!40547 () Bool)

(assert (=> d!9007 m!40547))

(assert (=> d!9007 m!40431))

(assert (=> b!45852 d!9007))

(declare-fun d!9015 () Bool)

(assert (=> d!9015 (= (removeStrictlySorted!36 (removeStrictlySorted!36 (t!4277 l!812) key1!43) key2!27) (removeStrictlySorted!36 (removeStrictlySorted!36 (t!4277 l!812) key2!27) key1!43))))

(declare-fun lt!20267 () Unit!1319)

(declare-fun choose!284 (List!1244 (_ BitVec 64) (_ BitVec 64)) Unit!1319)

(assert (=> d!9015 (= lt!20267 (choose!284 (t!4277 l!812) key1!43 key2!27))))

(assert (=> d!9015 (isStrictlySorted!221 (t!4277 l!812))))

(assert (=> d!9015 (= (lemmaRemoveStrictlySortedCommutative!15 (t!4277 l!812) key1!43 key2!27) lt!20267)))

(declare-fun bs!2158 () Bool)

(assert (= bs!2158 d!9015))

(assert (=> bs!2158 m!40431))

(assert (=> bs!2158 m!40439))

(assert (=> bs!2158 m!40439))

(assert (=> bs!2158 m!40441))

(declare-fun m!40561 () Bool)

(assert (=> bs!2158 m!40561))

(assert (=> bs!2158 m!40435))

(assert (=> bs!2158 m!40445))

(assert (=> bs!2158 m!40435))

(assert (=> b!45852 d!9015))

(declare-fun b!45982 () Bool)

(declare-fun e!29275 () Bool)

(declare-fun lt!20268 () List!1244)

(assert (=> b!45982 (= e!29275 (not (containsKey!82 lt!20268 key2!27)))))

(declare-fun e!29276 () List!1244)

(declare-fun b!45983 () Bool)

(assert (=> b!45983 (= e!29276 ($colon$colon!36 (removeStrictlySorted!36 (t!4277 (removeStrictlySorted!36 (t!4277 l!812) key1!43)) key2!27) (h!1820 (removeStrictlySorted!36 (t!4277 l!812) key1!43))))))

(declare-fun d!9019 () Bool)

(assert (=> d!9019 e!29275))

(declare-fun res!26910 () Bool)

(assert (=> d!9019 (=> (not res!26910) (not e!29275))))

(assert (=> d!9019 (= res!26910 (isStrictlySorted!221 lt!20268))))

(declare-fun e!29277 () List!1244)

(assert (=> d!9019 (= lt!20268 e!29277)))

(declare-fun c!6220 () Bool)

(assert (=> d!9019 (= c!6220 (and (is-Cons!1240 (removeStrictlySorted!36 (t!4277 l!812) key1!43)) (= (_1!846 (h!1820 (removeStrictlySorted!36 (t!4277 l!812) key1!43))) key2!27)))))

(assert (=> d!9019 (isStrictlySorted!221 (removeStrictlySorted!36 (t!4277 l!812) key1!43))))

(assert (=> d!9019 (= (removeStrictlySorted!36 (removeStrictlySorted!36 (t!4277 l!812) key1!43) key2!27) lt!20268)))

(declare-fun b!45984 () Bool)

(assert (=> b!45984 (= e!29277 (t!4277 (removeStrictlySorted!36 (t!4277 l!812) key1!43)))))

(declare-fun b!45985 () Bool)

(assert (=> b!45985 (= e!29276 Nil!1241)))

(declare-fun b!45986 () Bool)

(assert (=> b!45986 (= e!29277 e!29276)))

(declare-fun c!6221 () Bool)

(assert (=> b!45986 (= c!6221 (and (is-Cons!1240 (removeStrictlySorted!36 (t!4277 l!812) key1!43)) (not (= (_1!846 (h!1820 (removeStrictlySorted!36 (t!4277 l!812) key1!43))) key2!27))))))

(assert (= (and d!9019 c!6220) b!45984))

(assert (= (and d!9019 (not c!6220)) b!45986))

(assert (= (and b!45986 c!6221) b!45983))

(assert (= (and b!45986 (not c!6221)) b!45985))

(assert (= (and d!9019 res!26910) b!45982))

(declare-fun m!40563 () Bool)

(assert (=> b!45982 m!40563))

(declare-fun m!40565 () Bool)

(assert (=> b!45983 m!40565))

(assert (=> b!45983 m!40565))

(declare-fun m!40567 () Bool)

(assert (=> b!45983 m!40567))

(declare-fun m!40569 () Bool)

(assert (=> d!9019 m!40569))

(assert (=> d!9019 m!40439))

(declare-fun m!40571 () Bool)

(assert (=> d!9019 m!40571))

(assert (=> b!45852 d!9019))

(declare-fun b!45987 () Bool)

(declare-fun e!29278 () Bool)

(declare-fun lt!20269 () List!1244)

(assert (=> b!45987 (= e!29278 (not (containsKey!82 lt!20269 key1!43)))))

(declare-fun b!45988 () Bool)

(declare-fun e!29279 () List!1244)

(assert (=> b!45988 (= e!29279 ($colon$colon!36 (removeStrictlySorted!36 (t!4277 (t!4277 l!812)) key1!43) (h!1820 (t!4277 l!812))))))

(declare-fun d!9021 () Bool)

(assert (=> d!9021 e!29278))

(declare-fun res!26911 () Bool)

(assert (=> d!9021 (=> (not res!26911) (not e!29278))))

(assert (=> d!9021 (= res!26911 (isStrictlySorted!221 lt!20269))))

(declare-fun e!29280 () List!1244)

(assert (=> d!9021 (= lt!20269 e!29280)))

(declare-fun c!6222 () Bool)

(assert (=> d!9021 (= c!6222 (and (is-Cons!1240 (t!4277 l!812)) (= (_1!846 (h!1820 (t!4277 l!812))) key1!43)))))

