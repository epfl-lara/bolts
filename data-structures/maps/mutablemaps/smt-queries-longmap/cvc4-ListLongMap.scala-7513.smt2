; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95294 () Bool)

(assert start!95294)

(assert (=> start!95294 false))

(assert (=> start!95294 true))

(declare-datatypes ((B!1764 0))(
  ( (B!1765 (val!13085 Int)) )
))
(declare-datatypes ((tuple2!16752 0))(
  ( (tuple2!16753 (_1!8386 (_ BitVec 64)) (_2!8386 B!1764)) )
))
(declare-datatypes ((List!23320 0))(
  ( (Nil!23317) (Cons!23316 (h!24525 tuple2!16752) (t!32686 List!23320)) )
))
(declare-datatypes ((ListLongMap!14733 0))(
  ( (ListLongMap!14734 (toList!7382 List!23320)) )
))
(declare-fun lm!214 () ListLongMap!14733)

(declare-fun e!615473 () Bool)

(declare-fun inv!37847 (ListLongMap!14733) Bool)

(assert (=> start!95294 (and (inv!37847 lm!214) e!615473)))

(declare-fun b!1076582 () Bool)

(declare-fun tp!78258 () Bool)

(assert (=> b!1076582 (= e!615473 tp!78258)))

(assert (= start!95294 b!1076582))

(declare-fun m!995719 () Bool)

(assert (=> start!95294 m!995719))

(push 1)

(assert (not start!95294))

(assert (not b!1076582))

(check-sat)

