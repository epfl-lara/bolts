; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!545944 () Bool)

(assert start!545944)

(declare-fun b_free!133539 () Bool)

(declare-fun b_next!134329 () Bool)

(assert (=> start!545944 (= b_free!133539 (not b_next!134329))))

(declare-fun tp!1447867 () Bool)

(declare-fun b_and!350515 () Bool)

(assert (=> start!545944 (= tp!1447867 b_and!350515)))

(assert (=> start!545944 false))

(declare-fun e!3216499 () Bool)

(assert (=> start!545944 e!3216499))

(assert (=> start!545944 tp!1447867))

(declare-fun b!5162386 () Bool)

(declare-fun tp_is_empty!38241 () Bool)

(declare-fun tp!1447866 () Bool)

(assert (=> b!5162386 (= e!3216499 (and tp_is_empty!38241 tp!1447866))))

(declare-datatypes ((B!3095 0))(
  ( (B!3096 (val!24331 Int)) )
))
(declare-datatypes ((List!59997 0))(
  ( (Nil!59873) (Cons!59873 (h!66321 B!3095) (t!373090 List!59997)) )
))
(declare-fun l!3049 () List!59997)

(assert (= (and start!545944 (is-Cons!59873 l!3049)) b!5162386))

(push 1)

(assert (not b!5162386))

(assert tp_is_empty!38241)

(assert b_and!350515)

(assert (not b_next!134329))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350515)

(assert (not b_next!134329))

(check-sat)

(pop 1)

