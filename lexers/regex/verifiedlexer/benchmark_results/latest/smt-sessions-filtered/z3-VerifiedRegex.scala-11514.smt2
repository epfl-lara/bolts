; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!630602 () Bool)

(assert start!630602)

(declare-fun b!6365680 () Bool)

(assert (=> b!6365680 true))

(assert (=> b!6365680 true))

(declare-fun lambda!350710 () Int)

(declare-fun lambda!350709 () Int)

(assert (=> b!6365680 (not (= lambda!350710 lambda!350709))))

(assert (=> b!6365680 true))

(assert (=> b!6365680 true))

(declare-fun b!6365668 () Bool)

(assert (=> b!6365668 true))

(declare-fun b!6365654 () Bool)

(declare-fun res!2619006 () Bool)

(declare-fun e!3865080 () Bool)

(assert (=> b!6365654 (=> res!2619006 e!3865080)))

(declare-datatypes ((C!32820 0))(
  ( (C!32821 (val!26112 Int)) )
))
(declare-datatypes ((Regex!16275 0))(
  ( (ElementMatch!16275 (c!1158964 C!32820)) (Concat!25120 (regOne!33062 Regex!16275) (regTwo!33062 Regex!16275)) (EmptyExpr!16275) (Star!16275 (reg!16604 Regex!16275)) (EmptyLang!16275) (Union!16275 (regOne!33063 Regex!16275) (regTwo!33063 Regex!16275)) )
))
(declare-fun r!7292 () Regex!16275)

(get-info :version)

(assert (=> b!6365654 (= res!2619006 (or ((_ is Concat!25120) (regOne!33062 r!7292)) (not ((_ is Star!16275) (regOne!33062 r!7292)))))))

(declare-fun b!6365655 () Bool)

(declare-fun e!3865076 () Bool)

(declare-fun tp!1772549 () Bool)

(assert (=> b!6365655 (= e!3865076 tp!1772549)))

(declare-fun b!6365657 () Bool)

(declare-fun res!2619019 () Bool)

(assert (=> b!6365657 (=> res!2619019 e!3865080)))

(declare-fun e!3865075 () Bool)

(assert (=> b!6365657 (= res!2619019 e!3865075)))

(declare-fun res!2619014 () Bool)

(assert (=> b!6365657 (=> (not res!2619014) (not e!3865075))))

(assert (=> b!6365657 (= res!2619014 ((_ is Concat!25120) (regOne!33062 r!7292)))))

(declare-fun b!6365658 () Bool)

(declare-fun e!3865086 () Bool)

(assert (=> b!6365658 (= e!3865080 e!3865086)))

(declare-fun res!2619004 () Bool)

(assert (=> b!6365658 (=> res!2619004 e!3865086)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65124 0))(
  ( (Nil!65000) (Cons!65000 (h!71448 Regex!16275) (t!378720 List!65124)) )
))
(declare-datatypes ((Context!11318 0))(
  ( (Context!11319 (exprs!6159 List!65124)) )
))
(declare-fun lt!2367446 () (InoxSet Context!11318))

(declare-fun lt!2367443 () (InoxSet Context!11318))

(assert (=> b!6365658 (= res!2619004 (not (= lt!2367446 lt!2367443)))))

(declare-datatypes ((List!65125 0))(
  ( (Nil!65001) (Cons!65001 (h!71449 C!32820) (t!378721 List!65125)) )
))
(declare-fun s!2326 () List!65125)

(declare-fun lt!2367453 () List!65124)

(declare-fun derivationStepZipperDown!1523 (Regex!16275 Context!11318 C!32820) (InoxSet Context!11318))

(assert (=> b!6365658 (= lt!2367443 (derivationStepZipperDown!1523 (reg!16604 (regOne!33062 r!7292)) (Context!11319 lt!2367453) (h!71449 s!2326)))))

(declare-fun lt!2367458 () Regex!16275)

(declare-datatypes ((List!65126 0))(
  ( (Nil!65002) (Cons!65002 (h!71450 Context!11318) (t!378722 List!65126)) )
))
(declare-fun zl!343 () List!65126)

(assert (=> b!6365658 (= lt!2367453 (Cons!65000 lt!2367458 (t!378720 (exprs!6159 (h!71450 zl!343)))))))

(assert (=> b!6365658 (= lt!2367458 (Star!16275 (reg!16604 (regOne!33062 r!7292))))))

(declare-fun b!6365659 () Bool)

(declare-fun e!3865088 () Bool)

(declare-fun e!3865083 () Bool)

(declare-fun tp!1772546 () Bool)

(declare-fun inv!83934 (Context!11318) Bool)

(assert (=> b!6365659 (= e!3865088 (and (inv!83934 (h!71450 zl!343)) e!3865083 tp!1772546))))

(declare-fun b!6365660 () Bool)

(declare-fun nullable!6268 (Regex!16275) Bool)

(assert (=> b!6365660 (= e!3865075 (nullable!6268 (regOne!33062 (regOne!33062 r!7292))))))

(declare-fun b!6365661 () Bool)

(declare-fun e!3865079 () Bool)

(declare-fun e!3865087 () Bool)

(assert (=> b!6365661 (= e!3865079 e!3865087)))

(declare-fun res!2619017 () Bool)

(assert (=> b!6365661 (=> (not res!2619017) (not e!3865087))))

(declare-fun lt!2367442 () Regex!16275)

(assert (=> b!6365661 (= res!2619017 (= r!7292 lt!2367442))))

(declare-fun unfocusZipper!2017 (List!65126) Regex!16275)

(assert (=> b!6365661 (= lt!2367442 (unfocusZipper!2017 zl!343))))

(declare-fun b!6365662 () Bool)

(declare-datatypes ((Unit!158431 0))(
  ( (Unit!158432) )
))
(declare-fun e!3865082 () Unit!158431)

(declare-fun Unit!158433 () Unit!158431)

(assert (=> b!6365662 (= e!3865082 Unit!158433)))

(declare-fun b!6365663 () Bool)

(declare-fun res!2619013 () Bool)

(declare-fun e!3865084 () Bool)

(assert (=> b!6365663 (=> res!2619013 e!3865084)))

(assert (=> b!6365663 (= res!2619013 (or (not (= lt!2367442 r!7292)) (not (= r!7292 (Concat!25120 lt!2367458 (regTwo!33062 r!7292))))))))

(declare-fun b!6365664 () Bool)

(declare-fun tp!1772542 () Bool)

(assert (=> b!6365664 (= e!3865083 tp!1772542)))

(declare-fun b!6365665 () Bool)

(declare-fun res!2619007 () Bool)

(declare-fun e!3865085 () Bool)

(assert (=> b!6365665 (=> res!2619007 e!3865085)))

(declare-fun generalisedConcat!1872 (List!65124) Regex!16275)

(assert (=> b!6365665 (= res!2619007 (not (= r!7292 (generalisedConcat!1872 (exprs!6159 (h!71450 zl!343))))))))

(declare-fun b!6365666 () Bool)

(declare-fun res!2619010 () Bool)

(assert (=> b!6365666 (=> res!2619010 e!3865085)))

(assert (=> b!6365666 (= res!2619010 (not ((_ is Cons!65000) (exprs!6159 (h!71450 zl!343)))))))

(declare-fun b!6365667 () Bool)

(declare-fun e!3865078 () Bool)

(declare-fun tp!1772550 () Bool)

(declare-fun tp!1772547 () Bool)

(assert (=> b!6365667 (= e!3865078 (and tp!1772550 tp!1772547))))

(declare-fun e!3865077 () Bool)

(assert (=> b!6365668 (= e!3865077 e!3865080)))

(declare-fun res!2619016 () Bool)

(assert (=> b!6365668 (=> res!2619016 e!3865080)))

(assert (=> b!6365668 (= res!2619016 (or (and ((_ is ElementMatch!16275) (regOne!33062 r!7292)) (= (c!1158964 (regOne!33062 r!7292)) (h!71449 s!2326))) ((_ is Union!16275) (regOne!33062 r!7292))))))

(declare-fun lt!2367462 () Unit!158431)

(assert (=> b!6365668 (= lt!2367462 e!3865082)))

(declare-fun c!1158963 () Bool)

(assert (=> b!6365668 (= c!1158963 (nullable!6268 (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun lambda!350711 () Int)

(declare-fun z!1189 () (InoxSet Context!11318))

(declare-fun flatMap!1780 ((InoxSet Context!11318) Int) (InoxSet Context!11318))

(declare-fun derivationStepZipperUp!1449 (Context!11318 C!32820) (InoxSet Context!11318))

(assert (=> b!6365668 (= (flatMap!1780 z!1189 lambda!350711) (derivationStepZipperUp!1449 (h!71450 zl!343) (h!71449 s!2326)))))

(declare-fun lt!2367445 () Unit!158431)

(declare-fun lemmaFlatMapOnSingletonSet!1306 ((InoxSet Context!11318) Context!11318 Int) Unit!158431)

(assert (=> b!6365668 (= lt!2367445 (lemmaFlatMapOnSingletonSet!1306 z!1189 (h!71450 zl!343) lambda!350711))))

(declare-fun lt!2367449 () (InoxSet Context!11318))

(declare-fun lt!2367450 () Context!11318)

(assert (=> b!6365668 (= lt!2367449 (derivationStepZipperUp!1449 lt!2367450 (h!71449 s!2326)))))

(assert (=> b!6365668 (= lt!2367446 (derivationStepZipperDown!1523 (h!71448 (exprs!6159 (h!71450 zl!343))) lt!2367450 (h!71449 s!2326)))))

(assert (=> b!6365668 (= lt!2367450 (Context!11319 (t!378720 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun lt!2367452 () (InoxSet Context!11318))

(assert (=> b!6365668 (= lt!2367452 (derivationStepZipperUp!1449 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343))))) (h!71449 s!2326)))))

(declare-fun b!6365669 () Bool)

(declare-fun res!2619015 () Bool)

(assert (=> b!6365669 (=> res!2619015 e!3865085)))

(declare-fun generalisedUnion!2119 (List!65124) Regex!16275)

(declare-fun unfocusZipperList!1696 (List!65126) List!65124)

(assert (=> b!6365669 (= res!2619015 (not (= r!7292 (generalisedUnion!2119 (unfocusZipperList!1696 zl!343)))))))

(declare-fun b!6365670 () Bool)

(declare-fun tp!1772544 () Bool)

(assert (=> b!6365670 (= e!3865078 tp!1772544)))

(declare-fun setIsEmpty!43380 () Bool)

(declare-fun setRes!43380 () Bool)

(assert (=> setIsEmpty!43380 setRes!43380))

(declare-fun b!6365671 () Bool)

(declare-fun res!2619005 () Bool)

(assert (=> b!6365671 (=> (not res!2619005) (not e!3865079))))

(declare-fun toList!10059 ((InoxSet Context!11318)) List!65126)

(assert (=> b!6365671 (= res!2619005 (= (toList!10059 z!1189) zl!343))))

(declare-fun b!6365672 () Bool)

(declare-fun res!2619008 () Bool)

(assert (=> b!6365672 (=> res!2619008 e!3865084)))

(declare-fun lt!2367451 () (InoxSet Context!11318))

(declare-fun lt!2367460 () (InoxSet Context!11318))

(declare-fun matchZipper!2287 ((InoxSet Context!11318) List!65125) Bool)

(assert (=> b!6365672 (= res!2619008 (not (= (matchZipper!2287 lt!2367451 s!2326) (matchZipper!2287 lt!2367460 (t!378721 s!2326)))))))

(declare-fun b!6365656 () Bool)

(declare-fun tp_is_empty!41803 () Bool)

(assert (=> b!6365656 (= e!3865078 tp_is_empty!41803)))

(declare-fun res!2619009 () Bool)

(assert (=> start!630602 (=> (not res!2619009) (not e!3865079))))

(declare-fun validRegex!8011 (Regex!16275) Bool)

(assert (=> start!630602 (= res!2619009 (validRegex!8011 r!7292))))

(assert (=> start!630602 e!3865079))

(assert (=> start!630602 e!3865078))

(declare-fun condSetEmpty!43380 () Bool)

(assert (=> start!630602 (= condSetEmpty!43380 (= z!1189 ((as const (Array Context!11318 Bool)) false)))))

(assert (=> start!630602 setRes!43380))

(assert (=> start!630602 e!3865088))

(declare-fun e!3865081 () Bool)

(assert (=> start!630602 e!3865081))

(declare-fun b!6365673 () Bool)

(declare-fun e!3865074 () Bool)

(assert (=> b!6365673 (= e!3865074 (matchZipper!2287 lt!2367449 (t!378721 s!2326)))))

(declare-fun b!6365674 () Bool)

(declare-fun res!2619018 () Bool)

(assert (=> b!6365674 (=> res!2619018 e!3865085)))

(declare-fun isEmpty!37109 (List!65126) Bool)

(assert (=> b!6365674 (= res!2619018 (not (isEmpty!37109 (t!378722 zl!343))))))

(declare-fun b!6365675 () Bool)

(declare-fun lt!2367457 () Context!11318)

(assert (=> b!6365675 (= e!3865084 (inv!83934 lt!2367457))))

(declare-fun b!6365676 () Bool)

(assert (=> b!6365676 (= e!3865087 (not e!3865085))))

(declare-fun res!2619020 () Bool)

(assert (=> b!6365676 (=> res!2619020 e!3865085)))

(assert (=> b!6365676 (= res!2619020 (not ((_ is Cons!65002) zl!343)))))

(declare-fun lt!2367456 () Bool)

(declare-fun matchRSpec!3376 (Regex!16275 List!65125) Bool)

(assert (=> b!6365676 (= lt!2367456 (matchRSpec!3376 r!7292 s!2326))))

(declare-fun matchR!8458 (Regex!16275 List!65125) Bool)

(assert (=> b!6365676 (= lt!2367456 (matchR!8458 r!7292 s!2326))))

(declare-fun lt!2367448 () Unit!158431)

(declare-fun mainMatchTheorem!3376 (Regex!16275 List!65125) Unit!158431)

(assert (=> b!6365676 (= lt!2367448 (mainMatchTheorem!3376 r!7292 s!2326))))

(declare-fun b!6365677 () Bool)

(declare-fun tp!1772545 () Bool)

(declare-fun tp!1772543 () Bool)

(assert (=> b!6365677 (= e!3865078 (and tp!1772545 tp!1772543))))

(declare-fun b!6365678 () Bool)

(declare-fun res!2619003 () Bool)

(assert (=> b!6365678 (=> res!2619003 e!3865077)))

(declare-fun isEmpty!37110 (List!65124) Bool)

(assert (=> b!6365678 (= res!2619003 (isEmpty!37110 (t!378720 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun b!6365679 () Bool)

(assert (=> b!6365679 (= e!3865086 e!3865084)))

(declare-fun res!2619012 () Bool)

(assert (=> b!6365679 (=> res!2619012 e!3865084)))

(assert (=> b!6365679 (= res!2619012 (not (= lt!2367460 lt!2367443)))))

(assert (=> b!6365679 (= (flatMap!1780 lt!2367451 lambda!350711) (derivationStepZipperUp!1449 lt!2367457 (h!71449 s!2326)))))

(declare-fun lt!2367459 () Unit!158431)

(assert (=> b!6365679 (= lt!2367459 (lemmaFlatMapOnSingletonSet!1306 lt!2367451 lt!2367457 lambda!350711))))

(declare-fun lt!2367455 () (InoxSet Context!11318))

(assert (=> b!6365679 (= lt!2367455 (derivationStepZipperUp!1449 lt!2367457 (h!71449 s!2326)))))

(declare-fun derivationStepZipper!2241 ((InoxSet Context!11318) C!32820) (InoxSet Context!11318))

(assert (=> b!6365679 (= lt!2367460 (derivationStepZipper!2241 lt!2367451 (h!71449 s!2326)))))

(assert (=> b!6365679 (= lt!2367451 (store ((as const (Array Context!11318 Bool)) false) lt!2367457 true))))

(assert (=> b!6365679 (= lt!2367457 (Context!11319 (Cons!65000 (reg!16604 (regOne!33062 r!7292)) lt!2367453)))))

(assert (=> b!6365680 (= e!3865085 e!3865077)))

(declare-fun res!2619011 () Bool)

(assert (=> b!6365680 (=> res!2619011 e!3865077)))

(declare-fun lt!2367444 () Bool)

(assert (=> b!6365680 (= res!2619011 (or (not (= lt!2367456 lt!2367444)) ((_ is Nil!65001) s!2326)))))

(declare-fun Exists!3345 (Int) Bool)

(assert (=> b!6365680 (= (Exists!3345 lambda!350709) (Exists!3345 lambda!350710))))

(declare-fun lt!2367454 () Unit!158431)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1882 (Regex!16275 Regex!16275 List!65125) Unit!158431)

(assert (=> b!6365680 (= lt!2367454 (lemmaExistCutMatchRandMatchRSpecEquivalent!1882 (regOne!33062 r!7292) (regTwo!33062 r!7292) s!2326))))

(assert (=> b!6365680 (= lt!2367444 (Exists!3345 lambda!350709))))

(declare-datatypes ((tuple2!66508 0))(
  ( (tuple2!66509 (_1!36557 List!65125) (_2!36557 List!65125)) )
))
(declare-datatypes ((Option!16166 0))(
  ( (None!16165) (Some!16165 (v!52334 tuple2!66508)) )
))
(declare-fun isDefined!12869 (Option!16166) Bool)

(declare-fun findConcatSeparation!2580 (Regex!16275 Regex!16275 List!65125 List!65125 List!65125) Option!16166)

(assert (=> b!6365680 (= lt!2367444 (isDefined!12869 (findConcatSeparation!2580 (regOne!33062 r!7292) (regTwo!33062 r!7292) Nil!65001 s!2326 s!2326)))))

(declare-fun lt!2367461 () Unit!158431)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2344 (Regex!16275 Regex!16275 List!65125) Unit!158431)

(assert (=> b!6365680 (= lt!2367461 (lemmaFindConcatSeparationEquivalentToExists!2344 (regOne!33062 r!7292) (regTwo!33062 r!7292) s!2326))))

(declare-fun tp!1772541 () Bool)

(declare-fun setElem!43380 () Context!11318)

(declare-fun setNonEmpty!43380 () Bool)

(assert (=> setNonEmpty!43380 (= setRes!43380 (and tp!1772541 (inv!83934 setElem!43380) e!3865076))))

(declare-fun setRest!43380 () (InoxSet Context!11318))

(assert (=> setNonEmpty!43380 (= z!1189 ((_ map or) (store ((as const (Array Context!11318 Bool)) false) setElem!43380 true) setRest!43380))))

(declare-fun b!6365681 () Bool)

(declare-fun res!2619001 () Bool)

(assert (=> b!6365681 (=> res!2619001 e!3865085)))

(assert (=> b!6365681 (= res!2619001 (or ((_ is EmptyExpr!16275) r!7292) ((_ is EmptyLang!16275) r!7292) ((_ is ElementMatch!16275) r!7292) ((_ is Union!16275) r!7292) (not ((_ is Concat!25120) r!7292))))))

(declare-fun b!6365682 () Bool)

(declare-fun tp!1772548 () Bool)

(assert (=> b!6365682 (= e!3865081 (and tp_is_empty!41803 tp!1772548))))

(declare-fun b!6365683 () Bool)

(declare-fun Unit!158434 () Unit!158431)

(assert (=> b!6365683 (= e!3865082 Unit!158434)))

(declare-fun lt!2367447 () Unit!158431)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1106 ((InoxSet Context!11318) (InoxSet Context!11318) List!65125) Unit!158431)

(assert (=> b!6365683 (= lt!2367447 (lemmaZipperConcatMatchesSameAsBothZippers!1106 lt!2367446 lt!2367449 (t!378721 s!2326)))))

(declare-fun res!2619002 () Bool)

(assert (=> b!6365683 (= res!2619002 (matchZipper!2287 lt!2367446 (t!378721 s!2326)))))

(assert (=> b!6365683 (=> res!2619002 e!3865074)))

(assert (=> b!6365683 (= (matchZipper!2287 ((_ map or) lt!2367446 lt!2367449) (t!378721 s!2326)) e!3865074)))

(assert (= (and start!630602 res!2619009) b!6365671))

(assert (= (and b!6365671 res!2619005) b!6365661))

(assert (= (and b!6365661 res!2619017) b!6365676))

(assert (= (and b!6365676 (not res!2619020)) b!6365674))

(assert (= (and b!6365674 (not res!2619018)) b!6365665))

(assert (= (and b!6365665 (not res!2619007)) b!6365666))

(assert (= (and b!6365666 (not res!2619010)) b!6365669))

(assert (= (and b!6365669 (not res!2619015)) b!6365681))

(assert (= (and b!6365681 (not res!2619001)) b!6365680))

(assert (= (and b!6365680 (not res!2619011)) b!6365678))

(assert (= (and b!6365678 (not res!2619003)) b!6365668))

(assert (= (and b!6365668 c!1158963) b!6365683))

(assert (= (and b!6365668 (not c!1158963)) b!6365662))

(assert (= (and b!6365683 (not res!2619002)) b!6365673))

(assert (= (and b!6365668 (not res!2619016)) b!6365657))

(assert (= (and b!6365657 res!2619014) b!6365660))

(assert (= (and b!6365657 (not res!2619019)) b!6365654))

(assert (= (and b!6365654 (not res!2619006)) b!6365658))

(assert (= (and b!6365658 (not res!2619004)) b!6365679))

(assert (= (and b!6365679 (not res!2619012)) b!6365672))

(assert (= (and b!6365672 (not res!2619008)) b!6365663))

(assert (= (and b!6365663 (not res!2619013)) b!6365675))

(assert (= (and start!630602 ((_ is ElementMatch!16275) r!7292)) b!6365656))

(assert (= (and start!630602 ((_ is Concat!25120) r!7292)) b!6365667))

(assert (= (and start!630602 ((_ is Star!16275) r!7292)) b!6365670))

(assert (= (and start!630602 ((_ is Union!16275) r!7292)) b!6365677))

(assert (= (and start!630602 condSetEmpty!43380) setIsEmpty!43380))

(assert (= (and start!630602 (not condSetEmpty!43380)) setNonEmpty!43380))

(assert (= setNonEmpty!43380 b!6365655))

(assert (= b!6365659 b!6365664))

(assert (= (and start!630602 ((_ is Cons!65002) zl!343)) b!6365659))

(assert (= (and start!630602 ((_ is Cons!65001) s!2326)) b!6365682))

(declare-fun m!7169696 () Bool)

(assert (=> b!6365680 m!7169696))

(declare-fun m!7169698 () Bool)

(assert (=> b!6365680 m!7169698))

(declare-fun m!7169700 () Bool)

(assert (=> b!6365680 m!7169700))

(assert (=> b!6365680 m!7169700))

(declare-fun m!7169702 () Bool)

(assert (=> b!6365680 m!7169702))

(declare-fun m!7169704 () Bool)

(assert (=> b!6365680 m!7169704))

(assert (=> b!6365680 m!7169696))

(declare-fun m!7169706 () Bool)

(assert (=> b!6365680 m!7169706))

(declare-fun m!7169708 () Bool)

(assert (=> b!6365669 m!7169708))

(assert (=> b!6365669 m!7169708))

(declare-fun m!7169710 () Bool)

(assert (=> b!6365669 m!7169710))

(declare-fun m!7169712 () Bool)

(assert (=> b!6365679 m!7169712))

(declare-fun m!7169714 () Bool)

(assert (=> b!6365679 m!7169714))

(declare-fun m!7169716 () Bool)

(assert (=> b!6365679 m!7169716))

(declare-fun m!7169718 () Bool)

(assert (=> b!6365679 m!7169718))

(declare-fun m!7169720 () Bool)

(assert (=> b!6365679 m!7169720))

(declare-fun m!7169722 () Bool)

(assert (=> b!6365660 m!7169722))

(declare-fun m!7169724 () Bool)

(assert (=> b!6365674 m!7169724))

(declare-fun m!7169726 () Bool)

(assert (=> b!6365676 m!7169726))

(declare-fun m!7169728 () Bool)

(assert (=> b!6365676 m!7169728))

(declare-fun m!7169730 () Bool)

(assert (=> b!6365676 m!7169730))

(declare-fun m!7169732 () Bool)

(assert (=> b!6365665 m!7169732))

(declare-fun m!7169734 () Bool)

(assert (=> b!6365671 m!7169734))

(declare-fun m!7169736 () Bool)

(assert (=> b!6365673 m!7169736))

(declare-fun m!7169738 () Bool)

(assert (=> b!6365672 m!7169738))

(declare-fun m!7169740 () Bool)

(assert (=> b!6365672 m!7169740))

(declare-fun m!7169742 () Bool)

(assert (=> b!6365658 m!7169742))

(declare-fun m!7169744 () Bool)

(assert (=> b!6365683 m!7169744))

(declare-fun m!7169746 () Bool)

(assert (=> b!6365683 m!7169746))

(declare-fun m!7169748 () Bool)

(assert (=> b!6365683 m!7169748))

(declare-fun m!7169750 () Bool)

(assert (=> b!6365675 m!7169750))

(declare-fun m!7169752 () Bool)

(assert (=> b!6365668 m!7169752))

(declare-fun m!7169754 () Bool)

(assert (=> b!6365668 m!7169754))

(declare-fun m!7169756 () Bool)

(assert (=> b!6365668 m!7169756))

(declare-fun m!7169758 () Bool)

(assert (=> b!6365668 m!7169758))

(declare-fun m!7169760 () Bool)

(assert (=> b!6365668 m!7169760))

(declare-fun m!7169762 () Bool)

(assert (=> b!6365668 m!7169762))

(declare-fun m!7169764 () Bool)

(assert (=> b!6365668 m!7169764))

(declare-fun m!7169766 () Bool)

(assert (=> b!6365678 m!7169766))

(declare-fun m!7169768 () Bool)

(assert (=> b!6365661 m!7169768))

(declare-fun m!7169770 () Bool)

(assert (=> setNonEmpty!43380 m!7169770))

(declare-fun m!7169772 () Bool)

(assert (=> start!630602 m!7169772))

(declare-fun m!7169774 () Bool)

(assert (=> b!6365659 m!7169774))

(check-sat (not b!6365673) (not b!6365674) (not b!6365670) tp_is_empty!41803 (not b!6365671) (not b!6365655) (not b!6365659) (not setNonEmpty!43380) (not b!6365679) (not b!6365668) (not b!6365683) (not b!6365676) (not b!6365672) (not b!6365677) (not b!6365680) (not start!630602) (not b!6365660) (not b!6365658) (not b!6365675) (not b!6365661) (not b!6365669) (not b!6365667) (not b!6365665) (not b!6365682) (not b!6365678) (not b!6365664))
(check-sat)
(get-model)

(declare-fun d!1996737 () Bool)

(declare-fun c!1159046 () Bool)

(declare-fun isEmpty!37113 (List!65125) Bool)

(assert (=> d!1996737 (= c!1159046 (isEmpty!37113 s!2326))))

(declare-fun e!3865236 () Bool)

(assert (=> d!1996737 (= (matchZipper!2287 lt!2367451 s!2326) e!3865236)))

(declare-fun b!6365942 () Bool)

(declare-fun nullableZipper!2040 ((InoxSet Context!11318)) Bool)

(assert (=> b!6365942 (= e!3865236 (nullableZipper!2040 lt!2367451))))

(declare-fun b!6365943 () Bool)

(declare-fun head!13042 (List!65125) C!32820)

(declare-fun tail!12127 (List!65125) List!65125)

(assert (=> b!6365943 (= e!3865236 (matchZipper!2287 (derivationStepZipper!2241 lt!2367451 (head!13042 s!2326)) (tail!12127 s!2326)))))

(assert (= (and d!1996737 c!1159046) b!6365942))

(assert (= (and d!1996737 (not c!1159046)) b!6365943))

(declare-fun m!7169922 () Bool)

(assert (=> d!1996737 m!7169922))

(declare-fun m!7169924 () Bool)

(assert (=> b!6365942 m!7169924))

(declare-fun m!7169926 () Bool)

(assert (=> b!6365943 m!7169926))

(assert (=> b!6365943 m!7169926))

(declare-fun m!7169928 () Bool)

(assert (=> b!6365943 m!7169928))

(declare-fun m!7169930 () Bool)

(assert (=> b!6365943 m!7169930))

(assert (=> b!6365943 m!7169928))

(assert (=> b!6365943 m!7169930))

(declare-fun m!7169932 () Bool)

(assert (=> b!6365943 m!7169932))

(assert (=> b!6365672 d!1996737))

(declare-fun d!1996743 () Bool)

(declare-fun c!1159047 () Bool)

(assert (=> d!1996743 (= c!1159047 (isEmpty!37113 (t!378721 s!2326)))))

(declare-fun e!3865237 () Bool)

(assert (=> d!1996743 (= (matchZipper!2287 lt!2367460 (t!378721 s!2326)) e!3865237)))

(declare-fun b!6365944 () Bool)

(assert (=> b!6365944 (= e!3865237 (nullableZipper!2040 lt!2367460))))

(declare-fun b!6365945 () Bool)

(assert (=> b!6365945 (= e!3865237 (matchZipper!2287 (derivationStepZipper!2241 lt!2367460 (head!13042 (t!378721 s!2326))) (tail!12127 (t!378721 s!2326))))))

(assert (= (and d!1996743 c!1159047) b!6365944))

(assert (= (and d!1996743 (not c!1159047)) b!6365945))

(declare-fun m!7169934 () Bool)

(assert (=> d!1996743 m!7169934))

(declare-fun m!7169936 () Bool)

(assert (=> b!6365944 m!7169936))

(declare-fun m!7169938 () Bool)

(assert (=> b!6365945 m!7169938))

(assert (=> b!6365945 m!7169938))

(declare-fun m!7169940 () Bool)

(assert (=> b!6365945 m!7169940))

(declare-fun m!7169942 () Bool)

(assert (=> b!6365945 m!7169942))

(assert (=> b!6365945 m!7169940))

(assert (=> b!6365945 m!7169942))

(declare-fun m!7169944 () Bool)

(assert (=> b!6365945 m!7169944))

(assert (=> b!6365672 d!1996743))

(declare-fun d!1996745 () Bool)

(declare-fun e!3865242 () Bool)

(assert (=> d!1996745 e!3865242))

(declare-fun res!2619119 () Bool)

(assert (=> d!1996745 (=> (not res!2619119) (not e!3865242))))

(declare-fun lt!2367495 () List!65126)

(declare-fun noDuplicate!2105 (List!65126) Bool)

(assert (=> d!1996745 (= res!2619119 (noDuplicate!2105 lt!2367495))))

(declare-fun choose!47295 ((InoxSet Context!11318)) List!65126)

(assert (=> d!1996745 (= lt!2367495 (choose!47295 z!1189))))

(assert (=> d!1996745 (= (toList!10059 z!1189) lt!2367495)))

(declare-fun b!6365952 () Bool)

(declare-fun content!12282 (List!65126) (InoxSet Context!11318))

(assert (=> b!6365952 (= e!3865242 (= (content!12282 lt!2367495) z!1189))))

(assert (= (and d!1996745 res!2619119) b!6365952))

(declare-fun m!7169946 () Bool)

(assert (=> d!1996745 m!7169946))

(declare-fun m!7169948 () Bool)

(assert (=> d!1996745 m!7169948))

(declare-fun m!7169950 () Bool)

(assert (=> b!6365952 m!7169950))

(assert (=> b!6365671 d!1996745))

(declare-fun d!1996747 () Bool)

(declare-fun lambda!350733 () Int)

(declare-fun forall!15453 (List!65124 Int) Bool)

(assert (=> d!1996747 (= (inv!83934 setElem!43380) (forall!15453 (exprs!6159 setElem!43380) lambda!350733))))

(declare-fun bs!1594709 () Bool)

(assert (= bs!1594709 d!1996747))

(declare-fun m!7169956 () Bool)

(assert (=> bs!1594709 m!7169956))

(assert (=> setNonEmpty!43380 d!1996747))

(declare-fun d!1996751 () Bool)

(declare-fun lt!2367501 () Regex!16275)

(assert (=> d!1996751 (validRegex!8011 lt!2367501)))

(assert (=> d!1996751 (= lt!2367501 (generalisedUnion!2119 (unfocusZipperList!1696 zl!343)))))

(assert (=> d!1996751 (= (unfocusZipper!2017 zl!343) lt!2367501)))

(declare-fun bs!1594710 () Bool)

(assert (= bs!1594710 d!1996751))

(declare-fun m!7169958 () Bool)

(assert (=> bs!1594710 m!7169958))

(assert (=> bs!1594710 m!7169708))

(assert (=> bs!1594710 m!7169708))

(assert (=> bs!1594710 m!7169710))

(assert (=> b!6365661 d!1996751))

(declare-fun d!1996753 () Bool)

(declare-fun nullableFct!2215 (Regex!16275) Bool)

(assert (=> d!1996753 (= (nullable!6268 (regOne!33062 (regOne!33062 r!7292))) (nullableFct!2215 (regOne!33062 (regOne!33062 r!7292))))))

(declare-fun bs!1594711 () Bool)

(assert (= bs!1594711 d!1996753))

(declare-fun m!7169960 () Bool)

(assert (=> bs!1594711 m!7169960))

(assert (=> b!6365660 d!1996753))

(declare-fun b!6366055 () Bool)

(declare-fun e!3865302 () Option!16166)

(assert (=> b!6366055 (= e!3865302 (Some!16165 (tuple2!66509 Nil!65001 s!2326)))))

(declare-fun b!6366056 () Bool)

(declare-fun res!2619151 () Bool)

(declare-fun e!3865299 () Bool)

(assert (=> b!6366056 (=> (not res!2619151) (not e!3865299))))

(declare-fun lt!2367520 () Option!16166)

(declare-fun get!22497 (Option!16166) tuple2!66508)

(assert (=> b!6366056 (= res!2619151 (matchR!8458 (regOne!33062 r!7292) (_1!36557 (get!22497 lt!2367520))))))

(declare-fun b!6366057 () Bool)

(declare-fun res!2619149 () Bool)

(assert (=> b!6366057 (=> (not res!2619149) (not e!3865299))))

(assert (=> b!6366057 (= res!2619149 (matchR!8458 (regTwo!33062 r!7292) (_2!36557 (get!22497 lt!2367520))))))

(declare-fun b!6366058 () Bool)

(declare-fun e!3865303 () Bool)

(assert (=> b!6366058 (= e!3865303 (matchR!8458 (regTwo!33062 r!7292) s!2326))))

(declare-fun b!6366060 () Bool)

(declare-fun e!3865300 () Option!16166)

(assert (=> b!6366060 (= e!3865300 None!16165)))

(declare-fun b!6366061 () Bool)

(assert (=> b!6366061 (= e!3865302 e!3865300)))

(declare-fun c!1159074 () Bool)

(assert (=> b!6366061 (= c!1159074 ((_ is Nil!65001) s!2326))))

(declare-fun b!6366062 () Bool)

(declare-fun e!3865301 () Bool)

(assert (=> b!6366062 (= e!3865301 (not (isDefined!12869 lt!2367520)))))

(declare-fun b!6366063 () Bool)

(declare-fun ++!14344 (List!65125 List!65125) List!65125)

(assert (=> b!6366063 (= e!3865299 (= (++!14344 (_1!36557 (get!22497 lt!2367520)) (_2!36557 (get!22497 lt!2367520))) s!2326))))

(declare-fun d!1996755 () Bool)

(assert (=> d!1996755 e!3865301))

(declare-fun res!2619150 () Bool)

(assert (=> d!1996755 (=> res!2619150 e!3865301)))

(assert (=> d!1996755 (= res!2619150 e!3865299)))

(declare-fun res!2619147 () Bool)

(assert (=> d!1996755 (=> (not res!2619147) (not e!3865299))))

(assert (=> d!1996755 (= res!2619147 (isDefined!12869 lt!2367520))))

(assert (=> d!1996755 (= lt!2367520 e!3865302)))

(declare-fun c!1159075 () Bool)

(assert (=> d!1996755 (= c!1159075 e!3865303)))

(declare-fun res!2619148 () Bool)

(assert (=> d!1996755 (=> (not res!2619148) (not e!3865303))))

(assert (=> d!1996755 (= res!2619148 (matchR!8458 (regOne!33062 r!7292) Nil!65001))))

(assert (=> d!1996755 (validRegex!8011 (regOne!33062 r!7292))))

(assert (=> d!1996755 (= (findConcatSeparation!2580 (regOne!33062 r!7292) (regTwo!33062 r!7292) Nil!65001 s!2326 s!2326) lt!2367520)))

(declare-fun b!6366059 () Bool)

(declare-fun lt!2367518 () Unit!158431)

(declare-fun lt!2367519 () Unit!158431)

(assert (=> b!6366059 (= lt!2367518 lt!2367519)))

(assert (=> b!6366059 (= (++!14344 (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001)) (t!378721 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2439 (List!65125 C!32820 List!65125 List!65125) Unit!158431)

(assert (=> b!6366059 (= lt!2367519 (lemmaMoveElementToOtherListKeepsConcatEq!2439 Nil!65001 (h!71449 s!2326) (t!378721 s!2326) s!2326))))

(assert (=> b!6366059 (= e!3865300 (findConcatSeparation!2580 (regOne!33062 r!7292) (regTwo!33062 r!7292) (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001)) (t!378721 s!2326) s!2326))))

(assert (= (and d!1996755 res!2619148) b!6366058))

(assert (= (and d!1996755 c!1159075) b!6366055))

(assert (= (and d!1996755 (not c!1159075)) b!6366061))

(assert (= (and b!6366061 c!1159074) b!6366060))

(assert (= (and b!6366061 (not c!1159074)) b!6366059))

(assert (= (and d!1996755 res!2619147) b!6366056))

(assert (= (and b!6366056 res!2619151) b!6366057))

(assert (= (and b!6366057 res!2619149) b!6366063))

(assert (= (and d!1996755 (not res!2619150)) b!6366062))

(declare-fun m!7170038 () Bool)

(assert (=> d!1996755 m!7170038))

(declare-fun m!7170040 () Bool)

(assert (=> d!1996755 m!7170040))

(declare-fun m!7170042 () Bool)

(assert (=> d!1996755 m!7170042))

(declare-fun m!7170044 () Bool)

(assert (=> b!6366059 m!7170044))

(assert (=> b!6366059 m!7170044))

(declare-fun m!7170046 () Bool)

(assert (=> b!6366059 m!7170046))

(declare-fun m!7170048 () Bool)

(assert (=> b!6366059 m!7170048))

(assert (=> b!6366059 m!7170044))

(declare-fun m!7170050 () Bool)

(assert (=> b!6366059 m!7170050))

(declare-fun m!7170052 () Bool)

(assert (=> b!6366056 m!7170052))

(declare-fun m!7170054 () Bool)

(assert (=> b!6366056 m!7170054))

(assert (=> b!6366063 m!7170052))

(declare-fun m!7170058 () Bool)

(assert (=> b!6366063 m!7170058))

(assert (=> b!6366057 m!7170052))

(declare-fun m!7170060 () Bool)

(assert (=> b!6366057 m!7170060))

(declare-fun m!7170062 () Bool)

(assert (=> b!6366058 m!7170062))

(assert (=> b!6366062 m!7170038))

(assert (=> b!6365680 d!1996755))

(declare-fun d!1996783 () Bool)

(declare-fun choose!47296 (Int) Bool)

(assert (=> d!1996783 (= (Exists!3345 lambda!350710) (choose!47296 lambda!350710))))

(declare-fun bs!1594734 () Bool)

(assert (= bs!1594734 d!1996783))

(declare-fun m!7170064 () Bool)

(assert (=> bs!1594734 m!7170064))

(assert (=> b!6365680 d!1996783))

(declare-fun d!1996789 () Bool)

(assert (=> d!1996789 (= (Exists!3345 lambda!350709) (choose!47296 lambda!350709))))

(declare-fun bs!1594735 () Bool)

(assert (= bs!1594735 d!1996789))

(declare-fun m!7170066 () Bool)

(assert (=> bs!1594735 m!7170066))

(assert (=> b!6365680 d!1996789))

(declare-fun bs!1594736 () Bool)

(declare-fun d!1996791 () Bool)

(assert (= bs!1594736 (and d!1996791 b!6365680)))

(declare-fun lambda!350749 () Int)

(assert (=> bs!1594736 (= lambda!350749 lambda!350709)))

(assert (=> bs!1594736 (not (= lambda!350749 lambda!350710))))

(assert (=> d!1996791 true))

(assert (=> d!1996791 true))

(assert (=> d!1996791 true))

(assert (=> d!1996791 (= (isDefined!12869 (findConcatSeparation!2580 (regOne!33062 r!7292) (regTwo!33062 r!7292) Nil!65001 s!2326 s!2326)) (Exists!3345 lambda!350749))))

(declare-fun lt!2367523 () Unit!158431)

(declare-fun choose!47297 (Regex!16275 Regex!16275 List!65125) Unit!158431)

(assert (=> d!1996791 (= lt!2367523 (choose!47297 (regOne!33062 r!7292) (regTwo!33062 r!7292) s!2326))))

(assert (=> d!1996791 (validRegex!8011 (regOne!33062 r!7292))))

(assert (=> d!1996791 (= (lemmaFindConcatSeparationEquivalentToExists!2344 (regOne!33062 r!7292) (regTwo!33062 r!7292) s!2326) lt!2367523)))

(declare-fun bs!1594737 () Bool)

(assert (= bs!1594737 d!1996791))

(declare-fun m!7170068 () Bool)

(assert (=> bs!1594737 m!7170068))

(assert (=> bs!1594737 m!7169696))

(assert (=> bs!1594737 m!7169698))

(assert (=> bs!1594737 m!7170042))

(assert (=> bs!1594737 m!7169696))

(declare-fun m!7170070 () Bool)

(assert (=> bs!1594737 m!7170070))

(assert (=> b!6365680 d!1996791))

(declare-fun bs!1594738 () Bool)

(declare-fun d!1996793 () Bool)

(assert (= bs!1594738 (and d!1996793 b!6365680)))

(declare-fun lambda!350754 () Int)

(assert (=> bs!1594738 (= lambda!350754 lambda!350709)))

(assert (=> bs!1594738 (not (= lambda!350754 lambda!350710))))

(declare-fun bs!1594739 () Bool)

(assert (= bs!1594739 (and d!1996793 d!1996791)))

(assert (=> bs!1594739 (= lambda!350754 lambda!350749)))

(assert (=> d!1996793 true))

(assert (=> d!1996793 true))

(assert (=> d!1996793 true))

(declare-fun lambda!350755 () Int)

(assert (=> bs!1594738 (not (= lambda!350755 lambda!350709))))

(assert (=> bs!1594738 (= lambda!350755 lambda!350710)))

(assert (=> bs!1594739 (not (= lambda!350755 lambda!350749))))

(declare-fun bs!1594740 () Bool)

(assert (= bs!1594740 d!1996793))

(assert (=> bs!1594740 (not (= lambda!350755 lambda!350754))))

(assert (=> d!1996793 true))

(assert (=> d!1996793 true))

(assert (=> d!1996793 true))

(assert (=> d!1996793 (= (Exists!3345 lambda!350754) (Exists!3345 lambda!350755))))

(declare-fun lt!2367526 () Unit!158431)

(declare-fun choose!47298 (Regex!16275 Regex!16275 List!65125) Unit!158431)

(assert (=> d!1996793 (= lt!2367526 (choose!47298 (regOne!33062 r!7292) (regTwo!33062 r!7292) s!2326))))

(assert (=> d!1996793 (validRegex!8011 (regOne!33062 r!7292))))

(assert (=> d!1996793 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1882 (regOne!33062 r!7292) (regTwo!33062 r!7292) s!2326) lt!2367526)))

(declare-fun m!7170072 () Bool)

(assert (=> bs!1594740 m!7170072))

(declare-fun m!7170074 () Bool)

(assert (=> bs!1594740 m!7170074))

(declare-fun m!7170076 () Bool)

(assert (=> bs!1594740 m!7170076))

(assert (=> bs!1594740 m!7170042))

(assert (=> b!6365680 d!1996793))

(declare-fun d!1996795 () Bool)

(declare-fun isEmpty!37114 (Option!16166) Bool)

(assert (=> d!1996795 (= (isDefined!12869 (findConcatSeparation!2580 (regOne!33062 r!7292) (regTwo!33062 r!7292) Nil!65001 s!2326 s!2326)) (not (isEmpty!37114 (findConcatSeparation!2580 (regOne!33062 r!7292) (regTwo!33062 r!7292) Nil!65001 s!2326 s!2326))))))

(declare-fun bs!1594741 () Bool)

(assert (= bs!1594741 d!1996795))

(assert (=> bs!1594741 m!7169696))

(declare-fun m!7170078 () Bool)

(assert (=> bs!1594741 m!7170078))

(assert (=> b!6365680 d!1996795))

(declare-fun d!1996797 () Bool)

(declare-fun choose!47299 ((InoxSet Context!11318) Int) (InoxSet Context!11318))

(assert (=> d!1996797 (= (flatMap!1780 lt!2367451 lambda!350711) (choose!47299 lt!2367451 lambda!350711))))

(declare-fun bs!1594742 () Bool)

(assert (= bs!1594742 d!1996797))

(declare-fun m!7170080 () Bool)

(assert (=> bs!1594742 m!7170080))

(assert (=> b!6365679 d!1996797))

(declare-fun b!6366117 () Bool)

(declare-fun e!3865328 () (InoxSet Context!11318))

(assert (=> b!6366117 (= e!3865328 ((as const (Array Context!11318 Bool)) false))))

(declare-fun call!543351 () (InoxSet Context!11318))

(declare-fun b!6366118 () Bool)

(declare-fun e!3865329 () (InoxSet Context!11318))

(assert (=> b!6366118 (= e!3865329 ((_ map or) call!543351 (derivationStepZipperUp!1449 (Context!11319 (t!378720 (exprs!6159 lt!2367457))) (h!71449 s!2326))))))

(declare-fun d!1996799 () Bool)

(declare-fun c!1159080 () Bool)

(declare-fun e!3865330 () Bool)

(assert (=> d!1996799 (= c!1159080 e!3865330)))

(declare-fun res!2619166 () Bool)

(assert (=> d!1996799 (=> (not res!2619166) (not e!3865330))))

(assert (=> d!1996799 (= res!2619166 ((_ is Cons!65000) (exprs!6159 lt!2367457)))))

(assert (=> d!1996799 (= (derivationStepZipperUp!1449 lt!2367457 (h!71449 s!2326)) e!3865329)))

(declare-fun b!6366119 () Bool)

(assert (=> b!6366119 (= e!3865330 (nullable!6268 (h!71448 (exprs!6159 lt!2367457))))))

(declare-fun bm!543346 () Bool)

(assert (=> bm!543346 (= call!543351 (derivationStepZipperDown!1523 (h!71448 (exprs!6159 lt!2367457)) (Context!11319 (t!378720 (exprs!6159 lt!2367457))) (h!71449 s!2326)))))

(declare-fun b!6366120 () Bool)

(assert (=> b!6366120 (= e!3865328 call!543351)))

(declare-fun b!6366121 () Bool)

(assert (=> b!6366121 (= e!3865329 e!3865328)))

(declare-fun c!1159081 () Bool)

(assert (=> b!6366121 (= c!1159081 ((_ is Cons!65000) (exprs!6159 lt!2367457)))))

(assert (= (and d!1996799 res!2619166) b!6366119))

(assert (= (and d!1996799 c!1159080) b!6366118))

(assert (= (and d!1996799 (not c!1159080)) b!6366121))

(assert (= (and b!6366121 c!1159081) b!6366120))

(assert (= (and b!6366121 (not c!1159081)) b!6366117))

(assert (= (or b!6366118 b!6366120) bm!543346))

(declare-fun m!7170082 () Bool)

(assert (=> b!6366118 m!7170082))

(declare-fun m!7170084 () Bool)

(assert (=> b!6366119 m!7170084))

(declare-fun m!7170086 () Bool)

(assert (=> bm!543346 m!7170086))

(assert (=> b!6365679 d!1996799))

(declare-fun d!1996801 () Bool)

(declare-fun dynLambda!25785 (Int Context!11318) (InoxSet Context!11318))

(assert (=> d!1996801 (= (flatMap!1780 lt!2367451 lambda!350711) (dynLambda!25785 lambda!350711 lt!2367457))))

(declare-fun lt!2367529 () Unit!158431)

(declare-fun choose!47300 ((InoxSet Context!11318) Context!11318 Int) Unit!158431)

(assert (=> d!1996801 (= lt!2367529 (choose!47300 lt!2367451 lt!2367457 lambda!350711))))

(assert (=> d!1996801 (= lt!2367451 (store ((as const (Array Context!11318 Bool)) false) lt!2367457 true))))

(assert (=> d!1996801 (= (lemmaFlatMapOnSingletonSet!1306 lt!2367451 lt!2367457 lambda!350711) lt!2367529)))

(declare-fun b_lambda!241957 () Bool)

(assert (=> (not b_lambda!241957) (not d!1996801)))

(declare-fun bs!1594743 () Bool)

(assert (= bs!1594743 d!1996801))

(assert (=> bs!1594743 m!7169712))

(declare-fun m!7170088 () Bool)

(assert (=> bs!1594743 m!7170088))

(declare-fun m!7170090 () Bool)

(assert (=> bs!1594743 m!7170090))

(assert (=> bs!1594743 m!7169714))

(assert (=> b!6365679 d!1996801))

(declare-fun bs!1594744 () Bool)

(declare-fun d!1996803 () Bool)

(assert (= bs!1594744 (and d!1996803 b!6365668)))

(declare-fun lambda!350758 () Int)

(assert (=> bs!1594744 (= lambda!350758 lambda!350711)))

(assert (=> d!1996803 true))

(assert (=> d!1996803 (= (derivationStepZipper!2241 lt!2367451 (h!71449 s!2326)) (flatMap!1780 lt!2367451 lambda!350758))))

(declare-fun bs!1594745 () Bool)

(assert (= bs!1594745 d!1996803))

(declare-fun m!7170092 () Bool)

(assert (=> bs!1594745 m!7170092))

(assert (=> b!6365679 d!1996803))

(declare-fun bs!1594746 () Bool)

(declare-fun d!1996805 () Bool)

(assert (= bs!1594746 (and d!1996805 d!1996747)))

(declare-fun lambda!350759 () Int)

(assert (=> bs!1594746 (= lambda!350759 lambda!350733)))

(assert (=> d!1996805 (= (inv!83934 (h!71450 zl!343)) (forall!15453 (exprs!6159 (h!71450 zl!343)) lambda!350759))))

(declare-fun bs!1594747 () Bool)

(assert (= bs!1594747 d!1996805))

(declare-fun m!7170094 () Bool)

(assert (=> bs!1594747 m!7170094))

(assert (=> b!6365659 d!1996805))

(declare-fun b!6366146 () Bool)

(declare-fun e!3865344 () (InoxSet Context!11318))

(assert (=> b!6366146 (= e!3865344 ((as const (Array Context!11318 Bool)) false))))

(declare-fun b!6366147 () Bool)

(declare-fun call!543368 () (InoxSet Context!11318))

(assert (=> b!6366147 (= e!3865344 call!543368)))

(declare-fun bm!543359 () Bool)

(declare-fun call!543364 () List!65124)

(declare-fun call!543369 () List!65124)

(assert (=> bm!543359 (= call!543364 call!543369)))

(declare-fun d!1996807 () Bool)

(declare-fun c!1159094 () Bool)

(assert (=> d!1996807 (= c!1159094 (and ((_ is ElementMatch!16275) (reg!16604 (regOne!33062 r!7292))) (= (c!1158964 (reg!16604 (regOne!33062 r!7292))) (h!71449 s!2326))))))

(declare-fun e!3865345 () (InoxSet Context!11318))

(assert (=> d!1996807 (= (derivationStepZipperDown!1523 (reg!16604 (regOne!33062 r!7292)) (Context!11319 lt!2367453) (h!71449 s!2326)) e!3865345)))

(declare-fun b!6366148 () Bool)

(declare-fun c!1159096 () Bool)

(declare-fun e!3865343 () Bool)

(assert (=> b!6366148 (= c!1159096 e!3865343)))

(declare-fun res!2619169 () Bool)

(assert (=> b!6366148 (=> (not res!2619169) (not e!3865343))))

(assert (=> b!6366148 (= res!2619169 ((_ is Concat!25120) (reg!16604 (regOne!33062 r!7292))))))

(declare-fun e!3865348 () (InoxSet Context!11318))

(declare-fun e!3865346 () (InoxSet Context!11318))

(assert (=> b!6366148 (= e!3865348 e!3865346)))

(declare-fun b!6366149 () Bool)

(declare-fun c!1159097 () Bool)

(assert (=> b!6366149 (= c!1159097 ((_ is Star!16275) (reg!16604 (regOne!33062 r!7292))))))

(declare-fun e!3865347 () (InoxSet Context!11318))

(assert (=> b!6366149 (= e!3865347 e!3865344)))

(declare-fun b!6366150 () Bool)

(assert (=> b!6366150 (= e!3865345 (store ((as const (Array Context!11318 Bool)) false) (Context!11319 lt!2367453) true))))

(declare-fun b!6366151 () Bool)

(declare-fun call!543367 () (InoxSet Context!11318))

(declare-fun call!543366 () (InoxSet Context!11318))

(assert (=> b!6366151 (= e!3865348 ((_ map or) call!543367 call!543366))))

(declare-fun bm!543360 () Bool)

(declare-fun c!1159098 () Bool)

(assert (=> bm!543360 (= call!543366 (derivationStepZipperDown!1523 (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292)))) (ite c!1159098 (Context!11319 lt!2367453) (Context!11319 call!543369)) (h!71449 s!2326)))))

(declare-fun bm!543361 () Bool)

(declare-fun call!543365 () (InoxSet Context!11318))

(assert (=> bm!543361 (= call!543368 call!543365)))

(declare-fun b!6366152 () Bool)

(assert (=> b!6366152 (= e!3865343 (nullable!6268 (regOne!33062 (reg!16604 (regOne!33062 r!7292)))))))

(declare-fun bm!543362 () Bool)

(declare-fun c!1159095 () Bool)

(assert (=> bm!543362 (= call!543367 (derivationStepZipperDown!1523 (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292)))))) (ite (or c!1159098 c!1159096) (Context!11319 lt!2367453) (Context!11319 call!543364)) (h!71449 s!2326)))))

(declare-fun b!6366153 () Bool)

(assert (=> b!6366153 (= e!3865347 call!543368)))

(declare-fun bm!543363 () Bool)

(declare-fun $colon$colon!2136 (List!65124 Regex!16275) List!65124)

(assert (=> bm!543363 (= call!543369 ($colon$colon!2136 (exprs!6159 (Context!11319 lt!2367453)) (ite (or c!1159096 c!1159095) (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (regOne!33062 r!7292)))))))

(declare-fun b!6366154 () Bool)

(assert (=> b!6366154 (= e!3865345 e!3865348)))

(assert (=> b!6366154 (= c!1159098 ((_ is Union!16275) (reg!16604 (regOne!33062 r!7292))))))

(declare-fun bm!543364 () Bool)

(assert (=> bm!543364 (= call!543365 call!543367)))

(declare-fun b!6366155 () Bool)

(assert (=> b!6366155 (= e!3865346 e!3865347)))

(assert (=> b!6366155 (= c!1159095 ((_ is Concat!25120) (reg!16604 (regOne!33062 r!7292))))))

(declare-fun b!6366156 () Bool)

(assert (=> b!6366156 (= e!3865346 ((_ map or) call!543366 call!543365))))

(assert (= (and d!1996807 c!1159094) b!6366150))

(assert (= (and d!1996807 (not c!1159094)) b!6366154))

(assert (= (and b!6366154 c!1159098) b!6366151))

(assert (= (and b!6366154 (not c!1159098)) b!6366148))

(assert (= (and b!6366148 res!2619169) b!6366152))

(assert (= (and b!6366148 c!1159096) b!6366156))

(assert (= (and b!6366148 (not c!1159096)) b!6366155))

(assert (= (and b!6366155 c!1159095) b!6366153))

(assert (= (and b!6366155 (not c!1159095)) b!6366149))

(assert (= (and b!6366149 c!1159097) b!6366147))

(assert (= (and b!6366149 (not c!1159097)) b!6366146))

(assert (= (or b!6366153 b!6366147) bm!543359))

(assert (= (or b!6366153 b!6366147) bm!543361))

(assert (= (or b!6366156 bm!543359) bm!543363))

(assert (= (or b!6366156 bm!543361) bm!543364))

(assert (= (or b!6366151 b!6366156) bm!543360))

(assert (= (or b!6366151 bm!543364) bm!543362))

(declare-fun m!7170096 () Bool)

(assert (=> bm!543360 m!7170096))

(declare-fun m!7170098 () Bool)

(assert (=> bm!543363 m!7170098))

(declare-fun m!7170100 () Bool)

(assert (=> b!6366150 m!7170100))

(declare-fun m!7170102 () Bool)

(assert (=> bm!543362 m!7170102))

(declare-fun m!7170104 () Bool)

(assert (=> b!6366152 m!7170104))

(assert (=> b!6365658 d!1996807))

(declare-fun bs!1594748 () Bool)

(declare-fun d!1996809 () Bool)

(assert (= bs!1594748 (and d!1996809 d!1996747)))

(declare-fun lambda!350762 () Int)

(assert (=> bs!1594748 (= lambda!350762 lambda!350733)))

(declare-fun bs!1594749 () Bool)

(assert (= bs!1594749 (and d!1996809 d!1996805)))

(assert (=> bs!1594749 (= lambda!350762 lambda!350759)))

(declare-fun b!6366177 () Bool)

(declare-fun e!3865365 () Regex!16275)

(assert (=> b!6366177 (= e!3865365 (h!71448 (unfocusZipperList!1696 zl!343)))))

(declare-fun b!6366178 () Bool)

(declare-fun e!3865362 () Bool)

(declare-fun lt!2367532 () Regex!16275)

(declare-fun head!13043 (List!65124) Regex!16275)

(assert (=> b!6366178 (= e!3865362 (= lt!2367532 (head!13043 (unfocusZipperList!1696 zl!343))))))

(declare-fun b!6366179 () Bool)

(declare-fun e!3865366 () Regex!16275)

(assert (=> b!6366179 (= e!3865365 e!3865366)))

(declare-fun c!1159110 () Bool)

(assert (=> b!6366179 (= c!1159110 ((_ is Cons!65000) (unfocusZipperList!1696 zl!343)))))

(declare-fun b!6366180 () Bool)

(declare-fun e!3865364 () Bool)

(declare-fun e!3865361 () Bool)

(assert (=> b!6366180 (= e!3865364 e!3865361)))

(declare-fun c!1159107 () Bool)

(assert (=> b!6366180 (= c!1159107 (isEmpty!37110 (unfocusZipperList!1696 zl!343)))))

(declare-fun b!6366181 () Bool)

(assert (=> b!6366181 (= e!3865366 EmptyLang!16275)))

(declare-fun b!6366182 () Bool)

(declare-fun e!3865363 () Bool)

(assert (=> b!6366182 (= e!3865363 (isEmpty!37110 (t!378720 (unfocusZipperList!1696 zl!343))))))

(assert (=> d!1996809 e!3865364))

(declare-fun res!2619175 () Bool)

(assert (=> d!1996809 (=> (not res!2619175) (not e!3865364))))

(assert (=> d!1996809 (= res!2619175 (validRegex!8011 lt!2367532))))

(assert (=> d!1996809 (= lt!2367532 e!3865365)))

(declare-fun c!1159108 () Bool)

(assert (=> d!1996809 (= c!1159108 e!3865363)))

(declare-fun res!2619174 () Bool)

(assert (=> d!1996809 (=> (not res!2619174) (not e!3865363))))

(assert (=> d!1996809 (= res!2619174 ((_ is Cons!65000) (unfocusZipperList!1696 zl!343)))))

(assert (=> d!1996809 (forall!15453 (unfocusZipperList!1696 zl!343) lambda!350762)))

(assert (=> d!1996809 (= (generalisedUnion!2119 (unfocusZipperList!1696 zl!343)) lt!2367532)))

(declare-fun b!6366183 () Bool)

(assert (=> b!6366183 (= e!3865366 (Union!16275 (h!71448 (unfocusZipperList!1696 zl!343)) (generalisedUnion!2119 (t!378720 (unfocusZipperList!1696 zl!343)))))))

(declare-fun b!6366184 () Bool)

(declare-fun isUnion!1114 (Regex!16275) Bool)

(assert (=> b!6366184 (= e!3865362 (isUnion!1114 lt!2367532))))

(declare-fun b!6366185 () Bool)

(declare-fun isEmptyLang!1684 (Regex!16275) Bool)

(assert (=> b!6366185 (= e!3865361 (isEmptyLang!1684 lt!2367532))))

(declare-fun b!6366186 () Bool)

(assert (=> b!6366186 (= e!3865361 e!3865362)))

(declare-fun c!1159109 () Bool)

(declare-fun tail!12128 (List!65124) List!65124)

(assert (=> b!6366186 (= c!1159109 (isEmpty!37110 (tail!12128 (unfocusZipperList!1696 zl!343))))))

(assert (= (and d!1996809 res!2619174) b!6366182))

(assert (= (and d!1996809 c!1159108) b!6366177))

(assert (= (and d!1996809 (not c!1159108)) b!6366179))

(assert (= (and b!6366179 c!1159110) b!6366183))

(assert (= (and b!6366179 (not c!1159110)) b!6366181))

(assert (= (and d!1996809 res!2619175) b!6366180))

(assert (= (and b!6366180 c!1159107) b!6366185))

(assert (= (and b!6366180 (not c!1159107)) b!6366186))

(assert (= (and b!6366186 c!1159109) b!6366178))

(assert (= (and b!6366186 (not c!1159109)) b!6366184))

(assert (=> b!6366180 m!7169708))

(declare-fun m!7170106 () Bool)

(assert (=> b!6366180 m!7170106))

(assert (=> b!6366186 m!7169708))

(declare-fun m!7170108 () Bool)

(assert (=> b!6366186 m!7170108))

(assert (=> b!6366186 m!7170108))

(declare-fun m!7170110 () Bool)

(assert (=> b!6366186 m!7170110))

(declare-fun m!7170112 () Bool)

(assert (=> b!6366184 m!7170112))

(declare-fun m!7170114 () Bool)

(assert (=> d!1996809 m!7170114))

(assert (=> d!1996809 m!7169708))

(declare-fun m!7170116 () Bool)

(assert (=> d!1996809 m!7170116))

(assert (=> b!6366178 m!7169708))

(declare-fun m!7170118 () Bool)

(assert (=> b!6366178 m!7170118))

(declare-fun m!7170120 () Bool)

(assert (=> b!6366183 m!7170120))

(declare-fun m!7170122 () Bool)

(assert (=> b!6366185 m!7170122))

(declare-fun m!7170124 () Bool)

(assert (=> b!6366182 m!7170124))

(assert (=> b!6365669 d!1996809))

(declare-fun bs!1594750 () Bool)

(declare-fun d!1996811 () Bool)

(assert (= bs!1594750 (and d!1996811 d!1996747)))

(declare-fun lambda!350765 () Int)

(assert (=> bs!1594750 (= lambda!350765 lambda!350733)))

(declare-fun bs!1594751 () Bool)

(assert (= bs!1594751 (and d!1996811 d!1996805)))

(assert (=> bs!1594751 (= lambda!350765 lambda!350759)))

(declare-fun bs!1594752 () Bool)

(assert (= bs!1594752 (and d!1996811 d!1996809)))

(assert (=> bs!1594752 (= lambda!350765 lambda!350762)))

(declare-fun lt!2367535 () List!65124)

(assert (=> d!1996811 (forall!15453 lt!2367535 lambda!350765)))

(declare-fun e!3865369 () List!65124)

(assert (=> d!1996811 (= lt!2367535 e!3865369)))

(declare-fun c!1159113 () Bool)

(assert (=> d!1996811 (= c!1159113 ((_ is Cons!65002) zl!343))))

(assert (=> d!1996811 (= (unfocusZipperList!1696 zl!343) lt!2367535)))

(declare-fun b!6366191 () Bool)

(assert (=> b!6366191 (= e!3865369 (Cons!65000 (generalisedConcat!1872 (exprs!6159 (h!71450 zl!343))) (unfocusZipperList!1696 (t!378722 zl!343))))))

(declare-fun b!6366192 () Bool)

(assert (=> b!6366192 (= e!3865369 Nil!65000)))

(assert (= (and d!1996811 c!1159113) b!6366191))

(assert (= (and d!1996811 (not c!1159113)) b!6366192))

(declare-fun m!7170126 () Bool)

(assert (=> d!1996811 m!7170126))

(assert (=> b!6366191 m!7169732))

(declare-fun m!7170128 () Bool)

(assert (=> b!6366191 m!7170128))

(assert (=> b!6365669 d!1996811))

(declare-fun d!1996813 () Bool)

(assert (=> d!1996813 (= (flatMap!1780 z!1189 lambda!350711) (dynLambda!25785 lambda!350711 (h!71450 zl!343)))))

(declare-fun lt!2367536 () Unit!158431)

(assert (=> d!1996813 (= lt!2367536 (choose!47300 z!1189 (h!71450 zl!343) lambda!350711))))

(assert (=> d!1996813 (= z!1189 (store ((as const (Array Context!11318 Bool)) false) (h!71450 zl!343) true))))

(assert (=> d!1996813 (= (lemmaFlatMapOnSingletonSet!1306 z!1189 (h!71450 zl!343) lambda!350711) lt!2367536)))

(declare-fun b_lambda!241959 () Bool)

(assert (=> (not b_lambda!241959) (not d!1996813)))

(declare-fun bs!1594753 () Bool)

(assert (= bs!1594753 d!1996813))

(assert (=> bs!1594753 m!7169752))

(declare-fun m!7170130 () Bool)

(assert (=> bs!1594753 m!7170130))

(declare-fun m!7170132 () Bool)

(assert (=> bs!1594753 m!7170132))

(declare-fun m!7170134 () Bool)

(assert (=> bs!1594753 m!7170134))

(assert (=> b!6365668 d!1996813))

(declare-fun d!1996815 () Bool)

(assert (=> d!1996815 (= (nullable!6268 (h!71448 (exprs!6159 (h!71450 zl!343)))) (nullableFct!2215 (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun bs!1594754 () Bool)

(assert (= bs!1594754 d!1996815))

(declare-fun m!7170136 () Bool)

(assert (=> bs!1594754 m!7170136))

(assert (=> b!6365668 d!1996815))

(declare-fun b!6366193 () Bool)

(declare-fun e!3865370 () (InoxSet Context!11318))

(assert (=> b!6366193 (= e!3865370 ((as const (Array Context!11318 Bool)) false))))

(declare-fun call!543370 () (InoxSet Context!11318))

(declare-fun e!3865371 () (InoxSet Context!11318))

(declare-fun b!6366194 () Bool)

(assert (=> b!6366194 (= e!3865371 ((_ map or) call!543370 (derivationStepZipperUp!1449 (Context!11319 (t!378720 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))) (h!71449 s!2326))))))

(declare-fun d!1996817 () Bool)

(declare-fun c!1159114 () Bool)

(declare-fun e!3865372 () Bool)

(assert (=> d!1996817 (= c!1159114 e!3865372)))

(declare-fun res!2619176 () Bool)

(assert (=> d!1996817 (=> (not res!2619176) (not e!3865372))))

(assert (=> d!1996817 (= res!2619176 ((_ is Cons!65000) (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343))))))))))

(assert (=> d!1996817 (= (derivationStepZipperUp!1449 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343))))) (h!71449 s!2326)) e!3865371)))

(declare-fun b!6366195 () Bool)

(assert (=> b!6366195 (= e!3865372 (nullable!6268 (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))))))

(declare-fun bm!543365 () Bool)

(assert (=> bm!543365 (= call!543370 (derivationStepZipperDown!1523 (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343))))))) (Context!11319 (t!378720 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))) (h!71449 s!2326)))))

(declare-fun b!6366196 () Bool)

(assert (=> b!6366196 (= e!3865370 call!543370)))

(declare-fun b!6366197 () Bool)

(assert (=> b!6366197 (= e!3865371 e!3865370)))

(declare-fun c!1159115 () Bool)

(assert (=> b!6366197 (= c!1159115 ((_ is Cons!65000) (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343))))))))))

(assert (= (and d!1996817 res!2619176) b!6366195))

(assert (= (and d!1996817 c!1159114) b!6366194))

(assert (= (and d!1996817 (not c!1159114)) b!6366197))

(assert (= (and b!6366197 c!1159115) b!6366196))

(assert (= (and b!6366197 (not c!1159115)) b!6366193))

(assert (= (or b!6366194 b!6366196) bm!543365))

(declare-fun m!7170138 () Bool)

(assert (=> b!6366194 m!7170138))

(declare-fun m!7170140 () Bool)

(assert (=> b!6366195 m!7170140))

(declare-fun m!7170142 () Bool)

(assert (=> bm!543365 m!7170142))

(assert (=> b!6365668 d!1996817))

(declare-fun b!6366198 () Bool)

(declare-fun e!3865373 () (InoxSet Context!11318))

(assert (=> b!6366198 (= e!3865373 ((as const (Array Context!11318 Bool)) false))))

(declare-fun e!3865374 () (InoxSet Context!11318))

(declare-fun call!543371 () (InoxSet Context!11318))

(declare-fun b!6366199 () Bool)

(assert (=> b!6366199 (= e!3865374 ((_ map or) call!543371 (derivationStepZipperUp!1449 (Context!11319 (t!378720 (exprs!6159 lt!2367450))) (h!71449 s!2326))))))

(declare-fun d!1996819 () Bool)

(declare-fun c!1159116 () Bool)

(declare-fun e!3865375 () Bool)

(assert (=> d!1996819 (= c!1159116 e!3865375)))

(declare-fun res!2619177 () Bool)

(assert (=> d!1996819 (=> (not res!2619177) (not e!3865375))))

(assert (=> d!1996819 (= res!2619177 ((_ is Cons!65000) (exprs!6159 lt!2367450)))))

(assert (=> d!1996819 (= (derivationStepZipperUp!1449 lt!2367450 (h!71449 s!2326)) e!3865374)))

(declare-fun b!6366200 () Bool)

(assert (=> b!6366200 (= e!3865375 (nullable!6268 (h!71448 (exprs!6159 lt!2367450))))))

(declare-fun bm!543366 () Bool)

(assert (=> bm!543366 (= call!543371 (derivationStepZipperDown!1523 (h!71448 (exprs!6159 lt!2367450)) (Context!11319 (t!378720 (exprs!6159 lt!2367450))) (h!71449 s!2326)))))

(declare-fun b!6366201 () Bool)

(assert (=> b!6366201 (= e!3865373 call!543371)))

(declare-fun b!6366202 () Bool)

(assert (=> b!6366202 (= e!3865374 e!3865373)))

(declare-fun c!1159117 () Bool)

(assert (=> b!6366202 (= c!1159117 ((_ is Cons!65000) (exprs!6159 lt!2367450)))))

(assert (= (and d!1996819 res!2619177) b!6366200))

(assert (= (and d!1996819 c!1159116) b!6366199))

(assert (= (and d!1996819 (not c!1159116)) b!6366202))

(assert (= (and b!6366202 c!1159117) b!6366201))

(assert (= (and b!6366202 (not c!1159117)) b!6366198))

(assert (= (or b!6366199 b!6366201) bm!543366))

(declare-fun m!7170144 () Bool)

(assert (=> b!6366199 m!7170144))

(declare-fun m!7170146 () Bool)

(assert (=> b!6366200 m!7170146))

(declare-fun m!7170148 () Bool)

(assert (=> bm!543366 m!7170148))

(assert (=> b!6365668 d!1996819))

(declare-fun d!1996821 () Bool)

(assert (=> d!1996821 (= (flatMap!1780 z!1189 lambda!350711) (choose!47299 z!1189 lambda!350711))))

(declare-fun bs!1594755 () Bool)

(assert (= bs!1594755 d!1996821))

(declare-fun m!7170150 () Bool)

(assert (=> bs!1594755 m!7170150))

(assert (=> b!6365668 d!1996821))

(declare-fun b!6366203 () Bool)

(declare-fun e!3865377 () (InoxSet Context!11318))

(assert (=> b!6366203 (= e!3865377 ((as const (Array Context!11318 Bool)) false))))

(declare-fun b!6366204 () Bool)

(declare-fun call!543376 () (InoxSet Context!11318))

(assert (=> b!6366204 (= e!3865377 call!543376)))

(declare-fun bm!543367 () Bool)

(declare-fun call!543372 () List!65124)

(declare-fun call!543377 () List!65124)

(assert (=> bm!543367 (= call!543372 call!543377)))

(declare-fun d!1996823 () Bool)

(declare-fun c!1159118 () Bool)

(assert (=> d!1996823 (= c!1159118 (and ((_ is ElementMatch!16275) (h!71448 (exprs!6159 (h!71450 zl!343)))) (= (c!1158964 (h!71448 (exprs!6159 (h!71450 zl!343)))) (h!71449 s!2326))))))

(declare-fun e!3865378 () (InoxSet Context!11318))

(assert (=> d!1996823 (= (derivationStepZipperDown!1523 (h!71448 (exprs!6159 (h!71450 zl!343))) lt!2367450 (h!71449 s!2326)) e!3865378)))

(declare-fun b!6366205 () Bool)

(declare-fun c!1159120 () Bool)

(declare-fun e!3865376 () Bool)

(assert (=> b!6366205 (= c!1159120 e!3865376)))

(declare-fun res!2619178 () Bool)

(assert (=> b!6366205 (=> (not res!2619178) (not e!3865376))))

(assert (=> b!6366205 (= res!2619178 ((_ is Concat!25120) (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun e!3865381 () (InoxSet Context!11318))

(declare-fun e!3865379 () (InoxSet Context!11318))

(assert (=> b!6366205 (= e!3865381 e!3865379)))

(declare-fun b!6366206 () Bool)

(declare-fun c!1159121 () Bool)

(assert (=> b!6366206 (= c!1159121 ((_ is Star!16275) (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun e!3865380 () (InoxSet Context!11318))

(assert (=> b!6366206 (= e!3865380 e!3865377)))

(declare-fun b!6366207 () Bool)

(assert (=> b!6366207 (= e!3865378 (store ((as const (Array Context!11318 Bool)) false) lt!2367450 true))))

(declare-fun b!6366208 () Bool)

(declare-fun call!543375 () (InoxSet Context!11318))

(declare-fun call!543374 () (InoxSet Context!11318))

(assert (=> b!6366208 (= e!3865381 ((_ map or) call!543375 call!543374))))

(declare-fun bm!543368 () Bool)

(declare-fun c!1159122 () Bool)

(assert (=> bm!543368 (= call!543374 (derivationStepZipperDown!1523 (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343))))) (ite c!1159122 lt!2367450 (Context!11319 call!543377)) (h!71449 s!2326)))))

(declare-fun bm!543369 () Bool)

(declare-fun call!543373 () (InoxSet Context!11318))

(assert (=> bm!543369 (= call!543376 call!543373)))

(declare-fun b!6366209 () Bool)

(assert (=> b!6366209 (= e!3865376 (nullable!6268 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343))))))))

(declare-fun c!1159119 () Bool)

(declare-fun bm!543370 () Bool)

(assert (=> bm!543370 (= call!543375 (derivationStepZipperDown!1523 (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343))))))) (ite (or c!1159122 c!1159120) lt!2367450 (Context!11319 call!543372)) (h!71449 s!2326)))))

(declare-fun b!6366210 () Bool)

(assert (=> b!6366210 (= e!3865380 call!543376)))

(declare-fun bm!543371 () Bool)

(assert (=> bm!543371 (= call!543377 ($colon$colon!2136 (exprs!6159 lt!2367450) (ite (or c!1159120 c!1159119) (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (h!71448 (exprs!6159 (h!71450 zl!343))))))))

(declare-fun b!6366211 () Bool)

(assert (=> b!6366211 (= e!3865378 e!3865381)))

(assert (=> b!6366211 (= c!1159122 ((_ is Union!16275) (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun bm!543372 () Bool)

(assert (=> bm!543372 (= call!543373 call!543375)))

(declare-fun b!6366212 () Bool)

(assert (=> b!6366212 (= e!3865379 e!3865380)))

(assert (=> b!6366212 (= c!1159119 ((_ is Concat!25120) (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun b!6366213 () Bool)

(assert (=> b!6366213 (= e!3865379 ((_ map or) call!543374 call!543373))))

(assert (= (and d!1996823 c!1159118) b!6366207))

(assert (= (and d!1996823 (not c!1159118)) b!6366211))

(assert (= (and b!6366211 c!1159122) b!6366208))

(assert (= (and b!6366211 (not c!1159122)) b!6366205))

(assert (= (and b!6366205 res!2619178) b!6366209))

(assert (= (and b!6366205 c!1159120) b!6366213))

(assert (= (and b!6366205 (not c!1159120)) b!6366212))

(assert (= (and b!6366212 c!1159119) b!6366210))

(assert (= (and b!6366212 (not c!1159119)) b!6366206))

(assert (= (and b!6366206 c!1159121) b!6366204))

(assert (= (and b!6366206 (not c!1159121)) b!6366203))

(assert (= (or b!6366210 b!6366204) bm!543367))

(assert (= (or b!6366210 b!6366204) bm!543369))

(assert (= (or b!6366213 bm!543367) bm!543371))

(assert (= (or b!6366213 bm!543369) bm!543372))

(assert (= (or b!6366208 b!6366213) bm!543368))

(assert (= (or b!6366208 bm!543372) bm!543370))

(declare-fun m!7170152 () Bool)

(assert (=> bm!543368 m!7170152))

(declare-fun m!7170154 () Bool)

(assert (=> bm!543371 m!7170154))

(declare-fun m!7170156 () Bool)

(assert (=> b!6366207 m!7170156))

(declare-fun m!7170158 () Bool)

(assert (=> bm!543370 m!7170158))

(declare-fun m!7170160 () Bool)

(assert (=> b!6366209 m!7170160))

(assert (=> b!6365668 d!1996823))

(declare-fun b!6366214 () Bool)

(declare-fun e!3865382 () (InoxSet Context!11318))

(assert (=> b!6366214 (= e!3865382 ((as const (Array Context!11318 Bool)) false))))

(declare-fun b!6366215 () Bool)

(declare-fun call!543378 () (InoxSet Context!11318))

(declare-fun e!3865383 () (InoxSet Context!11318))

(assert (=> b!6366215 (= e!3865383 ((_ map or) call!543378 (derivationStepZipperUp!1449 (Context!11319 (t!378720 (exprs!6159 (h!71450 zl!343)))) (h!71449 s!2326))))))

(declare-fun d!1996825 () Bool)

(declare-fun c!1159123 () Bool)

(declare-fun e!3865384 () Bool)

(assert (=> d!1996825 (= c!1159123 e!3865384)))

(declare-fun res!2619179 () Bool)

(assert (=> d!1996825 (=> (not res!2619179) (not e!3865384))))

(assert (=> d!1996825 (= res!2619179 ((_ is Cons!65000) (exprs!6159 (h!71450 zl!343))))))

(assert (=> d!1996825 (= (derivationStepZipperUp!1449 (h!71450 zl!343) (h!71449 s!2326)) e!3865383)))

(declare-fun b!6366216 () Bool)

(assert (=> b!6366216 (= e!3865384 (nullable!6268 (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun bm!543373 () Bool)

(assert (=> bm!543373 (= call!543378 (derivationStepZipperDown!1523 (h!71448 (exprs!6159 (h!71450 zl!343))) (Context!11319 (t!378720 (exprs!6159 (h!71450 zl!343)))) (h!71449 s!2326)))))

(declare-fun b!6366217 () Bool)

(assert (=> b!6366217 (= e!3865382 call!543378)))

(declare-fun b!6366218 () Bool)

(assert (=> b!6366218 (= e!3865383 e!3865382)))

(declare-fun c!1159124 () Bool)

(assert (=> b!6366218 (= c!1159124 ((_ is Cons!65000) (exprs!6159 (h!71450 zl!343))))))

(assert (= (and d!1996825 res!2619179) b!6366216))

(assert (= (and d!1996825 c!1159123) b!6366215))

(assert (= (and d!1996825 (not c!1159123)) b!6366218))

(assert (= (and b!6366218 c!1159124) b!6366217))

(assert (= (and b!6366218 (not c!1159124)) b!6366214))

(assert (= (or b!6366215 b!6366217) bm!543373))

(declare-fun m!7170162 () Bool)

(assert (=> b!6366215 m!7170162))

(assert (=> b!6366216 m!7169762))

(declare-fun m!7170164 () Bool)

(assert (=> bm!543373 m!7170164))

(assert (=> b!6365668 d!1996825))

(declare-fun d!1996827 () Bool)

(assert (=> d!1996827 (= (isEmpty!37110 (t!378720 (exprs!6159 (h!71450 zl!343)))) ((_ is Nil!65000) (t!378720 (exprs!6159 (h!71450 zl!343)))))))

(assert (=> b!6365678 d!1996827))

(declare-fun b!6366237 () Bool)

(declare-fun e!3865400 () Bool)

(declare-fun call!543387 () Bool)

(assert (=> b!6366237 (= e!3865400 call!543387)))

(declare-fun b!6366238 () Bool)

(declare-fun e!3865401 () Bool)

(declare-fun call!543386 () Bool)

(assert (=> b!6366238 (= e!3865401 call!543386)))

(declare-fun b!6366239 () Bool)

(declare-fun e!3865402 () Bool)

(assert (=> b!6366239 (= e!3865402 e!3865401)))

(declare-fun res!2619192 () Bool)

(assert (=> b!6366239 (= res!2619192 (not (nullable!6268 (reg!16604 r!7292))))))

(assert (=> b!6366239 (=> (not res!2619192) (not e!3865401))))

(declare-fun b!6366240 () Bool)

(declare-fun e!3865404 () Bool)

(assert (=> b!6366240 (= e!3865402 e!3865404)))

(declare-fun c!1159130 () Bool)

(assert (=> b!6366240 (= c!1159130 ((_ is Union!16275) r!7292))))

(declare-fun b!6366242 () Bool)

(declare-fun e!3865403 () Bool)

(assert (=> b!6366242 (= e!3865403 call!543387)))

(declare-fun bm!543380 () Bool)

(assert (=> bm!543380 (= call!543387 call!543386)))

(declare-fun b!6366243 () Bool)

(declare-fun res!2619194 () Bool)

(declare-fun e!3865405 () Bool)

(assert (=> b!6366243 (=> res!2619194 e!3865405)))

(assert (=> b!6366243 (= res!2619194 (not ((_ is Concat!25120) r!7292)))))

(assert (=> b!6366243 (= e!3865404 e!3865405)))

(declare-fun b!6366241 () Bool)

(declare-fun e!3865399 () Bool)

(assert (=> b!6366241 (= e!3865399 e!3865402)))

(declare-fun c!1159129 () Bool)

(assert (=> b!6366241 (= c!1159129 ((_ is Star!16275) r!7292))))

(declare-fun d!1996829 () Bool)

(declare-fun res!2619191 () Bool)

(assert (=> d!1996829 (=> res!2619191 e!3865399)))

(assert (=> d!1996829 (= res!2619191 ((_ is ElementMatch!16275) r!7292))))

(assert (=> d!1996829 (= (validRegex!8011 r!7292) e!3865399)))

(declare-fun b!6366244 () Bool)

(assert (=> b!6366244 (= e!3865405 e!3865403)))

(declare-fun res!2619193 () Bool)

(assert (=> b!6366244 (=> (not res!2619193) (not e!3865403))))

(declare-fun call!543385 () Bool)

(assert (=> b!6366244 (= res!2619193 call!543385)))

(declare-fun bm!543381 () Bool)

(assert (=> bm!543381 (= call!543385 (validRegex!8011 (ite c!1159130 (regOne!33063 r!7292) (regOne!33062 r!7292))))))

(declare-fun bm!543382 () Bool)

(assert (=> bm!543382 (= call!543386 (validRegex!8011 (ite c!1159129 (reg!16604 r!7292) (ite c!1159130 (regTwo!33063 r!7292) (regTwo!33062 r!7292)))))))

(declare-fun b!6366245 () Bool)

(declare-fun res!2619190 () Bool)

(assert (=> b!6366245 (=> (not res!2619190) (not e!3865400))))

(assert (=> b!6366245 (= res!2619190 call!543385)))

(assert (=> b!6366245 (= e!3865404 e!3865400)))

(assert (= (and d!1996829 (not res!2619191)) b!6366241))

(assert (= (and b!6366241 c!1159129) b!6366239))

(assert (= (and b!6366241 (not c!1159129)) b!6366240))

(assert (= (and b!6366239 res!2619192) b!6366238))

(assert (= (and b!6366240 c!1159130) b!6366245))

(assert (= (and b!6366240 (not c!1159130)) b!6366243))

(assert (= (and b!6366245 res!2619190) b!6366237))

(assert (= (and b!6366243 (not res!2619194)) b!6366244))

(assert (= (and b!6366244 res!2619193) b!6366242))

(assert (= (or b!6366237 b!6366242) bm!543380))

(assert (= (or b!6366245 b!6366244) bm!543381))

(assert (= (or b!6366238 bm!543380) bm!543382))

(declare-fun m!7170166 () Bool)

(assert (=> b!6366239 m!7170166))

(declare-fun m!7170168 () Bool)

(assert (=> bm!543381 m!7170168))

(declare-fun m!7170170 () Bool)

(assert (=> bm!543382 m!7170170))

(assert (=> start!630602 d!1996829))

(declare-fun bs!1594756 () Bool)

(declare-fun b!6366278 () Bool)

(assert (= bs!1594756 (and b!6366278 d!1996793)))

(declare-fun lambda!350770 () Int)

(assert (=> bs!1594756 (not (= lambda!350770 lambda!350755))))

(declare-fun bs!1594757 () Bool)

(assert (= bs!1594757 (and b!6366278 b!6365680)))

(assert (=> bs!1594757 (not (= lambda!350770 lambda!350709))))

(assert (=> bs!1594756 (not (= lambda!350770 lambda!350754))))

(declare-fun bs!1594758 () Bool)

(assert (= bs!1594758 (and b!6366278 d!1996791)))

(assert (=> bs!1594758 (not (= lambda!350770 lambda!350749))))

(assert (=> bs!1594757 (not (= lambda!350770 lambda!350710))))

(assert (=> b!6366278 true))

(assert (=> b!6366278 true))

(declare-fun bs!1594759 () Bool)

(declare-fun b!6366283 () Bool)

(assert (= bs!1594759 (and b!6366283 d!1996793)))

(declare-fun lambda!350771 () Int)

(assert (=> bs!1594759 (= lambda!350771 lambda!350755)))

(declare-fun bs!1594760 () Bool)

(assert (= bs!1594760 (and b!6366283 b!6365680)))

(assert (=> bs!1594760 (not (= lambda!350771 lambda!350709))))

(assert (=> bs!1594759 (not (= lambda!350771 lambda!350754))))

(declare-fun bs!1594761 () Bool)

(assert (= bs!1594761 (and b!6366283 d!1996791)))

(assert (=> bs!1594761 (not (= lambda!350771 lambda!350749))))

(declare-fun bs!1594762 () Bool)

(assert (= bs!1594762 (and b!6366283 b!6366278)))

(assert (=> bs!1594762 (not (= lambda!350771 lambda!350770))))

(assert (=> bs!1594760 (= lambda!350771 lambda!350710)))

(assert (=> b!6366283 true))

(assert (=> b!6366283 true))

(declare-fun e!3865427 () Bool)

(declare-fun call!543392 () Bool)

(assert (=> b!6366278 (= e!3865427 call!543392)))

(declare-fun b!6366279 () Bool)

(declare-fun e!3865425 () Bool)

(declare-fun e!3865424 () Bool)

(assert (=> b!6366279 (= e!3865425 e!3865424)))

(declare-fun res!2619212 () Bool)

(assert (=> b!6366279 (= res!2619212 (matchRSpec!3376 (regOne!33063 r!7292) s!2326))))

(assert (=> b!6366279 (=> res!2619212 e!3865424)))

(declare-fun bm!543387 () Bool)

(declare-fun c!1159141 () Bool)

(assert (=> bm!543387 (= call!543392 (Exists!3345 (ite c!1159141 lambda!350770 lambda!350771)))))

(declare-fun b!6366280 () Bool)

(declare-fun c!1159142 () Bool)

(assert (=> b!6366280 (= c!1159142 ((_ is Union!16275) r!7292))))

(declare-fun e!3865430 () Bool)

(assert (=> b!6366280 (= e!3865430 e!3865425)))

(declare-fun b!6366281 () Bool)

(declare-fun e!3865426 () Bool)

(declare-fun e!3865429 () Bool)

(assert (=> b!6366281 (= e!3865426 e!3865429)))

(declare-fun res!2619211 () Bool)

(assert (=> b!6366281 (= res!2619211 (not ((_ is EmptyLang!16275) r!7292)))))

(assert (=> b!6366281 (=> (not res!2619211) (not e!3865429))))

(declare-fun b!6366282 () Bool)

(declare-fun c!1159140 () Bool)

(assert (=> b!6366282 (= c!1159140 ((_ is ElementMatch!16275) r!7292))))

(assert (=> b!6366282 (= e!3865429 e!3865430)))

(declare-fun e!3865428 () Bool)

(assert (=> b!6366283 (= e!3865428 call!543392)))

(declare-fun b!6366284 () Bool)

(assert (=> b!6366284 (= e!3865430 (= s!2326 (Cons!65001 (c!1158964 r!7292) Nil!65001)))))

(declare-fun b!6366285 () Bool)

(declare-fun call!543393 () Bool)

(assert (=> b!6366285 (= e!3865426 call!543393)))

(declare-fun d!1996831 () Bool)

(declare-fun c!1159139 () Bool)

(assert (=> d!1996831 (= c!1159139 ((_ is EmptyExpr!16275) r!7292))))

(assert (=> d!1996831 (= (matchRSpec!3376 r!7292 s!2326) e!3865426)))

(declare-fun bm!543388 () Bool)

(assert (=> bm!543388 (= call!543393 (isEmpty!37113 s!2326))))

(declare-fun b!6366286 () Bool)

(assert (=> b!6366286 (= e!3865425 e!3865428)))

(assert (=> b!6366286 (= c!1159141 ((_ is Star!16275) r!7292))))

(declare-fun b!6366287 () Bool)

(assert (=> b!6366287 (= e!3865424 (matchRSpec!3376 (regTwo!33063 r!7292) s!2326))))

(declare-fun b!6366288 () Bool)

(declare-fun res!2619213 () Bool)

(assert (=> b!6366288 (=> res!2619213 e!3865427)))

(assert (=> b!6366288 (= res!2619213 call!543393)))

(assert (=> b!6366288 (= e!3865428 e!3865427)))

(assert (= (and d!1996831 c!1159139) b!6366285))

(assert (= (and d!1996831 (not c!1159139)) b!6366281))

(assert (= (and b!6366281 res!2619211) b!6366282))

(assert (= (and b!6366282 c!1159140) b!6366284))

(assert (= (and b!6366282 (not c!1159140)) b!6366280))

(assert (= (and b!6366280 c!1159142) b!6366279))

(assert (= (and b!6366280 (not c!1159142)) b!6366286))

(assert (= (and b!6366279 (not res!2619212)) b!6366287))

(assert (= (and b!6366286 c!1159141) b!6366288))

(assert (= (and b!6366286 (not c!1159141)) b!6366283))

(assert (= (and b!6366288 (not res!2619213)) b!6366278))

(assert (= (or b!6366278 b!6366283) bm!543387))

(assert (= (or b!6366285 b!6366288) bm!543388))

(declare-fun m!7170172 () Bool)

(assert (=> b!6366279 m!7170172))

(declare-fun m!7170174 () Bool)

(assert (=> bm!543387 m!7170174))

(assert (=> bm!543388 m!7169922))

(declare-fun m!7170176 () Bool)

(assert (=> b!6366287 m!7170176))

(assert (=> b!6365676 d!1996831))

(declare-fun b!6366317 () Bool)

(declare-fun e!3865448 () Bool)

(declare-fun derivativeStep!4980 (Regex!16275 C!32820) Regex!16275)

(assert (=> b!6366317 (= e!3865448 (matchR!8458 (derivativeStep!4980 r!7292 (head!13042 s!2326)) (tail!12127 s!2326)))))

(declare-fun d!1996833 () Bool)

(declare-fun e!3865445 () Bool)

(assert (=> d!1996833 e!3865445))

(declare-fun c!1159149 () Bool)

(assert (=> d!1996833 (= c!1159149 ((_ is EmptyExpr!16275) r!7292))))

(declare-fun lt!2367539 () Bool)

(assert (=> d!1996833 (= lt!2367539 e!3865448)))

(declare-fun c!1159151 () Bool)

(assert (=> d!1996833 (= c!1159151 (isEmpty!37113 s!2326))))

(assert (=> d!1996833 (validRegex!8011 r!7292)))

(assert (=> d!1996833 (= (matchR!8458 r!7292 s!2326) lt!2367539)))

(declare-fun b!6366318 () Bool)

(declare-fun res!2619232 () Bool)

(declare-fun e!3865450 () Bool)

(assert (=> b!6366318 (=> res!2619232 e!3865450)))

(assert (=> b!6366318 (= res!2619232 (not (isEmpty!37113 (tail!12127 s!2326))))))

(declare-fun b!6366319 () Bool)

(declare-fun e!3865446 () Bool)

(assert (=> b!6366319 (= e!3865446 (not lt!2367539))))

(declare-fun b!6366320 () Bool)

(declare-fun res!2619231 () Bool)

(declare-fun e!3865449 () Bool)

(assert (=> b!6366320 (=> res!2619231 e!3865449)))

(assert (=> b!6366320 (= res!2619231 (not ((_ is ElementMatch!16275) r!7292)))))

(assert (=> b!6366320 (= e!3865446 e!3865449)))

(declare-fun b!6366321 () Bool)

(declare-fun res!2619230 () Bool)

(declare-fun e!3865451 () Bool)

(assert (=> b!6366321 (=> (not res!2619230) (not e!3865451))))

(assert (=> b!6366321 (= res!2619230 (isEmpty!37113 (tail!12127 s!2326)))))

(declare-fun b!6366322 () Bool)

(declare-fun call!543396 () Bool)

(assert (=> b!6366322 (= e!3865445 (= lt!2367539 call!543396))))

(declare-fun b!6366323 () Bool)

(assert (=> b!6366323 (= e!3865448 (nullable!6268 r!7292))))

(declare-fun b!6366324 () Bool)

(assert (=> b!6366324 (= e!3865450 (not (= (head!13042 s!2326) (c!1158964 r!7292))))))

(declare-fun b!6366325 () Bool)

(declare-fun res!2619234 () Bool)

(assert (=> b!6366325 (=> (not res!2619234) (not e!3865451))))

(assert (=> b!6366325 (= res!2619234 (not call!543396))))

(declare-fun b!6366326 () Bool)

(declare-fun res!2619237 () Bool)

(assert (=> b!6366326 (=> res!2619237 e!3865449)))

(assert (=> b!6366326 (= res!2619237 e!3865451)))

(declare-fun res!2619236 () Bool)

(assert (=> b!6366326 (=> (not res!2619236) (not e!3865451))))

(assert (=> b!6366326 (= res!2619236 lt!2367539)))

(declare-fun b!6366327 () Bool)

(declare-fun e!3865447 () Bool)

(assert (=> b!6366327 (= e!3865449 e!3865447)))

(declare-fun res!2619235 () Bool)

(assert (=> b!6366327 (=> (not res!2619235) (not e!3865447))))

(assert (=> b!6366327 (= res!2619235 (not lt!2367539))))

(declare-fun bm!543391 () Bool)

(assert (=> bm!543391 (= call!543396 (isEmpty!37113 s!2326))))

(declare-fun b!6366328 () Bool)

(assert (=> b!6366328 (= e!3865451 (= (head!13042 s!2326) (c!1158964 r!7292)))))

(declare-fun b!6366329 () Bool)

(assert (=> b!6366329 (= e!3865447 e!3865450)))

(declare-fun res!2619233 () Bool)

(assert (=> b!6366329 (=> res!2619233 e!3865450)))

(assert (=> b!6366329 (= res!2619233 call!543396)))

(declare-fun b!6366330 () Bool)

(assert (=> b!6366330 (= e!3865445 e!3865446)))

(declare-fun c!1159150 () Bool)

(assert (=> b!6366330 (= c!1159150 ((_ is EmptyLang!16275) r!7292))))

(assert (= (and d!1996833 c!1159151) b!6366323))

(assert (= (and d!1996833 (not c!1159151)) b!6366317))

(assert (= (and d!1996833 c!1159149) b!6366322))

(assert (= (and d!1996833 (not c!1159149)) b!6366330))

(assert (= (and b!6366330 c!1159150) b!6366319))

(assert (= (and b!6366330 (not c!1159150)) b!6366320))

(assert (= (and b!6366320 (not res!2619231)) b!6366326))

(assert (= (and b!6366326 res!2619236) b!6366325))

(assert (= (and b!6366325 res!2619234) b!6366321))

(assert (= (and b!6366321 res!2619230) b!6366328))

(assert (= (and b!6366326 (not res!2619237)) b!6366327))

(assert (= (and b!6366327 res!2619235) b!6366329))

(assert (= (and b!6366329 (not res!2619233)) b!6366318))

(assert (= (and b!6366318 (not res!2619232)) b!6366324))

(assert (= (or b!6366322 b!6366325 b!6366329) bm!543391))

(assert (=> b!6366328 m!7169926))

(assert (=> b!6366317 m!7169926))

(assert (=> b!6366317 m!7169926))

(declare-fun m!7170178 () Bool)

(assert (=> b!6366317 m!7170178))

(assert (=> b!6366317 m!7169930))

(assert (=> b!6366317 m!7170178))

(assert (=> b!6366317 m!7169930))

(declare-fun m!7170180 () Bool)

(assert (=> b!6366317 m!7170180))

(assert (=> b!6366321 m!7169930))

(assert (=> b!6366321 m!7169930))

(declare-fun m!7170182 () Bool)

(assert (=> b!6366321 m!7170182))

(assert (=> bm!543391 m!7169922))

(assert (=> b!6366318 m!7169930))

(assert (=> b!6366318 m!7169930))

(assert (=> b!6366318 m!7170182))

(assert (=> b!6366324 m!7169926))

(assert (=> d!1996833 m!7169922))

(assert (=> d!1996833 m!7169772))

(declare-fun m!7170184 () Bool)

(assert (=> b!6366323 m!7170184))

(assert (=> b!6365676 d!1996833))

(declare-fun d!1996835 () Bool)

(assert (=> d!1996835 (= (matchR!8458 r!7292 s!2326) (matchRSpec!3376 r!7292 s!2326))))

(declare-fun lt!2367542 () Unit!158431)

(declare-fun choose!47301 (Regex!16275 List!65125) Unit!158431)

(assert (=> d!1996835 (= lt!2367542 (choose!47301 r!7292 s!2326))))

(assert (=> d!1996835 (validRegex!8011 r!7292)))

(assert (=> d!1996835 (= (mainMatchTheorem!3376 r!7292 s!2326) lt!2367542)))

(declare-fun bs!1594763 () Bool)

(assert (= bs!1594763 d!1996835))

(assert (=> bs!1594763 m!7169728))

(assert (=> bs!1594763 m!7169726))

(declare-fun m!7170186 () Bool)

(assert (=> bs!1594763 m!7170186))

(assert (=> bs!1594763 m!7169772))

(assert (=> b!6365676 d!1996835))

(declare-fun bs!1594764 () Bool)

(declare-fun d!1996837 () Bool)

(assert (= bs!1594764 (and d!1996837 d!1996747)))

(declare-fun lambda!350772 () Int)

(assert (=> bs!1594764 (= lambda!350772 lambda!350733)))

(declare-fun bs!1594765 () Bool)

(assert (= bs!1594765 (and d!1996837 d!1996805)))

(assert (=> bs!1594765 (= lambda!350772 lambda!350759)))

(declare-fun bs!1594766 () Bool)

(assert (= bs!1594766 (and d!1996837 d!1996809)))

(assert (=> bs!1594766 (= lambda!350772 lambda!350762)))

(declare-fun bs!1594767 () Bool)

(assert (= bs!1594767 (and d!1996837 d!1996811)))

(assert (=> bs!1594767 (= lambda!350772 lambda!350765)))

(assert (=> d!1996837 (= (inv!83934 lt!2367457) (forall!15453 (exprs!6159 lt!2367457) lambda!350772))))

(declare-fun bs!1594768 () Bool)

(assert (= bs!1594768 d!1996837))

(declare-fun m!7170188 () Bool)

(assert (=> bs!1594768 m!7170188))

(assert (=> b!6365675 d!1996837))

(declare-fun bs!1594769 () Bool)

(declare-fun d!1996839 () Bool)

(assert (= bs!1594769 (and d!1996839 d!1996811)))

(declare-fun lambda!350775 () Int)

(assert (=> bs!1594769 (= lambda!350775 lambda!350765)))

(declare-fun bs!1594770 () Bool)

(assert (= bs!1594770 (and d!1996839 d!1996747)))

(assert (=> bs!1594770 (= lambda!350775 lambda!350733)))

(declare-fun bs!1594771 () Bool)

(assert (= bs!1594771 (and d!1996839 d!1996837)))

(assert (=> bs!1594771 (= lambda!350775 lambda!350772)))

(declare-fun bs!1594772 () Bool)

(assert (= bs!1594772 (and d!1996839 d!1996805)))

(assert (=> bs!1594772 (= lambda!350775 lambda!350759)))

(declare-fun bs!1594773 () Bool)

(assert (= bs!1594773 (and d!1996839 d!1996809)))

(assert (=> bs!1594773 (= lambda!350775 lambda!350762)))

(declare-fun b!6366351 () Bool)

(declare-fun e!3865465 () Bool)

(declare-fun e!3865467 () Bool)

(assert (=> b!6366351 (= e!3865465 e!3865467)))

(declare-fun c!1159161 () Bool)

(assert (=> b!6366351 (= c!1159161 (isEmpty!37110 (exprs!6159 (h!71450 zl!343))))))

(declare-fun b!6366353 () Bool)

(declare-fun e!3865468 () Regex!16275)

(assert (=> b!6366353 (= e!3865468 EmptyExpr!16275)))

(declare-fun b!6366354 () Bool)

(declare-fun lt!2367545 () Regex!16275)

(declare-fun isEmptyExpr!1677 (Regex!16275) Bool)

(assert (=> b!6366354 (= e!3865467 (isEmptyExpr!1677 lt!2367545))))

(declare-fun b!6366355 () Bool)

(declare-fun e!3865466 () Bool)

(declare-fun isConcat!1200 (Regex!16275) Bool)

(assert (=> b!6366355 (= e!3865466 (isConcat!1200 lt!2367545))))

(declare-fun b!6366356 () Bool)

(assert (=> b!6366356 (= e!3865466 (= lt!2367545 (head!13043 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun b!6366352 () Bool)

(assert (=> b!6366352 (= e!3865468 (Concat!25120 (h!71448 (exprs!6159 (h!71450 zl!343))) (generalisedConcat!1872 (t!378720 (exprs!6159 (h!71450 zl!343))))))))

(assert (=> d!1996839 e!3865465))

(declare-fun res!2619243 () Bool)

(assert (=> d!1996839 (=> (not res!2619243) (not e!3865465))))

(assert (=> d!1996839 (= res!2619243 (validRegex!8011 lt!2367545))))

(declare-fun e!3865464 () Regex!16275)

(assert (=> d!1996839 (= lt!2367545 e!3865464)))

(declare-fun c!1159160 () Bool)

(declare-fun e!3865469 () Bool)

(assert (=> d!1996839 (= c!1159160 e!3865469)))

(declare-fun res!2619242 () Bool)

(assert (=> d!1996839 (=> (not res!2619242) (not e!3865469))))

(assert (=> d!1996839 (= res!2619242 ((_ is Cons!65000) (exprs!6159 (h!71450 zl!343))))))

(assert (=> d!1996839 (forall!15453 (exprs!6159 (h!71450 zl!343)) lambda!350775)))

(assert (=> d!1996839 (= (generalisedConcat!1872 (exprs!6159 (h!71450 zl!343))) lt!2367545)))

(declare-fun b!6366357 () Bool)

(assert (=> b!6366357 (= e!3865464 (h!71448 (exprs!6159 (h!71450 zl!343))))))

(declare-fun b!6366358 () Bool)

(assert (=> b!6366358 (= e!3865467 e!3865466)))

(declare-fun c!1159162 () Bool)

(assert (=> b!6366358 (= c!1159162 (isEmpty!37110 (tail!12128 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun b!6366359 () Bool)

(assert (=> b!6366359 (= e!3865464 e!3865468)))

(declare-fun c!1159163 () Bool)

(assert (=> b!6366359 (= c!1159163 ((_ is Cons!65000) (exprs!6159 (h!71450 zl!343))))))

(declare-fun b!6366360 () Bool)

(assert (=> b!6366360 (= e!3865469 (isEmpty!37110 (t!378720 (exprs!6159 (h!71450 zl!343)))))))

(assert (= (and d!1996839 res!2619242) b!6366360))

(assert (= (and d!1996839 c!1159160) b!6366357))

(assert (= (and d!1996839 (not c!1159160)) b!6366359))

(assert (= (and b!6366359 c!1159163) b!6366352))

(assert (= (and b!6366359 (not c!1159163)) b!6366353))

(assert (= (and d!1996839 res!2619243) b!6366351))

(assert (= (and b!6366351 c!1159161) b!6366354))

(assert (= (and b!6366351 (not c!1159161)) b!6366358))

(assert (= (and b!6366358 c!1159162) b!6366356))

(assert (= (and b!6366358 (not c!1159162)) b!6366355))

(declare-fun m!7170190 () Bool)

(assert (=> b!6366354 m!7170190))

(declare-fun m!7170192 () Bool)

(assert (=> d!1996839 m!7170192))

(declare-fun m!7170194 () Bool)

(assert (=> d!1996839 m!7170194))

(declare-fun m!7170196 () Bool)

(assert (=> b!6366351 m!7170196))

(declare-fun m!7170198 () Bool)

(assert (=> b!6366355 m!7170198))

(declare-fun m!7170200 () Bool)

(assert (=> b!6366352 m!7170200))

(declare-fun m!7170202 () Bool)

(assert (=> b!6366358 m!7170202))

(assert (=> b!6366358 m!7170202))

(declare-fun m!7170204 () Bool)

(assert (=> b!6366358 m!7170204))

(assert (=> b!6366360 m!7169766))

(declare-fun m!7170206 () Bool)

(assert (=> b!6366356 m!7170206))

(assert (=> b!6365665 d!1996839))

(declare-fun d!1996841 () Bool)

(assert (=> d!1996841 (= (isEmpty!37109 (t!378722 zl!343)) ((_ is Nil!65002) (t!378722 zl!343)))))

(assert (=> b!6365674 d!1996841))

(declare-fun d!1996843 () Bool)

(declare-fun c!1159164 () Bool)

(assert (=> d!1996843 (= c!1159164 (isEmpty!37113 (t!378721 s!2326)))))

(declare-fun e!3865470 () Bool)

(assert (=> d!1996843 (= (matchZipper!2287 lt!2367449 (t!378721 s!2326)) e!3865470)))

(declare-fun b!6366361 () Bool)

(assert (=> b!6366361 (= e!3865470 (nullableZipper!2040 lt!2367449))))

(declare-fun b!6366362 () Bool)

(assert (=> b!6366362 (= e!3865470 (matchZipper!2287 (derivationStepZipper!2241 lt!2367449 (head!13042 (t!378721 s!2326))) (tail!12127 (t!378721 s!2326))))))

(assert (= (and d!1996843 c!1159164) b!6366361))

(assert (= (and d!1996843 (not c!1159164)) b!6366362))

(assert (=> d!1996843 m!7169934))

(declare-fun m!7170208 () Bool)

(assert (=> b!6366361 m!7170208))

(assert (=> b!6366362 m!7169938))

(assert (=> b!6366362 m!7169938))

(declare-fun m!7170210 () Bool)

(assert (=> b!6366362 m!7170210))

(assert (=> b!6366362 m!7169942))

(assert (=> b!6366362 m!7170210))

(assert (=> b!6366362 m!7169942))

(declare-fun m!7170212 () Bool)

(assert (=> b!6366362 m!7170212))

(assert (=> b!6365673 d!1996843))

(declare-fun d!1996845 () Bool)

(declare-fun e!3865473 () Bool)

(assert (=> d!1996845 (= (matchZipper!2287 ((_ map or) lt!2367446 lt!2367449) (t!378721 s!2326)) e!3865473)))

(declare-fun res!2619246 () Bool)

(assert (=> d!1996845 (=> res!2619246 e!3865473)))

(assert (=> d!1996845 (= res!2619246 (matchZipper!2287 lt!2367446 (t!378721 s!2326)))))

(declare-fun lt!2367548 () Unit!158431)

(declare-fun choose!47302 ((InoxSet Context!11318) (InoxSet Context!11318) List!65125) Unit!158431)

(assert (=> d!1996845 (= lt!2367548 (choose!47302 lt!2367446 lt!2367449 (t!378721 s!2326)))))

(assert (=> d!1996845 (= (lemmaZipperConcatMatchesSameAsBothZippers!1106 lt!2367446 lt!2367449 (t!378721 s!2326)) lt!2367548)))

(declare-fun b!6366365 () Bool)

(assert (=> b!6366365 (= e!3865473 (matchZipper!2287 lt!2367449 (t!378721 s!2326)))))

(assert (= (and d!1996845 (not res!2619246)) b!6366365))

(assert (=> d!1996845 m!7169748))

(assert (=> d!1996845 m!7169746))

(declare-fun m!7170214 () Bool)

(assert (=> d!1996845 m!7170214))

(assert (=> b!6366365 m!7169736))

(assert (=> b!6365683 d!1996845))

(declare-fun d!1996847 () Bool)

(declare-fun c!1159165 () Bool)

(assert (=> d!1996847 (= c!1159165 (isEmpty!37113 (t!378721 s!2326)))))

(declare-fun e!3865474 () Bool)

(assert (=> d!1996847 (= (matchZipper!2287 lt!2367446 (t!378721 s!2326)) e!3865474)))

(declare-fun b!6366366 () Bool)

(assert (=> b!6366366 (= e!3865474 (nullableZipper!2040 lt!2367446))))

(declare-fun b!6366367 () Bool)

(assert (=> b!6366367 (= e!3865474 (matchZipper!2287 (derivationStepZipper!2241 lt!2367446 (head!13042 (t!378721 s!2326))) (tail!12127 (t!378721 s!2326))))))

(assert (= (and d!1996847 c!1159165) b!6366366))

(assert (= (and d!1996847 (not c!1159165)) b!6366367))

(assert (=> d!1996847 m!7169934))

(declare-fun m!7170216 () Bool)

(assert (=> b!6366366 m!7170216))

(assert (=> b!6366367 m!7169938))

(assert (=> b!6366367 m!7169938))

(declare-fun m!7170218 () Bool)

(assert (=> b!6366367 m!7170218))

(assert (=> b!6366367 m!7169942))

(assert (=> b!6366367 m!7170218))

(assert (=> b!6366367 m!7169942))

(declare-fun m!7170220 () Bool)

(assert (=> b!6366367 m!7170220))

(assert (=> b!6365683 d!1996847))

(declare-fun d!1996849 () Bool)

(declare-fun c!1159166 () Bool)

(assert (=> d!1996849 (= c!1159166 (isEmpty!37113 (t!378721 s!2326)))))

(declare-fun e!3865475 () Bool)

(assert (=> d!1996849 (= (matchZipper!2287 ((_ map or) lt!2367446 lt!2367449) (t!378721 s!2326)) e!3865475)))

(declare-fun b!6366368 () Bool)

(assert (=> b!6366368 (= e!3865475 (nullableZipper!2040 ((_ map or) lt!2367446 lt!2367449)))))

(declare-fun b!6366369 () Bool)

(assert (=> b!6366369 (= e!3865475 (matchZipper!2287 (derivationStepZipper!2241 ((_ map or) lt!2367446 lt!2367449) (head!13042 (t!378721 s!2326))) (tail!12127 (t!378721 s!2326))))))

(assert (= (and d!1996849 c!1159166) b!6366368))

(assert (= (and d!1996849 (not c!1159166)) b!6366369))

(assert (=> d!1996849 m!7169934))

(declare-fun m!7170222 () Bool)

(assert (=> b!6366368 m!7170222))

(assert (=> b!6366369 m!7169938))

(assert (=> b!6366369 m!7169938))

(declare-fun m!7170224 () Bool)

(assert (=> b!6366369 m!7170224))

(assert (=> b!6366369 m!7169942))

(assert (=> b!6366369 m!7170224))

(assert (=> b!6366369 m!7169942))

(declare-fun m!7170226 () Bool)

(assert (=> b!6366369 m!7170226))

(assert (=> b!6365683 d!1996849))

(declare-fun b!6366381 () Bool)

(declare-fun e!3865478 () Bool)

(declare-fun tp!1772619 () Bool)

(declare-fun tp!1772621 () Bool)

(assert (=> b!6366381 (= e!3865478 (and tp!1772619 tp!1772621))))

(declare-fun b!6366383 () Bool)

(declare-fun tp!1772620 () Bool)

(declare-fun tp!1772622 () Bool)

(assert (=> b!6366383 (= e!3865478 (and tp!1772620 tp!1772622))))

(declare-fun b!6366380 () Bool)

(assert (=> b!6366380 (= e!3865478 tp_is_empty!41803)))

(declare-fun b!6366382 () Bool)

(declare-fun tp!1772623 () Bool)

(assert (=> b!6366382 (= e!3865478 tp!1772623)))

(assert (=> b!6365677 (= tp!1772545 e!3865478)))

(assert (= (and b!6365677 ((_ is ElementMatch!16275) (regOne!33063 r!7292))) b!6366380))

(assert (= (and b!6365677 ((_ is Concat!25120) (regOne!33063 r!7292))) b!6366381))

(assert (= (and b!6365677 ((_ is Star!16275) (regOne!33063 r!7292))) b!6366382))

(assert (= (and b!6365677 ((_ is Union!16275) (regOne!33063 r!7292))) b!6366383))

(declare-fun b!6366385 () Bool)

(declare-fun e!3865479 () Bool)

(declare-fun tp!1772624 () Bool)

(declare-fun tp!1772626 () Bool)

(assert (=> b!6366385 (= e!3865479 (and tp!1772624 tp!1772626))))

(declare-fun b!6366387 () Bool)

(declare-fun tp!1772625 () Bool)

(declare-fun tp!1772627 () Bool)

(assert (=> b!6366387 (= e!3865479 (and tp!1772625 tp!1772627))))

(declare-fun b!6366384 () Bool)

(assert (=> b!6366384 (= e!3865479 tp_is_empty!41803)))

(declare-fun b!6366386 () Bool)

(declare-fun tp!1772628 () Bool)

(assert (=> b!6366386 (= e!3865479 tp!1772628)))

(assert (=> b!6365677 (= tp!1772543 e!3865479)))

(assert (= (and b!6365677 ((_ is ElementMatch!16275) (regTwo!33063 r!7292))) b!6366384))

(assert (= (and b!6365677 ((_ is Concat!25120) (regTwo!33063 r!7292))) b!6366385))

(assert (= (and b!6365677 ((_ is Star!16275) (regTwo!33063 r!7292))) b!6366386))

(assert (= (and b!6365677 ((_ is Union!16275) (regTwo!33063 r!7292))) b!6366387))

(declare-fun b!6366389 () Bool)

(declare-fun e!3865480 () Bool)

(declare-fun tp!1772629 () Bool)

(declare-fun tp!1772631 () Bool)

(assert (=> b!6366389 (= e!3865480 (and tp!1772629 tp!1772631))))

(declare-fun b!6366391 () Bool)

(declare-fun tp!1772630 () Bool)

(declare-fun tp!1772632 () Bool)

(assert (=> b!6366391 (= e!3865480 (and tp!1772630 tp!1772632))))

(declare-fun b!6366388 () Bool)

(assert (=> b!6366388 (= e!3865480 tp_is_empty!41803)))

(declare-fun b!6366390 () Bool)

(declare-fun tp!1772633 () Bool)

(assert (=> b!6366390 (= e!3865480 tp!1772633)))

(assert (=> b!6365667 (= tp!1772550 e!3865480)))

(assert (= (and b!6365667 ((_ is ElementMatch!16275) (regOne!33062 r!7292))) b!6366388))

(assert (= (and b!6365667 ((_ is Concat!25120) (regOne!33062 r!7292))) b!6366389))

(assert (= (and b!6365667 ((_ is Star!16275) (regOne!33062 r!7292))) b!6366390))

(assert (= (and b!6365667 ((_ is Union!16275) (regOne!33062 r!7292))) b!6366391))

(declare-fun b!6366393 () Bool)

(declare-fun e!3865481 () Bool)

(declare-fun tp!1772634 () Bool)

(declare-fun tp!1772636 () Bool)

(assert (=> b!6366393 (= e!3865481 (and tp!1772634 tp!1772636))))

(declare-fun b!6366395 () Bool)

(declare-fun tp!1772635 () Bool)

(declare-fun tp!1772637 () Bool)

(assert (=> b!6366395 (= e!3865481 (and tp!1772635 tp!1772637))))

(declare-fun b!6366392 () Bool)

(assert (=> b!6366392 (= e!3865481 tp_is_empty!41803)))

(declare-fun b!6366394 () Bool)

(declare-fun tp!1772638 () Bool)

(assert (=> b!6366394 (= e!3865481 tp!1772638)))

(assert (=> b!6365667 (= tp!1772547 e!3865481)))

(assert (= (and b!6365667 ((_ is ElementMatch!16275) (regTwo!33062 r!7292))) b!6366392))

(assert (= (and b!6365667 ((_ is Concat!25120) (regTwo!33062 r!7292))) b!6366393))

(assert (= (and b!6365667 ((_ is Star!16275) (regTwo!33062 r!7292))) b!6366394))

(assert (= (and b!6365667 ((_ is Union!16275) (regTwo!33062 r!7292))) b!6366395))

(declare-fun condSetEmpty!43386 () Bool)

(assert (=> setNonEmpty!43380 (= condSetEmpty!43386 (= setRest!43380 ((as const (Array Context!11318 Bool)) false)))))

(declare-fun setRes!43386 () Bool)

(assert (=> setNonEmpty!43380 (= tp!1772541 setRes!43386)))

(declare-fun setIsEmpty!43386 () Bool)

(assert (=> setIsEmpty!43386 setRes!43386))

(declare-fun setElem!43386 () Context!11318)

(declare-fun e!3865484 () Bool)

(declare-fun setNonEmpty!43386 () Bool)

(declare-fun tp!1772643 () Bool)

(assert (=> setNonEmpty!43386 (= setRes!43386 (and tp!1772643 (inv!83934 setElem!43386) e!3865484))))

(declare-fun setRest!43386 () (InoxSet Context!11318))

(assert (=> setNonEmpty!43386 (= setRest!43380 ((_ map or) (store ((as const (Array Context!11318 Bool)) false) setElem!43386 true) setRest!43386))))

(declare-fun b!6366400 () Bool)

(declare-fun tp!1772644 () Bool)

(assert (=> b!6366400 (= e!3865484 tp!1772644)))

(assert (= (and setNonEmpty!43380 condSetEmpty!43386) setIsEmpty!43386))

(assert (= (and setNonEmpty!43380 (not condSetEmpty!43386)) setNonEmpty!43386))

(assert (= setNonEmpty!43386 b!6366400))

(declare-fun m!7170228 () Bool)

(assert (=> setNonEmpty!43386 m!7170228))

(declare-fun b!6366405 () Bool)

(declare-fun e!3865487 () Bool)

(declare-fun tp!1772649 () Bool)

(declare-fun tp!1772650 () Bool)

(assert (=> b!6366405 (= e!3865487 (and tp!1772649 tp!1772650))))

(assert (=> b!6365655 (= tp!1772549 e!3865487)))

(assert (= (and b!6365655 ((_ is Cons!65000) (exprs!6159 setElem!43380))) b!6366405))

(declare-fun b!6366407 () Bool)

(declare-fun e!3865488 () Bool)

(declare-fun tp!1772651 () Bool)

(declare-fun tp!1772653 () Bool)

(assert (=> b!6366407 (= e!3865488 (and tp!1772651 tp!1772653))))

(declare-fun b!6366409 () Bool)

(declare-fun tp!1772652 () Bool)

(declare-fun tp!1772654 () Bool)

(assert (=> b!6366409 (= e!3865488 (and tp!1772652 tp!1772654))))

(declare-fun b!6366406 () Bool)

(assert (=> b!6366406 (= e!3865488 tp_is_empty!41803)))

(declare-fun b!6366408 () Bool)

(declare-fun tp!1772655 () Bool)

(assert (=> b!6366408 (= e!3865488 tp!1772655)))

(assert (=> b!6365670 (= tp!1772544 e!3865488)))

(assert (= (and b!6365670 ((_ is ElementMatch!16275) (reg!16604 r!7292))) b!6366406))

(assert (= (and b!6365670 ((_ is Concat!25120) (reg!16604 r!7292))) b!6366407))

(assert (= (and b!6365670 ((_ is Star!16275) (reg!16604 r!7292))) b!6366408))

(assert (= (and b!6365670 ((_ is Union!16275) (reg!16604 r!7292))) b!6366409))

(declare-fun b!6366410 () Bool)

(declare-fun e!3865489 () Bool)

(declare-fun tp!1772656 () Bool)

(declare-fun tp!1772657 () Bool)

(assert (=> b!6366410 (= e!3865489 (and tp!1772656 tp!1772657))))

(assert (=> b!6365664 (= tp!1772542 e!3865489)))

(assert (= (and b!6365664 ((_ is Cons!65000) (exprs!6159 (h!71450 zl!343)))) b!6366410))

(declare-fun b!6366418 () Bool)

(declare-fun e!3865495 () Bool)

(declare-fun tp!1772662 () Bool)

(assert (=> b!6366418 (= e!3865495 tp!1772662)))

(declare-fun e!3865494 () Bool)

(declare-fun b!6366417 () Bool)

(declare-fun tp!1772663 () Bool)

(assert (=> b!6366417 (= e!3865494 (and (inv!83934 (h!71450 (t!378722 zl!343))) e!3865495 tp!1772663))))

(assert (=> b!6365659 (= tp!1772546 e!3865494)))

(assert (= b!6366417 b!6366418))

(assert (= (and b!6365659 ((_ is Cons!65002) (t!378722 zl!343))) b!6366417))

(declare-fun m!7170230 () Bool)

(assert (=> b!6366417 m!7170230))

(declare-fun b!6366423 () Bool)

(declare-fun e!3865498 () Bool)

(declare-fun tp!1772666 () Bool)

(assert (=> b!6366423 (= e!3865498 (and tp_is_empty!41803 tp!1772666))))

(assert (=> b!6365682 (= tp!1772548 e!3865498)))

(assert (= (and b!6365682 ((_ is Cons!65001) (t!378721 s!2326))) b!6366423))

(declare-fun b_lambda!241961 () Bool)

(assert (= b_lambda!241959 (or b!6365668 b_lambda!241961)))

(declare-fun bs!1594774 () Bool)

(declare-fun d!1996851 () Bool)

(assert (= bs!1594774 (and d!1996851 b!6365668)))

(assert (=> bs!1594774 (= (dynLambda!25785 lambda!350711 (h!71450 zl!343)) (derivationStepZipperUp!1449 (h!71450 zl!343) (h!71449 s!2326)))))

(assert (=> bs!1594774 m!7169756))

(assert (=> d!1996813 d!1996851))

(declare-fun b_lambda!241963 () Bool)

(assert (= b_lambda!241957 (or b!6365668 b_lambda!241963)))

(declare-fun bs!1594775 () Bool)

(declare-fun d!1996853 () Bool)

(assert (= bs!1594775 (and d!1996853 b!6365668)))

(assert (=> bs!1594775 (= (dynLambda!25785 lambda!350711 lt!2367457) (derivationStepZipperUp!1449 lt!2367457 (h!71449 s!2326)))))

(assert (=> bs!1594775 m!7169716))

(assert (=> d!1996801 d!1996853))

(check-sat (not b!6366385) (not b!6366152) (not b!6366408) (not b!6365942) (not d!1996833) (not b!6366393) (not b!6366360) (not b!6366390) (not bs!1594774) (not b!6366387) (not b!6366178) (not b!6366354) (not b!6366382) (not b!6366321) (not b!6366287) (not b!6366063) (not b!6365944) (not d!1996815) (not b!6366119) (not b!6366239) (not d!1996835) (not d!1996737) (not d!1996813) (not b!6366351) (not d!1996745) (not b!6366328) (not b!6366405) (not d!1996847) (not d!1996845) (not bm!543360) (not b!6366365) (not d!1996789) (not b!6366367) (not b!6365952) (not b!6366356) (not d!1996805) (not b_lambda!241961) (not b!6366417) (not setNonEmpty!43386) (not d!1996783) (not bm!543373) (not b!6366381) (not bm!543387) (not b!6366215) (not b!6366324) (not b!6366355) (not b!6366118) (not bs!1594775) (not b!6366195) (not b!6366395) (not b!6365945) (not b!6366386) (not bm!543368) (not bm!543346) (not b!6366182) (not b!6366216) (not b!6366180) (not b!6366199) (not b!6366279) (not b!6366209) (not b!6366317) (not d!1996793) (not b!6366423) (not d!1996755) (not b!6366194) tp_is_empty!41803 (not b!6366323) (not bm!543363) (not b!6366410) (not b!6366318) (not d!1996809) (not b!6366418) (not bm!543370) (not b!6366391) (not d!1996753) (not bm!543382) (not bm!543391) (not b!6366366) (not b!6366362) (not d!1996801) (not b!6366383) (not b!6366358) (not b!6366058) (not b!6365943) (not bm!543362) (not d!1996837) (not d!1996849) (not bm!543365) (not d!1996751) (not d!1996795) (not b!6366184) (not b!6366409) (not b_lambda!241963) (not d!1996791) (not bm!543371) (not b!6366056) (not bm!543366) (not b!6366057) (not d!1996811) (not d!1996803) (not b!6366361) (not b!6366368) (not bm!543388) (not d!1996797) (not d!1996839) (not b!6366200) (not b!6366183) (not d!1996821) (not b!6366186) (not bm!543381) (not b!6366400) (not b!6366407) (not b!6366185) (not b!6366389) (not d!1996747) (not d!1996843) (not b!6366394) (not b!6366352) (not b!6366191) (not d!1996743) (not b!6366062) (not b!6366059) (not b!6366369))
(check-sat)
(get-model)

(assert (=> b!6366360 d!1996827))

(declare-fun b!6366969 () Bool)

(declare-fun e!3865807 () Bool)

(assert (=> b!6366969 (= e!3865807 (matchR!8458 (derivativeStep!4980 (regTwo!33062 r!7292) (head!13042 (_2!36557 (get!22497 lt!2367520)))) (tail!12127 (_2!36557 (get!22497 lt!2367520)))))))

(declare-fun d!1997085 () Bool)

(declare-fun e!3865804 () Bool)

(assert (=> d!1997085 e!3865804))

(declare-fun c!1159295 () Bool)

(assert (=> d!1997085 (= c!1159295 ((_ is EmptyExpr!16275) (regTwo!33062 r!7292)))))

(declare-fun lt!2367571 () Bool)

(assert (=> d!1997085 (= lt!2367571 e!3865807)))

(declare-fun c!1159297 () Bool)

(assert (=> d!1997085 (= c!1159297 (isEmpty!37113 (_2!36557 (get!22497 lt!2367520))))))

(assert (=> d!1997085 (validRegex!8011 (regTwo!33062 r!7292))))

(assert (=> d!1997085 (= (matchR!8458 (regTwo!33062 r!7292) (_2!36557 (get!22497 lt!2367520))) lt!2367571)))

(declare-fun b!6366970 () Bool)

(declare-fun res!2619427 () Bool)

(declare-fun e!3865809 () Bool)

(assert (=> b!6366970 (=> res!2619427 e!3865809)))

(assert (=> b!6366970 (= res!2619427 (not (isEmpty!37113 (tail!12127 (_2!36557 (get!22497 lt!2367520))))))))

(declare-fun b!6366971 () Bool)

(declare-fun e!3865805 () Bool)

(assert (=> b!6366971 (= e!3865805 (not lt!2367571))))

(declare-fun b!6366972 () Bool)

(declare-fun res!2619426 () Bool)

(declare-fun e!3865808 () Bool)

(assert (=> b!6366972 (=> res!2619426 e!3865808)))

(assert (=> b!6366972 (= res!2619426 (not ((_ is ElementMatch!16275) (regTwo!33062 r!7292))))))

(assert (=> b!6366972 (= e!3865805 e!3865808)))

(declare-fun b!6366973 () Bool)

(declare-fun res!2619425 () Bool)

(declare-fun e!3865810 () Bool)

(assert (=> b!6366973 (=> (not res!2619425) (not e!3865810))))

(assert (=> b!6366973 (= res!2619425 (isEmpty!37113 (tail!12127 (_2!36557 (get!22497 lt!2367520)))))))

(declare-fun b!6366974 () Bool)

(declare-fun call!543496 () Bool)

(assert (=> b!6366974 (= e!3865804 (= lt!2367571 call!543496))))

(declare-fun b!6366975 () Bool)

(assert (=> b!6366975 (= e!3865807 (nullable!6268 (regTwo!33062 r!7292)))))

(declare-fun b!6366976 () Bool)

(assert (=> b!6366976 (= e!3865809 (not (= (head!13042 (_2!36557 (get!22497 lt!2367520))) (c!1158964 (regTwo!33062 r!7292)))))))

(declare-fun b!6366977 () Bool)

(declare-fun res!2619429 () Bool)

(assert (=> b!6366977 (=> (not res!2619429) (not e!3865810))))

(assert (=> b!6366977 (= res!2619429 (not call!543496))))

(declare-fun b!6366978 () Bool)

(declare-fun res!2619432 () Bool)

(assert (=> b!6366978 (=> res!2619432 e!3865808)))

(assert (=> b!6366978 (= res!2619432 e!3865810)))

(declare-fun res!2619431 () Bool)

(assert (=> b!6366978 (=> (not res!2619431) (not e!3865810))))

(assert (=> b!6366978 (= res!2619431 lt!2367571)))

(declare-fun b!6366979 () Bool)

(declare-fun e!3865806 () Bool)

(assert (=> b!6366979 (= e!3865808 e!3865806)))

(declare-fun res!2619430 () Bool)

(assert (=> b!6366979 (=> (not res!2619430) (not e!3865806))))

(assert (=> b!6366979 (= res!2619430 (not lt!2367571))))

(declare-fun bm!543491 () Bool)

(assert (=> bm!543491 (= call!543496 (isEmpty!37113 (_2!36557 (get!22497 lt!2367520))))))

(declare-fun b!6366980 () Bool)

(assert (=> b!6366980 (= e!3865810 (= (head!13042 (_2!36557 (get!22497 lt!2367520))) (c!1158964 (regTwo!33062 r!7292))))))

(declare-fun b!6366981 () Bool)

(assert (=> b!6366981 (= e!3865806 e!3865809)))

(declare-fun res!2619428 () Bool)

(assert (=> b!6366981 (=> res!2619428 e!3865809)))

(assert (=> b!6366981 (= res!2619428 call!543496)))

(declare-fun b!6366982 () Bool)

(assert (=> b!6366982 (= e!3865804 e!3865805)))

(declare-fun c!1159296 () Bool)

(assert (=> b!6366982 (= c!1159296 ((_ is EmptyLang!16275) (regTwo!33062 r!7292)))))

(assert (= (and d!1997085 c!1159297) b!6366975))

(assert (= (and d!1997085 (not c!1159297)) b!6366969))

(assert (= (and d!1997085 c!1159295) b!6366974))

(assert (= (and d!1997085 (not c!1159295)) b!6366982))

(assert (= (and b!6366982 c!1159296) b!6366971))

(assert (= (and b!6366982 (not c!1159296)) b!6366972))

(assert (= (and b!6366972 (not res!2619426)) b!6366978))

(assert (= (and b!6366978 res!2619431) b!6366977))

(assert (= (and b!6366977 res!2619429) b!6366973))

(assert (= (and b!6366973 res!2619425) b!6366980))

(assert (= (and b!6366978 (not res!2619432)) b!6366979))

(assert (= (and b!6366979 res!2619430) b!6366981))

(assert (= (and b!6366981 (not res!2619428)) b!6366970))

(assert (= (and b!6366970 (not res!2619427)) b!6366976))

(assert (= (or b!6366974 b!6366977 b!6366981) bm!543491))

(declare-fun m!7170714 () Bool)

(assert (=> b!6366980 m!7170714))

(assert (=> b!6366969 m!7170714))

(assert (=> b!6366969 m!7170714))

(declare-fun m!7170716 () Bool)

(assert (=> b!6366969 m!7170716))

(declare-fun m!7170718 () Bool)

(assert (=> b!6366969 m!7170718))

(assert (=> b!6366969 m!7170716))

(assert (=> b!6366969 m!7170718))

(declare-fun m!7170720 () Bool)

(assert (=> b!6366969 m!7170720))

(assert (=> b!6366973 m!7170718))

(assert (=> b!6366973 m!7170718))

(declare-fun m!7170722 () Bool)

(assert (=> b!6366973 m!7170722))

(declare-fun m!7170724 () Bool)

(assert (=> bm!543491 m!7170724))

(assert (=> b!6366970 m!7170718))

(assert (=> b!6366970 m!7170718))

(assert (=> b!6366970 m!7170722))

(assert (=> b!6366976 m!7170714))

(assert (=> d!1997085 m!7170724))

(declare-fun m!7170726 () Bool)

(assert (=> d!1997085 m!7170726))

(declare-fun m!7170728 () Bool)

(assert (=> b!6366975 m!7170728))

(assert (=> b!6366057 d!1997085))

(declare-fun d!1997087 () Bool)

(assert (=> d!1997087 (= (get!22497 lt!2367520) (v!52334 lt!2367520))))

(assert (=> b!6366057 d!1997087))

(declare-fun d!1997089 () Bool)

(declare-fun c!1159298 () Bool)

(assert (=> d!1997089 (= c!1159298 (isEmpty!37113 (tail!12127 (t!378721 s!2326))))))

(declare-fun e!3865811 () Bool)

(assert (=> d!1997089 (= (matchZipper!2287 (derivationStepZipper!2241 lt!2367460 (head!13042 (t!378721 s!2326))) (tail!12127 (t!378721 s!2326))) e!3865811)))

(declare-fun b!6366983 () Bool)

(assert (=> b!6366983 (= e!3865811 (nullableZipper!2040 (derivationStepZipper!2241 lt!2367460 (head!13042 (t!378721 s!2326)))))))

(declare-fun b!6366984 () Bool)

(assert (=> b!6366984 (= e!3865811 (matchZipper!2287 (derivationStepZipper!2241 (derivationStepZipper!2241 lt!2367460 (head!13042 (t!378721 s!2326))) (head!13042 (tail!12127 (t!378721 s!2326)))) (tail!12127 (tail!12127 (t!378721 s!2326)))))))

(assert (= (and d!1997089 c!1159298) b!6366983))

(assert (= (and d!1997089 (not c!1159298)) b!6366984))

(assert (=> d!1997089 m!7169942))

(declare-fun m!7170730 () Bool)

(assert (=> d!1997089 m!7170730))

(assert (=> b!6366983 m!7169940))

(declare-fun m!7170732 () Bool)

(assert (=> b!6366983 m!7170732))

(assert (=> b!6366984 m!7169942))

(declare-fun m!7170734 () Bool)

(assert (=> b!6366984 m!7170734))

(assert (=> b!6366984 m!7169940))

(assert (=> b!6366984 m!7170734))

(declare-fun m!7170736 () Bool)

(assert (=> b!6366984 m!7170736))

(assert (=> b!6366984 m!7169942))

(declare-fun m!7170738 () Bool)

(assert (=> b!6366984 m!7170738))

(assert (=> b!6366984 m!7170736))

(assert (=> b!6366984 m!7170738))

(declare-fun m!7170740 () Bool)

(assert (=> b!6366984 m!7170740))

(assert (=> b!6365945 d!1997089))

(declare-fun bs!1594928 () Bool)

(declare-fun d!1997091 () Bool)

(assert (= bs!1594928 (and d!1997091 b!6365668)))

(declare-fun lambda!350806 () Int)

(assert (=> bs!1594928 (= (= (head!13042 (t!378721 s!2326)) (h!71449 s!2326)) (= lambda!350806 lambda!350711))))

(declare-fun bs!1594929 () Bool)

(assert (= bs!1594929 (and d!1997091 d!1996803)))

(assert (=> bs!1594929 (= (= (head!13042 (t!378721 s!2326)) (h!71449 s!2326)) (= lambda!350806 lambda!350758))))

(assert (=> d!1997091 true))

(assert (=> d!1997091 (= (derivationStepZipper!2241 lt!2367460 (head!13042 (t!378721 s!2326))) (flatMap!1780 lt!2367460 lambda!350806))))

(declare-fun bs!1594930 () Bool)

(assert (= bs!1594930 d!1997091))

(declare-fun m!7170742 () Bool)

(assert (=> bs!1594930 m!7170742))

(assert (=> b!6365945 d!1997091))

(declare-fun d!1997093 () Bool)

(assert (=> d!1997093 (= (head!13042 (t!378721 s!2326)) (h!71449 (t!378721 s!2326)))))

(assert (=> b!6365945 d!1997093))

(declare-fun d!1997095 () Bool)

(assert (=> d!1997095 (= (tail!12127 (t!378721 s!2326)) (t!378721 (t!378721 s!2326)))))

(assert (=> b!6365945 d!1997095))

(declare-fun d!1997097 () Bool)

(assert (=> d!1997097 (= (nullable!6268 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343))))) (nullableFct!2215 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343))))))))

(declare-fun bs!1594931 () Bool)

(assert (= bs!1594931 d!1997097))

(declare-fun m!7170744 () Bool)

(assert (=> bs!1594931 m!7170744))

(assert (=> b!6366209 d!1997097))

(declare-fun d!1997099 () Bool)

(assert (=> d!1997099 (= (nullable!6268 (h!71448 (exprs!6159 lt!2367457))) (nullableFct!2215 (h!71448 (exprs!6159 lt!2367457))))))

(declare-fun bs!1594932 () Bool)

(assert (= bs!1594932 d!1997099))

(declare-fun m!7170746 () Bool)

(assert (=> bs!1594932 m!7170746))

(assert (=> b!6366119 d!1997099))

(declare-fun d!1997101 () Bool)

(assert (=> d!1997101 (= (isEmptyLang!1684 lt!2367532) ((_ is EmptyLang!16275) lt!2367532))))

(assert (=> b!6366185 d!1997101))

(declare-fun b!6366985 () Bool)

(declare-fun e!3865813 () Bool)

(declare-fun call!543499 () Bool)

(assert (=> b!6366985 (= e!3865813 call!543499)))

(declare-fun b!6366986 () Bool)

(declare-fun e!3865814 () Bool)

(declare-fun call!543498 () Bool)

(assert (=> b!6366986 (= e!3865814 call!543498)))

(declare-fun b!6366987 () Bool)

(declare-fun e!3865815 () Bool)

(assert (=> b!6366987 (= e!3865815 e!3865814)))

(declare-fun res!2619435 () Bool)

(assert (=> b!6366987 (= res!2619435 (not (nullable!6268 (reg!16604 (ite c!1159130 (regOne!33063 r!7292) (regOne!33062 r!7292))))))))

(assert (=> b!6366987 (=> (not res!2619435) (not e!3865814))))

(declare-fun b!6366988 () Bool)

(declare-fun e!3865817 () Bool)

(assert (=> b!6366988 (= e!3865815 e!3865817)))

(declare-fun c!1159300 () Bool)

(assert (=> b!6366988 (= c!1159300 ((_ is Union!16275) (ite c!1159130 (regOne!33063 r!7292) (regOne!33062 r!7292))))))

(declare-fun b!6366990 () Bool)

(declare-fun e!3865816 () Bool)

(assert (=> b!6366990 (= e!3865816 call!543499)))

(declare-fun bm!543492 () Bool)

(assert (=> bm!543492 (= call!543499 call!543498)))

(declare-fun b!6366991 () Bool)

(declare-fun res!2619437 () Bool)

(declare-fun e!3865818 () Bool)

(assert (=> b!6366991 (=> res!2619437 e!3865818)))

(assert (=> b!6366991 (= res!2619437 (not ((_ is Concat!25120) (ite c!1159130 (regOne!33063 r!7292) (regOne!33062 r!7292)))))))

(assert (=> b!6366991 (= e!3865817 e!3865818)))

(declare-fun b!6366989 () Bool)

(declare-fun e!3865812 () Bool)

(assert (=> b!6366989 (= e!3865812 e!3865815)))

(declare-fun c!1159299 () Bool)

(assert (=> b!6366989 (= c!1159299 ((_ is Star!16275) (ite c!1159130 (regOne!33063 r!7292) (regOne!33062 r!7292))))))

(declare-fun d!1997103 () Bool)

(declare-fun res!2619434 () Bool)

(assert (=> d!1997103 (=> res!2619434 e!3865812)))

(assert (=> d!1997103 (= res!2619434 ((_ is ElementMatch!16275) (ite c!1159130 (regOne!33063 r!7292) (regOne!33062 r!7292))))))

(assert (=> d!1997103 (= (validRegex!8011 (ite c!1159130 (regOne!33063 r!7292) (regOne!33062 r!7292))) e!3865812)))

(declare-fun b!6366992 () Bool)

(assert (=> b!6366992 (= e!3865818 e!3865816)))

(declare-fun res!2619436 () Bool)

(assert (=> b!6366992 (=> (not res!2619436) (not e!3865816))))

(declare-fun call!543497 () Bool)

(assert (=> b!6366992 (= res!2619436 call!543497)))

(declare-fun bm!543493 () Bool)

(assert (=> bm!543493 (= call!543497 (validRegex!8011 (ite c!1159300 (regOne!33063 (ite c!1159130 (regOne!33063 r!7292) (regOne!33062 r!7292))) (regOne!33062 (ite c!1159130 (regOne!33063 r!7292) (regOne!33062 r!7292))))))))

(declare-fun bm!543494 () Bool)

(assert (=> bm!543494 (= call!543498 (validRegex!8011 (ite c!1159299 (reg!16604 (ite c!1159130 (regOne!33063 r!7292) (regOne!33062 r!7292))) (ite c!1159300 (regTwo!33063 (ite c!1159130 (regOne!33063 r!7292) (regOne!33062 r!7292))) (regTwo!33062 (ite c!1159130 (regOne!33063 r!7292) (regOne!33062 r!7292)))))))))

(declare-fun b!6366993 () Bool)

(declare-fun res!2619433 () Bool)

(assert (=> b!6366993 (=> (not res!2619433) (not e!3865813))))

(assert (=> b!6366993 (= res!2619433 call!543497)))

(assert (=> b!6366993 (= e!3865817 e!3865813)))

(assert (= (and d!1997103 (not res!2619434)) b!6366989))

(assert (= (and b!6366989 c!1159299) b!6366987))

(assert (= (and b!6366989 (not c!1159299)) b!6366988))

(assert (= (and b!6366987 res!2619435) b!6366986))

(assert (= (and b!6366988 c!1159300) b!6366993))

(assert (= (and b!6366988 (not c!1159300)) b!6366991))

(assert (= (and b!6366993 res!2619433) b!6366985))

(assert (= (and b!6366991 (not res!2619437)) b!6366992))

(assert (= (and b!6366992 res!2619436) b!6366990))

(assert (= (or b!6366985 b!6366990) bm!543492))

(assert (= (or b!6366993 b!6366992) bm!543493))

(assert (= (or b!6366986 bm!543492) bm!543494))

(declare-fun m!7170748 () Bool)

(assert (=> b!6366987 m!7170748))

(declare-fun m!7170750 () Bool)

(assert (=> bm!543493 m!7170750))

(declare-fun m!7170752 () Bool)

(assert (=> bm!543494 m!7170752))

(assert (=> bm!543381 d!1997103))

(assert (=> d!1996835 d!1996833))

(assert (=> d!1996835 d!1996831))

(declare-fun d!1997105 () Bool)

(assert (=> d!1997105 (= (matchR!8458 r!7292 s!2326) (matchRSpec!3376 r!7292 s!2326))))

(assert (=> d!1997105 true))

(declare-fun _$88!5053 () Unit!158431)

(assert (=> d!1997105 (= (choose!47301 r!7292 s!2326) _$88!5053)))

(declare-fun bs!1594933 () Bool)

(assert (= bs!1594933 d!1997105))

(assert (=> bs!1594933 m!7169728))

(assert (=> bs!1594933 m!7169726))

(assert (=> d!1996835 d!1997105))

(assert (=> d!1996835 d!1996829))

(declare-fun bm!543499 () Bool)

(declare-fun call!543504 () Bool)

(declare-fun c!1159303 () Bool)

(assert (=> bm!543499 (= call!543504 (nullable!6268 (ite c!1159303 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))))))))

(declare-fun bm!543500 () Bool)

(declare-fun call!543505 () Bool)

(assert (=> bm!543500 (= call!543505 (nullable!6268 (ite c!1159303 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))))))))

(declare-fun b!6367008 () Bool)

(declare-fun e!3865833 () Bool)

(declare-fun e!3865832 () Bool)

(assert (=> b!6367008 (= e!3865833 e!3865832)))

(assert (=> b!6367008 (= c!1159303 ((_ is Union!16275) (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun b!6367009 () Bool)

(declare-fun e!3865834 () Bool)

(assert (=> b!6367009 (= e!3865832 e!3865834)))

(declare-fun res!2619449 () Bool)

(assert (=> b!6367009 (= res!2619449 call!543505)))

(assert (=> b!6367009 (=> res!2619449 e!3865834)))

(declare-fun d!1997107 () Bool)

(declare-fun res!2619448 () Bool)

(declare-fun e!3865836 () Bool)

(assert (=> d!1997107 (=> res!2619448 e!3865836)))

(assert (=> d!1997107 (= res!2619448 ((_ is EmptyExpr!16275) (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(assert (=> d!1997107 (= (nullableFct!2215 (h!71448 (exprs!6159 (h!71450 zl!343)))) e!3865836)))

(declare-fun b!6367010 () Bool)

(declare-fun e!3865835 () Bool)

(assert (=> b!6367010 (= e!3865835 call!543504)))

(declare-fun b!6367011 () Bool)

(declare-fun e!3865831 () Bool)

(assert (=> b!6367011 (= e!3865831 e!3865833)))

(declare-fun res!2619451 () Bool)

(assert (=> b!6367011 (=> res!2619451 e!3865833)))

(assert (=> b!6367011 (= res!2619451 ((_ is Star!16275) (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun b!6367012 () Bool)

(assert (=> b!6367012 (= e!3865832 e!3865835)))

(declare-fun res!2619450 () Bool)

(assert (=> b!6367012 (= res!2619450 call!543505)))

(assert (=> b!6367012 (=> (not res!2619450) (not e!3865835))))

(declare-fun b!6367013 () Bool)

(assert (=> b!6367013 (= e!3865834 call!543504)))

(declare-fun b!6367014 () Bool)

(assert (=> b!6367014 (= e!3865836 e!3865831)))

(declare-fun res!2619452 () Bool)

(assert (=> b!6367014 (=> (not res!2619452) (not e!3865831))))

(assert (=> b!6367014 (= res!2619452 (and (not ((_ is EmptyLang!16275) (h!71448 (exprs!6159 (h!71450 zl!343))))) (not ((_ is ElementMatch!16275) (h!71448 (exprs!6159 (h!71450 zl!343)))))))))

(assert (= (and d!1997107 (not res!2619448)) b!6367014))

(assert (= (and b!6367014 res!2619452) b!6367011))

(assert (= (and b!6367011 (not res!2619451)) b!6367008))

(assert (= (and b!6367008 c!1159303) b!6367009))

(assert (= (and b!6367008 (not c!1159303)) b!6367012))

(assert (= (and b!6367009 (not res!2619449)) b!6367013))

(assert (= (and b!6367012 res!2619450) b!6367010))

(assert (= (or b!6367013 b!6367010) bm!543499))

(assert (= (or b!6367009 b!6367012) bm!543500))

(declare-fun m!7170754 () Bool)

(assert (=> bm!543499 m!7170754))

(declare-fun m!7170756 () Bool)

(assert (=> bm!543500 m!7170756))

(assert (=> d!1996815 d!1997107))

(declare-fun b!6367015 () Bool)

(declare-fun e!3865838 () (InoxSet Context!11318))

(assert (=> b!6367015 (= e!3865838 ((as const (Array Context!11318 Bool)) false))))

(declare-fun b!6367016 () Bool)

(declare-fun call!543510 () (InoxSet Context!11318))

(assert (=> b!6367016 (= e!3865838 call!543510)))

(declare-fun bm!543501 () Bool)

(declare-fun call!543506 () List!65124)

(declare-fun call!543511 () List!65124)

(assert (=> bm!543501 (= call!543506 call!543511)))

(declare-fun d!1997109 () Bool)

(declare-fun c!1159304 () Bool)

(assert (=> d!1997109 (= c!1159304 (and ((_ is ElementMatch!16275) (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292))))))) (= (c!1158964 (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292))))))) (h!71449 s!2326))))))

(declare-fun e!3865839 () (InoxSet Context!11318))

(assert (=> d!1997109 (= (derivationStepZipperDown!1523 (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292)))))) (ite (or c!1159098 c!1159096) (Context!11319 lt!2367453) (Context!11319 call!543364)) (h!71449 s!2326)) e!3865839)))

(declare-fun b!6367017 () Bool)

(declare-fun c!1159306 () Bool)

(declare-fun e!3865837 () Bool)

(assert (=> b!6367017 (= c!1159306 e!3865837)))

(declare-fun res!2619453 () Bool)

(assert (=> b!6367017 (=> (not res!2619453) (not e!3865837))))

(assert (=> b!6367017 (= res!2619453 ((_ is Concat!25120) (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292))))))))))

(declare-fun e!3865842 () (InoxSet Context!11318))

(declare-fun e!3865840 () (InoxSet Context!11318))

(assert (=> b!6367017 (= e!3865842 e!3865840)))

(declare-fun b!6367018 () Bool)

(declare-fun c!1159307 () Bool)

(assert (=> b!6367018 (= c!1159307 ((_ is Star!16275) (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292))))))))))

(declare-fun e!3865841 () (InoxSet Context!11318))

(assert (=> b!6367018 (= e!3865841 e!3865838)))

(declare-fun b!6367019 () Bool)

(assert (=> b!6367019 (= e!3865839 (store ((as const (Array Context!11318 Bool)) false) (ite (or c!1159098 c!1159096) (Context!11319 lt!2367453) (Context!11319 call!543364)) true))))

(declare-fun b!6367020 () Bool)

(declare-fun call!543509 () (InoxSet Context!11318))

(declare-fun call!543508 () (InoxSet Context!11318))

(assert (=> b!6367020 (= e!3865842 ((_ map or) call!543509 call!543508))))

(declare-fun bm!543502 () Bool)

(declare-fun c!1159308 () Bool)

(assert (=> bm!543502 (= call!543508 (derivationStepZipperDown!1523 (ite c!1159308 (regTwo!33063 (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292))))))) (regOne!33062 (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292)))))))) (ite c!1159308 (ite (or c!1159098 c!1159096) (Context!11319 lt!2367453) (Context!11319 call!543364)) (Context!11319 call!543511)) (h!71449 s!2326)))))

(declare-fun bm!543503 () Bool)

(declare-fun call!543507 () (InoxSet Context!11318))

(assert (=> bm!543503 (= call!543510 call!543507)))

(declare-fun b!6367021 () Bool)

(assert (=> b!6367021 (= e!3865837 (nullable!6268 (regOne!33062 (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292)))))))))))

(declare-fun c!1159305 () Bool)

(declare-fun bm!543504 () Bool)

(assert (=> bm!543504 (= call!543509 (derivationStepZipperDown!1523 (ite c!1159308 (regOne!33063 (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292))))))) (ite c!1159306 (regTwo!33062 (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292))))))) (ite c!1159305 (regOne!33062 (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292))))))) (reg!16604 (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292)))))))))) (ite (or c!1159308 c!1159306) (ite (or c!1159098 c!1159096) (Context!11319 lt!2367453) (Context!11319 call!543364)) (Context!11319 call!543506)) (h!71449 s!2326)))))

(declare-fun b!6367022 () Bool)

(assert (=> b!6367022 (= e!3865841 call!543510)))

(declare-fun bm!543505 () Bool)

(assert (=> bm!543505 (= call!543511 ($colon$colon!2136 (exprs!6159 (ite (or c!1159098 c!1159096) (Context!11319 lt!2367453) (Context!11319 call!543364))) (ite (or c!1159306 c!1159305) (regTwo!33062 (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292))))))) (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292)))))))))))

(declare-fun b!6367023 () Bool)

(assert (=> b!6367023 (= e!3865839 e!3865842)))

(assert (=> b!6367023 (= c!1159308 ((_ is Union!16275) (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292))))))))))

(declare-fun bm!543506 () Bool)

(assert (=> bm!543506 (= call!543507 call!543509)))

(declare-fun b!6367024 () Bool)

(assert (=> b!6367024 (= e!3865840 e!3865841)))

(assert (=> b!6367024 (= c!1159305 ((_ is Concat!25120) (ite c!1159098 (regOne!33063 (reg!16604 (regOne!33062 r!7292))) (ite c!1159096 (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (ite c!1159095 (regOne!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (reg!16604 (regOne!33062 r!7292))))))))))

(declare-fun b!6367025 () Bool)

(assert (=> b!6367025 (= e!3865840 ((_ map or) call!543508 call!543507))))

(assert (= (and d!1997109 c!1159304) b!6367019))

(assert (= (and d!1997109 (not c!1159304)) b!6367023))

(assert (= (and b!6367023 c!1159308) b!6367020))

(assert (= (and b!6367023 (not c!1159308)) b!6367017))

(assert (= (and b!6367017 res!2619453) b!6367021))

(assert (= (and b!6367017 c!1159306) b!6367025))

(assert (= (and b!6367017 (not c!1159306)) b!6367024))

(assert (= (and b!6367024 c!1159305) b!6367022))

(assert (= (and b!6367024 (not c!1159305)) b!6367018))

(assert (= (and b!6367018 c!1159307) b!6367016))

(assert (= (and b!6367018 (not c!1159307)) b!6367015))

(assert (= (or b!6367022 b!6367016) bm!543501))

(assert (= (or b!6367022 b!6367016) bm!543503))

(assert (= (or b!6367025 bm!543501) bm!543505))

(assert (= (or b!6367025 bm!543503) bm!543506))

(assert (= (or b!6367020 b!6367025) bm!543502))

(assert (= (or b!6367020 bm!543506) bm!543504))

(declare-fun m!7170758 () Bool)

(assert (=> bm!543502 m!7170758))

(declare-fun m!7170760 () Bool)

(assert (=> bm!543505 m!7170760))

(declare-fun m!7170762 () Bool)

(assert (=> b!6367019 m!7170762))

(declare-fun m!7170764 () Bool)

(assert (=> bm!543504 m!7170764))

(declare-fun m!7170766 () Bool)

(assert (=> b!6367021 m!7170766))

(assert (=> bm!543362 d!1997109))

(declare-fun d!1997111 () Bool)

(assert (=> d!1997111 (= (head!13042 s!2326) (h!71449 s!2326))))

(assert (=> b!6366324 d!1997111))

(declare-fun bs!1594934 () Bool)

(declare-fun d!1997113 () Bool)

(assert (= bs!1594934 (and d!1997113 d!1996839)))

(declare-fun lambda!350807 () Int)

(assert (=> bs!1594934 (= lambda!350807 lambda!350775)))

(declare-fun bs!1594935 () Bool)

(assert (= bs!1594935 (and d!1997113 d!1996811)))

(assert (=> bs!1594935 (= lambda!350807 lambda!350765)))

(declare-fun bs!1594936 () Bool)

(assert (= bs!1594936 (and d!1997113 d!1996747)))

(assert (=> bs!1594936 (= lambda!350807 lambda!350733)))

(declare-fun bs!1594937 () Bool)

(assert (= bs!1594937 (and d!1997113 d!1996837)))

(assert (=> bs!1594937 (= lambda!350807 lambda!350772)))

(declare-fun bs!1594938 () Bool)

(assert (= bs!1594938 (and d!1997113 d!1996805)))

(assert (=> bs!1594938 (= lambda!350807 lambda!350759)))

(declare-fun bs!1594939 () Bool)

(assert (= bs!1594939 (and d!1997113 d!1996809)))

(assert (=> bs!1594939 (= lambda!350807 lambda!350762)))

(assert (=> d!1997113 (= (inv!83934 (h!71450 (t!378722 zl!343))) (forall!15453 (exprs!6159 (h!71450 (t!378722 zl!343))) lambda!350807))))

(declare-fun bs!1594940 () Bool)

(assert (= bs!1594940 d!1997113))

(declare-fun m!7170768 () Bool)

(assert (=> bs!1594940 m!7170768))

(assert (=> b!6366417 d!1997113))

(declare-fun d!1997115 () Bool)

(assert (=> d!1997115 (= (isEmpty!37110 (exprs!6159 (h!71450 zl!343))) ((_ is Nil!65000) (exprs!6159 (h!71450 zl!343))))))

(assert (=> b!6366351 d!1997115))

(assert (=> b!6366216 d!1996815))

(declare-fun d!1997117 () Bool)

(assert (=> d!1997117 (= (Exists!3345 (ite c!1159141 lambda!350770 lambda!350771)) (choose!47296 (ite c!1159141 lambda!350770 lambda!350771)))))

(declare-fun bs!1594941 () Bool)

(assert (= bs!1594941 d!1997117))

(declare-fun m!7170770 () Bool)

(assert (=> bs!1594941 m!7170770))

(assert (=> bm!543387 d!1997117))

(declare-fun d!1997119 () Bool)

(assert (=> d!1997119 (= (isConcat!1200 lt!2367545) ((_ is Concat!25120) lt!2367545))))

(assert (=> b!6366355 d!1997119))

(declare-fun bs!1594942 () Bool)

(declare-fun d!1997121 () Bool)

(assert (= bs!1594942 (and d!1997121 d!1996839)))

(declare-fun lambda!350808 () Int)

(assert (=> bs!1594942 (= lambda!350808 lambda!350775)))

(declare-fun bs!1594943 () Bool)

(assert (= bs!1594943 (and d!1997121 d!1996811)))

(assert (=> bs!1594943 (= lambda!350808 lambda!350765)))

(declare-fun bs!1594944 () Bool)

(assert (= bs!1594944 (and d!1997121 d!1996747)))

(assert (=> bs!1594944 (= lambda!350808 lambda!350733)))

(declare-fun bs!1594945 () Bool)

(assert (= bs!1594945 (and d!1997121 d!1997113)))

(assert (=> bs!1594945 (= lambda!350808 lambda!350807)))

(declare-fun bs!1594946 () Bool)

(assert (= bs!1594946 (and d!1997121 d!1996837)))

(assert (=> bs!1594946 (= lambda!350808 lambda!350772)))

(declare-fun bs!1594947 () Bool)

(assert (= bs!1594947 (and d!1997121 d!1996805)))

(assert (=> bs!1594947 (= lambda!350808 lambda!350759)))

(declare-fun bs!1594948 () Bool)

(assert (= bs!1594948 (and d!1997121 d!1996809)))

(assert (=> bs!1594948 (= lambda!350808 lambda!350762)))

(assert (=> d!1997121 (= (inv!83934 setElem!43386) (forall!15453 (exprs!6159 setElem!43386) lambda!350808))))

(declare-fun bs!1594949 () Bool)

(assert (= bs!1594949 d!1997121))

(declare-fun m!7170772 () Bool)

(assert (=> bs!1594949 m!7170772))

(assert (=> setNonEmpty!43386 d!1997121))

(declare-fun d!1997123 () Bool)

(assert (=> d!1997123 (= (isEmpty!37110 (unfocusZipperList!1696 zl!343)) ((_ is Nil!65000) (unfocusZipperList!1696 zl!343)))))

(assert (=> b!6366180 d!1997123))

(declare-fun d!1997125 () Bool)

(assert (=> d!1997125 (= (isEmpty!37113 s!2326) ((_ is Nil!65001) s!2326))))

(assert (=> bm!543391 d!1997125))

(declare-fun d!1997127 () Bool)

(assert (=> d!1997127 (= (isDefined!12869 lt!2367520) (not (isEmpty!37114 lt!2367520)))))

(declare-fun bs!1594950 () Bool)

(assert (= bs!1594950 d!1997127))

(declare-fun m!7170774 () Bool)

(assert (=> bs!1594950 m!7170774))

(assert (=> d!1996755 d!1997127))

(declare-fun b!6367026 () Bool)

(declare-fun e!3865846 () Bool)

(assert (=> b!6367026 (= e!3865846 (matchR!8458 (derivativeStep!4980 (regOne!33062 r!7292) (head!13042 Nil!65001)) (tail!12127 Nil!65001)))))

(declare-fun d!1997129 () Bool)

(declare-fun e!3865843 () Bool)

(assert (=> d!1997129 e!3865843))

(declare-fun c!1159309 () Bool)

(assert (=> d!1997129 (= c!1159309 ((_ is EmptyExpr!16275) (regOne!33062 r!7292)))))

(declare-fun lt!2367572 () Bool)

(assert (=> d!1997129 (= lt!2367572 e!3865846)))

(declare-fun c!1159311 () Bool)

(assert (=> d!1997129 (= c!1159311 (isEmpty!37113 Nil!65001))))

(assert (=> d!1997129 (validRegex!8011 (regOne!33062 r!7292))))

(assert (=> d!1997129 (= (matchR!8458 (regOne!33062 r!7292) Nil!65001) lt!2367572)))

(declare-fun b!6367027 () Bool)

(declare-fun res!2619456 () Bool)

(declare-fun e!3865848 () Bool)

(assert (=> b!6367027 (=> res!2619456 e!3865848)))

(assert (=> b!6367027 (= res!2619456 (not (isEmpty!37113 (tail!12127 Nil!65001))))))

(declare-fun b!6367028 () Bool)

(declare-fun e!3865844 () Bool)

(assert (=> b!6367028 (= e!3865844 (not lt!2367572))))

(declare-fun b!6367029 () Bool)

(declare-fun res!2619455 () Bool)

(declare-fun e!3865847 () Bool)

(assert (=> b!6367029 (=> res!2619455 e!3865847)))

(assert (=> b!6367029 (= res!2619455 (not ((_ is ElementMatch!16275) (regOne!33062 r!7292))))))

(assert (=> b!6367029 (= e!3865844 e!3865847)))

(declare-fun b!6367030 () Bool)

(declare-fun res!2619454 () Bool)

(declare-fun e!3865849 () Bool)

(assert (=> b!6367030 (=> (not res!2619454) (not e!3865849))))

(assert (=> b!6367030 (= res!2619454 (isEmpty!37113 (tail!12127 Nil!65001)))))

(declare-fun b!6367031 () Bool)

(declare-fun call!543512 () Bool)

(assert (=> b!6367031 (= e!3865843 (= lt!2367572 call!543512))))

(declare-fun b!6367032 () Bool)

(assert (=> b!6367032 (= e!3865846 (nullable!6268 (regOne!33062 r!7292)))))

(declare-fun b!6367033 () Bool)

(assert (=> b!6367033 (= e!3865848 (not (= (head!13042 Nil!65001) (c!1158964 (regOne!33062 r!7292)))))))

(declare-fun b!6367034 () Bool)

(declare-fun res!2619458 () Bool)

(assert (=> b!6367034 (=> (not res!2619458) (not e!3865849))))

(assert (=> b!6367034 (= res!2619458 (not call!543512))))

(declare-fun b!6367035 () Bool)

(declare-fun res!2619461 () Bool)

(assert (=> b!6367035 (=> res!2619461 e!3865847)))

(assert (=> b!6367035 (= res!2619461 e!3865849)))

(declare-fun res!2619460 () Bool)

(assert (=> b!6367035 (=> (not res!2619460) (not e!3865849))))

(assert (=> b!6367035 (= res!2619460 lt!2367572)))

(declare-fun b!6367036 () Bool)

(declare-fun e!3865845 () Bool)

(assert (=> b!6367036 (= e!3865847 e!3865845)))

(declare-fun res!2619459 () Bool)

(assert (=> b!6367036 (=> (not res!2619459) (not e!3865845))))

(assert (=> b!6367036 (= res!2619459 (not lt!2367572))))

(declare-fun bm!543507 () Bool)

(assert (=> bm!543507 (= call!543512 (isEmpty!37113 Nil!65001))))

(declare-fun b!6367037 () Bool)

(assert (=> b!6367037 (= e!3865849 (= (head!13042 Nil!65001) (c!1158964 (regOne!33062 r!7292))))))

(declare-fun b!6367038 () Bool)

(assert (=> b!6367038 (= e!3865845 e!3865848)))

(declare-fun res!2619457 () Bool)

(assert (=> b!6367038 (=> res!2619457 e!3865848)))

(assert (=> b!6367038 (= res!2619457 call!543512)))

(declare-fun b!6367039 () Bool)

(assert (=> b!6367039 (= e!3865843 e!3865844)))

(declare-fun c!1159310 () Bool)

(assert (=> b!6367039 (= c!1159310 ((_ is EmptyLang!16275) (regOne!33062 r!7292)))))

(assert (= (and d!1997129 c!1159311) b!6367032))

(assert (= (and d!1997129 (not c!1159311)) b!6367026))

(assert (= (and d!1997129 c!1159309) b!6367031))

(assert (= (and d!1997129 (not c!1159309)) b!6367039))

(assert (= (and b!6367039 c!1159310) b!6367028))

(assert (= (and b!6367039 (not c!1159310)) b!6367029))

(assert (= (and b!6367029 (not res!2619455)) b!6367035))

(assert (= (and b!6367035 res!2619460) b!6367034))

(assert (= (and b!6367034 res!2619458) b!6367030))

(assert (= (and b!6367030 res!2619454) b!6367037))

(assert (= (and b!6367035 (not res!2619461)) b!6367036))

(assert (= (and b!6367036 res!2619459) b!6367038))

(assert (= (and b!6367038 (not res!2619457)) b!6367027))

(assert (= (and b!6367027 (not res!2619456)) b!6367033))

(assert (= (or b!6367031 b!6367034 b!6367038) bm!543507))

(declare-fun m!7170776 () Bool)

(assert (=> b!6367037 m!7170776))

(assert (=> b!6367026 m!7170776))

(assert (=> b!6367026 m!7170776))

(declare-fun m!7170778 () Bool)

(assert (=> b!6367026 m!7170778))

(declare-fun m!7170780 () Bool)

(assert (=> b!6367026 m!7170780))

(assert (=> b!6367026 m!7170778))

(assert (=> b!6367026 m!7170780))

(declare-fun m!7170782 () Bool)

(assert (=> b!6367026 m!7170782))

(assert (=> b!6367030 m!7170780))

(assert (=> b!6367030 m!7170780))

(declare-fun m!7170784 () Bool)

(assert (=> b!6367030 m!7170784))

(declare-fun m!7170786 () Bool)

(assert (=> bm!543507 m!7170786))

(assert (=> b!6367027 m!7170780))

(assert (=> b!6367027 m!7170780))

(assert (=> b!6367027 m!7170784))

(assert (=> b!6367033 m!7170776))

(assert (=> d!1997129 m!7170786))

(assert (=> d!1997129 m!7170042))

(declare-fun m!7170788 () Bool)

(assert (=> b!6367032 m!7170788))

(assert (=> d!1996755 d!1997129))

(declare-fun b!6367040 () Bool)

(declare-fun e!3865851 () Bool)

(declare-fun call!543515 () Bool)

(assert (=> b!6367040 (= e!3865851 call!543515)))

(declare-fun b!6367041 () Bool)

(declare-fun e!3865852 () Bool)

(declare-fun call!543514 () Bool)

(assert (=> b!6367041 (= e!3865852 call!543514)))

(declare-fun b!6367042 () Bool)

(declare-fun e!3865853 () Bool)

(assert (=> b!6367042 (= e!3865853 e!3865852)))

(declare-fun res!2619464 () Bool)

(assert (=> b!6367042 (= res!2619464 (not (nullable!6268 (reg!16604 (regOne!33062 r!7292)))))))

(assert (=> b!6367042 (=> (not res!2619464) (not e!3865852))))

(declare-fun b!6367043 () Bool)

(declare-fun e!3865855 () Bool)

(assert (=> b!6367043 (= e!3865853 e!3865855)))

(declare-fun c!1159313 () Bool)

(assert (=> b!6367043 (= c!1159313 ((_ is Union!16275) (regOne!33062 r!7292)))))

(declare-fun b!6367045 () Bool)

(declare-fun e!3865854 () Bool)

(assert (=> b!6367045 (= e!3865854 call!543515)))

(declare-fun bm!543508 () Bool)

(assert (=> bm!543508 (= call!543515 call!543514)))

(declare-fun b!6367046 () Bool)

(declare-fun res!2619466 () Bool)

(declare-fun e!3865856 () Bool)

(assert (=> b!6367046 (=> res!2619466 e!3865856)))

(assert (=> b!6367046 (= res!2619466 (not ((_ is Concat!25120) (regOne!33062 r!7292))))))

(assert (=> b!6367046 (= e!3865855 e!3865856)))

(declare-fun b!6367044 () Bool)

(declare-fun e!3865850 () Bool)

(assert (=> b!6367044 (= e!3865850 e!3865853)))

(declare-fun c!1159312 () Bool)

(assert (=> b!6367044 (= c!1159312 ((_ is Star!16275) (regOne!33062 r!7292)))))

(declare-fun d!1997131 () Bool)

(declare-fun res!2619463 () Bool)

(assert (=> d!1997131 (=> res!2619463 e!3865850)))

(assert (=> d!1997131 (= res!2619463 ((_ is ElementMatch!16275) (regOne!33062 r!7292)))))

(assert (=> d!1997131 (= (validRegex!8011 (regOne!33062 r!7292)) e!3865850)))

(declare-fun b!6367047 () Bool)

(assert (=> b!6367047 (= e!3865856 e!3865854)))

(declare-fun res!2619465 () Bool)

(assert (=> b!6367047 (=> (not res!2619465) (not e!3865854))))

(declare-fun call!543513 () Bool)

(assert (=> b!6367047 (= res!2619465 call!543513)))

(declare-fun bm!543509 () Bool)

(assert (=> bm!543509 (= call!543513 (validRegex!8011 (ite c!1159313 (regOne!33063 (regOne!33062 r!7292)) (regOne!33062 (regOne!33062 r!7292)))))))

(declare-fun bm!543510 () Bool)

(assert (=> bm!543510 (= call!543514 (validRegex!8011 (ite c!1159312 (reg!16604 (regOne!33062 r!7292)) (ite c!1159313 (regTwo!33063 (regOne!33062 r!7292)) (regTwo!33062 (regOne!33062 r!7292))))))))

(declare-fun b!6367048 () Bool)

(declare-fun res!2619462 () Bool)

(assert (=> b!6367048 (=> (not res!2619462) (not e!3865851))))

(assert (=> b!6367048 (= res!2619462 call!543513)))

(assert (=> b!6367048 (= e!3865855 e!3865851)))

(assert (= (and d!1997131 (not res!2619463)) b!6367044))

(assert (= (and b!6367044 c!1159312) b!6367042))

(assert (= (and b!6367044 (not c!1159312)) b!6367043))

(assert (= (and b!6367042 res!2619464) b!6367041))

(assert (= (and b!6367043 c!1159313) b!6367048))

(assert (= (and b!6367043 (not c!1159313)) b!6367046))

(assert (= (and b!6367048 res!2619462) b!6367040))

(assert (= (and b!6367046 (not res!2619466)) b!6367047))

(assert (= (and b!6367047 res!2619465) b!6367045))

(assert (= (or b!6367040 b!6367045) bm!543508))

(assert (= (or b!6367048 b!6367047) bm!543509))

(assert (= (or b!6367041 bm!543508) bm!543510))

(declare-fun m!7170790 () Bool)

(assert (=> b!6367042 m!7170790))

(declare-fun m!7170792 () Bool)

(assert (=> bm!543509 m!7170792))

(declare-fun m!7170794 () Bool)

(assert (=> bm!543510 m!7170794))

(assert (=> d!1996755 d!1997131))

(declare-fun d!1997133 () Bool)

(declare-fun lambda!350811 () Int)

(declare-fun exists!2577 ((InoxSet Context!11318) Int) Bool)

(assert (=> d!1997133 (= (nullableZipper!2040 lt!2367460) (exists!2577 lt!2367460 lambda!350811))))

(declare-fun bs!1594951 () Bool)

(assert (= bs!1594951 d!1997133))

(declare-fun m!7170796 () Bool)

(assert (=> bs!1594951 m!7170796))

(assert (=> b!6365944 d!1997133))

(declare-fun b!6367049 () Bool)

(declare-fun e!3865858 () (InoxSet Context!11318))

(assert (=> b!6367049 (= e!3865858 ((as const (Array Context!11318 Bool)) false))))

(declare-fun b!6367050 () Bool)

(declare-fun call!543520 () (InoxSet Context!11318))

(assert (=> b!6367050 (= e!3865858 call!543520)))

(declare-fun bm!543511 () Bool)

(declare-fun call!543516 () List!65124)

(declare-fun call!543521 () List!65124)

(assert (=> bm!543511 (= call!543516 call!543521)))

(declare-fun d!1997135 () Bool)

(declare-fun c!1159316 () Bool)

(assert (=> d!1997135 (= c!1159316 (and ((_ is ElementMatch!16275) (h!71448 (exprs!6159 lt!2367450))) (= (c!1158964 (h!71448 (exprs!6159 lt!2367450))) (h!71449 s!2326))))))

(declare-fun e!3865859 () (InoxSet Context!11318))

(assert (=> d!1997135 (= (derivationStepZipperDown!1523 (h!71448 (exprs!6159 lt!2367450)) (Context!11319 (t!378720 (exprs!6159 lt!2367450))) (h!71449 s!2326)) e!3865859)))

(declare-fun b!6367051 () Bool)

(declare-fun c!1159318 () Bool)

(declare-fun e!3865857 () Bool)

(assert (=> b!6367051 (= c!1159318 e!3865857)))

(declare-fun res!2619467 () Bool)

(assert (=> b!6367051 (=> (not res!2619467) (not e!3865857))))

(assert (=> b!6367051 (= res!2619467 ((_ is Concat!25120) (h!71448 (exprs!6159 lt!2367450))))))

(declare-fun e!3865862 () (InoxSet Context!11318))

(declare-fun e!3865860 () (InoxSet Context!11318))

(assert (=> b!6367051 (= e!3865862 e!3865860)))

(declare-fun b!6367052 () Bool)

(declare-fun c!1159319 () Bool)

(assert (=> b!6367052 (= c!1159319 ((_ is Star!16275) (h!71448 (exprs!6159 lt!2367450))))))

(declare-fun e!3865861 () (InoxSet Context!11318))

(assert (=> b!6367052 (= e!3865861 e!3865858)))

(declare-fun b!6367053 () Bool)

(assert (=> b!6367053 (= e!3865859 (store ((as const (Array Context!11318 Bool)) false) (Context!11319 (t!378720 (exprs!6159 lt!2367450))) true))))

(declare-fun b!6367054 () Bool)

(declare-fun call!543519 () (InoxSet Context!11318))

(declare-fun call!543518 () (InoxSet Context!11318))

(assert (=> b!6367054 (= e!3865862 ((_ map or) call!543519 call!543518))))

(declare-fun bm!543512 () Bool)

(declare-fun c!1159320 () Bool)

(assert (=> bm!543512 (= call!543518 (derivationStepZipperDown!1523 (ite c!1159320 (regTwo!33063 (h!71448 (exprs!6159 lt!2367450))) (regOne!33062 (h!71448 (exprs!6159 lt!2367450)))) (ite c!1159320 (Context!11319 (t!378720 (exprs!6159 lt!2367450))) (Context!11319 call!543521)) (h!71449 s!2326)))))

(declare-fun bm!543513 () Bool)

(declare-fun call!543517 () (InoxSet Context!11318))

(assert (=> bm!543513 (= call!543520 call!543517)))

(declare-fun b!6367055 () Bool)

(assert (=> b!6367055 (= e!3865857 (nullable!6268 (regOne!33062 (h!71448 (exprs!6159 lt!2367450)))))))

(declare-fun c!1159317 () Bool)

(declare-fun bm!543514 () Bool)

(assert (=> bm!543514 (= call!543519 (derivationStepZipperDown!1523 (ite c!1159320 (regOne!33063 (h!71448 (exprs!6159 lt!2367450))) (ite c!1159318 (regTwo!33062 (h!71448 (exprs!6159 lt!2367450))) (ite c!1159317 (regOne!33062 (h!71448 (exprs!6159 lt!2367450))) (reg!16604 (h!71448 (exprs!6159 lt!2367450)))))) (ite (or c!1159320 c!1159318) (Context!11319 (t!378720 (exprs!6159 lt!2367450))) (Context!11319 call!543516)) (h!71449 s!2326)))))

(declare-fun b!6367056 () Bool)

(assert (=> b!6367056 (= e!3865861 call!543520)))

(declare-fun bm!543515 () Bool)

(assert (=> bm!543515 (= call!543521 ($colon$colon!2136 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 lt!2367450)))) (ite (or c!1159318 c!1159317) (regTwo!33062 (h!71448 (exprs!6159 lt!2367450))) (h!71448 (exprs!6159 lt!2367450)))))))

(declare-fun b!6367057 () Bool)

(assert (=> b!6367057 (= e!3865859 e!3865862)))

(assert (=> b!6367057 (= c!1159320 ((_ is Union!16275) (h!71448 (exprs!6159 lt!2367450))))))

(declare-fun bm!543516 () Bool)

(assert (=> bm!543516 (= call!543517 call!543519)))

(declare-fun b!6367058 () Bool)

(assert (=> b!6367058 (= e!3865860 e!3865861)))

(assert (=> b!6367058 (= c!1159317 ((_ is Concat!25120) (h!71448 (exprs!6159 lt!2367450))))))

(declare-fun b!6367059 () Bool)

(assert (=> b!6367059 (= e!3865860 ((_ map or) call!543518 call!543517))))

(assert (= (and d!1997135 c!1159316) b!6367053))

(assert (= (and d!1997135 (not c!1159316)) b!6367057))

(assert (= (and b!6367057 c!1159320) b!6367054))

(assert (= (and b!6367057 (not c!1159320)) b!6367051))

(assert (= (and b!6367051 res!2619467) b!6367055))

(assert (= (and b!6367051 c!1159318) b!6367059))

(assert (= (and b!6367051 (not c!1159318)) b!6367058))

(assert (= (and b!6367058 c!1159317) b!6367056))

(assert (= (and b!6367058 (not c!1159317)) b!6367052))

(assert (= (and b!6367052 c!1159319) b!6367050))

(assert (= (and b!6367052 (not c!1159319)) b!6367049))

(assert (= (or b!6367056 b!6367050) bm!543511))

(assert (= (or b!6367056 b!6367050) bm!543513))

(assert (= (or b!6367059 bm!543511) bm!543515))

(assert (= (or b!6367059 bm!543513) bm!543516))

(assert (= (or b!6367054 b!6367059) bm!543512))

(assert (= (or b!6367054 bm!543516) bm!543514))

(declare-fun m!7170798 () Bool)

(assert (=> bm!543512 m!7170798))

(declare-fun m!7170800 () Bool)

(assert (=> bm!543515 m!7170800))

(declare-fun m!7170802 () Bool)

(assert (=> b!6367053 m!7170802))

(declare-fun m!7170804 () Bool)

(assert (=> bm!543514 m!7170804))

(declare-fun m!7170806 () Bool)

(assert (=> b!6367055 m!7170806))

(assert (=> bm!543366 d!1997135))

(declare-fun b!6367060 () Bool)

(declare-fun e!3865864 () (InoxSet Context!11318))

(assert (=> b!6367060 (= e!3865864 ((as const (Array Context!11318 Bool)) false))))

(declare-fun b!6367061 () Bool)

(declare-fun call!543526 () (InoxSet Context!11318))

(assert (=> b!6367061 (= e!3865864 call!543526)))

(declare-fun bm!543517 () Bool)

(declare-fun call!543522 () List!65124)

(declare-fun call!543527 () List!65124)

(assert (=> bm!543517 (= call!543522 call!543527)))

(declare-fun d!1997137 () Bool)

(declare-fun c!1159321 () Bool)

(assert (=> d!1997137 (= c!1159321 (and ((_ is ElementMatch!16275) (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))) (= (c!1158964 (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))) (h!71449 s!2326))))))

(declare-fun e!3865865 () (InoxSet Context!11318))

(assert (=> d!1997137 (= (derivationStepZipperDown!1523 (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343))))))) (Context!11319 (t!378720 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))) (h!71449 s!2326)) e!3865865)))

(declare-fun b!6367062 () Bool)

(declare-fun c!1159323 () Bool)

(declare-fun e!3865863 () Bool)

(assert (=> b!6367062 (= c!1159323 e!3865863)))

(declare-fun res!2619468 () Bool)

(assert (=> b!6367062 (=> (not res!2619468) (not e!3865863))))

(assert (=> b!6367062 (= res!2619468 ((_ is Concat!25120) (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))))))

(declare-fun e!3865868 () (InoxSet Context!11318))

(declare-fun e!3865866 () (InoxSet Context!11318))

(assert (=> b!6367062 (= e!3865868 e!3865866)))

(declare-fun b!6367063 () Bool)

(declare-fun c!1159324 () Bool)

(assert (=> b!6367063 (= c!1159324 ((_ is Star!16275) (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))))))

(declare-fun e!3865867 () (InoxSet Context!11318))

(assert (=> b!6367063 (= e!3865867 e!3865864)))

(declare-fun b!6367064 () Bool)

(assert (=> b!6367064 (= e!3865865 (store ((as const (Array Context!11318 Bool)) false) (Context!11319 (t!378720 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))) true))))

(declare-fun b!6367065 () Bool)

(declare-fun call!543525 () (InoxSet Context!11318))

(declare-fun call!543524 () (InoxSet Context!11318))

(assert (=> b!6367065 (= e!3865868 ((_ map or) call!543525 call!543524))))

(declare-fun c!1159325 () Bool)

(declare-fun bm!543518 () Bool)

(assert (=> bm!543518 (= call!543524 (derivationStepZipperDown!1523 (ite c!1159325 (regTwo!33063 (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))) (regOne!33062 (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343))))))))) (ite c!1159325 (Context!11319 (t!378720 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))) (Context!11319 call!543527)) (h!71449 s!2326)))))

(declare-fun bm!543519 () Bool)

(declare-fun call!543523 () (InoxSet Context!11318))

(assert (=> bm!543519 (= call!543526 call!543523)))

(declare-fun b!6367066 () Bool)

(assert (=> b!6367066 (= e!3865863 (nullable!6268 (regOne!33062 (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343))))))))))))

(declare-fun bm!543520 () Bool)

(declare-fun c!1159322 () Bool)

(assert (=> bm!543520 (= call!543525 (derivationStepZipperDown!1523 (ite c!1159325 (regOne!33063 (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))) (ite c!1159323 (regTwo!33062 (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))) (ite c!1159322 (regOne!33062 (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))) (reg!16604 (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343))))))))))) (ite (or c!1159325 c!1159323) (Context!11319 (t!378720 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))) (Context!11319 call!543522)) (h!71449 s!2326)))))

(declare-fun b!6367067 () Bool)

(assert (=> b!6367067 (= e!3865867 call!543526)))

(declare-fun bm!543521 () Bool)

(assert (=> bm!543521 (= call!543527 ($colon$colon!2136 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343))))))))) (ite (or c!1159323 c!1159322) (regTwo!33062 (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))) (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343))))))))))))

(declare-fun b!6367068 () Bool)

(assert (=> b!6367068 (= e!3865865 e!3865868)))

(assert (=> b!6367068 (= c!1159325 ((_ is Union!16275) (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))))))

(declare-fun bm!543522 () Bool)

(assert (=> bm!543522 (= call!543523 call!543525)))

(declare-fun b!6367069 () Bool)

(assert (=> b!6367069 (= e!3865866 e!3865867)))

(assert (=> b!6367069 (= c!1159322 ((_ is Concat!25120) (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))))))

(declare-fun b!6367070 () Bool)

(assert (=> b!6367070 (= e!3865866 ((_ map or) call!543524 call!543523))))

(assert (= (and d!1997137 c!1159321) b!6367064))

(assert (= (and d!1997137 (not c!1159321)) b!6367068))

(assert (= (and b!6367068 c!1159325) b!6367065))

(assert (= (and b!6367068 (not c!1159325)) b!6367062))

(assert (= (and b!6367062 res!2619468) b!6367066))

(assert (= (and b!6367062 c!1159323) b!6367070))

(assert (= (and b!6367062 (not c!1159323)) b!6367069))

(assert (= (and b!6367069 c!1159322) b!6367067))

(assert (= (and b!6367069 (not c!1159322)) b!6367063))

(assert (= (and b!6367063 c!1159324) b!6367061))

(assert (= (and b!6367063 (not c!1159324)) b!6367060))

(assert (= (or b!6367067 b!6367061) bm!543517))

(assert (= (or b!6367067 b!6367061) bm!543519))

(assert (= (or b!6367070 bm!543517) bm!543521))

(assert (= (or b!6367070 bm!543519) bm!543522))

(assert (= (or b!6367065 b!6367070) bm!543518))

(assert (= (or b!6367065 bm!543522) bm!543520))

(declare-fun m!7170808 () Bool)

(assert (=> bm!543518 m!7170808))

(declare-fun m!7170810 () Bool)

(assert (=> bm!543521 m!7170810))

(declare-fun m!7170812 () Bool)

(assert (=> b!6367064 m!7170812))

(declare-fun m!7170814 () Bool)

(assert (=> bm!543520 m!7170814))

(declare-fun m!7170816 () Bool)

(assert (=> b!6367066 m!7170816))

(assert (=> bm!543365 d!1997137))

(declare-fun b!6367071 () Bool)

(declare-fun e!3865872 () Bool)

(assert (=> b!6367071 (= e!3865872 (matchR!8458 (derivativeStep!4980 (regOne!33062 r!7292) (head!13042 (_1!36557 (get!22497 lt!2367520)))) (tail!12127 (_1!36557 (get!22497 lt!2367520)))))))

(declare-fun d!1997139 () Bool)

(declare-fun e!3865869 () Bool)

(assert (=> d!1997139 e!3865869))

(declare-fun c!1159326 () Bool)

(assert (=> d!1997139 (= c!1159326 ((_ is EmptyExpr!16275) (regOne!33062 r!7292)))))

(declare-fun lt!2367573 () Bool)

(assert (=> d!1997139 (= lt!2367573 e!3865872)))

(declare-fun c!1159328 () Bool)

(assert (=> d!1997139 (= c!1159328 (isEmpty!37113 (_1!36557 (get!22497 lt!2367520))))))

(assert (=> d!1997139 (validRegex!8011 (regOne!33062 r!7292))))

(assert (=> d!1997139 (= (matchR!8458 (regOne!33062 r!7292) (_1!36557 (get!22497 lt!2367520))) lt!2367573)))

(declare-fun b!6367072 () Bool)

(declare-fun res!2619471 () Bool)

(declare-fun e!3865874 () Bool)

(assert (=> b!6367072 (=> res!2619471 e!3865874)))

(assert (=> b!6367072 (= res!2619471 (not (isEmpty!37113 (tail!12127 (_1!36557 (get!22497 lt!2367520))))))))

(declare-fun b!6367073 () Bool)

(declare-fun e!3865870 () Bool)

(assert (=> b!6367073 (= e!3865870 (not lt!2367573))))

(declare-fun b!6367074 () Bool)

(declare-fun res!2619470 () Bool)

(declare-fun e!3865873 () Bool)

(assert (=> b!6367074 (=> res!2619470 e!3865873)))

(assert (=> b!6367074 (= res!2619470 (not ((_ is ElementMatch!16275) (regOne!33062 r!7292))))))

(assert (=> b!6367074 (= e!3865870 e!3865873)))

(declare-fun b!6367075 () Bool)

(declare-fun res!2619469 () Bool)

(declare-fun e!3865875 () Bool)

(assert (=> b!6367075 (=> (not res!2619469) (not e!3865875))))

(assert (=> b!6367075 (= res!2619469 (isEmpty!37113 (tail!12127 (_1!36557 (get!22497 lt!2367520)))))))

(declare-fun b!6367076 () Bool)

(declare-fun call!543528 () Bool)

(assert (=> b!6367076 (= e!3865869 (= lt!2367573 call!543528))))

(declare-fun b!6367077 () Bool)

(assert (=> b!6367077 (= e!3865872 (nullable!6268 (regOne!33062 r!7292)))))

(declare-fun b!6367078 () Bool)

(assert (=> b!6367078 (= e!3865874 (not (= (head!13042 (_1!36557 (get!22497 lt!2367520))) (c!1158964 (regOne!33062 r!7292)))))))

(declare-fun b!6367079 () Bool)

(declare-fun res!2619473 () Bool)

(assert (=> b!6367079 (=> (not res!2619473) (not e!3865875))))

(assert (=> b!6367079 (= res!2619473 (not call!543528))))

(declare-fun b!6367080 () Bool)

(declare-fun res!2619476 () Bool)

(assert (=> b!6367080 (=> res!2619476 e!3865873)))

(assert (=> b!6367080 (= res!2619476 e!3865875)))

(declare-fun res!2619475 () Bool)

(assert (=> b!6367080 (=> (not res!2619475) (not e!3865875))))

(assert (=> b!6367080 (= res!2619475 lt!2367573)))

(declare-fun b!6367081 () Bool)

(declare-fun e!3865871 () Bool)

(assert (=> b!6367081 (= e!3865873 e!3865871)))

(declare-fun res!2619474 () Bool)

(assert (=> b!6367081 (=> (not res!2619474) (not e!3865871))))

(assert (=> b!6367081 (= res!2619474 (not lt!2367573))))

(declare-fun bm!543523 () Bool)

(assert (=> bm!543523 (= call!543528 (isEmpty!37113 (_1!36557 (get!22497 lt!2367520))))))

(declare-fun b!6367082 () Bool)

(assert (=> b!6367082 (= e!3865875 (= (head!13042 (_1!36557 (get!22497 lt!2367520))) (c!1158964 (regOne!33062 r!7292))))))

(declare-fun b!6367083 () Bool)

(assert (=> b!6367083 (= e!3865871 e!3865874)))

(declare-fun res!2619472 () Bool)

(assert (=> b!6367083 (=> res!2619472 e!3865874)))

(assert (=> b!6367083 (= res!2619472 call!543528)))

(declare-fun b!6367084 () Bool)

(assert (=> b!6367084 (= e!3865869 e!3865870)))

(declare-fun c!1159327 () Bool)

(assert (=> b!6367084 (= c!1159327 ((_ is EmptyLang!16275) (regOne!33062 r!7292)))))

(assert (= (and d!1997139 c!1159328) b!6367077))

(assert (= (and d!1997139 (not c!1159328)) b!6367071))

(assert (= (and d!1997139 c!1159326) b!6367076))

(assert (= (and d!1997139 (not c!1159326)) b!6367084))

(assert (= (and b!6367084 c!1159327) b!6367073))

(assert (= (and b!6367084 (not c!1159327)) b!6367074))

(assert (= (and b!6367074 (not res!2619470)) b!6367080))

(assert (= (and b!6367080 res!2619475) b!6367079))

(assert (= (and b!6367079 res!2619473) b!6367075))

(assert (= (and b!6367075 res!2619469) b!6367082))

(assert (= (and b!6367080 (not res!2619476)) b!6367081))

(assert (= (and b!6367081 res!2619474) b!6367083))

(assert (= (and b!6367083 (not res!2619472)) b!6367072))

(assert (= (and b!6367072 (not res!2619471)) b!6367078))

(assert (= (or b!6367076 b!6367079 b!6367083) bm!543523))

(declare-fun m!7170818 () Bool)

(assert (=> b!6367082 m!7170818))

(assert (=> b!6367071 m!7170818))

(assert (=> b!6367071 m!7170818))

(declare-fun m!7170820 () Bool)

(assert (=> b!6367071 m!7170820))

(declare-fun m!7170822 () Bool)

(assert (=> b!6367071 m!7170822))

(assert (=> b!6367071 m!7170820))

(assert (=> b!6367071 m!7170822))

(declare-fun m!7170824 () Bool)

(assert (=> b!6367071 m!7170824))

(assert (=> b!6367075 m!7170822))

(assert (=> b!6367075 m!7170822))

(declare-fun m!7170826 () Bool)

(assert (=> b!6367075 m!7170826))

(declare-fun m!7170828 () Bool)

(assert (=> bm!543523 m!7170828))

(assert (=> b!6367072 m!7170822))

(assert (=> b!6367072 m!7170822))

(assert (=> b!6367072 m!7170826))

(assert (=> b!6367078 m!7170818))

(assert (=> d!1997139 m!7170828))

(assert (=> d!1997139 m!7170042))

(assert (=> b!6367077 m!7170788))

(assert (=> b!6366056 d!1997139))

(assert (=> b!6366056 d!1997087))

(declare-fun d!1997141 () Bool)

(declare-fun res!2619481 () Bool)

(declare-fun e!3865880 () Bool)

(assert (=> d!1997141 (=> res!2619481 e!3865880)))

(assert (=> d!1997141 (= res!2619481 ((_ is Nil!65000) (exprs!6159 setElem!43380)))))

(assert (=> d!1997141 (= (forall!15453 (exprs!6159 setElem!43380) lambda!350733) e!3865880)))

(declare-fun b!6367089 () Bool)

(declare-fun e!3865881 () Bool)

(assert (=> b!6367089 (= e!3865880 e!3865881)))

(declare-fun res!2619482 () Bool)

(assert (=> b!6367089 (=> (not res!2619482) (not e!3865881))))

(declare-fun dynLambda!25787 (Int Regex!16275) Bool)

(assert (=> b!6367089 (= res!2619482 (dynLambda!25787 lambda!350733 (h!71448 (exprs!6159 setElem!43380))))))

(declare-fun b!6367090 () Bool)

(assert (=> b!6367090 (= e!3865881 (forall!15453 (t!378720 (exprs!6159 setElem!43380)) lambda!350733))))

(assert (= (and d!1997141 (not res!2619481)) b!6367089))

(assert (= (and b!6367089 res!2619482) b!6367090))

(declare-fun b_lambda!241997 () Bool)

(assert (=> (not b_lambda!241997) (not b!6367089)))

(declare-fun m!7170830 () Bool)

(assert (=> b!6367089 m!7170830))

(declare-fun m!7170832 () Bool)

(assert (=> b!6367090 m!7170832))

(assert (=> d!1996747 d!1997141))

(assert (=> bs!1594775 d!1996799))

(declare-fun b!6367091 () Bool)

(declare-fun e!3865882 () (InoxSet Context!11318))

(assert (=> b!6367091 (= e!3865882 ((as const (Array Context!11318 Bool)) false))))

(declare-fun e!3865883 () (InoxSet Context!11318))

(declare-fun b!6367092 () Bool)

(declare-fun call!543529 () (InoxSet Context!11318))

(assert (=> b!6367092 (= e!3865883 ((_ map or) call!543529 (derivationStepZipperUp!1449 (Context!11319 (t!378720 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 lt!2367457)))))) (h!71449 s!2326))))))

(declare-fun d!1997143 () Bool)

(declare-fun c!1159329 () Bool)

(declare-fun e!3865884 () Bool)

(assert (=> d!1997143 (= c!1159329 e!3865884)))

(declare-fun res!2619483 () Bool)

(assert (=> d!1997143 (=> (not res!2619483) (not e!3865884))))

(assert (=> d!1997143 (= res!2619483 ((_ is Cons!65000) (exprs!6159 (Context!11319 (t!378720 (exprs!6159 lt!2367457))))))))

(assert (=> d!1997143 (= (derivationStepZipperUp!1449 (Context!11319 (t!378720 (exprs!6159 lt!2367457))) (h!71449 s!2326)) e!3865883)))

(declare-fun b!6367093 () Bool)

(assert (=> b!6367093 (= e!3865884 (nullable!6268 (h!71448 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 lt!2367457)))))))))

(declare-fun bm!543524 () Bool)

(assert (=> bm!543524 (= call!543529 (derivationStepZipperDown!1523 (h!71448 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 lt!2367457))))) (Context!11319 (t!378720 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 lt!2367457)))))) (h!71449 s!2326)))))

(declare-fun b!6367094 () Bool)

(assert (=> b!6367094 (= e!3865882 call!543529)))

(declare-fun b!6367095 () Bool)

(assert (=> b!6367095 (= e!3865883 e!3865882)))

(declare-fun c!1159330 () Bool)

(assert (=> b!6367095 (= c!1159330 ((_ is Cons!65000) (exprs!6159 (Context!11319 (t!378720 (exprs!6159 lt!2367457))))))))

(assert (= (and d!1997143 res!2619483) b!6367093))

(assert (= (and d!1997143 c!1159329) b!6367092))

(assert (= (and d!1997143 (not c!1159329)) b!6367095))

(assert (= (and b!6367095 c!1159330) b!6367094))

(assert (= (and b!6367095 (not c!1159330)) b!6367091))

(assert (= (or b!6367092 b!6367094) bm!543524))

(declare-fun m!7170834 () Bool)

(assert (=> b!6367092 m!7170834))

(declare-fun m!7170836 () Bool)

(assert (=> b!6367093 m!7170836))

(declare-fun m!7170838 () Bool)

(assert (=> bm!543524 m!7170838))

(assert (=> b!6366118 d!1997143))

(declare-fun d!1997145 () Bool)

(assert (=> d!1997145 (= (isUnion!1114 lt!2367532) ((_ is Union!16275) lt!2367532))))

(assert (=> b!6366184 d!1997145))

(declare-fun b!6367096 () Bool)

(declare-fun e!3865885 () (InoxSet Context!11318))

(assert (=> b!6367096 (= e!3865885 ((as const (Array Context!11318 Bool)) false))))

(declare-fun e!3865886 () (InoxSet Context!11318))

(declare-fun call!543530 () (InoxSet Context!11318))

(declare-fun b!6367097 () Bool)

(assert (=> b!6367097 (= e!3865886 ((_ map or) call!543530 (derivationStepZipperUp!1449 (Context!11319 (t!378720 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 (h!71450 zl!343))))))) (h!71449 s!2326))))))

(declare-fun d!1997147 () Bool)

(declare-fun c!1159331 () Bool)

(declare-fun e!3865887 () Bool)

(assert (=> d!1997147 (= c!1159331 e!3865887)))

(declare-fun res!2619484 () Bool)

(assert (=> d!1997147 (=> (not res!2619484) (not e!3865887))))

(assert (=> d!1997147 (= res!2619484 ((_ is Cons!65000) (exprs!6159 (Context!11319 (t!378720 (exprs!6159 (h!71450 zl!343)))))))))

(assert (=> d!1997147 (= (derivationStepZipperUp!1449 (Context!11319 (t!378720 (exprs!6159 (h!71450 zl!343)))) (h!71449 s!2326)) e!3865886)))

(declare-fun b!6367098 () Bool)

(assert (=> b!6367098 (= e!3865887 (nullable!6268 (h!71448 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 (h!71450 zl!343))))))))))

(declare-fun bm!543525 () Bool)

(assert (=> bm!543525 (= call!543530 (derivationStepZipperDown!1523 (h!71448 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 (h!71450 zl!343)))))) (Context!11319 (t!378720 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 (h!71450 zl!343))))))) (h!71449 s!2326)))))

(declare-fun b!6367099 () Bool)

(assert (=> b!6367099 (= e!3865885 call!543530)))

(declare-fun b!6367100 () Bool)

(assert (=> b!6367100 (= e!3865886 e!3865885)))

(declare-fun c!1159332 () Bool)

(assert (=> b!6367100 (= c!1159332 ((_ is Cons!65000) (exprs!6159 (Context!11319 (t!378720 (exprs!6159 (h!71450 zl!343)))))))))

(assert (= (and d!1997147 res!2619484) b!6367098))

(assert (= (and d!1997147 c!1159331) b!6367097))

(assert (= (and d!1997147 (not c!1159331)) b!6367100))

(assert (= (and b!6367100 c!1159332) b!6367099))

(assert (= (and b!6367100 (not c!1159332)) b!6367096))

(assert (= (or b!6367097 b!6367099) bm!543525))

(declare-fun m!7170840 () Bool)

(assert (=> b!6367097 m!7170840))

(declare-fun m!7170842 () Bool)

(assert (=> b!6367098 m!7170842))

(declare-fun m!7170844 () Bool)

(assert (=> bm!543525 m!7170844))

(assert (=> b!6366215 d!1997147))

(declare-fun bs!1594952 () Bool)

(declare-fun b!6367101 () Bool)

(assert (= bs!1594952 (and b!6367101 b!6365680)))

(declare-fun lambda!350812 () Int)

(assert (=> bs!1594952 (not (= lambda!350812 lambda!350709))))

(declare-fun bs!1594953 () Bool)

(assert (= bs!1594953 (and b!6367101 d!1996793)))

(assert (=> bs!1594953 (not (= lambda!350812 lambda!350754))))

(declare-fun bs!1594954 () Bool)

(assert (= bs!1594954 (and b!6367101 d!1996791)))

(assert (=> bs!1594954 (not (= lambda!350812 lambda!350749))))

(declare-fun bs!1594955 () Bool)

(assert (= bs!1594955 (and b!6367101 b!6366278)))

(assert (=> bs!1594955 (= (and (= (reg!16604 (regOne!33063 r!7292)) (reg!16604 r!7292)) (= (regOne!33063 r!7292) r!7292)) (= lambda!350812 lambda!350770))))

(assert (=> bs!1594952 (not (= lambda!350812 lambda!350710))))

(declare-fun bs!1594956 () Bool)

(assert (= bs!1594956 (and b!6367101 b!6366283)))

(assert (=> bs!1594956 (not (= lambda!350812 lambda!350771))))

(assert (=> bs!1594953 (not (= lambda!350812 lambda!350755))))

(assert (=> b!6367101 true))

(assert (=> b!6367101 true))

(declare-fun bs!1594957 () Bool)

(declare-fun b!6367106 () Bool)

(assert (= bs!1594957 (and b!6367106 b!6365680)))

(declare-fun lambda!350813 () Int)

(assert (=> bs!1594957 (not (= lambda!350813 lambda!350709))))

(declare-fun bs!1594958 () Bool)

(assert (= bs!1594958 (and b!6367106 d!1996793)))

(assert (=> bs!1594958 (not (= lambda!350813 lambda!350754))))

(declare-fun bs!1594959 () Bool)

(assert (= bs!1594959 (and b!6367106 d!1996791)))

(assert (=> bs!1594959 (not (= lambda!350813 lambda!350749))))

(declare-fun bs!1594960 () Bool)

(assert (= bs!1594960 (and b!6367106 b!6367101)))

(assert (=> bs!1594960 (not (= lambda!350813 lambda!350812))))

(declare-fun bs!1594961 () Bool)

(assert (= bs!1594961 (and b!6367106 b!6366278)))

(assert (=> bs!1594961 (not (= lambda!350813 lambda!350770))))

(assert (=> bs!1594957 (= (and (= (regOne!33062 (regOne!33063 r!7292)) (regOne!33062 r!7292)) (= (regTwo!33062 (regOne!33063 r!7292)) (regTwo!33062 r!7292))) (= lambda!350813 lambda!350710))))

(declare-fun bs!1594962 () Bool)

(assert (= bs!1594962 (and b!6367106 b!6366283)))

(assert (=> bs!1594962 (= (and (= (regOne!33062 (regOne!33063 r!7292)) (regOne!33062 r!7292)) (= (regTwo!33062 (regOne!33063 r!7292)) (regTwo!33062 r!7292))) (= lambda!350813 lambda!350771))))

(assert (=> bs!1594958 (= (and (= (regOne!33062 (regOne!33063 r!7292)) (regOne!33062 r!7292)) (= (regTwo!33062 (regOne!33063 r!7292)) (regTwo!33062 r!7292))) (= lambda!350813 lambda!350755))))

(assert (=> b!6367106 true))

(assert (=> b!6367106 true))

(declare-fun e!3865891 () Bool)

(declare-fun call!543531 () Bool)

(assert (=> b!6367101 (= e!3865891 call!543531)))

(declare-fun b!6367102 () Bool)

(declare-fun e!3865889 () Bool)

(declare-fun e!3865888 () Bool)

(assert (=> b!6367102 (= e!3865889 e!3865888)))

(declare-fun res!2619486 () Bool)

(assert (=> b!6367102 (= res!2619486 (matchRSpec!3376 (regOne!33063 (regOne!33063 r!7292)) s!2326))))

(assert (=> b!6367102 (=> res!2619486 e!3865888)))

(declare-fun bm!543526 () Bool)

(declare-fun c!1159335 () Bool)

(assert (=> bm!543526 (= call!543531 (Exists!3345 (ite c!1159335 lambda!350812 lambda!350813)))))

(declare-fun b!6367103 () Bool)

(declare-fun c!1159336 () Bool)

(assert (=> b!6367103 (= c!1159336 ((_ is Union!16275) (regOne!33063 r!7292)))))

(declare-fun e!3865894 () Bool)

(assert (=> b!6367103 (= e!3865894 e!3865889)))

(declare-fun b!6367104 () Bool)

(declare-fun e!3865890 () Bool)

(declare-fun e!3865893 () Bool)

(assert (=> b!6367104 (= e!3865890 e!3865893)))

(declare-fun res!2619485 () Bool)

(assert (=> b!6367104 (= res!2619485 (not ((_ is EmptyLang!16275) (regOne!33063 r!7292))))))

(assert (=> b!6367104 (=> (not res!2619485) (not e!3865893))))

(declare-fun b!6367105 () Bool)

(declare-fun c!1159334 () Bool)

(assert (=> b!6367105 (= c!1159334 ((_ is ElementMatch!16275) (regOne!33063 r!7292)))))

(assert (=> b!6367105 (= e!3865893 e!3865894)))

(declare-fun e!3865892 () Bool)

(assert (=> b!6367106 (= e!3865892 call!543531)))

(declare-fun b!6367107 () Bool)

(assert (=> b!6367107 (= e!3865894 (= s!2326 (Cons!65001 (c!1158964 (regOne!33063 r!7292)) Nil!65001)))))

(declare-fun b!6367108 () Bool)

(declare-fun call!543532 () Bool)

(assert (=> b!6367108 (= e!3865890 call!543532)))

(declare-fun d!1997149 () Bool)

(declare-fun c!1159333 () Bool)

(assert (=> d!1997149 (= c!1159333 ((_ is EmptyExpr!16275) (regOne!33063 r!7292)))))

(assert (=> d!1997149 (= (matchRSpec!3376 (regOne!33063 r!7292) s!2326) e!3865890)))

(declare-fun bm!543527 () Bool)

(assert (=> bm!543527 (= call!543532 (isEmpty!37113 s!2326))))

(declare-fun b!6367109 () Bool)

(assert (=> b!6367109 (= e!3865889 e!3865892)))

(assert (=> b!6367109 (= c!1159335 ((_ is Star!16275) (regOne!33063 r!7292)))))

(declare-fun b!6367110 () Bool)

(assert (=> b!6367110 (= e!3865888 (matchRSpec!3376 (regTwo!33063 (regOne!33063 r!7292)) s!2326))))

(declare-fun b!6367111 () Bool)

(declare-fun res!2619487 () Bool)

(assert (=> b!6367111 (=> res!2619487 e!3865891)))

(assert (=> b!6367111 (= res!2619487 call!543532)))

(assert (=> b!6367111 (= e!3865892 e!3865891)))

(assert (= (and d!1997149 c!1159333) b!6367108))

(assert (= (and d!1997149 (not c!1159333)) b!6367104))

(assert (= (and b!6367104 res!2619485) b!6367105))

(assert (= (and b!6367105 c!1159334) b!6367107))

(assert (= (and b!6367105 (not c!1159334)) b!6367103))

(assert (= (and b!6367103 c!1159336) b!6367102))

(assert (= (and b!6367103 (not c!1159336)) b!6367109))

(assert (= (and b!6367102 (not res!2619486)) b!6367110))

(assert (= (and b!6367109 c!1159335) b!6367111))

(assert (= (and b!6367109 (not c!1159335)) b!6367106))

(assert (= (and b!6367111 (not res!2619487)) b!6367101))

(assert (= (or b!6367101 b!6367106) bm!543526))

(assert (= (or b!6367108 b!6367111) bm!543527))

(declare-fun m!7170846 () Bool)

(assert (=> b!6367102 m!7170846))

(declare-fun m!7170848 () Bool)

(assert (=> bm!543526 m!7170848))

(assert (=> bm!543527 m!7169922))

(declare-fun m!7170850 () Bool)

(assert (=> b!6367110 m!7170850))

(assert (=> b!6366279 d!1997149))

(declare-fun d!1997151 () Bool)

(assert (=> d!1997151 (= (flatMap!1780 lt!2367451 lambda!350758) (choose!47299 lt!2367451 lambda!350758))))

(declare-fun bs!1594963 () Bool)

(assert (= bs!1594963 d!1997151))

(declare-fun m!7170852 () Bool)

(assert (=> bs!1594963 m!7170852))

(assert (=> d!1996803 d!1997151))

(assert (=> d!1996737 d!1997125))

(declare-fun d!1997153 () Bool)

(declare-fun c!1159337 () Bool)

(assert (=> d!1997153 (= c!1159337 (isEmpty!37113 (tail!12127 s!2326)))))

(declare-fun e!3865895 () Bool)

(assert (=> d!1997153 (= (matchZipper!2287 (derivationStepZipper!2241 lt!2367451 (head!13042 s!2326)) (tail!12127 s!2326)) e!3865895)))

(declare-fun b!6367112 () Bool)

(assert (=> b!6367112 (= e!3865895 (nullableZipper!2040 (derivationStepZipper!2241 lt!2367451 (head!13042 s!2326))))))

(declare-fun b!6367113 () Bool)

(assert (=> b!6367113 (= e!3865895 (matchZipper!2287 (derivationStepZipper!2241 (derivationStepZipper!2241 lt!2367451 (head!13042 s!2326)) (head!13042 (tail!12127 s!2326))) (tail!12127 (tail!12127 s!2326))))))

(assert (= (and d!1997153 c!1159337) b!6367112))

(assert (= (and d!1997153 (not c!1159337)) b!6367113))

(assert (=> d!1997153 m!7169930))

(assert (=> d!1997153 m!7170182))

(assert (=> b!6367112 m!7169928))

(declare-fun m!7170854 () Bool)

(assert (=> b!6367112 m!7170854))

(assert (=> b!6367113 m!7169930))

(declare-fun m!7170856 () Bool)

(assert (=> b!6367113 m!7170856))

(assert (=> b!6367113 m!7169928))

(assert (=> b!6367113 m!7170856))

(declare-fun m!7170858 () Bool)

(assert (=> b!6367113 m!7170858))

(assert (=> b!6367113 m!7169930))

(declare-fun m!7170860 () Bool)

(assert (=> b!6367113 m!7170860))

(assert (=> b!6367113 m!7170858))

(assert (=> b!6367113 m!7170860))

(declare-fun m!7170862 () Bool)

(assert (=> b!6367113 m!7170862))

(assert (=> b!6365943 d!1997153))

(declare-fun bs!1594964 () Bool)

(declare-fun d!1997155 () Bool)

(assert (= bs!1594964 (and d!1997155 b!6365668)))

(declare-fun lambda!350814 () Int)

(assert (=> bs!1594964 (= (= (head!13042 s!2326) (h!71449 s!2326)) (= lambda!350814 lambda!350711))))

(declare-fun bs!1594965 () Bool)

(assert (= bs!1594965 (and d!1997155 d!1996803)))

(assert (=> bs!1594965 (= (= (head!13042 s!2326) (h!71449 s!2326)) (= lambda!350814 lambda!350758))))

(declare-fun bs!1594966 () Bool)

(assert (= bs!1594966 (and d!1997155 d!1997091)))

(assert (=> bs!1594966 (= (= (head!13042 s!2326) (head!13042 (t!378721 s!2326))) (= lambda!350814 lambda!350806))))

(assert (=> d!1997155 true))

(assert (=> d!1997155 (= (derivationStepZipper!2241 lt!2367451 (head!13042 s!2326)) (flatMap!1780 lt!2367451 lambda!350814))))

(declare-fun bs!1594967 () Bool)

(assert (= bs!1594967 d!1997155))

(declare-fun m!7170864 () Bool)

(assert (=> bs!1594967 m!7170864))

(assert (=> b!6365943 d!1997155))

(assert (=> b!6365943 d!1997111))

(declare-fun d!1997157 () Bool)

(assert (=> d!1997157 (= (tail!12127 s!2326) (t!378721 s!2326))))

(assert (=> b!6365943 d!1997157))

(declare-fun d!1997159 () Bool)

(assert (=> d!1997159 (= (isEmpty!37114 (findConcatSeparation!2580 (regOne!33062 r!7292) (regTwo!33062 r!7292) Nil!65001 s!2326 s!2326)) (not ((_ is Some!16165) (findConcatSeparation!2580 (regOne!33062 r!7292) (regTwo!33062 r!7292) Nil!65001 s!2326 s!2326))))))

(assert (=> d!1996795 d!1997159))

(declare-fun d!1997161 () Bool)

(assert (=> d!1997161 (= ($colon$colon!2136 (exprs!6159 lt!2367450) (ite (or c!1159120 c!1159119) (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (h!71448 (exprs!6159 (h!71450 zl!343))))) (Cons!65000 (ite (or c!1159120 c!1159119) (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (h!71448 (exprs!6159 (h!71450 zl!343)))) (exprs!6159 lt!2367450)))))

(assert (=> bm!543371 d!1997161))

(assert (=> d!1996791 d!1996755))

(assert (=> d!1996791 d!1997131))

(assert (=> d!1996791 d!1996795))

(declare-fun d!1997163 () Bool)

(assert (=> d!1997163 (= (Exists!3345 lambda!350749) (choose!47296 lambda!350749))))

(declare-fun bs!1594968 () Bool)

(assert (= bs!1594968 d!1997163))

(declare-fun m!7170866 () Bool)

(assert (=> bs!1594968 m!7170866))

(assert (=> d!1996791 d!1997163))

(declare-fun bs!1594969 () Bool)

(declare-fun d!1997165 () Bool)

(assert (= bs!1594969 (and d!1997165 b!6365680)))

(declare-fun lambda!350817 () Int)

(assert (=> bs!1594969 (= lambda!350817 lambda!350709)))

(declare-fun bs!1594970 () Bool)

(assert (= bs!1594970 (and d!1997165 d!1996793)))

(assert (=> bs!1594970 (= lambda!350817 lambda!350754)))

(declare-fun bs!1594971 () Bool)

(assert (= bs!1594971 (and d!1997165 b!6367106)))

(assert (=> bs!1594971 (not (= lambda!350817 lambda!350813))))

(declare-fun bs!1594972 () Bool)

(assert (= bs!1594972 (and d!1997165 d!1996791)))

(assert (=> bs!1594972 (= lambda!350817 lambda!350749)))

(declare-fun bs!1594973 () Bool)

(assert (= bs!1594973 (and d!1997165 b!6367101)))

(assert (=> bs!1594973 (not (= lambda!350817 lambda!350812))))

(declare-fun bs!1594974 () Bool)

(assert (= bs!1594974 (and d!1997165 b!6366278)))

(assert (=> bs!1594974 (not (= lambda!350817 lambda!350770))))

(assert (=> bs!1594969 (not (= lambda!350817 lambda!350710))))

(declare-fun bs!1594975 () Bool)

(assert (= bs!1594975 (and d!1997165 b!6366283)))

(assert (=> bs!1594975 (not (= lambda!350817 lambda!350771))))

(assert (=> bs!1594970 (not (= lambda!350817 lambda!350755))))

(assert (=> d!1997165 true))

(assert (=> d!1997165 true))

(assert (=> d!1997165 true))

(assert (=> d!1997165 (= (isDefined!12869 (findConcatSeparation!2580 (regOne!33062 r!7292) (regTwo!33062 r!7292) Nil!65001 s!2326 s!2326)) (Exists!3345 lambda!350817))))

(assert (=> d!1997165 true))

(declare-fun _$89!2599 () Unit!158431)

(assert (=> d!1997165 (= (choose!47297 (regOne!33062 r!7292) (regTwo!33062 r!7292) s!2326) _$89!2599)))

(declare-fun bs!1594976 () Bool)

(assert (= bs!1594976 d!1997165))

(assert (=> bs!1594976 m!7169696))

(assert (=> bs!1594976 m!7169696))

(assert (=> bs!1594976 m!7169698))

(declare-fun m!7170868 () Bool)

(assert (=> bs!1594976 m!7170868))

(assert (=> d!1996791 d!1997165))

(declare-fun d!1997167 () Bool)

(assert (=> d!1997167 true))

(declare-fun setRes!43394 () Bool)

(assert (=> d!1997167 setRes!43394))

(declare-fun condSetEmpty!43394 () Bool)

(declare-fun res!2619494 () (InoxSet Context!11318))

(assert (=> d!1997167 (= condSetEmpty!43394 (= res!2619494 ((as const (Array Context!11318 Bool)) false)))))

(assert (=> d!1997167 (= (choose!47299 lt!2367451 lambda!350711) res!2619494)))

(declare-fun setIsEmpty!43394 () Bool)

(assert (=> setIsEmpty!43394 setRes!43394))

(declare-fun e!3865900 () Bool)

(declare-fun tp!1772833 () Bool)

(declare-fun setElem!43394 () Context!11318)

(declare-fun setNonEmpty!43394 () Bool)

(assert (=> setNonEmpty!43394 (= setRes!43394 (and tp!1772833 (inv!83934 setElem!43394) e!3865900))))

(declare-fun setRest!43394 () (InoxSet Context!11318))

(assert (=> setNonEmpty!43394 (= res!2619494 ((_ map or) (store ((as const (Array Context!11318 Bool)) false) setElem!43394 true) setRest!43394))))

(declare-fun b!6367120 () Bool)

(declare-fun tp!1772834 () Bool)

(assert (=> b!6367120 (= e!3865900 tp!1772834)))

(assert (= (and d!1997167 condSetEmpty!43394) setIsEmpty!43394))

(assert (= (and d!1997167 (not condSetEmpty!43394)) setNonEmpty!43394))

(assert (= setNonEmpty!43394 b!6367120))

(declare-fun m!7170870 () Bool)

(assert (=> setNonEmpty!43394 m!7170870))

(assert (=> d!1996797 d!1997167))

(declare-fun d!1997169 () Bool)

(declare-fun c!1159340 () Bool)

(assert (=> d!1997169 (= c!1159340 ((_ is Nil!65002) lt!2367495))))

(declare-fun e!3865903 () (InoxSet Context!11318))

(assert (=> d!1997169 (= (content!12282 lt!2367495) e!3865903)))

(declare-fun b!6367125 () Bool)

(assert (=> b!6367125 (= e!3865903 ((as const (Array Context!11318 Bool)) false))))

(declare-fun b!6367126 () Bool)

(assert (=> b!6367126 (= e!3865903 ((_ map or) (store ((as const (Array Context!11318 Bool)) false) (h!71450 lt!2367495) true) (content!12282 (t!378722 lt!2367495))))))

(assert (= (and d!1997169 c!1159340) b!6367125))

(assert (= (and d!1997169 (not c!1159340)) b!6367126))

(declare-fun m!7170872 () Bool)

(assert (=> b!6367126 m!7170872))

(declare-fun m!7170874 () Bool)

(assert (=> b!6367126 m!7170874))

(assert (=> b!6365952 d!1997169))

(declare-fun d!1997171 () Bool)

(assert (=> d!1997171 (= (nullable!6268 (regOne!33062 (reg!16604 (regOne!33062 r!7292)))) (nullableFct!2215 (regOne!33062 (reg!16604 (regOne!33062 r!7292)))))))

(declare-fun bs!1594977 () Bool)

(assert (= bs!1594977 d!1997171))

(declare-fun m!7170876 () Bool)

(assert (=> bs!1594977 m!7170876))

(assert (=> b!6366152 d!1997171))

(declare-fun b!6367127 () Bool)

(declare-fun e!3865905 () Bool)

(declare-fun call!543535 () Bool)

(assert (=> b!6367127 (= e!3865905 call!543535)))

(declare-fun b!6367128 () Bool)

(declare-fun e!3865906 () Bool)

(declare-fun call!543534 () Bool)

(assert (=> b!6367128 (= e!3865906 call!543534)))

(declare-fun b!6367129 () Bool)

(declare-fun e!3865907 () Bool)

(assert (=> b!6367129 (= e!3865907 e!3865906)))

(declare-fun res!2619497 () Bool)

(assert (=> b!6367129 (= res!2619497 (not (nullable!6268 (reg!16604 lt!2367545))))))

(assert (=> b!6367129 (=> (not res!2619497) (not e!3865906))))

(declare-fun b!6367130 () Bool)

(declare-fun e!3865909 () Bool)

(assert (=> b!6367130 (= e!3865907 e!3865909)))

(declare-fun c!1159342 () Bool)

(assert (=> b!6367130 (= c!1159342 ((_ is Union!16275) lt!2367545))))

(declare-fun b!6367132 () Bool)

(declare-fun e!3865908 () Bool)

(assert (=> b!6367132 (= e!3865908 call!543535)))

(declare-fun bm!543528 () Bool)

(assert (=> bm!543528 (= call!543535 call!543534)))

(declare-fun b!6367133 () Bool)

(declare-fun res!2619499 () Bool)

(declare-fun e!3865910 () Bool)

(assert (=> b!6367133 (=> res!2619499 e!3865910)))

(assert (=> b!6367133 (= res!2619499 (not ((_ is Concat!25120) lt!2367545)))))

(assert (=> b!6367133 (= e!3865909 e!3865910)))

(declare-fun b!6367131 () Bool)

(declare-fun e!3865904 () Bool)

(assert (=> b!6367131 (= e!3865904 e!3865907)))

(declare-fun c!1159341 () Bool)

(assert (=> b!6367131 (= c!1159341 ((_ is Star!16275) lt!2367545))))

(declare-fun d!1997173 () Bool)

(declare-fun res!2619496 () Bool)

(assert (=> d!1997173 (=> res!2619496 e!3865904)))

(assert (=> d!1997173 (= res!2619496 ((_ is ElementMatch!16275) lt!2367545))))

(assert (=> d!1997173 (= (validRegex!8011 lt!2367545) e!3865904)))

(declare-fun b!6367134 () Bool)

(assert (=> b!6367134 (= e!3865910 e!3865908)))

(declare-fun res!2619498 () Bool)

(assert (=> b!6367134 (=> (not res!2619498) (not e!3865908))))

(declare-fun call!543533 () Bool)

(assert (=> b!6367134 (= res!2619498 call!543533)))

(declare-fun bm!543529 () Bool)

(assert (=> bm!543529 (= call!543533 (validRegex!8011 (ite c!1159342 (regOne!33063 lt!2367545) (regOne!33062 lt!2367545))))))

(declare-fun bm!543530 () Bool)

(assert (=> bm!543530 (= call!543534 (validRegex!8011 (ite c!1159341 (reg!16604 lt!2367545) (ite c!1159342 (regTwo!33063 lt!2367545) (regTwo!33062 lt!2367545)))))))

(declare-fun b!6367135 () Bool)

(declare-fun res!2619495 () Bool)

(assert (=> b!6367135 (=> (not res!2619495) (not e!3865905))))

(assert (=> b!6367135 (= res!2619495 call!543533)))

(assert (=> b!6367135 (= e!3865909 e!3865905)))

(assert (= (and d!1997173 (not res!2619496)) b!6367131))

(assert (= (and b!6367131 c!1159341) b!6367129))

(assert (= (and b!6367131 (not c!1159341)) b!6367130))

(assert (= (and b!6367129 res!2619497) b!6367128))

(assert (= (and b!6367130 c!1159342) b!6367135))

(assert (= (and b!6367130 (not c!1159342)) b!6367133))

(assert (= (and b!6367135 res!2619495) b!6367127))

(assert (= (and b!6367133 (not res!2619499)) b!6367134))

(assert (= (and b!6367134 res!2619498) b!6367132))

(assert (= (or b!6367127 b!6367132) bm!543528))

(assert (= (or b!6367135 b!6367134) bm!543529))

(assert (= (or b!6367128 bm!543528) bm!543530))

(declare-fun m!7170878 () Bool)

(assert (=> b!6367129 m!7170878))

(declare-fun m!7170880 () Bool)

(assert (=> bm!543529 m!7170880))

(declare-fun m!7170882 () Bool)

(assert (=> bm!543530 m!7170882))

(assert (=> d!1996839 d!1997173))

(declare-fun d!1997175 () Bool)

(declare-fun res!2619500 () Bool)

(declare-fun e!3865911 () Bool)

(assert (=> d!1997175 (=> res!2619500 e!3865911)))

(assert (=> d!1997175 (= res!2619500 ((_ is Nil!65000) (exprs!6159 (h!71450 zl!343))))))

(assert (=> d!1997175 (= (forall!15453 (exprs!6159 (h!71450 zl!343)) lambda!350775) e!3865911)))

(declare-fun b!6367136 () Bool)

(declare-fun e!3865912 () Bool)

(assert (=> b!6367136 (= e!3865911 e!3865912)))

(declare-fun res!2619501 () Bool)

(assert (=> b!6367136 (=> (not res!2619501) (not e!3865912))))

(assert (=> b!6367136 (= res!2619501 (dynLambda!25787 lambda!350775 (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun b!6367137 () Bool)

(assert (=> b!6367137 (= e!3865912 (forall!15453 (t!378720 (exprs!6159 (h!71450 zl!343))) lambda!350775))))

(assert (= (and d!1997175 (not res!2619500)) b!6367136))

(assert (= (and b!6367136 res!2619501) b!6367137))

(declare-fun b_lambda!241999 () Bool)

(assert (=> (not b_lambda!241999) (not b!6367136)))

(declare-fun m!7170884 () Bool)

(assert (=> b!6367136 m!7170884))

(declare-fun m!7170886 () Bool)

(assert (=> b!6367137 m!7170886))

(assert (=> d!1996839 d!1997175))

(assert (=> d!1996801 d!1996797))

(declare-fun d!1997177 () Bool)

(assert (=> d!1997177 (= (flatMap!1780 lt!2367451 lambda!350711) (dynLambda!25785 lambda!350711 lt!2367457))))

(assert (=> d!1997177 true))

(declare-fun _$13!3535 () Unit!158431)

(assert (=> d!1997177 (= (choose!47300 lt!2367451 lt!2367457 lambda!350711) _$13!3535)))

(declare-fun b_lambda!242001 () Bool)

(assert (=> (not b_lambda!242001) (not d!1997177)))

(declare-fun bs!1594978 () Bool)

(assert (= bs!1594978 d!1997177))

(assert (=> bs!1594978 m!7169712))

(assert (=> bs!1594978 m!7170088))

(assert (=> d!1996801 d!1997177))

(declare-fun d!1997179 () Bool)

(assert (=> d!1997179 (= (Exists!3345 lambda!350754) (choose!47296 lambda!350754))))

(declare-fun bs!1594979 () Bool)

(assert (= bs!1594979 d!1997179))

(declare-fun m!7170888 () Bool)

(assert (=> bs!1594979 m!7170888))

(assert (=> d!1996793 d!1997179))

(declare-fun d!1997181 () Bool)

(assert (=> d!1997181 (= (Exists!3345 lambda!350755) (choose!47296 lambda!350755))))

(declare-fun bs!1594980 () Bool)

(assert (= bs!1594980 d!1997181))

(declare-fun m!7170890 () Bool)

(assert (=> bs!1594980 m!7170890))

(assert (=> d!1996793 d!1997181))

(declare-fun bs!1594981 () Bool)

(declare-fun d!1997183 () Bool)

(assert (= bs!1594981 (and d!1997183 b!6365680)))

(declare-fun lambda!350822 () Int)

(assert (=> bs!1594981 (= lambda!350822 lambda!350709)))

(declare-fun bs!1594982 () Bool)

(assert (= bs!1594982 (and d!1997183 d!1997165)))

(assert (=> bs!1594982 (= lambda!350822 lambda!350817)))

(declare-fun bs!1594983 () Bool)

(assert (= bs!1594983 (and d!1997183 d!1996793)))

(assert (=> bs!1594983 (= lambda!350822 lambda!350754)))

(declare-fun bs!1594984 () Bool)

(assert (= bs!1594984 (and d!1997183 b!6367106)))

(assert (=> bs!1594984 (not (= lambda!350822 lambda!350813))))

(declare-fun bs!1594985 () Bool)

(assert (= bs!1594985 (and d!1997183 d!1996791)))

(assert (=> bs!1594985 (= lambda!350822 lambda!350749)))

(declare-fun bs!1594986 () Bool)

(assert (= bs!1594986 (and d!1997183 b!6367101)))

(assert (=> bs!1594986 (not (= lambda!350822 lambda!350812))))

(declare-fun bs!1594987 () Bool)

(assert (= bs!1594987 (and d!1997183 b!6366278)))

(assert (=> bs!1594987 (not (= lambda!350822 lambda!350770))))

(assert (=> bs!1594981 (not (= lambda!350822 lambda!350710))))

(declare-fun bs!1594988 () Bool)

(assert (= bs!1594988 (and d!1997183 b!6366283)))

(assert (=> bs!1594988 (not (= lambda!350822 lambda!350771))))

(assert (=> bs!1594983 (not (= lambda!350822 lambda!350755))))

(assert (=> d!1997183 true))

(assert (=> d!1997183 true))

(assert (=> d!1997183 true))

(declare-fun lambda!350823 () Int)

(assert (=> bs!1594981 (not (= lambda!350823 lambda!350709))))

(assert (=> bs!1594982 (not (= lambda!350823 lambda!350817))))

(assert (=> bs!1594983 (not (= lambda!350823 lambda!350754))))

(assert (=> bs!1594984 (= (and (= (regOne!33062 r!7292) (regOne!33062 (regOne!33063 r!7292))) (= (regTwo!33062 r!7292) (regTwo!33062 (regOne!33063 r!7292)))) (= lambda!350823 lambda!350813))))

(assert (=> bs!1594985 (not (= lambda!350823 lambda!350749))))

(assert (=> bs!1594986 (not (= lambda!350823 lambda!350812))))

(assert (=> bs!1594981 (= lambda!350823 lambda!350710)))

(assert (=> bs!1594988 (= lambda!350823 lambda!350771)))

(assert (=> bs!1594983 (= lambda!350823 lambda!350755)))

(assert (=> bs!1594987 (not (= lambda!350823 lambda!350770))))

(declare-fun bs!1594989 () Bool)

(assert (= bs!1594989 d!1997183))

(assert (=> bs!1594989 (not (= lambda!350823 lambda!350822))))

(assert (=> d!1997183 true))

(assert (=> d!1997183 true))

(assert (=> d!1997183 true))

(assert (=> d!1997183 (= (Exists!3345 lambda!350822) (Exists!3345 lambda!350823))))

(assert (=> d!1997183 true))

(declare-fun _$90!2223 () Unit!158431)

(assert (=> d!1997183 (= (choose!47298 (regOne!33062 r!7292) (regTwo!33062 r!7292) s!2326) _$90!2223)))

(declare-fun m!7170892 () Bool)

(assert (=> bs!1594989 m!7170892))

(declare-fun m!7170894 () Bool)

(assert (=> bs!1594989 m!7170894))

(assert (=> d!1996793 d!1997183))

(assert (=> d!1996793 d!1997131))

(declare-fun d!1997185 () Bool)

(assert (=> d!1997185 (= (nullable!6268 r!7292) (nullableFct!2215 r!7292))))

(declare-fun bs!1594990 () Bool)

(assert (= bs!1594990 d!1997185))

(declare-fun m!7170896 () Bool)

(assert (=> bs!1594990 m!7170896))

(assert (=> b!6366323 d!1997185))

(declare-fun bs!1594991 () Bool)

(declare-fun d!1997187 () Bool)

(assert (= bs!1594991 (and d!1997187 d!1996839)))

(declare-fun lambda!350824 () Int)

(assert (=> bs!1594991 (= lambda!350824 lambda!350775)))

(declare-fun bs!1594992 () Bool)

(assert (= bs!1594992 (and d!1997187 d!1996811)))

(assert (=> bs!1594992 (= lambda!350824 lambda!350765)))

(declare-fun bs!1594993 () Bool)

(assert (= bs!1594993 (and d!1997187 d!1997121)))

(assert (=> bs!1594993 (= lambda!350824 lambda!350808)))

(declare-fun bs!1594994 () Bool)

(assert (= bs!1594994 (and d!1997187 d!1996747)))

(assert (=> bs!1594994 (= lambda!350824 lambda!350733)))

(declare-fun bs!1594995 () Bool)

(assert (= bs!1594995 (and d!1997187 d!1997113)))

(assert (=> bs!1594995 (= lambda!350824 lambda!350807)))

(declare-fun bs!1594996 () Bool)

(assert (= bs!1594996 (and d!1997187 d!1996837)))

(assert (=> bs!1594996 (= lambda!350824 lambda!350772)))

(declare-fun bs!1594997 () Bool)

(assert (= bs!1594997 (and d!1997187 d!1996805)))

(assert (=> bs!1594997 (= lambda!350824 lambda!350759)))

(declare-fun bs!1594998 () Bool)

(assert (= bs!1594998 (and d!1997187 d!1996809)))

(assert (=> bs!1594998 (= lambda!350824 lambda!350762)))

(declare-fun b!6367146 () Bool)

(declare-fun e!3865921 () Regex!16275)

(assert (=> b!6367146 (= e!3865921 (h!71448 (t!378720 (unfocusZipperList!1696 zl!343))))))

(declare-fun b!6367147 () Bool)

(declare-fun e!3865918 () Bool)

(declare-fun lt!2367574 () Regex!16275)

(assert (=> b!6367147 (= e!3865918 (= lt!2367574 (head!13043 (t!378720 (unfocusZipperList!1696 zl!343)))))))

(declare-fun b!6367148 () Bool)

(declare-fun e!3865922 () Regex!16275)

(assert (=> b!6367148 (= e!3865921 e!3865922)))

(declare-fun c!1159346 () Bool)

(assert (=> b!6367148 (= c!1159346 ((_ is Cons!65000) (t!378720 (unfocusZipperList!1696 zl!343))))))

(declare-fun b!6367149 () Bool)

(declare-fun e!3865920 () Bool)

(declare-fun e!3865917 () Bool)

(assert (=> b!6367149 (= e!3865920 e!3865917)))

(declare-fun c!1159343 () Bool)

(assert (=> b!6367149 (= c!1159343 (isEmpty!37110 (t!378720 (unfocusZipperList!1696 zl!343))))))

(declare-fun b!6367150 () Bool)

(assert (=> b!6367150 (= e!3865922 EmptyLang!16275)))

(declare-fun b!6367151 () Bool)

(declare-fun e!3865919 () Bool)

(assert (=> b!6367151 (= e!3865919 (isEmpty!37110 (t!378720 (t!378720 (unfocusZipperList!1696 zl!343)))))))

(assert (=> d!1997187 e!3865920))

(declare-fun res!2619511 () Bool)

(assert (=> d!1997187 (=> (not res!2619511) (not e!3865920))))

(assert (=> d!1997187 (= res!2619511 (validRegex!8011 lt!2367574))))

(assert (=> d!1997187 (= lt!2367574 e!3865921)))

(declare-fun c!1159344 () Bool)

(assert (=> d!1997187 (= c!1159344 e!3865919)))

(declare-fun res!2619510 () Bool)

(assert (=> d!1997187 (=> (not res!2619510) (not e!3865919))))

(assert (=> d!1997187 (= res!2619510 ((_ is Cons!65000) (t!378720 (unfocusZipperList!1696 zl!343))))))

(assert (=> d!1997187 (forall!15453 (t!378720 (unfocusZipperList!1696 zl!343)) lambda!350824)))

(assert (=> d!1997187 (= (generalisedUnion!2119 (t!378720 (unfocusZipperList!1696 zl!343))) lt!2367574)))

(declare-fun b!6367152 () Bool)

(assert (=> b!6367152 (= e!3865922 (Union!16275 (h!71448 (t!378720 (unfocusZipperList!1696 zl!343))) (generalisedUnion!2119 (t!378720 (t!378720 (unfocusZipperList!1696 zl!343))))))))

(declare-fun b!6367153 () Bool)

(assert (=> b!6367153 (= e!3865918 (isUnion!1114 lt!2367574))))

(declare-fun b!6367154 () Bool)

(assert (=> b!6367154 (= e!3865917 (isEmptyLang!1684 lt!2367574))))

(declare-fun b!6367155 () Bool)

(assert (=> b!6367155 (= e!3865917 e!3865918)))

(declare-fun c!1159345 () Bool)

(assert (=> b!6367155 (= c!1159345 (isEmpty!37110 (tail!12128 (t!378720 (unfocusZipperList!1696 zl!343)))))))

(assert (= (and d!1997187 res!2619510) b!6367151))

(assert (= (and d!1997187 c!1159344) b!6367146))

(assert (= (and d!1997187 (not c!1159344)) b!6367148))

(assert (= (and b!6367148 c!1159346) b!6367152))

(assert (= (and b!6367148 (not c!1159346)) b!6367150))

(assert (= (and d!1997187 res!2619511) b!6367149))

(assert (= (and b!6367149 c!1159343) b!6367154))

(assert (= (and b!6367149 (not c!1159343)) b!6367155))

(assert (= (and b!6367155 c!1159345) b!6367147))

(assert (= (and b!6367155 (not c!1159345)) b!6367153))

(assert (=> b!6367149 m!7170124))

(declare-fun m!7170898 () Bool)

(assert (=> b!6367155 m!7170898))

(assert (=> b!6367155 m!7170898))

(declare-fun m!7170900 () Bool)

(assert (=> b!6367155 m!7170900))

(declare-fun m!7170902 () Bool)

(assert (=> b!6367153 m!7170902))

(declare-fun m!7170904 () Bool)

(assert (=> d!1997187 m!7170904))

(declare-fun m!7170906 () Bool)

(assert (=> d!1997187 m!7170906))

(declare-fun m!7170908 () Bool)

(assert (=> b!6367147 m!7170908))

(declare-fun m!7170910 () Bool)

(assert (=> b!6367152 m!7170910))

(declare-fun m!7170912 () Bool)

(assert (=> b!6367154 m!7170912))

(declare-fun m!7170914 () Bool)

(assert (=> b!6367151 m!7170914))

(assert (=> b!6366183 d!1997187))

(declare-fun d!1997189 () Bool)

(assert (=> d!1997189 (= (isEmptyExpr!1677 lt!2367545) ((_ is EmptyExpr!16275) lt!2367545))))

(assert (=> b!6366354 d!1997189))

(assert (=> bm!543388 d!1997125))

(declare-fun b!6367167 () Bool)

(declare-fun e!3865927 () Bool)

(declare-fun lt!2367577 () List!65125)

(assert (=> b!6367167 (= e!3865927 (or (not (= (t!378721 s!2326) Nil!65001)) (= lt!2367577 (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001)))))))

(declare-fun d!1997191 () Bool)

(assert (=> d!1997191 e!3865927))

(declare-fun res!2619517 () Bool)

(assert (=> d!1997191 (=> (not res!2619517) (not e!3865927))))

(declare-fun content!12284 (List!65125) (InoxSet C!32820))

(assert (=> d!1997191 (= res!2619517 (= (content!12284 lt!2367577) ((_ map or) (content!12284 (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001))) (content!12284 (t!378721 s!2326)))))))

(declare-fun e!3865928 () List!65125)

(assert (=> d!1997191 (= lt!2367577 e!3865928)))

(declare-fun c!1159349 () Bool)

(assert (=> d!1997191 (= c!1159349 ((_ is Nil!65001) (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001))))))

(assert (=> d!1997191 (= (++!14344 (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001)) (t!378721 s!2326)) lt!2367577)))

(declare-fun b!6367164 () Bool)

(assert (=> b!6367164 (= e!3865928 (t!378721 s!2326))))

(declare-fun b!6367166 () Bool)

(declare-fun res!2619516 () Bool)

(assert (=> b!6367166 (=> (not res!2619516) (not e!3865927))))

(declare-fun size!40352 (List!65125) Int)

(assert (=> b!6367166 (= res!2619516 (= (size!40352 lt!2367577) (+ (size!40352 (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001))) (size!40352 (t!378721 s!2326)))))))

(declare-fun b!6367165 () Bool)

(assert (=> b!6367165 (= e!3865928 (Cons!65001 (h!71449 (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001))) (++!14344 (t!378721 (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001))) (t!378721 s!2326))))))

(assert (= (and d!1997191 c!1159349) b!6367164))

(assert (= (and d!1997191 (not c!1159349)) b!6367165))

(assert (= (and d!1997191 res!2619517) b!6367166))

(assert (= (and b!6367166 res!2619516) b!6367167))

(declare-fun m!7170916 () Bool)

(assert (=> d!1997191 m!7170916))

(assert (=> d!1997191 m!7170044))

(declare-fun m!7170918 () Bool)

(assert (=> d!1997191 m!7170918))

(declare-fun m!7170920 () Bool)

(assert (=> d!1997191 m!7170920))

(declare-fun m!7170922 () Bool)

(assert (=> b!6367166 m!7170922))

(assert (=> b!6367166 m!7170044))

(declare-fun m!7170924 () Bool)

(assert (=> b!6367166 m!7170924))

(declare-fun m!7170926 () Bool)

(assert (=> b!6367166 m!7170926))

(declare-fun m!7170928 () Bool)

(assert (=> b!6367165 m!7170928))

(assert (=> b!6366059 d!1997191))

(declare-fun b!6367171 () Bool)

(declare-fun e!3865929 () Bool)

(declare-fun lt!2367578 () List!65125)

(assert (=> b!6367171 (= e!3865929 (or (not (= (Cons!65001 (h!71449 s!2326) Nil!65001) Nil!65001)) (= lt!2367578 Nil!65001)))))

(declare-fun d!1997193 () Bool)

(assert (=> d!1997193 e!3865929))

(declare-fun res!2619519 () Bool)

(assert (=> d!1997193 (=> (not res!2619519) (not e!3865929))))

(assert (=> d!1997193 (= res!2619519 (= (content!12284 lt!2367578) ((_ map or) (content!12284 Nil!65001) (content!12284 (Cons!65001 (h!71449 s!2326) Nil!65001)))))))

(declare-fun e!3865930 () List!65125)

(assert (=> d!1997193 (= lt!2367578 e!3865930)))

(declare-fun c!1159350 () Bool)

(assert (=> d!1997193 (= c!1159350 ((_ is Nil!65001) Nil!65001))))

(assert (=> d!1997193 (= (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001)) lt!2367578)))

(declare-fun b!6367168 () Bool)

(assert (=> b!6367168 (= e!3865930 (Cons!65001 (h!71449 s!2326) Nil!65001))))

(declare-fun b!6367170 () Bool)

(declare-fun res!2619518 () Bool)

(assert (=> b!6367170 (=> (not res!2619518) (not e!3865929))))

(assert (=> b!6367170 (= res!2619518 (= (size!40352 lt!2367578) (+ (size!40352 Nil!65001) (size!40352 (Cons!65001 (h!71449 s!2326) Nil!65001)))))))

(declare-fun b!6367169 () Bool)

(assert (=> b!6367169 (= e!3865930 (Cons!65001 (h!71449 Nil!65001) (++!14344 (t!378721 Nil!65001) (Cons!65001 (h!71449 s!2326) Nil!65001))))))

(assert (= (and d!1997193 c!1159350) b!6367168))

(assert (= (and d!1997193 (not c!1159350)) b!6367169))

(assert (= (and d!1997193 res!2619519) b!6367170))

(assert (= (and b!6367170 res!2619518) b!6367171))

(declare-fun m!7170930 () Bool)

(assert (=> d!1997193 m!7170930))

(declare-fun m!7170932 () Bool)

(assert (=> d!1997193 m!7170932))

(declare-fun m!7170934 () Bool)

(assert (=> d!1997193 m!7170934))

(declare-fun m!7170936 () Bool)

(assert (=> b!6367170 m!7170936))

(declare-fun m!7170938 () Bool)

(assert (=> b!6367170 m!7170938))

(declare-fun m!7170940 () Bool)

(assert (=> b!6367170 m!7170940))

(declare-fun m!7170942 () Bool)

(assert (=> b!6367169 m!7170942))

(assert (=> b!6366059 d!1997193))

(declare-fun d!1997195 () Bool)

(assert (=> d!1997195 (= (++!14344 (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001)) (t!378721 s!2326)) s!2326)))

(declare-fun lt!2367581 () Unit!158431)

(declare-fun choose!47304 (List!65125 C!32820 List!65125 List!65125) Unit!158431)

(assert (=> d!1997195 (= lt!2367581 (choose!47304 Nil!65001 (h!71449 s!2326) (t!378721 s!2326) s!2326))))

(assert (=> d!1997195 (= (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) (t!378721 s!2326))) s!2326)))

(assert (=> d!1997195 (= (lemmaMoveElementToOtherListKeepsConcatEq!2439 Nil!65001 (h!71449 s!2326) (t!378721 s!2326) s!2326) lt!2367581)))

(declare-fun bs!1594999 () Bool)

(assert (= bs!1594999 d!1997195))

(assert (=> bs!1594999 m!7170044))

(assert (=> bs!1594999 m!7170044))

(assert (=> bs!1594999 m!7170046))

(declare-fun m!7170944 () Bool)

(assert (=> bs!1594999 m!7170944))

(declare-fun m!7170946 () Bool)

(assert (=> bs!1594999 m!7170946))

(assert (=> b!6366059 d!1997195))

(declare-fun b!6367172 () Bool)

(declare-fun e!3865934 () Option!16166)

(assert (=> b!6367172 (= e!3865934 (Some!16165 (tuple2!66509 (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001)) (t!378721 s!2326))))))

(declare-fun b!6367173 () Bool)

(declare-fun res!2619524 () Bool)

(declare-fun e!3865931 () Bool)

(assert (=> b!6367173 (=> (not res!2619524) (not e!3865931))))

(declare-fun lt!2367584 () Option!16166)

(assert (=> b!6367173 (= res!2619524 (matchR!8458 (regOne!33062 r!7292) (_1!36557 (get!22497 lt!2367584))))))

(declare-fun b!6367174 () Bool)

(declare-fun res!2619522 () Bool)

(assert (=> b!6367174 (=> (not res!2619522) (not e!3865931))))

(assert (=> b!6367174 (= res!2619522 (matchR!8458 (regTwo!33062 r!7292) (_2!36557 (get!22497 lt!2367584))))))

(declare-fun b!6367175 () Bool)

(declare-fun e!3865935 () Bool)

(assert (=> b!6367175 (= e!3865935 (matchR!8458 (regTwo!33062 r!7292) (t!378721 s!2326)))))

(declare-fun b!6367177 () Bool)

(declare-fun e!3865932 () Option!16166)

(assert (=> b!6367177 (= e!3865932 None!16165)))

(declare-fun b!6367178 () Bool)

(assert (=> b!6367178 (= e!3865934 e!3865932)))

(declare-fun c!1159351 () Bool)

(assert (=> b!6367178 (= c!1159351 ((_ is Nil!65001) (t!378721 s!2326)))))

(declare-fun b!6367179 () Bool)

(declare-fun e!3865933 () Bool)

(assert (=> b!6367179 (= e!3865933 (not (isDefined!12869 lt!2367584)))))

(declare-fun b!6367180 () Bool)

(assert (=> b!6367180 (= e!3865931 (= (++!14344 (_1!36557 (get!22497 lt!2367584)) (_2!36557 (get!22497 lt!2367584))) s!2326))))

(declare-fun d!1997197 () Bool)

(assert (=> d!1997197 e!3865933))

(declare-fun res!2619523 () Bool)

(assert (=> d!1997197 (=> res!2619523 e!3865933)))

(assert (=> d!1997197 (= res!2619523 e!3865931)))

(declare-fun res!2619520 () Bool)

(assert (=> d!1997197 (=> (not res!2619520) (not e!3865931))))

(assert (=> d!1997197 (= res!2619520 (isDefined!12869 lt!2367584))))

(assert (=> d!1997197 (= lt!2367584 e!3865934)))

(declare-fun c!1159352 () Bool)

(assert (=> d!1997197 (= c!1159352 e!3865935)))

(declare-fun res!2619521 () Bool)

(assert (=> d!1997197 (=> (not res!2619521) (not e!3865935))))

(assert (=> d!1997197 (= res!2619521 (matchR!8458 (regOne!33062 r!7292) (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001))))))

(assert (=> d!1997197 (validRegex!8011 (regOne!33062 r!7292))))

(assert (=> d!1997197 (= (findConcatSeparation!2580 (regOne!33062 r!7292) (regTwo!33062 r!7292) (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001)) (t!378721 s!2326) s!2326) lt!2367584)))

(declare-fun b!6367176 () Bool)

(declare-fun lt!2367582 () Unit!158431)

(declare-fun lt!2367583 () Unit!158431)

(assert (=> b!6367176 (= lt!2367582 lt!2367583)))

(assert (=> b!6367176 (= (++!14344 (++!14344 (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001)) (Cons!65001 (h!71449 (t!378721 s!2326)) Nil!65001)) (t!378721 (t!378721 s!2326))) s!2326)))

(assert (=> b!6367176 (= lt!2367583 (lemmaMoveElementToOtherListKeepsConcatEq!2439 (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001)) (h!71449 (t!378721 s!2326)) (t!378721 (t!378721 s!2326)) s!2326))))

(assert (=> b!6367176 (= e!3865932 (findConcatSeparation!2580 (regOne!33062 r!7292) (regTwo!33062 r!7292) (++!14344 (++!14344 Nil!65001 (Cons!65001 (h!71449 s!2326) Nil!65001)) (Cons!65001 (h!71449 (t!378721 s!2326)) Nil!65001)) (t!378721 (t!378721 s!2326)) s!2326))))

(assert (= (and d!1997197 res!2619521) b!6367175))

(assert (= (and d!1997197 c!1159352) b!6367172))

(assert (= (and d!1997197 (not c!1159352)) b!6367178))

(assert (= (and b!6367178 c!1159351) b!6367177))

(assert (= (and b!6367178 (not c!1159351)) b!6367176))

(assert (= (and d!1997197 res!2619520) b!6367173))

(assert (= (and b!6367173 res!2619524) b!6367174))

(assert (= (and b!6367174 res!2619522) b!6367180))

(assert (= (and d!1997197 (not res!2619523)) b!6367179))

(declare-fun m!7170948 () Bool)

(assert (=> d!1997197 m!7170948))

(assert (=> d!1997197 m!7170044))

(declare-fun m!7170950 () Bool)

(assert (=> d!1997197 m!7170950))

(assert (=> d!1997197 m!7170042))

(assert (=> b!6367176 m!7170044))

(declare-fun m!7170952 () Bool)

(assert (=> b!6367176 m!7170952))

(assert (=> b!6367176 m!7170952))

(declare-fun m!7170954 () Bool)

(assert (=> b!6367176 m!7170954))

(assert (=> b!6367176 m!7170044))

(declare-fun m!7170956 () Bool)

(assert (=> b!6367176 m!7170956))

(assert (=> b!6367176 m!7170952))

(declare-fun m!7170958 () Bool)

(assert (=> b!6367176 m!7170958))

(declare-fun m!7170960 () Bool)

(assert (=> b!6367173 m!7170960))

(declare-fun m!7170962 () Bool)

(assert (=> b!6367173 m!7170962))

(assert (=> b!6367180 m!7170960))

(declare-fun m!7170964 () Bool)

(assert (=> b!6367180 m!7170964))

(assert (=> b!6367174 m!7170960))

(declare-fun m!7170966 () Bool)

(assert (=> b!6367174 m!7170966))

(declare-fun m!7170968 () Bool)

(assert (=> b!6367175 m!7170968))

(assert (=> b!6367179 m!7170948))

(assert (=> b!6366059 d!1997197))

(declare-fun d!1997199 () Bool)

(assert (=> d!1997199 (= (isEmpty!37113 (t!378721 s!2326)) ((_ is Nil!65001) (t!378721 s!2326)))))

(assert (=> d!1996847 d!1997199))

(declare-fun b!6367181 () Bool)

(declare-fun e!3865937 () (InoxSet Context!11318))

(assert (=> b!6367181 (= e!3865937 ((as const (Array Context!11318 Bool)) false))))

(declare-fun b!6367182 () Bool)

(declare-fun call!543540 () (InoxSet Context!11318))

(assert (=> b!6367182 (= e!3865937 call!543540)))

(declare-fun bm!543531 () Bool)

(declare-fun call!543536 () List!65124)

(declare-fun call!543541 () List!65124)

(assert (=> bm!543531 (= call!543536 call!543541)))

(declare-fun c!1159353 () Bool)

(declare-fun d!1997201 () Bool)

(assert (=> d!1997201 (= c!1159353 (and ((_ is ElementMatch!16275) (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))))) (= (c!1158964 (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))))) (h!71449 s!2326))))))

(declare-fun e!3865938 () (InoxSet Context!11318))

(assert (=> d!1997201 (= (derivationStepZipperDown!1523 (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343))))) (ite c!1159122 lt!2367450 (Context!11319 call!543377)) (h!71449 s!2326)) e!3865938)))

(declare-fun b!6367183 () Bool)

(declare-fun c!1159355 () Bool)

(declare-fun e!3865936 () Bool)

(assert (=> b!6367183 (= c!1159355 e!3865936)))

(declare-fun res!2619525 () Bool)

(assert (=> b!6367183 (=> (not res!2619525) (not e!3865936))))

(assert (=> b!6367183 (= res!2619525 ((_ is Concat!25120) (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))))))))

(declare-fun e!3865941 () (InoxSet Context!11318))

(declare-fun e!3865939 () (InoxSet Context!11318))

(assert (=> b!6367183 (= e!3865941 e!3865939)))

(declare-fun b!6367184 () Bool)

(declare-fun c!1159356 () Bool)

(assert (=> b!6367184 (= c!1159356 ((_ is Star!16275) (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))))))))

(declare-fun e!3865940 () (InoxSet Context!11318))

(assert (=> b!6367184 (= e!3865940 e!3865937)))

(declare-fun b!6367185 () Bool)

(assert (=> b!6367185 (= e!3865938 (store ((as const (Array Context!11318 Bool)) false) (ite c!1159122 lt!2367450 (Context!11319 call!543377)) true))))

(declare-fun b!6367186 () Bool)

(declare-fun call!543539 () (InoxSet Context!11318))

(declare-fun call!543538 () (InoxSet Context!11318))

(assert (=> b!6367186 (= e!3865941 ((_ map or) call!543539 call!543538))))

(declare-fun c!1159357 () Bool)

(declare-fun bm!543532 () Bool)

(assert (=> bm!543532 (= call!543538 (derivationStepZipperDown!1523 (ite c!1159357 (regTwo!33063 (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))))) (regOne!33062 (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343))))))) (ite c!1159357 (ite c!1159122 lt!2367450 (Context!11319 call!543377)) (Context!11319 call!543541)) (h!71449 s!2326)))))

(declare-fun bm!543533 () Bool)

(declare-fun call!543537 () (InoxSet Context!11318))

(assert (=> bm!543533 (= call!543540 call!543537)))

(declare-fun b!6367187 () Bool)

(assert (=> b!6367187 (= e!3865936 (nullable!6268 (regOne!33062 (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343))))))))))

(declare-fun bm!543534 () Bool)

(declare-fun c!1159354 () Bool)

(assert (=> bm!543534 (= call!543539 (derivationStepZipperDown!1523 (ite c!1159357 (regOne!33063 (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))))) (ite c!1159355 (regTwo!33062 (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))))) (ite c!1159354 (regOne!33062 (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))))) (reg!16604 (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343))))))))) (ite (or c!1159357 c!1159355) (ite c!1159122 lt!2367450 (Context!11319 call!543377)) (Context!11319 call!543536)) (h!71449 s!2326)))))

(declare-fun b!6367188 () Bool)

(assert (=> b!6367188 (= e!3865940 call!543540)))

(declare-fun bm!543535 () Bool)

(assert (=> bm!543535 (= call!543541 ($colon$colon!2136 (exprs!6159 (ite c!1159122 lt!2367450 (Context!11319 call!543377))) (ite (or c!1159355 c!1159354) (regTwo!33062 (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))))) (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343))))))))))

(declare-fun b!6367189 () Bool)

(assert (=> b!6367189 (= e!3865938 e!3865941)))

(assert (=> b!6367189 (= c!1159357 ((_ is Union!16275) (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))))))))

(declare-fun bm!543536 () Bool)

(assert (=> bm!543536 (= call!543537 call!543539)))

(declare-fun b!6367190 () Bool)

(assert (=> b!6367190 (= e!3865939 e!3865940)))

(assert (=> b!6367190 (= c!1159354 ((_ is Concat!25120) (ite c!1159122 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))))))))

(declare-fun b!6367191 () Bool)

(assert (=> b!6367191 (= e!3865939 ((_ map or) call!543538 call!543537))))

(assert (= (and d!1997201 c!1159353) b!6367185))

(assert (= (and d!1997201 (not c!1159353)) b!6367189))

(assert (= (and b!6367189 c!1159357) b!6367186))

(assert (= (and b!6367189 (not c!1159357)) b!6367183))

(assert (= (and b!6367183 res!2619525) b!6367187))

(assert (= (and b!6367183 c!1159355) b!6367191))

(assert (= (and b!6367183 (not c!1159355)) b!6367190))

(assert (= (and b!6367190 c!1159354) b!6367188))

(assert (= (and b!6367190 (not c!1159354)) b!6367184))

(assert (= (and b!6367184 c!1159356) b!6367182))

(assert (= (and b!6367184 (not c!1159356)) b!6367181))

(assert (= (or b!6367188 b!6367182) bm!543531))

(assert (= (or b!6367188 b!6367182) bm!543533))

(assert (= (or b!6367191 bm!543531) bm!543535))

(assert (= (or b!6367191 bm!543533) bm!543536))

(assert (= (or b!6367186 b!6367191) bm!543532))

(assert (= (or b!6367186 bm!543536) bm!543534))

(declare-fun m!7170970 () Bool)

(assert (=> bm!543532 m!7170970))

(declare-fun m!7170972 () Bool)

(assert (=> bm!543535 m!7170972))

(declare-fun m!7170974 () Bool)

(assert (=> b!6367185 m!7170974))

(declare-fun m!7170976 () Bool)

(assert (=> bm!543534 m!7170976))

(declare-fun m!7170978 () Bool)

(assert (=> b!6367187 m!7170978))

(assert (=> bm!543368 d!1997201))

(declare-fun d!1997203 () Bool)

(assert (=> d!1997203 (= (nullable!6268 (h!71448 (exprs!6159 lt!2367450))) (nullableFct!2215 (h!71448 (exprs!6159 lt!2367450))))))

(declare-fun bs!1595000 () Bool)

(assert (= bs!1595000 d!1997203))

(declare-fun m!7170980 () Bool)

(assert (=> bs!1595000 m!7170980))

(assert (=> b!6366200 d!1997203))

(assert (=> b!6366365 d!1996843))

(declare-fun d!1997205 () Bool)

(assert (=> d!1997205 (= (nullable!6268 (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))) (nullableFct!2215 (h!71448 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))))))

(declare-fun bs!1595001 () Bool)

(assert (= bs!1595001 d!1997205))

(declare-fun m!7170982 () Bool)

(assert (=> bs!1595001 m!7170982))

(assert (=> b!6366195 d!1997205))

(declare-fun d!1997207 () Bool)

(assert (=> d!1997207 (= (isEmpty!37110 (tail!12128 (exprs!6159 (h!71450 zl!343)))) ((_ is Nil!65000) (tail!12128 (exprs!6159 (h!71450 zl!343)))))))

(assert (=> b!6366358 d!1997207))

(declare-fun d!1997209 () Bool)

(assert (=> d!1997209 (= (tail!12128 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343))))))

(assert (=> b!6366358 d!1997209))

(declare-fun d!1997211 () Bool)

(declare-fun c!1159358 () Bool)

(assert (=> d!1997211 (= c!1159358 (isEmpty!37113 (tail!12127 (t!378721 s!2326))))))

(declare-fun e!3865942 () Bool)

(assert (=> d!1997211 (= (matchZipper!2287 (derivationStepZipper!2241 lt!2367446 (head!13042 (t!378721 s!2326))) (tail!12127 (t!378721 s!2326))) e!3865942)))

(declare-fun b!6367192 () Bool)

(assert (=> b!6367192 (= e!3865942 (nullableZipper!2040 (derivationStepZipper!2241 lt!2367446 (head!13042 (t!378721 s!2326)))))))

(declare-fun b!6367193 () Bool)

(assert (=> b!6367193 (= e!3865942 (matchZipper!2287 (derivationStepZipper!2241 (derivationStepZipper!2241 lt!2367446 (head!13042 (t!378721 s!2326))) (head!13042 (tail!12127 (t!378721 s!2326)))) (tail!12127 (tail!12127 (t!378721 s!2326)))))))

(assert (= (and d!1997211 c!1159358) b!6367192))

(assert (= (and d!1997211 (not c!1159358)) b!6367193))

(assert (=> d!1997211 m!7169942))

(assert (=> d!1997211 m!7170730))

(assert (=> b!6367192 m!7170218))

(declare-fun m!7170984 () Bool)

(assert (=> b!6367192 m!7170984))

(assert (=> b!6367193 m!7169942))

(assert (=> b!6367193 m!7170734))

(assert (=> b!6367193 m!7170218))

(assert (=> b!6367193 m!7170734))

(declare-fun m!7170986 () Bool)

(assert (=> b!6367193 m!7170986))

(assert (=> b!6367193 m!7169942))

(assert (=> b!6367193 m!7170738))

(assert (=> b!6367193 m!7170986))

(assert (=> b!6367193 m!7170738))

(declare-fun m!7170988 () Bool)

(assert (=> b!6367193 m!7170988))

(assert (=> b!6366367 d!1997211))

(declare-fun bs!1595002 () Bool)

(declare-fun d!1997213 () Bool)

(assert (= bs!1595002 (and d!1997213 b!6365668)))

(declare-fun lambda!350825 () Int)

(assert (=> bs!1595002 (= (= (head!13042 (t!378721 s!2326)) (h!71449 s!2326)) (= lambda!350825 lambda!350711))))

(declare-fun bs!1595003 () Bool)

(assert (= bs!1595003 (and d!1997213 d!1996803)))

(assert (=> bs!1595003 (= (= (head!13042 (t!378721 s!2326)) (h!71449 s!2326)) (= lambda!350825 lambda!350758))))

(declare-fun bs!1595004 () Bool)

(assert (= bs!1595004 (and d!1997213 d!1997091)))

(assert (=> bs!1595004 (= lambda!350825 lambda!350806)))

(declare-fun bs!1595005 () Bool)

(assert (= bs!1595005 (and d!1997213 d!1997155)))

(assert (=> bs!1595005 (= (= (head!13042 (t!378721 s!2326)) (head!13042 s!2326)) (= lambda!350825 lambda!350814))))

(assert (=> d!1997213 true))

(assert (=> d!1997213 (= (derivationStepZipper!2241 lt!2367446 (head!13042 (t!378721 s!2326))) (flatMap!1780 lt!2367446 lambda!350825))))

(declare-fun bs!1595006 () Bool)

(assert (= bs!1595006 d!1997213))

(declare-fun m!7170990 () Bool)

(assert (=> bs!1595006 m!7170990))

(assert (=> b!6366367 d!1997213))

(assert (=> b!6366367 d!1997093))

(assert (=> b!6366367 d!1997095))

(declare-fun d!1997215 () Bool)

(assert (=> d!1997215 true))

(assert (=> d!1997215 true))

(declare-fun res!2619528 () Bool)

(assert (=> d!1997215 (= (choose!47296 lambda!350709) res!2619528)))

(assert (=> d!1996789 d!1997215))

(declare-fun b!6367194 () Bool)

(declare-fun e!3865944 () Bool)

(declare-fun call!543544 () Bool)

(assert (=> b!6367194 (= e!3865944 call!543544)))

(declare-fun b!6367195 () Bool)

(declare-fun e!3865945 () Bool)

(declare-fun call!543543 () Bool)

(assert (=> b!6367195 (= e!3865945 call!543543)))

(declare-fun b!6367196 () Bool)

(declare-fun e!3865946 () Bool)

(assert (=> b!6367196 (= e!3865946 e!3865945)))

(declare-fun res!2619531 () Bool)

(assert (=> b!6367196 (= res!2619531 (not (nullable!6268 (reg!16604 lt!2367501))))))

(assert (=> b!6367196 (=> (not res!2619531) (not e!3865945))))

(declare-fun b!6367197 () Bool)

(declare-fun e!3865948 () Bool)

(assert (=> b!6367197 (= e!3865946 e!3865948)))

(declare-fun c!1159360 () Bool)

(assert (=> b!6367197 (= c!1159360 ((_ is Union!16275) lt!2367501))))

(declare-fun b!6367199 () Bool)

(declare-fun e!3865947 () Bool)

(assert (=> b!6367199 (= e!3865947 call!543544)))

(declare-fun bm!543537 () Bool)

(assert (=> bm!543537 (= call!543544 call!543543)))

(declare-fun b!6367200 () Bool)

(declare-fun res!2619533 () Bool)

(declare-fun e!3865949 () Bool)

(assert (=> b!6367200 (=> res!2619533 e!3865949)))

(assert (=> b!6367200 (= res!2619533 (not ((_ is Concat!25120) lt!2367501)))))

(assert (=> b!6367200 (= e!3865948 e!3865949)))

(declare-fun b!6367198 () Bool)

(declare-fun e!3865943 () Bool)

(assert (=> b!6367198 (= e!3865943 e!3865946)))

(declare-fun c!1159359 () Bool)

(assert (=> b!6367198 (= c!1159359 ((_ is Star!16275) lt!2367501))))

(declare-fun d!1997217 () Bool)

(declare-fun res!2619530 () Bool)

(assert (=> d!1997217 (=> res!2619530 e!3865943)))

(assert (=> d!1997217 (= res!2619530 ((_ is ElementMatch!16275) lt!2367501))))

(assert (=> d!1997217 (= (validRegex!8011 lt!2367501) e!3865943)))

(declare-fun b!6367201 () Bool)

(assert (=> b!6367201 (= e!3865949 e!3865947)))

(declare-fun res!2619532 () Bool)

(assert (=> b!6367201 (=> (not res!2619532) (not e!3865947))))

(declare-fun call!543542 () Bool)

(assert (=> b!6367201 (= res!2619532 call!543542)))

(declare-fun bm!543538 () Bool)

(assert (=> bm!543538 (= call!543542 (validRegex!8011 (ite c!1159360 (regOne!33063 lt!2367501) (regOne!33062 lt!2367501))))))

(declare-fun bm!543539 () Bool)

(assert (=> bm!543539 (= call!543543 (validRegex!8011 (ite c!1159359 (reg!16604 lt!2367501) (ite c!1159360 (regTwo!33063 lt!2367501) (regTwo!33062 lt!2367501)))))))

(declare-fun b!6367202 () Bool)

(declare-fun res!2619529 () Bool)

(assert (=> b!6367202 (=> (not res!2619529) (not e!3865944))))

(assert (=> b!6367202 (= res!2619529 call!543542)))

(assert (=> b!6367202 (= e!3865948 e!3865944)))

(assert (= (and d!1997217 (not res!2619530)) b!6367198))

(assert (= (and b!6367198 c!1159359) b!6367196))

(assert (= (and b!6367198 (not c!1159359)) b!6367197))

(assert (= (and b!6367196 res!2619531) b!6367195))

(assert (= (and b!6367197 c!1159360) b!6367202))

(assert (= (and b!6367197 (not c!1159360)) b!6367200))

(assert (= (and b!6367202 res!2619529) b!6367194))

(assert (= (and b!6367200 (not res!2619533)) b!6367201))

(assert (= (and b!6367201 res!2619532) b!6367199))

(assert (= (or b!6367194 b!6367199) bm!543537))

(assert (= (or b!6367202 b!6367201) bm!543538))

(assert (= (or b!6367195 bm!543537) bm!543539))

(declare-fun m!7170992 () Bool)

(assert (=> b!6367196 m!7170992))

(declare-fun m!7170994 () Bool)

(assert (=> bm!543538 m!7170994))

(declare-fun m!7170996 () Bool)

(assert (=> bm!543539 m!7170996))

(assert (=> d!1996751 d!1997217))

(assert (=> d!1996751 d!1996809))

(assert (=> d!1996751 d!1996811))

(declare-fun b!6367206 () Bool)

(declare-fun e!3865950 () Bool)

(declare-fun lt!2367585 () List!65125)

(assert (=> b!6367206 (= e!3865950 (or (not (= (_2!36557 (get!22497 lt!2367520)) Nil!65001)) (= lt!2367585 (_1!36557 (get!22497 lt!2367520)))))))

(declare-fun d!1997219 () Bool)

(assert (=> d!1997219 e!3865950))

(declare-fun res!2619535 () Bool)

(assert (=> d!1997219 (=> (not res!2619535) (not e!3865950))))

(assert (=> d!1997219 (= res!2619535 (= (content!12284 lt!2367585) ((_ map or) (content!12284 (_1!36557 (get!22497 lt!2367520))) (content!12284 (_2!36557 (get!22497 lt!2367520))))))))

(declare-fun e!3865951 () List!65125)

(assert (=> d!1997219 (= lt!2367585 e!3865951)))

(declare-fun c!1159361 () Bool)

(assert (=> d!1997219 (= c!1159361 ((_ is Nil!65001) (_1!36557 (get!22497 lt!2367520))))))

(assert (=> d!1997219 (= (++!14344 (_1!36557 (get!22497 lt!2367520)) (_2!36557 (get!22497 lt!2367520))) lt!2367585)))

(declare-fun b!6367203 () Bool)

(assert (=> b!6367203 (= e!3865951 (_2!36557 (get!22497 lt!2367520)))))

(declare-fun b!6367205 () Bool)

(declare-fun res!2619534 () Bool)

(assert (=> b!6367205 (=> (not res!2619534) (not e!3865950))))

(assert (=> b!6367205 (= res!2619534 (= (size!40352 lt!2367585) (+ (size!40352 (_1!36557 (get!22497 lt!2367520))) (size!40352 (_2!36557 (get!22497 lt!2367520))))))))

(declare-fun b!6367204 () Bool)

(assert (=> b!6367204 (= e!3865951 (Cons!65001 (h!71449 (_1!36557 (get!22497 lt!2367520))) (++!14344 (t!378721 (_1!36557 (get!22497 lt!2367520))) (_2!36557 (get!22497 lt!2367520)))))))

(assert (= (and d!1997219 c!1159361) b!6367203))

(assert (= (and d!1997219 (not c!1159361)) b!6367204))

(assert (= (and d!1997219 res!2619535) b!6367205))

(assert (= (and b!6367205 res!2619534) b!6367206))

(declare-fun m!7170998 () Bool)

(assert (=> d!1997219 m!7170998))

(declare-fun m!7171000 () Bool)

(assert (=> d!1997219 m!7171000))

(declare-fun m!7171002 () Bool)

(assert (=> d!1997219 m!7171002))

(declare-fun m!7171004 () Bool)

(assert (=> b!6367205 m!7171004))

(declare-fun m!7171006 () Bool)

(assert (=> b!6367205 m!7171006))

(declare-fun m!7171008 () Bool)

(assert (=> b!6367205 m!7171008))

(declare-fun m!7171010 () Bool)

(assert (=> b!6367204 m!7171010))

(assert (=> b!6366063 d!1997219))

(assert (=> b!6366063 d!1997087))

(assert (=> b!6366191 d!1996839))

(declare-fun bs!1595007 () Bool)

(declare-fun d!1997221 () Bool)

(assert (= bs!1595007 (and d!1997221 d!1996839)))

(declare-fun lambda!350826 () Int)

(assert (=> bs!1595007 (= lambda!350826 lambda!350775)))

(declare-fun bs!1595008 () Bool)

(assert (= bs!1595008 (and d!1997221 d!1996811)))

(assert (=> bs!1595008 (= lambda!350826 lambda!350765)))

(declare-fun bs!1595009 () Bool)

(assert (= bs!1595009 (and d!1997221 d!1997121)))

(assert (=> bs!1595009 (= lambda!350826 lambda!350808)))

(declare-fun bs!1595010 () Bool)

(assert (= bs!1595010 (and d!1997221 d!1996747)))

(assert (=> bs!1595010 (= lambda!350826 lambda!350733)))

(declare-fun bs!1595011 () Bool)

(assert (= bs!1595011 (and d!1997221 d!1997113)))

(assert (=> bs!1595011 (= lambda!350826 lambda!350807)))

(declare-fun bs!1595012 () Bool)

(assert (= bs!1595012 (and d!1997221 d!1996837)))

(assert (=> bs!1595012 (= lambda!350826 lambda!350772)))

(declare-fun bs!1595013 () Bool)

(assert (= bs!1595013 (and d!1997221 d!1996805)))

(assert (=> bs!1595013 (= lambda!350826 lambda!350759)))

(declare-fun bs!1595014 () Bool)

(assert (= bs!1595014 (and d!1997221 d!1996809)))

(assert (=> bs!1595014 (= lambda!350826 lambda!350762)))

(declare-fun bs!1595015 () Bool)

(assert (= bs!1595015 (and d!1997221 d!1997187)))

(assert (=> bs!1595015 (= lambda!350826 lambda!350824)))

(declare-fun lt!2367586 () List!65124)

(assert (=> d!1997221 (forall!15453 lt!2367586 lambda!350826)))

(declare-fun e!3865952 () List!65124)

(assert (=> d!1997221 (= lt!2367586 e!3865952)))

(declare-fun c!1159362 () Bool)

(assert (=> d!1997221 (= c!1159362 ((_ is Cons!65002) (t!378722 zl!343)))))

(assert (=> d!1997221 (= (unfocusZipperList!1696 (t!378722 zl!343)) lt!2367586)))

(declare-fun b!6367207 () Bool)

(assert (=> b!6367207 (= e!3865952 (Cons!65000 (generalisedConcat!1872 (exprs!6159 (h!71450 (t!378722 zl!343)))) (unfocusZipperList!1696 (t!378722 (t!378722 zl!343)))))))

(declare-fun b!6367208 () Bool)

(assert (=> b!6367208 (= e!3865952 Nil!65000)))

(assert (= (and d!1997221 c!1159362) b!6367207))

(assert (= (and d!1997221 (not c!1159362)) b!6367208))

(declare-fun m!7171012 () Bool)

(assert (=> d!1997221 m!7171012))

(declare-fun m!7171014 () Bool)

(assert (=> b!6367207 m!7171014))

(declare-fun m!7171016 () Bool)

(assert (=> b!6367207 m!7171016))

(assert (=> b!6366191 d!1997221))

(declare-fun d!1997223 () Bool)

(assert (=> d!1997223 (= (isEmpty!37113 (tail!12127 s!2326)) ((_ is Nil!65001) (tail!12127 s!2326)))))

(assert (=> b!6366318 d!1997223))

(assert (=> b!6366318 d!1997157))

(declare-fun bs!1595016 () Bool)

(declare-fun d!1997225 () Bool)

(assert (= bs!1595016 (and d!1997225 d!1997133)))

(declare-fun lambda!350827 () Int)

(assert (=> bs!1595016 (= lambda!350827 lambda!350811)))

(assert (=> d!1997225 (= (nullableZipper!2040 lt!2367451) (exists!2577 lt!2367451 lambda!350827))))

(declare-fun bs!1595017 () Bool)

(assert (= bs!1595017 d!1997225))

(declare-fun m!7171018 () Bool)

(assert (=> bs!1595017 m!7171018))

(assert (=> b!6365942 d!1997225))

(assert (=> d!1996843 d!1997199))

(declare-fun d!1997227 () Bool)

(assert (=> d!1997227 (= (isEmpty!37110 (t!378720 (unfocusZipperList!1696 zl!343))) ((_ is Nil!65000) (t!378720 (unfocusZipperList!1696 zl!343))))))

(assert (=> b!6366182 d!1997227))

(declare-fun d!1997229 () Bool)

(declare-fun c!1159363 () Bool)

(assert (=> d!1997229 (= c!1159363 (isEmpty!37113 (tail!12127 (t!378721 s!2326))))))

(declare-fun e!3865953 () Bool)

(assert (=> d!1997229 (= (matchZipper!2287 (derivationStepZipper!2241 ((_ map or) lt!2367446 lt!2367449) (head!13042 (t!378721 s!2326))) (tail!12127 (t!378721 s!2326))) e!3865953)))

(declare-fun b!6367209 () Bool)

(assert (=> b!6367209 (= e!3865953 (nullableZipper!2040 (derivationStepZipper!2241 ((_ map or) lt!2367446 lt!2367449) (head!13042 (t!378721 s!2326)))))))

(declare-fun b!6367210 () Bool)

(assert (=> b!6367210 (= e!3865953 (matchZipper!2287 (derivationStepZipper!2241 (derivationStepZipper!2241 ((_ map or) lt!2367446 lt!2367449) (head!13042 (t!378721 s!2326))) (head!13042 (tail!12127 (t!378721 s!2326)))) (tail!12127 (tail!12127 (t!378721 s!2326)))))))

(assert (= (and d!1997229 c!1159363) b!6367209))

(assert (= (and d!1997229 (not c!1159363)) b!6367210))

(assert (=> d!1997229 m!7169942))

(assert (=> d!1997229 m!7170730))

(assert (=> b!6367209 m!7170224))

(declare-fun m!7171020 () Bool)

(assert (=> b!6367209 m!7171020))

(assert (=> b!6367210 m!7169942))

(assert (=> b!6367210 m!7170734))

(assert (=> b!6367210 m!7170224))

(assert (=> b!6367210 m!7170734))

(declare-fun m!7171022 () Bool)

(assert (=> b!6367210 m!7171022))

(assert (=> b!6367210 m!7169942))

(assert (=> b!6367210 m!7170738))

(assert (=> b!6367210 m!7171022))

(assert (=> b!6367210 m!7170738))

(declare-fun m!7171024 () Bool)

(assert (=> b!6367210 m!7171024))

(assert (=> b!6366369 d!1997229))

(declare-fun bs!1595018 () Bool)

(declare-fun d!1997231 () Bool)

(assert (= bs!1595018 (and d!1997231 b!6365668)))

(declare-fun lambda!350828 () Int)

(assert (=> bs!1595018 (= (= (head!13042 (t!378721 s!2326)) (h!71449 s!2326)) (= lambda!350828 lambda!350711))))

(declare-fun bs!1595019 () Bool)

(assert (= bs!1595019 (and d!1997231 d!1997091)))

(assert (=> bs!1595019 (= lambda!350828 lambda!350806)))

(declare-fun bs!1595020 () Bool)

(assert (= bs!1595020 (and d!1997231 d!1997155)))

(assert (=> bs!1595020 (= (= (head!13042 (t!378721 s!2326)) (head!13042 s!2326)) (= lambda!350828 lambda!350814))))

(declare-fun bs!1595021 () Bool)

(assert (= bs!1595021 (and d!1997231 d!1997213)))

(assert (=> bs!1595021 (= lambda!350828 lambda!350825)))

(declare-fun bs!1595022 () Bool)

(assert (= bs!1595022 (and d!1997231 d!1996803)))

(assert (=> bs!1595022 (= (= (head!13042 (t!378721 s!2326)) (h!71449 s!2326)) (= lambda!350828 lambda!350758))))

(assert (=> d!1997231 true))

(assert (=> d!1997231 (= (derivationStepZipper!2241 ((_ map or) lt!2367446 lt!2367449) (head!13042 (t!378721 s!2326))) (flatMap!1780 ((_ map or) lt!2367446 lt!2367449) lambda!350828))))

(declare-fun bs!1595023 () Bool)

(assert (= bs!1595023 d!1997231))

(declare-fun m!7171026 () Bool)

(assert (=> bs!1595023 m!7171026))

(assert (=> b!6366369 d!1997231))

(assert (=> b!6366369 d!1997093))

(assert (=> b!6366369 d!1997095))

(declare-fun d!1997233 () Bool)

(declare-fun res!2619540 () Bool)

(declare-fun e!3865958 () Bool)

(assert (=> d!1997233 (=> res!2619540 e!3865958)))

(assert (=> d!1997233 (= res!2619540 ((_ is Nil!65002) lt!2367495))))

(assert (=> d!1997233 (= (noDuplicate!2105 lt!2367495) e!3865958)))

(declare-fun b!6367215 () Bool)

(declare-fun e!3865959 () Bool)

(assert (=> b!6367215 (= e!3865958 e!3865959)))

(declare-fun res!2619541 () Bool)

(assert (=> b!6367215 (=> (not res!2619541) (not e!3865959))))

(declare-fun contains!20161 (List!65126 Context!11318) Bool)

(assert (=> b!6367215 (= res!2619541 (not (contains!20161 (t!378722 lt!2367495) (h!71450 lt!2367495))))))

(declare-fun b!6367216 () Bool)

(assert (=> b!6367216 (= e!3865959 (noDuplicate!2105 (t!378722 lt!2367495)))))

(assert (= (and d!1997233 (not res!2619540)) b!6367215))

(assert (= (and b!6367215 res!2619541) b!6367216))

(declare-fun m!7171028 () Bool)

(assert (=> b!6367215 m!7171028))

(declare-fun m!7171030 () Bool)

(assert (=> b!6367216 m!7171030))

(assert (=> d!1996745 d!1997233))

(declare-fun d!1997235 () Bool)

(declare-fun e!3865967 () Bool)

(assert (=> d!1997235 e!3865967))

(declare-fun res!2619547 () Bool)

(assert (=> d!1997235 (=> (not res!2619547) (not e!3865967))))

(declare-fun res!2619546 () List!65126)

(assert (=> d!1997235 (= res!2619547 (noDuplicate!2105 res!2619546))))

(declare-fun e!3865966 () Bool)

(assert (=> d!1997235 e!3865966))

(assert (=> d!1997235 (= (choose!47295 z!1189) res!2619546)))

(declare-fun b!6367224 () Bool)

(declare-fun e!3865968 () Bool)

(declare-fun tp!1772840 () Bool)

(assert (=> b!6367224 (= e!3865968 tp!1772840)))

(declare-fun b!6367223 () Bool)

(declare-fun tp!1772839 () Bool)

(assert (=> b!6367223 (= e!3865966 (and (inv!83934 (h!71450 res!2619546)) e!3865968 tp!1772839))))

(declare-fun b!6367225 () Bool)

(assert (=> b!6367225 (= e!3865967 (= (content!12282 res!2619546) z!1189))))

(assert (= b!6367223 b!6367224))

(assert (= (and d!1997235 ((_ is Cons!65002) res!2619546)) b!6367223))

(assert (= (and d!1997235 res!2619547) b!6367225))

(declare-fun m!7171032 () Bool)

(assert (=> d!1997235 m!7171032))

(declare-fun m!7171034 () Bool)

(assert (=> b!6367223 m!7171034))

(declare-fun m!7171036 () Bool)

(assert (=> b!6367225 m!7171036))

(assert (=> d!1996745 d!1997235))

(declare-fun d!1997237 () Bool)

(assert (=> d!1997237 (= ($colon$colon!2136 (exprs!6159 (Context!11319 lt!2367453)) (ite (or c!1159096 c!1159095) (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (regOne!33062 r!7292)))) (Cons!65000 (ite (or c!1159096 c!1159095) (regTwo!33062 (reg!16604 (regOne!33062 r!7292))) (reg!16604 (regOne!33062 r!7292))) (exprs!6159 (Context!11319 lt!2367453))))))

(assert (=> bm!543363 d!1997237))

(declare-fun d!1997239 () Bool)

(declare-fun c!1159364 () Bool)

(assert (=> d!1997239 (= c!1159364 (isEmpty!37113 (tail!12127 (t!378721 s!2326))))))

(declare-fun e!3865969 () Bool)

(assert (=> d!1997239 (= (matchZipper!2287 (derivationStepZipper!2241 lt!2367449 (head!13042 (t!378721 s!2326))) (tail!12127 (t!378721 s!2326))) e!3865969)))

(declare-fun b!6367226 () Bool)

(assert (=> b!6367226 (= e!3865969 (nullableZipper!2040 (derivationStepZipper!2241 lt!2367449 (head!13042 (t!378721 s!2326)))))))

(declare-fun b!6367227 () Bool)

(assert (=> b!6367227 (= e!3865969 (matchZipper!2287 (derivationStepZipper!2241 (derivationStepZipper!2241 lt!2367449 (head!13042 (t!378721 s!2326))) (head!13042 (tail!12127 (t!378721 s!2326)))) (tail!12127 (tail!12127 (t!378721 s!2326)))))))

(assert (= (and d!1997239 c!1159364) b!6367226))

(assert (= (and d!1997239 (not c!1159364)) b!6367227))

(assert (=> d!1997239 m!7169942))

(assert (=> d!1997239 m!7170730))

(assert (=> b!6367226 m!7170210))

(declare-fun m!7171038 () Bool)

(assert (=> b!6367226 m!7171038))

(assert (=> b!6367227 m!7169942))

(assert (=> b!6367227 m!7170734))

(assert (=> b!6367227 m!7170210))

(assert (=> b!6367227 m!7170734))

(declare-fun m!7171040 () Bool)

(assert (=> b!6367227 m!7171040))

(assert (=> b!6367227 m!7169942))

(assert (=> b!6367227 m!7170738))

(assert (=> b!6367227 m!7171040))

(assert (=> b!6367227 m!7170738))

(declare-fun m!7171042 () Bool)

(assert (=> b!6367227 m!7171042))

(assert (=> b!6366362 d!1997239))

(declare-fun bs!1595024 () Bool)

(declare-fun d!1997241 () Bool)

(assert (= bs!1595024 (and d!1997241 b!6365668)))

(declare-fun lambda!350829 () Int)

(assert (=> bs!1595024 (= (= (head!13042 (t!378721 s!2326)) (h!71449 s!2326)) (= lambda!350829 lambda!350711))))

(declare-fun bs!1595025 () Bool)

(assert (= bs!1595025 (and d!1997241 d!1997091)))

(assert (=> bs!1595025 (= lambda!350829 lambda!350806)))

(declare-fun bs!1595026 () Bool)

(assert (= bs!1595026 (and d!1997241 d!1997155)))

(assert (=> bs!1595026 (= (= (head!13042 (t!378721 s!2326)) (head!13042 s!2326)) (= lambda!350829 lambda!350814))))

(declare-fun bs!1595027 () Bool)

(assert (= bs!1595027 (and d!1997241 d!1997213)))

(assert (=> bs!1595027 (= lambda!350829 lambda!350825)))

(declare-fun bs!1595028 () Bool)

(assert (= bs!1595028 (and d!1997241 d!1996803)))

(assert (=> bs!1595028 (= (= (head!13042 (t!378721 s!2326)) (h!71449 s!2326)) (= lambda!350829 lambda!350758))))

(declare-fun bs!1595029 () Bool)

(assert (= bs!1595029 (and d!1997241 d!1997231)))

(assert (=> bs!1595029 (= lambda!350829 lambda!350828)))

(assert (=> d!1997241 true))

(assert (=> d!1997241 (= (derivationStepZipper!2241 lt!2367449 (head!13042 (t!378721 s!2326))) (flatMap!1780 lt!2367449 lambda!350829))))

(declare-fun bs!1595030 () Bool)

(assert (= bs!1595030 d!1997241))

(declare-fun m!7171044 () Bool)

(assert (=> bs!1595030 m!7171044))

(assert (=> b!6366362 d!1997241))

(assert (=> b!6366362 d!1997093))

(assert (=> b!6366362 d!1997095))

(assert (=> d!1996849 d!1997199))

(declare-fun d!1997243 () Bool)

(assert (=> d!1997243 (= (head!13043 (unfocusZipperList!1696 zl!343)) (h!71448 (unfocusZipperList!1696 zl!343)))))

(assert (=> b!6366178 d!1997243))

(assert (=> d!1996833 d!1997125))

(assert (=> d!1996833 d!1996829))

(assert (=> d!1996845 d!1996849))

(assert (=> d!1996845 d!1996847))

(declare-fun e!3865972 () Bool)

(declare-fun d!1997245 () Bool)

(assert (=> d!1997245 (= (matchZipper!2287 ((_ map or) lt!2367446 lt!2367449) (t!378721 s!2326)) e!3865972)))

(declare-fun res!2619550 () Bool)

(assert (=> d!1997245 (=> res!2619550 e!3865972)))

(assert (=> d!1997245 (= res!2619550 (matchZipper!2287 lt!2367446 (t!378721 s!2326)))))

(assert (=> d!1997245 true))

(declare-fun _$48!2156 () Unit!158431)

(assert (=> d!1997245 (= (choose!47302 lt!2367446 lt!2367449 (t!378721 s!2326)) _$48!2156)))

(declare-fun b!6367230 () Bool)

(assert (=> b!6367230 (= e!3865972 (matchZipper!2287 lt!2367449 (t!378721 s!2326)))))

(assert (= (and d!1997245 (not res!2619550)) b!6367230))

(assert (=> d!1997245 m!7169748))

(assert (=> d!1997245 m!7169746))

(assert (=> b!6367230 m!7169736))

(assert (=> d!1996845 d!1997245))

(declare-fun b!6367231 () Bool)

(declare-fun e!3865974 () (InoxSet Context!11318))

(assert (=> b!6367231 (= e!3865974 ((as const (Array Context!11318 Bool)) false))))

(declare-fun b!6367232 () Bool)

(declare-fun call!543549 () (InoxSet Context!11318))

(assert (=> b!6367232 (= e!3865974 call!543549)))

(declare-fun bm!543540 () Bool)

(declare-fun call!543545 () List!65124)

(declare-fun call!543550 () List!65124)

(assert (=> bm!543540 (= call!543545 call!543550)))

(declare-fun d!1997247 () Bool)

(declare-fun c!1159365 () Bool)

(assert (=> d!1997247 (= c!1159365 (and ((_ is ElementMatch!16275) (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343)))))))) (= (c!1158964 (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343)))))))) (h!71449 s!2326))))))

(declare-fun e!3865975 () (InoxSet Context!11318))

(assert (=> d!1997247 (= (derivationStepZipperDown!1523 (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343))))))) (ite (or c!1159122 c!1159120) lt!2367450 (Context!11319 call!543372)) (h!71449 s!2326)) e!3865975)))

(declare-fun b!6367233 () Bool)

(declare-fun c!1159367 () Bool)

(declare-fun e!3865973 () Bool)

(assert (=> b!6367233 (= c!1159367 e!3865973)))

(declare-fun res!2619551 () Bool)

(assert (=> b!6367233 (=> (not res!2619551) (not e!3865973))))

(assert (=> b!6367233 (= res!2619551 ((_ is Concat!25120) (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343)))))))))))

(declare-fun e!3865978 () (InoxSet Context!11318))

(declare-fun e!3865976 () (InoxSet Context!11318))

(assert (=> b!6367233 (= e!3865978 e!3865976)))

(declare-fun c!1159368 () Bool)

(declare-fun b!6367234 () Bool)

(assert (=> b!6367234 (= c!1159368 ((_ is Star!16275) (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343)))))))))))

(declare-fun e!3865977 () (InoxSet Context!11318))

(assert (=> b!6367234 (= e!3865977 e!3865974)))

(declare-fun b!6367235 () Bool)

(assert (=> b!6367235 (= e!3865975 (store ((as const (Array Context!11318 Bool)) false) (ite (or c!1159122 c!1159120) lt!2367450 (Context!11319 call!543372)) true))))

(declare-fun b!6367236 () Bool)

(declare-fun call!543548 () (InoxSet Context!11318))

(declare-fun call!543547 () (InoxSet Context!11318))

(assert (=> b!6367236 (= e!3865978 ((_ map or) call!543548 call!543547))))

(declare-fun c!1159369 () Bool)

(declare-fun bm!543541 () Bool)

(assert (=> bm!543541 (= call!543547 (derivationStepZipperDown!1523 (ite c!1159369 (regTwo!33063 (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343)))))))) (regOne!33062 (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343))))))))) (ite c!1159369 (ite (or c!1159122 c!1159120) lt!2367450 (Context!11319 call!543372)) (Context!11319 call!543550)) (h!71449 s!2326)))))

(declare-fun bm!543542 () Bool)

(declare-fun call!543546 () (InoxSet Context!11318))

(assert (=> bm!543542 (= call!543549 call!543546)))

(declare-fun b!6367237 () Bool)

(assert (=> b!6367237 (= e!3865973 (nullable!6268 (regOne!33062 (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343))))))))))))

(declare-fun bm!543543 () Bool)

(declare-fun c!1159366 () Bool)

(assert (=> bm!543543 (= call!543548 (derivationStepZipperDown!1523 (ite c!1159369 (regOne!33063 (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343)))))))) (ite c!1159367 (regTwo!33062 (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343)))))))) (ite c!1159366 (regOne!33062 (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343)))))))) (reg!16604 (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343))))))))))) (ite (or c!1159369 c!1159367) (ite (or c!1159122 c!1159120) lt!2367450 (Context!11319 call!543372)) (Context!11319 call!543545)) (h!71449 s!2326)))))

(declare-fun b!6367238 () Bool)

(assert (=> b!6367238 (= e!3865977 call!543549)))

(declare-fun bm!543544 () Bool)

(assert (=> bm!543544 (= call!543550 ($colon$colon!2136 (exprs!6159 (ite (or c!1159122 c!1159120) lt!2367450 (Context!11319 call!543372))) (ite (or c!1159367 c!1159366) (regTwo!33062 (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343)))))))) (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343))))))))))))

(declare-fun b!6367239 () Bool)

(assert (=> b!6367239 (= e!3865975 e!3865978)))

(assert (=> b!6367239 (= c!1159369 ((_ is Union!16275) (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343)))))))))))

(declare-fun bm!543545 () Bool)

(assert (=> bm!543545 (= call!543546 call!543548)))

(declare-fun b!6367240 () Bool)

(assert (=> b!6367240 (= e!3865976 e!3865977)))

(assert (=> b!6367240 (= c!1159366 ((_ is Concat!25120) (ite c!1159122 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159120 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159119 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343)))))))))))

(declare-fun b!6367241 () Bool)

(assert (=> b!6367241 (= e!3865976 ((_ map or) call!543547 call!543546))))

(assert (= (and d!1997247 c!1159365) b!6367235))

(assert (= (and d!1997247 (not c!1159365)) b!6367239))

(assert (= (and b!6367239 c!1159369) b!6367236))

(assert (= (and b!6367239 (not c!1159369)) b!6367233))

(assert (= (and b!6367233 res!2619551) b!6367237))

(assert (= (and b!6367233 c!1159367) b!6367241))

(assert (= (and b!6367233 (not c!1159367)) b!6367240))

(assert (= (and b!6367240 c!1159366) b!6367238))

(assert (= (and b!6367240 (not c!1159366)) b!6367234))

(assert (= (and b!6367234 c!1159368) b!6367232))

(assert (= (and b!6367234 (not c!1159368)) b!6367231))

(assert (= (or b!6367238 b!6367232) bm!543540))

(assert (= (or b!6367238 b!6367232) bm!543542))

(assert (= (or b!6367241 bm!543540) bm!543544))

(assert (= (or b!6367241 bm!543542) bm!543545))

(assert (= (or b!6367236 b!6367241) bm!543541))

(assert (= (or b!6367236 bm!543545) bm!543543))

(declare-fun m!7171046 () Bool)

(assert (=> bm!543541 m!7171046))

(declare-fun m!7171048 () Bool)

(assert (=> bm!543544 m!7171048))

(declare-fun m!7171050 () Bool)

(assert (=> b!6367235 m!7171050))

(declare-fun m!7171052 () Bool)

(assert (=> bm!543543 m!7171052))

(declare-fun m!7171054 () Bool)

(assert (=> b!6367237 m!7171054))

(assert (=> bm!543370 d!1997247))

(declare-fun b!6367242 () Bool)

(declare-fun e!3865980 () (InoxSet Context!11318))

(assert (=> b!6367242 (= e!3865980 ((as const (Array Context!11318 Bool)) false))))

(declare-fun b!6367243 () Bool)

(declare-fun call!543555 () (InoxSet Context!11318))

(assert (=> b!6367243 (= e!3865980 call!543555)))

(declare-fun bm!543546 () Bool)

(declare-fun call!543551 () List!65124)

(declare-fun call!543556 () List!65124)

(assert (=> bm!543546 (= call!543551 call!543556)))

(declare-fun d!1997249 () Bool)

(declare-fun c!1159370 () Bool)

(assert (=> d!1997249 (= c!1159370 (and ((_ is ElementMatch!16275) (h!71448 (exprs!6159 lt!2367457))) (= (c!1158964 (h!71448 (exprs!6159 lt!2367457))) (h!71449 s!2326))))))

(declare-fun e!3865981 () (InoxSet Context!11318))

(assert (=> d!1997249 (= (derivationStepZipperDown!1523 (h!71448 (exprs!6159 lt!2367457)) (Context!11319 (t!378720 (exprs!6159 lt!2367457))) (h!71449 s!2326)) e!3865981)))

(declare-fun b!6367244 () Bool)

(declare-fun c!1159372 () Bool)

(declare-fun e!3865979 () Bool)

(assert (=> b!6367244 (= c!1159372 e!3865979)))

(declare-fun res!2619552 () Bool)

(assert (=> b!6367244 (=> (not res!2619552) (not e!3865979))))

(assert (=> b!6367244 (= res!2619552 ((_ is Concat!25120) (h!71448 (exprs!6159 lt!2367457))))))

(declare-fun e!3865984 () (InoxSet Context!11318))

(declare-fun e!3865982 () (InoxSet Context!11318))

(assert (=> b!6367244 (= e!3865984 e!3865982)))

(declare-fun b!6367245 () Bool)

(declare-fun c!1159373 () Bool)

(assert (=> b!6367245 (= c!1159373 ((_ is Star!16275) (h!71448 (exprs!6159 lt!2367457))))))

(declare-fun e!3865983 () (InoxSet Context!11318))

(assert (=> b!6367245 (= e!3865983 e!3865980)))

(declare-fun b!6367246 () Bool)

(assert (=> b!6367246 (= e!3865981 (store ((as const (Array Context!11318 Bool)) false) (Context!11319 (t!378720 (exprs!6159 lt!2367457))) true))))

(declare-fun b!6367247 () Bool)

(declare-fun call!543554 () (InoxSet Context!11318))

(declare-fun call!543553 () (InoxSet Context!11318))

(assert (=> b!6367247 (= e!3865984 ((_ map or) call!543554 call!543553))))

(declare-fun bm!543547 () Bool)

(declare-fun c!1159374 () Bool)

(assert (=> bm!543547 (= call!543553 (derivationStepZipperDown!1523 (ite c!1159374 (regTwo!33063 (h!71448 (exprs!6159 lt!2367457))) (regOne!33062 (h!71448 (exprs!6159 lt!2367457)))) (ite c!1159374 (Context!11319 (t!378720 (exprs!6159 lt!2367457))) (Context!11319 call!543556)) (h!71449 s!2326)))))

(declare-fun bm!543548 () Bool)

(declare-fun call!543552 () (InoxSet Context!11318))

(assert (=> bm!543548 (= call!543555 call!543552)))

(declare-fun b!6367248 () Bool)

(assert (=> b!6367248 (= e!3865979 (nullable!6268 (regOne!33062 (h!71448 (exprs!6159 lt!2367457)))))))

(declare-fun c!1159371 () Bool)

(declare-fun bm!543549 () Bool)

(assert (=> bm!543549 (= call!543554 (derivationStepZipperDown!1523 (ite c!1159374 (regOne!33063 (h!71448 (exprs!6159 lt!2367457))) (ite c!1159372 (regTwo!33062 (h!71448 (exprs!6159 lt!2367457))) (ite c!1159371 (regOne!33062 (h!71448 (exprs!6159 lt!2367457))) (reg!16604 (h!71448 (exprs!6159 lt!2367457)))))) (ite (or c!1159374 c!1159372) (Context!11319 (t!378720 (exprs!6159 lt!2367457))) (Context!11319 call!543551)) (h!71449 s!2326)))))

(declare-fun b!6367249 () Bool)

(assert (=> b!6367249 (= e!3865983 call!543555)))

(declare-fun bm!543550 () Bool)

(assert (=> bm!543550 (= call!543556 ($colon$colon!2136 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 lt!2367457)))) (ite (or c!1159372 c!1159371) (regTwo!33062 (h!71448 (exprs!6159 lt!2367457))) (h!71448 (exprs!6159 lt!2367457)))))))

(declare-fun b!6367250 () Bool)

(assert (=> b!6367250 (= e!3865981 e!3865984)))

(assert (=> b!6367250 (= c!1159374 ((_ is Union!16275) (h!71448 (exprs!6159 lt!2367457))))))

(declare-fun bm!543551 () Bool)

(assert (=> bm!543551 (= call!543552 call!543554)))

(declare-fun b!6367251 () Bool)

(assert (=> b!6367251 (= e!3865982 e!3865983)))

(assert (=> b!6367251 (= c!1159371 ((_ is Concat!25120) (h!71448 (exprs!6159 lt!2367457))))))

(declare-fun b!6367252 () Bool)

(assert (=> b!6367252 (= e!3865982 ((_ map or) call!543553 call!543552))))

(assert (= (and d!1997249 c!1159370) b!6367246))

(assert (= (and d!1997249 (not c!1159370)) b!6367250))

(assert (= (and b!6367250 c!1159374) b!6367247))

(assert (= (and b!6367250 (not c!1159374)) b!6367244))

(assert (= (and b!6367244 res!2619552) b!6367248))

(assert (= (and b!6367244 c!1159372) b!6367252))

(assert (= (and b!6367244 (not c!1159372)) b!6367251))

(assert (= (and b!6367251 c!1159371) b!6367249))

(assert (= (and b!6367251 (not c!1159371)) b!6367245))

(assert (= (and b!6367245 c!1159373) b!6367243))

(assert (= (and b!6367245 (not c!1159373)) b!6367242))

(assert (= (or b!6367249 b!6367243) bm!543546))

(assert (= (or b!6367249 b!6367243) bm!543548))

(assert (= (or b!6367252 bm!543546) bm!543550))

(assert (= (or b!6367252 bm!543548) bm!543551))

(assert (= (or b!6367247 b!6367252) bm!543547))

(assert (= (or b!6367247 bm!543551) bm!543549))

(declare-fun m!7171056 () Bool)

(assert (=> bm!543547 m!7171056))

(declare-fun m!7171058 () Bool)

(assert (=> bm!543550 m!7171058))

(declare-fun m!7171060 () Bool)

(assert (=> b!6367246 m!7171060))

(declare-fun m!7171062 () Bool)

(assert (=> bm!543549 m!7171062))

(declare-fun m!7171064 () Bool)

(assert (=> b!6367248 m!7171064))

(assert (=> bm!543346 d!1997249))

(declare-fun d!1997251 () Bool)

(assert (=> d!1997251 (= (isEmpty!37110 (tail!12128 (unfocusZipperList!1696 zl!343))) ((_ is Nil!65000) (tail!12128 (unfocusZipperList!1696 zl!343))))))

(assert (=> b!6366186 d!1997251))

(declare-fun d!1997253 () Bool)

(assert (=> d!1997253 (= (tail!12128 (unfocusZipperList!1696 zl!343)) (t!378720 (unfocusZipperList!1696 zl!343)))))

(assert (=> b!6366186 d!1997253))

(declare-fun b!6367253 () Bool)

(declare-fun e!3865988 () Bool)

(assert (=> b!6367253 (= e!3865988 (matchR!8458 (derivativeStep!4980 (regTwo!33062 r!7292) (head!13042 s!2326)) (tail!12127 s!2326)))))

(declare-fun d!1997255 () Bool)

(declare-fun e!3865985 () Bool)

(assert (=> d!1997255 e!3865985))

(declare-fun c!1159375 () Bool)

(assert (=> d!1997255 (= c!1159375 ((_ is EmptyExpr!16275) (regTwo!33062 r!7292)))))

(declare-fun lt!2367587 () Bool)

(assert (=> d!1997255 (= lt!2367587 e!3865988)))

(declare-fun c!1159377 () Bool)

(assert (=> d!1997255 (= c!1159377 (isEmpty!37113 s!2326))))

(assert (=> d!1997255 (validRegex!8011 (regTwo!33062 r!7292))))

(assert (=> d!1997255 (= (matchR!8458 (regTwo!33062 r!7292) s!2326) lt!2367587)))

(declare-fun b!6367254 () Bool)

(declare-fun res!2619555 () Bool)

(declare-fun e!3865990 () Bool)

(assert (=> b!6367254 (=> res!2619555 e!3865990)))

(assert (=> b!6367254 (= res!2619555 (not (isEmpty!37113 (tail!12127 s!2326))))))

(declare-fun b!6367255 () Bool)

(declare-fun e!3865986 () Bool)

(assert (=> b!6367255 (= e!3865986 (not lt!2367587))))

(declare-fun b!6367256 () Bool)

(declare-fun res!2619554 () Bool)

(declare-fun e!3865989 () Bool)

(assert (=> b!6367256 (=> res!2619554 e!3865989)))

(assert (=> b!6367256 (= res!2619554 (not ((_ is ElementMatch!16275) (regTwo!33062 r!7292))))))

(assert (=> b!6367256 (= e!3865986 e!3865989)))

(declare-fun b!6367257 () Bool)

(declare-fun res!2619553 () Bool)

(declare-fun e!3865991 () Bool)

(assert (=> b!6367257 (=> (not res!2619553) (not e!3865991))))

(assert (=> b!6367257 (= res!2619553 (isEmpty!37113 (tail!12127 s!2326)))))

(declare-fun b!6367258 () Bool)

(declare-fun call!543557 () Bool)

(assert (=> b!6367258 (= e!3865985 (= lt!2367587 call!543557))))

(declare-fun b!6367259 () Bool)

(assert (=> b!6367259 (= e!3865988 (nullable!6268 (regTwo!33062 r!7292)))))

(declare-fun b!6367260 () Bool)

(assert (=> b!6367260 (= e!3865990 (not (= (head!13042 s!2326) (c!1158964 (regTwo!33062 r!7292)))))))

(declare-fun b!6367261 () Bool)

(declare-fun res!2619557 () Bool)

(assert (=> b!6367261 (=> (not res!2619557) (not e!3865991))))

(assert (=> b!6367261 (= res!2619557 (not call!543557))))

(declare-fun b!6367262 () Bool)

(declare-fun res!2619560 () Bool)

(assert (=> b!6367262 (=> res!2619560 e!3865989)))

(assert (=> b!6367262 (= res!2619560 e!3865991)))

(declare-fun res!2619559 () Bool)

(assert (=> b!6367262 (=> (not res!2619559) (not e!3865991))))

(assert (=> b!6367262 (= res!2619559 lt!2367587)))

(declare-fun b!6367263 () Bool)

(declare-fun e!3865987 () Bool)

(assert (=> b!6367263 (= e!3865989 e!3865987)))

(declare-fun res!2619558 () Bool)

(assert (=> b!6367263 (=> (not res!2619558) (not e!3865987))))

(assert (=> b!6367263 (= res!2619558 (not lt!2367587))))

(declare-fun bm!543552 () Bool)

(assert (=> bm!543552 (= call!543557 (isEmpty!37113 s!2326))))

(declare-fun b!6367264 () Bool)

(assert (=> b!6367264 (= e!3865991 (= (head!13042 s!2326) (c!1158964 (regTwo!33062 r!7292))))))

(declare-fun b!6367265 () Bool)

(assert (=> b!6367265 (= e!3865987 e!3865990)))

(declare-fun res!2619556 () Bool)

(assert (=> b!6367265 (=> res!2619556 e!3865990)))

(assert (=> b!6367265 (= res!2619556 call!543557)))

(declare-fun b!6367266 () Bool)

(assert (=> b!6367266 (= e!3865985 e!3865986)))

(declare-fun c!1159376 () Bool)

(assert (=> b!6367266 (= c!1159376 ((_ is EmptyLang!16275) (regTwo!33062 r!7292)))))

(assert (= (and d!1997255 c!1159377) b!6367259))

(assert (= (and d!1997255 (not c!1159377)) b!6367253))

(assert (= (and d!1997255 c!1159375) b!6367258))

(assert (= (and d!1997255 (not c!1159375)) b!6367266))

(assert (= (and b!6367266 c!1159376) b!6367255))

(assert (= (and b!6367266 (not c!1159376)) b!6367256))

(assert (= (and b!6367256 (not res!2619554)) b!6367262))

(assert (= (and b!6367262 res!2619559) b!6367261))

(assert (= (and b!6367261 res!2619557) b!6367257))

(assert (= (and b!6367257 res!2619553) b!6367264))

(assert (= (and b!6367262 (not res!2619560)) b!6367263))

(assert (= (and b!6367263 res!2619558) b!6367265))

(assert (= (and b!6367265 (not res!2619556)) b!6367254))

(assert (= (and b!6367254 (not res!2619555)) b!6367260))

(assert (= (or b!6367258 b!6367261 b!6367265) bm!543552))

(assert (=> b!6367264 m!7169926))

(assert (=> b!6367253 m!7169926))

(assert (=> b!6367253 m!7169926))

(declare-fun m!7171066 () Bool)

(assert (=> b!6367253 m!7171066))

(assert (=> b!6367253 m!7169930))

(assert (=> b!6367253 m!7171066))

(assert (=> b!6367253 m!7169930))

(declare-fun m!7171068 () Bool)

(assert (=> b!6367253 m!7171068))

(assert (=> b!6367257 m!7169930))

(assert (=> b!6367257 m!7169930))

(assert (=> b!6367257 m!7170182))

(assert (=> bm!543552 m!7169922))

(assert (=> b!6367254 m!7169930))

(assert (=> b!6367254 m!7169930))

(assert (=> b!6367254 m!7170182))

(assert (=> b!6367260 m!7169926))

(assert (=> d!1997255 m!7169922))

(assert (=> d!1997255 m!7170726))

(assert (=> b!6367259 m!7170728))

(assert (=> b!6366058 d!1997255))

(declare-fun b!6367267 () Bool)

(declare-fun e!3865992 () (InoxSet Context!11318))

(assert (=> b!6367267 (= e!3865992 ((as const (Array Context!11318 Bool)) false))))

(declare-fun b!6367268 () Bool)

(declare-fun call!543558 () (InoxSet Context!11318))

(declare-fun e!3865993 () (InoxSet Context!11318))

(assert (=> b!6367268 (= e!3865993 ((_ map or) call!543558 (derivationStepZipperUp!1449 (Context!11319 (t!378720 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343))))))))))) (h!71449 s!2326))))))

(declare-fun d!1997257 () Bool)

(declare-fun c!1159378 () Bool)

(declare-fun e!3865994 () Bool)

(assert (=> d!1997257 (= c!1159378 e!3865994)))

(declare-fun res!2619561 () Bool)

(assert (=> d!1997257 (=> (not res!2619561) (not e!3865994))))

(assert (=> d!1997257 (= res!2619561 ((_ is Cons!65000) (exprs!6159 (Context!11319 (t!378720 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))))))))

(assert (=> d!1997257 (= (derivationStepZipperUp!1449 (Context!11319 (t!378720 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))) (h!71449 s!2326)) e!3865993)))

(declare-fun b!6367269 () Bool)

(assert (=> b!6367269 (= e!3865994 (nullable!6268 (h!71448 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343))))))))))))))

(declare-fun bm!543553 () Bool)

(assert (=> bm!543553 (= call!543558 (derivationStepZipperDown!1523 (h!71448 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))))) (Context!11319 (t!378720 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343))))))))))) (h!71449 s!2326)))))

(declare-fun b!6367270 () Bool)

(assert (=> b!6367270 (= e!3865992 call!543558)))

(declare-fun b!6367271 () Bool)

(assert (=> b!6367271 (= e!3865993 e!3865992)))

(declare-fun c!1159379 () Bool)

(assert (=> b!6367271 (= c!1159379 ((_ is Cons!65000) (exprs!6159 (Context!11319 (t!378720 (exprs!6159 (Context!11319 (Cons!65000 (h!71448 (exprs!6159 (h!71450 zl!343))) (t!378720 (exprs!6159 (h!71450 zl!343)))))))))))))

(assert (= (and d!1997257 res!2619561) b!6367269))

(assert (= (and d!1997257 c!1159378) b!6367268))

(assert (= (and d!1997257 (not c!1159378)) b!6367271))

(assert (= (and b!6367271 c!1159379) b!6367270))

(assert (= (and b!6367271 (not c!1159379)) b!6367267))

(assert (= (or b!6367268 b!6367270) bm!543553))

(declare-fun m!7171070 () Bool)

(assert (=> b!6367268 m!7171070))

(declare-fun m!7171072 () Bool)

(assert (=> b!6367269 m!7171072))

(declare-fun m!7171074 () Bool)

(assert (=> bm!543553 m!7171074))

(assert (=> b!6366194 d!1997257))

(declare-fun d!1997259 () Bool)

(assert (=> d!1997259 (= (nullable!6268 (reg!16604 r!7292)) (nullableFct!2215 (reg!16604 r!7292)))))

(declare-fun bs!1595031 () Bool)

(assert (= bs!1595031 d!1997259))

(declare-fun m!7171076 () Bool)

(assert (=> bs!1595031 m!7171076))

(assert (=> b!6366239 d!1997259))

(declare-fun d!1997261 () Bool)

(declare-fun res!2619562 () Bool)

(declare-fun e!3865995 () Bool)

(assert (=> d!1997261 (=> res!2619562 e!3865995)))

(assert (=> d!1997261 (= res!2619562 ((_ is Nil!65000) (exprs!6159 lt!2367457)))))

(assert (=> d!1997261 (= (forall!15453 (exprs!6159 lt!2367457) lambda!350772) e!3865995)))

(declare-fun b!6367272 () Bool)

(declare-fun e!3865996 () Bool)

(assert (=> b!6367272 (= e!3865995 e!3865996)))

(declare-fun res!2619563 () Bool)

(assert (=> b!6367272 (=> (not res!2619563) (not e!3865996))))

(assert (=> b!6367272 (= res!2619563 (dynLambda!25787 lambda!350772 (h!71448 (exprs!6159 lt!2367457))))))

(declare-fun b!6367273 () Bool)

(assert (=> b!6367273 (= e!3865996 (forall!15453 (t!378720 (exprs!6159 lt!2367457)) lambda!350772))))

(assert (= (and d!1997261 (not res!2619562)) b!6367272))

(assert (= (and b!6367272 res!2619563) b!6367273))

(declare-fun b_lambda!242003 () Bool)

(assert (=> (not b_lambda!242003) (not b!6367272)))

(declare-fun m!7171078 () Bool)

(assert (=> b!6367272 m!7171078))

(declare-fun m!7171080 () Bool)

(assert (=> b!6367273 m!7171080))

(assert (=> d!1996837 d!1997261))

(declare-fun b!6367274 () Bool)

(declare-fun e!3865997 () (InoxSet Context!11318))

(assert (=> b!6367274 (= e!3865997 ((as const (Array Context!11318 Bool)) false))))

(declare-fun b!6367275 () Bool)

(declare-fun e!3865998 () (InoxSet Context!11318))

(declare-fun call!543559 () (InoxSet Context!11318))

(assert (=> b!6367275 (= e!3865998 ((_ map or) call!543559 (derivationStepZipperUp!1449 (Context!11319 (t!378720 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 lt!2367450)))))) (h!71449 s!2326))))))

(declare-fun d!1997263 () Bool)

(declare-fun c!1159380 () Bool)

(declare-fun e!3865999 () Bool)

(assert (=> d!1997263 (= c!1159380 e!3865999)))

(declare-fun res!2619564 () Bool)

(assert (=> d!1997263 (=> (not res!2619564) (not e!3865999))))

(assert (=> d!1997263 (= res!2619564 ((_ is Cons!65000) (exprs!6159 (Context!11319 (t!378720 (exprs!6159 lt!2367450))))))))

(assert (=> d!1997263 (= (derivationStepZipperUp!1449 (Context!11319 (t!378720 (exprs!6159 lt!2367450))) (h!71449 s!2326)) e!3865998)))

(declare-fun b!6367276 () Bool)

(assert (=> b!6367276 (= e!3865999 (nullable!6268 (h!71448 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 lt!2367450)))))))))

(declare-fun bm!543554 () Bool)

(assert (=> bm!543554 (= call!543559 (derivationStepZipperDown!1523 (h!71448 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 lt!2367450))))) (Context!11319 (t!378720 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 lt!2367450)))))) (h!71449 s!2326)))))

(declare-fun b!6367277 () Bool)

(assert (=> b!6367277 (= e!3865997 call!543559)))

(declare-fun b!6367278 () Bool)

(assert (=> b!6367278 (= e!3865998 e!3865997)))

(declare-fun c!1159381 () Bool)

(assert (=> b!6367278 (= c!1159381 ((_ is Cons!65000) (exprs!6159 (Context!11319 (t!378720 (exprs!6159 lt!2367450))))))))

(assert (= (and d!1997263 res!2619564) b!6367276))

(assert (= (and d!1997263 c!1159380) b!6367275))

(assert (= (and d!1997263 (not c!1159380)) b!6367278))

(assert (= (and b!6367278 c!1159381) b!6367277))

(assert (= (and b!6367278 (not c!1159381)) b!6367274))

(assert (= (or b!6367275 b!6367277) bm!543554))

(declare-fun m!7171082 () Bool)

(assert (=> b!6367275 m!7171082))

(declare-fun m!7171084 () Bool)

(assert (=> b!6367276 m!7171084))

(declare-fun m!7171086 () Bool)

(assert (=> bm!543554 m!7171086))

(assert (=> b!6366199 d!1997263))

(declare-fun d!1997265 () Bool)

(declare-fun res!2619565 () Bool)

(declare-fun e!3866000 () Bool)

(assert (=> d!1997265 (=> res!2619565 e!3866000)))

(assert (=> d!1997265 (= res!2619565 ((_ is Nil!65000) (exprs!6159 (h!71450 zl!343))))))

(assert (=> d!1997265 (= (forall!15453 (exprs!6159 (h!71450 zl!343)) lambda!350759) e!3866000)))

(declare-fun b!6367279 () Bool)

(declare-fun e!3866001 () Bool)

(assert (=> b!6367279 (= e!3866000 e!3866001)))

(declare-fun res!2619566 () Bool)

(assert (=> b!6367279 (=> (not res!2619566) (not e!3866001))))

(assert (=> b!6367279 (= res!2619566 (dynLambda!25787 lambda!350759 (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun b!6367280 () Bool)

(assert (=> b!6367280 (= e!3866001 (forall!15453 (t!378720 (exprs!6159 (h!71450 zl!343))) lambda!350759))))

(assert (= (and d!1997265 (not res!2619565)) b!6367279))

(assert (= (and b!6367279 res!2619566) b!6367280))

(declare-fun b_lambda!242005 () Bool)

(assert (=> (not b_lambda!242005) (not b!6367279)))

(declare-fun m!7171088 () Bool)

(assert (=> b!6367279 m!7171088))

(declare-fun m!7171090 () Bool)

(assert (=> b!6367280 m!7171090))

(assert (=> d!1996805 d!1997265))

(declare-fun b!6367281 () Bool)

(declare-fun e!3866003 () Bool)

(declare-fun call!543562 () Bool)

(assert (=> b!6367281 (= e!3866003 call!543562)))

(declare-fun b!6367282 () Bool)

(declare-fun e!3866004 () Bool)

(declare-fun call!543561 () Bool)

(assert (=> b!6367282 (= e!3866004 call!543561)))

(declare-fun b!6367283 () Bool)

(declare-fun e!3866005 () Bool)

(assert (=> b!6367283 (= e!3866005 e!3866004)))

(declare-fun res!2619569 () Bool)

(assert (=> b!6367283 (= res!2619569 (not (nullable!6268 (reg!16604 (ite c!1159129 (reg!16604 r!7292) (ite c!1159130 (regTwo!33063 r!7292) (regTwo!33062 r!7292)))))))))

(assert (=> b!6367283 (=> (not res!2619569) (not e!3866004))))

(declare-fun b!6367284 () Bool)

(declare-fun e!3866007 () Bool)

(assert (=> b!6367284 (= e!3866005 e!3866007)))

(declare-fun c!1159383 () Bool)

(assert (=> b!6367284 (= c!1159383 ((_ is Union!16275) (ite c!1159129 (reg!16604 r!7292) (ite c!1159130 (regTwo!33063 r!7292) (regTwo!33062 r!7292)))))))

(declare-fun b!6367286 () Bool)

(declare-fun e!3866006 () Bool)

(assert (=> b!6367286 (= e!3866006 call!543562)))

(declare-fun bm!543555 () Bool)

(assert (=> bm!543555 (= call!543562 call!543561)))

(declare-fun b!6367287 () Bool)

(declare-fun res!2619571 () Bool)

(declare-fun e!3866008 () Bool)

(assert (=> b!6367287 (=> res!2619571 e!3866008)))

(assert (=> b!6367287 (= res!2619571 (not ((_ is Concat!25120) (ite c!1159129 (reg!16604 r!7292) (ite c!1159130 (regTwo!33063 r!7292) (regTwo!33062 r!7292))))))))

(assert (=> b!6367287 (= e!3866007 e!3866008)))

(declare-fun b!6367285 () Bool)

(declare-fun e!3866002 () Bool)

(assert (=> b!6367285 (= e!3866002 e!3866005)))

(declare-fun c!1159382 () Bool)

(assert (=> b!6367285 (= c!1159382 ((_ is Star!16275) (ite c!1159129 (reg!16604 r!7292) (ite c!1159130 (regTwo!33063 r!7292) (regTwo!33062 r!7292)))))))

(declare-fun d!1997267 () Bool)

(declare-fun res!2619568 () Bool)

(assert (=> d!1997267 (=> res!2619568 e!3866002)))

(assert (=> d!1997267 (= res!2619568 ((_ is ElementMatch!16275) (ite c!1159129 (reg!16604 r!7292) (ite c!1159130 (regTwo!33063 r!7292) (regTwo!33062 r!7292)))))))

(assert (=> d!1997267 (= (validRegex!8011 (ite c!1159129 (reg!16604 r!7292) (ite c!1159130 (regTwo!33063 r!7292) (regTwo!33062 r!7292)))) e!3866002)))

(declare-fun b!6367288 () Bool)

(assert (=> b!6367288 (= e!3866008 e!3866006)))

(declare-fun res!2619570 () Bool)

(assert (=> b!6367288 (=> (not res!2619570) (not e!3866006))))

(declare-fun call!543560 () Bool)

(assert (=> b!6367288 (= res!2619570 call!543560)))

(declare-fun bm!543556 () Bool)

(assert (=> bm!543556 (= call!543560 (validRegex!8011 (ite c!1159383 (regOne!33063 (ite c!1159129 (reg!16604 r!7292) (ite c!1159130 (regTwo!33063 r!7292) (regTwo!33062 r!7292)))) (regOne!33062 (ite c!1159129 (reg!16604 r!7292) (ite c!1159130 (regTwo!33063 r!7292) (regTwo!33062 r!7292)))))))))

(declare-fun bm!543557 () Bool)

(assert (=> bm!543557 (= call!543561 (validRegex!8011 (ite c!1159382 (reg!16604 (ite c!1159129 (reg!16604 r!7292) (ite c!1159130 (regTwo!33063 r!7292) (regTwo!33062 r!7292)))) (ite c!1159383 (regTwo!33063 (ite c!1159129 (reg!16604 r!7292) (ite c!1159130 (regTwo!33063 r!7292) (regTwo!33062 r!7292)))) (regTwo!33062 (ite c!1159129 (reg!16604 r!7292) (ite c!1159130 (regTwo!33063 r!7292) (regTwo!33062 r!7292))))))))))

(declare-fun b!6367289 () Bool)

(declare-fun res!2619567 () Bool)

(assert (=> b!6367289 (=> (not res!2619567) (not e!3866003))))

(assert (=> b!6367289 (= res!2619567 call!543560)))

(assert (=> b!6367289 (= e!3866007 e!3866003)))

(assert (= (and d!1997267 (not res!2619568)) b!6367285))

(assert (= (and b!6367285 c!1159382) b!6367283))

(assert (= (and b!6367285 (not c!1159382)) b!6367284))

(assert (= (and b!6367283 res!2619569) b!6367282))

(assert (= (and b!6367284 c!1159383) b!6367289))

(assert (= (and b!6367284 (not c!1159383)) b!6367287))

(assert (= (and b!6367289 res!2619567) b!6367281))

(assert (= (and b!6367287 (not res!2619571)) b!6367288))

(assert (= (and b!6367288 res!2619570) b!6367286))

(assert (= (or b!6367281 b!6367286) bm!543555))

(assert (= (or b!6367289 b!6367288) bm!543556))

(assert (= (or b!6367282 bm!543555) bm!543557))

(declare-fun m!7171092 () Bool)

(assert (=> b!6367283 m!7171092))

(declare-fun m!7171094 () Bool)

(assert (=> bm!543556 m!7171094))

(declare-fun m!7171096 () Bool)

(assert (=> bm!543557 m!7171096))

(assert (=> bm!543382 d!1997267))

(assert (=> b!6366321 d!1997223))

(assert (=> b!6366321 d!1997157))

(declare-fun b!6367290 () Bool)

(declare-fun e!3866012 () Bool)

(assert (=> b!6367290 (= e!3866012 (matchR!8458 (derivativeStep!4980 (derivativeStep!4980 r!7292 (head!13042 s!2326)) (head!13042 (tail!12127 s!2326))) (tail!12127 (tail!12127 s!2326))))))

(declare-fun d!1997269 () Bool)

(declare-fun e!3866009 () Bool)

(assert (=> d!1997269 e!3866009))

(declare-fun c!1159384 () Bool)

(assert (=> d!1997269 (= c!1159384 ((_ is EmptyExpr!16275) (derivativeStep!4980 r!7292 (head!13042 s!2326))))))

(declare-fun lt!2367588 () Bool)

(assert (=> d!1997269 (= lt!2367588 e!3866012)))

(declare-fun c!1159386 () Bool)

(assert (=> d!1997269 (= c!1159386 (isEmpty!37113 (tail!12127 s!2326)))))

(assert (=> d!1997269 (validRegex!8011 (derivativeStep!4980 r!7292 (head!13042 s!2326)))))

(assert (=> d!1997269 (= (matchR!8458 (derivativeStep!4980 r!7292 (head!13042 s!2326)) (tail!12127 s!2326)) lt!2367588)))

(declare-fun b!6367291 () Bool)

(declare-fun res!2619574 () Bool)

(declare-fun e!3866014 () Bool)

(assert (=> b!6367291 (=> res!2619574 e!3866014)))

(assert (=> b!6367291 (= res!2619574 (not (isEmpty!37113 (tail!12127 (tail!12127 s!2326)))))))

(declare-fun b!6367292 () Bool)

(declare-fun e!3866010 () Bool)

(assert (=> b!6367292 (= e!3866010 (not lt!2367588))))

(declare-fun b!6367293 () Bool)

(declare-fun res!2619573 () Bool)

(declare-fun e!3866013 () Bool)

(assert (=> b!6367293 (=> res!2619573 e!3866013)))

(assert (=> b!6367293 (= res!2619573 (not ((_ is ElementMatch!16275) (derivativeStep!4980 r!7292 (head!13042 s!2326)))))))

(assert (=> b!6367293 (= e!3866010 e!3866013)))

(declare-fun b!6367294 () Bool)

(declare-fun res!2619572 () Bool)

(declare-fun e!3866015 () Bool)

(assert (=> b!6367294 (=> (not res!2619572) (not e!3866015))))

(assert (=> b!6367294 (= res!2619572 (isEmpty!37113 (tail!12127 (tail!12127 s!2326))))))

(declare-fun b!6367295 () Bool)

(declare-fun call!543563 () Bool)

(assert (=> b!6367295 (= e!3866009 (= lt!2367588 call!543563))))

(declare-fun b!6367296 () Bool)

(assert (=> b!6367296 (= e!3866012 (nullable!6268 (derivativeStep!4980 r!7292 (head!13042 s!2326))))))

(declare-fun b!6367297 () Bool)

(assert (=> b!6367297 (= e!3866014 (not (= (head!13042 (tail!12127 s!2326)) (c!1158964 (derivativeStep!4980 r!7292 (head!13042 s!2326))))))))

(declare-fun b!6367298 () Bool)

(declare-fun res!2619576 () Bool)

(assert (=> b!6367298 (=> (not res!2619576) (not e!3866015))))

(assert (=> b!6367298 (= res!2619576 (not call!543563))))

(declare-fun b!6367299 () Bool)

(declare-fun res!2619579 () Bool)

(assert (=> b!6367299 (=> res!2619579 e!3866013)))

(assert (=> b!6367299 (= res!2619579 e!3866015)))

(declare-fun res!2619578 () Bool)

(assert (=> b!6367299 (=> (not res!2619578) (not e!3866015))))

(assert (=> b!6367299 (= res!2619578 lt!2367588)))

(declare-fun b!6367300 () Bool)

(declare-fun e!3866011 () Bool)

(assert (=> b!6367300 (= e!3866013 e!3866011)))

(declare-fun res!2619577 () Bool)

(assert (=> b!6367300 (=> (not res!2619577) (not e!3866011))))

(assert (=> b!6367300 (= res!2619577 (not lt!2367588))))

(declare-fun bm!543558 () Bool)

(assert (=> bm!543558 (= call!543563 (isEmpty!37113 (tail!12127 s!2326)))))

(declare-fun b!6367301 () Bool)

(assert (=> b!6367301 (= e!3866015 (= (head!13042 (tail!12127 s!2326)) (c!1158964 (derivativeStep!4980 r!7292 (head!13042 s!2326)))))))

(declare-fun b!6367302 () Bool)

(assert (=> b!6367302 (= e!3866011 e!3866014)))

(declare-fun res!2619575 () Bool)

(assert (=> b!6367302 (=> res!2619575 e!3866014)))

(assert (=> b!6367302 (= res!2619575 call!543563)))

(declare-fun b!6367303 () Bool)

(assert (=> b!6367303 (= e!3866009 e!3866010)))

(declare-fun c!1159385 () Bool)

(assert (=> b!6367303 (= c!1159385 ((_ is EmptyLang!16275) (derivativeStep!4980 r!7292 (head!13042 s!2326))))))

(assert (= (and d!1997269 c!1159386) b!6367296))

(assert (= (and d!1997269 (not c!1159386)) b!6367290))

(assert (= (and d!1997269 c!1159384) b!6367295))

(assert (= (and d!1997269 (not c!1159384)) b!6367303))

(assert (= (and b!6367303 c!1159385) b!6367292))

(assert (= (and b!6367303 (not c!1159385)) b!6367293))

(assert (= (and b!6367293 (not res!2619573)) b!6367299))

(assert (= (and b!6367299 res!2619578) b!6367298))

(assert (= (and b!6367298 res!2619576) b!6367294))

(assert (= (and b!6367294 res!2619572) b!6367301))

(assert (= (and b!6367299 (not res!2619579)) b!6367300))

(assert (= (and b!6367300 res!2619577) b!6367302))

(assert (= (and b!6367302 (not res!2619575)) b!6367291))

(assert (= (and b!6367291 (not res!2619574)) b!6367297))

(assert (= (or b!6367295 b!6367298 b!6367302) bm!543558))

(assert (=> b!6367301 m!7169930))

(assert (=> b!6367301 m!7170856))

(assert (=> b!6367290 m!7169930))

(assert (=> b!6367290 m!7170856))

(assert (=> b!6367290 m!7170178))

(assert (=> b!6367290 m!7170856))

(declare-fun m!7171098 () Bool)

(assert (=> b!6367290 m!7171098))

(assert (=> b!6367290 m!7169930))

(assert (=> b!6367290 m!7170860))

(assert (=> b!6367290 m!7171098))

(assert (=> b!6367290 m!7170860))

(declare-fun m!7171100 () Bool)

(assert (=> b!6367290 m!7171100))

(assert (=> b!6367294 m!7169930))

(assert (=> b!6367294 m!7170860))

(assert (=> b!6367294 m!7170860))

(declare-fun m!7171102 () Bool)

(assert (=> b!6367294 m!7171102))

(assert (=> bm!543558 m!7169930))

(assert (=> bm!543558 m!7170182))

(assert (=> b!6367291 m!7169930))

(assert (=> b!6367291 m!7170860))

(assert (=> b!6367291 m!7170860))

(assert (=> b!6367291 m!7171102))

(assert (=> b!6367297 m!7169930))

(assert (=> b!6367297 m!7170856))

(assert (=> d!1997269 m!7169930))

(assert (=> d!1997269 m!7170182))

(assert (=> d!1997269 m!7170178))

(declare-fun m!7171104 () Bool)

(assert (=> d!1997269 m!7171104))

(assert (=> b!6367296 m!7170178))

(declare-fun m!7171106 () Bool)

(assert (=> b!6367296 m!7171106))

(assert (=> b!6366317 d!1997269))

(declare-fun b!6367324 () Bool)

(declare-fun e!3866026 () Regex!16275)

(assert (=> b!6367324 (= e!3866026 EmptyLang!16275)))

(declare-fun bm!543567 () Bool)

(declare-fun call!543574 () Regex!16275)

(declare-fun call!543572 () Regex!16275)

(assert (=> bm!543567 (= call!543574 call!543572)))

(declare-fun b!6367325 () Bool)

(declare-fun e!3866028 () Regex!16275)

(assert (=> b!6367325 (= e!3866028 (ite (= (head!13042 s!2326) (c!1158964 r!7292)) EmptyExpr!16275 EmptyLang!16275))))

(declare-fun bm!543568 () Bool)

(declare-fun call!543573 () Regex!16275)

(assert (=> bm!543568 (= call!543573 call!543574)))

(declare-fun bm!543569 () Bool)

(declare-fun call!543575 () Regex!16275)

(declare-fun c!1159398 () Bool)

(assert (=> bm!543569 (= call!543575 (derivativeStep!4980 (ite c!1159398 (regTwo!33063 r!7292) (regOne!33062 r!7292)) (head!13042 s!2326)))))

(declare-fun b!6367326 () Bool)

(declare-fun e!3866029 () Regex!16275)

(assert (=> b!6367326 (= e!3866029 (Concat!25120 call!543574 r!7292))))

(declare-fun b!6367327 () Bool)

(declare-fun e!3866027 () Regex!16275)

(assert (=> b!6367327 (= e!3866027 (Union!16275 (Concat!25120 call!543573 (regTwo!33062 r!7292)) EmptyLang!16275))))

(declare-fun b!6367328 () Bool)

(declare-fun c!1159400 () Bool)

(assert (=> b!6367328 (= c!1159400 (nullable!6268 (regOne!33062 r!7292)))))

(assert (=> b!6367328 (= e!3866029 e!3866027)))

(declare-fun b!6367329 () Bool)

(assert (=> b!6367329 (= e!3866027 (Union!16275 (Concat!25120 call!543575 (regTwo!33062 r!7292)) call!543573))))

(declare-fun b!6367330 () Bool)

(assert (=> b!6367330 (= c!1159398 ((_ is Union!16275) r!7292))))

(declare-fun e!3866030 () Regex!16275)

(assert (=> b!6367330 (= e!3866028 e!3866030)))

(declare-fun b!6367331 () Bool)

(assert (=> b!6367331 (= e!3866030 e!3866029)))

(declare-fun c!1159397 () Bool)

(assert (=> b!6367331 (= c!1159397 ((_ is Star!16275) r!7292))))

(declare-fun b!6367332 () Bool)

(assert (=> b!6367332 (= e!3866030 (Union!16275 call!543572 call!543575))))

(declare-fun d!1997271 () Bool)

(declare-fun lt!2367591 () Regex!16275)

(assert (=> d!1997271 (validRegex!8011 lt!2367591)))

(assert (=> d!1997271 (= lt!2367591 e!3866026)))

(declare-fun c!1159399 () Bool)

(assert (=> d!1997271 (= c!1159399 (or ((_ is EmptyExpr!16275) r!7292) ((_ is EmptyLang!16275) r!7292)))))

(assert (=> d!1997271 (validRegex!8011 r!7292)))

(assert (=> d!1997271 (= (derivativeStep!4980 r!7292 (head!13042 s!2326)) lt!2367591)))

(declare-fun b!6367333 () Bool)

(assert (=> b!6367333 (= e!3866026 e!3866028)))

(declare-fun c!1159401 () Bool)

(assert (=> b!6367333 (= c!1159401 ((_ is ElementMatch!16275) r!7292))))

(declare-fun bm!543570 () Bool)

(assert (=> bm!543570 (= call!543572 (derivativeStep!4980 (ite c!1159398 (regOne!33063 r!7292) (ite c!1159397 (reg!16604 r!7292) (ite c!1159400 (regTwo!33062 r!7292) (regOne!33062 r!7292)))) (head!13042 s!2326)))))

(assert (= (and d!1997271 c!1159399) b!6367324))

(assert (= (and d!1997271 (not c!1159399)) b!6367333))

(assert (= (and b!6367333 c!1159401) b!6367325))

(assert (= (and b!6367333 (not c!1159401)) b!6367330))

(assert (= (and b!6367330 c!1159398) b!6367332))

(assert (= (and b!6367330 (not c!1159398)) b!6367331))

(assert (= (and b!6367331 c!1159397) b!6367326))

(assert (= (and b!6367331 (not c!1159397)) b!6367328))

(assert (= (and b!6367328 c!1159400) b!6367329))

(assert (= (and b!6367328 (not c!1159400)) b!6367327))

(assert (= (or b!6367329 b!6367327) bm!543568))

(assert (= (or b!6367326 bm!543568) bm!543567))

(assert (= (or b!6367332 b!6367329) bm!543569))

(assert (= (or b!6367332 bm!543567) bm!543570))

(assert (=> bm!543569 m!7169926))

(declare-fun m!7171108 () Bool)

(assert (=> bm!543569 m!7171108))

(assert (=> b!6367328 m!7170788))

(declare-fun m!7171110 () Bool)

(assert (=> d!1997271 m!7171110))

(assert (=> d!1997271 m!7169772))

(assert (=> bm!543570 m!7169926))

(declare-fun m!7171112 () Bool)

(assert (=> bm!543570 m!7171112))

(assert (=> b!6366317 d!1997271))

(assert (=> b!6366317 d!1997111))

(assert (=> b!6366317 d!1997157))

(assert (=> b!6366062 d!1997127))

(declare-fun bs!1595032 () Bool)

(declare-fun d!1997273 () Bool)

(assert (= bs!1595032 (and d!1997273 d!1997133)))

(declare-fun lambda!350830 () Int)

(assert (=> bs!1595032 (= lambda!350830 lambda!350811)))

(declare-fun bs!1595033 () Bool)

(assert (= bs!1595033 (and d!1997273 d!1997225)))

(assert (=> bs!1595033 (= lambda!350830 lambda!350827)))

(assert (=> d!1997273 (= (nullableZipper!2040 lt!2367446) (exists!2577 lt!2367446 lambda!350830))))

(declare-fun bs!1595034 () Bool)

(assert (= bs!1595034 d!1997273))

(declare-fun m!7171114 () Bool)

(assert (=> bs!1595034 m!7171114))

(assert (=> b!6366366 d!1997273))

(declare-fun d!1997275 () Bool)

(declare-fun res!2619580 () Bool)

(declare-fun e!3866031 () Bool)

(assert (=> d!1997275 (=> res!2619580 e!3866031)))

(assert (=> d!1997275 (= res!2619580 ((_ is Nil!65000) lt!2367535))))

(assert (=> d!1997275 (= (forall!15453 lt!2367535 lambda!350765) e!3866031)))

(declare-fun b!6367334 () Bool)

(declare-fun e!3866032 () Bool)

(assert (=> b!6367334 (= e!3866031 e!3866032)))

(declare-fun res!2619581 () Bool)

(assert (=> b!6367334 (=> (not res!2619581) (not e!3866032))))

(assert (=> b!6367334 (= res!2619581 (dynLambda!25787 lambda!350765 (h!71448 lt!2367535)))))

(declare-fun b!6367335 () Bool)

(assert (=> b!6367335 (= e!3866032 (forall!15453 (t!378720 lt!2367535) lambda!350765))))

(assert (= (and d!1997275 (not res!2619580)) b!6367334))

(assert (= (and b!6367334 res!2619581) b!6367335))

(declare-fun b_lambda!242007 () Bool)

(assert (=> (not b_lambda!242007) (not b!6367334)))

(declare-fun m!7171116 () Bool)

(assert (=> b!6367334 m!7171116))

(declare-fun m!7171118 () Bool)

(assert (=> b!6367335 m!7171118))

(assert (=> d!1996811 d!1997275))

(declare-fun d!1997277 () Bool)

(assert (=> d!1997277 true))

(assert (=> d!1997277 true))

(declare-fun res!2619582 () Bool)

(assert (=> d!1997277 (= (choose!47296 lambda!350710) res!2619582)))

(assert (=> d!1996783 d!1997277))

(declare-fun b!6367336 () Bool)

(declare-fun e!3866034 () Bool)

(declare-fun call!543578 () Bool)

(assert (=> b!6367336 (= e!3866034 call!543578)))

(declare-fun b!6367337 () Bool)

(declare-fun e!3866035 () Bool)

(declare-fun call!543577 () Bool)

(assert (=> b!6367337 (= e!3866035 call!543577)))

(declare-fun b!6367338 () Bool)

(declare-fun e!3866036 () Bool)

(assert (=> b!6367338 (= e!3866036 e!3866035)))

(declare-fun res!2619585 () Bool)

(assert (=> b!6367338 (= res!2619585 (not (nullable!6268 (reg!16604 lt!2367532))))))

(assert (=> b!6367338 (=> (not res!2619585) (not e!3866035))))

(declare-fun b!6367339 () Bool)

(declare-fun e!3866038 () Bool)

(assert (=> b!6367339 (= e!3866036 e!3866038)))

(declare-fun c!1159403 () Bool)

(assert (=> b!6367339 (= c!1159403 ((_ is Union!16275) lt!2367532))))

(declare-fun b!6367341 () Bool)

(declare-fun e!3866037 () Bool)

(assert (=> b!6367341 (= e!3866037 call!543578)))

(declare-fun bm!543571 () Bool)

(assert (=> bm!543571 (= call!543578 call!543577)))

(declare-fun b!6367342 () Bool)

(declare-fun res!2619587 () Bool)

(declare-fun e!3866039 () Bool)

(assert (=> b!6367342 (=> res!2619587 e!3866039)))

(assert (=> b!6367342 (= res!2619587 (not ((_ is Concat!25120) lt!2367532)))))

(assert (=> b!6367342 (= e!3866038 e!3866039)))

(declare-fun b!6367340 () Bool)

(declare-fun e!3866033 () Bool)

(assert (=> b!6367340 (= e!3866033 e!3866036)))

(declare-fun c!1159402 () Bool)

(assert (=> b!6367340 (= c!1159402 ((_ is Star!16275) lt!2367532))))

(declare-fun d!1997279 () Bool)

(declare-fun res!2619584 () Bool)

(assert (=> d!1997279 (=> res!2619584 e!3866033)))

(assert (=> d!1997279 (= res!2619584 ((_ is ElementMatch!16275) lt!2367532))))

(assert (=> d!1997279 (= (validRegex!8011 lt!2367532) e!3866033)))

(declare-fun b!6367343 () Bool)

(assert (=> b!6367343 (= e!3866039 e!3866037)))

(declare-fun res!2619586 () Bool)

(assert (=> b!6367343 (=> (not res!2619586) (not e!3866037))))

(declare-fun call!543576 () Bool)

(assert (=> b!6367343 (= res!2619586 call!543576)))

(declare-fun bm!543572 () Bool)

(assert (=> bm!543572 (= call!543576 (validRegex!8011 (ite c!1159403 (regOne!33063 lt!2367532) (regOne!33062 lt!2367532))))))

(declare-fun bm!543573 () Bool)

(assert (=> bm!543573 (= call!543577 (validRegex!8011 (ite c!1159402 (reg!16604 lt!2367532) (ite c!1159403 (regTwo!33063 lt!2367532) (regTwo!33062 lt!2367532)))))))

(declare-fun b!6367344 () Bool)

(declare-fun res!2619583 () Bool)

(assert (=> b!6367344 (=> (not res!2619583) (not e!3866034))))

(assert (=> b!6367344 (= res!2619583 call!543576)))

(assert (=> b!6367344 (= e!3866038 e!3866034)))

(assert (= (and d!1997279 (not res!2619584)) b!6367340))

(assert (= (and b!6367340 c!1159402) b!6367338))

(assert (= (and b!6367340 (not c!1159402)) b!6367339))

(assert (= (and b!6367338 res!2619585) b!6367337))

(assert (= (and b!6367339 c!1159403) b!6367344))

(assert (= (and b!6367339 (not c!1159403)) b!6367342))

(assert (= (and b!6367344 res!2619583) b!6367336))

(assert (= (and b!6367342 (not res!2619587)) b!6367343))

(assert (= (and b!6367343 res!2619586) b!6367341))

(assert (= (or b!6367336 b!6367341) bm!543571))

(assert (= (or b!6367344 b!6367343) bm!543572))

(assert (= (or b!6367337 bm!543571) bm!543573))

(declare-fun m!7171120 () Bool)

(assert (=> b!6367338 m!7171120))

(declare-fun m!7171122 () Bool)

(assert (=> bm!543572 m!7171122))

(declare-fun m!7171124 () Bool)

(assert (=> bm!543573 m!7171124))

(assert (=> d!1996809 d!1997279))

(declare-fun d!1997281 () Bool)

(declare-fun res!2619588 () Bool)

(declare-fun e!3866040 () Bool)

(assert (=> d!1997281 (=> res!2619588 e!3866040)))

(assert (=> d!1997281 (= res!2619588 ((_ is Nil!65000) (unfocusZipperList!1696 zl!343)))))

(assert (=> d!1997281 (= (forall!15453 (unfocusZipperList!1696 zl!343) lambda!350762) e!3866040)))

(declare-fun b!6367345 () Bool)

(declare-fun e!3866041 () Bool)

(assert (=> b!6367345 (= e!3866040 e!3866041)))

(declare-fun res!2619589 () Bool)

(assert (=> b!6367345 (=> (not res!2619589) (not e!3866041))))

(assert (=> b!6367345 (= res!2619589 (dynLambda!25787 lambda!350762 (h!71448 (unfocusZipperList!1696 zl!343))))))

(declare-fun b!6367346 () Bool)

(assert (=> b!6367346 (= e!3866041 (forall!15453 (t!378720 (unfocusZipperList!1696 zl!343)) lambda!350762))))

(assert (= (and d!1997281 (not res!2619588)) b!6367345))

(assert (= (and b!6367345 res!2619589) b!6367346))

(declare-fun b_lambda!242009 () Bool)

(assert (=> (not b_lambda!242009) (not b!6367345)))

(declare-fun m!7171126 () Bool)

(assert (=> b!6367345 m!7171126))

(declare-fun m!7171128 () Bool)

(assert (=> b!6367346 m!7171128))

(assert (=> d!1996809 d!1997281))

(declare-fun b!6367347 () Bool)

(declare-fun e!3866043 () (InoxSet Context!11318))

(assert (=> b!6367347 (= e!3866043 ((as const (Array Context!11318 Bool)) false))))

(declare-fun b!6367348 () Bool)

(declare-fun call!543583 () (InoxSet Context!11318))

(assert (=> b!6367348 (= e!3866043 call!543583)))

(declare-fun bm!543574 () Bool)

(declare-fun call!543579 () List!65124)

(declare-fun call!543584 () List!65124)

(assert (=> bm!543574 (= call!543579 call!543584)))

(declare-fun d!1997283 () Bool)

(declare-fun c!1159404 () Bool)

(assert (=> d!1997283 (= c!1159404 (and ((_ is ElementMatch!16275) (h!71448 (exprs!6159 (h!71450 zl!343)))) (= (c!1158964 (h!71448 (exprs!6159 (h!71450 zl!343)))) (h!71449 s!2326))))))

(declare-fun e!3866044 () (InoxSet Context!11318))

(assert (=> d!1997283 (= (derivationStepZipperDown!1523 (h!71448 (exprs!6159 (h!71450 zl!343))) (Context!11319 (t!378720 (exprs!6159 (h!71450 zl!343)))) (h!71449 s!2326)) e!3866044)))

(declare-fun b!6367349 () Bool)

(declare-fun c!1159406 () Bool)

(declare-fun e!3866042 () Bool)

(assert (=> b!6367349 (= c!1159406 e!3866042)))

(declare-fun res!2619590 () Bool)

(assert (=> b!6367349 (=> (not res!2619590) (not e!3866042))))

(assert (=> b!6367349 (= res!2619590 ((_ is Concat!25120) (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun e!3866047 () (InoxSet Context!11318))

(declare-fun e!3866045 () (InoxSet Context!11318))

(assert (=> b!6367349 (= e!3866047 e!3866045)))

(declare-fun b!6367350 () Bool)

(declare-fun c!1159407 () Bool)

(assert (=> b!6367350 (= c!1159407 ((_ is Star!16275) (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun e!3866046 () (InoxSet Context!11318))

(assert (=> b!6367350 (= e!3866046 e!3866043)))

(declare-fun b!6367351 () Bool)

(assert (=> b!6367351 (= e!3866044 (store ((as const (Array Context!11318 Bool)) false) (Context!11319 (t!378720 (exprs!6159 (h!71450 zl!343)))) true))))

(declare-fun b!6367352 () Bool)

(declare-fun call!543582 () (InoxSet Context!11318))

(declare-fun call!543581 () (InoxSet Context!11318))

(assert (=> b!6367352 (= e!3866047 ((_ map or) call!543582 call!543581))))

(declare-fun bm!543575 () Bool)

(declare-fun c!1159408 () Bool)

(assert (=> bm!543575 (= call!543581 (derivationStepZipperDown!1523 (ite c!1159408 (regTwo!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343))))) (ite c!1159408 (Context!11319 (t!378720 (exprs!6159 (h!71450 zl!343)))) (Context!11319 call!543584)) (h!71449 s!2326)))))

(declare-fun bm!543576 () Bool)

(declare-fun call!543580 () (InoxSet Context!11318))

(assert (=> bm!543576 (= call!543583 call!543580)))

(declare-fun b!6367353 () Bool)

(assert (=> b!6367353 (= e!3866042 (nullable!6268 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343))))))))

(declare-fun c!1159405 () Bool)

(declare-fun bm!543577 () Bool)

(assert (=> bm!543577 (= call!543582 (derivationStepZipperDown!1523 (ite c!1159408 (regOne!33063 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159406 (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (ite c!1159405 (regOne!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (reg!16604 (h!71448 (exprs!6159 (h!71450 zl!343))))))) (ite (or c!1159408 c!1159406) (Context!11319 (t!378720 (exprs!6159 (h!71450 zl!343)))) (Context!11319 call!543579)) (h!71449 s!2326)))))

(declare-fun b!6367354 () Bool)

(assert (=> b!6367354 (= e!3866046 call!543583)))

(declare-fun bm!543578 () Bool)

(assert (=> bm!543578 (= call!543584 ($colon$colon!2136 (exprs!6159 (Context!11319 (t!378720 (exprs!6159 (h!71450 zl!343))))) (ite (or c!1159406 c!1159405) (regTwo!33062 (h!71448 (exprs!6159 (h!71450 zl!343)))) (h!71448 (exprs!6159 (h!71450 zl!343))))))))

(declare-fun b!6367355 () Bool)

(assert (=> b!6367355 (= e!3866044 e!3866047)))

(assert (=> b!6367355 (= c!1159408 ((_ is Union!16275) (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun bm!543579 () Bool)

(assert (=> bm!543579 (= call!543580 call!543582)))

(declare-fun b!6367356 () Bool)

(assert (=> b!6367356 (= e!3866045 e!3866046)))

(assert (=> b!6367356 (= c!1159405 ((_ is Concat!25120) (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun b!6367357 () Bool)

(assert (=> b!6367357 (= e!3866045 ((_ map or) call!543581 call!543580))))

(assert (= (and d!1997283 c!1159404) b!6367351))

(assert (= (and d!1997283 (not c!1159404)) b!6367355))

(assert (= (and b!6367355 c!1159408) b!6367352))

(assert (= (and b!6367355 (not c!1159408)) b!6367349))

(assert (= (and b!6367349 res!2619590) b!6367353))

(assert (= (and b!6367349 c!1159406) b!6367357))

(assert (= (and b!6367349 (not c!1159406)) b!6367356))

(assert (= (and b!6367356 c!1159405) b!6367354))

(assert (= (and b!6367356 (not c!1159405)) b!6367350))

(assert (= (and b!6367350 c!1159407) b!6367348))

(assert (= (and b!6367350 (not c!1159407)) b!6367347))

(assert (= (or b!6367354 b!6367348) bm!543574))

(assert (= (or b!6367354 b!6367348) bm!543576))

(assert (= (or b!6367357 bm!543574) bm!543578))

(assert (= (or b!6367357 bm!543576) bm!543579))

(assert (= (or b!6367352 b!6367357) bm!543575))

(assert (= (or b!6367352 bm!543579) bm!543577))

(declare-fun m!7171130 () Bool)

(assert (=> bm!543575 m!7171130))

(declare-fun m!7171132 () Bool)

(assert (=> bm!543578 m!7171132))

(declare-fun m!7171134 () Bool)

(assert (=> b!6367351 m!7171134))

(declare-fun m!7171136 () Bool)

(assert (=> bm!543577 m!7171136))

(assert (=> b!6367353 m!7170160))

(assert (=> bm!543373 d!1997283))

(declare-fun b!6367358 () Bool)

(declare-fun e!3866049 () (InoxSet Context!11318))

(assert (=> b!6367358 (= e!3866049 ((as const (Array Context!11318 Bool)) false))))

(declare-fun b!6367359 () Bool)

(declare-fun call!543589 () (InoxSet Context!11318))

(assert (=> b!6367359 (= e!3866049 call!543589)))

(declare-fun bm!543580 () Bool)

(declare-fun call!543585 () List!65124)

(declare-fun call!543590 () List!65124)

(assert (=> bm!543580 (= call!543585 call!543590)))

(declare-fun c!1159409 () Bool)

(declare-fun d!1997285 () Bool)

(assert (=> d!1997285 (= c!1159409 (and ((_ is ElementMatch!16275) (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292))))) (= (c!1158964 (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292))))) (h!71449 s!2326))))))

(declare-fun e!3866050 () (InoxSet Context!11318))

(assert (=> d!1997285 (= (derivationStepZipperDown!1523 (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292)))) (ite c!1159098 (Context!11319 lt!2367453) (Context!11319 call!543369)) (h!71449 s!2326)) e!3866050)))

(declare-fun b!6367360 () Bool)

(declare-fun c!1159411 () Bool)

(declare-fun e!3866048 () Bool)

(assert (=> b!6367360 (= c!1159411 e!3866048)))

(declare-fun res!2619591 () Bool)

(assert (=> b!6367360 (=> (not res!2619591) (not e!3866048))))

(assert (=> b!6367360 (= res!2619591 ((_ is Concat!25120) (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292))))))))

(declare-fun e!3866053 () (InoxSet Context!11318))

(declare-fun e!3866051 () (InoxSet Context!11318))

(assert (=> b!6367360 (= e!3866053 e!3866051)))

(declare-fun b!6367361 () Bool)

(declare-fun c!1159412 () Bool)

(assert (=> b!6367361 (= c!1159412 ((_ is Star!16275) (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292))))))))

(declare-fun e!3866052 () (InoxSet Context!11318))

(assert (=> b!6367361 (= e!3866052 e!3866049)))

(declare-fun b!6367362 () Bool)

(assert (=> b!6367362 (= e!3866050 (store ((as const (Array Context!11318 Bool)) false) (ite c!1159098 (Context!11319 lt!2367453) (Context!11319 call!543369)) true))))

(declare-fun b!6367363 () Bool)

(declare-fun call!543588 () (InoxSet Context!11318))

(declare-fun call!543587 () (InoxSet Context!11318))

(assert (=> b!6367363 (= e!3866053 ((_ map or) call!543588 call!543587))))

(declare-fun bm!543581 () Bool)

(declare-fun c!1159413 () Bool)

(assert (=> bm!543581 (= call!543587 (derivationStepZipperDown!1523 (ite c!1159413 (regTwo!33063 (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292))))) (regOne!33062 (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292)))))) (ite c!1159413 (ite c!1159098 (Context!11319 lt!2367453) (Context!11319 call!543369)) (Context!11319 call!543590)) (h!71449 s!2326)))))

(declare-fun bm!543582 () Bool)

(declare-fun call!543586 () (InoxSet Context!11318))

(assert (=> bm!543582 (= call!543589 call!543586)))

(declare-fun b!6367364 () Bool)

(assert (=> b!6367364 (= e!3866048 (nullable!6268 (regOne!33062 (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292)))))))))

(declare-fun bm!543583 () Bool)

(declare-fun c!1159410 () Bool)

(assert (=> bm!543583 (= call!543588 (derivationStepZipperDown!1523 (ite c!1159413 (regOne!33063 (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292))))) (ite c!1159411 (regTwo!33062 (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292))))) (ite c!1159410 (regOne!33062 (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292))))) (reg!16604 (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292)))))))) (ite (or c!1159413 c!1159411) (ite c!1159098 (Context!11319 lt!2367453) (Context!11319 call!543369)) (Context!11319 call!543585)) (h!71449 s!2326)))))

(declare-fun b!6367365 () Bool)

(assert (=> b!6367365 (= e!3866052 call!543589)))

(declare-fun bm!543584 () Bool)

(assert (=> bm!543584 (= call!543590 ($colon$colon!2136 (exprs!6159 (ite c!1159098 (Context!11319 lt!2367453) (Context!11319 call!543369))) (ite (or c!1159411 c!1159410) (regTwo!33062 (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292))))) (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292)))))))))

(declare-fun b!6367366 () Bool)

(assert (=> b!6367366 (= e!3866050 e!3866053)))

(assert (=> b!6367366 (= c!1159413 ((_ is Union!16275) (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292))))))))

(declare-fun bm!543585 () Bool)

(assert (=> bm!543585 (= call!543586 call!543588)))

(declare-fun b!6367367 () Bool)

(assert (=> b!6367367 (= e!3866051 e!3866052)))

(assert (=> b!6367367 (= c!1159410 ((_ is Concat!25120) (ite c!1159098 (regTwo!33063 (reg!16604 (regOne!33062 r!7292))) (regOne!33062 (reg!16604 (regOne!33062 r!7292))))))))

(declare-fun b!6367368 () Bool)

(assert (=> b!6367368 (= e!3866051 ((_ map or) call!543587 call!543586))))

(assert (= (and d!1997285 c!1159409) b!6367362))

(assert (= (and d!1997285 (not c!1159409)) b!6367366))

(assert (= (and b!6367366 c!1159413) b!6367363))

(assert (= (and b!6367366 (not c!1159413)) b!6367360))

(assert (= (and b!6367360 res!2619591) b!6367364))

(assert (= (and b!6367360 c!1159411) b!6367368))

(assert (= (and b!6367360 (not c!1159411)) b!6367367))

(assert (= (and b!6367367 c!1159410) b!6367365))

(assert (= (and b!6367367 (not c!1159410)) b!6367361))

(assert (= (and b!6367361 c!1159412) b!6367359))

(assert (= (and b!6367361 (not c!1159412)) b!6367358))

(assert (= (or b!6367365 b!6367359) bm!543580))

(assert (= (or b!6367365 b!6367359) bm!543582))

(assert (= (or b!6367368 bm!543580) bm!543584))

(assert (= (or b!6367368 bm!543582) bm!543585))

(assert (= (or b!6367363 b!6367368) bm!543581))

(assert (= (or b!6367363 bm!543585) bm!543583))

(declare-fun m!7171138 () Bool)

(assert (=> bm!543581 m!7171138))

(declare-fun m!7171140 () Bool)

(assert (=> bm!543584 m!7171140))

(declare-fun m!7171142 () Bool)

(assert (=> b!6367362 m!7171142))

(declare-fun m!7171144 () Bool)

(assert (=> bm!543583 m!7171144))

(declare-fun m!7171146 () Bool)

(assert (=> b!6367364 m!7171146))

(assert (=> bm!543360 d!1997285))

(declare-fun d!1997287 () Bool)

(assert (=> d!1997287 true))

(declare-fun setRes!43395 () Bool)

(assert (=> d!1997287 setRes!43395))

(declare-fun condSetEmpty!43395 () Bool)

(declare-fun res!2619592 () (InoxSet Context!11318))

(assert (=> d!1997287 (= condSetEmpty!43395 (= res!2619592 ((as const (Array Context!11318 Bool)) false)))))

(assert (=> d!1997287 (= (choose!47299 z!1189 lambda!350711) res!2619592)))

(declare-fun setIsEmpty!43395 () Bool)

(assert (=> setIsEmpty!43395 setRes!43395))

(declare-fun tp!1772841 () Bool)

(declare-fun e!3866054 () Bool)

(declare-fun setNonEmpty!43395 () Bool)

(declare-fun setElem!43395 () Context!11318)

(assert (=> setNonEmpty!43395 (= setRes!43395 (and tp!1772841 (inv!83934 setElem!43395) e!3866054))))

(declare-fun setRest!43395 () (InoxSet Context!11318))

(assert (=> setNonEmpty!43395 (= res!2619592 ((_ map or) (store ((as const (Array Context!11318 Bool)) false) setElem!43395 true) setRest!43395))))

(declare-fun b!6367369 () Bool)

(declare-fun tp!1772842 () Bool)

(assert (=> b!6367369 (= e!3866054 tp!1772842)))

(assert (= (and d!1997287 condSetEmpty!43395) setIsEmpty!43395))

(assert (= (and d!1997287 (not condSetEmpty!43395)) setNonEmpty!43395))

(assert (= setNonEmpty!43395 b!6367369))

(declare-fun m!7171148 () Bool)

(assert (=> setNonEmpty!43395 m!7171148))

(assert (=> d!1996821 d!1997287))

(declare-fun bm!543586 () Bool)

(declare-fun call!543591 () Bool)

(declare-fun c!1159414 () Bool)

(assert (=> bm!543586 (= call!543591 (nullable!6268 (ite c!1159414 (regTwo!33063 (regOne!33062 (regOne!33062 r!7292))) (regTwo!33062 (regOne!33062 (regOne!33062 r!7292))))))))

(declare-fun bm!543587 () Bool)

(declare-fun call!543592 () Bool)

(assert (=> bm!543587 (= call!543592 (nullable!6268 (ite c!1159414 (regOne!33063 (regOne!33062 (regOne!33062 r!7292))) (regOne!33062 (regOne!33062 (regOne!33062 r!7292))))))))

(declare-fun b!6367370 () Bool)

(declare-fun e!3866057 () Bool)

(declare-fun e!3866056 () Bool)

(assert (=> b!6367370 (= e!3866057 e!3866056)))

(assert (=> b!6367370 (= c!1159414 ((_ is Union!16275) (regOne!33062 (regOne!33062 r!7292))))))

(declare-fun b!6367371 () Bool)

(declare-fun e!3866058 () Bool)

(assert (=> b!6367371 (= e!3866056 e!3866058)))

(declare-fun res!2619594 () Bool)

(assert (=> b!6367371 (= res!2619594 call!543592)))

(assert (=> b!6367371 (=> res!2619594 e!3866058)))

(declare-fun d!1997289 () Bool)

(declare-fun res!2619593 () Bool)

(declare-fun e!3866060 () Bool)

(assert (=> d!1997289 (=> res!2619593 e!3866060)))

(assert (=> d!1997289 (= res!2619593 ((_ is EmptyExpr!16275) (regOne!33062 (regOne!33062 r!7292))))))

(assert (=> d!1997289 (= (nullableFct!2215 (regOne!33062 (regOne!33062 r!7292))) e!3866060)))

(declare-fun b!6367372 () Bool)

(declare-fun e!3866059 () Bool)

(assert (=> b!6367372 (= e!3866059 call!543591)))

(declare-fun b!6367373 () Bool)

(declare-fun e!3866055 () Bool)

(assert (=> b!6367373 (= e!3866055 e!3866057)))

(declare-fun res!2619596 () Bool)

(assert (=> b!6367373 (=> res!2619596 e!3866057)))

(assert (=> b!6367373 (= res!2619596 ((_ is Star!16275) (regOne!33062 (regOne!33062 r!7292))))))

(declare-fun b!6367374 () Bool)

(assert (=> b!6367374 (= e!3866056 e!3866059)))

(declare-fun res!2619595 () Bool)

(assert (=> b!6367374 (= res!2619595 call!543592)))

(assert (=> b!6367374 (=> (not res!2619595) (not e!3866059))))

(declare-fun b!6367375 () Bool)

(assert (=> b!6367375 (= e!3866058 call!543591)))

(declare-fun b!6367376 () Bool)

(assert (=> b!6367376 (= e!3866060 e!3866055)))

(declare-fun res!2619597 () Bool)

(assert (=> b!6367376 (=> (not res!2619597) (not e!3866055))))

(assert (=> b!6367376 (= res!2619597 (and (not ((_ is EmptyLang!16275) (regOne!33062 (regOne!33062 r!7292)))) (not ((_ is ElementMatch!16275) (regOne!33062 (regOne!33062 r!7292))))))))

(assert (= (and d!1997289 (not res!2619593)) b!6367376))

(assert (= (and b!6367376 res!2619597) b!6367373))

(assert (= (and b!6367373 (not res!2619596)) b!6367370))

(assert (= (and b!6367370 c!1159414) b!6367371))

(assert (= (and b!6367370 (not c!1159414)) b!6367374))

(assert (= (and b!6367371 (not res!2619594)) b!6367375))

(assert (= (and b!6367374 res!2619595) b!6367372))

(assert (= (or b!6367375 b!6367372) bm!543586))

(assert (= (or b!6367371 b!6367374) bm!543587))

(declare-fun m!7171150 () Bool)

(assert (=> bm!543586 m!7171150))

(declare-fun m!7171152 () Bool)

(assert (=> bm!543587 m!7171152))

(assert (=> d!1996753 d!1997289))

(declare-fun bs!1595035 () Bool)

(declare-fun b!6367377 () Bool)

(assert (= bs!1595035 (and b!6367377 b!6365680)))

(declare-fun lambda!350831 () Int)

(assert (=> bs!1595035 (not (= lambda!350831 lambda!350709))))

(declare-fun bs!1595036 () Bool)

(assert (= bs!1595036 (and b!6367377 d!1997165)))

(assert (=> bs!1595036 (not (= lambda!350831 lambda!350817))))

(declare-fun bs!1595037 () Bool)

(assert (= bs!1595037 (and b!6367377 d!1996793)))

(assert (=> bs!1595037 (not (= lambda!350831 lambda!350754))))

(declare-fun bs!1595038 () Bool)

(assert (= bs!1595038 (and b!6367377 b!6367106)))

(assert (=> bs!1595038 (not (= lambda!350831 lambda!350813))))

(declare-fun bs!1595039 () Bool)

(assert (= bs!1595039 (and b!6367377 d!1996791)))

(assert (=> bs!1595039 (not (= lambda!350831 lambda!350749))))

(declare-fun bs!1595040 () Bool)

(assert (= bs!1595040 (and b!6367377 d!1997183)))

(assert (=> bs!1595040 (not (= lambda!350831 lambda!350823))))

(declare-fun bs!1595041 () Bool)

(assert (= bs!1595041 (and b!6367377 b!6367101)))

(assert (=> bs!1595041 (= (and (= (reg!16604 (regTwo!33063 r!7292)) (reg!16604 (regOne!33063 r!7292))) (= (regTwo!33063 r!7292) (regOne!33063 r!7292))) (= lambda!350831 lambda!350812))))

(assert (=> bs!1595035 (not (= lambda!350831 lambda!350710))))

(declare-fun bs!1595042 () Bool)

(assert (= bs!1595042 (and b!6367377 b!6366283)))

(assert (=> bs!1595042 (not (= lambda!350831 lambda!350771))))

(assert (=> bs!1595037 (not (= lambda!350831 lambda!350755))))

(declare-fun bs!1595043 () Bool)

(assert (= bs!1595043 (and b!6367377 b!6366278)))

(assert (=> bs!1595043 (= (and (= (reg!16604 (regTwo!33063 r!7292)) (reg!16604 r!7292)) (= (regTwo!33063 r!7292) r!7292)) (= lambda!350831 lambda!350770))))

(assert (=> bs!1595040 (not (= lambda!350831 lambda!350822))))

(assert (=> b!6367377 true))

(assert (=> b!6367377 true))

(declare-fun bs!1595044 () Bool)

(declare-fun b!6367382 () Bool)

(assert (= bs!1595044 (and b!6367382 b!6365680)))

(declare-fun lambda!350832 () Int)

(assert (=> bs!1595044 (not (= lambda!350832 lambda!350709))))

(declare-fun bs!1595045 () Bool)

(assert (= bs!1595045 (and b!6367382 d!1997165)))

(assert (=> bs!1595045 (not (= lambda!350832 lambda!350817))))

(declare-fun bs!1595046 () Bool)

(assert (= bs!1595046 (and b!6367382 d!1996793)))

(assert (=> bs!1595046 (not (= lambda!350832 lambda!350754))))

(declare-fun bs!1595047 () Bool)

(assert (= bs!1595047 (and b!6367382 b!6367106)))

(assert (=> bs!1595047 (= (and (= (regOne!33062 (regTwo!33063 r!7292)) (regOne!33062 (regOne!33063 r!7292))) (= (regTwo!33062 (regTwo!33063 r!7292)) (regTwo!33062 (regOne!33063 r!7292)))) (= lambda!350832 lambda!350813))))

(declare-fun bs!1595048 () Bool)

(assert (= bs!1595048 (and b!6367382 d!1996791)))

(assert (=> bs!1595048 (not (= lambda!350832 lambda!350749))))

(declare-fun bs!1595049 () Bool)

(assert (= bs!1595049 (and b!6367382 d!1997183)))

(assert (=> bs!1595049 (= (and (= (regOne!33062 (regTwo!33063 r!7292)) (regOne!33062 r!7292)) (= (regTwo!33062 (regTwo!33063 r!7292)) (regTwo!33062 r!7292))) (= lambda!350832 lambda!350823))))

(declare-fun bs!1595050 () Bool)

(assert (= bs!1595050 (and b!6367382 b!6367101)))

(assert (=> bs!1595050 (not (= lambda!350832 lambda!350812))))

(declare-fun bs!1595051 () Bool)

(assert (= bs!1595051 (and b!6367382 b!6367377)))

(assert (=> bs!1595051 (not (= lambda!350832 lambda!350831))))

(assert (=> bs!1595044 (= (and (= (regOne!33062 (regTwo!33063 r!7292)) (regOne!33062 r!7292)) (= (regTwo!33062 (regTwo!33063 r!7292)) (regTwo!33062 r!7292))) (= lambda!350832 lambda!350710))))

(declare-fun bs!1595052 () Bool)

(assert (= bs!1595052 (and b!6367382 b!6366283)))

(assert (=> bs!1595052 (= (and (= (regOne!33062 (regTwo!33063 r!7292)) (regOne!33062 r!7292)) (= (regTwo!33062 (regTwo!33063 r!7292)) (regTwo!33062 r!7292))) (= lambda!350832 lambda!350771))))

(assert (=> bs!1595046 (= (and (= (regOne!33062 (regTwo!33063 r!7292)) (regOne!33062 r!7292)) (= (regTwo!33062 (regTwo!33063 r!7292)) (regTwo!33062 r!7292))) (= lambda!350832 lambda!350755))))

(declare-fun bs!1595053 () Bool)

(assert (= bs!1595053 (and b!6367382 b!6366278)))

(assert (=> bs!1595053 (not (= lambda!350832 lambda!350770))))

(assert (=> bs!1595049 (not (= lambda!350832 lambda!350822))))

(assert (=> b!6367382 true))

(assert (=> b!6367382 true))

(declare-fun e!3866064 () Bool)

(declare-fun call!543593 () Bool)

(assert (=> b!6367377 (= e!3866064 call!543593)))

(declare-fun b!6367378 () Bool)

(declare-fun e!3866062 () Bool)

(declare-fun e!3866061 () Bool)

(assert (=> b!6367378 (= e!3866062 e!3866061)))

(declare-fun res!2619599 () Bool)

(assert (=> b!6367378 (= res!2619599 (matchRSpec!3376 (regOne!33063 (regTwo!33063 r!7292)) s!2326))))

(assert (=> b!6367378 (=> res!2619599 e!3866061)))

(declare-fun c!1159417 () Bool)

(declare-fun bm!543588 () Bool)

(assert (=> bm!543588 (= call!543593 (Exists!3345 (ite c!1159417 lambda!350831 lambda!350832)))))

(declare-fun b!6367379 () Bool)

(declare-fun c!1159418 () Bool)

(assert (=> b!6367379 (= c!1159418 ((_ is Union!16275) (regTwo!33063 r!7292)))))

(declare-fun e!3866067 () Bool)

(assert (=> b!6367379 (= e!3866067 e!3866062)))

(declare-fun b!6367380 () Bool)

(declare-fun e!3866063 () Bool)

(declare-fun e!3866066 () Bool)

(assert (=> b!6367380 (= e!3866063 e!3866066)))

(declare-fun res!2619598 () Bool)

(assert (=> b!6367380 (= res!2619598 (not ((_ is EmptyLang!16275) (regTwo!33063 r!7292))))))

(assert (=> b!6367380 (=> (not res!2619598) (not e!3866066))))

(declare-fun b!6367381 () Bool)

(declare-fun c!1159416 () Bool)

(assert (=> b!6367381 (= c!1159416 ((_ is ElementMatch!16275) (regTwo!33063 r!7292)))))

(assert (=> b!6367381 (= e!3866066 e!3866067)))

(declare-fun e!3866065 () Bool)

(assert (=> b!6367382 (= e!3866065 call!543593)))

(declare-fun b!6367383 () Bool)

(assert (=> b!6367383 (= e!3866067 (= s!2326 (Cons!65001 (c!1158964 (regTwo!33063 r!7292)) Nil!65001)))))

(declare-fun b!6367384 () Bool)

(declare-fun call!543594 () Bool)

(assert (=> b!6367384 (= e!3866063 call!543594)))

(declare-fun d!1997291 () Bool)

(declare-fun c!1159415 () Bool)

(assert (=> d!1997291 (= c!1159415 ((_ is EmptyExpr!16275) (regTwo!33063 r!7292)))))

(assert (=> d!1997291 (= (matchRSpec!3376 (regTwo!33063 r!7292) s!2326) e!3866063)))

(declare-fun bm!543589 () Bool)

(assert (=> bm!543589 (= call!543594 (isEmpty!37113 s!2326))))

(declare-fun b!6367385 () Bool)

(assert (=> b!6367385 (= e!3866062 e!3866065)))

(assert (=> b!6367385 (= c!1159417 ((_ is Star!16275) (regTwo!33063 r!7292)))))

(declare-fun b!6367386 () Bool)

(assert (=> b!6367386 (= e!3866061 (matchRSpec!3376 (regTwo!33063 (regTwo!33063 r!7292)) s!2326))))

(declare-fun b!6367387 () Bool)

(declare-fun res!2619600 () Bool)

(assert (=> b!6367387 (=> res!2619600 e!3866064)))

(assert (=> b!6367387 (= res!2619600 call!543594)))

(assert (=> b!6367387 (= e!3866065 e!3866064)))

(assert (= (and d!1997291 c!1159415) b!6367384))

(assert (= (and d!1997291 (not c!1159415)) b!6367380))

(assert (= (and b!6367380 res!2619598) b!6367381))

(assert (= (and b!6367381 c!1159416) b!6367383))

(assert (= (and b!6367381 (not c!1159416)) b!6367379))

(assert (= (and b!6367379 c!1159418) b!6367378))

(assert (= (and b!6367379 (not c!1159418)) b!6367385))

(assert (= (and b!6367378 (not res!2619599)) b!6367386))

(assert (= (and b!6367385 c!1159417) b!6367387))

(assert (= (and b!6367385 (not c!1159417)) b!6367382))

(assert (= (and b!6367387 (not res!2619600)) b!6367377))

(assert (= (or b!6367377 b!6367382) bm!543588))

(assert (= (or b!6367384 b!6367387) bm!543589))

(declare-fun m!7171154 () Bool)

(assert (=> b!6367378 m!7171154))

(declare-fun m!7171156 () Bool)

(assert (=> bm!543588 m!7171156))

(assert (=> bm!543589 m!7169922))

(declare-fun m!7171158 () Bool)

(assert (=> b!6367386 m!7171158))

(assert (=> b!6366287 d!1997291))

(declare-fun bs!1595054 () Bool)

(declare-fun d!1997293 () Bool)

(assert (= bs!1595054 (and d!1997293 d!1997133)))

(declare-fun lambda!350833 () Int)

(assert (=> bs!1595054 (= lambda!350833 lambda!350811)))

(declare-fun bs!1595055 () Bool)

(assert (= bs!1595055 (and d!1997293 d!1997225)))

(assert (=> bs!1595055 (= lambda!350833 lambda!350827)))

(declare-fun bs!1595056 () Bool)

(assert (= bs!1595056 (and d!1997293 d!1997273)))

(assert (=> bs!1595056 (= lambda!350833 lambda!350830)))

(assert (=> d!1997293 (= (nullableZipper!2040 ((_ map or) lt!2367446 lt!2367449)) (exists!2577 ((_ map or) lt!2367446 lt!2367449) lambda!350833))))

(declare-fun bs!1595057 () Bool)

(assert (= bs!1595057 d!1997293))

(declare-fun m!7171160 () Bool)

(assert (=> bs!1595057 m!7171160))

(assert (=> b!6366368 d!1997293))

(assert (=> d!1996743 d!1997199))

(declare-fun d!1997295 () Bool)

(assert (=> d!1997295 (= (head!13043 (exprs!6159 (h!71450 zl!343))) (h!71448 (exprs!6159 (h!71450 zl!343))))))

(assert (=> b!6366356 d!1997295))

(assert (=> bs!1594774 d!1996825))

(declare-fun bs!1595058 () Bool)

(declare-fun d!1997297 () Bool)

(assert (= bs!1595058 (and d!1997297 d!1996839)))

(declare-fun lambda!350834 () Int)

(assert (=> bs!1595058 (= lambda!350834 lambda!350775)))

(declare-fun bs!1595059 () Bool)

(assert (= bs!1595059 (and d!1997297 d!1996811)))

(assert (=> bs!1595059 (= lambda!350834 lambda!350765)))

(declare-fun bs!1595060 () Bool)

(assert (= bs!1595060 (and d!1997297 d!1997121)))

(assert (=> bs!1595060 (= lambda!350834 lambda!350808)))

(declare-fun bs!1595061 () Bool)

(assert (= bs!1595061 (and d!1997297 d!1996747)))

(assert (=> bs!1595061 (= lambda!350834 lambda!350733)))

(declare-fun bs!1595062 () Bool)

(assert (= bs!1595062 (and d!1997297 d!1997113)))

(assert (=> bs!1595062 (= lambda!350834 lambda!350807)))

(declare-fun bs!1595063 () Bool)

(assert (= bs!1595063 (and d!1997297 d!1996837)))

(assert (=> bs!1595063 (= lambda!350834 lambda!350772)))

(declare-fun bs!1595064 () Bool)

(assert (= bs!1595064 (and d!1997297 d!1997221)))

(assert (=> bs!1595064 (= lambda!350834 lambda!350826)))

(declare-fun bs!1595065 () Bool)

(assert (= bs!1595065 (and d!1997297 d!1996805)))

(assert (=> bs!1595065 (= lambda!350834 lambda!350759)))

(declare-fun bs!1595066 () Bool)

(assert (= bs!1595066 (and d!1997297 d!1996809)))

(assert (=> bs!1595066 (= lambda!350834 lambda!350762)))

(declare-fun bs!1595067 () Bool)

(assert (= bs!1595067 (and d!1997297 d!1997187)))

(assert (=> bs!1595067 (= lambda!350834 lambda!350824)))

(declare-fun b!6367388 () Bool)

(declare-fun e!3866069 () Bool)

(declare-fun e!3866071 () Bool)

(assert (=> b!6367388 (= e!3866069 e!3866071)))

(declare-fun c!1159420 () Bool)

(assert (=> b!6367388 (= c!1159420 (isEmpty!37110 (t!378720 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun b!6367390 () Bool)

(declare-fun e!3866072 () Regex!16275)

(assert (=> b!6367390 (= e!3866072 EmptyExpr!16275)))

(declare-fun b!6367391 () Bool)

(declare-fun lt!2367592 () Regex!16275)

(assert (=> b!6367391 (= e!3866071 (isEmptyExpr!1677 lt!2367592))))

(declare-fun b!6367392 () Bool)

(declare-fun e!3866070 () Bool)

(assert (=> b!6367392 (= e!3866070 (isConcat!1200 lt!2367592))))

(declare-fun b!6367393 () Bool)

(assert (=> b!6367393 (= e!3866070 (= lt!2367592 (head!13043 (t!378720 (exprs!6159 (h!71450 zl!343))))))))

(declare-fun b!6367389 () Bool)

(assert (=> b!6367389 (= e!3866072 (Concat!25120 (h!71448 (t!378720 (exprs!6159 (h!71450 zl!343)))) (generalisedConcat!1872 (t!378720 (t!378720 (exprs!6159 (h!71450 zl!343)))))))))

(assert (=> d!1997297 e!3866069))

(declare-fun res!2619602 () Bool)

(assert (=> d!1997297 (=> (not res!2619602) (not e!3866069))))

(assert (=> d!1997297 (= res!2619602 (validRegex!8011 lt!2367592))))

(declare-fun e!3866068 () Regex!16275)

(assert (=> d!1997297 (= lt!2367592 e!3866068)))

(declare-fun c!1159419 () Bool)

(declare-fun e!3866073 () Bool)

(assert (=> d!1997297 (= c!1159419 e!3866073)))

(declare-fun res!2619601 () Bool)

(assert (=> d!1997297 (=> (not res!2619601) (not e!3866073))))

(assert (=> d!1997297 (= res!2619601 ((_ is Cons!65000) (t!378720 (exprs!6159 (h!71450 zl!343)))))))

(assert (=> d!1997297 (forall!15453 (t!378720 (exprs!6159 (h!71450 zl!343))) lambda!350834)))

(assert (=> d!1997297 (= (generalisedConcat!1872 (t!378720 (exprs!6159 (h!71450 zl!343)))) lt!2367592)))

(declare-fun b!6367394 () Bool)

(assert (=> b!6367394 (= e!3866068 (h!71448 (t!378720 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun b!6367395 () Bool)

(assert (=> b!6367395 (= e!3866071 e!3866070)))

(declare-fun c!1159421 () Bool)

(assert (=> b!6367395 (= c!1159421 (isEmpty!37110 (tail!12128 (t!378720 (exprs!6159 (h!71450 zl!343))))))))

(declare-fun b!6367396 () Bool)

(assert (=> b!6367396 (= e!3866068 e!3866072)))

(declare-fun c!1159422 () Bool)

(assert (=> b!6367396 (= c!1159422 ((_ is Cons!65000) (t!378720 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun b!6367397 () Bool)

(assert (=> b!6367397 (= e!3866073 (isEmpty!37110 (t!378720 (t!378720 (exprs!6159 (h!71450 zl!343))))))))

(assert (= (and d!1997297 res!2619601) b!6367397))

(assert (= (and d!1997297 c!1159419) b!6367394))

(assert (= (and d!1997297 (not c!1159419)) b!6367396))

(assert (= (and b!6367396 c!1159422) b!6367389))

(assert (= (and b!6367396 (not c!1159422)) b!6367390))

(assert (= (and d!1997297 res!2619602) b!6367388))

(assert (= (and b!6367388 c!1159420) b!6367391))

(assert (= (and b!6367388 (not c!1159420)) b!6367395))

(assert (= (and b!6367395 c!1159421) b!6367393))

(assert (= (and b!6367395 (not c!1159421)) b!6367392))

(declare-fun m!7171162 () Bool)

(assert (=> b!6367391 m!7171162))

(declare-fun m!7171164 () Bool)

(assert (=> d!1997297 m!7171164))

(declare-fun m!7171166 () Bool)

(assert (=> d!1997297 m!7171166))

(assert (=> b!6367388 m!7169766))

(declare-fun m!7171168 () Bool)

(assert (=> b!6367392 m!7171168))

(declare-fun m!7171170 () Bool)

(assert (=> b!6367389 m!7171170))

(declare-fun m!7171172 () Bool)

(assert (=> b!6367395 m!7171172))

(assert (=> b!6367395 m!7171172))

(declare-fun m!7171174 () Bool)

(assert (=> b!6367395 m!7171174))

(declare-fun m!7171176 () Bool)

(assert (=> b!6367397 m!7171176))

(declare-fun m!7171178 () Bool)

(assert (=> b!6367393 m!7171178))

(assert (=> b!6366352 d!1997297))

(assert (=> d!1996813 d!1996821))

(declare-fun d!1997299 () Bool)

(assert (=> d!1997299 (= (flatMap!1780 z!1189 lambda!350711) (dynLambda!25785 lambda!350711 (h!71450 zl!343)))))

(assert (=> d!1997299 true))

(declare-fun _$13!3536 () Unit!158431)

(assert (=> d!1997299 (= (choose!47300 z!1189 (h!71450 zl!343) lambda!350711) _$13!3536)))

(declare-fun b_lambda!242011 () Bool)

(assert (=> (not b_lambda!242011) (not d!1997299)))

(declare-fun bs!1595068 () Bool)

(assert (= bs!1595068 d!1997299))

(assert (=> bs!1595068 m!7169752))

(assert (=> bs!1595068 m!7170130))

(assert (=> d!1996813 d!1997299))

(declare-fun bs!1595069 () Bool)

(declare-fun d!1997301 () Bool)

(assert (= bs!1595069 (and d!1997301 d!1997133)))

(declare-fun lambda!350835 () Int)

(assert (=> bs!1595069 (= lambda!350835 lambda!350811)))

(declare-fun bs!1595070 () Bool)

(assert (= bs!1595070 (and d!1997301 d!1997225)))

(assert (=> bs!1595070 (= lambda!350835 lambda!350827)))

(declare-fun bs!1595071 () Bool)

(assert (= bs!1595071 (and d!1997301 d!1997273)))

(assert (=> bs!1595071 (= lambda!350835 lambda!350830)))

(declare-fun bs!1595072 () Bool)

(assert (= bs!1595072 (and d!1997301 d!1997293)))

(assert (=> bs!1595072 (= lambda!350835 lambda!350833)))

(assert (=> d!1997301 (= (nullableZipper!2040 lt!2367449) (exists!2577 lt!2367449 lambda!350835))))

(declare-fun bs!1595073 () Bool)

(assert (= bs!1595073 d!1997301))

(declare-fun m!7171180 () Bool)

(assert (=> bs!1595073 m!7171180))

(assert (=> b!6366361 d!1997301))

(assert (=> b!6366328 d!1997111))

(declare-fun b!6367399 () Bool)

(declare-fun e!3866074 () Bool)

(declare-fun tp!1772843 () Bool)

(declare-fun tp!1772845 () Bool)

(assert (=> b!6367399 (= e!3866074 (and tp!1772843 tp!1772845))))

(declare-fun b!6367401 () Bool)

(declare-fun tp!1772844 () Bool)

(declare-fun tp!1772846 () Bool)

(assert (=> b!6367401 (= e!3866074 (and tp!1772844 tp!1772846))))

(declare-fun b!6367398 () Bool)

(assert (=> b!6367398 (= e!3866074 tp_is_empty!41803)))

(declare-fun b!6367400 () Bool)

(declare-fun tp!1772847 () Bool)

(assert (=> b!6367400 (= e!3866074 tp!1772847)))

(assert (=> b!6366393 (= tp!1772634 e!3866074)))

(assert (= (and b!6366393 ((_ is ElementMatch!16275) (regOne!33062 (regTwo!33062 r!7292)))) b!6367398))

(assert (= (and b!6366393 ((_ is Concat!25120) (regOne!33062 (regTwo!33062 r!7292)))) b!6367399))

(assert (= (and b!6366393 ((_ is Star!16275) (regOne!33062 (regTwo!33062 r!7292)))) b!6367400))

(assert (= (and b!6366393 ((_ is Union!16275) (regOne!33062 (regTwo!33062 r!7292)))) b!6367401))

(declare-fun b!6367403 () Bool)

(declare-fun e!3866075 () Bool)

(declare-fun tp!1772848 () Bool)

(declare-fun tp!1772850 () Bool)

(assert (=> b!6367403 (= e!3866075 (and tp!1772848 tp!1772850))))

(declare-fun b!6367405 () Bool)

(declare-fun tp!1772849 () Bool)

(declare-fun tp!1772851 () Bool)

(assert (=> b!6367405 (= e!3866075 (and tp!1772849 tp!1772851))))

(declare-fun b!6367402 () Bool)

(assert (=> b!6367402 (= e!3866075 tp_is_empty!41803)))

(declare-fun b!6367404 () Bool)

(declare-fun tp!1772852 () Bool)

(assert (=> b!6367404 (= e!3866075 tp!1772852)))

(assert (=> b!6366393 (= tp!1772636 e!3866075)))

(assert (= (and b!6366393 ((_ is ElementMatch!16275) (regTwo!33062 (regTwo!33062 r!7292)))) b!6367402))

(assert (= (and b!6366393 ((_ is Concat!25120) (regTwo!33062 (regTwo!33062 r!7292)))) b!6367403))

(assert (= (and b!6366393 ((_ is Star!16275) (regTwo!33062 (regTwo!33062 r!7292)))) b!6367404))

(assert (= (and b!6366393 ((_ is Union!16275) (regTwo!33062 (regTwo!33062 r!7292)))) b!6367405))

(declare-fun b!6367406 () Bool)

(declare-fun e!3866076 () Bool)

(declare-fun tp!1772853 () Bool)

(declare-fun tp!1772854 () Bool)

(assert (=> b!6367406 (= e!3866076 (and tp!1772853 tp!1772854))))

(assert (=> b!6366400 (= tp!1772644 e!3866076)))

(assert (= (and b!6366400 ((_ is Cons!65000) (exprs!6159 setElem!43386))) b!6367406))

(declare-fun b!6367408 () Bool)

(declare-fun e!3866077 () Bool)

(declare-fun tp!1772855 () Bool)

(declare-fun tp!1772857 () Bool)

(assert (=> b!6367408 (= e!3866077 (and tp!1772855 tp!1772857))))

(declare-fun b!6367410 () Bool)

(declare-fun tp!1772856 () Bool)

(declare-fun tp!1772858 () Bool)

(assert (=> b!6367410 (= e!3866077 (and tp!1772856 tp!1772858))))

(declare-fun b!6367407 () Bool)

(assert (=> b!6367407 (= e!3866077 tp_is_empty!41803)))

(declare-fun b!6367409 () Bool)

(declare-fun tp!1772859 () Bool)

(assert (=> b!6367409 (= e!3866077 tp!1772859)))

(assert (=> b!6366405 (= tp!1772649 e!3866077)))

(assert (= (and b!6366405 ((_ is ElementMatch!16275) (h!71448 (exprs!6159 setElem!43380)))) b!6367407))

(assert (= (and b!6366405 ((_ is Concat!25120) (h!71448 (exprs!6159 setElem!43380)))) b!6367408))

(assert (= (and b!6366405 ((_ is Star!16275) (h!71448 (exprs!6159 setElem!43380)))) b!6367409))

(assert (= (and b!6366405 ((_ is Union!16275) (h!71448 (exprs!6159 setElem!43380)))) b!6367410))

(declare-fun b!6367411 () Bool)

(declare-fun e!3866078 () Bool)

(declare-fun tp!1772860 () Bool)

(declare-fun tp!1772861 () Bool)

(assert (=> b!6367411 (= e!3866078 (and tp!1772860 tp!1772861))))

(assert (=> b!6366405 (= tp!1772650 e!3866078)))

(assert (= (and b!6366405 ((_ is Cons!65000) (t!378720 (exprs!6159 setElem!43380)))) b!6367411))

(declare-fun b!6367413 () Bool)

(declare-fun e!3866079 () Bool)

(declare-fun tp!1772862 () Bool)

(declare-fun tp!1772864 () Bool)

(assert (=> b!6367413 (= e!3866079 (and tp!1772862 tp!1772864))))

(declare-fun b!6367415 () Bool)

(declare-fun tp!1772863 () Bool)

(declare-fun tp!1772865 () Bool)

(assert (=> b!6367415 (= e!3866079 (and tp!1772863 tp!1772865))))

(declare-fun b!6367412 () Bool)

(assert (=> b!6367412 (= e!3866079 tp_is_empty!41803)))

(declare-fun b!6367414 () Bool)

(declare-fun tp!1772866 () Bool)

(assert (=> b!6367414 (= e!3866079 tp!1772866)))

(assert (=> b!6366408 (= tp!1772655 e!3866079)))

(assert (= (and b!6366408 ((_ is ElementMatch!16275) (reg!16604 (reg!16604 r!7292)))) b!6367412))

(assert (= (and b!6366408 ((_ is Concat!25120) (reg!16604 (reg!16604 r!7292)))) b!6367413))

(assert (= (and b!6366408 ((_ is Star!16275) (reg!16604 (reg!16604 r!7292)))) b!6367414))

(assert (= (and b!6366408 ((_ is Union!16275) (reg!16604 (reg!16604 r!7292)))) b!6367415))

(declare-fun b!6367417 () Bool)

(declare-fun e!3866080 () Bool)

(declare-fun tp!1772867 () Bool)

(declare-fun tp!1772869 () Bool)

(assert (=> b!6367417 (= e!3866080 (and tp!1772867 tp!1772869))))

(declare-fun b!6367419 () Bool)

(declare-fun tp!1772868 () Bool)

(declare-fun tp!1772870 () Bool)

(assert (=> b!6367419 (= e!3866080 (and tp!1772868 tp!1772870))))

(declare-fun b!6367416 () Bool)

(assert (=> b!6367416 (= e!3866080 tp_is_empty!41803)))

(declare-fun b!6367418 () Bool)

(declare-fun tp!1772871 () Bool)

(assert (=> b!6367418 (= e!3866080 tp!1772871)))

(assert (=> b!6366387 (= tp!1772625 e!3866080)))

(assert (= (and b!6366387 ((_ is ElementMatch!16275) (regOne!33063 (regTwo!33063 r!7292)))) b!6367416))

(assert (= (and b!6366387 ((_ is Concat!25120) (regOne!33063 (regTwo!33063 r!7292)))) b!6367417))

(assert (= (and b!6366387 ((_ is Star!16275) (regOne!33063 (regTwo!33063 r!7292)))) b!6367418))

(assert (= (and b!6366387 ((_ is Union!16275) (regOne!33063 (regTwo!33063 r!7292)))) b!6367419))

(declare-fun b!6367421 () Bool)

(declare-fun e!3866081 () Bool)

(declare-fun tp!1772872 () Bool)

(declare-fun tp!1772874 () Bool)

(assert (=> b!6367421 (= e!3866081 (and tp!1772872 tp!1772874))))

(declare-fun b!6367423 () Bool)

(declare-fun tp!1772873 () Bool)

(declare-fun tp!1772875 () Bool)

(assert (=> b!6367423 (= e!3866081 (and tp!1772873 tp!1772875))))

(declare-fun b!6367420 () Bool)

(assert (=> b!6367420 (= e!3866081 tp_is_empty!41803)))

(declare-fun b!6367422 () Bool)

(declare-fun tp!1772876 () Bool)

(assert (=> b!6367422 (= e!3866081 tp!1772876)))

(assert (=> b!6366387 (= tp!1772627 e!3866081)))

(assert (= (and b!6366387 ((_ is ElementMatch!16275) (regTwo!33063 (regTwo!33063 r!7292)))) b!6367420))

(assert (= (and b!6366387 ((_ is Concat!25120) (regTwo!33063 (regTwo!33063 r!7292)))) b!6367421))

(assert (= (and b!6366387 ((_ is Star!16275) (regTwo!33063 (regTwo!33063 r!7292)))) b!6367422))

(assert (= (and b!6366387 ((_ is Union!16275) (regTwo!33063 (regTwo!33063 r!7292)))) b!6367423))

(declare-fun b!6367425 () Bool)

(declare-fun e!3866082 () Bool)

(declare-fun tp!1772877 () Bool)

(declare-fun tp!1772879 () Bool)

(assert (=> b!6367425 (= e!3866082 (and tp!1772877 tp!1772879))))

(declare-fun b!6367427 () Bool)

(declare-fun tp!1772878 () Bool)

(declare-fun tp!1772880 () Bool)

(assert (=> b!6367427 (= e!3866082 (and tp!1772878 tp!1772880))))

(declare-fun b!6367424 () Bool)

(assert (=> b!6367424 (= e!3866082 tp_is_empty!41803)))

(declare-fun b!6367426 () Bool)

(declare-fun tp!1772881 () Bool)

(assert (=> b!6367426 (= e!3866082 tp!1772881)))

(assert (=> b!6366407 (= tp!1772651 e!3866082)))

(assert (= (and b!6366407 ((_ is ElementMatch!16275) (regOne!33062 (reg!16604 r!7292)))) b!6367424))

(assert (= (and b!6366407 ((_ is Concat!25120) (regOne!33062 (reg!16604 r!7292)))) b!6367425))

(assert (= (and b!6366407 ((_ is Star!16275) (regOne!33062 (reg!16604 r!7292)))) b!6367426))

(assert (= (and b!6366407 ((_ is Union!16275) (regOne!33062 (reg!16604 r!7292)))) b!6367427))

(declare-fun b!6367429 () Bool)

(declare-fun e!3866083 () Bool)

(declare-fun tp!1772882 () Bool)

(declare-fun tp!1772884 () Bool)

(assert (=> b!6367429 (= e!3866083 (and tp!1772882 tp!1772884))))

(declare-fun b!6367431 () Bool)

(declare-fun tp!1772883 () Bool)

(declare-fun tp!1772885 () Bool)

(assert (=> b!6367431 (= e!3866083 (and tp!1772883 tp!1772885))))

(declare-fun b!6367428 () Bool)

(assert (=> b!6367428 (= e!3866083 tp_is_empty!41803)))

(declare-fun b!6367430 () Bool)

(declare-fun tp!1772886 () Bool)

(assert (=> b!6367430 (= e!3866083 tp!1772886)))

(assert (=> b!6366407 (= tp!1772653 e!3866083)))

(assert (= (and b!6366407 ((_ is ElementMatch!16275) (regTwo!33062 (reg!16604 r!7292)))) b!6367428))

(assert (= (and b!6366407 ((_ is Concat!25120) (regTwo!33062 (reg!16604 r!7292)))) b!6367429))

(assert (= (and b!6366407 ((_ is Star!16275) (regTwo!33062 (reg!16604 r!7292)))) b!6367430))

(assert (= (and b!6366407 ((_ is Union!16275) (regTwo!33062 (reg!16604 r!7292)))) b!6367431))

(declare-fun b!6367433 () Bool)

(declare-fun e!3866084 () Bool)

(declare-fun tp!1772887 () Bool)

(declare-fun tp!1772889 () Bool)

(assert (=> b!6367433 (= e!3866084 (and tp!1772887 tp!1772889))))

(declare-fun b!6367435 () Bool)

(declare-fun tp!1772888 () Bool)

(declare-fun tp!1772890 () Bool)

(assert (=> b!6367435 (= e!3866084 (and tp!1772888 tp!1772890))))

(declare-fun b!6367432 () Bool)

(assert (=> b!6367432 (= e!3866084 tp_is_empty!41803)))

(declare-fun b!6367434 () Bool)

(declare-fun tp!1772891 () Bool)

(assert (=> b!6367434 (= e!3866084 tp!1772891)))

(assert (=> b!6366409 (= tp!1772652 e!3866084)))

(assert (= (and b!6366409 ((_ is ElementMatch!16275) (regOne!33063 (reg!16604 r!7292)))) b!6367432))

(assert (= (and b!6366409 ((_ is Concat!25120) (regOne!33063 (reg!16604 r!7292)))) b!6367433))

(assert (= (and b!6366409 ((_ is Star!16275) (regOne!33063 (reg!16604 r!7292)))) b!6367434))

(assert (= (and b!6366409 ((_ is Union!16275) (regOne!33063 (reg!16604 r!7292)))) b!6367435))

(declare-fun b!6367437 () Bool)

(declare-fun e!3866085 () Bool)

(declare-fun tp!1772892 () Bool)

(declare-fun tp!1772894 () Bool)

(assert (=> b!6367437 (= e!3866085 (and tp!1772892 tp!1772894))))

(declare-fun b!6367439 () Bool)

(declare-fun tp!1772893 () Bool)

(declare-fun tp!1772895 () Bool)

(assert (=> b!6367439 (= e!3866085 (and tp!1772893 tp!1772895))))

(declare-fun b!6367436 () Bool)

(assert (=> b!6367436 (= e!3866085 tp_is_empty!41803)))

(declare-fun b!6367438 () Bool)

(declare-fun tp!1772896 () Bool)

(assert (=> b!6367438 (= e!3866085 tp!1772896)))

(assert (=> b!6366409 (= tp!1772654 e!3866085)))

(assert (= (and b!6366409 ((_ is ElementMatch!16275) (regTwo!33063 (reg!16604 r!7292)))) b!6367436))

(assert (= (and b!6366409 ((_ is Concat!25120) (regTwo!33063 (reg!16604 r!7292)))) b!6367437))

(assert (= (and b!6366409 ((_ is Star!16275) (regTwo!33063 (reg!16604 r!7292)))) b!6367438))

(assert (= (and b!6366409 ((_ is Union!16275) (regTwo!33063 (reg!16604 r!7292)))) b!6367439))

(declare-fun b!6367441 () Bool)

(declare-fun e!3866086 () Bool)

(declare-fun tp!1772897 () Bool)

(declare-fun tp!1772899 () Bool)

(assert (=> b!6367441 (= e!3866086 (and tp!1772897 tp!1772899))))

(declare-fun b!6367443 () Bool)

(declare-fun tp!1772898 () Bool)

(declare-fun tp!1772900 () Bool)

(assert (=> b!6367443 (= e!3866086 (and tp!1772898 tp!1772900))))

(declare-fun b!6367440 () Bool)

(assert (=> b!6367440 (= e!3866086 tp_is_empty!41803)))

(declare-fun b!6367442 () Bool)

(declare-fun tp!1772901 () Bool)

(assert (=> b!6367442 (= e!3866086 tp!1772901)))

(assert (=> b!6366385 (= tp!1772624 e!3866086)))

(assert (= (and b!6366385 ((_ is ElementMatch!16275) (regOne!33062 (regTwo!33063 r!7292)))) b!6367440))

(assert (= (and b!6366385 ((_ is Concat!25120) (regOne!33062 (regTwo!33063 r!7292)))) b!6367441))

(assert (= (and b!6366385 ((_ is Star!16275) (regOne!33062 (regTwo!33063 r!7292)))) b!6367442))

(assert (= (and b!6366385 ((_ is Union!16275) (regOne!33062 (regTwo!33063 r!7292)))) b!6367443))

(declare-fun b!6367445 () Bool)

(declare-fun e!3866087 () Bool)

(declare-fun tp!1772902 () Bool)

(declare-fun tp!1772904 () Bool)

(assert (=> b!6367445 (= e!3866087 (and tp!1772902 tp!1772904))))

(declare-fun b!6367447 () Bool)

(declare-fun tp!1772903 () Bool)

(declare-fun tp!1772905 () Bool)

(assert (=> b!6367447 (= e!3866087 (and tp!1772903 tp!1772905))))

(declare-fun b!6367444 () Bool)

(assert (=> b!6367444 (= e!3866087 tp_is_empty!41803)))

(declare-fun b!6367446 () Bool)

(declare-fun tp!1772906 () Bool)

(assert (=> b!6367446 (= e!3866087 tp!1772906)))

(assert (=> b!6366385 (= tp!1772626 e!3866087)))

(assert (= (and b!6366385 ((_ is ElementMatch!16275) (regTwo!33062 (regTwo!33063 r!7292)))) b!6367444))

(assert (= (and b!6366385 ((_ is Concat!25120) (regTwo!33062 (regTwo!33063 r!7292)))) b!6367445))

(assert (= (and b!6366385 ((_ is Star!16275) (regTwo!33062 (regTwo!33063 r!7292)))) b!6367446))

(assert (= (and b!6366385 ((_ is Union!16275) (regTwo!33062 (regTwo!33063 r!7292)))) b!6367447))

(declare-fun b!6367449 () Bool)

(declare-fun e!3866088 () Bool)

(declare-fun tp!1772907 () Bool)

(declare-fun tp!1772909 () Bool)

(assert (=> b!6367449 (= e!3866088 (and tp!1772907 tp!1772909))))

(declare-fun b!6367451 () Bool)

(declare-fun tp!1772908 () Bool)

(declare-fun tp!1772910 () Bool)

(assert (=> b!6367451 (= e!3866088 (and tp!1772908 tp!1772910))))

(declare-fun b!6367448 () Bool)

(assert (=> b!6367448 (= e!3866088 tp_is_empty!41803)))

(declare-fun b!6367450 () Bool)

(declare-fun tp!1772911 () Bool)

(assert (=> b!6367450 (= e!3866088 tp!1772911)))

(assert (=> b!6366394 (= tp!1772638 e!3866088)))

(assert (= (and b!6366394 ((_ is ElementMatch!16275) (reg!16604 (regTwo!33062 r!7292)))) b!6367448))

(assert (= (and b!6366394 ((_ is Concat!25120) (reg!16604 (regTwo!33062 r!7292)))) b!6367449))

(assert (= (and b!6366394 ((_ is Star!16275) (reg!16604 (regTwo!33062 r!7292)))) b!6367450))

(assert (= (and b!6366394 ((_ is Union!16275) (reg!16604 (regTwo!33062 r!7292)))) b!6367451))

(declare-fun b!6367453 () Bool)

(declare-fun e!3866089 () Bool)

(declare-fun tp!1772912 () Bool)

(declare-fun tp!1772914 () Bool)

(assert (=> b!6367453 (= e!3866089 (and tp!1772912 tp!1772914))))

(declare-fun b!6367455 () Bool)

(declare-fun tp!1772913 () Bool)

(declare-fun tp!1772915 () Bool)

(assert (=> b!6367455 (= e!3866089 (and tp!1772913 tp!1772915))))

(declare-fun b!6367452 () Bool)

(assert (=> b!6367452 (= e!3866089 tp_is_empty!41803)))

(declare-fun b!6367454 () Bool)

(declare-fun tp!1772916 () Bool)

(assert (=> b!6367454 (= e!3866089 tp!1772916)))

(assert (=> b!6366386 (= tp!1772628 e!3866089)))

(assert (= (and b!6366386 ((_ is ElementMatch!16275) (reg!16604 (regTwo!33063 r!7292)))) b!6367452))

(assert (= (and b!6366386 ((_ is Concat!25120) (reg!16604 (regTwo!33063 r!7292)))) b!6367453))

(assert (= (and b!6366386 ((_ is Star!16275) (reg!16604 (regTwo!33063 r!7292)))) b!6367454))

(assert (= (and b!6366386 ((_ is Union!16275) (reg!16604 (regTwo!33063 r!7292)))) b!6367455))

(declare-fun b!6367457 () Bool)

(declare-fun e!3866090 () Bool)

(declare-fun tp!1772917 () Bool)

(declare-fun tp!1772919 () Bool)

(assert (=> b!6367457 (= e!3866090 (and tp!1772917 tp!1772919))))

(declare-fun b!6367459 () Bool)

(declare-fun tp!1772918 () Bool)

(declare-fun tp!1772920 () Bool)

(assert (=> b!6367459 (= e!3866090 (and tp!1772918 tp!1772920))))

(declare-fun b!6367456 () Bool)

(assert (=> b!6367456 (= e!3866090 tp_is_empty!41803)))

(declare-fun b!6367458 () Bool)

(declare-fun tp!1772921 () Bool)

(assert (=> b!6367458 (= e!3866090 tp!1772921)))

(assert (=> b!6366395 (= tp!1772635 e!3866090)))

(assert (= (and b!6366395 ((_ is ElementMatch!16275) (regOne!33063 (regTwo!33062 r!7292)))) b!6367456))

(assert (= (and b!6366395 ((_ is Concat!25120) (regOne!33063 (regTwo!33062 r!7292)))) b!6367457))

(assert (= (and b!6366395 ((_ is Star!16275) (regOne!33063 (regTwo!33062 r!7292)))) b!6367458))

(assert (= (and b!6366395 ((_ is Union!16275) (regOne!33063 (regTwo!33062 r!7292)))) b!6367459))

(declare-fun b!6367461 () Bool)

(declare-fun e!3866091 () Bool)

(declare-fun tp!1772922 () Bool)

(declare-fun tp!1772924 () Bool)

(assert (=> b!6367461 (= e!3866091 (and tp!1772922 tp!1772924))))

(declare-fun b!6367463 () Bool)

(declare-fun tp!1772923 () Bool)

(declare-fun tp!1772925 () Bool)

(assert (=> b!6367463 (= e!3866091 (and tp!1772923 tp!1772925))))

(declare-fun b!6367460 () Bool)

(assert (=> b!6367460 (= e!3866091 tp_is_empty!41803)))

(declare-fun b!6367462 () Bool)

(declare-fun tp!1772926 () Bool)

(assert (=> b!6367462 (= e!3866091 tp!1772926)))

(assert (=> b!6366395 (= tp!1772637 e!3866091)))

(assert (= (and b!6366395 ((_ is ElementMatch!16275) (regTwo!33063 (regTwo!33062 r!7292)))) b!6367460))

(assert (= (and b!6366395 ((_ is Concat!25120) (regTwo!33063 (regTwo!33062 r!7292)))) b!6367461))

(assert (= (and b!6366395 ((_ is Star!16275) (regTwo!33063 (regTwo!33062 r!7292)))) b!6367462))

(assert (= (and b!6366395 ((_ is Union!16275) (regTwo!33063 (regTwo!33062 r!7292)))) b!6367463))

(declare-fun b!6367465 () Bool)

(declare-fun e!3866092 () Bool)

(declare-fun tp!1772927 () Bool)

(declare-fun tp!1772929 () Bool)

(assert (=> b!6367465 (= e!3866092 (and tp!1772927 tp!1772929))))

(declare-fun b!6367467 () Bool)

(declare-fun tp!1772928 () Bool)

(declare-fun tp!1772930 () Bool)

(assert (=> b!6367467 (= e!3866092 (and tp!1772928 tp!1772930))))

(declare-fun b!6367464 () Bool)

(assert (=> b!6367464 (= e!3866092 tp_is_empty!41803)))

(declare-fun b!6367466 () Bool)

(declare-fun tp!1772931 () Bool)

(assert (=> b!6367466 (= e!3866092 tp!1772931)))

(assert (=> b!6366410 (= tp!1772656 e!3866092)))

(assert (= (and b!6366410 ((_ is ElementMatch!16275) (h!71448 (exprs!6159 (h!71450 zl!343))))) b!6367464))

(assert (= (and b!6366410 ((_ is Concat!25120) (h!71448 (exprs!6159 (h!71450 zl!343))))) b!6367465))

(assert (= (and b!6366410 ((_ is Star!16275) (h!71448 (exprs!6159 (h!71450 zl!343))))) b!6367466))

(assert (= (and b!6366410 ((_ is Union!16275) (h!71448 (exprs!6159 (h!71450 zl!343))))) b!6367467))

(declare-fun b!6367468 () Bool)

(declare-fun e!3866093 () Bool)

(declare-fun tp!1772932 () Bool)

(declare-fun tp!1772933 () Bool)

(assert (=> b!6367468 (= e!3866093 (and tp!1772932 tp!1772933))))

(assert (=> b!6366410 (= tp!1772657 e!3866093)))

(assert (= (and b!6366410 ((_ is Cons!65000) (t!378720 (exprs!6159 (h!71450 zl!343))))) b!6367468))

(declare-fun b!6367470 () Bool)

(declare-fun e!3866095 () Bool)

(declare-fun tp!1772934 () Bool)

(assert (=> b!6367470 (= e!3866095 tp!1772934)))

(declare-fun tp!1772935 () Bool)

(declare-fun b!6367469 () Bool)

(declare-fun e!3866094 () Bool)

(assert (=> b!6367469 (= e!3866094 (and (inv!83934 (h!71450 (t!378722 (t!378722 zl!343)))) e!3866095 tp!1772935))))

(assert (=> b!6366417 (= tp!1772663 e!3866094)))

(assert (= b!6367469 b!6367470))

(assert (= (and b!6366417 ((_ is Cons!65002) (t!378722 (t!378722 zl!343)))) b!6367469))

(declare-fun m!7171182 () Bool)

(assert (=> b!6367469 m!7171182))

(declare-fun b!6367471 () Bool)

(declare-fun e!3866096 () Bool)

(declare-fun tp!1772936 () Bool)

(assert (=> b!6367471 (= e!3866096 (and tp_is_empty!41803 tp!1772936))))

(assert (=> b!6366423 (= tp!1772666 e!3866096)))

(assert (= (and b!6366423 ((_ is Cons!65001) (t!378721 (t!378721 s!2326)))) b!6367471))

(declare-fun b!6367473 () Bool)

(declare-fun e!3866097 () Bool)

(declare-fun tp!1772937 () Bool)

(declare-fun tp!1772939 () Bool)

(assert (=> b!6367473 (= e!3866097 (and tp!1772937 tp!1772939))))

(declare-fun b!6367475 () Bool)

(declare-fun tp!1772938 () Bool)

(declare-fun tp!1772940 () Bool)

(assert (=> b!6367475 (= e!3866097 (and tp!1772938 tp!1772940))))

(declare-fun b!6367472 () Bool)

(assert (=> b!6367472 (= e!3866097 tp_is_empty!41803)))

(declare-fun b!6367474 () Bool)

(declare-fun tp!1772941 () Bool)

(assert (=> b!6367474 (= e!3866097 tp!1772941)))

(assert (=> b!6366383 (= tp!1772620 e!3866097)))

(assert (= (and b!6366383 ((_ is ElementMatch!16275) (regOne!33063 (regOne!33063 r!7292)))) b!6367472))

(assert (= (and b!6366383 ((_ is Concat!25120) (regOne!33063 (regOne!33063 r!7292)))) b!6367473))

(assert (= (and b!6366383 ((_ is Star!16275) (regOne!33063 (regOne!33063 r!7292)))) b!6367474))

(assert (= (and b!6366383 ((_ is Union!16275) (regOne!33063 (regOne!33063 r!7292)))) b!6367475))

(declare-fun b!6367477 () Bool)

(declare-fun e!3866098 () Bool)

(declare-fun tp!1772942 () Bool)

(declare-fun tp!1772944 () Bool)

(assert (=> b!6367477 (= e!3866098 (and tp!1772942 tp!1772944))))

(declare-fun b!6367479 () Bool)

(declare-fun tp!1772943 () Bool)

(declare-fun tp!1772945 () Bool)

(assert (=> b!6367479 (= e!3866098 (and tp!1772943 tp!1772945))))

(declare-fun b!6367476 () Bool)

(assert (=> b!6367476 (= e!3866098 tp_is_empty!41803)))

(declare-fun b!6367478 () Bool)

(declare-fun tp!1772946 () Bool)

(assert (=> b!6367478 (= e!3866098 tp!1772946)))

(assert (=> b!6366383 (= tp!1772622 e!3866098)))

(assert (= (and b!6366383 ((_ is ElementMatch!16275) (regTwo!33063 (regOne!33063 r!7292)))) b!6367476))

(assert (= (and b!6366383 ((_ is Concat!25120) (regTwo!33063 (regOne!33063 r!7292)))) b!6367477))

(assert (= (and b!6366383 ((_ is Star!16275) (regTwo!33063 (regOne!33063 r!7292)))) b!6367478))

(assert (= (and b!6366383 ((_ is Union!16275) (regTwo!33063 (regOne!33063 r!7292)))) b!6367479))

(declare-fun b!6367481 () Bool)

(declare-fun e!3866099 () Bool)

(declare-fun tp!1772947 () Bool)

(declare-fun tp!1772949 () Bool)

(assert (=> b!6367481 (= e!3866099 (and tp!1772947 tp!1772949))))

(declare-fun b!6367483 () Bool)

(declare-fun tp!1772948 () Bool)

(declare-fun tp!1772950 () Bool)

(assert (=> b!6367483 (= e!3866099 (and tp!1772948 tp!1772950))))

(declare-fun b!6367480 () Bool)

(assert (=> b!6367480 (= e!3866099 tp_is_empty!41803)))

(declare-fun b!6367482 () Bool)

(declare-fun tp!1772951 () Bool)

(assert (=> b!6367482 (= e!3866099 tp!1772951)))

(assert (=> b!6366382 (= tp!1772623 e!3866099)))

(assert (= (and b!6366382 ((_ is ElementMatch!16275) (reg!16604 (regOne!33063 r!7292)))) b!6367480))

(assert (= (and b!6366382 ((_ is Concat!25120) (reg!16604 (regOne!33063 r!7292)))) b!6367481))

(assert (= (and b!6366382 ((_ is Star!16275) (reg!16604 (regOne!33063 r!7292)))) b!6367482))

(assert (= (and b!6366382 ((_ is Union!16275) (reg!16604 (regOne!33063 r!7292)))) b!6367483))

(declare-fun condSetEmpty!43396 () Bool)

(assert (=> setNonEmpty!43386 (= condSetEmpty!43396 (= setRest!43386 ((as const (Array Context!11318 Bool)) false)))))

(declare-fun setRes!43396 () Bool)

(assert (=> setNonEmpty!43386 (= tp!1772643 setRes!43396)))

(declare-fun setIsEmpty!43396 () Bool)

(assert (=> setIsEmpty!43396 setRes!43396))

(declare-fun setElem!43396 () Context!11318)

(declare-fun tp!1772952 () Bool)

(declare-fun e!3866100 () Bool)

(declare-fun setNonEmpty!43396 () Bool)

(assert (=> setNonEmpty!43396 (= setRes!43396 (and tp!1772952 (inv!83934 setElem!43396) e!3866100))))

(declare-fun setRest!43396 () (InoxSet Context!11318))

(assert (=> setNonEmpty!43396 (= setRest!43386 ((_ map or) (store ((as const (Array Context!11318 Bool)) false) setElem!43396 true) setRest!43396))))

(declare-fun b!6367484 () Bool)

(declare-fun tp!1772953 () Bool)

(assert (=> b!6367484 (= e!3866100 tp!1772953)))

(assert (= (and setNonEmpty!43386 condSetEmpty!43396) setIsEmpty!43396))

(assert (= (and setNonEmpty!43386 (not condSetEmpty!43396)) setNonEmpty!43396))

(assert (= setNonEmpty!43396 b!6367484))

(declare-fun m!7171184 () Bool)

(assert (=> setNonEmpty!43396 m!7171184))

(declare-fun b!6367485 () Bool)

(declare-fun e!3866101 () Bool)

(declare-fun tp!1772954 () Bool)

(declare-fun tp!1772955 () Bool)

(assert (=> b!6367485 (= e!3866101 (and tp!1772954 tp!1772955))))

(assert (=> b!6366418 (= tp!1772662 e!3866101)))

(assert (= (and b!6366418 ((_ is Cons!65000) (exprs!6159 (h!71450 (t!378722 zl!343))))) b!6367485))

(declare-fun b!6367487 () Bool)

(declare-fun e!3866102 () Bool)

(declare-fun tp!1772956 () Bool)

(declare-fun tp!1772958 () Bool)

(assert (=> b!6367487 (= e!3866102 (and tp!1772956 tp!1772958))))

(declare-fun b!6367489 () Bool)

(declare-fun tp!1772957 () Bool)

(declare-fun tp!1772959 () Bool)

(assert (=> b!6367489 (= e!3866102 (and tp!1772957 tp!1772959))))

(declare-fun b!6367486 () Bool)

(assert (=> b!6367486 (= e!3866102 tp_is_empty!41803)))

(declare-fun b!6367488 () Bool)

(declare-fun tp!1772960 () Bool)

(assert (=> b!6367488 (= e!3866102 tp!1772960)))

(assert (=> b!6366389 (= tp!1772629 e!3866102)))

(assert (= (and b!6366389 ((_ is ElementMatch!16275) (regOne!33062 (regOne!33062 r!7292)))) b!6367486))

(assert (= (and b!6366389 ((_ is Concat!25120) (regOne!33062 (regOne!33062 r!7292)))) b!6367487))

(assert (= (and b!6366389 ((_ is Star!16275) (regOne!33062 (regOne!33062 r!7292)))) b!6367488))

(assert (= (and b!6366389 ((_ is Union!16275) (regOne!33062 (regOne!33062 r!7292)))) b!6367489))

(declare-fun b!6367491 () Bool)

(declare-fun e!3866103 () Bool)

(declare-fun tp!1772961 () Bool)

(declare-fun tp!1772963 () Bool)

(assert (=> b!6367491 (= e!3866103 (and tp!1772961 tp!1772963))))

(declare-fun b!6367493 () Bool)

(declare-fun tp!1772962 () Bool)

(declare-fun tp!1772964 () Bool)

(assert (=> b!6367493 (= e!3866103 (and tp!1772962 tp!1772964))))

(declare-fun b!6367490 () Bool)

(assert (=> b!6367490 (= e!3866103 tp_is_empty!41803)))

(declare-fun b!6367492 () Bool)

(declare-fun tp!1772965 () Bool)

(assert (=> b!6367492 (= e!3866103 tp!1772965)))

(assert (=> b!6366389 (= tp!1772631 e!3866103)))

(assert (= (and b!6366389 ((_ is ElementMatch!16275) (regTwo!33062 (regOne!33062 r!7292)))) b!6367490))

(assert (= (and b!6366389 ((_ is Concat!25120) (regTwo!33062 (regOne!33062 r!7292)))) b!6367491))

(assert (= (and b!6366389 ((_ is Star!16275) (regTwo!33062 (regOne!33062 r!7292)))) b!6367492))

(assert (= (and b!6366389 ((_ is Union!16275) (regTwo!33062 (regOne!33062 r!7292)))) b!6367493))

(declare-fun b!6367495 () Bool)

(declare-fun e!3866104 () Bool)

(declare-fun tp!1772966 () Bool)

(declare-fun tp!1772968 () Bool)

(assert (=> b!6367495 (= e!3866104 (and tp!1772966 tp!1772968))))

(declare-fun b!6367497 () Bool)

(declare-fun tp!1772967 () Bool)

(declare-fun tp!1772969 () Bool)

(assert (=> b!6367497 (= e!3866104 (and tp!1772967 tp!1772969))))

(declare-fun b!6367494 () Bool)

(assert (=> b!6367494 (= e!3866104 tp_is_empty!41803)))

(declare-fun b!6367496 () Bool)

(declare-fun tp!1772970 () Bool)

(assert (=> b!6367496 (= e!3866104 tp!1772970)))

(assert (=> b!6366391 (= tp!1772630 e!3866104)))

(assert (= (and b!6366391 ((_ is ElementMatch!16275) (regOne!33063 (regOne!33062 r!7292)))) b!6367494))

(assert (= (and b!6366391 ((_ is Concat!25120) (regOne!33063 (regOne!33062 r!7292)))) b!6367495))

(assert (= (and b!6366391 ((_ is Star!16275) (regOne!33063 (regOne!33062 r!7292)))) b!6367496))

(assert (= (and b!6366391 ((_ is Union!16275) (regOne!33063 (regOne!33062 r!7292)))) b!6367497))

(declare-fun b!6367499 () Bool)

(declare-fun e!3866105 () Bool)

(declare-fun tp!1772971 () Bool)

(declare-fun tp!1772973 () Bool)

(assert (=> b!6367499 (= e!3866105 (and tp!1772971 tp!1772973))))

(declare-fun b!6367501 () Bool)

(declare-fun tp!1772972 () Bool)

(declare-fun tp!1772974 () Bool)

(assert (=> b!6367501 (= e!3866105 (and tp!1772972 tp!1772974))))

(declare-fun b!6367498 () Bool)

(assert (=> b!6367498 (= e!3866105 tp_is_empty!41803)))

(declare-fun b!6367500 () Bool)

(declare-fun tp!1772975 () Bool)

(assert (=> b!6367500 (= e!3866105 tp!1772975)))

(assert (=> b!6366391 (= tp!1772632 e!3866105)))

(assert (= (and b!6366391 ((_ is ElementMatch!16275) (regTwo!33063 (regOne!33062 r!7292)))) b!6367498))

(assert (= (and b!6366391 ((_ is Concat!25120) (regTwo!33063 (regOne!33062 r!7292)))) b!6367499))

(assert (= (and b!6366391 ((_ is Star!16275) (regTwo!33063 (regOne!33062 r!7292)))) b!6367500))

(assert (= (and b!6366391 ((_ is Union!16275) (regTwo!33063 (regOne!33062 r!7292)))) b!6367501))

(declare-fun b!6367503 () Bool)

(declare-fun e!3866106 () Bool)

(declare-fun tp!1772976 () Bool)

(declare-fun tp!1772978 () Bool)

(assert (=> b!6367503 (= e!3866106 (and tp!1772976 tp!1772978))))

(declare-fun b!6367505 () Bool)

(declare-fun tp!1772977 () Bool)

(declare-fun tp!1772979 () Bool)

(assert (=> b!6367505 (= e!3866106 (and tp!1772977 tp!1772979))))

(declare-fun b!6367502 () Bool)

(assert (=> b!6367502 (= e!3866106 tp_is_empty!41803)))

(declare-fun b!6367504 () Bool)

(declare-fun tp!1772980 () Bool)

(assert (=> b!6367504 (= e!3866106 tp!1772980)))

(assert (=> b!6366381 (= tp!1772619 e!3866106)))

(assert (= (and b!6366381 ((_ is ElementMatch!16275) (regOne!33062 (regOne!33063 r!7292)))) b!6367502))

(assert (= (and b!6366381 ((_ is Concat!25120) (regOne!33062 (regOne!33063 r!7292)))) b!6367503))

(assert (= (and b!6366381 ((_ is Star!16275) (regOne!33062 (regOne!33063 r!7292)))) b!6367504))

(assert (= (and b!6366381 ((_ is Union!16275) (regOne!33062 (regOne!33063 r!7292)))) b!6367505))

(declare-fun b!6367507 () Bool)

(declare-fun e!3866107 () Bool)

(declare-fun tp!1772981 () Bool)

(declare-fun tp!1772983 () Bool)

(assert (=> b!6367507 (= e!3866107 (and tp!1772981 tp!1772983))))

(declare-fun b!6367509 () Bool)

(declare-fun tp!1772982 () Bool)

(declare-fun tp!1772984 () Bool)

(assert (=> b!6367509 (= e!3866107 (and tp!1772982 tp!1772984))))

(declare-fun b!6367506 () Bool)

(assert (=> b!6367506 (= e!3866107 tp_is_empty!41803)))

(declare-fun b!6367508 () Bool)

(declare-fun tp!1772985 () Bool)

(assert (=> b!6367508 (= e!3866107 tp!1772985)))

(assert (=> b!6366381 (= tp!1772621 e!3866107)))

(assert (= (and b!6366381 ((_ is ElementMatch!16275) (regTwo!33062 (regOne!33063 r!7292)))) b!6367506))

(assert (= (and b!6366381 ((_ is Concat!25120) (regTwo!33062 (regOne!33063 r!7292)))) b!6367507))

(assert (= (and b!6366381 ((_ is Star!16275) (regTwo!33062 (regOne!33063 r!7292)))) b!6367508))

(assert (= (and b!6366381 ((_ is Union!16275) (regTwo!33062 (regOne!33063 r!7292)))) b!6367509))

(declare-fun b!6367511 () Bool)

(declare-fun e!3866108 () Bool)

(declare-fun tp!1772986 () Bool)

(declare-fun tp!1772988 () Bool)

(assert (=> b!6367511 (= e!3866108 (and tp!1772986 tp!1772988))))

(declare-fun b!6367513 () Bool)

(declare-fun tp!1772987 () Bool)

(declare-fun tp!1772989 () Bool)

(assert (=> b!6367513 (= e!3866108 (and tp!1772987 tp!1772989))))

(declare-fun b!6367510 () Bool)

(assert (=> b!6367510 (= e!3866108 tp_is_empty!41803)))

(declare-fun b!6367512 () Bool)

(declare-fun tp!1772990 () Bool)

(assert (=> b!6367512 (= e!3866108 tp!1772990)))

(assert (=> b!6366390 (= tp!1772633 e!3866108)))

(assert (= (and b!6366390 ((_ is ElementMatch!16275) (reg!16604 (regOne!33062 r!7292)))) b!6367510))

(assert (= (and b!6366390 ((_ is Concat!25120) (reg!16604 (regOne!33062 r!7292)))) b!6367511))

(assert (= (and b!6366390 ((_ is Star!16275) (reg!16604 (regOne!33062 r!7292)))) b!6367512))

(assert (= (and b!6366390 ((_ is Union!16275) (reg!16604 (regOne!33062 r!7292)))) b!6367513))

(declare-fun b_lambda!242013 () Bool)

(assert (= b_lambda!242005 (or d!1996805 b_lambda!242013)))

(declare-fun bs!1595074 () Bool)

(declare-fun d!1997303 () Bool)

(assert (= bs!1595074 (and d!1997303 d!1996805)))

(assert (=> bs!1595074 (= (dynLambda!25787 lambda!350759 (h!71448 (exprs!6159 (h!71450 zl!343)))) (validRegex!8011 (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(declare-fun m!7171186 () Bool)

(assert (=> bs!1595074 m!7171186))

(assert (=> b!6367279 d!1997303))

(declare-fun b_lambda!242015 () Bool)

(assert (= b_lambda!242007 (or d!1996811 b_lambda!242015)))

(declare-fun bs!1595075 () Bool)

(declare-fun d!1997305 () Bool)

(assert (= bs!1595075 (and d!1997305 d!1996811)))

(assert (=> bs!1595075 (= (dynLambda!25787 lambda!350765 (h!71448 lt!2367535)) (validRegex!8011 (h!71448 lt!2367535)))))

(declare-fun m!7171188 () Bool)

(assert (=> bs!1595075 m!7171188))

(assert (=> b!6367334 d!1997305))

(declare-fun b_lambda!242017 () Bool)

(assert (= b_lambda!242009 (or d!1996809 b_lambda!242017)))

(declare-fun bs!1595076 () Bool)

(declare-fun d!1997307 () Bool)

(assert (= bs!1595076 (and d!1997307 d!1996809)))

(assert (=> bs!1595076 (= (dynLambda!25787 lambda!350762 (h!71448 (unfocusZipperList!1696 zl!343))) (validRegex!8011 (h!71448 (unfocusZipperList!1696 zl!343))))))

(declare-fun m!7171190 () Bool)

(assert (=> bs!1595076 m!7171190))

(assert (=> b!6367345 d!1997307))

(declare-fun b_lambda!242019 () Bool)

(assert (= b_lambda!242003 (or d!1996837 b_lambda!242019)))

(declare-fun bs!1595077 () Bool)

(declare-fun d!1997309 () Bool)

(assert (= bs!1595077 (and d!1997309 d!1996837)))

(assert (=> bs!1595077 (= (dynLambda!25787 lambda!350772 (h!71448 (exprs!6159 lt!2367457))) (validRegex!8011 (h!71448 (exprs!6159 lt!2367457))))))

(declare-fun m!7171192 () Bool)

(assert (=> bs!1595077 m!7171192))

(assert (=> b!6367272 d!1997309))

(declare-fun b_lambda!242021 () Bool)

(assert (= b_lambda!241997 (or d!1996747 b_lambda!242021)))

(declare-fun bs!1595078 () Bool)

(declare-fun d!1997311 () Bool)

(assert (= bs!1595078 (and d!1997311 d!1996747)))

(assert (=> bs!1595078 (= (dynLambda!25787 lambda!350733 (h!71448 (exprs!6159 setElem!43380))) (validRegex!8011 (h!71448 (exprs!6159 setElem!43380))))))

(declare-fun m!7171194 () Bool)

(assert (=> bs!1595078 m!7171194))

(assert (=> b!6367089 d!1997311))

(declare-fun b_lambda!242023 () Bool)

(assert (= b_lambda!242011 (or b!6365668 b_lambda!242023)))

(assert (=> d!1997299 d!1996851))

(declare-fun b_lambda!242025 () Bool)

(assert (= b_lambda!242001 (or b!6365668 b_lambda!242025)))

(assert (=> d!1997177 d!1996853))

(declare-fun b_lambda!242027 () Bool)

(assert (= b_lambda!241999 (or d!1996839 b_lambda!242027)))

(declare-fun bs!1595079 () Bool)

(declare-fun d!1997313 () Bool)

(assert (= bs!1595079 (and d!1997313 d!1996839)))

(assert (=> bs!1595079 (= (dynLambda!25787 lambda!350775 (h!71448 (exprs!6159 (h!71450 zl!343)))) (validRegex!8011 (h!71448 (exprs!6159 (h!71450 zl!343)))))))

(assert (=> bs!1595079 m!7171186))

(assert (=> b!6367136 d!1997313))

(check-sat (not b!6367166) (not bm!543587) (not b!6367283) (not bm!543500) (not b!6367149) (not b!6367399) (not bm!543570) (not bm!543539) (not d!1997211) (not b!6367404) (not b!6367021) (not b!6367489) (not d!1997153) (not d!1997171) (not d!1997085) (not b!6367280) (not b!6367209) (not d!1997181) (not b!6367431) (not b!6366976) (not b!6367170) (not b!6367391) (not b!6367487) (not b!6367395) (not b!6367301) (not bm!543527) (not bm!543569) (not bm!543532) (not b!6367092) (not b!6367290) (not b!6367495) (not b!6367408) (not b!6367126) (not d!1997241) (not bm!543505) (not d!1997177) (not b!6367248) (not bm!543535) (not b!6366969) (not b!6367491) (not b!6367224) (not b!6367512) (not b!6367435) (not b!6367462) (not b!6367457) (not b!6367505) (not d!1997205) (not b!6367175) (not b!6367499) (not d!1997117) (not b!6367254) (not d!1997203) (not b!6367378) (not b!6367441) (not b!6367216) (not b!6367483) (not bm!543588) (not b!6367066) (not b!6367478) (not b!6367439) (not bm!543547) (not b!6367027) (not b!6367230) (not bm!543558) (not d!1997231) (not bm!543520) (not b!6367504) (not b!6367210) (not d!1997195) (not bm!543578) (not b!6367037) (not b!6367165) (not b!6367430) (not bs!1595077) (not d!1997133) (not b!6367397) (not b!6367291) (not bm!543584) (not b!6367449) (not b_lambda!242027) (not d!1997165) (not bm!543529) (not b!6367328) (not d!1997099) (not b!6367335) (not bm!543556) (not b_lambda!242025) (not b_lambda!241961) (not bm!543541) (not b!6367492) (not b!6367445) (not bm!543572) (not b!6367451) (not b!6367446) (not b!6367467) (not b!6367173) (not b!6367414) (not d!1997179) (not bm!543549) (not b!6367443) (not b!6367392) (not bm!543552) (not d!1997163) (not b!6367454) (not b!6367151) (not b!6367470) (not b!6367511) (not b!6367276) (not b!6367207) (not b!6367386) (not b!6367421) (not b!6367030) (not d!1997299) (not bm!543538) (not b!6367406) (not b!6367187) (not d!1997121) (not b!6367097) (not b!6367471) (not b!6367042) (not b!6367500) (not b!6367090) (not b!6367497) (not b!6367469) (not b!6367482) (not bs!1595079) (not bm!543543) (not d!1997273) (not b!6367466) (not d!1997255) (not bm!543523) (not b!6367227) (not b!6367205) (not d!1997213) (not b!6367154) (not b!6367093) (not b!6367507) (not b!6367403) (not setNonEmpty!43396) (not b!6367389) (not b!6367026) (not b!6367180) (not b!6367438) (not b!6367388) (not b!6367419) (not bm!543502) (not bm!543493) (not b_lambda!242023) (not b!6367260) (not b!6367417) (not b!6367268) (not b!6367082) (not b!6367425) (not b_lambda!242013) (not b!6367493) (not d!1997297) (not b!6367468) (not b!6367033) (not bm!543525) (not b!6367481) (not b!6367513) (not bm!543521) (not b!6367508) (not b!6367415) (not b!6367055) (not b!6367098) tp_is_empty!41803 (not d!1997139) (not b!6367225) (not b!6367078) (not b!6367223) (not b!6367422) (not bm!543575) (not d!1997293) (not b!6367411) (not b!6367405) (not b!6367474) (not bm!543514) (not b!6367137) (not d!1997301) (not b!6367434) (not d!1997127) (not b!6367484) (not d!1997229) (not b!6367275) (not b!6367152) (not b!6367488) (not b!6367179) (not b!6367475) (not bm!543557) (not b!6367294) (not bm!543544) (not b!6367072) (not b!6367477) (not b_lambda!242021) (not d!1997113) (not b!6367461) (not b!6367110) (not b!6366984) (not b!6366983) (not bs!1595078) (not b!6367075) (not bm!543573) (not b!6367401) (not b!6367193) (not b!6367473) (not d!1997151) (not b!6367071) (not b!6367215) (not b!6367147) (not b_lambda!242017) (not bm!543526) (not d!1997225) (not bm!543494) (not b!6367113) (not d!1997269) (not b!6367346) (not b!6367192) (not b!6367503) (not b!6367155) (not b!6366970) (not b!6367174) (not b!6367253) (not d!1997091) (not d!1997271) (not b!6367364) (not b!6367077) (not b!6367226) (not b!6367413) (not bm!543577) (not b!6366987) (not b!6367418) (not b!6367120) (not b!6367204) (not bm!543583) (not b!6367423) (not d!1997239) (not b!6367501) (not d!1997245) (not b!6367196) (not b!6367453) (not bm!543581) (not b_lambda!241963) (not b!6367433) (not b!6367032) (not b!6367264) (not b!6367353) (not b!6367437) (not b!6367509) (not d!1997187) (not bm!543534) (not d!1997155) (not d!1997259) (not b!6367176) (not bm!543515) (not b!6367496) (not bm!543530) (not b!6367429) (not b!6367338) (not b!6367259) (not bm!543550) (not d!1997183) (not b!6367112) (not d!1997185) (not b!6367102) (not d!1997221) (not d!1997105) (not b!6367485) (not b!6367393) (not d!1997097) (not b!6367257) (not bs!1595074) (not bm!543507) (not bs!1595076) (not bm!543510) (not b!6367479) (not b!6367296) (not b!6367169) (not b_lambda!242015) (not b!6367455) (not b!6367129) (not setNonEmpty!43394) (not b!6367297) (not d!1997191) (not bm!543554) (not b!6367400) (not d!1997197) (not d!1997235) (not b!6367465) (not b!6366980) (not b!6366973) (not bm!543589) (not bm!543586) (not b!6367237) (not d!1997089) (not d!1997219) (not bm!543524) (not b!6367458) (not bm!543509) (not bm!543499) (not b!6367442) (not b!6367463) (not b!6367427) (not b!6367153) (not b!6367269) (not b!6367459) (not b!6367369) (not b!6367409) (not bm!543504) (not setNonEmpty!43395) (not b!6367273) (not bm!543512) (not bm!543553) (not b!6367447) (not d!1997129) (not b!6367426) (not d!1997193) (not b!6367450) (not bs!1595075) (not b!6366975) (not bm!543491) (not b!6367410) (not bm!543518) (not b_lambda!242019))
(check-sat)
