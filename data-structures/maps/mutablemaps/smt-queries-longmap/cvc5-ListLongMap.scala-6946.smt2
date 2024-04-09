; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87508 () Bool)

(assert start!87508)

(assert (=> start!87508 false))

(declare-fun e!569924 () Bool)

(assert (=> start!87508 e!569924))

(declare-fun b!1013089 () Bool)

(declare-fun tp_is_empty!23449 () Bool)

(declare-fun tp!70383 () Bool)

(assert (=> b!1013089 (= e!569924 (and tp_is_empty!23449 tp!70383))))

(declare-datatypes ((B!1382 0))(
  ( (B!1383 (val!11775 Int)) )
))
(declare-datatypes ((tuple2!15186 0))(
  ( (tuple2!15187 (_1!7603 (_ BitVec 64)) (_2!7603 B!1382)) )
))
(declare-datatypes ((List!21508 0))(
  ( (Nil!21505) (Cons!21504 (h!22702 tuple2!15186) (t!30517 List!21508)) )
))
(declare-fun l!412 () List!21508)

(assert (= (and start!87508 (is-Cons!21504 l!412)) b!1013089))

(push 1)

(assert (not b!1013089))

(assert tp_is_empty!23449)

(check-sat)

(pop 1)

