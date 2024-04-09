; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134468 () Bool)

(assert start!134468)

(declare-fun res!1072705 () Bool)

(declare-fun e!874983 () Bool)

(assert (=> start!134468 (=> (not res!1072705) (not e!874983))))

(declare-fun key1!37 () (_ BitVec 64))

(declare-fun key2!21 () (_ BitVec 64))

(assert (=> start!134468 (= res!1072705 (not (= key1!37 key2!21)))))

(assert (=> start!134468 e!874983))

(assert (=> start!134468 true))

(declare-fun e!874982 () Bool)

(assert (=> start!134468 e!874982))

(declare-fun b!1569519 () Bool)

(declare-fun res!1072706 () Bool)

(assert (=> b!1569519 (=> (not res!1072706) (not e!874983))))

(declare-datatypes ((B!2526 0))(
  ( (B!2527 (val!19625 Int)) )
))
(declare-datatypes ((tuple2!25516 0))(
  ( (tuple2!25517 (_1!12768 (_ BitVec 64)) (_2!12768 B!2526)) )
))
(declare-datatypes ((List!36906 0))(
  ( (Nil!36903) (Cons!36902 (h!38350 tuple2!25516) (t!51821 List!36906)) )
))
(declare-fun l!750 () List!36906)

(declare-fun isStrictlySorted!1010 (List!36906) Bool)

(assert (=> b!1569519 (= res!1072706 (isStrictlySorted!1010 l!750))))

(declare-fun b!1569520 () Bool)

(declare-fun ListPrimitiveSize!189 (List!36906) Int)

(assert (=> b!1569520 (= e!874983 (< (ListPrimitiveSize!189 l!750) 0))))

(declare-fun b!1569521 () Bool)

(declare-fun tp_is_empty!39077 () Bool)

(declare-fun tp!114154 () Bool)

(assert (=> b!1569521 (= e!874982 (and tp_is_empty!39077 tp!114154))))

(assert (= (and start!134468 res!1072705) b!1569519))

(assert (= (and b!1569519 res!1072706) b!1569520))

(assert (= (and start!134468 (is-Cons!36902 l!750)) b!1569521))

(declare-fun m!1443789 () Bool)

(assert (=> b!1569519 m!1443789))

(declare-fun m!1443791 () Bool)

(assert (=> b!1569520 m!1443791))

(push 1)

(assert (not b!1569519))

(assert (not b!1569520))

(assert (not b!1569521))

(assert tp_is_empty!39077)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163839 () Bool)

(declare-fun res!1072711 () Bool)

(declare-fun e!874990 () Bool)

(assert (=> d!163839 (=> res!1072711 e!874990)))

(assert (=> d!163839 (= res!1072711 (or (is-Nil!36903 l!750) (is-Nil!36903 (t!51821 l!750))))))

(assert (=> d!163839 (= (isStrictlySorted!1010 l!750) e!874990)))

(declare-fun b!1569530 () Bool)

(declare-fun e!874991 () Bool)

(assert (=> b!1569530 (= e!874990 e!874991)))

(declare-fun res!1072712 () Bool)

(assert (=> b!1569530 (=> (not res!1072712) (not e!874991))))

(assert (=> b!1569530 (= res!1072712 (bvslt (_1!12768 (h!38350 l!750)) (_1!12768 (h!38350 (t!51821 l!750)))))))

(declare-fun b!1569531 () Bool)

(assert (=> b!1569531 (= e!874991 (isStrictlySorted!1010 (t!51821 l!750)))))

(assert (= (and d!163839 (not res!1072711)) b!1569530))

(assert (= (and b!1569530 res!1072712) b!1569531))

(declare-fun m!1443793 () Bool)

(assert (=> b!1569531 m!1443793))

(assert (=> b!1569519 d!163839))

(declare-fun d!163843 () Bool)

(declare-fun lt!673245 () Int)

(assert (=> d!163843 (>= lt!673245 0)))

(declare-fun e!874997 () Int)

(assert (=> d!163843 (= lt!673245 e!874997)))

(declare-fun c!144716 () Bool)

(assert (=> d!163843 (= c!144716 (is-Nil!36903 l!750))))

(assert (=> d!163843 (= (ListPrimitiveSize!189 l!750) lt!673245)))

(declare-fun b!1569542 () Bool)

(assert (=> b!1569542 (= e!874997 0)))

(declare-fun b!1569543 () Bool)

(assert (=> b!1569543 (= e!874997 (+ 1 (ListPrimitiveSize!189 (t!51821 l!750))))))

(assert (= (and d!163843 c!144716) b!1569542))

(assert (= (and d!163843 (not c!144716)) b!1569543))

(declare-fun m!1443797 () Bool)

(assert (=> b!1569543 m!1443797))

(assert (=> b!1569520 d!163843))

(declare-fun b!1569552 () Bool)

(declare-fun e!875003 () Bool)

(declare-fun tp!114157 () Bool)

(assert (=> b!1569552 (= e!875003 (and tp_is_empty!39077 tp!114157))))

(assert (=> b!1569521 (= tp!114154 e!875003)))

(assert (= (and b!1569521 (is-Cons!36902 (t!51821 l!750))) b!1569552))

(push 1)

(assert (not b!1569543))

(assert (not b!1569531))

(assert (not b!1569552))

(assert tp_is_empty!39077)

(check-sat)

(pop 1)

(push 1)

(check-sat)

