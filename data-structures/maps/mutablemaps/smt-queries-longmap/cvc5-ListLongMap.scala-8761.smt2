; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106426 () Bool)

(assert start!106426)

(assert (=> start!106426 false))

(declare-fun e!720547 () Bool)

(assert (=> start!106426 e!720547))

(assert (=> start!106426 true))

(declare-fun b!1265222 () Bool)

(declare-fun tp_is_empty!32491 () Bool)

(declare-fun tp!96312 () Bool)

(assert (=> b!1265222 (= e!720547 (and tp_is_empty!32491 tp!96312))))

(declare-datatypes ((B!1958 0))(
  ( (B!1959 (val!16314 Int)) )
))
(declare-datatypes ((tuple2!21296 0))(
  ( (tuple2!21297 (_1!10658 (_ BitVec 64)) (_2!10658 B!1958)) )
))
(declare-datatypes ((List!28481 0))(
  ( (Nil!28478) (Cons!28477 (h!29686 tuple2!21296) (t!42009 List!28481)) )
))
(declare-fun l!706 () List!28481)

(assert (= (and start!106426 (is-Cons!28477 l!706)) b!1265222))

(push 1)

(assert (not b!1265222))

(assert tp_is_empty!32491)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

