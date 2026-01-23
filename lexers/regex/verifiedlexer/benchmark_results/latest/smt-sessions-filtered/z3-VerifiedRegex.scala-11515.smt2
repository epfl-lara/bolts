; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!630818 () Bool)

(assert start!630818)

(declare-fun b!6367726 () Bool)

(assert (=> b!6367726 true))

(assert (=> b!6367726 true))

(declare-fun lambda!350860 () Int)

(declare-fun lambda!350859 () Int)

(assert (=> b!6367726 (not (= lambda!350860 lambda!350859))))

(assert (=> b!6367726 true))

(assert (=> b!6367726 true))

(declare-fun b!6367704 () Bool)

(assert (=> b!6367704 true))

(declare-fun e!3866209 () Bool)

(declare-fun e!3866213 () Bool)

(assert (=> b!6367704 (= e!3866209 e!3866213)))

(declare-fun res!2619752 () Bool)

(assert (=> b!6367704 (=> res!2619752 e!3866213)))

(declare-datatypes ((C!32824 0))(
  ( (C!32825 (val!26114 Int)) )
))
(declare-datatypes ((Regex!16277 0))(
  ( (ElementMatch!16277 (c!1159440 C!32824)) (Concat!25122 (regOne!33066 Regex!16277) (regTwo!33066 Regex!16277)) (EmptyExpr!16277) (Star!16277 (reg!16606 Regex!16277)) (EmptyLang!16277) (Union!16277 (regOne!33067 Regex!16277) (regTwo!33067 Regex!16277)) )
))
(declare-fun r!7292 () Regex!16277)

(declare-datatypes ((List!65130 0))(
  ( (Nil!65006) (Cons!65006 (h!71454 C!32824) (t!378728 List!65130)) )
))
(declare-fun s!2326 () List!65130)

(get-info :version)

(assert (=> b!6367704 (= res!2619752 (or (and ((_ is ElementMatch!16277) (regOne!33066 r!7292)) (= (c!1159440 (regOne!33066 r!7292)) (h!71454 s!2326))) ((_ is Union!16277) (regOne!33066 r!7292))))))

(declare-datatypes ((Unit!158439 0))(
  ( (Unit!158440) )
))
(declare-fun lt!2367705 () Unit!158439)

(declare-fun e!3866214 () Unit!158439)

(assert (=> b!6367704 (= lt!2367705 e!3866214)))

(declare-fun c!1159439 () Bool)

(declare-datatypes ((List!65131 0))(
  ( (Nil!65007) (Cons!65007 (h!71455 Regex!16277) (t!378729 List!65131)) )
))
(declare-datatypes ((Context!11322 0))(
  ( (Context!11323 (exprs!6161 List!65131)) )
))
(declare-datatypes ((List!65132 0))(
  ( (Nil!65008) (Cons!65008 (h!71456 Context!11322) (t!378730 List!65132)) )
))
(declare-fun zl!343 () List!65132)

(declare-fun nullable!6270 (Regex!16277) Bool)

(assert (=> b!6367704 (= c!1159439 (nullable!6270 (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun lambda!350861 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11322))

(declare-fun flatMap!1782 ((InoxSet Context!11322) Int) (InoxSet Context!11322))

(declare-fun derivationStepZipperUp!1451 (Context!11322 C!32824) (InoxSet Context!11322))

(assert (=> b!6367704 (= (flatMap!1782 z!1189 lambda!350861) (derivationStepZipperUp!1451 (h!71456 zl!343) (h!71454 s!2326)))))

(declare-fun lt!2367713 () Unit!158439)

(declare-fun lemmaFlatMapOnSingletonSet!1308 ((InoxSet Context!11322) Context!11322 Int) Unit!158439)

(assert (=> b!6367704 (= lt!2367713 (lemmaFlatMapOnSingletonSet!1308 z!1189 (h!71456 zl!343) lambda!350861))))

(declare-fun lt!2367722 () (InoxSet Context!11322))

(declare-fun lt!2367724 () Context!11322)

(assert (=> b!6367704 (= lt!2367722 (derivationStepZipperUp!1451 lt!2367724 (h!71454 s!2326)))))

(declare-fun lt!2367715 () (InoxSet Context!11322))

(declare-fun derivationStepZipperDown!1525 (Regex!16277 Context!11322 C!32824) (InoxSet Context!11322))

(assert (=> b!6367704 (= lt!2367715 (derivationStepZipperDown!1525 (h!71455 (exprs!6161 (h!71456 zl!343))) lt!2367724 (h!71454 s!2326)))))

(assert (=> b!6367704 (= lt!2367724 (Context!11323 (t!378729 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun lt!2367723 () (InoxSet Context!11322))

(assert (=> b!6367704 (= lt!2367723 (derivationStepZipperUp!1451 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343))))) (h!71454 s!2326)))))

(declare-fun b!6367705 () Bool)

(declare-fun e!3866215 () Bool)

(declare-fun tp!1773041 () Bool)

(declare-fun tp!1773042 () Bool)

(assert (=> b!6367705 (= e!3866215 (and tp!1773041 tp!1773042))))

(declare-fun b!6367706 () Bool)

(declare-fun e!3866212 () Bool)

(assert (=> b!6367706 (= e!3866213 e!3866212)))

(declare-fun res!2619738 () Bool)

(assert (=> b!6367706 (=> res!2619738 e!3866212)))

(declare-fun lt!2367721 () (InoxSet Context!11322))

(assert (=> b!6367706 (= res!2619738 (not (= lt!2367715 lt!2367721)))))

(declare-fun lt!2367708 () List!65131)

(assert (=> b!6367706 (= lt!2367721 (derivationStepZipperDown!1525 (reg!16606 (regOne!33066 r!7292)) (Context!11323 lt!2367708) (h!71454 s!2326)))))

(declare-fun lt!2367716 () Regex!16277)

(assert (=> b!6367706 (= lt!2367708 (Cons!65007 lt!2367716 (t!378729 (exprs!6161 (h!71456 zl!343)))))))

(assert (=> b!6367706 (= lt!2367716 (Star!16277 (reg!16606 (regOne!33066 r!7292))))))

(declare-fun b!6367707 () Bool)

(declare-fun res!2619748 () Bool)

(declare-fun e!3866208 () Bool)

(assert (=> b!6367707 (=> res!2619748 e!3866208)))

(declare-fun lt!2367706 () Regex!16277)

(assert (=> b!6367707 (= res!2619748 (not (= lt!2367706 r!7292)))))

(declare-fun b!6367708 () Bool)

(declare-fun res!2619754 () Bool)

(declare-fun e!3866210 () Bool)

(assert (=> b!6367708 (=> res!2619754 e!3866210)))

(assert (=> b!6367708 (= res!2619754 (not ((_ is Cons!65007) (exprs!6161 (h!71456 zl!343)))))))

(declare-fun b!6367709 () Bool)

(declare-fun e!3866204 () Bool)

(declare-fun tp!1773047 () Bool)

(assert (=> b!6367709 (= e!3866204 tp!1773047)))

(declare-fun b!6367710 () Bool)

(declare-fun res!2619756 () Bool)

(assert (=> b!6367710 (=> res!2619756 e!3866209)))

(declare-fun isEmpty!37117 (List!65131) Bool)

(assert (=> b!6367710 (= res!2619756 (isEmpty!37117 (t!378729 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun b!6367711 () Bool)

(declare-fun res!2619747 () Bool)

(assert (=> b!6367711 (=> res!2619747 e!3866210)))

(declare-fun generalisedUnion!2121 (List!65131) Regex!16277)

(declare-fun unfocusZipperList!1698 (List!65132) List!65131)

(assert (=> b!6367711 (= res!2619747 (not (= r!7292 (generalisedUnion!2121 (unfocusZipperList!1698 zl!343)))))))

(declare-fun b!6367712 () Bool)

(declare-fun res!2619739 () Bool)

(assert (=> b!6367712 (=> res!2619739 e!3866210)))

(assert (=> b!6367712 (= res!2619739 (or ((_ is EmptyExpr!16277) r!7292) ((_ is EmptyLang!16277) r!7292) ((_ is ElementMatch!16277) r!7292) ((_ is Union!16277) r!7292) (not ((_ is Concat!25122) r!7292))))))

(declare-fun setIsEmpty!43402 () Bool)

(declare-fun setRes!43402 () Bool)

(assert (=> setIsEmpty!43402 setRes!43402))

(declare-fun b!6367713 () Bool)

(declare-fun tp!1773044 () Bool)

(declare-fun tp!1773043 () Bool)

(assert (=> b!6367713 (= e!3866215 (and tp!1773044 tp!1773043))))

(declare-fun b!6367714 () Bool)

(declare-fun Unit!158441 () Unit!158439)

(assert (=> b!6367714 (= e!3866214 Unit!158441)))

(declare-fun lt!2367704 () Unit!158439)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1108 ((InoxSet Context!11322) (InoxSet Context!11322) List!65130) Unit!158439)

(assert (=> b!6367714 (= lt!2367704 (lemmaZipperConcatMatchesSameAsBothZippers!1108 lt!2367715 lt!2367722 (t!378728 s!2326)))))

(declare-fun res!2619745 () Bool)

(declare-fun matchZipper!2289 ((InoxSet Context!11322) List!65130) Bool)

(assert (=> b!6367714 (= res!2619745 (matchZipper!2289 lt!2367715 (t!378728 s!2326)))))

(declare-fun e!3866201 () Bool)

(assert (=> b!6367714 (=> res!2619745 e!3866201)))

(assert (=> b!6367714 (= (matchZipper!2289 ((_ map or) lt!2367715 lt!2367722) (t!378728 s!2326)) e!3866201)))

(declare-fun b!6367715 () Bool)

(declare-fun e!3866207 () Bool)

(declare-fun tp!1773049 () Bool)

(assert (=> b!6367715 (= e!3866207 tp!1773049)))

(declare-fun b!6367716 () Bool)

(declare-fun res!2619750 () Bool)

(assert (=> b!6367716 (=> res!2619750 e!3866208)))

(declare-fun lt!2367711 () (InoxSet Context!11322))

(declare-fun lt!2367707 () (InoxSet Context!11322))

(assert (=> b!6367716 (= res!2619750 (not (= (matchZipper!2289 lt!2367707 s!2326) (matchZipper!2289 lt!2367711 (t!378728 s!2326)))))))

(declare-fun b!6367717 () Bool)

(assert (=> b!6367717 (= e!3866201 (matchZipper!2289 lt!2367722 (t!378728 s!2326)))))

(declare-fun b!6367718 () Bool)

(declare-fun Unit!158442 () Unit!158439)

(assert (=> b!6367718 (= e!3866214 Unit!158442)))

(declare-fun b!6367719 () Bool)

(declare-fun tp_is_empty!41807 () Bool)

(assert (=> b!6367719 (= e!3866215 tp_is_empty!41807)))

(declare-fun b!6367720 () Bool)

(assert (=> b!6367720 (= e!3866212 e!3866208)))

(declare-fun res!2619753 () Bool)

(assert (=> b!6367720 (=> res!2619753 e!3866208)))

(assert (=> b!6367720 (= res!2619753 (not (= lt!2367711 lt!2367721)))))

(declare-fun lt!2367709 () Context!11322)

(assert (=> b!6367720 (= (flatMap!1782 lt!2367707 lambda!350861) (derivationStepZipperUp!1451 lt!2367709 (h!71454 s!2326)))))

(declare-fun lt!2367719 () Unit!158439)

(assert (=> b!6367720 (= lt!2367719 (lemmaFlatMapOnSingletonSet!1308 lt!2367707 lt!2367709 lambda!350861))))

(declare-fun lt!2367712 () (InoxSet Context!11322))

(assert (=> b!6367720 (= lt!2367712 (derivationStepZipperUp!1451 lt!2367709 (h!71454 s!2326)))))

(declare-fun derivationStepZipper!2243 ((InoxSet Context!11322) C!32824) (InoxSet Context!11322))

(assert (=> b!6367720 (= lt!2367711 (derivationStepZipper!2243 lt!2367707 (h!71454 s!2326)))))

(assert (=> b!6367720 (= lt!2367707 (store ((as const (Array Context!11322 Bool)) false) lt!2367709 true))))

(assert (=> b!6367720 (= lt!2367709 (Context!11323 (Cons!65007 (reg!16606 (regOne!33066 r!7292)) lt!2367708)))))

(declare-fun b!6367721 () Bool)

(declare-fun e!3866206 () Bool)

(declare-fun e!3866203 () Bool)

(assert (=> b!6367721 (= e!3866206 e!3866203)))

(declare-fun res!2619744 () Bool)

(assert (=> b!6367721 (=> (not res!2619744) (not e!3866203))))

(assert (=> b!6367721 (= res!2619744 (= r!7292 lt!2367706))))

(declare-fun unfocusZipper!2019 (List!65132) Regex!16277)

(assert (=> b!6367721 (= lt!2367706 (unfocusZipper!2019 zl!343))))

(declare-fun b!6367722 () Bool)

(declare-fun tp!1773050 () Bool)

(assert (=> b!6367722 (= e!3866215 tp!1773050)))

(declare-fun b!6367723 () Bool)

(declare-fun e!3866205 () Bool)

(assert (=> b!6367723 (= e!3866208 e!3866205)))

(declare-fun res!2619743 () Bool)

(assert (=> b!6367723 (=> res!2619743 e!3866205)))

(declare-fun lt!2367703 () Regex!16277)

(assert (=> b!6367723 (= res!2619743 (not (= r!7292 lt!2367703)))))

(assert (=> b!6367723 (= lt!2367703 (Concat!25122 lt!2367716 (regTwo!33066 r!7292)))))

(declare-fun b!6367724 () Bool)

(declare-fun res!2619749 () Bool)

(assert (=> b!6367724 (=> res!2619749 e!3866205)))

(assert (=> b!6367724 (= res!2619749 (not (= (unfocusZipper!2019 (Cons!65008 lt!2367709 Nil!65008)) (Concat!25122 (reg!16606 (regOne!33066 r!7292)) lt!2367703))))))

(declare-fun b!6367725 () Bool)

(declare-fun e!3866211 () Bool)

(declare-fun tp!1773045 () Bool)

(declare-fun inv!83939 (Context!11322) Bool)

(assert (=> b!6367725 (= e!3866211 (and (inv!83939 (h!71456 zl!343)) e!3866204 tp!1773045))))

(assert (=> b!6367726 (= e!3866210 e!3866209)))

(declare-fun res!2619740 () Bool)

(assert (=> b!6367726 (=> res!2619740 e!3866209)))

(declare-fun lt!2367720 () Bool)

(declare-fun lt!2367718 () Bool)

(assert (=> b!6367726 (= res!2619740 (or (not (= lt!2367718 lt!2367720)) ((_ is Nil!65006) s!2326)))))

(declare-fun Exists!3347 (Int) Bool)

(assert (=> b!6367726 (= (Exists!3347 lambda!350859) (Exists!3347 lambda!350860))))

(declare-fun lt!2367710 () Unit!158439)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1884 (Regex!16277 Regex!16277 List!65130) Unit!158439)

(assert (=> b!6367726 (= lt!2367710 (lemmaExistCutMatchRandMatchRSpecEquivalent!1884 (regOne!33066 r!7292) (regTwo!33066 r!7292) s!2326))))

(assert (=> b!6367726 (= lt!2367720 (Exists!3347 lambda!350859))))

(declare-datatypes ((tuple2!66512 0))(
  ( (tuple2!66513 (_1!36559 List!65130) (_2!36559 List!65130)) )
))
(declare-datatypes ((Option!16168 0))(
  ( (None!16167) (Some!16167 (v!52336 tuple2!66512)) )
))
(declare-fun isDefined!12871 (Option!16168) Bool)

(declare-fun findConcatSeparation!2582 (Regex!16277 Regex!16277 List!65130 List!65130 List!65130) Option!16168)

(assert (=> b!6367726 (= lt!2367720 (isDefined!12871 (findConcatSeparation!2582 (regOne!33066 r!7292) (regTwo!33066 r!7292) Nil!65006 s!2326 s!2326)))))

(declare-fun lt!2367717 () Unit!158439)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2346 (Regex!16277 Regex!16277 List!65130) Unit!158439)

(assert (=> b!6367726 (= lt!2367717 (lemmaFindConcatSeparationEquivalentToExists!2346 (regOne!33066 r!7292) (regTwo!33066 r!7292) s!2326))))

(declare-fun b!6367727 () Bool)

(declare-fun e!3866202 () Bool)

(assert (=> b!6367727 (= e!3866202 (nullable!6270 (regOne!33066 (regOne!33066 r!7292))))))

(declare-fun b!6367728 () Bool)

(declare-fun e!3866216 () Bool)

(declare-fun tp!1773048 () Bool)

(assert (=> b!6367728 (= e!3866216 (and tp_is_empty!41807 tp!1773048))))

(declare-fun b!6367729 () Bool)

(assert (=> b!6367729 (= e!3866205 (inv!83939 (Context!11323 (Cons!65007 (reg!16606 (regOne!33066 r!7292)) Nil!65007))))))

(declare-fun b!6367730 () Bool)

(declare-fun res!2619758 () Bool)

(assert (=> b!6367730 (=> res!2619758 e!3866213)))

(assert (=> b!6367730 (= res!2619758 (or ((_ is Concat!25122) (regOne!33066 r!7292)) (not ((_ is Star!16277) (regOne!33066 r!7292)))))))

(declare-fun b!6367731 () Bool)

(declare-fun res!2619742 () Bool)

(assert (=> b!6367731 (=> res!2619742 e!3866213)))

(assert (=> b!6367731 (= res!2619742 e!3866202)))

(declare-fun res!2619755 () Bool)

(assert (=> b!6367731 (=> (not res!2619755) (not e!3866202))))

(assert (=> b!6367731 (= res!2619755 ((_ is Concat!25122) (regOne!33066 r!7292)))))

(declare-fun b!6367732 () Bool)

(declare-fun res!2619737 () Bool)

(assert (=> b!6367732 (=> (not res!2619737) (not e!3866206))))

(declare-fun toList!10061 ((InoxSet Context!11322)) List!65132)

(assert (=> b!6367732 (= res!2619737 (= (toList!10061 z!1189) zl!343))))

(declare-fun b!6367733 () Bool)

(declare-fun res!2619757 () Bool)

(assert (=> b!6367733 (=> res!2619757 e!3866210)))

(declare-fun isEmpty!37118 (List!65132) Bool)

(assert (=> b!6367733 (= res!2619757 (not (isEmpty!37118 (t!378730 zl!343))))))

(declare-fun b!6367734 () Bool)

(assert (=> b!6367734 (= e!3866203 (not e!3866210))))

(declare-fun res!2619741 () Bool)

(assert (=> b!6367734 (=> res!2619741 e!3866210)))

(assert (=> b!6367734 (= res!2619741 (not ((_ is Cons!65008) zl!343)))))

(declare-fun matchRSpec!3378 (Regex!16277 List!65130) Bool)

(assert (=> b!6367734 (= lt!2367718 (matchRSpec!3378 r!7292 s!2326))))

(declare-fun matchR!8460 (Regex!16277 List!65130) Bool)

(assert (=> b!6367734 (= lt!2367718 (matchR!8460 r!7292 s!2326))))

(declare-fun lt!2367714 () Unit!158439)

(declare-fun mainMatchTheorem!3378 (Regex!16277 List!65130) Unit!158439)

(assert (=> b!6367734 (= lt!2367714 (mainMatchTheorem!3378 r!7292 s!2326))))

(declare-fun b!6367735 () Bool)

(declare-fun res!2619746 () Bool)

(assert (=> b!6367735 (=> res!2619746 e!3866210)))

(declare-fun generalisedConcat!1874 (List!65131) Regex!16277)

(assert (=> b!6367735 (= res!2619746 (not (= r!7292 (generalisedConcat!1874 (exprs!6161 (h!71456 zl!343))))))))

(declare-fun res!2619751 () Bool)

(assert (=> start!630818 (=> (not res!2619751) (not e!3866206))))

(declare-fun validRegex!8013 (Regex!16277) Bool)

(assert (=> start!630818 (= res!2619751 (validRegex!8013 r!7292))))

(assert (=> start!630818 e!3866206))

(assert (=> start!630818 e!3866215))

(declare-fun condSetEmpty!43402 () Bool)

(assert (=> start!630818 (= condSetEmpty!43402 (= z!1189 ((as const (Array Context!11322 Bool)) false)))))

(assert (=> start!630818 setRes!43402))

(assert (=> start!630818 e!3866211))

(assert (=> start!630818 e!3866216))

(declare-fun setNonEmpty!43402 () Bool)

(declare-fun setElem!43402 () Context!11322)

(declare-fun tp!1773046 () Bool)

(assert (=> setNonEmpty!43402 (= setRes!43402 (and tp!1773046 (inv!83939 setElem!43402) e!3866207))))

(declare-fun setRest!43402 () (InoxSet Context!11322))

(assert (=> setNonEmpty!43402 (= z!1189 ((_ map or) (store ((as const (Array Context!11322 Bool)) false) setElem!43402 true) setRest!43402))))

(assert (= (and start!630818 res!2619751) b!6367732))

(assert (= (and b!6367732 res!2619737) b!6367721))

(assert (= (and b!6367721 res!2619744) b!6367734))

(assert (= (and b!6367734 (not res!2619741)) b!6367733))

(assert (= (and b!6367733 (not res!2619757)) b!6367735))

(assert (= (and b!6367735 (not res!2619746)) b!6367708))

(assert (= (and b!6367708 (not res!2619754)) b!6367711))

(assert (= (and b!6367711 (not res!2619747)) b!6367712))

(assert (= (and b!6367712 (not res!2619739)) b!6367726))

(assert (= (and b!6367726 (not res!2619740)) b!6367710))

(assert (= (and b!6367710 (not res!2619756)) b!6367704))

(assert (= (and b!6367704 c!1159439) b!6367714))

(assert (= (and b!6367704 (not c!1159439)) b!6367718))

(assert (= (and b!6367714 (not res!2619745)) b!6367717))

(assert (= (and b!6367704 (not res!2619752)) b!6367731))

(assert (= (and b!6367731 res!2619755) b!6367727))

(assert (= (and b!6367731 (not res!2619742)) b!6367730))

(assert (= (and b!6367730 (not res!2619758)) b!6367706))

(assert (= (and b!6367706 (not res!2619738)) b!6367720))

(assert (= (and b!6367720 (not res!2619753)) b!6367716))

(assert (= (and b!6367716 (not res!2619750)) b!6367707))

(assert (= (and b!6367707 (not res!2619748)) b!6367723))

(assert (= (and b!6367723 (not res!2619743)) b!6367724))

(assert (= (and b!6367724 (not res!2619749)) b!6367729))

(assert (= (and start!630818 ((_ is ElementMatch!16277) r!7292)) b!6367719))

(assert (= (and start!630818 ((_ is Concat!25122) r!7292)) b!6367713))

(assert (= (and start!630818 ((_ is Star!16277) r!7292)) b!6367722))

(assert (= (and start!630818 ((_ is Union!16277) r!7292)) b!6367705))

(assert (= (and start!630818 condSetEmpty!43402) setIsEmpty!43402))

(assert (= (and start!630818 (not condSetEmpty!43402)) setNonEmpty!43402))

(assert (= setNonEmpty!43402 b!6367715))

(assert (= b!6367725 b!6367709))

(assert (= (and start!630818 ((_ is Cons!65008) zl!343)) b!6367725))

(assert (= (and start!630818 ((_ is Cons!65006) s!2326)) b!6367728))

(declare-fun m!7171278 () Bool)

(assert (=> b!6367711 m!7171278))

(assert (=> b!6367711 m!7171278))

(declare-fun m!7171280 () Bool)

(assert (=> b!6367711 m!7171280))

(declare-fun m!7171282 () Bool)

(assert (=> b!6367717 m!7171282))

(declare-fun m!7171284 () Bool)

(assert (=> b!6367734 m!7171284))

(declare-fun m!7171286 () Bool)

(assert (=> b!6367734 m!7171286))

(declare-fun m!7171288 () Bool)

(assert (=> b!6367734 m!7171288))

(declare-fun m!7171290 () Bool)

(assert (=> start!630818 m!7171290))

(declare-fun m!7171292 () Bool)

(assert (=> b!6367721 m!7171292))

(declare-fun m!7171294 () Bool)

(assert (=> b!6367710 m!7171294))

(declare-fun m!7171296 () Bool)

(assert (=> b!6367735 m!7171296))

(declare-fun m!7171298 () Bool)

(assert (=> b!6367714 m!7171298))

(declare-fun m!7171300 () Bool)

(assert (=> b!6367714 m!7171300))

(declare-fun m!7171302 () Bool)

(assert (=> b!6367714 m!7171302))

(declare-fun m!7171304 () Bool)

(assert (=> b!6367720 m!7171304))

(declare-fun m!7171306 () Bool)

(assert (=> b!6367720 m!7171306))

(declare-fun m!7171308 () Bool)

(assert (=> b!6367720 m!7171308))

(declare-fun m!7171310 () Bool)

(assert (=> b!6367720 m!7171310))

(declare-fun m!7171312 () Bool)

(assert (=> b!6367720 m!7171312))

(declare-fun m!7171314 () Bool)

(assert (=> b!6367716 m!7171314))

(declare-fun m!7171316 () Bool)

(assert (=> b!6367716 m!7171316))

(declare-fun m!7171318 () Bool)

(assert (=> b!6367729 m!7171318))

(declare-fun m!7171320 () Bool)

(assert (=> b!6367726 m!7171320))

(declare-fun m!7171322 () Bool)

(assert (=> b!6367726 m!7171322))

(declare-fun m!7171324 () Bool)

(assert (=> b!6367726 m!7171324))

(assert (=> b!6367726 m!7171324))

(declare-fun m!7171326 () Bool)

(assert (=> b!6367726 m!7171326))

(declare-fun m!7171328 () Bool)

(assert (=> b!6367726 m!7171328))

(assert (=> b!6367726 m!7171320))

(declare-fun m!7171330 () Bool)

(assert (=> b!6367726 m!7171330))

(declare-fun m!7171332 () Bool)

(assert (=> setNonEmpty!43402 m!7171332))

(declare-fun m!7171334 () Bool)

(assert (=> b!6367706 m!7171334))

(declare-fun m!7171336 () Bool)

(assert (=> b!6367725 m!7171336))

(declare-fun m!7171338 () Bool)

(assert (=> b!6367724 m!7171338))

(declare-fun m!7171340 () Bool)

(assert (=> b!6367704 m!7171340))

(declare-fun m!7171342 () Bool)

(assert (=> b!6367704 m!7171342))

(declare-fun m!7171344 () Bool)

(assert (=> b!6367704 m!7171344))

(declare-fun m!7171346 () Bool)

(assert (=> b!6367704 m!7171346))

(declare-fun m!7171348 () Bool)

(assert (=> b!6367704 m!7171348))

(declare-fun m!7171350 () Bool)

(assert (=> b!6367704 m!7171350))

(declare-fun m!7171352 () Bool)

(assert (=> b!6367704 m!7171352))

(declare-fun m!7171354 () Bool)

(assert (=> b!6367732 m!7171354))

(declare-fun m!7171356 () Bool)

(assert (=> b!6367733 m!7171356))

(declare-fun m!7171358 () Bool)

(assert (=> b!6367727 m!7171358))

(check-sat (not b!6367711) (not start!630818) (not b!6367715) tp_is_empty!41807 (not b!6367714) (not b!6367721) (not b!6367732) (not setNonEmpty!43402) (not b!6367704) (not b!6367725) (not b!6367705) (not b!6367733) (not b!6367727) (not b!6367734) (not b!6367713) (not b!6367724) (not b!6367728) (not b!6367710) (not b!6367716) (not b!6367726) (not b!6367717) (not b!6367735) (not b!6367706) (not b!6367729) (not b!6367722) (not b!6367709) (not b!6367720))
(check-sat)
(get-model)

(declare-fun b!6367779 () Bool)

(declare-fun e!3866238 () Regex!16277)

(assert (=> b!6367779 (= e!3866238 EmptyLang!16277)))

(declare-fun b!6367780 () Bool)

(declare-fun e!3866242 () Regex!16277)

(assert (=> b!6367780 (= e!3866242 (h!71455 (unfocusZipperList!1698 zl!343)))))

(declare-fun b!6367781 () Bool)

(declare-fun e!3866240 () Bool)

(declare-fun e!3866243 () Bool)

(assert (=> b!6367781 (= e!3866240 e!3866243)))

(declare-fun c!1159459 () Bool)

(declare-fun tail!12129 (List!65131) List!65131)

(assert (=> b!6367781 (= c!1159459 (isEmpty!37117 (tail!12129 (unfocusZipperList!1698 zl!343))))))

(declare-fun b!6367782 () Bool)

(declare-fun lt!2367730 () Regex!16277)

(declare-fun isUnion!1115 (Regex!16277) Bool)

(assert (=> b!6367782 (= e!3866243 (isUnion!1115 lt!2367730))))

(declare-fun b!6367783 () Bool)

(declare-fun e!3866241 () Bool)

(assert (=> b!6367783 (= e!3866241 (isEmpty!37117 (t!378729 (unfocusZipperList!1698 zl!343))))))

(declare-fun b!6367784 () Bool)

(assert (=> b!6367784 (= e!3866242 e!3866238)))

(declare-fun c!1159458 () Bool)

(assert (=> b!6367784 (= c!1159458 ((_ is Cons!65007) (unfocusZipperList!1698 zl!343)))))

(declare-fun d!1997320 () Bool)

(declare-fun e!3866239 () Bool)

(assert (=> d!1997320 e!3866239))

(declare-fun res!2619767 () Bool)

(assert (=> d!1997320 (=> (not res!2619767) (not e!3866239))))

(assert (=> d!1997320 (= res!2619767 (validRegex!8013 lt!2367730))))

(assert (=> d!1997320 (= lt!2367730 e!3866242)))

(declare-fun c!1159457 () Bool)

(assert (=> d!1997320 (= c!1159457 e!3866241)))

(declare-fun res!2619766 () Bool)

(assert (=> d!1997320 (=> (not res!2619766) (not e!3866241))))

(assert (=> d!1997320 (= res!2619766 ((_ is Cons!65007) (unfocusZipperList!1698 zl!343)))))

(declare-fun lambda!350867 () Int)

(declare-fun forall!15454 (List!65131 Int) Bool)

(assert (=> d!1997320 (forall!15454 (unfocusZipperList!1698 zl!343) lambda!350867)))

(assert (=> d!1997320 (= (generalisedUnion!2121 (unfocusZipperList!1698 zl!343)) lt!2367730)))

(declare-fun b!6367785 () Bool)

(assert (=> b!6367785 (= e!3866239 e!3866240)))

(declare-fun c!1159460 () Bool)

(assert (=> b!6367785 (= c!1159460 (isEmpty!37117 (unfocusZipperList!1698 zl!343)))))

(declare-fun b!6367786 () Bool)

(declare-fun head!13044 (List!65131) Regex!16277)

(assert (=> b!6367786 (= e!3866243 (= lt!2367730 (head!13044 (unfocusZipperList!1698 zl!343))))))

(declare-fun b!6367787 () Bool)

(assert (=> b!6367787 (= e!3866238 (Union!16277 (h!71455 (unfocusZipperList!1698 zl!343)) (generalisedUnion!2121 (t!378729 (unfocusZipperList!1698 zl!343)))))))

(declare-fun b!6367788 () Bool)

(declare-fun isEmptyLang!1685 (Regex!16277) Bool)

(assert (=> b!6367788 (= e!3866240 (isEmptyLang!1685 lt!2367730))))

(assert (= (and d!1997320 res!2619766) b!6367783))

(assert (= (and d!1997320 c!1159457) b!6367780))

(assert (= (and d!1997320 (not c!1159457)) b!6367784))

(assert (= (and b!6367784 c!1159458) b!6367787))

(assert (= (and b!6367784 (not c!1159458)) b!6367779))

(assert (= (and d!1997320 res!2619767) b!6367785))

(assert (= (and b!6367785 c!1159460) b!6367788))

(assert (= (and b!6367785 (not c!1159460)) b!6367781))

(assert (= (and b!6367781 c!1159459) b!6367786))

(assert (= (and b!6367781 (not c!1159459)) b!6367782))

(declare-fun m!7171374 () Bool)

(assert (=> b!6367783 m!7171374))

(assert (=> b!6367781 m!7171278))

(declare-fun m!7171376 () Bool)

(assert (=> b!6367781 m!7171376))

(assert (=> b!6367781 m!7171376))

(declare-fun m!7171378 () Bool)

(assert (=> b!6367781 m!7171378))

(assert (=> b!6367786 m!7171278))

(declare-fun m!7171380 () Bool)

(assert (=> b!6367786 m!7171380))

(declare-fun m!7171382 () Bool)

(assert (=> b!6367782 m!7171382))

(declare-fun m!7171384 () Bool)

(assert (=> b!6367787 m!7171384))

(declare-fun m!7171386 () Bool)

(assert (=> b!6367788 m!7171386))

(declare-fun m!7171388 () Bool)

(assert (=> d!1997320 m!7171388))

(assert (=> d!1997320 m!7171278))

(declare-fun m!7171390 () Bool)

(assert (=> d!1997320 m!7171390))

(assert (=> b!6367785 m!7171278))

(declare-fun m!7171392 () Bool)

(assert (=> b!6367785 m!7171392))

(assert (=> b!6367711 d!1997320))

(declare-fun bs!1595086 () Bool)

(declare-fun d!1997332 () Bool)

(assert (= bs!1595086 (and d!1997332 d!1997320)))

(declare-fun lambda!350870 () Int)

(assert (=> bs!1595086 (= lambda!350870 lambda!350867)))

(declare-fun lt!2367733 () List!65131)

(assert (=> d!1997332 (forall!15454 lt!2367733 lambda!350870)))

(declare-fun e!3866246 () List!65131)

(assert (=> d!1997332 (= lt!2367733 e!3866246)))

(declare-fun c!1159463 () Bool)

(assert (=> d!1997332 (= c!1159463 ((_ is Cons!65008) zl!343))))

(assert (=> d!1997332 (= (unfocusZipperList!1698 zl!343) lt!2367733)))

(declare-fun b!6367793 () Bool)

(assert (=> b!6367793 (= e!3866246 (Cons!65007 (generalisedConcat!1874 (exprs!6161 (h!71456 zl!343))) (unfocusZipperList!1698 (t!378730 zl!343))))))

(declare-fun b!6367794 () Bool)

(assert (=> b!6367794 (= e!3866246 Nil!65007)))

(assert (= (and d!1997332 c!1159463) b!6367793))

(assert (= (and d!1997332 (not c!1159463)) b!6367794))

(declare-fun m!7171394 () Bool)

(assert (=> d!1997332 m!7171394))

(assert (=> b!6367793 m!7171296))

(declare-fun m!7171396 () Bool)

(assert (=> b!6367793 m!7171396))

(assert (=> b!6367711 d!1997332))

(declare-fun d!1997334 () Bool)

(declare-fun choose!47306 ((InoxSet Context!11322) Int) (InoxSet Context!11322))

(assert (=> d!1997334 (= (flatMap!1782 lt!2367707 lambda!350861) (choose!47306 lt!2367707 lambda!350861))))

(declare-fun bs!1595087 () Bool)

(assert (= bs!1595087 d!1997334))

(declare-fun m!7171398 () Bool)

(assert (=> bs!1595087 m!7171398))

(assert (=> b!6367720 d!1997334))

(declare-fun b!6367805 () Bool)

(declare-fun e!3866253 () Bool)

(assert (=> b!6367805 (= e!3866253 (nullable!6270 (h!71455 (exprs!6161 lt!2367709))))))

(declare-fun b!6367806 () Bool)

(declare-fun e!3866255 () (InoxSet Context!11322))

(declare-fun call!543600 () (InoxSet Context!11322))

(assert (=> b!6367806 (= e!3866255 call!543600)))

(declare-fun b!6367807 () Bool)

(assert (=> b!6367807 (= e!3866255 ((as const (Array Context!11322 Bool)) false))))

(declare-fun bm!543595 () Bool)

(assert (=> bm!543595 (= call!543600 (derivationStepZipperDown!1525 (h!71455 (exprs!6161 lt!2367709)) (Context!11323 (t!378729 (exprs!6161 lt!2367709))) (h!71454 s!2326)))))

(declare-fun d!1997336 () Bool)

(declare-fun c!1159468 () Bool)

(assert (=> d!1997336 (= c!1159468 e!3866253)))

(declare-fun res!2619770 () Bool)

(assert (=> d!1997336 (=> (not res!2619770) (not e!3866253))))

(assert (=> d!1997336 (= res!2619770 ((_ is Cons!65007) (exprs!6161 lt!2367709)))))

(declare-fun e!3866254 () (InoxSet Context!11322))

(assert (=> d!1997336 (= (derivationStepZipperUp!1451 lt!2367709 (h!71454 s!2326)) e!3866254)))

(declare-fun b!6367808 () Bool)

(assert (=> b!6367808 (= e!3866254 ((_ map or) call!543600 (derivationStepZipperUp!1451 (Context!11323 (t!378729 (exprs!6161 lt!2367709))) (h!71454 s!2326))))))

(declare-fun b!6367809 () Bool)

(assert (=> b!6367809 (= e!3866254 e!3866255)))

(declare-fun c!1159469 () Bool)

(assert (=> b!6367809 (= c!1159469 ((_ is Cons!65007) (exprs!6161 lt!2367709)))))

(assert (= (and d!1997336 res!2619770) b!6367805))

(assert (= (and d!1997336 c!1159468) b!6367808))

(assert (= (and d!1997336 (not c!1159468)) b!6367809))

(assert (= (and b!6367809 c!1159469) b!6367806))

(assert (= (and b!6367809 (not c!1159469)) b!6367807))

(assert (= (or b!6367808 b!6367806) bm!543595))

(declare-fun m!7171400 () Bool)

(assert (=> b!6367805 m!7171400))

(declare-fun m!7171402 () Bool)

(assert (=> bm!543595 m!7171402))

(declare-fun m!7171404 () Bool)

(assert (=> b!6367808 m!7171404))

(assert (=> b!6367720 d!1997336))

(declare-fun d!1997338 () Bool)

(declare-fun dynLambda!25788 (Int Context!11322) (InoxSet Context!11322))

(assert (=> d!1997338 (= (flatMap!1782 lt!2367707 lambda!350861) (dynLambda!25788 lambda!350861 lt!2367709))))

(declare-fun lt!2367736 () Unit!158439)

(declare-fun choose!47307 ((InoxSet Context!11322) Context!11322 Int) Unit!158439)

(assert (=> d!1997338 (= lt!2367736 (choose!47307 lt!2367707 lt!2367709 lambda!350861))))

(assert (=> d!1997338 (= lt!2367707 (store ((as const (Array Context!11322 Bool)) false) lt!2367709 true))))

(assert (=> d!1997338 (= (lemmaFlatMapOnSingletonSet!1308 lt!2367707 lt!2367709 lambda!350861) lt!2367736)))

(declare-fun b_lambda!242031 () Bool)

(assert (=> (not b_lambda!242031) (not d!1997338)))

(declare-fun bs!1595088 () Bool)

(assert (= bs!1595088 d!1997338))

(assert (=> bs!1595088 m!7171312))

(declare-fun m!7171406 () Bool)

(assert (=> bs!1595088 m!7171406))

(declare-fun m!7171408 () Bool)

(assert (=> bs!1595088 m!7171408))

(assert (=> bs!1595088 m!7171310))

(assert (=> b!6367720 d!1997338))

(declare-fun bs!1595089 () Bool)

(declare-fun d!1997340 () Bool)

(assert (= bs!1595089 (and d!1997340 b!6367704)))

(declare-fun lambda!350873 () Int)

(assert (=> bs!1595089 (= lambda!350873 lambda!350861)))

(assert (=> d!1997340 true))

(assert (=> d!1997340 (= (derivationStepZipper!2243 lt!2367707 (h!71454 s!2326)) (flatMap!1782 lt!2367707 lambda!350873))))

(declare-fun bs!1595090 () Bool)

(assert (= bs!1595090 d!1997340))

(declare-fun m!7171410 () Bool)

(assert (=> bs!1595090 m!7171410))

(assert (=> b!6367720 d!1997340))

(declare-fun b!6367830 () Bool)

(declare-fun e!3866275 () Bool)

(declare-fun call!543607 () Bool)

(assert (=> b!6367830 (= e!3866275 call!543607)))

(declare-fun bm!543602 () Bool)

(declare-fun c!1159476 () Bool)

(declare-fun c!1159477 () Bool)

(assert (=> bm!543602 (= call!543607 (validRegex!8013 (ite c!1159477 (reg!16606 r!7292) (ite c!1159476 (regOne!33067 r!7292) (regOne!33066 r!7292)))))))

(declare-fun b!6367831 () Bool)

(declare-fun e!3866272 () Bool)

(assert (=> b!6367831 (= e!3866272 e!3866275)))

(declare-fun res!2619785 () Bool)

(assert (=> b!6367831 (= res!2619785 (not (nullable!6270 (reg!16606 r!7292))))))

(assert (=> b!6367831 (=> (not res!2619785) (not e!3866275))))

(declare-fun b!6367832 () Bool)

(declare-fun res!2619783 () Bool)

(declare-fun e!3866274 () Bool)

(assert (=> b!6367832 (=> res!2619783 e!3866274)))

(assert (=> b!6367832 (= res!2619783 (not ((_ is Concat!25122) r!7292)))))

(declare-fun e!3866270 () Bool)

(assert (=> b!6367832 (= e!3866270 e!3866274)))

(declare-fun b!6367833 () Bool)

(declare-fun e!3866273 () Bool)

(assert (=> b!6367833 (= e!3866274 e!3866273)))

(declare-fun res!2619782 () Bool)

(assert (=> b!6367833 (=> (not res!2619782) (not e!3866273))))

(declare-fun call!543609 () Bool)

(assert (=> b!6367833 (= res!2619782 call!543609)))

(declare-fun b!6367834 () Bool)

(declare-fun e!3866271 () Bool)

(declare-fun call!543608 () Bool)

(assert (=> b!6367834 (= e!3866271 call!543608)))

(declare-fun b!6367835 () Bool)

(assert (=> b!6367835 (= e!3866273 call!543608)))

(declare-fun bm!543603 () Bool)

(assert (=> bm!543603 (= call!543608 (validRegex!8013 (ite c!1159476 (regTwo!33067 r!7292) (regTwo!33066 r!7292))))))

(declare-fun b!6367836 () Bool)

(declare-fun e!3866276 () Bool)

(assert (=> b!6367836 (= e!3866276 e!3866272)))

(assert (=> b!6367836 (= c!1159477 ((_ is Star!16277) r!7292))))

(declare-fun d!1997342 () Bool)

(declare-fun res!2619781 () Bool)

(assert (=> d!1997342 (=> res!2619781 e!3866276)))

(assert (=> d!1997342 (= res!2619781 ((_ is ElementMatch!16277) r!7292))))

(assert (=> d!1997342 (= (validRegex!8013 r!7292) e!3866276)))

(declare-fun b!6367837 () Bool)

(declare-fun res!2619784 () Bool)

(assert (=> b!6367837 (=> (not res!2619784) (not e!3866271))))

(assert (=> b!6367837 (= res!2619784 call!543609)))

(assert (=> b!6367837 (= e!3866270 e!3866271)))

(declare-fun bm!543604 () Bool)

(assert (=> bm!543604 (= call!543609 call!543607)))

(declare-fun b!6367838 () Bool)

(assert (=> b!6367838 (= e!3866272 e!3866270)))

(assert (=> b!6367838 (= c!1159476 ((_ is Union!16277) r!7292))))

(assert (= (and d!1997342 (not res!2619781)) b!6367836))

(assert (= (and b!6367836 c!1159477) b!6367831))

(assert (= (and b!6367836 (not c!1159477)) b!6367838))

(assert (= (and b!6367831 res!2619785) b!6367830))

(assert (= (and b!6367838 c!1159476) b!6367837))

(assert (= (and b!6367838 (not c!1159476)) b!6367832))

(assert (= (and b!6367837 res!2619784) b!6367834))

(assert (= (and b!6367832 (not res!2619783)) b!6367833))

(assert (= (and b!6367833 res!2619782) b!6367835))

(assert (= (or b!6367834 b!6367835) bm!543603))

(assert (= (or b!6367837 b!6367833) bm!543604))

(assert (= (or b!6367830 bm!543604) bm!543602))

(declare-fun m!7171414 () Bool)

(assert (=> bm!543602 m!7171414))

(declare-fun m!7171416 () Bool)

(assert (=> b!6367831 m!7171416))

(declare-fun m!7171418 () Bool)

(assert (=> bm!543603 m!7171418))

(assert (=> start!630818 d!1997342))

(declare-fun bs!1595093 () Bool)

(declare-fun d!1997346 () Bool)

(assert (= bs!1595093 (and d!1997346 d!1997320)))

(declare-fun lambda!350879 () Int)

(assert (=> bs!1595093 (= lambda!350879 lambda!350867)))

(declare-fun bs!1595094 () Bool)

(assert (= bs!1595094 (and d!1997346 d!1997332)))

(assert (=> bs!1595094 (= lambda!350879 lambda!350870)))

(assert (=> d!1997346 (= (inv!83939 (Context!11323 (Cons!65007 (reg!16606 (regOne!33066 r!7292)) Nil!65007))) (forall!15454 (exprs!6161 (Context!11323 (Cons!65007 (reg!16606 (regOne!33066 r!7292)) Nil!65007))) lambda!350879))))

(declare-fun bs!1595095 () Bool)

(assert (= bs!1595095 d!1997346))

(declare-fun m!7171422 () Bool)

(assert (=> bs!1595095 m!7171422))

(assert (=> b!6367729 d!1997346))

(declare-fun d!1997350 () Bool)

(assert (=> d!1997350 (= (isEmpty!37117 (t!378729 (exprs!6161 (h!71456 zl!343)))) ((_ is Nil!65007) (t!378729 (exprs!6161 (h!71456 zl!343)))))))

(assert (=> b!6367710 d!1997350))

(declare-fun d!1997352 () Bool)

(assert (=> d!1997352 (= (isEmpty!37118 (t!378730 zl!343)) ((_ is Nil!65008) (t!378730 zl!343)))))

(assert (=> b!6367733 d!1997352))

(declare-fun bs!1595096 () Bool)

(declare-fun d!1997354 () Bool)

(assert (= bs!1595096 (and d!1997354 d!1997320)))

(declare-fun lambda!350880 () Int)

(assert (=> bs!1595096 (= lambda!350880 lambda!350867)))

(declare-fun bs!1595097 () Bool)

(assert (= bs!1595097 (and d!1997354 d!1997332)))

(assert (=> bs!1595097 (= lambda!350880 lambda!350870)))

(declare-fun bs!1595098 () Bool)

(assert (= bs!1595098 (and d!1997354 d!1997346)))

(assert (=> bs!1595098 (= lambda!350880 lambda!350879)))

(assert (=> d!1997354 (= (inv!83939 setElem!43402) (forall!15454 (exprs!6161 setElem!43402) lambda!350880))))

(declare-fun bs!1595099 () Bool)

(assert (= bs!1595099 d!1997354))

(declare-fun m!7171424 () Bool)

(assert (=> bs!1595099 m!7171424))

(assert (=> setNonEmpty!43402 d!1997354))

(declare-fun d!1997356 () Bool)

(declare-fun lt!2367743 () Regex!16277)

(assert (=> d!1997356 (validRegex!8013 lt!2367743)))

(assert (=> d!1997356 (= lt!2367743 (generalisedUnion!2121 (unfocusZipperList!1698 zl!343)))))

(assert (=> d!1997356 (= (unfocusZipper!2019 zl!343) lt!2367743)))

(declare-fun bs!1595102 () Bool)

(assert (= bs!1595102 d!1997356))

(declare-fun m!7171456 () Bool)

(assert (=> bs!1595102 m!7171456))

(assert (=> bs!1595102 m!7171278))

(assert (=> bs!1595102 m!7171278))

(assert (=> bs!1595102 m!7171280))

(assert (=> b!6367721 d!1997356))

(declare-fun d!1997366 () Bool)

(declare-fun e!3866283 () Bool)

(assert (=> d!1997366 e!3866283))

(declare-fun res!2619788 () Bool)

(assert (=> d!1997366 (=> (not res!2619788) (not e!3866283))))

(declare-fun lt!2367746 () List!65132)

(declare-fun noDuplicate!2106 (List!65132) Bool)

(assert (=> d!1997366 (= res!2619788 (noDuplicate!2106 lt!2367746))))

(declare-fun choose!47309 ((InoxSet Context!11322)) List!65132)

(assert (=> d!1997366 (= lt!2367746 (choose!47309 z!1189))))

(assert (=> d!1997366 (= (toList!10061 z!1189) lt!2367746)))

(declare-fun b!6367849 () Bool)

(declare-fun content!12285 (List!65132) (InoxSet Context!11322))

(assert (=> b!6367849 (= e!3866283 (= (content!12285 lt!2367746) z!1189))))

(assert (= (and d!1997366 res!2619788) b!6367849))

(declare-fun m!7171460 () Bool)

(assert (=> d!1997366 m!7171460))

(declare-fun m!7171462 () Bool)

(assert (=> d!1997366 m!7171462))

(declare-fun m!7171464 () Bool)

(assert (=> b!6367849 m!7171464))

(assert (=> b!6367732 d!1997366))

(declare-fun bs!1595104 () Bool)

(declare-fun d!1997368 () Bool)

(assert (= bs!1595104 (and d!1997368 d!1997320)))

(declare-fun lambda!350882 () Int)

(assert (=> bs!1595104 (= lambda!350882 lambda!350867)))

(declare-fun bs!1595105 () Bool)

(assert (= bs!1595105 (and d!1997368 d!1997332)))

(assert (=> bs!1595105 (= lambda!350882 lambda!350870)))

(declare-fun bs!1595106 () Bool)

(assert (= bs!1595106 (and d!1997368 d!1997346)))

(assert (=> bs!1595106 (= lambda!350882 lambda!350879)))

(declare-fun bs!1595107 () Bool)

(assert (= bs!1595107 (and d!1997368 d!1997354)))

(assert (=> bs!1595107 (= lambda!350882 lambda!350880)))

(assert (=> d!1997368 (= (inv!83939 (h!71456 zl!343)) (forall!15454 (exprs!6161 (h!71456 zl!343)) lambda!350882))))

(declare-fun bs!1595108 () Bool)

(assert (= bs!1595108 d!1997368))

(declare-fun m!7171466 () Bool)

(assert (=> bs!1595108 m!7171466))

(assert (=> b!6367725 d!1997368))

(declare-fun d!1997370 () Bool)

(declare-fun e!3866298 () Bool)

(assert (=> d!1997370 (= (matchZipper!2289 ((_ map or) lt!2367715 lt!2367722) (t!378728 s!2326)) e!3866298)))

(declare-fun res!2619795 () Bool)

(assert (=> d!1997370 (=> res!2619795 e!3866298)))

(assert (=> d!1997370 (= res!2619795 (matchZipper!2289 lt!2367715 (t!378728 s!2326)))))

(declare-fun lt!2367751 () Unit!158439)

(declare-fun choose!47310 ((InoxSet Context!11322) (InoxSet Context!11322) List!65130) Unit!158439)

(assert (=> d!1997370 (= lt!2367751 (choose!47310 lt!2367715 lt!2367722 (t!378728 s!2326)))))

(assert (=> d!1997370 (= (lemmaZipperConcatMatchesSameAsBothZippers!1108 lt!2367715 lt!2367722 (t!378728 s!2326)) lt!2367751)))

(declare-fun b!6367872 () Bool)

(assert (=> b!6367872 (= e!3866298 (matchZipper!2289 lt!2367722 (t!378728 s!2326)))))

(assert (= (and d!1997370 (not res!2619795)) b!6367872))

(assert (=> d!1997370 m!7171302))

(assert (=> d!1997370 m!7171300))

(declare-fun m!7171468 () Bool)

(assert (=> d!1997370 m!7171468))

(assert (=> b!6367872 m!7171282))

(assert (=> b!6367714 d!1997370))

(declare-fun d!1997372 () Bool)

(declare-fun c!1159496 () Bool)

(declare-fun isEmpty!37120 (List!65130) Bool)

(assert (=> d!1997372 (= c!1159496 (isEmpty!37120 (t!378728 s!2326)))))

(declare-fun e!3866307 () Bool)

(assert (=> d!1997372 (= (matchZipper!2289 lt!2367715 (t!378728 s!2326)) e!3866307)))

(declare-fun b!6367887 () Bool)

(declare-fun nullableZipper!2043 ((InoxSet Context!11322)) Bool)

(assert (=> b!6367887 (= e!3866307 (nullableZipper!2043 lt!2367715))))

(declare-fun b!6367888 () Bool)

(declare-fun head!13047 (List!65130) C!32824)

(declare-fun tail!12132 (List!65130) List!65130)

(assert (=> b!6367888 (= e!3866307 (matchZipper!2289 (derivationStepZipper!2243 lt!2367715 (head!13047 (t!378728 s!2326))) (tail!12132 (t!378728 s!2326))))))

(assert (= (and d!1997372 c!1159496) b!6367887))

(assert (= (and d!1997372 (not c!1159496)) b!6367888))

(declare-fun m!7171488 () Bool)

(assert (=> d!1997372 m!7171488))

(declare-fun m!7171490 () Bool)

(assert (=> b!6367887 m!7171490))

(declare-fun m!7171492 () Bool)

(assert (=> b!6367888 m!7171492))

(assert (=> b!6367888 m!7171492))

(declare-fun m!7171494 () Bool)

(assert (=> b!6367888 m!7171494))

(declare-fun m!7171496 () Bool)

(assert (=> b!6367888 m!7171496))

(assert (=> b!6367888 m!7171494))

(assert (=> b!6367888 m!7171496))

(declare-fun m!7171498 () Bool)

(assert (=> b!6367888 m!7171498))

(assert (=> b!6367714 d!1997372))

(declare-fun d!1997376 () Bool)

(declare-fun c!1159497 () Bool)

(assert (=> d!1997376 (= c!1159497 (isEmpty!37120 (t!378728 s!2326)))))

(declare-fun e!3866308 () Bool)

(assert (=> d!1997376 (= (matchZipper!2289 ((_ map or) lt!2367715 lt!2367722) (t!378728 s!2326)) e!3866308)))

(declare-fun b!6367889 () Bool)

(assert (=> b!6367889 (= e!3866308 (nullableZipper!2043 ((_ map or) lt!2367715 lt!2367722)))))

(declare-fun b!6367890 () Bool)

(assert (=> b!6367890 (= e!3866308 (matchZipper!2289 (derivationStepZipper!2243 ((_ map or) lt!2367715 lt!2367722) (head!13047 (t!378728 s!2326))) (tail!12132 (t!378728 s!2326))))))

(assert (= (and d!1997376 c!1159497) b!6367889))

(assert (= (and d!1997376 (not c!1159497)) b!6367890))

(assert (=> d!1997376 m!7171488))

(declare-fun m!7171500 () Bool)

(assert (=> b!6367889 m!7171500))

(assert (=> b!6367890 m!7171492))

(assert (=> b!6367890 m!7171492))

(declare-fun m!7171502 () Bool)

(assert (=> b!6367890 m!7171502))

(assert (=> b!6367890 m!7171496))

(assert (=> b!6367890 m!7171502))

(assert (=> b!6367890 m!7171496))

(declare-fun m!7171504 () Bool)

(assert (=> b!6367890 m!7171504))

(assert (=> b!6367714 d!1997376))

(declare-fun b!6367946 () Bool)

(declare-fun e!3866344 () (InoxSet Context!11322))

(declare-fun e!3866341 () (InoxSet Context!11322))

(assert (=> b!6367946 (= e!3866344 e!3866341)))

(declare-fun c!1159523 () Bool)

(assert (=> b!6367946 (= c!1159523 ((_ is Union!16277) (reg!16606 (regOne!33066 r!7292))))))

(declare-fun bm!543635 () Bool)

(declare-fun call!543644 () List!65131)

(declare-fun call!543643 () List!65131)

(assert (=> bm!543635 (= call!543644 call!543643)))

(declare-fun c!1159524 () Bool)

(declare-fun bm!543636 () Bool)

(declare-fun call!543641 () (InoxSet Context!11322))

(declare-fun c!1159525 () Bool)

(assert (=> bm!543636 (= call!543641 (derivationStepZipperDown!1525 (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292)))))) (ite (or c!1159523 c!1159524) (Context!11323 lt!2367708) (Context!11323 call!543644)) (h!71454 s!2326)))))

(declare-fun b!6367947 () Bool)

(declare-fun c!1159527 () Bool)

(assert (=> b!6367947 (= c!1159527 ((_ is Star!16277) (reg!16606 (regOne!33066 r!7292))))))

(declare-fun e!3866343 () (InoxSet Context!11322))

(declare-fun e!3866342 () (InoxSet Context!11322))

(assert (=> b!6367947 (= e!3866343 e!3866342)))

(declare-fun b!6367949 () Bool)

(declare-fun e!3866339 () Bool)

(assert (=> b!6367949 (= e!3866339 (nullable!6270 (regOne!33066 (reg!16606 (regOne!33066 r!7292)))))))

(declare-fun b!6367950 () Bool)

(assert (=> b!6367950 (= e!3866342 ((as const (Array Context!11322 Bool)) false))))

(declare-fun b!6367951 () Bool)

(declare-fun e!3866340 () (InoxSet Context!11322))

(assert (=> b!6367951 (= e!3866340 e!3866343)))

(assert (=> b!6367951 (= c!1159525 ((_ is Concat!25122) (reg!16606 (regOne!33066 r!7292))))))

(declare-fun bm!543637 () Bool)

(declare-fun $colon$colon!2138 (List!65131 Regex!16277) List!65131)

(assert (=> bm!543637 (= call!543643 ($colon$colon!2138 (exprs!6161 (Context!11323 lt!2367708)) (ite (or c!1159524 c!1159525) (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (regOne!33066 r!7292)))))))

(declare-fun b!6367952 () Bool)

(assert (=> b!6367952 (= c!1159524 e!3866339)))

(declare-fun res!2619803 () Bool)

(assert (=> b!6367952 (=> (not res!2619803) (not e!3866339))))

(assert (=> b!6367952 (= res!2619803 ((_ is Concat!25122) (reg!16606 (regOne!33066 r!7292))))))

(assert (=> b!6367952 (= e!3866341 e!3866340)))

(declare-fun b!6367953 () Bool)

(declare-fun call!543642 () (InoxSet Context!11322))

(assert (=> b!6367953 (= e!3866343 call!543642)))

(declare-fun bm!543638 () Bool)

(declare-fun call!543645 () (InoxSet Context!11322))

(assert (=> bm!543638 (= call!543642 call!543645)))

(declare-fun b!6367954 () Bool)

(assert (=> b!6367954 (= e!3866342 call!543642)))

(declare-fun b!6367955 () Bool)

(declare-fun call!543640 () (InoxSet Context!11322))

(assert (=> b!6367955 (= e!3866340 ((_ map or) call!543640 call!543645))))

(declare-fun bm!543639 () Bool)

(assert (=> bm!543639 (= call!543645 call!543641)))

(declare-fun bm!543640 () Bool)

(assert (=> bm!543640 (= call!543640 (derivationStepZipperDown!1525 (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292)))) (ite c!1159523 (Context!11323 lt!2367708) (Context!11323 call!543643)) (h!71454 s!2326)))))

(declare-fun b!6367956 () Bool)

(assert (=> b!6367956 (= e!3866341 ((_ map or) call!543640 call!543641))))

(declare-fun d!1997378 () Bool)

(declare-fun c!1159526 () Bool)

(assert (=> d!1997378 (= c!1159526 (and ((_ is ElementMatch!16277) (reg!16606 (regOne!33066 r!7292))) (= (c!1159440 (reg!16606 (regOne!33066 r!7292))) (h!71454 s!2326))))))

(assert (=> d!1997378 (= (derivationStepZipperDown!1525 (reg!16606 (regOne!33066 r!7292)) (Context!11323 lt!2367708) (h!71454 s!2326)) e!3866344)))

(declare-fun b!6367948 () Bool)

(assert (=> b!6367948 (= e!3866344 (store ((as const (Array Context!11322 Bool)) false) (Context!11323 lt!2367708) true))))

(assert (= (and d!1997378 c!1159526) b!6367948))

(assert (= (and d!1997378 (not c!1159526)) b!6367946))

(assert (= (and b!6367946 c!1159523) b!6367956))

(assert (= (and b!6367946 (not c!1159523)) b!6367952))

(assert (= (and b!6367952 res!2619803) b!6367949))

(assert (= (and b!6367952 c!1159524) b!6367955))

(assert (= (and b!6367952 (not c!1159524)) b!6367951))

(assert (= (and b!6367951 c!1159525) b!6367953))

(assert (= (and b!6367951 (not c!1159525)) b!6367947))

(assert (= (and b!6367947 c!1159527) b!6367954))

(assert (= (and b!6367947 (not c!1159527)) b!6367950))

(assert (= (or b!6367953 b!6367954) bm!543635))

(assert (= (or b!6367953 b!6367954) bm!543638))

(assert (= (or b!6367955 bm!543635) bm!543637))

(assert (= (or b!6367955 bm!543638) bm!543639))

(assert (= (or b!6367956 bm!543639) bm!543636))

(assert (= (or b!6367956 b!6367955) bm!543640))

(declare-fun m!7171526 () Bool)

(assert (=> bm!543636 m!7171526))

(declare-fun m!7171528 () Bool)

(assert (=> bm!543637 m!7171528))

(declare-fun m!7171530 () Bool)

(assert (=> bm!543640 m!7171530))

(declare-fun m!7171532 () Bool)

(assert (=> b!6367948 m!7171532))

(declare-fun m!7171534 () Bool)

(assert (=> b!6367949 m!7171534))

(assert (=> b!6367706 d!1997378))

(declare-fun bs!1595118 () Bool)

(declare-fun b!6368052 () Bool)

(assert (= bs!1595118 (and b!6368052 b!6367726)))

(declare-fun lambda!350895 () Int)

(assert (=> bs!1595118 (not (= lambda!350895 lambda!350859))))

(assert (=> bs!1595118 (not (= lambda!350895 lambda!350860))))

(assert (=> b!6368052 true))

(assert (=> b!6368052 true))

(declare-fun bs!1595119 () Bool)

(declare-fun b!6368051 () Bool)

(assert (= bs!1595119 (and b!6368051 b!6367726)))

(declare-fun lambda!350896 () Int)

(assert (=> bs!1595119 (not (= lambda!350896 lambda!350859))))

(assert (=> bs!1595119 (= lambda!350896 lambda!350860)))

(declare-fun bs!1595120 () Bool)

(assert (= bs!1595120 (and b!6368051 b!6368052)))

(assert (=> bs!1595120 (not (= lambda!350896 lambda!350895))))

(assert (=> b!6368051 true))

(assert (=> b!6368051 true))

(declare-fun b!6368049 () Bool)

(declare-fun e!3866402 () Bool)

(assert (=> b!6368049 (= e!3866402 (matchRSpec!3378 (regTwo!33067 r!7292) s!2326))))

(declare-fun b!6368050 () Bool)

(declare-fun e!3866398 () Bool)

(assert (=> b!6368050 (= e!3866398 e!3866402)))

(declare-fun res!2619840 () Bool)

(assert (=> b!6368050 (= res!2619840 (matchRSpec!3378 (regOne!33067 r!7292) s!2326))))

(assert (=> b!6368050 (=> res!2619840 e!3866402)))

(declare-fun e!3866399 () Bool)

(declare-fun call!543661 () Bool)

(assert (=> b!6368051 (= e!3866399 call!543661)))

(declare-fun e!3866403 () Bool)

(assert (=> b!6368052 (= e!3866403 call!543661)))

(declare-fun d!1997388 () Bool)

(declare-fun c!1159559 () Bool)

(assert (=> d!1997388 (= c!1159559 ((_ is EmptyExpr!16277) r!7292))))

(declare-fun e!3866401 () Bool)

(assert (=> d!1997388 (= (matchRSpec!3378 r!7292 s!2326) e!3866401)))

(declare-fun b!6368053 () Bool)

(declare-fun e!3866400 () Bool)

(assert (=> b!6368053 (= e!3866401 e!3866400)))

(declare-fun res!2619841 () Bool)

(assert (=> b!6368053 (= res!2619841 (not ((_ is EmptyLang!16277) r!7292)))))

(assert (=> b!6368053 (=> (not res!2619841) (not e!3866400))))

(declare-fun b!6368054 () Bool)

(assert (=> b!6368054 (= e!3866398 e!3866399)))

(declare-fun c!1159558 () Bool)

(assert (=> b!6368054 (= c!1159558 ((_ is Star!16277) r!7292))))

(declare-fun b!6368055 () Bool)

(declare-fun c!1159557 () Bool)

(assert (=> b!6368055 (= c!1159557 ((_ is Union!16277) r!7292))))

(declare-fun e!3866397 () Bool)

(assert (=> b!6368055 (= e!3866397 e!3866398)))

(declare-fun bm!543656 () Bool)

(declare-fun call!543662 () Bool)

(assert (=> bm!543656 (= call!543662 (isEmpty!37120 s!2326))))

(declare-fun b!6368056 () Bool)

(declare-fun c!1159556 () Bool)

(assert (=> b!6368056 (= c!1159556 ((_ is ElementMatch!16277) r!7292))))

(assert (=> b!6368056 (= e!3866400 e!3866397)))

(declare-fun b!6368057 () Bool)

(assert (=> b!6368057 (= e!3866401 call!543662)))

(declare-fun b!6368058 () Bool)

(assert (=> b!6368058 (= e!3866397 (= s!2326 (Cons!65006 (c!1159440 r!7292) Nil!65006)))))

(declare-fun bm!543657 () Bool)

(assert (=> bm!543657 (= call!543661 (Exists!3347 (ite c!1159558 lambda!350895 lambda!350896)))))

(declare-fun b!6368059 () Bool)

(declare-fun res!2619842 () Bool)

(assert (=> b!6368059 (=> res!2619842 e!3866403)))

(assert (=> b!6368059 (= res!2619842 call!543662)))

(assert (=> b!6368059 (= e!3866399 e!3866403)))

(assert (= (and d!1997388 c!1159559) b!6368057))

(assert (= (and d!1997388 (not c!1159559)) b!6368053))

(assert (= (and b!6368053 res!2619841) b!6368056))

(assert (= (and b!6368056 c!1159556) b!6368058))

(assert (= (and b!6368056 (not c!1159556)) b!6368055))

(assert (= (and b!6368055 c!1159557) b!6368050))

(assert (= (and b!6368055 (not c!1159557)) b!6368054))

(assert (= (and b!6368050 (not res!2619840)) b!6368049))

(assert (= (and b!6368054 c!1159558) b!6368059))

(assert (= (and b!6368054 (not c!1159558)) b!6368051))

(assert (= (and b!6368059 (not res!2619842)) b!6368052))

(assert (= (or b!6368052 b!6368051) bm!543657))

(assert (= (or b!6368057 b!6368059) bm!543656))

(declare-fun m!7171570 () Bool)

(assert (=> b!6368049 m!7171570))

(declare-fun m!7171572 () Bool)

(assert (=> b!6368050 m!7171572))

(declare-fun m!7171574 () Bool)

(assert (=> bm!543656 m!7171574))

(declare-fun m!7171576 () Bool)

(assert (=> bm!543657 m!7171576))

(assert (=> b!6367734 d!1997388))

(declare-fun b!6368127 () Bool)

(declare-fun e!3866445 () Bool)

(declare-fun lt!2367758 () Bool)

(declare-fun call!543671 () Bool)

(assert (=> b!6368127 (= e!3866445 (= lt!2367758 call!543671))))

(declare-fun b!6368128 () Bool)

(declare-fun res!2619884 () Bool)

(declare-fun e!3866442 () Bool)

(assert (=> b!6368128 (=> res!2619884 e!3866442)))

(assert (=> b!6368128 (= res!2619884 (not ((_ is ElementMatch!16277) r!7292)))))

(declare-fun e!3866444 () Bool)

(assert (=> b!6368128 (= e!3866444 e!3866442)))

(declare-fun b!6368129 () Bool)

(assert (=> b!6368129 (= e!3866444 (not lt!2367758))))

(declare-fun d!1997402 () Bool)

(assert (=> d!1997402 e!3866445))

(declare-fun c!1159576 () Bool)

(assert (=> d!1997402 (= c!1159576 ((_ is EmptyExpr!16277) r!7292))))

(declare-fun e!3866443 () Bool)

(assert (=> d!1997402 (= lt!2367758 e!3866443)))

(declare-fun c!1159577 () Bool)

(assert (=> d!1997402 (= c!1159577 (isEmpty!37120 s!2326))))

(assert (=> d!1997402 (validRegex!8013 r!7292)))

(assert (=> d!1997402 (= (matchR!8460 r!7292 s!2326) lt!2367758)))

(declare-fun bm!543666 () Bool)

(assert (=> bm!543666 (= call!543671 (isEmpty!37120 s!2326))))

(declare-fun b!6368130 () Bool)

(declare-fun res!2619882 () Bool)

(declare-fun e!3866440 () Bool)

(assert (=> b!6368130 (=> (not res!2619882) (not e!3866440))))

(assert (=> b!6368130 (= res!2619882 (not call!543671))))

(declare-fun b!6368131 () Bool)

(assert (=> b!6368131 (= e!3866443 (nullable!6270 r!7292))))

(declare-fun b!6368132 () Bool)

(declare-fun e!3866441 () Bool)

(assert (=> b!6368132 (= e!3866442 e!3866441)))

(declare-fun res!2619880 () Bool)

(assert (=> b!6368132 (=> (not res!2619880) (not e!3866441))))

(assert (=> b!6368132 (= res!2619880 (not lt!2367758))))

(declare-fun b!6368133 () Bool)

(assert (=> b!6368133 (= e!3866440 (= (head!13047 s!2326) (c!1159440 r!7292)))))

(declare-fun b!6368134 () Bool)

(assert (=> b!6368134 (= e!3866445 e!3866444)))

(declare-fun c!1159578 () Bool)

(assert (=> b!6368134 (= c!1159578 ((_ is EmptyLang!16277) r!7292))))

(declare-fun b!6368135 () Bool)

(declare-fun derivativeStep!4981 (Regex!16277 C!32824) Regex!16277)

(assert (=> b!6368135 (= e!3866443 (matchR!8460 (derivativeStep!4981 r!7292 (head!13047 s!2326)) (tail!12132 s!2326)))))

(declare-fun b!6368136 () Bool)

(declare-fun e!3866439 () Bool)

(assert (=> b!6368136 (= e!3866439 (not (= (head!13047 s!2326) (c!1159440 r!7292))))))

(declare-fun b!6368137 () Bool)

(declare-fun res!2619883 () Bool)

(assert (=> b!6368137 (=> res!2619883 e!3866439)))

(assert (=> b!6368137 (= res!2619883 (not (isEmpty!37120 (tail!12132 s!2326))))))

(declare-fun b!6368138 () Bool)

(assert (=> b!6368138 (= e!3866441 e!3866439)))

(declare-fun res!2619885 () Bool)

(assert (=> b!6368138 (=> res!2619885 e!3866439)))

(assert (=> b!6368138 (= res!2619885 call!543671)))

(declare-fun b!6368139 () Bool)

(declare-fun res!2619878 () Bool)

(assert (=> b!6368139 (=> (not res!2619878) (not e!3866440))))

(assert (=> b!6368139 (= res!2619878 (isEmpty!37120 (tail!12132 s!2326)))))

(declare-fun b!6368140 () Bool)

(declare-fun res!2619879 () Bool)

(assert (=> b!6368140 (=> res!2619879 e!3866442)))

(assert (=> b!6368140 (= res!2619879 e!3866440)))

(declare-fun res!2619881 () Bool)

(assert (=> b!6368140 (=> (not res!2619881) (not e!3866440))))

(assert (=> b!6368140 (= res!2619881 lt!2367758)))

(assert (= (and d!1997402 c!1159577) b!6368131))

(assert (= (and d!1997402 (not c!1159577)) b!6368135))

(assert (= (and d!1997402 c!1159576) b!6368127))

(assert (= (and d!1997402 (not c!1159576)) b!6368134))

(assert (= (and b!6368134 c!1159578) b!6368129))

(assert (= (and b!6368134 (not c!1159578)) b!6368128))

(assert (= (and b!6368128 (not res!2619884)) b!6368140))

(assert (= (and b!6368140 res!2619881) b!6368130))

(assert (= (and b!6368130 res!2619882) b!6368139))

(assert (= (and b!6368139 res!2619878) b!6368133))

(assert (= (and b!6368140 (not res!2619879)) b!6368132))

(assert (= (and b!6368132 res!2619880) b!6368138))

(assert (= (and b!6368138 (not res!2619885)) b!6368137))

(assert (= (and b!6368137 (not res!2619883)) b!6368136))

(assert (= (or b!6368127 b!6368130 b!6368138) bm!543666))

(declare-fun m!7171584 () Bool)

(assert (=> b!6368133 m!7171584))

(declare-fun m!7171586 () Bool)

(assert (=> b!6368139 m!7171586))

(assert (=> b!6368139 m!7171586))

(declare-fun m!7171588 () Bool)

(assert (=> b!6368139 m!7171588))

(declare-fun m!7171590 () Bool)

(assert (=> b!6368131 m!7171590))

(assert (=> b!6368136 m!7171584))

(assert (=> b!6368137 m!7171586))

(assert (=> b!6368137 m!7171586))

(assert (=> b!6368137 m!7171588))

(assert (=> d!1997402 m!7171574))

(assert (=> d!1997402 m!7171290))

(assert (=> b!6368135 m!7171584))

(assert (=> b!6368135 m!7171584))

(declare-fun m!7171592 () Bool)

(assert (=> b!6368135 m!7171592))

(assert (=> b!6368135 m!7171586))

(assert (=> b!6368135 m!7171592))

(assert (=> b!6368135 m!7171586))

(declare-fun m!7171594 () Bool)

(assert (=> b!6368135 m!7171594))

(assert (=> bm!543666 m!7171574))

(assert (=> b!6367734 d!1997402))

(declare-fun d!1997406 () Bool)

(assert (=> d!1997406 (= (matchR!8460 r!7292 s!2326) (matchRSpec!3378 r!7292 s!2326))))

(declare-fun lt!2367762 () Unit!158439)

(declare-fun choose!47311 (Regex!16277 List!65130) Unit!158439)

(assert (=> d!1997406 (= lt!2367762 (choose!47311 r!7292 s!2326))))

(assert (=> d!1997406 (validRegex!8013 r!7292)))

(assert (=> d!1997406 (= (mainMatchTheorem!3378 r!7292 s!2326) lt!2367762)))

(declare-fun bs!1595124 () Bool)

(assert (= bs!1595124 d!1997406))

(assert (=> bs!1595124 m!7171286))

(assert (=> bs!1595124 m!7171284))

(declare-fun m!7171604 () Bool)

(assert (=> bs!1595124 m!7171604))

(assert (=> bs!1595124 m!7171290))

(assert (=> b!6367734 d!1997406))

(declare-fun b!6368155 () Bool)

(declare-fun e!3866453 () Bool)

(assert (=> b!6368155 (= e!3866453 (nullable!6270 (h!71455 (exprs!6161 lt!2367724))))))

(declare-fun b!6368156 () Bool)

(declare-fun e!3866455 () (InoxSet Context!11322))

(declare-fun call!543673 () (InoxSet Context!11322))

(assert (=> b!6368156 (= e!3866455 call!543673)))

(declare-fun b!6368157 () Bool)

(assert (=> b!6368157 (= e!3866455 ((as const (Array Context!11322 Bool)) false))))

(declare-fun bm!543668 () Bool)

(assert (=> bm!543668 (= call!543673 (derivationStepZipperDown!1525 (h!71455 (exprs!6161 lt!2367724)) (Context!11323 (t!378729 (exprs!6161 lt!2367724))) (h!71454 s!2326)))))

(declare-fun d!1997410 () Bool)

(declare-fun c!1159582 () Bool)

(assert (=> d!1997410 (= c!1159582 e!3866453)))

(declare-fun res!2619894 () Bool)

(assert (=> d!1997410 (=> (not res!2619894) (not e!3866453))))

(assert (=> d!1997410 (= res!2619894 ((_ is Cons!65007) (exprs!6161 lt!2367724)))))

(declare-fun e!3866454 () (InoxSet Context!11322))

(assert (=> d!1997410 (= (derivationStepZipperUp!1451 lt!2367724 (h!71454 s!2326)) e!3866454)))

(declare-fun b!6368158 () Bool)

(assert (=> b!6368158 (= e!3866454 ((_ map or) call!543673 (derivationStepZipperUp!1451 (Context!11323 (t!378729 (exprs!6161 lt!2367724))) (h!71454 s!2326))))))

(declare-fun b!6368159 () Bool)

(assert (=> b!6368159 (= e!3866454 e!3866455)))

(declare-fun c!1159583 () Bool)

(assert (=> b!6368159 (= c!1159583 ((_ is Cons!65007) (exprs!6161 lt!2367724)))))

(assert (= (and d!1997410 res!2619894) b!6368155))

(assert (= (and d!1997410 c!1159582) b!6368158))

(assert (= (and d!1997410 (not c!1159582)) b!6368159))

(assert (= (and b!6368159 c!1159583) b!6368156))

(assert (= (and b!6368159 (not c!1159583)) b!6368157))

(assert (= (or b!6368158 b!6368156) bm!543668))

(declare-fun m!7171606 () Bool)

(assert (=> b!6368155 m!7171606))

(declare-fun m!7171608 () Bool)

(assert (=> bm!543668 m!7171608))

(declare-fun m!7171610 () Bool)

(assert (=> b!6368158 m!7171610))

(assert (=> b!6367704 d!1997410))

(declare-fun d!1997412 () Bool)

(assert (=> d!1997412 (= (flatMap!1782 z!1189 lambda!350861) (dynLambda!25788 lambda!350861 (h!71456 zl!343)))))

(declare-fun lt!2367763 () Unit!158439)

(assert (=> d!1997412 (= lt!2367763 (choose!47307 z!1189 (h!71456 zl!343) lambda!350861))))

(assert (=> d!1997412 (= z!1189 (store ((as const (Array Context!11322 Bool)) false) (h!71456 zl!343) true))))

(assert (=> d!1997412 (= (lemmaFlatMapOnSingletonSet!1308 z!1189 (h!71456 zl!343) lambda!350861) lt!2367763)))

(declare-fun b_lambda!242035 () Bool)

(assert (=> (not b_lambda!242035) (not d!1997412)))

(declare-fun bs!1595125 () Bool)

(assert (= bs!1595125 d!1997412))

(assert (=> bs!1595125 m!7171344))

(declare-fun m!7171612 () Bool)

(assert (=> bs!1595125 m!7171612))

(declare-fun m!7171614 () Bool)

(assert (=> bs!1595125 m!7171614))

(declare-fun m!7171616 () Bool)

(assert (=> bs!1595125 m!7171616))

(assert (=> b!6367704 d!1997412))

(declare-fun d!1997414 () Bool)

(declare-fun nullableFct!2217 (Regex!16277) Bool)

(assert (=> d!1997414 (= (nullable!6270 (h!71455 (exprs!6161 (h!71456 zl!343)))) (nullableFct!2217 (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun bs!1595126 () Bool)

(assert (= bs!1595126 d!1997414))

(declare-fun m!7171618 () Bool)

(assert (=> bs!1595126 m!7171618))

(assert (=> b!6367704 d!1997414))

(declare-fun b!6368160 () Bool)

(declare-fun e!3866456 () Bool)

(assert (=> b!6368160 (= e!3866456 (nullable!6270 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))))))

(declare-fun b!6368161 () Bool)

(declare-fun e!3866458 () (InoxSet Context!11322))

(declare-fun call!543674 () (InoxSet Context!11322))

(assert (=> b!6368161 (= e!3866458 call!543674)))

(declare-fun b!6368162 () Bool)

(assert (=> b!6368162 (= e!3866458 ((as const (Array Context!11322 Bool)) false))))

(declare-fun bm!543669 () Bool)

(assert (=> bm!543669 (= call!543674 (derivationStepZipperDown!1525 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343))))))) (Context!11323 (t!378729 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))) (h!71454 s!2326)))))

(declare-fun d!1997416 () Bool)

(declare-fun c!1159584 () Bool)

(assert (=> d!1997416 (= c!1159584 e!3866456)))

(declare-fun res!2619895 () Bool)

(assert (=> d!1997416 (=> (not res!2619895) (not e!3866456))))

(assert (=> d!1997416 (= res!2619895 ((_ is Cons!65007) (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343))))))))))

(declare-fun e!3866457 () (InoxSet Context!11322))

(assert (=> d!1997416 (= (derivationStepZipperUp!1451 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343))))) (h!71454 s!2326)) e!3866457)))

(declare-fun b!6368163 () Bool)

(assert (=> b!6368163 (= e!3866457 ((_ map or) call!543674 (derivationStepZipperUp!1451 (Context!11323 (t!378729 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))) (h!71454 s!2326))))))

(declare-fun b!6368164 () Bool)

(assert (=> b!6368164 (= e!3866457 e!3866458)))

(declare-fun c!1159585 () Bool)

(assert (=> b!6368164 (= c!1159585 ((_ is Cons!65007) (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343))))))))))

(assert (= (and d!1997416 res!2619895) b!6368160))

(assert (= (and d!1997416 c!1159584) b!6368163))

(assert (= (and d!1997416 (not c!1159584)) b!6368164))

(assert (= (and b!6368164 c!1159585) b!6368161))

(assert (= (and b!6368164 (not c!1159585)) b!6368162))

(assert (= (or b!6368163 b!6368161) bm!543669))

(declare-fun m!7171620 () Bool)

(assert (=> b!6368160 m!7171620))

(declare-fun m!7171622 () Bool)

(assert (=> bm!543669 m!7171622))

(declare-fun m!7171624 () Bool)

(assert (=> b!6368163 m!7171624))

(assert (=> b!6367704 d!1997416))

(declare-fun d!1997418 () Bool)

(assert (=> d!1997418 (= (flatMap!1782 z!1189 lambda!350861) (choose!47306 z!1189 lambda!350861))))

(declare-fun bs!1595127 () Bool)

(assert (= bs!1595127 d!1997418))

(declare-fun m!7171626 () Bool)

(assert (=> bs!1595127 m!7171626))

(assert (=> b!6367704 d!1997418))

(declare-fun b!6368165 () Bool)

(declare-fun e!3866464 () (InoxSet Context!11322))

(declare-fun e!3866461 () (InoxSet Context!11322))

(assert (=> b!6368165 (= e!3866464 e!3866461)))

(declare-fun c!1159586 () Bool)

(assert (=> b!6368165 (= c!1159586 ((_ is Union!16277) (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun bm!543670 () Bool)

(declare-fun call!543679 () List!65131)

(declare-fun call!543678 () List!65131)

(assert (=> bm!543670 (= call!543679 call!543678)))

(declare-fun c!1159588 () Bool)

(declare-fun c!1159587 () Bool)

(declare-fun call!543676 () (InoxSet Context!11322))

(declare-fun bm!543671 () Bool)

(assert (=> bm!543671 (= call!543676 (derivationStepZipperDown!1525 (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343))))))) (ite (or c!1159586 c!1159587) lt!2367724 (Context!11323 call!543679)) (h!71454 s!2326)))))

(declare-fun b!6368166 () Bool)

(declare-fun c!1159590 () Bool)

(assert (=> b!6368166 (= c!1159590 ((_ is Star!16277) (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun e!3866463 () (InoxSet Context!11322))

(declare-fun e!3866462 () (InoxSet Context!11322))

(assert (=> b!6368166 (= e!3866463 e!3866462)))

(declare-fun b!6368168 () Bool)

(declare-fun e!3866459 () Bool)

(assert (=> b!6368168 (= e!3866459 (nullable!6270 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343))))))))

(declare-fun b!6368169 () Bool)

(assert (=> b!6368169 (= e!3866462 ((as const (Array Context!11322 Bool)) false))))

(declare-fun b!6368170 () Bool)

(declare-fun e!3866460 () (InoxSet Context!11322))

(assert (=> b!6368170 (= e!3866460 e!3866463)))

(assert (=> b!6368170 (= c!1159588 ((_ is Concat!25122) (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun bm!543672 () Bool)

(assert (=> bm!543672 (= call!543678 ($colon$colon!2138 (exprs!6161 lt!2367724) (ite (or c!1159587 c!1159588) (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (h!71455 (exprs!6161 (h!71456 zl!343))))))))

(declare-fun b!6368171 () Bool)

(assert (=> b!6368171 (= c!1159587 e!3866459)))

(declare-fun res!2619896 () Bool)

(assert (=> b!6368171 (=> (not res!2619896) (not e!3866459))))

(assert (=> b!6368171 (= res!2619896 ((_ is Concat!25122) (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(assert (=> b!6368171 (= e!3866461 e!3866460)))

(declare-fun b!6368172 () Bool)

(declare-fun call!543677 () (InoxSet Context!11322))

(assert (=> b!6368172 (= e!3866463 call!543677)))

(declare-fun bm!543673 () Bool)

(declare-fun call!543680 () (InoxSet Context!11322))

(assert (=> bm!543673 (= call!543677 call!543680)))

(declare-fun b!6368173 () Bool)

(assert (=> b!6368173 (= e!3866462 call!543677)))

(declare-fun b!6368174 () Bool)

(declare-fun call!543675 () (InoxSet Context!11322))

(assert (=> b!6368174 (= e!3866460 ((_ map or) call!543675 call!543680))))

(declare-fun bm!543674 () Bool)

(assert (=> bm!543674 (= call!543680 call!543676)))

(declare-fun bm!543675 () Bool)

(assert (=> bm!543675 (= call!543675 (derivationStepZipperDown!1525 (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343))))) (ite c!1159586 lt!2367724 (Context!11323 call!543678)) (h!71454 s!2326)))))

(declare-fun b!6368175 () Bool)

(assert (=> b!6368175 (= e!3866461 ((_ map or) call!543675 call!543676))))

(declare-fun d!1997420 () Bool)

(declare-fun c!1159589 () Bool)

(assert (=> d!1997420 (= c!1159589 (and ((_ is ElementMatch!16277) (h!71455 (exprs!6161 (h!71456 zl!343)))) (= (c!1159440 (h!71455 (exprs!6161 (h!71456 zl!343)))) (h!71454 s!2326))))))

(assert (=> d!1997420 (= (derivationStepZipperDown!1525 (h!71455 (exprs!6161 (h!71456 zl!343))) lt!2367724 (h!71454 s!2326)) e!3866464)))

(declare-fun b!6368167 () Bool)

(assert (=> b!6368167 (= e!3866464 (store ((as const (Array Context!11322 Bool)) false) lt!2367724 true))))

(assert (= (and d!1997420 c!1159589) b!6368167))

(assert (= (and d!1997420 (not c!1159589)) b!6368165))

(assert (= (and b!6368165 c!1159586) b!6368175))

(assert (= (and b!6368165 (not c!1159586)) b!6368171))

(assert (= (and b!6368171 res!2619896) b!6368168))

(assert (= (and b!6368171 c!1159587) b!6368174))

(assert (= (and b!6368171 (not c!1159587)) b!6368170))

(assert (= (and b!6368170 c!1159588) b!6368172))

(assert (= (and b!6368170 (not c!1159588)) b!6368166))

(assert (= (and b!6368166 c!1159590) b!6368173))

(assert (= (and b!6368166 (not c!1159590)) b!6368169))

(assert (= (or b!6368172 b!6368173) bm!543670))

(assert (= (or b!6368172 b!6368173) bm!543673))

(assert (= (or b!6368174 bm!543670) bm!543672))

(assert (= (or b!6368174 bm!543673) bm!543674))

(assert (= (or b!6368175 bm!543674) bm!543671))

(assert (= (or b!6368175 b!6368174) bm!543675))

(declare-fun m!7171630 () Bool)

(assert (=> bm!543671 m!7171630))

(declare-fun m!7171632 () Bool)

(assert (=> bm!543672 m!7171632))

(declare-fun m!7171634 () Bool)

(assert (=> bm!543675 m!7171634))

(declare-fun m!7171636 () Bool)

(assert (=> b!6368167 m!7171636))

(declare-fun m!7171638 () Bool)

(assert (=> b!6368168 m!7171638))

(assert (=> b!6367704 d!1997420))

(declare-fun b!6368176 () Bool)

(declare-fun e!3866465 () Bool)

(assert (=> b!6368176 (= e!3866465 (nullable!6270 (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun b!6368177 () Bool)

(declare-fun e!3866467 () (InoxSet Context!11322))

(declare-fun call!543681 () (InoxSet Context!11322))

(assert (=> b!6368177 (= e!3866467 call!543681)))

(declare-fun b!6368178 () Bool)

(assert (=> b!6368178 (= e!3866467 ((as const (Array Context!11322 Bool)) false))))

(declare-fun bm!543676 () Bool)

(assert (=> bm!543676 (= call!543681 (derivationStepZipperDown!1525 (h!71455 (exprs!6161 (h!71456 zl!343))) (Context!11323 (t!378729 (exprs!6161 (h!71456 zl!343)))) (h!71454 s!2326)))))

(declare-fun d!1997424 () Bool)

(declare-fun c!1159591 () Bool)

(assert (=> d!1997424 (= c!1159591 e!3866465)))

(declare-fun res!2619897 () Bool)

(assert (=> d!1997424 (=> (not res!2619897) (not e!3866465))))

(assert (=> d!1997424 (= res!2619897 ((_ is Cons!65007) (exprs!6161 (h!71456 zl!343))))))

(declare-fun e!3866466 () (InoxSet Context!11322))

(assert (=> d!1997424 (= (derivationStepZipperUp!1451 (h!71456 zl!343) (h!71454 s!2326)) e!3866466)))

(declare-fun b!6368179 () Bool)

(assert (=> b!6368179 (= e!3866466 ((_ map or) call!543681 (derivationStepZipperUp!1451 (Context!11323 (t!378729 (exprs!6161 (h!71456 zl!343)))) (h!71454 s!2326))))))

(declare-fun b!6368180 () Bool)

(assert (=> b!6368180 (= e!3866466 e!3866467)))

(declare-fun c!1159592 () Bool)

(assert (=> b!6368180 (= c!1159592 ((_ is Cons!65007) (exprs!6161 (h!71456 zl!343))))))

(assert (= (and d!1997424 res!2619897) b!6368176))

(assert (= (and d!1997424 c!1159591) b!6368179))

(assert (= (and d!1997424 (not c!1159591)) b!6368180))

(assert (= (and b!6368180 c!1159592) b!6368177))

(assert (= (and b!6368180 (not c!1159592)) b!6368178))

(assert (= (or b!6368179 b!6368177) bm!543676))

(assert (=> b!6368176 m!7171348))

(declare-fun m!7171640 () Bool)

(assert (=> bm!543676 m!7171640))

(declare-fun m!7171642 () Bool)

(assert (=> b!6368179 m!7171642))

(assert (=> b!6367704 d!1997424))

(declare-fun bs!1595129 () Bool)

(declare-fun d!1997426 () Bool)

(assert (= bs!1595129 (and d!1997426 d!1997320)))

(declare-fun lambda!350901 () Int)

(assert (=> bs!1595129 (= lambda!350901 lambda!350867)))

(declare-fun bs!1595130 () Bool)

(assert (= bs!1595130 (and d!1997426 d!1997354)))

(assert (=> bs!1595130 (= lambda!350901 lambda!350880)))

(declare-fun bs!1595131 () Bool)

(assert (= bs!1595131 (and d!1997426 d!1997332)))

(assert (=> bs!1595131 (= lambda!350901 lambda!350870)))

(declare-fun bs!1595132 () Bool)

(assert (= bs!1595132 (and d!1997426 d!1997346)))

(assert (=> bs!1595132 (= lambda!350901 lambda!350879)))

(declare-fun bs!1595133 () Bool)

(assert (= bs!1595133 (and d!1997426 d!1997368)))

(assert (=> bs!1595133 (= lambda!350901 lambda!350882)))

(declare-fun e!3866489 () Bool)

(assert (=> d!1997426 e!3866489))

(declare-fun res!2619909 () Bool)

(assert (=> d!1997426 (=> (not res!2619909) (not e!3866489))))

(declare-fun lt!2367775 () Regex!16277)

(assert (=> d!1997426 (= res!2619909 (validRegex!8013 lt!2367775))))

(declare-fun e!3866492 () Regex!16277)

(assert (=> d!1997426 (= lt!2367775 e!3866492)))

(declare-fun c!1159605 () Bool)

(declare-fun e!3866488 () Bool)

(assert (=> d!1997426 (= c!1159605 e!3866488)))

(declare-fun res!2619908 () Bool)

(assert (=> d!1997426 (=> (not res!2619908) (not e!3866488))))

(assert (=> d!1997426 (= res!2619908 ((_ is Cons!65007) (exprs!6161 (h!71456 zl!343))))))

(assert (=> d!1997426 (forall!15454 (exprs!6161 (h!71456 zl!343)) lambda!350901)))

(assert (=> d!1997426 (= (generalisedConcat!1874 (exprs!6161 (h!71456 zl!343))) lt!2367775)))

(declare-fun b!6368211 () Bool)

(declare-fun e!3866491 () Regex!16277)

(assert (=> b!6368211 (= e!3866491 (Concat!25122 (h!71455 (exprs!6161 (h!71456 zl!343))) (generalisedConcat!1874 (t!378729 (exprs!6161 (h!71456 zl!343))))))))

(declare-fun b!6368212 () Bool)

(declare-fun e!3866490 () Bool)

(declare-fun isConcat!1202 (Regex!16277) Bool)

(assert (=> b!6368212 (= e!3866490 (isConcat!1202 lt!2367775))))

(declare-fun b!6368213 () Bool)

(assert (=> b!6368213 (= e!3866490 (= lt!2367775 (head!13044 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun b!6368214 () Bool)

(assert (=> b!6368214 (= e!3866491 EmptyExpr!16277)))

(declare-fun b!6368215 () Bool)

(assert (=> b!6368215 (= e!3866492 e!3866491)))

(declare-fun c!1159603 () Bool)

(assert (=> b!6368215 (= c!1159603 ((_ is Cons!65007) (exprs!6161 (h!71456 zl!343))))))

(declare-fun b!6368216 () Bool)

(declare-fun e!3866493 () Bool)

(assert (=> b!6368216 (= e!3866489 e!3866493)))

(declare-fun c!1159604 () Bool)

(assert (=> b!6368216 (= c!1159604 (isEmpty!37117 (exprs!6161 (h!71456 zl!343))))))

(declare-fun b!6368217 () Bool)

(declare-fun isEmptyExpr!1679 (Regex!16277) Bool)

(assert (=> b!6368217 (= e!3866493 (isEmptyExpr!1679 lt!2367775))))

(declare-fun b!6368218 () Bool)

(assert (=> b!6368218 (= e!3866493 e!3866490)))

(declare-fun c!1159606 () Bool)

(assert (=> b!6368218 (= c!1159606 (isEmpty!37117 (tail!12129 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun b!6368219 () Bool)

(assert (=> b!6368219 (= e!3866488 (isEmpty!37117 (t!378729 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun b!6368220 () Bool)

(assert (=> b!6368220 (= e!3866492 (h!71455 (exprs!6161 (h!71456 zl!343))))))

(assert (= (and d!1997426 res!2619908) b!6368219))

(assert (= (and d!1997426 c!1159605) b!6368220))

(assert (= (and d!1997426 (not c!1159605)) b!6368215))

(assert (= (and b!6368215 c!1159603) b!6368211))

(assert (= (and b!6368215 (not c!1159603)) b!6368214))

(assert (= (and d!1997426 res!2619909) b!6368216))

(assert (= (and b!6368216 c!1159604) b!6368217))

(assert (= (and b!6368216 (not c!1159604)) b!6368218))

(assert (= (and b!6368218 c!1159606) b!6368213))

(assert (= (and b!6368218 (not c!1159606)) b!6368212))

(declare-fun m!7171664 () Bool)

(assert (=> d!1997426 m!7171664))

(declare-fun m!7171666 () Bool)

(assert (=> d!1997426 m!7171666))

(declare-fun m!7171668 () Bool)

(assert (=> b!6368213 m!7171668))

(declare-fun m!7171670 () Bool)

(assert (=> b!6368216 m!7171670))

(declare-fun m!7171672 () Bool)

(assert (=> b!6368211 m!7171672))

(declare-fun m!7171674 () Bool)

(assert (=> b!6368217 m!7171674))

(assert (=> b!6368219 m!7171294))

(declare-fun m!7171676 () Bool)

(assert (=> b!6368212 m!7171676))

(declare-fun m!7171678 () Bool)

(assert (=> b!6368218 m!7171678))

(assert (=> b!6368218 m!7171678))

(declare-fun m!7171680 () Bool)

(assert (=> b!6368218 m!7171680))

(assert (=> b!6367735 d!1997426))

(declare-fun d!1997436 () Bool)

(declare-fun lt!2367776 () Regex!16277)

(assert (=> d!1997436 (validRegex!8013 lt!2367776)))

(assert (=> d!1997436 (= lt!2367776 (generalisedUnion!2121 (unfocusZipperList!1698 (Cons!65008 lt!2367709 Nil!65008))))))

(assert (=> d!1997436 (= (unfocusZipper!2019 (Cons!65008 lt!2367709 Nil!65008)) lt!2367776)))

(declare-fun bs!1595134 () Bool)

(assert (= bs!1595134 d!1997436))

(declare-fun m!7171682 () Bool)

(assert (=> bs!1595134 m!7171682))

(declare-fun m!7171684 () Bool)

(assert (=> bs!1595134 m!7171684))

(assert (=> bs!1595134 m!7171684))

(declare-fun m!7171686 () Bool)

(assert (=> bs!1595134 m!7171686))

(assert (=> b!6367724 d!1997436))

(declare-fun d!1997438 () Bool)

(declare-fun c!1159607 () Bool)

(assert (=> d!1997438 (= c!1159607 (isEmpty!37120 (t!378728 s!2326)))))

(declare-fun e!3866494 () Bool)

(assert (=> d!1997438 (= (matchZipper!2289 lt!2367722 (t!378728 s!2326)) e!3866494)))

(declare-fun b!6368221 () Bool)

(assert (=> b!6368221 (= e!3866494 (nullableZipper!2043 lt!2367722))))

(declare-fun b!6368222 () Bool)

(assert (=> b!6368222 (= e!3866494 (matchZipper!2289 (derivationStepZipper!2243 lt!2367722 (head!13047 (t!378728 s!2326))) (tail!12132 (t!378728 s!2326))))))

(assert (= (and d!1997438 c!1159607) b!6368221))

(assert (= (and d!1997438 (not c!1159607)) b!6368222))

(assert (=> d!1997438 m!7171488))

(declare-fun m!7171688 () Bool)

(assert (=> b!6368221 m!7171688))

(assert (=> b!6368222 m!7171492))

(assert (=> b!6368222 m!7171492))

(declare-fun m!7171690 () Bool)

(assert (=> b!6368222 m!7171690))

(assert (=> b!6368222 m!7171496))

(assert (=> b!6368222 m!7171690))

(assert (=> b!6368222 m!7171496))

(declare-fun m!7171692 () Bool)

(assert (=> b!6368222 m!7171692))

(assert (=> b!6367717 d!1997438))

(declare-fun b!6368295 () Bool)

(declare-fun e!3866543 () Option!16168)

(declare-fun e!3866542 () Option!16168)

(assert (=> b!6368295 (= e!3866543 e!3866542)))

(declare-fun c!1159631 () Bool)

(assert (=> b!6368295 (= c!1159631 ((_ is Nil!65006) s!2326))))

(declare-fun b!6368296 () Bool)

(declare-fun res!2619938 () Bool)

(declare-fun e!3866544 () Bool)

(assert (=> b!6368296 (=> (not res!2619938) (not e!3866544))))

(declare-fun lt!2367789 () Option!16168)

(declare-fun get!22499 (Option!16168) tuple2!66512)

(assert (=> b!6368296 (= res!2619938 (matchR!8460 (regTwo!33066 r!7292) (_2!36559 (get!22499 lt!2367789))))))

(declare-fun b!6368297 () Bool)

(assert (=> b!6368297 (= e!3866542 None!16167)))

(declare-fun b!6368298 () Bool)

(declare-fun res!2619937 () Bool)

(assert (=> b!6368298 (=> (not res!2619937) (not e!3866544))))

(assert (=> b!6368298 (= res!2619937 (matchR!8460 (regOne!33066 r!7292) (_1!36559 (get!22499 lt!2367789))))))

(declare-fun b!6368299 () Bool)

(declare-fun ++!14345 (List!65130 List!65130) List!65130)

(assert (=> b!6368299 (= e!3866544 (= (++!14345 (_1!36559 (get!22499 lt!2367789)) (_2!36559 (get!22499 lt!2367789))) s!2326))))

(declare-fun b!6368300 () Bool)

(declare-fun e!3866540 () Bool)

(assert (=> b!6368300 (= e!3866540 (not (isDefined!12871 lt!2367789)))))

(declare-fun b!6368301 () Bool)

(declare-fun lt!2367791 () Unit!158439)

(declare-fun lt!2367790 () Unit!158439)

(assert (=> b!6368301 (= lt!2367791 lt!2367790)))

(assert (=> b!6368301 (= (++!14345 (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006)) (t!378728 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2440 (List!65130 C!32824 List!65130 List!65130) Unit!158439)

(assert (=> b!6368301 (= lt!2367790 (lemmaMoveElementToOtherListKeepsConcatEq!2440 Nil!65006 (h!71454 s!2326) (t!378728 s!2326) s!2326))))

(assert (=> b!6368301 (= e!3866542 (findConcatSeparation!2582 (regOne!33066 r!7292) (regTwo!33066 r!7292) (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006)) (t!378728 s!2326) s!2326))))

(declare-fun d!1997440 () Bool)

(assert (=> d!1997440 e!3866540))

(declare-fun res!2619936 () Bool)

(assert (=> d!1997440 (=> res!2619936 e!3866540)))

(assert (=> d!1997440 (= res!2619936 e!3866544)))

(declare-fun res!2619939 () Bool)

(assert (=> d!1997440 (=> (not res!2619939) (not e!3866544))))

(assert (=> d!1997440 (= res!2619939 (isDefined!12871 lt!2367789))))

(assert (=> d!1997440 (= lt!2367789 e!3866543)))

(declare-fun c!1159632 () Bool)

(declare-fun e!3866541 () Bool)

(assert (=> d!1997440 (= c!1159632 e!3866541)))

(declare-fun res!2619940 () Bool)

(assert (=> d!1997440 (=> (not res!2619940) (not e!3866541))))

(assert (=> d!1997440 (= res!2619940 (matchR!8460 (regOne!33066 r!7292) Nil!65006))))

(assert (=> d!1997440 (validRegex!8013 (regOne!33066 r!7292))))

(assert (=> d!1997440 (= (findConcatSeparation!2582 (regOne!33066 r!7292) (regTwo!33066 r!7292) Nil!65006 s!2326 s!2326) lt!2367789)))

(declare-fun b!6368302 () Bool)

(assert (=> b!6368302 (= e!3866543 (Some!16167 (tuple2!66513 Nil!65006 s!2326)))))

(declare-fun b!6368303 () Bool)

(assert (=> b!6368303 (= e!3866541 (matchR!8460 (regTwo!33066 r!7292) s!2326))))

(assert (= (and d!1997440 res!2619940) b!6368303))

(assert (= (and d!1997440 c!1159632) b!6368302))

(assert (= (and d!1997440 (not c!1159632)) b!6368295))

(assert (= (and b!6368295 c!1159631) b!6368297))

(assert (= (and b!6368295 (not c!1159631)) b!6368301))

(assert (= (and d!1997440 res!2619939) b!6368298))

(assert (= (and b!6368298 res!2619937) b!6368296))

(assert (= (and b!6368296 res!2619938) b!6368299))

(assert (= (and d!1997440 (not res!2619936)) b!6368300))

(declare-fun m!7171724 () Bool)

(assert (=> b!6368301 m!7171724))

(assert (=> b!6368301 m!7171724))

(declare-fun m!7171726 () Bool)

(assert (=> b!6368301 m!7171726))

(declare-fun m!7171728 () Bool)

(assert (=> b!6368301 m!7171728))

(assert (=> b!6368301 m!7171724))

(declare-fun m!7171730 () Bool)

(assert (=> b!6368301 m!7171730))

(declare-fun m!7171732 () Bool)

(assert (=> b!6368303 m!7171732))

(declare-fun m!7171734 () Bool)

(assert (=> b!6368299 m!7171734))

(declare-fun m!7171736 () Bool)

(assert (=> b!6368299 m!7171736))

(declare-fun m!7171738 () Bool)

(assert (=> b!6368300 m!7171738))

(assert (=> b!6368298 m!7171734))

(declare-fun m!7171740 () Bool)

(assert (=> b!6368298 m!7171740))

(assert (=> d!1997440 m!7171738))

(declare-fun m!7171742 () Bool)

(assert (=> d!1997440 m!7171742))

(declare-fun m!7171744 () Bool)

(assert (=> d!1997440 m!7171744))

(assert (=> b!6368296 m!7171734))

(declare-fun m!7171746 () Bool)

(assert (=> b!6368296 m!7171746))

(assert (=> b!6367726 d!1997440))

(declare-fun d!1997448 () Bool)

(declare-fun choose!47315 (Int) Bool)

(assert (=> d!1997448 (= (Exists!3347 lambda!350859) (choose!47315 lambda!350859))))

(declare-fun bs!1595144 () Bool)

(assert (= bs!1595144 d!1997448))

(declare-fun m!7171748 () Bool)

(assert (=> bs!1595144 m!7171748))

(assert (=> b!6367726 d!1997448))

(declare-fun d!1997450 () Bool)

(assert (=> d!1997450 (= (Exists!3347 lambda!350860) (choose!47315 lambda!350860))))

(declare-fun bs!1595145 () Bool)

(assert (= bs!1595145 d!1997450))

(declare-fun m!7171750 () Bool)

(assert (=> bs!1595145 m!7171750))

(assert (=> b!6367726 d!1997450))

(declare-fun bs!1595146 () Bool)

(declare-fun d!1997452 () Bool)

(assert (= bs!1595146 (and d!1997452 b!6367726)))

(declare-fun lambda!350910 () Int)

(assert (=> bs!1595146 (= lambda!350910 lambda!350859)))

(assert (=> bs!1595146 (not (= lambda!350910 lambda!350860))))

(declare-fun bs!1595147 () Bool)

(assert (= bs!1595147 (and d!1997452 b!6368052)))

(assert (=> bs!1595147 (not (= lambda!350910 lambda!350895))))

(declare-fun bs!1595148 () Bool)

(assert (= bs!1595148 (and d!1997452 b!6368051)))

(assert (=> bs!1595148 (not (= lambda!350910 lambda!350896))))

(assert (=> d!1997452 true))

(assert (=> d!1997452 true))

(assert (=> d!1997452 true))

(assert (=> d!1997452 (= (isDefined!12871 (findConcatSeparation!2582 (regOne!33066 r!7292) (regTwo!33066 r!7292) Nil!65006 s!2326 s!2326)) (Exists!3347 lambda!350910))))

(declare-fun lt!2367794 () Unit!158439)

(declare-fun choose!47316 (Regex!16277 Regex!16277 List!65130) Unit!158439)

(assert (=> d!1997452 (= lt!2367794 (choose!47316 (regOne!33066 r!7292) (regTwo!33066 r!7292) s!2326))))

(assert (=> d!1997452 (validRegex!8013 (regOne!33066 r!7292))))

(assert (=> d!1997452 (= (lemmaFindConcatSeparationEquivalentToExists!2346 (regOne!33066 r!7292) (regTwo!33066 r!7292) s!2326) lt!2367794)))

(declare-fun bs!1595149 () Bool)

(assert (= bs!1595149 d!1997452))

(assert (=> bs!1595149 m!7171320))

(assert (=> bs!1595149 m!7171744))

(declare-fun m!7171752 () Bool)

(assert (=> bs!1595149 m!7171752))

(declare-fun m!7171754 () Bool)

(assert (=> bs!1595149 m!7171754))

(assert (=> bs!1595149 m!7171320))

(assert (=> bs!1595149 m!7171322))

(assert (=> b!6367726 d!1997452))

(declare-fun bs!1595152 () Bool)

(declare-fun d!1997454 () Bool)

(assert (= bs!1595152 (and d!1997454 d!1997452)))

(declare-fun lambda!350915 () Int)

(assert (=> bs!1595152 (= lambda!350915 lambda!350910)))

(declare-fun bs!1595153 () Bool)

(assert (= bs!1595153 (and d!1997454 b!6367726)))

(assert (=> bs!1595153 (not (= lambda!350915 lambda!350860))))

(declare-fun bs!1595154 () Bool)

(assert (= bs!1595154 (and d!1997454 b!6368051)))

(assert (=> bs!1595154 (not (= lambda!350915 lambda!350896))))

(assert (=> bs!1595153 (= lambda!350915 lambda!350859)))

(declare-fun bs!1595155 () Bool)

(assert (= bs!1595155 (and d!1997454 b!6368052)))

(assert (=> bs!1595155 (not (= lambda!350915 lambda!350895))))

(assert (=> d!1997454 true))

(assert (=> d!1997454 true))

(assert (=> d!1997454 true))

(declare-fun bs!1595156 () Bool)

(assert (= bs!1595156 d!1997454))

(declare-fun lambda!350916 () Int)

(assert (=> bs!1595156 (not (= lambda!350916 lambda!350915))))

(assert (=> bs!1595152 (not (= lambda!350916 lambda!350910))))

(assert (=> bs!1595153 (= lambda!350916 lambda!350860)))

(assert (=> bs!1595154 (= lambda!350916 lambda!350896)))

(assert (=> bs!1595153 (not (= lambda!350916 lambda!350859))))

(assert (=> bs!1595155 (not (= lambda!350916 lambda!350895))))

(assert (=> d!1997454 true))

(assert (=> d!1997454 true))

(assert (=> d!1997454 true))

(assert (=> d!1997454 (= (Exists!3347 lambda!350915) (Exists!3347 lambda!350916))))

(declare-fun lt!2367806 () Unit!158439)

(declare-fun choose!47317 (Regex!16277 Regex!16277 List!65130) Unit!158439)

(assert (=> d!1997454 (= lt!2367806 (choose!47317 (regOne!33066 r!7292) (regTwo!33066 r!7292) s!2326))))

(assert (=> d!1997454 (validRegex!8013 (regOne!33066 r!7292))))

(assert (=> d!1997454 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1884 (regOne!33066 r!7292) (regTwo!33066 r!7292) s!2326) lt!2367806)))

(declare-fun m!7171784 () Bool)

(assert (=> bs!1595156 m!7171784))

(declare-fun m!7171786 () Bool)

(assert (=> bs!1595156 m!7171786))

(declare-fun m!7171788 () Bool)

(assert (=> bs!1595156 m!7171788))

(assert (=> bs!1595156 m!7171744))

(assert (=> b!6367726 d!1997454))

(declare-fun d!1997462 () Bool)

(declare-fun isEmpty!37121 (Option!16168) Bool)

(assert (=> d!1997462 (= (isDefined!12871 (findConcatSeparation!2582 (regOne!33066 r!7292) (regTwo!33066 r!7292) Nil!65006 s!2326 s!2326)) (not (isEmpty!37121 (findConcatSeparation!2582 (regOne!33066 r!7292) (regTwo!33066 r!7292) Nil!65006 s!2326 s!2326))))))

(declare-fun bs!1595157 () Bool)

(assert (= bs!1595157 d!1997462))

(assert (=> bs!1595157 m!7171320))

(declare-fun m!7171790 () Bool)

(assert (=> bs!1595157 m!7171790))

(assert (=> b!6367726 d!1997462))

(declare-fun d!1997464 () Bool)

(assert (=> d!1997464 (= (nullable!6270 (regOne!33066 (regOne!33066 r!7292))) (nullableFct!2217 (regOne!33066 (regOne!33066 r!7292))))))

(declare-fun bs!1595158 () Bool)

(assert (= bs!1595158 d!1997464))

(declare-fun m!7171792 () Bool)

(assert (=> bs!1595158 m!7171792))

(assert (=> b!6367727 d!1997464))

(declare-fun d!1997466 () Bool)

(declare-fun c!1159641 () Bool)

(assert (=> d!1997466 (= c!1159641 (isEmpty!37120 s!2326))))

(declare-fun e!3866575 () Bool)

(assert (=> d!1997466 (= (matchZipper!2289 lt!2367707 s!2326) e!3866575)))

(declare-fun b!6368356 () Bool)

(assert (=> b!6368356 (= e!3866575 (nullableZipper!2043 lt!2367707))))

(declare-fun b!6368357 () Bool)

(assert (=> b!6368357 (= e!3866575 (matchZipper!2289 (derivationStepZipper!2243 lt!2367707 (head!13047 s!2326)) (tail!12132 s!2326)))))

(assert (= (and d!1997466 c!1159641) b!6368356))

(assert (= (and d!1997466 (not c!1159641)) b!6368357))

(assert (=> d!1997466 m!7171574))

(declare-fun m!7171794 () Bool)

(assert (=> b!6368356 m!7171794))

(assert (=> b!6368357 m!7171584))

(assert (=> b!6368357 m!7171584))

(declare-fun m!7171796 () Bool)

(assert (=> b!6368357 m!7171796))

(assert (=> b!6368357 m!7171586))

(assert (=> b!6368357 m!7171796))

(assert (=> b!6368357 m!7171586))

(declare-fun m!7171798 () Bool)

(assert (=> b!6368357 m!7171798))

(assert (=> b!6367716 d!1997466))

(declare-fun d!1997468 () Bool)

(declare-fun c!1159642 () Bool)

(assert (=> d!1997468 (= c!1159642 (isEmpty!37120 (t!378728 s!2326)))))

(declare-fun e!3866576 () Bool)

(assert (=> d!1997468 (= (matchZipper!2289 lt!2367711 (t!378728 s!2326)) e!3866576)))

(declare-fun b!6368358 () Bool)

(assert (=> b!6368358 (= e!3866576 (nullableZipper!2043 lt!2367711))))

(declare-fun b!6368359 () Bool)

(assert (=> b!6368359 (= e!3866576 (matchZipper!2289 (derivationStepZipper!2243 lt!2367711 (head!13047 (t!378728 s!2326))) (tail!12132 (t!378728 s!2326))))))

(assert (= (and d!1997468 c!1159642) b!6368358))

(assert (= (and d!1997468 (not c!1159642)) b!6368359))

(assert (=> d!1997468 m!7171488))

(declare-fun m!7171800 () Bool)

(assert (=> b!6368358 m!7171800))

(assert (=> b!6368359 m!7171492))

(assert (=> b!6368359 m!7171492))

(declare-fun m!7171802 () Bool)

(assert (=> b!6368359 m!7171802))

(assert (=> b!6368359 m!7171496))

(assert (=> b!6368359 m!7171802))

(assert (=> b!6368359 m!7171496))

(declare-fun m!7171804 () Bool)

(assert (=> b!6368359 m!7171804))

(assert (=> b!6367716 d!1997468))

(declare-fun b!6368367 () Bool)

(declare-fun e!3866582 () Bool)

(declare-fun tp!1773055 () Bool)

(assert (=> b!6368367 (= e!3866582 tp!1773055)))

(declare-fun tp!1773056 () Bool)

(declare-fun b!6368366 () Bool)

(declare-fun e!3866581 () Bool)

(assert (=> b!6368366 (= e!3866581 (and (inv!83939 (h!71456 (t!378730 zl!343))) e!3866582 tp!1773056))))

(assert (=> b!6367725 (= tp!1773045 e!3866581)))

(assert (= b!6368366 b!6368367))

(assert (= (and b!6367725 ((_ is Cons!65008) (t!378730 zl!343))) b!6368366))

(declare-fun m!7171806 () Bool)

(assert (=> b!6368366 m!7171806))

(declare-fun b!6368372 () Bool)

(declare-fun e!3866585 () Bool)

(declare-fun tp!1773061 () Bool)

(declare-fun tp!1773062 () Bool)

(assert (=> b!6368372 (= e!3866585 (and tp!1773061 tp!1773062))))

(assert (=> b!6367715 (= tp!1773049 e!3866585)))

(assert (= (and b!6367715 ((_ is Cons!65007) (exprs!6161 setElem!43402))) b!6368372))

(declare-fun b!6368386 () Bool)

(declare-fun e!3866588 () Bool)

(declare-fun tp!1773074 () Bool)

(declare-fun tp!1773073 () Bool)

(assert (=> b!6368386 (= e!3866588 (and tp!1773074 tp!1773073))))

(declare-fun b!6368383 () Bool)

(assert (=> b!6368383 (= e!3866588 tp_is_empty!41807)))

(declare-fun b!6368384 () Bool)

(declare-fun tp!1773075 () Bool)

(declare-fun tp!1773076 () Bool)

(assert (=> b!6368384 (= e!3866588 (and tp!1773075 tp!1773076))))

(assert (=> b!6367713 (= tp!1773044 e!3866588)))

(declare-fun b!6368385 () Bool)

(declare-fun tp!1773077 () Bool)

(assert (=> b!6368385 (= e!3866588 tp!1773077)))

(assert (= (and b!6367713 ((_ is ElementMatch!16277) (regOne!33066 r!7292))) b!6368383))

(assert (= (and b!6367713 ((_ is Concat!25122) (regOne!33066 r!7292))) b!6368384))

(assert (= (and b!6367713 ((_ is Star!16277) (regOne!33066 r!7292))) b!6368385))

(assert (= (and b!6367713 ((_ is Union!16277) (regOne!33066 r!7292))) b!6368386))

(declare-fun b!6368390 () Bool)

(declare-fun e!3866589 () Bool)

(declare-fun tp!1773079 () Bool)

(declare-fun tp!1773078 () Bool)

(assert (=> b!6368390 (= e!3866589 (and tp!1773079 tp!1773078))))

(declare-fun b!6368387 () Bool)

(assert (=> b!6368387 (= e!3866589 tp_is_empty!41807)))

(declare-fun b!6368388 () Bool)

(declare-fun tp!1773080 () Bool)

(declare-fun tp!1773081 () Bool)

(assert (=> b!6368388 (= e!3866589 (and tp!1773080 tp!1773081))))

(assert (=> b!6367713 (= tp!1773043 e!3866589)))

(declare-fun b!6368389 () Bool)

(declare-fun tp!1773082 () Bool)

(assert (=> b!6368389 (= e!3866589 tp!1773082)))

(assert (= (and b!6367713 ((_ is ElementMatch!16277) (regTwo!33066 r!7292))) b!6368387))

(assert (= (and b!6367713 ((_ is Concat!25122) (regTwo!33066 r!7292))) b!6368388))

(assert (= (and b!6367713 ((_ is Star!16277) (regTwo!33066 r!7292))) b!6368389))

(assert (= (and b!6367713 ((_ is Union!16277) (regTwo!33066 r!7292))) b!6368390))

(declare-fun b!6368394 () Bool)

(declare-fun e!3866590 () Bool)

(declare-fun tp!1773084 () Bool)

(declare-fun tp!1773083 () Bool)

(assert (=> b!6368394 (= e!3866590 (and tp!1773084 tp!1773083))))

(declare-fun b!6368391 () Bool)

(assert (=> b!6368391 (= e!3866590 tp_is_empty!41807)))

(declare-fun b!6368392 () Bool)

(declare-fun tp!1773085 () Bool)

(declare-fun tp!1773086 () Bool)

(assert (=> b!6368392 (= e!3866590 (and tp!1773085 tp!1773086))))

(assert (=> b!6367705 (= tp!1773041 e!3866590)))

(declare-fun b!6368393 () Bool)

(declare-fun tp!1773087 () Bool)

(assert (=> b!6368393 (= e!3866590 tp!1773087)))

(assert (= (and b!6367705 ((_ is ElementMatch!16277) (regOne!33067 r!7292))) b!6368391))

(assert (= (and b!6367705 ((_ is Concat!25122) (regOne!33067 r!7292))) b!6368392))

(assert (= (and b!6367705 ((_ is Star!16277) (regOne!33067 r!7292))) b!6368393))

(assert (= (and b!6367705 ((_ is Union!16277) (regOne!33067 r!7292))) b!6368394))

(declare-fun b!6368398 () Bool)

(declare-fun e!3866591 () Bool)

(declare-fun tp!1773089 () Bool)

(declare-fun tp!1773088 () Bool)

(assert (=> b!6368398 (= e!3866591 (and tp!1773089 tp!1773088))))

(declare-fun b!6368395 () Bool)

(assert (=> b!6368395 (= e!3866591 tp_is_empty!41807)))

(declare-fun b!6368396 () Bool)

(declare-fun tp!1773090 () Bool)

(declare-fun tp!1773091 () Bool)

(assert (=> b!6368396 (= e!3866591 (and tp!1773090 tp!1773091))))

(assert (=> b!6367705 (= tp!1773042 e!3866591)))

(declare-fun b!6368397 () Bool)

(declare-fun tp!1773092 () Bool)

(assert (=> b!6368397 (= e!3866591 tp!1773092)))

(assert (= (and b!6367705 ((_ is ElementMatch!16277) (regTwo!33067 r!7292))) b!6368395))

(assert (= (and b!6367705 ((_ is Concat!25122) (regTwo!33067 r!7292))) b!6368396))

(assert (= (and b!6367705 ((_ is Star!16277) (regTwo!33067 r!7292))) b!6368397))

(assert (= (and b!6367705 ((_ is Union!16277) (regTwo!33067 r!7292))) b!6368398))

(declare-fun b!6368402 () Bool)

(declare-fun e!3866592 () Bool)

(declare-fun tp!1773094 () Bool)

(declare-fun tp!1773093 () Bool)

(assert (=> b!6368402 (= e!3866592 (and tp!1773094 tp!1773093))))

(declare-fun b!6368399 () Bool)

(assert (=> b!6368399 (= e!3866592 tp_is_empty!41807)))

(declare-fun b!6368400 () Bool)

(declare-fun tp!1773095 () Bool)

(declare-fun tp!1773096 () Bool)

(assert (=> b!6368400 (= e!3866592 (and tp!1773095 tp!1773096))))

(assert (=> b!6367722 (= tp!1773050 e!3866592)))

(declare-fun b!6368401 () Bool)

(declare-fun tp!1773097 () Bool)

(assert (=> b!6368401 (= e!3866592 tp!1773097)))

(assert (= (and b!6367722 ((_ is ElementMatch!16277) (reg!16606 r!7292))) b!6368399))

(assert (= (and b!6367722 ((_ is Concat!25122) (reg!16606 r!7292))) b!6368400))

(assert (= (and b!6367722 ((_ is Star!16277) (reg!16606 r!7292))) b!6368401))

(assert (= (and b!6367722 ((_ is Union!16277) (reg!16606 r!7292))) b!6368402))

(declare-fun b!6368403 () Bool)

(declare-fun e!3866593 () Bool)

(declare-fun tp!1773098 () Bool)

(declare-fun tp!1773099 () Bool)

(assert (=> b!6368403 (= e!3866593 (and tp!1773098 tp!1773099))))

(assert (=> b!6367709 (= tp!1773047 e!3866593)))

(assert (= (and b!6367709 ((_ is Cons!65007) (exprs!6161 (h!71456 zl!343)))) b!6368403))

(declare-fun b!6368408 () Bool)

(declare-fun e!3866596 () Bool)

(declare-fun tp!1773102 () Bool)

(assert (=> b!6368408 (= e!3866596 (and tp_is_empty!41807 tp!1773102))))

(assert (=> b!6367728 (= tp!1773048 e!3866596)))

(assert (= (and b!6367728 ((_ is Cons!65006) (t!378728 s!2326))) b!6368408))

(declare-fun condSetEmpty!43405 () Bool)

(assert (=> setNonEmpty!43402 (= condSetEmpty!43405 (= setRest!43402 ((as const (Array Context!11322 Bool)) false)))))

(declare-fun setRes!43405 () Bool)

(assert (=> setNonEmpty!43402 (= tp!1773046 setRes!43405)))

(declare-fun setIsEmpty!43405 () Bool)

(assert (=> setIsEmpty!43405 setRes!43405))

(declare-fun tp!1773107 () Bool)

(declare-fun setElem!43405 () Context!11322)

(declare-fun e!3866599 () Bool)

(declare-fun setNonEmpty!43405 () Bool)

(assert (=> setNonEmpty!43405 (= setRes!43405 (and tp!1773107 (inv!83939 setElem!43405) e!3866599))))

(declare-fun setRest!43405 () (InoxSet Context!11322))

(assert (=> setNonEmpty!43405 (= setRest!43402 ((_ map or) (store ((as const (Array Context!11322 Bool)) false) setElem!43405 true) setRest!43405))))

(declare-fun b!6368413 () Bool)

(declare-fun tp!1773108 () Bool)

(assert (=> b!6368413 (= e!3866599 tp!1773108)))

(assert (= (and setNonEmpty!43402 condSetEmpty!43405) setIsEmpty!43405))

(assert (= (and setNonEmpty!43402 (not condSetEmpty!43405)) setNonEmpty!43405))

(assert (= setNonEmpty!43405 b!6368413))

(declare-fun m!7171812 () Bool)

(assert (=> setNonEmpty!43405 m!7171812))

(declare-fun b_lambda!242037 () Bool)

(assert (= b_lambda!242035 (or b!6367704 b_lambda!242037)))

(declare-fun bs!1595163 () Bool)

(declare-fun d!1997472 () Bool)

(assert (= bs!1595163 (and d!1997472 b!6367704)))

(assert (=> bs!1595163 (= (dynLambda!25788 lambda!350861 (h!71456 zl!343)) (derivationStepZipperUp!1451 (h!71456 zl!343) (h!71454 s!2326)))))

(assert (=> bs!1595163 m!7171342))

(assert (=> d!1997412 d!1997472))

(declare-fun b_lambda!242039 () Bool)

(assert (= b_lambda!242031 (or b!6367704 b_lambda!242039)))

(declare-fun bs!1595164 () Bool)

(declare-fun d!1997474 () Bool)

(assert (= bs!1595164 (and d!1997474 b!6367704)))

(assert (=> bs!1595164 (= (dynLambda!25788 lambda!350861 lt!2367709) (derivationStepZipperUp!1451 lt!2367709 (h!71454 s!2326)))))

(assert (=> bs!1595164 m!7171306))

(assert (=> d!1997338 d!1997474))

(check-sat (not b!6367785) (not bm!543637) (not b!6368136) (not b!6368398) (not b!6367889) (not b!6368212) (not b!6368179) (not b!6368389) (not b!6368219) (not d!1997452) (not b!6368296) (not d!1997370) (not b!6367787) (not b!6368131) (not b!6368401) (not d!1997334) (not bm!543671) (not bm!543669) (not b!6368160) (not b!6368299) (not b!6368413) (not d!1997436) tp_is_empty!41807 (not b!6368168) (not b!6368049) (not d!1997346) (not b!6368176) (not b!6368358) (not b!6368393) (not b!6368221) (not d!1997468) (not b_lambda!242039) (not b!6367949) (not bs!1595164) (not b!6368372) (not d!1997356) (not b!6367781) (not b!6367786) (not d!1997368) (not b!6368211) (not b!6368386) (not d!1997414) (not bm!543676) (not d!1997426) (not b!6368402) (not bm!543595) (not b!6368303) (not d!1997372) (not b!6368388) (not b_lambda!242037) (not d!1997448) (not d!1997366) (not b!6368357) (not b!6368356) (not d!1997376) (not b!6368359) (not b!6368385) (not b!6367888) (not b!6368133) (not d!1997440) (not d!1997466) (not b!6368213) (not bs!1595163) (not d!1997412) (not bm!543656) (not b!6368408) (not b!6368366) (not b!6368394) (not bm!543675) (not b!6367805) (not b!6367782) (not b!6367831) (not bm!543657) (not d!1997320) (not bm!543640) (not b!6368298) (not d!1997338) (not d!1997340) (not b!6367793) (not b!6368218) (not b!6368301) (not setNonEmpty!43405) (not d!1997454) (not b!6368403) (not b!6367887) (not bm!543636) (not d!1997406) (not bm!543672) (not b!6368367) (not b!6367788) (not bm!543668) (not d!1997402) (not b!6368216) (not b!6368139) (not bm!543666) (not b!6368135) (not b!6367849) (not d!1997418) (not b!6368384) (not b!6367872) (not d!1997462) (not b!6368397) (not b!6367808) (not d!1997332) (not d!1997450) (not b!6367783) (not d!1997438) (not b!6368050) (not d!1997464) (not b!6368155) (not b!6368400) (not b!6368390) (not b!6368392) (not b!6368217) (not bm!543602) (not b!6368300) (not b!6367890) (not b!6368396) (not b!6368222) (not d!1997354) (not b!6368137) (not bm!543603) (not b!6368158) (not b!6368163))
(check-sat)
(get-model)

(declare-fun d!1997484 () Bool)

(declare-fun res!2619989 () Bool)

(declare-fun e!3866631 () Bool)

(assert (=> d!1997484 (=> res!2619989 e!3866631)))

(assert (=> d!1997484 (= res!2619989 ((_ is Nil!65008) lt!2367746))))

(assert (=> d!1997484 (= (noDuplicate!2106 lt!2367746) e!3866631)))

(declare-fun b!6368480 () Bool)

(declare-fun e!3866632 () Bool)

(assert (=> b!6368480 (= e!3866631 e!3866632)))

(declare-fun res!2619990 () Bool)

(assert (=> b!6368480 (=> (not res!2619990) (not e!3866632))))

(declare-fun contains!20162 (List!65132 Context!11322) Bool)

(assert (=> b!6368480 (= res!2619990 (not (contains!20162 (t!378730 lt!2367746) (h!71456 lt!2367746))))))

(declare-fun b!6368481 () Bool)

(assert (=> b!6368481 (= e!3866632 (noDuplicate!2106 (t!378730 lt!2367746)))))

(assert (= (and d!1997484 (not res!2619989)) b!6368480))

(assert (= (and b!6368480 res!2619990) b!6368481))

(declare-fun m!7171828 () Bool)

(assert (=> b!6368480 m!7171828))

(declare-fun m!7171830 () Bool)

(assert (=> b!6368481 m!7171830))

(assert (=> d!1997366 d!1997484))

(declare-fun d!1997486 () Bool)

(declare-fun e!3866640 () Bool)

(assert (=> d!1997486 e!3866640))

(declare-fun res!2619996 () Bool)

(assert (=> d!1997486 (=> (not res!2619996) (not e!3866640))))

(declare-fun res!2619995 () List!65132)

(assert (=> d!1997486 (= res!2619996 (noDuplicate!2106 res!2619995))))

(declare-fun e!3866639 () Bool)

(assert (=> d!1997486 e!3866639))

(assert (=> d!1997486 (= (choose!47309 z!1189) res!2619995)))

(declare-fun b!6368489 () Bool)

(declare-fun e!3866641 () Bool)

(declare-fun tp!1773171 () Bool)

(assert (=> b!6368489 (= e!3866641 tp!1773171)))

(declare-fun tp!1773172 () Bool)

(declare-fun b!6368488 () Bool)

(assert (=> b!6368488 (= e!3866639 (and (inv!83939 (h!71456 res!2619995)) e!3866641 tp!1773172))))

(declare-fun b!6368490 () Bool)

(assert (=> b!6368490 (= e!3866640 (= (content!12285 res!2619995) z!1189))))

(assert (= b!6368488 b!6368489))

(assert (= (and d!1997486 ((_ is Cons!65008) res!2619995)) b!6368488))

(assert (= (and d!1997486 res!2619996) b!6368490))

(declare-fun m!7171832 () Bool)

(assert (=> d!1997486 m!7171832))

(declare-fun m!7171834 () Bool)

(assert (=> b!6368488 m!7171834))

(declare-fun m!7171836 () Bool)

(assert (=> b!6368490 m!7171836))

(assert (=> d!1997366 d!1997486))

(assert (=> d!1997412 d!1997418))

(declare-fun d!1997488 () Bool)

(assert (=> d!1997488 (= (flatMap!1782 z!1189 lambda!350861) (dynLambda!25788 lambda!350861 (h!71456 zl!343)))))

(assert (=> d!1997488 true))

(declare-fun _$13!3539 () Unit!158439)

(assert (=> d!1997488 (= (choose!47307 z!1189 (h!71456 zl!343) lambda!350861) _$13!3539)))

(declare-fun b_lambda!242045 () Bool)

(assert (=> (not b_lambda!242045) (not d!1997488)))

(declare-fun bs!1595174 () Bool)

(assert (= bs!1595174 d!1997488))

(assert (=> bs!1595174 m!7171344))

(assert (=> bs!1595174 m!7171612))

(assert (=> d!1997412 d!1997488))

(declare-fun d!1997490 () Bool)

(assert (=> d!1997490 (= (isConcat!1202 lt!2367775) ((_ is Concat!25122) lt!2367775))))

(assert (=> b!6368212 d!1997490))

(declare-fun d!1997492 () Bool)

(assert (=> d!1997492 (= (nullable!6270 r!7292) (nullableFct!2217 r!7292))))

(declare-fun bs!1595175 () Bool)

(assert (= bs!1595175 d!1997492))

(declare-fun m!7171838 () Bool)

(assert (=> bs!1595175 m!7171838))

(assert (=> b!6368131 d!1997492))

(assert (=> b!6368176 d!1997414))

(declare-fun d!1997494 () Bool)

(assert (=> d!1997494 (= (nullable!6270 (h!71455 (exprs!6161 lt!2367724))) (nullableFct!2217 (h!71455 (exprs!6161 lt!2367724))))))

(declare-fun bs!1595176 () Bool)

(assert (= bs!1595176 d!1997494))

(declare-fun m!7171840 () Bool)

(assert (=> bs!1595176 m!7171840))

(assert (=> b!6368155 d!1997494))

(declare-fun d!1997496 () Bool)

(assert (=> d!1997496 (= (isEmpty!37117 (exprs!6161 (h!71456 zl!343))) ((_ is Nil!65007) (exprs!6161 (h!71456 zl!343))))))

(assert (=> b!6368216 d!1997496))

(assert (=> d!1997370 d!1997376))

(assert (=> d!1997370 d!1997372))

(declare-fun e!3866644 () Bool)

(declare-fun d!1997498 () Bool)

(assert (=> d!1997498 (= (matchZipper!2289 ((_ map or) lt!2367715 lt!2367722) (t!378728 s!2326)) e!3866644)))

(declare-fun res!2619999 () Bool)

(assert (=> d!1997498 (=> res!2619999 e!3866644)))

(assert (=> d!1997498 (= res!2619999 (matchZipper!2289 lt!2367715 (t!378728 s!2326)))))

(assert (=> d!1997498 true))

(declare-fun _$48!2159 () Unit!158439)

(assert (=> d!1997498 (= (choose!47310 lt!2367715 lt!2367722 (t!378728 s!2326)) _$48!2159)))

(declare-fun b!6368493 () Bool)

(assert (=> b!6368493 (= e!3866644 (matchZipper!2289 lt!2367722 (t!378728 s!2326)))))

(assert (= (and d!1997498 (not res!2619999)) b!6368493))

(assert (=> d!1997498 m!7171302))

(assert (=> d!1997498 m!7171300))

(assert (=> b!6368493 m!7171282))

(assert (=> d!1997370 d!1997498))

(declare-fun b!6368494 () Bool)

(declare-fun e!3866651 () Bool)

(declare-fun lt!2367813 () Bool)

(declare-fun call!543691 () Bool)

(assert (=> b!6368494 (= e!3866651 (= lt!2367813 call!543691))))

(declare-fun b!6368495 () Bool)

(declare-fun res!2620006 () Bool)

(declare-fun e!3866648 () Bool)

(assert (=> b!6368495 (=> res!2620006 e!3866648)))

(assert (=> b!6368495 (= res!2620006 (not ((_ is ElementMatch!16277) (derivativeStep!4981 r!7292 (head!13047 s!2326)))))))

(declare-fun e!3866650 () Bool)

(assert (=> b!6368495 (= e!3866650 e!3866648)))

(declare-fun b!6368496 () Bool)

(assert (=> b!6368496 (= e!3866650 (not lt!2367813))))

(declare-fun d!1997500 () Bool)

(assert (=> d!1997500 e!3866651))

(declare-fun c!1159643 () Bool)

(assert (=> d!1997500 (= c!1159643 ((_ is EmptyExpr!16277) (derivativeStep!4981 r!7292 (head!13047 s!2326))))))

(declare-fun e!3866649 () Bool)

(assert (=> d!1997500 (= lt!2367813 e!3866649)))

(declare-fun c!1159644 () Bool)

(assert (=> d!1997500 (= c!1159644 (isEmpty!37120 (tail!12132 s!2326)))))

(assert (=> d!1997500 (validRegex!8013 (derivativeStep!4981 r!7292 (head!13047 s!2326)))))

(assert (=> d!1997500 (= (matchR!8460 (derivativeStep!4981 r!7292 (head!13047 s!2326)) (tail!12132 s!2326)) lt!2367813)))

(declare-fun bm!543686 () Bool)

(assert (=> bm!543686 (= call!543691 (isEmpty!37120 (tail!12132 s!2326)))))

(declare-fun b!6368497 () Bool)

(declare-fun res!2620004 () Bool)

(declare-fun e!3866646 () Bool)

(assert (=> b!6368497 (=> (not res!2620004) (not e!3866646))))

(assert (=> b!6368497 (= res!2620004 (not call!543691))))

(declare-fun b!6368498 () Bool)

(assert (=> b!6368498 (= e!3866649 (nullable!6270 (derivativeStep!4981 r!7292 (head!13047 s!2326))))))

(declare-fun b!6368499 () Bool)

(declare-fun e!3866647 () Bool)

(assert (=> b!6368499 (= e!3866648 e!3866647)))

(declare-fun res!2620002 () Bool)

(assert (=> b!6368499 (=> (not res!2620002) (not e!3866647))))

(assert (=> b!6368499 (= res!2620002 (not lt!2367813))))

(declare-fun b!6368500 () Bool)

(assert (=> b!6368500 (= e!3866646 (= (head!13047 (tail!12132 s!2326)) (c!1159440 (derivativeStep!4981 r!7292 (head!13047 s!2326)))))))

(declare-fun b!6368501 () Bool)

(assert (=> b!6368501 (= e!3866651 e!3866650)))

(declare-fun c!1159645 () Bool)

(assert (=> b!6368501 (= c!1159645 ((_ is EmptyLang!16277) (derivativeStep!4981 r!7292 (head!13047 s!2326))))))

(declare-fun b!6368502 () Bool)

(assert (=> b!6368502 (= e!3866649 (matchR!8460 (derivativeStep!4981 (derivativeStep!4981 r!7292 (head!13047 s!2326)) (head!13047 (tail!12132 s!2326))) (tail!12132 (tail!12132 s!2326))))))

(declare-fun b!6368503 () Bool)

(declare-fun e!3866645 () Bool)

(assert (=> b!6368503 (= e!3866645 (not (= (head!13047 (tail!12132 s!2326)) (c!1159440 (derivativeStep!4981 r!7292 (head!13047 s!2326))))))))

(declare-fun b!6368504 () Bool)

(declare-fun res!2620005 () Bool)

(assert (=> b!6368504 (=> res!2620005 e!3866645)))

(assert (=> b!6368504 (= res!2620005 (not (isEmpty!37120 (tail!12132 (tail!12132 s!2326)))))))

(declare-fun b!6368505 () Bool)

(assert (=> b!6368505 (= e!3866647 e!3866645)))

(declare-fun res!2620007 () Bool)

(assert (=> b!6368505 (=> res!2620007 e!3866645)))

(assert (=> b!6368505 (= res!2620007 call!543691)))

(declare-fun b!6368506 () Bool)

(declare-fun res!2620000 () Bool)

(assert (=> b!6368506 (=> (not res!2620000) (not e!3866646))))

(assert (=> b!6368506 (= res!2620000 (isEmpty!37120 (tail!12132 (tail!12132 s!2326))))))

(declare-fun b!6368507 () Bool)

(declare-fun res!2620001 () Bool)

(assert (=> b!6368507 (=> res!2620001 e!3866648)))

(assert (=> b!6368507 (= res!2620001 e!3866646)))

(declare-fun res!2620003 () Bool)

(assert (=> b!6368507 (=> (not res!2620003) (not e!3866646))))

(assert (=> b!6368507 (= res!2620003 lt!2367813)))

(assert (= (and d!1997500 c!1159644) b!6368498))

(assert (= (and d!1997500 (not c!1159644)) b!6368502))

(assert (= (and d!1997500 c!1159643) b!6368494))

(assert (= (and d!1997500 (not c!1159643)) b!6368501))

(assert (= (and b!6368501 c!1159645) b!6368496))

(assert (= (and b!6368501 (not c!1159645)) b!6368495))

(assert (= (and b!6368495 (not res!2620006)) b!6368507))

(assert (= (and b!6368507 res!2620003) b!6368497))

(assert (= (and b!6368497 res!2620004) b!6368506))

(assert (= (and b!6368506 res!2620000) b!6368500))

(assert (= (and b!6368507 (not res!2620001)) b!6368499))

(assert (= (and b!6368499 res!2620002) b!6368505))

(assert (= (and b!6368505 (not res!2620007)) b!6368504))

(assert (= (and b!6368504 (not res!2620005)) b!6368503))

(assert (= (or b!6368494 b!6368497 b!6368505) bm!543686))

(assert (=> b!6368500 m!7171586))

(declare-fun m!7171842 () Bool)

(assert (=> b!6368500 m!7171842))

(assert (=> b!6368506 m!7171586))

(declare-fun m!7171844 () Bool)

(assert (=> b!6368506 m!7171844))

(assert (=> b!6368506 m!7171844))

(declare-fun m!7171846 () Bool)

(assert (=> b!6368506 m!7171846))

(assert (=> b!6368498 m!7171592))

(declare-fun m!7171848 () Bool)

(assert (=> b!6368498 m!7171848))

(assert (=> b!6368503 m!7171586))

(assert (=> b!6368503 m!7171842))

(assert (=> b!6368504 m!7171586))

(assert (=> b!6368504 m!7171844))

(assert (=> b!6368504 m!7171844))

(assert (=> b!6368504 m!7171846))

(assert (=> d!1997500 m!7171586))

(assert (=> d!1997500 m!7171588))

(assert (=> d!1997500 m!7171592))

(declare-fun m!7171850 () Bool)

(assert (=> d!1997500 m!7171850))

(assert (=> b!6368502 m!7171586))

(assert (=> b!6368502 m!7171842))

(assert (=> b!6368502 m!7171592))

(assert (=> b!6368502 m!7171842))

(declare-fun m!7171852 () Bool)

(assert (=> b!6368502 m!7171852))

(assert (=> b!6368502 m!7171586))

(assert (=> b!6368502 m!7171844))

(assert (=> b!6368502 m!7171852))

(assert (=> b!6368502 m!7171844))

(declare-fun m!7171854 () Bool)

(assert (=> b!6368502 m!7171854))

(assert (=> bm!543686 m!7171586))

(assert (=> bm!543686 m!7171588))

(assert (=> b!6368135 d!1997500))

(declare-fun d!1997502 () Bool)

(declare-fun lt!2367816 () Regex!16277)

(assert (=> d!1997502 (validRegex!8013 lt!2367816)))

(declare-fun e!3866663 () Regex!16277)

(assert (=> d!1997502 (= lt!2367816 e!3866663)))

(declare-fun c!1159659 () Bool)

(assert (=> d!1997502 (= c!1159659 (or ((_ is EmptyExpr!16277) r!7292) ((_ is EmptyLang!16277) r!7292)))))

(assert (=> d!1997502 (validRegex!8013 r!7292)))

(assert (=> d!1997502 (= (derivativeStep!4981 r!7292 (head!13047 s!2326)) lt!2367816)))

(declare-fun b!6368528 () Bool)

(declare-fun e!3866666 () Regex!16277)

(declare-fun call!543703 () Regex!16277)

(assert (=> b!6368528 (= e!3866666 (Union!16277 (Concat!25122 call!543703 (regTwo!33066 r!7292)) EmptyLang!16277))))

(declare-fun bm!543695 () Bool)

(declare-fun call!543702 () Regex!16277)

(declare-fun c!1159656 () Bool)

(assert (=> bm!543695 (= call!543702 (derivativeStep!4981 (ite c!1159656 (regOne!33067 r!7292) (regOne!33066 r!7292)) (head!13047 s!2326)))))

(declare-fun bm!543696 () Bool)

(declare-fun call!543700 () Regex!16277)

(assert (=> bm!543696 (= call!543703 call!543700)))

(declare-fun b!6368529 () Bool)

(declare-fun e!3866662 () Regex!16277)

(assert (=> b!6368529 (= e!3866663 e!3866662)))

(declare-fun c!1159658 () Bool)

(assert (=> b!6368529 (= c!1159658 ((_ is ElementMatch!16277) r!7292))))

(declare-fun b!6368530 () Bool)

(declare-fun e!3866665 () Regex!16277)

(declare-fun e!3866664 () Regex!16277)

(assert (=> b!6368530 (= e!3866665 e!3866664)))

(declare-fun c!1159657 () Bool)

(assert (=> b!6368530 (= c!1159657 ((_ is Star!16277) r!7292))))

(declare-fun bm!543697 () Bool)

(declare-fun call!543701 () Regex!16277)

(assert (=> bm!543697 (= call!543700 call!543701)))

(declare-fun b!6368531 () Bool)

(assert (=> b!6368531 (= c!1159656 ((_ is Union!16277) r!7292))))

(assert (=> b!6368531 (= e!3866662 e!3866665)))

(declare-fun b!6368532 () Bool)

(assert (=> b!6368532 (= e!3866664 (Concat!25122 call!543700 r!7292))))

(declare-fun b!6368533 () Bool)

(assert (=> b!6368533 (= e!3866662 (ite (= (head!13047 s!2326) (c!1159440 r!7292)) EmptyExpr!16277 EmptyLang!16277))))

(declare-fun b!6368534 () Bool)

(declare-fun c!1159660 () Bool)

(assert (=> b!6368534 (= c!1159660 (nullable!6270 (regOne!33066 r!7292)))))

(assert (=> b!6368534 (= e!3866664 e!3866666)))

(declare-fun b!6368535 () Bool)

(assert (=> b!6368535 (= e!3866665 (Union!16277 call!543702 call!543701))))

(declare-fun b!6368536 () Bool)

(assert (=> b!6368536 (= e!3866663 EmptyLang!16277)))

(declare-fun bm!543698 () Bool)

(assert (=> bm!543698 (= call!543701 (derivativeStep!4981 (ite c!1159656 (regTwo!33067 r!7292) (ite c!1159657 (reg!16606 r!7292) (ite c!1159660 (regTwo!33066 r!7292) (regOne!33066 r!7292)))) (head!13047 s!2326)))))

(declare-fun b!6368537 () Bool)

(assert (=> b!6368537 (= e!3866666 (Union!16277 (Concat!25122 call!543702 (regTwo!33066 r!7292)) call!543703))))

(assert (= (and d!1997502 c!1159659) b!6368536))

(assert (= (and d!1997502 (not c!1159659)) b!6368529))

(assert (= (and b!6368529 c!1159658) b!6368533))

(assert (= (and b!6368529 (not c!1159658)) b!6368531))

(assert (= (and b!6368531 c!1159656) b!6368535))

(assert (= (and b!6368531 (not c!1159656)) b!6368530))

(assert (= (and b!6368530 c!1159657) b!6368532))

(assert (= (and b!6368530 (not c!1159657)) b!6368534))

(assert (= (and b!6368534 c!1159660) b!6368537))

(assert (= (and b!6368534 (not c!1159660)) b!6368528))

(assert (= (or b!6368537 b!6368528) bm!543696))

(assert (= (or b!6368532 bm!543696) bm!543697))

(assert (= (or b!6368535 bm!543697) bm!543698))

(assert (= (or b!6368535 b!6368537) bm!543695))

(declare-fun m!7171856 () Bool)

(assert (=> d!1997502 m!7171856))

(assert (=> d!1997502 m!7171290))

(assert (=> bm!543695 m!7171584))

(declare-fun m!7171858 () Bool)

(assert (=> bm!543695 m!7171858))

(declare-fun m!7171860 () Bool)

(assert (=> b!6368534 m!7171860))

(assert (=> bm!543698 m!7171584))

(declare-fun m!7171862 () Bool)

(assert (=> bm!543698 m!7171862))

(assert (=> b!6368135 d!1997502))

(declare-fun d!1997504 () Bool)

(assert (=> d!1997504 (= (head!13047 s!2326) (h!71454 s!2326))))

(assert (=> b!6368135 d!1997504))

(declare-fun d!1997506 () Bool)

(assert (=> d!1997506 (= (tail!12132 s!2326) (t!378728 s!2326))))

(assert (=> b!6368135 d!1997506))

(declare-fun b!6368538 () Bool)

(declare-fun e!3866672 () Bool)

(declare-fun call!543704 () Bool)

(assert (=> b!6368538 (= e!3866672 call!543704)))

(declare-fun bm!543699 () Bool)

(declare-fun c!1159661 () Bool)

(declare-fun c!1159662 () Bool)

(assert (=> bm!543699 (= call!543704 (validRegex!8013 (ite c!1159662 (reg!16606 (ite c!1159477 (reg!16606 r!7292) (ite c!1159476 (regOne!33067 r!7292) (regOne!33066 r!7292)))) (ite c!1159661 (regOne!33067 (ite c!1159477 (reg!16606 r!7292) (ite c!1159476 (regOne!33067 r!7292) (regOne!33066 r!7292)))) (regOne!33066 (ite c!1159477 (reg!16606 r!7292) (ite c!1159476 (regOne!33067 r!7292) (regOne!33066 r!7292))))))))))

(declare-fun b!6368539 () Bool)

(declare-fun e!3866669 () Bool)

(assert (=> b!6368539 (= e!3866669 e!3866672)))

(declare-fun res!2620012 () Bool)

(assert (=> b!6368539 (= res!2620012 (not (nullable!6270 (reg!16606 (ite c!1159477 (reg!16606 r!7292) (ite c!1159476 (regOne!33067 r!7292) (regOne!33066 r!7292)))))))))

(assert (=> b!6368539 (=> (not res!2620012) (not e!3866672))))

(declare-fun b!6368540 () Bool)

(declare-fun res!2620010 () Bool)

(declare-fun e!3866671 () Bool)

(assert (=> b!6368540 (=> res!2620010 e!3866671)))

(assert (=> b!6368540 (= res!2620010 (not ((_ is Concat!25122) (ite c!1159477 (reg!16606 r!7292) (ite c!1159476 (regOne!33067 r!7292) (regOne!33066 r!7292))))))))

(declare-fun e!3866667 () Bool)

(assert (=> b!6368540 (= e!3866667 e!3866671)))

(declare-fun b!6368541 () Bool)

(declare-fun e!3866670 () Bool)

(assert (=> b!6368541 (= e!3866671 e!3866670)))

(declare-fun res!2620009 () Bool)

(assert (=> b!6368541 (=> (not res!2620009) (not e!3866670))))

(declare-fun call!543706 () Bool)

(assert (=> b!6368541 (= res!2620009 call!543706)))

(declare-fun b!6368542 () Bool)

(declare-fun e!3866668 () Bool)

(declare-fun call!543705 () Bool)

(assert (=> b!6368542 (= e!3866668 call!543705)))

(declare-fun b!6368543 () Bool)

(assert (=> b!6368543 (= e!3866670 call!543705)))

(declare-fun bm!543700 () Bool)

(assert (=> bm!543700 (= call!543705 (validRegex!8013 (ite c!1159661 (regTwo!33067 (ite c!1159477 (reg!16606 r!7292) (ite c!1159476 (regOne!33067 r!7292) (regOne!33066 r!7292)))) (regTwo!33066 (ite c!1159477 (reg!16606 r!7292) (ite c!1159476 (regOne!33067 r!7292) (regOne!33066 r!7292)))))))))

(declare-fun b!6368544 () Bool)

(declare-fun e!3866673 () Bool)

(assert (=> b!6368544 (= e!3866673 e!3866669)))

(assert (=> b!6368544 (= c!1159662 ((_ is Star!16277) (ite c!1159477 (reg!16606 r!7292) (ite c!1159476 (regOne!33067 r!7292) (regOne!33066 r!7292)))))))

(declare-fun d!1997508 () Bool)

(declare-fun res!2620008 () Bool)

(assert (=> d!1997508 (=> res!2620008 e!3866673)))

(assert (=> d!1997508 (= res!2620008 ((_ is ElementMatch!16277) (ite c!1159477 (reg!16606 r!7292) (ite c!1159476 (regOne!33067 r!7292) (regOne!33066 r!7292)))))))

(assert (=> d!1997508 (= (validRegex!8013 (ite c!1159477 (reg!16606 r!7292) (ite c!1159476 (regOne!33067 r!7292) (regOne!33066 r!7292)))) e!3866673)))

(declare-fun b!6368545 () Bool)

(declare-fun res!2620011 () Bool)

(assert (=> b!6368545 (=> (not res!2620011) (not e!3866668))))

(assert (=> b!6368545 (= res!2620011 call!543706)))

(assert (=> b!6368545 (= e!3866667 e!3866668)))

(declare-fun bm!543701 () Bool)

(assert (=> bm!543701 (= call!543706 call!543704)))

(declare-fun b!6368546 () Bool)

(assert (=> b!6368546 (= e!3866669 e!3866667)))

(assert (=> b!6368546 (= c!1159661 ((_ is Union!16277) (ite c!1159477 (reg!16606 r!7292) (ite c!1159476 (regOne!33067 r!7292) (regOne!33066 r!7292)))))))

(assert (= (and d!1997508 (not res!2620008)) b!6368544))

(assert (= (and b!6368544 c!1159662) b!6368539))

(assert (= (and b!6368544 (not c!1159662)) b!6368546))

(assert (= (and b!6368539 res!2620012) b!6368538))

(assert (= (and b!6368546 c!1159661) b!6368545))

(assert (= (and b!6368546 (not c!1159661)) b!6368540))

(assert (= (and b!6368545 res!2620011) b!6368542))

(assert (= (and b!6368540 (not res!2620010)) b!6368541))

(assert (= (and b!6368541 res!2620009) b!6368543))

(assert (= (or b!6368542 b!6368543) bm!543700))

(assert (= (or b!6368545 b!6368541) bm!543701))

(assert (= (or b!6368538 bm!543701) bm!543699))

(declare-fun m!7171864 () Bool)

(assert (=> bm!543699 m!7171864))

(declare-fun m!7171866 () Bool)

(assert (=> b!6368539 m!7171866))

(declare-fun m!7171868 () Bool)

(assert (=> bm!543700 m!7171868))

(assert (=> bm!543602 d!1997508))

(declare-fun b!6368547 () Bool)

(declare-fun e!3866674 () Bool)

(assert (=> b!6368547 (= e!3866674 (nullable!6270 (h!71455 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 (h!71456 zl!343))))))))))

(declare-fun b!6368548 () Bool)

(declare-fun e!3866676 () (InoxSet Context!11322))

(declare-fun call!543707 () (InoxSet Context!11322))

(assert (=> b!6368548 (= e!3866676 call!543707)))

(declare-fun b!6368549 () Bool)

(assert (=> b!6368549 (= e!3866676 ((as const (Array Context!11322 Bool)) false))))

(declare-fun bm!543702 () Bool)

(assert (=> bm!543702 (= call!543707 (derivationStepZipperDown!1525 (h!71455 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 (h!71456 zl!343)))))) (Context!11323 (t!378729 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 (h!71456 zl!343))))))) (h!71454 s!2326)))))

(declare-fun d!1997510 () Bool)

(declare-fun c!1159663 () Bool)

(assert (=> d!1997510 (= c!1159663 e!3866674)))

(declare-fun res!2620013 () Bool)

(assert (=> d!1997510 (=> (not res!2620013) (not e!3866674))))

(assert (=> d!1997510 (= res!2620013 ((_ is Cons!65007) (exprs!6161 (Context!11323 (t!378729 (exprs!6161 (h!71456 zl!343)))))))))

(declare-fun e!3866675 () (InoxSet Context!11322))

(assert (=> d!1997510 (= (derivationStepZipperUp!1451 (Context!11323 (t!378729 (exprs!6161 (h!71456 zl!343)))) (h!71454 s!2326)) e!3866675)))

(declare-fun b!6368550 () Bool)

(assert (=> b!6368550 (= e!3866675 ((_ map or) call!543707 (derivationStepZipperUp!1451 (Context!11323 (t!378729 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 (h!71456 zl!343))))))) (h!71454 s!2326))))))

(declare-fun b!6368551 () Bool)

(assert (=> b!6368551 (= e!3866675 e!3866676)))

(declare-fun c!1159664 () Bool)

(assert (=> b!6368551 (= c!1159664 ((_ is Cons!65007) (exprs!6161 (Context!11323 (t!378729 (exprs!6161 (h!71456 zl!343)))))))))

(assert (= (and d!1997510 res!2620013) b!6368547))

(assert (= (and d!1997510 c!1159663) b!6368550))

(assert (= (and d!1997510 (not c!1159663)) b!6368551))

(assert (= (and b!6368551 c!1159664) b!6368548))

(assert (= (and b!6368551 (not c!1159664)) b!6368549))

(assert (= (or b!6368550 b!6368548) bm!543702))

(declare-fun m!7171870 () Bool)

(assert (=> b!6368547 m!7171870))

(declare-fun m!7171872 () Bool)

(assert (=> bm!543702 m!7171872))

(declare-fun m!7171874 () Bool)

(assert (=> b!6368550 m!7171874))

(assert (=> b!6368179 d!1997510))

(declare-fun b!6368552 () Bool)

(declare-fun e!3866677 () Bool)

(assert (=> b!6368552 (= e!3866677 (nullable!6270 (h!71455 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 lt!2367724)))))))))

(declare-fun b!6368553 () Bool)

(declare-fun e!3866679 () (InoxSet Context!11322))

(declare-fun call!543708 () (InoxSet Context!11322))

(assert (=> b!6368553 (= e!3866679 call!543708)))

(declare-fun b!6368554 () Bool)

(assert (=> b!6368554 (= e!3866679 ((as const (Array Context!11322 Bool)) false))))

(declare-fun bm!543703 () Bool)

(assert (=> bm!543703 (= call!543708 (derivationStepZipperDown!1525 (h!71455 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 lt!2367724))))) (Context!11323 (t!378729 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 lt!2367724)))))) (h!71454 s!2326)))))

(declare-fun d!1997512 () Bool)

(declare-fun c!1159665 () Bool)

(assert (=> d!1997512 (= c!1159665 e!3866677)))

(declare-fun res!2620014 () Bool)

(assert (=> d!1997512 (=> (not res!2620014) (not e!3866677))))

(assert (=> d!1997512 (= res!2620014 ((_ is Cons!65007) (exprs!6161 (Context!11323 (t!378729 (exprs!6161 lt!2367724))))))))

(declare-fun e!3866678 () (InoxSet Context!11322))

(assert (=> d!1997512 (= (derivationStepZipperUp!1451 (Context!11323 (t!378729 (exprs!6161 lt!2367724))) (h!71454 s!2326)) e!3866678)))

(declare-fun b!6368555 () Bool)

(assert (=> b!6368555 (= e!3866678 ((_ map or) call!543708 (derivationStepZipperUp!1451 (Context!11323 (t!378729 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 lt!2367724)))))) (h!71454 s!2326))))))

(declare-fun b!6368556 () Bool)

(assert (=> b!6368556 (= e!3866678 e!3866679)))

(declare-fun c!1159666 () Bool)

(assert (=> b!6368556 (= c!1159666 ((_ is Cons!65007) (exprs!6161 (Context!11323 (t!378729 (exprs!6161 lt!2367724))))))))

(assert (= (and d!1997512 res!2620014) b!6368552))

(assert (= (and d!1997512 c!1159665) b!6368555))

(assert (= (and d!1997512 (not c!1159665)) b!6368556))

(assert (= (and b!6368556 c!1159666) b!6368553))

(assert (= (and b!6368556 (not c!1159666)) b!6368554))

(assert (= (or b!6368555 b!6368553) bm!543703))

(declare-fun m!7171876 () Bool)

(assert (=> b!6368552 m!7171876))

(declare-fun m!7171878 () Bool)

(assert (=> bm!543703 m!7171878))

(declare-fun m!7171880 () Bool)

(assert (=> b!6368555 m!7171880))

(assert (=> b!6368158 d!1997512))

(declare-fun bm!543708 () Bool)

(declare-fun call!543713 () Bool)

(declare-fun c!1159669 () Bool)

(assert (=> bm!543708 (= call!543713 (nullable!6270 (ite c!1159669 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))))))))

(declare-fun b!6368571 () Bool)

(declare-fun e!3866692 () Bool)

(declare-fun e!3866697 () Bool)

(assert (=> b!6368571 (= e!3866692 e!3866697)))

(declare-fun res!2620025 () Bool)

(assert (=> b!6368571 (= res!2620025 call!543713)))

(assert (=> b!6368571 (=> res!2620025 e!3866697)))

(declare-fun d!1997514 () Bool)

(declare-fun res!2620029 () Bool)

(declare-fun e!3866693 () Bool)

(assert (=> d!1997514 (=> res!2620029 e!3866693)))

(assert (=> d!1997514 (= res!2620029 ((_ is EmptyExpr!16277) (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(assert (=> d!1997514 (= (nullableFct!2217 (h!71455 (exprs!6161 (h!71456 zl!343)))) e!3866693)))

(declare-fun b!6368572 () Bool)

(declare-fun e!3866696 () Bool)

(declare-fun e!3866694 () Bool)

(assert (=> b!6368572 (= e!3866696 e!3866694)))

(declare-fun res!2620026 () Bool)

(assert (=> b!6368572 (=> res!2620026 e!3866694)))

(assert (=> b!6368572 (= res!2620026 ((_ is Star!16277) (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun bm!543709 () Bool)

(declare-fun call!543714 () Bool)

(assert (=> bm!543709 (= call!543714 (nullable!6270 (ite c!1159669 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))))))))

(declare-fun b!6368573 () Bool)

(declare-fun e!3866695 () Bool)

(assert (=> b!6368573 (= e!3866695 call!543714)))

(declare-fun b!6368574 () Bool)

(assert (=> b!6368574 (= e!3866694 e!3866692)))

(assert (=> b!6368574 (= c!1159669 ((_ is Union!16277) (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun b!6368575 () Bool)

(assert (=> b!6368575 (= e!3866692 e!3866695)))

(declare-fun res!2620027 () Bool)

(assert (=> b!6368575 (= res!2620027 call!543713)))

(assert (=> b!6368575 (=> (not res!2620027) (not e!3866695))))

(declare-fun b!6368576 () Bool)

(assert (=> b!6368576 (= e!3866693 e!3866696)))

(declare-fun res!2620028 () Bool)

(assert (=> b!6368576 (=> (not res!2620028) (not e!3866696))))

(assert (=> b!6368576 (= res!2620028 (and (not ((_ is EmptyLang!16277) (h!71455 (exprs!6161 (h!71456 zl!343))))) (not ((_ is ElementMatch!16277) (h!71455 (exprs!6161 (h!71456 zl!343)))))))))

(declare-fun b!6368577 () Bool)

(assert (=> b!6368577 (= e!3866697 call!543714)))

(assert (= (and d!1997514 (not res!2620029)) b!6368576))

(assert (= (and b!6368576 res!2620028) b!6368572))

(assert (= (and b!6368572 (not res!2620026)) b!6368574))

(assert (= (and b!6368574 c!1159669) b!6368571))

(assert (= (and b!6368574 (not c!1159669)) b!6368575))

(assert (= (and b!6368571 (not res!2620025)) b!6368577))

(assert (= (and b!6368575 res!2620027) b!6368573))

(assert (= (or b!6368577 b!6368573) bm!543709))

(assert (= (or b!6368571 b!6368575) bm!543708))

(declare-fun m!7171882 () Bool)

(assert (=> bm!543708 m!7171882))

(declare-fun m!7171884 () Bool)

(assert (=> bm!543709 m!7171884))

(assert (=> d!1997414 d!1997514))

(declare-fun d!1997516 () Bool)

(assert (=> d!1997516 (= (isEmpty!37120 (tail!12132 s!2326)) ((_ is Nil!65006) (tail!12132 s!2326)))))

(assert (=> b!6368139 d!1997516))

(assert (=> b!6368139 d!1997506))

(declare-fun b!6368578 () Bool)

(declare-fun e!3866703 () Bool)

(declare-fun call!543715 () Bool)

(assert (=> b!6368578 (= e!3866703 call!543715)))

(declare-fun bm!543710 () Bool)

(declare-fun c!1159670 () Bool)

(declare-fun c!1159671 () Bool)

(assert (=> bm!543710 (= call!543715 (validRegex!8013 (ite c!1159671 (reg!16606 lt!2367730) (ite c!1159670 (regOne!33067 lt!2367730) (regOne!33066 lt!2367730)))))))

(declare-fun b!6368579 () Bool)

(declare-fun e!3866700 () Bool)

(assert (=> b!6368579 (= e!3866700 e!3866703)))

(declare-fun res!2620034 () Bool)

(assert (=> b!6368579 (= res!2620034 (not (nullable!6270 (reg!16606 lt!2367730))))))

(assert (=> b!6368579 (=> (not res!2620034) (not e!3866703))))

(declare-fun b!6368580 () Bool)

(declare-fun res!2620032 () Bool)

(declare-fun e!3866702 () Bool)

(assert (=> b!6368580 (=> res!2620032 e!3866702)))

(assert (=> b!6368580 (= res!2620032 (not ((_ is Concat!25122) lt!2367730)))))

(declare-fun e!3866698 () Bool)

(assert (=> b!6368580 (= e!3866698 e!3866702)))

(declare-fun b!6368581 () Bool)

(declare-fun e!3866701 () Bool)

(assert (=> b!6368581 (= e!3866702 e!3866701)))

(declare-fun res!2620031 () Bool)

(assert (=> b!6368581 (=> (not res!2620031) (not e!3866701))))

(declare-fun call!543717 () Bool)

(assert (=> b!6368581 (= res!2620031 call!543717)))

(declare-fun b!6368582 () Bool)

(declare-fun e!3866699 () Bool)

(declare-fun call!543716 () Bool)

(assert (=> b!6368582 (= e!3866699 call!543716)))

(declare-fun b!6368583 () Bool)

(assert (=> b!6368583 (= e!3866701 call!543716)))

(declare-fun bm!543711 () Bool)

(assert (=> bm!543711 (= call!543716 (validRegex!8013 (ite c!1159670 (regTwo!33067 lt!2367730) (regTwo!33066 lt!2367730))))))

(declare-fun b!6368584 () Bool)

(declare-fun e!3866704 () Bool)

(assert (=> b!6368584 (= e!3866704 e!3866700)))

(assert (=> b!6368584 (= c!1159671 ((_ is Star!16277) lt!2367730))))

(declare-fun d!1997518 () Bool)

(declare-fun res!2620030 () Bool)

(assert (=> d!1997518 (=> res!2620030 e!3866704)))

(assert (=> d!1997518 (= res!2620030 ((_ is ElementMatch!16277) lt!2367730))))

(assert (=> d!1997518 (= (validRegex!8013 lt!2367730) e!3866704)))

(declare-fun b!6368585 () Bool)

(declare-fun res!2620033 () Bool)

(assert (=> b!6368585 (=> (not res!2620033) (not e!3866699))))

(assert (=> b!6368585 (= res!2620033 call!543717)))

(assert (=> b!6368585 (= e!3866698 e!3866699)))

(declare-fun bm!543712 () Bool)

(assert (=> bm!543712 (= call!543717 call!543715)))

(declare-fun b!6368586 () Bool)

(assert (=> b!6368586 (= e!3866700 e!3866698)))

(assert (=> b!6368586 (= c!1159670 ((_ is Union!16277) lt!2367730))))

(assert (= (and d!1997518 (not res!2620030)) b!6368584))

(assert (= (and b!6368584 c!1159671) b!6368579))

(assert (= (and b!6368584 (not c!1159671)) b!6368586))

(assert (= (and b!6368579 res!2620034) b!6368578))

(assert (= (and b!6368586 c!1159670) b!6368585))

(assert (= (and b!6368586 (not c!1159670)) b!6368580))

(assert (= (and b!6368585 res!2620033) b!6368582))

(assert (= (and b!6368580 (not res!2620032)) b!6368581))

(assert (= (and b!6368581 res!2620031) b!6368583))

(assert (= (or b!6368582 b!6368583) bm!543711))

(assert (= (or b!6368585 b!6368581) bm!543712))

(assert (= (or b!6368578 bm!543712) bm!543710))

(declare-fun m!7171886 () Bool)

(assert (=> bm!543710 m!7171886))

(declare-fun m!7171888 () Bool)

(assert (=> b!6368579 m!7171888))

(declare-fun m!7171890 () Bool)

(assert (=> bm!543711 m!7171890))

(assert (=> d!1997320 d!1997518))

(declare-fun d!1997520 () Bool)

(declare-fun res!2620039 () Bool)

(declare-fun e!3866709 () Bool)

(assert (=> d!1997520 (=> res!2620039 e!3866709)))

(assert (=> d!1997520 (= res!2620039 ((_ is Nil!65007) (unfocusZipperList!1698 zl!343)))))

(assert (=> d!1997520 (= (forall!15454 (unfocusZipperList!1698 zl!343) lambda!350867) e!3866709)))

(declare-fun b!6368591 () Bool)

(declare-fun e!3866710 () Bool)

(assert (=> b!6368591 (= e!3866709 e!3866710)))

(declare-fun res!2620040 () Bool)

(assert (=> b!6368591 (=> (not res!2620040) (not e!3866710))))

(declare-fun dynLambda!25790 (Int Regex!16277) Bool)

(assert (=> b!6368591 (= res!2620040 (dynLambda!25790 lambda!350867 (h!71455 (unfocusZipperList!1698 zl!343))))))

(declare-fun b!6368592 () Bool)

(assert (=> b!6368592 (= e!3866710 (forall!15454 (t!378729 (unfocusZipperList!1698 zl!343)) lambda!350867))))

(assert (= (and d!1997520 (not res!2620039)) b!6368591))

(assert (= (and b!6368591 res!2620040) b!6368592))

(declare-fun b_lambda!242047 () Bool)

(assert (=> (not b_lambda!242047) (not b!6368591)))

(declare-fun m!7171892 () Bool)

(assert (=> b!6368591 m!7171892))

(declare-fun m!7171894 () Bool)

(assert (=> b!6368592 m!7171894))

(assert (=> d!1997320 d!1997520))

(declare-fun b!6368603 () Bool)

(declare-fun res!2620045 () Bool)

(declare-fun e!3866715 () Bool)

(assert (=> b!6368603 (=> (not res!2620045) (not e!3866715))))

(declare-fun lt!2367819 () List!65130)

(declare-fun size!40353 (List!65130) Int)

(assert (=> b!6368603 (= res!2620045 (= (size!40353 lt!2367819) (+ (size!40353 (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006))) (size!40353 (t!378728 s!2326)))))))

(declare-fun b!6368604 () Bool)

(assert (=> b!6368604 (= e!3866715 (or (not (= (t!378728 s!2326) Nil!65006)) (= lt!2367819 (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006)))))))

(declare-fun b!6368601 () Bool)

(declare-fun e!3866716 () List!65130)

(assert (=> b!6368601 (= e!3866716 (t!378728 s!2326))))

(declare-fun d!1997522 () Bool)

(assert (=> d!1997522 e!3866715))

(declare-fun res!2620046 () Bool)

(assert (=> d!1997522 (=> (not res!2620046) (not e!3866715))))

(declare-fun content!12287 (List!65130) (InoxSet C!32824))

(assert (=> d!1997522 (= res!2620046 (= (content!12287 lt!2367819) ((_ map or) (content!12287 (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006))) (content!12287 (t!378728 s!2326)))))))

(assert (=> d!1997522 (= lt!2367819 e!3866716)))

(declare-fun c!1159674 () Bool)

(assert (=> d!1997522 (= c!1159674 ((_ is Nil!65006) (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006))))))

(assert (=> d!1997522 (= (++!14345 (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006)) (t!378728 s!2326)) lt!2367819)))

(declare-fun b!6368602 () Bool)

(assert (=> b!6368602 (= e!3866716 (Cons!65006 (h!71454 (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006))) (++!14345 (t!378728 (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006))) (t!378728 s!2326))))))

(assert (= (and d!1997522 c!1159674) b!6368601))

(assert (= (and d!1997522 (not c!1159674)) b!6368602))

(assert (= (and d!1997522 res!2620046) b!6368603))

(assert (= (and b!6368603 res!2620045) b!6368604))

(declare-fun m!7171896 () Bool)

(assert (=> b!6368603 m!7171896))

(assert (=> b!6368603 m!7171724))

(declare-fun m!7171898 () Bool)

(assert (=> b!6368603 m!7171898))

(declare-fun m!7171900 () Bool)

(assert (=> b!6368603 m!7171900))

(declare-fun m!7171902 () Bool)

(assert (=> d!1997522 m!7171902))

(assert (=> d!1997522 m!7171724))

(declare-fun m!7171904 () Bool)

(assert (=> d!1997522 m!7171904))

(declare-fun m!7171906 () Bool)

(assert (=> d!1997522 m!7171906))

(declare-fun m!7171908 () Bool)

(assert (=> b!6368602 m!7171908))

(assert (=> b!6368301 d!1997522))

(declare-fun b!6368607 () Bool)

(declare-fun res!2620047 () Bool)

(declare-fun e!3866717 () Bool)

(assert (=> b!6368607 (=> (not res!2620047) (not e!3866717))))

(declare-fun lt!2367820 () List!65130)

(assert (=> b!6368607 (= res!2620047 (= (size!40353 lt!2367820) (+ (size!40353 Nil!65006) (size!40353 (Cons!65006 (h!71454 s!2326) Nil!65006)))))))

(declare-fun b!6368608 () Bool)

(assert (=> b!6368608 (= e!3866717 (or (not (= (Cons!65006 (h!71454 s!2326) Nil!65006) Nil!65006)) (= lt!2367820 Nil!65006)))))

(declare-fun b!6368605 () Bool)

(declare-fun e!3866718 () List!65130)

(assert (=> b!6368605 (= e!3866718 (Cons!65006 (h!71454 s!2326) Nil!65006))))

(declare-fun d!1997524 () Bool)

(assert (=> d!1997524 e!3866717))

(declare-fun res!2620048 () Bool)

(assert (=> d!1997524 (=> (not res!2620048) (not e!3866717))))

(assert (=> d!1997524 (= res!2620048 (= (content!12287 lt!2367820) ((_ map or) (content!12287 Nil!65006) (content!12287 (Cons!65006 (h!71454 s!2326) Nil!65006)))))))

(assert (=> d!1997524 (= lt!2367820 e!3866718)))

(declare-fun c!1159675 () Bool)

(assert (=> d!1997524 (= c!1159675 ((_ is Nil!65006) Nil!65006))))

(assert (=> d!1997524 (= (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006)) lt!2367820)))

(declare-fun b!6368606 () Bool)

(assert (=> b!6368606 (= e!3866718 (Cons!65006 (h!71454 Nil!65006) (++!14345 (t!378728 Nil!65006) (Cons!65006 (h!71454 s!2326) Nil!65006))))))

(assert (= (and d!1997524 c!1159675) b!6368605))

(assert (= (and d!1997524 (not c!1159675)) b!6368606))

(assert (= (and d!1997524 res!2620048) b!6368607))

(assert (= (and b!6368607 res!2620047) b!6368608))

(declare-fun m!7171910 () Bool)

(assert (=> b!6368607 m!7171910))

(declare-fun m!7171912 () Bool)

(assert (=> b!6368607 m!7171912))

(declare-fun m!7171914 () Bool)

(assert (=> b!6368607 m!7171914))

(declare-fun m!7171916 () Bool)

(assert (=> d!1997524 m!7171916))

(declare-fun m!7171918 () Bool)

(assert (=> d!1997524 m!7171918))

(declare-fun m!7171920 () Bool)

(assert (=> d!1997524 m!7171920))

(declare-fun m!7171922 () Bool)

(assert (=> b!6368606 m!7171922))

(assert (=> b!6368301 d!1997524))

(declare-fun d!1997526 () Bool)

(assert (=> d!1997526 (= (++!14345 (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006)) (t!378728 s!2326)) s!2326)))

(declare-fun lt!2367823 () Unit!158439)

(declare-fun choose!47321 (List!65130 C!32824 List!65130 List!65130) Unit!158439)

(assert (=> d!1997526 (= lt!2367823 (choose!47321 Nil!65006 (h!71454 s!2326) (t!378728 s!2326) s!2326))))

(assert (=> d!1997526 (= (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) (t!378728 s!2326))) s!2326)))

(assert (=> d!1997526 (= (lemmaMoveElementToOtherListKeepsConcatEq!2440 Nil!65006 (h!71454 s!2326) (t!378728 s!2326) s!2326) lt!2367823)))

(declare-fun bs!1595177 () Bool)

(assert (= bs!1595177 d!1997526))

(assert (=> bs!1595177 m!7171724))

(assert (=> bs!1595177 m!7171724))

(assert (=> bs!1595177 m!7171726))

(declare-fun m!7171924 () Bool)

(assert (=> bs!1595177 m!7171924))

(declare-fun m!7171926 () Bool)

(assert (=> bs!1595177 m!7171926))

(assert (=> b!6368301 d!1997526))

(declare-fun b!6368609 () Bool)

(declare-fun e!3866722 () Option!16168)

(declare-fun e!3866721 () Option!16168)

(assert (=> b!6368609 (= e!3866722 e!3866721)))

(declare-fun c!1159676 () Bool)

(assert (=> b!6368609 (= c!1159676 ((_ is Nil!65006) (t!378728 s!2326)))))

(declare-fun b!6368610 () Bool)

(declare-fun res!2620051 () Bool)

(declare-fun e!3866723 () Bool)

(assert (=> b!6368610 (=> (not res!2620051) (not e!3866723))))

(declare-fun lt!2367824 () Option!16168)

(assert (=> b!6368610 (= res!2620051 (matchR!8460 (regTwo!33066 r!7292) (_2!36559 (get!22499 lt!2367824))))))

(declare-fun b!6368611 () Bool)

(assert (=> b!6368611 (= e!3866721 None!16167)))

(declare-fun b!6368612 () Bool)

(declare-fun res!2620050 () Bool)

(assert (=> b!6368612 (=> (not res!2620050) (not e!3866723))))

(assert (=> b!6368612 (= res!2620050 (matchR!8460 (regOne!33066 r!7292) (_1!36559 (get!22499 lt!2367824))))))

(declare-fun b!6368613 () Bool)

(assert (=> b!6368613 (= e!3866723 (= (++!14345 (_1!36559 (get!22499 lt!2367824)) (_2!36559 (get!22499 lt!2367824))) s!2326))))

(declare-fun b!6368614 () Bool)

(declare-fun e!3866719 () Bool)

(assert (=> b!6368614 (= e!3866719 (not (isDefined!12871 lt!2367824)))))

(declare-fun b!6368615 () Bool)

(declare-fun lt!2367826 () Unit!158439)

(declare-fun lt!2367825 () Unit!158439)

(assert (=> b!6368615 (= lt!2367826 lt!2367825)))

(assert (=> b!6368615 (= (++!14345 (++!14345 (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006)) (Cons!65006 (h!71454 (t!378728 s!2326)) Nil!65006)) (t!378728 (t!378728 s!2326))) s!2326)))

(assert (=> b!6368615 (= lt!2367825 (lemmaMoveElementToOtherListKeepsConcatEq!2440 (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006)) (h!71454 (t!378728 s!2326)) (t!378728 (t!378728 s!2326)) s!2326))))

(assert (=> b!6368615 (= e!3866721 (findConcatSeparation!2582 (regOne!33066 r!7292) (regTwo!33066 r!7292) (++!14345 (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006)) (Cons!65006 (h!71454 (t!378728 s!2326)) Nil!65006)) (t!378728 (t!378728 s!2326)) s!2326))))

(declare-fun d!1997528 () Bool)

(assert (=> d!1997528 e!3866719))

(declare-fun res!2620049 () Bool)

(assert (=> d!1997528 (=> res!2620049 e!3866719)))

(assert (=> d!1997528 (= res!2620049 e!3866723)))

(declare-fun res!2620052 () Bool)

(assert (=> d!1997528 (=> (not res!2620052) (not e!3866723))))

(assert (=> d!1997528 (= res!2620052 (isDefined!12871 lt!2367824))))

(assert (=> d!1997528 (= lt!2367824 e!3866722)))

(declare-fun c!1159677 () Bool)

(declare-fun e!3866720 () Bool)

(assert (=> d!1997528 (= c!1159677 e!3866720)))

(declare-fun res!2620053 () Bool)

(assert (=> d!1997528 (=> (not res!2620053) (not e!3866720))))

(assert (=> d!1997528 (= res!2620053 (matchR!8460 (regOne!33066 r!7292) (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006))))))

(assert (=> d!1997528 (validRegex!8013 (regOne!33066 r!7292))))

(assert (=> d!1997528 (= (findConcatSeparation!2582 (regOne!33066 r!7292) (regTwo!33066 r!7292) (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006)) (t!378728 s!2326) s!2326) lt!2367824)))

(declare-fun b!6368616 () Bool)

(assert (=> b!6368616 (= e!3866722 (Some!16167 (tuple2!66513 (++!14345 Nil!65006 (Cons!65006 (h!71454 s!2326) Nil!65006)) (t!378728 s!2326))))))

(declare-fun b!6368617 () Bool)

(assert (=> b!6368617 (= e!3866720 (matchR!8460 (regTwo!33066 r!7292) (t!378728 s!2326)))))

(assert (= (and d!1997528 res!2620053) b!6368617))

(assert (= (and d!1997528 c!1159677) b!6368616))

(assert (= (and d!1997528 (not c!1159677)) b!6368609))

(assert (= (and b!6368609 c!1159676) b!6368611))

(assert (= (and b!6368609 (not c!1159676)) b!6368615))

(assert (= (and d!1997528 res!2620052) b!6368612))

(assert (= (and b!6368612 res!2620050) b!6368610))

(assert (= (and b!6368610 res!2620051) b!6368613))

(assert (= (and d!1997528 (not res!2620049)) b!6368614))

(assert (=> b!6368615 m!7171724))

(declare-fun m!7171928 () Bool)

(assert (=> b!6368615 m!7171928))

(assert (=> b!6368615 m!7171928))

(declare-fun m!7171930 () Bool)

(assert (=> b!6368615 m!7171930))

(assert (=> b!6368615 m!7171724))

(declare-fun m!7171932 () Bool)

(assert (=> b!6368615 m!7171932))

(assert (=> b!6368615 m!7171928))

(declare-fun m!7171934 () Bool)

(assert (=> b!6368615 m!7171934))

(declare-fun m!7171936 () Bool)

(assert (=> b!6368617 m!7171936))

(declare-fun m!7171938 () Bool)

(assert (=> b!6368613 m!7171938))

(declare-fun m!7171940 () Bool)

(assert (=> b!6368613 m!7171940))

(declare-fun m!7171942 () Bool)

(assert (=> b!6368614 m!7171942))

(assert (=> b!6368612 m!7171938))

(declare-fun m!7171944 () Bool)

(assert (=> b!6368612 m!7171944))

(assert (=> d!1997528 m!7171942))

(assert (=> d!1997528 m!7171724))

(declare-fun m!7171946 () Bool)

(assert (=> d!1997528 m!7171946))

(assert (=> d!1997528 m!7171744))

(assert (=> b!6368610 m!7171938))

(declare-fun m!7171948 () Bool)

(assert (=> b!6368610 m!7171948))

(assert (=> b!6368301 d!1997528))

(declare-fun b!6368618 () Bool)

(declare-fun e!3866729 () Bool)

(declare-fun call!543718 () Bool)

(assert (=> b!6368618 (= e!3866729 call!543718)))

(declare-fun c!1159679 () Bool)

(declare-fun bm!543713 () Bool)

(declare-fun c!1159678 () Bool)

(assert (=> bm!543713 (= call!543718 (validRegex!8013 (ite c!1159679 (reg!16606 lt!2367743) (ite c!1159678 (regOne!33067 lt!2367743) (regOne!33066 lt!2367743)))))))

(declare-fun b!6368619 () Bool)

(declare-fun e!3866726 () Bool)

(assert (=> b!6368619 (= e!3866726 e!3866729)))

(declare-fun res!2620058 () Bool)

(assert (=> b!6368619 (= res!2620058 (not (nullable!6270 (reg!16606 lt!2367743))))))

(assert (=> b!6368619 (=> (not res!2620058) (not e!3866729))))

(declare-fun b!6368620 () Bool)

(declare-fun res!2620056 () Bool)

(declare-fun e!3866728 () Bool)

(assert (=> b!6368620 (=> res!2620056 e!3866728)))

(assert (=> b!6368620 (= res!2620056 (not ((_ is Concat!25122) lt!2367743)))))

(declare-fun e!3866724 () Bool)

(assert (=> b!6368620 (= e!3866724 e!3866728)))

(declare-fun b!6368621 () Bool)

(declare-fun e!3866727 () Bool)

(assert (=> b!6368621 (= e!3866728 e!3866727)))

(declare-fun res!2620055 () Bool)

(assert (=> b!6368621 (=> (not res!2620055) (not e!3866727))))

(declare-fun call!543720 () Bool)

(assert (=> b!6368621 (= res!2620055 call!543720)))

(declare-fun b!6368622 () Bool)

(declare-fun e!3866725 () Bool)

(declare-fun call!543719 () Bool)

(assert (=> b!6368622 (= e!3866725 call!543719)))

(declare-fun b!6368623 () Bool)

(assert (=> b!6368623 (= e!3866727 call!543719)))

(declare-fun bm!543714 () Bool)

(assert (=> bm!543714 (= call!543719 (validRegex!8013 (ite c!1159678 (regTwo!33067 lt!2367743) (regTwo!33066 lt!2367743))))))

(declare-fun b!6368624 () Bool)

(declare-fun e!3866730 () Bool)

(assert (=> b!6368624 (= e!3866730 e!3866726)))

(assert (=> b!6368624 (= c!1159679 ((_ is Star!16277) lt!2367743))))

(declare-fun d!1997530 () Bool)

(declare-fun res!2620054 () Bool)

(assert (=> d!1997530 (=> res!2620054 e!3866730)))

(assert (=> d!1997530 (= res!2620054 ((_ is ElementMatch!16277) lt!2367743))))

(assert (=> d!1997530 (= (validRegex!8013 lt!2367743) e!3866730)))

(declare-fun b!6368625 () Bool)

(declare-fun res!2620057 () Bool)

(assert (=> b!6368625 (=> (not res!2620057) (not e!3866725))))

(assert (=> b!6368625 (= res!2620057 call!543720)))

(assert (=> b!6368625 (= e!3866724 e!3866725)))

(declare-fun bm!543715 () Bool)

(assert (=> bm!543715 (= call!543720 call!543718)))

(declare-fun b!6368626 () Bool)

(assert (=> b!6368626 (= e!3866726 e!3866724)))

(assert (=> b!6368626 (= c!1159678 ((_ is Union!16277) lt!2367743))))

(assert (= (and d!1997530 (not res!2620054)) b!6368624))

(assert (= (and b!6368624 c!1159679) b!6368619))

(assert (= (and b!6368624 (not c!1159679)) b!6368626))

(assert (= (and b!6368619 res!2620058) b!6368618))

(assert (= (and b!6368626 c!1159678) b!6368625))

(assert (= (and b!6368626 (not c!1159678)) b!6368620))

(assert (= (and b!6368625 res!2620057) b!6368622))

(assert (= (and b!6368620 (not res!2620056)) b!6368621))

(assert (= (and b!6368621 res!2620055) b!6368623))

(assert (= (or b!6368622 b!6368623) bm!543714))

(assert (= (or b!6368625 b!6368621) bm!543715))

(assert (= (or b!6368618 bm!543715) bm!543713))

(declare-fun m!7171950 () Bool)

(assert (=> bm!543713 m!7171950))

(declare-fun m!7171952 () Bool)

(assert (=> b!6368619 m!7171952))

(declare-fun m!7171954 () Bool)

(assert (=> bm!543714 m!7171954))

(assert (=> d!1997356 d!1997530))

(assert (=> d!1997356 d!1997320))

(assert (=> d!1997356 d!1997332))

(declare-fun d!1997532 () Bool)

(declare-fun res!2620059 () Bool)

(declare-fun e!3866731 () Bool)

(assert (=> d!1997532 (=> res!2620059 e!3866731)))

(assert (=> d!1997532 (= res!2620059 ((_ is Nil!65007) (exprs!6161 setElem!43402)))))

(assert (=> d!1997532 (= (forall!15454 (exprs!6161 setElem!43402) lambda!350880) e!3866731)))

(declare-fun b!6368627 () Bool)

(declare-fun e!3866732 () Bool)

(assert (=> b!6368627 (= e!3866731 e!3866732)))

(declare-fun res!2620060 () Bool)

(assert (=> b!6368627 (=> (not res!2620060) (not e!3866732))))

(assert (=> b!6368627 (= res!2620060 (dynLambda!25790 lambda!350880 (h!71455 (exprs!6161 setElem!43402))))))

(declare-fun b!6368628 () Bool)

(assert (=> b!6368628 (= e!3866732 (forall!15454 (t!378729 (exprs!6161 setElem!43402)) lambda!350880))))

(assert (= (and d!1997532 (not res!2620059)) b!6368627))

(assert (= (and b!6368627 res!2620060) b!6368628))

(declare-fun b_lambda!242049 () Bool)

(assert (=> (not b_lambda!242049) (not b!6368627)))

(declare-fun m!7171956 () Bool)

(assert (=> b!6368627 m!7171956))

(declare-fun m!7171958 () Bool)

(assert (=> b!6368628 m!7171958))

(assert (=> d!1997354 d!1997532))

(declare-fun d!1997534 () Bool)

(assert (=> d!1997534 (= ($colon$colon!2138 (exprs!6161 (Context!11323 lt!2367708)) (ite (or c!1159524 c!1159525) (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (regOne!33066 r!7292)))) (Cons!65007 (ite (or c!1159524 c!1159525) (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (regOne!33066 r!7292))) (exprs!6161 (Context!11323 lt!2367708))))))

(assert (=> bm!543637 d!1997534))

(declare-fun d!1997536 () Bool)

(assert (=> d!1997536 (= (isEmptyLang!1685 lt!2367730) ((_ is EmptyLang!16277) lt!2367730))))

(assert (=> b!6367788 d!1997536))

(declare-fun d!1997538 () Bool)

(assert (=> d!1997538 (= (flatMap!1782 lt!2367707 lambda!350873) (choose!47306 lt!2367707 lambda!350873))))

(declare-fun bs!1595178 () Bool)

(assert (= bs!1595178 d!1997538))

(declare-fun m!7171960 () Bool)

(assert (=> bs!1595178 m!7171960))

(assert (=> d!1997340 d!1997538))

(declare-fun b!6368629 () Bool)

(declare-fun e!3866738 () (InoxSet Context!11322))

(declare-fun e!3866735 () (InoxSet Context!11322))

(assert (=> b!6368629 (= e!3866738 e!3866735)))

(declare-fun c!1159680 () Bool)

(assert (=> b!6368629 (= c!1159680 ((_ is Union!16277) (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))))))))

(declare-fun bm!543716 () Bool)

(declare-fun call!543725 () List!65131)

(declare-fun call!543724 () List!65131)

(assert (=> bm!543716 (= call!543725 call!543724)))

(declare-fun bm!543717 () Bool)

(declare-fun c!1159681 () Bool)

(declare-fun c!1159682 () Bool)

(declare-fun call!543722 () (InoxSet Context!11322))

(assert (=> bm!543717 (= call!543722 (derivationStepZipperDown!1525 (ite c!1159680 (regTwo!33067 (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))))) (ite c!1159681 (regTwo!33066 (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))))) (ite c!1159682 (regOne!33066 (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))))) (reg!16606 (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343))))))))) (ite (or c!1159680 c!1159681) (ite c!1159586 lt!2367724 (Context!11323 call!543678)) (Context!11323 call!543725)) (h!71454 s!2326)))))

(declare-fun b!6368630 () Bool)

(declare-fun c!1159684 () Bool)

(assert (=> b!6368630 (= c!1159684 ((_ is Star!16277) (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))))))))

(declare-fun e!3866737 () (InoxSet Context!11322))

(declare-fun e!3866736 () (InoxSet Context!11322))

(assert (=> b!6368630 (= e!3866737 e!3866736)))

(declare-fun b!6368632 () Bool)

(declare-fun e!3866733 () Bool)

(assert (=> b!6368632 (= e!3866733 (nullable!6270 (regOne!33066 (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343))))))))))

(declare-fun b!6368633 () Bool)

(assert (=> b!6368633 (= e!3866736 ((as const (Array Context!11322 Bool)) false))))

(declare-fun b!6368634 () Bool)

(declare-fun e!3866734 () (InoxSet Context!11322))

(assert (=> b!6368634 (= e!3866734 e!3866737)))

(assert (=> b!6368634 (= c!1159682 ((_ is Concat!25122) (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))))))))

(declare-fun bm!543718 () Bool)

(assert (=> bm!543718 (= call!543724 ($colon$colon!2138 (exprs!6161 (ite c!1159586 lt!2367724 (Context!11323 call!543678))) (ite (or c!1159681 c!1159682) (regTwo!33066 (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))))) (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343))))))))))

(declare-fun b!6368635 () Bool)

(assert (=> b!6368635 (= c!1159681 e!3866733)))

(declare-fun res!2620061 () Bool)

(assert (=> b!6368635 (=> (not res!2620061) (not e!3866733))))

(assert (=> b!6368635 (= res!2620061 ((_ is Concat!25122) (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))))))))

(assert (=> b!6368635 (= e!3866735 e!3866734)))

(declare-fun b!6368636 () Bool)

(declare-fun call!543723 () (InoxSet Context!11322))

(assert (=> b!6368636 (= e!3866737 call!543723)))

(declare-fun bm!543719 () Bool)

(declare-fun call!543726 () (InoxSet Context!11322))

(assert (=> bm!543719 (= call!543723 call!543726)))

(declare-fun b!6368637 () Bool)

(assert (=> b!6368637 (= e!3866736 call!543723)))

(declare-fun b!6368638 () Bool)

(declare-fun call!543721 () (InoxSet Context!11322))

(assert (=> b!6368638 (= e!3866734 ((_ map or) call!543721 call!543726))))

(declare-fun bm!543720 () Bool)

(assert (=> bm!543720 (= call!543726 call!543722)))

(declare-fun bm!543721 () Bool)

(assert (=> bm!543721 (= call!543721 (derivationStepZipperDown!1525 (ite c!1159680 (regOne!33067 (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))))) (regOne!33066 (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343))))))) (ite c!1159680 (ite c!1159586 lt!2367724 (Context!11323 call!543678)) (Context!11323 call!543724)) (h!71454 s!2326)))))

(declare-fun b!6368639 () Bool)

(assert (=> b!6368639 (= e!3866735 ((_ map or) call!543721 call!543722))))

(declare-fun d!1997540 () Bool)

(declare-fun c!1159683 () Bool)

(assert (=> d!1997540 (= c!1159683 (and ((_ is ElementMatch!16277) (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))))) (= (c!1159440 (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))))) (h!71454 s!2326))))))

(assert (=> d!1997540 (= (derivationStepZipperDown!1525 (ite c!1159586 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343))))) (ite c!1159586 lt!2367724 (Context!11323 call!543678)) (h!71454 s!2326)) e!3866738)))

(declare-fun b!6368631 () Bool)

(assert (=> b!6368631 (= e!3866738 (store ((as const (Array Context!11322 Bool)) false) (ite c!1159586 lt!2367724 (Context!11323 call!543678)) true))))

(assert (= (and d!1997540 c!1159683) b!6368631))

(assert (= (and d!1997540 (not c!1159683)) b!6368629))

(assert (= (and b!6368629 c!1159680) b!6368639))

(assert (= (and b!6368629 (not c!1159680)) b!6368635))

(assert (= (and b!6368635 res!2620061) b!6368632))

(assert (= (and b!6368635 c!1159681) b!6368638))

(assert (= (and b!6368635 (not c!1159681)) b!6368634))

(assert (= (and b!6368634 c!1159682) b!6368636))

(assert (= (and b!6368634 (not c!1159682)) b!6368630))

(assert (= (and b!6368630 c!1159684) b!6368637))

(assert (= (and b!6368630 (not c!1159684)) b!6368633))

(assert (= (or b!6368636 b!6368637) bm!543716))

(assert (= (or b!6368636 b!6368637) bm!543719))

(assert (= (or b!6368638 bm!543716) bm!543718))

(assert (= (or b!6368638 bm!543719) bm!543720))

(assert (= (or b!6368639 bm!543720) bm!543717))

(assert (= (or b!6368639 b!6368638) bm!543721))

(declare-fun m!7171962 () Bool)

(assert (=> bm!543717 m!7171962))

(declare-fun m!7171964 () Bool)

(assert (=> bm!543718 m!7171964))

(declare-fun m!7171966 () Bool)

(assert (=> bm!543721 m!7171966))

(declare-fun m!7171968 () Bool)

(assert (=> b!6368631 m!7171968))

(declare-fun m!7171970 () Bool)

(assert (=> b!6368632 m!7171970))

(assert (=> bm!543675 d!1997540))

(declare-fun d!1997542 () Bool)

(assert (=> d!1997542 (= (isEmpty!37120 s!2326) ((_ is Nil!65006) s!2326))))

(assert (=> bm!543656 d!1997542))

(declare-fun bs!1595179 () Bool)

(declare-fun d!1997544 () Bool)

(assert (= bs!1595179 (and d!1997544 d!1997320)))

(declare-fun lambda!350926 () Int)

(assert (=> bs!1595179 (= lambda!350926 lambda!350867)))

(declare-fun bs!1595180 () Bool)

(assert (= bs!1595180 (and d!1997544 d!1997332)))

(assert (=> bs!1595180 (= lambda!350926 lambda!350870)))

(declare-fun bs!1595181 () Bool)

(assert (= bs!1595181 (and d!1997544 d!1997346)))

(assert (=> bs!1595181 (= lambda!350926 lambda!350879)))

(declare-fun bs!1595182 () Bool)

(assert (= bs!1595182 (and d!1997544 d!1997368)))

(assert (=> bs!1595182 (= lambda!350926 lambda!350882)))

(declare-fun bs!1595183 () Bool)

(assert (= bs!1595183 (and d!1997544 d!1997354)))

(assert (=> bs!1595183 (= lambda!350926 lambda!350880)))

(declare-fun bs!1595184 () Bool)

(assert (= bs!1595184 (and d!1997544 d!1997426)))

(assert (=> bs!1595184 (= lambda!350926 lambda!350901)))

(declare-fun e!3866740 () Bool)

(assert (=> d!1997544 e!3866740))

(declare-fun res!2620063 () Bool)

(assert (=> d!1997544 (=> (not res!2620063) (not e!3866740))))

(declare-fun lt!2367827 () Regex!16277)

(assert (=> d!1997544 (= res!2620063 (validRegex!8013 lt!2367827))))

(declare-fun e!3866743 () Regex!16277)

(assert (=> d!1997544 (= lt!2367827 e!3866743)))

(declare-fun c!1159687 () Bool)

(declare-fun e!3866739 () Bool)

(assert (=> d!1997544 (= c!1159687 e!3866739)))

(declare-fun res!2620062 () Bool)

(assert (=> d!1997544 (=> (not res!2620062) (not e!3866739))))

(assert (=> d!1997544 (= res!2620062 ((_ is Cons!65007) (t!378729 (exprs!6161 (h!71456 zl!343)))))))

(assert (=> d!1997544 (forall!15454 (t!378729 (exprs!6161 (h!71456 zl!343))) lambda!350926)))

(assert (=> d!1997544 (= (generalisedConcat!1874 (t!378729 (exprs!6161 (h!71456 zl!343)))) lt!2367827)))

(declare-fun b!6368640 () Bool)

(declare-fun e!3866742 () Regex!16277)

(assert (=> b!6368640 (= e!3866742 (Concat!25122 (h!71455 (t!378729 (exprs!6161 (h!71456 zl!343)))) (generalisedConcat!1874 (t!378729 (t!378729 (exprs!6161 (h!71456 zl!343)))))))))

(declare-fun b!6368641 () Bool)

(declare-fun e!3866741 () Bool)

(assert (=> b!6368641 (= e!3866741 (isConcat!1202 lt!2367827))))

(declare-fun b!6368642 () Bool)

(assert (=> b!6368642 (= e!3866741 (= lt!2367827 (head!13044 (t!378729 (exprs!6161 (h!71456 zl!343))))))))

(declare-fun b!6368643 () Bool)

(assert (=> b!6368643 (= e!3866742 EmptyExpr!16277)))

(declare-fun b!6368644 () Bool)

(assert (=> b!6368644 (= e!3866743 e!3866742)))

(declare-fun c!1159685 () Bool)

(assert (=> b!6368644 (= c!1159685 ((_ is Cons!65007) (t!378729 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun b!6368645 () Bool)

(declare-fun e!3866744 () Bool)

(assert (=> b!6368645 (= e!3866740 e!3866744)))

(declare-fun c!1159686 () Bool)

(assert (=> b!6368645 (= c!1159686 (isEmpty!37117 (t!378729 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun b!6368646 () Bool)

(assert (=> b!6368646 (= e!3866744 (isEmptyExpr!1679 lt!2367827))))

(declare-fun b!6368647 () Bool)

(assert (=> b!6368647 (= e!3866744 e!3866741)))

(declare-fun c!1159688 () Bool)

(assert (=> b!6368647 (= c!1159688 (isEmpty!37117 (tail!12129 (t!378729 (exprs!6161 (h!71456 zl!343))))))))

(declare-fun b!6368648 () Bool)

(assert (=> b!6368648 (= e!3866739 (isEmpty!37117 (t!378729 (t!378729 (exprs!6161 (h!71456 zl!343))))))))

(declare-fun b!6368649 () Bool)

(assert (=> b!6368649 (= e!3866743 (h!71455 (t!378729 (exprs!6161 (h!71456 zl!343)))))))

(assert (= (and d!1997544 res!2620062) b!6368648))

(assert (= (and d!1997544 c!1159687) b!6368649))

(assert (= (and d!1997544 (not c!1159687)) b!6368644))

(assert (= (and b!6368644 c!1159685) b!6368640))

(assert (= (and b!6368644 (not c!1159685)) b!6368643))

(assert (= (and d!1997544 res!2620063) b!6368645))

(assert (= (and b!6368645 c!1159686) b!6368646))

(assert (= (and b!6368645 (not c!1159686)) b!6368647))

(assert (= (and b!6368647 c!1159688) b!6368642))

(assert (= (and b!6368647 (not c!1159688)) b!6368641))

(declare-fun m!7171972 () Bool)

(assert (=> d!1997544 m!7171972))

(declare-fun m!7171974 () Bool)

(assert (=> d!1997544 m!7171974))

(declare-fun m!7171976 () Bool)

(assert (=> b!6368642 m!7171976))

(assert (=> b!6368645 m!7171294))

(declare-fun m!7171978 () Bool)

(assert (=> b!6368640 m!7171978))

(declare-fun m!7171980 () Bool)

(assert (=> b!6368646 m!7171980))

(declare-fun m!7171982 () Bool)

(assert (=> b!6368648 m!7171982))

(declare-fun m!7171984 () Bool)

(assert (=> b!6368641 m!7171984))

(declare-fun m!7171986 () Bool)

(assert (=> b!6368647 m!7171986))

(assert (=> b!6368647 m!7171986))

(declare-fun m!7171988 () Bool)

(assert (=> b!6368647 m!7171988))

(assert (=> b!6368211 d!1997544))

(declare-fun d!1997546 () Bool)

(assert (=> d!1997546 (= (Exists!3347 (ite c!1159558 lambda!350895 lambda!350896)) (choose!47315 (ite c!1159558 lambda!350895 lambda!350896)))))

(declare-fun bs!1595185 () Bool)

(assert (= bs!1595185 d!1997546))

(declare-fun m!7171990 () Bool)

(assert (=> bs!1595185 m!7171990))

(assert (=> bm!543657 d!1997546))

(declare-fun d!1997548 () Bool)

(assert (=> d!1997548 (= (nullable!6270 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))) (nullableFct!2217 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))))))

(declare-fun bs!1595186 () Bool)

(assert (= bs!1595186 d!1997548))

(declare-fun m!7171992 () Bool)

(assert (=> bs!1595186 m!7171992))

(assert (=> b!6368160 d!1997548))

(assert (=> d!1997338 d!1997334))

(declare-fun d!1997550 () Bool)

(assert (=> d!1997550 (= (flatMap!1782 lt!2367707 lambda!350861) (dynLambda!25788 lambda!350861 lt!2367709))))

(assert (=> d!1997550 true))

(declare-fun _$13!3540 () Unit!158439)

(assert (=> d!1997550 (= (choose!47307 lt!2367707 lt!2367709 lambda!350861) _$13!3540)))

(declare-fun b_lambda!242051 () Bool)

(assert (=> (not b_lambda!242051) (not d!1997550)))

(declare-fun bs!1595187 () Bool)

(assert (= bs!1595187 d!1997550))

(assert (=> bs!1595187 m!7171312))

(assert (=> bs!1595187 m!7171406))

(assert (=> d!1997338 d!1997550))

(declare-fun b!6368650 () Bool)

(declare-fun e!3866750 () (InoxSet Context!11322))

(declare-fun e!3866747 () (InoxSet Context!11322))

(assert (=> b!6368650 (= e!3866750 e!3866747)))

(declare-fun c!1159689 () Bool)

(assert (=> b!6368650 (= c!1159689 ((_ is Union!16277) (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun bm!543722 () Bool)

(declare-fun call!543731 () List!65131)

(declare-fun call!543730 () List!65131)

(assert (=> bm!543722 (= call!543731 call!543730)))

(declare-fun bm!543723 () Bool)

(declare-fun c!1159691 () Bool)

(declare-fun call!543728 () (InoxSet Context!11322))

(declare-fun c!1159690 () Bool)

(assert (=> bm!543723 (= call!543728 (derivationStepZipperDown!1525 (ite c!1159689 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159690 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159691 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343))))))) (ite (or c!1159689 c!1159690) (Context!11323 (t!378729 (exprs!6161 (h!71456 zl!343)))) (Context!11323 call!543731)) (h!71454 s!2326)))))

(declare-fun b!6368651 () Bool)

(declare-fun c!1159693 () Bool)

(assert (=> b!6368651 (= c!1159693 ((_ is Star!16277) (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun e!3866749 () (InoxSet Context!11322))

(declare-fun e!3866748 () (InoxSet Context!11322))

(assert (=> b!6368651 (= e!3866749 e!3866748)))

(declare-fun b!6368653 () Bool)

(declare-fun e!3866745 () Bool)

(assert (=> b!6368653 (= e!3866745 (nullable!6270 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343))))))))

(declare-fun b!6368654 () Bool)

(assert (=> b!6368654 (= e!3866748 ((as const (Array Context!11322 Bool)) false))))

(declare-fun b!6368655 () Bool)

(declare-fun e!3866746 () (InoxSet Context!11322))

(assert (=> b!6368655 (= e!3866746 e!3866749)))

(assert (=> b!6368655 (= c!1159691 ((_ is Concat!25122) (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun bm!543724 () Bool)

(assert (=> bm!543724 (= call!543730 ($colon$colon!2138 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 (h!71456 zl!343))))) (ite (or c!1159690 c!1159691) (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (h!71455 (exprs!6161 (h!71456 zl!343))))))))

(declare-fun b!6368656 () Bool)

(assert (=> b!6368656 (= c!1159690 e!3866745)))

(declare-fun res!2620064 () Bool)

(assert (=> b!6368656 (=> (not res!2620064) (not e!3866745))))

(assert (=> b!6368656 (= res!2620064 ((_ is Concat!25122) (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(assert (=> b!6368656 (= e!3866747 e!3866746)))

(declare-fun b!6368657 () Bool)

(declare-fun call!543729 () (InoxSet Context!11322))

(assert (=> b!6368657 (= e!3866749 call!543729)))

(declare-fun bm!543725 () Bool)

(declare-fun call!543732 () (InoxSet Context!11322))

(assert (=> bm!543725 (= call!543729 call!543732)))

(declare-fun b!6368658 () Bool)

(assert (=> b!6368658 (= e!3866748 call!543729)))

(declare-fun b!6368659 () Bool)

(declare-fun call!543727 () (InoxSet Context!11322))

(assert (=> b!6368659 (= e!3866746 ((_ map or) call!543727 call!543732))))

(declare-fun bm!543726 () Bool)

(assert (=> bm!543726 (= call!543732 call!543728)))

(declare-fun bm!543727 () Bool)

(assert (=> bm!543727 (= call!543727 (derivationStepZipperDown!1525 (ite c!1159689 (regOne!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343))))) (ite c!1159689 (Context!11323 (t!378729 (exprs!6161 (h!71456 zl!343)))) (Context!11323 call!543730)) (h!71454 s!2326)))))

(declare-fun b!6368660 () Bool)

(assert (=> b!6368660 (= e!3866747 ((_ map or) call!543727 call!543728))))

(declare-fun d!1997552 () Bool)

(declare-fun c!1159692 () Bool)

(assert (=> d!1997552 (= c!1159692 (and ((_ is ElementMatch!16277) (h!71455 (exprs!6161 (h!71456 zl!343)))) (= (c!1159440 (h!71455 (exprs!6161 (h!71456 zl!343)))) (h!71454 s!2326))))))

(assert (=> d!1997552 (= (derivationStepZipperDown!1525 (h!71455 (exprs!6161 (h!71456 zl!343))) (Context!11323 (t!378729 (exprs!6161 (h!71456 zl!343)))) (h!71454 s!2326)) e!3866750)))

(declare-fun b!6368652 () Bool)

(assert (=> b!6368652 (= e!3866750 (store ((as const (Array Context!11322 Bool)) false) (Context!11323 (t!378729 (exprs!6161 (h!71456 zl!343)))) true))))

(assert (= (and d!1997552 c!1159692) b!6368652))

(assert (= (and d!1997552 (not c!1159692)) b!6368650))

(assert (= (and b!6368650 c!1159689) b!6368660))

(assert (= (and b!6368650 (not c!1159689)) b!6368656))

(assert (= (and b!6368656 res!2620064) b!6368653))

(assert (= (and b!6368656 c!1159690) b!6368659))

(assert (= (and b!6368656 (not c!1159690)) b!6368655))

(assert (= (and b!6368655 c!1159691) b!6368657))

(assert (= (and b!6368655 (not c!1159691)) b!6368651))

(assert (= (and b!6368651 c!1159693) b!6368658))

(assert (= (and b!6368651 (not c!1159693)) b!6368654))

(assert (= (or b!6368657 b!6368658) bm!543722))

(assert (= (or b!6368657 b!6368658) bm!543725))

(assert (= (or b!6368659 bm!543722) bm!543724))

(assert (= (or b!6368659 bm!543725) bm!543726))

(assert (= (or b!6368660 bm!543726) bm!543723))

(assert (= (or b!6368660 b!6368659) bm!543727))

(declare-fun m!7171994 () Bool)

(assert (=> bm!543723 m!7171994))

(declare-fun m!7171996 () Bool)

(assert (=> bm!543724 m!7171996))

(declare-fun m!7171998 () Bool)

(assert (=> bm!543727 m!7171998))

(declare-fun m!7172000 () Bool)

(assert (=> b!6368652 m!7172000))

(assert (=> b!6368653 m!7171638))

(assert (=> bm!543676 d!1997552))

(assert (=> b!6368219 d!1997350))

(declare-fun b!6368661 () Bool)

(declare-fun e!3866751 () Bool)

(assert (=> b!6368661 (= e!3866751 (nullable!6270 (h!71455 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343))))))))))))))

(declare-fun b!6368662 () Bool)

(declare-fun e!3866753 () (InoxSet Context!11322))

(declare-fun call!543733 () (InoxSet Context!11322))

(assert (=> b!6368662 (= e!3866753 call!543733)))

(declare-fun b!6368663 () Bool)

(assert (=> b!6368663 (= e!3866753 ((as const (Array Context!11322 Bool)) false))))

(declare-fun bm!543728 () Bool)

(assert (=> bm!543728 (= call!543733 (derivationStepZipperDown!1525 (h!71455 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))))) (Context!11323 (t!378729 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343))))))))))) (h!71454 s!2326)))))

(declare-fun d!1997554 () Bool)

(declare-fun c!1159694 () Bool)

(assert (=> d!1997554 (= c!1159694 e!3866751)))

(declare-fun res!2620065 () Bool)

(assert (=> d!1997554 (=> (not res!2620065) (not e!3866751))))

(assert (=> d!1997554 (= res!2620065 ((_ is Cons!65007) (exprs!6161 (Context!11323 (t!378729 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))))))))

(declare-fun e!3866752 () (InoxSet Context!11322))

(assert (=> d!1997554 (= (derivationStepZipperUp!1451 (Context!11323 (t!378729 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))) (h!71454 s!2326)) e!3866752)))

(declare-fun b!6368664 () Bool)

(assert (=> b!6368664 (= e!3866752 ((_ map or) call!543733 (derivationStepZipperUp!1451 (Context!11323 (t!378729 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343))))))))))) (h!71454 s!2326))))))

(declare-fun b!6368665 () Bool)

(assert (=> b!6368665 (= e!3866752 e!3866753)))

(declare-fun c!1159695 () Bool)

(assert (=> b!6368665 (= c!1159695 ((_ is Cons!65007) (exprs!6161 (Context!11323 (t!378729 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))))))))

(assert (= (and d!1997554 res!2620065) b!6368661))

(assert (= (and d!1997554 c!1159694) b!6368664))

(assert (= (and d!1997554 (not c!1159694)) b!6368665))

(assert (= (and b!6368665 c!1159695) b!6368662))

(assert (= (and b!6368665 (not c!1159695)) b!6368663))

(assert (= (or b!6368664 b!6368662) bm!543728))

(declare-fun m!7172002 () Bool)

(assert (=> b!6368661 m!7172002))

(declare-fun m!7172004 () Bool)

(assert (=> bm!543728 m!7172004))

(declare-fun m!7172006 () Bool)

(assert (=> b!6368664 m!7172006))

(assert (=> b!6368163 d!1997554))

(declare-fun d!1997556 () Bool)

(assert (=> d!1997556 (= (isEmpty!37120 (t!378728 s!2326)) ((_ is Nil!65006) (t!378728 s!2326)))))

(assert (=> d!1997438 d!1997556))

(declare-fun b!6368666 () Bool)

(declare-fun e!3866759 () (InoxSet Context!11322))

(declare-fun e!3866756 () (InoxSet Context!11322))

(assert (=> b!6368666 (= e!3866759 e!3866756)))

(declare-fun c!1159696 () Bool)

(assert (=> b!6368666 (= c!1159696 ((_ is Union!16277) (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343)))))))))))

(declare-fun bm!543729 () Bool)

(declare-fun call!543738 () List!65131)

(declare-fun call!543737 () List!65131)

(assert (=> bm!543729 (= call!543738 call!543737)))

(declare-fun c!1159697 () Bool)

(declare-fun c!1159698 () Bool)

(declare-fun call!543735 () (InoxSet Context!11322))

(declare-fun bm!543730 () Bool)

(assert (=> bm!543730 (= call!543735 (derivationStepZipperDown!1525 (ite c!1159696 (regTwo!33067 (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343)))))))) (ite c!1159697 (regTwo!33066 (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343)))))))) (ite c!1159698 (regOne!33066 (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343)))))))) (reg!16606 (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343))))))))))) (ite (or c!1159696 c!1159697) (ite (or c!1159586 c!1159587) lt!2367724 (Context!11323 call!543679)) (Context!11323 call!543738)) (h!71454 s!2326)))))

(declare-fun c!1159700 () Bool)

(declare-fun b!6368667 () Bool)

(assert (=> b!6368667 (= c!1159700 ((_ is Star!16277) (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343)))))))))))

(declare-fun e!3866758 () (InoxSet Context!11322))

(declare-fun e!3866757 () (InoxSet Context!11322))

(assert (=> b!6368667 (= e!3866758 e!3866757)))

(declare-fun b!6368669 () Bool)

(declare-fun e!3866754 () Bool)

(assert (=> b!6368669 (= e!3866754 (nullable!6270 (regOne!33066 (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343))))))))))))

(declare-fun b!6368670 () Bool)

(assert (=> b!6368670 (= e!3866757 ((as const (Array Context!11322 Bool)) false))))

(declare-fun b!6368671 () Bool)

(declare-fun e!3866755 () (InoxSet Context!11322))

(assert (=> b!6368671 (= e!3866755 e!3866758)))

(assert (=> b!6368671 (= c!1159698 ((_ is Concat!25122) (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343)))))))))))

(declare-fun bm!543731 () Bool)

(assert (=> bm!543731 (= call!543737 ($colon$colon!2138 (exprs!6161 (ite (or c!1159586 c!1159587) lt!2367724 (Context!11323 call!543679))) (ite (or c!1159697 c!1159698) (regTwo!33066 (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343)))))))) (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343))))))))))))

(declare-fun b!6368672 () Bool)

(assert (=> b!6368672 (= c!1159697 e!3866754)))

(declare-fun res!2620066 () Bool)

(assert (=> b!6368672 (=> (not res!2620066) (not e!3866754))))

(assert (=> b!6368672 (= res!2620066 ((_ is Concat!25122) (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343)))))))))))

(assert (=> b!6368672 (= e!3866756 e!3866755)))

(declare-fun b!6368673 () Bool)

(declare-fun call!543736 () (InoxSet Context!11322))

(assert (=> b!6368673 (= e!3866758 call!543736)))

(declare-fun bm!543732 () Bool)

(declare-fun call!543739 () (InoxSet Context!11322))

(assert (=> bm!543732 (= call!543736 call!543739)))

(declare-fun b!6368674 () Bool)

(assert (=> b!6368674 (= e!3866757 call!543736)))

(declare-fun b!6368675 () Bool)

(declare-fun call!543734 () (InoxSet Context!11322))

(assert (=> b!6368675 (= e!3866755 ((_ map or) call!543734 call!543739))))

(declare-fun bm!543733 () Bool)

(assert (=> bm!543733 (= call!543739 call!543735)))

(declare-fun bm!543734 () Bool)

(assert (=> bm!543734 (= call!543734 (derivationStepZipperDown!1525 (ite c!1159696 (regOne!33067 (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343)))))))) (regOne!33066 (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343))))))))) (ite c!1159696 (ite (or c!1159586 c!1159587) lt!2367724 (Context!11323 call!543679)) (Context!11323 call!543737)) (h!71454 s!2326)))))

(declare-fun b!6368676 () Bool)

(assert (=> b!6368676 (= e!3866756 ((_ map or) call!543734 call!543735))))

(declare-fun d!1997558 () Bool)

(declare-fun c!1159699 () Bool)

(assert (=> d!1997558 (= c!1159699 (and ((_ is ElementMatch!16277) (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343)))))))) (= (c!1159440 (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343)))))))) (h!71454 s!2326))))))

(assert (=> d!1997558 (= (derivationStepZipperDown!1525 (ite c!1159586 (regTwo!33067 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159587 (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (ite c!1159588 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (reg!16606 (h!71455 (exprs!6161 (h!71456 zl!343))))))) (ite (or c!1159586 c!1159587) lt!2367724 (Context!11323 call!543679)) (h!71454 s!2326)) e!3866759)))

(declare-fun b!6368668 () Bool)

(assert (=> b!6368668 (= e!3866759 (store ((as const (Array Context!11322 Bool)) false) (ite (or c!1159586 c!1159587) lt!2367724 (Context!11323 call!543679)) true))))

(assert (= (and d!1997558 c!1159699) b!6368668))

(assert (= (and d!1997558 (not c!1159699)) b!6368666))

(assert (= (and b!6368666 c!1159696) b!6368676))

(assert (= (and b!6368666 (not c!1159696)) b!6368672))

(assert (= (and b!6368672 res!2620066) b!6368669))

(assert (= (and b!6368672 c!1159697) b!6368675))

(assert (= (and b!6368672 (not c!1159697)) b!6368671))

(assert (= (and b!6368671 c!1159698) b!6368673))

(assert (= (and b!6368671 (not c!1159698)) b!6368667))

(assert (= (and b!6368667 c!1159700) b!6368674))

(assert (= (and b!6368667 (not c!1159700)) b!6368670))

(assert (= (or b!6368673 b!6368674) bm!543729))

(assert (= (or b!6368673 b!6368674) bm!543732))

(assert (= (or b!6368675 bm!543729) bm!543731))

(assert (= (or b!6368675 bm!543732) bm!543733))

(assert (= (or b!6368676 bm!543733) bm!543730))

(assert (= (or b!6368676 b!6368675) bm!543734))

(declare-fun m!7172008 () Bool)

(assert (=> bm!543730 m!7172008))

(declare-fun m!7172010 () Bool)

(assert (=> bm!543731 m!7172010))

(declare-fun m!7172012 () Bool)

(assert (=> bm!543734 m!7172012))

(declare-fun m!7172014 () Bool)

(assert (=> b!6368668 m!7172014))

(declare-fun m!7172016 () Bool)

(assert (=> b!6368669 m!7172016))

(assert (=> bm!543671 d!1997558))

(declare-fun b!6368677 () Bool)

(declare-fun e!3866766 () Bool)

(declare-fun lt!2367828 () Bool)

(declare-fun call!543740 () Bool)

(assert (=> b!6368677 (= e!3866766 (= lt!2367828 call!543740))))

(declare-fun b!6368678 () Bool)

(declare-fun res!2620073 () Bool)

(declare-fun e!3866763 () Bool)

(assert (=> b!6368678 (=> res!2620073 e!3866763)))

(assert (=> b!6368678 (= res!2620073 (not ((_ is ElementMatch!16277) (regTwo!33066 r!7292))))))

(declare-fun e!3866765 () Bool)

(assert (=> b!6368678 (= e!3866765 e!3866763)))

(declare-fun b!6368679 () Bool)

(assert (=> b!6368679 (= e!3866765 (not lt!2367828))))

(declare-fun d!1997560 () Bool)

(assert (=> d!1997560 e!3866766))

(declare-fun c!1159701 () Bool)

(assert (=> d!1997560 (= c!1159701 ((_ is EmptyExpr!16277) (regTwo!33066 r!7292)))))

(declare-fun e!3866764 () Bool)

(assert (=> d!1997560 (= lt!2367828 e!3866764)))

(declare-fun c!1159702 () Bool)

(assert (=> d!1997560 (= c!1159702 (isEmpty!37120 (_2!36559 (get!22499 lt!2367789))))))

(assert (=> d!1997560 (validRegex!8013 (regTwo!33066 r!7292))))

(assert (=> d!1997560 (= (matchR!8460 (regTwo!33066 r!7292) (_2!36559 (get!22499 lt!2367789))) lt!2367828)))

(declare-fun bm!543735 () Bool)

(assert (=> bm!543735 (= call!543740 (isEmpty!37120 (_2!36559 (get!22499 lt!2367789))))))

(declare-fun b!6368680 () Bool)

(declare-fun res!2620071 () Bool)

(declare-fun e!3866761 () Bool)

(assert (=> b!6368680 (=> (not res!2620071) (not e!3866761))))

(assert (=> b!6368680 (= res!2620071 (not call!543740))))

(declare-fun b!6368681 () Bool)

(assert (=> b!6368681 (= e!3866764 (nullable!6270 (regTwo!33066 r!7292)))))

(declare-fun b!6368682 () Bool)

(declare-fun e!3866762 () Bool)

(assert (=> b!6368682 (= e!3866763 e!3866762)))

(declare-fun res!2620069 () Bool)

(assert (=> b!6368682 (=> (not res!2620069) (not e!3866762))))

(assert (=> b!6368682 (= res!2620069 (not lt!2367828))))

(declare-fun b!6368683 () Bool)

(assert (=> b!6368683 (= e!3866761 (= (head!13047 (_2!36559 (get!22499 lt!2367789))) (c!1159440 (regTwo!33066 r!7292))))))

(declare-fun b!6368684 () Bool)

(assert (=> b!6368684 (= e!3866766 e!3866765)))

(declare-fun c!1159703 () Bool)

(assert (=> b!6368684 (= c!1159703 ((_ is EmptyLang!16277) (regTwo!33066 r!7292)))))

(declare-fun b!6368685 () Bool)

(assert (=> b!6368685 (= e!3866764 (matchR!8460 (derivativeStep!4981 (regTwo!33066 r!7292) (head!13047 (_2!36559 (get!22499 lt!2367789)))) (tail!12132 (_2!36559 (get!22499 lt!2367789)))))))

(declare-fun b!6368686 () Bool)

(declare-fun e!3866760 () Bool)

(assert (=> b!6368686 (= e!3866760 (not (= (head!13047 (_2!36559 (get!22499 lt!2367789))) (c!1159440 (regTwo!33066 r!7292)))))))

(declare-fun b!6368687 () Bool)

(declare-fun res!2620072 () Bool)

(assert (=> b!6368687 (=> res!2620072 e!3866760)))

(assert (=> b!6368687 (= res!2620072 (not (isEmpty!37120 (tail!12132 (_2!36559 (get!22499 lt!2367789))))))))

(declare-fun b!6368688 () Bool)

(assert (=> b!6368688 (= e!3866762 e!3866760)))

(declare-fun res!2620074 () Bool)

(assert (=> b!6368688 (=> res!2620074 e!3866760)))

(assert (=> b!6368688 (= res!2620074 call!543740)))

(declare-fun b!6368689 () Bool)

(declare-fun res!2620067 () Bool)

(assert (=> b!6368689 (=> (not res!2620067) (not e!3866761))))

(assert (=> b!6368689 (= res!2620067 (isEmpty!37120 (tail!12132 (_2!36559 (get!22499 lt!2367789)))))))

(declare-fun b!6368690 () Bool)

(declare-fun res!2620068 () Bool)

(assert (=> b!6368690 (=> res!2620068 e!3866763)))

(assert (=> b!6368690 (= res!2620068 e!3866761)))

(declare-fun res!2620070 () Bool)

(assert (=> b!6368690 (=> (not res!2620070) (not e!3866761))))

(assert (=> b!6368690 (= res!2620070 lt!2367828)))

(assert (= (and d!1997560 c!1159702) b!6368681))

(assert (= (and d!1997560 (not c!1159702)) b!6368685))

(assert (= (and d!1997560 c!1159701) b!6368677))

(assert (= (and d!1997560 (not c!1159701)) b!6368684))

(assert (= (and b!6368684 c!1159703) b!6368679))

(assert (= (and b!6368684 (not c!1159703)) b!6368678))

(assert (= (and b!6368678 (not res!2620073)) b!6368690))

(assert (= (and b!6368690 res!2620070) b!6368680))

(assert (= (and b!6368680 res!2620071) b!6368689))

(assert (= (and b!6368689 res!2620067) b!6368683))

(assert (= (and b!6368690 (not res!2620068)) b!6368682))

(assert (= (and b!6368682 res!2620069) b!6368688))

(assert (= (and b!6368688 (not res!2620074)) b!6368687))

(assert (= (and b!6368687 (not res!2620072)) b!6368686))

(assert (= (or b!6368677 b!6368680 b!6368688) bm!543735))

(declare-fun m!7172018 () Bool)

(assert (=> b!6368683 m!7172018))

(declare-fun m!7172020 () Bool)

(assert (=> b!6368689 m!7172020))

(assert (=> b!6368689 m!7172020))

(declare-fun m!7172022 () Bool)

(assert (=> b!6368689 m!7172022))

(declare-fun m!7172024 () Bool)

(assert (=> b!6368681 m!7172024))

(assert (=> b!6368686 m!7172018))

(assert (=> b!6368687 m!7172020))

(assert (=> b!6368687 m!7172020))

(assert (=> b!6368687 m!7172022))

(declare-fun m!7172026 () Bool)

(assert (=> d!1997560 m!7172026))

(declare-fun m!7172028 () Bool)

(assert (=> d!1997560 m!7172028))

(assert (=> b!6368685 m!7172018))

(assert (=> b!6368685 m!7172018))

(declare-fun m!7172030 () Bool)

(assert (=> b!6368685 m!7172030))

(assert (=> b!6368685 m!7172020))

(assert (=> b!6368685 m!7172030))

(assert (=> b!6368685 m!7172020))

(declare-fun m!7172032 () Bool)

(assert (=> b!6368685 m!7172032))

(assert (=> bm!543735 m!7172026))

(assert (=> b!6368296 d!1997560))

(declare-fun d!1997562 () Bool)

(assert (=> d!1997562 (= (get!22499 lt!2367789) (v!52336 lt!2367789))))

(assert (=> b!6368296 d!1997562))

(assert (=> d!1997376 d!1997556))

(declare-fun b!6368691 () Bool)

(declare-fun e!3866772 () (InoxSet Context!11322))

(declare-fun e!3866769 () (InoxSet Context!11322))

(assert (=> b!6368691 (= e!3866772 e!3866769)))

(declare-fun c!1159704 () Bool)

(assert (=> b!6368691 (= c!1159704 ((_ is Union!16277) (h!71455 (exprs!6161 lt!2367724))))))

(declare-fun bm!543736 () Bool)

(declare-fun call!543745 () List!65131)

(declare-fun call!543744 () List!65131)

(assert (=> bm!543736 (= call!543745 call!543744)))

(declare-fun c!1159705 () Bool)

(declare-fun c!1159706 () Bool)

(declare-fun bm!543737 () Bool)

(declare-fun call!543742 () (InoxSet Context!11322))

(assert (=> bm!543737 (= call!543742 (derivationStepZipperDown!1525 (ite c!1159704 (regTwo!33067 (h!71455 (exprs!6161 lt!2367724))) (ite c!1159705 (regTwo!33066 (h!71455 (exprs!6161 lt!2367724))) (ite c!1159706 (regOne!33066 (h!71455 (exprs!6161 lt!2367724))) (reg!16606 (h!71455 (exprs!6161 lt!2367724)))))) (ite (or c!1159704 c!1159705) (Context!11323 (t!378729 (exprs!6161 lt!2367724))) (Context!11323 call!543745)) (h!71454 s!2326)))))

(declare-fun b!6368692 () Bool)

(declare-fun c!1159708 () Bool)

(assert (=> b!6368692 (= c!1159708 ((_ is Star!16277) (h!71455 (exprs!6161 lt!2367724))))))

(declare-fun e!3866771 () (InoxSet Context!11322))

(declare-fun e!3866770 () (InoxSet Context!11322))

(assert (=> b!6368692 (= e!3866771 e!3866770)))

(declare-fun b!6368694 () Bool)

(declare-fun e!3866767 () Bool)

(assert (=> b!6368694 (= e!3866767 (nullable!6270 (regOne!33066 (h!71455 (exprs!6161 lt!2367724)))))))

(declare-fun b!6368695 () Bool)

(assert (=> b!6368695 (= e!3866770 ((as const (Array Context!11322 Bool)) false))))

(declare-fun b!6368696 () Bool)

(declare-fun e!3866768 () (InoxSet Context!11322))

(assert (=> b!6368696 (= e!3866768 e!3866771)))

(assert (=> b!6368696 (= c!1159706 ((_ is Concat!25122) (h!71455 (exprs!6161 lt!2367724))))))

(declare-fun bm!543738 () Bool)

(assert (=> bm!543738 (= call!543744 ($colon$colon!2138 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 lt!2367724)))) (ite (or c!1159705 c!1159706) (regTwo!33066 (h!71455 (exprs!6161 lt!2367724))) (h!71455 (exprs!6161 lt!2367724)))))))

(declare-fun b!6368697 () Bool)

(assert (=> b!6368697 (= c!1159705 e!3866767)))

(declare-fun res!2620075 () Bool)

(assert (=> b!6368697 (=> (not res!2620075) (not e!3866767))))

(assert (=> b!6368697 (= res!2620075 ((_ is Concat!25122) (h!71455 (exprs!6161 lt!2367724))))))

(assert (=> b!6368697 (= e!3866769 e!3866768)))

(declare-fun b!6368698 () Bool)

(declare-fun call!543743 () (InoxSet Context!11322))

(assert (=> b!6368698 (= e!3866771 call!543743)))

(declare-fun bm!543739 () Bool)

(declare-fun call!543746 () (InoxSet Context!11322))

(assert (=> bm!543739 (= call!543743 call!543746)))

(declare-fun b!6368699 () Bool)

(assert (=> b!6368699 (= e!3866770 call!543743)))

(declare-fun b!6368700 () Bool)

(declare-fun call!543741 () (InoxSet Context!11322))

(assert (=> b!6368700 (= e!3866768 ((_ map or) call!543741 call!543746))))

(declare-fun bm!543740 () Bool)

(assert (=> bm!543740 (= call!543746 call!543742)))

(declare-fun bm!543741 () Bool)

(assert (=> bm!543741 (= call!543741 (derivationStepZipperDown!1525 (ite c!1159704 (regOne!33067 (h!71455 (exprs!6161 lt!2367724))) (regOne!33066 (h!71455 (exprs!6161 lt!2367724)))) (ite c!1159704 (Context!11323 (t!378729 (exprs!6161 lt!2367724))) (Context!11323 call!543744)) (h!71454 s!2326)))))

(declare-fun b!6368701 () Bool)

(assert (=> b!6368701 (= e!3866769 ((_ map or) call!543741 call!543742))))

(declare-fun d!1997564 () Bool)

(declare-fun c!1159707 () Bool)

(assert (=> d!1997564 (= c!1159707 (and ((_ is ElementMatch!16277) (h!71455 (exprs!6161 lt!2367724))) (= (c!1159440 (h!71455 (exprs!6161 lt!2367724))) (h!71454 s!2326))))))

(assert (=> d!1997564 (= (derivationStepZipperDown!1525 (h!71455 (exprs!6161 lt!2367724)) (Context!11323 (t!378729 (exprs!6161 lt!2367724))) (h!71454 s!2326)) e!3866772)))

(declare-fun b!6368693 () Bool)

(assert (=> b!6368693 (= e!3866772 (store ((as const (Array Context!11322 Bool)) false) (Context!11323 (t!378729 (exprs!6161 lt!2367724))) true))))

(assert (= (and d!1997564 c!1159707) b!6368693))

(assert (= (and d!1997564 (not c!1159707)) b!6368691))

(assert (= (and b!6368691 c!1159704) b!6368701))

(assert (= (and b!6368691 (not c!1159704)) b!6368697))

(assert (= (and b!6368697 res!2620075) b!6368694))

(assert (= (and b!6368697 c!1159705) b!6368700))

(assert (= (and b!6368697 (not c!1159705)) b!6368696))

(assert (= (and b!6368696 c!1159706) b!6368698))

(assert (= (and b!6368696 (not c!1159706)) b!6368692))

(assert (= (and b!6368692 c!1159708) b!6368699))

(assert (= (and b!6368692 (not c!1159708)) b!6368695))

(assert (= (or b!6368698 b!6368699) bm!543736))

(assert (= (or b!6368698 b!6368699) bm!543739))

(assert (= (or b!6368700 bm!543736) bm!543738))

(assert (= (or b!6368700 bm!543739) bm!543740))

(assert (= (or b!6368701 bm!543740) bm!543737))

(assert (= (or b!6368701 b!6368700) bm!543741))

(declare-fun m!7172034 () Bool)

(assert (=> bm!543737 m!7172034))

(declare-fun m!7172036 () Bool)

(assert (=> bm!543738 m!7172036))

(declare-fun m!7172038 () Bool)

(assert (=> bm!543741 m!7172038))

(declare-fun m!7172040 () Bool)

(assert (=> b!6368693 m!7172040))

(declare-fun m!7172042 () Bool)

(assert (=> b!6368694 m!7172042))

(assert (=> bm!543668 d!1997564))

(declare-fun d!1997566 () Bool)

(declare-fun c!1159709 () Bool)

(assert (=> d!1997566 (= c!1159709 (isEmpty!37120 (tail!12132 (t!378728 s!2326))))))

(declare-fun e!3866773 () Bool)

(assert (=> d!1997566 (= (matchZipper!2289 (derivationStepZipper!2243 ((_ map or) lt!2367715 lt!2367722) (head!13047 (t!378728 s!2326))) (tail!12132 (t!378728 s!2326))) e!3866773)))

(declare-fun b!6368702 () Bool)

(assert (=> b!6368702 (= e!3866773 (nullableZipper!2043 (derivationStepZipper!2243 ((_ map or) lt!2367715 lt!2367722) (head!13047 (t!378728 s!2326)))))))

(declare-fun b!6368703 () Bool)

(assert (=> b!6368703 (= e!3866773 (matchZipper!2289 (derivationStepZipper!2243 (derivationStepZipper!2243 ((_ map or) lt!2367715 lt!2367722) (head!13047 (t!378728 s!2326))) (head!13047 (tail!12132 (t!378728 s!2326)))) (tail!12132 (tail!12132 (t!378728 s!2326)))))))

(assert (= (and d!1997566 c!1159709) b!6368702))

(assert (= (and d!1997566 (not c!1159709)) b!6368703))

(assert (=> d!1997566 m!7171496))

(declare-fun m!7172044 () Bool)

(assert (=> d!1997566 m!7172044))

(assert (=> b!6368702 m!7171502))

(declare-fun m!7172046 () Bool)

(assert (=> b!6368702 m!7172046))

(assert (=> b!6368703 m!7171496))

(declare-fun m!7172048 () Bool)

(assert (=> b!6368703 m!7172048))

(assert (=> b!6368703 m!7171502))

(assert (=> b!6368703 m!7172048))

(declare-fun m!7172050 () Bool)

(assert (=> b!6368703 m!7172050))

(assert (=> b!6368703 m!7171496))

(declare-fun m!7172052 () Bool)

(assert (=> b!6368703 m!7172052))

(assert (=> b!6368703 m!7172050))

(assert (=> b!6368703 m!7172052))

(declare-fun m!7172054 () Bool)

(assert (=> b!6368703 m!7172054))

(assert (=> b!6367890 d!1997566))

(declare-fun bs!1595188 () Bool)

(declare-fun d!1997570 () Bool)

(assert (= bs!1595188 (and d!1997570 b!6367704)))

(declare-fun lambda!350927 () Int)

(assert (=> bs!1595188 (= (= (head!13047 (t!378728 s!2326)) (h!71454 s!2326)) (= lambda!350927 lambda!350861))))

(declare-fun bs!1595189 () Bool)

(assert (= bs!1595189 (and d!1997570 d!1997340)))

(assert (=> bs!1595189 (= (= (head!13047 (t!378728 s!2326)) (h!71454 s!2326)) (= lambda!350927 lambda!350873))))

(assert (=> d!1997570 true))

(assert (=> d!1997570 (= (derivationStepZipper!2243 ((_ map or) lt!2367715 lt!2367722) (head!13047 (t!378728 s!2326))) (flatMap!1782 ((_ map or) lt!2367715 lt!2367722) lambda!350927))))

(declare-fun bs!1595190 () Bool)

(assert (= bs!1595190 d!1997570))

(declare-fun m!7172068 () Bool)

(assert (=> bs!1595190 m!7172068))

(assert (=> b!6367890 d!1997570))

(declare-fun d!1997574 () Bool)

(assert (=> d!1997574 (= (head!13047 (t!378728 s!2326)) (h!71454 (t!378728 s!2326)))))

(assert (=> b!6367890 d!1997574))

(declare-fun d!1997576 () Bool)

(assert (=> d!1997576 (= (tail!12132 (t!378728 s!2326)) (t!378728 (t!378728 s!2326)))))

(assert (=> b!6367890 d!1997576))

(declare-fun d!1997578 () Bool)

(declare-fun c!1159713 () Bool)

(assert (=> d!1997578 (= c!1159713 ((_ is Nil!65008) lt!2367746))))

(declare-fun e!3866777 () (InoxSet Context!11322))

(assert (=> d!1997578 (= (content!12285 lt!2367746) e!3866777)))

(declare-fun b!6368710 () Bool)

(assert (=> b!6368710 (= e!3866777 ((as const (Array Context!11322 Bool)) false))))

(declare-fun b!6368711 () Bool)

(assert (=> b!6368711 (= e!3866777 ((_ map or) (store ((as const (Array Context!11322 Bool)) false) (h!71456 lt!2367746) true) (content!12285 (t!378730 lt!2367746))))))

(assert (= (and d!1997578 c!1159713) b!6368710))

(assert (= (and d!1997578 (not c!1159713)) b!6368711))

(declare-fun m!7172072 () Bool)

(assert (=> b!6368711 m!7172072))

(declare-fun m!7172074 () Bool)

(assert (=> b!6368711 m!7172074))

(assert (=> b!6367849 d!1997578))

(declare-fun d!1997586 () Bool)

(assert (=> d!1997586 (= (nullable!6270 (h!71455 (exprs!6161 lt!2367709))) (nullableFct!2217 (h!71455 (exprs!6161 lt!2367709))))))

(declare-fun bs!1595194 () Bool)

(assert (= bs!1595194 d!1997586))

(declare-fun m!7172076 () Bool)

(assert (=> bs!1595194 m!7172076))

(assert (=> b!6367805 d!1997586))

(declare-fun d!1997588 () Bool)

(declare-fun c!1159717 () Bool)

(assert (=> d!1997588 (= c!1159717 (isEmpty!37120 (tail!12132 (t!378728 s!2326))))))

(declare-fun e!3866785 () Bool)

(assert (=> d!1997588 (= (matchZipper!2289 (derivationStepZipper!2243 lt!2367722 (head!13047 (t!378728 s!2326))) (tail!12132 (t!378728 s!2326))) e!3866785)))

(declare-fun b!6368726 () Bool)

(assert (=> b!6368726 (= e!3866785 (nullableZipper!2043 (derivationStepZipper!2243 lt!2367722 (head!13047 (t!378728 s!2326)))))))

(declare-fun b!6368727 () Bool)

(assert (=> b!6368727 (= e!3866785 (matchZipper!2289 (derivationStepZipper!2243 (derivationStepZipper!2243 lt!2367722 (head!13047 (t!378728 s!2326))) (head!13047 (tail!12132 (t!378728 s!2326)))) (tail!12132 (tail!12132 (t!378728 s!2326)))))))

(assert (= (and d!1997588 c!1159717) b!6368726))

(assert (= (and d!1997588 (not c!1159717)) b!6368727))

(assert (=> d!1997588 m!7171496))

(assert (=> d!1997588 m!7172044))

(assert (=> b!6368726 m!7171690))

(declare-fun m!7172078 () Bool)

(assert (=> b!6368726 m!7172078))

(assert (=> b!6368727 m!7171496))

(assert (=> b!6368727 m!7172048))

(assert (=> b!6368727 m!7171690))

(assert (=> b!6368727 m!7172048))

(declare-fun m!7172080 () Bool)

(assert (=> b!6368727 m!7172080))

(assert (=> b!6368727 m!7171496))

(assert (=> b!6368727 m!7172052))

(assert (=> b!6368727 m!7172080))

(assert (=> b!6368727 m!7172052))

(declare-fun m!7172082 () Bool)

(assert (=> b!6368727 m!7172082))

(assert (=> b!6368222 d!1997588))

(declare-fun bs!1595195 () Bool)

(declare-fun d!1997590 () Bool)

(assert (= bs!1595195 (and d!1997590 b!6367704)))

(declare-fun lambda!350929 () Int)

(assert (=> bs!1595195 (= (= (head!13047 (t!378728 s!2326)) (h!71454 s!2326)) (= lambda!350929 lambda!350861))))

(declare-fun bs!1595196 () Bool)

(assert (= bs!1595196 (and d!1997590 d!1997340)))

(assert (=> bs!1595196 (= (= (head!13047 (t!378728 s!2326)) (h!71454 s!2326)) (= lambda!350929 lambda!350873))))

(declare-fun bs!1595197 () Bool)

(assert (= bs!1595197 (and d!1997590 d!1997570)))

(assert (=> bs!1595197 (= lambda!350929 lambda!350927)))

(assert (=> d!1997590 true))

(assert (=> d!1997590 (= (derivationStepZipper!2243 lt!2367722 (head!13047 (t!378728 s!2326))) (flatMap!1782 lt!2367722 lambda!350929))))

(declare-fun bs!1595198 () Bool)

(assert (= bs!1595198 d!1997590))

(declare-fun m!7172084 () Bool)

(assert (=> bs!1595198 m!7172084))

(assert (=> b!6368222 d!1997590))

(assert (=> b!6368222 d!1997574))

(assert (=> b!6368222 d!1997576))

(declare-fun d!1997592 () Bool)

(assert (=> d!1997592 (= (isDefined!12871 lt!2367789) (not (isEmpty!37121 lt!2367789)))))

(declare-fun bs!1595199 () Bool)

(assert (= bs!1595199 d!1997592))

(declare-fun m!7172092 () Bool)

(assert (=> bs!1595199 m!7172092))

(assert (=> b!6368300 d!1997592))

(declare-fun b!6368728 () Bool)

(declare-fun e!3866786 () Bool)

(assert (=> b!6368728 (= e!3866786 (nullable!6270 (h!71455 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 lt!2367709)))))))))

(declare-fun b!6368729 () Bool)

(declare-fun e!3866788 () (InoxSet Context!11322))

(declare-fun call!543748 () (InoxSet Context!11322))

(assert (=> b!6368729 (= e!3866788 call!543748)))

(declare-fun b!6368730 () Bool)

(assert (=> b!6368730 (= e!3866788 ((as const (Array Context!11322 Bool)) false))))

(declare-fun bm!543743 () Bool)

(assert (=> bm!543743 (= call!543748 (derivationStepZipperDown!1525 (h!71455 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 lt!2367709))))) (Context!11323 (t!378729 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 lt!2367709)))))) (h!71454 s!2326)))))

(declare-fun d!1997594 () Bool)

(declare-fun c!1159718 () Bool)

(assert (=> d!1997594 (= c!1159718 e!3866786)))

(declare-fun res!2620084 () Bool)

(assert (=> d!1997594 (=> (not res!2620084) (not e!3866786))))

(assert (=> d!1997594 (= res!2620084 ((_ is Cons!65007) (exprs!6161 (Context!11323 (t!378729 (exprs!6161 lt!2367709))))))))

(declare-fun e!3866787 () (InoxSet Context!11322))

(assert (=> d!1997594 (= (derivationStepZipperUp!1451 (Context!11323 (t!378729 (exprs!6161 lt!2367709))) (h!71454 s!2326)) e!3866787)))

(declare-fun b!6368731 () Bool)

(assert (=> b!6368731 (= e!3866787 ((_ map or) call!543748 (derivationStepZipperUp!1451 (Context!11323 (t!378729 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 lt!2367709)))))) (h!71454 s!2326))))))

(declare-fun b!6368732 () Bool)

(assert (=> b!6368732 (= e!3866787 e!3866788)))

(declare-fun c!1159719 () Bool)

(assert (=> b!6368732 (= c!1159719 ((_ is Cons!65007) (exprs!6161 (Context!11323 (t!378729 (exprs!6161 lt!2367709))))))))

(assert (= (and d!1997594 res!2620084) b!6368728))

(assert (= (and d!1997594 c!1159718) b!6368731))

(assert (= (and d!1997594 (not c!1159718)) b!6368732))

(assert (= (and b!6368732 c!1159719) b!6368729))

(assert (= (and b!6368732 (not c!1159719)) b!6368730))

(assert (= (or b!6368731 b!6368729) bm!543743))

(declare-fun m!7172102 () Bool)

(assert (=> b!6368728 m!7172102))

(declare-fun m!7172104 () Bool)

(assert (=> bm!543743 m!7172104))

(declare-fun m!7172106 () Bool)

(assert (=> b!6368731 m!7172106))

(assert (=> b!6367808 d!1997594))

(declare-fun d!1997598 () Bool)

(assert (=> d!1997598 (= (isEmpty!37117 (t!378729 (unfocusZipperList!1698 zl!343))) ((_ is Nil!65007) (t!378729 (unfocusZipperList!1698 zl!343))))))

(assert (=> b!6367783 d!1997598))

(assert (=> b!6367872 d!1997438))

(declare-fun b!6368733 () Bool)

(declare-fun e!3866794 () Bool)

(declare-fun call!543749 () Bool)

(assert (=> b!6368733 (= e!3866794 call!543749)))

(declare-fun c!1159720 () Bool)

(declare-fun bm!543744 () Bool)

(declare-fun c!1159721 () Bool)

(assert (=> bm!543744 (= call!543749 (validRegex!8013 (ite c!1159721 (reg!16606 lt!2367775) (ite c!1159720 (regOne!33067 lt!2367775) (regOne!33066 lt!2367775)))))))

(declare-fun b!6368734 () Bool)

(declare-fun e!3866791 () Bool)

(assert (=> b!6368734 (= e!3866791 e!3866794)))

(declare-fun res!2620089 () Bool)

(assert (=> b!6368734 (= res!2620089 (not (nullable!6270 (reg!16606 lt!2367775))))))

(assert (=> b!6368734 (=> (not res!2620089) (not e!3866794))))

(declare-fun b!6368735 () Bool)

(declare-fun res!2620087 () Bool)

(declare-fun e!3866793 () Bool)

(assert (=> b!6368735 (=> res!2620087 e!3866793)))

(assert (=> b!6368735 (= res!2620087 (not ((_ is Concat!25122) lt!2367775)))))

(declare-fun e!3866789 () Bool)

(assert (=> b!6368735 (= e!3866789 e!3866793)))

(declare-fun b!6368736 () Bool)

(declare-fun e!3866792 () Bool)

(assert (=> b!6368736 (= e!3866793 e!3866792)))

(declare-fun res!2620086 () Bool)

(assert (=> b!6368736 (=> (not res!2620086) (not e!3866792))))

(declare-fun call!543751 () Bool)

(assert (=> b!6368736 (= res!2620086 call!543751)))

(declare-fun b!6368737 () Bool)

(declare-fun e!3866790 () Bool)

(declare-fun call!543750 () Bool)

(assert (=> b!6368737 (= e!3866790 call!543750)))

(declare-fun b!6368738 () Bool)

(assert (=> b!6368738 (= e!3866792 call!543750)))

(declare-fun bm!543745 () Bool)

(assert (=> bm!543745 (= call!543750 (validRegex!8013 (ite c!1159720 (regTwo!33067 lt!2367775) (regTwo!33066 lt!2367775))))))

(declare-fun b!6368739 () Bool)

(declare-fun e!3866795 () Bool)

(assert (=> b!6368739 (= e!3866795 e!3866791)))

(assert (=> b!6368739 (= c!1159721 ((_ is Star!16277) lt!2367775))))

(declare-fun d!1997600 () Bool)

(declare-fun res!2620085 () Bool)

(assert (=> d!1997600 (=> res!2620085 e!3866795)))

(assert (=> d!1997600 (= res!2620085 ((_ is ElementMatch!16277) lt!2367775))))

(assert (=> d!1997600 (= (validRegex!8013 lt!2367775) e!3866795)))

(declare-fun b!6368740 () Bool)

(declare-fun res!2620088 () Bool)

(assert (=> b!6368740 (=> (not res!2620088) (not e!3866790))))

(assert (=> b!6368740 (= res!2620088 call!543751)))

(assert (=> b!6368740 (= e!3866789 e!3866790)))

(declare-fun bm!543746 () Bool)

(assert (=> bm!543746 (= call!543751 call!543749)))

(declare-fun b!6368741 () Bool)

(assert (=> b!6368741 (= e!3866791 e!3866789)))

(assert (=> b!6368741 (= c!1159720 ((_ is Union!16277) lt!2367775))))

(assert (= (and d!1997600 (not res!2620085)) b!6368739))

(assert (= (and b!6368739 c!1159721) b!6368734))

(assert (= (and b!6368739 (not c!1159721)) b!6368741))

(assert (= (and b!6368734 res!2620089) b!6368733))

(assert (= (and b!6368741 c!1159720) b!6368740))

(assert (= (and b!6368741 (not c!1159720)) b!6368735))

(assert (= (and b!6368740 res!2620088) b!6368737))

(assert (= (and b!6368735 (not res!2620087)) b!6368736))

(assert (= (and b!6368736 res!2620086) b!6368738))

(assert (= (or b!6368737 b!6368738) bm!543745))

(assert (= (or b!6368740 b!6368736) bm!543746))

(assert (= (or b!6368733 bm!543746) bm!543744))

(declare-fun m!7172108 () Bool)

(assert (=> bm!543744 m!7172108))

(declare-fun m!7172110 () Bool)

(assert (=> b!6368734 m!7172110))

(declare-fun m!7172112 () Bool)

(assert (=> bm!543745 m!7172112))

(assert (=> d!1997426 d!1997600))

(declare-fun d!1997602 () Bool)

(declare-fun res!2620090 () Bool)

(declare-fun e!3866796 () Bool)

(assert (=> d!1997602 (=> res!2620090 e!3866796)))

(assert (=> d!1997602 (= res!2620090 ((_ is Nil!65007) (exprs!6161 (h!71456 zl!343))))))

(assert (=> d!1997602 (= (forall!15454 (exprs!6161 (h!71456 zl!343)) lambda!350901) e!3866796)))

(declare-fun b!6368742 () Bool)

(declare-fun e!3866797 () Bool)

(assert (=> b!6368742 (= e!3866796 e!3866797)))

(declare-fun res!2620091 () Bool)

(assert (=> b!6368742 (=> (not res!2620091) (not e!3866797))))

(assert (=> b!6368742 (= res!2620091 (dynLambda!25790 lambda!350901 (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun b!6368743 () Bool)

(assert (=> b!6368743 (= e!3866797 (forall!15454 (t!378729 (exprs!6161 (h!71456 zl!343))) lambda!350901))))

(assert (= (and d!1997602 (not res!2620090)) b!6368742))

(assert (= (and b!6368742 res!2620091) b!6368743))

(declare-fun b_lambda!242053 () Bool)

(assert (=> (not b_lambda!242053) (not b!6368742)))

(declare-fun m!7172114 () Bool)

(assert (=> b!6368742 m!7172114))

(declare-fun m!7172116 () Bool)

(assert (=> b!6368743 m!7172116))

(assert (=> d!1997426 d!1997602))

(declare-fun bs!1595200 () Bool)

(declare-fun d!1997604 () Bool)

(assert (= bs!1595200 (and d!1997604 d!1997320)))

(declare-fun lambda!350930 () Int)

(assert (=> bs!1595200 (= lambda!350930 lambda!350867)))

(declare-fun bs!1595201 () Bool)

(assert (= bs!1595201 (and d!1997604 d!1997332)))

(assert (=> bs!1595201 (= lambda!350930 lambda!350870)))

(declare-fun bs!1595202 () Bool)

(assert (= bs!1595202 (and d!1997604 d!1997346)))

(assert (=> bs!1595202 (= lambda!350930 lambda!350879)))

(declare-fun bs!1595203 () Bool)

(assert (= bs!1595203 (and d!1997604 d!1997368)))

(assert (=> bs!1595203 (= lambda!350930 lambda!350882)))

(declare-fun bs!1595204 () Bool)

(assert (= bs!1595204 (and d!1997604 d!1997354)))

(assert (=> bs!1595204 (= lambda!350930 lambda!350880)))

(declare-fun bs!1595205 () Bool)

(assert (= bs!1595205 (and d!1997604 d!1997426)))

(assert (=> bs!1595205 (= lambda!350930 lambda!350901)))

(declare-fun bs!1595206 () Bool)

(assert (= bs!1595206 (and d!1997604 d!1997544)))

(assert (=> bs!1595206 (= lambda!350930 lambda!350926)))

(declare-fun b!6368744 () Bool)

(declare-fun e!3866798 () Regex!16277)

(assert (=> b!6368744 (= e!3866798 EmptyLang!16277)))

(declare-fun b!6368745 () Bool)

(declare-fun e!3866802 () Regex!16277)

(assert (=> b!6368745 (= e!3866802 (h!71455 (t!378729 (unfocusZipperList!1698 zl!343))))))

(declare-fun b!6368746 () Bool)

(declare-fun e!3866800 () Bool)

(declare-fun e!3866803 () Bool)

(assert (=> b!6368746 (= e!3866800 e!3866803)))

(declare-fun c!1159724 () Bool)

(assert (=> b!6368746 (= c!1159724 (isEmpty!37117 (tail!12129 (t!378729 (unfocusZipperList!1698 zl!343)))))))

(declare-fun b!6368747 () Bool)

(declare-fun lt!2367830 () Regex!16277)

(assert (=> b!6368747 (= e!3866803 (isUnion!1115 lt!2367830))))

(declare-fun b!6368748 () Bool)

(declare-fun e!3866801 () Bool)

(assert (=> b!6368748 (= e!3866801 (isEmpty!37117 (t!378729 (t!378729 (unfocusZipperList!1698 zl!343)))))))

(declare-fun b!6368749 () Bool)

(assert (=> b!6368749 (= e!3866802 e!3866798)))

(declare-fun c!1159723 () Bool)

(assert (=> b!6368749 (= c!1159723 ((_ is Cons!65007) (t!378729 (unfocusZipperList!1698 zl!343))))))

(declare-fun e!3866799 () Bool)

(assert (=> d!1997604 e!3866799))

(declare-fun res!2620093 () Bool)

(assert (=> d!1997604 (=> (not res!2620093) (not e!3866799))))

(assert (=> d!1997604 (= res!2620093 (validRegex!8013 lt!2367830))))

(assert (=> d!1997604 (= lt!2367830 e!3866802)))

(declare-fun c!1159722 () Bool)

(assert (=> d!1997604 (= c!1159722 e!3866801)))

(declare-fun res!2620092 () Bool)

(assert (=> d!1997604 (=> (not res!2620092) (not e!3866801))))

(assert (=> d!1997604 (= res!2620092 ((_ is Cons!65007) (t!378729 (unfocusZipperList!1698 zl!343))))))

(assert (=> d!1997604 (forall!15454 (t!378729 (unfocusZipperList!1698 zl!343)) lambda!350930)))

(assert (=> d!1997604 (= (generalisedUnion!2121 (t!378729 (unfocusZipperList!1698 zl!343))) lt!2367830)))

(declare-fun b!6368750 () Bool)

(assert (=> b!6368750 (= e!3866799 e!3866800)))

(declare-fun c!1159725 () Bool)

(assert (=> b!6368750 (= c!1159725 (isEmpty!37117 (t!378729 (unfocusZipperList!1698 zl!343))))))

(declare-fun b!6368751 () Bool)

(assert (=> b!6368751 (= e!3866803 (= lt!2367830 (head!13044 (t!378729 (unfocusZipperList!1698 zl!343)))))))

(declare-fun b!6368752 () Bool)

(assert (=> b!6368752 (= e!3866798 (Union!16277 (h!71455 (t!378729 (unfocusZipperList!1698 zl!343))) (generalisedUnion!2121 (t!378729 (t!378729 (unfocusZipperList!1698 zl!343))))))))

(declare-fun b!6368753 () Bool)

(assert (=> b!6368753 (= e!3866800 (isEmptyLang!1685 lt!2367830))))

(assert (= (and d!1997604 res!2620092) b!6368748))

(assert (= (and d!1997604 c!1159722) b!6368745))

(assert (= (and d!1997604 (not c!1159722)) b!6368749))

(assert (= (and b!6368749 c!1159723) b!6368752))

(assert (= (and b!6368749 (not c!1159723)) b!6368744))

(assert (= (and d!1997604 res!2620093) b!6368750))

(assert (= (and b!6368750 c!1159725) b!6368753))

(assert (= (and b!6368750 (not c!1159725)) b!6368746))

(assert (= (and b!6368746 c!1159724) b!6368751))

(assert (= (and b!6368746 (not c!1159724)) b!6368747))

(declare-fun m!7172118 () Bool)

(assert (=> b!6368748 m!7172118))

(declare-fun m!7172120 () Bool)

(assert (=> b!6368746 m!7172120))

(assert (=> b!6368746 m!7172120))

(declare-fun m!7172122 () Bool)

(assert (=> b!6368746 m!7172122))

(declare-fun m!7172124 () Bool)

(assert (=> b!6368751 m!7172124))

(declare-fun m!7172126 () Bool)

(assert (=> b!6368747 m!7172126))

(declare-fun m!7172128 () Bool)

(assert (=> b!6368752 m!7172128))

(declare-fun m!7172130 () Bool)

(assert (=> b!6368753 m!7172130))

(declare-fun m!7172132 () Bool)

(assert (=> d!1997604 m!7172132))

(declare-fun m!7172134 () Bool)

(assert (=> d!1997604 m!7172134))

(assert (=> b!6368750 m!7171374))

(assert (=> b!6367787 d!1997604))

(assert (=> d!1997372 d!1997556))

(assert (=> d!1997466 d!1997542))

(declare-fun d!1997606 () Bool)

(declare-fun res!2620094 () Bool)

(declare-fun e!3866804 () Bool)

(assert (=> d!1997606 (=> res!2620094 e!3866804)))

(assert (=> d!1997606 (= res!2620094 ((_ is Nil!65007) (exprs!6161 (h!71456 zl!343))))))

(assert (=> d!1997606 (= (forall!15454 (exprs!6161 (h!71456 zl!343)) lambda!350882) e!3866804)))

(declare-fun b!6368754 () Bool)

(declare-fun e!3866805 () Bool)

(assert (=> b!6368754 (= e!3866804 e!3866805)))

(declare-fun res!2620095 () Bool)

(assert (=> b!6368754 (=> (not res!2620095) (not e!3866805))))

(assert (=> b!6368754 (= res!2620095 (dynLambda!25790 lambda!350882 (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun b!6368755 () Bool)

(assert (=> b!6368755 (= e!3866805 (forall!15454 (t!378729 (exprs!6161 (h!71456 zl!343))) lambda!350882))))

(assert (= (and d!1997606 (not res!2620094)) b!6368754))

(assert (= (and b!6368754 res!2620095) b!6368755))

(declare-fun b_lambda!242055 () Bool)

(assert (=> (not b_lambda!242055) (not b!6368754)))

(declare-fun m!7172136 () Bool)

(assert (=> b!6368754 m!7172136))

(declare-fun m!7172138 () Bool)

(assert (=> b!6368755 m!7172138))

(assert (=> d!1997368 d!1997606))

(assert (=> bs!1595163 d!1997424))

(assert (=> bm!543666 d!1997542))

(assert (=> d!1997402 d!1997542))

(assert (=> d!1997402 d!1997342))

(declare-fun d!1997608 () Bool)

(declare-fun c!1159726 () Bool)

(assert (=> d!1997608 (= c!1159726 (isEmpty!37120 (tail!12132 s!2326)))))

(declare-fun e!3866806 () Bool)

(assert (=> d!1997608 (= (matchZipper!2289 (derivationStepZipper!2243 lt!2367707 (head!13047 s!2326)) (tail!12132 s!2326)) e!3866806)))

(declare-fun b!6368756 () Bool)

(assert (=> b!6368756 (= e!3866806 (nullableZipper!2043 (derivationStepZipper!2243 lt!2367707 (head!13047 s!2326))))))

(declare-fun b!6368757 () Bool)

(assert (=> b!6368757 (= e!3866806 (matchZipper!2289 (derivationStepZipper!2243 (derivationStepZipper!2243 lt!2367707 (head!13047 s!2326)) (head!13047 (tail!12132 s!2326))) (tail!12132 (tail!12132 s!2326))))))

(assert (= (and d!1997608 c!1159726) b!6368756))

(assert (= (and d!1997608 (not c!1159726)) b!6368757))

(assert (=> d!1997608 m!7171586))

(assert (=> d!1997608 m!7171588))

(assert (=> b!6368756 m!7171796))

(declare-fun m!7172140 () Bool)

(assert (=> b!6368756 m!7172140))

(assert (=> b!6368757 m!7171586))

(assert (=> b!6368757 m!7171842))

(assert (=> b!6368757 m!7171796))

(assert (=> b!6368757 m!7171842))

(declare-fun m!7172142 () Bool)

(assert (=> b!6368757 m!7172142))

(assert (=> b!6368757 m!7171586))

(assert (=> b!6368757 m!7171844))

(assert (=> b!6368757 m!7172142))

(assert (=> b!6368757 m!7171844))

(declare-fun m!7172144 () Bool)

(assert (=> b!6368757 m!7172144))

(assert (=> b!6368357 d!1997608))

(declare-fun bs!1595207 () Bool)

(declare-fun d!1997610 () Bool)

(assert (= bs!1595207 (and d!1997610 b!6367704)))

(declare-fun lambda!350931 () Int)

(assert (=> bs!1595207 (= (= (head!13047 s!2326) (h!71454 s!2326)) (= lambda!350931 lambda!350861))))

(declare-fun bs!1595208 () Bool)

(assert (= bs!1595208 (and d!1997610 d!1997340)))

(assert (=> bs!1595208 (= (= (head!13047 s!2326) (h!71454 s!2326)) (= lambda!350931 lambda!350873))))

(declare-fun bs!1595209 () Bool)

(assert (= bs!1595209 (and d!1997610 d!1997570)))

(assert (=> bs!1595209 (= (= (head!13047 s!2326) (head!13047 (t!378728 s!2326))) (= lambda!350931 lambda!350927))))

(declare-fun bs!1595210 () Bool)

(assert (= bs!1595210 (and d!1997610 d!1997590)))

(assert (=> bs!1595210 (= (= (head!13047 s!2326) (head!13047 (t!378728 s!2326))) (= lambda!350931 lambda!350929))))

(assert (=> d!1997610 true))

(assert (=> d!1997610 (= (derivationStepZipper!2243 lt!2367707 (head!13047 s!2326)) (flatMap!1782 lt!2367707 lambda!350931))))

(declare-fun bs!1595211 () Bool)

(assert (= bs!1595211 d!1997610))

(declare-fun m!7172146 () Bool)

(assert (=> bs!1595211 m!7172146))

(assert (=> b!6368357 d!1997610))

(assert (=> b!6368357 d!1997504))

(assert (=> b!6368357 d!1997506))

(assert (=> d!1997440 d!1997592))

(declare-fun b!6368758 () Bool)

(declare-fun e!3866813 () Bool)

(declare-fun lt!2367831 () Bool)

(declare-fun call!543752 () Bool)

(assert (=> b!6368758 (= e!3866813 (= lt!2367831 call!543752))))

(declare-fun b!6368759 () Bool)

(declare-fun res!2620102 () Bool)

(declare-fun e!3866810 () Bool)

(assert (=> b!6368759 (=> res!2620102 e!3866810)))

(assert (=> b!6368759 (= res!2620102 (not ((_ is ElementMatch!16277) (regOne!33066 r!7292))))))

(declare-fun e!3866812 () Bool)

(assert (=> b!6368759 (= e!3866812 e!3866810)))

(declare-fun b!6368760 () Bool)

(assert (=> b!6368760 (= e!3866812 (not lt!2367831))))

(declare-fun d!1997612 () Bool)

(assert (=> d!1997612 e!3866813))

(declare-fun c!1159727 () Bool)

(assert (=> d!1997612 (= c!1159727 ((_ is EmptyExpr!16277) (regOne!33066 r!7292)))))

(declare-fun e!3866811 () Bool)

(assert (=> d!1997612 (= lt!2367831 e!3866811)))

(declare-fun c!1159728 () Bool)

(assert (=> d!1997612 (= c!1159728 (isEmpty!37120 Nil!65006))))

(assert (=> d!1997612 (validRegex!8013 (regOne!33066 r!7292))))

(assert (=> d!1997612 (= (matchR!8460 (regOne!33066 r!7292) Nil!65006) lt!2367831)))

(declare-fun bm!543747 () Bool)

(assert (=> bm!543747 (= call!543752 (isEmpty!37120 Nil!65006))))

(declare-fun b!6368761 () Bool)

(declare-fun res!2620100 () Bool)

(declare-fun e!3866808 () Bool)

(assert (=> b!6368761 (=> (not res!2620100) (not e!3866808))))

(assert (=> b!6368761 (= res!2620100 (not call!543752))))

(declare-fun b!6368762 () Bool)

(assert (=> b!6368762 (= e!3866811 (nullable!6270 (regOne!33066 r!7292)))))

(declare-fun b!6368763 () Bool)

(declare-fun e!3866809 () Bool)

(assert (=> b!6368763 (= e!3866810 e!3866809)))

(declare-fun res!2620098 () Bool)

(assert (=> b!6368763 (=> (not res!2620098) (not e!3866809))))

(assert (=> b!6368763 (= res!2620098 (not lt!2367831))))

(declare-fun b!6368764 () Bool)

(assert (=> b!6368764 (= e!3866808 (= (head!13047 Nil!65006) (c!1159440 (regOne!33066 r!7292))))))

(declare-fun b!6368765 () Bool)

(assert (=> b!6368765 (= e!3866813 e!3866812)))

(declare-fun c!1159729 () Bool)

(assert (=> b!6368765 (= c!1159729 ((_ is EmptyLang!16277) (regOne!33066 r!7292)))))

(declare-fun b!6368766 () Bool)

(assert (=> b!6368766 (= e!3866811 (matchR!8460 (derivativeStep!4981 (regOne!33066 r!7292) (head!13047 Nil!65006)) (tail!12132 Nil!65006)))))

(declare-fun b!6368767 () Bool)

(declare-fun e!3866807 () Bool)

(assert (=> b!6368767 (= e!3866807 (not (= (head!13047 Nil!65006) (c!1159440 (regOne!33066 r!7292)))))))

(declare-fun b!6368768 () Bool)

(declare-fun res!2620101 () Bool)

(assert (=> b!6368768 (=> res!2620101 e!3866807)))

(assert (=> b!6368768 (= res!2620101 (not (isEmpty!37120 (tail!12132 Nil!65006))))))

(declare-fun b!6368769 () Bool)

(assert (=> b!6368769 (= e!3866809 e!3866807)))

(declare-fun res!2620103 () Bool)

(assert (=> b!6368769 (=> res!2620103 e!3866807)))

(assert (=> b!6368769 (= res!2620103 call!543752)))

(declare-fun b!6368770 () Bool)

(declare-fun res!2620096 () Bool)

(assert (=> b!6368770 (=> (not res!2620096) (not e!3866808))))

(assert (=> b!6368770 (= res!2620096 (isEmpty!37120 (tail!12132 Nil!65006)))))

(declare-fun b!6368771 () Bool)

(declare-fun res!2620097 () Bool)

(assert (=> b!6368771 (=> res!2620097 e!3866810)))

(assert (=> b!6368771 (= res!2620097 e!3866808)))

(declare-fun res!2620099 () Bool)

(assert (=> b!6368771 (=> (not res!2620099) (not e!3866808))))

(assert (=> b!6368771 (= res!2620099 lt!2367831)))

(assert (= (and d!1997612 c!1159728) b!6368762))

(assert (= (and d!1997612 (not c!1159728)) b!6368766))

(assert (= (and d!1997612 c!1159727) b!6368758))

(assert (= (and d!1997612 (not c!1159727)) b!6368765))

(assert (= (and b!6368765 c!1159729) b!6368760))

(assert (= (and b!6368765 (not c!1159729)) b!6368759))

(assert (= (and b!6368759 (not res!2620102)) b!6368771))

(assert (= (and b!6368771 res!2620099) b!6368761))

(assert (= (and b!6368761 res!2620100) b!6368770))

(assert (= (and b!6368770 res!2620096) b!6368764))

(assert (= (and b!6368771 (not res!2620097)) b!6368763))

(assert (= (and b!6368763 res!2620098) b!6368769))

(assert (= (and b!6368769 (not res!2620103)) b!6368768))

(assert (= (and b!6368768 (not res!2620101)) b!6368767))

(assert (= (or b!6368758 b!6368761 b!6368769) bm!543747))

(declare-fun m!7172148 () Bool)

(assert (=> b!6368764 m!7172148))

(declare-fun m!7172150 () Bool)

(assert (=> b!6368770 m!7172150))

(assert (=> b!6368770 m!7172150))

(declare-fun m!7172152 () Bool)

(assert (=> b!6368770 m!7172152))

(assert (=> b!6368762 m!7171860))

(assert (=> b!6368767 m!7172148))

(assert (=> b!6368768 m!7172150))

(assert (=> b!6368768 m!7172150))

(assert (=> b!6368768 m!7172152))

(declare-fun m!7172154 () Bool)

(assert (=> d!1997612 m!7172154))

(assert (=> d!1997612 m!7171744))

(assert (=> b!6368766 m!7172148))

(assert (=> b!6368766 m!7172148))

(declare-fun m!7172156 () Bool)

(assert (=> b!6368766 m!7172156))

(assert (=> b!6368766 m!7172150))

(assert (=> b!6368766 m!7172156))

(assert (=> b!6368766 m!7172150))

(declare-fun m!7172158 () Bool)

(assert (=> b!6368766 m!7172158))

(assert (=> bm!543747 m!7172154))

(assert (=> d!1997440 d!1997612))

(declare-fun b!6368792 () Bool)

(declare-fun e!3866829 () Bool)

(declare-fun call!543755 () Bool)

(assert (=> b!6368792 (= e!3866829 call!543755)))

(declare-fun bm!543750 () Bool)

(declare-fun c!1159740 () Bool)

(declare-fun c!1159741 () Bool)

(assert (=> bm!543750 (= call!543755 (validRegex!8013 (ite c!1159741 (reg!16606 (regOne!33066 r!7292)) (ite c!1159740 (regOne!33067 (regOne!33066 r!7292)) (regOne!33066 (regOne!33066 r!7292))))))))

(declare-fun b!6368793 () Bool)

(declare-fun e!3866826 () Bool)

(assert (=> b!6368793 (= e!3866826 e!3866829)))

(declare-fun res!2620108 () Bool)

(assert (=> b!6368793 (= res!2620108 (not (nullable!6270 (reg!16606 (regOne!33066 r!7292)))))))

(assert (=> b!6368793 (=> (not res!2620108) (not e!3866829))))

(declare-fun b!6368794 () Bool)

(declare-fun res!2620106 () Bool)

(declare-fun e!3866828 () Bool)

(assert (=> b!6368794 (=> res!2620106 e!3866828)))

(assert (=> b!6368794 (= res!2620106 (not ((_ is Concat!25122) (regOne!33066 r!7292))))))

(declare-fun e!3866824 () Bool)

(assert (=> b!6368794 (= e!3866824 e!3866828)))

(declare-fun b!6368795 () Bool)

(declare-fun e!3866827 () Bool)

(assert (=> b!6368795 (= e!3866828 e!3866827)))

(declare-fun res!2620105 () Bool)

(assert (=> b!6368795 (=> (not res!2620105) (not e!3866827))))

(declare-fun call!543757 () Bool)

(assert (=> b!6368795 (= res!2620105 call!543757)))

(declare-fun b!6368796 () Bool)

(declare-fun e!3866825 () Bool)

(declare-fun call!543756 () Bool)

(assert (=> b!6368796 (= e!3866825 call!543756)))

(declare-fun b!6368797 () Bool)

(assert (=> b!6368797 (= e!3866827 call!543756)))

(declare-fun bm!543751 () Bool)

(assert (=> bm!543751 (= call!543756 (validRegex!8013 (ite c!1159740 (regTwo!33067 (regOne!33066 r!7292)) (regTwo!33066 (regOne!33066 r!7292)))))))

(declare-fun b!6368798 () Bool)

(declare-fun e!3866830 () Bool)

(assert (=> b!6368798 (= e!3866830 e!3866826)))

(assert (=> b!6368798 (= c!1159741 ((_ is Star!16277) (regOne!33066 r!7292)))))

(declare-fun d!1997614 () Bool)

(declare-fun res!2620104 () Bool)

(assert (=> d!1997614 (=> res!2620104 e!3866830)))

(assert (=> d!1997614 (= res!2620104 ((_ is ElementMatch!16277) (regOne!33066 r!7292)))))

(assert (=> d!1997614 (= (validRegex!8013 (regOne!33066 r!7292)) e!3866830)))

(declare-fun b!6368799 () Bool)

(declare-fun res!2620107 () Bool)

(assert (=> b!6368799 (=> (not res!2620107) (not e!3866825))))

(assert (=> b!6368799 (= res!2620107 call!543757)))

(assert (=> b!6368799 (= e!3866824 e!3866825)))

(declare-fun bm!543752 () Bool)

(assert (=> bm!543752 (= call!543757 call!543755)))

(declare-fun b!6368800 () Bool)

(assert (=> b!6368800 (= e!3866826 e!3866824)))

(assert (=> b!6368800 (= c!1159740 ((_ is Union!16277) (regOne!33066 r!7292)))))

(assert (= (and d!1997614 (not res!2620104)) b!6368798))

(assert (= (and b!6368798 c!1159741) b!6368793))

(assert (= (and b!6368798 (not c!1159741)) b!6368800))

(assert (= (and b!6368793 res!2620108) b!6368792))

(assert (= (and b!6368800 c!1159740) b!6368799))

(assert (= (and b!6368800 (not c!1159740)) b!6368794))

(assert (= (and b!6368799 res!2620107) b!6368796))

(assert (= (and b!6368794 (not res!2620106)) b!6368795))

(assert (= (and b!6368795 res!2620105) b!6368797))

(assert (= (or b!6368796 b!6368797) bm!543751))

(assert (= (or b!6368799 b!6368795) bm!543752))

(assert (= (or b!6368792 bm!543752) bm!543750))

(declare-fun m!7172160 () Bool)

(assert (=> bm!543750 m!7172160))

(declare-fun m!7172162 () Bool)

(assert (=> b!6368793 m!7172162))

(declare-fun m!7172164 () Bool)

(assert (=> bm!543751 m!7172164))

(assert (=> d!1997440 d!1997614))

(declare-fun bs!1595212 () Bool)

(declare-fun d!1997616 () Bool)

(assert (= bs!1595212 (and d!1997616 d!1997320)))

(declare-fun lambda!350932 () Int)

(assert (=> bs!1595212 (= lambda!350932 lambda!350867)))

(declare-fun bs!1595213 () Bool)

(assert (= bs!1595213 (and d!1997616 d!1997332)))

(assert (=> bs!1595213 (= lambda!350932 lambda!350870)))

(declare-fun bs!1595214 () Bool)

(assert (= bs!1595214 (and d!1997616 d!1997604)))

(assert (=> bs!1595214 (= lambda!350932 lambda!350930)))

(declare-fun bs!1595215 () Bool)

(assert (= bs!1595215 (and d!1997616 d!1997346)))

(assert (=> bs!1595215 (= lambda!350932 lambda!350879)))

(declare-fun bs!1595216 () Bool)

(assert (= bs!1595216 (and d!1997616 d!1997368)))

(assert (=> bs!1595216 (= lambda!350932 lambda!350882)))

(declare-fun bs!1595217 () Bool)

(assert (= bs!1595217 (and d!1997616 d!1997354)))

(assert (=> bs!1595217 (= lambda!350932 lambda!350880)))

(declare-fun bs!1595218 () Bool)

(assert (= bs!1595218 (and d!1997616 d!1997426)))

(assert (=> bs!1595218 (= lambda!350932 lambda!350901)))

(declare-fun bs!1595219 () Bool)

(assert (= bs!1595219 (and d!1997616 d!1997544)))

(assert (=> bs!1595219 (= lambda!350932 lambda!350926)))

(assert (=> d!1997616 (= (inv!83939 (h!71456 (t!378730 zl!343))) (forall!15454 (exprs!6161 (h!71456 (t!378730 zl!343))) lambda!350932))))

(declare-fun bs!1595220 () Bool)

(assert (= bs!1595220 d!1997616))

(declare-fun m!7172166 () Bool)

(assert (=> bs!1595220 m!7172166))

(assert (=> b!6368366 d!1997616))

(declare-fun b!6368801 () Bool)

(declare-fun e!3866836 () (InoxSet Context!11322))

(declare-fun e!3866833 () (InoxSet Context!11322))

(assert (=> b!6368801 (= e!3866836 e!3866833)))

(declare-fun c!1159742 () Bool)

(assert (=> b!6368801 (= c!1159742 ((_ is Union!16277) (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292))))))))

(declare-fun bm!543759 () Bool)

(declare-fun call!543768 () List!65131)

(declare-fun call!543767 () List!65131)

(assert (=> bm!543759 (= call!543768 call!543767)))

(declare-fun call!543765 () (InoxSet Context!11322))

(declare-fun bm!543760 () Bool)

(declare-fun c!1159743 () Bool)

(declare-fun c!1159744 () Bool)

(assert (=> bm!543760 (= call!543765 (derivationStepZipperDown!1525 (ite c!1159742 (regTwo!33067 (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292))))) (ite c!1159743 (regTwo!33066 (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292))))) (ite c!1159744 (regOne!33066 (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292))))) (reg!16606 (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292)))))))) (ite (or c!1159742 c!1159743) (ite c!1159523 (Context!11323 lt!2367708) (Context!11323 call!543643)) (Context!11323 call!543768)) (h!71454 s!2326)))))

(declare-fun b!6368802 () Bool)

(declare-fun c!1159746 () Bool)

(assert (=> b!6368802 (= c!1159746 ((_ is Star!16277) (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292))))))))

(declare-fun e!3866835 () (InoxSet Context!11322))

(declare-fun e!3866834 () (InoxSet Context!11322))

(assert (=> b!6368802 (= e!3866835 e!3866834)))

(declare-fun b!6368804 () Bool)

(declare-fun e!3866831 () Bool)

(assert (=> b!6368804 (= e!3866831 (nullable!6270 (regOne!33066 (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292)))))))))

(declare-fun b!6368805 () Bool)

(assert (=> b!6368805 (= e!3866834 ((as const (Array Context!11322 Bool)) false))))

(declare-fun b!6368806 () Bool)

(declare-fun e!3866832 () (InoxSet Context!11322))

(assert (=> b!6368806 (= e!3866832 e!3866835)))

(assert (=> b!6368806 (= c!1159744 ((_ is Concat!25122) (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292))))))))

(declare-fun bm!543761 () Bool)

(assert (=> bm!543761 (= call!543767 ($colon$colon!2138 (exprs!6161 (ite c!1159523 (Context!11323 lt!2367708) (Context!11323 call!543643))) (ite (or c!1159743 c!1159744) (regTwo!33066 (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292))))) (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292)))))))))

(declare-fun b!6368807 () Bool)

(assert (=> b!6368807 (= c!1159743 e!3866831)))

(declare-fun res!2620109 () Bool)

(assert (=> b!6368807 (=> (not res!2620109) (not e!3866831))))

(assert (=> b!6368807 (= res!2620109 ((_ is Concat!25122) (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292))))))))

(assert (=> b!6368807 (= e!3866833 e!3866832)))

(declare-fun b!6368808 () Bool)

(declare-fun call!543766 () (InoxSet Context!11322))

(assert (=> b!6368808 (= e!3866835 call!543766)))

(declare-fun bm!543762 () Bool)

(declare-fun call!543769 () (InoxSet Context!11322))

(assert (=> bm!543762 (= call!543766 call!543769)))

(declare-fun b!6368809 () Bool)

(assert (=> b!6368809 (= e!3866834 call!543766)))

(declare-fun b!6368810 () Bool)

(declare-fun call!543764 () (InoxSet Context!11322))

(assert (=> b!6368810 (= e!3866832 ((_ map or) call!543764 call!543769))))

(declare-fun bm!543763 () Bool)

(assert (=> bm!543763 (= call!543769 call!543765)))

(declare-fun bm!543764 () Bool)

(assert (=> bm!543764 (= call!543764 (derivationStepZipperDown!1525 (ite c!1159742 (regOne!33067 (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292))))) (regOne!33066 (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292)))))) (ite c!1159742 (ite c!1159523 (Context!11323 lt!2367708) (Context!11323 call!543643)) (Context!11323 call!543767)) (h!71454 s!2326)))))

(declare-fun b!6368811 () Bool)

(assert (=> b!6368811 (= e!3866833 ((_ map or) call!543764 call!543765))))

(declare-fun d!1997618 () Bool)

(declare-fun c!1159745 () Bool)

(assert (=> d!1997618 (= c!1159745 (and ((_ is ElementMatch!16277) (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292))))) (= (c!1159440 (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292))))) (h!71454 s!2326))))))

(assert (=> d!1997618 (= (derivationStepZipperDown!1525 (ite c!1159523 (regOne!33067 (reg!16606 (regOne!33066 r!7292))) (regOne!33066 (reg!16606 (regOne!33066 r!7292)))) (ite c!1159523 (Context!11323 lt!2367708) (Context!11323 call!543643)) (h!71454 s!2326)) e!3866836)))

(declare-fun b!6368803 () Bool)

(assert (=> b!6368803 (= e!3866836 (store ((as const (Array Context!11322 Bool)) false) (ite c!1159523 (Context!11323 lt!2367708) (Context!11323 call!543643)) true))))

(assert (= (and d!1997618 c!1159745) b!6368803))

(assert (= (and d!1997618 (not c!1159745)) b!6368801))

(assert (= (and b!6368801 c!1159742) b!6368811))

(assert (= (and b!6368801 (not c!1159742)) b!6368807))

(assert (= (and b!6368807 res!2620109) b!6368804))

(assert (= (and b!6368807 c!1159743) b!6368810))

(assert (= (and b!6368807 (not c!1159743)) b!6368806))

(assert (= (and b!6368806 c!1159744) b!6368808))

(assert (= (and b!6368806 (not c!1159744)) b!6368802))

(assert (= (and b!6368802 c!1159746) b!6368809))

(assert (= (and b!6368802 (not c!1159746)) b!6368805))

(assert (= (or b!6368808 b!6368809) bm!543759))

(assert (= (or b!6368808 b!6368809) bm!543762))

(assert (= (or b!6368810 bm!543759) bm!543761))

(assert (= (or b!6368810 bm!543762) bm!543763))

(assert (= (or b!6368811 bm!543763) bm!543760))

(assert (= (or b!6368811 b!6368810) bm!543764))

(declare-fun m!7172168 () Bool)

(assert (=> bm!543760 m!7172168))

(declare-fun m!7172170 () Bool)

(assert (=> bm!543761 m!7172170))

(declare-fun m!7172172 () Bool)

(assert (=> bm!543764 m!7172172))

(declare-fun m!7172174 () Bool)

(assert (=> b!6368803 m!7172174))

(declare-fun m!7172176 () Bool)

(assert (=> b!6368804 m!7172176))

(assert (=> bm!543640 d!1997618))

(declare-fun d!1997620 () Bool)

(assert (=> d!1997620 (= (isEmpty!37121 (findConcatSeparation!2582 (regOne!33066 r!7292) (regTwo!33066 r!7292) Nil!65006 s!2326 s!2326)) (not ((_ is Some!16167) (findConcatSeparation!2582 (regOne!33066 r!7292) (regTwo!33066 r!7292) Nil!65006 s!2326 s!2326))))))

(assert (=> d!1997462 d!1997620))

(assert (=> b!6368133 d!1997504))

(assert (=> d!1997452 d!1997440))

(assert (=> d!1997452 d!1997614))

(assert (=> d!1997452 d!1997462))

(declare-fun d!1997622 () Bool)

(assert (=> d!1997622 (= (Exists!3347 lambda!350910) (choose!47315 lambda!350910))))

(declare-fun bs!1595221 () Bool)

(assert (= bs!1595221 d!1997622))

(declare-fun m!7172178 () Bool)

(assert (=> bs!1595221 m!7172178))

(assert (=> d!1997452 d!1997622))

(declare-fun bs!1595222 () Bool)

(declare-fun d!1997624 () Bool)

(assert (= bs!1595222 (and d!1997624 d!1997454)))

(declare-fun lambda!350935 () Int)

(assert (=> bs!1595222 (= lambda!350935 lambda!350915)))

(declare-fun bs!1595223 () Bool)

(assert (= bs!1595223 (and d!1997624 d!1997452)))

(assert (=> bs!1595223 (= lambda!350935 lambda!350910)))

(declare-fun bs!1595224 () Bool)

(assert (= bs!1595224 (and d!1997624 b!6367726)))

(assert (=> bs!1595224 (not (= lambda!350935 lambda!350860))))

(declare-fun bs!1595225 () Bool)

(assert (= bs!1595225 (and d!1997624 b!6368051)))

(assert (=> bs!1595225 (not (= lambda!350935 lambda!350896))))

(assert (=> bs!1595224 (= lambda!350935 lambda!350859)))

(declare-fun bs!1595226 () Bool)

(assert (= bs!1595226 (and d!1997624 b!6368052)))

(assert (=> bs!1595226 (not (= lambda!350935 lambda!350895))))

(assert (=> bs!1595222 (not (= lambda!350935 lambda!350916))))

(assert (=> d!1997624 true))

(assert (=> d!1997624 true))

(assert (=> d!1997624 true))

(assert (=> d!1997624 (= (isDefined!12871 (findConcatSeparation!2582 (regOne!33066 r!7292) (regTwo!33066 r!7292) Nil!65006 s!2326 s!2326)) (Exists!3347 lambda!350935))))

(assert (=> d!1997624 true))

(declare-fun _$89!2602 () Unit!158439)

(assert (=> d!1997624 (= (choose!47316 (regOne!33066 r!7292) (regTwo!33066 r!7292) s!2326) _$89!2602)))

(declare-fun bs!1595227 () Bool)

(assert (= bs!1595227 d!1997624))

(assert (=> bs!1595227 m!7171320))

(assert (=> bs!1595227 m!7171320))

(assert (=> bs!1595227 m!7171322))

(declare-fun m!7172214 () Bool)

(assert (=> bs!1595227 m!7172214))

(assert (=> d!1997452 d!1997624))

(declare-fun d!1997642 () Bool)

(assert (=> d!1997642 true))

(declare-fun setRes!43411 () Bool)

(assert (=> d!1997642 setRes!43411))

(declare-fun condSetEmpty!43411 () Bool)

(declare-fun res!2620127 () (InoxSet Context!11322))

(assert (=> d!1997642 (= condSetEmpty!43411 (= res!2620127 ((as const (Array Context!11322 Bool)) false)))))

(assert (=> d!1997642 (= (choose!47306 lt!2367707 lambda!350861) res!2620127)))

(declare-fun setIsEmpty!43411 () Bool)

(assert (=> setIsEmpty!43411 setRes!43411))

(declare-fun setNonEmpty!43411 () Bool)

(declare-fun e!3866869 () Bool)

(declare-fun setElem!43411 () Context!11322)

(declare-fun tp!1773177 () Bool)

(assert (=> setNonEmpty!43411 (= setRes!43411 (and tp!1773177 (inv!83939 setElem!43411) e!3866869))))

(declare-fun setRest!43411 () (InoxSet Context!11322))

(assert (=> setNonEmpty!43411 (= res!2620127 ((_ map or) (store ((as const (Array Context!11322 Bool)) false) setElem!43411 true) setRest!43411))))

(declare-fun b!6368863 () Bool)

(declare-fun tp!1773178 () Bool)

(assert (=> b!6368863 (= e!3866869 tp!1773178)))

(assert (= (and d!1997642 condSetEmpty!43411) setIsEmpty!43411))

(assert (= (and d!1997642 (not condSetEmpty!43411)) setNonEmpty!43411))

(assert (= setNonEmpty!43411 b!6368863))

(declare-fun m!7172216 () Bool)

(assert (=> setNonEmpty!43411 m!7172216))

(assert (=> d!1997334 d!1997642))

(assert (=> d!1997406 d!1997402))

(assert (=> d!1997406 d!1997388))

(declare-fun d!1997646 () Bool)

(assert (=> d!1997646 (= (matchR!8460 r!7292 s!2326) (matchRSpec!3378 r!7292 s!2326))))

(assert (=> d!1997646 true))

(declare-fun _$88!5056 () Unit!158439)

(assert (=> d!1997646 (= (choose!47311 r!7292 s!2326) _$88!5056)))

(declare-fun bs!1595229 () Bool)

(assert (= bs!1595229 d!1997646))

(assert (=> bs!1595229 m!7171286))

(assert (=> bs!1595229 m!7171284))

(assert (=> d!1997406 d!1997646))

(assert (=> d!1997406 d!1997342))

(declare-fun b!6368887 () Bool)

(declare-fun e!3866889 () (InoxSet Context!11322))

(declare-fun e!3866886 () (InoxSet Context!11322))

(assert (=> b!6368887 (= e!3866889 e!3866886)))

(declare-fun c!1159773 () Bool)

(assert (=> b!6368887 (= c!1159773 ((_ is Union!16277) (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))))))

(declare-fun bm!543790 () Bool)

(declare-fun call!543799 () List!65131)

(declare-fun call!543798 () List!65131)

(assert (=> bm!543790 (= call!543799 call!543798)))

(declare-fun c!1159774 () Bool)

(declare-fun bm!543791 () Bool)

(declare-fun c!1159775 () Bool)

(declare-fun call!543796 () (InoxSet Context!11322))

(assert (=> bm!543791 (= call!543796 (derivationStepZipperDown!1525 (ite c!1159773 (regTwo!33067 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))) (ite c!1159774 (regTwo!33066 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))) (ite c!1159775 (regOne!33066 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))) (reg!16606 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343))))))))))) (ite (or c!1159773 c!1159774) (Context!11323 (t!378729 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))) (Context!11323 call!543799)) (h!71454 s!2326)))))

(declare-fun b!6368888 () Bool)

(declare-fun c!1159777 () Bool)

(assert (=> b!6368888 (= c!1159777 ((_ is Star!16277) (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))))))

(declare-fun e!3866888 () (InoxSet Context!11322))

(declare-fun e!3866887 () (InoxSet Context!11322))

(assert (=> b!6368888 (= e!3866888 e!3866887)))

(declare-fun b!6368890 () Bool)

(declare-fun e!3866884 () Bool)

(assert (=> b!6368890 (= e!3866884 (nullable!6270 (regOne!33066 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343))))))))))))

(declare-fun b!6368891 () Bool)

(assert (=> b!6368891 (= e!3866887 ((as const (Array Context!11322 Bool)) false))))

(declare-fun b!6368892 () Bool)

(declare-fun e!3866885 () (InoxSet Context!11322))

(assert (=> b!6368892 (= e!3866885 e!3866888)))

(assert (=> b!6368892 (= c!1159775 ((_ is Concat!25122) (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))))))

(declare-fun bm!543792 () Bool)

(assert (=> bm!543792 (= call!543798 ($colon$colon!2138 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343))))))))) (ite (or c!1159774 c!1159775) (regTwo!33066 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))) (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343))))))))))))

(declare-fun b!6368893 () Bool)

(assert (=> b!6368893 (= c!1159774 e!3866884)))

(declare-fun res!2620133 () Bool)

(assert (=> b!6368893 (=> (not res!2620133) (not e!3866884))))

(assert (=> b!6368893 (= res!2620133 ((_ is Concat!25122) (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))))))

(assert (=> b!6368893 (= e!3866886 e!3866885)))

(declare-fun b!6368894 () Bool)

(declare-fun call!543797 () (InoxSet Context!11322))

(assert (=> b!6368894 (= e!3866888 call!543797)))

(declare-fun bm!543793 () Bool)

(declare-fun call!543800 () (InoxSet Context!11322))

(assert (=> bm!543793 (= call!543797 call!543800)))

(declare-fun b!6368895 () Bool)

(assert (=> b!6368895 (= e!3866887 call!543797)))

(declare-fun b!6368896 () Bool)

(declare-fun call!543795 () (InoxSet Context!11322))

(assert (=> b!6368896 (= e!3866885 ((_ map or) call!543795 call!543800))))

(declare-fun bm!543794 () Bool)

(assert (=> bm!543794 (= call!543800 call!543796)))

(declare-fun bm!543795 () Bool)

(assert (=> bm!543795 (= call!543795 (derivationStepZipperDown!1525 (ite c!1159773 (regOne!33067 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))) (regOne!33066 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343))))))))) (ite c!1159773 (Context!11323 (t!378729 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))) (Context!11323 call!543798)) (h!71454 s!2326)))))

(declare-fun b!6368897 () Bool)

(assert (=> b!6368897 (= e!3866886 ((_ map or) call!543795 call!543796))))

(declare-fun d!1997654 () Bool)

(declare-fun c!1159776 () Bool)

(assert (=> d!1997654 (= c!1159776 (and ((_ is ElementMatch!16277) (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))) (= (c!1159440 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))) (h!71454 s!2326))))))

(assert (=> d!1997654 (= (derivationStepZipperDown!1525 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343))))))) (Context!11323 (t!378729 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))) (h!71454 s!2326)) e!3866889)))

(declare-fun b!6368889 () Bool)

(assert (=> b!6368889 (= e!3866889 (store ((as const (Array Context!11322 Bool)) false) (Context!11323 (t!378729 (exprs!6161 (Context!11323 (Cons!65007 (h!71455 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343)))))))) true))))

(assert (= (and d!1997654 c!1159776) b!6368889))

(assert (= (and d!1997654 (not c!1159776)) b!6368887))

(assert (= (and b!6368887 c!1159773) b!6368897))

(assert (= (and b!6368887 (not c!1159773)) b!6368893))

(assert (= (and b!6368893 res!2620133) b!6368890))

(assert (= (and b!6368893 c!1159774) b!6368896))

(assert (= (and b!6368893 (not c!1159774)) b!6368892))

(assert (= (and b!6368892 c!1159775) b!6368894))

(assert (= (and b!6368892 (not c!1159775)) b!6368888))

(assert (= (and b!6368888 c!1159777) b!6368895))

(assert (= (and b!6368888 (not c!1159777)) b!6368891))

(assert (= (or b!6368894 b!6368895) bm!543790))

(assert (= (or b!6368894 b!6368895) bm!543793))

(assert (= (or b!6368896 bm!543790) bm!543792))

(assert (= (or b!6368896 bm!543793) bm!543794))

(assert (= (or b!6368897 bm!543794) bm!543791))

(assert (= (or b!6368897 b!6368896) bm!543795))

(declare-fun m!7172236 () Bool)

(assert (=> bm!543791 m!7172236))

(declare-fun m!7172248 () Bool)

(assert (=> bm!543792 m!7172248))

(declare-fun m!7172254 () Bool)

(assert (=> bm!543795 m!7172254))

(declare-fun m!7172256 () Bool)

(assert (=> b!6368889 m!7172256))

(declare-fun m!7172258 () Bool)

(assert (=> b!6368890 m!7172258))

(assert (=> bm!543669 d!1997654))

(declare-fun d!1997658 () Bool)

(assert (=> d!1997658 (= (isEmpty!37117 (tail!12129 (exprs!6161 (h!71456 zl!343)))) ((_ is Nil!65007) (tail!12129 (exprs!6161 (h!71456 zl!343)))))))

(assert (=> b!6368218 d!1997658))

(declare-fun d!1997662 () Bool)

(assert (=> d!1997662 (= (tail!12129 (exprs!6161 (h!71456 zl!343))) (t!378729 (exprs!6161 (h!71456 zl!343))))))

(assert (=> b!6368218 d!1997662))

(declare-fun d!1997664 () Bool)

(declare-fun res!2620134 () Bool)

(declare-fun e!3866890 () Bool)

(assert (=> d!1997664 (=> res!2620134 e!3866890)))

(assert (=> d!1997664 (= res!2620134 ((_ is Nil!65007) (exprs!6161 (Context!11323 (Cons!65007 (reg!16606 (regOne!33066 r!7292)) Nil!65007)))))))

(assert (=> d!1997664 (= (forall!15454 (exprs!6161 (Context!11323 (Cons!65007 (reg!16606 (regOne!33066 r!7292)) Nil!65007))) lambda!350879) e!3866890)))

(declare-fun b!6368898 () Bool)

(declare-fun e!3866891 () Bool)

(assert (=> b!6368898 (= e!3866890 e!3866891)))

(declare-fun res!2620135 () Bool)

(assert (=> b!6368898 (=> (not res!2620135) (not e!3866891))))

(assert (=> b!6368898 (= res!2620135 (dynLambda!25790 lambda!350879 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (reg!16606 (regOne!33066 r!7292)) Nil!65007))))))))

(declare-fun b!6368899 () Bool)

(assert (=> b!6368899 (= e!3866891 (forall!15454 (t!378729 (exprs!6161 (Context!11323 (Cons!65007 (reg!16606 (regOne!33066 r!7292)) Nil!65007)))) lambda!350879))))

(assert (= (and d!1997664 (not res!2620134)) b!6368898))

(assert (= (and b!6368898 res!2620135) b!6368899))

(declare-fun b_lambda!242061 () Bool)

(assert (=> (not b_lambda!242061) (not b!6368898)))

(declare-fun m!7172262 () Bool)

(assert (=> b!6368898 m!7172262))

(declare-fun m!7172264 () Bool)

(assert (=> b!6368899 m!7172264))

(assert (=> d!1997346 d!1997664))

(assert (=> b!6368137 d!1997516))

(assert (=> b!6368137 d!1997506))

(assert (=> d!1997468 d!1997556))

(declare-fun d!1997666 () Bool)

(assert (=> d!1997666 (= (isUnion!1115 lt!2367730) ((_ is Union!16277) lt!2367730))))

(assert (=> b!6367782 d!1997666))

(declare-fun b!6368900 () Bool)

(declare-fun e!3866897 () Bool)

(declare-fun call!543801 () Bool)

(assert (=> b!6368900 (= e!3866897 call!543801)))

(declare-fun c!1159779 () Bool)

(declare-fun c!1159778 () Bool)

(declare-fun bm!543796 () Bool)

(assert (=> bm!543796 (= call!543801 (validRegex!8013 (ite c!1159779 (reg!16606 (ite c!1159476 (regTwo!33067 r!7292) (regTwo!33066 r!7292))) (ite c!1159778 (regOne!33067 (ite c!1159476 (regTwo!33067 r!7292) (regTwo!33066 r!7292))) (regOne!33066 (ite c!1159476 (regTwo!33067 r!7292) (regTwo!33066 r!7292)))))))))

(declare-fun b!6368901 () Bool)

(declare-fun e!3866894 () Bool)

(assert (=> b!6368901 (= e!3866894 e!3866897)))

(declare-fun res!2620140 () Bool)

(assert (=> b!6368901 (= res!2620140 (not (nullable!6270 (reg!16606 (ite c!1159476 (regTwo!33067 r!7292) (regTwo!33066 r!7292))))))))

(assert (=> b!6368901 (=> (not res!2620140) (not e!3866897))))

(declare-fun b!6368902 () Bool)

(declare-fun res!2620138 () Bool)

(declare-fun e!3866896 () Bool)

(assert (=> b!6368902 (=> res!2620138 e!3866896)))

(assert (=> b!6368902 (= res!2620138 (not ((_ is Concat!25122) (ite c!1159476 (regTwo!33067 r!7292) (regTwo!33066 r!7292)))))))

(declare-fun e!3866892 () Bool)

(assert (=> b!6368902 (= e!3866892 e!3866896)))

(declare-fun b!6368903 () Bool)

(declare-fun e!3866895 () Bool)

(assert (=> b!6368903 (= e!3866896 e!3866895)))

(declare-fun res!2620137 () Bool)

(assert (=> b!6368903 (=> (not res!2620137) (not e!3866895))))

(declare-fun call!543803 () Bool)

(assert (=> b!6368903 (= res!2620137 call!543803)))

(declare-fun b!6368904 () Bool)

(declare-fun e!3866893 () Bool)

(declare-fun call!543802 () Bool)

(assert (=> b!6368904 (= e!3866893 call!543802)))

(declare-fun b!6368905 () Bool)

(assert (=> b!6368905 (= e!3866895 call!543802)))

(declare-fun bm!543797 () Bool)

(assert (=> bm!543797 (= call!543802 (validRegex!8013 (ite c!1159778 (regTwo!33067 (ite c!1159476 (regTwo!33067 r!7292) (regTwo!33066 r!7292))) (regTwo!33066 (ite c!1159476 (regTwo!33067 r!7292) (regTwo!33066 r!7292))))))))

(declare-fun b!6368906 () Bool)

(declare-fun e!3866898 () Bool)

(assert (=> b!6368906 (= e!3866898 e!3866894)))

(assert (=> b!6368906 (= c!1159779 ((_ is Star!16277) (ite c!1159476 (regTwo!33067 r!7292) (regTwo!33066 r!7292))))))

(declare-fun d!1997668 () Bool)

(declare-fun res!2620136 () Bool)

(assert (=> d!1997668 (=> res!2620136 e!3866898)))

(assert (=> d!1997668 (= res!2620136 ((_ is ElementMatch!16277) (ite c!1159476 (regTwo!33067 r!7292) (regTwo!33066 r!7292))))))

(assert (=> d!1997668 (= (validRegex!8013 (ite c!1159476 (regTwo!33067 r!7292) (regTwo!33066 r!7292))) e!3866898)))

(declare-fun b!6368907 () Bool)

(declare-fun res!2620139 () Bool)

(assert (=> b!6368907 (=> (not res!2620139) (not e!3866893))))

(assert (=> b!6368907 (= res!2620139 call!543803)))

(assert (=> b!6368907 (= e!3866892 e!3866893)))

(declare-fun bm!543798 () Bool)

(assert (=> bm!543798 (= call!543803 call!543801)))

(declare-fun b!6368908 () Bool)

(assert (=> b!6368908 (= e!3866894 e!3866892)))

(assert (=> b!6368908 (= c!1159778 ((_ is Union!16277) (ite c!1159476 (regTwo!33067 r!7292) (regTwo!33066 r!7292))))))

(assert (= (and d!1997668 (not res!2620136)) b!6368906))

(assert (= (and b!6368906 c!1159779) b!6368901))

(assert (= (and b!6368906 (not c!1159779)) b!6368908))

(assert (= (and b!6368901 res!2620140) b!6368900))

(assert (= (and b!6368908 c!1159778) b!6368907))

(assert (= (and b!6368908 (not c!1159778)) b!6368902))

(assert (= (and b!6368907 res!2620139) b!6368904))

(assert (= (and b!6368902 (not res!2620138)) b!6368903))

(assert (= (and b!6368903 res!2620137) b!6368905))

(assert (= (or b!6368904 b!6368905) bm!543797))

(assert (= (or b!6368907 b!6368903) bm!543798))

(assert (= (or b!6368900 bm!543798) bm!543796))

(declare-fun m!7172266 () Bool)

(assert (=> bm!543796 m!7172266))

(declare-fun m!7172268 () Bool)

(assert (=> b!6368901 m!7172268))

(declare-fun m!7172270 () Bool)

(assert (=> bm!543797 m!7172270))

(assert (=> bm!543603 d!1997668))

(declare-fun d!1997670 () Bool)

(declare-fun lambda!350939 () Int)

(declare-fun exists!2579 ((InoxSet Context!11322) Int) Bool)

(assert (=> d!1997670 (= (nullableZipper!2043 lt!2367722) (exists!2579 lt!2367722 lambda!350939))))

(declare-fun bs!1595237 () Bool)

(assert (= bs!1595237 d!1997670))

(declare-fun m!7172272 () Bool)

(assert (=> bs!1595237 m!7172272))

(assert (=> b!6368221 d!1997670))

(declare-fun d!1997672 () Bool)

(assert (=> d!1997672 (= (nullable!6270 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343))))) (nullableFct!2217 (regOne!33066 (h!71455 (exprs!6161 (h!71456 zl!343))))))))

(declare-fun bs!1595238 () Bool)

(assert (= bs!1595238 d!1997672))

(declare-fun m!7172274 () Bool)

(assert (=> bs!1595238 m!7172274))

(assert (=> b!6368168 d!1997672))

(declare-fun b!6368923 () Bool)

(declare-fun res!2620147 () Bool)

(declare-fun e!3866905 () Bool)

(assert (=> b!6368923 (=> (not res!2620147) (not e!3866905))))

(declare-fun lt!2367839 () List!65130)

(assert (=> b!6368923 (= res!2620147 (= (size!40353 lt!2367839) (+ (size!40353 (_1!36559 (get!22499 lt!2367789))) (size!40353 (_2!36559 (get!22499 lt!2367789))))))))

(declare-fun b!6368924 () Bool)

(assert (=> b!6368924 (= e!3866905 (or (not (= (_2!36559 (get!22499 lt!2367789)) Nil!65006)) (= lt!2367839 (_1!36559 (get!22499 lt!2367789)))))))

(declare-fun b!6368921 () Bool)

(declare-fun e!3866906 () List!65130)

(assert (=> b!6368921 (= e!3866906 (_2!36559 (get!22499 lt!2367789)))))

(declare-fun d!1997674 () Bool)

(assert (=> d!1997674 e!3866905))

(declare-fun res!2620148 () Bool)

(assert (=> d!1997674 (=> (not res!2620148) (not e!3866905))))

(assert (=> d!1997674 (= res!2620148 (= (content!12287 lt!2367839) ((_ map or) (content!12287 (_1!36559 (get!22499 lt!2367789))) (content!12287 (_2!36559 (get!22499 lt!2367789))))))))

(assert (=> d!1997674 (= lt!2367839 e!3866906)))

(declare-fun c!1159785 () Bool)

(assert (=> d!1997674 (= c!1159785 ((_ is Nil!65006) (_1!36559 (get!22499 lt!2367789))))))

(assert (=> d!1997674 (= (++!14345 (_1!36559 (get!22499 lt!2367789)) (_2!36559 (get!22499 lt!2367789))) lt!2367839)))

(declare-fun b!6368922 () Bool)

(assert (=> b!6368922 (= e!3866906 (Cons!65006 (h!71454 (_1!36559 (get!22499 lt!2367789))) (++!14345 (t!378728 (_1!36559 (get!22499 lt!2367789))) (_2!36559 (get!22499 lt!2367789)))))))

(assert (= (and d!1997674 c!1159785) b!6368921))

(assert (= (and d!1997674 (not c!1159785)) b!6368922))

(assert (= (and d!1997674 res!2620148) b!6368923))

(assert (= (and b!6368923 res!2620147) b!6368924))

(declare-fun m!7172290 () Bool)

(assert (=> b!6368923 m!7172290))

(declare-fun m!7172292 () Bool)

(assert (=> b!6368923 m!7172292))

(declare-fun m!7172294 () Bool)

(assert (=> b!6368923 m!7172294))

(declare-fun m!7172296 () Bool)

(assert (=> d!1997674 m!7172296))

(declare-fun m!7172298 () Bool)

(assert (=> d!1997674 m!7172298))

(declare-fun m!7172300 () Bool)

(assert (=> d!1997674 m!7172300))

(declare-fun m!7172302 () Bool)

(assert (=> b!6368922 m!7172302))

(assert (=> b!6368299 d!1997674))

(assert (=> b!6368299 d!1997562))

(declare-fun d!1997678 () Bool)

(assert (=> d!1997678 (= (Exists!3347 lambda!350915) (choose!47315 lambda!350915))))

(declare-fun bs!1595239 () Bool)

(assert (= bs!1595239 d!1997678))

(declare-fun m!7172304 () Bool)

(assert (=> bs!1595239 m!7172304))

(assert (=> d!1997454 d!1997678))

(declare-fun d!1997680 () Bool)

(assert (=> d!1997680 (= (Exists!3347 lambda!350916) (choose!47315 lambda!350916))))

(declare-fun bs!1595240 () Bool)

(assert (= bs!1595240 d!1997680))

(declare-fun m!7172306 () Bool)

(assert (=> bs!1595240 m!7172306))

(assert (=> d!1997454 d!1997680))

(declare-fun bs!1595243 () Bool)

(declare-fun d!1997682 () Bool)

(assert (= bs!1595243 (and d!1997682 d!1997454)))

(declare-fun lambda!350944 () Int)

(assert (=> bs!1595243 (= lambda!350944 lambda!350915)))

(declare-fun bs!1595244 () Bool)

(assert (= bs!1595244 (and d!1997682 d!1997452)))

(assert (=> bs!1595244 (= lambda!350944 lambda!350910)))

(declare-fun bs!1595245 () Bool)

(assert (= bs!1595245 (and d!1997682 b!6367726)))

(assert (=> bs!1595245 (not (= lambda!350944 lambda!350860))))

(declare-fun bs!1595246 () Bool)

(assert (= bs!1595246 (and d!1997682 b!6368051)))

(assert (=> bs!1595246 (not (= lambda!350944 lambda!350896))))

(assert (=> bs!1595245 (= lambda!350944 lambda!350859)))

(declare-fun bs!1595247 () Bool)

(assert (= bs!1595247 (and d!1997682 d!1997624)))

(assert (=> bs!1595247 (= lambda!350944 lambda!350935)))

(declare-fun bs!1595248 () Bool)

(assert (= bs!1595248 (and d!1997682 b!6368052)))

(assert (=> bs!1595248 (not (= lambda!350944 lambda!350895))))

(assert (=> bs!1595243 (not (= lambda!350944 lambda!350916))))

(assert (=> d!1997682 true))

(assert (=> d!1997682 true))

(assert (=> d!1997682 true))

(declare-fun lambda!350945 () Int)

(assert (=> bs!1595243 (not (= lambda!350945 lambda!350915))))

(assert (=> bs!1595244 (not (= lambda!350945 lambda!350910))))

(declare-fun bs!1595249 () Bool)

(assert (= bs!1595249 d!1997682))

(assert (=> bs!1595249 (not (= lambda!350945 lambda!350944))))

(assert (=> bs!1595245 (= lambda!350945 lambda!350860)))

(assert (=> bs!1595246 (= lambda!350945 lambda!350896)))

(assert (=> bs!1595245 (not (= lambda!350945 lambda!350859))))

(assert (=> bs!1595247 (not (= lambda!350945 lambda!350935))))

(assert (=> bs!1595248 (not (= lambda!350945 lambda!350895))))

(assert (=> bs!1595243 (= lambda!350945 lambda!350916)))

(assert (=> d!1997682 true))

(assert (=> d!1997682 true))

(assert (=> d!1997682 true))

(assert (=> d!1997682 (= (Exists!3347 lambda!350944) (Exists!3347 lambda!350945))))

(assert (=> d!1997682 true))

(declare-fun _$90!2226 () Unit!158439)

(assert (=> d!1997682 (= (choose!47317 (regOne!33066 r!7292) (regTwo!33066 r!7292) s!2326) _$90!2226)))

(declare-fun m!7172352 () Bool)

(assert (=> bs!1595249 m!7172352))

(declare-fun m!7172354 () Bool)

(assert (=> bs!1595249 m!7172354))

(assert (=> d!1997454 d!1997682))

(assert (=> d!1997454 d!1997614))

(declare-fun bs!1595250 () Bool)

(declare-fun d!1997694 () Bool)

(assert (= bs!1595250 (and d!1997694 d!1997670)))

(declare-fun lambda!350946 () Int)

(assert (=> bs!1595250 (= lambda!350946 lambda!350939)))

(assert (=> d!1997694 (= (nullableZipper!2043 ((_ map or) lt!2367715 lt!2367722)) (exists!2579 ((_ map or) lt!2367715 lt!2367722) lambda!350946))))

(declare-fun bs!1595251 () Bool)

(assert (= bs!1595251 d!1997694))

(declare-fun m!7172358 () Bool)

(assert (=> bs!1595251 m!7172358))

(assert (=> b!6367889 d!1997694))

(declare-fun b!6368971 () Bool)

(declare-fun e!3866944 () (InoxSet Context!11322))

(declare-fun e!3866941 () (InoxSet Context!11322))

(assert (=> b!6368971 (= e!3866944 e!3866941)))

(declare-fun c!1159793 () Bool)

(assert (=> b!6368971 (= c!1159793 ((_ is Union!16277) (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292))))))))))

(declare-fun bm!543805 () Bool)

(declare-fun call!543814 () List!65131)

(declare-fun call!543813 () List!65131)

(assert (=> bm!543805 (= call!543814 call!543813)))

(declare-fun c!1159794 () Bool)

(declare-fun c!1159795 () Bool)

(declare-fun bm!543806 () Bool)

(declare-fun call!543811 () (InoxSet Context!11322))

(assert (=> bm!543806 (= call!543811 (derivationStepZipperDown!1525 (ite c!1159793 (regTwo!33067 (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292))))))) (ite c!1159794 (regTwo!33066 (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292))))))) (ite c!1159795 (regOne!33066 (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292))))))) (reg!16606 (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292)))))))))) (ite (or c!1159793 c!1159794) (ite (or c!1159523 c!1159524) (Context!11323 lt!2367708) (Context!11323 call!543644)) (Context!11323 call!543814)) (h!71454 s!2326)))))

(declare-fun b!6368972 () Bool)

(declare-fun c!1159797 () Bool)

(assert (=> b!6368972 (= c!1159797 ((_ is Star!16277) (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292))))))))))

(declare-fun e!3866943 () (InoxSet Context!11322))

(declare-fun e!3866942 () (InoxSet Context!11322))

(assert (=> b!6368972 (= e!3866943 e!3866942)))

(declare-fun b!6368974 () Bool)

(declare-fun e!3866939 () Bool)

(assert (=> b!6368974 (= e!3866939 (nullable!6270 (regOne!33066 (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292)))))))))))

(declare-fun b!6368975 () Bool)

(assert (=> b!6368975 (= e!3866942 ((as const (Array Context!11322 Bool)) false))))

(declare-fun b!6368976 () Bool)

(declare-fun e!3866940 () (InoxSet Context!11322))

(assert (=> b!6368976 (= e!3866940 e!3866943)))

(assert (=> b!6368976 (= c!1159795 ((_ is Concat!25122) (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292))))))))))

(declare-fun bm!543807 () Bool)

(assert (=> bm!543807 (= call!543813 ($colon$colon!2138 (exprs!6161 (ite (or c!1159523 c!1159524) (Context!11323 lt!2367708) (Context!11323 call!543644))) (ite (or c!1159794 c!1159795) (regTwo!33066 (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292))))))) (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292)))))))))))

(declare-fun b!6368977 () Bool)

(assert (=> b!6368977 (= c!1159794 e!3866939)))

(declare-fun res!2620181 () Bool)

(assert (=> b!6368977 (=> (not res!2620181) (not e!3866939))))

(assert (=> b!6368977 (= res!2620181 ((_ is Concat!25122) (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292))))))))))

(assert (=> b!6368977 (= e!3866941 e!3866940)))

(declare-fun b!6368978 () Bool)

(declare-fun call!543812 () (InoxSet Context!11322))

(assert (=> b!6368978 (= e!3866943 call!543812)))

(declare-fun bm!543808 () Bool)

(declare-fun call!543815 () (InoxSet Context!11322))

(assert (=> bm!543808 (= call!543812 call!543815)))

(declare-fun b!6368979 () Bool)

(assert (=> b!6368979 (= e!3866942 call!543812)))

(declare-fun b!6368980 () Bool)

(declare-fun call!543810 () (InoxSet Context!11322))

(assert (=> b!6368980 (= e!3866940 ((_ map or) call!543810 call!543815))))

(declare-fun bm!543809 () Bool)

(assert (=> bm!543809 (= call!543815 call!543811)))

(declare-fun bm!543810 () Bool)

(assert (=> bm!543810 (= call!543810 (derivationStepZipperDown!1525 (ite c!1159793 (regOne!33067 (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292))))))) (regOne!33066 (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292)))))))) (ite c!1159793 (ite (or c!1159523 c!1159524) (Context!11323 lt!2367708) (Context!11323 call!543644)) (Context!11323 call!543813)) (h!71454 s!2326)))))

(declare-fun b!6368981 () Bool)

(assert (=> b!6368981 (= e!3866941 ((_ map or) call!543810 call!543811))))

(declare-fun c!1159796 () Bool)

(declare-fun d!1997696 () Bool)

(assert (=> d!1997696 (= c!1159796 (and ((_ is ElementMatch!16277) (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292))))))) (= (c!1159440 (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292))))))) (h!71454 s!2326))))))

(assert (=> d!1997696 (= (derivationStepZipperDown!1525 (ite c!1159523 (regTwo!33067 (reg!16606 (regOne!33066 r!7292))) (ite c!1159524 (regTwo!33066 (reg!16606 (regOne!33066 r!7292))) (ite c!1159525 (regOne!33066 (reg!16606 (regOne!33066 r!7292))) (reg!16606 (reg!16606 (regOne!33066 r!7292)))))) (ite (or c!1159523 c!1159524) (Context!11323 lt!2367708) (Context!11323 call!543644)) (h!71454 s!2326)) e!3866944)))

(declare-fun b!6368973 () Bool)

(assert (=> b!6368973 (= e!3866944 (store ((as const (Array Context!11322 Bool)) false) (ite (or c!1159523 c!1159524) (Context!11323 lt!2367708) (Context!11323 call!543644)) true))))

(assert (= (and d!1997696 c!1159796) b!6368973))

(assert (= (and d!1997696 (not c!1159796)) b!6368971))

(assert (= (and b!6368971 c!1159793) b!6368981))

(assert (= (and b!6368971 (not c!1159793)) b!6368977))

(assert (= (and b!6368977 res!2620181) b!6368974))

(assert (= (and b!6368977 c!1159794) b!6368980))

(assert (= (and b!6368977 (not c!1159794)) b!6368976))

(assert (= (and b!6368976 c!1159795) b!6368978))

(assert (= (and b!6368976 (not c!1159795)) b!6368972))

(assert (= (and b!6368972 c!1159797) b!6368979))

(assert (= (and b!6368972 (not c!1159797)) b!6368975))

(assert (= (or b!6368978 b!6368979) bm!543805))

(assert (= (or b!6368978 b!6368979) bm!543808))

(assert (= (or b!6368980 bm!543805) bm!543807))

(assert (= (or b!6368980 bm!543808) bm!543809))

(assert (= (or b!6368981 bm!543809) bm!543806))

(assert (= (or b!6368981 b!6368980) bm!543810))

(declare-fun m!7172368 () Bool)

(assert (=> bm!543806 m!7172368))

(declare-fun m!7172370 () Bool)

(assert (=> bm!543807 m!7172370))

(declare-fun m!7172372 () Bool)

(assert (=> bm!543810 m!7172372))

(declare-fun m!7172374 () Bool)

(assert (=> b!6368973 m!7172374))

(declare-fun m!7172376 () Bool)

(assert (=> b!6368974 m!7172376))

(assert (=> bm!543636 d!1997696))

(declare-fun bm!543811 () Bool)

(declare-fun call!543816 () Bool)

(declare-fun c!1159798 () Bool)

(assert (=> bm!543811 (= call!543816 (nullable!6270 (ite c!1159798 (regOne!33067 (regOne!33066 (regOne!33066 r!7292))) (regOne!33066 (regOne!33066 (regOne!33066 r!7292))))))))

(declare-fun b!6368982 () Bool)

(declare-fun e!3866945 () Bool)

(declare-fun e!3866950 () Bool)

(assert (=> b!6368982 (= e!3866945 e!3866950)))

(declare-fun res!2620182 () Bool)

(assert (=> b!6368982 (= res!2620182 call!543816)))

(assert (=> b!6368982 (=> res!2620182 e!3866950)))

(declare-fun d!1997704 () Bool)

(declare-fun res!2620186 () Bool)

(declare-fun e!3866946 () Bool)

(assert (=> d!1997704 (=> res!2620186 e!3866946)))

(assert (=> d!1997704 (= res!2620186 ((_ is EmptyExpr!16277) (regOne!33066 (regOne!33066 r!7292))))))

(assert (=> d!1997704 (= (nullableFct!2217 (regOne!33066 (regOne!33066 r!7292))) e!3866946)))

(declare-fun b!6368983 () Bool)

(declare-fun e!3866949 () Bool)

(declare-fun e!3866947 () Bool)

(assert (=> b!6368983 (= e!3866949 e!3866947)))

(declare-fun res!2620183 () Bool)

(assert (=> b!6368983 (=> res!2620183 e!3866947)))

(assert (=> b!6368983 (= res!2620183 ((_ is Star!16277) (regOne!33066 (regOne!33066 r!7292))))))

(declare-fun bm!543812 () Bool)

(declare-fun call!543817 () Bool)

(assert (=> bm!543812 (= call!543817 (nullable!6270 (ite c!1159798 (regTwo!33067 (regOne!33066 (regOne!33066 r!7292))) (regTwo!33066 (regOne!33066 (regOne!33066 r!7292))))))))

(declare-fun b!6368984 () Bool)

(declare-fun e!3866948 () Bool)

(assert (=> b!6368984 (= e!3866948 call!543817)))

(declare-fun b!6368985 () Bool)

(assert (=> b!6368985 (= e!3866947 e!3866945)))

(assert (=> b!6368985 (= c!1159798 ((_ is Union!16277) (regOne!33066 (regOne!33066 r!7292))))))

(declare-fun b!6368986 () Bool)

(assert (=> b!6368986 (= e!3866945 e!3866948)))

(declare-fun res!2620184 () Bool)

(assert (=> b!6368986 (= res!2620184 call!543816)))

(assert (=> b!6368986 (=> (not res!2620184) (not e!3866948))))

(declare-fun b!6368987 () Bool)

(assert (=> b!6368987 (= e!3866946 e!3866949)))

(declare-fun res!2620185 () Bool)

(assert (=> b!6368987 (=> (not res!2620185) (not e!3866949))))

(assert (=> b!6368987 (= res!2620185 (and (not ((_ is EmptyLang!16277) (regOne!33066 (regOne!33066 r!7292)))) (not ((_ is ElementMatch!16277) (regOne!33066 (regOne!33066 r!7292))))))))

(declare-fun b!6368988 () Bool)

(assert (=> b!6368988 (= e!3866950 call!543817)))

(assert (= (and d!1997704 (not res!2620186)) b!6368987))

(assert (= (and b!6368987 res!2620185) b!6368983))

(assert (= (and b!6368983 (not res!2620183)) b!6368985))

(assert (= (and b!6368985 c!1159798) b!6368982))

(assert (= (and b!6368985 (not c!1159798)) b!6368986))

(assert (= (and b!6368982 (not res!2620182)) b!6368988))

(assert (= (and b!6368986 res!2620184) b!6368984))

(assert (= (or b!6368988 b!6368984) bm!543812))

(assert (= (or b!6368982 b!6368986) bm!543811))

(declare-fun m!7172382 () Bool)

(assert (=> bm!543811 m!7172382))

(declare-fun m!7172384 () Bool)

(assert (=> bm!543812 m!7172384))

(assert (=> d!1997464 d!1997704))

(declare-fun b!6368998 () Bool)

(declare-fun e!3866963 () (InoxSet Context!11322))

(declare-fun e!3866960 () (InoxSet Context!11322))

(assert (=> b!6368998 (= e!3866963 e!3866960)))

(declare-fun c!1159801 () Bool)

(assert (=> b!6368998 (= c!1159801 ((_ is Union!16277) (h!71455 (exprs!6161 lt!2367709))))))

(declare-fun bm!543816 () Bool)

(declare-fun call!543825 () List!65131)

(declare-fun call!543824 () List!65131)

(assert (=> bm!543816 (= call!543825 call!543824)))

(declare-fun c!1159802 () Bool)

(declare-fun call!543822 () (InoxSet Context!11322))

(declare-fun bm!543817 () Bool)

(declare-fun c!1159803 () Bool)

(assert (=> bm!543817 (= call!543822 (derivationStepZipperDown!1525 (ite c!1159801 (regTwo!33067 (h!71455 (exprs!6161 lt!2367709))) (ite c!1159802 (regTwo!33066 (h!71455 (exprs!6161 lt!2367709))) (ite c!1159803 (regOne!33066 (h!71455 (exprs!6161 lt!2367709))) (reg!16606 (h!71455 (exprs!6161 lt!2367709)))))) (ite (or c!1159801 c!1159802) (Context!11323 (t!378729 (exprs!6161 lt!2367709))) (Context!11323 call!543825)) (h!71454 s!2326)))))

(declare-fun b!6368999 () Bool)

(declare-fun c!1159805 () Bool)

(assert (=> b!6368999 (= c!1159805 ((_ is Star!16277) (h!71455 (exprs!6161 lt!2367709))))))

(declare-fun e!3866962 () (InoxSet Context!11322))

(declare-fun e!3866961 () (InoxSet Context!11322))

(assert (=> b!6368999 (= e!3866962 e!3866961)))

(declare-fun b!6369001 () Bool)

(declare-fun e!3866958 () Bool)

(assert (=> b!6369001 (= e!3866958 (nullable!6270 (regOne!33066 (h!71455 (exprs!6161 lt!2367709)))))))

(declare-fun b!6369002 () Bool)

(assert (=> b!6369002 (= e!3866961 ((as const (Array Context!11322 Bool)) false))))

(declare-fun b!6369003 () Bool)

(declare-fun e!3866959 () (InoxSet Context!11322))

(assert (=> b!6369003 (= e!3866959 e!3866962)))

(assert (=> b!6369003 (= c!1159803 ((_ is Concat!25122) (h!71455 (exprs!6161 lt!2367709))))))

(declare-fun bm!543818 () Bool)

(assert (=> bm!543818 (= call!543824 ($colon$colon!2138 (exprs!6161 (Context!11323 (t!378729 (exprs!6161 lt!2367709)))) (ite (or c!1159802 c!1159803) (regTwo!33066 (h!71455 (exprs!6161 lt!2367709))) (h!71455 (exprs!6161 lt!2367709)))))))

(declare-fun b!6369004 () Bool)

(assert (=> b!6369004 (= c!1159802 e!3866958)))

(declare-fun res!2620192 () Bool)

(assert (=> b!6369004 (=> (not res!2620192) (not e!3866958))))

(assert (=> b!6369004 (= res!2620192 ((_ is Concat!25122) (h!71455 (exprs!6161 lt!2367709))))))

(assert (=> b!6369004 (= e!3866960 e!3866959)))

(declare-fun b!6369005 () Bool)

(declare-fun call!543823 () (InoxSet Context!11322))

(assert (=> b!6369005 (= e!3866962 call!543823)))

(declare-fun bm!543819 () Bool)

(declare-fun call!543826 () (InoxSet Context!11322))

(assert (=> bm!543819 (= call!543823 call!543826)))

(declare-fun b!6369006 () Bool)

(assert (=> b!6369006 (= e!3866961 call!543823)))

(declare-fun b!6369007 () Bool)

(declare-fun call!543821 () (InoxSet Context!11322))

(assert (=> b!6369007 (= e!3866959 ((_ map or) call!543821 call!543826))))

(declare-fun bm!543820 () Bool)

(assert (=> bm!543820 (= call!543826 call!543822)))

(declare-fun bm!543821 () Bool)

(assert (=> bm!543821 (= call!543821 (derivationStepZipperDown!1525 (ite c!1159801 (regOne!33067 (h!71455 (exprs!6161 lt!2367709))) (regOne!33066 (h!71455 (exprs!6161 lt!2367709)))) (ite c!1159801 (Context!11323 (t!378729 (exprs!6161 lt!2367709))) (Context!11323 call!543824)) (h!71454 s!2326)))))

(declare-fun b!6369008 () Bool)

(assert (=> b!6369008 (= e!3866960 ((_ map or) call!543821 call!543822))))

(declare-fun d!1997710 () Bool)

(declare-fun c!1159804 () Bool)

(assert (=> d!1997710 (= c!1159804 (and ((_ is ElementMatch!16277) (h!71455 (exprs!6161 lt!2367709))) (= (c!1159440 (h!71455 (exprs!6161 lt!2367709))) (h!71454 s!2326))))))

(assert (=> d!1997710 (= (derivationStepZipperDown!1525 (h!71455 (exprs!6161 lt!2367709)) (Context!11323 (t!378729 (exprs!6161 lt!2367709))) (h!71454 s!2326)) e!3866963)))

(declare-fun b!6369000 () Bool)

(assert (=> b!6369000 (= e!3866963 (store ((as const (Array Context!11322 Bool)) false) (Context!11323 (t!378729 (exprs!6161 lt!2367709))) true))))

(assert (= (and d!1997710 c!1159804) b!6369000))

(assert (= (and d!1997710 (not c!1159804)) b!6368998))

(assert (= (and b!6368998 c!1159801) b!6369008))

(assert (= (and b!6368998 (not c!1159801)) b!6369004))

(assert (= (and b!6369004 res!2620192) b!6369001))

(assert (= (and b!6369004 c!1159802) b!6369007))

(assert (= (and b!6369004 (not c!1159802)) b!6369003))

(assert (= (and b!6369003 c!1159803) b!6369005))

(assert (= (and b!6369003 (not c!1159803)) b!6368999))

(assert (= (and b!6368999 c!1159805) b!6369006))

(assert (= (and b!6368999 (not c!1159805)) b!6369002))

(assert (= (or b!6369005 b!6369006) bm!543816))

(assert (= (or b!6369005 b!6369006) bm!543819))

(assert (= (or b!6369007 bm!543816) bm!543818))

(assert (= (or b!6369007 bm!543819) bm!543820))

(assert (= (or b!6369008 bm!543820) bm!543817))

(assert (= (or b!6369008 b!6369007) bm!543821))

(declare-fun m!7172392 () Bool)

(assert (=> bm!543817 m!7172392))

(declare-fun m!7172394 () Bool)

(assert (=> bm!543818 m!7172394))

(declare-fun m!7172396 () Bool)

(assert (=> bm!543821 m!7172396))

(declare-fun m!7172398 () Bool)

(assert (=> b!6369000 m!7172398))

(declare-fun m!7172400 () Bool)

(assert (=> b!6369001 m!7172400))

(assert (=> bm!543595 d!1997710))

(declare-fun d!1997714 () Bool)

(assert (=> d!1997714 true))

(assert (=> d!1997714 true))

(declare-fun res!2620195 () Bool)

(assert (=> d!1997714 (= (choose!47315 lambda!350859) res!2620195)))

(assert (=> d!1997448 d!1997714))

(declare-fun d!1997716 () Bool)

(declare-fun c!1159806 () Bool)

(assert (=> d!1997716 (= c!1159806 (isEmpty!37120 (tail!12132 (t!378728 s!2326))))))

(declare-fun e!3866964 () Bool)

(assert (=> d!1997716 (= (matchZipper!2289 (derivationStepZipper!2243 lt!2367715 (head!13047 (t!378728 s!2326))) (tail!12132 (t!378728 s!2326))) e!3866964)))

(declare-fun b!6369009 () Bool)

(assert (=> b!6369009 (= e!3866964 (nullableZipper!2043 (derivationStepZipper!2243 lt!2367715 (head!13047 (t!378728 s!2326)))))))

(declare-fun b!6369010 () Bool)

(assert (=> b!6369010 (= e!3866964 (matchZipper!2289 (derivationStepZipper!2243 (derivationStepZipper!2243 lt!2367715 (head!13047 (t!378728 s!2326))) (head!13047 (tail!12132 (t!378728 s!2326)))) (tail!12132 (tail!12132 (t!378728 s!2326)))))))

(assert (= (and d!1997716 c!1159806) b!6369009))

(assert (= (and d!1997716 (not c!1159806)) b!6369010))

(assert (=> d!1997716 m!7171496))

(assert (=> d!1997716 m!7172044))

(assert (=> b!6369009 m!7171494))

(declare-fun m!7172402 () Bool)

(assert (=> b!6369009 m!7172402))

(assert (=> b!6369010 m!7171496))

(assert (=> b!6369010 m!7172048))

(assert (=> b!6369010 m!7171494))

(assert (=> b!6369010 m!7172048))

(declare-fun m!7172404 () Bool)

(assert (=> b!6369010 m!7172404))

(assert (=> b!6369010 m!7171496))

(assert (=> b!6369010 m!7172052))

(assert (=> b!6369010 m!7172404))

(assert (=> b!6369010 m!7172052))

(declare-fun m!7172406 () Bool)

(assert (=> b!6369010 m!7172406))

(assert (=> b!6367888 d!1997716))

(declare-fun bs!1595261 () Bool)

(declare-fun d!1997718 () Bool)

(assert (= bs!1595261 (and d!1997718 d!1997340)))

(declare-fun lambda!350948 () Int)

(assert (=> bs!1595261 (= (= (head!13047 (t!378728 s!2326)) (h!71454 s!2326)) (= lambda!350948 lambda!350873))))

(declare-fun bs!1595262 () Bool)

(assert (= bs!1595262 (and d!1997718 d!1997610)))

(assert (=> bs!1595262 (= (= (head!13047 (t!378728 s!2326)) (head!13047 s!2326)) (= lambda!350948 lambda!350931))))

(declare-fun bs!1595263 () Bool)

(assert (= bs!1595263 (and d!1997718 d!1997590)))

(assert (=> bs!1595263 (= lambda!350948 lambda!350929)))

(declare-fun bs!1595264 () Bool)

(assert (= bs!1595264 (and d!1997718 d!1997570)))

(assert (=> bs!1595264 (= lambda!350948 lambda!350927)))

(declare-fun bs!1595265 () Bool)

(assert (= bs!1595265 (and d!1997718 b!6367704)))

(assert (=> bs!1595265 (= (= (head!13047 (t!378728 s!2326)) (h!71454 s!2326)) (= lambda!350948 lambda!350861))))

(assert (=> d!1997718 true))

(assert (=> d!1997718 (= (derivationStepZipper!2243 lt!2367715 (head!13047 (t!378728 s!2326))) (flatMap!1782 lt!2367715 lambda!350948))))

(declare-fun bs!1595266 () Bool)

(assert (= bs!1595266 d!1997718))

(declare-fun m!7172408 () Bool)

(assert (=> bs!1595266 m!7172408))

(assert (=> b!6367888 d!1997718))

(assert (=> b!6367888 d!1997574))

(assert (=> b!6367888 d!1997576))

(declare-fun d!1997720 () Bool)

(declare-fun c!1159807 () Bool)

(assert (=> d!1997720 (= c!1159807 (isEmpty!37120 (tail!12132 (t!378728 s!2326))))))

(declare-fun e!3866965 () Bool)

(assert (=> d!1997720 (= (matchZipper!2289 (derivationStepZipper!2243 lt!2367711 (head!13047 (t!378728 s!2326))) (tail!12132 (t!378728 s!2326))) e!3866965)))

(declare-fun b!6369011 () Bool)

(assert (=> b!6369011 (= e!3866965 (nullableZipper!2043 (derivationStepZipper!2243 lt!2367711 (head!13047 (t!378728 s!2326)))))))

(declare-fun b!6369012 () Bool)

(assert (=> b!6369012 (= e!3866965 (matchZipper!2289 (derivationStepZipper!2243 (derivationStepZipper!2243 lt!2367711 (head!13047 (t!378728 s!2326))) (head!13047 (tail!12132 (t!378728 s!2326)))) (tail!12132 (tail!12132 (t!378728 s!2326)))))))

(assert (= (and d!1997720 c!1159807) b!6369011))

(assert (= (and d!1997720 (not c!1159807)) b!6369012))

(assert (=> d!1997720 m!7171496))

(assert (=> d!1997720 m!7172044))

(assert (=> b!6369011 m!7171802))

(declare-fun m!7172410 () Bool)

(assert (=> b!6369011 m!7172410))

(assert (=> b!6369012 m!7171496))

(assert (=> b!6369012 m!7172048))

(assert (=> b!6369012 m!7171802))

(assert (=> b!6369012 m!7172048))

(declare-fun m!7172412 () Bool)

(assert (=> b!6369012 m!7172412))

(assert (=> b!6369012 m!7171496))

(assert (=> b!6369012 m!7172052))

(assert (=> b!6369012 m!7172412))

(assert (=> b!6369012 m!7172052))

(declare-fun m!7172414 () Bool)

(assert (=> b!6369012 m!7172414))

(assert (=> b!6368359 d!1997720))

(declare-fun bs!1595267 () Bool)

(declare-fun d!1997722 () Bool)

(assert (= bs!1595267 (and d!1997722 d!1997718)))

(declare-fun lambda!350949 () Int)

(assert (=> bs!1595267 (= lambda!350949 lambda!350948)))

(declare-fun bs!1595268 () Bool)

(assert (= bs!1595268 (and d!1997722 d!1997340)))

(assert (=> bs!1595268 (= (= (head!13047 (t!378728 s!2326)) (h!71454 s!2326)) (= lambda!350949 lambda!350873))))

(declare-fun bs!1595269 () Bool)

(assert (= bs!1595269 (and d!1997722 d!1997610)))

(assert (=> bs!1595269 (= (= (head!13047 (t!378728 s!2326)) (head!13047 s!2326)) (= lambda!350949 lambda!350931))))

(declare-fun bs!1595270 () Bool)

(assert (= bs!1595270 (and d!1997722 d!1997590)))

(assert (=> bs!1595270 (= lambda!350949 lambda!350929)))

(declare-fun bs!1595271 () Bool)

(assert (= bs!1595271 (and d!1997722 d!1997570)))

(assert (=> bs!1595271 (= lambda!350949 lambda!350927)))

(declare-fun bs!1595272 () Bool)

(assert (= bs!1595272 (and d!1997722 b!6367704)))

(assert (=> bs!1595272 (= (= (head!13047 (t!378728 s!2326)) (h!71454 s!2326)) (= lambda!350949 lambda!350861))))

(assert (=> d!1997722 true))

(assert (=> d!1997722 (= (derivationStepZipper!2243 lt!2367711 (head!13047 (t!378728 s!2326))) (flatMap!1782 lt!2367711 lambda!350949))))

(declare-fun bs!1595273 () Bool)

(assert (= bs!1595273 d!1997722))

(declare-fun m!7172416 () Bool)

(assert (=> bs!1595273 m!7172416))

(assert (=> b!6368359 d!1997722))

(assert (=> b!6368359 d!1997574))

(assert (=> b!6368359 d!1997576))

(declare-fun bs!1595274 () Bool)

(declare-fun b!6369020 () Bool)

(assert (= bs!1595274 (and b!6369020 d!1997682)))

(declare-fun lambda!350952 () Int)

(assert (=> bs!1595274 (not (= lambda!350952 lambda!350945))))

(declare-fun bs!1595275 () Bool)

(assert (= bs!1595275 (and b!6369020 d!1997454)))

(assert (=> bs!1595275 (not (= lambda!350952 lambda!350915))))

(declare-fun bs!1595276 () Bool)

(assert (= bs!1595276 (and b!6369020 d!1997452)))

(assert (=> bs!1595276 (not (= lambda!350952 lambda!350910))))

(assert (=> bs!1595274 (not (= lambda!350952 lambda!350944))))

(declare-fun bs!1595277 () Bool)

(assert (= bs!1595277 (and b!6369020 b!6367726)))

(assert (=> bs!1595277 (not (= lambda!350952 lambda!350860))))

(declare-fun bs!1595278 () Bool)

(assert (= bs!1595278 (and b!6369020 b!6368051)))

(assert (=> bs!1595278 (not (= lambda!350952 lambda!350896))))

(assert (=> bs!1595277 (not (= lambda!350952 lambda!350859))))

(declare-fun bs!1595280 () Bool)

(assert (= bs!1595280 (and b!6369020 d!1997624)))

(assert (=> bs!1595280 (not (= lambda!350952 lambda!350935))))

(declare-fun bs!1595281 () Bool)

(assert (= bs!1595281 (and b!6369020 b!6368052)))

(assert (=> bs!1595281 (= (and (= (reg!16606 (regOne!33067 r!7292)) (reg!16606 r!7292)) (= (regOne!33067 r!7292) r!7292)) (= lambda!350952 lambda!350895))))

(assert (=> bs!1595275 (not (= lambda!350952 lambda!350916))))

(assert (=> b!6369020 true))

(assert (=> b!6369020 true))

(declare-fun bs!1595286 () Bool)

(declare-fun b!6369019 () Bool)

(assert (= bs!1595286 (and b!6369019 d!1997682)))

(declare-fun lambda!350954 () Int)

(assert (=> bs!1595286 (= (and (= (regOne!33066 (regOne!33067 r!7292)) (regOne!33066 r!7292)) (= (regTwo!33066 (regOne!33067 r!7292)) (regTwo!33066 r!7292))) (= lambda!350954 lambda!350945))))

(declare-fun bs!1595287 () Bool)

(assert (= bs!1595287 (and b!6369019 d!1997454)))

(assert (=> bs!1595287 (not (= lambda!350954 lambda!350915))))

(declare-fun bs!1595289 () Bool)

(assert (= bs!1595289 (and b!6369019 d!1997452)))

(assert (=> bs!1595289 (not (= lambda!350954 lambda!350910))))

(declare-fun bs!1595290 () Bool)

(assert (= bs!1595290 (and b!6369019 b!6369020)))

(assert (=> bs!1595290 (not (= lambda!350954 lambda!350952))))

(assert (=> bs!1595286 (not (= lambda!350954 lambda!350944))))

(declare-fun bs!1595292 () Bool)

(assert (= bs!1595292 (and b!6369019 b!6367726)))

(assert (=> bs!1595292 (= (and (= (regOne!33066 (regOne!33067 r!7292)) (regOne!33066 r!7292)) (= (regTwo!33066 (regOne!33067 r!7292)) (regTwo!33066 r!7292))) (= lambda!350954 lambda!350860))))

(declare-fun bs!1595293 () Bool)

(assert (= bs!1595293 (and b!6369019 b!6368051)))

(assert (=> bs!1595293 (= (and (= (regOne!33066 (regOne!33067 r!7292)) (regOne!33066 r!7292)) (= (regTwo!33066 (regOne!33067 r!7292)) (regTwo!33066 r!7292))) (= lambda!350954 lambda!350896))))

(assert (=> bs!1595292 (not (= lambda!350954 lambda!350859))))

(declare-fun bs!1595294 () Bool)

(assert (= bs!1595294 (and b!6369019 d!1997624)))

(assert (=> bs!1595294 (not (= lambda!350954 lambda!350935))))

(declare-fun bs!1595295 () Bool)

(assert (= bs!1595295 (and b!6369019 b!6368052)))

(assert (=> bs!1595295 (not (= lambda!350954 lambda!350895))))

(assert (=> bs!1595287 (= (and (= (regOne!33066 (regOne!33067 r!7292)) (regOne!33066 r!7292)) (= (regTwo!33066 (regOne!33067 r!7292)) (regTwo!33066 r!7292))) (= lambda!350954 lambda!350916))))

(assert (=> b!6369019 true))

(assert (=> b!6369019 true))

(declare-fun b!6369017 () Bool)

(declare-fun e!3866973 () Bool)

(assert (=> b!6369017 (= e!3866973 (matchRSpec!3378 (regTwo!33067 (regOne!33067 r!7292)) s!2326))))

(declare-fun b!6369018 () Bool)

(declare-fun e!3866969 () Bool)

(assert (=> b!6369018 (= e!3866969 e!3866973)))

(declare-fun res!2620200 () Bool)

(assert (=> b!6369018 (= res!2620200 (matchRSpec!3378 (regOne!33067 (regOne!33067 r!7292)) s!2326))))

(assert (=> b!6369018 (=> res!2620200 e!3866973)))

(declare-fun e!3866970 () Bool)

(declare-fun call!543827 () Bool)

(assert (=> b!6369019 (= e!3866970 call!543827)))

(declare-fun e!3866974 () Bool)

(assert (=> b!6369020 (= e!3866974 call!543827)))

(declare-fun d!1997724 () Bool)

(declare-fun c!1159811 () Bool)

(assert (=> d!1997724 (= c!1159811 ((_ is EmptyExpr!16277) (regOne!33067 r!7292)))))

(declare-fun e!3866972 () Bool)

(assert (=> d!1997724 (= (matchRSpec!3378 (regOne!33067 r!7292) s!2326) e!3866972)))

(declare-fun b!6369021 () Bool)

(declare-fun e!3866971 () Bool)

(assert (=> b!6369021 (= e!3866972 e!3866971)))

(declare-fun res!2620201 () Bool)

(assert (=> b!6369021 (= res!2620201 (not ((_ is EmptyLang!16277) (regOne!33067 r!7292))))))

(assert (=> b!6369021 (=> (not res!2620201) (not e!3866971))))

(declare-fun b!6369022 () Bool)

(assert (=> b!6369022 (= e!3866969 e!3866970)))

(declare-fun c!1159810 () Bool)

(assert (=> b!6369022 (= c!1159810 ((_ is Star!16277) (regOne!33067 r!7292)))))

(declare-fun b!6369023 () Bool)

(declare-fun c!1159809 () Bool)

(assert (=> b!6369023 (= c!1159809 ((_ is Union!16277) (regOne!33067 r!7292)))))

(declare-fun e!3866968 () Bool)

(assert (=> b!6369023 (= e!3866968 e!3866969)))

(declare-fun bm!543822 () Bool)

(declare-fun call!543828 () Bool)

(assert (=> bm!543822 (= call!543828 (isEmpty!37120 s!2326))))

(declare-fun b!6369024 () Bool)

(declare-fun c!1159808 () Bool)

(assert (=> b!6369024 (= c!1159808 ((_ is ElementMatch!16277) (regOne!33067 r!7292)))))

(assert (=> b!6369024 (= e!3866971 e!3866968)))

(declare-fun b!6369025 () Bool)

(assert (=> b!6369025 (= e!3866972 call!543828)))

(declare-fun b!6369026 () Bool)

(assert (=> b!6369026 (= e!3866968 (= s!2326 (Cons!65006 (c!1159440 (regOne!33067 r!7292)) Nil!65006)))))

(declare-fun bm!543823 () Bool)

(assert (=> bm!543823 (= call!543827 (Exists!3347 (ite c!1159810 lambda!350952 lambda!350954)))))

(declare-fun b!6369027 () Bool)

(declare-fun res!2620202 () Bool)

(assert (=> b!6369027 (=> res!2620202 e!3866974)))

(assert (=> b!6369027 (= res!2620202 call!543828)))

(assert (=> b!6369027 (= e!3866970 e!3866974)))

(assert (= (and d!1997724 c!1159811) b!6369025))

(assert (= (and d!1997724 (not c!1159811)) b!6369021))

(assert (= (and b!6369021 res!2620201) b!6369024))

(assert (= (and b!6369024 c!1159808) b!6369026))

(assert (= (and b!6369024 (not c!1159808)) b!6369023))

(assert (= (and b!6369023 c!1159809) b!6369018))

(assert (= (and b!6369023 (not c!1159809)) b!6369022))

(assert (= (and b!6369018 (not res!2620200)) b!6369017))

(assert (= (and b!6369022 c!1159810) b!6369027))

(assert (= (and b!6369022 (not c!1159810)) b!6369019))

(assert (= (and b!6369027 (not res!2620202)) b!6369020))

(assert (= (or b!6369020 b!6369019) bm!543823))

(assert (= (or b!6369025 b!6369027) bm!543822))

(declare-fun m!7172428 () Bool)

(assert (=> b!6369017 m!7172428))

(declare-fun m!7172430 () Bool)

(assert (=> b!6369018 m!7172430))

(assert (=> bm!543822 m!7171574))

(declare-fun m!7172432 () Bool)

(assert (=> bm!543823 m!7172432))

(assert (=> b!6368050 d!1997724))

(declare-fun b!6369033 () Bool)

(declare-fun e!3866984 () Bool)

(declare-fun lt!2367848 () Bool)

(declare-fun call!543830 () Bool)

(assert (=> b!6369033 (= e!3866984 (= lt!2367848 call!543830))))

(declare-fun b!6369034 () Bool)

(declare-fun res!2620210 () Bool)

(declare-fun e!3866981 () Bool)

(assert (=> b!6369034 (=> res!2620210 e!3866981)))

(assert (=> b!6369034 (= res!2620210 (not ((_ is ElementMatch!16277) (regTwo!33066 r!7292))))))

(declare-fun e!3866983 () Bool)

(assert (=> b!6369034 (= e!3866983 e!3866981)))

(declare-fun b!6369035 () Bool)

(assert (=> b!6369035 (= e!3866983 (not lt!2367848))))

(declare-fun d!1997736 () Bool)

(assert (=> d!1997736 e!3866984))

(declare-fun c!1159814 () Bool)

(assert (=> d!1997736 (= c!1159814 ((_ is EmptyExpr!16277) (regTwo!33066 r!7292)))))

(declare-fun e!3866982 () Bool)

(assert (=> d!1997736 (= lt!2367848 e!3866982)))

(declare-fun c!1159815 () Bool)

(assert (=> d!1997736 (= c!1159815 (isEmpty!37120 s!2326))))

(assert (=> d!1997736 (validRegex!8013 (regTwo!33066 r!7292))))

(assert (=> d!1997736 (= (matchR!8460 (regTwo!33066 r!7292) s!2326) lt!2367848)))

(declare-fun bm!543825 () Bool)

(assert (=> bm!543825 (= call!543830 (isEmpty!37120 s!2326))))

(declare-fun b!6369036 () Bool)

(declare-fun res!2620208 () Bool)

(declare-fun e!3866979 () Bool)

(assert (=> b!6369036 (=> (not res!2620208) (not e!3866979))))

(assert (=> b!6369036 (= res!2620208 (not call!543830))))

(declare-fun b!6369037 () Bool)

(assert (=> b!6369037 (= e!3866982 (nullable!6270 (regTwo!33066 r!7292)))))

(declare-fun b!6369038 () Bool)

(declare-fun e!3866980 () Bool)

(assert (=> b!6369038 (= e!3866981 e!3866980)))

(declare-fun res!2620206 () Bool)

(assert (=> b!6369038 (=> (not res!2620206) (not e!3866980))))

(assert (=> b!6369038 (= res!2620206 (not lt!2367848))))

(declare-fun b!6369039 () Bool)

(assert (=> b!6369039 (= e!3866979 (= (head!13047 s!2326) (c!1159440 (regTwo!33066 r!7292))))))

(declare-fun b!6369040 () Bool)

(assert (=> b!6369040 (= e!3866984 e!3866983)))

(declare-fun c!1159816 () Bool)

(assert (=> b!6369040 (= c!1159816 ((_ is EmptyLang!16277) (regTwo!33066 r!7292)))))

(declare-fun b!6369041 () Bool)

(assert (=> b!6369041 (= e!3866982 (matchR!8460 (derivativeStep!4981 (regTwo!33066 r!7292) (head!13047 s!2326)) (tail!12132 s!2326)))))

(declare-fun b!6369042 () Bool)

(declare-fun e!3866978 () Bool)

(assert (=> b!6369042 (= e!3866978 (not (= (head!13047 s!2326) (c!1159440 (regTwo!33066 r!7292)))))))

(declare-fun b!6369043 () Bool)

(declare-fun res!2620209 () Bool)

(assert (=> b!6369043 (=> res!2620209 e!3866978)))

(assert (=> b!6369043 (= res!2620209 (not (isEmpty!37120 (tail!12132 s!2326))))))

(declare-fun b!6369044 () Bool)

(assert (=> b!6369044 (= e!3866980 e!3866978)))

(declare-fun res!2620211 () Bool)

(assert (=> b!6369044 (=> res!2620211 e!3866978)))

(assert (=> b!6369044 (= res!2620211 call!543830)))

(declare-fun b!6369045 () Bool)

(declare-fun res!2620204 () Bool)

(assert (=> b!6369045 (=> (not res!2620204) (not e!3866979))))

(assert (=> b!6369045 (= res!2620204 (isEmpty!37120 (tail!12132 s!2326)))))

(declare-fun b!6369046 () Bool)

(declare-fun res!2620205 () Bool)

(assert (=> b!6369046 (=> res!2620205 e!3866981)))

(assert (=> b!6369046 (= res!2620205 e!3866979)))

(declare-fun res!2620207 () Bool)

(assert (=> b!6369046 (=> (not res!2620207) (not e!3866979))))

(assert (=> b!6369046 (= res!2620207 lt!2367848)))

(assert (= (and d!1997736 c!1159815) b!6369037))

(assert (= (and d!1997736 (not c!1159815)) b!6369041))

(assert (= (and d!1997736 c!1159814) b!6369033))

(assert (= (and d!1997736 (not c!1159814)) b!6369040))

(assert (= (and b!6369040 c!1159816) b!6369035))

(assert (= (and b!6369040 (not c!1159816)) b!6369034))

(assert (= (and b!6369034 (not res!2620210)) b!6369046))

(assert (= (and b!6369046 res!2620207) b!6369036))

(assert (= (and b!6369036 res!2620208) b!6369045))

(assert (= (and b!6369045 res!2620204) b!6369039))

(assert (= (and b!6369046 (not res!2620205)) b!6369038))

(assert (= (and b!6369038 res!2620206) b!6369044))

(assert (= (and b!6369044 (not res!2620211)) b!6369043))

(assert (= (and b!6369043 (not res!2620209)) b!6369042))

(assert (= (or b!6369033 b!6369036 b!6369044) bm!543825))

(assert (=> b!6369039 m!7171584))

(assert (=> b!6369045 m!7171586))

(assert (=> b!6369045 m!7171586))

(assert (=> b!6369045 m!7171588))

(assert (=> b!6369037 m!7172024))

(assert (=> b!6369042 m!7171584))

(assert (=> b!6369043 m!7171586))

(assert (=> b!6369043 m!7171586))

(assert (=> b!6369043 m!7171588))

(assert (=> d!1997736 m!7171574))

(assert (=> d!1997736 m!7172028))

(assert (=> b!6369041 m!7171584))

(assert (=> b!6369041 m!7171584))

(declare-fun m!7172434 () Bool)

(assert (=> b!6369041 m!7172434))

(assert (=> b!6369041 m!7171586))

(assert (=> b!6369041 m!7172434))

(assert (=> b!6369041 m!7171586))

(declare-fun m!7172436 () Bool)

(assert (=> b!6369041 m!7172436))

(assert (=> bm!543825 m!7171574))

(assert (=> b!6368303 d!1997736))

(declare-fun d!1997738 () Bool)

(assert (=> d!1997738 (= (head!13044 (unfocusZipperList!1698 zl!343)) (h!71455 (unfocusZipperList!1698 zl!343)))))

(assert (=> b!6367786 d!1997738))

(declare-fun d!1997740 () Bool)

(declare-fun res!2620212 () Bool)

(declare-fun e!3866985 () Bool)

(assert (=> d!1997740 (=> res!2620212 e!3866985)))

(assert (=> d!1997740 (= res!2620212 ((_ is Nil!65007) lt!2367733))))

(assert (=> d!1997740 (= (forall!15454 lt!2367733 lambda!350870) e!3866985)))

(declare-fun b!6369047 () Bool)

(declare-fun e!3866986 () Bool)

(assert (=> b!6369047 (= e!3866985 e!3866986)))

(declare-fun res!2620213 () Bool)

(assert (=> b!6369047 (=> (not res!2620213) (not e!3866986))))

(assert (=> b!6369047 (= res!2620213 (dynLambda!25790 lambda!350870 (h!71455 lt!2367733)))))

(declare-fun b!6369048 () Bool)

(assert (=> b!6369048 (= e!3866986 (forall!15454 (t!378729 lt!2367733) lambda!350870))))

(assert (= (and d!1997740 (not res!2620212)) b!6369047))

(assert (= (and b!6369047 res!2620213) b!6369048))

(declare-fun b_lambda!242067 () Bool)

(assert (=> (not b_lambda!242067) (not b!6369047)))

(declare-fun m!7172440 () Bool)

(assert (=> b!6369047 m!7172440))

(declare-fun m!7172442 () Bool)

(assert (=> b!6369048 m!7172442))

(assert (=> d!1997332 d!1997740))

(assert (=> b!6367793 d!1997426))

(declare-fun bs!1595297 () Bool)

(declare-fun d!1997744 () Bool)

(assert (= bs!1595297 (and d!1997744 d!1997616)))

(declare-fun lambda!350958 () Int)

(assert (=> bs!1595297 (= lambda!350958 lambda!350932)))

(declare-fun bs!1595298 () Bool)

(assert (= bs!1595298 (and d!1997744 d!1997320)))

(assert (=> bs!1595298 (= lambda!350958 lambda!350867)))

(declare-fun bs!1595299 () Bool)

(assert (= bs!1595299 (and d!1997744 d!1997332)))

(assert (=> bs!1595299 (= lambda!350958 lambda!350870)))

(declare-fun bs!1595300 () Bool)

(assert (= bs!1595300 (and d!1997744 d!1997604)))

(assert (=> bs!1595300 (= lambda!350958 lambda!350930)))

(declare-fun bs!1595301 () Bool)

(assert (= bs!1595301 (and d!1997744 d!1997346)))

(assert (=> bs!1595301 (= lambda!350958 lambda!350879)))

(declare-fun bs!1595302 () Bool)

(assert (= bs!1595302 (and d!1997744 d!1997368)))

(assert (=> bs!1595302 (= lambda!350958 lambda!350882)))

(declare-fun bs!1595303 () Bool)

(assert (= bs!1595303 (and d!1997744 d!1997354)))

(assert (=> bs!1595303 (= lambda!350958 lambda!350880)))

(declare-fun bs!1595304 () Bool)

(assert (= bs!1595304 (and d!1997744 d!1997426)))

(assert (=> bs!1595304 (= lambda!350958 lambda!350901)))

(declare-fun bs!1595305 () Bool)

(assert (= bs!1595305 (and d!1997744 d!1997544)))

(assert (=> bs!1595305 (= lambda!350958 lambda!350926)))

(declare-fun lt!2367849 () List!65131)

(assert (=> d!1997744 (forall!15454 lt!2367849 lambda!350958)))

(declare-fun e!3866990 () List!65131)

(assert (=> d!1997744 (= lt!2367849 e!3866990)))

(declare-fun c!1159821 () Bool)

(assert (=> d!1997744 (= c!1159821 ((_ is Cons!65008) (t!378730 zl!343)))))

(assert (=> d!1997744 (= (unfocusZipperList!1698 (t!378730 zl!343)) lt!2367849)))

(declare-fun b!6369054 () Bool)

(assert (=> b!6369054 (= e!3866990 (Cons!65007 (generalisedConcat!1874 (exprs!6161 (h!71456 (t!378730 zl!343)))) (unfocusZipperList!1698 (t!378730 (t!378730 zl!343)))))))

(declare-fun b!6369055 () Bool)

(assert (=> b!6369055 (= e!3866990 Nil!65007)))

(assert (= (and d!1997744 c!1159821) b!6369054))

(assert (= (and d!1997744 (not c!1159821)) b!6369055))

(declare-fun m!7172456 () Bool)

(assert (=> d!1997744 m!7172456))

(declare-fun m!7172458 () Bool)

(assert (=> b!6369054 m!7172458))

(declare-fun m!7172460 () Bool)

(assert (=> b!6369054 m!7172460))

(assert (=> b!6367793 d!1997744))

(declare-fun bs!1595306 () Bool)

(declare-fun d!1997750 () Bool)

(assert (= bs!1595306 (and d!1997750 d!1997670)))

(declare-fun lambda!350960 () Int)

(assert (=> bs!1595306 (= lambda!350960 lambda!350939)))

(declare-fun bs!1595308 () Bool)

(assert (= bs!1595308 (and d!1997750 d!1997694)))

(assert (=> bs!1595308 (= lambda!350960 lambda!350946)))

(assert (=> d!1997750 (= (nullableZipper!2043 lt!2367707) (exists!2579 lt!2367707 lambda!350960))))

(declare-fun bs!1595311 () Bool)

(assert (= bs!1595311 d!1997750))

(declare-fun m!7172462 () Bool)

(assert (=> bs!1595311 m!7172462))

(assert (=> b!6368356 d!1997750))

(declare-fun d!1997752 () Bool)

(assert (=> d!1997752 true))

(assert (=> d!1997752 true))

(declare-fun res!2620215 () Bool)

(assert (=> d!1997752 (= (choose!47315 lambda!350860) res!2620215)))

(assert (=> d!1997450 d!1997752))

(declare-fun d!1997754 () Bool)

(assert (=> d!1997754 true))

(declare-fun setRes!43412 () Bool)

(assert (=> d!1997754 setRes!43412))

(declare-fun condSetEmpty!43412 () Bool)

(declare-fun res!2620216 () (InoxSet Context!11322))

(assert (=> d!1997754 (= condSetEmpty!43412 (= res!2620216 ((as const (Array Context!11322 Bool)) false)))))

(assert (=> d!1997754 (= (choose!47306 z!1189 lambda!350861) res!2620216)))

(declare-fun setIsEmpty!43412 () Bool)

(assert (=> setIsEmpty!43412 setRes!43412))

(declare-fun setElem!43412 () Context!11322)

(declare-fun setNonEmpty!43412 () Bool)

(declare-fun e!3866992 () Bool)

(declare-fun tp!1773179 () Bool)

(assert (=> setNonEmpty!43412 (= setRes!43412 (and tp!1773179 (inv!83939 setElem!43412) e!3866992))))

(declare-fun setRest!43412 () (InoxSet Context!11322))

(assert (=> setNonEmpty!43412 (= res!2620216 ((_ map or) (store ((as const (Array Context!11322 Bool)) false) setElem!43412 true) setRest!43412))))

(declare-fun b!6369058 () Bool)

(declare-fun tp!1773180 () Bool)

(assert (=> b!6369058 (= e!3866992 tp!1773180)))

(assert (= (and d!1997754 condSetEmpty!43412) setIsEmpty!43412))

(assert (= (and d!1997754 (not condSetEmpty!43412)) setNonEmpty!43412))

(assert (= setNonEmpty!43412 b!6369058))

(declare-fun m!7172468 () Bool)

(assert (=> setNonEmpty!43412 m!7172468))

(assert (=> d!1997418 d!1997754))

(declare-fun d!1997760 () Bool)

(assert (=> d!1997760 (= (head!13044 (exprs!6161 (h!71456 zl!343))) (h!71455 (exprs!6161 (h!71456 zl!343))))))

(assert (=> b!6368213 d!1997760))

(declare-fun d!1997762 () Bool)

(assert (=> d!1997762 (= (nullable!6270 (reg!16606 r!7292)) (nullableFct!2217 (reg!16606 r!7292)))))

(declare-fun bs!1595314 () Bool)

(assert (= bs!1595314 d!1997762))

(declare-fun m!7172470 () Bool)

(assert (=> bs!1595314 m!7172470))

(assert (=> b!6367831 d!1997762))

(assert (=> bs!1595164 d!1997336))

(declare-fun d!1997764 () Bool)

(assert (=> d!1997764 (= (isEmptyExpr!1679 lt!2367775) ((_ is EmptyExpr!16277) lt!2367775))))

(assert (=> b!6368217 d!1997764))

(assert (=> b!6368136 d!1997504))

(declare-fun b!6369059 () Bool)

(declare-fun e!3866999 () Bool)

(declare-fun lt!2367850 () Bool)

(declare-fun call!543832 () Bool)

(assert (=> b!6369059 (= e!3866999 (= lt!2367850 call!543832))))

(declare-fun b!6369060 () Bool)

(declare-fun res!2620223 () Bool)

(declare-fun e!3866996 () Bool)

(assert (=> b!6369060 (=> res!2620223 e!3866996)))

(assert (=> b!6369060 (= res!2620223 (not ((_ is ElementMatch!16277) (regOne!33066 r!7292))))))

(declare-fun e!3866998 () Bool)

(assert (=> b!6369060 (= e!3866998 e!3866996)))

(declare-fun b!6369061 () Bool)

(assert (=> b!6369061 (= e!3866998 (not lt!2367850))))

(declare-fun d!1997768 () Bool)

(assert (=> d!1997768 e!3866999))

(declare-fun c!1159823 () Bool)

(assert (=> d!1997768 (= c!1159823 ((_ is EmptyExpr!16277) (regOne!33066 r!7292)))))

(declare-fun e!3866997 () Bool)

(assert (=> d!1997768 (= lt!2367850 e!3866997)))

(declare-fun c!1159824 () Bool)

(assert (=> d!1997768 (= c!1159824 (isEmpty!37120 (_1!36559 (get!22499 lt!2367789))))))

(assert (=> d!1997768 (validRegex!8013 (regOne!33066 r!7292))))

(assert (=> d!1997768 (= (matchR!8460 (regOne!33066 r!7292) (_1!36559 (get!22499 lt!2367789))) lt!2367850)))

(declare-fun bm!543827 () Bool)

(assert (=> bm!543827 (= call!543832 (isEmpty!37120 (_1!36559 (get!22499 lt!2367789))))))

(declare-fun b!6369062 () Bool)

(declare-fun res!2620221 () Bool)

(declare-fun e!3866994 () Bool)

(assert (=> b!6369062 (=> (not res!2620221) (not e!3866994))))

(assert (=> b!6369062 (= res!2620221 (not call!543832))))

(declare-fun b!6369063 () Bool)

(assert (=> b!6369063 (= e!3866997 (nullable!6270 (regOne!33066 r!7292)))))

(declare-fun b!6369064 () Bool)

(declare-fun e!3866995 () Bool)

(assert (=> b!6369064 (= e!3866996 e!3866995)))

(declare-fun res!2620219 () Bool)

(assert (=> b!6369064 (=> (not res!2620219) (not e!3866995))))

(assert (=> b!6369064 (= res!2620219 (not lt!2367850))))

(declare-fun b!6369065 () Bool)

(assert (=> b!6369065 (= e!3866994 (= (head!13047 (_1!36559 (get!22499 lt!2367789))) (c!1159440 (regOne!33066 r!7292))))))

(declare-fun b!6369066 () Bool)

(assert (=> b!6369066 (= e!3866999 e!3866998)))

(declare-fun c!1159825 () Bool)

(assert (=> b!6369066 (= c!1159825 ((_ is EmptyLang!16277) (regOne!33066 r!7292)))))

(declare-fun b!6369067 () Bool)

(assert (=> b!6369067 (= e!3866997 (matchR!8460 (derivativeStep!4981 (regOne!33066 r!7292) (head!13047 (_1!36559 (get!22499 lt!2367789)))) (tail!12132 (_1!36559 (get!22499 lt!2367789)))))))

(declare-fun b!6369068 () Bool)

(declare-fun e!3866993 () Bool)

(assert (=> b!6369068 (= e!3866993 (not (= (head!13047 (_1!36559 (get!22499 lt!2367789))) (c!1159440 (regOne!33066 r!7292)))))))

(declare-fun b!6369069 () Bool)

(declare-fun res!2620222 () Bool)

(assert (=> b!6369069 (=> res!2620222 e!3866993)))

(assert (=> b!6369069 (= res!2620222 (not (isEmpty!37120 (tail!12132 (_1!36559 (get!22499 lt!2367789))))))))

(declare-fun b!6369070 () Bool)

(assert (=> b!6369070 (= e!3866995 e!3866993)))

(declare-fun res!2620224 () Bool)

(assert (=> b!6369070 (=> res!2620224 e!3866993)))

(assert (=> b!6369070 (= res!2620224 call!543832)))

(declare-fun b!6369071 () Bool)

(declare-fun res!2620217 () Bool)

(assert (=> b!6369071 (=> (not res!2620217) (not e!3866994))))

(assert (=> b!6369071 (= res!2620217 (isEmpty!37120 (tail!12132 (_1!36559 (get!22499 lt!2367789)))))))

(declare-fun b!6369072 () Bool)

(declare-fun res!2620218 () Bool)

(assert (=> b!6369072 (=> res!2620218 e!3866996)))

(assert (=> b!6369072 (= res!2620218 e!3866994)))

(declare-fun res!2620220 () Bool)

(assert (=> b!6369072 (=> (not res!2620220) (not e!3866994))))

(assert (=> b!6369072 (= res!2620220 lt!2367850)))

(assert (= (and d!1997768 c!1159824) b!6369063))

(assert (= (and d!1997768 (not c!1159824)) b!6369067))

(assert (= (and d!1997768 c!1159823) b!6369059))

(assert (= (and d!1997768 (not c!1159823)) b!6369066))

(assert (= (and b!6369066 c!1159825) b!6369061))

(assert (= (and b!6369066 (not c!1159825)) b!6369060))

(assert (= (and b!6369060 (not res!2620223)) b!6369072))

(assert (= (and b!6369072 res!2620220) b!6369062))

(assert (= (and b!6369062 res!2620221) b!6369071))

(assert (= (and b!6369071 res!2620217) b!6369065))

(assert (= (and b!6369072 (not res!2620218)) b!6369064))

(assert (= (and b!6369064 res!2620219) b!6369070))

(assert (= (and b!6369070 (not res!2620224)) b!6369069))

(assert (= (and b!6369069 (not res!2620222)) b!6369068))

(assert (= (or b!6369059 b!6369062 b!6369070) bm!543827))

(declare-fun m!7172482 () Bool)

(assert (=> b!6369065 m!7172482))

(declare-fun m!7172484 () Bool)

(assert (=> b!6369071 m!7172484))

(assert (=> b!6369071 m!7172484))

(declare-fun m!7172486 () Bool)

(assert (=> b!6369071 m!7172486))

(assert (=> b!6369063 m!7171860))

(assert (=> b!6369068 m!7172482))

(assert (=> b!6369069 m!7172484))

(assert (=> b!6369069 m!7172484))

(assert (=> b!6369069 m!7172486))

(declare-fun m!7172488 () Bool)

(assert (=> d!1997768 m!7172488))

(assert (=> d!1997768 m!7171744))

(assert (=> b!6369067 m!7172482))

(assert (=> b!6369067 m!7172482))

(declare-fun m!7172490 () Bool)

(assert (=> b!6369067 m!7172490))

(assert (=> b!6369067 m!7172484))

(assert (=> b!6369067 m!7172490))

(assert (=> b!6369067 m!7172484))

(declare-fun m!7172492 () Bool)

(assert (=> b!6369067 m!7172492))

(assert (=> bm!543827 m!7172488))

(assert (=> b!6368298 d!1997768))

(assert (=> b!6368298 d!1997562))

(declare-fun bs!1595317 () Bool)

(declare-fun b!6369095 () Bool)

(assert (= bs!1595317 (and b!6369095 d!1997682)))

(declare-fun lambda!350961 () Int)

(assert (=> bs!1595317 (not (= lambda!350961 lambda!350945))))

(declare-fun bs!1595318 () Bool)

(assert (= bs!1595318 (and b!6369095 d!1997454)))

(assert (=> bs!1595318 (not (= lambda!350961 lambda!350915))))

(declare-fun bs!1595319 () Bool)

(assert (= bs!1595319 (and b!6369095 d!1997452)))

(assert (=> bs!1595319 (not (= lambda!350961 lambda!350910))))

(declare-fun bs!1595320 () Bool)

(assert (= bs!1595320 (and b!6369095 b!6369020)))

(assert (=> bs!1595320 (= (and (= (reg!16606 (regTwo!33067 r!7292)) (reg!16606 (regOne!33067 r!7292))) (= (regTwo!33067 r!7292) (regOne!33067 r!7292))) (= lambda!350961 lambda!350952))))

(assert (=> bs!1595317 (not (= lambda!350961 lambda!350944))))

(declare-fun bs!1595321 () Bool)

(assert (= bs!1595321 (and b!6369095 b!6367726)))

(assert (=> bs!1595321 (not (= lambda!350961 lambda!350860))))

(declare-fun bs!1595322 () Bool)

(assert (= bs!1595322 (and b!6369095 b!6368051)))

(assert (=> bs!1595322 (not (= lambda!350961 lambda!350896))))

(declare-fun bs!1595323 () Bool)

(assert (= bs!1595323 (and b!6369095 b!6369019)))

(assert (=> bs!1595323 (not (= lambda!350961 lambda!350954))))

(assert (=> bs!1595321 (not (= lambda!350961 lambda!350859))))

(declare-fun bs!1595324 () Bool)

(assert (= bs!1595324 (and b!6369095 d!1997624)))

(assert (=> bs!1595324 (not (= lambda!350961 lambda!350935))))

(declare-fun bs!1595325 () Bool)

(assert (= bs!1595325 (and b!6369095 b!6368052)))

(assert (=> bs!1595325 (= (and (= (reg!16606 (regTwo!33067 r!7292)) (reg!16606 r!7292)) (= (regTwo!33067 r!7292) r!7292)) (= lambda!350961 lambda!350895))))

(assert (=> bs!1595318 (not (= lambda!350961 lambda!350916))))

(assert (=> b!6369095 true))

(assert (=> b!6369095 true))

(declare-fun bs!1595326 () Bool)

(declare-fun b!6369094 () Bool)

(assert (= bs!1595326 (and b!6369094 d!1997682)))

(declare-fun lambda!350962 () Int)

(assert (=> bs!1595326 (= (and (= (regOne!33066 (regTwo!33067 r!7292)) (regOne!33066 r!7292)) (= (regTwo!33066 (regTwo!33067 r!7292)) (regTwo!33066 r!7292))) (= lambda!350962 lambda!350945))))

(declare-fun bs!1595327 () Bool)

(assert (= bs!1595327 (and b!6369094 d!1997454)))

(assert (=> bs!1595327 (not (= lambda!350962 lambda!350915))))

(declare-fun bs!1595328 () Bool)

(assert (= bs!1595328 (and b!6369094 d!1997452)))

(assert (=> bs!1595328 (not (= lambda!350962 lambda!350910))))

(declare-fun bs!1595329 () Bool)

(assert (= bs!1595329 (and b!6369094 b!6369020)))

(assert (=> bs!1595329 (not (= lambda!350962 lambda!350952))))

(assert (=> bs!1595326 (not (= lambda!350962 lambda!350944))))

(declare-fun bs!1595330 () Bool)

(assert (= bs!1595330 (and b!6369094 b!6367726)))

(assert (=> bs!1595330 (= (and (= (regOne!33066 (regTwo!33067 r!7292)) (regOne!33066 r!7292)) (= (regTwo!33066 (regTwo!33067 r!7292)) (regTwo!33066 r!7292))) (= lambda!350962 lambda!350860))))

(declare-fun bs!1595331 () Bool)

(assert (= bs!1595331 (and b!6369094 b!6368051)))

(assert (=> bs!1595331 (= (and (= (regOne!33066 (regTwo!33067 r!7292)) (regOne!33066 r!7292)) (= (regTwo!33066 (regTwo!33067 r!7292)) (regTwo!33066 r!7292))) (= lambda!350962 lambda!350896))))

(declare-fun bs!1595332 () Bool)

(assert (= bs!1595332 (and b!6369094 b!6369019)))

(assert (=> bs!1595332 (= (and (= (regOne!33066 (regTwo!33067 r!7292)) (regOne!33066 (regOne!33067 r!7292))) (= (regTwo!33066 (regTwo!33067 r!7292)) (regTwo!33066 (regOne!33067 r!7292)))) (= lambda!350962 lambda!350954))))

(assert (=> bs!1595330 (not (= lambda!350962 lambda!350859))))

(declare-fun bs!1595333 () Bool)

(assert (= bs!1595333 (and b!6369094 d!1997624)))

(assert (=> bs!1595333 (not (= lambda!350962 lambda!350935))))

(declare-fun bs!1595334 () Bool)

(assert (= bs!1595334 (and b!6369094 b!6368052)))

(assert (=> bs!1595334 (not (= lambda!350962 lambda!350895))))

(declare-fun bs!1595335 () Bool)

(assert (= bs!1595335 (and b!6369094 b!6369095)))

(assert (=> bs!1595335 (not (= lambda!350962 lambda!350961))))

(assert (=> bs!1595327 (= (and (= (regOne!33066 (regTwo!33067 r!7292)) (regOne!33066 r!7292)) (= (regTwo!33066 (regTwo!33067 r!7292)) (regTwo!33066 r!7292))) (= lambda!350962 lambda!350916))))

(assert (=> b!6369094 true))

(assert (=> b!6369094 true))

(declare-fun b!6369092 () Bool)

(declare-fun e!3867015 () Bool)

(assert (=> b!6369092 (= e!3867015 (matchRSpec!3378 (regTwo!33067 (regTwo!33067 r!7292)) s!2326))))

(declare-fun b!6369093 () Bool)

(declare-fun e!3867011 () Bool)

(assert (=> b!6369093 (= e!3867011 e!3867015)))

(declare-fun res!2620234 () Bool)

(assert (=> b!6369093 (= res!2620234 (matchRSpec!3378 (regOne!33067 (regTwo!33067 r!7292)) s!2326))))

(assert (=> b!6369093 (=> res!2620234 e!3867015)))

(declare-fun e!3867012 () Bool)

(declare-fun call!543835 () Bool)

(assert (=> b!6369094 (= e!3867012 call!543835)))

(declare-fun e!3867016 () Bool)

(assert (=> b!6369095 (= e!3867016 call!543835)))

(declare-fun d!1997778 () Bool)

(declare-fun c!1159834 () Bool)

(assert (=> d!1997778 (= c!1159834 ((_ is EmptyExpr!16277) (regTwo!33067 r!7292)))))

(declare-fun e!3867014 () Bool)

(assert (=> d!1997778 (= (matchRSpec!3378 (regTwo!33067 r!7292) s!2326) e!3867014)))

(declare-fun b!6369096 () Bool)

(declare-fun e!3867013 () Bool)

(assert (=> b!6369096 (= e!3867014 e!3867013)))

(declare-fun res!2620235 () Bool)

(assert (=> b!6369096 (= res!2620235 (not ((_ is EmptyLang!16277) (regTwo!33067 r!7292))))))

(assert (=> b!6369096 (=> (not res!2620235) (not e!3867013))))

(declare-fun b!6369097 () Bool)

(assert (=> b!6369097 (= e!3867011 e!3867012)))

(declare-fun c!1159833 () Bool)

(assert (=> b!6369097 (= c!1159833 ((_ is Star!16277) (regTwo!33067 r!7292)))))

(declare-fun b!6369098 () Bool)

(declare-fun c!1159832 () Bool)

(assert (=> b!6369098 (= c!1159832 ((_ is Union!16277) (regTwo!33067 r!7292)))))

(declare-fun e!3867010 () Bool)

(assert (=> b!6369098 (= e!3867010 e!3867011)))

(declare-fun bm!543830 () Bool)

(declare-fun call!543836 () Bool)

(assert (=> bm!543830 (= call!543836 (isEmpty!37120 s!2326))))

(declare-fun b!6369099 () Bool)

(declare-fun c!1159831 () Bool)

(assert (=> b!6369099 (= c!1159831 ((_ is ElementMatch!16277) (regTwo!33067 r!7292)))))

(assert (=> b!6369099 (= e!3867013 e!3867010)))

(declare-fun b!6369100 () Bool)

(assert (=> b!6369100 (= e!3867014 call!543836)))

(declare-fun b!6369101 () Bool)

(assert (=> b!6369101 (= e!3867010 (= s!2326 (Cons!65006 (c!1159440 (regTwo!33067 r!7292)) Nil!65006)))))

(declare-fun bm!543831 () Bool)

(assert (=> bm!543831 (= call!543835 (Exists!3347 (ite c!1159833 lambda!350961 lambda!350962)))))

(declare-fun b!6369102 () Bool)

(declare-fun res!2620236 () Bool)

(assert (=> b!6369102 (=> res!2620236 e!3867016)))

(assert (=> b!6369102 (= res!2620236 call!543836)))

(assert (=> b!6369102 (= e!3867012 e!3867016)))

(assert (= (and d!1997778 c!1159834) b!6369100))

(assert (= (and d!1997778 (not c!1159834)) b!6369096))

(assert (= (and b!6369096 res!2620235) b!6369099))

(assert (= (and b!6369099 c!1159831) b!6369101))

(assert (= (and b!6369099 (not c!1159831)) b!6369098))

(assert (= (and b!6369098 c!1159832) b!6369093))

(assert (= (and b!6369098 (not c!1159832)) b!6369097))

(assert (= (and b!6369093 (not res!2620234)) b!6369092))

(assert (= (and b!6369097 c!1159833) b!6369102))

(assert (= (and b!6369097 (not c!1159833)) b!6369094))

(assert (= (and b!6369102 (not res!2620236)) b!6369095))

(assert (= (or b!6369095 b!6369094) bm!543831))

(assert (= (or b!6369100 b!6369102) bm!543830))

(declare-fun m!7172522 () Bool)

(assert (=> b!6369092 m!7172522))

(declare-fun m!7172526 () Bool)

(assert (=> b!6369093 m!7172526))

(assert (=> bm!543830 m!7171574))

(declare-fun m!7172528 () Bool)

(assert (=> bm!543831 m!7172528))

(assert (=> b!6368049 d!1997778))

(declare-fun bs!1595336 () Bool)

(declare-fun d!1997792 () Bool)

(assert (= bs!1595336 (and d!1997792 d!1997670)))

(declare-fun lambda!350963 () Int)

(assert (=> bs!1595336 (= lambda!350963 lambda!350939)))

(declare-fun bs!1595337 () Bool)

(assert (= bs!1595337 (and d!1997792 d!1997694)))

(assert (=> bs!1595337 (= lambda!350963 lambda!350946)))

(declare-fun bs!1595338 () Bool)

(assert (= bs!1595338 (and d!1997792 d!1997750)))

(assert (=> bs!1595338 (= lambda!350963 lambda!350960)))

(assert (=> d!1997792 (= (nullableZipper!2043 lt!2367711) (exists!2579 lt!2367711 lambda!350963))))

(declare-fun bs!1595339 () Bool)

(assert (= bs!1595339 d!1997792))

(declare-fun m!7172534 () Bool)

(assert (=> bs!1595339 m!7172534))

(assert (=> b!6368358 d!1997792))

(declare-fun d!1997796 () Bool)

(assert (=> d!1997796 (= (isEmpty!37117 (tail!12129 (unfocusZipperList!1698 zl!343))) ((_ is Nil!65007) (tail!12129 (unfocusZipperList!1698 zl!343))))))

(assert (=> b!6367781 d!1997796))

(declare-fun d!1997798 () Bool)

(assert (=> d!1997798 (= (tail!12129 (unfocusZipperList!1698 zl!343)) (t!378729 (unfocusZipperList!1698 zl!343)))))

(assert (=> b!6367781 d!1997798))

(declare-fun bs!1595340 () Bool)

(declare-fun d!1997800 () Bool)

(assert (= bs!1595340 (and d!1997800 d!1997670)))

(declare-fun lambda!350964 () Int)

(assert (=> bs!1595340 (= lambda!350964 lambda!350939)))

(declare-fun bs!1595341 () Bool)

(assert (= bs!1595341 (and d!1997800 d!1997694)))

(assert (=> bs!1595341 (= lambda!350964 lambda!350946)))

(declare-fun bs!1595342 () Bool)

(assert (= bs!1595342 (and d!1997800 d!1997750)))

(assert (=> bs!1595342 (= lambda!350964 lambda!350960)))

(declare-fun bs!1595343 () Bool)

(assert (= bs!1595343 (and d!1997800 d!1997792)))

(assert (=> bs!1595343 (= lambda!350964 lambda!350963)))

(assert (=> d!1997800 (= (nullableZipper!2043 lt!2367715) (exists!2579 lt!2367715 lambda!350964))))

(declare-fun bs!1595344 () Bool)

(assert (= bs!1595344 d!1997800))

(declare-fun m!7172536 () Bool)

(assert (=> bs!1595344 m!7172536))

(assert (=> b!6367887 d!1997800))

(declare-fun d!1997802 () Bool)

(assert (=> d!1997802 (= (nullable!6270 (regOne!33066 (reg!16606 (regOne!33066 r!7292)))) (nullableFct!2217 (regOne!33066 (reg!16606 (regOne!33066 r!7292)))))))

(declare-fun bs!1595345 () Bool)

(assert (= bs!1595345 d!1997802))

(declare-fun m!7172538 () Bool)

(assert (=> bs!1595345 m!7172538))

(assert (=> b!6367949 d!1997802))

(declare-fun d!1997804 () Bool)

(assert (=> d!1997804 (= ($colon$colon!2138 (exprs!6161 lt!2367724) (ite (or c!1159587 c!1159588) (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (h!71455 (exprs!6161 (h!71456 zl!343))))) (Cons!65007 (ite (or c!1159587 c!1159588) (regTwo!33066 (h!71455 (exprs!6161 (h!71456 zl!343)))) (h!71455 (exprs!6161 (h!71456 zl!343)))) (exprs!6161 lt!2367724)))))

(assert (=> bm!543672 d!1997804))

(declare-fun d!1997806 () Bool)

(assert (=> d!1997806 (= (isEmpty!37117 (unfocusZipperList!1698 zl!343)) ((_ is Nil!65007) (unfocusZipperList!1698 zl!343)))))

(assert (=> b!6367785 d!1997806))

(declare-fun bs!1595346 () Bool)

(declare-fun d!1997808 () Bool)

(assert (= bs!1595346 (and d!1997808 d!1997616)))

(declare-fun lambda!350965 () Int)

(assert (=> bs!1595346 (= lambda!350965 lambda!350932)))

(declare-fun bs!1595347 () Bool)

(assert (= bs!1595347 (and d!1997808 d!1997320)))

(assert (=> bs!1595347 (= lambda!350965 lambda!350867)))

(declare-fun bs!1595348 () Bool)

(assert (= bs!1595348 (and d!1997808 d!1997332)))

(assert (=> bs!1595348 (= lambda!350965 lambda!350870)))

(declare-fun bs!1595349 () Bool)

(assert (= bs!1595349 (and d!1997808 d!1997346)))

(assert (=> bs!1595349 (= lambda!350965 lambda!350879)))

(declare-fun bs!1595350 () Bool)

(assert (= bs!1595350 (and d!1997808 d!1997368)))

(assert (=> bs!1595350 (= lambda!350965 lambda!350882)))

(declare-fun bs!1595351 () Bool)

(assert (= bs!1595351 (and d!1997808 d!1997354)))

(assert (=> bs!1595351 (= lambda!350965 lambda!350880)))

(declare-fun bs!1595352 () Bool)

(assert (= bs!1595352 (and d!1997808 d!1997426)))

(assert (=> bs!1595352 (= lambda!350965 lambda!350901)))

(declare-fun bs!1595353 () Bool)

(assert (= bs!1595353 (and d!1997808 d!1997544)))

(assert (=> bs!1595353 (= lambda!350965 lambda!350926)))

(declare-fun bs!1595354 () Bool)

(assert (= bs!1595354 (and d!1997808 d!1997744)))

(assert (=> bs!1595354 (= lambda!350965 lambda!350958)))

(declare-fun bs!1595355 () Bool)

(assert (= bs!1595355 (and d!1997808 d!1997604)))

(assert (=> bs!1595355 (= lambda!350965 lambda!350930)))

(assert (=> d!1997808 (= (inv!83939 setElem!43405) (forall!15454 (exprs!6161 setElem!43405) lambda!350965))))

(declare-fun bs!1595356 () Bool)

(assert (= bs!1595356 d!1997808))

(declare-fun m!7172540 () Bool)

(assert (=> bs!1595356 m!7172540))

(assert (=> setNonEmpty!43405 d!1997808))

(declare-fun b!6369135 () Bool)

(declare-fun e!3867044 () Bool)

(declare-fun call!543843 () Bool)

(assert (=> b!6369135 (= e!3867044 call!543843)))

(declare-fun c!1159842 () Bool)

(declare-fun bm!543838 () Bool)

(declare-fun c!1159841 () Bool)

(assert (=> bm!543838 (= call!543843 (validRegex!8013 (ite c!1159842 (reg!16606 lt!2367776) (ite c!1159841 (regOne!33067 lt!2367776) (regOne!33066 lt!2367776)))))))

(declare-fun b!6369136 () Bool)

(declare-fun e!3867041 () Bool)

(assert (=> b!6369136 (= e!3867041 e!3867044)))

(declare-fun res!2620264 () Bool)

(assert (=> b!6369136 (= res!2620264 (not (nullable!6270 (reg!16606 lt!2367776))))))

(assert (=> b!6369136 (=> (not res!2620264) (not e!3867044))))

(declare-fun b!6369137 () Bool)

(declare-fun res!2620262 () Bool)

(declare-fun e!3867043 () Bool)

(assert (=> b!6369137 (=> res!2620262 e!3867043)))

(assert (=> b!6369137 (= res!2620262 (not ((_ is Concat!25122) lt!2367776)))))

(declare-fun e!3867039 () Bool)

(assert (=> b!6369137 (= e!3867039 e!3867043)))

(declare-fun b!6369138 () Bool)

(declare-fun e!3867042 () Bool)

(assert (=> b!6369138 (= e!3867043 e!3867042)))

(declare-fun res!2620261 () Bool)

(assert (=> b!6369138 (=> (not res!2620261) (not e!3867042))))

(declare-fun call!543845 () Bool)

(assert (=> b!6369138 (= res!2620261 call!543845)))

(declare-fun b!6369139 () Bool)

(declare-fun e!3867040 () Bool)

(declare-fun call!543844 () Bool)

(assert (=> b!6369139 (= e!3867040 call!543844)))

(declare-fun b!6369140 () Bool)

(assert (=> b!6369140 (= e!3867042 call!543844)))

(declare-fun bm!543839 () Bool)

(assert (=> bm!543839 (= call!543844 (validRegex!8013 (ite c!1159841 (regTwo!33067 lt!2367776) (regTwo!33066 lt!2367776))))))

(declare-fun b!6369141 () Bool)

(declare-fun e!3867045 () Bool)

(assert (=> b!6369141 (= e!3867045 e!3867041)))

(assert (=> b!6369141 (= c!1159842 ((_ is Star!16277) lt!2367776))))

(declare-fun d!1997810 () Bool)

(declare-fun res!2620260 () Bool)

(assert (=> d!1997810 (=> res!2620260 e!3867045)))

(assert (=> d!1997810 (= res!2620260 ((_ is ElementMatch!16277) lt!2367776))))

(assert (=> d!1997810 (= (validRegex!8013 lt!2367776) e!3867045)))

(declare-fun b!6369142 () Bool)

(declare-fun res!2620263 () Bool)

(assert (=> b!6369142 (=> (not res!2620263) (not e!3867040))))

(assert (=> b!6369142 (= res!2620263 call!543845)))

(assert (=> b!6369142 (= e!3867039 e!3867040)))

(declare-fun bm!543840 () Bool)

(assert (=> bm!543840 (= call!543845 call!543843)))

(declare-fun b!6369143 () Bool)

(assert (=> b!6369143 (= e!3867041 e!3867039)))

(assert (=> b!6369143 (= c!1159841 ((_ is Union!16277) lt!2367776))))

(assert (= (and d!1997810 (not res!2620260)) b!6369141))

(assert (= (and b!6369141 c!1159842) b!6369136))

(assert (= (and b!6369141 (not c!1159842)) b!6369143))

(assert (= (and b!6369136 res!2620264) b!6369135))

(assert (= (and b!6369143 c!1159841) b!6369142))

(assert (= (and b!6369143 (not c!1159841)) b!6369137))

(assert (= (and b!6369142 res!2620263) b!6369139))

(assert (= (and b!6369137 (not res!2620262)) b!6369138))

(assert (= (and b!6369138 res!2620261) b!6369140))

(assert (= (or b!6369139 b!6369140) bm!543839))

(assert (= (or b!6369142 b!6369138) bm!543840))

(assert (= (or b!6369135 bm!543840) bm!543838))

(declare-fun m!7172544 () Bool)

(assert (=> bm!543838 m!7172544))

(declare-fun m!7172546 () Bool)

(assert (=> b!6369136 m!7172546))

(declare-fun m!7172548 () Bool)

(assert (=> bm!543839 m!7172548))

(assert (=> d!1997436 d!1997810))

(declare-fun bs!1595359 () Bool)

(declare-fun d!1997816 () Bool)

(assert (= bs!1595359 (and d!1997816 d!1997616)))

(declare-fun lambda!350966 () Int)

(assert (=> bs!1595359 (= lambda!350966 lambda!350932)))

(declare-fun bs!1595360 () Bool)

(assert (= bs!1595360 (and d!1997816 d!1997320)))

(assert (=> bs!1595360 (= lambda!350966 lambda!350867)))

(declare-fun bs!1595361 () Bool)

(assert (= bs!1595361 (and d!1997816 d!1997808)))

(assert (=> bs!1595361 (= lambda!350966 lambda!350965)))

(declare-fun bs!1595362 () Bool)

(assert (= bs!1595362 (and d!1997816 d!1997332)))

(assert (=> bs!1595362 (= lambda!350966 lambda!350870)))

(declare-fun bs!1595363 () Bool)

(assert (= bs!1595363 (and d!1997816 d!1997346)))

(assert (=> bs!1595363 (= lambda!350966 lambda!350879)))

(declare-fun bs!1595364 () Bool)

(assert (= bs!1595364 (and d!1997816 d!1997368)))

(assert (=> bs!1595364 (= lambda!350966 lambda!350882)))

(declare-fun bs!1595365 () Bool)

(assert (= bs!1595365 (and d!1997816 d!1997354)))

(assert (=> bs!1595365 (= lambda!350966 lambda!350880)))

(declare-fun bs!1595366 () Bool)

(assert (= bs!1595366 (and d!1997816 d!1997426)))

(assert (=> bs!1595366 (= lambda!350966 lambda!350901)))

(declare-fun bs!1595367 () Bool)

(assert (= bs!1595367 (and d!1997816 d!1997544)))

(assert (=> bs!1595367 (= lambda!350966 lambda!350926)))

(declare-fun bs!1595368 () Bool)

(assert (= bs!1595368 (and d!1997816 d!1997744)))

(assert (=> bs!1595368 (= lambda!350966 lambda!350958)))

(declare-fun bs!1595369 () Bool)

(assert (= bs!1595369 (and d!1997816 d!1997604)))

(assert (=> bs!1595369 (= lambda!350966 lambda!350930)))

(declare-fun b!6369153 () Bool)

(declare-fun e!3867053 () Regex!16277)

(assert (=> b!6369153 (= e!3867053 EmptyLang!16277)))

(declare-fun b!6369154 () Bool)

(declare-fun e!3867057 () Regex!16277)

(assert (=> b!6369154 (= e!3867057 (h!71455 (unfocusZipperList!1698 (Cons!65008 lt!2367709 Nil!65008))))))

(declare-fun b!6369155 () Bool)

(declare-fun e!3867055 () Bool)

(declare-fun e!3867058 () Bool)

(assert (=> b!6369155 (= e!3867055 e!3867058)))

(declare-fun c!1159847 () Bool)

(assert (=> b!6369155 (= c!1159847 (isEmpty!37117 (tail!12129 (unfocusZipperList!1698 (Cons!65008 lt!2367709 Nil!65008)))))))

(declare-fun b!6369156 () Bool)

(declare-fun lt!2367853 () Regex!16277)

(assert (=> b!6369156 (= e!3867058 (isUnion!1115 lt!2367853))))

(declare-fun b!6369157 () Bool)

(declare-fun e!3867056 () Bool)

(assert (=> b!6369157 (= e!3867056 (isEmpty!37117 (t!378729 (unfocusZipperList!1698 (Cons!65008 lt!2367709 Nil!65008)))))))

(declare-fun b!6369158 () Bool)

(assert (=> b!6369158 (= e!3867057 e!3867053)))

(declare-fun c!1159846 () Bool)

(assert (=> b!6369158 (= c!1159846 ((_ is Cons!65007) (unfocusZipperList!1698 (Cons!65008 lt!2367709 Nil!65008))))))

(declare-fun e!3867054 () Bool)

(assert (=> d!1997816 e!3867054))

(declare-fun res!2620271 () Bool)

(assert (=> d!1997816 (=> (not res!2620271) (not e!3867054))))

(assert (=> d!1997816 (= res!2620271 (validRegex!8013 lt!2367853))))

(assert (=> d!1997816 (= lt!2367853 e!3867057)))

(declare-fun c!1159845 () Bool)

(assert (=> d!1997816 (= c!1159845 e!3867056)))

(declare-fun res!2620270 () Bool)

(assert (=> d!1997816 (=> (not res!2620270) (not e!3867056))))

(assert (=> d!1997816 (= res!2620270 ((_ is Cons!65007) (unfocusZipperList!1698 (Cons!65008 lt!2367709 Nil!65008))))))

(assert (=> d!1997816 (forall!15454 (unfocusZipperList!1698 (Cons!65008 lt!2367709 Nil!65008)) lambda!350966)))

(assert (=> d!1997816 (= (generalisedUnion!2121 (unfocusZipperList!1698 (Cons!65008 lt!2367709 Nil!65008))) lt!2367853)))

(declare-fun b!6369159 () Bool)

(assert (=> b!6369159 (= e!3867054 e!3867055)))

(declare-fun c!1159848 () Bool)

(assert (=> b!6369159 (= c!1159848 (isEmpty!37117 (unfocusZipperList!1698 (Cons!65008 lt!2367709 Nil!65008))))))

(declare-fun b!6369160 () Bool)

(assert (=> b!6369160 (= e!3867058 (= lt!2367853 (head!13044 (unfocusZipperList!1698 (Cons!65008 lt!2367709 Nil!65008)))))))

(declare-fun b!6369161 () Bool)

(assert (=> b!6369161 (= e!3867053 (Union!16277 (h!71455 (unfocusZipperList!1698 (Cons!65008 lt!2367709 Nil!65008))) (generalisedUnion!2121 (t!378729 (unfocusZipperList!1698 (Cons!65008 lt!2367709 Nil!65008))))))))

(declare-fun b!6369162 () Bool)

(assert (=> b!6369162 (= e!3867055 (isEmptyLang!1685 lt!2367853))))

(assert (= (and d!1997816 res!2620270) b!6369157))

(assert (= (and d!1997816 c!1159845) b!6369154))

(assert (= (and d!1997816 (not c!1159845)) b!6369158))

(assert (= (and b!6369158 c!1159846) b!6369161))

(assert (= (and b!6369158 (not c!1159846)) b!6369153))

(assert (= (and d!1997816 res!2620271) b!6369159))

(assert (= (and b!6369159 c!1159848) b!6369162))

(assert (= (and b!6369159 (not c!1159848)) b!6369155))

(assert (= (and b!6369155 c!1159847) b!6369160))

(assert (= (and b!6369155 (not c!1159847)) b!6369156))

(declare-fun m!7172556 () Bool)

(assert (=> b!6369157 m!7172556))

(assert (=> b!6369155 m!7171684))

(declare-fun m!7172558 () Bool)

(assert (=> b!6369155 m!7172558))

(assert (=> b!6369155 m!7172558))

(declare-fun m!7172560 () Bool)

(assert (=> b!6369155 m!7172560))

(assert (=> b!6369160 m!7171684))

(declare-fun m!7172562 () Bool)

(assert (=> b!6369160 m!7172562))

(declare-fun m!7172564 () Bool)

(assert (=> b!6369156 m!7172564))

(declare-fun m!7172566 () Bool)

(assert (=> b!6369161 m!7172566))

(declare-fun m!7172568 () Bool)

(assert (=> b!6369162 m!7172568))

(declare-fun m!7172570 () Bool)

(assert (=> d!1997816 m!7172570))

(assert (=> d!1997816 m!7171684))

(declare-fun m!7172572 () Bool)

(assert (=> d!1997816 m!7172572))

(assert (=> b!6369159 m!7171684))

(declare-fun m!7172574 () Bool)

(assert (=> b!6369159 m!7172574))

(assert (=> d!1997436 d!1997816))

(declare-fun bs!1595375 () Bool)

(declare-fun d!1997824 () Bool)

(assert (= bs!1595375 (and d!1997824 d!1997616)))

(declare-fun lambda!350968 () Int)

(assert (=> bs!1595375 (= lambda!350968 lambda!350932)))

(declare-fun bs!1595376 () Bool)

(assert (= bs!1595376 (and d!1997824 d!1997320)))

(assert (=> bs!1595376 (= lambda!350968 lambda!350867)))

(declare-fun bs!1595378 () Bool)

(assert (= bs!1595378 (and d!1997824 d!1997808)))

(assert (=> bs!1595378 (= lambda!350968 lambda!350965)))

(declare-fun bs!1595379 () Bool)

(assert (= bs!1595379 (and d!1997824 d!1997332)))

(assert (=> bs!1595379 (= lambda!350968 lambda!350870)))

(declare-fun bs!1595380 () Bool)

(assert (= bs!1595380 (and d!1997824 d!1997816)))

(assert (=> bs!1595380 (= lambda!350968 lambda!350966)))

(declare-fun bs!1595381 () Bool)

(assert (= bs!1595381 (and d!1997824 d!1997346)))

(assert (=> bs!1595381 (= lambda!350968 lambda!350879)))

(declare-fun bs!1595382 () Bool)

(assert (= bs!1595382 (and d!1997824 d!1997368)))

(assert (=> bs!1595382 (= lambda!350968 lambda!350882)))

(declare-fun bs!1595383 () Bool)

(assert (= bs!1595383 (and d!1997824 d!1997354)))

(assert (=> bs!1595383 (= lambda!350968 lambda!350880)))

(declare-fun bs!1595384 () Bool)

(assert (= bs!1595384 (and d!1997824 d!1997426)))

(assert (=> bs!1595384 (= lambda!350968 lambda!350901)))

(declare-fun bs!1595385 () Bool)

(assert (= bs!1595385 (and d!1997824 d!1997544)))

(assert (=> bs!1595385 (= lambda!350968 lambda!350926)))

(declare-fun bs!1595386 () Bool)

(assert (= bs!1595386 (and d!1997824 d!1997744)))

(assert (=> bs!1595386 (= lambda!350968 lambda!350958)))

(declare-fun bs!1595387 () Bool)

(assert (= bs!1595387 (and d!1997824 d!1997604)))

(assert (=> bs!1595387 (= lambda!350968 lambda!350930)))

(declare-fun lt!2367854 () List!65131)

(assert (=> d!1997824 (forall!15454 lt!2367854 lambda!350968)))

(declare-fun e!3867066 () List!65131)

(assert (=> d!1997824 (= lt!2367854 e!3867066)))

(declare-fun c!1159853 () Bool)

(assert (=> d!1997824 (= c!1159853 ((_ is Cons!65008) (Cons!65008 lt!2367709 Nil!65008)))))

(assert (=> d!1997824 (= (unfocusZipperList!1698 (Cons!65008 lt!2367709 Nil!65008)) lt!2367854)))

(declare-fun b!6369174 () Bool)

(assert (=> b!6369174 (= e!3867066 (Cons!65007 (generalisedConcat!1874 (exprs!6161 (h!71456 (Cons!65008 lt!2367709 Nil!65008)))) (unfocusZipperList!1698 (t!378730 (Cons!65008 lt!2367709 Nil!65008)))))))

(declare-fun b!6369175 () Bool)

(assert (=> b!6369175 (= e!3867066 Nil!65007)))

(assert (= (and d!1997824 c!1159853) b!6369174))

(assert (= (and d!1997824 (not c!1159853)) b!6369175))

(declare-fun m!7172576 () Bool)

(assert (=> d!1997824 m!7172576))

(declare-fun m!7172578 () Bool)

(assert (=> b!6369174 m!7172578))

(declare-fun m!7172580 () Bool)

(assert (=> b!6369174 m!7172580))

(assert (=> d!1997436 d!1997824))

(declare-fun b!6369176 () Bool)

(declare-fun e!3867067 () Bool)

(declare-fun tp!1773181 () Bool)

(assert (=> b!6369176 (= e!3867067 (and tp_is_empty!41807 tp!1773181))))

(assert (=> b!6368408 (= tp!1773102 e!3867067)))

(assert (= (and b!6368408 ((_ is Cons!65006) (t!378728 (t!378728 s!2326)))) b!6369176))

(declare-fun b!6369180 () Bool)

(declare-fun e!3867068 () Bool)

(declare-fun tp!1773183 () Bool)

(declare-fun tp!1773182 () Bool)

(assert (=> b!6369180 (= e!3867068 (and tp!1773183 tp!1773182))))

(declare-fun b!6369177 () Bool)

(assert (=> b!6369177 (= e!3867068 tp_is_empty!41807)))

(declare-fun b!6369178 () Bool)

(declare-fun tp!1773184 () Bool)

(declare-fun tp!1773185 () Bool)

(assert (=> b!6369178 (= e!3867068 (and tp!1773184 tp!1773185))))

(assert (=> b!6368400 (= tp!1773095 e!3867068)))

(declare-fun b!6369179 () Bool)

(declare-fun tp!1773186 () Bool)

(assert (=> b!6369179 (= e!3867068 tp!1773186)))

(assert (= (and b!6368400 ((_ is ElementMatch!16277) (regOne!33066 (reg!16606 r!7292)))) b!6369177))

(assert (= (and b!6368400 ((_ is Concat!25122) (regOne!33066 (reg!16606 r!7292)))) b!6369178))

(assert (= (and b!6368400 ((_ is Star!16277) (regOne!33066 (reg!16606 r!7292)))) b!6369179))

(assert (= (and b!6368400 ((_ is Union!16277) (regOne!33066 (reg!16606 r!7292)))) b!6369180))

(declare-fun b!6369184 () Bool)

(declare-fun e!3867069 () Bool)

(declare-fun tp!1773188 () Bool)

(declare-fun tp!1773187 () Bool)

(assert (=> b!6369184 (= e!3867069 (and tp!1773188 tp!1773187))))

(declare-fun b!6369181 () Bool)

(assert (=> b!6369181 (= e!3867069 tp_is_empty!41807)))

(declare-fun b!6369182 () Bool)

(declare-fun tp!1773189 () Bool)

(declare-fun tp!1773190 () Bool)

(assert (=> b!6369182 (= e!3867069 (and tp!1773189 tp!1773190))))

(assert (=> b!6368400 (= tp!1773096 e!3867069)))

(declare-fun b!6369183 () Bool)

(declare-fun tp!1773191 () Bool)

(assert (=> b!6369183 (= e!3867069 tp!1773191)))

(assert (= (and b!6368400 ((_ is ElementMatch!16277) (regTwo!33066 (reg!16606 r!7292)))) b!6369181))

(assert (= (and b!6368400 ((_ is Concat!25122) (regTwo!33066 (reg!16606 r!7292)))) b!6369182))

(assert (= (and b!6368400 ((_ is Star!16277) (regTwo!33066 (reg!16606 r!7292)))) b!6369183))

(assert (= (and b!6368400 ((_ is Union!16277) (regTwo!33066 (reg!16606 r!7292)))) b!6369184))

(declare-fun b!6369188 () Bool)

(declare-fun e!3867070 () Bool)

(declare-fun tp!1773193 () Bool)

(declare-fun tp!1773192 () Bool)

(assert (=> b!6369188 (= e!3867070 (and tp!1773193 tp!1773192))))

(declare-fun b!6369185 () Bool)

(assert (=> b!6369185 (= e!3867070 tp_is_empty!41807)))

(declare-fun b!6369186 () Bool)

(declare-fun tp!1773194 () Bool)

(declare-fun tp!1773195 () Bool)

(assert (=> b!6369186 (= e!3867070 (and tp!1773194 tp!1773195))))

(assert (=> b!6368402 (= tp!1773094 e!3867070)))

(declare-fun b!6369187 () Bool)

(declare-fun tp!1773196 () Bool)

(assert (=> b!6369187 (= e!3867070 tp!1773196)))

(assert (= (and b!6368402 ((_ is ElementMatch!16277) (regOne!33067 (reg!16606 r!7292)))) b!6369185))

(assert (= (and b!6368402 ((_ is Concat!25122) (regOne!33067 (reg!16606 r!7292)))) b!6369186))

(assert (= (and b!6368402 ((_ is Star!16277) (regOne!33067 (reg!16606 r!7292)))) b!6369187))

(assert (= (and b!6368402 ((_ is Union!16277) (regOne!33067 (reg!16606 r!7292)))) b!6369188))

(declare-fun b!6369192 () Bool)

(declare-fun e!3867071 () Bool)

(declare-fun tp!1773198 () Bool)

(declare-fun tp!1773197 () Bool)

(assert (=> b!6369192 (= e!3867071 (and tp!1773198 tp!1773197))))

(declare-fun b!6369189 () Bool)

(assert (=> b!6369189 (= e!3867071 tp_is_empty!41807)))

(declare-fun b!6369190 () Bool)

(declare-fun tp!1773199 () Bool)

(declare-fun tp!1773200 () Bool)

(assert (=> b!6369190 (= e!3867071 (and tp!1773199 tp!1773200))))

(assert (=> b!6368402 (= tp!1773093 e!3867071)))

(declare-fun b!6369191 () Bool)

(declare-fun tp!1773201 () Bool)

(assert (=> b!6369191 (= e!3867071 tp!1773201)))

(assert (= (and b!6368402 ((_ is ElementMatch!16277) (regTwo!33067 (reg!16606 r!7292)))) b!6369189))

(assert (= (and b!6368402 ((_ is Concat!25122) (regTwo!33067 (reg!16606 r!7292)))) b!6369190))

(assert (= (and b!6368402 ((_ is Star!16277) (regTwo!33067 (reg!16606 r!7292)))) b!6369191))

(assert (= (and b!6368402 ((_ is Union!16277) (regTwo!33067 (reg!16606 r!7292)))) b!6369192))

(declare-fun b!6369196 () Bool)

(declare-fun e!3867072 () Bool)

(declare-fun tp!1773203 () Bool)

(declare-fun tp!1773202 () Bool)

(assert (=> b!6369196 (= e!3867072 (and tp!1773203 tp!1773202))))

(declare-fun b!6369193 () Bool)

(assert (=> b!6369193 (= e!3867072 tp_is_empty!41807)))

(declare-fun b!6369194 () Bool)

(declare-fun tp!1773204 () Bool)

(declare-fun tp!1773205 () Bool)

(assert (=> b!6369194 (= e!3867072 (and tp!1773204 tp!1773205))))

(assert (=> b!6368401 (= tp!1773097 e!3867072)))

(declare-fun b!6369195 () Bool)

(declare-fun tp!1773206 () Bool)

(assert (=> b!6369195 (= e!3867072 tp!1773206)))

(assert (= (and b!6368401 ((_ is ElementMatch!16277) (reg!16606 (reg!16606 r!7292)))) b!6369193))

(assert (= (and b!6368401 ((_ is Concat!25122) (reg!16606 (reg!16606 r!7292)))) b!6369194))

(assert (= (and b!6368401 ((_ is Star!16277) (reg!16606 (reg!16606 r!7292)))) b!6369195))

(assert (= (and b!6368401 ((_ is Union!16277) (reg!16606 (reg!16606 r!7292)))) b!6369196))

(declare-fun b!6369200 () Bool)

(declare-fun e!3867073 () Bool)

(declare-fun tp!1773208 () Bool)

(declare-fun tp!1773207 () Bool)

(assert (=> b!6369200 (= e!3867073 (and tp!1773208 tp!1773207))))

(declare-fun b!6369197 () Bool)

(assert (=> b!6369197 (= e!3867073 tp_is_empty!41807)))

(declare-fun b!6369198 () Bool)

(declare-fun tp!1773209 () Bool)

(declare-fun tp!1773210 () Bool)

(assert (=> b!6369198 (= e!3867073 (and tp!1773209 tp!1773210))))

(assert (=> b!6368392 (= tp!1773085 e!3867073)))

(declare-fun b!6369199 () Bool)

(declare-fun tp!1773211 () Bool)

(assert (=> b!6369199 (= e!3867073 tp!1773211)))

(assert (= (and b!6368392 ((_ is ElementMatch!16277) (regOne!33066 (regOne!33067 r!7292)))) b!6369197))

(assert (= (and b!6368392 ((_ is Concat!25122) (regOne!33066 (regOne!33067 r!7292)))) b!6369198))

(assert (= (and b!6368392 ((_ is Star!16277) (regOne!33066 (regOne!33067 r!7292)))) b!6369199))

(assert (= (and b!6368392 ((_ is Union!16277) (regOne!33066 (regOne!33067 r!7292)))) b!6369200))

(declare-fun b!6369204 () Bool)

(declare-fun e!3867074 () Bool)

(declare-fun tp!1773213 () Bool)

(declare-fun tp!1773212 () Bool)

(assert (=> b!6369204 (= e!3867074 (and tp!1773213 tp!1773212))))

(declare-fun b!6369201 () Bool)

(assert (=> b!6369201 (= e!3867074 tp_is_empty!41807)))

(declare-fun b!6369202 () Bool)

(declare-fun tp!1773214 () Bool)

(declare-fun tp!1773215 () Bool)

(assert (=> b!6369202 (= e!3867074 (and tp!1773214 tp!1773215))))

(assert (=> b!6368392 (= tp!1773086 e!3867074)))

(declare-fun b!6369203 () Bool)

(declare-fun tp!1773216 () Bool)

(assert (=> b!6369203 (= e!3867074 tp!1773216)))

(assert (= (and b!6368392 ((_ is ElementMatch!16277) (regTwo!33066 (regOne!33067 r!7292)))) b!6369201))

(assert (= (and b!6368392 ((_ is Concat!25122) (regTwo!33066 (regOne!33067 r!7292)))) b!6369202))

(assert (= (and b!6368392 ((_ is Star!16277) (regTwo!33066 (regOne!33067 r!7292)))) b!6369203))

(assert (= (and b!6368392 ((_ is Union!16277) (regTwo!33066 (regOne!33067 r!7292)))) b!6369204))

(declare-fun b!6369208 () Bool)

(declare-fun e!3867075 () Bool)

(declare-fun tp!1773218 () Bool)

(declare-fun tp!1773217 () Bool)

(assert (=> b!6369208 (= e!3867075 (and tp!1773218 tp!1773217))))

(declare-fun b!6369205 () Bool)

(assert (=> b!6369205 (= e!3867075 tp_is_empty!41807)))

(declare-fun b!6369206 () Bool)

(declare-fun tp!1773219 () Bool)

(declare-fun tp!1773220 () Bool)

(assert (=> b!6369206 (= e!3867075 (and tp!1773219 tp!1773220))))

(assert (=> b!6368394 (= tp!1773084 e!3867075)))

(declare-fun b!6369207 () Bool)

(declare-fun tp!1773221 () Bool)

(assert (=> b!6369207 (= e!3867075 tp!1773221)))

(assert (= (and b!6368394 ((_ is ElementMatch!16277) (regOne!33067 (regOne!33067 r!7292)))) b!6369205))

(assert (= (and b!6368394 ((_ is Concat!25122) (regOne!33067 (regOne!33067 r!7292)))) b!6369206))

(assert (= (and b!6368394 ((_ is Star!16277) (regOne!33067 (regOne!33067 r!7292)))) b!6369207))

(assert (= (and b!6368394 ((_ is Union!16277) (regOne!33067 (regOne!33067 r!7292)))) b!6369208))

(declare-fun b!6369212 () Bool)

(declare-fun e!3867077 () Bool)

(declare-fun tp!1773223 () Bool)

(declare-fun tp!1773222 () Bool)

(assert (=> b!6369212 (= e!3867077 (and tp!1773223 tp!1773222))))

(declare-fun b!6369209 () Bool)

(assert (=> b!6369209 (= e!3867077 tp_is_empty!41807)))

(declare-fun b!6369210 () Bool)

(declare-fun tp!1773224 () Bool)

(declare-fun tp!1773225 () Bool)

(assert (=> b!6369210 (= e!3867077 (and tp!1773224 tp!1773225))))

(assert (=> b!6368394 (= tp!1773083 e!3867077)))

(declare-fun b!6369211 () Bool)

(declare-fun tp!1773226 () Bool)

(assert (=> b!6369211 (= e!3867077 tp!1773226)))

(assert (= (and b!6368394 ((_ is ElementMatch!16277) (regTwo!33067 (regOne!33067 r!7292)))) b!6369209))

(assert (= (and b!6368394 ((_ is Concat!25122) (regTwo!33067 (regOne!33067 r!7292)))) b!6369210))

(assert (= (and b!6368394 ((_ is Star!16277) (regTwo!33067 (regOne!33067 r!7292)))) b!6369211))

(assert (= (and b!6368394 ((_ is Union!16277) (regTwo!33067 (regOne!33067 r!7292)))) b!6369212))

(declare-fun b!6369227 () Bool)

(declare-fun e!3867083 () Bool)

(declare-fun tp!1773228 () Bool)

(declare-fun tp!1773227 () Bool)

(assert (=> b!6369227 (= e!3867083 (and tp!1773228 tp!1773227))))

(declare-fun b!6369224 () Bool)

(assert (=> b!6369224 (= e!3867083 tp_is_empty!41807)))

(declare-fun b!6369225 () Bool)

(declare-fun tp!1773229 () Bool)

(declare-fun tp!1773230 () Bool)

(assert (=> b!6369225 (= e!3867083 (and tp!1773229 tp!1773230))))

(assert (=> b!6368393 (= tp!1773087 e!3867083)))

(declare-fun b!6369226 () Bool)

(declare-fun tp!1773231 () Bool)

(assert (=> b!6369226 (= e!3867083 tp!1773231)))

(assert (= (and b!6368393 ((_ is ElementMatch!16277) (reg!16606 (regOne!33067 r!7292)))) b!6369224))

(assert (= (and b!6368393 ((_ is Concat!25122) (reg!16606 (regOne!33067 r!7292)))) b!6369225))

(assert (= (and b!6368393 ((_ is Star!16277) (reg!16606 (regOne!33067 r!7292)))) b!6369226))

(assert (= (and b!6368393 ((_ is Union!16277) (reg!16606 (regOne!33067 r!7292)))) b!6369227))

(declare-fun b!6369231 () Bool)

(declare-fun e!3867084 () Bool)

(declare-fun tp!1773233 () Bool)

(declare-fun tp!1773232 () Bool)

(assert (=> b!6369231 (= e!3867084 (and tp!1773233 tp!1773232))))

(declare-fun b!6369228 () Bool)

(assert (=> b!6369228 (= e!3867084 tp_is_empty!41807)))

(declare-fun b!6369229 () Bool)

(declare-fun tp!1773234 () Bool)

(declare-fun tp!1773235 () Bool)

(assert (=> b!6369229 (= e!3867084 (and tp!1773234 tp!1773235))))

(assert (=> b!6368384 (= tp!1773075 e!3867084)))

(declare-fun b!6369230 () Bool)

(declare-fun tp!1773236 () Bool)

(assert (=> b!6369230 (= e!3867084 tp!1773236)))

(assert (= (and b!6368384 ((_ is ElementMatch!16277) (regOne!33066 (regOne!33066 r!7292)))) b!6369228))

(assert (= (and b!6368384 ((_ is Concat!25122) (regOne!33066 (regOne!33066 r!7292)))) b!6369229))

(assert (= (and b!6368384 ((_ is Star!16277) (regOne!33066 (regOne!33066 r!7292)))) b!6369230))

(assert (= (and b!6368384 ((_ is Union!16277) (regOne!33066 (regOne!33066 r!7292)))) b!6369231))

(declare-fun b!6369235 () Bool)

(declare-fun e!3867085 () Bool)

(declare-fun tp!1773238 () Bool)

(declare-fun tp!1773237 () Bool)

(assert (=> b!6369235 (= e!3867085 (and tp!1773238 tp!1773237))))

(declare-fun b!6369232 () Bool)

(assert (=> b!6369232 (= e!3867085 tp_is_empty!41807)))

(declare-fun b!6369233 () Bool)

(declare-fun tp!1773239 () Bool)

(declare-fun tp!1773240 () Bool)

(assert (=> b!6369233 (= e!3867085 (and tp!1773239 tp!1773240))))

(assert (=> b!6368384 (= tp!1773076 e!3867085)))

(declare-fun b!6369234 () Bool)

(declare-fun tp!1773241 () Bool)

(assert (=> b!6369234 (= e!3867085 tp!1773241)))

(assert (= (and b!6368384 ((_ is ElementMatch!16277) (regTwo!33066 (regOne!33066 r!7292)))) b!6369232))

(assert (= (and b!6368384 ((_ is Concat!25122) (regTwo!33066 (regOne!33066 r!7292)))) b!6369233))

(assert (= (and b!6368384 ((_ is Star!16277) (regTwo!33066 (regOne!33066 r!7292)))) b!6369234))

(assert (= (and b!6368384 ((_ is Union!16277) (regTwo!33066 (regOne!33066 r!7292)))) b!6369235))

(declare-fun b!6369239 () Bool)

(declare-fun e!3867086 () Bool)

(declare-fun tp!1773243 () Bool)

(declare-fun tp!1773242 () Bool)

(assert (=> b!6369239 (= e!3867086 (and tp!1773243 tp!1773242))))

(declare-fun b!6369236 () Bool)

(assert (=> b!6369236 (= e!3867086 tp_is_empty!41807)))

(declare-fun b!6369237 () Bool)

(declare-fun tp!1773244 () Bool)

(declare-fun tp!1773245 () Bool)

(assert (=> b!6369237 (= e!3867086 (and tp!1773244 tp!1773245))))

(assert (=> b!6368386 (= tp!1773074 e!3867086)))

(declare-fun b!6369238 () Bool)

(declare-fun tp!1773246 () Bool)

(assert (=> b!6369238 (= e!3867086 tp!1773246)))

(assert (= (and b!6368386 ((_ is ElementMatch!16277) (regOne!33067 (regOne!33066 r!7292)))) b!6369236))

(assert (= (and b!6368386 ((_ is Concat!25122) (regOne!33067 (regOne!33066 r!7292)))) b!6369237))

(assert (= (and b!6368386 ((_ is Star!16277) (regOne!33067 (regOne!33066 r!7292)))) b!6369238))

(assert (= (and b!6368386 ((_ is Union!16277) (regOne!33067 (regOne!33066 r!7292)))) b!6369239))

(declare-fun b!6369243 () Bool)

(declare-fun e!3867087 () Bool)

(declare-fun tp!1773248 () Bool)

(declare-fun tp!1773247 () Bool)

(assert (=> b!6369243 (= e!3867087 (and tp!1773248 tp!1773247))))

(declare-fun b!6369240 () Bool)

(assert (=> b!6369240 (= e!3867087 tp_is_empty!41807)))

(declare-fun b!6369241 () Bool)

(declare-fun tp!1773249 () Bool)

(declare-fun tp!1773250 () Bool)

(assert (=> b!6369241 (= e!3867087 (and tp!1773249 tp!1773250))))

(assert (=> b!6368386 (= tp!1773073 e!3867087)))

(declare-fun b!6369242 () Bool)

(declare-fun tp!1773251 () Bool)

(assert (=> b!6369242 (= e!3867087 tp!1773251)))

(assert (= (and b!6368386 ((_ is ElementMatch!16277) (regTwo!33067 (regOne!33066 r!7292)))) b!6369240))

(assert (= (and b!6368386 ((_ is Concat!25122) (regTwo!33067 (regOne!33066 r!7292)))) b!6369241))

(assert (= (and b!6368386 ((_ is Star!16277) (regTwo!33067 (regOne!33066 r!7292)))) b!6369242))

(assert (= (and b!6368386 ((_ is Union!16277) (regTwo!33067 (regOne!33066 r!7292)))) b!6369243))

(declare-fun b!6369245 () Bool)

(declare-fun e!3867089 () Bool)

(declare-fun tp!1773252 () Bool)

(assert (=> b!6369245 (= e!3867089 tp!1773252)))

(declare-fun b!6369244 () Bool)

(declare-fun tp!1773253 () Bool)

(declare-fun e!3867088 () Bool)

(assert (=> b!6369244 (= e!3867088 (and (inv!83939 (h!71456 (t!378730 (t!378730 zl!343)))) e!3867089 tp!1773253))))

(assert (=> b!6368366 (= tp!1773056 e!3867088)))

(assert (= b!6369244 b!6369245))

(assert (= (and b!6368366 ((_ is Cons!65008) (t!378730 (t!378730 zl!343)))) b!6369244))

(declare-fun m!7172596 () Bool)

(assert (=> b!6369244 m!7172596))

(declare-fun b!6369249 () Bool)

(declare-fun e!3867090 () Bool)

(declare-fun tp!1773255 () Bool)

(declare-fun tp!1773254 () Bool)

(assert (=> b!6369249 (= e!3867090 (and tp!1773255 tp!1773254))))

(declare-fun b!6369246 () Bool)

(assert (=> b!6369246 (= e!3867090 tp_is_empty!41807)))

(declare-fun b!6369247 () Bool)

(declare-fun tp!1773256 () Bool)

(declare-fun tp!1773257 () Bool)

(assert (=> b!6369247 (= e!3867090 (and tp!1773256 tp!1773257))))

(assert (=> b!6368385 (= tp!1773077 e!3867090)))

(declare-fun b!6369248 () Bool)

(declare-fun tp!1773258 () Bool)

(assert (=> b!6369248 (= e!3867090 tp!1773258)))

(assert (= (and b!6368385 ((_ is ElementMatch!16277) (reg!16606 (regOne!33066 r!7292)))) b!6369246))

(assert (= (and b!6368385 ((_ is Concat!25122) (reg!16606 (regOne!33066 r!7292)))) b!6369247))

(assert (= (and b!6368385 ((_ is Star!16277) (reg!16606 (regOne!33066 r!7292)))) b!6369248))

(assert (= (and b!6368385 ((_ is Union!16277) (reg!16606 (regOne!33066 r!7292)))) b!6369249))

(declare-fun b!6369250 () Bool)

(declare-fun e!3867091 () Bool)

(declare-fun tp!1773259 () Bool)

(declare-fun tp!1773260 () Bool)

(assert (=> b!6369250 (= e!3867091 (and tp!1773259 tp!1773260))))

(assert (=> b!6368367 (= tp!1773055 e!3867091)))

(assert (= (and b!6368367 ((_ is Cons!65007) (exprs!6161 (h!71456 (t!378730 zl!343))))) b!6369250))

(declare-fun b!6369254 () Bool)

(declare-fun e!3867092 () Bool)

(declare-fun tp!1773262 () Bool)

(declare-fun tp!1773261 () Bool)

(assert (=> b!6369254 (= e!3867092 (and tp!1773262 tp!1773261))))

(declare-fun b!6369251 () Bool)

(assert (=> b!6369251 (= e!3867092 tp_is_empty!41807)))

(declare-fun b!6369252 () Bool)

(declare-fun tp!1773263 () Bool)

(declare-fun tp!1773264 () Bool)

(assert (=> b!6369252 (= e!3867092 (and tp!1773263 tp!1773264))))

(assert (=> b!6368403 (= tp!1773098 e!3867092)))

(declare-fun b!6369253 () Bool)

(declare-fun tp!1773265 () Bool)

(assert (=> b!6369253 (= e!3867092 tp!1773265)))

(assert (= (and b!6368403 ((_ is ElementMatch!16277) (h!71455 (exprs!6161 (h!71456 zl!343))))) b!6369251))

(assert (= (and b!6368403 ((_ is Concat!25122) (h!71455 (exprs!6161 (h!71456 zl!343))))) b!6369252))

(assert (= (and b!6368403 ((_ is Star!16277) (h!71455 (exprs!6161 (h!71456 zl!343))))) b!6369253))

(assert (= (and b!6368403 ((_ is Union!16277) (h!71455 (exprs!6161 (h!71456 zl!343))))) b!6369254))

(declare-fun b!6369257 () Bool)

(declare-fun e!3867094 () Bool)

(declare-fun tp!1773266 () Bool)

(declare-fun tp!1773267 () Bool)

(assert (=> b!6369257 (= e!3867094 (and tp!1773266 tp!1773267))))

(assert (=> b!6368403 (= tp!1773099 e!3867094)))

(assert (= (and b!6368403 ((_ is Cons!65007) (t!378729 (exprs!6161 (h!71456 zl!343))))) b!6369257))

(declare-fun b!6369261 () Bool)

(declare-fun e!3867095 () Bool)

(declare-fun tp!1773269 () Bool)

(declare-fun tp!1773268 () Bool)

(assert (=> b!6369261 (= e!3867095 (and tp!1773269 tp!1773268))))

(declare-fun b!6369258 () Bool)

(assert (=> b!6369258 (= e!3867095 tp_is_empty!41807)))

(declare-fun b!6369259 () Bool)

(declare-fun tp!1773270 () Bool)

(declare-fun tp!1773271 () Bool)

(assert (=> b!6369259 (= e!3867095 (and tp!1773270 tp!1773271))))

(assert (=> b!6368396 (= tp!1773090 e!3867095)))

(declare-fun b!6369260 () Bool)

(declare-fun tp!1773272 () Bool)

(assert (=> b!6369260 (= e!3867095 tp!1773272)))

(assert (= (and b!6368396 ((_ is ElementMatch!16277) (regOne!33066 (regTwo!33067 r!7292)))) b!6369258))

(assert (= (and b!6368396 ((_ is Concat!25122) (regOne!33066 (regTwo!33067 r!7292)))) b!6369259))

(assert (= (and b!6368396 ((_ is Star!16277) (regOne!33066 (regTwo!33067 r!7292)))) b!6369260))

(assert (= (and b!6368396 ((_ is Union!16277) (regOne!33066 (regTwo!33067 r!7292)))) b!6369261))

(declare-fun b!6369265 () Bool)

(declare-fun e!3867096 () Bool)

(declare-fun tp!1773274 () Bool)

(declare-fun tp!1773273 () Bool)

(assert (=> b!6369265 (= e!3867096 (and tp!1773274 tp!1773273))))

(declare-fun b!6369262 () Bool)

(assert (=> b!6369262 (= e!3867096 tp_is_empty!41807)))

(declare-fun b!6369263 () Bool)

(declare-fun tp!1773275 () Bool)

(declare-fun tp!1773276 () Bool)

(assert (=> b!6369263 (= e!3867096 (and tp!1773275 tp!1773276))))

(assert (=> b!6368396 (= tp!1773091 e!3867096)))

(declare-fun b!6369264 () Bool)

(declare-fun tp!1773277 () Bool)

(assert (=> b!6369264 (= e!3867096 tp!1773277)))

(assert (= (and b!6368396 ((_ is ElementMatch!16277) (regTwo!33066 (regTwo!33067 r!7292)))) b!6369262))

(assert (= (and b!6368396 ((_ is Concat!25122) (regTwo!33066 (regTwo!33067 r!7292)))) b!6369263))

(assert (= (and b!6368396 ((_ is Star!16277) (regTwo!33066 (regTwo!33067 r!7292)))) b!6369264))

(assert (= (and b!6368396 ((_ is Union!16277) (regTwo!33066 (regTwo!33067 r!7292)))) b!6369265))

(declare-fun b!6369269 () Bool)

(declare-fun e!3867097 () Bool)

(declare-fun tp!1773279 () Bool)

(declare-fun tp!1773278 () Bool)

(assert (=> b!6369269 (= e!3867097 (and tp!1773279 tp!1773278))))

(declare-fun b!6369266 () Bool)

(assert (=> b!6369266 (= e!3867097 tp_is_empty!41807)))

(declare-fun b!6369267 () Bool)

(declare-fun tp!1773280 () Bool)

(declare-fun tp!1773281 () Bool)

(assert (=> b!6369267 (= e!3867097 (and tp!1773280 tp!1773281))))

(assert (=> b!6368372 (= tp!1773061 e!3867097)))

(declare-fun b!6369268 () Bool)

(declare-fun tp!1773282 () Bool)

(assert (=> b!6369268 (= e!3867097 tp!1773282)))

(assert (= (and b!6368372 ((_ is ElementMatch!16277) (h!71455 (exprs!6161 setElem!43402)))) b!6369266))

(assert (= (and b!6368372 ((_ is Concat!25122) (h!71455 (exprs!6161 setElem!43402)))) b!6369267))

(assert (= (and b!6368372 ((_ is Star!16277) (h!71455 (exprs!6161 setElem!43402)))) b!6369268))

(assert (= (and b!6368372 ((_ is Union!16277) (h!71455 (exprs!6161 setElem!43402)))) b!6369269))

(declare-fun b!6369270 () Bool)

(declare-fun e!3867098 () Bool)

(declare-fun tp!1773283 () Bool)

(declare-fun tp!1773284 () Bool)

(assert (=> b!6369270 (= e!3867098 (and tp!1773283 tp!1773284))))

(assert (=> b!6368372 (= tp!1773062 e!3867098)))

(assert (= (and b!6368372 ((_ is Cons!65007) (t!378729 (exprs!6161 setElem!43402)))) b!6369270))

(declare-fun b!6369274 () Bool)

(declare-fun e!3867099 () Bool)

(declare-fun tp!1773286 () Bool)

(declare-fun tp!1773285 () Bool)

(assert (=> b!6369274 (= e!3867099 (and tp!1773286 tp!1773285))))

(declare-fun b!6369271 () Bool)

(assert (=> b!6369271 (= e!3867099 tp_is_empty!41807)))

(declare-fun b!6369272 () Bool)

(declare-fun tp!1773287 () Bool)

(declare-fun tp!1773288 () Bool)

(assert (=> b!6369272 (= e!3867099 (and tp!1773287 tp!1773288))))

(assert (=> b!6368397 (= tp!1773092 e!3867099)))

(declare-fun b!6369273 () Bool)

(declare-fun tp!1773289 () Bool)

(assert (=> b!6369273 (= e!3867099 tp!1773289)))

(assert (= (and b!6368397 ((_ is ElementMatch!16277) (reg!16606 (regTwo!33067 r!7292)))) b!6369271))

(assert (= (and b!6368397 ((_ is Concat!25122) (reg!16606 (regTwo!33067 r!7292)))) b!6369272))

(assert (= (and b!6368397 ((_ is Star!16277) (reg!16606 (regTwo!33067 r!7292)))) b!6369273))

(assert (= (and b!6368397 ((_ is Union!16277) (reg!16606 (regTwo!33067 r!7292)))) b!6369274))

(declare-fun b!6369278 () Bool)

(declare-fun e!3867100 () Bool)

(declare-fun tp!1773291 () Bool)

(declare-fun tp!1773290 () Bool)

(assert (=> b!6369278 (= e!3867100 (and tp!1773291 tp!1773290))))

(declare-fun b!6369275 () Bool)

(assert (=> b!6369275 (= e!3867100 tp_is_empty!41807)))

(declare-fun b!6369276 () Bool)

(declare-fun tp!1773292 () Bool)

(declare-fun tp!1773293 () Bool)

(assert (=> b!6369276 (= e!3867100 (and tp!1773292 tp!1773293))))

(assert (=> b!6368388 (= tp!1773080 e!3867100)))

(declare-fun b!6369277 () Bool)

(declare-fun tp!1773294 () Bool)

(assert (=> b!6369277 (= e!3867100 tp!1773294)))

(assert (= (and b!6368388 ((_ is ElementMatch!16277) (regOne!33066 (regTwo!33066 r!7292)))) b!6369275))

(assert (= (and b!6368388 ((_ is Concat!25122) (regOne!33066 (regTwo!33066 r!7292)))) b!6369276))

(assert (= (and b!6368388 ((_ is Star!16277) (regOne!33066 (regTwo!33066 r!7292)))) b!6369277))

(assert (= (and b!6368388 ((_ is Union!16277) (regOne!33066 (regTwo!33066 r!7292)))) b!6369278))

(declare-fun b!6369282 () Bool)

(declare-fun e!3867102 () Bool)

(declare-fun tp!1773296 () Bool)

(declare-fun tp!1773295 () Bool)

(assert (=> b!6369282 (= e!3867102 (and tp!1773296 tp!1773295))))

(declare-fun b!6369279 () Bool)

(assert (=> b!6369279 (= e!3867102 tp_is_empty!41807)))

(declare-fun b!6369280 () Bool)

(declare-fun tp!1773297 () Bool)

(declare-fun tp!1773298 () Bool)

(assert (=> b!6369280 (= e!3867102 (and tp!1773297 tp!1773298))))

(assert (=> b!6368388 (= tp!1773081 e!3867102)))

(declare-fun b!6369281 () Bool)

(declare-fun tp!1773299 () Bool)

(assert (=> b!6369281 (= e!3867102 tp!1773299)))

(assert (= (and b!6368388 ((_ is ElementMatch!16277) (regTwo!33066 (regTwo!33066 r!7292)))) b!6369279))

(assert (= (and b!6368388 ((_ is Concat!25122) (regTwo!33066 (regTwo!33066 r!7292)))) b!6369280))

(assert (= (and b!6368388 ((_ is Star!16277) (regTwo!33066 (regTwo!33066 r!7292)))) b!6369281))

(assert (= (and b!6368388 ((_ is Union!16277) (regTwo!33066 (regTwo!33066 r!7292)))) b!6369282))

(declare-fun b!6369297 () Bool)

(declare-fun e!3867108 () Bool)

(declare-fun tp!1773301 () Bool)

(declare-fun tp!1773300 () Bool)

(assert (=> b!6369297 (= e!3867108 (and tp!1773301 tp!1773300))))

(declare-fun b!6369294 () Bool)

(assert (=> b!6369294 (= e!3867108 tp_is_empty!41807)))

(declare-fun b!6369295 () Bool)

(declare-fun tp!1773302 () Bool)

(declare-fun tp!1773303 () Bool)

(assert (=> b!6369295 (= e!3867108 (and tp!1773302 tp!1773303))))

(assert (=> b!6368389 (= tp!1773082 e!3867108)))

(declare-fun b!6369296 () Bool)

(declare-fun tp!1773304 () Bool)

(assert (=> b!6369296 (= e!3867108 tp!1773304)))

(assert (= (and b!6368389 ((_ is ElementMatch!16277) (reg!16606 (regTwo!33066 r!7292)))) b!6369294))

(assert (= (and b!6368389 ((_ is Concat!25122) (reg!16606 (regTwo!33066 r!7292)))) b!6369295))

(assert (= (and b!6368389 ((_ is Star!16277) (reg!16606 (regTwo!33066 r!7292)))) b!6369296))

(assert (= (and b!6368389 ((_ is Union!16277) (reg!16606 (regTwo!33066 r!7292)))) b!6369297))

(declare-fun condSetEmpty!43413 () Bool)

(assert (=> setNonEmpty!43405 (= condSetEmpty!43413 (= setRest!43405 ((as const (Array Context!11322 Bool)) false)))))

(declare-fun setRes!43413 () Bool)

(assert (=> setNonEmpty!43405 (= tp!1773107 setRes!43413)))

(declare-fun setIsEmpty!43413 () Bool)

(assert (=> setIsEmpty!43413 setRes!43413))

(declare-fun e!3867109 () Bool)

(declare-fun setNonEmpty!43413 () Bool)

(declare-fun setElem!43413 () Context!11322)

(declare-fun tp!1773305 () Bool)

(assert (=> setNonEmpty!43413 (= setRes!43413 (and tp!1773305 (inv!83939 setElem!43413) e!3867109))))

(declare-fun setRest!43413 () (InoxSet Context!11322))

(assert (=> setNonEmpty!43413 (= setRest!43405 ((_ map or) (store ((as const (Array Context!11322 Bool)) false) setElem!43413 true) setRest!43413))))

(declare-fun b!6369298 () Bool)

(declare-fun tp!1773306 () Bool)

(assert (=> b!6369298 (= e!3867109 tp!1773306)))

(assert (= (and setNonEmpty!43405 condSetEmpty!43413) setIsEmpty!43413))

(assert (= (and setNonEmpty!43405 (not condSetEmpty!43413)) setNonEmpty!43413))

(assert (= setNonEmpty!43413 b!6369298))

(declare-fun m!7172610 () Bool)

(assert (=> setNonEmpty!43413 m!7172610))

(declare-fun b!6369302 () Bool)

(declare-fun e!3867110 () Bool)

(declare-fun tp!1773308 () Bool)

(declare-fun tp!1773307 () Bool)

(assert (=> b!6369302 (= e!3867110 (and tp!1773308 tp!1773307))))

(declare-fun b!6369299 () Bool)

(assert (=> b!6369299 (= e!3867110 tp_is_empty!41807)))

(declare-fun b!6369300 () Bool)

(declare-fun tp!1773309 () Bool)

(declare-fun tp!1773310 () Bool)

(assert (=> b!6369300 (= e!3867110 (and tp!1773309 tp!1773310))))

(assert (=> b!6368398 (= tp!1773089 e!3867110)))

(declare-fun b!6369301 () Bool)

(declare-fun tp!1773311 () Bool)

(assert (=> b!6369301 (= e!3867110 tp!1773311)))

(assert (= (and b!6368398 ((_ is ElementMatch!16277) (regOne!33067 (regTwo!33067 r!7292)))) b!6369299))

(assert (= (and b!6368398 ((_ is Concat!25122) (regOne!33067 (regTwo!33067 r!7292)))) b!6369300))

(assert (= (and b!6368398 ((_ is Star!16277) (regOne!33067 (regTwo!33067 r!7292)))) b!6369301))

(assert (= (and b!6368398 ((_ is Union!16277) (regOne!33067 (regTwo!33067 r!7292)))) b!6369302))

(declare-fun b!6369306 () Bool)

(declare-fun e!3867111 () Bool)

(declare-fun tp!1773313 () Bool)

(declare-fun tp!1773312 () Bool)

(assert (=> b!6369306 (= e!3867111 (and tp!1773313 tp!1773312))))

(declare-fun b!6369303 () Bool)

(assert (=> b!6369303 (= e!3867111 tp_is_empty!41807)))

(declare-fun b!6369304 () Bool)

(declare-fun tp!1773314 () Bool)

(declare-fun tp!1773315 () Bool)

(assert (=> b!6369304 (= e!3867111 (and tp!1773314 tp!1773315))))

(assert (=> b!6368398 (= tp!1773088 e!3867111)))

(declare-fun b!6369305 () Bool)

(declare-fun tp!1773316 () Bool)

(assert (=> b!6369305 (= e!3867111 tp!1773316)))

(assert (= (and b!6368398 ((_ is ElementMatch!16277) (regTwo!33067 (regTwo!33067 r!7292)))) b!6369303))

(assert (= (and b!6368398 ((_ is Concat!25122) (regTwo!33067 (regTwo!33067 r!7292)))) b!6369304))

(assert (= (and b!6368398 ((_ is Star!16277) (regTwo!33067 (regTwo!33067 r!7292)))) b!6369305))

(assert (= (and b!6368398 ((_ is Union!16277) (regTwo!33067 (regTwo!33067 r!7292)))) b!6369306))

(declare-fun b!6369307 () Bool)

(declare-fun e!3867112 () Bool)

(declare-fun tp!1773317 () Bool)

(declare-fun tp!1773318 () Bool)

(assert (=> b!6369307 (= e!3867112 (and tp!1773317 tp!1773318))))

(assert (=> b!6368413 (= tp!1773108 e!3867112)))

(assert (= (and b!6368413 ((_ is Cons!65007) (exprs!6161 setElem!43405))) b!6369307))

(declare-fun b!6369311 () Bool)

(declare-fun e!3867113 () Bool)

(declare-fun tp!1773320 () Bool)

(declare-fun tp!1773319 () Bool)

(assert (=> b!6369311 (= e!3867113 (and tp!1773320 tp!1773319))))

(declare-fun b!6369308 () Bool)

(assert (=> b!6369308 (= e!3867113 tp_is_empty!41807)))

(declare-fun b!6369309 () Bool)

(declare-fun tp!1773321 () Bool)

(declare-fun tp!1773322 () Bool)

(assert (=> b!6369309 (= e!3867113 (and tp!1773321 tp!1773322))))

(assert (=> b!6368390 (= tp!1773079 e!3867113)))

(declare-fun b!6369310 () Bool)

(declare-fun tp!1773323 () Bool)

(assert (=> b!6369310 (= e!3867113 tp!1773323)))

(assert (= (and b!6368390 ((_ is ElementMatch!16277) (regOne!33067 (regTwo!33066 r!7292)))) b!6369308))

(assert (= (and b!6368390 ((_ is Concat!25122) (regOne!33067 (regTwo!33066 r!7292)))) b!6369309))

(assert (= (and b!6368390 ((_ is Star!16277) (regOne!33067 (regTwo!33066 r!7292)))) b!6369310))

(assert (= (and b!6368390 ((_ is Union!16277) (regOne!33067 (regTwo!33066 r!7292)))) b!6369311))

(declare-fun b!6369315 () Bool)

(declare-fun e!3867114 () Bool)

(declare-fun tp!1773325 () Bool)

(declare-fun tp!1773324 () Bool)

(assert (=> b!6369315 (= e!3867114 (and tp!1773325 tp!1773324))))

(declare-fun b!6369312 () Bool)

(assert (=> b!6369312 (= e!3867114 tp_is_empty!41807)))

(declare-fun b!6369313 () Bool)

(declare-fun tp!1773326 () Bool)

(declare-fun tp!1773327 () Bool)

(assert (=> b!6369313 (= e!3867114 (and tp!1773326 tp!1773327))))

(assert (=> b!6368390 (= tp!1773078 e!3867114)))

(declare-fun b!6369314 () Bool)

(declare-fun tp!1773328 () Bool)

(assert (=> b!6369314 (= e!3867114 tp!1773328)))

(assert (= (and b!6368390 ((_ is ElementMatch!16277) (regTwo!33067 (regTwo!33066 r!7292)))) b!6369312))

(assert (= (and b!6368390 ((_ is Concat!25122) (regTwo!33067 (regTwo!33066 r!7292)))) b!6369313))

(assert (= (and b!6368390 ((_ is Star!16277) (regTwo!33067 (regTwo!33066 r!7292)))) b!6369314))

(assert (= (and b!6368390 ((_ is Union!16277) (regTwo!33067 (regTwo!33066 r!7292)))) b!6369315))

(declare-fun b_lambda!242071 () Bool)

(assert (= b_lambda!242061 (or d!1997346 b_lambda!242071)))

(declare-fun bs!1595402 () Bool)

(declare-fun d!1997838 () Bool)

(assert (= bs!1595402 (and d!1997838 d!1997346)))

(assert (=> bs!1595402 (= (dynLambda!25790 lambda!350879 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (reg!16606 (regOne!33066 r!7292)) Nil!65007))))) (validRegex!8013 (h!71455 (exprs!6161 (Context!11323 (Cons!65007 (reg!16606 (regOne!33066 r!7292)) Nil!65007))))))))

(declare-fun m!7172622 () Bool)

(assert (=> bs!1595402 m!7172622))

(assert (=> b!6368898 d!1997838))

(declare-fun b_lambda!242073 () Bool)

(assert (= b_lambda!242049 (or d!1997354 b_lambda!242073)))

(declare-fun bs!1595403 () Bool)

(declare-fun d!1997840 () Bool)

(assert (= bs!1595403 (and d!1997840 d!1997354)))

(assert (=> bs!1595403 (= (dynLambda!25790 lambda!350880 (h!71455 (exprs!6161 setElem!43402))) (validRegex!8013 (h!71455 (exprs!6161 setElem!43402))))))

(declare-fun m!7172624 () Bool)

(assert (=> bs!1595403 m!7172624))

(assert (=> b!6368627 d!1997840))

(declare-fun b_lambda!242075 () Bool)

(assert (= b_lambda!242051 (or b!6367704 b_lambda!242075)))

(assert (=> d!1997550 d!1997474))

(declare-fun b_lambda!242077 () Bool)

(assert (= b_lambda!242047 (or d!1997320 b_lambda!242077)))

(declare-fun bs!1595404 () Bool)

(declare-fun d!1997842 () Bool)

(assert (= bs!1595404 (and d!1997842 d!1997320)))

(assert (=> bs!1595404 (= (dynLambda!25790 lambda!350867 (h!71455 (unfocusZipperList!1698 zl!343))) (validRegex!8013 (h!71455 (unfocusZipperList!1698 zl!343))))))

(declare-fun m!7172626 () Bool)

(assert (=> bs!1595404 m!7172626))

(assert (=> b!6368591 d!1997842))

(declare-fun b_lambda!242079 () Bool)

(assert (= b_lambda!242053 (or d!1997426 b_lambda!242079)))

(declare-fun bs!1595405 () Bool)

(declare-fun d!1997844 () Bool)

(assert (= bs!1595405 (and d!1997844 d!1997426)))

(assert (=> bs!1595405 (= (dynLambda!25790 lambda!350901 (h!71455 (exprs!6161 (h!71456 zl!343)))) (validRegex!8013 (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(declare-fun m!7172628 () Bool)

(assert (=> bs!1595405 m!7172628))

(assert (=> b!6368742 d!1997844))

(declare-fun b_lambda!242081 () Bool)

(assert (= b_lambda!242055 (or d!1997368 b_lambda!242081)))

(declare-fun bs!1595406 () Bool)

(declare-fun d!1997846 () Bool)

(assert (= bs!1595406 (and d!1997846 d!1997368)))

(assert (=> bs!1595406 (= (dynLambda!25790 lambda!350882 (h!71455 (exprs!6161 (h!71456 zl!343)))) (validRegex!8013 (h!71455 (exprs!6161 (h!71456 zl!343)))))))

(assert (=> bs!1595406 m!7172628))

(assert (=> b!6368754 d!1997846))

(declare-fun b_lambda!242083 () Bool)

(assert (= b_lambda!242067 (or d!1997332 b_lambda!242083)))

(declare-fun bs!1595407 () Bool)

(declare-fun d!1997848 () Bool)

(assert (= bs!1595407 (and d!1997848 d!1997332)))

(assert (=> bs!1595407 (= (dynLambda!25790 lambda!350870 (h!71455 lt!2367733)) (validRegex!8013 (h!71455 lt!2367733)))))

(declare-fun m!7172630 () Bool)

(assert (=> bs!1595407 m!7172630))

(assert (=> b!6369047 d!1997848))

(declare-fun b_lambda!242085 () Bool)

(assert (= b_lambda!242045 (or b!6367704 b_lambda!242085)))

(assert (=> d!1997488 d!1997472))

(check-sat (not d!1997502) (not d!1997670) (not b!6369191) (not b!6368683) (not b!6369199) (not b!6369048) (not b!6369190) (not b!6368602) (not setNonEmpty!43411) (not bm!543761) (not d!1997524) (not b!6369194) (not bm!543822) (not b!6369282) (not b!6369160) (not b!6369238) (not bm!543810) (not d!1997590) (not d!1997588) (not b!6368539) (not bm!543702) (not b!6368711) (not bm!543686) (not b!6368743) (not d!1997824) (not bm!543817) (not b!6368702) (not b!6369178) (not b!6369314) (not d!1997570) (not b!6368645) (not b!6369302) (not b!6369176) (not b!6369183) (not b!6368726) (not b!6369310) (not b!6368488) (not b!6369039) (not d!1997610) (not b!6369018) (not bm!543735) (not b!6369298) (not d!1997682) (not bm!543717) (not bm!543737) (not d!1997744) (not b!6369071) (not b!6369226) (not b!6369198) (not d!1997616) (not b!6368506) (not b!6369234) (not bm!543821) (not d!1997762) (not d!1997612) (not d!1997808) (not d!1997768) (not b!6369274) (not b!6368628) (not b!6368648) (not bs!1595402) (not b!6369043) (not bs!1595406) (not b!6368612) (not d!1997498) (not bm!543823) (not b!6369203) (not b!6369241) (not bm!543728) (not b!6368766) (not b!6368555) (not b!6368703) (not bm!543724) (not b!6369280) (not b!6368647) (not b!6369257) (not b!6369001) (not b!6368632) (not b!6369313) (not bm!543709) (not bm!543792) (not b!6369277) (not bm!543750) (not b!6368685) (not bm!543723) (not bm!543795) (not b!6369252) (not b!6369300) (not b!6368617) (not bs!1595407) (not d!1997548) (not b!6369276) (not d!1997792) (not d!1997678) (not b!6369268) (not b!6369242) (not b!6369270) tp_is_empty!41807 (not b!6369261) (not b!6368610) (not b!6368751) (not b!6369184) (not b!6369229) (not b!6369179) (not b!6369254) (not b!6369225) (not d!1997646) (not b!6369069) (not b_lambda!242081) (not d!1997586) (not b!6369058) (not bm!543797) (not b!6369269) (not d!1997528) (not b!6369231) (not b!6369200) (not b!6368664) (not b_lambda!242083) (not b!6369272) (not d!1997608) (not d!1997560) (not b_lambda!242039) (not b!6368642) (not d!1997802) (not bs!1595405) (not b!6368500) (not d!1997624) (not b!6369065) (not b!6369012) (not bm!543745) (not b!6368734) (not b!6368619) (not b!6369159) (not d!1997674) (not b!6369243) (not b!6369247) (not bm!543718) (not b!6369295) (not b!6369156) (not b_lambda!242073) (not b!6369264) (not d!1997720) (not b!6369009) (not b!6369195) (not b!6369315) (not b!6369253) (not b!6368579) (not b!6369233) (not bm!543812) (not b!6369174) (not b!6369188) (not bm!543734) (not d!1997736) (not b!6369227) (not b!6368755) (not b!6369263) (not b!6369281) (not bm!543747) (not b!6368646) (not b!6369305) (not bm!543831) (not bm!543741) (not b_lambda!242037) (not d!1997718) (not d!1997722) (not b!6369042) (not b!6369136) (not b_lambda!242079) (not d!1997544) (not d!1997800) (not b!6369248) (not b!6369067) (not b!6369230) (not d!1997488) (not bm!543700) (not b!6369196) (not bm!543838) (not b!6368498) (not b!6368768) (not b!6369011) (not b!6369249) (not bm!543839) (not b!6369304) (not d!1997622) (not b!6368641) (not d!1997604) (not d!1997522) (not bm!543791) (not b!6368503) (not b!6369045) (not d!1997680) (not b!6369204) (not b!6369301) (not b!6369207) (not d!1997592) (not b!6368607) (not b!6369267) (not b_lambda!242075) (not d!1997500) (not d!1997566) (not setNonEmpty!43413) (not b!6369309) (not bm!543711) (not b!6368899) (not b!6368592) (not b!6368489) (not b!6368746) (not b!6369041) (not b!6369239) (not b!6368750) (not b!6368603) (not b!6369202) (not b!6369237) (not b!6369212) (not b!6368747) (not b!6368923) (not d!1997672) (not b!6368653) (not bm!543760) (not bm!543703) (not d!1997750) (not b!6369211) (not bm!543730) (not b!6368552) (not b!6369155) (not b!6368804) (not bm!543764) (not b!6369296) (not b!6368615) (not b!6368770) (not bm!543727) (not b!6368502) (not bm!543827) (not b!6369307) (not b!6369297) (not b!6369010) (not bm!543811) (not b!6368669) (not bm!543743) (not bm!543699) (not b!6369161) (not bm!543744) (not b!6368767) (not b!6368731) (not bm!543708) (not d!1997716) (not b!6368480) (not bm!543807) (not b!6368922) (not bm!543830) (not bm!543796) (not b!6368606) (not d!1997526) (not b!6369235) (not b!6368757) (not b!6368534) (not b!6368728) (not b!6369162) (not b!6368764) (not bm!543713) (not bm!543731) (not d!1997816) (not b!6368756) (not b!6368681) (not d!1997538) (not b!6368481) (not b!6369054) (not b!6368793) (not b_lambda!242077) (not b!6368687) (not b!6369186) (not b!6369306) (not b!6368661) (not bm!543714) (not b!6368490) (not bm!543751) (not d!1997550) (not bm!543698) (not d!1997486) (not b!6368613) (not b!6369037) (not bm!543818) (not b!6368762) (not b!6369260) (not b!6368863) (not bm!543721) (not b!6369244) (not b!6368504) (not b!6369259) (not bm!543806) (not b!6369017) (not b!6368689) (not d!1997546) (not b!6368694) (not b!6369192) (not b!6369093) (not b!6368890) (not b!6368640) (not bm!543825) (not b!6368901) (not b!6369245) (not b!6369182) (not bs!1595403) (not b!6369206) (not b!6369273) (not bm!543738) (not b!6369180) (not setNonEmpty!43412) (not b_lambda!242071) (not b!6368547) (not b!6368748) (not d!1997492) (not bm!543710) (not b!6369265) (not bm!543695) (not b!6368753) (not b!6369157) (not b!6368686) (not b!6368614) (not b!6369063) (not b!6368493) (not b!6369187) (not b!6369068) (not b!6369278) (not b!6369092) (not b_lambda!242085) (not b!6368550) (not b!6369311) (not b!6369208) (not b!6368752) (not d!1997694) (not b!6368727) (not bs!1595404) (not d!1997494) (not b!6368974) (not b!6369210) (not b!6369250))
(check-sat)
