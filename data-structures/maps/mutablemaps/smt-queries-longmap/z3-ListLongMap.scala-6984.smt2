; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88582 () Bool)

(assert start!88582)

(declare-fun b!1018060 () Bool)

(declare-fun e!572832 () Bool)

(declare-fun tp_is_empty!23679 () Bool)

(declare-fun tp!70976 () Bool)

(assert (=> b!1018060 (= e!572832 (and tp_is_empty!23679 tp!70976))))

(declare-fun res!682791 () Bool)

(declare-fun e!572833 () Bool)

(assert (=> start!88582 (=> (not res!682791) (not e!572833))))

(declare-datatypes ((B!1612 0))(
  ( (B!1613 (val!11890 Int)) )
))
(declare-datatypes ((tuple2!15416 0))(
  ( (tuple2!15417 (_1!7718 (_ BitVec 64)) (_2!7718 B!1612)) )
))
(declare-datatypes ((List!21692 0))(
  ( (Nil!21689) (Cons!21688 (h!22886 tuple2!15416) (t!30701 List!21692)) )
))
(declare-fun l!1036 () List!21692)

(declare-fun isStrictlySorted!645 (List!21692) Bool)

(assert (=> start!88582 (= res!682791 (isStrictlySorted!645 l!1036))))

(assert (=> start!88582 e!572833))

(assert (=> start!88582 e!572832))

(assert (=> start!88582 true))

(declare-fun b!1018058 () Bool)

(declare-fun res!682789 () Bool)

(assert (=> b!1018058 (=> (not res!682789) (not e!572833))))

(declare-fun key!271 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1018058 (= res!682789 (or (not ((_ is Cons!21688) l!1036)) (= (_1!7718 (h!22886 l!1036)) key!271)))))

(declare-fun b!1018057 () Bool)

(declare-fun res!682790 () Bool)

(assert (=> b!1018057 (=> (not res!682790) (not e!572833))))

(declare-datatypes ((Option!636 0))(
  ( (Some!635 (v!14484 B!1612)) (None!634) )
))
(declare-fun isDefined!430 (Option!636) Bool)

(declare-fun getValueByKey!585 (List!21692 (_ BitVec 64)) Option!636)

(assert (=> b!1018057 (= res!682790 (isDefined!430 (getValueByKey!585 l!1036 key!271)))))

(declare-fun b!1018059 () Bool)

(declare-fun containsKey!510 (List!21692 (_ BitVec 64)) Bool)

(assert (=> b!1018059 (= e!572833 (not (containsKey!510 l!1036 key!271)))))

(assert (= (and start!88582 res!682791) b!1018057))

(assert (= (and b!1018057 res!682790) b!1018058))

(assert (= (and b!1018058 res!682789) b!1018059))

(assert (= (and start!88582 ((_ is Cons!21688) l!1036)) b!1018060))

(declare-fun m!939235 () Bool)

(assert (=> start!88582 m!939235))

(declare-fun m!939237 () Bool)

(assert (=> b!1018057 m!939237))

(assert (=> b!1018057 m!939237))

(declare-fun m!939239 () Bool)

(assert (=> b!1018057 m!939239))

(declare-fun m!939241 () Bool)

(assert (=> b!1018059 m!939241))

(check-sat tp_is_empty!23679 (not b!1018059) (not b!1018057) (not start!88582) (not b!1018060))
(check-sat)
(get-model)

(declare-fun d!121771 () Bool)

(declare-fun res!682805 () Bool)

(declare-fun e!572844 () Bool)

(assert (=> d!121771 (=> res!682805 e!572844)))

(assert (=> d!121771 (= res!682805 (and ((_ is Cons!21688) l!1036) (= (_1!7718 (h!22886 l!1036)) key!271)))))

(assert (=> d!121771 (= (containsKey!510 l!1036 key!271) e!572844)))

(declare-fun b!1018077 () Bool)

(declare-fun e!572845 () Bool)

(assert (=> b!1018077 (= e!572844 e!572845)))

(declare-fun res!682806 () Bool)

(assert (=> b!1018077 (=> (not res!682806) (not e!572845))))

(assert (=> b!1018077 (= res!682806 (and (or (not ((_ is Cons!21688) l!1036)) (bvsle (_1!7718 (h!22886 l!1036)) key!271)) ((_ is Cons!21688) l!1036) (bvslt (_1!7718 (h!22886 l!1036)) key!271)))))

(declare-fun b!1018078 () Bool)

(assert (=> b!1018078 (= e!572845 (containsKey!510 (t!30701 l!1036) key!271))))

(assert (= (and d!121771 (not res!682805)) b!1018077))

(assert (= (and b!1018077 res!682806) b!1018078))

(declare-fun m!939255 () Bool)

(assert (=> b!1018078 m!939255))

(assert (=> b!1018059 d!121771))

(declare-fun d!121781 () Bool)

(declare-fun res!682811 () Bool)

(declare-fun e!572858 () Bool)

(assert (=> d!121781 (=> res!682811 e!572858)))

(assert (=> d!121781 (= res!682811 (or ((_ is Nil!21689) l!1036) ((_ is Nil!21689) (t!30701 l!1036))))))

(assert (=> d!121781 (= (isStrictlySorted!645 l!1036) e!572858)))

(declare-fun b!1018099 () Bool)

(declare-fun e!572859 () Bool)

(assert (=> b!1018099 (= e!572858 e!572859)))

(declare-fun res!682812 () Bool)

(assert (=> b!1018099 (=> (not res!682812) (not e!572859))))

(assert (=> b!1018099 (= res!682812 (bvslt (_1!7718 (h!22886 l!1036)) (_1!7718 (h!22886 (t!30701 l!1036)))))))

(declare-fun b!1018100 () Bool)

(assert (=> b!1018100 (= e!572859 (isStrictlySorted!645 (t!30701 l!1036)))))

(assert (= (and d!121781 (not res!682811)) b!1018099))

(assert (= (and b!1018099 res!682812) b!1018100))

(declare-fun m!939257 () Bool)

(assert (=> b!1018100 m!939257))

(assert (=> start!88582 d!121781))

(declare-fun d!121783 () Bool)

(declare-fun isEmpty!924 (Option!636) Bool)

(assert (=> d!121783 (= (isDefined!430 (getValueByKey!585 l!1036 key!271)) (not (isEmpty!924 (getValueByKey!585 l!1036 key!271))))))

(declare-fun bs!29643 () Bool)

(assert (= bs!29643 d!121783))

(assert (=> bs!29643 m!939237))

(declare-fun m!939259 () Bool)

(assert (=> bs!29643 m!939259))

(assert (=> b!1018057 d!121783))

(declare-fun b!1018132 () Bool)

(declare-fun e!572881 () Option!636)

(assert (=> b!1018132 (= e!572881 None!634)))

(declare-fun d!121785 () Bool)

(declare-fun c!103086 () Bool)

(assert (=> d!121785 (= c!103086 (and ((_ is Cons!21688) l!1036) (= (_1!7718 (h!22886 l!1036)) key!271)))))

(declare-fun e!572880 () Option!636)

(assert (=> d!121785 (= (getValueByKey!585 l!1036 key!271) e!572880)))

(declare-fun b!1018130 () Bool)

(assert (=> b!1018130 (= e!572880 e!572881)))

(declare-fun c!103087 () Bool)

(assert (=> b!1018130 (= c!103087 (and ((_ is Cons!21688) l!1036) (not (= (_1!7718 (h!22886 l!1036)) key!271))))))

(declare-fun b!1018129 () Bool)

(assert (=> b!1018129 (= e!572880 (Some!635 (_2!7718 (h!22886 l!1036))))))

(declare-fun b!1018131 () Bool)

(assert (=> b!1018131 (= e!572881 (getValueByKey!585 (t!30701 l!1036) key!271))))

(assert (= (and d!121785 c!103086) b!1018129))

(assert (= (and d!121785 (not c!103086)) b!1018130))

(assert (= (and b!1018130 c!103087) b!1018131))

(assert (= (and b!1018130 (not c!103087)) b!1018132))

(declare-fun m!939269 () Bool)

(assert (=> b!1018131 m!939269))

(assert (=> b!1018057 d!121785))

(declare-fun b!1018137 () Bool)

(declare-fun e!572884 () Bool)

(declare-fun tp!70982 () Bool)

(assert (=> b!1018137 (= e!572884 (and tp_is_empty!23679 tp!70982))))

(assert (=> b!1018060 (= tp!70976 e!572884)))

(assert (= (and b!1018060 ((_ is Cons!21688) (t!30701 l!1036))) b!1018137))

(check-sat (not d!121783) (not b!1018137) tp_is_empty!23679 (not b!1018100) (not b!1018078) (not b!1018131))
(check-sat)
(get-model)

(declare-fun b!1018163 () Bool)

(declare-fun e!572904 () Option!636)

(assert (=> b!1018163 (= e!572904 None!634)))

(declare-fun d!121795 () Bool)

(declare-fun c!103088 () Bool)

(assert (=> d!121795 (= c!103088 (and ((_ is Cons!21688) (t!30701 l!1036)) (= (_1!7718 (h!22886 (t!30701 l!1036))) key!271)))))

(declare-fun e!572903 () Option!636)

(assert (=> d!121795 (= (getValueByKey!585 (t!30701 l!1036) key!271) e!572903)))

(declare-fun b!1018161 () Bool)

(assert (=> b!1018161 (= e!572903 e!572904)))

(declare-fun c!103089 () Bool)

(assert (=> b!1018161 (= c!103089 (and ((_ is Cons!21688) (t!30701 l!1036)) (not (= (_1!7718 (h!22886 (t!30701 l!1036))) key!271))))))

(declare-fun b!1018160 () Bool)

(assert (=> b!1018160 (= e!572903 (Some!635 (_2!7718 (h!22886 (t!30701 l!1036)))))))

(declare-fun b!1018162 () Bool)

(assert (=> b!1018162 (= e!572904 (getValueByKey!585 (t!30701 (t!30701 l!1036)) key!271))))

(assert (= (and d!121795 c!103088) b!1018160))

(assert (= (and d!121795 (not c!103088)) b!1018161))

(assert (= (and b!1018161 c!103089) b!1018162))

(assert (= (and b!1018161 (not c!103089)) b!1018163))

(declare-fun m!939275 () Bool)

(assert (=> b!1018162 m!939275))

(assert (=> b!1018131 d!121795))

(declare-fun d!121797 () Bool)

(declare-fun res!682837 () Bool)

(declare-fun e!572905 () Bool)

(assert (=> d!121797 (=> res!682837 e!572905)))

(assert (=> d!121797 (= res!682837 (or ((_ is Nil!21689) (t!30701 l!1036)) ((_ is Nil!21689) (t!30701 (t!30701 l!1036)))))))

(assert (=> d!121797 (= (isStrictlySorted!645 (t!30701 l!1036)) e!572905)))

(declare-fun b!1018164 () Bool)

(declare-fun e!572906 () Bool)

(assert (=> b!1018164 (= e!572905 e!572906)))

(declare-fun res!682838 () Bool)

(assert (=> b!1018164 (=> (not res!682838) (not e!572906))))

(assert (=> b!1018164 (= res!682838 (bvslt (_1!7718 (h!22886 (t!30701 l!1036))) (_1!7718 (h!22886 (t!30701 (t!30701 l!1036))))))))

(declare-fun b!1018165 () Bool)

(assert (=> b!1018165 (= e!572906 (isStrictlySorted!645 (t!30701 (t!30701 l!1036))))))

(assert (= (and d!121797 (not res!682837)) b!1018164))

(assert (= (and b!1018164 res!682838) b!1018165))

(declare-fun m!939277 () Bool)

(assert (=> b!1018165 m!939277))

(assert (=> b!1018100 d!121797))

(declare-fun d!121799 () Bool)

(declare-fun res!682839 () Bool)

(declare-fun e!572907 () Bool)

(assert (=> d!121799 (=> res!682839 e!572907)))

(assert (=> d!121799 (= res!682839 (and ((_ is Cons!21688) (t!30701 l!1036)) (= (_1!7718 (h!22886 (t!30701 l!1036))) key!271)))))

(assert (=> d!121799 (= (containsKey!510 (t!30701 l!1036) key!271) e!572907)))

(declare-fun b!1018166 () Bool)

(declare-fun e!572908 () Bool)

(assert (=> b!1018166 (= e!572907 e!572908)))

(declare-fun res!682840 () Bool)

(assert (=> b!1018166 (=> (not res!682840) (not e!572908))))

(assert (=> b!1018166 (= res!682840 (and (or (not ((_ is Cons!21688) (t!30701 l!1036))) (bvsle (_1!7718 (h!22886 (t!30701 l!1036))) key!271)) ((_ is Cons!21688) (t!30701 l!1036)) (bvslt (_1!7718 (h!22886 (t!30701 l!1036))) key!271)))))

(declare-fun b!1018167 () Bool)

(assert (=> b!1018167 (= e!572908 (containsKey!510 (t!30701 (t!30701 l!1036)) key!271))))

(assert (= (and d!121799 (not res!682839)) b!1018166))

(assert (= (and b!1018166 res!682840) b!1018167))

(declare-fun m!939279 () Bool)

(assert (=> b!1018167 m!939279))

(assert (=> b!1018078 d!121799))

(declare-fun d!121801 () Bool)

(assert (=> d!121801 (= (isEmpty!924 (getValueByKey!585 l!1036 key!271)) (not ((_ is Some!635) (getValueByKey!585 l!1036 key!271))))))

(assert (=> d!121783 d!121801))

(declare-fun b!1018168 () Bool)

(declare-fun e!572909 () Bool)

(declare-fun tp!70989 () Bool)

(assert (=> b!1018168 (= e!572909 (and tp_is_empty!23679 tp!70989))))

(assert (=> b!1018137 (= tp!70982 e!572909)))

(assert (= (and b!1018137 ((_ is Cons!21688) (t!30701 (t!30701 l!1036)))) b!1018168))

(check-sat (not b!1018162) (not b!1018167) (not b!1018168) (not b!1018165) tp_is_empty!23679)
(check-sat)
