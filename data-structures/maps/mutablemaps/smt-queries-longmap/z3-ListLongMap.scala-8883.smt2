; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107896 () Bool)

(assert start!107896)

(declare-fun res!847497 () Bool)

(declare-fun e!727627 () Bool)

(assert (=> start!107896 (=> (not res!847497) (not e!727627))))

(declare-datatypes ((B!2170 0))(
  ( (B!2171 (val!16681 Int)) )
))
(declare-datatypes ((tuple2!21590 0))(
  ( (tuple2!21591 (_1!10805 (_ BitVec 64)) (_2!10805 B!2170)) )
))
(declare-datatypes ((List!28765 0))(
  ( (Nil!28762) (Cons!28761 (h!29970 tuple2!21590) (t!42305 List!28765)) )
))
(declare-fun l!595 () List!28765)

(declare-fun isStrictlySorted!856 (List!28765) Bool)

(assert (=> start!107896 (= res!847497 (isStrictlySorted!856 l!595))))

(assert (=> start!107896 e!727627))

(declare-fun e!727629 () Bool)

(assert (=> start!107896 e!727629))

(assert (=> start!107896 true))

(declare-fun b!1274819 () Bool)

(declare-fun e!727628 () Bool)

(assert (=> b!1274819 (= e!727627 e!727628)))

(declare-fun res!847496 () Bool)

(assert (=> b!1274819 (=> res!847496 e!727628)))

(declare-fun lt!575243 () List!28765)

(assert (=> b!1274819 (= res!847496 (not (isStrictlySorted!856 lt!575243)))))

(declare-fun key!173 () (_ BitVec 64))

(declare-fun $colon$colon!667 (List!28765 tuple2!21590) List!28765)

(declare-fun removeStrictlySorted!184 (List!28765 (_ BitVec 64)) List!28765)

(assert (=> b!1274819 (= lt!575243 ($colon$colon!667 (removeStrictlySorted!184 (t!42305 l!595) key!173) (h!29970 l!595)))))

(declare-fun b!1274821 () Bool)

(declare-fun tp_is_empty!33213 () Bool)

(declare-fun tp!98061 () Bool)

(assert (=> b!1274821 (= e!727629 (and tp_is_empty!33213 tp!98061))))

(declare-fun b!1274818 () Bool)

(declare-fun res!847498 () Bool)

(assert (=> b!1274818 (=> (not res!847498) (not e!727627))))

(get-info :version)

(assert (=> b!1274818 (= res!847498 (and (not (= (_1!10805 (h!29970 l!595)) key!173)) ((_ is Cons!28761) l!595)))))

(declare-fun b!1274820 () Bool)

(declare-fun containsKey!702 (List!28765 (_ BitVec 64)) Bool)

(assert (=> b!1274820 (= e!727628 (containsKey!702 lt!575243 key!173))))

(assert (= (and start!107896 res!847497) b!1274818))

(assert (= (and b!1274818 res!847498) b!1274819))

(assert (= (and b!1274819 (not res!847496)) b!1274820))

(assert (= (and start!107896 ((_ is Cons!28761) l!595)) b!1274821))

(declare-fun m!1171349 () Bool)

(assert (=> start!107896 m!1171349))

(declare-fun m!1171351 () Bool)

(assert (=> b!1274819 m!1171351))

(declare-fun m!1171353 () Bool)

(assert (=> b!1274819 m!1171353))

(assert (=> b!1274819 m!1171353))

(declare-fun m!1171355 () Bool)

(assert (=> b!1274819 m!1171355))

(declare-fun m!1171357 () Bool)

(assert (=> b!1274820 m!1171357))

(check-sat tp_is_empty!33213 (not b!1274820) (not b!1274819) (not start!107896) (not b!1274821))
(check-sat)
(get-model)

(declare-fun d!140165 () Bool)

(declare-fun res!847516 () Bool)

(declare-fun e!727647 () Bool)

(assert (=> d!140165 (=> res!847516 e!727647)))

(assert (=> d!140165 (= res!847516 (or ((_ is Nil!28762) l!595) ((_ is Nil!28762) (t!42305 l!595))))))

(assert (=> d!140165 (= (isStrictlySorted!856 l!595) e!727647)))

(declare-fun b!1274842 () Bool)

(declare-fun e!727648 () Bool)

(assert (=> b!1274842 (= e!727647 e!727648)))

(declare-fun res!847517 () Bool)

(assert (=> b!1274842 (=> (not res!847517) (not e!727648))))

(assert (=> b!1274842 (= res!847517 (bvslt (_1!10805 (h!29970 l!595)) (_1!10805 (h!29970 (t!42305 l!595)))))))

(declare-fun b!1274843 () Bool)

(assert (=> b!1274843 (= e!727648 (isStrictlySorted!856 (t!42305 l!595)))))

(assert (= (and d!140165 (not res!847516)) b!1274842))

(assert (= (and b!1274842 res!847517) b!1274843))

(declare-fun m!1171369 () Bool)

(assert (=> b!1274843 m!1171369))

(assert (=> start!107896 d!140165))

(declare-fun d!140169 () Bool)

(declare-fun res!847540 () Bool)

(declare-fun e!727671 () Bool)

(assert (=> d!140169 (=> res!847540 e!727671)))

(assert (=> d!140169 (= res!847540 (and ((_ is Cons!28761) lt!575243) (= (_1!10805 (h!29970 lt!575243)) key!173)))))

(assert (=> d!140169 (= (containsKey!702 lt!575243 key!173) e!727671)))

(declare-fun b!1274866 () Bool)

(declare-fun e!727672 () Bool)

(assert (=> b!1274866 (= e!727671 e!727672)))

(declare-fun res!847541 () Bool)

(assert (=> b!1274866 (=> (not res!847541) (not e!727672))))

(assert (=> b!1274866 (= res!847541 (and (or (not ((_ is Cons!28761) lt!575243)) (bvsle (_1!10805 (h!29970 lt!575243)) key!173)) ((_ is Cons!28761) lt!575243) (bvslt (_1!10805 (h!29970 lt!575243)) key!173)))))

(declare-fun b!1274867 () Bool)

(assert (=> b!1274867 (= e!727672 (containsKey!702 (t!42305 lt!575243) key!173))))

(assert (= (and d!140169 (not res!847540)) b!1274866))

(assert (= (and b!1274866 res!847541) b!1274867))

(declare-fun m!1171377 () Bool)

(assert (=> b!1274867 m!1171377))

(assert (=> b!1274820 d!140169))

(declare-fun d!140177 () Bool)

(declare-fun res!847542 () Bool)

(declare-fun e!727673 () Bool)

(assert (=> d!140177 (=> res!847542 e!727673)))

(assert (=> d!140177 (= res!847542 (or ((_ is Nil!28762) lt!575243) ((_ is Nil!28762) (t!42305 lt!575243))))))

(assert (=> d!140177 (= (isStrictlySorted!856 lt!575243) e!727673)))

(declare-fun b!1274868 () Bool)

(declare-fun e!727674 () Bool)

(assert (=> b!1274868 (= e!727673 e!727674)))

(declare-fun res!847543 () Bool)

(assert (=> b!1274868 (=> (not res!847543) (not e!727674))))

(assert (=> b!1274868 (= res!847543 (bvslt (_1!10805 (h!29970 lt!575243)) (_1!10805 (h!29970 (t!42305 lt!575243)))))))

(declare-fun b!1274869 () Bool)

(assert (=> b!1274869 (= e!727674 (isStrictlySorted!856 (t!42305 lt!575243)))))

(assert (= (and d!140177 (not res!847542)) b!1274868))

(assert (= (and b!1274868 res!847543) b!1274869))

(declare-fun m!1171379 () Bool)

(assert (=> b!1274869 m!1171379))

(assert (=> b!1274819 d!140177))

(declare-fun d!140181 () Bool)

(assert (=> d!140181 (= ($colon$colon!667 (removeStrictlySorted!184 (t!42305 l!595) key!173) (h!29970 l!595)) (Cons!28761 (h!29970 l!595) (removeStrictlySorted!184 (t!42305 l!595) key!173)))))

(assert (=> b!1274819 d!140181))

(declare-fun b!1274919 () Bool)

(declare-fun e!727707 () List!28765)

(assert (=> b!1274919 (= e!727707 (t!42305 (t!42305 l!595)))))

(declare-fun b!1274920 () Bool)

(declare-fun e!727708 () Bool)

(declare-fun lt!575255 () List!28765)

(assert (=> b!1274920 (= e!727708 (not (containsKey!702 lt!575255 key!173)))))

(declare-fun d!140187 () Bool)

(assert (=> d!140187 e!727708))

(declare-fun res!847556 () Bool)

(assert (=> d!140187 (=> (not res!847556) (not e!727708))))

(assert (=> d!140187 (= res!847556 (isStrictlySorted!856 lt!575255))))

(assert (=> d!140187 (= lt!575255 e!727707)))

(declare-fun c!123851 () Bool)

(assert (=> d!140187 (= c!123851 (and ((_ is Cons!28761) (t!42305 l!595)) (= (_1!10805 (h!29970 (t!42305 l!595))) key!173)))))

(assert (=> d!140187 (isStrictlySorted!856 (t!42305 l!595))))

(assert (=> d!140187 (= (removeStrictlySorted!184 (t!42305 l!595) key!173) lt!575255)))

(declare-fun b!1274921 () Bool)

(declare-fun e!727706 () List!28765)

(assert (=> b!1274921 (= e!727706 Nil!28762)))

(declare-fun b!1274922 () Bool)

(assert (=> b!1274922 (= e!727707 e!727706)))

(declare-fun c!123852 () Bool)

(assert (=> b!1274922 (= c!123852 (and ((_ is Cons!28761) (t!42305 l!595)) (not (= (_1!10805 (h!29970 (t!42305 l!595))) key!173))))))

(declare-fun b!1274923 () Bool)

(assert (=> b!1274923 (= e!727706 ($colon$colon!667 (removeStrictlySorted!184 (t!42305 (t!42305 l!595)) key!173) (h!29970 (t!42305 l!595))))))

(assert (= (and d!140187 c!123851) b!1274919))

(assert (= (and d!140187 (not c!123851)) b!1274922))

(assert (= (and b!1274922 c!123852) b!1274923))

(assert (= (and b!1274922 (not c!123852)) b!1274921))

(assert (= (and d!140187 res!847556) b!1274920))

(declare-fun m!1171403 () Bool)

(assert (=> b!1274920 m!1171403))

(declare-fun m!1171405 () Bool)

(assert (=> d!140187 m!1171405))

(assert (=> d!140187 m!1171369))

(declare-fun m!1171407 () Bool)

(assert (=> b!1274923 m!1171407))

(assert (=> b!1274923 m!1171407))

(declare-fun m!1171409 () Bool)

(assert (=> b!1274923 m!1171409))

(assert (=> b!1274819 d!140187))

(declare-fun b!1274935 () Bool)

(declare-fun e!727716 () Bool)

(declare-fun tp!98073 () Bool)

(assert (=> b!1274935 (= e!727716 (and tp_is_empty!33213 tp!98073))))

(assert (=> b!1274821 (= tp!98061 e!727716)))

(assert (= (and b!1274821 ((_ is Cons!28761) (t!42305 l!595))) b!1274935))

(check-sat tp_is_empty!33213 (not b!1274923) (not b!1274843) (not b!1274867) (not d!140187) (not b!1274920) (not b!1274935) (not b!1274869))
(check-sat)
(get-model)

(declare-fun d!140193 () Bool)

(assert (=> d!140193 (= ($colon$colon!667 (removeStrictlySorted!184 (t!42305 (t!42305 l!595)) key!173) (h!29970 (t!42305 l!595))) (Cons!28761 (h!29970 (t!42305 l!595)) (removeStrictlySorted!184 (t!42305 (t!42305 l!595)) key!173)))))

(assert (=> b!1274923 d!140193))

(declare-fun b!1274936 () Bool)

(declare-fun e!727718 () List!28765)

(assert (=> b!1274936 (= e!727718 (t!42305 (t!42305 (t!42305 l!595))))))

(declare-fun b!1274937 () Bool)

(declare-fun e!727719 () Bool)

(declare-fun lt!575256 () List!28765)

(assert (=> b!1274937 (= e!727719 (not (containsKey!702 lt!575256 key!173)))))

(declare-fun d!140195 () Bool)

(assert (=> d!140195 e!727719))

(declare-fun res!847559 () Bool)

(assert (=> d!140195 (=> (not res!847559) (not e!727719))))

(assert (=> d!140195 (= res!847559 (isStrictlySorted!856 lt!575256))))

(assert (=> d!140195 (= lt!575256 e!727718)))

(declare-fun c!123853 () Bool)

(assert (=> d!140195 (= c!123853 (and ((_ is Cons!28761) (t!42305 (t!42305 l!595))) (= (_1!10805 (h!29970 (t!42305 (t!42305 l!595)))) key!173)))))

(assert (=> d!140195 (isStrictlySorted!856 (t!42305 (t!42305 l!595)))))

(assert (=> d!140195 (= (removeStrictlySorted!184 (t!42305 (t!42305 l!595)) key!173) lt!575256)))

(declare-fun b!1274938 () Bool)

(declare-fun e!727717 () List!28765)

(assert (=> b!1274938 (= e!727717 Nil!28762)))

(declare-fun b!1274939 () Bool)

(assert (=> b!1274939 (= e!727718 e!727717)))

(declare-fun c!123854 () Bool)

(assert (=> b!1274939 (= c!123854 (and ((_ is Cons!28761) (t!42305 (t!42305 l!595))) (not (= (_1!10805 (h!29970 (t!42305 (t!42305 l!595)))) key!173))))))

(declare-fun b!1274940 () Bool)

(assert (=> b!1274940 (= e!727717 ($colon$colon!667 (removeStrictlySorted!184 (t!42305 (t!42305 (t!42305 l!595))) key!173) (h!29970 (t!42305 (t!42305 l!595)))))))

(assert (= (and d!140195 c!123853) b!1274936))

(assert (= (and d!140195 (not c!123853)) b!1274939))

(assert (= (and b!1274939 c!123854) b!1274940))

(assert (= (and b!1274939 (not c!123854)) b!1274938))

(assert (= (and d!140195 res!847559) b!1274937))

(declare-fun m!1171411 () Bool)

(assert (=> b!1274937 m!1171411))

(declare-fun m!1171413 () Bool)

(assert (=> d!140195 m!1171413))

(declare-fun m!1171415 () Bool)

(assert (=> d!140195 m!1171415))

(declare-fun m!1171417 () Bool)

(assert (=> b!1274940 m!1171417))

(assert (=> b!1274940 m!1171417))

(declare-fun m!1171419 () Bool)

(assert (=> b!1274940 m!1171419))

(assert (=> b!1274923 d!140195))

(declare-fun d!140197 () Bool)

(declare-fun res!847560 () Bool)

(declare-fun e!727720 () Bool)

(assert (=> d!140197 (=> res!847560 e!727720)))

(assert (=> d!140197 (= res!847560 (and ((_ is Cons!28761) lt!575255) (= (_1!10805 (h!29970 lt!575255)) key!173)))))

(assert (=> d!140197 (= (containsKey!702 lt!575255 key!173) e!727720)))

(declare-fun b!1274941 () Bool)

(declare-fun e!727721 () Bool)

(assert (=> b!1274941 (= e!727720 e!727721)))

(declare-fun res!847561 () Bool)

(assert (=> b!1274941 (=> (not res!847561) (not e!727721))))

(assert (=> b!1274941 (= res!847561 (and (or (not ((_ is Cons!28761) lt!575255)) (bvsle (_1!10805 (h!29970 lt!575255)) key!173)) ((_ is Cons!28761) lt!575255) (bvslt (_1!10805 (h!29970 lt!575255)) key!173)))))

(declare-fun b!1274942 () Bool)

(assert (=> b!1274942 (= e!727721 (containsKey!702 (t!42305 lt!575255) key!173))))

(assert (= (and d!140197 (not res!847560)) b!1274941))

(assert (= (and b!1274941 res!847561) b!1274942))

(declare-fun m!1171421 () Bool)

(assert (=> b!1274942 m!1171421))

(assert (=> b!1274920 d!140197))

(declare-fun d!140199 () Bool)

(declare-fun res!847562 () Bool)

(declare-fun e!727722 () Bool)

(assert (=> d!140199 (=> res!847562 e!727722)))

(assert (=> d!140199 (= res!847562 (or ((_ is Nil!28762) (t!42305 lt!575243)) ((_ is Nil!28762) (t!42305 (t!42305 lt!575243)))))))

(assert (=> d!140199 (= (isStrictlySorted!856 (t!42305 lt!575243)) e!727722)))

(declare-fun b!1274943 () Bool)

(declare-fun e!727723 () Bool)

(assert (=> b!1274943 (= e!727722 e!727723)))

(declare-fun res!847563 () Bool)

(assert (=> b!1274943 (=> (not res!847563) (not e!727723))))

(assert (=> b!1274943 (= res!847563 (bvslt (_1!10805 (h!29970 (t!42305 lt!575243))) (_1!10805 (h!29970 (t!42305 (t!42305 lt!575243))))))))

(declare-fun b!1274944 () Bool)

(assert (=> b!1274944 (= e!727723 (isStrictlySorted!856 (t!42305 (t!42305 lt!575243))))))

(assert (= (and d!140199 (not res!847562)) b!1274943))

(assert (= (and b!1274943 res!847563) b!1274944))

(declare-fun m!1171423 () Bool)

(assert (=> b!1274944 m!1171423))

(assert (=> b!1274869 d!140199))

(declare-fun d!140201 () Bool)

(declare-fun res!847564 () Bool)

(declare-fun e!727724 () Bool)

(assert (=> d!140201 (=> res!847564 e!727724)))

(assert (=> d!140201 (= res!847564 (and ((_ is Cons!28761) (t!42305 lt!575243)) (= (_1!10805 (h!29970 (t!42305 lt!575243))) key!173)))))

(assert (=> d!140201 (= (containsKey!702 (t!42305 lt!575243) key!173) e!727724)))

(declare-fun b!1274945 () Bool)

(declare-fun e!727725 () Bool)

(assert (=> b!1274945 (= e!727724 e!727725)))

(declare-fun res!847565 () Bool)

(assert (=> b!1274945 (=> (not res!847565) (not e!727725))))

(assert (=> b!1274945 (= res!847565 (and (or (not ((_ is Cons!28761) (t!42305 lt!575243))) (bvsle (_1!10805 (h!29970 (t!42305 lt!575243))) key!173)) ((_ is Cons!28761) (t!42305 lt!575243)) (bvslt (_1!10805 (h!29970 (t!42305 lt!575243))) key!173)))))

(declare-fun b!1274946 () Bool)

(assert (=> b!1274946 (= e!727725 (containsKey!702 (t!42305 (t!42305 lt!575243)) key!173))))

(assert (= (and d!140201 (not res!847564)) b!1274945))

(assert (= (and b!1274945 res!847565) b!1274946))

(declare-fun m!1171425 () Bool)

(assert (=> b!1274946 m!1171425))

(assert (=> b!1274867 d!140201))

(declare-fun d!140203 () Bool)

(declare-fun res!847566 () Bool)

(declare-fun e!727726 () Bool)

(assert (=> d!140203 (=> res!847566 e!727726)))

(assert (=> d!140203 (= res!847566 (or ((_ is Nil!28762) (t!42305 l!595)) ((_ is Nil!28762) (t!42305 (t!42305 l!595)))))))

(assert (=> d!140203 (= (isStrictlySorted!856 (t!42305 l!595)) e!727726)))

(declare-fun b!1274947 () Bool)

(declare-fun e!727727 () Bool)

(assert (=> b!1274947 (= e!727726 e!727727)))

(declare-fun res!847567 () Bool)

(assert (=> b!1274947 (=> (not res!847567) (not e!727727))))

(assert (=> b!1274947 (= res!847567 (bvslt (_1!10805 (h!29970 (t!42305 l!595))) (_1!10805 (h!29970 (t!42305 (t!42305 l!595))))))))

(declare-fun b!1274948 () Bool)

(assert (=> b!1274948 (= e!727727 (isStrictlySorted!856 (t!42305 (t!42305 l!595))))))

(assert (= (and d!140203 (not res!847566)) b!1274947))

(assert (= (and b!1274947 res!847567) b!1274948))

(assert (=> b!1274948 m!1171415))

(assert (=> b!1274843 d!140203))

(declare-fun d!140205 () Bool)

(declare-fun res!847568 () Bool)

(declare-fun e!727728 () Bool)

(assert (=> d!140205 (=> res!847568 e!727728)))

(assert (=> d!140205 (= res!847568 (or ((_ is Nil!28762) lt!575255) ((_ is Nil!28762) (t!42305 lt!575255))))))

(assert (=> d!140205 (= (isStrictlySorted!856 lt!575255) e!727728)))

(declare-fun b!1274949 () Bool)

(declare-fun e!727729 () Bool)

(assert (=> b!1274949 (= e!727728 e!727729)))

(declare-fun res!847569 () Bool)

(assert (=> b!1274949 (=> (not res!847569) (not e!727729))))

(assert (=> b!1274949 (= res!847569 (bvslt (_1!10805 (h!29970 lt!575255)) (_1!10805 (h!29970 (t!42305 lt!575255)))))))

(declare-fun b!1274950 () Bool)

(assert (=> b!1274950 (= e!727729 (isStrictlySorted!856 (t!42305 lt!575255)))))

(assert (= (and d!140205 (not res!847568)) b!1274949))

(assert (= (and b!1274949 res!847569) b!1274950))

(declare-fun m!1171427 () Bool)

(assert (=> b!1274950 m!1171427))

(assert (=> d!140187 d!140205))

(assert (=> d!140187 d!140203))

(declare-fun b!1274951 () Bool)

(declare-fun e!727730 () Bool)

(declare-fun tp!98074 () Bool)

(assert (=> b!1274951 (= e!727730 (and tp_is_empty!33213 tp!98074))))

(assert (=> b!1274935 (= tp!98073 e!727730)))

(assert (= (and b!1274935 ((_ is Cons!28761) (t!42305 (t!42305 l!595)))) b!1274951))

(check-sat tp_is_empty!33213 (not b!1274940) (not b!1274942) (not b!1274944) (not b!1274946) (not d!140195) (not b!1274948) (not b!1274951) (not b!1274937) (not b!1274950))
(check-sat)
