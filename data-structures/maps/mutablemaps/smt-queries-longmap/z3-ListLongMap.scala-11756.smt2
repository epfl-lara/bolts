; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137988 () Bool)

(assert start!137988)

(assert (=> start!137988 false))

(declare-fun e!883947 () Bool)

(assert (=> start!137988 e!883947))

(assert (=> start!137988 true))

(declare-fun b!1583501 () Bool)

(declare-fun tp_is_empty!39411 () Bool)

(declare-fun tp!115009 () Bool)

(assert (=> b!1583501 (= e!883947 (and tp_is_empty!39411 tp!115009))))

(declare-datatypes ((B!2878 0))(
  ( (B!2879 (val!19801 Int)) )
))
(declare-datatypes ((tuple2!25934 0))(
  ( (tuple2!25935 (_1!12977 (_ BitVec 64)) (_2!12977 B!2878)) )
))
(declare-datatypes ((List!37082 0))(
  ( (Nil!37079) (Cons!37078 (h!38622 tuple2!25934) (t!52003 List!37082)) )
))
(declare-fun l!1251 () List!37082)

(get-info :version)

(assert (= (and start!137988 ((_ is Cons!37078) l!1251)) b!1583501))

(check-sat (not b!1583501) tp_is_empty!39411)
(check-sat)
