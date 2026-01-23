; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!591832 () Bool)

(assert start!591832)

(declare-fun b!5762161 () Bool)

(assert (=> b!5762161 true))

(assert (=> b!5762161 true))

(declare-fun lambda!312820 () Int)

(declare-fun lambda!312819 () Int)

(assert (=> b!5762161 (not (= lambda!312820 lambda!312819))))

(assert (=> b!5762161 true))

(assert (=> b!5762161 true))

(declare-fun b!5762171 () Bool)

(assert (=> b!5762171 true))

(declare-fun b!5762146 () Bool)

(declare-fun res!2431934 () Bool)

(declare-fun e!3540449 () Bool)

(assert (=> b!5762146 (=> res!2431934 e!3540449)))

(declare-datatypes ((C!31816 0))(
  ( (C!31817 (val!25610 Int)) )
))
(declare-datatypes ((Regex!15773 0))(
  ( (ElementMatch!15773 (c!1018419 C!31816)) (Concat!24618 (regOne!32058 Regex!15773) (regTwo!32058 Regex!15773)) (EmptyExpr!15773) (Star!15773 (reg!16102 Regex!15773)) (EmptyLang!15773) (Union!15773 (regOne!32059 Regex!15773) (regTwo!32059 Regex!15773)) )
))
(declare-fun r!7292 () Regex!15773)

(declare-datatypes ((List!63618 0))(
  ( (Nil!63494) (Cons!63494 (h!69942 Regex!15773) (t!376952 List!63618)) )
))
(declare-datatypes ((Context!10314 0))(
  ( (Context!10315 (exprs!5657 List!63618)) )
))
(declare-datatypes ((List!63619 0))(
  ( (Nil!63495) (Cons!63495 (h!69943 Context!10314) (t!376953 List!63619)) )
))
(declare-fun zl!343 () List!63619)

(declare-fun generalisedUnion!1636 (List!63618) Regex!15773)

(declare-fun unfocusZipperList!1201 (List!63619) List!63618)

(assert (=> b!5762146 (= res!2431934 (not (= r!7292 (generalisedUnion!1636 (unfocusZipperList!1201 zl!343)))))))

(declare-fun b!5762147 () Bool)

(declare-fun e!3540454 () Bool)

(declare-fun e!3540450 () Bool)

(assert (=> b!5762147 (= e!3540454 e!3540450)))

(declare-fun res!2431943 () Bool)

(assert (=> b!5762147 (=> res!2431943 e!3540450)))

(declare-fun lt!2288806 () Bool)

(declare-fun lt!2288817 () Bool)

(assert (=> b!5762147 (= res!2431943 (not (= lt!2288806 lt!2288817)))))

(declare-datatypes ((List!63620 0))(
  ( (Nil!63496) (Cons!63496 (h!69944 C!31816) (t!376954 List!63620)) )
))
(declare-fun s!2326 () List!63620)

(declare-fun matchRSpec!2876 (Regex!15773 List!63620) Bool)

(assert (=> b!5762147 (= lt!2288817 (matchRSpec!2876 (regTwo!32058 r!7292) s!2326))))

(declare-fun matchR!7958 (Regex!15773 List!63620) Bool)

(assert (=> b!5762147 (= lt!2288817 (matchR!7958 (regTwo!32058 r!7292) s!2326))))

(declare-datatypes ((Unit!156624 0))(
  ( (Unit!156625) )
))
(declare-fun lt!2288813 () Unit!156624)

(declare-fun mainMatchTheorem!2876 (Regex!15773 List!63620) Unit!156624)

(assert (=> b!5762147 (= lt!2288813 (mainMatchTheorem!2876 (regTwo!32058 r!7292) s!2326))))

(assert (=> b!5762147 (= (matchR!7958 (regOne!32058 r!7292) s!2326) (matchRSpec!2876 (regOne!32058 r!7292) s!2326))))

(declare-fun lt!2288822 () Unit!156624)

(assert (=> b!5762147 (= lt!2288822 (mainMatchTheorem!2876 (regOne!32058 r!7292) s!2326))))

(declare-fun b!5762148 () Bool)

(declare-fun e!3540455 () Bool)

(declare-fun tp!1592670 () Bool)

(declare-fun tp!1592661 () Bool)

(assert (=> b!5762148 (= e!3540455 (and tp!1592670 tp!1592661))))

(declare-fun b!5762149 () Bool)

(declare-fun e!3540444 () Bool)

(declare-fun nullable!5805 (Regex!15773) Bool)

(assert (=> b!5762149 (= e!3540444 (nullable!5805 (regOne!32058 (regOne!32058 r!7292))))))

(declare-fun b!5762150 () Bool)

(declare-fun res!2431948 () Bool)

(declare-fun e!3540448 () Bool)

(assert (=> b!5762150 (=> res!2431948 e!3540448)))

(declare-fun isEmpty!35381 (List!63618) Bool)

(assert (=> b!5762150 (= res!2431948 (isEmpty!35381 (t!376952 (exprs!5657 (h!69943 zl!343)))))))

(declare-fun b!5762151 () Bool)

(declare-fun res!2431935 () Bool)

(declare-fun e!3540452 () Bool)

(assert (=> b!5762151 (=> res!2431935 e!3540452)))

(assert (=> b!5762151 (= res!2431935 e!3540444)))

(declare-fun res!2431946 () Bool)

(assert (=> b!5762151 (=> (not res!2431946) (not e!3540444))))

(get-info :version)

(assert (=> b!5762151 (= res!2431946 ((_ is Concat!24618) (regOne!32058 r!7292)))))

(declare-fun tp!1592662 () Bool)

(declare-fun setNonEmpty!38695 () Bool)

(declare-fun setRes!38695 () Bool)

(declare-fun setElem!38695 () Context!10314)

(declare-fun e!3540456 () Bool)

(declare-fun inv!82679 (Context!10314) Bool)

(assert (=> setNonEmpty!38695 (= setRes!38695 (and tp!1592662 (inv!82679 setElem!38695) e!3540456))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10314))

(declare-fun setRest!38695 () (InoxSet Context!10314))

(assert (=> setNonEmpty!38695 (= z!1189 ((_ map or) (store ((as const (Array Context!10314 Bool)) false) setElem!38695 true) setRest!38695))))

(declare-fun b!5762152 () Bool)

(declare-fun e!3540451 () Unit!156624)

(declare-fun Unit!156626 () Unit!156624)

(assert (=> b!5762152 (= e!3540451 Unit!156626)))

(declare-fun b!5762153 () Bool)

(declare-fun e!3540447 () Bool)

(declare-fun lt!2288810 () (InoxSet Context!10314))

(declare-fun matchZipper!1911 ((InoxSet Context!10314) List!63620) Bool)

(assert (=> b!5762153 (= e!3540447 (matchZipper!1911 lt!2288810 (t!376954 s!2326)))))

(declare-fun b!5762154 () Bool)

(declare-fun res!2431940 () Bool)

(assert (=> b!5762154 (=> res!2431940 e!3540452)))

(assert (=> b!5762154 (= res!2431940 (or ((_ is Concat!24618) (regOne!32058 r!7292)) ((_ is Star!15773) (regOne!32058 r!7292)) (not ((_ is EmptyExpr!15773) (regOne!32058 r!7292)))))))

(declare-fun b!5762155 () Bool)

(declare-fun res!2431949 () Bool)

(assert (=> b!5762155 (=> res!2431949 e!3540449)))

(declare-fun isEmpty!35382 (List!63619) Bool)

(assert (=> b!5762155 (= res!2431949 (not (isEmpty!35382 (t!376953 zl!343))))))

(declare-fun e!3540453 () Bool)

(declare-fun b!5762156 () Bool)

(declare-fun tp!1592669 () Bool)

(declare-fun e!3540445 () Bool)

(assert (=> b!5762156 (= e!3540445 (and (inv!82679 (h!69943 zl!343)) e!3540453 tp!1592669))))

(declare-fun b!5762157 () Bool)

(declare-fun res!2431941 () Bool)

(assert (=> b!5762157 (=> res!2431941 e!3540449)))

(assert (=> b!5762157 (= res!2431941 (not ((_ is Cons!63494) (exprs!5657 (h!69943 zl!343)))))))

(declare-fun b!5762158 () Bool)

(declare-fun e!3540443 () Bool)

(declare-fun tp_is_empty!40799 () Bool)

(declare-fun tp!1592663 () Bool)

(assert (=> b!5762158 (= e!3540443 (and tp_is_empty!40799 tp!1592663))))

(declare-fun b!5762159 () Bool)

(assert (=> b!5762159 (= e!3540452 e!3540454)))

(declare-fun res!2431932 () Bool)

(assert (=> b!5762159 (=> res!2431932 e!3540454)))

(declare-fun lt!2288809 () (InoxSet Context!10314))

(assert (=> b!5762159 (= res!2431932 (or (not (= lt!2288809 ((as const (Array Context!10314 Bool)) false))) (not (= r!7292 (Concat!24618 (regOne!32058 r!7292) (regTwo!32058 r!7292)))) (not (= (regOne!32058 r!7292) EmptyExpr!15773))))))

(assert (=> b!5762159 (not (matchZipper!1911 lt!2288809 (t!376954 s!2326)))))

(declare-fun lt!2288811 () Unit!156624)

(declare-fun lemmaEmptyZipperMatchesNothing!58 ((InoxSet Context!10314) List!63620) Unit!156624)

(assert (=> b!5762159 (= lt!2288811 (lemmaEmptyZipperMatchesNothing!58 lt!2288809 (t!376954 s!2326)))))

(declare-fun b!5762160 () Bool)

(declare-fun res!2431947 () Bool)

(declare-fun e!3540446 () Bool)

(assert (=> b!5762160 (=> (not res!2431947) (not e!3540446))))

(declare-fun unfocusZipper!1515 (List!63619) Regex!15773)

(assert (=> b!5762160 (= res!2431947 (= r!7292 (unfocusZipper!1515 zl!343)))))

(assert (=> b!5762161 (= e!3540449 e!3540448)))

(declare-fun res!2431942 () Bool)

(assert (=> b!5762161 (=> res!2431942 e!3540448)))

(declare-fun lt!2288805 () Bool)

(assert (=> b!5762161 (= res!2431942 (or (not (= lt!2288806 lt!2288805)) ((_ is Nil!63496) s!2326)))))

(declare-fun Exists!2873 (Int) Bool)

(assert (=> b!5762161 (= (Exists!2873 lambda!312819) (Exists!2873 lambda!312820))))

(declare-fun lt!2288820 () Unit!156624)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1502 (Regex!15773 Regex!15773 List!63620) Unit!156624)

(assert (=> b!5762161 (= lt!2288820 (lemmaExistCutMatchRandMatchRSpecEquivalent!1502 (regOne!32058 r!7292) (regTwo!32058 r!7292) s!2326))))

(assert (=> b!5762161 (= lt!2288805 (Exists!2873 lambda!312819))))

(declare-datatypes ((tuple2!65740 0))(
  ( (tuple2!65741 (_1!36173 List!63620) (_2!36173 List!63620)) )
))
(declare-datatypes ((Option!15782 0))(
  ( (None!15781) (Some!15781 (v!51840 tuple2!65740)) )
))
(declare-fun isDefined!12485 (Option!15782) Bool)

(declare-fun findConcatSeparation!2196 (Regex!15773 Regex!15773 List!63620 List!63620 List!63620) Option!15782)

(assert (=> b!5762161 (= lt!2288805 (isDefined!12485 (findConcatSeparation!2196 (regOne!32058 r!7292) (regTwo!32058 r!7292) Nil!63496 s!2326 s!2326)))))

(declare-fun lt!2288818 () Unit!156624)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1960 (Regex!15773 Regex!15773 List!63620) Unit!156624)

(assert (=> b!5762161 (= lt!2288818 (lemmaFindConcatSeparationEquivalentToExists!1960 (regOne!32058 r!7292) (regTwo!32058 r!7292) s!2326))))

(declare-fun b!5762162 () Bool)

(declare-fun tp!1592665 () Bool)

(assert (=> b!5762162 (= e!3540456 tp!1592665)))

(declare-fun b!5762163 () Bool)

(declare-fun res!2431945 () Bool)

(assert (=> b!5762163 (=> (not res!2431945) (not e!3540446))))

(declare-fun toList!9557 ((InoxSet Context!10314)) List!63619)

(assert (=> b!5762163 (= res!2431945 (= (toList!9557 z!1189) zl!343))))

(declare-fun b!5762164 () Bool)

(declare-fun tp!1592668 () Bool)

(declare-fun tp!1592664 () Bool)

(assert (=> b!5762164 (= e!3540455 (and tp!1592668 tp!1592664))))

(declare-fun b!5762165 () Bool)

(declare-fun tp!1592666 () Bool)

(assert (=> b!5762165 (= e!3540453 tp!1592666)))

(declare-fun b!5762166 () Bool)

(assert (=> b!5762166 (= e!3540446 (not e!3540449))))

(declare-fun res!2431944 () Bool)

(assert (=> b!5762166 (=> res!2431944 e!3540449)))

(assert (=> b!5762166 (= res!2431944 (not ((_ is Cons!63495) zl!343)))))

(assert (=> b!5762166 (= lt!2288806 (matchRSpec!2876 r!7292 s!2326))))

(assert (=> b!5762166 (= lt!2288806 (matchR!7958 r!7292 s!2326))))

(declare-fun lt!2288819 () Unit!156624)

(assert (=> b!5762166 (= lt!2288819 (mainMatchTheorem!2876 r!7292 s!2326))))

(declare-fun b!5762167 () Bool)

(assert (=> b!5762167 (= e!3540455 tp_is_empty!40799)))

(declare-fun setIsEmpty!38695 () Bool)

(assert (=> setIsEmpty!38695 setRes!38695))

(declare-fun res!2431936 () Bool)

(assert (=> start!591832 (=> (not res!2431936) (not e!3540446))))

(declare-fun validRegex!7509 (Regex!15773) Bool)

(assert (=> start!591832 (= res!2431936 (validRegex!7509 r!7292))))

(assert (=> start!591832 e!3540446))

(assert (=> start!591832 e!3540455))

(declare-fun condSetEmpty!38695 () Bool)

(assert (=> start!591832 (= condSetEmpty!38695 (= z!1189 ((as const (Array Context!10314 Bool)) false)))))

(assert (=> start!591832 setRes!38695))

(assert (=> start!591832 e!3540445))

(assert (=> start!591832 e!3540443))

(declare-fun b!5762168 () Bool)

(declare-fun res!2431933 () Bool)

(assert (=> b!5762168 (=> res!2431933 e!3540449)))

(assert (=> b!5762168 (= res!2431933 (or ((_ is EmptyExpr!15773) r!7292) ((_ is EmptyLang!15773) r!7292) ((_ is ElementMatch!15773) r!7292) ((_ is Union!15773) r!7292) (not ((_ is Concat!24618) r!7292))))))

(declare-fun b!5762169 () Bool)

(declare-fun Unit!156627 () Unit!156624)

(assert (=> b!5762169 (= e!3540451 Unit!156627)))

(declare-fun lt!2288807 () Unit!156624)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!798 ((InoxSet Context!10314) (InoxSet Context!10314) List!63620) Unit!156624)

(assert (=> b!5762169 (= lt!2288807 (lemmaZipperConcatMatchesSameAsBothZippers!798 lt!2288809 lt!2288810 (t!376954 s!2326)))))

(declare-fun res!2431938 () Bool)

(assert (=> b!5762169 (= res!2431938 (matchZipper!1911 lt!2288809 (t!376954 s!2326)))))

(assert (=> b!5762169 (=> res!2431938 e!3540447)))

(assert (=> b!5762169 (= (matchZipper!1911 ((_ map or) lt!2288809 lt!2288810) (t!376954 s!2326)) e!3540447)))

(declare-fun b!5762170 () Bool)

(declare-fun res!2431937 () Bool)

(assert (=> b!5762170 (=> res!2431937 e!3540449)))

(declare-fun generalisedConcat!1388 (List!63618) Regex!15773)

(assert (=> b!5762170 (= res!2431937 (not (= r!7292 (generalisedConcat!1388 (exprs!5657 (h!69943 zl!343))))))))

(assert (=> b!5762171 (= e!3540448 e!3540452)))

(declare-fun res!2431939 () Bool)

(assert (=> b!5762171 (=> res!2431939 e!3540452)))

(assert (=> b!5762171 (= res!2431939 (or (and ((_ is ElementMatch!15773) (regOne!32058 r!7292)) (= (c!1018419 (regOne!32058 r!7292)) (h!69944 s!2326))) ((_ is Union!15773) (regOne!32058 r!7292))))))

(declare-fun lt!2288815 () Unit!156624)

(assert (=> b!5762171 (= lt!2288815 e!3540451)))

(declare-fun c!1018418 () Bool)

(assert (=> b!5762171 (= c!1018418 (nullable!5805 (h!69942 (exprs!5657 (h!69943 zl!343)))))))

(declare-fun lambda!312821 () Int)

(declare-fun flatMap!1386 ((InoxSet Context!10314) Int) (InoxSet Context!10314))

(declare-fun derivationStepZipperUp!1041 (Context!10314 C!31816) (InoxSet Context!10314))

(assert (=> b!5762171 (= (flatMap!1386 z!1189 lambda!312821) (derivationStepZipperUp!1041 (h!69943 zl!343) (h!69944 s!2326)))))

(declare-fun lt!2288816 () Unit!156624)

(declare-fun lemmaFlatMapOnSingletonSet!918 ((InoxSet Context!10314) Context!10314 Int) Unit!156624)

(assert (=> b!5762171 (= lt!2288816 (lemmaFlatMapOnSingletonSet!918 z!1189 (h!69943 zl!343) lambda!312821))))

(declare-fun lt!2288821 () Context!10314)

(assert (=> b!5762171 (= lt!2288810 (derivationStepZipperUp!1041 lt!2288821 (h!69944 s!2326)))))

(declare-fun derivationStepZipperDown!1115 (Regex!15773 Context!10314 C!31816) (InoxSet Context!10314))

(assert (=> b!5762171 (= lt!2288809 (derivationStepZipperDown!1115 (h!69942 (exprs!5657 (h!69943 zl!343))) lt!2288821 (h!69944 s!2326)))))

(assert (=> b!5762171 (= lt!2288821 (Context!10315 (t!376952 (exprs!5657 (h!69943 zl!343)))))))

(declare-fun lt!2288812 () (InoxSet Context!10314))

(assert (=> b!5762171 (= lt!2288812 (derivationStepZipperUp!1041 (Context!10315 (Cons!63494 (h!69942 (exprs!5657 (h!69943 zl!343))) (t!376952 (exprs!5657 (h!69943 zl!343))))) (h!69944 s!2326)))))

(declare-fun b!5762172 () Bool)

(declare-fun tp!1592667 () Bool)

(assert (=> b!5762172 (= e!3540455 tp!1592667)))

(declare-fun lt!2288808 () (InoxSet Context!10314))

(declare-fun b!5762173 () Bool)

(declare-fun derivationStepZipper!1852 ((InoxSet Context!10314) C!31816) (InoxSet Context!10314))

(assert (=> b!5762173 (= e!3540450 (= lt!2288810 (derivationStepZipper!1852 lt!2288808 (h!69944 s!2326))))))

(assert (=> b!5762173 (= (flatMap!1386 lt!2288808 lambda!312821) (derivationStepZipperUp!1041 lt!2288821 (h!69944 s!2326)))))

(declare-fun lt!2288814 () Unit!156624)

(assert (=> b!5762173 (= lt!2288814 (lemmaFlatMapOnSingletonSet!918 lt!2288808 lt!2288821 lambda!312821))))

(assert (=> b!5762173 (= lt!2288808 (store ((as const (Array Context!10314 Bool)) false) lt!2288821 true))))

(assert (= (and start!591832 res!2431936) b!5762163))

(assert (= (and b!5762163 res!2431945) b!5762160))

(assert (= (and b!5762160 res!2431947) b!5762166))

(assert (= (and b!5762166 (not res!2431944)) b!5762155))

(assert (= (and b!5762155 (not res!2431949)) b!5762170))

(assert (= (and b!5762170 (not res!2431937)) b!5762157))

(assert (= (and b!5762157 (not res!2431941)) b!5762146))

(assert (= (and b!5762146 (not res!2431934)) b!5762168))

(assert (= (and b!5762168 (not res!2431933)) b!5762161))

(assert (= (and b!5762161 (not res!2431942)) b!5762150))

(assert (= (and b!5762150 (not res!2431948)) b!5762171))

(assert (= (and b!5762171 c!1018418) b!5762169))

(assert (= (and b!5762171 (not c!1018418)) b!5762152))

(assert (= (and b!5762169 (not res!2431938)) b!5762153))

(assert (= (and b!5762171 (not res!2431939)) b!5762151))

(assert (= (and b!5762151 res!2431946) b!5762149))

(assert (= (and b!5762151 (not res!2431935)) b!5762154))

(assert (= (and b!5762154 (not res!2431940)) b!5762159))

(assert (= (and b!5762159 (not res!2431932)) b!5762147))

(assert (= (and b!5762147 (not res!2431943)) b!5762173))

(assert (= (and start!591832 ((_ is ElementMatch!15773) r!7292)) b!5762167))

(assert (= (and start!591832 ((_ is Concat!24618) r!7292)) b!5762164))

(assert (= (and start!591832 ((_ is Star!15773) r!7292)) b!5762172))

(assert (= (and start!591832 ((_ is Union!15773) r!7292)) b!5762148))

(assert (= (and start!591832 condSetEmpty!38695) setIsEmpty!38695))

(assert (= (and start!591832 (not condSetEmpty!38695)) setNonEmpty!38695))

(assert (= setNonEmpty!38695 b!5762162))

(assert (= b!5762156 b!5762165))

(assert (= (and start!591832 ((_ is Cons!63495) zl!343)) b!5762156))

(assert (= (and start!591832 ((_ is Cons!63496) s!2326)) b!5762158))

(declare-fun m!6709278 () Bool)

(assert (=> b!5762160 m!6709278))

(declare-fun m!6709280 () Bool)

(assert (=> b!5762171 m!6709280))

(declare-fun m!6709282 () Bool)

(assert (=> b!5762171 m!6709282))

(declare-fun m!6709284 () Bool)

(assert (=> b!5762171 m!6709284))

(declare-fun m!6709286 () Bool)

(assert (=> b!5762171 m!6709286))

(declare-fun m!6709288 () Bool)

(assert (=> b!5762171 m!6709288))

(declare-fun m!6709290 () Bool)

(assert (=> b!5762171 m!6709290))

(declare-fun m!6709292 () Bool)

(assert (=> b!5762171 m!6709292))

(declare-fun m!6709294 () Bool)

(assert (=> b!5762169 m!6709294))

(declare-fun m!6709296 () Bool)

(assert (=> b!5762169 m!6709296))

(declare-fun m!6709298 () Bool)

(assert (=> b!5762169 m!6709298))

(declare-fun m!6709300 () Bool)

(assert (=> b!5762156 m!6709300))

(declare-fun m!6709302 () Bool)

(assert (=> b!5762153 m!6709302))

(declare-fun m!6709304 () Bool)

(assert (=> b!5762149 m!6709304))

(declare-fun m!6709306 () Bool)

(assert (=> b!5762150 m!6709306))

(declare-fun m!6709308 () Bool)

(assert (=> start!591832 m!6709308))

(declare-fun m!6709310 () Bool)

(assert (=> b!5762170 m!6709310))

(declare-fun m!6709312 () Bool)

(assert (=> b!5762163 m!6709312))

(declare-fun m!6709314 () Bool)

(assert (=> b!5762155 m!6709314))

(assert (=> b!5762159 m!6709296))

(declare-fun m!6709316 () Bool)

(assert (=> b!5762159 m!6709316))

(declare-fun m!6709318 () Bool)

(assert (=> b!5762147 m!6709318))

(declare-fun m!6709320 () Bool)

(assert (=> b!5762147 m!6709320))

(declare-fun m!6709322 () Bool)

(assert (=> b!5762147 m!6709322))

(declare-fun m!6709324 () Bool)

(assert (=> b!5762147 m!6709324))

(declare-fun m!6709326 () Bool)

(assert (=> b!5762147 m!6709326))

(declare-fun m!6709328 () Bool)

(assert (=> b!5762147 m!6709328))

(declare-fun m!6709330 () Bool)

(assert (=> b!5762166 m!6709330))

(declare-fun m!6709332 () Bool)

(assert (=> b!5762166 m!6709332))

(declare-fun m!6709334 () Bool)

(assert (=> b!5762166 m!6709334))

(declare-fun m!6709336 () Bool)

(assert (=> b!5762146 m!6709336))

(assert (=> b!5762146 m!6709336))

(declare-fun m!6709338 () Bool)

(assert (=> b!5762146 m!6709338))

(declare-fun m!6709340 () Bool)

(assert (=> b!5762161 m!6709340))

(assert (=> b!5762161 m!6709340))

(declare-fun m!6709342 () Bool)

(assert (=> b!5762161 m!6709342))

(declare-fun m!6709344 () Bool)

(assert (=> b!5762161 m!6709344))

(declare-fun m!6709346 () Bool)

(assert (=> b!5762161 m!6709346))

(declare-fun m!6709348 () Bool)

(assert (=> b!5762161 m!6709348))

(assert (=> b!5762161 m!6709346))

(declare-fun m!6709350 () Bool)

(assert (=> b!5762161 m!6709350))

(declare-fun m!6709352 () Bool)

(assert (=> setNonEmpty!38695 m!6709352))

(declare-fun m!6709354 () Bool)

(assert (=> b!5762173 m!6709354))

(assert (=> b!5762173 m!6709292))

(declare-fun m!6709356 () Bool)

(assert (=> b!5762173 m!6709356))

(declare-fun m!6709358 () Bool)

(assert (=> b!5762173 m!6709358))

(declare-fun m!6709360 () Bool)

(assert (=> b!5762173 m!6709360))

(check-sat (not b!5762156) (not start!591832) (not b!5762147) (not b!5762162) (not b!5762159) (not b!5762164) (not b!5762150) (not b!5762173) tp_is_empty!40799 (not b!5762166) (not b!5762146) (not b!5762155) (not b!5762148) (not setNonEmpty!38695) (not b!5762158) (not b!5762160) (not b!5762169) (not b!5762163) (not b!5762149) (not b!5762153) (not b!5762171) (not b!5762170) (not b!5762161) (not b!5762165) (not b!5762172))
(check-sat)
(get-model)

(declare-fun d!1815502 () Bool)

(assert (=> d!1815502 (= (isEmpty!35381 (t!376952 (exprs!5657 (h!69943 zl!343)))) ((_ is Nil!63494) (t!376952 (exprs!5657 (h!69943 zl!343)))))))

(assert (=> b!5762150 d!1815502))

(declare-fun e!3540459 () Bool)

(declare-fun d!1815504 () Bool)

(assert (=> d!1815504 (= (matchZipper!1911 ((_ map or) lt!2288809 lt!2288810) (t!376954 s!2326)) e!3540459)))

(declare-fun res!2431952 () Bool)

(assert (=> d!1815504 (=> res!2431952 e!3540459)))

(assert (=> d!1815504 (= res!2431952 (matchZipper!1911 lt!2288809 (t!376954 s!2326)))))

(declare-fun lt!2288825 () Unit!156624)

(declare-fun choose!43684 ((InoxSet Context!10314) (InoxSet Context!10314) List!63620) Unit!156624)

(assert (=> d!1815504 (= lt!2288825 (choose!43684 lt!2288809 lt!2288810 (t!376954 s!2326)))))

(assert (=> d!1815504 (= (lemmaZipperConcatMatchesSameAsBothZippers!798 lt!2288809 lt!2288810 (t!376954 s!2326)) lt!2288825)))

(declare-fun b!5762182 () Bool)

(assert (=> b!5762182 (= e!3540459 (matchZipper!1911 lt!2288810 (t!376954 s!2326)))))

(assert (= (and d!1815504 (not res!2431952)) b!5762182))

(assert (=> d!1815504 m!6709298))

(assert (=> d!1815504 m!6709296))

(declare-fun m!6709362 () Bool)

(assert (=> d!1815504 m!6709362))

(assert (=> b!5762182 m!6709302))

(assert (=> b!5762169 d!1815504))

(declare-fun d!1815506 () Bool)

(declare-fun c!1018422 () Bool)

(declare-fun isEmpty!35384 (List!63620) Bool)

(assert (=> d!1815506 (= c!1018422 (isEmpty!35384 (t!376954 s!2326)))))

(declare-fun e!3540462 () Bool)

(assert (=> d!1815506 (= (matchZipper!1911 lt!2288809 (t!376954 s!2326)) e!3540462)))

(declare-fun b!5762187 () Bool)

(declare-fun nullableZipper!1700 ((InoxSet Context!10314)) Bool)

(assert (=> b!5762187 (= e!3540462 (nullableZipper!1700 lt!2288809))))

(declare-fun b!5762188 () Bool)

(declare-fun head!12182 (List!63620) C!31816)

(declare-fun tail!11277 (List!63620) List!63620)

(assert (=> b!5762188 (= e!3540462 (matchZipper!1911 (derivationStepZipper!1852 lt!2288809 (head!12182 (t!376954 s!2326))) (tail!11277 (t!376954 s!2326))))))

(assert (= (and d!1815506 c!1018422) b!5762187))

(assert (= (and d!1815506 (not c!1018422)) b!5762188))

(declare-fun m!6709364 () Bool)

(assert (=> d!1815506 m!6709364))

(declare-fun m!6709366 () Bool)

(assert (=> b!5762187 m!6709366))

(declare-fun m!6709368 () Bool)

(assert (=> b!5762188 m!6709368))

(assert (=> b!5762188 m!6709368))

(declare-fun m!6709370 () Bool)

(assert (=> b!5762188 m!6709370))

(declare-fun m!6709372 () Bool)

(assert (=> b!5762188 m!6709372))

(assert (=> b!5762188 m!6709370))

(assert (=> b!5762188 m!6709372))

(declare-fun m!6709374 () Bool)

(assert (=> b!5762188 m!6709374))

(assert (=> b!5762169 d!1815506))

(declare-fun d!1815508 () Bool)

(declare-fun c!1018423 () Bool)

(assert (=> d!1815508 (= c!1018423 (isEmpty!35384 (t!376954 s!2326)))))

(declare-fun e!3540463 () Bool)

(assert (=> d!1815508 (= (matchZipper!1911 ((_ map or) lt!2288809 lt!2288810) (t!376954 s!2326)) e!3540463)))

(declare-fun b!5762189 () Bool)

(assert (=> b!5762189 (= e!3540463 (nullableZipper!1700 ((_ map or) lt!2288809 lt!2288810)))))

(declare-fun b!5762190 () Bool)

(assert (=> b!5762190 (= e!3540463 (matchZipper!1911 (derivationStepZipper!1852 ((_ map or) lt!2288809 lt!2288810) (head!12182 (t!376954 s!2326))) (tail!11277 (t!376954 s!2326))))))

(assert (= (and d!1815508 c!1018423) b!5762189))

(assert (= (and d!1815508 (not c!1018423)) b!5762190))

(assert (=> d!1815508 m!6709364))

(declare-fun m!6709376 () Bool)

(assert (=> b!5762189 m!6709376))

(assert (=> b!5762190 m!6709368))

(assert (=> b!5762190 m!6709368))

(declare-fun m!6709378 () Bool)

(assert (=> b!5762190 m!6709378))

(assert (=> b!5762190 m!6709372))

(assert (=> b!5762190 m!6709378))

(assert (=> b!5762190 m!6709372))

(declare-fun m!6709380 () Bool)

(assert (=> b!5762190 m!6709380))

(assert (=> b!5762169 d!1815508))

(assert (=> b!5762159 d!1815506))

(declare-fun d!1815510 () Bool)

(assert (=> d!1815510 (not (matchZipper!1911 lt!2288809 (t!376954 s!2326)))))

(declare-fun lt!2288828 () Unit!156624)

(declare-fun choose!43685 ((InoxSet Context!10314) List!63620) Unit!156624)

(assert (=> d!1815510 (= lt!2288828 (choose!43685 lt!2288809 (t!376954 s!2326)))))

(assert (=> d!1815510 (= lt!2288809 ((as const (Array Context!10314 Bool)) false))))

(assert (=> d!1815510 (= (lemmaEmptyZipperMatchesNothing!58 lt!2288809 (t!376954 s!2326)) lt!2288828)))

(declare-fun bs!1351509 () Bool)

(assert (= bs!1351509 d!1815510))

(assert (=> bs!1351509 m!6709296))

(declare-fun m!6709382 () Bool)

(assert (=> bs!1351509 m!6709382))

(assert (=> b!5762159 d!1815510))

(declare-fun d!1815512 () Bool)

(declare-fun nullableFct!1845 (Regex!15773) Bool)

(assert (=> d!1815512 (= (nullable!5805 (regOne!32058 (regOne!32058 r!7292))) (nullableFct!1845 (regOne!32058 (regOne!32058 r!7292))))))

(declare-fun bs!1351510 () Bool)

(assert (= bs!1351510 d!1815512))

(declare-fun m!6709384 () Bool)

(assert (=> bs!1351510 m!6709384))

(assert (=> b!5762149 d!1815512))

(declare-fun d!1815514 () Bool)

(declare-fun e!3540524 () Bool)

(assert (=> d!1815514 e!3540524))

(declare-fun res!2431995 () Bool)

(assert (=> d!1815514 (=> res!2431995 e!3540524)))

(declare-fun e!3540520 () Bool)

(assert (=> d!1815514 (= res!2431995 e!3540520)))

(declare-fun res!2431991 () Bool)

(assert (=> d!1815514 (=> (not res!2431991) (not e!3540520))))

(declare-fun lt!2288846 () Option!15782)

(assert (=> d!1815514 (= res!2431991 (isDefined!12485 lt!2288846))))

(declare-fun e!3540521 () Option!15782)

(assert (=> d!1815514 (= lt!2288846 e!3540521)))

(declare-fun c!1018452 () Bool)

(declare-fun e!3540523 () Bool)

(assert (=> d!1815514 (= c!1018452 e!3540523)))

(declare-fun res!2431994 () Bool)

(assert (=> d!1815514 (=> (not res!2431994) (not e!3540523))))

(assert (=> d!1815514 (= res!2431994 (matchR!7958 (regOne!32058 r!7292) Nil!63496))))

(assert (=> d!1815514 (validRegex!7509 (regOne!32058 r!7292))))

(assert (=> d!1815514 (= (findConcatSeparation!2196 (regOne!32058 r!7292) (regTwo!32058 r!7292) Nil!63496 s!2326 s!2326) lt!2288846)))

(declare-fun b!5762285 () Bool)

(declare-fun res!2431992 () Bool)

(assert (=> b!5762285 (=> (not res!2431992) (not e!3540520))))

(declare-fun get!21906 (Option!15782) tuple2!65740)

(assert (=> b!5762285 (= res!2431992 (matchR!7958 (regOne!32058 r!7292) (_1!36173 (get!21906 lt!2288846))))))

(declare-fun b!5762286 () Bool)

(declare-fun e!3540522 () Option!15782)

(assert (=> b!5762286 (= e!3540521 e!3540522)))

(declare-fun c!1018453 () Bool)

(assert (=> b!5762286 (= c!1018453 ((_ is Nil!63496) s!2326))))

(declare-fun b!5762287 () Bool)

(assert (=> b!5762287 (= e!3540524 (not (isDefined!12485 lt!2288846)))))

(declare-fun b!5762288 () Bool)

(assert (=> b!5762288 (= e!3540523 (matchR!7958 (regTwo!32058 r!7292) s!2326))))

(declare-fun b!5762289 () Bool)

(declare-fun lt!2288844 () Unit!156624)

(declare-fun lt!2288845 () Unit!156624)

(assert (=> b!5762289 (= lt!2288844 lt!2288845)))

(declare-fun ++!13986 (List!63620 List!63620) List!63620)

(assert (=> b!5762289 (= (++!13986 (++!13986 Nil!63496 (Cons!63496 (h!69944 s!2326) Nil!63496)) (t!376954 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2103 (List!63620 C!31816 List!63620 List!63620) Unit!156624)

(assert (=> b!5762289 (= lt!2288845 (lemmaMoveElementToOtherListKeepsConcatEq!2103 Nil!63496 (h!69944 s!2326) (t!376954 s!2326) s!2326))))

(assert (=> b!5762289 (= e!3540522 (findConcatSeparation!2196 (regOne!32058 r!7292) (regTwo!32058 r!7292) (++!13986 Nil!63496 (Cons!63496 (h!69944 s!2326) Nil!63496)) (t!376954 s!2326) s!2326))))

(declare-fun b!5762290 () Bool)

(assert (=> b!5762290 (= e!3540520 (= (++!13986 (_1!36173 (get!21906 lt!2288846)) (_2!36173 (get!21906 lt!2288846))) s!2326))))

(declare-fun b!5762291 () Bool)

(assert (=> b!5762291 (= e!3540522 None!15781)))

(declare-fun b!5762292 () Bool)

(assert (=> b!5762292 (= e!3540521 (Some!15781 (tuple2!65741 Nil!63496 s!2326)))))

(declare-fun b!5762293 () Bool)

(declare-fun res!2431993 () Bool)

(assert (=> b!5762293 (=> (not res!2431993) (not e!3540520))))

(assert (=> b!5762293 (= res!2431993 (matchR!7958 (regTwo!32058 r!7292) (_2!36173 (get!21906 lt!2288846))))))

(assert (= (and d!1815514 res!2431994) b!5762288))

(assert (= (and d!1815514 c!1018452) b!5762292))

(assert (= (and d!1815514 (not c!1018452)) b!5762286))

(assert (= (and b!5762286 c!1018453) b!5762291))

(assert (= (and b!5762286 (not c!1018453)) b!5762289))

(assert (= (and d!1815514 res!2431991) b!5762285))

(assert (= (and b!5762285 res!2431992) b!5762293))

(assert (= (and b!5762293 res!2431993) b!5762290))

(assert (= (and d!1815514 (not res!2431995)) b!5762287))

(declare-fun m!6709430 () Bool)

(assert (=> d!1815514 m!6709430))

(declare-fun m!6709432 () Bool)

(assert (=> d!1815514 m!6709432))

(declare-fun m!6709434 () Bool)

(assert (=> d!1815514 m!6709434))

(declare-fun m!6709436 () Bool)

(assert (=> b!5762293 m!6709436))

(declare-fun m!6709438 () Bool)

(assert (=> b!5762293 m!6709438))

(assert (=> b!5762288 m!6709318))

(assert (=> b!5762285 m!6709436))

(declare-fun m!6709440 () Bool)

(assert (=> b!5762285 m!6709440))

(assert (=> b!5762287 m!6709430))

(assert (=> b!5762290 m!6709436))

(declare-fun m!6709442 () Bool)

(assert (=> b!5762290 m!6709442))

(declare-fun m!6709444 () Bool)

(assert (=> b!5762289 m!6709444))

(assert (=> b!5762289 m!6709444))

(declare-fun m!6709446 () Bool)

(assert (=> b!5762289 m!6709446))

(declare-fun m!6709448 () Bool)

(assert (=> b!5762289 m!6709448))

(assert (=> b!5762289 m!6709444))

(declare-fun m!6709450 () Bool)

(assert (=> b!5762289 m!6709450))

(assert (=> b!5762161 d!1815514))

(declare-fun d!1815528 () Bool)

(declare-fun choose!43687 (Int) Bool)

(assert (=> d!1815528 (= (Exists!2873 lambda!312819) (choose!43687 lambda!312819))))

(declare-fun bs!1351512 () Bool)

(assert (= bs!1351512 d!1815528))

(declare-fun m!6709452 () Bool)

(assert (=> bs!1351512 m!6709452))

(assert (=> b!5762161 d!1815528))

(declare-fun d!1815530 () Bool)

(assert (=> d!1815530 (= (Exists!2873 lambda!312820) (choose!43687 lambda!312820))))

(declare-fun bs!1351513 () Bool)

(assert (= bs!1351513 d!1815530))

(declare-fun m!6709454 () Bool)

(assert (=> bs!1351513 m!6709454))

(assert (=> b!5762161 d!1815530))

(declare-fun bs!1351524 () Bool)

(declare-fun d!1815532 () Bool)

(assert (= bs!1351524 (and d!1815532 b!5762161)))

(declare-fun lambda!312835 () Int)

(assert (=> bs!1351524 (= lambda!312835 lambda!312819)))

(assert (=> bs!1351524 (not (= lambda!312835 lambda!312820))))

(assert (=> d!1815532 true))

(assert (=> d!1815532 true))

(assert (=> d!1815532 true))

(assert (=> d!1815532 (= (isDefined!12485 (findConcatSeparation!2196 (regOne!32058 r!7292) (regTwo!32058 r!7292) Nil!63496 s!2326 s!2326)) (Exists!2873 lambda!312835))))

(declare-fun lt!2288855 () Unit!156624)

(declare-fun choose!43689 (Regex!15773 Regex!15773 List!63620) Unit!156624)

(assert (=> d!1815532 (= lt!2288855 (choose!43689 (regOne!32058 r!7292) (regTwo!32058 r!7292) s!2326))))

(assert (=> d!1815532 (validRegex!7509 (regOne!32058 r!7292))))

(assert (=> d!1815532 (= (lemmaFindConcatSeparationEquivalentToExists!1960 (regOne!32058 r!7292) (regTwo!32058 r!7292) s!2326) lt!2288855)))

(declare-fun bs!1351525 () Bool)

(assert (= bs!1351525 d!1815532))

(assert (=> bs!1351525 m!6709346))

(assert (=> bs!1351525 m!6709348))

(declare-fun m!6709492 () Bool)

(assert (=> bs!1351525 m!6709492))

(assert (=> bs!1351525 m!6709434))

(declare-fun m!6709496 () Bool)

(assert (=> bs!1351525 m!6709496))

(assert (=> bs!1351525 m!6709346))

(assert (=> b!5762161 d!1815532))

(declare-fun bs!1351541 () Bool)

(declare-fun d!1815544 () Bool)

(assert (= bs!1351541 (and d!1815544 b!5762161)))

(declare-fun lambda!312847 () Int)

(assert (=> bs!1351541 (= lambda!312847 lambda!312819)))

(assert (=> bs!1351541 (not (= lambda!312847 lambda!312820))))

(declare-fun bs!1351542 () Bool)

(assert (= bs!1351542 (and d!1815544 d!1815532)))

(assert (=> bs!1351542 (= lambda!312847 lambda!312835)))

(assert (=> d!1815544 true))

(assert (=> d!1815544 true))

(assert (=> d!1815544 true))

(declare-fun lambda!312848 () Int)

(assert (=> bs!1351541 (not (= lambda!312848 lambda!312819))))

(assert (=> bs!1351541 (= lambda!312848 lambda!312820)))

(assert (=> bs!1351542 (not (= lambda!312848 lambda!312835))))

(declare-fun bs!1351543 () Bool)

(assert (= bs!1351543 d!1815544))

(assert (=> bs!1351543 (not (= lambda!312848 lambda!312847))))

(assert (=> d!1815544 true))

(assert (=> d!1815544 true))

(assert (=> d!1815544 true))

(assert (=> d!1815544 (= (Exists!2873 lambda!312847) (Exists!2873 lambda!312848))))

(declare-fun lt!2288867 () Unit!156624)

(declare-fun choose!43690 (Regex!15773 Regex!15773 List!63620) Unit!156624)

(assert (=> d!1815544 (= lt!2288867 (choose!43690 (regOne!32058 r!7292) (regTwo!32058 r!7292) s!2326))))

(assert (=> d!1815544 (validRegex!7509 (regOne!32058 r!7292))))

(assert (=> d!1815544 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1502 (regOne!32058 r!7292) (regTwo!32058 r!7292) s!2326) lt!2288867)))

(declare-fun m!6709548 () Bool)

(assert (=> bs!1351543 m!6709548))

(declare-fun m!6709550 () Bool)

(assert (=> bs!1351543 m!6709550))

(declare-fun m!6709552 () Bool)

(assert (=> bs!1351543 m!6709552))

(assert (=> bs!1351543 m!6709434))

(assert (=> b!5762161 d!1815544))

(declare-fun d!1815580 () Bool)

(declare-fun isEmpty!35385 (Option!15782) Bool)

(assert (=> d!1815580 (= (isDefined!12485 (findConcatSeparation!2196 (regOne!32058 r!7292) (regTwo!32058 r!7292) Nil!63496 s!2326 s!2326)) (not (isEmpty!35385 (findConcatSeparation!2196 (regOne!32058 r!7292) (regTwo!32058 r!7292) Nil!63496 s!2326 s!2326))))))

(declare-fun bs!1351544 () Bool)

(assert (= bs!1351544 d!1815580))

(assert (=> bs!1351544 m!6709346))

(declare-fun m!6709554 () Bool)

(assert (=> bs!1351544 m!6709554))

(assert (=> b!5762161 d!1815580))

(declare-fun b!5762511 () Bool)

(declare-fun e!3540645 () Regex!15773)

(assert (=> b!5762511 (= e!3540645 (Concat!24618 (h!69942 (exprs!5657 (h!69943 zl!343))) (generalisedConcat!1388 (t!376952 (exprs!5657 (h!69943 zl!343))))))))

(declare-fun b!5762512 () Bool)

(declare-fun e!3540647 () Bool)

(declare-fun lt!2288877 () Regex!15773)

(declare-fun isConcat!782 (Regex!15773) Bool)

(assert (=> b!5762512 (= e!3540647 (isConcat!782 lt!2288877))))

(declare-fun b!5762513 () Bool)

(declare-fun e!3540649 () Regex!15773)

(assert (=> b!5762513 (= e!3540649 (h!69942 (exprs!5657 (h!69943 zl!343))))))

(declare-fun b!5762514 () Bool)

(declare-fun e!3540648 () Bool)

(assert (=> b!5762514 (= e!3540648 (isEmpty!35381 (t!376952 (exprs!5657 (h!69943 zl!343)))))))

(declare-fun b!5762515 () Bool)

(declare-fun head!12183 (List!63618) Regex!15773)

(assert (=> b!5762515 (= e!3540647 (= lt!2288877 (head!12183 (exprs!5657 (h!69943 zl!343)))))))

(declare-fun b!5762517 () Bool)

(assert (=> b!5762517 (= e!3540645 EmptyExpr!15773)))

(declare-fun b!5762518 () Bool)

(declare-fun e!3540646 () Bool)

(declare-fun isEmptyExpr!1259 (Regex!15773) Bool)

(assert (=> b!5762518 (= e!3540646 (isEmptyExpr!1259 lt!2288877))))

(declare-fun b!5762519 () Bool)

(assert (=> b!5762519 (= e!3540646 e!3540647)))

(declare-fun c!1018527 () Bool)

(declare-fun tail!11278 (List!63618) List!63618)

(assert (=> b!5762519 (= c!1018527 (isEmpty!35381 (tail!11278 (exprs!5657 (h!69943 zl!343)))))))

(declare-fun b!5762520 () Bool)

(declare-fun e!3540650 () Bool)

(assert (=> b!5762520 (= e!3540650 e!3540646)))

(declare-fun c!1018526 () Bool)

(assert (=> b!5762520 (= c!1018526 (isEmpty!35381 (exprs!5657 (h!69943 zl!343))))))

(declare-fun d!1815582 () Bool)

(assert (=> d!1815582 e!3540650))

(declare-fun res!2432073 () Bool)

(assert (=> d!1815582 (=> (not res!2432073) (not e!3540650))))

(assert (=> d!1815582 (= res!2432073 (validRegex!7509 lt!2288877))))

(assert (=> d!1815582 (= lt!2288877 e!3540649)))

(declare-fun c!1018525 () Bool)

(assert (=> d!1815582 (= c!1018525 e!3540648)))

(declare-fun res!2432074 () Bool)

(assert (=> d!1815582 (=> (not res!2432074) (not e!3540648))))

(assert (=> d!1815582 (= res!2432074 ((_ is Cons!63494) (exprs!5657 (h!69943 zl!343))))))

(declare-fun lambda!312855 () Int)

(declare-fun forall!14891 (List!63618 Int) Bool)

(assert (=> d!1815582 (forall!14891 (exprs!5657 (h!69943 zl!343)) lambda!312855)))

(assert (=> d!1815582 (= (generalisedConcat!1388 (exprs!5657 (h!69943 zl!343))) lt!2288877)))

(declare-fun b!5762516 () Bool)

(assert (=> b!5762516 (= e!3540649 e!3540645)))

(declare-fun c!1018528 () Bool)

(assert (=> b!5762516 (= c!1018528 ((_ is Cons!63494) (exprs!5657 (h!69943 zl!343))))))

(assert (= (and d!1815582 res!2432074) b!5762514))

(assert (= (and d!1815582 c!1018525) b!5762513))

(assert (= (and d!1815582 (not c!1018525)) b!5762516))

(assert (= (and b!5762516 c!1018528) b!5762511))

(assert (= (and b!5762516 (not c!1018528)) b!5762517))

(assert (= (and d!1815582 res!2432073) b!5762520))

(assert (= (and b!5762520 c!1018526) b!5762518))

(assert (= (and b!5762520 (not c!1018526)) b!5762519))

(assert (= (and b!5762519 c!1018527) b!5762515))

(assert (= (and b!5762519 (not c!1018527)) b!5762512))

(assert (=> b!5762514 m!6709306))

(declare-fun m!6709580 () Bool)

(assert (=> b!5762511 m!6709580))

(declare-fun m!6709582 () Bool)

(assert (=> b!5762515 m!6709582))

(declare-fun m!6709584 () Bool)

(assert (=> b!5762520 m!6709584))

(declare-fun m!6709586 () Bool)

(assert (=> b!5762518 m!6709586))

(declare-fun m!6709588 () Bool)

(assert (=> b!5762512 m!6709588))

(declare-fun m!6709590 () Bool)

(assert (=> d!1815582 m!6709590))

(declare-fun m!6709592 () Bool)

(assert (=> d!1815582 m!6709592))

(declare-fun m!6709594 () Bool)

(assert (=> b!5762519 m!6709594))

(assert (=> b!5762519 m!6709594))

(declare-fun m!6709596 () Bool)

(assert (=> b!5762519 m!6709596))

(assert (=> b!5762170 d!1815582))

(declare-fun d!1815594 () Bool)

(declare-fun lt!2288883 () Regex!15773)

(assert (=> d!1815594 (validRegex!7509 lt!2288883)))

(assert (=> d!1815594 (= lt!2288883 (generalisedUnion!1636 (unfocusZipperList!1201 zl!343)))))

(assert (=> d!1815594 (= (unfocusZipper!1515 zl!343) lt!2288883)))

(declare-fun bs!1351561 () Bool)

(assert (= bs!1351561 d!1815594))

(declare-fun m!6709618 () Bool)

(assert (=> bs!1351561 m!6709618))

(assert (=> bs!1351561 m!6709336))

(assert (=> bs!1351561 m!6709336))

(assert (=> bs!1351561 m!6709338))

(assert (=> b!5762160 d!1815594))

(declare-fun bs!1351568 () Bool)

(declare-fun b!5762626 () Bool)

(assert (= bs!1351568 (and b!5762626 d!1815544)))

(declare-fun lambda!312864 () Int)

(assert (=> bs!1351568 (not (= lambda!312864 lambda!312847))))

(assert (=> bs!1351568 (not (= lambda!312864 lambda!312848))))

(declare-fun bs!1351569 () Bool)

(assert (= bs!1351569 (and b!5762626 b!5762161)))

(assert (=> bs!1351569 (not (= lambda!312864 lambda!312820))))

(declare-fun bs!1351570 () Bool)

(assert (= bs!1351570 (and b!5762626 d!1815532)))

(assert (=> bs!1351570 (not (= lambda!312864 lambda!312835))))

(assert (=> bs!1351569 (not (= lambda!312864 lambda!312819))))

(assert (=> b!5762626 true))

(assert (=> b!5762626 true))

(declare-fun bs!1351571 () Bool)

(declare-fun b!5762625 () Bool)

(assert (= bs!1351571 (and b!5762625 d!1815544)))

(declare-fun lambda!312867 () Int)

(assert (=> bs!1351571 (= (and (= (regOne!32058 (regOne!32058 r!7292)) (regOne!32058 r!7292)) (= (regTwo!32058 (regOne!32058 r!7292)) (regTwo!32058 r!7292))) (= lambda!312867 lambda!312848))))

(declare-fun bs!1351572 () Bool)

(assert (= bs!1351572 (and b!5762625 b!5762161)))

(assert (=> bs!1351572 (= (and (= (regOne!32058 (regOne!32058 r!7292)) (regOne!32058 r!7292)) (= (regTwo!32058 (regOne!32058 r!7292)) (regTwo!32058 r!7292))) (= lambda!312867 lambda!312820))))

(declare-fun bs!1351573 () Bool)

(assert (= bs!1351573 (and b!5762625 d!1815532)))

(assert (=> bs!1351573 (not (= lambda!312867 lambda!312835))))

(assert (=> bs!1351572 (not (= lambda!312867 lambda!312819))))

(assert (=> bs!1351571 (not (= lambda!312867 lambda!312847))))

(declare-fun bs!1351575 () Bool)

(assert (= bs!1351575 (and b!5762625 b!5762626)))

(assert (=> bs!1351575 (not (= lambda!312867 lambda!312864))))

(assert (=> b!5762625 true))

(assert (=> b!5762625 true))

(declare-fun b!5762623 () Bool)

(declare-fun e!3540715 () Bool)

(assert (=> b!5762623 (= e!3540715 (matchRSpec!2876 (regTwo!32059 (regOne!32058 r!7292)) s!2326))))

(declare-fun bm!442437 () Bool)

(declare-fun c!1018557 () Bool)

(declare-fun call!442442 () Bool)

(assert (=> bm!442437 (= call!442442 (Exists!2873 (ite c!1018557 lambda!312864 lambda!312867)))))

(declare-fun e!3540716 () Bool)

(assert (=> b!5762625 (= e!3540716 call!442442)))

(declare-fun e!3540717 () Bool)

(assert (=> b!5762626 (= e!3540717 call!442442)))

(declare-fun b!5762627 () Bool)

(declare-fun e!3540720 () Bool)

(declare-fun call!442443 () Bool)

(assert (=> b!5762627 (= e!3540720 call!442443)))

(declare-fun b!5762628 () Bool)

(declare-fun e!3540719 () Bool)

(assert (=> b!5762628 (= e!3540719 e!3540716)))

(assert (=> b!5762628 (= c!1018557 ((_ is Star!15773) (regOne!32058 r!7292)))))

(declare-fun b!5762629 () Bool)

(declare-fun c!1018559 () Bool)

(assert (=> b!5762629 (= c!1018559 ((_ is ElementMatch!15773) (regOne!32058 r!7292)))))

(declare-fun e!3540714 () Bool)

(declare-fun e!3540718 () Bool)

(assert (=> b!5762629 (= e!3540714 e!3540718)))

(declare-fun bm!442438 () Bool)

(assert (=> bm!442438 (= call!442443 (isEmpty!35384 s!2326))))

(declare-fun d!1815598 () Bool)

(declare-fun c!1018556 () Bool)

(assert (=> d!1815598 (= c!1018556 ((_ is EmptyExpr!15773) (regOne!32058 r!7292)))))

(assert (=> d!1815598 (= (matchRSpec!2876 (regOne!32058 r!7292) s!2326) e!3540720)))

(declare-fun b!5762624 () Bool)

(declare-fun res!2432123 () Bool)

(assert (=> b!5762624 (=> res!2432123 e!3540717)))

(assert (=> b!5762624 (= res!2432123 call!442443)))

(assert (=> b!5762624 (= e!3540716 e!3540717)))

(declare-fun b!5762630 () Bool)

(assert (=> b!5762630 (= e!3540720 e!3540714)))

(declare-fun res!2432124 () Bool)

(assert (=> b!5762630 (= res!2432124 (not ((_ is EmptyLang!15773) (regOne!32058 r!7292))))))

(assert (=> b!5762630 (=> (not res!2432124) (not e!3540714))))

(declare-fun b!5762631 () Bool)

(assert (=> b!5762631 (= e!3540718 (= s!2326 (Cons!63496 (c!1018419 (regOne!32058 r!7292)) Nil!63496)))))

(declare-fun b!5762632 () Bool)

(assert (=> b!5762632 (= e!3540719 e!3540715)))

(declare-fun res!2432125 () Bool)

(assert (=> b!5762632 (= res!2432125 (matchRSpec!2876 (regOne!32059 (regOne!32058 r!7292)) s!2326))))

(assert (=> b!5762632 (=> res!2432125 e!3540715)))

(declare-fun b!5762633 () Bool)

(declare-fun c!1018558 () Bool)

(assert (=> b!5762633 (= c!1018558 ((_ is Union!15773) (regOne!32058 r!7292)))))

(assert (=> b!5762633 (= e!3540718 e!3540719)))

(assert (= (and d!1815598 c!1018556) b!5762627))

(assert (= (and d!1815598 (not c!1018556)) b!5762630))

(assert (= (and b!5762630 res!2432124) b!5762629))

(assert (= (and b!5762629 c!1018559) b!5762631))

(assert (= (and b!5762629 (not c!1018559)) b!5762633))

(assert (= (and b!5762633 c!1018558) b!5762632))

(assert (= (and b!5762633 (not c!1018558)) b!5762628))

(assert (= (and b!5762632 (not res!2432125)) b!5762623))

(assert (= (and b!5762628 c!1018557) b!5762624))

(assert (= (and b!5762628 (not c!1018557)) b!5762625))

(assert (= (and b!5762624 (not res!2432123)) b!5762626))

(assert (= (or b!5762626 b!5762625) bm!442437))

(assert (= (or b!5762627 b!5762624) bm!442438))

(declare-fun m!6709654 () Bool)

(assert (=> b!5762623 m!6709654))

(declare-fun m!6709658 () Bool)

(assert (=> bm!442437 m!6709658))

(declare-fun m!6709662 () Bool)

(assert (=> bm!442438 m!6709662))

(declare-fun m!6709664 () Bool)

(assert (=> b!5762632 m!6709664))

(assert (=> b!5762147 d!1815598))

(declare-fun d!1815612 () Bool)

(assert (=> d!1815612 (= (matchR!7958 (regOne!32058 r!7292) s!2326) (matchRSpec!2876 (regOne!32058 r!7292) s!2326))))

(declare-fun lt!2288901 () Unit!156624)

(declare-fun choose!43692 (Regex!15773 List!63620) Unit!156624)

(assert (=> d!1815612 (= lt!2288901 (choose!43692 (regOne!32058 r!7292) s!2326))))

(assert (=> d!1815612 (validRegex!7509 (regOne!32058 r!7292))))

(assert (=> d!1815612 (= (mainMatchTheorem!2876 (regOne!32058 r!7292) s!2326) lt!2288901)))

(declare-fun bs!1351583 () Bool)

(assert (= bs!1351583 d!1815612))

(assert (=> bs!1351583 m!6709324))

(assert (=> bs!1351583 m!6709326))

(declare-fun m!6709666 () Bool)

(assert (=> bs!1351583 m!6709666))

(assert (=> bs!1351583 m!6709434))

(assert (=> b!5762147 d!1815612))

(declare-fun b!5762728 () Bool)

(declare-fun e!3540764 () Bool)

(assert (=> b!5762728 (= e!3540764 (not (= (head!12182 s!2326) (c!1018419 (regOne!32058 r!7292)))))))

(declare-fun b!5762729 () Bool)

(declare-fun res!2432161 () Bool)

(declare-fun e!3540768 () Bool)

(assert (=> b!5762729 (=> res!2432161 e!3540768)))

(declare-fun e!3540765 () Bool)

(assert (=> b!5762729 (= res!2432161 e!3540765)))

(declare-fun res!2432160 () Bool)

(assert (=> b!5762729 (=> (not res!2432160) (not e!3540765))))

(declare-fun lt!2288905 () Bool)

(assert (=> b!5762729 (= res!2432160 lt!2288905)))

(declare-fun b!5762730 () Bool)

(assert (=> b!5762730 (= e!3540765 (= (head!12182 s!2326) (c!1018419 (regOne!32058 r!7292))))))

(declare-fun b!5762731 () Bool)

(declare-fun e!3540766 () Bool)

(assert (=> b!5762731 (= e!3540766 (not lt!2288905))))

(declare-fun b!5762732 () Bool)

(declare-fun e!3540767 () Bool)

(assert (=> b!5762732 (= e!3540767 e!3540766)))

(declare-fun c!1018568 () Bool)

(assert (=> b!5762732 (= c!1018568 ((_ is EmptyLang!15773) (regOne!32058 r!7292)))))

(declare-fun b!5762733 () Bool)

(declare-fun e!3540769 () Bool)

(assert (=> b!5762733 (= e!3540769 e!3540764)))

(declare-fun res!2432154 () Bool)

(assert (=> b!5762733 (=> res!2432154 e!3540764)))

(declare-fun call!442446 () Bool)

(assert (=> b!5762733 (= res!2432154 call!442446)))

(declare-fun b!5762734 () Bool)

(declare-fun res!2432159 () Bool)

(assert (=> b!5762734 (=> res!2432159 e!3540764)))

(assert (=> b!5762734 (= res!2432159 (not (isEmpty!35384 (tail!11277 s!2326))))))

(declare-fun bm!442441 () Bool)

(assert (=> bm!442441 (= call!442446 (isEmpty!35384 s!2326))))

(declare-fun b!5762736 () Bool)

(assert (=> b!5762736 (= e!3540767 (= lt!2288905 call!442446))))

(declare-fun b!5762737 () Bool)

(assert (=> b!5762737 (= e!3540768 e!3540769)))

(declare-fun res!2432158 () Bool)

(assert (=> b!5762737 (=> (not res!2432158) (not e!3540769))))

(assert (=> b!5762737 (= res!2432158 (not lt!2288905))))

(declare-fun b!5762738 () Bool)

(declare-fun e!3540770 () Bool)

(assert (=> b!5762738 (= e!3540770 (nullable!5805 (regOne!32058 r!7292)))))

(declare-fun b!5762739 () Bool)

(declare-fun res!2432156 () Bool)

(assert (=> b!5762739 (=> (not res!2432156) (not e!3540765))))

(assert (=> b!5762739 (= res!2432156 (not call!442446))))

(declare-fun d!1815614 () Bool)

(assert (=> d!1815614 e!3540767))

(declare-fun c!1018566 () Bool)

(assert (=> d!1815614 (= c!1018566 ((_ is EmptyExpr!15773) (regOne!32058 r!7292)))))

(assert (=> d!1815614 (= lt!2288905 e!3540770)))

(declare-fun c!1018567 () Bool)

(assert (=> d!1815614 (= c!1018567 (isEmpty!35384 s!2326))))

(assert (=> d!1815614 (validRegex!7509 (regOne!32058 r!7292))))

(assert (=> d!1815614 (= (matchR!7958 (regOne!32058 r!7292) s!2326) lt!2288905)))

(declare-fun b!5762735 () Bool)

(declare-fun res!2432155 () Bool)

(assert (=> b!5762735 (=> res!2432155 e!3540768)))

(assert (=> b!5762735 (= res!2432155 (not ((_ is ElementMatch!15773) (regOne!32058 r!7292))))))

(assert (=> b!5762735 (= e!3540766 e!3540768)))

(declare-fun b!5762740 () Bool)

(declare-fun res!2432157 () Bool)

(assert (=> b!5762740 (=> (not res!2432157) (not e!3540765))))

(assert (=> b!5762740 (= res!2432157 (isEmpty!35384 (tail!11277 s!2326)))))

(declare-fun b!5762741 () Bool)

(declare-fun derivativeStep!4554 (Regex!15773 C!31816) Regex!15773)

(assert (=> b!5762741 (= e!3540770 (matchR!7958 (derivativeStep!4554 (regOne!32058 r!7292) (head!12182 s!2326)) (tail!11277 s!2326)))))

(assert (= (and d!1815614 c!1018567) b!5762738))

(assert (= (and d!1815614 (not c!1018567)) b!5762741))

(assert (= (and d!1815614 c!1018566) b!5762736))

(assert (= (and d!1815614 (not c!1018566)) b!5762732))

(assert (= (and b!5762732 c!1018568) b!5762731))

(assert (= (and b!5762732 (not c!1018568)) b!5762735))

(assert (= (and b!5762735 (not res!2432155)) b!5762729))

(assert (= (and b!5762729 res!2432160) b!5762739))

(assert (= (and b!5762739 res!2432156) b!5762740))

(assert (= (and b!5762740 res!2432157) b!5762730))

(assert (= (and b!5762729 (not res!2432161)) b!5762737))

(assert (= (and b!5762737 res!2432158) b!5762733))

(assert (= (and b!5762733 (not res!2432154)) b!5762734))

(assert (= (and b!5762734 (not res!2432159)) b!5762728))

(assert (= (or b!5762736 b!5762739 b!5762733) bm!442441))

(declare-fun m!6709680 () Bool)

(assert (=> b!5762740 m!6709680))

(assert (=> b!5762740 m!6709680))

(declare-fun m!6709682 () Bool)

(assert (=> b!5762740 m!6709682))

(declare-fun m!6709684 () Bool)

(assert (=> b!5762730 m!6709684))

(assert (=> bm!442441 m!6709662))

(assert (=> b!5762734 m!6709680))

(assert (=> b!5762734 m!6709680))

(assert (=> b!5762734 m!6709682))

(assert (=> b!5762741 m!6709684))

(assert (=> b!5762741 m!6709684))

(declare-fun m!6709686 () Bool)

(assert (=> b!5762741 m!6709686))

(assert (=> b!5762741 m!6709680))

(assert (=> b!5762741 m!6709686))

(assert (=> b!5762741 m!6709680))

(declare-fun m!6709688 () Bool)

(assert (=> b!5762741 m!6709688))

(declare-fun m!6709690 () Bool)

(assert (=> b!5762738 m!6709690))

(assert (=> b!5762728 m!6709684))

(assert (=> d!1815614 m!6709662))

(assert (=> d!1815614 m!6709434))

(assert (=> b!5762147 d!1815614))

(declare-fun bs!1351596 () Bool)

(declare-fun b!5762745 () Bool)

(assert (= bs!1351596 (and b!5762745 d!1815544)))

(declare-fun lambda!312875 () Int)

(assert (=> bs!1351596 (not (= lambda!312875 lambda!312848))))

(declare-fun bs!1351597 () Bool)

(assert (= bs!1351597 (and b!5762745 b!5762161)))

(assert (=> bs!1351597 (not (= lambda!312875 lambda!312820))))

(declare-fun bs!1351598 () Bool)

(assert (= bs!1351598 (and b!5762745 d!1815532)))

(assert (=> bs!1351598 (not (= lambda!312875 lambda!312835))))

(declare-fun bs!1351599 () Bool)

(assert (= bs!1351599 (and b!5762745 b!5762625)))

(assert (=> bs!1351599 (not (= lambda!312875 lambda!312867))))

(assert (=> bs!1351597 (not (= lambda!312875 lambda!312819))))

(assert (=> bs!1351596 (not (= lambda!312875 lambda!312847))))

(declare-fun bs!1351600 () Bool)

(assert (= bs!1351600 (and b!5762745 b!5762626)))

(assert (=> bs!1351600 (= (and (= (reg!16102 (regTwo!32058 r!7292)) (reg!16102 (regOne!32058 r!7292))) (= (regTwo!32058 r!7292) (regOne!32058 r!7292))) (= lambda!312875 lambda!312864))))

(assert (=> b!5762745 true))

(assert (=> b!5762745 true))

(declare-fun bs!1351601 () Bool)

(declare-fun b!5762744 () Bool)

(assert (= bs!1351601 (and b!5762744 b!5762745)))

(declare-fun lambda!312876 () Int)

(assert (=> bs!1351601 (not (= lambda!312876 lambda!312875))))

(declare-fun bs!1351602 () Bool)

(assert (= bs!1351602 (and b!5762744 d!1815544)))

(assert (=> bs!1351602 (= (and (= (regOne!32058 (regTwo!32058 r!7292)) (regOne!32058 r!7292)) (= (regTwo!32058 (regTwo!32058 r!7292)) (regTwo!32058 r!7292))) (= lambda!312876 lambda!312848))))

(declare-fun bs!1351603 () Bool)

(assert (= bs!1351603 (and b!5762744 b!5762161)))

(assert (=> bs!1351603 (= (and (= (regOne!32058 (regTwo!32058 r!7292)) (regOne!32058 r!7292)) (= (regTwo!32058 (regTwo!32058 r!7292)) (regTwo!32058 r!7292))) (= lambda!312876 lambda!312820))))

(declare-fun bs!1351604 () Bool)

(assert (= bs!1351604 (and b!5762744 d!1815532)))

(assert (=> bs!1351604 (not (= lambda!312876 lambda!312835))))

(declare-fun bs!1351605 () Bool)

(assert (= bs!1351605 (and b!5762744 b!5762625)))

(assert (=> bs!1351605 (= (and (= (regOne!32058 (regTwo!32058 r!7292)) (regOne!32058 (regOne!32058 r!7292))) (= (regTwo!32058 (regTwo!32058 r!7292)) (regTwo!32058 (regOne!32058 r!7292)))) (= lambda!312876 lambda!312867))))

(assert (=> bs!1351603 (not (= lambda!312876 lambda!312819))))

(assert (=> bs!1351602 (not (= lambda!312876 lambda!312847))))

(declare-fun bs!1351606 () Bool)

(assert (= bs!1351606 (and b!5762744 b!5762626)))

(assert (=> bs!1351606 (not (= lambda!312876 lambda!312864))))

(assert (=> b!5762744 true))

(assert (=> b!5762744 true))

(declare-fun b!5762742 () Bool)

(declare-fun e!3540772 () Bool)

(assert (=> b!5762742 (= e!3540772 (matchRSpec!2876 (regTwo!32059 (regTwo!32058 r!7292)) s!2326))))

(declare-fun call!442447 () Bool)

(declare-fun bm!442442 () Bool)

(declare-fun c!1018570 () Bool)

(assert (=> bm!442442 (= call!442447 (Exists!2873 (ite c!1018570 lambda!312875 lambda!312876)))))

(declare-fun e!3540773 () Bool)

(assert (=> b!5762744 (= e!3540773 call!442447)))

(declare-fun e!3540774 () Bool)

(assert (=> b!5762745 (= e!3540774 call!442447)))

(declare-fun b!5762746 () Bool)

(declare-fun e!3540777 () Bool)

(declare-fun call!442448 () Bool)

(assert (=> b!5762746 (= e!3540777 call!442448)))

(declare-fun b!5762747 () Bool)

(declare-fun e!3540776 () Bool)

(assert (=> b!5762747 (= e!3540776 e!3540773)))

(assert (=> b!5762747 (= c!1018570 ((_ is Star!15773) (regTwo!32058 r!7292)))))

(declare-fun b!5762748 () Bool)

(declare-fun c!1018572 () Bool)

(assert (=> b!5762748 (= c!1018572 ((_ is ElementMatch!15773) (regTwo!32058 r!7292)))))

(declare-fun e!3540771 () Bool)

(declare-fun e!3540775 () Bool)

(assert (=> b!5762748 (= e!3540771 e!3540775)))

(declare-fun bm!442443 () Bool)

(assert (=> bm!442443 (= call!442448 (isEmpty!35384 s!2326))))

(declare-fun d!1815622 () Bool)

(declare-fun c!1018569 () Bool)

(assert (=> d!1815622 (= c!1018569 ((_ is EmptyExpr!15773) (regTwo!32058 r!7292)))))

(assert (=> d!1815622 (= (matchRSpec!2876 (regTwo!32058 r!7292) s!2326) e!3540777)))

(declare-fun b!5762743 () Bool)

(declare-fun res!2432162 () Bool)

(assert (=> b!5762743 (=> res!2432162 e!3540774)))

(assert (=> b!5762743 (= res!2432162 call!442448)))

(assert (=> b!5762743 (= e!3540773 e!3540774)))

(declare-fun b!5762749 () Bool)

(assert (=> b!5762749 (= e!3540777 e!3540771)))

(declare-fun res!2432163 () Bool)

(assert (=> b!5762749 (= res!2432163 (not ((_ is EmptyLang!15773) (regTwo!32058 r!7292))))))

(assert (=> b!5762749 (=> (not res!2432163) (not e!3540771))))

(declare-fun b!5762750 () Bool)

(assert (=> b!5762750 (= e!3540775 (= s!2326 (Cons!63496 (c!1018419 (regTwo!32058 r!7292)) Nil!63496)))))

(declare-fun b!5762751 () Bool)

(assert (=> b!5762751 (= e!3540776 e!3540772)))

(declare-fun res!2432164 () Bool)

(assert (=> b!5762751 (= res!2432164 (matchRSpec!2876 (regOne!32059 (regTwo!32058 r!7292)) s!2326))))

(assert (=> b!5762751 (=> res!2432164 e!3540772)))

(declare-fun b!5762752 () Bool)

(declare-fun c!1018571 () Bool)

(assert (=> b!5762752 (= c!1018571 ((_ is Union!15773) (regTwo!32058 r!7292)))))

(assert (=> b!5762752 (= e!3540775 e!3540776)))

(assert (= (and d!1815622 c!1018569) b!5762746))

(assert (= (and d!1815622 (not c!1018569)) b!5762749))

(assert (= (and b!5762749 res!2432163) b!5762748))

(assert (= (and b!5762748 c!1018572) b!5762750))

(assert (= (and b!5762748 (not c!1018572)) b!5762752))

(assert (= (and b!5762752 c!1018571) b!5762751))

(assert (= (and b!5762752 (not c!1018571)) b!5762747))

(assert (= (and b!5762751 (not res!2432164)) b!5762742))

(assert (= (and b!5762747 c!1018570) b!5762743))

(assert (= (and b!5762747 (not c!1018570)) b!5762744))

(assert (= (and b!5762743 (not res!2432162)) b!5762745))

(assert (= (or b!5762745 b!5762744) bm!442442))

(assert (= (or b!5762746 b!5762743) bm!442443))

(declare-fun m!6709692 () Bool)

(assert (=> b!5762742 m!6709692))

(declare-fun m!6709694 () Bool)

(assert (=> bm!442442 m!6709694))

(assert (=> bm!442443 m!6709662))

(declare-fun m!6709696 () Bool)

(assert (=> b!5762751 m!6709696))

(assert (=> b!5762147 d!1815622))

(declare-fun b!5762753 () Bool)

(declare-fun e!3540778 () Bool)

(assert (=> b!5762753 (= e!3540778 (not (= (head!12182 s!2326) (c!1018419 (regTwo!32058 r!7292)))))))

(declare-fun b!5762754 () Bool)

(declare-fun res!2432172 () Bool)

(declare-fun e!3540782 () Bool)

(assert (=> b!5762754 (=> res!2432172 e!3540782)))

(declare-fun e!3540779 () Bool)

(assert (=> b!5762754 (= res!2432172 e!3540779)))

(declare-fun res!2432171 () Bool)

(assert (=> b!5762754 (=> (not res!2432171) (not e!3540779))))

(declare-fun lt!2288906 () Bool)

(assert (=> b!5762754 (= res!2432171 lt!2288906)))

(declare-fun b!5762755 () Bool)

(assert (=> b!5762755 (= e!3540779 (= (head!12182 s!2326) (c!1018419 (regTwo!32058 r!7292))))))

(declare-fun b!5762756 () Bool)

(declare-fun e!3540780 () Bool)

(assert (=> b!5762756 (= e!3540780 (not lt!2288906))))

(declare-fun b!5762757 () Bool)

(declare-fun e!3540781 () Bool)

(assert (=> b!5762757 (= e!3540781 e!3540780)))

(declare-fun c!1018575 () Bool)

(assert (=> b!5762757 (= c!1018575 ((_ is EmptyLang!15773) (regTwo!32058 r!7292)))))

(declare-fun b!5762758 () Bool)

(declare-fun e!3540783 () Bool)

(assert (=> b!5762758 (= e!3540783 e!3540778)))

(declare-fun res!2432165 () Bool)

(assert (=> b!5762758 (=> res!2432165 e!3540778)))

(declare-fun call!442449 () Bool)

(assert (=> b!5762758 (= res!2432165 call!442449)))

(declare-fun b!5762759 () Bool)

(declare-fun res!2432170 () Bool)

(assert (=> b!5762759 (=> res!2432170 e!3540778)))

(assert (=> b!5762759 (= res!2432170 (not (isEmpty!35384 (tail!11277 s!2326))))))

(declare-fun bm!442444 () Bool)

(assert (=> bm!442444 (= call!442449 (isEmpty!35384 s!2326))))

(declare-fun b!5762761 () Bool)

(assert (=> b!5762761 (= e!3540781 (= lt!2288906 call!442449))))

(declare-fun b!5762762 () Bool)

(assert (=> b!5762762 (= e!3540782 e!3540783)))

(declare-fun res!2432169 () Bool)

(assert (=> b!5762762 (=> (not res!2432169) (not e!3540783))))

(assert (=> b!5762762 (= res!2432169 (not lt!2288906))))

(declare-fun b!5762763 () Bool)

(declare-fun e!3540784 () Bool)

(assert (=> b!5762763 (= e!3540784 (nullable!5805 (regTwo!32058 r!7292)))))

(declare-fun b!5762764 () Bool)

(declare-fun res!2432167 () Bool)

(assert (=> b!5762764 (=> (not res!2432167) (not e!3540779))))

(assert (=> b!5762764 (= res!2432167 (not call!442449))))

(declare-fun d!1815624 () Bool)

(assert (=> d!1815624 e!3540781))

(declare-fun c!1018573 () Bool)

(assert (=> d!1815624 (= c!1018573 ((_ is EmptyExpr!15773) (regTwo!32058 r!7292)))))

(assert (=> d!1815624 (= lt!2288906 e!3540784)))

(declare-fun c!1018574 () Bool)

(assert (=> d!1815624 (= c!1018574 (isEmpty!35384 s!2326))))

(assert (=> d!1815624 (validRegex!7509 (regTwo!32058 r!7292))))

(assert (=> d!1815624 (= (matchR!7958 (regTwo!32058 r!7292) s!2326) lt!2288906)))

(declare-fun b!5762760 () Bool)

(declare-fun res!2432166 () Bool)

(assert (=> b!5762760 (=> res!2432166 e!3540782)))

(assert (=> b!5762760 (= res!2432166 (not ((_ is ElementMatch!15773) (regTwo!32058 r!7292))))))

(assert (=> b!5762760 (= e!3540780 e!3540782)))

(declare-fun b!5762765 () Bool)

(declare-fun res!2432168 () Bool)

(assert (=> b!5762765 (=> (not res!2432168) (not e!3540779))))

(assert (=> b!5762765 (= res!2432168 (isEmpty!35384 (tail!11277 s!2326)))))

(declare-fun b!5762766 () Bool)

(assert (=> b!5762766 (= e!3540784 (matchR!7958 (derivativeStep!4554 (regTwo!32058 r!7292) (head!12182 s!2326)) (tail!11277 s!2326)))))

(assert (= (and d!1815624 c!1018574) b!5762763))

(assert (= (and d!1815624 (not c!1018574)) b!5762766))

(assert (= (and d!1815624 c!1018573) b!5762761))

(assert (= (and d!1815624 (not c!1018573)) b!5762757))

(assert (= (and b!5762757 c!1018575) b!5762756))

(assert (= (and b!5762757 (not c!1018575)) b!5762760))

(assert (= (and b!5762760 (not res!2432166)) b!5762754))

(assert (= (and b!5762754 res!2432171) b!5762764))

(assert (= (and b!5762764 res!2432167) b!5762765))

(assert (= (and b!5762765 res!2432168) b!5762755))

(assert (= (and b!5762754 (not res!2432172)) b!5762762))

(assert (= (and b!5762762 res!2432169) b!5762758))

(assert (= (and b!5762758 (not res!2432165)) b!5762759))

(assert (= (and b!5762759 (not res!2432170)) b!5762753))

(assert (= (or b!5762761 b!5762764 b!5762758) bm!442444))

(assert (=> b!5762765 m!6709680))

(assert (=> b!5762765 m!6709680))

(assert (=> b!5762765 m!6709682))

(assert (=> b!5762755 m!6709684))

(assert (=> bm!442444 m!6709662))

(assert (=> b!5762759 m!6709680))

(assert (=> b!5762759 m!6709680))

(assert (=> b!5762759 m!6709682))

(assert (=> b!5762766 m!6709684))

(assert (=> b!5762766 m!6709684))

(declare-fun m!6709698 () Bool)

(assert (=> b!5762766 m!6709698))

(assert (=> b!5762766 m!6709680))

(assert (=> b!5762766 m!6709698))

(assert (=> b!5762766 m!6709680))

(declare-fun m!6709700 () Bool)

(assert (=> b!5762766 m!6709700))

(declare-fun m!6709702 () Bool)

(assert (=> b!5762763 m!6709702))

(assert (=> b!5762753 m!6709684))

(assert (=> d!1815624 m!6709662))

(declare-fun m!6709704 () Bool)

(assert (=> d!1815624 m!6709704))

(assert (=> b!5762147 d!1815624))

(declare-fun d!1815626 () Bool)

(assert (=> d!1815626 (= (matchR!7958 (regTwo!32058 r!7292) s!2326) (matchRSpec!2876 (regTwo!32058 r!7292) s!2326))))

(declare-fun lt!2288907 () Unit!156624)

(assert (=> d!1815626 (= lt!2288907 (choose!43692 (regTwo!32058 r!7292) s!2326))))

(assert (=> d!1815626 (validRegex!7509 (regTwo!32058 r!7292))))

(assert (=> d!1815626 (= (mainMatchTheorem!2876 (regTwo!32058 r!7292) s!2326) lt!2288907)))

(declare-fun bs!1351607 () Bool)

(assert (= bs!1351607 d!1815626))

(assert (=> bs!1351607 m!6709318))

(assert (=> bs!1351607 m!6709328))

(declare-fun m!6709706 () Bool)

(assert (=> bs!1351607 m!6709706))

(assert (=> bs!1351607 m!6709704))

(assert (=> b!5762147 d!1815626))

(declare-fun bm!442451 () Bool)

(declare-fun call!442457 () Bool)

(declare-fun c!1018580 () Bool)

(assert (=> bm!442451 (= call!442457 (validRegex!7509 (ite c!1018580 (regTwo!32059 r!7292) (regTwo!32058 r!7292))))))

(declare-fun bm!442452 () Bool)

(declare-fun call!442458 () Bool)

(declare-fun call!442456 () Bool)

(assert (=> bm!442452 (= call!442458 call!442456)))

(declare-fun b!5762785 () Bool)

(declare-fun e!3540802 () Bool)

(declare-fun e!3540805 () Bool)

(assert (=> b!5762785 (= e!3540802 e!3540805)))

(declare-fun c!1018581 () Bool)

(assert (=> b!5762785 (= c!1018581 ((_ is Star!15773) r!7292))))

(declare-fun b!5762786 () Bool)

(declare-fun e!3540800 () Bool)

(declare-fun e!3540804 () Bool)

(assert (=> b!5762786 (= e!3540800 e!3540804)))

(declare-fun res!2432187 () Bool)

(assert (=> b!5762786 (=> (not res!2432187) (not e!3540804))))

(assert (=> b!5762786 (= res!2432187 call!442458)))

(declare-fun b!5762787 () Bool)

(declare-fun res!2432183 () Bool)

(assert (=> b!5762787 (=> res!2432183 e!3540800)))

(assert (=> b!5762787 (= res!2432183 (not ((_ is Concat!24618) r!7292)))))

(declare-fun e!3540799 () Bool)

(assert (=> b!5762787 (= e!3540799 e!3540800)))

(declare-fun bm!442453 () Bool)

(assert (=> bm!442453 (= call!442456 (validRegex!7509 (ite c!1018581 (reg!16102 r!7292) (ite c!1018580 (regOne!32059 r!7292) (regOne!32058 r!7292)))))))

(declare-fun b!5762788 () Bool)

(assert (=> b!5762788 (= e!3540804 call!442457)))

(declare-fun b!5762789 () Bool)

(assert (=> b!5762789 (= e!3540805 e!3540799)))

(assert (=> b!5762789 (= c!1018580 ((_ is Union!15773) r!7292))))

(declare-fun b!5762790 () Bool)

(declare-fun e!3540801 () Bool)

(assert (=> b!5762790 (= e!3540801 call!442456)))

(declare-fun b!5762791 () Bool)

(declare-fun e!3540803 () Bool)

(assert (=> b!5762791 (= e!3540803 call!442457)))

(declare-fun d!1815628 () Bool)

(declare-fun res!2432184 () Bool)

(assert (=> d!1815628 (=> res!2432184 e!3540802)))

(assert (=> d!1815628 (= res!2432184 ((_ is ElementMatch!15773) r!7292))))

(assert (=> d!1815628 (= (validRegex!7509 r!7292) e!3540802)))

(declare-fun b!5762792 () Bool)

(assert (=> b!5762792 (= e!3540805 e!3540801)))

(declare-fun res!2432186 () Bool)

(assert (=> b!5762792 (= res!2432186 (not (nullable!5805 (reg!16102 r!7292))))))

(assert (=> b!5762792 (=> (not res!2432186) (not e!3540801))))

(declare-fun b!5762793 () Bool)

(declare-fun res!2432185 () Bool)

(assert (=> b!5762793 (=> (not res!2432185) (not e!3540803))))

(assert (=> b!5762793 (= res!2432185 call!442458)))

(assert (=> b!5762793 (= e!3540799 e!3540803)))

(assert (= (and d!1815628 (not res!2432184)) b!5762785))

(assert (= (and b!5762785 c!1018581) b!5762792))

(assert (= (and b!5762785 (not c!1018581)) b!5762789))

(assert (= (and b!5762792 res!2432186) b!5762790))

(assert (= (and b!5762789 c!1018580) b!5762793))

(assert (= (and b!5762789 (not c!1018580)) b!5762787))

(assert (= (and b!5762793 res!2432185) b!5762791))

(assert (= (and b!5762787 (not res!2432183)) b!5762786))

(assert (= (and b!5762786 res!2432187) b!5762788))

(assert (= (or b!5762791 b!5762788) bm!442451))

(assert (= (or b!5762793 b!5762786) bm!442452))

(assert (= (or b!5762790 bm!442452) bm!442453))

(declare-fun m!6709708 () Bool)

(assert (=> bm!442451 m!6709708))

(declare-fun m!6709710 () Bool)

(assert (=> bm!442453 m!6709710))

(declare-fun m!6709712 () Bool)

(assert (=> b!5762792 m!6709712))

(assert (=> start!591832 d!1815628))

(declare-fun bs!1351608 () Bool)

(declare-fun d!1815630 () Bool)

(assert (= bs!1351608 (and d!1815630 d!1815582)))

(declare-fun lambda!312879 () Int)

(assert (=> bs!1351608 (= lambda!312879 lambda!312855)))

(assert (=> d!1815630 (= (inv!82679 (h!69943 zl!343)) (forall!14891 (exprs!5657 (h!69943 zl!343)) lambda!312879))))

(declare-fun bs!1351609 () Bool)

(assert (= bs!1351609 d!1815630))

(declare-fun m!6709714 () Bool)

(assert (=> bs!1351609 m!6709714))

(assert (=> b!5762156 d!1815630))

(declare-fun bs!1351610 () Bool)

(declare-fun d!1815632 () Bool)

(assert (= bs!1351610 (and d!1815632 d!1815582)))

(declare-fun lambda!312882 () Int)

(assert (=> bs!1351610 (= lambda!312882 lambda!312855)))

(declare-fun bs!1351611 () Bool)

(assert (= bs!1351611 (and d!1815632 d!1815630)))

(assert (=> bs!1351611 (= lambda!312882 lambda!312879)))

(declare-fun b!5762814 () Bool)

(declare-fun e!3540823 () Bool)

(declare-fun lt!2288910 () Regex!15773)

(assert (=> b!5762814 (= e!3540823 (= lt!2288910 (head!12183 (unfocusZipperList!1201 zl!343))))))

(declare-fun e!3540821 () Bool)

(assert (=> d!1815632 e!3540821))

(declare-fun res!2432192 () Bool)

(assert (=> d!1815632 (=> (not res!2432192) (not e!3540821))))

(assert (=> d!1815632 (= res!2432192 (validRegex!7509 lt!2288910))))

(declare-fun e!3540822 () Regex!15773)

(assert (=> d!1815632 (= lt!2288910 e!3540822)))

(declare-fun c!1018591 () Bool)

(declare-fun e!3540818 () Bool)

(assert (=> d!1815632 (= c!1018591 e!3540818)))

(declare-fun res!2432193 () Bool)

(assert (=> d!1815632 (=> (not res!2432193) (not e!3540818))))

(assert (=> d!1815632 (= res!2432193 ((_ is Cons!63494) (unfocusZipperList!1201 zl!343)))))

(assert (=> d!1815632 (forall!14891 (unfocusZipperList!1201 zl!343) lambda!312882)))

(assert (=> d!1815632 (= (generalisedUnion!1636 (unfocusZipperList!1201 zl!343)) lt!2288910)))

(declare-fun b!5762815 () Bool)

(declare-fun e!3540819 () Regex!15773)

(assert (=> b!5762815 (= e!3540822 e!3540819)))

(declare-fun c!1018590 () Bool)

(assert (=> b!5762815 (= c!1018590 ((_ is Cons!63494) (unfocusZipperList!1201 zl!343)))))

(declare-fun b!5762816 () Bool)

(declare-fun isUnion!699 (Regex!15773) Bool)

(assert (=> b!5762816 (= e!3540823 (isUnion!699 lt!2288910))))

(declare-fun b!5762817 () Bool)

(declare-fun e!3540820 () Bool)

(assert (=> b!5762817 (= e!3540820 e!3540823)))

(declare-fun c!1018592 () Bool)

(assert (=> b!5762817 (= c!1018592 (isEmpty!35381 (tail!11278 (unfocusZipperList!1201 zl!343))))))

(declare-fun b!5762818 () Bool)

(assert (=> b!5762818 (= e!3540821 e!3540820)))

(declare-fun c!1018593 () Bool)

(assert (=> b!5762818 (= c!1018593 (isEmpty!35381 (unfocusZipperList!1201 zl!343)))))

(declare-fun b!5762819 () Bool)

(assert (=> b!5762819 (= e!3540819 EmptyLang!15773)))

(declare-fun b!5762820 () Bool)

(assert (=> b!5762820 (= e!3540818 (isEmpty!35381 (t!376952 (unfocusZipperList!1201 zl!343))))))

(declare-fun b!5762821 () Bool)

(assert (=> b!5762821 (= e!3540819 (Union!15773 (h!69942 (unfocusZipperList!1201 zl!343)) (generalisedUnion!1636 (t!376952 (unfocusZipperList!1201 zl!343)))))))

(declare-fun b!5762822 () Bool)

(assert (=> b!5762822 (= e!3540822 (h!69942 (unfocusZipperList!1201 zl!343)))))

(declare-fun b!5762823 () Bool)

(declare-fun isEmptyLang!1269 (Regex!15773) Bool)

(assert (=> b!5762823 (= e!3540820 (isEmptyLang!1269 lt!2288910))))

(assert (= (and d!1815632 res!2432193) b!5762820))

(assert (= (and d!1815632 c!1018591) b!5762822))

(assert (= (and d!1815632 (not c!1018591)) b!5762815))

(assert (= (and b!5762815 c!1018590) b!5762821))

(assert (= (and b!5762815 (not c!1018590)) b!5762819))

(assert (= (and d!1815632 res!2432192) b!5762818))

(assert (= (and b!5762818 c!1018593) b!5762823))

(assert (= (and b!5762818 (not c!1018593)) b!5762817))

(assert (= (and b!5762817 c!1018592) b!5762814))

(assert (= (and b!5762817 (not c!1018592)) b!5762816))

(declare-fun m!6709716 () Bool)

(assert (=> b!5762823 m!6709716))

(declare-fun m!6709718 () Bool)

(assert (=> d!1815632 m!6709718))

(assert (=> d!1815632 m!6709336))

(declare-fun m!6709720 () Bool)

(assert (=> d!1815632 m!6709720))

(assert (=> b!5762818 m!6709336))

(declare-fun m!6709722 () Bool)

(assert (=> b!5762818 m!6709722))

(declare-fun m!6709724 () Bool)

(assert (=> b!5762816 m!6709724))

(declare-fun m!6709726 () Bool)

(assert (=> b!5762820 m!6709726))

(declare-fun m!6709728 () Bool)

(assert (=> b!5762821 m!6709728))

(assert (=> b!5762814 m!6709336))

(declare-fun m!6709730 () Bool)

(assert (=> b!5762814 m!6709730))

(assert (=> b!5762817 m!6709336))

(declare-fun m!6709732 () Bool)

(assert (=> b!5762817 m!6709732))

(assert (=> b!5762817 m!6709732))

(declare-fun m!6709734 () Bool)

(assert (=> b!5762817 m!6709734))

(assert (=> b!5762146 d!1815632))

(declare-fun bs!1351612 () Bool)

(declare-fun d!1815634 () Bool)

(assert (= bs!1351612 (and d!1815634 d!1815582)))

(declare-fun lambda!312885 () Int)

(assert (=> bs!1351612 (= lambda!312885 lambda!312855)))

(declare-fun bs!1351613 () Bool)

(assert (= bs!1351613 (and d!1815634 d!1815630)))

(assert (=> bs!1351613 (= lambda!312885 lambda!312879)))

(declare-fun bs!1351614 () Bool)

(assert (= bs!1351614 (and d!1815634 d!1815632)))

(assert (=> bs!1351614 (= lambda!312885 lambda!312882)))

(declare-fun lt!2288913 () List!63618)

(assert (=> d!1815634 (forall!14891 lt!2288913 lambda!312885)))

(declare-fun e!3540826 () List!63618)

(assert (=> d!1815634 (= lt!2288913 e!3540826)))

(declare-fun c!1018596 () Bool)

(assert (=> d!1815634 (= c!1018596 ((_ is Cons!63495) zl!343))))

(assert (=> d!1815634 (= (unfocusZipperList!1201 zl!343) lt!2288913)))

(declare-fun b!5762828 () Bool)

(assert (=> b!5762828 (= e!3540826 (Cons!63494 (generalisedConcat!1388 (exprs!5657 (h!69943 zl!343))) (unfocusZipperList!1201 (t!376953 zl!343))))))

(declare-fun b!5762829 () Bool)

(assert (=> b!5762829 (= e!3540826 Nil!63494)))

(assert (= (and d!1815634 c!1018596) b!5762828))

(assert (= (and d!1815634 (not c!1018596)) b!5762829))

(declare-fun m!6709736 () Bool)

(assert (=> d!1815634 m!6709736))

(assert (=> b!5762828 m!6709310))

(declare-fun m!6709738 () Bool)

(assert (=> b!5762828 m!6709738))

(assert (=> b!5762146 d!1815634))

(declare-fun bs!1351615 () Bool)

(declare-fun b!5762833 () Bool)

(assert (= bs!1351615 (and b!5762833 b!5762745)))

(declare-fun lambda!312886 () Int)

(assert (=> bs!1351615 (= (and (= (reg!16102 r!7292) (reg!16102 (regTwo!32058 r!7292))) (= r!7292 (regTwo!32058 r!7292))) (= lambda!312886 lambda!312875))))

(declare-fun bs!1351616 () Bool)

(assert (= bs!1351616 (and b!5762833 d!1815544)))

(assert (=> bs!1351616 (not (= lambda!312886 lambda!312848))))

(declare-fun bs!1351617 () Bool)

(assert (= bs!1351617 (and b!5762833 b!5762161)))

(assert (=> bs!1351617 (not (= lambda!312886 lambda!312820))))

(declare-fun bs!1351618 () Bool)

(assert (= bs!1351618 (and b!5762833 d!1815532)))

(assert (=> bs!1351618 (not (= lambda!312886 lambda!312835))))

(declare-fun bs!1351619 () Bool)

(assert (= bs!1351619 (and b!5762833 b!5762625)))

(assert (=> bs!1351619 (not (= lambda!312886 lambda!312867))))

(declare-fun bs!1351620 () Bool)

(assert (= bs!1351620 (and b!5762833 b!5762744)))

(assert (=> bs!1351620 (not (= lambda!312886 lambda!312876))))

(assert (=> bs!1351617 (not (= lambda!312886 lambda!312819))))

(assert (=> bs!1351616 (not (= lambda!312886 lambda!312847))))

(declare-fun bs!1351621 () Bool)

(assert (= bs!1351621 (and b!5762833 b!5762626)))

(assert (=> bs!1351621 (= (and (= (reg!16102 r!7292) (reg!16102 (regOne!32058 r!7292))) (= r!7292 (regOne!32058 r!7292))) (= lambda!312886 lambda!312864))))

(assert (=> b!5762833 true))

(assert (=> b!5762833 true))

(declare-fun bs!1351622 () Bool)

(declare-fun b!5762832 () Bool)

(assert (= bs!1351622 (and b!5762832 b!5762833)))

(declare-fun lambda!312887 () Int)

(assert (=> bs!1351622 (not (= lambda!312887 lambda!312886))))

(declare-fun bs!1351623 () Bool)

(assert (= bs!1351623 (and b!5762832 b!5762745)))

(assert (=> bs!1351623 (not (= lambda!312887 lambda!312875))))

(declare-fun bs!1351624 () Bool)

(assert (= bs!1351624 (and b!5762832 d!1815544)))

(assert (=> bs!1351624 (= lambda!312887 lambda!312848)))

(declare-fun bs!1351625 () Bool)

(assert (= bs!1351625 (and b!5762832 b!5762161)))

(assert (=> bs!1351625 (= lambda!312887 lambda!312820)))

(declare-fun bs!1351626 () Bool)

(assert (= bs!1351626 (and b!5762832 d!1815532)))

(assert (=> bs!1351626 (not (= lambda!312887 lambda!312835))))

(declare-fun bs!1351627 () Bool)

(assert (= bs!1351627 (and b!5762832 b!5762625)))

(assert (=> bs!1351627 (= (and (= (regOne!32058 r!7292) (regOne!32058 (regOne!32058 r!7292))) (= (regTwo!32058 r!7292) (regTwo!32058 (regOne!32058 r!7292)))) (= lambda!312887 lambda!312867))))

(declare-fun bs!1351628 () Bool)

(assert (= bs!1351628 (and b!5762832 b!5762744)))

(assert (=> bs!1351628 (= (and (= (regOne!32058 r!7292) (regOne!32058 (regTwo!32058 r!7292))) (= (regTwo!32058 r!7292) (regTwo!32058 (regTwo!32058 r!7292)))) (= lambda!312887 lambda!312876))))

(assert (=> bs!1351625 (not (= lambda!312887 lambda!312819))))

(assert (=> bs!1351624 (not (= lambda!312887 lambda!312847))))

(declare-fun bs!1351629 () Bool)

(assert (= bs!1351629 (and b!5762832 b!5762626)))

(assert (=> bs!1351629 (not (= lambda!312887 lambda!312864))))

(assert (=> b!5762832 true))

(assert (=> b!5762832 true))

(declare-fun b!5762830 () Bool)

(declare-fun e!3540828 () Bool)

(assert (=> b!5762830 (= e!3540828 (matchRSpec!2876 (regTwo!32059 r!7292) s!2326))))

(declare-fun c!1018598 () Bool)

(declare-fun call!442459 () Bool)

(declare-fun bm!442454 () Bool)

(assert (=> bm!442454 (= call!442459 (Exists!2873 (ite c!1018598 lambda!312886 lambda!312887)))))

(declare-fun e!3540829 () Bool)

(assert (=> b!5762832 (= e!3540829 call!442459)))

(declare-fun e!3540830 () Bool)

(assert (=> b!5762833 (= e!3540830 call!442459)))

(declare-fun b!5762834 () Bool)

(declare-fun e!3540833 () Bool)

(declare-fun call!442460 () Bool)

(assert (=> b!5762834 (= e!3540833 call!442460)))

(declare-fun b!5762835 () Bool)

(declare-fun e!3540832 () Bool)

(assert (=> b!5762835 (= e!3540832 e!3540829)))

(assert (=> b!5762835 (= c!1018598 ((_ is Star!15773) r!7292))))

(declare-fun b!5762836 () Bool)

(declare-fun c!1018600 () Bool)

(assert (=> b!5762836 (= c!1018600 ((_ is ElementMatch!15773) r!7292))))

(declare-fun e!3540827 () Bool)

(declare-fun e!3540831 () Bool)

(assert (=> b!5762836 (= e!3540827 e!3540831)))

(declare-fun bm!442455 () Bool)

(assert (=> bm!442455 (= call!442460 (isEmpty!35384 s!2326))))

(declare-fun d!1815636 () Bool)

(declare-fun c!1018597 () Bool)

(assert (=> d!1815636 (= c!1018597 ((_ is EmptyExpr!15773) r!7292))))

(assert (=> d!1815636 (= (matchRSpec!2876 r!7292 s!2326) e!3540833)))

(declare-fun b!5762831 () Bool)

(declare-fun res!2432194 () Bool)

(assert (=> b!5762831 (=> res!2432194 e!3540830)))

(assert (=> b!5762831 (= res!2432194 call!442460)))

(assert (=> b!5762831 (= e!3540829 e!3540830)))

(declare-fun b!5762837 () Bool)

(assert (=> b!5762837 (= e!3540833 e!3540827)))

(declare-fun res!2432195 () Bool)

(assert (=> b!5762837 (= res!2432195 (not ((_ is EmptyLang!15773) r!7292)))))

(assert (=> b!5762837 (=> (not res!2432195) (not e!3540827))))

(declare-fun b!5762838 () Bool)

(assert (=> b!5762838 (= e!3540831 (= s!2326 (Cons!63496 (c!1018419 r!7292) Nil!63496)))))

(declare-fun b!5762839 () Bool)

(assert (=> b!5762839 (= e!3540832 e!3540828)))

(declare-fun res!2432196 () Bool)

(assert (=> b!5762839 (= res!2432196 (matchRSpec!2876 (regOne!32059 r!7292) s!2326))))

(assert (=> b!5762839 (=> res!2432196 e!3540828)))

(declare-fun b!5762840 () Bool)

(declare-fun c!1018599 () Bool)

(assert (=> b!5762840 (= c!1018599 ((_ is Union!15773) r!7292))))

(assert (=> b!5762840 (= e!3540831 e!3540832)))

(assert (= (and d!1815636 c!1018597) b!5762834))

(assert (= (and d!1815636 (not c!1018597)) b!5762837))

(assert (= (and b!5762837 res!2432195) b!5762836))

(assert (= (and b!5762836 c!1018600) b!5762838))

(assert (= (and b!5762836 (not c!1018600)) b!5762840))

(assert (= (and b!5762840 c!1018599) b!5762839))

(assert (= (and b!5762840 (not c!1018599)) b!5762835))

(assert (= (and b!5762839 (not res!2432196)) b!5762830))

(assert (= (and b!5762835 c!1018598) b!5762831))

(assert (= (and b!5762835 (not c!1018598)) b!5762832))

(assert (= (and b!5762831 (not res!2432194)) b!5762833))

(assert (= (or b!5762833 b!5762832) bm!442454))

(assert (= (or b!5762834 b!5762831) bm!442455))

(declare-fun m!6709740 () Bool)

(assert (=> b!5762830 m!6709740))

(declare-fun m!6709742 () Bool)

(assert (=> bm!442454 m!6709742))

(assert (=> bm!442455 m!6709662))

(declare-fun m!6709744 () Bool)

(assert (=> b!5762839 m!6709744))

(assert (=> b!5762166 d!1815636))

(declare-fun b!5762841 () Bool)

(declare-fun e!3540834 () Bool)

(assert (=> b!5762841 (= e!3540834 (not (= (head!12182 s!2326) (c!1018419 r!7292))))))

(declare-fun b!5762842 () Bool)

(declare-fun res!2432204 () Bool)

(declare-fun e!3540838 () Bool)

(assert (=> b!5762842 (=> res!2432204 e!3540838)))

(declare-fun e!3540835 () Bool)

(assert (=> b!5762842 (= res!2432204 e!3540835)))

(declare-fun res!2432203 () Bool)

(assert (=> b!5762842 (=> (not res!2432203) (not e!3540835))))

(declare-fun lt!2288914 () Bool)

(assert (=> b!5762842 (= res!2432203 lt!2288914)))

(declare-fun b!5762843 () Bool)

(assert (=> b!5762843 (= e!3540835 (= (head!12182 s!2326) (c!1018419 r!7292)))))

(declare-fun b!5762844 () Bool)

(declare-fun e!3540836 () Bool)

(assert (=> b!5762844 (= e!3540836 (not lt!2288914))))

(declare-fun b!5762845 () Bool)

(declare-fun e!3540837 () Bool)

(assert (=> b!5762845 (= e!3540837 e!3540836)))

(declare-fun c!1018603 () Bool)

(assert (=> b!5762845 (= c!1018603 ((_ is EmptyLang!15773) r!7292))))

(declare-fun b!5762846 () Bool)

(declare-fun e!3540839 () Bool)

(assert (=> b!5762846 (= e!3540839 e!3540834)))

(declare-fun res!2432197 () Bool)

(assert (=> b!5762846 (=> res!2432197 e!3540834)))

(declare-fun call!442461 () Bool)

(assert (=> b!5762846 (= res!2432197 call!442461)))

(declare-fun b!5762847 () Bool)

(declare-fun res!2432202 () Bool)

(assert (=> b!5762847 (=> res!2432202 e!3540834)))

(assert (=> b!5762847 (= res!2432202 (not (isEmpty!35384 (tail!11277 s!2326))))))

(declare-fun bm!442456 () Bool)

(assert (=> bm!442456 (= call!442461 (isEmpty!35384 s!2326))))

(declare-fun b!5762849 () Bool)

(assert (=> b!5762849 (= e!3540837 (= lt!2288914 call!442461))))

(declare-fun b!5762850 () Bool)

(assert (=> b!5762850 (= e!3540838 e!3540839)))

(declare-fun res!2432201 () Bool)

(assert (=> b!5762850 (=> (not res!2432201) (not e!3540839))))

(assert (=> b!5762850 (= res!2432201 (not lt!2288914))))

(declare-fun b!5762851 () Bool)

(declare-fun e!3540840 () Bool)

(assert (=> b!5762851 (= e!3540840 (nullable!5805 r!7292))))

(declare-fun b!5762852 () Bool)

(declare-fun res!2432199 () Bool)

(assert (=> b!5762852 (=> (not res!2432199) (not e!3540835))))

(assert (=> b!5762852 (= res!2432199 (not call!442461))))

(declare-fun d!1815638 () Bool)

(assert (=> d!1815638 e!3540837))

(declare-fun c!1018601 () Bool)

(assert (=> d!1815638 (= c!1018601 ((_ is EmptyExpr!15773) r!7292))))

(assert (=> d!1815638 (= lt!2288914 e!3540840)))

(declare-fun c!1018602 () Bool)

(assert (=> d!1815638 (= c!1018602 (isEmpty!35384 s!2326))))

(assert (=> d!1815638 (validRegex!7509 r!7292)))

(assert (=> d!1815638 (= (matchR!7958 r!7292 s!2326) lt!2288914)))

(declare-fun b!5762848 () Bool)

(declare-fun res!2432198 () Bool)

(assert (=> b!5762848 (=> res!2432198 e!3540838)))

(assert (=> b!5762848 (= res!2432198 (not ((_ is ElementMatch!15773) r!7292)))))

(assert (=> b!5762848 (= e!3540836 e!3540838)))

(declare-fun b!5762853 () Bool)

(declare-fun res!2432200 () Bool)

(assert (=> b!5762853 (=> (not res!2432200) (not e!3540835))))

(assert (=> b!5762853 (= res!2432200 (isEmpty!35384 (tail!11277 s!2326)))))

(declare-fun b!5762854 () Bool)

(assert (=> b!5762854 (= e!3540840 (matchR!7958 (derivativeStep!4554 r!7292 (head!12182 s!2326)) (tail!11277 s!2326)))))

(assert (= (and d!1815638 c!1018602) b!5762851))

(assert (= (and d!1815638 (not c!1018602)) b!5762854))

(assert (= (and d!1815638 c!1018601) b!5762849))

(assert (= (and d!1815638 (not c!1018601)) b!5762845))

(assert (= (and b!5762845 c!1018603) b!5762844))

(assert (= (and b!5762845 (not c!1018603)) b!5762848))

(assert (= (and b!5762848 (not res!2432198)) b!5762842))

(assert (= (and b!5762842 res!2432203) b!5762852))

(assert (= (and b!5762852 res!2432199) b!5762853))

(assert (= (and b!5762853 res!2432200) b!5762843))

(assert (= (and b!5762842 (not res!2432204)) b!5762850))

(assert (= (and b!5762850 res!2432201) b!5762846))

(assert (= (and b!5762846 (not res!2432197)) b!5762847))

(assert (= (and b!5762847 (not res!2432202)) b!5762841))

(assert (= (or b!5762849 b!5762852 b!5762846) bm!442456))

(assert (=> b!5762853 m!6709680))

(assert (=> b!5762853 m!6709680))

(assert (=> b!5762853 m!6709682))

(assert (=> b!5762843 m!6709684))

(assert (=> bm!442456 m!6709662))

(assert (=> b!5762847 m!6709680))

(assert (=> b!5762847 m!6709680))

(assert (=> b!5762847 m!6709682))

(assert (=> b!5762854 m!6709684))

(assert (=> b!5762854 m!6709684))

(declare-fun m!6709746 () Bool)

(assert (=> b!5762854 m!6709746))

(assert (=> b!5762854 m!6709680))

(assert (=> b!5762854 m!6709746))

(assert (=> b!5762854 m!6709680))

(declare-fun m!6709748 () Bool)

(assert (=> b!5762854 m!6709748))

(declare-fun m!6709750 () Bool)

(assert (=> b!5762851 m!6709750))

(assert (=> b!5762841 m!6709684))

(assert (=> d!1815638 m!6709662))

(assert (=> d!1815638 m!6709308))

(assert (=> b!5762166 d!1815638))

(declare-fun d!1815640 () Bool)

(assert (=> d!1815640 (= (matchR!7958 r!7292 s!2326) (matchRSpec!2876 r!7292 s!2326))))

(declare-fun lt!2288915 () Unit!156624)

(assert (=> d!1815640 (= lt!2288915 (choose!43692 r!7292 s!2326))))

(assert (=> d!1815640 (validRegex!7509 r!7292)))

(assert (=> d!1815640 (= (mainMatchTheorem!2876 r!7292 s!2326) lt!2288915)))

(declare-fun bs!1351630 () Bool)

(assert (= bs!1351630 d!1815640))

(assert (=> bs!1351630 m!6709332))

(assert (=> bs!1351630 m!6709330))

(declare-fun m!6709752 () Bool)

(assert (=> bs!1351630 m!6709752))

(assert (=> bs!1351630 m!6709308))

(assert (=> b!5762166 d!1815640))

(declare-fun d!1815642 () Bool)

(assert (=> d!1815642 (= (isEmpty!35382 (t!376953 zl!343)) ((_ is Nil!63495) (t!376953 zl!343)))))

(assert (=> b!5762155 d!1815642))

(declare-fun bs!1351631 () Bool)

(declare-fun d!1815644 () Bool)

(assert (= bs!1351631 (and d!1815644 d!1815582)))

(declare-fun lambda!312888 () Int)

(assert (=> bs!1351631 (= lambda!312888 lambda!312855)))

(declare-fun bs!1351632 () Bool)

(assert (= bs!1351632 (and d!1815644 d!1815630)))

(assert (=> bs!1351632 (= lambda!312888 lambda!312879)))

(declare-fun bs!1351633 () Bool)

(assert (= bs!1351633 (and d!1815644 d!1815632)))

(assert (=> bs!1351633 (= lambda!312888 lambda!312882)))

(declare-fun bs!1351634 () Bool)

(assert (= bs!1351634 (and d!1815644 d!1815634)))

(assert (=> bs!1351634 (= lambda!312888 lambda!312885)))

(assert (=> d!1815644 (= (inv!82679 setElem!38695) (forall!14891 (exprs!5657 setElem!38695) lambda!312888))))

(declare-fun bs!1351635 () Bool)

(assert (= bs!1351635 d!1815644))

(declare-fun m!6709754 () Bool)

(assert (=> bs!1351635 m!6709754))

(assert (=> setNonEmpty!38695 d!1815644))

(declare-fun d!1815646 () Bool)

(declare-fun dynLambda!24855 (Int Context!10314) (InoxSet Context!10314))

(assert (=> d!1815646 (= (flatMap!1386 z!1189 lambda!312821) (dynLambda!24855 lambda!312821 (h!69943 zl!343)))))

(declare-fun lt!2288918 () Unit!156624)

(declare-fun choose!43696 ((InoxSet Context!10314) Context!10314 Int) Unit!156624)

(assert (=> d!1815646 (= lt!2288918 (choose!43696 z!1189 (h!69943 zl!343) lambda!312821))))

(assert (=> d!1815646 (= z!1189 (store ((as const (Array Context!10314 Bool)) false) (h!69943 zl!343) true))))

(assert (=> d!1815646 (= (lemmaFlatMapOnSingletonSet!918 z!1189 (h!69943 zl!343) lambda!312821) lt!2288918)))

(declare-fun b_lambda!217575 () Bool)

(assert (=> (not b_lambda!217575) (not d!1815646)))

(declare-fun bs!1351636 () Bool)

(assert (= bs!1351636 d!1815646))

(assert (=> bs!1351636 m!6709288))

(declare-fun m!6709756 () Bool)

(assert (=> bs!1351636 m!6709756))

(declare-fun m!6709758 () Bool)

(assert (=> bs!1351636 m!6709758))

(declare-fun m!6709760 () Bool)

(assert (=> bs!1351636 m!6709760))

(assert (=> b!5762171 d!1815646))

(declare-fun d!1815648 () Bool)

(assert (=> d!1815648 (= (nullable!5805 (h!69942 (exprs!5657 (h!69943 zl!343)))) (nullableFct!1845 (h!69942 (exprs!5657 (h!69943 zl!343)))))))

(declare-fun bs!1351637 () Bool)

(assert (= bs!1351637 d!1815648))

(declare-fun m!6709762 () Bool)

(assert (=> bs!1351637 m!6709762))

(assert (=> b!5762171 d!1815648))

(declare-fun d!1815650 () Bool)

(declare-fun c!1018608 () Bool)

(declare-fun e!3540849 () Bool)

(assert (=> d!1815650 (= c!1018608 e!3540849)))

(declare-fun res!2432207 () Bool)

(assert (=> d!1815650 (=> (not res!2432207) (not e!3540849))))

(assert (=> d!1815650 (= res!2432207 ((_ is Cons!63494) (exprs!5657 (Context!10315 (Cons!63494 (h!69942 (exprs!5657 (h!69943 zl!343))) (t!376952 (exprs!5657 (h!69943 zl!343))))))))))

(declare-fun e!3540848 () (InoxSet Context!10314))

(assert (=> d!1815650 (= (derivationStepZipperUp!1041 (Context!10315 (Cons!63494 (h!69942 (exprs!5657 (h!69943 zl!343))) (t!376952 (exprs!5657 (h!69943 zl!343))))) (h!69944 s!2326)) e!3540848)))

(declare-fun b!5762865 () Bool)

(assert (=> b!5762865 (= e!3540849 (nullable!5805 (h!69942 (exprs!5657 (Context!10315 (Cons!63494 (h!69942 (exprs!5657 (h!69943 zl!343))) (t!376952 (exprs!5657 (h!69943 zl!343)))))))))))

(declare-fun bm!442459 () Bool)

(declare-fun call!442464 () (InoxSet Context!10314))

(assert (=> bm!442459 (= call!442464 (derivationStepZipperDown!1115 (h!69942 (exprs!5657 (Context!10315 (Cons!63494 (h!69942 (exprs!5657 (h!69943 zl!343))) (t!376952 (exprs!5657 (h!69943 zl!343))))))) (Context!10315 (t!376952 (exprs!5657 (Context!10315 (Cons!63494 (h!69942 (exprs!5657 (h!69943 zl!343))) (t!376952 (exprs!5657 (h!69943 zl!343)))))))) (h!69944 s!2326)))))

(declare-fun b!5762866 () Bool)

(assert (=> b!5762866 (= e!3540848 ((_ map or) call!442464 (derivationStepZipperUp!1041 (Context!10315 (t!376952 (exprs!5657 (Context!10315 (Cons!63494 (h!69942 (exprs!5657 (h!69943 zl!343))) (t!376952 (exprs!5657 (h!69943 zl!343)))))))) (h!69944 s!2326))))))

(declare-fun b!5762867 () Bool)

(declare-fun e!3540847 () (InoxSet Context!10314))

(assert (=> b!5762867 (= e!3540847 call!442464)))

(declare-fun b!5762868 () Bool)

(assert (=> b!5762868 (= e!3540847 ((as const (Array Context!10314 Bool)) false))))

(declare-fun b!5762869 () Bool)

(assert (=> b!5762869 (= e!3540848 e!3540847)))

(declare-fun c!1018609 () Bool)

(assert (=> b!5762869 (= c!1018609 ((_ is Cons!63494) (exprs!5657 (Context!10315 (Cons!63494 (h!69942 (exprs!5657 (h!69943 zl!343))) (t!376952 (exprs!5657 (h!69943 zl!343))))))))))

(assert (= (and d!1815650 res!2432207) b!5762865))

(assert (= (and d!1815650 c!1018608) b!5762866))

(assert (= (and d!1815650 (not c!1018608)) b!5762869))

(assert (= (and b!5762869 c!1018609) b!5762867))

(assert (= (and b!5762869 (not c!1018609)) b!5762868))

(assert (= (or b!5762866 b!5762867) bm!442459))

(declare-fun m!6709764 () Bool)

(assert (=> b!5762865 m!6709764))

(declare-fun m!6709766 () Bool)

(assert (=> bm!442459 m!6709766))

(declare-fun m!6709768 () Bool)

(assert (=> b!5762866 m!6709768))

(assert (=> b!5762171 d!1815650))

(declare-fun d!1815652 () Bool)

(declare-fun choose!43697 ((InoxSet Context!10314) Int) (InoxSet Context!10314))

(assert (=> d!1815652 (= (flatMap!1386 z!1189 lambda!312821) (choose!43697 z!1189 lambda!312821))))

(declare-fun bs!1351638 () Bool)

(assert (= bs!1351638 d!1815652))

(declare-fun m!6709770 () Bool)

(assert (=> bs!1351638 m!6709770))

(assert (=> b!5762171 d!1815652))

(declare-fun d!1815654 () Bool)

(declare-fun c!1018610 () Bool)

(declare-fun e!3540852 () Bool)

(assert (=> d!1815654 (= c!1018610 e!3540852)))

(declare-fun res!2432208 () Bool)

(assert (=> d!1815654 (=> (not res!2432208) (not e!3540852))))

(assert (=> d!1815654 (= res!2432208 ((_ is Cons!63494) (exprs!5657 (h!69943 zl!343))))))

(declare-fun e!3540851 () (InoxSet Context!10314))

(assert (=> d!1815654 (= (derivationStepZipperUp!1041 (h!69943 zl!343) (h!69944 s!2326)) e!3540851)))

(declare-fun b!5762870 () Bool)

(assert (=> b!5762870 (= e!3540852 (nullable!5805 (h!69942 (exprs!5657 (h!69943 zl!343)))))))

(declare-fun bm!442460 () Bool)

(declare-fun call!442465 () (InoxSet Context!10314))

(assert (=> bm!442460 (= call!442465 (derivationStepZipperDown!1115 (h!69942 (exprs!5657 (h!69943 zl!343))) (Context!10315 (t!376952 (exprs!5657 (h!69943 zl!343)))) (h!69944 s!2326)))))

(declare-fun b!5762871 () Bool)

(assert (=> b!5762871 (= e!3540851 ((_ map or) call!442465 (derivationStepZipperUp!1041 (Context!10315 (t!376952 (exprs!5657 (h!69943 zl!343)))) (h!69944 s!2326))))))

(declare-fun b!5762872 () Bool)

(declare-fun e!3540850 () (InoxSet Context!10314))

(assert (=> b!5762872 (= e!3540850 call!442465)))

(declare-fun b!5762873 () Bool)

(assert (=> b!5762873 (= e!3540850 ((as const (Array Context!10314 Bool)) false))))

(declare-fun b!5762874 () Bool)

(assert (=> b!5762874 (= e!3540851 e!3540850)))

(declare-fun c!1018611 () Bool)

(assert (=> b!5762874 (= c!1018611 ((_ is Cons!63494) (exprs!5657 (h!69943 zl!343))))))

(assert (= (and d!1815654 res!2432208) b!5762870))

(assert (= (and d!1815654 c!1018610) b!5762871))

(assert (= (and d!1815654 (not c!1018610)) b!5762874))

(assert (= (and b!5762874 c!1018611) b!5762872))

(assert (= (and b!5762874 (not c!1018611)) b!5762873))

(assert (= (or b!5762871 b!5762872) bm!442460))

(assert (=> b!5762870 m!6709290))

(declare-fun m!6709772 () Bool)

(assert (=> bm!442460 m!6709772))

(declare-fun m!6709774 () Bool)

(assert (=> b!5762871 m!6709774))

(assert (=> b!5762171 d!1815654))

(declare-fun d!1815656 () Bool)

(declare-fun c!1018612 () Bool)

(declare-fun e!3540855 () Bool)

(assert (=> d!1815656 (= c!1018612 e!3540855)))

(declare-fun res!2432209 () Bool)

(assert (=> d!1815656 (=> (not res!2432209) (not e!3540855))))

(assert (=> d!1815656 (= res!2432209 ((_ is Cons!63494) (exprs!5657 lt!2288821)))))

(declare-fun e!3540854 () (InoxSet Context!10314))

(assert (=> d!1815656 (= (derivationStepZipperUp!1041 lt!2288821 (h!69944 s!2326)) e!3540854)))

(declare-fun b!5762875 () Bool)

(assert (=> b!5762875 (= e!3540855 (nullable!5805 (h!69942 (exprs!5657 lt!2288821))))))

(declare-fun bm!442461 () Bool)

(declare-fun call!442466 () (InoxSet Context!10314))

(assert (=> bm!442461 (= call!442466 (derivationStepZipperDown!1115 (h!69942 (exprs!5657 lt!2288821)) (Context!10315 (t!376952 (exprs!5657 lt!2288821))) (h!69944 s!2326)))))

(declare-fun b!5762876 () Bool)

(assert (=> b!5762876 (= e!3540854 ((_ map or) call!442466 (derivationStepZipperUp!1041 (Context!10315 (t!376952 (exprs!5657 lt!2288821))) (h!69944 s!2326))))))

(declare-fun b!5762877 () Bool)

(declare-fun e!3540853 () (InoxSet Context!10314))

(assert (=> b!5762877 (= e!3540853 call!442466)))

(declare-fun b!5762878 () Bool)

(assert (=> b!5762878 (= e!3540853 ((as const (Array Context!10314 Bool)) false))))

(declare-fun b!5762879 () Bool)

(assert (=> b!5762879 (= e!3540854 e!3540853)))

(declare-fun c!1018613 () Bool)

(assert (=> b!5762879 (= c!1018613 ((_ is Cons!63494) (exprs!5657 lt!2288821)))))

(assert (= (and d!1815656 res!2432209) b!5762875))

(assert (= (and d!1815656 c!1018612) b!5762876))

(assert (= (and d!1815656 (not c!1018612)) b!5762879))

(assert (= (and b!5762879 c!1018613) b!5762877))

(assert (= (and b!5762879 (not c!1018613)) b!5762878))

(assert (= (or b!5762876 b!5762877) bm!442461))

(declare-fun m!6709776 () Bool)

(assert (=> b!5762875 m!6709776))

(declare-fun m!6709778 () Bool)

(assert (=> bm!442461 m!6709778))

(declare-fun m!6709780 () Bool)

(assert (=> b!5762876 m!6709780))

(assert (=> b!5762171 d!1815656))

(declare-fun bm!442474 () Bool)

(declare-fun call!442482 () (InoxSet Context!10314))

(declare-fun call!442479 () (InoxSet Context!10314))

(assert (=> bm!442474 (= call!442482 call!442479)))

(declare-fun b!5762902 () Bool)

(declare-fun c!1018628 () Bool)

(declare-fun e!3540871 () Bool)

(assert (=> b!5762902 (= c!1018628 e!3540871)))

(declare-fun res!2432212 () Bool)

(assert (=> b!5762902 (=> (not res!2432212) (not e!3540871))))

(assert (=> b!5762902 (= res!2432212 ((_ is Concat!24618) (h!69942 (exprs!5657 (h!69943 zl!343)))))))

(declare-fun e!3540873 () (InoxSet Context!10314))

(declare-fun e!3540870 () (InoxSet Context!10314))

(assert (=> b!5762902 (= e!3540873 e!3540870)))

(declare-fun b!5762903 () Bool)

(declare-fun e!3540869 () (InoxSet Context!10314))

(assert (=> b!5762903 (= e!3540870 e!3540869)))

(declare-fun c!1018627 () Bool)

(assert (=> b!5762903 (= c!1018627 ((_ is Concat!24618) (h!69942 (exprs!5657 (h!69943 zl!343)))))))

(declare-fun call!442481 () List!63618)

(declare-fun bm!442475 () Bool)

(declare-fun $colon$colon!1768 (List!63618 Regex!15773) List!63618)

(assert (=> bm!442475 (= call!442481 ($colon$colon!1768 (exprs!5657 lt!2288821) (ite (or c!1018628 c!1018627) (regTwo!32058 (h!69942 (exprs!5657 (h!69943 zl!343)))) (h!69942 (exprs!5657 (h!69943 zl!343))))))))

(declare-fun b!5762904 () Bool)

(declare-fun e!3540872 () (InoxSet Context!10314))

(assert (=> b!5762904 (= e!3540872 call!442482)))

(declare-fun b!5762906 () Bool)

(declare-fun call!442483 () (InoxSet Context!10314))

(assert (=> b!5762906 (= e!3540870 ((_ map or) call!442483 call!442479))))

(declare-fun b!5762907 () Bool)

(assert (=> b!5762907 (= e!3540872 ((as const (Array Context!10314 Bool)) false))))

(declare-fun b!5762908 () Bool)

(declare-fun e!3540868 () (InoxSet Context!10314))

(assert (=> b!5762908 (= e!3540868 (store ((as const (Array Context!10314 Bool)) false) lt!2288821 true))))

(declare-fun b!5762909 () Bool)

(declare-fun c!1018625 () Bool)

(assert (=> b!5762909 (= c!1018625 ((_ is Star!15773) (h!69942 (exprs!5657 (h!69943 zl!343)))))))

(assert (=> b!5762909 (= e!3540869 e!3540872)))

(declare-fun b!5762910 () Bool)

(assert (=> b!5762910 (= e!3540871 (nullable!5805 (regOne!32058 (h!69942 (exprs!5657 (h!69943 zl!343))))))))

(declare-fun d!1815658 () Bool)

(declare-fun c!1018624 () Bool)

(assert (=> d!1815658 (= c!1018624 (and ((_ is ElementMatch!15773) (h!69942 (exprs!5657 (h!69943 zl!343)))) (= (c!1018419 (h!69942 (exprs!5657 (h!69943 zl!343)))) (h!69944 s!2326))))))

(assert (=> d!1815658 (= (derivationStepZipperDown!1115 (h!69942 (exprs!5657 (h!69943 zl!343))) lt!2288821 (h!69944 s!2326)) e!3540868)))

(declare-fun b!5762905 () Bool)

(assert (=> b!5762905 (= e!3540868 e!3540873)))

(declare-fun c!1018626 () Bool)

(assert (=> b!5762905 (= c!1018626 ((_ is Union!15773) (h!69942 (exprs!5657 (h!69943 zl!343)))))))

(declare-fun bm!442476 () Bool)

(assert (=> bm!442476 (= call!442483 (derivationStepZipperDown!1115 (ite c!1018626 (regOne!32059 (h!69942 (exprs!5657 (h!69943 zl!343)))) (regOne!32058 (h!69942 (exprs!5657 (h!69943 zl!343))))) (ite c!1018626 lt!2288821 (Context!10315 call!442481)) (h!69944 s!2326)))))

(declare-fun b!5762911 () Bool)

(assert (=> b!5762911 (= e!3540869 call!442482)))

(declare-fun b!5762912 () Bool)

(declare-fun call!442480 () (InoxSet Context!10314))

(assert (=> b!5762912 (= e!3540873 ((_ map or) call!442483 call!442480))))

(declare-fun bm!442477 () Bool)

(assert (=> bm!442477 (= call!442479 call!442480)))

(declare-fun call!442484 () List!63618)

(declare-fun bm!442478 () Bool)

(assert (=> bm!442478 (= call!442480 (derivationStepZipperDown!1115 (ite c!1018626 (regTwo!32059 (h!69942 (exprs!5657 (h!69943 zl!343)))) (ite c!1018628 (regTwo!32058 (h!69942 (exprs!5657 (h!69943 zl!343)))) (ite c!1018627 (regOne!32058 (h!69942 (exprs!5657 (h!69943 zl!343)))) (reg!16102 (h!69942 (exprs!5657 (h!69943 zl!343))))))) (ite (or c!1018626 c!1018628) lt!2288821 (Context!10315 call!442484)) (h!69944 s!2326)))))

(declare-fun bm!442479 () Bool)

(assert (=> bm!442479 (= call!442484 call!442481)))

(assert (= (and d!1815658 c!1018624) b!5762908))

(assert (= (and d!1815658 (not c!1018624)) b!5762905))

(assert (= (and b!5762905 c!1018626) b!5762912))

(assert (= (and b!5762905 (not c!1018626)) b!5762902))

(assert (= (and b!5762902 res!2432212) b!5762910))

(assert (= (and b!5762902 c!1018628) b!5762906))

(assert (= (and b!5762902 (not c!1018628)) b!5762903))

(assert (= (and b!5762903 c!1018627) b!5762911))

(assert (= (and b!5762903 (not c!1018627)) b!5762909))

(assert (= (and b!5762909 c!1018625) b!5762904))

(assert (= (and b!5762909 (not c!1018625)) b!5762907))

(assert (= (or b!5762911 b!5762904) bm!442479))

(assert (= (or b!5762911 b!5762904) bm!442474))

(assert (= (or b!5762906 bm!442479) bm!442475))

(assert (= (or b!5762906 bm!442474) bm!442477))

(assert (= (or b!5762912 bm!442477) bm!442478))

(assert (= (or b!5762912 b!5762906) bm!442476))

(declare-fun m!6709782 () Bool)

(assert (=> bm!442478 m!6709782))

(declare-fun m!6709784 () Bool)

(assert (=> b!5762910 m!6709784))

(declare-fun m!6709786 () Bool)

(assert (=> bm!442475 m!6709786))

(assert (=> b!5762908 m!6709360))

(declare-fun m!6709788 () Bool)

(assert (=> bm!442476 m!6709788))

(assert (=> b!5762171 d!1815658))

(declare-fun d!1815660 () Bool)

(declare-fun c!1018629 () Bool)

(assert (=> d!1815660 (= c!1018629 (isEmpty!35384 (t!376954 s!2326)))))

(declare-fun e!3540874 () Bool)

(assert (=> d!1815660 (= (matchZipper!1911 lt!2288810 (t!376954 s!2326)) e!3540874)))

(declare-fun b!5762913 () Bool)

(assert (=> b!5762913 (= e!3540874 (nullableZipper!1700 lt!2288810))))

(declare-fun b!5762914 () Bool)

(assert (=> b!5762914 (= e!3540874 (matchZipper!1911 (derivationStepZipper!1852 lt!2288810 (head!12182 (t!376954 s!2326))) (tail!11277 (t!376954 s!2326))))))

(assert (= (and d!1815660 c!1018629) b!5762913))

(assert (= (and d!1815660 (not c!1018629)) b!5762914))

(assert (=> d!1815660 m!6709364))

(declare-fun m!6709790 () Bool)

(assert (=> b!5762913 m!6709790))

(assert (=> b!5762914 m!6709368))

(assert (=> b!5762914 m!6709368))

(declare-fun m!6709792 () Bool)

(assert (=> b!5762914 m!6709792))

(assert (=> b!5762914 m!6709372))

(assert (=> b!5762914 m!6709792))

(assert (=> b!5762914 m!6709372))

(declare-fun m!6709794 () Bool)

(assert (=> b!5762914 m!6709794))

(assert (=> b!5762153 d!1815660))

(declare-fun bs!1351639 () Bool)

(declare-fun d!1815662 () Bool)

(assert (= bs!1351639 (and d!1815662 b!5762171)))

(declare-fun lambda!312891 () Int)

(assert (=> bs!1351639 (= lambda!312891 lambda!312821)))

(assert (=> d!1815662 true))

(assert (=> d!1815662 (= (derivationStepZipper!1852 lt!2288808 (h!69944 s!2326)) (flatMap!1386 lt!2288808 lambda!312891))))

(declare-fun bs!1351640 () Bool)

(assert (= bs!1351640 d!1815662))

(declare-fun m!6709796 () Bool)

(assert (=> bs!1351640 m!6709796))

(assert (=> b!5762173 d!1815662))

(declare-fun d!1815664 () Bool)

(assert (=> d!1815664 (= (flatMap!1386 lt!2288808 lambda!312821) (choose!43697 lt!2288808 lambda!312821))))

(declare-fun bs!1351641 () Bool)

(assert (= bs!1351641 d!1815664))

(declare-fun m!6709798 () Bool)

(assert (=> bs!1351641 m!6709798))

(assert (=> b!5762173 d!1815664))

(assert (=> b!5762173 d!1815656))

(declare-fun d!1815666 () Bool)

(assert (=> d!1815666 (= (flatMap!1386 lt!2288808 lambda!312821) (dynLambda!24855 lambda!312821 lt!2288821))))

(declare-fun lt!2288919 () Unit!156624)

(assert (=> d!1815666 (= lt!2288919 (choose!43696 lt!2288808 lt!2288821 lambda!312821))))

(assert (=> d!1815666 (= lt!2288808 (store ((as const (Array Context!10314 Bool)) false) lt!2288821 true))))

(assert (=> d!1815666 (= (lemmaFlatMapOnSingletonSet!918 lt!2288808 lt!2288821 lambda!312821) lt!2288919)))

(declare-fun b_lambda!217577 () Bool)

(assert (=> (not b_lambda!217577) (not d!1815666)))

(declare-fun bs!1351642 () Bool)

(assert (= bs!1351642 d!1815666))

(assert (=> bs!1351642 m!6709354))

(declare-fun m!6709800 () Bool)

(assert (=> bs!1351642 m!6709800))

(declare-fun m!6709802 () Bool)

(assert (=> bs!1351642 m!6709802))

(assert (=> bs!1351642 m!6709360))

(assert (=> b!5762173 d!1815666))

(declare-fun d!1815668 () Bool)

(declare-fun e!3540877 () Bool)

(assert (=> d!1815668 e!3540877))

(declare-fun res!2432215 () Bool)

(assert (=> d!1815668 (=> (not res!2432215) (not e!3540877))))

(declare-fun lt!2288922 () List!63619)

(declare-fun noDuplicate!1680 (List!63619) Bool)

(assert (=> d!1815668 (= res!2432215 (noDuplicate!1680 lt!2288922))))

(declare-fun choose!43698 ((InoxSet Context!10314)) List!63619)

(assert (=> d!1815668 (= lt!2288922 (choose!43698 z!1189))))

(assert (=> d!1815668 (= (toList!9557 z!1189) lt!2288922)))

(declare-fun b!5762919 () Bool)

(declare-fun content!11587 (List!63619) (InoxSet Context!10314))

(assert (=> b!5762919 (= e!3540877 (= (content!11587 lt!2288922) z!1189))))

(assert (= (and d!1815668 res!2432215) b!5762919))

(declare-fun m!6709804 () Bool)

(assert (=> d!1815668 m!6709804))

(declare-fun m!6709806 () Bool)

(assert (=> d!1815668 m!6709806))

(declare-fun m!6709808 () Bool)

(assert (=> b!5762919 m!6709808))

(assert (=> b!5762163 d!1815668))

(declare-fun b!5762924 () Bool)

(declare-fun e!3540880 () Bool)

(declare-fun tp!1592733 () Bool)

(declare-fun tp!1592734 () Bool)

(assert (=> b!5762924 (= e!3540880 (and tp!1592733 tp!1592734))))

(assert (=> b!5762165 (= tp!1592666 e!3540880)))

(assert (= (and b!5762165 ((_ is Cons!63494) (exprs!5657 (h!69943 zl!343)))) b!5762924))

(declare-fun b!5762936 () Bool)

(declare-fun e!3540883 () Bool)

(declare-fun tp!1592746 () Bool)

(declare-fun tp!1592748 () Bool)

(assert (=> b!5762936 (= e!3540883 (and tp!1592746 tp!1592748))))

(declare-fun b!5762937 () Bool)

(declare-fun tp!1592745 () Bool)

(assert (=> b!5762937 (= e!3540883 tp!1592745)))

(declare-fun b!5762938 () Bool)

(declare-fun tp!1592749 () Bool)

(declare-fun tp!1592747 () Bool)

(assert (=> b!5762938 (= e!3540883 (and tp!1592749 tp!1592747))))

(assert (=> b!5762164 (= tp!1592668 e!3540883)))

(declare-fun b!5762935 () Bool)

(assert (=> b!5762935 (= e!3540883 tp_is_empty!40799)))

(assert (= (and b!5762164 ((_ is ElementMatch!15773) (regOne!32058 r!7292))) b!5762935))

(assert (= (and b!5762164 ((_ is Concat!24618) (regOne!32058 r!7292))) b!5762936))

(assert (= (and b!5762164 ((_ is Star!15773) (regOne!32058 r!7292))) b!5762937))

(assert (= (and b!5762164 ((_ is Union!15773) (regOne!32058 r!7292))) b!5762938))

(declare-fun b!5762940 () Bool)

(declare-fun e!3540884 () Bool)

(declare-fun tp!1592751 () Bool)

(declare-fun tp!1592753 () Bool)

(assert (=> b!5762940 (= e!3540884 (and tp!1592751 tp!1592753))))

(declare-fun b!5762941 () Bool)

(declare-fun tp!1592750 () Bool)

(assert (=> b!5762941 (= e!3540884 tp!1592750)))

(declare-fun b!5762942 () Bool)

(declare-fun tp!1592754 () Bool)

(declare-fun tp!1592752 () Bool)

(assert (=> b!5762942 (= e!3540884 (and tp!1592754 tp!1592752))))

(assert (=> b!5762164 (= tp!1592664 e!3540884)))

(declare-fun b!5762939 () Bool)

(assert (=> b!5762939 (= e!3540884 tp_is_empty!40799)))

(assert (= (and b!5762164 ((_ is ElementMatch!15773) (regTwo!32058 r!7292))) b!5762939))

(assert (= (and b!5762164 ((_ is Concat!24618) (regTwo!32058 r!7292))) b!5762940))

(assert (= (and b!5762164 ((_ is Star!15773) (regTwo!32058 r!7292))) b!5762941))

(assert (= (and b!5762164 ((_ is Union!15773) (regTwo!32058 r!7292))) b!5762942))

(declare-fun b!5762944 () Bool)

(declare-fun e!3540885 () Bool)

(declare-fun tp!1592756 () Bool)

(declare-fun tp!1592758 () Bool)

(assert (=> b!5762944 (= e!3540885 (and tp!1592756 tp!1592758))))

(declare-fun b!5762945 () Bool)

(declare-fun tp!1592755 () Bool)

(assert (=> b!5762945 (= e!3540885 tp!1592755)))

(declare-fun b!5762946 () Bool)

(declare-fun tp!1592759 () Bool)

(declare-fun tp!1592757 () Bool)

(assert (=> b!5762946 (= e!3540885 (and tp!1592759 tp!1592757))))

(assert (=> b!5762172 (= tp!1592667 e!3540885)))

(declare-fun b!5762943 () Bool)

(assert (=> b!5762943 (= e!3540885 tp_is_empty!40799)))

(assert (= (and b!5762172 ((_ is ElementMatch!15773) (reg!16102 r!7292))) b!5762943))

(assert (= (and b!5762172 ((_ is Concat!24618) (reg!16102 r!7292))) b!5762944))

(assert (= (and b!5762172 ((_ is Star!15773) (reg!16102 r!7292))) b!5762945))

(assert (= (and b!5762172 ((_ is Union!15773) (reg!16102 r!7292))) b!5762946))

(declare-fun b!5762947 () Bool)

(declare-fun e!3540886 () Bool)

(declare-fun tp!1592760 () Bool)

(declare-fun tp!1592761 () Bool)

(assert (=> b!5762947 (= e!3540886 (and tp!1592760 tp!1592761))))

(assert (=> b!5762162 (= tp!1592665 e!3540886)))

(assert (= (and b!5762162 ((_ is Cons!63494) (exprs!5657 setElem!38695))) b!5762947))

(declare-fun condSetEmpty!38701 () Bool)

(assert (=> setNonEmpty!38695 (= condSetEmpty!38701 (= setRest!38695 ((as const (Array Context!10314 Bool)) false)))))

(declare-fun setRes!38701 () Bool)

(assert (=> setNonEmpty!38695 (= tp!1592662 setRes!38701)))

(declare-fun setIsEmpty!38701 () Bool)

(assert (=> setIsEmpty!38701 setRes!38701))

(declare-fun tp!1592766 () Bool)

(declare-fun setElem!38701 () Context!10314)

(declare-fun e!3540889 () Bool)

(declare-fun setNonEmpty!38701 () Bool)

(assert (=> setNonEmpty!38701 (= setRes!38701 (and tp!1592766 (inv!82679 setElem!38701) e!3540889))))

(declare-fun setRest!38701 () (InoxSet Context!10314))

(assert (=> setNonEmpty!38701 (= setRest!38695 ((_ map or) (store ((as const (Array Context!10314 Bool)) false) setElem!38701 true) setRest!38701))))

(declare-fun b!5762952 () Bool)

(declare-fun tp!1592767 () Bool)

(assert (=> b!5762952 (= e!3540889 tp!1592767)))

(assert (= (and setNonEmpty!38695 condSetEmpty!38701) setIsEmpty!38701))

(assert (= (and setNonEmpty!38695 (not condSetEmpty!38701)) setNonEmpty!38701))

(assert (= setNonEmpty!38701 b!5762952))

(declare-fun m!6709810 () Bool)

(assert (=> setNonEmpty!38701 m!6709810))

(declare-fun b!5762960 () Bool)

(declare-fun e!3540895 () Bool)

(declare-fun tp!1592772 () Bool)

(assert (=> b!5762960 (= e!3540895 tp!1592772)))

(declare-fun tp!1592773 () Bool)

(declare-fun b!5762959 () Bool)

(declare-fun e!3540894 () Bool)

(assert (=> b!5762959 (= e!3540894 (and (inv!82679 (h!69943 (t!376953 zl!343))) e!3540895 tp!1592773))))

(assert (=> b!5762156 (= tp!1592669 e!3540894)))

(assert (= b!5762959 b!5762960))

(assert (= (and b!5762156 ((_ is Cons!63495) (t!376953 zl!343))) b!5762959))

(declare-fun m!6709812 () Bool)

(assert (=> b!5762959 m!6709812))

(declare-fun b!5762965 () Bool)

(declare-fun e!3540898 () Bool)

(declare-fun tp!1592776 () Bool)

(assert (=> b!5762965 (= e!3540898 (and tp_is_empty!40799 tp!1592776))))

(assert (=> b!5762158 (= tp!1592663 e!3540898)))

(assert (= (and b!5762158 ((_ is Cons!63496) (t!376954 s!2326))) b!5762965))

(declare-fun b!5762967 () Bool)

(declare-fun e!3540899 () Bool)

(declare-fun tp!1592778 () Bool)

(declare-fun tp!1592780 () Bool)

(assert (=> b!5762967 (= e!3540899 (and tp!1592778 tp!1592780))))

(declare-fun b!5762968 () Bool)

(declare-fun tp!1592777 () Bool)

(assert (=> b!5762968 (= e!3540899 tp!1592777)))

(declare-fun b!5762969 () Bool)

(declare-fun tp!1592781 () Bool)

(declare-fun tp!1592779 () Bool)

(assert (=> b!5762969 (= e!3540899 (and tp!1592781 tp!1592779))))

(assert (=> b!5762148 (= tp!1592670 e!3540899)))

(declare-fun b!5762966 () Bool)

(assert (=> b!5762966 (= e!3540899 tp_is_empty!40799)))

(assert (= (and b!5762148 ((_ is ElementMatch!15773) (regOne!32059 r!7292))) b!5762966))

(assert (= (and b!5762148 ((_ is Concat!24618) (regOne!32059 r!7292))) b!5762967))

(assert (= (and b!5762148 ((_ is Star!15773) (regOne!32059 r!7292))) b!5762968))

(assert (= (and b!5762148 ((_ is Union!15773) (regOne!32059 r!7292))) b!5762969))

(declare-fun b!5762971 () Bool)

(declare-fun e!3540900 () Bool)

(declare-fun tp!1592783 () Bool)

(declare-fun tp!1592785 () Bool)

(assert (=> b!5762971 (= e!3540900 (and tp!1592783 tp!1592785))))

(declare-fun b!5762972 () Bool)

(declare-fun tp!1592782 () Bool)

(assert (=> b!5762972 (= e!3540900 tp!1592782)))

(declare-fun b!5762973 () Bool)

(declare-fun tp!1592786 () Bool)

(declare-fun tp!1592784 () Bool)

(assert (=> b!5762973 (= e!3540900 (and tp!1592786 tp!1592784))))

(assert (=> b!5762148 (= tp!1592661 e!3540900)))

(declare-fun b!5762970 () Bool)

(assert (=> b!5762970 (= e!3540900 tp_is_empty!40799)))

(assert (= (and b!5762148 ((_ is ElementMatch!15773) (regTwo!32059 r!7292))) b!5762970))

(assert (= (and b!5762148 ((_ is Concat!24618) (regTwo!32059 r!7292))) b!5762971))

(assert (= (and b!5762148 ((_ is Star!15773) (regTwo!32059 r!7292))) b!5762972))

(assert (= (and b!5762148 ((_ is Union!15773) (regTwo!32059 r!7292))) b!5762973))

(declare-fun b_lambda!217579 () Bool)

(assert (= b_lambda!217575 (or b!5762171 b_lambda!217579)))

(declare-fun bs!1351643 () Bool)

(declare-fun d!1815670 () Bool)

(assert (= bs!1351643 (and d!1815670 b!5762171)))

(assert (=> bs!1351643 (= (dynLambda!24855 lambda!312821 (h!69943 zl!343)) (derivationStepZipperUp!1041 (h!69943 zl!343) (h!69944 s!2326)))))

(assert (=> bs!1351643 m!6709282))

(assert (=> d!1815646 d!1815670))

(declare-fun b_lambda!217581 () Bool)

(assert (= b_lambda!217577 (or b!5762171 b_lambda!217581)))

(declare-fun bs!1351644 () Bool)

(declare-fun d!1815672 () Bool)

(assert (= bs!1351644 (and d!1815672 b!5762171)))

(assert (=> bs!1351644 (= (dynLambda!24855 lambda!312821 lt!2288821) (derivationStepZipperUp!1041 lt!2288821 (h!69944 s!2326)))))

(assert (=> bs!1351644 m!6709292))

(assert (=> d!1815666 d!1815672))

(check-sat (not d!1815514) (not d!1815528) (not b!5762938) (not b!5762818) (not b!5762828) (not d!1815582) (not b!5762755) (not b!5762290) (not d!1815544) (not bm!442475) (not b!5762843) (not d!1815614) (not bm!442451) (not d!1815594) (not d!1815640) (not bm!442461) (not b!5762189) (not d!1815506) (not b!5762875) (not b!5762847) (not b!5762919) (not b_lambda!217581) (not b!5762960) (not b!5762910) (not b!5762288) (not bm!442438) (not b!5762814) (not d!1815634) (not bm!442453) (not b!5762952) (not setNonEmpty!38701) (not d!1815664) (not d!1815648) (not b!5762289) (not bm!442455) (not d!1815638) (not bm!442478) (not b!5762285) (not bm!442476) (not bs!1351644) (not b!5762816) (not b!5762959) (not b!5762870) (not b!5762730) (not bm!442441) (not d!1815652) (not b!5762753) (not b!5762741) (not b!5762967) (not b!5762853) (not b!5762821) (not bm!442437) (not d!1815630) (not b!5762188) (not b!5762520) (not b!5762945) (not b!5762187) (not b!5762182) (not b!5762519) (not b!5762765) (not b!5762936) (not d!1815626) (not d!1815530) (not b!5762623) (not b!5762940) (not bm!442460) (not b!5762734) (not d!1815508) (not b!5762944) (not b!5762876) (not b!5762766) (not b!5762973) (not b!5762865) (not b!5762969) (not b!5762512) (not b!5762830) (not b!5762947) (not d!1815512) (not b!5762792) (not d!1815532) (not d!1815510) (not bm!442454) (not b!5762820) (not d!1815504) (not b!5762515) (not b!5762759) (not b!5762632) (not b!5762913) tp_is_empty!40799 (not b!5762866) (not b!5762742) (not bm!442442) (not bm!442443) (not b_lambda!217579) (not d!1815644) (not b!5762971) (not d!1815580) (not d!1815646) (not b!5762511) (not bm!442456) (not b!5762823) (not b!5762763) (not d!1815668) (not b!5762839) (not d!1815662) (not b!5762946) (not b!5762518) (not b!5762190) (not bm!442459) (not b!5762851) (not b!5762817) (not bs!1351643) (not d!1815632) (not d!1815612) (not b!5762514) (not b!5762924) (not bm!442444) (not b!5762854) (not d!1815624) (not b!5762968) (not b!5762942) (not b!5762914) (not b!5762941) (not b!5762871) (not b!5762287) (not b!5762937) (not b!5762293) (not b!5762965) (not b!5762738) (not d!1815666) (not b!5762751) (not b!5762740) (not b!5762728) (not d!1815660) (not b!5762972) (not b!5762841))
(check-sat)
