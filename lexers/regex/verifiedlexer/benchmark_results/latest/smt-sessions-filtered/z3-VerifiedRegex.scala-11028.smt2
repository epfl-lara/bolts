; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572070 () Bool)

(assert start!572070)

(declare-fun b!5463824 () Bool)

(assert (=> b!5463824 true))

(assert (=> b!5463824 true))

(declare-fun lambda!290138 () Int)

(declare-fun lambda!290137 () Int)

(assert (=> b!5463824 (not (= lambda!290138 lambda!290137))))

(assert (=> b!5463824 true))

(assert (=> b!5463824 true))

(declare-fun lambda!290139 () Int)

(assert (=> b!5463824 (not (= lambda!290139 lambda!290137))))

(assert (=> b!5463824 (not (= lambda!290139 lambda!290138))))

(assert (=> b!5463824 true))

(assert (=> b!5463824 true))

(declare-fun b!5463820 () Bool)

(declare-fun e!3383089 () Bool)

(declare-datatypes ((C!30876 0))(
  ( (C!30877 (val!25140 Int)) )
))
(declare-datatypes ((Regex!15303 0))(
  ( (ElementMatch!15303 (c!954713 C!30876)) (Concat!24148 (regOne!31118 Regex!15303) (regTwo!31118 Regex!15303)) (EmptyExpr!15303) (Star!15303 (reg!15632 Regex!15303)) (EmptyLang!15303) (Union!15303 (regOne!31119 Regex!15303) (regTwo!31119 Regex!15303)) )
))
(declare-fun r!7292 () Regex!15303)

(declare-fun validRegex!7039 (Regex!15303) Bool)

(assert (=> b!5463820 (= e!3383089 (validRegex!7039 r!7292))))

(declare-fun setNonEmpty!35779 () Bool)

(declare-fun e!3383084 () Bool)

(declare-datatypes ((List!62208 0))(
  ( (Nil!62084) (Cons!62084 (h!68532 Regex!15303) (t!375437 List!62208)) )
))
(declare-datatypes ((Context!9374 0))(
  ( (Context!9375 (exprs!5187 List!62208)) )
))
(declare-fun setElem!35779 () Context!9374)

(declare-fun setRes!35779 () Bool)

(declare-fun tp!1502821 () Bool)

(declare-fun inv!81504 (Context!9374) Bool)

(assert (=> setNonEmpty!35779 (= setRes!35779 (and tp!1502821 (inv!81504 setElem!35779) e!3383084))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9374))

(declare-fun setRest!35779 () (InoxSet Context!9374))

(assert (=> setNonEmpty!35779 (= z!1189 ((_ map or) (store ((as const (Array Context!9374 Bool)) false) setElem!35779 true) setRest!35779))))

(declare-fun res!2327610 () Bool)

(declare-fun e!3383088 () Bool)

(assert (=> start!572070 (=> (not res!2327610) (not e!3383088))))

(assert (=> start!572070 (= res!2327610 (validRegex!7039 r!7292))))

(assert (=> start!572070 e!3383088))

(declare-fun e!3383090 () Bool)

(assert (=> start!572070 e!3383090))

(declare-fun condSetEmpty!35779 () Bool)

(assert (=> start!572070 (= condSetEmpty!35779 (= z!1189 ((as const (Array Context!9374 Bool)) false)))))

(assert (=> start!572070 setRes!35779))

(declare-fun e!3383086 () Bool)

(assert (=> start!572070 e!3383086))

(declare-fun e!3383083 () Bool)

(assert (=> start!572070 e!3383083))

(declare-fun b!5463821 () Bool)

(declare-fun tp_is_empty!39859 () Bool)

(declare-fun tp!1502827 () Bool)

(assert (=> b!5463821 (= e!3383083 (and tp_is_empty!39859 tp!1502827))))

(declare-fun b!5463822 () Bool)

(declare-fun res!2327603 () Bool)

(assert (=> b!5463822 (=> res!2327603 e!3383089)))

(assert (=> b!5463822 (= res!2327603 (not (validRegex!7039 (reg!15632 r!7292))))))

(declare-fun b!5463823 () Bool)

(declare-fun tp!1502823 () Bool)

(assert (=> b!5463823 (= e!3383084 tp!1502823)))

(declare-fun e!3383085 () Bool)

(assert (=> b!5463824 (= e!3383085 e!3383089)))

(declare-fun res!2327608 () Bool)

(assert (=> b!5463824 (=> res!2327608 e!3383089)))

(declare-datatypes ((List!62209 0))(
  ( (Nil!62085) (Cons!62085 (h!68533 C!30876) (t!375438 List!62209)) )
))
(declare-fun s!2326 () List!62209)

(declare-fun isEmpty!34058 (List!62209) Bool)

(assert (=> b!5463824 (= res!2327608 (isEmpty!34058 s!2326))))

(declare-fun Exists!2482 (Int) Bool)

(assert (=> b!5463824 (= (Exists!2482 lambda!290137) (Exists!2482 lambda!290139))))

(declare-datatypes ((Unit!155056 0))(
  ( (Unit!155057) )
))
(declare-fun lt!2232908 () Unit!155056)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1132 (Regex!15303 Regex!15303 List!62209) Unit!155056)

(assert (=> b!5463824 (= lt!2232908 (lemmaExistCutMatchRandMatchRSpecEquivalent!1132 (reg!15632 r!7292) r!7292 s!2326))))

(assert (=> b!5463824 (= (Exists!2482 lambda!290137) (Exists!2482 lambda!290138))))

(declare-fun lt!2232911 () Unit!155056)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!456 (Regex!15303 List!62209) Unit!155056)

(assert (=> b!5463824 (= lt!2232911 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!456 (reg!15632 r!7292) s!2326))))

(declare-datatypes ((tuple2!65000 0))(
  ( (tuple2!65001 (_1!35803 List!62209) (_2!35803 List!62209)) )
))
(declare-datatypes ((Option!15412 0))(
  ( (None!15411) (Some!15411 (v!51440 tuple2!65000)) )
))
(declare-fun isDefined!12115 (Option!15412) Bool)

(declare-fun findConcatSeparation!1826 (Regex!15303 Regex!15303 List!62209 List!62209 List!62209) Option!15412)

(assert (=> b!5463824 (= (isDefined!12115 (findConcatSeparation!1826 (reg!15632 r!7292) r!7292 Nil!62085 s!2326 s!2326)) (Exists!2482 lambda!290137))))

(declare-fun lt!2232910 () Unit!155056)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1590 (Regex!15303 Regex!15303 List!62209) Unit!155056)

(assert (=> b!5463824 (= lt!2232910 (lemmaFindConcatSeparationEquivalentToExists!1590 (reg!15632 r!7292) r!7292 s!2326))))

(declare-fun b!5463825 () Bool)

(declare-fun res!2327607 () Bool)

(assert (=> b!5463825 (=> res!2327607 e!3383085)))

(declare-datatypes ((List!62210 0))(
  ( (Nil!62086) (Cons!62086 (h!68534 Context!9374) (t!375439 List!62210)) )
))
(declare-fun zl!343 () List!62210)

(declare-fun isEmpty!34059 (List!62210) Bool)

(assert (=> b!5463825 (= res!2327607 (not (isEmpty!34059 (t!375439 zl!343))))))

(declare-fun b!5463826 () Bool)

(declare-fun res!2327609 () Bool)

(assert (=> b!5463826 (=> (not res!2327609) (not e!3383088))))

(declare-fun toList!9087 ((InoxSet Context!9374)) List!62210)

(assert (=> b!5463826 (= res!2327609 (= (toList!9087 z!1189) zl!343))))

(declare-fun b!5463827 () Bool)

(declare-fun res!2327605 () Bool)

(assert (=> b!5463827 (=> (not res!2327605) (not e!3383088))))

(declare-fun unfocusZipper!1045 (List!62210) Regex!15303)

(assert (=> b!5463827 (= res!2327605 (= r!7292 (unfocusZipper!1045 zl!343)))))

(declare-fun b!5463828 () Bool)

(declare-fun res!2327604 () Bool)

(assert (=> b!5463828 (=> res!2327604 e!3383085)))

(declare-fun generalisedConcat!972 (List!62208) Regex!15303)

(assert (=> b!5463828 (= res!2327604 (not (= r!7292 (generalisedConcat!972 (exprs!5187 (h!68534 zl!343))))))))

(declare-fun b!5463829 () Bool)

(declare-fun res!2327602 () Bool)

(assert (=> b!5463829 (=> res!2327602 e!3383085)))

(get-info :version)

(assert (=> b!5463829 (= res!2327602 (or ((_ is EmptyExpr!15303) r!7292) ((_ is EmptyLang!15303) r!7292) ((_ is ElementMatch!15303) r!7292) ((_ is Union!15303) r!7292) ((_ is Concat!24148) r!7292)))))

(declare-fun b!5463830 () Bool)

(declare-fun tp!1502824 () Bool)

(assert (=> b!5463830 (= e!3383090 tp!1502824)))

(declare-fun b!5463831 () Bool)

(assert (=> b!5463831 (= e!3383088 (not e!3383085))))

(declare-fun res!2327606 () Bool)

(assert (=> b!5463831 (=> res!2327606 e!3383085)))

(assert (=> b!5463831 (= res!2327606 (not ((_ is Cons!62086) zl!343)))))

(declare-fun matchR!7488 (Regex!15303 List!62209) Bool)

(declare-fun matchRSpec!2406 (Regex!15303 List!62209) Bool)

(assert (=> b!5463831 (= (matchR!7488 r!7292 s!2326) (matchRSpec!2406 r!7292 s!2326))))

(declare-fun lt!2232909 () Unit!155056)

(declare-fun mainMatchTheorem!2406 (Regex!15303 List!62209) Unit!155056)

(assert (=> b!5463831 (= lt!2232909 (mainMatchTheorem!2406 r!7292 s!2326))))

(declare-fun b!5463832 () Bool)

(declare-fun res!2327600 () Bool)

(assert (=> b!5463832 (=> res!2327600 e!3383085)))

(declare-fun generalisedUnion!1232 (List!62208) Regex!15303)

(declare-fun unfocusZipperList!745 (List!62210) List!62208)

(assert (=> b!5463832 (= res!2327600 (not (= r!7292 (generalisedUnion!1232 (unfocusZipperList!745 zl!343)))))))

(declare-fun setIsEmpty!35779 () Bool)

(assert (=> setIsEmpty!35779 setRes!35779))

(declare-fun b!5463833 () Bool)

(declare-fun tp!1502822 () Bool)

(declare-fun tp!1502820 () Bool)

(assert (=> b!5463833 (= e!3383090 (and tp!1502822 tp!1502820))))

(declare-fun b!5463834 () Bool)

(declare-fun tp!1502826 () Bool)

(declare-fun tp!1502829 () Bool)

(assert (=> b!5463834 (= e!3383090 (and tp!1502826 tp!1502829))))

(declare-fun b!5463835 () Bool)

(assert (=> b!5463835 (= e!3383090 tp_is_empty!39859)))

(declare-fun tp!1502828 () Bool)

(declare-fun b!5463836 () Bool)

(declare-fun e!3383087 () Bool)

(assert (=> b!5463836 (= e!3383086 (and (inv!81504 (h!68534 zl!343)) e!3383087 tp!1502828))))

(declare-fun b!5463837 () Bool)

(declare-fun res!2327601 () Bool)

(assert (=> b!5463837 (=> res!2327601 e!3383085)))

(assert (=> b!5463837 (= res!2327601 (not ((_ is Cons!62084) (exprs!5187 (h!68534 zl!343)))))))

(declare-fun b!5463838 () Bool)

(declare-fun tp!1502825 () Bool)

(assert (=> b!5463838 (= e!3383087 tp!1502825)))

(assert (= (and start!572070 res!2327610) b!5463826))

(assert (= (and b!5463826 res!2327609) b!5463827))

(assert (= (and b!5463827 res!2327605) b!5463831))

(assert (= (and b!5463831 (not res!2327606)) b!5463825))

(assert (= (and b!5463825 (not res!2327607)) b!5463828))

(assert (= (and b!5463828 (not res!2327604)) b!5463837))

(assert (= (and b!5463837 (not res!2327601)) b!5463832))

(assert (= (and b!5463832 (not res!2327600)) b!5463829))

(assert (= (and b!5463829 (not res!2327602)) b!5463824))

(assert (= (and b!5463824 (not res!2327608)) b!5463822))

(assert (= (and b!5463822 (not res!2327603)) b!5463820))

(assert (= (and start!572070 ((_ is ElementMatch!15303) r!7292)) b!5463835))

(assert (= (and start!572070 ((_ is Concat!24148) r!7292)) b!5463833))

(assert (= (and start!572070 ((_ is Star!15303) r!7292)) b!5463830))

(assert (= (and start!572070 ((_ is Union!15303) r!7292)) b!5463834))

(assert (= (and start!572070 condSetEmpty!35779) setIsEmpty!35779))

(assert (= (and start!572070 (not condSetEmpty!35779)) setNonEmpty!35779))

(assert (= setNonEmpty!35779 b!5463823))

(assert (= b!5463836 b!5463838))

(assert (= (and start!572070 ((_ is Cons!62086) zl!343)) b!5463836))

(assert (= (and start!572070 ((_ is Cons!62085) s!2326)) b!5463821))

(declare-fun m!6484444 () Bool)

(assert (=> start!572070 m!6484444))

(declare-fun m!6484446 () Bool)

(assert (=> b!5463827 m!6484446))

(declare-fun m!6484448 () Bool)

(assert (=> b!5463831 m!6484448))

(declare-fun m!6484450 () Bool)

(assert (=> b!5463831 m!6484450))

(declare-fun m!6484452 () Bool)

(assert (=> b!5463831 m!6484452))

(declare-fun m!6484454 () Bool)

(assert (=> b!5463826 m!6484454))

(declare-fun m!6484456 () Bool)

(assert (=> b!5463822 m!6484456))

(declare-fun m!6484458 () Bool)

(assert (=> b!5463828 m!6484458))

(declare-fun m!6484460 () Bool)

(assert (=> b!5463836 m!6484460))

(assert (=> b!5463820 m!6484444))

(declare-fun m!6484462 () Bool)

(assert (=> b!5463825 m!6484462))

(declare-fun m!6484464 () Bool)

(assert (=> b!5463832 m!6484464))

(assert (=> b!5463832 m!6484464))

(declare-fun m!6484466 () Bool)

(assert (=> b!5463832 m!6484466))

(declare-fun m!6484468 () Bool)

(assert (=> b!5463824 m!6484468))

(declare-fun m!6484470 () Bool)

(assert (=> b!5463824 m!6484470))

(declare-fun m!6484472 () Bool)

(assert (=> b!5463824 m!6484472))

(declare-fun m!6484474 () Bool)

(assert (=> b!5463824 m!6484474))

(assert (=> b!5463824 m!6484468))

(declare-fun m!6484476 () Bool)

(assert (=> b!5463824 m!6484476))

(declare-fun m!6484478 () Bool)

(assert (=> b!5463824 m!6484478))

(assert (=> b!5463824 m!6484478))

(declare-fun m!6484480 () Bool)

(assert (=> b!5463824 m!6484480))

(declare-fun m!6484482 () Bool)

(assert (=> b!5463824 m!6484482))

(assert (=> b!5463824 m!6484468))

(declare-fun m!6484484 () Bool)

(assert (=> b!5463824 m!6484484))

(declare-fun m!6484486 () Bool)

(assert (=> setNonEmpty!35779 m!6484486))

(check-sat (not b!5463828) (not b!5463824) (not b!5463827) (not b!5463831) (not b!5463823) (not b!5463838) (not b!5463821) (not b!5463833) (not b!5463830) (not setNonEmpty!35779) (not start!572070) (not b!5463834) (not b!5463826) (not b!5463832) (not b!5463836) (not b!5463825) (not b!5463822) tp_is_empty!39859 (not b!5463820))
(check-sat)
