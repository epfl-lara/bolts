; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!737540 () Bool)

(assert start!737540)

(declare-fun b!7719627 () Bool)

(declare-fun e!4579060 () Bool)

(declare-datatypes ((C!41420 0))(
  ( (C!41421 (val!31150 Int)) )
))
(declare-datatypes ((Regex!20547 0))(
  ( (ElementMatch!20547 (c!1422914 C!41420)) (Concat!29392 (regOne!41606 Regex!20547) (regTwo!41606 Regex!20547)) (EmptyExpr!20547) (Star!20547 (reg!20876 Regex!20547)) (EmptyLang!20547) (Union!20547 (regOne!41607 Regex!20547) (regTwo!41607 Regex!20547)) )
))
(declare-fun r!14126 () Regex!20547)

(declare-fun validRegex!10965 (Regex!20547) Bool)

(assert (=> b!7719627 (= e!4579060 (not (validRegex!10965 (regTwo!41606 r!14126))))))

(declare-fun b!7719628 () Bool)

(declare-fun res!3080366 () Bool)

(assert (=> b!7719628 (=> (not res!3080366) (not e!4579060))))

(assert (=> b!7719628 (= res!3080366 (validRegex!10965 (regOne!41606 r!14126)))))

(declare-fun b!7719629 () Bool)

(declare-fun res!3080365 () Bool)

(assert (=> b!7719629 (=> (not res!3080365) (not e!4579060))))

(get-info :version)

(assert (=> b!7719629 (= res!3080365 (and (not ((_ is EmptyExpr!20547) r!14126)) (not ((_ is EmptyLang!20547) r!14126)) (not ((_ is ElementMatch!20547) r!14126)) (not ((_ is Union!20547) r!14126)) (not ((_ is Star!20547) r!14126))))))

(declare-fun b!7719630 () Bool)

(declare-fun e!4579061 () Bool)

(declare-fun tp!2264726 () Bool)

(assert (=> b!7719630 (= e!4579061 tp!2264726)))

(declare-fun res!3080364 () Bool)

(assert (=> start!737540 (=> (not res!3080364) (not e!4579060))))

(assert (=> start!737540 (= res!3080364 (validRegex!10965 r!14126))))

(assert (=> start!737540 e!4579060))

(assert (=> start!737540 e!4579061))

(declare-fun b!7719631 () Bool)

(declare-fun tp_is_empty!51449 () Bool)

(assert (=> b!7719631 (= e!4579061 tp_is_empty!51449)))

(declare-fun b!7719632 () Bool)

(declare-fun tp!2264724 () Bool)

(declare-fun tp!2264725 () Bool)

(assert (=> b!7719632 (= e!4579061 (and tp!2264724 tp!2264725))))

(declare-fun b!7719633 () Bool)

(declare-fun tp!2264727 () Bool)

(declare-fun tp!2264723 () Bool)

(assert (=> b!7719633 (= e!4579061 (and tp!2264727 tp!2264723))))

(assert (= (and start!737540 res!3080364) b!7719629))

(assert (= (and b!7719629 res!3080365) b!7719628))

(assert (= (and b!7719628 res!3080366) b!7719627))

(assert (= (and start!737540 ((_ is ElementMatch!20547) r!14126)) b!7719631))

(assert (= (and start!737540 ((_ is Concat!29392) r!14126)) b!7719632))

(assert (= (and start!737540 ((_ is Star!20547) r!14126)) b!7719630))

(assert (= (and start!737540 ((_ is Union!20547) r!14126)) b!7719633))

(declare-fun m!8199528 () Bool)

(assert (=> b!7719627 m!8199528))

(declare-fun m!8199530 () Bool)

(assert (=> b!7719628 m!8199530))

(declare-fun m!8199532 () Bool)

(assert (=> start!737540 m!8199532))

(check-sat (not b!7719632) (not b!7719630) tp_is_empty!51449 (not b!7719633) (not start!737540) (not b!7719627) (not b!7719628))
(check-sat)
(get-model)

(declare-fun b!7719670 () Bool)

(declare-fun res!3080389 () Bool)

(declare-fun e!4579095 () Bool)

(assert (=> b!7719670 (=> (not res!3080389) (not e!4579095))))

(declare-fun call!713476 () Bool)

(assert (=> b!7719670 (= res!3080389 call!713476)))

(declare-fun e!4579093 () Bool)

(assert (=> b!7719670 (= e!4579093 e!4579095)))

(declare-fun b!7719671 () Bool)

(declare-fun e!4579090 () Bool)

(declare-fun call!713477 () Bool)

(assert (=> b!7719671 (= e!4579090 call!713477)))

(declare-fun b!7719672 () Bool)

(declare-fun e!4579096 () Bool)

(assert (=> b!7719672 (= e!4579096 e!4579093)))

(declare-fun c!1422923 () Bool)

(assert (=> b!7719672 (= c!1422923 ((_ is Union!20547) (regTwo!41606 r!14126)))))

(declare-fun b!7719673 () Bool)

(declare-fun e!4579094 () Bool)

(assert (=> b!7719673 (= e!4579094 e!4579096)))

(declare-fun c!1422924 () Bool)

(assert (=> b!7719673 (= c!1422924 ((_ is Star!20547) (regTwo!41606 r!14126)))))

(declare-fun bm!713470 () Bool)

(declare-fun call!713475 () Bool)

(assert (=> bm!713470 (= call!713475 (validRegex!10965 (ite c!1422923 (regTwo!41607 (regTwo!41606 r!14126)) (regTwo!41606 (regTwo!41606 r!14126)))))))

(declare-fun d!2337497 () Bool)

(declare-fun res!3080387 () Bool)

(assert (=> d!2337497 (=> res!3080387 e!4579094)))

(assert (=> d!2337497 (= res!3080387 ((_ is ElementMatch!20547) (regTwo!41606 r!14126)))))

(assert (=> d!2337497 (= (validRegex!10965 (regTwo!41606 r!14126)) e!4579094)))

(declare-fun b!7719674 () Bool)

(assert (=> b!7719674 (= e!4579095 call!713475)))

(declare-fun bm!713471 () Bool)

(assert (=> bm!713471 (= call!713476 call!713477)))

(declare-fun bm!713472 () Bool)

(assert (=> bm!713472 (= call!713477 (validRegex!10965 (ite c!1422924 (reg!20876 (regTwo!41606 r!14126)) (ite c!1422923 (regOne!41607 (regTwo!41606 r!14126)) (regOne!41606 (regTwo!41606 r!14126))))))))

(declare-fun b!7719675 () Bool)

(declare-fun res!3080388 () Bool)

(declare-fun e!4579091 () Bool)

(assert (=> b!7719675 (=> res!3080388 e!4579091)))

(assert (=> b!7719675 (= res!3080388 (not ((_ is Concat!29392) (regTwo!41606 r!14126))))))

(assert (=> b!7719675 (= e!4579093 e!4579091)))

(declare-fun b!7719676 () Bool)

(assert (=> b!7719676 (= e!4579096 e!4579090)))

(declare-fun res!3080391 () Bool)

(declare-fun nullable!9023 (Regex!20547) Bool)

(assert (=> b!7719676 (= res!3080391 (not (nullable!9023 (reg!20876 (regTwo!41606 r!14126)))))))

(assert (=> b!7719676 (=> (not res!3080391) (not e!4579090))))

(declare-fun b!7719677 () Bool)

(declare-fun e!4579092 () Bool)

(assert (=> b!7719677 (= e!4579091 e!4579092)))

(declare-fun res!3080390 () Bool)

(assert (=> b!7719677 (=> (not res!3080390) (not e!4579092))))

(assert (=> b!7719677 (= res!3080390 call!713476)))

(declare-fun b!7719678 () Bool)

(assert (=> b!7719678 (= e!4579092 call!713475)))

(assert (= (and d!2337497 (not res!3080387)) b!7719673))

(assert (= (and b!7719673 c!1422924) b!7719676))

(assert (= (and b!7719673 (not c!1422924)) b!7719672))

(assert (= (and b!7719676 res!3080391) b!7719671))

(assert (= (and b!7719672 c!1422923) b!7719670))

(assert (= (and b!7719672 (not c!1422923)) b!7719675))

(assert (= (and b!7719670 res!3080389) b!7719674))

(assert (= (and b!7719675 (not res!3080388)) b!7719677))

(assert (= (and b!7719677 res!3080390) b!7719678))

(assert (= (or b!7719670 b!7719677) bm!713471))

(assert (= (or b!7719674 b!7719678) bm!713470))

(assert (= (or b!7719671 bm!713471) bm!713472))

(declare-fun m!8199534 () Bool)

(assert (=> bm!713470 m!8199534))

(declare-fun m!8199536 () Bool)

(assert (=> bm!713472 m!8199536))

(declare-fun m!8199538 () Bool)

(assert (=> b!7719676 m!8199538))

(assert (=> b!7719627 d!2337497))

(declare-fun b!7719688 () Bool)

(declare-fun res!3080399 () Bool)

(declare-fun e!4579109 () Bool)

(assert (=> b!7719688 (=> (not res!3080399) (not e!4579109))))

(declare-fun call!713482 () Bool)

(assert (=> b!7719688 (= res!3080399 call!713482)))

(declare-fun e!4579107 () Bool)

(assert (=> b!7719688 (= e!4579107 e!4579109)))

(declare-fun b!7719689 () Bool)

(declare-fun e!4579104 () Bool)

(declare-fun call!713483 () Bool)

(assert (=> b!7719689 (= e!4579104 call!713483)))

(declare-fun b!7719690 () Bool)

(declare-fun e!4579110 () Bool)

(assert (=> b!7719690 (= e!4579110 e!4579107)))

(declare-fun c!1422927 () Bool)

(assert (=> b!7719690 (= c!1422927 ((_ is Union!20547) r!14126))))

(declare-fun b!7719691 () Bool)

(declare-fun e!4579108 () Bool)

(assert (=> b!7719691 (= e!4579108 e!4579110)))

(declare-fun c!1422928 () Bool)

(assert (=> b!7719691 (= c!1422928 ((_ is Star!20547) r!14126))))

(declare-fun bm!713476 () Bool)

(declare-fun call!713481 () Bool)

(assert (=> bm!713476 (= call!713481 (validRegex!10965 (ite c!1422927 (regTwo!41607 r!14126) (regTwo!41606 r!14126))))))

(declare-fun d!2337501 () Bool)

(declare-fun res!3080397 () Bool)

(assert (=> d!2337501 (=> res!3080397 e!4579108)))

(assert (=> d!2337501 (= res!3080397 ((_ is ElementMatch!20547) r!14126))))

(assert (=> d!2337501 (= (validRegex!10965 r!14126) e!4579108)))

(declare-fun b!7719692 () Bool)

(assert (=> b!7719692 (= e!4579109 call!713481)))

(declare-fun bm!713477 () Bool)

(assert (=> bm!713477 (= call!713482 call!713483)))

(declare-fun bm!713478 () Bool)

(assert (=> bm!713478 (= call!713483 (validRegex!10965 (ite c!1422928 (reg!20876 r!14126) (ite c!1422927 (regOne!41607 r!14126) (regOne!41606 r!14126)))))))

(declare-fun b!7719693 () Bool)

(declare-fun res!3080398 () Bool)

(declare-fun e!4579105 () Bool)

(assert (=> b!7719693 (=> res!3080398 e!4579105)))

(assert (=> b!7719693 (= res!3080398 (not ((_ is Concat!29392) r!14126)))))

(assert (=> b!7719693 (= e!4579107 e!4579105)))

(declare-fun b!7719694 () Bool)

(assert (=> b!7719694 (= e!4579110 e!4579104)))

(declare-fun res!3080401 () Bool)

(assert (=> b!7719694 (= res!3080401 (not (nullable!9023 (reg!20876 r!14126))))))

(assert (=> b!7719694 (=> (not res!3080401) (not e!4579104))))

(declare-fun b!7719695 () Bool)

(declare-fun e!4579106 () Bool)

(assert (=> b!7719695 (= e!4579105 e!4579106)))

(declare-fun res!3080400 () Bool)

(assert (=> b!7719695 (=> (not res!3080400) (not e!4579106))))

(assert (=> b!7719695 (= res!3080400 call!713482)))

(declare-fun b!7719696 () Bool)

(assert (=> b!7719696 (= e!4579106 call!713481)))

(assert (= (and d!2337501 (not res!3080397)) b!7719691))

(assert (= (and b!7719691 c!1422928) b!7719694))

(assert (= (and b!7719691 (not c!1422928)) b!7719690))

(assert (= (and b!7719694 res!3080401) b!7719689))

(assert (= (and b!7719690 c!1422927) b!7719688))

(assert (= (and b!7719690 (not c!1422927)) b!7719693))

(assert (= (and b!7719688 res!3080399) b!7719692))

(assert (= (and b!7719693 (not res!3080398)) b!7719695))

(assert (= (and b!7719695 res!3080400) b!7719696))

(assert (= (or b!7719688 b!7719695) bm!713477))

(assert (= (or b!7719692 b!7719696) bm!713476))

(assert (= (or b!7719689 bm!713477) bm!713478))

(declare-fun m!8199542 () Bool)

(assert (=> bm!713476 m!8199542))

(declare-fun m!8199546 () Bool)

(assert (=> bm!713478 m!8199546))

(declare-fun m!8199550 () Bool)

(assert (=> b!7719694 m!8199550))

(assert (=> start!737540 d!2337501))

(declare-fun b!7719703 () Bool)

(declare-fun res!3080408 () Bool)

(declare-fun e!4579123 () Bool)

(assert (=> b!7719703 (=> (not res!3080408) (not e!4579123))))

(declare-fun call!713488 () Bool)

(assert (=> b!7719703 (= res!3080408 call!713488)))

(declare-fun e!4579120 () Bool)

(assert (=> b!7719703 (= e!4579120 e!4579123)))

(declare-fun b!7719705 () Bool)

(declare-fun e!4579117 () Bool)

(declare-fun call!713489 () Bool)

(assert (=> b!7719705 (= e!4579117 call!713489)))

(declare-fun b!7719707 () Bool)

(declare-fun e!4579124 () Bool)

(assert (=> b!7719707 (= e!4579124 e!4579120)))

(declare-fun c!1422931 () Bool)

(assert (=> b!7719707 (= c!1422931 ((_ is Union!20547) (regOne!41606 r!14126)))))

(declare-fun b!7719709 () Bool)

(declare-fun e!4579122 () Bool)

(assert (=> b!7719709 (= e!4579122 e!4579124)))

(declare-fun c!1422932 () Bool)

(assert (=> b!7719709 (= c!1422932 ((_ is Star!20547) (regOne!41606 r!14126)))))

(declare-fun bm!713482 () Bool)

(declare-fun call!713485 () Bool)

(assert (=> bm!713482 (= call!713485 (validRegex!10965 (ite c!1422931 (regTwo!41607 (regOne!41606 r!14126)) (regTwo!41606 (regOne!41606 r!14126)))))))

(declare-fun d!2337505 () Bool)

(declare-fun res!3080403 () Bool)

(assert (=> d!2337505 (=> res!3080403 e!4579122)))

(assert (=> d!2337505 (= res!3080403 ((_ is ElementMatch!20547) (regOne!41606 r!14126)))))

(assert (=> d!2337505 (= (validRegex!10965 (regOne!41606 r!14126)) e!4579122)))

(declare-fun b!7719710 () Bool)

(assert (=> b!7719710 (= e!4579123 call!713485)))

(declare-fun bm!713483 () Bool)

(assert (=> bm!713483 (= call!713488 call!713489)))

(declare-fun bm!713484 () Bool)

(assert (=> bm!713484 (= call!713489 (validRegex!10965 (ite c!1422932 (reg!20876 (regOne!41606 r!14126)) (ite c!1422931 (regOne!41607 (regOne!41606 r!14126)) (regOne!41606 (regOne!41606 r!14126))))))))

(declare-fun b!7719711 () Bool)

(declare-fun res!3080407 () Bool)

(declare-fun e!4579118 () Bool)

(assert (=> b!7719711 (=> res!3080407 e!4579118)))

(assert (=> b!7719711 (= res!3080407 (not ((_ is Concat!29392) (regOne!41606 r!14126))))))

(assert (=> b!7719711 (= e!4579120 e!4579118)))

(declare-fun b!7719712 () Bool)

(assert (=> b!7719712 (= e!4579124 e!4579117)))

(declare-fun res!3080411 () Bool)

(assert (=> b!7719712 (= res!3080411 (not (nullable!9023 (reg!20876 (regOne!41606 r!14126)))))))

(assert (=> b!7719712 (=> (not res!3080411) (not e!4579117))))

(declare-fun b!7719713 () Bool)

(declare-fun e!4579119 () Bool)

(assert (=> b!7719713 (= e!4579118 e!4579119)))

(declare-fun res!3080410 () Bool)

(assert (=> b!7719713 (=> (not res!3080410) (not e!4579119))))

(assert (=> b!7719713 (= res!3080410 call!713488)))

(declare-fun b!7719714 () Bool)

(assert (=> b!7719714 (= e!4579119 call!713485)))

(assert (= (and d!2337505 (not res!3080403)) b!7719709))

(assert (= (and b!7719709 c!1422932) b!7719712))

(assert (= (and b!7719709 (not c!1422932)) b!7719707))

(assert (= (and b!7719712 res!3080411) b!7719705))

(assert (= (and b!7719707 c!1422931) b!7719703))

(assert (= (and b!7719707 (not c!1422931)) b!7719711))

(assert (= (and b!7719703 res!3080408) b!7719710))

(assert (= (and b!7719711 (not res!3080407)) b!7719713))

(assert (= (and b!7719713 res!3080410) b!7719714))

(assert (= (or b!7719703 b!7719713) bm!713483))

(assert (= (or b!7719710 b!7719714) bm!713482))

(assert (= (or b!7719705 bm!713483) bm!713484))

(declare-fun m!8199552 () Bool)

(assert (=> bm!713482 m!8199552))

(declare-fun m!8199556 () Bool)

(assert (=> bm!713484 m!8199556))

(declare-fun m!8199560 () Bool)

(assert (=> b!7719712 m!8199560))

(assert (=> b!7719628 d!2337505))

(declare-fun b!7719743 () Bool)

(declare-fun e!4579136 () Bool)

(declare-fun tp!2264748 () Bool)

(declare-fun tp!2264746 () Bool)

(assert (=> b!7719743 (= e!4579136 (and tp!2264748 tp!2264746))))

(declare-fun b!7719744 () Bool)

(declare-fun tp!2264745 () Bool)

(assert (=> b!7719744 (= e!4579136 tp!2264745)))

(declare-fun b!7719742 () Bool)

(assert (=> b!7719742 (= e!4579136 tp_is_empty!51449)))

(assert (=> b!7719633 (= tp!2264727 e!4579136)))

(declare-fun b!7719745 () Bool)

(declare-fun tp!2264744 () Bool)

(declare-fun tp!2264747 () Bool)

(assert (=> b!7719745 (= e!4579136 (and tp!2264744 tp!2264747))))

(assert (= (and b!7719633 ((_ is ElementMatch!20547) (regOne!41607 r!14126))) b!7719742))

(assert (= (and b!7719633 ((_ is Concat!29392) (regOne!41607 r!14126))) b!7719743))

(assert (= (and b!7719633 ((_ is Star!20547) (regOne!41607 r!14126))) b!7719744))

(assert (= (and b!7719633 ((_ is Union!20547) (regOne!41607 r!14126))) b!7719745))

(declare-fun b!7719749 () Bool)

(declare-fun e!4579137 () Bool)

(declare-fun tp!2264757 () Bool)

(declare-fun tp!2264755 () Bool)

(assert (=> b!7719749 (= e!4579137 (and tp!2264757 tp!2264755))))

(declare-fun b!7719750 () Bool)

(declare-fun tp!2264754 () Bool)

(assert (=> b!7719750 (= e!4579137 tp!2264754)))

(declare-fun b!7719748 () Bool)

(assert (=> b!7719748 (= e!4579137 tp_is_empty!51449)))

(assert (=> b!7719633 (= tp!2264723 e!4579137)))

(declare-fun b!7719751 () Bool)

(declare-fun tp!2264753 () Bool)

(declare-fun tp!2264756 () Bool)

(assert (=> b!7719751 (= e!4579137 (and tp!2264753 tp!2264756))))

(assert (= (and b!7719633 ((_ is ElementMatch!20547) (regTwo!41607 r!14126))) b!7719748))

(assert (= (and b!7719633 ((_ is Concat!29392) (regTwo!41607 r!14126))) b!7719749))

(assert (= (and b!7719633 ((_ is Star!20547) (regTwo!41607 r!14126))) b!7719750))

(assert (= (and b!7719633 ((_ is Union!20547) (regTwo!41607 r!14126))) b!7719751))

(declare-fun b!7719753 () Bool)

(declare-fun e!4579138 () Bool)

(declare-fun tp!2264762 () Bool)

(declare-fun tp!2264760 () Bool)

(assert (=> b!7719753 (= e!4579138 (and tp!2264762 tp!2264760))))

(declare-fun b!7719754 () Bool)

(declare-fun tp!2264759 () Bool)

(assert (=> b!7719754 (= e!4579138 tp!2264759)))

(declare-fun b!7719752 () Bool)

(assert (=> b!7719752 (= e!4579138 tp_is_empty!51449)))

(assert (=> b!7719632 (= tp!2264724 e!4579138)))

(declare-fun b!7719755 () Bool)

(declare-fun tp!2264758 () Bool)

(declare-fun tp!2264761 () Bool)

(assert (=> b!7719755 (= e!4579138 (and tp!2264758 tp!2264761))))

(assert (= (and b!7719632 ((_ is ElementMatch!20547) (regOne!41606 r!14126))) b!7719752))

(assert (= (and b!7719632 ((_ is Concat!29392) (regOne!41606 r!14126))) b!7719753))

(assert (= (and b!7719632 ((_ is Star!20547) (regOne!41606 r!14126))) b!7719754))

(assert (= (and b!7719632 ((_ is Union!20547) (regOne!41606 r!14126))) b!7719755))

(declare-fun b!7719757 () Bool)

(declare-fun e!4579139 () Bool)

(declare-fun tp!2264767 () Bool)

(declare-fun tp!2264765 () Bool)

(assert (=> b!7719757 (= e!4579139 (and tp!2264767 tp!2264765))))

(declare-fun b!7719758 () Bool)

(declare-fun tp!2264764 () Bool)

(assert (=> b!7719758 (= e!4579139 tp!2264764)))

(declare-fun b!7719756 () Bool)

(assert (=> b!7719756 (= e!4579139 tp_is_empty!51449)))

(assert (=> b!7719632 (= tp!2264725 e!4579139)))

(declare-fun b!7719759 () Bool)

(declare-fun tp!2264763 () Bool)

(declare-fun tp!2264766 () Bool)

(assert (=> b!7719759 (= e!4579139 (and tp!2264763 tp!2264766))))

(assert (= (and b!7719632 ((_ is ElementMatch!20547) (regTwo!41606 r!14126))) b!7719756))

(assert (= (and b!7719632 ((_ is Concat!29392) (regTwo!41606 r!14126))) b!7719757))

(assert (= (and b!7719632 ((_ is Star!20547) (regTwo!41606 r!14126))) b!7719758))

(assert (= (and b!7719632 ((_ is Union!20547) (regTwo!41606 r!14126))) b!7719759))

(declare-fun b!7719765 () Bool)

(declare-fun e!4579141 () Bool)

(declare-fun tp!2264777 () Bool)

(declare-fun tp!2264775 () Bool)

(assert (=> b!7719765 (= e!4579141 (and tp!2264777 tp!2264775))))

(declare-fun b!7719766 () Bool)

(declare-fun tp!2264774 () Bool)

(assert (=> b!7719766 (= e!4579141 tp!2264774)))

(declare-fun b!7719764 () Bool)

(assert (=> b!7719764 (= e!4579141 tp_is_empty!51449)))

(assert (=> b!7719630 (= tp!2264726 e!4579141)))

(declare-fun b!7719767 () Bool)

(declare-fun tp!2264773 () Bool)

(declare-fun tp!2264776 () Bool)

(assert (=> b!7719767 (= e!4579141 (and tp!2264773 tp!2264776))))

(assert (= (and b!7719630 ((_ is ElementMatch!20547) (reg!20876 r!14126))) b!7719764))

(assert (= (and b!7719630 ((_ is Concat!29392) (reg!20876 r!14126))) b!7719765))

(assert (= (and b!7719630 ((_ is Star!20547) (reg!20876 r!14126))) b!7719766))

(assert (= (and b!7719630 ((_ is Union!20547) (reg!20876 r!14126))) b!7719767))

(check-sat (not b!7719758) (not b!7719676) (not b!7719766) (not b!7719744) (not b!7719754) (not bm!713472) (not bm!713482) (not b!7719765) (not b!7719743) (not b!7719767) tp_is_empty!51449 (not bm!713484) (not b!7719750) (not bm!713470) (not b!7719749) (not bm!713476) (not b!7719694) (not b!7719755) (not b!7719745) (not b!7719757) (not b!7719753) (not b!7719751) (not b!7719712) (not bm!713478) (not b!7719759))
(check-sat)
