; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292692 () Bool)

(assert start!292692)

(declare-fun b!3068300 () Bool)

(declare-fun e!1920563 () Bool)

(declare-datatypes ((C!19200 0))(
  ( (C!19201 (val!11636 Int)) )
))
(declare-datatypes ((Regex!9507 0))(
  ( (ElementMatch!9507 (c!509919 C!19200)) (Concat!14828 (regOne!19526 Regex!9507) (regTwo!19526 Regex!9507)) (EmptyExpr!9507) (Star!9507 (reg!9836 Regex!9507)) (EmptyLang!9507) (Union!9507 (regOne!19527 Regex!9507) (regTwo!19527 Regex!9507)) )
))
(declare-fun r!17423 () Regex!9507)

(declare-fun validRegex!4240 (Regex!9507) Bool)

(assert (=> b!3068300 (= e!1920563 (validRegex!4240 (regTwo!19526 r!17423)))))

(declare-datatypes ((List!35372 0))(
  ( (Nil!35248) (Cons!35248 (h!40668 C!19200) (t!234437 List!35372)) )
))
(declare-fun s!11993 () List!35372)

(declare-fun lt!1051133 () Regex!9507)

(declare-fun matchR!4389 (Regex!9507 List!35372) Bool)

(assert (=> b!3068300 (= (matchR!4389 (regOne!19526 r!17423) s!11993) (matchR!4389 lt!1051133 s!11993))))

(declare-datatypes ((Unit!49453 0))(
  ( (Unit!49454) )
))
(declare-fun lt!1051132 () Unit!49453)

(declare-fun lemmaSimplifySound!288 (Regex!9507 List!35372) Unit!49453)

(assert (=> b!3068300 (= lt!1051132 (lemmaSimplifySound!288 (regOne!19526 r!17423) s!11993))))

(declare-fun b!3068302 () Bool)

(declare-fun e!1920562 () Bool)

(declare-fun tp!968446 () Bool)

(declare-fun tp!968447 () Bool)

(assert (=> b!3068302 (= e!1920562 (and tp!968446 tp!968447))))

(declare-fun b!3068303 () Bool)

(declare-fun res!1259393 () Bool)

(declare-fun e!1920559 () Bool)

(assert (=> b!3068303 (=> res!1259393 e!1920559)))

(declare-fun isEmpty!19573 (List!35372) Bool)

(assert (=> b!3068303 (= res!1259393 (isEmpty!19573 s!11993))))

(declare-fun b!3068304 () Bool)

(declare-fun tp_is_empty!16577 () Bool)

(assert (=> b!3068304 (= e!1920562 tp_is_empty!16577)))

(declare-fun b!3068305 () Bool)

(declare-fun res!1259392 () Bool)

(assert (=> b!3068305 (=> res!1259392 e!1920563)))

(declare-fun lt!1051136 () Regex!9507)

(declare-fun isEmptyLang!558 (Regex!9507) Bool)

(assert (=> b!3068305 (= res!1259392 (isEmptyLang!558 lt!1051136))))

(declare-fun b!3068306 () Bool)

(declare-fun res!1259390 () Bool)

(assert (=> b!3068306 (=> res!1259390 e!1920563)))

(declare-fun isEmptyExpr!564 (Regex!9507) Bool)

(assert (=> b!3068306 (= res!1259390 (isEmptyExpr!564 lt!1051133))))

(declare-fun b!3068307 () Bool)

(declare-fun tp!968449 () Bool)

(declare-fun tp!968444 () Bool)

(assert (=> b!3068307 (= e!1920562 (and tp!968449 tp!968444))))

(declare-fun res!1259388 () Bool)

(declare-fun e!1920561 () Bool)

(assert (=> start!292692 (=> (not res!1259388) (not e!1920561))))

(assert (=> start!292692 (= res!1259388 (validRegex!4240 r!17423))))

(assert (=> start!292692 e!1920561))

(assert (=> start!292692 e!1920562))

(declare-fun e!1920560 () Bool)

(assert (=> start!292692 e!1920560))

(declare-fun b!3068301 () Bool)

(declare-fun res!1259391 () Bool)

(assert (=> b!3068301 (=> res!1259391 e!1920563)))

(assert (=> b!3068301 (= res!1259391 (not (isEmptyExpr!564 lt!1051136)))))

(declare-fun b!3068308 () Bool)

(declare-fun tp!968445 () Bool)

(assert (=> b!3068308 (= e!1920562 tp!968445)))

(declare-fun b!3068309 () Bool)

(assert (=> b!3068309 (= e!1920559 e!1920563)))

(declare-fun res!1259389 () Bool)

(assert (=> b!3068309 (=> res!1259389 e!1920563)))

(assert (=> b!3068309 (= res!1259389 (isEmptyLang!558 lt!1051133))))

(declare-fun simplify!462 (Regex!9507) Regex!9507)

(assert (=> b!3068309 (= lt!1051136 (simplify!462 (regTwo!19526 r!17423)))))

(assert (=> b!3068309 (= lt!1051133 (simplify!462 (regOne!19526 r!17423)))))

(declare-fun b!3068310 () Bool)

(declare-fun tp!968448 () Bool)

(assert (=> b!3068310 (= e!1920560 (and tp_is_empty!16577 tp!968448))))

(declare-fun b!3068311 () Bool)

(assert (=> b!3068311 (= e!1920561 (not e!1920559))))

(declare-fun res!1259394 () Bool)

(assert (=> b!3068311 (=> res!1259394 e!1920559)))

(declare-fun lt!1051135 () Bool)

(get-info :version)

(assert (=> b!3068311 (= res!1259394 (or lt!1051135 (not ((_ is Concat!14828) r!17423))))))

(declare-fun matchRSpec!1644 (Regex!9507 List!35372) Bool)

(assert (=> b!3068311 (= lt!1051135 (matchRSpec!1644 r!17423 s!11993))))

(assert (=> b!3068311 (= lt!1051135 (matchR!4389 r!17423 s!11993))))

(declare-fun lt!1051134 () Unit!49453)

(declare-fun mainMatchTheorem!1644 (Regex!9507 List!35372) Unit!49453)

(assert (=> b!3068311 (= lt!1051134 (mainMatchTheorem!1644 r!17423 s!11993))))

(assert (= (and start!292692 res!1259388) b!3068311))

(assert (= (and b!3068311 (not res!1259394)) b!3068303))

(assert (= (and b!3068303 (not res!1259393)) b!3068309))

(assert (= (and b!3068309 (not res!1259389)) b!3068305))

(assert (= (and b!3068305 (not res!1259392)) b!3068306))

(assert (= (and b!3068306 (not res!1259390)) b!3068301))

(assert (= (and b!3068301 (not res!1259391)) b!3068300))

(assert (= (and start!292692 ((_ is ElementMatch!9507) r!17423)) b!3068304))

(assert (= (and start!292692 ((_ is Concat!14828) r!17423)) b!3068302))

(assert (= (and start!292692 ((_ is Star!9507) r!17423)) b!3068308))

(assert (= (and start!292692 ((_ is Union!9507) r!17423)) b!3068307))

(assert (= (and start!292692 ((_ is Cons!35248) s!11993)) b!3068310))

(declare-fun m!3384543 () Bool)

(assert (=> b!3068305 m!3384543))

(declare-fun m!3384545 () Bool)

(assert (=> b!3068306 m!3384545))

(declare-fun m!3384547 () Bool)

(assert (=> b!3068311 m!3384547))

(declare-fun m!3384549 () Bool)

(assert (=> b!3068311 m!3384549))

(declare-fun m!3384551 () Bool)

(assert (=> b!3068311 m!3384551))

(declare-fun m!3384553 () Bool)

(assert (=> b!3068301 m!3384553))

(declare-fun m!3384555 () Bool)

(assert (=> start!292692 m!3384555))

(declare-fun m!3384557 () Bool)

(assert (=> b!3068300 m!3384557))

(declare-fun m!3384559 () Bool)

(assert (=> b!3068300 m!3384559))

(declare-fun m!3384561 () Bool)

(assert (=> b!3068300 m!3384561))

(declare-fun m!3384563 () Bool)

(assert (=> b!3068300 m!3384563))

(declare-fun m!3384565 () Bool)

(assert (=> b!3068303 m!3384565))

(declare-fun m!3384567 () Bool)

(assert (=> b!3068309 m!3384567))

(declare-fun m!3384569 () Bool)

(assert (=> b!3068309 m!3384569))

(declare-fun m!3384571 () Bool)

(assert (=> b!3068309 m!3384571))

(check-sat (not start!292692) (not b!3068311) tp_is_empty!16577 (not b!3068302) (not b!3068309) (not b!3068307) (not b!3068303) (not b!3068310) (not b!3068301) (not b!3068305) (not b!3068306) (not b!3068308) (not b!3068300))
(check-sat)
(get-model)

(declare-fun b!3068556 () Bool)

(assert (=> b!3068556 true))

(assert (=> b!3068556 true))

(declare-fun bs!532621 () Bool)

(declare-fun b!3068551 () Bool)

(assert (= bs!532621 (and b!3068551 b!3068556)))

(declare-fun lambda!114064 () Int)

(declare-fun lambda!114063 () Int)

(assert (=> bs!532621 (not (= lambda!114064 lambda!114063))))

(assert (=> b!3068551 true))

(assert (=> b!3068551 true))

(declare-fun bm!212853 () Bool)

(declare-fun call!212859 () Bool)

(assert (=> bm!212853 (= call!212859 (isEmpty!19573 s!11993))))

(declare-fun bm!212854 () Bool)

(declare-fun c!509987 () Bool)

(declare-fun call!212858 () Bool)

(declare-fun Exists!1770 (Int) Bool)

(assert (=> bm!212854 (= call!212858 (Exists!1770 (ite c!509987 lambda!114063 lambda!114064)))))

(declare-fun b!3068547 () Bool)

(declare-fun e!1920701 () Bool)

(declare-fun e!1920702 () Bool)

(assert (=> b!3068547 (= e!1920701 e!1920702)))

(declare-fun res!1259498 () Bool)

(assert (=> b!3068547 (= res!1259498 (not ((_ is EmptyLang!9507) r!17423)))))

(assert (=> b!3068547 (=> (not res!1259498) (not e!1920702))))

(declare-fun b!3068548 () Bool)

(declare-fun e!1920703 () Bool)

(declare-fun e!1920699 () Bool)

(assert (=> b!3068548 (= e!1920703 e!1920699)))

(assert (=> b!3068548 (= c!509987 ((_ is Star!9507) r!17423))))

(declare-fun b!3068549 () Bool)

(declare-fun e!1920704 () Bool)

(assert (=> b!3068549 (= e!1920704 (= s!11993 (Cons!35248 (c!509919 r!17423) Nil!35248)))))

(declare-fun b!3068550 () Bool)

(assert (=> b!3068550 (= e!1920701 call!212859)))

(assert (=> b!3068551 (= e!1920699 call!212858)))

(declare-fun b!3068552 () Bool)

(declare-fun c!509988 () Bool)

(assert (=> b!3068552 (= c!509988 ((_ is ElementMatch!9507) r!17423))))

(assert (=> b!3068552 (= e!1920702 e!1920704)))

(declare-fun b!3068553 () Bool)

(declare-fun res!1259497 () Bool)

(declare-fun e!1920700 () Bool)

(assert (=> b!3068553 (=> res!1259497 e!1920700)))

(assert (=> b!3068553 (= res!1259497 call!212859)))

(assert (=> b!3068553 (= e!1920699 e!1920700)))

(declare-fun d!855973 () Bool)

(declare-fun c!509985 () Bool)

(assert (=> d!855973 (= c!509985 ((_ is EmptyExpr!9507) r!17423))))

(assert (=> d!855973 (= (matchRSpec!1644 r!17423 s!11993) e!1920701)))

(declare-fun b!3068554 () Bool)

(declare-fun e!1920698 () Bool)

(assert (=> b!3068554 (= e!1920703 e!1920698)))

(declare-fun res!1259496 () Bool)

(assert (=> b!3068554 (= res!1259496 (matchRSpec!1644 (regOne!19527 r!17423) s!11993))))

(assert (=> b!3068554 (=> res!1259496 e!1920698)))

(declare-fun b!3068555 () Bool)

(declare-fun c!509986 () Bool)

(assert (=> b!3068555 (= c!509986 ((_ is Union!9507) r!17423))))

(assert (=> b!3068555 (= e!1920704 e!1920703)))

(assert (=> b!3068556 (= e!1920700 call!212858)))

(declare-fun b!3068557 () Bool)

(assert (=> b!3068557 (= e!1920698 (matchRSpec!1644 (regTwo!19527 r!17423) s!11993))))

(assert (= (and d!855973 c!509985) b!3068550))

(assert (= (and d!855973 (not c!509985)) b!3068547))

(assert (= (and b!3068547 res!1259498) b!3068552))

(assert (= (and b!3068552 c!509988) b!3068549))

(assert (= (and b!3068552 (not c!509988)) b!3068555))

(assert (= (and b!3068555 c!509986) b!3068554))

(assert (= (and b!3068555 (not c!509986)) b!3068548))

(assert (= (and b!3068554 (not res!1259496)) b!3068557))

(assert (= (and b!3068548 c!509987) b!3068553))

(assert (= (and b!3068548 (not c!509987)) b!3068551))

(assert (= (and b!3068553 (not res!1259497)) b!3068556))

(assert (= (or b!3068556 b!3068551) bm!212854))

(assert (= (or b!3068550 b!3068553) bm!212853))

(assert (=> bm!212853 m!3384565))

(declare-fun m!3384625 () Bool)

(assert (=> bm!212854 m!3384625))

(declare-fun m!3384627 () Bool)

(assert (=> b!3068554 m!3384627))

(declare-fun m!3384629 () Bool)

(assert (=> b!3068557 m!3384629))

(assert (=> b!3068311 d!855973))

(declare-fun b!3068675 () Bool)

(declare-fun e!1920759 () Bool)

(declare-fun e!1920760 () Bool)

(assert (=> b!3068675 (= e!1920759 e!1920760)))

(declare-fun res!1259525 () Bool)

(assert (=> b!3068675 (=> (not res!1259525) (not e!1920760))))

(declare-fun lt!1051174 () Bool)

(assert (=> b!3068675 (= res!1259525 (not lt!1051174))))

(declare-fun b!3068676 () Bool)

(declare-fun res!1259522 () Bool)

(assert (=> b!3068676 (=> res!1259522 e!1920759)))

(assert (=> b!3068676 (= res!1259522 (not ((_ is ElementMatch!9507) r!17423)))))

(declare-fun e!1920763 () Bool)

(assert (=> b!3068676 (= e!1920763 e!1920759)))

(declare-fun b!3068677 () Bool)

(assert (=> b!3068677 (= e!1920763 (not lt!1051174))))

(declare-fun b!3068678 () Bool)

(declare-fun res!1259528 () Bool)

(declare-fun e!1920761 () Bool)

(assert (=> b!3068678 (=> res!1259528 e!1920761)))

(declare-fun tail!5034 (List!35372) List!35372)

(assert (=> b!3068678 (= res!1259528 (not (isEmpty!19573 (tail!5034 s!11993))))))

(declare-fun b!3068679 () Bool)

(declare-fun e!1920758 () Bool)

(assert (=> b!3068679 (= e!1920758 e!1920763)))

(declare-fun c!510017 () Bool)

(assert (=> b!3068679 (= c!510017 ((_ is EmptyLang!9507) r!17423))))

(declare-fun b!3068680 () Bool)

(assert (=> b!3068680 (= e!1920760 e!1920761)))

(declare-fun res!1259524 () Bool)

(assert (=> b!3068680 (=> res!1259524 e!1920761)))

(declare-fun call!212876 () Bool)

(assert (=> b!3068680 (= res!1259524 call!212876)))

(declare-fun b!3068681 () Bool)

(declare-fun res!1259526 () Bool)

(assert (=> b!3068681 (=> res!1259526 e!1920759)))

(declare-fun e!1920757 () Bool)

(assert (=> b!3068681 (= res!1259526 e!1920757)))

(declare-fun res!1259523 () Bool)

(assert (=> b!3068681 (=> (not res!1259523) (not e!1920757))))

(assert (=> b!3068681 (= res!1259523 lt!1051174)))

(declare-fun bm!212871 () Bool)

(assert (=> bm!212871 (= call!212876 (isEmpty!19573 s!11993))))

(declare-fun b!3068683 () Bool)

(declare-fun head!6808 (List!35372) C!19200)

(assert (=> b!3068683 (= e!1920757 (= (head!6808 s!11993) (c!509919 r!17423)))))

(declare-fun b!3068684 () Bool)

(declare-fun res!1259527 () Bool)

(assert (=> b!3068684 (=> (not res!1259527) (not e!1920757))))

(assert (=> b!3068684 (= res!1259527 (isEmpty!19573 (tail!5034 s!11993)))))

(declare-fun b!3068685 () Bool)

(declare-fun e!1920762 () Bool)

(declare-fun nullable!3153 (Regex!9507) Bool)

(assert (=> b!3068685 (= e!1920762 (nullable!3153 r!17423))))

(declare-fun b!3068686 () Bool)

(assert (=> b!3068686 (= e!1920761 (not (= (head!6808 s!11993) (c!509919 r!17423))))))

(declare-fun b!3068687 () Bool)

(assert (=> b!3068687 (= e!1920758 (= lt!1051174 call!212876))))

(declare-fun b!3068688 () Bool)

(declare-fun derivativeStep!2749 (Regex!9507 C!19200) Regex!9507)

(assert (=> b!3068688 (= e!1920762 (matchR!4389 (derivativeStep!2749 r!17423 (head!6808 s!11993)) (tail!5034 s!11993)))))

(declare-fun d!856003 () Bool)

(assert (=> d!856003 e!1920758))

(declare-fun c!510018 () Bool)

(assert (=> d!856003 (= c!510018 ((_ is EmptyExpr!9507) r!17423))))

(assert (=> d!856003 (= lt!1051174 e!1920762)))

(declare-fun c!510019 () Bool)

(assert (=> d!856003 (= c!510019 (isEmpty!19573 s!11993))))

(assert (=> d!856003 (validRegex!4240 r!17423)))

(assert (=> d!856003 (= (matchR!4389 r!17423 s!11993) lt!1051174)))

(declare-fun b!3068682 () Bool)

(declare-fun res!1259521 () Bool)

(assert (=> b!3068682 (=> (not res!1259521) (not e!1920757))))

(assert (=> b!3068682 (= res!1259521 (not call!212876))))

(assert (= (and d!856003 c!510019) b!3068685))

(assert (= (and d!856003 (not c!510019)) b!3068688))

(assert (= (and d!856003 c!510018) b!3068687))

(assert (= (and d!856003 (not c!510018)) b!3068679))

(assert (= (and b!3068679 c!510017) b!3068677))

(assert (= (and b!3068679 (not c!510017)) b!3068676))

(assert (= (and b!3068676 (not res!1259522)) b!3068681))

(assert (= (and b!3068681 res!1259523) b!3068682))

(assert (= (and b!3068682 res!1259521) b!3068684))

(assert (= (and b!3068684 res!1259527) b!3068683))

(assert (= (and b!3068681 (not res!1259526)) b!3068675))

(assert (= (and b!3068675 res!1259525) b!3068680))

(assert (= (and b!3068680 (not res!1259524)) b!3068678))

(assert (= (and b!3068678 (not res!1259528)) b!3068686))

(assert (= (or b!3068687 b!3068680 b!3068682) bm!212871))

(declare-fun m!3384665 () Bool)

(assert (=> b!3068686 m!3384665))

(assert (=> b!3068688 m!3384665))

(assert (=> b!3068688 m!3384665))

(declare-fun m!3384667 () Bool)

(assert (=> b!3068688 m!3384667))

(declare-fun m!3384669 () Bool)

(assert (=> b!3068688 m!3384669))

(assert (=> b!3068688 m!3384667))

(assert (=> b!3068688 m!3384669))

(declare-fun m!3384671 () Bool)

(assert (=> b!3068688 m!3384671))

(assert (=> b!3068683 m!3384665))

(assert (=> d!856003 m!3384565))

(assert (=> d!856003 m!3384555))

(declare-fun m!3384673 () Bool)

(assert (=> b!3068685 m!3384673))

(assert (=> b!3068684 m!3384669))

(assert (=> b!3068684 m!3384669))

(declare-fun m!3384675 () Bool)

(assert (=> b!3068684 m!3384675))

(assert (=> b!3068678 m!3384669))

(assert (=> b!3068678 m!3384669))

(assert (=> b!3068678 m!3384675))

(assert (=> bm!212871 m!3384565))

(assert (=> b!3068311 d!856003))

(declare-fun d!856007 () Bool)

(assert (=> d!856007 (= (matchR!4389 r!17423 s!11993) (matchRSpec!1644 r!17423 s!11993))))

(declare-fun lt!1051177 () Unit!49453)

(declare-fun choose!18182 (Regex!9507 List!35372) Unit!49453)

(assert (=> d!856007 (= lt!1051177 (choose!18182 r!17423 s!11993))))

(assert (=> d!856007 (validRegex!4240 r!17423)))

(assert (=> d!856007 (= (mainMatchTheorem!1644 r!17423 s!11993) lt!1051177)))

(declare-fun bs!532622 () Bool)

(assert (= bs!532622 d!856007))

(assert (=> bs!532622 m!3384549))

(assert (=> bs!532622 m!3384547))

(declare-fun m!3384677 () Bool)

(assert (=> bs!532622 m!3384677))

(assert (=> bs!532622 m!3384555))

(assert (=> b!3068311 d!856007))

(declare-fun d!856009 () Bool)

(declare-fun res!1259543 () Bool)

(declare-fun e!1920782 () Bool)

(assert (=> d!856009 (=> res!1259543 e!1920782)))

(assert (=> d!856009 (= res!1259543 ((_ is ElementMatch!9507) (regTwo!19526 r!17423)))))

(assert (=> d!856009 (= (validRegex!4240 (regTwo!19526 r!17423)) e!1920782)))

(declare-fun call!212884 () Bool)

(declare-fun c!510025 () Bool)

(declare-fun bm!212878 () Bool)

(declare-fun c!510024 () Bool)

(assert (=> bm!212878 (= call!212884 (validRegex!4240 (ite c!510024 (reg!9836 (regTwo!19526 r!17423)) (ite c!510025 (regTwo!19527 (regTwo!19526 r!17423)) (regOne!19526 (regTwo!19526 r!17423))))))))

(declare-fun b!3068707 () Bool)

(declare-fun res!1259541 () Bool)

(declare-fun e!1920783 () Bool)

(assert (=> b!3068707 (=> (not res!1259541) (not e!1920783))))

(declare-fun call!212883 () Bool)

(assert (=> b!3068707 (= res!1259541 call!212883)))

(declare-fun e!1920778 () Bool)

(assert (=> b!3068707 (= e!1920778 e!1920783)))

(declare-fun b!3068708 () Bool)

(declare-fun call!212885 () Bool)

(assert (=> b!3068708 (= e!1920783 call!212885)))

(declare-fun bm!212879 () Bool)

(assert (=> bm!212879 (= call!212885 call!212884)))

(declare-fun b!3068709 () Bool)

(declare-fun e!1920779 () Bool)

(assert (=> b!3068709 (= e!1920779 call!212884)))

(declare-fun b!3068710 () Bool)

(declare-fun e!1920784 () Bool)

(assert (=> b!3068710 (= e!1920784 call!212883)))

(declare-fun bm!212880 () Bool)

(assert (=> bm!212880 (= call!212883 (validRegex!4240 (ite c!510025 (regOne!19527 (regTwo!19526 r!17423)) (regTwo!19526 (regTwo!19526 r!17423)))))))

(declare-fun b!3068711 () Bool)

(declare-fun res!1259540 () Bool)

(declare-fun e!1920781 () Bool)

(assert (=> b!3068711 (=> res!1259540 e!1920781)))

(assert (=> b!3068711 (= res!1259540 (not ((_ is Concat!14828) (regTwo!19526 r!17423))))))

(assert (=> b!3068711 (= e!1920778 e!1920781)))

(declare-fun b!3068712 () Bool)

(declare-fun e!1920780 () Bool)

(assert (=> b!3068712 (= e!1920780 e!1920779)))

(declare-fun res!1259539 () Bool)

(assert (=> b!3068712 (= res!1259539 (not (nullable!3153 (reg!9836 (regTwo!19526 r!17423)))))))

(assert (=> b!3068712 (=> (not res!1259539) (not e!1920779))))

(declare-fun b!3068713 () Bool)

(assert (=> b!3068713 (= e!1920781 e!1920784)))

(declare-fun res!1259542 () Bool)

(assert (=> b!3068713 (=> (not res!1259542) (not e!1920784))))

(assert (=> b!3068713 (= res!1259542 call!212885)))

(declare-fun b!3068714 () Bool)

(assert (=> b!3068714 (= e!1920782 e!1920780)))

(assert (=> b!3068714 (= c!510024 ((_ is Star!9507) (regTwo!19526 r!17423)))))

(declare-fun b!3068715 () Bool)

(assert (=> b!3068715 (= e!1920780 e!1920778)))

(assert (=> b!3068715 (= c!510025 ((_ is Union!9507) (regTwo!19526 r!17423)))))

(assert (= (and d!856009 (not res!1259543)) b!3068714))

(assert (= (and b!3068714 c!510024) b!3068712))

(assert (= (and b!3068714 (not c!510024)) b!3068715))

(assert (= (and b!3068712 res!1259539) b!3068709))

(assert (= (and b!3068715 c!510025) b!3068707))

(assert (= (and b!3068715 (not c!510025)) b!3068711))

(assert (= (and b!3068707 res!1259541) b!3068708))

(assert (= (and b!3068711 (not res!1259540)) b!3068713))

(assert (= (and b!3068713 res!1259542) b!3068710))

(assert (= (or b!3068707 b!3068710) bm!212880))

(assert (= (or b!3068708 b!3068713) bm!212879))

(assert (= (or b!3068709 bm!212879) bm!212878))

(declare-fun m!3384679 () Bool)

(assert (=> bm!212878 m!3384679))

(declare-fun m!3384681 () Bool)

(assert (=> bm!212880 m!3384681))

(declare-fun m!3384683 () Bool)

(assert (=> b!3068712 m!3384683))

(assert (=> b!3068300 d!856009))

(declare-fun b!3068716 () Bool)

(declare-fun e!1920787 () Bool)

(declare-fun e!1920788 () Bool)

(assert (=> b!3068716 (= e!1920787 e!1920788)))

(declare-fun res!1259548 () Bool)

(assert (=> b!3068716 (=> (not res!1259548) (not e!1920788))))

(declare-fun lt!1051178 () Bool)

(assert (=> b!3068716 (= res!1259548 (not lt!1051178))))

(declare-fun b!3068717 () Bool)

(declare-fun res!1259545 () Bool)

(assert (=> b!3068717 (=> res!1259545 e!1920787)))

(assert (=> b!3068717 (= res!1259545 (not ((_ is ElementMatch!9507) (regOne!19526 r!17423))))))

(declare-fun e!1920791 () Bool)

(assert (=> b!3068717 (= e!1920791 e!1920787)))

(declare-fun b!3068718 () Bool)

(assert (=> b!3068718 (= e!1920791 (not lt!1051178))))

(declare-fun b!3068719 () Bool)

(declare-fun res!1259551 () Bool)

(declare-fun e!1920789 () Bool)

(assert (=> b!3068719 (=> res!1259551 e!1920789)))

(assert (=> b!3068719 (= res!1259551 (not (isEmpty!19573 (tail!5034 s!11993))))))

(declare-fun b!3068720 () Bool)

(declare-fun e!1920786 () Bool)

(assert (=> b!3068720 (= e!1920786 e!1920791)))

(declare-fun c!510026 () Bool)

(assert (=> b!3068720 (= c!510026 ((_ is EmptyLang!9507) (regOne!19526 r!17423)))))

(declare-fun b!3068721 () Bool)

(assert (=> b!3068721 (= e!1920788 e!1920789)))

(declare-fun res!1259547 () Bool)

(assert (=> b!3068721 (=> res!1259547 e!1920789)))

(declare-fun call!212886 () Bool)

(assert (=> b!3068721 (= res!1259547 call!212886)))

(declare-fun b!3068722 () Bool)

(declare-fun res!1259549 () Bool)

(assert (=> b!3068722 (=> res!1259549 e!1920787)))

(declare-fun e!1920785 () Bool)

(assert (=> b!3068722 (= res!1259549 e!1920785)))

(declare-fun res!1259546 () Bool)

(assert (=> b!3068722 (=> (not res!1259546) (not e!1920785))))

(assert (=> b!3068722 (= res!1259546 lt!1051178)))

(declare-fun bm!212881 () Bool)

(assert (=> bm!212881 (= call!212886 (isEmpty!19573 s!11993))))

(declare-fun b!3068724 () Bool)

(assert (=> b!3068724 (= e!1920785 (= (head!6808 s!11993) (c!509919 (regOne!19526 r!17423))))))

(declare-fun b!3068725 () Bool)

(declare-fun res!1259550 () Bool)

(assert (=> b!3068725 (=> (not res!1259550) (not e!1920785))))

(assert (=> b!3068725 (= res!1259550 (isEmpty!19573 (tail!5034 s!11993)))))

(declare-fun b!3068726 () Bool)

(declare-fun e!1920790 () Bool)

(assert (=> b!3068726 (= e!1920790 (nullable!3153 (regOne!19526 r!17423)))))

(declare-fun b!3068727 () Bool)

(assert (=> b!3068727 (= e!1920789 (not (= (head!6808 s!11993) (c!509919 (regOne!19526 r!17423)))))))

(declare-fun b!3068728 () Bool)

(assert (=> b!3068728 (= e!1920786 (= lt!1051178 call!212886))))

(declare-fun b!3068729 () Bool)

(assert (=> b!3068729 (= e!1920790 (matchR!4389 (derivativeStep!2749 (regOne!19526 r!17423) (head!6808 s!11993)) (tail!5034 s!11993)))))

(declare-fun d!856011 () Bool)

(assert (=> d!856011 e!1920786))

(declare-fun c!510027 () Bool)

(assert (=> d!856011 (= c!510027 ((_ is EmptyExpr!9507) (regOne!19526 r!17423)))))

(assert (=> d!856011 (= lt!1051178 e!1920790)))

(declare-fun c!510028 () Bool)

(assert (=> d!856011 (= c!510028 (isEmpty!19573 s!11993))))

(assert (=> d!856011 (validRegex!4240 (regOne!19526 r!17423))))

(assert (=> d!856011 (= (matchR!4389 (regOne!19526 r!17423) s!11993) lt!1051178)))

(declare-fun b!3068723 () Bool)

(declare-fun res!1259544 () Bool)

(assert (=> b!3068723 (=> (not res!1259544) (not e!1920785))))

(assert (=> b!3068723 (= res!1259544 (not call!212886))))

(assert (= (and d!856011 c!510028) b!3068726))

(assert (= (and d!856011 (not c!510028)) b!3068729))

(assert (= (and d!856011 c!510027) b!3068728))

(assert (= (and d!856011 (not c!510027)) b!3068720))

(assert (= (and b!3068720 c!510026) b!3068718))

(assert (= (and b!3068720 (not c!510026)) b!3068717))

(assert (= (and b!3068717 (not res!1259545)) b!3068722))

(assert (= (and b!3068722 res!1259546) b!3068723))

(assert (= (and b!3068723 res!1259544) b!3068725))

(assert (= (and b!3068725 res!1259550) b!3068724))

(assert (= (and b!3068722 (not res!1259549)) b!3068716))

(assert (= (and b!3068716 res!1259548) b!3068721))

(assert (= (and b!3068721 (not res!1259547)) b!3068719))

(assert (= (and b!3068719 (not res!1259551)) b!3068727))

(assert (= (or b!3068728 b!3068721 b!3068723) bm!212881))

(assert (=> b!3068727 m!3384665))

(assert (=> b!3068729 m!3384665))

(assert (=> b!3068729 m!3384665))

(declare-fun m!3384685 () Bool)

(assert (=> b!3068729 m!3384685))

(assert (=> b!3068729 m!3384669))

(assert (=> b!3068729 m!3384685))

(assert (=> b!3068729 m!3384669))

(declare-fun m!3384687 () Bool)

(assert (=> b!3068729 m!3384687))

(assert (=> b!3068724 m!3384665))

(assert (=> d!856011 m!3384565))

(declare-fun m!3384689 () Bool)

(assert (=> d!856011 m!3384689))

(declare-fun m!3384691 () Bool)

(assert (=> b!3068726 m!3384691))

(assert (=> b!3068725 m!3384669))

(assert (=> b!3068725 m!3384669))

(assert (=> b!3068725 m!3384675))

(assert (=> b!3068719 m!3384669))

(assert (=> b!3068719 m!3384669))

(assert (=> b!3068719 m!3384675))

(assert (=> bm!212881 m!3384565))

(assert (=> b!3068300 d!856011))

(declare-fun b!3068730 () Bool)

(declare-fun e!1920794 () Bool)

(declare-fun e!1920795 () Bool)

(assert (=> b!3068730 (= e!1920794 e!1920795)))

(declare-fun res!1259556 () Bool)

(assert (=> b!3068730 (=> (not res!1259556) (not e!1920795))))

(declare-fun lt!1051179 () Bool)

(assert (=> b!3068730 (= res!1259556 (not lt!1051179))))

(declare-fun b!3068731 () Bool)

(declare-fun res!1259553 () Bool)

(assert (=> b!3068731 (=> res!1259553 e!1920794)))

(assert (=> b!3068731 (= res!1259553 (not ((_ is ElementMatch!9507) lt!1051133)))))

(declare-fun e!1920798 () Bool)

(assert (=> b!3068731 (= e!1920798 e!1920794)))

(declare-fun b!3068732 () Bool)

(assert (=> b!3068732 (= e!1920798 (not lt!1051179))))

(declare-fun b!3068733 () Bool)

(declare-fun res!1259559 () Bool)

(declare-fun e!1920796 () Bool)

(assert (=> b!3068733 (=> res!1259559 e!1920796)))

(assert (=> b!3068733 (= res!1259559 (not (isEmpty!19573 (tail!5034 s!11993))))))

(declare-fun b!3068734 () Bool)

(declare-fun e!1920793 () Bool)

(assert (=> b!3068734 (= e!1920793 e!1920798)))

(declare-fun c!510029 () Bool)

(assert (=> b!3068734 (= c!510029 ((_ is EmptyLang!9507) lt!1051133))))

(declare-fun b!3068735 () Bool)

(assert (=> b!3068735 (= e!1920795 e!1920796)))

(declare-fun res!1259555 () Bool)

(assert (=> b!3068735 (=> res!1259555 e!1920796)))

(declare-fun call!212887 () Bool)

(assert (=> b!3068735 (= res!1259555 call!212887)))

(declare-fun b!3068736 () Bool)

(declare-fun res!1259557 () Bool)

(assert (=> b!3068736 (=> res!1259557 e!1920794)))

(declare-fun e!1920792 () Bool)

(assert (=> b!3068736 (= res!1259557 e!1920792)))

(declare-fun res!1259554 () Bool)

(assert (=> b!3068736 (=> (not res!1259554) (not e!1920792))))

(assert (=> b!3068736 (= res!1259554 lt!1051179)))

(declare-fun bm!212882 () Bool)

(assert (=> bm!212882 (= call!212887 (isEmpty!19573 s!11993))))

(declare-fun b!3068738 () Bool)

(assert (=> b!3068738 (= e!1920792 (= (head!6808 s!11993) (c!509919 lt!1051133)))))

(declare-fun b!3068739 () Bool)

(declare-fun res!1259558 () Bool)

(assert (=> b!3068739 (=> (not res!1259558) (not e!1920792))))

(assert (=> b!3068739 (= res!1259558 (isEmpty!19573 (tail!5034 s!11993)))))

(declare-fun b!3068740 () Bool)

(declare-fun e!1920797 () Bool)

(assert (=> b!3068740 (= e!1920797 (nullable!3153 lt!1051133))))

(declare-fun b!3068741 () Bool)

(assert (=> b!3068741 (= e!1920796 (not (= (head!6808 s!11993) (c!509919 lt!1051133))))))

(declare-fun b!3068742 () Bool)

(assert (=> b!3068742 (= e!1920793 (= lt!1051179 call!212887))))

(declare-fun b!3068743 () Bool)

(assert (=> b!3068743 (= e!1920797 (matchR!4389 (derivativeStep!2749 lt!1051133 (head!6808 s!11993)) (tail!5034 s!11993)))))

(declare-fun d!856013 () Bool)

(assert (=> d!856013 e!1920793))

(declare-fun c!510030 () Bool)

(assert (=> d!856013 (= c!510030 ((_ is EmptyExpr!9507) lt!1051133))))

(assert (=> d!856013 (= lt!1051179 e!1920797)))

(declare-fun c!510031 () Bool)

(assert (=> d!856013 (= c!510031 (isEmpty!19573 s!11993))))

(assert (=> d!856013 (validRegex!4240 lt!1051133)))

(assert (=> d!856013 (= (matchR!4389 lt!1051133 s!11993) lt!1051179)))

(declare-fun b!3068737 () Bool)

(declare-fun res!1259552 () Bool)

(assert (=> b!3068737 (=> (not res!1259552) (not e!1920792))))

(assert (=> b!3068737 (= res!1259552 (not call!212887))))

(assert (= (and d!856013 c!510031) b!3068740))

(assert (= (and d!856013 (not c!510031)) b!3068743))

(assert (= (and d!856013 c!510030) b!3068742))

(assert (= (and d!856013 (not c!510030)) b!3068734))

(assert (= (and b!3068734 c!510029) b!3068732))

(assert (= (and b!3068734 (not c!510029)) b!3068731))

(assert (= (and b!3068731 (not res!1259553)) b!3068736))

(assert (= (and b!3068736 res!1259554) b!3068737))

(assert (= (and b!3068737 res!1259552) b!3068739))

(assert (= (and b!3068739 res!1259558) b!3068738))

(assert (= (and b!3068736 (not res!1259557)) b!3068730))

(assert (= (and b!3068730 res!1259556) b!3068735))

(assert (= (and b!3068735 (not res!1259555)) b!3068733))

(assert (= (and b!3068733 (not res!1259559)) b!3068741))

(assert (= (or b!3068742 b!3068735 b!3068737) bm!212882))

(assert (=> b!3068741 m!3384665))

(assert (=> b!3068743 m!3384665))

(assert (=> b!3068743 m!3384665))

(declare-fun m!3384693 () Bool)

(assert (=> b!3068743 m!3384693))

(assert (=> b!3068743 m!3384669))

(assert (=> b!3068743 m!3384693))

(assert (=> b!3068743 m!3384669))

(declare-fun m!3384695 () Bool)

(assert (=> b!3068743 m!3384695))

(assert (=> b!3068738 m!3384665))

(assert (=> d!856013 m!3384565))

(declare-fun m!3384697 () Bool)

(assert (=> d!856013 m!3384697))

(declare-fun m!3384699 () Bool)

(assert (=> b!3068740 m!3384699))

(assert (=> b!3068739 m!3384669))

(assert (=> b!3068739 m!3384669))

(assert (=> b!3068739 m!3384675))

(assert (=> b!3068733 m!3384669))

(assert (=> b!3068733 m!3384669))

(assert (=> b!3068733 m!3384675))

(assert (=> bm!212882 m!3384565))

(assert (=> b!3068300 d!856013))

(declare-fun d!856015 () Bool)

(assert (=> d!856015 (= (matchR!4389 (regOne!19526 r!17423) s!11993) (matchR!4389 (simplify!462 (regOne!19526 r!17423)) s!11993))))

(declare-fun lt!1051182 () Unit!49453)

(declare-fun choose!18184 (Regex!9507 List!35372) Unit!49453)

(assert (=> d!856015 (= lt!1051182 (choose!18184 (regOne!19526 r!17423) s!11993))))

(assert (=> d!856015 (validRegex!4240 (regOne!19526 r!17423))))

(assert (=> d!856015 (= (lemmaSimplifySound!288 (regOne!19526 r!17423) s!11993) lt!1051182)))

(declare-fun bs!532623 () Bool)

(assert (= bs!532623 d!856015))

(assert (=> bs!532623 m!3384559))

(assert (=> bs!532623 m!3384571))

(assert (=> bs!532623 m!3384689))

(assert (=> bs!532623 m!3384571))

(declare-fun m!3384701 () Bool)

(assert (=> bs!532623 m!3384701))

(declare-fun m!3384703 () Bool)

(assert (=> bs!532623 m!3384703))

(assert (=> b!3068300 d!856015))

(declare-fun d!856017 () Bool)

(declare-fun res!1259564 () Bool)

(declare-fun e!1920803 () Bool)

(assert (=> d!856017 (=> res!1259564 e!1920803)))

(assert (=> d!856017 (= res!1259564 ((_ is ElementMatch!9507) r!17423))))

(assert (=> d!856017 (= (validRegex!4240 r!17423) e!1920803)))

(declare-fun c!510033 () Bool)

(declare-fun call!212889 () Bool)

(declare-fun bm!212883 () Bool)

(declare-fun c!510032 () Bool)

(assert (=> bm!212883 (= call!212889 (validRegex!4240 (ite c!510032 (reg!9836 r!17423) (ite c!510033 (regTwo!19527 r!17423) (regOne!19526 r!17423)))))))

(declare-fun b!3068744 () Bool)

(declare-fun res!1259562 () Bool)

(declare-fun e!1920804 () Bool)

(assert (=> b!3068744 (=> (not res!1259562) (not e!1920804))))

(declare-fun call!212888 () Bool)

(assert (=> b!3068744 (= res!1259562 call!212888)))

(declare-fun e!1920799 () Bool)

(assert (=> b!3068744 (= e!1920799 e!1920804)))

(declare-fun b!3068745 () Bool)

(declare-fun call!212890 () Bool)

(assert (=> b!3068745 (= e!1920804 call!212890)))

(declare-fun bm!212884 () Bool)

(assert (=> bm!212884 (= call!212890 call!212889)))

(declare-fun b!3068746 () Bool)

(declare-fun e!1920800 () Bool)

(assert (=> b!3068746 (= e!1920800 call!212889)))

(declare-fun b!3068747 () Bool)

(declare-fun e!1920805 () Bool)

(assert (=> b!3068747 (= e!1920805 call!212888)))

(declare-fun bm!212885 () Bool)

(assert (=> bm!212885 (= call!212888 (validRegex!4240 (ite c!510033 (regOne!19527 r!17423) (regTwo!19526 r!17423))))))

(declare-fun b!3068748 () Bool)

(declare-fun res!1259561 () Bool)

(declare-fun e!1920802 () Bool)

(assert (=> b!3068748 (=> res!1259561 e!1920802)))

(assert (=> b!3068748 (= res!1259561 (not ((_ is Concat!14828) r!17423)))))

(assert (=> b!3068748 (= e!1920799 e!1920802)))

(declare-fun b!3068749 () Bool)

(declare-fun e!1920801 () Bool)

(assert (=> b!3068749 (= e!1920801 e!1920800)))

(declare-fun res!1259560 () Bool)

(assert (=> b!3068749 (= res!1259560 (not (nullable!3153 (reg!9836 r!17423))))))

(assert (=> b!3068749 (=> (not res!1259560) (not e!1920800))))

(declare-fun b!3068750 () Bool)

(assert (=> b!3068750 (= e!1920802 e!1920805)))

(declare-fun res!1259563 () Bool)

(assert (=> b!3068750 (=> (not res!1259563) (not e!1920805))))

(assert (=> b!3068750 (= res!1259563 call!212890)))

(declare-fun b!3068751 () Bool)

(assert (=> b!3068751 (= e!1920803 e!1920801)))

(assert (=> b!3068751 (= c!510032 ((_ is Star!9507) r!17423))))

(declare-fun b!3068752 () Bool)

(assert (=> b!3068752 (= e!1920801 e!1920799)))

(assert (=> b!3068752 (= c!510033 ((_ is Union!9507) r!17423))))

(assert (= (and d!856017 (not res!1259564)) b!3068751))

(assert (= (and b!3068751 c!510032) b!3068749))

(assert (= (and b!3068751 (not c!510032)) b!3068752))

(assert (= (and b!3068749 res!1259560) b!3068746))

(assert (= (and b!3068752 c!510033) b!3068744))

(assert (= (and b!3068752 (not c!510033)) b!3068748))

(assert (= (and b!3068744 res!1259562) b!3068745))

(assert (= (and b!3068748 (not res!1259561)) b!3068750))

(assert (= (and b!3068750 res!1259563) b!3068747))

(assert (= (or b!3068744 b!3068747) bm!212885))

(assert (= (or b!3068745 b!3068750) bm!212884))

(assert (= (or b!3068746 bm!212884) bm!212883))

(declare-fun m!3384705 () Bool)

(assert (=> bm!212883 m!3384705))

(declare-fun m!3384707 () Bool)

(assert (=> bm!212885 m!3384707))

(declare-fun m!3384709 () Bool)

(assert (=> b!3068749 m!3384709))

(assert (=> start!292692 d!856017))

(declare-fun d!856019 () Bool)

(assert (=> d!856019 (= (isEmptyLang!558 lt!1051136) ((_ is EmptyLang!9507) lt!1051136))))

(assert (=> b!3068305 d!856019))

(declare-fun d!856021 () Bool)

(assert (=> d!856021 (= (isEmptyExpr!564 lt!1051136) ((_ is EmptyExpr!9507) lt!1051136))))

(assert (=> b!3068301 d!856021))

(declare-fun d!856023 () Bool)

(assert (=> d!856023 (= (isEmptyExpr!564 lt!1051133) ((_ is EmptyExpr!9507) lt!1051133))))

(assert (=> b!3068306 d!856023))

(declare-fun d!856025 () Bool)

(assert (=> d!856025 (= (isEmpty!19573 s!11993) ((_ is Nil!35248) s!11993))))

(assert (=> b!3068303 d!856025))

(declare-fun d!856027 () Bool)

(assert (=> d!856027 (= (isEmptyLang!558 lt!1051133) ((_ is EmptyLang!9507) lt!1051133))))

(assert (=> b!3068309 d!856027))

(declare-fun b!3068803 () Bool)

(declare-fun e!1920842 () Regex!9507)

(assert (=> b!3068803 (= e!1920842 EmptyLang!9507)))

(declare-fun b!3068804 () Bool)

(declare-fun c!510059 () Bool)

(declare-fun lt!1051195 () Regex!9507)

(assert (=> b!3068804 (= c!510059 (isEmptyExpr!564 lt!1051195))))

(declare-fun e!1920834 () Regex!9507)

(declare-fun e!1920843 () Regex!9507)

(assert (=> b!3068804 (= e!1920834 e!1920843)))

(declare-fun b!3068805 () Bool)

(declare-fun e!1920838 () Bool)

(declare-fun lt!1051200 () Regex!9507)

(assert (=> b!3068805 (= e!1920838 (= (nullable!3153 lt!1051200) (nullable!3153 (regTwo!19526 r!17423))))))

(declare-fun b!3068806 () Bool)

(declare-fun lt!1051197 () Regex!9507)

(assert (=> b!3068806 (= e!1920843 lt!1051197)))

(declare-fun b!3068807 () Bool)

(declare-fun e!1920844 () Regex!9507)

(assert (=> b!3068807 (= e!1920842 e!1920844)))

(declare-fun c!510056 () Bool)

(assert (=> b!3068807 (= c!510056 ((_ is ElementMatch!9507) (regTwo!19526 r!17423)))))

(declare-fun b!3068808 () Bool)

(declare-fun e!1920845 () Regex!9507)

(declare-fun lt!1051199 () Regex!9507)

(assert (=> b!3068808 (= e!1920845 lt!1051199)))

(declare-fun bm!212900 () Bool)

(declare-fun call!212910 () Bool)

(declare-fun call!212908 () Bool)

(assert (=> bm!212900 (= call!212910 call!212908)))

(declare-fun c!510065 () Bool)

(declare-fun bm!212901 () Bool)

(declare-fun lt!1051198 () Regex!9507)

(declare-fun c!510061 () Bool)

(declare-fun lt!1051196 () Regex!9507)

(assert (=> bm!212901 (= call!212908 (isEmptyLang!558 (ite c!510065 lt!1051198 (ite c!510061 lt!1051196 lt!1051195))))))

(declare-fun bm!212902 () Bool)

(declare-fun call!212906 () Bool)

(assert (=> bm!212902 (= call!212906 (isEmptyExpr!564 (ite c!510065 lt!1051198 lt!1051197)))))

(declare-fun b!3068809 () Bool)

(declare-fun e!1920846 () Regex!9507)

(assert (=> b!3068809 (= e!1920846 EmptyExpr!9507)))

(declare-fun b!3068810 () Bool)

(declare-fun c!510064 () Bool)

(declare-fun call!212911 () Bool)

(assert (=> b!3068810 (= c!510064 call!212911)))

(declare-fun e!1920847 () Regex!9507)

(assert (=> b!3068810 (= e!1920845 e!1920847)))

(declare-fun b!3068811 () Bool)

(declare-fun e!1920835 () Regex!9507)

(assert (=> b!3068811 (= e!1920835 (Concat!14828 lt!1051195 lt!1051197))))

(declare-fun b!3068812 () Bool)

(assert (=> b!3068812 (= e!1920846 (Star!9507 lt!1051198))))

(declare-fun b!3068813 () Bool)

(declare-fun e!1920839 () Regex!9507)

(assert (=> b!3068813 (= e!1920839 e!1920834)))

(declare-fun call!212909 () Regex!9507)

(assert (=> b!3068813 (= lt!1051195 call!212909)))

(declare-fun call!212907 () Regex!9507)

(assert (=> b!3068813 (= lt!1051197 call!212907)))

(declare-fun res!1259572 () Bool)

(assert (=> b!3068813 (= res!1259572 call!212910)))

(declare-fun e!1920841 () Bool)

(assert (=> b!3068813 (=> res!1259572 e!1920841)))

(declare-fun c!510060 () Bool)

(assert (=> b!3068813 (= c!510060 e!1920841)))

(declare-fun b!3068814 () Bool)

(declare-fun c!510063 () Bool)

(declare-fun e!1920840 () Bool)

(assert (=> b!3068814 (= c!510063 e!1920840)))

(declare-fun res!1259573 () Bool)

(assert (=> b!3068814 (=> res!1259573 e!1920840)))

(assert (=> b!3068814 (= res!1259573 call!212908)))

(declare-fun call!212905 () Regex!9507)

(assert (=> b!3068814 (= lt!1051198 call!212905)))

(declare-fun e!1920836 () Regex!9507)

(assert (=> b!3068814 (= e!1920836 e!1920846)))

(declare-fun b!3068815 () Bool)

(assert (=> b!3068815 (= e!1920844 (regTwo!19526 r!17423))))

(declare-fun bm!212903 () Bool)

(assert (=> bm!212903 (= call!212909 call!212905)))

(declare-fun b!3068816 () Bool)

(assert (=> b!3068816 (= c!510061 ((_ is Union!9507) (regTwo!19526 r!17423)))))

(assert (=> b!3068816 (= e!1920836 e!1920839)))

(declare-fun b!3068817 () Bool)

(assert (=> b!3068817 (= e!1920841 call!212911)))

(declare-fun bm!212904 () Bool)

(assert (=> bm!212904 (= call!212905 (simplify!462 (ite c!510065 (reg!9836 (regTwo!19526 r!17423)) (ite c!510061 (regTwo!19527 (regTwo!19526 r!17423)) (regOne!19526 (regTwo!19526 r!17423))))))))

(declare-fun bm!212905 () Bool)

(assert (=> bm!212905 (= call!212907 (simplify!462 (ite c!510061 (regOne!19527 (regTwo!19526 r!17423)) (regTwo!19526 (regTwo!19526 r!17423)))))))

(declare-fun b!3068818 () Bool)

(assert (=> b!3068818 (= e!1920839 e!1920845)))

(assert (=> b!3068818 (= lt!1051196 call!212907)))

(assert (=> b!3068818 (= lt!1051199 call!212909)))

(declare-fun c!510066 () Bool)

(assert (=> b!3068818 (= c!510066 call!212910)))

(declare-fun bm!212906 () Bool)

(assert (=> bm!212906 (= call!212911 (isEmptyLang!558 (ite c!510061 lt!1051199 lt!1051197)))))

(declare-fun b!3068819 () Bool)

(assert (=> b!3068819 (= e!1920834 EmptyLang!9507)))

(declare-fun b!3068820 () Bool)

(assert (=> b!3068820 (= e!1920835 lt!1051195)))

(declare-fun b!3068821 () Bool)

(assert (=> b!3068821 (= e!1920843 e!1920835)))

(declare-fun c!510058 () Bool)

(assert (=> b!3068821 (= c!510058 call!212906)))

(declare-fun b!3068822 () Bool)

(declare-fun e!1920837 () Regex!9507)

(assert (=> b!3068822 (= e!1920837 EmptyExpr!9507)))

(declare-fun b!3068823 () Bool)

(assert (=> b!3068823 (= e!1920847 (Union!9507 lt!1051196 lt!1051199))))

(declare-fun b!3068824 () Bool)

(assert (=> b!3068824 (= e!1920837 e!1920836)))

(assert (=> b!3068824 (= c!510065 ((_ is Star!9507) (regTwo!19526 r!17423)))))

(declare-fun b!3068825 () Bool)

(assert (=> b!3068825 (= e!1920840 call!212906)))

(declare-fun b!3068826 () Bool)

(assert (=> b!3068826 (= e!1920847 lt!1051196)))

(declare-fun d!856029 () Bool)

(assert (=> d!856029 e!1920838))

(declare-fun res!1259571 () Bool)

(assert (=> d!856029 (=> (not res!1259571) (not e!1920838))))

(assert (=> d!856029 (= res!1259571 (validRegex!4240 lt!1051200))))

(assert (=> d!856029 (= lt!1051200 e!1920842)))

(declare-fun c!510057 () Bool)

(assert (=> d!856029 (= c!510057 ((_ is EmptyLang!9507) (regTwo!19526 r!17423)))))

(assert (=> d!856029 (validRegex!4240 (regTwo!19526 r!17423))))

(assert (=> d!856029 (= (simplify!462 (regTwo!19526 r!17423)) lt!1051200)))

(declare-fun b!3068827 () Bool)

(declare-fun c!510062 () Bool)

(assert (=> b!3068827 (= c!510062 ((_ is EmptyExpr!9507) (regTwo!19526 r!17423)))))

(assert (=> b!3068827 (= e!1920844 e!1920837)))

(assert (= (and d!856029 c!510057) b!3068803))

(assert (= (and d!856029 (not c!510057)) b!3068807))

(assert (= (and b!3068807 c!510056) b!3068815))

(assert (= (and b!3068807 (not c!510056)) b!3068827))

(assert (= (and b!3068827 c!510062) b!3068822))

(assert (= (and b!3068827 (not c!510062)) b!3068824))

(assert (= (and b!3068824 c!510065) b!3068814))

(assert (= (and b!3068824 (not c!510065)) b!3068816))

(assert (= (and b!3068814 (not res!1259573)) b!3068825))

(assert (= (and b!3068814 c!510063) b!3068809))

(assert (= (and b!3068814 (not c!510063)) b!3068812))

(assert (= (and b!3068816 c!510061) b!3068818))

(assert (= (and b!3068816 (not c!510061)) b!3068813))

(assert (= (and b!3068818 c!510066) b!3068808))

(assert (= (and b!3068818 (not c!510066)) b!3068810))

(assert (= (and b!3068810 c!510064) b!3068826))

(assert (= (and b!3068810 (not c!510064)) b!3068823))

(assert (= (and b!3068813 (not res!1259572)) b!3068817))

(assert (= (and b!3068813 c!510060) b!3068819))

(assert (= (and b!3068813 (not c!510060)) b!3068804))

(assert (= (and b!3068804 c!510059) b!3068806))

(assert (= (and b!3068804 (not c!510059)) b!3068821))

(assert (= (and b!3068821 c!510058) b!3068820))

(assert (= (and b!3068821 (not c!510058)) b!3068811))

(assert (= (or b!3068818 b!3068813) bm!212905))

(assert (= (or b!3068818 b!3068813) bm!212903))

(assert (= (or b!3068810 b!3068817) bm!212906))

(assert (= (or b!3068818 b!3068813) bm!212900))

(assert (= (or b!3068825 b!3068821) bm!212902))

(assert (= (or b!3068814 bm!212903) bm!212904))

(assert (= (or b!3068814 bm!212900) bm!212901))

(assert (= (and d!856029 res!1259571) b!3068805))

(declare-fun m!3384711 () Bool)

(assert (=> b!3068804 m!3384711))

(declare-fun m!3384713 () Bool)

(assert (=> d!856029 m!3384713))

(assert (=> d!856029 m!3384557))

(declare-fun m!3384715 () Bool)

(assert (=> bm!212905 m!3384715))

(declare-fun m!3384717 () Bool)

(assert (=> bm!212904 m!3384717))

(declare-fun m!3384719 () Bool)

(assert (=> b!3068805 m!3384719))

(declare-fun m!3384721 () Bool)

(assert (=> b!3068805 m!3384721))

(declare-fun m!3384723 () Bool)

(assert (=> bm!212902 m!3384723))

(declare-fun m!3384725 () Bool)

(assert (=> bm!212906 m!3384725))

(declare-fun m!3384727 () Bool)

(assert (=> bm!212901 m!3384727))

(assert (=> b!3068309 d!856029))

(declare-fun b!3068828 () Bool)

(declare-fun e!1920856 () Regex!9507)

(assert (=> b!3068828 (= e!1920856 EmptyLang!9507)))

(declare-fun b!3068829 () Bool)

(declare-fun c!510070 () Bool)

(declare-fun lt!1051201 () Regex!9507)

(assert (=> b!3068829 (= c!510070 (isEmptyExpr!564 lt!1051201))))

(declare-fun e!1920848 () Regex!9507)

(declare-fun e!1920857 () Regex!9507)

(assert (=> b!3068829 (= e!1920848 e!1920857)))

(declare-fun b!3068830 () Bool)

(declare-fun e!1920852 () Bool)

(declare-fun lt!1051206 () Regex!9507)

(assert (=> b!3068830 (= e!1920852 (= (nullable!3153 lt!1051206) (nullable!3153 (regOne!19526 r!17423))))))

(declare-fun b!3068831 () Bool)

(declare-fun lt!1051203 () Regex!9507)

(assert (=> b!3068831 (= e!1920857 lt!1051203)))

(declare-fun b!3068832 () Bool)

(declare-fun e!1920858 () Regex!9507)

(assert (=> b!3068832 (= e!1920856 e!1920858)))

(declare-fun c!510067 () Bool)

(assert (=> b!3068832 (= c!510067 ((_ is ElementMatch!9507) (regOne!19526 r!17423)))))

(declare-fun b!3068833 () Bool)

(declare-fun e!1920859 () Regex!9507)

(declare-fun lt!1051205 () Regex!9507)

(assert (=> b!3068833 (= e!1920859 lt!1051205)))

(declare-fun bm!212907 () Bool)

(declare-fun call!212917 () Bool)

(declare-fun call!212915 () Bool)

(assert (=> bm!212907 (= call!212917 call!212915)))

(declare-fun lt!1051202 () Regex!9507)

(declare-fun lt!1051204 () Regex!9507)

(declare-fun bm!212908 () Bool)

(declare-fun c!510076 () Bool)

(declare-fun c!510072 () Bool)

(assert (=> bm!212908 (= call!212915 (isEmptyLang!558 (ite c!510076 lt!1051204 (ite c!510072 lt!1051202 lt!1051201))))))

(declare-fun bm!212909 () Bool)

(declare-fun call!212913 () Bool)

(assert (=> bm!212909 (= call!212913 (isEmptyExpr!564 (ite c!510076 lt!1051204 lt!1051203)))))

(declare-fun b!3068834 () Bool)

(declare-fun e!1920860 () Regex!9507)

(assert (=> b!3068834 (= e!1920860 EmptyExpr!9507)))

(declare-fun b!3068835 () Bool)

(declare-fun c!510075 () Bool)

(declare-fun call!212918 () Bool)

(assert (=> b!3068835 (= c!510075 call!212918)))

(declare-fun e!1920861 () Regex!9507)

(assert (=> b!3068835 (= e!1920859 e!1920861)))

(declare-fun b!3068836 () Bool)

(declare-fun e!1920849 () Regex!9507)

(assert (=> b!3068836 (= e!1920849 (Concat!14828 lt!1051201 lt!1051203))))

(declare-fun b!3068837 () Bool)

(assert (=> b!3068837 (= e!1920860 (Star!9507 lt!1051204))))

(declare-fun b!3068838 () Bool)

(declare-fun e!1920853 () Regex!9507)

(assert (=> b!3068838 (= e!1920853 e!1920848)))

(declare-fun call!212916 () Regex!9507)

(assert (=> b!3068838 (= lt!1051201 call!212916)))

(declare-fun call!212914 () Regex!9507)

(assert (=> b!3068838 (= lt!1051203 call!212914)))

(declare-fun res!1259575 () Bool)

(assert (=> b!3068838 (= res!1259575 call!212917)))

(declare-fun e!1920855 () Bool)

(assert (=> b!3068838 (=> res!1259575 e!1920855)))

(declare-fun c!510071 () Bool)

(assert (=> b!3068838 (= c!510071 e!1920855)))

(declare-fun b!3068839 () Bool)

(declare-fun c!510074 () Bool)

(declare-fun e!1920854 () Bool)

(assert (=> b!3068839 (= c!510074 e!1920854)))

(declare-fun res!1259576 () Bool)

(assert (=> b!3068839 (=> res!1259576 e!1920854)))

(assert (=> b!3068839 (= res!1259576 call!212915)))

(declare-fun call!212912 () Regex!9507)

(assert (=> b!3068839 (= lt!1051204 call!212912)))

(declare-fun e!1920850 () Regex!9507)

(assert (=> b!3068839 (= e!1920850 e!1920860)))

(declare-fun b!3068840 () Bool)

(assert (=> b!3068840 (= e!1920858 (regOne!19526 r!17423))))

(declare-fun bm!212910 () Bool)

(assert (=> bm!212910 (= call!212916 call!212912)))

(declare-fun b!3068841 () Bool)

(assert (=> b!3068841 (= c!510072 ((_ is Union!9507) (regOne!19526 r!17423)))))

(assert (=> b!3068841 (= e!1920850 e!1920853)))

(declare-fun b!3068842 () Bool)

(assert (=> b!3068842 (= e!1920855 call!212918)))

(declare-fun bm!212911 () Bool)

(assert (=> bm!212911 (= call!212912 (simplify!462 (ite c!510076 (reg!9836 (regOne!19526 r!17423)) (ite c!510072 (regTwo!19527 (regOne!19526 r!17423)) (regOne!19526 (regOne!19526 r!17423))))))))

(declare-fun bm!212912 () Bool)

(assert (=> bm!212912 (= call!212914 (simplify!462 (ite c!510072 (regOne!19527 (regOne!19526 r!17423)) (regTwo!19526 (regOne!19526 r!17423)))))))

(declare-fun b!3068843 () Bool)

(assert (=> b!3068843 (= e!1920853 e!1920859)))

(assert (=> b!3068843 (= lt!1051202 call!212914)))

(assert (=> b!3068843 (= lt!1051205 call!212916)))

(declare-fun c!510077 () Bool)

(assert (=> b!3068843 (= c!510077 call!212917)))

(declare-fun bm!212913 () Bool)

(assert (=> bm!212913 (= call!212918 (isEmptyLang!558 (ite c!510072 lt!1051205 lt!1051203)))))

(declare-fun b!3068844 () Bool)

(assert (=> b!3068844 (= e!1920848 EmptyLang!9507)))

(declare-fun b!3068845 () Bool)

(assert (=> b!3068845 (= e!1920849 lt!1051201)))

(declare-fun b!3068846 () Bool)

(assert (=> b!3068846 (= e!1920857 e!1920849)))

(declare-fun c!510069 () Bool)

(assert (=> b!3068846 (= c!510069 call!212913)))

(declare-fun b!3068847 () Bool)

(declare-fun e!1920851 () Regex!9507)

(assert (=> b!3068847 (= e!1920851 EmptyExpr!9507)))

(declare-fun b!3068848 () Bool)

(assert (=> b!3068848 (= e!1920861 (Union!9507 lt!1051202 lt!1051205))))

(declare-fun b!3068849 () Bool)

(assert (=> b!3068849 (= e!1920851 e!1920850)))

(assert (=> b!3068849 (= c!510076 ((_ is Star!9507) (regOne!19526 r!17423)))))

(declare-fun b!3068850 () Bool)

(assert (=> b!3068850 (= e!1920854 call!212913)))

(declare-fun b!3068851 () Bool)

(assert (=> b!3068851 (= e!1920861 lt!1051202)))

(declare-fun d!856031 () Bool)

(assert (=> d!856031 e!1920852))

(declare-fun res!1259574 () Bool)

(assert (=> d!856031 (=> (not res!1259574) (not e!1920852))))

(assert (=> d!856031 (= res!1259574 (validRegex!4240 lt!1051206))))

(assert (=> d!856031 (= lt!1051206 e!1920856)))

(declare-fun c!510068 () Bool)

(assert (=> d!856031 (= c!510068 ((_ is EmptyLang!9507) (regOne!19526 r!17423)))))

(assert (=> d!856031 (validRegex!4240 (regOne!19526 r!17423))))

(assert (=> d!856031 (= (simplify!462 (regOne!19526 r!17423)) lt!1051206)))

(declare-fun b!3068852 () Bool)

(declare-fun c!510073 () Bool)

(assert (=> b!3068852 (= c!510073 ((_ is EmptyExpr!9507) (regOne!19526 r!17423)))))

(assert (=> b!3068852 (= e!1920858 e!1920851)))

(assert (= (and d!856031 c!510068) b!3068828))

(assert (= (and d!856031 (not c!510068)) b!3068832))

(assert (= (and b!3068832 c!510067) b!3068840))

(assert (= (and b!3068832 (not c!510067)) b!3068852))

(assert (= (and b!3068852 c!510073) b!3068847))

(assert (= (and b!3068852 (not c!510073)) b!3068849))

(assert (= (and b!3068849 c!510076) b!3068839))

(assert (= (and b!3068849 (not c!510076)) b!3068841))

(assert (= (and b!3068839 (not res!1259576)) b!3068850))

(assert (= (and b!3068839 c!510074) b!3068834))

(assert (= (and b!3068839 (not c!510074)) b!3068837))

(assert (= (and b!3068841 c!510072) b!3068843))

(assert (= (and b!3068841 (not c!510072)) b!3068838))

(assert (= (and b!3068843 c!510077) b!3068833))

(assert (= (and b!3068843 (not c!510077)) b!3068835))

(assert (= (and b!3068835 c!510075) b!3068851))

(assert (= (and b!3068835 (not c!510075)) b!3068848))

(assert (= (and b!3068838 (not res!1259575)) b!3068842))

(assert (= (and b!3068838 c!510071) b!3068844))

(assert (= (and b!3068838 (not c!510071)) b!3068829))

(assert (= (and b!3068829 c!510070) b!3068831))

(assert (= (and b!3068829 (not c!510070)) b!3068846))

(assert (= (and b!3068846 c!510069) b!3068845))

(assert (= (and b!3068846 (not c!510069)) b!3068836))

(assert (= (or b!3068843 b!3068838) bm!212912))

(assert (= (or b!3068843 b!3068838) bm!212910))

(assert (= (or b!3068835 b!3068842) bm!212913))

(assert (= (or b!3068843 b!3068838) bm!212907))

(assert (= (or b!3068850 b!3068846) bm!212909))

(assert (= (or b!3068839 bm!212910) bm!212911))

(assert (= (or b!3068839 bm!212907) bm!212908))

(assert (= (and d!856031 res!1259574) b!3068830))

(declare-fun m!3384729 () Bool)

(assert (=> b!3068829 m!3384729))

(declare-fun m!3384731 () Bool)

(assert (=> d!856031 m!3384731))

(assert (=> d!856031 m!3384689))

(declare-fun m!3384733 () Bool)

(assert (=> bm!212912 m!3384733))

(declare-fun m!3384735 () Bool)

(assert (=> bm!212911 m!3384735))

(declare-fun m!3384737 () Bool)

(assert (=> b!3068830 m!3384737))

(assert (=> b!3068830 m!3384691))

(declare-fun m!3384739 () Bool)

(assert (=> bm!212909 m!3384739))

(declare-fun m!3384741 () Bool)

(assert (=> bm!212913 m!3384741))

(declare-fun m!3384743 () Bool)

(assert (=> bm!212908 m!3384743))

(assert (=> b!3068309 d!856031))

(declare-fun b!3068857 () Bool)

(declare-fun e!1920864 () Bool)

(declare-fun tp!968490 () Bool)

(assert (=> b!3068857 (= e!1920864 (and tp_is_empty!16577 tp!968490))))

(assert (=> b!3068310 (= tp!968448 e!1920864)))

(assert (= (and b!3068310 ((_ is Cons!35248) (t!234437 s!11993))) b!3068857))

(declare-fun e!1920867 () Bool)

(assert (=> b!3068307 (= tp!968449 e!1920867)))

(declare-fun b!3068871 () Bool)

(declare-fun tp!968501 () Bool)

(declare-fun tp!968504 () Bool)

(assert (=> b!3068871 (= e!1920867 (and tp!968501 tp!968504))))

(declare-fun b!3068869 () Bool)

(declare-fun tp!968503 () Bool)

(declare-fun tp!968505 () Bool)

(assert (=> b!3068869 (= e!1920867 (and tp!968503 tp!968505))))

(declare-fun b!3068868 () Bool)

(assert (=> b!3068868 (= e!1920867 tp_is_empty!16577)))

(declare-fun b!3068870 () Bool)

(declare-fun tp!968502 () Bool)

(assert (=> b!3068870 (= e!1920867 tp!968502)))

(assert (= (and b!3068307 ((_ is ElementMatch!9507) (regOne!19527 r!17423))) b!3068868))

(assert (= (and b!3068307 ((_ is Concat!14828) (regOne!19527 r!17423))) b!3068869))

(assert (= (and b!3068307 ((_ is Star!9507) (regOne!19527 r!17423))) b!3068870))

(assert (= (and b!3068307 ((_ is Union!9507) (regOne!19527 r!17423))) b!3068871))

(declare-fun e!1920868 () Bool)

(assert (=> b!3068307 (= tp!968444 e!1920868)))

(declare-fun b!3068875 () Bool)

(declare-fun tp!968506 () Bool)

(declare-fun tp!968509 () Bool)

(assert (=> b!3068875 (= e!1920868 (and tp!968506 tp!968509))))

(declare-fun b!3068873 () Bool)

(declare-fun tp!968508 () Bool)

(declare-fun tp!968510 () Bool)

(assert (=> b!3068873 (= e!1920868 (and tp!968508 tp!968510))))

(declare-fun b!3068872 () Bool)

(assert (=> b!3068872 (= e!1920868 tp_is_empty!16577)))

(declare-fun b!3068874 () Bool)

(declare-fun tp!968507 () Bool)

(assert (=> b!3068874 (= e!1920868 tp!968507)))

(assert (= (and b!3068307 ((_ is ElementMatch!9507) (regTwo!19527 r!17423))) b!3068872))

(assert (= (and b!3068307 ((_ is Concat!14828) (regTwo!19527 r!17423))) b!3068873))

(assert (= (and b!3068307 ((_ is Star!9507) (regTwo!19527 r!17423))) b!3068874))

(assert (= (and b!3068307 ((_ is Union!9507) (regTwo!19527 r!17423))) b!3068875))

(declare-fun e!1920869 () Bool)

(assert (=> b!3068308 (= tp!968445 e!1920869)))

(declare-fun b!3068879 () Bool)

(declare-fun tp!968511 () Bool)

(declare-fun tp!968514 () Bool)

(assert (=> b!3068879 (= e!1920869 (and tp!968511 tp!968514))))

(declare-fun b!3068877 () Bool)

(declare-fun tp!968513 () Bool)

(declare-fun tp!968515 () Bool)

(assert (=> b!3068877 (= e!1920869 (and tp!968513 tp!968515))))

(declare-fun b!3068876 () Bool)

(assert (=> b!3068876 (= e!1920869 tp_is_empty!16577)))

(declare-fun b!3068878 () Bool)

(declare-fun tp!968512 () Bool)

(assert (=> b!3068878 (= e!1920869 tp!968512)))

(assert (= (and b!3068308 ((_ is ElementMatch!9507) (reg!9836 r!17423))) b!3068876))

(assert (= (and b!3068308 ((_ is Concat!14828) (reg!9836 r!17423))) b!3068877))

(assert (= (and b!3068308 ((_ is Star!9507) (reg!9836 r!17423))) b!3068878))

(assert (= (and b!3068308 ((_ is Union!9507) (reg!9836 r!17423))) b!3068879))

(declare-fun e!1920870 () Bool)

(assert (=> b!3068302 (= tp!968446 e!1920870)))

(declare-fun b!3068883 () Bool)

(declare-fun tp!968516 () Bool)

(declare-fun tp!968519 () Bool)

(assert (=> b!3068883 (= e!1920870 (and tp!968516 tp!968519))))

(declare-fun b!3068881 () Bool)

(declare-fun tp!968518 () Bool)

(declare-fun tp!968520 () Bool)

(assert (=> b!3068881 (= e!1920870 (and tp!968518 tp!968520))))

(declare-fun b!3068880 () Bool)

(assert (=> b!3068880 (= e!1920870 tp_is_empty!16577)))

(declare-fun b!3068882 () Bool)

(declare-fun tp!968517 () Bool)

(assert (=> b!3068882 (= e!1920870 tp!968517)))

(assert (= (and b!3068302 ((_ is ElementMatch!9507) (regOne!19526 r!17423))) b!3068880))

(assert (= (and b!3068302 ((_ is Concat!14828) (regOne!19526 r!17423))) b!3068881))

(assert (= (and b!3068302 ((_ is Star!9507) (regOne!19526 r!17423))) b!3068882))

(assert (= (and b!3068302 ((_ is Union!9507) (regOne!19526 r!17423))) b!3068883))

(declare-fun e!1920871 () Bool)

(assert (=> b!3068302 (= tp!968447 e!1920871)))

(declare-fun b!3068887 () Bool)

(declare-fun tp!968521 () Bool)

(declare-fun tp!968524 () Bool)

(assert (=> b!3068887 (= e!1920871 (and tp!968521 tp!968524))))

(declare-fun b!3068885 () Bool)

(declare-fun tp!968523 () Bool)

(declare-fun tp!968525 () Bool)

(assert (=> b!3068885 (= e!1920871 (and tp!968523 tp!968525))))

(declare-fun b!3068884 () Bool)

(assert (=> b!3068884 (= e!1920871 tp_is_empty!16577)))

(declare-fun b!3068886 () Bool)

(declare-fun tp!968522 () Bool)

(assert (=> b!3068886 (= e!1920871 tp!968522)))

(assert (= (and b!3068302 ((_ is ElementMatch!9507) (regTwo!19526 r!17423))) b!3068884))

(assert (= (and b!3068302 ((_ is Concat!14828) (regTwo!19526 r!17423))) b!3068885))

(assert (= (and b!3068302 ((_ is Star!9507) (regTwo!19526 r!17423))) b!3068886))

(assert (= (and b!3068302 ((_ is Union!9507) (regTwo!19526 r!17423))) b!3068887))

(check-sat (not b!3068725) (not b!3068729) (not bm!212906) (not b!3068726) (not b!3068719) (not bm!212883) (not b!3068554) (not b!3068871) (not b!3068749) (not b!3068684) (not bm!212885) (not d!856003) (not d!856031) (not b!3068830) (not b!3068727) tp_is_empty!16577 (not b!3068685) (not b!3068873) (not bm!212901) (not bm!212853) (not b!3068869) (not bm!212880) (not b!3068881) (not bm!212912) (not b!3068739) (not b!3068678) (not d!856013) (not b!3068870) (not b!3068886) (not bm!212878) (not d!856015) (not b!3068741) (not b!3068804) (not b!3068879) (not b!3068878) (not b!3068883) (not b!3068712) (not bm!212902) (not bm!212908) (not b!3068882) (not d!856011) (not b!3068829) (not b!3068738) (not d!856007) (not bm!212904) (not d!856029) (not bm!212882) (not b!3068885) (not b!3068875) (not b!3068724) (not b!3068887) (not b!3068874) (not b!3068733) (not b!3068683) (not bm!212909) (not bm!212854) (not b!3068557) (not b!3068805) (not b!3068740) (not b!3068743) (not bm!212881) (not b!3068686) (not bm!212911) (not b!3068857) (not bm!212913) (not bm!212871) (not b!3068688) (not bm!212905) (not b!3068877))
(check-sat)
