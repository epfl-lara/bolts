; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690590 () Bool)

(assert start!690590)

(declare-fun b!7094505 () Bool)

(declare-fun e!4264687 () Bool)

(declare-fun tp_is_empty!44877 () Bool)

(assert (=> b!7094505 (= e!4264687 tp_is_empty!44877)))

(declare-fun b!7094506 () Bool)

(declare-fun e!4264688 () Bool)

(declare-datatypes ((C!35914 0))(
  ( (C!35915 (val!27663 Int)) )
))
(declare-datatypes ((Regex!17822 0))(
  ( (ElementMatch!17822 (c!1323931 C!35914)) (Concat!26667 (regOne!36156 Regex!17822) (regTwo!36156 Regex!17822)) (EmptyExpr!17822) (Star!17822 (reg!18151 Regex!17822)) (EmptyLang!17822) (Union!17822 (regOne!36157 Regex!17822) (regTwo!36157 Regex!17822)) )
))
(declare-fun r!11554 () Regex!17822)

(declare-fun nullable!7462 (Regex!17822) Bool)

(assert (=> b!7094506 (= e!4264688 (not (nullable!7462 (regOne!36156 r!11554))))))

(declare-fun b!7094507 () Bool)

(declare-fun res!2897183 () Bool)

(declare-fun e!4264685 () Bool)

(assert (=> b!7094507 (=> (not res!2897183) (not e!4264685))))

(declare-fun a!1901 () C!35914)

(assert (=> b!7094507 (= res!2897183 (and (or (not (is-ElementMatch!17822 r!11554)) (not (= (c!1323931 r!11554) a!1901))) (not (is-Union!17822 r!11554))))))

(declare-fun b!7094508 () Bool)

(declare-fun e!4264686 () Bool)

(declare-fun tp!1949422 () Bool)

(assert (=> b!7094508 (= e!4264686 tp!1949422)))

(declare-fun b!7094509 () Bool)

(declare-fun res!2897186 () Bool)

(assert (=> b!7094509 (=> (not res!2897186) (not e!4264685))))

(assert (=> b!7094509 (= res!2897186 (is-Concat!26667 r!11554))))

(declare-fun b!7094510 () Bool)

(declare-fun e!4264684 () Bool)

(assert (=> b!7094510 (= e!4264685 e!4264684)))

(declare-fun res!2897187 () Bool)

(assert (=> b!7094510 (=> (not res!2897187) (not e!4264684))))

(declare-fun validRegex!9097 (Regex!17822) Bool)

(assert (=> b!7094510 (= res!2897187 (validRegex!9097 (regTwo!36156 r!11554)))))

(declare-datatypes ((List!68785 0))(
  ( (Nil!68661) (Cons!68661 (h!75109 Regex!17822) (t!382580 List!68785)) )
))
(declare-fun lt!2556973 () List!68785)

(declare-datatypes ((Context!13636 0))(
  ( (Context!13637 (exprs!7318 List!68785)) )
))
(declare-fun c!9994 () Context!13636)

(declare-fun auxCtx!45 () Context!13636)

(declare-fun ++!15986 (List!68785 List!68785) List!68785)

(assert (=> b!7094510 (= lt!2556973 (++!15986 (exprs!7318 c!9994) (exprs!7318 auxCtx!45)))))

(declare-datatypes ((Unit!162327 0))(
  ( (Unit!162328) )
))
(declare-fun lt!2556971 () Unit!162327)

(declare-fun lambda!430302 () Int)

(declare-fun lemmaConcatPreservesForall!1117 (List!68785 List!68785 Int) Unit!162327)

(assert (=> b!7094510 (= lt!2556971 (lemmaConcatPreservesForall!1117 (exprs!7318 c!9994) (exprs!7318 auxCtx!45) lambda!430302))))

(declare-fun lt!2556972 () Unit!162327)

(assert (=> b!7094510 (= lt!2556972 (lemmaConcatPreservesForall!1117 (exprs!7318 c!9994) (exprs!7318 auxCtx!45) lambda!430302))))

(declare-fun b!7094511 () Bool)

(declare-fun e!4264683 () Bool)

(declare-fun tp!1949423 () Bool)

(assert (=> b!7094511 (= e!4264683 tp!1949423)))

(declare-fun b!7094512 () Bool)

(declare-fun tp!1949421 () Bool)

(assert (=> b!7094512 (= e!4264687 tp!1949421)))

(declare-fun b!7094513 () Bool)

(assert (=> b!7094513 (= e!4264684 (not (validRegex!9097 (regOne!36156 r!11554))))))

(declare-fun res!2897185 () Bool)

(assert (=> start!690590 (=> (not res!2897185) (not e!4264685))))

(assert (=> start!690590 (= res!2897185 (validRegex!9097 r!11554))))

(assert (=> start!690590 e!4264685))

(assert (=> start!690590 e!4264687))

(assert (=> start!690590 tp_is_empty!44877))

(declare-fun inv!87421 (Context!13636) Bool)

(assert (=> start!690590 (and (inv!87421 c!9994) e!4264683)))

(assert (=> start!690590 (and (inv!87421 auxCtx!45) e!4264686)))

(declare-fun b!7094514 () Bool)

(declare-fun tp!1949418 () Bool)

(declare-fun tp!1949420 () Bool)

(assert (=> b!7094514 (= e!4264687 (and tp!1949418 tp!1949420))))

(declare-fun b!7094515 () Bool)

(declare-fun tp!1949419 () Bool)

(declare-fun tp!1949417 () Bool)

(assert (=> b!7094515 (= e!4264687 (and tp!1949419 tp!1949417))))

(declare-fun b!7094516 () Bool)

(declare-fun res!2897188 () Bool)

(assert (=> b!7094516 (=> (not res!2897188) (not e!4264685))))

(assert (=> b!7094516 (= res!2897188 e!4264688)))

(declare-fun res!2897184 () Bool)

(assert (=> b!7094516 (=> res!2897184 e!4264688)))

(assert (=> b!7094516 (= res!2897184 (not (is-Concat!26667 r!11554)))))

(assert (= (and start!690590 res!2897185) b!7094507))

(assert (= (and b!7094507 res!2897183) b!7094516))

(assert (= (and b!7094516 (not res!2897184)) b!7094506))

(assert (= (and b!7094516 res!2897188) b!7094509))

(assert (= (and b!7094509 res!2897186) b!7094510))

(assert (= (and b!7094510 res!2897187) b!7094513))

(assert (= (and start!690590 (is-ElementMatch!17822 r!11554)) b!7094505))

(assert (= (and start!690590 (is-Concat!26667 r!11554)) b!7094514))

(assert (= (and start!690590 (is-Star!17822 r!11554)) b!7094512))

(assert (= (and start!690590 (is-Union!17822 r!11554)) b!7094515))

(assert (= start!690590 b!7094511))

(assert (= start!690590 b!7094508))

(declare-fun m!7822584 () Bool)

(assert (=> b!7094506 m!7822584))

(declare-fun m!7822586 () Bool)

(assert (=> b!7094510 m!7822586))

(declare-fun m!7822588 () Bool)

(assert (=> b!7094510 m!7822588))

(declare-fun m!7822590 () Bool)

(assert (=> b!7094510 m!7822590))

(assert (=> b!7094510 m!7822590))

(declare-fun m!7822592 () Bool)

(assert (=> b!7094513 m!7822592))

(declare-fun m!7822594 () Bool)

(assert (=> start!690590 m!7822594))

(declare-fun m!7822596 () Bool)

(assert (=> start!690590 m!7822596))

(declare-fun m!7822598 () Bool)

(assert (=> start!690590 m!7822598))

(push 1)

(assert (not b!7094514))

(assert (not b!7094506))

(assert (not start!690590))

(assert (not b!7094512))

(assert (not b!7094511))

(assert (not b!7094510))

(assert tp_is_empty!44877)

(assert (not b!7094508))

(assert (not b!7094513))

(assert (not b!7094515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!645469 () Bool)

(declare-fun call!645474 () Bool)

(declare-fun c!1323938 () Bool)

(assert (=> bm!645469 (= call!645474 (validRegex!9097 (ite c!1323938 (regOne!36157 (regTwo!36156 r!11554)) (regTwo!36156 (regTwo!36156 r!11554)))))))

(declare-fun d!2217557 () Bool)

(declare-fun res!2897221 () Bool)

(declare-fun e!4264721 () Bool)

(assert (=> d!2217557 (=> res!2897221 e!4264721)))

(assert (=> d!2217557 (= res!2897221 (is-ElementMatch!17822 (regTwo!36156 r!11554)))))

(assert (=> d!2217557 (= (validRegex!9097 (regTwo!36156 r!11554)) e!4264721)))

(declare-fun b!7094571 () Bool)

(declare-fun e!4264726 () Bool)

(declare-fun call!645476 () Bool)

(assert (=> b!7094571 (= e!4264726 call!645476)))

(declare-fun b!7094572 () Bool)

(declare-fun e!4264727 () Bool)

(declare-fun e!4264722 () Bool)

(assert (=> b!7094572 (= e!4264727 e!4264722)))

(assert (=> b!7094572 (= c!1323938 (is-Union!17822 (regTwo!36156 r!11554)))))

(declare-fun b!7094573 () Bool)

(assert (=> b!7094573 (= e!4264727 e!4264726)))

(declare-fun res!2897217 () Bool)

(assert (=> b!7094573 (= res!2897217 (not (nullable!7462 (reg!18151 (regTwo!36156 r!11554)))))))

(assert (=> b!7094573 (=> (not res!2897217) (not e!4264726))))

(declare-fun b!7094574 () Bool)

(declare-fun e!4264723 () Bool)

(declare-fun e!4264725 () Bool)

(assert (=> b!7094574 (= e!4264723 e!4264725)))

(declare-fun res!2897220 () Bool)

(assert (=> b!7094574 (=> (not res!2897220) (not e!4264725))))

(declare-fun call!645475 () Bool)

(assert (=> b!7094574 (= res!2897220 call!645475)))

(declare-fun b!7094575 () Bool)

(declare-fun res!2897219 () Bool)

(assert (=> b!7094575 (=> res!2897219 e!4264723)))

(assert (=> b!7094575 (= res!2897219 (not (is-Concat!26667 (regTwo!36156 r!11554))))))

(assert (=> b!7094575 (= e!4264722 e!4264723)))

(declare-fun b!7094576 () Bool)

(assert (=> b!7094576 (= e!4264725 call!645474)))

(declare-fun bm!645470 () Bool)

(declare-fun c!1323937 () Bool)

(assert (=> bm!645470 (= call!645476 (validRegex!9097 (ite c!1323937 (reg!18151 (regTwo!36156 r!11554)) (ite c!1323938 (regTwo!36157 (regTwo!36156 r!11554)) (regOne!36156 (regTwo!36156 r!11554))))))))

(declare-fun bm!645471 () Bool)

(assert (=> bm!645471 (= call!645475 call!645476)))

(declare-fun b!7094577 () Bool)

(declare-fun e!4264724 () Bool)

(assert (=> b!7094577 (= e!4264724 call!645475)))

(declare-fun b!7094578 () Bool)

(assert (=> b!7094578 (= e!4264721 e!4264727)))

(assert (=> b!7094578 (= c!1323937 (is-Star!17822 (regTwo!36156 r!11554)))))

(declare-fun b!7094579 () Bool)

(declare-fun res!2897218 () Bool)

(assert (=> b!7094579 (=> (not res!2897218) (not e!4264724))))

(assert (=> b!7094579 (= res!2897218 call!645474)))

(assert (=> b!7094579 (= e!4264722 e!4264724)))

(assert (= (and d!2217557 (not res!2897221)) b!7094578))

(assert (= (and b!7094578 c!1323937) b!7094573))

(assert (= (and b!7094578 (not c!1323937)) b!7094572))

(assert (= (and b!7094573 res!2897217) b!7094571))

(assert (= (and b!7094572 c!1323938) b!7094579))

(assert (= (and b!7094572 (not c!1323938)) b!7094575))

(assert (= (and b!7094579 res!2897218) b!7094577))

(assert (= (and b!7094575 (not res!2897219)) b!7094574))

(assert (= (and b!7094574 res!2897220) b!7094576))

(assert (= (or b!7094579 b!7094576) bm!645469))

(assert (= (or b!7094577 b!7094574) bm!645471))

(assert (= (or b!7094571 bm!645471) bm!645470))

(declare-fun m!7822616 () Bool)

(assert (=> bm!645469 m!7822616))

(declare-fun m!7822618 () Bool)

(assert (=> b!7094573 m!7822618))

(declare-fun m!7822620 () Bool)

(assert (=> bm!645470 m!7822620))

(assert (=> b!7094510 d!2217557))

(declare-fun d!2217561 () Bool)

(declare-fun e!4264739 () Bool)

(assert (=> d!2217561 e!4264739))

(declare-fun res!2897231 () Bool)

(assert (=> d!2217561 (=> (not res!2897231) (not e!4264739))))

(declare-fun lt!2556985 () List!68785)

(declare-fun content!13947 (List!68785) (Set Regex!17822))

(assert (=> d!2217561 (= res!2897231 (= (content!13947 lt!2556985) (set.union (content!13947 (exprs!7318 c!9994)) (content!13947 (exprs!7318 auxCtx!45)))))))

(declare-fun e!4264738 () List!68785)

(assert (=> d!2217561 (= lt!2556985 e!4264738)))

(declare-fun c!1323943 () Bool)

(assert (=> d!2217561 (= c!1323943 (is-Nil!68661 (exprs!7318 c!9994)))))

(assert (=> d!2217561 (= (++!15986 (exprs!7318 c!9994) (exprs!7318 auxCtx!45)) lt!2556985)))

(declare-fun b!7094599 () Bool)

(assert (=> b!7094599 (= e!4264739 (or (not (= (exprs!7318 auxCtx!45) Nil!68661)) (= lt!2556985 (exprs!7318 c!9994))))))

(declare-fun b!7094596 () Bool)

(assert (=> b!7094596 (= e!4264738 (exprs!7318 auxCtx!45))))

(declare-fun b!7094597 () Bool)

(assert (=> b!7094597 (= e!4264738 (Cons!68661 (h!75109 (exprs!7318 c!9994)) (++!15986 (t!382580 (exprs!7318 c!9994)) (exprs!7318 auxCtx!45))))))

(declare-fun b!7094598 () Bool)

(declare-fun res!2897230 () Bool)

(assert (=> b!7094598 (=> (not res!2897230) (not e!4264739))))

(declare-fun size!41322 (List!68785) Int)

(assert (=> b!7094598 (= res!2897230 (= (size!41322 lt!2556985) (+ (size!41322 (exprs!7318 c!9994)) (size!41322 (exprs!7318 auxCtx!45)))))))

(assert (= (and d!2217561 c!1323943) b!7094596))

(assert (= (and d!2217561 (not c!1323943)) b!7094597))

(assert (= (and d!2217561 res!2897231) b!7094598))

(assert (= (and b!7094598 res!2897230) b!7094599))

(declare-fun m!7822622 () Bool)

(assert (=> d!2217561 m!7822622))

(declare-fun m!7822624 () Bool)

(assert (=> d!2217561 m!7822624))

(declare-fun m!7822626 () Bool)

(assert (=> d!2217561 m!7822626))

(declare-fun m!7822628 () Bool)

(assert (=> b!7094597 m!7822628))

(declare-fun m!7822630 () Bool)

(assert (=> b!7094598 m!7822630))

(declare-fun m!7822632 () Bool)

(assert (=> b!7094598 m!7822632))

(declare-fun m!7822634 () Bool)

(assert (=> b!7094598 m!7822634))

(assert (=> b!7094510 d!2217561))

(declare-fun d!2217563 () Bool)

(declare-fun forall!16748 (List!68785 Int) Bool)

(assert (=> d!2217563 (forall!16748 (++!15986 (exprs!7318 c!9994) (exprs!7318 auxCtx!45)) lambda!430302)))

(declare-fun lt!2556988 () Unit!162327)

(declare-fun choose!54704 (List!68785 List!68785 Int) Unit!162327)

(assert (=> d!2217563 (= lt!2556988 (choose!54704 (exprs!7318 c!9994) (exprs!7318 auxCtx!45) lambda!430302))))

(assert (=> d!2217563 (forall!16748 (exprs!7318 c!9994) lambda!430302)))

(assert (=> d!2217563 (= (lemmaConcatPreservesForall!1117 (exprs!7318 c!9994) (exprs!7318 auxCtx!45) lambda!430302) lt!2556988)))

(declare-fun bs!1883819 () Bool)

(assert (= bs!1883819 d!2217563))

(assert (=> bs!1883819 m!7822588))

(assert (=> bs!1883819 m!7822588))

(declare-fun m!7822636 () Bool)

(assert (=> bs!1883819 m!7822636))

(declare-fun m!7822638 () Bool)

(assert (=> bs!1883819 m!7822638))

(declare-fun m!7822640 () Bool)

(assert (=> bs!1883819 m!7822640))

(assert (=> b!7094510 d!2217563))

(declare-fun d!2217565 () Bool)

(declare-fun nullableFct!2866 (Regex!17822) Bool)

(assert (=> d!2217565 (= (nullable!7462 (regOne!36156 r!11554)) (nullableFct!2866 (regOne!36156 r!11554)))))

(declare-fun bs!1883820 () Bool)

(assert (= bs!1883820 d!2217565))

(declare-fun m!7822642 () Bool)

(assert (=> bs!1883820 m!7822642))

(assert (=> b!7094506 d!2217565))

(declare-fun bm!645478 () Bool)

(declare-fun call!645483 () Bool)

(declare-fun c!1323947 () Bool)

(assert (=> bm!645478 (= call!645483 (validRegex!9097 (ite c!1323947 (regOne!36157 (regOne!36156 r!11554)) (regTwo!36156 (regOne!36156 r!11554)))))))

(declare-fun d!2217567 () Bool)

(declare-fun res!2897242 () Bool)

(declare-fun e!4264748 () Bool)

(assert (=> d!2217567 (=> res!2897242 e!4264748)))

(assert (=> d!2217567 (= res!2897242 (is-ElementMatch!17822 (regOne!36156 r!11554)))))

(assert (=> d!2217567 (= (validRegex!9097 (regOne!36156 r!11554)) e!4264748)))

(declare-fun b!7094610 () Bool)

(declare-fun e!4264753 () Bool)

(declare-fun call!645485 () Bool)

(assert (=> b!7094610 (= e!4264753 call!645485)))

(declare-fun b!7094611 () Bool)

(declare-fun e!4264754 () Bool)

(declare-fun e!4264749 () Bool)

(assert (=> b!7094611 (= e!4264754 e!4264749)))

(assert (=> b!7094611 (= c!1323947 (is-Union!17822 (regOne!36156 r!11554)))))

(declare-fun b!7094612 () Bool)

(assert (=> b!7094612 (= e!4264754 e!4264753)))

(declare-fun res!2897238 () Bool)

(assert (=> b!7094612 (= res!2897238 (not (nullable!7462 (reg!18151 (regOne!36156 r!11554)))))))

(assert (=> b!7094612 (=> (not res!2897238) (not e!4264753))))

(declare-fun b!7094613 () Bool)

(declare-fun e!4264750 () Bool)

(declare-fun e!4264752 () Bool)

(assert (=> b!7094613 (= e!4264750 e!4264752)))

(declare-fun res!2897241 () Bool)

(assert (=> b!7094613 (=> (not res!2897241) (not e!4264752))))

(declare-fun call!645484 () Bool)

(assert (=> b!7094613 (= res!2897241 call!645484)))

(declare-fun b!7094614 () Bool)

(declare-fun res!2897240 () Bool)

(assert (=> b!7094614 (=> res!2897240 e!4264750)))

(assert (=> b!7094614 (= res!2897240 (not (is-Concat!26667 (regOne!36156 r!11554))))))

(assert (=> b!7094614 (= e!4264749 e!4264750)))

(declare-fun b!7094615 () Bool)

(assert (=> b!7094615 (= e!4264752 call!645483)))

(declare-fun bm!645479 () Bool)

(declare-fun c!1323946 () Bool)

(assert (=> bm!645479 (= call!645485 (validRegex!9097 (ite c!1323946 (reg!18151 (regOne!36156 r!11554)) (ite c!1323947 (regTwo!36157 (regOne!36156 r!11554)) (regOne!36156 (regOne!36156 r!11554))))))))

(declare-fun bm!645480 () Bool)

(assert (=> bm!645480 (= call!645484 call!645485)))

(declare-fun b!7094616 () Bool)

(declare-fun e!4264751 () Bool)

(assert (=> b!7094616 (= e!4264751 call!645484)))

(declare-fun b!7094617 () Bool)

(assert (=> b!7094617 (= e!4264748 e!4264754)))

(assert (=> b!7094617 (= c!1323946 (is-Star!17822 (regOne!36156 r!11554)))))

(declare-fun b!7094618 () Bool)

(declare-fun res!2897239 () Bool)

(assert (=> b!7094618 (=> (not res!2897239) (not e!4264751))))

(assert (=> b!7094618 (= res!2897239 call!645483)))

(assert (=> b!7094618 (= e!4264749 e!4264751)))

(assert (= (and d!2217567 (not res!2897242)) b!7094617))

(assert (= (and b!7094617 c!1323946) b!7094612))

(assert (= (and b!7094617 (not c!1323946)) b!7094611))

(assert (= (and b!7094612 res!2897238) b!7094610))

(assert (= (and b!7094611 c!1323947) b!7094618))

(assert (= (and b!7094611 (not c!1323947)) b!7094614))

(assert (= (and b!7094618 res!2897239) b!7094616))

(assert (= (and b!7094614 (not res!2897240)) b!7094613))

(assert (= (and b!7094613 res!2897241) b!7094615))

(assert (= (or b!7094618 b!7094615) bm!645478))

(assert (= (or b!7094616 b!7094613) bm!645480))

(assert (= (or b!7094610 bm!645480) bm!645479))

(declare-fun m!7822644 () Bool)

(assert (=> bm!645478 m!7822644))

(declare-fun m!7822646 () Bool)

(assert (=> b!7094612 m!7822646))

(declare-fun m!7822648 () Bool)

(assert (=> bm!645479 m!7822648))

(assert (=> b!7094513 d!2217567))

(declare-fun bm!645481 () Bool)

(declare-fun call!645486 () Bool)

(declare-fun c!1323949 () Bool)

(assert (=> bm!645481 (= call!645486 (validRegex!9097 (ite c!1323949 (regOne!36157 r!11554) (regTwo!36156 r!11554))))))

(declare-fun d!2217569 () Bool)

(declare-fun res!2897247 () Bool)

(declare-fun e!4264755 () Bool)

(assert (=> d!2217569 (=> res!2897247 e!4264755)))

(assert (=> d!2217569 (= res!2897247 (is-ElementMatch!17822 r!11554))))

(assert (=> d!2217569 (= (validRegex!9097 r!11554) e!4264755)))

(declare-fun b!7094619 () Bool)

(declare-fun e!4264760 () Bool)

(declare-fun call!645488 () Bool)

(assert (=> b!7094619 (= e!4264760 call!645488)))

(declare-fun b!7094620 () Bool)

(declare-fun e!4264761 () Bool)

(declare-fun e!4264756 () Bool)

(assert (=> b!7094620 (= e!4264761 e!4264756)))

(assert (=> b!7094620 (= c!1323949 (is-Union!17822 r!11554))))

(declare-fun b!7094621 () Bool)

(assert (=> b!7094621 (= e!4264761 e!4264760)))

(declare-fun res!2897243 () Bool)

(assert (=> b!7094621 (= res!2897243 (not (nullable!7462 (reg!18151 r!11554))))))

(assert (=> b!7094621 (=> (not res!2897243) (not e!4264760))))

(declare-fun b!7094622 () Bool)

(declare-fun e!4264757 () Bool)

(declare-fun e!4264759 () Bool)

(assert (=> b!7094622 (= e!4264757 e!4264759)))

(declare-fun res!2897246 () Bool)

(assert (=> b!7094622 (=> (not res!2897246) (not e!4264759))))

(declare-fun call!645487 () Bool)

(assert (=> b!7094622 (= res!2897246 call!645487)))

(declare-fun b!7094623 () Bool)

(declare-fun res!2897245 () Bool)

(assert (=> b!7094623 (=> res!2897245 e!4264757)))

(assert (=> b!7094623 (= res!2897245 (not (is-Concat!26667 r!11554)))))

(assert (=> b!7094623 (= e!4264756 e!4264757)))

(declare-fun b!7094624 () Bool)

(assert (=> b!7094624 (= e!4264759 call!645486)))

(declare-fun bm!645482 () Bool)

(declare-fun c!1323948 () Bool)

(assert (=> bm!645482 (= call!645488 (validRegex!9097 (ite c!1323948 (reg!18151 r!11554) (ite c!1323949 (regTwo!36157 r!11554) (regOne!36156 r!11554)))))))

(declare-fun bm!645483 () Bool)

(assert (=> bm!645483 (= call!645487 call!645488)))

(declare-fun b!7094625 () Bool)

(declare-fun e!4264758 () Bool)

(assert (=> b!7094625 (= e!4264758 call!645487)))

(declare-fun b!7094626 () Bool)

(assert (=> b!7094626 (= e!4264755 e!4264761)))

(assert (=> b!7094626 (= c!1323948 (is-Star!17822 r!11554))))

(declare-fun b!7094627 () Bool)

(declare-fun res!2897244 () Bool)

(assert (=> b!7094627 (=> (not res!2897244) (not e!4264758))))

(assert (=> b!7094627 (= res!2897244 call!645486)))

(assert (=> b!7094627 (= e!4264756 e!4264758)))

(assert (= (and d!2217569 (not res!2897247)) b!7094626))

(assert (= (and b!7094626 c!1323948) b!7094621))

(assert (= (and b!7094626 (not c!1323948)) b!7094620))

(assert (= (and b!7094621 res!2897243) b!7094619))

(assert (= (and b!7094620 c!1323949) b!7094627))

(assert (= (and b!7094620 (not c!1323949)) b!7094623))

(assert (= (and b!7094627 res!2897244) b!7094625))

(assert (= (and b!7094623 (not res!2897245)) b!7094622))

(assert (= (and b!7094622 res!2897246) b!7094624))

(assert (= (or b!7094627 b!7094624) bm!645481))

(assert (= (or b!7094625 b!7094622) bm!645483))

(assert (= (or b!7094619 bm!645483) bm!645482))

(declare-fun m!7822650 () Bool)

(assert (=> bm!645481 m!7822650))

(declare-fun m!7822652 () Bool)

(assert (=> b!7094621 m!7822652))

(declare-fun m!7822654 () Bool)

(assert (=> bm!645482 m!7822654))

(assert (=> start!690590 d!2217569))

(declare-fun bs!1883821 () Bool)

(declare-fun d!2217571 () Bool)

(assert (= bs!1883821 (and d!2217571 b!7094510)))

(declare-fun lambda!430310 () Int)

(assert (=> bs!1883821 (= lambda!430310 lambda!430302)))

(assert (=> d!2217571 (= (inv!87421 c!9994) (forall!16748 (exprs!7318 c!9994) lambda!430310))))

(declare-fun bs!1883822 () Bool)

(assert (= bs!1883822 d!2217571))

(declare-fun m!7822656 () Bool)

(assert (=> bs!1883822 m!7822656))

(assert (=> start!690590 d!2217571))

(declare-fun bs!1883823 () Bool)

(declare-fun d!2217573 () Bool)

(assert (= bs!1883823 (and d!2217573 b!7094510)))

(declare-fun lambda!430311 () Int)

(assert (=> bs!1883823 (= lambda!430311 lambda!430302)))

(declare-fun bs!1883824 () Bool)

(assert (= bs!1883824 (and d!2217573 d!2217571)))

(assert (=> bs!1883824 (= lambda!430311 lambda!430310)))

(assert (=> d!2217573 (= (inv!87421 auxCtx!45) (forall!16748 (exprs!7318 auxCtx!45) lambda!430311))))

(declare-fun bs!1883825 () Bool)

(assert (= bs!1883825 d!2217573))

(declare-fun m!7822658 () Bool)

(assert (=> bs!1883825 m!7822658))

(assert (=> start!690590 d!2217573))

(declare-fun b!7094641 () Bool)

(declare-fun e!4264764 () Bool)

(declare-fun tp!1949457 () Bool)

(declare-fun tp!1949455 () Bool)

(assert (=> b!7094641 (= e!4264764 (and tp!1949457 tp!1949455))))

(declare-fun b!7094638 () Bool)

(assert (=> b!7094638 (= e!4264764 tp_is_empty!44877)))

(declare-fun b!7094639 () Bool)

(declare-fun tp!1949456 () Bool)

(declare-fun tp!1949458 () Bool)

(assert (=> b!7094639 (= e!4264764 (and tp!1949456 tp!1949458))))

(declare-fun b!7094640 () Bool)

(declare-fun tp!1949459 () Bool)

(assert (=> b!7094640 (= e!4264764 tp!1949459)))

(assert (=> b!7094515 (= tp!1949419 e!4264764)))

(assert (= (and b!7094515 (is-ElementMatch!17822 (regOne!36157 r!11554))) b!7094638))

(assert (= (and b!7094515 (is-Concat!26667 (regOne!36157 r!11554))) b!7094639))

(assert (= (and b!7094515 (is-Star!17822 (regOne!36157 r!11554))) b!7094640))

(assert (= (and b!7094515 (is-Union!17822 (regOne!36157 r!11554))) b!7094641))

(declare-fun b!7094645 () Bool)

(declare-fun e!4264765 () Bool)

(declare-fun tp!1949462 () Bool)

(declare-fun tp!1949460 () Bool)

(assert (=> b!7094645 (= e!4264765 (and tp!1949462 tp!1949460))))

(declare-fun b!7094642 () Bool)

(assert (=> b!7094642 (= e!4264765 tp_is_empty!44877)))

(declare-fun b!7094643 () Bool)

(declare-fun tp!1949461 () Bool)

(declare-fun tp!1949463 () Bool)

(assert (=> b!7094643 (= e!4264765 (and tp!1949461 tp!1949463))))

(declare-fun b!7094644 () Bool)

(declare-fun tp!1949464 () Bool)

(assert (=> b!7094644 (= e!4264765 tp!1949464)))

(assert (=> b!7094515 (= tp!1949417 e!4264765)))

(assert (= (and b!7094515 (is-ElementMatch!17822 (regTwo!36157 r!11554))) b!7094642))

(assert (= (and b!7094515 (is-Concat!26667 (regTwo!36157 r!11554))) b!7094643))

(assert (= (and b!7094515 (is-Star!17822 (regTwo!36157 r!11554))) b!7094644))

(assert (= (and b!7094515 (is-Union!17822 (regTwo!36157 r!11554))) b!7094645))

(declare-fun b!7094650 () Bool)

(declare-fun e!4264768 () Bool)

(declare-fun tp!1949469 () Bool)

(declare-fun tp!1949470 () Bool)

(assert (=> b!7094650 (= e!4264768 (and tp!1949469 tp!1949470))))

(assert (=> b!7094511 (= tp!1949423 e!4264768)))

(assert (= (and b!7094511 (is-Cons!68661 (exprs!7318 c!9994))) b!7094650))

(declare-fun b!7094654 () Bool)

(declare-fun e!4264769 () Bool)

(declare-fun tp!1949473 () Bool)

(declare-fun tp!1949471 () Bool)

(assert (=> b!7094654 (= e!4264769 (and tp!1949473 tp!1949471))))

(declare-fun b!7094651 () Bool)

(assert (=> b!7094651 (= e!4264769 tp_is_empty!44877)))

(declare-fun b!7094652 () Bool)

(declare-fun tp!1949472 () Bool)

(declare-fun tp!1949474 () Bool)

(assert (=> b!7094652 (= e!4264769 (and tp!1949472 tp!1949474))))

(declare-fun b!7094653 () Bool)

(declare-fun tp!1949475 () Bool)

(assert (=> b!7094653 (= e!4264769 tp!1949475)))

(assert (=> b!7094512 (= tp!1949421 e!4264769)))

(assert (= (and b!7094512 (is-ElementMatch!17822 (reg!18151 r!11554))) b!7094651))

(assert (= (and b!7094512 (is-Concat!26667 (reg!18151 r!11554))) b!7094652))

(assert (= (and b!7094512 (is-Star!17822 (reg!18151 r!11554))) b!7094653))

(assert (= (and b!7094512 (is-Union!17822 (reg!18151 r!11554))) b!7094654))

(declare-fun b!7094658 () Bool)

(declare-fun e!4264770 () Bool)

(declare-fun tp!1949478 () Bool)

(declare-fun tp!1949476 () Bool)

(assert (=> b!7094658 (= e!4264770 (and tp!1949478 tp!1949476))))

(declare-fun b!7094655 () Bool)

(assert (=> b!7094655 (= e!4264770 tp_is_empty!44877)))

(declare-fun b!7094656 () Bool)

(declare-fun tp!1949477 () Bool)

(declare-fun tp!1949479 () Bool)

(assert (=> b!7094656 (= e!4264770 (and tp!1949477 tp!1949479))))

(declare-fun b!7094657 () Bool)

(declare-fun tp!1949480 () Bool)

(assert (=> b!7094657 (= e!4264770 tp!1949480)))

(assert (=> b!7094514 (= tp!1949418 e!4264770)))

(assert (= (and b!7094514 (is-ElementMatch!17822 (regOne!36156 r!11554))) b!7094655))

(assert (= (and b!7094514 (is-Concat!26667 (regOne!36156 r!11554))) b!7094656))

(assert (= (and b!7094514 (is-Star!17822 (regOne!36156 r!11554))) b!7094657))

(assert (= (and b!7094514 (is-Union!17822 (regOne!36156 r!11554))) b!7094658))

(declare-fun b!7094662 () Bool)

(declare-fun e!4264771 () Bool)

(declare-fun tp!1949483 () Bool)

(declare-fun tp!1949481 () Bool)

(assert (=> b!7094662 (= e!4264771 (and tp!1949483 tp!1949481))))

(declare-fun b!7094659 () Bool)

(assert (=> b!7094659 (= e!4264771 tp_is_empty!44877)))

(declare-fun b!7094660 () Bool)

(declare-fun tp!1949482 () Bool)

(declare-fun tp!1949484 () Bool)

(assert (=> b!7094660 (= e!4264771 (and tp!1949482 tp!1949484))))

(declare-fun b!7094661 () Bool)

(declare-fun tp!1949485 () Bool)

(assert (=> b!7094661 (= e!4264771 tp!1949485)))

(assert (=> b!7094514 (= tp!1949420 e!4264771)))

(assert (= (and b!7094514 (is-ElementMatch!17822 (regTwo!36156 r!11554))) b!7094659))

(assert (= (and b!7094514 (is-Concat!26667 (regTwo!36156 r!11554))) b!7094660))

(assert (= (and b!7094514 (is-Star!17822 (regTwo!36156 r!11554))) b!7094661))

(assert (= (and b!7094514 (is-Union!17822 (regTwo!36156 r!11554))) b!7094662))

(declare-fun b!7094663 () Bool)

(declare-fun e!4264772 () Bool)

(declare-fun tp!1949486 () Bool)

(declare-fun tp!1949487 () Bool)

(assert (=> b!7094663 (= e!4264772 (and tp!1949486 tp!1949487))))

(assert (=> b!7094508 (= tp!1949422 e!4264772)))

(assert (= (and b!7094508 (is-Cons!68661 (exprs!7318 auxCtx!45))) b!7094663))

(push 1)

(assert (not bm!645470))

(assert (not b!7094643))

(assert (not d!2217565))

(assert (not b!7094650))

(assert (not b!7094656))

(assert (not b!7094653))

(assert (not b!7094573))

(assert (not d!2217571))

(assert (not d!2217573))

(assert (not b!7094657))

(assert (not b!7094661))

(assert (not d!2217561))

(assert (not bm!645482))

(assert (not b!7094658))

(assert (not b!7094645))

(assert (not b!7094641))

(assert (not d!2217563))

(assert (not b!7094598))

(assert (not b!7094654))

(assert (not b!7094660))

(assert (not b!7094597))

(assert (not bm!645479))

(assert (not b!7094621))

(assert (not b!7094662))

(assert (not bm!645481))

(assert (not b!7094644))

(assert tp_is_empty!44877)

(assert (not b!7094652))

(assert (not b!7094612))

(assert (not b!7094639))

(assert (not bm!645478))

(assert (not bm!645469))

(assert (not b!7094640))

(assert (not b!7094663))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

