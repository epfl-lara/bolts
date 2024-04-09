; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88514 () Bool)

(assert start!88514)

(declare-fun b!1017710 () Bool)

(declare-fun res!682614 () Bool)

(declare-fun e!572631 () Bool)

(assert (=> b!1017710 (=> (not res!682614) (not e!572631))))

(declare-datatypes ((B!1598 0))(
  ( (B!1599 (val!11883 Int)) )
))
(declare-datatypes ((tuple2!15402 0))(
  ( (tuple2!15403 (_1!7711 (_ BitVec 64)) (_2!7711 B!1598)) )
))
(declare-datatypes ((List!21685 0))(
  ( (Nil!21682) (Cons!21681 (h!22879 tuple2!15402) (t!30694 List!21685)) )
))
(declare-fun l!1036 () List!21685)

(declare-fun isStrictlySorted!638 (List!21685) Bool)

(assert (=> b!1017710 (= res!682614 (isStrictlySorted!638 (t!30694 l!1036)))))

(declare-fun res!682617 () Bool)

(assert (=> start!88514 (=> (not res!682617) (not e!572631))))

(assert (=> start!88514 (= res!682617 (isStrictlySorted!638 l!1036))))

(assert (=> start!88514 e!572631))

(declare-fun e!572632 () Bool)

(assert (=> start!88514 e!572632))

(assert (=> start!88514 true))

(declare-fun b!1017711 () Bool)

(declare-fun ListPrimitiveSize!130 (List!21685) Int)

(assert (=> b!1017711 (= e!572631 (>= (ListPrimitiveSize!130 (t!30694 l!1036)) (ListPrimitiveSize!130 l!1036)))))

(declare-fun b!1017712 () Bool)

(declare-fun res!682615 () Bool)

(assert (=> b!1017712 (=> (not res!682615) (not e!572631))))

(declare-fun key!271 () (_ BitVec 64))

(declare-datatypes ((Option!629 0))(
  ( (Some!628 (v!14477 B!1598)) (None!627) )
))
(declare-fun isDefined!423 (Option!629) Bool)

(declare-fun getValueByKey!578 (List!21685 (_ BitVec 64)) Option!629)

(assert (=> b!1017712 (= res!682615 (isDefined!423 (getValueByKey!578 l!1036 key!271)))))

(declare-fun b!1017713 () Bool)

(declare-fun res!682616 () Bool)

(assert (=> b!1017713 (=> (not res!682616) (not e!572631))))

(assert (=> b!1017713 (= res!682616 (isDefined!423 (getValueByKey!578 (t!30694 l!1036) key!271)))))

(declare-fun b!1017714 () Bool)

(declare-fun tp_is_empty!23665 () Bool)

(declare-fun tp!70937 () Bool)

(assert (=> b!1017714 (= e!572632 (and tp_is_empty!23665 tp!70937))))

(declare-fun b!1017715 () Bool)

(declare-fun res!682613 () Bool)

(assert (=> b!1017715 (=> (not res!682613) (not e!572631))))

(assert (=> b!1017715 (= res!682613 (and (is-Cons!21681 l!1036) (not (= (_1!7711 (h!22879 l!1036)) key!271))))))

(assert (= (and start!88514 res!682617) b!1017712))

(assert (= (and b!1017712 res!682615) b!1017715))

(assert (= (and b!1017715 res!682613) b!1017710))

(assert (= (and b!1017710 res!682614) b!1017713))

(assert (= (and b!1017713 res!682616) b!1017711))

(assert (= (and start!88514 (is-Cons!21681 l!1036)) b!1017714))

(declare-fun m!939059 () Bool)

(assert (=> b!1017712 m!939059))

(assert (=> b!1017712 m!939059))

(declare-fun m!939061 () Bool)

(assert (=> b!1017712 m!939061))

(declare-fun m!939063 () Bool)

(assert (=> b!1017710 m!939063))

(declare-fun m!939065 () Bool)

(assert (=> start!88514 m!939065))

(declare-fun m!939067 () Bool)

(assert (=> b!1017713 m!939067))

(assert (=> b!1017713 m!939067))

(declare-fun m!939069 () Bool)

(assert (=> b!1017713 m!939069))

(declare-fun m!939071 () Bool)

(assert (=> b!1017711 m!939071))

(declare-fun m!939073 () Bool)

(assert (=> b!1017711 m!939073))

(push 1)

(assert (not b!1017710))

(assert (not b!1017712))

(assert (not b!1017714))

(assert tp_is_empty!23665)

(assert (not b!1017713))

(assert (not start!88514))

(assert (not b!1017711))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121671 () Bool)

(declare-fun lt!449455 () Int)

(assert (=> d!121671 (>= lt!449455 0)))

(declare-fun e!572661 () Int)

(assert (=> d!121671 (= lt!449455 e!572661)))

(declare-fun c!103022 () Bool)

(assert (=> d!121671 (= c!103022 (is-Nil!21682 (t!30694 l!1036)))))

(assert (=> d!121671 (= (ListPrimitiveSize!130 (t!30694 l!1036)) lt!449455)))

(declare-fun b!1017780 () Bool)

(assert (=> b!1017780 (= e!572661 0)))

(declare-fun b!1017781 () Bool)

(assert (=> b!1017781 (= e!572661 (+ 1 (ListPrimitiveSize!130 (t!30694 (t!30694 l!1036)))))))

(assert (= (and d!121671 c!103022) b!1017780))

(assert (= (and d!121671 (not c!103022)) b!1017781))

(declare-fun m!939113 () Bool)

(assert (=> b!1017781 m!939113))

(assert (=> b!1017711 d!121671))

(declare-fun d!121679 () Bool)

(declare-fun lt!449456 () Int)

(assert (=> d!121679 (>= lt!449456 0)))

(declare-fun e!572662 () Int)

(assert (=> d!121679 (= lt!449456 e!572662)))

(declare-fun c!103023 () Bool)

(assert (=> d!121679 (= c!103023 (is-Nil!21682 l!1036))))

(assert (=> d!121679 (= (ListPrimitiveSize!130 l!1036) lt!449456)))

(declare-fun b!1017782 () Bool)

(assert (=> b!1017782 (= e!572662 0)))

(declare-fun b!1017783 () Bool)

(assert (=> b!1017783 (= e!572662 (+ 1 (ListPrimitiveSize!130 (t!30694 l!1036))))))

(assert (= (and d!121679 c!103023) b!1017782))

(assert (= (and d!121679 (not c!103023)) b!1017783))

(assert (=> b!1017783 m!939071))

(assert (=> b!1017711 d!121679))

(declare-fun d!121681 () Bool)

(declare-fun isEmpty!917 (Option!629) Bool)

(assert (=> d!121681 (= (isDefined!423 (getValueByKey!578 l!1036 key!271)) (not (isEmpty!917 (getValueByKey!578 l!1036 key!271))))))

(declare-fun bs!29624 () Bool)

(assert (= bs!29624 d!121681))

(assert (=> bs!29624 m!939059))

(declare-fun m!939115 () Bool)

(assert (=> bs!29624 m!939115))

(assert (=> b!1017712 d!121681))

(declare-fun b!1017816 () Bool)

(declare-fun e!572684 () Option!629)

(assert (=> b!1017816 (= e!572684 (Some!628 (_2!7711 (h!22879 l!1036))))))

(declare-fun d!121685 () Bool)

(declare-fun c!103035 () Bool)

(assert (=> d!121685 (= c!103035 (and (is-Cons!21681 l!1036) (= (_1!7711 (h!22879 l!1036)) key!271)))))

(assert (=> d!121685 (= (getValueByKey!578 l!1036 key!271) e!572684)))

(declare-fun b!1017818 () Bool)

(declare-fun e!572685 () Option!629)

(assert (=> b!1017818 (= e!572685 (getValueByKey!578 (t!30694 l!1036) key!271))))

(declare-fun b!1017817 () Bool)

(assert (=> b!1017817 (= e!572684 e!572685)))

(declare-fun c!103036 () Bool)

(assert (=> b!1017817 (= c!103036 (and (is-Cons!21681 l!1036) (not (= (_1!7711 (h!22879 l!1036)) key!271))))))

(declare-fun b!1017819 () Bool)

(assert (=> b!1017819 (= e!572685 None!627)))

(assert (= (and d!121685 c!103035) b!1017816))

(assert (= (and d!121685 (not c!103035)) b!1017817))

(assert (= (and b!1017817 c!103036) b!1017818))

(assert (= (and b!1017817 (not c!103036)) b!1017819))

(assert (=> b!1017818 m!939067))

(assert (=> b!1017712 d!121685))

(declare-fun d!121695 () Bool)

(assert (=> d!121695 (= (isDefined!423 (getValueByKey!578 (t!30694 l!1036) key!271)) (not (isEmpty!917 (getValueByKey!578 (t!30694 l!1036) key!271))))))

(declare-fun bs!29627 () Bool)

(assert (= bs!29627 d!121695))

(assert (=> bs!29627 m!939067))

(declare-fun m!939125 () Bool)

(assert (=> bs!29627 m!939125))

(assert (=> b!1017713 d!121695))

(declare-fun b!1017830 () Bool)

(declare-fun e!572691 () Option!629)

(assert (=> b!1017830 (= e!572691 (Some!628 (_2!7711 (h!22879 (t!30694 l!1036)))))))

(declare-fun d!121701 () Bool)

(declare-fun c!103042 () Bool)

(assert (=> d!121701 (= c!103042 (and (is-Cons!21681 (t!30694 l!1036)) (= (_1!7711 (h!22879 (t!30694 l!1036))) key!271)))))

(assert (=> d!121701 (= (getValueByKey!578 (t!30694 l!1036) key!271) e!572691)))

(declare-fun b!1017832 () Bool)

(declare-fun e!572692 () Option!629)

(assert (=> b!1017832 (= e!572692 (getValueByKey!578 (t!30694 (t!30694 l!1036)) key!271))))

(declare-fun b!1017831 () Bool)

(assert (=> b!1017831 (= e!572691 e!572692)))

(declare-fun c!103043 () Bool)

(assert (=> b!1017831 (= c!103043 (and (is-Cons!21681 (t!30694 l!1036)) (not (= (_1!7711 (h!22879 (t!30694 l!1036))) key!271))))))

(declare-fun b!1017833 () Bool)

(assert (=> b!1017833 (= e!572692 None!627)))

(assert (= (and d!121701 c!103042) b!1017830))

(assert (= (and d!121701 (not c!103042)) b!1017831))

(assert (= (and b!1017831 c!103043) b!1017832))

(assert (= (and b!1017831 (not c!103043)) b!1017833))

(declare-fun m!939129 () Bool)

(assert (=> b!1017832 m!939129))

(assert (=> b!1017713 d!121701))

(declare-fun d!121705 () Bool)

(declare-fun res!682668 () Bool)

(declare-fun e!572707 () Bool)

(assert (=> d!121705 (=> res!682668 e!572707)))

(assert (=> d!121705 (= res!682668 (or (is-Nil!21682 l!1036) (is-Nil!21682 (t!30694 l!1036))))))

(assert (=> d!121705 (= (isStrictlySorted!638 l!1036) e!572707)))

(declare-fun b!1017854 () Bool)

(declare-fun e!572708 () Bool)

(assert (=> b!1017854 (= e!572707 e!572708)))

(declare-fun res!682669 () Bool)

(assert (=> b!1017854 (=> (not res!682669) (not e!572708))))

(assert (=> b!1017854 (= res!682669 (bvslt (_1!7711 (h!22879 l!1036)) (_1!7711 (h!22879 (t!30694 l!1036)))))))

(declare-fun b!1017855 () Bool)

(assert (=> b!1017855 (= e!572708 (isStrictlySorted!638 (t!30694 l!1036)))))

(assert (= (and d!121705 (not res!682668)) b!1017854))

(assert (= (and b!1017854 res!682669) b!1017855))

(assert (=> b!1017855 m!939063))

(assert (=> start!88514 d!121705))

(declare-fun d!121711 () Bool)

(declare-fun res!682670 () Bool)

(declare-fun e!572709 () Bool)

(assert (=> d!121711 (=> res!682670 e!572709)))

(assert (=> d!121711 (= res!682670 (or (is-Nil!21682 (t!30694 l!1036)) (is-Nil!21682 (t!30694 (t!30694 l!1036)))))))

(assert (=> d!121711 (= (isStrictlySorted!638 (t!30694 l!1036)) e!572709)))

(declare-fun b!1017856 () Bool)

(declare-fun e!572710 () Bool)

(assert (=> b!1017856 (= e!572709 e!572710)))

(declare-fun res!682671 () Bool)

(assert (=> b!1017856 (=> (not res!682671) (not e!572710))))

(assert (=> b!1017856 (= res!682671 (bvslt (_1!7711 (h!22879 (t!30694 l!1036))) (_1!7711 (h!22879 (t!30694 (t!30694 l!1036))))))))

(declare-fun b!1017857 () Bool)

(assert (=> b!1017857 (= e!572710 (isStrictlySorted!638 (t!30694 (t!30694 l!1036))))))

(assert (= (and d!121711 (not res!682670)) b!1017856))

(assert (= (and b!1017856 res!682671) b!1017857))

(declare-fun m!939135 () Bool)

(assert (=> b!1017857 m!939135))

(assert (=> b!1017710 d!121711))

(declare-fun b!1017862 () Bool)

(declare-fun e!572713 () Bool)

(declare-fun tp!70952 () Bool)

(assert (=> b!1017862 (= e!572713 (and tp_is_empty!23665 tp!70952))))

(assert (=> b!1017714 (= tp!70937 e!572713)))

(assert (= (and b!1017714 (is-Cons!21681 (t!30694 l!1036))) b!1017862))

(push 1)

