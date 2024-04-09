; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2412 () Bool)

(assert start!2412)

(declare-fun b_free!489 () Bool)

(declare-fun b_next!489 () Bool)

(assert (=> start!2412 (= b_free!489 (not b_next!489))))

(declare-fun tp!2548 () Bool)

(declare-fun b_and!917 () Bool)

(assert (=> start!2412 (= tp!2548 b_and!917)))

(declare-fun res!11638 () Bool)

(declare-fun e!9318 () Bool)

(assert (=> start!2412 (=> (not res!11638) (not e!9318))))

(declare-datatypes ((B!610 0))(
  ( (B!611 (val!403 Int)) )
))
(declare-datatypes ((tuple2!588 0))(
  ( (tuple2!589 (_1!294 (_ BitVec 64)) (_2!294 B!610)) )
))
(declare-datatypes ((List!463 0))(
  ( (Nil!460) (Cons!459 (h!1025 tuple2!588) (t!2883 List!463)) )
))
(declare-datatypes ((ListLongMap!419 0))(
  ( (ListLongMap!420 (toList!225 List!463)) )
))
(declare-fun lm!238 () ListLongMap!419)

(declare-fun p!262 () Int)

(declare-fun forall!111 (List!463 Int) Bool)

(assert (=> start!2412 (= res!11638 (forall!111 (toList!225 lm!238) p!262))))

(assert (=> start!2412 e!9318))

(declare-fun e!9319 () Bool)

(declare-fun inv!785 (ListLongMap!419) Bool)

(assert (=> start!2412 (and (inv!785 lm!238) e!9319)))

(assert (=> start!2412 tp!2548))

(assert (=> start!2412 true))

(declare-fun b!15357 () Bool)

(declare-fun res!11637 () Bool)

(assert (=> b!15357 (=> (not res!11637) (not e!9318))))

(declare-datatypes ((List!464 0))(
  ( (Nil!461) (Cons!460 (h!1026 (_ BitVec 64)) (t!2884 List!464)) )
))
(declare-fun l!1612 () List!464)

(declare-fun isEmpty!124 (List!464) Bool)

(assert (=> b!15357 (= res!11637 (not (isEmpty!124 l!1612)))))

(declare-fun b!15358 () Bool)

(assert (=> b!15358 (= e!9318 (not (not (= l!1612 Nil!461))))))

(declare-fun lt!3725 () (_ BitVec 64))

(declare-fun -!13 (ListLongMap!419 (_ BitVec 64)) ListLongMap!419)

(assert (=> b!15358 (forall!111 (toList!225 (-!13 lm!238 lt!3725)) p!262)))

(declare-datatypes ((Unit!292 0))(
  ( (Unit!293) )
))
(declare-fun lt!3726 () Unit!292)

(declare-fun removeValidProp!6 (ListLongMap!419 Int (_ BitVec 64)) Unit!292)

(assert (=> b!15358 (= lt!3726 (removeValidProp!6 lm!238 p!262 lt!3725))))

(declare-fun head!804 (List!464) (_ BitVec 64))

(assert (=> b!15358 (= lt!3725 (head!804 l!1612))))

(declare-fun b!15359 () Bool)

(declare-fun tp!2549 () Bool)

(assert (=> b!15359 (= e!9319 tp!2549)))

(assert (= (and start!2412 res!11638) b!15357))

(assert (= (and b!15357 res!11637) b!15358))

(assert (= start!2412 b!15359))

(declare-fun m!10263 () Bool)

(assert (=> start!2412 m!10263))

(declare-fun m!10265 () Bool)

(assert (=> start!2412 m!10265))

(declare-fun m!10267 () Bool)

(assert (=> b!15357 m!10267))

(declare-fun m!10269 () Bool)

(assert (=> b!15358 m!10269))

(declare-fun m!10271 () Bool)

(assert (=> b!15358 m!10271))

(declare-fun m!10273 () Bool)

(assert (=> b!15358 m!10273))

(declare-fun m!10275 () Bool)

(assert (=> b!15358 m!10275))

(check-sat b_and!917 (not b!15357) (not b!15358) (not b_next!489) (not b!15359) (not start!2412))
(check-sat b_and!917 (not b_next!489))
(get-model)

(declare-fun d!2617 () Bool)

(declare-fun res!11661 () Bool)

(declare-fun e!9342 () Bool)

(assert (=> d!2617 (=> res!11661 e!9342)))

(get-info :version)

(assert (=> d!2617 (= res!11661 ((_ is Nil!460) (toList!225 (-!13 lm!238 lt!3725))))))

(assert (=> d!2617 (= (forall!111 (toList!225 (-!13 lm!238 lt!3725)) p!262) e!9342)))

(declare-fun b!15385 () Bool)

(declare-fun e!9343 () Bool)

(assert (=> b!15385 (= e!9342 e!9343)))

(declare-fun res!11662 () Bool)

(assert (=> b!15385 (=> (not res!11662) (not e!9343))))

(declare-fun dynLambda!105 (Int tuple2!588) Bool)

(assert (=> b!15385 (= res!11662 (dynLambda!105 p!262 (h!1025 (toList!225 (-!13 lm!238 lt!3725)))))))

(declare-fun b!15386 () Bool)

(assert (=> b!15386 (= e!9343 (forall!111 (t!2883 (toList!225 (-!13 lm!238 lt!3725))) p!262))))

(assert (= (and d!2617 (not res!11661)) b!15385))

(assert (= (and b!15385 res!11662) b!15386))

(declare-fun b_lambda!1011 () Bool)

(assert (=> (not b_lambda!1011) (not b!15385)))

(declare-fun t!2892 () Bool)

(declare-fun tb!415 () Bool)

(assert (=> (and start!2412 (= p!262 p!262) t!2892) tb!415))

(declare-fun result!733 () Bool)

(assert (=> tb!415 (= result!733 true)))

(assert (=> b!15385 t!2892))

(declare-fun b_and!925 () Bool)

(assert (= b_and!917 (and (=> t!2892 result!733) b_and!925)))

(declare-fun m!10299 () Bool)

(assert (=> b!15385 m!10299))

(declare-fun m!10301 () Bool)

(assert (=> b!15386 m!10301))

(assert (=> b!15358 d!2617))

(declare-fun d!2623 () Bool)

(declare-fun lt!3740 () ListLongMap!419)

(declare-fun contains!185 (ListLongMap!419 (_ BitVec 64)) Bool)

(assert (=> d!2623 (not (contains!185 lt!3740 lt!3725))))

(declare-fun removeStrictlySorted!8 (List!463 (_ BitVec 64)) List!463)

(assert (=> d!2623 (= lt!3740 (ListLongMap!420 (removeStrictlySorted!8 (toList!225 lm!238) lt!3725)))))

(assert (=> d!2623 (= (-!13 lm!238 lt!3725) lt!3740)))

(declare-fun bs!664 () Bool)

(assert (= bs!664 d!2623))

(declare-fun m!10313 () Bool)

(assert (=> bs!664 m!10313))

(declare-fun m!10315 () Bool)

(assert (=> bs!664 m!10315))

(assert (=> b!15358 d!2623))

(declare-fun d!2631 () Bool)

(assert (=> d!2631 (forall!111 (toList!225 (-!13 lm!238 lt!3725)) p!262)))

(declare-fun lt!3747 () Unit!292)

(declare-fun choose!173 (ListLongMap!419 Int (_ BitVec 64)) Unit!292)

(assert (=> d!2631 (= lt!3747 (choose!173 lm!238 p!262 lt!3725))))

(assert (=> d!2631 (forall!111 (toList!225 lm!238) p!262)))

(assert (=> d!2631 (= (removeValidProp!6 lm!238 p!262 lt!3725) lt!3747)))

(declare-fun bs!668 () Bool)

(assert (= bs!668 d!2631))

(assert (=> bs!668 m!10269))

(assert (=> bs!668 m!10271))

(declare-fun m!10329 () Bool)

(assert (=> bs!668 m!10329))

(assert (=> bs!668 m!10263))

(assert (=> b!15358 d!2631))

(declare-fun d!2643 () Bool)

(assert (=> d!2643 (= (head!804 l!1612) (h!1026 l!1612))))

(assert (=> b!15358 d!2643))

(declare-fun d!2645 () Bool)

(declare-fun res!11667 () Bool)

(declare-fun e!9351 () Bool)

(assert (=> d!2645 (=> res!11667 e!9351)))

(assert (=> d!2645 (= res!11667 ((_ is Nil!460) (toList!225 lm!238)))))

(assert (=> d!2645 (= (forall!111 (toList!225 lm!238) p!262) e!9351)))

(declare-fun b!15396 () Bool)

(declare-fun e!9352 () Bool)

(assert (=> b!15396 (= e!9351 e!9352)))

(declare-fun res!11668 () Bool)

(assert (=> b!15396 (=> (not res!11668) (not e!9352))))

(assert (=> b!15396 (= res!11668 (dynLambda!105 p!262 (h!1025 (toList!225 lm!238))))))

(declare-fun b!15397 () Bool)

(assert (=> b!15397 (= e!9352 (forall!111 (t!2883 (toList!225 lm!238)) p!262))))

(assert (= (and d!2645 (not res!11667)) b!15396))

(assert (= (and b!15396 res!11668) b!15397))

(declare-fun b_lambda!1021 () Bool)

(assert (=> (not b_lambda!1021) (not b!15396)))

(declare-fun t!2898 () Bool)

(declare-fun tb!421 () Bool)

(assert (=> (and start!2412 (= p!262 p!262) t!2898) tb!421))

(declare-fun result!741 () Bool)

(assert (=> tb!421 (= result!741 true)))

(assert (=> b!15396 t!2898))

(declare-fun b_and!931 () Bool)

(assert (= b_and!925 (and (=> t!2898 result!741) b_and!931)))

(declare-fun m!10331 () Bool)

(assert (=> b!15396 m!10331))

(declare-fun m!10333 () Bool)

(assert (=> b!15397 m!10333))

(assert (=> start!2412 d!2645))

(declare-fun d!2647 () Bool)

(declare-fun isStrictlySorted!140 (List!463) Bool)

(assert (=> d!2647 (= (inv!785 lm!238) (isStrictlySorted!140 (toList!225 lm!238)))))

(declare-fun bs!670 () Bool)

(assert (= bs!670 d!2647))

(declare-fun m!10337 () Bool)

(assert (=> bs!670 m!10337))

(assert (=> start!2412 d!2647))

(declare-fun d!2653 () Bool)

(assert (=> d!2653 (= (isEmpty!124 l!1612) ((_ is Nil!461) l!1612))))

(assert (=> b!15357 d!2653))

(declare-fun b!15407 () Bool)

(declare-fun e!9358 () Bool)

(declare-fun tp_is_empty!785 () Bool)

(declare-fun tp!2564 () Bool)

(assert (=> b!15407 (= e!9358 (and tp_is_empty!785 tp!2564))))

(assert (=> b!15359 (= tp!2549 e!9358)))

(assert (= (and b!15359 ((_ is Cons!459) (toList!225 lm!238))) b!15407))

(declare-fun b_lambda!1027 () Bool)

(assert (= b_lambda!1021 (or (and start!2412 b_free!489) b_lambda!1027)))

(declare-fun b_lambda!1029 () Bool)

(assert (= b_lambda!1011 (or (and start!2412 b_free!489) b_lambda!1029)))

(check-sat (not b_lambda!1027) b_and!931 (not d!2631) (not b!15407) (not d!2647) (not b_next!489) (not d!2623) (not b!15386) tp_is_empty!785 (not b_lambda!1029) (not b!15397))
(check-sat b_and!931 (not b_next!489))
