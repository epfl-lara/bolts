; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134490 () Bool)

(assert start!134490)

(declare-fun b!1569605 () Bool)

(declare-fun e!875040 () Bool)

(declare-fun tp_is_empty!39087 () Bool)

(declare-fun tp!114178 () Bool)

(assert (=> b!1569605 (= e!875040 (and tp_is_empty!39087 tp!114178))))

(declare-fun b!1569603 () Bool)

(declare-fun res!1072741 () Bool)

(declare-fun e!875039 () Bool)

(assert (=> b!1569603 (=> (not res!1072741) (not e!875039))))

(declare-datatypes ((B!2536 0))(
  ( (B!2537 (val!19630 Int)) )
))
(declare-datatypes ((tuple2!25526 0))(
  ( (tuple2!25527 (_1!12773 (_ BitVec 64)) (_2!12773 B!2536)) )
))
(declare-datatypes ((List!36911 0))(
  ( (Nil!36908) (Cons!36907 (h!38355 tuple2!25526) (t!51826 List!36911)) )
))
(declare-fun l!750 () List!36911)

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1569603 (= res!1072741 (and ((_ is Cons!36907) l!750) (bvslt (_1!12773 (h!38355 l!750)) key1!37) (bvslt (_1!12773 (h!38355 l!750)) key2!21)))))

(declare-fun b!1569602 () Bool)

(declare-fun res!1072740 () Bool)

(assert (=> b!1569602 (=> (not res!1072740) (not e!875039))))

(declare-fun isStrictlySorted!1012 (List!36911) Bool)

(assert (=> b!1569602 (= res!1072740 (isStrictlySorted!1012 l!750))))

(declare-fun b!1569604 () Bool)

(assert (=> b!1569604 (= e!875039 (not (isStrictlySorted!1012 (t!51826 l!750))))))

(declare-fun res!1072742 () Bool)

(assert (=> start!134490 (=> (not res!1072742) (not e!875039))))

(assert (=> start!134490 (= res!1072742 (not (= key1!37 key2!21)))))

(assert (=> start!134490 e!875039))

(assert (=> start!134490 true))

(assert (=> start!134490 e!875040))

(assert (= (and start!134490 res!1072742) b!1569602))

(assert (= (and b!1569602 res!1072740) b!1569603))

(assert (= (and b!1569603 res!1072741) b!1569604))

(assert (= (and start!134490 ((_ is Cons!36907) l!750)) b!1569605))

(declare-fun m!1443809 () Bool)

(assert (=> b!1569602 m!1443809))

(declare-fun m!1443811 () Bool)

(assert (=> b!1569604 m!1443811))

(check-sat (not b!1569602) (not b!1569604) (not b!1569605) tp_is_empty!39087)
(check-sat)
(get-model)

(declare-fun d!163853 () Bool)

(declare-fun res!1072756 () Bool)

(declare-fun e!875051 () Bool)

(assert (=> d!163853 (=> res!1072756 e!875051)))

(assert (=> d!163853 (= res!1072756 (or ((_ is Nil!36908) l!750) ((_ is Nil!36908) (t!51826 l!750))))))

(assert (=> d!163853 (= (isStrictlySorted!1012 l!750) e!875051)))

(declare-fun b!1569622 () Bool)

(declare-fun e!875052 () Bool)

(assert (=> b!1569622 (= e!875051 e!875052)))

(declare-fun res!1072757 () Bool)

(assert (=> b!1569622 (=> (not res!1072757) (not e!875052))))

(assert (=> b!1569622 (= res!1072757 (bvslt (_1!12773 (h!38355 l!750)) (_1!12773 (h!38355 (t!51826 l!750)))))))

(declare-fun b!1569623 () Bool)

(assert (=> b!1569623 (= e!875052 (isStrictlySorted!1012 (t!51826 l!750)))))

(assert (= (and d!163853 (not res!1072756)) b!1569622))

(assert (= (and b!1569622 res!1072757) b!1569623))

(assert (=> b!1569623 m!1443811))

(assert (=> b!1569602 d!163853))

(declare-fun d!163855 () Bool)

(declare-fun res!1072758 () Bool)

(declare-fun e!875053 () Bool)

(assert (=> d!163855 (=> res!1072758 e!875053)))

(assert (=> d!163855 (= res!1072758 (or ((_ is Nil!36908) (t!51826 l!750)) ((_ is Nil!36908) (t!51826 (t!51826 l!750)))))))

(assert (=> d!163855 (= (isStrictlySorted!1012 (t!51826 l!750)) e!875053)))

(declare-fun b!1569624 () Bool)

(declare-fun e!875054 () Bool)

(assert (=> b!1569624 (= e!875053 e!875054)))

(declare-fun res!1072759 () Bool)

(assert (=> b!1569624 (=> (not res!1072759) (not e!875054))))

(assert (=> b!1569624 (= res!1072759 (bvslt (_1!12773 (h!38355 (t!51826 l!750))) (_1!12773 (h!38355 (t!51826 (t!51826 l!750))))))))

(declare-fun b!1569625 () Bool)

(assert (=> b!1569625 (= e!875054 (isStrictlySorted!1012 (t!51826 (t!51826 l!750))))))

(assert (= (and d!163855 (not res!1072758)) b!1569624))

(assert (= (and b!1569624 res!1072759) b!1569625))

(declare-fun m!1443817 () Bool)

(assert (=> b!1569625 m!1443817))

(assert (=> b!1569604 d!163855))

(declare-fun b!1569630 () Bool)

(declare-fun e!875057 () Bool)

(declare-fun tp!114184 () Bool)

(assert (=> b!1569630 (= e!875057 (and tp_is_empty!39087 tp!114184))))

(assert (=> b!1569605 (= tp!114178 e!875057)))

(assert (= (and b!1569605 ((_ is Cons!36907) (t!51826 l!750))) b!1569630))

(check-sat (not b!1569623) (not b!1569625) (not b!1569630) tp_is_empty!39087)
(check-sat)
