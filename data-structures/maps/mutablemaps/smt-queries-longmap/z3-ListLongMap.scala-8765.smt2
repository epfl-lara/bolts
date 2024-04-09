; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106500 () Bool)

(assert start!106500)

(declare-fun b!1265626 () Bool)

(declare-fun res!842757 () Bool)

(declare-fun e!720820 () Bool)

(assert (=> b!1265626 (=> (not res!842757) (not e!720820))))

(declare-datatypes ((B!1984 0))(
  ( (B!1985 (val!16327 Int)) )
))
(declare-datatypes ((tuple2!21322 0))(
  ( (tuple2!21323 (_1!10671 (_ BitVec 64)) (_2!10671 B!1984)) )
))
(declare-datatypes ((List!28494 0))(
  ( (Nil!28491) (Cons!28490 (h!29699 tuple2!21322) (t!42022 List!28494)) )
))
(declare-fun l!706 () List!28494)

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!651 (List!28494 (_ BitVec 64)) Bool)

(assert (=> b!1265626 (= res!842757 (not (containsKey!651 l!706 key1!31)))))

(declare-fun res!842758 () Bool)

(assert (=> start!106500 (=> (not res!842758) (not e!720820))))

(declare-fun isStrictlySorted!790 (List!28494) Bool)

(assert (=> start!106500 (= res!842758 (isStrictlySorted!790 l!706))))

(assert (=> start!106500 e!720820))

(declare-fun e!720819 () Bool)

(assert (=> start!106500 e!720819))

(assert (=> start!106500 true))

(declare-fun b!1265627 () Bool)

(declare-fun res!842755 () Bool)

(assert (=> b!1265627 (=> (not res!842755) (not e!720820))))

(get-info :version)

(assert (=> b!1265627 (= res!842755 ((_ is Cons!28490) l!706))))

(declare-fun b!1265628 () Bool)

(declare-fun res!842756 () Bool)

(assert (=> b!1265628 (=> (not res!842756) (not e!720820))))

(assert (=> b!1265628 (= res!842756 (isStrictlySorted!790 (t!42022 l!706)))))

(declare-fun b!1265629 () Bool)

(assert (=> b!1265629 (= e!720820 (containsKey!651 (t!42022 l!706) key1!31))))

(declare-fun b!1265630 () Bool)

(declare-fun tp_is_empty!32517 () Bool)

(declare-fun tp!96378 () Bool)

(assert (=> b!1265630 (= e!720819 (and tp_is_empty!32517 tp!96378))))

(assert (= (and start!106500 res!842758) b!1265626))

(assert (= (and b!1265626 res!842757) b!1265627))

(assert (= (and b!1265627 res!842755) b!1265628))

(assert (= (and b!1265628 res!842756) b!1265629))

(assert (= (and start!106500 ((_ is Cons!28490) l!706)) b!1265630))

(declare-fun m!1165667 () Bool)

(assert (=> b!1265626 m!1165667))

(declare-fun m!1165669 () Bool)

(assert (=> start!106500 m!1165669))

(declare-fun m!1165671 () Bool)

(assert (=> b!1265628 m!1165671))

(declare-fun m!1165673 () Bool)

(assert (=> b!1265629 m!1165673))

(check-sat (not b!1265630) (not b!1265628) (not b!1265629) tp_is_empty!32517 (not start!106500) (not b!1265626))
(check-sat)
(get-model)

(declare-fun d!138887 () Bool)

(declare-fun res!842792 () Bool)

(declare-fun e!720848 () Bool)

(assert (=> d!138887 (=> res!842792 e!720848)))

(assert (=> d!138887 (= res!842792 (and ((_ is Cons!28490) l!706) (= (_1!10671 (h!29699 l!706)) key1!31)))))

(assert (=> d!138887 (= (containsKey!651 l!706 key1!31) e!720848)))

(declare-fun b!1265664 () Bool)

(declare-fun e!720850 () Bool)

(assert (=> b!1265664 (= e!720848 e!720850)))

(declare-fun res!842794 () Bool)

(assert (=> b!1265664 (=> (not res!842794) (not e!720850))))

(assert (=> b!1265664 (= res!842794 (and (or (not ((_ is Cons!28490) l!706)) (bvsle (_1!10671 (h!29699 l!706)) key1!31)) ((_ is Cons!28490) l!706) (bvslt (_1!10671 (h!29699 l!706)) key1!31)))))

(declare-fun b!1265666 () Bool)

(assert (=> b!1265666 (= e!720850 (containsKey!651 (t!42022 l!706) key1!31))))

(assert (= (and d!138887 (not res!842792)) b!1265664))

(assert (= (and b!1265664 res!842794) b!1265666))

(assert (=> b!1265666 m!1165673))

(assert (=> b!1265626 d!138887))

(declare-fun d!138897 () Bool)

(declare-fun res!842809 () Bool)

(declare-fun e!720868 () Bool)

(assert (=> d!138897 (=> res!842809 e!720868)))

(assert (=> d!138897 (= res!842809 (or ((_ is Nil!28491) (t!42022 l!706)) ((_ is Nil!28491) (t!42022 (t!42022 l!706)))))))

(assert (=> d!138897 (= (isStrictlySorted!790 (t!42022 l!706)) e!720868)))

(declare-fun b!1265689 () Bool)

(declare-fun e!720869 () Bool)

(assert (=> b!1265689 (= e!720868 e!720869)))

(declare-fun res!842810 () Bool)

(assert (=> b!1265689 (=> (not res!842810) (not e!720869))))

(assert (=> b!1265689 (= res!842810 (bvslt (_1!10671 (h!29699 (t!42022 l!706))) (_1!10671 (h!29699 (t!42022 (t!42022 l!706))))))))

(declare-fun b!1265690 () Bool)

(assert (=> b!1265690 (= e!720869 (isStrictlySorted!790 (t!42022 (t!42022 l!706))))))

(assert (= (and d!138897 (not res!842809)) b!1265689))

(assert (= (and b!1265689 res!842810) b!1265690))

(declare-fun m!1165689 () Bool)

(assert (=> b!1265690 m!1165689))

(assert (=> b!1265628 d!138897))

(declare-fun d!138902 () Bool)

(declare-fun res!842813 () Bool)

(declare-fun e!720872 () Bool)

(assert (=> d!138902 (=> res!842813 e!720872)))

(assert (=> d!138902 (= res!842813 (and ((_ is Cons!28490) (t!42022 l!706)) (= (_1!10671 (h!29699 (t!42022 l!706))) key1!31)))))

(assert (=> d!138902 (= (containsKey!651 (t!42022 l!706) key1!31) e!720872)))

(declare-fun b!1265693 () Bool)

(declare-fun e!720873 () Bool)

(assert (=> b!1265693 (= e!720872 e!720873)))

(declare-fun res!842814 () Bool)

(assert (=> b!1265693 (=> (not res!842814) (not e!720873))))

(assert (=> b!1265693 (= res!842814 (and (or (not ((_ is Cons!28490) (t!42022 l!706))) (bvsle (_1!10671 (h!29699 (t!42022 l!706))) key1!31)) ((_ is Cons!28490) (t!42022 l!706)) (bvslt (_1!10671 (h!29699 (t!42022 l!706))) key1!31)))))

(declare-fun b!1265694 () Bool)

(assert (=> b!1265694 (= e!720873 (containsKey!651 (t!42022 (t!42022 l!706)) key1!31))))

(assert (= (and d!138902 (not res!842813)) b!1265693))

(assert (= (and b!1265693 res!842814) b!1265694))

(declare-fun m!1165691 () Bool)

(assert (=> b!1265694 m!1165691))

(assert (=> b!1265629 d!138902))

(declare-fun d!138906 () Bool)

(declare-fun res!842815 () Bool)

(declare-fun e!720874 () Bool)

(assert (=> d!138906 (=> res!842815 e!720874)))

(assert (=> d!138906 (= res!842815 (or ((_ is Nil!28491) l!706) ((_ is Nil!28491) (t!42022 l!706))))))

(assert (=> d!138906 (= (isStrictlySorted!790 l!706) e!720874)))

(declare-fun b!1265695 () Bool)

(declare-fun e!720875 () Bool)

(assert (=> b!1265695 (= e!720874 e!720875)))

(declare-fun res!842816 () Bool)

(assert (=> b!1265695 (=> (not res!842816) (not e!720875))))

(assert (=> b!1265695 (= res!842816 (bvslt (_1!10671 (h!29699 l!706)) (_1!10671 (h!29699 (t!42022 l!706)))))))

(declare-fun b!1265696 () Bool)

(assert (=> b!1265696 (= e!720875 (isStrictlySorted!790 (t!42022 l!706)))))

(assert (= (and d!138906 (not res!842815)) b!1265695))

(assert (= (and b!1265695 res!842816) b!1265696))

(assert (=> b!1265696 m!1165671))

(assert (=> start!106500 d!138906))

(declare-fun b!1265707 () Bool)

(declare-fun e!720882 () Bool)

(declare-fun tp!96389 () Bool)

(assert (=> b!1265707 (= e!720882 (and tp_is_empty!32517 tp!96389))))

(assert (=> b!1265630 (= tp!96378 e!720882)))

(assert (= (and b!1265630 ((_ is Cons!28490) (t!42022 l!706))) b!1265707))

(check-sat (not b!1265694) (not b!1265707) (not b!1265666) (not b!1265690) tp_is_empty!32517 (not b!1265696))
(check-sat)
