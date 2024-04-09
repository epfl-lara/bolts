; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72144 () Bool)

(assert start!72144)

(assert (=> start!72144 false))

(declare-fun e!466844 () Bool)

(assert (=> start!72144 e!466844))

(declare-fun b!836609 () Bool)

(declare-fun tp_is_empty!15279 () Bool)

(declare-fun tp!47504 () Bool)

(assert (=> b!836609 (= e!466844 (and tp_is_empty!15279 tp!47504))))

(declare-datatypes ((B!1210 0))(
  ( (B!1211 (val!7687 Int)) )
))
(declare-datatypes ((tuple2!10252 0))(
  ( (tuple2!10253 (_1!5136 (_ BitVec 64)) (_2!5136 B!1210)) )
))
(declare-datatypes ((List!16052 0))(
  ( (Nil!16049) (Cons!16048 (h!17179 tuple2!10252) (t!22431 List!16052)) )
))
(declare-fun l!390 () List!16052)

(get-info :version)

(assert (= (and start!72144 ((_ is Cons!16048) l!390)) b!836609))

(check-sat (not b!836609) tp_is_empty!15279)
(check-sat)
