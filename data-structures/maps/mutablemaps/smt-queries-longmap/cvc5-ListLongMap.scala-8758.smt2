; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106378 () Bool)

(assert start!106378)

(assert (=> start!106378 false))

(declare-fun e!720352 () Bool)

(assert (=> start!106378 e!720352))

(assert (=> start!106378 true))

(declare-fun b!1264871 () Bool)

(declare-fun tp_is_empty!32473 () Bool)

(declare-fun tp!96276 () Bool)

(assert (=> b!1264871 (= e!720352 (and tp_is_empty!32473 tp!96276))))

(declare-datatypes ((B!1940 0))(
  ( (B!1941 (val!16305 Int)) )
))
(declare-datatypes ((tuple2!21278 0))(
  ( (tuple2!21279 (_1!10649 (_ BitVec 64)) (_2!10649 B!1940)) )
))
(declare-datatypes ((List!28472 0))(
  ( (Nil!28469) (Cons!28468 (h!29677 tuple2!21278) (t!42000 List!28472)) )
))
(declare-fun l!706 () List!28472)

(assert (= (and start!106378 (is-Cons!28468 l!706)) b!1264871))

(push 1)

(assert (not b!1264871))

(assert tp_is_empty!32473)

(check-sat)

(pop 1)

