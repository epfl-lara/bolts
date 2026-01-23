; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692562 () Bool)

(assert start!692562)

(declare-fun b!7115537 () Bool)

(declare-fun e!4275861 () Bool)

(declare-fun tp!1958093 () Bool)

(assert (=> b!7115537 (= e!4275861 tp!1958093)))

(declare-fun b!7115538 () Bool)

(declare-fun e!4275864 () Bool)

(declare-fun e!4275866 () Bool)

(assert (=> b!7115538 (= e!4275864 e!4275866)))

(declare-fun res!2903252 () Bool)

(assert (=> b!7115538 (=> (not res!2903252) (not e!4275866))))

(declare-datatypes ((C!36186 0))(
  ( (C!36187 (val!27799 Int)) )
))
(declare-datatypes ((Regex!17958 0))(
  ( (ElementMatch!17958 (c!1327959 C!36186)) (Concat!26803 (regOne!36428 Regex!17958) (regTwo!36428 Regex!17958)) (EmptyExpr!17958) (Star!17958 (reg!18287 Regex!17958)) (EmptyLang!17958) (Union!17958 (regOne!36429 Regex!17958) (regTwo!36429 Regex!17958)) )
))
(declare-fun r!11554 () Regex!17958)

(declare-fun validRegex!9231 (Regex!17958) Bool)

(assert (=> b!7115538 (= res!2903252 (validRegex!9231 (regTwo!36428 r!11554)))))

(declare-datatypes ((List!68919 0))(
  ( (Nil!68795) (Cons!68795 (h!75243 Regex!17958) (t!382766 List!68919)) )
))
(declare-datatypes ((Context!13904 0))(
  ( (Context!13905 (exprs!7452 List!68919)) )
))
(declare-fun lt!2560591 () Context!13904)

(declare-fun lt!2560587 () List!68919)

(assert (=> b!7115538 (= lt!2560591 (Context!13905 lt!2560587))))

(declare-fun c!9994 () Context!13904)

(declare-fun auxCtx!45 () Context!13904)

(declare-fun ++!16110 (List!68919 List!68919) List!68919)

(assert (=> b!7115538 (= lt!2560587 (++!16110 (exprs!7452 c!9994) (exprs!7452 auxCtx!45)))))

(declare-datatypes ((Unit!162587 0))(
  ( (Unit!162588) )
))
(declare-fun lt!2560595 () Unit!162587)

(declare-fun lambda!432324 () Int)

(declare-fun lemmaConcatPreservesForall!1243 (List!68919 List!68919 Int) Unit!162587)

(assert (=> b!7115538 (= lt!2560595 (lemmaConcatPreservesForall!1243 (exprs!7452 c!9994) (exprs!7452 auxCtx!45) lambda!432324))))

(declare-fun lt!2560589 () Unit!162587)

(assert (=> b!7115538 (= lt!2560589 (lemmaConcatPreservesForall!1243 (exprs!7452 c!9994) (exprs!7452 auxCtx!45) lambda!432324))))

(declare-fun b!7115539 () Bool)

(declare-fun e!4275859 () Bool)

(declare-fun tp!1958096 () Bool)

(assert (=> b!7115539 (= e!4275859 tp!1958096)))

(declare-fun b!7115540 () Bool)

(declare-fun e!4275865 () Bool)

(declare-fun inv!87759 (Context!13904) Bool)

(assert (=> b!7115540 (= e!4275865 (inv!87759 lt!2560591))))

(declare-fun lt!2560590 () Unit!162587)

(assert (=> b!7115540 (= lt!2560590 (lemmaConcatPreservesForall!1243 (exprs!7452 c!9994) (exprs!7452 auxCtx!45) lambda!432324))))

(declare-fun b!7115541 () Bool)

(declare-fun tp!1958094 () Bool)

(declare-fun tp!1958099 () Bool)

(assert (=> b!7115541 (= e!4275859 (and tp!1958094 tp!1958099))))

(declare-fun b!7115542 () Bool)

(declare-fun e!4275862 () Bool)

(assert (=> b!7115542 (= e!4275862 (not e!4275865))))

(declare-fun res!2903251 () Bool)

(assert (=> b!7115542 (=> res!2903251 e!4275865)))

(declare-fun a!1901 () C!36186)

(declare-fun lt!2560593 () (Set Context!13904))

(declare-fun appendTo!941 ((Set Context!13904) Context!13904) (Set Context!13904))

(declare-fun derivationStepZipperDown!2465 (Regex!17958 Context!13904 C!36186) (Set Context!13904))

(assert (=> b!7115542 (= res!2903251 (not (= lt!2560593 (appendTo!941 (derivationStepZipperDown!2465 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lt!2560597 () Unit!162587)

(assert (=> b!7115542 (= lt!2560597 (lemmaConcatPreservesForall!1243 (exprs!7452 c!9994) (exprs!7452 auxCtx!45) lambda!432324))))

(declare-fun lt!2560596 () Context!13904)

(declare-fun lt!2560588 () List!68919)

(assert (=> b!7115542 (= (derivationStepZipperDown!2465 (regOne!36428 r!11554) (Context!13905 (++!16110 lt!2560588 (exprs!7452 auxCtx!45))) a!1901) (appendTo!941 (derivationStepZipperDown!2465 (regOne!36428 r!11554) lt!2560596 a!1901) auxCtx!45))))

(declare-fun lt!2560592 () Unit!162587)

(assert (=> b!7115542 (= lt!2560592 (lemmaConcatPreservesForall!1243 lt!2560588 (exprs!7452 auxCtx!45) lambda!432324))))

(declare-fun lt!2560594 () Unit!162587)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!239 (Context!13904 Regex!17958 C!36186 Context!13904) Unit!162587)

(assert (=> b!7115542 (= lt!2560594 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!239 lt!2560596 (regOne!36428 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7115542 (= lt!2560596 (Context!13905 lt!2560588))))

(declare-fun $colon$colon!2810 (List!68919 Regex!17958) List!68919)

(assert (=> b!7115542 (= lt!2560588 ($colon$colon!2810 (exprs!7452 c!9994) (regTwo!36428 r!11554)))))

(declare-fun b!7115543 () Bool)

(declare-fun res!2903249 () Bool)

(assert (=> b!7115543 (=> (not res!2903249) (not e!4275864))))

(declare-fun e!4275860 () Bool)

(assert (=> b!7115543 (= res!2903249 e!4275860)))

(declare-fun res!2903250 () Bool)

(assert (=> b!7115543 (=> res!2903250 e!4275860)))

(assert (=> b!7115543 (= res!2903250 (not (is-Concat!26803 r!11554)))))

(declare-fun b!7115544 () Bool)

(declare-fun tp!1958098 () Bool)

(declare-fun tp!1958095 () Bool)

(assert (=> b!7115544 (= e!4275859 (and tp!1958098 tp!1958095))))

(declare-fun b!7115546 () Bool)

(declare-fun res!2903247 () Bool)

(assert (=> b!7115546 (=> (not res!2903247) (not e!4275864))))

(assert (=> b!7115546 (= res!2903247 (is-Concat!26803 r!11554))))

(declare-fun b!7115547 () Bool)

(declare-fun e!4275863 () Bool)

(declare-fun tp!1958097 () Bool)

(assert (=> b!7115547 (= e!4275863 tp!1958097)))

(declare-fun b!7115548 () Bool)

(declare-fun res!2903245 () Bool)

(assert (=> b!7115548 (=> (not res!2903245) (not e!4275864))))

(assert (=> b!7115548 (= res!2903245 (and (or (not (is-ElementMatch!17958 r!11554)) (not (= (c!1327959 r!11554) a!1901))) (not (is-Union!17958 r!11554))))))

(declare-fun b!7115549 () Bool)

(declare-fun tp_is_empty!45149 () Bool)

(assert (=> b!7115549 (= e!4275859 tp_is_empty!45149)))

(declare-fun b!7115550 () Bool)

(assert (=> b!7115550 (= e!4275866 e!4275862)))

(declare-fun res!2903246 () Bool)

(assert (=> b!7115550 (=> (not res!2903246) (not e!4275862))))

(assert (=> b!7115550 (= res!2903246 (= lt!2560593 (derivationStepZipperDown!2465 (regOne!36428 r!11554) (Context!13905 ($colon$colon!2810 lt!2560587 (regTwo!36428 r!11554))) a!1901)))))

(assert (=> b!7115550 (= lt!2560593 (derivationStepZipperDown!2465 r!11554 lt!2560591 a!1901))))

(declare-fun b!7115545 () Bool)

(declare-fun nullable!7595 (Regex!17958) Bool)

(assert (=> b!7115545 (= e!4275860 (not (nullable!7595 (regOne!36428 r!11554))))))

(declare-fun res!2903248 () Bool)

(assert (=> start!692562 (=> (not res!2903248) (not e!4275864))))

(assert (=> start!692562 (= res!2903248 (validRegex!9231 r!11554))))

(assert (=> start!692562 e!4275864))

(assert (=> start!692562 e!4275859))

(assert (=> start!692562 tp_is_empty!45149))

(assert (=> start!692562 (and (inv!87759 c!9994) e!4275861)))

(assert (=> start!692562 (and (inv!87759 auxCtx!45) e!4275863)))

(assert (= (and start!692562 res!2903248) b!7115548))

(assert (= (and b!7115548 res!2903245) b!7115543))

(assert (= (and b!7115543 (not res!2903250)) b!7115545))

(assert (= (and b!7115543 res!2903249) b!7115546))

(assert (= (and b!7115546 res!2903247) b!7115538))

(assert (= (and b!7115538 res!2903252) b!7115550))

(assert (= (and b!7115550 res!2903246) b!7115542))

(assert (= (and b!7115542 (not res!2903251)) b!7115540))

(assert (= (and start!692562 (is-ElementMatch!17958 r!11554)) b!7115549))

(assert (= (and start!692562 (is-Concat!26803 r!11554)) b!7115541))

(assert (= (and start!692562 (is-Star!17958 r!11554)) b!7115539))

(assert (= (and start!692562 (is-Union!17958 r!11554)) b!7115544))

(assert (= start!692562 b!7115537))

(assert (= start!692562 b!7115547))

(declare-fun m!7834796 () Bool)

(assert (=> start!692562 m!7834796))

(declare-fun m!7834798 () Bool)

(assert (=> start!692562 m!7834798))

(declare-fun m!7834800 () Bool)

(assert (=> start!692562 m!7834800))

(declare-fun m!7834802 () Bool)

(assert (=> b!7115550 m!7834802))

(declare-fun m!7834804 () Bool)

(assert (=> b!7115550 m!7834804))

(declare-fun m!7834806 () Bool)

(assert (=> b!7115550 m!7834806))

(declare-fun m!7834808 () Bool)

(assert (=> b!7115540 m!7834808))

(declare-fun m!7834810 () Bool)

(assert (=> b!7115540 m!7834810))

(declare-fun m!7834812 () Bool)

(assert (=> b!7115542 m!7834812))

(declare-fun m!7834814 () Bool)

(assert (=> b!7115542 m!7834814))

(declare-fun m!7834816 () Bool)

(assert (=> b!7115542 m!7834816))

(declare-fun m!7834818 () Bool)

(assert (=> b!7115542 m!7834818))

(declare-fun m!7834820 () Bool)

(assert (=> b!7115542 m!7834820))

(declare-fun m!7834822 () Bool)

(assert (=> b!7115542 m!7834822))

(assert (=> b!7115542 m!7834820))

(declare-fun m!7834824 () Bool)

(assert (=> b!7115542 m!7834824))

(assert (=> b!7115542 m!7834810))

(declare-fun m!7834826 () Bool)

(assert (=> b!7115542 m!7834826))

(assert (=> b!7115542 m!7834818))

(declare-fun m!7834828 () Bool)

(assert (=> b!7115542 m!7834828))

(declare-fun m!7834830 () Bool)

(assert (=> b!7115538 m!7834830))

(declare-fun m!7834832 () Bool)

(assert (=> b!7115538 m!7834832))

(assert (=> b!7115538 m!7834810))

(assert (=> b!7115538 m!7834810))

(declare-fun m!7834834 () Bool)

(assert (=> b!7115545 m!7834834))

(push 1)

(assert tp_is_empty!45149)

(assert (not b!7115539))

(assert (not b!7115538))

(assert (not b!7115537))

(assert (not b!7115544))

(assert (not b!7115547))

(assert (not b!7115541))

(assert (not b!7115540))

(assert (not b!7115545))

(assert (not start!692562))

(assert (not b!7115550))

(assert (not b!7115542))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!649769 () Bool)

(declare-fun call!649777 () (Set Context!13904))

(declare-fun call!649778 () (Set Context!13904))

(assert (=> bm!649769 (= call!649777 call!649778)))

(declare-fun b!7115615 () Bool)

(declare-fun e!4275903 () (Set Context!13904))

(assert (=> b!7115615 (= e!4275903 (as set.empty (Set Context!13904)))))

(declare-fun b!7115616 () Bool)

(declare-fun e!4275904 () (Set Context!13904))

(declare-fun e!4275907 () (Set Context!13904))

(assert (=> b!7115616 (= e!4275904 e!4275907)))

(declare-fun c!1327975 () Bool)

(assert (=> b!7115616 (= c!1327975 (is-Union!17958 (regOne!36428 r!11554)))))

(declare-fun bm!649770 () Bool)

(declare-fun call!649775 () List!68919)

(declare-fun call!649776 () List!68919)

(assert (=> bm!649770 (= call!649775 call!649776)))

(declare-fun b!7115617 () Bool)

(assert (=> b!7115617 (= e!4275903 call!649777)))

(declare-fun b!7115618 () Bool)

(declare-fun e!4275908 () (Set Context!13904))

(declare-fun call!649774 () (Set Context!13904))

(assert (=> b!7115618 (= e!4275908 (set.union call!649774 call!649778))))

(declare-fun bm!649771 () Bool)

(assert (=> bm!649771 (= call!649774 (derivationStepZipperDown!2465 (ite c!1327975 (regTwo!36429 (regOne!36428 r!11554)) (regOne!36428 (regOne!36428 r!11554))) (ite c!1327975 (Context!13905 ($colon$colon!2810 lt!2560587 (regTwo!36428 r!11554))) (Context!13905 call!649776)) a!1901))))

(declare-fun b!7115619 () Bool)

(declare-fun c!1327971 () Bool)

(declare-fun e!4275906 () Bool)

(assert (=> b!7115619 (= c!1327971 e!4275906)))

(declare-fun res!2903279 () Bool)

(assert (=> b!7115619 (=> (not res!2903279) (not e!4275906))))

(assert (=> b!7115619 (= res!2903279 (is-Concat!26803 (regOne!36428 r!11554)))))

(assert (=> b!7115619 (= e!4275907 e!4275908)))

(declare-fun b!7115620 () Bool)

(assert (=> b!7115620 (= e!4275906 (nullable!7595 (regOne!36428 (regOne!36428 r!11554))))))

(declare-fun bm!649772 () Bool)

(declare-fun c!1327974 () Bool)

(assert (=> bm!649772 (= call!649776 ($colon$colon!2810 (exprs!7452 (Context!13905 ($colon$colon!2810 lt!2560587 (regTwo!36428 r!11554)))) (ite (or c!1327971 c!1327974) (regTwo!36428 (regOne!36428 r!11554)) (regOne!36428 r!11554))))))

(declare-fun b!7115621 () Bool)

(declare-fun call!649779 () (Set Context!13904))

(assert (=> b!7115621 (= e!4275907 (set.union call!649779 call!649774))))

(declare-fun b!7115622 () Bool)

(assert (=> b!7115622 (= e!4275904 (set.insert (Context!13905 ($colon$colon!2810 lt!2560587 (regTwo!36428 r!11554))) (as set.empty (Set Context!13904))))))

(declare-fun b!7115623 () Bool)

(declare-fun e!4275905 () (Set Context!13904))

(assert (=> b!7115623 (= e!4275905 call!649777)))

(declare-fun b!7115624 () Bool)

(assert (=> b!7115624 (= e!4275908 e!4275905)))

(assert (=> b!7115624 (= c!1327974 (is-Concat!26803 (regOne!36428 r!11554)))))

(declare-fun b!7115625 () Bool)

(declare-fun c!1327973 () Bool)

(assert (=> b!7115625 (= c!1327973 (is-Star!17958 (regOne!36428 r!11554)))))

(assert (=> b!7115625 (= e!4275905 e!4275903)))

(declare-fun d!2221053 () Bool)

(declare-fun c!1327972 () Bool)

(assert (=> d!2221053 (= c!1327972 (and (is-ElementMatch!17958 (regOne!36428 r!11554)) (= (c!1327959 (regOne!36428 r!11554)) a!1901)))))

(assert (=> d!2221053 (= (derivationStepZipperDown!2465 (regOne!36428 r!11554) (Context!13905 ($colon$colon!2810 lt!2560587 (regTwo!36428 r!11554))) a!1901) e!4275904)))

(declare-fun bm!649773 () Bool)

(assert (=> bm!649773 (= call!649779 (derivationStepZipperDown!2465 (ite c!1327975 (regOne!36429 (regOne!36428 r!11554)) (ite c!1327971 (regTwo!36428 (regOne!36428 r!11554)) (ite c!1327974 (regOne!36428 (regOne!36428 r!11554)) (reg!18287 (regOne!36428 r!11554))))) (ite (or c!1327975 c!1327971) (Context!13905 ($colon$colon!2810 lt!2560587 (regTwo!36428 r!11554))) (Context!13905 call!649775)) a!1901))))

(declare-fun bm!649774 () Bool)

(assert (=> bm!649774 (= call!649778 call!649779)))

(assert (= (and d!2221053 c!1327972) b!7115622))

(assert (= (and d!2221053 (not c!1327972)) b!7115616))

(assert (= (and b!7115616 c!1327975) b!7115621))

(assert (= (and b!7115616 (not c!1327975)) b!7115619))

(assert (= (and b!7115619 res!2903279) b!7115620))

(assert (= (and b!7115619 c!1327971) b!7115618))

(assert (= (and b!7115619 (not c!1327971)) b!7115624))

(assert (= (and b!7115624 c!1327974) b!7115623))

(assert (= (and b!7115624 (not c!1327974)) b!7115625))

(assert (= (and b!7115625 c!1327973) b!7115617))

(assert (= (and b!7115625 (not c!1327973)) b!7115615))

(assert (= (or b!7115623 b!7115617) bm!649770))

(assert (= (or b!7115623 b!7115617) bm!649769))

(assert (= (or b!7115618 bm!649769) bm!649774))

(assert (= (or b!7115618 bm!649770) bm!649772))

(assert (= (or b!7115621 b!7115618) bm!649771))

(assert (= (or b!7115621 bm!649774) bm!649773))

(declare-fun m!7834878 () Bool)

(assert (=> bm!649772 m!7834878))

(declare-fun m!7834880 () Bool)

(assert (=> bm!649771 m!7834880))

(declare-fun m!7834882 () Bool)

(assert (=> b!7115620 m!7834882))

(declare-fun m!7834884 () Bool)

(assert (=> b!7115622 m!7834884))

(declare-fun m!7834886 () Bool)

(assert (=> bm!649773 m!7834886))

(assert (=> b!7115550 d!2221053))

(declare-fun d!2221059 () Bool)

(assert (=> d!2221059 (= ($colon$colon!2810 lt!2560587 (regTwo!36428 r!11554)) (Cons!68795 (regTwo!36428 r!11554) lt!2560587))))

(assert (=> b!7115550 d!2221059))

(declare-fun bm!649775 () Bool)

(declare-fun call!649783 () (Set Context!13904))

(declare-fun call!649784 () (Set Context!13904))

(assert (=> bm!649775 (= call!649783 call!649784)))

(declare-fun b!7115644 () Bool)

(declare-fun e!4275923 () (Set Context!13904))

(assert (=> b!7115644 (= e!4275923 (as set.empty (Set Context!13904)))))

(declare-fun b!7115645 () Bool)

(declare-fun e!4275924 () (Set Context!13904))

(declare-fun e!4275927 () (Set Context!13904))

(assert (=> b!7115645 (= e!4275924 e!4275927)))

(declare-fun c!1327984 () Bool)

(assert (=> b!7115645 (= c!1327984 (is-Union!17958 r!11554))))

(declare-fun bm!649776 () Bool)

(declare-fun call!649781 () List!68919)

(declare-fun call!649782 () List!68919)

(assert (=> bm!649776 (= call!649781 call!649782)))

(declare-fun b!7115646 () Bool)

(assert (=> b!7115646 (= e!4275923 call!649783)))

(declare-fun b!7115647 () Bool)

(declare-fun e!4275928 () (Set Context!13904))

(declare-fun call!649780 () (Set Context!13904))

(assert (=> b!7115647 (= e!4275928 (set.union call!649780 call!649784))))

(declare-fun bm!649777 () Bool)

(assert (=> bm!649777 (= call!649780 (derivationStepZipperDown!2465 (ite c!1327984 (regTwo!36429 r!11554) (regOne!36428 r!11554)) (ite c!1327984 lt!2560591 (Context!13905 call!649782)) a!1901))))

(declare-fun b!7115648 () Bool)

(declare-fun c!1327980 () Bool)

(declare-fun e!4275926 () Bool)

(assert (=> b!7115648 (= c!1327980 e!4275926)))

(declare-fun res!2903290 () Bool)

(assert (=> b!7115648 (=> (not res!2903290) (not e!4275926))))

(assert (=> b!7115648 (= res!2903290 (is-Concat!26803 r!11554))))

(assert (=> b!7115648 (= e!4275927 e!4275928)))

(declare-fun b!7115649 () Bool)

(assert (=> b!7115649 (= e!4275926 (nullable!7595 (regOne!36428 r!11554)))))

(declare-fun c!1327983 () Bool)

(declare-fun bm!649778 () Bool)

(assert (=> bm!649778 (= call!649782 ($colon$colon!2810 (exprs!7452 lt!2560591) (ite (or c!1327980 c!1327983) (regTwo!36428 r!11554) r!11554)))))

(declare-fun b!7115650 () Bool)

(declare-fun call!649785 () (Set Context!13904))

(assert (=> b!7115650 (= e!4275927 (set.union call!649785 call!649780))))

(declare-fun b!7115651 () Bool)

(assert (=> b!7115651 (= e!4275924 (set.insert lt!2560591 (as set.empty (Set Context!13904))))))

(declare-fun b!7115652 () Bool)

(declare-fun e!4275925 () (Set Context!13904))

(assert (=> b!7115652 (= e!4275925 call!649783)))

(declare-fun b!7115653 () Bool)

(assert (=> b!7115653 (= e!4275928 e!4275925)))

(assert (=> b!7115653 (= c!1327983 (is-Concat!26803 r!11554))))

(declare-fun b!7115654 () Bool)

(declare-fun c!1327982 () Bool)

(assert (=> b!7115654 (= c!1327982 (is-Star!17958 r!11554))))

(assert (=> b!7115654 (= e!4275925 e!4275923)))

(declare-fun d!2221061 () Bool)

(declare-fun c!1327981 () Bool)

(assert (=> d!2221061 (= c!1327981 (and (is-ElementMatch!17958 r!11554) (= (c!1327959 r!11554) a!1901)))))

(assert (=> d!2221061 (= (derivationStepZipperDown!2465 r!11554 lt!2560591 a!1901) e!4275924)))

(declare-fun bm!649779 () Bool)

(assert (=> bm!649779 (= call!649785 (derivationStepZipperDown!2465 (ite c!1327984 (regOne!36429 r!11554) (ite c!1327980 (regTwo!36428 r!11554) (ite c!1327983 (regOne!36428 r!11554) (reg!18287 r!11554)))) (ite (or c!1327984 c!1327980) lt!2560591 (Context!13905 call!649781)) a!1901))))

(declare-fun bm!649780 () Bool)

(assert (=> bm!649780 (= call!649784 call!649785)))

(assert (= (and d!2221061 c!1327981) b!7115651))

(assert (= (and d!2221061 (not c!1327981)) b!7115645))

(assert (= (and b!7115645 c!1327984) b!7115650))

(assert (= (and b!7115645 (not c!1327984)) b!7115648))

(assert (= (and b!7115648 res!2903290) b!7115649))

(assert (= (and b!7115648 c!1327980) b!7115647))

(assert (= (and b!7115648 (not c!1327980)) b!7115653))

(assert (= (and b!7115653 c!1327983) b!7115652))

(assert (= (and b!7115653 (not c!1327983)) b!7115654))

(assert (= (and b!7115654 c!1327982) b!7115646))

(assert (= (and b!7115654 (not c!1327982)) b!7115644))

(assert (= (or b!7115652 b!7115646) bm!649776))

(assert (= (or b!7115652 b!7115646) bm!649775))

(assert (= (or b!7115647 bm!649775) bm!649780))

(assert (= (or b!7115647 bm!649776) bm!649778))

(assert (= (or b!7115650 b!7115647) bm!649777))

(assert (= (or b!7115650 bm!649780) bm!649779))

(declare-fun m!7834888 () Bool)

(assert (=> bm!649778 m!7834888))

(declare-fun m!7834890 () Bool)

(assert (=> bm!649777 m!7834890))

(assert (=> b!7115649 m!7834834))

(declare-fun m!7834892 () Bool)

(assert (=> b!7115651 m!7834892))

(declare-fun m!7834894 () Bool)

(assert (=> bm!649779 m!7834894))

(assert (=> b!7115550 d!2221061))

(declare-fun b!7115673 () Bool)

(declare-fun e!4275948 () Bool)

(declare-fun call!649798 () Bool)

(assert (=> b!7115673 (= e!4275948 call!649798)))

(declare-fun c!1327989 () Bool)

(declare-fun c!1327990 () Bool)

(declare-fun call!649799 () Bool)

(declare-fun bm!649793 () Bool)

(assert (=> bm!649793 (= call!649799 (validRegex!9231 (ite c!1327990 (reg!18287 (regTwo!36428 r!11554)) (ite c!1327989 (regOne!36429 (regTwo!36428 r!11554)) (regTwo!36428 (regTwo!36428 r!11554))))))))

(declare-fun b!7115674 () Bool)

(declare-fun e!4275947 () Bool)

(declare-fun e!4275943 () Bool)

(assert (=> b!7115674 (= e!4275947 e!4275943)))

(assert (=> b!7115674 (= c!1327990 (is-Star!17958 (regTwo!36428 r!11554)))))

(declare-fun d!2221063 () Bool)

(declare-fun res!2903304 () Bool)

(assert (=> d!2221063 (=> res!2903304 e!4275947)))

(assert (=> d!2221063 (= res!2903304 (is-ElementMatch!17958 (regTwo!36428 r!11554)))))

(assert (=> d!2221063 (= (validRegex!9231 (regTwo!36428 r!11554)) e!4275947)))

(declare-fun b!7115675 () Bool)

(declare-fun e!4275945 () Bool)

(assert (=> b!7115675 (= e!4275943 e!4275945)))

(assert (=> b!7115675 (= c!1327989 (is-Union!17958 (regTwo!36428 r!11554)))))

(declare-fun b!7115676 () Bool)

(declare-fun e!4275946 () Bool)

(declare-fun call!649800 () Bool)

(assert (=> b!7115676 (= e!4275946 call!649800)))

(declare-fun b!7115677 () Bool)

(declare-fun res!2903305 () Bool)

(assert (=> b!7115677 (=> (not res!2903305) (not e!4275946))))

(assert (=> b!7115677 (= res!2903305 call!649798)))

(assert (=> b!7115677 (= e!4275945 e!4275946)))

(declare-fun bm!649794 () Bool)

(assert (=> bm!649794 (= call!649798 call!649799)))

(declare-fun bm!649795 () Bool)

(assert (=> bm!649795 (= call!649800 (validRegex!9231 (ite c!1327989 (regTwo!36429 (regTwo!36428 r!11554)) (regOne!36428 (regTwo!36428 r!11554)))))))

(declare-fun b!7115678 () Bool)

(declare-fun e!4275949 () Bool)

(assert (=> b!7115678 (= e!4275949 call!649799)))

(declare-fun b!7115679 () Bool)

(declare-fun e!4275944 () Bool)

(assert (=> b!7115679 (= e!4275944 e!4275948)))

(declare-fun res!2903303 () Bool)

(assert (=> b!7115679 (=> (not res!2903303) (not e!4275948))))

(assert (=> b!7115679 (= res!2903303 call!649800)))

(declare-fun b!7115680 () Bool)

(declare-fun res!2903302 () Bool)

(assert (=> b!7115680 (=> res!2903302 e!4275944)))

(assert (=> b!7115680 (= res!2903302 (not (is-Concat!26803 (regTwo!36428 r!11554))))))

(assert (=> b!7115680 (= e!4275945 e!4275944)))

(declare-fun b!7115681 () Bool)

(assert (=> b!7115681 (= e!4275943 e!4275949)))

(declare-fun res!2903301 () Bool)

(assert (=> b!7115681 (= res!2903301 (not (nullable!7595 (reg!18287 (regTwo!36428 r!11554)))))))

(assert (=> b!7115681 (=> (not res!2903301) (not e!4275949))))

(assert (= (and d!2221063 (not res!2903304)) b!7115674))

(assert (= (and b!7115674 c!1327990) b!7115681))

(assert (= (and b!7115674 (not c!1327990)) b!7115675))

(assert (= (and b!7115681 res!2903301) b!7115678))

(assert (= (and b!7115675 c!1327989) b!7115677))

(assert (= (and b!7115675 (not c!1327989)) b!7115680))

(assert (= (and b!7115677 res!2903305) b!7115676))

(assert (= (and b!7115680 (not res!2903302)) b!7115679))

(assert (= (and b!7115679 res!2903303) b!7115673))

(assert (= (or b!7115677 b!7115673) bm!649794))

(assert (= (or b!7115676 b!7115679) bm!649795))

(assert (= (or b!7115678 bm!649794) bm!649793))

(declare-fun m!7834896 () Bool)

(assert (=> bm!649793 m!7834896))

(declare-fun m!7834898 () Bool)

(assert (=> bm!649795 m!7834898))

(declare-fun m!7834900 () Bool)

(assert (=> b!7115681 m!7834900))

(assert (=> b!7115538 d!2221063))

(declare-fun e!4275961 () Bool)

(declare-fun b!7115702 () Bool)

(declare-fun lt!2560633 () List!68919)

(assert (=> b!7115702 (= e!4275961 (or (not (= (exprs!7452 auxCtx!45) Nil!68795)) (= lt!2560633 (exprs!7452 c!9994))))))

(declare-fun b!7115701 () Bool)

(declare-fun res!2903316 () Bool)

(assert (=> b!7115701 (=> (not res!2903316) (not e!4275961))))

(declare-fun size!41413 (List!68919) Int)

(assert (=> b!7115701 (= res!2903316 (= (size!41413 lt!2560633) (+ (size!41413 (exprs!7452 c!9994)) (size!41413 (exprs!7452 auxCtx!45)))))))

(declare-fun b!7115700 () Bool)

(declare-fun e!4275962 () List!68919)

(assert (=> b!7115700 (= e!4275962 (Cons!68795 (h!75243 (exprs!7452 c!9994)) (++!16110 (t!382766 (exprs!7452 c!9994)) (exprs!7452 auxCtx!45))))))

(declare-fun b!7115699 () Bool)

(assert (=> b!7115699 (= e!4275962 (exprs!7452 auxCtx!45))))

(declare-fun d!2221065 () Bool)

(assert (=> d!2221065 e!4275961))

(declare-fun res!2903315 () Bool)

(assert (=> d!2221065 (=> (not res!2903315) (not e!4275961))))

(declare-fun content!14038 (List!68919) (Set Regex!17958))

(assert (=> d!2221065 (= res!2903315 (= (content!14038 lt!2560633) (set.union (content!14038 (exprs!7452 c!9994)) (content!14038 (exprs!7452 auxCtx!45)))))))

(assert (=> d!2221065 (= lt!2560633 e!4275962)))

(declare-fun c!1327995 () Bool)

(assert (=> d!2221065 (= c!1327995 (is-Nil!68795 (exprs!7452 c!9994)))))

(assert (=> d!2221065 (= (++!16110 (exprs!7452 c!9994) (exprs!7452 auxCtx!45)) lt!2560633)))

(assert (= (and d!2221065 c!1327995) b!7115699))

(assert (= (and d!2221065 (not c!1327995)) b!7115700))

(assert (= (and d!2221065 res!2903315) b!7115701))

(assert (= (and b!7115701 res!2903316) b!7115702))

(declare-fun m!7834908 () Bool)

(assert (=> b!7115701 m!7834908))

(declare-fun m!7834910 () Bool)

(assert (=> b!7115701 m!7834910))

(declare-fun m!7834912 () Bool)

(assert (=> b!7115701 m!7834912))

(declare-fun m!7834914 () Bool)

(assert (=> b!7115700 m!7834914))

(declare-fun m!7834916 () Bool)

(assert (=> d!2221065 m!7834916))

(declare-fun m!7834918 () Bool)

(assert (=> d!2221065 m!7834918))

(declare-fun m!7834920 () Bool)

(assert (=> d!2221065 m!7834920))

(assert (=> b!7115538 d!2221065))

(declare-fun d!2221069 () Bool)

(declare-fun forall!16853 (List!68919 Int) Bool)

(assert (=> d!2221069 (forall!16853 (++!16110 (exprs!7452 c!9994) (exprs!7452 auxCtx!45)) lambda!432324)))

(declare-fun lt!2560636 () Unit!162587)

(declare-fun choose!54886 (List!68919 List!68919 Int) Unit!162587)

(assert (=> d!2221069 (= lt!2560636 (choose!54886 (exprs!7452 c!9994) (exprs!7452 auxCtx!45) lambda!432324))))

(assert (=> d!2221069 (forall!16853 (exprs!7452 c!9994) lambda!432324)))

(assert (=> d!2221069 (= (lemmaConcatPreservesForall!1243 (exprs!7452 c!9994) (exprs!7452 auxCtx!45) lambda!432324) lt!2560636)))

(declare-fun bs!1885494 () Bool)

(assert (= bs!1885494 d!2221069))

(assert (=> bs!1885494 m!7834832))

(assert (=> bs!1885494 m!7834832))

(declare-fun m!7834922 () Bool)

(assert (=> bs!1885494 m!7834922))

(declare-fun m!7834924 () Bool)

(assert (=> bs!1885494 m!7834924))

(declare-fun m!7834926 () Bool)

(assert (=> bs!1885494 m!7834926))

(assert (=> b!7115538 d!2221069))

(declare-fun bs!1885500 () Bool)

(declare-fun d!2221071 () Bool)

(assert (= bs!1885500 (and d!2221071 b!7115538)))

(declare-fun lambda!432342 () Int)

(assert (=> bs!1885500 (= lambda!432342 lambda!432324)))

(assert (=> d!2221071 (= (derivationStepZipperDown!2465 (regOne!36428 r!11554) (Context!13905 (++!16110 (exprs!7452 lt!2560596) (exprs!7452 auxCtx!45))) a!1901) (appendTo!941 (derivationStepZipperDown!2465 (regOne!36428 r!11554) lt!2560596 a!1901) auxCtx!45))))

(declare-fun lt!2560642 () Unit!162587)

(assert (=> d!2221071 (= lt!2560642 (lemmaConcatPreservesForall!1243 (exprs!7452 lt!2560596) (exprs!7452 auxCtx!45) lambda!432342))))

(declare-fun lt!2560641 () Unit!162587)

(declare-fun choose!54887 (Context!13904 Regex!17958 C!36186 Context!13904) Unit!162587)

(assert (=> d!2221071 (= lt!2560641 (choose!54887 lt!2560596 (regOne!36428 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2221071 (validRegex!9231 (regOne!36428 r!11554))))

(assert (=> d!2221071 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!239 lt!2560596 (regOne!36428 r!11554) a!1901 auxCtx!45) lt!2560641)))

(declare-fun bs!1885501 () Bool)

(assert (= bs!1885501 d!2221071))

(declare-fun m!7834932 () Bool)

(assert (=> bs!1885501 m!7834932))

(assert (=> bs!1885501 m!7834820))

(assert (=> bs!1885501 m!7834824))

(declare-fun m!7834934 () Bool)

(assert (=> bs!1885501 m!7834934))

(assert (=> bs!1885501 m!7834820))

(declare-fun m!7834936 () Bool)

(assert (=> bs!1885501 m!7834936))

(declare-fun m!7834938 () Bool)

(assert (=> bs!1885501 m!7834938))

(declare-fun m!7834940 () Bool)

(assert (=> bs!1885501 m!7834940))

(assert (=> b!7115542 d!2221071))

(declare-fun d!2221077 () Bool)

(assert (=> d!2221077 true))

(declare-fun lambda!432347 () Int)

(declare-fun map!16296 ((Set Context!13904) Int) (Set Context!13904))

(assert (=> d!2221077 (= (appendTo!941 (derivationStepZipperDown!2465 r!11554 c!9994 a!1901) auxCtx!45) (map!16296 (derivationStepZipperDown!2465 r!11554 c!9994 a!1901) lambda!432347))))

(declare-fun bs!1885502 () Bool)

(assert (= bs!1885502 d!2221077))

(assert (=> bs!1885502 m!7834818))

(declare-fun m!7834942 () Bool)

(assert (=> bs!1885502 m!7834942))

(assert (=> b!7115542 d!2221077))

(declare-fun bs!1885503 () Bool)

(declare-fun d!2221079 () Bool)

(assert (= bs!1885503 (and d!2221079 d!2221077)))

(declare-fun lambda!432348 () Int)

(assert (=> bs!1885503 (= lambda!432348 lambda!432347)))

(assert (=> d!2221079 true))

(assert (=> d!2221079 (= (appendTo!941 (derivationStepZipperDown!2465 (regOne!36428 r!11554) lt!2560596 a!1901) auxCtx!45) (map!16296 (derivationStepZipperDown!2465 (regOne!36428 r!11554) lt!2560596 a!1901) lambda!432348))))

(declare-fun bs!1885504 () Bool)

(assert (= bs!1885504 d!2221079))

(assert (=> bs!1885504 m!7834820))

(declare-fun m!7834944 () Bool)

(assert (=> bs!1885504 m!7834944))

(assert (=> b!7115542 d!2221079))

(declare-fun bm!649799 () Bool)

(declare-fun call!649807 () (Set Context!13904))

(declare-fun call!649808 () (Set Context!13904))

(assert (=> bm!649799 (= call!649807 call!649808)))

(declare-fun b!7115713 () Bool)

(declare-fun e!4275967 () (Set Context!13904))

(assert (=> b!7115713 (= e!4275967 (as set.empty (Set Context!13904)))))

(declare-fun b!7115714 () Bool)

(declare-fun e!4275968 () (Set Context!13904))

(declare-fun e!4275971 () (Set Context!13904))

(assert (=> b!7115714 (= e!4275968 e!4275971)))

(declare-fun c!1328004 () Bool)

(assert (=> b!7115714 (= c!1328004 (is-Union!17958 r!11554))))

(declare-fun bm!649800 () Bool)

(declare-fun call!649805 () List!68919)

(declare-fun call!649806 () List!68919)

(assert (=> bm!649800 (= call!649805 call!649806)))

(declare-fun b!7115715 () Bool)

(assert (=> b!7115715 (= e!4275967 call!649807)))

(declare-fun b!7115716 () Bool)

(declare-fun e!4275972 () (Set Context!13904))

(declare-fun call!649804 () (Set Context!13904))

(assert (=> b!7115716 (= e!4275972 (set.union call!649804 call!649808))))

(declare-fun bm!649801 () Bool)

(assert (=> bm!649801 (= call!649804 (derivationStepZipperDown!2465 (ite c!1328004 (regTwo!36429 r!11554) (regOne!36428 r!11554)) (ite c!1328004 c!9994 (Context!13905 call!649806)) a!1901))))

(declare-fun b!7115717 () Bool)

(declare-fun c!1328000 () Bool)

(declare-fun e!4275970 () Bool)

(assert (=> b!7115717 (= c!1328000 e!4275970)))

(declare-fun res!2903321 () Bool)

(assert (=> b!7115717 (=> (not res!2903321) (not e!4275970))))

(assert (=> b!7115717 (= res!2903321 (is-Concat!26803 r!11554))))

(assert (=> b!7115717 (= e!4275971 e!4275972)))

(declare-fun b!7115718 () Bool)

(assert (=> b!7115718 (= e!4275970 (nullable!7595 (regOne!36428 r!11554)))))

(declare-fun c!1328003 () Bool)

(declare-fun bm!649802 () Bool)

(assert (=> bm!649802 (= call!649806 ($colon$colon!2810 (exprs!7452 c!9994) (ite (or c!1328000 c!1328003) (regTwo!36428 r!11554) r!11554)))))

(declare-fun b!7115719 () Bool)

(declare-fun call!649809 () (Set Context!13904))

(assert (=> b!7115719 (= e!4275971 (set.union call!649809 call!649804))))

(declare-fun b!7115720 () Bool)

(assert (=> b!7115720 (= e!4275968 (set.insert c!9994 (as set.empty (Set Context!13904))))))

(declare-fun b!7115721 () Bool)

(declare-fun e!4275969 () (Set Context!13904))

(assert (=> b!7115721 (= e!4275969 call!649807)))

(declare-fun b!7115722 () Bool)

(assert (=> b!7115722 (= e!4275972 e!4275969)))

(assert (=> b!7115722 (= c!1328003 (is-Concat!26803 r!11554))))

(declare-fun b!7115723 () Bool)

(declare-fun c!1328002 () Bool)

(assert (=> b!7115723 (= c!1328002 (is-Star!17958 r!11554))))

(assert (=> b!7115723 (= e!4275969 e!4275967)))

(declare-fun d!2221081 () Bool)

(declare-fun c!1328001 () Bool)

(assert (=> d!2221081 (= c!1328001 (and (is-ElementMatch!17958 r!11554) (= (c!1327959 r!11554) a!1901)))))

(assert (=> d!2221081 (= (derivationStepZipperDown!2465 r!11554 c!9994 a!1901) e!4275968)))

(declare-fun bm!649803 () Bool)

(assert (=> bm!649803 (= call!649809 (derivationStepZipperDown!2465 (ite c!1328004 (regOne!36429 r!11554) (ite c!1328000 (regTwo!36428 r!11554) (ite c!1328003 (regOne!36428 r!11554) (reg!18287 r!11554)))) (ite (or c!1328004 c!1328000) c!9994 (Context!13905 call!649805)) a!1901))))

(declare-fun bm!649804 () Bool)

(assert (=> bm!649804 (= call!649808 call!649809)))

(assert (= (and d!2221081 c!1328001) b!7115720))

(assert (= (and d!2221081 (not c!1328001)) b!7115714))

(assert (= (and b!7115714 c!1328004) b!7115719))

(assert (= (and b!7115714 (not c!1328004)) b!7115717))

(assert (= (and b!7115717 res!2903321) b!7115718))

(assert (= (and b!7115717 c!1328000) b!7115716))

(assert (= (and b!7115717 (not c!1328000)) b!7115722))

(assert (= (and b!7115722 c!1328003) b!7115721))

(assert (= (and b!7115722 (not c!1328003)) b!7115723))

(assert (= (and b!7115723 c!1328002) b!7115715))

(assert (= (and b!7115723 (not c!1328002)) b!7115713))

(assert (= (or b!7115721 b!7115715) bm!649800))

(assert (= (or b!7115721 b!7115715) bm!649799))

(assert (= (or b!7115716 bm!649799) bm!649804))

(assert (= (or b!7115716 bm!649800) bm!649802))

(assert (= (or b!7115719 b!7115716) bm!649801))

(assert (= (or b!7115719 bm!649804) bm!649803))

(declare-fun m!7834946 () Bool)

(assert (=> bm!649802 m!7834946))

(declare-fun m!7834948 () Bool)

(assert (=> bm!649801 m!7834948))

(assert (=> b!7115718 m!7834834))

(declare-fun m!7834950 () Bool)

(assert (=> b!7115720 m!7834950))

(declare-fun m!7834952 () Bool)

(assert (=> bm!649803 m!7834952))

(assert (=> b!7115542 d!2221081))

(declare-fun e!4275973 () Bool)

(declare-fun lt!2560647 () List!68919)

(declare-fun b!7115727 () Bool)

(assert (=> b!7115727 (= e!4275973 (or (not (= (exprs!7452 auxCtx!45) Nil!68795)) (= lt!2560647 lt!2560588)))))

(declare-fun b!7115726 () Bool)

(declare-fun res!2903323 () Bool)

(assert (=> b!7115726 (=> (not res!2903323) (not e!4275973))))

(assert (=> b!7115726 (= res!2903323 (= (size!41413 lt!2560647) (+ (size!41413 lt!2560588) (size!41413 (exprs!7452 auxCtx!45)))))))

(declare-fun b!7115725 () Bool)

(declare-fun e!4275974 () List!68919)

(assert (=> b!7115725 (= e!4275974 (Cons!68795 (h!75243 lt!2560588) (++!16110 (t!382766 lt!2560588) (exprs!7452 auxCtx!45))))))

(declare-fun b!7115724 () Bool)

(assert (=> b!7115724 (= e!4275974 (exprs!7452 auxCtx!45))))

(declare-fun d!2221083 () Bool)

(assert (=> d!2221083 e!4275973))

(declare-fun res!2903322 () Bool)

(assert (=> d!2221083 (=> (not res!2903322) (not e!4275973))))

(assert (=> d!2221083 (= res!2903322 (= (content!14038 lt!2560647) (set.union (content!14038 lt!2560588) (content!14038 (exprs!7452 auxCtx!45)))))))

(assert (=> d!2221083 (= lt!2560647 e!4275974)))

(declare-fun c!1328005 () Bool)

(assert (=> d!2221083 (= c!1328005 (is-Nil!68795 lt!2560588))))

(assert (=> d!2221083 (= (++!16110 lt!2560588 (exprs!7452 auxCtx!45)) lt!2560647)))

(assert (= (and d!2221083 c!1328005) b!7115724))

(assert (= (and d!2221083 (not c!1328005)) b!7115725))

(assert (= (and d!2221083 res!2903322) b!7115726))

(assert (= (and b!7115726 res!2903323) b!7115727))

(declare-fun m!7834954 () Bool)

(assert (=> b!7115726 m!7834954))

(declare-fun m!7834956 () Bool)

(assert (=> b!7115726 m!7834956))

(assert (=> b!7115726 m!7834912))

(declare-fun m!7834958 () Bool)

(assert (=> b!7115725 m!7834958))

(declare-fun m!7834960 () Bool)

(assert (=> d!2221083 m!7834960))

(declare-fun m!7834962 () Bool)

(assert (=> d!2221083 m!7834962))

(assert (=> d!2221083 m!7834920))

(assert (=> b!7115542 d!2221083))

(declare-fun d!2221085 () Bool)

(assert (=> d!2221085 (forall!16853 (++!16110 lt!2560588 (exprs!7452 auxCtx!45)) lambda!432324)))

(declare-fun lt!2560649 () Unit!162587)

(assert (=> d!2221085 (= lt!2560649 (choose!54886 lt!2560588 (exprs!7452 auxCtx!45) lambda!432324))))

(assert (=> d!2221085 (forall!16853 lt!2560588 lambda!432324)))

(assert (=> d!2221085 (= (lemmaConcatPreservesForall!1243 lt!2560588 (exprs!7452 auxCtx!45) lambda!432324) lt!2560649)))

(declare-fun bs!1885505 () Bool)

(assert (= bs!1885505 d!2221085))

(assert (=> bs!1885505 m!7834822))

(assert (=> bs!1885505 m!7834822))

(declare-fun m!7834964 () Bool)

(assert (=> bs!1885505 m!7834964))

(declare-fun m!7834966 () Bool)

(assert (=> bs!1885505 m!7834966))

(declare-fun m!7834968 () Bool)

(assert (=> bs!1885505 m!7834968))

(assert (=> b!7115542 d!2221085))

(declare-fun bm!649805 () Bool)

(declare-fun call!649813 () (Set Context!13904))

(declare-fun call!649814 () (Set Context!13904))

(assert (=> bm!649805 (= call!649813 call!649814)))

(declare-fun b!7115732 () Bool)

(declare-fun e!4275977 () (Set Context!13904))

(assert (=> b!7115732 (= e!4275977 (as set.empty (Set Context!13904)))))

(declare-fun b!7115733 () Bool)

(declare-fun e!4275978 () (Set Context!13904))

(declare-fun e!4275981 () (Set Context!13904))

(assert (=> b!7115733 (= e!4275978 e!4275981)))

(declare-fun c!1328011 () Bool)

(assert (=> b!7115733 (= c!1328011 (is-Union!17958 (regOne!36428 r!11554)))))

(declare-fun bm!649806 () Bool)

(declare-fun call!649811 () List!68919)

(declare-fun call!649812 () List!68919)

(assert (=> bm!649806 (= call!649811 call!649812)))

(declare-fun b!7115734 () Bool)

(assert (=> b!7115734 (= e!4275977 call!649813)))

(declare-fun b!7115735 () Bool)

(declare-fun e!4275982 () (Set Context!13904))

(declare-fun call!649810 () (Set Context!13904))

(assert (=> b!7115735 (= e!4275982 (set.union call!649810 call!649814))))

(declare-fun bm!649807 () Bool)

(assert (=> bm!649807 (= call!649810 (derivationStepZipperDown!2465 (ite c!1328011 (regTwo!36429 (regOne!36428 r!11554)) (regOne!36428 (regOne!36428 r!11554))) (ite c!1328011 (Context!13905 (++!16110 lt!2560588 (exprs!7452 auxCtx!45))) (Context!13905 call!649812)) a!1901))))

(declare-fun b!7115736 () Bool)

(declare-fun c!1328007 () Bool)

(declare-fun e!4275980 () Bool)

(assert (=> b!7115736 (= c!1328007 e!4275980)))

(declare-fun res!2903326 () Bool)

(assert (=> b!7115736 (=> (not res!2903326) (not e!4275980))))

(assert (=> b!7115736 (= res!2903326 (is-Concat!26803 (regOne!36428 r!11554)))))

(assert (=> b!7115736 (= e!4275981 e!4275982)))

(declare-fun b!7115737 () Bool)

(assert (=> b!7115737 (= e!4275980 (nullable!7595 (regOne!36428 (regOne!36428 r!11554))))))

(declare-fun bm!649808 () Bool)

(declare-fun c!1328010 () Bool)

(assert (=> bm!649808 (= call!649812 ($colon$colon!2810 (exprs!7452 (Context!13905 (++!16110 lt!2560588 (exprs!7452 auxCtx!45)))) (ite (or c!1328007 c!1328010) (regTwo!36428 (regOne!36428 r!11554)) (regOne!36428 r!11554))))))

(declare-fun b!7115738 () Bool)

(declare-fun call!649815 () (Set Context!13904))

(assert (=> b!7115738 (= e!4275981 (set.union call!649815 call!649810))))

(declare-fun b!7115739 () Bool)

(assert (=> b!7115739 (= e!4275978 (set.insert (Context!13905 (++!16110 lt!2560588 (exprs!7452 auxCtx!45))) (as set.empty (Set Context!13904))))))

(declare-fun b!7115740 () Bool)

(declare-fun e!4275979 () (Set Context!13904))

(assert (=> b!7115740 (= e!4275979 call!649813)))

(declare-fun b!7115741 () Bool)

(assert (=> b!7115741 (= e!4275982 e!4275979)))

(assert (=> b!7115741 (= c!1328010 (is-Concat!26803 (regOne!36428 r!11554)))))

(declare-fun b!7115742 () Bool)

(declare-fun c!1328009 () Bool)

(assert (=> b!7115742 (= c!1328009 (is-Star!17958 (regOne!36428 r!11554)))))

(assert (=> b!7115742 (= e!4275979 e!4275977)))

(declare-fun d!2221087 () Bool)

(declare-fun c!1328008 () Bool)

(assert (=> d!2221087 (= c!1328008 (and (is-ElementMatch!17958 (regOne!36428 r!11554)) (= (c!1327959 (regOne!36428 r!11554)) a!1901)))))

(assert (=> d!2221087 (= (derivationStepZipperDown!2465 (regOne!36428 r!11554) (Context!13905 (++!16110 lt!2560588 (exprs!7452 auxCtx!45))) a!1901) e!4275978)))

(declare-fun bm!649809 () Bool)

(assert (=> bm!649809 (= call!649815 (derivationStepZipperDown!2465 (ite c!1328011 (regOne!36429 (regOne!36428 r!11554)) (ite c!1328007 (regTwo!36428 (regOne!36428 r!11554)) (ite c!1328010 (regOne!36428 (regOne!36428 r!11554)) (reg!18287 (regOne!36428 r!11554))))) (ite (or c!1328011 c!1328007) (Context!13905 (++!16110 lt!2560588 (exprs!7452 auxCtx!45))) (Context!13905 call!649811)) a!1901))))

(declare-fun bm!649810 () Bool)

(assert (=> bm!649810 (= call!649814 call!649815)))

(assert (= (and d!2221087 c!1328008) b!7115739))

(assert (= (and d!2221087 (not c!1328008)) b!7115733))

(assert (= (and b!7115733 c!1328011) b!7115738))

(assert (= (and b!7115733 (not c!1328011)) b!7115736))

(assert (= (and b!7115736 res!2903326) b!7115737))

(assert (= (and b!7115736 c!1328007) b!7115735))

(assert (= (and b!7115736 (not c!1328007)) b!7115741))

(assert (= (and b!7115741 c!1328010) b!7115740))

(assert (= (and b!7115741 (not c!1328010)) b!7115742))

(assert (= (and b!7115742 c!1328009) b!7115734))

(assert (= (and b!7115742 (not c!1328009)) b!7115732))

(assert (= (or b!7115740 b!7115734) bm!649806))

(assert (= (or b!7115740 b!7115734) bm!649805))

(assert (= (or b!7115735 bm!649805) bm!649810))

(assert (= (or b!7115735 bm!649806) bm!649808))

(assert (= (or b!7115738 b!7115735) bm!649807))

(assert (= (or b!7115738 bm!649810) bm!649809))

(declare-fun m!7834984 () Bool)

(assert (=> bm!649808 m!7834984))

(declare-fun m!7834986 () Bool)

(assert (=> bm!649807 m!7834986))

(assert (=> b!7115737 m!7834882))

(declare-fun m!7834988 () Bool)

(assert (=> b!7115739 m!7834988))

(declare-fun m!7834990 () Bool)

(assert (=> bm!649809 m!7834990))

(assert (=> b!7115542 d!2221087))

(declare-fun bm!649811 () Bool)

(declare-fun call!649819 () (Set Context!13904))

(declare-fun call!649820 () (Set Context!13904))

(assert (=> bm!649811 (= call!649819 call!649820)))

(declare-fun b!7115743 () Bool)

(declare-fun e!4275983 () (Set Context!13904))

(assert (=> b!7115743 (= e!4275983 (as set.empty (Set Context!13904)))))

(declare-fun b!7115744 () Bool)

(declare-fun e!4275984 () (Set Context!13904))

(declare-fun e!4275987 () (Set Context!13904))

(assert (=> b!7115744 (= e!4275984 e!4275987)))

(declare-fun c!1328016 () Bool)

(assert (=> b!7115744 (= c!1328016 (is-Union!17958 (regOne!36428 r!11554)))))

(declare-fun bm!649812 () Bool)

(declare-fun call!649817 () List!68919)

(declare-fun call!649818 () List!68919)

(assert (=> bm!649812 (= call!649817 call!649818)))

(declare-fun b!7115745 () Bool)

(assert (=> b!7115745 (= e!4275983 call!649819)))

(declare-fun b!7115746 () Bool)

(declare-fun e!4275988 () (Set Context!13904))

(declare-fun call!649816 () (Set Context!13904))

(assert (=> b!7115746 (= e!4275988 (set.union call!649816 call!649820))))

(declare-fun bm!649813 () Bool)

(assert (=> bm!649813 (= call!649816 (derivationStepZipperDown!2465 (ite c!1328016 (regTwo!36429 (regOne!36428 r!11554)) (regOne!36428 (regOne!36428 r!11554))) (ite c!1328016 lt!2560596 (Context!13905 call!649818)) a!1901))))

(declare-fun b!7115747 () Bool)

(declare-fun c!1328012 () Bool)

(declare-fun e!4275986 () Bool)

(assert (=> b!7115747 (= c!1328012 e!4275986)))

(declare-fun res!2903327 () Bool)

(assert (=> b!7115747 (=> (not res!2903327) (not e!4275986))))

(assert (=> b!7115747 (= res!2903327 (is-Concat!26803 (regOne!36428 r!11554)))))

(assert (=> b!7115747 (= e!4275987 e!4275988)))

(declare-fun b!7115748 () Bool)

(assert (=> b!7115748 (= e!4275986 (nullable!7595 (regOne!36428 (regOne!36428 r!11554))))))

(declare-fun c!1328015 () Bool)

(declare-fun bm!649814 () Bool)

(assert (=> bm!649814 (= call!649818 ($colon$colon!2810 (exprs!7452 lt!2560596) (ite (or c!1328012 c!1328015) (regTwo!36428 (regOne!36428 r!11554)) (regOne!36428 r!11554))))))

(declare-fun b!7115749 () Bool)

(declare-fun call!649821 () (Set Context!13904))

(assert (=> b!7115749 (= e!4275987 (set.union call!649821 call!649816))))

(declare-fun b!7115750 () Bool)

(assert (=> b!7115750 (= e!4275984 (set.insert lt!2560596 (as set.empty (Set Context!13904))))))

(declare-fun b!7115751 () Bool)

(declare-fun e!4275985 () (Set Context!13904))

(assert (=> b!7115751 (= e!4275985 call!649819)))

(declare-fun b!7115752 () Bool)

(assert (=> b!7115752 (= e!4275988 e!4275985)))

(assert (=> b!7115752 (= c!1328015 (is-Concat!26803 (regOne!36428 r!11554)))))

(declare-fun b!7115753 () Bool)

(declare-fun c!1328014 () Bool)

(assert (=> b!7115753 (= c!1328014 (is-Star!17958 (regOne!36428 r!11554)))))

(assert (=> b!7115753 (= e!4275985 e!4275983)))

(declare-fun d!2221091 () Bool)

(declare-fun c!1328013 () Bool)

(assert (=> d!2221091 (= c!1328013 (and (is-ElementMatch!17958 (regOne!36428 r!11554)) (= (c!1327959 (regOne!36428 r!11554)) a!1901)))))

(assert (=> d!2221091 (= (derivationStepZipperDown!2465 (regOne!36428 r!11554) lt!2560596 a!1901) e!4275984)))

(declare-fun bm!649815 () Bool)

(assert (=> bm!649815 (= call!649821 (derivationStepZipperDown!2465 (ite c!1328016 (regOne!36429 (regOne!36428 r!11554)) (ite c!1328012 (regTwo!36428 (regOne!36428 r!11554)) (ite c!1328015 (regOne!36428 (regOne!36428 r!11554)) (reg!18287 (regOne!36428 r!11554))))) (ite (or c!1328016 c!1328012) lt!2560596 (Context!13905 call!649817)) a!1901))))

(declare-fun bm!649816 () Bool)

(assert (=> bm!649816 (= call!649820 call!649821)))

(assert (= (and d!2221091 c!1328013) b!7115750))

(assert (= (and d!2221091 (not c!1328013)) b!7115744))

(assert (= (and b!7115744 c!1328016) b!7115749))

(assert (= (and b!7115744 (not c!1328016)) b!7115747))

(assert (= (and b!7115747 res!2903327) b!7115748))

(assert (= (and b!7115747 c!1328012) b!7115746))

(assert (= (and b!7115747 (not c!1328012)) b!7115752))

(assert (= (and b!7115752 c!1328015) b!7115751))

(assert (= (and b!7115752 (not c!1328015)) b!7115753))

(assert (= (and b!7115753 c!1328014) b!7115745))

(assert (= (and b!7115753 (not c!1328014)) b!7115743))

(assert (= (or b!7115751 b!7115745) bm!649812))

(assert (= (or b!7115751 b!7115745) bm!649811))

(assert (= (or b!7115746 bm!649811) bm!649816))

(assert (= (or b!7115746 bm!649812) bm!649814))

(assert (= (or b!7115749 b!7115746) bm!649813))

(assert (= (or b!7115749 bm!649816) bm!649815))

(declare-fun m!7834992 () Bool)

(assert (=> bm!649814 m!7834992))

(declare-fun m!7834994 () Bool)

(assert (=> bm!649813 m!7834994))

(assert (=> b!7115748 m!7834882))

(declare-fun m!7834996 () Bool)

(assert (=> b!7115750 m!7834996))

(declare-fun m!7834998 () Bool)

(assert (=> bm!649815 m!7834998))

(assert (=> b!7115542 d!2221091))

(declare-fun d!2221093 () Bool)

(assert (=> d!2221093 (= ($colon$colon!2810 (exprs!7452 c!9994) (regTwo!36428 r!11554)) (Cons!68795 (regTwo!36428 r!11554) (exprs!7452 c!9994)))))

(assert (=> b!7115542 d!2221093))

(assert (=> b!7115542 d!2221069))

(declare-fun d!2221095 () Bool)

(declare-fun nullableFct!2945 (Regex!17958) Bool)

(assert (=> d!2221095 (= (nullable!7595 (regOne!36428 r!11554)) (nullableFct!2945 (regOne!36428 r!11554)))))

(declare-fun bs!1885506 () Bool)

(assert (= bs!1885506 d!2221095))

(declare-fun m!7835000 () Bool)

(assert (=> bs!1885506 m!7835000))

(assert (=> b!7115545 d!2221095))

(declare-fun b!7115754 () Bool)

(declare-fun e!4275994 () Bool)

(declare-fun call!649822 () Bool)

(assert (=> b!7115754 (= e!4275994 call!649822)))

(declare-fun bm!649817 () Bool)

(declare-fun c!1328018 () Bool)

(declare-fun call!649823 () Bool)

(declare-fun c!1328017 () Bool)

(assert (=> bm!649817 (= call!649823 (validRegex!9231 (ite c!1328018 (reg!18287 r!11554) (ite c!1328017 (regOne!36429 r!11554) (regTwo!36428 r!11554)))))))

(declare-fun b!7115755 () Bool)

(declare-fun e!4275993 () Bool)

(declare-fun e!4275989 () Bool)

(assert (=> b!7115755 (= e!4275993 e!4275989)))

(assert (=> b!7115755 (= c!1328018 (is-Star!17958 r!11554))))

(declare-fun d!2221097 () Bool)

(declare-fun res!2903331 () Bool)

(assert (=> d!2221097 (=> res!2903331 e!4275993)))

(assert (=> d!2221097 (= res!2903331 (is-ElementMatch!17958 r!11554))))

(assert (=> d!2221097 (= (validRegex!9231 r!11554) e!4275993)))

(declare-fun b!7115756 () Bool)

(declare-fun e!4275991 () Bool)

(assert (=> b!7115756 (= e!4275989 e!4275991)))

(assert (=> b!7115756 (= c!1328017 (is-Union!17958 r!11554))))

(declare-fun b!7115757 () Bool)

(declare-fun e!4275992 () Bool)

(declare-fun call!649824 () Bool)

(assert (=> b!7115757 (= e!4275992 call!649824)))

(declare-fun b!7115758 () Bool)

(declare-fun res!2903332 () Bool)

(assert (=> b!7115758 (=> (not res!2903332) (not e!4275992))))

(assert (=> b!7115758 (= res!2903332 call!649822)))

(assert (=> b!7115758 (= e!4275991 e!4275992)))

(declare-fun bm!649818 () Bool)

(assert (=> bm!649818 (= call!649822 call!649823)))

(declare-fun bm!649819 () Bool)

(assert (=> bm!649819 (= call!649824 (validRegex!9231 (ite c!1328017 (regTwo!36429 r!11554) (regOne!36428 r!11554))))))

(declare-fun b!7115759 () Bool)

(declare-fun e!4275995 () Bool)

(assert (=> b!7115759 (= e!4275995 call!649823)))

(declare-fun b!7115760 () Bool)

(declare-fun e!4275990 () Bool)

(assert (=> b!7115760 (= e!4275990 e!4275994)))

(declare-fun res!2903330 () Bool)

(assert (=> b!7115760 (=> (not res!2903330) (not e!4275994))))

(assert (=> b!7115760 (= res!2903330 call!649824)))

(declare-fun b!7115761 () Bool)

(declare-fun res!2903329 () Bool)

(assert (=> b!7115761 (=> res!2903329 e!4275990)))

(assert (=> b!7115761 (= res!2903329 (not (is-Concat!26803 r!11554)))))

(assert (=> b!7115761 (= e!4275991 e!4275990)))

(declare-fun b!7115762 () Bool)

(assert (=> b!7115762 (= e!4275989 e!4275995)))

(declare-fun res!2903328 () Bool)

(assert (=> b!7115762 (= res!2903328 (not (nullable!7595 (reg!18287 r!11554))))))

(assert (=> b!7115762 (=> (not res!2903328) (not e!4275995))))

(assert (= (and d!2221097 (not res!2903331)) b!7115755))

(assert (= (and b!7115755 c!1328018) b!7115762))

(assert (= (and b!7115755 (not c!1328018)) b!7115756))

(assert (= (and b!7115762 res!2903328) b!7115759))

(assert (= (and b!7115756 c!1328017) b!7115758))

(assert (= (and b!7115756 (not c!1328017)) b!7115761))

(assert (= (and b!7115758 res!2903332) b!7115757))

(assert (= (and b!7115761 (not res!2903329)) b!7115760))

(assert (= (and b!7115760 res!2903330) b!7115754))

(assert (= (or b!7115758 b!7115754) bm!649818))

(assert (= (or b!7115757 b!7115760) bm!649819))

(assert (= (or b!7115759 bm!649818) bm!649817))

(declare-fun m!7835002 () Bool)

(assert (=> bm!649817 m!7835002))

(declare-fun m!7835004 () Bool)

(assert (=> bm!649819 m!7835004))

(declare-fun m!7835006 () Bool)

(assert (=> b!7115762 m!7835006))

(assert (=> start!692562 d!2221097))

(declare-fun bs!1885507 () Bool)

(declare-fun d!2221099 () Bool)

(assert (= bs!1885507 (and d!2221099 b!7115538)))

(declare-fun lambda!432351 () Int)

(assert (=> bs!1885507 (= lambda!432351 lambda!432324)))

(declare-fun bs!1885508 () Bool)

(assert (= bs!1885508 (and d!2221099 d!2221071)))

(assert (=> bs!1885508 (= lambda!432351 lambda!432342)))

(assert (=> d!2221099 (= (inv!87759 c!9994) (forall!16853 (exprs!7452 c!9994) lambda!432351))))

(declare-fun bs!1885509 () Bool)

(assert (= bs!1885509 d!2221099))

(declare-fun m!7835008 () Bool)

(assert (=> bs!1885509 m!7835008))

(assert (=> start!692562 d!2221099))

(declare-fun bs!1885510 () Bool)

(declare-fun d!2221101 () Bool)

(assert (= bs!1885510 (and d!2221101 b!7115538)))

(declare-fun lambda!432352 () Int)

(assert (=> bs!1885510 (= lambda!432352 lambda!432324)))

(declare-fun bs!1885511 () Bool)

(assert (= bs!1885511 (and d!2221101 d!2221071)))

(assert (=> bs!1885511 (= lambda!432352 lambda!432342)))

(declare-fun bs!1885512 () Bool)

(assert (= bs!1885512 (and d!2221101 d!2221099)))

(assert (=> bs!1885512 (= lambda!432352 lambda!432351)))

(assert (=> d!2221101 (= (inv!87759 auxCtx!45) (forall!16853 (exprs!7452 auxCtx!45) lambda!432352))))

(declare-fun bs!1885513 () Bool)

(assert (= bs!1885513 d!2221101))

(declare-fun m!7835010 () Bool)

(assert (=> bs!1885513 m!7835010))

(assert (=> start!692562 d!2221101))

(declare-fun bs!1885514 () Bool)

(declare-fun d!2221103 () Bool)

(assert (= bs!1885514 (and d!2221103 b!7115538)))

(declare-fun lambda!432353 () Int)

(assert (=> bs!1885514 (= lambda!432353 lambda!432324)))

(declare-fun bs!1885515 () Bool)

(assert (= bs!1885515 (and d!2221103 d!2221071)))

(assert (=> bs!1885515 (= lambda!432353 lambda!432342)))

(declare-fun bs!1885516 () Bool)

(assert (= bs!1885516 (and d!2221103 d!2221099)))

(assert (=> bs!1885516 (= lambda!432353 lambda!432351)))

(declare-fun bs!1885517 () Bool)

(assert (= bs!1885517 (and d!2221103 d!2221101)))

(assert (=> bs!1885517 (= lambda!432353 lambda!432352)))

(assert (=> d!2221103 (= (inv!87759 lt!2560591) (forall!16853 (exprs!7452 lt!2560591) lambda!432353))))

(declare-fun bs!1885518 () Bool)

(assert (= bs!1885518 d!2221103))

(declare-fun m!7835012 () Bool)

(assert (=> bs!1885518 m!7835012))

(assert (=> b!7115540 d!2221103))

(assert (=> b!7115540 d!2221069))

(declare-fun b!7115773 () Bool)

(declare-fun e!4275998 () Bool)

(assert (=> b!7115773 (= e!4275998 tp_is_empty!45149)))

(declare-fun b!7115776 () Bool)

(declare-fun tp!1958133 () Bool)

(declare-fun tp!1958132 () Bool)

(assert (=> b!7115776 (= e!4275998 (and tp!1958133 tp!1958132))))

(declare-fun b!7115775 () Bool)

(declare-fun tp!1958131 () Bool)

(assert (=> b!7115775 (= e!4275998 tp!1958131)))

(assert (=> b!7115544 (= tp!1958098 e!4275998)))

(declare-fun b!7115774 () Bool)

(declare-fun tp!1958135 () Bool)

(declare-fun tp!1958134 () Bool)

(assert (=> b!7115774 (= e!4275998 (and tp!1958135 tp!1958134))))

(assert (= (and b!7115544 (is-ElementMatch!17958 (regOne!36429 r!11554))) b!7115773))

(assert (= (and b!7115544 (is-Concat!26803 (regOne!36429 r!11554))) b!7115774))

(assert (= (and b!7115544 (is-Star!17958 (regOne!36429 r!11554))) b!7115775))

(assert (= (and b!7115544 (is-Union!17958 (regOne!36429 r!11554))) b!7115776))

(declare-fun b!7115777 () Bool)

(declare-fun e!4275999 () Bool)

(assert (=> b!7115777 (= e!4275999 tp_is_empty!45149)))

(declare-fun b!7115780 () Bool)

(declare-fun tp!1958138 () Bool)

(declare-fun tp!1958137 () Bool)

(assert (=> b!7115780 (= e!4275999 (and tp!1958138 tp!1958137))))

(declare-fun b!7115779 () Bool)

(declare-fun tp!1958136 () Bool)

(assert (=> b!7115779 (= e!4275999 tp!1958136)))

(assert (=> b!7115544 (= tp!1958095 e!4275999)))

(declare-fun b!7115778 () Bool)

(declare-fun tp!1958140 () Bool)

(declare-fun tp!1958139 () Bool)

(assert (=> b!7115778 (= e!4275999 (and tp!1958140 tp!1958139))))

(assert (= (and b!7115544 (is-ElementMatch!17958 (regTwo!36429 r!11554))) b!7115777))

(assert (= (and b!7115544 (is-Concat!26803 (regTwo!36429 r!11554))) b!7115778))

(assert (= (and b!7115544 (is-Star!17958 (regTwo!36429 r!11554))) b!7115779))

(assert (= (and b!7115544 (is-Union!17958 (regTwo!36429 r!11554))) b!7115780))

(declare-fun b!7115781 () Bool)

(declare-fun e!4276000 () Bool)

(assert (=> b!7115781 (= e!4276000 tp_is_empty!45149)))

(declare-fun b!7115784 () Bool)

(declare-fun tp!1958143 () Bool)

(declare-fun tp!1958142 () Bool)

(assert (=> b!7115784 (= e!4276000 (and tp!1958143 tp!1958142))))

(declare-fun b!7115783 () Bool)

(declare-fun tp!1958141 () Bool)

(assert (=> b!7115783 (= e!4276000 tp!1958141)))

(assert (=> b!7115539 (= tp!1958096 e!4276000)))

(declare-fun b!7115782 () Bool)

(declare-fun tp!1958145 () Bool)

(declare-fun tp!1958144 () Bool)

(assert (=> b!7115782 (= e!4276000 (and tp!1958145 tp!1958144))))

(assert (= (and b!7115539 (is-ElementMatch!17958 (reg!18287 r!11554))) b!7115781))

(assert (= (and b!7115539 (is-Concat!26803 (reg!18287 r!11554))) b!7115782))

(assert (= (and b!7115539 (is-Star!17958 (reg!18287 r!11554))) b!7115783))

(assert (= (and b!7115539 (is-Union!17958 (reg!18287 r!11554))) b!7115784))

(declare-fun b!7115789 () Bool)

(declare-fun e!4276003 () Bool)

(declare-fun tp!1958150 () Bool)

(declare-fun tp!1958151 () Bool)

(assert (=> b!7115789 (= e!4276003 (and tp!1958150 tp!1958151))))

(assert (=> b!7115537 (= tp!1958093 e!4276003)))

(assert (= (and b!7115537 (is-Cons!68795 (exprs!7452 c!9994))) b!7115789))

(declare-fun b!7115790 () Bool)

(declare-fun e!4276004 () Bool)

(assert (=> b!7115790 (= e!4276004 tp_is_empty!45149)))

(declare-fun b!7115793 () Bool)

(declare-fun tp!1958154 () Bool)

(declare-fun tp!1958153 () Bool)

(assert (=> b!7115793 (= e!4276004 (and tp!1958154 tp!1958153))))

(declare-fun b!7115792 () Bool)

(declare-fun tp!1958152 () Bool)

(assert (=> b!7115792 (= e!4276004 tp!1958152)))

(assert (=> b!7115541 (= tp!1958094 e!4276004)))

(declare-fun b!7115791 () Bool)

(declare-fun tp!1958156 () Bool)

(declare-fun tp!1958155 () Bool)

(assert (=> b!7115791 (= e!4276004 (and tp!1958156 tp!1958155))))

(assert (= (and b!7115541 (is-ElementMatch!17958 (regOne!36428 r!11554))) b!7115790))

(assert (= (and b!7115541 (is-Concat!26803 (regOne!36428 r!11554))) b!7115791))

(assert (= (and b!7115541 (is-Star!17958 (regOne!36428 r!11554))) b!7115792))

(assert (= (and b!7115541 (is-Union!17958 (regOne!36428 r!11554))) b!7115793))

(declare-fun b!7115794 () Bool)

(declare-fun e!4276005 () Bool)

(assert (=> b!7115794 (= e!4276005 tp_is_empty!45149)))

(declare-fun b!7115797 () Bool)

(declare-fun tp!1958159 () Bool)

(declare-fun tp!1958158 () Bool)

(assert (=> b!7115797 (= e!4276005 (and tp!1958159 tp!1958158))))

(declare-fun b!7115796 () Bool)

(declare-fun tp!1958157 () Bool)

(assert (=> b!7115796 (= e!4276005 tp!1958157)))

(assert (=> b!7115541 (= tp!1958099 e!4276005)))

(declare-fun b!7115795 () Bool)

(declare-fun tp!1958161 () Bool)

(declare-fun tp!1958160 () Bool)

(assert (=> b!7115795 (= e!4276005 (and tp!1958161 tp!1958160))))

(assert (= (and b!7115541 (is-ElementMatch!17958 (regTwo!36428 r!11554))) b!7115794))

(assert (= (and b!7115541 (is-Concat!26803 (regTwo!36428 r!11554))) b!7115795))

(assert (= (and b!7115541 (is-Star!17958 (regTwo!36428 r!11554))) b!7115796))

(assert (= (and b!7115541 (is-Union!17958 (regTwo!36428 r!11554))) b!7115797))

(declare-fun b!7115798 () Bool)

(declare-fun e!4276006 () Bool)

(declare-fun tp!1958162 () Bool)

(declare-fun tp!1958163 () Bool)

(assert (=> b!7115798 (= e!4276006 (and tp!1958162 tp!1958163))))

(assert (=> b!7115547 (= tp!1958097 e!4276006)))

(assert (= (and b!7115547 (is-Cons!68795 (exprs!7452 auxCtx!45))) b!7115798))

(push 1)

(assert (not d!2221103))

(assert (not b!7115681))

(assert (not bm!649803))

(assert (not bm!649819))

(assert (not bm!649815))

(assert (not d!2221079))

(assert (not b!7115701))

(assert (not b!7115797))

(assert (not b!7115775))

(assert tp_is_empty!45149)

(assert (not bm!649807))

(assert (not b!7115737))

(assert (not bm!649777))

(assert (not b!7115779))

(assert (not b!7115620))

(assert (not bm!649772))

(assert (not b!7115798))

(assert (not b!7115726))

(assert (not b!7115776))

(assert (not b!7115700))

(assert (not b!7115782))

(assert (not b!7115796))

(assert (not b!7115793))

(assert (not b!7115778))

(assert (not bm!649801))

(assert (not b!7115725))

(assert (not d!2221101))

(assert (not bm!649809))

(assert (not d!2221069))

(assert (not d!2221095))

(assert (not b!7115718))

(assert (not bm!649813))

(assert (not b!7115791))

(assert (not d!2221077))

(assert (not bm!649771))

(assert (not b!7115774))

(assert (not b!7115780))

(assert (not b!7115795))

(assert (not b!7115783))

(assert (not d!2221065))

(assert (not b!7115784))

(assert (not bm!649814))

(assert (not bm!649802))

(assert (not b!7115792))

(assert (not bm!649793))

(assert (not d!2221085))

(assert (not d!2221099))

(assert (not bm!649795))

(assert (not bm!649779))

(assert (not b!7115789))

(assert (not bm!649817))

(assert (not bm!649808))

(assert (not b!7115762))

(assert (not d!2221071))

(assert (not d!2221083))

(assert (not b!7115649))

(assert (not bm!649778))

(assert (not b!7115748))

(assert (not bm!649773))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

