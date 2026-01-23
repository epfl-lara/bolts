; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282370 () Bool)

(assert start!282370)

(declare-fun b!2899744 () Bool)

(declare-fun e!1831500 () Bool)

(declare-fun e!1831498 () Bool)

(assert (=> b!2899744 (= e!1831500 e!1831498)))

(declare-fun res!1198581 () Bool)

(assert (=> b!2899744 (=> (not res!1198581) (not e!1831498))))

(declare-datatypes ((C!17904 0))(
  ( (C!17905 (val!10986 Int)) )
))
(declare-datatypes ((List!34662 0))(
  ( (Nil!34538) (Cons!34538 (h!39958 C!17904) (t!233705 List!34662)) )
))
(declare-datatypes ((Option!6534 0))(
  ( (None!6533) (Some!6533 (v!34659 List!34662)) )
))
(declare-fun lt!1022040 () Option!6534)

(get-info :version)

(assert (=> b!2899744 (= res!1198581 ((_ is Some!6533) lt!1022040))))

(declare-datatypes ((Regex!8861 0))(
  ( (ElementMatch!8861 (c!472350 C!17904)) (Concat!14182 (regOne!18234 Regex!8861) (regTwo!18234 Regex!8861)) (EmptyExpr!8861) (Star!8861 (reg!9190 Regex!8861)) (EmptyLang!8861) (Union!8861 (regOne!18235 Regex!8861) (regTwo!18235 Regex!8861)) )
))
(declare-fun r!23079 () Regex!8861)

(declare-fun getLanguageWitness!568 (Regex!8861) Option!6534)

(assert (=> b!2899744 (= lt!1022040 (getLanguageWitness!568 (regOne!18234 r!23079)))))

(declare-fun b!2899745 () Bool)

(declare-fun e!1831501 () Bool)

(declare-fun e!1831499 () Bool)

(assert (=> b!2899745 (= e!1831501 (not e!1831499))))

(declare-fun res!1198586 () Bool)

(assert (=> b!2899745 (=> res!1198586 e!1831499)))

(declare-fun matchR!3819 (Regex!8861 List!34662) Bool)

(assert (=> b!2899745 (= res!1198586 (not (matchR!3819 (regOne!18234 r!23079) (v!34659 lt!1022040))))))

(declare-fun lt!1022039 () Option!6534)

(declare-fun get!10482 (Option!6534) List!34662)

(assert (=> b!2899745 (matchR!3819 (regTwo!18234 r!23079) (get!10482 lt!1022039))))

(declare-datatypes ((Unit!48127 0))(
  ( (Unit!48128) )
))
(declare-fun lt!1022038 () Unit!48127)

(declare-fun lemmaGetWitnessMatches!118 (Regex!8861) Unit!48127)

(assert (=> b!2899745 (= lt!1022038 (lemmaGetWitnessMatches!118 (regTwo!18234 r!23079)))))

(assert (=> b!2899745 (matchR!3819 (regOne!18234 r!23079) (get!10482 lt!1022040))))

(declare-fun lt!1022037 () Unit!48127)

(assert (=> b!2899745 (= lt!1022037 (lemmaGetWitnessMatches!118 (regOne!18234 r!23079)))))

(declare-fun b!2899746 () Bool)

(declare-fun e!1831502 () Bool)

(assert (=> b!2899746 (= e!1831502 e!1831500)))

(declare-fun res!1198584 () Bool)

(assert (=> b!2899746 (=> (not res!1198584) (not e!1831500))))

(declare-fun lt!1022036 () Option!6534)

(declare-fun isDefined!5098 (Option!6534) Bool)

(assert (=> b!2899746 (= res!1198584 (isDefined!5098 lt!1022036))))

(assert (=> b!2899746 (= lt!1022036 (getLanguageWitness!568 r!23079))))

(declare-fun b!2899747 () Bool)

(declare-fun res!1198582 () Bool)

(assert (=> b!2899747 (=> (not res!1198582) (not e!1831500))))

(assert (=> b!2899747 (= res!1198582 (and (not ((_ is EmptyExpr!8861) r!23079)) (not ((_ is EmptyLang!8861) r!23079)) (not ((_ is ElementMatch!8861) r!23079)) (not ((_ is Star!8861) r!23079)) (not ((_ is Union!8861) r!23079))))))

(declare-fun b!2899748 () Bool)

(declare-fun e!1831503 () Bool)

(declare-fun tp!930577 () Bool)

(declare-fun tp!930578 () Bool)

(assert (=> b!2899748 (= e!1831503 (and tp!930577 tp!930578))))

(declare-fun b!2899749 () Bool)

(assert (=> b!2899749 (= e!1831498 e!1831501)))

(declare-fun res!1198585 () Bool)

(assert (=> b!2899749 (=> (not res!1198585) (not e!1831501))))

(assert (=> b!2899749 (= res!1198585 ((_ is Some!6533) lt!1022039))))

(assert (=> b!2899749 (= lt!1022039 (getLanguageWitness!568 (regTwo!18234 r!23079)))))

(declare-fun b!2899750 () Bool)

(assert (=> b!2899750 (= e!1831499 (matchR!3819 r!23079 (get!10482 lt!1022036)))))

(declare-fun ++!8259 (List!34662 List!34662) List!34662)

(assert (=> b!2899750 (matchR!3819 r!23079 (++!8259 (v!34659 lt!1022040) (v!34659 lt!1022039)))))

(declare-fun lt!1022035 () Unit!48127)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!146 (Regex!8861 Regex!8861 List!34662 List!34662) Unit!48127)

(assert (=> b!2899750 (= lt!1022035 (lemmaTwoRegexMatchThenConcatMatchesConcatString!146 (regOne!18234 r!23079) (regTwo!18234 r!23079) (v!34659 lt!1022040) (v!34659 lt!1022039)))))

(declare-fun b!2899751 () Bool)

(declare-fun res!1198583 () Bool)

(assert (=> b!2899751 (=> res!1198583 e!1831499)))

(assert (=> b!2899751 (= res!1198583 (not (matchR!3819 (regTwo!18234 r!23079) (v!34659 lt!1022039))))))

(declare-fun b!2899752 () Bool)

(declare-fun tp_is_empty!15309 () Bool)

(assert (=> b!2899752 (= e!1831503 tp_is_empty!15309)))

(declare-fun b!2899753 () Bool)

(declare-fun tp!930576 () Bool)

(declare-fun tp!930579 () Bool)

(assert (=> b!2899753 (= e!1831503 (and tp!930576 tp!930579))))

(declare-fun res!1198587 () Bool)

(assert (=> start!282370 (=> (not res!1198587) (not e!1831502))))

(declare-fun validRegex!3634 (Regex!8861) Bool)

(assert (=> start!282370 (= res!1198587 (validRegex!3634 r!23079))))

(assert (=> start!282370 e!1831502))

(assert (=> start!282370 e!1831503))

(declare-fun b!2899754 () Bool)

(declare-fun tp!930575 () Bool)

(assert (=> b!2899754 (= e!1831503 tp!930575)))

(assert (= (and start!282370 res!1198587) b!2899746))

(assert (= (and b!2899746 res!1198584) b!2899747))

(assert (= (and b!2899747 res!1198582) b!2899744))

(assert (= (and b!2899744 res!1198581) b!2899749))

(assert (= (and b!2899749 res!1198585) b!2899745))

(assert (= (and b!2899745 (not res!1198586)) b!2899751))

(assert (= (and b!2899751 (not res!1198583)) b!2899750))

(assert (= (and start!282370 ((_ is ElementMatch!8861) r!23079)) b!2899752))

(assert (= (and start!282370 ((_ is Concat!14182) r!23079)) b!2899753))

(assert (= (and start!282370 ((_ is Star!8861) r!23079)) b!2899754))

(assert (= (and start!282370 ((_ is Union!8861) r!23079)) b!2899748))

(declare-fun m!3305615 () Bool)

(assert (=> b!2899745 m!3305615))

(declare-fun m!3305617 () Bool)

(assert (=> b!2899745 m!3305617))

(declare-fun m!3305619 () Bool)

(assert (=> b!2899745 m!3305619))

(declare-fun m!3305621 () Bool)

(assert (=> b!2899745 m!3305621))

(assert (=> b!2899745 m!3305615))

(declare-fun m!3305623 () Bool)

(assert (=> b!2899745 m!3305623))

(declare-fun m!3305625 () Bool)

(assert (=> b!2899745 m!3305625))

(assert (=> b!2899745 m!3305617))

(declare-fun m!3305627 () Bool)

(assert (=> b!2899745 m!3305627))

(declare-fun m!3305629 () Bool)

(assert (=> b!2899751 m!3305629))

(declare-fun m!3305631 () Bool)

(assert (=> b!2899750 m!3305631))

(declare-fun m!3305633 () Bool)

(assert (=> b!2899750 m!3305633))

(declare-fun m!3305635 () Bool)

(assert (=> b!2899750 m!3305635))

(declare-fun m!3305637 () Bool)

(assert (=> b!2899750 m!3305637))

(assert (=> b!2899750 m!3305631))

(assert (=> b!2899750 m!3305637))

(declare-fun m!3305639 () Bool)

(assert (=> b!2899750 m!3305639))

(declare-fun m!3305641 () Bool)

(assert (=> b!2899749 m!3305641))

(declare-fun m!3305643 () Bool)

(assert (=> b!2899746 m!3305643))

(declare-fun m!3305645 () Bool)

(assert (=> b!2899746 m!3305645))

(declare-fun m!3305647 () Bool)

(assert (=> start!282370 m!3305647))

(declare-fun m!3305649 () Bool)

(assert (=> b!2899744 m!3305649))

(check-sat (not start!282370) (not b!2899744) (not b!2899746) (not b!2899751) (not b!2899748) (not b!2899749) (not b!2899745) (not b!2899753) (not b!2899750) (not b!2899754) tp_is_empty!15309)
(check-sat)
(get-model)

(declare-fun bm!188882 () Bool)

(declare-fun call!188887 () Bool)

(declare-fun isEmpty!18852 (List!34662) Bool)

(assert (=> bm!188882 (= call!188887 (isEmpty!18852 (v!34659 lt!1022039)))))

(declare-fun b!2899783 () Bool)

(declare-fun e!1831524 () Bool)

(declare-fun head!6402 (List!34662) C!17904)

(assert (=> b!2899783 (= e!1831524 (not (= (head!6402 (v!34659 lt!1022039)) (c!472350 (regTwo!18234 r!23079)))))))

(declare-fun d!835290 () Bool)

(declare-fun e!1831519 () Bool)

(assert (=> d!835290 e!1831519))

(declare-fun c!472357 () Bool)

(assert (=> d!835290 (= c!472357 ((_ is EmptyExpr!8861) (regTwo!18234 r!23079)))))

(declare-fun lt!1022043 () Bool)

(declare-fun e!1831518 () Bool)

(assert (=> d!835290 (= lt!1022043 e!1831518)))

(declare-fun c!472359 () Bool)

(assert (=> d!835290 (= c!472359 (isEmpty!18852 (v!34659 lt!1022039)))))

(assert (=> d!835290 (validRegex!3634 (regTwo!18234 r!23079))))

(assert (=> d!835290 (= (matchR!3819 (regTwo!18234 r!23079) (v!34659 lt!1022039)) lt!1022043)))

(declare-fun b!2899784 () Bool)

(declare-fun res!1198605 () Bool)

(declare-fun e!1831521 () Bool)

(assert (=> b!2899784 (=> res!1198605 e!1831521)))

(declare-fun e!1831520 () Bool)

(assert (=> b!2899784 (= res!1198605 e!1831520)))

(declare-fun res!1198610 () Bool)

(assert (=> b!2899784 (=> (not res!1198610) (not e!1831520))))

(assert (=> b!2899784 (= res!1198610 lt!1022043)))

(declare-fun b!2899785 () Bool)

(declare-fun derivativeStep!2373 (Regex!8861 C!17904) Regex!8861)

(declare-fun tail!4627 (List!34662) List!34662)

(assert (=> b!2899785 (= e!1831518 (matchR!3819 (derivativeStep!2373 (regTwo!18234 r!23079) (head!6402 (v!34659 lt!1022039))) (tail!4627 (v!34659 lt!1022039))))))

(declare-fun b!2899786 () Bool)

(declare-fun e!1831522 () Bool)

(assert (=> b!2899786 (= e!1831521 e!1831522)))

(declare-fun res!1198611 () Bool)

(assert (=> b!2899786 (=> (not res!1198611) (not e!1831522))))

(assert (=> b!2899786 (= res!1198611 (not lt!1022043))))

(declare-fun b!2899787 () Bool)

(assert (=> b!2899787 (= e!1831520 (= (head!6402 (v!34659 lt!1022039)) (c!472350 (regTwo!18234 r!23079))))))

(declare-fun b!2899788 () Bool)

(assert (=> b!2899788 (= e!1831519 (= lt!1022043 call!188887))))

(declare-fun b!2899789 () Bool)

(declare-fun res!1198606 () Bool)

(assert (=> b!2899789 (=> (not res!1198606) (not e!1831520))))

(assert (=> b!2899789 (= res!1198606 (isEmpty!18852 (tail!4627 (v!34659 lt!1022039))))))

(declare-fun b!2899790 () Bool)

(declare-fun res!1198604 () Bool)

(assert (=> b!2899790 (=> res!1198604 e!1831524)))

(assert (=> b!2899790 (= res!1198604 (not (isEmpty!18852 (tail!4627 (v!34659 lt!1022039)))))))

(declare-fun b!2899791 () Bool)

(declare-fun e!1831523 () Bool)

(assert (=> b!2899791 (= e!1831519 e!1831523)))

(declare-fun c!472358 () Bool)

(assert (=> b!2899791 (= c!472358 ((_ is EmptyLang!8861) (regTwo!18234 r!23079)))))

(declare-fun b!2899792 () Bool)

(assert (=> b!2899792 (= e!1831523 (not lt!1022043))))

(declare-fun b!2899793 () Bool)

(assert (=> b!2899793 (= e!1831522 e!1831524)))

(declare-fun res!1198607 () Bool)

(assert (=> b!2899793 (=> res!1198607 e!1831524)))

(assert (=> b!2899793 (= res!1198607 call!188887)))

(declare-fun b!2899794 () Bool)

(declare-fun res!1198608 () Bool)

(assert (=> b!2899794 (=> res!1198608 e!1831521)))

(assert (=> b!2899794 (= res!1198608 (not ((_ is ElementMatch!8861) (regTwo!18234 r!23079))))))

(assert (=> b!2899794 (= e!1831523 e!1831521)))

(declare-fun b!2899795 () Bool)

(declare-fun nullable!2760 (Regex!8861) Bool)

(assert (=> b!2899795 (= e!1831518 (nullable!2760 (regTwo!18234 r!23079)))))

(declare-fun b!2899796 () Bool)

(declare-fun res!1198609 () Bool)

(assert (=> b!2899796 (=> (not res!1198609) (not e!1831520))))

(assert (=> b!2899796 (= res!1198609 (not call!188887))))

(assert (= (and d!835290 c!472359) b!2899795))

(assert (= (and d!835290 (not c!472359)) b!2899785))

(assert (= (and d!835290 c!472357) b!2899788))

(assert (= (and d!835290 (not c!472357)) b!2899791))

(assert (= (and b!2899791 c!472358) b!2899792))

(assert (= (and b!2899791 (not c!472358)) b!2899794))

(assert (= (and b!2899794 (not res!1198608)) b!2899784))

(assert (= (and b!2899784 res!1198610) b!2899796))

(assert (= (and b!2899796 res!1198609) b!2899789))

(assert (= (and b!2899789 res!1198606) b!2899787))

(assert (= (and b!2899784 (not res!1198605)) b!2899786))

(assert (= (and b!2899786 res!1198611) b!2899793))

(assert (= (and b!2899793 (not res!1198607)) b!2899790))

(assert (= (and b!2899790 (not res!1198604)) b!2899783))

(assert (= (or b!2899788 b!2899796 b!2899793) bm!188882))

(declare-fun m!3305653 () Bool)

(assert (=> bm!188882 m!3305653))

(declare-fun m!3305655 () Bool)

(assert (=> b!2899785 m!3305655))

(assert (=> b!2899785 m!3305655))

(declare-fun m!3305657 () Bool)

(assert (=> b!2899785 m!3305657))

(declare-fun m!3305659 () Bool)

(assert (=> b!2899785 m!3305659))

(assert (=> b!2899785 m!3305657))

(assert (=> b!2899785 m!3305659))

(declare-fun m!3305661 () Bool)

(assert (=> b!2899785 m!3305661))

(assert (=> b!2899790 m!3305659))

(assert (=> b!2899790 m!3305659))

(declare-fun m!3305663 () Bool)

(assert (=> b!2899790 m!3305663))

(assert (=> b!2899789 m!3305659))

(assert (=> b!2899789 m!3305659))

(assert (=> b!2899789 m!3305663))

(assert (=> d!835290 m!3305653))

(declare-fun m!3305665 () Bool)

(assert (=> d!835290 m!3305665))

(assert (=> b!2899783 m!3305655))

(declare-fun m!3305667 () Bool)

(assert (=> b!2899795 m!3305667))

(assert (=> b!2899787 m!3305655))

(assert (=> b!2899751 d!835290))

(declare-fun d!835296 () Bool)

(declare-fun isEmpty!18854 (Option!6534) Bool)

(assert (=> d!835296 (= (isDefined!5098 lt!1022036) (not (isEmpty!18854 lt!1022036)))))

(declare-fun bs!524000 () Bool)

(assert (= bs!524000 d!835296))

(declare-fun m!3305669 () Bool)

(assert (=> bs!524000 m!3305669))

(assert (=> b!2899746 d!835296))

(declare-fun b!2899893 () Bool)

(declare-fun e!1831574 () Option!6534)

(assert (=> b!2899893 (= e!1831574 None!6533)))

(declare-fun b!2899894 () Bool)

(declare-fun e!1831573 () Option!6534)

(assert (=> b!2899894 (= e!1831573 (Some!6533 Nil!34538))))

(declare-fun b!2899895 () Bool)

(declare-fun e!1831576 () Option!6534)

(declare-fun e!1831578 () Option!6534)

(assert (=> b!2899895 (= e!1831576 e!1831578)))

(declare-fun lt!1022066 () Option!6534)

(declare-fun call!188900 () Option!6534)

(assert (=> b!2899895 (= lt!1022066 call!188900)))

(declare-fun c!472409 () Bool)

(assert (=> b!2899895 (= c!472409 ((_ is Some!6533) lt!1022066))))

(declare-fun bm!188896 () Bool)

(declare-fun c!472413 () Bool)

(assert (=> bm!188896 (= call!188900 (getLanguageWitness!568 (ite c!472413 (regOne!18235 r!23079) (regTwo!18234 r!23079))))))

(declare-fun b!2899896 () Bool)

(assert (=> b!2899896 (= c!472413 ((_ is Union!8861) r!23079))))

(assert (=> b!2899896 (= e!1831573 e!1831576)))

(declare-fun b!2899897 () Bool)

(declare-fun e!1831580 () Option!6534)

(assert (=> b!2899897 (= e!1831580 None!6533)))

(declare-fun b!2899898 () Bool)

(declare-fun call!188901 () Option!6534)

(assert (=> b!2899898 (= e!1831578 call!188901)))

(declare-fun b!2899899 () Bool)

(declare-fun e!1831575 () Option!6534)

(assert (=> b!2899899 (= e!1831576 e!1831575)))

(declare-fun lt!1022067 () Option!6534)

(assert (=> b!2899899 (= lt!1022067 call!188901)))

(declare-fun c!472414 () Bool)

(assert (=> b!2899899 (= c!472414 ((_ is Some!6533) lt!1022067))))

(declare-fun b!2899900 () Bool)

(declare-fun c!472412 () Bool)

(assert (=> b!2899900 (= c!472412 ((_ is ElementMatch!8861) r!23079))))

(declare-fun e!1831579 () Option!6534)

(assert (=> b!2899900 (= e!1831580 e!1831579)))

(declare-fun b!2899901 () Bool)

(declare-fun e!1831577 () Option!6534)

(assert (=> b!2899901 (= e!1831577 e!1831580)))

(declare-fun c!472408 () Bool)

(assert (=> b!2899901 (= c!472408 ((_ is EmptyLang!8861) r!23079))))

(declare-fun b!2899902 () Bool)

(declare-fun c!472415 () Bool)

(declare-fun lt!1022065 () Option!6534)

(assert (=> b!2899902 (= c!472415 ((_ is Some!6533) lt!1022065))))

(assert (=> b!2899902 (= lt!1022065 call!188900)))

(assert (=> b!2899902 (= e!1831575 e!1831574)))

(declare-fun b!2899903 () Bool)

(assert (=> b!2899903 (= e!1831578 lt!1022066)))

(declare-fun b!2899904 () Bool)

(assert (=> b!2899904 (= e!1831577 (Some!6533 Nil!34538))))

(declare-fun b!2899905 () Bool)

(assert (=> b!2899905 (= e!1831579 e!1831573)))

(declare-fun c!472411 () Bool)

(assert (=> b!2899905 (= c!472411 ((_ is Star!8861) r!23079))))

(declare-fun bm!188895 () Bool)

(assert (=> bm!188895 (= call!188901 (getLanguageWitness!568 (ite c!472413 (regTwo!18235 r!23079) (regOne!18234 r!23079))))))

(declare-fun d!835298 () Bool)

(declare-fun c!472410 () Bool)

(assert (=> d!835298 (= c!472410 ((_ is EmptyExpr!8861) r!23079))))

(assert (=> d!835298 (= (getLanguageWitness!568 r!23079) e!1831577)))

(declare-fun b!2899906 () Bool)

(assert (=> b!2899906 (= e!1831575 None!6533)))

(declare-fun b!2899907 () Bool)

(assert (=> b!2899907 (= e!1831574 (Some!6533 (++!8259 (v!34659 lt!1022067) (v!34659 lt!1022065))))))

(declare-fun b!2899908 () Bool)

(assert (=> b!2899908 (= e!1831579 (Some!6533 (Cons!34538 (c!472350 r!23079) Nil!34538)))))

(assert (= (and d!835298 c!472410) b!2899904))

(assert (= (and d!835298 (not c!472410)) b!2899901))

(assert (= (and b!2899901 c!472408) b!2899897))

(assert (= (and b!2899901 (not c!472408)) b!2899900))

(assert (= (and b!2899900 c!472412) b!2899908))

(assert (= (and b!2899900 (not c!472412)) b!2899905))

(assert (= (and b!2899905 c!472411) b!2899894))

(assert (= (and b!2899905 (not c!472411)) b!2899896))

(assert (= (and b!2899896 c!472413) b!2899895))

(assert (= (and b!2899896 (not c!472413)) b!2899899))

(assert (= (and b!2899895 c!472409) b!2899903))

(assert (= (and b!2899895 (not c!472409)) b!2899898))

(assert (= (and b!2899899 c!472414) b!2899902))

(assert (= (and b!2899899 (not c!472414)) b!2899906))

(assert (= (and b!2899902 c!472415) b!2899907))

(assert (= (and b!2899902 (not c!472415)) b!2899893))

(assert (= (or b!2899898 b!2899899) bm!188895))

(assert (= (or b!2899895 b!2899902) bm!188896))

(declare-fun m!3305699 () Bool)

(assert (=> bm!188896 m!3305699))

(declare-fun m!3305701 () Bool)

(assert (=> bm!188895 m!3305701))

(declare-fun m!3305703 () Bool)

(assert (=> b!2899907 m!3305703))

(assert (=> b!2899746 d!835298))

(declare-fun bm!188903 () Bool)

(declare-fun call!188910 () Bool)

(declare-fun call!188909 () Bool)

(assert (=> bm!188903 (= call!188910 call!188909)))

(declare-fun b!2899955 () Bool)

(declare-fun e!1831609 () Bool)

(assert (=> b!2899955 (= e!1831609 call!188910)))

(declare-fun bm!188904 () Bool)

(declare-fun call!188908 () Bool)

(declare-fun c!472427 () Bool)

(assert (=> bm!188904 (= call!188908 (validRegex!3634 (ite c!472427 (regOne!18235 r!23079) (regOne!18234 r!23079))))))

(declare-fun d!835312 () Bool)

(declare-fun res!1198638 () Bool)

(declare-fun e!1831612 () Bool)

(assert (=> d!835312 (=> res!1198638 e!1831612)))

(assert (=> d!835312 (= res!1198638 ((_ is ElementMatch!8861) r!23079))))

(assert (=> d!835312 (= (validRegex!3634 r!23079) e!1831612)))

(declare-fun c!472426 () Bool)

(declare-fun bm!188905 () Bool)

(assert (=> bm!188905 (= call!188909 (validRegex!3634 (ite c!472426 (reg!9190 r!23079) (ite c!472427 (regTwo!18235 r!23079) (regTwo!18234 r!23079)))))))

(declare-fun b!2899956 () Bool)

(declare-fun res!1198640 () Bool)

(declare-fun e!1831614 () Bool)

(assert (=> b!2899956 (=> (not res!1198640) (not e!1831614))))

(assert (=> b!2899956 (= res!1198640 call!188908)))

(declare-fun e!1831615 () Bool)

(assert (=> b!2899956 (= e!1831615 e!1831614)))

(declare-fun b!2899957 () Bool)

(declare-fun e!1831611 () Bool)

(assert (=> b!2899957 (= e!1831611 call!188909)))

(declare-fun b!2899958 () Bool)

(assert (=> b!2899958 (= e!1831614 call!188910)))

(declare-fun b!2899959 () Bool)

(declare-fun e!1831610 () Bool)

(assert (=> b!2899959 (= e!1831612 e!1831610)))

(assert (=> b!2899959 (= c!472426 ((_ is Star!8861) r!23079))))

(declare-fun b!2899960 () Bool)

(assert (=> b!2899960 (= e!1831610 e!1831611)))

(declare-fun res!1198642 () Bool)

(assert (=> b!2899960 (= res!1198642 (not (nullable!2760 (reg!9190 r!23079))))))

(assert (=> b!2899960 (=> (not res!1198642) (not e!1831611))))

(declare-fun b!2899961 () Bool)

(declare-fun res!1198639 () Bool)

(declare-fun e!1831613 () Bool)

(assert (=> b!2899961 (=> res!1198639 e!1831613)))

(assert (=> b!2899961 (= res!1198639 (not ((_ is Concat!14182) r!23079)))))

(assert (=> b!2899961 (= e!1831615 e!1831613)))

(declare-fun b!2899962 () Bool)

(assert (=> b!2899962 (= e!1831610 e!1831615)))

(assert (=> b!2899962 (= c!472427 ((_ is Union!8861) r!23079))))

(declare-fun b!2899963 () Bool)

(assert (=> b!2899963 (= e!1831613 e!1831609)))

(declare-fun res!1198641 () Bool)

(assert (=> b!2899963 (=> (not res!1198641) (not e!1831609))))

(assert (=> b!2899963 (= res!1198641 call!188908)))

(assert (= (and d!835312 (not res!1198638)) b!2899959))

(assert (= (and b!2899959 c!472426) b!2899960))

(assert (= (and b!2899959 (not c!472426)) b!2899962))

(assert (= (and b!2899960 res!1198642) b!2899957))

(assert (= (and b!2899962 c!472427) b!2899956))

(assert (= (and b!2899962 (not c!472427)) b!2899961))

(assert (= (and b!2899956 res!1198640) b!2899958))

(assert (= (and b!2899961 (not res!1198639)) b!2899963))

(assert (= (and b!2899963 res!1198641) b!2899955))

(assert (= (or b!2899958 b!2899955) bm!188903))

(assert (= (or b!2899956 b!2899963) bm!188904))

(assert (= (or b!2899957 bm!188903) bm!188905))

(declare-fun m!3305705 () Bool)

(assert (=> bm!188904 m!3305705))

(declare-fun m!3305707 () Bool)

(assert (=> bm!188905 m!3305707))

(declare-fun m!3305709 () Bool)

(assert (=> b!2899960 m!3305709))

(assert (=> start!282370 d!835312))

(declare-fun b!2899964 () Bool)

(declare-fun e!1831617 () Option!6534)

(assert (=> b!2899964 (= e!1831617 None!6533)))

(declare-fun b!2899965 () Bool)

(declare-fun e!1831616 () Option!6534)

(assert (=> b!2899965 (= e!1831616 (Some!6533 Nil!34538))))

(declare-fun b!2899966 () Bool)

(declare-fun e!1831619 () Option!6534)

(declare-fun e!1831621 () Option!6534)

(assert (=> b!2899966 (= e!1831619 e!1831621)))

(declare-fun lt!1022072 () Option!6534)

(declare-fun call!188913 () Option!6534)

(assert (=> b!2899966 (= lt!1022072 call!188913)))

(declare-fun c!472429 () Bool)

(assert (=> b!2899966 (= c!472429 ((_ is Some!6533) lt!1022072))))

(declare-fun bm!188909 () Bool)

(declare-fun c!472433 () Bool)

(assert (=> bm!188909 (= call!188913 (getLanguageWitness!568 (ite c!472433 (regOne!18235 (regTwo!18234 r!23079)) (regTwo!18234 (regTwo!18234 r!23079)))))))

(declare-fun b!2899967 () Bool)

(assert (=> b!2899967 (= c!472433 ((_ is Union!8861) (regTwo!18234 r!23079)))))

(assert (=> b!2899967 (= e!1831616 e!1831619)))

(declare-fun b!2899968 () Bool)

(declare-fun e!1831623 () Option!6534)

(assert (=> b!2899968 (= e!1831623 None!6533)))

(declare-fun b!2899969 () Bool)

(declare-fun call!188914 () Option!6534)

(assert (=> b!2899969 (= e!1831621 call!188914)))

(declare-fun b!2899970 () Bool)

(declare-fun e!1831618 () Option!6534)

(assert (=> b!2899970 (= e!1831619 e!1831618)))

(declare-fun lt!1022073 () Option!6534)

(assert (=> b!2899970 (= lt!1022073 call!188914)))

(declare-fun c!472434 () Bool)

(assert (=> b!2899970 (= c!472434 ((_ is Some!6533) lt!1022073))))

(declare-fun b!2899971 () Bool)

(declare-fun c!472432 () Bool)

(assert (=> b!2899971 (= c!472432 ((_ is ElementMatch!8861) (regTwo!18234 r!23079)))))

(declare-fun e!1831622 () Option!6534)

(assert (=> b!2899971 (= e!1831623 e!1831622)))

(declare-fun b!2899972 () Bool)

(declare-fun e!1831620 () Option!6534)

(assert (=> b!2899972 (= e!1831620 e!1831623)))

(declare-fun c!472428 () Bool)

(assert (=> b!2899972 (= c!472428 ((_ is EmptyLang!8861) (regTwo!18234 r!23079)))))

(declare-fun b!2899973 () Bool)

(declare-fun c!472435 () Bool)

(declare-fun lt!1022071 () Option!6534)

(assert (=> b!2899973 (= c!472435 ((_ is Some!6533) lt!1022071))))

(assert (=> b!2899973 (= lt!1022071 call!188913)))

(assert (=> b!2899973 (= e!1831618 e!1831617)))

(declare-fun b!2899974 () Bool)

(assert (=> b!2899974 (= e!1831621 lt!1022072)))

(declare-fun b!2899975 () Bool)

(assert (=> b!2899975 (= e!1831620 (Some!6533 Nil!34538))))

(declare-fun b!2899976 () Bool)

(assert (=> b!2899976 (= e!1831622 e!1831616)))

(declare-fun c!472431 () Bool)

(assert (=> b!2899976 (= c!472431 ((_ is Star!8861) (regTwo!18234 r!23079)))))

(declare-fun bm!188908 () Bool)

(assert (=> bm!188908 (= call!188914 (getLanguageWitness!568 (ite c!472433 (regTwo!18235 (regTwo!18234 r!23079)) (regOne!18234 (regTwo!18234 r!23079)))))))

(declare-fun d!835314 () Bool)

(declare-fun c!472430 () Bool)

(assert (=> d!835314 (= c!472430 ((_ is EmptyExpr!8861) (regTwo!18234 r!23079)))))

(assert (=> d!835314 (= (getLanguageWitness!568 (regTwo!18234 r!23079)) e!1831620)))

(declare-fun b!2899977 () Bool)

(assert (=> b!2899977 (= e!1831618 None!6533)))

(declare-fun b!2899978 () Bool)

(assert (=> b!2899978 (= e!1831617 (Some!6533 (++!8259 (v!34659 lt!1022073) (v!34659 lt!1022071))))))

(declare-fun b!2899979 () Bool)

(assert (=> b!2899979 (= e!1831622 (Some!6533 (Cons!34538 (c!472350 (regTwo!18234 r!23079)) Nil!34538)))))

(assert (= (and d!835314 c!472430) b!2899975))

(assert (= (and d!835314 (not c!472430)) b!2899972))

(assert (= (and b!2899972 c!472428) b!2899968))

(assert (= (and b!2899972 (not c!472428)) b!2899971))

(assert (= (and b!2899971 c!472432) b!2899979))

(assert (= (and b!2899971 (not c!472432)) b!2899976))

(assert (= (and b!2899976 c!472431) b!2899965))

(assert (= (and b!2899976 (not c!472431)) b!2899967))

(assert (= (and b!2899967 c!472433) b!2899966))

(assert (= (and b!2899967 (not c!472433)) b!2899970))

(assert (= (and b!2899966 c!472429) b!2899974))

(assert (= (and b!2899966 (not c!472429)) b!2899969))

(assert (= (and b!2899970 c!472434) b!2899973))

(assert (= (and b!2899970 (not c!472434)) b!2899977))

(assert (= (and b!2899973 c!472435) b!2899978))

(assert (= (and b!2899973 (not c!472435)) b!2899964))

(assert (= (or b!2899969 b!2899970) bm!188908))

(assert (= (or b!2899966 b!2899973) bm!188909))

(declare-fun m!3305711 () Bool)

(assert (=> bm!188909 m!3305711))

(declare-fun m!3305713 () Bool)

(assert (=> bm!188908 m!3305713))

(declare-fun m!3305715 () Bool)

(assert (=> b!2899978 m!3305715))

(assert (=> b!2899749 d!835314))

(declare-fun b!2899980 () Bool)

(declare-fun e!1831625 () Option!6534)

(assert (=> b!2899980 (= e!1831625 None!6533)))

(declare-fun b!2899981 () Bool)

(declare-fun e!1831624 () Option!6534)

(assert (=> b!2899981 (= e!1831624 (Some!6533 Nil!34538))))

(declare-fun b!2899982 () Bool)

(declare-fun e!1831627 () Option!6534)

(declare-fun e!1831629 () Option!6534)

(assert (=> b!2899982 (= e!1831627 e!1831629)))

(declare-fun lt!1022075 () Option!6534)

(declare-fun call!188915 () Option!6534)

(assert (=> b!2899982 (= lt!1022075 call!188915)))

(declare-fun c!472437 () Bool)

(assert (=> b!2899982 (= c!472437 ((_ is Some!6533) lt!1022075))))

(declare-fun bm!188911 () Bool)

(declare-fun c!472441 () Bool)

(assert (=> bm!188911 (= call!188915 (getLanguageWitness!568 (ite c!472441 (regOne!18235 (regOne!18234 r!23079)) (regTwo!18234 (regOne!18234 r!23079)))))))

(declare-fun b!2899983 () Bool)

(assert (=> b!2899983 (= c!472441 ((_ is Union!8861) (regOne!18234 r!23079)))))

(assert (=> b!2899983 (= e!1831624 e!1831627)))

(declare-fun b!2899984 () Bool)

(declare-fun e!1831631 () Option!6534)

(assert (=> b!2899984 (= e!1831631 None!6533)))

(declare-fun b!2899985 () Bool)

(declare-fun call!188916 () Option!6534)

(assert (=> b!2899985 (= e!1831629 call!188916)))

(declare-fun b!2899986 () Bool)

(declare-fun e!1831626 () Option!6534)

(assert (=> b!2899986 (= e!1831627 e!1831626)))

(declare-fun lt!1022076 () Option!6534)

(assert (=> b!2899986 (= lt!1022076 call!188916)))

(declare-fun c!472442 () Bool)

(assert (=> b!2899986 (= c!472442 ((_ is Some!6533) lt!1022076))))

(declare-fun b!2899987 () Bool)

(declare-fun c!472440 () Bool)

(assert (=> b!2899987 (= c!472440 ((_ is ElementMatch!8861) (regOne!18234 r!23079)))))

(declare-fun e!1831630 () Option!6534)

(assert (=> b!2899987 (= e!1831631 e!1831630)))

(declare-fun b!2899988 () Bool)

(declare-fun e!1831628 () Option!6534)

(assert (=> b!2899988 (= e!1831628 e!1831631)))

(declare-fun c!472436 () Bool)

(assert (=> b!2899988 (= c!472436 ((_ is EmptyLang!8861) (regOne!18234 r!23079)))))

(declare-fun b!2899989 () Bool)

(declare-fun c!472443 () Bool)

(declare-fun lt!1022074 () Option!6534)

(assert (=> b!2899989 (= c!472443 ((_ is Some!6533) lt!1022074))))

(assert (=> b!2899989 (= lt!1022074 call!188915)))

(assert (=> b!2899989 (= e!1831626 e!1831625)))

(declare-fun b!2899990 () Bool)

(assert (=> b!2899990 (= e!1831629 lt!1022075)))

(declare-fun b!2899991 () Bool)

(assert (=> b!2899991 (= e!1831628 (Some!6533 Nil!34538))))

(declare-fun b!2899992 () Bool)

(assert (=> b!2899992 (= e!1831630 e!1831624)))

(declare-fun c!472439 () Bool)

(assert (=> b!2899992 (= c!472439 ((_ is Star!8861) (regOne!18234 r!23079)))))

(declare-fun bm!188910 () Bool)

(assert (=> bm!188910 (= call!188916 (getLanguageWitness!568 (ite c!472441 (regTwo!18235 (regOne!18234 r!23079)) (regOne!18234 (regOne!18234 r!23079)))))))

(declare-fun d!835316 () Bool)

(declare-fun c!472438 () Bool)

(assert (=> d!835316 (= c!472438 ((_ is EmptyExpr!8861) (regOne!18234 r!23079)))))

(assert (=> d!835316 (= (getLanguageWitness!568 (regOne!18234 r!23079)) e!1831628)))

(declare-fun b!2899993 () Bool)

(assert (=> b!2899993 (= e!1831626 None!6533)))

(declare-fun b!2899994 () Bool)

(assert (=> b!2899994 (= e!1831625 (Some!6533 (++!8259 (v!34659 lt!1022076) (v!34659 lt!1022074))))))

(declare-fun b!2899995 () Bool)

(assert (=> b!2899995 (= e!1831630 (Some!6533 (Cons!34538 (c!472350 (regOne!18234 r!23079)) Nil!34538)))))

(assert (= (and d!835316 c!472438) b!2899991))

(assert (= (and d!835316 (not c!472438)) b!2899988))

(assert (= (and b!2899988 c!472436) b!2899984))

(assert (= (and b!2899988 (not c!472436)) b!2899987))

(assert (= (and b!2899987 c!472440) b!2899995))

(assert (= (and b!2899987 (not c!472440)) b!2899992))

(assert (= (and b!2899992 c!472439) b!2899981))

(assert (= (and b!2899992 (not c!472439)) b!2899983))

(assert (= (and b!2899983 c!472441) b!2899982))

(assert (= (and b!2899983 (not c!472441)) b!2899986))

(assert (= (and b!2899982 c!472437) b!2899990))

(assert (= (and b!2899982 (not c!472437)) b!2899985))

(assert (= (and b!2899986 c!472442) b!2899989))

(assert (= (and b!2899986 (not c!472442)) b!2899993))

(assert (= (and b!2899989 c!472443) b!2899994))

(assert (= (and b!2899989 (not c!472443)) b!2899980))

(assert (= (or b!2899985 b!2899986) bm!188910))

(assert (= (or b!2899982 b!2899989) bm!188911))

(declare-fun m!3305717 () Bool)

(assert (=> bm!188911 m!3305717))

(declare-fun m!3305719 () Bool)

(assert (=> bm!188910 m!3305719))

(declare-fun m!3305721 () Bool)

(assert (=> b!2899994 m!3305721))

(assert (=> b!2899744 d!835316))

(declare-fun d!835318 () Bool)

(assert (=> d!835318 (matchR!3819 (Concat!14182 (regOne!18234 r!23079) (regTwo!18234 r!23079)) (++!8259 (v!34659 lt!1022040) (v!34659 lt!1022039)))))

(declare-fun lt!1022081 () Unit!48127)

(declare-fun choose!17084 (Regex!8861 Regex!8861 List!34662 List!34662) Unit!48127)

(assert (=> d!835318 (= lt!1022081 (choose!17084 (regOne!18234 r!23079) (regTwo!18234 r!23079) (v!34659 lt!1022040) (v!34659 lt!1022039)))))

(declare-fun e!1831648 () Bool)

(assert (=> d!835318 e!1831648))

(declare-fun res!1198661 () Bool)

(assert (=> d!835318 (=> (not res!1198661) (not e!1831648))))

(assert (=> d!835318 (= res!1198661 (validRegex!3634 (regOne!18234 r!23079)))))

(assert (=> d!835318 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!146 (regOne!18234 r!23079) (regTwo!18234 r!23079) (v!34659 lt!1022040) (v!34659 lt!1022039)) lt!1022081)))

(declare-fun b!2900026 () Bool)

(assert (=> b!2900026 (= e!1831648 (validRegex!3634 (regTwo!18234 r!23079)))))

(assert (= (and d!835318 res!1198661) b!2900026))

(assert (=> d!835318 m!3305631))

(assert (=> d!835318 m!3305631))

(declare-fun m!3305749 () Bool)

(assert (=> d!835318 m!3305749))

(declare-fun m!3305751 () Bool)

(assert (=> d!835318 m!3305751))

(declare-fun m!3305753 () Bool)

(assert (=> d!835318 m!3305753))

(assert (=> b!2900026 m!3305665))

(assert (=> b!2899750 d!835318))

(declare-fun bm!188915 () Bool)

(declare-fun call!188920 () Bool)

(assert (=> bm!188915 (= call!188920 (isEmpty!18852 (++!8259 (v!34659 lt!1022040) (v!34659 lt!1022039))))))

(declare-fun b!2900041 () Bool)

(declare-fun e!1831662 () Bool)

(assert (=> b!2900041 (= e!1831662 (not (= (head!6402 (++!8259 (v!34659 lt!1022040) (v!34659 lt!1022039))) (c!472350 r!23079))))))

(declare-fun d!835324 () Bool)

(declare-fun e!1831657 () Bool)

(assert (=> d!835324 e!1831657))

(declare-fun c!472453 () Bool)

(assert (=> d!835324 (= c!472453 ((_ is EmptyExpr!8861) r!23079))))

(declare-fun lt!1022083 () Bool)

(declare-fun e!1831656 () Bool)

(assert (=> d!835324 (= lt!1022083 e!1831656)))

(declare-fun c!472455 () Bool)

(assert (=> d!835324 (= c!472455 (isEmpty!18852 (++!8259 (v!34659 lt!1022040) (v!34659 lt!1022039))))))

(assert (=> d!835324 (validRegex!3634 r!23079)))

(assert (=> d!835324 (= (matchR!3819 r!23079 (++!8259 (v!34659 lt!1022040) (v!34659 lt!1022039))) lt!1022083)))

(declare-fun b!2900042 () Bool)

(declare-fun res!1198671 () Bool)

(declare-fun e!1831659 () Bool)

(assert (=> b!2900042 (=> res!1198671 e!1831659)))

(declare-fun e!1831658 () Bool)

(assert (=> b!2900042 (= res!1198671 e!1831658)))

(declare-fun res!1198676 () Bool)

(assert (=> b!2900042 (=> (not res!1198676) (not e!1831658))))

(assert (=> b!2900042 (= res!1198676 lt!1022083)))

(declare-fun b!2900043 () Bool)

(assert (=> b!2900043 (= e!1831656 (matchR!3819 (derivativeStep!2373 r!23079 (head!6402 (++!8259 (v!34659 lt!1022040) (v!34659 lt!1022039)))) (tail!4627 (++!8259 (v!34659 lt!1022040) (v!34659 lt!1022039)))))))

(declare-fun b!2900044 () Bool)

(declare-fun e!1831660 () Bool)

(assert (=> b!2900044 (= e!1831659 e!1831660)))

(declare-fun res!1198677 () Bool)

(assert (=> b!2900044 (=> (not res!1198677) (not e!1831660))))

(assert (=> b!2900044 (= res!1198677 (not lt!1022083))))

(declare-fun b!2900045 () Bool)

(assert (=> b!2900045 (= e!1831658 (= (head!6402 (++!8259 (v!34659 lt!1022040) (v!34659 lt!1022039))) (c!472350 r!23079)))))

(declare-fun b!2900046 () Bool)

(assert (=> b!2900046 (= e!1831657 (= lt!1022083 call!188920))))

(declare-fun b!2900047 () Bool)

(declare-fun res!1198672 () Bool)

(assert (=> b!2900047 (=> (not res!1198672) (not e!1831658))))

(assert (=> b!2900047 (= res!1198672 (isEmpty!18852 (tail!4627 (++!8259 (v!34659 lt!1022040) (v!34659 lt!1022039)))))))

(declare-fun b!2900048 () Bool)

(declare-fun res!1198670 () Bool)

(assert (=> b!2900048 (=> res!1198670 e!1831662)))

(assert (=> b!2900048 (= res!1198670 (not (isEmpty!18852 (tail!4627 (++!8259 (v!34659 lt!1022040) (v!34659 lt!1022039))))))))

(declare-fun b!2900049 () Bool)

(declare-fun e!1831661 () Bool)

(assert (=> b!2900049 (= e!1831657 e!1831661)))

(declare-fun c!472454 () Bool)

(assert (=> b!2900049 (= c!472454 ((_ is EmptyLang!8861) r!23079))))

(declare-fun b!2900050 () Bool)

(assert (=> b!2900050 (= e!1831661 (not lt!1022083))))

(declare-fun b!2900051 () Bool)

(assert (=> b!2900051 (= e!1831660 e!1831662)))

(declare-fun res!1198673 () Bool)

(assert (=> b!2900051 (=> res!1198673 e!1831662)))

(assert (=> b!2900051 (= res!1198673 call!188920)))

(declare-fun b!2900052 () Bool)

(declare-fun res!1198674 () Bool)

(assert (=> b!2900052 (=> res!1198674 e!1831659)))

(assert (=> b!2900052 (= res!1198674 (not ((_ is ElementMatch!8861) r!23079)))))

(assert (=> b!2900052 (= e!1831661 e!1831659)))

(declare-fun b!2900053 () Bool)

(assert (=> b!2900053 (= e!1831656 (nullable!2760 r!23079))))

(declare-fun b!2900054 () Bool)

(declare-fun res!1198675 () Bool)

(assert (=> b!2900054 (=> (not res!1198675) (not e!1831658))))

(assert (=> b!2900054 (= res!1198675 (not call!188920))))

(assert (= (and d!835324 c!472455) b!2900053))

(assert (= (and d!835324 (not c!472455)) b!2900043))

(assert (= (and d!835324 c!472453) b!2900046))

(assert (= (and d!835324 (not c!472453)) b!2900049))

(assert (= (and b!2900049 c!472454) b!2900050))

(assert (= (and b!2900049 (not c!472454)) b!2900052))

(assert (= (and b!2900052 (not res!1198674)) b!2900042))

(assert (= (and b!2900042 res!1198676) b!2900054))

(assert (= (and b!2900054 res!1198675) b!2900047))

(assert (= (and b!2900047 res!1198672) b!2900045))

(assert (= (and b!2900042 (not res!1198671)) b!2900044))

(assert (= (and b!2900044 res!1198677) b!2900051))

(assert (= (and b!2900051 (not res!1198673)) b!2900048))

(assert (= (and b!2900048 (not res!1198670)) b!2900041))

(assert (= (or b!2900046 b!2900054 b!2900051) bm!188915))

(assert (=> bm!188915 m!3305631))

(declare-fun m!3305769 () Bool)

(assert (=> bm!188915 m!3305769))

(assert (=> b!2900043 m!3305631))

(declare-fun m!3305771 () Bool)

(assert (=> b!2900043 m!3305771))

(assert (=> b!2900043 m!3305771))

(declare-fun m!3305773 () Bool)

(assert (=> b!2900043 m!3305773))

(assert (=> b!2900043 m!3305631))

(declare-fun m!3305775 () Bool)

(assert (=> b!2900043 m!3305775))

(assert (=> b!2900043 m!3305773))

(assert (=> b!2900043 m!3305775))

(declare-fun m!3305777 () Bool)

(assert (=> b!2900043 m!3305777))

(assert (=> b!2900048 m!3305631))

(assert (=> b!2900048 m!3305775))

(assert (=> b!2900048 m!3305775))

(declare-fun m!3305779 () Bool)

(assert (=> b!2900048 m!3305779))

(assert (=> b!2900047 m!3305631))

(assert (=> b!2900047 m!3305775))

(assert (=> b!2900047 m!3305775))

(assert (=> b!2900047 m!3305779))

(assert (=> d!835324 m!3305631))

(assert (=> d!835324 m!3305769))

(assert (=> d!835324 m!3305647))

(assert (=> b!2900041 m!3305631))

(assert (=> b!2900041 m!3305771))

(declare-fun m!3305781 () Bool)

(assert (=> b!2900053 m!3305781))

(assert (=> b!2900045 m!3305631))

(assert (=> b!2900045 m!3305771))

(assert (=> b!2899750 d!835324))

(declare-fun d!835328 () Bool)

(declare-fun e!1831689 () Bool)

(assert (=> d!835328 e!1831689))

(declare-fun res!1198693 () Bool)

(assert (=> d!835328 (=> (not res!1198693) (not e!1831689))))

(declare-fun lt!1022089 () List!34662)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4733 (List!34662) (InoxSet C!17904))

(assert (=> d!835328 (= res!1198693 (= (content!4733 lt!1022089) ((_ map or) (content!4733 (v!34659 lt!1022040)) (content!4733 (v!34659 lt!1022039)))))))

(declare-fun e!1831690 () List!34662)

(assert (=> d!835328 (= lt!1022089 e!1831690)))

(declare-fun c!472470 () Bool)

(assert (=> d!835328 (= c!472470 ((_ is Nil!34538) (v!34659 lt!1022040)))))

(assert (=> d!835328 (= (++!8259 (v!34659 lt!1022040) (v!34659 lt!1022039)) lt!1022089)))

(declare-fun b!2900098 () Bool)

(assert (=> b!2900098 (= e!1831690 (Cons!34538 (h!39958 (v!34659 lt!1022040)) (++!8259 (t!233705 (v!34659 lt!1022040)) (v!34659 lt!1022039))))))

(declare-fun b!2900100 () Bool)

(assert (=> b!2900100 (= e!1831689 (or (not (= (v!34659 lt!1022039) Nil!34538)) (= lt!1022089 (v!34659 lt!1022040))))))

(declare-fun b!2900099 () Bool)

(declare-fun res!1198692 () Bool)

(assert (=> b!2900099 (=> (not res!1198692) (not e!1831689))))

(declare-fun size!26352 (List!34662) Int)

(assert (=> b!2900099 (= res!1198692 (= (size!26352 lt!1022089) (+ (size!26352 (v!34659 lt!1022040)) (size!26352 (v!34659 lt!1022039)))))))

(declare-fun b!2900097 () Bool)

(assert (=> b!2900097 (= e!1831690 (v!34659 lt!1022039))))

(assert (= (and d!835328 c!472470) b!2900097))

(assert (= (and d!835328 (not c!472470)) b!2900098))

(assert (= (and d!835328 res!1198693) b!2900099))

(assert (= (and b!2900099 res!1198692) b!2900100))

(declare-fun m!3305789 () Bool)

(assert (=> d!835328 m!3305789))

(declare-fun m!3305791 () Bool)

(assert (=> d!835328 m!3305791))

(declare-fun m!3305793 () Bool)

(assert (=> d!835328 m!3305793))

(declare-fun m!3305795 () Bool)

(assert (=> b!2900098 m!3305795))

(declare-fun m!3305797 () Bool)

(assert (=> b!2900099 m!3305797))

(declare-fun m!3305799 () Bool)

(assert (=> b!2900099 m!3305799))

(declare-fun m!3305801 () Bool)

(assert (=> b!2900099 m!3305801))

(assert (=> b!2899750 d!835328))

(declare-fun bm!188924 () Bool)

(declare-fun call!188929 () Bool)

(assert (=> bm!188924 (= call!188929 (isEmpty!18852 (get!10482 lt!1022036)))))

(declare-fun b!2900101 () Bool)

(declare-fun e!1831697 () Bool)

(assert (=> b!2900101 (= e!1831697 (not (= (head!6402 (get!10482 lt!1022036)) (c!472350 r!23079))))))

(declare-fun d!835332 () Bool)

(declare-fun e!1831692 () Bool)

(assert (=> d!835332 e!1831692))

(declare-fun c!472471 () Bool)

(assert (=> d!835332 (= c!472471 ((_ is EmptyExpr!8861) r!23079))))

(declare-fun lt!1022090 () Bool)

(declare-fun e!1831691 () Bool)

(assert (=> d!835332 (= lt!1022090 e!1831691)))

(declare-fun c!472473 () Bool)

(assert (=> d!835332 (= c!472473 (isEmpty!18852 (get!10482 lt!1022036)))))

(assert (=> d!835332 (validRegex!3634 r!23079)))

(assert (=> d!835332 (= (matchR!3819 r!23079 (get!10482 lt!1022036)) lt!1022090)))

(declare-fun b!2900102 () Bool)

(declare-fun res!1198695 () Bool)

(declare-fun e!1831694 () Bool)

(assert (=> b!2900102 (=> res!1198695 e!1831694)))

(declare-fun e!1831693 () Bool)

(assert (=> b!2900102 (= res!1198695 e!1831693)))

(declare-fun res!1198700 () Bool)

(assert (=> b!2900102 (=> (not res!1198700) (not e!1831693))))

(assert (=> b!2900102 (= res!1198700 lt!1022090)))

(declare-fun b!2900103 () Bool)

(assert (=> b!2900103 (= e!1831691 (matchR!3819 (derivativeStep!2373 r!23079 (head!6402 (get!10482 lt!1022036))) (tail!4627 (get!10482 lt!1022036))))))

(declare-fun b!2900104 () Bool)

(declare-fun e!1831695 () Bool)

(assert (=> b!2900104 (= e!1831694 e!1831695)))

(declare-fun res!1198701 () Bool)

(assert (=> b!2900104 (=> (not res!1198701) (not e!1831695))))

(assert (=> b!2900104 (= res!1198701 (not lt!1022090))))

(declare-fun b!2900105 () Bool)

(assert (=> b!2900105 (= e!1831693 (= (head!6402 (get!10482 lt!1022036)) (c!472350 r!23079)))))

(declare-fun b!2900106 () Bool)

(assert (=> b!2900106 (= e!1831692 (= lt!1022090 call!188929))))

(declare-fun b!2900107 () Bool)

(declare-fun res!1198696 () Bool)

(assert (=> b!2900107 (=> (not res!1198696) (not e!1831693))))

(assert (=> b!2900107 (= res!1198696 (isEmpty!18852 (tail!4627 (get!10482 lt!1022036))))))

(declare-fun b!2900108 () Bool)

(declare-fun res!1198694 () Bool)

(assert (=> b!2900108 (=> res!1198694 e!1831697)))

(assert (=> b!2900108 (= res!1198694 (not (isEmpty!18852 (tail!4627 (get!10482 lt!1022036)))))))

(declare-fun b!2900109 () Bool)

(declare-fun e!1831696 () Bool)

(assert (=> b!2900109 (= e!1831692 e!1831696)))

(declare-fun c!472472 () Bool)

(assert (=> b!2900109 (= c!472472 ((_ is EmptyLang!8861) r!23079))))

(declare-fun b!2900110 () Bool)

(assert (=> b!2900110 (= e!1831696 (not lt!1022090))))

(declare-fun b!2900111 () Bool)

(assert (=> b!2900111 (= e!1831695 e!1831697)))

(declare-fun res!1198697 () Bool)

(assert (=> b!2900111 (=> res!1198697 e!1831697)))

(assert (=> b!2900111 (= res!1198697 call!188929)))

(declare-fun b!2900112 () Bool)

(declare-fun res!1198698 () Bool)

(assert (=> b!2900112 (=> res!1198698 e!1831694)))

(assert (=> b!2900112 (= res!1198698 (not ((_ is ElementMatch!8861) r!23079)))))

(assert (=> b!2900112 (= e!1831696 e!1831694)))

(declare-fun b!2900113 () Bool)

(assert (=> b!2900113 (= e!1831691 (nullable!2760 r!23079))))

(declare-fun b!2900114 () Bool)

(declare-fun res!1198699 () Bool)

(assert (=> b!2900114 (=> (not res!1198699) (not e!1831693))))

(assert (=> b!2900114 (= res!1198699 (not call!188929))))

(assert (= (and d!835332 c!472473) b!2900113))

(assert (= (and d!835332 (not c!472473)) b!2900103))

(assert (= (and d!835332 c!472471) b!2900106))

(assert (= (and d!835332 (not c!472471)) b!2900109))

(assert (= (and b!2900109 c!472472) b!2900110))

(assert (= (and b!2900109 (not c!472472)) b!2900112))

(assert (= (and b!2900112 (not res!1198698)) b!2900102))

(assert (= (and b!2900102 res!1198700) b!2900114))

(assert (= (and b!2900114 res!1198699) b!2900107))

(assert (= (and b!2900107 res!1198696) b!2900105))

(assert (= (and b!2900102 (not res!1198695)) b!2900104))

(assert (= (and b!2900104 res!1198701) b!2900111))

(assert (= (and b!2900111 (not res!1198697)) b!2900108))

(assert (= (and b!2900108 (not res!1198694)) b!2900101))

(assert (= (or b!2900106 b!2900114 b!2900111) bm!188924))

(assert (=> bm!188924 m!3305637))

(declare-fun m!3305803 () Bool)

(assert (=> bm!188924 m!3305803))

(assert (=> b!2900103 m!3305637))

(declare-fun m!3305805 () Bool)

(assert (=> b!2900103 m!3305805))

(assert (=> b!2900103 m!3305805))

(declare-fun m!3305807 () Bool)

(assert (=> b!2900103 m!3305807))

(assert (=> b!2900103 m!3305637))

(declare-fun m!3305809 () Bool)

(assert (=> b!2900103 m!3305809))

(assert (=> b!2900103 m!3305807))

(assert (=> b!2900103 m!3305809))

(declare-fun m!3305811 () Bool)

(assert (=> b!2900103 m!3305811))

(assert (=> b!2900108 m!3305637))

(assert (=> b!2900108 m!3305809))

(assert (=> b!2900108 m!3305809))

(declare-fun m!3305813 () Bool)

(assert (=> b!2900108 m!3305813))

(assert (=> b!2900107 m!3305637))

(assert (=> b!2900107 m!3305809))

(assert (=> b!2900107 m!3305809))

(assert (=> b!2900107 m!3305813))

(assert (=> d!835332 m!3305637))

(assert (=> d!835332 m!3305803))

(assert (=> d!835332 m!3305647))

(assert (=> b!2900101 m!3305637))

(assert (=> b!2900101 m!3305805))

(assert (=> b!2900113 m!3305781))

(assert (=> b!2900105 m!3305637))

(assert (=> b!2900105 m!3305805))

(assert (=> b!2899750 d!835332))

(declare-fun d!835334 () Bool)

(assert (=> d!835334 (= (get!10482 lt!1022036) (v!34659 lt!1022036))))

(assert (=> b!2899750 d!835334))

(declare-fun d!835336 () Bool)

(assert (=> d!835336 (= (get!10482 lt!1022039) (v!34659 lt!1022039))))

(assert (=> b!2899745 d!835336))

(declare-fun d!835338 () Bool)

(assert (=> d!835338 (matchR!3819 (regTwo!18234 r!23079) (get!10482 (getLanguageWitness!568 (regTwo!18234 r!23079))))))

(declare-fun lt!1022095 () Unit!48127)

(declare-fun choose!17085 (Regex!8861) Unit!48127)

(assert (=> d!835338 (= lt!1022095 (choose!17085 (regTwo!18234 r!23079)))))

(assert (=> d!835338 (validRegex!3634 (regTwo!18234 r!23079))))

(assert (=> d!835338 (= (lemmaGetWitnessMatches!118 (regTwo!18234 r!23079)) lt!1022095)))

(declare-fun bs!524003 () Bool)

(assert (= bs!524003 d!835338))

(assert (=> bs!524003 m!3305641))

(assert (=> bs!524003 m!3305665))

(assert (=> bs!524003 m!3305641))

(declare-fun m!3305847 () Bool)

(assert (=> bs!524003 m!3305847))

(assert (=> bs!524003 m!3305847))

(declare-fun m!3305849 () Bool)

(assert (=> bs!524003 m!3305849))

(declare-fun m!3305851 () Bool)

(assert (=> bs!524003 m!3305851))

(assert (=> b!2899745 d!835338))

(declare-fun d!835346 () Bool)

(assert (=> d!835346 (= (get!10482 lt!1022040) (v!34659 lt!1022040))))

(assert (=> b!2899745 d!835346))

(declare-fun bm!188930 () Bool)

(declare-fun call!188935 () Bool)

(assert (=> bm!188930 (= call!188935 (isEmpty!18852 (get!10482 lt!1022039)))))

(declare-fun b!2900152 () Bool)

(declare-fun e!1831725 () Bool)

(assert (=> b!2900152 (= e!1831725 (not (= (head!6402 (get!10482 lt!1022039)) (c!472350 (regTwo!18234 r!23079)))))))

(declare-fun d!835348 () Bool)

(declare-fun e!1831720 () Bool)

(assert (=> d!835348 e!1831720))

(declare-fun c!472482 () Bool)

(assert (=> d!835348 (= c!472482 ((_ is EmptyExpr!8861) (regTwo!18234 r!23079)))))

(declare-fun lt!1022096 () Bool)

(declare-fun e!1831719 () Bool)

(assert (=> d!835348 (= lt!1022096 e!1831719)))

(declare-fun c!472484 () Bool)

(assert (=> d!835348 (= c!472484 (isEmpty!18852 (get!10482 lt!1022039)))))

(assert (=> d!835348 (validRegex!3634 (regTwo!18234 r!23079))))

(assert (=> d!835348 (= (matchR!3819 (regTwo!18234 r!23079) (get!10482 lt!1022039)) lt!1022096)))

(declare-fun b!2900153 () Bool)

(declare-fun res!1198724 () Bool)

(declare-fun e!1831722 () Bool)

(assert (=> b!2900153 (=> res!1198724 e!1831722)))

(declare-fun e!1831721 () Bool)

(assert (=> b!2900153 (= res!1198724 e!1831721)))

(declare-fun res!1198729 () Bool)

(assert (=> b!2900153 (=> (not res!1198729) (not e!1831721))))

(assert (=> b!2900153 (= res!1198729 lt!1022096)))

(declare-fun b!2900154 () Bool)

(assert (=> b!2900154 (= e!1831719 (matchR!3819 (derivativeStep!2373 (regTwo!18234 r!23079) (head!6402 (get!10482 lt!1022039))) (tail!4627 (get!10482 lt!1022039))))))

(declare-fun b!2900155 () Bool)

(declare-fun e!1831723 () Bool)

(assert (=> b!2900155 (= e!1831722 e!1831723)))

(declare-fun res!1198730 () Bool)

(assert (=> b!2900155 (=> (not res!1198730) (not e!1831723))))

(assert (=> b!2900155 (= res!1198730 (not lt!1022096))))

(declare-fun b!2900156 () Bool)

(assert (=> b!2900156 (= e!1831721 (= (head!6402 (get!10482 lt!1022039)) (c!472350 (regTwo!18234 r!23079))))))

(declare-fun b!2900157 () Bool)

(assert (=> b!2900157 (= e!1831720 (= lt!1022096 call!188935))))

(declare-fun b!2900158 () Bool)

(declare-fun res!1198725 () Bool)

(assert (=> b!2900158 (=> (not res!1198725) (not e!1831721))))

(assert (=> b!2900158 (= res!1198725 (isEmpty!18852 (tail!4627 (get!10482 lt!1022039))))))

(declare-fun b!2900159 () Bool)

(declare-fun res!1198723 () Bool)

(assert (=> b!2900159 (=> res!1198723 e!1831725)))

(assert (=> b!2900159 (= res!1198723 (not (isEmpty!18852 (tail!4627 (get!10482 lt!1022039)))))))

(declare-fun b!2900160 () Bool)

(declare-fun e!1831724 () Bool)

(assert (=> b!2900160 (= e!1831720 e!1831724)))

(declare-fun c!472483 () Bool)

(assert (=> b!2900160 (= c!472483 ((_ is EmptyLang!8861) (regTwo!18234 r!23079)))))

(declare-fun b!2900161 () Bool)

(assert (=> b!2900161 (= e!1831724 (not lt!1022096))))

(declare-fun b!2900162 () Bool)

(assert (=> b!2900162 (= e!1831723 e!1831725)))

(declare-fun res!1198726 () Bool)

(assert (=> b!2900162 (=> res!1198726 e!1831725)))

(assert (=> b!2900162 (= res!1198726 call!188935)))

(declare-fun b!2900163 () Bool)

(declare-fun res!1198727 () Bool)

(assert (=> b!2900163 (=> res!1198727 e!1831722)))

(assert (=> b!2900163 (= res!1198727 (not ((_ is ElementMatch!8861) (regTwo!18234 r!23079))))))

(assert (=> b!2900163 (= e!1831724 e!1831722)))

(declare-fun b!2900164 () Bool)

(assert (=> b!2900164 (= e!1831719 (nullable!2760 (regTwo!18234 r!23079)))))

(declare-fun b!2900165 () Bool)

(declare-fun res!1198728 () Bool)

(assert (=> b!2900165 (=> (not res!1198728) (not e!1831721))))

(assert (=> b!2900165 (= res!1198728 (not call!188935))))

(assert (= (and d!835348 c!472484) b!2900164))

(assert (= (and d!835348 (not c!472484)) b!2900154))

(assert (= (and d!835348 c!472482) b!2900157))

(assert (= (and d!835348 (not c!472482)) b!2900160))

(assert (= (and b!2900160 c!472483) b!2900161))

(assert (= (and b!2900160 (not c!472483)) b!2900163))

(assert (= (and b!2900163 (not res!1198727)) b!2900153))

(assert (= (and b!2900153 res!1198729) b!2900165))

(assert (= (and b!2900165 res!1198728) b!2900158))

(assert (= (and b!2900158 res!1198725) b!2900156))

(assert (= (and b!2900153 (not res!1198724)) b!2900155))

(assert (= (and b!2900155 res!1198730) b!2900162))

(assert (= (and b!2900162 (not res!1198726)) b!2900159))

(assert (= (and b!2900159 (not res!1198723)) b!2900152))

(assert (= (or b!2900157 b!2900165 b!2900162) bm!188930))

(assert (=> bm!188930 m!3305615))

(declare-fun m!3305853 () Bool)

(assert (=> bm!188930 m!3305853))

(assert (=> b!2900154 m!3305615))

(declare-fun m!3305855 () Bool)

(assert (=> b!2900154 m!3305855))

(assert (=> b!2900154 m!3305855))

(declare-fun m!3305857 () Bool)

(assert (=> b!2900154 m!3305857))

(assert (=> b!2900154 m!3305615))

(declare-fun m!3305859 () Bool)

(assert (=> b!2900154 m!3305859))

(assert (=> b!2900154 m!3305857))

(assert (=> b!2900154 m!3305859))

(declare-fun m!3305861 () Bool)

(assert (=> b!2900154 m!3305861))

(assert (=> b!2900159 m!3305615))

(assert (=> b!2900159 m!3305859))

(assert (=> b!2900159 m!3305859))

(declare-fun m!3305863 () Bool)

(assert (=> b!2900159 m!3305863))

(assert (=> b!2900158 m!3305615))

(assert (=> b!2900158 m!3305859))

(assert (=> b!2900158 m!3305859))

(assert (=> b!2900158 m!3305863))

(assert (=> d!835348 m!3305615))

(assert (=> d!835348 m!3305853))

(assert (=> d!835348 m!3305665))

(assert (=> b!2900152 m!3305615))

(assert (=> b!2900152 m!3305855))

(assert (=> b!2900164 m!3305667))

(assert (=> b!2900156 m!3305615))

(assert (=> b!2900156 m!3305855))

(assert (=> b!2899745 d!835348))

(declare-fun d!835350 () Bool)

(assert (=> d!835350 (matchR!3819 (regOne!18234 r!23079) (get!10482 (getLanguageWitness!568 (regOne!18234 r!23079))))))

(declare-fun lt!1022097 () Unit!48127)

(assert (=> d!835350 (= lt!1022097 (choose!17085 (regOne!18234 r!23079)))))

(assert (=> d!835350 (validRegex!3634 (regOne!18234 r!23079))))

(assert (=> d!835350 (= (lemmaGetWitnessMatches!118 (regOne!18234 r!23079)) lt!1022097)))

(declare-fun bs!524004 () Bool)

(assert (= bs!524004 d!835350))

(assert (=> bs!524004 m!3305649))

(assert (=> bs!524004 m!3305753))

(assert (=> bs!524004 m!3305649))

(declare-fun m!3305865 () Bool)

(assert (=> bs!524004 m!3305865))

(assert (=> bs!524004 m!3305865))

(declare-fun m!3305867 () Bool)

(assert (=> bs!524004 m!3305867))

(declare-fun m!3305869 () Bool)

(assert (=> bs!524004 m!3305869))

(assert (=> b!2899745 d!835350))

(declare-fun bm!188931 () Bool)

(declare-fun call!188936 () Bool)

(assert (=> bm!188931 (= call!188936 (isEmpty!18852 (v!34659 lt!1022040)))))

(declare-fun b!2900166 () Bool)

(declare-fun e!1831732 () Bool)

(assert (=> b!2900166 (= e!1831732 (not (= (head!6402 (v!34659 lt!1022040)) (c!472350 (regOne!18234 r!23079)))))))

(declare-fun d!835352 () Bool)

(declare-fun e!1831727 () Bool)

(assert (=> d!835352 e!1831727))

(declare-fun c!472485 () Bool)

(assert (=> d!835352 (= c!472485 ((_ is EmptyExpr!8861) (regOne!18234 r!23079)))))

(declare-fun lt!1022098 () Bool)

(declare-fun e!1831726 () Bool)

(assert (=> d!835352 (= lt!1022098 e!1831726)))

(declare-fun c!472487 () Bool)

(assert (=> d!835352 (= c!472487 (isEmpty!18852 (v!34659 lt!1022040)))))

(assert (=> d!835352 (validRegex!3634 (regOne!18234 r!23079))))

(assert (=> d!835352 (= (matchR!3819 (regOne!18234 r!23079) (v!34659 lt!1022040)) lt!1022098)))

(declare-fun b!2900167 () Bool)

(declare-fun res!1198732 () Bool)

(declare-fun e!1831729 () Bool)

(assert (=> b!2900167 (=> res!1198732 e!1831729)))

(declare-fun e!1831728 () Bool)

(assert (=> b!2900167 (= res!1198732 e!1831728)))

(declare-fun res!1198737 () Bool)

(assert (=> b!2900167 (=> (not res!1198737) (not e!1831728))))

(assert (=> b!2900167 (= res!1198737 lt!1022098)))

(declare-fun b!2900168 () Bool)

(assert (=> b!2900168 (= e!1831726 (matchR!3819 (derivativeStep!2373 (regOne!18234 r!23079) (head!6402 (v!34659 lt!1022040))) (tail!4627 (v!34659 lt!1022040))))))

(declare-fun b!2900169 () Bool)

(declare-fun e!1831730 () Bool)

(assert (=> b!2900169 (= e!1831729 e!1831730)))

(declare-fun res!1198738 () Bool)

(assert (=> b!2900169 (=> (not res!1198738) (not e!1831730))))

(assert (=> b!2900169 (= res!1198738 (not lt!1022098))))

(declare-fun b!2900170 () Bool)

(assert (=> b!2900170 (= e!1831728 (= (head!6402 (v!34659 lt!1022040)) (c!472350 (regOne!18234 r!23079))))))

(declare-fun b!2900171 () Bool)

(assert (=> b!2900171 (= e!1831727 (= lt!1022098 call!188936))))

(declare-fun b!2900172 () Bool)

(declare-fun res!1198733 () Bool)

(assert (=> b!2900172 (=> (not res!1198733) (not e!1831728))))

(assert (=> b!2900172 (= res!1198733 (isEmpty!18852 (tail!4627 (v!34659 lt!1022040))))))

(declare-fun b!2900173 () Bool)

(declare-fun res!1198731 () Bool)

(assert (=> b!2900173 (=> res!1198731 e!1831732)))

(assert (=> b!2900173 (= res!1198731 (not (isEmpty!18852 (tail!4627 (v!34659 lt!1022040)))))))

(declare-fun b!2900174 () Bool)

(declare-fun e!1831731 () Bool)

(assert (=> b!2900174 (= e!1831727 e!1831731)))

(declare-fun c!472486 () Bool)

(assert (=> b!2900174 (= c!472486 ((_ is EmptyLang!8861) (regOne!18234 r!23079)))))

(declare-fun b!2900175 () Bool)

(assert (=> b!2900175 (= e!1831731 (not lt!1022098))))

(declare-fun b!2900176 () Bool)

(assert (=> b!2900176 (= e!1831730 e!1831732)))

(declare-fun res!1198734 () Bool)

(assert (=> b!2900176 (=> res!1198734 e!1831732)))

(assert (=> b!2900176 (= res!1198734 call!188936)))

(declare-fun b!2900177 () Bool)

(declare-fun res!1198735 () Bool)

(assert (=> b!2900177 (=> res!1198735 e!1831729)))

(assert (=> b!2900177 (= res!1198735 (not ((_ is ElementMatch!8861) (regOne!18234 r!23079))))))

(assert (=> b!2900177 (= e!1831731 e!1831729)))

(declare-fun b!2900178 () Bool)

(assert (=> b!2900178 (= e!1831726 (nullable!2760 (regOne!18234 r!23079)))))

(declare-fun b!2900179 () Bool)

(declare-fun res!1198736 () Bool)

(assert (=> b!2900179 (=> (not res!1198736) (not e!1831728))))

(assert (=> b!2900179 (= res!1198736 (not call!188936))))

(assert (= (and d!835352 c!472487) b!2900178))

(assert (= (and d!835352 (not c!472487)) b!2900168))

(assert (= (and d!835352 c!472485) b!2900171))

(assert (= (and d!835352 (not c!472485)) b!2900174))

(assert (= (and b!2900174 c!472486) b!2900175))

(assert (= (and b!2900174 (not c!472486)) b!2900177))

(assert (= (and b!2900177 (not res!1198735)) b!2900167))

(assert (= (and b!2900167 res!1198737) b!2900179))

(assert (= (and b!2900179 res!1198736) b!2900172))

(assert (= (and b!2900172 res!1198733) b!2900170))

(assert (= (and b!2900167 (not res!1198732)) b!2900169))

(assert (= (and b!2900169 res!1198738) b!2900176))

(assert (= (and b!2900176 (not res!1198734)) b!2900173))

(assert (= (and b!2900173 (not res!1198731)) b!2900166))

(assert (= (or b!2900171 b!2900179 b!2900176) bm!188931))

(declare-fun m!3305871 () Bool)

(assert (=> bm!188931 m!3305871))

(declare-fun m!3305873 () Bool)

(assert (=> b!2900168 m!3305873))

(assert (=> b!2900168 m!3305873))

(declare-fun m!3305875 () Bool)

(assert (=> b!2900168 m!3305875))

(declare-fun m!3305877 () Bool)

(assert (=> b!2900168 m!3305877))

(assert (=> b!2900168 m!3305875))

(assert (=> b!2900168 m!3305877))

(declare-fun m!3305879 () Bool)

(assert (=> b!2900168 m!3305879))

(assert (=> b!2900173 m!3305877))

(assert (=> b!2900173 m!3305877))

(declare-fun m!3305881 () Bool)

(assert (=> b!2900173 m!3305881))

(assert (=> b!2900172 m!3305877))

(assert (=> b!2900172 m!3305877))

(assert (=> b!2900172 m!3305881))

(assert (=> d!835352 m!3305871))

(assert (=> d!835352 m!3305753))

(assert (=> b!2900166 m!3305873))

(declare-fun m!3305883 () Bool)

(assert (=> b!2900178 m!3305883))

(assert (=> b!2900170 m!3305873))

(assert (=> b!2899745 d!835352))

(declare-fun bm!188932 () Bool)

(declare-fun call!188937 () Bool)

(assert (=> bm!188932 (= call!188937 (isEmpty!18852 (get!10482 lt!1022040)))))

(declare-fun b!2900182 () Bool)

(declare-fun e!1831741 () Bool)

(assert (=> b!2900182 (= e!1831741 (not (= (head!6402 (get!10482 lt!1022040)) (c!472350 (regOne!18234 r!23079)))))))

(declare-fun d!835354 () Bool)

(declare-fun e!1831736 () Bool)

(assert (=> d!835354 e!1831736))

(declare-fun c!472488 () Bool)

(assert (=> d!835354 (= c!472488 ((_ is EmptyExpr!8861) (regOne!18234 r!23079)))))

(declare-fun lt!1022101 () Bool)

(declare-fun e!1831735 () Bool)

(assert (=> d!835354 (= lt!1022101 e!1831735)))

(declare-fun c!472490 () Bool)

(assert (=> d!835354 (= c!472490 (isEmpty!18852 (get!10482 lt!1022040)))))

(assert (=> d!835354 (validRegex!3634 (regOne!18234 r!23079))))

(assert (=> d!835354 (= (matchR!3819 (regOne!18234 r!23079) (get!10482 lt!1022040)) lt!1022101)))

(declare-fun b!2900183 () Bool)

(declare-fun res!1198742 () Bool)

(declare-fun e!1831738 () Bool)

(assert (=> b!2900183 (=> res!1198742 e!1831738)))

(declare-fun e!1831737 () Bool)

(assert (=> b!2900183 (= res!1198742 e!1831737)))

(declare-fun res!1198747 () Bool)

(assert (=> b!2900183 (=> (not res!1198747) (not e!1831737))))

(assert (=> b!2900183 (= res!1198747 lt!1022101)))

(declare-fun b!2900184 () Bool)

(assert (=> b!2900184 (= e!1831735 (matchR!3819 (derivativeStep!2373 (regOne!18234 r!23079) (head!6402 (get!10482 lt!1022040))) (tail!4627 (get!10482 lt!1022040))))))

(declare-fun b!2900185 () Bool)

(declare-fun e!1831739 () Bool)

(assert (=> b!2900185 (= e!1831738 e!1831739)))

(declare-fun res!1198748 () Bool)

(assert (=> b!2900185 (=> (not res!1198748) (not e!1831739))))

(assert (=> b!2900185 (= res!1198748 (not lt!1022101))))

(declare-fun b!2900186 () Bool)

(assert (=> b!2900186 (= e!1831737 (= (head!6402 (get!10482 lt!1022040)) (c!472350 (regOne!18234 r!23079))))))

(declare-fun b!2900187 () Bool)

(assert (=> b!2900187 (= e!1831736 (= lt!1022101 call!188937))))

(declare-fun b!2900188 () Bool)

(declare-fun res!1198743 () Bool)

(assert (=> b!2900188 (=> (not res!1198743) (not e!1831737))))

(assert (=> b!2900188 (= res!1198743 (isEmpty!18852 (tail!4627 (get!10482 lt!1022040))))))

(declare-fun b!2900189 () Bool)

(declare-fun res!1198741 () Bool)

(assert (=> b!2900189 (=> res!1198741 e!1831741)))

(assert (=> b!2900189 (= res!1198741 (not (isEmpty!18852 (tail!4627 (get!10482 lt!1022040)))))))

(declare-fun b!2900190 () Bool)

(declare-fun e!1831740 () Bool)

(assert (=> b!2900190 (= e!1831736 e!1831740)))

(declare-fun c!472489 () Bool)

(assert (=> b!2900190 (= c!472489 ((_ is EmptyLang!8861) (regOne!18234 r!23079)))))

(declare-fun b!2900191 () Bool)

(assert (=> b!2900191 (= e!1831740 (not lt!1022101))))

(declare-fun b!2900192 () Bool)

(assert (=> b!2900192 (= e!1831739 e!1831741)))

(declare-fun res!1198744 () Bool)

(assert (=> b!2900192 (=> res!1198744 e!1831741)))

(assert (=> b!2900192 (= res!1198744 call!188937)))

(declare-fun b!2900193 () Bool)

(declare-fun res!1198745 () Bool)

(assert (=> b!2900193 (=> res!1198745 e!1831738)))

(assert (=> b!2900193 (= res!1198745 (not ((_ is ElementMatch!8861) (regOne!18234 r!23079))))))

(assert (=> b!2900193 (= e!1831740 e!1831738)))

(declare-fun b!2900194 () Bool)

(assert (=> b!2900194 (= e!1831735 (nullable!2760 (regOne!18234 r!23079)))))

(declare-fun b!2900195 () Bool)

(declare-fun res!1198746 () Bool)

(assert (=> b!2900195 (=> (not res!1198746) (not e!1831737))))

(assert (=> b!2900195 (= res!1198746 (not call!188937))))

(assert (= (and d!835354 c!472490) b!2900194))

(assert (= (and d!835354 (not c!472490)) b!2900184))

(assert (= (and d!835354 c!472488) b!2900187))

(assert (= (and d!835354 (not c!472488)) b!2900190))

(assert (= (and b!2900190 c!472489) b!2900191))

(assert (= (and b!2900190 (not c!472489)) b!2900193))

(assert (= (and b!2900193 (not res!1198745)) b!2900183))

(assert (= (and b!2900183 res!1198747) b!2900195))

(assert (= (and b!2900195 res!1198746) b!2900188))

(assert (= (and b!2900188 res!1198743) b!2900186))

(assert (= (and b!2900183 (not res!1198742)) b!2900185))

(assert (= (and b!2900185 res!1198748) b!2900192))

(assert (= (and b!2900192 (not res!1198744)) b!2900189))

(assert (= (and b!2900189 (not res!1198741)) b!2900182))

(assert (= (or b!2900187 b!2900195 b!2900192) bm!188932))

(assert (=> bm!188932 m!3305617))

(declare-fun m!3305885 () Bool)

(assert (=> bm!188932 m!3305885))

(assert (=> b!2900184 m!3305617))

(declare-fun m!3305887 () Bool)

(assert (=> b!2900184 m!3305887))

(assert (=> b!2900184 m!3305887))

(declare-fun m!3305889 () Bool)

(assert (=> b!2900184 m!3305889))

(assert (=> b!2900184 m!3305617))

(declare-fun m!3305891 () Bool)

(assert (=> b!2900184 m!3305891))

(assert (=> b!2900184 m!3305889))

(assert (=> b!2900184 m!3305891))

(declare-fun m!3305893 () Bool)

(assert (=> b!2900184 m!3305893))

(assert (=> b!2900189 m!3305617))

(assert (=> b!2900189 m!3305891))

(assert (=> b!2900189 m!3305891))

(declare-fun m!3305899 () Bool)

(assert (=> b!2900189 m!3305899))

(assert (=> b!2900188 m!3305617))

(assert (=> b!2900188 m!3305891))

(assert (=> b!2900188 m!3305891))

(assert (=> b!2900188 m!3305899))

(assert (=> d!835354 m!3305617))

(assert (=> d!835354 m!3305885))

(assert (=> d!835354 m!3305753))

(assert (=> b!2900182 m!3305617))

(assert (=> b!2900182 m!3305887))

(assert (=> b!2900194 m!3305883))

(assert (=> b!2900186 m!3305617))

(assert (=> b!2900186 m!3305887))

(assert (=> b!2899745 d!835354))

(declare-fun e!1831745 () Bool)

(assert (=> b!2899753 (= tp!930576 e!1831745)))

(declare-fun b!2900209 () Bool)

(declare-fun tp!930592 () Bool)

(assert (=> b!2900209 (= e!1831745 tp!930592)))

(declare-fun b!2900210 () Bool)

(declare-fun tp!930593 () Bool)

(declare-fun tp!930591 () Bool)

(assert (=> b!2900210 (= e!1831745 (and tp!930593 tp!930591))))

(declare-fun b!2900207 () Bool)

(assert (=> b!2900207 (= e!1831745 tp_is_empty!15309)))

(declare-fun b!2900208 () Bool)

(declare-fun tp!930590 () Bool)

(declare-fun tp!930594 () Bool)

(assert (=> b!2900208 (= e!1831745 (and tp!930590 tp!930594))))

(assert (= (and b!2899753 ((_ is ElementMatch!8861) (regOne!18234 r!23079))) b!2900207))

(assert (= (and b!2899753 ((_ is Concat!14182) (regOne!18234 r!23079))) b!2900208))

(assert (= (and b!2899753 ((_ is Star!8861) (regOne!18234 r!23079))) b!2900209))

(assert (= (and b!2899753 ((_ is Union!8861) (regOne!18234 r!23079))) b!2900210))

(declare-fun e!1831746 () Bool)

(assert (=> b!2899753 (= tp!930579 e!1831746)))

(declare-fun b!2900213 () Bool)

(declare-fun tp!930597 () Bool)

(assert (=> b!2900213 (= e!1831746 tp!930597)))

(declare-fun b!2900214 () Bool)

(declare-fun tp!930598 () Bool)

(declare-fun tp!930596 () Bool)

(assert (=> b!2900214 (= e!1831746 (and tp!930598 tp!930596))))

(declare-fun b!2900211 () Bool)

(assert (=> b!2900211 (= e!1831746 tp_is_empty!15309)))

(declare-fun b!2900212 () Bool)

(declare-fun tp!930595 () Bool)

(declare-fun tp!930599 () Bool)

(assert (=> b!2900212 (= e!1831746 (and tp!930595 tp!930599))))

(assert (= (and b!2899753 ((_ is ElementMatch!8861) (regTwo!18234 r!23079))) b!2900211))

(assert (= (and b!2899753 ((_ is Concat!14182) (regTwo!18234 r!23079))) b!2900212))

(assert (= (and b!2899753 ((_ is Star!8861) (regTwo!18234 r!23079))) b!2900213))

(assert (= (and b!2899753 ((_ is Union!8861) (regTwo!18234 r!23079))) b!2900214))

(declare-fun e!1831747 () Bool)

(assert (=> b!2899748 (= tp!930577 e!1831747)))

(declare-fun b!2900217 () Bool)

(declare-fun tp!930602 () Bool)

(assert (=> b!2900217 (= e!1831747 tp!930602)))

(declare-fun b!2900218 () Bool)

(declare-fun tp!930603 () Bool)

(declare-fun tp!930601 () Bool)

(assert (=> b!2900218 (= e!1831747 (and tp!930603 tp!930601))))

(declare-fun b!2900215 () Bool)

(assert (=> b!2900215 (= e!1831747 tp_is_empty!15309)))

(declare-fun b!2900216 () Bool)

(declare-fun tp!930600 () Bool)

(declare-fun tp!930604 () Bool)

(assert (=> b!2900216 (= e!1831747 (and tp!930600 tp!930604))))

(assert (= (and b!2899748 ((_ is ElementMatch!8861) (regOne!18235 r!23079))) b!2900215))

(assert (= (and b!2899748 ((_ is Concat!14182) (regOne!18235 r!23079))) b!2900216))

(assert (= (and b!2899748 ((_ is Star!8861) (regOne!18235 r!23079))) b!2900217))

(assert (= (and b!2899748 ((_ is Union!8861) (regOne!18235 r!23079))) b!2900218))

(declare-fun e!1831748 () Bool)

(assert (=> b!2899748 (= tp!930578 e!1831748)))

(declare-fun b!2900221 () Bool)

(declare-fun tp!930607 () Bool)

(assert (=> b!2900221 (= e!1831748 tp!930607)))

(declare-fun b!2900222 () Bool)

(declare-fun tp!930608 () Bool)

(declare-fun tp!930606 () Bool)

(assert (=> b!2900222 (= e!1831748 (and tp!930608 tp!930606))))

(declare-fun b!2900219 () Bool)

(assert (=> b!2900219 (= e!1831748 tp_is_empty!15309)))

(declare-fun b!2900220 () Bool)

(declare-fun tp!930605 () Bool)

(declare-fun tp!930609 () Bool)

(assert (=> b!2900220 (= e!1831748 (and tp!930605 tp!930609))))

(assert (= (and b!2899748 ((_ is ElementMatch!8861) (regTwo!18235 r!23079))) b!2900219))

(assert (= (and b!2899748 ((_ is Concat!14182) (regTwo!18235 r!23079))) b!2900220))

(assert (= (and b!2899748 ((_ is Star!8861) (regTwo!18235 r!23079))) b!2900221))

(assert (= (and b!2899748 ((_ is Union!8861) (regTwo!18235 r!23079))) b!2900222))

(declare-fun e!1831749 () Bool)

(assert (=> b!2899754 (= tp!930575 e!1831749)))

(declare-fun b!2900225 () Bool)

(declare-fun tp!930612 () Bool)

(assert (=> b!2900225 (= e!1831749 tp!930612)))

(declare-fun b!2900226 () Bool)

(declare-fun tp!930613 () Bool)

(declare-fun tp!930611 () Bool)

(assert (=> b!2900226 (= e!1831749 (and tp!930613 tp!930611))))

(declare-fun b!2900223 () Bool)

(assert (=> b!2900223 (= e!1831749 tp_is_empty!15309)))

(declare-fun b!2900224 () Bool)

(declare-fun tp!930610 () Bool)

(declare-fun tp!930614 () Bool)

(assert (=> b!2900224 (= e!1831749 (and tp!930610 tp!930614))))

(assert (= (and b!2899754 ((_ is ElementMatch!8861) (reg!9190 r!23079))) b!2900223))

(assert (= (and b!2899754 ((_ is Concat!14182) (reg!9190 r!23079))) b!2900224))

(assert (= (and b!2899754 ((_ is Star!8861) (reg!9190 r!23079))) b!2900225))

(assert (= (and b!2899754 ((_ is Union!8861) (reg!9190 r!23079))) b!2900226))

(check-sat (not b!2900221) (not b!2900222) (not b!2900043) (not b!2900047) (not bm!188911) (not d!835352) (not b!2900164) (not b!2900156) (not b!2900218) (not bm!188908) (not bm!188930) (not d!835324) (not b!2900170) (not b!2900159) (not bm!188904) (not b!2899790) (not b!2899787) (not bm!188882) (not bm!188905) (not d!835350) (not b!2900194) (not d!835328) (not b!2899789) (not b!2900168) (not b!2900154) (not b!2900226) (not b!2900026) (not b!2900210) (not b!2899994) (not bm!188895) (not d!835296) (not b!2900099) (not d!835318) (not bm!188932) (not b!2900178) (not b!2900212) (not b!2900053) (not b!2900182) (not bm!188915) (not b!2900045) (not b!2900108) (not b!2899907) (not b!2900152) (not b!2900189) (not b!2900216) (not b!2900173) (not b!2900225) (not b!2900208) (not bm!188896) (not d!835348) (not b!2900107) (not bm!188931) (not b!2900113) tp_is_empty!15309 (not b!2900172) (not b!2900209) (not b!2899783) (not bm!188910) (not b!2900184) (not b!2900103) (not b!2900188) (not bm!188924) (not b!2900098) (not b!2900220) (not b!2899978) (not b!2900048) (not b!2899795) (not b!2899785) (not b!2900213) (not b!2900041) (not b!2899960) (not b!2900105) (not b!2900166) (not d!835332) (not d!835290) (not b!2900214) (not b!2900217) (not d!835338) (not d!835354) (not b!2900101) (not b!2900186) (not bm!188909) (not b!2900158) (not b!2900224))
(check-sat)
