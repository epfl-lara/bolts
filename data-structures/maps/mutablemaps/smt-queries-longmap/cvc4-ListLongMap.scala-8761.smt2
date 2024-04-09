; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106430 () Bool)

(assert start!106430)

(assert (=> start!106430 false))

(declare-fun e!720553 () Bool)

(assert (=> start!106430 e!720553))

(assert (=> start!106430 true))

(declare-fun b!1265228 () Bool)

(declare-fun tp_is_empty!32495 () Bool)

(declare-fun tp!96318 () Bool)

(assert (=> b!1265228 (= e!720553 (and tp_is_empty!32495 tp!96318))))

(declare-datatypes ((B!1962 0))(
  ( (B!1963 (val!16316 Int)) )
))
(declare-datatypes ((tuple2!21300 0))(
  ( (tuple2!21301 (_1!10660 (_ BitVec 64)) (_2!10660 B!1962)) )
))
(declare-datatypes ((List!28483 0))(
  ( (Nil!28480) (Cons!28479 (h!29688 tuple2!21300) (t!42011 List!28483)) )
))
(declare-fun l!706 () List!28483)

(assert (= (and start!106430 (is-Cons!28479 l!706)) b!1265228))

(push 1)

(assert (not b!1265228))

(assert tp_is_empty!32495)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

