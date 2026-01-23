; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!530896 () Bool)

(assert start!530896)

(declare-fun n!45 () Int)

(declare-datatypes ((B!3039 0))(
  ( (B!3040 (val!23361 Int)) )
))
(declare-datatypes ((List!58174 0))(
  ( (Nil!58050) (Cons!58050 (h!64498 B!3039) (t!370566 List!58174)) )
))
(declare-fun l!3169 () List!58174)

(assert (=> start!530896 (and (>= n!45 0) (is-Cons!58050 l!3169) (> n!45 0) (>= (- n!45 1) 0) (>= (- n!45 1) n!45))))

(assert (=> start!530896 true))

(declare-fun e!3137722 () Bool)

(assert (=> start!530896 e!3137722))

(declare-fun b!5022859 () Bool)

(declare-fun tp_is_empty!36649 () Bool)

(declare-fun tp!1408109 () Bool)

(assert (=> b!5022859 (= e!3137722 (and tp_is_empty!36649 tp!1408109))))

(assert (= (and start!530896 (is-Cons!58050 l!3169)) b!5022859))

(push 1)

(assert (not b!5022859))

(assert tp_is_empty!36649)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

