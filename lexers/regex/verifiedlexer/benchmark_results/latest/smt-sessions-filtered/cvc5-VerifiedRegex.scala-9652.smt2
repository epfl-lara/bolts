; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506844 () Bool)

(assert start!506844)

(declare-fun b!4853587 () Bool)

(declare-fun res!2072137 () Bool)

(declare-fun e!3034196 () Bool)

(assert (=> b!4853587 (=> (not res!2072137) (not e!3034196))))

(declare-datatypes ((K!17547 0))(
  ( (K!17548 (val!22343 Int)) )
))
(declare-datatypes ((V!17793 0))(
  ( (V!17794 (val!22344 Int)) )
))
(declare-datatypes ((tuple2!59514 0))(
  ( (tuple2!59515 (_1!33051 K!17547) (_2!33051 V!17793)) )
))
(declare-datatypes ((List!55814 0))(
  ( (Nil!55690) (Cons!55690 (h!62138 tuple2!59514) (t!363310 List!55814)) )
))
(declare-fun l!11080 () List!55814)

(declare-fun key!2508 () K!17547)

(assert (=> b!4853587 (= res!2072137 (and (or (not (is-Cons!55690 l!11080)) (not (= (_1!33051 (h!62138 l!11080)) key!2508))) (not (is-Cons!55690 l!11080))))))

(declare-fun tp_is_empty!35421 () Bool)

(declare-fun tp!1365239 () Bool)

(declare-fun e!3034194 () Bool)

(declare-fun b!4853590 () Bool)

(declare-fun tp_is_empty!35423 () Bool)

(assert (=> b!4853590 (= e!3034194 (and tp_is_empty!35421 tp_is_empty!35423 tp!1365239))))

(declare-fun b!4853589 () Bool)

(declare-fun e!3034195 () Bool)

(declare-fun containsKey!4765 (List!55814 K!17547) Bool)

(assert (=> b!4853589 (= e!3034195 (containsKey!4765 l!11080 key!2508))))

(declare-fun res!2072139 () Bool)

(assert (=> start!506844 (=> (not res!2072139) (not e!3034196))))

(declare-fun noDuplicateKeys!2639 (List!55814) Bool)

(assert (=> start!506844 (= res!2072139 (noDuplicateKeys!2639 l!11080))))

(assert (=> start!506844 e!3034196))

(assert (=> start!506844 e!3034194))

(assert (=> start!506844 tp_is_empty!35421))

(declare-fun b!4853588 () Bool)

(assert (=> b!4853588 (= e!3034196 false)))

(declare-fun lt!1990753 () Bool)

(assert (=> b!4853588 (= lt!1990753 e!3034195)))

(declare-fun res!2072138 () Bool)

(assert (=> b!4853588 (=> res!2072138 e!3034195)))

(assert (=> b!4853588 (= res!2072138 false)))

(assert (= (and start!506844 res!2072139) b!4853587))

(assert (= (and b!4853587 res!2072137) b!4853588))

(assert (= (and b!4853588 (not res!2072138)) b!4853589))

(assert (= (and start!506844 (is-Cons!55690 l!11080)) b!4853590))

(declare-fun m!5851820 () Bool)

(assert (=> b!4853589 m!5851820))

(declare-fun m!5851822 () Bool)

(assert (=> start!506844 m!5851822))

(push 1)

(assert tp_is_empty!35421)

(assert tp_is_empty!35423)

(assert (not b!4853589))

(assert (not start!506844))

(assert (not b!4853590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

