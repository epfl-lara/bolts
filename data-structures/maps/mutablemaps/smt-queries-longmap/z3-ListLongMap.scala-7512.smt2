; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95286 () Bool)

(assert start!95286)

(assert (=> start!95286 false))

(assert (=> start!95286 true))

(declare-datatypes ((B!1756 0))(
  ( (B!1757 (val!13081 Int)) )
))
(declare-datatypes ((tuple2!16744 0))(
  ( (tuple2!16745 (_1!8382 (_ BitVec 64)) (_2!8382 B!1756)) )
))
(declare-datatypes ((List!23316 0))(
  ( (Nil!23313) (Cons!23312 (h!24521 tuple2!16744) (t!32682 List!23316)) )
))
(declare-datatypes ((ListLongMap!14725 0))(
  ( (ListLongMap!14726 (toList!7378 List!23316)) )
))
(declare-fun lm!214 () ListLongMap!14725)

(declare-fun e!615461 () Bool)

(declare-fun inv!37838 (ListLongMap!14725) Bool)

(assert (=> start!95286 (and (inv!37838 lm!214) e!615461)))

(declare-fun b!1076570 () Bool)

(declare-fun tp!78246 () Bool)

(assert (=> b!1076570 (= e!615461 tp!78246)))

(assert (= start!95286 b!1076570))

(declare-fun m!995711 () Bool)

(assert (=> start!95286 m!995711))

(check-sat (not start!95286) (not b!1076570))
(check-sat)
