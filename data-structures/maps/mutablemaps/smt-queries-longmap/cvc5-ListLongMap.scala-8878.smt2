; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107828 () Bool)

(assert start!107828)

(assert (=> start!107828 false))

(declare-fun e!727407 () Bool)

(assert (=> start!107828 e!727407))

(assert (=> start!107828 true))

(declare-fun b!1274536 () Bool)

(declare-fun tp_is_empty!33181 () Bool)

(declare-fun tp!97986 () Bool)

(assert (=> b!1274536 (= e!727407 (and tp_is_empty!33181 tp!97986))))

(declare-datatypes ((B!2138 0))(
  ( (B!2139 (val!16665 Int)) )
))
(declare-datatypes ((tuple2!21558 0))(
  ( (tuple2!21559 (_1!10789 (_ BitVec 64)) (_2!10789 B!2138)) )
))
(declare-datatypes ((List!28749 0))(
  ( (Nil!28746) (Cons!28745 (h!29954 tuple2!21558) (t!42289 List!28749)) )
))
(declare-fun l!595 () List!28749)

(assert (= (and start!107828 (is-Cons!28745 l!595)) b!1274536))

(push 1)

(assert (not b!1274536))

(assert tp_is_empty!33181)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

