; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7780 () Bool)

(assert start!7780)

(assert (=> start!7780 false))

(declare-fun e!31771 () Bool)

(assert (=> start!7780 e!31771))

(assert (=> start!7780 true))

(declare-fun b!49455 () Bool)

(declare-fun tp_is_empty!2143 () Bool)

(declare-fun tp!6515 () Bool)

(assert (=> b!49455 (= e!31771 (and tp_is_empty!2143 tp!6515))))

(declare-datatypes ((B!992 0))(
  ( (B!993 (val!1116 Int)) )
))
(declare-datatypes ((tuple2!1818 0))(
  ( (tuple2!1819 (_1!919 (_ BitVec 64)) (_2!919 B!992)) )
))
(declare-datatypes ((List!1332 0))(
  ( (Nil!1329) (Cons!1328 (h!1908 tuple2!1818) (t!4374 List!1332)) )
))
(declare-fun l!1333 () List!1332)

(assert (= (and start!7780 (is-Cons!1328 l!1333)) b!49455))

(push 1)

(assert (not b!49455))

(assert tp_is_empty!2143)

(check-sat)

(pop 1)

(push 1)

(check-sat)

