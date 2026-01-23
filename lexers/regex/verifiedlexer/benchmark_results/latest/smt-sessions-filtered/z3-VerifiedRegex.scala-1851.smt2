; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92114 () Bool)

(assert start!92114)

(declare-fun b!1083442 () Bool)

(declare-fun e!685076 () Bool)

(declare-fun tp!323842 () Bool)

(declare-fun tp!323844 () Bool)

(assert (=> b!1083442 (= e!685076 (and tp!323842 tp!323844))))

(declare-fun b!1083443 () Bool)

(declare-fun e!685074 () Bool)

(declare-datatypes ((C!6492 0))(
  ( (C!6493 (val!3494 Int)) )
))
(declare-datatypes ((Regex!2961 0))(
  ( (ElementMatch!2961 (c!182914 C!6492)) (Concat!4794 (regOne!6434 Regex!2961) (regTwo!6434 Regex!2961)) (EmptyExpr!2961) (Star!2961 (reg!3290 Regex!2961)) (EmptyLang!2961) (Union!2961 (regOne!6435 Regex!2961) (regTwo!6435 Regex!2961)) )
))
(declare-fun r!15766 () Regex!2961)

(declare-datatypes ((List!10191 0))(
  ( (Nil!10175) (Cons!10175 (h!15576 C!6492) (t!101237 List!10191)) )
))
(declare-fun s!10566 () List!10191)

(declare-fun matchR!1497 (Regex!2961 List!10191) Bool)

(declare-fun removeUselessConcat!502 (Regex!2961) Regex!2961)

(assert (=> b!1083443 (= e!685074 (not (matchR!1497 (removeUselessConcat!502 r!15766) s!10566)))))

(declare-fun b!1083444 () Bool)

(declare-fun tp!323840 () Bool)

(declare-fun tp!323841 () Bool)

(assert (=> b!1083444 (= e!685076 (and tp!323840 tp!323841))))

(declare-fun b!1083445 () Bool)

(declare-fun e!685073 () Bool)

(declare-fun tp_is_empty!5565 () Bool)

(declare-fun tp!323839 () Bool)

(assert (=> b!1083445 (= e!685073 (and tp_is_empty!5565 tp!323839))))

(declare-fun res!482113 () Bool)

(declare-fun e!685075 () Bool)

(assert (=> start!92114 (=> (not res!482113) (not e!685075))))

(declare-fun validRegex!1430 (Regex!2961) Bool)

(assert (=> start!92114 (= res!482113 (validRegex!1430 r!15766))))

(assert (=> start!92114 e!685075))

(assert (=> start!92114 e!685076))

(assert (=> start!92114 e!685073))

(declare-fun b!1083446 () Bool)

(declare-fun tp!323843 () Bool)

(assert (=> b!1083446 (= e!685076 tp!323843)))

(declare-fun b!1083447 () Bool)

(assert (=> b!1083447 (= e!685075 (not e!685074))))

(declare-fun res!482112 () Bool)

(assert (=> b!1083447 (=> res!482112 e!685074)))

(declare-fun lt!362617 () Bool)

(get-info :version)

(assert (=> b!1083447 (= res!482112 (or lt!362617 (and ((_ is Concat!4794) r!15766) ((_ is EmptyExpr!2961) (regOne!6434 r!15766))) (and ((_ is Concat!4794) r!15766) ((_ is EmptyExpr!2961) (regTwo!6434 r!15766))) ((_ is Concat!4794) r!15766) ((_ is Union!2961) r!15766) ((_ is Star!2961) r!15766)))))

(declare-fun matchRSpec!760 (Regex!2961 List!10191) Bool)

(assert (=> b!1083447 (= lt!362617 (matchRSpec!760 r!15766 s!10566))))

(assert (=> b!1083447 (= lt!362617 (matchR!1497 r!15766 s!10566))))

(declare-datatypes ((Unit!15613 0))(
  ( (Unit!15614) )
))
(declare-fun lt!362616 () Unit!15613)

(declare-fun mainMatchTheorem!760 (Regex!2961 List!10191) Unit!15613)

(assert (=> b!1083447 (= lt!362616 (mainMatchTheorem!760 r!15766 s!10566))))

(declare-fun b!1083448 () Bool)

(assert (=> b!1083448 (= e!685076 tp_is_empty!5565)))

(assert (= (and start!92114 res!482113) b!1083447))

(assert (= (and b!1083447 (not res!482112)) b!1083443))

(assert (= (and start!92114 ((_ is ElementMatch!2961) r!15766)) b!1083448))

(assert (= (and start!92114 ((_ is Concat!4794) r!15766)) b!1083442))

(assert (= (and start!92114 ((_ is Star!2961) r!15766)) b!1083446))

(assert (= (and start!92114 ((_ is Union!2961) r!15766)) b!1083444))

(assert (= (and start!92114 ((_ is Cons!10175) s!10566)) b!1083445))

(declare-fun m!1233757 () Bool)

(assert (=> b!1083443 m!1233757))

(assert (=> b!1083443 m!1233757))

(declare-fun m!1233759 () Bool)

(assert (=> b!1083443 m!1233759))

(declare-fun m!1233761 () Bool)

(assert (=> start!92114 m!1233761))

(declare-fun m!1233763 () Bool)

(assert (=> b!1083447 m!1233763))

(declare-fun m!1233765 () Bool)

(assert (=> b!1083447 m!1233765))

(declare-fun m!1233767 () Bool)

(assert (=> b!1083447 m!1233767))

(check-sat (not start!92114) (not b!1083446) (not b!1083442) (not b!1083443) tp_is_empty!5565 (not b!1083445) (not b!1083447) (not b!1083444))
(check-sat)
(get-model)

(declare-fun b!1083477 () Bool)

(declare-fun e!685091 () Bool)

(declare-fun head!1996 (List!10191) C!6492)

(assert (=> b!1083477 (= e!685091 (not (= (head!1996 s!10566) (c!182914 (removeUselessConcat!502 r!15766)))))))

(declare-fun b!1083478 () Bool)

(declare-fun e!685094 () Bool)

(declare-fun derivativeStep!841 (Regex!2961 C!6492) Regex!2961)

(declare-fun tail!1558 (List!10191) List!10191)

(assert (=> b!1083478 (= e!685094 (matchR!1497 (derivativeStep!841 (removeUselessConcat!502 r!15766) (head!1996 s!10566)) (tail!1558 s!10566)))))

(declare-fun b!1083479 () Bool)

(declare-fun e!685093 () Bool)

(declare-fun e!685095 () Bool)

(assert (=> b!1083479 (= e!685093 e!685095)))

(declare-fun res!482131 () Bool)

(assert (=> b!1083479 (=> (not res!482131) (not e!685095))))

(declare-fun lt!362620 () Bool)

(assert (=> b!1083479 (= res!482131 (not lt!362620))))

(declare-fun b!1083480 () Bool)

(declare-fun res!482135 () Bool)

(declare-fun e!685097 () Bool)

(assert (=> b!1083480 (=> (not res!482135) (not e!685097))))

(declare-fun isEmpty!6611 (List!10191) Bool)

(assert (=> b!1083480 (= res!482135 (isEmpty!6611 (tail!1558 s!10566)))))

(declare-fun b!1083481 () Bool)

(declare-fun e!685096 () Bool)

(declare-fun call!80111 () Bool)

(assert (=> b!1083481 (= e!685096 (= lt!362620 call!80111))))

(declare-fun b!1083482 () Bool)

(declare-fun e!685092 () Bool)

(assert (=> b!1083482 (= e!685096 e!685092)))

(declare-fun c!182923 () Bool)

(assert (=> b!1083482 (= c!182923 ((_ is EmptyLang!2961) (removeUselessConcat!502 r!15766)))))

(declare-fun b!1083483 () Bool)

(assert (=> b!1083483 (= e!685092 (not lt!362620))))

(declare-fun b!1083484 () Bool)

(declare-fun res!482136 () Bool)

(assert (=> b!1083484 (=> res!482136 e!685093)))

(assert (=> b!1083484 (= res!482136 (not ((_ is ElementMatch!2961) (removeUselessConcat!502 r!15766))))))

(assert (=> b!1083484 (= e!685092 e!685093)))

(declare-fun b!1083485 () Bool)

(assert (=> b!1083485 (= e!685097 (= (head!1996 s!10566) (c!182914 (removeUselessConcat!502 r!15766))))))

(declare-fun b!1083486 () Bool)

(declare-fun res!482133 () Bool)

(assert (=> b!1083486 (=> res!482133 e!685091)))

(assert (=> b!1083486 (= res!482133 (not (isEmpty!6611 (tail!1558 s!10566))))))

(declare-fun bm!80106 () Bool)

(assert (=> bm!80106 (= call!80111 (isEmpty!6611 s!10566))))

(declare-fun b!1083487 () Bool)

(declare-fun res!482132 () Bool)

(assert (=> b!1083487 (=> res!482132 e!685093)))

(assert (=> b!1083487 (= res!482132 e!685097)))

(declare-fun res!482137 () Bool)

(assert (=> b!1083487 (=> (not res!482137) (not e!685097))))

(assert (=> b!1083487 (= res!482137 lt!362620)))

(declare-fun b!1083488 () Bool)

(declare-fun res!482134 () Bool)

(assert (=> b!1083488 (=> (not res!482134) (not e!685097))))

(assert (=> b!1083488 (= res!482134 (not call!80111))))

(declare-fun b!1083489 () Bool)

(declare-fun nullable!1043 (Regex!2961) Bool)

(assert (=> b!1083489 (= e!685094 (nullable!1043 (removeUselessConcat!502 r!15766)))))

(declare-fun b!1083490 () Bool)

(assert (=> b!1083490 (= e!685095 e!685091)))

(declare-fun res!482130 () Bool)

(assert (=> b!1083490 (=> res!482130 e!685091)))

(assert (=> b!1083490 (= res!482130 call!80111)))

(declare-fun d!304690 () Bool)

(assert (=> d!304690 e!685096))

(declare-fun c!182921 () Bool)

(assert (=> d!304690 (= c!182921 ((_ is EmptyExpr!2961) (removeUselessConcat!502 r!15766)))))

(assert (=> d!304690 (= lt!362620 e!685094)))

(declare-fun c!182922 () Bool)

(assert (=> d!304690 (= c!182922 (isEmpty!6611 s!10566))))

(assert (=> d!304690 (validRegex!1430 (removeUselessConcat!502 r!15766))))

(assert (=> d!304690 (= (matchR!1497 (removeUselessConcat!502 r!15766) s!10566) lt!362620)))

(assert (= (and d!304690 c!182922) b!1083489))

(assert (= (and d!304690 (not c!182922)) b!1083478))

(assert (= (and d!304690 c!182921) b!1083481))

(assert (= (and d!304690 (not c!182921)) b!1083482))

(assert (= (and b!1083482 c!182923) b!1083483))

(assert (= (and b!1083482 (not c!182923)) b!1083484))

(assert (= (and b!1083484 (not res!482136)) b!1083487))

(assert (= (and b!1083487 res!482137) b!1083488))

(assert (= (and b!1083488 res!482134) b!1083480))

(assert (= (and b!1083480 res!482135) b!1083485))

(assert (= (and b!1083487 (not res!482132)) b!1083479))

(assert (= (and b!1083479 res!482131) b!1083490))

(assert (= (and b!1083490 (not res!482130)) b!1083486))

(assert (= (and b!1083486 (not res!482133)) b!1083477))

(assert (= (or b!1083481 b!1083490 b!1083488) bm!80106))

(declare-fun m!1233769 () Bool)

(assert (=> b!1083486 m!1233769))

(assert (=> b!1083486 m!1233769))

(declare-fun m!1233771 () Bool)

(assert (=> b!1083486 m!1233771))

(assert (=> b!1083480 m!1233769))

(assert (=> b!1083480 m!1233769))

(assert (=> b!1083480 m!1233771))

(declare-fun m!1233773 () Bool)

(assert (=> b!1083485 m!1233773))

(assert (=> b!1083477 m!1233773))

(declare-fun m!1233775 () Bool)

(assert (=> bm!80106 m!1233775))

(assert (=> d!304690 m!1233775))

(assert (=> d!304690 m!1233757))

(declare-fun m!1233777 () Bool)

(assert (=> d!304690 m!1233777))

(assert (=> b!1083489 m!1233757))

(declare-fun m!1233779 () Bool)

(assert (=> b!1083489 m!1233779))

(assert (=> b!1083478 m!1233773))

(assert (=> b!1083478 m!1233757))

(assert (=> b!1083478 m!1233773))

(declare-fun m!1233781 () Bool)

(assert (=> b!1083478 m!1233781))

(assert (=> b!1083478 m!1233769))

(assert (=> b!1083478 m!1233781))

(assert (=> b!1083478 m!1233769))

(declare-fun m!1233783 () Bool)

(assert (=> b!1083478 m!1233783))

(assert (=> b!1083443 d!304690))

(declare-fun bm!80117 () Bool)

(declare-fun call!80124 () Regex!2961)

(declare-fun call!80123 () Regex!2961)

(assert (=> bm!80117 (= call!80124 call!80123)))

(declare-fun b!1083513 () Bool)

(declare-fun e!685112 () Regex!2961)

(assert (=> b!1083513 (= e!685112 call!80123)))

(declare-fun b!1083514 () Bool)

(declare-fun e!685115 () Regex!2961)

(declare-fun e!685114 () Regex!2961)

(assert (=> b!1083514 (= e!685115 e!685114)))

(declare-fun c!182937 () Bool)

(assert (=> b!1083514 (= c!182937 ((_ is Union!2961) r!15766))))

(declare-fun c!182934 () Bool)

(declare-fun bm!80118 () Bool)

(declare-fun c!182936 () Bool)

(assert (=> bm!80118 (= call!80123 (removeUselessConcat!502 (ite c!182934 (regOne!6434 r!15766) (ite c!182936 (regTwo!6434 r!15766) (regOne!6435 r!15766)))))))

(declare-fun b!1083515 () Bool)

(declare-fun e!685110 () Bool)

(declare-fun lt!362623 () Regex!2961)

(assert (=> b!1083515 (= e!685110 (= (nullable!1043 lt!362623) (nullable!1043 r!15766)))))

(declare-fun b!1083516 () Bool)

(declare-fun c!182938 () Bool)

(assert (=> b!1083516 (= c!182938 ((_ is Star!2961) r!15766))))

(declare-fun e!685113 () Regex!2961)

(assert (=> b!1083516 (= e!685114 e!685113)))

(declare-fun b!1083517 () Bool)

(declare-fun call!80126 () Regex!2961)

(assert (=> b!1083517 (= e!685114 (Union!2961 call!80124 call!80126))))

(declare-fun b!1083518 () Bool)

(assert (=> b!1083518 (= c!182936 ((_ is Concat!4794) r!15766))))

(assert (=> b!1083518 (= e!685112 e!685115)))

(declare-fun bm!80119 () Bool)

(declare-fun call!80122 () Regex!2961)

(assert (=> bm!80119 (= call!80126 call!80122)))

(declare-fun bm!80120 () Bool)

(declare-fun c!182935 () Bool)

(declare-fun call!80125 () Regex!2961)

(assert (=> bm!80120 (= call!80125 (removeUselessConcat!502 (ite c!182935 (regTwo!6434 r!15766) (ite c!182936 (regOne!6434 r!15766) (ite c!182937 (regTwo!6435 r!15766) (reg!3290 r!15766))))))))

(declare-fun bm!80121 () Bool)

(assert (=> bm!80121 (= call!80122 call!80125)))

(declare-fun b!1083520 () Bool)

(declare-fun e!685111 () Regex!2961)

(assert (=> b!1083520 (= e!685111 call!80125)))

(declare-fun b!1083521 () Bool)

(assert (=> b!1083521 (= e!685111 e!685112)))

(assert (=> b!1083521 (= c!182934 (and ((_ is Concat!4794) r!15766) ((_ is EmptyExpr!2961) (regTwo!6434 r!15766))))))

(declare-fun b!1083522 () Bool)

(assert (=> b!1083522 (= e!685113 (Star!2961 call!80126))))

(declare-fun b!1083523 () Bool)

(assert (=> b!1083523 (= e!685113 r!15766)))

(declare-fun b!1083519 () Bool)

(assert (=> b!1083519 (= e!685115 (Concat!4794 call!80122 call!80124))))

(declare-fun d!304694 () Bool)

(assert (=> d!304694 e!685110))

(declare-fun res!482140 () Bool)

(assert (=> d!304694 (=> (not res!482140) (not e!685110))))

(assert (=> d!304694 (= res!482140 (validRegex!1430 lt!362623))))

(assert (=> d!304694 (= lt!362623 e!685111)))

(assert (=> d!304694 (= c!182935 (and ((_ is Concat!4794) r!15766) ((_ is EmptyExpr!2961) (regOne!6434 r!15766))))))

(assert (=> d!304694 (validRegex!1430 r!15766)))

(assert (=> d!304694 (= (removeUselessConcat!502 r!15766) lt!362623)))

(assert (= (and d!304694 c!182935) b!1083520))

(assert (= (and d!304694 (not c!182935)) b!1083521))

(assert (= (and b!1083521 c!182934) b!1083513))

(assert (= (and b!1083521 (not c!182934)) b!1083518))

(assert (= (and b!1083518 c!182936) b!1083519))

(assert (= (and b!1083518 (not c!182936)) b!1083514))

(assert (= (and b!1083514 c!182937) b!1083517))

(assert (= (and b!1083514 (not c!182937)) b!1083516))

(assert (= (and b!1083516 c!182938) b!1083522))

(assert (= (and b!1083516 (not c!182938)) b!1083523))

(assert (= (or b!1083517 b!1083522) bm!80119))

(assert (= (or b!1083519 b!1083517) bm!80117))

(assert (= (or b!1083519 bm!80119) bm!80121))

(assert (= (or b!1083513 bm!80117) bm!80118))

(assert (= (or b!1083520 bm!80121) bm!80120))

(assert (= (and d!304694 res!482140) b!1083515))

(declare-fun m!1233785 () Bool)

(assert (=> bm!80118 m!1233785))

(declare-fun m!1233787 () Bool)

(assert (=> b!1083515 m!1233787))

(declare-fun m!1233789 () Bool)

(assert (=> b!1083515 m!1233789))

(declare-fun m!1233791 () Bool)

(assert (=> bm!80120 m!1233791))

(declare-fun m!1233793 () Bool)

(assert (=> d!304694 m!1233793))

(assert (=> d!304694 m!1233761))

(assert (=> b!1083443 d!304694))

(declare-fun bm!80128 () Bool)

(declare-fun call!80134 () Bool)

(declare-fun call!80133 () Bool)

(assert (=> bm!80128 (= call!80134 call!80133)))

(declare-fun b!1083564 () Bool)

(declare-fun res!482159 () Bool)

(declare-fun e!685148 () Bool)

(assert (=> b!1083564 (=> (not res!482159) (not e!685148))))

(declare-fun call!80135 () Bool)

(assert (=> b!1083564 (= res!482159 call!80135)))

(declare-fun e!685147 () Bool)

(assert (=> b!1083564 (= e!685147 e!685148)))

(declare-fun b!1083565 () Bool)

(declare-fun e!685144 () Bool)

(assert (=> b!1083565 (= e!685144 call!80133)))

(declare-fun bm!80129 () Bool)

(declare-fun c!182951 () Bool)

(declare-fun c!182952 () Bool)

(assert (=> bm!80129 (= call!80133 (validRegex!1430 (ite c!182952 (reg!3290 r!15766) (ite c!182951 (regTwo!6435 r!15766) (regTwo!6434 r!15766)))))))

(declare-fun b!1083566 () Bool)

(declare-fun e!685149 () Bool)

(assert (=> b!1083566 (= e!685149 call!80134)))

(declare-fun d!304696 () Bool)

(declare-fun res!482158 () Bool)

(declare-fun e!685150 () Bool)

(assert (=> d!304696 (=> res!482158 e!685150)))

(assert (=> d!304696 (= res!482158 ((_ is ElementMatch!2961) r!15766))))

(assert (=> d!304696 (= (validRegex!1430 r!15766) e!685150)))

(declare-fun b!1083567 () Bool)

(declare-fun e!685145 () Bool)

(assert (=> b!1083567 (= e!685145 e!685149)))

(declare-fun res!482157 () Bool)

(assert (=> b!1083567 (=> (not res!482157) (not e!685149))))

(assert (=> b!1083567 (= res!482157 call!80135)))

(declare-fun b!1083568 () Bool)

(declare-fun e!685146 () Bool)

(assert (=> b!1083568 (= e!685146 e!685147)))

(assert (=> b!1083568 (= c!182951 ((_ is Union!2961) r!15766))))

(declare-fun bm!80130 () Bool)

(assert (=> bm!80130 (= call!80135 (validRegex!1430 (ite c!182951 (regOne!6435 r!15766) (regOne!6434 r!15766))))))

(declare-fun b!1083569 () Bool)

(assert (=> b!1083569 (= e!685150 e!685146)))

(assert (=> b!1083569 (= c!182952 ((_ is Star!2961) r!15766))))

(declare-fun b!1083570 () Bool)

(assert (=> b!1083570 (= e!685148 call!80134)))

(declare-fun b!1083571 () Bool)

(declare-fun res!482161 () Bool)

(assert (=> b!1083571 (=> res!482161 e!685145)))

(assert (=> b!1083571 (= res!482161 (not ((_ is Concat!4794) r!15766)))))

(assert (=> b!1083571 (= e!685147 e!685145)))

(declare-fun b!1083572 () Bool)

(assert (=> b!1083572 (= e!685146 e!685144)))

(declare-fun res!482160 () Bool)

(assert (=> b!1083572 (= res!482160 (not (nullable!1043 (reg!3290 r!15766))))))

(assert (=> b!1083572 (=> (not res!482160) (not e!685144))))

(assert (= (and d!304696 (not res!482158)) b!1083569))

(assert (= (and b!1083569 c!182952) b!1083572))

(assert (= (and b!1083569 (not c!182952)) b!1083568))

(assert (= (and b!1083572 res!482160) b!1083565))

(assert (= (and b!1083568 c!182951) b!1083564))

(assert (= (and b!1083568 (not c!182951)) b!1083571))

(assert (= (and b!1083564 res!482159) b!1083570))

(assert (= (and b!1083571 (not res!482161)) b!1083567))

(assert (= (and b!1083567 res!482157) b!1083566))

(assert (= (or b!1083570 b!1083566) bm!80128))

(assert (= (or b!1083564 b!1083567) bm!80130))

(assert (= (or b!1083565 bm!80128) bm!80129))

(declare-fun m!1233795 () Bool)

(assert (=> bm!80129 m!1233795))

(declare-fun m!1233797 () Bool)

(assert (=> bm!80130 m!1233797))

(declare-fun m!1233799 () Bool)

(assert (=> b!1083572 m!1233799))

(assert (=> start!92114 d!304696))

(declare-fun b!1083605 () Bool)

(assert (=> b!1083605 true))

(assert (=> b!1083605 true))

(declare-fun bs!256418 () Bool)

(declare-fun b!1083612 () Bool)

(assert (= bs!256418 (and b!1083612 b!1083605)))

(declare-fun lambda!39390 () Int)

(declare-fun lambda!39389 () Int)

(assert (=> bs!256418 (not (= lambda!39390 lambda!39389))))

(assert (=> b!1083612 true))

(assert (=> b!1083612 true))

(declare-fun e!685172 () Bool)

(declare-fun call!80140 () Bool)

(assert (=> b!1083605 (= e!685172 call!80140)))

(declare-fun b!1083606 () Bool)

(declare-fun e!685173 () Bool)

(assert (=> b!1083606 (= e!685173 (matchRSpec!760 (regTwo!6435 r!15766) s!10566))))

(declare-fun b!1083607 () Bool)

(declare-fun c!182964 () Bool)

(assert (=> b!1083607 (= c!182964 ((_ is Union!2961) r!15766))))

(declare-fun e!685171 () Bool)

(declare-fun e!685169 () Bool)

(assert (=> b!1083607 (= e!685171 e!685169)))

(declare-fun bm!80135 () Bool)

(declare-fun call!80141 () Bool)

(assert (=> bm!80135 (= call!80141 (isEmpty!6611 s!10566))))

(declare-fun b!1083608 () Bool)

(assert (=> b!1083608 (= e!685169 e!685173)))

(declare-fun res!482178 () Bool)

(assert (=> b!1083608 (= res!482178 (matchRSpec!760 (regOne!6435 r!15766) s!10566))))

(assert (=> b!1083608 (=> res!482178 e!685173)))

(declare-fun b!1083609 () Bool)

(declare-fun res!482179 () Bool)

(assert (=> b!1083609 (=> res!482179 e!685172)))

(assert (=> b!1083609 (= res!482179 call!80141)))

(declare-fun e!685175 () Bool)

(assert (=> b!1083609 (= e!685175 e!685172)))

(declare-fun b!1083610 () Bool)

(declare-fun e!685174 () Bool)

(declare-fun e!685170 () Bool)

(assert (=> b!1083610 (= e!685174 e!685170)))

(declare-fun res!482180 () Bool)

(assert (=> b!1083610 (= res!482180 (not ((_ is EmptyLang!2961) r!15766)))))

(assert (=> b!1083610 (=> (not res!482180) (not e!685170))))

(declare-fun d!304698 () Bool)

(declare-fun c!182961 () Bool)

(assert (=> d!304698 (= c!182961 ((_ is EmptyExpr!2961) r!15766))))

(assert (=> d!304698 (= (matchRSpec!760 r!15766 s!10566) e!685174)))

(declare-fun c!182962 () Bool)

(declare-fun bm!80136 () Bool)

(declare-fun Exists!683 (Int) Bool)

(assert (=> bm!80136 (= call!80140 (Exists!683 (ite c!182962 lambda!39389 lambda!39390)))))

(declare-fun b!1083611 () Bool)

(assert (=> b!1083611 (= e!685169 e!685175)))

(assert (=> b!1083611 (= c!182962 ((_ is Star!2961) r!15766))))

(assert (=> b!1083612 (= e!685175 call!80140)))

(declare-fun b!1083613 () Bool)

(declare-fun c!182963 () Bool)

(assert (=> b!1083613 (= c!182963 ((_ is ElementMatch!2961) r!15766))))

(assert (=> b!1083613 (= e!685170 e!685171)))

(declare-fun b!1083614 () Bool)

(assert (=> b!1083614 (= e!685174 call!80141)))

(declare-fun b!1083615 () Bool)

(assert (=> b!1083615 (= e!685171 (= s!10566 (Cons!10175 (c!182914 r!15766) Nil!10175)))))

(assert (= (and d!304698 c!182961) b!1083614))

(assert (= (and d!304698 (not c!182961)) b!1083610))

(assert (= (and b!1083610 res!482180) b!1083613))

(assert (= (and b!1083613 c!182963) b!1083615))

(assert (= (and b!1083613 (not c!182963)) b!1083607))

(assert (= (and b!1083607 c!182964) b!1083608))

(assert (= (and b!1083607 (not c!182964)) b!1083611))

(assert (= (and b!1083608 (not res!482178)) b!1083606))

(assert (= (and b!1083611 c!182962) b!1083609))

(assert (= (and b!1083611 (not c!182962)) b!1083612))

(assert (= (and b!1083609 (not res!482179)) b!1083605))

(assert (= (or b!1083605 b!1083612) bm!80136))

(assert (= (or b!1083614 b!1083609) bm!80135))

(declare-fun m!1233801 () Bool)

(assert (=> b!1083606 m!1233801))

(assert (=> bm!80135 m!1233775))

(declare-fun m!1233803 () Bool)

(assert (=> b!1083608 m!1233803))

(declare-fun m!1233805 () Bool)

(assert (=> bm!80136 m!1233805))

(assert (=> b!1083447 d!304698))

(declare-fun b!1083620 () Bool)

(declare-fun e!685176 () Bool)

(assert (=> b!1083620 (= e!685176 (not (= (head!1996 s!10566) (c!182914 r!15766))))))

(declare-fun b!1083621 () Bool)

(declare-fun e!685179 () Bool)

(assert (=> b!1083621 (= e!685179 (matchR!1497 (derivativeStep!841 r!15766 (head!1996 s!10566)) (tail!1558 s!10566)))))

(declare-fun b!1083622 () Bool)

(declare-fun e!685178 () Bool)

(declare-fun e!685180 () Bool)

(assert (=> b!1083622 (= e!685178 e!685180)))

(declare-fun res!482182 () Bool)

(assert (=> b!1083622 (=> (not res!482182) (not e!685180))))

(declare-fun lt!362624 () Bool)

(assert (=> b!1083622 (= res!482182 (not lt!362624))))

(declare-fun b!1083623 () Bool)

(declare-fun res!482186 () Bool)

(declare-fun e!685182 () Bool)

(assert (=> b!1083623 (=> (not res!482186) (not e!685182))))

(assert (=> b!1083623 (= res!482186 (isEmpty!6611 (tail!1558 s!10566)))))

(declare-fun b!1083624 () Bool)

(declare-fun e!685181 () Bool)

(declare-fun call!80142 () Bool)

(assert (=> b!1083624 (= e!685181 (= lt!362624 call!80142))))

(declare-fun b!1083625 () Bool)

(declare-fun e!685177 () Bool)

(assert (=> b!1083625 (= e!685181 e!685177)))

(declare-fun c!182967 () Bool)

(assert (=> b!1083625 (= c!182967 ((_ is EmptyLang!2961) r!15766))))

(declare-fun b!1083626 () Bool)

(assert (=> b!1083626 (= e!685177 (not lt!362624))))

(declare-fun b!1083627 () Bool)

(declare-fun res!482187 () Bool)

(assert (=> b!1083627 (=> res!482187 e!685178)))

(assert (=> b!1083627 (= res!482187 (not ((_ is ElementMatch!2961) r!15766)))))

(assert (=> b!1083627 (= e!685177 e!685178)))

(declare-fun b!1083628 () Bool)

(assert (=> b!1083628 (= e!685182 (= (head!1996 s!10566) (c!182914 r!15766)))))

(declare-fun b!1083629 () Bool)

(declare-fun res!482184 () Bool)

(assert (=> b!1083629 (=> res!482184 e!685176)))

(assert (=> b!1083629 (= res!482184 (not (isEmpty!6611 (tail!1558 s!10566))))))

(declare-fun bm!80137 () Bool)

(assert (=> bm!80137 (= call!80142 (isEmpty!6611 s!10566))))

(declare-fun b!1083630 () Bool)

(declare-fun res!482183 () Bool)

(assert (=> b!1083630 (=> res!482183 e!685178)))

(assert (=> b!1083630 (= res!482183 e!685182)))

(declare-fun res!482188 () Bool)

(assert (=> b!1083630 (=> (not res!482188) (not e!685182))))

(assert (=> b!1083630 (= res!482188 lt!362624)))

(declare-fun b!1083631 () Bool)

(declare-fun res!482185 () Bool)

(assert (=> b!1083631 (=> (not res!482185) (not e!685182))))

(assert (=> b!1083631 (= res!482185 (not call!80142))))

(declare-fun b!1083632 () Bool)

(assert (=> b!1083632 (= e!685179 (nullable!1043 r!15766))))

(declare-fun b!1083633 () Bool)

(assert (=> b!1083633 (= e!685180 e!685176)))

(declare-fun res!482181 () Bool)

(assert (=> b!1083633 (=> res!482181 e!685176)))

(assert (=> b!1083633 (= res!482181 call!80142)))

(declare-fun d!304700 () Bool)

(assert (=> d!304700 e!685181))

(declare-fun c!182965 () Bool)

(assert (=> d!304700 (= c!182965 ((_ is EmptyExpr!2961) r!15766))))

(assert (=> d!304700 (= lt!362624 e!685179)))

(declare-fun c!182966 () Bool)

(assert (=> d!304700 (= c!182966 (isEmpty!6611 s!10566))))

(assert (=> d!304700 (validRegex!1430 r!15766)))

(assert (=> d!304700 (= (matchR!1497 r!15766 s!10566) lt!362624)))

(assert (= (and d!304700 c!182966) b!1083632))

(assert (= (and d!304700 (not c!182966)) b!1083621))

(assert (= (and d!304700 c!182965) b!1083624))

(assert (= (and d!304700 (not c!182965)) b!1083625))

(assert (= (and b!1083625 c!182967) b!1083626))

(assert (= (and b!1083625 (not c!182967)) b!1083627))

(assert (= (and b!1083627 (not res!482187)) b!1083630))

(assert (= (and b!1083630 res!482188) b!1083631))

(assert (= (and b!1083631 res!482185) b!1083623))

(assert (= (and b!1083623 res!482186) b!1083628))

(assert (= (and b!1083630 (not res!482183)) b!1083622))

(assert (= (and b!1083622 res!482182) b!1083633))

(assert (= (and b!1083633 (not res!482181)) b!1083629))

(assert (= (and b!1083629 (not res!482184)) b!1083620))

(assert (= (or b!1083624 b!1083633 b!1083631) bm!80137))

(assert (=> b!1083629 m!1233769))

(assert (=> b!1083629 m!1233769))

(assert (=> b!1083629 m!1233771))

(assert (=> b!1083623 m!1233769))

(assert (=> b!1083623 m!1233769))

(assert (=> b!1083623 m!1233771))

(assert (=> b!1083628 m!1233773))

(assert (=> b!1083620 m!1233773))

(assert (=> bm!80137 m!1233775))

(assert (=> d!304700 m!1233775))

(assert (=> d!304700 m!1233761))

(assert (=> b!1083632 m!1233789))

(assert (=> b!1083621 m!1233773))

(assert (=> b!1083621 m!1233773))

(declare-fun m!1233807 () Bool)

(assert (=> b!1083621 m!1233807))

(assert (=> b!1083621 m!1233769))

(assert (=> b!1083621 m!1233807))

(assert (=> b!1083621 m!1233769))

(declare-fun m!1233809 () Bool)

(assert (=> b!1083621 m!1233809))

(assert (=> b!1083447 d!304700))

(declare-fun d!304702 () Bool)

(assert (=> d!304702 (= (matchR!1497 r!15766 s!10566) (matchRSpec!760 r!15766 s!10566))))

(declare-fun lt!362627 () Unit!15613)

(declare-fun choose!6883 (Regex!2961 List!10191) Unit!15613)

(assert (=> d!304702 (= lt!362627 (choose!6883 r!15766 s!10566))))

(assert (=> d!304702 (validRegex!1430 r!15766)))

(assert (=> d!304702 (= (mainMatchTheorem!760 r!15766 s!10566) lt!362627)))

(declare-fun bs!256419 () Bool)

(assert (= bs!256419 d!304702))

(assert (=> bs!256419 m!1233765))

(assert (=> bs!256419 m!1233763))

(declare-fun m!1233811 () Bool)

(assert (=> bs!256419 m!1233811))

(assert (=> bs!256419 m!1233761))

(assert (=> b!1083447 d!304702))

(declare-fun b!1083644 () Bool)

(declare-fun e!685185 () Bool)

(assert (=> b!1083644 (= e!685185 tp_is_empty!5565)))

(declare-fun b!1083646 () Bool)

(declare-fun tp!323858 () Bool)

(assert (=> b!1083646 (= e!685185 tp!323858)))

(declare-fun b!1083645 () Bool)

(declare-fun tp!323855 () Bool)

(declare-fun tp!323856 () Bool)

(assert (=> b!1083645 (= e!685185 (and tp!323855 tp!323856))))

(assert (=> b!1083442 (= tp!323842 e!685185)))

(declare-fun b!1083647 () Bool)

(declare-fun tp!323859 () Bool)

(declare-fun tp!323857 () Bool)

(assert (=> b!1083647 (= e!685185 (and tp!323859 tp!323857))))

(assert (= (and b!1083442 ((_ is ElementMatch!2961) (regOne!6434 r!15766))) b!1083644))

(assert (= (and b!1083442 ((_ is Concat!4794) (regOne!6434 r!15766))) b!1083645))

(assert (= (and b!1083442 ((_ is Star!2961) (regOne!6434 r!15766))) b!1083646))

(assert (= (and b!1083442 ((_ is Union!2961) (regOne!6434 r!15766))) b!1083647))

(declare-fun b!1083648 () Bool)

(declare-fun e!685186 () Bool)

(assert (=> b!1083648 (= e!685186 tp_is_empty!5565)))

(declare-fun b!1083650 () Bool)

(declare-fun tp!323863 () Bool)

(assert (=> b!1083650 (= e!685186 tp!323863)))

(declare-fun b!1083649 () Bool)

(declare-fun tp!323860 () Bool)

(declare-fun tp!323861 () Bool)

(assert (=> b!1083649 (= e!685186 (and tp!323860 tp!323861))))

(assert (=> b!1083442 (= tp!323844 e!685186)))

(declare-fun b!1083651 () Bool)

(declare-fun tp!323864 () Bool)

(declare-fun tp!323862 () Bool)

(assert (=> b!1083651 (= e!685186 (and tp!323864 tp!323862))))

(assert (= (and b!1083442 ((_ is ElementMatch!2961) (regTwo!6434 r!15766))) b!1083648))

(assert (= (and b!1083442 ((_ is Concat!4794) (regTwo!6434 r!15766))) b!1083649))

(assert (= (and b!1083442 ((_ is Star!2961) (regTwo!6434 r!15766))) b!1083650))

(assert (= (and b!1083442 ((_ is Union!2961) (regTwo!6434 r!15766))) b!1083651))

(declare-fun b!1083652 () Bool)

(declare-fun e!685187 () Bool)

(assert (=> b!1083652 (= e!685187 tp_is_empty!5565)))

(declare-fun b!1083654 () Bool)

(declare-fun tp!323868 () Bool)

(assert (=> b!1083654 (= e!685187 tp!323868)))

(declare-fun b!1083653 () Bool)

(declare-fun tp!323865 () Bool)

(declare-fun tp!323866 () Bool)

(assert (=> b!1083653 (= e!685187 (and tp!323865 tp!323866))))

(assert (=> b!1083444 (= tp!323840 e!685187)))

(declare-fun b!1083655 () Bool)

(declare-fun tp!323869 () Bool)

(declare-fun tp!323867 () Bool)

(assert (=> b!1083655 (= e!685187 (and tp!323869 tp!323867))))

(assert (= (and b!1083444 ((_ is ElementMatch!2961) (regOne!6435 r!15766))) b!1083652))

(assert (= (and b!1083444 ((_ is Concat!4794) (regOne!6435 r!15766))) b!1083653))

(assert (= (and b!1083444 ((_ is Star!2961) (regOne!6435 r!15766))) b!1083654))

(assert (= (and b!1083444 ((_ is Union!2961) (regOne!6435 r!15766))) b!1083655))

(declare-fun b!1083656 () Bool)

(declare-fun e!685188 () Bool)

(assert (=> b!1083656 (= e!685188 tp_is_empty!5565)))

(declare-fun b!1083658 () Bool)

(declare-fun tp!323873 () Bool)

(assert (=> b!1083658 (= e!685188 tp!323873)))

(declare-fun b!1083657 () Bool)

(declare-fun tp!323870 () Bool)

(declare-fun tp!323871 () Bool)

(assert (=> b!1083657 (= e!685188 (and tp!323870 tp!323871))))

(assert (=> b!1083444 (= tp!323841 e!685188)))

(declare-fun b!1083659 () Bool)

(declare-fun tp!323874 () Bool)

(declare-fun tp!323872 () Bool)

(assert (=> b!1083659 (= e!685188 (and tp!323874 tp!323872))))

(assert (= (and b!1083444 ((_ is ElementMatch!2961) (regTwo!6435 r!15766))) b!1083656))

(assert (= (and b!1083444 ((_ is Concat!4794) (regTwo!6435 r!15766))) b!1083657))

(assert (= (and b!1083444 ((_ is Star!2961) (regTwo!6435 r!15766))) b!1083658))

(assert (= (and b!1083444 ((_ is Union!2961) (regTwo!6435 r!15766))) b!1083659))

(declare-fun b!1083664 () Bool)

(declare-fun e!685191 () Bool)

(declare-fun tp!323877 () Bool)

(assert (=> b!1083664 (= e!685191 (and tp_is_empty!5565 tp!323877))))

(assert (=> b!1083445 (= tp!323839 e!685191)))

(assert (= (and b!1083445 ((_ is Cons!10175) (t!101237 s!10566))) b!1083664))

(declare-fun b!1083665 () Bool)

(declare-fun e!685192 () Bool)

(assert (=> b!1083665 (= e!685192 tp_is_empty!5565)))

(declare-fun b!1083667 () Bool)

(declare-fun tp!323881 () Bool)

(assert (=> b!1083667 (= e!685192 tp!323881)))

(declare-fun b!1083666 () Bool)

(declare-fun tp!323878 () Bool)

(declare-fun tp!323879 () Bool)

(assert (=> b!1083666 (= e!685192 (and tp!323878 tp!323879))))

(assert (=> b!1083446 (= tp!323843 e!685192)))

(declare-fun b!1083668 () Bool)

(declare-fun tp!323882 () Bool)

(declare-fun tp!323880 () Bool)

(assert (=> b!1083668 (= e!685192 (and tp!323882 tp!323880))))

(assert (= (and b!1083446 ((_ is ElementMatch!2961) (reg!3290 r!15766))) b!1083665))

(assert (= (and b!1083446 ((_ is Concat!4794) (reg!3290 r!15766))) b!1083666))

(assert (= (and b!1083446 ((_ is Star!2961) (reg!3290 r!15766))) b!1083667))

(assert (= (and b!1083446 ((_ is Union!2961) (reg!3290 r!15766))) b!1083668))

(check-sat (not b!1083647) (not b!1083620) (not b!1083666) (not d!304700) (not b!1083659) (not d!304694) (not d!304690) (not b!1083655) (not b!1083629) (not bm!80130) (not b!1083489) (not bm!80106) (not b!1083668) (not bm!80135) (not b!1083608) (not bm!80118) (not b!1083515) (not d!304702) (not b!1083632) (not b!1083654) (not bm!80129) (not b!1083664) (not b!1083623) (not b!1083645) (not bm!80120) (not b!1083628) (not b!1083646) (not b!1083658) (not b!1083650) (not b!1083486) (not b!1083606) (not bm!80137) (not b!1083478) (not b!1083651) (not b!1083653) (not b!1083477) (not b!1083480) (not b!1083649) (not b!1083621) (not b!1083572) (not bm!80136) (not b!1083485) (not b!1083657) (not b!1083667) tp_is_empty!5565)
(check-sat)
