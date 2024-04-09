; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106756 () Bool)

(assert start!106756)

(assert (=> start!106756 false))

(declare-fun e!721795 () Bool)

(assert (=> start!106756 e!721795))

(assert (=> start!106756 true))

(declare-fun b!1267025 () Bool)

(declare-fun tp_is_empty!32563 () Bool)

(declare-fun tp!96534 () Bool)

(assert (=> b!1267025 (= e!721795 (and tp_is_empty!32563 tp!96534))))

(declare-datatypes ((B!2042 0))(
  ( (B!2043 (val!16356 Int)) )
))
(declare-datatypes ((tuple2!21380 0))(
  ( (tuple2!21381 (_1!10700 (_ BitVec 64)) (_2!10700 B!2042)) )
))
(declare-datatypes ((List!28523 0))(
  ( (Nil!28520) (Cons!28519 (h!29728 tuple2!21380) (t!42057 List!28523)) )
))
(declare-fun l!874 () List!28523)

(assert (= (and start!106756 (is-Cons!28519 l!874)) b!1267025))

(push 1)

(assert (not b!1267025))

(assert tp_is_empty!32563)

(check-sat)

(pop 1)

