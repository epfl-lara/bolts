; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739728 () Bool)

(assert start!739728)

(declare-fun b!7765518 () Bool)

(declare-fun res!3095824 () Bool)

(declare-fun e!4601656 () Bool)

(assert (=> b!7765518 (=> (not res!3095824) (not e!4601656))))

(declare-datatypes ((C!41776 0))(
  ( (C!41777 (val!31328 Int)) )
))
(declare-datatypes ((List!73566 0))(
  ( (Nil!73442) (Cons!73442 (h!79890 C!41776) (t!388301 List!73566)) )
))
(declare-fun s!14904 () List!73566)

(get-info :version)

(assert (=> b!7765518 (= res!3095824 ((_ is Cons!73442) s!14904))))

(declare-fun b!7765519 () Bool)

(declare-fun e!4601657 () Bool)

(declare-fun tp_is_empty!51805 () Bool)

(assert (=> b!7765519 (= e!4601657 tp_is_empty!51805)))

(declare-fun res!3095823 () Bool)

(assert (=> start!739728 (=> (not res!3095823) (not e!4601656))))

(declare-datatypes ((Regex!20725 0))(
  ( (ElementMatch!20725 (c!1431240 C!41776)) (Concat!29570 (regOne!41962 Regex!20725) (regTwo!41962 Regex!20725)) (EmptyExpr!20725) (Star!20725 (reg!21054 Regex!20725)) (EmptyLang!20725) (Union!20725 (regOne!41963 Regex!20725) (regTwo!41963 Regex!20725)) )
))
(declare-fun lt!2670820 () Regex!20725)

(declare-fun validRegex!11139 (Regex!20725) Bool)

(assert (=> start!739728 (= res!3095823 (validRegex!11139 lt!2670820))))

(declare-fun r!25924 () Regex!20725)

(assert (=> start!739728 (= lt!2670820 (Star!20725 r!25924))))

(assert (=> start!739728 e!4601656))

(assert (=> start!739728 e!4601657))

(declare-fun e!4601655 () Bool)

(assert (=> start!739728 e!4601655))

(declare-fun b!7765520 () Bool)

(declare-fun res!3095822 () Bool)

(assert (=> b!7765520 (=> (not res!3095822) (not e!4601656))))

(declare-fun matchR!10187 (Regex!20725 List!73566) Bool)

(assert (=> b!7765520 (= res!3095822 (matchR!10187 lt!2670820 s!14904))))

(declare-fun b!7765521 () Bool)

(declare-fun tp!2281172 () Bool)

(declare-fun tp!2281169 () Bool)

(assert (=> b!7765521 (= e!4601657 (and tp!2281172 tp!2281169))))

(declare-fun b!7765522 () Bool)

(declare-fun tp!2281173 () Bool)

(declare-fun tp!2281168 () Bool)

(assert (=> b!7765522 (= e!4601657 (and tp!2281173 tp!2281168))))

(declare-fun b!7765523 () Bool)

(declare-fun tp!2281171 () Bool)

(assert (=> b!7765523 (= e!4601657 tp!2281171)))

(declare-fun b!7765524 () Bool)

(assert (=> b!7765524 (= e!4601656 (not (validRegex!11139 r!25924)))))

(declare-fun b!7765525 () Bool)

(declare-fun tp!2281170 () Bool)

(assert (=> b!7765525 (= e!4601655 (and tp_is_empty!51805 tp!2281170))))

(assert (= (and start!739728 res!3095823) b!7765520))

(assert (= (and b!7765520 res!3095822) b!7765518))

(assert (= (and b!7765518 res!3095824) b!7765524))

(assert (= (and start!739728 ((_ is ElementMatch!20725) r!25924)) b!7765519))

(assert (= (and start!739728 ((_ is Concat!29570) r!25924)) b!7765521))

(assert (= (and start!739728 ((_ is Star!20725) r!25924)) b!7765523))

(assert (= (and start!739728 ((_ is Union!20725) r!25924)) b!7765522))

(assert (= (and start!739728 ((_ is Cons!73442) s!14904)) b!7765525))

(declare-fun m!8222528 () Bool)

(assert (=> start!739728 m!8222528))

(declare-fun m!8222530 () Bool)

(assert (=> b!7765520 m!8222530))

(declare-fun m!8222532 () Bool)

(assert (=> b!7765524 m!8222532))

(check-sat (not b!7765521) (not b!7765524) (not b!7765522) (not b!7765520) (not start!739728) tp_is_empty!51805 (not b!7765525) (not b!7765523))
(check-sat)
(get-model)

(declare-fun b!7765562 () Bool)

(declare-fun e!4601687 () Bool)

(declare-fun e!4601694 () Bool)

(assert (=> b!7765562 (= e!4601687 e!4601694)))

(declare-fun c!1431249 () Bool)

(assert (=> b!7765562 (= c!1431249 ((_ is Union!20725) r!25924))))

(declare-fun b!7765563 () Bool)

(declare-fun e!4601686 () Bool)

(declare-fun call!719436 () Bool)

(assert (=> b!7765563 (= e!4601686 call!719436)))

(declare-fun b!7765564 () Bool)

(declare-fun e!4601688 () Bool)

(declare-fun call!719435 () Bool)

(assert (=> b!7765564 (= e!4601688 call!719435)))

(declare-fun b!7765565 () Bool)

(declare-fun res!3095846 () Bool)

(declare-fun e!4601690 () Bool)

(assert (=> b!7765565 (=> (not res!3095846) (not e!4601690))))

(assert (=> b!7765565 (= res!3095846 call!719435)))

(assert (=> b!7765565 (= e!4601694 e!4601690)))

(declare-fun b!7765566 () Bool)

(assert (=> b!7765566 (= e!4601687 e!4601686)))

(declare-fun res!3095851 () Bool)

(declare-fun nullable!9127 (Regex!20725) Bool)

(assert (=> b!7765566 (= res!3095851 (not (nullable!9127 (reg!21054 r!25924))))))

(assert (=> b!7765566 (=> (not res!3095851) (not e!4601686))))

(declare-fun b!7765567 () Bool)

(declare-fun res!3095847 () Bool)

(declare-fun e!4601689 () Bool)

(assert (=> b!7765567 (=> res!3095847 e!4601689)))

(assert (=> b!7765567 (= res!3095847 (not ((_ is Concat!29570) r!25924)))))

(assert (=> b!7765567 (= e!4601694 e!4601689)))

(declare-fun b!7765568 () Bool)

(declare-fun e!4601693 () Bool)

(assert (=> b!7765568 (= e!4601693 e!4601687)))

(declare-fun c!1431250 () Bool)

(assert (=> b!7765568 (= c!1431250 ((_ is Star!20725) r!25924))))

(declare-fun bm!719430 () Bool)

(assert (=> bm!719430 (= call!719436 (validRegex!11139 (ite c!1431250 (reg!21054 r!25924) (ite c!1431249 (regOne!41963 r!25924) (regTwo!41962 r!25924)))))))

(declare-fun bm!719431 () Bool)

(assert (=> bm!719431 (= call!719435 call!719436)))

(declare-fun d!2343920 () Bool)

(declare-fun res!3095849 () Bool)

(assert (=> d!2343920 (=> res!3095849 e!4601693)))

(assert (=> d!2343920 (= res!3095849 ((_ is ElementMatch!20725) r!25924))))

(assert (=> d!2343920 (= (validRegex!11139 r!25924) e!4601693)))

(declare-fun bm!719428 () Bool)

(declare-fun call!719433 () Bool)

(assert (=> bm!719428 (= call!719433 (validRegex!11139 (ite c!1431249 (regTwo!41963 r!25924) (regOne!41962 r!25924))))))

(declare-fun b!7765571 () Bool)

(assert (=> b!7765571 (= e!4601689 e!4601688)))

(declare-fun res!3095845 () Bool)

(assert (=> b!7765571 (=> (not res!3095845) (not e!4601688))))

(assert (=> b!7765571 (= res!3095845 call!719433)))

(declare-fun b!7765573 () Bool)

(assert (=> b!7765573 (= e!4601690 call!719433)))

(assert (= (and d!2343920 (not res!3095849)) b!7765568))

(assert (= (and b!7765568 c!1431250) b!7765566))

(assert (= (and b!7765568 (not c!1431250)) b!7765562))

(assert (= (and b!7765566 res!3095851) b!7765563))

(assert (= (and b!7765562 c!1431249) b!7765565))

(assert (= (and b!7765562 (not c!1431249)) b!7765567))

(assert (= (and b!7765565 res!3095846) b!7765573))

(assert (= (and b!7765567 (not res!3095847)) b!7765571))

(assert (= (and b!7765571 res!3095845) b!7765564))

(assert (= (or b!7765573 b!7765571) bm!719428))

(assert (= (or b!7765565 b!7765564) bm!719431))

(assert (= (or b!7765563 bm!719431) bm!719430))

(declare-fun m!8222534 () Bool)

(assert (=> b!7765566 m!8222534))

(declare-fun m!8222540 () Bool)

(assert (=> bm!719430 m!8222540))

(declare-fun m!8222544 () Bool)

(assert (=> bm!719428 m!8222544))

(assert (=> b!7765524 d!2343920))

(declare-fun b!7765580 () Bool)

(declare-fun e!4601703 () Bool)

(declare-fun e!4601711 () Bool)

(assert (=> b!7765580 (= e!4601703 e!4601711)))

(declare-fun c!1431254 () Bool)

(assert (=> b!7765580 (= c!1431254 ((_ is Union!20725) lt!2670820))))

(declare-fun b!7765582 () Bool)

(declare-fun e!4601701 () Bool)

(declare-fun call!719444 () Bool)

(assert (=> b!7765582 (= e!4601701 call!719444)))

(declare-fun b!7765584 () Bool)

(declare-fun e!4601705 () Bool)

(declare-fun call!719443 () Bool)

(assert (=> b!7765584 (= e!4601705 call!719443)))

(declare-fun b!7765586 () Bool)

(declare-fun res!3095857 () Bool)

(declare-fun e!4601709 () Bool)

(assert (=> b!7765586 (=> (not res!3095857) (not e!4601709))))

(assert (=> b!7765586 (= res!3095857 call!719443)))

(assert (=> b!7765586 (= e!4601711 e!4601709)))

(declare-fun b!7765588 () Bool)

(assert (=> b!7765588 (= e!4601703 e!4601701)))

(declare-fun res!3095863 () Bool)

(assert (=> b!7765588 (= res!3095863 (not (nullable!9127 (reg!21054 lt!2670820))))))

(assert (=> b!7765588 (=> (not res!3095863) (not e!4601701))))

(declare-fun b!7765589 () Bool)

(declare-fun res!3095858 () Bool)

(declare-fun e!4601707 () Bool)

(assert (=> b!7765589 (=> res!3095858 e!4601707)))

(assert (=> b!7765589 (= res!3095858 (not ((_ is Concat!29570) lt!2670820)))))

(assert (=> b!7765589 (= e!4601711 e!4601707)))

(declare-fun b!7765591 () Bool)

(declare-fun e!4601710 () Bool)

(assert (=> b!7765591 (= e!4601710 e!4601703)))

(declare-fun c!1431255 () Bool)

(assert (=> b!7765591 (= c!1431255 ((_ is Star!20725) lt!2670820))))

(declare-fun bm!719437 () Bool)

(assert (=> bm!719437 (= call!719444 (validRegex!11139 (ite c!1431255 (reg!21054 lt!2670820) (ite c!1431254 (regOne!41963 lt!2670820) (regTwo!41962 lt!2670820)))))))

(declare-fun bm!719439 () Bool)

(assert (=> bm!719439 (= call!719443 call!719444)))

(declare-fun d!2343924 () Bool)

(declare-fun res!3095862 () Bool)

(assert (=> d!2343924 (=> res!3095862 e!4601710)))

(assert (=> d!2343924 (= res!3095862 ((_ is ElementMatch!20725) lt!2670820))))

(assert (=> d!2343924 (= (validRegex!11139 lt!2670820) e!4601710)))

(declare-fun bm!719436 () Bool)

(declare-fun call!719441 () Bool)

(assert (=> bm!719436 (= call!719441 (validRegex!11139 (ite c!1431254 (regTwo!41963 lt!2670820) (regOne!41962 lt!2670820))))))

(declare-fun b!7765595 () Bool)

(assert (=> b!7765595 (= e!4601707 e!4601705)))

(declare-fun res!3095856 () Bool)

(assert (=> b!7765595 (=> (not res!3095856) (not e!4601705))))

(assert (=> b!7765595 (= res!3095856 call!719441)))

(declare-fun b!7765597 () Bool)

(assert (=> b!7765597 (= e!4601709 call!719441)))

(assert (= (and d!2343924 (not res!3095862)) b!7765591))

(assert (= (and b!7765591 c!1431255) b!7765588))

(assert (= (and b!7765591 (not c!1431255)) b!7765580))

(assert (= (and b!7765588 res!3095863) b!7765582))

(assert (= (and b!7765580 c!1431254) b!7765586))

(assert (= (and b!7765580 (not c!1431254)) b!7765589))

(assert (= (and b!7765586 res!3095857) b!7765597))

(assert (= (and b!7765589 (not res!3095858)) b!7765595))

(assert (= (and b!7765595 res!3095856) b!7765584))

(assert (= (or b!7765597 b!7765595) bm!719436))

(assert (= (or b!7765586 b!7765584) bm!719439))

(assert (= (or b!7765582 bm!719439) bm!719437))

(declare-fun m!8222548 () Bool)

(assert (=> b!7765588 m!8222548))

(declare-fun m!8222552 () Bool)

(assert (=> bm!719437 m!8222552))

(declare-fun m!8222556 () Bool)

(assert (=> bm!719436 m!8222556))

(assert (=> start!739728 d!2343924))

(declare-fun bm!719444 () Bool)

(declare-fun call!719450 () Bool)

(declare-fun isEmpty!42117 (List!73566) Bool)

(assert (=> bm!719444 (= call!719450 (isEmpty!42117 s!14904))))

(declare-fun b!7765656 () Bool)

(declare-fun res!3095907 () Bool)

(declare-fun e!4601754 () Bool)

(assert (=> b!7765656 (=> (not res!3095907) (not e!4601754))))

(assert (=> b!7765656 (= res!3095907 (not call!719450))))

(declare-fun b!7765657 () Bool)

(declare-fun e!4601746 () Bool)

(declare-fun e!4601748 () Bool)

(assert (=> b!7765657 (= e!4601746 e!4601748)))

(declare-fun res!3095905 () Bool)

(assert (=> b!7765657 (=> (not res!3095905) (not e!4601748))))

(declare-fun lt!2670826 () Bool)

(assert (=> b!7765657 (= res!3095905 (not lt!2670826))))

(declare-fun b!7765659 () Bool)

(declare-fun res!3095898 () Bool)

(assert (=> b!7765659 (=> res!3095898 e!4601746)))

(assert (=> b!7765659 (= res!3095898 (not ((_ is ElementMatch!20725) lt!2670820)))))

(declare-fun e!4601751 () Bool)

(assert (=> b!7765659 (= e!4601751 e!4601746)))

(declare-fun b!7765661 () Bool)

(declare-fun res!3095910 () Bool)

(assert (=> b!7765661 (=> res!3095910 e!4601746)))

(assert (=> b!7765661 (= res!3095910 e!4601754)))

(declare-fun res!3095909 () Bool)

(assert (=> b!7765661 (=> (not res!3095909) (not e!4601754))))

(assert (=> b!7765661 (= res!3095909 lt!2670826)))

(declare-fun b!7765663 () Bool)

(declare-fun head!15866 (List!73566) C!41776)

(assert (=> b!7765663 (= e!4601754 (= (head!15866 s!14904) (c!1431240 lt!2670820)))))

(declare-fun b!7765667 () Bool)

(declare-fun e!4601753 () Bool)

(declare-fun derivativeStep!6069 (Regex!20725 C!41776) Regex!20725)

(declare-fun tail!15405 (List!73566) List!73566)

(assert (=> b!7765667 (= e!4601753 (matchR!10187 (derivativeStep!6069 lt!2670820 (head!15866 s!14904)) (tail!15405 s!14904)))))

(declare-fun b!7765669 () Bool)

(declare-fun e!4601742 () Bool)

(assert (=> b!7765669 (= e!4601748 e!4601742)))

(declare-fun res!3095901 () Bool)

(assert (=> b!7765669 (=> res!3095901 e!4601742)))

(assert (=> b!7765669 (= res!3095901 call!719450)))

(declare-fun b!7765671 () Bool)

(declare-fun e!4601745 () Bool)

(assert (=> b!7765671 (= e!4601745 (= lt!2670826 call!719450))))

(declare-fun b!7765673 () Bool)

(declare-fun res!3095900 () Bool)

(assert (=> b!7765673 (=> res!3095900 e!4601742)))

(assert (=> b!7765673 (= res!3095900 (not (isEmpty!42117 (tail!15405 s!14904))))))

(declare-fun b!7765675 () Bool)

(declare-fun res!3095903 () Bool)

(assert (=> b!7765675 (=> (not res!3095903) (not e!4601754))))

(assert (=> b!7765675 (= res!3095903 (isEmpty!42117 (tail!15405 s!14904)))))

(declare-fun b!7765677 () Bool)

(assert (=> b!7765677 (= e!4601745 e!4601751)))

(declare-fun c!1431270 () Bool)

(assert (=> b!7765677 (= c!1431270 ((_ is EmptyLang!20725) lt!2670820))))

(declare-fun d!2343928 () Bool)

(assert (=> d!2343928 e!4601745))

(declare-fun c!1431274 () Bool)

(assert (=> d!2343928 (= c!1431274 ((_ is EmptyExpr!20725) lt!2670820))))

(assert (=> d!2343928 (= lt!2670826 e!4601753)))

(declare-fun c!1431272 () Bool)

(assert (=> d!2343928 (= c!1431272 (isEmpty!42117 s!14904))))

(assert (=> d!2343928 (validRegex!11139 lt!2670820)))

(assert (=> d!2343928 (= (matchR!10187 lt!2670820 s!14904) lt!2670826)))

(declare-fun b!7765665 () Bool)

(assert (=> b!7765665 (= e!4601751 (not lt!2670826))))

(declare-fun b!7765679 () Bool)

(assert (=> b!7765679 (= e!4601742 (not (= (head!15866 s!14904) (c!1431240 lt!2670820))))))

(declare-fun b!7765681 () Bool)

(assert (=> b!7765681 (= e!4601753 (nullable!9127 lt!2670820))))

(assert (= (and d!2343928 c!1431272) b!7765681))

(assert (= (and d!2343928 (not c!1431272)) b!7765667))

(assert (= (and d!2343928 c!1431274) b!7765671))

(assert (= (and d!2343928 (not c!1431274)) b!7765677))

(assert (= (and b!7765677 c!1431270) b!7765665))

(assert (= (and b!7765677 (not c!1431270)) b!7765659))

(assert (= (and b!7765659 (not res!3095898)) b!7765661))

(assert (= (and b!7765661 res!3095909) b!7765656))

(assert (= (and b!7765656 res!3095907) b!7765675))

(assert (= (and b!7765675 res!3095903) b!7765663))

(assert (= (and b!7765661 (not res!3095910)) b!7765657))

(assert (= (and b!7765657 res!3095905) b!7765669))

(assert (= (and b!7765669 (not res!3095901)) b!7765673))

(assert (= (and b!7765673 (not res!3095900)) b!7765679))

(assert (= (or b!7765671 b!7765656 b!7765669) bm!719444))

(declare-fun m!8222558 () Bool)

(assert (=> b!7765681 m!8222558))

(declare-fun m!8222562 () Bool)

(assert (=> b!7765667 m!8222562))

(assert (=> b!7765667 m!8222562))

(declare-fun m!8222568 () Bool)

(assert (=> b!7765667 m!8222568))

(declare-fun m!8222570 () Bool)

(assert (=> b!7765667 m!8222570))

(assert (=> b!7765667 m!8222568))

(assert (=> b!7765667 m!8222570))

(declare-fun m!8222574 () Bool)

(assert (=> b!7765667 m!8222574))

(assert (=> b!7765673 m!8222570))

(assert (=> b!7765673 m!8222570))

(declare-fun m!8222578 () Bool)

(assert (=> b!7765673 m!8222578))

(assert (=> b!7765675 m!8222570))

(assert (=> b!7765675 m!8222570))

(assert (=> b!7765675 m!8222578))

(assert (=> b!7765679 m!8222562))

(declare-fun m!8222582 () Bool)

(assert (=> bm!719444 m!8222582))

(assert (=> b!7765663 m!8222562))

(assert (=> d!2343928 m!8222582))

(assert (=> d!2343928 m!8222528))

(assert (=> b!7765520 d!2343928))

(declare-fun e!4601761 () Bool)

(assert (=> b!7765521 (= tp!2281172 e!4601761)))

(declare-fun b!7765705 () Bool)

(declare-fun tp!2281194 () Bool)

(declare-fun tp!2281197 () Bool)

(assert (=> b!7765705 (= e!4601761 (and tp!2281194 tp!2281197))))

(declare-fun b!7765707 () Bool)

(declare-fun tp!2281199 () Bool)

(assert (=> b!7765707 (= e!4601761 tp!2281199)))

(declare-fun b!7765709 () Bool)

(declare-fun tp!2281201 () Bool)

(declare-fun tp!2281203 () Bool)

(assert (=> b!7765709 (= e!4601761 (and tp!2281201 tp!2281203))))

(declare-fun b!7765703 () Bool)

(assert (=> b!7765703 (= e!4601761 tp_is_empty!51805)))

(assert (= (and b!7765521 ((_ is ElementMatch!20725) (regOne!41962 r!25924))) b!7765703))

(assert (= (and b!7765521 ((_ is Concat!29570) (regOne!41962 r!25924))) b!7765705))

(assert (= (and b!7765521 ((_ is Star!20725) (regOne!41962 r!25924))) b!7765707))

(assert (= (and b!7765521 ((_ is Union!20725) (regOne!41962 r!25924))) b!7765709))

(declare-fun e!4601763 () Bool)

(assert (=> b!7765521 (= tp!2281169 e!4601763)))

(declare-fun b!7765713 () Bool)

(declare-fun tp!2281204 () Bool)

(declare-fun tp!2281207 () Bool)

(assert (=> b!7765713 (= e!4601763 (and tp!2281204 tp!2281207))))

(declare-fun b!7765715 () Bool)

(declare-fun tp!2281209 () Bool)

(assert (=> b!7765715 (= e!4601763 tp!2281209)))

(declare-fun b!7765717 () Bool)

(declare-fun tp!2281211 () Bool)

(declare-fun tp!2281213 () Bool)

(assert (=> b!7765717 (= e!4601763 (and tp!2281211 tp!2281213))))

(declare-fun b!7765711 () Bool)

(assert (=> b!7765711 (= e!4601763 tp_is_empty!51805)))

(assert (= (and b!7765521 ((_ is ElementMatch!20725) (regTwo!41962 r!25924))) b!7765711))

(assert (= (and b!7765521 ((_ is Concat!29570) (regTwo!41962 r!25924))) b!7765713))

(assert (= (and b!7765521 ((_ is Star!20725) (regTwo!41962 r!25924))) b!7765715))

(assert (= (and b!7765521 ((_ is Union!20725) (regTwo!41962 r!25924))) b!7765717))

(declare-fun e!4601765 () Bool)

(assert (=> b!7765522 (= tp!2281173 e!4601765)))

(declare-fun b!7765721 () Bool)

(declare-fun tp!2281214 () Bool)

(declare-fun tp!2281217 () Bool)

(assert (=> b!7765721 (= e!4601765 (and tp!2281214 tp!2281217))))

(declare-fun b!7765723 () Bool)

(declare-fun tp!2281219 () Bool)

(assert (=> b!7765723 (= e!4601765 tp!2281219)))

(declare-fun b!7765725 () Bool)

(declare-fun tp!2281221 () Bool)

(declare-fun tp!2281223 () Bool)

(assert (=> b!7765725 (= e!4601765 (and tp!2281221 tp!2281223))))

(declare-fun b!7765719 () Bool)

(assert (=> b!7765719 (= e!4601765 tp_is_empty!51805)))

(assert (= (and b!7765522 ((_ is ElementMatch!20725) (regOne!41963 r!25924))) b!7765719))

(assert (= (and b!7765522 ((_ is Concat!29570) (regOne!41963 r!25924))) b!7765721))

(assert (= (and b!7765522 ((_ is Star!20725) (regOne!41963 r!25924))) b!7765723))

(assert (= (and b!7765522 ((_ is Union!20725) (regOne!41963 r!25924))) b!7765725))

(declare-fun e!4601767 () Bool)

(assert (=> b!7765522 (= tp!2281168 e!4601767)))

(declare-fun b!7765728 () Bool)

(declare-fun tp!2281224 () Bool)

(declare-fun tp!2281226 () Bool)

(assert (=> b!7765728 (= e!4601767 (and tp!2281224 tp!2281226))))

(declare-fun b!7765730 () Bool)

(declare-fun tp!2281228 () Bool)

(assert (=> b!7765730 (= e!4601767 tp!2281228)))

(declare-fun b!7765732 () Bool)

(declare-fun tp!2281230 () Bool)

(declare-fun tp!2281232 () Bool)

(assert (=> b!7765732 (= e!4601767 (and tp!2281230 tp!2281232))))

(declare-fun b!7765726 () Bool)

(assert (=> b!7765726 (= e!4601767 tp_is_empty!51805)))

(assert (= (and b!7765522 ((_ is ElementMatch!20725) (regTwo!41963 r!25924))) b!7765726))

(assert (= (and b!7765522 ((_ is Concat!29570) (regTwo!41963 r!25924))) b!7765728))

(assert (= (and b!7765522 ((_ is Star!20725) (regTwo!41963 r!25924))) b!7765730))

(assert (= (and b!7765522 ((_ is Union!20725) (regTwo!41963 r!25924))) b!7765732))

(declare-fun e!4601768 () Bool)

(assert (=> b!7765523 (= tp!2281171 e!4601768)))

(declare-fun b!7765737 () Bool)

(declare-fun tp!2281234 () Bool)

(declare-fun tp!2281235 () Bool)

(assert (=> b!7765737 (= e!4601768 (and tp!2281234 tp!2281235))))

(declare-fun b!7765738 () Bool)

(declare-fun tp!2281236 () Bool)

(assert (=> b!7765738 (= e!4601768 tp!2281236)))

(declare-fun b!7765739 () Bool)

(declare-fun tp!2281237 () Bool)

(declare-fun tp!2281238 () Bool)

(assert (=> b!7765739 (= e!4601768 (and tp!2281237 tp!2281238))))

(declare-fun b!7765736 () Bool)

(assert (=> b!7765736 (= e!4601768 tp_is_empty!51805)))

(assert (= (and b!7765523 ((_ is ElementMatch!20725) (reg!21054 r!25924))) b!7765736))

(assert (= (and b!7765523 ((_ is Concat!29570) (reg!21054 r!25924))) b!7765737))

(assert (= (and b!7765523 ((_ is Star!20725) (reg!21054 r!25924))) b!7765738))

(assert (= (and b!7765523 ((_ is Union!20725) (reg!21054 r!25924))) b!7765739))

(declare-fun b!7765751 () Bool)

(declare-fun e!4601775 () Bool)

(declare-fun tp!2281249 () Bool)

(assert (=> b!7765751 (= e!4601775 (and tp_is_empty!51805 tp!2281249))))

(assert (=> b!7765525 (= tp!2281170 e!4601775)))

(assert (= (and b!7765525 ((_ is Cons!73442) (t!388301 s!14904))) b!7765751))

(check-sat (not b!7765751) (not b!7765725) (not b!7765679) (not b!7765673) (not b!7765588) (not bm!719437) (not d!2343928) (not b!7765717) (not b!7765721) (not b!7765713) (not b!7765675) (not b!7765715) (not b!7765732) (not bm!719436) (not b!7765709) (not b!7765681) (not bm!719444) (not b!7765723) (not b!7765738) (not b!7765737) (not bm!719428) (not b!7765663) tp_is_empty!51805 (not b!7765728) (not b!7765705) (not b!7765707) (not b!7765739) (not bm!719430) (not b!7765667) (not b!7765566) (not b!7765730))
(check-sat)
