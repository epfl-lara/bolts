; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88516 () Bool)

(assert start!88516)

(declare-fun b!1017728 () Bool)

(declare-fun res!682628 () Bool)

(declare-fun e!572638 () Bool)

(assert (=> b!1017728 (=> (not res!682628) (not e!572638))))

(declare-datatypes ((B!1600 0))(
  ( (B!1601 (val!11884 Int)) )
))
(declare-datatypes ((tuple2!15404 0))(
  ( (tuple2!15405 (_1!7712 (_ BitVec 64)) (_2!7712 B!1600)) )
))
(declare-datatypes ((List!21686 0))(
  ( (Nil!21683) (Cons!21682 (h!22880 tuple2!15404) (t!30695 List!21686)) )
))
(declare-fun l!1036 () List!21686)

(declare-fun key!271 () (_ BitVec 64))

(declare-datatypes ((Option!630 0))(
  ( (Some!629 (v!14478 B!1600)) (None!628) )
))
(declare-fun isDefined!424 (Option!630) Bool)

(declare-fun getValueByKey!579 (List!21686 (_ BitVec 64)) Option!630)

(assert (=> b!1017728 (= res!682628 (isDefined!424 (getValueByKey!579 (t!30695 l!1036) key!271)))))

(declare-fun b!1017729 () Bool)

(declare-fun res!682631 () Bool)

(assert (=> b!1017729 (=> (not res!682631) (not e!572638))))

(declare-fun isStrictlySorted!639 (List!21686) Bool)

(assert (=> b!1017729 (= res!682631 (isStrictlySorted!639 (t!30695 l!1036)))))

(declare-fun b!1017730 () Bool)

(declare-fun res!682630 () Bool)

(assert (=> b!1017730 (=> (not res!682630) (not e!572638))))

(assert (=> b!1017730 (= res!682630 (isDefined!424 (getValueByKey!579 l!1036 key!271)))))

(declare-fun b!1017731 () Bool)

(declare-fun res!682629 () Bool)

(assert (=> b!1017731 (=> (not res!682629) (not e!572638))))

(get-info :version)

(assert (=> b!1017731 (= res!682629 (and ((_ is Cons!21682) l!1036) (not (= (_1!7712 (h!22880 l!1036)) key!271))))))

(declare-fun b!1017732 () Bool)

(declare-fun ListPrimitiveSize!131 (List!21686) Int)

(assert (=> b!1017732 (= e!572638 (>= (ListPrimitiveSize!131 (t!30695 l!1036)) (ListPrimitiveSize!131 l!1036)))))

(declare-fun res!682632 () Bool)

(assert (=> start!88516 (=> (not res!682632) (not e!572638))))

(assert (=> start!88516 (= res!682632 (isStrictlySorted!639 l!1036))))

(assert (=> start!88516 e!572638))

(declare-fun e!572637 () Bool)

(assert (=> start!88516 e!572637))

(assert (=> start!88516 true))

(declare-fun b!1017733 () Bool)

(declare-fun tp_is_empty!23667 () Bool)

(declare-fun tp!70940 () Bool)

(assert (=> b!1017733 (= e!572637 (and tp_is_empty!23667 tp!70940))))

(assert (= (and start!88516 res!682632) b!1017730))

(assert (= (and b!1017730 res!682630) b!1017731))

(assert (= (and b!1017731 res!682629) b!1017729))

(assert (= (and b!1017729 res!682631) b!1017728))

(assert (= (and b!1017728 res!682628) b!1017732))

(assert (= (and start!88516 ((_ is Cons!21682) l!1036)) b!1017733))

(declare-fun m!939075 () Bool)

(assert (=> start!88516 m!939075))

(declare-fun m!939077 () Bool)

(assert (=> b!1017729 m!939077))

(declare-fun m!939079 () Bool)

(assert (=> b!1017732 m!939079))

(declare-fun m!939081 () Bool)

(assert (=> b!1017732 m!939081))

(declare-fun m!939083 () Bool)

(assert (=> b!1017728 m!939083))

(assert (=> b!1017728 m!939083))

(declare-fun m!939085 () Bool)

(assert (=> b!1017728 m!939085))

(declare-fun m!939087 () Bool)

(assert (=> b!1017730 m!939087))

(assert (=> b!1017730 m!939087))

(declare-fun m!939089 () Bool)

(assert (=> b!1017730 m!939089))

(check-sat tp_is_empty!23667 (not b!1017729) (not b!1017728) (not start!88516) (not b!1017732) (not b!1017733) (not b!1017730))
(check-sat)
(get-model)

(declare-fun d!121667 () Bool)

(declare-fun lt!449451 () Int)

(assert (=> d!121667 (>= lt!449451 0)))

(declare-fun e!572651 () Int)

(assert (=> d!121667 (= lt!449451 e!572651)))

(declare-fun c!103016 () Bool)

(assert (=> d!121667 (= c!103016 ((_ is Nil!21683) (t!30695 l!1036)))))

(assert (=> d!121667 (= (ListPrimitiveSize!131 (t!30695 l!1036)) lt!449451)))

(declare-fun b!1017764 () Bool)

(assert (=> b!1017764 (= e!572651 0)))

(declare-fun b!1017765 () Bool)

(assert (=> b!1017765 (= e!572651 (+ 1 (ListPrimitiveSize!131 (t!30695 (t!30695 l!1036)))))))

(assert (= (and d!121667 c!103016) b!1017764))

(assert (= (and d!121667 (not c!103016)) b!1017765))

(declare-fun m!939109 () Bool)

(assert (=> b!1017765 m!939109))

(assert (=> b!1017732 d!121667))

(declare-fun d!121673 () Bool)

(declare-fun lt!449452 () Int)

(assert (=> d!121673 (>= lt!449452 0)))

(declare-fun e!572652 () Int)

(assert (=> d!121673 (= lt!449452 e!572652)))

(declare-fun c!103017 () Bool)

(assert (=> d!121673 (= c!103017 ((_ is Nil!21683) l!1036))))

(assert (=> d!121673 (= (ListPrimitiveSize!131 l!1036) lt!449452)))

(declare-fun b!1017766 () Bool)

(assert (=> b!1017766 (= e!572652 0)))

(declare-fun b!1017767 () Bool)

(assert (=> b!1017767 (= e!572652 (+ 1 (ListPrimitiveSize!131 (t!30695 l!1036))))))

(assert (= (and d!121673 c!103017) b!1017766))

(assert (= (and d!121673 (not c!103017)) b!1017767))

(assert (=> b!1017767 m!939079))

(assert (=> b!1017732 d!121673))

(declare-fun d!121675 () Bool)

(declare-fun res!682652 () Bool)

(declare-fun e!572663 () Bool)

(assert (=> d!121675 (=> res!682652 e!572663)))

(assert (=> d!121675 (= res!682652 (or ((_ is Nil!21683) l!1036) ((_ is Nil!21683) (t!30695 l!1036))))))

(assert (=> d!121675 (= (isStrictlySorted!639 l!1036) e!572663)))

(declare-fun b!1017784 () Bool)

(declare-fun e!572664 () Bool)

(assert (=> b!1017784 (= e!572663 e!572664)))

(declare-fun res!682653 () Bool)

(assert (=> b!1017784 (=> (not res!682653) (not e!572664))))

(assert (=> b!1017784 (= res!682653 (bvslt (_1!7712 (h!22880 l!1036)) (_1!7712 (h!22880 (t!30695 l!1036)))))))

(declare-fun b!1017785 () Bool)

(assert (=> b!1017785 (= e!572664 (isStrictlySorted!639 (t!30695 l!1036)))))

(assert (= (and d!121675 (not res!682652)) b!1017784))

(assert (= (and b!1017784 res!682653) b!1017785))

(assert (=> b!1017785 m!939077))

(assert (=> start!88516 d!121675))

(declare-fun d!121683 () Bool)

(declare-fun isEmpty!918 (Option!630) Bool)

(assert (=> d!121683 (= (isDefined!424 (getValueByKey!579 (t!30695 l!1036) key!271)) (not (isEmpty!918 (getValueByKey!579 (t!30695 l!1036) key!271))))))

(declare-fun bs!29625 () Bool)

(assert (= bs!29625 d!121683))

(assert (=> bs!29625 m!939083))

(declare-fun m!939117 () Bool)

(assert (=> bs!29625 m!939117))

(assert (=> b!1017728 d!121683))

(declare-fun b!1017822 () Bool)

(declare-fun e!572687 () Option!630)

(assert (=> b!1017822 (= e!572687 (Some!629 (_2!7712 (h!22880 (t!30695 l!1036)))))))

(declare-fun b!1017825 () Bool)

(declare-fun e!572688 () Option!630)

(assert (=> b!1017825 (= e!572688 None!628)))

(declare-fun d!121687 () Bool)

(declare-fun c!103038 () Bool)

(assert (=> d!121687 (= c!103038 (and ((_ is Cons!21682) (t!30695 l!1036)) (= (_1!7712 (h!22880 (t!30695 l!1036))) key!271)))))

(assert (=> d!121687 (= (getValueByKey!579 (t!30695 l!1036) key!271) e!572687)))

(declare-fun b!1017824 () Bool)

(assert (=> b!1017824 (= e!572688 (getValueByKey!579 (t!30695 (t!30695 l!1036)) key!271))))

(declare-fun b!1017823 () Bool)

(assert (=> b!1017823 (= e!572687 e!572688)))

(declare-fun c!103039 () Bool)

(assert (=> b!1017823 (= c!103039 (and ((_ is Cons!21682) (t!30695 l!1036)) (not (= (_1!7712 (h!22880 (t!30695 l!1036))) key!271))))))

(assert (= (and d!121687 c!103038) b!1017822))

(assert (= (and d!121687 (not c!103038)) b!1017823))

(assert (= (and b!1017823 c!103039) b!1017824))

(assert (= (and b!1017823 (not c!103039)) b!1017825))

(declare-fun m!939127 () Bool)

(assert (=> b!1017824 m!939127))

(assert (=> b!1017728 d!121687))

(declare-fun d!121703 () Bool)

(declare-fun res!682662 () Bool)

(declare-fun e!572693 () Bool)

(assert (=> d!121703 (=> res!682662 e!572693)))

(assert (=> d!121703 (= res!682662 (or ((_ is Nil!21683) (t!30695 l!1036)) ((_ is Nil!21683) (t!30695 (t!30695 l!1036)))))))

(assert (=> d!121703 (= (isStrictlySorted!639 (t!30695 l!1036)) e!572693)))

(declare-fun b!1017834 () Bool)

(declare-fun e!572694 () Bool)

(assert (=> b!1017834 (= e!572693 e!572694)))

(declare-fun res!682663 () Bool)

(assert (=> b!1017834 (=> (not res!682663) (not e!572694))))

(assert (=> b!1017834 (= res!682663 (bvslt (_1!7712 (h!22880 (t!30695 l!1036))) (_1!7712 (h!22880 (t!30695 (t!30695 l!1036))))))))

(declare-fun b!1017835 () Bool)

(assert (=> b!1017835 (= e!572694 (isStrictlySorted!639 (t!30695 (t!30695 l!1036))))))

(assert (= (and d!121703 (not res!682662)) b!1017834))

(assert (= (and b!1017834 res!682663) b!1017835))

(declare-fun m!939131 () Bool)

(assert (=> b!1017835 m!939131))

(assert (=> b!1017729 d!121703))

(declare-fun d!121707 () Bool)

(assert (=> d!121707 (= (isDefined!424 (getValueByKey!579 l!1036 key!271)) (not (isEmpty!918 (getValueByKey!579 l!1036 key!271))))))

(declare-fun bs!29628 () Bool)

(assert (= bs!29628 d!121707))

(assert (=> bs!29628 m!939087))

(declare-fun m!939133 () Bool)

(assert (=> bs!29628 m!939133))

(assert (=> b!1017730 d!121707))

(declare-fun b!1017840 () Bool)

(declare-fun e!572697 () Option!630)

(assert (=> b!1017840 (= e!572697 (Some!629 (_2!7712 (h!22880 l!1036))))))

(declare-fun b!1017843 () Bool)

(declare-fun e!572698 () Option!630)

(assert (=> b!1017843 (= e!572698 None!628)))

(declare-fun d!121709 () Bool)

(declare-fun c!103044 () Bool)

(assert (=> d!121709 (= c!103044 (and ((_ is Cons!21682) l!1036) (= (_1!7712 (h!22880 l!1036)) key!271)))))

(assert (=> d!121709 (= (getValueByKey!579 l!1036 key!271) e!572697)))

(declare-fun b!1017842 () Bool)

(assert (=> b!1017842 (= e!572698 (getValueByKey!579 (t!30695 l!1036) key!271))))

(declare-fun b!1017841 () Bool)

(assert (=> b!1017841 (= e!572697 e!572698)))

(declare-fun c!103045 () Bool)

(assert (=> b!1017841 (= c!103045 (and ((_ is Cons!21682) l!1036) (not (= (_1!7712 (h!22880 l!1036)) key!271))))))

(assert (= (and d!121709 c!103044) b!1017840))

(assert (= (and d!121709 (not c!103044)) b!1017841))

(assert (= (and b!1017841 c!103045) b!1017842))

(assert (= (and b!1017841 (not c!103045)) b!1017843))

(assert (=> b!1017842 m!939083))

(assert (=> b!1017730 d!121709))

(declare-fun b!1017849 () Bool)

(declare-fun e!572702 () Bool)

(declare-fun tp!70949 () Bool)

(assert (=> b!1017849 (= e!572702 (and tp_is_empty!23667 tp!70949))))

(assert (=> b!1017733 (= tp!70940 e!572702)))

(assert (= (and b!1017733 ((_ is Cons!21682) (t!30695 l!1036))) b!1017849))

(check-sat (not d!121683) (not d!121707) (not b!1017842) (not b!1017765) tp_is_empty!23667 (not b!1017824) (not b!1017767) (not b!1017849) (not b!1017785) (not b!1017835))
(check-sat)
