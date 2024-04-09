; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88548 () Bool)

(assert start!88548)

(declare-fun b!1017911 () Bool)

(declare-fun res!682713 () Bool)

(declare-fun e!572730 () Bool)

(assert (=> b!1017911 (=> (not res!682713) (not e!572730))))

(declare-datatypes ((B!1608 0))(
  ( (B!1609 (val!11888 Int)) )
))
(declare-datatypes ((tuple2!15412 0))(
  ( (tuple2!15413 (_1!7716 (_ BitVec 64)) (_2!7716 B!1608)) )
))
(declare-datatypes ((List!21690 0))(
  ( (Nil!21687) (Cons!21686 (h!22884 tuple2!15412) (t!30699 List!21690)) )
))
(declare-fun l!1036 () List!21690)

(declare-fun key!271 () (_ BitVec 64))

(declare-datatypes ((Option!634 0))(
  ( (Some!633 (v!14482 B!1608)) (None!632) )
))
(declare-fun isDefined!428 (Option!634) Bool)

(declare-fun getValueByKey!583 (List!21690 (_ BitVec 64)) Option!634)

(assert (=> b!1017911 (= res!682713 (isDefined!428 (getValueByKey!583 (t!30699 l!1036) key!271)))))

(declare-fun b!1017912 () Bool)

(declare-fun res!682712 () Bool)

(assert (=> b!1017912 (=> (not res!682712) (not e!572730))))

(declare-fun isStrictlySorted!643 (List!21690) Bool)

(assert (=> b!1017912 (= res!682712 (isStrictlySorted!643 (t!30699 l!1036)))))

(declare-fun b!1017913 () Bool)

(declare-fun res!682716 () Bool)

(assert (=> b!1017913 (=> (not res!682716) (not e!572730))))

(assert (=> b!1017913 (= res!682716 (and (is-Cons!21686 l!1036) (not (= (_1!7716 (h!22884 l!1036)) key!271))))))

(declare-fun res!682715 () Bool)

(assert (=> start!88548 (=> (not res!682715) (not e!572730))))

(assert (=> start!88548 (= res!682715 (isStrictlySorted!643 l!1036))))

(assert (=> start!88548 e!572730))

(declare-fun e!572731 () Bool)

(assert (=> start!88548 e!572731))

(assert (=> start!88548 true))

(declare-fun b!1017914 () Bool)

(declare-fun res!682714 () Bool)

(assert (=> b!1017914 (=> (not res!682714) (not e!572730))))

(assert (=> b!1017914 (= res!682714 (isDefined!428 (getValueByKey!583 l!1036 key!271)))))

(declare-fun b!1017915 () Bool)

(declare-fun tp_is_empty!23675 () Bool)

(declare-fun tp!70961 () Bool)

(assert (=> b!1017915 (= e!572731 (and tp_is_empty!23675 tp!70961))))

(declare-fun b!1017916 () Bool)

(declare-fun containsKey!508 (List!21690 (_ BitVec 64)) Bool)

(assert (=> b!1017916 (= e!572730 (not (containsKey!508 l!1036 key!271)))))

(assert (=> b!1017916 (containsKey!508 (t!30699 l!1036) key!271)))

(declare-datatypes ((Unit!33244 0))(
  ( (Unit!33245) )
))
(declare-fun lt!449469 () Unit!33244)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!27 (List!21690 (_ BitVec 64)) Unit!33244)

(assert (=> b!1017916 (= lt!449469 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!27 (t!30699 l!1036) key!271))))

(assert (= (and start!88548 res!682715) b!1017914))

(assert (= (and b!1017914 res!682714) b!1017913))

(assert (= (and b!1017913 res!682716) b!1017912))

(assert (= (and b!1017912 res!682712) b!1017911))

(assert (= (and b!1017911 res!682713) b!1017916))

(assert (= (and start!88548 (is-Cons!21686 l!1036)) b!1017915))

(declare-fun m!939173 () Bool)

(assert (=> b!1017911 m!939173))

(assert (=> b!1017911 m!939173))

(declare-fun m!939175 () Bool)

(assert (=> b!1017911 m!939175))

(declare-fun m!939177 () Bool)

(assert (=> start!88548 m!939177))

(declare-fun m!939179 () Bool)

(assert (=> b!1017912 m!939179))

(declare-fun m!939181 () Bool)

(assert (=> b!1017914 m!939181))

(assert (=> b!1017914 m!939181))

(declare-fun m!939183 () Bool)

(assert (=> b!1017914 m!939183))

(declare-fun m!939185 () Bool)

(assert (=> b!1017916 m!939185))

(declare-fun m!939187 () Bool)

(assert (=> b!1017916 m!939187))

(declare-fun m!939189 () Bool)

(assert (=> b!1017916 m!939189))

(push 1)

(assert (not b!1017915))

(assert (not b!1017914))

(assert (not b!1017912))

(assert (not b!1017916))

(assert tp_is_empty!23675)

(assert (not b!1017911))

(assert (not start!88548))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121719 () Bool)

(declare-fun res!682731 () Bool)

(declare-fun e!572754 () Bool)

(assert (=> d!121719 (=> res!682731 e!572754)))

(assert (=> d!121719 (= res!682731 (and (is-Cons!21686 l!1036) (= (_1!7716 (h!22884 l!1036)) key!271)))))

(assert (=> d!121719 (= (containsKey!508 l!1036 key!271) e!572754)))

(declare-fun b!1017947 () Bool)

(declare-fun e!572755 () Bool)

(assert (=> b!1017947 (= e!572754 e!572755)))

(declare-fun res!682732 () Bool)

(assert (=> b!1017947 (=> (not res!682732) (not e!572755))))

(assert (=> b!1017947 (= res!682732 (and (or (not (is-Cons!21686 l!1036)) (bvsle (_1!7716 (h!22884 l!1036)) key!271)) (is-Cons!21686 l!1036) (bvslt (_1!7716 (h!22884 l!1036)) key!271)))))

(declare-fun b!1017948 () Bool)

(assert (=> b!1017948 (= e!572755 (containsKey!508 (t!30699 l!1036) key!271))))

(assert (= (and d!121719 (not res!682731)) b!1017947))

(assert (= (and b!1017947 res!682732) b!1017948))

(assert (=> b!1017948 m!939187))

(assert (=> b!1017916 d!121719))

(declare-fun d!121731 () Bool)

(declare-fun res!682737 () Bool)

(declare-fun e!572760 () Bool)

(assert (=> d!121731 (=> res!682737 e!572760)))

(assert (=> d!121731 (= res!682737 (and (is-Cons!21686 (t!30699 l!1036)) (= (_1!7716 (h!22884 (t!30699 l!1036))) key!271)))))

(assert (=> d!121731 (= (containsKey!508 (t!30699 l!1036) key!271) e!572760)))

(declare-fun b!1017953 () Bool)

(declare-fun e!572761 () Bool)

(assert (=> b!1017953 (= e!572760 e!572761)))

(declare-fun res!682738 () Bool)

(assert (=> b!1017953 (=> (not res!682738) (not e!572761))))

(assert (=> b!1017953 (= res!682738 (and (or (not (is-Cons!21686 (t!30699 l!1036))) (bvsle (_1!7716 (h!22884 (t!30699 l!1036))) key!271)) (is-Cons!21686 (t!30699 l!1036)) (bvslt (_1!7716 (h!22884 (t!30699 l!1036))) key!271)))))

(declare-fun b!1017954 () Bool)

(assert (=> b!1017954 (= e!572761 (containsKey!508 (t!30699 (t!30699 l!1036)) key!271))))

(assert (= (and d!121731 (not res!682737)) b!1017953))

(assert (= (and b!1017953 res!682738) b!1017954))

(declare-fun m!939201 () Bool)

(assert (=> b!1017954 m!939201))

(assert (=> b!1017916 d!121731))

(declare-fun d!121737 () Bool)

(assert (=> d!121737 (containsKey!508 (t!30699 l!1036) key!271)))

(declare-fun lt!449472 () Unit!33244)

(declare-fun choose!1678 (List!21690 (_ BitVec 64)) Unit!33244)

(assert (=> d!121737 (= lt!449472 (choose!1678 (t!30699 l!1036) key!271))))

(declare-fun e!572772 () Bool)

(assert (=> d!121737 e!572772))

(declare-fun res!682745 () Bool)

(assert (=> d!121737 (=> (not res!682745) (not e!572772))))

(assert (=> d!121737 (= res!682745 (isStrictlySorted!643 (t!30699 l!1036)))))

(assert (=> d!121737 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!27 (t!30699 l!1036) key!271) lt!449472)))

(declare-fun b!1017969 () Bool)

(assert (=> b!1017969 (= e!572772 (isDefined!428 (getValueByKey!583 (t!30699 l!1036) key!271)))))

(assert (= (and d!121737 res!682745) b!1017969))

(assert (=> d!121737 m!939187))

(declare-fun m!939205 () Bool)

(assert (=> d!121737 m!939205))

(assert (=> d!121737 m!939179))

(assert (=> b!1017969 m!939173))

(assert (=> b!1017969 m!939173))

(assert (=> b!1017969 m!939175))

(assert (=> b!1017916 d!121737))

(declare-fun d!121741 () Bool)

(declare-fun isEmpty!921 (Option!634) Bool)

(assert (=> d!121741 (= (isDefined!428 (getValueByKey!583 (t!30699 l!1036) key!271)) (not (isEmpty!921 (getValueByKey!583 (t!30699 l!1036) key!271))))))

(declare-fun bs!29635 () Bool)

(assert (= bs!29635 d!121741))

(assert (=> bs!29635 m!939173))

(declare-fun m!939209 () Bool)

(assert (=> bs!29635 m!939209))

(assert (=> b!1017911 d!121741))

(declare-fun b!1018000 () Bool)

(declare-fun e!572794 () Option!634)

(declare-fun e!572795 () Option!634)

(assert (=> b!1018000 (= e!572794 e!572795)))

(declare-fun c!103065 () Bool)

(assert (=> b!1018000 (= c!103065 (and (is-Cons!21686 (t!30699 l!1036)) (not (= (_1!7716 (h!22884 (t!30699 l!1036))) key!271))))))

(declare-fun b!1018002 () Bool)

(assert (=> b!1018002 (= e!572795 None!632)))

(declare-fun d!121747 () Bool)

(declare-fun c!103064 () Bool)

(assert (=> d!121747 (= c!103064 (and (is-Cons!21686 (t!30699 l!1036)) (= (_1!7716 (h!22884 (t!30699 l!1036))) key!271)))))

(assert (=> d!121747 (= (getValueByKey!583 (t!30699 l!1036) key!271) e!572794)))

(declare-fun b!1017999 () Bool)

(assert (=> b!1017999 (= e!572794 (Some!633 (_2!7716 (h!22884 (t!30699 l!1036)))))))

(declare-fun b!1018001 () Bool)

(assert (=> b!1018001 (= e!572795 (getValueByKey!583 (t!30699 (t!30699 l!1036)) key!271))))

(assert (= (and d!121747 c!103064) b!1017999))

(assert (= (and d!121747 (not c!103064)) b!1018000))

(assert (= (and b!1018000 c!103065) b!1018001))

(assert (= (and b!1018000 (not c!103065)) b!1018002))

(declare-fun m!939215 () Bool)

(assert (=> b!1018001 m!939215))

(assert (=> b!1017911 d!121747))

(declare-fun d!121753 () Bool)

(declare-fun res!682769 () Bool)

(declare-fun e!572807 () Bool)

(assert (=> d!121753 (=> res!682769 e!572807)))

(assert (=> d!121753 (= res!682769 (or (is-Nil!21687 l!1036) (is-Nil!21687 (t!30699 l!1036))))))

(assert (=> d!121753 (= (isStrictlySorted!643 l!1036) e!572807)))

(declare-fun b!1018014 () Bool)

(declare-fun e!572808 () Bool)

(assert (=> b!1018014 (= e!572807 e!572808)))

(declare-fun res!682770 () Bool)

(assert (=> b!1018014 (=> (not res!682770) (not e!572808))))

(assert (=> b!1018014 (= res!682770 (bvslt (_1!7716 (h!22884 l!1036)) (_1!7716 (h!22884 (t!30699 l!1036)))))))

(declare-fun b!1018015 () Bool)

(assert (=> b!1018015 (= e!572808 (isStrictlySorted!643 (t!30699 l!1036)))))

(assert (= (and d!121753 (not res!682769)) b!1018014))

(assert (= (and b!1018014 res!682770) b!1018015))

(assert (=> b!1018015 m!939179))

(assert (=> start!88548 d!121753))

(declare-fun d!121759 () Bool)

(declare-fun res!682771 () Bool)

(declare-fun e!572809 () Bool)

(assert (=> d!121759 (=> res!682771 e!572809)))

(assert (=> d!121759 (= res!682771 (or (is-Nil!21687 (t!30699 l!1036)) (is-Nil!21687 (t!30699 (t!30699 l!1036)))))))

(assert (=> d!121759 (= (isStrictlySorted!643 (t!30699 l!1036)) e!572809)))

(declare-fun b!1018016 () Bool)

(declare-fun e!572810 () Bool)

(assert (=> b!1018016 (= e!572809 e!572810)))

(declare-fun res!682772 () Bool)

(assert (=> b!1018016 (=> (not res!682772) (not e!572810))))

(assert (=> b!1018016 (= res!682772 (bvslt (_1!7716 (h!22884 (t!30699 l!1036))) (_1!7716 (h!22884 (t!30699 (t!30699 l!1036))))))))

(declare-fun b!1018017 () Bool)

(assert (=> b!1018017 (= e!572810 (isStrictlySorted!643 (t!30699 (t!30699 l!1036))))))

(assert (= (and d!121759 (not res!682771)) b!1018016))

(assert (= (and b!1018016 res!682772) b!1018017))

(declare-fun m!939219 () Bool)

(assert (=> b!1018017 m!939219))

(assert (=> b!1017912 d!121759))

(declare-fun d!121761 () Bool)

(assert (=> d!121761 (= (isDefined!428 (getValueByKey!583 l!1036 key!271)) (not (isEmpty!921 (getValueByKey!583 l!1036 key!271))))))

(declare-fun bs!29636 () Bool)

(assert (= bs!29636 d!121761))

(assert (=> bs!29636 m!939181))

(declare-fun m!939221 () Bool)

(assert (=> bs!29636 m!939221))

(assert (=> b!1017914 d!121761))

(declare-fun b!1018019 () Bool)

(declare-fun e!572811 () Option!634)

(declare-fun e!572812 () Option!634)

(assert (=> b!1018019 (= e!572811 e!572812)))

(declare-fun c!103067 () Bool)

(assert (=> b!1018019 (= c!103067 (and (is-Cons!21686 l!1036) (not (= (_1!7716 (h!22884 l!1036)) key!271))))))

(declare-fun b!1018021 () Bool)

(assert (=> b!1018021 (= e!572812 None!632)))

(declare-fun d!121763 () Bool)

(declare-fun c!103066 () Bool)

(assert (=> d!121763 (= c!103066 (and (is-Cons!21686 l!1036) (= (_1!7716 (h!22884 l!1036)) key!271)))))

(assert (=> d!121763 (= (getValueByKey!583 l!1036 key!271) e!572811)))

(declare-fun b!1018018 () Bool)

(assert (=> b!1018018 (= e!572811 (Some!633 (_2!7716 (h!22884 l!1036))))))

(declare-fun b!1018020 () Bool)

(assert (=> b!1018020 (= e!572812 (getValueByKey!583 (t!30699 l!1036) key!271))))

(assert (= (and d!121763 c!103066) b!1018018))

(assert (= (and d!121763 (not c!103066)) b!1018019))

(assert (= (and b!1018019 c!103067) b!1018020))

(assert (= (and b!1018019 (not c!103067)) b!1018021))

(assert (=> b!1018020 m!939173))

(assert (=> b!1017914 d!121763))

(declare-fun b!1018031 () Bool)

(declare-fun e!572818 () Bool)

(declare-fun tp!70967 () Bool)

(assert (=> b!1018031 (= e!572818 (and tp_is_empty!23675 tp!70967))))

(assert (=> b!1017915 (= tp!70961 e!572818)))

(assert (= (and b!1017915 (is-Cons!21686 (t!30699 l!1036))) b!1018031))

(push 1)

(assert (not b!1017954))

(assert (not b!1017948))

(assert (not d!121761))

(assert (not b!1017969))

(assert (not d!121737))

(assert (not b!1018015))

(assert (not d!121741))

(assert (not b!1018001))

(assert (not b!1018017))

(assert (not b!1018031))

(assert tp_is_empty!23675)

(assert (not b!1018020))

(check-sat)

(pop 1)

(push 1)

(check-sat)

