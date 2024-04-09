; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106778 () Bool)

(assert start!106778)

(assert (=> start!106778 false))

(declare-fun e!721837 () Bool)

(assert (=> start!106778 e!721837))

(assert (=> start!106778 true))

(declare-fun b!1267103 () Bool)

(declare-fun tp_is_empty!32585 () Bool)

(declare-fun tp!96567 () Bool)

(assert (=> b!1267103 (= e!721837 (and tp_is_empty!32585 tp!96567))))

(declare-datatypes ((B!2064 0))(
  ( (B!2065 (val!16367 Int)) )
))
(declare-datatypes ((tuple2!21402 0))(
  ( (tuple2!21403 (_1!10711 (_ BitVec 64)) (_2!10711 B!2064)) )
))
(declare-datatypes ((List!28534 0))(
  ( (Nil!28531) (Cons!28530 (h!29739 tuple2!21402) (t!42068 List!28534)) )
))
(declare-fun l!874 () List!28534)

(assert (= (and start!106778 (is-Cons!28530 l!874)) b!1267103))

(push 1)

(assert (not b!1267103))

(assert tp_is_empty!32585)

(check-sat)

(pop 1)

(push 1)

(check-sat)

