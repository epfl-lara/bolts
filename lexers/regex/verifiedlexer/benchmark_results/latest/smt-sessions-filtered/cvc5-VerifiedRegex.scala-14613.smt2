; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756278 () Bool)

(assert start!756278)

(declare-datatypes ((B!4447 0))(
  ( (B!4448 (val!32623 Int)) )
))
(declare-datatypes ((List!75139 0))(
  ( (Nil!75013) (Cons!75013 (h!81461 B!4447) (t!390895 List!75139)) )
))
(declare-fun prefix!66 () List!75139)

(declare-fun l!2919 () List!75139)

(assert (=> start!756278 (and (not (is-Nil!75013 prefix!66)) (not (is-Nil!75013 l!2919)) (= l!2919 Nil!75013))))

(declare-fun e!4730242 () Bool)

(assert (=> start!756278 e!4730242))

(declare-fun e!4730243 () Bool)

(assert (=> start!756278 e!4730243))

(declare-fun b!8029076 () Bool)

(declare-fun tp_is_empty!54351 () Bool)

(declare-fun tp!2402648 () Bool)

(assert (=> b!8029076 (= e!4730242 (and tp_is_empty!54351 tp!2402648))))

(declare-fun b!8029077 () Bool)

(declare-fun tp!2402649 () Bool)

(assert (=> b!8029077 (= e!4730243 (and tp_is_empty!54351 tp!2402649))))

(assert (= (and start!756278 (is-Cons!75013 prefix!66)) b!8029076))

(assert (= (and start!756278 (is-Cons!75013 l!2919)) b!8029077))

(push 1)

(assert (not b!8029077))

(assert (not b!8029076))

(assert tp_is_empty!54351)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

