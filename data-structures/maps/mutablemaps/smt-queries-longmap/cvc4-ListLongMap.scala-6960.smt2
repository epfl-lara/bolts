; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87938 () Bool)

(assert start!87938)

(declare-fun res!681220 () Bool)

(declare-fun e!571291 () Bool)

(assert (=> start!87938 (=> (not res!681220) (not e!571291))))

(declare-datatypes ((B!1470 0))(
  ( (B!1471 (val!11819 Int)) )
))
(declare-datatypes ((tuple2!15274 0))(
  ( (tuple2!15275 (_1!7647 (_ BitVec 64)) (_2!7647 B!1470)) )
))
(declare-datatypes ((List!21582 0))(
  ( (Nil!21579) (Cons!21578 (h!22776 tuple2!15274) (t!30591 List!21582)) )
))
(declare-fun l!412 () List!21582)

(declare-fun isStrictlySorted!589 (List!21582) Bool)

(assert (=> start!87938 (= res!681220 (isStrictlySorted!589 l!412))))

(assert (=> start!87938 e!571291))

(declare-fun e!571292 () Bool)

(assert (=> start!87938 e!571292))

(declare-fun tp_is_empty!23537 () Bool)

(assert (=> start!87938 tp_is_empty!23537))

(declare-fun b!1015437 () Bool)

(declare-fun value!115 () B!1470)

(assert (=> b!1015437 (= e!571291 (and (or (not (is-Cons!21578 l!412)) (not (= (_2!7647 (h!22776 l!412)) value!115))) (or (not (is-Cons!21578 l!412)) (= (_2!7647 (h!22776 l!412)) value!115)) (not (is-Nil!21579 l!412))))))

(declare-fun b!1015438 () Bool)

(declare-fun tp!70635 () Bool)

(assert (=> b!1015438 (= e!571292 (and tp_is_empty!23537 tp!70635))))

(assert (= (and start!87938 res!681220) b!1015437))

(assert (= (and start!87938 (is-Cons!21578 l!412)) b!1015438))

(declare-fun m!937663 () Bool)

(assert (=> start!87938 m!937663))

(push 1)

(assert (not start!87938))

(assert (not b!1015438))

