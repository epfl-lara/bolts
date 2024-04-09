; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137772 () Bool)

(assert start!137772)

(assert (=> start!137772 false))

(declare-fun e!883269 () Bool)

(assert (=> start!137772 e!883269))

(assert (=> start!137772 true))

(declare-fun b!1582514 () Bool)

(declare-fun tp_is_empty!39333 () Bool)

(declare-fun tp!114817 () Bool)

(assert (=> b!1582514 (= e!883269 (and tp_is_empty!39333 tp!114817))))

(declare-datatypes ((B!2800 0))(
  ( (B!2801 (val!19762 Int)) )
))
(declare-datatypes ((tuple2!25856 0))(
  ( (tuple2!25857 (_1!12938 (_ BitVec 64)) (_2!12938 B!2800)) )
))
(declare-datatypes ((List!37043 0))(
  ( (Nil!37040) (Cons!37039 (h!38583 tuple2!25856) (t!51964 List!37043)) )
))
(declare-fun l!1065 () List!37043)

(get-info :version)

(assert (= (and start!137772 ((_ is Cons!37039) l!1065)) b!1582514))

(check-sat (not b!1582514) tp_is_empty!39333)
(check-sat)
