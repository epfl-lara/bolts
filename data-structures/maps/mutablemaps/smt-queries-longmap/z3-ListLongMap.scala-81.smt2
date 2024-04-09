; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1154 () Bool)

(assert start!1154)

(assert (=> start!1154 false))

(declare-datatypes ((B!292 0))(
  ( (B!293 (val!241 Int)) )
))
(declare-datatypes ((tuple2!264 0))(
  ( (tuple2!265 (_1!132 (_ BitVec 64)) (_2!132 B!292)) )
))
(declare-datatypes ((List!288 0))(
  ( (Nil!285) (Cons!284 (h!850 tuple2!264) (t!2435 List!288)) )
))
(declare-datatypes ((ListLongMap!269 0))(
  ( (ListLongMap!270 (toList!150 List!288)) )
))
(declare-fun lm!213 () ListLongMap!269)

(declare-fun e!5798 () Bool)

(declare-fun inv!443 (ListLongMap!269) Bool)

(assert (=> start!1154 (and (inv!443 lm!213) e!5798)))

(declare-fun b!10100 () Bool)

(declare-fun tp!1421 () Bool)

(assert (=> b!10100 (= e!5798 tp!1421)))

(assert (= start!1154 b!10100))

(declare-fun m!6451 () Bool)

(assert (=> start!1154 m!6451))

(check-sat (not start!1154) (not b!10100))
(check-sat)
