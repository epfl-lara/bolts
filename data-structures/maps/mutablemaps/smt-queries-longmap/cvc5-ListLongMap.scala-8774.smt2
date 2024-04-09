; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106750 () Bool)

(assert start!106750)

(assert (=> start!106750 false))

(declare-fun e!721786 () Bool)

(assert (=> start!106750 e!721786))

(declare-fun b!1267016 () Bool)

(declare-fun tp_is_empty!32557 () Bool)

(declare-fun tp!96525 () Bool)

(assert (=> b!1267016 (= e!721786 (and tp_is_empty!32557 tp!96525))))

(declare-datatypes ((B!2036 0))(
  ( (B!2037 (val!16353 Int)) )
))
(declare-datatypes ((tuple2!21374 0))(
  ( (tuple2!21375 (_1!10697 (_ BitVec 64)) (_2!10697 B!2036)) )
))
(declare-datatypes ((List!28520 0))(
  ( (Nil!28517) (Cons!28516 (h!29725 tuple2!21374) (t!42054 List!28520)) )
))
(declare-fun l!874 () List!28520)

(assert (= (and start!106750 (is-Cons!28516 l!874)) b!1267016))

(push 1)

(assert (not b!1267016))

(assert tp_is_empty!32557)

(check-sat)

(pop 1)

