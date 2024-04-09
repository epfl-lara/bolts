; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106370 () Bool)

(assert start!106370)

(assert (=> start!106370 false))

(declare-fun e!720340 () Bool)

(assert (=> start!106370 e!720340))

(declare-fun b!1264859 () Bool)

(declare-fun tp_is_empty!32465 () Bool)

(declare-fun tp!96264 () Bool)

(assert (=> b!1264859 (= e!720340 (and tp_is_empty!32465 tp!96264))))

(declare-datatypes ((B!1932 0))(
  ( (B!1933 (val!16301 Int)) )
))
(declare-datatypes ((tuple2!21270 0))(
  ( (tuple2!21271 (_1!10645 (_ BitVec 64)) (_2!10645 B!1932)) )
))
(declare-datatypes ((List!28468 0))(
  ( (Nil!28465) (Cons!28464 (h!29673 tuple2!21270) (t!41996 List!28468)) )
))
(declare-fun l!706 () List!28468)

(assert (= (and start!106370 (is-Cons!28464 l!706)) b!1264859))

(push 1)

(assert (not b!1264859))

(assert tp_is_empty!32465)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

