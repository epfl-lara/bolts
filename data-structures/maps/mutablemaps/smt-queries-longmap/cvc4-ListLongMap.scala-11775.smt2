; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138332 () Bool)

(assert start!138332)

(declare-fun b!1585687 () Bool)

(declare-fun e!885395 () Bool)

(declare-datatypes ((B!2994 0))(
  ( (B!2995 (val!19859 Int)) )
))
(declare-datatypes ((tuple2!26050 0))(
  ( (tuple2!26051 (_1!13035 (_ BitVec 64)) (_2!13035 B!2994)) )
))
(declare-datatypes ((List!37140 0))(
  ( (Nil!37137) (Cons!37136 (h!38680 tuple2!26050) (t!52070 List!37140)) )
))
(declare-fun lt!677356 () List!37140)

(declare-fun lt!677355 () tuple2!26050)

(declare-fun contains!10554 (List!37140 tuple2!26050) Bool)

(assert (=> b!1585687 (= e!885395 (not (contains!10554 lt!677356 lt!677355)))))

(declare-fun b!1585688 () Bool)

(declare-fun e!885394 () Bool)

(assert (=> b!1585688 (= e!885394 e!885395)))

(declare-fun res!1083011 () Bool)

(assert (=> b!1585688 (=> res!1083011 e!885395)))

(declare-fun isStrictlySorted!1199 (List!37140) Bool)

(assert (=> b!1585688 (= res!1083011 (not (isStrictlySorted!1199 lt!677356)))))

(declare-fun l!556 () List!37140)

(declare-fun $colon$colon!1045 (List!37140 tuple2!26050) List!37140)

(assert (=> b!1585688 (= lt!677356 ($colon$colon!1045 (t!52070 l!556) lt!677355))))

(declare-fun newKey!21 () (_ BitVec 64))

(declare-fun newValue!21 () B!2994)

(assert (=> b!1585688 (= lt!677355 (tuple2!26051 newKey!21 newValue!21))))

(declare-fun b!1585689 () Bool)

(declare-fun res!1083009 () Bool)

(assert (=> b!1585689 (=> (not res!1083009) (not e!885394))))

(assert (=> b!1585689 (= res!1083009 (and (bvsge (_1!13035 (h!38680 l!556)) newKey!21) (is-Cons!37136 l!556) (= (_1!13035 (h!38680 l!556)) newKey!21)))))

(declare-fun b!1585690 () Bool)

(declare-fun res!1083010 () Bool)

(assert (=> b!1585690 (=> res!1083010 e!885395)))

(declare-fun containsKey!1012 (List!37140 (_ BitVec 64)) Bool)

(assert (=> b!1585690 (= res!1083010 (not (containsKey!1012 lt!677356 newKey!21)))))

(declare-fun b!1585691 () Bool)

(declare-fun e!885396 () Bool)

(declare-fun tp_is_empty!39527 () Bool)

(declare-fun tp!115291 () Bool)

(assert (=> b!1585691 (= e!885396 (and tp_is_empty!39527 tp!115291))))

(declare-fun res!1083008 () Bool)

(assert (=> start!138332 (=> (not res!1083008) (not e!885394))))

(assert (=> start!138332 (= res!1083008 (isStrictlySorted!1199 l!556))))

(assert (=> start!138332 e!885394))

(assert (=> start!138332 e!885396))

(assert (=> start!138332 true))

(assert (=> start!138332 tp_is_empty!39527))

(assert (= (and start!138332 res!1083008) b!1585689))

(assert (= (and b!1585689 res!1083009) b!1585688))

(assert (= (and b!1585688 (not res!1083011)) b!1585690))

(assert (= (and b!1585690 (not res!1083010)) b!1585687))

(assert (= (and start!138332 (is-Cons!37136 l!556)) b!1585691))

(declare-fun m!1454447 () Bool)

(assert (=> b!1585687 m!1454447))

(declare-fun m!1454449 () Bool)

(assert (=> b!1585688 m!1454449))

(declare-fun m!1454451 () Bool)

(assert (=> b!1585688 m!1454451))

(declare-fun m!1454453 () Bool)

(assert (=> b!1585690 m!1454453))

(declare-fun m!1454455 () Bool)

(assert (=> start!138332 m!1454455))

(push 1)

(assert (not start!138332))

(assert (not b!1585690))

(assert (not b!1585691))

(assert tp_is_empty!39527)

(assert (not b!1585687))

(assert (not b!1585688))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167759 () Bool)

(declare-fun res!1083016 () Bool)

(declare-fun e!885401 () Bool)

(assert (=> d!167759 (=> res!1083016 e!885401)))

(assert (=> d!167759 (= res!1083016 (and (is-Cons!37136 lt!677356) (= (_1!13035 (h!38680 lt!677356)) newKey!21)))))

(assert (=> d!167759 (= (containsKey!1012 lt!677356 newKey!21) e!885401)))

(declare-fun b!1585696 () Bool)

(declare-fun e!885402 () Bool)

(assert (=> b!1585696 (= e!885401 e!885402)))

(declare-fun res!1083017 () Bool)

(assert (=> b!1585696 (=> (not res!1083017) (not e!885402))))

(assert (=> b!1585696 (= res!1083017 (and (or (not (is-Cons!37136 lt!677356)) (bvsle (_1!13035 (h!38680 lt!677356)) newKey!21)) (is-Cons!37136 lt!677356) (bvslt (_1!13035 (h!38680 lt!677356)) newKey!21)))))

(declare-fun b!1585697 () Bool)

(assert (=> b!1585697 (= e!885402 (containsKey!1012 (t!52070 lt!677356) newKey!21))))

(assert (= (and d!167759 (not res!1083016)) b!1585696))

(assert (= (and b!1585696 res!1083017) b!1585697))

(declare-fun m!1454457 () Bool)

(assert (=> b!1585697 m!1454457))

(assert (=> b!1585690 d!167759))

(declare-fun d!167763 () Bool)

(declare-fun res!1083028 () Bool)

(declare-fun e!885413 () Bool)

(assert (=> d!167763 (=> res!1083028 e!885413)))

(assert (=> d!167763 (= res!1083028 (or (is-Nil!37137 l!556) (is-Nil!37137 (t!52070 l!556))))))

(assert (=> d!167763 (= (isStrictlySorted!1199 l!556) e!885413)))

(declare-fun b!1585708 () Bool)

(declare-fun e!885414 () Bool)

(assert (=> b!1585708 (= e!885413 e!885414)))

(declare-fun res!1083029 () Bool)

(assert (=> b!1585708 (=> (not res!1083029) (not e!885414))))

(assert (=> b!1585708 (= res!1083029 (bvslt (_1!13035 (h!38680 l!556)) (_1!13035 (h!38680 (t!52070 l!556)))))))

(declare-fun b!1585709 () Bool)

(assert (=> b!1585709 (= e!885414 (isStrictlySorted!1199 (t!52070 l!556)))))

(assert (= (and d!167763 (not res!1083028)) b!1585708))

(assert (= (and b!1585708 res!1083029) b!1585709))

(declare-fun m!1454461 () Bool)

(assert (=> b!1585709 m!1454461))

(assert (=> start!138332 d!167763))

(declare-fun d!167767 () Bool)

(declare-fun lt!677359 () Bool)

(declare-fun content!872 (List!37140) (Set tuple2!26050))

(assert (=> d!167767 (= lt!677359 (member lt!677355 (content!872 lt!677356)))))

(declare-fun e!885425 () Bool)

(assert (=> d!167767 (= lt!677359 e!885425)))

(declare-fun res!1083041 () Bool)

(assert (=> d!167767 (=> (not res!1083041) (not e!885425))))

(assert (=> d!167767 (= res!1083041 (is-Cons!37136 lt!677356))))

(assert (=> d!167767 (= (contains!10554 lt!677356 lt!677355) lt!677359)))

(declare-fun b!1585720 () Bool)

(declare-fun e!885426 () Bool)

(assert (=> b!1585720 (= e!885425 e!885426)))

(declare-fun res!1083040 () Bool)

(assert (=> b!1585720 (=> res!1083040 e!885426)))

(assert (=> b!1585720 (= res!1083040 (= (h!38680 lt!677356) lt!677355))))

(declare-fun b!1585721 () Bool)

(assert (=> b!1585721 (= e!885426 (contains!10554 (t!52070 lt!677356) lt!677355))))

(assert (= (and d!167767 res!1083041) b!1585720))

(assert (= (and b!1585720 (not res!1083040)) b!1585721))

(declare-fun m!1454465 () Bool)

(assert (=> d!167767 m!1454465))

(declare-fun m!1454467 () Bool)

(assert (=> d!167767 m!1454467))

(declare-fun m!1454469 () Bool)

(assert (=> b!1585721 m!1454469))

(assert (=> b!1585687 d!167767))

(declare-fun d!167771 () Bool)

(declare-fun res!1083044 () Bool)

(declare-fun e!885429 () Bool)

(assert (=> d!167771 (=> res!1083044 e!885429)))

(assert (=> d!167771 (= res!1083044 (or (is-Nil!37137 lt!677356) (is-Nil!37137 (t!52070 lt!677356))))))

(assert (=> d!167771 (= (isStrictlySorted!1199 lt!677356) e!885429)))

(declare-fun b!1585724 () Bool)

(declare-fun e!885430 () Bool)

(assert (=> b!1585724 (= e!885429 e!885430)))

(declare-fun res!1083045 () Bool)

(assert (=> b!1585724 (=> (not res!1083045) (not e!885430))))

(assert (=> b!1585724 (= res!1083045 (bvslt (_1!13035 (h!38680 lt!677356)) (_1!13035 (h!38680 (t!52070 lt!677356)))))))

(declare-fun b!1585725 () Bool)

(assert (=> b!1585725 (= e!885430 (isStrictlySorted!1199 (t!52070 lt!677356)))))

(assert (= (and d!167771 (not res!1083044)) b!1585724))

(assert (= (and b!1585724 res!1083045) b!1585725))

(declare-fun m!1454471 () Bool)

(assert (=> b!1585725 m!1454471))

(assert (=> b!1585688 d!167771))

(declare-fun d!167773 () Bool)

(assert (=> d!167773 (= ($colon$colon!1045 (t!52070 l!556) lt!677355) (Cons!37136 lt!677355 (t!52070 l!556)))))

(assert (=> b!1585688 d!167773))

(declare-fun b!1585734 () Bool)

(declare-fun e!885437 () Bool)

(declare-fun tp!115294 () Bool)

(assert (=> b!1585734 (= e!885437 (and tp_is_empty!39527 tp!115294))))

(assert (=> b!1585691 (= tp!115291 e!885437)))

(assert (= (and b!1585691 (is-Cons!37136 (t!52070 l!556))) b!1585734))

(push 1)

(assert (not b!1585709))

(assert (not b!1585734))

(assert (not d!167767))

(assert tp_is_empty!39527)

(assert (not b!1585721))

(assert (not b!1585697))

(assert (not b!1585725))

(check-sat)

(pop 1)

(push 1)

(check-sat)

