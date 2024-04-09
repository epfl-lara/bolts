; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138496 () Bool)

(assert start!138496)

(declare-fun res!1083425 () Bool)

(declare-fun e!885923 () Bool)

(assert (=> start!138496 (=> (not res!1083425) (not e!885923))))

(declare-datatypes ((B!3050 0))(
  ( (B!3051 (val!19887 Int)) )
))
(declare-datatypes ((tuple2!26106 0))(
  ( (tuple2!26107 (_1!13063 (_ BitVec 64)) (_2!13063 B!3050)) )
))
(declare-datatypes ((List!37168 0))(
  ( (Nil!37165) (Cons!37164 (h!38708 tuple2!26106) (t!52107 List!37168)) )
))
(declare-fun l!628 () List!37168)

(assert (=> start!138496 (= res!1083425 (and (not (is-Nil!37165 l!628)) (not (is-Nil!37165 (t!52107 l!628))) (bvslt (_1!13063 (h!38708 l!628)) (_1!13063 (h!38708 (t!52107 l!628))))))))

(assert (=> start!138496 e!885923))

(declare-fun e!885924 () Bool)

(assert (=> start!138496 e!885924))

(declare-fun b!1586362 () Bool)

(declare-fun ListPrimitiveSize!238 (List!37168) Int)

(assert (=> b!1586362 (= e!885923 (>= (ListPrimitiveSize!238 (t!52107 l!628)) (ListPrimitiveSize!238 l!628)))))

(declare-fun b!1586363 () Bool)

(declare-fun tp_is_empty!39583 () Bool)

(declare-fun tp!115447 () Bool)

(assert (=> b!1586363 (= e!885924 (and tp_is_empty!39583 tp!115447))))

(assert (= (and start!138496 res!1083425) b!1586362))

(assert (= (and start!138496 (is-Cons!37164 l!628)) b!1586363))

(declare-fun m!1454745 () Bool)

(assert (=> b!1586362 m!1454745))

(declare-fun m!1454747 () Bool)

(assert (=> b!1586362 m!1454747))

(push 1)

(assert (not b!1586362))

(assert (not b!1586363))

(assert tp_is_empty!39583)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167919 () Bool)

(declare-fun lt!677465 () Int)

(assert (=> d!167919 (>= lt!677465 0)))

(declare-fun e!885946 () Int)

(assert (=> d!167919 (= lt!677465 e!885946)))

(declare-fun c!147019 () Bool)

(assert (=> d!167919 (= c!147019 (is-Nil!37165 (t!52107 l!628)))))

(assert (=> d!167919 (= (ListPrimitiveSize!238 (t!52107 l!628)) lt!677465)))

(declare-fun b!1586393 () Bool)

(assert (=> b!1586393 (= e!885946 0)))

(declare-fun b!1586394 () Bool)

(assert (=> b!1586394 (= e!885946 (+ 1 (ListPrimitiveSize!238 (t!52107 (t!52107 l!628)))))))

(assert (= (and d!167919 c!147019) b!1586393))

(assert (= (and d!167919 (not c!147019)) b!1586394))

(declare-fun m!1454759 () Bool)

(assert (=> b!1586394 m!1454759))

(assert (=> b!1586362 d!167919))

(declare-fun d!167925 () Bool)

(declare-fun lt!677466 () Int)

(assert (=> d!167925 (>= lt!677466 0)))

(declare-fun e!885947 () Int)

(assert (=> d!167925 (= lt!677466 e!885947)))

(declare-fun c!147020 () Bool)

(assert (=> d!167925 (= c!147020 (is-Nil!37165 l!628))))

(assert (=> d!167925 (= (ListPrimitiveSize!238 l!628) lt!677466)))

(declare-fun b!1586395 () Bool)

(assert (=> b!1586395 (= e!885947 0)))

(declare-fun b!1586396 () Bool)

(assert (=> b!1586396 (= e!885947 (+ 1 (ListPrimitiveSize!238 (t!52107 l!628))))))

