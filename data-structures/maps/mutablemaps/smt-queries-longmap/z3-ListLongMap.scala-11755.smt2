; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137982 () Bool)

(assert start!137982)

(assert (=> start!137982 false))

(declare-fun e!883938 () Bool)

(assert (=> start!137982 e!883938))

(declare-fun b!1583492 () Bool)

(declare-fun tp_is_empty!39405 () Bool)

(declare-fun tp!115000 () Bool)

(assert (=> b!1583492 (= e!883938 (and tp_is_empty!39405 tp!115000))))

(declare-datatypes ((B!2872 0))(
  ( (B!2873 (val!19798 Int)) )
))
(declare-datatypes ((tuple2!25928 0))(
  ( (tuple2!25929 (_1!12974 (_ BitVec 64)) (_2!12974 B!2872)) )
))
(declare-datatypes ((List!37079 0))(
  ( (Nil!37076) (Cons!37075 (h!38619 tuple2!25928) (t!52000 List!37079)) )
))
(declare-fun l!1251 () List!37079)

(get-info :version)

(assert (= (and start!137982 ((_ is Cons!37075) l!1251)) b!1583492))

(check-sat (not b!1583492) tp_is_empty!39405)
(check-sat)
