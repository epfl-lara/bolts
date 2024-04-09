; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2414 () Bool)

(assert start!2414)

(declare-fun b_free!491 () Bool)

(declare-fun b_next!491 () Bool)

(assert (=> start!2414 (= b_free!491 (not b_next!491))))

(declare-fun tp!2554 () Bool)

(declare-fun b_and!919 () Bool)

(assert (=> start!2414 (= tp!2554 b_and!919)))

(declare-fun res!11643 () Bool)

(declare-fun e!9325 () Bool)

(assert (=> start!2414 (=> (not res!11643) (not e!9325))))

(declare-datatypes ((B!612 0))(
  ( (B!613 (val!404 Int)) )
))
(declare-datatypes ((tuple2!590 0))(
  ( (tuple2!591 (_1!295 (_ BitVec 64)) (_2!295 B!612)) )
))
(declare-datatypes ((List!465 0))(
  ( (Nil!462) (Cons!461 (h!1027 tuple2!590) (t!2885 List!465)) )
))
(declare-datatypes ((ListLongMap!421 0))(
  ( (ListLongMap!422 (toList!226 List!465)) )
))
(declare-fun lm!238 () ListLongMap!421)

(declare-fun p!262 () Int)

(declare-fun forall!112 (List!465 Int) Bool)

(assert (=> start!2414 (= res!11643 (forall!112 (toList!226 lm!238) p!262))))

(assert (=> start!2414 e!9325))

(declare-fun e!9324 () Bool)

(declare-fun inv!786 (ListLongMap!421) Bool)

(assert (=> start!2414 (and (inv!786 lm!238) e!9324)))

(assert (=> start!2414 tp!2554))

(assert (=> start!2414 true))

(declare-fun b!15366 () Bool)

(declare-fun res!11644 () Bool)

(assert (=> b!15366 (=> (not res!11644) (not e!9325))))

(declare-datatypes ((List!466 0))(
  ( (Nil!463) (Cons!462 (h!1028 (_ BitVec 64)) (t!2886 List!466)) )
))
(declare-fun l!1612 () List!466)

(declare-fun isEmpty!125 (List!466) Bool)

(assert (=> b!15366 (= res!11644 (not (isEmpty!125 l!1612)))))

(declare-fun b!15367 () Bool)

(assert (=> b!15367 (= e!9325 (not (not (= l!1612 Nil!463))))))

(declare-fun lt!3732 () (_ BitVec 64))

(declare-fun -!14 (ListLongMap!421 (_ BitVec 64)) ListLongMap!421)

(assert (=> b!15367 (forall!112 (toList!226 (-!14 lm!238 lt!3732)) p!262)))

(declare-datatypes ((Unit!294 0))(
  ( (Unit!295) )
))
(declare-fun lt!3731 () Unit!294)

(declare-fun removeValidProp!7 (ListLongMap!421 Int (_ BitVec 64)) Unit!294)

(assert (=> b!15367 (= lt!3731 (removeValidProp!7 lm!238 p!262 lt!3732))))

(declare-fun head!805 (List!466) (_ BitVec 64))

(assert (=> b!15367 (= lt!3732 (head!805 l!1612))))

(declare-fun b!15368 () Bool)

(declare-fun tp!2555 () Bool)

(assert (=> b!15368 (= e!9324 tp!2555)))

(assert (= (and start!2414 res!11643) b!15366))

(assert (= (and b!15366 res!11644) b!15367))

(assert (= start!2414 b!15368))

(declare-fun m!10277 () Bool)

(assert (=> start!2414 m!10277))

(declare-fun m!10279 () Bool)

(assert (=> start!2414 m!10279))

(declare-fun m!10281 () Bool)

(assert (=> b!15366 m!10281))

(declare-fun m!10283 () Bool)

(assert (=> b!15367 m!10283))

(declare-fun m!10285 () Bool)

(assert (=> b!15367 m!10285))

(declare-fun m!10287 () Bool)

(assert (=> b!15367 m!10287))

(declare-fun m!10289 () Bool)

(assert (=> b!15367 m!10289))

(push 1)

(assert (not b!15366))

(assert (not b!15368))

(assert b_and!919)

(assert (not b!15367))

(assert (not start!2414))

(assert (not b_next!491))

(check-sat)

(pop 1)

(push 1)

(assert b_and!919)

(assert (not b_next!491))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2613 () Bool)

(declare-fun res!11653 () Bool)

(declare-fun e!9334 () Bool)

(assert (=> d!2613 (=> res!11653 e!9334)))

(assert (=> d!2613 (= res!11653 (is-Nil!462 (toList!226 (-!14 lm!238 lt!3732))))))

(assert (=> d!2613 (= (forall!112 (toList!226 (-!14 lm!238 lt!3732)) p!262) e!9334)))

(declare-fun b!15377 () Bool)

(declare-fun e!9335 () Bool)

(assert (=> b!15377 (= e!9334 e!9335)))

(declare-fun res!11654 () Bool)

(assert (=> b!15377 (=> (not res!11654) (not e!9335))))

(declare-fun dynLambda!103 (Int tuple2!590) Bool)

(assert (=> b!15377 (= res!11654 (dynLambda!103 p!262 (h!1027 (toList!226 (-!14 lm!238 lt!3732)))))))

(declare-fun b!15378 () Bool)

(assert (=> b!15378 (= e!9335 (forall!112 (t!2885 (toList!226 (-!14 lm!238 lt!3732))) p!262))))

(assert (= (and d!2613 (not res!11653)) b!15377))

(assert (= (and b!15377 res!11654) b!15378))

(declare-fun b_lambda!1007 () Bool)

(assert (=> (not b_lambda!1007) (not b!15377)))

(declare-fun t!2888 () Bool)

(declare-fun tb!411 () Bool)

(assert (=> (and start!2414 (= p!262 p!262) t!2888) tb!411))

(declare-fun result!729 () Bool)

(assert (=> tb!411 (= result!729 true)))

(assert (=> b!15377 t!2888))

(declare-fun b_and!921 () Bool)

(assert (= b_and!919 (and (=> t!2888 result!729) b_and!921)))

(declare-fun m!10291 () Bool)

(assert (=> b!15377 m!10291))

(declare-fun m!10293 () Bool)

(assert (=> b!15378 m!10293))

(assert (=> b!15367 d!2613))

(declare-fun d!2619 () Bool)

(declare-fun lt!3735 () ListLongMap!421)

(declare-fun contains!184 (ListLongMap!421 (_ BitVec 64)) Bool)

(assert (=> d!2619 (not (contains!184 lt!3735 lt!3732))))

(declare-fun removeStrictlySorted!7 (List!465 (_ BitVec 64)) List!465)

(assert (=> d!2619 (= lt!3735 (ListLongMap!422 (removeStrictlySorted!7 (toList!226 lm!238) lt!3732)))))

(assert (=> d!2619 (= (-!14 lm!238 lt!3732) lt!3735)))

(declare-fun bs!663 () Bool)

(assert (= bs!663 d!2619))

(declare-fun m!10309 () Bool)

(assert (=> bs!663 m!10309))

(declare-fun m!10311 () Bool)

(assert (=> bs!663 m!10311))

(assert (=> b!15367 d!2619))

(declare-fun d!2629 () Bool)

(assert (=> d!2629 (forall!112 (toList!226 (-!14 lm!238 lt!3732)) p!262)))

(declare-fun lt!3741 () Unit!294)

(declare-fun choose!172 (ListLongMap!421 Int (_ BitVec 64)) Unit!294)

(assert (=> d!2629 (= lt!3741 (choose!172 lm!238 p!262 lt!3732))))

(assert (=> d!2629 (forall!112 (toList!226 lm!238) p!262)))

(assert (=> d!2629 (= (removeValidProp!7 lm!238 p!262 lt!3732) lt!3741)))

(declare-fun bs!665 () Bool)

(assert (= bs!665 d!2629))

(assert (=> bs!665 m!10283))

(assert (=> bs!665 m!10285))

(declare-fun m!10317 () Bool)

(assert (=> bs!665 m!10317))

(assert (=> bs!665 m!10277))

(assert (=> b!15367 d!2629))

(declare-fun d!2633 () Bool)

(assert (=> d!2633 (= (head!805 l!1612) (h!1028 l!1612))))

(assert (=> b!15367 d!2633))

(declare-fun d!2635 () Bool)

(declare-fun res!11665 () Bool)

(declare-fun e!9346 () Bool)

(assert (=> d!2635 (=> res!11665 e!9346)))

(assert (=> d!2635 (= res!11665 (is-Nil!462 (toList!226 lm!238)))))

(assert (=> d!2635 (= (forall!112 (toList!226 lm!238) p!262) e!9346)))

(declare-fun b!15389 () Bool)

(declare-fun e!9347 () Bool)

(assert (=> b!15389 (= e!9346 e!9347)))

(declare-fun res!11666 () Bool)

(assert (=> b!15389 (=> (not res!11666) (not e!9347))))

(assert (=> b!15389 (= res!11666 (dynLambda!103 p!262 (h!1027 (toList!226 lm!238))))))

(declare-fun b!15390 () Bool)

(assert (=> b!15390 (= e!9347 (forall!112 (t!2885 (toList!226 lm!238)) p!262))))

(assert (= (and d!2635 (not res!11665)) b!15389))

(assert (= (and b!15389 res!11666) b!15390))

(declare-fun b_lambda!1015 () Bool)

(assert (=> (not b_lambda!1015) (not b!15389)))

(declare-fun t!2896 () Bool)

(declare-fun tb!419 () Bool)

(assert (=> (and start!2414 (= p!262 p!262) t!2896) tb!419))

(declare-fun result!737 () Bool)

(assert (=> tb!419 (= result!737 true)))

(assert (=> b!15389 t!2896))

(declare-fun b_and!929 () Bool)

(assert (= b_and!921 (and (=> t!2896 result!737) b_and!929)))

(declare-fun m!10319 () Bool)

(assert (=> b!15389 m!10319))

(declare-fun m!10321 () Bool)

(assert (=> b!15390 m!10321))

(assert (=> start!2414 d!2635))

(declare-fun d!2637 () Bool)

(declare-fun isStrictlySorted!141 (List!465) Bool)

(assert (=> d!2637 (= (inv!786 lm!238) (isStrictlySorted!141 (toList!226 lm!238)))))

(declare-fun bs!667 () Bool)

(assert (= bs!667 d!2637))

(declare-fun m!10327 () Bool)

(assert (=> bs!667 m!10327))

(assert (=> start!2414 d!2637))

(declare-fun d!2641 () Bool)

(assert (=> d!2641 (= (isEmpty!125 l!1612) (is-Nil!463 l!1612))))

(assert (=> b!15366 d!2641))

(declare-fun b!15395 () Bool)

(declare-fun e!9350 () Bool)

