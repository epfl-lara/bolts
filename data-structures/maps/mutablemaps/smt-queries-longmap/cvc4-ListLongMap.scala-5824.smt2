; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75156 () Bool)

(assert start!75156)

(assert (=> start!75156 false))

(declare-fun e!492824 () Bool)

(assert (=> start!75156 e!492824))

(declare-fun b!885448 () Bool)

(declare-fun tp_is_empty!17777 () Bool)

(declare-fun tp!54282 () Bool)

(assert (=> b!885448 (= e!492824 (and tp_is_empty!17777 tp!54282))))

(declare-datatypes ((B!1266 0))(
  ( (B!1267 (val!8939 Int)) )
))
(declare-datatypes ((tuple2!11898 0))(
  ( (tuple2!11899 (_1!5959 (_ BitVec 64)) (_2!5959 B!1266)) )
))
(declare-datatypes ((List!17739 0))(
  ( (Nil!17736) (Cons!17735 (h!18866 tuple2!11898) (t!25024 List!17739)) )
))
(declare-fun l!906 () List!17739)

(assert (= (and start!75156 (is-Cons!17735 l!906)) b!885448))

(push 1)

(assert (not b!885448))

(assert tp_is_empty!17777)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

