; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1156 () Bool)

(assert start!1156)

(assert (=> start!1156 false))

(declare-datatypes ((B!294 0))(
  ( (B!295 (val!242 Int)) )
))
(declare-datatypes ((tuple2!266 0))(
  ( (tuple2!267 (_1!133 (_ BitVec 64)) (_2!133 B!294)) )
))
(declare-datatypes ((List!289 0))(
  ( (Nil!286) (Cons!285 (h!851 tuple2!266) (t!2436 List!289)) )
))
(declare-datatypes ((ListLongMap!271 0))(
  ( (ListLongMap!272 (toList!151 List!289)) )
))
(declare-fun lm!213 () ListLongMap!271)

(declare-fun e!5801 () Bool)

(declare-fun inv!444 (ListLongMap!271) Bool)

(assert (=> start!1156 (and (inv!444 lm!213) e!5801)))

(declare-fun b!10103 () Bool)

(declare-fun tp!1424 () Bool)

(assert (=> b!10103 (= e!5801 tp!1424)))

(assert (= start!1156 b!10103))

(declare-fun m!6453 () Bool)

(assert (=> start!1156 m!6453))

(push 1)

(assert (not start!1156))

(assert (not b!10103))

(check-sat)

(pop 1)

