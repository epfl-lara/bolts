; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2462 () Bool)

(assert start!2462)

(declare-fun b_free!503 () Bool)

(declare-fun b_next!503 () Bool)

(assert (=> start!2462 (= b_free!503 (not b_next!503))))

(declare-fun tp!2599 () Bool)

(declare-fun b_and!943 () Bool)

(assert (=> start!2462 (= tp!2599 b_and!943)))

(declare-fun res!11695 () Bool)

(declare-fun e!9393 () Bool)

(assert (=> start!2462 (=> (not res!11695) (not e!9393))))

(declare-datatypes ((B!624 0))(
  ( (B!625 (val!410 Int)) )
))
(declare-datatypes ((tuple2!602 0))(
  ( (tuple2!603 (_1!301 (_ BitVec 64)) (_2!301 B!624)) )
))
(declare-datatypes ((List!477 0))(
  ( (Nil!474) (Cons!473 (h!1039 tuple2!602) (t!2909 List!477)) )
))
(declare-datatypes ((ListLongMap!433 0))(
  ( (ListLongMap!434 (toList!232 List!477)) )
))
(declare-fun lm!238 () ListLongMap!433)

(declare-fun p!262 () Int)

(declare-fun forall!118 (List!477 Int) Bool)

(assert (=> start!2462 (= res!11695 (forall!118 (toList!232 lm!238) p!262))))

(assert (=> start!2462 e!9393))

(declare-fun e!9394 () Bool)

(declare-fun inv!802 (ListLongMap!433) Bool)

(assert (=> start!2462 (and (inv!802 lm!238) e!9394)))

(assert (=> start!2462 tp!2599))

(assert (=> start!2462 true))

(declare-fun b!15451 () Bool)

(declare-datatypes ((List!478 0))(
  ( (Nil!475) (Cons!474 (h!1040 (_ BitVec 64)) (t!2910 List!478)) )
))
(declare-fun l!1612 () List!478)

(declare-fun ListPrimitiveSize!30 (List!478) Int)

(assert (=> b!15451 (= e!9393 (< (ListPrimitiveSize!30 l!1612) 0))))

(declare-fun b!15452 () Bool)

(declare-fun tp!2600 () Bool)

(assert (=> b!15452 (= e!9394 tp!2600)))

(assert (= (and start!2462 res!11695) b!15451))

(assert (= start!2462 b!15452))

(declare-fun m!10393 () Bool)

(assert (=> start!2462 m!10393))

(declare-fun m!10395 () Bool)

(assert (=> start!2462 m!10395))

(declare-fun m!10397 () Bool)

(assert (=> b!15451 m!10397))

(push 1)

(assert (not b_next!503))

(assert (not b!15452))

(assert b_and!943)

(assert (not b!15451))

(assert (not start!2462))

(check-sat)

(pop 1)

(push 1)

(assert b_and!943)

(assert (not b_next!503))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2661 () Bool)

(declare-fun res!11706 () Bool)

(declare-fun e!9405 () Bool)

(assert (=> d!2661 (=> res!11706 e!9405)))

(assert (=> d!2661 (= res!11706 (is-Nil!474 (toList!232 lm!238)))))

(assert (=> d!2661 (= (forall!118 (toList!232 lm!238) p!262) e!9405)))

(declare-fun b!15463 () Bool)

(declare-fun e!9406 () Bool)

(assert (=> b!15463 (= e!9405 e!9406)))

(declare-fun res!11707 () Bool)

(assert (=> b!15463 (=> (not res!11707) (not e!9406))))

(declare-fun dynLambda!108 (Int tuple2!602) Bool)

(assert (=> b!15463 (= res!11707 (dynLambda!108 p!262 (h!1039 (toList!232 lm!238))))))

(declare-fun b!15464 () Bool)

(assert (=> b!15464 (= e!9406 (forall!118 (t!2909 (toList!232 lm!238)) p!262))))

(assert (= (and d!2661 (not res!11706)) b!15463))

(assert (= (and b!15463 res!11707) b!15464))

(declare-fun b_lambda!1032 () Bool)

(assert (=> (not b_lambda!1032) (not b!15463)))

(declare-fun t!2914 () Bool)

(declare-fun tb!425 () Bool)

(assert (=> (and start!2462 (= p!262 p!262) t!2914) tb!425))

(declare-fun result!749 () Bool)

(assert (=> tb!425 (= result!749 true)))

(assert (=> b!15463 t!2914))

(declare-fun b_and!946 () Bool)

(assert (= b_and!943 (and (=> t!2914 result!749) b_and!946)))

(declare-fun m!10400 () Bool)

(assert (=> b!15463 m!10400))

(declare-fun m!10407 () Bool)

(assert (=> b!15464 m!10407))

(assert (=> start!2462 d!2661))

(declare-fun d!2666 () Bool)

(declare-fun isStrictlySorted!144 (List!477) Bool)

(assert (=> d!2666 (= (inv!802 lm!238) (isStrictlySorted!144 (toList!232 lm!238)))))

(declare-fun bs!679 () Bool)

(assert (= bs!679 d!2666))

(declare-fun m!10415 () Bool)

(assert (=> bs!679 m!10415))

(assert (=> start!2462 d!2666))

(declare-fun d!2675 () Bool)

(declare-fun lt!3777 () Int)

(assert (=> d!2675 (>= lt!3777 0)))

(declare-fun e!9423 () Int)

(assert (=> d!2675 (= lt!3777 e!9423)))

(declare-fun c!1460 () Bool)

(assert (=> d!2675 (= c!1460 (is-Nil!475 l!1612))))

(assert (=> d!2675 (= (ListPrimitiveSize!30 l!1612) lt!3777)))

(declare-fun b!15491 () Bool)

(assert (=> b!15491 (= e!9423 0)))

(declare-fun b!15492 () Bool)

(assert (=> b!15492 (= e!9423 (+ 1 (ListPrimitiveSize!30 (t!2910 l!1612))))))

(assert (= (and d!2675 c!1460) b!15491))

(assert (= (and d!2675 (not c!1460)) b!15492))

(declare-fun m!10421 () Bool)

(assert (=> b!15492 m!10421))

(assert (=> b!15451 d!2675))

(declare-fun b!15502 () Bool)

(declare-fun e!9429 () Bool)

(declare-fun tp_is_empty!790 () Bool)

(declare-fun tp!2608 () Bool)

(assert (=> b!15502 (= e!9429 (and tp_is_empty!790 tp!2608))))

(assert (=> b!15452 (= tp!2600 e!9429)))

(assert (= (and b!15452 (is-Cons!473 (toList!232 lm!238))) b!15502))

(declare-fun b_lambda!1041 () Bool)

(assert (= b_lambda!1032 (or (and start!2462 b_free!503) b_lambda!1041)))

(push 1)

