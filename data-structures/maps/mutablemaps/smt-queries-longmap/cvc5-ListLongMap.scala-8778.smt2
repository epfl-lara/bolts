; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106774 () Bool)

(assert start!106774)

(assert (=> start!106774 false))

(declare-fun e!721831 () Bool)

(assert (=> start!106774 e!721831))

(assert (=> start!106774 true))

(declare-fun b!1267097 () Bool)

(declare-fun tp_is_empty!32581 () Bool)

(declare-fun tp!96561 () Bool)

(assert (=> b!1267097 (= e!721831 (and tp_is_empty!32581 tp!96561))))

(declare-datatypes ((B!2060 0))(
  ( (B!2061 (val!16365 Int)) )
))
(declare-datatypes ((tuple2!21398 0))(
  ( (tuple2!21399 (_1!10709 (_ BitVec 64)) (_2!10709 B!2060)) )
))
(declare-datatypes ((List!28532 0))(
  ( (Nil!28529) (Cons!28528 (h!29737 tuple2!21398) (t!42066 List!28532)) )
))
(declare-fun l!874 () List!28532)

(assert (= (and start!106774 (is-Cons!28528 l!874)) b!1267097))

(push 1)

(assert (not b!1267097))

(assert tp_is_empty!32581)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

