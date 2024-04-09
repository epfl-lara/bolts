; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87724 () Bool)

(assert start!87724)

(declare-fun res!680782 () Bool)

(declare-fun e!570598 () Bool)

(assert (=> start!87724 (=> (not res!680782) (not e!570598))))

(declare-datatypes ((B!1424 0))(
  ( (B!1425 (val!11796 Int)) )
))
(declare-datatypes ((tuple2!15228 0))(
  ( (tuple2!15229 (_1!7624 (_ BitVec 64)) (_2!7624 B!1424)) )
))
(declare-datatypes ((List!21541 0))(
  ( (Nil!21538) (Cons!21537 (h!22735 tuple2!15228) (t!30550 List!21541)) )
))
(declare-fun l!412 () List!21541)

(declare-fun isStrictlySorted!566 (List!21541) Bool)

(assert (=> start!87724 (= res!680782 (isStrictlySorted!566 l!412))))

(assert (=> start!87724 e!570598))

(declare-fun e!570599 () Bool)

(assert (=> start!87724 e!570599))

(declare-fun tp_is_empty!23491 () Bool)

(assert (=> start!87724 tp_is_empty!23491))

(declare-fun b!1014230 () Bool)

(declare-fun res!680781 () Bool)

(assert (=> b!1014230 (=> (not res!680781) (not e!570598))))

(declare-fun value!115 () B!1424)

(assert (=> b!1014230 (= res!680781 (and (not (= (_2!7624 (h!22735 l!412)) value!115)) (is-Cons!21537 l!412)))))

(declare-fun b!1014231 () Bool)

(declare-fun ListPrimitiveSize!109 (List!21541) Int)

(assert (=> b!1014231 (= e!570598 (>= (ListPrimitiveSize!109 (t!30550 l!412)) (ListPrimitiveSize!109 l!412)))))

(declare-fun b!1014232 () Bool)

(declare-fun tp!70503 () Bool)

(assert (=> b!1014232 (= e!570599 (and tp_is_empty!23491 tp!70503))))

(assert (= (and start!87724 res!680782) b!1014230))

(assert (= (and b!1014230 res!680781) b!1014231))

(assert (= (and start!87724 (is-Cons!21537 l!412)) b!1014232))

(declare-fun m!937095 () Bool)

(assert (=> start!87724 m!937095))

(declare-fun m!937097 () Bool)

(assert (=> b!1014231 m!937097))

(declare-fun m!937099 () Bool)

(assert (=> b!1014231 m!937099))

(push 1)

(assert (not start!87724))

(assert (not b!1014231))

(assert (not b!1014232))

(assert tp_is_empty!23491)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120705 () Bool)

(declare-fun res!680807 () Bool)

(declare-fun e!570624 () Bool)

(assert (=> d!120705 (=> res!680807 e!570624)))

(assert (=> d!120705 (= res!680807 (or (is-Nil!21538 l!412) (is-Nil!21538 (t!30550 l!412))))))

(assert (=> d!120705 (= (isStrictlySorted!566 l!412) e!570624)))

(declare-fun b!1014263 () Bool)

(declare-fun e!570625 () Bool)

(assert (=> b!1014263 (= e!570624 e!570625)))

(declare-fun res!680808 () Bool)

(assert (=> b!1014263 (=> (not res!680808) (not e!570625))))

(assert (=> b!1014263 (= res!680808 (bvslt (_1!7624 (h!22735 l!412)) (_1!7624 (h!22735 (t!30550 l!412)))))))

(declare-fun b!1014264 () Bool)

(assert (=> b!1014264 (= e!570625 (isStrictlySorted!566 (t!30550 l!412)))))

(assert (= (and d!120705 (not res!680807)) b!1014263))

(assert (= (and b!1014263 res!680808) b!1014264))

(declare-fun m!937113 () Bool)

(assert (=> b!1014264 m!937113))

(assert (=> start!87724 d!120705))

(declare-fun d!120711 () Bool)

(declare-fun lt!448459 () Int)

(assert (=> d!120711 (>= lt!448459 0)))

(declare-fun e!570636 () Int)

(assert (=> d!120711 (= lt!448459 e!570636)))

(declare-fun c!102604 () Bool)

(assert (=> d!120711 (= c!102604 (is-Nil!21538 (t!30550 l!412)))))

(assert (=> d!120711 (= (ListPrimitiveSize!109 (t!30550 l!412)) lt!448459)))

(declare-fun b!1014281 () Bool)

(assert (=> b!1014281 (= e!570636 0)))

(declare-fun b!1014282 () Bool)

(assert (=> b!1014282 (= e!570636 (+ 1 (ListPrimitiveSize!109 (t!30550 (t!30550 l!412)))))))

(assert (= (and d!120711 c!102604) b!1014281))

(assert (= (and d!120711 (not c!102604)) b!1014282))

(declare-fun m!937119 () Bool)

(assert (=> b!1014282 m!937119))

(assert (=> b!1014231 d!120711))

(declare-fun d!120717 () Bool)

(declare-fun lt!448462 () Int)

(assert (=> d!120717 (>= lt!448462 0)))

(declare-fun e!570639 () Int)

(assert (=> d!120717 (= lt!448462 e!570639)))

(declare-fun c!102607 () Bool)

(assert (=> d!120717 (= c!102607 (is-Nil!21538 l!412))))

(assert (=> d!120717 (= (ListPrimitiveSize!109 l!412) lt!448462)))

(declare-fun b!1014287 () Bool)

(assert (=> b!1014287 (= e!570639 0)))

(declare-fun b!1014288 () Bool)

(assert (=> b!1014288 (= e!570639 (+ 1 (ListPrimitiveSize!109 (t!30550 l!412))))))

(assert (= (and d!120717 c!102607) b!1014287))

(assert (= (and d!120717 (not c!102607)) b!1014288))

(assert (=> b!1014288 m!937097))

(assert (=> b!1014231 d!120717))

(declare-fun b!1014305 () Bool)

(declare-fun e!570648 () Bool)

(declare-fun tp!70516 () Bool)

(assert (=> b!1014305 (= e!570648 (and tp_is_empty!23491 tp!70516))))

(assert (=> b!1014232 (= tp!70503 e!570648)))

(assert (= (and b!1014232 (is-Cons!21537 (t!30550 l!412))) b!1014305))

(push 1)

(assert (not b!1014282))

(assert (not b!1014264))

(assert tp_is_empty!23491)

(assert (not b!1014305))

(assert (not b!1014288))

(check-sat)

