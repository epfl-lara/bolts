; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2458 () Bool)

(assert start!2458)

(declare-fun b_free!499 () Bool)

(declare-fun b_next!499 () Bool)

(assert (=> start!2458 (= b_free!499 (not b_next!499))))

(declare-fun tp!2588 () Bool)

(declare-fun b_and!939 () Bool)

(assert (=> start!2458 (= tp!2588 b_and!939)))

(declare-fun res!11689 () Bool)

(declare-fun e!9381 () Bool)

(assert (=> start!2458 (=> (not res!11689) (not e!9381))))

(declare-datatypes ((B!620 0))(
  ( (B!621 (val!408 Int)) )
))
(declare-datatypes ((tuple2!598 0))(
  ( (tuple2!599 (_1!299 (_ BitVec 64)) (_2!299 B!620)) )
))
(declare-datatypes ((List!473 0))(
  ( (Nil!470) (Cons!469 (h!1035 tuple2!598) (t!2905 List!473)) )
))
(declare-datatypes ((ListLongMap!429 0))(
  ( (ListLongMap!430 (toList!230 List!473)) )
))
(declare-fun lm!238 () ListLongMap!429)

(declare-fun p!262 () Int)

(declare-fun forall!116 (List!473 Int) Bool)

(assert (=> start!2458 (= res!11689 (forall!116 (toList!230 lm!238) p!262))))

(assert (=> start!2458 e!9381))

(declare-fun e!9382 () Bool)

(declare-fun inv!800 (ListLongMap!429) Bool)

(assert (=> start!2458 (and (inv!800 lm!238) e!9382)))

(assert (=> start!2458 tp!2588))

(assert (=> start!2458 true))

(declare-fun b!15439 () Bool)

(declare-datatypes ((List!474 0))(
  ( (Nil!471) (Cons!470 (h!1036 (_ BitVec 64)) (t!2906 List!474)) )
))
(declare-fun l!1612 () List!474)

(declare-fun ListPrimitiveSize!28 (List!474) Int)

(assert (=> b!15439 (= e!9381 (< (ListPrimitiveSize!28 l!1612) 0))))

(declare-fun b!15440 () Bool)

(declare-fun tp!2587 () Bool)

(assert (=> b!15440 (= e!9382 tp!2587)))

(assert (= (and start!2458 res!11689) b!15439))

(assert (= start!2458 b!15440))

(declare-fun m!10381 () Bool)

(assert (=> start!2458 m!10381))

(declare-fun m!10383 () Bool)

(assert (=> start!2458 m!10383))

(declare-fun m!10385 () Bool)

(assert (=> b!15439 m!10385))

(push 1)

(assert (not b_next!499))

(assert b_and!939)

(assert (not b!15439))

(assert (not start!2458))

(assert (not b!15440))

(check-sat)

(pop 1)

(push 1)

(assert b_and!939)

(assert (not b_next!499))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2660 () Bool)

(declare-fun res!11704 () Bool)

(declare-fun e!9403 () Bool)

(assert (=> d!2660 (=> res!11704 e!9403)))

(assert (=> d!2660 (= res!11704 (is-Nil!470 (toList!230 lm!238)))))

(assert (=> d!2660 (= (forall!116 (toList!230 lm!238) p!262) e!9403)))

(declare-fun b!15461 () Bool)

(declare-fun e!9404 () Bool)

(assert (=> b!15461 (= e!9403 e!9404)))

(declare-fun res!11705 () Bool)

(assert (=> b!15461 (=> (not res!11705) (not e!9404))))

(declare-fun dynLambda!106 (Int tuple2!598) Bool)

(assert (=> b!15461 (= res!11705 (dynLambda!106 p!262 (h!1035 (toList!230 lm!238))))))

(declare-fun b!15462 () Bool)

(assert (=> b!15462 (= e!9404 (forall!116 (t!2905 (toList!230 lm!238)) p!262))))

(assert (= (and d!2660 (not res!11704)) b!15461))

(assert (= (and b!15461 res!11705) b!15462))

(declare-fun b_lambda!1033 () Bool)

(assert (=> (not b_lambda!1033) (not b!15461)))

(declare-fun t!2913 () Bool)

(declare-fun tb!424 () Bool)

(assert (=> (and start!2458 (= p!262 p!262) t!2913) tb!424))

(declare-fun result!748 () Bool)

(assert (=> tb!424 (= result!748 true)))

(assert (=> b!15461 t!2913))

(declare-fun b_and!947 () Bool)

(assert (= b_and!939 (and (=> t!2913 result!748) b_and!947)))

(declare-fun m!10401 () Bool)

(assert (=> b!15461 m!10401))

(declare-fun m!10405 () Bool)

(assert (=> b!15462 m!10405))

(assert (=> start!2458 d!2660))

(declare-fun d!2667 () Bool)

(declare-fun isStrictlySorted!142 (List!473) Bool)

(assert (=> d!2667 (= (inv!800 lm!238) (isStrictlySorted!142 (toList!230 lm!238)))))

(declare-fun bs!678 () Bool)

(assert (= bs!678 d!2667))

(declare-fun m!10414 () Bool)

(assert (=> bs!678 m!10414))

(assert (=> start!2458 d!2667))

(declare-fun d!2674 () Bool)

(declare-fun lt!3776 () Int)

(assert (=> d!2674 (>= lt!3776 0)))

(declare-fun e!9422 () Int)

(assert (=> d!2674 (= lt!3776 e!9422)))

(declare-fun c!1459 () Bool)

(assert (=> d!2674 (= c!1459 (is-Nil!471 l!1612))))

(assert (=> d!2674 (= (ListPrimitiveSize!28 l!1612) lt!3776)))

(declare-fun b!15489 () Bool)

(assert (=> b!15489 (= e!9422 0)))

(declare-fun b!15490 () Bool)

(assert (=> b!15490 (= e!9422 (+ 1 (ListPrimitiveSize!28 (t!2906 l!1612))))))

(assert (= (and d!2674 c!1459) b!15489))

(assert (= (and d!2674 (not c!1459)) b!15490))

(declare-fun m!10419 () Bool)

(assert (=> b!15490 m!10419))

(assert (=> b!15439 d!2674))

(declare-fun b!15503 () Bool)

(declare-fun e!9430 () Bool)

(declare-fun tp_is_empty!791 () Bool)

(declare-fun tp!2609 () Bool)

(assert (=> b!15503 (= e!9430 (and tp_is_empty!791 tp!2609))))

(assert (=> b!15440 (= tp!2587 e!9430)))

(assert (= (and b!15440 (is-Cons!469 (toList!230 lm!238))) b!15503))

(declare-fun b_lambda!1040 () Bool)

(assert (= b_lambda!1033 (or (and start!2458 b_free!499) b_lambda!1040)))

(push 1)

