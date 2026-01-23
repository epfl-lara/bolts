; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!530892 () Bool)

(assert start!530892)

(declare-fun n!45 () Int)

(declare-datatypes ((B!3035 0))(
  ( (B!3036 (val!23359 Int)) )
))
(declare-datatypes ((List!58172 0))(
  ( (Nil!58048) (Cons!58048 (h!64496 B!3035) (t!370564 List!58172)) )
))
(declare-fun l!3169 () List!58172)

(assert (=> start!530892 (and (>= n!45 0) (is-Cons!58048 l!3169) (> n!45 0) (< (- n!45 1) 0))))

(assert (=> start!530892 true))

(declare-fun e!3137716 () Bool)

(assert (=> start!530892 e!3137716))

(declare-fun b!5022853 () Bool)

(declare-fun tp_is_empty!36645 () Bool)

(declare-fun tp!1408103 () Bool)

(assert (=> b!5022853 (= e!3137716 (and tp_is_empty!36645 tp!1408103))))

(assert (= (and start!530892 (is-Cons!58048 l!3169)) b!5022853))

(push 1)

(assert (not b!5022853))

(assert tp_is_empty!36645)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

