; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2410 () Bool)

(assert start!2410)

(declare-fun b_free!487 () Bool)

(declare-fun b_next!487 () Bool)

(assert (=> start!2410 (= b_free!487 (not b_next!487))))

(declare-fun tp!2542 () Bool)

(declare-fun b_and!915 () Bool)

(assert (=> start!2410 (= tp!2542 b_and!915)))

(declare-fun res!11632 () Bool)

(declare-fun e!9313 () Bool)

(assert (=> start!2410 (=> (not res!11632) (not e!9313))))

(declare-datatypes ((B!608 0))(
  ( (B!609 (val!402 Int)) )
))
(declare-datatypes ((tuple2!586 0))(
  ( (tuple2!587 (_1!293 (_ BitVec 64)) (_2!293 B!608)) )
))
(declare-datatypes ((List!461 0))(
  ( (Nil!458) (Cons!457 (h!1023 tuple2!586) (t!2881 List!461)) )
))
(declare-datatypes ((ListLongMap!417 0))(
  ( (ListLongMap!418 (toList!224 List!461)) )
))
(declare-fun lm!238 () ListLongMap!417)

(declare-fun p!262 () Int)

(declare-fun forall!110 (List!461 Int) Bool)

(assert (=> start!2410 (= res!11632 (forall!110 (toList!224 lm!238) p!262))))

(assert (=> start!2410 e!9313))

(declare-fun e!9312 () Bool)

(declare-fun inv!784 (ListLongMap!417) Bool)

(assert (=> start!2410 (and (inv!784 lm!238) e!9312)))

(assert (=> start!2410 tp!2542))

(assert (=> start!2410 true))

(declare-fun b!15348 () Bool)

(declare-fun res!11631 () Bool)

(assert (=> b!15348 (=> (not res!11631) (not e!9313))))

(declare-datatypes ((List!462 0))(
  ( (Nil!459) (Cons!458 (h!1024 (_ BitVec 64)) (t!2882 List!462)) )
))
(declare-fun l!1612 () List!462)

(declare-fun isEmpty!123 (List!462) Bool)

(assert (=> b!15348 (= res!11631 (not (isEmpty!123 l!1612)))))

(declare-fun b!15349 () Bool)

(assert (=> b!15349 (= e!9313 (not (not (= l!1612 Nil!459))))))

(declare-fun lt!3720 () (_ BitVec 64))

(declare-fun -!12 (ListLongMap!417 (_ BitVec 64)) ListLongMap!417)

(assert (=> b!15349 (forall!110 (toList!224 (-!12 lm!238 lt!3720)) p!262)))

(declare-datatypes ((Unit!290 0))(
  ( (Unit!291) )
))
(declare-fun lt!3719 () Unit!290)

(declare-fun removeValidProp!5 (ListLongMap!417 Int (_ BitVec 64)) Unit!290)

(assert (=> b!15349 (= lt!3719 (removeValidProp!5 lm!238 p!262 lt!3720))))

(declare-fun head!803 (List!462) (_ BitVec 64))

(assert (=> b!15349 (= lt!3720 (head!803 l!1612))))

(declare-fun b!15350 () Bool)

(declare-fun tp!2543 () Bool)

(assert (=> b!15350 (= e!9312 tp!2543)))

(assert (= (and start!2410 res!11632) b!15348))

(assert (= (and b!15348 res!11631) b!15349))

(assert (= start!2410 b!15350))

(declare-fun m!10249 () Bool)

(assert (=> start!2410 m!10249))

(declare-fun m!10251 () Bool)

(assert (=> start!2410 m!10251))

(declare-fun m!10253 () Bool)

(assert (=> b!15348 m!10253))

(declare-fun m!10255 () Bool)

(assert (=> b!15349 m!10255))

(declare-fun m!10257 () Bool)

(assert (=> b!15349 m!10257))

(declare-fun m!10259 () Bool)

(assert (=> b!15349 m!10259))

(declare-fun m!10261 () Bool)

(assert (=> b!15349 m!10261))

(push 1)

(assert (not b!15348))

(assert (not b!15349))

(assert (not b!15350))

(assert b_and!915)

(assert (not start!2410))

(assert (not b_next!487))

(check-sat)

(pop 1)

(push 1)

(assert b_and!915)

(assert (not b_next!487))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2615 () Bool)

(declare-fun res!11659 () Bool)

(declare-fun e!9340 () Bool)

(assert (=> d!2615 (=> res!11659 e!9340)))

(assert (=> d!2615 (= res!11659 (is-Nil!458 (toList!224 lm!238)))))

(assert (=> d!2615 (= (forall!110 (toList!224 lm!238) p!262) e!9340)))

(declare-fun b!15383 () Bool)

(declare-fun e!9341 () Bool)

(assert (=> b!15383 (= e!9340 e!9341)))

(declare-fun res!11660 () Bool)

(assert (=> b!15383 (=> (not res!11660) (not e!9341))))

(declare-fun dynLambda!104 (Int tuple2!586) Bool)

(assert (=> b!15383 (= res!11660 (dynLambda!104 p!262 (h!1023 (toList!224 lm!238))))))

(declare-fun b!15384 () Bool)

(assert (=> b!15384 (= e!9341 (forall!110 (t!2881 (toList!224 lm!238)) p!262))))

(assert (= (and d!2615 (not res!11659)) b!15383))

(assert (= (and b!15383 res!11660) b!15384))

(declare-fun b_lambda!1009 () Bool)

(assert (=> (not b_lambda!1009) (not b!15383)))

(declare-fun t!2890 () Bool)

(declare-fun tb!413 () Bool)

(assert (=> (and start!2410 (= p!262 p!262) t!2890) tb!413))

(declare-fun result!731 () Bool)

(assert (=> tb!413 (= result!731 true)))

(assert (=> b!15383 t!2890))

(declare-fun b_and!923 () Bool)

(assert (= b_and!915 (and (=> t!2890 result!731) b_and!923)))

(declare-fun m!10295 () Bool)

(assert (=> b!15383 m!10295))

(declare-fun m!10297 () Bool)

(assert (=> b!15384 m!10297))

(assert (=> start!2410 d!2615))

(declare-fun d!2621 () Bool)

(declare-fun isStrictlySorted!139 (List!461) Bool)

(assert (=> d!2621 (= (inv!784 lm!238) (isStrictlySorted!139 (toList!224 lm!238)))))

(declare-fun bs!662 () Bool)

(assert (= bs!662 d!2621))

(declare-fun m!10303 () Bool)

(assert (=> bs!662 m!10303))

(assert (=> start!2410 d!2621))

(declare-fun d!2625 () Bool)

(declare-fun res!11663 () Bool)

(declare-fun e!9344 () Bool)

(assert (=> d!2625 (=> res!11663 e!9344)))

(assert (=> d!2625 (= res!11663 (is-Nil!458 (toList!224 (-!12 lm!238 lt!3720))))))

(assert (=> d!2625 (= (forall!110 (toList!224 (-!12 lm!238 lt!3720)) p!262) e!9344)))

(declare-fun b!15387 () Bool)

(declare-fun e!9345 () Bool)

(assert (=> b!15387 (= e!9344 e!9345)))

(declare-fun res!11664 () Bool)

(assert (=> b!15387 (=> (not res!11664) (not e!9345))))

(assert (=> b!15387 (= res!11664 (dynLambda!104 p!262 (h!1023 (toList!224 (-!12 lm!238 lt!3720)))))))

(declare-fun b!15388 () Bool)

(assert (=> b!15388 (= e!9345 (forall!110 (t!2881 (toList!224 (-!12 lm!238 lt!3720))) p!262))))

(assert (= (and d!2625 (not res!11663)) b!15387))

(assert (= (and b!15387 res!11664) b!15388))

(declare-fun b_lambda!1013 () Bool)

(assert (=> (not b_lambda!1013) (not b!15387)))

(declare-fun t!2894 () Bool)

(declare-fun tb!417 () Bool)

(assert (=> (and start!2410 (= p!262 p!262) t!2894) tb!417))

(declare-fun result!735 () Bool)

(assert (=> tb!417 (= result!735 true)))

(assert (=> b!15387 t!2894))

(declare-fun b_and!927 () Bool)

(assert (= b_and!923 (and (=> t!2894 result!735) b_and!927)))

(declare-fun m!10305 () Bool)

(assert (=> b!15387 m!10305))

(declare-fun m!10307 () Bool)

(assert (=> b!15388 m!10307))

(assert (=> b!15349 d!2625))

(declare-fun d!2627 () Bool)

(declare-fun lt!3744 () ListLongMap!417)

(declare-fun contains!186 (ListLongMap!417 (_ BitVec 64)) Bool)

(assert (=> d!2627 (not (contains!186 lt!3744 lt!3720))))

(declare-fun removeStrictlySorted!9 (List!461 (_ BitVec 64)) List!461)

(assert (=> d!2627 (= lt!3744 (ListLongMap!418 (removeStrictlySorted!9 (toList!224 lm!238) lt!3720)))))

(assert (=> d!2627 (= (-!12 lm!238 lt!3720) lt!3744)))

(declare-fun bs!666 () Bool)

(assert (= bs!666 d!2627))

(declare-fun m!10323 () Bool)

(assert (=> bs!666 m!10323))

(declare-fun m!10325 () Bool)

(assert (=> bs!666 m!10325))

(assert (=> b!15349 d!2627))

(declare-fun d!2639 () Bool)

(assert (=> d!2639 (forall!110 (toList!224 (-!12 lm!238 lt!3720)) p!262)))

(declare-fun lt!3750 () Unit!290)

(declare-fun choose!174 (ListLongMap!417 Int (_ BitVec 64)) Unit!290)

(assert (=> d!2639 (= lt!3750 (choose!174 lm!238 p!262 lt!3720))))

(assert (=> d!2639 (forall!110 (toList!224 lm!238) p!262)))

(assert (=> d!2639 (= (removeValidProp!5 lm!238 p!262 lt!3720) lt!3750)))

(declare-fun bs!669 () Bool)

(assert (= bs!669 d!2639))

(assert (=> bs!669 m!10255))

(assert (=> bs!669 m!10257))

(declare-fun m!10335 () Bool)

(assert (=> bs!669 m!10335))

(assert (=> bs!669 m!10249))

(assert (=> b!15349 d!2639))

(declare-fun d!2649 () Bool)

(assert (=> d!2649 (= (head!803 l!1612) (h!1024 l!1612))))

(assert (=> b!15349 d!2649))

(declare-fun d!2651 () Bool)

(assert (=> d!2651 (= (isEmpty!123 l!1612) (is-Nil!459 l!1612))))

(assert (=> b!15348 d!2651))

(declare-fun b!15406 () Bool)

(declare-fun e!9357 () Bool)

(declare-fun tp_is_empty!783 () Bool)

(declare-fun tp!2563 () Bool)

(assert (=> b!15406 (= e!9357 (and tp_is_empty!783 tp!2563))))

(assert (=> b!15350 (= tp!2543 e!9357)))

(assert (= (and b!15350 (is-Cons!457 (toList!224 lm!238))) b!15406))

(declare-fun b_lambda!1023 () Bool)

(assert (= b_lambda!1009 (or (and start!2410 b_free!487) b_lambda!1023)))

(declare-fun b_lambda!1025 () Bool)

(assert (= b_lambda!1013 (or (and start!2410 b_free!487) b_lambda!1025)))

(push 1)

