; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7200 () Bool)

(assert start!7200)

(assert (=> start!7200 false))

(declare-fun e!29381 () Bool)

(assert (=> start!7200 e!29381))

(declare-fun b!46129 () Bool)

(declare-fun tp_is_empty!1959 () Bool)

(declare-fun tp!6059 () Bool)

(assert (=> b!46129 (= e!29381 (and tp_is_empty!1959 tp!6059))))

(declare-datatypes ((B!862 0))(
  ( (B!863 (val!1018 Int)) )
))
(declare-datatypes ((tuple2!1688 0))(
  ( (tuple2!1689 (_1!854 (_ BitVec 64)) (_2!854 B!862)) )
))
(declare-datatypes ((List!1252 0))(
  ( (Nil!1249) (Cons!1248 (h!1828 tuple2!1688) (t!4285 List!1252)) )
))
(declare-fun l!812 () List!1252)

(get-info :version)

(assert (= (and start!7200 ((_ is Cons!1248) l!812)) b!46129))

(check-sat (not b!46129) tp_is_empty!1959)
(check-sat)
