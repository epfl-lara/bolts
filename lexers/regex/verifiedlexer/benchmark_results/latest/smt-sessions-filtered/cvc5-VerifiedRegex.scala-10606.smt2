; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!545160 () Bool)

(assert start!545160)

(declare-fun b!5151540 () Bool)

(declare-fun res!2192022 () Bool)

(declare-fun e!3211492 () Bool)

(assert (=> b!5151540 (=> (not res!2192022) (not e!3211492))))

(declare-fun e!3211494 () Bool)

(assert (=> b!5151540 (= res!2192022 e!3211494)))

(declare-fun res!2192020 () Bool)

(assert (=> b!5151540 (=> res!2192020 e!3211494)))

(declare-datatypes ((C!29270 0))(
  ( (C!29271 (val!24287 Int)) )
))
(declare-datatypes ((Regex!14502 0))(
  ( (ElementMatch!14502 (c!886829 C!29270)) (Concat!23347 (regOne!29516 Regex!14502) (regTwo!29516 Regex!14502)) (EmptyExpr!14502) (Star!14502 (reg!14831 Regex!14502)) (EmptyLang!14502) (Union!14502 (regOne!29517 Regex!14502) (regTwo!29517 Regex!14502)) )
))
(declare-fun expr!117 () Regex!14502)

(declare-fun lostCause!1556 (Regex!14502) Bool)

(assert (=> b!5151540 (= res!2192020 (lostCause!1556 expr!117))))

(declare-fun b!5151541 () Bool)

(declare-fun e!3211495 () Bool)

(declare-fun tp!1440659 () Bool)

(declare-fun tp!1440655 () Bool)

(assert (=> b!5151541 (= e!3211495 (and tp!1440659 tp!1440655))))

(declare-fun b!5151542 () Bool)

(declare-fun e!3211491 () Bool)

(assert (=> b!5151542 (= e!3211492 (not e!3211491))))

(declare-fun res!2192018 () Bool)

(assert (=> b!5151542 (=> res!2192018 e!3211491)))

(declare-fun validRegex!6357 (Regex!14502) Bool)

(assert (=> b!5151542 (= res!2192018 (not (validRegex!6357 (regTwo!29516 expr!117))))))

(assert (=> b!5151542 (not (lostCause!1556 (regOne!29516 expr!117)))))

(declare-datatypes ((Unit!151223 0))(
  ( (Unit!151224) )
))
(declare-fun lt!2121554 () Unit!151223)

(declare-fun lemmaNullableThenNotLostCause!91 (Regex!14502) Unit!151223)

(assert (=> b!5151542 (= lt!2121554 (lemmaNullableThenNotLostCause!91 (regOne!29516 expr!117)))))

(declare-fun b!5151543 () Bool)

(declare-fun tp!1440657 () Bool)

(declare-fun tp!1440656 () Bool)

(assert (=> b!5151543 (= e!3211495 (and tp!1440657 tp!1440656))))

(declare-fun b!5151544 () Bool)

(declare-fun res!2192021 () Bool)

(assert (=> b!5151544 (=> (not res!2192021) (not e!3211492))))

(declare-fun a!1296 () C!29270)

(assert (=> b!5151544 (= res!2192021 (and (or (not (is-ElementMatch!14502 expr!117)) (not (= (c!886829 expr!117) a!1296))) (not (is-Union!14502 expr!117)) (is-Concat!23347 expr!117)))))

(declare-fun b!5151545 () Bool)

(declare-fun res!2192017 () Bool)

(assert (=> b!5151545 (=> (not res!2192017) (not e!3211492))))

(declare-fun nullable!4858 (Regex!14502) Bool)

(assert (=> b!5151545 (= res!2192017 (nullable!4858 (regOne!29516 expr!117)))))

(declare-fun b!5151546 () Bool)

(declare-fun tp!1440658 () Bool)

(assert (=> b!5151546 (= e!3211495 tp!1440658)))

(declare-fun res!2192019 () Bool)

(assert (=> start!545160 (=> (not res!2192019) (not e!3211492))))

(assert (=> start!545160 (= res!2192019 (validRegex!6357 expr!117))))

(assert (=> start!545160 e!3211492))

(assert (=> start!545160 e!3211495))

(declare-datatypes ((List!59922 0))(
  ( (Nil!59798) (Cons!59798 (h!66246 Regex!14502) (t!372971 List!59922)) )
))
(declare-datatypes ((Context!7772 0))(
  ( (Context!7773 (exprs!4386 List!59922)) )
))
(declare-fun ctx!100 () Context!7772)

(declare-fun e!3211493 () Bool)

(declare-fun inv!79437 (Context!7772) Bool)

(assert (=> start!545160 (and (inv!79437 ctx!100) e!3211493)))

(declare-fun tp_is_empty!38153 () Bool)

(assert (=> start!545160 tp_is_empty!38153))

(declare-fun b!5151547 () Bool)

(declare-fun tp!1440654 () Bool)

(assert (=> b!5151547 (= e!3211493 tp!1440654)))

(declare-fun b!5151548 () Bool)

(declare-fun lt!2121555 () (Set Context!7772))

(declare-fun lambda!257164 () Int)

(declare-fun forall!13983 ((Set Context!7772) Int) Bool)

(assert (=> b!5151548 (= e!3211491 (forall!13983 lt!2121555 lambda!257164))))

(declare-fun lostCauseZipper!1288 ((Set Context!7772)) Bool)

(declare-fun derivationStepZipperDown!169 (Regex!14502 Context!7772 C!29270) (Set Context!7772))

(assert (=> b!5151548 (lostCauseZipper!1288 (derivationStepZipperDown!169 (regTwo!29516 expr!117) ctx!100 a!1296))))

(declare-fun lt!2121557 () Unit!151223)

(declare-fun lemmaLostCauseFixPointDerivDown!59 (Regex!14502 Context!7772 C!29270) Unit!151223)

(assert (=> b!5151548 (= lt!2121557 (lemmaLostCauseFixPointDerivDown!59 (regTwo!29516 expr!117) ctx!100 a!1296))))

(assert (=> b!5151548 (lostCauseZipper!1288 lt!2121555)))

(declare-fun lt!2121558 () Context!7772)

(assert (=> b!5151548 (= lt!2121555 (derivationStepZipperDown!169 (regOne!29516 expr!117) lt!2121558 a!1296))))

(declare-fun lt!2121556 () Unit!151223)

(assert (=> b!5151548 (= lt!2121556 (lemmaLostCauseFixPointDerivDown!59 (regOne!29516 expr!117) lt!2121558 a!1296))))

(declare-fun $colon$colon!1224 (List!59922 Regex!14502) List!59922)

(assert (=> b!5151548 (= lt!2121558 (Context!7773 ($colon$colon!1224 (exprs!4386 ctx!100) (regTwo!29516 expr!117))))))

(declare-fun b!5151549 () Bool)

(declare-fun lostCause!1557 (Context!7772) Bool)

(assert (=> b!5151549 (= e!3211494 (lostCause!1557 ctx!100))))

(declare-fun b!5151550 () Bool)

(assert (=> b!5151550 (= e!3211495 tp_is_empty!38153)))

(assert (= (and start!545160 res!2192019) b!5151540))

(assert (= (and b!5151540 (not res!2192020)) b!5151549))

(assert (= (and b!5151540 res!2192022) b!5151544))

(assert (= (and b!5151544 res!2192021) b!5151545))

(assert (= (and b!5151545 res!2192017) b!5151542))

(assert (= (and b!5151542 (not res!2192018)) b!5151548))

(assert (= (and start!545160 (is-ElementMatch!14502 expr!117)) b!5151550))

(assert (= (and start!545160 (is-Concat!23347 expr!117)) b!5151543))

(assert (= (and start!545160 (is-Star!14502 expr!117)) b!5151546))

(assert (= (and start!545160 (is-Union!14502 expr!117)) b!5151541))

(assert (= start!545160 b!5151547))

(declare-fun m!6208920 () Bool)

(assert (=> b!5151540 m!6208920))

(declare-fun m!6208922 () Bool)

(assert (=> b!5151548 m!6208922))

(declare-fun m!6208924 () Bool)

(assert (=> b!5151548 m!6208924))

(declare-fun m!6208926 () Bool)

(assert (=> b!5151548 m!6208926))

(declare-fun m!6208928 () Bool)

(assert (=> b!5151548 m!6208928))

(declare-fun m!6208930 () Bool)

(assert (=> b!5151548 m!6208930))

(declare-fun m!6208932 () Bool)

(assert (=> b!5151548 m!6208932))

(declare-fun m!6208934 () Bool)

(assert (=> b!5151548 m!6208934))

(assert (=> b!5151548 m!6208932))

(declare-fun m!6208936 () Bool)

(assert (=> b!5151548 m!6208936))

(declare-fun m!6208938 () Bool)

(assert (=> b!5151549 m!6208938))

(declare-fun m!6208940 () Bool)

(assert (=> b!5151545 m!6208940))

(declare-fun m!6208942 () Bool)

(assert (=> start!545160 m!6208942))

(declare-fun m!6208944 () Bool)

(assert (=> start!545160 m!6208944))

(declare-fun m!6208946 () Bool)

(assert (=> b!5151542 m!6208946))

(declare-fun m!6208948 () Bool)

(assert (=> b!5151542 m!6208948))

(declare-fun m!6208950 () Bool)

(assert (=> b!5151542 m!6208950))

(push 1)

(assert tp_is_empty!38153)

(assert (not b!5151542))

(assert (not b!5151541))

(assert (not b!5151546))

(assert (not b!5151543))

(assert (not b!5151549))

(assert (not b!5151548))

(assert (not b!5151540))

(assert (not b!5151547))

(assert (not start!545160))

(assert (not b!5151545))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1664347 () Bool)

(declare-fun nullableFct!1337 (Regex!14502) Bool)

(assert (=> d!1664347 (= (nullable!4858 (regOne!29516 expr!117)) (nullableFct!1337 (regOne!29516 expr!117)))))

(declare-fun bs!1201783 () Bool)

(assert (= bs!1201783 d!1664347))

(declare-fun m!6208984 () Bool)

(assert (=> bs!1201783 m!6208984))

(assert (=> b!5151545 d!1664347))

(declare-fun b!5151606 () Bool)

(declare-fun e!3211526 () (Set Context!7772))

(declare-fun call!360619 () (Set Context!7772))

(assert (=> b!5151606 (= e!3211526 call!360619)))

(declare-fun b!5151607 () Bool)

(declare-fun e!3211523 () (Set Context!7772))

(declare-fun e!3211527 () (Set Context!7772))

(assert (=> b!5151607 (= e!3211523 e!3211527)))

(declare-fun c!886846 () Bool)

(assert (=> b!5151607 (= c!886846 (is-Union!14502 (regTwo!29516 expr!117)))))

(declare-fun b!5151608 () Bool)

(declare-fun e!3211525 () (Set Context!7772))

(assert (=> b!5151608 (= e!3211525 call!360619)))

(declare-fun bm!360613 () Bool)

(declare-fun c!886845 () Bool)

(declare-fun call!360620 () List!59922)

(declare-fun c!886847 () Bool)

(assert (=> bm!360613 (= call!360620 ($colon$colon!1224 (exprs!4386 ctx!100) (ite (or c!886847 c!886845) (regTwo!29516 (regTwo!29516 expr!117)) (regTwo!29516 expr!117))))))

(declare-fun call!360622 () List!59922)

(declare-fun call!360621 () (Set Context!7772))

(declare-fun bm!360614 () Bool)

(assert (=> bm!360614 (= call!360621 (derivationStepZipperDown!169 (ite c!886846 (regTwo!29517 (regTwo!29516 expr!117)) (ite c!886847 (regTwo!29516 (regTwo!29516 expr!117)) (ite c!886845 (regOne!29516 (regTwo!29516 expr!117)) (reg!14831 (regTwo!29516 expr!117))))) (ite (or c!886846 c!886847) ctx!100 (Context!7773 call!360622)) a!1296))))

(declare-fun b!5151609 () Bool)

(assert (=> b!5151609 (= e!3211523 (set.insert ctx!100 (as set.empty (Set Context!7772))))))

(declare-fun bm!360615 () Bool)

(assert (=> bm!360615 (= call!360622 call!360620)))

(declare-fun b!5151610 () Bool)

(declare-fun call!360618 () (Set Context!7772))

(assert (=> b!5151610 (= e!3211527 (set.union call!360618 call!360621))))

(declare-fun d!1664349 () Bool)

(declare-fun c!886843 () Bool)

(assert (=> d!1664349 (= c!886843 (and (is-ElementMatch!14502 (regTwo!29516 expr!117)) (= (c!886829 (regTwo!29516 expr!117)) a!1296)))))

(assert (=> d!1664349 (= (derivationStepZipperDown!169 (regTwo!29516 expr!117) ctx!100 a!1296) e!3211523)))

(declare-fun bm!360616 () Bool)

(declare-fun call!360623 () (Set Context!7772))

(assert (=> bm!360616 (= call!360619 call!360623)))

(declare-fun b!5151611 () Bool)

(declare-fun e!3211524 () Bool)

(assert (=> b!5151611 (= c!886847 e!3211524)))

(declare-fun res!2192043 () Bool)

(assert (=> b!5151611 (=> (not res!2192043) (not e!3211524))))

(assert (=> b!5151611 (= res!2192043 (is-Concat!23347 (regTwo!29516 expr!117)))))

(declare-fun e!3211528 () (Set Context!7772))

(assert (=> b!5151611 (= e!3211527 e!3211528)))

(declare-fun bm!360617 () Bool)

(assert (=> bm!360617 (= call!360623 call!360621)))

(declare-fun b!5151612 () Bool)

(assert (=> b!5151612 (= e!3211528 (set.union call!360618 call!360623))))

(declare-fun bm!360618 () Bool)

(assert (=> bm!360618 (= call!360618 (derivationStepZipperDown!169 (ite c!886846 (regOne!29517 (regTwo!29516 expr!117)) (regOne!29516 (regTwo!29516 expr!117))) (ite c!886846 ctx!100 (Context!7773 call!360620)) a!1296))))

(declare-fun b!5151613 () Bool)

(declare-fun c!886844 () Bool)

(assert (=> b!5151613 (= c!886844 (is-Star!14502 (regTwo!29516 expr!117)))))

(assert (=> b!5151613 (= e!3211525 e!3211526)))

(declare-fun b!5151614 () Bool)

(assert (=> b!5151614 (= e!3211524 (nullable!4858 (regOne!29516 (regTwo!29516 expr!117))))))

(declare-fun b!5151615 () Bool)

(assert (=> b!5151615 (= e!3211526 (as set.empty (Set Context!7772)))))

(declare-fun b!5151616 () Bool)

(assert (=> b!5151616 (= e!3211528 e!3211525)))

(assert (=> b!5151616 (= c!886845 (is-Concat!23347 (regTwo!29516 expr!117)))))

(assert (= (and d!1664349 c!886843) b!5151609))

(assert (= (and d!1664349 (not c!886843)) b!5151607))

(assert (= (and b!5151607 c!886846) b!5151610))

(assert (= (and b!5151607 (not c!886846)) b!5151611))

(assert (= (and b!5151611 res!2192043) b!5151614))

(assert (= (and b!5151611 c!886847) b!5151612))

(assert (= (and b!5151611 (not c!886847)) b!5151616))

(assert (= (and b!5151616 c!886845) b!5151608))

(assert (= (and b!5151616 (not c!886845)) b!5151613))

(assert (= (and b!5151613 c!886844) b!5151606))

(assert (= (and b!5151613 (not c!886844)) b!5151615))

(assert (= (or b!5151608 b!5151606) bm!360615))

(assert (= (or b!5151608 b!5151606) bm!360616))

(assert (= (or b!5151612 bm!360615) bm!360613))

(assert (= (or b!5151612 bm!360616) bm!360617))

(assert (= (or b!5151610 bm!360617) bm!360614))

(assert (= (or b!5151610 b!5151612) bm!360618))

(declare-fun m!6208986 () Bool)

(assert (=> bm!360618 m!6208986))

(declare-fun m!6208988 () Bool)

(assert (=> bm!360613 m!6208988))

(declare-fun m!6208990 () Bool)

(assert (=> b!5151609 m!6208990))

(declare-fun m!6208992 () Bool)

(assert (=> bm!360614 m!6208992))

(declare-fun m!6208994 () Bool)

(assert (=> b!5151614 m!6208994))

(assert (=> b!5151548 d!1664349))

(declare-fun bs!1201785 () Bool)

(declare-fun d!1664351 () Bool)

(assert (= bs!1201785 (and d!1664351 b!5151548)))

(declare-fun lambda!257180 () Int)

(assert (=> bs!1201785 (= lambda!257180 lambda!257164)))

(declare-fun bs!1201786 () Bool)

(declare-fun b!5151621 () Bool)

(assert (= bs!1201786 (and b!5151621 b!5151548)))

(declare-fun lambda!257181 () Int)

(assert (=> bs!1201786 (not (= lambda!257181 lambda!257164))))

(declare-fun bs!1201787 () Bool)

(assert (= bs!1201787 (and b!5151621 d!1664351)))

(assert (=> bs!1201787 (not (= lambda!257181 lambda!257180))))

(declare-fun bs!1201788 () Bool)

(declare-fun b!5151622 () Bool)

(assert (= bs!1201788 (and b!5151622 b!5151548)))

(declare-fun lambda!257182 () Int)

(assert (=> bs!1201788 (not (= lambda!257182 lambda!257164))))

(declare-fun bs!1201789 () Bool)

(assert (= bs!1201789 (and b!5151622 d!1664351)))

(assert (=> bs!1201789 (not (= lambda!257182 lambda!257180))))

(declare-fun bs!1201790 () Bool)

(assert (= bs!1201790 (and b!5151622 b!5151621)))

(assert (=> bs!1201790 (= lambda!257182 lambda!257181)))

(declare-datatypes ((List!59924 0))(
  ( (Nil!59800) (Cons!59800 (h!66248 Context!7772) (t!372974 List!59924)) )
))
(declare-fun lt!2121595 () List!59924)

(declare-fun lt!2121598 () List!59924)

(declare-fun call!360628 () Bool)

(declare-fun c!886858 () Bool)

(declare-fun bm!360623 () Bool)

(declare-fun exists!1839 (List!59924 Int) Bool)

(assert (=> bm!360623 (= call!360628 (exists!1839 (ite c!886858 lt!2121595 lt!2121598) (ite c!886858 lambda!257181 lambda!257182)))))

(declare-fun lt!2121599 () Bool)

(declare-datatypes ((List!59925 0))(
  ( (Nil!59801) (Cons!59801 (h!66249 C!29270) (t!372975 List!59925)) )
))
(declare-datatypes ((Option!14806 0))(
  ( (None!14805) (Some!14805 (v!50834 List!59925)) )
))
(declare-fun isEmpty!32067 (Option!14806) Bool)

(declare-fun getLanguageWitness!971 ((Set Context!7772)) Option!14806)

(assert (=> d!1664351 (= lt!2121599 (isEmpty!32067 (getLanguageWitness!971 (derivationStepZipperDown!169 (regTwo!29516 expr!117) ctx!100 a!1296))))))

(assert (=> d!1664351 (= lt!2121599 (forall!13983 (derivationStepZipperDown!169 (regTwo!29516 expr!117) ctx!100 a!1296) lambda!257180))))

(declare-fun lt!2121593 () Unit!151223)

(declare-fun e!3211535 () Unit!151223)

(assert (=> d!1664351 (= lt!2121593 e!3211535)))

(assert (=> d!1664351 (= c!886858 (not (forall!13983 (derivationStepZipperDown!169 (regTwo!29516 expr!117) ctx!100 a!1296) lambda!257180)))))

(assert (=> d!1664351 (= (lostCauseZipper!1288 (derivationStepZipperDown!169 (regTwo!29516 expr!117) ctx!100 a!1296)) lt!2121599)))

(declare-fun Unit!151227 () Unit!151223)

(assert (=> b!5151621 (= e!3211535 Unit!151227)))

(declare-fun call!360629 () List!59924)

(assert (=> b!5151621 (= lt!2121595 call!360629)))

(declare-fun lt!2121596 () Unit!151223)

(declare-fun lemmaNotForallThenExists!449 (List!59924 Int) Unit!151223)

(assert (=> b!5151621 (= lt!2121596 (lemmaNotForallThenExists!449 lt!2121595 lambda!257180))))

(assert (=> b!5151621 call!360628))

(declare-fun lt!2121594 () Unit!151223)

(assert (=> b!5151621 (= lt!2121594 lt!2121596)))

(declare-fun bm!360624 () Bool)

(declare-fun toList!8402 ((Set Context!7772)) List!59924)

(assert (=> bm!360624 (= call!360629 (toList!8402 (derivationStepZipperDown!169 (regTwo!29516 expr!117) ctx!100 a!1296)))))

(declare-fun Unit!151228 () Unit!151223)

(assert (=> b!5151622 (= e!3211535 Unit!151228)))

(assert (=> b!5151622 (= lt!2121598 call!360629)))

(declare-fun lt!2121597 () Unit!151223)

(declare-fun lemmaForallThenNotExists!416 (List!59924 Int) Unit!151223)

(assert (=> b!5151622 (= lt!2121597 (lemmaForallThenNotExists!416 lt!2121598 lambda!257180))))

(assert (=> b!5151622 (not call!360628)))

(declare-fun lt!2121600 () Unit!151223)

(assert (=> b!5151622 (= lt!2121600 lt!2121597)))

(assert (= (and d!1664351 c!886858) b!5151621))

(assert (= (and d!1664351 (not c!886858)) b!5151622))

(assert (= (or b!5151621 b!5151622) bm!360623))

(assert (= (or b!5151621 b!5151622) bm!360624))

(assert (=> bm!360624 m!6208932))

(declare-fun m!6209002 () Bool)

(assert (=> bm!360624 m!6209002))

(declare-fun m!6209004 () Bool)

(assert (=> bm!360623 m!6209004))

(declare-fun m!6209006 () Bool)

(assert (=> b!5151622 m!6209006))

(declare-fun m!6209008 () Bool)

(assert (=> b!5151621 m!6209008))

(assert (=> d!1664351 m!6208932))

(declare-fun m!6209010 () Bool)

(assert (=> d!1664351 m!6209010))

(assert (=> d!1664351 m!6209010))

(declare-fun m!6209012 () Bool)

(assert (=> d!1664351 m!6209012))

(assert (=> d!1664351 m!6208932))

(declare-fun m!6209014 () Bool)

(assert (=> d!1664351 m!6209014))

(assert (=> d!1664351 m!6208932))

(assert (=> d!1664351 m!6209014))

(assert (=> b!5151548 d!1664351))

(declare-fun d!1664357 () Bool)

(assert (=> d!1664357 (lostCauseZipper!1288 (derivationStepZipperDown!169 (regOne!29516 expr!117) lt!2121558 a!1296))))

(declare-fun lt!2121603 () Unit!151223)

(declare-fun choose!38112 (Regex!14502 Context!7772 C!29270) Unit!151223)

(assert (=> d!1664357 (= lt!2121603 (choose!38112 (regOne!29516 expr!117) lt!2121558 a!1296))))

(assert (=> d!1664357 (validRegex!6357 (regOne!29516 expr!117))))

(assert (=> d!1664357 (= (lemmaLostCauseFixPointDerivDown!59 (regOne!29516 expr!117) lt!2121558 a!1296) lt!2121603)))

(declare-fun bs!1201791 () Bool)

(assert (= bs!1201791 d!1664357))

(assert (=> bs!1201791 m!6208934))

(assert (=> bs!1201791 m!6208934))

(declare-fun m!6209016 () Bool)

(assert (=> bs!1201791 m!6209016))

(declare-fun m!6209018 () Bool)

(assert (=> bs!1201791 m!6209018))

(declare-fun m!6209020 () Bool)

(assert (=> bs!1201791 m!6209020))

(assert (=> b!5151548 d!1664357))

(declare-fun bs!1201792 () Bool)

(declare-fun d!1664359 () Bool)

(assert (= bs!1201792 (and d!1664359 b!5151548)))

(declare-fun lambda!257183 () Int)

(assert (=> bs!1201792 (= lambda!257183 lambda!257164)))

(declare-fun bs!1201793 () Bool)

(assert (= bs!1201793 (and d!1664359 d!1664351)))

(assert (=> bs!1201793 (= lambda!257183 lambda!257180)))

(declare-fun bs!1201794 () Bool)

(assert (= bs!1201794 (and d!1664359 b!5151621)))

(assert (=> bs!1201794 (not (= lambda!257183 lambda!257181))))

(declare-fun bs!1201795 () Bool)

(assert (= bs!1201795 (and d!1664359 b!5151622)))

(assert (=> bs!1201795 (not (= lambda!257183 lambda!257182))))

(declare-fun bs!1201796 () Bool)

(declare-fun b!5151637 () Bool)

(assert (= bs!1201796 (and b!5151637 d!1664359)))

(declare-fun lambda!257184 () Int)

(assert (=> bs!1201796 (not (= lambda!257184 lambda!257183))))

(declare-fun bs!1201797 () Bool)

(assert (= bs!1201797 (and b!5151637 b!5151621)))

(assert (=> bs!1201797 (= lambda!257184 lambda!257181)))

(declare-fun bs!1201798 () Bool)

(assert (= bs!1201798 (and b!5151637 b!5151622)))

(assert (=> bs!1201798 (= lambda!257184 lambda!257182)))

(declare-fun bs!1201799 () Bool)

(assert (= bs!1201799 (and b!5151637 b!5151548)))

(assert (=> bs!1201799 (not (= lambda!257184 lambda!257164))))

(declare-fun bs!1201800 () Bool)

(assert (= bs!1201800 (and b!5151637 d!1664351)))

(assert (=> bs!1201800 (not (= lambda!257184 lambda!257180))))

(declare-fun bs!1201801 () Bool)

(declare-fun b!5151638 () Bool)

(assert (= bs!1201801 (and b!5151638 d!1664359)))

(declare-fun lambda!257185 () Int)

(assert (=> bs!1201801 (not (= lambda!257185 lambda!257183))))

(declare-fun bs!1201802 () Bool)

(assert (= bs!1201802 (and b!5151638 b!5151637)))

(assert (=> bs!1201802 (= lambda!257185 lambda!257184)))

(declare-fun bs!1201803 () Bool)

(assert (= bs!1201803 (and b!5151638 b!5151621)))

(assert (=> bs!1201803 (= lambda!257185 lambda!257181)))

(declare-fun bs!1201804 () Bool)

(assert (= bs!1201804 (and b!5151638 b!5151622)))

(assert (=> bs!1201804 (= lambda!257185 lambda!257182)))

(declare-fun bs!1201805 () Bool)

(assert (= bs!1201805 (and b!5151638 b!5151548)))

(assert (=> bs!1201805 (not (= lambda!257185 lambda!257164))))

(declare-fun bs!1201806 () Bool)

(assert (= bs!1201806 (and b!5151638 d!1664351)))

(assert (=> bs!1201806 (not (= lambda!257185 lambda!257180))))

(declare-fun lt!2121609 () List!59924)

(declare-fun lt!2121606 () List!59924)

(declare-fun c!886865 () Bool)

(declare-fun call!360630 () Bool)

(declare-fun bm!360625 () Bool)

(assert (=> bm!360625 (= call!360630 (exists!1839 (ite c!886865 lt!2121606 lt!2121609) (ite c!886865 lambda!257184 lambda!257185)))))

(declare-fun lt!2121610 () Bool)

(assert (=> d!1664359 (= lt!2121610 (isEmpty!32067 (getLanguageWitness!971 lt!2121555)))))

(assert (=> d!1664359 (= lt!2121610 (forall!13983 lt!2121555 lambda!257183))))

(declare-fun lt!2121604 () Unit!151223)

(declare-fun e!3211544 () Unit!151223)

(assert (=> d!1664359 (= lt!2121604 e!3211544)))

(assert (=> d!1664359 (= c!886865 (not (forall!13983 lt!2121555 lambda!257183)))))

(assert (=> d!1664359 (= (lostCauseZipper!1288 lt!2121555) lt!2121610)))

(declare-fun Unit!151229 () Unit!151223)

(assert (=> b!5151637 (= e!3211544 Unit!151229)))

(declare-fun call!360631 () List!59924)

(assert (=> b!5151637 (= lt!2121606 call!360631)))

(declare-fun lt!2121607 () Unit!151223)

(assert (=> b!5151637 (= lt!2121607 (lemmaNotForallThenExists!449 lt!2121606 lambda!257183))))

(assert (=> b!5151637 call!360630))

(declare-fun lt!2121605 () Unit!151223)

(assert (=> b!5151637 (= lt!2121605 lt!2121607)))

(declare-fun bm!360626 () Bool)

(assert (=> bm!360626 (= call!360631 (toList!8402 lt!2121555))))

(declare-fun Unit!151230 () Unit!151223)

(assert (=> b!5151638 (= e!3211544 Unit!151230)))

(assert (=> b!5151638 (= lt!2121609 call!360631)))

(declare-fun lt!2121608 () Unit!151223)

(assert (=> b!5151638 (= lt!2121608 (lemmaForallThenNotExists!416 lt!2121609 lambda!257183))))

(assert (=> b!5151638 (not call!360630)))

(declare-fun lt!2121611 () Unit!151223)

(assert (=> b!5151638 (= lt!2121611 lt!2121608)))

(assert (= (and d!1664359 c!886865) b!5151637))

(assert (= (and d!1664359 (not c!886865)) b!5151638))

(assert (= (or b!5151637 b!5151638) bm!360625))

(assert (= (or b!5151637 b!5151638) bm!360626))

(declare-fun m!6209022 () Bool)

(assert (=> bm!360626 m!6209022))

(declare-fun m!6209024 () Bool)

(assert (=> bm!360625 m!6209024))

(declare-fun m!6209026 () Bool)

(assert (=> b!5151638 m!6209026))

(declare-fun m!6209028 () Bool)

(assert (=> b!5151637 m!6209028))

(declare-fun m!6209030 () Bool)

(assert (=> d!1664359 m!6209030))

(assert (=> d!1664359 m!6209030))

(declare-fun m!6209032 () Bool)

(assert (=> d!1664359 m!6209032))

(declare-fun m!6209034 () Bool)

(assert (=> d!1664359 m!6209034))

(assert (=> d!1664359 m!6209034))

(assert (=> b!5151548 d!1664359))

(declare-fun d!1664361 () Bool)

(declare-fun lt!2121614 () Bool)

(declare-fun forall!13985 (List!59924 Int) Bool)

(assert (=> d!1664361 (= lt!2121614 (forall!13985 (toList!8402 lt!2121555) lambda!257164))))

(declare-fun choose!38113 ((Set Context!7772) Int) Bool)

(assert (=> d!1664361 (= lt!2121614 (choose!38113 lt!2121555 lambda!257164))))

(assert (=> d!1664361 (= (forall!13983 lt!2121555 lambda!257164) lt!2121614)))

(declare-fun bs!1201807 () Bool)

(assert (= bs!1201807 d!1664361))

(assert (=> bs!1201807 m!6209022))

(assert (=> bs!1201807 m!6209022))

(declare-fun m!6209036 () Bool)

(assert (=> bs!1201807 m!6209036))

(declare-fun m!6209038 () Bool)

(assert (=> bs!1201807 m!6209038))

(assert (=> b!5151548 d!1664361))

(declare-fun b!5151647 () Bool)

(declare-fun e!3211552 () (Set Context!7772))

(declare-fun call!360641 () (Set Context!7772))

(assert (=> b!5151647 (= e!3211552 call!360641)))

(declare-fun b!5151648 () Bool)

(declare-fun e!3211549 () (Set Context!7772))

(declare-fun e!3211553 () (Set Context!7772))

(assert (=> b!5151648 (= e!3211549 e!3211553)))

(declare-fun c!886873 () Bool)

(assert (=> b!5151648 (= c!886873 (is-Union!14502 (regOne!29516 expr!117)))))

(declare-fun b!5151649 () Bool)

(declare-fun e!3211551 () (Set Context!7772))

(assert (=> b!5151649 (= e!3211551 call!360641)))

(declare-fun c!886874 () Bool)

(declare-fun call!360642 () List!59922)

(declare-fun bm!360635 () Bool)

(declare-fun c!886872 () Bool)

(assert (=> bm!360635 (= call!360642 ($colon$colon!1224 (exprs!4386 lt!2121558) (ite (or c!886874 c!886872) (regTwo!29516 (regOne!29516 expr!117)) (regOne!29516 expr!117))))))

(declare-fun bm!360636 () Bool)

(declare-fun call!360644 () List!59922)

(declare-fun call!360643 () (Set Context!7772))

(assert (=> bm!360636 (= call!360643 (derivationStepZipperDown!169 (ite c!886873 (regTwo!29517 (regOne!29516 expr!117)) (ite c!886874 (regTwo!29516 (regOne!29516 expr!117)) (ite c!886872 (regOne!29516 (regOne!29516 expr!117)) (reg!14831 (regOne!29516 expr!117))))) (ite (or c!886873 c!886874) lt!2121558 (Context!7773 call!360644)) a!1296))))

(declare-fun b!5151650 () Bool)

(assert (=> b!5151650 (= e!3211549 (set.insert lt!2121558 (as set.empty (Set Context!7772))))))

(declare-fun bm!360637 () Bool)

(assert (=> bm!360637 (= call!360644 call!360642)))

(declare-fun b!5151651 () Bool)

(declare-fun call!360640 () (Set Context!7772))

(assert (=> b!5151651 (= e!3211553 (set.union call!360640 call!360643))))

(declare-fun d!1664363 () Bool)

(declare-fun c!886870 () Bool)

(assert (=> d!1664363 (= c!886870 (and (is-ElementMatch!14502 (regOne!29516 expr!117)) (= (c!886829 (regOne!29516 expr!117)) a!1296)))))

(assert (=> d!1664363 (= (derivationStepZipperDown!169 (regOne!29516 expr!117) lt!2121558 a!1296) e!3211549)))

(declare-fun bm!360638 () Bool)

(declare-fun call!360645 () (Set Context!7772))

(assert (=> bm!360638 (= call!360641 call!360645)))

(declare-fun b!5151652 () Bool)

(declare-fun e!3211550 () Bool)

(assert (=> b!5151652 (= c!886874 e!3211550)))

(declare-fun res!2192046 () Bool)

(assert (=> b!5151652 (=> (not res!2192046) (not e!3211550))))

(assert (=> b!5151652 (= res!2192046 (is-Concat!23347 (regOne!29516 expr!117)))))

(declare-fun e!3211554 () (Set Context!7772))

(assert (=> b!5151652 (= e!3211553 e!3211554)))

(declare-fun bm!360639 () Bool)

(assert (=> bm!360639 (= call!360645 call!360643)))

(declare-fun b!5151653 () Bool)

(assert (=> b!5151653 (= e!3211554 (set.union call!360640 call!360645))))

(declare-fun bm!360640 () Bool)

(assert (=> bm!360640 (= call!360640 (derivationStepZipperDown!169 (ite c!886873 (regOne!29517 (regOne!29516 expr!117)) (regOne!29516 (regOne!29516 expr!117))) (ite c!886873 lt!2121558 (Context!7773 call!360642)) a!1296))))

(declare-fun b!5151654 () Bool)

(declare-fun c!886871 () Bool)

(assert (=> b!5151654 (= c!886871 (is-Star!14502 (regOne!29516 expr!117)))))

(assert (=> b!5151654 (= e!3211551 e!3211552)))

(declare-fun b!5151655 () Bool)

(assert (=> b!5151655 (= e!3211550 (nullable!4858 (regOne!29516 (regOne!29516 expr!117))))))

(declare-fun b!5151656 () Bool)

(assert (=> b!5151656 (= e!3211552 (as set.empty (Set Context!7772)))))

(declare-fun b!5151657 () Bool)

(assert (=> b!5151657 (= e!3211554 e!3211551)))

(assert (=> b!5151657 (= c!886872 (is-Concat!23347 (regOne!29516 expr!117)))))

(assert (= (and d!1664363 c!886870) b!5151650))

(assert (= (and d!1664363 (not c!886870)) b!5151648))

(assert (= (and b!5151648 c!886873) b!5151651))

(assert (= (and b!5151648 (not c!886873)) b!5151652))

(assert (= (and b!5151652 res!2192046) b!5151655))

(assert (= (and b!5151652 c!886874) b!5151653))

(assert (= (and b!5151652 (not c!886874)) b!5151657))

(assert (= (and b!5151657 c!886872) b!5151649))

(assert (= (and b!5151657 (not c!886872)) b!5151654))

(assert (= (and b!5151654 c!886871) b!5151647))

(assert (= (and b!5151654 (not c!886871)) b!5151656))

(assert (= (or b!5151649 b!5151647) bm!360637))

(assert (= (or b!5151649 b!5151647) bm!360638))

(assert (= (or b!5151653 bm!360637) bm!360635))

(assert (= (or b!5151653 bm!360638) bm!360639))

(assert (= (or b!5151651 bm!360639) bm!360636))

(assert (= (or b!5151651 b!5151653) bm!360640))

(declare-fun m!6209040 () Bool)

(assert (=> bm!360640 m!6209040))

(declare-fun m!6209042 () Bool)

(assert (=> bm!360635 m!6209042))

(declare-fun m!6209044 () Bool)

(assert (=> b!5151650 m!6209044))

(declare-fun m!6209046 () Bool)

(assert (=> bm!360636 m!6209046))

(declare-fun m!6209048 () Bool)

(assert (=> b!5151655 m!6209048))

(assert (=> b!5151548 d!1664363))

(declare-fun d!1664365 () Bool)

(assert (=> d!1664365 (lostCauseZipper!1288 (derivationStepZipperDown!169 (regTwo!29516 expr!117) ctx!100 a!1296))))

(declare-fun lt!2121615 () Unit!151223)

(assert (=> d!1664365 (= lt!2121615 (choose!38112 (regTwo!29516 expr!117) ctx!100 a!1296))))

(assert (=> d!1664365 (validRegex!6357 (regTwo!29516 expr!117))))

(assert (=> d!1664365 (= (lemmaLostCauseFixPointDerivDown!59 (regTwo!29516 expr!117) ctx!100 a!1296) lt!2121615)))

(declare-fun bs!1201808 () Bool)

(assert (= bs!1201808 d!1664365))

(assert (=> bs!1201808 m!6208932))

(assert (=> bs!1201808 m!6208932))

(assert (=> bs!1201808 m!6208936))

(declare-fun m!6209050 () Bool)

(assert (=> bs!1201808 m!6209050))

(assert (=> bs!1201808 m!6208946))

(assert (=> b!5151548 d!1664365))

(declare-fun d!1664367 () Bool)

(assert (=> d!1664367 (= ($colon$colon!1224 (exprs!4386 ctx!100) (regTwo!29516 expr!117)) (Cons!59798 (regTwo!29516 expr!117) (exprs!4386 ctx!100)))))

(assert (=> b!5151548 d!1664367))

(declare-fun d!1664369 () Bool)

(declare-fun lambda!257188 () Int)

(declare-fun exists!1840 (List!59922 Int) Bool)

(assert (=> d!1664369 (= (lostCause!1557 ctx!100) (exists!1840 (exprs!4386 ctx!100) lambda!257188))))

(declare-fun bs!1201809 () Bool)

(assert (= bs!1201809 d!1664369))

(declare-fun m!6209052 () Bool)

(assert (=> bs!1201809 m!6209052))

(assert (=> b!5151549 d!1664369))

(declare-fun b!5151676 () Bool)

(declare-fun e!3211574 () Bool)

(declare-fun e!3211569 () Bool)

(assert (=> b!5151676 (= e!3211574 e!3211569)))

(declare-fun c!886880 () Bool)

(assert (=> b!5151676 (= c!886880 (is-Star!14502 (regTwo!29516 expr!117)))))

(declare-fun d!1664371 () Bool)

(declare-fun res!2192057 () Bool)

(assert (=> d!1664371 (=> res!2192057 e!3211574)))

(assert (=> d!1664371 (= res!2192057 (is-ElementMatch!14502 (regTwo!29516 expr!117)))))

(assert (=> d!1664371 (= (validRegex!6357 (regTwo!29516 expr!117)) e!3211574)))

(declare-fun b!5151677 () Bool)

(declare-fun res!2192060 () Bool)

(declare-fun e!3211570 () Bool)

(assert (=> b!5151677 (=> (not res!2192060) (not e!3211570))))

(declare-fun call!360656 () Bool)

(assert (=> b!5151677 (= res!2192060 call!360656)))

(declare-fun e!3211575 () Bool)

(assert (=> b!5151677 (= e!3211575 e!3211570)))

(declare-fun bm!360651 () Bool)

(declare-fun call!360657 () Bool)

(declare-fun c!886879 () Bool)

(assert (=> bm!360651 (= call!360657 (validRegex!6357 (ite c!886879 (regTwo!29517 (regTwo!29516 expr!117)) (regTwo!29516 (regTwo!29516 expr!117)))))))

(declare-fun b!5151678 () Bool)

(declare-fun res!2192061 () Bool)

(declare-fun e!3211572 () Bool)

(assert (=> b!5151678 (=> res!2192061 e!3211572)))

(assert (=> b!5151678 (= res!2192061 (not (is-Concat!23347 (regTwo!29516 expr!117))))))

(assert (=> b!5151678 (= e!3211575 e!3211572)))

(declare-fun bm!360652 () Bool)

(declare-fun call!360658 () Bool)

(assert (=> bm!360652 (= call!360658 (validRegex!6357 (ite c!886880 (reg!14831 (regTwo!29516 expr!117)) (ite c!886879 (regOne!29517 (regTwo!29516 expr!117)) (regOne!29516 (regTwo!29516 expr!117))))))))

(declare-fun b!5151679 () Bool)

(declare-fun e!3211571 () Bool)

(assert (=> b!5151679 (= e!3211571 call!360657)))

(declare-fun b!5151680 () Bool)

(assert (=> b!5151680 (= e!3211569 e!3211575)))

(assert (=> b!5151680 (= c!886879 (is-Union!14502 (regTwo!29516 expr!117)))))

(declare-fun b!5151681 () Bool)

(declare-fun e!3211573 () Bool)

(assert (=> b!5151681 (= e!3211573 call!360658)))

(declare-fun bm!360653 () Bool)

(assert (=> bm!360653 (= call!360656 call!360658)))

(declare-fun b!5151682 () Bool)

(assert (=> b!5151682 (= e!3211570 call!360657)))

(declare-fun b!5151683 () Bool)

(assert (=> b!5151683 (= e!3211569 e!3211573)))

(declare-fun res!2192059 () Bool)

(assert (=> b!5151683 (= res!2192059 (not (nullable!4858 (reg!14831 (regTwo!29516 expr!117)))))))

(assert (=> b!5151683 (=> (not res!2192059) (not e!3211573))))

(declare-fun b!5151684 () Bool)

(assert (=> b!5151684 (= e!3211572 e!3211571)))

(declare-fun res!2192058 () Bool)

(assert (=> b!5151684 (=> (not res!2192058) (not e!3211571))))

(assert (=> b!5151684 (= res!2192058 call!360656)))

(assert (= (and d!1664371 (not res!2192057)) b!5151676))

(assert (= (and b!5151676 c!886880) b!5151683))

(assert (= (and b!5151676 (not c!886880)) b!5151680))

(assert (= (and b!5151683 res!2192059) b!5151681))

(assert (= (and b!5151680 c!886879) b!5151677))

(assert (= (and b!5151680 (not c!886879)) b!5151678))

(assert (= (and b!5151677 res!2192060) b!5151682))

(assert (= (and b!5151678 (not res!2192061)) b!5151684))

(assert (= (and b!5151684 res!2192058) b!5151679))

(assert (= (or b!5151682 b!5151679) bm!360651))

(assert (= (or b!5151677 b!5151684) bm!360653))

(assert (= (or b!5151681 bm!360653) bm!360652))

(declare-fun m!6209054 () Bool)

(assert (=> bm!360651 m!6209054))

(declare-fun m!6209056 () Bool)

(assert (=> bm!360652 m!6209056))

(declare-fun m!6209058 () Bool)

(assert (=> b!5151683 m!6209058))

(assert (=> b!5151542 d!1664371))

(declare-fun d!1664373 () Bool)

(declare-fun lostCauseFct!378 (Regex!14502) Bool)

(assert (=> d!1664373 (= (lostCause!1556 (regOne!29516 expr!117)) (lostCauseFct!378 (regOne!29516 expr!117)))))

(declare-fun bs!1201810 () Bool)

(assert (= bs!1201810 d!1664373))

(declare-fun m!6209060 () Bool)

(assert (=> bs!1201810 m!6209060))

(assert (=> b!5151542 d!1664373))

(declare-fun d!1664375 () Bool)

(assert (=> d!1664375 (not (lostCause!1556 (regOne!29516 expr!117)))))

(declare-fun lt!2121618 () Unit!151223)

(declare-fun choose!38114 (Regex!14502) Unit!151223)

(assert (=> d!1664375 (= lt!2121618 (choose!38114 (regOne!29516 expr!117)))))

(assert (=> d!1664375 (validRegex!6357 (regOne!29516 expr!117))))

(assert (=> d!1664375 (= (lemmaNullableThenNotLostCause!91 (regOne!29516 expr!117)) lt!2121618)))

(declare-fun bs!1201811 () Bool)

(assert (= bs!1201811 d!1664375))

(assert (=> bs!1201811 m!6208948))

(declare-fun m!6209062 () Bool)

(assert (=> bs!1201811 m!6209062))

(assert (=> bs!1201811 m!6209020))

(assert (=> b!5151542 d!1664375))

(declare-fun b!5151696 () Bool)

(declare-fun e!3211587 () Bool)

(declare-fun e!3211582 () Bool)

(assert (=> b!5151696 (= e!3211587 e!3211582)))

(declare-fun c!886887 () Bool)

(assert (=> b!5151696 (= c!886887 (is-Star!14502 expr!117))))

(declare-fun d!1664377 () Bool)

(declare-fun res!2192063 () Bool)

(assert (=> d!1664377 (=> res!2192063 e!3211587)))

(assert (=> d!1664377 (= res!2192063 (is-ElementMatch!14502 expr!117))))

(assert (=> d!1664377 (= (validRegex!6357 expr!117) e!3211587)))

(declare-fun b!5151697 () Bool)

(declare-fun res!2192066 () Bool)

(declare-fun e!3211583 () Bool)

(assert (=> b!5151697 (=> (not res!2192066) (not e!3211583))))

(declare-fun call!360665 () Bool)

(assert (=> b!5151697 (= res!2192066 call!360665)))

(declare-fun e!3211588 () Bool)

(assert (=> b!5151697 (= e!3211588 e!3211583)))

(declare-fun bm!360660 () Bool)

(declare-fun call!360666 () Bool)

(declare-fun c!886886 () Bool)

(assert (=> bm!360660 (= call!360666 (validRegex!6357 (ite c!886886 (regTwo!29517 expr!117) (regTwo!29516 expr!117))))))

(declare-fun b!5151698 () Bool)

(declare-fun res!2192067 () Bool)

(declare-fun e!3211585 () Bool)

(assert (=> b!5151698 (=> res!2192067 e!3211585)))

(assert (=> b!5151698 (= res!2192067 (not (is-Concat!23347 expr!117)))))

(assert (=> b!5151698 (= e!3211588 e!3211585)))

(declare-fun call!360667 () Bool)

(declare-fun bm!360661 () Bool)

(assert (=> bm!360661 (= call!360667 (validRegex!6357 (ite c!886887 (reg!14831 expr!117) (ite c!886886 (regOne!29517 expr!117) (regOne!29516 expr!117)))))))

(declare-fun b!5151699 () Bool)

(declare-fun e!3211584 () Bool)

(assert (=> b!5151699 (= e!3211584 call!360666)))

(declare-fun b!5151700 () Bool)

(assert (=> b!5151700 (= e!3211582 e!3211588)))

(assert (=> b!5151700 (= c!886886 (is-Union!14502 expr!117))))

(declare-fun b!5151701 () Bool)

(declare-fun e!3211586 () Bool)

(assert (=> b!5151701 (= e!3211586 call!360667)))

(declare-fun bm!360662 () Bool)

(assert (=> bm!360662 (= call!360665 call!360667)))

(declare-fun b!5151702 () Bool)

(assert (=> b!5151702 (= e!3211583 call!360666)))

(declare-fun b!5151703 () Bool)

(assert (=> b!5151703 (= e!3211582 e!3211586)))

(declare-fun res!2192065 () Bool)

(assert (=> b!5151703 (= res!2192065 (not (nullable!4858 (reg!14831 expr!117))))))

(assert (=> b!5151703 (=> (not res!2192065) (not e!3211586))))

(declare-fun b!5151704 () Bool)

(assert (=> b!5151704 (= e!3211585 e!3211584)))

(declare-fun res!2192064 () Bool)

(assert (=> b!5151704 (=> (not res!2192064) (not e!3211584))))

(assert (=> b!5151704 (= res!2192064 call!360665)))

(assert (= (and d!1664377 (not res!2192063)) b!5151696))

(assert (= (and b!5151696 c!886887) b!5151703))

(assert (= (and b!5151696 (not c!886887)) b!5151700))

(assert (= (and b!5151703 res!2192065) b!5151701))

(assert (= (and b!5151700 c!886886) b!5151697))

(assert (= (and b!5151700 (not c!886886)) b!5151698))

(assert (= (and b!5151697 res!2192066) b!5151702))

(assert (= (and b!5151698 (not res!2192067)) b!5151704))

(assert (= (and b!5151704 res!2192064) b!5151699))

(assert (= (or b!5151702 b!5151699) bm!360660))

(assert (= (or b!5151697 b!5151704) bm!360662))

(assert (= (or b!5151701 bm!360662) bm!360661))

(declare-fun m!6209064 () Bool)

(assert (=> bm!360660 m!6209064))

(declare-fun m!6209066 () Bool)

(assert (=> bm!360661 m!6209066))

(declare-fun m!6209068 () Bool)

(assert (=> b!5151703 m!6209068))

(assert (=> start!545160 d!1664377))

(declare-fun bs!1201812 () Bool)

(declare-fun d!1664379 () Bool)

(assert (= bs!1201812 (and d!1664379 d!1664369)))

(declare-fun lambda!257191 () Int)

(assert (=> bs!1201812 (not (= lambda!257191 lambda!257188))))

(declare-fun forall!13986 (List!59922 Int) Bool)

(assert (=> d!1664379 (= (inv!79437 ctx!100) (forall!13986 (exprs!4386 ctx!100) lambda!257191))))

(declare-fun bs!1201813 () Bool)

(assert (= bs!1201813 d!1664379))

(declare-fun m!6209080 () Bool)

(assert (=> bs!1201813 m!6209080))

(assert (=> start!545160 d!1664379))

(declare-fun d!1664383 () Bool)

(assert (=> d!1664383 (= (lostCause!1556 expr!117) (lostCauseFct!378 expr!117))))

(declare-fun bs!1201814 () Bool)

(assert (= bs!1201814 d!1664383))

(declare-fun m!6209082 () Bool)

(assert (=> bs!1201814 m!6209082))

(assert (=> b!5151540 d!1664383))

(declare-fun b!5151717 () Bool)

(declare-fun e!3211591 () Bool)

(declare-fun tp!1440692 () Bool)

(assert (=> b!5151717 (= e!3211591 tp!1440692)))

(declare-fun b!5151715 () Bool)

(assert (=> b!5151715 (= e!3211591 tp_is_empty!38153)))

(assert (=> b!5151543 (= tp!1440657 e!3211591)))

(declare-fun b!5151718 () Bool)

(declare-fun tp!1440689 () Bool)

(declare-fun tp!1440688 () Bool)

(assert (=> b!5151718 (= e!3211591 (and tp!1440689 tp!1440688))))

(declare-fun b!5151716 () Bool)

(declare-fun tp!1440690 () Bool)

(declare-fun tp!1440691 () Bool)

(assert (=> b!5151716 (= e!3211591 (and tp!1440690 tp!1440691))))

(assert (= (and b!5151543 (is-ElementMatch!14502 (regOne!29516 expr!117))) b!5151715))

(assert (= (and b!5151543 (is-Concat!23347 (regOne!29516 expr!117))) b!5151716))

(assert (= (and b!5151543 (is-Star!14502 (regOne!29516 expr!117))) b!5151717))

(assert (= (and b!5151543 (is-Union!14502 (regOne!29516 expr!117))) b!5151718))

(declare-fun b!5151721 () Bool)

(declare-fun e!3211592 () Bool)

(declare-fun tp!1440697 () Bool)

(assert (=> b!5151721 (= e!3211592 tp!1440697)))

(declare-fun b!5151719 () Bool)

(assert (=> b!5151719 (= e!3211592 tp_is_empty!38153)))

(assert (=> b!5151543 (= tp!1440656 e!3211592)))

(declare-fun b!5151722 () Bool)

(declare-fun tp!1440694 () Bool)

(declare-fun tp!1440693 () Bool)

(assert (=> b!5151722 (= e!3211592 (and tp!1440694 tp!1440693))))

(declare-fun b!5151720 () Bool)

(declare-fun tp!1440695 () Bool)

(declare-fun tp!1440696 () Bool)

(assert (=> b!5151720 (= e!3211592 (and tp!1440695 tp!1440696))))

(assert (= (and b!5151543 (is-ElementMatch!14502 (regTwo!29516 expr!117))) b!5151719))

(assert (= (and b!5151543 (is-Concat!23347 (regTwo!29516 expr!117))) b!5151720))

(assert (= (and b!5151543 (is-Star!14502 (regTwo!29516 expr!117))) b!5151721))

(assert (= (and b!5151543 (is-Union!14502 (regTwo!29516 expr!117))) b!5151722))

(declare-fun b!5151727 () Bool)

(declare-fun e!3211595 () Bool)

(declare-fun tp!1440702 () Bool)

(declare-fun tp!1440703 () Bool)

(assert (=> b!5151727 (= e!3211595 (and tp!1440702 tp!1440703))))

(assert (=> b!5151547 (= tp!1440654 e!3211595)))

(assert (= (and b!5151547 (is-Cons!59798 (exprs!4386 ctx!100))) b!5151727))

(declare-fun b!5151730 () Bool)

(declare-fun e!3211596 () Bool)

(declare-fun tp!1440708 () Bool)

(assert (=> b!5151730 (= e!3211596 tp!1440708)))

(declare-fun b!5151728 () Bool)

(assert (=> b!5151728 (= e!3211596 tp_is_empty!38153)))

(assert (=> b!5151546 (= tp!1440658 e!3211596)))

(declare-fun b!5151731 () Bool)

(declare-fun tp!1440705 () Bool)

(declare-fun tp!1440704 () Bool)

(assert (=> b!5151731 (= e!3211596 (and tp!1440705 tp!1440704))))

(declare-fun b!5151729 () Bool)

(declare-fun tp!1440706 () Bool)

(declare-fun tp!1440707 () Bool)

(assert (=> b!5151729 (= e!3211596 (and tp!1440706 tp!1440707))))

(assert (= (and b!5151546 (is-ElementMatch!14502 (reg!14831 expr!117))) b!5151728))

(assert (= (and b!5151546 (is-Concat!23347 (reg!14831 expr!117))) b!5151729))

(assert (= (and b!5151546 (is-Star!14502 (reg!14831 expr!117))) b!5151730))

(assert (= (and b!5151546 (is-Union!14502 (reg!14831 expr!117))) b!5151731))

(declare-fun b!5151734 () Bool)

(declare-fun e!3211597 () Bool)

(declare-fun tp!1440713 () Bool)

(assert (=> b!5151734 (= e!3211597 tp!1440713)))

(declare-fun b!5151732 () Bool)

(assert (=> b!5151732 (= e!3211597 tp_is_empty!38153)))

(assert (=> b!5151541 (= tp!1440659 e!3211597)))

(declare-fun b!5151735 () Bool)

(declare-fun tp!1440710 () Bool)

(declare-fun tp!1440709 () Bool)

(assert (=> b!5151735 (= e!3211597 (and tp!1440710 tp!1440709))))

(declare-fun b!5151733 () Bool)

(declare-fun tp!1440711 () Bool)

(declare-fun tp!1440712 () Bool)

(assert (=> b!5151733 (= e!3211597 (and tp!1440711 tp!1440712))))

(assert (= (and b!5151541 (is-ElementMatch!14502 (regOne!29517 expr!117))) b!5151732))

(assert (= (and b!5151541 (is-Concat!23347 (regOne!29517 expr!117))) b!5151733))

(assert (= (and b!5151541 (is-Star!14502 (regOne!29517 expr!117))) b!5151734))

(assert (= (and b!5151541 (is-Union!14502 (regOne!29517 expr!117))) b!5151735))

(declare-fun b!5151738 () Bool)

(declare-fun e!3211598 () Bool)

(declare-fun tp!1440718 () Bool)

(assert (=> b!5151738 (= e!3211598 tp!1440718)))

(declare-fun b!5151736 () Bool)

(assert (=> b!5151736 (= e!3211598 tp_is_empty!38153)))

(assert (=> b!5151541 (= tp!1440655 e!3211598)))

(declare-fun b!5151739 () Bool)

(declare-fun tp!1440715 () Bool)

(declare-fun tp!1440714 () Bool)

(assert (=> b!5151739 (= e!3211598 (and tp!1440715 tp!1440714))))

(declare-fun b!5151737 () Bool)

(declare-fun tp!1440716 () Bool)

(declare-fun tp!1440717 () Bool)

(assert (=> b!5151737 (= e!3211598 (and tp!1440716 tp!1440717))))

(assert (= (and b!5151541 (is-ElementMatch!14502 (regTwo!29517 expr!117))) b!5151736))

(assert (= (and b!5151541 (is-Concat!23347 (regTwo!29517 expr!117))) b!5151737))

(assert (= (and b!5151541 (is-Star!14502 (regTwo!29517 expr!117))) b!5151738))

(assert (= (and b!5151541 (is-Union!14502 (regTwo!29517 expr!117))) b!5151739))

(push 1)

(assert (not d!1664361))

(assert (not bm!360636))

(assert (not b!5151621))

(assert (not b!5151734))

(assert (not bm!360624))

(assert (not bm!360651))

(assert (not b!5151720))

(assert (not b!5151721))

(assert (not b!5151638))

(assert (not bm!360660))

(assert (not d!1664373))

(assert (not b!5151722))

(assert (not bm!360661))

(assert (not bm!360640))

(assert tp_is_empty!38153)

(assert (not b!5151737))

(assert (not b!5151739))

(assert (not bm!360635))

(assert (not b!5151727))

(assert (not bm!360652))

(assert (not d!1664369))

(assert (not b!5151614))

(assert (not d!1664365))

(assert (not d!1664357))

(assert (not b!5151655))

(assert (not b!5151733))

(assert (not bm!360623))

(assert (not b!5151716))

(assert (not b!5151703))

(assert (not bm!360613))

(assert (not b!5151738))

(assert (not d!1664351))

(assert (not d!1664383))

(assert (not bm!360614))

(assert (not b!5151718))

(assert (not d!1664375))

(assert (not b!5151730))

(assert (not b!5151622))

(assert (not bm!360618))

(assert (not d!1664347))

(assert (not b!5151735))

(assert (not b!5151683))

(assert (not d!1664379))

(assert (not b!5151717))

(assert (not d!1664359))

(assert (not bm!360626))

(assert (not b!5151729))

(assert (not b!5151637))

(assert (not bm!360625))

(assert (not b!5151731))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

