; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735682 () Bool)

(assert start!735682)

(declare-fun b!7643512 () Bool)

(declare-fun e!4543171 () Bool)

(declare-fun tp!2231170 () Bool)

(declare-fun tp!2231168 () Bool)

(assert (=> b!7643512 (= e!4543171 (and tp!2231170 tp!2231168))))

(declare-fun res!3061477 () Bool)

(declare-fun e!4543170 () Bool)

(assert (=> start!735682 (=> (not res!3061477) (not e!4543170))))

(declare-datatypes ((C!41230 0))(
  ( (C!41231 (val!31055 Int)) )
))
(declare-datatypes ((Regex!20452 0))(
  ( (ElementMatch!20452 (c!1407907 C!41230)) (Concat!29297 (regOne!41416 Regex!20452) (regTwo!41416 Regex!20452)) (EmptyExpr!20452) (Star!20452 (reg!20781 Regex!20452)) (EmptyLang!20452) (Union!20452 (regOne!41417 Regex!20452) (regTwo!41417 Regex!20452)) )
))
(declare-fun r!14126 () Regex!20452)

(declare-fun validRegex!10870 (Regex!20452) Bool)

(assert (=> start!735682 (= res!3061477 (validRegex!10870 r!14126))))

(assert (=> start!735682 e!4543170))

(assert (=> start!735682 e!4543171))

(declare-fun e!4543172 () Bool)

(assert (=> start!735682 e!4543172))

(declare-fun b!7643513 () Bool)

(declare-fun tp_is_empty!51259 () Bool)

(declare-fun tp!2231167 () Bool)

(assert (=> b!7643513 (= e!4543172 (and tp_is_empty!51259 tp!2231167))))

(declare-fun b!7643514 () Bool)

(declare-fun res!3061478 () Bool)

(assert (=> b!7643514 (=> (not res!3061478) (not e!4543170))))

(declare-datatypes ((List!73303 0))(
  ( (Nil!73179) (Cons!73179 (h!79627 C!41230) (t!388038 List!73303)) )
))
(declare-fun s!9605 () List!73303)

(declare-fun matchR!9953 (Regex!20452 List!73303) Bool)

(assert (=> b!7643514 (= res!3061478 (matchR!9953 (regOne!41417 r!14126) s!9605))))

(declare-fun b!7643515 () Bool)

(declare-fun e!4543173 () Bool)

(assert (=> b!7643515 (= e!4543170 e!4543173)))

(declare-fun res!3061476 () Bool)

(assert (=> b!7643515 (=> res!3061476 e!4543173)))

(assert (=> b!7643515 (= res!3061476 (not (validRegex!10870 (regOne!41417 r!14126))))))

(declare-fun b!7643516 () Bool)

(assert (=> b!7643516 (= e!4543171 tp_is_empty!51259)))

(declare-fun b!7643517 () Bool)

(declare-fun res!3061475 () Bool)

(assert (=> b!7643517 (=> (not res!3061475) (not e!4543170))))

(assert (=> b!7643517 (= res!3061475 (and (not (is-EmptyExpr!20452 r!14126)) (not (is-EmptyLang!20452 r!14126)) (not (is-ElementMatch!20452 r!14126)) (is-Union!20452 r!14126)))))

(declare-fun b!7643518 () Bool)

(declare-fun tp!2231166 () Bool)

(declare-fun tp!2231171 () Bool)

(assert (=> b!7643518 (= e!4543171 (and tp!2231166 tp!2231171))))

(declare-fun b!7643519 () Bool)

(assert (=> b!7643519 (= e!4543173 (not (validRegex!10870 (regTwo!41417 r!14126))))))

(declare-fun b!7643520 () Bool)

(declare-fun tp!2231169 () Bool)

(assert (=> b!7643520 (= e!4543171 tp!2231169)))

(declare-fun b!7643521 () Bool)

(declare-fun res!3061479 () Bool)

(assert (=> b!7643521 (=> (not res!3061479) (not e!4543170))))

(assert (=> b!7643521 (= res!3061479 (not (matchR!9953 r!14126 s!9605)))))

(assert (= (and start!735682 res!3061477) b!7643517))

(assert (= (and b!7643517 res!3061475) b!7643521))

(assert (= (and b!7643521 res!3061479) b!7643514))

(assert (= (and b!7643514 res!3061478) b!7643515))

(assert (= (and b!7643515 (not res!3061476)) b!7643519))

(assert (= (and start!735682 (is-ElementMatch!20452 r!14126)) b!7643516))

(assert (= (and start!735682 (is-Concat!29297 r!14126)) b!7643518))

(assert (= (and start!735682 (is-Star!20452 r!14126)) b!7643520))

(assert (= (and start!735682 (is-Union!20452 r!14126)) b!7643512))

(assert (= (and start!735682 (is-Cons!73179 s!9605)) b!7643513))

(declare-fun m!8163742 () Bool)

(assert (=> b!7643519 m!8163742))

(declare-fun m!8163744 () Bool)

(assert (=> b!7643515 m!8163744))

(declare-fun m!8163746 () Bool)

(assert (=> b!7643521 m!8163746))

(declare-fun m!8163748 () Bool)

(assert (=> b!7643514 m!8163748))

(declare-fun m!8163750 () Bool)

(assert (=> start!735682 m!8163750))

(push 1)

(assert (not b!7643521))

(assert (not b!7643519))

(assert (not b!7643514))

(assert tp_is_empty!51259)

(assert (not b!7643518))

(assert (not b!7643520))

(assert (not b!7643513))

(assert (not b!7643515))

(assert (not b!7643512))

(assert (not start!735682))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7643570 () Bool)

(declare-fun e!4543201 () Bool)

(declare-fun call!701673 () Bool)

(assert (=> b!7643570 (= e!4543201 call!701673)))

(declare-fun b!7643571 () Bool)

(declare-fun e!4543203 () Bool)

(assert (=> b!7643571 (= e!4543203 e!4543201)))

(declare-fun res!3061505 () Bool)

(assert (=> b!7643571 (=> (not res!3061505) (not e!4543201))))

(declare-fun call!701674 () Bool)

(assert (=> b!7643571 (= res!3061505 call!701674)))

(declare-fun b!7643572 () Bool)

(declare-fun e!4543204 () Bool)

(declare-fun e!4543206 () Bool)

(assert (=> b!7643572 (= e!4543204 e!4543206)))

(declare-fun c!1407914 () Bool)

(assert (=> b!7643572 (= c!1407914 (is-Star!20452 (regTwo!41417 r!14126)))))

(declare-fun b!7643573 () Bool)

(declare-fun e!4543202 () Bool)

(assert (=> b!7643573 (= e!4543206 e!4543202)))

(declare-fun res!3061508 () Bool)

(declare-fun nullable!8957 (Regex!20452) Bool)

(assert (=> b!7643573 (= res!3061508 (not (nullable!8957 (reg!20781 (regTwo!41417 r!14126)))))))

(assert (=> b!7643573 (=> (not res!3061508) (not e!4543202))))

(declare-fun bm!701668 () Bool)

(declare-fun c!1407913 () Bool)

(assert (=> bm!701668 (= call!701673 (validRegex!10870 (ite c!1407913 (regTwo!41417 (regTwo!41417 r!14126)) (regTwo!41416 (regTwo!41417 r!14126)))))))

(declare-fun b!7643574 () Bool)

(declare-fun res!3061506 () Bool)

(assert (=> b!7643574 (=> res!3061506 e!4543203)))

(assert (=> b!7643574 (= res!3061506 (not (is-Concat!29297 (regTwo!41417 r!14126))))))

(declare-fun e!4543205 () Bool)

(assert (=> b!7643574 (= e!4543205 e!4543203)))

(declare-fun bm!701669 () Bool)

(declare-fun call!701675 () Bool)

(assert (=> bm!701669 (= call!701674 call!701675)))

(declare-fun b!7643576 () Bool)

(declare-fun e!4543200 () Bool)

(assert (=> b!7643576 (= e!4543200 call!701673)))

(declare-fun b!7643577 () Bool)

(assert (=> b!7643577 (= e!4543206 e!4543205)))

(assert (=> b!7643577 (= c!1407913 (is-Union!20452 (regTwo!41417 r!14126)))))

(declare-fun b!7643575 () Bool)

(assert (=> b!7643575 (= e!4543202 call!701675)))

(declare-fun d!2325362 () Bool)

(declare-fun res!3061509 () Bool)

(assert (=> d!2325362 (=> res!3061509 e!4543204)))

(assert (=> d!2325362 (= res!3061509 (is-ElementMatch!20452 (regTwo!41417 r!14126)))))

(assert (=> d!2325362 (= (validRegex!10870 (regTwo!41417 r!14126)) e!4543204)))

(declare-fun bm!701670 () Bool)

(assert (=> bm!701670 (= call!701675 (validRegex!10870 (ite c!1407914 (reg!20781 (regTwo!41417 r!14126)) (ite c!1407913 (regOne!41417 (regTwo!41417 r!14126)) (regOne!41416 (regTwo!41417 r!14126))))))))

(declare-fun b!7643578 () Bool)

(declare-fun res!3061507 () Bool)

(assert (=> b!7643578 (=> (not res!3061507) (not e!4543200))))

(assert (=> b!7643578 (= res!3061507 call!701674)))

(assert (=> b!7643578 (= e!4543205 e!4543200)))

(assert (= (and d!2325362 (not res!3061509)) b!7643572))

(assert (= (and b!7643572 c!1407914) b!7643573))

(assert (= (and b!7643572 (not c!1407914)) b!7643577))

(assert (= (and b!7643573 res!3061508) b!7643575))

(assert (= (and b!7643577 c!1407913) b!7643578))

(assert (= (and b!7643577 (not c!1407913)) b!7643574))

(assert (= (and b!7643578 res!3061507) b!7643576))

(assert (= (and b!7643574 (not res!3061506)) b!7643571))

(assert (= (and b!7643571 res!3061505) b!7643570))

(assert (= (or b!7643578 b!7643571) bm!701669))

(assert (= (or b!7643576 b!7643570) bm!701668))

(assert (= (or b!7643575 bm!701669) bm!701670))

(declare-fun m!8163762 () Bool)

(assert (=> b!7643573 m!8163762))

(declare-fun m!8163764 () Bool)

(assert (=> bm!701668 m!8163764))

(declare-fun m!8163766 () Bool)

(assert (=> bm!701670 m!8163766))

(assert (=> b!7643519 d!2325362))

(declare-fun b!7643579 () Bool)

(declare-fun e!4543208 () Bool)

(declare-fun call!701676 () Bool)

(assert (=> b!7643579 (= e!4543208 call!701676)))

(declare-fun b!7643580 () Bool)

(declare-fun e!4543210 () Bool)

(assert (=> b!7643580 (= e!4543210 e!4543208)))

(declare-fun res!3061510 () Bool)

(assert (=> b!7643580 (=> (not res!3061510) (not e!4543208))))

(declare-fun call!701677 () Bool)

(assert (=> b!7643580 (= res!3061510 call!701677)))

(declare-fun b!7643581 () Bool)

(declare-fun e!4543211 () Bool)

(declare-fun e!4543213 () Bool)

(assert (=> b!7643581 (= e!4543211 e!4543213)))

(declare-fun c!1407916 () Bool)

(assert (=> b!7643581 (= c!1407916 (is-Star!20452 r!14126))))

(declare-fun b!7643582 () Bool)

(declare-fun e!4543209 () Bool)

(assert (=> b!7643582 (= e!4543213 e!4543209)))

(declare-fun res!3061513 () Bool)

(assert (=> b!7643582 (= res!3061513 (not (nullable!8957 (reg!20781 r!14126))))))

(assert (=> b!7643582 (=> (not res!3061513) (not e!4543209))))

(declare-fun bm!701671 () Bool)

(declare-fun c!1407915 () Bool)

(assert (=> bm!701671 (= call!701676 (validRegex!10870 (ite c!1407915 (regTwo!41417 r!14126) (regTwo!41416 r!14126))))))

(declare-fun b!7643583 () Bool)

(declare-fun res!3061511 () Bool)

(assert (=> b!7643583 (=> res!3061511 e!4543210)))

(assert (=> b!7643583 (= res!3061511 (not (is-Concat!29297 r!14126)))))

(declare-fun e!4543212 () Bool)

(assert (=> b!7643583 (= e!4543212 e!4543210)))

(declare-fun bm!701672 () Bool)

(declare-fun call!701678 () Bool)

(assert (=> bm!701672 (= call!701677 call!701678)))

(declare-fun b!7643585 () Bool)

(declare-fun e!4543207 () Bool)

(assert (=> b!7643585 (= e!4543207 call!701676)))

(declare-fun b!7643586 () Bool)

(assert (=> b!7643586 (= e!4543213 e!4543212)))

(assert (=> b!7643586 (= c!1407915 (is-Union!20452 r!14126))))

(declare-fun b!7643584 () Bool)

(assert (=> b!7643584 (= e!4543209 call!701678)))

(declare-fun d!2325366 () Bool)

(declare-fun res!3061514 () Bool)

(assert (=> d!2325366 (=> res!3061514 e!4543211)))

(assert (=> d!2325366 (= res!3061514 (is-ElementMatch!20452 r!14126))))

(assert (=> d!2325366 (= (validRegex!10870 r!14126) e!4543211)))

(declare-fun bm!701673 () Bool)

(assert (=> bm!701673 (= call!701678 (validRegex!10870 (ite c!1407916 (reg!20781 r!14126) (ite c!1407915 (regOne!41417 r!14126) (regOne!41416 r!14126)))))))

(declare-fun b!7643587 () Bool)

(declare-fun res!3061512 () Bool)

(assert (=> b!7643587 (=> (not res!3061512) (not e!4543207))))

(assert (=> b!7643587 (= res!3061512 call!701677)))

(assert (=> b!7643587 (= e!4543212 e!4543207)))

(assert (= (and d!2325366 (not res!3061514)) b!7643581))

(assert (= (and b!7643581 c!1407916) b!7643582))

(assert (= (and b!7643581 (not c!1407916)) b!7643586))

(assert (= (and b!7643582 res!3061513) b!7643584))

(assert (= (and b!7643586 c!1407915) b!7643587))

(assert (= (and b!7643586 (not c!1407915)) b!7643583))

(assert (= (and b!7643587 res!3061512) b!7643585))

(assert (= (and b!7643583 (not res!3061511)) b!7643580))

(assert (= (and b!7643580 res!3061510) b!7643579))

(assert (= (or b!7643587 b!7643580) bm!701672))

(assert (= (or b!7643585 b!7643579) bm!701671))

(assert (= (or b!7643584 bm!701672) bm!701673))

(declare-fun m!8163768 () Bool)

(assert (=> b!7643582 m!8163768))

(declare-fun m!8163770 () Bool)

(assert (=> bm!701671 m!8163770))

(declare-fun m!8163772 () Bool)

(assert (=> bm!701673 m!8163772))

(assert (=> start!735682 d!2325366))

(declare-fun b!7643588 () Bool)

(declare-fun e!4543215 () Bool)

(declare-fun call!701679 () Bool)

(assert (=> b!7643588 (= e!4543215 call!701679)))

(declare-fun b!7643589 () Bool)

(declare-fun e!4543217 () Bool)

(assert (=> b!7643589 (= e!4543217 e!4543215)))

(declare-fun res!3061515 () Bool)

(assert (=> b!7643589 (=> (not res!3061515) (not e!4543215))))

(declare-fun call!701680 () Bool)

(assert (=> b!7643589 (= res!3061515 call!701680)))

(declare-fun b!7643590 () Bool)

(declare-fun e!4543218 () Bool)

(declare-fun e!4543220 () Bool)

(assert (=> b!7643590 (= e!4543218 e!4543220)))

(declare-fun c!1407918 () Bool)

(assert (=> b!7643590 (= c!1407918 (is-Star!20452 (regOne!41417 r!14126)))))

(declare-fun b!7643591 () Bool)

(declare-fun e!4543216 () Bool)

(assert (=> b!7643591 (= e!4543220 e!4543216)))

(declare-fun res!3061518 () Bool)

(assert (=> b!7643591 (= res!3061518 (not (nullable!8957 (reg!20781 (regOne!41417 r!14126)))))))

(assert (=> b!7643591 (=> (not res!3061518) (not e!4543216))))

(declare-fun bm!701674 () Bool)

(declare-fun c!1407917 () Bool)

(assert (=> bm!701674 (= call!701679 (validRegex!10870 (ite c!1407917 (regTwo!41417 (regOne!41417 r!14126)) (regTwo!41416 (regOne!41417 r!14126)))))))

(declare-fun b!7643592 () Bool)

(declare-fun res!3061516 () Bool)

(assert (=> b!7643592 (=> res!3061516 e!4543217)))

(assert (=> b!7643592 (= res!3061516 (not (is-Concat!29297 (regOne!41417 r!14126))))))

(declare-fun e!4543219 () Bool)

(assert (=> b!7643592 (= e!4543219 e!4543217)))

(declare-fun bm!701675 () Bool)

(declare-fun call!701681 () Bool)

(assert (=> bm!701675 (= call!701680 call!701681)))

(declare-fun b!7643594 () Bool)

(declare-fun e!4543214 () Bool)

(assert (=> b!7643594 (= e!4543214 call!701679)))

(declare-fun b!7643595 () Bool)

(assert (=> b!7643595 (= e!4543220 e!4543219)))

(assert (=> b!7643595 (= c!1407917 (is-Union!20452 (regOne!41417 r!14126)))))

(declare-fun b!7643593 () Bool)

(assert (=> b!7643593 (= e!4543216 call!701681)))

(declare-fun d!2325368 () Bool)

(declare-fun res!3061519 () Bool)

(assert (=> d!2325368 (=> res!3061519 e!4543218)))

(assert (=> d!2325368 (= res!3061519 (is-ElementMatch!20452 (regOne!41417 r!14126)))))

(assert (=> d!2325368 (= (validRegex!10870 (regOne!41417 r!14126)) e!4543218)))

(declare-fun bm!701676 () Bool)

(assert (=> bm!701676 (= call!701681 (validRegex!10870 (ite c!1407918 (reg!20781 (regOne!41417 r!14126)) (ite c!1407917 (regOne!41417 (regOne!41417 r!14126)) (regOne!41416 (regOne!41417 r!14126))))))))

(declare-fun b!7643596 () Bool)

(declare-fun res!3061517 () Bool)

(assert (=> b!7643596 (=> (not res!3061517) (not e!4543214))))

(assert (=> b!7643596 (= res!3061517 call!701680)))

(assert (=> b!7643596 (= e!4543219 e!4543214)))

(assert (= (and d!2325368 (not res!3061519)) b!7643590))

(assert (= (and b!7643590 c!1407918) b!7643591))

(assert (= (and b!7643590 (not c!1407918)) b!7643595))

(assert (= (and b!7643591 res!3061518) b!7643593))

(assert (= (and b!7643595 c!1407917) b!7643596))

(assert (= (and b!7643595 (not c!1407917)) b!7643592))

(assert (= (and b!7643596 res!3061517) b!7643594))

(assert (= (and b!7643592 (not res!3061516)) b!7643589))

(assert (= (and b!7643589 res!3061515) b!7643588))

(assert (= (or b!7643596 b!7643589) bm!701675))

(assert (= (or b!7643594 b!7643588) bm!701674))

(assert (= (or b!7643593 bm!701675) bm!701676))

(declare-fun m!8163774 () Bool)

(assert (=> b!7643591 m!8163774))

(declare-fun m!8163776 () Bool)

(assert (=> bm!701674 m!8163776))

(declare-fun m!8163778 () Bool)

(assert (=> bm!701676 m!8163778))

(assert (=> b!7643515 d!2325368))

(declare-fun b!7643653 () Bool)

(declare-fun res!3061558 () Bool)

(declare-fun e!4543255 () Bool)

(assert (=> b!7643653 (=> res!3061558 e!4543255)))

(declare-fun e!4543251 () Bool)

(assert (=> b!7643653 (= res!3061558 e!4543251)))

(declare-fun res!3061552 () Bool)

(assert (=> b!7643653 (=> (not res!3061552) (not e!4543251))))

(declare-fun lt!2660729 () Bool)

(assert (=> b!7643653 (= res!3061552 lt!2660729)))

(declare-fun b!7643654 () Bool)

(declare-fun e!4543253 () Bool)

(declare-fun e!4543252 () Bool)

(assert (=> b!7643654 (= e!4543253 e!4543252)))

(declare-fun res!3061559 () Bool)

(assert (=> b!7643654 (=> res!3061559 e!4543252)))

(declare-fun call!701684 () Bool)

(assert (=> b!7643654 (= res!3061559 call!701684)))

(declare-fun b!7643655 () Bool)

(declare-fun e!4543250 () Bool)

(declare-fun derivativeStep!5927 (Regex!20452 C!41230) Regex!20452)

(declare-fun head!15727 (List!73303) C!41230)

(declare-fun tail!15267 (List!73303) List!73303)

(assert (=> b!7643655 (= e!4543250 (matchR!9953 (derivativeStep!5927 (regOne!41417 r!14126) (head!15727 s!9605)) (tail!15267 s!9605)))))

(declare-fun d!2325370 () Bool)

(declare-fun e!4543249 () Bool)

(assert (=> d!2325370 e!4543249))

(declare-fun c!1407931 () Bool)

(assert (=> d!2325370 (= c!1407931 (is-EmptyExpr!20452 (regOne!41417 r!14126)))))

(assert (=> d!2325370 (= lt!2660729 e!4543250)))

(declare-fun c!1407932 () Bool)

(declare-fun isEmpty!41808 (List!73303) Bool)

(assert (=> d!2325370 (= c!1407932 (isEmpty!41808 s!9605))))

(assert (=> d!2325370 (validRegex!10870 (regOne!41417 r!14126))))

(assert (=> d!2325370 (= (matchR!9953 (regOne!41417 r!14126) s!9605) lt!2660729)))

(declare-fun b!7643656 () Bool)

(declare-fun e!4543254 () Bool)

(assert (=> b!7643656 (= e!4543249 e!4543254)))

(declare-fun c!1407933 () Bool)

(assert (=> b!7643656 (= c!1407933 (is-EmptyLang!20452 (regOne!41417 r!14126)))))

(declare-fun b!7643657 () Bool)

(declare-fun res!3061557 () Bool)

(assert (=> b!7643657 (=> (not res!3061557) (not e!4543251))))

(assert (=> b!7643657 (= res!3061557 (not call!701684))))

(declare-fun b!7643658 () Bool)

(assert (=> b!7643658 (= e!4543250 (nullable!8957 (regOne!41417 r!14126)))))

(declare-fun b!7643659 () Bool)

(declare-fun res!3061556 () Bool)

(assert (=> b!7643659 (=> res!3061556 e!4543252)))

(assert (=> b!7643659 (= res!3061556 (not (isEmpty!41808 (tail!15267 s!9605))))))

(declare-fun b!7643660 () Bool)

(assert (=> b!7643660 (= e!4543251 (= (head!15727 s!9605) (c!1407907 (regOne!41417 r!14126))))))

(declare-fun b!7643661 () Bool)

(assert (=> b!7643661 (= e!4543254 (not lt!2660729))))

(declare-fun b!7643662 () Bool)

(declare-fun res!3061554 () Bool)

(assert (=> b!7643662 (=> res!3061554 e!4543255)))

(assert (=> b!7643662 (= res!3061554 (not (is-ElementMatch!20452 (regOne!41417 r!14126))))))

(assert (=> b!7643662 (= e!4543254 e!4543255)))

(declare-fun b!7643663 () Bool)

(assert (=> b!7643663 (= e!4543252 (not (= (head!15727 s!9605) (c!1407907 (regOne!41417 r!14126)))))))

(declare-fun b!7643664 () Bool)

(assert (=> b!7643664 (= e!4543249 (= lt!2660729 call!701684))))

(declare-fun bm!701679 () Bool)

(assert (=> bm!701679 (= call!701684 (isEmpty!41808 s!9605))))

(declare-fun b!7643665 () Bool)

(declare-fun res!3061555 () Bool)

(assert (=> b!7643665 (=> (not res!3061555) (not e!4543251))))

(assert (=> b!7643665 (= res!3061555 (isEmpty!41808 (tail!15267 s!9605)))))

(declare-fun b!7643666 () Bool)

(assert (=> b!7643666 (= e!4543255 e!4543253)))

(declare-fun res!3061553 () Bool)

(assert (=> b!7643666 (=> (not res!3061553) (not e!4543253))))

(assert (=> b!7643666 (= res!3061553 (not lt!2660729))))

(assert (= (and d!2325370 c!1407932) b!7643658))

(assert (= (and d!2325370 (not c!1407932)) b!7643655))

(assert (= (and d!2325370 c!1407931) b!7643664))

(assert (= (and d!2325370 (not c!1407931)) b!7643656))

(assert (= (and b!7643656 c!1407933) b!7643661))

(assert (= (and b!7643656 (not c!1407933)) b!7643662))

(assert (= (and b!7643662 (not res!3061554)) b!7643653))

(assert (= (and b!7643653 res!3061552) b!7643657))

(assert (= (and b!7643657 res!3061557) b!7643665))

(assert (= (and b!7643665 res!3061555) b!7643660))

(assert (= (and b!7643653 (not res!3061558)) b!7643666))

(assert (= (and b!7643666 res!3061553) b!7643654))

(assert (= (and b!7643654 (not res!3061559)) b!7643659))

(assert (= (and b!7643659 (not res!3061556)) b!7643663))

(assert (= (or b!7643664 b!7643654 b!7643657) bm!701679))

(declare-fun m!8163780 () Bool)

(assert (=> b!7643655 m!8163780))

(assert (=> b!7643655 m!8163780))

(declare-fun m!8163782 () Bool)

(assert (=> b!7643655 m!8163782))

(declare-fun m!8163784 () Bool)

(assert (=> b!7643655 m!8163784))

(assert (=> b!7643655 m!8163782))

(assert (=> b!7643655 m!8163784))

(declare-fun m!8163786 () Bool)

(assert (=> b!7643655 m!8163786))

(declare-fun m!8163788 () Bool)

(assert (=> b!7643658 m!8163788))

(assert (=> b!7643659 m!8163784))

(assert (=> b!7643659 m!8163784))

(declare-fun m!8163790 () Bool)

(assert (=> b!7643659 m!8163790))

(declare-fun m!8163792 () Bool)

(assert (=> d!2325370 m!8163792))

(assert (=> d!2325370 m!8163744))

(assert (=> bm!701679 m!8163792))

(assert (=> b!7643663 m!8163780))

(assert (=> b!7643660 m!8163780))

(assert (=> b!7643665 m!8163784))

(assert (=> b!7643665 m!8163784))

(assert (=> b!7643665 m!8163790))

(assert (=> b!7643514 d!2325370))

(declare-fun b!7643667 () Bool)

(declare-fun res!3061566 () Bool)

(declare-fun e!4543262 () Bool)

(assert (=> b!7643667 (=> res!3061566 e!4543262)))

(declare-fun e!4543258 () Bool)

(assert (=> b!7643667 (= res!3061566 e!4543258)))

(declare-fun res!3061560 () Bool)

(assert (=> b!7643667 (=> (not res!3061560) (not e!4543258))))

(declare-fun lt!2660730 () Bool)

(assert (=> b!7643667 (= res!3061560 lt!2660730)))

(declare-fun b!7643668 () Bool)

(declare-fun e!4543260 () Bool)

(declare-fun e!4543259 () Bool)

(assert (=> b!7643668 (= e!4543260 e!4543259)))

(declare-fun res!3061567 () Bool)

(assert (=> b!7643668 (=> res!3061567 e!4543259)))

(declare-fun call!701685 () Bool)

(assert (=> b!7643668 (= res!3061567 call!701685)))

(declare-fun b!7643669 () Bool)

(declare-fun e!4543257 () Bool)

(assert (=> b!7643669 (= e!4543257 (matchR!9953 (derivativeStep!5927 r!14126 (head!15727 s!9605)) (tail!15267 s!9605)))))

(declare-fun d!2325372 () Bool)

(declare-fun e!4543256 () Bool)

(assert (=> d!2325372 e!4543256))

(declare-fun c!1407934 () Bool)

(assert (=> d!2325372 (= c!1407934 (is-EmptyExpr!20452 r!14126))))

(assert (=> d!2325372 (= lt!2660730 e!4543257)))

(declare-fun c!1407935 () Bool)

(assert (=> d!2325372 (= c!1407935 (isEmpty!41808 s!9605))))

(assert (=> d!2325372 (validRegex!10870 r!14126)))

(assert (=> d!2325372 (= (matchR!9953 r!14126 s!9605) lt!2660730)))

(declare-fun b!7643670 () Bool)

(declare-fun e!4543261 () Bool)

(assert (=> b!7643670 (= e!4543256 e!4543261)))

(declare-fun c!1407936 () Bool)

(assert (=> b!7643670 (= c!1407936 (is-EmptyLang!20452 r!14126))))

(declare-fun b!7643671 () Bool)

(declare-fun res!3061565 () Bool)

(assert (=> b!7643671 (=> (not res!3061565) (not e!4543258))))

(assert (=> b!7643671 (= res!3061565 (not call!701685))))

(declare-fun b!7643672 () Bool)

(assert (=> b!7643672 (= e!4543257 (nullable!8957 r!14126))))

(declare-fun b!7643673 () Bool)

(declare-fun res!3061564 () Bool)

(assert (=> b!7643673 (=> res!3061564 e!4543259)))

(assert (=> b!7643673 (= res!3061564 (not (isEmpty!41808 (tail!15267 s!9605))))))

(declare-fun b!7643674 () Bool)

(assert (=> b!7643674 (= e!4543258 (= (head!15727 s!9605) (c!1407907 r!14126)))))

(declare-fun b!7643675 () Bool)

(assert (=> b!7643675 (= e!4543261 (not lt!2660730))))

(declare-fun b!7643676 () Bool)

(declare-fun res!3061562 () Bool)

(assert (=> b!7643676 (=> res!3061562 e!4543262)))

(assert (=> b!7643676 (= res!3061562 (not (is-ElementMatch!20452 r!14126)))))

(assert (=> b!7643676 (= e!4543261 e!4543262)))

(declare-fun b!7643677 () Bool)

(assert (=> b!7643677 (= e!4543259 (not (= (head!15727 s!9605) (c!1407907 r!14126))))))

(declare-fun b!7643678 () Bool)

(assert (=> b!7643678 (= e!4543256 (= lt!2660730 call!701685))))

(declare-fun bm!701680 () Bool)

(assert (=> bm!701680 (= call!701685 (isEmpty!41808 s!9605))))

(declare-fun b!7643679 () Bool)

(declare-fun res!3061563 () Bool)

(assert (=> b!7643679 (=> (not res!3061563) (not e!4543258))))

(assert (=> b!7643679 (= res!3061563 (isEmpty!41808 (tail!15267 s!9605)))))

(declare-fun b!7643680 () Bool)

(assert (=> b!7643680 (= e!4543262 e!4543260)))

(declare-fun res!3061561 () Bool)

(assert (=> b!7643680 (=> (not res!3061561) (not e!4543260))))

(assert (=> b!7643680 (= res!3061561 (not lt!2660730))))

(assert (= (and d!2325372 c!1407935) b!7643672))

(assert (= (and d!2325372 (not c!1407935)) b!7643669))

(assert (= (and d!2325372 c!1407934) b!7643678))

(assert (= (and d!2325372 (not c!1407934)) b!7643670))

(assert (= (and b!7643670 c!1407936) b!7643675))

(assert (= (and b!7643670 (not c!1407936)) b!7643676))

(assert (= (and b!7643676 (not res!3061562)) b!7643667))

(assert (= (and b!7643667 res!3061560) b!7643671))

(assert (= (and b!7643671 res!3061565) b!7643679))

(assert (= (and b!7643679 res!3061563) b!7643674))

(assert (= (and b!7643667 (not res!3061566)) b!7643680))

(assert (= (and b!7643680 res!3061561) b!7643668))

(assert (= (and b!7643668 (not res!3061567)) b!7643673))

(assert (= (and b!7643673 (not res!3061564)) b!7643677))

(assert (= (or b!7643678 b!7643668 b!7643671) bm!701680))

(assert (=> b!7643669 m!8163780))

(assert (=> b!7643669 m!8163780))

(declare-fun m!8163794 () Bool)

(assert (=> b!7643669 m!8163794))

(assert (=> b!7643669 m!8163784))

(assert (=> b!7643669 m!8163794))

(assert (=> b!7643669 m!8163784))

(declare-fun m!8163796 () Bool)

(assert (=> b!7643669 m!8163796))

(declare-fun m!8163798 () Bool)

(assert (=> b!7643672 m!8163798))

(assert (=> b!7643673 m!8163784))

(assert (=> b!7643673 m!8163784))

(assert (=> b!7643673 m!8163790))

(assert (=> d!2325372 m!8163792))

(assert (=> d!2325372 m!8163750))

(assert (=> bm!701680 m!8163792))

(assert (=> b!7643677 m!8163780))

(assert (=> b!7643674 m!8163780))

(assert (=> b!7643679 m!8163784))

(assert (=> b!7643679 m!8163784))

(assert (=> b!7643679 m!8163790))

(assert (=> b!7643521 d!2325372))

(declare-fun b!7643694 () Bool)

(declare-fun e!4543265 () Bool)

(declare-fun tp!2231204 () Bool)

(declare-fun tp!2231201 () Bool)

(assert (=> b!7643694 (= e!4543265 (and tp!2231204 tp!2231201))))

(declare-fun b!7643693 () Bool)

(declare-fun tp!2231203 () Bool)

(assert (=> b!7643693 (= e!4543265 tp!2231203)))

(declare-fun b!7643691 () Bool)

(assert (=> b!7643691 (= e!4543265 tp_is_empty!51259)))

(assert (=> b!7643512 (= tp!2231170 e!4543265)))

(declare-fun b!7643692 () Bool)

(declare-fun tp!2231200 () Bool)

(declare-fun tp!2231202 () Bool)

(assert (=> b!7643692 (= e!4543265 (and tp!2231200 tp!2231202))))

(assert (= (and b!7643512 (is-ElementMatch!20452 (regOne!41417 r!14126))) b!7643691))

(assert (= (and b!7643512 (is-Concat!29297 (regOne!41417 r!14126))) b!7643692))

(assert (= (and b!7643512 (is-Star!20452 (regOne!41417 r!14126))) b!7643693))

(assert (= (and b!7643512 (is-Union!20452 (regOne!41417 r!14126))) b!7643694))

(declare-fun b!7643698 () Bool)

(declare-fun e!4543266 () Bool)

(declare-fun tp!2231209 () Bool)

(declare-fun tp!2231206 () Bool)

(assert (=> b!7643698 (= e!4543266 (and tp!2231209 tp!2231206))))

(declare-fun b!7643697 () Bool)

(declare-fun tp!2231208 () Bool)

(assert (=> b!7643697 (= e!4543266 tp!2231208)))

(declare-fun b!7643695 () Bool)

(assert (=> b!7643695 (= e!4543266 tp_is_empty!51259)))

(assert (=> b!7643512 (= tp!2231168 e!4543266)))

(declare-fun b!7643696 () Bool)

(declare-fun tp!2231205 () Bool)

(declare-fun tp!2231207 () Bool)

(assert (=> b!7643696 (= e!4543266 (and tp!2231205 tp!2231207))))

(assert (= (and b!7643512 (is-ElementMatch!20452 (regTwo!41417 r!14126))) b!7643695))

(assert (= (and b!7643512 (is-Concat!29297 (regTwo!41417 r!14126))) b!7643696))

(assert (= (and b!7643512 (is-Star!20452 (regTwo!41417 r!14126))) b!7643697))

(assert (= (and b!7643512 (is-Union!20452 (regTwo!41417 r!14126))) b!7643698))

(declare-fun b!7643703 () Bool)

(declare-fun e!4543269 () Bool)

(declare-fun tp!2231212 () Bool)

(assert (=> b!7643703 (= e!4543269 (and tp_is_empty!51259 tp!2231212))))

(assert (=> b!7643513 (= tp!2231167 e!4543269)))

(assert (= (and b!7643513 (is-Cons!73179 (t!388038 s!9605))) b!7643703))

(declare-fun b!7643707 () Bool)

(declare-fun e!4543270 () Bool)

(declare-fun tp!2231217 () Bool)

(declare-fun tp!2231214 () Bool)

(assert (=> b!7643707 (= e!4543270 (and tp!2231217 tp!2231214))))

(declare-fun b!7643706 () Bool)

(declare-fun tp!2231216 () Bool)

(assert (=> b!7643706 (= e!4543270 tp!2231216)))

(declare-fun b!7643704 () Bool)

(assert (=> b!7643704 (= e!4543270 tp_is_empty!51259)))

(assert (=> b!7643518 (= tp!2231166 e!4543270)))

(declare-fun b!7643705 () Bool)

(declare-fun tp!2231213 () Bool)

(declare-fun tp!2231215 () Bool)

(assert (=> b!7643705 (= e!4543270 (and tp!2231213 tp!2231215))))

(assert (= (and b!7643518 (is-ElementMatch!20452 (regOne!41416 r!14126))) b!7643704))

(assert (= (and b!7643518 (is-Concat!29297 (regOne!41416 r!14126))) b!7643705))

(assert (= (and b!7643518 (is-Star!20452 (regOne!41416 r!14126))) b!7643706))

(assert (= (and b!7643518 (is-Union!20452 (regOne!41416 r!14126))) b!7643707))

(declare-fun b!7643711 () Bool)

(declare-fun e!4543271 () Bool)

(declare-fun tp!2231222 () Bool)

(declare-fun tp!2231219 () Bool)

(assert (=> b!7643711 (= e!4543271 (and tp!2231222 tp!2231219))))

(declare-fun b!7643710 () Bool)

(declare-fun tp!2231221 () Bool)

(assert (=> b!7643710 (= e!4543271 tp!2231221)))

(declare-fun b!7643708 () Bool)

(assert (=> b!7643708 (= e!4543271 tp_is_empty!51259)))

(assert (=> b!7643518 (= tp!2231171 e!4543271)))

(declare-fun b!7643709 () Bool)

(declare-fun tp!2231218 () Bool)

(declare-fun tp!2231220 () Bool)

(assert (=> b!7643709 (= e!4543271 (and tp!2231218 tp!2231220))))

(assert (= (and b!7643518 (is-ElementMatch!20452 (regTwo!41416 r!14126))) b!7643708))

(assert (= (and b!7643518 (is-Concat!29297 (regTwo!41416 r!14126))) b!7643709))

(assert (= (and b!7643518 (is-Star!20452 (regTwo!41416 r!14126))) b!7643710))

(assert (= (and b!7643518 (is-Union!20452 (regTwo!41416 r!14126))) b!7643711))

(declare-fun b!7643715 () Bool)

(declare-fun e!4543272 () Bool)

(declare-fun tp!2231227 () Bool)

(declare-fun tp!2231224 () Bool)

(assert (=> b!7643715 (= e!4543272 (and tp!2231227 tp!2231224))))

(declare-fun b!7643714 () Bool)

(declare-fun tp!2231226 () Bool)

(assert (=> b!7643714 (= e!4543272 tp!2231226)))

(declare-fun b!7643712 () Bool)

(assert (=> b!7643712 (= e!4543272 tp_is_empty!51259)))

(assert (=> b!7643520 (= tp!2231169 e!4543272)))

(declare-fun b!7643713 () Bool)

(declare-fun tp!2231223 () Bool)

(declare-fun tp!2231225 () Bool)

(assert (=> b!7643713 (= e!4543272 (and tp!2231223 tp!2231225))))

(assert (= (and b!7643520 (is-ElementMatch!20452 (reg!20781 r!14126))) b!7643712))

(assert (= (and b!7643520 (is-Concat!29297 (reg!20781 r!14126))) b!7643713))

(assert (= (and b!7643520 (is-Star!20452 (reg!20781 r!14126))) b!7643714))

(assert (= (and b!7643520 (is-Union!20452 (reg!20781 r!14126))) b!7643715))

(push 1)

(assert (not b!7643672))

(assert (not b!7643705))

(assert (not b!7643673))

(assert (not bm!701671))

(assert (not b!7643660))

(assert (not b!7643696))

(assert (not b!7643715))

(assert tp_is_empty!51259)

(assert (not b!7643665))

(assert (not bm!701676))

(assert (not bm!701673))

(assert (not b!7643693))

(assert (not bm!701680))

(assert (not b!7643674))

(assert (not b!7643658))

(assert (not b!7643697))

(assert (not bm!701670))

(assert (not b!7643669))

(assert (not b!7643677))

(assert (not b!7643582))

(assert (not b!7643711))

(assert (not b!7643659))

(assert (not b!7643679))

(assert (not b!7643706))

(assert (not d!2325372))

(assert (not b!7643573))

(assert (not b!7643698))

(assert (not b!7643709))

(assert (not b!7643694))

(assert (not bm!701679))

(assert (not bm!701674))

(assert (not b!7643710))

(assert (not b!7643703))

(assert (not bm!701668))

(assert (not b!7643663))

(assert (not b!7643707))

(assert (not d!2325370))

(assert (not b!7643692))

(assert (not b!7643655))

(assert (not b!7643591))

(assert (not b!7643713))

(assert (not b!7643714))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

