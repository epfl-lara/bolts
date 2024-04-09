; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106762 () Bool)

(assert start!106762)

(assert (=> start!106762 false))

(declare-fun e!721804 () Bool)

(assert (=> start!106762 e!721804))

(assert (=> start!106762 true))

(declare-fun b!1267034 () Bool)

(declare-fun tp_is_empty!32569 () Bool)

(declare-fun tp!96543 () Bool)

(assert (=> b!1267034 (= e!721804 (and tp_is_empty!32569 tp!96543))))

(declare-datatypes ((B!2048 0))(
  ( (B!2049 (val!16359 Int)) )
))
(declare-datatypes ((tuple2!21386 0))(
  ( (tuple2!21387 (_1!10703 (_ BitVec 64)) (_2!10703 B!2048)) )
))
(declare-datatypes ((List!28526 0))(
  ( (Nil!28523) (Cons!28522 (h!29731 tuple2!21386) (t!42060 List!28526)) )
))
(declare-fun l!874 () List!28526)

(assert (= (and start!106762 (is-Cons!28522 l!874)) b!1267034))

(push 1)

(assert (not b!1267034))

(assert tp_is_empty!32569)

(check-sat)

(pop 1)

