; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545650 () Bool)

(assert start!545650)

(declare-fun res!2194030 () Bool)

(declare-fun e!3215095 () Bool)

(assert (=> start!545650 (=> (not res!2194030) (not e!3215095))))

(declare-datatypes ((C!29324 0))(
  ( (C!29325 (val!24314 Int)) )
))
(declare-datatypes ((Regex!14529 0))(
  ( (ElementMatch!14529 (c!887736 C!29324)) (Concat!23374 (regOne!29570 Regex!14529) (regTwo!29570 Regex!14529)) (EmptyExpr!14529) (Star!14529 (reg!14858 Regex!14529)) (EmptyLang!14529) (Union!14529 (regOne!29571 Regex!14529) (regTwo!29571 Regex!14529)) )
))
(declare-fun expr!117 () Regex!14529)

(declare-fun validRegex!6384 (Regex!14529) Bool)

(assert (=> start!545650 (= res!2194030 (validRegex!6384 expr!117))))

(assert (=> start!545650 e!3215095))

(declare-fun e!3215092 () Bool)

(assert (=> start!545650 e!3215092))

(declare-datatypes ((List!59972 0))(
  ( (Nil!59848) (Cons!59848 (h!66296 Regex!14529) (t!373039 List!59972)) )
))
(declare-datatypes ((Context!7826 0))(
  ( (Context!7827 (exprs!4413 List!59972)) )
))
(declare-fun ctx!100 () Context!7826)

(declare-fun e!3215096 () Bool)

(declare-fun inv!79503 (Context!7826) Bool)

(assert (=> start!545650 (and (inv!79503 ctx!100) e!3215096)))

(declare-fun tp_is_empty!38207 () Bool)

(assert (=> start!545650 tp_is_empty!38207))

(declare-fun b!5159365 () Bool)

(declare-fun res!2194033 () Bool)

(assert (=> b!5159365 (=> (not res!2194033) (not e!3215095))))

(get-info :version)

(assert (=> b!5159365 (= res!2194033 (and (not ((_ is Concat!23374) expr!117)) ((_ is Star!14529) expr!117)))))

(declare-fun b!5159366 () Bool)

(assert (=> b!5159366 (= e!3215092 tp_is_empty!38207)))

(declare-fun b!5159367 () Bool)

(declare-fun res!2194036 () Bool)

(assert (=> b!5159367 (=> (not res!2194036) (not e!3215095))))

(declare-fun e!3215094 () Bool)

(assert (=> b!5159367 (= res!2194036 e!3215094)))

(declare-fun res!2194032 () Bool)

(assert (=> b!5159367 (=> res!2194032 e!3215094)))

(assert (=> b!5159367 (= res!2194032 (not ((_ is Concat!23374) expr!117)))))

(declare-fun b!5159368 () Bool)

(declare-fun res!2194034 () Bool)

(assert (=> b!5159368 (=> (not res!2194034) (not e!3215095))))

(declare-fun e!3215091 () Bool)

(assert (=> b!5159368 (= res!2194034 e!3215091)))

(declare-fun res!2194038 () Bool)

(assert (=> b!5159368 (=> res!2194038 e!3215091)))

(declare-fun lostCause!1610 (Regex!14529) Bool)

(assert (=> b!5159368 (= res!2194038 (lostCause!1610 (reg!14858 expr!117)))))

(declare-fun b!5159369 () Bool)

(declare-fun e!3215093 () Bool)

(declare-fun lostCause!1611 (Context!7826) Bool)

(assert (=> b!5159369 (= e!3215093 (lostCause!1611 ctx!100))))

(declare-fun b!5159370 () Bool)

(declare-fun res!2194029 () Bool)

(assert (=> b!5159370 (=> (not res!2194029) (not e!3215095))))

(declare-fun a!1296 () C!29324)

(assert (=> b!5159370 (= res!2194029 (and (or (not ((_ is ElementMatch!14529) expr!117)) (not (= (c!887736 expr!117) a!1296))) (not ((_ is Union!14529) expr!117))))))

(declare-fun b!5159371 () Bool)

(declare-fun res!2194031 () Bool)

(assert (=> b!5159371 (=> (not res!2194031) (not e!3215095))))

(assert (=> b!5159371 (= res!2194031 (validRegex!6384 (reg!14858 expr!117)))))

(declare-fun b!5159372 () Bool)

(declare-fun res!2194037 () Bool)

(assert (=> b!5159372 (=> (not res!2194037) (not e!3215095))))

(assert (=> b!5159372 (= res!2194037 e!3215093)))

(declare-fun res!2194035 () Bool)

(assert (=> b!5159372 (=> res!2194035 e!3215093)))

(assert (=> b!5159372 (= res!2194035 (lostCause!1610 expr!117))))

(declare-fun b!5159373 () Bool)

(declare-fun tp!1445813 () Bool)

(declare-fun tp!1445810 () Bool)

(assert (=> b!5159373 (= e!3215092 (and tp!1445813 tp!1445810))))

(declare-fun b!5159374 () Bool)

(declare-fun tp!1445808 () Bool)

(declare-fun tp!1445809 () Bool)

(assert (=> b!5159374 (= e!3215092 (and tp!1445808 tp!1445809))))

(declare-fun b!5159375 () Bool)

(declare-fun nullable!4885 (Regex!14529) Bool)

(assert (=> b!5159375 (= e!3215094 (not (nullable!4885 (regOne!29570 expr!117))))))

(declare-fun b!5159376 () Bool)

(declare-fun tp!1445811 () Bool)

(assert (=> b!5159376 (= e!3215092 tp!1445811)))

(declare-fun b!5159377 () Bool)

(declare-fun regexDepth!145 (Regex!14529) Int)

(assert (=> b!5159377 (= e!3215095 (>= (regexDepth!145 (reg!14858 expr!117)) (regexDepth!145 expr!117)))))

(declare-fun b!5159378 () Bool)

(declare-fun $colon$colon!1243 (List!59972 Regex!14529) List!59972)

(assert (=> b!5159378 (= e!3215091 (lostCause!1611 (Context!7827 ($colon$colon!1243 (exprs!4413 ctx!100) expr!117))))))

(declare-fun b!5159379 () Bool)

(declare-fun tp!1445812 () Bool)

(assert (=> b!5159379 (= e!3215096 tp!1445812)))

(assert (= (and start!545650 res!2194030) b!5159372))

(assert (= (and b!5159372 (not res!2194035)) b!5159369))

(assert (= (and b!5159372 res!2194037) b!5159370))

(assert (= (and b!5159370 res!2194029) b!5159367))

(assert (= (and b!5159367 (not res!2194032)) b!5159375))

(assert (= (and b!5159367 res!2194036) b!5159365))

(assert (= (and b!5159365 res!2194033) b!5159371))

(assert (= (and b!5159371 res!2194031) b!5159368))

(assert (= (and b!5159368 (not res!2194038)) b!5159378))

(assert (= (and b!5159368 res!2194034) b!5159377))

(assert (= (and start!545650 ((_ is ElementMatch!14529) expr!117)) b!5159366))

(assert (= (and start!545650 ((_ is Concat!23374) expr!117)) b!5159374))

(assert (= (and start!545650 ((_ is Star!14529) expr!117)) b!5159376))

(assert (= (and start!545650 ((_ is Union!14529) expr!117)) b!5159373))

(assert (= start!545650 b!5159379))

(declare-fun m!6211618 () Bool)

(assert (=> b!5159378 m!6211618))

(declare-fun m!6211620 () Bool)

(assert (=> b!5159378 m!6211620))

(declare-fun m!6211622 () Bool)

(assert (=> b!5159369 m!6211622))

(declare-fun m!6211624 () Bool)

(assert (=> b!5159371 m!6211624))

(declare-fun m!6211626 () Bool)

(assert (=> b!5159377 m!6211626))

(declare-fun m!6211628 () Bool)

(assert (=> b!5159377 m!6211628))

(declare-fun m!6211630 () Bool)

(assert (=> b!5159375 m!6211630))

(declare-fun m!6211632 () Bool)

(assert (=> b!5159372 m!6211632))

(declare-fun m!6211634 () Bool)

(assert (=> b!5159368 m!6211634))

(declare-fun m!6211636 () Bool)

(assert (=> start!545650 m!6211636))

(declare-fun m!6211638 () Bool)

(assert (=> start!545650 m!6211638))

(check-sat tp_is_empty!38207 (not b!5159378) (not b!5159379) (not b!5159373) (not b!5159371) (not b!5159377) (not b!5159368) (not b!5159374) (not start!545650) (not b!5159372) (not b!5159376) (not b!5159369) (not b!5159375))
(check-sat)
(get-model)

(declare-fun d!1665384 () Bool)

(declare-fun lostCauseFct!402 (Regex!14529) Bool)

(assert (=> d!1665384 (= (lostCause!1610 (reg!14858 expr!117)) (lostCauseFct!402 (reg!14858 expr!117)))))

(declare-fun bs!1202355 () Bool)

(assert (= bs!1202355 d!1665384))

(declare-fun m!6211640 () Bool)

(assert (=> bs!1202355 m!6211640))

(assert (=> b!5159368 d!1665384))

(declare-fun d!1665386 () Bool)

(declare-fun lambda!257523 () Int)

(declare-fun exists!1870 (List!59972 Int) Bool)

(assert (=> d!1665386 (= (lostCause!1611 (Context!7827 ($colon$colon!1243 (exprs!4413 ctx!100) expr!117))) (exists!1870 (exprs!4413 (Context!7827 ($colon$colon!1243 (exprs!4413 ctx!100) expr!117))) lambda!257523))))

(declare-fun bs!1202365 () Bool)

(assert (= bs!1202365 d!1665386))

(declare-fun m!6211686 () Bool)

(assert (=> bs!1202365 m!6211686))

(assert (=> b!5159378 d!1665386))

(declare-fun d!1665410 () Bool)

(assert (=> d!1665410 (= ($colon$colon!1243 (exprs!4413 ctx!100) expr!117) (Cons!59848 expr!117 (exprs!4413 ctx!100)))))

(assert (=> b!5159378 d!1665410))

(declare-fun b!5159537 () Bool)

(declare-fun e!3215195 () Bool)

(declare-fun e!3215190 () Bool)

(assert (=> b!5159537 (= e!3215195 e!3215190)))

(declare-fun c!887777 () Bool)

(assert (=> b!5159537 (= c!887777 ((_ is Union!14529) expr!117))))

(declare-fun bm!361665 () Bool)

(declare-fun call!361670 () Bool)

(assert (=> bm!361665 (= call!361670 (validRegex!6384 (ite c!887777 (regOne!29571 expr!117) (regOne!29570 expr!117))))))

(declare-fun bm!361666 () Bool)

(declare-fun call!361671 () Bool)

(declare-fun call!361672 () Bool)

(assert (=> bm!361666 (= call!361671 call!361672)))

(declare-fun b!5159538 () Bool)

(declare-fun e!3215191 () Bool)

(declare-fun e!3215192 () Bool)

(assert (=> b!5159538 (= e!3215191 e!3215192)))

(declare-fun res!2194084 () Bool)

(assert (=> b!5159538 (=> (not res!2194084) (not e!3215192))))

(assert (=> b!5159538 (= res!2194084 call!361670)))

(declare-fun b!5159539 () Bool)

(assert (=> b!5159539 (= e!3215192 call!361671)))

(declare-fun b!5159540 () Bool)

(declare-fun e!3215189 () Bool)

(assert (=> b!5159540 (= e!3215189 call!361671)))

(declare-fun c!887778 () Bool)

(declare-fun bm!361667 () Bool)

(assert (=> bm!361667 (= call!361672 (validRegex!6384 (ite c!887778 (reg!14858 expr!117) (ite c!887777 (regTwo!29571 expr!117) (regTwo!29570 expr!117)))))))

(declare-fun b!5159541 () Bool)

(declare-fun res!2194081 () Bool)

(assert (=> b!5159541 (=> (not res!2194081) (not e!3215189))))

(assert (=> b!5159541 (= res!2194081 call!361670)))

(assert (=> b!5159541 (= e!3215190 e!3215189)))

(declare-fun d!1665412 () Bool)

(declare-fun res!2194085 () Bool)

(declare-fun e!3215193 () Bool)

(assert (=> d!1665412 (=> res!2194085 e!3215193)))

(assert (=> d!1665412 (= res!2194085 ((_ is ElementMatch!14529) expr!117))))

(assert (=> d!1665412 (= (validRegex!6384 expr!117) e!3215193)))

(declare-fun b!5159542 () Bool)

(declare-fun res!2194083 () Bool)

(assert (=> b!5159542 (=> res!2194083 e!3215191)))

(assert (=> b!5159542 (= res!2194083 (not ((_ is Concat!23374) expr!117)))))

(assert (=> b!5159542 (= e!3215190 e!3215191)))

(declare-fun b!5159543 () Bool)

(assert (=> b!5159543 (= e!3215193 e!3215195)))

(assert (=> b!5159543 (= c!887778 ((_ is Star!14529) expr!117))))

(declare-fun b!5159544 () Bool)

(declare-fun e!3215194 () Bool)

(assert (=> b!5159544 (= e!3215194 call!361672)))

(declare-fun b!5159545 () Bool)

(assert (=> b!5159545 (= e!3215195 e!3215194)))

(declare-fun res!2194082 () Bool)

(assert (=> b!5159545 (= res!2194082 (not (nullable!4885 (reg!14858 expr!117))))))

(assert (=> b!5159545 (=> (not res!2194082) (not e!3215194))))

(assert (= (and d!1665412 (not res!2194085)) b!5159543))

(assert (= (and b!5159543 c!887778) b!5159545))

(assert (= (and b!5159543 (not c!887778)) b!5159537))

(assert (= (and b!5159545 res!2194082) b!5159544))

(assert (= (and b!5159537 c!887777) b!5159541))

(assert (= (and b!5159537 (not c!887777)) b!5159542))

(assert (= (and b!5159541 res!2194081) b!5159540))

(assert (= (and b!5159542 (not res!2194083)) b!5159538))

(assert (= (and b!5159538 res!2194084) b!5159539))

(assert (= (or b!5159540 b!5159539) bm!361666))

(assert (= (or b!5159541 b!5159538) bm!361665))

(assert (= (or b!5159544 bm!361666) bm!361667))

(declare-fun m!6211688 () Bool)

(assert (=> bm!361665 m!6211688))

(declare-fun m!6211690 () Bool)

(assert (=> bm!361667 m!6211690))

(declare-fun m!6211692 () Bool)

(assert (=> b!5159545 m!6211692))

(assert (=> start!545650 d!1665412))

(declare-fun bs!1202366 () Bool)

(declare-fun d!1665414 () Bool)

(assert (= bs!1202366 (and d!1665414 d!1665386)))

(declare-fun lambda!257526 () Int)

(assert (=> bs!1202366 (not (= lambda!257526 lambda!257523))))

(declare-fun forall!14021 (List!59972 Int) Bool)

(assert (=> d!1665414 (= (inv!79503 ctx!100) (forall!14021 (exprs!4413 ctx!100) lambda!257526))))

(declare-fun bs!1202367 () Bool)

(assert (= bs!1202367 d!1665414))

(declare-fun m!6211694 () Bool)

(assert (=> bs!1202367 m!6211694))

(assert (=> start!545650 d!1665414))

(declare-fun d!1665416 () Bool)

(assert (=> d!1665416 (= (lostCause!1610 expr!117) (lostCauseFct!402 expr!117))))

(declare-fun bs!1202368 () Bool)

(assert (= bs!1202368 d!1665416))

(declare-fun m!6211696 () Bool)

(assert (=> bs!1202368 m!6211696))

(assert (=> b!5159372 d!1665416))

(declare-fun b!5159580 () Bool)

(declare-fun e!3215221 () Int)

(assert (=> b!5159580 (= e!3215221 1)))

(declare-fun b!5159581 () Bool)

(declare-fun e!3215216 () Int)

(assert (=> b!5159581 (= e!3215216 e!3215221)))

(declare-fun c!887799 () Bool)

(assert (=> b!5159581 (= c!887799 ((_ is Concat!23374) (reg!14858 expr!117)))))

(declare-fun call!361693 () Int)

(declare-fun c!887794 () Bool)

(declare-fun bm!361682 () Bool)

(declare-fun c!887795 () Bool)

(assert (=> bm!361682 (= call!361693 (regexDepth!145 (ite c!887795 (regTwo!29571 (reg!14858 expr!117)) (ite c!887794 (regOne!29570 (reg!14858 expr!117)) (reg!14858 (reg!14858 expr!117))))))))

(declare-fun bm!361683 () Bool)

(declare-fun call!361692 () Int)

(assert (=> bm!361683 (= call!361692 (regexDepth!145 (ite c!887795 (regOne!29571 (reg!14858 expr!117)) (regTwo!29570 (reg!14858 expr!117)))))))

(declare-fun call!361690 () Int)

(declare-fun bm!361684 () Bool)

(declare-fun call!361689 () Int)

(declare-fun call!361691 () Int)

(declare-fun c!887798 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!361684 (= call!361691 (maxBigInt!0 (ite c!887798 call!361690 call!361689) (ite c!887798 call!361689 call!361690)))))

(declare-fun b!5159582 () Bool)

(assert (=> b!5159582 (= e!3215221 (+ 1 call!361691))))

(declare-fun b!5159583 () Bool)

(declare-fun e!3215219 () Int)

(declare-fun e!3215217 () Int)

(assert (=> b!5159583 (= e!3215219 e!3215217)))

(declare-fun c!887797 () Bool)

(assert (=> b!5159583 (= c!887797 ((_ is Star!14529) (reg!14858 expr!117)))))

(declare-fun b!5159584 () Bool)

(declare-fun e!3215225 () Bool)

(declare-fun lt!2122104 () Int)

(assert (=> b!5159584 (= e!3215225 (= lt!2122104 1))))

(declare-fun b!5159585 () Bool)

(assert (=> b!5159585 (= e!3215219 1)))

(declare-fun b!5159586 () Bool)

(declare-fun e!3215223 () Bool)

(declare-fun e!3215224 () Bool)

(assert (=> b!5159586 (= e!3215223 e!3215224)))

(declare-fun res!2194092 () Bool)

(assert (=> b!5159586 (= res!2194092 (> lt!2122104 call!361692))))

(assert (=> b!5159586 (=> (not res!2194092) (not e!3215224))))

(declare-fun b!5159587 () Bool)

(assert (=> b!5159587 (= e!3215216 (+ 1 call!361691))))

(declare-fun bm!361685 () Bool)

(declare-fun call!361687 () Int)

(assert (=> bm!361685 (= call!361687 call!361693)))

(declare-fun b!5159588 () Bool)

(declare-fun e!3215222 () Bool)

(assert (=> b!5159588 (= e!3215223 e!3215222)))

(assert (=> b!5159588 (= c!887794 ((_ is Concat!23374) (reg!14858 expr!117)))))

(declare-fun d!1665418 () Bool)

(declare-fun e!3215220 () Bool)

(assert (=> d!1665418 e!3215220))

(declare-fun res!2194094 () Bool)

(assert (=> d!1665418 (=> (not res!2194094) (not e!3215220))))

(assert (=> d!1665418 (= res!2194094 (> lt!2122104 0))))

(assert (=> d!1665418 (= lt!2122104 e!3215219)))

(declare-fun c!887796 () Bool)

(assert (=> d!1665418 (= c!887796 ((_ is ElementMatch!14529) (reg!14858 expr!117)))))

(assert (=> d!1665418 (= (regexDepth!145 (reg!14858 expr!117)) lt!2122104)))

(declare-fun b!5159589 () Bool)

(assert (=> b!5159589 (= e!3215220 e!3215223)))

(assert (=> b!5159589 (= c!887795 ((_ is Union!14529) (reg!14858 expr!117)))))

(declare-fun bm!361686 () Bool)

(assert (=> bm!361686 (= call!361690 (regexDepth!145 (ite c!887798 (regOne!29571 (reg!14858 expr!117)) (regTwo!29570 (reg!14858 expr!117)))))))

(declare-fun b!5159590 () Bool)

(declare-fun call!361688 () Int)

(assert (=> b!5159590 (= e!3215217 (+ 1 call!361688))))

(declare-fun b!5159591 () Bool)

(assert (=> b!5159591 (= e!3215224 (> lt!2122104 call!361693))))

(declare-fun bm!361687 () Bool)

(assert (=> bm!361687 (= call!361689 call!361688)))

(declare-fun b!5159592 () Bool)

(assert (=> b!5159592 (= c!887798 ((_ is Union!14529) (reg!14858 expr!117)))))

(assert (=> b!5159592 (= e!3215217 e!3215216)))

(declare-fun bm!361688 () Bool)

(assert (=> bm!361688 (= call!361688 (regexDepth!145 (ite c!887797 (reg!14858 (reg!14858 expr!117)) (ite c!887798 (regTwo!29571 (reg!14858 expr!117)) (regOne!29570 (reg!14858 expr!117))))))))

(declare-fun b!5159593 () Bool)

(declare-fun res!2194093 () Bool)

(declare-fun e!3215218 () Bool)

(assert (=> b!5159593 (=> (not res!2194093) (not e!3215218))))

(assert (=> b!5159593 (= res!2194093 (> lt!2122104 call!361687))))

(assert (=> b!5159593 (= e!3215222 e!3215218)))

(declare-fun b!5159594 () Bool)

(assert (=> b!5159594 (= e!3215218 (> lt!2122104 call!361692))))

(declare-fun b!5159595 () Bool)

(assert (=> b!5159595 (= e!3215225 (> lt!2122104 call!361687))))

(declare-fun b!5159596 () Bool)

(declare-fun c!887793 () Bool)

(assert (=> b!5159596 (= c!887793 ((_ is Star!14529) (reg!14858 expr!117)))))

(assert (=> b!5159596 (= e!3215222 e!3215225)))

(assert (= (and d!1665418 c!887796) b!5159585))

(assert (= (and d!1665418 (not c!887796)) b!5159583))

(assert (= (and b!5159583 c!887797) b!5159590))

(assert (= (and b!5159583 (not c!887797)) b!5159592))

(assert (= (and b!5159592 c!887798) b!5159587))

(assert (= (and b!5159592 (not c!887798)) b!5159581))

(assert (= (and b!5159581 c!887799) b!5159582))

(assert (= (and b!5159581 (not c!887799)) b!5159580))

(assert (= (or b!5159587 b!5159582) bm!361687))

(assert (= (or b!5159587 b!5159582) bm!361686))

(assert (= (or b!5159587 b!5159582) bm!361684))

(assert (= (or b!5159590 bm!361687) bm!361688))

(assert (= (and d!1665418 res!2194094) b!5159589))

(assert (= (and b!5159589 c!887795) b!5159586))

(assert (= (and b!5159589 (not c!887795)) b!5159588))

(assert (= (and b!5159586 res!2194092) b!5159591))

(assert (= (and b!5159588 c!887794) b!5159593))

(assert (= (and b!5159588 (not c!887794)) b!5159596))

(assert (= (and b!5159593 res!2194093) b!5159594))

(assert (= (and b!5159596 c!887793) b!5159595))

(assert (= (and b!5159596 (not c!887793)) b!5159584))

(assert (= (or b!5159593 b!5159595) bm!361685))

(assert (= (or b!5159591 bm!361685) bm!361682))

(assert (= (or b!5159586 b!5159594) bm!361683))

(declare-fun m!6211698 () Bool)

(assert (=> bm!361683 m!6211698))

(declare-fun m!6211700 () Bool)

(assert (=> bm!361684 m!6211700))

(declare-fun m!6211702 () Bool)

(assert (=> bm!361682 m!6211702))

(declare-fun m!6211704 () Bool)

(assert (=> bm!361686 m!6211704))

(declare-fun m!6211706 () Bool)

(assert (=> bm!361688 m!6211706))

(assert (=> b!5159377 d!1665418))

(declare-fun b!5159597 () Bool)

(declare-fun e!3215231 () Int)

(assert (=> b!5159597 (= e!3215231 1)))

(declare-fun b!5159598 () Bool)

(declare-fun e!3215226 () Int)

(assert (=> b!5159598 (= e!3215226 e!3215231)))

(declare-fun c!887806 () Bool)

(assert (=> b!5159598 (= c!887806 ((_ is Concat!23374) expr!117))))

(declare-fun call!361700 () Int)

(declare-fun c!887802 () Bool)

(declare-fun bm!361689 () Bool)

(declare-fun c!887801 () Bool)

(assert (=> bm!361689 (= call!361700 (regexDepth!145 (ite c!887802 (regTwo!29571 expr!117) (ite c!887801 (regOne!29570 expr!117) (reg!14858 expr!117)))))))

(declare-fun bm!361690 () Bool)

(declare-fun call!361699 () Int)

(assert (=> bm!361690 (= call!361699 (regexDepth!145 (ite c!887802 (regOne!29571 expr!117) (regTwo!29570 expr!117))))))

(declare-fun call!361696 () Int)

(declare-fun call!361698 () Int)

(declare-fun bm!361691 () Bool)

(declare-fun c!887805 () Bool)

(declare-fun call!361697 () Int)

(assert (=> bm!361691 (= call!361698 (maxBigInt!0 (ite c!887805 call!361697 call!361696) (ite c!887805 call!361696 call!361697)))))

(declare-fun b!5159599 () Bool)

(assert (=> b!5159599 (= e!3215231 (+ 1 call!361698))))

(declare-fun b!5159600 () Bool)

(declare-fun e!3215229 () Int)

(declare-fun e!3215227 () Int)

(assert (=> b!5159600 (= e!3215229 e!3215227)))

(declare-fun c!887804 () Bool)

(assert (=> b!5159600 (= c!887804 ((_ is Star!14529) expr!117))))

(declare-fun b!5159601 () Bool)

(declare-fun e!3215235 () Bool)

(declare-fun lt!2122105 () Int)

(assert (=> b!5159601 (= e!3215235 (= lt!2122105 1))))

(declare-fun b!5159602 () Bool)

(assert (=> b!5159602 (= e!3215229 1)))

(declare-fun b!5159603 () Bool)

(declare-fun e!3215233 () Bool)

(declare-fun e!3215234 () Bool)

(assert (=> b!5159603 (= e!3215233 e!3215234)))

(declare-fun res!2194095 () Bool)

(assert (=> b!5159603 (= res!2194095 (> lt!2122105 call!361699))))

(assert (=> b!5159603 (=> (not res!2194095) (not e!3215234))))

(declare-fun b!5159604 () Bool)

(assert (=> b!5159604 (= e!3215226 (+ 1 call!361698))))

(declare-fun bm!361692 () Bool)

(declare-fun call!361694 () Int)

(assert (=> bm!361692 (= call!361694 call!361700)))

(declare-fun b!5159605 () Bool)

(declare-fun e!3215232 () Bool)

(assert (=> b!5159605 (= e!3215233 e!3215232)))

(assert (=> b!5159605 (= c!887801 ((_ is Concat!23374) expr!117))))

(declare-fun d!1665420 () Bool)

(declare-fun e!3215230 () Bool)

(assert (=> d!1665420 e!3215230))

(declare-fun res!2194097 () Bool)

(assert (=> d!1665420 (=> (not res!2194097) (not e!3215230))))

(assert (=> d!1665420 (= res!2194097 (> lt!2122105 0))))

(assert (=> d!1665420 (= lt!2122105 e!3215229)))

(declare-fun c!887803 () Bool)

(assert (=> d!1665420 (= c!887803 ((_ is ElementMatch!14529) expr!117))))

(assert (=> d!1665420 (= (regexDepth!145 expr!117) lt!2122105)))

(declare-fun b!5159606 () Bool)

(assert (=> b!5159606 (= e!3215230 e!3215233)))

(assert (=> b!5159606 (= c!887802 ((_ is Union!14529) expr!117))))

(declare-fun bm!361693 () Bool)

(assert (=> bm!361693 (= call!361697 (regexDepth!145 (ite c!887805 (regOne!29571 expr!117) (regTwo!29570 expr!117))))))

(declare-fun b!5159607 () Bool)

(declare-fun call!361695 () Int)

(assert (=> b!5159607 (= e!3215227 (+ 1 call!361695))))

(declare-fun b!5159608 () Bool)

(assert (=> b!5159608 (= e!3215234 (> lt!2122105 call!361700))))

(declare-fun bm!361694 () Bool)

(assert (=> bm!361694 (= call!361696 call!361695)))

(declare-fun b!5159609 () Bool)

(assert (=> b!5159609 (= c!887805 ((_ is Union!14529) expr!117))))

(assert (=> b!5159609 (= e!3215227 e!3215226)))

(declare-fun bm!361695 () Bool)

(assert (=> bm!361695 (= call!361695 (regexDepth!145 (ite c!887804 (reg!14858 expr!117) (ite c!887805 (regTwo!29571 expr!117) (regOne!29570 expr!117)))))))

(declare-fun b!5159610 () Bool)

(declare-fun res!2194096 () Bool)

(declare-fun e!3215228 () Bool)

(assert (=> b!5159610 (=> (not res!2194096) (not e!3215228))))

(assert (=> b!5159610 (= res!2194096 (> lt!2122105 call!361694))))

(assert (=> b!5159610 (= e!3215232 e!3215228)))

(declare-fun b!5159611 () Bool)

(assert (=> b!5159611 (= e!3215228 (> lt!2122105 call!361699))))

(declare-fun b!5159612 () Bool)

(assert (=> b!5159612 (= e!3215235 (> lt!2122105 call!361694))))

(declare-fun b!5159613 () Bool)

(declare-fun c!887800 () Bool)

(assert (=> b!5159613 (= c!887800 ((_ is Star!14529) expr!117))))

(assert (=> b!5159613 (= e!3215232 e!3215235)))

(assert (= (and d!1665420 c!887803) b!5159602))

(assert (= (and d!1665420 (not c!887803)) b!5159600))

(assert (= (and b!5159600 c!887804) b!5159607))

(assert (= (and b!5159600 (not c!887804)) b!5159609))

(assert (= (and b!5159609 c!887805) b!5159604))

(assert (= (and b!5159609 (not c!887805)) b!5159598))

(assert (= (and b!5159598 c!887806) b!5159599))

(assert (= (and b!5159598 (not c!887806)) b!5159597))

(assert (= (or b!5159604 b!5159599) bm!361694))

(assert (= (or b!5159604 b!5159599) bm!361693))

(assert (= (or b!5159604 b!5159599) bm!361691))

(assert (= (or b!5159607 bm!361694) bm!361695))

(assert (= (and d!1665420 res!2194097) b!5159606))

(assert (= (and b!5159606 c!887802) b!5159603))

(assert (= (and b!5159606 (not c!887802)) b!5159605))

(assert (= (and b!5159603 res!2194095) b!5159608))

(assert (= (and b!5159605 c!887801) b!5159610))

(assert (= (and b!5159605 (not c!887801)) b!5159613))

(assert (= (and b!5159610 res!2194096) b!5159611))

(assert (= (and b!5159613 c!887800) b!5159612))

(assert (= (and b!5159613 (not c!887800)) b!5159601))

(assert (= (or b!5159610 b!5159612) bm!361692))

(assert (= (or b!5159608 bm!361692) bm!361689))

(assert (= (or b!5159603 b!5159611) bm!361690))

(declare-fun m!6211708 () Bool)

(assert (=> bm!361690 m!6211708))

(declare-fun m!6211710 () Bool)

(assert (=> bm!361691 m!6211710))

(declare-fun m!6211712 () Bool)

(assert (=> bm!361689 m!6211712))

(declare-fun m!6211714 () Bool)

(assert (=> bm!361693 m!6211714))

(declare-fun m!6211716 () Bool)

(assert (=> bm!361695 m!6211716))

(assert (=> b!5159377 d!1665420))

(declare-fun b!5159614 () Bool)

(declare-fun e!3215242 () Bool)

(declare-fun e!3215237 () Bool)

(assert (=> b!5159614 (= e!3215242 e!3215237)))

(declare-fun c!887807 () Bool)

(assert (=> b!5159614 (= c!887807 ((_ is Union!14529) (reg!14858 expr!117)))))

(declare-fun bm!361696 () Bool)

(declare-fun call!361701 () Bool)

(assert (=> bm!361696 (= call!361701 (validRegex!6384 (ite c!887807 (regOne!29571 (reg!14858 expr!117)) (regOne!29570 (reg!14858 expr!117)))))))

(declare-fun bm!361697 () Bool)

(declare-fun call!361702 () Bool)

(declare-fun call!361703 () Bool)

(assert (=> bm!361697 (= call!361702 call!361703)))

(declare-fun b!5159615 () Bool)

(declare-fun e!3215238 () Bool)

(declare-fun e!3215239 () Bool)

(assert (=> b!5159615 (= e!3215238 e!3215239)))

(declare-fun res!2194101 () Bool)

(assert (=> b!5159615 (=> (not res!2194101) (not e!3215239))))

(assert (=> b!5159615 (= res!2194101 call!361701)))

(declare-fun b!5159616 () Bool)

(assert (=> b!5159616 (= e!3215239 call!361702)))

(declare-fun b!5159617 () Bool)

(declare-fun e!3215236 () Bool)

(assert (=> b!5159617 (= e!3215236 call!361702)))

(declare-fun bm!361698 () Bool)

(declare-fun c!887808 () Bool)

(assert (=> bm!361698 (= call!361703 (validRegex!6384 (ite c!887808 (reg!14858 (reg!14858 expr!117)) (ite c!887807 (regTwo!29571 (reg!14858 expr!117)) (regTwo!29570 (reg!14858 expr!117))))))))

(declare-fun b!5159618 () Bool)

(declare-fun res!2194098 () Bool)

(assert (=> b!5159618 (=> (not res!2194098) (not e!3215236))))

(assert (=> b!5159618 (= res!2194098 call!361701)))

(assert (=> b!5159618 (= e!3215237 e!3215236)))

(declare-fun d!1665422 () Bool)

(declare-fun res!2194102 () Bool)

(declare-fun e!3215240 () Bool)

(assert (=> d!1665422 (=> res!2194102 e!3215240)))

(assert (=> d!1665422 (= res!2194102 ((_ is ElementMatch!14529) (reg!14858 expr!117)))))

(assert (=> d!1665422 (= (validRegex!6384 (reg!14858 expr!117)) e!3215240)))

(declare-fun b!5159619 () Bool)

(declare-fun res!2194100 () Bool)

(assert (=> b!5159619 (=> res!2194100 e!3215238)))

(assert (=> b!5159619 (= res!2194100 (not ((_ is Concat!23374) (reg!14858 expr!117))))))

(assert (=> b!5159619 (= e!3215237 e!3215238)))

(declare-fun b!5159620 () Bool)

(assert (=> b!5159620 (= e!3215240 e!3215242)))

(assert (=> b!5159620 (= c!887808 ((_ is Star!14529) (reg!14858 expr!117)))))

(declare-fun b!5159621 () Bool)

(declare-fun e!3215241 () Bool)

(assert (=> b!5159621 (= e!3215241 call!361703)))

(declare-fun b!5159622 () Bool)

(assert (=> b!5159622 (= e!3215242 e!3215241)))

(declare-fun res!2194099 () Bool)

(assert (=> b!5159622 (= res!2194099 (not (nullable!4885 (reg!14858 (reg!14858 expr!117)))))))

(assert (=> b!5159622 (=> (not res!2194099) (not e!3215241))))

(assert (= (and d!1665422 (not res!2194102)) b!5159620))

(assert (= (and b!5159620 c!887808) b!5159622))

(assert (= (and b!5159620 (not c!887808)) b!5159614))

(assert (= (and b!5159622 res!2194099) b!5159621))

(assert (= (and b!5159614 c!887807) b!5159618))

(assert (= (and b!5159614 (not c!887807)) b!5159619))

(assert (= (and b!5159618 res!2194098) b!5159617))

(assert (= (and b!5159619 (not res!2194100)) b!5159615))

(assert (= (and b!5159615 res!2194101) b!5159616))

(assert (= (or b!5159617 b!5159616) bm!361697))

(assert (= (or b!5159618 b!5159615) bm!361696))

(assert (= (or b!5159621 bm!361697) bm!361698))

(declare-fun m!6211718 () Bool)

(assert (=> bm!361696 m!6211718))

(declare-fun m!6211720 () Bool)

(assert (=> bm!361698 m!6211720))

(declare-fun m!6211722 () Bool)

(assert (=> b!5159622 m!6211722))

(assert (=> b!5159371 d!1665422))

(declare-fun d!1665424 () Bool)

(declare-fun nullableFct!1361 (Regex!14529) Bool)

(assert (=> d!1665424 (= (nullable!4885 (regOne!29570 expr!117)) (nullableFct!1361 (regOne!29570 expr!117)))))

(declare-fun bs!1202369 () Bool)

(assert (= bs!1202369 d!1665424))

(declare-fun m!6211724 () Bool)

(assert (=> bs!1202369 m!6211724))

(assert (=> b!5159375 d!1665424))

(declare-fun bs!1202370 () Bool)

(declare-fun d!1665426 () Bool)

(assert (= bs!1202370 (and d!1665426 d!1665386)))

(declare-fun lambda!257527 () Int)

(assert (=> bs!1202370 (= lambda!257527 lambda!257523)))

(declare-fun bs!1202371 () Bool)

(assert (= bs!1202371 (and d!1665426 d!1665414)))

(assert (=> bs!1202371 (not (= lambda!257527 lambda!257526))))

(assert (=> d!1665426 (= (lostCause!1611 ctx!100) (exists!1870 (exprs!4413 ctx!100) lambda!257527))))

(declare-fun bs!1202372 () Bool)

(assert (= bs!1202372 d!1665426))

(declare-fun m!6211726 () Bool)

(assert (=> bs!1202372 m!6211726))

(assert (=> b!5159369 d!1665426))

(declare-fun e!3215245 () Bool)

(assert (=> b!5159374 (= tp!1445808 e!3215245)))

(declare-fun b!5159634 () Bool)

(declare-fun tp!1445867 () Bool)

(declare-fun tp!1445866 () Bool)

(assert (=> b!5159634 (= e!3215245 (and tp!1445867 tp!1445866))))

(declare-fun b!5159635 () Bool)

(declare-fun tp!1445869 () Bool)

(assert (=> b!5159635 (= e!3215245 tp!1445869)))

(declare-fun b!5159636 () Bool)

(declare-fun tp!1445865 () Bool)

(declare-fun tp!1445868 () Bool)

(assert (=> b!5159636 (= e!3215245 (and tp!1445865 tp!1445868))))

(declare-fun b!5159633 () Bool)

(assert (=> b!5159633 (= e!3215245 tp_is_empty!38207)))

(assert (= (and b!5159374 ((_ is ElementMatch!14529) (regOne!29570 expr!117))) b!5159633))

(assert (= (and b!5159374 ((_ is Concat!23374) (regOne!29570 expr!117))) b!5159634))

(assert (= (and b!5159374 ((_ is Star!14529) (regOne!29570 expr!117))) b!5159635))

(assert (= (and b!5159374 ((_ is Union!14529) (regOne!29570 expr!117))) b!5159636))

(declare-fun e!3215246 () Bool)

(assert (=> b!5159374 (= tp!1445809 e!3215246)))

(declare-fun b!5159638 () Bool)

(declare-fun tp!1445872 () Bool)

(declare-fun tp!1445871 () Bool)

(assert (=> b!5159638 (= e!3215246 (and tp!1445872 tp!1445871))))

(declare-fun b!5159639 () Bool)

(declare-fun tp!1445874 () Bool)

(assert (=> b!5159639 (= e!3215246 tp!1445874)))

(declare-fun b!5159640 () Bool)

(declare-fun tp!1445870 () Bool)

(declare-fun tp!1445873 () Bool)

(assert (=> b!5159640 (= e!3215246 (and tp!1445870 tp!1445873))))

(declare-fun b!5159637 () Bool)

(assert (=> b!5159637 (= e!3215246 tp_is_empty!38207)))

(assert (= (and b!5159374 ((_ is ElementMatch!14529) (regTwo!29570 expr!117))) b!5159637))

(assert (= (and b!5159374 ((_ is Concat!23374) (regTwo!29570 expr!117))) b!5159638))

(assert (= (and b!5159374 ((_ is Star!14529) (regTwo!29570 expr!117))) b!5159639))

(assert (= (and b!5159374 ((_ is Union!14529) (regTwo!29570 expr!117))) b!5159640))

(declare-fun b!5159645 () Bool)

(declare-fun e!3215249 () Bool)

(declare-fun tp!1445879 () Bool)

(declare-fun tp!1445880 () Bool)

(assert (=> b!5159645 (= e!3215249 (and tp!1445879 tp!1445880))))

(assert (=> b!5159379 (= tp!1445812 e!3215249)))

(assert (= (and b!5159379 ((_ is Cons!59848) (exprs!4413 ctx!100))) b!5159645))

(declare-fun e!3215250 () Bool)

(assert (=> b!5159373 (= tp!1445813 e!3215250)))

(declare-fun b!5159647 () Bool)

(declare-fun tp!1445883 () Bool)

(declare-fun tp!1445882 () Bool)

(assert (=> b!5159647 (= e!3215250 (and tp!1445883 tp!1445882))))

(declare-fun b!5159648 () Bool)

(declare-fun tp!1445885 () Bool)

(assert (=> b!5159648 (= e!3215250 tp!1445885)))

(declare-fun b!5159649 () Bool)

(declare-fun tp!1445881 () Bool)

(declare-fun tp!1445884 () Bool)

(assert (=> b!5159649 (= e!3215250 (and tp!1445881 tp!1445884))))

(declare-fun b!5159646 () Bool)

(assert (=> b!5159646 (= e!3215250 tp_is_empty!38207)))

(assert (= (and b!5159373 ((_ is ElementMatch!14529) (regOne!29571 expr!117))) b!5159646))

(assert (= (and b!5159373 ((_ is Concat!23374) (regOne!29571 expr!117))) b!5159647))

(assert (= (and b!5159373 ((_ is Star!14529) (regOne!29571 expr!117))) b!5159648))

(assert (= (and b!5159373 ((_ is Union!14529) (regOne!29571 expr!117))) b!5159649))

(declare-fun e!3215251 () Bool)

(assert (=> b!5159373 (= tp!1445810 e!3215251)))

(declare-fun b!5159651 () Bool)

(declare-fun tp!1445888 () Bool)

(declare-fun tp!1445887 () Bool)

(assert (=> b!5159651 (= e!3215251 (and tp!1445888 tp!1445887))))

(declare-fun b!5159652 () Bool)

(declare-fun tp!1445890 () Bool)

(assert (=> b!5159652 (= e!3215251 tp!1445890)))

(declare-fun b!5159653 () Bool)

(declare-fun tp!1445886 () Bool)

(declare-fun tp!1445889 () Bool)

(assert (=> b!5159653 (= e!3215251 (and tp!1445886 tp!1445889))))

(declare-fun b!5159650 () Bool)

(assert (=> b!5159650 (= e!3215251 tp_is_empty!38207)))

(assert (= (and b!5159373 ((_ is ElementMatch!14529) (regTwo!29571 expr!117))) b!5159650))

(assert (= (and b!5159373 ((_ is Concat!23374) (regTwo!29571 expr!117))) b!5159651))

(assert (= (and b!5159373 ((_ is Star!14529) (regTwo!29571 expr!117))) b!5159652))

(assert (= (and b!5159373 ((_ is Union!14529) (regTwo!29571 expr!117))) b!5159653))

(declare-fun e!3215252 () Bool)

(assert (=> b!5159376 (= tp!1445811 e!3215252)))

(declare-fun b!5159655 () Bool)

(declare-fun tp!1445893 () Bool)

(declare-fun tp!1445892 () Bool)

(assert (=> b!5159655 (= e!3215252 (and tp!1445893 tp!1445892))))

(declare-fun b!5159656 () Bool)

(declare-fun tp!1445895 () Bool)

(assert (=> b!5159656 (= e!3215252 tp!1445895)))

(declare-fun b!5159657 () Bool)

(declare-fun tp!1445891 () Bool)

(declare-fun tp!1445894 () Bool)

(assert (=> b!5159657 (= e!3215252 (and tp!1445891 tp!1445894))))

(declare-fun b!5159654 () Bool)

(assert (=> b!5159654 (= e!3215252 tp_is_empty!38207)))

(assert (= (and b!5159376 ((_ is ElementMatch!14529) (reg!14858 expr!117))) b!5159654))

(assert (= (and b!5159376 ((_ is Concat!23374) (reg!14858 expr!117))) b!5159655))

(assert (= (and b!5159376 ((_ is Star!14529) (reg!14858 expr!117))) b!5159656))

(assert (= (and b!5159376 ((_ is Union!14529) (reg!14858 expr!117))) b!5159657))

(check-sat (not b!5159638) (not bm!361693) (not b!5159656) (not bm!361688) (not bm!361667) (not b!5159545) (not bm!361683) (not d!1665384) (not b!5159648) (not b!5159639) (not b!5159640) tp_is_empty!38207 (not d!1665386) (not bm!361698) (not b!5159647) (not bm!361684) (not b!5159653) (not b!5159634) (not b!5159636) (not d!1665424) (not b!5159652) (not bm!361665) (not bm!361690) (not b!5159622) (not bm!361691) (not bm!361689) (not bm!361695) (not b!5159651) (not d!1665414) (not b!5159635) (not b!5159657) (not b!5159649) (not bm!361686) (not d!1665426) (not bm!361696) (not b!5159655) (not b!5159645) (not bm!361682) (not d!1665416))
(check-sat)
