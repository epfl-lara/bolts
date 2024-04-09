; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138488 () Bool)

(assert start!138488)

(declare-datatypes ((B!3048 0))(
  ( (B!3049 (val!19886 Int)) )
))
(declare-datatypes ((tuple2!26104 0))(
  ( (tuple2!26105 (_1!13062 (_ BitVec 64)) (_2!13062 B!3048)) )
))
(declare-datatypes ((List!37167 0))(
  ( (Nil!37164) (Cons!37163 (h!38707 tuple2!26104) (t!52106 List!37167)) )
))
(declare-fun l!628 () List!37167)

(declare-fun ListPrimitiveSize!237 (List!37167) Int)

(assert (=> start!138488 (< (ListPrimitiveSize!237 l!628) 0)))

(declare-fun e!885900 () Bool)

(assert (=> start!138488 e!885900))

(declare-fun b!1586324 () Bool)

(declare-fun tp_is_empty!39581 () Bool)

(declare-fun tp!115435 () Bool)

(assert (=> b!1586324 (= e!885900 (and tp_is_empty!39581 tp!115435))))

(assert (= (and start!138488 (is-Cons!37163 l!628)) b!1586324))

(declare-fun m!1454737 () Bool)

(assert (=> start!138488 m!1454737))

(push 1)

(assert (not start!138488))

(assert (not b!1586324))

(assert tp_is_empty!39581)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167911 () Bool)

(declare-fun lt!677457 () Int)

(assert (=> d!167911 (>= lt!677457 0)))

(declare-fun e!885910 () Int)

(assert (=> d!167911 (= lt!677457 e!885910)))

(declare-fun c!147011 () Bool)

(assert (=> d!167911 (= c!147011 (is-Nil!37164 l!628))))

(assert (=> d!167911 (= (ListPrimitiveSize!237 l!628) lt!677457)))

(declare-fun b!1586343 () Bool)

(assert (=> b!1586343 (= e!885910 0)))

(declare-fun b!1586344 () Bool)

(assert (=> b!1586344 (= e!885910 (+ 1 (ListPrimitiveSize!237 (t!52106 l!628))))))

(assert (= (and d!167911 c!147011) b!1586343))

(assert (= (and d!167911 (not c!147011)) b!1586344))

(declare-fun m!1454741 () Bool)

(assert (=> b!1586344 m!1454741))

