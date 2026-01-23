; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692910 () Bool)

(assert start!692910)

(declare-fun b!7119547 () Bool)

(declare-fun e!4277889 () Bool)

(declare-fun tp_is_empty!45197 () Bool)

(assert (=> b!7119547 (= e!4277889 tp_is_empty!45197)))

(declare-fun b!7119548 () Bool)

(declare-fun tp!1959927 () Bool)

(declare-fun tp!1959933 () Bool)

(assert (=> b!7119548 (= e!4277889 (and tp!1959927 tp!1959933))))

(declare-fun b!7119549 () Bool)

(declare-fun e!4277894 () Bool)

(declare-fun e!4277891 () Bool)

(assert (=> b!7119549 (= e!4277894 e!4277891)))

(declare-fun res!2904391 () Bool)

(assert (=> b!7119549 (=> (not res!2904391) (not e!4277891))))

(declare-datatypes ((C!36234 0))(
  ( (C!36235 (val!27823 Int)) )
))
(declare-datatypes ((Regex!17982 0))(
  ( (ElementMatch!17982 (c!1328663 C!36234)) (Concat!26827 (regOne!36476 Regex!17982) (regTwo!36476 Regex!17982)) (EmptyExpr!17982) (Star!17982 (reg!18311 Regex!17982)) (EmptyLang!17982) (Union!17982 (regOne!36477 Regex!17982) (regTwo!36477 Regex!17982)) )
))
(declare-fun r!11554 () Regex!17982)

(declare-fun validRegex!9255 (Regex!17982) Bool)

(assert (=> b!7119549 (= res!2904391 (validRegex!9255 r!11554))))

(declare-datatypes ((List!68943 0))(
  ( (Nil!68819) (Cons!68819 (h!75267 Regex!17982) (t!382804 List!68943)) )
))
(declare-datatypes ((Context!13952 0))(
  ( (Context!13953 (exprs!7476 List!68943)) )
))
(declare-fun lt!2561138 () Context!13952)

(declare-fun lt!2561139 () List!68943)

(assert (=> b!7119549 (= lt!2561138 (Context!13953 lt!2561139))))

(declare-fun c!9994 () Context!13952)

(declare-fun auxCtx!45 () Context!13952)

(declare-fun ++!16134 (List!68943 List!68943) List!68943)

(assert (=> b!7119549 (= lt!2561139 (++!16134 (exprs!7476 c!9994) (exprs!7476 auxCtx!45)))))

(declare-datatypes ((Unit!162635 0))(
  ( (Unit!162636) )
))
(declare-fun lt!2561135 () Unit!162635)

(declare-fun lambda!432608 () Int)

(declare-fun lemmaConcatPreservesForall!1267 (List!68943 List!68943 Int) Unit!162635)

(assert (=> b!7119549 (= lt!2561135 (lemmaConcatPreservesForall!1267 (exprs!7476 c!9994) (exprs!7476 auxCtx!45) lambda!432608))))

(declare-fun lt!2561129 () Unit!162635)

(assert (=> b!7119549 (= lt!2561129 (lemmaConcatPreservesForall!1267 (exprs!7476 c!9994) (exprs!7476 auxCtx!45) lambda!432608))))

(declare-fun b!7119550 () Bool)

(declare-fun e!4277896 () Bool)

(declare-fun nullable!7619 (Regex!17982) Bool)

(assert (=> b!7119550 (= e!4277896 (not (nullable!7619 (regOne!36476 r!11554))))))

(declare-fun b!7119551 () Bool)

(declare-fun e!4277890 () Bool)

(declare-fun inv!87819 (Context!13952) Bool)

(assert (=> b!7119551 (= e!4277890 (inv!87819 lt!2561138))))

(declare-fun lt!2561136 () Unit!162635)

(assert (=> b!7119551 (= lt!2561136 (lemmaConcatPreservesForall!1267 (exprs!7476 c!9994) (exprs!7476 auxCtx!45) lambda!432608))))

(declare-fun b!7119552 () Bool)

(declare-fun tp!1959929 () Bool)

(declare-fun tp!1959930 () Bool)

(assert (=> b!7119552 (= e!4277889 (and tp!1959929 tp!1959930))))

(declare-fun res!2904392 () Bool)

(assert (=> start!692910 (=> (not res!2904392) (not e!4277894))))

(assert (=> start!692910 (= res!2904392 (validRegex!9255 r!11554))))

(assert (=> start!692910 e!4277894))

(assert (=> start!692910 e!4277889))

(assert (=> start!692910 tp_is_empty!45197))

(declare-fun e!4277893 () Bool)

(assert (=> start!692910 (and (inv!87819 c!9994) e!4277893)))

(declare-fun e!4277895 () Bool)

(assert (=> start!692910 (and (inv!87819 auxCtx!45) e!4277895)))

(declare-fun b!7119553 () Bool)

(declare-fun e!4277892 () Bool)

(assert (=> b!7119553 (= e!4277892 (not e!4277890))))

(declare-fun res!2904387 () Bool)

(assert (=> b!7119553 (=> res!2904387 e!4277890)))

(declare-fun a!1901 () C!36234)

(declare-fun lt!2561131 () (Set Context!13952))

(declare-fun appendTo!947 ((Set Context!13952) Context!13952) (Set Context!13952))

(declare-fun derivationStepZipperDown!2479 (Regex!17982 Context!13952 C!36234) (Set Context!13952))

(assert (=> b!7119553 (= res!2904387 (not (= lt!2561131 (appendTo!947 (derivationStepZipperDown!2479 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lt!2561132 () Unit!162635)

(assert (=> b!7119553 (= lt!2561132 (lemmaConcatPreservesForall!1267 (exprs!7476 c!9994) (exprs!7476 auxCtx!45) lambda!432608))))

(declare-fun lt!2561133 () List!68943)

(declare-fun lt!2561134 () Context!13952)

(assert (=> b!7119553 (= (derivationStepZipperDown!2479 (reg!18311 r!11554) (Context!13953 (++!16134 lt!2561133 (exprs!7476 auxCtx!45))) a!1901) (appendTo!947 (derivationStepZipperDown!2479 (reg!18311 r!11554) lt!2561134 a!1901) auxCtx!45))))

(declare-fun lt!2561137 () Unit!162635)

(assert (=> b!7119553 (= lt!2561137 (lemmaConcatPreservesForall!1267 lt!2561133 (exprs!7476 auxCtx!45) lambda!432608))))

(declare-fun lt!2561130 () Unit!162635)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!245 (Context!13952 Regex!17982 C!36234 Context!13952) Unit!162635)

(assert (=> b!7119553 (= lt!2561130 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!245 lt!2561134 (reg!18311 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7119553 (= lt!2561134 (Context!13953 lt!2561133))))

(declare-fun $colon$colon!2826 (List!68943 Regex!17982) List!68943)

(assert (=> b!7119553 (= lt!2561133 ($colon$colon!2826 (exprs!7476 c!9994) r!11554))))

(declare-fun b!7119554 () Bool)

(assert (=> b!7119554 (= e!4277891 e!4277892)))

(declare-fun res!2904389 () Bool)

(assert (=> b!7119554 (=> (not res!2904389) (not e!4277892))))

(assert (=> b!7119554 (= res!2904389 (= lt!2561131 (derivationStepZipperDown!2479 (reg!18311 r!11554) (Context!13953 ($colon$colon!2826 lt!2561139 r!11554)) a!1901)))))

(assert (=> b!7119554 (= lt!2561131 (derivationStepZipperDown!2479 r!11554 lt!2561138 a!1901))))

(declare-fun b!7119555 () Bool)

(declare-fun res!2904393 () Bool)

(assert (=> b!7119555 (=> (not res!2904393) (not e!4277894))))

(assert (=> b!7119555 (= res!2904393 (and (not (is-Concat!26827 r!11554)) (is-Star!17982 r!11554)))))

(declare-fun b!7119556 () Bool)

(declare-fun tp!1959931 () Bool)

(assert (=> b!7119556 (= e!4277895 tp!1959931)))

(declare-fun b!7119557 () Bool)

(declare-fun tp!1959928 () Bool)

(assert (=> b!7119557 (= e!4277893 tp!1959928)))

(declare-fun b!7119558 () Bool)

(declare-fun tp!1959932 () Bool)

(assert (=> b!7119558 (= e!4277889 tp!1959932)))

(declare-fun b!7119559 () Bool)

(declare-fun res!2904388 () Bool)

(assert (=> b!7119559 (=> (not res!2904388) (not e!4277894))))

(assert (=> b!7119559 (= res!2904388 (and (or (not (is-ElementMatch!17982 r!11554)) (not (= (c!1328663 r!11554) a!1901))) (not (is-Union!17982 r!11554))))))

(declare-fun b!7119560 () Bool)

(declare-fun res!2904390 () Bool)

(assert (=> b!7119560 (=> (not res!2904390) (not e!4277894))))

(assert (=> b!7119560 (= res!2904390 e!4277896)))

(declare-fun res!2904394 () Bool)

(assert (=> b!7119560 (=> res!2904394 e!4277896)))

(assert (=> b!7119560 (= res!2904394 (not (is-Concat!26827 r!11554)))))

(assert (= (and start!692910 res!2904392) b!7119559))

(assert (= (and b!7119559 res!2904388) b!7119560))

(assert (= (and b!7119560 (not res!2904394)) b!7119550))

(assert (= (and b!7119560 res!2904390) b!7119555))

(assert (= (and b!7119555 res!2904393) b!7119549))

(assert (= (and b!7119549 res!2904391) b!7119554))

(assert (= (and b!7119554 res!2904389) b!7119553))

(assert (= (and b!7119553 (not res!2904387)) b!7119551))

(assert (= (and start!692910 (is-ElementMatch!17982 r!11554)) b!7119547))

(assert (= (and start!692910 (is-Concat!26827 r!11554)) b!7119552))

(assert (= (and start!692910 (is-Star!17982 r!11554)) b!7119558))

(assert (= (and start!692910 (is-Union!17982 r!11554)) b!7119548))

(assert (= start!692910 b!7119557))

(assert (= start!692910 b!7119556))

(declare-fun m!7836880 () Bool)

(assert (=> b!7119551 m!7836880))

(declare-fun m!7836882 () Bool)

(assert (=> b!7119551 m!7836882))

(declare-fun m!7836884 () Bool)

(assert (=> b!7119553 m!7836884))

(declare-fun m!7836886 () Bool)

(assert (=> b!7119553 m!7836886))

(assert (=> b!7119553 m!7836884))

(declare-fun m!7836888 () Bool)

(assert (=> b!7119553 m!7836888))

(declare-fun m!7836890 () Bool)

(assert (=> b!7119553 m!7836890))

(declare-fun m!7836892 () Bool)

(assert (=> b!7119553 m!7836892))

(declare-fun m!7836894 () Bool)

(assert (=> b!7119553 m!7836894))

(assert (=> b!7119553 m!7836888))

(assert (=> b!7119553 m!7836882))

(declare-fun m!7836896 () Bool)

(assert (=> b!7119553 m!7836896))

(declare-fun m!7836898 () Bool)

(assert (=> b!7119553 m!7836898))

(declare-fun m!7836900 () Bool)

(assert (=> b!7119553 m!7836900))

(declare-fun m!7836902 () Bool)

(assert (=> b!7119549 m!7836902))

(declare-fun m!7836904 () Bool)

(assert (=> b!7119549 m!7836904))

(assert (=> b!7119549 m!7836882))

(assert (=> b!7119549 m!7836882))

(assert (=> start!692910 m!7836902))

(declare-fun m!7836906 () Bool)

(assert (=> start!692910 m!7836906))

(declare-fun m!7836908 () Bool)

(assert (=> start!692910 m!7836908))

(declare-fun m!7836910 () Bool)

(assert (=> b!7119550 m!7836910))

(declare-fun m!7836912 () Bool)

(assert (=> b!7119554 m!7836912))

(declare-fun m!7836914 () Bool)

(assert (=> b!7119554 m!7836914))

(declare-fun m!7836916 () Bool)

(assert (=> b!7119554 m!7836916))

(push 1)

(assert (not b!7119554))

(assert tp_is_empty!45197)

(assert (not b!7119550))

(assert (not b!7119556))

(assert (not b!7119548))

(assert (not b!7119551))

(assert (not start!692910))

(assert (not b!7119552))

(assert (not b!7119549))

(assert (not b!7119557))

(assert (not b!7119558))

(assert (not b!7119553))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1885769 () Bool)

(declare-fun d!2221709 () Bool)

(assert (= bs!1885769 (and d!2221709 b!7119549)))

(declare-fun lambda!432622 () Int)

(assert (=> bs!1885769 (= lambda!432622 lambda!432608)))

(declare-fun forall!16870 (List!68943 Int) Bool)

(assert (=> d!2221709 (= (inv!87819 lt!2561138) (forall!16870 (exprs!7476 lt!2561138) lambda!432622))))

(declare-fun bs!1885770 () Bool)

(assert (= bs!1885770 d!2221709))

(declare-fun m!7836956 () Bool)

(assert (=> bs!1885770 m!7836956))

(assert (=> b!7119551 d!2221709))

(declare-fun d!2221711 () Bool)

(assert (=> d!2221711 (forall!16870 (++!16134 (exprs!7476 c!9994) (exprs!7476 auxCtx!45)) lambda!432608)))

(declare-fun lt!2561175 () Unit!162635)

(declare-fun choose!54908 (List!68943 List!68943 Int) Unit!162635)

(assert (=> d!2221711 (= lt!2561175 (choose!54908 (exprs!7476 c!9994) (exprs!7476 auxCtx!45) lambda!432608))))

(assert (=> d!2221711 (forall!16870 (exprs!7476 c!9994) lambda!432608)))

(assert (=> d!2221711 (= (lemmaConcatPreservesForall!1267 (exprs!7476 c!9994) (exprs!7476 auxCtx!45) lambda!432608) lt!2561175)))

(declare-fun bs!1885771 () Bool)

(assert (= bs!1885771 d!2221711))

(assert (=> bs!1885771 m!7836904))

(assert (=> bs!1885771 m!7836904))

(declare-fun m!7836958 () Bool)

(assert (=> bs!1885771 m!7836958))

(declare-fun m!7836960 () Bool)

(assert (=> bs!1885771 m!7836960))

(declare-fun m!7836962 () Bool)

(assert (=> bs!1885771 m!7836962))

(assert (=> b!7119551 d!2221711))

(declare-fun b!7119621 () Bool)

(declare-fun e!4277940 () Bool)

(declare-fun call!650485 () Bool)

(assert (=> b!7119621 (= e!4277940 call!650485)))

(declare-fun b!7119622 () Bool)

(declare-fun e!4277939 () Bool)

(declare-fun call!650486 () Bool)

(assert (=> b!7119622 (= e!4277939 call!650486)))

(declare-fun c!1328670 () Bool)

(declare-fun c!1328669 () Bool)

(declare-fun bm!650479 () Bool)

(assert (=> bm!650479 (= call!650485 (validRegex!9255 (ite c!1328670 (reg!18311 r!11554) (ite c!1328669 (regTwo!36477 r!11554) (regOne!36476 r!11554)))))))

(declare-fun b!7119623 () Bool)

(declare-fun e!4277936 () Bool)

(assert (=> b!7119623 (= e!4277936 e!4277939)))

(declare-fun res!2904432 () Bool)

(assert (=> b!7119623 (=> (not res!2904432) (not e!4277939))))

(declare-fun call!650484 () Bool)

(assert (=> b!7119623 (= res!2904432 call!650484)))

(declare-fun d!2221713 () Bool)

(declare-fun res!2904430 () Bool)

(declare-fun e!4277937 () Bool)

(assert (=> d!2221713 (=> res!2904430 e!4277937)))

(assert (=> d!2221713 (= res!2904430 (is-ElementMatch!17982 r!11554))))

(assert (=> d!2221713 (= (validRegex!9255 r!11554) e!4277937)))

(declare-fun b!7119624 () Bool)

(declare-fun res!2904431 () Bool)

(declare-fun e!4277941 () Bool)

(assert (=> b!7119624 (=> (not res!2904431) (not e!4277941))))

(assert (=> b!7119624 (= res!2904431 call!650486)))

(declare-fun e!4277935 () Bool)

(assert (=> b!7119624 (= e!4277935 e!4277941)))

(declare-fun b!7119625 () Bool)

(declare-fun res!2904429 () Bool)

(assert (=> b!7119625 (=> res!2904429 e!4277936)))

(assert (=> b!7119625 (= res!2904429 (not (is-Concat!26827 r!11554)))))

(assert (=> b!7119625 (= e!4277935 e!4277936)))

(declare-fun b!7119626 () Bool)

(declare-fun e!4277938 () Bool)

(assert (=> b!7119626 (= e!4277938 e!4277940)))

(declare-fun res!2904433 () Bool)

(assert (=> b!7119626 (= res!2904433 (not (nullable!7619 (reg!18311 r!11554))))))

(assert (=> b!7119626 (=> (not res!2904433) (not e!4277940))))

(declare-fun b!7119627 () Bool)

(assert (=> b!7119627 (= e!4277937 e!4277938)))

(assert (=> b!7119627 (= c!1328670 (is-Star!17982 r!11554))))

(declare-fun b!7119628 () Bool)

(assert (=> b!7119628 (= e!4277941 call!650484)))

(declare-fun bm!650480 () Bool)

(assert (=> bm!650480 (= call!650484 call!650485)))

(declare-fun bm!650481 () Bool)

(assert (=> bm!650481 (= call!650486 (validRegex!9255 (ite c!1328669 (regOne!36477 r!11554) (regTwo!36476 r!11554))))))

(declare-fun b!7119629 () Bool)

(assert (=> b!7119629 (= e!4277938 e!4277935)))

(assert (=> b!7119629 (= c!1328669 (is-Union!17982 r!11554))))

(assert (= (and d!2221713 (not res!2904430)) b!7119627))

(assert (= (and b!7119627 c!1328670) b!7119626))

(assert (= (and b!7119627 (not c!1328670)) b!7119629))

(assert (= (and b!7119626 res!2904433) b!7119621))

(assert (= (and b!7119629 c!1328669) b!7119624))

(assert (= (and b!7119629 (not c!1328669)) b!7119625))

(assert (= (and b!7119624 res!2904431) b!7119628))

(assert (= (and b!7119625 (not res!2904429)) b!7119623))

(assert (= (and b!7119623 res!2904432) b!7119622))

(assert (= (or b!7119624 b!7119622) bm!650481))

(assert (= (or b!7119628 b!7119623) bm!650480))

(assert (= (or b!7119621 bm!650480) bm!650479))

(declare-fun m!7836964 () Bool)

(assert (=> bm!650479 m!7836964))

(declare-fun m!7836966 () Bool)

(assert (=> b!7119626 m!7836966))

(declare-fun m!7836968 () Bool)

(assert (=> bm!650481 m!7836968))

(assert (=> start!692910 d!2221713))

(declare-fun bs!1885772 () Bool)

(declare-fun d!2221715 () Bool)

(assert (= bs!1885772 (and d!2221715 b!7119549)))

(declare-fun lambda!432623 () Int)

(assert (=> bs!1885772 (= lambda!432623 lambda!432608)))

(declare-fun bs!1885773 () Bool)

(assert (= bs!1885773 (and d!2221715 d!2221709)))

(assert (=> bs!1885773 (= lambda!432623 lambda!432622)))

(assert (=> d!2221715 (= (inv!87819 c!9994) (forall!16870 (exprs!7476 c!9994) lambda!432623))))

(declare-fun bs!1885774 () Bool)

(assert (= bs!1885774 d!2221715))

(declare-fun m!7836970 () Bool)

(assert (=> bs!1885774 m!7836970))

(assert (=> start!692910 d!2221715))

(declare-fun bs!1885775 () Bool)

(declare-fun d!2221717 () Bool)

(assert (= bs!1885775 (and d!2221717 b!7119549)))

(declare-fun lambda!432624 () Int)

(assert (=> bs!1885775 (= lambda!432624 lambda!432608)))

(declare-fun bs!1885776 () Bool)

(assert (= bs!1885776 (and d!2221717 d!2221709)))

(assert (=> bs!1885776 (= lambda!432624 lambda!432622)))

(declare-fun bs!1885777 () Bool)

(assert (= bs!1885777 (and d!2221717 d!2221715)))

(assert (=> bs!1885777 (= lambda!432624 lambda!432623)))

(assert (=> d!2221717 (= (inv!87819 auxCtx!45) (forall!16870 (exprs!7476 auxCtx!45) lambda!432624))))

(declare-fun bs!1885778 () Bool)

(assert (= bs!1885778 d!2221717))

(declare-fun m!7836972 () Bool)

(assert (=> bs!1885778 m!7836972))

(assert (=> start!692910 d!2221717))

(declare-fun d!2221719 () Bool)

(declare-fun nullableFct!2959 (Regex!17982) Bool)

(assert (=> d!2221719 (= (nullable!7619 (regOne!36476 r!11554)) (nullableFct!2959 (regOne!36476 r!11554)))))

(declare-fun bs!1885779 () Bool)

(assert (= bs!1885779 d!2221719))

(declare-fun m!7836974 () Bool)

(assert (=> bs!1885779 m!7836974))

(assert (=> b!7119550 d!2221719))

(declare-fun bm!650500 () Bool)

(declare-fun c!1328688 () Bool)

(declare-fun c!1328685 () Bool)

(declare-fun call!650508 () (Set Context!13952))

(declare-fun call!650510 () List!68943)

(declare-fun c!1328689 () Bool)

(assert (=> bm!650500 (= call!650508 (derivationStepZipperDown!2479 (ite c!1328688 (regOne!36477 (reg!18311 r!11554)) (ite c!1328689 (regTwo!36476 (reg!18311 r!11554)) (ite c!1328685 (regOne!36476 (reg!18311 r!11554)) (reg!18311 (reg!18311 r!11554))))) (ite (or c!1328688 c!1328689) lt!2561134 (Context!13953 call!650510)) a!1901))))

(declare-fun b!7119670 () Bool)

(declare-fun e!4277968 () Bool)

(assert (=> b!7119670 (= c!1328689 e!4277968)))

(declare-fun res!2904446 () Bool)

(assert (=> b!7119670 (=> (not res!2904446) (not e!4277968))))

(assert (=> b!7119670 (= res!2904446 (is-Concat!26827 (reg!18311 r!11554)))))

(declare-fun e!4277969 () (Set Context!13952))

(declare-fun e!4277972 () (Set Context!13952))

(assert (=> b!7119670 (= e!4277969 e!4277972)))

(declare-fun b!7119671 () Bool)

(declare-fun e!4277971 () (Set Context!13952))

(assert (=> b!7119671 (= e!4277971 (set.insert lt!2561134 (as set.empty (Set Context!13952))))))

(declare-fun b!7119672 () Bool)

(declare-fun e!4277973 () (Set Context!13952))

(assert (=> b!7119672 (= e!4277972 e!4277973)))

(assert (=> b!7119672 (= c!1328685 (is-Concat!26827 (reg!18311 r!11554)))))

(declare-fun bm!650501 () Bool)

(declare-fun call!650507 () (Set Context!13952))

(assert (=> bm!650501 (= call!650507 call!650508)))

(declare-fun bm!650502 () Bool)

(declare-fun call!650509 () (Set Context!13952))

(assert (=> bm!650502 (= call!650509 call!650507)))

(declare-fun b!7119673 () Bool)

(assert (=> b!7119673 (= e!4277968 (nullable!7619 (regOne!36476 (reg!18311 r!11554))))))

(declare-fun d!2221721 () Bool)

(declare-fun c!1328686 () Bool)

(assert (=> d!2221721 (= c!1328686 (and (is-ElementMatch!17982 (reg!18311 r!11554)) (= (c!1328663 (reg!18311 r!11554)) a!1901)))))

(assert (=> d!2221721 (= (derivationStepZipperDown!2479 (reg!18311 r!11554) lt!2561134 a!1901) e!4277971)))

(declare-fun b!7119674 () Bool)

(declare-fun e!4277970 () (Set Context!13952))

(assert (=> b!7119674 (= e!4277970 call!650509)))

(declare-fun b!7119675 () Bool)

(declare-fun call!650505 () (Set Context!13952))

(assert (=> b!7119675 (= e!4277972 (set.union call!650505 call!650507))))

(declare-fun b!7119676 () Bool)

(assert (=> b!7119676 (= e!4277971 e!4277969)))

(assert (=> b!7119676 (= c!1328688 (is-Union!17982 (reg!18311 r!11554)))))

(declare-fun bm!650503 () Bool)

(declare-fun call!650506 () List!68943)

(assert (=> bm!650503 (= call!650505 (derivationStepZipperDown!2479 (ite c!1328688 (regTwo!36477 (reg!18311 r!11554)) (regOne!36476 (reg!18311 r!11554))) (ite c!1328688 lt!2561134 (Context!13953 call!650506)) a!1901))))

(declare-fun bm!650504 () Bool)

(assert (=> bm!650504 (= call!650510 call!650506)))

(declare-fun b!7119677 () Bool)

(assert (=> b!7119677 (= e!4277969 (set.union call!650508 call!650505))))

(declare-fun b!7119678 () Bool)

(declare-fun c!1328687 () Bool)

(assert (=> b!7119678 (= c!1328687 (is-Star!17982 (reg!18311 r!11554)))))

(assert (=> b!7119678 (= e!4277973 e!4277970)))

(declare-fun b!7119679 () Bool)

(assert (=> b!7119679 (= e!4277970 (as set.empty (Set Context!13952)))))

(declare-fun bm!650505 () Bool)

(assert (=> bm!650505 (= call!650506 ($colon$colon!2826 (exprs!7476 lt!2561134) (ite (or c!1328689 c!1328685) (regTwo!36476 (reg!18311 r!11554)) (reg!18311 r!11554))))))

(declare-fun b!7119680 () Bool)

(assert (=> b!7119680 (= e!4277973 call!650509)))

(assert (= (and d!2221721 c!1328686) b!7119671))

(assert (= (and d!2221721 (not c!1328686)) b!7119676))

(assert (= (and b!7119676 c!1328688) b!7119677))

(assert (= (and b!7119676 (not c!1328688)) b!7119670))

(assert (= (and b!7119670 res!2904446) b!7119673))

(assert (= (and b!7119670 c!1328689) b!7119675))

(assert (= (and b!7119670 (not c!1328689)) b!7119672))

(assert (= (and b!7119672 c!1328685) b!7119680))

(assert (= (and b!7119672 (not c!1328685)) b!7119678))

(assert (= (and b!7119678 c!1328687) b!7119674))

(assert (= (and b!7119678 (not c!1328687)) b!7119679))

(assert (= (or b!7119680 b!7119674) bm!650504))

(assert (= (or b!7119680 b!7119674) bm!650502))

(assert (= (or b!7119675 bm!650502) bm!650501))

(assert (= (or b!7119675 bm!650504) bm!650505))

(assert (= (or b!7119677 b!7119675) bm!650503))

(assert (= (or b!7119677 bm!650501) bm!650500))

(declare-fun m!7836976 () Bool)

(assert (=> b!7119673 m!7836976))

(declare-fun m!7836978 () Bool)

(assert (=> b!7119671 m!7836978))

(declare-fun m!7836980 () Bool)

(assert (=> bm!650503 m!7836980))

(declare-fun m!7836982 () Bool)

(assert (=> bm!650505 m!7836982))

(declare-fun m!7836984 () Bool)

(assert (=> bm!650500 m!7836984))

(assert (=> b!7119553 d!2221721))

(declare-fun d!2221725 () Bool)

(assert (=> d!2221725 true))

(declare-fun lambda!432629 () Int)

(declare-fun map!16314 ((Set Context!13952) Int) (Set Context!13952))

(assert (=> d!2221725 (= (appendTo!947 (derivationStepZipperDown!2479 (reg!18311 r!11554) lt!2561134 a!1901) auxCtx!45) (map!16314 (derivationStepZipperDown!2479 (reg!18311 r!11554) lt!2561134 a!1901) lambda!432629))))

(declare-fun bs!1885780 () Bool)

(assert (= bs!1885780 d!2221725))

(assert (=> bs!1885780 m!7836884))

(declare-fun m!7836986 () Bool)

(assert (=> bs!1885780 m!7836986))

(assert (=> b!7119553 d!2221725))

(declare-fun bs!1885781 () Bool)

(declare-fun d!2221727 () Bool)

(assert (= bs!1885781 (and d!2221727 d!2221725)))

(declare-fun lambda!432630 () Int)

(assert (=> bs!1885781 (= lambda!432630 lambda!432629)))

(assert (=> d!2221727 true))

(assert (=> d!2221727 (= (appendTo!947 (derivationStepZipperDown!2479 r!11554 c!9994 a!1901) auxCtx!45) (map!16314 (derivationStepZipperDown!2479 r!11554 c!9994 a!1901) lambda!432630))))

(declare-fun bs!1885782 () Bool)

(assert (= bs!1885782 d!2221727))

(assert (=> bs!1885782 m!7836888))

(declare-fun m!7836988 () Bool)

(assert (=> bs!1885782 m!7836988))

(assert (=> b!7119553 d!2221727))

(declare-fun d!2221729 () Bool)

(assert (=> d!2221729 (= ($colon$colon!2826 (exprs!7476 c!9994) r!11554) (Cons!68819 r!11554 (exprs!7476 c!9994)))))

(assert (=> b!7119553 d!2221729))

(declare-fun d!2221731 () Bool)

(assert (=> d!2221731 (forall!16870 (++!16134 lt!2561133 (exprs!7476 auxCtx!45)) lambda!432608)))

(declare-fun lt!2561178 () Unit!162635)

(assert (=> d!2221731 (= lt!2561178 (choose!54908 lt!2561133 (exprs!7476 auxCtx!45) lambda!432608))))

(assert (=> d!2221731 (forall!16870 lt!2561133 lambda!432608)))

(assert (=> d!2221731 (= (lemmaConcatPreservesForall!1267 lt!2561133 (exprs!7476 auxCtx!45) lambda!432608) lt!2561178)))

(declare-fun bs!1885783 () Bool)

(assert (= bs!1885783 d!2221731))

(assert (=> bs!1885783 m!7836896))

(assert (=> bs!1885783 m!7836896))

(declare-fun m!7836996 () Bool)

(assert (=> bs!1885783 m!7836996))

(declare-fun m!7836998 () Bool)

(assert (=> bs!1885783 m!7836998))

(declare-fun m!7837000 () Bool)

(assert (=> bs!1885783 m!7837000))

(assert (=> b!7119553 d!2221731))

(declare-fun b!7119700 () Bool)

(declare-fun e!4277985 () List!68943)

(assert (=> b!7119700 (= e!4277985 (exprs!7476 auxCtx!45))))

(declare-fun b!7119703 () Bool)

(declare-fun e!4277986 () Bool)

(declare-fun lt!2561181 () List!68943)

(assert (=> b!7119703 (= e!4277986 (or (not (= (exprs!7476 auxCtx!45) Nil!68819)) (= lt!2561181 lt!2561133)))))

(declare-fun b!7119701 () Bool)

(assert (=> b!7119701 (= e!4277985 (Cons!68819 (h!75267 lt!2561133) (++!16134 (t!382804 lt!2561133) (exprs!7476 auxCtx!45))))))

(declare-fun b!7119702 () Bool)

(declare-fun res!2904456 () Bool)

(assert (=> b!7119702 (=> (not res!2904456) (not e!4277986))))

(declare-fun size!41429 (List!68943) Int)

(assert (=> b!7119702 (= res!2904456 (= (size!41429 lt!2561181) (+ (size!41429 lt!2561133) (size!41429 (exprs!7476 auxCtx!45)))))))

(declare-fun d!2221735 () Bool)

(assert (=> d!2221735 e!4277986))

(declare-fun res!2904457 () Bool)

(assert (=> d!2221735 (=> (not res!2904457) (not e!4277986))))

(declare-fun content!14054 (List!68943) (Set Regex!17982))

(assert (=> d!2221735 (= res!2904457 (= (content!14054 lt!2561181) (set.union (content!14054 lt!2561133) (content!14054 (exprs!7476 auxCtx!45)))))))

(assert (=> d!2221735 (= lt!2561181 e!4277985)))

(declare-fun c!1328695 () Bool)

(assert (=> d!2221735 (= c!1328695 (is-Nil!68819 lt!2561133))))

(assert (=> d!2221735 (= (++!16134 lt!2561133 (exprs!7476 auxCtx!45)) lt!2561181)))

(assert (= (and d!2221735 c!1328695) b!7119700))

(assert (= (and d!2221735 (not c!1328695)) b!7119701))

(assert (= (and d!2221735 res!2904457) b!7119702))

(assert (= (and b!7119702 res!2904456) b!7119703))

(declare-fun m!7837004 () Bool)

(assert (=> b!7119701 m!7837004))

(declare-fun m!7837006 () Bool)

(assert (=> b!7119702 m!7837006))

(declare-fun m!7837008 () Bool)

(assert (=> b!7119702 m!7837008))

(declare-fun m!7837010 () Bool)

(assert (=> b!7119702 m!7837010))

(declare-fun m!7837012 () Bool)

(assert (=> d!2221735 m!7837012))

(declare-fun m!7837014 () Bool)

(assert (=> d!2221735 m!7837014))

(declare-fun m!7837016 () Bool)

(assert (=> d!2221735 m!7837016))

(assert (=> b!7119553 d!2221735))

(declare-fun bs!1885789 () Bool)

(declare-fun d!2221739 () Bool)

(assert (= bs!1885789 (and d!2221739 b!7119549)))

(declare-fun lambda!432637 () Int)

(assert (=> bs!1885789 (= lambda!432637 lambda!432608)))

(declare-fun bs!1885790 () Bool)

(assert (= bs!1885790 (and d!2221739 d!2221709)))

(assert (=> bs!1885790 (= lambda!432637 lambda!432622)))

(declare-fun bs!1885791 () Bool)

(assert (= bs!1885791 (and d!2221739 d!2221715)))

(assert (=> bs!1885791 (= lambda!432637 lambda!432623)))

(declare-fun bs!1885792 () Bool)

(assert (= bs!1885792 (and d!2221739 d!2221717)))

(assert (=> bs!1885792 (= lambda!432637 lambda!432624)))

(assert (=> d!2221739 (= (derivationStepZipperDown!2479 (reg!18311 r!11554) (Context!13953 (++!16134 (exprs!7476 lt!2561134) (exprs!7476 auxCtx!45))) a!1901) (appendTo!947 (derivationStepZipperDown!2479 (reg!18311 r!11554) lt!2561134 a!1901) auxCtx!45))))

(declare-fun lt!2561187 () Unit!162635)

(assert (=> d!2221739 (= lt!2561187 (lemmaConcatPreservesForall!1267 (exprs!7476 lt!2561134) (exprs!7476 auxCtx!45) lambda!432637))))

(declare-fun lt!2561186 () Unit!162635)

(declare-fun choose!54909 (Context!13952 Regex!17982 C!36234 Context!13952) Unit!162635)

(assert (=> d!2221739 (= lt!2561186 (choose!54909 lt!2561134 (reg!18311 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2221739 (validRegex!9255 (reg!18311 r!11554))))

(assert (=> d!2221739 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!245 lt!2561134 (reg!18311 r!11554) a!1901 auxCtx!45) lt!2561186)))

(declare-fun bs!1885793 () Bool)

(assert (= bs!1885793 d!2221739))

(declare-fun m!7837020 () Bool)

(assert (=> bs!1885793 m!7837020))

(declare-fun m!7837022 () Bool)

(assert (=> bs!1885793 m!7837022))

(declare-fun m!7837024 () Bool)

(assert (=> bs!1885793 m!7837024))

(declare-fun m!7837026 () Bool)

(assert (=> bs!1885793 m!7837026))

(assert (=> bs!1885793 m!7836884))

(assert (=> bs!1885793 m!7836886))

(declare-fun m!7837028 () Bool)

(assert (=> bs!1885793 m!7837028))

(assert (=> bs!1885793 m!7836884))

(assert (=> b!7119553 d!2221739))

(assert (=> b!7119553 d!2221711))

(declare-fun call!650519 () List!68943)

(declare-fun bm!650509 () Bool)

(declare-fun c!1328697 () Bool)

(declare-fun c!1328700 () Bool)

(declare-fun c!1328701 () Bool)

(declare-fun call!650517 () (Set Context!13952))

(assert (=> bm!650509 (= call!650517 (derivationStepZipperDown!2479 (ite c!1328700 (regOne!36477 r!11554) (ite c!1328701 (regTwo!36476 r!11554) (ite c!1328697 (regOne!36476 r!11554) (reg!18311 r!11554)))) (ite (or c!1328700 c!1328701) c!9994 (Context!13953 call!650519)) a!1901))))

(declare-fun b!7119704 () Bool)

(declare-fun e!4277987 () Bool)

(assert (=> b!7119704 (= c!1328701 e!4277987)))

(declare-fun res!2904458 () Bool)

(assert (=> b!7119704 (=> (not res!2904458) (not e!4277987))))

(assert (=> b!7119704 (= res!2904458 (is-Concat!26827 r!11554))))

(declare-fun e!4277988 () (Set Context!13952))

(declare-fun e!4277991 () (Set Context!13952))

(assert (=> b!7119704 (= e!4277988 e!4277991)))

(declare-fun b!7119705 () Bool)

(declare-fun e!4277990 () (Set Context!13952))

(assert (=> b!7119705 (= e!4277990 (set.insert c!9994 (as set.empty (Set Context!13952))))))

(declare-fun b!7119706 () Bool)

(declare-fun e!4277992 () (Set Context!13952))

(assert (=> b!7119706 (= e!4277991 e!4277992)))

(assert (=> b!7119706 (= c!1328697 (is-Concat!26827 r!11554))))

(declare-fun bm!650510 () Bool)

(declare-fun call!650516 () (Set Context!13952))

(assert (=> bm!650510 (= call!650516 call!650517)))

(declare-fun bm!650511 () Bool)

(declare-fun call!650518 () (Set Context!13952))

(assert (=> bm!650511 (= call!650518 call!650516)))

(declare-fun b!7119707 () Bool)

(assert (=> b!7119707 (= e!4277987 (nullable!7619 (regOne!36476 r!11554)))))

(declare-fun d!2221743 () Bool)

(declare-fun c!1328698 () Bool)

(assert (=> d!2221743 (= c!1328698 (and (is-ElementMatch!17982 r!11554) (= (c!1328663 r!11554) a!1901)))))

(assert (=> d!2221743 (= (derivationStepZipperDown!2479 r!11554 c!9994 a!1901) e!4277990)))

(declare-fun b!7119708 () Bool)

(declare-fun e!4277989 () (Set Context!13952))

(assert (=> b!7119708 (= e!4277989 call!650518)))

(declare-fun b!7119709 () Bool)

(declare-fun call!650514 () (Set Context!13952))

(assert (=> b!7119709 (= e!4277991 (set.union call!650514 call!650516))))

(declare-fun b!7119710 () Bool)

(assert (=> b!7119710 (= e!4277990 e!4277988)))

(assert (=> b!7119710 (= c!1328700 (is-Union!17982 r!11554))))

(declare-fun bm!650512 () Bool)

(declare-fun call!650515 () List!68943)

(assert (=> bm!650512 (= call!650514 (derivationStepZipperDown!2479 (ite c!1328700 (regTwo!36477 r!11554) (regOne!36476 r!11554)) (ite c!1328700 c!9994 (Context!13953 call!650515)) a!1901))))

(declare-fun bm!650513 () Bool)

(assert (=> bm!650513 (= call!650519 call!650515)))

(declare-fun b!7119711 () Bool)

(assert (=> b!7119711 (= e!4277988 (set.union call!650517 call!650514))))

(declare-fun b!7119712 () Bool)

(declare-fun c!1328699 () Bool)

(assert (=> b!7119712 (= c!1328699 (is-Star!17982 r!11554))))

(assert (=> b!7119712 (= e!4277992 e!4277989)))

(declare-fun b!7119713 () Bool)

(assert (=> b!7119713 (= e!4277989 (as set.empty (Set Context!13952)))))

(declare-fun bm!650514 () Bool)

(assert (=> bm!650514 (= call!650515 ($colon$colon!2826 (exprs!7476 c!9994) (ite (or c!1328701 c!1328697) (regTwo!36476 r!11554) r!11554)))))

(declare-fun b!7119714 () Bool)

(assert (=> b!7119714 (= e!4277992 call!650518)))

(assert (= (and d!2221743 c!1328698) b!7119705))

(assert (= (and d!2221743 (not c!1328698)) b!7119710))

(assert (= (and b!7119710 c!1328700) b!7119711))

(assert (= (and b!7119710 (not c!1328700)) b!7119704))

(assert (= (and b!7119704 res!2904458) b!7119707))

(assert (= (and b!7119704 c!1328701) b!7119709))

(assert (= (and b!7119704 (not c!1328701)) b!7119706))

(assert (= (and b!7119706 c!1328697) b!7119714))

(assert (= (and b!7119706 (not c!1328697)) b!7119712))

(assert (= (and b!7119712 c!1328699) b!7119708))

(assert (= (and b!7119712 (not c!1328699)) b!7119713))

(assert (= (or b!7119714 b!7119708) bm!650513))

(assert (= (or b!7119714 b!7119708) bm!650511))

(assert (= (or b!7119709 bm!650511) bm!650510))

(assert (= (or b!7119709 bm!650513) bm!650514))

(assert (= (or b!7119711 b!7119709) bm!650512))

(assert (= (or b!7119711 bm!650510) bm!650509))

(assert (=> b!7119707 m!7836910))

(declare-fun m!7837030 () Bool)

(assert (=> b!7119705 m!7837030))

(declare-fun m!7837032 () Bool)

(assert (=> bm!650512 m!7837032))

(declare-fun m!7837034 () Bool)

(assert (=> bm!650514 m!7837034))

(declare-fun m!7837036 () Bool)

(assert (=> bm!650509 m!7837036))

(assert (=> b!7119553 d!2221743))

(declare-fun call!650525 () List!68943)

(declare-fun c!1328705 () Bool)

(declare-fun c!1328706 () Bool)

(declare-fun bm!650515 () Bool)

(declare-fun call!650523 () (Set Context!13952))

(declare-fun c!1328702 () Bool)

(assert (=> bm!650515 (= call!650523 (derivationStepZipperDown!2479 (ite c!1328705 (regOne!36477 (reg!18311 r!11554)) (ite c!1328706 (regTwo!36476 (reg!18311 r!11554)) (ite c!1328702 (regOne!36476 (reg!18311 r!11554)) (reg!18311 (reg!18311 r!11554))))) (ite (or c!1328705 c!1328706) (Context!13953 (++!16134 lt!2561133 (exprs!7476 auxCtx!45))) (Context!13953 call!650525)) a!1901))))

(declare-fun b!7119715 () Bool)

(declare-fun e!4277993 () Bool)

(assert (=> b!7119715 (= c!1328706 e!4277993)))

(declare-fun res!2904459 () Bool)

(assert (=> b!7119715 (=> (not res!2904459) (not e!4277993))))

(assert (=> b!7119715 (= res!2904459 (is-Concat!26827 (reg!18311 r!11554)))))

(declare-fun e!4277994 () (Set Context!13952))

(declare-fun e!4277997 () (Set Context!13952))

(assert (=> b!7119715 (= e!4277994 e!4277997)))

(declare-fun b!7119716 () Bool)

(declare-fun e!4277996 () (Set Context!13952))

(assert (=> b!7119716 (= e!4277996 (set.insert (Context!13953 (++!16134 lt!2561133 (exprs!7476 auxCtx!45))) (as set.empty (Set Context!13952))))))

(declare-fun b!7119717 () Bool)

(declare-fun e!4277998 () (Set Context!13952))

(assert (=> b!7119717 (= e!4277997 e!4277998)))

(assert (=> b!7119717 (= c!1328702 (is-Concat!26827 (reg!18311 r!11554)))))

(declare-fun bm!650516 () Bool)

(declare-fun call!650522 () (Set Context!13952))

(assert (=> bm!650516 (= call!650522 call!650523)))

(declare-fun bm!650517 () Bool)

(declare-fun call!650524 () (Set Context!13952))

(assert (=> bm!650517 (= call!650524 call!650522)))

(declare-fun b!7119718 () Bool)

(assert (=> b!7119718 (= e!4277993 (nullable!7619 (regOne!36476 (reg!18311 r!11554))))))

(declare-fun d!2221745 () Bool)

(declare-fun c!1328703 () Bool)

(assert (=> d!2221745 (= c!1328703 (and (is-ElementMatch!17982 (reg!18311 r!11554)) (= (c!1328663 (reg!18311 r!11554)) a!1901)))))

(assert (=> d!2221745 (= (derivationStepZipperDown!2479 (reg!18311 r!11554) (Context!13953 (++!16134 lt!2561133 (exprs!7476 auxCtx!45))) a!1901) e!4277996)))

(declare-fun b!7119719 () Bool)

(declare-fun e!4277995 () (Set Context!13952))

(assert (=> b!7119719 (= e!4277995 call!650524)))

(declare-fun b!7119720 () Bool)

(declare-fun call!650520 () (Set Context!13952))

(assert (=> b!7119720 (= e!4277997 (set.union call!650520 call!650522))))

(declare-fun b!7119721 () Bool)

(assert (=> b!7119721 (= e!4277996 e!4277994)))

(assert (=> b!7119721 (= c!1328705 (is-Union!17982 (reg!18311 r!11554)))))

(declare-fun call!650521 () List!68943)

(declare-fun bm!650518 () Bool)

(assert (=> bm!650518 (= call!650520 (derivationStepZipperDown!2479 (ite c!1328705 (regTwo!36477 (reg!18311 r!11554)) (regOne!36476 (reg!18311 r!11554))) (ite c!1328705 (Context!13953 (++!16134 lt!2561133 (exprs!7476 auxCtx!45))) (Context!13953 call!650521)) a!1901))))

(declare-fun bm!650519 () Bool)

(assert (=> bm!650519 (= call!650525 call!650521)))

(declare-fun b!7119722 () Bool)

(assert (=> b!7119722 (= e!4277994 (set.union call!650523 call!650520))))

(declare-fun b!7119723 () Bool)

(declare-fun c!1328704 () Bool)

(assert (=> b!7119723 (= c!1328704 (is-Star!17982 (reg!18311 r!11554)))))

(assert (=> b!7119723 (= e!4277998 e!4277995)))

(declare-fun b!7119724 () Bool)

(assert (=> b!7119724 (= e!4277995 (as set.empty (Set Context!13952)))))

(declare-fun bm!650520 () Bool)

(assert (=> bm!650520 (= call!650521 ($colon$colon!2826 (exprs!7476 (Context!13953 (++!16134 lt!2561133 (exprs!7476 auxCtx!45)))) (ite (or c!1328706 c!1328702) (regTwo!36476 (reg!18311 r!11554)) (reg!18311 r!11554))))))

(declare-fun b!7119725 () Bool)

(assert (=> b!7119725 (= e!4277998 call!650524)))

(assert (= (and d!2221745 c!1328703) b!7119716))

(assert (= (and d!2221745 (not c!1328703)) b!7119721))

(assert (= (and b!7119721 c!1328705) b!7119722))

(assert (= (and b!7119721 (not c!1328705)) b!7119715))

(assert (= (and b!7119715 res!2904459) b!7119718))

(assert (= (and b!7119715 c!1328706) b!7119720))

(assert (= (and b!7119715 (not c!1328706)) b!7119717))

(assert (= (and b!7119717 c!1328702) b!7119725))

(assert (= (and b!7119717 (not c!1328702)) b!7119723))

(assert (= (and b!7119723 c!1328704) b!7119719))

(assert (= (and b!7119723 (not c!1328704)) b!7119724))

(assert (= (or b!7119725 b!7119719) bm!650519))

(assert (= (or b!7119725 b!7119719) bm!650517))

(assert (= (or b!7119720 bm!650517) bm!650516))

(assert (= (or b!7119720 bm!650519) bm!650520))

(assert (= (or b!7119722 b!7119720) bm!650518))

(assert (= (or b!7119722 bm!650516) bm!650515))

(assert (=> b!7119718 m!7836976))

(declare-fun m!7837038 () Bool)

(assert (=> b!7119716 m!7837038))

(declare-fun m!7837040 () Bool)

(assert (=> bm!650518 m!7837040))

(declare-fun m!7837042 () Bool)

(assert (=> bm!650520 m!7837042))

(declare-fun m!7837044 () Bool)

(assert (=> bm!650515 m!7837044))

(assert (=> b!7119553 d!2221745))

(assert (=> b!7119549 d!2221713))

(declare-fun b!7119734 () Bool)

(declare-fun e!4278003 () List!68943)

(assert (=> b!7119734 (= e!4278003 (exprs!7476 auxCtx!45))))

(declare-fun lt!2561188 () List!68943)

(declare-fun b!7119737 () Bool)

(declare-fun e!4278004 () Bool)

(assert (=> b!7119737 (= e!4278004 (or (not (= (exprs!7476 auxCtx!45) Nil!68819)) (= lt!2561188 (exprs!7476 c!9994))))))

(declare-fun b!7119735 () Bool)

(assert (=> b!7119735 (= e!4278003 (Cons!68819 (h!75267 (exprs!7476 c!9994)) (++!16134 (t!382804 (exprs!7476 c!9994)) (exprs!7476 auxCtx!45))))))

(declare-fun b!7119736 () Bool)

(declare-fun res!2904460 () Bool)

(assert (=> b!7119736 (=> (not res!2904460) (not e!4278004))))

(assert (=> b!7119736 (= res!2904460 (= (size!41429 lt!2561188) (+ (size!41429 (exprs!7476 c!9994)) (size!41429 (exprs!7476 auxCtx!45)))))))

(declare-fun d!2221747 () Bool)

(assert (=> d!2221747 e!4278004))

(declare-fun res!2904461 () Bool)

(assert (=> d!2221747 (=> (not res!2904461) (not e!4278004))))

(assert (=> d!2221747 (= res!2904461 (= (content!14054 lt!2561188) (set.union (content!14054 (exprs!7476 c!9994)) (content!14054 (exprs!7476 auxCtx!45)))))))

(assert (=> d!2221747 (= lt!2561188 e!4278003)))

(declare-fun c!1328711 () Bool)

(assert (=> d!2221747 (= c!1328711 (is-Nil!68819 (exprs!7476 c!9994)))))

(assert (=> d!2221747 (= (++!16134 (exprs!7476 c!9994) (exprs!7476 auxCtx!45)) lt!2561188)))

(assert (= (and d!2221747 c!1328711) b!7119734))

(assert (= (and d!2221747 (not c!1328711)) b!7119735))

(assert (= (and d!2221747 res!2904461) b!7119736))

(assert (= (and b!7119736 res!2904460) b!7119737))

(declare-fun m!7837046 () Bool)

(assert (=> b!7119735 m!7837046))

(declare-fun m!7837048 () Bool)

(assert (=> b!7119736 m!7837048))

(declare-fun m!7837050 () Bool)

(assert (=> b!7119736 m!7837050))

(assert (=> b!7119736 m!7837010))

(declare-fun m!7837052 () Bool)

(assert (=> d!2221747 m!7837052))

(declare-fun m!7837054 () Bool)

(assert (=> d!2221747 m!7837054))

(assert (=> d!2221747 m!7837016))

(assert (=> b!7119549 d!2221747))

(assert (=> b!7119549 d!2221711))

(declare-fun call!650529 () (Set Context!13952))

(declare-fun call!650531 () List!68943)

(declare-fun c!1328718 () Bool)

(declare-fun c!1328722 () Bool)

(declare-fun c!1328721 () Bool)

(declare-fun bm!650521 () Bool)

(assert (=> bm!650521 (= call!650529 (derivationStepZipperDown!2479 (ite c!1328721 (regOne!36477 (reg!18311 r!11554)) (ite c!1328722 (regTwo!36476 (reg!18311 r!11554)) (ite c!1328718 (regOne!36476 (reg!18311 r!11554)) (reg!18311 (reg!18311 r!11554))))) (ite (or c!1328721 c!1328722) (Context!13953 ($colon$colon!2826 lt!2561139 r!11554)) (Context!13953 call!650531)) a!1901))))

(declare-fun b!7119752 () Bool)

(declare-fun e!4278013 () Bool)

(assert (=> b!7119752 (= c!1328722 e!4278013)))

(declare-fun res!2904464 () Bool)

(assert (=> b!7119752 (=> (not res!2904464) (not e!4278013))))

(assert (=> b!7119752 (= res!2904464 (is-Concat!26827 (reg!18311 r!11554)))))

(declare-fun e!4278014 () (Set Context!13952))

(declare-fun e!4278017 () (Set Context!13952))

(assert (=> b!7119752 (= e!4278014 e!4278017)))

(declare-fun b!7119753 () Bool)

(declare-fun e!4278016 () (Set Context!13952))

(assert (=> b!7119753 (= e!4278016 (set.insert (Context!13953 ($colon$colon!2826 lt!2561139 r!11554)) (as set.empty (Set Context!13952))))))

(declare-fun b!7119754 () Bool)

(declare-fun e!4278018 () (Set Context!13952))

(assert (=> b!7119754 (= e!4278017 e!4278018)))

(assert (=> b!7119754 (= c!1328718 (is-Concat!26827 (reg!18311 r!11554)))))

(declare-fun bm!650522 () Bool)

(declare-fun call!650528 () (Set Context!13952))

(assert (=> bm!650522 (= call!650528 call!650529)))

(declare-fun bm!650523 () Bool)

(declare-fun call!650530 () (Set Context!13952))

(assert (=> bm!650523 (= call!650530 call!650528)))

(declare-fun b!7119755 () Bool)

(assert (=> b!7119755 (= e!4278013 (nullable!7619 (regOne!36476 (reg!18311 r!11554))))))

(declare-fun d!2221749 () Bool)

(declare-fun c!1328719 () Bool)

(assert (=> d!2221749 (= c!1328719 (and (is-ElementMatch!17982 (reg!18311 r!11554)) (= (c!1328663 (reg!18311 r!11554)) a!1901)))))

(assert (=> d!2221749 (= (derivationStepZipperDown!2479 (reg!18311 r!11554) (Context!13953 ($colon$colon!2826 lt!2561139 r!11554)) a!1901) e!4278016)))

(declare-fun b!7119756 () Bool)

(declare-fun e!4278015 () (Set Context!13952))

(assert (=> b!7119756 (= e!4278015 call!650530)))

(declare-fun b!7119757 () Bool)

(declare-fun call!650526 () (Set Context!13952))

(assert (=> b!7119757 (= e!4278017 (set.union call!650526 call!650528))))

(declare-fun b!7119758 () Bool)

(assert (=> b!7119758 (= e!4278016 e!4278014)))

(assert (=> b!7119758 (= c!1328721 (is-Union!17982 (reg!18311 r!11554)))))

(declare-fun call!650527 () List!68943)

(declare-fun bm!650524 () Bool)

(assert (=> bm!650524 (= call!650526 (derivationStepZipperDown!2479 (ite c!1328721 (regTwo!36477 (reg!18311 r!11554)) (regOne!36476 (reg!18311 r!11554))) (ite c!1328721 (Context!13953 ($colon$colon!2826 lt!2561139 r!11554)) (Context!13953 call!650527)) a!1901))))

(declare-fun bm!650525 () Bool)

(assert (=> bm!650525 (= call!650531 call!650527)))

(declare-fun b!7119759 () Bool)

(assert (=> b!7119759 (= e!4278014 (set.union call!650529 call!650526))))

(declare-fun b!7119760 () Bool)

(declare-fun c!1328720 () Bool)

(assert (=> b!7119760 (= c!1328720 (is-Star!17982 (reg!18311 r!11554)))))

(assert (=> b!7119760 (= e!4278018 e!4278015)))

(declare-fun b!7119761 () Bool)

(assert (=> b!7119761 (= e!4278015 (as set.empty (Set Context!13952)))))

(declare-fun bm!650526 () Bool)

(assert (=> bm!650526 (= call!650527 ($colon$colon!2826 (exprs!7476 (Context!13953 ($colon$colon!2826 lt!2561139 r!11554))) (ite (or c!1328722 c!1328718) (regTwo!36476 (reg!18311 r!11554)) (reg!18311 r!11554))))))

(declare-fun b!7119762 () Bool)

(assert (=> b!7119762 (= e!4278018 call!650530)))

(assert (= (and d!2221749 c!1328719) b!7119753))

(assert (= (and d!2221749 (not c!1328719)) b!7119758))

(assert (= (and b!7119758 c!1328721) b!7119759))

(assert (= (and b!7119758 (not c!1328721)) b!7119752))

(assert (= (and b!7119752 res!2904464) b!7119755))

(assert (= (and b!7119752 c!1328722) b!7119757))

(assert (= (and b!7119752 (not c!1328722)) b!7119754))

(assert (= (and b!7119754 c!1328718) b!7119762))

(assert (= (and b!7119754 (not c!1328718)) b!7119760))

(assert (= (and b!7119760 c!1328720) b!7119756))

(assert (= (and b!7119760 (not c!1328720)) b!7119761))

(assert (= (or b!7119762 b!7119756) bm!650525))

(assert (= (or b!7119762 b!7119756) bm!650523))

(assert (= (or b!7119757 bm!650523) bm!650522))

(assert (= (or b!7119757 bm!650525) bm!650526))

(assert (= (or b!7119759 b!7119757) bm!650524))

(assert (= (or b!7119759 bm!650522) bm!650521))

(assert (=> b!7119755 m!7836976))

(declare-fun m!7837056 () Bool)

(assert (=> b!7119753 m!7837056))

(declare-fun m!7837058 () Bool)

(assert (=> bm!650524 m!7837058))

(declare-fun m!7837060 () Bool)

(assert (=> bm!650526 m!7837060))

(declare-fun m!7837062 () Bool)

(assert (=> bm!650521 m!7837062))

(assert (=> b!7119554 d!2221749))

(declare-fun d!2221751 () Bool)

(assert (=> d!2221751 (= ($colon$colon!2826 lt!2561139 r!11554) (Cons!68819 r!11554 lt!2561139))))

(assert (=> b!7119554 d!2221751))

(declare-fun c!1328723 () Bool)

(declare-fun call!650539 () List!68943)

(declare-fun c!1328727 () Bool)

(declare-fun bm!650529 () Bool)

(declare-fun c!1328726 () Bool)

(declare-fun call!650537 () (Set Context!13952))

(assert (=> bm!650529 (= call!650537 (derivationStepZipperDown!2479 (ite c!1328726 (regOne!36477 r!11554) (ite c!1328727 (regTwo!36476 r!11554) (ite c!1328723 (regOne!36476 r!11554) (reg!18311 r!11554)))) (ite (or c!1328726 c!1328727) lt!2561138 (Context!13953 call!650539)) a!1901))))

(declare-fun b!7119763 () Bool)

(declare-fun e!4278019 () Bool)

(assert (=> b!7119763 (= c!1328727 e!4278019)))

(declare-fun res!2904465 () Bool)

(assert (=> b!7119763 (=> (not res!2904465) (not e!4278019))))

(assert (=> b!7119763 (= res!2904465 (is-Concat!26827 r!11554))))

(declare-fun e!4278020 () (Set Context!13952))

(declare-fun e!4278023 () (Set Context!13952))

(assert (=> b!7119763 (= e!4278020 e!4278023)))

(declare-fun b!7119764 () Bool)

(declare-fun e!4278022 () (Set Context!13952))

(assert (=> b!7119764 (= e!4278022 (set.insert lt!2561138 (as set.empty (Set Context!13952))))))

(declare-fun b!7119765 () Bool)

(declare-fun e!4278024 () (Set Context!13952))

(assert (=> b!7119765 (= e!4278023 e!4278024)))

(assert (=> b!7119765 (= c!1328723 (is-Concat!26827 r!11554))))

(declare-fun bm!650530 () Bool)

(declare-fun call!650536 () (Set Context!13952))

(assert (=> bm!650530 (= call!650536 call!650537)))

(declare-fun bm!650531 () Bool)

(declare-fun call!650538 () (Set Context!13952))

(assert (=> bm!650531 (= call!650538 call!650536)))

(declare-fun b!7119766 () Bool)

(assert (=> b!7119766 (= e!4278019 (nullable!7619 (regOne!36476 r!11554)))))

(declare-fun d!2221753 () Bool)

(declare-fun c!1328724 () Bool)

(assert (=> d!2221753 (= c!1328724 (and (is-ElementMatch!17982 r!11554) (= (c!1328663 r!11554) a!1901)))))

(assert (=> d!2221753 (= (derivationStepZipperDown!2479 r!11554 lt!2561138 a!1901) e!4278022)))

(declare-fun b!7119767 () Bool)

(declare-fun e!4278021 () (Set Context!13952))

(assert (=> b!7119767 (= e!4278021 call!650538)))

(declare-fun b!7119768 () Bool)

(declare-fun call!650534 () (Set Context!13952))

(assert (=> b!7119768 (= e!4278023 (set.union call!650534 call!650536))))

(declare-fun b!7119769 () Bool)

(assert (=> b!7119769 (= e!4278022 e!4278020)))

(assert (=> b!7119769 (= c!1328726 (is-Union!17982 r!11554))))

(declare-fun call!650535 () List!68943)

(declare-fun bm!650532 () Bool)

(assert (=> bm!650532 (= call!650534 (derivationStepZipperDown!2479 (ite c!1328726 (regTwo!36477 r!11554) (regOne!36476 r!11554)) (ite c!1328726 lt!2561138 (Context!13953 call!650535)) a!1901))))

(declare-fun bm!650533 () Bool)

(assert (=> bm!650533 (= call!650539 call!650535)))

(declare-fun b!7119770 () Bool)

(assert (=> b!7119770 (= e!4278020 (set.union call!650537 call!650534))))

(declare-fun b!7119771 () Bool)

(declare-fun c!1328725 () Bool)

(assert (=> b!7119771 (= c!1328725 (is-Star!17982 r!11554))))

(assert (=> b!7119771 (= e!4278024 e!4278021)))

(declare-fun b!7119772 () Bool)

(assert (=> b!7119772 (= e!4278021 (as set.empty (Set Context!13952)))))

(declare-fun bm!650534 () Bool)

(assert (=> bm!650534 (= call!650535 ($colon$colon!2826 (exprs!7476 lt!2561138) (ite (or c!1328727 c!1328723) (regTwo!36476 r!11554) r!11554)))))

(declare-fun b!7119773 () Bool)

(assert (=> b!7119773 (= e!4278024 call!650538)))

(assert (= (and d!2221753 c!1328724) b!7119764))

(assert (= (and d!2221753 (not c!1328724)) b!7119769))

(assert (= (and b!7119769 c!1328726) b!7119770))

(assert (= (and b!7119769 (not c!1328726)) b!7119763))

(assert (= (and b!7119763 res!2904465) b!7119766))

(assert (= (and b!7119763 c!1328727) b!7119768))

(assert (= (and b!7119763 (not c!1328727)) b!7119765))

(assert (= (and b!7119765 c!1328723) b!7119773))

(assert (= (and b!7119765 (not c!1328723)) b!7119771))

(assert (= (and b!7119771 c!1328725) b!7119767))

(assert (= (and b!7119771 (not c!1328725)) b!7119772))

(assert (= (or b!7119773 b!7119767) bm!650533))

(assert (= (or b!7119773 b!7119767) bm!650531))

(assert (= (or b!7119768 bm!650531) bm!650530))

(assert (= (or b!7119768 bm!650533) bm!650534))

(assert (= (or b!7119770 b!7119768) bm!650532))

(assert (= (or b!7119770 bm!650530) bm!650529))

(assert (=> b!7119766 m!7836910))

(declare-fun m!7837064 () Bool)

(assert (=> b!7119764 m!7837064))

(declare-fun m!7837066 () Bool)

(assert (=> bm!650532 m!7837066))

(declare-fun m!7837068 () Bool)

(assert (=> bm!650534 m!7837068))

(declare-fun m!7837070 () Bool)

(assert (=> bm!650529 m!7837070))

(assert (=> b!7119554 d!2221753))

(declare-fun b!7119778 () Bool)

(declare-fun e!4278027 () Bool)

(declare-fun tp!1959959 () Bool)

(declare-fun tp!1959960 () Bool)

(assert (=> b!7119778 (= e!4278027 (and tp!1959959 tp!1959960))))

(assert (=> b!7119556 (= tp!1959931 e!4278027)))

(assert (= (and b!7119556 (is-Cons!68819 (exprs!7476 auxCtx!45))) b!7119778))

(declare-fun b!7119789 () Bool)

(declare-fun e!4278030 () Bool)

(assert (=> b!7119789 (= e!4278030 tp_is_empty!45197)))

(declare-fun b!7119792 () Bool)

(declare-fun tp!1959973 () Bool)

(declare-fun tp!1959972 () Bool)

(assert (=> b!7119792 (= e!4278030 (and tp!1959973 tp!1959972))))

(assert (=> b!7119552 (= tp!1959929 e!4278030)))

(declare-fun b!7119790 () Bool)

(declare-fun tp!1959975 () Bool)

(declare-fun tp!1959971 () Bool)

(assert (=> b!7119790 (= e!4278030 (and tp!1959975 tp!1959971))))

(declare-fun b!7119791 () Bool)

(declare-fun tp!1959974 () Bool)

(assert (=> b!7119791 (= e!4278030 tp!1959974)))

(assert (= (and b!7119552 (is-ElementMatch!17982 (regOne!36476 r!11554))) b!7119789))

(assert (= (and b!7119552 (is-Concat!26827 (regOne!36476 r!11554))) b!7119790))

(assert (= (and b!7119552 (is-Star!17982 (regOne!36476 r!11554))) b!7119791))

(assert (= (and b!7119552 (is-Union!17982 (regOne!36476 r!11554))) b!7119792))

(declare-fun b!7119793 () Bool)

(declare-fun e!4278031 () Bool)

(assert (=> b!7119793 (= e!4278031 tp_is_empty!45197)))

(declare-fun b!7119796 () Bool)

(declare-fun tp!1959978 () Bool)

(declare-fun tp!1959977 () Bool)

(assert (=> b!7119796 (= e!4278031 (and tp!1959978 tp!1959977))))

(assert (=> b!7119552 (= tp!1959930 e!4278031)))

(declare-fun b!7119794 () Bool)

(declare-fun tp!1959980 () Bool)

(declare-fun tp!1959976 () Bool)

(assert (=> b!7119794 (= e!4278031 (and tp!1959980 tp!1959976))))

(declare-fun b!7119795 () Bool)

(declare-fun tp!1959979 () Bool)

(assert (=> b!7119795 (= e!4278031 tp!1959979)))

(assert (= (and b!7119552 (is-ElementMatch!17982 (regTwo!36476 r!11554))) b!7119793))

(assert (= (and b!7119552 (is-Concat!26827 (regTwo!36476 r!11554))) b!7119794))

(assert (= (and b!7119552 (is-Star!17982 (regTwo!36476 r!11554))) b!7119795))

(assert (= (and b!7119552 (is-Union!17982 (regTwo!36476 r!11554))) b!7119796))

(declare-fun b!7119797 () Bool)

(declare-fun e!4278032 () Bool)

(declare-fun tp!1959981 () Bool)

(declare-fun tp!1959982 () Bool)

(assert (=> b!7119797 (= e!4278032 (and tp!1959981 tp!1959982))))

(assert (=> b!7119557 (= tp!1959928 e!4278032)))

(assert (= (and b!7119557 (is-Cons!68819 (exprs!7476 c!9994))) b!7119797))

(declare-fun b!7119798 () Bool)

(declare-fun e!4278033 () Bool)

(assert (=> b!7119798 (= e!4278033 tp_is_empty!45197)))

(declare-fun b!7119801 () Bool)

(declare-fun tp!1959985 () Bool)

(declare-fun tp!1959984 () Bool)

(assert (=> b!7119801 (= e!4278033 (and tp!1959985 tp!1959984))))

(assert (=> b!7119548 (= tp!1959927 e!4278033)))

(declare-fun b!7119799 () Bool)

(declare-fun tp!1959987 () Bool)

(declare-fun tp!1959983 () Bool)

(assert (=> b!7119799 (= e!4278033 (and tp!1959987 tp!1959983))))

(declare-fun b!7119800 () Bool)

(declare-fun tp!1959986 () Bool)

(assert (=> b!7119800 (= e!4278033 tp!1959986)))

(assert (= (and b!7119548 (is-ElementMatch!17982 (regOne!36477 r!11554))) b!7119798))

(assert (= (and b!7119548 (is-Concat!26827 (regOne!36477 r!11554))) b!7119799))

(assert (= (and b!7119548 (is-Star!17982 (regOne!36477 r!11554))) b!7119800))

(assert (= (and b!7119548 (is-Union!17982 (regOne!36477 r!11554))) b!7119801))

(declare-fun b!7119802 () Bool)

(declare-fun e!4278034 () Bool)

(assert (=> b!7119802 (= e!4278034 tp_is_empty!45197)))

(declare-fun b!7119805 () Bool)

(declare-fun tp!1959990 () Bool)

(declare-fun tp!1959989 () Bool)

(assert (=> b!7119805 (= e!4278034 (and tp!1959990 tp!1959989))))

(assert (=> b!7119548 (= tp!1959933 e!4278034)))

(declare-fun b!7119803 () Bool)

(declare-fun tp!1959992 () Bool)

(declare-fun tp!1959988 () Bool)

(assert (=> b!7119803 (= e!4278034 (and tp!1959992 tp!1959988))))

(declare-fun b!7119804 () Bool)

(declare-fun tp!1959991 () Bool)

(assert (=> b!7119804 (= e!4278034 tp!1959991)))

(assert (= (and b!7119548 (is-ElementMatch!17982 (regTwo!36477 r!11554))) b!7119802))

(assert (= (and b!7119548 (is-Concat!26827 (regTwo!36477 r!11554))) b!7119803))

(assert (= (and b!7119548 (is-Star!17982 (regTwo!36477 r!11554))) b!7119804))

(assert (= (and b!7119548 (is-Union!17982 (regTwo!36477 r!11554))) b!7119805))

(declare-fun b!7119806 () Bool)

(declare-fun e!4278035 () Bool)

(assert (=> b!7119806 (= e!4278035 tp_is_empty!45197)))

(declare-fun b!7119809 () Bool)

(declare-fun tp!1959995 () Bool)

(declare-fun tp!1959994 () Bool)

(assert (=> b!7119809 (= e!4278035 (and tp!1959995 tp!1959994))))

(assert (=> b!7119558 (= tp!1959932 e!4278035)))

(declare-fun b!7119807 () Bool)

(declare-fun tp!1959997 () Bool)

(declare-fun tp!1959993 () Bool)

(assert (=> b!7119807 (= e!4278035 (and tp!1959997 tp!1959993))))

(declare-fun b!7119808 () Bool)

(declare-fun tp!1959996 () Bool)

(assert (=> b!7119808 (= e!4278035 tp!1959996)))

(assert (= (and b!7119558 (is-ElementMatch!17982 (reg!18311 r!11554))) b!7119806))

(assert (= (and b!7119558 (is-Concat!26827 (reg!18311 r!11554))) b!7119807))

(assert (= (and b!7119558 (is-Star!17982 (reg!18311 r!11554))) b!7119808))

(assert (= (and b!7119558 (is-Union!17982 (reg!18311 r!11554))) b!7119809))

(push 1)

(assert (not b!7119795))

(assert (not b!7119736))

(assert (not b!7119800))

(assert (not bm!650521))

(assert (not bm!650500))

(assert (not bm!650520))

(assert (not bm!650509))

(assert (not b!7119673))

(assert (not b!7119799))

(assert (not b!7119766))

(assert (not b!7119809))

(assert (not bm!650524))

(assert (not b!7119805))

(assert (not b!7119804))

(assert (not b!7119755))

(assert (not b!7119801))

(assert (not bm!650512))

(assert (not d!2221739))

(assert (not b!7119807))

(assert (not bm!650479))

(assert (not bm!650515))

(assert (not d!2221731))

(assert (not d!2221719))

(assert (not b!7119790))

(assert (not b!7119796))

(assert (not b!7119803))

(assert (not d!2221747))

(assert (not b!7119792))

(assert (not b!7119794))

(assert tp_is_empty!45197)

(assert (not d!2221711))

(assert (not d!2221725))

(assert (not bm!650534))

(assert (not bm!650529))

(assert (not b!7119791))

(assert (not d!2221715))

(assert (not bm!650481))

(assert (not b!7119718))

(assert (not b!7119797))

(assert (not bm!650514))

(assert (not b!7119808))

(assert (not bm!650532))

(assert (not d!2221735))

(assert (not b!7119778))

(assert (not b!7119702))

(assert (not d!2221709))

(assert (not bm!650518))

(assert (not b!7119707))

(assert (not bm!650503))

(assert (not bm!650505))

(assert (not d!2221717))

(assert (not b!7119701))

(assert (not d!2221727))

(assert (not b!7119626))

(assert (not bm!650526))

(assert (not b!7119735))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

