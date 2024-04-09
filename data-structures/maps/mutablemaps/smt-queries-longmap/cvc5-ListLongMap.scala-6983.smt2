; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88544 () Bool)

(assert start!88544)

(declare-fun b!1017875 () Bool)

(declare-fun e!572718 () Bool)

(declare-fun tp_is_empty!23671 () Bool)

(declare-fun tp!70955 () Bool)

(assert (=> b!1017875 (= e!572718 (and tp_is_empty!23671 tp!70955))))

(declare-fun b!1017876 () Bool)

(declare-fun e!572719 () Bool)

(declare-datatypes ((B!1604 0))(
  ( (B!1605 (val!11886 Int)) )
))
(declare-datatypes ((tuple2!15408 0))(
  ( (tuple2!15409 (_1!7714 (_ BitVec 64)) (_2!7714 B!1604)) )
))
(declare-datatypes ((List!21688 0))(
  ( (Nil!21685) (Cons!21684 (h!22882 tuple2!15408) (t!30697 List!21688)) )
))
(declare-fun l!1036 () List!21688)

(declare-fun key!271 () (_ BitVec 64))

(declare-fun containsKey!506 (List!21688 (_ BitVec 64)) Bool)

(assert (=> b!1017876 (= e!572719 (not (containsKey!506 l!1036 key!271)))))

(assert (=> b!1017876 (containsKey!506 (t!30697 l!1036) key!271)))

(declare-datatypes ((Unit!33240 0))(
  ( (Unit!33241) )
))
(declare-fun lt!449463 () Unit!33240)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!25 (List!21688 (_ BitVec 64)) Unit!33240)

(assert (=> b!1017876 (= lt!449463 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!25 (t!30697 l!1036) key!271))))

(declare-fun b!1017877 () Bool)

(declare-fun res!682686 () Bool)

(assert (=> b!1017877 (=> (not res!682686) (not e!572719))))

(declare-datatypes ((Option!632 0))(
  ( (Some!631 (v!14480 B!1604)) (None!630) )
))
(declare-fun isDefined!426 (Option!632) Bool)

(declare-fun getValueByKey!581 (List!21688 (_ BitVec 64)) Option!632)

(assert (=> b!1017877 (= res!682686 (isDefined!426 (getValueByKey!581 l!1036 key!271)))))

(declare-fun b!1017878 () Bool)

(declare-fun res!682683 () Bool)

(assert (=> b!1017878 (=> (not res!682683) (not e!572719))))

(declare-fun isStrictlySorted!641 (List!21688) Bool)

(assert (=> b!1017878 (= res!682683 (isStrictlySorted!641 (t!30697 l!1036)))))

(declare-fun b!1017879 () Bool)

(declare-fun res!682685 () Bool)

(assert (=> b!1017879 (=> (not res!682685) (not e!572719))))

(assert (=> b!1017879 (= res!682685 (isDefined!426 (getValueByKey!581 (t!30697 l!1036) key!271)))))

(declare-fun b!1017880 () Bool)

(declare-fun res!682682 () Bool)

(assert (=> b!1017880 (=> (not res!682682) (not e!572719))))

(assert (=> b!1017880 (= res!682682 (and (is-Cons!21684 l!1036) (not (= (_1!7714 (h!22882 l!1036)) key!271))))))

(declare-fun res!682684 () Bool)

(assert (=> start!88544 (=> (not res!682684) (not e!572719))))

(assert (=> start!88544 (= res!682684 (isStrictlySorted!641 l!1036))))

(assert (=> start!88544 e!572719))

(assert (=> start!88544 e!572718))

(assert (=> start!88544 true))

(assert (= (and start!88544 res!682684) b!1017877))

(assert (= (and b!1017877 res!682686) b!1017880))

(assert (= (and b!1017880 res!682682) b!1017878))

(assert (= (and b!1017878 res!682683) b!1017879))

(assert (= (and b!1017879 res!682685) b!1017876))

(assert (= (and start!88544 (is-Cons!21684 l!1036)) b!1017875))

(declare-fun m!939137 () Bool)

(assert (=> b!1017877 m!939137))

(assert (=> b!1017877 m!939137))

(declare-fun m!939139 () Bool)

(assert (=> b!1017877 m!939139))

(declare-fun m!939141 () Bool)

(assert (=> b!1017879 m!939141))

(assert (=> b!1017879 m!939141))

(declare-fun m!939143 () Bool)

(assert (=> b!1017879 m!939143))

(declare-fun m!939145 () Bool)

(assert (=> b!1017878 m!939145))

(declare-fun m!939147 () Bool)

(assert (=> b!1017876 m!939147))

(declare-fun m!939149 () Bool)

(assert (=> b!1017876 m!939149))

(declare-fun m!939151 () Bool)

(assert (=> b!1017876 m!939151))

(declare-fun m!939153 () Bool)

(assert (=> start!88544 m!939153))

(push 1)

(assert (not b!1017876))

(assert (not start!88544))

(assert (not b!1017879))

(assert (not b!1017878))

(assert (not b!1017877))

(assert tp_is_empty!23671)

(assert (not b!1017875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121723 () Bool)

(declare-fun res!682733 () Bool)

(declare-fun e!572756 () Bool)

(assert (=> d!121723 (=> res!682733 e!572756)))

(assert (=> d!121723 (= res!682733 (or (is-Nil!21685 (t!30697 l!1036)) (is-Nil!21685 (t!30697 (t!30697 l!1036)))))))

(assert (=> d!121723 (= (isStrictlySorted!641 (t!30697 l!1036)) e!572756)))

(declare-fun b!1017949 () Bool)

(declare-fun e!572757 () Bool)

(assert (=> b!1017949 (= e!572756 e!572757)))

(declare-fun res!682734 () Bool)

(assert (=> b!1017949 (=> (not res!682734) (not e!572757))))

(assert (=> b!1017949 (= res!682734 (bvslt (_1!7714 (h!22882 (t!30697 l!1036))) (_1!7714 (h!22882 (t!30697 (t!30697 l!1036))))))))

(declare-fun b!1017950 () Bool)

(assert (=> b!1017950 (= e!572757 (isStrictlySorted!641 (t!30697 (t!30697 l!1036))))))

(assert (= (and d!121723 (not res!682733)) b!1017949))

(assert (= (and b!1017949 res!682734) b!1017950))

(declare-fun m!939199 () Bool)

(assert (=> b!1017950 m!939199))

(assert (=> b!1017878 d!121723))

(declare-fun d!121733 () Bool)

(declare-fun isEmpty!920 (Option!632) Bool)

(assert (=> d!121733 (= (isDefined!426 (getValueByKey!581 (t!30697 l!1036) key!271)) (not (isEmpty!920 (getValueByKey!581 (t!30697 l!1036) key!271))))))

(declare-fun bs!29634 () Bool)

(assert (= bs!29634 d!121733))

(assert (=> bs!29634 m!939141))

(declare-fun m!939203 () Bool)

(assert (=> bs!29634 m!939203))

(assert (=> b!1017879 d!121733))

(declare-fun b!1017976 () Bool)

(declare-fun e!572778 () Option!632)

(assert (=> b!1017976 (= e!572778 (getValueByKey!581 (t!30697 (t!30697 l!1036)) key!271))))

(declare-fun d!121739 () Bool)

(declare-fun c!103058 () Bool)

(assert (=> d!121739 (= c!103058 (and (is-Cons!21684 (t!30697 l!1036)) (= (_1!7714 (h!22882 (t!30697 l!1036))) key!271)))))

(declare-fun e!572777 () Option!632)

(assert (=> d!121739 (= (getValueByKey!581 (t!30697 l!1036) key!271) e!572777)))

(declare-fun b!1017977 () Bool)

(assert (=> b!1017977 (= e!572778 None!630)))

(declare-fun b!1017975 () Bool)

(assert (=> b!1017975 (= e!572777 e!572778)))

(declare-fun c!103059 () Bool)

(assert (=> b!1017975 (= c!103059 (and (is-Cons!21684 (t!30697 l!1036)) (not (= (_1!7714 (h!22882 (t!30697 l!1036))) key!271))))))

(declare-fun b!1017974 () Bool)

(assert (=> b!1017974 (= e!572777 (Some!631 (_2!7714 (h!22882 (t!30697 l!1036)))))))

(assert (= (and d!121739 c!103058) b!1017974))

(assert (= (and d!121739 (not c!103058)) b!1017975))

(assert (= (and b!1017975 c!103059) b!1017976))

(assert (= (and b!1017975 (not c!103059)) b!1017977))

(declare-fun m!939211 () Bool)

(assert (=> b!1017976 m!939211))

(assert (=> b!1017879 d!121739))

(declare-fun d!121749 () Bool)

(declare-fun res!682750 () Bool)

(declare-fun e!572779 () Bool)

(assert (=> d!121749 (=> res!682750 e!572779)))

(assert (=> d!121749 (= res!682750 (or (is-Nil!21685 l!1036) (is-Nil!21685 (t!30697 l!1036))))))

(assert (=> d!121749 (= (isStrictlySorted!641 l!1036) e!572779)))

(declare-fun b!1017978 () Bool)

(declare-fun e!572780 () Bool)

(assert (=> b!1017978 (= e!572779 e!572780)))

(declare-fun res!682751 () Bool)

(assert (=> b!1017978 (=> (not res!682751) (not e!572780))))

(assert (=> b!1017978 (= res!682751 (bvslt (_1!7714 (h!22882 l!1036)) (_1!7714 (h!22882 (t!30697 l!1036)))))))

(declare-fun b!1017979 () Bool)

(assert (=> b!1017979 (= e!572780 (isStrictlySorted!641 (t!30697 l!1036)))))

(assert (= (and d!121749 (not res!682750)) b!1017978))

(assert (= (and b!1017978 res!682751) b!1017979))

(assert (=> b!1017979 m!939145))

(assert (=> start!88544 d!121749))

(declare-fun d!121751 () Bool)

(declare-fun res!682759 () Bool)

(declare-fun e!572797 () Bool)

(assert (=> d!121751 (=> res!682759 e!572797)))

(assert (=> d!121751 (= res!682759 (and (is-Cons!21684 l!1036) (= (_1!7714 (h!22882 l!1036)) key!271)))))

(assert (=> d!121751 (= (containsKey!506 l!1036 key!271) e!572797)))

(declare-fun b!1018004 () Bool)

(declare-fun e!572798 () Bool)

(assert (=> b!1018004 (= e!572797 e!572798)))

(declare-fun res!682760 () Bool)

(assert (=> b!1018004 (=> (not res!682760) (not e!572798))))

(assert (=> b!1018004 (= res!682760 (and (or (not (is-Cons!21684 l!1036)) (bvsle (_1!7714 (h!22882 l!1036)) key!271)) (is-Cons!21684 l!1036) (bvslt (_1!7714 (h!22882 l!1036)) key!271)))))

(declare-fun b!1018005 () Bool)

(assert (=> b!1018005 (= e!572798 (containsKey!506 (t!30697 l!1036) key!271))))

(assert (= (and d!121751 (not res!682759)) b!1018004))

(assert (= (and b!1018004 res!682760) b!1018005))

(assert (=> b!1018005 m!939149))

(assert (=> b!1017876 d!121751))

(declare-fun d!121755 () Bool)

(declare-fun res!682761 () Bool)

(declare-fun e!572799 () Bool)

(assert (=> d!121755 (=> res!682761 e!572799)))

(assert (=> d!121755 (= res!682761 (and (is-Cons!21684 (t!30697 l!1036)) (= (_1!7714 (h!22882 (t!30697 l!1036))) key!271)))))

(assert (=> d!121755 (= (containsKey!506 (t!30697 l!1036) key!271) e!572799)))

(declare-fun b!1018006 () Bool)

(declare-fun e!572800 () Bool)

(assert (=> b!1018006 (= e!572799 e!572800)))

(declare-fun res!682762 () Bool)

(assert (=> b!1018006 (=> (not res!682762) (not e!572800))))

(assert (=> b!1018006 (= res!682762 (and (or (not (is-Cons!21684 (t!30697 l!1036))) (bvsle (_1!7714 (h!22882 (t!30697 l!1036))) key!271)) (is-Cons!21684 (t!30697 l!1036)) (bvslt (_1!7714 (h!22882 (t!30697 l!1036))) key!271)))))

(declare-fun b!1018007 () Bool)

(assert (=> b!1018007 (= e!572800 (containsKey!506 (t!30697 (t!30697 l!1036)) key!271))))

(assert (= (and d!121755 (not res!682761)) b!1018006))

(assert (= (and b!1018006 res!682762) b!1018007))

(declare-fun m!939217 () Bool)

(assert (=> b!1018007 m!939217))

(assert (=> b!1017876 d!121755))

(declare-fun d!121757 () Bool)

(assert (=> d!121757 (containsKey!506 (t!30697 l!1036) key!271)))

(declare-fun lt!449478 () Unit!33240)

(declare-fun choose!1680 (List!21688 (_ BitVec 64)) Unit!33240)

(assert (=> d!121757 (= lt!449478 (choose!1680 (t!30697 l!1036) key!271))))

(declare-fun e!572813 () Bool)

(assert (=> d!121757 e!572813))

(declare-fun res!682773 () Bool)

(assert (=> d!121757 (=> (not res!682773) (not e!572813))))

(assert (=> d!121757 (= res!682773 (isStrictlySorted!641 (t!30697 l!1036)))))

(assert (=> d!121757 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!25 (t!30697 l!1036) key!271) lt!449478)))

(declare-fun b!1018022 () Bool)

(assert (=> b!1018022 (= e!572813 (isDefined!426 (getValueByKey!581 (t!30697 l!1036) key!271)))))

(assert (= (and d!121757 res!682773) b!1018022))

(assert (=> d!121757 m!939149))

(declare-fun m!939223 () Bool)

(assert (=> d!121757 m!939223))

(assert (=> d!121757 m!939145))

(assert (=> b!1018022 m!939141))

(assert (=> b!1018022 m!939141))

(assert (=> b!1018022 m!939143))

(assert (=> b!1017876 d!121757))

(declare-fun d!121765 () Bool)

(assert (=> d!121765 (= (isDefined!426 (getValueByKey!581 l!1036 key!271)) (not (isEmpty!920 (getValueByKey!581 l!1036 key!271))))))

(declare-fun bs!29637 () Bool)

(assert (= bs!29637 d!121765))

(assert (=> bs!29637 m!939137))

(declare-fun m!939225 () Bool)

(assert (=> bs!29637 m!939225))

(assert (=> b!1017877 d!121765))

(declare-fun b!1018029 () Bool)

(declare-fun e!572817 () Option!632)

(assert (=> b!1018029 (= e!572817 (getValueByKey!581 (t!30697 l!1036) key!271))))

(declare-fun d!121767 () Bool)

(declare-fun c!103068 () Bool)

(assert (=> d!121767 (= c!103068 (and (is-Cons!21684 l!1036) (= (_1!7714 (h!22882 l!1036)) key!271)))))

(declare-fun e!572816 () Option!632)

(assert (=> d!121767 (= (getValueByKey!581 l!1036 key!271) e!572816)))

(declare-fun b!1018030 () Bool)

(assert (=> b!1018030 (= e!572817 None!630)))

(declare-fun b!1018028 () Bool)

(assert (=> b!1018028 (= e!572816 e!572817)))

(declare-fun c!103069 () Bool)

(assert (=> b!1018028 (= c!103069 (and (is-Cons!21684 l!1036) (not (= (_1!7714 (h!22882 l!1036)) key!271))))))

(declare-fun b!1018027 () Bool)

(assert (=> b!1018027 (= e!572816 (Some!631 (_2!7714 (h!22882 l!1036))))))

(assert (= (and d!121767 c!103068) b!1018027))

(assert (= (and d!121767 (not c!103068)) b!1018028))

(assert (= (and b!1018028 c!103069) b!1018029))

(assert (= (and b!1018028 (not c!103069)) b!1018030))

(assert (=> b!1018029 m!939141))

(assert (=> b!1017877 d!121767))

(declare-fun b!1018036 () Bool)

(declare-fun e!572821 () Bool)

(declare-fun tp!70970 () Bool)

(assert (=> b!1018036 (= e!572821 (and tp_is_empty!23671 tp!70970))))

(assert (=> b!1017875 (= tp!70955 e!572821)))

(assert (= (and b!1017875 (is-Cons!21684 (t!30697 l!1036))) b!1018036))

(push 1)

(assert (not b!1017979))

(assert (not d!121765))

(assert (not b!1018029))

(assert (not d!121733))

(assert (not b!1018022))

(assert (not d!121757))

(assert (not b!1017976))

(assert tp_is_empty!23671)

(assert (not b!1018007))

(assert (not b!1018005))

(assert (not b!1018036))

(assert (not b!1017950))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

