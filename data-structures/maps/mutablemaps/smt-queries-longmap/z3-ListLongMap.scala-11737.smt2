; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137706 () Bool)

(assert start!137706)

(assert (=> start!137706 false))

(declare-fun e!883116 () Bool)

(assert (=> start!137706 e!883116))

(assert (=> start!137706 true))

(declare-fun b!1582340 () Bool)

(declare-fun tp_is_empty!39309 () Bool)

(declare-fun tp!114745 () Bool)

(assert (=> b!1582340 (= e!883116 (and tp_is_empty!39309 tp!114745))))

(declare-datatypes ((B!2764 0))(
  ( (B!2765 (val!19744 Int)) )
))
(declare-datatypes ((tuple2!25820 0))(
  ( (tuple2!25821 (_1!12920 (_ BitVec 64)) (_2!12920 B!2764)) )
))
(declare-datatypes ((List!37025 0))(
  ( (Nil!37022) (Cons!37021 (h!38565 tuple2!25820) (t!51946 List!37025)) )
))
(declare-fun l!1356 () List!37025)

(get-info :version)

(assert (= (and start!137706 ((_ is Cons!37021) l!1356)) b!1582340))

(check-sat (not b!1582340) tp_is_empty!39309)
(check-sat)
