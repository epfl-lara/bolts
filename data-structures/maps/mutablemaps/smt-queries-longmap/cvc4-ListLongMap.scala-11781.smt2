; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138446 () Bool)

(assert start!138446)

(declare-fun res!1083359 () Bool)

(declare-fun e!885779 () Bool)

(assert (=> start!138446 (=> (not res!1083359) (not e!885779))))

(declare-datatypes ((B!3030 0))(
  ( (B!3031 (val!19877 Int)) )
))
(declare-datatypes ((tuple2!26086 0))(
  ( (tuple2!26087 (_1!13053 (_ BitVec 64)) (_2!13053 B!3030)) )
))
(declare-datatypes ((List!37158 0))(
  ( (Nil!37155) (Cons!37154 (h!38698 tuple2!26086) (t!52097 List!37158)) )
))
(declare-fun l!636 () List!37158)

(declare-fun isStrictlySorted!1217 (List!37158) Bool)

(assert (=> start!138446 (= res!1083359 (isStrictlySorted!1217 l!636))))

(assert (=> start!138446 e!885779))

(declare-fun e!885780 () Bool)

(assert (=> start!138446 e!885780))

(declare-fun b!1586161 () Bool)

(declare-fun ListPrimitiveSize!231 (List!37158) Int)

(assert (=> b!1586161 (= e!885779 (< (ListPrimitiveSize!231 l!636) 0))))

(declare-fun b!1586162 () Bool)

(declare-fun tp_is_empty!39563 () Bool)

(declare-fun tp!115390 () Bool)

(assert (=> b!1586162 (= e!885780 (and tp_is_empty!39563 tp!115390))))

(assert (= (and start!138446 res!1083359) b!1586161))

(assert (= (and start!138446 (is-Cons!37154 l!636)) b!1586162))

(declare-fun m!1454681 () Bool)

(assert (=> start!138446 m!1454681))

(declare-fun m!1454683 () Bool)

(assert (=> b!1586161 m!1454683))

(push 1)

(assert (not b!1586161))

(assert (not start!138446))

(assert (not b!1586162))

(assert tp_is_empty!39563)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167877 () Bool)

(declare-fun lt!677434 () Int)

(assert (=> d!167877 (>= lt!677434 0)))

(declare-fun e!885792 () Int)

(assert (=> d!167877 (= lt!677434 e!885792)))

(declare-fun c!146988 () Bool)

(assert (=> d!167877 (= c!146988 (is-Nil!37155 l!636))))

(assert (=> d!167877 (= (ListPrimitiveSize!231 l!636) lt!677434)))

(declare-fun b!1586179 () Bool)

(assert (=> b!1586179 (= e!885792 0)))

(declare-fun b!1586180 () Bool)

(assert (=> b!1586180 (= e!885792 (+ 1 (ListPrimitiveSize!231 (t!52097 l!636))))))

(assert (= (and d!167877 c!146988) b!1586179))

(assert (= (and d!167877 (not c!146988)) b!1586180))

(declare-fun m!1454689 () Bool)

(assert (=> b!1586180 m!1454689))

(assert (=> b!1586161 d!167877))

(declare-fun d!167883 () Bool)

(declare-fun res!1083376 () Bool)

(declare-fun e!885809 () Bool)

(assert (=> d!167883 (=> res!1083376 e!885809)))

(assert (=> d!167883 (= res!1083376 (or (is-Nil!37155 l!636) (is-Nil!37155 (t!52097 l!636))))))

(assert (=> d!167883 (= (isStrictlySorted!1217 l!636) e!885809)))

(declare-fun b!1586204 () Bool)

(declare-fun e!885810 () Bool)

(assert (=> b!1586204 (= e!885809 e!885810)))

(declare-fun res!1083377 () Bool)

(assert (=> b!1586204 (=> (not res!1083377) (not e!885810))))

(assert (=> b!1586204 (= res!1083377 (bvslt (_1!13053 (h!38698 l!636)) (_1!13053 (h!38698 (t!52097 l!636)))))))

(declare-fun b!1586205 () Bool)

(assert (=> b!1586205 (= e!885810 (isStrictlySorted!1217 (t!52097 l!636)))))

(assert (= (and d!167883 (not res!1083376)) b!1586204))

(assert (= (and b!1586204 res!1083377) b!1586205))

(declare-fun m!1454695 () Bool)

(assert (=> b!1586205 m!1454695))

(assert (=> start!138446 d!167883))

(declare-fun b!1586213 () Bool)

(declare-fun e!885816 () Bool)

