; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106382 () Bool)

(assert start!106382)

(assert (=> start!106382 false))

(declare-fun e!720358 () Bool)

(assert (=> start!106382 e!720358))

(assert (=> start!106382 true))

(declare-fun b!1264877 () Bool)

(declare-fun tp_is_empty!32477 () Bool)

(declare-fun tp!96282 () Bool)

(assert (=> b!1264877 (= e!720358 (and tp_is_empty!32477 tp!96282))))

(declare-datatypes ((B!1944 0))(
  ( (B!1945 (val!16307 Int)) )
))
(declare-datatypes ((tuple2!21282 0))(
  ( (tuple2!21283 (_1!10651 (_ BitVec 64)) (_2!10651 B!1944)) )
))
(declare-datatypes ((List!28474 0))(
  ( (Nil!28471) (Cons!28470 (h!29679 tuple2!21282) (t!42002 List!28474)) )
))
(declare-fun l!706 () List!28474)

(assert (= (and start!106382 (is-Cons!28470 l!706)) b!1264877))

(push 1)

(assert (not b!1264877))

(assert tp_is_empty!32477)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

