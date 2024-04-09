; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106372 () Bool)

(assert start!106372)

(assert (=> start!106372 false))

(declare-fun e!720343 () Bool)

(assert (=> start!106372 e!720343))

(assert (=> start!106372 true))

(declare-fun b!1264862 () Bool)

(declare-fun tp_is_empty!32467 () Bool)

(declare-fun tp!96267 () Bool)

(assert (=> b!1264862 (= e!720343 (and tp_is_empty!32467 tp!96267))))

(declare-datatypes ((B!1934 0))(
  ( (B!1935 (val!16302 Int)) )
))
(declare-datatypes ((tuple2!21272 0))(
  ( (tuple2!21273 (_1!10646 (_ BitVec 64)) (_2!10646 B!1934)) )
))
(declare-datatypes ((List!28469 0))(
  ( (Nil!28466) (Cons!28465 (h!29674 tuple2!21272) (t!41997 List!28469)) )
))
(declare-fun l!706 () List!28469)

(assert (= (and start!106372 (is-Cons!28465 l!706)) b!1264862))

(push 1)

(assert (not b!1264862))

(assert tp_is_empty!32467)

(check-sat)

(pop 1)

