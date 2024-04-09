; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103608 () Bool)

(assert start!103608)

(declare-fun res!827905 () Bool)

(declare-fun e!703294 () Bool)

(assert (=> start!103608 (=> (not res!827905) (not e!703294))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103608 (= res!827905 (not (= key1!25 key2!15)))))

(assert (=> start!103608 e!703294))

(assert (=> start!103608 true))

(declare-fun e!703295 () Bool)

(assert (=> start!103608 e!703295))

(declare-fun tp_is_empty!31219 () Bool)

(assert (=> start!103608 tp_is_empty!31219))

(declare-fun b!1240733 () Bool)

(declare-datatypes ((B!1820 0))(
  ( (B!1821 (val!15672 Int)) )
))
(declare-datatypes ((tuple2!20372 0))(
  ( (tuple2!20373 (_1!10196 (_ BitVec 64)) (_2!10196 B!1820)) )
))
(declare-datatypes ((List!27501 0))(
  ( (Nil!27498) (Cons!27497 (h!28706 tuple2!20372) (t!40971 List!27501)) )
))
(declare-fun l!644 () List!27501)

(declare-fun isStrictlySorted!735 (List!27501) Bool)

(declare-fun removeStrictlySorted!119 (List!27501 (_ BitVec 64)) List!27501)

(assert (=> b!1240733 (= e!703294 (not (isStrictlySorted!735 (removeStrictlySorted!119 l!644 key2!15))))))

(declare-fun v1!20 () B!1820)

(declare-fun insertStrictlySorted!425 (List!27501 (_ BitVec 64) B!1820) List!27501)

(assert (=> b!1240733 (= (insertStrictlySorted!425 (removeStrictlySorted!119 (t!40971 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!119 (insertStrictlySorted!425 (t!40971 l!644) key1!25 v1!20) key2!15))))

(declare-datatypes ((Unit!41185 0))(
  ( (Unit!41186) )
))
(declare-fun lt!561982 () Unit!41185)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!7 (List!27501 (_ BitVec 64) B!1820 (_ BitVec 64)) Unit!41185)

(assert (=> b!1240733 (= lt!561982 (lemmaInsertAndRemoveStrictlySortedCommutative!7 (t!40971 l!644) key1!25 v1!20 key2!15))))

(declare-fun b!1240734 () Bool)

(declare-fun res!827908 () Bool)

(assert (=> b!1240734 (=> (not res!827908) (not e!703294))))

(assert (=> b!1240734 (= res!827908 (isStrictlySorted!735 (t!40971 l!644)))))

(declare-fun b!1240735 () Bool)

(declare-fun res!827907 () Bool)

(assert (=> b!1240735 (=> (not res!827907) (not e!703294))))

(assert (=> b!1240735 (= res!827907 (isStrictlySorted!735 l!644))))

(declare-fun b!1240736 () Bool)

(declare-fun tp!92583 () Bool)

(assert (=> b!1240736 (= e!703295 (and tp_is_empty!31219 tp!92583))))

(declare-fun b!1240737 () Bool)

(declare-fun res!827906 () Bool)

(assert (=> b!1240737 (=> (not res!827906) (not e!703294))))

(assert (=> b!1240737 (= res!827906 (is-Cons!27497 l!644))))

(assert (= (and start!103608 res!827905) b!1240735))

(assert (= (and b!1240735 res!827907) b!1240737))

(assert (= (and b!1240737 res!827906) b!1240734))

(assert (= (and b!1240734 res!827908) b!1240733))

(assert (= (and start!103608 (is-Cons!27497 l!644)) b!1240736))

(declare-fun m!1144019 () Bool)

(assert (=> b!1240733 m!1144019))

(declare-fun m!1144021 () Bool)

(assert (=> b!1240733 m!1144021))

(declare-fun m!1144023 () Bool)

(assert (=> b!1240733 m!1144023))

(assert (=> b!1240733 m!1144021))

(declare-fun m!1144025 () Bool)

(assert (=> b!1240733 m!1144025))

(declare-fun m!1144027 () Bool)

(assert (=> b!1240733 m!1144027))

(assert (=> b!1240733 m!1144025))

(declare-fun m!1144029 () Bool)

(assert (=> b!1240733 m!1144029))

(assert (=> b!1240733 m!1144019))

(declare-fun m!1144031 () Bool)

(assert (=> b!1240733 m!1144031))

(declare-fun m!1144033 () Bool)

(assert (=> b!1240734 m!1144033))

(declare-fun m!1144035 () Bool)

(assert (=> b!1240735 m!1144035))

(push 1)

(assert (not b!1240735))

(assert (not b!1240734))

(assert (not b!1240733))

(assert tp_is_empty!31219)

(assert (not b!1240736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136289 () Bool)

(declare-fun res!827951 () Bool)

(declare-fun e!703326 () Bool)

(assert (=> d!136289 (=> res!827951 e!703326)))

(assert (=> d!136289 (= res!827951 (or (is-Nil!27498 l!644) (is-Nil!27498 (t!40971 l!644))))))

(assert (=> d!136289 (= (isStrictlySorted!735 l!644) e!703326)))

(declare-fun b!1240786 () Bool)

(declare-fun e!703327 () Bool)

(assert (=> b!1240786 (= e!703326 e!703327)))

(declare-fun res!827952 () Bool)

(assert (=> b!1240786 (=> (not res!827952) (not e!703327))))

(assert (=> b!1240786 (= res!827952 (bvslt (_1!10196 (h!28706 l!644)) (_1!10196 (h!28706 (t!40971 l!644)))))))

(declare-fun b!1240787 () Bool)

(assert (=> b!1240787 (= e!703327 (isStrictlySorted!735 (t!40971 l!644)))))

(assert (= (and d!136289 (not res!827951)) b!1240786))

(assert (= (and b!1240786 res!827952) b!1240787))

(assert (=> b!1240787 m!1144033))

(assert (=> b!1240735 d!136289))

(declare-fun d!136293 () Bool)

(declare-fun res!827953 () Bool)

(declare-fun e!703328 () Bool)

(assert (=> d!136293 (=> res!827953 e!703328)))

(assert (=> d!136293 (= res!827953 (or (is-Nil!27498 (t!40971 l!644)) (is-Nil!27498 (t!40971 (t!40971 l!644)))))))

(assert (=> d!136293 (= (isStrictlySorted!735 (t!40971 l!644)) e!703328)))

(declare-fun b!1240791 () Bool)

(declare-fun e!703329 () Bool)

(assert (=> b!1240791 (= e!703328 e!703329)))

(declare-fun res!827954 () Bool)

(assert (=> b!1240791 (=> (not res!827954) (not e!703329))))

(assert (=> b!1240791 (= res!827954 (bvslt (_1!10196 (h!28706 (t!40971 l!644))) (_1!10196 (h!28706 (t!40971 (t!40971 l!644))))))))

(declare-fun b!1240792 () Bool)

(assert (=> b!1240792 (= e!703329 (isStrictlySorted!735 (t!40971 (t!40971 l!644))))))

(assert (= (and d!136293 (not res!827953)) b!1240791))

(assert (= (and b!1240791 res!827954) b!1240792))

(declare-fun m!1144075 () Bool)

(assert (=> b!1240792 m!1144075))

(assert (=> b!1240734 d!136293))

(declare-fun b!1240830 () Bool)

(declare-fun e!703354 () List!27501)

(assert (=> b!1240830 (= e!703354 Nil!27498)))

(declare-fun b!1240831 () Bool)

(declare-fun e!703355 () Bool)

(declare-fun lt!561997 () List!27501)

(declare-fun containsKey!603 (List!27501 (_ BitVec 64)) Bool)

(assert (=> b!1240831 (= e!703355 (not (containsKey!603 lt!561997 key2!15)))))

(declare-fun d!136295 () Bool)

(assert (=> d!136295 e!703355))

(declare-fun res!827963 () Bool)

(assert (=> d!136295 (=> (not res!827963) (not e!703355))))

(assert (=> d!136295 (= res!827963 (isStrictlySorted!735 lt!561997))))

(declare-fun e!703356 () List!27501)

(assert (=> d!136295 (= lt!561997 e!703356)))

(declare-fun c!121245 () Bool)

(assert (=> d!136295 (= c!121245 (and (is-Cons!27497 (insertStrictlySorted!425 (t!40971 l!644) key1!25 v1!20)) (= (_1!10196 (h!28706 (insertStrictlySorted!425 (t!40971 l!644) key1!25 v1!20))) key2!15)))))

(assert (=> d!136295 (isStrictlySorted!735 (insertStrictlySorted!425 (t!40971 l!644) key1!25 v1!20))))

(assert (=> d!136295 (= (removeStrictlySorted!119 (insertStrictlySorted!425 (t!40971 l!644) key1!25 v1!20) key2!15) lt!561997)))

(declare-fun b!1240832 () Bool)

(assert (=> b!1240832 (= e!703356 (t!40971 (insertStrictlySorted!425 (t!40971 l!644) key1!25 v1!20)))))

(declare-fun b!1240833 () Bool)

(declare-fun $colon$colon!619 (List!27501 tuple2!20372) List!27501)

(assert (=> b!1240833 (= e!703354 ($colon$colon!619 (removeStrictlySorted!119 (t!40971 (insertStrictlySorted!425 (t!40971 l!644) key1!25 v1!20)) key2!15) (h!28706 (insertStrictlySorted!425 (t!40971 l!644) key1!25 v1!20))))))

(declare-fun b!1240834 () Bool)

(assert (=> b!1240834 (= e!703356 e!703354)))

(declare-fun c!121246 () Bool)

(assert (=> b!1240834 (= c!121246 (and (is-Cons!27497 (insertStrictlySorted!425 (t!40971 l!644) key1!25 v1!20)) (not (= (_1!10196 (h!28706 (insertStrictlySorted!425 (t!40971 l!644) key1!25 v1!20))) key2!15))))))

(assert (= (and d!136295 c!121245) b!1240832))

(assert (= (and d!136295 (not c!121245)) b!1240834))

(assert (= (and b!1240834 c!121246) b!1240833))

(assert (= (and b!1240834 (not c!121246)) b!1240830))

(assert (= (and d!136295 res!827963) b!1240831))

(declare-fun m!1144097 () Bool)

(assert (=> b!1240831 m!1144097))

(declare-fun m!1144099 () Bool)

(assert (=> d!136295 m!1144099))

(assert (=> d!136295 m!1144021))

(declare-fun m!1144101 () Bool)

(assert (=> d!136295 m!1144101))

(declare-fun m!1144103 () Bool)

(assert (=> b!1240833 m!1144103))

(assert (=> b!1240833 m!1144103))

(declare-fun m!1144105 () Bool)

(assert (=> b!1240833 m!1144105))

(assert (=> b!1240733 d!136295))

(declare-fun b!1240925 () Bool)

(declare-fun e!703406 () List!27501)

(assert (=> b!1240925 (= e!703406 (insertStrictlySorted!425 (t!40971 (removeStrictlySorted!119 (t!40971 l!644) key2!15)) key1!25 v1!20))))

(declare-fun b!1240926 () Bool)

(declare-fun res!827983 () Bool)

(declare-fun e!703407 () Bool)

(assert (=> b!1240926 (=> (not res!827983) (not e!703407))))

(declare-fun lt!562008 () List!27501)

(assert (=> b!1240926 (= res!827983 (containsKey!603 lt!562008 key1!25))))

(declare-fun b!1240927 () Bool)

(declare-fun e!703403 () List!27501)

(declare-fun call!61188 () List!27501)

(assert (=> b!1240927 (= e!703403 call!61188)))

(declare-fun c!121283 () Bool)

(declare-fun bm!61183 () Bool)

(declare-fun call!61186 () List!27501)

(assert (=> bm!61183 (= call!61186 ($colon$colon!619 e!703406 (ite c!121283 (h!28706 (removeStrictlySorted!119 (t!40971 l!644) key2!15)) (tuple2!20373 key1!25 v1!20))))))

(declare-fun c!121286 () Bool)

(assert (=> bm!61183 (= c!121286 c!121283)))

(declare-fun b!1240928 () Bool)

(declare-fun e!703404 () List!27501)

(declare-fun e!703405 () List!27501)

(assert (=> b!1240928 (= e!703404 e!703405)))

(declare-fun c!121285 () Bool)

(assert (=> b!1240928 (= c!121285 (and (is-Cons!27497 (removeStrictlySorted!119 (t!40971 l!644) key2!15)) (= (_1!10196 (h!28706 (removeStrictlySorted!119 (t!40971 l!644) key2!15))) key1!25)))))

(declare-fun b!1240929 () Bool)

(declare-fun call!61187 () List!27501)

(assert (=> b!1240929 (= e!703405 call!61187)))

(declare-fun b!1240930 () Bool)

(declare-fun contains!7402 (List!27501 tuple2!20372) Bool)

(assert (=> b!1240930 (= e!703407 (contains!7402 lt!562008 (tuple2!20373 key1!25 v1!20)))))

(declare-fun bm!61184 () Bool)

(assert (=> bm!61184 (= call!61188 call!61187)))

(declare-fun b!1240931 () Bool)

(assert (=> b!1240931 (= e!703403 call!61188)))

(declare-fun b!1240932 () Bool)

(assert (=> b!1240932 (= e!703404 call!61186)))

(declare-fun c!121284 () Bool)

(declare-fun b!1240933 () Bool)

(assert (=> b!1240933 (= c!121284 (and (is-Cons!27497 (removeStrictlySorted!119 (t!40971 l!644) key2!15)) (bvsgt (_1!10196 (h!28706 (removeStrictlySorted!119 (t!40971 l!644) key2!15))) key1!25)))))

(assert (=> b!1240933 (= e!703405 e!703403)))

(declare-fun d!136301 () Bool)

(assert (=> d!136301 e!703407))

(declare-fun res!827982 () Bool)

(assert (=> d!136301 (=> (not res!827982) (not e!703407))))

(assert (=> d!136301 (= res!827982 (isStrictlySorted!735 lt!562008))))

(assert (=> d!136301 (= lt!562008 e!703404)))

(assert (=> d!136301 (= c!121283 (and (is-Cons!27497 (removeStrictlySorted!119 (t!40971 l!644) key2!15)) (bvslt (_1!10196 (h!28706 (removeStrictlySorted!119 (t!40971 l!644) key2!15))) key1!25)))))

(assert (=> d!136301 (isStrictlySorted!735 (removeStrictlySorted!119 (t!40971 l!644) key2!15))))

(assert (=> d!136301 (= (insertStrictlySorted!425 (removeStrictlySorted!119 (t!40971 l!644) key2!15) key1!25 v1!20) lt!562008)))

(declare-fun b!1240934 () Bool)

(assert (=> b!1240934 (= e!703406 (ite c!121285 (t!40971 (removeStrictlySorted!119 (t!40971 l!644) key2!15)) (ite c!121284 (Cons!27497 (h!28706 (removeStrictlySorted!119 (t!40971 l!644) key2!15)) (t!40971 (removeStrictlySorted!119 (t!40971 l!644) key2!15))) Nil!27498)))))

(declare-fun bm!61185 () Bool)

(assert (=> bm!61185 (= call!61187 call!61186)))

(assert (= (and d!136301 c!121283) b!1240932))

(assert (= (and d!136301 (not c!121283)) b!1240928))

(assert (= (and b!1240928 c!121285) b!1240929))

(assert (= (and b!1240928 (not c!121285)) b!1240933))

(assert (= (and b!1240933 c!121284) b!1240927))

(assert (= (and b!1240933 (not c!121284)) b!1240931))

(assert (= (or b!1240927 b!1240931) bm!61184))

(assert (= (or b!1240929 bm!61184) bm!61185))

(assert (= (or b!1240932 bm!61185) bm!61183))

(assert (= (and bm!61183 c!121286) b!1240925))

(assert (= (and bm!61183 (not c!121286)) b!1240934))

(assert (= (and d!136301 res!827982) b!1240926))

(assert (= (and b!1240926 res!827983) b!1240930))

(declare-fun m!1144143 () Bool)

(assert (=> d!136301 m!1144143))

(assert (=> d!136301 m!1144025))

(declare-fun m!1144145 () Bool)

(assert (=> d!136301 m!1144145))

(declare-fun m!1144147 () Bool)

(assert (=> b!1240925 m!1144147))

(declare-fun m!1144149 () Bool)

(assert (=> b!1240930 m!1144149))

(declare-fun m!1144151 () Bool)

(assert (=> b!1240926 m!1144151))

(declare-fun m!1144153 () Bool)

(assert (=> bm!61183 m!1144153))

(assert (=> b!1240733 d!136301))

(declare-fun b!1240935 () Bool)

(declare-fun e!703408 () List!27501)

(assert (=> b!1240935 (= e!703408 Nil!27498)))

(declare-fun b!1240936 () Bool)

(declare-fun e!703409 () Bool)

(declare-fun lt!562012 () List!27501)

(assert (=> b!1240936 (= e!703409 (not (containsKey!603 lt!562012 key2!15)))))

(declare-fun d!136311 () Bool)

(assert (=> d!136311 e!703409))

(declare-fun res!827984 () Bool)

(assert (=> d!136311 (=> (not res!827984) (not e!703409))))

(assert (=> d!136311 (= res!827984 (isStrictlySorted!735 lt!562012))))

(declare-fun e!703410 () List!27501)

(assert (=> d!136311 (= lt!562012 e!703410)))

(declare-fun c!121287 () Bool)

(assert (=> d!136311 (= c!121287 (and (is-Cons!27497 l!644) (= (_1!10196 (h!28706 l!644)) key2!15)))))

(assert (=> d!136311 (isStrictlySorted!735 l!644)))

(assert (=> d!136311 (= (removeStrictlySorted!119 l!644 key2!15) lt!562012)))

(declare-fun b!1240937 () Bool)

(assert (=> b!1240937 (= e!703410 (t!40971 l!644))))

(declare-fun b!1240938 () Bool)

(assert (=> b!1240938 (= e!703408 ($colon$colon!619 (removeStrictlySorted!119 (t!40971 l!644) key2!15) (h!28706 l!644)))))

(declare-fun b!1240939 () Bool)

(assert (=> b!1240939 (= e!703410 e!703408)))

(declare-fun c!121288 () Bool)

(assert (=> b!1240939 (= c!121288 (and (is-Cons!27497 l!644) (not (= (_1!10196 (h!28706 l!644)) key2!15))))))

(assert (= (and d!136311 c!121287) b!1240937))

(assert (= (and d!136311 (not c!121287)) b!1240939))

(assert (= (and b!1240939 c!121288) b!1240938))

(assert (= (and b!1240939 (not c!121288)) b!1240935))

(assert (= (and d!136311 res!827984) b!1240936))

(declare-fun m!1144157 () Bool)

(assert (=> b!1240936 m!1144157))

(declare-fun m!1144159 () Bool)

(assert (=> d!136311 m!1144159))

(assert (=> d!136311 m!1144035))

(assert (=> b!1240938 m!1144025))

(assert (=> b!1240938 m!1144025))

(declare-fun m!1144161 () Bool)

(assert (=> b!1240938 m!1144161))

(assert (=> b!1240733 d!136311))

(declare-fun d!136315 () Bool)

(assert (=> d!136315 (= (insertStrictlySorted!425 (removeStrictlySorted!119 (t!40971 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!119 (insertStrictlySorted!425 (t!40971 l!644) key1!25 v1!20) key2!15))))

(declare-fun lt!562021 () Unit!41185)

(declare-fun choose!1844 (List!27501 (_ BitVec 64) B!1820 (_ BitVec 64)) Unit!41185)

(assert (=> d!136315 (= lt!562021 (choose!1844 (t!40971 l!644) key1!25 v1!20 key2!15))))

(assert (=> d!136315 (not (= key1!25 key2!15))))

(assert (=> d!136315 (= (lemmaInsertAndRemoveStrictlySortedCommutative!7 (t!40971 l!644) key1!25 v1!20 key2!15) lt!562021)))

(declare-fun bs!34932 () Bool)

(assert (= bs!34932 d!136315))

(assert (=> bs!34932 m!1144021))

(assert (=> bs!34932 m!1144023))

(assert (=> bs!34932 m!1144025))

(assert (=> bs!34932 m!1144029))

(assert (=> bs!34932 m!1144021))

(declare-fun m!1144195 () Bool)

(assert (=> bs!34932 m!1144195))

(assert (=> bs!34932 m!1144025))

(assert (=> b!1240733 d!136315))

(declare-fun d!136327 () Bool)

(declare-fun res!827995 () Bool)

(declare-fun e!703434 () Bool)

(assert (=> d!136327 (=> res!827995 e!703434)))

(assert (=> d!136327 (= res!827995 (or (is-Nil!27498 (removeStrictlySorted!119 l!644 key2!15)) (is-Nil!27498 (t!40971 (removeStrictlySorted!119 l!644 key2!15)))))))

(assert (=> d!136327 (= (isStrictlySorted!735 (removeStrictlySorted!119 l!644 key2!15)) e!703434)))

(declare-fun b!1240979 () Bool)

(declare-fun e!703435 () Bool)

(assert (=> b!1240979 (= e!703434 e!703435)))

(declare-fun res!827996 () Bool)

(assert (=> b!1240979 (=> (not res!827996) (not e!703435))))

(assert (=> b!1240979 (= res!827996 (bvslt (_1!10196 (h!28706 (removeStrictlySorted!119 l!644 key2!15))) (_1!10196 (h!28706 (t!40971 (removeStrictlySorted!119 l!644 key2!15))))))))

(declare-fun b!1240980 () Bool)

(assert (=> b!1240980 (= e!703435 (isStrictlySorted!735 (t!40971 (removeStrictlySorted!119 l!644 key2!15))))))

(assert (= (and d!136327 (not res!827995)) b!1240979))

(assert (= (and b!1240979 res!827996) b!1240980))

(declare-fun m!1144199 () Bool)

(assert (=> b!1240980 m!1144199))

(assert (=> b!1240733 d!136327))

(declare-fun b!1240981 () Bool)

(declare-fun e!703439 () List!27501)

(assert (=> b!1240981 (= e!703439 (insertStrictlySorted!425 (t!40971 (t!40971 l!644)) key1!25 v1!20))))

(declare-fun b!1240982 () Bool)

(declare-fun res!827998 () Bool)

(declare-fun e!703440 () Bool)

(assert (=> b!1240982 (=> (not res!827998) (not e!703440))))

(declare-fun lt!562023 () List!27501)

(assert (=> b!1240982 (= res!827998 (containsKey!603 lt!562023 key1!25))))

(declare-fun b!1240983 () Bool)

(declare-fun e!703436 () List!27501)

(declare-fun call!61197 () List!27501)

(assert (=> b!1240983 (= e!703436 call!61197)))

(declare-fun c!121301 () Bool)

(declare-fun call!61195 () List!27501)

(declare-fun bm!61192 () Bool)

(assert (=> bm!61192 (= call!61195 ($colon$colon!619 e!703439 (ite c!121301 (h!28706 (t!40971 l!644)) (tuple2!20373 key1!25 v1!20))))))

(declare-fun c!121304 () Bool)

(assert (=> bm!61192 (= c!121304 c!121301)))

(declare-fun b!1240984 () Bool)

(declare-fun e!703437 () List!27501)

(declare-fun e!703438 () List!27501)

(assert (=> b!1240984 (= e!703437 e!703438)))

(declare-fun c!121303 () Bool)

(assert (=> b!1240984 (= c!121303 (and (is-Cons!27497 (t!40971 l!644)) (= (_1!10196 (h!28706 (t!40971 l!644))) key1!25)))))

(declare-fun b!1240985 () Bool)

(declare-fun call!61196 () List!27501)

(assert (=> b!1240985 (= e!703438 call!61196)))

(declare-fun b!1240986 () Bool)

(assert (=> b!1240986 (= e!703440 (contains!7402 lt!562023 (tuple2!20373 key1!25 v1!20)))))

(declare-fun bm!61193 () Bool)

(assert (=> bm!61193 (= call!61197 call!61196)))

(declare-fun b!1240987 () Bool)

(assert (=> b!1240987 (= e!703436 call!61197)))

(declare-fun b!1240988 () Bool)

(assert (=> b!1240988 (= e!703437 call!61195)))

(declare-fun b!1240989 () Bool)

(declare-fun c!121302 () Bool)

(assert (=> b!1240989 (= c!121302 (and (is-Cons!27497 (t!40971 l!644)) (bvsgt (_1!10196 (h!28706 (t!40971 l!644))) key1!25)))))

(assert (=> b!1240989 (= e!703438 e!703436)))

(declare-fun d!136329 () Bool)

(assert (=> d!136329 e!703440))

(declare-fun res!827997 () Bool)

(assert (=> d!136329 (=> (not res!827997) (not e!703440))))

(assert (=> d!136329 (= res!827997 (isStrictlySorted!735 lt!562023))))

(assert (=> d!136329 (= lt!562023 e!703437)))

(assert (=> d!136329 (= c!121301 (and (is-Cons!27497 (t!40971 l!644)) (bvslt (_1!10196 (h!28706 (t!40971 l!644))) key1!25)))))

(assert (=> d!136329 (isStrictlySorted!735 (t!40971 l!644))))

(assert (=> d!136329 (= (insertStrictlySorted!425 (t!40971 l!644) key1!25 v1!20) lt!562023)))

(declare-fun b!1240990 () Bool)

(assert (=> b!1240990 (= e!703439 (ite c!121303 (t!40971 (t!40971 l!644)) (ite c!121302 (Cons!27497 (h!28706 (t!40971 l!644)) (t!40971 (t!40971 l!644))) Nil!27498)))))

(declare-fun bm!61194 () Bool)

(assert (=> bm!61194 (= call!61196 call!61195)))

(assert (= (and d!136329 c!121301) b!1240988))

(assert (= (and d!136329 (not c!121301)) b!1240984))

(assert (= (and b!1240984 c!121303) b!1240985))

(assert (= (and b!1240984 (not c!121303)) b!1240989))

(assert (= (and b!1240989 c!121302) b!1240983))

(assert (= (and b!1240989 (not c!121302)) b!1240987))

(assert (= (or b!1240983 b!1240987) bm!61193))

(assert (= (or b!1240985 bm!61193) bm!61194))

(assert (= (or b!1240988 bm!61194) bm!61192))

(assert (= (and bm!61192 c!121304) b!1240981))

(assert (= (and bm!61192 (not c!121304)) b!1240990))

(assert (= (and d!136329 res!827997) b!1240982))

(assert (= (and b!1240982 res!827998) b!1240986))

(declare-fun m!1144211 () Bool)

(assert (=> d!136329 m!1144211))

(assert (=> d!136329 m!1144033))

(declare-fun m!1144213 () Bool)

(assert (=> b!1240981 m!1144213))

(declare-fun m!1144215 () Bool)

(assert (=> b!1240986 m!1144215))

(declare-fun m!1144217 () Bool)

(assert (=> b!1240982 m!1144217))

(declare-fun m!1144219 () Bool)

(assert (=> bm!61192 m!1144219))

(assert (=> b!1240733 d!136329))

(declare-fun b!1240998 () Bool)

(declare-fun e!703446 () List!27501)

(assert (=> b!1240998 (= e!703446 Nil!27498)))

(declare-fun b!1240999 () Bool)

(declare-fun e!703447 () Bool)

(declare-fun lt!562024 () List!27501)

(assert (=> b!1240999 (= e!703447 (not (containsKey!603 lt!562024 key2!15)))))

(declare-fun d!136333 () Bool)

(assert (=> d!136333 e!703447))

(declare-fun res!828001 () Bool)

(assert (=> d!136333 (=> (not res!828001) (not e!703447))))

(assert (=> d!136333 (= res!828001 (isStrictlySorted!735 lt!562024))))

(declare-fun e!703448 () List!27501)

(assert (=> d!136333 (= lt!562024 e!703448)))

(declare-fun c!121305 () Bool)

(assert (=> d!136333 (= c!121305 (and (is-Cons!27497 (t!40971 l!644)) (= (_1!10196 (h!28706 (t!40971 l!644))) key2!15)))))

(assert (=> d!136333 (isStrictlySorted!735 (t!40971 l!644))))

(assert (=> d!136333 (= (removeStrictlySorted!119 (t!40971 l!644) key2!15) lt!562024)))

(declare-fun b!1241000 () Bool)

(assert (=> b!1241000 (= e!703448 (t!40971 (t!40971 l!644)))))

(declare-fun b!1241001 () Bool)

(assert (=> b!1241001 (= e!703446 ($colon$colon!619 (removeStrictlySorted!119 (t!40971 (t!40971 l!644)) key2!15) (h!28706 (t!40971 l!644))))))

(declare-fun b!1241002 () Bool)

(assert (=> b!1241002 (= e!703448 e!703446)))

(declare-fun c!121306 () Bool)

(assert (=> b!1241002 (= c!121306 (and (is-Cons!27497 (t!40971 l!644)) (not (= (_1!10196 (h!28706 (t!40971 l!644))) key2!15))))))

(assert (= (and d!136333 c!121305) b!1241000))

(assert (= (and d!136333 (not c!121305)) b!1241002))

(assert (= (and b!1241002 c!121306) b!1241001))

(assert (= (and b!1241002 (not c!121306)) b!1240998))

(assert (= (and d!136333 res!828001) b!1240999))

(declare-fun m!1144221 () Bool)

(assert (=> b!1240999 m!1144221))

(declare-fun m!1144223 () Bool)

(assert (=> d!136333 m!1144223))

(assert (=> d!136333 m!1144033))

(declare-fun m!1144225 () Bool)

(assert (=> b!1241001 m!1144225))

(assert (=> b!1241001 m!1144225))

(declare-fun m!1144227 () Bool)

(assert (=> b!1241001 m!1144227))

(assert (=> b!1240733 d!136333))

(declare-fun b!1241007 () Bool)

(declare-fun e!703451 () Bool)

(declare-fun tp!92598 () Bool)

(assert (=> b!1241007 (= e!703451 (and tp_is_empty!31219 tp!92598))))

(assert (=> b!1240736 (= tp!92583 e!703451)))

(assert (= (and b!1240736 (is-Cons!27497 (t!40971 l!644))) b!1241007))

(push 1)

