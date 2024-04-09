; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106704 () Bool)

(assert start!106704)

(declare-fun b!1266877 () Bool)

(declare-fun e!721686 () Bool)

(declare-datatypes ((B!2032 0))(
  ( (B!2033 (val!16351 Int)) )
))
(declare-datatypes ((tuple2!21370 0))(
  ( (tuple2!21371 (_1!10695 (_ BitVec 64)) (_2!10695 B!2032)) )
))
(declare-datatypes ((List!28518 0))(
  ( (Nil!28515) (Cons!28514 (h!29723 tuple2!21370) (t!42052 List!28518)) )
))
(declare-datatypes ((ListLongMap!19177 0))(
  ( (ListLongMap!19178 (toList!9604 List!28518)) )
))
(declare-fun lm!209 () ListLongMap!19177)

(declare-fun a!499 () (_ BitVec 64))

(declare-fun -!2158 (ListLongMap!19177 (_ BitVec 64)) ListLongMap!19177)

(assert (=> b!1266877 (= e!721686 (not (= (-!2158 lm!209 a!499) lm!209)))))

(declare-fun removeStrictlySorted!163 (List!28518 (_ BitVec 64)) List!28518)

(assert (=> b!1266877 (= (removeStrictlySorted!163 (toList!9604 lm!209) a!499) (toList!9604 lm!209))))

(declare-datatypes ((Unit!42157 0))(
  ( (Unit!42158) )
))
(declare-fun lt!574181 () Unit!42157)

(declare-fun lemmaRemoveStrictlySortedNotPresentPreserves!2 (List!28518 (_ BitVec 64)) Unit!42157)

(assert (=> b!1266877 (= lt!574181 (lemmaRemoveStrictlySortedNotPresentPreserves!2 (toList!9604 lm!209) a!499))))

(declare-fun res!843441 () Bool)

(assert (=> start!106704 (=> (not res!843441) (not e!721686))))

(declare-fun contains!7676 (ListLongMap!19177 (_ BitVec 64)) Bool)

(assert (=> start!106704 (= res!843441 (not (contains!7676 lm!209 a!499)))))

(assert (=> start!106704 e!721686))

(declare-fun e!721687 () Bool)

(declare-fun inv!44194 (ListLongMap!19177) Bool)

(assert (=> start!106704 (and (inv!44194 lm!209) e!721687)))

(assert (=> start!106704 true))

(declare-fun b!1266878 () Bool)

(declare-fun tp!96510 () Bool)

(assert (=> b!1266878 (= e!721687 tp!96510)))

(declare-fun b!1266875 () Bool)

(declare-fun res!843440 () Bool)

(assert (=> b!1266875 (=> (not res!843440) (not e!721686))))

(declare-fun isStrictlySorted!808 (List!28518) Bool)

(assert (=> b!1266875 (= res!843440 (isStrictlySorted!808 (toList!9604 lm!209)))))

(declare-fun b!1266876 () Bool)

(declare-fun res!843442 () Bool)

(assert (=> b!1266876 (=> (not res!843442) (not e!721686))))

(declare-fun containsKey!669 (List!28518 (_ BitVec 64)) Bool)

(assert (=> b!1266876 (= res!843442 (not (containsKey!669 (toList!9604 lm!209) a!499)))))

(assert (= (and start!106704 res!843441) b!1266875))

(assert (= (and b!1266875 res!843440) b!1266876))

(assert (= (and b!1266876 res!843442) b!1266877))

(assert (= start!106704 b!1266878))

(declare-fun m!1166471 () Bool)

(assert (=> b!1266877 m!1166471))

(declare-fun m!1166473 () Bool)

(assert (=> b!1266877 m!1166473))

(declare-fun m!1166475 () Bool)

(assert (=> b!1266877 m!1166475))

(declare-fun m!1166477 () Bool)

(assert (=> start!106704 m!1166477))

(declare-fun m!1166479 () Bool)

(assert (=> start!106704 m!1166479))

(declare-fun m!1166481 () Bool)

(assert (=> b!1266875 m!1166481))

(declare-fun m!1166483 () Bool)

(assert (=> b!1266876 m!1166483))

(check-sat (not b!1266876) (not b!1266877) (not b!1266875) (not b!1266878) (not start!106704))
(check-sat)
(get-model)

(declare-fun d!139285 () Bool)

(declare-fun e!721723 () Bool)

(assert (=> d!139285 e!721723))

(declare-fun res!843478 () Bool)

(assert (=> d!139285 (=> res!843478 e!721723)))

(declare-fun lt!574196 () Bool)

(assert (=> d!139285 (= res!843478 (not lt!574196))))

(declare-fun lt!574193 () Bool)

(assert (=> d!139285 (= lt!574196 lt!574193)))

(declare-fun lt!574195 () Unit!42157)

(declare-fun e!721722 () Unit!42157)

(assert (=> d!139285 (= lt!574195 e!721722)))

(declare-fun c!123472 () Bool)

(assert (=> d!139285 (= c!123472 lt!574193)))

(assert (=> d!139285 (= lt!574193 (containsKey!669 (toList!9604 lm!209) a!499))))

(assert (=> d!139285 (= (contains!7676 lm!209 a!499) lt!574196)))

(declare-fun b!1266921 () Bool)

(declare-fun lt!574194 () Unit!42157)

(assert (=> b!1266921 (= e!721722 lt!574194)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!449 (List!28518 (_ BitVec 64)) Unit!42157)

(assert (=> b!1266921 (= lt!574194 (lemmaContainsKeyImpliesGetValueByKeyDefined!449 (toList!9604 lm!209) a!499))))

(declare-datatypes ((Option!737 0))(
  ( (Some!736 (v!19017 B!2032)) (None!735) )
))
(declare-fun isDefined!489 (Option!737) Bool)

(declare-fun getValueByKey!686 (List!28518 (_ BitVec 64)) Option!737)

(assert (=> b!1266921 (isDefined!489 (getValueByKey!686 (toList!9604 lm!209) a!499))))

(declare-fun b!1266922 () Bool)

(declare-fun Unit!42161 () Unit!42157)

(assert (=> b!1266922 (= e!721722 Unit!42161)))

(declare-fun b!1266923 () Bool)

(assert (=> b!1266923 (= e!721723 (isDefined!489 (getValueByKey!686 (toList!9604 lm!209) a!499)))))

(assert (= (and d!139285 c!123472) b!1266921))

(assert (= (and d!139285 (not c!123472)) b!1266922))

(assert (= (and d!139285 (not res!843478)) b!1266923))

(assert (=> d!139285 m!1166483))

(declare-fun m!1166507 () Bool)

(assert (=> b!1266921 m!1166507))

(declare-fun m!1166509 () Bool)

(assert (=> b!1266921 m!1166509))

(assert (=> b!1266921 m!1166509))

(declare-fun m!1166511 () Bool)

(assert (=> b!1266921 m!1166511))

(assert (=> b!1266923 m!1166509))

(assert (=> b!1266923 m!1166509))

(assert (=> b!1266923 m!1166511))

(assert (=> start!106704 d!139285))

(declare-fun d!139299 () Bool)

(assert (=> d!139299 (= (inv!44194 lm!209) (isStrictlySorted!808 (toList!9604 lm!209)))))

(declare-fun bs!35857 () Bool)

(assert (= bs!35857 d!139299))

(assert (=> bs!35857 m!1166481))

(assert (=> start!106704 d!139299))

(declare-fun d!139301 () Bool)

(declare-fun lt!574199 () ListLongMap!19177)

(assert (=> d!139301 (not (contains!7676 lt!574199 a!499))))

(assert (=> d!139301 (= lt!574199 (ListLongMap!19178 (removeStrictlySorted!163 (toList!9604 lm!209) a!499)))))

(assert (=> d!139301 (= (-!2158 lm!209 a!499) lt!574199)))

(declare-fun bs!35858 () Bool)

(assert (= bs!35858 d!139301))

(declare-fun m!1166513 () Bool)

(assert (=> bs!35858 m!1166513))

(assert (=> bs!35858 m!1166473))

(assert (=> b!1266877 d!139301))

(declare-fun b!1266952 () Bool)

(declare-fun e!721743 () Bool)

(declare-fun lt!574232 () List!28518)

(assert (=> b!1266952 (= e!721743 (not (containsKey!669 lt!574232 a!499)))))

(declare-fun d!139303 () Bool)

(assert (=> d!139303 e!721743))

(declare-fun res!843487 () Bool)

(assert (=> d!139303 (=> (not res!843487) (not e!721743))))

(assert (=> d!139303 (= res!843487 (isStrictlySorted!808 lt!574232))))

(declare-fun e!721744 () List!28518)

(assert (=> d!139303 (= lt!574232 e!721744)))

(declare-fun c!123483 () Bool)

(get-info :version)

(assert (=> d!139303 (= c!123483 (and ((_ is Cons!28514) (toList!9604 lm!209)) (= (_1!10695 (h!29723 (toList!9604 lm!209))) a!499)))))

(assert (=> d!139303 (isStrictlySorted!808 (toList!9604 lm!209))))

(assert (=> d!139303 (= (removeStrictlySorted!163 (toList!9604 lm!209) a!499) lt!574232)))

(declare-fun b!1266953 () Bool)

(declare-fun e!721742 () List!28518)

(assert (=> b!1266953 (= e!721742 Nil!28515)))

(declare-fun b!1266954 () Bool)

(assert (=> b!1266954 (= e!721744 (t!42052 (toList!9604 lm!209)))))

(declare-fun b!1266955 () Bool)

(assert (=> b!1266955 (= e!721744 e!721742)))

(declare-fun c!123484 () Bool)

(assert (=> b!1266955 (= c!123484 (and ((_ is Cons!28514) (toList!9604 lm!209)) (not (= (_1!10695 (h!29723 (toList!9604 lm!209))) a!499))))))

(declare-fun b!1266956 () Bool)

(declare-fun $colon$colon!648 (List!28518 tuple2!21370) List!28518)

(assert (=> b!1266956 (= e!721742 ($colon$colon!648 (removeStrictlySorted!163 (t!42052 (toList!9604 lm!209)) a!499) (h!29723 (toList!9604 lm!209))))))

(assert (= (and d!139303 c!123483) b!1266954))

(assert (= (and d!139303 (not c!123483)) b!1266955))

(assert (= (and b!1266955 c!123484) b!1266956))

(assert (= (and b!1266955 (not c!123484)) b!1266953))

(assert (= (and d!139303 res!843487) b!1266952))

(declare-fun m!1166531 () Bool)

(assert (=> b!1266952 m!1166531))

(declare-fun m!1166533 () Bool)

(assert (=> d!139303 m!1166533))

(assert (=> d!139303 m!1166481))

(declare-fun m!1166535 () Bool)

(assert (=> b!1266956 m!1166535))

(assert (=> b!1266956 m!1166535))

(declare-fun m!1166537 () Bool)

(assert (=> b!1266956 m!1166537))

(assert (=> b!1266877 d!139303))

(declare-fun d!139317 () Bool)

(assert (=> d!139317 (= (removeStrictlySorted!163 (toList!9604 lm!209) a!499) (toList!9604 lm!209))))

(declare-fun lt!574235 () Unit!42157)

(declare-fun choose!1898 (List!28518 (_ BitVec 64)) Unit!42157)

(assert (=> d!139317 (= lt!574235 (choose!1898 (toList!9604 lm!209) a!499))))

(assert (=> d!139317 (isStrictlySorted!808 (toList!9604 lm!209))))

(assert (=> d!139317 (= (lemmaRemoveStrictlySortedNotPresentPreserves!2 (toList!9604 lm!209) a!499) lt!574235)))

(declare-fun bs!35863 () Bool)

(assert (= bs!35863 d!139317))

(assert (=> bs!35863 m!1166473))

(declare-fun m!1166539 () Bool)

(assert (=> bs!35863 m!1166539))

(assert (=> bs!35863 m!1166481))

(assert (=> b!1266877 d!139317))

(declare-fun d!139319 () Bool)

(declare-fun res!843497 () Bool)

(declare-fun e!721764 () Bool)

(assert (=> d!139319 (=> res!843497 e!721764)))

(assert (=> d!139319 (= res!843497 (and ((_ is Cons!28514) (toList!9604 lm!209)) (= (_1!10695 (h!29723 (toList!9604 lm!209))) a!499)))))

(assert (=> d!139319 (= (containsKey!669 (toList!9604 lm!209) a!499) e!721764)))

(declare-fun b!1266986 () Bool)

(declare-fun e!721765 () Bool)

(assert (=> b!1266986 (= e!721764 e!721765)))

(declare-fun res!843498 () Bool)

(assert (=> b!1266986 (=> (not res!843498) (not e!721765))))

(assert (=> b!1266986 (= res!843498 (and (or (not ((_ is Cons!28514) (toList!9604 lm!209))) (bvsle (_1!10695 (h!29723 (toList!9604 lm!209))) a!499)) ((_ is Cons!28514) (toList!9604 lm!209)) (bvslt (_1!10695 (h!29723 (toList!9604 lm!209))) a!499)))))

(declare-fun b!1266987 () Bool)

(assert (=> b!1266987 (= e!721765 (containsKey!669 (t!42052 (toList!9604 lm!209)) a!499))))

(assert (= (and d!139319 (not res!843497)) b!1266986))

(assert (= (and b!1266986 res!843498) b!1266987))

(declare-fun m!1166541 () Bool)

(assert (=> b!1266987 m!1166541))

(assert (=> b!1266876 d!139319))

(declare-fun d!139321 () Bool)

(declare-fun res!843504 () Bool)

(declare-fun e!721773 () Bool)

(assert (=> d!139321 (=> res!843504 e!721773)))

(assert (=> d!139321 (= res!843504 (or ((_ is Nil!28515) (toList!9604 lm!209)) ((_ is Nil!28515) (t!42052 (toList!9604 lm!209)))))))

(assert (=> d!139321 (= (isStrictlySorted!808 (toList!9604 lm!209)) e!721773)))

(declare-fun b!1266997 () Bool)

(declare-fun e!721774 () Bool)

(assert (=> b!1266997 (= e!721773 e!721774)))

(declare-fun res!843505 () Bool)

(assert (=> b!1266997 (=> (not res!843505) (not e!721774))))

(assert (=> b!1266997 (= res!843505 (bvslt (_1!10695 (h!29723 (toList!9604 lm!209))) (_1!10695 (h!29723 (t!42052 (toList!9604 lm!209))))))))

(declare-fun b!1266998 () Bool)

(assert (=> b!1266998 (= e!721774 (isStrictlySorted!808 (t!42052 (toList!9604 lm!209))))))

(assert (= (and d!139321 (not res!843504)) b!1266997))

(assert (= (and b!1266997 res!843505) b!1266998))

(declare-fun m!1166559 () Bool)

(assert (=> b!1266998 m!1166559))

(assert (=> b!1266875 d!139321))

(declare-fun b!1267011 () Bool)

(declare-fun e!721781 () Bool)

(declare-fun tp_is_empty!32551 () Bool)

(declare-fun tp!96520 () Bool)

(assert (=> b!1267011 (= e!721781 (and tp_is_empty!32551 tp!96520))))

(assert (=> b!1266878 (= tp!96510 e!721781)))

(assert (= (and b!1266878 ((_ is Cons!28514) (toList!9604 lm!209))) b!1267011))

(check-sat (not d!139299) (not d!139303) (not b!1267011) (not d!139285) (not d!139301) (not b!1266998) (not b!1266952) (not b!1266956) (not d!139317) (not b!1266921) (not b!1266987) tp_is_empty!32551 (not b!1266923))
(check-sat)
