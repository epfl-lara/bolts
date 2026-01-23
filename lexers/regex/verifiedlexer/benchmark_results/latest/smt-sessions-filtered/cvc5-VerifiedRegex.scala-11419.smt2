; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!613392 () Bool)

(assert start!613392)

(declare-fun b!6140666 () Bool)

(assert (=> b!6140666 true))

(assert (=> b!6140666 true))

(declare-fun lambda!334693 () Int)

(declare-fun lambda!334692 () Int)

(assert (=> b!6140666 (not (= lambda!334693 lambda!334692))))

(assert (=> b!6140666 true))

(assert (=> b!6140666 true))

(declare-fun b!6140677 () Bool)

(assert (=> b!6140677 true))

(declare-fun b!6140656 () Bool)

(declare-fun res!2544328 () Bool)

(declare-fun e!3742298 () Bool)

(assert (=> b!6140656 (=> res!2544328 e!3742298)))

(declare-datatypes ((C!32438 0))(
  ( (C!32439 (val!25921 Int)) )
))
(declare-datatypes ((Regex!16084 0))(
  ( (ElementMatch!16084 (c!1104532 C!32438)) (Concat!24929 (regOne!32680 Regex!16084) (regTwo!32680 Regex!16084)) (EmptyExpr!16084) (Star!16084 (reg!16413 Regex!16084)) (EmptyLang!16084) (Union!16084 (regOne!32681 Regex!16084) (regTwo!32681 Regex!16084)) )
))
(declare-fun r!7292 () Regex!16084)

(assert (=> b!6140656 (= res!2544328 (or (is-EmptyExpr!16084 r!7292) (is-EmptyLang!16084 r!7292) (is-ElementMatch!16084 r!7292) (is-Union!16084 r!7292) (not (is-Concat!24929 r!7292))))))

(declare-fun b!6140657 () Bool)

(declare-fun e!3742311 () Bool)

(declare-fun tp_is_empty!41421 () Bool)

(assert (=> b!6140657 (= e!3742311 tp_is_empty!41421)))

(declare-fun b!6140658 () Bool)

(declare-fun res!2544333 () Bool)

(declare-fun e!3742303 () Bool)

(assert (=> b!6140658 (=> res!2544333 e!3742303)))

(declare-datatypes ((List!64551 0))(
  ( (Nil!64427) (Cons!64427 (h!70875 Regex!16084) (t!378030 List!64551)) )
))
(declare-datatypes ((Context!10936 0))(
  ( (Context!10937 (exprs!5968 List!64551)) )
))
(declare-datatypes ((List!64552 0))(
  ( (Nil!64428) (Cons!64428 (h!70876 Context!10936) (t!378031 List!64552)) )
))
(declare-fun zl!343 () List!64552)

(declare-fun isEmpty!36378 (List!64551) Bool)

(assert (=> b!6140658 (= res!2544333 (isEmpty!36378 (t!378030 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun b!6140659 () Bool)

(declare-fun e!3742302 () Bool)

(declare-fun tp!1715704 () Bool)

(assert (=> b!6140659 (= e!3742302 (and tp_is_empty!41421 tp!1715704))))

(declare-fun b!6140660 () Bool)

(declare-fun e!3742300 () Bool)

(declare-fun e!3742308 () Bool)

(assert (=> b!6140660 (= e!3742300 e!3742308)))

(declare-fun res!2544327 () Bool)

(assert (=> b!6140660 (=> res!2544327 e!3742308)))

(declare-fun lt!2333059 () (Set Context!10936))

(declare-fun lt!2333072 () (Set Context!10936))

(assert (=> b!6140660 (= res!2544327 (not (= lt!2333059 lt!2333072)))))

(declare-fun lt!2333058 () (Set Context!10936))

(declare-fun lt!2333060 () (Set Context!10936))

(assert (=> b!6140660 (= lt!2333072 (set.union lt!2333058 lt!2333060))))

(declare-datatypes ((List!64553 0))(
  ( (Nil!64429) (Cons!64429 (h!70877 C!32438) (t!378032 List!64553)) )
))
(declare-fun s!2326 () List!64553)

(declare-fun lt!2333068 () Context!10936)

(declare-fun derivationStepZipperDown!1332 (Regex!16084 Context!10936 C!32438) (Set Context!10936))

(assert (=> b!6140660 (= lt!2333060 (derivationStepZipperDown!1332 (regTwo!32681 (regOne!32680 r!7292)) lt!2333068 (h!70877 s!2326)))))

(assert (=> b!6140660 (= lt!2333058 (derivationStepZipperDown!1332 (regOne!32681 (regOne!32680 r!7292)) lt!2333068 (h!70877 s!2326)))))

(declare-fun b!6140661 () Bool)

(declare-fun res!2544326 () Bool)

(assert (=> b!6140661 (=> res!2544326 e!3742298)))

(declare-fun generalisedConcat!1681 (List!64551) Regex!16084)

(assert (=> b!6140661 (= res!2544326 (not (= r!7292 (generalisedConcat!1681 (exprs!5968 (h!70876 zl!343))))))))

(declare-fun setIsEmpty!41537 () Bool)

(declare-fun setRes!41537 () Bool)

(assert (=> setIsEmpty!41537 setRes!41537))

(declare-fun b!6140662 () Bool)

(declare-datatypes ((Unit!157491 0))(
  ( (Unit!157492) )
))
(declare-fun e!3742307 () Unit!157491)

(declare-fun Unit!157493 () Unit!157491)

(assert (=> b!6140662 (= e!3742307 Unit!157493)))

(declare-fun b!6140663 () Bool)

(declare-fun e!3742306 () Bool)

(declare-fun matchZipper!2096 ((Set Context!10936) List!64553) Bool)

(assert (=> b!6140663 (= e!3742306 (matchZipper!2096 lt!2333060 (t!378032 s!2326)))))

(declare-fun b!6140664 () Bool)

(declare-fun res!2544325 () Bool)

(declare-fun e!3742301 () Bool)

(assert (=> b!6140664 (=> res!2544325 e!3742301)))

(declare-fun lt!2333071 () (Set Context!10936))

(declare-fun lt!2333066 () (Set Context!10936))

(assert (=> b!6140664 (= res!2544325 (not (= (matchZipper!2096 lt!2333066 s!2326) (matchZipper!2096 lt!2333071 (t!378032 s!2326)))))))

(declare-fun b!6140665 () Bool)

(declare-fun e!3742299 () Bool)

(declare-fun lt!2333063 () (Set Context!10936))

(assert (=> b!6140665 (= e!3742299 (matchZipper!2096 lt!2333063 (t!378032 s!2326)))))

(assert (=> b!6140666 (= e!3742298 e!3742303)))

(declare-fun res!2544324 () Bool)

(assert (=> b!6140666 (=> res!2544324 e!3742303)))

(declare-fun lt!2333057 () Bool)

(declare-fun lt!2333074 () Bool)

(assert (=> b!6140666 (= res!2544324 (or (not (= lt!2333074 lt!2333057)) (is-Nil!64429 s!2326)))))

(declare-fun Exists!3154 (Int) Bool)

(assert (=> b!6140666 (= (Exists!3154 lambda!334692) (Exists!3154 lambda!334693))))

(declare-fun lt!2333061 () Unit!157491)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1691 (Regex!16084 Regex!16084 List!64553) Unit!157491)

(assert (=> b!6140666 (= lt!2333061 (lemmaExistCutMatchRandMatchRSpecEquivalent!1691 (regOne!32680 r!7292) (regTwo!32680 r!7292) s!2326))))

(assert (=> b!6140666 (= lt!2333057 (Exists!3154 lambda!334692))))

(declare-datatypes ((tuple2!66126 0))(
  ( (tuple2!66127 (_1!36366 List!64553) (_2!36366 List!64553)) )
))
(declare-datatypes ((Option!15975 0))(
  ( (None!15974) (Some!15974 (v!52113 tuple2!66126)) )
))
(declare-fun isDefined!12678 (Option!15975) Bool)

(declare-fun findConcatSeparation!2389 (Regex!16084 Regex!16084 List!64553 List!64553 List!64553) Option!15975)

(assert (=> b!6140666 (= lt!2333057 (isDefined!12678 (findConcatSeparation!2389 (regOne!32680 r!7292) (regTwo!32680 r!7292) Nil!64429 s!2326 s!2326)))))

(declare-fun lt!2333075 () Unit!157491)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2153 (Regex!16084 Regex!16084 List!64553) Unit!157491)

(assert (=> b!6140666 (= lt!2333075 (lemmaFindConcatSeparationEquivalentToExists!2153 (regOne!32680 r!7292) (regTwo!32680 r!7292) s!2326))))

(declare-fun b!6140667 () Bool)

(declare-fun inv!83458 (Context!10936) Bool)

(assert (=> b!6140667 (= e!3742301 (inv!83458 lt!2333068))))

(declare-fun b!6140668 () Bool)

(declare-fun e!3742309 () Bool)

(assert (=> b!6140668 (= e!3742308 e!3742309)))

(declare-fun res!2544323 () Bool)

(assert (=> b!6140668 (=> res!2544323 e!3742309)))

(declare-fun e!3742296 () Bool)

(assert (=> b!6140668 (= res!2544323 e!3742296)))

(declare-fun res!2544335 () Bool)

(assert (=> b!6140668 (=> (not res!2544335) (not e!3742296))))

(declare-fun lt!2333073 () Bool)

(assert (=> b!6140668 (= res!2544335 (not (= (matchZipper!2096 lt!2333059 (t!378032 s!2326)) lt!2333073)))))

(assert (=> b!6140668 (= (matchZipper!2096 lt!2333072 (t!378032 s!2326)) e!3742306)))

(declare-fun res!2544322 () Bool)

(assert (=> b!6140668 (=> res!2544322 e!3742306)))

(assert (=> b!6140668 (= res!2544322 lt!2333073)))

(assert (=> b!6140668 (= lt!2333073 (matchZipper!2096 lt!2333058 (t!378032 s!2326)))))

(declare-fun lt!2333065 () Unit!157491)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!915 ((Set Context!10936) (Set Context!10936) List!64553) Unit!157491)

(assert (=> b!6140668 (= lt!2333065 (lemmaZipperConcatMatchesSameAsBothZippers!915 lt!2333058 lt!2333060 (t!378032 s!2326)))))

(declare-fun b!6140669 () Bool)

(declare-fun tp!1715702 () Bool)

(assert (=> b!6140669 (= e!3742311 tp!1715702)))

(declare-fun b!6140670 () Bool)

(declare-fun e!3742312 () Bool)

(assert (=> b!6140670 (= e!3742312 e!3742301)))

(declare-fun res!2544331 () Bool)

(assert (=> b!6140670 (=> res!2544331 e!3742301)))

(declare-fun lt!2333064 () (Set Context!10936))

(declare-fun lt!2333070 () (Set Context!10936))

(assert (=> b!6140670 (= res!2544331 (or (not (= lt!2333070 lt!2333064)) (not (= lt!2333071 lt!2333064))))))

(assert (=> b!6140670 (= lt!2333064 (set.union lt!2333058 lt!2333063))))

(declare-fun e!3742305 () Bool)

(declare-fun tp!1715700 () Bool)

(declare-fun setNonEmpty!41537 () Bool)

(declare-fun setElem!41537 () Context!10936)

(assert (=> setNonEmpty!41537 (= setRes!41537 (and tp!1715700 (inv!83458 setElem!41537) e!3742305))))

(declare-fun z!1189 () (Set Context!10936))

(declare-fun setRest!41537 () (Set Context!10936))

(assert (=> setNonEmpty!41537 (= z!1189 (set.union (set.insert setElem!41537 (as set.empty (Set Context!10936))) setRest!41537))))

(declare-fun b!6140671 () Bool)

(assert (=> b!6140671 (= e!3742296 (not (matchZipper!2096 lt!2333060 (t!378032 s!2326))))))

(declare-fun b!6140672 () Bool)

(declare-fun res!2544329 () Bool)

(declare-fun e!3742310 () Bool)

(assert (=> b!6140672 (=> (not res!2544329) (not e!3742310))))

(declare-fun toList!9868 ((Set Context!10936)) List!64552)

(assert (=> b!6140672 (= res!2544329 (= (toList!9868 z!1189) zl!343))))

(declare-fun e!3742304 () Bool)

(declare-fun e!3742297 () Bool)

(declare-fun b!6140673 () Bool)

(declare-fun tp!1715703 () Bool)

(assert (=> b!6140673 (= e!3742297 (and (inv!83458 (h!70876 zl!343)) e!3742304 tp!1715703))))

(declare-fun b!6140674 () Bool)

(declare-fun tp!1715701 () Bool)

(assert (=> b!6140674 (= e!3742304 tp!1715701)))

(declare-fun b!6140675 () Bool)

(declare-fun tp!1715707 () Bool)

(declare-fun tp!1715699 () Bool)

(assert (=> b!6140675 (= e!3742311 (and tp!1715707 tp!1715699))))

(declare-fun res!2544339 () Bool)

(assert (=> start!613392 (=> (not res!2544339) (not e!3742310))))

(declare-fun validRegex!7820 (Regex!16084) Bool)

(assert (=> start!613392 (= res!2544339 (validRegex!7820 r!7292))))

(assert (=> start!613392 e!3742310))

(assert (=> start!613392 e!3742311))

(declare-fun condSetEmpty!41537 () Bool)

(assert (=> start!613392 (= condSetEmpty!41537 (= z!1189 (as set.empty (Set Context!10936))))))

(assert (=> start!613392 setRes!41537))

(assert (=> start!613392 e!3742297))

(assert (=> start!613392 e!3742302))

(declare-fun b!6140676 () Bool)

(assert (=> b!6140676 (= e!3742310 (not e!3742298))))

(declare-fun res!2544337 () Bool)

(assert (=> b!6140676 (=> res!2544337 e!3742298)))

(assert (=> b!6140676 (= res!2544337 (not (is-Cons!64428 zl!343)))))

(declare-fun matchRSpec!3185 (Regex!16084 List!64553) Bool)

(assert (=> b!6140676 (= lt!2333074 (matchRSpec!3185 r!7292 s!2326))))

(declare-fun matchR!8267 (Regex!16084 List!64553) Bool)

(assert (=> b!6140676 (= lt!2333074 (matchR!8267 r!7292 s!2326))))

(declare-fun lt!2333062 () Unit!157491)

(declare-fun mainMatchTheorem!3185 (Regex!16084 List!64553) Unit!157491)

(assert (=> b!6140676 (= lt!2333062 (mainMatchTheorem!3185 r!7292 s!2326))))

(assert (=> b!6140677 (= e!3742303 e!3742300)))

(declare-fun res!2544340 () Bool)

(assert (=> b!6140677 (=> res!2544340 e!3742300)))

(assert (=> b!6140677 (= res!2544340 (or (and (is-ElementMatch!16084 (regOne!32680 r!7292)) (= (c!1104532 (regOne!32680 r!7292)) (h!70877 s!2326))) (not (is-Union!16084 (regOne!32680 r!7292)))))))

(declare-fun lt!2333056 () Unit!157491)

(assert (=> b!6140677 (= lt!2333056 e!3742307)))

(declare-fun c!1104531 () Bool)

(declare-fun nullable!6077 (Regex!16084) Bool)

(assert (=> b!6140677 (= c!1104531 (nullable!6077 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun lambda!334694 () Int)

(declare-fun flatMap!1589 ((Set Context!10936) Int) (Set Context!10936))

(declare-fun derivationStepZipperUp!1258 (Context!10936 C!32438) (Set Context!10936))

(assert (=> b!6140677 (= (flatMap!1589 z!1189 lambda!334694) (derivationStepZipperUp!1258 (h!70876 zl!343) (h!70877 s!2326)))))

(declare-fun lt!2333067 () Unit!157491)

(declare-fun lemmaFlatMapOnSingletonSet!1115 ((Set Context!10936) Context!10936 Int) Unit!157491)

(assert (=> b!6140677 (= lt!2333067 (lemmaFlatMapOnSingletonSet!1115 z!1189 (h!70876 zl!343) lambda!334694))))

(assert (=> b!6140677 (= lt!2333063 (derivationStepZipperUp!1258 lt!2333068 (h!70877 s!2326)))))

(assert (=> b!6140677 (= lt!2333059 (derivationStepZipperDown!1332 (h!70875 (exprs!5968 (h!70876 zl!343))) lt!2333068 (h!70877 s!2326)))))

(assert (=> b!6140677 (= lt!2333068 (Context!10937 (t!378030 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun lt!2333053 () (Set Context!10936))

(assert (=> b!6140677 (= lt!2333053 (derivationStepZipperUp!1258 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343))))) (h!70877 s!2326)))))

(declare-fun b!6140678 () Bool)

(declare-fun res!2544334 () Bool)

(assert (=> b!6140678 (=> res!2544334 e!3742298)))

(declare-fun isEmpty!36379 (List!64552) Bool)

(assert (=> b!6140678 (= res!2544334 (not (isEmpty!36379 (t!378031 zl!343))))))

(declare-fun b!6140679 () Bool)

(assert (=> b!6140679 (= e!3742309 e!3742312)))

(declare-fun res!2544332 () Bool)

(assert (=> b!6140679 (=> res!2544332 e!3742312)))

(assert (=> b!6140679 (= res!2544332 (not (nullable!6077 (regOne!32681 (regOne!32680 r!7292)))))))

(declare-fun lt!2333054 () Context!10936)

(assert (=> b!6140679 (= (flatMap!1589 lt!2333066 lambda!334694) (derivationStepZipperUp!1258 lt!2333054 (h!70877 s!2326)))))

(declare-fun lt!2333055 () Unit!157491)

(assert (=> b!6140679 (= lt!2333055 (lemmaFlatMapOnSingletonSet!1115 lt!2333066 lt!2333054 lambda!334694))))

(assert (=> b!6140679 (= lt!2333070 (derivationStepZipperUp!1258 lt!2333054 (h!70877 s!2326)))))

(declare-fun derivationStepZipper!2057 ((Set Context!10936) C!32438) (Set Context!10936))

(assert (=> b!6140679 (= lt!2333071 (derivationStepZipper!2057 lt!2333066 (h!70877 s!2326)))))

(assert (=> b!6140679 (= lt!2333066 (set.insert lt!2333054 (as set.empty (Set Context!10936))))))

(assert (=> b!6140679 (= lt!2333054 (Context!10937 (Cons!64427 (regOne!32681 (regOne!32680 r!7292)) (t!378030 (exprs!5968 (h!70876 zl!343))))))))

(declare-fun b!6140680 () Bool)

(declare-fun Unit!157494 () Unit!157491)

(assert (=> b!6140680 (= e!3742307 Unit!157494)))

(declare-fun lt!2333069 () Unit!157491)

(assert (=> b!6140680 (= lt!2333069 (lemmaZipperConcatMatchesSameAsBothZippers!915 lt!2333059 lt!2333063 (t!378032 s!2326)))))

(declare-fun res!2544330 () Bool)

(assert (=> b!6140680 (= res!2544330 (matchZipper!2096 lt!2333059 (t!378032 s!2326)))))

(assert (=> b!6140680 (=> res!2544330 e!3742299)))

(assert (=> b!6140680 (= (matchZipper!2096 (set.union lt!2333059 lt!2333063) (t!378032 s!2326)) e!3742299)))

(declare-fun b!6140681 () Bool)

(declare-fun tp!1715706 () Bool)

(assert (=> b!6140681 (= e!3742305 tp!1715706)))

(declare-fun b!6140682 () Bool)

(declare-fun res!2544336 () Bool)

(assert (=> b!6140682 (=> (not res!2544336) (not e!3742310))))

(declare-fun unfocusZipper!1826 (List!64552) Regex!16084)

(assert (=> b!6140682 (= res!2544336 (= r!7292 (unfocusZipper!1826 zl!343)))))

(declare-fun b!6140683 () Bool)

(declare-fun tp!1715705 () Bool)

(declare-fun tp!1715708 () Bool)

(assert (=> b!6140683 (= e!3742311 (and tp!1715705 tp!1715708))))

(declare-fun b!6140684 () Bool)

(declare-fun res!2544341 () Bool)

(assert (=> b!6140684 (=> res!2544341 e!3742298)))

(declare-fun generalisedUnion!1928 (List!64551) Regex!16084)

(declare-fun unfocusZipperList!1505 (List!64552) List!64551)

(assert (=> b!6140684 (= res!2544341 (not (= r!7292 (generalisedUnion!1928 (unfocusZipperList!1505 zl!343)))))))

(declare-fun b!6140685 () Bool)

(declare-fun res!2544338 () Bool)

(assert (=> b!6140685 (=> res!2544338 e!3742298)))

(assert (=> b!6140685 (= res!2544338 (not (is-Cons!64427 (exprs!5968 (h!70876 zl!343)))))))

(assert (= (and start!613392 res!2544339) b!6140672))

(assert (= (and b!6140672 res!2544329) b!6140682))

(assert (= (and b!6140682 res!2544336) b!6140676))

(assert (= (and b!6140676 (not res!2544337)) b!6140678))

(assert (= (and b!6140678 (not res!2544334)) b!6140661))

(assert (= (and b!6140661 (not res!2544326)) b!6140685))

(assert (= (and b!6140685 (not res!2544338)) b!6140684))

(assert (= (and b!6140684 (not res!2544341)) b!6140656))

(assert (= (and b!6140656 (not res!2544328)) b!6140666))

(assert (= (and b!6140666 (not res!2544324)) b!6140658))

(assert (= (and b!6140658 (not res!2544333)) b!6140677))

(assert (= (and b!6140677 c!1104531) b!6140680))

(assert (= (and b!6140677 (not c!1104531)) b!6140662))

(assert (= (and b!6140680 (not res!2544330)) b!6140665))

(assert (= (and b!6140677 (not res!2544340)) b!6140660))

(assert (= (and b!6140660 (not res!2544327)) b!6140668))

(assert (= (and b!6140668 (not res!2544322)) b!6140663))

(assert (= (and b!6140668 res!2544335) b!6140671))

(assert (= (and b!6140668 (not res!2544323)) b!6140679))

(assert (= (and b!6140679 (not res!2544332)) b!6140670))

(assert (= (and b!6140670 (not res!2544331)) b!6140664))

(assert (= (and b!6140664 (not res!2544325)) b!6140667))

(assert (= (and start!613392 (is-ElementMatch!16084 r!7292)) b!6140657))

(assert (= (and start!613392 (is-Concat!24929 r!7292)) b!6140683))

(assert (= (and start!613392 (is-Star!16084 r!7292)) b!6140669))

(assert (= (and start!613392 (is-Union!16084 r!7292)) b!6140675))

(assert (= (and start!613392 condSetEmpty!41537) setIsEmpty!41537))

(assert (= (and start!613392 (not condSetEmpty!41537)) setNonEmpty!41537))

(assert (= setNonEmpty!41537 b!6140681))

(assert (= b!6140673 b!6140674))

(assert (= (and start!613392 (is-Cons!64428 zl!343)) b!6140673))

(assert (= (and start!613392 (is-Cons!64429 s!2326)) b!6140659))

(declare-fun m!6982112 () Bool)

(assert (=> b!6140664 m!6982112))

(declare-fun m!6982114 () Bool)

(assert (=> b!6140664 m!6982114))

(declare-fun m!6982116 () Bool)

(assert (=> b!6140666 m!6982116))

(declare-fun m!6982118 () Bool)

(assert (=> b!6140666 m!6982118))

(declare-fun m!6982120 () Bool)

(assert (=> b!6140666 m!6982120))

(declare-fun m!6982122 () Bool)

(assert (=> b!6140666 m!6982122))

(assert (=> b!6140666 m!6982120))

(declare-fun m!6982124 () Bool)

(assert (=> b!6140666 m!6982124))

(assert (=> b!6140666 m!6982116))

(declare-fun m!6982126 () Bool)

(assert (=> b!6140666 m!6982126))

(declare-fun m!6982128 () Bool)

(assert (=> b!6140671 m!6982128))

(declare-fun m!6982130 () Bool)

(assert (=> b!6140658 m!6982130))

(declare-fun m!6982132 () Bool)

(assert (=> b!6140673 m!6982132))

(declare-fun m!6982134 () Bool)

(assert (=> b!6140677 m!6982134))

(declare-fun m!6982136 () Bool)

(assert (=> b!6140677 m!6982136))

(declare-fun m!6982138 () Bool)

(assert (=> b!6140677 m!6982138))

(declare-fun m!6982140 () Bool)

(assert (=> b!6140677 m!6982140))

(declare-fun m!6982142 () Bool)

(assert (=> b!6140677 m!6982142))

(declare-fun m!6982144 () Bool)

(assert (=> b!6140677 m!6982144))

(declare-fun m!6982146 () Bool)

(assert (=> b!6140677 m!6982146))

(assert (=> b!6140663 m!6982128))

(declare-fun m!6982148 () Bool)

(assert (=> b!6140665 m!6982148))

(declare-fun m!6982150 () Bool)

(assert (=> start!613392 m!6982150))

(declare-fun m!6982152 () Bool)

(assert (=> setNonEmpty!41537 m!6982152))

(declare-fun m!6982154 () Bool)

(assert (=> b!6140672 m!6982154))

(declare-fun m!6982156 () Bool)

(assert (=> b!6140676 m!6982156))

(declare-fun m!6982158 () Bool)

(assert (=> b!6140676 m!6982158))

(declare-fun m!6982160 () Bool)

(assert (=> b!6140676 m!6982160))

(declare-fun m!6982162 () Bool)

(assert (=> b!6140660 m!6982162))

(declare-fun m!6982164 () Bool)

(assert (=> b!6140660 m!6982164))

(declare-fun m!6982166 () Bool)

(assert (=> b!6140684 m!6982166))

(assert (=> b!6140684 m!6982166))

(declare-fun m!6982168 () Bool)

(assert (=> b!6140684 m!6982168))

(declare-fun m!6982170 () Bool)

(assert (=> b!6140667 m!6982170))

(declare-fun m!6982172 () Bool)

(assert (=> b!6140682 m!6982172))

(declare-fun m!6982174 () Bool)

(assert (=> b!6140679 m!6982174))

(declare-fun m!6982176 () Bool)

(assert (=> b!6140679 m!6982176))

(declare-fun m!6982178 () Bool)

(assert (=> b!6140679 m!6982178))

(declare-fun m!6982180 () Bool)

(assert (=> b!6140679 m!6982180))

(declare-fun m!6982182 () Bool)

(assert (=> b!6140679 m!6982182))

(declare-fun m!6982184 () Bool)

(assert (=> b!6140679 m!6982184))

(declare-fun m!6982186 () Bool)

(assert (=> b!6140661 m!6982186))

(declare-fun m!6982188 () Bool)

(assert (=> b!6140668 m!6982188))

(declare-fun m!6982190 () Bool)

(assert (=> b!6140668 m!6982190))

(declare-fun m!6982192 () Bool)

(assert (=> b!6140668 m!6982192))

(declare-fun m!6982194 () Bool)

(assert (=> b!6140668 m!6982194))

(declare-fun m!6982196 () Bool)

(assert (=> b!6140678 m!6982196))

(declare-fun m!6982198 () Bool)

(assert (=> b!6140680 m!6982198))

(assert (=> b!6140680 m!6982188))

(declare-fun m!6982200 () Bool)

(assert (=> b!6140680 m!6982200))

(push 1)

(assert (not b!6140675))

(assert (not b!6140664))

(assert (not b!6140661))

(assert (not b!6140658))

(assert (not b!6140663))

(assert tp_is_empty!41421)

(assert (not start!613392))

(assert (not b!6140672))

(assert (not b!6140680))

(assert (not b!6140679))

(assert (not setNonEmpty!41537))

(assert (not b!6140681))

(assert (not b!6140673))

(assert (not b!6140665))

(assert (not b!6140676))

(assert (not b!6140683))

(assert (not b!6140660))

(assert (not b!6140666))

(assert (not b!6140667))

(assert (not b!6140669))

(assert (not b!6140659))

(assert (not b!6140684))

(assert (not b!6140668))

(assert (not b!6140674))

(assert (not b!6140678))

(assert (not b!6140682))

(assert (not b!6140671))

(assert (not b!6140677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1923930 () Bool)

(declare-fun c!1104544 () Bool)

(declare-fun isEmpty!36382 (List!64553) Bool)

(assert (=> d!1923930 (= c!1104544 (isEmpty!36382 (t!378032 s!2326)))))

(declare-fun e!3742372 () Bool)

(assert (=> d!1923930 (= (matchZipper!2096 lt!2333060 (t!378032 s!2326)) e!3742372)))

(declare-fun b!6140804 () Bool)

(declare-fun nullableZipper!1865 ((Set Context!10936)) Bool)

(assert (=> b!6140804 (= e!3742372 (nullableZipper!1865 lt!2333060))))

(declare-fun b!6140805 () Bool)

(declare-fun head!12689 (List!64553) C!32438)

(declare-fun tail!11774 (List!64553) List!64553)

(assert (=> b!6140805 (= e!3742372 (matchZipper!2096 (derivationStepZipper!2057 lt!2333060 (head!12689 (t!378032 s!2326))) (tail!11774 (t!378032 s!2326))))))

(assert (= (and d!1923930 c!1104544) b!6140804))

(assert (= (and d!1923930 (not c!1104544)) b!6140805))

(declare-fun m!6982292 () Bool)

(assert (=> d!1923930 m!6982292))

(declare-fun m!6982294 () Bool)

(assert (=> b!6140804 m!6982294))

(declare-fun m!6982296 () Bool)

(assert (=> b!6140805 m!6982296))

(assert (=> b!6140805 m!6982296))

(declare-fun m!6982298 () Bool)

(assert (=> b!6140805 m!6982298))

(declare-fun m!6982300 () Bool)

(assert (=> b!6140805 m!6982300))

(assert (=> b!6140805 m!6982298))

(assert (=> b!6140805 m!6982300))

(declare-fun m!6982302 () Bool)

(assert (=> b!6140805 m!6982302))

(assert (=> b!6140671 d!1923930))

(declare-fun d!1923932 () Bool)

(declare-fun lt!2333147 () Regex!16084)

(assert (=> d!1923932 (validRegex!7820 lt!2333147)))

(assert (=> d!1923932 (= lt!2333147 (generalisedUnion!1928 (unfocusZipperList!1505 zl!343)))))

(assert (=> d!1923932 (= (unfocusZipper!1826 zl!343) lt!2333147)))

(declare-fun bs!1522701 () Bool)

(assert (= bs!1522701 d!1923932))

(declare-fun m!6982304 () Bool)

(assert (=> bs!1522701 m!6982304))

(assert (=> bs!1522701 m!6982166))

(assert (=> bs!1522701 m!6982166))

(assert (=> bs!1522701 m!6982168))

(assert (=> b!6140682 d!1923932))

(declare-fun e!3742375 () Bool)

(declare-fun d!1923934 () Bool)

(assert (=> d!1923934 (= (matchZipper!2096 (set.union lt!2333059 lt!2333063) (t!378032 s!2326)) e!3742375)))

(declare-fun res!2544416 () Bool)

(assert (=> d!1923934 (=> res!2544416 e!3742375)))

(assert (=> d!1923934 (= res!2544416 (matchZipper!2096 lt!2333059 (t!378032 s!2326)))))

(declare-fun lt!2333150 () Unit!157491)

(declare-fun choose!45633 ((Set Context!10936) (Set Context!10936) List!64553) Unit!157491)

(assert (=> d!1923934 (= lt!2333150 (choose!45633 lt!2333059 lt!2333063 (t!378032 s!2326)))))

(assert (=> d!1923934 (= (lemmaZipperConcatMatchesSameAsBothZippers!915 lt!2333059 lt!2333063 (t!378032 s!2326)) lt!2333150)))

(declare-fun b!6140808 () Bool)

(assert (=> b!6140808 (= e!3742375 (matchZipper!2096 lt!2333063 (t!378032 s!2326)))))

(assert (= (and d!1923934 (not res!2544416)) b!6140808))

(assert (=> d!1923934 m!6982200))

(assert (=> d!1923934 m!6982188))

(declare-fun m!6982306 () Bool)

(assert (=> d!1923934 m!6982306))

(assert (=> b!6140808 m!6982148))

(assert (=> b!6140680 d!1923934))

(declare-fun d!1923936 () Bool)

(declare-fun c!1104545 () Bool)

(assert (=> d!1923936 (= c!1104545 (isEmpty!36382 (t!378032 s!2326)))))

(declare-fun e!3742376 () Bool)

(assert (=> d!1923936 (= (matchZipper!2096 lt!2333059 (t!378032 s!2326)) e!3742376)))

(declare-fun b!6140809 () Bool)

(assert (=> b!6140809 (= e!3742376 (nullableZipper!1865 lt!2333059))))

(declare-fun b!6140810 () Bool)

(assert (=> b!6140810 (= e!3742376 (matchZipper!2096 (derivationStepZipper!2057 lt!2333059 (head!12689 (t!378032 s!2326))) (tail!11774 (t!378032 s!2326))))))

(assert (= (and d!1923936 c!1104545) b!6140809))

(assert (= (and d!1923936 (not c!1104545)) b!6140810))

(assert (=> d!1923936 m!6982292))

(declare-fun m!6982308 () Bool)

(assert (=> b!6140809 m!6982308))

(assert (=> b!6140810 m!6982296))

(assert (=> b!6140810 m!6982296))

(declare-fun m!6982310 () Bool)

(assert (=> b!6140810 m!6982310))

(assert (=> b!6140810 m!6982300))

(assert (=> b!6140810 m!6982310))

(assert (=> b!6140810 m!6982300))

(declare-fun m!6982312 () Bool)

(assert (=> b!6140810 m!6982312))

(assert (=> b!6140680 d!1923936))

(declare-fun d!1923938 () Bool)

(declare-fun c!1104546 () Bool)

(assert (=> d!1923938 (= c!1104546 (isEmpty!36382 (t!378032 s!2326)))))

(declare-fun e!3742377 () Bool)

(assert (=> d!1923938 (= (matchZipper!2096 (set.union lt!2333059 lt!2333063) (t!378032 s!2326)) e!3742377)))

(declare-fun b!6140811 () Bool)

(assert (=> b!6140811 (= e!3742377 (nullableZipper!1865 (set.union lt!2333059 lt!2333063)))))

(declare-fun b!6140812 () Bool)

(assert (=> b!6140812 (= e!3742377 (matchZipper!2096 (derivationStepZipper!2057 (set.union lt!2333059 lt!2333063) (head!12689 (t!378032 s!2326))) (tail!11774 (t!378032 s!2326))))))

(assert (= (and d!1923938 c!1104546) b!6140811))

(assert (= (and d!1923938 (not c!1104546)) b!6140812))

(assert (=> d!1923938 m!6982292))

(declare-fun m!6982314 () Bool)

(assert (=> b!6140811 m!6982314))

(assert (=> b!6140812 m!6982296))

(assert (=> b!6140812 m!6982296))

(declare-fun m!6982316 () Bool)

(assert (=> b!6140812 m!6982316))

(assert (=> b!6140812 m!6982300))

(assert (=> b!6140812 m!6982316))

(assert (=> b!6140812 m!6982300))

(declare-fun m!6982318 () Bool)

(assert (=> b!6140812 m!6982318))

(assert (=> b!6140680 d!1923938))

(declare-fun b!6140833 () Bool)

(declare-fun e!3742390 () Bool)

(assert (=> b!6140833 (= e!3742390 (isEmpty!36378 (t!378030 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun b!6140834 () Bool)

(declare-fun e!3742393 () Bool)

(declare-fun e!3742391 () Bool)

(assert (=> b!6140834 (= e!3742393 e!3742391)))

(declare-fun c!1104556 () Bool)

(declare-fun tail!11775 (List!64551) List!64551)

(assert (=> b!6140834 (= c!1104556 (isEmpty!36378 (tail!11775 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun b!6140835 () Bool)

(declare-fun e!3742392 () Regex!16084)

(declare-fun e!3742395 () Regex!16084)

(assert (=> b!6140835 (= e!3742392 e!3742395)))

(declare-fun c!1104557 () Bool)

(assert (=> b!6140835 (= c!1104557 (is-Cons!64427 (exprs!5968 (h!70876 zl!343))))))

(declare-fun b!6140836 () Bool)

(declare-fun lt!2333153 () Regex!16084)

(declare-fun isConcat!1024 (Regex!16084) Bool)

(assert (=> b!6140836 (= e!3742391 (isConcat!1024 lt!2333153))))

(declare-fun b!6140837 () Bool)

(declare-fun e!3742394 () Bool)

(assert (=> b!6140837 (= e!3742394 e!3742393)))

(declare-fun c!1104558 () Bool)

(assert (=> b!6140837 (= c!1104558 (isEmpty!36378 (exprs!5968 (h!70876 zl!343))))))

(declare-fun d!1923940 () Bool)

(assert (=> d!1923940 e!3742394))

(declare-fun res!2544421 () Bool)

(assert (=> d!1923940 (=> (not res!2544421) (not e!3742394))))

(assert (=> d!1923940 (= res!2544421 (validRegex!7820 lt!2333153))))

(assert (=> d!1923940 (= lt!2333153 e!3742392)))

(declare-fun c!1104555 () Bool)

(assert (=> d!1923940 (= c!1104555 e!3742390)))

(declare-fun res!2544422 () Bool)

(assert (=> d!1923940 (=> (not res!2544422) (not e!3742390))))

(assert (=> d!1923940 (= res!2544422 (is-Cons!64427 (exprs!5968 (h!70876 zl!343))))))

(declare-fun lambda!334710 () Int)

(declare-fun forall!15205 (List!64551 Int) Bool)

(assert (=> d!1923940 (forall!15205 (exprs!5968 (h!70876 zl!343)) lambda!334710)))

(assert (=> d!1923940 (= (generalisedConcat!1681 (exprs!5968 (h!70876 zl!343))) lt!2333153)))

(declare-fun b!6140838 () Bool)

(declare-fun isEmptyExpr!1501 (Regex!16084) Bool)

(assert (=> b!6140838 (= e!3742393 (isEmptyExpr!1501 lt!2333153))))

(declare-fun b!6140839 () Bool)

(declare-fun head!12690 (List!64551) Regex!16084)

(assert (=> b!6140839 (= e!3742391 (= lt!2333153 (head!12690 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun b!6140840 () Bool)

(assert (=> b!6140840 (= e!3742395 EmptyExpr!16084)))

(declare-fun b!6140841 () Bool)

(assert (=> b!6140841 (= e!3742392 (h!70875 (exprs!5968 (h!70876 zl!343))))))

(declare-fun b!6140842 () Bool)

(assert (=> b!6140842 (= e!3742395 (Concat!24929 (h!70875 (exprs!5968 (h!70876 zl!343))) (generalisedConcat!1681 (t!378030 (exprs!5968 (h!70876 zl!343))))))))

(assert (= (and d!1923940 res!2544422) b!6140833))

(assert (= (and d!1923940 c!1104555) b!6140841))

(assert (= (and d!1923940 (not c!1104555)) b!6140835))

(assert (= (and b!6140835 c!1104557) b!6140842))

(assert (= (and b!6140835 (not c!1104557)) b!6140840))

(assert (= (and d!1923940 res!2544421) b!6140837))

(assert (= (and b!6140837 c!1104558) b!6140838))

(assert (= (and b!6140837 (not c!1104558)) b!6140834))

(assert (= (and b!6140834 c!1104556) b!6140839))

(assert (= (and b!6140834 (not c!1104556)) b!6140836))

(declare-fun m!6982320 () Bool)

(assert (=> b!6140834 m!6982320))

(assert (=> b!6140834 m!6982320))

(declare-fun m!6982322 () Bool)

(assert (=> b!6140834 m!6982322))

(assert (=> b!6140833 m!6982130))

(declare-fun m!6982324 () Bool)

(assert (=> d!1923940 m!6982324))

(declare-fun m!6982326 () Bool)

(assert (=> d!1923940 m!6982326))

(declare-fun m!6982328 () Bool)

(assert (=> b!6140842 m!6982328))

(declare-fun m!6982330 () Bool)

(assert (=> b!6140839 m!6982330))

(declare-fun m!6982332 () Bool)

(assert (=> b!6140837 m!6982332))

(declare-fun m!6982334 () Bool)

(assert (=> b!6140836 m!6982334))

(declare-fun m!6982336 () Bool)

(assert (=> b!6140838 m!6982336))

(assert (=> b!6140661 d!1923940))

(declare-fun bs!1522702 () Bool)

(declare-fun d!1923942 () Bool)

(assert (= bs!1522702 (and d!1923942 d!1923940)))

(declare-fun lambda!334713 () Int)

(assert (=> bs!1522702 (= lambda!334713 lambda!334710)))

(assert (=> d!1923942 (= (inv!83458 setElem!41537) (forall!15205 (exprs!5968 setElem!41537) lambda!334713))))

(declare-fun bs!1522703 () Bool)

(assert (= bs!1522703 d!1923942))

(declare-fun m!6982338 () Bool)

(assert (=> bs!1522703 m!6982338))

(assert (=> setNonEmpty!41537 d!1923942))

(declare-fun bs!1522704 () Bool)

(declare-fun d!1923944 () Bool)

(assert (= bs!1522704 (and d!1923944 d!1923940)))

(declare-fun lambda!334714 () Int)

(assert (=> bs!1522704 (= lambda!334714 lambda!334710)))

(declare-fun bs!1522705 () Bool)

(assert (= bs!1522705 (and d!1923944 d!1923942)))

(assert (=> bs!1522705 (= lambda!334714 lambda!334713)))

(assert (=> d!1923944 (= (inv!83458 (h!70876 zl!343)) (forall!15205 (exprs!5968 (h!70876 zl!343)) lambda!334714))))

(declare-fun bs!1522706 () Bool)

(assert (= bs!1522706 d!1923944))

(declare-fun m!6982340 () Bool)

(assert (=> bs!1522706 m!6982340))

(assert (=> b!6140673 d!1923944))

(declare-fun d!1923946 () Bool)

(declare-fun c!1104559 () Bool)

(assert (=> d!1923946 (= c!1104559 (isEmpty!36382 s!2326))))

(declare-fun e!3742396 () Bool)

(assert (=> d!1923946 (= (matchZipper!2096 lt!2333066 s!2326) e!3742396)))

(declare-fun b!6140843 () Bool)

(assert (=> b!6140843 (= e!3742396 (nullableZipper!1865 lt!2333066))))

(declare-fun b!6140844 () Bool)

(assert (=> b!6140844 (= e!3742396 (matchZipper!2096 (derivationStepZipper!2057 lt!2333066 (head!12689 s!2326)) (tail!11774 s!2326)))))

(assert (= (and d!1923946 c!1104559) b!6140843))

(assert (= (and d!1923946 (not c!1104559)) b!6140844))

(declare-fun m!6982342 () Bool)

(assert (=> d!1923946 m!6982342))

(declare-fun m!6982344 () Bool)

(assert (=> b!6140843 m!6982344))

(declare-fun m!6982346 () Bool)

(assert (=> b!6140844 m!6982346))

(assert (=> b!6140844 m!6982346))

(declare-fun m!6982348 () Bool)

(assert (=> b!6140844 m!6982348))

(declare-fun m!6982350 () Bool)

(assert (=> b!6140844 m!6982350))

(assert (=> b!6140844 m!6982348))

(assert (=> b!6140844 m!6982350))

(declare-fun m!6982352 () Bool)

(assert (=> b!6140844 m!6982352))

(assert (=> b!6140664 d!1923946))

(declare-fun d!1923948 () Bool)

(declare-fun c!1104560 () Bool)

(assert (=> d!1923948 (= c!1104560 (isEmpty!36382 (t!378032 s!2326)))))

(declare-fun e!3742397 () Bool)

(assert (=> d!1923948 (= (matchZipper!2096 lt!2333071 (t!378032 s!2326)) e!3742397)))

(declare-fun b!6140845 () Bool)

(assert (=> b!6140845 (= e!3742397 (nullableZipper!1865 lt!2333071))))

(declare-fun b!6140846 () Bool)

(assert (=> b!6140846 (= e!3742397 (matchZipper!2096 (derivationStepZipper!2057 lt!2333071 (head!12689 (t!378032 s!2326))) (tail!11774 (t!378032 s!2326))))))

(assert (= (and d!1923948 c!1104560) b!6140845))

(assert (= (and d!1923948 (not c!1104560)) b!6140846))

(assert (=> d!1923948 m!6982292))

(declare-fun m!6982354 () Bool)

(assert (=> b!6140845 m!6982354))

(assert (=> b!6140846 m!6982296))

(assert (=> b!6140846 m!6982296))

(declare-fun m!6982356 () Bool)

(assert (=> b!6140846 m!6982356))

(assert (=> b!6140846 m!6982300))

(assert (=> b!6140846 m!6982356))

(assert (=> b!6140846 m!6982300))

(declare-fun m!6982358 () Bool)

(assert (=> b!6140846 m!6982358))

(assert (=> b!6140664 d!1923948))

(declare-fun d!1923950 () Bool)

(declare-fun e!3742400 () Bool)

(assert (=> d!1923950 e!3742400))

(declare-fun res!2544425 () Bool)

(assert (=> d!1923950 (=> (not res!2544425) (not e!3742400))))

(declare-fun lt!2333156 () List!64552)

(declare-fun noDuplicate!1931 (List!64552) Bool)

(assert (=> d!1923950 (= res!2544425 (noDuplicate!1931 lt!2333156))))

(declare-fun choose!45634 ((Set Context!10936)) List!64552)

(assert (=> d!1923950 (= lt!2333156 (choose!45634 z!1189))))

(assert (=> d!1923950 (= (toList!9868 z!1189) lt!2333156)))

(declare-fun b!6140849 () Bool)

(declare-fun content!11992 (List!64552) (Set Context!10936))

(assert (=> b!6140849 (= e!3742400 (= (content!11992 lt!2333156) z!1189))))

(assert (= (and d!1923950 res!2544425) b!6140849))

(declare-fun m!6982360 () Bool)

(assert (=> d!1923950 m!6982360))

(declare-fun m!6982362 () Bool)

(assert (=> d!1923950 m!6982362))

(declare-fun m!6982364 () Bool)

(assert (=> b!6140849 m!6982364))

(assert (=> b!6140672 d!1923950))

(declare-fun bs!1522707 () Bool)

(declare-fun d!1923952 () Bool)

(assert (= bs!1522707 (and d!1923952 d!1923940)))

(declare-fun lambda!334717 () Int)

(assert (=> bs!1522707 (= lambda!334717 lambda!334710)))

(declare-fun bs!1522708 () Bool)

(assert (= bs!1522708 (and d!1923952 d!1923942)))

(assert (=> bs!1522708 (= lambda!334717 lambda!334713)))

(declare-fun bs!1522709 () Bool)

(assert (= bs!1522709 (and d!1923952 d!1923944)))

(assert (=> bs!1522709 (= lambda!334717 lambda!334714)))

(declare-fun b!6140870 () Bool)

(declare-fun e!3742415 () Regex!16084)

(assert (=> b!6140870 (= e!3742415 (h!70875 (unfocusZipperList!1505 zl!343)))))

(declare-fun b!6140871 () Bool)

(declare-fun e!3742414 () Regex!16084)

(assert (=> b!6140871 (= e!3742414 (Union!16084 (h!70875 (unfocusZipperList!1505 zl!343)) (generalisedUnion!1928 (t!378030 (unfocusZipperList!1505 zl!343)))))))

(declare-fun e!3742413 () Bool)

(assert (=> d!1923952 e!3742413))

(declare-fun res!2544431 () Bool)

(assert (=> d!1923952 (=> (not res!2544431) (not e!3742413))))

(declare-fun lt!2333159 () Regex!16084)

(assert (=> d!1923952 (= res!2544431 (validRegex!7820 lt!2333159))))

(assert (=> d!1923952 (= lt!2333159 e!3742415)))

(declare-fun c!1104570 () Bool)

(declare-fun e!3742417 () Bool)

(assert (=> d!1923952 (= c!1104570 e!3742417)))

(declare-fun res!2544430 () Bool)

(assert (=> d!1923952 (=> (not res!2544430) (not e!3742417))))

(assert (=> d!1923952 (= res!2544430 (is-Cons!64427 (unfocusZipperList!1505 zl!343)))))

(assert (=> d!1923952 (forall!15205 (unfocusZipperList!1505 zl!343) lambda!334717)))

(assert (=> d!1923952 (= (generalisedUnion!1928 (unfocusZipperList!1505 zl!343)) lt!2333159)))

(declare-fun b!6140872 () Bool)

(assert (=> b!6140872 (= e!3742414 EmptyLang!16084)))

(declare-fun b!6140873 () Bool)

(assert (=> b!6140873 (= e!3742417 (isEmpty!36378 (t!378030 (unfocusZipperList!1505 zl!343))))))

(declare-fun b!6140874 () Bool)

(declare-fun e!3742418 () Bool)

(declare-fun isUnion!941 (Regex!16084) Bool)

(assert (=> b!6140874 (= e!3742418 (isUnion!941 lt!2333159))))

(declare-fun b!6140875 () Bool)

(declare-fun e!3742416 () Bool)

(assert (=> b!6140875 (= e!3742416 e!3742418)))

(declare-fun c!1104569 () Bool)

(assert (=> b!6140875 (= c!1104569 (isEmpty!36378 (tail!11775 (unfocusZipperList!1505 zl!343))))))

(declare-fun b!6140876 () Bool)

(assert (=> b!6140876 (= e!3742413 e!3742416)))

(declare-fun c!1104571 () Bool)

(assert (=> b!6140876 (= c!1104571 (isEmpty!36378 (unfocusZipperList!1505 zl!343)))))

(declare-fun b!6140877 () Bool)

(assert (=> b!6140877 (= e!3742418 (= lt!2333159 (head!12690 (unfocusZipperList!1505 zl!343))))))

(declare-fun b!6140878 () Bool)

(declare-fun isEmptyLang!1511 (Regex!16084) Bool)

(assert (=> b!6140878 (= e!3742416 (isEmptyLang!1511 lt!2333159))))

(declare-fun b!6140879 () Bool)

(assert (=> b!6140879 (= e!3742415 e!3742414)))

(declare-fun c!1104572 () Bool)

(assert (=> b!6140879 (= c!1104572 (is-Cons!64427 (unfocusZipperList!1505 zl!343)))))

(assert (= (and d!1923952 res!2544430) b!6140873))

(assert (= (and d!1923952 c!1104570) b!6140870))

(assert (= (and d!1923952 (not c!1104570)) b!6140879))

(assert (= (and b!6140879 c!1104572) b!6140871))

(assert (= (and b!6140879 (not c!1104572)) b!6140872))

(assert (= (and d!1923952 res!2544431) b!6140876))

(assert (= (and b!6140876 c!1104571) b!6140878))

(assert (= (and b!6140876 (not c!1104571)) b!6140875))

(assert (= (and b!6140875 c!1104569) b!6140877))

(assert (= (and b!6140875 (not c!1104569)) b!6140874))

(declare-fun m!6982366 () Bool)

(assert (=> b!6140878 m!6982366))

(declare-fun m!6982368 () Bool)

(assert (=> b!6140873 m!6982368))

(declare-fun m!6982370 () Bool)

(assert (=> b!6140874 m!6982370))

(declare-fun m!6982372 () Bool)

(assert (=> b!6140871 m!6982372))

(assert (=> b!6140877 m!6982166))

(declare-fun m!6982374 () Bool)

(assert (=> b!6140877 m!6982374))

(assert (=> b!6140875 m!6982166))

(declare-fun m!6982376 () Bool)

(assert (=> b!6140875 m!6982376))

(assert (=> b!6140875 m!6982376))

(declare-fun m!6982378 () Bool)

(assert (=> b!6140875 m!6982378))

(assert (=> b!6140876 m!6982166))

(declare-fun m!6982380 () Bool)

(assert (=> b!6140876 m!6982380))

(declare-fun m!6982382 () Bool)

(assert (=> d!1923952 m!6982382))

(assert (=> d!1923952 m!6982166))

(declare-fun m!6982384 () Bool)

(assert (=> d!1923952 m!6982384))

(assert (=> b!6140684 d!1923952))

(declare-fun bs!1522710 () Bool)

(declare-fun d!1923954 () Bool)

(assert (= bs!1522710 (and d!1923954 d!1923940)))

(declare-fun lambda!334720 () Int)

(assert (=> bs!1522710 (= lambda!334720 lambda!334710)))

(declare-fun bs!1522711 () Bool)

(assert (= bs!1522711 (and d!1923954 d!1923942)))

(assert (=> bs!1522711 (= lambda!334720 lambda!334713)))

(declare-fun bs!1522712 () Bool)

(assert (= bs!1522712 (and d!1923954 d!1923944)))

(assert (=> bs!1522712 (= lambda!334720 lambda!334714)))

(declare-fun bs!1522713 () Bool)

(assert (= bs!1522713 (and d!1923954 d!1923952)))

(assert (=> bs!1522713 (= lambda!334720 lambda!334717)))

(declare-fun lt!2333162 () List!64551)

(assert (=> d!1923954 (forall!15205 lt!2333162 lambda!334720)))

(declare-fun e!3742421 () List!64551)

(assert (=> d!1923954 (= lt!2333162 e!3742421)))

(declare-fun c!1104575 () Bool)

(assert (=> d!1923954 (= c!1104575 (is-Cons!64428 zl!343))))

(assert (=> d!1923954 (= (unfocusZipperList!1505 zl!343) lt!2333162)))

(declare-fun b!6140884 () Bool)

(assert (=> b!6140884 (= e!3742421 (Cons!64427 (generalisedConcat!1681 (exprs!5968 (h!70876 zl!343))) (unfocusZipperList!1505 (t!378031 zl!343))))))

(declare-fun b!6140885 () Bool)

(assert (=> b!6140885 (= e!3742421 Nil!64427)))

(assert (= (and d!1923954 c!1104575) b!6140884))

(assert (= (and d!1923954 (not c!1104575)) b!6140885))

(declare-fun m!6982386 () Bool)

(assert (=> d!1923954 m!6982386))

(assert (=> b!6140884 m!6982186))

(declare-fun m!6982388 () Bool)

(assert (=> b!6140884 m!6982388))

(assert (=> b!6140684 d!1923954))

(assert (=> b!6140663 d!1923930))

(declare-fun b!6140904 () Bool)

(declare-fun res!2544442 () Bool)

(declare-fun e!3742436 () Bool)

(assert (=> b!6140904 (=> (not res!2544442) (not e!3742436))))

(declare-fun lt!2333170 () Option!15975)

(declare-fun get!22228 (Option!15975) tuple2!66126)

(assert (=> b!6140904 (= res!2544442 (matchR!8267 (regTwo!32680 r!7292) (_2!36366 (get!22228 lt!2333170))))))

(declare-fun b!6140905 () Bool)

(declare-fun e!3742432 () Bool)

(assert (=> b!6140905 (= e!3742432 (matchR!8267 (regTwo!32680 r!7292) s!2326))))

(declare-fun b!6140906 () Bool)

(declare-fun e!3742433 () Option!15975)

(declare-fun e!3742434 () Option!15975)

(assert (=> b!6140906 (= e!3742433 e!3742434)))

(declare-fun c!1104581 () Bool)

(assert (=> b!6140906 (= c!1104581 (is-Nil!64429 s!2326))))

(declare-fun b!6140907 () Bool)

(assert (=> b!6140907 (= e!3742433 (Some!15974 (tuple2!66127 Nil!64429 s!2326)))))

(declare-fun b!6140908 () Bool)

(assert (=> b!6140908 (= e!3742434 None!15974)))

(declare-fun b!6140909 () Bool)

(declare-fun e!3742435 () Bool)

(assert (=> b!6140909 (= e!3742435 (not (isDefined!12678 lt!2333170)))))

(declare-fun b!6140910 () Bool)

(declare-fun ++!14170 (List!64553 List!64553) List!64553)

(assert (=> b!6140910 (= e!3742436 (= (++!14170 (_1!36366 (get!22228 lt!2333170)) (_2!36366 (get!22228 lt!2333170))) s!2326))))

(declare-fun d!1923956 () Bool)

(assert (=> d!1923956 e!3742435))

(declare-fun res!2544444 () Bool)

(assert (=> d!1923956 (=> res!2544444 e!3742435)))

(assert (=> d!1923956 (= res!2544444 e!3742436)))

(declare-fun res!2544443 () Bool)

(assert (=> d!1923956 (=> (not res!2544443) (not e!3742436))))

(assert (=> d!1923956 (= res!2544443 (isDefined!12678 lt!2333170))))

(assert (=> d!1923956 (= lt!2333170 e!3742433)))

(declare-fun c!1104580 () Bool)

(assert (=> d!1923956 (= c!1104580 e!3742432)))

(declare-fun res!2544446 () Bool)

(assert (=> d!1923956 (=> (not res!2544446) (not e!3742432))))

(assert (=> d!1923956 (= res!2544446 (matchR!8267 (regOne!32680 r!7292) Nil!64429))))

(assert (=> d!1923956 (validRegex!7820 (regOne!32680 r!7292))))

(assert (=> d!1923956 (= (findConcatSeparation!2389 (regOne!32680 r!7292) (regTwo!32680 r!7292) Nil!64429 s!2326 s!2326) lt!2333170)))

(declare-fun b!6140911 () Bool)

(declare-fun res!2544445 () Bool)

(assert (=> b!6140911 (=> (not res!2544445) (not e!3742436))))

(assert (=> b!6140911 (= res!2544445 (matchR!8267 (regOne!32680 r!7292) (_1!36366 (get!22228 lt!2333170))))))

(declare-fun b!6140912 () Bool)

(declare-fun lt!2333171 () Unit!157491)

(declare-fun lt!2333169 () Unit!157491)

(assert (=> b!6140912 (= lt!2333171 lt!2333169)))

(assert (=> b!6140912 (= (++!14170 (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429)) (t!378032 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2265 (List!64553 C!32438 List!64553 List!64553) Unit!157491)

(assert (=> b!6140912 (= lt!2333169 (lemmaMoveElementToOtherListKeepsConcatEq!2265 Nil!64429 (h!70877 s!2326) (t!378032 s!2326) s!2326))))

(assert (=> b!6140912 (= e!3742434 (findConcatSeparation!2389 (regOne!32680 r!7292) (regTwo!32680 r!7292) (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429)) (t!378032 s!2326) s!2326))))

(assert (= (and d!1923956 res!2544446) b!6140905))

(assert (= (and d!1923956 c!1104580) b!6140907))

(assert (= (and d!1923956 (not c!1104580)) b!6140906))

(assert (= (and b!6140906 c!1104581) b!6140908))

(assert (= (and b!6140906 (not c!1104581)) b!6140912))

(assert (= (and d!1923956 res!2544443) b!6140911))

(assert (= (and b!6140911 res!2544445) b!6140904))

(assert (= (and b!6140904 res!2544442) b!6140910))

(assert (= (and d!1923956 (not res!2544444)) b!6140909))

(declare-fun m!6982390 () Bool)

(assert (=> b!6140904 m!6982390))

(declare-fun m!6982392 () Bool)

(assert (=> b!6140904 m!6982392))

(declare-fun m!6982394 () Bool)

(assert (=> d!1923956 m!6982394))

(declare-fun m!6982396 () Bool)

(assert (=> d!1923956 m!6982396))

(declare-fun m!6982398 () Bool)

(assert (=> d!1923956 m!6982398))

(declare-fun m!6982400 () Bool)

(assert (=> b!6140905 m!6982400))

(assert (=> b!6140909 m!6982394))

(assert (=> b!6140910 m!6982390))

(declare-fun m!6982402 () Bool)

(assert (=> b!6140910 m!6982402))

(declare-fun m!6982404 () Bool)

(assert (=> b!6140912 m!6982404))

(assert (=> b!6140912 m!6982404))

(declare-fun m!6982406 () Bool)

(assert (=> b!6140912 m!6982406))

(declare-fun m!6982408 () Bool)

(assert (=> b!6140912 m!6982408))

(assert (=> b!6140912 m!6982404))

(declare-fun m!6982410 () Bool)

(assert (=> b!6140912 m!6982410))

(assert (=> b!6140911 m!6982390))

(declare-fun m!6982412 () Bool)

(assert (=> b!6140911 m!6982412))

(assert (=> b!6140666 d!1923956))

(declare-fun d!1923958 () Bool)

(declare-fun choose!45635 (Int) Bool)

(assert (=> d!1923958 (= (Exists!3154 lambda!334692) (choose!45635 lambda!334692))))

(declare-fun bs!1522714 () Bool)

(assert (= bs!1522714 d!1923958))

(declare-fun m!6982414 () Bool)

(assert (=> bs!1522714 m!6982414))

(assert (=> b!6140666 d!1923958))

(declare-fun d!1923960 () Bool)

(assert (=> d!1923960 (= (Exists!3154 lambda!334693) (choose!45635 lambda!334693))))

(declare-fun bs!1522715 () Bool)

(assert (= bs!1522715 d!1923960))

(declare-fun m!6982416 () Bool)

(assert (=> bs!1522715 m!6982416))

(assert (=> b!6140666 d!1923960))

(declare-fun bs!1522716 () Bool)

(declare-fun d!1923962 () Bool)

(assert (= bs!1522716 (and d!1923962 b!6140666)))

(declare-fun lambda!334723 () Int)

(assert (=> bs!1522716 (= lambda!334723 lambda!334692)))

(assert (=> bs!1522716 (not (= lambda!334723 lambda!334693))))

(assert (=> d!1923962 true))

(assert (=> d!1923962 true))

(assert (=> d!1923962 true))

(assert (=> d!1923962 (= (isDefined!12678 (findConcatSeparation!2389 (regOne!32680 r!7292) (regTwo!32680 r!7292) Nil!64429 s!2326 s!2326)) (Exists!3154 lambda!334723))))

(declare-fun lt!2333174 () Unit!157491)

(declare-fun choose!45636 (Regex!16084 Regex!16084 List!64553) Unit!157491)

(assert (=> d!1923962 (= lt!2333174 (choose!45636 (regOne!32680 r!7292) (regTwo!32680 r!7292) s!2326))))

(assert (=> d!1923962 (validRegex!7820 (regOne!32680 r!7292))))

(assert (=> d!1923962 (= (lemmaFindConcatSeparationEquivalentToExists!2153 (regOne!32680 r!7292) (regTwo!32680 r!7292) s!2326) lt!2333174)))

(declare-fun bs!1522717 () Bool)

(assert (= bs!1522717 d!1923962))

(assert (=> bs!1522717 m!6982116))

(declare-fun m!6982418 () Bool)

(assert (=> bs!1522717 m!6982418))

(assert (=> bs!1522717 m!6982398))

(assert (=> bs!1522717 m!6982116))

(assert (=> bs!1522717 m!6982118))

(declare-fun m!6982420 () Bool)

(assert (=> bs!1522717 m!6982420))

(assert (=> b!6140666 d!1923962))

(declare-fun bs!1522718 () Bool)

(declare-fun d!1923964 () Bool)

(assert (= bs!1522718 (and d!1923964 b!6140666)))

(declare-fun lambda!334728 () Int)

(assert (=> bs!1522718 (= lambda!334728 lambda!334692)))

(assert (=> bs!1522718 (not (= lambda!334728 lambda!334693))))

(declare-fun bs!1522719 () Bool)

(assert (= bs!1522719 (and d!1923964 d!1923962)))

(assert (=> bs!1522719 (= lambda!334728 lambda!334723)))

(assert (=> d!1923964 true))

(assert (=> d!1923964 true))

(assert (=> d!1923964 true))

(declare-fun lambda!334729 () Int)

(assert (=> bs!1522718 (not (= lambda!334729 lambda!334692))))

(assert (=> bs!1522718 (= lambda!334729 lambda!334693)))

(assert (=> bs!1522719 (not (= lambda!334729 lambda!334723))))

(declare-fun bs!1522720 () Bool)

(assert (= bs!1522720 d!1923964))

(assert (=> bs!1522720 (not (= lambda!334729 lambda!334728))))

(assert (=> d!1923964 true))

(assert (=> d!1923964 true))

(assert (=> d!1923964 true))

(assert (=> d!1923964 (= (Exists!3154 lambda!334728) (Exists!3154 lambda!334729))))

(declare-fun lt!2333177 () Unit!157491)

(declare-fun choose!45637 (Regex!16084 Regex!16084 List!64553) Unit!157491)

(assert (=> d!1923964 (= lt!2333177 (choose!45637 (regOne!32680 r!7292) (regTwo!32680 r!7292) s!2326))))

(assert (=> d!1923964 (validRegex!7820 (regOne!32680 r!7292))))

(assert (=> d!1923964 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1691 (regOne!32680 r!7292) (regTwo!32680 r!7292) s!2326) lt!2333177)))

(declare-fun m!6982422 () Bool)

(assert (=> bs!1522720 m!6982422))

(declare-fun m!6982424 () Bool)

(assert (=> bs!1522720 m!6982424))

(declare-fun m!6982426 () Bool)

(assert (=> bs!1522720 m!6982426))

(assert (=> bs!1522720 m!6982398))

(assert (=> b!6140666 d!1923964))

(declare-fun d!1923966 () Bool)

(declare-fun isEmpty!36383 (Option!15975) Bool)

(assert (=> d!1923966 (= (isDefined!12678 (findConcatSeparation!2389 (regOne!32680 r!7292) (regTwo!32680 r!7292) Nil!64429 s!2326 s!2326)) (not (isEmpty!36383 (findConcatSeparation!2389 (regOne!32680 r!7292) (regTwo!32680 r!7292) Nil!64429 s!2326 s!2326))))))

(declare-fun bs!1522721 () Bool)

(assert (= bs!1522721 d!1923966))

(assert (=> bs!1522721 m!6982116))

(declare-fun m!6982428 () Bool)

(assert (=> bs!1522721 m!6982428))

(assert (=> b!6140666 d!1923966))

(declare-fun bs!1522722 () Bool)

(declare-fun b!6140965 () Bool)

(assert (= bs!1522722 (and b!6140965 b!6140666)))

(declare-fun lambda!334734 () Int)

(assert (=> bs!1522722 (not (= lambda!334734 lambda!334692))))

(declare-fun bs!1522723 () Bool)

(assert (= bs!1522723 (and b!6140965 d!1923964)))

(assert (=> bs!1522723 (not (= lambda!334734 lambda!334729))))

(declare-fun bs!1522724 () Bool)

(assert (= bs!1522724 (and b!6140965 d!1923962)))

(assert (=> bs!1522724 (not (= lambda!334734 lambda!334723))))

(assert (=> bs!1522722 (not (= lambda!334734 lambda!334693))))

(assert (=> bs!1522723 (not (= lambda!334734 lambda!334728))))

(assert (=> b!6140965 true))

(assert (=> b!6140965 true))

(declare-fun bs!1522725 () Bool)

(declare-fun b!6140964 () Bool)

(assert (= bs!1522725 (and b!6140964 b!6140666)))

(declare-fun lambda!334735 () Int)

(assert (=> bs!1522725 (not (= lambda!334735 lambda!334692))))

(declare-fun bs!1522726 () Bool)

(assert (= bs!1522726 (and b!6140964 d!1923964)))

(assert (=> bs!1522726 (= lambda!334735 lambda!334729)))

(declare-fun bs!1522727 () Bool)

(assert (= bs!1522727 (and b!6140964 b!6140965)))

(assert (=> bs!1522727 (not (= lambda!334735 lambda!334734))))

(declare-fun bs!1522728 () Bool)

(assert (= bs!1522728 (and b!6140964 d!1923962)))

(assert (=> bs!1522728 (not (= lambda!334735 lambda!334723))))

(assert (=> bs!1522725 (= lambda!334735 lambda!334693)))

(assert (=> bs!1522726 (not (= lambda!334735 lambda!334728))))

(assert (=> b!6140964 true))

(assert (=> b!6140964 true))

(declare-fun call!509967 () Bool)

(declare-fun bm!509962 () Bool)

(declare-fun c!1104590 () Bool)

(assert (=> bm!509962 (= call!509967 (Exists!3154 (ite c!1104590 lambda!334734 lambda!334735)))))

(declare-fun b!6140957 () Bool)

(declare-fun e!3742464 () Bool)

(declare-fun e!3742461 () Bool)

(assert (=> b!6140957 (= e!3742464 e!3742461)))

(assert (=> b!6140957 (= c!1104590 (is-Star!16084 r!7292))))

(declare-fun b!6140958 () Bool)

(declare-fun e!3742466 () Bool)

(assert (=> b!6140958 (= e!3742466 (matchRSpec!3185 (regTwo!32681 r!7292) s!2326))))

(declare-fun b!6140959 () Bool)

(declare-fun c!1104592 () Bool)

(assert (=> b!6140959 (= c!1104592 (is-ElementMatch!16084 r!7292))))

(declare-fun e!3742463 () Bool)

(declare-fun e!3742467 () Bool)

(assert (=> b!6140959 (= e!3742463 e!3742467)))

(declare-fun b!6140960 () Bool)

(declare-fun res!2544475 () Bool)

(declare-fun e!3742465 () Bool)

(assert (=> b!6140960 (=> res!2544475 e!3742465)))

(declare-fun call!509968 () Bool)

(assert (=> b!6140960 (= res!2544475 call!509968)))

(assert (=> b!6140960 (= e!3742461 e!3742465)))

(declare-fun b!6140961 () Bool)

(declare-fun e!3742462 () Bool)

(assert (=> b!6140961 (= e!3742462 call!509968)))

(declare-fun b!6140962 () Bool)

(assert (=> b!6140962 (= e!3742464 e!3742466)))

(declare-fun res!2544477 () Bool)

(assert (=> b!6140962 (= res!2544477 (matchRSpec!3185 (regOne!32681 r!7292) s!2326))))

(assert (=> b!6140962 (=> res!2544477 e!3742466)))

(assert (=> b!6140964 (= e!3742461 call!509967)))

(assert (=> b!6140965 (= e!3742465 call!509967)))

(declare-fun b!6140966 () Bool)

(assert (=> b!6140966 (= e!3742467 (= s!2326 (Cons!64429 (c!1104532 r!7292) Nil!64429)))))

(declare-fun b!6140967 () Bool)

(declare-fun c!1104591 () Bool)

(assert (=> b!6140967 (= c!1104591 (is-Union!16084 r!7292))))

(assert (=> b!6140967 (= e!3742467 e!3742464)))

(declare-fun bm!509963 () Bool)

(assert (=> bm!509963 (= call!509968 (isEmpty!36382 s!2326))))

(declare-fun b!6140963 () Bool)

(assert (=> b!6140963 (= e!3742462 e!3742463)))

(declare-fun res!2544476 () Bool)

(assert (=> b!6140963 (= res!2544476 (not (is-EmptyLang!16084 r!7292)))))

(assert (=> b!6140963 (=> (not res!2544476) (not e!3742463))))

(declare-fun d!1923968 () Bool)

(declare-fun c!1104593 () Bool)

(assert (=> d!1923968 (= c!1104593 (is-EmptyExpr!16084 r!7292))))

(assert (=> d!1923968 (= (matchRSpec!3185 r!7292 s!2326) e!3742462)))

(assert (= (and d!1923968 c!1104593) b!6140961))

(assert (= (and d!1923968 (not c!1104593)) b!6140963))

(assert (= (and b!6140963 res!2544476) b!6140959))

(assert (= (and b!6140959 c!1104592) b!6140966))

(assert (= (and b!6140959 (not c!1104592)) b!6140967))

(assert (= (and b!6140967 c!1104591) b!6140962))

(assert (= (and b!6140967 (not c!1104591)) b!6140957))

(assert (= (and b!6140962 (not res!2544477)) b!6140958))

(assert (= (and b!6140957 c!1104590) b!6140960))

(assert (= (and b!6140957 (not c!1104590)) b!6140964))

(assert (= (and b!6140960 (not res!2544475)) b!6140965))

(assert (= (or b!6140965 b!6140964) bm!509962))

(assert (= (or b!6140961 b!6140960) bm!509963))

(declare-fun m!6982430 () Bool)

(assert (=> bm!509962 m!6982430))

(declare-fun m!6982432 () Bool)

(assert (=> b!6140958 m!6982432))

(declare-fun m!6982434 () Bool)

(assert (=> b!6140962 m!6982434))

(assert (=> bm!509963 m!6982342))

(assert (=> b!6140676 d!1923968))

(declare-fun b!6140996 () Bool)

(declare-fun res!2544494 () Bool)

(declare-fun e!3742482 () Bool)

(assert (=> b!6140996 (=> (not res!2544494) (not e!3742482))))

(declare-fun call!509971 () Bool)

(assert (=> b!6140996 (= res!2544494 (not call!509971))))

(declare-fun b!6140997 () Bool)

(declare-fun e!3742486 () Bool)

(assert (=> b!6140997 (= e!3742486 (nullable!6077 r!7292))))

(declare-fun b!6140998 () Bool)

(declare-fun e!3742487 () Bool)

(declare-fun e!3742488 () Bool)

(assert (=> b!6140998 (= e!3742487 e!3742488)))

(declare-fun res!2544496 () Bool)

(assert (=> b!6140998 (=> res!2544496 e!3742488)))

(assert (=> b!6140998 (= res!2544496 call!509971)))

(declare-fun b!6140999 () Bool)

(declare-fun e!3742485 () Bool)

(declare-fun lt!2333180 () Bool)

(assert (=> b!6140999 (= e!3742485 (not lt!2333180))))

(declare-fun d!1923970 () Bool)

(declare-fun e!3742484 () Bool)

(assert (=> d!1923970 e!3742484))

(declare-fun c!1104602 () Bool)

(assert (=> d!1923970 (= c!1104602 (is-EmptyExpr!16084 r!7292))))

(assert (=> d!1923970 (= lt!2333180 e!3742486)))

(declare-fun c!1104601 () Bool)

(assert (=> d!1923970 (= c!1104601 (isEmpty!36382 s!2326))))

(assert (=> d!1923970 (validRegex!7820 r!7292)))

(assert (=> d!1923970 (= (matchR!8267 r!7292 s!2326) lt!2333180)))

(declare-fun bm!509966 () Bool)

(assert (=> bm!509966 (= call!509971 (isEmpty!36382 s!2326))))

(declare-fun b!6141000 () Bool)

(declare-fun e!3742483 () Bool)

(assert (=> b!6141000 (= e!3742483 e!3742487)))

(declare-fun res!2544497 () Bool)

(assert (=> b!6141000 (=> (not res!2544497) (not e!3742487))))

(assert (=> b!6141000 (= res!2544497 (not lt!2333180))))

(declare-fun b!6141001 () Bool)

(declare-fun res!2544501 () Bool)

(assert (=> b!6141001 (=> (not res!2544501) (not e!3742482))))

(assert (=> b!6141001 (= res!2544501 (isEmpty!36382 (tail!11774 s!2326)))))

(declare-fun b!6141002 () Bool)

(assert (=> b!6141002 (= e!3742482 (= (head!12689 s!2326) (c!1104532 r!7292)))))

(declare-fun b!6141003 () Bool)

(assert (=> b!6141003 (= e!3742484 e!3742485)))

(declare-fun c!1104600 () Bool)

(assert (=> b!6141003 (= c!1104600 (is-EmptyLang!16084 r!7292))))

(declare-fun b!6141004 () Bool)

(declare-fun res!2544499 () Bool)

(assert (=> b!6141004 (=> res!2544499 e!3742488)))

(assert (=> b!6141004 (= res!2544499 (not (isEmpty!36382 (tail!11774 s!2326))))))

(declare-fun b!6141005 () Bool)

(declare-fun res!2544500 () Bool)

(assert (=> b!6141005 (=> res!2544500 e!3742483)))

(assert (=> b!6141005 (= res!2544500 (not (is-ElementMatch!16084 r!7292)))))

(assert (=> b!6141005 (= e!3742485 e!3742483)))

(declare-fun b!6141006 () Bool)

(assert (=> b!6141006 (= e!3742488 (not (= (head!12689 s!2326) (c!1104532 r!7292))))))

(declare-fun b!6141007 () Bool)

(assert (=> b!6141007 (= e!3742484 (= lt!2333180 call!509971))))

(declare-fun b!6141008 () Bool)

(declare-fun res!2544495 () Bool)

(assert (=> b!6141008 (=> res!2544495 e!3742483)))

(assert (=> b!6141008 (= res!2544495 e!3742482)))

(declare-fun res!2544498 () Bool)

(assert (=> b!6141008 (=> (not res!2544498) (not e!3742482))))

(assert (=> b!6141008 (= res!2544498 lt!2333180)))

(declare-fun b!6141009 () Bool)

(declare-fun derivativeStep!4804 (Regex!16084 C!32438) Regex!16084)

(assert (=> b!6141009 (= e!3742486 (matchR!8267 (derivativeStep!4804 r!7292 (head!12689 s!2326)) (tail!11774 s!2326)))))

(assert (= (and d!1923970 c!1104601) b!6140997))

(assert (= (and d!1923970 (not c!1104601)) b!6141009))

(assert (= (and d!1923970 c!1104602) b!6141007))

(assert (= (and d!1923970 (not c!1104602)) b!6141003))

(assert (= (and b!6141003 c!1104600) b!6140999))

(assert (= (and b!6141003 (not c!1104600)) b!6141005))

(assert (= (and b!6141005 (not res!2544500)) b!6141008))

(assert (= (and b!6141008 res!2544498) b!6140996))

(assert (= (and b!6140996 res!2544494) b!6141001))

(assert (= (and b!6141001 res!2544501) b!6141002))

(assert (= (and b!6141008 (not res!2544495)) b!6141000))

(assert (= (and b!6141000 res!2544497) b!6140998))

(assert (= (and b!6140998 (not res!2544496)) b!6141004))

(assert (= (and b!6141004 (not res!2544499)) b!6141006))

(assert (= (or b!6141007 b!6140996 b!6140998) bm!509966))

(assert (=> b!6141002 m!6982346))

(assert (=> b!6141006 m!6982346))

(declare-fun m!6982436 () Bool)

(assert (=> b!6140997 m!6982436))

(assert (=> bm!509966 m!6982342))

(assert (=> b!6141004 m!6982350))

(assert (=> b!6141004 m!6982350))

(declare-fun m!6982438 () Bool)

(assert (=> b!6141004 m!6982438))

(assert (=> b!6141001 m!6982350))

(assert (=> b!6141001 m!6982350))

(assert (=> b!6141001 m!6982438))

(assert (=> b!6141009 m!6982346))

(assert (=> b!6141009 m!6982346))

(declare-fun m!6982440 () Bool)

(assert (=> b!6141009 m!6982440))

(assert (=> b!6141009 m!6982350))

(assert (=> b!6141009 m!6982440))

(assert (=> b!6141009 m!6982350))

(declare-fun m!6982442 () Bool)

(assert (=> b!6141009 m!6982442))

(assert (=> d!1923970 m!6982342))

(assert (=> d!1923970 m!6982150))

(assert (=> b!6140676 d!1923970))

(declare-fun d!1923972 () Bool)

(assert (=> d!1923972 (= (matchR!8267 r!7292 s!2326) (matchRSpec!3185 r!7292 s!2326))))

(declare-fun lt!2333183 () Unit!157491)

(declare-fun choose!45638 (Regex!16084 List!64553) Unit!157491)

(assert (=> d!1923972 (= lt!2333183 (choose!45638 r!7292 s!2326))))

(assert (=> d!1923972 (validRegex!7820 r!7292)))

(assert (=> d!1923972 (= (mainMatchTheorem!3185 r!7292 s!2326) lt!2333183)))

(declare-fun bs!1522729 () Bool)

(assert (= bs!1522729 d!1923972))

(assert (=> bs!1522729 m!6982158))

(assert (=> bs!1522729 m!6982156))

(declare-fun m!6982444 () Bool)

(assert (=> bs!1522729 m!6982444))

(assert (=> bs!1522729 m!6982150))

(assert (=> b!6140676 d!1923972))

(declare-fun call!509978 () Bool)

(declare-fun bm!509973 () Bool)

(declare-fun c!1104607 () Bool)

(declare-fun c!1104608 () Bool)

(assert (=> bm!509973 (= call!509978 (validRegex!7820 (ite c!1104608 (reg!16413 r!7292) (ite c!1104607 (regOne!32681 r!7292) (regOne!32680 r!7292)))))))

(declare-fun b!6141029 () Bool)

(declare-fun res!2544515 () Bool)

(declare-fun e!3742508 () Bool)

(assert (=> b!6141029 (=> res!2544515 e!3742508)))

(assert (=> b!6141029 (= res!2544515 (not (is-Concat!24929 r!7292)))))

(declare-fun e!3742509 () Bool)

(assert (=> b!6141029 (= e!3742509 e!3742508)))

(declare-fun b!6141030 () Bool)

(declare-fun res!2544516 () Bool)

(declare-fun e!3742506 () Bool)

(assert (=> b!6141030 (=> (not res!2544516) (not e!3742506))))

(declare-fun call!509979 () Bool)

(assert (=> b!6141030 (= res!2544516 call!509979)))

(assert (=> b!6141030 (= e!3742509 e!3742506)))

(declare-fun b!6141031 () Bool)

(declare-fun e!3742504 () Bool)

(declare-fun call!509980 () Bool)

(assert (=> b!6141031 (= e!3742504 call!509980)))

(declare-fun b!6141032 () Bool)

(declare-fun e!3742507 () Bool)

(declare-fun e!3742505 () Bool)

(assert (=> b!6141032 (= e!3742507 e!3742505)))

(declare-fun res!2544514 () Bool)

(assert (=> b!6141032 (= res!2544514 (not (nullable!6077 (reg!16413 r!7292))))))

(assert (=> b!6141032 (=> (not res!2544514) (not e!3742505))))

(declare-fun b!6141033 () Bool)

(assert (=> b!6141033 (= e!3742505 call!509978)))

(declare-fun b!6141034 () Bool)

(assert (=> b!6141034 (= e!3742507 e!3742509)))

(assert (=> b!6141034 (= c!1104607 (is-Union!16084 r!7292))))

(declare-fun b!6141035 () Bool)

(declare-fun e!3742503 () Bool)

(assert (=> b!6141035 (= e!3742503 e!3742507)))

(assert (=> b!6141035 (= c!1104608 (is-Star!16084 r!7292))))

(declare-fun bm!509974 () Bool)

(assert (=> bm!509974 (= call!509980 (validRegex!7820 (ite c!1104607 (regTwo!32681 r!7292) (regTwo!32680 r!7292))))))

(declare-fun b!6141028 () Bool)

(assert (=> b!6141028 (= e!3742506 call!509980)))

(declare-fun d!1923974 () Bool)

(declare-fun res!2544512 () Bool)

(assert (=> d!1923974 (=> res!2544512 e!3742503)))

(assert (=> d!1923974 (= res!2544512 (is-ElementMatch!16084 r!7292))))

(assert (=> d!1923974 (= (validRegex!7820 r!7292) e!3742503)))

(declare-fun bm!509975 () Bool)

(assert (=> bm!509975 (= call!509979 call!509978)))

(declare-fun b!6141036 () Bool)

(assert (=> b!6141036 (= e!3742508 e!3742504)))

(declare-fun res!2544513 () Bool)

(assert (=> b!6141036 (=> (not res!2544513) (not e!3742504))))

(assert (=> b!6141036 (= res!2544513 call!509979)))

(assert (= (and d!1923974 (not res!2544512)) b!6141035))

(assert (= (and b!6141035 c!1104608) b!6141032))

(assert (= (and b!6141035 (not c!1104608)) b!6141034))

(assert (= (and b!6141032 res!2544514) b!6141033))

(assert (= (and b!6141034 c!1104607) b!6141030))

(assert (= (and b!6141034 (not c!1104607)) b!6141029))

(assert (= (and b!6141030 res!2544516) b!6141028))

(assert (= (and b!6141029 (not res!2544515)) b!6141036))

(assert (= (and b!6141036 res!2544513) b!6141031))

(assert (= (or b!6141028 b!6141031) bm!509974))

(assert (= (or b!6141030 b!6141036) bm!509975))

(assert (= (or b!6141033 bm!509975) bm!509973))

(declare-fun m!6982446 () Bool)

(assert (=> bm!509973 m!6982446))

(declare-fun m!6982448 () Bool)

(assert (=> b!6141032 m!6982448))

(declare-fun m!6982450 () Bool)

(assert (=> bm!509974 m!6982450))

(assert (=> start!613392 d!1923974))

(declare-fun bs!1522730 () Bool)

(declare-fun d!1923976 () Bool)

(assert (= bs!1522730 (and d!1923976 d!1923942)))

(declare-fun lambda!334736 () Int)

(assert (=> bs!1522730 (= lambda!334736 lambda!334713)))

(declare-fun bs!1522731 () Bool)

(assert (= bs!1522731 (and d!1923976 d!1923940)))

(assert (=> bs!1522731 (= lambda!334736 lambda!334710)))

(declare-fun bs!1522732 () Bool)

(assert (= bs!1522732 (and d!1923976 d!1923944)))

(assert (=> bs!1522732 (= lambda!334736 lambda!334714)))

(declare-fun bs!1522733 () Bool)

(assert (= bs!1522733 (and d!1923976 d!1923952)))

(assert (=> bs!1522733 (= lambda!334736 lambda!334717)))

(declare-fun bs!1522734 () Bool)

(assert (= bs!1522734 (and d!1923976 d!1923954)))

(assert (=> bs!1522734 (= lambda!334736 lambda!334720)))

(assert (=> d!1923976 (= (inv!83458 lt!2333068) (forall!15205 (exprs!5968 lt!2333068) lambda!334736))))

(declare-fun bs!1522735 () Bool)

(assert (= bs!1522735 d!1923976))

(declare-fun m!6982452 () Bool)

(assert (=> bs!1522735 m!6982452))

(assert (=> b!6140667 d!1923976))

(declare-fun d!1923978 () Bool)

(declare-fun c!1104609 () Bool)

(assert (=> d!1923978 (= c!1104609 (isEmpty!36382 (t!378032 s!2326)))))

(declare-fun e!3742510 () Bool)

(assert (=> d!1923978 (= (matchZipper!2096 lt!2333063 (t!378032 s!2326)) e!3742510)))

(declare-fun b!6141037 () Bool)

(assert (=> b!6141037 (= e!3742510 (nullableZipper!1865 lt!2333063))))

(declare-fun b!6141038 () Bool)

(assert (=> b!6141038 (= e!3742510 (matchZipper!2096 (derivationStepZipper!2057 lt!2333063 (head!12689 (t!378032 s!2326))) (tail!11774 (t!378032 s!2326))))))

(assert (= (and d!1923978 c!1104609) b!6141037))

(assert (= (and d!1923978 (not c!1104609)) b!6141038))

(assert (=> d!1923978 m!6982292))

(declare-fun m!6982454 () Bool)

(assert (=> b!6141037 m!6982454))

(assert (=> b!6141038 m!6982296))

(assert (=> b!6141038 m!6982296))

(declare-fun m!6982456 () Bool)

(assert (=> b!6141038 m!6982456))

(assert (=> b!6141038 m!6982300))

(assert (=> b!6141038 m!6982456))

(assert (=> b!6141038 m!6982300))

(declare-fun m!6982458 () Bool)

(assert (=> b!6141038 m!6982458))

(assert (=> b!6140665 d!1923978))

(declare-fun bm!509978 () Bool)

(declare-fun call!509983 () (Set Context!10936))

(assert (=> bm!509978 (= call!509983 (derivationStepZipperDown!1332 (h!70875 (exprs!5968 lt!2333054)) (Context!10937 (t!378030 (exprs!5968 lt!2333054))) (h!70877 s!2326)))))

(declare-fun b!6141049 () Bool)

(declare-fun e!3742518 () (Set Context!10936))

(assert (=> b!6141049 (= e!3742518 (as set.empty (Set Context!10936)))))

(declare-fun b!6141050 () Bool)

(declare-fun e!3742517 () (Set Context!10936))

(assert (=> b!6141050 (= e!3742517 e!3742518)))

(declare-fun c!1104614 () Bool)

(assert (=> b!6141050 (= c!1104614 (is-Cons!64427 (exprs!5968 lt!2333054)))))

(declare-fun b!6141051 () Bool)

(assert (=> b!6141051 (= e!3742517 (set.union call!509983 (derivationStepZipperUp!1258 (Context!10937 (t!378030 (exprs!5968 lt!2333054))) (h!70877 s!2326))))))

(declare-fun d!1923980 () Bool)

(declare-fun c!1104615 () Bool)

(declare-fun e!3742519 () Bool)

(assert (=> d!1923980 (= c!1104615 e!3742519)))

(declare-fun res!2544519 () Bool)

(assert (=> d!1923980 (=> (not res!2544519) (not e!3742519))))

(assert (=> d!1923980 (= res!2544519 (is-Cons!64427 (exprs!5968 lt!2333054)))))

(assert (=> d!1923980 (= (derivationStepZipperUp!1258 lt!2333054 (h!70877 s!2326)) e!3742517)))

(declare-fun b!6141052 () Bool)

(assert (=> b!6141052 (= e!3742518 call!509983)))

(declare-fun b!6141053 () Bool)

(assert (=> b!6141053 (= e!3742519 (nullable!6077 (h!70875 (exprs!5968 lt!2333054))))))

(assert (= (and d!1923980 res!2544519) b!6141053))

(assert (= (and d!1923980 c!1104615) b!6141051))

(assert (= (and d!1923980 (not c!1104615)) b!6141050))

(assert (= (and b!6141050 c!1104614) b!6141052))

(assert (= (and b!6141050 (not c!1104614)) b!6141049))

(assert (= (or b!6141051 b!6141052) bm!509978))

(declare-fun m!6982460 () Bool)

(assert (=> bm!509978 m!6982460))

(declare-fun m!6982462 () Bool)

(assert (=> b!6141051 m!6982462))

(declare-fun m!6982464 () Bool)

(assert (=> b!6141053 m!6982464))

(assert (=> b!6140679 d!1923980))

(declare-fun d!1923982 () Bool)

(declare-fun choose!45639 ((Set Context!10936) Int) (Set Context!10936))

(assert (=> d!1923982 (= (flatMap!1589 lt!2333066 lambda!334694) (choose!45639 lt!2333066 lambda!334694))))

(declare-fun bs!1522736 () Bool)

(assert (= bs!1522736 d!1923982))

(declare-fun m!6982466 () Bool)

(assert (=> bs!1522736 m!6982466))

(assert (=> b!6140679 d!1923982))

(declare-fun d!1923984 () Bool)

(declare-fun dynLambda!25389 (Int Context!10936) (Set Context!10936))

(assert (=> d!1923984 (= (flatMap!1589 lt!2333066 lambda!334694) (dynLambda!25389 lambda!334694 lt!2333054))))

(declare-fun lt!2333186 () Unit!157491)

(declare-fun choose!45640 ((Set Context!10936) Context!10936 Int) Unit!157491)

(assert (=> d!1923984 (= lt!2333186 (choose!45640 lt!2333066 lt!2333054 lambda!334694))))

(assert (=> d!1923984 (= lt!2333066 (set.insert lt!2333054 (as set.empty (Set Context!10936))))))

(assert (=> d!1923984 (= (lemmaFlatMapOnSingletonSet!1115 lt!2333066 lt!2333054 lambda!334694) lt!2333186)))

(declare-fun b_lambda!233729 () Bool)

(assert (=> (not b_lambda!233729) (not d!1923984)))

(declare-fun bs!1522737 () Bool)

(assert (= bs!1522737 d!1923984))

(assert (=> bs!1522737 m!6982182))

(declare-fun m!6982468 () Bool)

(assert (=> bs!1522737 m!6982468))

(declare-fun m!6982470 () Bool)

(assert (=> bs!1522737 m!6982470))

(assert (=> bs!1522737 m!6982174))

(assert (=> b!6140679 d!1923984))

(declare-fun bs!1522738 () Bool)

(declare-fun d!1923986 () Bool)

(assert (= bs!1522738 (and d!1923986 b!6140677)))

(declare-fun lambda!334739 () Int)

(assert (=> bs!1522738 (= lambda!334739 lambda!334694)))

(assert (=> d!1923986 true))

(assert (=> d!1923986 (= (derivationStepZipper!2057 lt!2333066 (h!70877 s!2326)) (flatMap!1589 lt!2333066 lambda!334739))))

(declare-fun bs!1522739 () Bool)

(assert (= bs!1522739 d!1923986))

(declare-fun m!6982472 () Bool)

(assert (=> bs!1522739 m!6982472))

(assert (=> b!6140679 d!1923986))

(declare-fun d!1923988 () Bool)

(declare-fun nullableFct!2041 (Regex!16084) Bool)

(assert (=> d!1923988 (= (nullable!6077 (regOne!32681 (regOne!32680 r!7292))) (nullableFct!2041 (regOne!32681 (regOne!32680 r!7292))))))

(declare-fun bs!1522740 () Bool)

(assert (= bs!1522740 d!1923988))

(declare-fun m!6982474 () Bool)

(assert (=> bs!1522740 m!6982474))

(assert (=> b!6140679 d!1923988))

(declare-fun b!6141078 () Bool)

(declare-fun e!3742535 () (Set Context!10936))

(declare-fun e!3742536 () (Set Context!10936))

(assert (=> b!6141078 (= e!3742535 e!3742536)))

(declare-fun c!1104629 () Bool)

(assert (=> b!6141078 (= c!1104629 (is-Concat!24929 (regTwo!32681 (regOne!32680 r!7292))))))

(declare-fun b!6141079 () Bool)

(declare-fun e!3742534 () (Set Context!10936))

(declare-fun e!3742537 () (Set Context!10936))

(assert (=> b!6141079 (= e!3742534 e!3742537)))

(declare-fun c!1104630 () Bool)

(assert (=> b!6141079 (= c!1104630 (is-Union!16084 (regTwo!32681 (regOne!32680 r!7292))))))

(declare-fun b!6141080 () Bool)

(declare-fun c!1104628 () Bool)

(declare-fun e!3742532 () Bool)

(assert (=> b!6141080 (= c!1104628 e!3742532)))

(declare-fun res!2544522 () Bool)

(assert (=> b!6141080 (=> (not res!2544522) (not e!3742532))))

(assert (=> b!6141080 (= res!2544522 (is-Concat!24929 (regTwo!32681 (regOne!32680 r!7292))))))

(assert (=> b!6141080 (= e!3742537 e!3742535)))

(declare-fun bm!509991 () Bool)

(declare-fun call!509997 () List!64551)

(declare-fun call!509999 () List!64551)

(assert (=> bm!509991 (= call!509997 call!509999)))

(declare-fun b!6141081 () Bool)

(declare-fun e!3742533 () (Set Context!10936))

(assert (=> b!6141081 (= e!3742533 (as set.empty (Set Context!10936)))))

(declare-fun call!510000 () (Set Context!10936))

(declare-fun bm!509992 () Bool)

(assert (=> bm!509992 (= call!510000 (derivationStepZipperDown!1332 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292)))) (ite c!1104630 lt!2333068 (Context!10937 call!509999)) (h!70877 s!2326)))))

(declare-fun b!6141082 () Bool)

(declare-fun c!1104632 () Bool)

(assert (=> b!6141082 (= c!1104632 (is-Star!16084 (regTwo!32681 (regOne!32680 r!7292))))))

(assert (=> b!6141082 (= e!3742536 e!3742533)))

(declare-fun b!6141084 () Bool)

(assert (=> b!6141084 (= e!3742534 (set.insert lt!2333068 (as set.empty (Set Context!10936))))))

(declare-fun bm!509993 () Bool)

(declare-fun call!509998 () (Set Context!10936))

(declare-fun call!510001 () (Set Context!10936))

(assert (=> bm!509993 (= call!509998 call!510001)))

(declare-fun bm!509994 () Bool)

(declare-fun $colon$colon!1961 (List!64551 Regex!16084) List!64551)

(assert (=> bm!509994 (= call!509999 ($colon$colon!1961 (exprs!5968 lt!2333068) (ite (or c!1104628 c!1104629) (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (regTwo!32681 (regOne!32680 r!7292)))))))

(declare-fun b!6141085 () Bool)

(assert (=> b!6141085 (= e!3742532 (nullable!6077 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292)))))))

(declare-fun b!6141086 () Bool)

(assert (=> b!6141086 (= e!3742537 (set.union call!510000 call!510001))))

(declare-fun b!6141087 () Bool)

(declare-fun call!509996 () (Set Context!10936))

(assert (=> b!6141087 (= e!3742533 call!509996)))

(declare-fun b!6141088 () Bool)

(assert (=> b!6141088 (= e!3742535 (set.union call!510000 call!509998))))

(declare-fun b!6141083 () Bool)

(assert (=> b!6141083 (= e!3742536 call!509996)))

(declare-fun d!1923990 () Bool)

(declare-fun c!1104631 () Bool)

(assert (=> d!1923990 (= c!1104631 (and (is-ElementMatch!16084 (regTwo!32681 (regOne!32680 r!7292))) (= (c!1104532 (regTwo!32681 (regOne!32680 r!7292))) (h!70877 s!2326))))))

(assert (=> d!1923990 (= (derivationStepZipperDown!1332 (regTwo!32681 (regOne!32680 r!7292)) lt!2333068 (h!70877 s!2326)) e!3742534)))

(declare-fun bm!509995 () Bool)

(assert (=> bm!509995 (= call!509996 call!509998)))

(declare-fun bm!509996 () Bool)

(assert (=> bm!509996 (= call!510001 (derivationStepZipperDown!1332 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292)))))) (ite (or c!1104630 c!1104628) lt!2333068 (Context!10937 call!509997)) (h!70877 s!2326)))))

(assert (= (and d!1923990 c!1104631) b!6141084))

(assert (= (and d!1923990 (not c!1104631)) b!6141079))

(assert (= (and b!6141079 c!1104630) b!6141086))

(assert (= (and b!6141079 (not c!1104630)) b!6141080))

(assert (= (and b!6141080 res!2544522) b!6141085))

(assert (= (and b!6141080 c!1104628) b!6141088))

(assert (= (and b!6141080 (not c!1104628)) b!6141078))

(assert (= (and b!6141078 c!1104629) b!6141083))

(assert (= (and b!6141078 (not c!1104629)) b!6141082))

(assert (= (and b!6141082 c!1104632) b!6141087))

(assert (= (and b!6141082 (not c!1104632)) b!6141081))

(assert (= (or b!6141083 b!6141087) bm!509991))

(assert (= (or b!6141083 b!6141087) bm!509995))

(assert (= (or b!6141088 bm!509991) bm!509994))

(assert (= (or b!6141088 bm!509995) bm!509993))

(assert (= (or b!6141086 bm!509993) bm!509996))

(assert (= (or b!6141086 b!6141088) bm!509992))

(declare-fun m!6982476 () Bool)

(assert (=> b!6141085 m!6982476))

(declare-fun m!6982478 () Bool)

(assert (=> b!6141084 m!6982478))

(declare-fun m!6982480 () Bool)

(assert (=> bm!509996 m!6982480))

(declare-fun m!6982482 () Bool)

(assert (=> bm!509994 m!6982482))

(declare-fun m!6982484 () Bool)

(assert (=> bm!509992 m!6982484))

(assert (=> b!6140660 d!1923990))

(declare-fun b!6141089 () Bool)

(declare-fun e!3742541 () (Set Context!10936))

(declare-fun e!3742542 () (Set Context!10936))

(assert (=> b!6141089 (= e!3742541 e!3742542)))

(declare-fun c!1104634 () Bool)

(assert (=> b!6141089 (= c!1104634 (is-Concat!24929 (regOne!32681 (regOne!32680 r!7292))))))

(declare-fun b!6141090 () Bool)

(declare-fun e!3742540 () (Set Context!10936))

(declare-fun e!3742543 () (Set Context!10936))

(assert (=> b!6141090 (= e!3742540 e!3742543)))

(declare-fun c!1104635 () Bool)

(assert (=> b!6141090 (= c!1104635 (is-Union!16084 (regOne!32681 (regOne!32680 r!7292))))))

(declare-fun b!6141091 () Bool)

(declare-fun c!1104633 () Bool)

(declare-fun e!3742538 () Bool)

(assert (=> b!6141091 (= c!1104633 e!3742538)))

(declare-fun res!2544523 () Bool)

(assert (=> b!6141091 (=> (not res!2544523) (not e!3742538))))

(assert (=> b!6141091 (= res!2544523 (is-Concat!24929 (regOne!32681 (regOne!32680 r!7292))))))

(assert (=> b!6141091 (= e!3742543 e!3742541)))

(declare-fun bm!509997 () Bool)

(declare-fun call!510003 () List!64551)

(declare-fun call!510005 () List!64551)

(assert (=> bm!509997 (= call!510003 call!510005)))

(declare-fun b!6141092 () Bool)

(declare-fun e!3742539 () (Set Context!10936))

(assert (=> b!6141092 (= e!3742539 (as set.empty (Set Context!10936)))))

(declare-fun call!510006 () (Set Context!10936))

(declare-fun bm!509998 () Bool)

(assert (=> bm!509998 (= call!510006 (derivationStepZipperDown!1332 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292)))) (ite c!1104635 lt!2333068 (Context!10937 call!510005)) (h!70877 s!2326)))))

(declare-fun b!6141093 () Bool)

(declare-fun c!1104637 () Bool)

(assert (=> b!6141093 (= c!1104637 (is-Star!16084 (regOne!32681 (regOne!32680 r!7292))))))

(assert (=> b!6141093 (= e!3742542 e!3742539)))

(declare-fun b!6141095 () Bool)

(assert (=> b!6141095 (= e!3742540 (set.insert lt!2333068 (as set.empty (Set Context!10936))))))

(declare-fun bm!509999 () Bool)

(declare-fun call!510004 () (Set Context!10936))

(declare-fun call!510007 () (Set Context!10936))

(assert (=> bm!509999 (= call!510004 call!510007)))

(declare-fun bm!510000 () Bool)

(assert (=> bm!510000 (= call!510005 ($colon$colon!1961 (exprs!5968 lt!2333068) (ite (or c!1104633 c!1104634) (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (regOne!32681 (regOne!32680 r!7292)))))))

(declare-fun b!6141096 () Bool)

(assert (=> b!6141096 (= e!3742538 (nullable!6077 (regOne!32680 (regOne!32681 (regOne!32680 r!7292)))))))

(declare-fun b!6141097 () Bool)

(assert (=> b!6141097 (= e!3742543 (set.union call!510006 call!510007))))

(declare-fun b!6141098 () Bool)

(declare-fun call!510002 () (Set Context!10936))

(assert (=> b!6141098 (= e!3742539 call!510002)))

(declare-fun b!6141099 () Bool)

(assert (=> b!6141099 (= e!3742541 (set.union call!510006 call!510004))))

(declare-fun b!6141094 () Bool)

(assert (=> b!6141094 (= e!3742542 call!510002)))

(declare-fun d!1923992 () Bool)

(declare-fun c!1104636 () Bool)

(assert (=> d!1923992 (= c!1104636 (and (is-ElementMatch!16084 (regOne!32681 (regOne!32680 r!7292))) (= (c!1104532 (regOne!32681 (regOne!32680 r!7292))) (h!70877 s!2326))))))

(assert (=> d!1923992 (= (derivationStepZipperDown!1332 (regOne!32681 (regOne!32680 r!7292)) lt!2333068 (h!70877 s!2326)) e!3742540)))

(declare-fun bm!510001 () Bool)

(assert (=> bm!510001 (= call!510002 call!510004)))

(declare-fun bm!510002 () Bool)

(assert (=> bm!510002 (= call!510007 (derivationStepZipperDown!1332 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292)))))) (ite (or c!1104635 c!1104633) lt!2333068 (Context!10937 call!510003)) (h!70877 s!2326)))))

(assert (= (and d!1923992 c!1104636) b!6141095))

(assert (= (and d!1923992 (not c!1104636)) b!6141090))

(assert (= (and b!6141090 c!1104635) b!6141097))

(assert (= (and b!6141090 (not c!1104635)) b!6141091))

(assert (= (and b!6141091 res!2544523) b!6141096))

(assert (= (and b!6141091 c!1104633) b!6141099))

(assert (= (and b!6141091 (not c!1104633)) b!6141089))

(assert (= (and b!6141089 c!1104634) b!6141094))

(assert (= (and b!6141089 (not c!1104634)) b!6141093))

(assert (= (and b!6141093 c!1104637) b!6141098))

(assert (= (and b!6141093 (not c!1104637)) b!6141092))

(assert (= (or b!6141094 b!6141098) bm!509997))

(assert (= (or b!6141094 b!6141098) bm!510001))

(assert (= (or b!6141099 bm!509997) bm!510000))

(assert (= (or b!6141099 bm!510001) bm!509999))

(assert (= (or b!6141097 bm!509999) bm!510002))

(assert (= (or b!6141097 b!6141099) bm!509998))

(declare-fun m!6982486 () Bool)

(assert (=> b!6141096 m!6982486))

(assert (=> b!6141095 m!6982478))

(declare-fun m!6982488 () Bool)

(assert (=> bm!510002 m!6982488))

(declare-fun m!6982490 () Bool)

(assert (=> bm!510000 m!6982490))

(declare-fun m!6982492 () Bool)

(assert (=> bm!509998 m!6982492))

(assert (=> b!6140660 d!1923992))

(declare-fun bm!510003 () Bool)

(declare-fun call!510008 () (Set Context!10936))

(assert (=> bm!510003 (= call!510008 (derivationStepZipperDown!1332 (h!70875 (exprs!5968 lt!2333068)) (Context!10937 (t!378030 (exprs!5968 lt!2333068))) (h!70877 s!2326)))))

(declare-fun b!6141100 () Bool)

(declare-fun e!3742545 () (Set Context!10936))

(assert (=> b!6141100 (= e!3742545 (as set.empty (Set Context!10936)))))

(declare-fun b!6141101 () Bool)

(declare-fun e!3742544 () (Set Context!10936))

(assert (=> b!6141101 (= e!3742544 e!3742545)))

(declare-fun c!1104638 () Bool)

(assert (=> b!6141101 (= c!1104638 (is-Cons!64427 (exprs!5968 lt!2333068)))))

(declare-fun b!6141102 () Bool)

(assert (=> b!6141102 (= e!3742544 (set.union call!510008 (derivationStepZipperUp!1258 (Context!10937 (t!378030 (exprs!5968 lt!2333068))) (h!70877 s!2326))))))

(declare-fun d!1923994 () Bool)

(declare-fun c!1104639 () Bool)

(declare-fun e!3742546 () Bool)

(assert (=> d!1923994 (= c!1104639 e!3742546)))

(declare-fun res!2544524 () Bool)

(assert (=> d!1923994 (=> (not res!2544524) (not e!3742546))))

(assert (=> d!1923994 (= res!2544524 (is-Cons!64427 (exprs!5968 lt!2333068)))))

(assert (=> d!1923994 (= (derivationStepZipperUp!1258 lt!2333068 (h!70877 s!2326)) e!3742544)))

(declare-fun b!6141103 () Bool)

(assert (=> b!6141103 (= e!3742545 call!510008)))

(declare-fun b!6141104 () Bool)

(assert (=> b!6141104 (= e!3742546 (nullable!6077 (h!70875 (exprs!5968 lt!2333068))))))

(assert (= (and d!1923994 res!2544524) b!6141104))

(assert (= (and d!1923994 c!1104639) b!6141102))

(assert (= (and d!1923994 (not c!1104639)) b!6141101))

(assert (= (and b!6141101 c!1104638) b!6141103))

(assert (= (and b!6141101 (not c!1104638)) b!6141100))

(assert (= (or b!6141102 b!6141103) bm!510003))

(declare-fun m!6982494 () Bool)

(assert (=> bm!510003 m!6982494))

(declare-fun m!6982496 () Bool)

(assert (=> b!6141102 m!6982496))

(declare-fun m!6982498 () Bool)

(assert (=> b!6141104 m!6982498))

(assert (=> b!6140677 d!1923994))

(declare-fun d!1923996 () Bool)

(assert (=> d!1923996 (= (flatMap!1589 z!1189 lambda!334694) (choose!45639 z!1189 lambda!334694))))

(declare-fun bs!1522741 () Bool)

(assert (= bs!1522741 d!1923996))

(declare-fun m!6982500 () Bool)

(assert (=> bs!1522741 m!6982500))

(assert (=> b!6140677 d!1923996))

(declare-fun bm!510004 () Bool)

(declare-fun call!510009 () (Set Context!10936))

(assert (=> bm!510004 (= call!510009 (derivationStepZipperDown!1332 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343))))))) (Context!10937 (t!378030 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))) (h!70877 s!2326)))))

(declare-fun b!6141105 () Bool)

(declare-fun e!3742548 () (Set Context!10936))

(assert (=> b!6141105 (= e!3742548 (as set.empty (Set Context!10936)))))

(declare-fun b!6141106 () Bool)

(declare-fun e!3742547 () (Set Context!10936))

(assert (=> b!6141106 (= e!3742547 e!3742548)))

(declare-fun c!1104640 () Bool)

(assert (=> b!6141106 (= c!1104640 (is-Cons!64427 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343))))))))))

(declare-fun b!6141107 () Bool)

(assert (=> b!6141107 (= e!3742547 (set.union call!510009 (derivationStepZipperUp!1258 (Context!10937 (t!378030 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))) (h!70877 s!2326))))))

(declare-fun d!1923998 () Bool)

(declare-fun c!1104641 () Bool)

(declare-fun e!3742549 () Bool)

(assert (=> d!1923998 (= c!1104641 e!3742549)))

(declare-fun res!2544525 () Bool)

(assert (=> d!1923998 (=> (not res!2544525) (not e!3742549))))

(assert (=> d!1923998 (= res!2544525 (is-Cons!64427 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343))))))))))

(assert (=> d!1923998 (= (derivationStepZipperUp!1258 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343))))) (h!70877 s!2326)) e!3742547)))

(declare-fun b!6141108 () Bool)

(assert (=> b!6141108 (= e!3742548 call!510009)))

(declare-fun b!6141109 () Bool)

(assert (=> b!6141109 (= e!3742549 (nullable!6077 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))))))

(assert (= (and d!1923998 res!2544525) b!6141109))

(assert (= (and d!1923998 c!1104641) b!6141107))

(assert (= (and d!1923998 (not c!1104641)) b!6141106))

(assert (= (and b!6141106 c!1104640) b!6141108))

(assert (= (and b!6141106 (not c!1104640)) b!6141105))

(assert (= (or b!6141107 b!6141108) bm!510004))

(declare-fun m!6982502 () Bool)

(assert (=> bm!510004 m!6982502))

(declare-fun m!6982504 () Bool)

(assert (=> b!6141107 m!6982504))

(declare-fun m!6982506 () Bool)

(assert (=> b!6141109 m!6982506))

(assert (=> b!6140677 d!1923998))

(declare-fun d!1924000 () Bool)

(assert (=> d!1924000 (= (flatMap!1589 z!1189 lambda!334694) (dynLambda!25389 lambda!334694 (h!70876 zl!343)))))

(declare-fun lt!2333187 () Unit!157491)

(assert (=> d!1924000 (= lt!2333187 (choose!45640 z!1189 (h!70876 zl!343) lambda!334694))))

(assert (=> d!1924000 (= z!1189 (set.insert (h!70876 zl!343) (as set.empty (Set Context!10936))))))

(assert (=> d!1924000 (= (lemmaFlatMapOnSingletonSet!1115 z!1189 (h!70876 zl!343) lambda!334694) lt!2333187)))

(declare-fun b_lambda!233731 () Bool)

(assert (=> (not b_lambda!233731) (not d!1924000)))

(declare-fun bs!1522742 () Bool)

(assert (= bs!1522742 d!1924000))

(assert (=> bs!1522742 m!6982138))

(declare-fun m!6982508 () Bool)

(assert (=> bs!1522742 m!6982508))

(declare-fun m!6982510 () Bool)

(assert (=> bs!1522742 m!6982510))

(declare-fun m!6982512 () Bool)

(assert (=> bs!1522742 m!6982512))

(assert (=> b!6140677 d!1924000))

(declare-fun bm!510005 () Bool)

(declare-fun call!510010 () (Set Context!10936))

(assert (=> bm!510005 (= call!510010 (derivationStepZipperDown!1332 (h!70875 (exprs!5968 (h!70876 zl!343))) (Context!10937 (t!378030 (exprs!5968 (h!70876 zl!343)))) (h!70877 s!2326)))))

(declare-fun b!6141110 () Bool)

(declare-fun e!3742551 () (Set Context!10936))

(assert (=> b!6141110 (= e!3742551 (as set.empty (Set Context!10936)))))

(declare-fun b!6141111 () Bool)

(declare-fun e!3742550 () (Set Context!10936))

(assert (=> b!6141111 (= e!3742550 e!3742551)))

(declare-fun c!1104642 () Bool)

(assert (=> b!6141111 (= c!1104642 (is-Cons!64427 (exprs!5968 (h!70876 zl!343))))))

(declare-fun b!6141112 () Bool)

(assert (=> b!6141112 (= e!3742550 (set.union call!510010 (derivationStepZipperUp!1258 (Context!10937 (t!378030 (exprs!5968 (h!70876 zl!343)))) (h!70877 s!2326))))))

(declare-fun d!1924002 () Bool)

(declare-fun c!1104643 () Bool)

(declare-fun e!3742552 () Bool)

(assert (=> d!1924002 (= c!1104643 e!3742552)))

(declare-fun res!2544526 () Bool)

(assert (=> d!1924002 (=> (not res!2544526) (not e!3742552))))

(assert (=> d!1924002 (= res!2544526 (is-Cons!64427 (exprs!5968 (h!70876 zl!343))))))

(assert (=> d!1924002 (= (derivationStepZipperUp!1258 (h!70876 zl!343) (h!70877 s!2326)) e!3742550)))

(declare-fun b!6141113 () Bool)

(assert (=> b!6141113 (= e!3742551 call!510010)))

(declare-fun b!6141114 () Bool)

(assert (=> b!6141114 (= e!3742552 (nullable!6077 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(assert (= (and d!1924002 res!2544526) b!6141114))

(assert (= (and d!1924002 c!1104643) b!6141112))

(assert (= (and d!1924002 (not c!1104643)) b!6141111))

(assert (= (and b!6141111 c!1104642) b!6141113))

(assert (= (and b!6141111 (not c!1104642)) b!6141110))

(assert (= (or b!6141112 b!6141113) bm!510005))

(declare-fun m!6982514 () Bool)

(assert (=> bm!510005 m!6982514))

(declare-fun m!6982516 () Bool)

(assert (=> b!6141112 m!6982516))

(assert (=> b!6141114 m!6982140))

(assert (=> b!6140677 d!1924002))

(declare-fun b!6141115 () Bool)

(declare-fun e!3742556 () (Set Context!10936))

(declare-fun e!3742557 () (Set Context!10936))

(assert (=> b!6141115 (= e!3742556 e!3742557)))

(declare-fun c!1104645 () Bool)

(assert (=> b!6141115 (= c!1104645 (is-Concat!24929 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun b!6141116 () Bool)

(declare-fun e!3742555 () (Set Context!10936))

(declare-fun e!3742558 () (Set Context!10936))

(assert (=> b!6141116 (= e!3742555 e!3742558)))

(declare-fun c!1104646 () Bool)

(assert (=> b!6141116 (= c!1104646 (is-Union!16084 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun b!6141117 () Bool)

(declare-fun c!1104644 () Bool)

(declare-fun e!3742553 () Bool)

(assert (=> b!6141117 (= c!1104644 e!3742553)))

(declare-fun res!2544527 () Bool)

(assert (=> b!6141117 (=> (not res!2544527) (not e!3742553))))

(assert (=> b!6141117 (= res!2544527 (is-Concat!24929 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(assert (=> b!6141117 (= e!3742558 e!3742556)))

(declare-fun bm!510006 () Bool)

(declare-fun call!510012 () List!64551)

(declare-fun call!510014 () List!64551)

(assert (=> bm!510006 (= call!510012 call!510014)))

(declare-fun b!6141118 () Bool)

(declare-fun e!3742554 () (Set Context!10936))

(assert (=> b!6141118 (= e!3742554 (as set.empty (Set Context!10936)))))

(declare-fun call!510015 () (Set Context!10936))

(declare-fun bm!510007 () Bool)

(assert (=> bm!510007 (= call!510015 (derivationStepZipperDown!1332 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343))))) (ite c!1104646 lt!2333068 (Context!10937 call!510014)) (h!70877 s!2326)))))

(declare-fun b!6141119 () Bool)

(declare-fun c!1104648 () Bool)

(assert (=> b!6141119 (= c!1104648 (is-Star!16084 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(assert (=> b!6141119 (= e!3742557 e!3742554)))

(declare-fun b!6141121 () Bool)

(assert (=> b!6141121 (= e!3742555 (set.insert lt!2333068 (as set.empty (Set Context!10936))))))

(declare-fun bm!510008 () Bool)

(declare-fun call!510013 () (Set Context!10936))

(declare-fun call!510016 () (Set Context!10936))

(assert (=> bm!510008 (= call!510013 call!510016)))

(declare-fun bm!510009 () Bool)

(assert (=> bm!510009 (= call!510014 ($colon$colon!1961 (exprs!5968 lt!2333068) (ite (or c!1104644 c!1104645) (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (h!70875 (exprs!5968 (h!70876 zl!343))))))))

(declare-fun b!6141122 () Bool)

(assert (=> b!6141122 (= e!3742553 (nullable!6077 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343))))))))

(declare-fun b!6141123 () Bool)

(assert (=> b!6141123 (= e!3742558 (set.union call!510015 call!510016))))

(declare-fun b!6141124 () Bool)

(declare-fun call!510011 () (Set Context!10936))

(assert (=> b!6141124 (= e!3742554 call!510011)))

(declare-fun b!6141125 () Bool)

(assert (=> b!6141125 (= e!3742556 (set.union call!510015 call!510013))))

(declare-fun b!6141120 () Bool)

(assert (=> b!6141120 (= e!3742557 call!510011)))

(declare-fun d!1924004 () Bool)

(declare-fun c!1104647 () Bool)

(assert (=> d!1924004 (= c!1104647 (and (is-ElementMatch!16084 (h!70875 (exprs!5968 (h!70876 zl!343)))) (= (c!1104532 (h!70875 (exprs!5968 (h!70876 zl!343)))) (h!70877 s!2326))))))

(assert (=> d!1924004 (= (derivationStepZipperDown!1332 (h!70875 (exprs!5968 (h!70876 zl!343))) lt!2333068 (h!70877 s!2326)) e!3742555)))

(declare-fun bm!510010 () Bool)

(assert (=> bm!510010 (= call!510011 call!510013)))

(declare-fun bm!510011 () Bool)

(assert (=> bm!510011 (= call!510016 (derivationStepZipperDown!1332 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343))))))) (ite (or c!1104646 c!1104644) lt!2333068 (Context!10937 call!510012)) (h!70877 s!2326)))))

(assert (= (and d!1924004 c!1104647) b!6141121))

(assert (= (and d!1924004 (not c!1104647)) b!6141116))

(assert (= (and b!6141116 c!1104646) b!6141123))

(assert (= (and b!6141116 (not c!1104646)) b!6141117))

(assert (= (and b!6141117 res!2544527) b!6141122))

(assert (= (and b!6141117 c!1104644) b!6141125))

(assert (= (and b!6141117 (not c!1104644)) b!6141115))

(assert (= (and b!6141115 c!1104645) b!6141120))

(assert (= (and b!6141115 (not c!1104645)) b!6141119))

(assert (= (and b!6141119 c!1104648) b!6141124))

(assert (= (and b!6141119 (not c!1104648)) b!6141118))

(assert (= (or b!6141120 b!6141124) bm!510006))

(assert (= (or b!6141120 b!6141124) bm!510010))

(assert (= (or b!6141125 bm!510006) bm!510009))

(assert (= (or b!6141125 bm!510010) bm!510008))

(assert (= (or b!6141123 bm!510008) bm!510011))

(assert (= (or b!6141123 b!6141125) bm!510007))

(declare-fun m!6982518 () Bool)

(assert (=> b!6141122 m!6982518))

(assert (=> b!6141121 m!6982478))

(declare-fun m!6982520 () Bool)

(assert (=> bm!510011 m!6982520))

(declare-fun m!6982522 () Bool)

(assert (=> bm!510009 m!6982522))

(declare-fun m!6982524 () Bool)

(assert (=> bm!510007 m!6982524))

(assert (=> b!6140677 d!1924004))

(declare-fun d!1924006 () Bool)

(assert (=> d!1924006 (= (nullable!6077 (h!70875 (exprs!5968 (h!70876 zl!343)))) (nullableFct!2041 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun bs!1522743 () Bool)

(assert (= bs!1522743 d!1924006))

(declare-fun m!6982526 () Bool)

(assert (=> bs!1522743 m!6982526))

(assert (=> b!6140677 d!1924006))

(declare-fun d!1924008 () Bool)

(assert (=> d!1924008 (= (isEmpty!36378 (t!378030 (exprs!5968 (h!70876 zl!343)))) (is-Nil!64427 (t!378030 (exprs!5968 (h!70876 zl!343)))))))

(assert (=> b!6140658 d!1924008))

(assert (=> b!6140668 d!1923936))

(declare-fun d!1924010 () Bool)

(declare-fun c!1104649 () Bool)

(assert (=> d!1924010 (= c!1104649 (isEmpty!36382 (t!378032 s!2326)))))

(declare-fun e!3742559 () Bool)

(assert (=> d!1924010 (= (matchZipper!2096 lt!2333072 (t!378032 s!2326)) e!3742559)))

(declare-fun b!6141126 () Bool)

(assert (=> b!6141126 (= e!3742559 (nullableZipper!1865 lt!2333072))))

(declare-fun b!6141127 () Bool)

(assert (=> b!6141127 (= e!3742559 (matchZipper!2096 (derivationStepZipper!2057 lt!2333072 (head!12689 (t!378032 s!2326))) (tail!11774 (t!378032 s!2326))))))

(assert (= (and d!1924010 c!1104649) b!6141126))

(assert (= (and d!1924010 (not c!1104649)) b!6141127))

(assert (=> d!1924010 m!6982292))

(declare-fun m!6982528 () Bool)

(assert (=> b!6141126 m!6982528))

(assert (=> b!6141127 m!6982296))

(assert (=> b!6141127 m!6982296))

(declare-fun m!6982530 () Bool)

(assert (=> b!6141127 m!6982530))

(assert (=> b!6141127 m!6982300))

(assert (=> b!6141127 m!6982530))

(assert (=> b!6141127 m!6982300))

(declare-fun m!6982532 () Bool)

(assert (=> b!6141127 m!6982532))

(assert (=> b!6140668 d!1924010))

(declare-fun d!1924012 () Bool)

(declare-fun c!1104650 () Bool)

(assert (=> d!1924012 (= c!1104650 (isEmpty!36382 (t!378032 s!2326)))))

(declare-fun e!3742560 () Bool)

(assert (=> d!1924012 (= (matchZipper!2096 lt!2333058 (t!378032 s!2326)) e!3742560)))

(declare-fun b!6141128 () Bool)

(assert (=> b!6141128 (= e!3742560 (nullableZipper!1865 lt!2333058))))

(declare-fun b!6141129 () Bool)

(assert (=> b!6141129 (= e!3742560 (matchZipper!2096 (derivationStepZipper!2057 lt!2333058 (head!12689 (t!378032 s!2326))) (tail!11774 (t!378032 s!2326))))))

(assert (= (and d!1924012 c!1104650) b!6141128))

(assert (= (and d!1924012 (not c!1104650)) b!6141129))

(assert (=> d!1924012 m!6982292))

(declare-fun m!6982534 () Bool)

(assert (=> b!6141128 m!6982534))

(assert (=> b!6141129 m!6982296))

(assert (=> b!6141129 m!6982296))

(declare-fun m!6982536 () Bool)

(assert (=> b!6141129 m!6982536))

(assert (=> b!6141129 m!6982300))

(assert (=> b!6141129 m!6982536))

(assert (=> b!6141129 m!6982300))

(declare-fun m!6982538 () Bool)

(assert (=> b!6141129 m!6982538))

(assert (=> b!6140668 d!1924012))

(declare-fun d!1924014 () Bool)

(declare-fun e!3742561 () Bool)

(assert (=> d!1924014 (= (matchZipper!2096 (set.union lt!2333058 lt!2333060) (t!378032 s!2326)) e!3742561)))

(declare-fun res!2544528 () Bool)

(assert (=> d!1924014 (=> res!2544528 e!3742561)))

(assert (=> d!1924014 (= res!2544528 (matchZipper!2096 lt!2333058 (t!378032 s!2326)))))

(declare-fun lt!2333188 () Unit!157491)

(assert (=> d!1924014 (= lt!2333188 (choose!45633 lt!2333058 lt!2333060 (t!378032 s!2326)))))

(assert (=> d!1924014 (= (lemmaZipperConcatMatchesSameAsBothZippers!915 lt!2333058 lt!2333060 (t!378032 s!2326)) lt!2333188)))

(declare-fun b!6141130 () Bool)

(assert (=> b!6141130 (= e!3742561 (matchZipper!2096 lt!2333060 (t!378032 s!2326)))))

(assert (= (and d!1924014 (not res!2544528)) b!6141130))

(declare-fun m!6982540 () Bool)

(assert (=> d!1924014 m!6982540))

(assert (=> d!1924014 m!6982192))

(declare-fun m!6982542 () Bool)

(assert (=> d!1924014 m!6982542))

(assert (=> b!6141130 m!6982128))

(assert (=> b!6140668 d!1924014))

(declare-fun d!1924016 () Bool)

(assert (=> d!1924016 (= (isEmpty!36379 (t!378031 zl!343)) (is-Nil!64428 (t!378031 zl!343)))))

(assert (=> b!6140678 d!1924016))

(declare-fun b!6141142 () Bool)

(declare-fun e!3742564 () Bool)

(declare-fun tp!1715753 () Bool)

(declare-fun tp!1715750 () Bool)

(assert (=> b!6141142 (= e!3742564 (and tp!1715753 tp!1715750))))

(declare-fun b!6141141 () Bool)

(assert (=> b!6141141 (= e!3742564 tp_is_empty!41421)))

(declare-fun b!6141143 () Bool)

(declare-fun tp!1715751 () Bool)

(assert (=> b!6141143 (= e!3742564 tp!1715751)))

(declare-fun b!6141144 () Bool)

(declare-fun tp!1715749 () Bool)

(declare-fun tp!1715752 () Bool)

(assert (=> b!6141144 (= e!3742564 (and tp!1715749 tp!1715752))))

(assert (=> b!6140675 (= tp!1715707 e!3742564)))

(assert (= (and b!6140675 (is-ElementMatch!16084 (regOne!32681 r!7292))) b!6141141))

(assert (= (and b!6140675 (is-Concat!24929 (regOne!32681 r!7292))) b!6141142))

(assert (= (and b!6140675 (is-Star!16084 (regOne!32681 r!7292))) b!6141143))

(assert (= (and b!6140675 (is-Union!16084 (regOne!32681 r!7292))) b!6141144))

(declare-fun b!6141146 () Bool)

(declare-fun e!3742565 () Bool)

(declare-fun tp!1715758 () Bool)

(declare-fun tp!1715755 () Bool)

(assert (=> b!6141146 (= e!3742565 (and tp!1715758 tp!1715755))))

(declare-fun b!6141145 () Bool)

(assert (=> b!6141145 (= e!3742565 tp_is_empty!41421)))

(declare-fun b!6141147 () Bool)

(declare-fun tp!1715756 () Bool)

(assert (=> b!6141147 (= e!3742565 tp!1715756)))

(declare-fun b!6141148 () Bool)

(declare-fun tp!1715754 () Bool)

(declare-fun tp!1715757 () Bool)

(assert (=> b!6141148 (= e!3742565 (and tp!1715754 tp!1715757))))

(assert (=> b!6140675 (= tp!1715699 e!3742565)))

(assert (= (and b!6140675 (is-ElementMatch!16084 (regTwo!32681 r!7292))) b!6141145))

(assert (= (and b!6140675 (is-Concat!24929 (regTwo!32681 r!7292))) b!6141146))

(assert (= (and b!6140675 (is-Star!16084 (regTwo!32681 r!7292))) b!6141147))

(assert (= (and b!6140675 (is-Union!16084 (regTwo!32681 r!7292))) b!6141148))

(declare-fun condSetEmpty!41543 () Bool)

(assert (=> setNonEmpty!41537 (= condSetEmpty!41543 (= setRest!41537 (as set.empty (Set Context!10936))))))

(declare-fun setRes!41543 () Bool)

(assert (=> setNonEmpty!41537 (= tp!1715700 setRes!41543)))

(declare-fun setIsEmpty!41543 () Bool)

(assert (=> setIsEmpty!41543 setRes!41543))

(declare-fun setElem!41543 () Context!10936)

(declare-fun tp!1715764 () Bool)

(declare-fun e!3742568 () Bool)

(declare-fun setNonEmpty!41543 () Bool)

(assert (=> setNonEmpty!41543 (= setRes!41543 (and tp!1715764 (inv!83458 setElem!41543) e!3742568))))

(declare-fun setRest!41543 () (Set Context!10936))

(assert (=> setNonEmpty!41543 (= setRest!41537 (set.union (set.insert setElem!41543 (as set.empty (Set Context!10936))) setRest!41543))))

(declare-fun b!6141153 () Bool)

(declare-fun tp!1715763 () Bool)

(assert (=> b!6141153 (= e!3742568 tp!1715763)))

(assert (= (and setNonEmpty!41537 condSetEmpty!41543) setIsEmpty!41543))

(assert (= (and setNonEmpty!41537 (not condSetEmpty!41543)) setNonEmpty!41543))

(assert (= setNonEmpty!41543 b!6141153))

(declare-fun m!6982544 () Bool)

(assert (=> setNonEmpty!41543 m!6982544))

(declare-fun b!6141158 () Bool)

(declare-fun e!3742571 () Bool)

(declare-fun tp!1715769 () Bool)

(declare-fun tp!1715770 () Bool)

(assert (=> b!6141158 (= e!3742571 (and tp!1715769 tp!1715770))))

(assert (=> b!6140681 (= tp!1715706 e!3742571)))

(assert (= (and b!6140681 (is-Cons!64427 (exprs!5968 setElem!41537))) b!6141158))

(declare-fun b!6141166 () Bool)

(declare-fun e!3742577 () Bool)

(declare-fun tp!1715775 () Bool)

(assert (=> b!6141166 (= e!3742577 tp!1715775)))

(declare-fun tp!1715776 () Bool)

(declare-fun e!3742576 () Bool)

(declare-fun b!6141165 () Bool)

(assert (=> b!6141165 (= e!3742576 (and (inv!83458 (h!70876 (t!378031 zl!343))) e!3742577 tp!1715776))))

(assert (=> b!6140673 (= tp!1715703 e!3742576)))

(assert (= b!6141165 b!6141166))

(assert (= (and b!6140673 (is-Cons!64428 (t!378031 zl!343))) b!6141165))

(declare-fun m!6982546 () Bool)

(assert (=> b!6141165 m!6982546))

(declare-fun b!6141171 () Bool)

(declare-fun e!3742580 () Bool)

(declare-fun tp!1715779 () Bool)

(assert (=> b!6141171 (= e!3742580 (and tp_is_empty!41421 tp!1715779))))

(assert (=> b!6140659 (= tp!1715704 e!3742580)))

(assert (= (and b!6140659 (is-Cons!64429 (t!378032 s!2326))) b!6141171))

(declare-fun b!6141173 () Bool)

(declare-fun e!3742581 () Bool)

(declare-fun tp!1715784 () Bool)

(declare-fun tp!1715781 () Bool)

(assert (=> b!6141173 (= e!3742581 (and tp!1715784 tp!1715781))))

(declare-fun b!6141172 () Bool)

(assert (=> b!6141172 (= e!3742581 tp_is_empty!41421)))

(declare-fun b!6141174 () Bool)

(declare-fun tp!1715782 () Bool)

(assert (=> b!6141174 (= e!3742581 tp!1715782)))

(declare-fun b!6141175 () Bool)

(declare-fun tp!1715780 () Bool)

(declare-fun tp!1715783 () Bool)

(assert (=> b!6141175 (= e!3742581 (and tp!1715780 tp!1715783))))

(assert (=> b!6140669 (= tp!1715702 e!3742581)))

(assert (= (and b!6140669 (is-ElementMatch!16084 (reg!16413 r!7292))) b!6141172))

(assert (= (and b!6140669 (is-Concat!24929 (reg!16413 r!7292))) b!6141173))

(assert (= (and b!6140669 (is-Star!16084 (reg!16413 r!7292))) b!6141174))

(assert (= (and b!6140669 (is-Union!16084 (reg!16413 r!7292))) b!6141175))

(declare-fun b!6141177 () Bool)

(declare-fun e!3742582 () Bool)

(declare-fun tp!1715789 () Bool)

(declare-fun tp!1715786 () Bool)

(assert (=> b!6141177 (= e!3742582 (and tp!1715789 tp!1715786))))

(declare-fun b!6141176 () Bool)

(assert (=> b!6141176 (= e!3742582 tp_is_empty!41421)))

(declare-fun b!6141178 () Bool)

(declare-fun tp!1715787 () Bool)

(assert (=> b!6141178 (= e!3742582 tp!1715787)))

(declare-fun b!6141179 () Bool)

(declare-fun tp!1715785 () Bool)

(declare-fun tp!1715788 () Bool)

(assert (=> b!6141179 (= e!3742582 (and tp!1715785 tp!1715788))))

(assert (=> b!6140683 (= tp!1715705 e!3742582)))

(assert (= (and b!6140683 (is-ElementMatch!16084 (regOne!32680 r!7292))) b!6141176))

(assert (= (and b!6140683 (is-Concat!24929 (regOne!32680 r!7292))) b!6141177))

(assert (= (and b!6140683 (is-Star!16084 (regOne!32680 r!7292))) b!6141178))

(assert (= (and b!6140683 (is-Union!16084 (regOne!32680 r!7292))) b!6141179))

(declare-fun b!6141181 () Bool)

(declare-fun e!3742583 () Bool)

(declare-fun tp!1715794 () Bool)

(declare-fun tp!1715791 () Bool)

(assert (=> b!6141181 (= e!3742583 (and tp!1715794 tp!1715791))))

(declare-fun b!6141180 () Bool)

(assert (=> b!6141180 (= e!3742583 tp_is_empty!41421)))

(declare-fun b!6141182 () Bool)

(declare-fun tp!1715792 () Bool)

(assert (=> b!6141182 (= e!3742583 tp!1715792)))

(declare-fun b!6141183 () Bool)

(declare-fun tp!1715790 () Bool)

(declare-fun tp!1715793 () Bool)

(assert (=> b!6141183 (= e!3742583 (and tp!1715790 tp!1715793))))

(assert (=> b!6140683 (= tp!1715708 e!3742583)))

(assert (= (and b!6140683 (is-ElementMatch!16084 (regTwo!32680 r!7292))) b!6141180))

(assert (= (and b!6140683 (is-Concat!24929 (regTwo!32680 r!7292))) b!6141181))

(assert (= (and b!6140683 (is-Star!16084 (regTwo!32680 r!7292))) b!6141182))

(assert (= (and b!6140683 (is-Union!16084 (regTwo!32680 r!7292))) b!6141183))

(declare-fun b!6141184 () Bool)

(declare-fun e!3742584 () Bool)

(declare-fun tp!1715795 () Bool)

(declare-fun tp!1715796 () Bool)

(assert (=> b!6141184 (= e!3742584 (and tp!1715795 tp!1715796))))

(assert (=> b!6140674 (= tp!1715701 e!3742584)))

(assert (= (and b!6140674 (is-Cons!64427 (exprs!5968 (h!70876 zl!343)))) b!6141184))

(declare-fun b_lambda!233733 () Bool)

(assert (= b_lambda!233731 (or b!6140677 b_lambda!233733)))

(declare-fun bs!1522744 () Bool)

(declare-fun d!1924018 () Bool)

(assert (= bs!1522744 (and d!1924018 b!6140677)))

(assert (=> bs!1522744 (= (dynLambda!25389 lambda!334694 (h!70876 zl!343)) (derivationStepZipperUp!1258 (h!70876 zl!343) (h!70877 s!2326)))))

(assert (=> bs!1522744 m!6982134))

(assert (=> d!1924000 d!1924018))

(declare-fun b_lambda!233735 () Bool)

(assert (= b_lambda!233729 (or b!6140677 b_lambda!233735)))

(declare-fun bs!1522745 () Bool)

(declare-fun d!1924020 () Bool)

(assert (= bs!1522745 (and d!1924020 b!6140677)))

(assert (=> bs!1522745 (= (dynLambda!25389 lambda!334694 lt!2333054) (derivationStepZipperUp!1258 lt!2333054 (h!70877 s!2326)))))

(assert (=> bs!1522745 m!6982180))

(assert (=> d!1923984 d!1924020))

(push 1)

(assert (not b!6141177))

(assert (not bs!1522744))

(assert (not bm!510002))

(assert (not b!6141158))

(assert (not b!6140838))

(assert (not d!1923942))

(assert (not b!6140878))

(assert (not b!6141001))

(assert (not bm!510003))

(assert (not d!1923966))

(assert (not bm!510005))

(assert (not b!6140805))

(assert (not b!6140842))

(assert (not bm!509962))

(assert (not b!6141129))

(assert (not b!6140873))

(assert (not b!6140910))

(assert (not d!1924014))

(assert (not bm!510009))

(assert (not b!6141122))

(assert (not b!6141104))

(assert (not b!6141153))

(assert (not b!6140836))

(assert (not b!6141009))

(assert (not b_lambda!233733))

(assert (not bm!509974))

(assert (not b!6141126))

(assert (not d!1923934))

(assert (not b!6140871))

(assert (not bm!509966))

(assert (not b!6140884))

(assert (not b!6140837))

(assert (not bm!509998))

(assert (not b!6141114))

(assert (not b!6141148))

(assert (not b!6141130))

(assert (not d!1923970))

(assert (not b!6140811))

(assert (not d!1924006))

(assert (not bm!509978))

(assert (not b!6141102))

(assert (not d!1923952))

(assert (not b!6141085))

(assert (not d!1923978))

(assert (not b!6141032))

(assert (not b!6140808))

(assert (not d!1923930))

(assert (not b!6141181))

(assert (not b!6141109))

(assert (not b!6141107))

(assert (not b!6140804))

(assert (not b!6141143))

(assert (not d!1923956))

(assert (not b!6141037))

(assert (not b!6140962))

(assert (not bm!510000))

(assert (not b!6141179))

(assert (not b!6141038))

(assert (not b!6141183))

(assert (not b!6140810))

(assert (not b!6140843))

(assert (not b!6140877))

(assert (not d!1923964))

(assert (not b!6141112))

(assert (not d!1923984))

(assert (not d!1923954))

(assert (not b!6141051))

(assert (not d!1924000))

(assert (not d!1923950))

(assert (not b!6141147))

(assert (not b!6141144))

(assert (not b!6141178))

(assert (not b!6140809))

(assert (not b!6140845))

(assert (not b!6140874))

(assert (not b!6141175))

(assert (not b!6141146))

(assert (not d!1923940))

(assert (not b!6140839))

(assert (not d!1924010))

(assert (not bm!509994))

(assert (not d!1924012))

(assert (not d!1923972))

(assert (not d!1923944))

(assert (not bm!510011))

(assert (not b_lambda!233735))

(assert (not b!6140846))

(assert (not bm!510007))

(assert (not b!6141004))

(assert (not b!6141171))

(assert (not b!6141006))

(assert (not setNonEmpty!41543))

(assert (not b!6141096))

(assert (not b!6140911))

(assert (not bm!509996))

(assert (not b!6141142))

(assert (not d!1923948))

(assert tp_is_empty!41421)

(assert (not b!6140849))

(assert (not d!1923960))

(assert (not b!6140912))

(assert (not d!1923962))

(assert (not d!1923932))

(assert (not d!1923976))

(assert (not d!1923986))

(assert (not b!6141053))

(assert (not b!6141002))

(assert (not d!1923996))

(assert (not d!1923958))

(assert (not b!6140876))

(assert (not b!6141174))

(assert (not d!1923988))

(assert (not b!6141128))

(assert (not b!6140958))

(assert (not d!1923946))

(assert (not b!6141184))

(assert (not b!6140997))

(assert (not b!6140904))

(assert (not b!6141173))

(assert (not b!6140909))

(assert (not b!6140812))

(assert (not b!6140844))

(assert (not b!6140833))

(assert (not b!6141166))

(assert (not d!1923938))

(assert (not bm!510004))

(assert (not b!6141127))

(assert (not b!6141182))

(assert (not bm!509973))

(assert (not d!1923936))

(assert (not b!6140875))

(assert (not b!6140834))

(assert (not b!6140905))

(assert (not bs!1522745))

(assert (not d!1923982))

(assert (not bm!509963))

(assert (not b!6141165))

(assert (not bm!509992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1924114 () Bool)

(assert (=> d!1924114 (= (isDefined!12678 lt!2333170) (not (isEmpty!36383 lt!2333170)))))

(declare-fun bs!1522791 () Bool)

(assert (= bs!1522791 d!1924114))

(declare-fun m!6982804 () Bool)

(assert (=> bs!1522791 m!6982804))

(assert (=> b!6140909 d!1924114))

(declare-fun d!1924116 () Bool)

(assert (=> d!1924116 (= (nullable!6077 (reg!16413 r!7292)) (nullableFct!2041 (reg!16413 r!7292)))))

(declare-fun bs!1522792 () Bool)

(assert (= bs!1522792 d!1924116))

(declare-fun m!6982806 () Bool)

(assert (=> bs!1522792 m!6982806))

(assert (=> b!6141032 d!1924116))

(assert (=> d!1923962 d!1923956))

(declare-fun call!510071 () Bool)

(declare-fun c!1104760 () Bool)

(declare-fun bm!510066 () Bool)

(declare-fun c!1104761 () Bool)

(assert (=> bm!510066 (= call!510071 (validRegex!7820 (ite c!1104761 (reg!16413 (regOne!32680 r!7292)) (ite c!1104760 (regOne!32681 (regOne!32680 r!7292)) (regOne!32680 (regOne!32680 r!7292))))))))

(declare-fun b!6141571 () Bool)

(declare-fun res!2544647 () Bool)

(declare-fun e!3742805 () Bool)

(assert (=> b!6141571 (=> res!2544647 e!3742805)))

(assert (=> b!6141571 (= res!2544647 (not (is-Concat!24929 (regOne!32680 r!7292))))))

(declare-fun e!3742806 () Bool)

(assert (=> b!6141571 (= e!3742806 e!3742805)))

(declare-fun b!6141572 () Bool)

(declare-fun res!2544648 () Bool)

(declare-fun e!3742803 () Bool)

(assert (=> b!6141572 (=> (not res!2544648) (not e!3742803))))

(declare-fun call!510072 () Bool)

(assert (=> b!6141572 (= res!2544648 call!510072)))

(assert (=> b!6141572 (= e!3742806 e!3742803)))

(declare-fun b!6141573 () Bool)

(declare-fun e!3742801 () Bool)

(declare-fun call!510073 () Bool)

(assert (=> b!6141573 (= e!3742801 call!510073)))

(declare-fun b!6141574 () Bool)

(declare-fun e!3742804 () Bool)

(declare-fun e!3742802 () Bool)

(assert (=> b!6141574 (= e!3742804 e!3742802)))

(declare-fun res!2544646 () Bool)

(assert (=> b!6141574 (= res!2544646 (not (nullable!6077 (reg!16413 (regOne!32680 r!7292)))))))

(assert (=> b!6141574 (=> (not res!2544646) (not e!3742802))))

(declare-fun b!6141575 () Bool)

(assert (=> b!6141575 (= e!3742802 call!510071)))

(declare-fun b!6141576 () Bool)

(assert (=> b!6141576 (= e!3742804 e!3742806)))

(assert (=> b!6141576 (= c!1104760 (is-Union!16084 (regOne!32680 r!7292)))))

(declare-fun b!6141577 () Bool)

(declare-fun e!3742800 () Bool)

(assert (=> b!6141577 (= e!3742800 e!3742804)))

(assert (=> b!6141577 (= c!1104761 (is-Star!16084 (regOne!32680 r!7292)))))

(declare-fun bm!510067 () Bool)

(assert (=> bm!510067 (= call!510073 (validRegex!7820 (ite c!1104760 (regTwo!32681 (regOne!32680 r!7292)) (regTwo!32680 (regOne!32680 r!7292)))))))

(declare-fun b!6141570 () Bool)

(assert (=> b!6141570 (= e!3742803 call!510073)))

(declare-fun d!1924118 () Bool)

(declare-fun res!2544644 () Bool)

(assert (=> d!1924118 (=> res!2544644 e!3742800)))

(assert (=> d!1924118 (= res!2544644 (is-ElementMatch!16084 (regOne!32680 r!7292)))))

(assert (=> d!1924118 (= (validRegex!7820 (regOne!32680 r!7292)) e!3742800)))

(declare-fun bm!510068 () Bool)

(assert (=> bm!510068 (= call!510072 call!510071)))

(declare-fun b!6141578 () Bool)

(assert (=> b!6141578 (= e!3742805 e!3742801)))

(declare-fun res!2544645 () Bool)

(assert (=> b!6141578 (=> (not res!2544645) (not e!3742801))))

(assert (=> b!6141578 (= res!2544645 call!510072)))

(assert (= (and d!1924118 (not res!2544644)) b!6141577))

(assert (= (and b!6141577 c!1104761) b!6141574))

(assert (= (and b!6141577 (not c!1104761)) b!6141576))

(assert (= (and b!6141574 res!2544646) b!6141575))

(assert (= (and b!6141576 c!1104760) b!6141572))

(assert (= (and b!6141576 (not c!1104760)) b!6141571))

(assert (= (and b!6141572 res!2544648) b!6141570))

(assert (= (and b!6141571 (not res!2544647)) b!6141578))

(assert (= (and b!6141578 res!2544645) b!6141573))

(assert (= (or b!6141570 b!6141573) bm!510067))

(assert (= (or b!6141572 b!6141578) bm!510068))

(assert (= (or b!6141575 bm!510068) bm!510066))

(declare-fun m!6982808 () Bool)

(assert (=> bm!510066 m!6982808))

(declare-fun m!6982810 () Bool)

(assert (=> b!6141574 m!6982810))

(declare-fun m!6982812 () Bool)

(assert (=> bm!510067 m!6982812))

(assert (=> d!1923962 d!1924118))

(assert (=> d!1923962 d!1923966))

(declare-fun d!1924120 () Bool)

(assert (=> d!1924120 (= (Exists!3154 lambda!334723) (choose!45635 lambda!334723))))

(declare-fun bs!1522793 () Bool)

(assert (= bs!1522793 d!1924120))

(declare-fun m!6982814 () Bool)

(assert (=> bs!1522793 m!6982814))

(assert (=> d!1923962 d!1924120))

(declare-fun bs!1522794 () Bool)

(declare-fun d!1924122 () Bool)

(assert (= bs!1522794 (and d!1924122 b!6140666)))

(declare-fun lambda!334774 () Int)

(assert (=> bs!1522794 (= lambda!334774 lambda!334692)))

(declare-fun bs!1522795 () Bool)

(assert (= bs!1522795 (and d!1924122 d!1923964)))

(assert (=> bs!1522795 (not (= lambda!334774 lambda!334729))))

(declare-fun bs!1522796 () Bool)

(assert (= bs!1522796 (and d!1924122 b!6140965)))

(assert (=> bs!1522796 (not (= lambda!334774 lambda!334734))))

(declare-fun bs!1522797 () Bool)

(assert (= bs!1522797 (and d!1924122 d!1923962)))

(assert (=> bs!1522797 (= lambda!334774 lambda!334723)))

(declare-fun bs!1522798 () Bool)

(assert (= bs!1522798 (and d!1924122 b!6140964)))

(assert (=> bs!1522798 (not (= lambda!334774 lambda!334735))))

(assert (=> bs!1522794 (not (= lambda!334774 lambda!334693))))

(assert (=> bs!1522795 (= lambda!334774 lambda!334728)))

(assert (=> d!1924122 true))

(assert (=> d!1924122 true))

(assert (=> d!1924122 true))

(assert (=> d!1924122 (= (isDefined!12678 (findConcatSeparation!2389 (regOne!32680 r!7292) (regTwo!32680 r!7292) Nil!64429 s!2326 s!2326)) (Exists!3154 lambda!334774))))

(assert (=> d!1924122 true))

(declare-fun _$89!2233 () Unit!157491)

(assert (=> d!1924122 (= (choose!45636 (regOne!32680 r!7292) (regTwo!32680 r!7292) s!2326) _$89!2233)))

(declare-fun bs!1522799 () Bool)

(assert (= bs!1522799 d!1924122))

(assert (=> bs!1522799 m!6982116))

(assert (=> bs!1522799 m!6982116))

(assert (=> bs!1522799 m!6982118))

(declare-fun m!6982816 () Bool)

(assert (=> bs!1522799 m!6982816))

(assert (=> d!1923962 d!1924122))

(declare-fun d!1924124 () Bool)

(assert (=> d!1924124 true))

(declare-fun setRes!41549 () Bool)

(assert (=> d!1924124 setRes!41549))

(declare-fun condSetEmpty!41549 () Bool)

(declare-fun res!2544655 () (Set Context!10936))

(assert (=> d!1924124 (= condSetEmpty!41549 (= res!2544655 (as set.empty (Set Context!10936))))))

(assert (=> d!1924124 (= (choose!45639 lt!2333066 lambda!334694) res!2544655)))

(declare-fun setIsEmpty!41549 () Bool)

(assert (=> setIsEmpty!41549 setRes!41549))

(declare-fun setNonEmpty!41549 () Bool)

(declare-fun tp!1715860 () Bool)

(declare-fun e!3742811 () Bool)

(declare-fun setElem!41549 () Context!10936)

(assert (=> setNonEmpty!41549 (= setRes!41549 (and tp!1715860 (inv!83458 setElem!41549) e!3742811))))

(declare-fun setRest!41549 () (Set Context!10936))

(assert (=> setNonEmpty!41549 (= res!2544655 (set.union (set.insert setElem!41549 (as set.empty (Set Context!10936))) setRest!41549))))

(declare-fun b!6141585 () Bool)

(declare-fun tp!1715859 () Bool)

(assert (=> b!6141585 (= e!3742811 tp!1715859)))

(assert (= (and d!1924124 condSetEmpty!41549) setIsEmpty!41549))

(assert (= (and d!1924124 (not condSetEmpty!41549)) setNonEmpty!41549))

(assert (= setNonEmpty!41549 b!6141585))

(declare-fun m!6982818 () Bool)

(assert (=> setNonEmpty!41549 m!6982818))

(assert (=> d!1923982 d!1924124))

(declare-fun bm!510069 () Bool)

(declare-fun c!1104762 () Bool)

(declare-fun c!1104763 () Bool)

(declare-fun call!510074 () Bool)

(assert (=> bm!510069 (= call!510074 (validRegex!7820 (ite c!1104763 (reg!16413 (ite c!1104607 (regTwo!32681 r!7292) (regTwo!32680 r!7292))) (ite c!1104762 (regOne!32681 (ite c!1104607 (regTwo!32681 r!7292) (regTwo!32680 r!7292))) (regOne!32680 (ite c!1104607 (regTwo!32681 r!7292) (regTwo!32680 r!7292)))))))))

(declare-fun b!6141587 () Bool)

(declare-fun res!2544659 () Bool)

(declare-fun e!3742817 () Bool)

(assert (=> b!6141587 (=> res!2544659 e!3742817)))

(assert (=> b!6141587 (= res!2544659 (not (is-Concat!24929 (ite c!1104607 (regTwo!32681 r!7292) (regTwo!32680 r!7292)))))))

(declare-fun e!3742818 () Bool)

(assert (=> b!6141587 (= e!3742818 e!3742817)))

(declare-fun b!6141588 () Bool)

(declare-fun res!2544660 () Bool)

(declare-fun e!3742815 () Bool)

(assert (=> b!6141588 (=> (not res!2544660) (not e!3742815))))

(declare-fun call!510075 () Bool)

(assert (=> b!6141588 (= res!2544660 call!510075)))

(assert (=> b!6141588 (= e!3742818 e!3742815)))

(declare-fun b!6141589 () Bool)

(declare-fun e!3742813 () Bool)

(declare-fun call!510076 () Bool)

(assert (=> b!6141589 (= e!3742813 call!510076)))

(declare-fun b!6141590 () Bool)

(declare-fun e!3742816 () Bool)

(declare-fun e!3742814 () Bool)

(assert (=> b!6141590 (= e!3742816 e!3742814)))

(declare-fun res!2544658 () Bool)

(assert (=> b!6141590 (= res!2544658 (not (nullable!6077 (reg!16413 (ite c!1104607 (regTwo!32681 r!7292) (regTwo!32680 r!7292))))))))

(assert (=> b!6141590 (=> (not res!2544658) (not e!3742814))))

(declare-fun b!6141591 () Bool)

(assert (=> b!6141591 (= e!3742814 call!510074)))

(declare-fun b!6141592 () Bool)

(assert (=> b!6141592 (= e!3742816 e!3742818)))

(assert (=> b!6141592 (= c!1104762 (is-Union!16084 (ite c!1104607 (regTwo!32681 r!7292) (regTwo!32680 r!7292))))))

(declare-fun b!6141593 () Bool)

(declare-fun e!3742812 () Bool)

(assert (=> b!6141593 (= e!3742812 e!3742816)))

(assert (=> b!6141593 (= c!1104763 (is-Star!16084 (ite c!1104607 (regTwo!32681 r!7292) (regTwo!32680 r!7292))))))

(declare-fun bm!510070 () Bool)

(assert (=> bm!510070 (= call!510076 (validRegex!7820 (ite c!1104762 (regTwo!32681 (ite c!1104607 (regTwo!32681 r!7292) (regTwo!32680 r!7292))) (regTwo!32680 (ite c!1104607 (regTwo!32681 r!7292) (regTwo!32680 r!7292))))))))

(declare-fun b!6141586 () Bool)

(assert (=> b!6141586 (= e!3742815 call!510076)))

(declare-fun d!1924126 () Bool)

(declare-fun res!2544656 () Bool)

(assert (=> d!1924126 (=> res!2544656 e!3742812)))

(assert (=> d!1924126 (= res!2544656 (is-ElementMatch!16084 (ite c!1104607 (regTwo!32681 r!7292) (regTwo!32680 r!7292))))))

(assert (=> d!1924126 (= (validRegex!7820 (ite c!1104607 (regTwo!32681 r!7292) (regTwo!32680 r!7292))) e!3742812)))

(declare-fun bm!510071 () Bool)

(assert (=> bm!510071 (= call!510075 call!510074)))

(declare-fun b!6141594 () Bool)

(assert (=> b!6141594 (= e!3742817 e!3742813)))

(declare-fun res!2544657 () Bool)

(assert (=> b!6141594 (=> (not res!2544657) (not e!3742813))))

(assert (=> b!6141594 (= res!2544657 call!510075)))

(assert (= (and d!1924126 (not res!2544656)) b!6141593))

(assert (= (and b!6141593 c!1104763) b!6141590))

(assert (= (and b!6141593 (not c!1104763)) b!6141592))

(assert (= (and b!6141590 res!2544658) b!6141591))

(assert (= (and b!6141592 c!1104762) b!6141588))

(assert (= (and b!6141592 (not c!1104762)) b!6141587))

(assert (= (and b!6141588 res!2544660) b!6141586))

(assert (= (and b!6141587 (not res!2544659)) b!6141594))

(assert (= (and b!6141594 res!2544657) b!6141589))

(assert (= (or b!6141586 b!6141589) bm!510070))

(assert (= (or b!6141588 b!6141594) bm!510071))

(assert (= (or b!6141591 bm!510071) bm!510069))

(declare-fun m!6982820 () Bool)

(assert (=> bm!510069 m!6982820))

(declare-fun m!6982822 () Bool)

(assert (=> b!6141590 m!6982822))

(declare-fun m!6982824 () Bool)

(assert (=> bm!510070 m!6982824))

(assert (=> bm!509974 d!1924126))

(declare-fun d!1924128 () Bool)

(assert (=> d!1924128 (= (isEmpty!36382 (t!378032 s!2326)) (is-Nil!64429 (t!378032 s!2326)))))

(assert (=> d!1923978 d!1924128))

(declare-fun d!1924130 () Bool)

(assert (=> d!1924130 (= (Exists!3154 lambda!334728) (choose!45635 lambda!334728))))

(declare-fun bs!1522800 () Bool)

(assert (= bs!1522800 d!1924130))

(declare-fun m!6982826 () Bool)

(assert (=> bs!1522800 m!6982826))

(assert (=> d!1923964 d!1924130))

(declare-fun d!1924132 () Bool)

(assert (=> d!1924132 (= (Exists!3154 lambda!334729) (choose!45635 lambda!334729))))

(declare-fun bs!1522801 () Bool)

(assert (= bs!1522801 d!1924132))

(declare-fun m!6982828 () Bool)

(assert (=> bs!1522801 m!6982828))

(assert (=> d!1923964 d!1924132))

(declare-fun bs!1522802 () Bool)

(declare-fun d!1924134 () Bool)

(assert (= bs!1522802 (and d!1924134 b!6140666)))

(declare-fun lambda!334779 () Int)

(assert (=> bs!1522802 (= lambda!334779 lambda!334692)))

(declare-fun bs!1522803 () Bool)

(assert (= bs!1522803 (and d!1924134 d!1923964)))

(assert (=> bs!1522803 (not (= lambda!334779 lambda!334729))))

(declare-fun bs!1522804 () Bool)

(assert (= bs!1522804 (and d!1924134 b!6140965)))

(assert (=> bs!1522804 (not (= lambda!334779 lambda!334734))))

(declare-fun bs!1522805 () Bool)

(assert (= bs!1522805 (and d!1924134 b!6140964)))

(assert (=> bs!1522805 (not (= lambda!334779 lambda!334735))))

(assert (=> bs!1522802 (not (= lambda!334779 lambda!334693))))

(assert (=> bs!1522803 (= lambda!334779 lambda!334728)))

(declare-fun bs!1522806 () Bool)

(assert (= bs!1522806 (and d!1924134 d!1924122)))

(assert (=> bs!1522806 (= lambda!334779 lambda!334774)))

(declare-fun bs!1522807 () Bool)

(assert (= bs!1522807 (and d!1924134 d!1923962)))

(assert (=> bs!1522807 (= lambda!334779 lambda!334723)))

(assert (=> d!1924134 true))

(assert (=> d!1924134 true))

(assert (=> d!1924134 true))

(declare-fun lambda!334780 () Int)

(assert (=> bs!1522802 (not (= lambda!334780 lambda!334692))))

(assert (=> bs!1522803 (= lambda!334780 lambda!334729)))

(assert (=> bs!1522804 (not (= lambda!334780 lambda!334734))))

(declare-fun bs!1522808 () Bool)

(assert (= bs!1522808 d!1924134))

(assert (=> bs!1522808 (not (= lambda!334780 lambda!334779))))

(assert (=> bs!1522805 (= lambda!334780 lambda!334735)))

(assert (=> bs!1522802 (= lambda!334780 lambda!334693)))

(assert (=> bs!1522803 (not (= lambda!334780 lambda!334728))))

(assert (=> bs!1522806 (not (= lambda!334780 lambda!334774))))

(assert (=> bs!1522807 (not (= lambda!334780 lambda!334723))))

(assert (=> d!1924134 true))

(assert (=> d!1924134 true))

(assert (=> d!1924134 true))

(assert (=> d!1924134 (= (Exists!3154 lambda!334779) (Exists!3154 lambda!334780))))

(assert (=> d!1924134 true))

(declare-fun _$90!1857 () Unit!157491)

(assert (=> d!1924134 (= (choose!45637 (regOne!32680 r!7292) (regTwo!32680 r!7292) s!2326) _$90!1857)))

(declare-fun m!6982830 () Bool)

(assert (=> bs!1522808 m!6982830))

(declare-fun m!6982832 () Bool)

(assert (=> bs!1522808 m!6982832))

(assert (=> d!1923964 d!1924134))

(assert (=> d!1923964 d!1924118))

(declare-fun d!1924136 () Bool)

(assert (=> d!1924136 (= (nullable!6077 (h!70875 (exprs!5968 lt!2333054))) (nullableFct!2041 (h!70875 (exprs!5968 lt!2333054))))))

(declare-fun bs!1522809 () Bool)

(assert (= bs!1522809 d!1924136))

(declare-fun m!6982834 () Bool)

(assert (=> bs!1522809 m!6982834))

(assert (=> b!6141053 d!1924136))

(assert (=> d!1923934 d!1923938))

(assert (=> d!1923934 d!1923936))

(declare-fun d!1924138 () Bool)

(declare-fun e!3742825 () Bool)

(assert (=> d!1924138 (= (matchZipper!2096 (set.union lt!2333059 lt!2333063) (t!378032 s!2326)) e!3742825)))

(declare-fun res!2544671 () Bool)

(assert (=> d!1924138 (=> res!2544671 e!3742825)))

(assert (=> d!1924138 (= res!2544671 (matchZipper!2096 lt!2333059 (t!378032 s!2326)))))

(assert (=> d!1924138 true))

(declare-fun _$48!1648 () Unit!157491)

(assert (=> d!1924138 (= (choose!45633 lt!2333059 lt!2333063 (t!378032 s!2326)) _$48!1648)))

(declare-fun b!6141605 () Bool)

(assert (=> b!6141605 (= e!3742825 (matchZipper!2096 lt!2333063 (t!378032 s!2326)))))

(assert (= (and d!1924138 (not res!2544671)) b!6141605))

(assert (=> d!1924138 m!6982200))

(assert (=> d!1924138 m!6982188))

(assert (=> b!6141605 m!6982148))

(assert (=> d!1923934 d!1924138))

(assert (=> d!1923936 d!1924128))

(declare-fun b!6141606 () Bool)

(declare-fun e!3742829 () (Set Context!10936))

(declare-fun e!3742830 () (Set Context!10936))

(assert (=> b!6141606 (= e!3742829 e!3742830)))

(declare-fun c!1104765 () Bool)

(assert (=> b!6141606 (= c!1104765 (is-Concat!24929 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun b!6141607 () Bool)

(declare-fun e!3742828 () (Set Context!10936))

(declare-fun e!3742831 () (Set Context!10936))

(assert (=> b!6141607 (= e!3742828 e!3742831)))

(declare-fun c!1104766 () Bool)

(assert (=> b!6141607 (= c!1104766 (is-Union!16084 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun b!6141608 () Bool)

(declare-fun c!1104764 () Bool)

(declare-fun e!3742826 () Bool)

(assert (=> b!6141608 (= c!1104764 e!3742826)))

(declare-fun res!2544672 () Bool)

(assert (=> b!6141608 (=> (not res!2544672) (not e!3742826))))

(assert (=> b!6141608 (= res!2544672 (is-Concat!24929 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(assert (=> b!6141608 (= e!3742831 e!3742829)))

(declare-fun bm!510072 () Bool)

(declare-fun call!510078 () List!64551)

(declare-fun call!510080 () List!64551)

(assert (=> bm!510072 (= call!510078 call!510080)))

(declare-fun b!6141609 () Bool)

(declare-fun e!3742827 () (Set Context!10936))

(assert (=> b!6141609 (= e!3742827 (as set.empty (Set Context!10936)))))

(declare-fun call!510081 () (Set Context!10936))

(declare-fun bm!510073 () Bool)

(assert (=> bm!510073 (= call!510081 (derivationStepZipperDown!1332 (ite c!1104766 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343))))) (ite c!1104766 (Context!10937 (t!378030 (exprs!5968 (h!70876 zl!343)))) (Context!10937 call!510080)) (h!70877 s!2326)))))

(declare-fun b!6141610 () Bool)

(declare-fun c!1104768 () Bool)

(assert (=> b!6141610 (= c!1104768 (is-Star!16084 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(assert (=> b!6141610 (= e!3742830 e!3742827)))

(declare-fun b!6141612 () Bool)

(assert (=> b!6141612 (= e!3742828 (set.insert (Context!10937 (t!378030 (exprs!5968 (h!70876 zl!343)))) (as set.empty (Set Context!10936))))))

(declare-fun bm!510074 () Bool)

(declare-fun call!510079 () (Set Context!10936))

(declare-fun call!510082 () (Set Context!10936))

(assert (=> bm!510074 (= call!510079 call!510082)))

(declare-fun bm!510075 () Bool)

(assert (=> bm!510075 (= call!510080 ($colon$colon!1961 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 (h!70876 zl!343))))) (ite (or c!1104764 c!1104765) (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (h!70875 (exprs!5968 (h!70876 zl!343))))))))

(declare-fun b!6141613 () Bool)

(assert (=> b!6141613 (= e!3742826 (nullable!6077 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343))))))))

(declare-fun b!6141614 () Bool)

(assert (=> b!6141614 (= e!3742831 (set.union call!510081 call!510082))))

(declare-fun b!6141615 () Bool)

(declare-fun call!510077 () (Set Context!10936))

(assert (=> b!6141615 (= e!3742827 call!510077)))

(declare-fun b!6141616 () Bool)

(assert (=> b!6141616 (= e!3742829 (set.union call!510081 call!510079))))

(declare-fun b!6141611 () Bool)

(assert (=> b!6141611 (= e!3742830 call!510077)))

(declare-fun d!1924140 () Bool)

(declare-fun c!1104767 () Bool)

(assert (=> d!1924140 (= c!1104767 (and (is-ElementMatch!16084 (h!70875 (exprs!5968 (h!70876 zl!343)))) (= (c!1104532 (h!70875 (exprs!5968 (h!70876 zl!343)))) (h!70877 s!2326))))))

(assert (=> d!1924140 (= (derivationStepZipperDown!1332 (h!70875 (exprs!5968 (h!70876 zl!343))) (Context!10937 (t!378030 (exprs!5968 (h!70876 zl!343)))) (h!70877 s!2326)) e!3742828)))

(declare-fun bm!510076 () Bool)

(assert (=> bm!510076 (= call!510077 call!510079)))

(declare-fun bm!510077 () Bool)

(assert (=> bm!510077 (= call!510082 (derivationStepZipperDown!1332 (ite c!1104766 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104764 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104765 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343))))))) (ite (or c!1104766 c!1104764) (Context!10937 (t!378030 (exprs!5968 (h!70876 zl!343)))) (Context!10937 call!510078)) (h!70877 s!2326)))))

(assert (= (and d!1924140 c!1104767) b!6141612))

(assert (= (and d!1924140 (not c!1104767)) b!6141607))

(assert (= (and b!6141607 c!1104766) b!6141614))

(assert (= (and b!6141607 (not c!1104766)) b!6141608))

(assert (= (and b!6141608 res!2544672) b!6141613))

(assert (= (and b!6141608 c!1104764) b!6141616))

(assert (= (and b!6141608 (not c!1104764)) b!6141606))

(assert (= (and b!6141606 c!1104765) b!6141611))

(assert (= (and b!6141606 (not c!1104765)) b!6141610))

(assert (= (and b!6141610 c!1104768) b!6141615))

(assert (= (and b!6141610 (not c!1104768)) b!6141609))

(assert (= (or b!6141611 b!6141615) bm!510072))

(assert (= (or b!6141611 b!6141615) bm!510076))

(assert (= (or b!6141616 bm!510072) bm!510075))

(assert (= (or b!6141616 bm!510076) bm!510074))

(assert (= (or b!6141614 bm!510074) bm!510077))

(assert (= (or b!6141614 b!6141616) bm!510073))

(assert (=> b!6141613 m!6982518))

(declare-fun m!6982836 () Bool)

(assert (=> b!6141612 m!6982836))

(declare-fun m!6982838 () Bool)

(assert (=> bm!510077 m!6982838))

(declare-fun m!6982840 () Bool)

(assert (=> bm!510075 m!6982840))

(declare-fun m!6982842 () Bool)

(assert (=> bm!510073 m!6982842))

(assert (=> bm!510005 d!1924140))

(declare-fun b!6141617 () Bool)

(declare-fun res!2544673 () Bool)

(declare-fun e!3742832 () Bool)

(assert (=> b!6141617 (=> (not res!2544673) (not e!3742832))))

(declare-fun call!510083 () Bool)

(assert (=> b!6141617 (= res!2544673 (not call!510083))))

(declare-fun b!6141618 () Bool)

(declare-fun e!3742836 () Bool)

(assert (=> b!6141618 (= e!3742836 (nullable!6077 (regTwo!32680 r!7292)))))

(declare-fun b!6141619 () Bool)

(declare-fun e!3742837 () Bool)

(declare-fun e!3742838 () Bool)

(assert (=> b!6141619 (= e!3742837 e!3742838)))

(declare-fun res!2544675 () Bool)

(assert (=> b!6141619 (=> res!2544675 e!3742838)))

(assert (=> b!6141619 (= res!2544675 call!510083)))

(declare-fun b!6141620 () Bool)

(declare-fun e!3742835 () Bool)

(declare-fun lt!2333233 () Bool)

(assert (=> b!6141620 (= e!3742835 (not lt!2333233))))

(declare-fun d!1924142 () Bool)

(declare-fun e!3742834 () Bool)

(assert (=> d!1924142 e!3742834))

(declare-fun c!1104771 () Bool)

(assert (=> d!1924142 (= c!1104771 (is-EmptyExpr!16084 (regTwo!32680 r!7292)))))

(assert (=> d!1924142 (= lt!2333233 e!3742836)))

(declare-fun c!1104770 () Bool)

(assert (=> d!1924142 (= c!1104770 (isEmpty!36382 s!2326))))

(assert (=> d!1924142 (validRegex!7820 (regTwo!32680 r!7292))))

(assert (=> d!1924142 (= (matchR!8267 (regTwo!32680 r!7292) s!2326) lt!2333233)))

(declare-fun bm!510078 () Bool)

(assert (=> bm!510078 (= call!510083 (isEmpty!36382 s!2326))))

(declare-fun b!6141621 () Bool)

(declare-fun e!3742833 () Bool)

(assert (=> b!6141621 (= e!3742833 e!3742837)))

(declare-fun res!2544676 () Bool)

(assert (=> b!6141621 (=> (not res!2544676) (not e!3742837))))

(assert (=> b!6141621 (= res!2544676 (not lt!2333233))))

(declare-fun b!6141622 () Bool)

(declare-fun res!2544680 () Bool)

(assert (=> b!6141622 (=> (not res!2544680) (not e!3742832))))

(assert (=> b!6141622 (= res!2544680 (isEmpty!36382 (tail!11774 s!2326)))))

(declare-fun b!6141623 () Bool)

(assert (=> b!6141623 (= e!3742832 (= (head!12689 s!2326) (c!1104532 (regTwo!32680 r!7292))))))

(declare-fun b!6141624 () Bool)

(assert (=> b!6141624 (= e!3742834 e!3742835)))

(declare-fun c!1104769 () Bool)

(assert (=> b!6141624 (= c!1104769 (is-EmptyLang!16084 (regTwo!32680 r!7292)))))

(declare-fun b!6141625 () Bool)

(declare-fun res!2544678 () Bool)

(assert (=> b!6141625 (=> res!2544678 e!3742838)))

(assert (=> b!6141625 (= res!2544678 (not (isEmpty!36382 (tail!11774 s!2326))))))

(declare-fun b!6141626 () Bool)

(declare-fun res!2544679 () Bool)

(assert (=> b!6141626 (=> res!2544679 e!3742833)))

(assert (=> b!6141626 (= res!2544679 (not (is-ElementMatch!16084 (regTwo!32680 r!7292))))))

(assert (=> b!6141626 (= e!3742835 e!3742833)))

(declare-fun b!6141627 () Bool)

(assert (=> b!6141627 (= e!3742838 (not (= (head!12689 s!2326) (c!1104532 (regTwo!32680 r!7292)))))))

(declare-fun b!6141628 () Bool)

(assert (=> b!6141628 (= e!3742834 (= lt!2333233 call!510083))))

(declare-fun b!6141629 () Bool)

(declare-fun res!2544674 () Bool)

(assert (=> b!6141629 (=> res!2544674 e!3742833)))

(assert (=> b!6141629 (= res!2544674 e!3742832)))

(declare-fun res!2544677 () Bool)

(assert (=> b!6141629 (=> (not res!2544677) (not e!3742832))))

(assert (=> b!6141629 (= res!2544677 lt!2333233)))

(declare-fun b!6141630 () Bool)

(assert (=> b!6141630 (= e!3742836 (matchR!8267 (derivativeStep!4804 (regTwo!32680 r!7292) (head!12689 s!2326)) (tail!11774 s!2326)))))

(assert (= (and d!1924142 c!1104770) b!6141618))

(assert (= (and d!1924142 (not c!1104770)) b!6141630))

(assert (= (and d!1924142 c!1104771) b!6141628))

(assert (= (and d!1924142 (not c!1104771)) b!6141624))

(assert (= (and b!6141624 c!1104769) b!6141620))

(assert (= (and b!6141624 (not c!1104769)) b!6141626))

(assert (= (and b!6141626 (not res!2544679)) b!6141629))

(assert (= (and b!6141629 res!2544677) b!6141617))

(assert (= (and b!6141617 res!2544673) b!6141622))

(assert (= (and b!6141622 res!2544680) b!6141623))

(assert (= (and b!6141629 (not res!2544674)) b!6141621))

(assert (= (and b!6141621 res!2544676) b!6141619))

(assert (= (and b!6141619 (not res!2544675)) b!6141625))

(assert (= (and b!6141625 (not res!2544678)) b!6141627))

(assert (= (or b!6141628 b!6141617 b!6141619) bm!510078))

(assert (=> b!6141623 m!6982346))

(assert (=> b!6141627 m!6982346))

(declare-fun m!6982844 () Bool)

(assert (=> b!6141618 m!6982844))

(assert (=> bm!510078 m!6982342))

(assert (=> b!6141625 m!6982350))

(assert (=> b!6141625 m!6982350))

(assert (=> b!6141625 m!6982438))

(assert (=> b!6141622 m!6982350))

(assert (=> b!6141622 m!6982350))

(assert (=> b!6141622 m!6982438))

(assert (=> b!6141630 m!6982346))

(assert (=> b!6141630 m!6982346))

(declare-fun m!6982846 () Bool)

(assert (=> b!6141630 m!6982846))

(assert (=> b!6141630 m!6982350))

(assert (=> b!6141630 m!6982846))

(assert (=> b!6141630 m!6982350))

(declare-fun m!6982848 () Bool)

(assert (=> b!6141630 m!6982848))

(assert (=> d!1924142 m!6982342))

(declare-fun m!6982850 () Bool)

(assert (=> d!1924142 m!6982850))

(assert (=> b!6140905 d!1924142))

(declare-fun c!1104772 () Bool)

(declare-fun c!1104773 () Bool)

(declare-fun call!510084 () Bool)

(declare-fun bm!510079 () Bool)

(assert (=> bm!510079 (= call!510084 (validRegex!7820 (ite c!1104773 (reg!16413 (ite c!1104608 (reg!16413 r!7292) (ite c!1104607 (regOne!32681 r!7292) (regOne!32680 r!7292)))) (ite c!1104772 (regOne!32681 (ite c!1104608 (reg!16413 r!7292) (ite c!1104607 (regOne!32681 r!7292) (regOne!32680 r!7292)))) (regOne!32680 (ite c!1104608 (reg!16413 r!7292) (ite c!1104607 (regOne!32681 r!7292) (regOne!32680 r!7292))))))))))

(declare-fun b!6141632 () Bool)

(declare-fun res!2544684 () Bool)

(declare-fun e!3742844 () Bool)

(assert (=> b!6141632 (=> res!2544684 e!3742844)))

(assert (=> b!6141632 (= res!2544684 (not (is-Concat!24929 (ite c!1104608 (reg!16413 r!7292) (ite c!1104607 (regOne!32681 r!7292) (regOne!32680 r!7292))))))))

(declare-fun e!3742845 () Bool)

(assert (=> b!6141632 (= e!3742845 e!3742844)))

(declare-fun b!6141633 () Bool)

(declare-fun res!2544685 () Bool)

(declare-fun e!3742842 () Bool)

(assert (=> b!6141633 (=> (not res!2544685) (not e!3742842))))

(declare-fun call!510085 () Bool)

(assert (=> b!6141633 (= res!2544685 call!510085)))

(assert (=> b!6141633 (= e!3742845 e!3742842)))

(declare-fun b!6141634 () Bool)

(declare-fun e!3742840 () Bool)

(declare-fun call!510086 () Bool)

(assert (=> b!6141634 (= e!3742840 call!510086)))

(declare-fun b!6141635 () Bool)

(declare-fun e!3742843 () Bool)

(declare-fun e!3742841 () Bool)

(assert (=> b!6141635 (= e!3742843 e!3742841)))

(declare-fun res!2544683 () Bool)

(assert (=> b!6141635 (= res!2544683 (not (nullable!6077 (reg!16413 (ite c!1104608 (reg!16413 r!7292) (ite c!1104607 (regOne!32681 r!7292) (regOne!32680 r!7292)))))))))

(assert (=> b!6141635 (=> (not res!2544683) (not e!3742841))))

(declare-fun b!6141636 () Bool)

(assert (=> b!6141636 (= e!3742841 call!510084)))

(declare-fun b!6141637 () Bool)

(assert (=> b!6141637 (= e!3742843 e!3742845)))

(assert (=> b!6141637 (= c!1104772 (is-Union!16084 (ite c!1104608 (reg!16413 r!7292) (ite c!1104607 (regOne!32681 r!7292) (regOne!32680 r!7292)))))))

(declare-fun b!6141638 () Bool)

(declare-fun e!3742839 () Bool)

(assert (=> b!6141638 (= e!3742839 e!3742843)))

(assert (=> b!6141638 (= c!1104773 (is-Star!16084 (ite c!1104608 (reg!16413 r!7292) (ite c!1104607 (regOne!32681 r!7292) (regOne!32680 r!7292)))))))

(declare-fun bm!510080 () Bool)

(assert (=> bm!510080 (= call!510086 (validRegex!7820 (ite c!1104772 (regTwo!32681 (ite c!1104608 (reg!16413 r!7292) (ite c!1104607 (regOne!32681 r!7292) (regOne!32680 r!7292)))) (regTwo!32680 (ite c!1104608 (reg!16413 r!7292) (ite c!1104607 (regOne!32681 r!7292) (regOne!32680 r!7292)))))))))

(declare-fun b!6141631 () Bool)

(assert (=> b!6141631 (= e!3742842 call!510086)))

(declare-fun d!1924144 () Bool)

(declare-fun res!2544681 () Bool)

(assert (=> d!1924144 (=> res!2544681 e!3742839)))

(assert (=> d!1924144 (= res!2544681 (is-ElementMatch!16084 (ite c!1104608 (reg!16413 r!7292) (ite c!1104607 (regOne!32681 r!7292) (regOne!32680 r!7292)))))))

(assert (=> d!1924144 (= (validRegex!7820 (ite c!1104608 (reg!16413 r!7292) (ite c!1104607 (regOne!32681 r!7292) (regOne!32680 r!7292)))) e!3742839)))

(declare-fun bm!510081 () Bool)

(assert (=> bm!510081 (= call!510085 call!510084)))

(declare-fun b!6141639 () Bool)

(assert (=> b!6141639 (= e!3742844 e!3742840)))

(declare-fun res!2544682 () Bool)

(assert (=> b!6141639 (=> (not res!2544682) (not e!3742840))))

(assert (=> b!6141639 (= res!2544682 call!510085)))

(assert (= (and d!1924144 (not res!2544681)) b!6141638))

(assert (= (and b!6141638 c!1104773) b!6141635))

(assert (= (and b!6141638 (not c!1104773)) b!6141637))

(assert (= (and b!6141635 res!2544683) b!6141636))

(assert (= (and b!6141637 c!1104772) b!6141633))

(assert (= (and b!6141637 (not c!1104772)) b!6141632))

(assert (= (and b!6141633 res!2544685) b!6141631))

(assert (= (and b!6141632 (not res!2544684)) b!6141639))

(assert (= (and b!6141639 res!2544682) b!6141634))

(assert (= (or b!6141631 b!6141634) bm!510080))

(assert (= (or b!6141633 b!6141639) bm!510081))

(assert (= (or b!6141636 bm!510081) bm!510079))

(declare-fun m!6982852 () Bool)

(assert (=> bm!510079 m!6982852))

(declare-fun m!6982854 () Bool)

(assert (=> b!6141635 m!6982854))

(declare-fun m!6982856 () Bool)

(assert (=> bm!510080 m!6982856))

(assert (=> bm!509973 d!1924144))

(declare-fun d!1924146 () Bool)

(declare-fun c!1104774 () Bool)

(assert (=> d!1924146 (= c!1104774 (isEmpty!36382 (tail!11774 s!2326)))))

(declare-fun e!3742846 () Bool)

(assert (=> d!1924146 (= (matchZipper!2096 (derivationStepZipper!2057 lt!2333066 (head!12689 s!2326)) (tail!11774 s!2326)) e!3742846)))

(declare-fun b!6141640 () Bool)

(assert (=> b!6141640 (= e!3742846 (nullableZipper!1865 (derivationStepZipper!2057 lt!2333066 (head!12689 s!2326))))))

(declare-fun b!6141641 () Bool)

(assert (=> b!6141641 (= e!3742846 (matchZipper!2096 (derivationStepZipper!2057 (derivationStepZipper!2057 lt!2333066 (head!12689 s!2326)) (head!12689 (tail!11774 s!2326))) (tail!11774 (tail!11774 s!2326))))))

(assert (= (and d!1924146 c!1104774) b!6141640))

(assert (= (and d!1924146 (not c!1104774)) b!6141641))

(assert (=> d!1924146 m!6982350))

(assert (=> d!1924146 m!6982438))

(assert (=> b!6141640 m!6982348))

(declare-fun m!6982858 () Bool)

(assert (=> b!6141640 m!6982858))

(assert (=> b!6141641 m!6982350))

(declare-fun m!6982860 () Bool)

(assert (=> b!6141641 m!6982860))

(assert (=> b!6141641 m!6982348))

(assert (=> b!6141641 m!6982860))

(declare-fun m!6982862 () Bool)

(assert (=> b!6141641 m!6982862))

(assert (=> b!6141641 m!6982350))

(declare-fun m!6982864 () Bool)

(assert (=> b!6141641 m!6982864))

(assert (=> b!6141641 m!6982862))

(assert (=> b!6141641 m!6982864))

(declare-fun m!6982866 () Bool)

(assert (=> b!6141641 m!6982866))

(assert (=> b!6140844 d!1924146))

(declare-fun bs!1522810 () Bool)

(declare-fun d!1924148 () Bool)

(assert (= bs!1522810 (and d!1924148 b!6140677)))

(declare-fun lambda!334781 () Int)

(assert (=> bs!1522810 (= (= (head!12689 s!2326) (h!70877 s!2326)) (= lambda!334781 lambda!334694))))

(declare-fun bs!1522811 () Bool)

(assert (= bs!1522811 (and d!1924148 d!1923986)))

(assert (=> bs!1522811 (= (= (head!12689 s!2326) (h!70877 s!2326)) (= lambda!334781 lambda!334739))))

(assert (=> d!1924148 true))

(assert (=> d!1924148 (= (derivationStepZipper!2057 lt!2333066 (head!12689 s!2326)) (flatMap!1589 lt!2333066 lambda!334781))))

(declare-fun bs!1522812 () Bool)

(assert (= bs!1522812 d!1924148))

(declare-fun m!6982868 () Bool)

(assert (=> bs!1522812 m!6982868))

(assert (=> b!6140844 d!1924148))

(declare-fun d!1924150 () Bool)

(assert (=> d!1924150 (= (head!12689 s!2326) (h!70877 s!2326))))

(assert (=> b!6140844 d!1924150))

(declare-fun d!1924152 () Bool)

(assert (=> d!1924152 (= (tail!11774 s!2326) (t!378032 s!2326))))

(assert (=> b!6140844 d!1924152))

(assert (=> b!6140884 d!1923940))

(declare-fun bs!1522813 () Bool)

(declare-fun d!1924154 () Bool)

(assert (= bs!1522813 (and d!1924154 d!1923942)))

(declare-fun lambda!334782 () Int)

(assert (=> bs!1522813 (= lambda!334782 lambda!334713)))

(declare-fun bs!1522814 () Bool)

(assert (= bs!1522814 (and d!1924154 d!1923940)))

(assert (=> bs!1522814 (= lambda!334782 lambda!334710)))

(declare-fun bs!1522815 () Bool)

(assert (= bs!1522815 (and d!1924154 d!1923976)))

(assert (=> bs!1522815 (= lambda!334782 lambda!334736)))

(declare-fun bs!1522816 () Bool)

(assert (= bs!1522816 (and d!1924154 d!1923944)))

(assert (=> bs!1522816 (= lambda!334782 lambda!334714)))

(declare-fun bs!1522817 () Bool)

(assert (= bs!1522817 (and d!1924154 d!1923952)))

(assert (=> bs!1522817 (= lambda!334782 lambda!334717)))

(declare-fun bs!1522818 () Bool)

(assert (= bs!1522818 (and d!1924154 d!1923954)))

(assert (=> bs!1522818 (= lambda!334782 lambda!334720)))

(declare-fun lt!2333234 () List!64551)

(assert (=> d!1924154 (forall!15205 lt!2333234 lambda!334782)))

(declare-fun e!3742847 () List!64551)

(assert (=> d!1924154 (= lt!2333234 e!3742847)))

(declare-fun c!1104775 () Bool)

(assert (=> d!1924154 (= c!1104775 (is-Cons!64428 (t!378031 zl!343)))))

(assert (=> d!1924154 (= (unfocusZipperList!1505 (t!378031 zl!343)) lt!2333234)))

(declare-fun b!6141642 () Bool)

(assert (=> b!6141642 (= e!3742847 (Cons!64427 (generalisedConcat!1681 (exprs!5968 (h!70876 (t!378031 zl!343)))) (unfocusZipperList!1505 (t!378031 (t!378031 zl!343)))))))

(declare-fun b!6141643 () Bool)

(assert (=> b!6141643 (= e!3742847 Nil!64427)))

(assert (= (and d!1924154 c!1104775) b!6141642))

(assert (= (and d!1924154 (not c!1104775)) b!6141643))

(declare-fun m!6982870 () Bool)

(assert (=> d!1924154 m!6982870))

(declare-fun m!6982872 () Bool)

(assert (=> b!6141642 m!6982872))

(declare-fun m!6982874 () Bool)

(assert (=> b!6141642 m!6982874))

(assert (=> b!6140884 d!1924154))

(declare-fun d!1924156 () Bool)

(declare-fun res!2544690 () Bool)

(declare-fun e!3742852 () Bool)

(assert (=> d!1924156 (=> res!2544690 e!3742852)))

(assert (=> d!1924156 (= res!2544690 (is-Nil!64427 lt!2333162))))

(assert (=> d!1924156 (= (forall!15205 lt!2333162 lambda!334720) e!3742852)))

(declare-fun b!6141648 () Bool)

(declare-fun e!3742853 () Bool)

(assert (=> b!6141648 (= e!3742852 e!3742853)))

(declare-fun res!2544691 () Bool)

(assert (=> b!6141648 (=> (not res!2544691) (not e!3742853))))

(declare-fun dynLambda!25391 (Int Regex!16084) Bool)

(assert (=> b!6141648 (= res!2544691 (dynLambda!25391 lambda!334720 (h!70875 lt!2333162)))))

(declare-fun b!6141649 () Bool)

(assert (=> b!6141649 (= e!3742853 (forall!15205 (t!378030 lt!2333162) lambda!334720))))

(assert (= (and d!1924156 (not res!2544690)) b!6141648))

(assert (= (and b!6141648 res!2544691) b!6141649))

(declare-fun b_lambda!233745 () Bool)

(assert (=> (not b_lambda!233745) (not b!6141648)))

(declare-fun m!6982876 () Bool)

(assert (=> b!6141648 m!6982876))

(declare-fun m!6982878 () Bool)

(assert (=> b!6141649 m!6982878))

(assert (=> d!1923954 d!1924156))

(assert (=> b!6141006 d!1924150))

(declare-fun b!6141650 () Bool)

(declare-fun e!3742857 () (Set Context!10936))

(declare-fun e!3742858 () (Set Context!10936))

(assert (=> b!6141650 (= e!3742857 e!3742858)))

(declare-fun c!1104777 () Bool)

(assert (=> b!6141650 (= c!1104777 (is-Concat!24929 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343)))))))))))

(declare-fun b!6141651 () Bool)

(declare-fun e!3742856 () (Set Context!10936))

(declare-fun e!3742859 () (Set Context!10936))

(assert (=> b!6141651 (= e!3742856 e!3742859)))

(declare-fun c!1104778 () Bool)

(assert (=> b!6141651 (= c!1104778 (is-Union!16084 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343)))))))))))

(declare-fun b!6141652 () Bool)

(declare-fun c!1104776 () Bool)

(declare-fun e!3742854 () Bool)

(assert (=> b!6141652 (= c!1104776 e!3742854)))

(declare-fun res!2544692 () Bool)

(assert (=> b!6141652 (=> (not res!2544692) (not e!3742854))))

(assert (=> b!6141652 (= res!2544692 (is-Concat!24929 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343)))))))))))

(assert (=> b!6141652 (= e!3742859 e!3742857)))

(declare-fun bm!510082 () Bool)

(declare-fun call!510088 () List!64551)

(declare-fun call!510090 () List!64551)

(assert (=> bm!510082 (= call!510088 call!510090)))

(declare-fun b!6141653 () Bool)

(declare-fun e!3742855 () (Set Context!10936))

(assert (=> b!6141653 (= e!3742855 (as set.empty (Set Context!10936)))))

(declare-fun bm!510083 () Bool)

(declare-fun call!510091 () (Set Context!10936))

(assert (=> bm!510083 (= call!510091 (derivationStepZipperDown!1332 (ite c!1104778 (regOne!32681 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343)))))))) (regOne!32680 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343))))))))) (ite c!1104778 (ite (or c!1104646 c!1104644) lt!2333068 (Context!10937 call!510012)) (Context!10937 call!510090)) (h!70877 s!2326)))))

(declare-fun c!1104780 () Bool)

(declare-fun b!6141654 () Bool)

(assert (=> b!6141654 (= c!1104780 (is-Star!16084 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343)))))))))))

(assert (=> b!6141654 (= e!3742858 e!3742855)))

(declare-fun b!6141656 () Bool)

(assert (=> b!6141656 (= e!3742856 (set.insert (ite (or c!1104646 c!1104644) lt!2333068 (Context!10937 call!510012)) (as set.empty (Set Context!10936))))))

(declare-fun bm!510084 () Bool)

(declare-fun call!510089 () (Set Context!10936))

(declare-fun call!510092 () (Set Context!10936))

(assert (=> bm!510084 (= call!510089 call!510092)))

(declare-fun bm!510085 () Bool)

(assert (=> bm!510085 (= call!510090 ($colon$colon!1961 (exprs!5968 (ite (or c!1104646 c!1104644) lt!2333068 (Context!10937 call!510012))) (ite (or c!1104776 c!1104777) (regTwo!32680 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343)))))))) (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343))))))))))))

(declare-fun b!6141657 () Bool)

(assert (=> b!6141657 (= e!3742854 (nullable!6077 (regOne!32680 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343))))))))))))

(declare-fun b!6141658 () Bool)

(assert (=> b!6141658 (= e!3742859 (set.union call!510091 call!510092))))

(declare-fun b!6141659 () Bool)

(declare-fun call!510087 () (Set Context!10936))

(assert (=> b!6141659 (= e!3742855 call!510087)))

(declare-fun b!6141660 () Bool)

(assert (=> b!6141660 (= e!3742857 (set.union call!510091 call!510089))))

(declare-fun b!6141655 () Bool)

(assert (=> b!6141655 (= e!3742858 call!510087)))

(declare-fun c!1104779 () Bool)

(declare-fun d!1924158 () Bool)

(assert (=> d!1924158 (= c!1104779 (and (is-ElementMatch!16084 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343)))))))) (= (c!1104532 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343)))))))) (h!70877 s!2326))))))

(assert (=> d!1924158 (= (derivationStepZipperDown!1332 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343))))))) (ite (or c!1104646 c!1104644) lt!2333068 (Context!10937 call!510012)) (h!70877 s!2326)) e!3742856)))

(declare-fun bm!510086 () Bool)

(assert (=> bm!510086 (= call!510087 call!510089)))

(declare-fun bm!510087 () Bool)

(assert (=> bm!510087 (= call!510092 (derivationStepZipperDown!1332 (ite c!1104778 (regTwo!32681 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343)))))))) (ite c!1104776 (regTwo!32680 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343)))))))) (ite c!1104777 (regOne!32680 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343)))))))) (reg!16413 (ite c!1104646 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104644 (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (ite c!1104645 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (reg!16413 (h!70875 (exprs!5968 (h!70876 zl!343))))))))))) (ite (or c!1104778 c!1104776) (ite (or c!1104646 c!1104644) lt!2333068 (Context!10937 call!510012)) (Context!10937 call!510088)) (h!70877 s!2326)))))

(assert (= (and d!1924158 c!1104779) b!6141656))

(assert (= (and d!1924158 (not c!1104779)) b!6141651))

(assert (= (and b!6141651 c!1104778) b!6141658))

(assert (= (and b!6141651 (not c!1104778)) b!6141652))

(assert (= (and b!6141652 res!2544692) b!6141657))

(assert (= (and b!6141652 c!1104776) b!6141660))

(assert (= (and b!6141652 (not c!1104776)) b!6141650))

(assert (= (and b!6141650 c!1104777) b!6141655))

(assert (= (and b!6141650 (not c!1104777)) b!6141654))

(assert (= (and b!6141654 c!1104780) b!6141659))

(assert (= (and b!6141654 (not c!1104780)) b!6141653))

(assert (= (or b!6141655 b!6141659) bm!510082))

(assert (= (or b!6141655 b!6141659) bm!510086))

(assert (= (or b!6141660 bm!510082) bm!510085))

(assert (= (or b!6141660 bm!510086) bm!510084))

(assert (= (or b!6141658 bm!510084) bm!510087))

(assert (= (or b!6141658 b!6141660) bm!510083))

(declare-fun m!6982880 () Bool)

(assert (=> b!6141657 m!6982880))

(declare-fun m!6982882 () Bool)

(assert (=> b!6141656 m!6982882))

(declare-fun m!6982884 () Bool)

(assert (=> bm!510087 m!6982884))

(declare-fun m!6982886 () Bool)

(assert (=> bm!510085 m!6982886))

(declare-fun m!6982888 () Bool)

(assert (=> bm!510083 m!6982888))

(assert (=> bm!510011 d!1924158))

(declare-fun b!6141661 () Bool)

(declare-fun e!3742863 () (Set Context!10936))

(declare-fun e!3742864 () (Set Context!10936))

(assert (=> b!6141661 (= e!3742863 e!3742864)))

(declare-fun c!1104782 () Bool)

(assert (=> b!6141661 (= c!1104782 (is-Concat!24929 (h!70875 (exprs!5968 lt!2333068))))))

(declare-fun b!6141662 () Bool)

(declare-fun e!3742862 () (Set Context!10936))

(declare-fun e!3742865 () (Set Context!10936))

(assert (=> b!6141662 (= e!3742862 e!3742865)))

(declare-fun c!1104783 () Bool)

(assert (=> b!6141662 (= c!1104783 (is-Union!16084 (h!70875 (exprs!5968 lt!2333068))))))

(declare-fun b!6141663 () Bool)

(declare-fun c!1104781 () Bool)

(declare-fun e!3742860 () Bool)

(assert (=> b!6141663 (= c!1104781 e!3742860)))

(declare-fun res!2544693 () Bool)

(assert (=> b!6141663 (=> (not res!2544693) (not e!3742860))))

(assert (=> b!6141663 (= res!2544693 (is-Concat!24929 (h!70875 (exprs!5968 lt!2333068))))))

(assert (=> b!6141663 (= e!3742865 e!3742863)))

(declare-fun bm!510088 () Bool)

(declare-fun call!510094 () List!64551)

(declare-fun call!510096 () List!64551)

(assert (=> bm!510088 (= call!510094 call!510096)))

(declare-fun b!6141664 () Bool)

(declare-fun e!3742861 () (Set Context!10936))

(assert (=> b!6141664 (= e!3742861 (as set.empty (Set Context!10936)))))

(declare-fun bm!510089 () Bool)

(declare-fun call!510097 () (Set Context!10936))

(assert (=> bm!510089 (= call!510097 (derivationStepZipperDown!1332 (ite c!1104783 (regOne!32681 (h!70875 (exprs!5968 lt!2333068))) (regOne!32680 (h!70875 (exprs!5968 lt!2333068)))) (ite c!1104783 (Context!10937 (t!378030 (exprs!5968 lt!2333068))) (Context!10937 call!510096)) (h!70877 s!2326)))))

(declare-fun b!6141665 () Bool)

(declare-fun c!1104785 () Bool)

(assert (=> b!6141665 (= c!1104785 (is-Star!16084 (h!70875 (exprs!5968 lt!2333068))))))

(assert (=> b!6141665 (= e!3742864 e!3742861)))

(declare-fun b!6141667 () Bool)

(assert (=> b!6141667 (= e!3742862 (set.insert (Context!10937 (t!378030 (exprs!5968 lt!2333068))) (as set.empty (Set Context!10936))))))

(declare-fun bm!510090 () Bool)

(declare-fun call!510095 () (Set Context!10936))

(declare-fun call!510098 () (Set Context!10936))

(assert (=> bm!510090 (= call!510095 call!510098)))

(declare-fun bm!510091 () Bool)

(assert (=> bm!510091 (= call!510096 ($colon$colon!1961 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 lt!2333068)))) (ite (or c!1104781 c!1104782) (regTwo!32680 (h!70875 (exprs!5968 lt!2333068))) (h!70875 (exprs!5968 lt!2333068)))))))

(declare-fun b!6141668 () Bool)

(assert (=> b!6141668 (= e!3742860 (nullable!6077 (regOne!32680 (h!70875 (exprs!5968 lt!2333068)))))))

(declare-fun b!6141669 () Bool)

(assert (=> b!6141669 (= e!3742865 (set.union call!510097 call!510098))))

(declare-fun b!6141670 () Bool)

(declare-fun call!510093 () (Set Context!10936))

(assert (=> b!6141670 (= e!3742861 call!510093)))

(declare-fun b!6141671 () Bool)

(assert (=> b!6141671 (= e!3742863 (set.union call!510097 call!510095))))

(declare-fun b!6141666 () Bool)

(assert (=> b!6141666 (= e!3742864 call!510093)))

(declare-fun d!1924160 () Bool)

(declare-fun c!1104784 () Bool)

(assert (=> d!1924160 (= c!1104784 (and (is-ElementMatch!16084 (h!70875 (exprs!5968 lt!2333068))) (= (c!1104532 (h!70875 (exprs!5968 lt!2333068))) (h!70877 s!2326))))))

(assert (=> d!1924160 (= (derivationStepZipperDown!1332 (h!70875 (exprs!5968 lt!2333068)) (Context!10937 (t!378030 (exprs!5968 lt!2333068))) (h!70877 s!2326)) e!3742862)))

(declare-fun bm!510092 () Bool)

(assert (=> bm!510092 (= call!510093 call!510095)))

(declare-fun bm!510093 () Bool)

(assert (=> bm!510093 (= call!510098 (derivationStepZipperDown!1332 (ite c!1104783 (regTwo!32681 (h!70875 (exprs!5968 lt!2333068))) (ite c!1104781 (regTwo!32680 (h!70875 (exprs!5968 lt!2333068))) (ite c!1104782 (regOne!32680 (h!70875 (exprs!5968 lt!2333068))) (reg!16413 (h!70875 (exprs!5968 lt!2333068)))))) (ite (or c!1104783 c!1104781) (Context!10937 (t!378030 (exprs!5968 lt!2333068))) (Context!10937 call!510094)) (h!70877 s!2326)))))

(assert (= (and d!1924160 c!1104784) b!6141667))

(assert (= (and d!1924160 (not c!1104784)) b!6141662))

(assert (= (and b!6141662 c!1104783) b!6141669))

(assert (= (and b!6141662 (not c!1104783)) b!6141663))

(assert (= (and b!6141663 res!2544693) b!6141668))

(assert (= (and b!6141663 c!1104781) b!6141671))

(assert (= (and b!6141663 (not c!1104781)) b!6141661))

(assert (= (and b!6141661 c!1104782) b!6141666))

(assert (= (and b!6141661 (not c!1104782)) b!6141665))

(assert (= (and b!6141665 c!1104785) b!6141670))

(assert (= (and b!6141665 (not c!1104785)) b!6141664))

(assert (= (or b!6141666 b!6141670) bm!510088))

(assert (= (or b!6141666 b!6141670) bm!510092))

(assert (= (or b!6141671 bm!510088) bm!510091))

(assert (= (or b!6141671 bm!510092) bm!510090))

(assert (= (or b!6141669 bm!510090) bm!510093))

(assert (= (or b!6141669 b!6141671) bm!510089))

(declare-fun m!6982890 () Bool)

(assert (=> b!6141668 m!6982890))

(declare-fun m!6982892 () Bool)

(assert (=> b!6141667 m!6982892))

(declare-fun m!6982894 () Bool)

(assert (=> bm!510093 m!6982894))

(declare-fun m!6982896 () Bool)

(assert (=> bm!510091 m!6982896))

(declare-fun m!6982898 () Bool)

(assert (=> bm!510089 m!6982898))

(assert (=> bm!510003 d!1924160))

(declare-fun d!1924162 () Bool)

(declare-fun c!1104786 () Bool)

(assert (=> d!1924162 (= c!1104786 (isEmpty!36382 (tail!11774 (t!378032 s!2326))))))

(declare-fun e!3742866 () Bool)

(assert (=> d!1924162 (= (matchZipper!2096 (derivationStepZipper!2057 lt!2333059 (head!12689 (t!378032 s!2326))) (tail!11774 (t!378032 s!2326))) e!3742866)))

(declare-fun b!6141672 () Bool)

(assert (=> b!6141672 (= e!3742866 (nullableZipper!1865 (derivationStepZipper!2057 lt!2333059 (head!12689 (t!378032 s!2326)))))))

(declare-fun b!6141673 () Bool)

(assert (=> b!6141673 (= e!3742866 (matchZipper!2096 (derivationStepZipper!2057 (derivationStepZipper!2057 lt!2333059 (head!12689 (t!378032 s!2326))) (head!12689 (tail!11774 (t!378032 s!2326)))) (tail!11774 (tail!11774 (t!378032 s!2326)))))))

(assert (= (and d!1924162 c!1104786) b!6141672))

(assert (= (and d!1924162 (not c!1104786)) b!6141673))

(assert (=> d!1924162 m!6982300))

(declare-fun m!6982900 () Bool)

(assert (=> d!1924162 m!6982900))

(assert (=> b!6141672 m!6982310))

(declare-fun m!6982902 () Bool)

(assert (=> b!6141672 m!6982902))

(assert (=> b!6141673 m!6982300))

(declare-fun m!6982904 () Bool)

(assert (=> b!6141673 m!6982904))

(assert (=> b!6141673 m!6982310))

(assert (=> b!6141673 m!6982904))

(declare-fun m!6982906 () Bool)

(assert (=> b!6141673 m!6982906))

(assert (=> b!6141673 m!6982300))

(declare-fun m!6982908 () Bool)

(assert (=> b!6141673 m!6982908))

(assert (=> b!6141673 m!6982906))

(assert (=> b!6141673 m!6982908))

(declare-fun m!6982910 () Bool)

(assert (=> b!6141673 m!6982910))

(assert (=> b!6140810 d!1924162))

(declare-fun bs!1522819 () Bool)

(declare-fun d!1924164 () Bool)

(assert (= bs!1522819 (and d!1924164 b!6140677)))

(declare-fun lambda!334783 () Int)

(assert (=> bs!1522819 (= (= (head!12689 (t!378032 s!2326)) (h!70877 s!2326)) (= lambda!334783 lambda!334694))))

(declare-fun bs!1522820 () Bool)

(assert (= bs!1522820 (and d!1924164 d!1923986)))

(assert (=> bs!1522820 (= (= (head!12689 (t!378032 s!2326)) (h!70877 s!2326)) (= lambda!334783 lambda!334739))))

(declare-fun bs!1522821 () Bool)

(assert (= bs!1522821 (and d!1924164 d!1924148)))

(assert (=> bs!1522821 (= (= (head!12689 (t!378032 s!2326)) (head!12689 s!2326)) (= lambda!334783 lambda!334781))))

(assert (=> d!1924164 true))

(assert (=> d!1924164 (= (derivationStepZipper!2057 lt!2333059 (head!12689 (t!378032 s!2326))) (flatMap!1589 lt!2333059 lambda!334783))))

(declare-fun bs!1522822 () Bool)

(assert (= bs!1522822 d!1924164))

(declare-fun m!6982912 () Bool)

(assert (=> bs!1522822 m!6982912))

(assert (=> b!6140810 d!1924164))

(declare-fun d!1924166 () Bool)

(assert (=> d!1924166 (= (head!12689 (t!378032 s!2326)) (h!70877 (t!378032 s!2326)))))

(assert (=> b!6140810 d!1924166))

(declare-fun d!1924168 () Bool)

(assert (=> d!1924168 (= (tail!11774 (t!378032 s!2326)) (t!378032 (t!378032 s!2326)))))

(assert (=> b!6140810 d!1924168))

(declare-fun b!6141674 () Bool)

(declare-fun e!3742870 () (Set Context!10936))

(declare-fun e!3742871 () (Set Context!10936))

(assert (=> b!6141674 (= e!3742870 e!3742871)))

(declare-fun c!1104788 () Bool)

(assert (=> b!6141674 (= c!1104788 (is-Concat!24929 (h!70875 (exprs!5968 lt!2333054))))))

(declare-fun b!6141675 () Bool)

(declare-fun e!3742869 () (Set Context!10936))

(declare-fun e!3742872 () (Set Context!10936))

(assert (=> b!6141675 (= e!3742869 e!3742872)))

(declare-fun c!1104789 () Bool)

(assert (=> b!6141675 (= c!1104789 (is-Union!16084 (h!70875 (exprs!5968 lt!2333054))))))

(declare-fun b!6141676 () Bool)

(declare-fun c!1104787 () Bool)

(declare-fun e!3742867 () Bool)

(assert (=> b!6141676 (= c!1104787 e!3742867)))

(declare-fun res!2544694 () Bool)

(assert (=> b!6141676 (=> (not res!2544694) (not e!3742867))))

(assert (=> b!6141676 (= res!2544694 (is-Concat!24929 (h!70875 (exprs!5968 lt!2333054))))))

(assert (=> b!6141676 (= e!3742872 e!3742870)))

(declare-fun bm!510094 () Bool)

(declare-fun call!510100 () List!64551)

(declare-fun call!510102 () List!64551)

(assert (=> bm!510094 (= call!510100 call!510102)))

(declare-fun b!6141677 () Bool)

(declare-fun e!3742868 () (Set Context!10936))

(assert (=> b!6141677 (= e!3742868 (as set.empty (Set Context!10936)))))

(declare-fun bm!510095 () Bool)

(declare-fun call!510103 () (Set Context!10936))

(assert (=> bm!510095 (= call!510103 (derivationStepZipperDown!1332 (ite c!1104789 (regOne!32681 (h!70875 (exprs!5968 lt!2333054))) (regOne!32680 (h!70875 (exprs!5968 lt!2333054)))) (ite c!1104789 (Context!10937 (t!378030 (exprs!5968 lt!2333054))) (Context!10937 call!510102)) (h!70877 s!2326)))))

(declare-fun b!6141678 () Bool)

(declare-fun c!1104791 () Bool)

(assert (=> b!6141678 (= c!1104791 (is-Star!16084 (h!70875 (exprs!5968 lt!2333054))))))

(assert (=> b!6141678 (= e!3742871 e!3742868)))

(declare-fun b!6141680 () Bool)

(assert (=> b!6141680 (= e!3742869 (set.insert (Context!10937 (t!378030 (exprs!5968 lt!2333054))) (as set.empty (Set Context!10936))))))

(declare-fun bm!510096 () Bool)

(declare-fun call!510101 () (Set Context!10936))

(declare-fun call!510104 () (Set Context!10936))

(assert (=> bm!510096 (= call!510101 call!510104)))

(declare-fun bm!510097 () Bool)

(assert (=> bm!510097 (= call!510102 ($colon$colon!1961 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 lt!2333054)))) (ite (or c!1104787 c!1104788) (regTwo!32680 (h!70875 (exprs!5968 lt!2333054))) (h!70875 (exprs!5968 lt!2333054)))))))

(declare-fun b!6141681 () Bool)

(assert (=> b!6141681 (= e!3742867 (nullable!6077 (regOne!32680 (h!70875 (exprs!5968 lt!2333054)))))))

(declare-fun b!6141682 () Bool)

(assert (=> b!6141682 (= e!3742872 (set.union call!510103 call!510104))))

(declare-fun b!6141683 () Bool)

(declare-fun call!510099 () (Set Context!10936))

(assert (=> b!6141683 (= e!3742868 call!510099)))

(declare-fun b!6141684 () Bool)

(assert (=> b!6141684 (= e!3742870 (set.union call!510103 call!510101))))

(declare-fun b!6141679 () Bool)

(assert (=> b!6141679 (= e!3742871 call!510099)))

(declare-fun d!1924170 () Bool)

(declare-fun c!1104790 () Bool)

(assert (=> d!1924170 (= c!1104790 (and (is-ElementMatch!16084 (h!70875 (exprs!5968 lt!2333054))) (= (c!1104532 (h!70875 (exprs!5968 lt!2333054))) (h!70877 s!2326))))))

(assert (=> d!1924170 (= (derivationStepZipperDown!1332 (h!70875 (exprs!5968 lt!2333054)) (Context!10937 (t!378030 (exprs!5968 lt!2333054))) (h!70877 s!2326)) e!3742869)))

(declare-fun bm!510098 () Bool)

(assert (=> bm!510098 (= call!510099 call!510101)))

(declare-fun bm!510099 () Bool)

(assert (=> bm!510099 (= call!510104 (derivationStepZipperDown!1332 (ite c!1104789 (regTwo!32681 (h!70875 (exprs!5968 lt!2333054))) (ite c!1104787 (regTwo!32680 (h!70875 (exprs!5968 lt!2333054))) (ite c!1104788 (regOne!32680 (h!70875 (exprs!5968 lt!2333054))) (reg!16413 (h!70875 (exprs!5968 lt!2333054)))))) (ite (or c!1104789 c!1104787) (Context!10937 (t!378030 (exprs!5968 lt!2333054))) (Context!10937 call!510100)) (h!70877 s!2326)))))

(assert (= (and d!1924170 c!1104790) b!6141680))

(assert (= (and d!1924170 (not c!1104790)) b!6141675))

(assert (= (and b!6141675 c!1104789) b!6141682))

(assert (= (and b!6141675 (not c!1104789)) b!6141676))

(assert (= (and b!6141676 res!2544694) b!6141681))

(assert (= (and b!6141676 c!1104787) b!6141684))

(assert (= (and b!6141676 (not c!1104787)) b!6141674))

(assert (= (and b!6141674 c!1104788) b!6141679))

(assert (= (and b!6141674 (not c!1104788)) b!6141678))

(assert (= (and b!6141678 c!1104791) b!6141683))

(assert (= (and b!6141678 (not c!1104791)) b!6141677))

(assert (= (or b!6141679 b!6141683) bm!510094))

(assert (= (or b!6141679 b!6141683) bm!510098))

(assert (= (or b!6141684 bm!510094) bm!510097))

(assert (= (or b!6141684 bm!510098) bm!510096))

(assert (= (or b!6141682 bm!510096) bm!510099))

(assert (= (or b!6141682 b!6141684) bm!510095))

(declare-fun m!6982914 () Bool)

(assert (=> b!6141681 m!6982914))

(declare-fun m!6982916 () Bool)

(assert (=> b!6141680 m!6982916))

(declare-fun m!6982918 () Bool)

(assert (=> bm!510099 m!6982918))

(declare-fun m!6982920 () Bool)

(assert (=> bm!510097 m!6982920))

(declare-fun m!6982922 () Bool)

(assert (=> bm!510095 m!6982922))

(assert (=> bm!509978 d!1924170))

(declare-fun d!1924172 () Bool)

(declare-fun c!1104792 () Bool)

(assert (=> d!1924172 (= c!1104792 (isEmpty!36382 (tail!11774 (t!378032 s!2326))))))

(declare-fun e!3742873 () Bool)

(assert (=> d!1924172 (= (matchZipper!2096 (derivationStepZipper!2057 (set.union lt!2333059 lt!2333063) (head!12689 (t!378032 s!2326))) (tail!11774 (t!378032 s!2326))) e!3742873)))

(declare-fun b!6141685 () Bool)

(assert (=> b!6141685 (= e!3742873 (nullableZipper!1865 (derivationStepZipper!2057 (set.union lt!2333059 lt!2333063) (head!12689 (t!378032 s!2326)))))))

(declare-fun b!6141686 () Bool)

(assert (=> b!6141686 (= e!3742873 (matchZipper!2096 (derivationStepZipper!2057 (derivationStepZipper!2057 (set.union lt!2333059 lt!2333063) (head!12689 (t!378032 s!2326))) (head!12689 (tail!11774 (t!378032 s!2326)))) (tail!11774 (tail!11774 (t!378032 s!2326)))))))

(assert (= (and d!1924172 c!1104792) b!6141685))

(assert (= (and d!1924172 (not c!1104792)) b!6141686))

(assert (=> d!1924172 m!6982300))

(assert (=> d!1924172 m!6982900))

(assert (=> b!6141685 m!6982316))

(declare-fun m!6982924 () Bool)

(assert (=> b!6141685 m!6982924))

(assert (=> b!6141686 m!6982300))

(assert (=> b!6141686 m!6982904))

(assert (=> b!6141686 m!6982316))

(assert (=> b!6141686 m!6982904))

(declare-fun m!6982926 () Bool)

(assert (=> b!6141686 m!6982926))

(assert (=> b!6141686 m!6982300))

(assert (=> b!6141686 m!6982908))

(assert (=> b!6141686 m!6982926))

(assert (=> b!6141686 m!6982908))

(declare-fun m!6982928 () Bool)

(assert (=> b!6141686 m!6982928))

(assert (=> b!6140812 d!1924172))

(declare-fun bs!1522823 () Bool)

(declare-fun d!1924174 () Bool)

(assert (= bs!1522823 (and d!1924174 b!6140677)))

(declare-fun lambda!334784 () Int)

(assert (=> bs!1522823 (= (= (head!12689 (t!378032 s!2326)) (h!70877 s!2326)) (= lambda!334784 lambda!334694))))

(declare-fun bs!1522824 () Bool)

(assert (= bs!1522824 (and d!1924174 d!1923986)))

(assert (=> bs!1522824 (= (= (head!12689 (t!378032 s!2326)) (h!70877 s!2326)) (= lambda!334784 lambda!334739))))

(declare-fun bs!1522825 () Bool)

(assert (= bs!1522825 (and d!1924174 d!1924148)))

(assert (=> bs!1522825 (= (= (head!12689 (t!378032 s!2326)) (head!12689 s!2326)) (= lambda!334784 lambda!334781))))

(declare-fun bs!1522826 () Bool)

(assert (= bs!1522826 (and d!1924174 d!1924164)))

(assert (=> bs!1522826 (= lambda!334784 lambda!334783)))

(assert (=> d!1924174 true))

(assert (=> d!1924174 (= (derivationStepZipper!2057 (set.union lt!2333059 lt!2333063) (head!12689 (t!378032 s!2326))) (flatMap!1589 (set.union lt!2333059 lt!2333063) lambda!334784))))

(declare-fun bs!1522827 () Bool)

(assert (= bs!1522827 d!1924174))

(declare-fun m!6982930 () Bool)

(assert (=> bs!1522827 m!6982930))

(assert (=> b!6140812 d!1924174))

(assert (=> b!6140812 d!1924166))

(assert (=> b!6140812 d!1924168))

(declare-fun d!1924176 () Bool)

(assert (=> d!1924176 (= (isEmpty!36378 (tail!11775 (unfocusZipperList!1505 zl!343))) (is-Nil!64427 (tail!11775 (unfocusZipperList!1505 zl!343))))))

(assert (=> b!6140875 d!1924176))

(declare-fun d!1924178 () Bool)

(assert (=> d!1924178 (= (tail!11775 (unfocusZipperList!1505 zl!343)) (t!378030 (unfocusZipperList!1505 zl!343)))))

(assert (=> b!6140875 d!1924178))

(declare-fun d!1924180 () Bool)

(assert (=> d!1924180 (= (Exists!3154 (ite c!1104590 lambda!334734 lambda!334735)) (choose!45635 (ite c!1104590 lambda!334734 lambda!334735)))))

(declare-fun bs!1522828 () Bool)

(assert (= bs!1522828 d!1924180))

(declare-fun m!6982932 () Bool)

(assert (=> bs!1522828 m!6982932))

(assert (=> bm!509962 d!1924180))

(declare-fun d!1924182 () Bool)

(declare-fun lambda!334787 () Int)

(declare-fun exists!2431 ((Set Context!10936) Int) Bool)

(assert (=> d!1924182 (= (nullableZipper!1865 lt!2333060) (exists!2431 lt!2333060 lambda!334787))))

(declare-fun bs!1522829 () Bool)

(assert (= bs!1522829 d!1924182))

(declare-fun m!6982934 () Bool)

(assert (=> bs!1522829 m!6982934))

(assert (=> b!6140804 d!1924182))

(declare-fun bs!1522830 () Bool)

(declare-fun d!1924184 () Bool)

(assert (= bs!1522830 (and d!1924184 d!1923942)))

(declare-fun lambda!334788 () Int)

(assert (=> bs!1522830 (= lambda!334788 lambda!334713)))

(declare-fun bs!1522831 () Bool)

(assert (= bs!1522831 (and d!1924184 d!1923940)))

(assert (=> bs!1522831 (= lambda!334788 lambda!334710)))

(declare-fun bs!1522832 () Bool)

(assert (= bs!1522832 (and d!1924184 d!1923976)))

(assert (=> bs!1522832 (= lambda!334788 lambda!334736)))

(declare-fun bs!1522833 () Bool)

(assert (= bs!1522833 (and d!1924184 d!1924154)))

(assert (=> bs!1522833 (= lambda!334788 lambda!334782)))

(declare-fun bs!1522834 () Bool)

(assert (= bs!1522834 (and d!1924184 d!1923944)))

(assert (=> bs!1522834 (= lambda!334788 lambda!334714)))

(declare-fun bs!1522835 () Bool)

(assert (= bs!1522835 (and d!1924184 d!1923952)))

(assert (=> bs!1522835 (= lambda!334788 lambda!334717)))

(declare-fun bs!1522836 () Bool)

(assert (= bs!1522836 (and d!1924184 d!1923954)))

(assert (=> bs!1522836 (= lambda!334788 lambda!334720)))

(declare-fun b!6141687 () Bool)

(declare-fun e!3742874 () Bool)

(assert (=> b!6141687 (= e!3742874 (isEmpty!36378 (t!378030 (t!378030 (exprs!5968 (h!70876 zl!343))))))))

(declare-fun b!6141688 () Bool)

(declare-fun e!3742877 () Bool)

(declare-fun e!3742875 () Bool)

(assert (=> b!6141688 (= e!3742877 e!3742875)))

(declare-fun c!1104796 () Bool)

(assert (=> b!6141688 (= c!1104796 (isEmpty!36378 (tail!11775 (t!378030 (exprs!5968 (h!70876 zl!343))))))))

(declare-fun b!6141689 () Bool)

(declare-fun e!3742876 () Regex!16084)

(declare-fun e!3742879 () Regex!16084)

(assert (=> b!6141689 (= e!3742876 e!3742879)))

(declare-fun c!1104797 () Bool)

(assert (=> b!6141689 (= c!1104797 (is-Cons!64427 (t!378030 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun b!6141690 () Bool)

(declare-fun lt!2333235 () Regex!16084)

(assert (=> b!6141690 (= e!3742875 (isConcat!1024 lt!2333235))))

(declare-fun b!6141691 () Bool)

(declare-fun e!3742878 () Bool)

(assert (=> b!6141691 (= e!3742878 e!3742877)))

(declare-fun c!1104798 () Bool)

(assert (=> b!6141691 (= c!1104798 (isEmpty!36378 (t!378030 (exprs!5968 (h!70876 zl!343)))))))

(assert (=> d!1924184 e!3742878))

(declare-fun res!2544695 () Bool)

(assert (=> d!1924184 (=> (not res!2544695) (not e!3742878))))

(assert (=> d!1924184 (= res!2544695 (validRegex!7820 lt!2333235))))

(assert (=> d!1924184 (= lt!2333235 e!3742876)))

(declare-fun c!1104795 () Bool)

(assert (=> d!1924184 (= c!1104795 e!3742874)))

(declare-fun res!2544696 () Bool)

(assert (=> d!1924184 (=> (not res!2544696) (not e!3742874))))

(assert (=> d!1924184 (= res!2544696 (is-Cons!64427 (t!378030 (exprs!5968 (h!70876 zl!343)))))))

(assert (=> d!1924184 (forall!15205 (t!378030 (exprs!5968 (h!70876 zl!343))) lambda!334788)))

(assert (=> d!1924184 (= (generalisedConcat!1681 (t!378030 (exprs!5968 (h!70876 zl!343)))) lt!2333235)))

(declare-fun b!6141692 () Bool)

(assert (=> b!6141692 (= e!3742877 (isEmptyExpr!1501 lt!2333235))))

(declare-fun b!6141693 () Bool)

(assert (=> b!6141693 (= e!3742875 (= lt!2333235 (head!12690 (t!378030 (exprs!5968 (h!70876 zl!343))))))))

(declare-fun b!6141694 () Bool)

(assert (=> b!6141694 (= e!3742879 EmptyExpr!16084)))

(declare-fun b!6141695 () Bool)

(assert (=> b!6141695 (= e!3742876 (h!70875 (t!378030 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun b!6141696 () Bool)

(assert (=> b!6141696 (= e!3742879 (Concat!24929 (h!70875 (t!378030 (exprs!5968 (h!70876 zl!343)))) (generalisedConcat!1681 (t!378030 (t!378030 (exprs!5968 (h!70876 zl!343)))))))))

(assert (= (and d!1924184 res!2544696) b!6141687))

(assert (= (and d!1924184 c!1104795) b!6141695))

(assert (= (and d!1924184 (not c!1104795)) b!6141689))

(assert (= (and b!6141689 c!1104797) b!6141696))

(assert (= (and b!6141689 (not c!1104797)) b!6141694))

(assert (= (and d!1924184 res!2544695) b!6141691))

(assert (= (and b!6141691 c!1104798) b!6141692))

(assert (= (and b!6141691 (not c!1104798)) b!6141688))

(assert (= (and b!6141688 c!1104796) b!6141693))

(assert (= (and b!6141688 (not c!1104796)) b!6141690))

(declare-fun m!6982936 () Bool)

(assert (=> b!6141688 m!6982936))

(assert (=> b!6141688 m!6982936))

(declare-fun m!6982938 () Bool)

(assert (=> b!6141688 m!6982938))

(declare-fun m!6982940 () Bool)

(assert (=> b!6141687 m!6982940))

(declare-fun m!6982942 () Bool)

(assert (=> d!1924184 m!6982942))

(declare-fun m!6982944 () Bool)

(assert (=> d!1924184 m!6982944))

(declare-fun m!6982946 () Bool)

(assert (=> b!6141696 m!6982946))

(declare-fun m!6982948 () Bool)

(assert (=> b!6141693 m!6982948))

(assert (=> b!6141691 m!6982130))

(declare-fun m!6982950 () Bool)

(assert (=> b!6141690 m!6982950))

(declare-fun m!6982952 () Bool)

(assert (=> b!6141692 m!6982952))

(assert (=> b!6140842 d!1924184))

(declare-fun d!1924186 () Bool)

(assert (=> d!1924186 (= (nullable!6077 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343))))) (nullableFct!2041 (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343))))))))

(declare-fun bs!1522837 () Bool)

(assert (= bs!1522837 d!1924186))

(declare-fun m!6982954 () Bool)

(assert (=> bs!1522837 m!6982954))

(assert (=> b!6141122 d!1924186))

(declare-fun d!1924188 () Bool)

(declare-fun res!2544697 () Bool)

(declare-fun e!3742880 () Bool)

(assert (=> d!1924188 (=> res!2544697 e!3742880)))

(assert (=> d!1924188 (= res!2544697 (is-Nil!64427 (exprs!5968 setElem!41537)))))

(assert (=> d!1924188 (= (forall!15205 (exprs!5968 setElem!41537) lambda!334713) e!3742880)))

(declare-fun b!6141697 () Bool)

(declare-fun e!3742881 () Bool)

(assert (=> b!6141697 (= e!3742880 e!3742881)))

(declare-fun res!2544698 () Bool)

(assert (=> b!6141697 (=> (not res!2544698) (not e!3742881))))

(assert (=> b!6141697 (= res!2544698 (dynLambda!25391 lambda!334713 (h!70875 (exprs!5968 setElem!41537))))))

(declare-fun b!6141698 () Bool)

(assert (=> b!6141698 (= e!3742881 (forall!15205 (t!378030 (exprs!5968 setElem!41537)) lambda!334713))))

(assert (= (and d!1924188 (not res!2544697)) b!6141697))

(assert (= (and b!6141697 res!2544698) b!6141698))

(declare-fun b_lambda!233747 () Bool)

(assert (=> (not b_lambda!233747) (not b!6141697)))

(declare-fun m!6982956 () Bool)

(assert (=> b!6141697 m!6982956))

(declare-fun m!6982958 () Bool)

(assert (=> b!6141698 m!6982958))

(assert (=> d!1923942 d!1924188))

(declare-fun d!1924190 () Bool)

(assert (=> d!1924190 (= (isEmpty!36383 (findConcatSeparation!2389 (regOne!32680 r!7292) (regTwo!32680 r!7292) Nil!64429 s!2326 s!2326)) (not (is-Some!15974 (findConcatSeparation!2389 (regOne!32680 r!7292) (regTwo!32680 r!7292) Nil!64429 s!2326 s!2326))))))

(assert (=> d!1923966 d!1924190))

(declare-fun d!1924192 () Bool)

(assert (=> d!1924192 (= (isEmpty!36382 (tail!11774 s!2326)) (is-Nil!64429 (tail!11774 s!2326)))))

(assert (=> b!6141001 d!1924192))

(assert (=> b!6141001 d!1924152))

(declare-fun d!1924194 () Bool)

(assert (=> d!1924194 (= (isEmpty!36378 (tail!11775 (exprs!5968 (h!70876 zl!343)))) (is-Nil!64427 (tail!11775 (exprs!5968 (h!70876 zl!343)))))))

(assert (=> b!6140834 d!1924194))

(declare-fun d!1924196 () Bool)

(assert (=> d!1924196 (= (tail!11775 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343))))))

(assert (=> b!6140834 d!1924196))

(declare-fun bm!510100 () Bool)

(declare-fun call!510105 () (Set Context!10936))

(assert (=> bm!510100 (= call!510105 (derivationStepZipperDown!1332 (h!70875 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))))) (Context!10937 (t!378030 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343))))))))))) (h!70877 s!2326)))))

(declare-fun b!6141699 () Bool)

(declare-fun e!3742883 () (Set Context!10936))

(assert (=> b!6141699 (= e!3742883 (as set.empty (Set Context!10936)))))

(declare-fun b!6141700 () Bool)

(declare-fun e!3742882 () (Set Context!10936))

(assert (=> b!6141700 (= e!3742882 e!3742883)))

(declare-fun c!1104799 () Bool)

(assert (=> b!6141700 (= c!1104799 (is-Cons!64427 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))))))))

(declare-fun b!6141701 () Bool)

(assert (=> b!6141701 (= e!3742882 (set.union call!510105 (derivationStepZipperUp!1258 (Context!10937 (t!378030 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343))))))))))) (h!70877 s!2326))))))

(declare-fun d!1924198 () Bool)

(declare-fun c!1104800 () Bool)

(declare-fun e!3742884 () Bool)

(assert (=> d!1924198 (= c!1104800 e!3742884)))

(declare-fun res!2544699 () Bool)

(assert (=> d!1924198 (=> (not res!2544699) (not e!3742884))))

(assert (=> d!1924198 (= res!2544699 (is-Cons!64427 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))))))))

(assert (=> d!1924198 (= (derivationStepZipperUp!1258 (Context!10937 (t!378030 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))) (h!70877 s!2326)) e!3742882)))

(declare-fun b!6141702 () Bool)

(assert (=> b!6141702 (= e!3742883 call!510105)))

(declare-fun b!6141703 () Bool)

(assert (=> b!6141703 (= e!3742884 (nullable!6077 (h!70875 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343))))))))))))))

(assert (= (and d!1924198 res!2544699) b!6141703))

(assert (= (and d!1924198 c!1104800) b!6141701))

(assert (= (and d!1924198 (not c!1104800)) b!6141700))

(assert (= (and b!6141700 c!1104799) b!6141702))

(assert (= (and b!6141700 (not c!1104799)) b!6141699))

(assert (= (or b!6141701 b!6141702) bm!510100))

(declare-fun m!6982960 () Bool)

(assert (=> bm!510100 m!6982960))

(declare-fun m!6982962 () Bool)

(assert (=> b!6141701 m!6982962))

(declare-fun m!6982964 () Bool)

(assert (=> b!6141703 m!6982964))

(assert (=> b!6141107 d!1924198))

(assert (=> d!1923938 d!1924128))

(declare-fun bs!1522838 () Bool)

(declare-fun d!1924200 () Bool)

(assert (= bs!1522838 (and d!1924200 d!1923942)))

(declare-fun lambda!334789 () Int)

(assert (=> bs!1522838 (= lambda!334789 lambda!334713)))

(declare-fun bs!1522839 () Bool)

(assert (= bs!1522839 (and d!1924200 d!1923940)))

(assert (=> bs!1522839 (= lambda!334789 lambda!334710)))

(declare-fun bs!1522840 () Bool)

(assert (= bs!1522840 (and d!1924200 d!1923976)))

(assert (=> bs!1522840 (= lambda!334789 lambda!334736)))

(declare-fun bs!1522841 () Bool)

(assert (= bs!1522841 (and d!1924200 d!1924154)))

(assert (=> bs!1522841 (= lambda!334789 lambda!334782)))

(declare-fun bs!1522842 () Bool)

(assert (= bs!1522842 (and d!1924200 d!1923944)))

(assert (=> bs!1522842 (= lambda!334789 lambda!334714)))

(declare-fun bs!1522843 () Bool)

(assert (= bs!1522843 (and d!1924200 d!1923952)))

(assert (=> bs!1522843 (= lambda!334789 lambda!334717)))

(declare-fun bs!1522844 () Bool)

(assert (= bs!1522844 (and d!1924200 d!1924184)))

(assert (=> bs!1522844 (= lambda!334789 lambda!334788)))

(declare-fun bs!1522845 () Bool)

(assert (= bs!1522845 (and d!1924200 d!1923954)))

(assert (=> bs!1522845 (= lambda!334789 lambda!334720)))

(declare-fun b!6141704 () Bool)

(declare-fun e!3742887 () Regex!16084)

(assert (=> b!6141704 (= e!3742887 (h!70875 (t!378030 (unfocusZipperList!1505 zl!343))))))

(declare-fun b!6141705 () Bool)

(declare-fun e!3742886 () Regex!16084)

(assert (=> b!6141705 (= e!3742886 (Union!16084 (h!70875 (t!378030 (unfocusZipperList!1505 zl!343))) (generalisedUnion!1928 (t!378030 (t!378030 (unfocusZipperList!1505 zl!343))))))))

(declare-fun e!3742885 () Bool)

(assert (=> d!1924200 e!3742885))

(declare-fun res!2544701 () Bool)

(assert (=> d!1924200 (=> (not res!2544701) (not e!3742885))))

(declare-fun lt!2333236 () Regex!16084)

(assert (=> d!1924200 (= res!2544701 (validRegex!7820 lt!2333236))))

(assert (=> d!1924200 (= lt!2333236 e!3742887)))

(declare-fun c!1104802 () Bool)

(declare-fun e!3742889 () Bool)

(assert (=> d!1924200 (= c!1104802 e!3742889)))

(declare-fun res!2544700 () Bool)

(assert (=> d!1924200 (=> (not res!2544700) (not e!3742889))))

(assert (=> d!1924200 (= res!2544700 (is-Cons!64427 (t!378030 (unfocusZipperList!1505 zl!343))))))

(assert (=> d!1924200 (forall!15205 (t!378030 (unfocusZipperList!1505 zl!343)) lambda!334789)))

(assert (=> d!1924200 (= (generalisedUnion!1928 (t!378030 (unfocusZipperList!1505 zl!343))) lt!2333236)))

(declare-fun b!6141706 () Bool)

(assert (=> b!6141706 (= e!3742886 EmptyLang!16084)))

(declare-fun b!6141707 () Bool)

(assert (=> b!6141707 (= e!3742889 (isEmpty!36378 (t!378030 (t!378030 (unfocusZipperList!1505 zl!343)))))))

(declare-fun b!6141708 () Bool)

(declare-fun e!3742890 () Bool)

(assert (=> b!6141708 (= e!3742890 (isUnion!941 lt!2333236))))

(declare-fun b!6141709 () Bool)

(declare-fun e!3742888 () Bool)

(assert (=> b!6141709 (= e!3742888 e!3742890)))

(declare-fun c!1104801 () Bool)

(assert (=> b!6141709 (= c!1104801 (isEmpty!36378 (tail!11775 (t!378030 (unfocusZipperList!1505 zl!343)))))))

(declare-fun b!6141710 () Bool)

(assert (=> b!6141710 (= e!3742885 e!3742888)))

(declare-fun c!1104803 () Bool)

(assert (=> b!6141710 (= c!1104803 (isEmpty!36378 (t!378030 (unfocusZipperList!1505 zl!343))))))

(declare-fun b!6141711 () Bool)

(assert (=> b!6141711 (= e!3742890 (= lt!2333236 (head!12690 (t!378030 (unfocusZipperList!1505 zl!343)))))))

(declare-fun b!6141712 () Bool)

(assert (=> b!6141712 (= e!3742888 (isEmptyLang!1511 lt!2333236))))

(declare-fun b!6141713 () Bool)

(assert (=> b!6141713 (= e!3742887 e!3742886)))

(declare-fun c!1104804 () Bool)

(assert (=> b!6141713 (= c!1104804 (is-Cons!64427 (t!378030 (unfocusZipperList!1505 zl!343))))))

(assert (= (and d!1924200 res!2544700) b!6141707))

(assert (= (and d!1924200 c!1104802) b!6141704))

(assert (= (and d!1924200 (not c!1104802)) b!6141713))

(assert (= (and b!6141713 c!1104804) b!6141705))

(assert (= (and b!6141713 (not c!1104804)) b!6141706))

(assert (= (and d!1924200 res!2544701) b!6141710))

(assert (= (and b!6141710 c!1104803) b!6141712))

(assert (= (and b!6141710 (not c!1104803)) b!6141709))

(assert (= (and b!6141709 c!1104801) b!6141711))

(assert (= (and b!6141709 (not c!1104801)) b!6141708))

(declare-fun m!6982966 () Bool)

(assert (=> b!6141712 m!6982966))

(declare-fun m!6982968 () Bool)

(assert (=> b!6141707 m!6982968))

(declare-fun m!6982970 () Bool)

(assert (=> b!6141708 m!6982970))

(declare-fun m!6982972 () Bool)

(assert (=> b!6141705 m!6982972))

(declare-fun m!6982974 () Bool)

(assert (=> b!6141711 m!6982974))

(declare-fun m!6982976 () Bool)

(assert (=> b!6141709 m!6982976))

(assert (=> b!6141709 m!6982976))

(declare-fun m!6982978 () Bool)

(assert (=> b!6141709 m!6982978))

(assert (=> b!6141710 m!6982368))

(declare-fun m!6982980 () Bool)

(assert (=> d!1924200 m!6982980))

(declare-fun m!6982982 () Bool)

(assert (=> d!1924200 m!6982982))

(assert (=> b!6140871 d!1924200))

(declare-fun b!6141714 () Bool)

(declare-fun e!3742894 () (Set Context!10936))

(declare-fun e!3742895 () (Set Context!10936))

(assert (=> b!6141714 (= e!3742894 e!3742895)))

(declare-fun c!1104806 () Bool)

(assert (=> b!6141714 (= c!1104806 (is-Concat!24929 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))))))))

(declare-fun b!6141715 () Bool)

(declare-fun e!3742893 () (Set Context!10936))

(declare-fun e!3742896 () (Set Context!10936))

(assert (=> b!6141715 (= e!3742893 e!3742896)))

(declare-fun c!1104807 () Bool)

(assert (=> b!6141715 (= c!1104807 (is-Union!16084 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))))))))

(declare-fun b!6141716 () Bool)

(declare-fun c!1104805 () Bool)

(declare-fun e!3742891 () Bool)

(assert (=> b!6141716 (= c!1104805 e!3742891)))

(declare-fun res!2544702 () Bool)

(assert (=> b!6141716 (=> (not res!2544702) (not e!3742891))))

(assert (=> b!6141716 (= res!2544702 (is-Concat!24929 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))))))))

(assert (=> b!6141716 (= e!3742896 e!3742894)))

(declare-fun bm!510101 () Bool)

(declare-fun call!510107 () List!64551)

(declare-fun call!510109 () List!64551)

(assert (=> bm!510101 (= call!510107 call!510109)))

(declare-fun b!6141717 () Bool)

(declare-fun e!3742892 () (Set Context!10936))

(assert (=> b!6141717 (= e!3742892 (as set.empty (Set Context!10936)))))

(declare-fun call!510110 () (Set Context!10936))

(declare-fun bm!510102 () Bool)

(assert (=> bm!510102 (= call!510110 (derivationStepZipperDown!1332 (ite c!1104807 (regOne!32681 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))))) (regOne!32680 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292)))))) (ite c!1104807 (ite c!1104630 lt!2333068 (Context!10937 call!509999)) (Context!10937 call!510109)) (h!70877 s!2326)))))

(declare-fun b!6141718 () Bool)

(declare-fun c!1104809 () Bool)

(assert (=> b!6141718 (= c!1104809 (is-Star!16084 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))))))))

(assert (=> b!6141718 (= e!3742895 e!3742892)))

(declare-fun b!6141720 () Bool)

(assert (=> b!6141720 (= e!3742893 (set.insert (ite c!1104630 lt!2333068 (Context!10937 call!509999)) (as set.empty (Set Context!10936))))))

(declare-fun bm!510103 () Bool)

(declare-fun call!510108 () (Set Context!10936))

(declare-fun call!510111 () (Set Context!10936))

(assert (=> bm!510103 (= call!510108 call!510111)))

(declare-fun bm!510104 () Bool)

(assert (=> bm!510104 (= call!510109 ($colon$colon!1961 (exprs!5968 (ite c!1104630 lt!2333068 (Context!10937 call!509999))) (ite (or c!1104805 c!1104806) (regTwo!32680 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))))) (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292)))))))))

(declare-fun b!6141721 () Bool)

(assert (=> b!6141721 (= e!3742891 (nullable!6077 (regOne!32680 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292)))))))))

(declare-fun b!6141722 () Bool)

(assert (=> b!6141722 (= e!3742896 (set.union call!510110 call!510111))))

(declare-fun b!6141723 () Bool)

(declare-fun call!510106 () (Set Context!10936))

(assert (=> b!6141723 (= e!3742892 call!510106)))

(declare-fun b!6141724 () Bool)

(assert (=> b!6141724 (= e!3742894 (set.union call!510110 call!510108))))

(declare-fun b!6141719 () Bool)

(assert (=> b!6141719 (= e!3742895 call!510106)))

(declare-fun d!1924202 () Bool)

(declare-fun c!1104808 () Bool)

(assert (=> d!1924202 (= c!1104808 (and (is-ElementMatch!16084 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))))) (= (c!1104532 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))))) (h!70877 s!2326))))))

(assert (=> d!1924202 (= (derivationStepZipperDown!1332 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292)))) (ite c!1104630 lt!2333068 (Context!10937 call!509999)) (h!70877 s!2326)) e!3742893)))

(declare-fun bm!510105 () Bool)

(assert (=> bm!510105 (= call!510106 call!510108)))

(declare-fun bm!510106 () Bool)

(assert (=> bm!510106 (= call!510111 (derivationStepZipperDown!1332 (ite c!1104807 (regTwo!32681 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))))) (ite c!1104805 (regTwo!32680 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))))) (ite c!1104806 (regOne!32680 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))))) (reg!16413 (ite c!1104630 (regOne!32681 (regTwo!32681 (regOne!32680 r!7292))) (regOne!32680 (regTwo!32681 (regOne!32680 r!7292)))))))) (ite (or c!1104807 c!1104805) (ite c!1104630 lt!2333068 (Context!10937 call!509999)) (Context!10937 call!510107)) (h!70877 s!2326)))))

(assert (= (and d!1924202 c!1104808) b!6141720))

(assert (= (and d!1924202 (not c!1104808)) b!6141715))

(assert (= (and b!6141715 c!1104807) b!6141722))

(assert (= (and b!6141715 (not c!1104807)) b!6141716))

(assert (= (and b!6141716 res!2544702) b!6141721))

(assert (= (and b!6141716 c!1104805) b!6141724))

(assert (= (and b!6141716 (not c!1104805)) b!6141714))

(assert (= (and b!6141714 c!1104806) b!6141719))

(assert (= (and b!6141714 (not c!1104806)) b!6141718))

(assert (= (and b!6141718 c!1104809) b!6141723))

(assert (= (and b!6141718 (not c!1104809)) b!6141717))

(assert (= (or b!6141719 b!6141723) bm!510101))

(assert (= (or b!6141719 b!6141723) bm!510105))

(assert (= (or b!6141724 bm!510101) bm!510104))

(assert (= (or b!6141724 bm!510105) bm!510103))

(assert (= (or b!6141722 bm!510103) bm!510106))

(assert (= (or b!6141722 b!6141724) bm!510102))

(declare-fun m!6982984 () Bool)

(assert (=> b!6141721 m!6982984))

(declare-fun m!6982986 () Bool)

(assert (=> b!6141720 m!6982986))

(declare-fun m!6982988 () Bool)

(assert (=> bm!510106 m!6982988))

(declare-fun m!6982990 () Bool)

(assert (=> bm!510104 m!6982990))

(declare-fun m!6982992 () Bool)

(assert (=> bm!510102 m!6982992))

(assert (=> bm!509992 d!1924202))

(declare-fun bs!1522846 () Bool)

(declare-fun d!1924204 () Bool)

(assert (= bs!1522846 (and d!1924204 d!1923942)))

(declare-fun lambda!334790 () Int)

(assert (=> bs!1522846 (= lambda!334790 lambda!334713)))

(declare-fun bs!1522847 () Bool)

(assert (= bs!1522847 (and d!1924204 d!1923940)))

(assert (=> bs!1522847 (= lambda!334790 lambda!334710)))

(declare-fun bs!1522848 () Bool)

(assert (= bs!1522848 (and d!1924204 d!1923976)))

(assert (=> bs!1522848 (= lambda!334790 lambda!334736)))

(declare-fun bs!1522849 () Bool)

(assert (= bs!1522849 (and d!1924204 d!1924154)))

(assert (=> bs!1522849 (= lambda!334790 lambda!334782)))

(declare-fun bs!1522850 () Bool)

(assert (= bs!1522850 (and d!1924204 d!1923944)))

(assert (=> bs!1522850 (= lambda!334790 lambda!334714)))

(declare-fun bs!1522851 () Bool)

(assert (= bs!1522851 (and d!1924204 d!1923952)))

(assert (=> bs!1522851 (= lambda!334790 lambda!334717)))

(declare-fun bs!1522852 () Bool)

(assert (= bs!1522852 (and d!1924204 d!1924184)))

(assert (=> bs!1522852 (= lambda!334790 lambda!334788)))

(declare-fun bs!1522853 () Bool)

(assert (= bs!1522853 (and d!1924204 d!1924200)))

(assert (=> bs!1522853 (= lambda!334790 lambda!334789)))

(declare-fun bs!1522854 () Bool)

(assert (= bs!1522854 (and d!1924204 d!1923954)))

(assert (=> bs!1522854 (= lambda!334790 lambda!334720)))

(assert (=> d!1924204 (= (inv!83458 setElem!41543) (forall!15205 (exprs!5968 setElem!41543) lambda!334790))))

(declare-fun bs!1522855 () Bool)

(assert (= bs!1522855 d!1924204))

(declare-fun m!6982994 () Bool)

(assert (=> bs!1522855 m!6982994))

(assert (=> setNonEmpty!41543 d!1924204))

(declare-fun d!1924206 () Bool)

(assert (=> d!1924206 true))

(assert (=> d!1924206 true))

(declare-fun res!2544705 () Bool)

(assert (=> d!1924206 (= (choose!45635 lambda!334692) res!2544705)))

(assert (=> d!1923958 d!1924206))

(declare-fun d!1924208 () Bool)

(declare-fun c!1104810 () Bool)

(assert (=> d!1924208 (= c!1104810 (isEmpty!36382 (tail!11774 (t!378032 s!2326))))))

(declare-fun e!3742897 () Bool)

(assert (=> d!1924208 (= (matchZipper!2096 (derivationStepZipper!2057 lt!2333063 (head!12689 (t!378032 s!2326))) (tail!11774 (t!378032 s!2326))) e!3742897)))

(declare-fun b!6141725 () Bool)

(assert (=> b!6141725 (= e!3742897 (nullableZipper!1865 (derivationStepZipper!2057 lt!2333063 (head!12689 (t!378032 s!2326)))))))

(declare-fun b!6141726 () Bool)

(assert (=> b!6141726 (= e!3742897 (matchZipper!2096 (derivationStepZipper!2057 (derivationStepZipper!2057 lt!2333063 (head!12689 (t!378032 s!2326))) (head!12689 (tail!11774 (t!378032 s!2326)))) (tail!11774 (tail!11774 (t!378032 s!2326)))))))

(assert (= (and d!1924208 c!1104810) b!6141725))

(assert (= (and d!1924208 (not c!1104810)) b!6141726))

(assert (=> d!1924208 m!6982300))

(assert (=> d!1924208 m!6982900))

(assert (=> b!6141725 m!6982456))

(declare-fun m!6982996 () Bool)

(assert (=> b!6141725 m!6982996))

(assert (=> b!6141726 m!6982300))

(assert (=> b!6141726 m!6982904))

(assert (=> b!6141726 m!6982456))

(assert (=> b!6141726 m!6982904))

(declare-fun m!6982998 () Bool)

(assert (=> b!6141726 m!6982998))

(assert (=> b!6141726 m!6982300))

(assert (=> b!6141726 m!6982908))

(assert (=> b!6141726 m!6982998))

(assert (=> b!6141726 m!6982908))

(declare-fun m!6983000 () Bool)

(assert (=> b!6141726 m!6983000))

(assert (=> b!6141038 d!1924208))

(declare-fun bs!1522856 () Bool)

(declare-fun d!1924210 () Bool)

(assert (= bs!1522856 (and d!1924210 d!1924164)))

(declare-fun lambda!334791 () Int)

(assert (=> bs!1522856 (= lambda!334791 lambda!334783)))

(declare-fun bs!1522857 () Bool)

(assert (= bs!1522857 (and d!1924210 d!1923986)))

(assert (=> bs!1522857 (= (= (head!12689 (t!378032 s!2326)) (h!70877 s!2326)) (= lambda!334791 lambda!334739))))

(declare-fun bs!1522858 () Bool)

(assert (= bs!1522858 (and d!1924210 d!1924148)))

(assert (=> bs!1522858 (= (= (head!12689 (t!378032 s!2326)) (head!12689 s!2326)) (= lambda!334791 lambda!334781))))

(declare-fun bs!1522859 () Bool)

(assert (= bs!1522859 (and d!1924210 d!1924174)))

(assert (=> bs!1522859 (= lambda!334791 lambda!334784)))

(declare-fun bs!1522860 () Bool)

(assert (= bs!1522860 (and d!1924210 b!6140677)))

(assert (=> bs!1522860 (= (= (head!12689 (t!378032 s!2326)) (h!70877 s!2326)) (= lambda!334791 lambda!334694))))

(assert (=> d!1924210 true))

(assert (=> d!1924210 (= (derivationStepZipper!2057 lt!2333063 (head!12689 (t!378032 s!2326))) (flatMap!1589 lt!2333063 lambda!334791))))

(declare-fun bs!1522861 () Bool)

(assert (= bs!1522861 d!1924210))

(declare-fun m!6983002 () Bool)

(assert (=> bs!1522861 m!6983002))

(assert (=> b!6141038 d!1924210))

(assert (=> b!6141038 d!1924166))

(assert (=> b!6141038 d!1924168))

(assert (=> d!1923956 d!1924114))

(declare-fun b!6141727 () Bool)

(declare-fun res!2544706 () Bool)

(declare-fun e!3742898 () Bool)

(assert (=> b!6141727 (=> (not res!2544706) (not e!3742898))))

(declare-fun call!510112 () Bool)

(assert (=> b!6141727 (= res!2544706 (not call!510112))))

(declare-fun b!6141728 () Bool)

(declare-fun e!3742902 () Bool)

(assert (=> b!6141728 (= e!3742902 (nullable!6077 (regOne!32680 r!7292)))))

(declare-fun b!6141729 () Bool)

(declare-fun e!3742903 () Bool)

(declare-fun e!3742904 () Bool)

(assert (=> b!6141729 (= e!3742903 e!3742904)))

(declare-fun res!2544708 () Bool)

(assert (=> b!6141729 (=> res!2544708 e!3742904)))

(assert (=> b!6141729 (= res!2544708 call!510112)))

(declare-fun b!6141730 () Bool)

(declare-fun e!3742901 () Bool)

(declare-fun lt!2333237 () Bool)

(assert (=> b!6141730 (= e!3742901 (not lt!2333237))))

(declare-fun d!1924212 () Bool)

(declare-fun e!3742900 () Bool)

(assert (=> d!1924212 e!3742900))

(declare-fun c!1104813 () Bool)

(assert (=> d!1924212 (= c!1104813 (is-EmptyExpr!16084 (regOne!32680 r!7292)))))

(assert (=> d!1924212 (= lt!2333237 e!3742902)))

(declare-fun c!1104812 () Bool)

(assert (=> d!1924212 (= c!1104812 (isEmpty!36382 Nil!64429))))

(assert (=> d!1924212 (validRegex!7820 (regOne!32680 r!7292))))

(assert (=> d!1924212 (= (matchR!8267 (regOne!32680 r!7292) Nil!64429) lt!2333237)))

(declare-fun bm!510107 () Bool)

(assert (=> bm!510107 (= call!510112 (isEmpty!36382 Nil!64429))))

(declare-fun b!6141731 () Bool)

(declare-fun e!3742899 () Bool)

(assert (=> b!6141731 (= e!3742899 e!3742903)))

(declare-fun res!2544709 () Bool)

(assert (=> b!6141731 (=> (not res!2544709) (not e!3742903))))

(assert (=> b!6141731 (= res!2544709 (not lt!2333237))))

(declare-fun b!6141732 () Bool)

(declare-fun res!2544713 () Bool)

(assert (=> b!6141732 (=> (not res!2544713) (not e!3742898))))

(assert (=> b!6141732 (= res!2544713 (isEmpty!36382 (tail!11774 Nil!64429)))))

(declare-fun b!6141733 () Bool)

(assert (=> b!6141733 (= e!3742898 (= (head!12689 Nil!64429) (c!1104532 (regOne!32680 r!7292))))))

(declare-fun b!6141734 () Bool)

(assert (=> b!6141734 (= e!3742900 e!3742901)))

(declare-fun c!1104811 () Bool)

(assert (=> b!6141734 (= c!1104811 (is-EmptyLang!16084 (regOne!32680 r!7292)))))

(declare-fun b!6141735 () Bool)

(declare-fun res!2544711 () Bool)

(assert (=> b!6141735 (=> res!2544711 e!3742904)))

(assert (=> b!6141735 (= res!2544711 (not (isEmpty!36382 (tail!11774 Nil!64429))))))

(declare-fun b!6141736 () Bool)

(declare-fun res!2544712 () Bool)

(assert (=> b!6141736 (=> res!2544712 e!3742899)))

(assert (=> b!6141736 (= res!2544712 (not (is-ElementMatch!16084 (regOne!32680 r!7292))))))

(assert (=> b!6141736 (= e!3742901 e!3742899)))

(declare-fun b!6141737 () Bool)

(assert (=> b!6141737 (= e!3742904 (not (= (head!12689 Nil!64429) (c!1104532 (regOne!32680 r!7292)))))))

(declare-fun b!6141738 () Bool)

(assert (=> b!6141738 (= e!3742900 (= lt!2333237 call!510112))))

(declare-fun b!6141739 () Bool)

(declare-fun res!2544707 () Bool)

(assert (=> b!6141739 (=> res!2544707 e!3742899)))

(assert (=> b!6141739 (= res!2544707 e!3742898)))

(declare-fun res!2544710 () Bool)

(assert (=> b!6141739 (=> (not res!2544710) (not e!3742898))))

(assert (=> b!6141739 (= res!2544710 lt!2333237)))

(declare-fun b!6141740 () Bool)

(assert (=> b!6141740 (= e!3742902 (matchR!8267 (derivativeStep!4804 (regOne!32680 r!7292) (head!12689 Nil!64429)) (tail!11774 Nil!64429)))))

(assert (= (and d!1924212 c!1104812) b!6141728))

(assert (= (and d!1924212 (not c!1104812)) b!6141740))

(assert (= (and d!1924212 c!1104813) b!6141738))

(assert (= (and d!1924212 (not c!1104813)) b!6141734))

(assert (= (and b!6141734 c!1104811) b!6141730))

(assert (= (and b!6141734 (not c!1104811)) b!6141736))

(assert (= (and b!6141736 (not res!2544712)) b!6141739))

(assert (= (and b!6141739 res!2544710) b!6141727))

(assert (= (and b!6141727 res!2544706) b!6141732))

(assert (= (and b!6141732 res!2544713) b!6141733))

(assert (= (and b!6141739 (not res!2544707)) b!6141731))

(assert (= (and b!6141731 res!2544709) b!6141729))

(assert (= (and b!6141729 (not res!2544708)) b!6141735))

(assert (= (and b!6141735 (not res!2544711)) b!6141737))

(assert (= (or b!6141738 b!6141727 b!6141729) bm!510107))

(declare-fun m!6983004 () Bool)

(assert (=> b!6141733 m!6983004))

(assert (=> b!6141737 m!6983004))

(declare-fun m!6983006 () Bool)

(assert (=> b!6141728 m!6983006))

(declare-fun m!6983008 () Bool)

(assert (=> bm!510107 m!6983008))

(declare-fun m!6983010 () Bool)

(assert (=> b!6141735 m!6983010))

(assert (=> b!6141735 m!6983010))

(declare-fun m!6983012 () Bool)

(assert (=> b!6141735 m!6983012))

(assert (=> b!6141732 m!6983010))

(assert (=> b!6141732 m!6983010))

(assert (=> b!6141732 m!6983012))

(assert (=> b!6141740 m!6983004))

(assert (=> b!6141740 m!6983004))

(declare-fun m!6983014 () Bool)

(assert (=> b!6141740 m!6983014))

(assert (=> b!6141740 m!6983010))

(assert (=> b!6141740 m!6983014))

(assert (=> b!6141740 m!6983010))

(declare-fun m!6983016 () Bool)

(assert (=> b!6141740 m!6983016))

(assert (=> d!1924212 m!6983008))

(assert (=> d!1924212 m!6982398))

(assert (=> d!1923956 d!1924212))

(assert (=> d!1923956 d!1924118))

(declare-fun d!1924214 () Bool)

(assert (=> d!1924214 (= (isEmptyExpr!1501 lt!2333153) (is-EmptyExpr!16084 lt!2333153))))

(assert (=> b!6140838 d!1924214))

(declare-fun d!1924216 () Bool)

(declare-fun c!1104814 () Bool)

(assert (=> d!1924216 (= c!1104814 (isEmpty!36382 (tail!11774 (t!378032 s!2326))))))

(declare-fun e!3742905 () Bool)

(assert (=> d!1924216 (= (matchZipper!2096 (derivationStepZipper!2057 lt!2333072 (head!12689 (t!378032 s!2326))) (tail!11774 (t!378032 s!2326))) e!3742905)))

(declare-fun b!6141741 () Bool)

(assert (=> b!6141741 (= e!3742905 (nullableZipper!1865 (derivationStepZipper!2057 lt!2333072 (head!12689 (t!378032 s!2326)))))))

(declare-fun b!6141742 () Bool)

(assert (=> b!6141742 (= e!3742905 (matchZipper!2096 (derivationStepZipper!2057 (derivationStepZipper!2057 lt!2333072 (head!12689 (t!378032 s!2326))) (head!12689 (tail!11774 (t!378032 s!2326)))) (tail!11774 (tail!11774 (t!378032 s!2326)))))))

(assert (= (and d!1924216 c!1104814) b!6141741))

(assert (= (and d!1924216 (not c!1104814)) b!6141742))

(assert (=> d!1924216 m!6982300))

(assert (=> d!1924216 m!6982900))

(assert (=> b!6141741 m!6982530))

(declare-fun m!6983018 () Bool)

(assert (=> b!6141741 m!6983018))

(assert (=> b!6141742 m!6982300))

(assert (=> b!6141742 m!6982904))

(assert (=> b!6141742 m!6982530))

(assert (=> b!6141742 m!6982904))

(declare-fun m!6983020 () Bool)

(assert (=> b!6141742 m!6983020))

(assert (=> b!6141742 m!6982300))

(assert (=> b!6141742 m!6982908))

(assert (=> b!6141742 m!6983020))

(assert (=> b!6141742 m!6982908))

(declare-fun m!6983022 () Bool)

(assert (=> b!6141742 m!6983022))

(assert (=> b!6141127 d!1924216))

(declare-fun bs!1522862 () Bool)

(declare-fun d!1924218 () Bool)

(assert (= bs!1522862 (and d!1924218 d!1924164)))

(declare-fun lambda!334792 () Int)

(assert (=> bs!1522862 (= lambda!334792 lambda!334783)))

(declare-fun bs!1522863 () Bool)

(assert (= bs!1522863 (and d!1924218 d!1924210)))

(assert (=> bs!1522863 (= lambda!334792 lambda!334791)))

(declare-fun bs!1522864 () Bool)

(assert (= bs!1522864 (and d!1924218 d!1923986)))

(assert (=> bs!1522864 (= (= (head!12689 (t!378032 s!2326)) (h!70877 s!2326)) (= lambda!334792 lambda!334739))))

(declare-fun bs!1522865 () Bool)

(assert (= bs!1522865 (and d!1924218 d!1924148)))

(assert (=> bs!1522865 (= (= (head!12689 (t!378032 s!2326)) (head!12689 s!2326)) (= lambda!334792 lambda!334781))))

(declare-fun bs!1522866 () Bool)

(assert (= bs!1522866 (and d!1924218 d!1924174)))

(assert (=> bs!1522866 (= lambda!334792 lambda!334784)))

(declare-fun bs!1522867 () Bool)

(assert (= bs!1522867 (and d!1924218 b!6140677)))

(assert (=> bs!1522867 (= (= (head!12689 (t!378032 s!2326)) (h!70877 s!2326)) (= lambda!334792 lambda!334694))))

(assert (=> d!1924218 true))

(assert (=> d!1924218 (= (derivationStepZipper!2057 lt!2333072 (head!12689 (t!378032 s!2326))) (flatMap!1589 lt!2333072 lambda!334792))))

(declare-fun bs!1522868 () Bool)

(assert (= bs!1522868 d!1924218))

(declare-fun m!6983024 () Bool)

(assert (=> bs!1522868 m!6983024))

(assert (=> b!6141127 d!1924218))

(assert (=> b!6141127 d!1924166))

(assert (=> b!6141127 d!1924168))

(declare-fun b!6141743 () Bool)

(declare-fun res!2544714 () Bool)

(declare-fun e!3742906 () Bool)

(assert (=> b!6141743 (=> (not res!2544714) (not e!3742906))))

(declare-fun call!510113 () Bool)

(assert (=> b!6141743 (= res!2544714 (not call!510113))))

(declare-fun b!6141744 () Bool)

(declare-fun e!3742910 () Bool)

(assert (=> b!6141744 (= e!3742910 (nullable!6077 (derivativeStep!4804 r!7292 (head!12689 s!2326))))))

(declare-fun b!6141745 () Bool)

(declare-fun e!3742911 () Bool)

(declare-fun e!3742912 () Bool)

(assert (=> b!6141745 (= e!3742911 e!3742912)))

(declare-fun res!2544716 () Bool)

(assert (=> b!6141745 (=> res!2544716 e!3742912)))

(assert (=> b!6141745 (= res!2544716 call!510113)))

(declare-fun b!6141746 () Bool)

(declare-fun e!3742909 () Bool)

(declare-fun lt!2333238 () Bool)

(assert (=> b!6141746 (= e!3742909 (not lt!2333238))))

(declare-fun d!1924220 () Bool)

(declare-fun e!3742908 () Bool)

(assert (=> d!1924220 e!3742908))

(declare-fun c!1104817 () Bool)

(assert (=> d!1924220 (= c!1104817 (is-EmptyExpr!16084 (derivativeStep!4804 r!7292 (head!12689 s!2326))))))

(assert (=> d!1924220 (= lt!2333238 e!3742910)))

(declare-fun c!1104816 () Bool)

(assert (=> d!1924220 (= c!1104816 (isEmpty!36382 (tail!11774 s!2326)))))

(assert (=> d!1924220 (validRegex!7820 (derivativeStep!4804 r!7292 (head!12689 s!2326)))))

(assert (=> d!1924220 (= (matchR!8267 (derivativeStep!4804 r!7292 (head!12689 s!2326)) (tail!11774 s!2326)) lt!2333238)))

(declare-fun bm!510108 () Bool)

(assert (=> bm!510108 (= call!510113 (isEmpty!36382 (tail!11774 s!2326)))))

(declare-fun b!6141747 () Bool)

(declare-fun e!3742907 () Bool)

(assert (=> b!6141747 (= e!3742907 e!3742911)))

(declare-fun res!2544717 () Bool)

(assert (=> b!6141747 (=> (not res!2544717) (not e!3742911))))

(assert (=> b!6141747 (= res!2544717 (not lt!2333238))))

(declare-fun b!6141748 () Bool)

(declare-fun res!2544721 () Bool)

(assert (=> b!6141748 (=> (not res!2544721) (not e!3742906))))

(assert (=> b!6141748 (= res!2544721 (isEmpty!36382 (tail!11774 (tail!11774 s!2326))))))

(declare-fun b!6141749 () Bool)

(assert (=> b!6141749 (= e!3742906 (= (head!12689 (tail!11774 s!2326)) (c!1104532 (derivativeStep!4804 r!7292 (head!12689 s!2326)))))))

(declare-fun b!6141750 () Bool)

(assert (=> b!6141750 (= e!3742908 e!3742909)))

(declare-fun c!1104815 () Bool)

(assert (=> b!6141750 (= c!1104815 (is-EmptyLang!16084 (derivativeStep!4804 r!7292 (head!12689 s!2326))))))

(declare-fun b!6141751 () Bool)

(declare-fun res!2544719 () Bool)

(assert (=> b!6141751 (=> res!2544719 e!3742912)))

(assert (=> b!6141751 (= res!2544719 (not (isEmpty!36382 (tail!11774 (tail!11774 s!2326)))))))

(declare-fun b!6141752 () Bool)

(declare-fun res!2544720 () Bool)

(assert (=> b!6141752 (=> res!2544720 e!3742907)))

(assert (=> b!6141752 (= res!2544720 (not (is-ElementMatch!16084 (derivativeStep!4804 r!7292 (head!12689 s!2326)))))))

(assert (=> b!6141752 (= e!3742909 e!3742907)))

(declare-fun b!6141753 () Bool)

(assert (=> b!6141753 (= e!3742912 (not (= (head!12689 (tail!11774 s!2326)) (c!1104532 (derivativeStep!4804 r!7292 (head!12689 s!2326))))))))

(declare-fun b!6141754 () Bool)

(assert (=> b!6141754 (= e!3742908 (= lt!2333238 call!510113))))

(declare-fun b!6141755 () Bool)

(declare-fun res!2544715 () Bool)

(assert (=> b!6141755 (=> res!2544715 e!3742907)))

(assert (=> b!6141755 (= res!2544715 e!3742906)))

(declare-fun res!2544718 () Bool)

(assert (=> b!6141755 (=> (not res!2544718) (not e!3742906))))

(assert (=> b!6141755 (= res!2544718 lt!2333238)))

(declare-fun b!6141756 () Bool)

(assert (=> b!6141756 (= e!3742910 (matchR!8267 (derivativeStep!4804 (derivativeStep!4804 r!7292 (head!12689 s!2326)) (head!12689 (tail!11774 s!2326))) (tail!11774 (tail!11774 s!2326))))))

(assert (= (and d!1924220 c!1104816) b!6141744))

(assert (= (and d!1924220 (not c!1104816)) b!6141756))

(assert (= (and d!1924220 c!1104817) b!6141754))

(assert (= (and d!1924220 (not c!1104817)) b!6141750))

(assert (= (and b!6141750 c!1104815) b!6141746))

(assert (= (and b!6141750 (not c!1104815)) b!6141752))

(assert (= (and b!6141752 (not res!2544720)) b!6141755))

(assert (= (and b!6141755 res!2544718) b!6141743))

(assert (= (and b!6141743 res!2544714) b!6141748))

(assert (= (and b!6141748 res!2544721) b!6141749))

(assert (= (and b!6141755 (not res!2544715)) b!6141747))

(assert (= (and b!6141747 res!2544717) b!6141745))

(assert (= (and b!6141745 (not res!2544716)) b!6141751))

(assert (= (and b!6141751 (not res!2544719)) b!6141753))

(assert (= (or b!6141754 b!6141743 b!6141745) bm!510108))

(assert (=> b!6141749 m!6982350))

(assert (=> b!6141749 m!6982860))

(assert (=> b!6141753 m!6982350))

(assert (=> b!6141753 m!6982860))

(assert (=> b!6141744 m!6982440))

(declare-fun m!6983026 () Bool)

(assert (=> b!6141744 m!6983026))

(assert (=> bm!510108 m!6982350))

(assert (=> bm!510108 m!6982438))

(assert (=> b!6141751 m!6982350))

(assert (=> b!6141751 m!6982864))

(assert (=> b!6141751 m!6982864))

(declare-fun m!6983028 () Bool)

(assert (=> b!6141751 m!6983028))

(assert (=> b!6141748 m!6982350))

(assert (=> b!6141748 m!6982864))

(assert (=> b!6141748 m!6982864))

(assert (=> b!6141748 m!6983028))

(assert (=> b!6141756 m!6982350))

(assert (=> b!6141756 m!6982860))

(assert (=> b!6141756 m!6982440))

(assert (=> b!6141756 m!6982860))

(declare-fun m!6983030 () Bool)

(assert (=> b!6141756 m!6983030))

(assert (=> b!6141756 m!6982350))

(assert (=> b!6141756 m!6982864))

(assert (=> b!6141756 m!6983030))

(assert (=> b!6141756 m!6982864))

(declare-fun m!6983032 () Bool)

(assert (=> b!6141756 m!6983032))

(assert (=> d!1924220 m!6982350))

(assert (=> d!1924220 m!6982438))

(assert (=> d!1924220 m!6982440))

(declare-fun m!6983034 () Bool)

(assert (=> d!1924220 m!6983034))

(assert (=> b!6141009 d!1924220))

(declare-fun c!1104831 () Bool)

(declare-fun bm!510117 () Bool)

(declare-fun call!510122 () Regex!16084)

(declare-fun c!1104830 () Bool)

(assert (=> bm!510117 (= call!510122 (derivativeStep!4804 (ite c!1104830 (regTwo!32681 r!7292) (ite c!1104831 (reg!16413 r!7292) (regOne!32680 r!7292))) (head!12689 s!2326)))))

(declare-fun b!6141777 () Bool)

(declare-fun c!1104828 () Bool)

(assert (=> b!6141777 (= c!1104828 (nullable!6077 (regOne!32680 r!7292)))))

(declare-fun e!3742925 () Regex!16084)

(declare-fun e!3742926 () Regex!16084)

(assert (=> b!6141777 (= e!3742925 e!3742926)))

(declare-fun b!6141779 () Bool)

(declare-fun call!510124 () Regex!16084)

(assert (=> b!6141779 (= e!3742925 (Concat!24929 call!510124 r!7292))))

(declare-fun b!6141780 () Bool)

(declare-fun call!510125 () Regex!16084)

(assert (=> b!6141780 (= e!3742926 (Union!16084 (Concat!24929 call!510125 (regTwo!32680 r!7292)) EmptyLang!16084))))

(declare-fun b!6141781 () Bool)

(declare-fun e!3742927 () Regex!16084)

(assert (=> b!6141781 (= e!3742927 (ite (= (head!12689 s!2326) (c!1104532 r!7292)) EmptyExpr!16084 EmptyLang!16084))))

(declare-fun bm!510118 () Bool)

(declare-fun call!510123 () Regex!16084)

(assert (=> bm!510118 (= call!510125 call!510123)))

(declare-fun b!6141782 () Bool)

(declare-fun e!3742923 () Regex!16084)

(assert (=> b!6141782 (= e!3742923 (Union!16084 call!510123 call!510122))))

(declare-fun b!6141783 () Bool)

(declare-fun e!3742924 () Regex!16084)

(assert (=> b!6141783 (= e!3742924 EmptyLang!16084)))

(declare-fun bm!510119 () Bool)

(assert (=> bm!510119 (= call!510124 call!510122)))

(declare-fun b!6141784 () Bool)

(assert (=> b!6141784 (= e!3742924 e!3742927)))

(declare-fun c!1104829 () Bool)

(assert (=> b!6141784 (= c!1104829 (is-ElementMatch!16084 r!7292))))

(declare-fun b!6141785 () Bool)

(assert (=> b!6141785 (= e!3742926 (Union!16084 (Concat!24929 call!510124 (regTwo!32680 r!7292)) call!510125))))

(declare-fun d!1924222 () Bool)

(declare-fun lt!2333241 () Regex!16084)

(assert (=> d!1924222 (validRegex!7820 lt!2333241)))

(assert (=> d!1924222 (= lt!2333241 e!3742924)))

(declare-fun c!1104832 () Bool)

(assert (=> d!1924222 (= c!1104832 (or (is-EmptyExpr!16084 r!7292) (is-EmptyLang!16084 r!7292)))))

(assert (=> d!1924222 (validRegex!7820 r!7292)))

(assert (=> d!1924222 (= (derivativeStep!4804 r!7292 (head!12689 s!2326)) lt!2333241)))

(declare-fun b!6141778 () Bool)

(assert (=> b!6141778 (= e!3742923 e!3742925)))

(assert (=> b!6141778 (= c!1104831 (is-Star!16084 r!7292))))

(declare-fun bm!510120 () Bool)

(assert (=> bm!510120 (= call!510123 (derivativeStep!4804 (ite c!1104830 (regOne!32681 r!7292) (ite c!1104828 (regTwo!32680 r!7292) (regOne!32680 r!7292))) (head!12689 s!2326)))))

(declare-fun b!6141786 () Bool)

(assert (=> b!6141786 (= c!1104830 (is-Union!16084 r!7292))))

(assert (=> b!6141786 (= e!3742927 e!3742923)))

(assert (= (and d!1924222 c!1104832) b!6141783))

(assert (= (and d!1924222 (not c!1104832)) b!6141784))

(assert (= (and b!6141784 c!1104829) b!6141781))

(assert (= (and b!6141784 (not c!1104829)) b!6141786))

(assert (= (and b!6141786 c!1104830) b!6141782))

(assert (= (and b!6141786 (not c!1104830)) b!6141778))

(assert (= (and b!6141778 c!1104831) b!6141779))

(assert (= (and b!6141778 (not c!1104831)) b!6141777))

(assert (= (and b!6141777 c!1104828) b!6141785))

(assert (= (and b!6141777 (not c!1104828)) b!6141780))

(assert (= (or b!6141785 b!6141780) bm!510118))

(assert (= (or b!6141779 b!6141785) bm!510119))

(assert (= (or b!6141782 bm!510119) bm!510117))

(assert (= (or b!6141782 bm!510118) bm!510120))

(assert (=> bm!510117 m!6982346))

(declare-fun m!6983036 () Bool)

(assert (=> bm!510117 m!6983036))

(assert (=> b!6141777 m!6983006))

(declare-fun m!6983038 () Bool)

(assert (=> d!1924222 m!6983038))

(assert (=> d!1924222 m!6982150))

(assert (=> bm!510120 m!6982346))

(declare-fun m!6983040 () Bool)

(assert (=> bm!510120 m!6983040))

(assert (=> b!6141009 d!1924222))

(assert (=> b!6141009 d!1924150))

(assert (=> b!6141009 d!1924152))

(declare-fun d!1924224 () Bool)

(assert (=> d!1924224 (= (isEmpty!36382 s!2326) (is-Nil!64429 s!2326))))

(assert (=> bm!509963 d!1924224))

(declare-fun b!6141798 () Bool)

(declare-fun e!3742932 () Bool)

(declare-fun lt!2333244 () List!64553)

(assert (=> b!6141798 (= e!3742932 (or (not (= (t!378032 s!2326) Nil!64429)) (= lt!2333244 (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429)))))))

(declare-fun b!6141796 () Bool)

(declare-fun e!3742933 () List!64553)

(assert (=> b!6141796 (= e!3742933 (Cons!64429 (h!70877 (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429))) (++!14170 (t!378032 (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429))) (t!378032 s!2326))))))

(declare-fun b!6141797 () Bool)

(declare-fun res!2544726 () Bool)

(assert (=> b!6141797 (=> (not res!2544726) (not e!3742932))))

(declare-fun size!40227 (List!64553) Int)

(assert (=> b!6141797 (= res!2544726 (= (size!40227 lt!2333244) (+ (size!40227 (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429))) (size!40227 (t!378032 s!2326)))))))

(declare-fun b!6141795 () Bool)

(assert (=> b!6141795 (= e!3742933 (t!378032 s!2326))))

(declare-fun d!1924226 () Bool)

(assert (=> d!1924226 e!3742932))

(declare-fun res!2544727 () Bool)

(assert (=> d!1924226 (=> (not res!2544727) (not e!3742932))))

(declare-fun content!11994 (List!64553) (Set C!32438))

(assert (=> d!1924226 (= res!2544727 (= (content!11994 lt!2333244) (set.union (content!11994 (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429))) (content!11994 (t!378032 s!2326)))))))

(assert (=> d!1924226 (= lt!2333244 e!3742933)))

(declare-fun c!1104835 () Bool)

(assert (=> d!1924226 (= c!1104835 (is-Nil!64429 (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429))))))

(assert (=> d!1924226 (= (++!14170 (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429)) (t!378032 s!2326)) lt!2333244)))

(assert (= (and d!1924226 c!1104835) b!6141795))

(assert (= (and d!1924226 (not c!1104835)) b!6141796))

(assert (= (and d!1924226 res!2544727) b!6141797))

(assert (= (and b!6141797 res!2544726) b!6141798))

(declare-fun m!6983042 () Bool)

(assert (=> b!6141796 m!6983042))

(declare-fun m!6983044 () Bool)

(assert (=> b!6141797 m!6983044))

(assert (=> b!6141797 m!6982404))

(declare-fun m!6983046 () Bool)

(assert (=> b!6141797 m!6983046))

(declare-fun m!6983048 () Bool)

(assert (=> b!6141797 m!6983048))

(declare-fun m!6983050 () Bool)

(assert (=> d!1924226 m!6983050))

(assert (=> d!1924226 m!6982404))

(declare-fun m!6983052 () Bool)

(assert (=> d!1924226 m!6983052))

(declare-fun m!6983054 () Bool)

(assert (=> d!1924226 m!6983054))

(assert (=> b!6140912 d!1924226))

(declare-fun b!6141802 () Bool)

(declare-fun e!3742934 () Bool)

(declare-fun lt!2333245 () List!64553)

(assert (=> b!6141802 (= e!3742934 (or (not (= (Cons!64429 (h!70877 s!2326) Nil!64429) Nil!64429)) (= lt!2333245 Nil!64429)))))

(declare-fun b!6141800 () Bool)

(declare-fun e!3742935 () List!64553)

(assert (=> b!6141800 (= e!3742935 (Cons!64429 (h!70877 Nil!64429) (++!14170 (t!378032 Nil!64429) (Cons!64429 (h!70877 s!2326) Nil!64429))))))

(declare-fun b!6141801 () Bool)

(declare-fun res!2544728 () Bool)

(assert (=> b!6141801 (=> (not res!2544728) (not e!3742934))))

(assert (=> b!6141801 (= res!2544728 (= (size!40227 lt!2333245) (+ (size!40227 Nil!64429) (size!40227 (Cons!64429 (h!70877 s!2326) Nil!64429)))))))

(declare-fun b!6141799 () Bool)

(assert (=> b!6141799 (= e!3742935 (Cons!64429 (h!70877 s!2326) Nil!64429))))

(declare-fun d!1924228 () Bool)

(assert (=> d!1924228 e!3742934))

(declare-fun res!2544729 () Bool)

(assert (=> d!1924228 (=> (not res!2544729) (not e!3742934))))

(assert (=> d!1924228 (= res!2544729 (= (content!11994 lt!2333245) (set.union (content!11994 Nil!64429) (content!11994 (Cons!64429 (h!70877 s!2326) Nil!64429)))))))

(assert (=> d!1924228 (= lt!2333245 e!3742935)))

(declare-fun c!1104836 () Bool)

(assert (=> d!1924228 (= c!1104836 (is-Nil!64429 Nil!64429))))

(assert (=> d!1924228 (= (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429)) lt!2333245)))

(assert (= (and d!1924228 c!1104836) b!6141799))

(assert (= (and d!1924228 (not c!1104836)) b!6141800))

(assert (= (and d!1924228 res!2544729) b!6141801))

(assert (= (and b!6141801 res!2544728) b!6141802))

(declare-fun m!6983056 () Bool)

(assert (=> b!6141800 m!6983056))

(declare-fun m!6983058 () Bool)

(assert (=> b!6141801 m!6983058))

(declare-fun m!6983060 () Bool)

(assert (=> b!6141801 m!6983060))

(declare-fun m!6983062 () Bool)

(assert (=> b!6141801 m!6983062))

(declare-fun m!6983064 () Bool)

(assert (=> d!1924228 m!6983064))

(declare-fun m!6983066 () Bool)

(assert (=> d!1924228 m!6983066))

(declare-fun m!6983068 () Bool)

(assert (=> d!1924228 m!6983068))

(assert (=> b!6140912 d!1924228))

(declare-fun d!1924230 () Bool)

(assert (=> d!1924230 (= (++!14170 (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429)) (t!378032 s!2326)) s!2326)))

(declare-fun lt!2333248 () Unit!157491)

(declare-fun choose!45649 (List!64553 C!32438 List!64553 List!64553) Unit!157491)

(assert (=> d!1924230 (= lt!2333248 (choose!45649 Nil!64429 (h!70877 s!2326) (t!378032 s!2326) s!2326))))

(assert (=> d!1924230 (= (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) (t!378032 s!2326))) s!2326)))

(assert (=> d!1924230 (= (lemmaMoveElementToOtherListKeepsConcatEq!2265 Nil!64429 (h!70877 s!2326) (t!378032 s!2326) s!2326) lt!2333248)))

(declare-fun bs!1522869 () Bool)

(assert (= bs!1522869 d!1924230))

(assert (=> bs!1522869 m!6982404))

(assert (=> bs!1522869 m!6982404))

(assert (=> bs!1522869 m!6982406))

(declare-fun m!6983070 () Bool)

(assert (=> bs!1522869 m!6983070))

(declare-fun m!6983072 () Bool)

(assert (=> bs!1522869 m!6983072))

(assert (=> b!6140912 d!1924230))

(declare-fun b!6141803 () Bool)

(declare-fun res!2544730 () Bool)

(declare-fun e!3742940 () Bool)

(assert (=> b!6141803 (=> (not res!2544730) (not e!3742940))))

(declare-fun lt!2333250 () Option!15975)

(assert (=> b!6141803 (= res!2544730 (matchR!8267 (regTwo!32680 r!7292) (_2!36366 (get!22228 lt!2333250))))))

(declare-fun b!6141804 () Bool)

(declare-fun e!3742936 () Bool)

(assert (=> b!6141804 (= e!3742936 (matchR!8267 (regTwo!32680 r!7292) (t!378032 s!2326)))))

(declare-fun b!6141805 () Bool)

(declare-fun e!3742937 () Option!15975)

(declare-fun e!3742938 () Option!15975)

(assert (=> b!6141805 (= e!3742937 e!3742938)))

(declare-fun c!1104838 () Bool)

(assert (=> b!6141805 (= c!1104838 (is-Nil!64429 (t!378032 s!2326)))))

(declare-fun b!6141806 () Bool)

(assert (=> b!6141806 (= e!3742937 (Some!15974 (tuple2!66127 (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429)) (t!378032 s!2326))))))

(declare-fun b!6141807 () Bool)

(assert (=> b!6141807 (= e!3742938 None!15974)))

(declare-fun b!6141808 () Bool)

(declare-fun e!3742939 () Bool)

(assert (=> b!6141808 (= e!3742939 (not (isDefined!12678 lt!2333250)))))

(declare-fun b!6141809 () Bool)

(assert (=> b!6141809 (= e!3742940 (= (++!14170 (_1!36366 (get!22228 lt!2333250)) (_2!36366 (get!22228 lt!2333250))) s!2326))))

(declare-fun d!1924232 () Bool)

(assert (=> d!1924232 e!3742939))

(declare-fun res!2544732 () Bool)

(assert (=> d!1924232 (=> res!2544732 e!3742939)))

(assert (=> d!1924232 (= res!2544732 e!3742940)))

(declare-fun res!2544731 () Bool)

(assert (=> d!1924232 (=> (not res!2544731) (not e!3742940))))

(assert (=> d!1924232 (= res!2544731 (isDefined!12678 lt!2333250))))

(assert (=> d!1924232 (= lt!2333250 e!3742937)))

(declare-fun c!1104837 () Bool)

(assert (=> d!1924232 (= c!1104837 e!3742936)))

(declare-fun res!2544734 () Bool)

(assert (=> d!1924232 (=> (not res!2544734) (not e!3742936))))

(assert (=> d!1924232 (= res!2544734 (matchR!8267 (regOne!32680 r!7292) (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429))))))

(assert (=> d!1924232 (validRegex!7820 (regOne!32680 r!7292))))

(assert (=> d!1924232 (= (findConcatSeparation!2389 (regOne!32680 r!7292) (regTwo!32680 r!7292) (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429)) (t!378032 s!2326) s!2326) lt!2333250)))

(declare-fun b!6141810 () Bool)

(declare-fun res!2544733 () Bool)

(assert (=> b!6141810 (=> (not res!2544733) (not e!3742940))))

(assert (=> b!6141810 (= res!2544733 (matchR!8267 (regOne!32680 r!7292) (_1!36366 (get!22228 lt!2333250))))))

(declare-fun b!6141811 () Bool)

(declare-fun lt!2333251 () Unit!157491)

(declare-fun lt!2333249 () Unit!157491)

(assert (=> b!6141811 (= lt!2333251 lt!2333249)))

(assert (=> b!6141811 (= (++!14170 (++!14170 (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429)) (Cons!64429 (h!70877 (t!378032 s!2326)) Nil!64429)) (t!378032 (t!378032 s!2326))) s!2326)))

(assert (=> b!6141811 (= lt!2333249 (lemmaMoveElementToOtherListKeepsConcatEq!2265 (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429)) (h!70877 (t!378032 s!2326)) (t!378032 (t!378032 s!2326)) s!2326))))

(assert (=> b!6141811 (= e!3742938 (findConcatSeparation!2389 (regOne!32680 r!7292) (regTwo!32680 r!7292) (++!14170 (++!14170 Nil!64429 (Cons!64429 (h!70877 s!2326) Nil!64429)) (Cons!64429 (h!70877 (t!378032 s!2326)) Nil!64429)) (t!378032 (t!378032 s!2326)) s!2326))))

(assert (= (and d!1924232 res!2544734) b!6141804))

(assert (= (and d!1924232 c!1104837) b!6141806))

(assert (= (and d!1924232 (not c!1104837)) b!6141805))

(assert (= (and b!6141805 c!1104838) b!6141807))

(assert (= (and b!6141805 (not c!1104838)) b!6141811))

(assert (= (and d!1924232 res!2544731) b!6141810))

(assert (= (and b!6141810 res!2544733) b!6141803))

(assert (= (and b!6141803 res!2544730) b!6141809))

(assert (= (and d!1924232 (not res!2544732)) b!6141808))

(declare-fun m!6983074 () Bool)

(assert (=> b!6141803 m!6983074))

(declare-fun m!6983076 () Bool)

(assert (=> b!6141803 m!6983076))

(declare-fun m!6983078 () Bool)

(assert (=> d!1924232 m!6983078))

(assert (=> d!1924232 m!6982404))

(declare-fun m!6983080 () Bool)

(assert (=> d!1924232 m!6983080))

(assert (=> d!1924232 m!6982398))

(declare-fun m!6983082 () Bool)

(assert (=> b!6141804 m!6983082))

(assert (=> b!6141808 m!6983078))

(assert (=> b!6141809 m!6983074))

(declare-fun m!6983084 () Bool)

(assert (=> b!6141809 m!6983084))

(assert (=> b!6141811 m!6982404))

(declare-fun m!6983086 () Bool)

(assert (=> b!6141811 m!6983086))

(assert (=> b!6141811 m!6983086))

(declare-fun m!6983088 () Bool)

(assert (=> b!6141811 m!6983088))

(assert (=> b!6141811 m!6982404))

(declare-fun m!6983090 () Bool)

(assert (=> b!6141811 m!6983090))

(assert (=> b!6141811 m!6983086))

(declare-fun m!6983092 () Bool)

(assert (=> b!6141811 m!6983092))

(assert (=> b!6141810 m!6983074))

(declare-fun m!6983094 () Bool)

(assert (=> b!6141810 m!6983094))

(assert (=> b!6140912 d!1924232))

(declare-fun bm!510121 () Bool)

(declare-fun call!510126 () Bool)

(declare-fun c!1104839 () Bool)

(declare-fun c!1104840 () Bool)

(assert (=> bm!510121 (= call!510126 (validRegex!7820 (ite c!1104840 (reg!16413 lt!2333159) (ite c!1104839 (regOne!32681 lt!2333159) (regOne!32680 lt!2333159)))))))

(declare-fun b!6141813 () Bool)

(declare-fun res!2544738 () Bool)

(declare-fun e!3742946 () Bool)

(assert (=> b!6141813 (=> res!2544738 e!3742946)))

(assert (=> b!6141813 (= res!2544738 (not (is-Concat!24929 lt!2333159)))))

(declare-fun e!3742947 () Bool)

(assert (=> b!6141813 (= e!3742947 e!3742946)))

(declare-fun b!6141814 () Bool)

(declare-fun res!2544739 () Bool)

(declare-fun e!3742944 () Bool)

(assert (=> b!6141814 (=> (not res!2544739) (not e!3742944))))

(declare-fun call!510127 () Bool)

(assert (=> b!6141814 (= res!2544739 call!510127)))

(assert (=> b!6141814 (= e!3742947 e!3742944)))

(declare-fun b!6141815 () Bool)

(declare-fun e!3742942 () Bool)

(declare-fun call!510128 () Bool)

(assert (=> b!6141815 (= e!3742942 call!510128)))

(declare-fun b!6141816 () Bool)

(declare-fun e!3742945 () Bool)

(declare-fun e!3742943 () Bool)

(assert (=> b!6141816 (= e!3742945 e!3742943)))

(declare-fun res!2544737 () Bool)

(assert (=> b!6141816 (= res!2544737 (not (nullable!6077 (reg!16413 lt!2333159))))))

(assert (=> b!6141816 (=> (not res!2544737) (not e!3742943))))

(declare-fun b!6141817 () Bool)

(assert (=> b!6141817 (= e!3742943 call!510126)))

(declare-fun b!6141818 () Bool)

(assert (=> b!6141818 (= e!3742945 e!3742947)))

(assert (=> b!6141818 (= c!1104839 (is-Union!16084 lt!2333159))))

(declare-fun b!6141819 () Bool)

(declare-fun e!3742941 () Bool)

(assert (=> b!6141819 (= e!3742941 e!3742945)))

(assert (=> b!6141819 (= c!1104840 (is-Star!16084 lt!2333159))))

(declare-fun bm!510122 () Bool)

(assert (=> bm!510122 (= call!510128 (validRegex!7820 (ite c!1104839 (regTwo!32681 lt!2333159) (regTwo!32680 lt!2333159))))))

(declare-fun b!6141812 () Bool)

(assert (=> b!6141812 (= e!3742944 call!510128)))

(declare-fun d!1924234 () Bool)

(declare-fun res!2544735 () Bool)

(assert (=> d!1924234 (=> res!2544735 e!3742941)))

(assert (=> d!1924234 (= res!2544735 (is-ElementMatch!16084 lt!2333159))))

(assert (=> d!1924234 (= (validRegex!7820 lt!2333159) e!3742941)))

(declare-fun bm!510123 () Bool)

(assert (=> bm!510123 (= call!510127 call!510126)))

(declare-fun b!6141820 () Bool)

(assert (=> b!6141820 (= e!3742946 e!3742942)))

(declare-fun res!2544736 () Bool)

(assert (=> b!6141820 (=> (not res!2544736) (not e!3742942))))

(assert (=> b!6141820 (= res!2544736 call!510127)))

(assert (= (and d!1924234 (not res!2544735)) b!6141819))

(assert (= (and b!6141819 c!1104840) b!6141816))

(assert (= (and b!6141819 (not c!1104840)) b!6141818))

(assert (= (and b!6141816 res!2544737) b!6141817))

(assert (= (and b!6141818 c!1104839) b!6141814))

(assert (= (and b!6141818 (not c!1104839)) b!6141813))

(assert (= (and b!6141814 res!2544739) b!6141812))

(assert (= (and b!6141813 (not res!2544738)) b!6141820))

(assert (= (and b!6141820 res!2544736) b!6141815))

(assert (= (or b!6141812 b!6141815) bm!510122))

(assert (= (or b!6141814 b!6141820) bm!510123))

(assert (= (or b!6141817 bm!510123) bm!510121))

(declare-fun m!6983096 () Bool)

(assert (=> bm!510121 m!6983096))

(declare-fun m!6983098 () Bool)

(assert (=> b!6141816 m!6983098))

(declare-fun m!6983100 () Bool)

(assert (=> bm!510122 m!6983100))

(assert (=> d!1923952 d!1924234))

(declare-fun d!1924236 () Bool)

(declare-fun res!2544740 () Bool)

(declare-fun e!3742948 () Bool)

(assert (=> d!1924236 (=> res!2544740 e!3742948)))

(assert (=> d!1924236 (= res!2544740 (is-Nil!64427 (unfocusZipperList!1505 zl!343)))))

(assert (=> d!1924236 (= (forall!15205 (unfocusZipperList!1505 zl!343) lambda!334717) e!3742948)))

(declare-fun b!6141821 () Bool)

(declare-fun e!3742949 () Bool)

(assert (=> b!6141821 (= e!3742948 e!3742949)))

(declare-fun res!2544741 () Bool)

(assert (=> b!6141821 (=> (not res!2544741) (not e!3742949))))

(assert (=> b!6141821 (= res!2544741 (dynLambda!25391 lambda!334717 (h!70875 (unfocusZipperList!1505 zl!343))))))

(declare-fun b!6141822 () Bool)

(assert (=> b!6141822 (= e!3742949 (forall!15205 (t!378030 (unfocusZipperList!1505 zl!343)) lambda!334717))))

(assert (= (and d!1924236 (not res!2544740)) b!6141821))

(assert (= (and b!6141821 res!2544741) b!6141822))

(declare-fun b_lambda!233749 () Bool)

(assert (=> (not b_lambda!233749) (not b!6141821)))

(declare-fun m!6983102 () Bool)

(assert (=> b!6141821 m!6983102))

(declare-fun m!6983104 () Bool)

(assert (=> b!6141822 m!6983104))

(assert (=> d!1923952 d!1924236))

(declare-fun bm!510124 () Bool)

(declare-fun call!510129 () (Set Context!10936))

(assert (=> bm!510124 (= call!510129 (derivationStepZipperDown!1332 (h!70875 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 lt!2333068))))) (Context!10937 (t!378030 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 lt!2333068)))))) (h!70877 s!2326)))))

(declare-fun b!6141823 () Bool)

(declare-fun e!3742951 () (Set Context!10936))

(assert (=> b!6141823 (= e!3742951 (as set.empty (Set Context!10936)))))

(declare-fun b!6141824 () Bool)

(declare-fun e!3742950 () (Set Context!10936))

(assert (=> b!6141824 (= e!3742950 e!3742951)))

(declare-fun c!1104841 () Bool)

(assert (=> b!6141824 (= c!1104841 (is-Cons!64427 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 lt!2333068))))))))

(declare-fun b!6141825 () Bool)

(assert (=> b!6141825 (= e!3742950 (set.union call!510129 (derivationStepZipperUp!1258 (Context!10937 (t!378030 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 lt!2333068)))))) (h!70877 s!2326))))))

(declare-fun d!1924238 () Bool)

(declare-fun c!1104842 () Bool)

(declare-fun e!3742952 () Bool)

(assert (=> d!1924238 (= c!1104842 e!3742952)))

(declare-fun res!2544742 () Bool)

(assert (=> d!1924238 (=> (not res!2544742) (not e!3742952))))

(assert (=> d!1924238 (= res!2544742 (is-Cons!64427 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 lt!2333068))))))))

(assert (=> d!1924238 (= (derivationStepZipperUp!1258 (Context!10937 (t!378030 (exprs!5968 lt!2333068))) (h!70877 s!2326)) e!3742950)))

(declare-fun b!6141826 () Bool)

(assert (=> b!6141826 (= e!3742951 call!510129)))

(declare-fun b!6141827 () Bool)

(assert (=> b!6141827 (= e!3742952 (nullable!6077 (h!70875 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 lt!2333068)))))))))

(assert (= (and d!1924238 res!2544742) b!6141827))

(assert (= (and d!1924238 c!1104842) b!6141825))

(assert (= (and d!1924238 (not c!1104842)) b!6141824))

(assert (= (and b!6141824 c!1104841) b!6141826))

(assert (= (and b!6141824 (not c!1104841)) b!6141823))

(assert (= (or b!6141825 b!6141826) bm!510124))

(declare-fun m!6983106 () Bool)

(assert (=> bm!510124 m!6983106))

(declare-fun m!6983108 () Bool)

(assert (=> b!6141825 m!6983108))

(declare-fun m!6983110 () Bool)

(assert (=> b!6141827 m!6983110))

(assert (=> b!6141102 d!1924238))

(declare-fun b!6141828 () Bool)

(declare-fun e!3742956 () (Set Context!10936))

(declare-fun e!3742957 () (Set Context!10936))

(assert (=> b!6141828 (= e!3742956 e!3742957)))

(declare-fun c!1104844 () Bool)

(assert (=> b!6141828 (= c!1104844 (is-Concat!24929 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292))))))))))

(declare-fun b!6141829 () Bool)

(declare-fun e!3742955 () (Set Context!10936))

(declare-fun e!3742958 () (Set Context!10936))

(assert (=> b!6141829 (= e!3742955 e!3742958)))

(declare-fun c!1104845 () Bool)

(assert (=> b!6141829 (= c!1104845 (is-Union!16084 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292))))))))))

(declare-fun b!6141830 () Bool)

(declare-fun c!1104843 () Bool)

(declare-fun e!3742953 () Bool)

(assert (=> b!6141830 (= c!1104843 e!3742953)))

(declare-fun res!2544743 () Bool)

(assert (=> b!6141830 (=> (not res!2544743) (not e!3742953))))

(assert (=> b!6141830 (= res!2544743 (is-Concat!24929 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292))))))))))

(assert (=> b!6141830 (= e!3742958 e!3742956)))

(declare-fun bm!510125 () Bool)

(declare-fun call!510131 () List!64551)

(declare-fun call!510133 () List!64551)

(assert (=> bm!510125 (= call!510131 call!510133)))

(declare-fun b!6141831 () Bool)

(declare-fun e!3742954 () (Set Context!10936))

(assert (=> b!6141831 (= e!3742954 (as set.empty (Set Context!10936)))))

(declare-fun bm!510126 () Bool)

(declare-fun call!510134 () (Set Context!10936))

(assert (=> bm!510126 (= call!510134 (derivationStepZipperDown!1332 (ite c!1104845 (regOne!32681 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292))))))) (regOne!32680 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292)))))))) (ite c!1104845 (ite (or c!1104635 c!1104633) lt!2333068 (Context!10937 call!510003)) (Context!10937 call!510133)) (h!70877 s!2326)))))

(declare-fun b!6141832 () Bool)

(declare-fun c!1104847 () Bool)

(assert (=> b!6141832 (= c!1104847 (is-Star!16084 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292))))))))))

(assert (=> b!6141832 (= e!3742957 e!3742954)))

(declare-fun b!6141834 () Bool)

(assert (=> b!6141834 (= e!3742955 (set.insert (ite (or c!1104635 c!1104633) lt!2333068 (Context!10937 call!510003)) (as set.empty (Set Context!10936))))))

(declare-fun bm!510127 () Bool)

(declare-fun call!510132 () (Set Context!10936))

(declare-fun call!510135 () (Set Context!10936))

(assert (=> bm!510127 (= call!510132 call!510135)))

(declare-fun bm!510128 () Bool)

(assert (=> bm!510128 (= call!510133 ($colon$colon!1961 (exprs!5968 (ite (or c!1104635 c!1104633) lt!2333068 (Context!10937 call!510003))) (ite (or c!1104843 c!1104844) (regTwo!32680 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292))))))) (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292)))))))))))

(declare-fun b!6141835 () Bool)

(assert (=> b!6141835 (= e!3742953 (nullable!6077 (regOne!32680 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292)))))))))))

(declare-fun b!6141836 () Bool)

(assert (=> b!6141836 (= e!3742958 (set.union call!510134 call!510135))))

(declare-fun b!6141837 () Bool)

(declare-fun call!510130 () (Set Context!10936))

(assert (=> b!6141837 (= e!3742954 call!510130)))

(declare-fun b!6141838 () Bool)

(assert (=> b!6141838 (= e!3742956 (set.union call!510134 call!510132))))

(declare-fun b!6141833 () Bool)

(assert (=> b!6141833 (= e!3742957 call!510130)))

(declare-fun c!1104846 () Bool)

(declare-fun d!1924240 () Bool)

(assert (=> d!1924240 (= c!1104846 (and (is-ElementMatch!16084 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292))))))) (= (c!1104532 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292))))))) (h!70877 s!2326))))))

(assert (=> d!1924240 (= (derivationStepZipperDown!1332 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292)))))) (ite (or c!1104635 c!1104633) lt!2333068 (Context!10937 call!510003)) (h!70877 s!2326)) e!3742955)))

(declare-fun bm!510129 () Bool)

(assert (=> bm!510129 (= call!510130 call!510132)))

(declare-fun bm!510130 () Bool)

(assert (=> bm!510130 (= call!510135 (derivationStepZipperDown!1332 (ite c!1104845 (regTwo!32681 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292))))))) (ite c!1104843 (regTwo!32680 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292))))))) (ite c!1104844 (regOne!32680 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292))))))) (reg!16413 (ite c!1104635 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104633 (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (ite c!1104634 (regOne!32680 (regOne!32681 (regOne!32680 r!7292))) (reg!16413 (regOne!32681 (regOne!32680 r!7292)))))))))) (ite (or c!1104845 c!1104843) (ite (or c!1104635 c!1104633) lt!2333068 (Context!10937 call!510003)) (Context!10937 call!510131)) (h!70877 s!2326)))))

(assert (= (and d!1924240 c!1104846) b!6141834))

(assert (= (and d!1924240 (not c!1104846)) b!6141829))

(assert (= (and b!6141829 c!1104845) b!6141836))

(assert (= (and b!6141829 (not c!1104845)) b!6141830))

(assert (= (and b!6141830 res!2544743) b!6141835))

(assert (= (and b!6141830 c!1104843) b!6141838))

(assert (= (and b!6141830 (not c!1104843)) b!6141828))

(assert (= (and b!6141828 c!1104844) b!6141833))

(assert (= (and b!6141828 (not c!1104844)) b!6141832))

(assert (= (and b!6141832 c!1104847) b!6141837))

(assert (= (and b!6141832 (not c!1104847)) b!6141831))

(assert (= (or b!6141833 b!6141837) bm!510125))

(assert (= (or b!6141833 b!6141837) bm!510129))

(assert (= (or b!6141838 bm!510125) bm!510128))

(assert (= (or b!6141838 bm!510129) bm!510127))

(assert (= (or b!6141836 bm!510127) bm!510130))

(assert (= (or b!6141836 b!6141838) bm!510126))

(declare-fun m!6983112 () Bool)

(assert (=> b!6141835 m!6983112))

(declare-fun m!6983114 () Bool)

(assert (=> b!6141834 m!6983114))

(declare-fun m!6983116 () Bool)

(assert (=> bm!510130 m!6983116))

(declare-fun m!6983118 () Bool)

(assert (=> bm!510128 m!6983118))

(declare-fun m!6983120 () Bool)

(assert (=> bm!510126 m!6983120))

(assert (=> bm!510002 d!1924240))

(assert (=> b!6140833 d!1924008))

(declare-fun bs!1522870 () Bool)

(declare-fun d!1924242 () Bool)

(assert (= bs!1522870 (and d!1924242 d!1924182)))

(declare-fun lambda!334793 () Int)

(assert (=> bs!1522870 (= lambda!334793 lambda!334787)))

(assert (=> d!1924242 (= (nullableZipper!1865 lt!2333066) (exists!2431 lt!2333066 lambda!334793))))

(declare-fun bs!1522871 () Bool)

(assert (= bs!1522871 d!1924242))

(declare-fun m!6983122 () Bool)

(assert (=> bs!1522871 m!6983122))

(assert (=> b!6140843 d!1924242))

(declare-fun b!6141839 () Bool)

(declare-fun res!2544744 () Bool)

(declare-fun e!3742959 () Bool)

(assert (=> b!6141839 (=> (not res!2544744) (not e!3742959))))

(declare-fun call!510136 () Bool)

(assert (=> b!6141839 (= res!2544744 (not call!510136))))

(declare-fun b!6141840 () Bool)

(declare-fun e!3742963 () Bool)

(assert (=> b!6141840 (= e!3742963 (nullable!6077 (regTwo!32680 r!7292)))))

(declare-fun b!6141841 () Bool)

(declare-fun e!3742964 () Bool)

(declare-fun e!3742965 () Bool)

(assert (=> b!6141841 (= e!3742964 e!3742965)))

(declare-fun res!2544746 () Bool)

(assert (=> b!6141841 (=> res!2544746 e!3742965)))

(assert (=> b!6141841 (= res!2544746 call!510136)))

(declare-fun b!6141842 () Bool)

(declare-fun e!3742962 () Bool)

(declare-fun lt!2333252 () Bool)

(assert (=> b!6141842 (= e!3742962 (not lt!2333252))))

(declare-fun d!1924244 () Bool)

(declare-fun e!3742961 () Bool)

(assert (=> d!1924244 e!3742961))

(declare-fun c!1104850 () Bool)

(assert (=> d!1924244 (= c!1104850 (is-EmptyExpr!16084 (regTwo!32680 r!7292)))))

(assert (=> d!1924244 (= lt!2333252 e!3742963)))

(declare-fun c!1104849 () Bool)

(assert (=> d!1924244 (= c!1104849 (isEmpty!36382 (_2!36366 (get!22228 lt!2333170))))))

(assert (=> d!1924244 (validRegex!7820 (regTwo!32680 r!7292))))

(assert (=> d!1924244 (= (matchR!8267 (regTwo!32680 r!7292) (_2!36366 (get!22228 lt!2333170))) lt!2333252)))

(declare-fun bm!510131 () Bool)

(assert (=> bm!510131 (= call!510136 (isEmpty!36382 (_2!36366 (get!22228 lt!2333170))))))

(declare-fun b!6141843 () Bool)

(declare-fun e!3742960 () Bool)

(assert (=> b!6141843 (= e!3742960 e!3742964)))

(declare-fun res!2544747 () Bool)

(assert (=> b!6141843 (=> (not res!2544747) (not e!3742964))))

(assert (=> b!6141843 (= res!2544747 (not lt!2333252))))

(declare-fun b!6141844 () Bool)

(declare-fun res!2544751 () Bool)

(assert (=> b!6141844 (=> (not res!2544751) (not e!3742959))))

(assert (=> b!6141844 (= res!2544751 (isEmpty!36382 (tail!11774 (_2!36366 (get!22228 lt!2333170)))))))

(declare-fun b!6141845 () Bool)

(assert (=> b!6141845 (= e!3742959 (= (head!12689 (_2!36366 (get!22228 lt!2333170))) (c!1104532 (regTwo!32680 r!7292))))))

(declare-fun b!6141846 () Bool)

(assert (=> b!6141846 (= e!3742961 e!3742962)))

(declare-fun c!1104848 () Bool)

(assert (=> b!6141846 (= c!1104848 (is-EmptyLang!16084 (regTwo!32680 r!7292)))))

(declare-fun b!6141847 () Bool)

(declare-fun res!2544749 () Bool)

(assert (=> b!6141847 (=> res!2544749 e!3742965)))

(assert (=> b!6141847 (= res!2544749 (not (isEmpty!36382 (tail!11774 (_2!36366 (get!22228 lt!2333170))))))))

(declare-fun b!6141848 () Bool)

(declare-fun res!2544750 () Bool)

(assert (=> b!6141848 (=> res!2544750 e!3742960)))

(assert (=> b!6141848 (= res!2544750 (not (is-ElementMatch!16084 (regTwo!32680 r!7292))))))

(assert (=> b!6141848 (= e!3742962 e!3742960)))

(declare-fun b!6141849 () Bool)

(assert (=> b!6141849 (= e!3742965 (not (= (head!12689 (_2!36366 (get!22228 lt!2333170))) (c!1104532 (regTwo!32680 r!7292)))))))

(declare-fun b!6141850 () Bool)

(assert (=> b!6141850 (= e!3742961 (= lt!2333252 call!510136))))

(declare-fun b!6141851 () Bool)

(declare-fun res!2544745 () Bool)

(assert (=> b!6141851 (=> res!2544745 e!3742960)))

(assert (=> b!6141851 (= res!2544745 e!3742959)))

(declare-fun res!2544748 () Bool)

(assert (=> b!6141851 (=> (not res!2544748) (not e!3742959))))

(assert (=> b!6141851 (= res!2544748 lt!2333252)))

(declare-fun b!6141852 () Bool)

(assert (=> b!6141852 (= e!3742963 (matchR!8267 (derivativeStep!4804 (regTwo!32680 r!7292) (head!12689 (_2!36366 (get!22228 lt!2333170)))) (tail!11774 (_2!36366 (get!22228 lt!2333170)))))))

(assert (= (and d!1924244 c!1104849) b!6141840))

(assert (= (and d!1924244 (not c!1104849)) b!6141852))

(assert (= (and d!1924244 c!1104850) b!6141850))

(assert (= (and d!1924244 (not c!1104850)) b!6141846))

(assert (= (and b!6141846 c!1104848) b!6141842))

(assert (= (and b!6141846 (not c!1104848)) b!6141848))

(assert (= (and b!6141848 (not res!2544750)) b!6141851))

(assert (= (and b!6141851 res!2544748) b!6141839))

(assert (= (and b!6141839 res!2544744) b!6141844))

(assert (= (and b!6141844 res!2544751) b!6141845))

(assert (= (and b!6141851 (not res!2544745)) b!6141843))

(assert (= (and b!6141843 res!2544747) b!6141841))

(assert (= (and b!6141841 (not res!2544746)) b!6141847))

(assert (= (and b!6141847 (not res!2544749)) b!6141849))

(assert (= (or b!6141850 b!6141839 b!6141841) bm!510131))

(declare-fun m!6983124 () Bool)

(assert (=> b!6141845 m!6983124))

(assert (=> b!6141849 m!6983124))

(assert (=> b!6141840 m!6982844))

(declare-fun m!6983126 () Bool)

(assert (=> bm!510131 m!6983126))

(declare-fun m!6983128 () Bool)

(assert (=> b!6141847 m!6983128))

(assert (=> b!6141847 m!6983128))

(declare-fun m!6983130 () Bool)

(assert (=> b!6141847 m!6983130))

(assert (=> b!6141844 m!6983128))

(assert (=> b!6141844 m!6983128))

(assert (=> b!6141844 m!6983130))

(assert (=> b!6141852 m!6983124))

(assert (=> b!6141852 m!6983124))

(declare-fun m!6983132 () Bool)

(assert (=> b!6141852 m!6983132))

(assert (=> b!6141852 m!6983128))

(assert (=> b!6141852 m!6983132))

(assert (=> b!6141852 m!6983128))

(declare-fun m!6983134 () Bool)

(assert (=> b!6141852 m!6983134))

(assert (=> d!1924244 m!6983126))

(assert (=> d!1924244 m!6982850))

(assert (=> b!6140904 d!1924244))

(declare-fun d!1924246 () Bool)

(assert (=> d!1924246 (= (get!22228 lt!2333170) (v!52113 lt!2333170))))

(assert (=> b!6140904 d!1924246))

(declare-fun d!1924248 () Bool)

(declare-fun c!1104853 () Bool)

(assert (=> d!1924248 (= c!1104853 (is-Nil!64428 lt!2333156))))

(declare-fun e!3742968 () (Set Context!10936))

(assert (=> d!1924248 (= (content!11992 lt!2333156) e!3742968)))

(declare-fun b!6141857 () Bool)

(assert (=> b!6141857 (= e!3742968 (as set.empty (Set Context!10936)))))

(declare-fun b!6141858 () Bool)

(assert (=> b!6141858 (= e!3742968 (set.union (set.insert (h!70876 lt!2333156) (as set.empty (Set Context!10936))) (content!11992 (t!378031 lt!2333156))))))

(assert (= (and d!1924248 c!1104853) b!6141857))

(assert (= (and d!1924248 (not c!1104853)) b!6141858))

(declare-fun m!6983136 () Bool)

(assert (=> b!6141858 m!6983136))

(declare-fun m!6983138 () Bool)

(assert (=> b!6141858 m!6983138))

(assert (=> b!6140849 d!1924248))

(declare-fun d!1924250 () Bool)

(assert (=> d!1924250 true))

(assert (=> d!1924250 true))

(declare-fun res!2544752 () Bool)

(assert (=> d!1924250 (= (choose!45635 lambda!334693) res!2544752)))

(assert (=> d!1923960 d!1924250))

(assert (=> d!1924010 d!1924128))

(declare-fun bm!510132 () Bool)

(declare-fun call!510137 () (Set Context!10936))

(assert (=> bm!510132 (= call!510137 (derivationStepZipperDown!1332 (h!70875 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 (h!70876 zl!343)))))) (Context!10937 (t!378030 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 (h!70876 zl!343))))))) (h!70877 s!2326)))))

(declare-fun b!6141859 () Bool)

(declare-fun e!3742970 () (Set Context!10936))

(assert (=> b!6141859 (= e!3742970 (as set.empty (Set Context!10936)))))

(declare-fun b!6141860 () Bool)

(declare-fun e!3742969 () (Set Context!10936))

(assert (=> b!6141860 (= e!3742969 e!3742970)))

(declare-fun c!1104854 () Bool)

(assert (=> b!6141860 (= c!1104854 (is-Cons!64427 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 (h!70876 zl!343)))))))))

(declare-fun b!6141861 () Bool)

(assert (=> b!6141861 (= e!3742969 (set.union call!510137 (derivationStepZipperUp!1258 (Context!10937 (t!378030 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 (h!70876 zl!343))))))) (h!70877 s!2326))))))

(declare-fun d!1924252 () Bool)

(declare-fun c!1104855 () Bool)

(declare-fun e!3742971 () Bool)

(assert (=> d!1924252 (= c!1104855 e!3742971)))

(declare-fun res!2544753 () Bool)

(assert (=> d!1924252 (=> (not res!2544753) (not e!3742971))))

(assert (=> d!1924252 (= res!2544753 (is-Cons!64427 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 (h!70876 zl!343)))))))))

(assert (=> d!1924252 (= (derivationStepZipperUp!1258 (Context!10937 (t!378030 (exprs!5968 (h!70876 zl!343)))) (h!70877 s!2326)) e!3742969)))

(declare-fun b!6141862 () Bool)

(assert (=> b!6141862 (= e!3742970 call!510137)))

(declare-fun b!6141863 () Bool)

(assert (=> b!6141863 (= e!3742971 (nullable!6077 (h!70875 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 (h!70876 zl!343))))))))))

(assert (= (and d!1924252 res!2544753) b!6141863))

(assert (= (and d!1924252 c!1104855) b!6141861))

(assert (= (and d!1924252 (not c!1104855)) b!6141860))

(assert (= (and b!6141860 c!1104854) b!6141862))

(assert (= (and b!6141860 (not c!1104854)) b!6141859))

(assert (= (or b!6141861 b!6141862) bm!510132))

(declare-fun m!6983140 () Bool)

(assert (=> bm!510132 m!6983140))

(declare-fun m!6983142 () Bool)

(assert (=> b!6141861 m!6983142))

(declare-fun m!6983144 () Bool)

(assert (=> b!6141863 m!6983144))

(assert (=> b!6141112 d!1924252))

(declare-fun bs!1522872 () Bool)

(declare-fun d!1924254 () Bool)

(assert (= bs!1522872 (and d!1924254 d!1924182)))

(declare-fun lambda!334794 () Int)

(assert (=> bs!1522872 (= lambda!334794 lambda!334787)))

(declare-fun bs!1522873 () Bool)

(assert (= bs!1522873 (and d!1924254 d!1924242)))

(assert (=> bs!1522873 (= lambda!334794 lambda!334793)))

(assert (=> d!1924254 (= (nullableZipper!1865 lt!2333059) (exists!2431 lt!2333059 lambda!334794))))

(declare-fun bs!1522874 () Bool)

(assert (= bs!1522874 d!1924254))

(declare-fun m!6983146 () Bool)

(assert (=> bs!1522874 m!6983146))

(assert (=> b!6140809 d!1924254))

(declare-fun bm!510133 () Bool)

(declare-fun c!1104857 () Bool)

(declare-fun call!510138 () Bool)

(declare-fun c!1104856 () Bool)

(assert (=> bm!510133 (= call!510138 (validRegex!7820 (ite c!1104857 (reg!16413 lt!2333153) (ite c!1104856 (regOne!32681 lt!2333153) (regOne!32680 lt!2333153)))))))

(declare-fun b!6141865 () Bool)

(declare-fun res!2544757 () Bool)

(declare-fun e!3742977 () Bool)

(assert (=> b!6141865 (=> res!2544757 e!3742977)))

(assert (=> b!6141865 (= res!2544757 (not (is-Concat!24929 lt!2333153)))))

(declare-fun e!3742978 () Bool)

(assert (=> b!6141865 (= e!3742978 e!3742977)))

(declare-fun b!6141866 () Bool)

(declare-fun res!2544758 () Bool)

(declare-fun e!3742975 () Bool)

(assert (=> b!6141866 (=> (not res!2544758) (not e!3742975))))

(declare-fun call!510139 () Bool)

(assert (=> b!6141866 (= res!2544758 call!510139)))

(assert (=> b!6141866 (= e!3742978 e!3742975)))

(declare-fun b!6141867 () Bool)

(declare-fun e!3742973 () Bool)

(declare-fun call!510140 () Bool)

(assert (=> b!6141867 (= e!3742973 call!510140)))

(declare-fun b!6141868 () Bool)

(declare-fun e!3742976 () Bool)

(declare-fun e!3742974 () Bool)

(assert (=> b!6141868 (= e!3742976 e!3742974)))

(declare-fun res!2544756 () Bool)

(assert (=> b!6141868 (= res!2544756 (not (nullable!6077 (reg!16413 lt!2333153))))))

(assert (=> b!6141868 (=> (not res!2544756) (not e!3742974))))

(declare-fun b!6141869 () Bool)

(assert (=> b!6141869 (= e!3742974 call!510138)))

(declare-fun b!6141870 () Bool)

(assert (=> b!6141870 (= e!3742976 e!3742978)))

(assert (=> b!6141870 (= c!1104856 (is-Union!16084 lt!2333153))))

(declare-fun b!6141871 () Bool)

(declare-fun e!3742972 () Bool)

(assert (=> b!6141871 (= e!3742972 e!3742976)))

(assert (=> b!6141871 (= c!1104857 (is-Star!16084 lt!2333153))))

(declare-fun bm!510134 () Bool)

(assert (=> bm!510134 (= call!510140 (validRegex!7820 (ite c!1104856 (regTwo!32681 lt!2333153) (regTwo!32680 lt!2333153))))))

(declare-fun b!6141864 () Bool)

(assert (=> b!6141864 (= e!3742975 call!510140)))

(declare-fun d!1924256 () Bool)

(declare-fun res!2544754 () Bool)

(assert (=> d!1924256 (=> res!2544754 e!3742972)))

(assert (=> d!1924256 (= res!2544754 (is-ElementMatch!16084 lt!2333153))))

(assert (=> d!1924256 (= (validRegex!7820 lt!2333153) e!3742972)))

(declare-fun bm!510135 () Bool)

(assert (=> bm!510135 (= call!510139 call!510138)))

(declare-fun b!6141872 () Bool)

(assert (=> b!6141872 (= e!3742977 e!3742973)))

(declare-fun res!2544755 () Bool)

(assert (=> b!6141872 (=> (not res!2544755) (not e!3742973))))

(assert (=> b!6141872 (= res!2544755 call!510139)))

(assert (= (and d!1924256 (not res!2544754)) b!6141871))

(assert (= (and b!6141871 c!1104857) b!6141868))

(assert (= (and b!6141871 (not c!1104857)) b!6141870))

(assert (= (and b!6141868 res!2544756) b!6141869))

(assert (= (and b!6141870 c!1104856) b!6141866))

(assert (= (and b!6141870 (not c!1104856)) b!6141865))

(assert (= (and b!6141866 res!2544758) b!6141864))

(assert (= (and b!6141865 (not res!2544757)) b!6141872))

(assert (= (and b!6141872 res!2544755) b!6141867))

(assert (= (or b!6141864 b!6141867) bm!510134))

(assert (= (or b!6141866 b!6141872) bm!510135))

(assert (= (or b!6141869 bm!510135) bm!510133))

(declare-fun m!6983148 () Bool)

(assert (=> bm!510133 m!6983148))

(declare-fun m!6983150 () Bool)

(assert (=> b!6141868 m!6983150))

(declare-fun m!6983152 () Bool)

(assert (=> bm!510134 m!6983152))

(assert (=> d!1923940 d!1924256))

(declare-fun d!1924258 () Bool)

(declare-fun res!2544759 () Bool)

(declare-fun e!3742979 () Bool)

(assert (=> d!1924258 (=> res!2544759 e!3742979)))

(assert (=> d!1924258 (= res!2544759 (is-Nil!64427 (exprs!5968 (h!70876 zl!343))))))

(assert (=> d!1924258 (= (forall!15205 (exprs!5968 (h!70876 zl!343)) lambda!334710) e!3742979)))

(declare-fun b!6141873 () Bool)

(declare-fun e!3742980 () Bool)

(assert (=> b!6141873 (= e!3742979 e!3742980)))

(declare-fun res!2544760 () Bool)

(assert (=> b!6141873 (=> (not res!2544760) (not e!3742980))))

(assert (=> b!6141873 (= res!2544760 (dynLambda!25391 lambda!334710 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun b!6141874 () Bool)

(assert (=> b!6141874 (= e!3742980 (forall!15205 (t!378030 (exprs!5968 (h!70876 zl!343))) lambda!334710))))

(assert (= (and d!1924258 (not res!2544759)) b!6141873))

(assert (= (and b!6141873 res!2544760) b!6141874))

(declare-fun b_lambda!233751 () Bool)

(assert (=> (not b_lambda!233751) (not b!6141873)))

(declare-fun m!6983154 () Bool)

(assert (=> b!6141873 m!6983154))

(declare-fun m!6983156 () Bool)

(assert (=> b!6141874 m!6983156))

(assert (=> d!1923940 d!1924258))

(assert (=> d!1923970 d!1924224))

(assert (=> d!1923970 d!1923974))

(declare-fun d!1924260 () Bool)

(declare-fun c!1104858 () Bool)

(assert (=> d!1924260 (= c!1104858 (isEmpty!36382 (tail!11774 (t!378032 s!2326))))))

(declare-fun e!3742981 () Bool)

(assert (=> d!1924260 (= (matchZipper!2096 (derivationStepZipper!2057 lt!2333058 (head!12689 (t!378032 s!2326))) (tail!11774 (t!378032 s!2326))) e!3742981)))

(declare-fun b!6141875 () Bool)

(assert (=> b!6141875 (= e!3742981 (nullableZipper!1865 (derivationStepZipper!2057 lt!2333058 (head!12689 (t!378032 s!2326)))))))

(declare-fun b!6141876 () Bool)

(assert (=> b!6141876 (= e!3742981 (matchZipper!2096 (derivationStepZipper!2057 (derivationStepZipper!2057 lt!2333058 (head!12689 (t!378032 s!2326))) (head!12689 (tail!11774 (t!378032 s!2326)))) (tail!11774 (tail!11774 (t!378032 s!2326)))))))

(assert (= (and d!1924260 c!1104858) b!6141875))

(assert (= (and d!1924260 (not c!1104858)) b!6141876))

(assert (=> d!1924260 m!6982300))

(assert (=> d!1924260 m!6982900))

(assert (=> b!6141875 m!6982536))

(declare-fun m!6983158 () Bool)

(assert (=> b!6141875 m!6983158))

(assert (=> b!6141876 m!6982300))

(assert (=> b!6141876 m!6982904))

(assert (=> b!6141876 m!6982536))

(assert (=> b!6141876 m!6982904))

(declare-fun m!6983160 () Bool)

(assert (=> b!6141876 m!6983160))

(assert (=> b!6141876 m!6982300))

(assert (=> b!6141876 m!6982908))

(assert (=> b!6141876 m!6983160))

(assert (=> b!6141876 m!6982908))

(declare-fun m!6983162 () Bool)

(assert (=> b!6141876 m!6983162))

(assert (=> b!6141129 d!1924260))

(declare-fun bs!1522875 () Bool)

(declare-fun d!1924262 () Bool)

(assert (= bs!1522875 (and d!1924262 d!1924164)))

(declare-fun lambda!334795 () Int)

(assert (=> bs!1522875 (= lambda!334795 lambda!334783)))

(declare-fun bs!1522876 () Bool)

(assert (= bs!1522876 (and d!1924262 d!1924218)))

(assert (=> bs!1522876 (= lambda!334795 lambda!334792)))

(declare-fun bs!1522877 () Bool)

(assert (= bs!1522877 (and d!1924262 d!1924210)))

(assert (=> bs!1522877 (= lambda!334795 lambda!334791)))

(declare-fun bs!1522878 () Bool)

(assert (= bs!1522878 (and d!1924262 d!1923986)))

(assert (=> bs!1522878 (= (= (head!12689 (t!378032 s!2326)) (h!70877 s!2326)) (= lambda!334795 lambda!334739))))

(declare-fun bs!1522879 () Bool)

(assert (= bs!1522879 (and d!1924262 d!1924148)))

(assert (=> bs!1522879 (= (= (head!12689 (t!378032 s!2326)) (head!12689 s!2326)) (= lambda!334795 lambda!334781))))

(declare-fun bs!1522880 () Bool)

(assert (= bs!1522880 (and d!1924262 d!1924174)))

(assert (=> bs!1522880 (= lambda!334795 lambda!334784)))

(declare-fun bs!1522881 () Bool)

(assert (= bs!1522881 (and d!1924262 b!6140677)))

(assert (=> bs!1522881 (= (= (head!12689 (t!378032 s!2326)) (h!70877 s!2326)) (= lambda!334795 lambda!334694))))

(assert (=> d!1924262 true))

(assert (=> d!1924262 (= (derivationStepZipper!2057 lt!2333058 (head!12689 (t!378032 s!2326))) (flatMap!1589 lt!2333058 lambda!334795))))

(declare-fun bs!1522882 () Bool)

(assert (= bs!1522882 d!1924262))

(declare-fun m!6983164 () Bool)

(assert (=> bs!1522882 m!6983164))

(assert (=> b!6141129 d!1924262))

(assert (=> b!6141129 d!1924166))

(assert (=> b!6141129 d!1924168))

(declare-fun d!1924264 () Bool)

(assert (=> d!1924264 (= (isEmptyLang!1511 lt!2333159) (is-EmptyLang!16084 lt!2333159))))

(assert (=> b!6140878 d!1924264))

(declare-fun d!1924266 () Bool)

(assert (=> d!1924266 (= ($colon$colon!1961 (exprs!5968 lt!2333068) (ite (or c!1104644 c!1104645) (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (h!70875 (exprs!5968 (h!70876 zl!343))))) (Cons!64427 (ite (or c!1104644 c!1104645) (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))) (h!70875 (exprs!5968 (h!70876 zl!343)))) (exprs!5968 lt!2333068)))))

(assert (=> bm!510009 d!1924266))

(declare-fun bm!510136 () Bool)

(declare-fun call!510141 () (Set Context!10936))

(assert (=> bm!510136 (= call!510141 (derivationStepZipperDown!1332 (h!70875 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 lt!2333054))))) (Context!10937 (t!378030 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 lt!2333054)))))) (h!70877 s!2326)))))

(declare-fun b!6141877 () Bool)

(declare-fun e!3742983 () (Set Context!10936))

(assert (=> b!6141877 (= e!3742983 (as set.empty (Set Context!10936)))))

(declare-fun b!6141878 () Bool)

(declare-fun e!3742982 () (Set Context!10936))

(assert (=> b!6141878 (= e!3742982 e!3742983)))

(declare-fun c!1104859 () Bool)

(assert (=> b!6141878 (= c!1104859 (is-Cons!64427 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 lt!2333054))))))))

(declare-fun b!6141879 () Bool)

(assert (=> b!6141879 (= e!3742982 (set.union call!510141 (derivationStepZipperUp!1258 (Context!10937 (t!378030 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 lt!2333054)))))) (h!70877 s!2326))))))

(declare-fun d!1924268 () Bool)

(declare-fun c!1104860 () Bool)

(declare-fun e!3742984 () Bool)

(assert (=> d!1924268 (= c!1104860 e!3742984)))

(declare-fun res!2544761 () Bool)

(assert (=> d!1924268 (=> (not res!2544761) (not e!3742984))))

(assert (=> d!1924268 (= res!2544761 (is-Cons!64427 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 lt!2333054))))))))

(assert (=> d!1924268 (= (derivationStepZipperUp!1258 (Context!10937 (t!378030 (exprs!5968 lt!2333054))) (h!70877 s!2326)) e!3742982)))

(declare-fun b!6141880 () Bool)

(assert (=> b!6141880 (= e!3742983 call!510141)))

(declare-fun b!6141881 () Bool)

(assert (=> b!6141881 (= e!3742984 (nullable!6077 (h!70875 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 lt!2333054)))))))))

(assert (= (and d!1924268 res!2544761) b!6141881))

(assert (= (and d!1924268 c!1104860) b!6141879))

(assert (= (and d!1924268 (not c!1104860)) b!6141878))

(assert (= (and b!6141878 c!1104859) b!6141880))

(assert (= (and b!6141878 (not c!1104859)) b!6141877))

(assert (= (or b!6141879 b!6141880) bm!510136))

(declare-fun m!6983166 () Bool)

(assert (=> bm!510136 m!6983166))

(declare-fun m!6983168 () Bool)

(assert (=> b!6141879 m!6983168))

(declare-fun m!6983170 () Bool)

(assert (=> b!6141881 m!6983170))

(assert (=> b!6141051 d!1924268))

(declare-fun bs!1522883 () Bool)

(declare-fun d!1924270 () Bool)

(assert (= bs!1522883 (and d!1924270 d!1924182)))

(declare-fun lambda!334796 () Int)

(assert (=> bs!1522883 (= lambda!334796 lambda!334787)))

(declare-fun bs!1522884 () Bool)

(assert (= bs!1522884 (and d!1924270 d!1924242)))

(assert (=> bs!1522884 (= lambda!334796 lambda!334793)))

(declare-fun bs!1522885 () Bool)

(assert (= bs!1522885 (and d!1924270 d!1924254)))

(assert (=> bs!1522885 (= lambda!334796 lambda!334794)))

(assert (=> d!1924270 (= (nullableZipper!1865 lt!2333063) (exists!2431 lt!2333063 lambda!334796))))

(declare-fun bs!1522886 () Bool)

(assert (= bs!1522886 d!1924270))

(declare-fun m!6983172 () Bool)

(assert (=> bs!1522886 m!6983172))

(assert (=> b!6141037 d!1924270))

(declare-fun d!1924272 () Bool)

(assert (=> d!1924272 (= (isEmpty!36378 (exprs!5968 (h!70876 zl!343))) (is-Nil!64427 (exprs!5968 (h!70876 zl!343))))))

(assert (=> b!6140837 d!1924272))

(assert (=> d!1924012 d!1924128))

(declare-fun d!1924274 () Bool)

(assert (=> d!1924274 (= (isUnion!941 lt!2333159) (is-Union!16084 lt!2333159))))

(assert (=> b!6140874 d!1924274))

(declare-fun bs!1522887 () Bool)

(declare-fun d!1924276 () Bool)

(assert (= bs!1522887 (and d!1924276 d!1924182)))

(declare-fun lambda!334797 () Int)

(assert (=> bs!1522887 (= lambda!334797 lambda!334787)))

(declare-fun bs!1522888 () Bool)

(assert (= bs!1522888 (and d!1924276 d!1924242)))

(assert (=> bs!1522888 (= lambda!334797 lambda!334793)))

(declare-fun bs!1522889 () Bool)

(assert (= bs!1522889 (and d!1924276 d!1924254)))

(assert (=> bs!1522889 (= lambda!334797 lambda!334794)))

(declare-fun bs!1522890 () Bool)

(assert (= bs!1522890 (and d!1924276 d!1924270)))

(assert (=> bs!1522890 (= lambda!334797 lambda!334796)))

(assert (=> d!1924276 (= (nullableZipper!1865 (set.union lt!2333059 lt!2333063)) (exists!2431 (set.union lt!2333059 lt!2333063) lambda!334797))))

(declare-fun bs!1522891 () Bool)

(assert (= bs!1522891 d!1924276))

(declare-fun m!6983174 () Bool)

(assert (=> bs!1522891 m!6983174))

(assert (=> b!6140811 d!1924276))

(declare-fun d!1924278 () Bool)

(assert (=> d!1924278 (= (nullable!6077 r!7292) (nullableFct!2041 r!7292))))

(declare-fun bs!1522892 () Bool)

(assert (= bs!1522892 d!1924278))

(declare-fun m!6983176 () Bool)

(assert (=> bs!1522892 m!6983176))

(assert (=> b!6140997 d!1924278))

(declare-fun b!6141882 () Bool)

(declare-fun res!2544762 () Bool)

(declare-fun e!3742985 () Bool)

(assert (=> b!6141882 (=> (not res!2544762) (not e!3742985))))

(declare-fun call!510142 () Bool)

(assert (=> b!6141882 (= res!2544762 (not call!510142))))

(declare-fun b!6141883 () Bool)

(declare-fun e!3742989 () Bool)

(assert (=> b!6141883 (= e!3742989 (nullable!6077 (regOne!32680 r!7292)))))

(declare-fun b!6141884 () Bool)

(declare-fun e!3742990 () Bool)

(declare-fun e!3742991 () Bool)

(assert (=> b!6141884 (= e!3742990 e!3742991)))

(declare-fun res!2544764 () Bool)

(assert (=> b!6141884 (=> res!2544764 e!3742991)))

(assert (=> b!6141884 (= res!2544764 call!510142)))

(declare-fun b!6141885 () Bool)

(declare-fun e!3742988 () Bool)

(declare-fun lt!2333253 () Bool)

(assert (=> b!6141885 (= e!3742988 (not lt!2333253))))

(declare-fun d!1924280 () Bool)

(declare-fun e!3742987 () Bool)

(assert (=> d!1924280 e!3742987))

(declare-fun c!1104863 () Bool)

(assert (=> d!1924280 (= c!1104863 (is-EmptyExpr!16084 (regOne!32680 r!7292)))))

(assert (=> d!1924280 (= lt!2333253 e!3742989)))

(declare-fun c!1104862 () Bool)

(assert (=> d!1924280 (= c!1104862 (isEmpty!36382 (_1!36366 (get!22228 lt!2333170))))))

(assert (=> d!1924280 (validRegex!7820 (regOne!32680 r!7292))))

(assert (=> d!1924280 (= (matchR!8267 (regOne!32680 r!7292) (_1!36366 (get!22228 lt!2333170))) lt!2333253)))

(declare-fun bm!510137 () Bool)

(assert (=> bm!510137 (= call!510142 (isEmpty!36382 (_1!36366 (get!22228 lt!2333170))))))

(declare-fun b!6141886 () Bool)

(declare-fun e!3742986 () Bool)

(assert (=> b!6141886 (= e!3742986 e!3742990)))

(declare-fun res!2544765 () Bool)

(assert (=> b!6141886 (=> (not res!2544765) (not e!3742990))))

(assert (=> b!6141886 (= res!2544765 (not lt!2333253))))

(declare-fun b!6141887 () Bool)

(declare-fun res!2544769 () Bool)

(assert (=> b!6141887 (=> (not res!2544769) (not e!3742985))))

(assert (=> b!6141887 (= res!2544769 (isEmpty!36382 (tail!11774 (_1!36366 (get!22228 lt!2333170)))))))

(declare-fun b!6141888 () Bool)

(assert (=> b!6141888 (= e!3742985 (= (head!12689 (_1!36366 (get!22228 lt!2333170))) (c!1104532 (regOne!32680 r!7292))))))

(declare-fun b!6141889 () Bool)

(assert (=> b!6141889 (= e!3742987 e!3742988)))

(declare-fun c!1104861 () Bool)

(assert (=> b!6141889 (= c!1104861 (is-EmptyLang!16084 (regOne!32680 r!7292)))))

(declare-fun b!6141890 () Bool)

(declare-fun res!2544767 () Bool)

(assert (=> b!6141890 (=> res!2544767 e!3742991)))

(assert (=> b!6141890 (= res!2544767 (not (isEmpty!36382 (tail!11774 (_1!36366 (get!22228 lt!2333170))))))))

(declare-fun b!6141891 () Bool)

(declare-fun res!2544768 () Bool)

(assert (=> b!6141891 (=> res!2544768 e!3742986)))

(assert (=> b!6141891 (= res!2544768 (not (is-ElementMatch!16084 (regOne!32680 r!7292))))))

(assert (=> b!6141891 (= e!3742988 e!3742986)))

(declare-fun b!6141892 () Bool)

(assert (=> b!6141892 (= e!3742991 (not (= (head!12689 (_1!36366 (get!22228 lt!2333170))) (c!1104532 (regOne!32680 r!7292)))))))

(declare-fun b!6141893 () Bool)

(assert (=> b!6141893 (= e!3742987 (= lt!2333253 call!510142))))

(declare-fun b!6141894 () Bool)

(declare-fun res!2544763 () Bool)

(assert (=> b!6141894 (=> res!2544763 e!3742986)))

(assert (=> b!6141894 (= res!2544763 e!3742985)))

(declare-fun res!2544766 () Bool)

(assert (=> b!6141894 (=> (not res!2544766) (not e!3742985))))

(assert (=> b!6141894 (= res!2544766 lt!2333253)))

(declare-fun b!6141895 () Bool)

(assert (=> b!6141895 (= e!3742989 (matchR!8267 (derivativeStep!4804 (regOne!32680 r!7292) (head!12689 (_1!36366 (get!22228 lt!2333170)))) (tail!11774 (_1!36366 (get!22228 lt!2333170)))))))

(assert (= (and d!1924280 c!1104862) b!6141883))

(assert (= (and d!1924280 (not c!1104862)) b!6141895))

(assert (= (and d!1924280 c!1104863) b!6141893))

(assert (= (and d!1924280 (not c!1104863)) b!6141889))

(assert (= (and b!6141889 c!1104861) b!6141885))

(assert (= (and b!6141889 (not c!1104861)) b!6141891))

(assert (= (and b!6141891 (not res!2544768)) b!6141894))

(assert (= (and b!6141894 res!2544766) b!6141882))

(assert (= (and b!6141882 res!2544762) b!6141887))

(assert (= (and b!6141887 res!2544769) b!6141888))

(assert (= (and b!6141894 (not res!2544763)) b!6141886))

(assert (= (and b!6141886 res!2544765) b!6141884))

(assert (= (and b!6141884 (not res!2544764)) b!6141890))

(assert (= (and b!6141890 (not res!2544767)) b!6141892))

(assert (= (or b!6141893 b!6141882 b!6141884) bm!510137))

(declare-fun m!6983178 () Bool)

(assert (=> b!6141888 m!6983178))

(assert (=> b!6141892 m!6983178))

(assert (=> b!6141883 m!6983006))

(declare-fun m!6983180 () Bool)

(assert (=> bm!510137 m!6983180))

(declare-fun m!6983182 () Bool)

(assert (=> b!6141890 m!6983182))

(assert (=> b!6141890 m!6983182))

(declare-fun m!6983184 () Bool)

(assert (=> b!6141890 m!6983184))

(assert (=> b!6141887 m!6983182))

(assert (=> b!6141887 m!6983182))

(assert (=> b!6141887 m!6983184))

(assert (=> b!6141895 m!6983178))

(assert (=> b!6141895 m!6983178))

(declare-fun m!6983186 () Bool)

(assert (=> b!6141895 m!6983186))

(assert (=> b!6141895 m!6983182))

(assert (=> b!6141895 m!6983186))

(assert (=> b!6141895 m!6983182))

(declare-fun m!6983188 () Bool)

(assert (=> b!6141895 m!6983188))

(assert (=> d!1924280 m!6983180))

(assert (=> d!1924280 m!6982398))

(assert (=> b!6140911 d!1924280))

(assert (=> b!6140911 d!1924246))

(assert (=> b!6141130 d!1923930))

(assert (=> bs!1522744 d!1924002))

(assert (=> b!6141004 d!1924192))

(assert (=> b!6141004 d!1924152))

(declare-fun d!1924282 () Bool)

(assert (=> d!1924282 (= (nullable!6077 (regOne!32680 (regOne!32681 (regOne!32680 r!7292)))) (nullableFct!2041 (regOne!32680 (regOne!32681 (regOne!32680 r!7292)))))))

(declare-fun bs!1522893 () Bool)

(assert (= bs!1522893 d!1924282))

(declare-fun m!6983190 () Bool)

(assert (=> bs!1522893 m!6983190))

(assert (=> b!6141096 d!1924282))

(declare-fun b!6141896 () Bool)

(declare-fun e!3742995 () (Set Context!10936))

(declare-fun e!3742996 () (Set Context!10936))

(assert (=> b!6141896 (= e!3742995 e!3742996)))

(declare-fun c!1104865 () Bool)

(assert (=> b!6141896 (= c!1104865 (is-Concat!24929 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292))))))))))

(declare-fun b!6141897 () Bool)

(declare-fun e!3742994 () (Set Context!10936))

(declare-fun e!3742997 () (Set Context!10936))

(assert (=> b!6141897 (= e!3742994 e!3742997)))

(declare-fun c!1104866 () Bool)

(assert (=> b!6141897 (= c!1104866 (is-Union!16084 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292))))))))))

(declare-fun b!6141898 () Bool)

(declare-fun c!1104864 () Bool)

(declare-fun e!3742992 () Bool)

(assert (=> b!6141898 (= c!1104864 e!3742992)))

(declare-fun res!2544770 () Bool)

(assert (=> b!6141898 (=> (not res!2544770) (not e!3742992))))

(assert (=> b!6141898 (= res!2544770 (is-Concat!24929 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292))))))))))

(assert (=> b!6141898 (= e!3742997 e!3742995)))

(declare-fun bm!510138 () Bool)

(declare-fun call!510144 () List!64551)

(declare-fun call!510146 () List!64551)

(assert (=> bm!510138 (= call!510144 call!510146)))

(declare-fun b!6141899 () Bool)

(declare-fun e!3742993 () (Set Context!10936))

(assert (=> b!6141899 (= e!3742993 (as set.empty (Set Context!10936)))))

(declare-fun call!510147 () (Set Context!10936))

(declare-fun bm!510139 () Bool)

(assert (=> bm!510139 (= call!510147 (derivationStepZipperDown!1332 (ite c!1104866 (regOne!32681 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292))))))) (regOne!32680 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292)))))))) (ite c!1104866 (ite (or c!1104630 c!1104628) lt!2333068 (Context!10937 call!509997)) (Context!10937 call!510146)) (h!70877 s!2326)))))

(declare-fun b!6141900 () Bool)

(declare-fun c!1104868 () Bool)

(assert (=> b!6141900 (= c!1104868 (is-Star!16084 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292))))))))))

(assert (=> b!6141900 (= e!3742996 e!3742993)))

(declare-fun b!6141902 () Bool)

(assert (=> b!6141902 (= e!3742994 (set.insert (ite (or c!1104630 c!1104628) lt!2333068 (Context!10937 call!509997)) (as set.empty (Set Context!10936))))))

(declare-fun bm!510140 () Bool)

(declare-fun call!510145 () (Set Context!10936))

(declare-fun call!510148 () (Set Context!10936))

(assert (=> bm!510140 (= call!510145 call!510148)))

(declare-fun bm!510141 () Bool)

(assert (=> bm!510141 (= call!510146 ($colon$colon!1961 (exprs!5968 (ite (or c!1104630 c!1104628) lt!2333068 (Context!10937 call!509997))) (ite (or c!1104864 c!1104865) (regTwo!32680 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292))))))) (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292)))))))))))

(declare-fun b!6141903 () Bool)

(assert (=> b!6141903 (= e!3742992 (nullable!6077 (regOne!32680 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292)))))))))))

(declare-fun b!6141904 () Bool)

(assert (=> b!6141904 (= e!3742997 (set.union call!510147 call!510148))))

(declare-fun b!6141905 () Bool)

(declare-fun call!510143 () (Set Context!10936))

(assert (=> b!6141905 (= e!3742993 call!510143)))

(declare-fun b!6141906 () Bool)

(assert (=> b!6141906 (= e!3742995 (set.union call!510147 call!510145))))

(declare-fun b!6141901 () Bool)

(assert (=> b!6141901 (= e!3742996 call!510143)))

(declare-fun d!1924284 () Bool)

(declare-fun c!1104867 () Bool)

(assert (=> d!1924284 (= c!1104867 (and (is-ElementMatch!16084 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292))))))) (= (c!1104532 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292))))))) (h!70877 s!2326))))))

(assert (=> d!1924284 (= (derivationStepZipperDown!1332 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292)))))) (ite (or c!1104630 c!1104628) lt!2333068 (Context!10937 call!509997)) (h!70877 s!2326)) e!3742994)))

(declare-fun bm!510142 () Bool)

(assert (=> bm!510142 (= call!510143 call!510145)))

(declare-fun bm!510143 () Bool)

(assert (=> bm!510143 (= call!510148 (derivationStepZipperDown!1332 (ite c!1104866 (regTwo!32681 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292))))))) (ite c!1104864 (regTwo!32680 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292))))))) (ite c!1104865 (regOne!32680 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292))))))) (reg!16413 (ite c!1104630 (regTwo!32681 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104628 (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (ite c!1104629 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292))) (reg!16413 (regTwo!32681 (regOne!32680 r!7292)))))))))) (ite (or c!1104866 c!1104864) (ite (or c!1104630 c!1104628) lt!2333068 (Context!10937 call!509997)) (Context!10937 call!510144)) (h!70877 s!2326)))))

(assert (= (and d!1924284 c!1104867) b!6141902))

(assert (= (and d!1924284 (not c!1104867)) b!6141897))

(assert (= (and b!6141897 c!1104866) b!6141904))

(assert (= (and b!6141897 (not c!1104866)) b!6141898))

(assert (= (and b!6141898 res!2544770) b!6141903))

(assert (= (and b!6141898 c!1104864) b!6141906))

(assert (= (and b!6141898 (not c!1104864)) b!6141896))

(assert (= (and b!6141896 c!1104865) b!6141901))

(assert (= (and b!6141896 (not c!1104865)) b!6141900))

(assert (= (and b!6141900 c!1104868) b!6141905))

(assert (= (and b!6141900 (not c!1104868)) b!6141899))

(assert (= (or b!6141901 b!6141905) bm!510138))

(assert (= (or b!6141901 b!6141905) bm!510142))

(assert (= (or b!6141906 bm!510138) bm!510141))

(assert (= (or b!6141906 bm!510142) bm!510140))

(assert (= (or b!6141904 bm!510140) bm!510143))

(assert (= (or b!6141904 b!6141906) bm!510139))

(declare-fun m!6983192 () Bool)

(assert (=> b!6141903 m!6983192))

(declare-fun m!6983194 () Bool)

(assert (=> b!6141902 m!6983194))

(declare-fun m!6983196 () Bool)

(assert (=> bm!510143 m!6983196))

(declare-fun m!6983198 () Bool)

(assert (=> bm!510141 m!6983198))

(declare-fun m!6983200 () Bool)

(assert (=> bm!510139 m!6983200))

(assert (=> bm!509996 d!1924284))

(declare-fun bs!1522894 () Bool)

(declare-fun d!1924286 () Bool)

(assert (= bs!1522894 (and d!1924286 d!1924254)))

(declare-fun lambda!334798 () Int)

(assert (=> bs!1522894 (= lambda!334798 lambda!334794)))

(declare-fun bs!1522895 () Bool)

(assert (= bs!1522895 (and d!1924286 d!1924242)))

(assert (=> bs!1522895 (= lambda!334798 lambda!334793)))

(declare-fun bs!1522896 () Bool)

(assert (= bs!1522896 (and d!1924286 d!1924270)))

(assert (=> bs!1522896 (= lambda!334798 lambda!334796)))

(declare-fun bs!1522897 () Bool)

(assert (= bs!1522897 (and d!1924286 d!1924182)))

(assert (=> bs!1522897 (= lambda!334798 lambda!334787)))

(declare-fun bs!1522898 () Bool)

(assert (= bs!1522898 (and d!1924286 d!1924276)))

(assert (=> bs!1522898 (= lambda!334798 lambda!334797)))

(assert (=> d!1924286 (= (nullableZipper!1865 lt!2333072) (exists!2431 lt!2333072 lambda!334798))))

(declare-fun bs!1522899 () Bool)

(assert (= bs!1522899 d!1924286))

(declare-fun m!6983202 () Bool)

(assert (=> bs!1522899 m!6983202))

(assert (=> b!6141126 d!1924286))

(declare-fun d!1924288 () Bool)

(declare-fun c!1104869 () Bool)

(assert (=> d!1924288 (= c!1104869 (isEmpty!36382 (t!378032 s!2326)))))

(declare-fun e!3742998 () Bool)

(assert (=> d!1924288 (= (matchZipper!2096 (set.union lt!2333058 lt!2333060) (t!378032 s!2326)) e!3742998)))

(declare-fun b!6141907 () Bool)

(assert (=> b!6141907 (= e!3742998 (nullableZipper!1865 (set.union lt!2333058 lt!2333060)))))

(declare-fun b!6141908 () Bool)

(assert (=> b!6141908 (= e!3742998 (matchZipper!2096 (derivationStepZipper!2057 (set.union lt!2333058 lt!2333060) (head!12689 (t!378032 s!2326))) (tail!11774 (t!378032 s!2326))))))

(assert (= (and d!1924288 c!1104869) b!6141907))

(assert (= (and d!1924288 (not c!1104869)) b!6141908))

(assert (=> d!1924288 m!6982292))

(declare-fun m!6983204 () Bool)

(assert (=> b!6141907 m!6983204))

(assert (=> b!6141908 m!6982296))

(assert (=> b!6141908 m!6982296))

(declare-fun m!6983206 () Bool)

(assert (=> b!6141908 m!6983206))

(assert (=> b!6141908 m!6982300))

(assert (=> b!6141908 m!6983206))

(assert (=> b!6141908 m!6982300))

(declare-fun m!6983208 () Bool)

(assert (=> b!6141908 m!6983208))

(assert (=> d!1924014 d!1924288))

(assert (=> d!1924014 d!1924012))

(declare-fun e!3742999 () Bool)

(declare-fun d!1924290 () Bool)

(assert (=> d!1924290 (= (matchZipper!2096 (set.union lt!2333058 lt!2333060) (t!378032 s!2326)) e!3742999)))

(declare-fun res!2544771 () Bool)

(assert (=> d!1924290 (=> res!2544771 e!3742999)))

(assert (=> d!1924290 (= res!2544771 (matchZipper!2096 lt!2333058 (t!378032 s!2326)))))

(assert (=> d!1924290 true))

(declare-fun _$48!1649 () Unit!157491)

(assert (=> d!1924290 (= (choose!45633 lt!2333058 lt!2333060 (t!378032 s!2326)) _$48!1649)))

(declare-fun b!6141909 () Bool)

(assert (=> b!6141909 (= e!3742999 (matchZipper!2096 lt!2333060 (t!378032 s!2326)))))

(assert (= (and d!1924290 (not res!2544771)) b!6141909))

(assert (=> d!1924290 m!6982540))

(assert (=> d!1924290 m!6982192))

(assert (=> b!6141909 m!6982128))

(assert (=> d!1924014 d!1924290))

(declare-fun bs!1522900 () Bool)

(declare-fun d!1924292 () Bool)

(assert (= bs!1522900 (and d!1924292 d!1924254)))

(declare-fun lambda!334799 () Int)

(assert (=> bs!1522900 (= lambda!334799 lambda!334794)))

(declare-fun bs!1522901 () Bool)

(assert (= bs!1522901 (and d!1924292 d!1924286)))

(assert (=> bs!1522901 (= lambda!334799 lambda!334798)))

(declare-fun bs!1522902 () Bool)

(assert (= bs!1522902 (and d!1924292 d!1924242)))

(assert (=> bs!1522902 (= lambda!334799 lambda!334793)))

(declare-fun bs!1522903 () Bool)

(assert (= bs!1522903 (and d!1924292 d!1924270)))

(assert (=> bs!1522903 (= lambda!334799 lambda!334796)))

(declare-fun bs!1522904 () Bool)

(assert (= bs!1522904 (and d!1924292 d!1924182)))

(assert (=> bs!1522904 (= lambda!334799 lambda!334787)))

(declare-fun bs!1522905 () Bool)

(assert (= bs!1522905 (and d!1924292 d!1924276)))

(assert (=> bs!1522905 (= lambda!334799 lambda!334797)))

(assert (=> d!1924292 (= (nullableZipper!1865 lt!2333058) (exists!2431 lt!2333058 lambda!334799))))

(declare-fun bs!1522906 () Bool)

(assert (= bs!1522906 d!1924292))

(declare-fun m!6983210 () Bool)

(assert (=> bs!1522906 m!6983210))

(assert (=> b!6141128 d!1924292))

(assert (=> d!1923948 d!1924128))

(assert (=> bm!509966 d!1924224))

(declare-fun d!1924294 () Bool)

(assert (=> d!1924294 (= (head!12690 (unfocusZipperList!1505 zl!343)) (h!70875 (unfocusZipperList!1505 zl!343)))))

(assert (=> b!6140877 d!1924294))

(declare-fun bs!1522907 () Bool)

(declare-fun b!6141918 () Bool)

(assert (= bs!1522907 (and b!6141918 b!6140666)))

(declare-fun lambda!334800 () Int)

(assert (=> bs!1522907 (not (= lambda!334800 lambda!334692))))

(declare-fun bs!1522908 () Bool)

(assert (= bs!1522908 (and b!6141918 d!1923964)))

(assert (=> bs!1522908 (not (= lambda!334800 lambda!334729))))

(declare-fun bs!1522909 () Bool)

(assert (= bs!1522909 (and b!6141918 b!6140965)))

(assert (=> bs!1522909 (= (and (= (reg!16413 (regTwo!32681 r!7292)) (reg!16413 r!7292)) (= (regTwo!32681 r!7292) r!7292)) (= lambda!334800 lambda!334734))))

(declare-fun bs!1522910 () Bool)

(assert (= bs!1522910 (and b!6141918 d!1924134)))

(assert (=> bs!1522910 (not (= lambda!334800 lambda!334779))))

(assert (=> bs!1522910 (not (= lambda!334800 lambda!334780))))

(declare-fun bs!1522911 () Bool)

(assert (= bs!1522911 (and b!6141918 b!6140964)))

(assert (=> bs!1522911 (not (= lambda!334800 lambda!334735))))

(assert (=> bs!1522907 (not (= lambda!334800 lambda!334693))))

(assert (=> bs!1522908 (not (= lambda!334800 lambda!334728))))

(declare-fun bs!1522912 () Bool)

(assert (= bs!1522912 (and b!6141918 d!1924122)))

(assert (=> bs!1522912 (not (= lambda!334800 lambda!334774))))

(declare-fun bs!1522913 () Bool)

(assert (= bs!1522913 (and b!6141918 d!1923962)))

(assert (=> bs!1522913 (not (= lambda!334800 lambda!334723))))

(assert (=> b!6141918 true))

(assert (=> b!6141918 true))

(declare-fun bs!1522914 () Bool)

(declare-fun b!6141917 () Bool)

(assert (= bs!1522914 (and b!6141917 d!1923964)))

(declare-fun lambda!334801 () Int)

(assert (=> bs!1522914 (= (and (= (regOne!32680 (regTwo!32681 r!7292)) (regOne!32680 r!7292)) (= (regTwo!32680 (regTwo!32681 r!7292)) (regTwo!32680 r!7292))) (= lambda!334801 lambda!334729))))

(declare-fun bs!1522915 () Bool)

(assert (= bs!1522915 (and b!6141917 b!6140965)))

(assert (=> bs!1522915 (not (= lambda!334801 lambda!334734))))

(declare-fun bs!1522916 () Bool)

(assert (= bs!1522916 (and b!6141917 d!1924134)))

(assert (=> bs!1522916 (not (= lambda!334801 lambda!334779))))

(assert (=> bs!1522916 (= (and (= (regOne!32680 (regTwo!32681 r!7292)) (regOne!32680 r!7292)) (= (regTwo!32680 (regTwo!32681 r!7292)) (regTwo!32680 r!7292))) (= lambda!334801 lambda!334780))))

(declare-fun bs!1522917 () Bool)

(assert (= bs!1522917 (and b!6141917 b!6140964)))

(assert (=> bs!1522917 (= (and (= (regOne!32680 (regTwo!32681 r!7292)) (regOne!32680 r!7292)) (= (regTwo!32680 (regTwo!32681 r!7292)) (regTwo!32680 r!7292))) (= lambda!334801 lambda!334735))))

(declare-fun bs!1522918 () Bool)

(assert (= bs!1522918 (and b!6141917 b!6140666)))

(assert (=> bs!1522918 (= (and (= (regOne!32680 (regTwo!32681 r!7292)) (regOne!32680 r!7292)) (= (regTwo!32680 (regTwo!32681 r!7292)) (regTwo!32680 r!7292))) (= lambda!334801 lambda!334693))))

(assert (=> bs!1522914 (not (= lambda!334801 lambda!334728))))

(assert (=> bs!1522918 (not (= lambda!334801 lambda!334692))))

(declare-fun bs!1522919 () Bool)

(assert (= bs!1522919 (and b!6141917 b!6141918)))

(assert (=> bs!1522919 (not (= lambda!334801 lambda!334800))))

(declare-fun bs!1522920 () Bool)

(assert (= bs!1522920 (and b!6141917 d!1924122)))

(assert (=> bs!1522920 (not (= lambda!334801 lambda!334774))))

(declare-fun bs!1522921 () Bool)

(assert (= bs!1522921 (and b!6141917 d!1923962)))

(assert (=> bs!1522921 (not (= lambda!334801 lambda!334723))))

(assert (=> b!6141917 true))

(assert (=> b!6141917 true))

(declare-fun call!510149 () Bool)

(declare-fun bm!510144 () Bool)

(declare-fun c!1104870 () Bool)

(assert (=> bm!510144 (= call!510149 (Exists!3154 (ite c!1104870 lambda!334800 lambda!334801)))))

(declare-fun b!6141910 () Bool)

(declare-fun e!3743003 () Bool)

(declare-fun e!3743000 () Bool)

(assert (=> b!6141910 (= e!3743003 e!3743000)))

(assert (=> b!6141910 (= c!1104870 (is-Star!16084 (regTwo!32681 r!7292)))))

(declare-fun b!6141911 () Bool)

(declare-fun e!3743005 () Bool)

(assert (=> b!6141911 (= e!3743005 (matchRSpec!3185 (regTwo!32681 (regTwo!32681 r!7292)) s!2326))))

(declare-fun b!6141912 () Bool)

(declare-fun c!1104872 () Bool)

(assert (=> b!6141912 (= c!1104872 (is-ElementMatch!16084 (regTwo!32681 r!7292)))))

(declare-fun e!3743002 () Bool)

(declare-fun e!3743006 () Bool)

(assert (=> b!6141912 (= e!3743002 e!3743006)))

(declare-fun b!6141913 () Bool)

(declare-fun res!2544772 () Bool)

(declare-fun e!3743004 () Bool)

(assert (=> b!6141913 (=> res!2544772 e!3743004)))

(declare-fun call!510150 () Bool)

(assert (=> b!6141913 (= res!2544772 call!510150)))

(assert (=> b!6141913 (= e!3743000 e!3743004)))

(declare-fun b!6141914 () Bool)

(declare-fun e!3743001 () Bool)

(assert (=> b!6141914 (= e!3743001 call!510150)))

(declare-fun b!6141915 () Bool)

(assert (=> b!6141915 (= e!3743003 e!3743005)))

(declare-fun res!2544774 () Bool)

(assert (=> b!6141915 (= res!2544774 (matchRSpec!3185 (regOne!32681 (regTwo!32681 r!7292)) s!2326))))

(assert (=> b!6141915 (=> res!2544774 e!3743005)))

(assert (=> b!6141917 (= e!3743000 call!510149)))

(assert (=> b!6141918 (= e!3743004 call!510149)))

(declare-fun b!6141919 () Bool)

(assert (=> b!6141919 (= e!3743006 (= s!2326 (Cons!64429 (c!1104532 (regTwo!32681 r!7292)) Nil!64429)))))

(declare-fun b!6141920 () Bool)

(declare-fun c!1104871 () Bool)

(assert (=> b!6141920 (= c!1104871 (is-Union!16084 (regTwo!32681 r!7292)))))

(assert (=> b!6141920 (= e!3743006 e!3743003)))

(declare-fun bm!510145 () Bool)

(assert (=> bm!510145 (= call!510150 (isEmpty!36382 s!2326))))

(declare-fun b!6141916 () Bool)

(assert (=> b!6141916 (= e!3743001 e!3743002)))

(declare-fun res!2544773 () Bool)

(assert (=> b!6141916 (= res!2544773 (not (is-EmptyLang!16084 (regTwo!32681 r!7292))))))

(assert (=> b!6141916 (=> (not res!2544773) (not e!3743002))))

(declare-fun d!1924296 () Bool)

(declare-fun c!1104873 () Bool)

(assert (=> d!1924296 (= c!1104873 (is-EmptyExpr!16084 (regTwo!32681 r!7292)))))

(assert (=> d!1924296 (= (matchRSpec!3185 (regTwo!32681 r!7292) s!2326) e!3743001)))

(assert (= (and d!1924296 c!1104873) b!6141914))

(assert (= (and d!1924296 (not c!1104873)) b!6141916))

(assert (= (and b!6141916 res!2544773) b!6141912))

(assert (= (and b!6141912 c!1104872) b!6141919))

(assert (= (and b!6141912 (not c!1104872)) b!6141920))

(assert (= (and b!6141920 c!1104871) b!6141915))

(assert (= (and b!6141920 (not c!1104871)) b!6141910))

(assert (= (and b!6141915 (not res!2544774)) b!6141911))

(assert (= (and b!6141910 c!1104870) b!6141913))

(assert (= (and b!6141910 (not c!1104870)) b!6141917))

(assert (= (and b!6141913 (not res!2544772)) b!6141918))

(assert (= (or b!6141918 b!6141917) bm!510144))

(assert (= (or b!6141914 b!6141913) bm!510145))

(declare-fun m!6983212 () Bool)

(assert (=> bm!510144 m!6983212))

(declare-fun m!6983214 () Bool)

(assert (=> b!6141911 m!6983214))

(declare-fun m!6983216 () Bool)

(assert (=> b!6141915 m!6983216))

(assert (=> bm!510145 m!6982342))

(assert (=> b!6140958 d!1924296))

(declare-fun d!1924298 () Bool)

(declare-fun res!2544775 () Bool)

(declare-fun e!3743007 () Bool)

(assert (=> d!1924298 (=> res!2544775 e!3743007)))

(assert (=> d!1924298 (= res!2544775 (is-Nil!64427 (exprs!5968 lt!2333068)))))

(assert (=> d!1924298 (= (forall!15205 (exprs!5968 lt!2333068) lambda!334736) e!3743007)))

(declare-fun b!6141921 () Bool)

(declare-fun e!3743008 () Bool)

(assert (=> b!6141921 (= e!3743007 e!3743008)))

(declare-fun res!2544776 () Bool)

(assert (=> b!6141921 (=> (not res!2544776) (not e!3743008))))

(assert (=> b!6141921 (= res!2544776 (dynLambda!25391 lambda!334736 (h!70875 (exprs!5968 lt!2333068))))))

(declare-fun b!6141922 () Bool)

(assert (=> b!6141922 (= e!3743008 (forall!15205 (t!378030 (exprs!5968 lt!2333068)) lambda!334736))))

(assert (= (and d!1924298 (not res!2544775)) b!6141921))

(assert (= (and b!6141921 res!2544776) b!6141922))

(declare-fun b_lambda!233753 () Bool)

(assert (=> (not b_lambda!233753) (not b!6141921)))

(declare-fun m!6983218 () Bool)

(assert (=> b!6141921 m!6983218))

(declare-fun m!6983220 () Bool)

(assert (=> b!6141922 m!6983220))

(assert (=> d!1923976 d!1924298))

(declare-fun d!1924300 () Bool)

(declare-fun c!1104874 () Bool)

(assert (=> d!1924300 (= c!1104874 (isEmpty!36382 (tail!11774 (t!378032 s!2326))))))

(declare-fun e!3743009 () Bool)

(assert (=> d!1924300 (= (matchZipper!2096 (derivationStepZipper!2057 lt!2333071 (head!12689 (t!378032 s!2326))) (tail!11774 (t!378032 s!2326))) e!3743009)))

(declare-fun b!6141923 () Bool)

(assert (=> b!6141923 (= e!3743009 (nullableZipper!1865 (derivationStepZipper!2057 lt!2333071 (head!12689 (t!378032 s!2326)))))))

(declare-fun b!6141924 () Bool)

(assert (=> b!6141924 (= e!3743009 (matchZipper!2096 (derivationStepZipper!2057 (derivationStepZipper!2057 lt!2333071 (head!12689 (t!378032 s!2326))) (head!12689 (tail!11774 (t!378032 s!2326)))) (tail!11774 (tail!11774 (t!378032 s!2326)))))))

(assert (= (and d!1924300 c!1104874) b!6141923))

(assert (= (and d!1924300 (not c!1104874)) b!6141924))

(assert (=> d!1924300 m!6982300))

(assert (=> d!1924300 m!6982900))

(assert (=> b!6141923 m!6982356))

(declare-fun m!6983222 () Bool)

(assert (=> b!6141923 m!6983222))

(assert (=> b!6141924 m!6982300))

(assert (=> b!6141924 m!6982904))

(assert (=> b!6141924 m!6982356))

(assert (=> b!6141924 m!6982904))

(declare-fun m!6983224 () Bool)

(assert (=> b!6141924 m!6983224))

(assert (=> b!6141924 m!6982300))

(assert (=> b!6141924 m!6982908))

(assert (=> b!6141924 m!6983224))

(assert (=> b!6141924 m!6982908))

(declare-fun m!6983226 () Bool)

(assert (=> b!6141924 m!6983226))

(assert (=> b!6140846 d!1924300))

(declare-fun bs!1522922 () Bool)

(declare-fun d!1924302 () Bool)

(assert (= bs!1522922 (and d!1924302 d!1924164)))

(declare-fun lambda!334802 () Int)

(assert (=> bs!1522922 (= lambda!334802 lambda!334783)))

(declare-fun bs!1522923 () Bool)

(assert (= bs!1522923 (and d!1924302 d!1924218)))

(assert (=> bs!1522923 (= lambda!334802 lambda!334792)))

(declare-fun bs!1522924 () Bool)

(assert (= bs!1522924 (and d!1924302 d!1924262)))

(assert (=> bs!1522924 (= lambda!334802 lambda!334795)))

(declare-fun bs!1522925 () Bool)

(assert (= bs!1522925 (and d!1924302 d!1924210)))

(assert (=> bs!1522925 (= lambda!334802 lambda!334791)))

(declare-fun bs!1522926 () Bool)

(assert (= bs!1522926 (and d!1924302 d!1923986)))

(assert (=> bs!1522926 (= (= (head!12689 (t!378032 s!2326)) (h!70877 s!2326)) (= lambda!334802 lambda!334739))))

(declare-fun bs!1522927 () Bool)

(assert (= bs!1522927 (and d!1924302 d!1924148)))

(assert (=> bs!1522927 (= (= (head!12689 (t!378032 s!2326)) (head!12689 s!2326)) (= lambda!334802 lambda!334781))))

(declare-fun bs!1522928 () Bool)

(assert (= bs!1522928 (and d!1924302 d!1924174)))

(assert (=> bs!1522928 (= lambda!334802 lambda!334784)))

(declare-fun bs!1522929 () Bool)

(assert (= bs!1522929 (and d!1924302 b!6140677)))

(assert (=> bs!1522929 (= (= (head!12689 (t!378032 s!2326)) (h!70877 s!2326)) (= lambda!334802 lambda!334694))))

(assert (=> d!1924302 true))

(assert (=> d!1924302 (= (derivationStepZipper!2057 lt!2333071 (head!12689 (t!378032 s!2326))) (flatMap!1589 lt!2333071 lambda!334802))))

(declare-fun bs!1522930 () Bool)

(assert (= bs!1522930 d!1924302))

(declare-fun m!6983228 () Bool)

(assert (=> bs!1522930 m!6983228))

(assert (=> b!6140846 d!1924302))

(assert (=> b!6140846 d!1924166))

(assert (=> b!6140846 d!1924168))

(declare-fun d!1924304 () Bool)

(assert (=> d!1924304 (= (nullable!6077 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292)))) (nullableFct!2041 (regOne!32680 (regTwo!32681 (regOne!32680 r!7292)))))))

(declare-fun bs!1522931 () Bool)

(assert (= bs!1522931 d!1924304))

(declare-fun m!6983230 () Bool)

(assert (=> bs!1522931 m!6983230))

(assert (=> b!6141085 d!1924304))

(declare-fun c!1104875 () Bool)

(declare-fun bm!510146 () Bool)

(declare-fun call!510151 () Bool)

(declare-fun c!1104876 () Bool)

(assert (=> bm!510146 (= call!510151 (validRegex!7820 (ite c!1104876 (reg!16413 lt!2333147) (ite c!1104875 (regOne!32681 lt!2333147) (regOne!32680 lt!2333147)))))))

(declare-fun b!6141926 () Bool)

(declare-fun res!2544780 () Bool)

(declare-fun e!3743015 () Bool)

(assert (=> b!6141926 (=> res!2544780 e!3743015)))

(assert (=> b!6141926 (= res!2544780 (not (is-Concat!24929 lt!2333147)))))

(declare-fun e!3743016 () Bool)

(assert (=> b!6141926 (= e!3743016 e!3743015)))

(declare-fun b!6141927 () Bool)

(declare-fun res!2544781 () Bool)

(declare-fun e!3743013 () Bool)

(assert (=> b!6141927 (=> (not res!2544781) (not e!3743013))))

(declare-fun call!510152 () Bool)

(assert (=> b!6141927 (= res!2544781 call!510152)))

(assert (=> b!6141927 (= e!3743016 e!3743013)))

(declare-fun b!6141928 () Bool)

(declare-fun e!3743011 () Bool)

(declare-fun call!510153 () Bool)

(assert (=> b!6141928 (= e!3743011 call!510153)))

(declare-fun b!6141929 () Bool)

(declare-fun e!3743014 () Bool)

(declare-fun e!3743012 () Bool)

(assert (=> b!6141929 (= e!3743014 e!3743012)))

(declare-fun res!2544779 () Bool)

(assert (=> b!6141929 (= res!2544779 (not (nullable!6077 (reg!16413 lt!2333147))))))

(assert (=> b!6141929 (=> (not res!2544779) (not e!3743012))))

(declare-fun b!6141930 () Bool)

(assert (=> b!6141930 (= e!3743012 call!510151)))

(declare-fun b!6141931 () Bool)

(assert (=> b!6141931 (= e!3743014 e!3743016)))

(assert (=> b!6141931 (= c!1104875 (is-Union!16084 lt!2333147))))

(declare-fun b!6141932 () Bool)

(declare-fun e!3743010 () Bool)

(assert (=> b!6141932 (= e!3743010 e!3743014)))

(assert (=> b!6141932 (= c!1104876 (is-Star!16084 lt!2333147))))

(declare-fun bm!510147 () Bool)

(assert (=> bm!510147 (= call!510153 (validRegex!7820 (ite c!1104875 (regTwo!32681 lt!2333147) (regTwo!32680 lt!2333147))))))

(declare-fun b!6141925 () Bool)

(assert (=> b!6141925 (= e!3743013 call!510153)))

(declare-fun d!1924306 () Bool)

(declare-fun res!2544777 () Bool)

(assert (=> d!1924306 (=> res!2544777 e!3743010)))

(assert (=> d!1924306 (= res!2544777 (is-ElementMatch!16084 lt!2333147))))

(assert (=> d!1924306 (= (validRegex!7820 lt!2333147) e!3743010)))

(declare-fun bm!510148 () Bool)

(assert (=> bm!510148 (= call!510152 call!510151)))

(declare-fun b!6141933 () Bool)

(assert (=> b!6141933 (= e!3743015 e!3743011)))

(declare-fun res!2544778 () Bool)

(assert (=> b!6141933 (=> (not res!2544778) (not e!3743011))))

(assert (=> b!6141933 (= res!2544778 call!510152)))

(assert (= (and d!1924306 (not res!2544777)) b!6141932))

(assert (= (and b!6141932 c!1104876) b!6141929))

(assert (= (and b!6141932 (not c!1104876)) b!6141931))

(assert (= (and b!6141929 res!2544779) b!6141930))

(assert (= (and b!6141931 c!1104875) b!6141927))

(assert (= (and b!6141931 (not c!1104875)) b!6141926))

(assert (= (and b!6141927 res!2544781) b!6141925))

(assert (= (and b!6141926 (not res!2544780)) b!6141933))

(assert (= (and b!6141933 res!2544778) b!6141928))

(assert (= (or b!6141925 b!6141928) bm!510147))

(assert (= (or b!6141927 b!6141933) bm!510148))

(assert (= (or b!6141930 bm!510148) bm!510146))

(declare-fun m!6983232 () Bool)

(assert (=> bm!510146 m!6983232))

(declare-fun m!6983234 () Bool)

(assert (=> b!6141929 m!6983234))

(declare-fun m!6983236 () Bool)

(assert (=> bm!510147 m!6983236))

(assert (=> d!1923932 d!1924306))

(assert (=> d!1923932 d!1923952))

(assert (=> d!1923932 d!1923954))

(declare-fun d!1924308 () Bool)

(assert (=> d!1924308 (= (isConcat!1024 lt!2333153) (is-Concat!24929 lt!2333153))))

(assert (=> b!6140836 d!1924308))

(declare-fun d!1924310 () Bool)

(declare-fun res!2544796 () Bool)

(declare-fun e!3743034 () Bool)

(assert (=> d!1924310 (=> res!2544796 e!3743034)))

(assert (=> d!1924310 (= res!2544796 (is-EmptyExpr!16084 (regOne!32681 (regOne!32680 r!7292))))))

(assert (=> d!1924310 (= (nullableFct!2041 (regOne!32681 (regOne!32680 r!7292))) e!3743034)))

(declare-fun b!6141948 () Bool)

(declare-fun e!3743033 () Bool)

(declare-fun e!3743030 () Bool)

(assert (=> b!6141948 (= e!3743033 e!3743030)))

(declare-fun c!1104879 () Bool)

(assert (=> b!6141948 (= c!1104879 (is-Union!16084 (regOne!32681 (regOne!32680 r!7292))))))

(declare-fun b!6141949 () Bool)

(declare-fun e!3743029 () Bool)

(declare-fun call!510159 () Bool)

(assert (=> b!6141949 (= e!3743029 call!510159)))

(declare-fun b!6141950 () Bool)

(declare-fun e!3743031 () Bool)

(assert (=> b!6141950 (= e!3743031 call!510159)))

(declare-fun b!6141951 () Bool)

(declare-fun e!3743032 () Bool)

(assert (=> b!6141951 (= e!3743032 e!3743033)))

(declare-fun res!2544794 () Bool)

(assert (=> b!6141951 (=> res!2544794 e!3743033)))

(assert (=> b!6141951 (= res!2544794 (is-Star!16084 (regOne!32681 (regOne!32680 r!7292))))))

(declare-fun bm!510153 () Bool)

(declare-fun call!510158 () Bool)

(assert (=> bm!510153 (= call!510158 (nullable!6077 (ite c!1104879 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292))))))))

(declare-fun bm!510154 () Bool)

(assert (=> bm!510154 (= call!510159 (nullable!6077 (ite c!1104879 (regTwo!32681 (regOne!32681 (regOne!32680 r!7292))) (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))))))))

(declare-fun b!6141952 () Bool)

(assert (=> b!6141952 (= e!3743030 e!3743031)))

(declare-fun res!2544792 () Bool)

(assert (=> b!6141952 (= res!2544792 call!510158)))

(assert (=> b!6141952 (=> res!2544792 e!3743031)))

(declare-fun b!6141953 () Bool)

(assert (=> b!6141953 (= e!3743030 e!3743029)))

(declare-fun res!2544795 () Bool)

(assert (=> b!6141953 (= res!2544795 call!510158)))

(assert (=> b!6141953 (=> (not res!2544795) (not e!3743029))))

(declare-fun b!6141954 () Bool)

(assert (=> b!6141954 (= e!3743034 e!3743032)))

(declare-fun res!2544793 () Bool)

(assert (=> b!6141954 (=> (not res!2544793) (not e!3743032))))

(assert (=> b!6141954 (= res!2544793 (and (not (is-EmptyLang!16084 (regOne!32681 (regOne!32680 r!7292)))) (not (is-ElementMatch!16084 (regOne!32681 (regOne!32680 r!7292))))))))

(assert (= (and d!1924310 (not res!2544796)) b!6141954))

(assert (= (and b!6141954 res!2544793) b!6141951))

(assert (= (and b!6141951 (not res!2544794)) b!6141948))

(assert (= (and b!6141948 c!1104879) b!6141952))

(assert (= (and b!6141948 (not c!1104879)) b!6141953))

(assert (= (and b!6141952 (not res!2544792)) b!6141950))

(assert (= (and b!6141953 res!2544795) b!6141949))

(assert (= (or b!6141950 b!6141949) bm!510154))

(assert (= (or b!6141952 b!6141953) bm!510153))

(declare-fun m!6983238 () Bool)

(assert (=> bm!510153 m!6983238))

(declare-fun m!6983240 () Bool)

(assert (=> bm!510154 m!6983240))

(assert (=> d!1923988 d!1924310))

(declare-fun b!6141955 () Bool)

(declare-fun e!3743038 () (Set Context!10936))

(declare-fun e!3743039 () (Set Context!10936))

(assert (=> b!6141955 (= e!3743038 e!3743039)))

(declare-fun c!1104881 () Bool)

(assert (=> b!6141955 (= c!1104881 (is-Concat!24929 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))))))))

(declare-fun b!6141956 () Bool)

(declare-fun e!3743037 () (Set Context!10936))

(declare-fun e!3743040 () (Set Context!10936))

(assert (=> b!6141956 (= e!3743037 e!3743040)))

(declare-fun c!1104882 () Bool)

(assert (=> b!6141956 (= c!1104882 (is-Union!16084 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))))))))

(declare-fun b!6141957 () Bool)

(declare-fun c!1104880 () Bool)

(declare-fun e!3743035 () Bool)

(assert (=> b!6141957 (= c!1104880 e!3743035)))

(declare-fun res!2544797 () Bool)

(assert (=> b!6141957 (=> (not res!2544797) (not e!3743035))))

(assert (=> b!6141957 (= res!2544797 (is-Concat!24929 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))))))))

(assert (=> b!6141957 (= e!3743040 e!3743038)))

(declare-fun bm!510155 () Bool)

(declare-fun call!510161 () List!64551)

(declare-fun call!510163 () List!64551)

(assert (=> bm!510155 (= call!510161 call!510163)))

(declare-fun b!6141958 () Bool)

(declare-fun e!3743036 () (Set Context!10936))

(assert (=> b!6141958 (= e!3743036 (as set.empty (Set Context!10936)))))

(declare-fun call!510164 () (Set Context!10936))

(declare-fun bm!510156 () Bool)

(assert (=> bm!510156 (= call!510164 (derivationStepZipperDown!1332 (ite c!1104882 (regOne!32681 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))))) (regOne!32680 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343))))))) (ite c!1104882 (ite c!1104646 lt!2333068 (Context!10937 call!510014)) (Context!10937 call!510163)) (h!70877 s!2326)))))

(declare-fun b!6141959 () Bool)

(declare-fun c!1104884 () Bool)

(assert (=> b!6141959 (= c!1104884 (is-Star!16084 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))))))))

(assert (=> b!6141959 (= e!3743039 e!3743036)))

(declare-fun b!6141961 () Bool)

(assert (=> b!6141961 (= e!3743037 (set.insert (ite c!1104646 lt!2333068 (Context!10937 call!510014)) (as set.empty (Set Context!10936))))))

(declare-fun bm!510157 () Bool)

(declare-fun call!510162 () (Set Context!10936))

(declare-fun call!510165 () (Set Context!10936))

(assert (=> bm!510157 (= call!510162 call!510165)))

(declare-fun bm!510158 () Bool)

(assert (=> bm!510158 (= call!510163 ($colon$colon!1961 (exprs!5968 (ite c!1104646 lt!2333068 (Context!10937 call!510014))) (ite (or c!1104880 c!1104881) (regTwo!32680 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))))) (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343))))))))))

(declare-fun b!6141962 () Bool)

(assert (=> b!6141962 (= e!3743035 (nullable!6077 (regOne!32680 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343))))))))))

(declare-fun b!6141963 () Bool)

(assert (=> b!6141963 (= e!3743040 (set.union call!510164 call!510165))))

(declare-fun b!6141964 () Bool)

(declare-fun call!510160 () (Set Context!10936))

(assert (=> b!6141964 (= e!3743036 call!510160)))

(declare-fun b!6141965 () Bool)

(assert (=> b!6141965 (= e!3743038 (set.union call!510164 call!510162))))

(declare-fun b!6141960 () Bool)

(assert (=> b!6141960 (= e!3743039 call!510160)))

(declare-fun c!1104883 () Bool)

(declare-fun d!1924312 () Bool)

(assert (=> d!1924312 (= c!1104883 (and (is-ElementMatch!16084 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))))) (= (c!1104532 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))))) (h!70877 s!2326))))))

(assert (=> d!1924312 (= (derivationStepZipperDown!1332 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343))))) (ite c!1104646 lt!2333068 (Context!10937 call!510014)) (h!70877 s!2326)) e!3743037)))

(declare-fun bm!510159 () Bool)

(assert (=> bm!510159 (= call!510160 call!510162)))

(declare-fun bm!510160 () Bool)

(assert (=> bm!510160 (= call!510165 (derivationStepZipperDown!1332 (ite c!1104882 (regTwo!32681 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))))) (ite c!1104880 (regTwo!32680 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))))) (ite c!1104881 (regOne!32680 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))))) (reg!16413 (ite c!1104646 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343))))))))) (ite (or c!1104882 c!1104880) (ite c!1104646 lt!2333068 (Context!10937 call!510014)) (Context!10937 call!510161)) (h!70877 s!2326)))))

(assert (= (and d!1924312 c!1104883) b!6141961))

(assert (= (and d!1924312 (not c!1104883)) b!6141956))

(assert (= (and b!6141956 c!1104882) b!6141963))

(assert (= (and b!6141956 (not c!1104882)) b!6141957))

(assert (= (and b!6141957 res!2544797) b!6141962))

(assert (= (and b!6141957 c!1104880) b!6141965))

(assert (= (and b!6141957 (not c!1104880)) b!6141955))

(assert (= (and b!6141955 c!1104881) b!6141960))

(assert (= (and b!6141955 (not c!1104881)) b!6141959))

(assert (= (and b!6141959 c!1104884) b!6141964))

(assert (= (and b!6141959 (not c!1104884)) b!6141958))

(assert (= (or b!6141960 b!6141964) bm!510155))

(assert (= (or b!6141960 b!6141964) bm!510159))

(assert (= (or b!6141965 bm!510155) bm!510158))

(assert (= (or b!6141965 bm!510159) bm!510157))

(assert (= (or b!6141963 bm!510157) bm!510160))

(assert (= (or b!6141963 b!6141965) bm!510156))

(declare-fun m!6983242 () Bool)

(assert (=> b!6141962 m!6983242))

(declare-fun m!6983244 () Bool)

(assert (=> b!6141961 m!6983244))

(declare-fun m!6983246 () Bool)

(assert (=> bm!510160 m!6983246))

(declare-fun m!6983248 () Bool)

(assert (=> bm!510158 m!6983248))

(declare-fun m!6983250 () Bool)

(assert (=> bm!510156 m!6983250))

(assert (=> bm!510007 d!1924312))

(declare-fun d!1924314 () Bool)

(assert (=> d!1924314 (= (isEmpty!36378 (t!378030 (unfocusZipperList!1505 zl!343))) (is-Nil!64427 (t!378030 (unfocusZipperList!1505 zl!343))))))

(assert (=> b!6140873 d!1924314))

(declare-fun d!1924316 () Bool)

(declare-fun res!2544802 () Bool)

(declare-fun e!3743046 () Bool)

(assert (=> d!1924316 (=> res!2544802 e!3743046)))

(assert (=> d!1924316 (= res!2544802 (is-EmptyExpr!16084 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(assert (=> d!1924316 (= (nullableFct!2041 (h!70875 (exprs!5968 (h!70876 zl!343)))) e!3743046)))

(declare-fun b!6141966 () Bool)

(declare-fun e!3743045 () Bool)

(declare-fun e!3743042 () Bool)

(assert (=> b!6141966 (= e!3743045 e!3743042)))

(declare-fun c!1104885 () Bool)

(assert (=> b!6141966 (= c!1104885 (is-Union!16084 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun b!6141967 () Bool)

(declare-fun e!3743041 () Bool)

(declare-fun call!510167 () Bool)

(assert (=> b!6141967 (= e!3743041 call!510167)))

(declare-fun b!6141968 () Bool)

(declare-fun e!3743043 () Bool)

(assert (=> b!6141968 (= e!3743043 call!510167)))

(declare-fun b!6141969 () Bool)

(declare-fun e!3743044 () Bool)

(assert (=> b!6141969 (= e!3743044 e!3743045)))

(declare-fun res!2544800 () Bool)

(assert (=> b!6141969 (=> res!2544800 e!3743045)))

(assert (=> b!6141969 (= res!2544800 (is-Star!16084 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun bm!510161 () Bool)

(declare-fun call!510166 () Bool)

(assert (=> bm!510161 (= call!510166 (nullable!6077 (ite c!1104885 (regOne!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regOne!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))))))))

(declare-fun bm!510162 () Bool)

(assert (=> bm!510162 (= call!510167 (nullable!6077 (ite c!1104885 (regTwo!32681 (h!70875 (exprs!5968 (h!70876 zl!343)))) (regTwo!32680 (h!70875 (exprs!5968 (h!70876 zl!343)))))))))

(declare-fun b!6141970 () Bool)

(assert (=> b!6141970 (= e!3743042 e!3743043)))

(declare-fun res!2544798 () Bool)

(assert (=> b!6141970 (= res!2544798 call!510166)))

(assert (=> b!6141970 (=> res!2544798 e!3743043)))

(declare-fun b!6141971 () Bool)

(assert (=> b!6141971 (= e!3743042 e!3743041)))

(declare-fun res!2544801 () Bool)

(assert (=> b!6141971 (= res!2544801 call!510166)))

(assert (=> b!6141971 (=> (not res!2544801) (not e!3743041))))

(declare-fun b!6141972 () Bool)

(assert (=> b!6141972 (= e!3743046 e!3743044)))

(declare-fun res!2544799 () Bool)

(assert (=> b!6141972 (=> (not res!2544799) (not e!3743044))))

(assert (=> b!6141972 (= res!2544799 (and (not (is-EmptyLang!16084 (h!70875 (exprs!5968 (h!70876 zl!343))))) (not (is-ElementMatch!16084 (h!70875 (exprs!5968 (h!70876 zl!343)))))))))

(assert (= (and d!1924316 (not res!2544802)) b!6141972))

(assert (= (and b!6141972 res!2544799) b!6141969))

(assert (= (and b!6141969 (not res!2544800)) b!6141966))

(assert (= (and b!6141966 c!1104885) b!6141970))

(assert (= (and b!6141966 (not c!1104885)) b!6141971))

(assert (= (and b!6141970 (not res!2544798)) b!6141968))

(assert (= (and b!6141971 res!2544801) b!6141967))

(assert (= (or b!6141968 b!6141967) bm!510162))

(assert (= (or b!6141970 b!6141971) bm!510161))

(declare-fun m!6983252 () Bool)

(assert (=> bm!510161 m!6983252))

(declare-fun m!6983254 () Bool)

(assert (=> bm!510162 m!6983254))

(assert (=> d!1924006 d!1924316))

(declare-fun bs!1522932 () Bool)

(declare-fun d!1924318 () Bool)

(assert (= bs!1522932 (and d!1924318 d!1923942)))

(declare-fun lambda!334803 () Int)

(assert (=> bs!1522932 (= lambda!334803 lambda!334713)))

(declare-fun bs!1522933 () Bool)

(assert (= bs!1522933 (and d!1924318 d!1923940)))

(assert (=> bs!1522933 (= lambda!334803 lambda!334710)))

(declare-fun bs!1522934 () Bool)

(assert (= bs!1522934 (and d!1924318 d!1923976)))

(assert (=> bs!1522934 (= lambda!334803 lambda!334736)))

(declare-fun bs!1522935 () Bool)

(assert (= bs!1522935 (and d!1924318 d!1924204)))

(assert (=> bs!1522935 (= lambda!334803 lambda!334790)))

(declare-fun bs!1522936 () Bool)

(assert (= bs!1522936 (and d!1924318 d!1924154)))

(assert (=> bs!1522936 (= lambda!334803 lambda!334782)))

(declare-fun bs!1522937 () Bool)

(assert (= bs!1522937 (and d!1924318 d!1923944)))

(assert (=> bs!1522937 (= lambda!334803 lambda!334714)))

(declare-fun bs!1522938 () Bool)

(assert (= bs!1522938 (and d!1924318 d!1923952)))

(assert (=> bs!1522938 (= lambda!334803 lambda!334717)))

(declare-fun bs!1522939 () Bool)

(assert (= bs!1522939 (and d!1924318 d!1924184)))

(assert (=> bs!1522939 (= lambda!334803 lambda!334788)))

(declare-fun bs!1522940 () Bool)

(assert (= bs!1522940 (and d!1924318 d!1924200)))

(assert (=> bs!1522940 (= lambda!334803 lambda!334789)))

(declare-fun bs!1522941 () Bool)

(assert (= bs!1522941 (and d!1924318 d!1923954)))

(assert (=> bs!1522941 (= lambda!334803 lambda!334720)))

(assert (=> d!1924318 (= (inv!83458 (h!70876 (t!378031 zl!343))) (forall!15205 (exprs!5968 (h!70876 (t!378031 zl!343))) lambda!334803))))

(declare-fun bs!1522942 () Bool)

(assert (= bs!1522942 d!1924318))

(declare-fun m!6983256 () Bool)

(assert (=> bs!1522942 m!6983256))

(assert (=> b!6141165 d!1924318))

(declare-fun d!1924320 () Bool)

(assert (=> d!1924320 (= (nullable!6077 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))) (nullableFct!2041 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))))))

(declare-fun bs!1522943 () Bool)

(assert (= bs!1522943 d!1924320))

(declare-fun m!6983258 () Bool)

(assert (=> bs!1522943 m!6983258))

(assert (=> b!6141109 d!1924320))

(declare-fun d!1924322 () Bool)

(declare-fun res!2544807 () Bool)

(declare-fun e!3743051 () Bool)

(assert (=> d!1924322 (=> res!2544807 e!3743051)))

(assert (=> d!1924322 (= res!2544807 (is-Nil!64428 lt!2333156))))

(assert (=> d!1924322 (= (noDuplicate!1931 lt!2333156) e!3743051)))

(declare-fun b!6141977 () Bool)

(declare-fun e!3743052 () Bool)

(assert (=> b!6141977 (= e!3743051 e!3743052)))

(declare-fun res!2544808 () Bool)

(assert (=> b!6141977 (=> (not res!2544808) (not e!3743052))))

(declare-fun contains!20045 (List!64552 Context!10936) Bool)

(assert (=> b!6141977 (= res!2544808 (not (contains!20045 (t!378031 lt!2333156) (h!70876 lt!2333156))))))

(declare-fun b!6141978 () Bool)

(assert (=> b!6141978 (= e!3743052 (noDuplicate!1931 (t!378031 lt!2333156)))))

(assert (= (and d!1924322 (not res!2544807)) b!6141977))

(assert (= (and b!6141977 res!2544808) b!6141978))

(declare-fun m!6983260 () Bool)

(assert (=> b!6141977 m!6983260))

(declare-fun m!6983262 () Bool)

(assert (=> b!6141978 m!6983262))

(assert (=> d!1923950 d!1924322))

(declare-fun d!1924324 () Bool)

(declare-fun e!3743061 () Bool)

(assert (=> d!1924324 e!3743061))

(declare-fun res!2544814 () Bool)

(assert (=> d!1924324 (=> (not res!2544814) (not e!3743061))))

(declare-fun res!2544813 () List!64552)

(assert (=> d!1924324 (= res!2544814 (noDuplicate!1931 res!2544813))))

(declare-fun e!3743060 () Bool)

(assert (=> d!1924324 e!3743060))

(assert (=> d!1924324 (= (choose!45634 z!1189) res!2544813)))

(declare-fun b!6141986 () Bool)

(declare-fun e!3743059 () Bool)

(declare-fun tp!1715866 () Bool)

(assert (=> b!6141986 (= e!3743059 tp!1715866)))

(declare-fun b!6141985 () Bool)

(declare-fun tp!1715865 () Bool)

(assert (=> b!6141985 (= e!3743060 (and (inv!83458 (h!70876 res!2544813)) e!3743059 tp!1715865))))

(declare-fun b!6141987 () Bool)

(assert (=> b!6141987 (= e!3743061 (= (content!11992 res!2544813) z!1189))))

(assert (= b!6141985 b!6141986))

(assert (= (and d!1924324 (is-Cons!64428 res!2544813)) b!6141985))

(assert (= (and d!1924324 res!2544814) b!6141987))

(declare-fun m!6983264 () Bool)

(assert (=> d!1924324 m!6983264))

(declare-fun m!6983266 () Bool)

(assert (=> b!6141985 m!6983266))

(declare-fun m!6983268 () Bool)

(assert (=> b!6141987 m!6983268))

(assert (=> d!1923950 d!1924324))

(declare-fun b!6141991 () Bool)

(declare-fun e!3743062 () Bool)

(declare-fun lt!2333254 () List!64553)

(assert (=> b!6141991 (= e!3743062 (or (not (= (_2!36366 (get!22228 lt!2333170)) Nil!64429)) (= lt!2333254 (_1!36366 (get!22228 lt!2333170)))))))

(declare-fun b!6141989 () Bool)

(declare-fun e!3743063 () List!64553)

(assert (=> b!6141989 (= e!3743063 (Cons!64429 (h!70877 (_1!36366 (get!22228 lt!2333170))) (++!14170 (t!378032 (_1!36366 (get!22228 lt!2333170))) (_2!36366 (get!22228 lt!2333170)))))))

(declare-fun b!6141990 () Bool)

(declare-fun res!2544815 () Bool)

(assert (=> b!6141990 (=> (not res!2544815) (not e!3743062))))

(assert (=> b!6141990 (= res!2544815 (= (size!40227 lt!2333254) (+ (size!40227 (_1!36366 (get!22228 lt!2333170))) (size!40227 (_2!36366 (get!22228 lt!2333170))))))))

(declare-fun b!6141988 () Bool)

(assert (=> b!6141988 (= e!3743063 (_2!36366 (get!22228 lt!2333170)))))

(declare-fun d!1924326 () Bool)

(assert (=> d!1924326 e!3743062))

(declare-fun res!2544816 () Bool)

(assert (=> d!1924326 (=> (not res!2544816) (not e!3743062))))

(assert (=> d!1924326 (= res!2544816 (= (content!11994 lt!2333254) (set.union (content!11994 (_1!36366 (get!22228 lt!2333170))) (content!11994 (_2!36366 (get!22228 lt!2333170))))))))

(assert (=> d!1924326 (= lt!2333254 e!3743063)))

(declare-fun c!1104886 () Bool)

(assert (=> d!1924326 (= c!1104886 (is-Nil!64429 (_1!36366 (get!22228 lt!2333170))))))

(assert (=> d!1924326 (= (++!14170 (_1!36366 (get!22228 lt!2333170)) (_2!36366 (get!22228 lt!2333170))) lt!2333254)))

(assert (= (and d!1924326 c!1104886) b!6141988))

(assert (= (and d!1924326 (not c!1104886)) b!6141989))

(assert (= (and d!1924326 res!2544816) b!6141990))

(assert (= (and b!6141990 res!2544815) b!6141991))

(declare-fun m!6983270 () Bool)

(assert (=> b!6141989 m!6983270))

(declare-fun m!6983272 () Bool)

(assert (=> b!6141990 m!6983272))

(declare-fun m!6983274 () Bool)

(assert (=> b!6141990 m!6983274))

(declare-fun m!6983276 () Bool)

(assert (=> b!6141990 m!6983276))

(declare-fun m!6983278 () Bool)

(assert (=> d!1924326 m!6983278))

(declare-fun m!6983280 () Bool)

(assert (=> d!1924326 m!6983280))

(declare-fun m!6983282 () Bool)

(assert (=> d!1924326 m!6983282))

(assert (=> b!6140910 d!1924326))

(assert (=> b!6140910 d!1924246))

(declare-fun d!1924328 () Bool)

(assert (=> d!1924328 (= (nullable!6077 (h!70875 (exprs!5968 lt!2333068))) (nullableFct!2041 (h!70875 (exprs!5968 lt!2333068))))))

(declare-fun bs!1522944 () Bool)

(assert (= bs!1522944 d!1924328))

(declare-fun m!6983284 () Bool)

(assert (=> bs!1522944 m!6983284))

(assert (=> b!6141104 d!1924328))

(declare-fun b!6141992 () Bool)

(declare-fun e!3743067 () (Set Context!10936))

(declare-fun e!3743068 () (Set Context!10936))

(assert (=> b!6141992 (= e!3743067 e!3743068)))

(declare-fun c!1104888 () Bool)

(assert (=> b!6141992 (= c!1104888 (is-Concat!24929 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))))))

(declare-fun b!6141993 () Bool)

(declare-fun e!3743066 () (Set Context!10936))

(declare-fun e!3743069 () (Set Context!10936))

(assert (=> b!6141993 (= e!3743066 e!3743069)))

(declare-fun c!1104889 () Bool)

(assert (=> b!6141993 (= c!1104889 (is-Union!16084 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))))))

(declare-fun b!6141994 () Bool)

(declare-fun c!1104887 () Bool)

(declare-fun e!3743064 () Bool)

(assert (=> b!6141994 (= c!1104887 e!3743064)))

(declare-fun res!2544817 () Bool)

(assert (=> b!6141994 (=> (not res!2544817) (not e!3743064))))

(assert (=> b!6141994 (= res!2544817 (is-Concat!24929 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))))))

(assert (=> b!6141994 (= e!3743069 e!3743067)))

(declare-fun bm!510163 () Bool)

(declare-fun call!510169 () List!64551)

(declare-fun call!510171 () List!64551)

(assert (=> bm!510163 (= call!510169 call!510171)))

(declare-fun b!6141995 () Bool)

(declare-fun e!3743065 () (Set Context!10936))

(assert (=> b!6141995 (= e!3743065 (as set.empty (Set Context!10936)))))

(declare-fun call!510172 () (Set Context!10936))

(declare-fun bm!510164 () Bool)

(assert (=> bm!510164 (= call!510172 (derivationStepZipperDown!1332 (ite c!1104889 (regOne!32681 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))) (regOne!32680 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343))))))))) (ite c!1104889 (Context!10937 (t!378030 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))) (Context!10937 call!510171)) (h!70877 s!2326)))))

(declare-fun b!6141996 () Bool)

(declare-fun c!1104891 () Bool)

(assert (=> b!6141996 (= c!1104891 (is-Star!16084 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))))))

(assert (=> b!6141996 (= e!3743068 e!3743065)))

(declare-fun b!6141998 () Bool)

(assert (=> b!6141998 (= e!3743066 (set.insert (Context!10937 (t!378030 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))) (as set.empty (Set Context!10936))))))

(declare-fun bm!510165 () Bool)

(declare-fun call!510170 () (Set Context!10936))

(declare-fun call!510173 () (Set Context!10936))

(assert (=> bm!510165 (= call!510170 call!510173)))

(declare-fun bm!510166 () Bool)

(assert (=> bm!510166 (= call!510171 ($colon$colon!1961 (exprs!5968 (Context!10937 (t!378030 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343))))))))) (ite (or c!1104887 c!1104888) (regTwo!32680 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))) (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343))))))))))))

(declare-fun b!6141999 () Bool)

(assert (=> b!6141999 (= e!3743064 (nullable!6077 (regOne!32680 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343))))))))))))

(declare-fun b!6142000 () Bool)

(assert (=> b!6142000 (= e!3743069 (set.union call!510172 call!510173))))

(declare-fun b!6142001 () Bool)

(declare-fun call!510168 () (Set Context!10936))

(assert (=> b!6142001 (= e!3743065 call!510168)))

(declare-fun b!6142002 () Bool)

(assert (=> b!6142002 (= e!3743067 (set.union call!510172 call!510170))))

(declare-fun b!6141997 () Bool)

(assert (=> b!6141997 (= e!3743068 call!510168)))

(declare-fun d!1924330 () Bool)

(declare-fun c!1104890 () Bool)

(assert (=> d!1924330 (= c!1104890 (and (is-ElementMatch!16084 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))) (= (c!1104532 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))) (h!70877 s!2326))))))

(assert (=> d!1924330 (= (derivationStepZipperDown!1332 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343))))))) (Context!10937 (t!378030 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))) (h!70877 s!2326)) e!3743066)))

(declare-fun bm!510167 () Bool)

(assert (=> bm!510167 (= call!510168 call!510170)))

(declare-fun bm!510168 () Bool)

(assert (=> bm!510168 (= call!510173 (derivationStepZipperDown!1332 (ite c!1104889 (regTwo!32681 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))) (ite c!1104887 (regTwo!32680 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))) (ite c!1104888 (regOne!32680 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))) (reg!16413 (h!70875 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343))))))))))) (ite (or c!1104889 c!1104887) (Context!10937 (t!378030 (exprs!5968 (Context!10937 (Cons!64427 (h!70875 (exprs!5968 (h!70876 zl!343))) (t!378030 (exprs!5968 (h!70876 zl!343)))))))) (Context!10937 call!510169)) (h!70877 s!2326)))))

(assert (= (and d!1924330 c!1104890) b!6141998))

(assert (= (and d!1924330 (not c!1104890)) b!6141993))

(assert (= (and b!6141993 c!1104889) b!6142000))

(assert (= (and b!6141993 (not c!1104889)) b!6141994))

(assert (= (and b!6141994 res!2544817) b!6141999))

(assert (= (and b!6141994 c!1104887) b!6142002))

(assert (= (and b!6141994 (not c!1104887)) b!6141992))

(assert (= (and b!6141992 c!1104888) b!6141997))

(assert (= (and b!6141992 (not c!1104888)) b!6141996))

(assert (= (and b!6141996 c!1104891) b!6142001))

(assert (= (and b!6141996 (not c!1104891)) b!6141995))

(assert (= (or b!6141997 b!6142001) bm!510163))

(assert (= (or b!6141997 b!6142001) bm!510167))

(assert (= (or b!6142002 bm!510163) bm!510166))

(assert (= (or b!6142002 bm!510167) bm!510165))

(assert (= (or b!6142000 bm!510165) bm!510168))

(assert (= (or b!6142000 b!6142002) bm!510164))

(declare-fun m!6983286 () Bool)

(assert (=> b!6141999 m!6983286))

(declare-fun m!6983288 () Bool)

(assert (=> b!6141998 m!6983288))

(declare-fun m!6983290 () Bool)

(assert (=> bm!510168 m!6983290))

(declare-fun m!6983292 () Bool)

(assert (=> bm!510166 m!6983292))

(declare-fun m!6983294 () Bool)

(assert (=> bm!510164 m!6983294))

(assert (=> bm!510004 d!1924330))

(assert (=> d!1923930 d!1924128))

(declare-fun d!1924332 () Bool)

(assert (=> d!1924332 (= ($colon$colon!1961 (exprs!5968 lt!2333068) (ite (or c!1104633 c!1104634) (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (regOne!32681 (regOne!32680 r!7292)))) (Cons!64427 (ite (or c!1104633 c!1104634) (regTwo!32680 (regOne!32681 (regOne!32680 r!7292))) (regOne!32681 (regOne!32680 r!7292))) (exprs!5968 lt!2333068)))))

(assert (=> bm!510000 d!1924332))

(assert (=> d!1924000 d!1923996))

(declare-fun d!1924334 () Bool)

(assert (=> d!1924334 (= (flatMap!1589 z!1189 lambda!334694) (dynLambda!25389 lambda!334694 (h!70876 zl!343)))))

(assert (=> d!1924334 true))

(declare-fun _$13!3030 () Unit!157491)

(assert (=> d!1924334 (= (choose!45640 z!1189 (h!70876 zl!343) lambda!334694) _$13!3030)))

(declare-fun b_lambda!233755 () Bool)

(assert (=> (not b_lambda!233755) (not d!1924334)))

(declare-fun bs!1522945 () Bool)

(assert (= bs!1522945 d!1924334))

(assert (=> bs!1522945 m!6982138))

(assert (=> bs!1522945 m!6982508))

(assert (=> d!1924000 d!1924334))

(declare-fun bs!1522946 () Bool)

(declare-fun b!6142011 () Bool)

(assert (= bs!1522946 (and b!6142011 d!1923964)))

(declare-fun lambda!334804 () Int)

(assert (=> bs!1522946 (not (= lambda!334804 lambda!334729))))

(declare-fun bs!1522947 () Bool)

(assert (= bs!1522947 (and b!6142011 b!6140965)))

(assert (=> bs!1522947 (= (and (= (reg!16413 (regOne!32681 r!7292)) (reg!16413 r!7292)) (= (regOne!32681 r!7292) r!7292)) (= lambda!334804 lambda!334734))))

(declare-fun bs!1522948 () Bool)

(assert (= bs!1522948 (and b!6142011 b!6141917)))

(assert (=> bs!1522948 (not (= lambda!334804 lambda!334801))))

(declare-fun bs!1522949 () Bool)

(assert (= bs!1522949 (and b!6142011 d!1924134)))

(assert (=> bs!1522949 (not (= lambda!334804 lambda!334779))))

(assert (=> bs!1522949 (not (= lambda!334804 lambda!334780))))

(declare-fun bs!1522950 () Bool)

(assert (= bs!1522950 (and b!6142011 b!6140964)))

(assert (=> bs!1522950 (not (= lambda!334804 lambda!334735))))

(declare-fun bs!1522951 () Bool)

(assert (= bs!1522951 (and b!6142011 b!6140666)))

(assert (=> bs!1522951 (not (= lambda!334804 lambda!334693))))

(assert (=> bs!1522946 (not (= lambda!334804 lambda!334728))))

(assert (=> bs!1522951 (not (= lambda!334804 lambda!334692))))

(declare-fun bs!1522952 () Bool)

(assert (= bs!1522952 (and b!6142011 b!6141918)))

(assert (=> bs!1522952 (= (and (= (reg!16413 (regOne!32681 r!7292)) (reg!16413 (regTwo!32681 r!7292))) (= (regOne!32681 r!7292) (regTwo!32681 r!7292))) (= lambda!334804 lambda!334800))))

(declare-fun bs!1522953 () Bool)

(assert (= bs!1522953 (and b!6142011 d!1924122)))

(assert (=> bs!1522953 (not (= lambda!334804 lambda!334774))))

(declare-fun bs!1522954 () Bool)

(assert (= bs!1522954 (and b!6142011 d!1923962)))

(assert (=> bs!1522954 (not (= lambda!334804 lambda!334723))))

(assert (=> b!6142011 true))

(assert (=> b!6142011 true))

(declare-fun bs!1522955 () Bool)

(declare-fun b!6142010 () Bool)

(assert (= bs!1522955 (and b!6142010 d!1923964)))

(declare-fun lambda!334805 () Int)

(assert (=> bs!1522955 (= (and (= (regOne!32680 (regOne!32681 r!7292)) (regOne!32680 r!7292)) (= (regTwo!32680 (regOne!32681 r!7292)) (regTwo!32680 r!7292))) (= lambda!334805 lambda!334729))))

(declare-fun bs!1522956 () Bool)

(assert (= bs!1522956 (and b!6142010 b!6140965)))

(assert (=> bs!1522956 (not (= lambda!334805 lambda!334734))))

(declare-fun bs!1522957 () Bool)

(assert (= bs!1522957 (and b!6142010 b!6141917)))

(assert (=> bs!1522957 (= (and (= (regOne!32680 (regOne!32681 r!7292)) (regOne!32680 (regTwo!32681 r!7292))) (= (regTwo!32680 (regOne!32681 r!7292)) (regTwo!32680 (regTwo!32681 r!7292)))) (= lambda!334805 lambda!334801))))

(declare-fun bs!1522958 () Bool)

(assert (= bs!1522958 (and b!6142010 d!1924134)))

(assert (=> bs!1522958 (not (= lambda!334805 lambda!334779))))

(assert (=> bs!1522958 (= (and (= (regOne!32680 (regOne!32681 r!7292)) (regOne!32680 r!7292)) (= (regTwo!32680 (regOne!32681 r!7292)) (regTwo!32680 r!7292))) (= lambda!334805 lambda!334780))))

(declare-fun bs!1522959 () Bool)

(assert (= bs!1522959 (and b!6142010 b!6140964)))

(assert (=> bs!1522959 (= (and (= (regOne!32680 (regOne!32681 r!7292)) (regOne!32680 r!7292)) (= (regTwo!32680 (regOne!32681 r!7292)) (regTwo!32680 r!7292))) (= lambda!334805 lambda!334735))))

(declare-fun bs!1522960 () Bool)

(assert (= bs!1522960 (and b!6142010 b!6140666)))

(assert (=> bs!1522960 (= (and (= (regOne!32680 (regOne!32681 r!7292)) (regOne!32680 r!7292)) (= (regTwo!32680 (regOne!32681 r!7292)) (regTwo!32680 r!7292))) (= lambda!334805 lambda!334693))))

(assert (=> bs!1522960 (not (= lambda!334805 lambda!334692))))

(declare-fun bs!1522961 () Bool)

(assert (= bs!1522961 (and b!6142010 b!6141918)))

(assert (=> bs!1522961 (not (= lambda!334805 lambda!334800))))

(declare-fun bs!1522962 () Bool)

(assert (= bs!1522962 (and b!6142010 d!1924122)))

(assert (=> bs!1522962 (not (= lambda!334805 lambda!334774))))

(declare-fun bs!1522963 () Bool)

(assert (= bs!1522963 (and b!6142010 d!1923962)))

(assert (=> bs!1522963 (not (= lambda!334805 lambda!334723))))

(declare-fun bs!1522964 () Bool)

(assert (= bs!1522964 (and b!6142010 b!6142011)))

(assert (=> bs!1522964 (not (= lambda!334805 lambda!334804))))

(assert (=> bs!1522955 (not (= lambda!334805 lambda!334728))))

(assert (=> b!6142010 true))

(assert (=> b!6142010 true))

(declare-fun bm!510169 () Bool)

(declare-fun c!1104892 () Bool)

(declare-fun call!510174 () Bool)

(assert (=> bm!510169 (= call!510174 (Exists!3154 (ite c!1104892 lambda!334804 lambda!334805)))))

(declare-fun b!6142003 () Bool)

(declare-fun e!3743073 () Bool)

(declare-fun e!3743070 () Bool)

(assert (=> b!6142003 (= e!3743073 e!3743070)))

(assert (=> b!6142003 (= c!1104892 (is-Star!16084 (regOne!32681 r!7292)))))

(declare-fun b!6142004 () Bool)

(declare-fun e!3743075 () Bool)

(assert (=> b!6142004 (= e!3743075 (matchRSpec!3185 (regTwo!32681 (regOne!32681 r!7292)) s!2326))))

(declare-fun b!6142005 () Bool)

(declare-fun c!1104894 () Bool)

(assert (=> b!6142005 (= c!1104894 (is-ElementMatch!16084 (regOne!32681 r!7292)))))

(declare-fun e!3743072 () Bool)

(declare-fun e!3743076 () Bool)

(assert (=> b!6142005 (= e!3743072 e!3743076)))

(declare-fun b!6142006 () Bool)

(declare-fun res!2544818 () Bool)

(declare-fun e!3743074 () Bool)

(assert (=> b!6142006 (=> res!2544818 e!3743074)))

(declare-fun call!510175 () Bool)

(assert (=> b!6142006 (= res!2544818 call!510175)))

(assert (=> b!6142006 (= e!3743070 e!3743074)))

(declare-fun b!6142007 () Bool)

(declare-fun e!3743071 () Bool)

(assert (=> b!6142007 (= e!3743071 call!510175)))

(declare-fun b!6142008 () Bool)

(assert (=> b!6142008 (= e!3743073 e!3743075)))

(declare-fun res!2544820 () Bool)

(assert (=> b!6142008 (= res!2544820 (matchRSpec!3185 (regOne!32681 (regOne!32681 r!7292)) s!2326))))

(assert (=> b!6142008 (=> res!2544820 e!3743075)))

(assert (=> b!6142010 (= e!3743070 call!510174)))

(assert (=> b!6142011 (= e!3743074 call!510174)))

(declare-fun b!6142012 () Bool)

(assert (=> b!6142012 (= e!3743076 (= s!2326 (Cons!64429 (c!1104532 (regOne!32681 r!7292)) Nil!64429)))))

(declare-fun b!6142013 () Bool)

(declare-fun c!1104893 () Bool)

(assert (=> b!6142013 (= c!1104893 (is-Union!16084 (regOne!32681 r!7292)))))

(assert (=> b!6142013 (= e!3743076 e!3743073)))

(declare-fun bm!510170 () Bool)

(assert (=> bm!510170 (= call!510175 (isEmpty!36382 s!2326))))

(declare-fun b!6142009 () Bool)

(assert (=> b!6142009 (= e!3743071 e!3743072)))

(declare-fun res!2544819 () Bool)

(assert (=> b!6142009 (= res!2544819 (not (is-EmptyLang!16084 (regOne!32681 r!7292))))))

(assert (=> b!6142009 (=> (not res!2544819) (not e!3743072))))

(declare-fun d!1924336 () Bool)

(declare-fun c!1104895 () Bool)

(assert (=> d!1924336 (= c!1104895 (is-EmptyExpr!16084 (regOne!32681 r!7292)))))

(assert (=> d!1924336 (= (matchRSpec!3185 (regOne!32681 r!7292) s!2326) e!3743071)))

(assert (= (and d!1924336 c!1104895) b!6142007))

(assert (= (and d!1924336 (not c!1104895)) b!6142009))

(assert (= (and b!6142009 res!2544819) b!6142005))

(assert (= (and b!6142005 c!1104894) b!6142012))

(assert (= (and b!6142005 (not c!1104894)) b!6142013))

(assert (= (and b!6142013 c!1104893) b!6142008))

(assert (= (and b!6142013 (not c!1104893)) b!6142003))

(assert (= (and b!6142008 (not res!2544820)) b!6142004))

(assert (= (and b!6142003 c!1104892) b!6142006))

(assert (= (and b!6142003 (not c!1104892)) b!6142010))

(assert (= (and b!6142006 (not res!2544818)) b!6142011))

(assert (= (or b!6142011 b!6142010) bm!510169))

(assert (= (or b!6142007 b!6142006) bm!510170))

(declare-fun m!6983296 () Bool)

(assert (=> bm!510169 m!6983296))

(declare-fun m!6983298 () Bool)

(assert (=> b!6142004 m!6983298))

(declare-fun m!6983300 () Bool)

(assert (=> b!6142008 m!6983300))

(assert (=> bm!510170 m!6982342))

(assert (=> b!6140962 d!1924336))

(assert (=> b!6141114 d!1924006))

(assert (=> d!1923972 d!1923970))

(assert (=> d!1923972 d!1923968))

(declare-fun d!1924338 () Bool)

(assert (=> d!1924338 (= (matchR!8267 r!7292 s!2326) (matchRSpec!3185 r!7292 s!2326))))

(assert (=> d!1924338 true))

(declare-fun _$88!4671 () Unit!157491)

(assert (=> d!1924338 (= (choose!45638 r!7292 s!2326) _$88!4671)))

(declare-fun bs!1522965 () Bool)

(assert (= bs!1522965 d!1924338))

(assert (=> bs!1522965 m!6982158))

(assert (=> bs!1522965 m!6982156))

(assert (=> d!1923972 d!1924338))

(assert (=> d!1923972 d!1923974))

(declare-fun d!1924340 () Bool)

(assert (=> d!1924340 (= (head!12690 (exprs!5968 (h!70876 zl!343))) (h!70875 (exprs!5968 (h!70876 zl!343))))))

(assert (=> b!6140839 d!1924340))

(declare-fun d!1924342 () Bool)

(declare-fun c!1104896 () Bool)

(assert (=> d!1924342 (= c!1104896 (isEmpty!36382 (tail!11774 (t!378032 s!2326))))))

(declare-fun e!3743077 () Bool)

(assert (=> d!1924342 (= (matchZipper!2096 (derivationStepZipper!2057 lt!2333060 (head!12689 (t!378032 s!2326))) (tail!11774 (t!378032 s!2326))) e!3743077)))

(declare-fun b!6142014 () Bool)

(assert (=> b!6142014 (= e!3743077 (nullableZipper!1865 (derivationStepZipper!2057 lt!2333060 (head!12689 (t!378032 s!2326)))))))

(declare-fun b!6142015 () Bool)

(assert (=> b!6142015 (= e!3743077 (matchZipper!2096 (derivationStepZipper!2057 (derivationStepZipper!2057 lt!2333060 (head!12689 (t!378032 s!2326))) (head!12689 (tail!11774 (t!378032 s!2326)))) (tail!11774 (tail!11774 (t!378032 s!2326)))))))

(assert (= (and d!1924342 c!1104896) b!6142014))

(assert (= (and d!1924342 (not c!1104896)) b!6142015))

(assert (=> d!1924342 m!6982300))

(assert (=> d!1924342 m!6982900))

(assert (=> b!6142014 m!6982298))

(declare-fun m!6983302 () Bool)

(assert (=> b!6142014 m!6983302))

(assert (=> b!6142015 m!6982300))

(assert (=> b!6142015 m!6982904))

(assert (=> b!6142015 m!6982298))

(assert (=> b!6142015 m!6982904))

(declare-fun m!6983304 () Bool)

(assert (=> b!6142015 m!6983304))

(assert (=> b!6142015 m!6982300))

(assert (=> b!6142015 m!6982908))

(assert (=> b!6142015 m!6983304))

(assert (=> b!6142015 m!6982908))

(declare-fun m!6983306 () Bool)

(assert (=> b!6142015 m!6983306))

(assert (=> b!6140805 d!1924342))

(declare-fun bs!1522966 () Bool)

(declare-fun d!1924344 () Bool)

(assert (= bs!1522966 (and d!1924344 d!1924164)))

(declare-fun lambda!334806 () Int)

(assert (=> bs!1522966 (= lambda!334806 lambda!334783)))

(declare-fun bs!1522967 () Bool)

(assert (= bs!1522967 (and d!1924344 d!1924218)))

(assert (=> bs!1522967 (= lambda!334806 lambda!334792)))

(declare-fun bs!1522968 () Bool)

(assert (= bs!1522968 (and d!1924344 d!1924262)))

(assert (=> bs!1522968 (= lambda!334806 lambda!334795)))

(declare-fun bs!1522969 () Bool)

(assert (= bs!1522969 (and d!1924344 d!1924210)))

(assert (=> bs!1522969 (= lambda!334806 lambda!334791)))

(declare-fun bs!1522970 () Bool)

(assert (= bs!1522970 (and d!1924344 d!1923986)))

(assert (=> bs!1522970 (= (= (head!12689 (t!378032 s!2326)) (h!70877 s!2326)) (= lambda!334806 lambda!334739))))

(declare-fun bs!1522971 () Bool)

(assert (= bs!1522971 (and d!1924344 d!1924148)))

(assert (=> bs!1522971 (= (= (head!12689 (t!378032 s!2326)) (head!12689 s!2326)) (= lambda!334806 lambda!334781))))

(declare-fun bs!1522972 () Bool)

(assert (= bs!1522972 (and d!1924344 d!1924302)))

(assert (=> bs!1522972 (= lambda!334806 lambda!334802)))

(declare-fun bs!1522973 () Bool)

(assert (= bs!1522973 (and d!1924344 d!1924174)))

(assert (=> bs!1522973 (= lambda!334806 lambda!334784)))

(declare-fun bs!1522974 () Bool)

(assert (= bs!1522974 (and d!1924344 b!6140677)))

(assert (=> bs!1522974 (= (= (head!12689 (t!378032 s!2326)) (h!70877 s!2326)) (= lambda!334806 lambda!334694))))

(assert (=> d!1924344 true))

(assert (=> d!1924344 (= (derivationStepZipper!2057 lt!2333060 (head!12689 (t!378032 s!2326))) (flatMap!1589 lt!2333060 lambda!334806))))

(declare-fun bs!1522975 () Bool)

(assert (= bs!1522975 d!1924344))

(declare-fun m!6983308 () Bool)

(assert (=> bs!1522975 m!6983308))

(assert (=> b!6140805 d!1924344))

(assert (=> b!6140805 d!1924166))

(assert (=> b!6140805 d!1924168))

(declare-fun d!1924346 () Bool)

(assert (=> d!1924346 true))

(declare-fun setRes!41550 () Bool)

(assert (=> d!1924346 setRes!41550))

(declare-fun condSetEmpty!41550 () Bool)

(declare-fun res!2544821 () (Set Context!10936))

(assert (=> d!1924346 (= condSetEmpty!41550 (= res!2544821 (as set.empty (Set Context!10936))))))

(assert (=> d!1924346 (= (choose!45639 z!1189 lambda!334694) res!2544821)))

(declare-fun setIsEmpty!41550 () Bool)

(assert (=> setIsEmpty!41550 setRes!41550))

(declare-fun tp!1715868 () Bool)

(declare-fun setNonEmpty!41550 () Bool)

(declare-fun setElem!41550 () Context!10936)

(declare-fun e!3743078 () Bool)

(assert (=> setNonEmpty!41550 (= setRes!41550 (and tp!1715868 (inv!83458 setElem!41550) e!3743078))))

(declare-fun setRest!41550 () (Set Context!10936))

(assert (=> setNonEmpty!41550 (= res!2544821 (set.union (set.insert setElem!41550 (as set.empty (Set Context!10936))) setRest!41550))))

(declare-fun b!6142016 () Bool)

(declare-fun tp!1715867 () Bool)

(assert (=> b!6142016 (= e!3743078 tp!1715867)))

(assert (= (and d!1924346 condSetEmpty!41550) setIsEmpty!41550))

(assert (= (and d!1924346 (not condSetEmpty!41550)) setNonEmpty!41550))

(assert (= setNonEmpty!41550 b!6142016))

(declare-fun m!6983310 () Bool)

(assert (=> setNonEmpty!41550 m!6983310))

(assert (=> d!1923996 d!1924346))

(assert (=> b!6140808 d!1923978))

(declare-fun d!1924348 () Bool)

(assert (=> d!1924348 (= (isEmpty!36378 (unfocusZipperList!1505 zl!343)) (is-Nil!64427 (unfocusZipperList!1505 zl!343)))))

(assert (=> b!6140876 d!1924348))

(assert (=> d!1923984 d!1923982))

(declare-fun d!1924350 () Bool)

(assert (=> d!1924350 (= (flatMap!1589 lt!2333066 lambda!334694) (dynLambda!25389 lambda!334694 lt!2333054))))

(assert (=> d!1924350 true))

(declare-fun _$13!3031 () Unit!157491)

(assert (=> d!1924350 (= (choose!45640 lt!2333066 lt!2333054 lambda!334694) _$13!3031)))

(declare-fun b_lambda!233757 () Bool)

(assert (=> (not b_lambda!233757) (not d!1924350)))

(declare-fun bs!1522976 () Bool)

(assert (= bs!1522976 d!1924350))

(assert (=> bs!1522976 m!6982182))

(assert (=> bs!1522976 m!6982468))

(assert (=> d!1923984 d!1924350))

(declare-fun d!1924352 () Bool)

(assert (=> d!1924352 (= ($colon$colon!1961 (exprs!5968 lt!2333068) (ite (or c!1104628 c!1104629) (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (regTwo!32681 (regOne!32680 r!7292)))) (Cons!64427 (ite (or c!1104628 c!1104629) (regTwo!32680 (regTwo!32681 (regOne!32680 r!7292))) (regTwo!32681 (regOne!32680 r!7292))) (exprs!5968 lt!2333068)))))

(assert (=> bm!509994 d!1924352))

(assert (=> d!1923946 d!1924224))

(declare-fun bs!1522977 () Bool)

(declare-fun d!1924354 () Bool)

(assert (= bs!1522977 (and d!1924354 d!1924254)))

(declare-fun lambda!334807 () Int)

(assert (=> bs!1522977 (= lambda!334807 lambda!334794)))

(declare-fun bs!1522978 () Bool)

(assert (= bs!1522978 (and d!1924354 d!1924286)))

(assert (=> bs!1522978 (= lambda!334807 lambda!334798)))

(declare-fun bs!1522979 () Bool)

(assert (= bs!1522979 (and d!1924354 d!1924292)))

(assert (=> bs!1522979 (= lambda!334807 lambda!334799)))

(declare-fun bs!1522980 () Bool)

(assert (= bs!1522980 (and d!1924354 d!1924242)))

(assert (=> bs!1522980 (= lambda!334807 lambda!334793)))

(declare-fun bs!1522981 () Bool)

(assert (= bs!1522981 (and d!1924354 d!1924270)))

(assert (=> bs!1522981 (= lambda!334807 lambda!334796)))

(declare-fun bs!1522982 () Bool)

(assert (= bs!1522982 (and d!1924354 d!1924182)))

(assert (=> bs!1522982 (= lambda!334807 lambda!334787)))

(declare-fun bs!1522983 () Bool)

(assert (= bs!1522983 (and d!1924354 d!1924276)))

(assert (=> bs!1522983 (= lambda!334807 lambda!334797)))

(assert (=> d!1924354 (= (nullableZipper!1865 lt!2333071) (exists!2431 lt!2333071 lambda!334807))))

(declare-fun bs!1522984 () Bool)

(assert (= bs!1522984 d!1924354))

(declare-fun m!6983312 () Bool)

(assert (=> bs!1522984 m!6983312))

(assert (=> b!6140845 d!1924354))

(declare-fun b!6142017 () Bool)

(declare-fun e!3743082 () (Set Context!10936))

(declare-fun e!3743083 () (Set Context!10936))

(assert (=> b!6142017 (= e!3743082 e!3743083)))

(declare-fun c!1104898 () Bool)

(assert (=> b!6142017 (= c!1104898 (is-Concat!24929 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292))))))))

(declare-fun b!6142018 () Bool)

(declare-fun e!3743081 () (Set Context!10936))

(declare-fun e!3743084 () (Set Context!10936))

(assert (=> b!6142018 (= e!3743081 e!3743084)))

(declare-fun c!1104899 () Bool)

(assert (=> b!6142018 (= c!1104899 (is-Union!16084 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292))))))))

(declare-fun b!6142019 () Bool)

(declare-fun c!1104897 () Bool)

(declare-fun e!3743079 () Bool)

(assert (=> b!6142019 (= c!1104897 e!3743079)))

(declare-fun res!2544822 () Bool)

(assert (=> b!6142019 (=> (not res!2544822) (not e!3743079))))

(assert (=> b!6142019 (= res!2544822 (is-Concat!24929 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292))))))))

(assert (=> b!6142019 (= e!3743084 e!3743082)))

(declare-fun bm!510171 () Bool)

(declare-fun call!510177 () List!64551)

(declare-fun call!510179 () List!64551)

(assert (=> bm!510171 (= call!510177 call!510179)))

(declare-fun b!6142020 () Bool)

(declare-fun e!3743080 () (Set Context!10936))

(assert (=> b!6142020 (= e!3743080 (as set.empty (Set Context!10936)))))

(declare-fun call!510180 () (Set Context!10936))

(declare-fun bm!510172 () Bool)

(assert (=> bm!510172 (= call!510180 (derivationStepZipperDown!1332 (ite c!1104899 (regOne!32681 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292))))) (regOne!32680 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292)))))) (ite c!1104899 (ite c!1104635 lt!2333068 (Context!10937 call!510005)) (Context!10937 call!510179)) (h!70877 s!2326)))))

(declare-fun b!6142021 () Bool)

(declare-fun c!1104901 () Bool)

(assert (=> b!6142021 (= c!1104901 (is-Star!16084 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292))))))))

(assert (=> b!6142021 (= e!3743083 e!3743080)))

(declare-fun b!6142023 () Bool)

(assert (=> b!6142023 (= e!3743081 (set.insert (ite c!1104635 lt!2333068 (Context!10937 call!510005)) (as set.empty (Set Context!10936))))))

(declare-fun bm!510173 () Bool)

(declare-fun call!510178 () (Set Context!10936))

(declare-fun call!510181 () (Set Context!10936))

(assert (=> bm!510173 (= call!510178 call!510181)))

(declare-fun bm!510174 () Bool)

(assert (=> bm!510174 (= call!510179 ($colon$colon!1961 (exprs!5968 (ite c!1104635 lt!2333068 (Context!10937 call!510005))) (ite (or c!1104897 c!1104898) (regTwo!32680 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292))))) (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292)))))))))

(declare-fun b!6142024 () Bool)

(assert (=> b!6142024 (= e!3743079 (nullable!6077 (regOne!32680 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292)))))))))

(declare-fun b!6142025 () Bool)

(assert (=> b!6142025 (= e!3743084 (set.union call!510180 call!510181))))

(declare-fun b!6142026 () Bool)

(declare-fun call!510176 () (Set Context!10936))

(assert (=> b!6142026 (= e!3743080 call!510176)))

(declare-fun b!6142027 () Bool)

(assert (=> b!6142027 (= e!3743082 (set.union call!510180 call!510178))))

(declare-fun b!6142022 () Bool)

(assert (=> b!6142022 (= e!3743083 call!510176)))

(declare-fun c!1104900 () Bool)

(declare-fun d!1924356 () Bool)

(assert (=> d!1924356 (= c!1104900 (and (is-ElementMatch!16084 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292))))) (= (c!1104532 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292))))) (h!70877 s!2326))))))

(assert (=> d!1924356 (= (derivationStepZipperDown!1332 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292)))) (ite c!1104635 lt!2333068 (Context!10937 call!510005)) (h!70877 s!2326)) e!3743081)))

(declare-fun bm!510175 () Bool)

(assert (=> bm!510175 (= call!510176 call!510178)))

(declare-fun bm!510176 () Bool)

(assert (=> bm!510176 (= call!510181 (derivationStepZipperDown!1332 (ite c!1104899 (regTwo!32681 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292))))) (ite c!1104897 (regTwo!32680 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292))))) (ite c!1104898 (regOne!32680 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292))))) (reg!16413 (ite c!1104635 (regOne!32681 (regOne!32681 (regOne!32680 r!7292))) (regOne!32680 (regOne!32681 (regOne!32680 r!7292)))))))) (ite (or c!1104899 c!1104897) (ite c!1104635 lt!2333068 (Context!10937 call!510005)) (Context!10937 call!510177)) (h!70877 s!2326)))))

(assert (= (and d!1924356 c!1104900) b!6142023))

(assert (= (and d!1924356 (not c!1104900)) b!6142018))

(assert (= (and b!6142018 c!1104899) b!6142025))

(assert (= (and b!6142018 (not c!1104899)) b!6142019))

(assert (= (and b!6142019 res!2544822) b!6142024))

(assert (= (and b!6142019 c!1104897) b!6142027))

(assert (= (and b!6142019 (not c!1104897)) b!6142017))

(assert (= (and b!6142017 c!1104898) b!6142022))

(assert (= (and b!6142017 (not c!1104898)) b!6142021))

(assert (= (and b!6142021 c!1104901) b!6142026))

(assert (= (and b!6142021 (not c!1104901)) b!6142020))

(assert (= (or b!6142022 b!6142026) bm!510171))

(assert (= (or b!6142022 b!6142026) bm!510175))

(assert (= (or b!6142027 bm!510171) bm!510174))

(assert (= (or b!6142027 bm!510175) bm!510173))

(assert (= (or b!6142025 bm!510173) bm!510176))

(assert (= (or b!6142025 b!6142027) bm!510172))

(declare-fun m!6983314 () Bool)

(assert (=> b!6142024 m!6983314))

(declare-fun m!6983316 () Bool)

(assert (=> b!6142023 m!6983316))

(declare-fun m!6983318 () Bool)

(assert (=> bm!510176 m!6983318))

(declare-fun m!6983320 () Bool)

(assert (=> bm!510174 m!6983320))

(declare-fun m!6983322 () Bool)

(assert (=> bm!510172 m!6983322))

(assert (=> bm!509998 d!1924356))

(assert (=> b!6141002 d!1924150))

(declare-fun d!1924358 () Bool)

(declare-fun res!2544823 () Bool)

(declare-fun e!3743085 () Bool)

(assert (=> d!1924358 (=> res!2544823 e!3743085)))

(assert (=> d!1924358 (= res!2544823 (is-Nil!64427 (exprs!5968 (h!70876 zl!343))))))

(assert (=> d!1924358 (= (forall!15205 (exprs!5968 (h!70876 zl!343)) lambda!334714) e!3743085)))

(declare-fun b!6142028 () Bool)

(declare-fun e!3743086 () Bool)

(assert (=> b!6142028 (= e!3743085 e!3743086)))

(declare-fun res!2544824 () Bool)

(assert (=> b!6142028 (=> (not res!2544824) (not e!3743086))))

(assert (=> b!6142028 (= res!2544824 (dynLambda!25391 lambda!334714 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun b!6142029 () Bool)

(assert (=> b!6142029 (= e!3743086 (forall!15205 (t!378030 (exprs!5968 (h!70876 zl!343))) lambda!334714))))

(assert (= (and d!1924358 (not res!2544823)) b!6142028))

(assert (= (and b!6142028 res!2544824) b!6142029))

(declare-fun b_lambda!233759 () Bool)

(assert (=> (not b_lambda!233759) (not b!6142028)))

(declare-fun m!6983324 () Bool)

(assert (=> b!6142028 m!6983324))

(declare-fun m!6983326 () Bool)

(assert (=> b!6142029 m!6983326))

(assert (=> d!1923944 d!1924358))

(assert (=> bs!1522745 d!1923980))

(declare-fun d!1924360 () Bool)

(assert (=> d!1924360 (= (flatMap!1589 lt!2333066 lambda!334739) (choose!45639 lt!2333066 lambda!334739))))

(declare-fun bs!1522985 () Bool)

(assert (= bs!1522985 d!1924360))

(declare-fun m!6983328 () Bool)

(assert (=> bs!1522985 m!6983328))

(assert (=> d!1923986 d!1924360))

(declare-fun b!6142031 () Bool)

(declare-fun e!3743087 () Bool)

(declare-fun tp!1715873 () Bool)

(declare-fun tp!1715870 () Bool)

(assert (=> b!6142031 (= e!3743087 (and tp!1715873 tp!1715870))))

(declare-fun b!6142030 () Bool)

(assert (=> b!6142030 (= e!3743087 tp_is_empty!41421)))

(declare-fun b!6142032 () Bool)

(declare-fun tp!1715871 () Bool)

(assert (=> b!6142032 (= e!3743087 tp!1715871)))

(declare-fun b!6142033 () Bool)

(declare-fun tp!1715869 () Bool)

(declare-fun tp!1715872 () Bool)

(assert (=> b!6142033 (= e!3743087 (and tp!1715869 tp!1715872))))

(assert (=> b!6141177 (= tp!1715789 e!3743087)))

(assert (= (and b!6141177 (is-ElementMatch!16084 (regOne!32680 (regOne!32680 r!7292)))) b!6142030))

(assert (= (and b!6141177 (is-Concat!24929 (regOne!32680 (regOne!32680 r!7292)))) b!6142031))

(assert (= (and b!6141177 (is-Star!16084 (regOne!32680 (regOne!32680 r!7292)))) b!6142032))

(assert (= (and b!6141177 (is-Union!16084 (regOne!32680 (regOne!32680 r!7292)))) b!6142033))

(declare-fun b!6142035 () Bool)

(declare-fun e!3743088 () Bool)

(declare-fun tp!1715878 () Bool)

(declare-fun tp!1715875 () Bool)

(assert (=> b!6142035 (= e!3743088 (and tp!1715878 tp!1715875))))

(declare-fun b!6142034 () Bool)

(assert (=> b!6142034 (= e!3743088 tp_is_empty!41421)))

(declare-fun b!6142036 () Bool)

(declare-fun tp!1715876 () Bool)

(assert (=> b!6142036 (= e!3743088 tp!1715876)))

(declare-fun b!6142037 () Bool)

(declare-fun tp!1715874 () Bool)

(declare-fun tp!1715877 () Bool)

(assert (=> b!6142037 (= e!3743088 (and tp!1715874 tp!1715877))))

(assert (=> b!6141177 (= tp!1715786 e!3743088)))

(assert (= (and b!6141177 (is-ElementMatch!16084 (regTwo!32680 (regOne!32680 r!7292)))) b!6142034))

(assert (= (and b!6141177 (is-Concat!24929 (regTwo!32680 (regOne!32680 r!7292)))) b!6142035))

(assert (= (and b!6141177 (is-Star!16084 (regTwo!32680 (regOne!32680 r!7292)))) b!6142036))

(assert (= (and b!6141177 (is-Union!16084 (regTwo!32680 (regOne!32680 r!7292)))) b!6142037))

(declare-fun b!6142039 () Bool)

(declare-fun e!3743089 () Bool)

(declare-fun tp!1715883 () Bool)

(declare-fun tp!1715880 () Bool)

(assert (=> b!6142039 (= e!3743089 (and tp!1715883 tp!1715880))))

(declare-fun b!6142038 () Bool)

(assert (=> b!6142038 (= e!3743089 tp_is_empty!41421)))

(declare-fun b!6142040 () Bool)

(declare-fun tp!1715881 () Bool)

(assert (=> b!6142040 (= e!3743089 tp!1715881)))

(declare-fun b!6142041 () Bool)

(declare-fun tp!1715879 () Bool)

(declare-fun tp!1715882 () Bool)

(assert (=> b!6142041 (= e!3743089 (and tp!1715879 tp!1715882))))

(assert (=> b!6141178 (= tp!1715787 e!3743089)))

(assert (= (and b!6141178 (is-ElementMatch!16084 (reg!16413 (regOne!32680 r!7292)))) b!6142038))

(assert (= (and b!6141178 (is-Concat!24929 (reg!16413 (regOne!32680 r!7292)))) b!6142039))

(assert (= (and b!6141178 (is-Star!16084 (reg!16413 (regOne!32680 r!7292)))) b!6142040))

(assert (= (and b!6141178 (is-Union!16084 (reg!16413 (regOne!32680 r!7292)))) b!6142041))

(declare-fun b!6142043 () Bool)

(declare-fun e!3743090 () Bool)

(declare-fun tp!1715888 () Bool)

(declare-fun tp!1715885 () Bool)

(assert (=> b!6142043 (= e!3743090 (and tp!1715888 tp!1715885))))

(declare-fun b!6142042 () Bool)

(assert (=> b!6142042 (= e!3743090 tp_is_empty!41421)))

(declare-fun b!6142044 () Bool)

(declare-fun tp!1715886 () Bool)

(assert (=> b!6142044 (= e!3743090 tp!1715886)))

(declare-fun b!6142045 () Bool)

(declare-fun tp!1715884 () Bool)

(declare-fun tp!1715887 () Bool)

(assert (=> b!6142045 (= e!3743090 (and tp!1715884 tp!1715887))))

(assert (=> b!6141142 (= tp!1715753 e!3743090)))

(assert (= (and b!6141142 (is-ElementMatch!16084 (regOne!32680 (regOne!32681 r!7292)))) b!6142042))

(assert (= (and b!6141142 (is-Concat!24929 (regOne!32680 (regOne!32681 r!7292)))) b!6142043))

(assert (= (and b!6141142 (is-Star!16084 (regOne!32680 (regOne!32681 r!7292)))) b!6142044))

(assert (= (and b!6141142 (is-Union!16084 (regOne!32680 (regOne!32681 r!7292)))) b!6142045))

(declare-fun b!6142047 () Bool)

(declare-fun e!3743091 () Bool)

(declare-fun tp!1715893 () Bool)

(declare-fun tp!1715890 () Bool)

(assert (=> b!6142047 (= e!3743091 (and tp!1715893 tp!1715890))))

(declare-fun b!6142046 () Bool)

(assert (=> b!6142046 (= e!3743091 tp_is_empty!41421)))

(declare-fun b!6142048 () Bool)

(declare-fun tp!1715891 () Bool)

(assert (=> b!6142048 (= e!3743091 tp!1715891)))

(declare-fun b!6142049 () Bool)

(declare-fun tp!1715889 () Bool)

(declare-fun tp!1715892 () Bool)

(assert (=> b!6142049 (= e!3743091 (and tp!1715889 tp!1715892))))

(assert (=> b!6141142 (= tp!1715750 e!3743091)))

(assert (= (and b!6141142 (is-ElementMatch!16084 (regTwo!32680 (regOne!32681 r!7292)))) b!6142046))

(assert (= (and b!6141142 (is-Concat!24929 (regTwo!32680 (regOne!32681 r!7292)))) b!6142047))

(assert (= (and b!6141142 (is-Star!16084 (regTwo!32680 (regOne!32681 r!7292)))) b!6142048))

(assert (= (and b!6141142 (is-Union!16084 (regTwo!32680 (regOne!32681 r!7292)))) b!6142049))

(declare-fun b!6142051 () Bool)

(declare-fun e!3743092 () Bool)

(declare-fun tp!1715898 () Bool)

(declare-fun tp!1715895 () Bool)

(assert (=> b!6142051 (= e!3743092 (and tp!1715898 tp!1715895))))

(declare-fun b!6142050 () Bool)

(assert (=> b!6142050 (= e!3743092 tp_is_empty!41421)))

(declare-fun b!6142052 () Bool)

(declare-fun tp!1715896 () Bool)

(assert (=> b!6142052 (= e!3743092 tp!1715896)))

(declare-fun b!6142053 () Bool)

(declare-fun tp!1715894 () Bool)

(declare-fun tp!1715897 () Bool)

(assert (=> b!6142053 (= e!3743092 (and tp!1715894 tp!1715897))))

(assert (=> b!6141179 (= tp!1715785 e!3743092)))

(assert (= (and b!6141179 (is-ElementMatch!16084 (regOne!32681 (regOne!32680 r!7292)))) b!6142050))

(assert (= (and b!6141179 (is-Concat!24929 (regOne!32681 (regOne!32680 r!7292)))) b!6142051))

(assert (= (and b!6141179 (is-Star!16084 (regOne!32681 (regOne!32680 r!7292)))) b!6142052))

(assert (= (and b!6141179 (is-Union!16084 (regOne!32681 (regOne!32680 r!7292)))) b!6142053))

(declare-fun b!6142055 () Bool)

(declare-fun e!3743093 () Bool)

(declare-fun tp!1715903 () Bool)

(declare-fun tp!1715900 () Bool)

(assert (=> b!6142055 (= e!3743093 (and tp!1715903 tp!1715900))))

(declare-fun b!6142054 () Bool)

(assert (=> b!6142054 (= e!3743093 tp_is_empty!41421)))

(declare-fun b!6142056 () Bool)

(declare-fun tp!1715901 () Bool)

(assert (=> b!6142056 (= e!3743093 tp!1715901)))

(declare-fun b!6142057 () Bool)

(declare-fun tp!1715899 () Bool)

(declare-fun tp!1715902 () Bool)

(assert (=> b!6142057 (= e!3743093 (and tp!1715899 tp!1715902))))

(assert (=> b!6141179 (= tp!1715788 e!3743093)))

(assert (= (and b!6141179 (is-ElementMatch!16084 (regTwo!32681 (regOne!32680 r!7292)))) b!6142054))

(assert (= (and b!6141179 (is-Concat!24929 (regTwo!32681 (regOne!32680 r!7292)))) b!6142055))

(assert (= (and b!6141179 (is-Star!16084 (regTwo!32681 (regOne!32680 r!7292)))) b!6142056))

(assert (= (and b!6141179 (is-Union!16084 (regTwo!32681 (regOne!32680 r!7292)))) b!6142057))

(declare-fun b!6142059 () Bool)

(declare-fun e!3743094 () Bool)

(declare-fun tp!1715908 () Bool)

(declare-fun tp!1715905 () Bool)

(assert (=> b!6142059 (= e!3743094 (and tp!1715908 tp!1715905))))

(declare-fun b!6142058 () Bool)

(assert (=> b!6142058 (= e!3743094 tp_is_empty!41421)))

(declare-fun b!6142060 () Bool)

(declare-fun tp!1715906 () Bool)

(assert (=> b!6142060 (= e!3743094 tp!1715906)))

(declare-fun b!6142061 () Bool)

(declare-fun tp!1715904 () Bool)

(declare-fun tp!1715907 () Bool)

(assert (=> b!6142061 (= e!3743094 (and tp!1715904 tp!1715907))))

(assert (=> b!6141143 (= tp!1715751 e!3743094)))

(assert (= (and b!6141143 (is-ElementMatch!16084 (reg!16413 (regOne!32681 r!7292)))) b!6142058))

(assert (= (and b!6141143 (is-Concat!24929 (reg!16413 (regOne!32681 r!7292)))) b!6142059))

(assert (= (and b!6141143 (is-Star!16084 (reg!16413 (regOne!32681 r!7292)))) b!6142060))

(assert (= (and b!6141143 (is-Union!16084 (reg!16413 (regOne!32681 r!7292)))) b!6142061))

(declare-fun b!6142063 () Bool)

(declare-fun e!3743095 () Bool)

(declare-fun tp!1715913 () Bool)

(declare-fun tp!1715910 () Bool)

(assert (=> b!6142063 (= e!3743095 (and tp!1715913 tp!1715910))))

(declare-fun b!6142062 () Bool)

(assert (=> b!6142062 (= e!3743095 tp_is_empty!41421)))

(declare-fun b!6142064 () Bool)

(declare-fun tp!1715911 () Bool)

(assert (=> b!6142064 (= e!3743095 tp!1715911)))

(declare-fun b!6142065 () Bool)

(declare-fun tp!1715909 () Bool)

(declare-fun tp!1715912 () Bool)

(assert (=> b!6142065 (= e!3743095 (and tp!1715909 tp!1715912))))

(assert (=> b!6141175 (= tp!1715780 e!3743095)))

(assert (= (and b!6141175 (is-ElementMatch!16084 (regOne!32681 (reg!16413 r!7292)))) b!6142062))

(assert (= (and b!6141175 (is-Concat!24929 (regOne!32681 (reg!16413 r!7292)))) b!6142063))

(assert (= (and b!6141175 (is-Star!16084 (regOne!32681 (reg!16413 r!7292)))) b!6142064))

(assert (= (and b!6141175 (is-Union!16084 (regOne!32681 (reg!16413 r!7292)))) b!6142065))

(declare-fun b!6142067 () Bool)

(declare-fun e!3743096 () Bool)

(declare-fun tp!1715918 () Bool)

(declare-fun tp!1715915 () Bool)

(assert (=> b!6142067 (= e!3743096 (and tp!1715918 tp!1715915))))

(declare-fun b!6142066 () Bool)

(assert (=> b!6142066 (= e!3743096 tp_is_empty!41421)))

(declare-fun b!6142068 () Bool)

(declare-fun tp!1715916 () Bool)

(assert (=> b!6142068 (= e!3743096 tp!1715916)))

(declare-fun b!6142069 () Bool)

(declare-fun tp!1715914 () Bool)

(declare-fun tp!1715917 () Bool)

(assert (=> b!6142069 (= e!3743096 (and tp!1715914 tp!1715917))))

(assert (=> b!6141175 (= tp!1715783 e!3743096)))

(assert (= (and b!6141175 (is-ElementMatch!16084 (regTwo!32681 (reg!16413 r!7292)))) b!6142066))

(assert (= (and b!6141175 (is-Concat!24929 (regTwo!32681 (reg!16413 r!7292)))) b!6142067))

(assert (= (and b!6141175 (is-Star!16084 (regTwo!32681 (reg!16413 r!7292)))) b!6142068))

(assert (= (and b!6141175 (is-Union!16084 (regTwo!32681 (reg!16413 r!7292)))) b!6142069))

(declare-fun b!6142071 () Bool)

(declare-fun e!3743097 () Bool)

(declare-fun tp!1715923 () Bool)

(declare-fun tp!1715920 () Bool)

(assert (=> b!6142071 (= e!3743097 (and tp!1715923 tp!1715920))))

(declare-fun b!6142070 () Bool)

(assert (=> b!6142070 (= e!3743097 tp_is_empty!41421)))

(declare-fun b!6142072 () Bool)

(declare-fun tp!1715921 () Bool)

(assert (=> b!6142072 (= e!3743097 tp!1715921)))

(declare-fun b!6142073 () Bool)

(declare-fun tp!1715919 () Bool)

(declare-fun tp!1715922 () Bool)

(assert (=> b!6142073 (= e!3743097 (and tp!1715919 tp!1715922))))

(assert (=> b!6141184 (= tp!1715795 e!3743097)))

(assert (= (and b!6141184 (is-ElementMatch!16084 (h!70875 (exprs!5968 (h!70876 zl!343))))) b!6142070))

(assert (= (and b!6141184 (is-Concat!24929 (h!70875 (exprs!5968 (h!70876 zl!343))))) b!6142071))

(assert (= (and b!6141184 (is-Star!16084 (h!70875 (exprs!5968 (h!70876 zl!343))))) b!6142072))

(assert (= (and b!6141184 (is-Union!16084 (h!70875 (exprs!5968 (h!70876 zl!343))))) b!6142073))

(declare-fun b!6142074 () Bool)

(declare-fun e!3743098 () Bool)

(declare-fun tp!1715924 () Bool)

(declare-fun tp!1715925 () Bool)

(assert (=> b!6142074 (= e!3743098 (and tp!1715924 tp!1715925))))

(assert (=> b!6141184 (= tp!1715796 e!3743098)))

(assert (= (and b!6141184 (is-Cons!64427 (t!378030 (exprs!5968 (h!70876 zl!343))))) b!6142074))

(declare-fun b!6142076 () Bool)

(declare-fun e!3743099 () Bool)

(declare-fun tp!1715930 () Bool)

(declare-fun tp!1715927 () Bool)

(assert (=> b!6142076 (= e!3743099 (and tp!1715930 tp!1715927))))

(declare-fun b!6142075 () Bool)

(assert (=> b!6142075 (= e!3743099 tp_is_empty!41421)))

(declare-fun b!6142077 () Bool)

(declare-fun tp!1715928 () Bool)

(assert (=> b!6142077 (= e!3743099 tp!1715928)))

(declare-fun b!6142078 () Bool)

(declare-fun tp!1715926 () Bool)

(declare-fun tp!1715929 () Bool)

(assert (=> b!6142078 (= e!3743099 (and tp!1715926 tp!1715929))))

(assert (=> b!6141181 (= tp!1715794 e!3743099)))

(assert (= (and b!6141181 (is-ElementMatch!16084 (regOne!32680 (regTwo!32680 r!7292)))) b!6142075))

(assert (= (and b!6141181 (is-Concat!24929 (regOne!32680 (regTwo!32680 r!7292)))) b!6142076))

(assert (= (and b!6141181 (is-Star!16084 (regOne!32680 (regTwo!32680 r!7292)))) b!6142077))

(assert (= (and b!6141181 (is-Union!16084 (regOne!32680 (regTwo!32680 r!7292)))) b!6142078))

(declare-fun b!6142080 () Bool)

(declare-fun e!3743100 () Bool)

(declare-fun tp!1715935 () Bool)

(declare-fun tp!1715932 () Bool)

(assert (=> b!6142080 (= e!3743100 (and tp!1715935 tp!1715932))))

(declare-fun b!6142079 () Bool)

(assert (=> b!6142079 (= e!3743100 tp_is_empty!41421)))

(declare-fun b!6142081 () Bool)

(declare-fun tp!1715933 () Bool)

(assert (=> b!6142081 (= e!3743100 tp!1715933)))

(declare-fun b!6142082 () Bool)

(declare-fun tp!1715931 () Bool)

(declare-fun tp!1715934 () Bool)

(assert (=> b!6142082 (= e!3743100 (and tp!1715931 tp!1715934))))

(assert (=> b!6141181 (= tp!1715791 e!3743100)))

(assert (= (and b!6141181 (is-ElementMatch!16084 (regTwo!32680 (regTwo!32680 r!7292)))) b!6142079))

(assert (= (and b!6141181 (is-Concat!24929 (regTwo!32680 (regTwo!32680 r!7292)))) b!6142080))

(assert (= (and b!6141181 (is-Star!16084 (regTwo!32680 (regTwo!32680 r!7292)))) b!6142081))

(assert (= (and b!6141181 (is-Union!16084 (regTwo!32680 (regTwo!32680 r!7292)))) b!6142082))

(declare-fun b!6142084 () Bool)

(declare-fun e!3743101 () Bool)

(declare-fun tp!1715940 () Bool)

(declare-fun tp!1715937 () Bool)

(assert (=> b!6142084 (= e!3743101 (and tp!1715940 tp!1715937))))

(declare-fun b!6142083 () Bool)

(assert (=> b!6142083 (= e!3743101 tp_is_empty!41421)))

(declare-fun b!6142085 () Bool)

(declare-fun tp!1715938 () Bool)

(assert (=> b!6142085 (= e!3743101 tp!1715938)))

(declare-fun b!6142086 () Bool)

(declare-fun tp!1715936 () Bool)

(declare-fun tp!1715939 () Bool)

(assert (=> b!6142086 (= e!3743101 (and tp!1715936 tp!1715939))))

(assert (=> b!6141182 (= tp!1715792 e!3743101)))

(assert (= (and b!6141182 (is-ElementMatch!16084 (reg!16413 (regTwo!32680 r!7292)))) b!6142083))

(assert (= (and b!6141182 (is-Concat!24929 (reg!16413 (regTwo!32680 r!7292)))) b!6142084))

(assert (= (and b!6141182 (is-Star!16084 (reg!16413 (regTwo!32680 r!7292)))) b!6142085))

(assert (= (and b!6141182 (is-Union!16084 (reg!16413 (regTwo!32680 r!7292)))) b!6142086))

(declare-fun b!6142088 () Bool)

(declare-fun e!3743102 () Bool)

(declare-fun tp!1715945 () Bool)

(declare-fun tp!1715942 () Bool)

(assert (=> b!6142088 (= e!3743102 (and tp!1715945 tp!1715942))))

(declare-fun b!6142087 () Bool)

(assert (=> b!6142087 (= e!3743102 tp_is_empty!41421)))

(declare-fun b!6142089 () Bool)

(declare-fun tp!1715943 () Bool)

(assert (=> b!6142089 (= e!3743102 tp!1715943)))

(declare-fun b!6142090 () Bool)

(declare-fun tp!1715941 () Bool)

(declare-fun tp!1715944 () Bool)

(assert (=> b!6142090 (= e!3743102 (and tp!1715941 tp!1715944))))

(assert (=> b!6141146 (= tp!1715758 e!3743102)))

(assert (= (and b!6141146 (is-ElementMatch!16084 (regOne!32680 (regTwo!32681 r!7292)))) b!6142087))

(assert (= (and b!6141146 (is-Concat!24929 (regOne!32680 (regTwo!32681 r!7292)))) b!6142088))

(assert (= (and b!6141146 (is-Star!16084 (regOne!32680 (regTwo!32681 r!7292)))) b!6142089))

(assert (= (and b!6141146 (is-Union!16084 (regOne!32680 (regTwo!32681 r!7292)))) b!6142090))

(declare-fun b!6142092 () Bool)

(declare-fun e!3743103 () Bool)

(declare-fun tp!1715950 () Bool)

(declare-fun tp!1715947 () Bool)

(assert (=> b!6142092 (= e!3743103 (and tp!1715950 tp!1715947))))

(declare-fun b!6142091 () Bool)

(assert (=> b!6142091 (= e!3743103 tp_is_empty!41421)))

(declare-fun b!6142093 () Bool)

(declare-fun tp!1715948 () Bool)

(assert (=> b!6142093 (= e!3743103 tp!1715948)))

(declare-fun b!6142094 () Bool)

(declare-fun tp!1715946 () Bool)

(declare-fun tp!1715949 () Bool)

(assert (=> b!6142094 (= e!3743103 (and tp!1715946 tp!1715949))))

(assert (=> b!6141146 (= tp!1715755 e!3743103)))

(assert (= (and b!6141146 (is-ElementMatch!16084 (regTwo!32680 (regTwo!32681 r!7292)))) b!6142091))

(assert (= (and b!6141146 (is-Concat!24929 (regTwo!32680 (regTwo!32681 r!7292)))) b!6142092))

(assert (= (and b!6141146 (is-Star!16084 (regTwo!32680 (regTwo!32681 r!7292)))) b!6142093))

(assert (= (and b!6141146 (is-Union!16084 (regTwo!32680 (regTwo!32681 r!7292)))) b!6142094))

(declare-fun b!6142096 () Bool)

(declare-fun e!3743104 () Bool)

(declare-fun tp!1715955 () Bool)

(declare-fun tp!1715952 () Bool)

(assert (=> b!6142096 (= e!3743104 (and tp!1715955 tp!1715952))))

(declare-fun b!6142095 () Bool)

(assert (=> b!6142095 (= e!3743104 tp_is_empty!41421)))

(declare-fun b!6142097 () Bool)

(declare-fun tp!1715953 () Bool)

(assert (=> b!6142097 (= e!3743104 tp!1715953)))

(declare-fun b!6142098 () Bool)

(declare-fun tp!1715951 () Bool)

(declare-fun tp!1715954 () Bool)

(assert (=> b!6142098 (= e!3743104 (and tp!1715951 tp!1715954))))

(assert (=> b!6141173 (= tp!1715784 e!3743104)))

(assert (= (and b!6141173 (is-ElementMatch!16084 (regOne!32680 (reg!16413 r!7292)))) b!6142095))

(assert (= (and b!6141173 (is-Concat!24929 (regOne!32680 (reg!16413 r!7292)))) b!6142096))

(assert (= (and b!6141173 (is-Star!16084 (regOne!32680 (reg!16413 r!7292)))) b!6142097))

(assert (= (and b!6141173 (is-Union!16084 (regOne!32680 (reg!16413 r!7292)))) b!6142098))

(declare-fun b!6142100 () Bool)

(declare-fun e!3743105 () Bool)

(declare-fun tp!1715960 () Bool)

(declare-fun tp!1715957 () Bool)

(assert (=> b!6142100 (= e!3743105 (and tp!1715960 tp!1715957))))

(declare-fun b!6142099 () Bool)

(assert (=> b!6142099 (= e!3743105 tp_is_empty!41421)))

(declare-fun b!6142101 () Bool)

(declare-fun tp!1715958 () Bool)

(assert (=> b!6142101 (= e!3743105 tp!1715958)))

(declare-fun b!6142102 () Bool)

(declare-fun tp!1715956 () Bool)

(declare-fun tp!1715959 () Bool)

(assert (=> b!6142102 (= e!3743105 (and tp!1715956 tp!1715959))))

(assert (=> b!6141173 (= tp!1715781 e!3743105)))

(assert (= (and b!6141173 (is-ElementMatch!16084 (regTwo!32680 (reg!16413 r!7292)))) b!6142099))

(assert (= (and b!6141173 (is-Concat!24929 (regTwo!32680 (reg!16413 r!7292)))) b!6142100))

(assert (= (and b!6141173 (is-Star!16084 (regTwo!32680 (reg!16413 r!7292)))) b!6142101))

(assert (= (and b!6141173 (is-Union!16084 (regTwo!32680 (reg!16413 r!7292)))) b!6142102))

(declare-fun b!6142104 () Bool)

(declare-fun e!3743106 () Bool)

(declare-fun tp!1715965 () Bool)

(declare-fun tp!1715962 () Bool)

(assert (=> b!6142104 (= e!3743106 (and tp!1715965 tp!1715962))))

(declare-fun b!6142103 () Bool)

(assert (=> b!6142103 (= e!3743106 tp_is_empty!41421)))

(declare-fun b!6142105 () Bool)

(declare-fun tp!1715963 () Bool)

(assert (=> b!6142105 (= e!3743106 tp!1715963)))

(declare-fun b!6142106 () Bool)

(declare-fun tp!1715961 () Bool)

(declare-fun tp!1715964 () Bool)

(assert (=> b!6142106 (= e!3743106 (and tp!1715961 tp!1715964))))

(assert (=> b!6141174 (= tp!1715782 e!3743106)))

(assert (= (and b!6141174 (is-ElementMatch!16084 (reg!16413 (reg!16413 r!7292)))) b!6142103))

(assert (= (and b!6141174 (is-Concat!24929 (reg!16413 (reg!16413 r!7292)))) b!6142104))

(assert (= (and b!6141174 (is-Star!16084 (reg!16413 (reg!16413 r!7292)))) b!6142105))

(assert (= (and b!6141174 (is-Union!16084 (reg!16413 (reg!16413 r!7292)))) b!6142106))

(declare-fun b!6142108 () Bool)

(declare-fun e!3743107 () Bool)

(declare-fun tp!1715970 () Bool)

(declare-fun tp!1715967 () Bool)

(assert (=> b!6142108 (= e!3743107 (and tp!1715970 tp!1715967))))

(declare-fun b!6142107 () Bool)

(assert (=> b!6142107 (= e!3743107 tp_is_empty!41421)))

(declare-fun b!6142109 () Bool)

(declare-fun tp!1715968 () Bool)

(assert (=> b!6142109 (= e!3743107 tp!1715968)))

(declare-fun b!6142110 () Bool)

(declare-fun tp!1715966 () Bool)

(declare-fun tp!1715969 () Bool)

(assert (=> b!6142110 (= e!3743107 (and tp!1715966 tp!1715969))))

(assert (=> b!6141183 (= tp!1715790 e!3743107)))

(assert (= (and b!6141183 (is-ElementMatch!16084 (regOne!32681 (regTwo!32680 r!7292)))) b!6142107))

(assert (= (and b!6141183 (is-Concat!24929 (regOne!32681 (regTwo!32680 r!7292)))) b!6142108))

(assert (= (and b!6141183 (is-Star!16084 (regOne!32681 (regTwo!32680 r!7292)))) b!6142109))

(assert (= (and b!6141183 (is-Union!16084 (regOne!32681 (regTwo!32680 r!7292)))) b!6142110))

(declare-fun b!6142112 () Bool)

(declare-fun e!3743108 () Bool)

(declare-fun tp!1715975 () Bool)

(declare-fun tp!1715972 () Bool)

(assert (=> b!6142112 (= e!3743108 (and tp!1715975 tp!1715972))))

(declare-fun b!6142111 () Bool)

(assert (=> b!6142111 (= e!3743108 tp_is_empty!41421)))

(declare-fun b!6142113 () Bool)

(declare-fun tp!1715973 () Bool)

(assert (=> b!6142113 (= e!3743108 tp!1715973)))

(declare-fun b!6142114 () Bool)

(declare-fun tp!1715971 () Bool)

(declare-fun tp!1715974 () Bool)

(assert (=> b!6142114 (= e!3743108 (and tp!1715971 tp!1715974))))

(assert (=> b!6141183 (= tp!1715793 e!3743108)))

(assert (= (and b!6141183 (is-ElementMatch!16084 (regTwo!32681 (regTwo!32680 r!7292)))) b!6142111))

(assert (= (and b!6141183 (is-Concat!24929 (regTwo!32681 (regTwo!32680 r!7292)))) b!6142112))

(assert (= (and b!6141183 (is-Star!16084 (regTwo!32681 (regTwo!32680 r!7292)))) b!6142113))

(assert (= (and b!6141183 (is-Union!16084 (regTwo!32681 (regTwo!32680 r!7292)))) b!6142114))

(declare-fun b!6142116 () Bool)

(declare-fun e!3743109 () Bool)

(declare-fun tp!1715980 () Bool)

(declare-fun tp!1715977 () Bool)

(assert (=> b!6142116 (= e!3743109 (and tp!1715980 tp!1715977))))

(declare-fun b!6142115 () Bool)

(assert (=> b!6142115 (= e!3743109 tp_is_empty!41421)))

(declare-fun b!6142117 () Bool)

(declare-fun tp!1715978 () Bool)

(assert (=> b!6142117 (= e!3743109 tp!1715978)))

(declare-fun b!6142118 () Bool)

(declare-fun tp!1715976 () Bool)

(declare-fun tp!1715979 () Bool)

(assert (=> b!6142118 (= e!3743109 (and tp!1715976 tp!1715979))))

(assert (=> b!6141147 (= tp!1715756 e!3743109)))

(assert (= (and b!6141147 (is-ElementMatch!16084 (reg!16413 (regTwo!32681 r!7292)))) b!6142115))

(assert (= (and b!6141147 (is-Concat!24929 (reg!16413 (regTwo!32681 r!7292)))) b!6142116))

(assert (= (and b!6141147 (is-Star!16084 (reg!16413 (regTwo!32681 r!7292)))) b!6142117))

(assert (= (and b!6141147 (is-Union!16084 (reg!16413 (regTwo!32681 r!7292)))) b!6142118))

(declare-fun b!6142120 () Bool)

(declare-fun e!3743110 () Bool)

(declare-fun tp!1715985 () Bool)

(declare-fun tp!1715982 () Bool)

(assert (=> b!6142120 (= e!3743110 (and tp!1715985 tp!1715982))))

(declare-fun b!6142119 () Bool)

(assert (=> b!6142119 (= e!3743110 tp_is_empty!41421)))

(declare-fun b!6142121 () Bool)

(declare-fun tp!1715983 () Bool)

(assert (=> b!6142121 (= e!3743110 tp!1715983)))

(declare-fun b!6142122 () Bool)

(declare-fun tp!1715981 () Bool)

(declare-fun tp!1715984 () Bool)

(assert (=> b!6142122 (= e!3743110 (and tp!1715981 tp!1715984))))

(assert (=> b!6141148 (= tp!1715754 e!3743110)))

(assert (= (and b!6141148 (is-ElementMatch!16084 (regOne!32681 (regTwo!32681 r!7292)))) b!6142119))

(assert (= (and b!6141148 (is-Concat!24929 (regOne!32681 (regTwo!32681 r!7292)))) b!6142120))

(assert (= (and b!6141148 (is-Star!16084 (regOne!32681 (regTwo!32681 r!7292)))) b!6142121))

(assert (= (and b!6141148 (is-Union!16084 (regOne!32681 (regTwo!32681 r!7292)))) b!6142122))

(declare-fun b!6142124 () Bool)

(declare-fun e!3743111 () Bool)

(declare-fun tp!1715990 () Bool)

(declare-fun tp!1715987 () Bool)

(assert (=> b!6142124 (= e!3743111 (and tp!1715990 tp!1715987))))

(declare-fun b!6142123 () Bool)

(assert (=> b!6142123 (= e!3743111 tp_is_empty!41421)))

(declare-fun b!6142125 () Bool)

(declare-fun tp!1715988 () Bool)

(assert (=> b!6142125 (= e!3743111 tp!1715988)))

(declare-fun b!6142126 () Bool)

(declare-fun tp!1715986 () Bool)

(declare-fun tp!1715989 () Bool)

(assert (=> b!6142126 (= e!3743111 (and tp!1715986 tp!1715989))))

(assert (=> b!6141148 (= tp!1715757 e!3743111)))

(assert (= (and b!6141148 (is-ElementMatch!16084 (regTwo!32681 (regTwo!32681 r!7292)))) b!6142123))

(assert (= (and b!6141148 (is-Concat!24929 (regTwo!32681 (regTwo!32681 r!7292)))) b!6142124))

(assert (= (and b!6141148 (is-Star!16084 (regTwo!32681 (regTwo!32681 r!7292)))) b!6142125))

(assert (= (and b!6141148 (is-Union!16084 (regTwo!32681 (regTwo!32681 r!7292)))) b!6142126))

(declare-fun b!6142128 () Bool)

(declare-fun e!3743112 () Bool)

(declare-fun tp!1715995 () Bool)

(declare-fun tp!1715992 () Bool)

(assert (=> b!6142128 (= e!3743112 (and tp!1715995 tp!1715992))))

(declare-fun b!6142127 () Bool)

(assert (=> b!6142127 (= e!3743112 tp_is_empty!41421)))

(declare-fun b!6142129 () Bool)

(declare-fun tp!1715993 () Bool)

(assert (=> b!6142129 (= e!3743112 tp!1715993)))

(declare-fun b!6142130 () Bool)

(declare-fun tp!1715991 () Bool)

(declare-fun tp!1715994 () Bool)

(assert (=> b!6142130 (= e!3743112 (and tp!1715991 tp!1715994))))

(assert (=> b!6141144 (= tp!1715749 e!3743112)))

(assert (= (and b!6141144 (is-ElementMatch!16084 (regOne!32681 (regOne!32681 r!7292)))) b!6142127))

(assert (= (and b!6141144 (is-Concat!24929 (regOne!32681 (regOne!32681 r!7292)))) b!6142128))

(assert (= (and b!6141144 (is-Star!16084 (regOne!32681 (regOne!32681 r!7292)))) b!6142129))

(assert (= (and b!6141144 (is-Union!16084 (regOne!32681 (regOne!32681 r!7292)))) b!6142130))

(declare-fun b!6142132 () Bool)

(declare-fun e!3743113 () Bool)

(declare-fun tp!1716000 () Bool)

(declare-fun tp!1715997 () Bool)

(assert (=> b!6142132 (= e!3743113 (and tp!1716000 tp!1715997))))

(declare-fun b!6142131 () Bool)

(assert (=> b!6142131 (= e!3743113 tp_is_empty!41421)))

(declare-fun b!6142133 () Bool)

(declare-fun tp!1715998 () Bool)

(assert (=> b!6142133 (= e!3743113 tp!1715998)))

(declare-fun b!6142134 () Bool)

(declare-fun tp!1715996 () Bool)

(declare-fun tp!1715999 () Bool)

(assert (=> b!6142134 (= e!3743113 (and tp!1715996 tp!1715999))))

(assert (=> b!6141144 (= tp!1715752 e!3743113)))

(assert (= (and b!6141144 (is-ElementMatch!16084 (regTwo!32681 (regOne!32681 r!7292)))) b!6142131))

(assert (= (and b!6141144 (is-Concat!24929 (regTwo!32681 (regOne!32681 r!7292)))) b!6142132))

(assert (= (and b!6141144 (is-Star!16084 (regTwo!32681 (regOne!32681 r!7292)))) b!6142133))

(assert (= (and b!6141144 (is-Union!16084 (regTwo!32681 (regOne!32681 r!7292)))) b!6142134))

(declare-fun b!6142135 () Bool)

(declare-fun e!3743114 () Bool)

(declare-fun tp!1716001 () Bool)

(assert (=> b!6142135 (= e!3743114 (and tp_is_empty!41421 tp!1716001))))

(assert (=> b!6141171 (= tp!1715779 e!3743114)))

(assert (= (and b!6141171 (is-Cons!64429 (t!378032 (t!378032 s!2326)))) b!6142135))

(declare-fun b!6142137 () Bool)

(declare-fun e!3743115 () Bool)

(declare-fun tp!1716006 () Bool)

(declare-fun tp!1716003 () Bool)

(assert (=> b!6142137 (= e!3743115 (and tp!1716006 tp!1716003))))

(declare-fun b!6142136 () Bool)

(assert (=> b!6142136 (= e!3743115 tp_is_empty!41421)))

(declare-fun b!6142138 () Bool)

(declare-fun tp!1716004 () Bool)

(assert (=> b!6142138 (= e!3743115 tp!1716004)))

(declare-fun b!6142139 () Bool)

(declare-fun tp!1716002 () Bool)

(declare-fun tp!1716005 () Bool)

(assert (=> b!6142139 (= e!3743115 (and tp!1716002 tp!1716005))))

(assert (=> b!6141158 (= tp!1715769 e!3743115)))

(assert (= (and b!6141158 (is-ElementMatch!16084 (h!70875 (exprs!5968 setElem!41537)))) b!6142136))

(assert (= (and b!6141158 (is-Concat!24929 (h!70875 (exprs!5968 setElem!41537)))) b!6142137))

(assert (= (and b!6141158 (is-Star!16084 (h!70875 (exprs!5968 setElem!41537)))) b!6142138))

(assert (= (and b!6141158 (is-Union!16084 (h!70875 (exprs!5968 setElem!41537)))) b!6142139))

(declare-fun b!6142140 () Bool)

(declare-fun e!3743116 () Bool)

(declare-fun tp!1716007 () Bool)

(declare-fun tp!1716008 () Bool)

(assert (=> b!6142140 (= e!3743116 (and tp!1716007 tp!1716008))))

(assert (=> b!6141158 (= tp!1715770 e!3743116)))

(assert (= (and b!6141158 (is-Cons!64427 (t!378030 (exprs!5968 setElem!41537)))) b!6142140))

(declare-fun condSetEmpty!41551 () Bool)

(assert (=> setNonEmpty!41543 (= condSetEmpty!41551 (= setRest!41543 (as set.empty (Set Context!10936))))))

(declare-fun setRes!41551 () Bool)

(assert (=> setNonEmpty!41543 (= tp!1715764 setRes!41551)))

(declare-fun setIsEmpty!41551 () Bool)

(assert (=> setIsEmpty!41551 setRes!41551))

(declare-fun e!3743117 () Bool)

(declare-fun tp!1716010 () Bool)

(declare-fun setNonEmpty!41551 () Bool)

(declare-fun setElem!41551 () Context!10936)

(assert (=> setNonEmpty!41551 (= setRes!41551 (and tp!1716010 (inv!83458 setElem!41551) e!3743117))))

(declare-fun setRest!41551 () (Set Context!10936))

(assert (=> setNonEmpty!41551 (= setRest!41543 (set.union (set.insert setElem!41551 (as set.empty (Set Context!10936))) setRest!41551))))

(declare-fun b!6142141 () Bool)

(declare-fun tp!1716009 () Bool)

(assert (=> b!6142141 (= e!3743117 tp!1716009)))

(assert (= (and setNonEmpty!41543 condSetEmpty!41551) setIsEmpty!41551))

(assert (= (and setNonEmpty!41543 (not condSetEmpty!41551)) setNonEmpty!41551))

(assert (= setNonEmpty!41551 b!6142141))

(declare-fun m!6983330 () Bool)

(assert (=> setNonEmpty!41551 m!6983330))

(declare-fun b!6142142 () Bool)

(declare-fun e!3743118 () Bool)

(declare-fun tp!1716011 () Bool)

(declare-fun tp!1716012 () Bool)

(assert (=> b!6142142 (= e!3743118 (and tp!1716011 tp!1716012))))

(assert (=> b!6141153 (= tp!1715763 e!3743118)))

(assert (= (and b!6141153 (is-Cons!64427 (exprs!5968 setElem!41543))) b!6142142))

(declare-fun b!6142144 () Bool)

(declare-fun e!3743120 () Bool)

(declare-fun tp!1716013 () Bool)

(assert (=> b!6142144 (= e!3743120 tp!1716013)))

(declare-fun tp!1716014 () Bool)

(declare-fun b!6142143 () Bool)

(declare-fun e!3743119 () Bool)

(assert (=> b!6142143 (= e!3743119 (and (inv!83458 (h!70876 (t!378031 (t!378031 zl!343)))) e!3743120 tp!1716014))))

(assert (=> b!6141165 (= tp!1715776 e!3743119)))

(assert (= b!6142143 b!6142144))

(assert (= (and b!6141165 (is-Cons!64428 (t!378031 (t!378031 zl!343)))) b!6142143))

(declare-fun m!6983332 () Bool)

(assert (=> b!6142143 m!6983332))

(declare-fun b!6142145 () Bool)

(declare-fun e!3743121 () Bool)

(declare-fun tp!1716015 () Bool)

(declare-fun tp!1716016 () Bool)

(assert (=> b!6142145 (= e!3743121 (and tp!1716015 tp!1716016))))

(assert (=> b!6141166 (= tp!1715775 e!3743121)))

(assert (= (and b!6141166 (is-Cons!64427 (exprs!5968 (h!70876 (t!378031 zl!343))))) b!6142145))

(declare-fun b_lambda!233761 () Bool)

(assert (= b_lambda!233753 (or d!1923976 b_lambda!233761)))

(declare-fun bs!1522986 () Bool)

(declare-fun d!1924362 () Bool)

(assert (= bs!1522986 (and d!1924362 d!1923976)))

(assert (=> bs!1522986 (= (dynLambda!25391 lambda!334736 (h!70875 (exprs!5968 lt!2333068))) (validRegex!7820 (h!70875 (exprs!5968 lt!2333068))))))

(declare-fun m!6983334 () Bool)

(assert (=> bs!1522986 m!6983334))

(assert (=> b!6141921 d!1924362))

(declare-fun b_lambda!233763 () Bool)

(assert (= b_lambda!233755 (or b!6140677 b_lambda!233763)))

(assert (=> d!1924334 d!1924018))

(declare-fun b_lambda!233765 () Bool)

(assert (= b_lambda!233747 (or d!1923942 b_lambda!233765)))

(declare-fun bs!1522987 () Bool)

(declare-fun d!1924364 () Bool)

(assert (= bs!1522987 (and d!1924364 d!1923942)))

(assert (=> bs!1522987 (= (dynLambda!25391 lambda!334713 (h!70875 (exprs!5968 setElem!41537))) (validRegex!7820 (h!70875 (exprs!5968 setElem!41537))))))

(declare-fun m!6983336 () Bool)

(assert (=> bs!1522987 m!6983336))

(assert (=> b!6141697 d!1924364))

(declare-fun b_lambda!233767 () Bool)

(assert (= b_lambda!233751 (or d!1923940 b_lambda!233767)))

(declare-fun bs!1522988 () Bool)

(declare-fun d!1924366 () Bool)

(assert (= bs!1522988 (and d!1924366 d!1923940)))

(assert (=> bs!1522988 (= (dynLambda!25391 lambda!334710 (h!70875 (exprs!5968 (h!70876 zl!343)))) (validRegex!7820 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(declare-fun m!6983338 () Bool)

(assert (=> bs!1522988 m!6983338))

(assert (=> b!6141873 d!1924366))

(declare-fun b_lambda!233769 () Bool)

(assert (= b_lambda!233749 (or d!1923952 b_lambda!233769)))

(declare-fun bs!1522989 () Bool)

(declare-fun d!1924368 () Bool)

(assert (= bs!1522989 (and d!1924368 d!1923952)))

(assert (=> bs!1522989 (= (dynLambda!25391 lambda!334717 (h!70875 (unfocusZipperList!1505 zl!343))) (validRegex!7820 (h!70875 (unfocusZipperList!1505 zl!343))))))

(declare-fun m!6983340 () Bool)

(assert (=> bs!1522989 m!6983340))

(assert (=> b!6141821 d!1924368))

(declare-fun b_lambda!233771 () Bool)

(assert (= b_lambda!233745 (or d!1923954 b_lambda!233771)))

(declare-fun bs!1522990 () Bool)

(declare-fun d!1924370 () Bool)

(assert (= bs!1522990 (and d!1924370 d!1923954)))

(assert (=> bs!1522990 (= (dynLambda!25391 lambda!334720 (h!70875 lt!2333162)) (validRegex!7820 (h!70875 lt!2333162)))))

(declare-fun m!6983342 () Bool)

(assert (=> bs!1522990 m!6983342))

(assert (=> b!6141648 d!1924370))

(declare-fun b_lambda!233773 () Bool)

(assert (= b_lambda!233759 (or d!1923944 b_lambda!233773)))

(declare-fun bs!1522991 () Bool)

(declare-fun d!1924372 () Bool)

(assert (= bs!1522991 (and d!1924372 d!1923944)))

(assert (=> bs!1522991 (= (dynLambda!25391 lambda!334714 (h!70875 (exprs!5968 (h!70876 zl!343)))) (validRegex!7820 (h!70875 (exprs!5968 (h!70876 zl!343)))))))

(assert (=> bs!1522991 m!6983338))

(assert (=> b!6142028 d!1924372))

(declare-fun b_lambda!233775 () Bool)

(assert (= b_lambda!233757 (or b!6140677 b_lambda!233775)))

(assert (=> d!1924350 d!1924020))

(push 1)

(assert (not b!6142056))

(assert (not bm!510117))

(assert (not bm!510120))

(assert (not b!6141728))

(assert (not b!6142082))

(assert (not d!1924334))

(assert (not b!6141863))

(assert (not bm!510170))

(assert (not b!6142078))

(assert (not bm!510070))

(assert (not b!6142033))

(assert (not d!1924342))

(assert (not b!6142085))

(assert (not b!6142031))

(assert (not b!6141845))

(assert (not b!6141649))

(assert (not b!6142065))

(assert (not b!6142122))

(assert (not d!1924328))

(assert (not b!6141825))

(assert (not bm!510146))

(assert (not b!6141590))

(assert (not b!6142045))

(assert (not b!6142114))

(assert (not d!1924326))

(assert (not b!6142112))

(assert (not b!6142064))

(assert (not b!6142113))

(assert (not d!1924232))

(assert (not d!1924142))

(assert (not b!6142048))

(assert (not bm!510166))

(assert (not b!6142130))

(assert (not bm!510100))

(assert (not b!6141693))

(assert (not b!6142101))

(assert (not b!6141733))

(assert (not b!6142089))

(assert (not b!6141726))

(assert (not b!6141909))

(assert (not d!1924278))

(assert (not b!6142128))

(assert (not bm!510083))

(assert (not b!6141915))

(assert (not b_lambda!233767))

(assert (not b!6142016))

(assert (not b!6142118))

(assert (not b!6142134))

(assert (not bm!510137))

(assert (not b!6141800))

(assert (not b!6142139))

(assert (not d!1924154))

(assert (not b!6141735))

(assert (not b!6142108))

(assert (not b!6142049))

(assert (not b!6141922))

(assert (not b!6142032))

(assert (not bm!510136))

(assert (not b!6141881))

(assert (not b!6141797))

(assert (not b!6141847))

(assert (not b!6142081))

(assert (not b_lambda!233733))

(assert (not d!1924360))

(assert (not b!6141672))

(assert (not bm!510102))

(assert (not d!1924276))

(assert (not bm!510067))

(assert (not d!1924280))

(assert (not b!6141641))

(assert (not bm!510133))

(assert (not b!6142145))

(assert (not bm!510147))

(assert (not bm!510164))

(assert (not b!6142144))

(assert (not b!6142142))

(assert (not b!6141692))

(assert (not bm!510091))

(assert (not b!6141705))

(assert (not b!6141740))

(assert (not bm!510160))

(assert (not b!6142096))

(assert (not b!6142084))

(assert (not b!6141986))

(assert (not d!1924136))

(assert (not bm!510169))

(assert (not bm!510075))

(assert (not b!6142097))

(assert (not b!6142098))

(assert (not bm!510107))

(assert (not b!6142140))

(assert (not b!6141741))

(assert (not bm!510126))

(assert (not b!6141756))

(assert (not d!1924254))

(assert (not b!6141929))

(assert (not d!1924148))

(assert (not b!6141640))

(assert (not b!6141721))

(assert (not b!6141911))

(assert (not d!1924204))

(assert (not setNonEmpty!41551))

(assert (not b!6142137))

(assert (not d!1924120))

(assert (not b!6142040))

(assert (not b_lambda!233775))

(assert (not b!6142068))

(assert (not d!1924172))

(assert (not d!1924282))

(assert (not bm!510143))

(assert (not b!6141622))

(assert (not bm!510077))

(assert (not bm!510095))

(assert (not b!6141737))

(assert (not b!6141605))

(assert (not b!6142106))

(assert (not b!6142004))

(assert (not b!6142120))

(assert (not b!6141709))

(assert (not b!6141874))

(assert (not b!6141868))

(assert (not d!1924350))

(assert (not bm!510089))

(assert (not b!6141688))

(assert (not b!6141923))

(assert (not d!1924304))

(assert (not bm!510124))

(assert (not d!1924354))

(assert (not setNonEmpty!41549))

(assert (not d!1924212))

(assert (not bm!510130))

(assert (not b!6141962))

(assert (not d!1924146))

(assert (not b!6142080))

(assert (not bm!510122))

(assert (not b!6141635))

(assert (not b!6141701))

(assert (not b!6142041))

(assert (not bm!510066))

(assert (not b!6142129))

(assert (not bm!510097))

(assert (not d!1924320))

(assert (not b!6141852))

(assert (not b!6142044))

(assert (not b!6142036))

(assert (not bm!510156))

(assert (not d!1924244))

(assert (not b!6142143))

(assert (not b!6141691))

(assert (not b!6141887))

(assert (not b!6141749))

(assert (not d!1924174))

(assert (not b!6141895))

(assert (not b!6142117))

(assert (not bm!510144))

(assert (not d!1924270))

(assert (not b!6141685))

(assert (not b_lambda!233773))

(assert (not b!6141732))

(assert (not b!6142047))

(assert (not bm!510132))

(assert (not b!6142121))

(assert (not b!6141809))

(assert (not b!6142102))

(assert (not bs!1522986))

(assert (not b!6142024))

(assert (not d!1924286))

(assert (not bm!510128))

(assert (not b!6142061))

(assert (not b!6141686))

(assert (not b!6142116))

(assert (not b!6142008))

(assert (not b!6141908))

(assert (not b!6142125))

(assert (not d!1924134))

(assert (not b!6142086))

(assert (not b_lambda!233761))

(assert (not bm!510078))

(assert (not d!1924114))

(assert (not b!6141879))

(assert (not bm!510153))

(assert (not d!1924138))

(assert (not b!6142135))

(assert (not b!6141803))

(assert (not b!6141707))

(assert (not b!6141618))

(assert (not b!6142043))

(assert (not b!6141690))

(assert (not bm!510087))

(assert (not b!6142077))

(assert (not b!6141642))

(assert (not d!1924324))

(assert (not d!1924162))

(assert (not b!6141858))

(assert (not bm!510174))

(assert (not d!1924292))

(assert (not b!6141753))

(assert (not bm!510158))

(assert (not b_lambda!233763))

(assert (not b!6141888))

(assert (not b!6141751))

(assert (not b!6142109))

(assert (not b!6141977))

(assert (not b!6141777))

(assert (not b!6141796))

(assert (not b!6142094))

(assert (not b!6141987))

(assert (not b!6141985))

(assert (not d!1924260))

(assert (not b_lambda!233735))

(assert (not b!6141630))

(assert (not b!6142072))

(assert (not b!6141711))

(assert (not setNonEmpty!41550))

(assert (not d!1924242))

(assert (not b!6141990))

(assert (not bm!510121))

(assert (not b!6141827))

(assert (not d!1924122))

(assert (not b!6141625))

(assert (not d!1924262))

(assert (not bm!510131))

(assert (not d!1924130))

(assert (not b!6142035))

(assert (not b!6141875))

(assert (not bm!510161))

(assert (not b!6142069))

(assert (not b!6141811))

(assert (not b_lambda!233765))

(assert (not b!6141840))

(assert (not bm!510162))

(assert (not b!6141999))

(assert (not b!6141657))

(assert (not b!6141623))

(assert (not d!1924216))

(assert (not b!6141681))

(assert (not b!6142141))

(assert (not b!6141687))

(assert (not bm!510080))

(assert (not b!6142071))

(assert (not b!6142015))

(assert (not bm!510154))

(assert (not b!6141924))

(assert (not d!1924186))

(assert (not b!6141816))

(assert (not b!6142073))

(assert (not b!6141613))

(assert tp_is_empty!41421)

(assert (not b!6141907))

(assert (not bm!510093))

(assert (not b!6141710))

(assert (not b!6141627))

(assert (not b!6142126))

(assert (not bm!510108))

(assert (not bs!1522990))

(assert (not b!6142053))

(assert (not bm!510139))

(assert (not b!6142138))

(assert (not d!1924180))

(assert (not d!1924222))

(assert (not b!6141804))

(assert (not b!6141989))

(assert (not b!6141978))

(assert (not bm!510172))

(assert (not b!6141585))

(assert (not b!6141890))

(assert (not b!6142059))

(assert (not b!6141668))

(assert (not d!1924318))

(assert (not b!6142104))

(assert (not bm!510104))

(assert (not b!6141742))

(assert (not b!6141703))

(assert (not d!1924300))

(assert (not b!6142088))

(assert (not b!6142093))

(assert (not d!1924290))

(assert (not b!6141835))

(assert (not d!1924182))

(assert (not bm!510176))

(assert (not b!6141810))

(assert (not d!1924228))

(assert (not b!6142037))

(assert (not b!6141712))

(assert (not b!6142067))

(assert (not d!1924116))

(assert (not d!1924338))

(assert (not b!6142014))

(assert (not b_lambda!233771))

(assert (not d!1924344))

(assert (not bs!1522991))

(assert (not bm!510069))

(assert (not d!1924200))

(assert (not b!6141673))

(assert (not bs!1522989))

(assert (not bm!510079))

(assert (not b!6142060))

(assert (not b!6141698))

(assert (not bm!510106))

(assert (not bm!510145))

(assert (not b!6142092))

(assert (not b!6141822))

(assert (not bm!510073))

(assert (not b!6142100))

(assert (not b!6141801))

(assert (not b!6142029))

(assert (not b!6141696))

(assert (not b!6141744))

(assert (not b!6141849))

(assert (not d!1924208))

(assert (not d!1924184))

(assert (not b!6142110))

(assert (not d!1924132))

(assert (not b!6142133))

(assert (not d!1924220))

(assert (not d!1924226))

(assert (not b!6141892))

(assert (not b!6142124))

(assert (not b!6141876))

(assert (not b!6141903))

(assert (not d!1924218))

(assert (not bm!510099))

(assert (not bm!510134))

(assert (not b!6141844))

(assert (not b!6142132))

(assert (not b!6142076))

(assert (not b_lambda!233769))

(assert (not b!6142052))

(assert (not b!6141574))

(assert (not d!1924164))

(assert (not b!6142074))

(assert (not b!6141748))

(assert (not bm!510141))

(assert (not bm!510168))

(assert (not bm!510085))

(assert (not bs!1522987))

(assert (not b!6141708))

(assert (not b!6141861))

(assert (not bs!1522988))

(assert (not b!6142057))

(assert (not d!1924288))

(assert (not d!1924210))

(assert (not d!1924302))

(assert (not b!6142051))

(assert (not b!6142039))

(assert (not d!1924230))

(assert (not b!6142055))

(assert (not b!6141808))

(assert (not b!6141883))

(assert (not b!6142090))

(assert (not b!6142105))

(assert (not b!6142063))

(assert (not b!6141725))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

