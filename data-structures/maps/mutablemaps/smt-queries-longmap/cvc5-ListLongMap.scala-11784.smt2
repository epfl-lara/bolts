; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138484 () Bool)

(assert start!138484)

(declare-datatypes ((B!3044 0))(
  ( (B!3045 (val!19884 Int)) )
))
(declare-datatypes ((tuple2!26100 0))(
  ( (tuple2!26101 (_1!13060 (_ BitVec 64)) (_2!13060 B!3044)) )
))
(declare-datatypes ((List!37165 0))(
  ( (Nil!37162) (Cons!37161 (h!38705 tuple2!26100) (t!52104 List!37165)) )
))
(declare-fun l!628 () List!37165)

(declare-fun ListPrimitiveSize!235 (List!37165) Int)

(assert (=> start!138484 (< (ListPrimitiveSize!235 l!628) 0)))

(declare-fun e!885894 () Bool)

(assert (=> start!138484 e!885894))

(declare-fun b!1586318 () Bool)

(declare-fun tp_is_empty!39577 () Bool)

(declare-fun tp!115429 () Bool)

(assert (=> b!1586318 (= e!885894 (and tp_is_empty!39577 tp!115429))))

(assert (= (and start!138484 (is-Cons!37161 l!628)) b!1586318))

(declare-fun m!1454733 () Bool)

(assert (=> start!138484 m!1454733))

(push 1)

(assert (not start!138484))

(assert (not b!1586318))

(assert tp_is_empty!39577)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167913 () Bool)

(declare-fun lt!677458 () Int)

(assert (=> d!167913 (>= lt!677458 0)))

(declare-fun e!885911 () Int)

(assert (=> d!167913 (= lt!677458 e!885911)))

(declare-fun c!147012 () Bool)

(assert (=> d!167913 (= c!147012 (is-Nil!37162 l!628))))

(assert (=> d!167913 (= (ListPrimitiveSize!235 l!628) lt!677458)))

(declare-fun b!1586345 () Bool)

(assert (=> b!1586345 (= e!885911 0)))

(declare-fun b!1586346 () Bool)

(assert (=> b!1586346 (= e!885911 (+ 1 (ListPrimitiveSize!235 (t!52104 l!628))))))

(assert (= (and d!167913 c!147012) b!1586345))

(assert (= (and d!167913 (not c!147012)) b!1586346))

(declare-fun m!1454743 () Bool)

(assert (=> b!1586346 m!1454743))

(assert (=> start!138484 d!167913))

(declare-fun b!1586357 () Bool)

(declare-fun e!885918 () Bool)

(declare-fun tp!115444 () Bool)

(assert (=> b!1586357 (= e!885918 (and tp_is_empty!39577 tp!115444))))

