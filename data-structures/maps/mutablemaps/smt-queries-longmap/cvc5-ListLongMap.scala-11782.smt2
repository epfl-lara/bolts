; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138460 () Bool)

(assert start!138460)

(declare-fun res!1083382 () Bool)

(declare-fun e!885822 () Bool)

(assert (=> start!138460 (=> (not res!1083382) (not e!885822))))

(declare-datatypes ((B!3032 0))(
  ( (B!3033 (val!19878 Int)) )
))
(declare-datatypes ((tuple2!26088 0))(
  ( (tuple2!26089 (_1!13054 (_ BitVec 64)) (_2!13054 B!3032)) )
))
(declare-datatypes ((List!37159 0))(
  ( (Nil!37156) (Cons!37155 (h!38699 tuple2!26088) (t!52098 List!37159)) )
))
(declare-fun l!636 () List!37159)

(declare-fun isStrictlySorted!1218 (List!37159) Bool)

(assert (=> start!138460 (= res!1083382 (isStrictlySorted!1218 l!636))))

(assert (=> start!138460 e!885822))

(declare-fun e!885821 () Bool)

(assert (=> start!138460 e!885821))

(assert (=> start!138460 true))

(declare-fun b!1586220 () Bool)

(declare-fun res!1083383 () Bool)

(assert (=> b!1586220 (=> (not res!1083383) (not e!885822))))

(declare-fun key!185 () (_ BitVec 64))

(assert (=> b!1586220 (= res!1083383 (and (or (not (is-Cons!37155 l!636)) (not (= (_1!13054 (h!38699 l!636)) key!185))) (or (not (is-Cons!37155 l!636)) (bvsle (_1!13054 (h!38699 l!636)) key!185)) (is-Cons!37155 l!636) (bvslt (_1!13054 (h!38699 l!636)) key!185)))))

(declare-fun b!1586221 () Bool)

(declare-fun ListPrimitiveSize!232 (List!37159) Int)

(assert (=> b!1586221 (= e!885822 (>= (ListPrimitiveSize!232 (t!52098 l!636)) (ListPrimitiveSize!232 l!636)))))

(declare-fun b!1586222 () Bool)

(declare-fun tp_is_empty!39565 () Bool)

(declare-fun tp!115402 () Bool)

(assert (=> b!1586222 (= e!885821 (and tp_is_empty!39565 tp!115402))))

(assert (= (and start!138460 res!1083382) b!1586220))

(assert (= (and b!1586220 res!1083383) b!1586221))

(assert (= (and start!138460 (is-Cons!37155 l!636)) b!1586222))

(declare-fun m!1454697 () Bool)

(assert (=> start!138460 m!1454697))

(declare-fun m!1454699 () Bool)

(assert (=> b!1586221 m!1454699))

(declare-fun m!1454701 () Bool)

(assert (=> b!1586221 m!1454701))

(push 1)

(assert (not start!138460))

(assert (not b!1586221))

(assert (not b!1586222))

(assert tp_is_empty!39565)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167887 () Bool)

(declare-fun res!1083400 () Bool)

(declare-fun e!885839 () Bool)

(assert (=> d!167887 (=> res!1083400 e!885839)))

(assert (=> d!167887 (= res!1083400 (or (is-Nil!37156 l!636) (is-Nil!37156 (t!52098 l!636))))))

(assert (=> d!167887 (= (isStrictlySorted!1218 l!636) e!885839)))

(declare-fun b!1586245 () Bool)

(declare-fun e!885840 () Bool)

(assert (=> b!1586245 (= e!885839 e!885840)))

(declare-fun res!1083401 () Bool)

(assert (=> b!1586245 (=> (not res!1083401) (not e!885840))))

(assert (=> b!1586245 (= res!1083401 (bvslt (_1!13054 (h!38699 l!636)) (_1!13054 (h!38699 (t!52098 l!636)))))))

(declare-fun b!1586246 () Bool)

(assert (=> b!1586246 (= e!885840 (isStrictlySorted!1218 (t!52098 l!636)))))

(assert (= (and d!167887 (not res!1083400)) b!1586245))

(assert (= (and b!1586245 res!1083401) b!1586246))

(declare-fun m!1454715 () Bool)

(assert (=> b!1586246 m!1454715))

(assert (=> start!138460 d!167887))

(declare-fun d!167891 () Bool)

(declare-fun lt!677440 () Int)

(assert (=> d!167891 (>= lt!677440 0)))

(declare-fun e!885849 () Int)

(assert (=> d!167891 (= lt!677440 e!885849)))

(declare-fun c!146994 () Bool)

(assert (=> d!167891 (= c!146994 (is-Nil!37156 (t!52098 l!636)))))

(assert (=> d!167891 (= (ListPrimitiveSize!232 (t!52098 l!636)) lt!677440)))

(declare-fun b!1586257 () Bool)

(assert (=> b!1586257 (= e!885849 0)))

(declare-fun b!1586258 () Bool)

(assert (=> b!1586258 (= e!885849 (+ 1 (ListPrimitiveSize!232 (t!52098 (t!52098 l!636)))))))

(assert (= (and d!167891 c!146994) b!1586257))

(assert (= (and d!167891 (not c!146994)) b!1586258))

(declare-fun m!1454719 () Bool)

(assert (=> b!1586258 m!1454719))

(assert (=> b!1586221 d!167891))

(declare-fun d!167895 () Bool)

(declare-fun lt!677441 () Int)

(assert (=> d!167895 (>= lt!677441 0)))

(declare-fun e!885850 () Int)

(assert (=> d!167895 (= lt!677441 e!885850)))

(declare-fun c!146995 () Bool)

(assert (=> d!167895 (= c!146995 (is-Nil!37156 l!636))))

(assert (=> d!167895 (= (ListPrimitiveSize!232 l!636) lt!677441)))

(declare-fun b!1586259 () Bool)

(assert (=> b!1586259 (= e!885850 0)))

(declare-fun b!1586260 () Bool)

(assert (=> b!1586260 (= e!885850 (+ 1 (ListPrimitiveSize!232 (t!52098 l!636))))))

(assert (= (and d!167895 c!146995) b!1586259))

(assert (= (and d!167895 (not c!146995)) b!1586260))

(assert (=> b!1586260 m!1454699))

(assert (=> b!1586221 d!167895))

(declare-fun b!1586265 () Bool)

(declare-fun e!885853 () Bool)

(declare-fun tp!115411 () Bool)

(assert (=> b!1586265 (= e!885853 (and tp_is_empty!39565 tp!115411))))

(assert (=> b!1586222 (= tp!115402 e!885853)))

(assert (= (and b!1586222 (is-Cons!37155 (t!52098 l!636))) b!1586265))

(push 1)

(assert tp_is_empty!39565)

(assert (not b!1586258))

(assert (not b!1586260))

(assert (not b!1586246))

(assert (not b!1586265))

(check-sat)

