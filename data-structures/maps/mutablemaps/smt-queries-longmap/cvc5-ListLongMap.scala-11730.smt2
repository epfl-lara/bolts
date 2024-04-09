; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137572 () Bool)

(assert start!137572)

(assert (=> start!137572 false))

(declare-fun e!882693 () Bool)

(assert (=> start!137572 e!882693))

(declare-fun b!1581785 () Bool)

(declare-fun tp_is_empty!39265 () Bool)

(declare-fun tp!114634 () Bool)

(assert (=> b!1581785 (= e!882693 (and tp_is_empty!39265 tp!114634))))

(declare-datatypes ((B!2720 0))(
  ( (B!2721 (val!19722 Int)) )
))
(declare-datatypes ((tuple2!25776 0))(
  ( (tuple2!25777 (_1!12898 (_ BitVec 64)) (_2!12898 B!2720)) )
))
(declare-datatypes ((List!37003 0))(
  ( (Nil!37000) (Cons!36999 (h!38543 tuple2!25776) (t!51924 List!37003)) )
))
(declare-fun l!1356 () List!37003)

(assert (= (and start!137572 (is-Cons!36999 l!1356)) b!1581785))

(push 1)

(assert (not b!1581785))

(assert tp_is_empty!39265)

(check-sat)

(pop 1)

