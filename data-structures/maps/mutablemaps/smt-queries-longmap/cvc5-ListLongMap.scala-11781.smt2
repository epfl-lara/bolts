; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138442 () Bool)

(assert start!138442)

(declare-fun res!1083353 () Bool)

(declare-fun e!885767 () Bool)

(assert (=> start!138442 (=> (not res!1083353) (not e!885767))))

(declare-datatypes ((B!3026 0))(
  ( (B!3027 (val!19875 Int)) )
))
(declare-datatypes ((tuple2!26082 0))(
  ( (tuple2!26083 (_1!13051 (_ BitVec 64)) (_2!13051 B!3026)) )
))
(declare-datatypes ((List!37156 0))(
  ( (Nil!37153) (Cons!37152 (h!38696 tuple2!26082) (t!52095 List!37156)) )
))
(declare-fun l!636 () List!37156)

(declare-fun isStrictlySorted!1215 (List!37156) Bool)

(assert (=> start!138442 (= res!1083353 (isStrictlySorted!1215 l!636))))

(assert (=> start!138442 e!885767))

(declare-fun e!885768 () Bool)

(assert (=> start!138442 e!885768))

(declare-fun b!1586149 () Bool)

(declare-fun ListPrimitiveSize!229 (List!37156) Int)

(assert (=> b!1586149 (= e!885767 (< (ListPrimitiveSize!229 l!636) 0))))

(declare-fun b!1586150 () Bool)

(declare-fun tp_is_empty!39559 () Bool)

(declare-fun tp!115384 () Bool)

(assert (=> b!1586150 (= e!885768 (and tp_is_empty!39559 tp!115384))))

(assert (= (and start!138442 res!1083353) b!1586149))

(assert (= (and start!138442 (is-Cons!37152 l!636)) b!1586150))

(declare-fun m!1454673 () Bool)

(assert (=> start!138442 m!1454673))

(declare-fun m!1454675 () Bool)

(assert (=> b!1586149 m!1454675))

(push 1)

(assert (not b!1586149))

(assert (not start!138442))

(assert (not b!1586150))

(assert tp_is_empty!39559)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167875 () Bool)

(declare-fun lt!677433 () Int)

(assert (=> d!167875 (>= lt!677433 0)))

(declare-fun e!885791 () Int)

(assert (=> d!167875 (= lt!677433 e!885791)))

(declare-fun c!146987 () Bool)

(assert (=> d!167875 (= c!146987 (is-Nil!37153 l!636))))

(assert (=> d!167875 (= (ListPrimitiveSize!229 l!636) lt!677433)))

(declare-fun b!1586177 () Bool)

(assert (=> b!1586177 (= e!885791 0)))

(declare-fun b!1586178 () Bool)

(assert (=> b!1586178 (= e!885791 (+ 1 (ListPrimitiveSize!229 (t!52095 l!636))))))

(assert (= (and d!167875 c!146987) b!1586177))

(assert (= (and d!167875 (not c!146987)) b!1586178))

(declare-fun m!1454687 () Bool)

(assert (=> b!1586178 m!1454687))

(assert (=> b!1586149 d!167875))

(declare-fun d!167881 () Bool)

(declare-fun res!1083374 () Bool)

(declare-fun e!885806 () Bool)

(assert (=> d!167881 (=> res!1083374 e!885806)))

(assert (=> d!167881 (= res!1083374 (or (is-Nil!37153 l!636) (is-Nil!37153 (t!52095 l!636))))))

(assert (=> d!167881 (= (isStrictlySorted!1215 l!636) e!885806)))

(declare-fun b!1586199 () Bool)

(declare-fun e!885807 () Bool)

(assert (=> b!1586199 (= e!885806 e!885807)))

(declare-fun res!1083375 () Bool)

(assert (=> b!1586199 (=> (not res!1083375) (not e!885807))))

(assert (=> b!1586199 (= res!1083375 (bvslt (_1!13051 (h!38696 l!636)) (_1!13051 (h!38696 (t!52095 l!636)))))))

(declare-fun b!1586200 () Bool)

(assert (=> b!1586200 (= e!885807 (isStrictlySorted!1215 (t!52095 l!636)))))

(assert (= (and d!167881 (not res!1083374)) b!1586199))

(assert (= (and b!1586199 res!1083375) b!1586200))

(declare-fun m!1454693 () Bool)

(assert (=> b!1586200 m!1454693))

(assert (=> start!138442 d!167881))

(declare-fun b!1586212 () Bool)

(declare-fun e!885815 () Bool)

(declare-fun tp!115396 () Bool)

(assert (=> b!1586212 (= e!885815 (and tp_is_empty!39559 tp!115396))))

(assert (=> b!1586150 (= tp!115384 e!885815)))

(assert (= (and b!1586150 (is-Cons!37152 (t!52095 l!636))) b!1586212))

(push 1)

