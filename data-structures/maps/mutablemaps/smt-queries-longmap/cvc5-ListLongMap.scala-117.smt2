; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2026 () Bool)

(assert start!2026)

(declare-fun b!13667 () Bool)

(assert (=> b!13667 true))

(declare-fun b!13663 () Bool)

(declare-fun e!8179 () Bool)

(assert (=> b!13663 (= e!8179 false)))

(declare-fun b!13664 () Bool)

(declare-fun res!10729 () Bool)

(assert (=> b!13664 (=> (not res!10729) (not e!8179))))

(declare-datatypes ((B!500 0))(
  ( (B!501 (val!348 Int)) )
))
(declare-datatypes ((tuple2!478 0))(
  ( (tuple2!479 (_1!239 (_ BitVec 64)) (_2!239 B!500)) )
))
(declare-datatypes ((List!398 0))(
  ( (Nil!395) (Cons!394 (h!960 tuple2!478) (t!2794 List!398)) )
))
(declare-fun l!522 () List!398)

(declare-fun isEmpty!87 (List!398) Bool)

(assert (=> b!13664 (= res!10729 (not (isEmpty!87 l!522)))))

(declare-fun b!13665 () Bool)

(declare-fun e!8178 () Bool)

(declare-fun tp_is_empty!679 () Bool)

(declare-fun tp!2213 () Bool)

(assert (=> b!13665 (= e!8178 (and tp_is_empty!679 tp!2213))))

(declare-fun res!10727 () Bool)

(assert (=> b!13667 (=> (not res!10727) (not e!8179))))

(declare-fun lambda!98 () Int)

(declare-fun forall!80 (List!398 Int) Bool)

(assert (=> b!13667 (= res!10727 (forall!80 Nil!395 lambda!98))))

(declare-fun res!10728 () Bool)

(assert (=> start!2026 (=> (not res!10728) (not e!8179))))

(declare-fun isStrictlySorted!89 (List!398) Bool)

(assert (=> start!2026 (= res!10728 (isStrictlySorted!89 l!522))))

(assert (=> start!2026 e!8179))

(assert (=> start!2026 e!8178))

(assert (=> start!2026 tp_is_empty!679))

(declare-fun b!13666 () Bool)

(declare-fun res!10726 () Bool)

(assert (=> b!13666 (=> (not res!10726) (not e!8179))))

(declare-fun value!159 () B!500)

(assert (=> b!13666 (= res!10726 (and (or (not (is-Cons!394 l!522)) (not (= (_2!239 (h!960 l!522)) value!159))) (or (not (is-Cons!394 l!522)) (= (_2!239 (h!960 l!522)) value!159)) (is-Nil!395 l!522)))))

(assert (= (and start!2026 res!10728) b!13666))

(assert (= (and b!13666 res!10726) b!13667))

(assert (= (and b!13667 res!10727) b!13664))

(assert (= (and b!13664 res!10729) b!13663))

(assert (= (and start!2026 (is-Cons!394 l!522)) b!13665))

(declare-fun m!9235 () Bool)

(assert (=> b!13664 m!9235))

(declare-fun m!9237 () Bool)

(assert (=> b!13667 m!9237))

(declare-fun m!9239 () Bool)

(assert (=> start!2026 m!9239))

(push 1)

(assert (not b!13664))

(assert (not start!2026))

(assert tp_is_empty!679)

(assert (not b!13665))

(assert (not b!13667))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

