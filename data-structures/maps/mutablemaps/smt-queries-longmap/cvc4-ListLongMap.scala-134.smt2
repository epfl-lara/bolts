; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2372 () Bool)

(assert start!2372)

(declare-fun b_free!485 () Bool)

(declare-fun b_next!485 () Bool)

(assert (=> start!2372 (= b_free!485 (not b_next!485))))

(declare-fun tp!2528 () Bool)

(declare-fun b_and!901 () Bool)

(assert (=> start!2372 (= tp!2528 b_and!901)))

(declare-fun res!11602 () Bool)

(declare-fun e!9274 () Bool)

(assert (=> start!2372 (=> (not res!11602) (not e!9274))))

(declare-datatypes ((B!606 0))(
  ( (B!607 (val!401 Int)) )
))
(declare-datatypes ((tuple2!584 0))(
  ( (tuple2!585 (_1!292 (_ BitVec 64)) (_2!292 B!606)) )
))
(declare-datatypes ((List!459 0))(
  ( (Nil!456) (Cons!455 (h!1021 tuple2!584) (t!2867 List!459)) )
))
(declare-datatypes ((ListLongMap!415 0))(
  ( (ListLongMap!416 (toList!223 List!459)) )
))
(declare-fun lm!238 () ListLongMap!415)

(declare-fun p!262 () Int)

(declare-fun forall!109 (List!459 Int) Bool)

(assert (=> start!2372 (= res!11602 (forall!109 (toList!223 lm!238) p!262))))

(assert (=> start!2372 e!9274))

(declare-fun e!9273 () Bool)

(declare-fun inv!778 (ListLongMap!415) Bool)

(assert (=> start!2372 (and (inv!778 lm!238) e!9273)))

(assert (=> start!2372 tp!2528))

(assert (=> start!2372 true))

(declare-fun b!15300 () Bool)

(declare-fun res!11601 () Bool)

(assert (=> b!15300 (=> (not res!11601) (not e!9274))))

(declare-datatypes ((List!460 0))(
  ( (Nil!457) (Cons!456 (h!1022 (_ BitVec 64)) (t!2868 List!460)) )
))
(declare-fun l!1612 () List!460)

(declare-fun isEmpty!122 (List!460) Bool)

(assert (=> b!15300 (= res!11601 (not (isEmpty!122 l!1612)))))

(declare-fun b!15301 () Bool)

(assert (=> b!15301 (= e!9274 (not (not (= l!1612 Nil!457))))))

(declare-fun lt!3696 () (_ BitVec 64))

(declare-fun -!11 (ListLongMap!415 (_ BitVec 64)) ListLongMap!415)

(assert (=> b!15301 (forall!109 (toList!223 (-!11 lm!238 lt!3696)) p!262)))

(declare-datatypes ((Unit!288 0))(
  ( (Unit!289) )
))
(declare-fun lt!3695 () Unit!288)

(declare-fun removeValidProp!4 (ListLongMap!415 Int (_ BitVec 64)) Unit!288)

(assert (=> b!15301 (= lt!3695 (removeValidProp!4 lm!238 p!262 lt!3696))))

(declare-fun head!802 (List!460) (_ BitVec 64))

(assert (=> b!15301 (= lt!3696 (head!802 l!1612))))

(declare-fun b!15302 () Bool)

(declare-fun tp!2527 () Bool)

(assert (=> b!15302 (= e!9273 tp!2527)))

(assert (= (and start!2372 res!11602) b!15300))

(assert (= (and b!15300 res!11601) b!15301))

(assert (= start!2372 b!15302))

(declare-fun m!10187 () Bool)

(assert (=> start!2372 m!10187))

(declare-fun m!10189 () Bool)

(assert (=> start!2372 m!10189))

(declare-fun m!10191 () Bool)

(assert (=> b!15300 m!10191))

(declare-fun m!10193 () Bool)

(assert (=> b!15301 m!10193))

(declare-fun m!10195 () Bool)

(assert (=> b!15301 m!10195))

(declare-fun m!10197 () Bool)

(assert (=> b!15301 m!10197))

(declare-fun m!10199 () Bool)

(assert (=> b!15301 m!10199))

(push 1)

(assert b_and!901)

(assert (not b_next!485))

(assert (not b!15301))

(assert (not b!15300))

(assert (not b!15302))

(assert (not start!2372))

(check-sat)

(pop 1)

(push 1)

(assert b_and!901)

(assert (not b_next!485))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2571 () Bool)

(declare-fun res!11617 () Bool)

(declare-fun e!9289 () Bool)

(assert (=> d!2571 (=> res!11617 e!9289)))

(assert (=> d!2571 (= res!11617 (is-Nil!456 (toList!223 (-!11 lm!238 lt!3696))))))

(assert (=> d!2571 (= (forall!109 (toList!223 (-!11 lm!238 lt!3696)) p!262) e!9289)))

(declare-fun b!15317 () Bool)

(declare-fun e!9290 () Bool)

(assert (=> b!15317 (= e!9289 e!9290)))

(declare-fun res!11618 () Bool)

(assert (=> b!15317 (=> (not res!11618) (not e!9290))))

(declare-fun dynLambda!101 (Int tuple2!584) Bool)

(assert (=> b!15317 (= res!11618 (dynLambda!101 p!262 (h!1021 (toList!223 (-!11 lm!238 lt!3696)))))))

(declare-fun b!15318 () Bool)

(assert (=> b!15318 (= e!9290 (forall!109 (t!2867 (toList!223 (-!11 lm!238 lt!3696))) p!262))))

(assert (= (and d!2571 (not res!11617)) b!15317))

(assert (= (and b!15317 res!11618) b!15318))

(declare-fun b_lambda!985 () Bool)

(assert (=> (not b_lambda!985) (not b!15317)))

(declare-fun t!2872 () Bool)

(declare-fun tb!401 () Bool)

(assert (=> (and start!2372 (= p!262 p!262) t!2872) tb!401))

(declare-fun result!713 () Bool)

(assert (=> tb!401 (= result!713 true)))

(assert (=> b!15317 t!2872))

(declare-fun b_and!905 () Bool)

(assert (= b_and!901 (and (=> t!2872 result!713) b_and!905)))

(declare-fun m!10207 () Bool)

(assert (=> b!15317 m!10207))

(declare-fun m!10209 () Bool)

(assert (=> b!15318 m!10209))

(assert (=> b!15301 d!2571))

(declare-fun d!2579 () Bool)

(declare-fun lt!3705 () ListLongMap!415)

(declare-fun contains!183 (ListLongMap!415 (_ BitVec 64)) Bool)

(assert (=> d!2579 (not (contains!183 lt!3705 lt!3696))))

(declare-fun removeStrictlySorted!6 (List!459 (_ BitVec 64)) List!459)

(assert (=> d!2579 (= lt!3705 (ListLongMap!416 (removeStrictlySorted!6 (toList!223 lm!238) lt!3696)))))

(assert (=> d!2579 (= (-!11 lm!238 lt!3696) lt!3705)))

(declare-fun bs!653 () Bool)

(assert (= bs!653 d!2579))

(declare-fun m!10225 () Bool)

(assert (=> bs!653 m!10225))

(declare-fun m!10229 () Bool)

(assert (=> bs!653 m!10229))

(assert (=> b!15301 d!2579))

(declare-fun d!2589 () Bool)

(assert (=> d!2589 (forall!109 (toList!223 (-!11 lm!238 lt!3696)) p!262)))

(declare-fun lt!3713 () Unit!288)

(declare-fun choose!171 (ListLongMap!415 Int (_ BitVec 64)) Unit!288)

(assert (=> d!2589 (= lt!3713 (choose!171 lm!238 p!262 lt!3696))))

(assert (=> d!2589 (forall!109 (toList!223 lm!238) p!262)))

(assert (=> d!2589 (= (removeValidProp!4 lm!238 p!262 lt!3696) lt!3713)))

(declare-fun bs!655 () Bool)

(assert (= bs!655 d!2589))

(assert (=> bs!655 m!10193))

(assert (=> bs!655 m!10195))

(declare-fun m!10233 () Bool)

(assert (=> bs!655 m!10233))

(assert (=> bs!655 m!10187))

(assert (=> b!15301 d!2589))

(declare-fun d!2595 () Bool)

(assert (=> d!2595 (= (head!802 l!1612) (h!1022 l!1612))))

(assert (=> b!15301 d!2595))

(declare-fun d!2599 () Bool)

(declare-fun res!11623 () Bool)

(declare-fun e!9298 () Bool)

(assert (=> d!2599 (=> res!11623 e!9298)))

(assert (=> d!2599 (= res!11623 (is-Nil!456 (toList!223 lm!238)))))

(assert (=> d!2599 (= (forall!109 (toList!223 lm!238) p!262) e!9298)))

(declare-fun b!15328 () Bool)

(declare-fun e!9299 () Bool)

(assert (=> b!15328 (= e!9298 e!9299)))

(declare-fun res!11624 () Bool)

(assert (=> b!15328 (=> (not res!11624) (not e!9299))))

(assert (=> b!15328 (= res!11624 (dynLambda!101 p!262 (h!1021 (toList!223 lm!238))))))

(declare-fun b!15329 () Bool)

(assert (=> b!15329 (= e!9299 (forall!109 (t!2867 (toList!223 lm!238)) p!262))))

(assert (= (and d!2599 (not res!11623)) b!15328))

(assert (= (and b!15328 res!11624) b!15329))

(declare-fun b_lambda!995 () Bool)

(assert (=> (not b_lambda!995) (not b!15328)))

(declare-fun t!2878 () Bool)

(declare-fun tb!407 () Bool)

(assert (=> (and start!2372 (= p!262 p!262) t!2878) tb!407))

(declare-fun result!721 () Bool)

(assert (=> tb!407 (= result!721 true)))

(assert (=> b!15328 t!2878))

(declare-fun b_and!911 () Bool)

(assert (= b_and!905 (and (=> t!2878 result!721) b_and!911)))

(declare-fun m!10237 () Bool)

(assert (=> b!15328 m!10237))

(declare-fun m!10239 () Bool)

(assert (=> b!15329 m!10239))

(assert (=> start!2372 d!2599))

(declare-fun d!2603 () Bool)

(declare-fun isStrictlySorted!138 (List!459) Bool)

(assert (=> d!2603 (= (inv!778 lm!238) (isStrictlySorted!138 (toList!223 lm!238)))))

