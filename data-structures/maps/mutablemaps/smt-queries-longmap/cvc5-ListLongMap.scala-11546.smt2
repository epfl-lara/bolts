; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134440 () Bool)

(assert start!134440)

(assert (=> start!134440 false))

(assert (=> start!134440 true))

(declare-fun e!874863 () Bool)

(assert (=> start!134440 e!874863))

(declare-fun b!1569323 () Bool)

(declare-fun tp_is_empty!39061 () Bool)

(declare-fun tp!114121 () Bool)

(assert (=> b!1569323 (= e!874863 (and tp_is_empty!39061 tp!114121))))

(declare-datatypes ((B!2510 0))(
  ( (B!2511 (val!19617 Int)) )
))
(declare-datatypes ((tuple2!25500 0))(
  ( (tuple2!25501 (_1!12760 (_ BitVec 64)) (_2!12760 B!2510)) )
))
(declare-datatypes ((List!36898 0))(
  ( (Nil!36895) (Cons!36894 (h!38342 tuple2!25500) (t!51813 List!36898)) )
))
(declare-fun l!750 () List!36898)

(assert (= (and start!134440 (is-Cons!36894 l!750)) b!1569323))

(push 1)

(assert (not b!1569323))

(assert tp_is_empty!39061)

(check-sat)

(pop 1)

