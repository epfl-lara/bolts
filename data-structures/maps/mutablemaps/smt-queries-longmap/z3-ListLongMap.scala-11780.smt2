; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138432 () Bool)

(assert start!138432)

(declare-fun res!1083320 () Bool)

(declare-fun e!885722 () Bool)

(assert (=> start!138432 (=> (not res!1083320) (not e!885722))))

(declare-datatypes ((B!3022 0))(
  ( (B!3023 (val!19873 Int)) )
))
(declare-datatypes ((tuple2!26078 0))(
  ( (tuple2!26079 (_1!13049 (_ BitVec 64)) (_2!13049 B!3022)) )
))
(declare-datatypes ((List!37154 0))(
  ( (Nil!37151) (Cons!37150 (h!38694 tuple2!26078) (t!52093 List!37154)) )
))
(declare-fun l!636 () List!37154)

(declare-fun isStrictlySorted!1213 (List!37154) Bool)

(assert (=> start!138432 (= res!1083320 (isStrictlySorted!1213 l!636))))

(assert (=> start!138432 e!885722))

(declare-fun e!885723 () Bool)

(assert (=> start!138432 e!885723))

(assert (=> start!138432 true))

(declare-fun b!1586094 () Bool)

(declare-fun res!1083319 () Bool)

(assert (=> b!1586094 (=> (not res!1083319) (not e!885722))))

(declare-fun key!185 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1586094 (= res!1083319 (and (or (not ((_ is Cons!37150) l!636)) (not (= (_1!13049 (h!38694 l!636)) key!185))) (or (not ((_ is Cons!37150) l!636)) (bvsle (_1!13049 (h!38694 l!636)) key!185)) ((_ is Cons!37150) l!636) (bvslt (_1!13049 (h!38694 l!636)) key!185)))))

(declare-fun b!1586095 () Bool)

(assert (=> b!1586095 (= e!885722 (not (isStrictlySorted!1213 (t!52093 l!636))))))

(declare-fun b!1586096 () Bool)

(declare-fun tp_is_empty!39555 () Bool)

(declare-fun tp!115369 () Bool)

(assert (=> b!1586096 (= e!885723 (and tp_is_empty!39555 tp!115369))))

(assert (= (and start!138432 res!1083320) b!1586094))

(assert (= (and b!1586094 res!1083319) b!1586095))

(assert (= (and start!138432 ((_ is Cons!37150) l!636)) b!1586096))

(declare-fun m!1454659 () Bool)

(assert (=> start!138432 m!1454659))

(declare-fun m!1454661 () Bool)

(assert (=> b!1586095 m!1454661))

(check-sat (not start!138432) (not b!1586095) (not b!1586096) tp_is_empty!39555)
(check-sat)
(get-model)

(declare-fun d!167861 () Bool)

(declare-fun res!1083335 () Bool)

(declare-fun e!885738 () Bool)

(assert (=> d!167861 (=> res!1083335 e!885738)))

(assert (=> d!167861 (= res!1083335 (or ((_ is Nil!37151) l!636) ((_ is Nil!37151) (t!52093 l!636))))))

(assert (=> d!167861 (= (isStrictlySorted!1213 l!636) e!885738)))

(declare-fun b!1586114 () Bool)

(declare-fun e!885740 () Bool)

(assert (=> b!1586114 (= e!885738 e!885740)))

(declare-fun res!1083337 () Bool)

(assert (=> b!1586114 (=> (not res!1083337) (not e!885740))))

(assert (=> b!1586114 (= res!1083337 (bvslt (_1!13049 (h!38694 l!636)) (_1!13049 (h!38694 (t!52093 l!636)))))))

(declare-fun b!1586116 () Bool)

(assert (=> b!1586116 (= e!885740 (isStrictlySorted!1213 (t!52093 l!636)))))

(assert (= (and d!167861 (not res!1083335)) b!1586114))

(assert (= (and b!1586114 res!1083337) b!1586116))

(assert (=> b!1586116 m!1454661))

(assert (=> start!138432 d!167861))

(declare-fun d!167864 () Bool)

(declare-fun res!1083339 () Bool)

(declare-fun e!885742 () Bool)

(assert (=> d!167864 (=> res!1083339 e!885742)))

(assert (=> d!167864 (= res!1083339 (or ((_ is Nil!37151) (t!52093 l!636)) ((_ is Nil!37151) (t!52093 (t!52093 l!636)))))))

(assert (=> d!167864 (= (isStrictlySorted!1213 (t!52093 l!636)) e!885742)))

(declare-fun b!1586118 () Bool)

(declare-fun e!885744 () Bool)

(assert (=> b!1586118 (= e!885742 e!885744)))

(declare-fun res!1083341 () Bool)

(assert (=> b!1586118 (=> (not res!1083341) (not e!885744))))

(assert (=> b!1586118 (= res!1083341 (bvslt (_1!13049 (h!38694 (t!52093 l!636))) (_1!13049 (h!38694 (t!52093 (t!52093 l!636))))))))

(declare-fun b!1586120 () Bool)

(assert (=> b!1586120 (= e!885744 (isStrictlySorted!1213 (t!52093 (t!52093 l!636))))))

(assert (= (and d!167864 (not res!1083339)) b!1586118))

(assert (= (and b!1586118 res!1083341) b!1586120))

(declare-fun m!1454667 () Bool)

(assert (=> b!1586120 m!1454667))

(assert (=> b!1586095 d!167864))

(declare-fun b!1586131 () Bool)

(declare-fun e!885751 () Bool)

(declare-fun tp!115378 () Bool)

(assert (=> b!1586131 (= e!885751 (and tp_is_empty!39555 tp!115378))))

(assert (=> b!1586096 (= tp!115369 e!885751)))

(assert (= (and b!1586096 ((_ is Cons!37150) (t!52093 l!636))) b!1586131))

(check-sat (not b!1586120) (not b!1586116) (not b!1586131) tp_is_empty!39555)
(check-sat)
