; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138480 () Bool)

(assert start!138480)

(declare-fun res!1083419 () Bool)

(declare-fun e!885884 () Bool)

(assert (=> start!138480 (=> (not res!1083419) (not e!885884))))

(declare-datatypes ((B!3040 0))(
  ( (B!3041 (val!19882 Int)) )
))
(declare-datatypes ((tuple2!26096 0))(
  ( (tuple2!26097 (_1!13058 (_ BitVec 64)) (_2!13058 B!3040)) )
))
(declare-datatypes ((List!37163 0))(
  ( (Nil!37160) (Cons!37159 (h!38703 tuple2!26096) (t!52102 List!37163)) )
))
(declare-fun l!636 () List!37163)

(declare-fun isStrictlySorted!1222 (List!37163) Bool)

(assert (=> start!138480 (= res!1083419 (isStrictlySorted!1222 l!636))))

(assert (=> start!138480 e!885884))

(declare-fun e!885885 () Bool)

(assert (=> start!138480 e!885885))

(assert (=> start!138480 true))

(declare-fun b!1586308 () Bool)

(declare-fun key!185 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1586308 (= e!885884 (and (or (not ((_ is Cons!37159) l!636)) (not (= (_1!13058 (h!38703 l!636)) key!185))) (or (not ((_ is Cons!37159) l!636)) (bvsle (_1!13058 (h!38703 l!636)) key!185)) (or (not ((_ is Cons!37159) l!636)) (bvsge (_1!13058 (h!38703 l!636)) key!185)) (not ((_ is Nil!37160) l!636))))))

(declare-fun b!1586309 () Bool)

(declare-fun tp_is_empty!39573 () Bool)

(declare-fun tp!115423 () Bool)

(assert (=> b!1586309 (= e!885885 (and tp_is_empty!39573 tp!115423))))

(assert (= (and start!138480 res!1083419) b!1586308))

(assert (= (and start!138480 ((_ is Cons!37159) l!636)) b!1586309))

(declare-fun m!1454729 () Bool)

(assert (=> start!138480 m!1454729))

(check-sat (not start!138480) (not b!1586309) tp_is_empty!39573)
(check-sat)
