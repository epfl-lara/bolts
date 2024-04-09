; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88580 () Bool)

(assert start!88580)

(declare-fun b!1018048 () Bool)

(declare-fun e!572826 () Bool)

(declare-fun tp_is_empty!23677 () Bool)

(declare-fun tp!70973 () Bool)

(assert (=> b!1018048 (= e!572826 (and tp_is_empty!23677 tp!70973))))

(declare-fun b!1018047 () Bool)

(declare-fun e!572827 () Bool)

(declare-datatypes ((B!1610 0))(
  ( (B!1611 (val!11889 Int)) )
))
(declare-datatypes ((tuple2!15414 0))(
  ( (tuple2!15415 (_1!7717 (_ BitVec 64)) (_2!7717 B!1610)) )
))
(declare-datatypes ((List!21691 0))(
  ( (Nil!21688) (Cons!21687 (h!22885 tuple2!15414) (t!30700 List!21691)) )
))
(declare-fun l!1036 () List!21691)

(declare-fun key!271 () (_ BitVec 64))

(declare-fun containsKey!509 (List!21691 (_ BitVec 64)) Bool)

(assert (=> b!1018047 (= e!572827 (not (containsKey!509 l!1036 key!271)))))

(declare-fun b!1018045 () Bool)

(declare-fun res!682781 () Bool)

(assert (=> b!1018045 (=> (not res!682781) (not e!572827))))

(declare-datatypes ((Option!635 0))(
  ( (Some!634 (v!14483 B!1610)) (None!633) )
))
(declare-fun isDefined!429 (Option!635) Bool)

(declare-fun getValueByKey!584 (List!21691 (_ BitVec 64)) Option!635)

(assert (=> b!1018045 (= res!682781 (isDefined!429 (getValueByKey!584 l!1036 key!271)))))

(declare-fun b!1018046 () Bool)

(declare-fun res!682780 () Bool)

(assert (=> b!1018046 (=> (not res!682780) (not e!572827))))

(assert (=> b!1018046 (= res!682780 (or (not (is-Cons!21687 l!1036)) (= (_1!7717 (h!22885 l!1036)) key!271)))))

(declare-fun res!682782 () Bool)

(assert (=> start!88580 (=> (not res!682782) (not e!572827))))

(declare-fun isStrictlySorted!644 (List!21691) Bool)

(assert (=> start!88580 (= res!682782 (isStrictlySorted!644 l!1036))))

(assert (=> start!88580 e!572827))

(assert (=> start!88580 e!572826))

(assert (=> start!88580 true))

(assert (= (and start!88580 res!682782) b!1018045))

(assert (= (and b!1018045 res!682781) b!1018046))

(assert (= (and b!1018046 res!682780) b!1018047))

(assert (= (and start!88580 (is-Cons!21687 l!1036)) b!1018048))

(declare-fun m!939227 () Bool)

(assert (=> b!1018047 m!939227))

(declare-fun m!939229 () Bool)

(assert (=> b!1018045 m!939229))

(assert (=> b!1018045 m!939229))

(declare-fun m!939231 () Bool)

(assert (=> b!1018045 m!939231))

(declare-fun m!939233 () Bool)

(assert (=> start!88580 m!939233))

(push 1)

(assert (not b!1018048))

(assert tp_is_empty!23677)

(assert (not b!1018045))

(assert (not b!1018047))

(assert (not start!88580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121773 () Bool)

(declare-fun isEmpty!922 (Option!635) Bool)

(assert (=> d!121773 (= (isDefined!429 (getValueByKey!584 l!1036 key!271)) (not (isEmpty!922 (getValueByKey!584 l!1036 key!271))))))

(declare-fun bs!29641 () Bool)

(assert (= bs!29641 d!121773))

(assert (=> bs!29641 m!939229))

(declare-fun m!939251 () Bool)

(assert (=> bs!29641 m!939251))

(assert (=> b!1018045 d!121773))

(declare-fun d!121777 () Bool)

(declare-fun c!103078 () Bool)

(assert (=> d!121777 (= c!103078 (and (is-Cons!21687 l!1036) (= (_1!7717 (h!22885 l!1036)) key!271)))))

(declare-fun e!572860 () Option!635)

(assert (=> d!121777 (= (getValueByKey!584 l!1036 key!271) e!572860)))

(declare-fun b!1018104 () Bool)

(declare-fun e!572861 () Option!635)

(assert (=> b!1018104 (= e!572861 None!633)))

(declare-fun b!1018103 () Bool)

(assert (=> b!1018103 (= e!572861 (getValueByKey!584 (t!30700 l!1036) key!271))))

(declare-fun b!1018101 () Bool)

(assert (=> b!1018101 (= e!572860 (Some!634 (_2!7717 (h!22885 l!1036))))))

(declare-fun b!1018102 () Bool)

(assert (=> b!1018102 (= e!572860 e!572861)))

(declare-fun c!103079 () Bool)

(assert (=> b!1018102 (= c!103079 (and (is-Cons!21687 l!1036) (not (= (_1!7717 (h!22885 l!1036)) key!271))))))

(assert (= (and d!121777 c!103078) b!1018101))

(assert (= (and d!121777 (not c!103078)) b!1018102))

(assert (= (and b!1018102 c!103079) b!1018103))

(assert (= (and b!1018102 (not c!103079)) b!1018104))

(declare-fun m!939261 () Bool)

(assert (=> b!1018103 m!939261))

(assert (=> b!1018045 d!121777))

(declare-fun d!121787 () Bool)

(declare-fun res!682823 () Bool)

(declare-fun e!572878 () Bool)

(assert (=> d!121787 (=> res!682823 e!572878)))

(assert (=> d!121787 (= res!682823 (and (is-Cons!21687 l!1036) (= (_1!7717 (h!22885 l!1036)) key!271)))))

(assert (=> d!121787 (= (containsKey!509 l!1036 key!271) e!572878)))

(declare-fun b!1018127 () Bool)

(declare-fun e!572879 () Bool)

(assert (=> b!1018127 (= e!572878 e!572879)))

(declare-fun res!682824 () Bool)

(assert (=> b!1018127 (=> (not res!682824) (not e!572879))))

(assert (=> b!1018127 (= res!682824 (and (or (not (is-Cons!21687 l!1036)) (bvsle (_1!7717 (h!22885 l!1036)) key!271)) (is-Cons!21687 l!1036) (bvslt (_1!7717 (h!22885 l!1036)) key!271)))))

(declare-fun b!1018128 () Bool)

(assert (=> b!1018128 (= e!572879 (containsKey!509 (t!30700 l!1036) key!271))))

(assert (= (and d!121787 (not res!682823)) b!1018127))

(assert (= (and b!1018127 res!682824) b!1018128))

(declare-fun m!939267 () Bool)

(assert (=> b!1018128 m!939267))

(assert (=> b!1018047 d!121787))

(declare-fun d!121793 () Bool)

(declare-fun res!682833 () Bool)

(declare-fun e!572893 () Bool)

(assert (=> d!121793 (=> res!682833 e!572893)))

(assert (=> d!121793 (= res!682833 (or (is-Nil!21688 l!1036) (is-Nil!21688 (t!30700 l!1036))))))

(assert (=> d!121793 (= (isStrictlySorted!644 l!1036) e!572893)))

(declare-fun b!1018146 () Bool)

(declare-fun e!572894 () Bool)

(assert (=> b!1018146 (= e!572893 e!572894)))

(declare-fun res!682834 () Bool)

(assert (=> b!1018146 (=> (not res!682834) (not e!572894))))

(assert (=> b!1018146 (= res!682834 (bvslt (_1!7717 (h!22885 l!1036)) (_1!7717 (h!22885 (t!30700 l!1036)))))))

(declare-fun b!1018147 () Bool)

(assert (=> b!1018147 (= e!572894 (isStrictlySorted!644 (t!30700 l!1036)))))

(assert (= (and d!121793 (not res!682833)) b!1018146))

(assert (= (and b!1018146 res!682834) b!1018147))

(declare-fun m!939271 () Bool)

(assert (=> b!1018147 m!939271))

(assert (=> start!88580 d!121793))

(declare-fun b!1018158 () Bool)

(declare-fun e!572901 () Bool)

(declare-fun tp!70987 () Bool)

(assert (=> b!1018158 (= e!572901 (and tp_is_empty!23677 tp!70987))))

(assert (=> b!1018048 (= tp!70973 e!572901)))

(assert (= (and b!1018048 (is-Cons!21687 (t!30700 l!1036))) b!1018158))

(push 1)

(assert tp_is_empty!23677)

(assert (not b!1018128))

(assert (not b!1018158))

(assert (not b!1018103))

(assert (not d!121773))

(assert (not b!1018147))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121803 () Bool)

(declare-fun c!103090 () Bool)

(assert (=> d!121803 (= c!103090 (and (is-Cons!21687 (t!30700 l!1036)) (= (_1!7717 (h!22885 (t!30700 l!1036))) key!271)))))

(declare-fun e!572910 () Option!635)

(assert (=> d!121803 (= (getValueByKey!584 (t!30700 l!1036) key!271) e!572910)))

(declare-fun b!1018172 () Bool)

(declare-fun e!572911 () Option!635)

(assert (=> b!1018172 (= e!572911 None!633)))

(declare-fun b!1018171 () Bool)

(assert (=> b!1018171 (= e!572911 (getValueByKey!584 (t!30700 (t!30700 l!1036)) key!271))))

(declare-fun b!1018169 () Bool)

(assert (=> b!1018169 (= e!572910 (Some!634 (_2!7717 (h!22885 (t!30700 l!1036)))))))

(declare-fun b!1018170 () Bool)

(assert (=> b!1018170 (= e!572910 e!572911)))

(declare-fun c!103091 () Bool)

(assert (=> b!1018170 (= c!103091 (and (is-Cons!21687 (t!30700 l!1036)) (not (= (_1!7717 (h!22885 (t!30700 l!1036))) key!271))))))

(assert (= (and d!121803 c!103090) b!1018169))

(assert (= (and d!121803 (not c!103090)) b!1018170))

(assert (= (and b!1018170 c!103091) b!1018171))

(assert (= (and b!1018170 (not c!103091)) b!1018172))

(declare-fun m!939281 () Bool)

(assert (=> b!1018171 m!939281))

(assert (=> b!1018103 d!121803))

(declare-fun d!121805 () Bool)

(declare-fun res!682841 () Bool)

(declare-fun e!572912 () Bool)

(assert (=> d!121805 (=> res!682841 e!572912)))

(assert (=> d!121805 (= res!682841 (and (is-Cons!21687 (t!30700 l!1036)) (= (_1!7717 (h!22885 (t!30700 l!1036))) key!271)))))

(assert (=> d!121805 (= (containsKey!509 (t!30700 l!1036) key!271) e!572912)))

(declare-fun b!1018173 () Bool)

(declare-fun e!572913 () Bool)

(assert (=> b!1018173 (= e!572912 e!572913)))

(declare-fun res!682842 () Bool)

(assert (=> b!1018173 (=> (not res!682842) (not e!572913))))

(assert (=> b!1018173 (= res!682842 (and (or (not (is-Cons!21687 (t!30700 l!1036))) (bvsle (_1!7717 (h!22885 (t!30700 l!1036))) key!271)) (is-Cons!21687 (t!30700 l!1036)) (bvslt (_1!7717 (h!22885 (t!30700 l!1036))) key!271)))))

(declare-fun b!1018174 () Bool)

(assert (=> b!1018174 (= e!572913 (containsKey!509 (t!30700 (t!30700 l!1036)) key!271))))

(assert (= (and d!121805 (not res!682841)) b!1018173))

(assert (= (and b!1018173 res!682842) b!1018174))

(declare-fun m!939283 () Bool)

(assert (=> b!1018174 m!939283))

(assert (=> b!1018128 d!121805))

(declare-fun d!121807 () Bool)

(declare-fun res!682843 () Bool)

(declare-fun e!572914 () Bool)

(assert (=> d!121807 (=> res!682843 e!572914)))

(assert (=> d!121807 (= res!682843 (or (is-Nil!21688 (t!30700 l!1036)) (is-Nil!21688 (t!30700 (t!30700 l!1036)))))))

(assert (=> d!121807 (= (isStrictlySorted!644 (t!30700 l!1036)) e!572914)))

(declare-fun b!1018175 () Bool)

(declare-fun e!572915 () Bool)

(assert (=> b!1018175 (= e!572914 e!572915)))

(declare-fun res!682844 () Bool)

(assert (=> 