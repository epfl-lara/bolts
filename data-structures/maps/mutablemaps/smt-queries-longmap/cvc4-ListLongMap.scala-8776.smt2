; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106766 () Bool)

(assert start!106766)

(assert (=> start!106766 false))

(declare-fun e!721810 () Bool)

(assert (=> start!106766 e!721810))

(assert (=> start!106766 true))

(declare-fun b!1267040 () Bool)

(declare-fun tp_is_empty!32573 () Bool)

(declare-fun tp!96549 () Bool)

(assert (=> b!1267040 (= e!721810 (and tp_is_empty!32573 tp!96549))))

(declare-datatypes ((B!2052 0))(
  ( (B!2053 (val!16361 Int)) )
))
(declare-datatypes ((tuple2!21390 0))(
  ( (tuple2!21391 (_1!10705 (_ BitVec 64)) (_2!10705 B!2052)) )
))
(declare-datatypes ((List!28528 0))(
  ( (Nil!28525) (Cons!28524 (h!29733 tuple2!21390) (t!42062 List!28528)) )
))
(declare-fun l!874 () List!28528)

(assert (= (and start!106766 (is-Cons!28524 l!874)) b!1267040))

(push 1)

(assert (not b!1267040))

(assert tp_is_empty!32573)

(check-sat)

(pop 1)

(push 1)

