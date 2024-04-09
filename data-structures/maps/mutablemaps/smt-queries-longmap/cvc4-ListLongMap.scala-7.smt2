; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!242 () Bool)

(assert start!242)

(declare-fun b_free!41 () Bool)

(declare-fun b_next!41 () Bool)

(assert (=> start!242 (= b_free!41 (not b_next!41))))

(declare-fun tp!148 () Bool)

(declare-fun b_and!95 () Bool)

(assert (=> start!242 (= tp!148 b_and!95)))

(declare-fun b!2024 () Bool)

(declare-fun res!4533 () Bool)

(declare-fun e!498 () Bool)

(assert (=> b!2024 (=> (not res!4533) (not e!498))))

(declare-datatypes ((B!276 0))(
  ( (B!277 (val!20 Int)) )
))
(declare-datatypes ((tuple2!40 0))(
  ( (tuple2!41 (_1!20 (_ BitVec 64)) (_2!20 B!276)) )
))
(declare-datatypes ((List!29 0))(
  ( (Nil!26) (Cons!25 (h!591 tuple2!40) (t!2078 List!29)) )
))
(declare-datatypes ((ListLongMap!45 0))(
  ( (ListLongMap!46 (toList!38 List!29)) )
))
(declare-fun lm!258 () ListLongMap!45)

(declare-fun k!394 () (_ BitVec 64))

(declare-fun head!751 (List!29) tuple2!40)

(assert (=> b!2024 (= res!4533 (not (= (_1!20 (head!751 (toList!38 lm!258))) k!394)))))

(declare-fun res!4535 () Bool)

(assert (=> start!242 (=> (not res!4535) (not e!498))))

(declare-fun p!318 () Int)

(declare-fun forall!22 (List!29 Int) Bool)

(assert (=> start!242 (= res!4535 (forall!22 (toList!38 lm!258) p!318))))

(assert (=> start!242 e!498))

(declare-fun e!497 () Bool)

(declare-fun inv!65 (ListLongMap!45) Bool)

(assert (=> start!242 (and (inv!65 lm!258) e!497)))

(assert (=> start!242 tp!148))

(assert (=> start!242 true))

(declare-fun b!2025 () Bool)

(declare-fun res!4534 () Bool)

(assert (=> b!2025 (=> (not res!4534) (not e!498))))

(declare-fun isEmpty!27 (ListLongMap!45) Bool)

(assert (=> b!2025 (= res!4534 (not (isEmpty!27 lm!258)))))

(declare-fun b!2026 () Bool)

(declare-fun e!496 () Bool)

(assert (=> b!2026 (= e!498 e!496)))

(declare-fun res!4532 () Bool)

(assert (=> b!2026 (=> (not res!4532) (not e!496))))

(declare-fun lt!323 () ListLongMap!45)

(assert (=> b!2026 (= res!4532 (forall!22 (toList!38 lt!323) p!318))))

(declare-fun tail!40 (ListLongMap!45) ListLongMap!45)

(assert (=> b!2026 (= lt!323 (tail!40 lm!258))))

(declare-fun b!2027 () Bool)

(declare-fun tp!149 () Bool)

(assert (=> b!2027 (= e!497 tp!149)))

(declare-fun b!2028 () Bool)

(declare-fun size!68 (List!29) Int)

(assert (=> b!2028 (= e!496 (>= (size!68 (toList!38 lt!323)) (size!68 (toList!38 lm!258))))))

(assert (= (and start!242 res!4535) b!2025))

(assert (= (and b!2025 res!4534) b!2024))

(assert (= (and b!2024 res!4533) b!2026))

(assert (= (and b!2026 res!4532) b!2028))

(assert (= start!242 b!2027))

(declare-fun m!671 () Bool)

(assert (=> b!2026 m!671))

(declare-fun m!673 () Bool)

(assert (=> b!2026 m!673))

(declare-fun m!675 () Bool)

(assert (=> start!242 m!675))

(declare-fun m!677 () Bool)

(assert (=> start!242 m!677))

(declare-fun m!679 () Bool)

(assert (=> b!2028 m!679))

(declare-fun m!681 () Bool)

(assert (=> b!2028 m!681))

(declare-fun m!683 () Bool)

(assert (=> b!2025 m!683))

(declare-fun m!685 () Bool)

(assert (=> b!2024 m!685))

(push 1)

(assert (not b!2026))

(assert (not b_next!41))

(assert (not b!2025))

(assert (not b!2028))

(assert b_and!95)

(assert (not b!2027))

(assert (not b!2024))

(assert (not start!242))

(check-sat)

(pop 1)

(push 1)

(assert b_and!95)

(assert (not b_next!41))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!251 () Bool)

(declare-fun res!4546 () Bool)

(declare-fun e!509 () Bool)

(assert (=> d!251 (=> res!4546 e!509)))

(assert (=> d!251 (= res!4546 (is-Nil!26 (toList!38 lt!323)))))

(assert (=> d!251 (= (forall!22 (toList!38 lt!323) p!318) e!509)))

(declare-fun b!2039 () Bool)

(declare-fun e!510 () Bool)

(assert (=> b!2039 (= e!509 e!510)))

(declare-fun res!4547 () Bool)

(assert (=> b!2039 (=> (not res!4547) (not e!510))))

(declare-fun dynLambda!12 (Int tuple2!40) Bool)

(assert (=> b!2039 (= res!4547 (dynLambda!12 p!318 (h!591 (toList!38 lt!323))))))

(declare-fun b!2040 () Bool)

(assert (=> b!2040 (= e!510 (forall!22 (t!2078 (toList!38 lt!323)) p!318))))

(assert (= (and d!251 (not res!4546)) b!2039))

(assert (= (and b!2039 res!4547) b!2040))

(declare-fun b_lambda!109 () Bool)

(assert (=> (not b_lambda!109) (not b!2039)))

(declare-fun t!2080 () Bool)

(declare-fun tb!49 () Bool)

(assert (=> (and start!242 (= p!318 p!318) t!2080) tb!49))

(declare-fun result!73 () Bool)

(assert (=> tb!49 (= result!73 true)))

(assert (=> b!2039 t!2080))

(declare-fun b_and!97 () Bool)

(assert (= b_and!95 (and (=> t!2080 result!73) b_and!97)))

(declare-fun m!687 () Bool)

(assert (=> b!2039 m!687))

(declare-fun m!689 () Bool)

(assert (=> b!2040 m!689))

(assert (=> b!2026 d!251))

(declare-fun d!257 () Bool)

(declare-fun tail!41 (List!29) List!29)

(assert (=> d!257 (= (tail!40 lm!258) (ListLongMap!46 (tail!41 (toList!38 lm!258))))))

(declare-fun bs!63 () Bool)

(assert (= bs!63 d!257))

(declare-fun m!699 () Bool)

(assert (=> bs!63 m!699))

(assert (=> b!2026 d!257))

(declare-fun d!263 () Bool)

(declare-fun isEmpty!28 (List!29) Bool)

(assert (=> d!263 (= (isEmpty!27 lm!258) (isEmpty!28 (toList!38 lm!258)))))

(declare-fun bs!64 () Bool)

(assert (= bs!64 d!263))

(declare-fun m!701 () Bool)

(assert (=> bs!64 m!701))

(assert (=> b!2025 d!263))

(declare-fun d!265 () Bool)

(declare-fun res!4554 () Bool)

(declare-fun e!517 () Bool)

(assert (=> d!265 (=> res!4554 e!517)))

(assert (=> d!265 (= res!4554 (is-Nil!26 (toList!38 lm!258)))))

(assert (=> d!265 (= (forall!22 (toList!38 lm!258) p!318) e!517)))

(declare-fun b!2047 () Bool)

(declare-fun e!518 () Bool)

(assert (=> b!2047 (= e!517 e!518)))

(declare-fun res!4555 () Bool)

(assert (=> b!2047 (=> (not res!4555) (not e!518))))

(assert (=> b!2047 (= res!4555 (dynLambda!12 p!318 (h!591 (toList!38 lm!258))))))

(declare-fun b!2048 () Bool)

(assert (=> b!2048 (= e!518 (forall!22 (t!2078 (toList!38 lm!258)) p!318))))

(assert (= (and d!265 (not res!4554)) b!2047))

(assert (= (and b!2047 res!4555) b!2048))

(declare-fun b_lambda!115 () Bool)

(assert (=> (not b_lambda!115) (not b!2047)))

(declare-fun t!2086 () Bool)

(declare-fun tb!55 () Bool)

(assert (=> (and start!242 (= p!318 p!318) t!2086) tb!55))

(declare-fun result!79 () Bool)

(assert (=> tb!55 (= result!79 true)))

(assert (=> b!2047 t!2086))

(declare-fun b_and!103 () Bool)

(assert (= b_and!97 (and (=> t!2086 result!79) b_and!103)))

(declare-fun m!707 () Bool)

(assert (=> b!2047 m!707))

(declare-fun m!709 () Bool)

(assert (=> b!2048 m!709))

(assert (=> start!242 d!265))

(declare-fun d!271 () Bool)

(declare-fun isStrictlySorted!12 (List!29) Bool)

(assert (=> d!271 (= (inv!65 lm!258) (isStrictlySorted!12 (toList!38 lm!258)))))

(declare-fun bs!68 () Bool)

(assert (= bs!68 d!271))

(declare-fun m!713 () Bool)

(assert (=> bs!68 m!713))

(assert (=> start!242 d!271))

(declare-fun d!277 () Bool)

(assert (=> d!277 (= (head!751 (toList!38 lm!258)) (h!591 (toList!38 lm!258)))))

(assert (=> b!2024 d!277))

(declare-fun d!281 () Bool)

(declare-fun lt!333 () Int)

(assert (=> d!281 (>= lt!333 0)))

(declare-fun e!530 () Int)

(assert (=> d!281 (= lt!333 e!530)))

(declare-fun c!105 () Bool)

(assert (=> d!281 (= c!105 (is-Nil!26 (toList!38 lt!323)))))

(assert (=> d!281 (= (size!68 (toList!38 lt!323)) lt!333)))

(declare-fun b!2069 () Bool)

(assert (=> b!2069 (= e!530 0)))

(declare-fun b!2070 () Bool)

(assert (=> b!2070 (= e!530 (+ 1 (size!68 (t!2078 (toList!38 lt!323)))))))

(assert (= (and d!281 c!105) b!2069))

(assert (= (and d!281 (not c!105)) b!2070))

(declare-fun m!723 () Bool)

(assert (=> b!2070 m!723))

(assert (=> b!2028 d!281))

(declare-fun d!289 () Bool)

(declare-fun lt!334 () Int)

(assert (=> d!289 (>= lt!334 0)))

(declare-fun e!531 () Int)

(assert (=> d!289 (= lt!334 e!531)))

(declare-fun c!106 () Bool)

(assert (=> d!289 (= c!106 (is-Nil!26 (toList!38 lm!258)))))

(assert (=> d!289 (= (size!68 (toList!38 lm!258)) lt!334)))

(declare-fun b!2071 () Bool)

(assert (=> b!2071 (= e!531 0)))

(declare-fun b!2072 () Bool)

(assert (=> b!2072 (= e!531 (+ 1 (size!68 (t!2078 (toList!38 lm!258)))))))

(assert (= (and d!289 c!106) b!2071))

(assert (= (and d!289 (not c!106)) b!2072))

(declare-fun m!727 () Bool)

(assert (=> b!2072 m!727))

(assert (=> b!2028 d!289))

(declare-fun b!2081 () Bool)

(declare-fun e!537 () Bool)

(declare-fun tp_is_empty!25 () Bool)

(declare-fun tp!152 () Bool)

(assert (=> b!2081 (= e!537 (and tp_is_empty!25 tp!152))))

(assert (=> b!2027 (= tp!149 e!537)))

(assert (= (and b!2027 (is-Cons!25 (toList!38 lm!258))) b!2081))

(declare-fun b_lambda!119 () Bool)

(assert (= b_lambda!115 (or (and start!242 b_free!41) b_lambda!119)))

(declare-fun b_lambda!123 () Bool)

(assert (= b_lambda!109 (or (and start!242 b_free!41) b_lambda!123)))

(push 1)

(assert (not d!263))

(assert (not b!2040))

(assert (not d!271))

(assert tp_is_empty!25)

(assert (not b!2070))

(assert (not b_lambda!123))

(assert (not b!2081))

(assert (not d!257))

(assert (not b!2072))

(assert (not b_lambda!119))

(assert b_and!103)

(assert (not b!2048))

(assert (not b_next!41))

(check-sat)

(pop 1)

(push 1)

(assert b_and!103)

(assert (not b_next!41))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!307 () Bool)

(declare-fun lt!337 () Int)

(assert (=> d!307 (>= lt!337 0)))

(declare-fun e!547 () Int)

(assert (=> d!307 (= lt!337 e!547)))

(declare-fun c!109 () Bool)

(assert (=> d!307 (= c!109 (is-Nil!26 (t!2078 (toList!38 lt!323))))))

(assert (=> d!307 (= (size!68 (t!2078 (toList!38 lt!323))) lt!337)))

(declare-fun b!2096 () Bool)

(assert (=> b!2096 (= e!547 0)))

(declare-fun b!2097 () Bool)

(assert (=> b!2097 (= e!547 (+ 1 (size!68 (t!2078 (t!2078 (toList!38 lt!323))))))))

(assert (= (and d!307 c!109) b!2096))

(assert (= (and d!307 (not c!109)) b!2097))

(declare-fun m!747 () Bool)

(assert (=> b!2097 m!747))

(assert (=> b!2070 d!307))

(declare-fun d!311 () Bool)

(declare-fun res!4562 () Bool)

(declare-fun e!548 () Bool)

(assert (=> d!311 (=> res!4562 e!548)))

(assert (=> d!311 (= res!4562 (is-Nil!26 (t!2078 (toList!38 lm!258))))))

(assert (=> d!311 (= (forall!22 (t!2078 (toList!38 lm!258)) p!318) e!548)))

(declare-fun b!2098 () Bool)

(declare-fun e!549 () Bool)

(assert (=> b!2098 (= e!548 e!549)))

(declare-fun res!4563 () Bool)

(assert (=> b!2098 (=> (not res!4563) (not e!549))))

(assert (=> b!2098 (= res!4563 (dynLambda!12 p!318 (h!591 (t!2078 (toList!38 lm!258)))))))

(declare-fun b!2099 () Bool)

(assert (=> b!2099 (= e!549 (forall!22 (t!2078 (t!2078 (toList!38 lm!258))) p!318))))

(assert (= (and d!311 (not res!4562)) b!2098))

(assert (= (and b!2098 res!4563) b!2099))

(declare-fun b_lambda!135 () Bool)

(assert (=> (not b_lambda!135) (not b!2098)))

(declare-fun t!2094 () Bool)

(declare-fun tb!63 () Bool)

(assert (=> (and start!242 (= p!318 p!318) t!2094) tb!63))

(declare-fun result!93 () Bool)

(assert (=> tb!63 (= result!93 true)))

(assert (=> b!2098 t!2094))

(declare-fun b_and!111 () Bool)

(assert (= b_and!103 (and (=> t!2094 result!93) b_and!111)))

(declare-fun m!749 () Bool)

(assert (=> b!2098 m!749))

(declare-fun m!751 () Bool)

(assert (=> b!2099 m!751))

(assert (=> b!2048 d!311))

(declare-fun d!315 () Bool)

(declare-fun res!4564 () Bool)

(declare-fun e!551 () Bool)

(assert (=> d!315 (=> res!4564 e!551)))

(assert (=> d!315 (= res!4564 (is-Nil!26 (t!2078 (toList!38 lt!323))))))

(assert (=> d!315 (= (forall!22 (t!2078 (toList!38 lt!323)) p!318) e!551)))

(declare-fun b!2102 () Bool)

(declare-fun e!552 () Bool)

(assert (=> b!2102 (= e!551 e!552)))

(declare-fun res!4565 () Bool)

(assert (=> b!2102 (=> (not res!4565) (not e!552))))

(assert (=> b!2102 (= res!4565 (dynLambda!12 p!318 (h!591 (t!2078 (toList!38 lt!323)))))))

(declare-fun b!2103 () Bool)

(assert (=> b!2103 (= e!552 (forall!22 (t!2078 (t!2078 (toList!38 lt!323))) p!318))))

(assert (= (and d!315 (not res!4564)) b!2102))

(assert (= (and b!2102 res!4565) b!2103))

(declare-fun b_lambda!137 () Bool)

(assert (=> (not b_lambda!137) (not b!2102)))

(declare-fun t!2096 () Bool)

(declare-fun tb!65 () Bool)

(assert (=> (and start!242 (= p!318 p!318) t!2096) tb!65))

(declare-fun result!95 () Bool)

(assert (=> tb!65 (= result!95 true)))

(assert (=> b!2102 t!2096))

(declare-fun b_and!113 () Bool)

(assert (= b_and!111 (and (=> t!2096 result!95) b_and!113)))

(declare-fun m!755 () Bool)

(assert (=> b!2102 m!755))

(declare-fun m!757 () Bool)

(assert (=> b!2103 m!757))

(assert (=> b!2040 d!315))

(declare-fun d!319 () Bool)

(declare-fun lt!339 () Int)

(assert (=> d!319 (>= lt!339 0)))

(declare-fun e!558 () Int)

(assert (=> d!319 (= lt!339 e!558)))

(declare-fun c!111 () Bool)

(assert (=> d!319 (= c!111 (is-Nil!26 (t!2078 (toList!38 lm!258))))))

(assert (=> d!319 (= (size!68 (t!2078 (toList!38 lm!258))) lt!339)))

(declare-fun b!2106 () Bool)

(assert (=> b!2106 (= e!558 0)))

(declare-fun b!2107 () Bool)

(assert (=> b!2107 (= e!558 (+ 1 (size!68 (t!2078 (t!2078 (toList!38 lm!258))))))))

(assert (= (and d!319 c!111) b!2106))

(assert (= (and d!319 (not c!111)) b!2107))

(declare-fun m!759 () Bool)

(assert (=> b!2107 m!759))

(assert (=> b!2072 d!319))

(declare-fun d!321 () Bool)

(declare-fun res!4580 () Bool)

(declare-fun e!569 () Bool)

(assert (=> d!321 (=> res!4580 e!569)))

(assert (=> d!321 (= res!4580 (or (is-Nil!26 (toList!38 lm!258)) (is-Nil!26 (t!2078 (toList!38 lm!258)))))))

(assert (=> d!321 (= (isStrictlySorted!12 (toList!38 lm!258)) e!569)))

(declare-fun b!2122 () Bool)

(declare-fun e!570 () Bool)

(assert (=> b!2122 (= e!569 e!570)))

(declare-fun res!4581 () Bool)

(assert (=> b!2122 (=> (not res!4581) (not e!570))))

(assert (=> b!2122 (= res!4581 (bvslt (_1!20 (h!591 (toList!38 lm!258))) (_1!20 (h!591 (t!2078 (toList!38 lm!258))))))))

(declare-fun b!2123 () Bool)

(assert (=> b!2123 (= e!570 (isStrictlySorted!12 (t!2078 (toList!38 lm!258))))))

(assert (= (and d!321 (not res!4580)) b!2122))

(assert (= (and b!2122 res!4581) b!2123))

