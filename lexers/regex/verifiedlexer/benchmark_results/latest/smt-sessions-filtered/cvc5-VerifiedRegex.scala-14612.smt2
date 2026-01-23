; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756274 () Bool)

(assert start!756274)

(declare-datatypes ((B!4443 0))(
  ( (B!4444 (val!32621 Int)) )
))
(declare-datatypes ((List!75137 0))(
  ( (Nil!75011) (Cons!75011 (h!81459 B!4443) (t!390893 List!75137)) )
))
(declare-fun prefix!66 () List!75137)

(declare-fun l!2919 () List!75137)

(assert (=> start!756274 (and (not (is-Nil!75011 prefix!66)) (not (is-Nil!75011 l!2919)) (= prefix!66 Nil!75011))))

(declare-fun e!4730230 () Bool)

(assert (=> start!756274 e!4730230))

(declare-fun e!4730231 () Bool)

(assert (=> start!756274 e!4730231))

(declare-fun b!8029064 () Bool)

(declare-fun tp_is_empty!54347 () Bool)

(declare-fun tp!2402636 () Bool)

(assert (=> b!8029064 (= e!4730230 (and tp_is_empty!54347 tp!2402636))))

(declare-fun b!8029065 () Bool)

(declare-fun tp!2402637 () Bool)

(assert (=> b!8029065 (= e!4730231 (and tp_is_empty!54347 tp!2402637))))

(assert (= (and start!756274 (is-Cons!75011 prefix!66)) b!8029064))

(assert (= (and start!756274 (is-Cons!75011 l!2919)) b!8029065))

(push 1)

(assert (not b!8029065))

(assert (not b!8029064))

(assert tp_is_empty!54347)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

