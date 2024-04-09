; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106754 () Bool)

(assert start!106754)

(assert (=> start!106754 false))

(declare-fun e!721792 () Bool)

(assert (=> start!106754 e!721792))

(declare-fun b!1267022 () Bool)

(declare-fun tp_is_empty!32561 () Bool)

(declare-fun tp!96531 () Bool)

(assert (=> b!1267022 (= e!721792 (and tp_is_empty!32561 tp!96531))))

(declare-datatypes ((B!2040 0))(
  ( (B!2041 (val!16355 Int)) )
))
(declare-datatypes ((tuple2!21378 0))(
  ( (tuple2!21379 (_1!10699 (_ BitVec 64)) (_2!10699 B!2040)) )
))
(declare-datatypes ((List!28522 0))(
  ( (Nil!28519) (Cons!28518 (h!29727 tuple2!21378) (t!42056 List!28522)) )
))
(declare-fun l!874 () List!28522)

(assert (= (and start!106754 (is-Cons!28518 l!874)) b!1267022))

(push 1)

(assert (not b!1267022))

(assert tp_is_empty!32561)

(check-sat)

(pop 1)

(push 1)

(check-sat)

