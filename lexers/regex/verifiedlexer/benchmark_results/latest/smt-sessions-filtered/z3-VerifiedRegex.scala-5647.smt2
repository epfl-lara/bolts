; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282174 () Bool)

(assert start!282174)

(declare-fun res!1197642 () Bool)

(declare-fun e!1829534 () Bool)

(assert (=> start!282174 (=> (not res!1197642) (not e!1829534))))

(declare-datatypes ((C!17880 0))(
  ( (C!17881 (val!10974 Int)) )
))
(declare-datatypes ((Regex!8849 0))(
  ( (ElementMatch!8849 (c!471266 C!17880)) (Concat!14170 (regOne!18210 Regex!8849) (regTwo!18210 Regex!8849)) (EmptyExpr!8849) (Star!8849 (reg!9178 Regex!8849)) (EmptyLang!8849) (Union!8849 (regOne!18211 Regex!8849) (regTwo!18211 Regex!8849)) )
))
(declare-fun r!23079 () Regex!8849)

(declare-fun validRegex!3622 (Regex!8849) Bool)

(assert (=> start!282174 (= res!1197642 (validRegex!3622 r!23079))))

(assert (=> start!282174 e!1829534))

(declare-fun e!1829533 () Bool)

(assert (=> start!282174 e!1829533))

(declare-fun b!2895757 () Bool)

(declare-fun res!1197643 () Bool)

(assert (=> b!2895757 (=> (not res!1197643) (not e!1829534))))

(get-info :version)

(assert (=> b!2895757 (= res!1197643 (and (not ((_ is EmptyExpr!8849) r!23079)) (not ((_ is EmptyLang!8849) r!23079)) (not ((_ is ElementMatch!8849) r!23079)) (not ((_ is Star!8849) r!23079)) (not ((_ is Union!8849) r!23079))))))

(declare-fun b!2895758 () Bool)

(declare-fun tp!929479 () Bool)

(assert (=> b!2895758 (= e!1829533 tp!929479)))

(declare-fun b!2895759 () Bool)

(declare-fun res!1197645 () Bool)

(assert (=> b!2895759 (=> (not res!1197645) (not e!1829534))))

(declare-datatypes ((List!34650 0))(
  ( (Nil!34526) (Cons!34526 (h!39946 C!17880) (t!233693 List!34650)) )
))
(declare-datatypes ((Option!6522 0))(
  ( (None!6521) (Some!6521 (v!34647 List!34650)) )
))
(declare-fun isDefined!5086 (Option!6522) Bool)

(declare-fun getLanguageWitness!556 (Regex!8849) Option!6522)

(assert (=> b!2895759 (= res!1197645 (isDefined!5086 (getLanguageWitness!556 r!23079)))))

(declare-fun b!2895760 () Bool)

(declare-fun tp!929475 () Bool)

(declare-fun tp!929477 () Bool)

(assert (=> b!2895760 (= e!1829533 (and tp!929475 tp!929477))))

(declare-fun b!2895761 () Bool)

(declare-fun tp!929478 () Bool)

(declare-fun tp!929476 () Bool)

(assert (=> b!2895761 (= e!1829533 (and tp!929478 tp!929476))))

(declare-fun b!2895762 () Bool)

(declare-fun e!1829535 () Bool)

(assert (=> b!2895762 (= e!1829534 e!1829535)))

(declare-fun res!1197644 () Bool)

(assert (=> b!2895762 (=> (not res!1197644) (not e!1829535))))

(declare-fun lt!1021572 () Option!6522)

(assert (=> b!2895762 (= res!1197644 ((_ is Some!6521) lt!1021572))))

(assert (=> b!2895762 (= lt!1021572 (getLanguageWitness!556 (regOne!18210 r!23079)))))

(declare-fun b!2895763 () Bool)

(declare-fun res!1197646 () Bool)

(assert (=> b!2895763 (=> (not res!1197646) (not e!1829535))))

(assert (=> b!2895763 (= res!1197646 (validRegex!3622 (regOne!18210 r!23079)))))

(declare-fun b!2895764 () Bool)

(declare-fun tp_is_empty!15285 () Bool)

(assert (=> b!2895764 (= e!1829533 tp_is_empty!15285)))

(declare-fun b!2895765 () Bool)

(assert (=> b!2895765 (= e!1829535 (not (isDefined!5086 lt!1021572)))))

(declare-fun b!2895766 () Bool)

(declare-fun res!1197647 () Bool)

(assert (=> b!2895766 (=> (not res!1197647) (not e!1829535))))

(assert (=> b!2895766 (= res!1197647 ((_ is Some!6521) (getLanguageWitness!556 (regTwo!18210 r!23079))))))

(assert (= (and start!282174 res!1197642) b!2895759))

(assert (= (and b!2895759 res!1197645) b!2895757))

(assert (= (and b!2895757 res!1197643) b!2895762))

(assert (= (and b!2895762 res!1197644) b!2895766))

(assert (= (and b!2895766 res!1197647) b!2895763))

(assert (= (and b!2895763 res!1197646) b!2895765))

(assert (= (and start!282174 ((_ is ElementMatch!8849) r!23079)) b!2895764))

(assert (= (and start!282174 ((_ is Concat!14170) r!23079)) b!2895760))

(assert (= (and start!282174 ((_ is Star!8849) r!23079)) b!2895758))

(assert (= (and start!282174 ((_ is Union!8849) r!23079)) b!2895761))

(declare-fun m!3304085 () Bool)

(assert (=> start!282174 m!3304085))

(declare-fun m!3304087 () Bool)

(assert (=> b!2895766 m!3304087))

(declare-fun m!3304089 () Bool)

(assert (=> b!2895763 m!3304089))

(declare-fun m!3304091 () Bool)

(assert (=> b!2895765 m!3304091))

(declare-fun m!3304093 () Bool)

(assert (=> b!2895759 m!3304093))

(assert (=> b!2895759 m!3304093))

(declare-fun m!3304095 () Bool)

(assert (=> b!2895759 m!3304095))

(declare-fun m!3304097 () Bool)

(assert (=> b!2895762 m!3304097))

(check-sat (not b!2895761) (not b!2895758) tp_is_empty!15285 (not start!282174) (not b!2895762) (not b!2895766) (not b!2895763) (not b!2895765) (not b!2895760) (not b!2895759))
(check-sat)
(get-model)

(declare-fun bm!188344 () Bool)

(declare-fun call!188350 () Bool)

(declare-fun call!188349 () Bool)

(assert (=> bm!188344 (= call!188350 call!188349)))

(declare-fun b!2895793 () Bool)

(declare-fun res!1197658 () Bool)

(declare-fun e!1829555 () Bool)

(assert (=> b!2895793 (=> res!1197658 e!1829555)))

(assert (=> b!2895793 (= res!1197658 (not ((_ is Concat!14170) (regOne!18210 r!23079))))))

(declare-fun e!1829558 () Bool)

(assert (=> b!2895793 (= e!1829558 e!1829555)))

(declare-fun b!2895794 () Bool)

(declare-fun e!1829560 () Bool)

(assert (=> b!2895794 (= e!1829560 e!1829558)))

(declare-fun c!471276 () Bool)

(assert (=> b!2895794 (= c!471276 ((_ is Union!8849) (regOne!18210 r!23079)))))

(declare-fun bm!188345 () Bool)

(declare-fun c!471275 () Bool)

(assert (=> bm!188345 (= call!188349 (validRegex!3622 (ite c!471275 (reg!9178 (regOne!18210 r!23079)) (ite c!471276 (regOne!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079))))))))

(declare-fun bm!188346 () Bool)

(declare-fun call!188351 () Bool)

(assert (=> bm!188346 (= call!188351 (validRegex!3622 (ite c!471276 (regTwo!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))))))

(declare-fun b!2895795 () Bool)

(declare-fun e!1829557 () Bool)

(assert (=> b!2895795 (= e!1829555 e!1829557)))

(declare-fun res!1197660 () Bool)

(assert (=> b!2895795 (=> (not res!1197660) (not e!1829557))))

(assert (=> b!2895795 (= res!1197660 call!188350)))

(declare-fun b!2895797 () Bool)

(declare-fun e!1829554 () Bool)

(assert (=> b!2895797 (= e!1829554 call!188349)))

(declare-fun b!2895798 () Bool)

(assert (=> b!2895798 (= e!1829557 call!188351)))

(declare-fun b!2895799 () Bool)

(assert (=> b!2895799 (= e!1829560 e!1829554)))

(declare-fun res!1197662 () Bool)

(declare-fun nullable!2748 (Regex!8849) Bool)

(assert (=> b!2895799 (= res!1197662 (not (nullable!2748 (reg!9178 (regOne!18210 r!23079)))))))

(assert (=> b!2895799 (=> (not res!1197662) (not e!1829554))))

(declare-fun b!2895800 () Bool)

(declare-fun e!1829559 () Bool)

(assert (=> b!2895800 (= e!1829559 call!188351)))

(declare-fun b!2895801 () Bool)

(declare-fun e!1829556 () Bool)

(assert (=> b!2895801 (= e!1829556 e!1829560)))

(assert (=> b!2895801 (= c!471275 ((_ is Star!8849) (regOne!18210 r!23079)))))

(declare-fun d!834856 () Bool)

(declare-fun res!1197659 () Bool)

(assert (=> d!834856 (=> res!1197659 e!1829556)))

(assert (=> d!834856 (= res!1197659 ((_ is ElementMatch!8849) (regOne!18210 r!23079)))))

(assert (=> d!834856 (= (validRegex!3622 (regOne!18210 r!23079)) e!1829556)))

(declare-fun b!2895796 () Bool)

(declare-fun res!1197661 () Bool)

(assert (=> b!2895796 (=> (not res!1197661) (not e!1829559))))

(assert (=> b!2895796 (= res!1197661 call!188350)))

(assert (=> b!2895796 (= e!1829558 e!1829559)))

(assert (= (and d!834856 (not res!1197659)) b!2895801))

(assert (= (and b!2895801 c!471275) b!2895799))

(assert (= (and b!2895801 (not c!471275)) b!2895794))

(assert (= (and b!2895799 res!1197662) b!2895797))

(assert (= (and b!2895794 c!471276) b!2895796))

(assert (= (and b!2895794 (not c!471276)) b!2895793))

(assert (= (and b!2895796 res!1197661) b!2895800))

(assert (= (and b!2895793 (not res!1197658)) b!2895795))

(assert (= (and b!2895795 res!1197660) b!2895798))

(assert (= (or b!2895800 b!2895798) bm!188346))

(assert (= (or b!2895796 b!2895795) bm!188344))

(assert (= (or b!2895797 bm!188344) bm!188345))

(declare-fun m!3304101 () Bool)

(assert (=> bm!188345 m!3304101))

(declare-fun m!3304103 () Bool)

(assert (=> bm!188346 m!3304103))

(declare-fun m!3304105 () Bool)

(assert (=> b!2895799 m!3304105))

(assert (=> b!2895763 d!834856))

(declare-fun bm!188347 () Bool)

(declare-fun call!188353 () Bool)

(declare-fun call!188352 () Bool)

(assert (=> bm!188347 (= call!188353 call!188352)))

(declare-fun b!2895826 () Bool)

(declare-fun res!1197663 () Bool)

(declare-fun e!1829574 () Bool)

(assert (=> b!2895826 (=> res!1197663 e!1829574)))

(assert (=> b!2895826 (= res!1197663 (not ((_ is Concat!14170) r!23079)))))

(declare-fun e!1829577 () Bool)

(assert (=> b!2895826 (= e!1829577 e!1829574)))

(declare-fun b!2895827 () Bool)

(declare-fun e!1829579 () Bool)

(assert (=> b!2895827 (= e!1829579 e!1829577)))

(declare-fun c!471290 () Bool)

(assert (=> b!2895827 (= c!471290 ((_ is Union!8849) r!23079))))

(declare-fun c!471289 () Bool)

(declare-fun bm!188348 () Bool)

(assert (=> bm!188348 (= call!188352 (validRegex!3622 (ite c!471289 (reg!9178 r!23079) (ite c!471290 (regOne!18211 r!23079) (regOne!18210 r!23079)))))))

(declare-fun bm!188349 () Bool)

(declare-fun call!188354 () Bool)

(assert (=> bm!188349 (= call!188354 (validRegex!3622 (ite c!471290 (regTwo!18211 r!23079) (regTwo!18210 r!23079))))))

(declare-fun b!2895828 () Bool)

(declare-fun e!1829576 () Bool)

(assert (=> b!2895828 (= e!1829574 e!1829576)))

(declare-fun res!1197665 () Bool)

(assert (=> b!2895828 (=> (not res!1197665) (not e!1829576))))

(assert (=> b!2895828 (= res!1197665 call!188353)))

(declare-fun b!2895830 () Bool)

(declare-fun e!1829573 () Bool)

(assert (=> b!2895830 (= e!1829573 call!188352)))

(declare-fun b!2895831 () Bool)

(assert (=> b!2895831 (= e!1829576 call!188354)))

(declare-fun b!2895832 () Bool)

(assert (=> b!2895832 (= e!1829579 e!1829573)))

(declare-fun res!1197667 () Bool)

(assert (=> b!2895832 (= res!1197667 (not (nullable!2748 (reg!9178 r!23079))))))

(assert (=> b!2895832 (=> (not res!1197667) (not e!1829573))))

(declare-fun b!2895833 () Bool)

(declare-fun e!1829578 () Bool)

(assert (=> b!2895833 (= e!1829578 call!188354)))

(declare-fun b!2895834 () Bool)

(declare-fun e!1829575 () Bool)

(assert (=> b!2895834 (= e!1829575 e!1829579)))

(assert (=> b!2895834 (= c!471289 ((_ is Star!8849) r!23079))))

(declare-fun d!834862 () Bool)

(declare-fun res!1197664 () Bool)

(assert (=> d!834862 (=> res!1197664 e!1829575)))

(assert (=> d!834862 (= res!1197664 ((_ is ElementMatch!8849) r!23079))))

(assert (=> d!834862 (= (validRegex!3622 r!23079) e!1829575)))

(declare-fun b!2895829 () Bool)

(declare-fun res!1197666 () Bool)

(assert (=> b!2895829 (=> (not res!1197666) (not e!1829578))))

(assert (=> b!2895829 (= res!1197666 call!188353)))

(assert (=> b!2895829 (= e!1829577 e!1829578)))

(assert (= (and d!834862 (not res!1197664)) b!2895834))

(assert (= (and b!2895834 c!471289) b!2895832))

(assert (= (and b!2895834 (not c!471289)) b!2895827))

(assert (= (and b!2895832 res!1197667) b!2895830))

(assert (= (and b!2895827 c!471290) b!2895829))

(assert (= (and b!2895827 (not c!471290)) b!2895826))

(assert (= (and b!2895829 res!1197666) b!2895833))

(assert (= (and b!2895826 (not res!1197663)) b!2895828))

(assert (= (and b!2895828 res!1197665) b!2895831))

(assert (= (or b!2895833 b!2895831) bm!188349))

(assert (= (or b!2895829 b!2895828) bm!188347))

(assert (= (or b!2895830 bm!188347) bm!188348))

(declare-fun m!3304107 () Bool)

(assert (=> bm!188348 m!3304107))

(declare-fun m!3304109 () Bool)

(assert (=> bm!188349 m!3304109))

(declare-fun m!3304111 () Bool)

(assert (=> b!2895832 m!3304111))

(assert (=> start!282174 d!834862))

(declare-fun d!834864 () Bool)

(declare-fun c!471333 () Bool)

(assert (=> d!834864 (= c!471333 ((_ is EmptyExpr!8849) (regOne!18210 r!23079)))))

(declare-fun e!1829628 () Option!6522)

(assert (=> d!834864 (= (getLanguageWitness!556 (regOne!18210 r!23079)) e!1829628)))

(declare-fun b!2895917 () Bool)

(declare-fun e!1829633 () Option!6522)

(declare-fun e!1829631 () Option!6522)

(assert (=> b!2895917 (= e!1829633 e!1829631)))

(declare-fun lt!1021592 () Option!6522)

(declare-fun call!188372 () Option!6522)

(assert (=> b!2895917 (= lt!1021592 call!188372)))

(declare-fun c!471327 () Bool)

(assert (=> b!2895917 (= c!471327 ((_ is Some!6521) lt!1021592))))

(declare-fun b!2895918 () Bool)

(declare-fun e!1829626 () Option!6522)

(assert (=> b!2895918 (= e!1829626 None!6521)))

(declare-fun b!2895919 () Bool)

(declare-fun e!1829629 () Option!6522)

(assert (=> b!2895919 (= e!1829628 e!1829629)))

(declare-fun c!471328 () Bool)

(assert (=> b!2895919 (= c!471328 ((_ is EmptyLang!8849) (regOne!18210 r!23079)))))

(declare-fun b!2895920 () Bool)

(declare-fun e!1829630 () Option!6522)

(assert (=> b!2895920 (= e!1829630 (Some!6521 Nil!34526))))

(declare-fun b!2895921 () Bool)

(declare-fun c!471331 () Bool)

(assert (=> b!2895921 (= c!471331 ((_ is ElementMatch!8849) (regOne!18210 r!23079)))))

(declare-fun e!1829627 () Option!6522)

(assert (=> b!2895921 (= e!1829629 e!1829627)))

(declare-fun bm!188366 () Bool)

(declare-fun c!471334 () Bool)

(assert (=> bm!188366 (= call!188372 (getLanguageWitness!556 (ite c!471334 (regOne!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))))))

(declare-fun bm!188367 () Bool)

(declare-fun call!188371 () Option!6522)

(assert (=> bm!188367 (= call!188371 (getLanguageWitness!556 (ite c!471334 (regTwo!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079)))))))

(declare-fun b!2895922 () Bool)

(assert (=> b!2895922 (= e!1829628 (Some!6521 Nil!34526))))

(declare-fun b!2895923 () Bool)

(assert (=> b!2895923 (= e!1829627 (Some!6521 (Cons!34526 (c!471266 (regOne!18210 r!23079)) Nil!34526)))))

(declare-fun b!2895924 () Bool)

(assert (=> b!2895924 (= e!1829627 e!1829630)))

(declare-fun c!471329 () Bool)

(assert (=> b!2895924 (= c!471329 ((_ is Star!8849) (regOne!18210 r!23079)))))

(declare-fun b!2895925 () Bool)

(declare-fun e!1829632 () Option!6522)

(declare-fun lt!1021593 () Option!6522)

(declare-fun lt!1021591 () Option!6522)

(declare-fun ++!8247 (List!34650 List!34650) List!34650)

(assert (=> b!2895925 (= e!1829632 (Some!6521 (++!8247 (v!34647 lt!1021593) (v!34647 lt!1021591))))))

(declare-fun b!2895926 () Bool)

(assert (=> b!2895926 (= e!1829631 lt!1021592)))

(declare-fun b!2895927 () Bool)

(declare-fun c!471330 () Bool)

(assert (=> b!2895927 (= c!471330 ((_ is Some!6521) lt!1021591))))

(assert (=> b!2895927 (= lt!1021591 call!188372)))

(assert (=> b!2895927 (= e!1829626 e!1829632)))

(declare-fun b!2895928 () Bool)

(assert (=> b!2895928 (= c!471334 ((_ is Union!8849) (regOne!18210 r!23079)))))

(assert (=> b!2895928 (= e!1829630 e!1829633)))

(declare-fun b!2895929 () Bool)

(assert (=> b!2895929 (= e!1829632 None!6521)))

(declare-fun b!2895930 () Bool)

(assert (=> b!2895930 (= e!1829633 e!1829626)))

(assert (=> b!2895930 (= lt!1021593 call!188371)))

(declare-fun c!471332 () Bool)

(assert (=> b!2895930 (= c!471332 ((_ is Some!6521) lt!1021593))))

(declare-fun b!2895931 () Bool)

(assert (=> b!2895931 (= e!1829629 None!6521)))

(declare-fun b!2895932 () Bool)

(assert (=> b!2895932 (= e!1829631 call!188371)))

(assert (= (and d!834864 c!471333) b!2895922))

(assert (= (and d!834864 (not c!471333)) b!2895919))

(assert (= (and b!2895919 c!471328) b!2895931))

(assert (= (and b!2895919 (not c!471328)) b!2895921))

(assert (= (and b!2895921 c!471331) b!2895923))

(assert (= (and b!2895921 (not c!471331)) b!2895924))

(assert (= (and b!2895924 c!471329) b!2895920))

(assert (= (and b!2895924 (not c!471329)) b!2895928))

(assert (= (and b!2895928 c!471334) b!2895917))

(assert (= (and b!2895928 (not c!471334)) b!2895930))

(assert (= (and b!2895917 c!471327) b!2895926))

(assert (= (and b!2895917 (not c!471327)) b!2895932))

(assert (= (and b!2895930 c!471332) b!2895927))

(assert (= (and b!2895930 (not c!471332)) b!2895918))

(assert (= (and b!2895927 c!471330) b!2895925))

(assert (= (and b!2895927 (not c!471330)) b!2895929))

(assert (= (or b!2895932 b!2895930) bm!188367))

(assert (= (or b!2895917 b!2895927) bm!188366))

(declare-fun m!3304127 () Bool)

(assert (=> bm!188366 m!3304127))

(declare-fun m!3304129 () Bool)

(assert (=> bm!188367 m!3304129))

(declare-fun m!3304131 () Bool)

(assert (=> b!2895925 m!3304131))

(assert (=> b!2895762 d!834864))

(declare-fun d!834872 () Bool)

(declare-fun c!471341 () Bool)

(assert (=> d!834872 (= c!471341 ((_ is EmptyExpr!8849) (regTwo!18210 r!23079)))))

(declare-fun e!1829636 () Option!6522)

(assert (=> d!834872 (= (getLanguageWitness!556 (regTwo!18210 r!23079)) e!1829636)))

(declare-fun b!2895933 () Bool)

(declare-fun e!1829641 () Option!6522)

(declare-fun e!1829639 () Option!6522)

(assert (=> b!2895933 (= e!1829641 e!1829639)))

(declare-fun lt!1021595 () Option!6522)

(declare-fun call!188376 () Option!6522)

(assert (=> b!2895933 (= lt!1021595 call!188376)))

(declare-fun c!471335 () Bool)

(assert (=> b!2895933 (= c!471335 ((_ is Some!6521) lt!1021595))))

(declare-fun b!2895934 () Bool)

(declare-fun e!1829634 () Option!6522)

(assert (=> b!2895934 (= e!1829634 None!6521)))

(declare-fun b!2895935 () Bool)

(declare-fun e!1829637 () Option!6522)

(assert (=> b!2895935 (= e!1829636 e!1829637)))

(declare-fun c!471336 () Bool)

(assert (=> b!2895935 (= c!471336 ((_ is EmptyLang!8849) (regTwo!18210 r!23079)))))

(declare-fun b!2895936 () Bool)

(declare-fun e!1829638 () Option!6522)

(assert (=> b!2895936 (= e!1829638 (Some!6521 Nil!34526))))

(declare-fun b!2895937 () Bool)

(declare-fun c!471339 () Bool)

(assert (=> b!2895937 (= c!471339 ((_ is ElementMatch!8849) (regTwo!18210 r!23079)))))

(declare-fun e!1829635 () Option!6522)

(assert (=> b!2895937 (= e!1829637 e!1829635)))

(declare-fun bm!188370 () Bool)

(declare-fun c!471342 () Bool)

(assert (=> bm!188370 (= call!188376 (getLanguageWitness!556 (ite c!471342 (regOne!18211 (regTwo!18210 r!23079)) (regTwo!18210 (regTwo!18210 r!23079)))))))

(declare-fun bm!188371 () Bool)

(declare-fun call!188375 () Option!6522)

(assert (=> bm!188371 (= call!188375 (getLanguageWitness!556 (ite c!471342 (regTwo!18211 (regTwo!18210 r!23079)) (regOne!18210 (regTwo!18210 r!23079)))))))

(declare-fun b!2895938 () Bool)

(assert (=> b!2895938 (= e!1829636 (Some!6521 Nil!34526))))

(declare-fun b!2895939 () Bool)

(assert (=> b!2895939 (= e!1829635 (Some!6521 (Cons!34526 (c!471266 (regTwo!18210 r!23079)) Nil!34526)))))

(declare-fun b!2895940 () Bool)

(assert (=> b!2895940 (= e!1829635 e!1829638)))

(declare-fun c!471337 () Bool)

(assert (=> b!2895940 (= c!471337 ((_ is Star!8849) (regTwo!18210 r!23079)))))

(declare-fun b!2895941 () Bool)

(declare-fun e!1829640 () Option!6522)

(declare-fun lt!1021596 () Option!6522)

(declare-fun lt!1021594 () Option!6522)

(assert (=> b!2895941 (= e!1829640 (Some!6521 (++!8247 (v!34647 lt!1021596) (v!34647 lt!1021594))))))

(declare-fun b!2895942 () Bool)

(assert (=> b!2895942 (= e!1829639 lt!1021595)))

(declare-fun b!2895943 () Bool)

(declare-fun c!471338 () Bool)

(assert (=> b!2895943 (= c!471338 ((_ is Some!6521) lt!1021594))))

(assert (=> b!2895943 (= lt!1021594 call!188376)))

(assert (=> b!2895943 (= e!1829634 e!1829640)))

(declare-fun b!2895944 () Bool)

(assert (=> b!2895944 (= c!471342 ((_ is Union!8849) (regTwo!18210 r!23079)))))

(assert (=> b!2895944 (= e!1829638 e!1829641)))

(declare-fun b!2895945 () Bool)

(assert (=> b!2895945 (= e!1829640 None!6521)))

(declare-fun b!2895946 () Bool)

(assert (=> b!2895946 (= e!1829641 e!1829634)))

(assert (=> b!2895946 (= lt!1021596 call!188375)))

(declare-fun c!471340 () Bool)

(assert (=> b!2895946 (= c!471340 ((_ is Some!6521) lt!1021596))))

(declare-fun b!2895947 () Bool)

(assert (=> b!2895947 (= e!1829637 None!6521)))

(declare-fun b!2895948 () Bool)

(assert (=> b!2895948 (= e!1829639 call!188375)))

(assert (= (and d!834872 c!471341) b!2895938))

(assert (= (and d!834872 (not c!471341)) b!2895935))

(assert (= (and b!2895935 c!471336) b!2895947))

(assert (= (and b!2895935 (not c!471336)) b!2895937))

(assert (= (and b!2895937 c!471339) b!2895939))

(assert (= (and b!2895937 (not c!471339)) b!2895940))

(assert (= (and b!2895940 c!471337) b!2895936))

(assert (= (and b!2895940 (not c!471337)) b!2895944))

(assert (= (and b!2895944 c!471342) b!2895933))

(assert (= (and b!2895944 (not c!471342)) b!2895946))

(assert (= (and b!2895933 c!471335) b!2895942))

(assert (= (and b!2895933 (not c!471335)) b!2895948))

(assert (= (and b!2895946 c!471340) b!2895943))

(assert (= (and b!2895946 (not c!471340)) b!2895934))

(assert (= (and b!2895943 c!471338) b!2895941))

(assert (= (and b!2895943 (not c!471338)) b!2895945))

(assert (= (or b!2895948 b!2895946) bm!188371))

(assert (= (or b!2895933 b!2895943) bm!188370))

(declare-fun m!3304133 () Bool)

(assert (=> bm!188370 m!3304133))

(declare-fun m!3304135 () Bool)

(assert (=> bm!188371 m!3304135))

(declare-fun m!3304137 () Bool)

(assert (=> b!2895941 m!3304137))

(assert (=> b!2895766 d!834872))

(declare-fun d!834874 () Bool)

(declare-fun isEmpty!18835 (Option!6522) Bool)

(assert (=> d!834874 (= (isDefined!5086 (getLanguageWitness!556 r!23079)) (not (isEmpty!18835 (getLanguageWitness!556 r!23079))))))

(declare-fun bs!523947 () Bool)

(assert (= bs!523947 d!834874))

(assert (=> bs!523947 m!3304093))

(declare-fun m!3304139 () Bool)

(assert (=> bs!523947 m!3304139))

(assert (=> b!2895759 d!834874))

(declare-fun d!834876 () Bool)

(declare-fun c!471349 () Bool)

(assert (=> d!834876 (= c!471349 ((_ is EmptyExpr!8849) r!23079))))

(declare-fun e!1829644 () Option!6522)

(assert (=> d!834876 (= (getLanguageWitness!556 r!23079) e!1829644)))

(declare-fun b!2895949 () Bool)

(declare-fun e!1829649 () Option!6522)

(declare-fun e!1829647 () Option!6522)

(assert (=> b!2895949 (= e!1829649 e!1829647)))

(declare-fun lt!1021598 () Option!6522)

(declare-fun call!188378 () Option!6522)

(assert (=> b!2895949 (= lt!1021598 call!188378)))

(declare-fun c!471343 () Bool)

(assert (=> b!2895949 (= c!471343 ((_ is Some!6521) lt!1021598))))

(declare-fun b!2895950 () Bool)

(declare-fun e!1829642 () Option!6522)

(assert (=> b!2895950 (= e!1829642 None!6521)))

(declare-fun b!2895951 () Bool)

(declare-fun e!1829645 () Option!6522)

(assert (=> b!2895951 (= e!1829644 e!1829645)))

(declare-fun c!471344 () Bool)

(assert (=> b!2895951 (= c!471344 ((_ is EmptyLang!8849) r!23079))))

(declare-fun b!2895952 () Bool)

(declare-fun e!1829646 () Option!6522)

(assert (=> b!2895952 (= e!1829646 (Some!6521 Nil!34526))))

(declare-fun b!2895953 () Bool)

(declare-fun c!471347 () Bool)

(assert (=> b!2895953 (= c!471347 ((_ is ElementMatch!8849) r!23079))))

(declare-fun e!1829643 () Option!6522)

(assert (=> b!2895953 (= e!1829645 e!1829643)))

(declare-fun bm!188372 () Bool)

(declare-fun c!471350 () Bool)

(assert (=> bm!188372 (= call!188378 (getLanguageWitness!556 (ite c!471350 (regOne!18211 r!23079) (regTwo!18210 r!23079))))))

(declare-fun bm!188373 () Bool)

(declare-fun call!188377 () Option!6522)

(assert (=> bm!188373 (= call!188377 (getLanguageWitness!556 (ite c!471350 (regTwo!18211 r!23079) (regOne!18210 r!23079))))))

(declare-fun b!2895954 () Bool)

(assert (=> b!2895954 (= e!1829644 (Some!6521 Nil!34526))))

(declare-fun b!2895955 () Bool)

(assert (=> b!2895955 (= e!1829643 (Some!6521 (Cons!34526 (c!471266 r!23079) Nil!34526)))))

(declare-fun b!2895956 () Bool)

(assert (=> b!2895956 (= e!1829643 e!1829646)))

(declare-fun c!471345 () Bool)

(assert (=> b!2895956 (= c!471345 ((_ is Star!8849) r!23079))))

(declare-fun b!2895957 () Bool)

(declare-fun e!1829648 () Option!6522)

(declare-fun lt!1021599 () Option!6522)

(declare-fun lt!1021597 () Option!6522)

(assert (=> b!2895957 (= e!1829648 (Some!6521 (++!8247 (v!34647 lt!1021599) (v!34647 lt!1021597))))))

(declare-fun b!2895958 () Bool)

(assert (=> b!2895958 (= e!1829647 lt!1021598)))

(declare-fun b!2895959 () Bool)

(declare-fun c!471346 () Bool)

(assert (=> b!2895959 (= c!471346 ((_ is Some!6521) lt!1021597))))

(assert (=> b!2895959 (= lt!1021597 call!188378)))

(assert (=> b!2895959 (= e!1829642 e!1829648)))

(declare-fun b!2895960 () Bool)

(assert (=> b!2895960 (= c!471350 ((_ is Union!8849) r!23079))))

(assert (=> b!2895960 (= e!1829646 e!1829649)))

(declare-fun b!2895961 () Bool)

(assert (=> b!2895961 (= e!1829648 None!6521)))

(declare-fun b!2895962 () Bool)

(assert (=> b!2895962 (= e!1829649 e!1829642)))

(assert (=> b!2895962 (= lt!1021599 call!188377)))

(declare-fun c!471348 () Bool)

(assert (=> b!2895962 (= c!471348 ((_ is Some!6521) lt!1021599))))

(declare-fun b!2895963 () Bool)

(assert (=> b!2895963 (= e!1829645 None!6521)))

(declare-fun b!2895964 () Bool)

(assert (=> b!2895964 (= e!1829647 call!188377)))

(assert (= (and d!834876 c!471349) b!2895954))

(assert (= (and d!834876 (not c!471349)) b!2895951))

(assert (= (and b!2895951 c!471344) b!2895963))

(assert (= (and b!2895951 (not c!471344)) b!2895953))

(assert (= (and b!2895953 c!471347) b!2895955))

(assert (= (and b!2895953 (not c!471347)) b!2895956))

(assert (= (and b!2895956 c!471345) b!2895952))

(assert (= (and b!2895956 (not c!471345)) b!2895960))

(assert (= (and b!2895960 c!471350) b!2895949))

(assert (= (and b!2895960 (not c!471350)) b!2895962))

(assert (= (and b!2895949 c!471343) b!2895958))

(assert (= (and b!2895949 (not c!471343)) b!2895964))

(assert (= (and b!2895962 c!471348) b!2895959))

(assert (= (and b!2895962 (not c!471348)) b!2895950))

(assert (= (and b!2895959 c!471346) b!2895957))

(assert (= (and b!2895959 (not c!471346)) b!2895961))

(assert (= (or b!2895964 b!2895962) bm!188373))

(assert (= (or b!2895949 b!2895959) bm!188372))

(declare-fun m!3304141 () Bool)

(assert (=> bm!188372 m!3304141))

(declare-fun m!3304143 () Bool)

(assert (=> bm!188373 m!3304143))

(declare-fun m!3304145 () Bool)

(assert (=> b!2895957 m!3304145))

(assert (=> b!2895759 d!834876))

(declare-fun d!834878 () Bool)

(assert (=> d!834878 (= (isDefined!5086 lt!1021572) (not (isEmpty!18835 lt!1021572)))))

(declare-fun bs!523948 () Bool)

(assert (= bs!523948 d!834878))

(declare-fun m!3304153 () Bool)

(assert (=> bs!523948 m!3304153))

(assert (=> b!2895765 d!834878))

(declare-fun b!2896009 () Bool)

(declare-fun e!1829674 () Bool)

(assert (=> b!2896009 (= e!1829674 tp_is_empty!15285)))

(declare-fun b!2896011 () Bool)

(declare-fun tp!929492 () Bool)

(assert (=> b!2896011 (= e!1829674 tp!929492)))

(declare-fun b!2896012 () Bool)

(declare-fun tp!929491 () Bool)

(declare-fun tp!929490 () Bool)

(assert (=> b!2896012 (= e!1829674 (and tp!929491 tp!929490))))

(assert (=> b!2895758 (= tp!929479 e!1829674)))

(declare-fun b!2896010 () Bool)

(declare-fun tp!929493 () Bool)

(declare-fun tp!929494 () Bool)

(assert (=> b!2896010 (= e!1829674 (and tp!929493 tp!929494))))

(assert (= (and b!2895758 ((_ is ElementMatch!8849) (reg!9178 r!23079))) b!2896009))

(assert (= (and b!2895758 ((_ is Concat!14170) (reg!9178 r!23079))) b!2896010))

(assert (= (and b!2895758 ((_ is Star!8849) (reg!9178 r!23079))) b!2896011))

(assert (= (and b!2895758 ((_ is Union!8849) (reg!9178 r!23079))) b!2896012))

(declare-fun b!2896013 () Bool)

(declare-fun e!1829675 () Bool)

(assert (=> b!2896013 (= e!1829675 tp_is_empty!15285)))

(declare-fun b!2896015 () Bool)

(declare-fun tp!929497 () Bool)

(assert (=> b!2896015 (= e!1829675 tp!929497)))

(declare-fun b!2896016 () Bool)

(declare-fun tp!929496 () Bool)

(declare-fun tp!929495 () Bool)

(assert (=> b!2896016 (= e!1829675 (and tp!929496 tp!929495))))

(assert (=> b!2895761 (= tp!929478 e!1829675)))

(declare-fun b!2896014 () Bool)

(declare-fun tp!929498 () Bool)

(declare-fun tp!929499 () Bool)

(assert (=> b!2896014 (= e!1829675 (and tp!929498 tp!929499))))

(assert (= (and b!2895761 ((_ is ElementMatch!8849) (regOne!18211 r!23079))) b!2896013))

(assert (= (and b!2895761 ((_ is Concat!14170) (regOne!18211 r!23079))) b!2896014))

(assert (= (and b!2895761 ((_ is Star!8849) (regOne!18211 r!23079))) b!2896015))

(assert (= (and b!2895761 ((_ is Union!8849) (regOne!18211 r!23079))) b!2896016))

(declare-fun b!2896017 () Bool)

(declare-fun e!1829676 () Bool)

(assert (=> b!2896017 (= e!1829676 tp_is_empty!15285)))

(declare-fun b!2896019 () Bool)

(declare-fun tp!929502 () Bool)

(assert (=> b!2896019 (= e!1829676 tp!929502)))

(declare-fun b!2896020 () Bool)

(declare-fun tp!929501 () Bool)

(declare-fun tp!929500 () Bool)

(assert (=> b!2896020 (= e!1829676 (and tp!929501 tp!929500))))

(assert (=> b!2895761 (= tp!929476 e!1829676)))

(declare-fun b!2896018 () Bool)

(declare-fun tp!929503 () Bool)

(declare-fun tp!929504 () Bool)

(assert (=> b!2896018 (= e!1829676 (and tp!929503 tp!929504))))

(assert (= (and b!2895761 ((_ is ElementMatch!8849) (regTwo!18211 r!23079))) b!2896017))

(assert (= (and b!2895761 ((_ is Concat!14170) (regTwo!18211 r!23079))) b!2896018))

(assert (= (and b!2895761 ((_ is Star!8849) (regTwo!18211 r!23079))) b!2896019))

(assert (= (and b!2895761 ((_ is Union!8849) (regTwo!18211 r!23079))) b!2896020))

(declare-fun b!2896025 () Bool)

(declare-fun e!1829678 () Bool)

(assert (=> b!2896025 (= e!1829678 tp_is_empty!15285)))

(declare-fun b!2896027 () Bool)

(declare-fun tp!929507 () Bool)

(assert (=> b!2896027 (= e!1829678 tp!929507)))

(declare-fun b!2896028 () Bool)

(declare-fun tp!929506 () Bool)

(declare-fun tp!929505 () Bool)

(assert (=> b!2896028 (= e!1829678 (and tp!929506 tp!929505))))

(assert (=> b!2895760 (= tp!929475 e!1829678)))

(declare-fun b!2896026 () Bool)

(declare-fun tp!929508 () Bool)

(declare-fun tp!929509 () Bool)

(assert (=> b!2896026 (= e!1829678 (and tp!929508 tp!929509))))

(assert (= (and b!2895760 ((_ is ElementMatch!8849) (regOne!18210 r!23079))) b!2896025))

(assert (= (and b!2895760 ((_ is Concat!14170) (regOne!18210 r!23079))) b!2896026))

(assert (= (and b!2895760 ((_ is Star!8849) (regOne!18210 r!23079))) b!2896027))

(assert (= (and b!2895760 ((_ is Union!8849) (regOne!18210 r!23079))) b!2896028))

(declare-fun b!2896033 () Bool)

(declare-fun e!1829680 () Bool)

(assert (=> b!2896033 (= e!1829680 tp_is_empty!15285)))

(declare-fun b!2896035 () Bool)

(declare-fun tp!929518 () Bool)

(assert (=> b!2896035 (= e!1829680 tp!929518)))

(declare-fun b!2896036 () Bool)

(declare-fun tp!929517 () Bool)

(declare-fun tp!929514 () Bool)

(assert (=> b!2896036 (= e!1829680 (and tp!929517 tp!929514))))

(assert (=> b!2895760 (= tp!929477 e!1829680)))

(declare-fun b!2896034 () Bool)

(declare-fun tp!929519 () Bool)

(declare-fun tp!929520 () Bool)

(assert (=> b!2896034 (= e!1829680 (and tp!929519 tp!929520))))

(assert (= (and b!2895760 ((_ is ElementMatch!8849) (regTwo!18210 r!23079))) b!2896033))

(assert (= (and b!2895760 ((_ is Concat!14170) (regTwo!18210 r!23079))) b!2896034))

(assert (= (and b!2895760 ((_ is Star!8849) (regTwo!18210 r!23079))) b!2896035))

(assert (= (and b!2895760 ((_ is Union!8849) (regTwo!18210 r!23079))) b!2896036))

(check-sat (not b!2896018) (not b!2896014) (not d!834874) (not bm!188372) (not b!2896011) (not b!2895925) (not d!834878) (not bm!188370) (not b!2895799) (not b!2896020) (not b!2896035) (not b!2896027) (not bm!188349) (not b!2896010) (not bm!188348) (not b!2896026) (not b!2895941) (not bm!188367) (not b!2896012) (not b!2896028) tp_is_empty!15285 (not b!2896019) (not bm!188371) (not bm!188366) (not b!2895957) (not bm!188373) (not bm!188345) (not b!2896034) (not b!2896016) (not b!2895832) (not b!2896036) (not bm!188346) (not b!2896015))
(check-sat)
(get-model)

(declare-fun d!834884 () Bool)

(assert (=> d!834884 (= (isEmpty!18835 (getLanguageWitness!556 r!23079)) (not ((_ is Some!6521) (getLanguageWitness!556 r!23079))))))

(assert (=> d!834874 d!834884))

(declare-fun d!834886 () Bool)

(assert (=> d!834886 (= (isEmpty!18835 lt!1021572) (not ((_ is Some!6521) lt!1021572)))))

(assert (=> d!834878 d!834886))

(declare-fun bm!188382 () Bool)

(declare-fun call!188388 () Bool)

(declare-fun call!188387 () Bool)

(assert (=> bm!188382 (= call!188388 call!188387)))

(declare-fun b!2896059 () Bool)

(declare-fun res!1197688 () Bool)

(declare-fun e!1829687 () Bool)

(assert (=> b!2896059 (=> res!1197688 e!1829687)))

(assert (=> b!2896059 (= res!1197688 (not ((_ is Concat!14170) (ite c!471276 (regTwo!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079))))))))

(declare-fun e!1829690 () Bool)

(assert (=> b!2896059 (= e!1829690 e!1829687)))

(declare-fun b!2896060 () Bool)

(declare-fun e!1829692 () Bool)

(assert (=> b!2896060 (= e!1829692 e!1829690)))

(declare-fun c!471364 () Bool)

(assert (=> b!2896060 (= c!471364 ((_ is Union!8849) (ite c!471276 (regTwo!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))))))

(declare-fun bm!188383 () Bool)

(declare-fun c!471363 () Bool)

(assert (=> bm!188383 (= call!188387 (validRegex!3622 (ite c!471363 (reg!9178 (ite c!471276 (regTwo!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))) (ite c!471364 (regOne!18211 (ite c!471276 (regTwo!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))) (regOne!18210 (ite c!471276 (regTwo!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079))))))))))

(declare-fun bm!188384 () Bool)

(declare-fun call!188389 () Bool)

(assert (=> bm!188384 (= call!188389 (validRegex!3622 (ite c!471364 (regTwo!18211 (ite c!471276 (regTwo!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))) (regTwo!18210 (ite c!471276 (regTwo!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))))))))

(declare-fun b!2896061 () Bool)

(declare-fun e!1829689 () Bool)

(assert (=> b!2896061 (= e!1829687 e!1829689)))

(declare-fun res!1197690 () Bool)

(assert (=> b!2896061 (=> (not res!1197690) (not e!1829689))))

(assert (=> b!2896061 (= res!1197690 call!188388)))

(declare-fun b!2896063 () Bool)

(declare-fun e!1829686 () Bool)

(assert (=> b!2896063 (= e!1829686 call!188387)))

(declare-fun b!2896064 () Bool)

(assert (=> b!2896064 (= e!1829689 call!188389)))

(declare-fun b!2896065 () Bool)

(assert (=> b!2896065 (= e!1829692 e!1829686)))

(declare-fun res!1197692 () Bool)

(assert (=> b!2896065 (= res!1197692 (not (nullable!2748 (reg!9178 (ite c!471276 (regTwo!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))))))))

(assert (=> b!2896065 (=> (not res!1197692) (not e!1829686))))

(declare-fun b!2896066 () Bool)

(declare-fun e!1829691 () Bool)

(assert (=> b!2896066 (= e!1829691 call!188389)))

(declare-fun b!2896067 () Bool)

(declare-fun e!1829688 () Bool)

(assert (=> b!2896067 (= e!1829688 e!1829692)))

(assert (=> b!2896067 (= c!471363 ((_ is Star!8849) (ite c!471276 (regTwo!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))))))

(declare-fun d!834888 () Bool)

(declare-fun res!1197689 () Bool)

(assert (=> d!834888 (=> res!1197689 e!1829688)))

(assert (=> d!834888 (= res!1197689 ((_ is ElementMatch!8849) (ite c!471276 (regTwo!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))))))

(assert (=> d!834888 (= (validRegex!3622 (ite c!471276 (regTwo!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))) e!1829688)))

(declare-fun b!2896062 () Bool)

(declare-fun res!1197691 () Bool)

(assert (=> b!2896062 (=> (not res!1197691) (not e!1829691))))

(assert (=> b!2896062 (= res!1197691 call!188388)))

(assert (=> b!2896062 (= e!1829690 e!1829691)))

(assert (= (and d!834888 (not res!1197689)) b!2896067))

(assert (= (and b!2896067 c!471363) b!2896065))

(assert (= (and b!2896067 (not c!471363)) b!2896060))

(assert (= (and b!2896065 res!1197692) b!2896063))

(assert (= (and b!2896060 c!471364) b!2896062))

(assert (= (and b!2896060 (not c!471364)) b!2896059))

(assert (= (and b!2896062 res!1197691) b!2896066))

(assert (= (and b!2896059 (not res!1197688)) b!2896061))

(assert (= (and b!2896061 res!1197690) b!2896064))

(assert (= (or b!2896066 b!2896064) bm!188384))

(assert (= (or b!2896062 b!2896061) bm!188382))

(assert (= (or b!2896063 bm!188382) bm!188383))

(declare-fun m!3304167 () Bool)

(assert (=> bm!188383 m!3304167))

(declare-fun m!3304169 () Bool)

(assert (=> bm!188384 m!3304169))

(declare-fun m!3304171 () Bool)

(assert (=> b!2896065 m!3304171))

(assert (=> bm!188346 d!834888))

(declare-fun d!834890 () Bool)

(declare-fun nullableFct!838 (Regex!8849) Bool)

(assert (=> d!834890 (= (nullable!2748 (reg!9178 r!23079)) (nullableFct!838 (reg!9178 r!23079)))))

(declare-fun bs!523949 () Bool)

(assert (= bs!523949 d!834890))

(declare-fun m!3304173 () Bool)

(assert (=> bs!523949 m!3304173))

(assert (=> b!2895832 d!834890))

(declare-fun b!2896077 () Bool)

(declare-fun e!1829698 () List!34650)

(assert (=> b!2896077 (= e!1829698 (Cons!34526 (h!39946 (v!34647 lt!1021599)) (++!8247 (t!233693 (v!34647 lt!1021599)) (v!34647 lt!1021597))))))

(declare-fun e!1829697 () Bool)

(declare-fun b!2896079 () Bool)

(declare-fun lt!1021605 () List!34650)

(assert (=> b!2896079 (= e!1829697 (or (not (= (v!34647 lt!1021597) Nil!34526)) (= lt!1021605 (v!34647 lt!1021599))))))

(declare-fun b!2896076 () Bool)

(assert (=> b!2896076 (= e!1829698 (v!34647 lt!1021597))))

(declare-fun d!834892 () Bool)

(assert (=> d!834892 e!1829697))

(declare-fun res!1197698 () Bool)

(assert (=> d!834892 (=> (not res!1197698) (not e!1829697))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4729 (List!34650) (InoxSet C!17880))

(assert (=> d!834892 (= res!1197698 (= (content!4729 lt!1021605) ((_ map or) (content!4729 (v!34647 lt!1021599)) (content!4729 (v!34647 lt!1021597)))))))

(assert (=> d!834892 (= lt!1021605 e!1829698)))

(declare-fun c!471367 () Bool)

(assert (=> d!834892 (= c!471367 ((_ is Nil!34526) (v!34647 lt!1021599)))))

(assert (=> d!834892 (= (++!8247 (v!34647 lt!1021599) (v!34647 lt!1021597)) lt!1021605)))

(declare-fun b!2896078 () Bool)

(declare-fun res!1197697 () Bool)

(assert (=> b!2896078 (=> (not res!1197697) (not e!1829697))))

(declare-fun size!26348 (List!34650) Int)

(assert (=> b!2896078 (= res!1197697 (= (size!26348 lt!1021605) (+ (size!26348 (v!34647 lt!1021599)) (size!26348 (v!34647 lt!1021597)))))))

(assert (= (and d!834892 c!471367) b!2896076))

(assert (= (and d!834892 (not c!471367)) b!2896077))

(assert (= (and d!834892 res!1197698) b!2896078))

(assert (= (and b!2896078 res!1197697) b!2896079))

(declare-fun m!3304175 () Bool)

(assert (=> b!2896077 m!3304175))

(declare-fun m!3304177 () Bool)

(assert (=> d!834892 m!3304177))

(declare-fun m!3304179 () Bool)

(assert (=> d!834892 m!3304179))

(declare-fun m!3304181 () Bool)

(assert (=> d!834892 m!3304181))

(declare-fun m!3304183 () Bool)

(assert (=> b!2896078 m!3304183))

(declare-fun m!3304185 () Bool)

(assert (=> b!2896078 m!3304185))

(declare-fun m!3304187 () Bool)

(assert (=> b!2896078 m!3304187))

(assert (=> b!2895957 d!834892))

(declare-fun bm!188385 () Bool)

(declare-fun call!188391 () Bool)

(declare-fun call!188390 () Bool)

(assert (=> bm!188385 (= call!188391 call!188390)))

(declare-fun b!2896080 () Bool)

(declare-fun res!1197699 () Bool)

(declare-fun e!1829700 () Bool)

(assert (=> b!2896080 (=> res!1197699 e!1829700)))

(assert (=> b!2896080 (= res!1197699 (not ((_ is Concat!14170) (ite c!471275 (reg!9178 (regOne!18210 r!23079)) (ite c!471276 (regOne!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079)))))))))

(declare-fun e!1829703 () Bool)

(assert (=> b!2896080 (= e!1829703 e!1829700)))

(declare-fun b!2896081 () Bool)

(declare-fun e!1829705 () Bool)

(assert (=> b!2896081 (= e!1829705 e!1829703)))

(declare-fun c!471369 () Bool)

(assert (=> b!2896081 (= c!471369 ((_ is Union!8849) (ite c!471275 (reg!9178 (regOne!18210 r!23079)) (ite c!471276 (regOne!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079))))))))

(declare-fun bm!188386 () Bool)

(declare-fun c!471368 () Bool)

(assert (=> bm!188386 (= call!188390 (validRegex!3622 (ite c!471368 (reg!9178 (ite c!471275 (reg!9178 (regOne!18210 r!23079)) (ite c!471276 (regOne!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079))))) (ite c!471369 (regOne!18211 (ite c!471275 (reg!9178 (regOne!18210 r!23079)) (ite c!471276 (regOne!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079))))) (regOne!18210 (ite c!471275 (reg!9178 (regOne!18210 r!23079)) (ite c!471276 (regOne!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079)))))))))))

(declare-fun bm!188387 () Bool)

(declare-fun call!188392 () Bool)

(assert (=> bm!188387 (= call!188392 (validRegex!3622 (ite c!471369 (regTwo!18211 (ite c!471275 (reg!9178 (regOne!18210 r!23079)) (ite c!471276 (regOne!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079))))) (regTwo!18210 (ite c!471275 (reg!9178 (regOne!18210 r!23079)) (ite c!471276 (regOne!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079))))))))))

(declare-fun b!2896082 () Bool)

(declare-fun e!1829702 () Bool)

(assert (=> b!2896082 (= e!1829700 e!1829702)))

(declare-fun res!1197701 () Bool)

(assert (=> b!2896082 (=> (not res!1197701) (not e!1829702))))

(assert (=> b!2896082 (= res!1197701 call!188391)))

(declare-fun b!2896084 () Bool)

(declare-fun e!1829699 () Bool)

(assert (=> b!2896084 (= e!1829699 call!188390)))

(declare-fun b!2896085 () Bool)

(assert (=> b!2896085 (= e!1829702 call!188392)))

(declare-fun b!2896086 () Bool)

(assert (=> b!2896086 (= e!1829705 e!1829699)))

(declare-fun res!1197703 () Bool)

(assert (=> b!2896086 (= res!1197703 (not (nullable!2748 (reg!9178 (ite c!471275 (reg!9178 (regOne!18210 r!23079)) (ite c!471276 (regOne!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079))))))))))

(assert (=> b!2896086 (=> (not res!1197703) (not e!1829699))))

(declare-fun b!2896087 () Bool)

(declare-fun e!1829704 () Bool)

(assert (=> b!2896087 (= e!1829704 call!188392)))

(declare-fun b!2896088 () Bool)

(declare-fun e!1829701 () Bool)

(assert (=> b!2896088 (= e!1829701 e!1829705)))

(assert (=> b!2896088 (= c!471368 ((_ is Star!8849) (ite c!471275 (reg!9178 (regOne!18210 r!23079)) (ite c!471276 (regOne!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079))))))))

(declare-fun d!834894 () Bool)

(declare-fun res!1197700 () Bool)

(assert (=> d!834894 (=> res!1197700 e!1829701)))

(assert (=> d!834894 (= res!1197700 ((_ is ElementMatch!8849) (ite c!471275 (reg!9178 (regOne!18210 r!23079)) (ite c!471276 (regOne!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079))))))))

(assert (=> d!834894 (= (validRegex!3622 (ite c!471275 (reg!9178 (regOne!18210 r!23079)) (ite c!471276 (regOne!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079))))) e!1829701)))

(declare-fun b!2896083 () Bool)

(declare-fun res!1197702 () Bool)

(assert (=> b!2896083 (=> (not res!1197702) (not e!1829704))))

(assert (=> b!2896083 (= res!1197702 call!188391)))

(assert (=> b!2896083 (= e!1829703 e!1829704)))

(assert (= (and d!834894 (not res!1197700)) b!2896088))

(assert (= (and b!2896088 c!471368) b!2896086))

(assert (= (and b!2896088 (not c!471368)) b!2896081))

(assert (= (and b!2896086 res!1197703) b!2896084))

(assert (= (and b!2896081 c!471369) b!2896083))

(assert (= (and b!2896081 (not c!471369)) b!2896080))

(assert (= (and b!2896083 res!1197702) b!2896087))

(assert (= (and b!2896080 (not res!1197699)) b!2896082))

(assert (= (and b!2896082 res!1197701) b!2896085))

(assert (= (or b!2896087 b!2896085) bm!188387))

(assert (= (or b!2896083 b!2896082) bm!188385))

(assert (= (or b!2896084 bm!188385) bm!188386))

(declare-fun m!3304189 () Bool)

(assert (=> bm!188386 m!3304189))

(declare-fun m!3304191 () Bool)

(assert (=> bm!188387 m!3304191))

(declare-fun m!3304193 () Bool)

(assert (=> b!2896086 m!3304193))

(assert (=> bm!188345 d!834894))

(declare-fun b!2896090 () Bool)

(declare-fun e!1829707 () List!34650)

(assert (=> b!2896090 (= e!1829707 (Cons!34526 (h!39946 (v!34647 lt!1021593)) (++!8247 (t!233693 (v!34647 lt!1021593)) (v!34647 lt!1021591))))))

(declare-fun lt!1021606 () List!34650)

(declare-fun b!2896092 () Bool)

(declare-fun e!1829706 () Bool)

(assert (=> b!2896092 (= e!1829706 (or (not (= (v!34647 lt!1021591) Nil!34526)) (= lt!1021606 (v!34647 lt!1021593))))))

(declare-fun b!2896089 () Bool)

(assert (=> b!2896089 (= e!1829707 (v!34647 lt!1021591))))

(declare-fun d!834896 () Bool)

(assert (=> d!834896 e!1829706))

(declare-fun res!1197705 () Bool)

(assert (=> d!834896 (=> (not res!1197705) (not e!1829706))))

(assert (=> d!834896 (= res!1197705 (= (content!4729 lt!1021606) ((_ map or) (content!4729 (v!34647 lt!1021593)) (content!4729 (v!34647 lt!1021591)))))))

(assert (=> d!834896 (= lt!1021606 e!1829707)))

(declare-fun c!471370 () Bool)

(assert (=> d!834896 (= c!471370 ((_ is Nil!34526) (v!34647 lt!1021593)))))

(assert (=> d!834896 (= (++!8247 (v!34647 lt!1021593) (v!34647 lt!1021591)) lt!1021606)))

(declare-fun b!2896091 () Bool)

(declare-fun res!1197704 () Bool)

(assert (=> b!2896091 (=> (not res!1197704) (not e!1829706))))

(assert (=> b!2896091 (= res!1197704 (= (size!26348 lt!1021606) (+ (size!26348 (v!34647 lt!1021593)) (size!26348 (v!34647 lt!1021591)))))))

(assert (= (and d!834896 c!471370) b!2896089))

(assert (= (and d!834896 (not c!471370)) b!2896090))

(assert (= (and d!834896 res!1197705) b!2896091))

(assert (= (and b!2896091 res!1197704) b!2896092))

(declare-fun m!3304195 () Bool)

(assert (=> b!2896090 m!3304195))

(declare-fun m!3304197 () Bool)

(assert (=> d!834896 m!3304197))

(declare-fun m!3304199 () Bool)

(assert (=> d!834896 m!3304199))

(declare-fun m!3304201 () Bool)

(assert (=> d!834896 m!3304201))

(declare-fun m!3304203 () Bool)

(assert (=> b!2896091 m!3304203))

(declare-fun m!3304205 () Bool)

(assert (=> b!2896091 m!3304205))

(declare-fun m!3304207 () Bool)

(assert (=> b!2896091 m!3304207))

(assert (=> b!2895925 d!834896))

(declare-fun b!2896094 () Bool)

(declare-fun e!1829709 () List!34650)

(assert (=> b!2896094 (= e!1829709 (Cons!34526 (h!39946 (v!34647 lt!1021596)) (++!8247 (t!233693 (v!34647 lt!1021596)) (v!34647 lt!1021594))))))

(declare-fun lt!1021607 () List!34650)

(declare-fun b!2896096 () Bool)

(declare-fun e!1829708 () Bool)

(assert (=> b!2896096 (= e!1829708 (or (not (= (v!34647 lt!1021594) Nil!34526)) (= lt!1021607 (v!34647 lt!1021596))))))

(declare-fun b!2896093 () Bool)

(assert (=> b!2896093 (= e!1829709 (v!34647 lt!1021594))))

(declare-fun d!834898 () Bool)

(assert (=> d!834898 e!1829708))

(declare-fun res!1197707 () Bool)

(assert (=> d!834898 (=> (not res!1197707) (not e!1829708))))

(assert (=> d!834898 (= res!1197707 (= (content!4729 lt!1021607) ((_ map or) (content!4729 (v!34647 lt!1021596)) (content!4729 (v!34647 lt!1021594)))))))

(assert (=> d!834898 (= lt!1021607 e!1829709)))

(declare-fun c!471371 () Bool)

(assert (=> d!834898 (= c!471371 ((_ is Nil!34526) (v!34647 lt!1021596)))))

(assert (=> d!834898 (= (++!8247 (v!34647 lt!1021596) (v!34647 lt!1021594)) lt!1021607)))

(declare-fun b!2896095 () Bool)

(declare-fun res!1197706 () Bool)

(assert (=> b!2896095 (=> (not res!1197706) (not e!1829708))))

(assert (=> b!2896095 (= res!1197706 (= (size!26348 lt!1021607) (+ (size!26348 (v!34647 lt!1021596)) (size!26348 (v!34647 lt!1021594)))))))

(assert (= (and d!834898 c!471371) b!2896093))

(assert (= (and d!834898 (not c!471371)) b!2896094))

(assert (= (and d!834898 res!1197707) b!2896095))

(assert (= (and b!2896095 res!1197706) b!2896096))

(declare-fun m!3304209 () Bool)

(assert (=> b!2896094 m!3304209))

(declare-fun m!3304211 () Bool)

(assert (=> d!834898 m!3304211))

(declare-fun m!3304213 () Bool)

(assert (=> d!834898 m!3304213))

(declare-fun m!3304215 () Bool)

(assert (=> d!834898 m!3304215))

(declare-fun m!3304217 () Bool)

(assert (=> b!2896095 m!3304217))

(declare-fun m!3304219 () Bool)

(assert (=> b!2896095 m!3304219))

(declare-fun m!3304221 () Bool)

(assert (=> b!2896095 m!3304221))

(assert (=> b!2895941 d!834898))

(declare-fun d!834900 () Bool)

(assert (=> d!834900 (= (nullable!2748 (reg!9178 (regOne!18210 r!23079))) (nullableFct!838 (reg!9178 (regOne!18210 r!23079))))))

(declare-fun bs!523950 () Bool)

(assert (= bs!523950 d!834900))

(declare-fun m!3304223 () Bool)

(assert (=> bs!523950 m!3304223))

(assert (=> b!2895799 d!834900))

(declare-fun d!834902 () Bool)

(declare-fun c!471378 () Bool)

(assert (=> d!834902 (= c!471378 ((_ is EmptyExpr!8849) (ite c!471350 (regTwo!18211 r!23079) (regOne!18210 r!23079))))))

(declare-fun e!1829712 () Option!6522)

(assert (=> d!834902 (= (getLanguageWitness!556 (ite c!471350 (regTwo!18211 r!23079) (regOne!18210 r!23079))) e!1829712)))

(declare-fun b!2896097 () Bool)

(declare-fun e!1829717 () Option!6522)

(declare-fun e!1829715 () Option!6522)

(assert (=> b!2896097 (= e!1829717 e!1829715)))

(declare-fun lt!1021609 () Option!6522)

(declare-fun call!188394 () Option!6522)

(assert (=> b!2896097 (= lt!1021609 call!188394)))

(declare-fun c!471372 () Bool)

(assert (=> b!2896097 (= c!471372 ((_ is Some!6521) lt!1021609))))

(declare-fun b!2896098 () Bool)

(declare-fun e!1829710 () Option!6522)

(assert (=> b!2896098 (= e!1829710 None!6521)))

(declare-fun b!2896099 () Bool)

(declare-fun e!1829713 () Option!6522)

(assert (=> b!2896099 (= e!1829712 e!1829713)))

(declare-fun c!471373 () Bool)

(assert (=> b!2896099 (= c!471373 ((_ is EmptyLang!8849) (ite c!471350 (regTwo!18211 r!23079) (regOne!18210 r!23079))))))

(declare-fun b!2896100 () Bool)

(declare-fun e!1829714 () Option!6522)

(assert (=> b!2896100 (= e!1829714 (Some!6521 Nil!34526))))

(declare-fun b!2896101 () Bool)

(declare-fun c!471376 () Bool)

(assert (=> b!2896101 (= c!471376 ((_ is ElementMatch!8849) (ite c!471350 (regTwo!18211 r!23079) (regOne!18210 r!23079))))))

(declare-fun e!1829711 () Option!6522)

(assert (=> b!2896101 (= e!1829713 e!1829711)))

(declare-fun bm!188388 () Bool)

(declare-fun c!471379 () Bool)

(assert (=> bm!188388 (= call!188394 (getLanguageWitness!556 (ite c!471379 (regOne!18211 (ite c!471350 (regTwo!18211 r!23079) (regOne!18210 r!23079))) (regTwo!18210 (ite c!471350 (regTwo!18211 r!23079) (regOne!18210 r!23079))))))))

(declare-fun call!188393 () Option!6522)

(declare-fun bm!188389 () Bool)

(assert (=> bm!188389 (= call!188393 (getLanguageWitness!556 (ite c!471379 (regTwo!18211 (ite c!471350 (regTwo!18211 r!23079) (regOne!18210 r!23079))) (regOne!18210 (ite c!471350 (regTwo!18211 r!23079) (regOne!18210 r!23079))))))))

(declare-fun b!2896102 () Bool)

(assert (=> b!2896102 (= e!1829712 (Some!6521 Nil!34526))))

(declare-fun b!2896103 () Bool)

(assert (=> b!2896103 (= e!1829711 (Some!6521 (Cons!34526 (c!471266 (ite c!471350 (regTwo!18211 r!23079) (regOne!18210 r!23079))) Nil!34526)))))

(declare-fun b!2896104 () Bool)

(assert (=> b!2896104 (= e!1829711 e!1829714)))

(declare-fun c!471374 () Bool)

(assert (=> b!2896104 (= c!471374 ((_ is Star!8849) (ite c!471350 (regTwo!18211 r!23079) (regOne!18210 r!23079))))))

(declare-fun b!2896105 () Bool)

(declare-fun e!1829716 () Option!6522)

(declare-fun lt!1021610 () Option!6522)

(declare-fun lt!1021608 () Option!6522)

(assert (=> b!2896105 (= e!1829716 (Some!6521 (++!8247 (v!34647 lt!1021610) (v!34647 lt!1021608))))))

(declare-fun b!2896106 () Bool)

(assert (=> b!2896106 (= e!1829715 lt!1021609)))

(declare-fun b!2896107 () Bool)

(declare-fun c!471375 () Bool)

(assert (=> b!2896107 (= c!471375 ((_ is Some!6521) lt!1021608))))

(assert (=> b!2896107 (= lt!1021608 call!188394)))

(assert (=> b!2896107 (= e!1829710 e!1829716)))

(declare-fun b!2896108 () Bool)

(assert (=> b!2896108 (= c!471379 ((_ is Union!8849) (ite c!471350 (regTwo!18211 r!23079) (regOne!18210 r!23079))))))

(assert (=> b!2896108 (= e!1829714 e!1829717)))

(declare-fun b!2896109 () Bool)

(assert (=> b!2896109 (= e!1829716 None!6521)))

(declare-fun b!2896110 () Bool)

(assert (=> b!2896110 (= e!1829717 e!1829710)))

(assert (=> b!2896110 (= lt!1021610 call!188393)))

(declare-fun c!471377 () Bool)

(assert (=> b!2896110 (= c!471377 ((_ is Some!6521) lt!1021610))))

(declare-fun b!2896111 () Bool)

(assert (=> b!2896111 (= e!1829713 None!6521)))

(declare-fun b!2896112 () Bool)

(assert (=> b!2896112 (= e!1829715 call!188393)))

(assert (= (and d!834902 c!471378) b!2896102))

(assert (= (and d!834902 (not c!471378)) b!2896099))

(assert (= (and b!2896099 c!471373) b!2896111))

(assert (= (and b!2896099 (not c!471373)) b!2896101))

(assert (= (and b!2896101 c!471376) b!2896103))

(assert (= (and b!2896101 (not c!471376)) b!2896104))

(assert (= (and b!2896104 c!471374) b!2896100))

(assert (= (and b!2896104 (not c!471374)) b!2896108))

(assert (= (and b!2896108 c!471379) b!2896097))

(assert (= (and b!2896108 (not c!471379)) b!2896110))

(assert (= (and b!2896097 c!471372) b!2896106))

(assert (= (and b!2896097 (not c!471372)) b!2896112))

(assert (= (and b!2896110 c!471377) b!2896107))

(assert (= (and b!2896110 (not c!471377)) b!2896098))

(assert (= (and b!2896107 c!471375) b!2896105))

(assert (= (and b!2896107 (not c!471375)) b!2896109))

(assert (= (or b!2896112 b!2896110) bm!188389))

(assert (= (or b!2896097 b!2896107) bm!188388))

(declare-fun m!3304225 () Bool)

(assert (=> bm!188388 m!3304225))

(declare-fun m!3304227 () Bool)

(assert (=> bm!188389 m!3304227))

(declare-fun m!3304229 () Bool)

(assert (=> b!2896105 m!3304229))

(assert (=> bm!188373 d!834902))

(declare-fun bm!188390 () Bool)

(declare-fun call!188396 () Bool)

(declare-fun call!188395 () Bool)

(assert (=> bm!188390 (= call!188396 call!188395)))

(declare-fun b!2896113 () Bool)

(declare-fun res!1197708 () Bool)

(declare-fun e!1829719 () Bool)

(assert (=> b!2896113 (=> res!1197708 e!1829719)))

(assert (=> b!2896113 (= res!1197708 (not ((_ is Concat!14170) (ite c!471290 (regTwo!18211 r!23079) (regTwo!18210 r!23079)))))))

(declare-fun e!1829722 () Bool)

(assert (=> b!2896113 (= e!1829722 e!1829719)))

(declare-fun b!2896114 () Bool)

(declare-fun e!1829724 () Bool)

(assert (=> b!2896114 (= e!1829724 e!1829722)))

(declare-fun c!471381 () Bool)

(assert (=> b!2896114 (= c!471381 ((_ is Union!8849) (ite c!471290 (regTwo!18211 r!23079) (regTwo!18210 r!23079))))))

(declare-fun c!471380 () Bool)

(declare-fun bm!188391 () Bool)

(assert (=> bm!188391 (= call!188395 (validRegex!3622 (ite c!471380 (reg!9178 (ite c!471290 (regTwo!18211 r!23079) (regTwo!18210 r!23079))) (ite c!471381 (regOne!18211 (ite c!471290 (regTwo!18211 r!23079) (regTwo!18210 r!23079))) (regOne!18210 (ite c!471290 (regTwo!18211 r!23079) (regTwo!18210 r!23079)))))))))

(declare-fun bm!188392 () Bool)

(declare-fun call!188397 () Bool)

(assert (=> bm!188392 (= call!188397 (validRegex!3622 (ite c!471381 (regTwo!18211 (ite c!471290 (regTwo!18211 r!23079) (regTwo!18210 r!23079))) (regTwo!18210 (ite c!471290 (regTwo!18211 r!23079) (regTwo!18210 r!23079))))))))

(declare-fun b!2896115 () Bool)

(declare-fun e!1829721 () Bool)

(assert (=> b!2896115 (= e!1829719 e!1829721)))

(declare-fun res!1197710 () Bool)

(assert (=> b!2896115 (=> (not res!1197710) (not e!1829721))))

(assert (=> b!2896115 (= res!1197710 call!188396)))

(declare-fun b!2896117 () Bool)

(declare-fun e!1829718 () Bool)

(assert (=> b!2896117 (= e!1829718 call!188395)))

(declare-fun b!2896118 () Bool)

(assert (=> b!2896118 (= e!1829721 call!188397)))

(declare-fun b!2896119 () Bool)

(assert (=> b!2896119 (= e!1829724 e!1829718)))

(declare-fun res!1197712 () Bool)

(assert (=> b!2896119 (= res!1197712 (not (nullable!2748 (reg!9178 (ite c!471290 (regTwo!18211 r!23079) (regTwo!18210 r!23079))))))))

(assert (=> b!2896119 (=> (not res!1197712) (not e!1829718))))

(declare-fun b!2896120 () Bool)

(declare-fun e!1829723 () Bool)

(assert (=> b!2896120 (= e!1829723 call!188397)))

(declare-fun b!2896121 () Bool)

(declare-fun e!1829720 () Bool)

(assert (=> b!2896121 (= e!1829720 e!1829724)))

(assert (=> b!2896121 (= c!471380 ((_ is Star!8849) (ite c!471290 (regTwo!18211 r!23079) (regTwo!18210 r!23079))))))

(declare-fun d!834904 () Bool)

(declare-fun res!1197709 () Bool)

(assert (=> d!834904 (=> res!1197709 e!1829720)))

(assert (=> d!834904 (= res!1197709 ((_ is ElementMatch!8849) (ite c!471290 (regTwo!18211 r!23079) (regTwo!18210 r!23079))))))

(assert (=> d!834904 (= (validRegex!3622 (ite c!471290 (regTwo!18211 r!23079) (regTwo!18210 r!23079))) e!1829720)))

(declare-fun b!2896116 () Bool)

(declare-fun res!1197711 () Bool)

(assert (=> b!2896116 (=> (not res!1197711) (not e!1829723))))

(assert (=> b!2896116 (= res!1197711 call!188396)))

(assert (=> b!2896116 (= e!1829722 e!1829723)))

(assert (= (and d!834904 (not res!1197709)) b!2896121))

(assert (= (and b!2896121 c!471380) b!2896119))

(assert (= (and b!2896121 (not c!471380)) b!2896114))

(assert (= (and b!2896119 res!1197712) b!2896117))

(assert (= (and b!2896114 c!471381) b!2896116))

(assert (= (and b!2896114 (not c!471381)) b!2896113))

(assert (= (and b!2896116 res!1197711) b!2896120))

(assert (= (and b!2896113 (not res!1197708)) b!2896115))

(assert (= (and b!2896115 res!1197710) b!2896118))

(assert (= (or b!2896120 b!2896118) bm!188392))

(assert (= (or b!2896116 b!2896115) bm!188390))

(assert (= (or b!2896117 bm!188390) bm!188391))

(declare-fun m!3304231 () Bool)

(assert (=> bm!188391 m!3304231))

(declare-fun m!3304233 () Bool)

(assert (=> bm!188392 m!3304233))

(declare-fun m!3304235 () Bool)

(assert (=> b!2896119 m!3304235))

(assert (=> bm!188349 d!834904))

(declare-fun d!834906 () Bool)

(declare-fun c!471388 () Bool)

(assert (=> d!834906 (= c!471388 ((_ is EmptyExpr!8849) (ite c!471334 (regTwo!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079)))))))

(declare-fun e!1829727 () Option!6522)

(assert (=> d!834906 (= (getLanguageWitness!556 (ite c!471334 (regTwo!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079)))) e!1829727)))

(declare-fun b!2896122 () Bool)

(declare-fun e!1829732 () Option!6522)

(declare-fun e!1829730 () Option!6522)

(assert (=> b!2896122 (= e!1829732 e!1829730)))

(declare-fun lt!1021612 () Option!6522)

(declare-fun call!188399 () Option!6522)

(assert (=> b!2896122 (= lt!1021612 call!188399)))

(declare-fun c!471382 () Bool)

(assert (=> b!2896122 (= c!471382 ((_ is Some!6521) lt!1021612))))

(declare-fun b!2896123 () Bool)

(declare-fun e!1829725 () Option!6522)

(assert (=> b!2896123 (= e!1829725 None!6521)))

(declare-fun b!2896124 () Bool)

(declare-fun e!1829728 () Option!6522)

(assert (=> b!2896124 (= e!1829727 e!1829728)))

(declare-fun c!471383 () Bool)

(assert (=> b!2896124 (= c!471383 ((_ is EmptyLang!8849) (ite c!471334 (regTwo!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079)))))))

(declare-fun b!2896125 () Bool)

(declare-fun e!1829729 () Option!6522)

(assert (=> b!2896125 (= e!1829729 (Some!6521 Nil!34526))))

(declare-fun b!2896126 () Bool)

(declare-fun c!471386 () Bool)

(assert (=> b!2896126 (= c!471386 ((_ is ElementMatch!8849) (ite c!471334 (regTwo!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079)))))))

(declare-fun e!1829726 () Option!6522)

(assert (=> b!2896126 (= e!1829728 e!1829726)))

(declare-fun bm!188393 () Bool)

(declare-fun c!471389 () Bool)

(assert (=> bm!188393 (= call!188399 (getLanguageWitness!556 (ite c!471389 (regOne!18211 (ite c!471334 (regTwo!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079)))) (regTwo!18210 (ite c!471334 (regTwo!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079)))))))))

(declare-fun bm!188394 () Bool)

(declare-fun call!188398 () Option!6522)

(assert (=> bm!188394 (= call!188398 (getLanguageWitness!556 (ite c!471389 (regTwo!18211 (ite c!471334 (regTwo!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079)))) (regOne!18210 (ite c!471334 (regTwo!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079)))))))))

(declare-fun b!2896127 () Bool)

(assert (=> b!2896127 (= e!1829727 (Some!6521 Nil!34526))))

(declare-fun b!2896128 () Bool)

(assert (=> b!2896128 (= e!1829726 (Some!6521 (Cons!34526 (c!471266 (ite c!471334 (regTwo!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079)))) Nil!34526)))))

(declare-fun b!2896129 () Bool)

(assert (=> b!2896129 (= e!1829726 e!1829729)))

(declare-fun c!471384 () Bool)

(assert (=> b!2896129 (= c!471384 ((_ is Star!8849) (ite c!471334 (regTwo!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079)))))))

(declare-fun b!2896130 () Bool)

(declare-fun e!1829731 () Option!6522)

(declare-fun lt!1021613 () Option!6522)

(declare-fun lt!1021611 () Option!6522)

(assert (=> b!2896130 (= e!1829731 (Some!6521 (++!8247 (v!34647 lt!1021613) (v!34647 lt!1021611))))))

(declare-fun b!2896131 () Bool)

(assert (=> b!2896131 (= e!1829730 lt!1021612)))

(declare-fun b!2896132 () Bool)

(declare-fun c!471385 () Bool)

(assert (=> b!2896132 (= c!471385 ((_ is Some!6521) lt!1021611))))

(assert (=> b!2896132 (= lt!1021611 call!188399)))

(assert (=> b!2896132 (= e!1829725 e!1829731)))

(declare-fun b!2896133 () Bool)

(assert (=> b!2896133 (= c!471389 ((_ is Union!8849) (ite c!471334 (regTwo!18211 (regOne!18210 r!23079)) (regOne!18210 (regOne!18210 r!23079)))))))

(assert (=> b!2896133 (= e!1829729 e!1829732)))

(declare-fun b!2896134 () Bool)

(assert (=> b!2896134 (= e!1829731 None!6521)))

(declare-fun b!2896135 () Bool)

(assert (=> b!2896135 (= e!1829732 e!1829725)))

(assert (=> b!2896135 (= lt!1021613 call!188398)))

(declare-fun c!471387 () Bool)

(assert (=> b!2896135 (= c!471387 ((_ is Some!6521) lt!1021613))))

(declare-fun b!2896136 () Bool)

(assert (=> b!2896136 (= e!1829728 None!6521)))

(declare-fun b!2896137 () Bool)

(assert (=> b!2896137 (= e!1829730 call!188398)))

(assert (= (and d!834906 c!471388) b!2896127))

(assert (= (and d!834906 (not c!471388)) b!2896124))

(assert (= (and b!2896124 c!471383) b!2896136))

(assert (= (and b!2896124 (not c!471383)) b!2896126))

(assert (= (and b!2896126 c!471386) b!2896128))

(assert (= (and b!2896126 (not c!471386)) b!2896129))

(assert (= (and b!2896129 c!471384) b!2896125))

(assert (= (and b!2896129 (not c!471384)) b!2896133))

(assert (= (and b!2896133 c!471389) b!2896122))

(assert (= (and b!2896133 (not c!471389)) b!2896135))

(assert (= (and b!2896122 c!471382) b!2896131))

(assert (= (and b!2896122 (not c!471382)) b!2896137))

(assert (= (and b!2896135 c!471387) b!2896132))

(assert (= (and b!2896135 (not c!471387)) b!2896123))

(assert (= (and b!2896132 c!471385) b!2896130))

(assert (= (and b!2896132 (not c!471385)) b!2896134))

(assert (= (or b!2896137 b!2896135) bm!188394))

(assert (= (or b!2896122 b!2896132) bm!188393))

(declare-fun m!3304237 () Bool)

(assert (=> bm!188393 m!3304237))

(declare-fun m!3304239 () Bool)

(assert (=> bm!188394 m!3304239))

(declare-fun m!3304241 () Bool)

(assert (=> b!2896130 m!3304241))

(assert (=> bm!188367 d!834906))

(declare-fun d!834908 () Bool)

(declare-fun c!471396 () Bool)

(assert (=> d!834908 (= c!471396 ((_ is EmptyExpr!8849) (ite c!471350 (regOne!18211 r!23079) (regTwo!18210 r!23079))))))

(declare-fun e!1829735 () Option!6522)

(assert (=> d!834908 (= (getLanguageWitness!556 (ite c!471350 (regOne!18211 r!23079) (regTwo!18210 r!23079))) e!1829735)))

(declare-fun b!2896138 () Bool)

(declare-fun e!1829740 () Option!6522)

(declare-fun e!1829738 () Option!6522)

(assert (=> b!2896138 (= e!1829740 e!1829738)))

(declare-fun lt!1021615 () Option!6522)

(declare-fun call!188401 () Option!6522)

(assert (=> b!2896138 (= lt!1021615 call!188401)))

(declare-fun c!471390 () Bool)

(assert (=> b!2896138 (= c!471390 ((_ is Some!6521) lt!1021615))))

(declare-fun b!2896139 () Bool)

(declare-fun e!1829733 () Option!6522)

(assert (=> b!2896139 (= e!1829733 None!6521)))

(declare-fun b!2896140 () Bool)

(declare-fun e!1829736 () Option!6522)

(assert (=> b!2896140 (= e!1829735 e!1829736)))

(declare-fun c!471391 () Bool)

(assert (=> b!2896140 (= c!471391 ((_ is EmptyLang!8849) (ite c!471350 (regOne!18211 r!23079) (regTwo!18210 r!23079))))))

(declare-fun b!2896141 () Bool)

(declare-fun e!1829737 () Option!6522)

(assert (=> b!2896141 (= e!1829737 (Some!6521 Nil!34526))))

(declare-fun b!2896142 () Bool)

(declare-fun c!471394 () Bool)

(assert (=> b!2896142 (= c!471394 ((_ is ElementMatch!8849) (ite c!471350 (regOne!18211 r!23079) (regTwo!18210 r!23079))))))

(declare-fun e!1829734 () Option!6522)

(assert (=> b!2896142 (= e!1829736 e!1829734)))

(declare-fun c!471397 () Bool)

(declare-fun bm!188395 () Bool)

(assert (=> bm!188395 (= call!188401 (getLanguageWitness!556 (ite c!471397 (regOne!18211 (ite c!471350 (regOne!18211 r!23079) (regTwo!18210 r!23079))) (regTwo!18210 (ite c!471350 (regOne!18211 r!23079) (regTwo!18210 r!23079))))))))

(declare-fun call!188400 () Option!6522)

(declare-fun bm!188396 () Bool)

(assert (=> bm!188396 (= call!188400 (getLanguageWitness!556 (ite c!471397 (regTwo!18211 (ite c!471350 (regOne!18211 r!23079) (regTwo!18210 r!23079))) (regOne!18210 (ite c!471350 (regOne!18211 r!23079) (regTwo!18210 r!23079))))))))

(declare-fun b!2896143 () Bool)

(assert (=> b!2896143 (= e!1829735 (Some!6521 Nil!34526))))

(declare-fun b!2896144 () Bool)

(assert (=> b!2896144 (= e!1829734 (Some!6521 (Cons!34526 (c!471266 (ite c!471350 (regOne!18211 r!23079) (regTwo!18210 r!23079))) Nil!34526)))))

(declare-fun b!2896145 () Bool)

(assert (=> b!2896145 (= e!1829734 e!1829737)))

(declare-fun c!471392 () Bool)

(assert (=> b!2896145 (= c!471392 ((_ is Star!8849) (ite c!471350 (regOne!18211 r!23079) (regTwo!18210 r!23079))))))

(declare-fun b!2896146 () Bool)

(declare-fun e!1829739 () Option!6522)

(declare-fun lt!1021616 () Option!6522)

(declare-fun lt!1021614 () Option!6522)

(assert (=> b!2896146 (= e!1829739 (Some!6521 (++!8247 (v!34647 lt!1021616) (v!34647 lt!1021614))))))

(declare-fun b!2896147 () Bool)

(assert (=> b!2896147 (= e!1829738 lt!1021615)))

(declare-fun b!2896148 () Bool)

(declare-fun c!471393 () Bool)

(assert (=> b!2896148 (= c!471393 ((_ is Some!6521) lt!1021614))))

(assert (=> b!2896148 (= lt!1021614 call!188401)))

(assert (=> b!2896148 (= e!1829733 e!1829739)))

(declare-fun b!2896149 () Bool)

(assert (=> b!2896149 (= c!471397 ((_ is Union!8849) (ite c!471350 (regOne!18211 r!23079) (regTwo!18210 r!23079))))))

(assert (=> b!2896149 (= e!1829737 e!1829740)))

(declare-fun b!2896150 () Bool)

(assert (=> b!2896150 (= e!1829739 None!6521)))

(declare-fun b!2896151 () Bool)

(assert (=> b!2896151 (= e!1829740 e!1829733)))

(assert (=> b!2896151 (= lt!1021616 call!188400)))

(declare-fun c!471395 () Bool)

(assert (=> b!2896151 (= c!471395 ((_ is Some!6521) lt!1021616))))

(declare-fun b!2896152 () Bool)

(assert (=> b!2896152 (= e!1829736 None!6521)))

(declare-fun b!2896153 () Bool)

(assert (=> b!2896153 (= e!1829738 call!188400)))

(assert (= (and d!834908 c!471396) b!2896143))

(assert (= (and d!834908 (not c!471396)) b!2896140))

(assert (= (and b!2896140 c!471391) b!2896152))

(assert (= (and b!2896140 (not c!471391)) b!2896142))

(assert (= (and b!2896142 c!471394) b!2896144))

(assert (= (and b!2896142 (not c!471394)) b!2896145))

(assert (= (and b!2896145 c!471392) b!2896141))

(assert (= (and b!2896145 (not c!471392)) b!2896149))

(assert (= (and b!2896149 c!471397) b!2896138))

(assert (= (and b!2896149 (not c!471397)) b!2896151))

(assert (= (and b!2896138 c!471390) b!2896147))

(assert (= (and b!2896138 (not c!471390)) b!2896153))

(assert (= (and b!2896151 c!471395) b!2896148))

(assert (= (and b!2896151 (not c!471395)) b!2896139))

(assert (= (and b!2896148 c!471393) b!2896146))

(assert (= (and b!2896148 (not c!471393)) b!2896150))

(assert (= (or b!2896153 b!2896151) bm!188396))

(assert (= (or b!2896138 b!2896148) bm!188395))

(declare-fun m!3304243 () Bool)

(assert (=> bm!188395 m!3304243))

(declare-fun m!3304245 () Bool)

(assert (=> bm!188396 m!3304245))

(declare-fun m!3304247 () Bool)

(assert (=> b!2896146 m!3304247))

(assert (=> bm!188372 d!834908))

(declare-fun bm!188397 () Bool)

(declare-fun call!188403 () Bool)

(declare-fun call!188402 () Bool)

(assert (=> bm!188397 (= call!188403 call!188402)))

(declare-fun b!2896154 () Bool)

(declare-fun res!1197713 () Bool)

(declare-fun e!1829742 () Bool)

(assert (=> b!2896154 (=> res!1197713 e!1829742)))

(assert (=> b!2896154 (= res!1197713 (not ((_ is Concat!14170) (ite c!471289 (reg!9178 r!23079) (ite c!471290 (regOne!18211 r!23079) (regOne!18210 r!23079))))))))

(declare-fun e!1829745 () Bool)

(assert (=> b!2896154 (= e!1829745 e!1829742)))

(declare-fun b!2896155 () Bool)

(declare-fun e!1829747 () Bool)

(assert (=> b!2896155 (= e!1829747 e!1829745)))

(declare-fun c!471399 () Bool)

(assert (=> b!2896155 (= c!471399 ((_ is Union!8849) (ite c!471289 (reg!9178 r!23079) (ite c!471290 (regOne!18211 r!23079) (regOne!18210 r!23079)))))))

(declare-fun bm!188398 () Bool)

(declare-fun c!471398 () Bool)

(assert (=> bm!188398 (= call!188402 (validRegex!3622 (ite c!471398 (reg!9178 (ite c!471289 (reg!9178 r!23079) (ite c!471290 (regOne!18211 r!23079) (regOne!18210 r!23079)))) (ite c!471399 (regOne!18211 (ite c!471289 (reg!9178 r!23079) (ite c!471290 (regOne!18211 r!23079) (regOne!18210 r!23079)))) (regOne!18210 (ite c!471289 (reg!9178 r!23079) (ite c!471290 (regOne!18211 r!23079) (regOne!18210 r!23079))))))))))

(declare-fun bm!188399 () Bool)

(declare-fun call!188404 () Bool)

(assert (=> bm!188399 (= call!188404 (validRegex!3622 (ite c!471399 (regTwo!18211 (ite c!471289 (reg!9178 r!23079) (ite c!471290 (regOne!18211 r!23079) (regOne!18210 r!23079)))) (regTwo!18210 (ite c!471289 (reg!9178 r!23079) (ite c!471290 (regOne!18211 r!23079) (regOne!18210 r!23079)))))))))

(declare-fun b!2896156 () Bool)

(declare-fun e!1829744 () Bool)

(assert (=> b!2896156 (= e!1829742 e!1829744)))

(declare-fun res!1197715 () Bool)

(assert (=> b!2896156 (=> (not res!1197715) (not e!1829744))))

(assert (=> b!2896156 (= res!1197715 call!188403)))

(declare-fun b!2896158 () Bool)

(declare-fun e!1829741 () Bool)

(assert (=> b!2896158 (= e!1829741 call!188402)))

(declare-fun b!2896159 () Bool)

(assert (=> b!2896159 (= e!1829744 call!188404)))

(declare-fun b!2896160 () Bool)

(assert (=> b!2896160 (= e!1829747 e!1829741)))

(declare-fun res!1197717 () Bool)

(assert (=> b!2896160 (= res!1197717 (not (nullable!2748 (reg!9178 (ite c!471289 (reg!9178 r!23079) (ite c!471290 (regOne!18211 r!23079) (regOne!18210 r!23079)))))))))

(assert (=> b!2896160 (=> (not res!1197717) (not e!1829741))))

(declare-fun b!2896161 () Bool)

(declare-fun e!1829746 () Bool)

(assert (=> b!2896161 (= e!1829746 call!188404)))

(declare-fun b!2896162 () Bool)

(declare-fun e!1829743 () Bool)

(assert (=> b!2896162 (= e!1829743 e!1829747)))

(assert (=> b!2896162 (= c!471398 ((_ is Star!8849) (ite c!471289 (reg!9178 r!23079) (ite c!471290 (regOne!18211 r!23079) (regOne!18210 r!23079)))))))

(declare-fun d!834910 () Bool)

(declare-fun res!1197714 () Bool)

(assert (=> d!834910 (=> res!1197714 e!1829743)))

(assert (=> d!834910 (= res!1197714 ((_ is ElementMatch!8849) (ite c!471289 (reg!9178 r!23079) (ite c!471290 (regOne!18211 r!23079) (regOne!18210 r!23079)))))))

(assert (=> d!834910 (= (validRegex!3622 (ite c!471289 (reg!9178 r!23079) (ite c!471290 (regOne!18211 r!23079) (regOne!18210 r!23079)))) e!1829743)))

(declare-fun b!2896157 () Bool)

(declare-fun res!1197716 () Bool)

(assert (=> b!2896157 (=> (not res!1197716) (not e!1829746))))

(assert (=> b!2896157 (= res!1197716 call!188403)))

(assert (=> b!2896157 (= e!1829745 e!1829746)))

(assert (= (and d!834910 (not res!1197714)) b!2896162))

(assert (= (and b!2896162 c!471398) b!2896160))

(assert (= (and b!2896162 (not c!471398)) b!2896155))

(assert (= (and b!2896160 res!1197717) b!2896158))

(assert (= (and b!2896155 c!471399) b!2896157))

(assert (= (and b!2896155 (not c!471399)) b!2896154))

(assert (= (and b!2896157 res!1197716) b!2896161))

(assert (= (and b!2896154 (not res!1197713)) b!2896156))

(assert (= (and b!2896156 res!1197715) b!2896159))

(assert (= (or b!2896161 b!2896159) bm!188399))

(assert (= (or b!2896157 b!2896156) bm!188397))

(assert (= (or b!2896158 bm!188397) bm!188398))

(declare-fun m!3304249 () Bool)

(assert (=> bm!188398 m!3304249))

(declare-fun m!3304251 () Bool)

(assert (=> bm!188399 m!3304251))

(declare-fun m!3304253 () Bool)

(assert (=> b!2896160 m!3304253))

(assert (=> bm!188348 d!834910))

(declare-fun d!834912 () Bool)

(declare-fun c!471406 () Bool)

(assert (=> d!834912 (= c!471406 ((_ is EmptyExpr!8849) (ite c!471334 (regOne!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))))))

(declare-fun e!1829750 () Option!6522)

(assert (=> d!834912 (= (getLanguageWitness!556 (ite c!471334 (regOne!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))) e!1829750)))

(declare-fun b!2896163 () Bool)

(declare-fun e!1829755 () Option!6522)

(declare-fun e!1829753 () Option!6522)

(assert (=> b!2896163 (= e!1829755 e!1829753)))

(declare-fun lt!1021618 () Option!6522)

(declare-fun call!188406 () Option!6522)

(assert (=> b!2896163 (= lt!1021618 call!188406)))

(declare-fun c!471400 () Bool)

(assert (=> b!2896163 (= c!471400 ((_ is Some!6521) lt!1021618))))

(declare-fun b!2896164 () Bool)

(declare-fun e!1829748 () Option!6522)

(assert (=> b!2896164 (= e!1829748 None!6521)))

(declare-fun b!2896165 () Bool)

(declare-fun e!1829751 () Option!6522)

(assert (=> b!2896165 (= e!1829750 e!1829751)))

(declare-fun c!471401 () Bool)

(assert (=> b!2896165 (= c!471401 ((_ is EmptyLang!8849) (ite c!471334 (regOne!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))))))

(declare-fun b!2896166 () Bool)

(declare-fun e!1829752 () Option!6522)

(assert (=> b!2896166 (= e!1829752 (Some!6521 Nil!34526))))

(declare-fun b!2896167 () Bool)

(declare-fun c!471404 () Bool)

(assert (=> b!2896167 (= c!471404 ((_ is ElementMatch!8849) (ite c!471334 (regOne!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))))))

(declare-fun e!1829749 () Option!6522)

(assert (=> b!2896167 (= e!1829751 e!1829749)))

(declare-fun c!471407 () Bool)

(declare-fun bm!188400 () Bool)

(assert (=> bm!188400 (= call!188406 (getLanguageWitness!556 (ite c!471407 (regOne!18211 (ite c!471334 (regOne!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))) (regTwo!18210 (ite c!471334 (regOne!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))))))))

(declare-fun bm!188401 () Bool)

(declare-fun call!188405 () Option!6522)

(assert (=> bm!188401 (= call!188405 (getLanguageWitness!556 (ite c!471407 (regTwo!18211 (ite c!471334 (regOne!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))) (regOne!18210 (ite c!471334 (regOne!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))))))))

(declare-fun b!2896168 () Bool)

(assert (=> b!2896168 (= e!1829750 (Some!6521 Nil!34526))))

(declare-fun b!2896169 () Bool)

(assert (=> b!2896169 (= e!1829749 (Some!6521 (Cons!34526 (c!471266 (ite c!471334 (regOne!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))) Nil!34526)))))

(declare-fun b!2896170 () Bool)

(assert (=> b!2896170 (= e!1829749 e!1829752)))

(declare-fun c!471402 () Bool)

(assert (=> b!2896170 (= c!471402 ((_ is Star!8849) (ite c!471334 (regOne!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))))))

(declare-fun b!2896171 () Bool)

(declare-fun e!1829754 () Option!6522)

(declare-fun lt!1021619 () Option!6522)

(declare-fun lt!1021617 () Option!6522)

(assert (=> b!2896171 (= e!1829754 (Some!6521 (++!8247 (v!34647 lt!1021619) (v!34647 lt!1021617))))))

(declare-fun b!2896172 () Bool)

(assert (=> b!2896172 (= e!1829753 lt!1021618)))

(declare-fun b!2896173 () Bool)

(declare-fun c!471403 () Bool)

(assert (=> b!2896173 (= c!471403 ((_ is Some!6521) lt!1021617))))

(assert (=> b!2896173 (= lt!1021617 call!188406)))

(assert (=> b!2896173 (= e!1829748 e!1829754)))

(declare-fun b!2896174 () Bool)

(assert (=> b!2896174 (= c!471407 ((_ is Union!8849) (ite c!471334 (regOne!18211 (regOne!18210 r!23079)) (regTwo!18210 (regOne!18210 r!23079)))))))

(assert (=> b!2896174 (= e!1829752 e!1829755)))

(declare-fun b!2896175 () Bool)

(assert (=> b!2896175 (= e!1829754 None!6521)))

(declare-fun b!2896176 () Bool)

(assert (=> b!2896176 (= e!1829755 e!1829748)))

(assert (=> b!2896176 (= lt!1021619 call!188405)))

(declare-fun c!471405 () Bool)

(assert (=> b!2896176 (= c!471405 ((_ is Some!6521) lt!1021619))))

(declare-fun b!2896177 () Bool)

(assert (=> b!2896177 (= e!1829751 None!6521)))

(declare-fun b!2896178 () Bool)

(assert (=> b!2896178 (= e!1829753 call!188405)))

(assert (= (and d!834912 c!471406) b!2896168))

(assert (= (and d!834912 (not c!471406)) b!2896165))

(assert (= (and b!2896165 c!471401) b!2896177))

(assert (= (and b!2896165 (not c!471401)) b!2896167))

(assert (= (and b!2896167 c!471404) b!2896169))

(assert (= (and b!2896167 (not c!471404)) b!2896170))

(assert (= (and b!2896170 c!471402) b!2896166))

(assert (= (and b!2896170 (not c!471402)) b!2896174))

(assert (= (and b!2896174 c!471407) b!2896163))

(assert (= (and b!2896174 (not c!471407)) b!2896176))

(assert (= (and b!2896163 c!471400) b!2896172))

(assert (= (and b!2896163 (not c!471400)) b!2896178))

(assert (= (and b!2896176 c!471405) b!2896173))

(assert (= (and b!2896176 (not c!471405)) b!2896164))

(assert (= (and b!2896173 c!471403) b!2896171))

(assert (= (and b!2896173 (not c!471403)) b!2896175))

(assert (= (or b!2896178 b!2896176) bm!188401))

(assert (= (or b!2896163 b!2896173) bm!188400))

(declare-fun m!3304255 () Bool)

(assert (=> bm!188400 m!3304255))

(declare-fun m!3304257 () Bool)

(assert (=> bm!188401 m!3304257))

(declare-fun m!3304259 () Bool)

(assert (=> b!2896171 m!3304259))

(assert (=> bm!188366 d!834912))

(declare-fun d!834914 () Bool)

(declare-fun c!471414 () Bool)

(assert (=> d!834914 (= c!471414 ((_ is EmptyExpr!8849) (ite c!471342 (regOne!18211 (regTwo!18210 r!23079)) (regTwo!18210 (regTwo!18210 r!23079)))))))

(declare-fun e!1829758 () Option!6522)

(assert (=> d!834914 (= (getLanguageWitness!556 (ite c!471342 (regOne!18211 (regTwo!18210 r!23079)) (regTwo!18210 (regTwo!18210 r!23079)))) e!1829758)))

(declare-fun b!2896179 () Bool)

(declare-fun e!1829763 () Option!6522)

(declare-fun e!1829761 () Option!6522)

(assert (=> b!2896179 (= e!1829763 e!1829761)))

(declare-fun lt!1021621 () Option!6522)

(declare-fun call!188408 () Option!6522)

(assert (=> b!2896179 (= lt!1021621 call!188408)))

(declare-fun c!471408 () Bool)

(assert (=> b!2896179 (= c!471408 ((_ is Some!6521) lt!1021621))))

(declare-fun b!2896180 () Bool)

(declare-fun e!1829756 () Option!6522)

(assert (=> b!2896180 (= e!1829756 None!6521)))

(declare-fun b!2896181 () Bool)

(declare-fun e!1829759 () Option!6522)

(assert (=> b!2896181 (= e!1829758 e!1829759)))

(declare-fun c!471409 () Bool)

(assert (=> b!2896181 (= c!471409 ((_ is EmptyLang!8849) (ite c!471342 (regOne!18211 (regTwo!18210 r!23079)) (regTwo!18210 (regTwo!18210 r!23079)))))))

(declare-fun b!2896182 () Bool)

(declare-fun e!1829760 () Option!6522)

(assert (=> b!2896182 (= e!1829760 (Some!6521 Nil!34526))))

(declare-fun b!2896183 () Bool)

(declare-fun c!471412 () Bool)

(assert (=> b!2896183 (= c!471412 ((_ is ElementMatch!8849) (ite c!471342 (regOne!18211 (regTwo!18210 r!23079)) (regTwo!18210 (regTwo!18210 r!23079)))))))

(declare-fun e!1829757 () Option!6522)

(assert (=> b!2896183 (= e!1829759 e!1829757)))

(declare-fun bm!188402 () Bool)

(declare-fun c!471415 () Bool)

(assert (=> bm!188402 (= call!188408 (getLanguageWitness!556 (ite c!471415 (regOne!18211 (ite c!471342 (regOne!18211 (regTwo!18210 r!23079)) (regTwo!18210 (regTwo!18210 r!23079)))) (regTwo!18210 (ite c!471342 (regOne!18211 (regTwo!18210 r!23079)) (regTwo!18210 (regTwo!18210 r!23079)))))))))

(declare-fun bm!188403 () Bool)

(declare-fun call!188407 () Option!6522)

(assert (=> bm!188403 (= call!188407 (getLanguageWitness!556 (ite c!471415 (regTwo!18211 (ite c!471342 (regOne!18211 (regTwo!18210 r!23079)) (regTwo!18210 (regTwo!18210 r!23079)))) (regOne!18210 (ite c!471342 (regOne!18211 (regTwo!18210 r!23079)) (regTwo!18210 (regTwo!18210 r!23079)))))))))

(declare-fun b!2896184 () Bool)

(assert (=> b!2896184 (= e!1829758 (Some!6521 Nil!34526))))

(declare-fun b!2896185 () Bool)

(assert (=> b!2896185 (= e!1829757 (Some!6521 (Cons!34526 (c!471266 (ite c!471342 (regOne!18211 (regTwo!18210 r!23079)) (regTwo!18210 (regTwo!18210 r!23079)))) Nil!34526)))))

(declare-fun b!2896186 () Bool)

(assert (=> b!2896186 (= e!1829757 e!1829760)))

(declare-fun c!471410 () Bool)

(assert (=> b!2896186 (= c!471410 ((_ is Star!8849) (ite c!471342 (regOne!18211 (regTwo!18210 r!23079)) (regTwo!18210 (regTwo!18210 r!23079)))))))

(declare-fun b!2896187 () Bool)

(declare-fun e!1829762 () Option!6522)

(declare-fun lt!1021622 () Option!6522)

(declare-fun lt!1021620 () Option!6522)

(assert (=> b!2896187 (= e!1829762 (Some!6521 (++!8247 (v!34647 lt!1021622) (v!34647 lt!1021620))))))

(declare-fun b!2896188 () Bool)

(assert (=> b!2896188 (= e!1829761 lt!1021621)))

(declare-fun b!2896189 () Bool)

(declare-fun c!471411 () Bool)

(assert (=> b!2896189 (= c!471411 ((_ is Some!6521) lt!1021620))))

(assert (=> b!2896189 (= lt!1021620 call!188408)))

(assert (=> b!2896189 (= e!1829756 e!1829762)))

(declare-fun b!2896190 () Bool)

(assert (=> b!2896190 (= c!471415 ((_ is Union!8849) (ite c!471342 (regOne!18211 (regTwo!18210 r!23079)) (regTwo!18210 (regTwo!18210 r!23079)))))))

(assert (=> b!2896190 (= e!1829760 e!1829763)))

(declare-fun b!2896191 () Bool)

(assert (=> b!2896191 (= e!1829762 None!6521)))

(declare-fun b!2896192 () Bool)

(assert (=> b!2896192 (= e!1829763 e!1829756)))

(assert (=> b!2896192 (= lt!1021622 call!188407)))

(declare-fun c!471413 () Bool)

(assert (=> b!2896192 (= c!471413 ((_ is Some!6521) lt!1021622))))

(declare-fun b!2896193 () Bool)

(assert (=> b!2896193 (= e!1829759 None!6521)))

(declare-fun b!2896194 () Bool)

(assert (=> b!2896194 (= e!1829761 call!188407)))

(assert (= (and d!834914 c!471414) b!2896184))

(assert (= (and d!834914 (not c!471414)) b!2896181))

(assert (= (and b!2896181 c!471409) b!2896193))

(assert (= (and b!2896181 (not c!471409)) b!2896183))

(assert (= (and b!2896183 c!471412) b!2896185))

(assert (= (and b!2896183 (not c!471412)) b!2896186))

(assert (= (and b!2896186 c!471410) b!2896182))

(assert (= (and b!2896186 (not c!471410)) b!2896190))

(assert (= (and b!2896190 c!471415) b!2896179))

(assert (= (and b!2896190 (not c!471415)) b!2896192))

(assert (= (and b!2896179 c!471408) b!2896188))

(assert (= (and b!2896179 (not c!471408)) b!2896194))

(assert (= (and b!2896192 c!471413) b!2896189))

(assert (= (and b!2896192 (not c!471413)) b!2896180))

(assert (= (and b!2896189 c!471411) b!2896187))

(assert (= (and b!2896189 (not c!471411)) b!2896191))

(assert (= (or b!2896194 b!2896192) bm!188403))

(assert (= (or b!2896179 b!2896189) bm!188402))

(declare-fun m!3304261 () Bool)

(assert (=> bm!188402 m!3304261))

(declare-fun m!3304263 () Bool)

(assert (=> bm!188403 m!3304263))

(declare-fun m!3304265 () Bool)

(assert (=> b!2896187 m!3304265))

(assert (=> bm!188370 d!834914))

(declare-fun d!834916 () Bool)

(declare-fun c!471422 () Bool)

(assert (=> d!834916 (= c!471422 ((_ is EmptyExpr!8849) (ite c!471342 (regTwo!18211 (regTwo!18210 r!23079)) (regOne!18210 (regTwo!18210 r!23079)))))))

(declare-fun e!1829766 () Option!6522)

(assert (=> d!834916 (= (getLanguageWitness!556 (ite c!471342 (regTwo!18211 (regTwo!18210 r!23079)) (regOne!18210 (regTwo!18210 r!23079)))) e!1829766)))

(declare-fun b!2896195 () Bool)

(declare-fun e!1829771 () Option!6522)

(declare-fun e!1829769 () Option!6522)

(assert (=> b!2896195 (= e!1829771 e!1829769)))

(declare-fun lt!1021624 () Option!6522)

(declare-fun call!188410 () Option!6522)

(assert (=> b!2896195 (= lt!1021624 call!188410)))

(declare-fun c!471416 () Bool)

(assert (=> b!2896195 (= c!471416 ((_ is Some!6521) lt!1021624))))

(declare-fun b!2896196 () Bool)

(declare-fun e!1829764 () Option!6522)

(assert (=> b!2896196 (= e!1829764 None!6521)))

(declare-fun b!2896197 () Bool)

(declare-fun e!1829767 () Option!6522)

(assert (=> b!2896197 (= e!1829766 e!1829767)))

(declare-fun c!471417 () Bool)

(assert (=> b!2896197 (= c!471417 ((_ is EmptyLang!8849) (ite c!471342 (regTwo!18211 (regTwo!18210 r!23079)) (regOne!18210 (regTwo!18210 r!23079)))))))

(declare-fun b!2896198 () Bool)

(declare-fun e!1829768 () Option!6522)

(assert (=> b!2896198 (= e!1829768 (Some!6521 Nil!34526))))

(declare-fun b!2896199 () Bool)

(declare-fun c!471420 () Bool)

(assert (=> b!2896199 (= c!471420 ((_ is ElementMatch!8849) (ite c!471342 (regTwo!18211 (regTwo!18210 r!23079)) (regOne!18210 (regTwo!18210 r!23079)))))))

(declare-fun e!1829765 () Option!6522)

(assert (=> b!2896199 (= e!1829767 e!1829765)))

(declare-fun c!471423 () Bool)

(declare-fun bm!188404 () Bool)

(assert (=> bm!188404 (= call!188410 (getLanguageWitness!556 (ite c!471423 (regOne!18211 (ite c!471342 (regTwo!18211 (regTwo!18210 r!23079)) (regOne!18210 (regTwo!18210 r!23079)))) (regTwo!18210 (ite c!471342 (regTwo!18211 (regTwo!18210 r!23079)) (regOne!18210 (regTwo!18210 r!23079)))))))))

(declare-fun bm!188405 () Bool)

(declare-fun call!188409 () Option!6522)

(assert (=> bm!188405 (= call!188409 (getLanguageWitness!556 (ite c!471423 (regTwo!18211 (ite c!471342 (regTwo!18211 (regTwo!18210 r!23079)) (regOne!18210 (regTwo!18210 r!23079)))) (regOne!18210 (ite c!471342 (regTwo!18211 (regTwo!18210 r!23079)) (regOne!18210 (regTwo!18210 r!23079)))))))))

(declare-fun b!2896200 () Bool)

(assert (=> b!2896200 (= e!1829766 (Some!6521 Nil!34526))))

(declare-fun b!2896201 () Bool)

(assert (=> b!2896201 (= e!1829765 (Some!6521 (Cons!34526 (c!471266 (ite c!471342 (regTwo!18211 (regTwo!18210 r!23079)) (regOne!18210 (regTwo!18210 r!23079)))) Nil!34526)))))

(declare-fun b!2896202 () Bool)

(assert (=> b!2896202 (= e!1829765 e!1829768)))

(declare-fun c!471418 () Bool)

(assert (=> b!2896202 (= c!471418 ((_ is Star!8849) (ite c!471342 (regTwo!18211 (regTwo!18210 r!23079)) (regOne!18210 (regTwo!18210 r!23079)))))))

(declare-fun b!2896203 () Bool)

(declare-fun e!1829770 () Option!6522)

(declare-fun lt!1021625 () Option!6522)

(declare-fun lt!1021623 () Option!6522)

(assert (=> b!2896203 (= e!1829770 (Some!6521 (++!8247 (v!34647 lt!1021625) (v!34647 lt!1021623))))))

(declare-fun b!2896204 () Bool)

(assert (=> b!2896204 (= e!1829769 lt!1021624)))

(declare-fun b!2896205 () Bool)

(declare-fun c!471419 () Bool)

(assert (=> b!2896205 (= c!471419 ((_ is Some!6521) lt!1021623))))

(assert (=> b!2896205 (= lt!1021623 call!188410)))

(assert (=> b!2896205 (= e!1829764 e!1829770)))

(declare-fun b!2896206 () Bool)

(assert (=> b!2896206 (= c!471423 ((_ is Union!8849) (ite c!471342 (regTwo!18211 (regTwo!18210 r!23079)) (regOne!18210 (regTwo!18210 r!23079)))))))

(assert (=> b!2896206 (= e!1829768 e!1829771)))

(declare-fun b!2896207 () Bool)

(assert (=> b!2896207 (= e!1829770 None!6521)))

(declare-fun b!2896208 () Bool)

(assert (=> b!2896208 (= e!1829771 e!1829764)))

(assert (=> b!2896208 (= lt!1021625 call!188409)))

(declare-fun c!471421 () Bool)

(assert (=> b!2896208 (= c!471421 ((_ is Some!6521) lt!1021625))))

(declare-fun b!2896209 () Bool)

(assert (=> b!2896209 (= e!1829767 None!6521)))

(declare-fun b!2896210 () Bool)

(assert (=> b!2896210 (= e!1829769 call!188409)))

(assert (= (and d!834916 c!471422) b!2896200))

(assert (= (and d!834916 (not c!471422)) b!2896197))

(assert (= (and b!2896197 c!471417) b!2896209))

(assert (= (and b!2896197 (not c!471417)) b!2896199))

(assert (= (and b!2896199 c!471420) b!2896201))

(assert (= (and b!2896199 (not c!471420)) b!2896202))

(assert (= (and b!2896202 c!471418) b!2896198))

(assert (= (and b!2896202 (not c!471418)) b!2896206))

(assert (= (and b!2896206 c!471423) b!2896195))

(assert (= (and b!2896206 (not c!471423)) b!2896208))

(assert (= (and b!2896195 c!471416) b!2896204))

(assert (= (and b!2896195 (not c!471416)) b!2896210))

(assert (= (and b!2896208 c!471421) b!2896205))

(assert (= (and b!2896208 (not c!471421)) b!2896196))

(assert (= (and b!2896205 c!471419) b!2896203))

(assert (= (and b!2896205 (not c!471419)) b!2896207))

(assert (= (or b!2896210 b!2896208) bm!188405))

(assert (= (or b!2896195 b!2896205) bm!188404))

(declare-fun m!3304267 () Bool)

(assert (=> bm!188404 m!3304267))

(declare-fun m!3304269 () Bool)

(assert (=> bm!188405 m!3304269))

(declare-fun m!3304271 () Bool)

(assert (=> b!2896203 m!3304271))

(assert (=> bm!188371 d!834916))

(declare-fun b!2896211 () Bool)

(declare-fun e!1829772 () Bool)

(assert (=> b!2896211 (= e!1829772 tp_is_empty!15285)))

(declare-fun b!2896213 () Bool)

(declare-fun tp!929552 () Bool)

(assert (=> b!2896213 (= e!1829772 tp!929552)))

(declare-fun b!2896214 () Bool)

(declare-fun tp!929551 () Bool)

(declare-fun tp!929550 () Bool)

(assert (=> b!2896214 (= e!1829772 (and tp!929551 tp!929550))))

(assert (=> b!2896018 (= tp!929503 e!1829772)))

(declare-fun b!2896212 () Bool)

(declare-fun tp!929553 () Bool)

(declare-fun tp!929554 () Bool)

(assert (=> b!2896212 (= e!1829772 (and tp!929553 tp!929554))))

(assert (= (and b!2896018 ((_ is ElementMatch!8849) (regOne!18210 (regTwo!18211 r!23079)))) b!2896211))

(assert (= (and b!2896018 ((_ is Concat!14170) (regOne!18210 (regTwo!18211 r!23079)))) b!2896212))

(assert (= (and b!2896018 ((_ is Star!8849) (regOne!18210 (regTwo!18211 r!23079)))) b!2896213))

(assert (= (and b!2896018 ((_ is Union!8849) (regOne!18210 (regTwo!18211 r!23079)))) b!2896214))

(declare-fun b!2896215 () Bool)

(declare-fun e!1829773 () Bool)

(assert (=> b!2896215 (= e!1829773 tp_is_empty!15285)))

(declare-fun b!2896217 () Bool)

(declare-fun tp!929557 () Bool)

(assert (=> b!2896217 (= e!1829773 tp!929557)))

(declare-fun b!2896218 () Bool)

(declare-fun tp!929556 () Bool)

(declare-fun tp!929555 () Bool)

(assert (=> b!2896218 (= e!1829773 (and tp!929556 tp!929555))))

(assert (=> b!2896018 (= tp!929504 e!1829773)))

(declare-fun b!2896216 () Bool)

(declare-fun tp!929558 () Bool)

(declare-fun tp!929559 () Bool)

(assert (=> b!2896216 (= e!1829773 (and tp!929558 tp!929559))))

(assert (= (and b!2896018 ((_ is ElementMatch!8849) (regTwo!18210 (regTwo!18211 r!23079)))) b!2896215))

(assert (= (and b!2896018 ((_ is Concat!14170) (regTwo!18210 (regTwo!18211 r!23079)))) b!2896216))

(assert (= (and b!2896018 ((_ is Star!8849) (regTwo!18210 (regTwo!18211 r!23079)))) b!2896217))

(assert (= (and b!2896018 ((_ is Union!8849) (regTwo!18210 (regTwo!18211 r!23079)))) b!2896218))

(declare-fun b!2896219 () Bool)

(declare-fun e!1829774 () Bool)

(assert (=> b!2896219 (= e!1829774 tp_is_empty!15285)))

(declare-fun b!2896221 () Bool)

(declare-fun tp!929562 () Bool)

(assert (=> b!2896221 (= e!1829774 tp!929562)))

(declare-fun b!2896222 () Bool)

(declare-fun tp!929561 () Bool)

(declare-fun tp!929560 () Bool)

(assert (=> b!2896222 (= e!1829774 (and tp!929561 tp!929560))))

(assert (=> b!2896027 (= tp!929507 e!1829774)))

(declare-fun b!2896220 () Bool)

(declare-fun tp!929563 () Bool)

(declare-fun tp!929564 () Bool)

(assert (=> b!2896220 (= e!1829774 (and tp!929563 tp!929564))))

(assert (= (and b!2896027 ((_ is ElementMatch!8849) (reg!9178 (regOne!18210 r!23079)))) b!2896219))

(assert (= (and b!2896027 ((_ is Concat!14170) (reg!9178 (regOne!18210 r!23079)))) b!2896220))

(assert (= (and b!2896027 ((_ is Star!8849) (reg!9178 (regOne!18210 r!23079)))) b!2896221))

(assert (= (and b!2896027 ((_ is Union!8849) (reg!9178 (regOne!18210 r!23079)))) b!2896222))

(declare-fun b!2896223 () Bool)

(declare-fun e!1829775 () Bool)

(assert (=> b!2896223 (= e!1829775 tp_is_empty!15285)))

(declare-fun b!2896225 () Bool)

(declare-fun tp!929567 () Bool)

(assert (=> b!2896225 (= e!1829775 tp!929567)))

(declare-fun b!2896226 () Bool)

(declare-fun tp!929566 () Bool)

(declare-fun tp!929565 () Bool)

(assert (=> b!2896226 (= e!1829775 (and tp!929566 tp!929565))))

(assert (=> b!2896028 (= tp!929506 e!1829775)))

(declare-fun b!2896224 () Bool)

(declare-fun tp!929568 () Bool)

(declare-fun tp!929569 () Bool)

(assert (=> b!2896224 (= e!1829775 (and tp!929568 tp!929569))))

(assert (= (and b!2896028 ((_ is ElementMatch!8849) (regOne!18211 (regOne!18210 r!23079)))) b!2896223))

(assert (= (and b!2896028 ((_ is Concat!14170) (regOne!18211 (regOne!18210 r!23079)))) b!2896224))

(assert (= (and b!2896028 ((_ is Star!8849) (regOne!18211 (regOne!18210 r!23079)))) b!2896225))

(assert (= (and b!2896028 ((_ is Union!8849) (regOne!18211 (regOne!18210 r!23079)))) b!2896226))

(declare-fun b!2896227 () Bool)

(declare-fun e!1829776 () Bool)

(assert (=> b!2896227 (= e!1829776 tp_is_empty!15285)))

(declare-fun b!2896229 () Bool)

(declare-fun tp!929572 () Bool)

(assert (=> b!2896229 (= e!1829776 tp!929572)))

(declare-fun b!2896230 () Bool)

(declare-fun tp!929571 () Bool)

(declare-fun tp!929570 () Bool)

(assert (=> b!2896230 (= e!1829776 (and tp!929571 tp!929570))))

(assert (=> b!2896028 (= tp!929505 e!1829776)))

(declare-fun b!2896228 () Bool)

(declare-fun tp!929573 () Bool)

(declare-fun tp!929574 () Bool)

(assert (=> b!2896228 (= e!1829776 (and tp!929573 tp!929574))))

(assert (= (and b!2896028 ((_ is ElementMatch!8849) (regTwo!18211 (regOne!18210 r!23079)))) b!2896227))

(assert (= (and b!2896028 ((_ is Concat!14170) (regTwo!18211 (regOne!18210 r!23079)))) b!2896228))

(assert (= (and b!2896028 ((_ is Star!8849) (regTwo!18211 (regOne!18210 r!23079)))) b!2896229))

(assert (= (and b!2896028 ((_ is Union!8849) (regTwo!18211 (regOne!18210 r!23079)))) b!2896230))

(declare-fun b!2896231 () Bool)

(declare-fun e!1829777 () Bool)

(assert (=> b!2896231 (= e!1829777 tp_is_empty!15285)))

(declare-fun b!2896233 () Bool)

(declare-fun tp!929577 () Bool)

(assert (=> b!2896233 (= e!1829777 tp!929577)))

(declare-fun b!2896234 () Bool)

(declare-fun tp!929576 () Bool)

(declare-fun tp!929575 () Bool)

(assert (=> b!2896234 (= e!1829777 (and tp!929576 tp!929575))))

(assert (=> b!2896035 (= tp!929518 e!1829777)))

(declare-fun b!2896232 () Bool)

(declare-fun tp!929578 () Bool)

(declare-fun tp!929579 () Bool)

(assert (=> b!2896232 (= e!1829777 (and tp!929578 tp!929579))))

(assert (= (and b!2896035 ((_ is ElementMatch!8849) (reg!9178 (regTwo!18210 r!23079)))) b!2896231))

(assert (= (and b!2896035 ((_ is Concat!14170) (reg!9178 (regTwo!18210 r!23079)))) b!2896232))

(assert (= (and b!2896035 ((_ is Star!8849) (reg!9178 (regTwo!18210 r!23079)))) b!2896233))

(assert (= (and b!2896035 ((_ is Union!8849) (reg!9178 (regTwo!18210 r!23079)))) b!2896234))

(declare-fun b!2896235 () Bool)

(declare-fun e!1829778 () Bool)

(assert (=> b!2896235 (= e!1829778 tp_is_empty!15285)))

(declare-fun b!2896237 () Bool)

(declare-fun tp!929582 () Bool)

(assert (=> b!2896237 (= e!1829778 tp!929582)))

(declare-fun b!2896238 () Bool)

(declare-fun tp!929581 () Bool)

(declare-fun tp!929580 () Bool)

(assert (=> b!2896238 (= e!1829778 (and tp!929581 tp!929580))))

(assert (=> b!2896026 (= tp!929508 e!1829778)))

(declare-fun b!2896236 () Bool)

(declare-fun tp!929583 () Bool)

(declare-fun tp!929584 () Bool)

(assert (=> b!2896236 (= e!1829778 (and tp!929583 tp!929584))))

(assert (= (and b!2896026 ((_ is ElementMatch!8849) (regOne!18210 (regOne!18210 r!23079)))) b!2896235))

(assert (= (and b!2896026 ((_ is Concat!14170) (regOne!18210 (regOne!18210 r!23079)))) b!2896236))

(assert (= (and b!2896026 ((_ is Star!8849) (regOne!18210 (regOne!18210 r!23079)))) b!2896237))

(assert (= (and b!2896026 ((_ is Union!8849) (regOne!18210 (regOne!18210 r!23079)))) b!2896238))

(declare-fun b!2896239 () Bool)

(declare-fun e!1829779 () Bool)

(assert (=> b!2896239 (= e!1829779 tp_is_empty!15285)))

(declare-fun b!2896241 () Bool)

(declare-fun tp!929587 () Bool)

(assert (=> b!2896241 (= e!1829779 tp!929587)))

(declare-fun b!2896242 () Bool)

(declare-fun tp!929586 () Bool)

(declare-fun tp!929585 () Bool)

(assert (=> b!2896242 (= e!1829779 (and tp!929586 tp!929585))))

(assert (=> b!2896026 (= tp!929509 e!1829779)))

(declare-fun b!2896240 () Bool)

(declare-fun tp!929588 () Bool)

(declare-fun tp!929589 () Bool)

(assert (=> b!2896240 (= e!1829779 (and tp!929588 tp!929589))))

(assert (= (and b!2896026 ((_ is ElementMatch!8849) (regTwo!18210 (regOne!18210 r!23079)))) b!2896239))

(assert (= (and b!2896026 ((_ is Concat!14170) (regTwo!18210 (regOne!18210 r!23079)))) b!2896240))

(assert (= (and b!2896026 ((_ is Star!8849) (regTwo!18210 (regOne!18210 r!23079)))) b!2896241))

(assert (= (and b!2896026 ((_ is Union!8849) (regTwo!18210 (regOne!18210 r!23079)))) b!2896242))

(declare-fun b!2896243 () Bool)

(declare-fun e!1829780 () Bool)

(assert (=> b!2896243 (= e!1829780 tp_is_empty!15285)))

(declare-fun b!2896245 () Bool)

(declare-fun tp!929592 () Bool)

(assert (=> b!2896245 (= e!1829780 tp!929592)))

(declare-fun b!2896246 () Bool)

(declare-fun tp!929591 () Bool)

(declare-fun tp!929590 () Bool)

(assert (=> b!2896246 (= e!1829780 (and tp!929591 tp!929590))))

(assert (=> b!2896036 (= tp!929517 e!1829780)))

(declare-fun b!2896244 () Bool)

(declare-fun tp!929593 () Bool)

(declare-fun tp!929594 () Bool)

(assert (=> b!2896244 (= e!1829780 (and tp!929593 tp!929594))))

(assert (= (and b!2896036 ((_ is ElementMatch!8849) (regOne!18211 (regTwo!18210 r!23079)))) b!2896243))

(assert (= (and b!2896036 ((_ is Concat!14170) (regOne!18211 (regTwo!18210 r!23079)))) b!2896244))

(assert (= (and b!2896036 ((_ is Star!8849) (regOne!18211 (regTwo!18210 r!23079)))) b!2896245))

(assert (= (and b!2896036 ((_ is Union!8849) (regOne!18211 (regTwo!18210 r!23079)))) b!2896246))

(declare-fun b!2896247 () Bool)

(declare-fun e!1829781 () Bool)

(assert (=> b!2896247 (= e!1829781 tp_is_empty!15285)))

(declare-fun b!2896249 () Bool)

(declare-fun tp!929597 () Bool)

(assert (=> b!2896249 (= e!1829781 tp!929597)))

(declare-fun b!2896250 () Bool)

(declare-fun tp!929596 () Bool)

(declare-fun tp!929595 () Bool)

(assert (=> b!2896250 (= e!1829781 (and tp!929596 tp!929595))))

(assert (=> b!2896036 (= tp!929514 e!1829781)))

(declare-fun b!2896248 () Bool)

(declare-fun tp!929598 () Bool)

(declare-fun tp!929599 () Bool)

(assert (=> b!2896248 (= e!1829781 (and tp!929598 tp!929599))))

(assert (= (and b!2896036 ((_ is ElementMatch!8849) (regTwo!18211 (regTwo!18210 r!23079)))) b!2896247))

(assert (= (and b!2896036 ((_ is Concat!14170) (regTwo!18211 (regTwo!18210 r!23079)))) b!2896248))

(assert (= (and b!2896036 ((_ is Star!8849) (regTwo!18211 (regTwo!18210 r!23079)))) b!2896249))

(assert (= (and b!2896036 ((_ is Union!8849) (regTwo!18211 (regTwo!18210 r!23079)))) b!2896250))

(declare-fun b!2896251 () Bool)

(declare-fun e!1829782 () Bool)

(assert (=> b!2896251 (= e!1829782 tp_is_empty!15285)))

(declare-fun b!2896253 () Bool)

(declare-fun tp!929602 () Bool)

(assert (=> b!2896253 (= e!1829782 tp!929602)))

(declare-fun b!2896254 () Bool)

(declare-fun tp!929601 () Bool)

(declare-fun tp!929600 () Bool)

(assert (=> b!2896254 (= e!1829782 (and tp!929601 tp!929600))))

(assert (=> b!2896012 (= tp!929491 e!1829782)))

(declare-fun b!2896252 () Bool)

(declare-fun tp!929603 () Bool)

(declare-fun tp!929604 () Bool)

(assert (=> b!2896252 (= e!1829782 (and tp!929603 tp!929604))))

(assert (= (and b!2896012 ((_ is ElementMatch!8849) (regOne!18211 (reg!9178 r!23079)))) b!2896251))

(assert (= (and b!2896012 ((_ is Concat!14170) (regOne!18211 (reg!9178 r!23079)))) b!2896252))

(assert (= (and b!2896012 ((_ is Star!8849) (regOne!18211 (reg!9178 r!23079)))) b!2896253))

(assert (= (and b!2896012 ((_ is Union!8849) (regOne!18211 (reg!9178 r!23079)))) b!2896254))

(declare-fun b!2896255 () Bool)

(declare-fun e!1829783 () Bool)

(assert (=> b!2896255 (= e!1829783 tp_is_empty!15285)))

(declare-fun b!2896257 () Bool)

(declare-fun tp!929607 () Bool)

(assert (=> b!2896257 (= e!1829783 tp!929607)))

(declare-fun b!2896258 () Bool)

(declare-fun tp!929606 () Bool)

(declare-fun tp!929605 () Bool)

(assert (=> b!2896258 (= e!1829783 (and tp!929606 tp!929605))))

(assert (=> b!2896012 (= tp!929490 e!1829783)))

(declare-fun b!2896256 () Bool)

(declare-fun tp!929608 () Bool)

(declare-fun tp!929609 () Bool)

(assert (=> b!2896256 (= e!1829783 (and tp!929608 tp!929609))))

(assert (= (and b!2896012 ((_ is ElementMatch!8849) (regTwo!18211 (reg!9178 r!23079)))) b!2896255))

(assert (= (and b!2896012 ((_ is Concat!14170) (regTwo!18211 (reg!9178 r!23079)))) b!2896256))

(assert (= (and b!2896012 ((_ is Star!8849) (regTwo!18211 (reg!9178 r!23079)))) b!2896257))

(assert (= (and b!2896012 ((_ is Union!8849) (regTwo!18211 (reg!9178 r!23079)))) b!2896258))

(declare-fun b!2896259 () Bool)

(declare-fun e!1829784 () Bool)

(assert (=> b!2896259 (= e!1829784 tp_is_empty!15285)))

(declare-fun b!2896261 () Bool)

(declare-fun tp!929612 () Bool)

(assert (=> b!2896261 (= e!1829784 tp!929612)))

(declare-fun b!2896262 () Bool)

(declare-fun tp!929611 () Bool)

(declare-fun tp!929610 () Bool)

(assert (=> b!2896262 (= e!1829784 (and tp!929611 tp!929610))))

(assert (=> b!2896034 (= tp!929519 e!1829784)))

(declare-fun b!2896260 () Bool)

(declare-fun tp!929613 () Bool)

(declare-fun tp!929614 () Bool)

(assert (=> b!2896260 (= e!1829784 (and tp!929613 tp!929614))))

(assert (= (and b!2896034 ((_ is ElementMatch!8849) (regOne!18210 (regTwo!18210 r!23079)))) b!2896259))

(assert (= (and b!2896034 ((_ is Concat!14170) (regOne!18210 (regTwo!18210 r!23079)))) b!2896260))

(assert (= (and b!2896034 ((_ is Star!8849) (regOne!18210 (regTwo!18210 r!23079)))) b!2896261))

(assert (= (and b!2896034 ((_ is Union!8849) (regOne!18210 (regTwo!18210 r!23079)))) b!2896262))

(declare-fun b!2896263 () Bool)

(declare-fun e!1829785 () Bool)

(assert (=> b!2896263 (= e!1829785 tp_is_empty!15285)))

(declare-fun b!2896265 () Bool)

(declare-fun tp!929617 () Bool)

(assert (=> b!2896265 (= e!1829785 tp!929617)))

(declare-fun b!2896266 () Bool)

(declare-fun tp!929616 () Bool)

(declare-fun tp!929615 () Bool)

(assert (=> b!2896266 (= e!1829785 (and tp!929616 tp!929615))))

(assert (=> b!2896034 (= tp!929520 e!1829785)))

(declare-fun b!2896264 () Bool)

(declare-fun tp!929618 () Bool)

(declare-fun tp!929619 () Bool)

(assert (=> b!2896264 (= e!1829785 (and tp!929618 tp!929619))))

(assert (= (and b!2896034 ((_ is ElementMatch!8849) (regTwo!18210 (regTwo!18210 r!23079)))) b!2896263))

(assert (= (and b!2896034 ((_ is Concat!14170) (regTwo!18210 (regTwo!18210 r!23079)))) b!2896264))

(assert (= (and b!2896034 ((_ is Star!8849) (regTwo!18210 (regTwo!18210 r!23079)))) b!2896265))

(assert (= (and b!2896034 ((_ is Union!8849) (regTwo!18210 (regTwo!18210 r!23079)))) b!2896266))

(declare-fun b!2896267 () Bool)

(declare-fun e!1829786 () Bool)

(assert (=> b!2896267 (= e!1829786 tp_is_empty!15285)))

(declare-fun b!2896269 () Bool)

(declare-fun tp!929622 () Bool)

(assert (=> b!2896269 (= e!1829786 tp!929622)))

(declare-fun b!2896270 () Bool)

(declare-fun tp!929621 () Bool)

(declare-fun tp!929620 () Bool)

(assert (=> b!2896270 (= e!1829786 (and tp!929621 tp!929620))))

(assert (=> b!2896015 (= tp!929497 e!1829786)))

(declare-fun b!2896268 () Bool)

(declare-fun tp!929623 () Bool)

(declare-fun tp!929624 () Bool)

(assert (=> b!2896268 (= e!1829786 (and tp!929623 tp!929624))))

(assert (= (and b!2896015 ((_ is ElementMatch!8849) (reg!9178 (regOne!18211 r!23079)))) b!2896267))

(assert (= (and b!2896015 ((_ is Concat!14170) (reg!9178 (regOne!18211 r!23079)))) b!2896268))

(assert (= (and b!2896015 ((_ is Star!8849) (reg!9178 (regOne!18211 r!23079)))) b!2896269))

(assert (= (and b!2896015 ((_ is Union!8849) (reg!9178 (regOne!18211 r!23079)))) b!2896270))

(declare-fun b!2896271 () Bool)

(declare-fun e!1829787 () Bool)

(assert (=> b!2896271 (= e!1829787 tp_is_empty!15285)))

(declare-fun b!2896273 () Bool)

(declare-fun tp!929627 () Bool)

(assert (=> b!2896273 (= e!1829787 tp!929627)))

(declare-fun b!2896274 () Bool)

(declare-fun tp!929626 () Bool)

(declare-fun tp!929625 () Bool)

(assert (=> b!2896274 (= e!1829787 (and tp!929626 tp!929625))))

(assert (=> b!2896020 (= tp!929501 e!1829787)))

(declare-fun b!2896272 () Bool)

(declare-fun tp!929628 () Bool)

(declare-fun tp!929629 () Bool)

(assert (=> b!2896272 (= e!1829787 (and tp!929628 tp!929629))))

(assert (= (and b!2896020 ((_ is ElementMatch!8849) (regOne!18211 (regTwo!18211 r!23079)))) b!2896271))

(assert (= (and b!2896020 ((_ is Concat!14170) (regOne!18211 (regTwo!18211 r!23079)))) b!2896272))

(assert (= (and b!2896020 ((_ is Star!8849) (regOne!18211 (regTwo!18211 r!23079)))) b!2896273))

(assert (= (and b!2896020 ((_ is Union!8849) (regOne!18211 (regTwo!18211 r!23079)))) b!2896274))

(declare-fun b!2896275 () Bool)

(declare-fun e!1829788 () Bool)

(assert (=> b!2896275 (= e!1829788 tp_is_empty!15285)))

(declare-fun b!2896277 () Bool)

(declare-fun tp!929632 () Bool)

(assert (=> b!2896277 (= e!1829788 tp!929632)))

(declare-fun b!2896278 () Bool)

(declare-fun tp!929631 () Bool)

(declare-fun tp!929630 () Bool)

(assert (=> b!2896278 (= e!1829788 (and tp!929631 tp!929630))))

(assert (=> b!2896020 (= tp!929500 e!1829788)))

(declare-fun b!2896276 () Bool)

(declare-fun tp!929633 () Bool)

(declare-fun tp!929634 () Bool)

(assert (=> b!2896276 (= e!1829788 (and tp!929633 tp!929634))))

(assert (= (and b!2896020 ((_ is ElementMatch!8849) (regTwo!18211 (regTwo!18211 r!23079)))) b!2896275))

(assert (= (and b!2896020 ((_ is Concat!14170) (regTwo!18211 (regTwo!18211 r!23079)))) b!2896276))

(assert (= (and b!2896020 ((_ is Star!8849) (regTwo!18211 (regTwo!18211 r!23079)))) b!2896277))

(assert (= (and b!2896020 ((_ is Union!8849) (regTwo!18211 (regTwo!18211 r!23079)))) b!2896278))

(declare-fun b!2896279 () Bool)

(declare-fun e!1829789 () Bool)

(assert (=> b!2896279 (= e!1829789 tp_is_empty!15285)))

(declare-fun b!2896281 () Bool)

(declare-fun tp!929637 () Bool)

(assert (=> b!2896281 (= e!1829789 tp!929637)))

(declare-fun b!2896282 () Bool)

(declare-fun tp!929636 () Bool)

(declare-fun tp!929635 () Bool)

(assert (=> b!2896282 (= e!1829789 (and tp!929636 tp!929635))))

(assert (=> b!2896011 (= tp!929492 e!1829789)))

(declare-fun b!2896280 () Bool)

(declare-fun tp!929638 () Bool)

(declare-fun tp!929639 () Bool)

(assert (=> b!2896280 (= e!1829789 (and tp!929638 tp!929639))))

(assert (= (and b!2896011 ((_ is ElementMatch!8849) (reg!9178 (reg!9178 r!23079)))) b!2896279))

(assert (= (and b!2896011 ((_ is Concat!14170) (reg!9178 (reg!9178 r!23079)))) b!2896280))

(assert (= (and b!2896011 ((_ is Star!8849) (reg!9178 (reg!9178 r!23079)))) b!2896281))

(assert (= (and b!2896011 ((_ is Union!8849) (reg!9178 (reg!9178 r!23079)))) b!2896282))

(declare-fun b!2896283 () Bool)

(declare-fun e!1829790 () Bool)

(assert (=> b!2896283 (= e!1829790 tp_is_empty!15285)))

(declare-fun b!2896285 () Bool)

(declare-fun tp!929642 () Bool)

(assert (=> b!2896285 (= e!1829790 tp!929642)))

(declare-fun b!2896286 () Bool)

(declare-fun tp!929641 () Bool)

(declare-fun tp!929640 () Bool)

(assert (=> b!2896286 (= e!1829790 (and tp!929641 tp!929640))))

(assert (=> b!2896016 (= tp!929496 e!1829790)))

(declare-fun b!2896284 () Bool)

(declare-fun tp!929643 () Bool)

(declare-fun tp!929644 () Bool)

(assert (=> b!2896284 (= e!1829790 (and tp!929643 tp!929644))))

(assert (= (and b!2896016 ((_ is ElementMatch!8849) (regOne!18211 (regOne!18211 r!23079)))) b!2896283))

(assert (= (and b!2896016 ((_ is Concat!14170) (regOne!18211 (regOne!18211 r!23079)))) b!2896284))

(assert (= (and b!2896016 ((_ is Star!8849) (regOne!18211 (regOne!18211 r!23079)))) b!2896285))

(assert (= (and b!2896016 ((_ is Union!8849) (regOne!18211 (regOne!18211 r!23079)))) b!2896286))

(declare-fun b!2896287 () Bool)

(declare-fun e!1829791 () Bool)

(assert (=> b!2896287 (= e!1829791 tp_is_empty!15285)))

(declare-fun b!2896289 () Bool)

(declare-fun tp!929647 () Bool)

(assert (=> b!2896289 (= e!1829791 tp!929647)))

(declare-fun b!2896290 () Bool)

(declare-fun tp!929646 () Bool)

(declare-fun tp!929645 () Bool)

(assert (=> b!2896290 (= e!1829791 (and tp!929646 tp!929645))))

(assert (=> b!2896016 (= tp!929495 e!1829791)))

(declare-fun b!2896288 () Bool)

(declare-fun tp!929648 () Bool)

(declare-fun tp!929649 () Bool)

(assert (=> b!2896288 (= e!1829791 (and tp!929648 tp!929649))))

(assert (= (and b!2896016 ((_ is ElementMatch!8849) (regTwo!18211 (regOne!18211 r!23079)))) b!2896287))

(assert (= (and b!2896016 ((_ is Concat!14170) (regTwo!18211 (regOne!18211 r!23079)))) b!2896288))

(assert (= (and b!2896016 ((_ is Star!8849) (regTwo!18211 (regOne!18211 r!23079)))) b!2896289))

(assert (= (and b!2896016 ((_ is Union!8849) (regTwo!18211 (regOne!18211 r!23079)))) b!2896290))

(declare-fun b!2896291 () Bool)

(declare-fun e!1829792 () Bool)

(assert (=> b!2896291 (= e!1829792 tp_is_empty!15285)))

(declare-fun b!2896293 () Bool)

(declare-fun tp!929652 () Bool)

(assert (=> b!2896293 (= e!1829792 tp!929652)))

(declare-fun b!2896294 () Bool)

(declare-fun tp!929651 () Bool)

(declare-fun tp!929650 () Bool)

(assert (=> b!2896294 (= e!1829792 (and tp!929651 tp!929650))))

(assert (=> b!2896014 (= tp!929498 e!1829792)))

(declare-fun b!2896292 () Bool)

(declare-fun tp!929653 () Bool)

(declare-fun tp!929654 () Bool)

(assert (=> b!2896292 (= e!1829792 (and tp!929653 tp!929654))))

(assert (= (and b!2896014 ((_ is ElementMatch!8849) (regOne!18210 (regOne!18211 r!23079)))) b!2896291))

(assert (= (and b!2896014 ((_ is Concat!14170) (regOne!18210 (regOne!18211 r!23079)))) b!2896292))

(assert (= (and b!2896014 ((_ is Star!8849) (regOne!18210 (regOne!18211 r!23079)))) b!2896293))

(assert (= (and b!2896014 ((_ is Union!8849) (regOne!18210 (regOne!18211 r!23079)))) b!2896294))

(declare-fun b!2896295 () Bool)

(declare-fun e!1829793 () Bool)

(assert (=> b!2896295 (= e!1829793 tp_is_empty!15285)))

(declare-fun b!2896297 () Bool)

(declare-fun tp!929657 () Bool)

(assert (=> b!2896297 (= e!1829793 tp!929657)))

(declare-fun b!2896298 () Bool)

(declare-fun tp!929656 () Bool)

(declare-fun tp!929655 () Bool)

(assert (=> b!2896298 (= e!1829793 (and tp!929656 tp!929655))))

(assert (=> b!2896014 (= tp!929499 e!1829793)))

(declare-fun b!2896296 () Bool)

(declare-fun tp!929658 () Bool)

(declare-fun tp!929659 () Bool)

(assert (=> b!2896296 (= e!1829793 (and tp!929658 tp!929659))))

(assert (= (and b!2896014 ((_ is ElementMatch!8849) (regTwo!18210 (regOne!18211 r!23079)))) b!2896295))

(assert (= (and b!2896014 ((_ is Concat!14170) (regTwo!18210 (regOne!18211 r!23079)))) b!2896296))

(assert (= (and b!2896014 ((_ is Star!8849) (regTwo!18210 (regOne!18211 r!23079)))) b!2896297))

(assert (= (and b!2896014 ((_ is Union!8849) (regTwo!18210 (regOne!18211 r!23079)))) b!2896298))

(declare-fun b!2896299 () Bool)

(declare-fun e!1829794 () Bool)

(assert (=> b!2896299 (= e!1829794 tp_is_empty!15285)))

(declare-fun b!2896301 () Bool)

(declare-fun tp!929662 () Bool)

(assert (=> b!2896301 (= e!1829794 tp!929662)))

(declare-fun b!2896302 () Bool)

(declare-fun tp!929661 () Bool)

(declare-fun tp!929660 () Bool)

(assert (=> b!2896302 (= e!1829794 (and tp!929661 tp!929660))))

(assert (=> b!2896019 (= tp!929502 e!1829794)))

(declare-fun b!2896300 () Bool)

(declare-fun tp!929663 () Bool)

(declare-fun tp!929664 () Bool)

(assert (=> b!2896300 (= e!1829794 (and tp!929663 tp!929664))))

(assert (= (and b!2896019 ((_ is ElementMatch!8849) (reg!9178 (regTwo!18211 r!23079)))) b!2896299))

(assert (= (and b!2896019 ((_ is Concat!14170) (reg!9178 (regTwo!18211 r!23079)))) b!2896300))

(assert (= (and b!2896019 ((_ is Star!8849) (reg!9178 (regTwo!18211 r!23079)))) b!2896301))

(assert (= (and b!2896019 ((_ is Union!8849) (reg!9178 (regTwo!18211 r!23079)))) b!2896302))

(declare-fun b!2896303 () Bool)

(declare-fun e!1829795 () Bool)

(assert (=> b!2896303 (= e!1829795 tp_is_empty!15285)))

(declare-fun b!2896305 () Bool)

(declare-fun tp!929667 () Bool)

(assert (=> b!2896305 (= e!1829795 tp!929667)))

(declare-fun b!2896306 () Bool)

(declare-fun tp!929666 () Bool)

(declare-fun tp!929665 () Bool)

(assert (=> b!2896306 (= e!1829795 (and tp!929666 tp!929665))))

(assert (=> b!2896010 (= tp!929493 e!1829795)))

(declare-fun b!2896304 () Bool)

(declare-fun tp!929668 () Bool)

(declare-fun tp!929669 () Bool)

(assert (=> b!2896304 (= e!1829795 (and tp!929668 tp!929669))))

(assert (= (and b!2896010 ((_ is ElementMatch!8849) (regOne!18210 (reg!9178 r!23079)))) b!2896303))

(assert (= (and b!2896010 ((_ is Concat!14170) (regOne!18210 (reg!9178 r!23079)))) b!2896304))

(assert (= (and b!2896010 ((_ is Star!8849) (regOne!18210 (reg!9178 r!23079)))) b!2896305))

(assert (= (and b!2896010 ((_ is Union!8849) (regOne!18210 (reg!9178 r!23079)))) b!2896306))

(declare-fun b!2896307 () Bool)

(declare-fun e!1829796 () Bool)

(assert (=> b!2896307 (= e!1829796 tp_is_empty!15285)))

(declare-fun b!2896309 () Bool)

(declare-fun tp!929672 () Bool)

(assert (=> b!2896309 (= e!1829796 tp!929672)))

(declare-fun b!2896310 () Bool)

(declare-fun tp!929671 () Bool)

(declare-fun tp!929670 () Bool)

(assert (=> b!2896310 (= e!1829796 (and tp!929671 tp!929670))))

(assert (=> b!2896010 (= tp!929494 e!1829796)))

(declare-fun b!2896308 () Bool)

(declare-fun tp!929673 () Bool)

(declare-fun tp!929674 () Bool)

(assert (=> b!2896308 (= e!1829796 (and tp!929673 tp!929674))))

(assert (= (and b!2896010 ((_ is ElementMatch!8849) (regTwo!18210 (reg!9178 r!23079)))) b!2896307))

(assert (= (and b!2896010 ((_ is Concat!14170) (regTwo!18210 (reg!9178 r!23079)))) b!2896308))

(assert (= (and b!2896010 ((_ is Star!8849) (regTwo!18210 (reg!9178 r!23079)))) b!2896309))

(assert (= (and b!2896010 ((_ is Union!8849) (regTwo!18210 (reg!9178 r!23079)))) b!2896310))

(check-sat (not b!2896222) (not b!2896264) (not bm!188399) (not b!2896281) (not bm!188393) (not bm!188383) (not b!2896105) (not b!2896254) (not bm!188400) (not b!2896300) (not b!2896248) (not b!2896213) (not b!2896260) (not b!2896234) (not b!2896130) (not b!2896240) (not b!2896305) (not b!2896266) (not b!2896077) (not b!2896242) (not b!2896187) (not b!2896078) (not b!2896273) (not b!2896091) (not b!2896301) (not b!2896203) (not d!834896) (not b!2896258) (not b!2896306) (not b!2896277) (not b!2896272) (not b!2896297) (not b!2896310) (not bm!188395) (not b!2896308) (not bm!188391) (not b!2896274) (not b!2896296) (not b!2896269) (not b!2896233) (not b!2896253) (not b!2896282) (not b!2896245) (not bm!188389) (not bm!188403) (not b!2896146) tp_is_empty!15285 (not b!2896250) (not b!2896238) (not b!2896065) (not b!2896304) (not b!2896229) (not b!2896218) (not b!2896228) (not b!2896294) (not b!2896094) (not d!834898) (not b!2896244) (not d!834900) (not b!2896246) (not bm!188402) (not b!2896171) (not b!2896280) (not bm!188387) (not b!2896241) (not b!2896268) (not bm!188401) (not bm!188388) (not b!2896302) (not b!2896286) (not b!2896220) (not b!2896288) (not b!2896224) (not d!834892) (not bm!188384) (not bm!188396) (not b!2896216) (not b!2896261) (not b!2896276) (not b!2896095) (not b!2896284) (not b!2896119) (not b!2896237) (not bm!188404) (not b!2896221) (not b!2896090) (not b!2896270) (not b!2896285) (not b!2896217) (not b!2896289) (not b!2896257) (not b!2896230) (not b!2896086) (not b!2896226) (not b!2896160) (not bm!188405) (not b!2896236) (not b!2896293) (not bm!188386) (not b!2896249) (not b!2896290) (not d!834890) (not b!2896214) (not b!2896292) (not b!2896252) (not b!2896265) (not b!2896256) (not b!2896298) (not b!2896232) (not bm!188398) (not bm!188392) (not b!2896278) (not b!2896309) (not b!2896225) (not b!2896262) (not bm!188394) (not b!2896212))
(check-sat)
