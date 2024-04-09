; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106366 () Bool)

(assert start!106366)

(assert (=> start!106366 false))

(declare-fun e!720334 () Bool)

(assert (=> start!106366 e!720334))

(declare-fun b!1264853 () Bool)

(declare-fun tp_is_empty!32461 () Bool)

(declare-fun tp!96258 () Bool)

(assert (=> b!1264853 (= e!720334 (and tp_is_empty!32461 tp!96258))))

(declare-datatypes ((B!1928 0))(
  ( (B!1929 (val!16299 Int)) )
))
(declare-datatypes ((tuple2!21266 0))(
  ( (tuple2!21267 (_1!10643 (_ BitVec 64)) (_2!10643 B!1928)) )
))
(declare-datatypes ((List!28466 0))(
  ( (Nil!28463) (Cons!28462 (h!29671 tuple2!21266) (t!41994 List!28466)) )
))
(declare-fun l!706 () List!28466)

(assert (= (and start!106366 (is-Cons!28462 l!706)) b!1264853))

(push 1)

(assert (not b!1264853))

(assert tp_is_empty!32461)

(check-sat)

(pop 1)

