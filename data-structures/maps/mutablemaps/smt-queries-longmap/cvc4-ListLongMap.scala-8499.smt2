; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103612 () Bool)

(assert start!103612)

(declare-fun res!827931 () Bool)

(declare-fun e!703307 () Bool)

(assert (=> start!103612 (=> (not res!827931) (not e!703307))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103612 (= res!827931 (not (= key1!25 key2!15)))))

(assert (=> start!103612 e!703307))

(assert (=> start!103612 true))

(declare-fun e!703306 () Bool)

(assert (=> start!103612 e!703306))

(declare-fun tp_is_empty!31223 () Bool)

(assert (=> start!103612 tp_is_empty!31223))

(declare-fun b!1240763 () Bool)

(declare-fun res!827932 () Bool)

(assert (=> b!1240763 (=> (not res!827932) (not e!703307))))

(declare-datatypes ((B!1824 0))(
  ( (B!1825 (val!15674 Int)) )
))
(declare-datatypes ((tuple2!20376 0))(
  ( (tuple2!20377 (_1!10198 (_ BitVec 64)) (_2!10198 B!1824)) )
))
(declare-datatypes ((List!27503 0))(
  ( (Nil!27500) (Cons!27499 (h!28708 tuple2!20376) (t!40973 List!27503)) )
))
(declare-fun l!644 () List!27503)

(declare-fun isStrictlySorted!737 (List!27503) Bool)

(assert (=> b!1240763 (= res!827932 (isStrictlySorted!737 (t!40973 l!644)))))

(declare-fun b!1240764 () Bool)

(declare-fun removeStrictlySorted!121 (List!27503 (_ BitVec 64)) List!27503)

(assert (=> b!1240764 (= e!703307 (not (isStrictlySorted!737 (removeStrictlySorted!121 l!644 key2!15))))))

(declare-fun v1!20 () B!1824)

(declare-fun insertStrictlySorted!427 (List!27503 (_ BitVec 64) B!1824) List!27503)

(assert (=> b!1240764 (= (insertStrictlySorted!427 (removeStrictlySorted!121 (t!40973 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!121 (insertStrictlySorted!427 (t!40973 l!644) key1!25 v1!20) key2!15))))

(declare-datatypes ((Unit!41189 0))(
  ( (Unit!41190) )
))
(declare-fun lt!561988 () Unit!41189)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!9 (List!27503 (_ BitVec 64) B!1824 (_ BitVec 64)) Unit!41189)

(assert (=> b!1240764 (= lt!561988 (lemmaInsertAndRemoveStrictlySortedCommutative!9 (t!40973 l!644) key1!25 v1!20 key2!15))))

(declare-fun b!1240765 () Bool)

(declare-fun res!827930 () Bool)

(assert (=> b!1240765 (=> (not res!827930) (not e!703307))))

(assert (=> b!1240765 (= res!827930 (isStrictlySorted!737 l!644))))

(declare-fun b!1240766 () Bool)

(declare-fun res!827929 () Bool)

(assert (=> b!1240766 (=> (not res!827929) (not e!703307))))

(assert (=> b!1240766 (= res!827929 (is-Cons!27499 l!644))))

(declare-fun b!1240767 () Bool)

(declare-fun tp!92589 () Bool)

(assert (=> b!1240767 (= e!703306 (and tp_is_empty!31223 tp!92589))))

(assert (= (and start!103612 res!827931) b!1240765))

(assert (= (and b!1240765 res!827930) b!1240766))

(assert (= (and b!1240766 res!827929) b!1240763))

(assert (= (and b!1240763 res!827932) b!1240764))

(assert (= (and start!103612 (is-Cons!27499 l!644)) b!1240767))

(declare-fun m!1144055 () Bool)

(assert (=> b!1240763 m!1144055))

(declare-fun m!1144057 () Bool)

(assert (=> b!1240764 m!1144057))

(declare-fun m!1144059 () Bool)

(assert (=> b!1240764 m!1144059))

(declare-fun m!1144061 () Bool)

(assert (=> b!1240764 m!1144061))

(assert (=> b!1240764 m!1144059))

(declare-fun m!1144063 () Bool)

(assert (=> b!1240764 m!1144063))

(declare-fun m!1144065 () Bool)

(assert (=> b!1240764 m!1144065))

(assert (=> b!1240764 m!1144063))

(declare-fun m!1144067 () Bool)

(assert (=> b!1240764 m!1144067))

(assert (=> b!1240764 m!1144057))

(declare-fun m!1144069 () Bool)

(assert (=> b!1240764 m!1144069))

(declare-fun m!1144071 () Bool)

(assert (=> b!1240765 m!1144071))

(push 1)

(assert (not b!1240763))

(assert (not b!1240765))

(assert tp_is_empty!31223)

(assert (not b!1240767))

(assert (not b!1240764))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136281 () Bool)

(declare-fun res!827937 () Bool)

(declare-fun e!703312 () Bool)

(assert (=> d!136281 (=> res!827937 e!703312)))

(assert (=> d!136281 (= res!827937 (or (is-Nil!27500 l!644) (is-Nil!27500 (t!40973 l!644))))))

(assert (=> d!136281 (= (isStrictlySorted!737 l!644) e!703312)))

(declare-fun b!1240772 () Bool)

(declare-fun e!703313 () Bool)

(assert (=> b!1240772 (= e!703312 e!703313)))

(declare-fun res!827938 () Bool)

(assert (=> b!1240772 (=> (not res!827938) (not e!703313))))

(assert (=> b!1240772 (= res!827938 (bvslt (_1!10198 (h!28708 l!644)) (_1!10198 (h!28708 (t!40973 l!644)))))))

(declare-fun b!1240773 () Bool)

(assert (=> b!1240773 (= e!703313 (isStrictlySorted!737 (t!40973 l!644)))))

(assert (= (and d!136281 (not res!827937)) b!1240772))

(assert (= (and b!1240772 res!827938) b!1240773))

(assert (=> b!1240773 m!1144055))

(assert (=> b!1240765 d!136281))

(declare-fun d!136283 () Bool)

(declare-fun res!827939 () Bool)

(declare-fun e!703314 () Bool)

(assert (=> d!136283 (=> res!827939 e!703314)))

(assert (=> d!136283 (= res!827939 (or (is-Nil!27500 (t!40973 l!644)) (is-Nil!27500 (t!40973 (t!40973 l!644)))))))

(assert (=> d!136283 (= (isStrictlySorted!737 (t!40973 l!644)) e!703314)))

(declare-fun b!1240774 () Bool)

(declare-fun e!703315 () Bool)

(assert (=> b!1240774 (= e!703314 e!703315)))

(declare-fun res!827940 () Bool)

(assert (=> b!1240774 (=> (not res!827940) (not e!703315))))

(assert (=> b!1240774 (= res!827940 (bvslt (_1!10198 (h!28708 (t!40973 l!644))) (_1!10198 (h!28708 (t!40973 (t!40973 l!644))))))))

(declare-fun b!1240775 () Bool)

(assert (=> b!1240775 (= e!703315 (isStrictlySorted!737 (t!40973 (t!40973 l!644))))))

(assert (= (and d!136283 (not res!827939)) b!1240774))

(assert (= (and b!1240774 res!827940) b!1240775))

(declare-fun m!1144073 () Bool)

(assert (=> b!1240775 m!1144073))

(assert (=> b!1240763 d!136283))

(declare-fun b!1240801 () Bool)

(declare-fun e!703338 () List!27503)

(declare-fun $colon$colon!617 (List!27503 tuple2!20376) List!27503)

(assert (=> b!1240801 (= e!703338 ($colon$colon!617 (removeStrictlySorted!121 (t!40973 (insertStrictlySorted!427 (t!40973 l!644) key1!25 v1!20)) key2!15) (h!28708 (insertStrictlySorted!427 (t!40973 l!644) key1!25 v1!20))))))

(declare-fun b!1240802 () Bool)

(declare-fun e!703336 () List!27503)

(assert (=> b!1240802 (= e!703336 e!703338)))

(declare-fun c!121233 () Bool)

(assert (=> b!1240802 (= c!121233 (and (is-Cons!27499 (insertStrictlySorted!427 (t!40973 l!644) key1!25 v1!20)) (not (= (_1!10198 (h!28708 (insertStrictlySorted!427 (t!40973 l!644) key1!25 v1!20))) key2!15))))))

(declare-fun b!1240803 () Bool)

(declare-fun e!703337 () Bool)

(declare-fun lt!561991 () List!27503)

(declare-fun containsKey!602 (List!27503 (_ BitVec 64)) Bool)

(assert (=> b!1240803 (= e!703337 (not (containsKey!602 lt!561991 key2!15)))))

(declare-fun b!1240804 () Bool)

(assert (=> b!1240804 (= e!703336 (t!40973 (insertStrictlySorted!427 (t!40973 l!644) key1!25 v1!20)))))

(declare-fun d!136285 () Bool)

(assert (=> d!136285 e!703337))

(declare-fun res!827957 () Bool)

(assert (=> d!136285 (=> (not res!827957) (not e!703337))))

(assert (=> d!136285 (= res!827957 (isStrictlySorted!737 lt!561991))))

(assert (=> d!136285 (= lt!561991 e!703336)))

(declare-fun c!121234 () Bool)

(assert (=> d!136285 (= c!121234 (and (is-Cons!27499 (insertStrictlySorted!427 (t!40973 l!644) key1!25 v1!20)) (= (_1!10198 (h!28708 (insertStrictlySorted!427 (t!40973 l!644) key1!25 v1!20))) key2!15)))))

(assert (=> d!136285 (isStrictlySorted!737 (insertStrictlySorted!427 (t!40973 l!644) key1!25 v1!20))))

(assert (=> d!136285 (= (removeStrictlySorted!121 (insertStrictlySorted!427 (t!40973 l!644) key1!25 v1!20) key2!15) lt!561991)))

(declare-fun b!1240800 () Bool)

(assert (=> b!1240800 (= e!703338 Nil!27500)))

(assert (= (and d!136285 c!121234) b!1240804))

(assert (= (and d!136285 (not c!121234)) b!1240802))

(assert (= (and b!1240802 c!121233) b!1240801))

(assert (= (and b!1240802 (not c!121233)) b!1240800))

(assert (= (and d!136285 res!827957) b!1240803))

(declare-fun m!1144077 () Bool)

(assert (=> b!1240801 m!1144077))

(assert (=> b!1240801 m!1144077))

(declare-fun m!1144079 () Bool)

(assert (=> b!1240801 m!1144079))

(declare-fun m!1144081 () Bool)

(assert (=> b!1240803 m!1144081))

(declare-fun m!1144083 () Bool)

(assert (=> d!136285 m!1144083))

(assert (=> d!136285 m!1144059))

(declare-fun m!1144085 () Bool)

(assert (=> d!136285 m!1144085))

(assert (=> b!1240764 d!136285))

(declare-fun bm!61175 () Bool)

(declare-fun call!61180 () List!27503)

(declare-fun call!61179 () List!27503)

(assert (=> bm!61175 (= call!61180 call!61179)))

(declare-fun e!703383 () List!27503)

(declare-fun bm!61176 () Bool)

(declare-fun c!121269 () Bool)

(assert (=> bm!61176 (= call!61179 ($colon$colon!617 e!703383 (ite c!121269 (h!28708 (removeStrictlySorted!121 (t!40973 l!644) key2!15)) (tuple2!20377 key1!25 v1!20))))))

(declare-fun c!121272 () Bool)

(assert (=> bm!61176 (= c!121272 c!121269)))

(declare-fun b!1240887 () Bool)

(declare-fun res!827973 () Bool)

(declare-fun e!703386 () Bool)

(assert (=> b!1240887 (=> (not res!827973) (not e!703386))))

(declare-fun lt!562004 () List!27503)

(assert (=> b!1240887 (= res!827973 (containsKey!602 lt!562004 key1!25))))

(declare-fun c!121271 () Bool)

(declare-fun b!1240888 () Bool)

(assert (=> b!1240888 (= c!121271 (and (is-Cons!27499 (removeStrictlySorted!121 (t!40973 l!644) key2!15)) (bvsgt (_1!10198 (h!28708 (removeStrictlySorted!121 (t!40973 l!644) key2!15))) key1!25)))))

(declare-fun e!703384 () List!27503)

(declare-fun e!703385 () List!27503)

(assert (=> b!1240888 (= e!703384 e!703385)))

(declare-fun b!1240889 () Bool)

(declare-fun call!61178 () List!27503)

(assert (=> b!1240889 (= e!703385 call!61178)))

(declare-fun b!1240890 () Bool)

(assert (=> b!1240890 (= e!703385 call!61178)))

(declare-fun b!1240891 () Bool)

(assert (=> b!1240891 (= e!703384 call!61180)))

(declare-fun b!1240892 () Bool)

(declare-fun e!703387 () List!27503)

(assert (=> b!1240892 (= e!703387 call!61179)))

(declare-fun bm!61177 () Bool)

(assert (=> bm!61177 (= call!61178 call!61180)))

(declare-fun b!1240893 () Bool)

(assert (=> b!1240893 (= e!703387 e!703384)))

(declare-fun c!121270 () Bool)

(assert (=> b!1240893 (= c!121270 (and (is-Cons!27499 (removeStrictlySorted!121 (t!40973 l!644) key2!15)) (= (_1!10198 (h!28708 (removeStrictlySorted!121 (t!40973 l!644) key2!15))) key1!25)))))

(declare-fun d!136297 () Bool)

(assert (=> d!136297 e!703386))

(declare-fun res!827972 () Bool)

(assert (=> d!136297 (=> (not res!827972) (not e!703386))))

(assert (=> d!136297 (= res!827972 (isStrictlySorted!737 lt!562004))))

(assert (=> d!136297 (= lt!562004 e!703387)))

(assert (=> d!136297 (= c!121269 (and (is-Cons!27499 (removeStrictlySorted!121 (t!40973 l!644) key2!15)) (bvslt (_1!10198 (h!28708 (removeStrictlySorted!121 (t!40973 l!644) key2!15))) key1!25)))))

(assert (=> d!136297 (isStrictlySorted!737 (removeStrictlySorted!121 (t!40973 l!644) key2!15))))

(assert (=> d!136297 (= (insertStrictlySorted!427 (removeStrictlySorted!121 (t!40973 l!644) key2!15) key1!25 v1!20) lt!562004)))

(declare-fun b!1240894 () Bool)

(assert (=> b!1240894 (= e!703383 (ite c!121270 (t!40973 (removeStrictlySorted!121 (t!40973 l!644) key2!15)) (ite c!121271 (Cons!27499 (h!28708 (removeStrictlySorted!121 (t!40973 l!644) key2!15)) (t!40973 (removeStrictlySorted!121 (t!40973 l!644) key2!15))) Nil!27500)))))

(declare-fun b!1240895 () Bool)

(declare-fun contains!7403 (List!27503 tuple2!20376) Bool)

(assert (=> b!1240895 (= e!703386 (contains!7403 lt!562004 (tuple2!20377 key1!25 v1!20)))))

(declare-fun b!1240896 () Bool)

(assert (=> b!1240896 (= e!703383 (insertStrictlySorted!427 (t!40973 (removeStrictlySorted!121 (t!40973 l!644) key2!15)) key1!25 v1!20))))

(assert (= (and d!136297 c!121269) b!1240892))

(assert (= (and d!136297 (not c!121269)) b!1240893))

(assert (= (and b!1240893 c!121270) b!1240891))

(assert (= (and b!1240893 (not c!121270)) b!1240888))

(assert (= (and b!1240888 c!121271) b!1240890))

(assert (= (and b!1240888 (not c!121271)) b!1240889))

(assert (= (or b!1240890 b!1240889) bm!61177))

(assert (= (or b!1240891 bm!61177) bm!61175))

(assert (= (or b!1240892 bm!61175) bm!61176))

(assert (= (and bm!61176 c!121272) b!1240896))

(assert (= (and bm!61176 (not c!121272)) b!1240894))

(assert (= (and d!136297 res!827972) b!1240887))

(assert (= (and b!1240887 res!827973) b!1240895))

(declare-fun m!1144107 () Bool)

(assert (=> b!1240887 m!1144107))

(declare-fun m!1144109 () Bool)

(assert (=> b!1240895 m!1144109))

(declare-fun m!1144111 () Bool)

(assert (=> bm!61176 m!1144111))

(declare-fun m!1144113 () Bool)

(assert (=> d!136297 m!1144113))

(assert (=> d!136297 m!1144063))

(declare-fun m!1144115 () Bool)

(assert (=> d!136297 m!1144115))

(declare-fun m!1144117 () Bool)

(assert (=> b!1240896 m!1144117))

(assert (=> b!1240764 d!136297))

(declare-fun b!1240902 () Bool)

(declare-fun e!703392 () List!27503)

(assert (=> b!1240902 (= e!703392 ($colon$colon!617 (removeStrictlySorted!121 (t!40973 l!644) key2!15) (h!28708 l!644)))))

(declare-fun b!1240903 () Bool)

(declare-fun e!703390 () List!27503)

(assert (=> b!1240903 (= e!703390 e!703392)))

(declare-fun c!121275 () Bool)

(assert (=> b!1240903 (= c!121275 (and (is-Cons!27499 l!644) (not (= (_1!10198 (h!28708 l!644)) key2!15))))))

(declare-fun b!1240904 () Bool)

(declare-fun e!703391 () Bool)

(declare-fun lt!562005 () List!27503)

(assert (=> b!1240904 (= e!703391 (not (containsKey!602 lt!562005 key2!15)))))

(declare-fun b!1240905 () Bool)

(assert (=> b!1240905 (= e!703390 (t!40973 l!644))))

(declare-fun d!136303 () Bool)

(assert (=> d!136303 e!703391))

(declare-fun res!827974 () Bool)

(assert (=> d!136303 (=> (not res!827974) (not e!703391))))

(assert (=> d!136303 (= res!827974 (isStrictlySorted!737 lt!562005))))

(assert (=> d!136303 (= lt!562005 e!703390)))

(declare-fun c!121276 () Bool)

(assert (=> d!136303 (= c!121276 (and (is-Cons!27499 l!644) (= (_1!10198 (h!28708 l!644)) key2!15)))))

(assert (=> d!136303 (isStrictlySorted!737 l!644)))

(assert (=> d!136303 (= (removeStrictlySorted!121 l!644 key2!15) lt!562005)))

(declare-fun b!1240901 () Bool)

(assert (=> b!1240901 (= e!703392 Nil!27500)))

(assert (= (and d!136303 c!121276) b!1240905))

(assert (= (and d!136303 (not c!121276)) b!1240903))

(assert (= (and b!1240903 c!121275) b!1240902))

(assert (= (and b!1240903 (not c!121275)) b!1240901))

(assert (= (and d!136303 res!827974) b!1240904))

(assert (=> b!1240902 m!1144063))

(assert (=> b!1240902 m!1144063))

(declare-fun m!1144119 () Bool)

(assert (=> b!1240902 m!1144119))

(declare-fun m!1144121 () Bool)

(assert (=> b!1240904 m!1144121))

(declare-fun m!1144123 () Bool)

(assert (=> d!136303 m!1144123))

(assert (=> d!136303 m!1144071))

(assert (=> b!1240764 d!136303))

(declare-fun d!136305 () Bool)

(assert (=> d!136305 (= (insertStrictlySorted!427 (removeStrictlySorted!121 (t!40973 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!121 (insertStrictlySorted!427 (t!40973 l!644) key1!25 v1!20) key2!15))))

(declare-fun lt!562011 () Unit!41189)

(declare-fun choose!1845 (List!27503 (_ BitVec 64) B!1824 (_ BitVec 64)) Unit!41189)

(assert (=> d!136305 (= lt!562011 (choose!1845 (t!40973 l!644) key1!25 v1!20 key2!15))))

(assert (=> d!136305 (not (= key1!25 key2!15))))

(assert (=> d!136305 (= (lemmaInsertAndRemoveStrictlySortedCommutative!9 (t!40973 l!644) key1!25 v1!20 key2!15) lt!562011)))

(declare-fun bs!34930 () Bool)

(assert (= bs!34930 d!136305))

(assert (=> bs!34930 m!1144063))

(assert (=> bs!34930 m!1144067))

(assert (=> bs!34930 m!1144063))

(assert (=> bs!34930 m!1144059))

(assert (=> bs!34930 m!1144059))

(assert (=> bs!34930 m!1144061))

(declare-fun m!1144155 () Bool)

(assert (=> bs!34930 m!1144155))

(assert (=> b!1240764 d!136305))

(declare-fun d!136313 () Bool)

(declare-fun res!827985 () Bool)

(declare-fun e!703411 () Bool)

(assert (=> d!136313 (=> res!827985 e!703411)))

(assert (=> d!136313 (= res!827985 (or (is-Nil!27500 (removeStrictlySorted!121 l!644 key2!15)) (is-Nil!27500 (t!40973 (removeStrictlySorted!121 l!644 key2!15)))))))

(assert (=> d!136313 (= (isStrictlySorted!737 (removeStrictlySorted!121 l!644 key2!15)) e!703411)))

(declare-fun b!1240940 () Bool)

(declare-fun e!703412 () Bool)

(assert (=> b!1240940 (= e!703411 e!703412)))

(declare-fun res!827986 () Bool)

(assert (=> b!1240940 (=> (not res!827986) (not e!703412))))

(assert (=> b!1240940 (= res!827986 (bvslt (_1!10198 (h!28708 (removeStrictlySorted!121 l!644 key2!15))) (_1!10198 (h!28708 (t!40973 (removeStrictlySorted!121 l!644 key2!15))))))))

(declare-fun b!1240941 () Bool)

(assert (=> b!1240941 (= e!703412 (isStrictlySorted!737 (t!40973 (removeStrictlySorted!121 l!644 key2!15))))))

(assert (= (and d!136313 (not res!827985)) b!1240940))

(assert (= (and b!1240940 res!827986) b!1240941))

(declare-fun m!1144163 () Bool)

(assert (=> b!1240941 m!1144163))

(assert (=> b!1240764 d!136313))

(declare-fun bm!61186 () Bool)

(declare-fun call!61191 () List!27503)

(declare-fun call!61190 () List!27503)

(assert (=> bm!61186 (= call!61191 call!61190)))

(declare-fun e!703413 () List!27503)

(declare-fun c!121289 () Bool)

(declare-fun bm!61187 () Bool)

(assert (=> bm!61187 (= call!61190 ($colon$colon!617 e!703413 (ite c!121289 (h!28708 (t!40973 l!644)) (tuple2!20377 key1!25 v1!20))))))

(declare-fun c!121292 () Bool)

(assert (=> bm!61187 (= c!121292 c!121289)))

(declare-fun b!1240942 () Bool)

(declare-fun res!827988 () Bool)

(declare-fun e!703416 () Bool)

(assert (=> b!1240942 (=> (not res!827988) (not e!703416))))

(declare-fun lt!562013 () List!27503)

(assert (=> b!1240942 (= res!827988 (containsKey!602 lt!562013 key1!25))))

(declare-fun b!1240943 () Bool)

(declare-fun c!121291 () Bool)

(assert (=> b!1240943 (= c!121291 (and (is-Cons!27499 (t!40973 l!644)) (bvsgt (_1!10198 (h!28708 (t!40973 l!644))) key1!25)))))

(declare-fun e!703414 () List!27503)

(declare-fun e!703415 () List!27503)

(assert (=> b!1240943 (= e!703414 e!703415)))

(declare-fun b!1240944 () Bool)

(declare-fun call!61189 () List!27503)

(assert (=> b!1240944 (= e!703415 call!61189)))

(declare-fun b!1240945 () Bool)

(assert (=> b!1240945 (= e!703415 call!61189)))

(declare-fun b!1240946 () Bool)

(assert (=> b!1240946 (= e!703414 call!61191)))

(declare-fun b!1240947 () Bool)

(declare-fun e!703417 () List!27503)

(assert (=> b!1240947 (= e!703417 call!61190)))

(declare-fun bm!61188 () Bool)

(assert (=> bm!61188 (= call!61189 call!61191)))

(declare-fun b!1240948 () Bool)

(assert (=> b!1240948 (= e!703417 e!703414)))

(declare-fun c!121290 () Bool)

(assert (=> b!1240948 (= c!121290 (and (is-Cons!27499 (t!40973 l!644)) (= (_1!10198 (h!28708 (t!40973 l!644))) key1!25)))))

(declare-fun d!136317 () Bool)

(assert (=> d!136317 e!703416))

(declare-fun res!827987 () Bool)

(assert (=> d!136317 (=> (not res!827987) (not e!703416))))

(assert (=> d!136317 (= res!827987 (isStrictlySorted!737 lt!562013))))

(assert (=> d!136317 (= lt!562013 e!703417)))

(assert (=> d!136317 (= c!121289 (and (is-Cons!27499 (t!40973 l!644)) (bvslt (_1!10198 (h!28708 (t!40973 l!644))) key1!25)))))

(assert (=> d!136317 (isStrictlySorted!737 (t!40973 l!644))))

(assert (=> d!136317 (= (insertStrictlySorted!427 (t!40973 l!644) key1!25 v1!20) lt!562013)))

(declare-fun b!1240949 () Bool)

(assert (=> b!1240949 (= e!703413 (ite c!121290 (t!40973 (t!40973 l!644)) (ite c!121291 (Cons!27499 (h!28708 (t!40973 l!644)) (t!40973 (t!40973 l!644))) Nil!27500)))))

(declare-fun b!1240950 () Bool)

(assert (=> b!1240950 (= e!703416 (contains!7403 lt!562013 (tuple2!20377 key1!25 v1!20)))))

(declare-fun b!1240951 () Bool)

(assert (=> b!1240951 (= e!703413 (insertStrictlySorted!427 (t!40973 (t!40973 l!644)) key1!25 v1!20))))

(assert (= (and d!136317 c!121289) b!1240947))

(assert (= (and d!136317 (not c!121289)) b!1240948))

(assert (= (and b!1240948 c!121290) b!1240946))

(assert (= (and b!1240948 (not c!121290)) b!1240943))

(assert (= (and b!1240943 c!121291) b!1240945))

(assert (= (and b!1240943 (not c!121291)) b!1240944))

(assert (= (or b!1240945 b!1240944) bm!61188))

(assert (= (or b!1240946 bm!61188) bm!61186))

(assert (= (or b!1240947 bm!61186) bm!61187))

(assert (= (and bm!61187 c!121292) b!1240951))

(assert (= (and bm!61187 (not c!121292)) b!1240949))

(assert (= (and d!136317 res!827987) b!1240942))

(assert (= (and b!1240942 res!827988) b!1240950))

(declare-fun m!1144165 () Bool)

(assert (=> b!1240942 m!1144165))

(declare-fun m!1144167 () Bool)

(assert (=> b!1240950 m!1144167))

(declare-fun m!1144169 () Bool)

(assert (=> bm!61187 m!1144169))

(declare-fun m!1144171 () Bool)

(assert (=> d!136317 m!1144171))

(assert (=> d!136317 m!1144055))

(declare-fun m!1144173 () Bool)

(assert (=> b!1240951 m!1144173))

(assert (=> b!1240764 d!136317))

(declare-fun b!1240953 () Bool)

(declare-fun e!703420 () List!27503)

(assert (=> b!1240953 (= e!703420 ($colon$colon!617 (removeStrictlySorted!121 (t!40973 (t!40973 l!644)) key2!15) (h!28708 (t!40973 l!644))))))

(declare-fun b!1240954 () Bool)

(declare-fun e!703418 () List!27503)

(assert (=> b!1240954 (= e!703418 e!703420)))

(declare-fun c!121293 () Bool)

(assert (=> b!1240954 (= c!121293 (and (is-Cons!27499 (t!40973 l!644)) (not (= (_1!10198 (h!28708 (t!40973 l!644))) key2!15))))))

(declare-fun b!1240955 () Bool)

(declare-fun e!703419 () Bool)

(declare-fun lt!562014 () List!27503)

(assert (=> b!1240955 (= e!703419 (not (containsKey!602 lt!562014 key2!15)))))

(declare-fun b!1240956 () Bool)

(assert (=> b!1240956 (= e!703418 (t!40973 (t!40973 l!644)))))

(declare-fun d!136319 () Bool)

(assert (=> d!136319 e!703419))

(declare-fun res!827989 () Bool)

(assert (=> d!136319 (=> (not res!827989) (not e!703419))))

(assert (=> d!136319 (= res!827989 (isStrictlySorted!737 lt!562014))))

(assert (=> d!136319 (= lt!562014 e!703418)))

(declare-fun c!121294 () Bool)

(assert (=> d!136319 (= c!121294 (and (is-Cons!27499 (t!40973 l!644)) (= (_1!10198 (h!28708 (t!40973 l!644))) key2!15)))))

(assert (=> d!136319 (isStrictlySorted!737 (t!40973 l!644))))

(assert (=> d!136319 (= (removeStrictlySorted!121 (t!40973 l!644) key2!15) lt!562014)))

(declare-fun b!1240952 () Bool)

(assert (=> b!1240952 (= e!703420 Nil!27500)))

(assert (= (and d!136319 c!121294) b!1240956))

(assert (= (and d!136319 (not c!121294)) b!1240954))

(assert (= (and b!1240954 c!121293) b!1240953))

(assert (= (and b!1240954 (not c!121293)) b!1240952))

(assert (= (and d!136319 res!827989) b!1240955))

(declare-fun m!1144175 () Bool)

(assert (=> b!1240953 m!1144175))

(assert (=> b!1240953 m!1144175))

(declare-fun m!1144177 () Bool)

(assert (=> b!1240953 m!1144177))

(declare-fun m!1144179 () Bool)

(assert (=> b!1240955 m!1144179))

(declare-fun m!1144181 () Bool)

(assert (=> d!136319 m!1144181))

(assert (=> d!136319 m!1144055))

(assert (=> b!1240764 d!136319))

(declare-fun b!1240961 () Bool)

(declare-fun e!703423 () Bool)

(declare-fun tp!92592 () Bool)

(assert (=> b!1240961 (= e!703423 (and tp_is_empty!31223 tp!92592))))

