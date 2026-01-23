; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295696 () Bool)

(assert start!295696)

(declare-fun b!3135602 () Bool)

(assert (=> b!3135602 true))

(assert (=> b!3135602 true))

(assert (=> b!3135602 true))

(declare-fun lambda!115680 () Int)

(declare-fun lambda!115679 () Int)

(assert (=> b!3135602 (not (= lambda!115680 lambda!115679))))

(assert (=> b!3135602 true))

(assert (=> b!3135602 true))

(assert (=> b!3135602 true))

(declare-fun b!3135601 () Bool)

(declare-fun res!1281404 () Bool)

(declare-fun e!1956521 () Bool)

(assert (=> b!3135601 (=> res!1281404 e!1956521)))

(declare-datatypes ((C!19468 0))(
  ( (C!19469 (val!11770 Int)) )
))
(declare-datatypes ((Regex!9641 0))(
  ( (ElementMatch!9641 (c!526829 C!19468)) (Concat!14962 (regOne!19794 Regex!9641) (regTwo!19794 Regex!9641)) (EmptyExpr!9641) (Star!9641 (reg!9970 Regex!9641)) (EmptyLang!9641) (Union!9641 (regOne!19795 Regex!9641) (regTwo!19795 Regex!9641)) )
))
(declare-fun lt!1060700 () Regex!9641)

(declare-datatypes ((List!35506 0))(
  ( (Nil!35382) (Cons!35382 (h!40802 C!19468) (t!234571 List!35506)) )
))
(declare-datatypes ((tuple2!34260 0))(
  ( (tuple2!34261 (_1!20262 List!35506) (_2!20262 List!35506)) )
))
(declare-fun lt!1060707 () tuple2!34260)

(declare-fun matchR!4523 (Regex!9641 List!35506) Bool)

(assert (=> b!3135601 (= res!1281404 (not (matchR!4523 lt!1060700 (_2!20262 lt!1060707))))))

(declare-fun e!1956524 () Bool)

(declare-fun e!1956520 () Bool)

(assert (=> b!3135602 (= e!1956524 e!1956520)))

(declare-fun res!1281397 () Bool)

(assert (=> b!3135602 (=> res!1281397 e!1956520)))

(declare-fun lt!1060701 () Bool)

(assert (=> b!3135602 (= res!1281397 (not lt!1060701))))

(declare-fun Exists!1895 (Int) Bool)

(assert (=> b!3135602 (= (Exists!1895 lambda!115679) (Exists!1895 lambda!115680))))

(declare-datatypes ((Unit!49735 0))(
  ( (Unit!49736) )
))
(declare-fun lt!1060703 () Unit!49735)

(declare-fun lt!1060710 () Regex!9641)

(declare-fun s!11993 () List!35506)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!356 (Regex!9641 List!35506) Unit!49735)

(assert (=> b!3135602 (= lt!1060703 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!356 lt!1060710 s!11993))))

(assert (=> b!3135602 (= lt!1060701 (Exists!1895 lambda!115679))))

(declare-datatypes ((Option!6862 0))(
  ( (None!6861) (Some!6861 (v!34995 tuple2!34260)) )
))
(declare-fun lt!1060693 () Option!6862)

(declare-fun isDefined!5413 (Option!6862) Bool)

(assert (=> b!3135602 (= lt!1060701 (isDefined!5413 lt!1060693))))

(declare-fun findConcatSeparation!1256 (Regex!9641 Regex!9641 List!35506 List!35506 List!35506) Option!6862)

(assert (=> b!3135602 (= lt!1060693 (findConcatSeparation!1256 lt!1060710 lt!1060700 Nil!35382 s!11993 s!11993))))

(declare-fun lt!1060698 () Unit!49735)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1026 (Regex!9641 Regex!9641 List!35506) Unit!49735)

(assert (=> b!3135602 (= lt!1060698 (lemmaFindConcatSeparationEquivalentToExists!1026 lt!1060710 lt!1060700 s!11993))))

(declare-fun b!3135603 () Bool)

(declare-fun e!1956522 () Bool)

(declare-fun e!1956525 () Bool)

(assert (=> b!3135603 (= e!1956522 e!1956525)))

(declare-fun res!1281406 () Bool)

(assert (=> b!3135603 (=> res!1281406 e!1956525)))

(declare-fun isEmptyLang!692 (Regex!9641) Bool)

(assert (=> b!3135603 (= res!1281406 (isEmptyLang!692 lt!1060710))))

(declare-fun r!17423 () Regex!9641)

(declare-fun simplify!596 (Regex!9641) Regex!9641)

(assert (=> b!3135603 (= lt!1060710 (simplify!596 (reg!9970 r!17423)))))

(declare-fun b!3135604 () Bool)

(assert (=> b!3135604 (= e!1956520 e!1956521)))

(declare-fun res!1281403 () Bool)

(assert (=> b!3135604 (=> res!1281403 e!1956521)))

(assert (=> b!3135604 (= res!1281403 (not (matchR!4523 lt!1060710 (_1!20262 lt!1060707))))))

(declare-fun get!11148 (Option!6862) tuple2!34260)

(assert (=> b!3135604 (= lt!1060707 (get!11148 lt!1060693))))

(declare-fun b!3135605 () Bool)

(declare-fun e!1956526 () Bool)

(assert (=> b!3135605 (= e!1956521 e!1956526)))

(declare-fun res!1281402 () Bool)

(assert (=> b!3135605 (=> res!1281402 e!1956526)))

(declare-fun lt!1060699 () Bool)

(assert (=> b!3135605 (= res!1281402 (not lt!1060699))))

(declare-fun lt!1060708 () Regex!9641)

(assert (=> b!3135605 (= lt!1060699 (matchR!4523 lt!1060708 (_2!20262 lt!1060707)))))

(declare-fun lt!1060709 () Regex!9641)

(assert (=> b!3135605 (= lt!1060699 (matchR!4523 lt!1060709 (_2!20262 lt!1060707)))))

(assert (=> b!3135605 (= lt!1060708 (simplify!596 lt!1060709))))

(declare-fun lt!1060702 () Unit!49735)

(declare-fun lemmaSimplifySound!368 (Regex!9641 List!35506) Unit!49735)

(assert (=> b!3135605 (= lt!1060702 (lemmaSimplifySound!368 lt!1060709 (_2!20262 lt!1060707)))))

(assert (=> b!3135605 (= lt!1060709 (Star!9641 (reg!9970 r!17423)))))

(declare-fun lt!1060695 () Unit!49735)

(declare-fun e!1956517 () Unit!49735)

(assert (=> b!3135605 (= lt!1060695 e!1956517)))

(declare-fun c!526828 () Bool)

(declare-fun size!26597 (List!35506) Int)

(assert (=> b!3135605 (= c!526828 (= (size!26597 (_2!20262 lt!1060707)) (size!26597 s!11993)))))

(assert (=> b!3135605 (matchR!4523 (reg!9970 r!17423) (_1!20262 lt!1060707))))

(declare-fun lt!1060706 () Unit!49735)

(assert (=> b!3135605 (= lt!1060706 (lemmaSimplifySound!368 (reg!9970 r!17423) (_1!20262 lt!1060707)))))

(declare-fun b!3135606 () Bool)

(declare-fun res!1281405 () Bool)

(assert (=> b!3135606 (=> res!1281405 e!1956526)))

(declare-fun validRegex!4374 (Regex!9641) Bool)

(assert (=> b!3135606 (= res!1281405 (not (validRegex!4374 lt!1060709)))))

(declare-fun b!3135607 () Bool)

(declare-fun e!1956523 () Bool)

(declare-fun tp_is_empty!16845 () Bool)

(declare-fun tp!981763 () Bool)

(assert (=> b!3135607 (= e!1956523 (and tp_is_empty!16845 tp!981763))))

(declare-fun b!3135608 () Bool)

(declare-fun e!1956518 () Bool)

(declare-fun tp!981764 () Bool)

(assert (=> b!3135608 (= e!1956518 tp!981764)))

(declare-fun b!3135609 () Bool)

(declare-fun tp!981760 () Bool)

(declare-fun tp!981761 () Bool)

(assert (=> b!3135609 (= e!1956518 (and tp!981760 tp!981761))))

(declare-fun b!3135610 () Bool)

(declare-fun tp!981762 () Bool)

(declare-fun tp!981765 () Bool)

(assert (=> b!3135610 (= e!1956518 (and tp!981762 tp!981765))))

(declare-fun b!3135611 () Bool)

(assert (=> b!3135611 (= e!1956526 (not (matchR!4523 (simplify!596 r!17423) s!11993)))))

(declare-fun ++!8515 (List!35506 List!35506) List!35506)

(assert (=> b!3135611 (matchR!4523 lt!1060709 (++!8515 (_1!20262 lt!1060707) (_2!20262 lt!1060707)))))

(declare-fun lt!1060705 () Unit!49735)

(declare-fun lemmaStarApp!28 (Regex!9641 List!35506 List!35506) Unit!49735)

(assert (=> b!3135611 (= lt!1060705 (lemmaStarApp!28 (reg!9970 r!17423) (_1!20262 lt!1060707) (_2!20262 lt!1060707)))))

(declare-fun res!1281399 () Bool)

(declare-fun e!1956527 () Bool)

(assert (=> start!295696 (=> (not res!1281399) (not e!1956527))))

(assert (=> start!295696 (= res!1281399 (validRegex!4374 r!17423))))

(assert (=> start!295696 e!1956527))

(assert (=> start!295696 e!1956518))

(assert (=> start!295696 e!1956523))

(declare-fun b!3135612 () Bool)

(declare-fun e!1956519 () Bool)

(assert (=> b!3135612 (= e!1956519 e!1956524)))

(declare-fun res!1281401 () Bool)

(assert (=> b!3135612 (=> res!1281401 e!1956524)))

(declare-fun isEmpty!19737 (List!35506) Bool)

(assert (=> b!3135612 (= res!1281401 (isEmpty!19737 s!11993))))

(declare-fun matchRSpec!1778 (Regex!9641 List!35506) Bool)

(assert (=> b!3135612 (matchRSpec!1778 lt!1060700 s!11993)))

(declare-fun lt!1060696 () Unit!49735)

(declare-fun mainMatchTheorem!1778 (Regex!9641 List!35506) Unit!49735)

(assert (=> b!3135612 (= lt!1060696 (mainMatchTheorem!1778 lt!1060700 s!11993))))

(declare-fun b!3135613 () Bool)

(declare-fun Unit!49737 () Unit!49735)

(assert (=> b!3135613 (= e!1956517 Unit!49737)))

(declare-fun lt!1060694 () Unit!49735)

(assert (=> b!3135613 (= lt!1060694 (mainMatchTheorem!1778 (reg!9970 r!17423) (_1!20262 lt!1060707)))))

(assert (=> b!3135613 false))

(declare-fun b!3135614 () Bool)

(assert (=> b!3135614 (= e!1956525 e!1956519)))

(declare-fun res!1281398 () Bool)

(assert (=> b!3135614 (=> res!1281398 e!1956519)))

(assert (=> b!3135614 (= res!1281398 (not (matchR!4523 lt!1060700 s!11993)))))

(assert (=> b!3135614 (= lt!1060700 (Star!9641 lt!1060710))))

(declare-fun b!3135615 () Bool)

(assert (=> b!3135615 (= e!1956527 (not e!1956522))))

(declare-fun res!1281400 () Bool)

(assert (=> b!3135615 (=> res!1281400 e!1956522)))

(declare-fun lt!1060697 () Bool)

(get-info :version)

(assert (=> b!3135615 (= res!1281400 (or lt!1060697 ((_ is Concat!14962) r!17423) ((_ is Union!9641) r!17423) (not ((_ is Star!9641) r!17423))))))

(assert (=> b!3135615 (= lt!1060697 (matchRSpec!1778 r!17423 s!11993))))

(assert (=> b!3135615 (= lt!1060697 (matchR!4523 r!17423 s!11993))))

(declare-fun lt!1060704 () Unit!49735)

(assert (=> b!3135615 (= lt!1060704 (mainMatchTheorem!1778 r!17423 s!11993))))

(declare-fun b!3135616 () Bool)

(assert (=> b!3135616 (= e!1956518 tp_is_empty!16845)))

(declare-fun b!3135617 () Bool)

(declare-fun Unit!49738 () Unit!49735)

(assert (=> b!3135617 (= e!1956517 Unit!49738)))

(assert (= (and start!295696 res!1281399) b!3135615))

(assert (= (and b!3135615 (not res!1281400)) b!3135603))

(assert (= (and b!3135603 (not res!1281406)) b!3135614))

(assert (= (and b!3135614 (not res!1281398)) b!3135612))

(assert (= (and b!3135612 (not res!1281401)) b!3135602))

(assert (= (and b!3135602 (not res!1281397)) b!3135604))

(assert (= (and b!3135604 (not res!1281403)) b!3135601))

(assert (= (and b!3135601 (not res!1281404)) b!3135605))

(assert (= (and b!3135605 c!526828) b!3135613))

(assert (= (and b!3135605 (not c!526828)) b!3135617))

(assert (= (and b!3135605 (not res!1281402)) b!3135606))

(assert (= (and b!3135606 (not res!1281405)) b!3135611))

(assert (= (and start!295696 ((_ is ElementMatch!9641) r!17423)) b!3135616))

(assert (= (and start!295696 ((_ is Concat!14962) r!17423)) b!3135609))

(assert (= (and start!295696 ((_ is Star!9641) r!17423)) b!3135608))

(assert (= (and start!295696 ((_ is Union!9641) r!17423)) b!3135610))

(assert (= (and start!295696 ((_ is Cons!35382) s!11993)) b!3135607))

(declare-fun m!3416369 () Bool)

(assert (=> b!3135605 m!3416369))

(declare-fun m!3416371 () Bool)

(assert (=> b!3135605 m!3416371))

(declare-fun m!3416373 () Bool)

(assert (=> b!3135605 m!3416373))

(declare-fun m!3416375 () Bool)

(assert (=> b!3135605 m!3416375))

(declare-fun m!3416377 () Bool)

(assert (=> b!3135605 m!3416377))

(declare-fun m!3416379 () Bool)

(assert (=> b!3135605 m!3416379))

(declare-fun m!3416381 () Bool)

(assert (=> b!3135605 m!3416381))

(declare-fun m!3416383 () Bool)

(assert (=> b!3135605 m!3416383))

(declare-fun m!3416385 () Bool)

(assert (=> b!3135611 m!3416385))

(declare-fun m!3416387 () Bool)

(assert (=> b!3135611 m!3416387))

(declare-fun m!3416389 () Bool)

(assert (=> b!3135611 m!3416389))

(declare-fun m!3416391 () Bool)

(assert (=> b!3135611 m!3416391))

(assert (=> b!3135611 m!3416391))

(declare-fun m!3416393 () Bool)

(assert (=> b!3135611 m!3416393))

(assert (=> b!3135611 m!3416385))

(declare-fun m!3416395 () Bool)

(assert (=> b!3135615 m!3416395))

(declare-fun m!3416397 () Bool)

(assert (=> b!3135615 m!3416397))

(declare-fun m!3416399 () Bool)

(assert (=> b!3135615 m!3416399))

(declare-fun m!3416401 () Bool)

(assert (=> b!3135602 m!3416401))

(declare-fun m!3416403 () Bool)

(assert (=> b!3135602 m!3416403))

(declare-fun m!3416405 () Bool)

(assert (=> b!3135602 m!3416405))

(declare-fun m!3416407 () Bool)

(assert (=> b!3135602 m!3416407))

(declare-fun m!3416409 () Bool)

(assert (=> b!3135602 m!3416409))

(declare-fun m!3416411 () Bool)

(assert (=> b!3135602 m!3416411))

(assert (=> b!3135602 m!3416411))

(declare-fun m!3416413 () Bool)

(assert (=> b!3135604 m!3416413))

(declare-fun m!3416415 () Bool)

(assert (=> b!3135604 m!3416415))

(declare-fun m!3416417 () Bool)

(assert (=> b!3135601 m!3416417))

(declare-fun m!3416419 () Bool)

(assert (=> b!3135606 m!3416419))

(declare-fun m!3416421 () Bool)

(assert (=> b!3135603 m!3416421))

(declare-fun m!3416423 () Bool)

(assert (=> b!3135603 m!3416423))

(declare-fun m!3416425 () Bool)

(assert (=> b!3135614 m!3416425))

(declare-fun m!3416427 () Bool)

(assert (=> b!3135612 m!3416427))

(declare-fun m!3416429 () Bool)

(assert (=> b!3135612 m!3416429))

(declare-fun m!3416431 () Bool)

(assert (=> b!3135612 m!3416431))

(declare-fun m!3416433 () Bool)

(assert (=> b!3135613 m!3416433))

(declare-fun m!3416435 () Bool)

(assert (=> start!295696 m!3416435))

(check-sat (not b!3135605) (not b!3135610) (not b!3135609) (not b!3135602) (not b!3135606) (not start!295696) (not b!3135611) (not b!3135613) (not b!3135615) (not b!3135612) (not b!3135607) (not b!3135603) (not b!3135614) tp_is_empty!16845 (not b!3135601) (not b!3135608) (not b!3135604))
(check-sat)
(get-model)

(declare-fun d!865312 () Bool)

(assert (=> d!865312 (= (isEmptyLang!692 lt!1060710) ((_ is EmptyLang!9641) lt!1060710))))

(assert (=> b!3135603 d!865312))

(declare-fun b!3135848 () Bool)

(declare-fun c!526892 () Bool)

(assert (=> b!3135848 (= c!526892 ((_ is Union!9641) (reg!9970 r!17423)))))

(declare-fun e!1956659 () Regex!9641)

(declare-fun e!1956665 () Regex!9641)

(assert (=> b!3135848 (= e!1956659 e!1956665)))

(declare-fun b!3135849 () Bool)

(declare-fun e!1956662 () Regex!9641)

(declare-fun e!1956670 () Regex!9641)

(assert (=> b!3135849 (= e!1956662 e!1956670)))

(declare-fun c!526899 () Bool)

(assert (=> b!3135849 (= c!526899 ((_ is ElementMatch!9641) (reg!9970 r!17423)))))

(declare-fun b!3135850 () Bool)

(declare-fun e!1956658 () Bool)

(declare-fun call!224759 () Bool)

(assert (=> b!3135850 (= e!1956658 call!224759)))

(declare-fun b!3135851 () Bool)

(declare-fun e!1956664 () Regex!9641)

(assert (=> b!3135851 (= e!1956664 e!1956659)))

(declare-fun c!526897 () Bool)

(assert (=> b!3135851 (= c!526897 ((_ is Star!9641) (reg!9970 r!17423)))))

(declare-fun b!3135852 () Bool)

(declare-fun e!1956663 () Regex!9641)

(declare-fun lt!1060748 () Regex!9641)

(declare-fun lt!1060750 () Regex!9641)

(assert (=> b!3135852 (= e!1956663 (Concat!14962 lt!1060748 lt!1060750))))

(declare-fun b!3135853 () Bool)

(declare-fun c!526895 () Bool)

(declare-fun call!224755 () Bool)

(assert (=> b!3135853 (= c!526895 call!224755)))

(declare-fun e!1956660 () Regex!9641)

(declare-fun e!1956661 () Regex!9641)

(assert (=> b!3135853 (= e!1956660 e!1956661)))

(declare-fun b!3135854 () Bool)

(declare-fun e!1956669 () Regex!9641)

(assert (=> b!3135854 (= e!1956669 lt!1060750)))

(declare-fun b!3135855 () Bool)

(declare-fun c!526890 () Bool)

(assert (=> b!3135855 (= c!526890 call!224759)))

(declare-fun e!1956666 () Regex!9641)

(assert (=> b!3135855 (= e!1956666 e!1956669)))

(declare-fun lt!1060745 () Regex!9641)

(declare-fun bm!224748 () Bool)

(assert (=> bm!224748 (= call!224755 (isEmptyLang!692 (ite c!526892 lt!1060745 lt!1060748)))))

(declare-fun b!3135856 () Bool)

(declare-fun e!1956671 () Regex!9641)

(declare-fun lt!1060749 () Regex!9641)

(assert (=> b!3135856 (= e!1956671 (Star!9641 lt!1060749))))

(declare-fun b!3135857 () Bool)

(declare-fun e!1956668 () Bool)

(declare-fun call!224758 () Bool)

(assert (=> b!3135857 (= e!1956668 call!224758)))

(declare-fun b!3135858 () Bool)

(assert (=> b!3135858 (= e!1956670 (reg!9970 r!17423))))

(declare-fun lt!1060746 () Regex!9641)

(declare-fun call!224754 () Bool)

(declare-fun bm!224749 () Bool)

(assert (=> bm!224749 (= call!224754 (isEmptyLang!692 (ite c!526897 lt!1060749 (ite c!526892 lt!1060746 lt!1060750))))))

(declare-fun b!3135859 () Bool)

(declare-fun c!526893 () Bool)

(assert (=> b!3135859 (= c!526893 ((_ is EmptyExpr!9641) (reg!9970 r!17423)))))

(assert (=> b!3135859 (= e!1956670 e!1956664)))

(declare-fun bm!224750 () Bool)

(declare-fun call!224756 () Regex!9641)

(assert (=> bm!224750 (= call!224756 (simplify!596 (ite c!526897 (reg!9970 (reg!9970 r!17423)) (ite c!526892 (regTwo!19795 (reg!9970 r!17423)) (regOne!19794 (reg!9970 r!17423))))))))

(declare-fun b!3135860 () Bool)

(assert (=> b!3135860 (= e!1956664 EmptyExpr!9641)))

(declare-fun b!3135861 () Bool)

(assert (=> b!3135861 (= e!1956665 e!1956666)))

(declare-fun call!224757 () Regex!9641)

(assert (=> b!3135861 (= lt!1060748 call!224757)))

(declare-fun call!224753 () Regex!9641)

(assert (=> b!3135861 (= lt!1060750 call!224753)))

(declare-fun res!1281515 () Bool)

(assert (=> b!3135861 (= res!1281515 call!224755)))

(assert (=> b!3135861 (=> res!1281515 e!1956668)))

(declare-fun c!526894 () Bool)

(assert (=> b!3135861 (= c!526894 e!1956668)))

(declare-fun b!3135862 () Bool)

(declare-fun e!1956667 () Bool)

(declare-fun lt!1060747 () Regex!9641)

(declare-fun nullable!3275 (Regex!9641) Bool)

(assert (=> b!3135862 (= e!1956667 (= (nullable!3275 lt!1060747) (nullable!3275 (reg!9970 r!17423))))))

(declare-fun bm!224751 () Bool)

(assert (=> bm!224751 (= call!224753 (simplify!596 (ite c!526892 (regOne!19795 (reg!9970 r!17423)) (regTwo!19794 (reg!9970 r!17423)))))))

(declare-fun bm!224752 () Bool)

(declare-fun isEmptyExpr!685 (Regex!9641) Bool)

(assert (=> bm!224752 (= call!224759 (isEmptyExpr!685 (ite c!526897 lt!1060749 lt!1060748)))))

(declare-fun b!3135863 () Bool)

(assert (=> b!3135863 (= e!1956665 e!1956660)))

(assert (=> b!3135863 (= lt!1060746 call!224753)))

(assert (=> b!3135863 (= lt!1060745 call!224757)))

(declare-fun c!526898 () Bool)

(assert (=> b!3135863 (= c!526898 call!224758)))

(declare-fun bm!224753 () Bool)

(assert (=> bm!224753 (= call!224757 call!224756)))

(declare-fun b!3135864 () Bool)

(declare-fun c!526891 () Bool)

(assert (=> b!3135864 (= c!526891 e!1956658)))

(declare-fun res!1281513 () Bool)

(assert (=> b!3135864 (=> res!1281513 e!1956658)))

(assert (=> b!3135864 (= res!1281513 call!224754)))

(assert (=> b!3135864 (= lt!1060749 call!224756)))

(assert (=> b!3135864 (= e!1956659 e!1956671)))

(declare-fun b!3135865 () Bool)

(assert (=> b!3135865 (= e!1956662 EmptyLang!9641)))

(declare-fun b!3135866 () Bool)

(assert (=> b!3135866 (= e!1956661 lt!1060746)))

(declare-fun b!3135867 () Bool)

(assert (=> b!3135867 (= e!1956666 EmptyLang!9641)))

(declare-fun b!3135868 () Bool)

(assert (=> b!3135868 (= e!1956669 e!1956663)))

(declare-fun c!526896 () Bool)

(assert (=> b!3135868 (= c!526896 (isEmptyExpr!685 lt!1060750))))

(declare-fun b!3135869 () Bool)

(assert (=> b!3135869 (= e!1956660 lt!1060745)))

(declare-fun b!3135870 () Bool)

(assert (=> b!3135870 (= e!1956661 (Union!9641 lt!1060746 lt!1060745))))

(declare-fun bm!224754 () Bool)

(assert (=> bm!224754 (= call!224758 call!224754)))

(declare-fun b!3135872 () Bool)

(assert (=> b!3135872 (= e!1956671 EmptyExpr!9641)))

(declare-fun d!865314 () Bool)

(assert (=> d!865314 e!1956667))

(declare-fun res!1281514 () Bool)

(assert (=> d!865314 (=> (not res!1281514) (not e!1956667))))

(assert (=> d!865314 (= res!1281514 (validRegex!4374 lt!1060747))))

(assert (=> d!865314 (= lt!1060747 e!1956662)))

(declare-fun c!526900 () Bool)

(assert (=> d!865314 (= c!526900 ((_ is EmptyLang!9641) (reg!9970 r!17423)))))

(assert (=> d!865314 (validRegex!4374 (reg!9970 r!17423))))

(assert (=> d!865314 (= (simplify!596 (reg!9970 r!17423)) lt!1060747)))

(declare-fun b!3135871 () Bool)

(assert (=> b!3135871 (= e!1956663 lt!1060748)))

(assert (= (and d!865314 c!526900) b!3135865))

(assert (= (and d!865314 (not c!526900)) b!3135849))

(assert (= (and b!3135849 c!526899) b!3135858))

(assert (= (and b!3135849 (not c!526899)) b!3135859))

(assert (= (and b!3135859 c!526893) b!3135860))

(assert (= (and b!3135859 (not c!526893)) b!3135851))

(assert (= (and b!3135851 c!526897) b!3135864))

(assert (= (and b!3135851 (not c!526897)) b!3135848))

(assert (= (and b!3135864 (not res!1281513)) b!3135850))

(assert (= (and b!3135864 c!526891) b!3135872))

(assert (= (and b!3135864 (not c!526891)) b!3135856))

(assert (= (and b!3135848 c!526892) b!3135863))

(assert (= (and b!3135848 (not c!526892)) b!3135861))

(assert (= (and b!3135863 c!526898) b!3135869))

(assert (= (and b!3135863 (not c!526898)) b!3135853))

(assert (= (and b!3135853 c!526895) b!3135866))

(assert (= (and b!3135853 (not c!526895)) b!3135870))

(assert (= (and b!3135861 (not res!1281515)) b!3135857))

(assert (= (and b!3135861 c!526894) b!3135867))

(assert (= (and b!3135861 (not c!526894)) b!3135855))

(assert (= (and b!3135855 c!526890) b!3135854))

(assert (= (and b!3135855 (not c!526890)) b!3135868))

(assert (= (and b!3135868 c!526896) b!3135871))

(assert (= (and b!3135868 (not c!526896)) b!3135852))

(assert (= (or b!3135863 b!3135861) bm!224751))

(assert (= (or b!3135863 b!3135861) bm!224753))

(assert (= (or b!3135863 b!3135857) bm!224754))

(assert (= (or b!3135853 b!3135861) bm!224748))

(assert (= (or b!3135850 b!3135855) bm!224752))

(assert (= (or b!3135864 bm!224753) bm!224750))

(assert (= (or b!3135864 bm!224754) bm!224749))

(assert (= (and d!865314 res!1281514) b!3135862))

(declare-fun m!3416523 () Bool)

(assert (=> bm!224750 m!3416523))

(declare-fun m!3416525 () Bool)

(assert (=> bm!224752 m!3416525))

(declare-fun m!3416527 () Bool)

(assert (=> bm!224748 m!3416527))

(declare-fun m!3416529 () Bool)

(assert (=> b!3135862 m!3416529))

(declare-fun m!3416531 () Bool)

(assert (=> b!3135862 m!3416531))

(declare-fun m!3416533 () Bool)

(assert (=> bm!224749 m!3416533))

(declare-fun m!3416535 () Bool)

(assert (=> bm!224751 m!3416535))

(declare-fun m!3416537 () Bool)

(assert (=> b!3135868 m!3416537))

(declare-fun m!3416539 () Bool)

(assert (=> d!865314 m!3416539))

(declare-fun m!3416541 () Bool)

(assert (=> d!865314 m!3416541))

(assert (=> b!3135603 d!865314))

(declare-fun b!3136029 () Bool)

(declare-fun res!1281571 () Bool)

(declare-fun e!1956758 () Bool)

(assert (=> b!3136029 (=> res!1281571 e!1956758)))

(declare-fun tail!5155 (List!35506) List!35506)

(assert (=> b!3136029 (= res!1281571 (not (isEmpty!19737 (tail!5155 s!11993))))))

(declare-fun b!3136030 () Bool)

(declare-fun head!6929 (List!35506) C!19468)

(assert (=> b!3136030 (= e!1956758 (not (= (head!6929 s!11993) (c!526829 lt!1060700))))))

(declare-fun b!3136031 () Bool)

(declare-fun e!1956760 () Bool)

(declare-fun e!1956756 () Bool)

(assert (=> b!3136031 (= e!1956760 e!1956756)))

(declare-fun res!1281573 () Bool)

(assert (=> b!3136031 (=> (not res!1281573) (not e!1956756))))

(declare-fun lt!1060776 () Bool)

(assert (=> b!3136031 (= res!1281573 (not lt!1060776))))

(declare-fun b!3136032 () Bool)

(declare-fun res!1281575 () Bool)

(declare-fun e!1956757 () Bool)

(assert (=> b!3136032 (=> (not res!1281575) (not e!1956757))))

(assert (=> b!3136032 (= res!1281575 (isEmpty!19737 (tail!5155 s!11993)))))

(declare-fun bm!224783 () Bool)

(declare-fun call!224788 () Bool)

(assert (=> bm!224783 (= call!224788 (isEmpty!19737 s!11993))))

(declare-fun b!3136033 () Bool)

(declare-fun e!1956761 () Bool)

(declare-fun derivativeStep!2870 (Regex!9641 C!19468) Regex!9641)

(assert (=> b!3136033 (= e!1956761 (matchR!4523 (derivativeStep!2870 lt!1060700 (head!6929 s!11993)) (tail!5155 s!11993)))))

(declare-fun b!3136034 () Bool)

(declare-fun res!1281572 () Bool)

(assert (=> b!3136034 (=> (not res!1281572) (not e!1956757))))

(assert (=> b!3136034 (= res!1281572 (not call!224788))))

(declare-fun b!3136035 () Bool)

(declare-fun res!1281569 () Bool)

(assert (=> b!3136035 (=> res!1281569 e!1956760)))

(assert (=> b!3136035 (= res!1281569 (not ((_ is ElementMatch!9641) lt!1060700)))))

(declare-fun e!1956762 () Bool)

(assert (=> b!3136035 (= e!1956762 e!1956760)))

(declare-fun b!3136036 () Bool)

(declare-fun e!1956759 () Bool)

(assert (=> b!3136036 (= e!1956759 (= lt!1060776 call!224788))))

(declare-fun b!3136037 () Bool)

(assert (=> b!3136037 (= e!1956759 e!1956762)))

(declare-fun c!526954 () Bool)

(assert (=> b!3136037 (= c!526954 ((_ is EmptyLang!9641) lt!1060700))))

(declare-fun d!865342 () Bool)

(assert (=> d!865342 e!1956759))

(declare-fun c!526953 () Bool)

(assert (=> d!865342 (= c!526953 ((_ is EmptyExpr!9641) lt!1060700))))

(assert (=> d!865342 (= lt!1060776 e!1956761)))

(declare-fun c!526955 () Bool)

(assert (=> d!865342 (= c!526955 (isEmpty!19737 s!11993))))

(assert (=> d!865342 (validRegex!4374 lt!1060700)))

(assert (=> d!865342 (= (matchR!4523 lt!1060700 s!11993) lt!1060776)))

(declare-fun b!3136038 () Bool)

(assert (=> b!3136038 (= e!1956762 (not lt!1060776))))

(declare-fun b!3136039 () Bool)

(assert (=> b!3136039 (= e!1956757 (= (head!6929 s!11993) (c!526829 lt!1060700)))))

(declare-fun b!3136040 () Bool)

(declare-fun res!1281568 () Bool)

(assert (=> b!3136040 (=> res!1281568 e!1956760)))

(assert (=> b!3136040 (= res!1281568 e!1956757)))

(declare-fun res!1281570 () Bool)

(assert (=> b!3136040 (=> (not res!1281570) (not e!1956757))))

(assert (=> b!3136040 (= res!1281570 lt!1060776)))

(declare-fun b!3136041 () Bool)

(assert (=> b!3136041 (= e!1956756 e!1956758)))

(declare-fun res!1281574 () Bool)

(assert (=> b!3136041 (=> res!1281574 e!1956758)))

(assert (=> b!3136041 (= res!1281574 call!224788)))

(declare-fun b!3136042 () Bool)

(assert (=> b!3136042 (= e!1956761 (nullable!3275 lt!1060700))))

(assert (= (and d!865342 c!526955) b!3136042))

(assert (= (and d!865342 (not c!526955)) b!3136033))

(assert (= (and d!865342 c!526953) b!3136036))

(assert (= (and d!865342 (not c!526953)) b!3136037))

(assert (= (and b!3136037 c!526954) b!3136038))

(assert (= (and b!3136037 (not c!526954)) b!3136035))

(assert (= (and b!3136035 (not res!1281569)) b!3136040))

(assert (= (and b!3136040 res!1281570) b!3136034))

(assert (= (and b!3136034 res!1281572) b!3136032))

(assert (= (and b!3136032 res!1281575) b!3136039))

(assert (= (and b!3136040 (not res!1281568)) b!3136031))

(assert (= (and b!3136031 res!1281573) b!3136041))

(assert (= (and b!3136041 (not res!1281574)) b!3136029))

(assert (= (and b!3136029 (not res!1281571)) b!3136030))

(assert (= (or b!3136036 b!3136034 b!3136041) bm!224783))

(declare-fun m!3416597 () Bool)

(assert (=> b!3136039 m!3416597))

(assert (=> b!3136033 m!3416597))

(assert (=> b!3136033 m!3416597))

(declare-fun m!3416599 () Bool)

(assert (=> b!3136033 m!3416599))

(declare-fun m!3416601 () Bool)

(assert (=> b!3136033 m!3416601))

(assert (=> b!3136033 m!3416599))

(assert (=> b!3136033 m!3416601))

(declare-fun m!3416603 () Bool)

(assert (=> b!3136033 m!3416603))

(assert (=> b!3136029 m!3416601))

(assert (=> b!3136029 m!3416601))

(declare-fun m!3416605 () Bool)

(assert (=> b!3136029 m!3416605))

(declare-fun m!3416607 () Bool)

(assert (=> b!3136042 m!3416607))

(assert (=> b!3136030 m!3416597))

(assert (=> d!865342 m!3416427))

(declare-fun m!3416609 () Bool)

(assert (=> d!865342 m!3416609))

(assert (=> bm!224783 m!3416427))

(assert (=> b!3136032 m!3416601))

(assert (=> b!3136032 m!3416601))

(assert (=> b!3136032 m!3416605))

(assert (=> b!3135614 d!865342))

(declare-fun b!3136049 () Bool)

(declare-fun res!1281579 () Bool)

(declare-fun e!1956768 () Bool)

(assert (=> b!3136049 (=> res!1281579 e!1956768)))

(assert (=> b!3136049 (= res!1281579 (not (isEmpty!19737 (tail!5155 (_1!20262 lt!1060707)))))))

(declare-fun b!3136050 () Bool)

(assert (=> b!3136050 (= e!1956768 (not (= (head!6929 (_1!20262 lt!1060707)) (c!526829 lt!1060710))))))

(declare-fun b!3136051 () Bool)

(declare-fun e!1956770 () Bool)

(declare-fun e!1956766 () Bool)

(assert (=> b!3136051 (= e!1956770 e!1956766)))

(declare-fun res!1281581 () Bool)

(assert (=> b!3136051 (=> (not res!1281581) (not e!1956766))))

(declare-fun lt!1060780 () Bool)

(assert (=> b!3136051 (= res!1281581 (not lt!1060780))))

(declare-fun b!3136052 () Bool)

(declare-fun res!1281583 () Bool)

(declare-fun e!1956767 () Bool)

(assert (=> b!3136052 (=> (not res!1281583) (not e!1956767))))

(assert (=> b!3136052 (= res!1281583 (isEmpty!19737 (tail!5155 (_1!20262 lt!1060707))))))

(declare-fun bm!224784 () Bool)

(declare-fun call!224789 () Bool)

(assert (=> bm!224784 (= call!224789 (isEmpty!19737 (_1!20262 lt!1060707)))))

(declare-fun b!3136053 () Bool)

(declare-fun e!1956771 () Bool)

(assert (=> b!3136053 (= e!1956771 (matchR!4523 (derivativeStep!2870 lt!1060710 (head!6929 (_1!20262 lt!1060707))) (tail!5155 (_1!20262 lt!1060707))))))

(declare-fun b!3136054 () Bool)

(declare-fun res!1281580 () Bool)

(assert (=> b!3136054 (=> (not res!1281580) (not e!1956767))))

(assert (=> b!3136054 (= res!1281580 (not call!224789))))

(declare-fun b!3136055 () Bool)

(declare-fun res!1281577 () Bool)

(assert (=> b!3136055 (=> res!1281577 e!1956770)))

(assert (=> b!3136055 (= res!1281577 (not ((_ is ElementMatch!9641) lt!1060710)))))

(declare-fun e!1956772 () Bool)

(assert (=> b!3136055 (= e!1956772 e!1956770)))

(declare-fun b!3136056 () Bool)

(declare-fun e!1956769 () Bool)

(assert (=> b!3136056 (= e!1956769 (= lt!1060780 call!224789))))

(declare-fun b!3136057 () Bool)

(assert (=> b!3136057 (= e!1956769 e!1956772)))

(declare-fun c!526960 () Bool)

(assert (=> b!3136057 (= c!526960 ((_ is EmptyLang!9641) lt!1060710))))

(declare-fun d!865356 () Bool)

(assert (=> d!865356 e!1956769))

(declare-fun c!526959 () Bool)

(assert (=> d!865356 (= c!526959 ((_ is EmptyExpr!9641) lt!1060710))))

(assert (=> d!865356 (= lt!1060780 e!1956771)))

(declare-fun c!526961 () Bool)

(assert (=> d!865356 (= c!526961 (isEmpty!19737 (_1!20262 lt!1060707)))))

(assert (=> d!865356 (validRegex!4374 lt!1060710)))

(assert (=> d!865356 (= (matchR!4523 lt!1060710 (_1!20262 lt!1060707)) lt!1060780)))

(declare-fun b!3136058 () Bool)

(assert (=> b!3136058 (= e!1956772 (not lt!1060780))))

(declare-fun b!3136059 () Bool)

(assert (=> b!3136059 (= e!1956767 (= (head!6929 (_1!20262 lt!1060707)) (c!526829 lt!1060710)))))

(declare-fun b!3136060 () Bool)

(declare-fun res!1281576 () Bool)

(assert (=> b!3136060 (=> res!1281576 e!1956770)))

(assert (=> b!3136060 (= res!1281576 e!1956767)))

(declare-fun res!1281578 () Bool)

(assert (=> b!3136060 (=> (not res!1281578) (not e!1956767))))

(assert (=> b!3136060 (= res!1281578 lt!1060780)))

(declare-fun b!3136061 () Bool)

(assert (=> b!3136061 (= e!1956766 e!1956768)))

(declare-fun res!1281582 () Bool)

(assert (=> b!3136061 (=> res!1281582 e!1956768)))

(assert (=> b!3136061 (= res!1281582 call!224789)))

(declare-fun b!3136062 () Bool)

(assert (=> b!3136062 (= e!1956771 (nullable!3275 lt!1060710))))

(assert (= (and d!865356 c!526961) b!3136062))

(assert (= (and d!865356 (not c!526961)) b!3136053))

(assert (= (and d!865356 c!526959) b!3136056))

(assert (= (and d!865356 (not c!526959)) b!3136057))

(assert (= (and b!3136057 c!526960) b!3136058))

(assert (= (and b!3136057 (not c!526960)) b!3136055))

(assert (= (and b!3136055 (not res!1281577)) b!3136060))

(assert (= (and b!3136060 res!1281578) b!3136054))

(assert (= (and b!3136054 res!1281580) b!3136052))

(assert (= (and b!3136052 res!1281583) b!3136059))

(assert (= (and b!3136060 (not res!1281576)) b!3136051))

(assert (= (and b!3136051 res!1281581) b!3136061))

(assert (= (and b!3136061 (not res!1281582)) b!3136049))

(assert (= (and b!3136049 (not res!1281579)) b!3136050))

(assert (= (or b!3136056 b!3136054 b!3136061) bm!224784))

(declare-fun m!3416613 () Bool)

(assert (=> b!3136059 m!3416613))

(assert (=> b!3136053 m!3416613))

(assert (=> b!3136053 m!3416613))

(declare-fun m!3416615 () Bool)

(assert (=> b!3136053 m!3416615))

(declare-fun m!3416617 () Bool)

(assert (=> b!3136053 m!3416617))

(assert (=> b!3136053 m!3416615))

(assert (=> b!3136053 m!3416617))

(declare-fun m!3416619 () Bool)

(assert (=> b!3136053 m!3416619))

(assert (=> b!3136049 m!3416617))

(assert (=> b!3136049 m!3416617))

(declare-fun m!3416621 () Bool)

(assert (=> b!3136049 m!3416621))

(declare-fun m!3416623 () Bool)

(assert (=> b!3136062 m!3416623))

(assert (=> b!3136050 m!3416613))

(declare-fun m!3416625 () Bool)

(assert (=> d!865356 m!3416625))

(declare-fun m!3416627 () Bool)

(assert (=> d!865356 m!3416627))

(assert (=> bm!224784 m!3416625))

(assert (=> b!3136052 m!3416617))

(assert (=> b!3136052 m!3416617))

(assert (=> b!3136052 m!3416621))

(assert (=> b!3135604 d!865356))

(declare-fun d!865360 () Bool)

(assert (=> d!865360 (= (get!11148 lt!1060693) (v!34995 lt!1060693))))

(assert (=> b!3135604 d!865360))

(declare-fun bs!538974 () Bool)

(declare-fun b!3136257 () Bool)

(assert (= bs!538974 (and b!3136257 b!3135602)))

(declare-fun lambda!115702 () Int)

(assert (=> bs!538974 (not (= lambda!115702 lambda!115679))))

(assert (=> bs!538974 (= (and (= (reg!9970 r!17423) lt!1060710) (= r!17423 lt!1060700)) (= lambda!115702 lambda!115680))))

(assert (=> b!3136257 true))

(assert (=> b!3136257 true))

(declare-fun bs!538975 () Bool)

(declare-fun b!3136252 () Bool)

(assert (= bs!538975 (and b!3136252 b!3135602)))

(declare-fun lambda!115703 () Int)

(assert (=> bs!538975 (not (= lambda!115703 lambda!115679))))

(assert (=> bs!538975 (not (= lambda!115703 lambda!115680))))

(declare-fun bs!538976 () Bool)

(assert (= bs!538976 (and b!3136252 b!3136257)))

(assert (=> bs!538976 (not (= lambda!115703 lambda!115702))))

(assert (=> b!3136252 true))

(assert (=> b!3136252 true))

(declare-fun b!3136250 () Bool)

(declare-fun e!1956864 () Bool)

(declare-fun e!1956868 () Bool)

(assert (=> b!3136250 (= e!1956864 e!1956868)))

(declare-fun res!1281644 () Bool)

(assert (=> b!3136250 (= res!1281644 (matchRSpec!1778 (regOne!19795 r!17423) s!11993))))

(assert (=> b!3136250 (=> res!1281644 e!1956868)))

(declare-fun b!3136251 () Bool)

(declare-fun c!527008 () Bool)

(assert (=> b!3136251 (= c!527008 ((_ is Union!9641) r!17423))))

(declare-fun e!1956866 () Bool)

(assert (=> b!3136251 (= e!1956866 e!1956864)))

(declare-fun e!1956870 () Bool)

(declare-fun call!224812 () Bool)

(assert (=> b!3136252 (= e!1956870 call!224812)))

(declare-fun b!3136253 () Bool)

(declare-fun res!1281645 () Bool)

(declare-fun e!1956869 () Bool)

(assert (=> b!3136253 (=> res!1281645 e!1956869)))

(declare-fun call!224813 () Bool)

(assert (=> b!3136253 (= res!1281645 call!224813)))

(assert (=> b!3136253 (= e!1956870 e!1956869)))

(declare-fun bm!224807 () Bool)

(assert (=> bm!224807 (= call!224813 (isEmpty!19737 s!11993))))

(declare-fun b!3136254 () Bool)

(declare-fun c!527011 () Bool)

(assert (=> b!3136254 (= c!527011 ((_ is ElementMatch!9641) r!17423))))

(declare-fun e!1956865 () Bool)

(assert (=> b!3136254 (= e!1956865 e!1956866)))

(declare-fun c!527010 () Bool)

(declare-fun bm!224808 () Bool)

(assert (=> bm!224808 (= call!224812 (Exists!1895 (ite c!527010 lambda!115702 lambda!115703)))))

(declare-fun d!865368 () Bool)

(declare-fun c!527009 () Bool)

(assert (=> d!865368 (= c!527009 ((_ is EmptyExpr!9641) r!17423))))

(declare-fun e!1956867 () Bool)

(assert (=> d!865368 (= (matchRSpec!1778 r!17423 s!11993) e!1956867)))

(declare-fun b!3136255 () Bool)

(assert (=> b!3136255 (= e!1956867 e!1956865)))

(declare-fun res!1281646 () Bool)

(assert (=> b!3136255 (= res!1281646 (not ((_ is EmptyLang!9641) r!17423)))))

(assert (=> b!3136255 (=> (not res!1281646) (not e!1956865))))

(declare-fun b!3136256 () Bool)

(assert (=> b!3136256 (= e!1956867 call!224813)))

(assert (=> b!3136257 (= e!1956869 call!224812)))

(declare-fun b!3136258 () Bool)

(assert (=> b!3136258 (= e!1956866 (= s!11993 (Cons!35382 (c!526829 r!17423) Nil!35382)))))

(declare-fun b!3136259 () Bool)

(assert (=> b!3136259 (= e!1956868 (matchRSpec!1778 (regTwo!19795 r!17423) s!11993))))

(declare-fun b!3136260 () Bool)

(assert (=> b!3136260 (= e!1956864 e!1956870)))

(assert (=> b!3136260 (= c!527010 ((_ is Star!9641) r!17423))))

(assert (= (and d!865368 c!527009) b!3136256))

(assert (= (and d!865368 (not c!527009)) b!3136255))

(assert (= (and b!3136255 res!1281646) b!3136254))

(assert (= (and b!3136254 c!527011) b!3136258))

(assert (= (and b!3136254 (not c!527011)) b!3136251))

(assert (= (and b!3136251 c!527008) b!3136250))

(assert (= (and b!3136251 (not c!527008)) b!3136260))

(assert (= (and b!3136250 (not res!1281644)) b!3136259))

(assert (= (and b!3136260 c!527010) b!3136253))

(assert (= (and b!3136260 (not c!527010)) b!3136252))

(assert (= (and b!3136253 (not res!1281645)) b!3136257))

(assert (= (or b!3136257 b!3136252) bm!224808))

(assert (= (or b!3136256 b!3136253) bm!224807))

(declare-fun m!3416723 () Bool)

(assert (=> b!3136250 m!3416723))

(assert (=> bm!224807 m!3416427))

(declare-fun m!3416725 () Bool)

(assert (=> bm!224808 m!3416725))

(declare-fun m!3416727 () Bool)

(assert (=> b!3136259 m!3416727))

(assert (=> b!3135615 d!865368))

(declare-fun b!3136261 () Bool)

(declare-fun res!1281650 () Bool)

(declare-fun e!1956873 () Bool)

(assert (=> b!3136261 (=> res!1281650 e!1956873)))

(assert (=> b!3136261 (= res!1281650 (not (isEmpty!19737 (tail!5155 s!11993))))))

(declare-fun b!3136262 () Bool)

(assert (=> b!3136262 (= e!1956873 (not (= (head!6929 s!11993) (c!526829 r!17423))))))

(declare-fun b!3136263 () Bool)

(declare-fun e!1956875 () Bool)

(declare-fun e!1956871 () Bool)

(assert (=> b!3136263 (= e!1956875 e!1956871)))

(declare-fun res!1281652 () Bool)

(assert (=> b!3136263 (=> (not res!1281652) (not e!1956871))))

(declare-fun lt!1060808 () Bool)

(assert (=> b!3136263 (= res!1281652 (not lt!1060808))))

(declare-fun b!3136264 () Bool)

(declare-fun res!1281654 () Bool)

(declare-fun e!1956872 () Bool)

(assert (=> b!3136264 (=> (not res!1281654) (not e!1956872))))

(assert (=> b!3136264 (= res!1281654 (isEmpty!19737 (tail!5155 s!11993)))))

(declare-fun bm!224809 () Bool)

(declare-fun call!224814 () Bool)

(assert (=> bm!224809 (= call!224814 (isEmpty!19737 s!11993))))

(declare-fun b!3136265 () Bool)

(declare-fun e!1956876 () Bool)

(assert (=> b!3136265 (= e!1956876 (matchR!4523 (derivativeStep!2870 r!17423 (head!6929 s!11993)) (tail!5155 s!11993)))))

(declare-fun b!3136266 () Bool)

(declare-fun res!1281651 () Bool)

(assert (=> b!3136266 (=> (not res!1281651) (not e!1956872))))

(assert (=> b!3136266 (= res!1281651 (not call!224814))))

(declare-fun b!3136267 () Bool)

(declare-fun res!1281648 () Bool)

(assert (=> b!3136267 (=> res!1281648 e!1956875)))

(assert (=> b!3136267 (= res!1281648 (not ((_ is ElementMatch!9641) r!17423)))))

(declare-fun e!1956877 () Bool)

(assert (=> b!3136267 (= e!1956877 e!1956875)))

(declare-fun b!3136268 () Bool)

(declare-fun e!1956874 () Bool)

(assert (=> b!3136268 (= e!1956874 (= lt!1060808 call!224814))))

(declare-fun b!3136269 () Bool)

(assert (=> b!3136269 (= e!1956874 e!1956877)))

(declare-fun c!527013 () Bool)

(assert (=> b!3136269 (= c!527013 ((_ is EmptyLang!9641) r!17423))))

(declare-fun d!865388 () Bool)

(assert (=> d!865388 e!1956874))

(declare-fun c!527012 () Bool)

(assert (=> d!865388 (= c!527012 ((_ is EmptyExpr!9641) r!17423))))

(assert (=> d!865388 (= lt!1060808 e!1956876)))

(declare-fun c!527014 () Bool)

(assert (=> d!865388 (= c!527014 (isEmpty!19737 s!11993))))

(assert (=> d!865388 (validRegex!4374 r!17423)))

(assert (=> d!865388 (= (matchR!4523 r!17423 s!11993) lt!1060808)))

(declare-fun b!3136270 () Bool)

(assert (=> b!3136270 (= e!1956877 (not lt!1060808))))

(declare-fun b!3136271 () Bool)

(assert (=> b!3136271 (= e!1956872 (= (head!6929 s!11993) (c!526829 r!17423)))))

(declare-fun b!3136272 () Bool)

(declare-fun res!1281647 () Bool)

(assert (=> b!3136272 (=> res!1281647 e!1956875)))

(assert (=> b!3136272 (= res!1281647 e!1956872)))

(declare-fun res!1281649 () Bool)

(assert (=> b!3136272 (=> (not res!1281649) (not e!1956872))))

(assert (=> b!3136272 (= res!1281649 lt!1060808)))

(declare-fun b!3136273 () Bool)

(assert (=> b!3136273 (= e!1956871 e!1956873)))

(declare-fun res!1281653 () Bool)

(assert (=> b!3136273 (=> res!1281653 e!1956873)))

(assert (=> b!3136273 (= res!1281653 call!224814)))

(declare-fun b!3136274 () Bool)

(assert (=> b!3136274 (= e!1956876 (nullable!3275 r!17423))))

(assert (= (and d!865388 c!527014) b!3136274))

(assert (= (and d!865388 (not c!527014)) b!3136265))

(assert (= (and d!865388 c!527012) b!3136268))

(assert (= (and d!865388 (not c!527012)) b!3136269))

(assert (= (and b!3136269 c!527013) b!3136270))

(assert (= (and b!3136269 (not c!527013)) b!3136267))

(assert (= (and b!3136267 (not res!1281648)) b!3136272))

(assert (= (and b!3136272 res!1281649) b!3136266))

(assert (= (and b!3136266 res!1281651) b!3136264))

(assert (= (and b!3136264 res!1281654) b!3136271))

(assert (= (and b!3136272 (not res!1281647)) b!3136263))

(assert (= (and b!3136263 res!1281652) b!3136273))

(assert (= (and b!3136273 (not res!1281653)) b!3136261))

(assert (= (and b!3136261 (not res!1281650)) b!3136262))

(assert (= (or b!3136268 b!3136266 b!3136273) bm!224809))

(assert (=> b!3136271 m!3416597))

(assert (=> b!3136265 m!3416597))

(assert (=> b!3136265 m!3416597))

(declare-fun m!3416729 () Bool)

(assert (=> b!3136265 m!3416729))

(assert (=> b!3136265 m!3416601))

(assert (=> b!3136265 m!3416729))

(assert (=> b!3136265 m!3416601))

(declare-fun m!3416731 () Bool)

(assert (=> b!3136265 m!3416731))

(assert (=> b!3136261 m!3416601))

(assert (=> b!3136261 m!3416601))

(assert (=> b!3136261 m!3416605))

(declare-fun m!3416733 () Bool)

(assert (=> b!3136274 m!3416733))

(assert (=> b!3136262 m!3416597))

(assert (=> d!865388 m!3416427))

(assert (=> d!865388 m!3416435))

(assert (=> bm!224809 m!3416427))

(assert (=> b!3136264 m!3416601))

(assert (=> b!3136264 m!3416601))

(assert (=> b!3136264 m!3416605))

(assert (=> b!3135615 d!865388))

(declare-fun d!865390 () Bool)

(assert (=> d!865390 (= (matchR!4523 r!17423 s!11993) (matchRSpec!1778 r!17423 s!11993))))

(declare-fun lt!1060811 () Unit!49735)

(declare-fun choose!18505 (Regex!9641 List!35506) Unit!49735)

(assert (=> d!865390 (= lt!1060811 (choose!18505 r!17423 s!11993))))

(assert (=> d!865390 (validRegex!4374 r!17423)))

(assert (=> d!865390 (= (mainMatchTheorem!1778 r!17423 s!11993) lt!1060811)))

(declare-fun bs!538977 () Bool)

(assert (= bs!538977 d!865390))

(assert (=> bs!538977 m!3416397))

(assert (=> bs!538977 m!3416395))

(declare-fun m!3416735 () Bool)

(assert (=> bs!538977 m!3416735))

(assert (=> bs!538977 m!3416435))

(assert (=> b!3135615 d!865390))

(declare-fun b!3136275 () Bool)

(declare-fun res!1281658 () Bool)

(declare-fun e!1956880 () Bool)

(assert (=> b!3136275 (=> res!1281658 e!1956880)))

(assert (=> b!3136275 (= res!1281658 (not (isEmpty!19737 (tail!5155 (_2!20262 lt!1060707)))))))

(declare-fun b!3136276 () Bool)

(assert (=> b!3136276 (= e!1956880 (not (= (head!6929 (_2!20262 lt!1060707)) (c!526829 lt!1060708))))))

(declare-fun b!3136277 () Bool)

(declare-fun e!1956882 () Bool)

(declare-fun e!1956878 () Bool)

(assert (=> b!3136277 (= e!1956882 e!1956878)))

(declare-fun res!1281660 () Bool)

(assert (=> b!3136277 (=> (not res!1281660) (not e!1956878))))

(declare-fun lt!1060812 () Bool)

(assert (=> b!3136277 (= res!1281660 (not lt!1060812))))

(declare-fun b!3136278 () Bool)

(declare-fun res!1281662 () Bool)

(declare-fun e!1956879 () Bool)

(assert (=> b!3136278 (=> (not res!1281662) (not e!1956879))))

(assert (=> b!3136278 (= res!1281662 (isEmpty!19737 (tail!5155 (_2!20262 lt!1060707))))))

(declare-fun bm!224810 () Bool)

(declare-fun call!224815 () Bool)

(assert (=> bm!224810 (= call!224815 (isEmpty!19737 (_2!20262 lt!1060707)))))

(declare-fun b!3136279 () Bool)

(declare-fun e!1956883 () Bool)

(assert (=> b!3136279 (= e!1956883 (matchR!4523 (derivativeStep!2870 lt!1060708 (head!6929 (_2!20262 lt!1060707))) (tail!5155 (_2!20262 lt!1060707))))))

(declare-fun b!3136280 () Bool)

(declare-fun res!1281659 () Bool)

(assert (=> b!3136280 (=> (not res!1281659) (not e!1956879))))

(assert (=> b!3136280 (= res!1281659 (not call!224815))))

(declare-fun b!3136281 () Bool)

(declare-fun res!1281656 () Bool)

(assert (=> b!3136281 (=> res!1281656 e!1956882)))

(assert (=> b!3136281 (= res!1281656 (not ((_ is ElementMatch!9641) lt!1060708)))))

(declare-fun e!1956884 () Bool)

(assert (=> b!3136281 (= e!1956884 e!1956882)))

(declare-fun b!3136282 () Bool)

(declare-fun e!1956881 () Bool)

(assert (=> b!3136282 (= e!1956881 (= lt!1060812 call!224815))))

(declare-fun b!3136283 () Bool)

(assert (=> b!3136283 (= e!1956881 e!1956884)))

(declare-fun c!527016 () Bool)

(assert (=> b!3136283 (= c!527016 ((_ is EmptyLang!9641) lt!1060708))))

(declare-fun d!865392 () Bool)

(assert (=> d!865392 e!1956881))

(declare-fun c!527015 () Bool)

(assert (=> d!865392 (= c!527015 ((_ is EmptyExpr!9641) lt!1060708))))

(assert (=> d!865392 (= lt!1060812 e!1956883)))

(declare-fun c!527017 () Bool)

(assert (=> d!865392 (= c!527017 (isEmpty!19737 (_2!20262 lt!1060707)))))

(assert (=> d!865392 (validRegex!4374 lt!1060708)))

(assert (=> d!865392 (= (matchR!4523 lt!1060708 (_2!20262 lt!1060707)) lt!1060812)))

(declare-fun b!3136284 () Bool)

(assert (=> b!3136284 (= e!1956884 (not lt!1060812))))

(declare-fun b!3136285 () Bool)

(assert (=> b!3136285 (= e!1956879 (= (head!6929 (_2!20262 lt!1060707)) (c!526829 lt!1060708)))))

(declare-fun b!3136286 () Bool)

(declare-fun res!1281655 () Bool)

(assert (=> b!3136286 (=> res!1281655 e!1956882)))

(assert (=> b!3136286 (= res!1281655 e!1956879)))

(declare-fun res!1281657 () Bool)

(assert (=> b!3136286 (=> (not res!1281657) (not e!1956879))))

(assert (=> b!3136286 (= res!1281657 lt!1060812)))

(declare-fun b!3136287 () Bool)

(assert (=> b!3136287 (= e!1956878 e!1956880)))

(declare-fun res!1281661 () Bool)

(assert (=> b!3136287 (=> res!1281661 e!1956880)))

(assert (=> b!3136287 (= res!1281661 call!224815)))

(declare-fun b!3136288 () Bool)

(assert (=> b!3136288 (= e!1956883 (nullable!3275 lt!1060708))))

(assert (= (and d!865392 c!527017) b!3136288))

(assert (= (and d!865392 (not c!527017)) b!3136279))

(assert (= (and d!865392 c!527015) b!3136282))

(assert (= (and d!865392 (not c!527015)) b!3136283))

(assert (= (and b!3136283 c!527016) b!3136284))

(assert (= (and b!3136283 (not c!527016)) b!3136281))

(assert (= (and b!3136281 (not res!1281656)) b!3136286))

(assert (= (and b!3136286 res!1281657) b!3136280))

(assert (= (and b!3136280 res!1281659) b!3136278))

(assert (= (and b!3136278 res!1281662) b!3136285))

(assert (= (and b!3136286 (not res!1281655)) b!3136277))

(assert (= (and b!3136277 res!1281660) b!3136287))

(assert (= (and b!3136287 (not res!1281661)) b!3136275))

(assert (= (and b!3136275 (not res!1281658)) b!3136276))

(assert (= (or b!3136282 b!3136280 b!3136287) bm!224810))

(declare-fun m!3416737 () Bool)

(assert (=> b!3136285 m!3416737))

(assert (=> b!3136279 m!3416737))

(assert (=> b!3136279 m!3416737))

(declare-fun m!3416739 () Bool)

(assert (=> b!3136279 m!3416739))

(declare-fun m!3416741 () Bool)

(assert (=> b!3136279 m!3416741))

(assert (=> b!3136279 m!3416739))

(assert (=> b!3136279 m!3416741))

(declare-fun m!3416743 () Bool)

(assert (=> b!3136279 m!3416743))

(assert (=> b!3136275 m!3416741))

(assert (=> b!3136275 m!3416741))

(declare-fun m!3416745 () Bool)

(assert (=> b!3136275 m!3416745))

(declare-fun m!3416747 () Bool)

(assert (=> b!3136288 m!3416747))

(assert (=> b!3136276 m!3416737))

(declare-fun m!3416749 () Bool)

(assert (=> d!865392 m!3416749))

(declare-fun m!3416751 () Bool)

(assert (=> d!865392 m!3416751))

(assert (=> bm!224810 m!3416749))

(assert (=> b!3136278 m!3416741))

(assert (=> b!3136278 m!3416741))

(assert (=> b!3136278 m!3416745))

(assert (=> b!3135605 d!865392))

(declare-fun d!865394 () Bool)

(declare-fun lt!1060815 () Int)

(assert (=> d!865394 (>= lt!1060815 0)))

(declare-fun e!1956887 () Int)

(assert (=> d!865394 (= lt!1060815 e!1956887)))

(declare-fun c!527020 () Bool)

(assert (=> d!865394 (= c!527020 ((_ is Nil!35382) s!11993))))

(assert (=> d!865394 (= (size!26597 s!11993) lt!1060815)))

(declare-fun b!3136293 () Bool)

(assert (=> b!3136293 (= e!1956887 0)))

(declare-fun b!3136294 () Bool)

(assert (=> b!3136294 (= e!1956887 (+ 1 (size!26597 (t!234571 s!11993))))))

(assert (= (and d!865394 c!527020) b!3136293))

(assert (= (and d!865394 (not c!527020)) b!3136294))

(declare-fun m!3416753 () Bool)

(assert (=> b!3136294 m!3416753))

(assert (=> b!3135605 d!865394))

(declare-fun b!3136295 () Bool)

(declare-fun res!1281666 () Bool)

(declare-fun e!1956890 () Bool)

(assert (=> b!3136295 (=> res!1281666 e!1956890)))

(assert (=> b!3136295 (= res!1281666 (not (isEmpty!19737 (tail!5155 (_1!20262 lt!1060707)))))))

(declare-fun b!3136296 () Bool)

(assert (=> b!3136296 (= e!1956890 (not (= (head!6929 (_1!20262 lt!1060707)) (c!526829 (reg!9970 r!17423)))))))

(declare-fun b!3136297 () Bool)

(declare-fun e!1956892 () Bool)

(declare-fun e!1956888 () Bool)

(assert (=> b!3136297 (= e!1956892 e!1956888)))

(declare-fun res!1281668 () Bool)

(assert (=> b!3136297 (=> (not res!1281668) (not e!1956888))))

(declare-fun lt!1060816 () Bool)

(assert (=> b!3136297 (= res!1281668 (not lt!1060816))))

(declare-fun b!3136298 () Bool)

(declare-fun res!1281670 () Bool)

(declare-fun e!1956889 () Bool)

(assert (=> b!3136298 (=> (not res!1281670) (not e!1956889))))

(assert (=> b!3136298 (= res!1281670 (isEmpty!19737 (tail!5155 (_1!20262 lt!1060707))))))

(declare-fun bm!224811 () Bool)

(declare-fun call!224816 () Bool)

(assert (=> bm!224811 (= call!224816 (isEmpty!19737 (_1!20262 lt!1060707)))))

(declare-fun b!3136299 () Bool)

(declare-fun e!1956893 () Bool)

(assert (=> b!3136299 (= e!1956893 (matchR!4523 (derivativeStep!2870 (reg!9970 r!17423) (head!6929 (_1!20262 lt!1060707))) (tail!5155 (_1!20262 lt!1060707))))))

(declare-fun b!3136300 () Bool)

(declare-fun res!1281667 () Bool)

(assert (=> b!3136300 (=> (not res!1281667) (not e!1956889))))

(assert (=> b!3136300 (= res!1281667 (not call!224816))))

(declare-fun b!3136301 () Bool)

(declare-fun res!1281664 () Bool)

(assert (=> b!3136301 (=> res!1281664 e!1956892)))

(assert (=> b!3136301 (= res!1281664 (not ((_ is ElementMatch!9641) (reg!9970 r!17423))))))

(declare-fun e!1956894 () Bool)

(assert (=> b!3136301 (= e!1956894 e!1956892)))

(declare-fun b!3136302 () Bool)

(declare-fun e!1956891 () Bool)

(assert (=> b!3136302 (= e!1956891 (= lt!1060816 call!224816))))

(declare-fun b!3136303 () Bool)

(assert (=> b!3136303 (= e!1956891 e!1956894)))

(declare-fun c!527022 () Bool)

(assert (=> b!3136303 (= c!527022 ((_ is EmptyLang!9641) (reg!9970 r!17423)))))

(declare-fun d!865396 () Bool)

(assert (=> d!865396 e!1956891))

(declare-fun c!527021 () Bool)

(assert (=> d!865396 (= c!527021 ((_ is EmptyExpr!9641) (reg!9970 r!17423)))))

(assert (=> d!865396 (= lt!1060816 e!1956893)))

(declare-fun c!527023 () Bool)

(assert (=> d!865396 (= c!527023 (isEmpty!19737 (_1!20262 lt!1060707)))))

(assert (=> d!865396 (validRegex!4374 (reg!9970 r!17423))))

(assert (=> d!865396 (= (matchR!4523 (reg!9970 r!17423) (_1!20262 lt!1060707)) lt!1060816)))

(declare-fun b!3136304 () Bool)

(assert (=> b!3136304 (= e!1956894 (not lt!1060816))))

(declare-fun b!3136305 () Bool)

(assert (=> b!3136305 (= e!1956889 (= (head!6929 (_1!20262 lt!1060707)) (c!526829 (reg!9970 r!17423))))))

(declare-fun b!3136306 () Bool)

(declare-fun res!1281663 () Bool)

(assert (=> b!3136306 (=> res!1281663 e!1956892)))

(assert (=> b!3136306 (= res!1281663 e!1956889)))

(declare-fun res!1281665 () Bool)

(assert (=> b!3136306 (=> (not res!1281665) (not e!1956889))))

(assert (=> b!3136306 (= res!1281665 lt!1060816)))

(declare-fun b!3136307 () Bool)

(assert (=> b!3136307 (= e!1956888 e!1956890)))

(declare-fun res!1281669 () Bool)

(assert (=> b!3136307 (=> res!1281669 e!1956890)))

(assert (=> b!3136307 (= res!1281669 call!224816)))

(declare-fun b!3136308 () Bool)

(assert (=> b!3136308 (= e!1956893 (nullable!3275 (reg!9970 r!17423)))))

(assert (= (and d!865396 c!527023) b!3136308))

(assert (= (and d!865396 (not c!527023)) b!3136299))

(assert (= (and d!865396 c!527021) b!3136302))

(assert (= (and d!865396 (not c!527021)) b!3136303))

(assert (= (and b!3136303 c!527022) b!3136304))

(assert (= (and b!3136303 (not c!527022)) b!3136301))

(assert (= (and b!3136301 (not res!1281664)) b!3136306))

(assert (= (and b!3136306 res!1281665) b!3136300))

(assert (= (and b!3136300 res!1281667) b!3136298))

(assert (= (and b!3136298 res!1281670) b!3136305))

(assert (= (and b!3136306 (not res!1281663)) b!3136297))

(assert (= (and b!3136297 res!1281668) b!3136307))

(assert (= (and b!3136307 (not res!1281669)) b!3136295))

(assert (= (and b!3136295 (not res!1281666)) b!3136296))

(assert (= (or b!3136302 b!3136300 b!3136307) bm!224811))

(assert (=> b!3136305 m!3416613))

(assert (=> b!3136299 m!3416613))

(assert (=> b!3136299 m!3416613))

(declare-fun m!3416755 () Bool)

(assert (=> b!3136299 m!3416755))

(assert (=> b!3136299 m!3416617))

(assert (=> b!3136299 m!3416755))

(assert (=> b!3136299 m!3416617))

(declare-fun m!3416757 () Bool)

(assert (=> b!3136299 m!3416757))

(assert (=> b!3136295 m!3416617))

(assert (=> b!3136295 m!3416617))

(assert (=> b!3136295 m!3416621))

(assert (=> b!3136308 m!3416531))

(assert (=> b!3136296 m!3416613))

(assert (=> d!865396 m!3416625))

(assert (=> d!865396 m!3416541))

(assert (=> bm!224811 m!3416625))

(assert (=> b!3136298 m!3416617))

(assert (=> b!3136298 m!3416617))

(assert (=> b!3136298 m!3416621))

(assert (=> b!3135605 d!865396))

(declare-fun d!865398 () Bool)

(assert (=> d!865398 (= (matchR!4523 (reg!9970 r!17423) (_1!20262 lt!1060707)) (matchR!4523 (simplify!596 (reg!9970 r!17423)) (_1!20262 lt!1060707)))))

(declare-fun lt!1060819 () Unit!49735)

(declare-fun choose!18506 (Regex!9641 List!35506) Unit!49735)

(assert (=> d!865398 (= lt!1060819 (choose!18506 (reg!9970 r!17423) (_1!20262 lt!1060707)))))

(assert (=> d!865398 (validRegex!4374 (reg!9970 r!17423))))

(assert (=> d!865398 (= (lemmaSimplifySound!368 (reg!9970 r!17423) (_1!20262 lt!1060707)) lt!1060819)))

(declare-fun bs!538978 () Bool)

(assert (= bs!538978 d!865398))

(assert (=> bs!538978 m!3416541))

(declare-fun m!3416759 () Bool)

(assert (=> bs!538978 m!3416759))

(assert (=> bs!538978 m!3416383))

(assert (=> bs!538978 m!3416423))

(assert (=> bs!538978 m!3416423))

(declare-fun m!3416761 () Bool)

(assert (=> bs!538978 m!3416761))

(assert (=> b!3135605 d!865398))

(declare-fun b!3136309 () Bool)

(declare-fun res!1281674 () Bool)

(declare-fun e!1956897 () Bool)

(assert (=> b!3136309 (=> res!1281674 e!1956897)))

(assert (=> b!3136309 (= res!1281674 (not (isEmpty!19737 (tail!5155 (_2!20262 lt!1060707)))))))

(declare-fun b!3136310 () Bool)

(assert (=> b!3136310 (= e!1956897 (not (= (head!6929 (_2!20262 lt!1060707)) (c!526829 lt!1060709))))))

(declare-fun b!3136311 () Bool)

(declare-fun e!1956899 () Bool)

(declare-fun e!1956895 () Bool)

(assert (=> b!3136311 (= e!1956899 e!1956895)))

(declare-fun res!1281676 () Bool)

(assert (=> b!3136311 (=> (not res!1281676) (not e!1956895))))

(declare-fun lt!1060820 () Bool)

(assert (=> b!3136311 (= res!1281676 (not lt!1060820))))

(declare-fun b!3136312 () Bool)

(declare-fun res!1281678 () Bool)

(declare-fun e!1956896 () Bool)

(assert (=> b!3136312 (=> (not res!1281678) (not e!1956896))))

(assert (=> b!3136312 (= res!1281678 (isEmpty!19737 (tail!5155 (_2!20262 lt!1060707))))))

(declare-fun bm!224812 () Bool)

(declare-fun call!224817 () Bool)

(assert (=> bm!224812 (= call!224817 (isEmpty!19737 (_2!20262 lt!1060707)))))

(declare-fun b!3136313 () Bool)

(declare-fun e!1956900 () Bool)

(assert (=> b!3136313 (= e!1956900 (matchR!4523 (derivativeStep!2870 lt!1060709 (head!6929 (_2!20262 lt!1060707))) (tail!5155 (_2!20262 lt!1060707))))))

(declare-fun b!3136314 () Bool)

(declare-fun res!1281675 () Bool)

(assert (=> b!3136314 (=> (not res!1281675) (not e!1956896))))

(assert (=> b!3136314 (= res!1281675 (not call!224817))))

(declare-fun b!3136315 () Bool)

(declare-fun res!1281672 () Bool)

(assert (=> b!3136315 (=> res!1281672 e!1956899)))

(assert (=> b!3136315 (= res!1281672 (not ((_ is ElementMatch!9641) lt!1060709)))))

(declare-fun e!1956901 () Bool)

(assert (=> b!3136315 (= e!1956901 e!1956899)))

(declare-fun b!3136316 () Bool)

(declare-fun e!1956898 () Bool)

(assert (=> b!3136316 (= e!1956898 (= lt!1060820 call!224817))))

(declare-fun b!3136317 () Bool)

(assert (=> b!3136317 (= e!1956898 e!1956901)))

(declare-fun c!527025 () Bool)

(assert (=> b!3136317 (= c!527025 ((_ is EmptyLang!9641) lt!1060709))))

(declare-fun d!865400 () Bool)

(assert (=> d!865400 e!1956898))

(declare-fun c!527024 () Bool)

(assert (=> d!865400 (= c!527024 ((_ is EmptyExpr!9641) lt!1060709))))

(assert (=> d!865400 (= lt!1060820 e!1956900)))

(declare-fun c!527026 () Bool)

(assert (=> d!865400 (= c!527026 (isEmpty!19737 (_2!20262 lt!1060707)))))

(assert (=> d!865400 (validRegex!4374 lt!1060709)))

(assert (=> d!865400 (= (matchR!4523 lt!1060709 (_2!20262 lt!1060707)) lt!1060820)))

(declare-fun b!3136318 () Bool)

(assert (=> b!3136318 (= e!1956901 (not lt!1060820))))

(declare-fun b!3136319 () Bool)

(assert (=> b!3136319 (= e!1956896 (= (head!6929 (_2!20262 lt!1060707)) (c!526829 lt!1060709)))))

(declare-fun b!3136320 () Bool)

(declare-fun res!1281671 () Bool)

(assert (=> b!3136320 (=> res!1281671 e!1956899)))

(assert (=> b!3136320 (= res!1281671 e!1956896)))

(declare-fun res!1281673 () Bool)

(assert (=> b!3136320 (=> (not res!1281673) (not e!1956896))))

(assert (=> b!3136320 (= res!1281673 lt!1060820)))

(declare-fun b!3136321 () Bool)

(assert (=> b!3136321 (= e!1956895 e!1956897)))

(declare-fun res!1281677 () Bool)

(assert (=> b!3136321 (=> res!1281677 e!1956897)))

(assert (=> b!3136321 (= res!1281677 call!224817)))

(declare-fun b!3136322 () Bool)

(assert (=> b!3136322 (= e!1956900 (nullable!3275 lt!1060709))))

(assert (= (and d!865400 c!527026) b!3136322))

(assert (= (and d!865400 (not c!527026)) b!3136313))

(assert (= (and d!865400 c!527024) b!3136316))

(assert (= (and d!865400 (not c!527024)) b!3136317))

(assert (= (and b!3136317 c!527025) b!3136318))

(assert (= (and b!3136317 (not c!527025)) b!3136315))

(assert (= (and b!3136315 (not res!1281672)) b!3136320))

(assert (= (and b!3136320 res!1281673) b!3136314))

(assert (= (and b!3136314 res!1281675) b!3136312))

(assert (= (and b!3136312 res!1281678) b!3136319))

(assert (= (and b!3136320 (not res!1281671)) b!3136311))

(assert (= (and b!3136311 res!1281676) b!3136321))

(assert (= (and b!3136321 (not res!1281677)) b!3136309))

(assert (= (and b!3136309 (not res!1281674)) b!3136310))

(assert (= (or b!3136316 b!3136314 b!3136321) bm!224812))

(assert (=> b!3136319 m!3416737))

(assert (=> b!3136313 m!3416737))

(assert (=> b!3136313 m!3416737))

(declare-fun m!3416763 () Bool)

(assert (=> b!3136313 m!3416763))

(assert (=> b!3136313 m!3416741))

(assert (=> b!3136313 m!3416763))

(assert (=> b!3136313 m!3416741))

(declare-fun m!3416765 () Bool)

(assert (=> b!3136313 m!3416765))

(assert (=> b!3136309 m!3416741))

(assert (=> b!3136309 m!3416741))

(assert (=> b!3136309 m!3416745))

(declare-fun m!3416767 () Bool)

(assert (=> b!3136322 m!3416767))

(assert (=> b!3136310 m!3416737))

(assert (=> d!865400 m!3416749))

(assert (=> d!865400 m!3416419))

(assert (=> bm!224812 m!3416749))

(assert (=> b!3136312 m!3416741))

(assert (=> b!3136312 m!3416741))

(assert (=> b!3136312 m!3416745))

(assert (=> b!3135605 d!865400))

(declare-fun b!3136323 () Bool)

(declare-fun c!527029 () Bool)

(assert (=> b!3136323 (= c!527029 ((_ is Union!9641) lt!1060709))))

(declare-fun e!1956903 () Regex!9641)

(declare-fun e!1956909 () Regex!9641)

(assert (=> b!3136323 (= e!1956903 e!1956909)))

(declare-fun b!3136324 () Bool)

(declare-fun e!1956906 () Regex!9641)

(declare-fun e!1956914 () Regex!9641)

(assert (=> b!3136324 (= e!1956906 e!1956914)))

(declare-fun c!527036 () Bool)

(assert (=> b!3136324 (= c!527036 ((_ is ElementMatch!9641) lt!1060709))))

(declare-fun b!3136325 () Bool)

(declare-fun e!1956902 () Bool)

(declare-fun call!224824 () Bool)

(assert (=> b!3136325 (= e!1956902 call!224824)))

(declare-fun b!3136326 () Bool)

(declare-fun e!1956908 () Regex!9641)

(assert (=> b!3136326 (= e!1956908 e!1956903)))

(declare-fun c!527034 () Bool)

(assert (=> b!3136326 (= c!527034 ((_ is Star!9641) lt!1060709))))

(declare-fun b!3136327 () Bool)

(declare-fun e!1956907 () Regex!9641)

(declare-fun lt!1060824 () Regex!9641)

(declare-fun lt!1060826 () Regex!9641)

(assert (=> b!3136327 (= e!1956907 (Concat!14962 lt!1060824 lt!1060826))))

(declare-fun b!3136328 () Bool)

(declare-fun c!527032 () Bool)

(declare-fun call!224820 () Bool)

(assert (=> b!3136328 (= c!527032 call!224820)))

(declare-fun e!1956904 () Regex!9641)

(declare-fun e!1956905 () Regex!9641)

(assert (=> b!3136328 (= e!1956904 e!1956905)))

(declare-fun b!3136329 () Bool)

(declare-fun e!1956913 () Regex!9641)

(assert (=> b!3136329 (= e!1956913 lt!1060826)))

(declare-fun b!3136330 () Bool)

(declare-fun c!527027 () Bool)

(assert (=> b!3136330 (= c!527027 call!224824)))

(declare-fun e!1956910 () Regex!9641)

(assert (=> b!3136330 (= e!1956910 e!1956913)))

(declare-fun bm!224813 () Bool)

(declare-fun lt!1060821 () Regex!9641)

(assert (=> bm!224813 (= call!224820 (isEmptyLang!692 (ite c!527029 lt!1060821 lt!1060824)))))

(declare-fun b!3136331 () Bool)

(declare-fun e!1956915 () Regex!9641)

(declare-fun lt!1060825 () Regex!9641)

(assert (=> b!3136331 (= e!1956915 (Star!9641 lt!1060825))))

(declare-fun b!3136332 () Bool)

(declare-fun e!1956912 () Bool)

(declare-fun call!224823 () Bool)

(assert (=> b!3136332 (= e!1956912 call!224823)))

(declare-fun b!3136333 () Bool)

(assert (=> b!3136333 (= e!1956914 lt!1060709)))

(declare-fun lt!1060822 () Regex!9641)

(declare-fun bm!224814 () Bool)

(declare-fun call!224819 () Bool)

(assert (=> bm!224814 (= call!224819 (isEmptyLang!692 (ite c!527034 lt!1060825 (ite c!527029 lt!1060822 lt!1060826))))))

(declare-fun b!3136334 () Bool)

(declare-fun c!527030 () Bool)

(assert (=> b!3136334 (= c!527030 ((_ is EmptyExpr!9641) lt!1060709))))

(assert (=> b!3136334 (= e!1956914 e!1956908)))

(declare-fun bm!224815 () Bool)

(declare-fun call!224821 () Regex!9641)

(assert (=> bm!224815 (= call!224821 (simplify!596 (ite c!527034 (reg!9970 lt!1060709) (ite c!527029 (regTwo!19795 lt!1060709) (regOne!19794 lt!1060709)))))))

(declare-fun b!3136335 () Bool)

(assert (=> b!3136335 (= e!1956908 EmptyExpr!9641)))

(declare-fun b!3136336 () Bool)

(assert (=> b!3136336 (= e!1956909 e!1956910)))

(declare-fun call!224822 () Regex!9641)

(assert (=> b!3136336 (= lt!1060824 call!224822)))

(declare-fun call!224818 () Regex!9641)

(assert (=> b!3136336 (= lt!1060826 call!224818)))

(declare-fun res!1281681 () Bool)

(assert (=> b!3136336 (= res!1281681 call!224820)))

(assert (=> b!3136336 (=> res!1281681 e!1956912)))

(declare-fun c!527031 () Bool)

(assert (=> b!3136336 (= c!527031 e!1956912)))

(declare-fun b!3136337 () Bool)

(declare-fun e!1956911 () Bool)

(declare-fun lt!1060823 () Regex!9641)

(assert (=> b!3136337 (= e!1956911 (= (nullable!3275 lt!1060823) (nullable!3275 lt!1060709)))))

(declare-fun bm!224816 () Bool)

(assert (=> bm!224816 (= call!224818 (simplify!596 (ite c!527029 (regOne!19795 lt!1060709) (regTwo!19794 lt!1060709))))))

(declare-fun bm!224817 () Bool)

(assert (=> bm!224817 (= call!224824 (isEmptyExpr!685 (ite c!527034 lt!1060825 lt!1060824)))))

(declare-fun b!3136338 () Bool)

(assert (=> b!3136338 (= e!1956909 e!1956904)))

(assert (=> b!3136338 (= lt!1060822 call!224818)))

(assert (=> b!3136338 (= lt!1060821 call!224822)))

(declare-fun c!527035 () Bool)

(assert (=> b!3136338 (= c!527035 call!224823)))

(declare-fun bm!224818 () Bool)

(assert (=> bm!224818 (= call!224822 call!224821)))

(declare-fun b!3136339 () Bool)

(declare-fun c!527028 () Bool)

(assert (=> b!3136339 (= c!527028 e!1956902)))

(declare-fun res!1281679 () Bool)

(assert (=> b!3136339 (=> res!1281679 e!1956902)))

(assert (=> b!3136339 (= res!1281679 call!224819)))

(assert (=> b!3136339 (= lt!1060825 call!224821)))

(assert (=> b!3136339 (= e!1956903 e!1956915)))

(declare-fun b!3136340 () Bool)

(assert (=> b!3136340 (= e!1956906 EmptyLang!9641)))

(declare-fun b!3136341 () Bool)

(assert (=> b!3136341 (= e!1956905 lt!1060822)))

(declare-fun b!3136342 () Bool)

(assert (=> b!3136342 (= e!1956910 EmptyLang!9641)))

(declare-fun b!3136343 () Bool)

(assert (=> b!3136343 (= e!1956913 e!1956907)))

(declare-fun c!527033 () Bool)

(assert (=> b!3136343 (= c!527033 (isEmptyExpr!685 lt!1060826))))

(declare-fun b!3136344 () Bool)

(assert (=> b!3136344 (= e!1956904 lt!1060821)))

(declare-fun b!3136345 () Bool)

(assert (=> b!3136345 (= e!1956905 (Union!9641 lt!1060822 lt!1060821))))

(declare-fun bm!224819 () Bool)

(assert (=> bm!224819 (= call!224823 call!224819)))

(declare-fun b!3136347 () Bool)

(assert (=> b!3136347 (= e!1956915 EmptyExpr!9641)))

(declare-fun d!865402 () Bool)

(assert (=> d!865402 e!1956911))

(declare-fun res!1281680 () Bool)

(assert (=> d!865402 (=> (not res!1281680) (not e!1956911))))

(assert (=> d!865402 (= res!1281680 (validRegex!4374 lt!1060823))))

(assert (=> d!865402 (= lt!1060823 e!1956906)))

(declare-fun c!527037 () Bool)

(assert (=> d!865402 (= c!527037 ((_ is EmptyLang!9641) lt!1060709))))

(assert (=> d!865402 (validRegex!4374 lt!1060709)))

(assert (=> d!865402 (= (simplify!596 lt!1060709) lt!1060823)))

(declare-fun b!3136346 () Bool)

(assert (=> b!3136346 (= e!1956907 lt!1060824)))

(assert (= (and d!865402 c!527037) b!3136340))

(assert (= (and d!865402 (not c!527037)) b!3136324))

(assert (= (and b!3136324 c!527036) b!3136333))

(assert (= (and b!3136324 (not c!527036)) b!3136334))

(assert (= (and b!3136334 c!527030) b!3136335))

(assert (= (and b!3136334 (not c!527030)) b!3136326))

(assert (= (and b!3136326 c!527034) b!3136339))

(assert (= (and b!3136326 (not c!527034)) b!3136323))

(assert (= (and b!3136339 (not res!1281679)) b!3136325))

(assert (= (and b!3136339 c!527028) b!3136347))

(assert (= (and b!3136339 (not c!527028)) b!3136331))

(assert (= (and b!3136323 c!527029) b!3136338))

(assert (= (and b!3136323 (not c!527029)) b!3136336))

(assert (= (and b!3136338 c!527035) b!3136344))

(assert (= (and b!3136338 (not c!527035)) b!3136328))

(assert (= (and b!3136328 c!527032) b!3136341))

(assert (= (and b!3136328 (not c!527032)) b!3136345))

(assert (= (and b!3136336 (not res!1281681)) b!3136332))

(assert (= (and b!3136336 c!527031) b!3136342))

(assert (= (and b!3136336 (not c!527031)) b!3136330))

(assert (= (and b!3136330 c!527027) b!3136329))

(assert (= (and b!3136330 (not c!527027)) b!3136343))

(assert (= (and b!3136343 c!527033) b!3136346))

(assert (= (and b!3136343 (not c!527033)) b!3136327))

(assert (= (or b!3136338 b!3136336) bm!224816))

(assert (= (or b!3136338 b!3136336) bm!224818))

(assert (= (or b!3136338 b!3136332) bm!224819))

(assert (= (or b!3136328 b!3136336) bm!224813))

(assert (= (or b!3136325 b!3136330) bm!224817))

(assert (= (or b!3136339 bm!224818) bm!224815))

(assert (= (or b!3136339 bm!224819) bm!224814))

(assert (= (and d!865402 res!1281680) b!3136337))

(declare-fun m!3416769 () Bool)

(assert (=> bm!224815 m!3416769))

(declare-fun m!3416771 () Bool)

(assert (=> bm!224817 m!3416771))

(declare-fun m!3416773 () Bool)

(assert (=> bm!224813 m!3416773))

(declare-fun m!3416775 () Bool)

(assert (=> b!3136337 m!3416775))

(assert (=> b!3136337 m!3416767))

(declare-fun m!3416777 () Bool)

(assert (=> bm!224814 m!3416777))

(declare-fun m!3416779 () Bool)

(assert (=> bm!224816 m!3416779))

(declare-fun m!3416781 () Bool)

(assert (=> b!3136343 m!3416781))

(declare-fun m!3416783 () Bool)

(assert (=> d!865402 m!3416783))

(assert (=> d!865402 m!3416419))

(assert (=> b!3135605 d!865402))

(declare-fun d!865404 () Bool)

(assert (=> d!865404 (= (matchR!4523 lt!1060709 (_2!20262 lt!1060707)) (matchR!4523 (simplify!596 lt!1060709) (_2!20262 lt!1060707)))))

(declare-fun lt!1060827 () Unit!49735)

(assert (=> d!865404 (= lt!1060827 (choose!18506 lt!1060709 (_2!20262 lt!1060707)))))

(assert (=> d!865404 (validRegex!4374 lt!1060709)))

(assert (=> d!865404 (= (lemmaSimplifySound!368 lt!1060709 (_2!20262 lt!1060707)) lt!1060827)))

(declare-fun bs!538979 () Bool)

(assert (= bs!538979 d!865404))

(assert (=> bs!538979 m!3416419))

(declare-fun m!3416785 () Bool)

(assert (=> bs!538979 m!3416785))

(assert (=> bs!538979 m!3416373))

(assert (=> bs!538979 m!3416379))

(assert (=> bs!538979 m!3416379))

(declare-fun m!3416787 () Bool)

(assert (=> bs!538979 m!3416787))

(assert (=> b!3135605 d!865404))

(declare-fun d!865406 () Bool)

(declare-fun lt!1060828 () Int)

(assert (=> d!865406 (>= lt!1060828 0)))

(declare-fun e!1956916 () Int)

(assert (=> d!865406 (= lt!1060828 e!1956916)))

(declare-fun c!527038 () Bool)

(assert (=> d!865406 (= c!527038 ((_ is Nil!35382) (_2!20262 lt!1060707)))))

(assert (=> d!865406 (= (size!26597 (_2!20262 lt!1060707)) lt!1060828)))

(declare-fun b!3136348 () Bool)

(assert (=> b!3136348 (= e!1956916 0)))

(declare-fun b!3136349 () Bool)

(assert (=> b!3136349 (= e!1956916 (+ 1 (size!26597 (t!234571 (_2!20262 lt!1060707)))))))

(assert (= (and d!865406 c!527038) b!3136348))

(assert (= (and d!865406 (not c!527038)) b!3136349))

(declare-fun m!3416789 () Bool)

(assert (=> b!3136349 m!3416789))

(assert (=> b!3135605 d!865406))

(declare-fun b!3136368 () Bool)

(declare-fun e!1956931 () Bool)

(declare-fun e!1956936 () Bool)

(assert (=> b!3136368 (= e!1956931 e!1956936)))

(declare-fun c!527044 () Bool)

(assert (=> b!3136368 (= c!527044 ((_ is Star!9641) lt!1060709))))

(declare-fun b!3136369 () Bool)

(declare-fun res!1281692 () Bool)

(declare-fun e!1956932 () Bool)

(assert (=> b!3136369 (=> res!1281692 e!1956932)))

(assert (=> b!3136369 (= res!1281692 (not ((_ is Concat!14962) lt!1060709)))))

(declare-fun e!1956933 () Bool)

(assert (=> b!3136369 (= e!1956933 e!1956932)))

(declare-fun bm!224826 () Bool)

(declare-fun call!224833 () Bool)

(declare-fun c!527043 () Bool)

(assert (=> bm!224826 (= call!224833 (validRegex!4374 (ite c!527043 (regTwo!19795 lt!1060709) (regOne!19794 lt!1060709))))))

(declare-fun d!865408 () Bool)

(declare-fun res!1281694 () Bool)

(assert (=> d!865408 (=> res!1281694 e!1956931)))

(assert (=> d!865408 (= res!1281694 ((_ is ElementMatch!9641) lt!1060709))))

(assert (=> d!865408 (= (validRegex!4374 lt!1060709) e!1956931)))

(declare-fun b!3136370 () Bool)

(declare-fun e!1956937 () Bool)

(declare-fun call!224832 () Bool)

(assert (=> b!3136370 (= e!1956937 call!224832)))

(declare-fun b!3136371 () Bool)

(assert (=> b!3136371 (= e!1956936 e!1956937)))

(declare-fun res!1281695 () Bool)

(assert (=> b!3136371 (= res!1281695 (not (nullable!3275 (reg!9970 lt!1060709))))))

(assert (=> b!3136371 (=> (not res!1281695) (not e!1956937))))

(declare-fun bm!224827 () Bool)

(assert (=> bm!224827 (= call!224832 (validRegex!4374 (ite c!527044 (reg!9970 lt!1060709) (ite c!527043 (regOne!19795 lt!1060709) (regTwo!19794 lt!1060709)))))))

(declare-fun b!3136372 () Bool)

(assert (=> b!3136372 (= e!1956936 e!1956933)))

(assert (=> b!3136372 (= c!527043 ((_ is Union!9641) lt!1060709))))

(declare-fun b!3136373 () Bool)

(declare-fun e!1956935 () Bool)

(declare-fun call!224831 () Bool)

(assert (=> b!3136373 (= e!1956935 call!224831)))

(declare-fun b!3136374 () Bool)

(declare-fun res!1281693 () Bool)

(declare-fun e!1956934 () Bool)

(assert (=> b!3136374 (=> (not res!1281693) (not e!1956934))))

(assert (=> b!3136374 (= res!1281693 call!224831)))

(assert (=> b!3136374 (= e!1956933 e!1956934)))

(declare-fun b!3136375 () Bool)

(assert (=> b!3136375 (= e!1956934 call!224833)))

(declare-fun bm!224828 () Bool)

(assert (=> bm!224828 (= call!224831 call!224832)))

(declare-fun b!3136376 () Bool)

(assert (=> b!3136376 (= e!1956932 e!1956935)))

(declare-fun res!1281696 () Bool)

(assert (=> b!3136376 (=> (not res!1281696) (not e!1956935))))

(assert (=> b!3136376 (= res!1281696 call!224833)))

(assert (= (and d!865408 (not res!1281694)) b!3136368))

(assert (= (and b!3136368 c!527044) b!3136371))

(assert (= (and b!3136368 (not c!527044)) b!3136372))

(assert (= (and b!3136371 res!1281695) b!3136370))

(assert (= (and b!3136372 c!527043) b!3136374))

(assert (= (and b!3136372 (not c!527043)) b!3136369))

(assert (= (and b!3136374 res!1281693) b!3136375))

(assert (= (and b!3136369 (not res!1281692)) b!3136376))

(assert (= (and b!3136376 res!1281696) b!3136373))

(assert (= (or b!3136374 b!3136373) bm!224828))

(assert (= (or b!3136375 b!3136376) bm!224826))

(assert (= (or b!3136370 bm!224828) bm!224827))

(declare-fun m!3416791 () Bool)

(assert (=> bm!224826 m!3416791))

(declare-fun m!3416793 () Bool)

(assert (=> b!3136371 m!3416793))

(declare-fun m!3416795 () Bool)

(assert (=> bm!224827 m!3416795))

(assert (=> b!3135606 d!865408))

(declare-fun b!3136377 () Bool)

(declare-fun res!1281700 () Bool)

(declare-fun e!1956940 () Bool)

(assert (=> b!3136377 (=> res!1281700 e!1956940)))

(assert (=> b!3136377 (= res!1281700 (not (isEmpty!19737 (tail!5155 (++!8515 (_1!20262 lt!1060707) (_2!20262 lt!1060707))))))))

(declare-fun b!3136378 () Bool)

(assert (=> b!3136378 (= e!1956940 (not (= (head!6929 (++!8515 (_1!20262 lt!1060707) (_2!20262 lt!1060707))) (c!526829 lt!1060709))))))

(declare-fun b!3136379 () Bool)

(declare-fun e!1956942 () Bool)

(declare-fun e!1956938 () Bool)

(assert (=> b!3136379 (= e!1956942 e!1956938)))

(declare-fun res!1281702 () Bool)

(assert (=> b!3136379 (=> (not res!1281702) (not e!1956938))))

(declare-fun lt!1060829 () Bool)

(assert (=> b!3136379 (= res!1281702 (not lt!1060829))))

(declare-fun b!3136380 () Bool)

(declare-fun res!1281704 () Bool)

(declare-fun e!1956939 () Bool)

(assert (=> b!3136380 (=> (not res!1281704) (not e!1956939))))

(assert (=> b!3136380 (= res!1281704 (isEmpty!19737 (tail!5155 (++!8515 (_1!20262 lt!1060707) (_2!20262 lt!1060707)))))))

(declare-fun bm!224829 () Bool)

(declare-fun call!224834 () Bool)

(assert (=> bm!224829 (= call!224834 (isEmpty!19737 (++!8515 (_1!20262 lt!1060707) (_2!20262 lt!1060707))))))

(declare-fun b!3136381 () Bool)

(declare-fun e!1956943 () Bool)

(assert (=> b!3136381 (= e!1956943 (matchR!4523 (derivativeStep!2870 lt!1060709 (head!6929 (++!8515 (_1!20262 lt!1060707) (_2!20262 lt!1060707)))) (tail!5155 (++!8515 (_1!20262 lt!1060707) (_2!20262 lt!1060707)))))))

(declare-fun b!3136382 () Bool)

(declare-fun res!1281701 () Bool)

(assert (=> b!3136382 (=> (not res!1281701) (not e!1956939))))

(assert (=> b!3136382 (= res!1281701 (not call!224834))))

(declare-fun b!3136383 () Bool)

(declare-fun res!1281698 () Bool)

(assert (=> b!3136383 (=> res!1281698 e!1956942)))

(assert (=> b!3136383 (= res!1281698 (not ((_ is ElementMatch!9641) lt!1060709)))))

(declare-fun e!1956944 () Bool)

(assert (=> b!3136383 (= e!1956944 e!1956942)))

(declare-fun b!3136384 () Bool)

(declare-fun e!1956941 () Bool)

(assert (=> b!3136384 (= e!1956941 (= lt!1060829 call!224834))))

(declare-fun b!3136385 () Bool)

(assert (=> b!3136385 (= e!1956941 e!1956944)))

(declare-fun c!527046 () Bool)

(assert (=> b!3136385 (= c!527046 ((_ is EmptyLang!9641) lt!1060709))))

(declare-fun d!865410 () Bool)

(assert (=> d!865410 e!1956941))

(declare-fun c!527045 () Bool)

(assert (=> d!865410 (= c!527045 ((_ is EmptyExpr!9641) lt!1060709))))

(assert (=> d!865410 (= lt!1060829 e!1956943)))

(declare-fun c!527047 () Bool)

(assert (=> d!865410 (= c!527047 (isEmpty!19737 (++!8515 (_1!20262 lt!1060707) (_2!20262 lt!1060707))))))

(assert (=> d!865410 (validRegex!4374 lt!1060709)))

(assert (=> d!865410 (= (matchR!4523 lt!1060709 (++!8515 (_1!20262 lt!1060707) (_2!20262 lt!1060707))) lt!1060829)))

(declare-fun b!3136386 () Bool)

(assert (=> b!3136386 (= e!1956944 (not lt!1060829))))

(declare-fun b!3136387 () Bool)

(assert (=> b!3136387 (= e!1956939 (= (head!6929 (++!8515 (_1!20262 lt!1060707) (_2!20262 lt!1060707))) (c!526829 lt!1060709)))))

(declare-fun b!3136388 () Bool)

(declare-fun res!1281697 () Bool)

(assert (=> b!3136388 (=> res!1281697 e!1956942)))

(assert (=> b!3136388 (= res!1281697 e!1956939)))

(declare-fun res!1281699 () Bool)

(assert (=> b!3136388 (=> (not res!1281699) (not e!1956939))))

(assert (=> b!3136388 (= res!1281699 lt!1060829)))

(declare-fun b!3136389 () Bool)

(assert (=> b!3136389 (= e!1956938 e!1956940)))

(declare-fun res!1281703 () Bool)

(assert (=> b!3136389 (=> res!1281703 e!1956940)))

(assert (=> b!3136389 (= res!1281703 call!224834)))

(declare-fun b!3136390 () Bool)

(assert (=> b!3136390 (= e!1956943 (nullable!3275 lt!1060709))))

(assert (= (and d!865410 c!527047) b!3136390))

(assert (= (and d!865410 (not c!527047)) b!3136381))

(assert (= (and d!865410 c!527045) b!3136384))

(assert (= (and d!865410 (not c!527045)) b!3136385))

(assert (= (and b!3136385 c!527046) b!3136386))

(assert (= (and b!3136385 (not c!527046)) b!3136383))

(assert (= (and b!3136383 (not res!1281698)) b!3136388))

(assert (= (and b!3136388 res!1281699) b!3136382))

(assert (= (and b!3136382 res!1281701) b!3136380))

(assert (= (and b!3136380 res!1281704) b!3136387))

(assert (= (and b!3136388 (not res!1281697)) b!3136379))

(assert (= (and b!3136379 res!1281702) b!3136389))

(assert (= (and b!3136389 (not res!1281703)) b!3136377))

(assert (= (and b!3136377 (not res!1281700)) b!3136378))

(assert (= (or b!3136384 b!3136382 b!3136389) bm!224829))

(assert (=> b!3136387 m!3416391))

(declare-fun m!3416797 () Bool)

(assert (=> b!3136387 m!3416797))

(assert (=> b!3136381 m!3416391))

(assert (=> b!3136381 m!3416797))

(assert (=> b!3136381 m!3416797))

(declare-fun m!3416799 () Bool)

(assert (=> b!3136381 m!3416799))

(assert (=> b!3136381 m!3416391))

(declare-fun m!3416801 () Bool)

(assert (=> b!3136381 m!3416801))

(assert (=> b!3136381 m!3416799))

(assert (=> b!3136381 m!3416801))

(declare-fun m!3416803 () Bool)

(assert (=> b!3136381 m!3416803))

(assert (=> b!3136377 m!3416391))

(assert (=> b!3136377 m!3416801))

(assert (=> b!3136377 m!3416801))

(declare-fun m!3416805 () Bool)

(assert (=> b!3136377 m!3416805))

(assert (=> b!3136390 m!3416767))

(assert (=> b!3136378 m!3416391))

(assert (=> b!3136378 m!3416797))

(assert (=> d!865410 m!3416391))

(declare-fun m!3416807 () Bool)

(assert (=> d!865410 m!3416807))

(assert (=> d!865410 m!3416419))

(assert (=> bm!224829 m!3416391))

(assert (=> bm!224829 m!3416807))

(assert (=> b!3136380 m!3416391))

(assert (=> b!3136380 m!3416801))

(assert (=> b!3136380 m!3416801))

(assert (=> b!3136380 m!3416805))

(assert (=> b!3135611 d!865410))

(declare-fun d!865412 () Bool)

(assert (=> d!865412 (matchR!4523 (Star!9641 (reg!9970 r!17423)) (++!8515 (_1!20262 lt!1060707) (_2!20262 lt!1060707)))))

(declare-fun lt!1060832 () Unit!49735)

(declare-fun choose!18508 (Regex!9641 List!35506 List!35506) Unit!49735)

(assert (=> d!865412 (= lt!1060832 (choose!18508 (reg!9970 r!17423) (_1!20262 lt!1060707) (_2!20262 lt!1060707)))))

(assert (=> d!865412 (validRegex!4374 (Star!9641 (reg!9970 r!17423)))))

(assert (=> d!865412 (= (lemmaStarApp!28 (reg!9970 r!17423) (_1!20262 lt!1060707) (_2!20262 lt!1060707)) lt!1060832)))

(declare-fun bs!538980 () Bool)

(assert (= bs!538980 d!865412))

(assert (=> bs!538980 m!3416391))

(assert (=> bs!538980 m!3416391))

(declare-fun m!3416809 () Bool)

(assert (=> bs!538980 m!3416809))

(declare-fun m!3416811 () Bool)

(assert (=> bs!538980 m!3416811))

(declare-fun m!3416813 () Bool)

(assert (=> bs!538980 m!3416813))

(assert (=> b!3135611 d!865412))

(declare-fun b!3136402 () Bool)

(declare-fun e!1956950 () Bool)

(declare-fun lt!1060835 () List!35506)

(assert (=> b!3136402 (= e!1956950 (or (not (= (_2!20262 lt!1060707) Nil!35382)) (= lt!1060835 (_1!20262 lt!1060707))))))

(declare-fun b!3136399 () Bool)

(declare-fun e!1956949 () List!35506)

(assert (=> b!3136399 (= e!1956949 (_2!20262 lt!1060707))))

(declare-fun d!865414 () Bool)

(assert (=> d!865414 e!1956950))

(declare-fun res!1281710 () Bool)

(assert (=> d!865414 (=> (not res!1281710) (not e!1956950))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4828 (List!35506) (InoxSet C!19468))

(assert (=> d!865414 (= res!1281710 (= (content!4828 lt!1060835) ((_ map or) (content!4828 (_1!20262 lt!1060707)) (content!4828 (_2!20262 lt!1060707)))))))

(assert (=> d!865414 (= lt!1060835 e!1956949)))

(declare-fun c!527050 () Bool)

(assert (=> d!865414 (= c!527050 ((_ is Nil!35382) (_1!20262 lt!1060707)))))

(assert (=> d!865414 (= (++!8515 (_1!20262 lt!1060707) (_2!20262 lt!1060707)) lt!1060835)))

(declare-fun b!3136401 () Bool)

(declare-fun res!1281709 () Bool)

(assert (=> b!3136401 (=> (not res!1281709) (not e!1956950))))

(assert (=> b!3136401 (= res!1281709 (= (size!26597 lt!1060835) (+ (size!26597 (_1!20262 lt!1060707)) (size!26597 (_2!20262 lt!1060707)))))))

(declare-fun b!3136400 () Bool)

(assert (=> b!3136400 (= e!1956949 (Cons!35382 (h!40802 (_1!20262 lt!1060707)) (++!8515 (t!234571 (_1!20262 lt!1060707)) (_2!20262 lt!1060707))))))

(assert (= (and d!865414 c!527050) b!3136399))

(assert (= (and d!865414 (not c!527050)) b!3136400))

(assert (= (and d!865414 res!1281710) b!3136401))

(assert (= (and b!3136401 res!1281709) b!3136402))

(declare-fun m!3416815 () Bool)

(assert (=> d!865414 m!3416815))

(declare-fun m!3416817 () Bool)

(assert (=> d!865414 m!3416817))

(declare-fun m!3416819 () Bool)

(assert (=> d!865414 m!3416819))

(declare-fun m!3416821 () Bool)

(assert (=> b!3136401 m!3416821))

(declare-fun m!3416823 () Bool)

(assert (=> b!3136401 m!3416823))

(assert (=> b!3136401 m!3416381))

(declare-fun m!3416825 () Bool)

(assert (=> b!3136400 m!3416825))

(assert (=> b!3135611 d!865414))

(declare-fun b!3136403 () Bool)

(declare-fun c!527053 () Bool)

(assert (=> b!3136403 (= c!527053 ((_ is Union!9641) r!17423))))

(declare-fun e!1956952 () Regex!9641)

(declare-fun e!1956958 () Regex!9641)

(assert (=> b!3136403 (= e!1956952 e!1956958)))

(declare-fun b!3136404 () Bool)

(declare-fun e!1956955 () Regex!9641)

(declare-fun e!1956963 () Regex!9641)

(assert (=> b!3136404 (= e!1956955 e!1956963)))

(declare-fun c!527060 () Bool)

(assert (=> b!3136404 (= c!527060 ((_ is ElementMatch!9641) r!17423))))

(declare-fun b!3136405 () Bool)

(declare-fun e!1956951 () Bool)

(declare-fun call!224841 () Bool)

(assert (=> b!3136405 (= e!1956951 call!224841)))

(declare-fun b!3136406 () Bool)

(declare-fun e!1956957 () Regex!9641)

(assert (=> b!3136406 (= e!1956957 e!1956952)))

(declare-fun c!527058 () Bool)

(assert (=> b!3136406 (= c!527058 ((_ is Star!9641) r!17423))))

(declare-fun b!3136407 () Bool)

(declare-fun e!1956956 () Regex!9641)

(declare-fun lt!1060839 () Regex!9641)

(declare-fun lt!1060841 () Regex!9641)

(assert (=> b!3136407 (= e!1956956 (Concat!14962 lt!1060839 lt!1060841))))

(declare-fun b!3136408 () Bool)

(declare-fun c!527056 () Bool)

(declare-fun call!224837 () Bool)

(assert (=> b!3136408 (= c!527056 call!224837)))

(declare-fun e!1956953 () Regex!9641)

(declare-fun e!1956954 () Regex!9641)

(assert (=> b!3136408 (= e!1956953 e!1956954)))

(declare-fun b!3136409 () Bool)

(declare-fun e!1956962 () Regex!9641)

(assert (=> b!3136409 (= e!1956962 lt!1060841)))

(declare-fun b!3136410 () Bool)

(declare-fun c!527051 () Bool)

(assert (=> b!3136410 (= c!527051 call!224841)))

(declare-fun e!1956959 () Regex!9641)

(assert (=> b!3136410 (= e!1956959 e!1956962)))

(declare-fun bm!224830 () Bool)

(declare-fun lt!1060836 () Regex!9641)

(assert (=> bm!224830 (= call!224837 (isEmptyLang!692 (ite c!527053 lt!1060836 lt!1060839)))))

(declare-fun b!3136411 () Bool)

(declare-fun e!1956964 () Regex!9641)

(declare-fun lt!1060840 () Regex!9641)

(assert (=> b!3136411 (= e!1956964 (Star!9641 lt!1060840))))

(declare-fun b!3136412 () Bool)

(declare-fun e!1956961 () Bool)

(declare-fun call!224840 () Bool)

(assert (=> b!3136412 (= e!1956961 call!224840)))

(declare-fun b!3136413 () Bool)

(assert (=> b!3136413 (= e!1956963 r!17423)))

(declare-fun call!224836 () Bool)

(declare-fun bm!224831 () Bool)

(declare-fun lt!1060837 () Regex!9641)

(assert (=> bm!224831 (= call!224836 (isEmptyLang!692 (ite c!527058 lt!1060840 (ite c!527053 lt!1060837 lt!1060841))))))

(declare-fun b!3136414 () Bool)

(declare-fun c!527054 () Bool)

(assert (=> b!3136414 (= c!527054 ((_ is EmptyExpr!9641) r!17423))))

(assert (=> b!3136414 (= e!1956963 e!1956957)))

(declare-fun bm!224832 () Bool)

(declare-fun call!224838 () Regex!9641)

(assert (=> bm!224832 (= call!224838 (simplify!596 (ite c!527058 (reg!9970 r!17423) (ite c!527053 (regTwo!19795 r!17423) (regOne!19794 r!17423)))))))

(declare-fun b!3136415 () Bool)

(assert (=> b!3136415 (= e!1956957 EmptyExpr!9641)))

(declare-fun b!3136416 () Bool)

(assert (=> b!3136416 (= e!1956958 e!1956959)))

(declare-fun call!224839 () Regex!9641)

(assert (=> b!3136416 (= lt!1060839 call!224839)))

(declare-fun call!224835 () Regex!9641)

(assert (=> b!3136416 (= lt!1060841 call!224835)))

(declare-fun res!1281713 () Bool)

(assert (=> b!3136416 (= res!1281713 call!224837)))

(assert (=> b!3136416 (=> res!1281713 e!1956961)))

(declare-fun c!527055 () Bool)

(assert (=> b!3136416 (= c!527055 e!1956961)))

(declare-fun b!3136417 () Bool)

(declare-fun e!1956960 () Bool)

(declare-fun lt!1060838 () Regex!9641)

(assert (=> b!3136417 (= e!1956960 (= (nullable!3275 lt!1060838) (nullable!3275 r!17423)))))

(declare-fun bm!224833 () Bool)

(assert (=> bm!224833 (= call!224835 (simplify!596 (ite c!527053 (regOne!19795 r!17423) (regTwo!19794 r!17423))))))

(declare-fun bm!224834 () Bool)

(assert (=> bm!224834 (= call!224841 (isEmptyExpr!685 (ite c!527058 lt!1060840 lt!1060839)))))

(declare-fun b!3136418 () Bool)

(assert (=> b!3136418 (= e!1956958 e!1956953)))

(assert (=> b!3136418 (= lt!1060837 call!224835)))

(assert (=> b!3136418 (= lt!1060836 call!224839)))

(declare-fun c!527059 () Bool)

(assert (=> b!3136418 (= c!527059 call!224840)))

(declare-fun bm!224835 () Bool)

(assert (=> bm!224835 (= call!224839 call!224838)))

(declare-fun b!3136419 () Bool)

(declare-fun c!527052 () Bool)

(assert (=> b!3136419 (= c!527052 e!1956951)))

(declare-fun res!1281711 () Bool)

(assert (=> b!3136419 (=> res!1281711 e!1956951)))

(assert (=> b!3136419 (= res!1281711 call!224836)))

(assert (=> b!3136419 (= lt!1060840 call!224838)))

(assert (=> b!3136419 (= e!1956952 e!1956964)))

(declare-fun b!3136420 () Bool)

(assert (=> b!3136420 (= e!1956955 EmptyLang!9641)))

(declare-fun b!3136421 () Bool)

(assert (=> b!3136421 (= e!1956954 lt!1060837)))

(declare-fun b!3136422 () Bool)

(assert (=> b!3136422 (= e!1956959 EmptyLang!9641)))

(declare-fun b!3136423 () Bool)

(assert (=> b!3136423 (= e!1956962 e!1956956)))

(declare-fun c!527057 () Bool)

(assert (=> b!3136423 (= c!527057 (isEmptyExpr!685 lt!1060841))))

(declare-fun b!3136424 () Bool)

(assert (=> b!3136424 (= e!1956953 lt!1060836)))

(declare-fun b!3136425 () Bool)

(assert (=> b!3136425 (= e!1956954 (Union!9641 lt!1060837 lt!1060836))))

(declare-fun bm!224836 () Bool)

(assert (=> bm!224836 (= call!224840 call!224836)))

(declare-fun b!3136427 () Bool)

(assert (=> b!3136427 (= e!1956964 EmptyExpr!9641)))

(declare-fun d!865416 () Bool)

(assert (=> d!865416 e!1956960))

(declare-fun res!1281712 () Bool)

(assert (=> d!865416 (=> (not res!1281712) (not e!1956960))))

(assert (=> d!865416 (= res!1281712 (validRegex!4374 lt!1060838))))

(assert (=> d!865416 (= lt!1060838 e!1956955)))

(declare-fun c!527061 () Bool)

(assert (=> d!865416 (= c!527061 ((_ is EmptyLang!9641) r!17423))))

(assert (=> d!865416 (validRegex!4374 r!17423)))

(assert (=> d!865416 (= (simplify!596 r!17423) lt!1060838)))

(declare-fun b!3136426 () Bool)

(assert (=> b!3136426 (= e!1956956 lt!1060839)))

(assert (= (and d!865416 c!527061) b!3136420))

(assert (= (and d!865416 (not c!527061)) b!3136404))

(assert (= (and b!3136404 c!527060) b!3136413))

(assert (= (and b!3136404 (not c!527060)) b!3136414))

(assert (= (and b!3136414 c!527054) b!3136415))

(assert (= (and b!3136414 (not c!527054)) b!3136406))

(assert (= (and b!3136406 c!527058) b!3136419))

(assert (= (and b!3136406 (not c!527058)) b!3136403))

(assert (= (and b!3136419 (not res!1281711)) b!3136405))

(assert (= (and b!3136419 c!527052) b!3136427))

(assert (= (and b!3136419 (not c!527052)) b!3136411))

(assert (= (and b!3136403 c!527053) b!3136418))

(assert (= (and b!3136403 (not c!527053)) b!3136416))

(assert (= (and b!3136418 c!527059) b!3136424))

(assert (= (and b!3136418 (not c!527059)) b!3136408))

(assert (= (and b!3136408 c!527056) b!3136421))

(assert (= (and b!3136408 (not c!527056)) b!3136425))

(assert (= (and b!3136416 (not res!1281713)) b!3136412))

(assert (= (and b!3136416 c!527055) b!3136422))

(assert (= (and b!3136416 (not c!527055)) b!3136410))

(assert (= (and b!3136410 c!527051) b!3136409))

(assert (= (and b!3136410 (not c!527051)) b!3136423))

(assert (= (and b!3136423 c!527057) b!3136426))

(assert (= (and b!3136423 (not c!527057)) b!3136407))

(assert (= (or b!3136418 b!3136416) bm!224833))

(assert (= (or b!3136418 b!3136416) bm!224835))

(assert (= (or b!3136418 b!3136412) bm!224836))

(assert (= (or b!3136408 b!3136416) bm!224830))

(assert (= (or b!3136405 b!3136410) bm!224834))

(assert (= (or b!3136419 bm!224835) bm!224832))

(assert (= (or b!3136419 bm!224836) bm!224831))

(assert (= (and d!865416 res!1281712) b!3136417))

(declare-fun m!3416827 () Bool)

(assert (=> bm!224832 m!3416827))

(declare-fun m!3416829 () Bool)

(assert (=> bm!224834 m!3416829))

(declare-fun m!3416831 () Bool)

(assert (=> bm!224830 m!3416831))

(declare-fun m!3416833 () Bool)

(assert (=> b!3136417 m!3416833))

(assert (=> b!3136417 m!3416733))

(declare-fun m!3416835 () Bool)

(assert (=> bm!224831 m!3416835))

(declare-fun m!3416837 () Bool)

(assert (=> bm!224833 m!3416837))

(declare-fun m!3416839 () Bool)

(assert (=> b!3136423 m!3416839))

(declare-fun m!3416841 () Bool)

(assert (=> d!865416 m!3416841))

(assert (=> d!865416 m!3416435))

(assert (=> b!3135611 d!865416))

(declare-fun b!3136428 () Bool)

(declare-fun res!1281717 () Bool)

(declare-fun e!1956967 () Bool)

(assert (=> b!3136428 (=> res!1281717 e!1956967)))

(assert (=> b!3136428 (= res!1281717 (not (isEmpty!19737 (tail!5155 s!11993))))))

(declare-fun b!3136429 () Bool)

(assert (=> b!3136429 (= e!1956967 (not (= (head!6929 s!11993) (c!526829 (simplify!596 r!17423)))))))

(declare-fun b!3136430 () Bool)

(declare-fun e!1956969 () Bool)

(declare-fun e!1956965 () Bool)

(assert (=> b!3136430 (= e!1956969 e!1956965)))

(declare-fun res!1281719 () Bool)

(assert (=> b!3136430 (=> (not res!1281719) (not e!1956965))))

(declare-fun lt!1060842 () Bool)

(assert (=> b!3136430 (= res!1281719 (not lt!1060842))))

(declare-fun b!3136431 () Bool)

(declare-fun res!1281721 () Bool)

(declare-fun e!1956966 () Bool)

(assert (=> b!3136431 (=> (not res!1281721) (not e!1956966))))

(assert (=> b!3136431 (= res!1281721 (isEmpty!19737 (tail!5155 s!11993)))))

(declare-fun bm!224837 () Bool)

(declare-fun call!224842 () Bool)

(assert (=> bm!224837 (= call!224842 (isEmpty!19737 s!11993))))

(declare-fun b!3136432 () Bool)

(declare-fun e!1956970 () Bool)

(assert (=> b!3136432 (= e!1956970 (matchR!4523 (derivativeStep!2870 (simplify!596 r!17423) (head!6929 s!11993)) (tail!5155 s!11993)))))

(declare-fun b!3136433 () Bool)

(declare-fun res!1281718 () Bool)

(assert (=> b!3136433 (=> (not res!1281718) (not e!1956966))))

(assert (=> b!3136433 (= res!1281718 (not call!224842))))

(declare-fun b!3136434 () Bool)

(declare-fun res!1281715 () Bool)

(assert (=> b!3136434 (=> res!1281715 e!1956969)))

(assert (=> b!3136434 (= res!1281715 (not ((_ is ElementMatch!9641) (simplify!596 r!17423))))))

(declare-fun e!1956971 () Bool)

(assert (=> b!3136434 (= e!1956971 e!1956969)))

(declare-fun b!3136435 () Bool)

(declare-fun e!1956968 () Bool)

(assert (=> b!3136435 (= e!1956968 (= lt!1060842 call!224842))))

(declare-fun b!3136436 () Bool)

(assert (=> b!3136436 (= e!1956968 e!1956971)))

(declare-fun c!527063 () Bool)

(assert (=> b!3136436 (= c!527063 ((_ is EmptyLang!9641) (simplify!596 r!17423)))))

(declare-fun d!865418 () Bool)

(assert (=> d!865418 e!1956968))

(declare-fun c!527062 () Bool)

(assert (=> d!865418 (= c!527062 ((_ is EmptyExpr!9641) (simplify!596 r!17423)))))

(assert (=> d!865418 (= lt!1060842 e!1956970)))

(declare-fun c!527064 () Bool)

(assert (=> d!865418 (= c!527064 (isEmpty!19737 s!11993))))

(assert (=> d!865418 (validRegex!4374 (simplify!596 r!17423))))

(assert (=> d!865418 (= (matchR!4523 (simplify!596 r!17423) s!11993) lt!1060842)))

(declare-fun b!3136437 () Bool)

(assert (=> b!3136437 (= e!1956971 (not lt!1060842))))

(declare-fun b!3136438 () Bool)

(assert (=> b!3136438 (= e!1956966 (= (head!6929 s!11993) (c!526829 (simplify!596 r!17423))))))

(declare-fun b!3136439 () Bool)

(declare-fun res!1281714 () Bool)

(assert (=> b!3136439 (=> res!1281714 e!1956969)))

(assert (=> b!3136439 (= res!1281714 e!1956966)))

(declare-fun res!1281716 () Bool)

(assert (=> b!3136439 (=> (not res!1281716) (not e!1956966))))

(assert (=> b!3136439 (= res!1281716 lt!1060842)))

(declare-fun b!3136440 () Bool)

(assert (=> b!3136440 (= e!1956965 e!1956967)))

(declare-fun res!1281720 () Bool)

(assert (=> b!3136440 (=> res!1281720 e!1956967)))

(assert (=> b!3136440 (= res!1281720 call!224842)))

(declare-fun b!3136441 () Bool)

(assert (=> b!3136441 (= e!1956970 (nullable!3275 (simplify!596 r!17423)))))

(assert (= (and d!865418 c!527064) b!3136441))

(assert (= (and d!865418 (not c!527064)) b!3136432))

(assert (= (and d!865418 c!527062) b!3136435))

(assert (= (and d!865418 (not c!527062)) b!3136436))

(assert (= (and b!3136436 c!527063) b!3136437))

(assert (= (and b!3136436 (not c!527063)) b!3136434))

(assert (= (and b!3136434 (not res!1281715)) b!3136439))

(assert (= (and b!3136439 res!1281716) b!3136433))

(assert (= (and b!3136433 res!1281718) b!3136431))

(assert (= (and b!3136431 res!1281721) b!3136438))

(assert (= (and b!3136439 (not res!1281714)) b!3136430))

(assert (= (and b!3136430 res!1281719) b!3136440))

(assert (= (and b!3136440 (not res!1281720)) b!3136428))

(assert (= (and b!3136428 (not res!1281717)) b!3136429))

(assert (= (or b!3136435 b!3136433 b!3136440) bm!224837))

(assert (=> b!3136438 m!3416597))

(assert (=> b!3136432 m!3416597))

(assert (=> b!3136432 m!3416385))

(assert (=> b!3136432 m!3416597))

(declare-fun m!3416843 () Bool)

(assert (=> b!3136432 m!3416843))

(assert (=> b!3136432 m!3416601))

(assert (=> b!3136432 m!3416843))

(assert (=> b!3136432 m!3416601))

(declare-fun m!3416845 () Bool)

(assert (=> b!3136432 m!3416845))

(assert (=> b!3136428 m!3416601))

(assert (=> b!3136428 m!3416601))

(assert (=> b!3136428 m!3416605))

(assert (=> b!3136441 m!3416385))

(declare-fun m!3416847 () Bool)

(assert (=> b!3136441 m!3416847))

(assert (=> b!3136429 m!3416597))

(assert (=> d!865418 m!3416427))

(assert (=> d!865418 m!3416385))

(declare-fun m!3416849 () Bool)

(assert (=> d!865418 m!3416849))

(assert (=> bm!224837 m!3416427))

(assert (=> b!3136431 m!3416601))

(assert (=> b!3136431 m!3416601))

(assert (=> b!3136431 m!3416605))

(assert (=> b!3135611 d!865418))

(declare-fun b!3136442 () Bool)

(declare-fun res!1281725 () Bool)

(declare-fun e!1956974 () Bool)

(assert (=> b!3136442 (=> res!1281725 e!1956974)))

(assert (=> b!3136442 (= res!1281725 (not (isEmpty!19737 (tail!5155 (_2!20262 lt!1060707)))))))

(declare-fun b!3136443 () Bool)

(assert (=> b!3136443 (= e!1956974 (not (= (head!6929 (_2!20262 lt!1060707)) (c!526829 lt!1060700))))))

(declare-fun b!3136444 () Bool)

(declare-fun e!1956976 () Bool)

(declare-fun e!1956972 () Bool)

(assert (=> b!3136444 (= e!1956976 e!1956972)))

(declare-fun res!1281727 () Bool)

(assert (=> b!3136444 (=> (not res!1281727) (not e!1956972))))

(declare-fun lt!1060843 () Bool)

(assert (=> b!3136444 (= res!1281727 (not lt!1060843))))

(declare-fun b!3136445 () Bool)

(declare-fun res!1281729 () Bool)

(declare-fun e!1956973 () Bool)

(assert (=> b!3136445 (=> (not res!1281729) (not e!1956973))))

(assert (=> b!3136445 (= res!1281729 (isEmpty!19737 (tail!5155 (_2!20262 lt!1060707))))))

(declare-fun bm!224838 () Bool)

(declare-fun call!224843 () Bool)

(assert (=> bm!224838 (= call!224843 (isEmpty!19737 (_2!20262 lt!1060707)))))

(declare-fun b!3136446 () Bool)

(declare-fun e!1956977 () Bool)

(assert (=> b!3136446 (= e!1956977 (matchR!4523 (derivativeStep!2870 lt!1060700 (head!6929 (_2!20262 lt!1060707))) (tail!5155 (_2!20262 lt!1060707))))))

(declare-fun b!3136447 () Bool)

(declare-fun res!1281726 () Bool)

(assert (=> b!3136447 (=> (not res!1281726) (not e!1956973))))

(assert (=> b!3136447 (= res!1281726 (not call!224843))))

(declare-fun b!3136448 () Bool)

(declare-fun res!1281723 () Bool)

(assert (=> b!3136448 (=> res!1281723 e!1956976)))

(assert (=> b!3136448 (= res!1281723 (not ((_ is ElementMatch!9641) lt!1060700)))))

(declare-fun e!1956978 () Bool)

(assert (=> b!3136448 (= e!1956978 e!1956976)))

(declare-fun b!3136449 () Bool)

(declare-fun e!1956975 () Bool)

(assert (=> b!3136449 (= e!1956975 (= lt!1060843 call!224843))))

(declare-fun b!3136450 () Bool)

(assert (=> b!3136450 (= e!1956975 e!1956978)))

(declare-fun c!527066 () Bool)

(assert (=> b!3136450 (= c!527066 ((_ is EmptyLang!9641) lt!1060700))))

(declare-fun d!865420 () Bool)

(assert (=> d!865420 e!1956975))

(declare-fun c!527065 () Bool)

(assert (=> d!865420 (= c!527065 ((_ is EmptyExpr!9641) lt!1060700))))

(assert (=> d!865420 (= lt!1060843 e!1956977)))

(declare-fun c!527067 () Bool)

(assert (=> d!865420 (= c!527067 (isEmpty!19737 (_2!20262 lt!1060707)))))

(assert (=> d!865420 (validRegex!4374 lt!1060700)))

(assert (=> d!865420 (= (matchR!4523 lt!1060700 (_2!20262 lt!1060707)) lt!1060843)))

(declare-fun b!3136451 () Bool)

(assert (=> b!3136451 (= e!1956978 (not lt!1060843))))

(declare-fun b!3136452 () Bool)

(assert (=> b!3136452 (= e!1956973 (= (head!6929 (_2!20262 lt!1060707)) (c!526829 lt!1060700)))))

(declare-fun b!3136453 () Bool)

(declare-fun res!1281722 () Bool)

(assert (=> b!3136453 (=> res!1281722 e!1956976)))

(assert (=> b!3136453 (= res!1281722 e!1956973)))

(declare-fun res!1281724 () Bool)

(assert (=> b!3136453 (=> (not res!1281724) (not e!1956973))))

(assert (=> b!3136453 (= res!1281724 lt!1060843)))

(declare-fun b!3136454 () Bool)

(assert (=> b!3136454 (= e!1956972 e!1956974)))

(declare-fun res!1281728 () Bool)

(assert (=> b!3136454 (=> res!1281728 e!1956974)))

(assert (=> b!3136454 (= res!1281728 call!224843)))

(declare-fun b!3136455 () Bool)

(assert (=> b!3136455 (= e!1956977 (nullable!3275 lt!1060700))))

(assert (= (and d!865420 c!527067) b!3136455))

(assert (= (and d!865420 (not c!527067)) b!3136446))

(assert (= (and d!865420 c!527065) b!3136449))

(assert (= (and d!865420 (not c!527065)) b!3136450))

(assert (= (and b!3136450 c!527066) b!3136451))

(assert (= (and b!3136450 (not c!527066)) b!3136448))

(assert (= (and b!3136448 (not res!1281723)) b!3136453))

(assert (= (and b!3136453 res!1281724) b!3136447))

(assert (= (and b!3136447 res!1281726) b!3136445))

(assert (= (and b!3136445 res!1281729) b!3136452))

(assert (= (and b!3136453 (not res!1281722)) b!3136444))

(assert (= (and b!3136444 res!1281727) b!3136454))

(assert (= (and b!3136454 (not res!1281728)) b!3136442))

(assert (= (and b!3136442 (not res!1281725)) b!3136443))

(assert (= (or b!3136449 b!3136447 b!3136454) bm!224838))

(assert (=> b!3136452 m!3416737))

(assert (=> b!3136446 m!3416737))

(assert (=> b!3136446 m!3416737))

(declare-fun m!3416851 () Bool)

(assert (=> b!3136446 m!3416851))

(assert (=> b!3136446 m!3416741))

(assert (=> b!3136446 m!3416851))

(assert (=> b!3136446 m!3416741))

(declare-fun m!3416853 () Bool)

(assert (=> b!3136446 m!3416853))

(assert (=> b!3136442 m!3416741))

(assert (=> b!3136442 m!3416741))

(assert (=> b!3136442 m!3416745))

(assert (=> b!3136455 m!3416607))

(assert (=> b!3136443 m!3416737))

(assert (=> d!865420 m!3416749))

(assert (=> d!865420 m!3416609))

(assert (=> bm!224838 m!3416749))

(assert (=> b!3136445 m!3416741))

(assert (=> b!3136445 m!3416741))

(assert (=> b!3136445 m!3416745))

(assert (=> b!3135601 d!865420))

(declare-fun d!865422 () Bool)

(assert (=> d!865422 (= (isEmpty!19737 s!11993) ((_ is Nil!35382) s!11993))))

(assert (=> b!3135612 d!865422))

(declare-fun bs!538981 () Bool)

(declare-fun b!3136463 () Bool)

(assert (= bs!538981 (and b!3136463 b!3135602)))

(declare-fun lambda!115704 () Int)

(assert (=> bs!538981 (not (= lambda!115704 lambda!115679))))

(assert (=> bs!538981 (= (= (reg!9970 lt!1060700) lt!1060710) (= lambda!115704 lambda!115680))))

(declare-fun bs!538982 () Bool)

(assert (= bs!538982 (and b!3136463 b!3136257)))

(assert (=> bs!538982 (= (and (= (reg!9970 lt!1060700) (reg!9970 r!17423)) (= lt!1060700 r!17423)) (= lambda!115704 lambda!115702))))

(declare-fun bs!538983 () Bool)

(assert (= bs!538983 (and b!3136463 b!3136252)))

(assert (=> bs!538983 (not (= lambda!115704 lambda!115703))))

(assert (=> b!3136463 true))

(assert (=> b!3136463 true))

(declare-fun bs!538984 () Bool)

(declare-fun b!3136458 () Bool)

(assert (= bs!538984 (and b!3136458 b!3135602)))

(declare-fun lambda!115705 () Int)

(assert (=> bs!538984 (not (= lambda!115705 lambda!115679))))

(assert (=> bs!538984 (not (= lambda!115705 lambda!115680))))

(declare-fun bs!538985 () Bool)

(assert (= bs!538985 (and b!3136458 b!3136257)))

(assert (=> bs!538985 (not (= lambda!115705 lambda!115702))))

(declare-fun bs!538986 () Bool)

(assert (= bs!538986 (and b!3136458 b!3136463)))

(assert (=> bs!538986 (not (= lambda!115705 lambda!115704))))

(declare-fun bs!538987 () Bool)

(assert (= bs!538987 (and b!3136458 b!3136252)))

(assert (=> bs!538987 (= (and (= (regOne!19794 lt!1060700) (regOne!19794 r!17423)) (= (regTwo!19794 lt!1060700) (regTwo!19794 r!17423))) (= lambda!115705 lambda!115703))))

(assert (=> b!3136458 true))

(assert (=> b!3136458 true))

(declare-fun b!3136456 () Bool)

(declare-fun e!1956979 () Bool)

(declare-fun e!1956983 () Bool)

(assert (=> b!3136456 (= e!1956979 e!1956983)))

(declare-fun res!1281730 () Bool)

(assert (=> b!3136456 (= res!1281730 (matchRSpec!1778 (regOne!19795 lt!1060700) s!11993))))

(assert (=> b!3136456 (=> res!1281730 e!1956983)))

(declare-fun b!3136457 () Bool)

(declare-fun c!527068 () Bool)

(assert (=> b!3136457 (= c!527068 ((_ is Union!9641) lt!1060700))))

(declare-fun e!1956981 () Bool)

(assert (=> b!3136457 (= e!1956981 e!1956979)))

(declare-fun e!1956985 () Bool)

(declare-fun call!224844 () Bool)

(assert (=> b!3136458 (= e!1956985 call!224844)))

(declare-fun b!3136459 () Bool)

(declare-fun res!1281731 () Bool)

(declare-fun e!1956984 () Bool)

(assert (=> b!3136459 (=> res!1281731 e!1956984)))

(declare-fun call!224845 () Bool)

(assert (=> b!3136459 (= res!1281731 call!224845)))

(assert (=> b!3136459 (= e!1956985 e!1956984)))

(declare-fun bm!224839 () Bool)

(assert (=> bm!224839 (= call!224845 (isEmpty!19737 s!11993))))

(declare-fun b!3136460 () Bool)

(declare-fun c!527071 () Bool)

(assert (=> b!3136460 (= c!527071 ((_ is ElementMatch!9641) lt!1060700))))

(declare-fun e!1956980 () Bool)

(assert (=> b!3136460 (= e!1956980 e!1956981)))

(declare-fun bm!224840 () Bool)

(declare-fun c!527070 () Bool)

(assert (=> bm!224840 (= call!224844 (Exists!1895 (ite c!527070 lambda!115704 lambda!115705)))))

(declare-fun d!865424 () Bool)

(declare-fun c!527069 () Bool)

(assert (=> d!865424 (= c!527069 ((_ is EmptyExpr!9641) lt!1060700))))

(declare-fun e!1956982 () Bool)

(assert (=> d!865424 (= (matchRSpec!1778 lt!1060700 s!11993) e!1956982)))

(declare-fun b!3136461 () Bool)

(assert (=> b!3136461 (= e!1956982 e!1956980)))

(declare-fun res!1281732 () Bool)

(assert (=> b!3136461 (= res!1281732 (not ((_ is EmptyLang!9641) lt!1060700)))))

(assert (=> b!3136461 (=> (not res!1281732) (not e!1956980))))

(declare-fun b!3136462 () Bool)

(assert (=> b!3136462 (= e!1956982 call!224845)))

(assert (=> b!3136463 (= e!1956984 call!224844)))

(declare-fun b!3136464 () Bool)

(assert (=> b!3136464 (= e!1956981 (= s!11993 (Cons!35382 (c!526829 lt!1060700) Nil!35382)))))

(declare-fun b!3136465 () Bool)

(assert (=> b!3136465 (= e!1956983 (matchRSpec!1778 (regTwo!19795 lt!1060700) s!11993))))

(declare-fun b!3136466 () Bool)

(assert (=> b!3136466 (= e!1956979 e!1956985)))

(assert (=> b!3136466 (= c!527070 ((_ is Star!9641) lt!1060700))))

(assert (= (and d!865424 c!527069) b!3136462))

(assert (= (and d!865424 (not c!527069)) b!3136461))

(assert (= (and b!3136461 res!1281732) b!3136460))

(assert (= (and b!3136460 c!527071) b!3136464))

(assert (= (and b!3136460 (not c!527071)) b!3136457))

(assert (= (and b!3136457 c!527068) b!3136456))

(assert (= (and b!3136457 (not c!527068)) b!3136466))

(assert (= (and b!3136456 (not res!1281730)) b!3136465))

(assert (= (and b!3136466 c!527070) b!3136459))

(assert (= (and b!3136466 (not c!527070)) b!3136458))

(assert (= (and b!3136459 (not res!1281731)) b!3136463))

(assert (= (or b!3136463 b!3136458) bm!224840))

(assert (= (or b!3136462 b!3136459) bm!224839))

(declare-fun m!3416855 () Bool)

(assert (=> b!3136456 m!3416855))

(assert (=> bm!224839 m!3416427))

(declare-fun m!3416857 () Bool)

(assert (=> bm!224840 m!3416857))

(declare-fun m!3416859 () Bool)

(assert (=> b!3136465 m!3416859))

(assert (=> b!3135612 d!865424))

(declare-fun d!865426 () Bool)

(assert (=> d!865426 (= (matchR!4523 lt!1060700 s!11993) (matchRSpec!1778 lt!1060700 s!11993))))

(declare-fun lt!1060844 () Unit!49735)

(assert (=> d!865426 (= lt!1060844 (choose!18505 lt!1060700 s!11993))))

(assert (=> d!865426 (validRegex!4374 lt!1060700)))

(assert (=> d!865426 (= (mainMatchTheorem!1778 lt!1060700 s!11993) lt!1060844)))

(declare-fun bs!538988 () Bool)

(assert (= bs!538988 d!865426))

(assert (=> bs!538988 m!3416425))

(assert (=> bs!538988 m!3416429))

(declare-fun m!3416861 () Bool)

(assert (=> bs!538988 m!3416861))

(assert (=> bs!538988 m!3416609))

(assert (=> b!3135612 d!865426))

(declare-fun b!3136467 () Bool)

(declare-fun e!1956986 () Bool)

(declare-fun e!1956991 () Bool)

(assert (=> b!3136467 (= e!1956986 e!1956991)))

(declare-fun c!527073 () Bool)

(assert (=> b!3136467 (= c!527073 ((_ is Star!9641) r!17423))))

(declare-fun b!3136468 () Bool)

(declare-fun res!1281733 () Bool)

(declare-fun e!1956987 () Bool)

(assert (=> b!3136468 (=> res!1281733 e!1956987)))

(assert (=> b!3136468 (= res!1281733 (not ((_ is Concat!14962) r!17423)))))

(declare-fun e!1956988 () Bool)

(assert (=> b!3136468 (= e!1956988 e!1956987)))

(declare-fun bm!224841 () Bool)

(declare-fun call!224848 () Bool)

(declare-fun c!527072 () Bool)

(assert (=> bm!224841 (= call!224848 (validRegex!4374 (ite c!527072 (regTwo!19795 r!17423) (regOne!19794 r!17423))))))

(declare-fun d!865428 () Bool)

(declare-fun res!1281735 () Bool)

(assert (=> d!865428 (=> res!1281735 e!1956986)))

(assert (=> d!865428 (= res!1281735 ((_ is ElementMatch!9641) r!17423))))

(assert (=> d!865428 (= (validRegex!4374 r!17423) e!1956986)))

(declare-fun b!3136469 () Bool)

(declare-fun e!1956992 () Bool)

(declare-fun call!224847 () Bool)

(assert (=> b!3136469 (= e!1956992 call!224847)))

(declare-fun b!3136470 () Bool)

(assert (=> b!3136470 (= e!1956991 e!1956992)))

(declare-fun res!1281736 () Bool)

(assert (=> b!3136470 (= res!1281736 (not (nullable!3275 (reg!9970 r!17423))))))

(assert (=> b!3136470 (=> (not res!1281736) (not e!1956992))))

(declare-fun bm!224842 () Bool)

(assert (=> bm!224842 (= call!224847 (validRegex!4374 (ite c!527073 (reg!9970 r!17423) (ite c!527072 (regOne!19795 r!17423) (regTwo!19794 r!17423)))))))

(declare-fun b!3136471 () Bool)

(assert (=> b!3136471 (= e!1956991 e!1956988)))

(assert (=> b!3136471 (= c!527072 ((_ is Union!9641) r!17423))))

(declare-fun b!3136472 () Bool)

(declare-fun e!1956990 () Bool)

(declare-fun call!224846 () Bool)

(assert (=> b!3136472 (= e!1956990 call!224846)))

(declare-fun b!3136473 () Bool)

(declare-fun res!1281734 () Bool)

(declare-fun e!1956989 () Bool)

(assert (=> b!3136473 (=> (not res!1281734) (not e!1956989))))

(assert (=> b!3136473 (= res!1281734 call!224846)))

(assert (=> b!3136473 (= e!1956988 e!1956989)))

(declare-fun b!3136474 () Bool)

(assert (=> b!3136474 (= e!1956989 call!224848)))

(declare-fun bm!224843 () Bool)

(assert (=> bm!224843 (= call!224846 call!224847)))

(declare-fun b!3136475 () Bool)

(assert (=> b!3136475 (= e!1956987 e!1956990)))

(declare-fun res!1281737 () Bool)

(assert (=> b!3136475 (=> (not res!1281737) (not e!1956990))))

(assert (=> b!3136475 (= res!1281737 call!224848)))

(assert (= (and d!865428 (not res!1281735)) b!3136467))

(assert (= (and b!3136467 c!527073) b!3136470))

(assert (= (and b!3136467 (not c!527073)) b!3136471))

(assert (= (and b!3136470 res!1281736) b!3136469))

(assert (= (and b!3136471 c!527072) b!3136473))

(assert (= (and b!3136471 (not c!527072)) b!3136468))

(assert (= (and b!3136473 res!1281734) b!3136474))

(assert (= (and b!3136468 (not res!1281733)) b!3136475))

(assert (= (and b!3136475 res!1281737) b!3136472))

(assert (= (or b!3136473 b!3136472) bm!224843))

(assert (= (or b!3136474 b!3136475) bm!224841))

(assert (= (or b!3136469 bm!224843) bm!224842))

(declare-fun m!3416863 () Bool)

(assert (=> bm!224841 m!3416863))

(assert (=> b!3136470 m!3416531))

(declare-fun m!3416865 () Bool)

(assert (=> bm!224842 m!3416865))

(assert (=> start!295696 d!865428))

(declare-fun d!865430 () Bool)

(declare-fun isEmpty!19739 (Option!6862) Bool)

(assert (=> d!865430 (= (isDefined!5413 lt!1060693) (not (isEmpty!19739 lt!1060693)))))

(declare-fun bs!538989 () Bool)

(assert (= bs!538989 d!865430))

(declare-fun m!3416867 () Bool)

(assert (=> bs!538989 m!3416867))

(assert (=> b!3135602 d!865430))

(declare-fun bs!538990 () Bool)

(declare-fun d!865432 () Bool)

(assert (= bs!538990 (and d!865432 b!3135602)))

(declare-fun lambda!115710 () Int)

(assert (=> bs!538990 (= (= (Star!9641 lt!1060710) lt!1060700) (= lambda!115710 lambda!115679))))

(declare-fun bs!538991 () Bool)

(assert (= bs!538991 (and d!865432 b!3136458)))

(assert (=> bs!538991 (not (= lambda!115710 lambda!115705))))

(assert (=> bs!538990 (not (= lambda!115710 lambda!115680))))

(declare-fun bs!538992 () Bool)

(assert (= bs!538992 (and d!865432 b!3136257)))

(assert (=> bs!538992 (not (= lambda!115710 lambda!115702))))

(declare-fun bs!538993 () Bool)

(assert (= bs!538993 (and d!865432 b!3136463)))

(assert (=> bs!538993 (not (= lambda!115710 lambda!115704))))

(declare-fun bs!538994 () Bool)

(assert (= bs!538994 (and d!865432 b!3136252)))

(assert (=> bs!538994 (not (= lambda!115710 lambda!115703))))

(assert (=> d!865432 true))

(assert (=> d!865432 true))

(declare-fun lambda!115711 () Int)

(assert (=> bs!538990 (not (= lambda!115711 lambda!115679))))

(assert (=> bs!538991 (not (= lambda!115711 lambda!115705))))

(assert (=> bs!538990 (= (= (Star!9641 lt!1060710) lt!1060700) (= lambda!115711 lambda!115680))))

(assert (=> bs!538992 (= (and (= lt!1060710 (reg!9970 r!17423)) (= (Star!9641 lt!1060710) r!17423)) (= lambda!115711 lambda!115702))))

(declare-fun bs!538995 () Bool)

(assert (= bs!538995 d!865432))

(assert (=> bs!538995 (not (= lambda!115711 lambda!115710))))

(assert (=> bs!538993 (= (and (= lt!1060710 (reg!9970 lt!1060700)) (= (Star!9641 lt!1060710) lt!1060700)) (= lambda!115711 lambda!115704))))

(assert (=> bs!538994 (not (= lambda!115711 lambda!115703))))

(assert (=> d!865432 true))

(assert (=> d!865432 true))

(assert (=> d!865432 (= (Exists!1895 lambda!115710) (Exists!1895 lambda!115711))))

(declare-fun lt!1060847 () Unit!49735)

(declare-fun choose!18509 (Regex!9641 List!35506) Unit!49735)

(assert (=> d!865432 (= lt!1060847 (choose!18509 lt!1060710 s!11993))))

(assert (=> d!865432 (validRegex!4374 lt!1060710)))

(assert (=> d!865432 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!356 lt!1060710 s!11993) lt!1060847)))

(declare-fun m!3416869 () Bool)

(assert (=> bs!538995 m!3416869))

(declare-fun m!3416871 () Bool)

(assert (=> bs!538995 m!3416871))

(declare-fun m!3416873 () Bool)

(assert (=> bs!538995 m!3416873))

(assert (=> bs!538995 m!3416627))

(assert (=> b!3135602 d!865432))

(declare-fun d!865434 () Bool)

(declare-fun choose!18510 (Int) Bool)

(assert (=> d!865434 (= (Exists!1895 lambda!115679) (choose!18510 lambda!115679))))

(declare-fun bs!538996 () Bool)

(assert (= bs!538996 d!865434))

(declare-fun m!3416875 () Bool)

(assert (=> bs!538996 m!3416875))

(assert (=> b!3135602 d!865434))

(declare-fun b!3136504 () Bool)

(declare-fun lt!1060855 () Unit!49735)

(declare-fun lt!1060856 () Unit!49735)

(assert (=> b!3136504 (= lt!1060855 lt!1060856)))

(assert (=> b!3136504 (= (++!8515 (++!8515 Nil!35382 (Cons!35382 (h!40802 s!11993) Nil!35382)) (t!234571 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1108 (List!35506 C!19468 List!35506 List!35506) Unit!49735)

(assert (=> b!3136504 (= lt!1060856 (lemmaMoveElementToOtherListKeepsConcatEq!1108 Nil!35382 (h!40802 s!11993) (t!234571 s!11993) s!11993))))

(declare-fun e!1957009 () Option!6862)

(assert (=> b!3136504 (= e!1957009 (findConcatSeparation!1256 lt!1060710 lt!1060700 (++!8515 Nil!35382 (Cons!35382 (h!40802 s!11993) Nil!35382)) (t!234571 s!11993) s!11993))))

(declare-fun b!3136505 () Bool)

(declare-fun e!1957010 () Option!6862)

(assert (=> b!3136505 (= e!1957010 (Some!6861 (tuple2!34261 Nil!35382 s!11993)))))

(declare-fun d!865436 () Bool)

(declare-fun e!1957007 () Bool)

(assert (=> d!865436 e!1957007))

(declare-fun res!1281758 () Bool)

(assert (=> d!865436 (=> res!1281758 e!1957007)))

(declare-fun e!1957011 () Bool)

(assert (=> d!865436 (= res!1281758 e!1957011)))

(declare-fun res!1281759 () Bool)

(assert (=> d!865436 (=> (not res!1281759) (not e!1957011))))

(declare-fun lt!1060854 () Option!6862)

(assert (=> d!865436 (= res!1281759 (isDefined!5413 lt!1060854))))

(assert (=> d!865436 (= lt!1060854 e!1957010)))

(declare-fun c!527079 () Bool)

(declare-fun e!1957008 () Bool)

(assert (=> d!865436 (= c!527079 e!1957008)))

(declare-fun res!1281760 () Bool)

(assert (=> d!865436 (=> (not res!1281760) (not e!1957008))))

(assert (=> d!865436 (= res!1281760 (matchR!4523 lt!1060710 Nil!35382))))

(assert (=> d!865436 (validRegex!4374 lt!1060710)))

(assert (=> d!865436 (= (findConcatSeparation!1256 lt!1060710 lt!1060700 Nil!35382 s!11993 s!11993) lt!1060854)))

(declare-fun b!3136506 () Bool)

(assert (=> b!3136506 (= e!1957011 (= (++!8515 (_1!20262 (get!11148 lt!1060854)) (_2!20262 (get!11148 lt!1060854))) s!11993))))

(declare-fun b!3136507 () Bool)

(assert (=> b!3136507 (= e!1957010 e!1957009)))

(declare-fun c!527078 () Bool)

(assert (=> b!3136507 (= c!527078 ((_ is Nil!35382) s!11993))))

(declare-fun b!3136508 () Bool)

(assert (=> b!3136508 (= e!1957008 (matchR!4523 lt!1060700 s!11993))))

(declare-fun b!3136509 () Bool)

(assert (=> b!3136509 (= e!1957009 None!6861)))

(declare-fun b!3136510 () Bool)

(declare-fun res!1281761 () Bool)

(assert (=> b!3136510 (=> (not res!1281761) (not e!1957011))))

(assert (=> b!3136510 (= res!1281761 (matchR!4523 lt!1060710 (_1!20262 (get!11148 lt!1060854))))))

(declare-fun b!3136511 () Bool)

(assert (=> b!3136511 (= e!1957007 (not (isDefined!5413 lt!1060854)))))

(declare-fun b!3136512 () Bool)

(declare-fun res!1281762 () Bool)

(assert (=> b!3136512 (=> (not res!1281762) (not e!1957011))))

(assert (=> b!3136512 (= res!1281762 (matchR!4523 lt!1060700 (_2!20262 (get!11148 lt!1060854))))))

(assert (= (and d!865436 res!1281760) b!3136508))

(assert (= (and d!865436 c!527079) b!3136505))

(assert (= (and d!865436 (not c!527079)) b!3136507))

(assert (= (and b!3136507 c!527078) b!3136509))

(assert (= (and b!3136507 (not c!527078)) b!3136504))

(assert (= (and d!865436 res!1281759) b!3136510))

(assert (= (and b!3136510 res!1281761) b!3136512))

(assert (= (and b!3136512 res!1281762) b!3136506))

(assert (= (and d!865436 (not res!1281758)) b!3136511))

(declare-fun m!3416877 () Bool)

(assert (=> b!3136511 m!3416877))

(declare-fun m!3416879 () Bool)

(assert (=> b!3136504 m!3416879))

(assert (=> b!3136504 m!3416879))

(declare-fun m!3416881 () Bool)

(assert (=> b!3136504 m!3416881))

(declare-fun m!3416883 () Bool)

(assert (=> b!3136504 m!3416883))

(assert (=> b!3136504 m!3416879))

(declare-fun m!3416885 () Bool)

(assert (=> b!3136504 m!3416885))

(assert (=> d!865436 m!3416877))

(declare-fun m!3416887 () Bool)

(assert (=> d!865436 m!3416887))

(assert (=> d!865436 m!3416627))

(assert (=> b!3136508 m!3416425))

(declare-fun m!3416889 () Bool)

(assert (=> b!3136510 m!3416889))

(declare-fun m!3416891 () Bool)

(assert (=> b!3136510 m!3416891))

(assert (=> b!3136512 m!3416889))

(declare-fun m!3416893 () Bool)

(assert (=> b!3136512 m!3416893))

(assert (=> b!3136506 m!3416889))

(declare-fun m!3416895 () Bool)

(assert (=> b!3136506 m!3416895))

(assert (=> b!3135602 d!865436))

(declare-fun d!865438 () Bool)

(assert (=> d!865438 (= (Exists!1895 lambda!115680) (choose!18510 lambda!115680))))

(declare-fun bs!538997 () Bool)

(assert (= bs!538997 d!865438))

(declare-fun m!3416897 () Bool)

(assert (=> bs!538997 m!3416897))

(assert (=> b!3135602 d!865438))

(declare-fun bs!538998 () Bool)

(declare-fun d!865440 () Bool)

(assert (= bs!538998 (and d!865440 b!3135602)))

(declare-fun lambda!115714 () Int)

(assert (=> bs!538998 (= lambda!115714 lambda!115679)))

(declare-fun bs!538999 () Bool)

(assert (= bs!538999 (and d!865440 b!3136458)))

(assert (=> bs!538999 (not (= lambda!115714 lambda!115705))))

(assert (=> bs!538998 (not (= lambda!115714 lambda!115680))))

(declare-fun bs!539000 () Bool)

(assert (= bs!539000 (and d!865440 b!3136257)))

(assert (=> bs!539000 (not (= lambda!115714 lambda!115702))))

(declare-fun bs!539001 () Bool)

(assert (= bs!539001 (and d!865440 d!865432)))

(assert (=> bs!539001 (= (= lt!1060700 (Star!9641 lt!1060710)) (= lambda!115714 lambda!115710))))

(assert (=> bs!539001 (not (= lambda!115714 lambda!115711))))

(declare-fun bs!539002 () Bool)

(assert (= bs!539002 (and d!865440 b!3136463)))

(assert (=> bs!539002 (not (= lambda!115714 lambda!115704))))

(declare-fun bs!539003 () Bool)

(assert (= bs!539003 (and d!865440 b!3136252)))

(assert (=> bs!539003 (not (= lambda!115714 lambda!115703))))

(assert (=> d!865440 true))

(assert (=> d!865440 true))

(assert (=> d!865440 true))

(assert (=> d!865440 (= (isDefined!5413 (findConcatSeparation!1256 lt!1060710 lt!1060700 Nil!35382 s!11993 s!11993)) (Exists!1895 lambda!115714))))

(declare-fun lt!1060859 () Unit!49735)

(declare-fun choose!18511 (Regex!9641 Regex!9641 List!35506) Unit!49735)

(assert (=> d!865440 (= lt!1060859 (choose!18511 lt!1060710 lt!1060700 s!11993))))

(assert (=> d!865440 (validRegex!4374 lt!1060710)))

(assert (=> d!865440 (= (lemmaFindConcatSeparationEquivalentToExists!1026 lt!1060710 lt!1060700 s!11993) lt!1060859)))

(declare-fun bs!539004 () Bool)

(assert (= bs!539004 d!865440))

(declare-fun m!3416899 () Bool)

(assert (=> bs!539004 m!3416899))

(assert (=> bs!539004 m!3416409))

(declare-fun m!3416901 () Bool)

(assert (=> bs!539004 m!3416901))

(assert (=> bs!539004 m!3416627))

(assert (=> bs!539004 m!3416409))

(declare-fun m!3416903 () Bool)

(assert (=> bs!539004 m!3416903))

(assert (=> b!3135602 d!865440))

(declare-fun d!865442 () Bool)

(assert (=> d!865442 (= (matchR!4523 (reg!9970 r!17423) (_1!20262 lt!1060707)) (matchRSpec!1778 (reg!9970 r!17423) (_1!20262 lt!1060707)))))

(declare-fun lt!1060860 () Unit!49735)

(assert (=> d!865442 (= lt!1060860 (choose!18505 (reg!9970 r!17423) (_1!20262 lt!1060707)))))

(assert (=> d!865442 (validRegex!4374 (reg!9970 r!17423))))

(assert (=> d!865442 (= (mainMatchTheorem!1778 (reg!9970 r!17423) (_1!20262 lt!1060707)) lt!1060860)))

(declare-fun bs!539005 () Bool)

(assert (= bs!539005 d!865442))

(assert (=> bs!539005 m!3416383))

(declare-fun m!3416905 () Bool)

(assert (=> bs!539005 m!3416905))

(declare-fun m!3416907 () Bool)

(assert (=> bs!539005 m!3416907))

(assert (=> bs!539005 m!3416541))

(assert (=> b!3135613 d!865442))

(declare-fun b!3136529 () Bool)

(declare-fun e!1957016 () Bool)

(declare-fun tp!981817 () Bool)

(assert (=> b!3136529 (= e!1957016 tp!981817)))

(declare-fun b!3136528 () Bool)

(declare-fun tp!981814 () Bool)

(declare-fun tp!981816 () Bool)

(assert (=> b!3136528 (= e!1957016 (and tp!981814 tp!981816))))

(assert (=> b!3135608 (= tp!981764 e!1957016)))

(declare-fun b!3136527 () Bool)

(assert (=> b!3136527 (= e!1957016 tp_is_empty!16845)))

(declare-fun b!3136530 () Bool)

(declare-fun tp!981818 () Bool)

(declare-fun tp!981815 () Bool)

(assert (=> b!3136530 (= e!1957016 (and tp!981818 tp!981815))))

(assert (= (and b!3135608 ((_ is ElementMatch!9641) (reg!9970 r!17423))) b!3136527))

(assert (= (and b!3135608 ((_ is Concat!14962) (reg!9970 r!17423))) b!3136528))

(assert (= (and b!3135608 ((_ is Star!9641) (reg!9970 r!17423))) b!3136529))

(assert (= (and b!3135608 ((_ is Union!9641) (reg!9970 r!17423))) b!3136530))

(declare-fun b!3136533 () Bool)

(declare-fun e!1957017 () Bool)

(declare-fun tp!981822 () Bool)

(assert (=> b!3136533 (= e!1957017 tp!981822)))

(declare-fun b!3136532 () Bool)

(declare-fun tp!981819 () Bool)

(declare-fun tp!981821 () Bool)

(assert (=> b!3136532 (= e!1957017 (and tp!981819 tp!981821))))

(assert (=> b!3135609 (= tp!981760 e!1957017)))

(declare-fun b!3136531 () Bool)

(assert (=> b!3136531 (= e!1957017 tp_is_empty!16845)))

(declare-fun b!3136534 () Bool)

(declare-fun tp!981823 () Bool)

(declare-fun tp!981820 () Bool)

(assert (=> b!3136534 (= e!1957017 (and tp!981823 tp!981820))))

(assert (= (and b!3135609 ((_ is ElementMatch!9641) (regOne!19794 r!17423))) b!3136531))

(assert (= (and b!3135609 ((_ is Concat!14962) (regOne!19794 r!17423))) b!3136532))

(assert (= (and b!3135609 ((_ is Star!9641) (regOne!19794 r!17423))) b!3136533))

(assert (= (and b!3135609 ((_ is Union!9641) (regOne!19794 r!17423))) b!3136534))

(declare-fun b!3136537 () Bool)

(declare-fun e!1957018 () Bool)

(declare-fun tp!981827 () Bool)

(assert (=> b!3136537 (= e!1957018 tp!981827)))

(declare-fun b!3136536 () Bool)

(declare-fun tp!981824 () Bool)

(declare-fun tp!981826 () Bool)

(assert (=> b!3136536 (= e!1957018 (and tp!981824 tp!981826))))

(assert (=> b!3135609 (= tp!981761 e!1957018)))

(declare-fun b!3136535 () Bool)

(assert (=> b!3136535 (= e!1957018 tp_is_empty!16845)))

(declare-fun b!3136538 () Bool)

(declare-fun tp!981828 () Bool)

(declare-fun tp!981825 () Bool)

(assert (=> b!3136538 (= e!1957018 (and tp!981828 tp!981825))))

(assert (= (and b!3135609 ((_ is ElementMatch!9641) (regTwo!19794 r!17423))) b!3136535))

(assert (= (and b!3135609 ((_ is Concat!14962) (regTwo!19794 r!17423))) b!3136536))

(assert (= (and b!3135609 ((_ is Star!9641) (regTwo!19794 r!17423))) b!3136537))

(assert (= (and b!3135609 ((_ is Union!9641) (regTwo!19794 r!17423))) b!3136538))

(declare-fun b!3136541 () Bool)

(declare-fun e!1957019 () Bool)

(declare-fun tp!981832 () Bool)

(assert (=> b!3136541 (= e!1957019 tp!981832)))

(declare-fun b!3136540 () Bool)

(declare-fun tp!981829 () Bool)

(declare-fun tp!981831 () Bool)

(assert (=> b!3136540 (= e!1957019 (and tp!981829 tp!981831))))

(assert (=> b!3135610 (= tp!981762 e!1957019)))

(declare-fun b!3136539 () Bool)

(assert (=> b!3136539 (= e!1957019 tp_is_empty!16845)))

(declare-fun b!3136542 () Bool)

(declare-fun tp!981833 () Bool)

(declare-fun tp!981830 () Bool)

(assert (=> b!3136542 (= e!1957019 (and tp!981833 tp!981830))))

(assert (= (and b!3135610 ((_ is ElementMatch!9641) (regOne!19795 r!17423))) b!3136539))

(assert (= (and b!3135610 ((_ is Concat!14962) (regOne!19795 r!17423))) b!3136540))

(assert (= (and b!3135610 ((_ is Star!9641) (regOne!19795 r!17423))) b!3136541))

(assert (= (and b!3135610 ((_ is Union!9641) (regOne!19795 r!17423))) b!3136542))

(declare-fun b!3136545 () Bool)

(declare-fun e!1957020 () Bool)

(declare-fun tp!981837 () Bool)

(assert (=> b!3136545 (= e!1957020 tp!981837)))

(declare-fun b!3136544 () Bool)

(declare-fun tp!981834 () Bool)

(declare-fun tp!981836 () Bool)

(assert (=> b!3136544 (= e!1957020 (and tp!981834 tp!981836))))

(assert (=> b!3135610 (= tp!981765 e!1957020)))

(declare-fun b!3136543 () Bool)

(assert (=> b!3136543 (= e!1957020 tp_is_empty!16845)))

(declare-fun b!3136546 () Bool)

(declare-fun tp!981838 () Bool)

(declare-fun tp!981835 () Bool)

(assert (=> b!3136546 (= e!1957020 (and tp!981838 tp!981835))))

(assert (= (and b!3135610 ((_ is ElementMatch!9641) (regTwo!19795 r!17423))) b!3136543))

(assert (= (and b!3135610 ((_ is Concat!14962) (regTwo!19795 r!17423))) b!3136544))

(assert (= (and b!3135610 ((_ is Star!9641) (regTwo!19795 r!17423))) b!3136545))

(assert (= (and b!3135610 ((_ is Union!9641) (regTwo!19795 r!17423))) b!3136546))

(declare-fun b!3136551 () Bool)

(declare-fun e!1957023 () Bool)

(declare-fun tp!981841 () Bool)

(assert (=> b!3136551 (= e!1957023 (and tp_is_empty!16845 tp!981841))))

(assert (=> b!3135607 (= tp!981763 e!1957023)))

(assert (= (and b!3135607 ((_ is Cons!35382) (t!234571 s!11993))) b!3136551))

(check-sat (not d!865398) (not b!3136309) (not bm!224816) (not b!3136512) (not b!3136456) (not b!3136261) (not b!3136538) (not b!3136428) (not b!3136029) (not bm!224827) (not d!865434) (not b!3136305) (not b!3136431) (not b!3135868) (not bm!224826) (not d!865430) (not b!3136377) (not bm!224829) (not b!3136544) (not b!3136537) (not b!3136438) (not b!3136443) (not b!3136296) (not bm!224834) (not b!3136530) (not b!3136275) (not b!3136441) (not bm!224841) (not d!865426) (not b!3136032) (not b!3136528) (not d!865396) (not b!3136423) (not b!3136510) (not d!865440) (not d!865410) (not b!3136322) (not d!865432) (not d!865420) (not bm!224815) (not bm!224842) (not b!3136533) (not b!3136298) (not d!865418) (not b!3136062) (not b!3136529) (not b!3136401) (not b!3136052) (not b!3136312) (not b!3136387) (not b!3136442) (not b!3136400) (not bm!224814) (not b!3136050) (not d!865342) (not bm!224812) (not bm!224837) (not d!865390) (not bm!224748) (not b!3136429) (not b!3136446) (not b!3136337) (not bm!224832) (not b!3136343) (not bm!224830) (not bm!224808) (not d!865314) (not b!3136546) (not b!3136511) (not d!865438) (not d!865414) (not b!3136417) (not b!3136536) (not bm!224840) (not b!3136349) (not b!3136030) (not b!3136508) (not b!3136049) (not b!3136452) (not d!865400) (not b!3135862) (not b!3136371) (not b!3136271) (not b!3136445) (not b!3136532) (not bm!224784) (not b!3136381) (not bm!224783) (not b!3136542) (not b!3136470) (not bm!224751) (not b!3136378) (not bm!224839) (not b!3136259) (not b!3136540) (not b!3136264) (not d!865388) (not b!3136504) (not b!3136551) (not b!3136380) (not bm!224809) (not d!865416) (not b!3136288) (not bm!224838) (not b!3136319) (not b!3136295) (not b!3136390) (not b!3136042) (not bm!224817) (not b!3136265) (not b!3136534) (not b!3136294) (not d!865402) (not b!3136455) (not b!3136033) (not b!3136285) (not b!3136506) (not d!865404) (not bm!224813) (not b!3136310) (not bm!224811) (not b!3136313) (not d!865412) (not d!865356) (not b!3136545) (not bm!224831) (not b!3136432) (not b!3136059) (not b!3136278) tp_is_empty!16845 (not bm!224833) (not bm!224807) (not b!3136279) (not bm!224752) (not b!3136039) (not b!3136299) (not d!865442) (not d!865436) (not b!3136541) (not b!3136262) (not b!3136465) (not bm!224750) (not b!3136276) (not d!865392) (not b!3136053) (not b!3136274) (not bm!224749) (not bm!224810) (not b!3136308) (not b!3136250))
(check-sat)
