; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75152 () Bool)

(assert start!75152)

(assert (=> start!75152 false))

(declare-fun e!492818 () Bool)

(assert (=> start!75152 e!492818))

(declare-fun b!885442 () Bool)

(declare-fun tp_is_empty!17773 () Bool)

(declare-fun tp!54276 () Bool)

(assert (=> b!885442 (= e!492818 (and tp_is_empty!17773 tp!54276))))

(declare-datatypes ((B!1262 0))(
  ( (B!1263 (val!8937 Int)) )
))
(declare-datatypes ((tuple2!11894 0))(
  ( (tuple2!11895 (_1!5957 (_ BitVec 64)) (_2!5957 B!1262)) )
))
(declare-datatypes ((List!17737 0))(
  ( (Nil!17734) (Cons!17733 (h!18864 tuple2!11894) (t!25022 List!17737)) )
))
(declare-fun l!906 () List!17737)

(assert (= (and start!75152 (is-Cons!17733 l!906)) b!885442))

(push 1)

(assert (not b!885442))

(assert tp_is_empty!17773)

(check-sat)

(pop 1)

