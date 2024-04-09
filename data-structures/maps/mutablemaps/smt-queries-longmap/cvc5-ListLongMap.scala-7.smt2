; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!238 () Bool)

(assert start!238)

(declare-fun b_free!37 () Bool)

(declare-fun b_next!37 () Bool)

(assert (=> start!238 (= b_free!37 (not b_next!37))))

(declare-fun tp!137 () Bool)

(declare-fun b_and!91 () Bool)

(assert (=> start!238 (= tp!137 b_and!91)))

(declare-fun b!1994 () Bool)

(declare-fun res!4509 () Bool)

(declare-fun e!479 () Bool)

(assert (=> b!1994 (=> (not res!4509) (not e!479))))

(declare-datatypes ((B!272 0))(
  ( (B!273 (val!18 Int)) )
))
(declare-datatypes ((tuple2!36 0))(
  ( (tuple2!37 (_1!18 (_ BitVec 64)) (_2!18 B!272)) )
))
(declare-datatypes ((List!27 0))(
  ( (Nil!24) (Cons!23 (h!589 tuple2!36) (t!2076 List!27)) )
))
(declare-datatypes ((ListLongMap!41 0))(
  ( (ListLongMap!42 (toList!36 List!27)) )
))
(declare-fun lm!258 () ListLongMap!41)

(declare-fun k!394 () (_ BitVec 64))

(declare-fun head!749 (List!27) tuple2!36)

(assert (=> b!1994 (= res!4509 (not (= (_1!18 (head!749 (toList!36 lm!258))) k!394)))))

(declare-fun b!1995 () Bool)

(declare-fun e!478 () Bool)

(declare-fun tp!136 () Bool)

(assert (=> b!1995 (= e!478 tp!136)))

(declare-fun res!4511 () Bool)

(assert (=> start!238 (=> (not res!4511) (not e!479))))

(declare-fun p!318 () Int)

(declare-fun forall!20 (List!27 Int) Bool)

(assert (=> start!238 (= res!4511 (forall!20 (toList!36 lm!258) p!318))))

(assert (=> start!238 e!479))

(declare-fun inv!63 (ListLongMap!41) Bool)

(assert (=> start!238 (and (inv!63 lm!258) e!478)))

(assert (=> start!238 tp!137))

(assert (=> start!238 true))

(declare-fun b!1996 () Bool)

(declare-fun e!480 () Bool)

(assert (=> b!1996 (= e!479 e!480)))

(declare-fun res!4508 () Bool)

(assert (=> b!1996 (=> (not res!4508) (not e!480))))

(declare-fun lt!317 () ListLongMap!41)

(assert (=> b!1996 (= res!4508 (forall!20 (toList!36 lt!317) p!318))))

(declare-fun tail!38 (ListLongMap!41) ListLongMap!41)

(assert (=> b!1996 (= lt!317 (tail!38 lm!258))))

(declare-fun b!1997 () Bool)

(declare-fun res!4510 () Bool)

(assert (=> b!1997 (=> (not res!4510) (not e!479))))

(declare-fun isEmpty!25 (ListLongMap!41) Bool)

(assert (=> b!1997 (= res!4510 (not (isEmpty!25 lm!258)))))

(declare-fun b!1998 () Bool)

(declare-fun size!66 (List!27) Int)

(assert (=> b!1998 (= e!480 (>= (size!66 (toList!36 lt!317)) (size!66 (toList!36 lm!258))))))

(assert (= (and start!238 res!4511) b!1997))

(assert (= (and b!1997 res!4510) b!1994))

(assert (= (and b!1994 res!4509) b!1996))

(assert (= (and b!1996 res!4508) b!1998))

(assert (= start!238 b!1995))

(declare-fun m!639 () Bool)

(assert (=> start!238 m!639))

(declare-fun m!641 () Bool)

(assert (=> start!238 m!641))

(declare-fun m!643 () Bool)

(assert (=> b!1997 m!643))

(declare-fun m!645 () Bool)

(assert (=> b!1996 m!645))

(declare-fun m!647 () Bool)

(assert (=> b!1996 m!647))

(declare-fun m!649 () Bool)

(assert (=> b!1994 m!649))

(declare-fun m!651 () Bool)

(assert (=> b!1998 m!651))

(declare-fun m!653 () Bool)

(assert (=> b!1998 m!653))

(push 1)

(assert (not b!1997))

(assert (not b_next!37))

(assert (not b!1998))

(assert (not start!238))

(assert (not b!1995))

(assert (not b!1994))

(assert b_and!91)

(assert (not b!1996))

(check-sat)

(pop 1)

(push 1)

(assert b_and!91)

(assert (not b_next!37))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!255 () Bool)

(declare-fun res!4550 () Bool)

(declare-fun e!513 () Bool)

(assert (=> d!255 (=> res!4550 e!513)))

(assert (=> d!255 (= res!4550 (is-Nil!24 (toList!36 lm!258)))))

(assert (=> d!255 (= (forall!20 (toList!36 lm!258) p!318) e!513)))

(declare-fun b!2043 () Bool)

(declare-fun e!514 () Bool)

(assert (=> b!2043 (= e!513 e!514)))

(declare-fun res!4551 () Bool)

(assert (=> b!2043 (=> (not res!4551) (not e!514))))

(declare-fun dynLambda!13 (Int tuple2!36) Bool)

(assert (=> b!2043 (= res!4551 (dynLambda!13 p!318 (h!589 (toList!36 lm!258))))))

(declare-fun b!2044 () Bool)

(assert (=> b!2044 (= e!514 (forall!20 (t!2076 (toList!36 lm!258)) p!318))))

(assert (= (and d!255 (not res!4550)) b!2043))

(assert (= (and b!2043 res!4551) b!2044))

(declare-fun b_lambda!111 () Bool)

(assert (=> (not b_lambda!111) (not b!2043)))

(declare-fun t!2082 () Bool)

(declare-fun tb!51 () Bool)

(assert (=> (and start!238 (= p!318 p!318) t!2082) tb!51))

(declare-fun result!75 () Bool)

(assert (=> tb!51 (= result!75 true)))

(assert (=> b!2043 t!2082))

(declare-fun b_and!99 () Bool)

(assert (= b_and!91 (and (=> t!2082 result!75) b_and!99)))

(declare-fun m!691 () Bool)

(assert (=> b!2043 m!691))

(declare-fun m!693 () Bool)

(assert (=> b!2044 m!693))

(assert (=> start!238 d!255))

(declare-fun d!259 () Bool)

(declare-fun isStrictlySorted!10 (List!27) Bool)

(assert (=> d!259 (= (inv!63 lm!258) (isStrictlySorted!10 (toList!36 lm!258)))))

(declare-fun bs!65 () Bool)

(assert (= bs!65 d!259))

(declare-fun m!703 () Bool)

(assert (=> bs!65 m!703))

(assert (=> start!238 d!259))

(declare-fun d!267 () Bool)

(assert (=> d!267 (= (head!749 (toList!36 lm!258)) (h!589 (toList!36 lm!258)))))

(assert (=> b!1994 d!267))

(declare-fun d!273 () Bool)

(declare-fun lt!326 () Int)

(assert (=> d!273 (>= lt!326 0)))

(declare-fun e!521 () Int)

(assert (=> d!273 (= lt!326 e!521)))

(declare-fun c!98 () Bool)

(assert (=> d!273 (= c!98 (is-Nil!24 (toList!36 lt!317)))))

(assert (=> d!273 (= (size!66 (toList!36 lt!317)) lt!326)))

(declare-fun b!2053 () Bool)

(assert (=> b!2053 (= e!521 0)))

(declare-fun b!2054 () Bool)

(assert (=> b!2054 (= e!521 (+ 1 (size!66 (t!2076 (toList!36 lt!317)))))))

(assert (= (and d!273 c!98) b!2053))

(assert (= (and d!273 (not c!98)) b!2054))

(declare-fun m!715 () Bool)

(assert (=> b!2054 m!715))

(assert (=> b!1998 d!273))

(declare-fun d!283 () Bool)

(declare-fun lt!329 () Int)

(assert (=> d!283 (>= lt!329 0)))

(declare-fun e!524 () Int)

(assert (=> d!283 (= lt!329 e!524)))

(declare-fun c!101 () Bool)

(assert (=> d!283 (= c!101 (is-Nil!24 (toList!36 lm!258)))))

(assert (=> d!283 (= (size!66 (toList!36 lm!258)) lt!329)))

(declare-fun b!2059 () Bool)

(assert (=> b!2059 (= e!524 0)))

(declare-fun b!2060 () Bool)

(assert (=> b!2060 (= e!524 (+ 1 (size!66 (t!2076 (toList!36 lm!258)))))))

(assert (= (and d!283 c!101) b!2059))

(assert (= (and d!283 (not c!101)) b!2060))

(declare-fun m!717 () Bool)

(assert (=> b!2060 m!717))

(assert (=> b!1998 d!283))

(declare-fun d!285 () Bool)

(declare-fun res!4556 () Bool)

(declare-fun e!527 () Bool)

(assert (=> d!285 (=> res!4556 e!527)))

(assert (=> d!285 (= res!4556 (is-Nil!24 (toList!36 lt!317)))))

(assert (=> d!285 (= (forall!20 (toList!36 lt!317) p!318) e!527)))

(declare-fun b!2065 () Bool)

(declare-fun e!528 () Bool)

(assert (=> b!2065 (= e!527 e!528)))

(declare-fun res!4557 () Bool)

(assert (=> b!2065 (=> (not res!4557) (not e!528))))

(assert (=> b!2065 (= res!4557 (dynLambda!13 p!318 (h!589 (toList!36 lt!317))))))

(declare-fun b!2066 () Bool)

(assert (=> b!2066 (= e!528 (forall!20 (t!2076 (toList!36 lt!317)) p!318))))

(assert (= (and d!285 (not res!4556)) b!2065))

(assert (= (and b!2065 res!4557) b!2066))

(declare-fun b_lambda!117 () Bool)

(assert (=> (not b_lambda!117) (not b!2065)))

(declare-fun t!2088 () Bool)

(declare-fun tb!57 () Bool)

(assert (=> (and start!238 (= p!318 p!318) t!2088) tb!57))

(declare-fun result!81 () Bool)

(assert (=> tb!57 (= result!81 true)))

(assert (=> b!2065 t!2088))

(declare-fun b_and!105 () Bool)

(assert (= b_and!99 (and (=> t!2088 result!81) b_and!105)))

(declare-fun m!719 () Bool)

(assert (=> b!2065 m!719))

(declare-fun m!721 () Bool)

(assert (=> b!2066 m!721))

(assert (=> b!1996 d!285))

(declare-fun d!287 () Bool)

(declare-fun tail!43 (List!27) List!27)

(assert (=> d!287 (= (tail!38 lm!258) (ListLongMap!42 (tail!43 (toList!36 lm!258))))))

(declare-fun bs!69 () Bool)

(assert (= bs!69 d!287))

(declare-fun m!731 () Bool)

(assert (=> bs!69 m!731))

(assert (=> b!1996 d!287))

(declare-fun d!295 () Bool)

(declare-fun isEmpty!30 (List!27) Bool)

(assert (=> d!295 (= (isEmpty!25 lm!258) (isEmpty!30 (toList!36 lm!258)))))

(declare-fun bs!70 () Bool)

(assert (= bs!70 d!295))

(declare-fun m!737 () Bool)

(assert (=> bs!70 m!737))

(assert (=> b!1997 d!295))

(declare-fun b!2086 () Bool)

(declare-fun e!540 () Bool)

(declare-fun tp_is_empty!27 () Bool)

(declare-fun tp!155 () Bool)

(assert (=> b!2086 (= e!540 (and tp_is_empty!27 tp!155))))

(assert (=> b!1995 (= tp!136 e!540)))

(assert (= (and b!1995 (is-Cons!23 (toList!36 lm!258))) b!2086))

(declare-fun b_lambda!125 () Bool)

(assert (= b_lambda!111 (or (and start!238 b_free!37) b_lambda!125)))

(declare-fun b_lambda!127 () Bool)

(assert (= b_lambda!117 (or (and start!238 b_free!37) b_lambda!127)))

(push 1)

(assert b_and!105)

(assert (not b_lambda!125))

(assert (not b!2066))

(assert (not b!2054))

(assert (not d!295))

(assert (not b_next!37))

(assert (not b_lambda!127))

(assert (not b!2086))

(assert tp_is_empty!27)

(assert (not b!2060))

(assert (not d!287))

(assert (not b!2044))

(assert (not d!259))

(check-sat)

(pop 1)

(push 1)

(assert b_and!105)

(assert (not b_next!37))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!313 () Bool)

(declare-fun lt!338 () Int)

(assert (=> d!313 (>= lt!338 0)))

(declare-fun e!550 () Int)

(assert (=> d!313 (= lt!338 e!550)))

(declare-fun c!110 () Bool)

(assert (=> d!313 (= c!110 (is-Nil!24 (t!2076 (toList!36 lm!258))))))

(assert (=> d!313 (= (size!66 (t!2076 (toList!36 lm!258))) lt!338)))

(declare-fun b!2100 () Bool)

(assert (=> b!2100 (= e!550 0)))

(declare-fun b!2101 () Bool)

(assert (=> b!2101 (= e!550 (+ 1 (size!66 (t!2076 (t!2076 (toList!36 lm!258))))))))

(assert (= (and d!313 c!110) b!2100))

(assert (= (and d!313 (not c!110)) b!2101))

(declare-fun m!753 () Bool)

(assert (=> b!2101 m!753))

(assert (=> b!2060 d!313))

(declare-fun d!317 () Bool)

(declare-fun res!4570 () Bool)

(declare-fun e!557 () Bool)

(assert (=> d!317 (=> res!4570 e!557)))

(assert (=> d!317 (= res!4570 (is-Nil!24 (t!2076 (toList!36 lm!258))))))

(assert (=> d!317 (= (forall!20 (t!2076 (toList!36 lm!258)) p!318) e!557)))

(declare-fun b!2108 () Bool)

(declare-fun e!559 () Bool)

(assert (=> b!2108 (= e!557 e!559)))

(declare-fun res!4571 () Bool)

(assert (=> b!2108 (=> (not res!4571) (not e!559))))

(assert (=> b!2108 (= res!4571 (dynLambda!13 p!318 (h!589 (t!2076 (toList!36 lm!258)))))))

(declare-fun b!2109 () Bool)

(assert (=> b!2109 (= e!559 (forall!20 (t!2076 (t!2076 (toList!36 lm!258))) p!318))))

(assert (= (and d!317 (not res!4570)) b!2108))

(assert (= (and b!2108 res!4571) b!2109))

(declare-fun b_lambda!139 () Bool)

(assert (=> (not b_lambda!139) (not b!2108)))

(declare-fun t!2098 () Bool)

(declare-fun tb!67 () Bool)

(assert (=> (and start!238 (= p!318 p!318) t!2098) tb!67))

(declare-fun result!97 () Bool)

(assert (=> tb!67 (= result!97 true)))

(assert (=> b!2108 t!2098))

(declare-fun b_and!115 () Bool)

(assert (= b_and!105 (and (=> t!2098 result!97) b_and!115)))

(declare-fun m!761 () Bool)

(assert (=> b!2108 m!761))

(declare-fun m!763 () Bool)

(assert (=> b!2109 m!763))

(assert (=> b!2044 d!317))

(declare-fun d!323 () Bool)

(assert (=> d!323 (= (isEmpty!30 (toList!36 lm!258)) (is-Nil!24 (toList!36 lm!258)))))

(assert (=> d!295 d!323))

(declare-fun d!327 () Bool)

(assert (=> d!327 (= (tail!43 (toList!36 lm!258)) (t!2076 (toList!36 lm!258)))))

(assert (=> d!287 d!327))

(declare-fun d!331 () Bool)

(declare-fun res!4582 () Bool)

(declare-fun e!572 () Bool)

(assert (=> d!331 (=> res!4582 e!572)))

(assert (=> d!331 (= res!4582 (is-Nil!24 (t!2076 (toList!36 lt!317))))))

(assert (=> d!331 (= (forall!20 (t!2076 (toList!36 lt!317)) p!318) e!572)))

(declare-fun b!2125 () Bool)

(declare-fun e!573 () Bool)

(assert (=> b!2125 (= e!572 e!573)))

(declare-fun res!4583 () Bool)

(assert (=> b!2125 (=> (not res!4583) (not e!573))))

(assert (=> b!2125 (= res!4583 (dynLambda!13 p!318 (h!589 (t!2076 (toList!36 lt!317)))))))

(declare-fun b!2126 () Bool)

(assert (=> b!2126 (= e!573 (forall!20 (t!2076 (t!2076 (toList!36 lt!317))) p!318))))

(assert (= (and d!331 (not res!4582)) b!2125))

(assert (= (and b!2125 res!4583) b!2126))

(declare-fun b_lambda!147 () Bool)

(assert (=> (not b_lambda!147) (not b!2125)))

(declare-fun t!2102 () Bool)

(declare-fun tb!71 () Bool)

(assert (=> (and start!238 (= p!318 p!318) t!2102) tb!71))

(declare-fun result!101 () Bool)

(assert (=> tb!71 (= result!101 true)))

(assert (=> b!2125 t!2102))

(declare-fun b_and!119 () Bool)

(assert (= b_and!115 (and (=> t!2102 result!101) b_and!119)))

(declare-fun m!775 () Bool)

(assert (=> b!2125 m!775))

(declare-fun m!777 () Bool)

(assert (=> b!2126 m!777))

(assert (=> b!2066 d!331))

(declare-fun 