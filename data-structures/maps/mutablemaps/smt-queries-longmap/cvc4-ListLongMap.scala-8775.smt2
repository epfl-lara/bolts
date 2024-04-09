; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106760 () Bool)

(assert start!106760)

(assert (=> start!106760 false))

(declare-fun e!721801 () Bool)

(assert (=> start!106760 e!721801))

(assert (=> start!106760 true))

(declare-fun b!1267031 () Bool)

(declare-fun tp_is_empty!32567 () Bool)

(declare-fun tp!96540 () Bool)

(assert (=> b!1267031 (= e!721801 (and tp_is_empty!32567 tp!96540))))

(declare-datatypes ((B!2046 0))(
  ( (B!2047 (val!16358 Int)) )
))
(declare-datatypes ((tuple2!21384 0))(
  ( (tuple2!21385 (_1!10702 (_ BitVec 64)) (_2!10702 B!2046)) )
))
(declare-datatypes ((List!28525 0))(
  ( (Nil!28522) (Cons!28521 (h!29730 tuple2!21384) (t!42059 List!28525)) )
))
(declare-fun l!874 () List!28525)

(assert (= (and start!106760 (is-Cons!28521 l!874)) b!1267031))

(push 1)

(assert (not b!1267031))

(assert tp_is_empty!32567)

(check-sat)

(pop 1)

(push 1)

(check-sat)

