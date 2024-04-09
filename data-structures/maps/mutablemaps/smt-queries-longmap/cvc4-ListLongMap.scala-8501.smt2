; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103648 () Bool)

(assert start!103648)

(declare-datatypes ((B!1836 0))(
  ( (B!1837 (val!15680 Int)) )
))
(declare-datatypes ((tuple2!20388 0))(
  ( (tuple2!20389 (_1!10204 (_ BitVec 64)) (_2!10204 B!1836)) )
))
(declare-datatypes ((List!27509 0))(
  ( (Nil!27506) (Cons!27505 (h!28714 tuple2!20388) (t!40979 List!27509)) )
))
(declare-fun l!644 () List!27509)

(declare-fun b!1241093 () Bool)

(declare-fun v1!20 () B!1836)

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun e!703487 () Bool)

(declare-fun isStrictlySorted!743 (List!27509) Bool)

(declare-fun insertStrictlySorted!433 (List!27509 (_ BitVec 64) B!1836) List!27509)

(assert (=> b!1241093 (= e!703487 (not (isStrictlySorted!743 (insertStrictlySorted!433 l!644 key1!25 v1!20))))))

(declare-fun key2!15 () (_ BitVec 64))

(declare-fun removeStrictlySorted!127 (List!27509 (_ BitVec 64)) List!27509)

(assert (=> b!1241093 (= (insertStrictlySorted!433 (removeStrictlySorted!127 (t!40979 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!127 (insertStrictlySorted!433 (t!40979 l!644) key1!25 v1!20) key2!15))))

(declare-datatypes ((Unit!41201 0))(
  ( (Unit!41202) )
))
(declare-fun lt!562042 () Unit!41201)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!15 (List!27509 (_ BitVec 64) B!1836 (_ BitVec 64)) Unit!41201)

(assert (=> b!1241093 (= lt!562042 (lemmaInsertAndRemoveStrictlySortedCommutative!15 (t!40979 l!644) key1!25 v1!20 key2!15))))

(declare-fun b!1241094 () Bool)

(declare-fun res!828070 () Bool)

(assert (=> b!1241094 (=> (not res!828070) (not e!703487))))

(assert (=> b!1241094 (= res!828070 (isStrictlySorted!743 l!644))))

(declare-fun b!1241095 () Bool)

(declare-fun res!828072 () Bool)

(assert (=> b!1241095 (=> (not res!828072) (not e!703487))))

(assert (=> b!1241095 (= res!828072 (is-Cons!27505 l!644))))

(declare-fun res!828071 () Bool)

(assert (=> start!103648 (=> (not res!828071) (not e!703487))))

(assert (=> start!103648 (= res!828071 (not (= key1!25 key2!15)))))

(assert (=> start!103648 e!703487))

(assert (=> start!103648 true))

(declare-fun e!703486 () Bool)

(assert (=> start!103648 e!703486))

(declare-fun tp_is_empty!31235 () Bool)

(assert (=> start!103648 tp_is_empty!31235))

(declare-fun b!1241096 () Bool)

(declare-fun res!828073 () Bool)

(assert (=> b!1241096 (=> (not res!828073) (not e!703487))))

(assert (=> b!1241096 (= res!828073 (isStrictlySorted!743 (t!40979 l!644)))))

(declare-fun b!1241097 () Bool)

(declare-fun tp!92616 () Bool)

(assert (=> b!1241097 (= e!703486 (and tp_is_empty!31235 tp!92616))))

(assert (= (and start!103648 res!828071) b!1241094))

(assert (= (and b!1241094 res!828070) b!1241095))

(assert (= (and b!1241095 res!828072) b!1241096))

(assert (= (and b!1241096 res!828073) b!1241093))

(assert (= (and start!103648 (is-Cons!27505 l!644)) b!1241097))

(declare-fun m!1144307 () Bool)

(assert (=> b!1241093 m!1144307))

(declare-fun m!1144309 () Bool)

(assert (=> b!1241093 m!1144309))

(assert (=> b!1241093 m!1144307))

(declare-fun m!1144311 () Bool)

(assert (=> b!1241093 m!1144311))

(declare-fun m!1144313 () Bool)

(assert (=> b!1241093 m!1144313))

(assert (=> b!1241093 m!1144311))

(declare-fun m!1144315 () Bool)

(assert (=> b!1241093 m!1144315))

(declare-fun m!1144317 () Bool)

(assert (=> b!1241093 m!1144317))

(assert (=> b!1241093 m!1144315))

(declare-fun m!1144319 () Bool)

(assert (=> b!1241093 m!1144319))

(declare-fun m!1144321 () Bool)

(assert (=> b!1241094 m!1144321))

(declare-fun m!1144323 () Bool)

(assert (=> b!1241096 m!1144323))

(push 1)

(assert (not b!1241097))

(assert (not b!1241096))

(assert tp_is_empty!31235)

(assert (not b!1241094))

(assert (not b!1241093))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136339 () Bool)

(declare-fun e!703512 () Bool)

(assert (=> d!136339 e!703512))

(declare-fun res!828092 () Bool)

(assert (=> d!136339 (=> (not res!828092) (not e!703512))))

(declare-fun lt!562045 () List!27509)

(assert (=> d!136339 (= res!828092 (isStrictlySorted!743 lt!562045))))

(declare-fun e!703511 () List!27509)

(assert (=> d!136339 (= lt!562045 e!703511)))

(declare-fun c!121311 () Bool)

(assert (=> d!136339 (= c!121311 (and (is-Cons!27505 (insertStrictlySorted!433 (t!40979 l!644) key1!25 v1!20)) (= (_1!10204 (h!28714 (insertStrictlySorted!433 (t!40979 l!644) key1!25 v1!20))) key2!15)))))

(assert (=> d!136339 (isStrictlySorted!743 (insertStrictlySorted!433 (t!40979 l!644) key1!25 v1!20))))

(assert (=> d!136339 (= (removeStrictlySorted!127 (insertStrictlySorted!433 (t!40979 l!644) key1!25 v1!20) key2!15) lt!562045)))

(declare-fun b!1241124 () Bool)

(declare-fun e!703510 () List!27509)

(assert (=> b!1241124 (= e!703511 e!703510)))

(declare-fun c!121312 () Bool)

(assert (=> b!1241124 (= c!121312 (and (is-Cons!27505 (insertStrictlySorted!433 (t!40979 l!644) key1!25 v1!20)) (not (= (_1!10204 (h!28714 (insertStrictlySorted!433 (t!40979 l!644) key1!25 v1!20))) key2!15))))))

(declare-fun b!1241125 () Bool)

(declare-fun containsKey!604 (List!27509 (_ BitVec 64)) Bool)

(assert (=> b!1241125 (= e!703512 (not (containsKey!604 lt!562045 key2!15)))))

(declare-fun b!1241126 () Bool)

(declare-fun $colon$colon!620 (List!27509 tuple2!20388) List!27509)

(assert (=> b!1241126 (= e!703510 ($colon$colon!620 (removeStrictlySorted!127 (t!40979 (insertStrictlySorted!433 (t!40979 l!644) key1!25 v1!20)) key2!15) (h!28714 (insertStrictlySorted!433 (t!40979 l!644) key1!25 v1!20))))))

(declare-fun b!1241127 () Bool)

(assert (=> b!1241127 (= e!703511 (t!40979 (insertStrictlySorted!433 (t!40979 l!644) key1!25 v1!20)))))

(declare-fun b!1241128 () Bool)

(assert (=> b!1241128 (= e!703510 Nil!27506)))

(assert (= (and d!136339 c!121311) b!1241127))

(assert (= (and d!136339 (not c!121311)) b!1241124))

(assert (= (and b!1241124 c!121312) b!1241126))

(assert (= (and b!1241124 (not c!121312)) b!1241128))

(assert (= (and d!136339 res!828092) b!1241125))

(declare-fun m!1144329 () Bool)

(assert (=> d!136339 m!1144329))

(assert (=> d!136339 m!1144311))

(declare-fun m!1144331 () Bool)

(assert (=> d!136339 m!1144331))

(declare-fun m!1144333 () Bool)

(assert (=> b!1241125 m!1144333))

(declare-fun m!1144335 () Bool)

(assert (=> b!1241126 m!1144335))

(assert (=> b!1241126 m!1144335))

(declare-fun m!1144337 () Bool)

(assert (=> b!1241126 m!1144337))

(assert (=> b!1241093 d!136339))

(declare-fun bm!61209 () Bool)

(declare-fun call!61214 () List!27509)

(declare-fun call!61215 () List!27509)

(assert (=> bm!61209 (= call!61214 call!61215)))

(declare-fun bm!61210 () Bool)

(declare-fun call!61216 () List!27509)

(assert (=> bm!61210 (= call!61215 call!61216)))

(declare-fun e!703557 () List!27509)

(declare-fun bm!61211 () Bool)

(declare-fun c!121348 () Bool)

(assert (=> bm!61211 (= call!61216 ($colon$colon!620 e!703557 (ite c!121348 (h!28714 (removeStrictlySorted!127 (t!40979 l!644) key2!15)) (tuple2!20389 key1!25 v1!20))))))

(declare-fun c!121345 () Bool)

(assert (=> bm!61211 (= c!121345 c!121348)))

(declare-fun b!1241204 () Bool)

(assert (=> b!1241204 (= e!703557 (insertStrictlySorted!433 (t!40979 (removeStrictlySorted!127 (t!40979 l!644) key2!15)) key1!25 v1!20))))

(declare-fun c!121346 () Bool)

(declare-fun b!1241205 () Bool)

(assert (=> b!1241205 (= c!121346 (and (is-Cons!27505 (removeStrictlySorted!127 (t!40979 l!644) key2!15)) (bvsgt (_1!10204 (h!28714 (removeStrictlySorted!127 (t!40979 l!644) key2!15))) key1!25)))))

(declare-fun e!703554 () List!27509)

(declare-fun e!703556 () List!27509)

(assert (=> b!1241205 (= e!703554 e!703556)))

(declare-fun b!1241206 () Bool)

(assert (=> b!1241206 (= e!703556 call!61214)))

(declare-fun c!121347 () Bool)

(declare-fun b!1241207 () Bool)

(assert (=> b!1241207 (= e!703557 (ite c!121347 (t!40979 (removeStrictlySorted!127 (t!40979 l!644) key2!15)) (ite c!121346 (Cons!27505 (h!28714 (removeStrictlySorted!127 (t!40979 l!644) key2!15)) (t!40979 (removeStrictlySorted!127 (t!40979 l!644) key2!15))) Nil!27506)))))

(declare-fun e!703553 () Bool)

(declare-fun lt!562058 () List!27509)

(declare-fun b!1241208 () Bool)

(declare-fun contains!7405 (List!27509 tuple2!20388) Bool)

(assert (=> b!1241208 (= e!703553 (contains!7405 lt!562058 (tuple2!20389 key1!25 v1!20)))))

(declare-fun d!136353 () Bool)

(assert (=> d!136353 e!703553))

(declare-fun res!828103 () Bool)

(assert (=> d!136353 (=> (not res!828103) (not e!703553))))

(assert (=> d!136353 (= res!828103 (isStrictlySorted!743 lt!562058))))

(declare-fun e!703555 () List!27509)

(assert (=> d!136353 (= lt!562058 e!703555)))

(assert (=> d!136353 (= c!121348 (and (is-Cons!27505 (removeStrictlySorted!127 (t!40979 l!644) key2!15)) (bvslt (_1!10204 (h!28714 (removeStrictlySorted!127 (t!40979 l!644) key2!15))) key1!25)))))

(assert (=> d!136353 (isStrictlySorted!743 (removeStrictlySorted!127 (t!40979 l!644) key2!15))))

(assert (=> d!136353 (= (insertStrictlySorted!433 (removeStrictlySorted!127 (t!40979 l!644) key2!15) key1!25 v1!20) lt!562058)))

(declare-fun b!1241203 () Bool)

(declare-fun res!828104 () Bool)

(assert (=> b!1241203 (=> (not res!828104) (not e!703553))))

(assert (=> b!1241203 (= res!828104 (containsKey!604 lt!562058 key1!25))))

(declare-fun b!1241209 () Bool)

(assert (=> b!1241209 (= e!703556 call!61214)))

(declare-fun b!1241210 () Bool)

(assert (=> b!1241210 (= e!703554 call!61215)))

(declare-fun b!1241211 () Bool)

(assert (=> b!1241211 (= e!703555 e!703554)))

(assert (=> b!1241211 (= c!121347 (and (is-Cons!27505 (removeStrictlySorted!127 (t!40979 l!644) key2!15)) (= (_1!10204 (h!28714 (removeStrictlySorted!127 (t!40979 l!644) key2!15))) key1!25)))))

(declare-fun b!1241212 () Bool)

(assert (=> b!1241212 (= e!703555 call!61216)))

(assert (= (and d!136353 c!121348) b!1241212))

(assert (= (and d!136353 (not c!121348)) b!1241211))

(assert (= (and b!1241211 c!121347) b!1241210))

(assert (= (and b!1241211 (not c!121347)) b!1241205))

(assert (= (and b!1241205 c!121346) b!1241209))

(assert (= (and b!1241205 (not c!121346)) b!1241206))

(assert (= (or b!1241209 b!1241206) bm!61209))

(assert (= (or b!1241210 bm!61209) bm!61210))

(assert (= (or b!1241212 bm!61210) bm!61211))

(assert (= (and bm!61211 c!121345) b!1241204))

(assert (= (and bm!61211 (not c!121345)) b!1241207))

(assert (= (and d!136353 res!828103) b!1241203))

(assert (= (and b!1241203 res!828104) b!1241208))

(declare-fun m!1144359 () Bool)

(assert (=> b!1241203 m!1144359))

(declare-fun m!1144361 () Bool)

(assert (=> bm!61211 m!1144361))

(declare-fun m!1144363 () Bool)

(assert (=> b!1241208 m!1144363))

(declare-fun m!1144365 () Bool)

(assert (=> b!1241204 m!1144365))

(declare-fun m!1144367 () Bool)

(assert (=> d!136353 m!1144367))

(assert (=> d!136353 m!1144315))

(declare-fun m!1144369 () Bool)

(assert (=> d!136353 m!1144369))

(assert (=> b!1241093 d!136353))

(declare-fun d!136359 () Bool)

(declare-fun res!828117 () Bool)

(declare-fun e!703570 () Bool)

(assert (=> d!136359 (=> res!828117 e!703570)))

(assert (=> d!136359 (= res!828117 (or (is-Nil!27506 (insertStrictlySorted!433 l!644 key1!25 v1!20)) (is-Nil!27506 (t!40979 (insertStrictlySorted!433 l!644 key1!25 v1!20)))))))

(assert (=> d!136359 (= (isStrictlySorted!743 (insertStrictlySorted!433 l!644 key1!25 v1!20)) e!703570)))

(declare-fun b!1241233 () Bool)

(declare-fun e!703571 () Bool)

(assert (=> b!1241233 (= e!703570 e!703571)))

(declare-fun res!828118 () Bool)

(assert (=> b!1241233 (=> (not res!828118) (not e!703571))))

(assert (=> b!1241233 (= res!828118 (bvslt (_1!10204 (h!28714 (insertStrictlySorted!433 l!644 key1!25 v1!20))) (_1!10204 (h!28714 (t!40979 (insertStrictlySorted!433 l!644 key1!25 v1!20))))))))

(declare-fun b!1241234 () Bool)

(assert (=> b!1241234 (= e!703571 (isStrictlySorted!743 (t!40979 (insertStrictlySorted!433 l!644 key1!25 v1!20))))))

(assert (= (and d!136359 (not res!828117)) b!1241233))

(assert (= (and b!1241233 res!828118) b!1241234))

(declare-fun m!1144371 () Bool)

(assert (=> b!1241234 m!1144371))

(assert (=> b!1241093 d!136359))

(declare-fun bm!61216 () Bool)

(declare-fun call!61219 () List!27509)

(declare-fun call!61220 () List!27509)

(assert (=> bm!61216 (= call!61219 call!61220)))

(declare-fun bm!61217 () Bool)

(declare-fun call!61221 () List!27509)

(assert (=> bm!61217 (= call!61220 call!61221)))

(declare-fun e!703576 () List!27509)

(declare-fun c!121356 () Bool)

(declare-fun bm!61218 () Bool)

(assert (=> bm!61218 (= call!61221 ($colon$colon!620 e!703576 (ite c!121356 (h!28714 l!644) (tuple2!20389 key1!25 v1!20))))))

(declare-fun c!121353 () Bool)

(assert (=> bm!61218 (= c!121353 c!121356)))

(declare-fun b!1241236 () Bool)

(assert (=> b!1241236 (= e!703576 (insertStrictlySorted!433 (t!40979 l!644) key1!25 v1!20))))

(declare-fun b!1241237 () Bool)

(declare-fun c!121354 () Bool)

(assert (=> b!1241237 (= c!121354 (and (is-Cons!27505 l!644) (bvsgt (_1!10204 (h!28714 l!644)) key1!25)))))

(declare-fun e!703573 () List!27509)

(declare-fun e!703575 () List!27509)

(assert (=> b!1241237 (= e!703573 e!703575)))

(declare-fun b!1241238 () Bool)

(assert (=> b!1241238 (= e!703575 call!61219)))

(declare-fun c!121355 () Bool)

(declare-fun b!1241239 () Bool)

(assert (=> b!1241239 (= e!703576 (ite c!121355 (t!40979 l!644) (ite c!121354 (Cons!27505 (h!28714 l!644) (t!40979 l!644)) Nil!27506)))))

(declare-fun b!1241240 () Bool)

(declare-fun lt!562059 () List!27509)

(declare-fun e!703572 () Bool)

(assert (=> b!1241240 (= e!703572 (contains!7405 lt!562059 (tuple2!20389 key1!25 v1!20)))))

(declare-fun d!136361 () Bool)

(assert (=> d!136361 e!703572))

(declare-fun res!828119 () Bool)

(assert (=> d!136361 (=> (not res!828119) (not e!703572))))

(assert (=> d!136361 (= res!828119 (isStrictlySorted!743 lt!562059))))

(declare-fun e!703574 () List!27509)

(assert (=> d!136361 (= lt!562059 e!703574)))

(assert (=> d!136361 (= c!121356 (and (is-Cons!27505 l!644) (bvslt (_1!10204 (h!28714 l!644)) key1!25)))))

(assert (=> d!136361 (isStrictlySorted!743 l!644)))

(assert (=> d!136361 (= (insertStrictlySorted!433 l!644 key1!25 v1!20) lt!562059)))

(declare-fun b!1241235 () Bool)

(declare-fun res!828120 () Bool)

(assert (=> b!1241235 (=> (not res!828120) (not e!703572))))

(assert (=> b!1241235 (= res!828120 (containsKey!604 lt!562059 key1!25))))

(declare-fun b!1241241 () Bool)

(assert (=> b!1241241 (= e!703575 call!61219)))

(declare-fun b!1241242 () Bool)

(assert (=> b!1241242 (= e!703573 call!61220)))

(declare-fun b!1241243 () Bool)

(assert (=> b!1241243 (= e!703574 e!703573)))

(assert (=> b!1241243 (= c!121355 (and (is-Cons!27505 l!644) (= (_1!10204 (h!28714 l!644)) key1!25)))))

(declare-fun b!1241244 () Bool)

(assert (=> b!1241244 (= e!703574 call!61221)))

(assert (= (and d!136361 c!121356) b!1241244))

(assert (= (and d!136361 (not c!121356)) b!1241243))

(assert (= (and b!1241243 c!121355) b!1241242))

(assert (= (and b!1241243 (not c!121355)) b!1241237))

(assert (= (and b!1241237 c!121354) b!1241241))

(assert (= (and b!1241237 (not c!121354)) b!1241238))

(assert (= (or b!1241241 b!1241238) bm!61216))

(assert (= (or b!1241242 bm!61216) bm!61217))

(assert (= (or b!1241244 bm!61217) bm!61218))

(assert (= (and bm!61218 c!121353) b!1241236))

(assert (= (and bm!61218 (not c!121353)) b!1241239))

(assert (= (and d!136361 res!828119) b!1241235))

(assert (= (and b!1241235 res!828120) b!1241240))

(declare-fun m!1144373 () Bool)

(assert (=> b!1241235 m!1144373))

(declare-fun m!1144375 () Bool)

(assert (=> bm!61218 m!1144375))

(declare-fun m!1144377 () Bool)

(assert (=> b!1241240 m!1144377))

(assert (=> b!1241236 m!1144311))

(declare-fun m!1144381 () Bool)

(assert (=> d!136361 m!1144381))

(assert (=> d!136361 m!1144321))

(assert (=> b!1241093 d!136361))

(declare-fun d!136363 () Bool)

(assert (=> d!136363 (= (insertStrictlySorted!433 (removeStrictlySorted!127 (t!40979 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!127 (insertStrictlySorted!433 (t!40979 l!644) key1!25 v1!20) key2!15))))

(declare-fun lt!562066 () Unit!41201)

(declare-fun choose!1848 (List!27509 (_ BitVec 64) B!1836 (_ BitVec 64)) Unit!41201)

(assert (=> d!136363 (= lt!562066 (choose!1848 (t!40979 l!644) key1!25 v1!20 key2!15))))

(assert (=> d!136363 (not (= key1!25 key2!15))))

(assert (=> d!136363 (= (lemmaInsertAndRemoveStrictlySortedCommutative!15 (t!40979 l!644) key1!25 v1!20 key2!15) lt!562066)))

(declare-fun bs!34939 () Bool)

(assert (= bs!34939 d!136363))

(assert (=> bs!34939 m!1144311))

(assert (=> bs!34939 m!1144311))

(assert (=> bs!34939 m!1144313))

(assert (=> bs!34939 m!1144315))

(assert (=> bs!34939 m!1144317))

(assert (=> bs!34939 m!1144315))

(declare-fun m!1144425 () Bool)

(assert (=> bs!34939 m!1144425))

(assert (=> b!1241093 d!136363))

(declare-fun bm!61231 () Bool)

(declare-fun call!61234 () List!27509)

(declare-fun call!61235 () List!27509)

(assert (=> bm!61231 (= call!61234 call!61235)))

(declare-fun bm!61232 () Bool)

(declare-fun call!61236 () List!27509)

(assert (=> bm!61232 (= call!61235 call!61236)))

(declare-fun bm!61233 () Bool)

(declare-fun e!703605 () List!27509)

(declare-fun c!121376 () Bool)

(assert (=> bm!61233 (= call!61236 ($colon$colon!620 e!703605 (ite c!121376 (h!28714 (t!40979 l!644)) (tuple2!20389 key1!25 v1!20))))))

(declare-fun c!121373 () Bool)

(assert (=> bm!61233 (= c!121373 c!121376)))

(declare-fun b!1241290 () Bool)

(assert (=> b!1241290 (= e!703605 (insertStrictlySorted!433 (t!40979 (t!40979 l!644)) key1!25 v1!20))))

(declare-fun b!1241291 () Bool)

(declare-fun c!121374 () Bool)

(assert (=> b!1241291 (= c!121374 (and (is-Cons!27505 (t!40979 l!644)) (bvsgt (_1!10204 (h!28714 (t!40979 l!644))) key1!25)))))

(declare-fun e!703602 () List!27509)

(declare-fun e!703604 () List!27509)

(assert (=> b!1241291 (= e!703602 e!703604)))

(declare-fun b!1241292 () Bool)

(assert (=> b!1241292 (= e!703604 call!61234)))

(declare-fun b!1241293 () Bool)

(declare-fun c!121375 () Bool)

(assert (=> b!1241293 (= e!703605 (ite c!121375 (t!40979 (t!40979 l!644)) (ite c!121374 (Cons!27505 (h!28714 (t!40979 l!644)) (t!40979 (t!40979 l!644))) Nil!27506)))))

(declare-fun b!1241294 () Bool)

(declare-fun lt!562067 () List!27509)

(declare-fun e!703601 () Bool)

(assert (=> b!1241294 (= e!703601 (contains!7405 lt!562067 (tuple2!20389 key1!25 v1!20)))))

(declare-fun d!136377 () Bool)

(assert (=> d!136377 e!703601))

(declare-fun res!828133 () Bool)

(assert (=> d!136377 (=> (not res!828133) (not e!703601))))

(assert (=> d!136377 (= res!828133 (isStrictlySorted!743 lt!562067))))

(declare-fun e!703603 () List!27509)

(assert (=> d!136377 (= lt!562067 e!703603)))

(assert (=> d!136377 (= c!121376 (and (is-Cons!27505 (t!40979 l!644)) (bvslt (_1!10204 (h!28714 (t!40979 l!644))) key1!25)))))

(assert (=> d!136377 (isStrictlySorted!743 (t!40979 l!644))))

(assert (=> d!136377 (= (insertStrictlySorted!433 (t!40979 l!644) key1!25 v1!20) lt!562067)))

(declare-fun b!1241289 () Bool)

(declare-fun res!828134 () Bool)

(assert (=> b!1241289 (=> (not res!828134) (not e!703601))))

(assert (=> b!1241289 (= res!828134 (containsKey!604 lt!562067 key1!25))))

(declare-fun b!1241295 () Bool)

(assert (=> b!1241295 (= e!703604 call!61234)))

(declare-fun b!1241296 () Bool)

(assert (=> b!1241296 (= e!703602 call!61235)))

(declare-fun b!1241297 () Bool)

(assert (=> b!1241297 (= e!703603 e!703602)))

(assert (=> b!1241297 (= c!121375 (and (is-Cons!27505 (t!40979 l!644)) (= (_1!10204 (h!28714 (t!40979 l!644))) key1!25)))))

(declare-fun b!1241298 () Bool)

(assert (=> b!1241298 (= e!703603 call!61236)))

(assert (= (and d!136377 c!121376) b!1241298))

(assert (= (and d!136377 (not c!121376)) b!1241297))

(assert (= (and b!1241297 c!121375) b!1241296))

(assert (= (and b!1241297 (not c!121375)) b!1241291))

(assert (= (and b!1241291 c!121374) b!1241295))

(assert (= (and b!1241291 (not c!121374)) b!1241292))

(assert (= (or b!1241295 b!1241292) bm!61231))

(assert (= (or b!1241296 bm!61231) bm!61232))

(assert (= (or b!1241298 bm!61232) bm!61233))

(assert (= (and bm!61233 c!121373) b!1241290))

(assert (= (and bm!61233 (not c!121373)) b!1241293))

(assert (= (and d!136377 res!828133) b!1241289))

(assert (= (and b!1241289 res!828134) b!1241294))

(declare-fun m!1144427 () Bool)

(assert (=> b!1241289 m!1144427))

(declare-fun m!1144429 () Bool)

(assert (=> bm!61233 m!1144429))

(declare-fun m!1144431 () Bool)

(assert (=> b!1241294 m!1144431))

(declare-fun m!1144433 () Bool)

(assert (=> b!1241290 m!1144433))

(declare-fun m!1144435 () Bool)

(assert (=> d!136377 m!1144435))

(assert (=> d!136377 m!1144323))

(assert (=> b!1241093 d!136377))

(declare-fun d!136379 () Bool)

(declare-fun e!703608 () Bool)

(assert (=> d!136379 e!703608))

(declare-fun res!828135 () Bool)

(assert (=> d!136379 (=> (not res!828135) (not e!703608))))

(declare-fun lt!562073 () List!27509)

(assert (=> d!136379 (= res!828135 (isStrictlySorted!743 lt!562073))))

(declare-fun e!703607 () List!27509)

(assert (=> d!136379 (= lt!562073 e!703607)))

(declare-fun c!121377 () Bool)

(assert (=> d!136379 (= c!121377 (and (is-Cons!27505 (t!40979 l!644)) (= (_1!10204 (h!28714 (t!40979 l!644))) key2!15)))))

(assert (=> d!136379 (isStrictlySorted!743 (t!40979 l!644))))

(assert (=> d!136379 (= (removeStrictlySorted!127 (t!40979 l!644) key2!15) lt!562073)))

(declare-fun b!1241299 () Bool)

(declare-fun e!703606 () List!27509)

(assert (=> b!1241299 (= e!703607 e!703606)))

(declare-fun c!121378 () Bool)

(assert (=> b!1241299 (= c!121378 (and (is-Cons!27505 (t!40979 l!644)) (not (= (_1!10204 (h!28714 (t!40979 l!644))) key2!15))))))

(declare-fun b!1241300 () Bool)

(assert (=> b!1241300 (= e!703608 (not (containsKey!604 lt!562073 key2!15)))))

(declare-fun b!1241301 () Bool)

(assert (=> b!1241301 (= e!703606 ($colon$colon!620 (removeStrictlySorted!127 (t!40979 (t!40979 l!644)) key2!15) (h!28714 (t!40979 l!644))))))

(declare-fun b!1241302 () Bool)

(assert (=> b!1241302 (= e!703607 (t!40979 (t!40979 l!644)))))

(declare-fun b!1241303 () Bool)

(assert (=> b!1241303 (= e!703606 Nil!27506)))

(assert (= (and d!136379 c!121377) b!1241302))

(assert (= (and d!136379 (not c!121377)) b!1241299))

(assert (= (and b!1241299 c!121378) b!1241301))

(assert (= (and b!1241299 (not c!121378)) b!1241303))

(assert (= (and d!136379 res!828135) b!1241300))

(declare-fun m!1144439 () Bool)

(assert (=> d!136379 m!1144439))

(assert (=> d!136379 m!1144323))

(declare-fun m!1144441 () Bool)

(assert (=> b!1241300 m!1144441))

