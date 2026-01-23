; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720346 () Bool)

(assert start!720346)

(declare-fun b_free!134331 () Bool)

(declare-fun b_next!135121 () Bool)

(assert (=> start!720346 (= b_free!134331 (not b_next!135121))))

(declare-fun tp!2100816 () Bool)

(declare-fun b_and!351947 () Bool)

(assert (=> start!720346 (= tp!2100816 b_and!351947)))

(assert (=> start!720346 false))

(declare-fun e!4420227 () Bool)

(assert (=> start!720346 e!4420227))

(assert (=> start!720346 tp!2100816))

(declare-fun e!4420228 () Bool)

(assert (=> start!720346 e!4420228))

(declare-fun b!7384594 () Bool)

(declare-fun tp_is_empty!48949 () Bool)

(declare-fun tp!2100817 () Bool)

(assert (=> b!7384594 (= e!4420227 (and tp_is_empty!48949 tp!2100817))))

(declare-fun b!7384595 () Bool)

(declare-fun tp!2100818 () Bool)

(assert (=> b!7384595 (= e!4420228 (and tp_is_empty!48949 tp!2100818))))

(declare-datatypes ((B!3875 0))(
  ( (B!3876 (val!29849 Int)) )
))
(declare-datatypes ((List!71848 0))(
  ( (Nil!71724) (Cons!71724 (h!78172 B!3875) (t!386399 List!71848)) )
))
(declare-fun l1!1475 () List!71848)

(assert (= (and start!720346 (is-Cons!71724 l1!1475)) b!7384594))

(declare-fun l2!1444 () List!71848)

(assert (= (and start!720346 (is-Cons!71724 l2!1444)) b!7384595))

(push 1)

(assert tp_is_empty!48949)

(assert b_and!351947)

(assert (not b!7384595))

(assert (not b!7384594))

(assert (not b_next!135121))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351947)

(assert (not b_next!135121))

(check-sat)

(pop 1)

