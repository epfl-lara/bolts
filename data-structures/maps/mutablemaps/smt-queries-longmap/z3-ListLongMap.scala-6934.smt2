; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87318 () Bool)

(assert start!87318)

(declare-fun res!679800 () Bool)

(declare-fun e!569206 () Bool)

(assert (=> start!87318 (=> (not res!679800) (not e!569206))))

(declare-datatypes ((B!1312 0))(
  ( (B!1313 (val!11740 Int)) )
))
(declare-datatypes ((tuple2!15116 0))(
  ( (tuple2!15117 (_1!7568 (_ BitVec 64)) (_2!7568 B!1312)) )
))
(declare-datatypes ((List!21446 0))(
  ( (Nil!21443) (Cons!21442 (h!22640 tuple2!15116) (t!30455 List!21446)) )
))
(declare-fun l!412 () List!21446)

(declare-fun isStrictlySorted!516 (List!21446) Bool)

(assert (=> start!87318 (= res!679800 (isStrictlySorted!516 l!412))))

(assert (=> start!87318 e!569206))

(declare-fun e!569207 () Bool)

(assert (=> start!87318 e!569207))

(declare-fun tp_is_empty!23379 () Bool)

(assert (=> start!87318 tp_is_empty!23379))

(declare-fun b!1011755 () Bool)

(declare-fun res!679801 () Bool)

(assert (=> b!1011755 (=> (not res!679801) (not e!569206))))

(declare-fun value!115 () B!1312)

(get-info :version)

(assert (=> b!1011755 (= res!679801 (and ((_ is Cons!21442) l!412) (= (_2!7568 (h!22640 l!412)) value!115)))))

(declare-fun b!1011756 () Bool)

(assert (=> b!1011756 (= e!569206 (not (isStrictlySorted!516 (t!30455 l!412))))))

(declare-fun b!1011757 () Bool)

(declare-fun tp!70215 () Bool)

(assert (=> b!1011757 (= e!569207 (and tp_is_empty!23379 tp!70215))))

(assert (= (and start!87318 res!679800) b!1011755))

(assert (= (and b!1011755 res!679801) b!1011756))

(assert (= (and start!87318 ((_ is Cons!21442) l!412)) b!1011757))

(declare-fun m!935827 () Bool)

(assert (=> start!87318 m!935827))

(declare-fun m!935829 () Bool)

(assert (=> b!1011756 m!935829))

(check-sat (not start!87318) (not b!1011756) (not b!1011757) tp_is_empty!23379)
(check-sat)
(get-model)

(declare-fun d!120171 () Bool)

(declare-fun res!679818 () Bool)

(declare-fun e!569224 () Bool)

(assert (=> d!120171 (=> res!679818 e!569224)))

(assert (=> d!120171 (= res!679818 (or ((_ is Nil!21443) l!412) ((_ is Nil!21443) (t!30455 l!412))))))

(assert (=> d!120171 (= (isStrictlySorted!516 l!412) e!569224)))

(declare-fun b!1011777 () Bool)

(declare-fun e!569225 () Bool)

(assert (=> b!1011777 (= e!569224 e!569225)))

(declare-fun res!679819 () Bool)

(assert (=> b!1011777 (=> (not res!679819) (not e!569225))))

(assert (=> b!1011777 (= res!679819 (bvslt (_1!7568 (h!22640 l!412)) (_1!7568 (h!22640 (t!30455 l!412)))))))

(declare-fun b!1011778 () Bool)

(assert (=> b!1011778 (= e!569225 (isStrictlySorted!516 (t!30455 l!412)))))

(assert (= (and d!120171 (not res!679818)) b!1011777))

(assert (= (and b!1011777 res!679819) b!1011778))

(assert (=> b!1011778 m!935829))

(assert (=> start!87318 d!120171))

(declare-fun d!120177 () Bool)

(declare-fun res!679822 () Bool)

(declare-fun e!569228 () Bool)

(assert (=> d!120177 (=> res!679822 e!569228)))

(assert (=> d!120177 (= res!679822 (or ((_ is Nil!21443) (t!30455 l!412)) ((_ is Nil!21443) (t!30455 (t!30455 l!412)))))))

(assert (=> d!120177 (= (isStrictlySorted!516 (t!30455 l!412)) e!569228)))

(declare-fun b!1011781 () Bool)

(declare-fun e!569229 () Bool)

(assert (=> b!1011781 (= e!569228 e!569229)))

(declare-fun res!679823 () Bool)

(assert (=> b!1011781 (=> (not res!679823) (not e!569229))))

(assert (=> b!1011781 (= res!679823 (bvslt (_1!7568 (h!22640 (t!30455 l!412))) (_1!7568 (h!22640 (t!30455 (t!30455 l!412))))))))

(declare-fun b!1011782 () Bool)

(assert (=> b!1011782 (= e!569229 (isStrictlySorted!516 (t!30455 (t!30455 l!412))))))

(assert (= (and d!120177 (not res!679822)) b!1011781))

(assert (= (and b!1011781 res!679823) b!1011782))

(declare-fun m!935837 () Bool)

(assert (=> b!1011782 m!935837))

(assert (=> b!1011756 d!120177))

(declare-fun b!1011796 () Bool)

(declare-fun e!569239 () Bool)

(declare-fun tp!70224 () Bool)

(assert (=> b!1011796 (= e!569239 (and tp_is_empty!23379 tp!70224))))

(assert (=> b!1011757 (= tp!70215 e!569239)))

(assert (= (and b!1011757 ((_ is Cons!21442) (t!30455 l!412))) b!1011796))

(check-sat (not b!1011782) (not b!1011778) (not b!1011796) tp_is_empty!23379)
(check-sat)
