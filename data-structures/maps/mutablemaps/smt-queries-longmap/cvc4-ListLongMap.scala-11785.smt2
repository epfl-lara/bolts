; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138500 () Bool)

(assert start!138500)

(declare-fun res!1083431 () Bool)

(declare-fun e!885935 () Bool)

(assert (=> start!138500 (=> (not res!1083431) (not e!885935))))

(declare-datatypes ((B!3054 0))(
  ( (B!3055 (val!19889 Int)) )
))
(declare-datatypes ((tuple2!26110 0))(
  ( (tuple2!26111 (_1!13065 (_ BitVec 64)) (_2!13065 B!3054)) )
))
(declare-datatypes ((List!37170 0))(
  ( (Nil!37167) (Cons!37166 (h!38710 tuple2!26110) (t!52109 List!37170)) )
))
(declare-fun l!628 () List!37170)

(assert (=> start!138500 (= res!1083431 (and (not (is-Nil!37167 l!628)) (not (is-Nil!37167 (t!52109 l!628))) (bvslt (_1!13065 (h!38710 l!628)) (_1!13065 (h!38710 (t!52109 l!628))))))))

(assert (=> start!138500 e!885935))

(declare-fun e!885936 () Bool)

(assert (=> start!138500 e!885936))

(declare-fun b!1586374 () Bool)

(declare-fun ListPrimitiveSize!240 (List!37170) Int)

(assert (=> b!1586374 (= e!885935 (>= (ListPrimitiveSize!240 (t!52109 l!628)) (ListPrimitiveSize!240 l!628)))))

(declare-fun b!1586375 () Bool)

(declare-fun tp_is_empty!39587 () Bool)

(declare-fun tp!115453 () Bool)

(assert (=> b!1586375 (= e!885936 (and tp_is_empty!39587 tp!115453))))

(assert (= (and start!138500 res!1083431) b!1586374))

(assert (= (and start!138500 (is-Cons!37166 l!628)) b!1586375))

(declare-fun m!1454753 () Bool)

(assert (=> b!1586374 m!1454753))

(declare-fun m!1454755 () Bool)

(assert (=> b!1586374 m!1454755))

(push 1)

(assert (not b!1586374))

(assert (not b!1586375))

(assert tp_is_empty!39587)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167923 () Bool)

(declare-fun lt!677469 () Int)

(assert (=> d!167923 (>= lt!677469 0)))

(declare-fun e!885953 () Int)

(assert (=> d!167923 (= lt!677469 e!885953)))

(declare-fun c!147023 () Bool)

(assert (=> d!167923 (= c!147023 (is-Nil!37167 (t!52109 l!628)))))

(assert (=> d!167923 (= (ListPrimitiveSize!240 (t!52109 l!628)) lt!677469)))

(declare-fun b!1586406 () Bool)

(assert (=> b!1586406 (= e!885953 0)))

(declare-fun b!1586407 () Bool)

(assert (=> b!1586407 (= e!885953 (+ 1 (ListPrimitiveSize!240 (t!52109 (t!52109 l!628)))))))

