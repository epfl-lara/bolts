; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7580 () Bool)

(assert start!7580)

(assert (=> start!7580 false))

(declare-fun e!31066 () Bool)

(assert (=> start!7580 e!31066))

(declare-fun b!48408 () Bool)

(declare-fun tp_is_empty!2087 () Bool)

(declare-fun tp!6371 () Bool)

(assert (=> b!48408 (= e!31066 (and tp_is_empty!2087 tp!6371))))

(declare-datatypes ((B!936 0))(
  ( (B!937 (val!1088 Int)) )
))
(declare-datatypes ((tuple2!1762 0))(
  ( (tuple2!1763 (_1!891 (_ BitVec 64)) (_2!891 B!936)) )
))
(declare-datatypes ((List!1304 0))(
  ( (Nil!1301) (Cons!1300 (h!1880 tuple2!1762) (t!4340 List!1304)) )
))
(declare-fun l!1333 () List!1304)

(assert (= (and start!7580 (is-Cons!1300 l!1333)) b!48408))

(push 1)

(assert (not b!48408))

(assert tp_is_empty!2087)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

