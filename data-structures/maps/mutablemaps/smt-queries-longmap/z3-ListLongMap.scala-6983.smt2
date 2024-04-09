; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88546 () Bool)

(assert start!88546)

(declare-fun b!1017893 () Bool)

(declare-fun res!682700 () Bool)

(declare-fun e!572724 () Bool)

(assert (=> b!1017893 (=> (not res!682700) (not e!572724))))

(declare-datatypes ((B!1606 0))(
  ( (B!1607 (val!11887 Int)) )
))
(declare-datatypes ((tuple2!15410 0))(
  ( (tuple2!15411 (_1!7715 (_ BitVec 64)) (_2!7715 B!1606)) )
))
(declare-datatypes ((List!21689 0))(
  ( (Nil!21686) (Cons!21685 (h!22883 tuple2!15410) (t!30698 List!21689)) )
))
(declare-fun l!1036 () List!21689)

(declare-fun key!271 () (_ BitVec 64))

(declare-datatypes ((Option!633 0))(
  ( (Some!632 (v!14481 B!1606)) (None!631) )
))
(declare-fun isDefined!427 (Option!633) Bool)

(declare-fun getValueByKey!582 (List!21689 (_ BitVec 64)) Option!633)

(assert (=> b!1017893 (= res!682700 (isDefined!427 (getValueByKey!582 l!1036 key!271)))))

(declare-fun res!682698 () Bool)

(assert (=> start!88546 (=> (not res!682698) (not e!572724))))

(declare-fun isStrictlySorted!642 (List!21689) Bool)

(assert (=> start!88546 (= res!682698 (isStrictlySorted!642 l!1036))))

(assert (=> start!88546 e!572724))

(declare-fun e!572725 () Bool)

(assert (=> start!88546 e!572725))

(assert (=> start!88546 true))

(declare-fun b!1017894 () Bool)

(declare-fun res!682697 () Bool)

(assert (=> b!1017894 (=> (not res!682697) (not e!572724))))

(get-info :version)

(assert (=> b!1017894 (= res!682697 (and ((_ is Cons!21685) l!1036) (not (= (_1!7715 (h!22883 l!1036)) key!271))))))

(declare-fun b!1017895 () Bool)

(declare-fun containsKey!507 (List!21689 (_ BitVec 64)) Bool)

(assert (=> b!1017895 (= e!572724 (not (containsKey!507 l!1036 key!271)))))

(assert (=> b!1017895 (containsKey!507 (t!30698 l!1036) key!271)))

(declare-datatypes ((Unit!33242 0))(
  ( (Unit!33243) )
))
(declare-fun lt!449466 () Unit!33242)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!26 (List!21689 (_ BitVec 64)) Unit!33242)

(assert (=> b!1017895 (= lt!449466 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!26 (t!30698 l!1036) key!271))))

(declare-fun b!1017896 () Bool)

(declare-fun tp_is_empty!23673 () Bool)

(declare-fun tp!70958 () Bool)

(assert (=> b!1017896 (= e!572725 (and tp_is_empty!23673 tp!70958))))

(declare-fun b!1017897 () Bool)

(declare-fun res!682701 () Bool)

(assert (=> b!1017897 (=> (not res!682701) (not e!572724))))

(assert (=> b!1017897 (= res!682701 (isDefined!427 (getValueByKey!582 (t!30698 l!1036) key!271)))))

(declare-fun b!1017898 () Bool)

(declare-fun res!682699 () Bool)

(assert (=> b!1017898 (=> (not res!682699) (not e!572724))))

(assert (=> b!1017898 (= res!682699 (isStrictlySorted!642 (t!30698 l!1036)))))

(assert (= (and start!88546 res!682698) b!1017893))

(assert (= (and b!1017893 res!682700) b!1017894))

(assert (= (and b!1017894 res!682697) b!1017898))

(assert (= (and b!1017898 res!682699) b!1017897))

(assert (= (and b!1017897 res!682701) b!1017895))

(assert (= (and start!88546 ((_ is Cons!21685) l!1036)) b!1017896))

(declare-fun m!939155 () Bool)

(assert (=> b!1017898 m!939155))

(declare-fun m!939157 () Bool)

(assert (=> b!1017895 m!939157))

(declare-fun m!939159 () Bool)

(assert (=> b!1017895 m!939159))

(declare-fun m!939161 () Bool)

(assert (=> b!1017895 m!939161))

(declare-fun m!939163 () Bool)

(assert (=> start!88546 m!939163))

(declare-fun m!939165 () Bool)

(assert (=> b!1017897 m!939165))

(assert (=> b!1017897 m!939165))

(declare-fun m!939167 () Bool)

(assert (=> b!1017897 m!939167))

(declare-fun m!939169 () Bool)

(assert (=> b!1017893 m!939169))

(assert (=> b!1017893 m!939169))

(declare-fun m!939171 () Bool)

(assert (=> b!1017893 m!939171))

(check-sat tp_is_empty!23673 (not b!1017896) (not b!1017898) (not b!1017893) (not b!1017897) (not start!88546) (not b!1017895))
(check-sat)
(get-model)

(declare-fun d!121715 () Bool)

(declare-fun isEmpty!919 (Option!633) Bool)

(assert (=> d!121715 (= (isDefined!427 (getValueByKey!582 (t!30698 l!1036) key!271)) (not (isEmpty!919 (getValueByKey!582 (t!30698 l!1036) key!271))))))

(declare-fun bs!29632 () Bool)

(assert (= bs!29632 d!121715))

(assert (=> bs!29632 m!939165))

(declare-fun m!939191 () Bool)

(assert (=> bs!29632 m!939191))

(assert (=> b!1017897 d!121715))

(declare-fun b!1017925 () Bool)

(declare-fun e!572736 () Option!633)

(assert (=> b!1017925 (= e!572736 (Some!632 (_2!7715 (h!22883 (t!30698 l!1036)))))))

(declare-fun b!1017928 () Bool)

(declare-fun e!572737 () Option!633)

(assert (=> b!1017928 (= e!572737 None!631)))

(declare-fun b!1017927 () Bool)

(assert (=> b!1017927 (= e!572737 (getValueByKey!582 (t!30698 (t!30698 l!1036)) key!271))))

(declare-fun b!1017926 () Bool)

(assert (=> b!1017926 (= e!572736 e!572737)))

(declare-fun c!103051 () Bool)

(assert (=> b!1017926 (= c!103051 (and ((_ is Cons!21685) (t!30698 l!1036)) (not (= (_1!7715 (h!22883 (t!30698 l!1036))) key!271))))))

(declare-fun d!121717 () Bool)

(declare-fun c!103050 () Bool)

(assert (=> d!121717 (= c!103050 (and ((_ is Cons!21685) (t!30698 l!1036)) (= (_1!7715 (h!22883 (t!30698 l!1036))) key!271)))))

(assert (=> d!121717 (= (getValueByKey!582 (t!30698 l!1036) key!271) e!572736)))

(assert (= (and d!121717 c!103050) b!1017925))

(assert (= (and d!121717 (not c!103050)) b!1017926))

(assert (= (and b!1017926 c!103051) b!1017927))

(assert (= (and b!1017926 (not c!103051)) b!1017928))

(declare-fun m!939193 () Bool)

(assert (=> b!1017927 m!939193))

(assert (=> b!1017897 d!121717))

(declare-fun d!121721 () Bool)

(declare-fun res!682729 () Bool)

(declare-fun e!572750 () Bool)

(assert (=> d!121721 (=> res!682729 e!572750)))

(assert (=> d!121721 (= res!682729 (or ((_ is Nil!21686) (t!30698 l!1036)) ((_ is Nil!21686) (t!30698 (t!30698 l!1036)))))))

(assert (=> d!121721 (= (isStrictlySorted!642 (t!30698 l!1036)) e!572750)))

(declare-fun b!1017941 () Bool)

(declare-fun e!572751 () Bool)

(assert (=> b!1017941 (= e!572750 e!572751)))

(declare-fun res!682730 () Bool)

(assert (=> b!1017941 (=> (not res!682730) (not e!572751))))

(assert (=> b!1017941 (= res!682730 (bvslt (_1!7715 (h!22883 (t!30698 l!1036))) (_1!7715 (h!22883 (t!30698 (t!30698 l!1036))))))))

(declare-fun b!1017942 () Bool)

(assert (=> b!1017942 (= e!572751 (isStrictlySorted!642 (t!30698 (t!30698 l!1036))))))

(assert (= (and d!121721 (not res!682729)) b!1017941))

(assert (= (and b!1017941 res!682730) b!1017942))

(declare-fun m!939195 () Bool)

(assert (=> b!1017942 m!939195))

(assert (=> b!1017898 d!121721))

(declare-fun d!121725 () Bool)

(assert (=> d!121725 (= (isDefined!427 (getValueByKey!582 l!1036 key!271)) (not (isEmpty!919 (getValueByKey!582 l!1036 key!271))))))

(declare-fun bs!29633 () Bool)

(assert (= bs!29633 d!121725))

(assert (=> bs!29633 m!939169))

(declare-fun m!939197 () Bool)

(assert (=> bs!29633 m!939197))

(assert (=> b!1017893 d!121725))

(declare-fun b!1017943 () Bool)

(declare-fun e!572752 () Option!633)

(assert (=> b!1017943 (= e!572752 (Some!632 (_2!7715 (h!22883 l!1036))))))

(declare-fun b!1017946 () Bool)

(declare-fun e!572753 () Option!633)

(assert (=> b!1017946 (= e!572753 None!631)))

(declare-fun b!1017945 () Bool)

(assert (=> b!1017945 (= e!572753 (getValueByKey!582 (t!30698 l!1036) key!271))))

(declare-fun b!1017944 () Bool)

(assert (=> b!1017944 (= e!572752 e!572753)))

(declare-fun c!103053 () Bool)

(assert (=> b!1017944 (= c!103053 (and ((_ is Cons!21685) l!1036) (not (= (_1!7715 (h!22883 l!1036)) key!271))))))

(declare-fun d!121727 () Bool)

(declare-fun c!103052 () Bool)

(assert (=> d!121727 (= c!103052 (and ((_ is Cons!21685) l!1036) (= (_1!7715 (h!22883 l!1036)) key!271)))))

(assert (=> d!121727 (= (getValueByKey!582 l!1036 key!271) e!572752)))

(assert (= (and d!121727 c!103052) b!1017943))

(assert (= (and d!121727 (not c!103052)) b!1017944))

(assert (= (and b!1017944 c!103053) b!1017945))

(assert (= (and b!1017944 (not c!103053)) b!1017946))

(assert (=> b!1017945 m!939165))

(assert (=> b!1017893 d!121727))

(declare-fun d!121729 () Bool)

(declare-fun res!682735 () Bool)

(declare-fun e!572758 () Bool)

(assert (=> d!121729 (=> res!682735 e!572758)))

(assert (=> d!121729 (= res!682735 (or ((_ is Nil!21686) l!1036) ((_ is Nil!21686) (t!30698 l!1036))))))

(assert (=> d!121729 (= (isStrictlySorted!642 l!1036) e!572758)))

(declare-fun b!1017951 () Bool)

(declare-fun e!572759 () Bool)

(assert (=> b!1017951 (= e!572758 e!572759)))

(declare-fun res!682736 () Bool)

(assert (=> b!1017951 (=> (not res!682736) (not e!572759))))

(assert (=> b!1017951 (= res!682736 (bvslt (_1!7715 (h!22883 l!1036)) (_1!7715 (h!22883 (t!30698 l!1036)))))))

(declare-fun b!1017952 () Bool)

(assert (=> b!1017952 (= e!572759 (isStrictlySorted!642 (t!30698 l!1036)))))

(assert (= (and d!121729 (not res!682735)) b!1017951))

(assert (= (and b!1017951 res!682736) b!1017952))

(assert (=> b!1017952 m!939155))

(assert (=> start!88546 d!121729))

(declare-fun d!121735 () Bool)

(declare-fun res!682746 () Bool)

(declare-fun e!572773 () Bool)

(assert (=> d!121735 (=> res!682746 e!572773)))

(assert (=> d!121735 (= res!682746 (and ((_ is Cons!21685) l!1036) (= (_1!7715 (h!22883 l!1036)) key!271)))))

(assert (=> d!121735 (= (containsKey!507 l!1036 key!271) e!572773)))

(declare-fun b!1017970 () Bool)

(declare-fun e!572774 () Bool)

(assert (=> b!1017970 (= e!572773 e!572774)))

(declare-fun res!682747 () Bool)

(assert (=> b!1017970 (=> (not res!682747) (not e!572774))))

(assert (=> b!1017970 (= res!682747 (and (or (not ((_ is Cons!21685) l!1036)) (bvsle (_1!7715 (h!22883 l!1036)) key!271)) ((_ is Cons!21685) l!1036) (bvslt (_1!7715 (h!22883 l!1036)) key!271)))))

(declare-fun b!1017971 () Bool)

(assert (=> b!1017971 (= e!572774 (containsKey!507 (t!30698 l!1036) key!271))))

(assert (= (and d!121735 (not res!682746)) b!1017970))

(assert (= (and b!1017970 res!682747) b!1017971))

(assert (=> b!1017971 m!939159))

(assert (=> b!1017895 d!121735))

(declare-fun d!121743 () Bool)

(declare-fun res!682748 () Bool)

(declare-fun e!572775 () Bool)

(assert (=> d!121743 (=> res!682748 e!572775)))

(assert (=> d!121743 (= res!682748 (and ((_ is Cons!21685) (t!30698 l!1036)) (= (_1!7715 (h!22883 (t!30698 l!1036))) key!271)))))

(assert (=> d!121743 (= (containsKey!507 (t!30698 l!1036) key!271) e!572775)))

(declare-fun b!1017972 () Bool)

(declare-fun e!572776 () Bool)

(assert (=> b!1017972 (= e!572775 e!572776)))

(declare-fun res!682749 () Bool)

(assert (=> b!1017972 (=> (not res!682749) (not e!572776))))

(assert (=> b!1017972 (= res!682749 (and (or (not ((_ is Cons!21685) (t!30698 l!1036))) (bvsle (_1!7715 (h!22883 (t!30698 l!1036))) key!271)) ((_ is Cons!21685) (t!30698 l!1036)) (bvslt (_1!7715 (h!22883 (t!30698 l!1036))) key!271)))))

(declare-fun b!1017973 () Bool)

(assert (=> b!1017973 (= e!572776 (containsKey!507 (t!30698 (t!30698 l!1036)) key!271))))

(assert (= (and d!121743 (not res!682748)) b!1017972))

(assert (= (and b!1017972 res!682749) b!1017973))

(declare-fun m!939207 () Bool)

(assert (=> b!1017973 m!939207))

(assert (=> b!1017895 d!121743))

(declare-fun d!121745 () Bool)

(assert (=> d!121745 (containsKey!507 (t!30698 l!1036) key!271)))

(declare-fun lt!449475 () Unit!33242)

(declare-fun choose!1679 (List!21689 (_ BitVec 64)) Unit!33242)

(assert (=> d!121745 (= lt!449475 (choose!1679 (t!30698 l!1036) key!271))))

(declare-fun e!572791 () Bool)

(assert (=> d!121745 e!572791))

(declare-fun res!682758 () Bool)

(assert (=> d!121745 (=> (not res!682758) (not e!572791))))

(assert (=> d!121745 (= res!682758 (isStrictlySorted!642 (t!30698 l!1036)))))

(assert (=> d!121745 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!26 (t!30698 l!1036) key!271) lt!449475)))

(declare-fun b!1017992 () Bool)

(assert (=> b!1017992 (= e!572791 (isDefined!427 (getValueByKey!582 (t!30698 l!1036) key!271)))))

(assert (= (and d!121745 res!682758) b!1017992))

(assert (=> d!121745 m!939159))

(declare-fun m!939213 () Bool)

(assert (=> d!121745 m!939213))

(assert (=> d!121745 m!939155))

(assert (=> b!1017992 m!939165))

(assert (=> b!1017992 m!939165))

(assert (=> b!1017992 m!939167))

(assert (=> b!1017895 d!121745))

(declare-fun b!1018003 () Bool)

(declare-fun e!572796 () Bool)

(declare-fun tp!70964 () Bool)

(assert (=> b!1018003 (= e!572796 (and tp_is_empty!23673 tp!70964))))

(assert (=> b!1017896 (= tp!70958 e!572796)))

(assert (= (and b!1017896 ((_ is Cons!21685) (t!30698 l!1036))) b!1018003))

(check-sat (not b!1017945) (not d!121715) (not b!1017973) (not b!1017992) (not b!1017952) (not b!1017927) (not b!1017971) (not b!1018003) (not d!121725) tp_is_empty!23673 (not b!1017942) (not d!121745))
(check-sat)
