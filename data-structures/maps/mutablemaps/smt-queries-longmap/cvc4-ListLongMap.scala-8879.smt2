; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107838 () Bool)

(assert start!107838)

(assert (=> start!107838 false))

(declare-fun e!727422 () Bool)

(assert (=> start!107838 e!727422))

(assert (=> start!107838 true))

(declare-fun b!1274551 () Bool)

(declare-fun tp_is_empty!33191 () Bool)

(declare-fun tp!98001 () Bool)

(assert (=> b!1274551 (= e!727422 (and tp_is_empty!33191 tp!98001))))

(declare-datatypes ((B!2148 0))(
  ( (B!2149 (val!16670 Int)) )
))
(declare-datatypes ((tuple2!21568 0))(
  ( (tuple2!21569 (_1!10794 (_ BitVec 64)) (_2!10794 B!2148)) )
))
(declare-datatypes ((List!28754 0))(
  ( (Nil!28751) (Cons!28750 (h!29959 tuple2!21568) (t!42294 List!28754)) )
))
(declare-fun l!595 () List!28754)

(assert (= (and start!107838 (is-Cons!28750 l!595)) b!1274551))

(push 1)

(assert (not b!1274551))

(assert tp_is_empty!33191)

(check-sat)

(pop 1)

(push 1)

