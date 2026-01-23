; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694926 () Bool)

(assert start!694926)

(declare-fun b_free!133819 () Bool)

(declare-fun b_next!134609 () Bool)

(assert (=> start!694926 (= b_free!133819 (not b_next!134609))))

(declare-fun tp!1966226 () Bool)

(declare-fun b_and!350989 () Bool)

(assert (=> start!694926 (= tp!1966226 b_and!350989)))

(assert (=> start!694926 false))

(declare-fun e!4286936 () Bool)

(assert (=> start!694926 e!4286936))

(assert (=> start!694926 tp!1966226))

(declare-fun e!4286937 () Bool)

(assert (=> start!694926 e!4286937))

(declare-fun b!7133216 () Bool)

(declare-fun tp_is_empty!45805 () Bool)

(declare-fun tp!1966224 () Bool)

(assert (=> b!7133216 (= e!4286936 (and tp_is_empty!45805 tp!1966224))))

(declare-fun b!7133217 () Bool)

(declare-fun tp!1966225 () Bool)

(assert (=> b!7133217 (= e!4286937 (and tp_is_empty!45805 tp!1966225))))

(declare-datatypes ((B!3383 0))(
  ( (B!3384 (val!28163 Int)) )
))
(declare-datatypes ((List!69256 0))(
  ( (Nil!69132) (Cons!69132 (h!75580 B!3383) (t!383233 List!69256)) )
))
(declare-fun l1!1495 () List!69256)

(assert (= (and start!694926 (is-Cons!69132 l1!1495)) b!7133216))

(declare-fun l2!1464 () List!69256)

(assert (= (and start!694926 (is-Cons!69132 l2!1464)) b!7133217))

(push 1)

(assert (not b!7133216))

(assert (not b!7133217))

(assert b_and!350989)

(assert tp_is_empty!45805)

(assert (not b_next!134609))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350989)

(assert (not b_next!134609))

(check-sat)

(pop 1)

