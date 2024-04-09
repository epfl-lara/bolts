; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2366 () Bool)

(assert start!2366)

(declare-fun b_free!479 () Bool)

(declare-fun b_next!479 () Bool)

(assert (=> start!2366 (= b_free!479 (not b_next!479))))

(declare-fun tp!2510 () Bool)

(declare-fun b_and!895 () Bool)

(assert (=> start!2366 (= tp!2510 b_and!895)))

(assert (=> start!2366 false))

(declare-datatypes ((B!600 0))(
  ( (B!601 (val!398 Int)) )
))
(declare-datatypes ((tuple2!578 0))(
  ( (tuple2!579 (_1!289 (_ BitVec 64)) (_2!289 B!600)) )
))
(declare-datatypes ((List!454 0))(
  ( (Nil!451) (Cons!450 (h!1016 tuple2!578) (t!2862 List!454)) )
))
(declare-datatypes ((ListLongMap!409 0))(
  ( (ListLongMap!410 (toList!220 List!454)) )
))
(declare-fun lm!238 () ListLongMap!409)

(declare-fun e!9256 () Bool)

(declare-fun inv!770 (ListLongMap!409) Bool)

(assert (=> start!2366 (and (inv!770 lm!238) e!9256)))

(assert (=> start!2366 tp!2510))

(declare-fun b!15275 () Bool)

(declare-fun tp!2509 () Bool)

(assert (=> b!15275 (= e!9256 tp!2509)))

(assert (= start!2366 b!15275))

(declare-fun m!10157 () Bool)

(assert (=> start!2366 m!10157))

(push 1)

(assert (not start!2366))

(assert (not b!15275))

(assert b_and!895)

(assert (not b_next!479))

(check-sat)

(pop 1)

(push 1)

(assert b_and!895)

(assert (not b_next!479))

(check-sat)

