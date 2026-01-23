; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!560826 () Bool)

(assert start!560826)

(declare-fun b!5319790 () Bool)

(assert (=> b!5319790 true))

(assert (=> b!5319790 true))

(declare-fun lambda!271285 () Int)

(declare-fun lambda!271284 () Int)

(assert (=> b!5319790 (not (= lambda!271285 lambda!271284))))

(assert (=> b!5319790 true))

(assert (=> b!5319790 true))

(declare-fun b!5319771 () Bool)

(assert (=> b!5319771 true))

(declare-fun b!5319768 () Bool)

(declare-fun res!2256586 () Bool)

(declare-fun e!3305066 () Bool)

(assert (=> b!5319768 (=> res!2256586 e!3305066)))

(declare-datatypes ((C!30224 0))(
  ( (C!30225 (val!24814 Int)) )
))
(declare-datatypes ((Regex!14977 0))(
  ( (ElementMatch!14977 (c!924467 C!30224)) (Concat!23822 (regOne!30466 Regex!14977) (regTwo!30466 Regex!14977)) (EmptyExpr!14977) (Star!14977 (reg!15306 Regex!14977)) (EmptyLang!14977) (Union!14977 (regOne!30467 Regex!14977) (regTwo!30467 Regex!14977)) )
))
(declare-datatypes ((List!61230 0))(
  ( (Nil!61106) (Cons!61106 (h!67554 Regex!14977) (t!374441 List!61230)) )
))
(declare-datatypes ((Context!8722 0))(
  ( (Context!8723 (exprs!4861 List!61230)) )
))
(declare-fun lt!2171733 () Context!8722)

(declare-datatypes ((List!61231 0))(
  ( (Nil!61107) (Cons!61107 (h!67555 Context!8722) (t!374442 List!61231)) )
))
(declare-fun zl!343 () List!61231)

(declare-fun contextDepthTotal!110 (Context!8722) Int)

(assert (=> b!5319768 (= res!2256586 (>= (contextDepthTotal!110 lt!2171733) (contextDepthTotal!110 (h!67555 zl!343))))))

(declare-fun b!5319769 () Bool)

(declare-fun e!3305071 () Bool)

(declare-fun r!7292 () Regex!14977)

(declare-fun nullable!5146 (Regex!14977) Bool)

(assert (=> b!5319769 (= e!3305071 (nullable!5146 (regOne!30466 (regOne!30466 r!7292))))))

(declare-fun b!5319770 () Bool)

(declare-fun e!3305078 () Bool)

(declare-fun tp!1481473 () Bool)

(assert (=> b!5319770 (= e!3305078 tp!1481473)))

(declare-fun e!3305077 () Bool)

(declare-fun e!3305073 () Bool)

(assert (=> b!5319771 (= e!3305077 e!3305073)))

(declare-fun res!2256583 () Bool)

(assert (=> b!5319771 (=> res!2256583 e!3305073)))

(declare-datatypes ((List!61232 0))(
  ( (Nil!61108) (Cons!61108 (h!67556 C!30224) (t!374443 List!61232)) )
))
(declare-fun s!2326 () List!61232)

(get-info :version)

(assert (=> b!5319771 (= res!2256583 (or (and ((_ is ElementMatch!14977) (regOne!30466 r!7292)) (= (c!924467 (regOne!30466 r!7292)) (h!67556 s!2326))) ((_ is Union!14977) (regOne!30466 r!7292))))))

(declare-datatypes ((Unit!153426 0))(
  ( (Unit!153427) )
))
(declare-fun lt!2171726 () Unit!153426)

(declare-fun e!3305072 () Unit!153426)

(assert (=> b!5319771 (= lt!2171726 e!3305072)))

(declare-fun c!924466 () Bool)

(assert (=> b!5319771 (= c!924466 (nullable!5146 (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8722))

(declare-fun lambda!271286 () Int)

(declare-fun flatMap!704 ((InoxSet Context!8722) Int) (InoxSet Context!8722))

(declare-fun derivationStepZipperUp!349 (Context!8722 C!30224) (InoxSet Context!8722))

(assert (=> b!5319771 (= (flatMap!704 z!1189 lambda!271286) (derivationStepZipperUp!349 (h!67555 zl!343) (h!67556 s!2326)))))

(declare-fun lt!2171727 () Unit!153426)

(declare-fun lemmaFlatMapOnSingletonSet!236 ((InoxSet Context!8722) Context!8722 Int) Unit!153426)

(assert (=> b!5319771 (= lt!2171727 (lemmaFlatMapOnSingletonSet!236 z!1189 (h!67555 zl!343) lambda!271286))))

(declare-fun lt!2171739 () (InoxSet Context!8722))

(declare-fun lt!2171724 () Context!8722)

(assert (=> b!5319771 (= lt!2171739 (derivationStepZipperUp!349 lt!2171724 (h!67556 s!2326)))))

(declare-fun lt!2171730 () (InoxSet Context!8722))

(declare-fun derivationStepZipperDown!425 (Regex!14977 Context!8722 C!30224) (InoxSet Context!8722))

(assert (=> b!5319771 (= lt!2171730 (derivationStepZipperDown!425 (h!67554 (exprs!4861 (h!67555 zl!343))) lt!2171724 (h!67556 s!2326)))))

(assert (=> b!5319771 (= lt!2171724 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun lt!2171721 () (InoxSet Context!8722))

(assert (=> b!5319771 (= lt!2171721 (derivationStepZipperUp!349 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343))))) (h!67556 s!2326)))))

(declare-fun b!5319772 () Bool)

(declare-fun Unit!153428 () Unit!153426)

(assert (=> b!5319772 (= e!3305072 Unit!153428)))

(declare-fun lt!2171741 () Unit!153426)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!214 ((InoxSet Context!8722) (InoxSet Context!8722) List!61232) Unit!153426)

(assert (=> b!5319772 (= lt!2171741 (lemmaZipperConcatMatchesSameAsBothZippers!214 lt!2171730 lt!2171739 (t!374443 s!2326)))))

(declare-fun res!2256603 () Bool)

(declare-fun matchZipper!1221 ((InoxSet Context!8722) List!61232) Bool)

(assert (=> b!5319772 (= res!2256603 (matchZipper!1221 lt!2171730 (t!374443 s!2326)))))

(declare-fun e!3305074 () Bool)

(assert (=> b!5319772 (=> res!2256603 e!3305074)))

(assert (=> b!5319772 (= (matchZipper!1221 ((_ map or) lt!2171730 lt!2171739) (t!374443 s!2326)) e!3305074)))

(declare-fun b!5319773 () Bool)

(declare-fun res!2256594 () Bool)

(assert (=> b!5319773 (=> res!2256594 e!3305073)))

(assert (=> b!5319773 (= res!2256594 (not ((_ is Concat!23822) (regOne!30466 r!7292))))))

(declare-fun b!5319774 () Bool)

(declare-fun e!3305067 () Bool)

(declare-fun e!3305064 () Bool)

(assert (=> b!5319774 (= e!3305067 (not e!3305064))))

(declare-fun res!2256597 () Bool)

(assert (=> b!5319774 (=> res!2256597 e!3305064)))

(assert (=> b!5319774 (= res!2256597 (not ((_ is Cons!61107) zl!343)))))

(declare-fun lt!2171722 () Bool)

(declare-fun matchRSpec!2080 (Regex!14977 List!61232) Bool)

(assert (=> b!5319774 (= lt!2171722 (matchRSpec!2080 r!7292 s!2326))))

(declare-fun matchR!7162 (Regex!14977 List!61232) Bool)

(assert (=> b!5319774 (= lt!2171722 (matchR!7162 r!7292 s!2326))))

(declare-fun lt!2171728 () Unit!153426)

(declare-fun mainMatchTheorem!2080 (Regex!14977 List!61232) Unit!153426)

(assert (=> b!5319774 (= lt!2171728 (mainMatchTheorem!2080 r!7292 s!2326))))

(declare-fun b!5319775 () Bool)

(assert (=> b!5319775 (= e!3305074 (matchZipper!1221 lt!2171739 (t!374443 s!2326)))))

(declare-fun b!5319776 () Bool)

(declare-fun tp_is_empty!39207 () Bool)

(assert (=> b!5319776 (= e!3305078 tp_is_empty!39207)))

(declare-fun e!3305070 () Bool)

(declare-fun setNonEmpty!34243 () Bool)

(declare-fun tp!1481477 () Bool)

(declare-fun setElem!34243 () Context!8722)

(declare-fun setRes!34243 () Bool)

(declare-fun inv!80689 (Context!8722) Bool)

(assert (=> setNonEmpty!34243 (= setRes!34243 (and tp!1481477 (inv!80689 setElem!34243) e!3305070))))

(declare-fun setRest!34243 () (InoxSet Context!8722))

(assert (=> setNonEmpty!34243 (= z!1189 ((_ map or) (store ((as const (Array Context!8722 Bool)) false) setElem!34243 true) setRest!34243))))

(declare-fun res!2256602 () Bool)

(assert (=> start!560826 (=> (not res!2256602) (not e!3305067))))

(declare-fun validRegex!6713 (Regex!14977) Bool)

(assert (=> start!560826 (= res!2256602 (validRegex!6713 r!7292))))

(assert (=> start!560826 e!3305067))

(assert (=> start!560826 e!3305078))

(declare-fun condSetEmpty!34243 () Bool)

(assert (=> start!560826 (= condSetEmpty!34243 (= z!1189 ((as const (Array Context!8722 Bool)) false)))))

(assert (=> start!560826 setRes!34243))

(declare-fun e!3305065 () Bool)

(assert (=> start!560826 e!3305065))

(declare-fun e!3305063 () Bool)

(assert (=> start!560826 e!3305063))

(declare-fun b!5319777 () Bool)

(declare-fun e!3305069 () Bool)

(assert (=> b!5319777 (= e!3305066 e!3305069)))

(declare-fun res!2256587 () Bool)

(assert (=> b!5319777 (=> res!2256587 e!3305069)))

(declare-fun lt!2171723 () List!61231)

(declare-fun zipperDepthTotal!130 (List!61231) Int)

(assert (=> b!5319777 (= res!2256587 (>= (zipperDepthTotal!130 lt!2171723) (zipperDepthTotal!130 zl!343)))))

(assert (=> b!5319777 (= lt!2171723 (Cons!61107 lt!2171733 Nil!61107))))

(declare-fun e!3305076 () Bool)

(declare-fun b!5319778 () Bool)

(declare-fun tp!1481480 () Bool)

(assert (=> b!5319778 (= e!3305065 (and (inv!80689 (h!67555 zl!343)) e!3305076 tp!1481480))))

(declare-fun b!5319779 () Bool)

(declare-fun e!3305075 () Bool)

(assert (=> b!5319779 (= e!3305075 e!3305066)))

(declare-fun res!2256589 () Bool)

(assert (=> b!5319779 (=> res!2256589 e!3305066)))

(declare-fun lt!2171742 () (InoxSet Context!8722))

(declare-fun lt!2171740 () (InoxSet Context!8722))

(assert (=> b!5319779 (= res!2256589 (not (= lt!2171742 lt!2171740)))))

(declare-fun lt!2171735 () (InoxSet Context!8722))

(assert (=> b!5319779 (= (flatMap!704 lt!2171735 lambda!271286) (derivationStepZipperUp!349 lt!2171733 (h!67556 s!2326)))))

(declare-fun lt!2171732 () Unit!153426)

(assert (=> b!5319779 (= lt!2171732 (lemmaFlatMapOnSingletonSet!236 lt!2171735 lt!2171733 lambda!271286))))

(declare-fun lt!2171738 () (InoxSet Context!8722))

(assert (=> b!5319779 (= lt!2171738 (derivationStepZipperUp!349 lt!2171733 (h!67556 s!2326)))))

(declare-fun derivationStepZipper!1218 ((InoxSet Context!8722) C!30224) (InoxSet Context!8722))

(assert (=> b!5319779 (= lt!2171742 (derivationStepZipper!1218 lt!2171735 (h!67556 s!2326)))))

(assert (=> b!5319779 (= lt!2171735 (store ((as const (Array Context!8722 Bool)) false) lt!2171733 true))))

(declare-fun lt!2171737 () List!61230)

(assert (=> b!5319779 (= lt!2171733 (Context!8723 lt!2171737))))

(declare-fun lt!2171729 () List!61230)

(assert (=> b!5319779 (= lt!2171737 (Cons!61106 (regOne!30466 (regOne!30466 r!7292)) lt!2171729))))

(declare-fun b!5319780 () Bool)

(declare-fun res!2256595 () Bool)

(assert (=> b!5319780 (=> (not res!2256595) (not e!3305067))))

(declare-fun unfocusZipper!719 (List!61231) Regex!14977)

(assert (=> b!5319780 (= res!2256595 (= r!7292 (unfocusZipper!719 zl!343)))))

(declare-fun b!5319781 () Bool)

(declare-fun res!2256592 () Bool)

(assert (=> b!5319781 (=> res!2256592 e!3305073)))

(assert (=> b!5319781 (= res!2256592 e!3305071)))

(declare-fun res!2256585 () Bool)

(assert (=> b!5319781 (=> (not res!2256585) (not e!3305071))))

(assert (=> b!5319781 (= res!2256585 ((_ is Concat!23822) (regOne!30466 r!7292)))))

(declare-fun b!5319782 () Bool)

(declare-fun res!2256596 () Bool)

(assert (=> b!5319782 (=> res!2256596 e!3305064)))

(declare-fun generalisedConcat!646 (List!61230) Regex!14977)

(assert (=> b!5319782 (= res!2256596 (not (= r!7292 (generalisedConcat!646 (exprs!4861 (h!67555 zl!343))))))))

(declare-fun b!5319783 () Bool)

(declare-fun tp!1481481 () Bool)

(declare-fun tp!1481474 () Bool)

(assert (=> b!5319783 (= e!3305078 (and tp!1481481 tp!1481474))))

(declare-fun b!5319784 () Bool)

(declare-fun tp!1481476 () Bool)

(assert (=> b!5319784 (= e!3305070 tp!1481476)))

(declare-fun b!5319785 () Bool)

(declare-fun res!2256582 () Bool)

(assert (=> b!5319785 (=> res!2256582 e!3305066)))

(declare-fun lt!2171736 () Bool)

(assert (=> b!5319785 (= res!2256582 (not (= lt!2171736 (matchZipper!1221 lt!2171742 (t!374443 s!2326)))))))

(declare-fun b!5319786 () Bool)

(declare-fun Unit!153429 () Unit!153426)

(assert (=> b!5319786 (= e!3305072 Unit!153429)))

(declare-fun b!5319787 () Bool)

(declare-fun e!3305068 () Bool)

(assert (=> b!5319787 (= e!3305073 e!3305068)))

(declare-fun res!2256593 () Bool)

(assert (=> b!5319787 (=> res!2256593 e!3305068)))

(assert (=> b!5319787 (= res!2256593 (not (= lt!2171730 lt!2171740)))))

(assert (=> b!5319787 (= lt!2171740 (derivationStepZipperDown!425 (regOne!30466 (regOne!30466 r!7292)) (Context!8723 lt!2171729) (h!67556 s!2326)))))

(assert (=> b!5319787 (= lt!2171729 (Cons!61106 (regTwo!30466 (regOne!30466 r!7292)) (t!374441 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun b!5319788 () Bool)

(declare-fun res!2256598 () Bool)

(assert (=> b!5319788 (=> res!2256598 e!3305064)))

(assert (=> b!5319788 (= res!2256598 (not ((_ is Cons!61106) (exprs!4861 (h!67555 zl!343)))))))

(declare-fun b!5319789 () Bool)

(declare-fun res!2256590 () Bool)

(assert (=> b!5319789 (=> res!2256590 e!3305064)))

(declare-fun generalisedUnion!906 (List!61230) Regex!14977)

(declare-fun unfocusZipperList!419 (List!61231) List!61230)

(assert (=> b!5319789 (= res!2256590 (not (= r!7292 (generalisedUnion!906 (unfocusZipperList!419 zl!343)))))))

(assert (=> b!5319790 (= e!3305064 e!3305077)))

(declare-fun res!2256588 () Bool)

(assert (=> b!5319790 (=> res!2256588 e!3305077)))

(declare-fun lt!2171731 () Bool)

(assert (=> b!5319790 (= res!2256588 (or (not (= lt!2171722 lt!2171731)) ((_ is Nil!61108) s!2326)))))

(declare-fun Exists!2158 (Int) Bool)

(assert (=> b!5319790 (= (Exists!2158 lambda!271284) (Exists!2158 lambda!271285))))

(declare-fun lt!2171734 () Unit!153426)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!812 (Regex!14977 Regex!14977 List!61232) Unit!153426)

(assert (=> b!5319790 (= lt!2171734 (lemmaExistCutMatchRandMatchRSpecEquivalent!812 (regOne!30466 r!7292) (regTwo!30466 r!7292) s!2326))))

(assert (=> b!5319790 (= lt!2171731 (Exists!2158 lambda!271284))))

(declare-datatypes ((tuple2!64352 0))(
  ( (tuple2!64353 (_1!35479 List!61232) (_2!35479 List!61232)) )
))
(declare-datatypes ((Option!15088 0))(
  ( (None!15087) (Some!15087 (v!51116 tuple2!64352)) )
))
(declare-fun isDefined!11791 (Option!15088) Bool)

(declare-fun findConcatSeparation!1502 (Regex!14977 Regex!14977 List!61232 List!61232 List!61232) Option!15088)

(assert (=> b!5319790 (= lt!2171731 (isDefined!11791 (findConcatSeparation!1502 (regOne!30466 r!7292) (regTwo!30466 r!7292) Nil!61108 s!2326 s!2326)))))

(declare-fun lt!2171725 () Unit!153426)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1266 (Regex!14977 Regex!14977 List!61232) Unit!153426)

(assert (=> b!5319790 (= lt!2171725 (lemmaFindConcatSeparationEquivalentToExists!1266 (regOne!30466 r!7292) (regTwo!30466 r!7292) s!2326))))

(declare-fun b!5319791 () Bool)

(declare-fun lambda!271287 () Int)

(declare-fun forall!14395 (List!61230 Int) Bool)

(assert (=> b!5319791 (= e!3305069 (forall!14395 lt!2171737 lambda!271287))))

(declare-fun setIsEmpty!34243 () Bool)

(assert (=> setIsEmpty!34243 setRes!34243))

(declare-fun b!5319792 () Bool)

(declare-fun res!2256599 () Bool)

(assert (=> b!5319792 (=> res!2256599 e!3305077)))

(declare-fun isEmpty!33075 (List!61230) Bool)

(assert (=> b!5319792 (= res!2256599 (isEmpty!33075 (t!374441 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun b!5319793 () Bool)

(declare-fun tp!1481475 () Bool)

(assert (=> b!5319793 (= e!3305063 (and tp_is_empty!39207 tp!1481475))))

(declare-fun b!5319794 () Bool)

(declare-fun res!2256605 () Bool)

(assert (=> b!5319794 (=> res!2256605 e!3305069)))

(declare-fun zipperDepth!86 (List!61231) Int)

(assert (=> b!5319794 (= res!2256605 (> (zipperDepth!86 lt!2171723) (zipperDepth!86 zl!343)))))

(declare-fun b!5319795 () Bool)

(declare-fun tp!1481479 () Bool)

(declare-fun tp!1481472 () Bool)

(assert (=> b!5319795 (= e!3305078 (and tp!1481479 tp!1481472))))

(declare-fun b!5319796 () Bool)

(declare-fun res!2256584 () Bool)

(assert (=> b!5319796 (=> (not res!2256584) (not e!3305067))))

(declare-fun toList!8761 ((InoxSet Context!8722)) List!61231)

(assert (=> b!5319796 (= res!2256584 (= (toList!8761 z!1189) zl!343))))

(declare-fun b!5319797 () Bool)

(declare-fun res!2256601 () Bool)

(assert (=> b!5319797 (=> res!2256601 e!3305064)))

(declare-fun isEmpty!33076 (List!61231) Bool)

(assert (=> b!5319797 (= res!2256601 (not (isEmpty!33076 (t!374442 zl!343))))))

(declare-fun b!5319798 () Bool)

(assert (=> b!5319798 (= e!3305068 e!3305075)))

(declare-fun res!2256604 () Bool)

(assert (=> b!5319798 (=> res!2256604 e!3305075)))

(assert (=> b!5319798 (= res!2256604 (not (= lt!2171736 (matchZipper!1221 lt!2171740 (t!374443 s!2326)))))))

(assert (=> b!5319798 (= lt!2171736 (matchZipper!1221 lt!2171730 (t!374443 s!2326)))))

(declare-fun b!5319799 () Bool)

(declare-fun tp!1481478 () Bool)

(assert (=> b!5319799 (= e!3305076 tp!1481478)))

(declare-fun b!5319800 () Bool)

(declare-fun res!2256600 () Bool)

(assert (=> b!5319800 (=> res!2256600 e!3305066)))

(assert (=> b!5319800 (= res!2256600 (not (= (exprs!4861 (h!67555 zl!343)) (Cons!61106 (Concat!23822 (regOne!30466 (regOne!30466 r!7292)) (regTwo!30466 (regOne!30466 r!7292))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))))

(declare-fun b!5319801 () Bool)

(declare-fun res!2256591 () Bool)

(assert (=> b!5319801 (=> res!2256591 e!3305064)))

(assert (=> b!5319801 (= res!2256591 (or ((_ is EmptyExpr!14977) r!7292) ((_ is EmptyLang!14977) r!7292) ((_ is ElementMatch!14977) r!7292) ((_ is Union!14977) r!7292) (not ((_ is Concat!23822) r!7292))))))

(assert (= (and start!560826 res!2256602) b!5319796))

(assert (= (and b!5319796 res!2256584) b!5319780))

(assert (= (and b!5319780 res!2256595) b!5319774))

(assert (= (and b!5319774 (not res!2256597)) b!5319797))

(assert (= (and b!5319797 (not res!2256601)) b!5319782))

(assert (= (and b!5319782 (not res!2256596)) b!5319788))

(assert (= (and b!5319788 (not res!2256598)) b!5319789))

(assert (= (and b!5319789 (not res!2256590)) b!5319801))

(assert (= (and b!5319801 (not res!2256591)) b!5319790))

(assert (= (and b!5319790 (not res!2256588)) b!5319792))

(assert (= (and b!5319792 (not res!2256599)) b!5319771))

(assert (= (and b!5319771 c!924466) b!5319772))

(assert (= (and b!5319771 (not c!924466)) b!5319786))

(assert (= (and b!5319772 (not res!2256603)) b!5319775))

(assert (= (and b!5319771 (not res!2256583)) b!5319781))

(assert (= (and b!5319781 res!2256585) b!5319769))

(assert (= (and b!5319781 (not res!2256592)) b!5319773))

(assert (= (and b!5319773 (not res!2256594)) b!5319787))

(assert (= (and b!5319787 (not res!2256593)) b!5319798))

(assert (= (and b!5319798 (not res!2256604)) b!5319779))

(assert (= (and b!5319779 (not res!2256589)) b!5319785))

(assert (= (and b!5319785 (not res!2256582)) b!5319800))

(assert (= (and b!5319800 (not res!2256600)) b!5319768))

(assert (= (and b!5319768 (not res!2256586)) b!5319777))

(assert (= (and b!5319777 (not res!2256587)) b!5319794))

(assert (= (and b!5319794 (not res!2256605)) b!5319791))

(assert (= (and start!560826 ((_ is ElementMatch!14977) r!7292)) b!5319776))

(assert (= (and start!560826 ((_ is Concat!23822) r!7292)) b!5319795))

(assert (= (and start!560826 ((_ is Star!14977) r!7292)) b!5319770))

(assert (= (and start!560826 ((_ is Union!14977) r!7292)) b!5319783))

(assert (= (and start!560826 condSetEmpty!34243) setIsEmpty!34243))

(assert (= (and start!560826 (not condSetEmpty!34243)) setNonEmpty!34243))

(assert (= setNonEmpty!34243 b!5319784))

(assert (= b!5319778 b!5319799))

(assert (= (and start!560826 ((_ is Cons!61107) zl!343)) b!5319778))

(assert (= (and start!560826 ((_ is Cons!61108) s!2326)) b!5319793))

(declare-fun m!6354988 () Bool)

(assert (=> b!5319790 m!6354988))

(declare-fun m!6354990 () Bool)

(assert (=> b!5319790 m!6354990))

(declare-fun m!6354992 () Bool)

(assert (=> b!5319790 m!6354992))

(declare-fun m!6354994 () Bool)

(assert (=> b!5319790 m!6354994))

(assert (=> b!5319790 m!6354992))

(declare-fun m!6354996 () Bool)

(assert (=> b!5319790 m!6354996))

(assert (=> b!5319790 m!6354988))

(declare-fun m!6354998 () Bool)

(assert (=> b!5319790 m!6354998))

(declare-fun m!6355000 () Bool)

(assert (=> b!5319791 m!6355000))

(declare-fun m!6355002 () Bool)

(assert (=> setNonEmpty!34243 m!6355002))

(declare-fun m!6355004 () Bool)

(assert (=> b!5319777 m!6355004))

(declare-fun m!6355006 () Bool)

(assert (=> b!5319777 m!6355006))

(declare-fun m!6355008 () Bool)

(assert (=> b!5319782 m!6355008))

(declare-fun m!6355010 () Bool)

(assert (=> b!5319792 m!6355010))

(declare-fun m!6355012 () Bool)

(assert (=> b!5319774 m!6355012))

(declare-fun m!6355014 () Bool)

(assert (=> b!5319774 m!6355014))

(declare-fun m!6355016 () Bool)

(assert (=> b!5319774 m!6355016))

(declare-fun m!6355018 () Bool)

(assert (=> b!5319772 m!6355018))

(declare-fun m!6355020 () Bool)

(assert (=> b!5319772 m!6355020))

(declare-fun m!6355022 () Bool)

(assert (=> b!5319772 m!6355022))

(declare-fun m!6355024 () Bool)

(assert (=> b!5319797 m!6355024))

(declare-fun m!6355026 () Bool)

(assert (=> b!5319769 m!6355026))

(declare-fun m!6355028 () Bool)

(assert (=> b!5319779 m!6355028))

(declare-fun m!6355030 () Bool)

(assert (=> b!5319779 m!6355030))

(declare-fun m!6355032 () Bool)

(assert (=> b!5319779 m!6355032))

(declare-fun m!6355034 () Bool)

(assert (=> b!5319779 m!6355034))

(declare-fun m!6355036 () Bool)

(assert (=> b!5319779 m!6355036))

(declare-fun m!6355038 () Bool)

(assert (=> b!5319771 m!6355038))

(declare-fun m!6355040 () Bool)

(assert (=> b!5319771 m!6355040))

(declare-fun m!6355042 () Bool)

(assert (=> b!5319771 m!6355042))

(declare-fun m!6355044 () Bool)

(assert (=> b!5319771 m!6355044))

(declare-fun m!6355046 () Bool)

(assert (=> b!5319771 m!6355046))

(declare-fun m!6355048 () Bool)

(assert (=> b!5319771 m!6355048))

(declare-fun m!6355050 () Bool)

(assert (=> b!5319771 m!6355050))

(declare-fun m!6355052 () Bool)

(assert (=> b!5319778 m!6355052))

(declare-fun m!6355054 () Bool)

(assert (=> b!5319785 m!6355054))

(declare-fun m!6355056 () Bool)

(assert (=> b!5319794 m!6355056))

(declare-fun m!6355058 () Bool)

(assert (=> b!5319794 m!6355058))

(declare-fun m!6355060 () Bool)

(assert (=> b!5319775 m!6355060))

(declare-fun m!6355062 () Bool)

(assert (=> b!5319787 m!6355062))

(declare-fun m!6355064 () Bool)

(assert (=> b!5319798 m!6355064))

(assert (=> b!5319798 m!6355020))

(declare-fun m!6355066 () Bool)

(assert (=> b!5319780 m!6355066))

(declare-fun m!6355068 () Bool)

(assert (=> start!560826 m!6355068))

(declare-fun m!6355070 () Bool)

(assert (=> b!5319796 m!6355070))

(declare-fun m!6355072 () Bool)

(assert (=> b!5319768 m!6355072))

(declare-fun m!6355074 () Bool)

(assert (=> b!5319768 m!6355074))

(declare-fun m!6355076 () Bool)

(assert (=> b!5319789 m!6355076))

(assert (=> b!5319789 m!6355076))

(declare-fun m!6355078 () Bool)

(assert (=> b!5319789 m!6355078))

(check-sat tp_is_empty!39207 (not b!5319796) (not b!5319784) (not b!5319797) (not b!5319789) (not setNonEmpty!34243) (not b!5319778) (not b!5319792) (not b!5319770) (not b!5319782) (not b!5319771) (not b!5319790) (not b!5319769) (not b!5319785) (not b!5319780) (not b!5319793) (not b!5319775) (not b!5319794) (not b!5319798) (not b!5319774) (not b!5319791) (not b!5319799) (not b!5319779) (not b!5319795) (not start!560826) (not b!5319772) (not b!5319787) (not b!5319783) (not b!5319768) (not b!5319777))
(check-sat)
(get-model)

(declare-fun d!1708900 () Bool)

(declare-fun c!924569 () Bool)

(declare-fun isEmpty!33079 (List!61232) Bool)

(assert (=> d!1708900 (= c!924569 (isEmpty!33079 (t!374443 s!2326)))))

(declare-fun e!3305239 () Bool)

(assert (=> d!1708900 (= (matchZipper!1221 lt!2171739 (t!374443 s!2326)) e!3305239)))

(declare-fun b!5320076 () Bool)

(declare-fun nullableZipper!1344 ((InoxSet Context!8722)) Bool)

(assert (=> b!5320076 (= e!3305239 (nullableZipper!1344 lt!2171739))))

(declare-fun b!5320077 () Bool)

(declare-fun head!11406 (List!61232) C!30224)

(declare-fun tail!10503 (List!61232) List!61232)

(assert (=> b!5320077 (= e!3305239 (matchZipper!1221 (derivationStepZipper!1218 lt!2171739 (head!11406 (t!374443 s!2326))) (tail!10503 (t!374443 s!2326))))))

(assert (= (and d!1708900 c!924569) b!5320076))

(assert (= (and d!1708900 (not c!924569)) b!5320077))

(declare-fun m!6355322 () Bool)

(assert (=> d!1708900 m!6355322))

(declare-fun m!6355324 () Bool)

(assert (=> b!5320076 m!6355324))

(declare-fun m!6355326 () Bool)

(assert (=> b!5320077 m!6355326))

(assert (=> b!5320077 m!6355326))

(declare-fun m!6355328 () Bool)

(assert (=> b!5320077 m!6355328))

(declare-fun m!6355330 () Bool)

(assert (=> b!5320077 m!6355330))

(assert (=> b!5320077 m!6355328))

(assert (=> b!5320077 m!6355330))

(declare-fun m!6355332 () Bool)

(assert (=> b!5320077 m!6355332))

(assert (=> b!5319775 d!1708900))

(declare-fun d!1708920 () Bool)

(declare-fun c!924570 () Bool)

(assert (=> d!1708920 (= c!924570 (isEmpty!33079 (t!374443 s!2326)))))

(declare-fun e!3305240 () Bool)

(assert (=> d!1708920 (= (matchZipper!1221 lt!2171742 (t!374443 s!2326)) e!3305240)))

(declare-fun b!5320078 () Bool)

(assert (=> b!5320078 (= e!3305240 (nullableZipper!1344 lt!2171742))))

(declare-fun b!5320079 () Bool)

(assert (=> b!5320079 (= e!3305240 (matchZipper!1221 (derivationStepZipper!1218 lt!2171742 (head!11406 (t!374443 s!2326))) (tail!10503 (t!374443 s!2326))))))

(assert (= (and d!1708920 c!924570) b!5320078))

(assert (= (and d!1708920 (not c!924570)) b!5320079))

(assert (=> d!1708920 m!6355322))

(declare-fun m!6355334 () Bool)

(assert (=> b!5320078 m!6355334))

(assert (=> b!5320079 m!6355326))

(assert (=> b!5320079 m!6355326))

(declare-fun m!6355336 () Bool)

(assert (=> b!5320079 m!6355336))

(assert (=> b!5320079 m!6355330))

(assert (=> b!5320079 m!6355336))

(assert (=> b!5320079 m!6355330))

(declare-fun m!6355338 () Bool)

(assert (=> b!5320079 m!6355338))

(assert (=> b!5319785 d!1708920))

(declare-fun b!5320157 () Bool)

(assert (=> b!5320157 true))

(declare-fun bs!1232918 () Bool)

(declare-fun b!5320159 () Bool)

(assert (= bs!1232918 (and b!5320159 b!5320157)))

(declare-fun lt!2171817 () Int)

(declare-fun lambda!271338 () Int)

(declare-fun lt!2171816 () Int)

(declare-fun lambda!271339 () Int)

(assert (=> bs!1232918 (= (= lt!2171817 lt!2171816) (= lambda!271339 lambda!271338))))

(assert (=> b!5320159 true))

(declare-fun d!1708922 () Bool)

(declare-fun e!3305284 () Bool)

(assert (=> d!1708922 e!3305284))

(declare-fun res!2256723 () Bool)

(assert (=> d!1708922 (=> (not res!2256723) (not e!3305284))))

(assert (=> d!1708922 (= res!2256723 (>= lt!2171817 0))))

(declare-fun e!3305285 () Int)

(assert (=> d!1708922 (= lt!2171817 e!3305285)))

(declare-fun c!924597 () Bool)

(assert (=> d!1708922 (= c!924597 ((_ is Cons!61107) lt!2171723))))

(assert (=> d!1708922 (= (zipperDepth!86 lt!2171723) lt!2171817)))

(assert (=> b!5320157 (= e!3305285 lt!2171816)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!50 (Context!8722) Int)

(assert (=> b!5320157 (= lt!2171816 (maxBigInt!0 (contextDepth!50 (h!67555 lt!2171723)) (zipperDepth!86 (t!374442 lt!2171723))))))

(declare-fun lt!2171814 () Unit!153426)

(declare-fun lambda!271337 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!44 (List!61231 Int Int Int) Unit!153426)

(assert (=> b!5320157 (= lt!2171814 (lemmaForallContextDepthBiggerThanTransitive!44 (t!374442 lt!2171723) lt!2171816 (zipperDepth!86 (t!374442 lt!2171723)) lambda!271337))))

(declare-fun forall!14397 (List!61231 Int) Bool)

(assert (=> b!5320157 (forall!14397 (t!374442 lt!2171723) lambda!271338)))

(declare-fun lt!2171815 () Unit!153426)

(assert (=> b!5320157 (= lt!2171815 lt!2171814)))

(declare-fun b!5320158 () Bool)

(assert (=> b!5320158 (= e!3305285 0)))

(assert (=> b!5320159 (= e!3305284 (forall!14397 lt!2171723 lambda!271339))))

(assert (= (and d!1708922 c!924597) b!5320157))

(assert (= (and d!1708922 (not c!924597)) b!5320158))

(assert (= (and d!1708922 res!2256723) b!5320159))

(declare-fun m!6355348 () Bool)

(assert (=> b!5320157 m!6355348))

(declare-fun m!6355350 () Bool)

(assert (=> b!5320157 m!6355350))

(assert (=> b!5320157 m!6355348))

(declare-fun m!6355352 () Bool)

(assert (=> b!5320157 m!6355352))

(assert (=> b!5320157 m!6355348))

(declare-fun m!6355354 () Bool)

(assert (=> b!5320157 m!6355354))

(declare-fun m!6355356 () Bool)

(assert (=> b!5320157 m!6355356))

(assert (=> b!5320157 m!6355352))

(declare-fun m!6355358 () Bool)

(assert (=> b!5320159 m!6355358))

(assert (=> b!5319794 d!1708922))

(declare-fun bs!1232919 () Bool)

(declare-fun b!5320176 () Bool)

(assert (= bs!1232919 (and b!5320176 b!5320157)))

(declare-fun lambda!271340 () Int)

(assert (=> bs!1232919 (= lambda!271340 lambda!271337)))

(declare-fun lambda!271341 () Int)

(declare-fun lt!2171821 () Int)

(assert (=> bs!1232919 (= (= lt!2171821 lt!2171816) (= lambda!271341 lambda!271338))))

(declare-fun bs!1232920 () Bool)

(assert (= bs!1232920 (and b!5320176 b!5320159)))

(assert (=> bs!1232920 (= (= lt!2171821 lt!2171817) (= lambda!271341 lambda!271339))))

(assert (=> b!5320176 true))

(declare-fun bs!1232921 () Bool)

(declare-fun b!5320178 () Bool)

(assert (= bs!1232921 (and b!5320178 b!5320157)))

(declare-fun lt!2171822 () Int)

(declare-fun lambda!271342 () Int)

(assert (=> bs!1232921 (= (= lt!2171822 lt!2171816) (= lambda!271342 lambda!271338))))

(declare-fun bs!1232922 () Bool)

(assert (= bs!1232922 (and b!5320178 b!5320159)))

(assert (=> bs!1232922 (= (= lt!2171822 lt!2171817) (= lambda!271342 lambda!271339))))

(declare-fun bs!1232923 () Bool)

(assert (= bs!1232923 (and b!5320178 b!5320176)))

(assert (=> bs!1232923 (= (= lt!2171822 lt!2171821) (= lambda!271342 lambda!271341))))

(assert (=> b!5320178 true))

(declare-fun d!1708926 () Bool)

(declare-fun e!3305293 () Bool)

(assert (=> d!1708926 e!3305293))

(declare-fun res!2256732 () Bool)

(assert (=> d!1708926 (=> (not res!2256732) (not e!3305293))))

(assert (=> d!1708926 (= res!2256732 (>= lt!2171822 0))))

(declare-fun e!3305294 () Int)

(assert (=> d!1708926 (= lt!2171822 e!3305294)))

(declare-fun c!924601 () Bool)

(assert (=> d!1708926 (= c!924601 ((_ is Cons!61107) zl!343))))

(assert (=> d!1708926 (= (zipperDepth!86 zl!343) lt!2171822)))

(assert (=> b!5320176 (= e!3305294 lt!2171821)))

(assert (=> b!5320176 (= lt!2171821 (maxBigInt!0 (contextDepth!50 (h!67555 zl!343)) (zipperDepth!86 (t!374442 zl!343))))))

(declare-fun lt!2171819 () Unit!153426)

(assert (=> b!5320176 (= lt!2171819 (lemmaForallContextDepthBiggerThanTransitive!44 (t!374442 zl!343) lt!2171821 (zipperDepth!86 (t!374442 zl!343)) lambda!271340))))

(assert (=> b!5320176 (forall!14397 (t!374442 zl!343) lambda!271341)))

(declare-fun lt!2171820 () Unit!153426)

(assert (=> b!5320176 (= lt!2171820 lt!2171819)))

(declare-fun b!5320177 () Bool)

(assert (=> b!5320177 (= e!3305294 0)))

(assert (=> b!5320178 (= e!3305293 (forall!14397 zl!343 lambda!271342))))

(assert (= (and d!1708926 c!924601) b!5320176))

(assert (= (and d!1708926 (not c!924601)) b!5320177))

(assert (= (and d!1708926 res!2256732) b!5320178))

(declare-fun m!6355372 () Bool)

(assert (=> b!5320176 m!6355372))

(declare-fun m!6355374 () Bool)

(assert (=> b!5320176 m!6355374))

(assert (=> b!5320176 m!6355372))

(declare-fun m!6355376 () Bool)

(assert (=> b!5320176 m!6355376))

(assert (=> b!5320176 m!6355372))

(declare-fun m!6355378 () Bool)

(assert (=> b!5320176 m!6355378))

(declare-fun m!6355380 () Bool)

(assert (=> b!5320176 m!6355380))

(assert (=> b!5320176 m!6355376))

(declare-fun m!6355382 () Bool)

(assert (=> b!5320178 m!6355382))

(assert (=> b!5319794 d!1708926))

(declare-fun d!1708930 () Bool)

(declare-fun e!3305305 () Bool)

(assert (=> d!1708930 e!3305305))

(declare-fun res!2256735 () Bool)

(assert (=> d!1708930 (=> (not res!2256735) (not e!3305305))))

(declare-fun lt!2171828 () List!61231)

(declare-fun noDuplicate!1299 (List!61231) Bool)

(assert (=> d!1708930 (= res!2256735 (noDuplicate!1299 lt!2171828))))

(declare-fun choose!39819 ((InoxSet Context!8722)) List!61231)

(assert (=> d!1708930 (= lt!2171828 (choose!39819 z!1189))))

(assert (=> d!1708930 (= (toList!8761 z!1189) lt!2171828)))

(declare-fun b!5320201 () Bool)

(declare-fun content!10895 (List!61231) (InoxSet Context!8722))

(assert (=> b!5320201 (= e!3305305 (= (content!10895 lt!2171828) z!1189))))

(assert (= (and d!1708930 res!2256735) b!5320201))

(declare-fun m!6355388 () Bool)

(assert (=> d!1708930 m!6355388))

(declare-fun m!6355390 () Bool)

(assert (=> d!1708930 m!6355390))

(declare-fun m!6355392 () Bool)

(assert (=> b!5320201 m!6355392))

(assert (=> b!5319796 d!1708930))

(declare-fun d!1708932 () Bool)

(assert (=> d!1708932 (= (isEmpty!33076 (t!374442 zl!343)) ((_ is Nil!61107) (t!374442 zl!343)))))

(assert (=> b!5319797 d!1708932))

(declare-fun d!1708934 () Bool)

(declare-fun lt!2171831 () Int)

(assert (=> d!1708934 (>= lt!2171831 0)))

(declare-fun e!3305323 () Int)

(assert (=> d!1708934 (= lt!2171831 e!3305323)))

(declare-fun c!924604 () Bool)

(assert (=> d!1708934 (= c!924604 ((_ is Cons!61107) lt!2171723))))

(assert (=> d!1708934 (= (zipperDepthTotal!130 lt!2171723) lt!2171831)))

(declare-fun b!5320240 () Bool)

(assert (=> b!5320240 (= e!3305323 (+ (contextDepthTotal!110 (h!67555 lt!2171723)) (zipperDepthTotal!130 (t!374442 lt!2171723))))))

(declare-fun b!5320241 () Bool)

(assert (=> b!5320241 (= e!3305323 0)))

(assert (= (and d!1708934 c!924604) b!5320240))

(assert (= (and d!1708934 (not c!924604)) b!5320241))

(declare-fun m!6355398 () Bool)

(assert (=> b!5320240 m!6355398))

(declare-fun m!6355400 () Bool)

(assert (=> b!5320240 m!6355400))

(assert (=> b!5319777 d!1708934))

(declare-fun d!1708942 () Bool)

(declare-fun lt!2171832 () Int)

(assert (=> d!1708942 (>= lt!2171832 0)))

(declare-fun e!3305324 () Int)

(assert (=> d!1708942 (= lt!2171832 e!3305324)))

(declare-fun c!924605 () Bool)

(assert (=> d!1708942 (= c!924605 ((_ is Cons!61107) zl!343))))

(assert (=> d!1708942 (= (zipperDepthTotal!130 zl!343) lt!2171832)))

(declare-fun b!5320242 () Bool)

(assert (=> b!5320242 (= e!3305324 (+ (contextDepthTotal!110 (h!67555 zl!343)) (zipperDepthTotal!130 (t!374442 zl!343))))))

(declare-fun b!5320243 () Bool)

(assert (=> b!5320243 (= e!3305324 0)))

(assert (= (and d!1708942 c!924605) b!5320242))

(assert (= (and d!1708942 (not c!924605)) b!5320243))

(assert (=> b!5320242 m!6355074))

(declare-fun m!6355402 () Bool)

(assert (=> b!5320242 m!6355402))

(assert (=> b!5319777 d!1708942))

(declare-fun bs!1232928 () Bool)

(declare-fun d!1708944 () Bool)

(assert (= bs!1232928 (and d!1708944 b!5319791)))

(declare-fun lambda!271345 () Int)

(assert (=> bs!1232928 (= lambda!271345 lambda!271287)))

(assert (=> d!1708944 (= (inv!80689 setElem!34243) (forall!14395 (exprs!4861 setElem!34243) lambda!271345))))

(declare-fun bs!1232929 () Bool)

(assert (= bs!1232929 d!1708944))

(declare-fun m!6355404 () Bool)

(assert (=> bs!1232929 m!6355404))

(assert (=> setNonEmpty!34243 d!1708944))

(declare-fun b!5320266 () Bool)

(declare-fun e!3305340 () (InoxSet Context!8722))

(assert (=> b!5320266 (= e!3305340 (store ((as const (Array Context!8722 Bool)) false) (Context!8723 lt!2171729) true))))

(declare-fun b!5320267 () Bool)

(declare-fun c!924617 () Bool)

(declare-fun e!3305341 () Bool)

(assert (=> b!5320267 (= c!924617 e!3305341)))

(declare-fun res!2256738 () Bool)

(assert (=> b!5320267 (=> (not res!2256738) (not e!3305341))))

(assert (=> b!5320267 (= res!2256738 ((_ is Concat!23822) (regOne!30466 (regOne!30466 r!7292))))))

(declare-fun e!3305342 () (InoxSet Context!8722))

(declare-fun e!3305339 () (InoxSet Context!8722))

(assert (=> b!5320267 (= e!3305342 e!3305339)))

(declare-fun bm!379792 () Bool)

(declare-fun call!379800 () List!61230)

(declare-fun call!379801 () List!61230)

(assert (=> bm!379792 (= call!379800 call!379801)))

(declare-fun b!5320268 () Bool)

(declare-fun e!3305338 () (InoxSet Context!8722))

(assert (=> b!5320268 (= e!3305338 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5320269 () Bool)

(declare-fun call!379802 () (InoxSet Context!8722))

(declare-fun call!379798 () (InoxSet Context!8722))

(assert (=> b!5320269 (= e!3305342 ((_ map or) call!379802 call!379798))))

(declare-fun b!5320270 () Bool)

(declare-fun c!924618 () Bool)

(assert (=> b!5320270 (= c!924618 ((_ is Star!14977) (regOne!30466 (regOne!30466 r!7292))))))

(declare-fun e!3305337 () (InoxSet Context!8722))

(assert (=> b!5320270 (= e!3305337 e!3305338)))

(declare-fun d!1708946 () Bool)

(declare-fun c!924616 () Bool)

(assert (=> d!1708946 (= c!924616 (and ((_ is ElementMatch!14977) (regOne!30466 (regOne!30466 r!7292))) (= (c!924467 (regOne!30466 (regOne!30466 r!7292))) (h!67556 s!2326))))))

(assert (=> d!1708946 (= (derivationStepZipperDown!425 (regOne!30466 (regOne!30466 r!7292)) (Context!8723 lt!2171729) (h!67556 s!2326)) e!3305340)))

(declare-fun c!924619 () Bool)

(declare-fun bm!379793 () Bool)

(declare-fun $colon$colon!1394 (List!61230 Regex!14977) List!61230)

(assert (=> bm!379793 (= call!379801 ($colon$colon!1394 (exprs!4861 (Context!8723 lt!2171729)) (ite (or c!924617 c!924619) (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 r!7292)))))))

(declare-fun bm!379794 () Bool)

(declare-fun call!379799 () (InoxSet Context!8722))

(assert (=> bm!379794 (= call!379799 call!379798)))

(declare-fun b!5320271 () Bool)

(declare-fun call!379797 () (InoxSet Context!8722))

(assert (=> b!5320271 (= e!3305337 call!379797)))

(declare-fun b!5320272 () Bool)

(assert (=> b!5320272 (= e!3305340 e!3305342)))

(declare-fun c!924620 () Bool)

(assert (=> b!5320272 (= c!924620 ((_ is Union!14977) (regOne!30466 (regOne!30466 r!7292))))))

(declare-fun bm!379795 () Bool)

(assert (=> bm!379795 (= call!379797 call!379799)))

(declare-fun b!5320273 () Bool)

(assert (=> b!5320273 (= e!3305338 call!379797)))

(declare-fun b!5320274 () Bool)

(assert (=> b!5320274 (= e!3305341 (nullable!5146 (regOne!30466 (regOne!30466 (regOne!30466 r!7292)))))))

(declare-fun b!5320275 () Bool)

(assert (=> b!5320275 (= e!3305339 ((_ map or) call!379802 call!379799))))

(declare-fun bm!379796 () Bool)

(assert (=> bm!379796 (= call!379802 (derivationStepZipperDown!425 (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292)))) (ite c!924620 (Context!8723 lt!2171729) (Context!8723 call!379801)) (h!67556 s!2326)))))

(declare-fun b!5320276 () Bool)

(assert (=> b!5320276 (= e!3305339 e!3305337)))

(assert (=> b!5320276 (= c!924619 ((_ is Concat!23822) (regOne!30466 (regOne!30466 r!7292))))))

(declare-fun bm!379797 () Bool)

(assert (=> bm!379797 (= call!379798 (derivationStepZipperDown!425 (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292)))))) (ite (or c!924620 c!924617) (Context!8723 lt!2171729) (Context!8723 call!379800)) (h!67556 s!2326)))))

(assert (= (and d!1708946 c!924616) b!5320266))

(assert (= (and d!1708946 (not c!924616)) b!5320272))

(assert (= (and b!5320272 c!924620) b!5320269))

(assert (= (and b!5320272 (not c!924620)) b!5320267))

(assert (= (and b!5320267 res!2256738) b!5320274))

(assert (= (and b!5320267 c!924617) b!5320275))

(assert (= (and b!5320267 (not c!924617)) b!5320276))

(assert (= (and b!5320276 c!924619) b!5320271))

(assert (= (and b!5320276 (not c!924619)) b!5320270))

(assert (= (and b!5320270 c!924618) b!5320273))

(assert (= (and b!5320270 (not c!924618)) b!5320268))

(assert (= (or b!5320271 b!5320273) bm!379792))

(assert (= (or b!5320271 b!5320273) bm!379795))

(assert (= (or b!5320275 bm!379792) bm!379793))

(assert (= (or b!5320275 bm!379795) bm!379794))

(assert (= (or b!5320269 bm!379794) bm!379797))

(assert (= (or b!5320269 b!5320275) bm!379796))

(declare-fun m!6355406 () Bool)

(assert (=> bm!379797 m!6355406))

(declare-fun m!6355408 () Bool)

(assert (=> bm!379793 m!6355408))

(declare-fun m!6355410 () Bool)

(assert (=> b!5320274 m!6355410))

(declare-fun m!6355412 () Bool)

(assert (=> bm!379796 m!6355412))

(declare-fun m!6355414 () Bool)

(assert (=> b!5320266 m!6355414))

(assert (=> b!5319787 d!1708946))

(declare-fun bs!1232930 () Bool)

(declare-fun d!1708948 () Bool)

(assert (= bs!1232930 (and d!1708948 b!5319791)))

(declare-fun lambda!271346 () Int)

(assert (=> bs!1232930 (= lambda!271346 lambda!271287)))

(declare-fun bs!1232931 () Bool)

(assert (= bs!1232931 (and d!1708948 d!1708944)))

(assert (=> bs!1232931 (= lambda!271346 lambda!271345)))

(assert (=> d!1708948 (= (inv!80689 (h!67555 zl!343)) (forall!14395 (exprs!4861 (h!67555 zl!343)) lambda!271346))))

(declare-fun bs!1232932 () Bool)

(assert (= bs!1232932 d!1708948))

(declare-fun m!6355416 () Bool)

(assert (=> bs!1232932 m!6355416))

(assert (=> b!5319778 d!1708948))

(declare-fun bs!1232933 () Bool)

(declare-fun d!1708950 () Bool)

(assert (= bs!1232933 (and d!1708950 b!5319791)))

(declare-fun lambda!271349 () Int)

(assert (=> bs!1232933 (= lambda!271349 lambda!271287)))

(declare-fun bs!1232934 () Bool)

(assert (= bs!1232934 (and d!1708950 d!1708944)))

(assert (=> bs!1232934 (= lambda!271349 lambda!271345)))

(declare-fun bs!1232935 () Bool)

(assert (= bs!1232935 (and d!1708950 d!1708948)))

(assert (=> bs!1232935 (= lambda!271349 lambda!271346)))

(declare-fun b!5320297 () Bool)

(declare-fun e!3305358 () Bool)

(declare-fun e!3305355 () Bool)

(assert (=> b!5320297 (= e!3305358 e!3305355)))

(declare-fun c!924630 () Bool)

(assert (=> b!5320297 (= c!924630 (isEmpty!33075 (unfocusZipperList!419 zl!343)))))

(declare-fun b!5320298 () Bool)

(declare-fun e!3305356 () Bool)

(declare-fun lt!2171835 () Regex!14977)

(declare-fun isUnion!319 (Regex!14977) Bool)

(assert (=> b!5320298 (= e!3305356 (isUnion!319 lt!2171835))))

(declare-fun b!5320299 () Bool)

(declare-fun isEmptyLang!887 (Regex!14977) Bool)

(assert (=> b!5320299 (= e!3305355 (isEmptyLang!887 lt!2171835))))

(assert (=> d!1708950 e!3305358))

(declare-fun res!2256744 () Bool)

(assert (=> d!1708950 (=> (not res!2256744) (not e!3305358))))

(assert (=> d!1708950 (= res!2256744 (validRegex!6713 lt!2171835))))

(declare-fun e!3305357 () Regex!14977)

(assert (=> d!1708950 (= lt!2171835 e!3305357)))

(declare-fun c!924629 () Bool)

(declare-fun e!3305359 () Bool)

(assert (=> d!1708950 (= c!924629 e!3305359)))

(declare-fun res!2256743 () Bool)

(assert (=> d!1708950 (=> (not res!2256743) (not e!3305359))))

(assert (=> d!1708950 (= res!2256743 ((_ is Cons!61106) (unfocusZipperList!419 zl!343)))))

(assert (=> d!1708950 (forall!14395 (unfocusZipperList!419 zl!343) lambda!271349)))

(assert (=> d!1708950 (= (generalisedUnion!906 (unfocusZipperList!419 zl!343)) lt!2171835)))

(declare-fun b!5320300 () Bool)

(declare-fun head!11407 (List!61230) Regex!14977)

(assert (=> b!5320300 (= e!3305356 (= lt!2171835 (head!11407 (unfocusZipperList!419 zl!343))))))

(declare-fun b!5320301 () Bool)

(declare-fun e!3305360 () Regex!14977)

(assert (=> b!5320301 (= e!3305360 EmptyLang!14977)))

(declare-fun b!5320302 () Bool)

(assert (=> b!5320302 (= e!3305359 (isEmpty!33075 (t!374441 (unfocusZipperList!419 zl!343))))))

(declare-fun b!5320303 () Bool)

(assert (=> b!5320303 (= e!3305360 (Union!14977 (h!67554 (unfocusZipperList!419 zl!343)) (generalisedUnion!906 (t!374441 (unfocusZipperList!419 zl!343)))))))

(declare-fun b!5320304 () Bool)

(assert (=> b!5320304 (= e!3305355 e!3305356)))

(declare-fun c!924631 () Bool)

(declare-fun tail!10504 (List!61230) List!61230)

(assert (=> b!5320304 (= c!924631 (isEmpty!33075 (tail!10504 (unfocusZipperList!419 zl!343))))))

(declare-fun b!5320305 () Bool)

(assert (=> b!5320305 (= e!3305357 (h!67554 (unfocusZipperList!419 zl!343)))))

(declare-fun b!5320306 () Bool)

(assert (=> b!5320306 (= e!3305357 e!3305360)))

(declare-fun c!924632 () Bool)

(assert (=> b!5320306 (= c!924632 ((_ is Cons!61106) (unfocusZipperList!419 zl!343)))))

(assert (= (and d!1708950 res!2256743) b!5320302))

(assert (= (and d!1708950 c!924629) b!5320305))

(assert (= (and d!1708950 (not c!924629)) b!5320306))

(assert (= (and b!5320306 c!924632) b!5320303))

(assert (= (and b!5320306 (not c!924632)) b!5320301))

(assert (= (and d!1708950 res!2256744) b!5320297))

(assert (= (and b!5320297 c!924630) b!5320299))

(assert (= (and b!5320297 (not c!924630)) b!5320304))

(assert (= (and b!5320304 c!924631) b!5320300))

(assert (= (and b!5320304 (not c!924631)) b!5320298))

(declare-fun m!6355418 () Bool)

(assert (=> d!1708950 m!6355418))

(assert (=> d!1708950 m!6355076))

(declare-fun m!6355420 () Bool)

(assert (=> d!1708950 m!6355420))

(declare-fun m!6355422 () Bool)

(assert (=> b!5320298 m!6355422))

(assert (=> b!5320304 m!6355076))

(declare-fun m!6355424 () Bool)

(assert (=> b!5320304 m!6355424))

(assert (=> b!5320304 m!6355424))

(declare-fun m!6355426 () Bool)

(assert (=> b!5320304 m!6355426))

(declare-fun m!6355428 () Bool)

(assert (=> b!5320303 m!6355428))

(assert (=> b!5320297 m!6355076))

(declare-fun m!6355430 () Bool)

(assert (=> b!5320297 m!6355430))

(declare-fun m!6355432 () Bool)

(assert (=> b!5320299 m!6355432))

(assert (=> b!5320300 m!6355076))

(declare-fun m!6355434 () Bool)

(assert (=> b!5320300 m!6355434))

(declare-fun m!6355436 () Bool)

(assert (=> b!5320302 m!6355436))

(assert (=> b!5319789 d!1708950))

(declare-fun bs!1232936 () Bool)

(declare-fun d!1708952 () Bool)

(assert (= bs!1232936 (and d!1708952 b!5319791)))

(declare-fun lambda!271352 () Int)

(assert (=> bs!1232936 (= lambda!271352 lambda!271287)))

(declare-fun bs!1232937 () Bool)

(assert (= bs!1232937 (and d!1708952 d!1708944)))

(assert (=> bs!1232937 (= lambda!271352 lambda!271345)))

(declare-fun bs!1232938 () Bool)

(assert (= bs!1232938 (and d!1708952 d!1708948)))

(assert (=> bs!1232938 (= lambda!271352 lambda!271346)))

(declare-fun bs!1232939 () Bool)

(assert (= bs!1232939 (and d!1708952 d!1708950)))

(assert (=> bs!1232939 (= lambda!271352 lambda!271349)))

(declare-fun lt!2171838 () List!61230)

(assert (=> d!1708952 (forall!14395 lt!2171838 lambda!271352)))

(declare-fun e!3305363 () List!61230)

(assert (=> d!1708952 (= lt!2171838 e!3305363)))

(declare-fun c!924635 () Bool)

(assert (=> d!1708952 (= c!924635 ((_ is Cons!61107) zl!343))))

(assert (=> d!1708952 (= (unfocusZipperList!419 zl!343) lt!2171838)))

(declare-fun b!5320311 () Bool)

(assert (=> b!5320311 (= e!3305363 (Cons!61106 (generalisedConcat!646 (exprs!4861 (h!67555 zl!343))) (unfocusZipperList!419 (t!374442 zl!343))))))

(declare-fun b!5320312 () Bool)

(assert (=> b!5320312 (= e!3305363 Nil!61106)))

(assert (= (and d!1708952 c!924635) b!5320311))

(assert (= (and d!1708952 (not c!924635)) b!5320312))

(declare-fun m!6355438 () Bool)

(assert (=> d!1708952 m!6355438))

(assert (=> b!5320311 m!6355008))

(declare-fun m!6355440 () Bool)

(assert (=> b!5320311 m!6355440))

(assert (=> b!5319789 d!1708952))

(declare-fun b!5320331 () Bool)

(declare-fun e!3305380 () Bool)

(declare-fun e!3305381 () Bool)

(assert (=> b!5320331 (= e!3305380 e!3305381)))

(declare-fun res!2256758 () Bool)

(assert (=> b!5320331 (= res!2256758 (not (nullable!5146 (reg!15306 r!7292))))))

(assert (=> b!5320331 (=> (not res!2256758) (not e!3305381))))

(declare-fun call!379809 () Bool)

(declare-fun bm!379804 () Bool)

(declare-fun c!924640 () Bool)

(declare-fun c!924641 () Bool)

(assert (=> bm!379804 (= call!379809 (validRegex!6713 (ite c!924641 (reg!15306 r!7292) (ite c!924640 (regTwo!30467 r!7292) (regTwo!30466 r!7292)))))))

(declare-fun b!5320332 () Bool)

(assert (=> b!5320332 (= e!3305381 call!379809)))

(declare-fun bm!379805 () Bool)

(declare-fun call!379810 () Bool)

(assert (=> bm!379805 (= call!379810 call!379809)))

(declare-fun bm!379806 () Bool)

(declare-fun call!379811 () Bool)

(assert (=> bm!379806 (= call!379811 (validRegex!6713 (ite c!924640 (regOne!30467 r!7292) (regOne!30466 r!7292))))))

(declare-fun b!5320334 () Bool)

(declare-fun res!2256756 () Bool)

(declare-fun e!3305382 () Bool)

(assert (=> b!5320334 (=> (not res!2256756) (not e!3305382))))

(assert (=> b!5320334 (= res!2256756 call!379811)))

(declare-fun e!3305384 () Bool)

(assert (=> b!5320334 (= e!3305384 e!3305382)))

(declare-fun b!5320335 () Bool)

(assert (=> b!5320335 (= e!3305382 call!379810)))

(declare-fun b!5320336 () Bool)

(assert (=> b!5320336 (= e!3305380 e!3305384)))

(assert (=> b!5320336 (= c!924640 ((_ is Union!14977) r!7292))))

(declare-fun b!5320337 () Bool)

(declare-fun e!3305383 () Bool)

(declare-fun e!3305379 () Bool)

(assert (=> b!5320337 (= e!3305383 e!3305379)))

(declare-fun res!2256757 () Bool)

(assert (=> b!5320337 (=> (not res!2256757) (not e!3305379))))

(assert (=> b!5320337 (= res!2256757 call!379811)))

(declare-fun b!5320333 () Bool)

(declare-fun e!3305378 () Bool)

(assert (=> b!5320333 (= e!3305378 e!3305380)))

(assert (=> b!5320333 (= c!924641 ((_ is Star!14977) r!7292))))

(declare-fun d!1708954 () Bool)

(declare-fun res!2256755 () Bool)

(assert (=> d!1708954 (=> res!2256755 e!3305378)))

(assert (=> d!1708954 (= res!2256755 ((_ is ElementMatch!14977) r!7292))))

(assert (=> d!1708954 (= (validRegex!6713 r!7292) e!3305378)))

(declare-fun b!5320338 () Bool)

(assert (=> b!5320338 (= e!3305379 call!379810)))

(declare-fun b!5320339 () Bool)

(declare-fun res!2256759 () Bool)

(assert (=> b!5320339 (=> res!2256759 e!3305383)))

(assert (=> b!5320339 (= res!2256759 (not ((_ is Concat!23822) r!7292)))))

(assert (=> b!5320339 (= e!3305384 e!3305383)))

(assert (= (and d!1708954 (not res!2256755)) b!5320333))

(assert (= (and b!5320333 c!924641) b!5320331))

(assert (= (and b!5320333 (not c!924641)) b!5320336))

(assert (= (and b!5320331 res!2256758) b!5320332))

(assert (= (and b!5320336 c!924640) b!5320334))

(assert (= (and b!5320336 (not c!924640)) b!5320339))

(assert (= (and b!5320334 res!2256756) b!5320335))

(assert (= (and b!5320339 (not res!2256759)) b!5320337))

(assert (= (and b!5320337 res!2256757) b!5320338))

(assert (= (or b!5320335 b!5320338) bm!379805))

(assert (= (or b!5320334 b!5320337) bm!379806))

(assert (= (or b!5320332 bm!379805) bm!379804))

(declare-fun m!6355442 () Bool)

(assert (=> b!5320331 m!6355442))

(declare-fun m!6355444 () Bool)

(assert (=> bm!379804 m!6355444))

(declare-fun m!6355446 () Bool)

(assert (=> bm!379806 m!6355446))

(assert (=> start!560826 d!1708954))

(declare-fun d!1708956 () Bool)

(declare-fun c!924642 () Bool)

(assert (=> d!1708956 (= c!924642 (isEmpty!33079 (t!374443 s!2326)))))

(declare-fun e!3305385 () Bool)

(assert (=> d!1708956 (= (matchZipper!1221 lt!2171740 (t!374443 s!2326)) e!3305385)))

(declare-fun b!5320340 () Bool)

(assert (=> b!5320340 (= e!3305385 (nullableZipper!1344 lt!2171740))))

(declare-fun b!5320341 () Bool)

(assert (=> b!5320341 (= e!3305385 (matchZipper!1221 (derivationStepZipper!1218 lt!2171740 (head!11406 (t!374443 s!2326))) (tail!10503 (t!374443 s!2326))))))

(assert (= (and d!1708956 c!924642) b!5320340))

(assert (= (and d!1708956 (not c!924642)) b!5320341))

(assert (=> d!1708956 m!6355322))

(declare-fun m!6355448 () Bool)

(assert (=> b!5320340 m!6355448))

(assert (=> b!5320341 m!6355326))

(assert (=> b!5320341 m!6355326))

(declare-fun m!6355450 () Bool)

(assert (=> b!5320341 m!6355450))

(assert (=> b!5320341 m!6355330))

(assert (=> b!5320341 m!6355450))

(assert (=> b!5320341 m!6355330))

(declare-fun m!6355452 () Bool)

(assert (=> b!5320341 m!6355452))

(assert (=> b!5319798 d!1708956))

(declare-fun d!1708958 () Bool)

(declare-fun c!924643 () Bool)

(assert (=> d!1708958 (= c!924643 (isEmpty!33079 (t!374443 s!2326)))))

(declare-fun e!3305386 () Bool)

(assert (=> d!1708958 (= (matchZipper!1221 lt!2171730 (t!374443 s!2326)) e!3305386)))

(declare-fun b!5320342 () Bool)

(assert (=> b!5320342 (= e!3305386 (nullableZipper!1344 lt!2171730))))

(declare-fun b!5320343 () Bool)

(assert (=> b!5320343 (= e!3305386 (matchZipper!1221 (derivationStepZipper!1218 lt!2171730 (head!11406 (t!374443 s!2326))) (tail!10503 (t!374443 s!2326))))))

(assert (= (and d!1708958 c!924643) b!5320342))

(assert (= (and d!1708958 (not c!924643)) b!5320343))

(assert (=> d!1708958 m!6355322))

(declare-fun m!6355454 () Bool)

(assert (=> b!5320342 m!6355454))

(assert (=> b!5320343 m!6355326))

(assert (=> b!5320343 m!6355326))

(declare-fun m!6355456 () Bool)

(assert (=> b!5320343 m!6355456))

(assert (=> b!5320343 m!6355330))

(assert (=> b!5320343 m!6355456))

(assert (=> b!5320343 m!6355330))

(declare-fun m!6355458 () Bool)

(assert (=> b!5320343 m!6355458))

(assert (=> b!5319798 d!1708958))

(declare-fun d!1708960 () Bool)

(declare-fun lt!2171841 () Int)

(assert (=> d!1708960 (>= lt!2171841 0)))

(declare-fun e!3305389 () Int)

(assert (=> d!1708960 (= lt!2171841 e!3305389)))

(declare-fun c!924647 () Bool)

(assert (=> d!1708960 (= c!924647 ((_ is Cons!61106) (exprs!4861 lt!2171733)))))

(assert (=> d!1708960 (= (contextDepthTotal!110 lt!2171733) lt!2171841)))

(declare-fun b!5320348 () Bool)

(declare-fun regexDepthTotal!49 (Regex!14977) Int)

(assert (=> b!5320348 (= e!3305389 (+ (regexDepthTotal!49 (h!67554 (exprs!4861 lt!2171733))) (contextDepthTotal!110 (Context!8723 (t!374441 (exprs!4861 lt!2171733))))))))

(declare-fun b!5320349 () Bool)

(assert (=> b!5320349 (= e!3305389 1)))

(assert (= (and d!1708960 c!924647) b!5320348))

(assert (= (and d!1708960 (not c!924647)) b!5320349))

(declare-fun m!6355460 () Bool)

(assert (=> b!5320348 m!6355460))

(declare-fun m!6355462 () Bool)

(assert (=> b!5320348 m!6355462))

(assert (=> b!5319768 d!1708960))

(declare-fun d!1708962 () Bool)

(declare-fun lt!2171842 () Int)

(assert (=> d!1708962 (>= lt!2171842 0)))

(declare-fun e!3305390 () Int)

(assert (=> d!1708962 (= lt!2171842 e!3305390)))

(declare-fun c!924648 () Bool)

(assert (=> d!1708962 (= c!924648 ((_ is Cons!61106) (exprs!4861 (h!67555 zl!343))))))

(assert (=> d!1708962 (= (contextDepthTotal!110 (h!67555 zl!343)) lt!2171842)))

(declare-fun b!5320350 () Bool)

(assert (=> b!5320350 (= e!3305390 (+ (regexDepthTotal!49 (h!67554 (exprs!4861 (h!67555 zl!343)))) (contextDepthTotal!110 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343)))))))))

(declare-fun b!5320351 () Bool)

(assert (=> b!5320351 (= e!3305390 1)))

(assert (= (and d!1708962 c!924648) b!5320350))

(assert (= (and d!1708962 (not c!924648)) b!5320351))

(declare-fun m!6355464 () Bool)

(assert (=> b!5320350 m!6355464))

(declare-fun m!6355466 () Bool)

(assert (=> b!5320350 m!6355466))

(assert (=> b!5319768 d!1708962))

(declare-fun d!1708964 () Bool)

(declare-fun choose!39821 (Int) Bool)

(assert (=> d!1708964 (= (Exists!2158 lambda!271285) (choose!39821 lambda!271285))))

(declare-fun bs!1232940 () Bool)

(assert (= bs!1232940 d!1708964))

(declare-fun m!6355468 () Bool)

(assert (=> bs!1232940 m!6355468))

(assert (=> b!5319790 d!1708964))

(declare-fun bs!1232941 () Bool)

(declare-fun d!1708966 () Bool)

(assert (= bs!1232941 (and d!1708966 b!5319790)))

(declare-fun lambda!271355 () Int)

(assert (=> bs!1232941 (= lambda!271355 lambda!271284)))

(assert (=> bs!1232941 (not (= lambda!271355 lambda!271285))))

(assert (=> d!1708966 true))

(assert (=> d!1708966 true))

(assert (=> d!1708966 true))

(assert (=> d!1708966 (= (isDefined!11791 (findConcatSeparation!1502 (regOne!30466 r!7292) (regTwo!30466 r!7292) Nil!61108 s!2326 s!2326)) (Exists!2158 lambda!271355))))

(declare-fun lt!2171845 () Unit!153426)

(declare-fun choose!39822 (Regex!14977 Regex!14977 List!61232) Unit!153426)

(assert (=> d!1708966 (= lt!2171845 (choose!39822 (regOne!30466 r!7292) (regTwo!30466 r!7292) s!2326))))

(assert (=> d!1708966 (validRegex!6713 (regOne!30466 r!7292))))

(assert (=> d!1708966 (= (lemmaFindConcatSeparationEquivalentToExists!1266 (regOne!30466 r!7292) (regTwo!30466 r!7292) s!2326) lt!2171845)))

(declare-fun bs!1232942 () Bool)

(assert (= bs!1232942 d!1708966))

(assert (=> bs!1232942 m!6354988))

(declare-fun m!6355470 () Bool)

(assert (=> bs!1232942 m!6355470))

(declare-fun m!6355472 () Bool)

(assert (=> bs!1232942 m!6355472))

(declare-fun m!6355474 () Bool)

(assert (=> bs!1232942 m!6355474))

(assert (=> bs!1232942 m!6354988))

(assert (=> bs!1232942 m!6354990))

(assert (=> b!5319790 d!1708966))

(declare-fun d!1708968 () Bool)

(assert (=> d!1708968 (= (Exists!2158 lambda!271284) (choose!39821 lambda!271284))))

(declare-fun bs!1232943 () Bool)

(assert (= bs!1232943 d!1708968))

(declare-fun m!6355476 () Bool)

(assert (=> bs!1232943 m!6355476))

(assert (=> b!5319790 d!1708968))

(declare-fun b!5320374 () Bool)

(declare-fun e!3305407 () Option!15088)

(declare-fun e!3305404 () Option!15088)

(assert (=> b!5320374 (= e!3305407 e!3305404)))

(declare-fun c!924654 () Bool)

(assert (=> b!5320374 (= c!924654 ((_ is Nil!61108) s!2326))))

(declare-fun d!1708970 () Bool)

(declare-fun e!3305406 () Bool)

(assert (=> d!1708970 e!3305406))

(declare-fun res!2256777 () Bool)

(assert (=> d!1708970 (=> res!2256777 e!3305406)))

(declare-fun e!3305403 () Bool)

(assert (=> d!1708970 (= res!2256777 e!3305403)))

(declare-fun res!2256774 () Bool)

(assert (=> d!1708970 (=> (not res!2256774) (not e!3305403))))

(declare-fun lt!2171854 () Option!15088)

(assert (=> d!1708970 (= res!2256774 (isDefined!11791 lt!2171854))))

(assert (=> d!1708970 (= lt!2171854 e!3305407)))

(declare-fun c!924653 () Bool)

(declare-fun e!3305405 () Bool)

(assert (=> d!1708970 (= c!924653 e!3305405)))

(declare-fun res!2256775 () Bool)

(assert (=> d!1708970 (=> (not res!2256775) (not e!3305405))))

(assert (=> d!1708970 (= res!2256775 (matchR!7162 (regOne!30466 r!7292) Nil!61108))))

(assert (=> d!1708970 (validRegex!6713 (regOne!30466 r!7292))))

(assert (=> d!1708970 (= (findConcatSeparation!1502 (regOne!30466 r!7292) (regTwo!30466 r!7292) Nil!61108 s!2326 s!2326) lt!2171854)))

(declare-fun b!5320375 () Bool)

(assert (=> b!5320375 (= e!3305404 None!15087)))

(declare-fun b!5320376 () Bool)

(assert (=> b!5320376 (= e!3305407 (Some!15087 (tuple2!64353 Nil!61108 s!2326)))))

(declare-fun b!5320377 () Bool)

(declare-fun res!2256776 () Bool)

(assert (=> b!5320377 (=> (not res!2256776) (not e!3305403))))

(declare-fun get!21018 (Option!15088) tuple2!64352)

(assert (=> b!5320377 (= res!2256776 (matchR!7162 (regTwo!30466 r!7292) (_2!35479 (get!21018 lt!2171854))))))

(declare-fun b!5320378 () Bool)

(declare-fun lt!2171853 () Unit!153426)

(declare-fun lt!2171852 () Unit!153426)

(assert (=> b!5320378 (= lt!2171853 lt!2171852)))

(declare-fun ++!13324 (List!61232 List!61232) List!61232)

(assert (=> b!5320378 (= (++!13324 (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108)) (t!374443 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1739 (List!61232 C!30224 List!61232 List!61232) Unit!153426)

(assert (=> b!5320378 (= lt!2171852 (lemmaMoveElementToOtherListKeepsConcatEq!1739 Nil!61108 (h!67556 s!2326) (t!374443 s!2326) s!2326))))

(assert (=> b!5320378 (= e!3305404 (findConcatSeparation!1502 (regOne!30466 r!7292) (regTwo!30466 r!7292) (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108)) (t!374443 s!2326) s!2326))))

(declare-fun b!5320379 () Bool)

(assert (=> b!5320379 (= e!3305405 (matchR!7162 (regTwo!30466 r!7292) s!2326))))

(declare-fun b!5320380 () Bool)

(assert (=> b!5320380 (= e!3305406 (not (isDefined!11791 lt!2171854)))))

(declare-fun b!5320381 () Bool)

(assert (=> b!5320381 (= e!3305403 (= (++!13324 (_1!35479 (get!21018 lt!2171854)) (_2!35479 (get!21018 lt!2171854))) s!2326))))

(declare-fun b!5320382 () Bool)

(declare-fun res!2256778 () Bool)

(assert (=> b!5320382 (=> (not res!2256778) (not e!3305403))))

(assert (=> b!5320382 (= res!2256778 (matchR!7162 (regOne!30466 r!7292) (_1!35479 (get!21018 lt!2171854))))))

(assert (= (and d!1708970 res!2256775) b!5320379))

(assert (= (and d!1708970 c!924653) b!5320376))

(assert (= (and d!1708970 (not c!924653)) b!5320374))

(assert (= (and b!5320374 c!924654) b!5320375))

(assert (= (and b!5320374 (not c!924654)) b!5320378))

(assert (= (and d!1708970 res!2256774) b!5320382))

(assert (= (and b!5320382 res!2256778) b!5320377))

(assert (= (and b!5320377 res!2256776) b!5320381))

(assert (= (and d!1708970 (not res!2256777)) b!5320380))

(declare-fun m!6355478 () Bool)

(assert (=> b!5320381 m!6355478))

(declare-fun m!6355480 () Bool)

(assert (=> b!5320381 m!6355480))

(declare-fun m!6355482 () Bool)

(assert (=> b!5320380 m!6355482))

(declare-fun m!6355484 () Bool)

(assert (=> b!5320378 m!6355484))

(assert (=> b!5320378 m!6355484))

(declare-fun m!6355486 () Bool)

(assert (=> b!5320378 m!6355486))

(declare-fun m!6355488 () Bool)

(assert (=> b!5320378 m!6355488))

(assert (=> b!5320378 m!6355484))

(declare-fun m!6355490 () Bool)

(assert (=> b!5320378 m!6355490))

(assert (=> b!5320382 m!6355478))

(declare-fun m!6355492 () Bool)

(assert (=> b!5320382 m!6355492))

(declare-fun m!6355494 () Bool)

(assert (=> b!5320379 m!6355494))

(assert (=> b!5320377 m!6355478))

(declare-fun m!6355496 () Bool)

(assert (=> b!5320377 m!6355496))

(assert (=> d!1708970 m!6355482))

(declare-fun m!6355498 () Bool)

(assert (=> d!1708970 m!6355498))

(assert (=> d!1708970 m!6355472))

(assert (=> b!5319790 d!1708970))

(declare-fun bs!1232944 () Bool)

(declare-fun d!1708972 () Bool)

(assert (= bs!1232944 (and d!1708972 b!5319790)))

(declare-fun lambda!271360 () Int)

(assert (=> bs!1232944 (= lambda!271360 lambda!271284)))

(assert (=> bs!1232944 (not (= lambda!271360 lambda!271285))))

(declare-fun bs!1232945 () Bool)

(assert (= bs!1232945 (and d!1708972 d!1708966)))

(assert (=> bs!1232945 (= lambda!271360 lambda!271355)))

(assert (=> d!1708972 true))

(assert (=> d!1708972 true))

(assert (=> d!1708972 true))

(declare-fun lambda!271361 () Int)

(assert (=> bs!1232944 (not (= lambda!271361 lambda!271284))))

(assert (=> bs!1232944 (= lambda!271361 lambda!271285)))

(assert (=> bs!1232945 (not (= lambda!271361 lambda!271355))))

(declare-fun bs!1232946 () Bool)

(assert (= bs!1232946 d!1708972))

(assert (=> bs!1232946 (not (= lambda!271361 lambda!271360))))

(assert (=> d!1708972 true))

(assert (=> d!1708972 true))

(assert (=> d!1708972 true))

(assert (=> d!1708972 (= (Exists!2158 lambda!271360) (Exists!2158 lambda!271361))))

(declare-fun lt!2171857 () Unit!153426)

(declare-fun choose!39823 (Regex!14977 Regex!14977 List!61232) Unit!153426)

(assert (=> d!1708972 (= lt!2171857 (choose!39823 (regOne!30466 r!7292) (regTwo!30466 r!7292) s!2326))))

(assert (=> d!1708972 (validRegex!6713 (regOne!30466 r!7292))))

(assert (=> d!1708972 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!812 (regOne!30466 r!7292) (regTwo!30466 r!7292) s!2326) lt!2171857)))

(declare-fun m!6355500 () Bool)

(assert (=> bs!1232946 m!6355500))

(declare-fun m!6355502 () Bool)

(assert (=> bs!1232946 m!6355502))

(declare-fun m!6355504 () Bool)

(assert (=> bs!1232946 m!6355504))

(assert (=> bs!1232946 m!6355472))

(assert (=> b!5319790 d!1708972))

(declare-fun d!1708974 () Bool)

(declare-fun isEmpty!33080 (Option!15088) Bool)

(assert (=> d!1708974 (= (isDefined!11791 (findConcatSeparation!1502 (regOne!30466 r!7292) (regTwo!30466 r!7292) Nil!61108 s!2326 s!2326)) (not (isEmpty!33080 (findConcatSeparation!1502 (regOne!30466 r!7292) (regTwo!30466 r!7292) Nil!61108 s!2326 s!2326))))))

(declare-fun bs!1232947 () Bool)

(assert (= bs!1232947 d!1708974))

(assert (=> bs!1232947 m!6354988))

(declare-fun m!6355506 () Bool)

(assert (=> bs!1232947 m!6355506))

(assert (=> b!5319790 d!1708974))

(declare-fun d!1708976 () Bool)

(declare-fun nullableFct!1496 (Regex!14977) Bool)

(assert (=> d!1708976 (= (nullable!5146 (regOne!30466 (regOne!30466 r!7292))) (nullableFct!1496 (regOne!30466 (regOne!30466 r!7292))))))

(declare-fun bs!1232948 () Bool)

(assert (= bs!1232948 d!1708976))

(declare-fun m!6355508 () Bool)

(assert (=> bs!1232948 m!6355508))

(assert (=> b!5319769 d!1708976))

(declare-fun d!1708978 () Bool)

(declare-fun choose!39824 ((InoxSet Context!8722) Int) (InoxSet Context!8722))

(assert (=> d!1708978 (= (flatMap!704 lt!2171735 lambda!271286) (choose!39824 lt!2171735 lambda!271286))))

(declare-fun bs!1232949 () Bool)

(assert (= bs!1232949 d!1708978))

(declare-fun m!6355510 () Bool)

(assert (=> bs!1232949 m!6355510))

(assert (=> b!5319779 d!1708978))

(declare-fun bm!379809 () Bool)

(declare-fun call!379814 () (InoxSet Context!8722))

(assert (=> bm!379809 (= call!379814 (derivationStepZipperDown!425 (h!67554 (exprs!4861 lt!2171733)) (Context!8723 (t!374441 (exprs!4861 lt!2171733))) (h!67556 s!2326)))))

(declare-fun b!5320401 () Bool)

(declare-fun e!3305418 () (InoxSet Context!8722))

(declare-fun e!3305419 () (InoxSet Context!8722))

(assert (=> b!5320401 (= e!3305418 e!3305419)))

(declare-fun c!924660 () Bool)

(assert (=> b!5320401 (= c!924660 ((_ is Cons!61106) (exprs!4861 lt!2171733)))))

(declare-fun b!5320402 () Bool)

(assert (=> b!5320402 (= e!3305419 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5320403 () Bool)

(assert (=> b!5320403 (= e!3305418 ((_ map or) call!379814 (derivationStepZipperUp!349 (Context!8723 (t!374441 (exprs!4861 lt!2171733))) (h!67556 s!2326))))))

(declare-fun b!5320404 () Bool)

(assert (=> b!5320404 (= e!3305419 call!379814)))

(declare-fun b!5320405 () Bool)

(declare-fun e!3305420 () Bool)

(assert (=> b!5320405 (= e!3305420 (nullable!5146 (h!67554 (exprs!4861 lt!2171733))))))

(declare-fun d!1708980 () Bool)

(declare-fun c!924659 () Bool)

(assert (=> d!1708980 (= c!924659 e!3305420)))

(declare-fun res!2256789 () Bool)

(assert (=> d!1708980 (=> (not res!2256789) (not e!3305420))))

(assert (=> d!1708980 (= res!2256789 ((_ is Cons!61106) (exprs!4861 lt!2171733)))))

(assert (=> d!1708980 (= (derivationStepZipperUp!349 lt!2171733 (h!67556 s!2326)) e!3305418)))

(assert (= (and d!1708980 res!2256789) b!5320405))

(assert (= (and d!1708980 c!924659) b!5320403))

(assert (= (and d!1708980 (not c!924659)) b!5320401))

(assert (= (and b!5320401 c!924660) b!5320404))

(assert (= (and b!5320401 (not c!924660)) b!5320402))

(assert (= (or b!5320403 b!5320404) bm!379809))

(declare-fun m!6355512 () Bool)

(assert (=> bm!379809 m!6355512))

(declare-fun m!6355514 () Bool)

(assert (=> b!5320403 m!6355514))

(declare-fun m!6355516 () Bool)

(assert (=> b!5320405 m!6355516))

(assert (=> b!5319779 d!1708980))

(declare-fun d!1708982 () Bool)

(declare-fun dynLambda!24154 (Int Context!8722) (InoxSet Context!8722))

(assert (=> d!1708982 (= (flatMap!704 lt!2171735 lambda!271286) (dynLambda!24154 lambda!271286 lt!2171733))))

(declare-fun lt!2171860 () Unit!153426)

(declare-fun choose!39825 ((InoxSet Context!8722) Context!8722 Int) Unit!153426)

(assert (=> d!1708982 (= lt!2171860 (choose!39825 lt!2171735 lt!2171733 lambda!271286))))

(assert (=> d!1708982 (= lt!2171735 (store ((as const (Array Context!8722 Bool)) false) lt!2171733 true))))

(assert (=> d!1708982 (= (lemmaFlatMapOnSingletonSet!236 lt!2171735 lt!2171733 lambda!271286) lt!2171860)))

(declare-fun b_lambda!204649 () Bool)

(assert (=> (not b_lambda!204649) (not d!1708982)))

(declare-fun bs!1232950 () Bool)

(assert (= bs!1232950 d!1708982))

(assert (=> bs!1232950 m!6355036))

(declare-fun m!6355518 () Bool)

(assert (=> bs!1232950 m!6355518))

(declare-fun m!6355520 () Bool)

(assert (=> bs!1232950 m!6355520))

(assert (=> bs!1232950 m!6355030))

(assert (=> b!5319779 d!1708982))

(declare-fun bs!1232951 () Bool)

(declare-fun d!1708984 () Bool)

(assert (= bs!1232951 (and d!1708984 b!5319771)))

(declare-fun lambda!271364 () Int)

(assert (=> bs!1232951 (= lambda!271364 lambda!271286)))

(assert (=> d!1708984 true))

(assert (=> d!1708984 (= (derivationStepZipper!1218 lt!2171735 (h!67556 s!2326)) (flatMap!704 lt!2171735 lambda!271364))))

(declare-fun bs!1232952 () Bool)

(assert (= bs!1232952 d!1708984))

(declare-fun m!6355522 () Bool)

(assert (=> bs!1232952 m!6355522))

(assert (=> b!5319779 d!1708984))

(declare-fun d!1708986 () Bool)

(assert (=> d!1708986 (= (flatMap!704 z!1189 lambda!271286) (dynLambda!24154 lambda!271286 (h!67555 zl!343)))))

(declare-fun lt!2171861 () Unit!153426)

(assert (=> d!1708986 (= lt!2171861 (choose!39825 z!1189 (h!67555 zl!343) lambda!271286))))

(assert (=> d!1708986 (= z!1189 (store ((as const (Array Context!8722 Bool)) false) (h!67555 zl!343) true))))

(assert (=> d!1708986 (= (lemmaFlatMapOnSingletonSet!236 z!1189 (h!67555 zl!343) lambda!271286) lt!2171861)))

(declare-fun b_lambda!204651 () Bool)

(assert (=> (not b_lambda!204651) (not d!1708986)))

(declare-fun bs!1232953 () Bool)

(assert (= bs!1232953 d!1708986))

(assert (=> bs!1232953 m!6355044))

(declare-fun m!6355524 () Bool)

(assert (=> bs!1232953 m!6355524))

(declare-fun m!6355526 () Bool)

(assert (=> bs!1232953 m!6355526))

(declare-fun m!6355528 () Bool)

(assert (=> bs!1232953 m!6355528))

(assert (=> b!5319771 d!1708986))

(declare-fun d!1708988 () Bool)

(assert (=> d!1708988 (= (flatMap!704 z!1189 lambda!271286) (choose!39824 z!1189 lambda!271286))))

(declare-fun bs!1232954 () Bool)

(assert (= bs!1232954 d!1708988))

(declare-fun m!6355530 () Bool)

(assert (=> bs!1232954 m!6355530))

(assert (=> b!5319771 d!1708988))

(declare-fun b!5320408 () Bool)

(declare-fun e!3305424 () (InoxSet Context!8722))

(assert (=> b!5320408 (= e!3305424 (store ((as const (Array Context!8722 Bool)) false) lt!2171724 true))))

(declare-fun b!5320409 () Bool)

(declare-fun c!924664 () Bool)

(declare-fun e!3305425 () Bool)

(assert (=> b!5320409 (= c!924664 e!3305425)))

(declare-fun res!2256790 () Bool)

(assert (=> b!5320409 (=> (not res!2256790) (not e!3305425))))

(assert (=> b!5320409 (= res!2256790 ((_ is Concat!23822) (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun e!3305426 () (InoxSet Context!8722))

(declare-fun e!3305423 () (InoxSet Context!8722))

(assert (=> b!5320409 (= e!3305426 e!3305423)))

(declare-fun bm!379810 () Bool)

(declare-fun call!379818 () List!61230)

(declare-fun call!379819 () List!61230)

(assert (=> bm!379810 (= call!379818 call!379819)))

(declare-fun b!5320410 () Bool)

(declare-fun e!3305422 () (InoxSet Context!8722))

(assert (=> b!5320410 (= e!3305422 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5320411 () Bool)

(declare-fun call!379820 () (InoxSet Context!8722))

(declare-fun call!379816 () (InoxSet Context!8722))

(assert (=> b!5320411 (= e!3305426 ((_ map or) call!379820 call!379816))))

(declare-fun b!5320412 () Bool)

(declare-fun c!924665 () Bool)

(assert (=> b!5320412 (= c!924665 ((_ is Star!14977) (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun e!3305421 () (InoxSet Context!8722))

(assert (=> b!5320412 (= e!3305421 e!3305422)))

(declare-fun d!1708990 () Bool)

(declare-fun c!924663 () Bool)

(assert (=> d!1708990 (= c!924663 (and ((_ is ElementMatch!14977) (h!67554 (exprs!4861 (h!67555 zl!343)))) (= (c!924467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (h!67556 s!2326))))))

(assert (=> d!1708990 (= (derivationStepZipperDown!425 (h!67554 (exprs!4861 (h!67555 zl!343))) lt!2171724 (h!67556 s!2326)) e!3305424)))

(declare-fun bm!379811 () Bool)

(declare-fun c!924666 () Bool)

(assert (=> bm!379811 (= call!379819 ($colon$colon!1394 (exprs!4861 lt!2171724) (ite (or c!924664 c!924666) (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (h!67554 (exprs!4861 (h!67555 zl!343))))))))

(declare-fun bm!379812 () Bool)

(declare-fun call!379817 () (InoxSet Context!8722))

(assert (=> bm!379812 (= call!379817 call!379816)))

(declare-fun b!5320413 () Bool)

(declare-fun call!379815 () (InoxSet Context!8722))

(assert (=> b!5320413 (= e!3305421 call!379815)))

(declare-fun b!5320414 () Bool)

(assert (=> b!5320414 (= e!3305424 e!3305426)))

(declare-fun c!924667 () Bool)

(assert (=> b!5320414 (= c!924667 ((_ is Union!14977) (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun bm!379813 () Bool)

(assert (=> bm!379813 (= call!379815 call!379817)))

(declare-fun b!5320415 () Bool)

(assert (=> b!5320415 (= e!3305422 call!379815)))

(declare-fun b!5320416 () Bool)

(assert (=> b!5320416 (= e!3305425 (nullable!5146 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343))))))))

(declare-fun b!5320417 () Bool)

(assert (=> b!5320417 (= e!3305423 ((_ map or) call!379820 call!379817))))

(declare-fun bm!379814 () Bool)

(assert (=> bm!379814 (= call!379820 (derivationStepZipperDown!425 (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343))))) (ite c!924667 lt!2171724 (Context!8723 call!379819)) (h!67556 s!2326)))))

(declare-fun b!5320418 () Bool)

(assert (=> b!5320418 (= e!3305423 e!3305421)))

(assert (=> b!5320418 (= c!924666 ((_ is Concat!23822) (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun bm!379815 () Bool)

(assert (=> bm!379815 (= call!379816 (derivationStepZipperDown!425 (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343))))))) (ite (or c!924667 c!924664) lt!2171724 (Context!8723 call!379818)) (h!67556 s!2326)))))

(assert (= (and d!1708990 c!924663) b!5320408))

(assert (= (and d!1708990 (not c!924663)) b!5320414))

(assert (= (and b!5320414 c!924667) b!5320411))

(assert (= (and b!5320414 (not c!924667)) b!5320409))

(assert (= (and b!5320409 res!2256790) b!5320416))

(assert (= (and b!5320409 c!924664) b!5320417))

(assert (= (and b!5320409 (not c!924664)) b!5320418))

(assert (= (and b!5320418 c!924666) b!5320413))

(assert (= (and b!5320418 (not c!924666)) b!5320412))

(assert (= (and b!5320412 c!924665) b!5320415))

(assert (= (and b!5320412 (not c!924665)) b!5320410))

(assert (= (or b!5320413 b!5320415) bm!379810))

(assert (= (or b!5320413 b!5320415) bm!379813))

(assert (= (or b!5320417 bm!379810) bm!379811))

(assert (= (or b!5320417 bm!379813) bm!379812))

(assert (= (or b!5320411 bm!379812) bm!379815))

(assert (= (or b!5320411 b!5320417) bm!379814))

(declare-fun m!6355532 () Bool)

(assert (=> bm!379815 m!6355532))

(declare-fun m!6355534 () Bool)

(assert (=> bm!379811 m!6355534))

(declare-fun m!6355536 () Bool)

(assert (=> b!5320416 m!6355536))

(declare-fun m!6355538 () Bool)

(assert (=> bm!379814 m!6355538))

(declare-fun m!6355540 () Bool)

(assert (=> b!5320408 m!6355540))

(assert (=> b!5319771 d!1708990))

(declare-fun d!1708992 () Bool)

(assert (=> d!1708992 (= (nullable!5146 (h!67554 (exprs!4861 (h!67555 zl!343)))) (nullableFct!1496 (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun bs!1232955 () Bool)

(assert (= bs!1232955 d!1708992))

(declare-fun m!6355542 () Bool)

(assert (=> bs!1232955 m!6355542))

(assert (=> b!5319771 d!1708992))

(declare-fun bm!379816 () Bool)

(declare-fun call!379821 () (InoxSet Context!8722))

(assert (=> bm!379816 (= call!379821 (derivationStepZipperDown!425 (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343))))))) (Context!8723 (t!374441 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))) (h!67556 s!2326)))))

(declare-fun b!5320419 () Bool)

(declare-fun e!3305427 () (InoxSet Context!8722))

(declare-fun e!3305428 () (InoxSet Context!8722))

(assert (=> b!5320419 (= e!3305427 e!3305428)))

(declare-fun c!924669 () Bool)

(assert (=> b!5320419 (= c!924669 ((_ is Cons!61106) (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343))))))))))

(declare-fun b!5320420 () Bool)

(assert (=> b!5320420 (= e!3305428 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5320421 () Bool)

(assert (=> b!5320421 (= e!3305427 ((_ map or) call!379821 (derivationStepZipperUp!349 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))) (h!67556 s!2326))))))

(declare-fun b!5320422 () Bool)

(assert (=> b!5320422 (= e!3305428 call!379821)))

(declare-fun b!5320423 () Bool)

(declare-fun e!3305429 () Bool)

(assert (=> b!5320423 (= e!3305429 (nullable!5146 (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))))))

(declare-fun d!1708994 () Bool)

(declare-fun c!924668 () Bool)

(assert (=> d!1708994 (= c!924668 e!3305429)))

(declare-fun res!2256791 () Bool)

(assert (=> d!1708994 (=> (not res!2256791) (not e!3305429))))

(assert (=> d!1708994 (= res!2256791 ((_ is Cons!61106) (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343))))))))))

(assert (=> d!1708994 (= (derivationStepZipperUp!349 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343))))) (h!67556 s!2326)) e!3305427)))

(assert (= (and d!1708994 res!2256791) b!5320423))

(assert (= (and d!1708994 c!924668) b!5320421))

(assert (= (and d!1708994 (not c!924668)) b!5320419))

(assert (= (and b!5320419 c!924669) b!5320422))

(assert (= (and b!5320419 (not c!924669)) b!5320420))

(assert (= (or b!5320421 b!5320422) bm!379816))

(declare-fun m!6355544 () Bool)

(assert (=> bm!379816 m!6355544))

(declare-fun m!6355546 () Bool)

(assert (=> b!5320421 m!6355546))

(declare-fun m!6355548 () Bool)

(assert (=> b!5320423 m!6355548))

(assert (=> b!5319771 d!1708994))

(declare-fun bm!379817 () Bool)

(declare-fun call!379822 () (InoxSet Context!8722))

(assert (=> bm!379817 (= call!379822 (derivationStepZipperDown!425 (h!67554 (exprs!4861 (h!67555 zl!343))) (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343)))) (h!67556 s!2326)))))

(declare-fun b!5320424 () Bool)

(declare-fun e!3305430 () (InoxSet Context!8722))

(declare-fun e!3305431 () (InoxSet Context!8722))

(assert (=> b!5320424 (= e!3305430 e!3305431)))

(declare-fun c!924671 () Bool)

(assert (=> b!5320424 (= c!924671 ((_ is Cons!61106) (exprs!4861 (h!67555 zl!343))))))

(declare-fun b!5320425 () Bool)

(assert (=> b!5320425 (= e!3305431 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5320426 () Bool)

(assert (=> b!5320426 (= e!3305430 ((_ map or) call!379822 (derivationStepZipperUp!349 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343)))) (h!67556 s!2326))))))

(declare-fun b!5320427 () Bool)

(assert (=> b!5320427 (= e!3305431 call!379822)))

(declare-fun b!5320428 () Bool)

(declare-fun e!3305432 () Bool)

(assert (=> b!5320428 (= e!3305432 (nullable!5146 (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun d!1708996 () Bool)

(declare-fun c!924670 () Bool)

(assert (=> d!1708996 (= c!924670 e!3305432)))

(declare-fun res!2256792 () Bool)

(assert (=> d!1708996 (=> (not res!2256792) (not e!3305432))))

(assert (=> d!1708996 (= res!2256792 ((_ is Cons!61106) (exprs!4861 (h!67555 zl!343))))))

(assert (=> d!1708996 (= (derivationStepZipperUp!349 (h!67555 zl!343) (h!67556 s!2326)) e!3305430)))

(assert (= (and d!1708996 res!2256792) b!5320428))

(assert (= (and d!1708996 c!924670) b!5320426))

(assert (= (and d!1708996 (not c!924670)) b!5320424))

(assert (= (and b!5320424 c!924671) b!5320427))

(assert (= (and b!5320424 (not c!924671)) b!5320425))

(assert (= (or b!5320426 b!5320427) bm!379817))

(declare-fun m!6355550 () Bool)

(assert (=> bm!379817 m!6355550))

(declare-fun m!6355552 () Bool)

(assert (=> b!5320426 m!6355552))

(assert (=> b!5320428 m!6355048))

(assert (=> b!5319771 d!1708996))

(declare-fun bm!379818 () Bool)

(declare-fun call!379823 () (InoxSet Context!8722))

(assert (=> bm!379818 (= call!379823 (derivationStepZipperDown!425 (h!67554 (exprs!4861 lt!2171724)) (Context!8723 (t!374441 (exprs!4861 lt!2171724))) (h!67556 s!2326)))))

(declare-fun b!5320429 () Bool)

(declare-fun e!3305433 () (InoxSet Context!8722))

(declare-fun e!3305434 () (InoxSet Context!8722))

(assert (=> b!5320429 (= e!3305433 e!3305434)))

(declare-fun c!924673 () Bool)

(assert (=> b!5320429 (= c!924673 ((_ is Cons!61106) (exprs!4861 lt!2171724)))))

(declare-fun b!5320430 () Bool)

(assert (=> b!5320430 (= e!3305434 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5320431 () Bool)

(assert (=> b!5320431 (= e!3305433 ((_ map or) call!379823 (derivationStepZipperUp!349 (Context!8723 (t!374441 (exprs!4861 lt!2171724))) (h!67556 s!2326))))))

(declare-fun b!5320432 () Bool)

(assert (=> b!5320432 (= e!3305434 call!379823)))

(declare-fun b!5320433 () Bool)

(declare-fun e!3305435 () Bool)

(assert (=> b!5320433 (= e!3305435 (nullable!5146 (h!67554 (exprs!4861 lt!2171724))))))

(declare-fun d!1708998 () Bool)

(declare-fun c!924672 () Bool)

(assert (=> d!1708998 (= c!924672 e!3305435)))

(declare-fun res!2256793 () Bool)

(assert (=> d!1708998 (=> (not res!2256793) (not e!3305435))))

(assert (=> d!1708998 (= res!2256793 ((_ is Cons!61106) (exprs!4861 lt!2171724)))))

(assert (=> d!1708998 (= (derivationStepZipperUp!349 lt!2171724 (h!67556 s!2326)) e!3305433)))

(assert (= (and d!1708998 res!2256793) b!5320433))

(assert (= (and d!1708998 c!924672) b!5320431))

(assert (= (and d!1708998 (not c!924672)) b!5320429))

(assert (= (and b!5320429 c!924673) b!5320432))

(assert (= (and b!5320429 (not c!924673)) b!5320430))

(assert (= (or b!5320431 b!5320432) bm!379818))

(declare-fun m!6355554 () Bool)

(assert (=> bm!379818 m!6355554))

(declare-fun m!6355556 () Bool)

(assert (=> b!5320431 m!6355556))

(declare-fun m!6355558 () Bool)

(assert (=> b!5320433 m!6355558))

(assert (=> b!5319771 d!1708998))

(declare-fun d!1709000 () Bool)

(declare-fun lt!2171864 () Regex!14977)

(assert (=> d!1709000 (validRegex!6713 lt!2171864)))

(assert (=> d!1709000 (= lt!2171864 (generalisedUnion!906 (unfocusZipperList!419 zl!343)))))

(assert (=> d!1709000 (= (unfocusZipper!719 zl!343) lt!2171864)))

(declare-fun bs!1232956 () Bool)

(assert (= bs!1232956 d!1709000))

(declare-fun m!6355560 () Bool)

(assert (=> bs!1232956 m!6355560))

(assert (=> bs!1232956 m!6355076))

(assert (=> bs!1232956 m!6355076))

(assert (=> bs!1232956 m!6355078))

(assert (=> b!5319780 d!1709000))

(declare-fun d!1709002 () Bool)

(declare-fun res!2256798 () Bool)

(declare-fun e!3305440 () Bool)

(assert (=> d!1709002 (=> res!2256798 e!3305440)))

(assert (=> d!1709002 (= res!2256798 ((_ is Nil!61106) lt!2171737))))

(assert (=> d!1709002 (= (forall!14395 lt!2171737 lambda!271287) e!3305440)))

(declare-fun b!5320438 () Bool)

(declare-fun e!3305441 () Bool)

(assert (=> b!5320438 (= e!3305440 e!3305441)))

(declare-fun res!2256799 () Bool)

(assert (=> b!5320438 (=> (not res!2256799) (not e!3305441))))

(declare-fun dynLambda!24155 (Int Regex!14977) Bool)

(assert (=> b!5320438 (= res!2256799 (dynLambda!24155 lambda!271287 (h!67554 lt!2171737)))))

(declare-fun b!5320439 () Bool)

(assert (=> b!5320439 (= e!3305441 (forall!14395 (t!374441 lt!2171737) lambda!271287))))

(assert (= (and d!1709002 (not res!2256798)) b!5320438))

(assert (= (and b!5320438 res!2256799) b!5320439))

(declare-fun b_lambda!204653 () Bool)

(assert (=> (not b_lambda!204653) (not b!5320438)))

(declare-fun m!6355562 () Bool)

(assert (=> b!5320438 m!6355562))

(declare-fun m!6355564 () Bool)

(assert (=> b!5320439 m!6355564))

(assert (=> b!5319791 d!1709002))

(declare-fun bs!1232957 () Bool)

(declare-fun d!1709004 () Bool)

(assert (= bs!1232957 (and d!1709004 d!1708952)))

(declare-fun lambda!271367 () Int)

(assert (=> bs!1232957 (= lambda!271367 lambda!271352)))

(declare-fun bs!1232958 () Bool)

(assert (= bs!1232958 (and d!1709004 d!1708948)))

(assert (=> bs!1232958 (= lambda!271367 lambda!271346)))

(declare-fun bs!1232959 () Bool)

(assert (= bs!1232959 (and d!1709004 d!1708950)))

(assert (=> bs!1232959 (= lambda!271367 lambda!271349)))

(declare-fun bs!1232960 () Bool)

(assert (= bs!1232960 (and d!1709004 d!1708944)))

(assert (=> bs!1232960 (= lambda!271367 lambda!271345)))

(declare-fun bs!1232961 () Bool)

(assert (= bs!1232961 (and d!1709004 b!5319791)))

(assert (=> bs!1232961 (= lambda!271367 lambda!271287)))

(declare-fun b!5320460 () Bool)

(declare-fun e!3305458 () Bool)

(declare-fun e!3305459 () Bool)

(assert (=> b!5320460 (= e!3305458 e!3305459)))

(declare-fun c!924684 () Bool)

(assert (=> b!5320460 (= c!924684 (isEmpty!33075 (exprs!4861 (h!67555 zl!343))))))

(declare-fun b!5320461 () Bool)

(declare-fun e!3305457 () Bool)

(declare-fun lt!2171867 () Regex!14977)

(declare-fun isConcat!402 (Regex!14977) Bool)

(assert (=> b!5320461 (= e!3305457 (isConcat!402 lt!2171867))))

(declare-fun b!5320462 () Bool)

(assert (=> b!5320462 (= e!3305457 (= lt!2171867 (head!11407 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun b!5320463 () Bool)

(declare-fun e!3305455 () Regex!14977)

(declare-fun e!3305454 () Regex!14977)

(assert (=> b!5320463 (= e!3305455 e!3305454)))

(declare-fun c!924682 () Bool)

(assert (=> b!5320463 (= c!924682 ((_ is Cons!61106) (exprs!4861 (h!67555 zl!343))))))

(declare-fun b!5320464 () Bool)

(assert (=> b!5320464 (= e!3305454 EmptyExpr!14977)))

(declare-fun b!5320465 () Bool)

(assert (=> b!5320465 (= e!3305455 (h!67554 (exprs!4861 (h!67555 zl!343))))))

(declare-fun b!5320466 () Bool)

(assert (=> b!5320466 (= e!3305454 (Concat!23822 (h!67554 (exprs!4861 (h!67555 zl!343))) (generalisedConcat!646 (t!374441 (exprs!4861 (h!67555 zl!343))))))))

(declare-fun b!5320467 () Bool)

(declare-fun isEmptyExpr!879 (Regex!14977) Bool)

(assert (=> b!5320467 (= e!3305459 (isEmptyExpr!879 lt!2171867))))

(assert (=> d!1709004 e!3305458))

(declare-fun res!2256804 () Bool)

(assert (=> d!1709004 (=> (not res!2256804) (not e!3305458))))

(assert (=> d!1709004 (= res!2256804 (validRegex!6713 lt!2171867))))

(assert (=> d!1709004 (= lt!2171867 e!3305455)))

(declare-fun c!924685 () Bool)

(declare-fun e!3305456 () Bool)

(assert (=> d!1709004 (= c!924685 e!3305456)))

(declare-fun res!2256805 () Bool)

(assert (=> d!1709004 (=> (not res!2256805) (not e!3305456))))

(assert (=> d!1709004 (= res!2256805 ((_ is Cons!61106) (exprs!4861 (h!67555 zl!343))))))

(assert (=> d!1709004 (forall!14395 (exprs!4861 (h!67555 zl!343)) lambda!271367)))

(assert (=> d!1709004 (= (generalisedConcat!646 (exprs!4861 (h!67555 zl!343))) lt!2171867)))

(declare-fun b!5320468 () Bool)

(assert (=> b!5320468 (= e!3305459 e!3305457)))

(declare-fun c!924683 () Bool)

(assert (=> b!5320468 (= c!924683 (isEmpty!33075 (tail!10504 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun b!5320469 () Bool)

(assert (=> b!5320469 (= e!3305456 (isEmpty!33075 (t!374441 (exprs!4861 (h!67555 zl!343)))))))

(assert (= (and d!1709004 res!2256805) b!5320469))

(assert (= (and d!1709004 c!924685) b!5320465))

(assert (= (and d!1709004 (not c!924685)) b!5320463))

(assert (= (and b!5320463 c!924682) b!5320466))

(assert (= (and b!5320463 (not c!924682)) b!5320464))

(assert (= (and d!1709004 res!2256804) b!5320460))

(assert (= (and b!5320460 c!924684) b!5320467))

(assert (= (and b!5320460 (not c!924684)) b!5320468))

(assert (= (and b!5320468 c!924683) b!5320462))

(assert (= (and b!5320468 (not c!924683)) b!5320461))

(declare-fun m!6355566 () Bool)

(assert (=> b!5320467 m!6355566))

(declare-fun m!6355568 () Bool)

(assert (=> b!5320461 m!6355568))

(declare-fun m!6355570 () Bool)

(assert (=> b!5320468 m!6355570))

(assert (=> b!5320468 m!6355570))

(declare-fun m!6355572 () Bool)

(assert (=> b!5320468 m!6355572))

(declare-fun m!6355574 () Bool)

(assert (=> b!5320466 m!6355574))

(assert (=> b!5320469 m!6355010))

(declare-fun m!6355576 () Bool)

(assert (=> d!1709004 m!6355576))

(declare-fun m!6355578 () Bool)

(assert (=> d!1709004 m!6355578))

(declare-fun m!6355580 () Bool)

(assert (=> b!5320460 m!6355580))

(declare-fun m!6355582 () Bool)

(assert (=> b!5320462 m!6355582))

(assert (=> b!5319782 d!1709004))

(declare-fun d!1709006 () Bool)

(assert (=> d!1709006 (= (isEmpty!33075 (t!374441 (exprs!4861 (h!67555 zl!343)))) ((_ is Nil!61106) (t!374441 (exprs!4861 (h!67555 zl!343)))))))

(assert (=> b!5319792 d!1709006))

(declare-fun d!1709008 () Bool)

(declare-fun e!3305462 () Bool)

(assert (=> d!1709008 (= (matchZipper!1221 ((_ map or) lt!2171730 lt!2171739) (t!374443 s!2326)) e!3305462)))

(declare-fun res!2256808 () Bool)

(assert (=> d!1709008 (=> res!2256808 e!3305462)))

(assert (=> d!1709008 (= res!2256808 (matchZipper!1221 lt!2171730 (t!374443 s!2326)))))

(declare-fun lt!2171870 () Unit!153426)

(declare-fun choose!39826 ((InoxSet Context!8722) (InoxSet Context!8722) List!61232) Unit!153426)

(assert (=> d!1709008 (= lt!2171870 (choose!39826 lt!2171730 lt!2171739 (t!374443 s!2326)))))

(assert (=> d!1709008 (= (lemmaZipperConcatMatchesSameAsBothZippers!214 lt!2171730 lt!2171739 (t!374443 s!2326)) lt!2171870)))

(declare-fun b!5320472 () Bool)

(assert (=> b!5320472 (= e!3305462 (matchZipper!1221 lt!2171739 (t!374443 s!2326)))))

(assert (= (and d!1709008 (not res!2256808)) b!5320472))

(assert (=> d!1709008 m!6355022))

(assert (=> d!1709008 m!6355020))

(declare-fun m!6355584 () Bool)

(assert (=> d!1709008 m!6355584))

(assert (=> b!5320472 m!6355060))

(assert (=> b!5319772 d!1709008))

(assert (=> b!5319772 d!1708958))

(declare-fun d!1709010 () Bool)

(declare-fun c!924686 () Bool)

(assert (=> d!1709010 (= c!924686 (isEmpty!33079 (t!374443 s!2326)))))

(declare-fun e!3305463 () Bool)

(assert (=> d!1709010 (= (matchZipper!1221 ((_ map or) lt!2171730 lt!2171739) (t!374443 s!2326)) e!3305463)))

(declare-fun b!5320473 () Bool)

(assert (=> b!5320473 (= e!3305463 (nullableZipper!1344 ((_ map or) lt!2171730 lt!2171739)))))

(declare-fun b!5320474 () Bool)

(assert (=> b!5320474 (= e!3305463 (matchZipper!1221 (derivationStepZipper!1218 ((_ map or) lt!2171730 lt!2171739) (head!11406 (t!374443 s!2326))) (tail!10503 (t!374443 s!2326))))))

(assert (= (and d!1709010 c!924686) b!5320473))

(assert (= (and d!1709010 (not c!924686)) b!5320474))

(assert (=> d!1709010 m!6355322))

(declare-fun m!6355586 () Bool)

(assert (=> b!5320473 m!6355586))

(assert (=> b!5320474 m!6355326))

(assert (=> b!5320474 m!6355326))

(declare-fun m!6355588 () Bool)

(assert (=> b!5320474 m!6355588))

(assert (=> b!5320474 m!6355330))

(assert (=> b!5320474 m!6355588))

(assert (=> b!5320474 m!6355330))

(declare-fun m!6355590 () Bool)

(assert (=> b!5320474 m!6355590))

(assert (=> b!5319772 d!1709010))

(declare-fun bs!1232962 () Bool)

(declare-fun b!5320510 () Bool)

(assert (= bs!1232962 (and b!5320510 d!1708972)))

(declare-fun lambda!271372 () Int)

(assert (=> bs!1232962 (not (= lambda!271372 lambda!271361))))

(declare-fun bs!1232963 () Bool)

(assert (= bs!1232963 (and b!5320510 d!1708966)))

(assert (=> bs!1232963 (not (= lambda!271372 lambda!271355))))

(declare-fun bs!1232964 () Bool)

(assert (= bs!1232964 (and b!5320510 b!5319790)))

(assert (=> bs!1232964 (not (= lambda!271372 lambda!271284))))

(assert (=> bs!1232962 (not (= lambda!271372 lambda!271360))))

(assert (=> bs!1232964 (not (= lambda!271372 lambda!271285))))

(assert (=> b!5320510 true))

(assert (=> b!5320510 true))

(declare-fun bs!1232965 () Bool)

(declare-fun b!5320516 () Bool)

(assert (= bs!1232965 (and b!5320516 d!1708972)))

(declare-fun lambda!271373 () Int)

(assert (=> bs!1232965 (= lambda!271373 lambda!271361)))

(declare-fun bs!1232966 () Bool)

(assert (= bs!1232966 (and b!5320516 b!5320510)))

(assert (=> bs!1232966 (not (= lambda!271373 lambda!271372))))

(declare-fun bs!1232967 () Bool)

(assert (= bs!1232967 (and b!5320516 d!1708966)))

(assert (=> bs!1232967 (not (= lambda!271373 lambda!271355))))

(declare-fun bs!1232968 () Bool)

(assert (= bs!1232968 (and b!5320516 b!5319790)))

(assert (=> bs!1232968 (not (= lambda!271373 lambda!271284))))

(assert (=> bs!1232965 (not (= lambda!271373 lambda!271360))))

(assert (=> bs!1232968 (= lambda!271373 lambda!271285)))

(assert (=> b!5320516 true))

(assert (=> b!5320516 true))

(declare-fun b!5320507 () Bool)

(declare-fun c!924696 () Bool)

(assert (=> b!5320507 (= c!924696 ((_ is Union!14977) r!7292))))

(declare-fun e!3305486 () Bool)

(declare-fun e!3305488 () Bool)

(assert (=> b!5320507 (= e!3305486 e!3305488)))

(declare-fun b!5320508 () Bool)

(declare-fun e!3305487 () Bool)

(declare-fun call!379828 () Bool)

(assert (=> b!5320508 (= e!3305487 call!379828)))

(declare-fun b!5320509 () Bool)

(declare-fun e!3305485 () Bool)

(assert (=> b!5320509 (= e!3305488 e!3305485)))

(declare-fun c!924698 () Bool)

(assert (=> b!5320509 (= c!924698 ((_ is Star!14977) r!7292))))

(declare-fun e!3305483 () Bool)

(declare-fun call!379829 () Bool)

(assert (=> b!5320510 (= e!3305483 call!379829)))

(declare-fun b!5320511 () Bool)

(assert (=> b!5320511 (= e!3305486 (= s!2326 (Cons!61108 (c!924467 r!7292) Nil!61108)))))

(declare-fun bm!379823 () Bool)

(assert (=> bm!379823 (= call!379829 (Exists!2158 (ite c!924698 lambda!271372 lambda!271373)))))

(declare-fun b!5320512 () Bool)

(declare-fun e!3305482 () Bool)

(assert (=> b!5320512 (= e!3305487 e!3305482)))

(declare-fun res!2256827 () Bool)

(assert (=> b!5320512 (= res!2256827 (not ((_ is EmptyLang!14977) r!7292)))))

(assert (=> b!5320512 (=> (not res!2256827) (not e!3305482))))

(declare-fun b!5320513 () Bool)

(declare-fun res!2256826 () Bool)

(assert (=> b!5320513 (=> res!2256826 e!3305483)))

(assert (=> b!5320513 (= res!2256826 call!379828)))

(assert (=> b!5320513 (= e!3305485 e!3305483)))

(declare-fun b!5320514 () Bool)

(declare-fun c!924697 () Bool)

(assert (=> b!5320514 (= c!924697 ((_ is ElementMatch!14977) r!7292))))

(assert (=> b!5320514 (= e!3305482 e!3305486)))

(declare-fun b!5320515 () Bool)

(declare-fun e!3305484 () Bool)

(assert (=> b!5320515 (= e!3305484 (matchRSpec!2080 (regTwo!30467 r!7292) s!2326))))

(declare-fun d!1709012 () Bool)

(declare-fun c!924695 () Bool)

(assert (=> d!1709012 (= c!924695 ((_ is EmptyExpr!14977) r!7292))))

(assert (=> d!1709012 (= (matchRSpec!2080 r!7292 s!2326) e!3305487)))

(assert (=> b!5320516 (= e!3305485 call!379829)))

(declare-fun bm!379824 () Bool)

(assert (=> bm!379824 (= call!379828 (isEmpty!33079 s!2326))))

(declare-fun b!5320517 () Bool)

(assert (=> b!5320517 (= e!3305488 e!3305484)))

(declare-fun res!2256825 () Bool)

(assert (=> b!5320517 (= res!2256825 (matchRSpec!2080 (regOne!30467 r!7292) s!2326))))

(assert (=> b!5320517 (=> res!2256825 e!3305484)))

(assert (= (and d!1709012 c!924695) b!5320508))

(assert (= (and d!1709012 (not c!924695)) b!5320512))

(assert (= (and b!5320512 res!2256827) b!5320514))

(assert (= (and b!5320514 c!924697) b!5320511))

(assert (= (and b!5320514 (not c!924697)) b!5320507))

(assert (= (and b!5320507 c!924696) b!5320517))

(assert (= (and b!5320507 (not c!924696)) b!5320509))

(assert (= (and b!5320517 (not res!2256825)) b!5320515))

(assert (= (and b!5320509 c!924698) b!5320513))

(assert (= (and b!5320509 (not c!924698)) b!5320516))

(assert (= (and b!5320513 (not res!2256826)) b!5320510))

(assert (= (or b!5320510 b!5320516) bm!379823))

(assert (= (or b!5320508 b!5320513) bm!379824))

(declare-fun m!6355592 () Bool)

(assert (=> bm!379823 m!6355592))

(declare-fun m!6355594 () Bool)

(assert (=> b!5320515 m!6355594))

(declare-fun m!6355596 () Bool)

(assert (=> bm!379824 m!6355596))

(declare-fun m!6355598 () Bool)

(assert (=> b!5320517 m!6355598))

(assert (=> b!5319774 d!1709012))

(declare-fun b!5320546 () Bool)

(declare-fun res!2256847 () Bool)

(declare-fun e!3305507 () Bool)

(assert (=> b!5320546 (=> (not res!2256847) (not e!3305507))))

(assert (=> b!5320546 (= res!2256847 (isEmpty!33079 (tail!10503 s!2326)))))

(declare-fun d!1709014 () Bool)

(declare-fun e!3305503 () Bool)

(assert (=> d!1709014 e!3305503))

(declare-fun c!924706 () Bool)

(assert (=> d!1709014 (= c!924706 ((_ is EmptyExpr!14977) r!7292))))

(declare-fun lt!2171873 () Bool)

(declare-fun e!3305509 () Bool)

(assert (=> d!1709014 (= lt!2171873 e!3305509)))

(declare-fun c!924705 () Bool)

(assert (=> d!1709014 (= c!924705 (isEmpty!33079 s!2326))))

(assert (=> d!1709014 (validRegex!6713 r!7292)))

(assert (=> d!1709014 (= (matchR!7162 r!7292 s!2326) lt!2171873)))

(declare-fun bm!379827 () Bool)

(declare-fun call!379832 () Bool)

(assert (=> bm!379827 (= call!379832 (isEmpty!33079 s!2326))))

(declare-fun b!5320547 () Bool)

(declare-fun res!2256851 () Bool)

(declare-fun e!3305506 () Bool)

(assert (=> b!5320547 (=> res!2256851 e!3305506)))

(assert (=> b!5320547 (= res!2256851 (not ((_ is ElementMatch!14977) r!7292)))))

(declare-fun e!3305508 () Bool)

(assert (=> b!5320547 (= e!3305508 e!3305506)))

(declare-fun b!5320548 () Bool)

(assert (=> b!5320548 (= e!3305503 e!3305508)))

(declare-fun c!924707 () Bool)

(assert (=> b!5320548 (= c!924707 ((_ is EmptyLang!14977) r!7292))))

(declare-fun b!5320549 () Bool)

(declare-fun e!3305504 () Bool)

(declare-fun e!3305505 () Bool)

(assert (=> b!5320549 (= e!3305504 e!3305505)))

(declare-fun res!2256846 () Bool)

(assert (=> b!5320549 (=> res!2256846 e!3305505)))

(assert (=> b!5320549 (= res!2256846 call!379832)))

(declare-fun b!5320550 () Bool)

(assert (=> b!5320550 (= e!3305503 (= lt!2171873 call!379832))))

(declare-fun b!5320551 () Bool)

(assert (=> b!5320551 (= e!3305509 (nullable!5146 r!7292))))

(declare-fun b!5320552 () Bool)

(declare-fun derivativeStep!4165 (Regex!14977 C!30224) Regex!14977)

(assert (=> b!5320552 (= e!3305509 (matchR!7162 (derivativeStep!4165 r!7292 (head!11406 s!2326)) (tail!10503 s!2326)))))

(declare-fun b!5320553 () Bool)

(declare-fun res!2256849 () Bool)

(assert (=> b!5320553 (=> (not res!2256849) (not e!3305507))))

(assert (=> b!5320553 (= res!2256849 (not call!379832))))

(declare-fun b!5320554 () Bool)

(assert (=> b!5320554 (= e!3305506 e!3305504)))

(declare-fun res!2256845 () Bool)

(assert (=> b!5320554 (=> (not res!2256845) (not e!3305504))))

(assert (=> b!5320554 (= res!2256845 (not lt!2171873))))

(declare-fun b!5320555 () Bool)

(assert (=> b!5320555 (= e!3305507 (= (head!11406 s!2326) (c!924467 r!7292)))))

(declare-fun b!5320556 () Bool)

(assert (=> b!5320556 (= e!3305505 (not (= (head!11406 s!2326) (c!924467 r!7292))))))

(declare-fun b!5320557 () Bool)

(declare-fun res!2256850 () Bool)

(assert (=> b!5320557 (=> res!2256850 e!3305505)))

(assert (=> b!5320557 (= res!2256850 (not (isEmpty!33079 (tail!10503 s!2326))))))

(declare-fun b!5320558 () Bool)

(assert (=> b!5320558 (= e!3305508 (not lt!2171873))))

(declare-fun b!5320559 () Bool)

(declare-fun res!2256848 () Bool)

(assert (=> b!5320559 (=> res!2256848 e!3305506)))

(assert (=> b!5320559 (= res!2256848 e!3305507)))

(declare-fun res!2256844 () Bool)

(assert (=> b!5320559 (=> (not res!2256844) (not e!3305507))))

(assert (=> b!5320559 (= res!2256844 lt!2171873)))

(assert (= (and d!1709014 c!924705) b!5320551))

(assert (= (and d!1709014 (not c!924705)) b!5320552))

(assert (= (and d!1709014 c!924706) b!5320550))

(assert (= (and d!1709014 (not c!924706)) b!5320548))

(assert (= (and b!5320548 c!924707) b!5320558))

(assert (= (and b!5320548 (not c!924707)) b!5320547))

(assert (= (and b!5320547 (not res!2256851)) b!5320559))

(assert (= (and b!5320559 res!2256844) b!5320553))

(assert (= (and b!5320553 res!2256849) b!5320546))

(assert (= (and b!5320546 res!2256847) b!5320555))

(assert (= (and b!5320559 (not res!2256848)) b!5320554))

(assert (= (and b!5320554 res!2256845) b!5320549))

(assert (= (and b!5320549 (not res!2256846)) b!5320557))

(assert (= (and b!5320557 (not res!2256850)) b!5320556))

(assert (= (or b!5320550 b!5320553 b!5320549) bm!379827))

(declare-fun m!6355600 () Bool)

(assert (=> b!5320555 m!6355600))

(declare-fun m!6355602 () Bool)

(assert (=> b!5320557 m!6355602))

(assert (=> b!5320557 m!6355602))

(declare-fun m!6355604 () Bool)

(assert (=> b!5320557 m!6355604))

(assert (=> b!5320546 m!6355602))

(assert (=> b!5320546 m!6355602))

(assert (=> b!5320546 m!6355604))

(declare-fun m!6355606 () Bool)

(assert (=> b!5320551 m!6355606))

(assert (=> d!1709014 m!6355596))

(assert (=> d!1709014 m!6355068))

(assert (=> bm!379827 m!6355596))

(assert (=> b!5320556 m!6355600))

(assert (=> b!5320552 m!6355600))

(assert (=> b!5320552 m!6355600))

(declare-fun m!6355608 () Bool)

(assert (=> b!5320552 m!6355608))

(assert (=> b!5320552 m!6355602))

(assert (=> b!5320552 m!6355608))

(assert (=> b!5320552 m!6355602))

(declare-fun m!6355610 () Bool)

(assert (=> b!5320552 m!6355610))

(assert (=> b!5319774 d!1709014))

(declare-fun d!1709016 () Bool)

(assert (=> d!1709016 (= (matchR!7162 r!7292 s!2326) (matchRSpec!2080 r!7292 s!2326))))

(declare-fun lt!2171876 () Unit!153426)

(declare-fun choose!39827 (Regex!14977 List!61232) Unit!153426)

(assert (=> d!1709016 (= lt!2171876 (choose!39827 r!7292 s!2326))))

(assert (=> d!1709016 (validRegex!6713 r!7292)))

(assert (=> d!1709016 (= (mainMatchTheorem!2080 r!7292 s!2326) lt!2171876)))

(declare-fun bs!1232969 () Bool)

(assert (= bs!1232969 d!1709016))

(assert (=> bs!1232969 m!6355014))

(assert (=> bs!1232969 m!6355012))

(declare-fun m!6355612 () Bool)

(assert (=> bs!1232969 m!6355612))

(assert (=> bs!1232969 m!6355068))

(assert (=> b!5319774 d!1709016))

(declare-fun b!5320571 () Bool)

(declare-fun e!3305512 () Bool)

(declare-fun tp!1481552 () Bool)

(declare-fun tp!1481550 () Bool)

(assert (=> b!5320571 (= e!3305512 (and tp!1481552 tp!1481550))))

(declare-fun b!5320572 () Bool)

(declare-fun tp!1481554 () Bool)

(assert (=> b!5320572 (= e!3305512 tp!1481554)))

(assert (=> b!5319770 (= tp!1481473 e!3305512)))

(declare-fun b!5320570 () Bool)

(assert (=> b!5320570 (= e!3305512 tp_is_empty!39207)))

(declare-fun b!5320573 () Bool)

(declare-fun tp!1481553 () Bool)

(declare-fun tp!1481551 () Bool)

(assert (=> b!5320573 (= e!3305512 (and tp!1481553 tp!1481551))))

(assert (= (and b!5319770 ((_ is ElementMatch!14977) (reg!15306 r!7292))) b!5320570))

(assert (= (and b!5319770 ((_ is Concat!23822) (reg!15306 r!7292))) b!5320571))

(assert (= (and b!5319770 ((_ is Star!14977) (reg!15306 r!7292))) b!5320572))

(assert (= (and b!5319770 ((_ is Union!14977) (reg!15306 r!7292))) b!5320573))

(declare-fun b!5320578 () Bool)

(declare-fun e!3305515 () Bool)

(declare-fun tp!1481559 () Bool)

(declare-fun tp!1481560 () Bool)

(assert (=> b!5320578 (= e!3305515 (and tp!1481559 tp!1481560))))

(assert (=> b!5319784 (= tp!1481476 e!3305515)))

(assert (= (and b!5319784 ((_ is Cons!61106) (exprs!4861 setElem!34243))) b!5320578))

(declare-fun b!5320579 () Bool)

(declare-fun e!3305516 () Bool)

(declare-fun tp!1481561 () Bool)

(declare-fun tp!1481562 () Bool)

(assert (=> b!5320579 (= e!3305516 (and tp!1481561 tp!1481562))))

(assert (=> b!5319799 (= tp!1481478 e!3305516)))

(assert (= (and b!5319799 ((_ is Cons!61106) (exprs!4861 (h!67555 zl!343)))) b!5320579))

(declare-fun b!5320581 () Bool)

(declare-fun e!3305517 () Bool)

(declare-fun tp!1481565 () Bool)

(declare-fun tp!1481563 () Bool)

(assert (=> b!5320581 (= e!3305517 (and tp!1481565 tp!1481563))))

(declare-fun b!5320582 () Bool)

(declare-fun tp!1481567 () Bool)

(assert (=> b!5320582 (= e!3305517 tp!1481567)))

(assert (=> b!5319795 (= tp!1481479 e!3305517)))

(declare-fun b!5320580 () Bool)

(assert (=> b!5320580 (= e!3305517 tp_is_empty!39207)))

(declare-fun b!5320583 () Bool)

(declare-fun tp!1481566 () Bool)

(declare-fun tp!1481564 () Bool)

(assert (=> b!5320583 (= e!3305517 (and tp!1481566 tp!1481564))))

(assert (= (and b!5319795 ((_ is ElementMatch!14977) (regOne!30466 r!7292))) b!5320580))

(assert (= (and b!5319795 ((_ is Concat!23822) (regOne!30466 r!7292))) b!5320581))

(assert (= (and b!5319795 ((_ is Star!14977) (regOne!30466 r!7292))) b!5320582))

(assert (= (and b!5319795 ((_ is Union!14977) (regOne!30466 r!7292))) b!5320583))

(declare-fun b!5320585 () Bool)

(declare-fun e!3305518 () Bool)

(declare-fun tp!1481570 () Bool)

(declare-fun tp!1481568 () Bool)

(assert (=> b!5320585 (= e!3305518 (and tp!1481570 tp!1481568))))

(declare-fun b!5320586 () Bool)

(declare-fun tp!1481572 () Bool)

(assert (=> b!5320586 (= e!3305518 tp!1481572)))

(assert (=> b!5319795 (= tp!1481472 e!3305518)))

(declare-fun b!5320584 () Bool)

(assert (=> b!5320584 (= e!3305518 tp_is_empty!39207)))

(declare-fun b!5320587 () Bool)

(declare-fun tp!1481571 () Bool)

(declare-fun tp!1481569 () Bool)

(assert (=> b!5320587 (= e!3305518 (and tp!1481571 tp!1481569))))

(assert (= (and b!5319795 ((_ is ElementMatch!14977) (regTwo!30466 r!7292))) b!5320584))

(assert (= (and b!5319795 ((_ is Concat!23822) (regTwo!30466 r!7292))) b!5320585))

(assert (= (and b!5319795 ((_ is Star!14977) (regTwo!30466 r!7292))) b!5320586))

(assert (= (and b!5319795 ((_ is Union!14977) (regTwo!30466 r!7292))) b!5320587))

(declare-fun condSetEmpty!34249 () Bool)

(assert (=> setNonEmpty!34243 (= condSetEmpty!34249 (= setRest!34243 ((as const (Array Context!8722 Bool)) false)))))

(declare-fun setRes!34249 () Bool)

(assert (=> setNonEmpty!34243 (= tp!1481477 setRes!34249)))

(declare-fun setIsEmpty!34249 () Bool)

(assert (=> setIsEmpty!34249 setRes!34249))

(declare-fun e!3305521 () Bool)

(declare-fun setNonEmpty!34249 () Bool)

(declare-fun tp!1481578 () Bool)

(declare-fun setElem!34249 () Context!8722)

(assert (=> setNonEmpty!34249 (= setRes!34249 (and tp!1481578 (inv!80689 setElem!34249) e!3305521))))

(declare-fun setRest!34249 () (InoxSet Context!8722))

(assert (=> setNonEmpty!34249 (= setRest!34243 ((_ map or) (store ((as const (Array Context!8722 Bool)) false) setElem!34249 true) setRest!34249))))

(declare-fun b!5320592 () Bool)

(declare-fun tp!1481577 () Bool)

(assert (=> b!5320592 (= e!3305521 tp!1481577)))

(assert (= (and setNonEmpty!34243 condSetEmpty!34249) setIsEmpty!34249))

(assert (= (and setNonEmpty!34243 (not condSetEmpty!34249)) setNonEmpty!34249))

(assert (= setNonEmpty!34249 b!5320592))

(declare-fun m!6355614 () Bool)

(assert (=> setNonEmpty!34249 m!6355614))

(declare-fun b!5320600 () Bool)

(declare-fun e!3305527 () Bool)

(declare-fun tp!1481583 () Bool)

(assert (=> b!5320600 (= e!3305527 tp!1481583)))

(declare-fun b!5320599 () Bool)

(declare-fun tp!1481584 () Bool)

(declare-fun e!3305526 () Bool)

(assert (=> b!5320599 (= e!3305526 (and (inv!80689 (h!67555 (t!374442 zl!343))) e!3305527 tp!1481584))))

(assert (=> b!5319778 (= tp!1481480 e!3305526)))

(assert (= b!5320599 b!5320600))

(assert (= (and b!5319778 ((_ is Cons!61107) (t!374442 zl!343))) b!5320599))

(declare-fun m!6355616 () Bool)

(assert (=> b!5320599 m!6355616))

(declare-fun b!5320605 () Bool)

(declare-fun e!3305530 () Bool)

(declare-fun tp!1481587 () Bool)

(assert (=> b!5320605 (= e!3305530 (and tp_is_empty!39207 tp!1481587))))

(assert (=> b!5319793 (= tp!1481475 e!3305530)))

(assert (= (and b!5319793 ((_ is Cons!61108) (t!374443 s!2326))) b!5320605))

(declare-fun b!5320607 () Bool)

(declare-fun e!3305531 () Bool)

(declare-fun tp!1481590 () Bool)

(declare-fun tp!1481588 () Bool)

(assert (=> b!5320607 (= e!3305531 (and tp!1481590 tp!1481588))))

(declare-fun b!5320608 () Bool)

(declare-fun tp!1481592 () Bool)

(assert (=> b!5320608 (= e!3305531 tp!1481592)))

(assert (=> b!5319783 (= tp!1481481 e!3305531)))

(declare-fun b!5320606 () Bool)

(assert (=> b!5320606 (= e!3305531 tp_is_empty!39207)))

(declare-fun b!5320609 () Bool)

(declare-fun tp!1481591 () Bool)

(declare-fun tp!1481589 () Bool)

(assert (=> b!5320609 (= e!3305531 (and tp!1481591 tp!1481589))))

(assert (= (and b!5319783 ((_ is ElementMatch!14977) (regOne!30467 r!7292))) b!5320606))

(assert (= (and b!5319783 ((_ is Concat!23822) (regOne!30467 r!7292))) b!5320607))

(assert (= (and b!5319783 ((_ is Star!14977) (regOne!30467 r!7292))) b!5320608))

(assert (= (and b!5319783 ((_ is Union!14977) (regOne!30467 r!7292))) b!5320609))

(declare-fun b!5320611 () Bool)

(declare-fun e!3305532 () Bool)

(declare-fun tp!1481595 () Bool)

(declare-fun tp!1481593 () Bool)

(assert (=> b!5320611 (= e!3305532 (and tp!1481595 tp!1481593))))

(declare-fun b!5320612 () Bool)

(declare-fun tp!1481597 () Bool)

(assert (=> b!5320612 (= e!3305532 tp!1481597)))

(assert (=> b!5319783 (= tp!1481474 e!3305532)))

(declare-fun b!5320610 () Bool)

(assert (=> b!5320610 (= e!3305532 tp_is_empty!39207)))

(declare-fun b!5320613 () Bool)

(declare-fun tp!1481596 () Bool)

(declare-fun tp!1481594 () Bool)

(assert (=> b!5320613 (= e!3305532 (and tp!1481596 tp!1481594))))

(assert (= (and b!5319783 ((_ is ElementMatch!14977) (regTwo!30467 r!7292))) b!5320610))

(assert (= (and b!5319783 ((_ is Concat!23822) (regTwo!30467 r!7292))) b!5320611))

(assert (= (and b!5319783 ((_ is Star!14977) (regTwo!30467 r!7292))) b!5320612))

(assert (= (and b!5319783 ((_ is Union!14977) (regTwo!30467 r!7292))) b!5320613))

(declare-fun b_lambda!204655 () Bool)

(assert (= b_lambda!204649 (or b!5319771 b_lambda!204655)))

(declare-fun bs!1232970 () Bool)

(declare-fun d!1709018 () Bool)

(assert (= bs!1232970 (and d!1709018 b!5319771)))

(assert (=> bs!1232970 (= (dynLambda!24154 lambda!271286 lt!2171733) (derivationStepZipperUp!349 lt!2171733 (h!67556 s!2326)))))

(assert (=> bs!1232970 m!6355034))

(assert (=> d!1708982 d!1709018))

(declare-fun b_lambda!204657 () Bool)

(assert (= b_lambda!204651 (or b!5319771 b_lambda!204657)))

(declare-fun bs!1232971 () Bool)

(declare-fun d!1709020 () Bool)

(assert (= bs!1232971 (and d!1709020 b!5319771)))

(assert (=> bs!1232971 (= (dynLambda!24154 lambda!271286 (h!67555 zl!343)) (derivationStepZipperUp!349 (h!67555 zl!343) (h!67556 s!2326)))))

(assert (=> bs!1232971 m!6355042))

(assert (=> d!1708986 d!1709020))

(declare-fun b_lambda!204659 () Bool)

(assert (= b_lambda!204653 (or b!5319791 b_lambda!204659)))

(declare-fun bs!1232972 () Bool)

(declare-fun d!1709022 () Bool)

(assert (= bs!1232972 (and d!1709022 b!5319791)))

(assert (=> bs!1232972 (= (dynLambda!24155 lambda!271287 (h!67554 lt!2171737)) (validRegex!6713 (h!67554 lt!2171737)))))

(declare-fun m!6355618 () Bool)

(assert (=> bs!1232972 m!6355618))

(assert (=> b!5320438 d!1709022))

(check-sat (not bs!1232970) (not d!1708964) (not b!5320552) (not bm!379796) tp_is_empty!39207 (not bs!1232971) (not b!5320599) (not b!5320469) (not b!5320426) (not b!5320176) (not d!1708992) (not bm!379797) (not b!5320607) (not b!5320350) (not b!5320240) (not b!5320546) (not bm!379806) (not bm!379816) (not b!5320076) (not b!5320300) (not d!1708952) (not d!1709004) (not b!5320377) (not b!5320304) (not b!5320439) (not b!5320468) (not b_lambda!204657) (not bm!379818) (not bm!379815) (not d!1708988) (not b!5320517) (not bm!379804) (not b!5320582) (not b!5320609) (not d!1708956) (not b!5320472) (not bm!379823) (not d!1708944) (not b!5320573) (not b!5320605) (not bm!379814) (not d!1708972) (not d!1708930) (not d!1708974) (not b!5320581) (not b!5320311) (not b!5320555) (not b!5320578) (not d!1708978) (not b!5320201) (not d!1708950) (not b!5320079) (not b_lambda!204655) (not b!5320421) (not b!5320611) (not b!5320340) (not bm!379824) (not b!5320342) (not b!5320571) (not b!5320242) (not b!5320298) (not b!5320557) (not b!5320460) (not b!5320382) (not b!5320467) (not b!5320431) (not d!1708968) (not b!5320297) (not b!5320461) (not b!5320378) (not b!5320579) (not b!5320423) (not b!5320379) (not b!5320178) (not b!5320551) (not d!1708976) (not b!5320428) (not d!1708958) (not bm!379793) (not b!5320077) (not b!5320592) (not b!5320405) (not b!5320343) (not d!1708984) (not b!5320341) (not b!5320474) (not b!5320572) (not bm!379827) (not d!1708920) (not d!1709016) (not b!5320274) (not d!1709008) (not d!1709010) (not b!5320416) (not b!5320462) (not b!5320473) (not b!5320403) (not b!5320299) (not b!5320515) (not b!5320433) (not setNonEmpty!34249) (not bm!379817) (not b!5320613) (not b!5320303) (not b!5320585) (not b!5320587) (not bm!379809) (not b!5320466) (not d!1708970) (not b!5320586) (not b!5320608) (not b!5320583) (not b_lambda!204659) (not d!1709014) (not b!5320600) (not d!1708900) (not b!5320157) (not d!1708982) (not b!5320302) (not d!1708948) (not bs!1232972) (not d!1708966) (not d!1709000) (not b!5320078) (not bm!379811) (not b!5320348) (not b!5320381) (not b!5320556) (not b!5320612) (not b!5320380) (not d!1708986) (not b!5320331) (not b!5320159))
(check-sat)
(get-model)

(declare-fun d!1709260 () Bool)

(assert (=> d!1709260 (= (isEmpty!33079 (t!374443 s!2326)) ((_ is Nil!61108) (t!374443 s!2326)))))

(assert (=> d!1708920 d!1709260))

(declare-fun d!1709264 () Bool)

(assert (=> d!1709264 (= (nullable!5146 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343))))) (nullableFct!1496 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343))))))))

(declare-fun bs!1233178 () Bool)

(assert (= bs!1233178 d!1709264))

(declare-fun m!6356146 () Bool)

(assert (=> bs!1233178 m!6356146))

(assert (=> b!5320416 d!1709264))

(assert (=> d!1708982 d!1708978))

(declare-fun d!1709266 () Bool)

(assert (=> d!1709266 (= (flatMap!704 lt!2171735 lambda!271286) (dynLambda!24154 lambda!271286 lt!2171733))))

(assert (=> d!1709266 true))

(declare-fun _$13!1897 () Unit!153426)

(assert (=> d!1709266 (= (choose!39825 lt!2171735 lt!2171733 lambda!271286) _$13!1897)))

(declare-fun b_lambda!204683 () Bool)

(assert (=> (not b_lambda!204683) (not d!1709266)))

(declare-fun bs!1233182 () Bool)

(assert (= bs!1233182 d!1709266))

(assert (=> bs!1233182 m!6355036))

(assert (=> bs!1233182 m!6355518))

(assert (=> d!1708982 d!1709266))

(declare-fun d!1709276 () Bool)

(declare-fun c!924867 () Bool)

(assert (=> d!1709276 (= c!924867 (isEmpty!33079 (tail!10503 (t!374443 s!2326))))))

(declare-fun e!3305847 () Bool)

(assert (=> d!1709276 (= (matchZipper!1221 (derivationStepZipper!1218 lt!2171742 (head!11406 (t!374443 s!2326))) (tail!10503 (t!374443 s!2326))) e!3305847)))

(declare-fun b!5321121 () Bool)

(assert (=> b!5321121 (= e!3305847 (nullableZipper!1344 (derivationStepZipper!1218 lt!2171742 (head!11406 (t!374443 s!2326)))))))

(declare-fun b!5321122 () Bool)

(assert (=> b!5321122 (= e!3305847 (matchZipper!1221 (derivationStepZipper!1218 (derivationStepZipper!1218 lt!2171742 (head!11406 (t!374443 s!2326))) (head!11406 (tail!10503 (t!374443 s!2326)))) (tail!10503 (tail!10503 (t!374443 s!2326)))))))

(assert (= (and d!1709276 c!924867) b!5321121))

(assert (= (and d!1709276 (not c!924867)) b!5321122))

(assert (=> d!1709276 m!6355330))

(declare-fun m!6356162 () Bool)

(assert (=> d!1709276 m!6356162))

(assert (=> b!5321121 m!6355336))

(declare-fun m!6356164 () Bool)

(assert (=> b!5321121 m!6356164))

(assert (=> b!5321122 m!6355330))

(declare-fun m!6356166 () Bool)

(assert (=> b!5321122 m!6356166))

(assert (=> b!5321122 m!6355336))

(assert (=> b!5321122 m!6356166))

(declare-fun m!6356168 () Bool)

(assert (=> b!5321122 m!6356168))

(assert (=> b!5321122 m!6355330))

(declare-fun m!6356170 () Bool)

(assert (=> b!5321122 m!6356170))

(assert (=> b!5321122 m!6356168))

(assert (=> b!5321122 m!6356170))

(declare-fun m!6356172 () Bool)

(assert (=> b!5321122 m!6356172))

(assert (=> b!5320079 d!1709276))

(declare-fun bs!1233196 () Bool)

(declare-fun d!1709278 () Bool)

(assert (= bs!1233196 (and d!1709278 b!5319771)))

(declare-fun lambda!271416 () Int)

(assert (=> bs!1233196 (= (= (head!11406 (t!374443 s!2326)) (h!67556 s!2326)) (= lambda!271416 lambda!271286))))

(declare-fun bs!1233197 () Bool)

(assert (= bs!1233197 (and d!1709278 d!1708984)))

(assert (=> bs!1233197 (= (= (head!11406 (t!374443 s!2326)) (h!67556 s!2326)) (= lambda!271416 lambda!271364))))

(assert (=> d!1709278 true))

(assert (=> d!1709278 (= (derivationStepZipper!1218 lt!2171742 (head!11406 (t!374443 s!2326))) (flatMap!704 lt!2171742 lambda!271416))))

(declare-fun bs!1233201 () Bool)

(assert (= bs!1233201 d!1709278))

(declare-fun m!6356174 () Bool)

(assert (=> bs!1233201 m!6356174))

(assert (=> b!5320079 d!1709278))

(declare-fun d!1709280 () Bool)

(assert (=> d!1709280 (= (head!11406 (t!374443 s!2326)) (h!67556 (t!374443 s!2326)))))

(assert (=> b!5320079 d!1709280))

(declare-fun d!1709282 () Bool)

(assert (=> d!1709282 (= (tail!10503 (t!374443 s!2326)) (t!374443 (t!374443 s!2326)))))

(assert (=> b!5320079 d!1709282))

(declare-fun d!1709284 () Bool)

(declare-fun res!2257046 () Bool)

(declare-fun e!3305848 () Bool)

(assert (=> d!1709284 (=> res!2257046 e!3305848)))

(assert (=> d!1709284 (= res!2257046 ((_ is Nil!61106) (exprs!4861 setElem!34243)))))

(assert (=> d!1709284 (= (forall!14395 (exprs!4861 setElem!34243) lambda!271345) e!3305848)))

(declare-fun b!5321123 () Bool)

(declare-fun e!3305849 () Bool)

(assert (=> b!5321123 (= e!3305848 e!3305849)))

(declare-fun res!2257047 () Bool)

(assert (=> b!5321123 (=> (not res!2257047) (not e!3305849))))

(assert (=> b!5321123 (= res!2257047 (dynLambda!24155 lambda!271345 (h!67554 (exprs!4861 setElem!34243))))))

(declare-fun b!5321124 () Bool)

(assert (=> b!5321124 (= e!3305849 (forall!14395 (t!374441 (exprs!4861 setElem!34243)) lambda!271345))))

(assert (= (and d!1709284 (not res!2257046)) b!5321123))

(assert (= (and b!5321123 res!2257047) b!5321124))

(declare-fun b_lambda!204685 () Bool)

(assert (=> (not b_lambda!204685) (not b!5321123)))

(declare-fun m!6356176 () Bool)

(assert (=> b!5321123 m!6356176))

(declare-fun m!6356178 () Bool)

(assert (=> b!5321124 m!6356178))

(assert (=> d!1708944 d!1709284))

(declare-fun bs!1233225 () Bool)

(declare-fun d!1709286 () Bool)

(assert (= bs!1233225 (and d!1709286 b!5320157)))

(declare-fun lambda!271421 () Int)

(assert (=> bs!1233225 (not (= lambda!271421 lambda!271338))))

(declare-fun bs!1233226 () Bool)

(assert (= bs!1233226 (and d!1709286 b!5320159)))

(assert (=> bs!1233226 (not (= lambda!271421 lambda!271339))))

(declare-fun bs!1233227 () Bool)

(assert (= bs!1233227 (and d!1709286 b!5320176)))

(assert (=> bs!1233227 (not (= lambda!271421 lambda!271341))))

(declare-fun bs!1233228 () Bool)

(assert (= bs!1233228 (and d!1709286 b!5320178)))

(assert (=> bs!1233228 (not (= lambda!271421 lambda!271342))))

(declare-fun exists!2011 ((InoxSet Context!8722) Int) Bool)

(assert (=> d!1709286 (= (nullableZipper!1344 lt!2171740) (exists!2011 lt!2171740 lambda!271421))))

(declare-fun bs!1233232 () Bool)

(assert (= bs!1233232 d!1709286))

(declare-fun m!6356200 () Bool)

(assert (=> bs!1233232 m!6356200))

(assert (=> b!5320340 d!1709286))

(assert (=> bs!1232970 d!1708980))

(declare-fun d!1709296 () Bool)

(assert (=> d!1709296 (= (head!11406 s!2326) (h!67556 s!2326))))

(assert (=> b!5320555 d!1709296))

(declare-fun d!1709298 () Bool)

(assert (=> d!1709298 (= (nullable!5146 (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))) (nullableFct!1496 (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))))))

(declare-fun bs!1233234 () Bool)

(assert (= bs!1233234 d!1709298))

(declare-fun m!6356202 () Bool)

(assert (=> bs!1233234 m!6356202))

(assert (=> b!5320423 d!1709298))

(declare-fun d!1709300 () Bool)

(declare-fun lt!2171936 () Int)

(assert (=> d!1709300 (>= lt!2171936 0)))

(declare-fun e!3305854 () Int)

(assert (=> d!1709300 (= lt!2171936 e!3305854)))

(declare-fun c!924871 () Bool)

(assert (=> d!1709300 (= c!924871 ((_ is Cons!61106) (exprs!4861 (h!67555 lt!2171723))))))

(assert (=> d!1709300 (= (contextDepthTotal!110 (h!67555 lt!2171723)) lt!2171936)))

(declare-fun b!5321130 () Bool)

(assert (=> b!5321130 (= e!3305854 (+ (regexDepthTotal!49 (h!67554 (exprs!4861 (h!67555 lt!2171723)))) (contextDepthTotal!110 (Context!8723 (t!374441 (exprs!4861 (h!67555 lt!2171723)))))))))

(declare-fun b!5321131 () Bool)

(assert (=> b!5321131 (= e!3305854 1)))

(assert (= (and d!1709300 c!924871) b!5321130))

(assert (= (and d!1709300 (not c!924871)) b!5321131))

(declare-fun m!6356204 () Bool)

(assert (=> b!5321130 m!6356204))

(declare-fun m!6356206 () Bool)

(assert (=> b!5321130 m!6356206))

(assert (=> b!5320240 d!1709300))

(declare-fun d!1709302 () Bool)

(declare-fun lt!2171937 () Int)

(assert (=> d!1709302 (>= lt!2171937 0)))

(declare-fun e!3305855 () Int)

(assert (=> d!1709302 (= lt!2171937 e!3305855)))

(declare-fun c!924872 () Bool)

(assert (=> d!1709302 (= c!924872 ((_ is Cons!61107) (t!374442 lt!2171723)))))

(assert (=> d!1709302 (= (zipperDepthTotal!130 (t!374442 lt!2171723)) lt!2171937)))

(declare-fun b!5321132 () Bool)

(assert (=> b!5321132 (= e!3305855 (+ (contextDepthTotal!110 (h!67555 (t!374442 lt!2171723))) (zipperDepthTotal!130 (t!374442 (t!374442 lt!2171723)))))))

(declare-fun b!5321133 () Bool)

(assert (=> b!5321133 (= e!3305855 0)))

(assert (= (and d!1709302 c!924872) b!5321132))

(assert (= (and d!1709302 (not c!924872)) b!5321133))

(declare-fun m!6356208 () Bool)

(assert (=> b!5321132 m!6356208))

(declare-fun m!6356210 () Bool)

(assert (=> b!5321132 m!6356210))

(assert (=> b!5320240 d!1709302))

(declare-fun d!1709304 () Bool)

(assert (=> d!1709304 (= (isUnion!319 lt!2171835) ((_ is Union!14977) lt!2171835))))

(assert (=> b!5320298 d!1709304))

(declare-fun bs!1233249 () Bool)

(declare-fun d!1709306 () Bool)

(assert (= bs!1233249 (and d!1709306 d!1709004)))

(declare-fun lambda!271425 () Int)

(assert (=> bs!1233249 (= lambda!271425 lambda!271367)))

(declare-fun bs!1233252 () Bool)

(assert (= bs!1233252 (and d!1709306 d!1708952)))

(assert (=> bs!1233252 (= lambda!271425 lambda!271352)))

(declare-fun bs!1233254 () Bool)

(assert (= bs!1233254 (and d!1709306 d!1708948)))

(assert (=> bs!1233254 (= lambda!271425 lambda!271346)))

(declare-fun bs!1233256 () Bool)

(assert (= bs!1233256 (and d!1709306 d!1708950)))

(assert (=> bs!1233256 (= lambda!271425 lambda!271349)))

(declare-fun bs!1233258 () Bool)

(assert (= bs!1233258 (and d!1709306 d!1708944)))

(assert (=> bs!1233258 (= lambda!271425 lambda!271345)))

(declare-fun bs!1233260 () Bool)

(assert (= bs!1233260 (and d!1709306 b!5319791)))

(assert (=> bs!1233260 (= lambda!271425 lambda!271287)))

(assert (=> d!1709306 (= (inv!80689 (h!67555 (t!374442 zl!343))) (forall!14395 (exprs!4861 (h!67555 (t!374442 zl!343))) lambda!271425))))

(declare-fun bs!1233262 () Bool)

(assert (= bs!1233262 d!1709306))

(declare-fun m!6356212 () Bool)

(assert (=> bs!1233262 m!6356212))

(assert (=> b!5320599 d!1709306))

(declare-fun d!1709308 () Bool)

(declare-fun res!2257055 () Bool)

(declare-fun e!3305860 () Bool)

(assert (=> d!1709308 (=> res!2257055 e!3305860)))

(assert (=> d!1709308 (= res!2257055 ((_ is Nil!61107) (t!374442 lt!2171723)))))

(assert (=> d!1709308 (= (forall!14397 (t!374442 lt!2171723) lambda!271338) e!3305860)))

(declare-fun b!5321138 () Bool)

(declare-fun e!3305861 () Bool)

(assert (=> b!5321138 (= e!3305860 e!3305861)))

(declare-fun res!2257056 () Bool)

(assert (=> b!5321138 (=> (not res!2257056) (not e!3305861))))

(declare-fun dynLambda!24156 (Int Context!8722) Bool)

(assert (=> b!5321138 (= res!2257056 (dynLambda!24156 lambda!271338 (h!67555 (t!374442 lt!2171723))))))

(declare-fun b!5321139 () Bool)

(assert (=> b!5321139 (= e!3305861 (forall!14397 (t!374442 (t!374442 lt!2171723)) lambda!271338))))

(assert (= (and d!1709308 (not res!2257055)) b!5321138))

(assert (= (and b!5321138 res!2257056) b!5321139))

(declare-fun b_lambda!204689 () Bool)

(assert (=> (not b_lambda!204689) (not b!5321138)))

(declare-fun m!6356228 () Bool)

(assert (=> b!5321138 m!6356228))

(declare-fun m!6356230 () Bool)

(assert (=> b!5321139 m!6356230))

(assert (=> b!5320157 d!1709308))

(declare-fun bs!1233278 () Bool)

(declare-fun d!1709314 () Bool)

(assert (= bs!1233278 (and d!1709314 b!5320159)))

(declare-fun lambda!271429 () Int)

(assert (=> bs!1233278 (not (= lambda!271429 lambda!271339))))

(declare-fun bs!1233279 () Bool)

(assert (= bs!1233279 (and d!1709314 b!5320178)))

(assert (=> bs!1233279 (not (= lambda!271429 lambda!271342))))

(declare-fun bs!1233280 () Bool)

(assert (= bs!1233280 (and d!1709314 b!5320157)))

(assert (=> bs!1233280 (not (= lambda!271429 lambda!271338))))

(declare-fun bs!1233281 () Bool)

(assert (= bs!1233281 (and d!1709314 b!5320176)))

(assert (=> bs!1233281 (not (= lambda!271429 lambda!271341))))

(declare-fun bs!1233282 () Bool)

(assert (= bs!1233282 (and d!1709314 d!1709286)))

(assert (=> bs!1233282 (not (= lambda!271429 lambda!271421))))

(assert (=> d!1709314 true))

(assert (=> d!1709314 true))

(declare-fun order!27079 () Int)

(declare-fun order!27081 () Int)

(declare-fun dynLambda!24157 (Int Int) Int)

(declare-fun dynLambda!24158 (Int Int) Int)

(assert (=> d!1709314 (< (dynLambda!24157 order!27079 lambda!271337) (dynLambda!24158 order!27081 lambda!271429))))

(assert (=> d!1709314 (forall!14397 (t!374442 lt!2171723) lambda!271429)))

(declare-fun lt!2171940 () Unit!153426)

(declare-fun choose!39828 (List!61231 Int Int Int) Unit!153426)

(assert (=> d!1709314 (= lt!2171940 (choose!39828 (t!374442 lt!2171723) lt!2171816 (zipperDepth!86 (t!374442 lt!2171723)) lambda!271337))))

(assert (=> d!1709314 (>= lt!2171816 (zipperDepth!86 (t!374442 lt!2171723)))))

(assert (=> d!1709314 (= (lemmaForallContextDepthBiggerThanTransitive!44 (t!374442 lt!2171723) lt!2171816 (zipperDepth!86 (t!374442 lt!2171723)) lambda!271337) lt!2171940)))

(declare-fun bs!1233283 () Bool)

(assert (= bs!1233283 d!1709314))

(declare-fun m!6356232 () Bool)

(assert (=> bs!1233283 m!6356232))

(assert (=> bs!1233283 m!6355348))

(declare-fun m!6356234 () Bool)

(assert (=> bs!1233283 m!6356234))

(assert (=> b!5320157 d!1709314))

(declare-fun bs!1233284 () Bool)

(declare-fun b!5321221 () Bool)

(assert (= bs!1233284 (and b!5321221 b!5320157)))

(declare-fun lambda!271430 () Int)

(assert (=> bs!1233284 (= lambda!271430 lambda!271337)))

(declare-fun bs!1233285 () Bool)

(assert (= bs!1233285 (and b!5321221 b!5320176)))

(assert (=> bs!1233285 (= lambda!271430 lambda!271340)))

(declare-fun bs!1233286 () Bool)

(assert (= bs!1233286 (and b!5321221 b!5320159)))

(declare-fun lt!2171943 () Int)

(declare-fun lambda!271431 () Int)

(assert (=> bs!1233286 (= (= lt!2171943 lt!2171817) (= lambda!271431 lambda!271339))))

(declare-fun bs!1233287 () Bool)

(assert (= bs!1233287 (and b!5321221 b!5320178)))

(assert (=> bs!1233287 (= (= lt!2171943 lt!2171822) (= lambda!271431 lambda!271342))))

(declare-fun bs!1233288 () Bool)

(assert (= bs!1233288 (and b!5321221 d!1709314)))

(assert (=> bs!1233288 (not (= lambda!271431 lambda!271429))))

(assert (=> bs!1233284 (= (= lt!2171943 lt!2171816) (= lambda!271431 lambda!271338))))

(assert (=> bs!1233285 (= (= lt!2171943 lt!2171821) (= lambda!271431 lambda!271341))))

(declare-fun bs!1233289 () Bool)

(assert (= bs!1233289 (and b!5321221 d!1709286)))

(assert (=> bs!1233289 (not (= lambda!271431 lambda!271421))))

(assert (=> b!5321221 true))

(declare-fun bs!1233290 () Bool)

(declare-fun b!5321224 () Bool)

(assert (= bs!1233290 (and b!5321224 b!5320159)))

(declare-fun lambda!271432 () Int)

(declare-fun lt!2171944 () Int)

(assert (=> bs!1233290 (= (= lt!2171944 lt!2171817) (= lambda!271432 lambda!271339))))

(declare-fun bs!1233291 () Bool)

(assert (= bs!1233291 (and b!5321224 b!5321221)))

(assert (=> bs!1233291 (= (= lt!2171944 lt!2171943) (= lambda!271432 lambda!271431))))

(declare-fun bs!1233292 () Bool)

(assert (= bs!1233292 (and b!5321224 b!5320178)))

(assert (=> bs!1233292 (= (= lt!2171944 lt!2171822) (= lambda!271432 lambda!271342))))

(declare-fun bs!1233293 () Bool)

(assert (= bs!1233293 (and b!5321224 d!1709314)))

(assert (=> bs!1233293 (not (= lambda!271432 lambda!271429))))

(declare-fun bs!1233294 () Bool)

(assert (= bs!1233294 (and b!5321224 b!5320157)))

(assert (=> bs!1233294 (= (= lt!2171944 lt!2171816) (= lambda!271432 lambda!271338))))

(declare-fun bs!1233295 () Bool)

(assert (= bs!1233295 (and b!5321224 b!5320176)))

(assert (=> bs!1233295 (= (= lt!2171944 lt!2171821) (= lambda!271432 lambda!271341))))

(declare-fun bs!1233296 () Bool)

(assert (= bs!1233296 (and b!5321224 d!1709286)))

(assert (=> bs!1233296 (not (= lambda!271432 lambda!271421))))

(assert (=> b!5321224 true))

(declare-fun d!1709316 () Bool)

(declare-fun e!3305883 () Bool)

(assert (=> d!1709316 e!3305883))

(declare-fun res!2257057 () Bool)

(assert (=> d!1709316 (=> (not res!2257057) (not e!3305883))))

(assert (=> d!1709316 (= res!2257057 (>= lt!2171944 0))))

(declare-fun e!3305885 () Int)

(assert (=> d!1709316 (= lt!2171944 e!3305885)))

(declare-fun c!924875 () Bool)

(assert (=> d!1709316 (= c!924875 ((_ is Cons!61107) (t!374442 lt!2171723)))))

(assert (=> d!1709316 (= (zipperDepth!86 (t!374442 lt!2171723)) lt!2171944)))

(assert (=> b!5321221 (= e!3305885 lt!2171943)))

(assert (=> b!5321221 (= lt!2171943 (maxBigInt!0 (contextDepth!50 (h!67555 (t!374442 lt!2171723))) (zipperDepth!86 (t!374442 (t!374442 lt!2171723)))))))

(declare-fun lt!2171941 () Unit!153426)

(assert (=> b!5321221 (= lt!2171941 (lemmaForallContextDepthBiggerThanTransitive!44 (t!374442 (t!374442 lt!2171723)) lt!2171943 (zipperDepth!86 (t!374442 (t!374442 lt!2171723))) lambda!271430))))

(assert (=> b!5321221 (forall!14397 (t!374442 (t!374442 lt!2171723)) lambda!271431)))

(declare-fun lt!2171942 () Unit!153426)

(assert (=> b!5321221 (= lt!2171942 lt!2171941)))

(declare-fun b!5321223 () Bool)

(assert (=> b!5321223 (= e!3305885 0)))

(assert (=> b!5321224 (= e!3305883 (forall!14397 (t!374442 lt!2171723) lambda!271432))))

(assert (= (and d!1709316 c!924875) b!5321221))

(assert (= (and d!1709316 (not c!924875)) b!5321223))

(assert (= (and d!1709316 res!2257057) b!5321224))

(declare-fun m!6356240 () Bool)

(assert (=> b!5321221 m!6356240))

(declare-fun m!6356242 () Bool)

(assert (=> b!5321221 m!6356242))

(assert (=> b!5321221 m!6356240))

(declare-fun m!6356244 () Bool)

(assert (=> b!5321221 m!6356244))

(assert (=> b!5321221 m!6356240))

(declare-fun m!6356246 () Bool)

(assert (=> b!5321221 m!6356246))

(declare-fun m!6356248 () Bool)

(assert (=> b!5321221 m!6356248))

(assert (=> b!5321221 m!6356244))

(declare-fun m!6356250 () Bool)

(assert (=> b!5321224 m!6356250))

(assert (=> b!5320157 d!1709316))

(declare-fun bs!1233307 () Bool)

(declare-fun b!5321268 () Bool)

(assert (= bs!1233307 (and b!5321268 d!1709004)))

(declare-fun lambda!271437 () Int)

(assert (=> bs!1233307 (not (= lambda!271437 lambda!271367))))

(declare-fun bs!1233308 () Bool)

(assert (= bs!1233308 (and b!5321268 d!1708952)))

(assert (=> bs!1233308 (not (= lambda!271437 lambda!271352))))

(declare-fun bs!1233309 () Bool)

(assert (= bs!1233309 (and b!5321268 d!1708948)))

(assert (=> bs!1233309 (not (= lambda!271437 lambda!271346))))

(declare-fun bs!1233310 () Bool)

(assert (= bs!1233310 (and b!5321268 d!1708950)))

(assert (=> bs!1233310 (not (= lambda!271437 lambda!271349))))

(declare-fun bs!1233311 () Bool)

(assert (= bs!1233311 (and b!5321268 d!1708944)))

(assert (=> bs!1233311 (not (= lambda!271437 lambda!271345))))

(declare-fun bs!1233312 () Bool)

(assert (= bs!1233312 (and b!5321268 d!1709306)))

(assert (=> bs!1233312 (not (= lambda!271437 lambda!271425))))

(declare-fun bs!1233313 () Bool)

(assert (= bs!1233313 (and b!5321268 b!5319791)))

(assert (=> bs!1233313 (not (= lambda!271437 lambda!271287))))

(assert (=> b!5321268 true))

(declare-fun bs!1233314 () Bool)

(declare-fun b!5321270 () Bool)

(assert (= bs!1233314 (and b!5321270 d!1709004)))

(declare-fun lambda!271438 () Int)

(assert (=> bs!1233314 (not (= lambda!271438 lambda!271367))))

(declare-fun bs!1233315 () Bool)

(assert (= bs!1233315 (and b!5321270 d!1708952)))

(assert (=> bs!1233315 (not (= lambda!271438 lambda!271352))))

(declare-fun bs!1233316 () Bool)

(assert (= bs!1233316 (and b!5321270 d!1708950)))

(assert (=> bs!1233316 (not (= lambda!271438 lambda!271349))))

(declare-fun bs!1233317 () Bool)

(assert (= bs!1233317 (and b!5321270 d!1708944)))

(assert (=> bs!1233317 (not (= lambda!271438 lambda!271345))))

(declare-fun bs!1233318 () Bool)

(assert (= bs!1233318 (and b!5321270 d!1709306)))

(assert (=> bs!1233318 (not (= lambda!271438 lambda!271425))))

(declare-fun bs!1233319 () Bool)

(assert (= bs!1233319 (and b!5321270 b!5319791)))

(assert (=> bs!1233319 (not (= lambda!271438 lambda!271287))))

(declare-fun bs!1233320 () Bool)

(assert (= bs!1233320 (and b!5321270 d!1708948)))

(assert (=> bs!1233320 (not (= lambda!271438 lambda!271346))))

(declare-fun bs!1233321 () Bool)

(assert (= bs!1233321 (and b!5321270 b!5321268)))

(declare-fun lt!2171956 () Int)

(declare-fun lt!2171955 () Int)

(assert (=> bs!1233321 (= (= lt!2171956 lt!2171955) (= lambda!271438 lambda!271437))))

(assert (=> b!5321270 true))

(declare-fun d!1709318 () Bool)

(declare-fun e!3305904 () Bool)

(assert (=> d!1709318 e!3305904))

(declare-fun res!2257060 () Bool)

(assert (=> d!1709318 (=> (not res!2257060) (not e!3305904))))

(assert (=> d!1709318 (= res!2257060 (>= lt!2171956 0))))

(declare-fun e!3305903 () Int)

(assert (=> d!1709318 (= lt!2171956 e!3305903)))

(declare-fun c!924879 () Bool)

(assert (=> d!1709318 (= c!924879 ((_ is Cons!61106) (exprs!4861 (h!67555 lt!2171723))))))

(assert (=> d!1709318 (= (contextDepth!50 (h!67555 lt!2171723)) lt!2171956)))

(assert (=> b!5321268 (= e!3305903 lt!2171955)))

(declare-fun regexDepth!159 (Regex!14977) Int)

(assert (=> b!5321268 (= lt!2171955 (maxBigInt!0 (regexDepth!159 (h!67554 (exprs!4861 (h!67555 lt!2171723)))) (contextDepth!50 (Context!8723 (t!374441 (exprs!4861 (h!67555 lt!2171723)))))))))

(declare-fun lt!2171954 () Unit!153426)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!8 (List!61230 Int Int) Unit!153426)

(assert (=> b!5321268 (= lt!2171954 (lemmaForallRegexDepthBiggerThanTransitive!8 (t!374441 (exprs!4861 (h!67555 lt!2171723))) lt!2171955 (contextDepth!50 (Context!8723 (t!374441 (exprs!4861 (h!67555 lt!2171723)))))))))

(assert (=> b!5321268 (forall!14395 (t!374441 (exprs!4861 (h!67555 lt!2171723))) lambda!271437)))

(declare-fun lt!2171953 () Unit!153426)

(assert (=> b!5321268 (= lt!2171953 lt!2171954)))

(declare-fun b!5321269 () Bool)

(assert (=> b!5321269 (= e!3305903 0)))

(assert (=> b!5321270 (= e!3305904 (forall!14395 (exprs!4861 (h!67555 lt!2171723)) lambda!271438))))

(assert (= (and d!1709318 c!924879) b!5321268))

(assert (= (and d!1709318 (not c!924879)) b!5321269))

(assert (= (and d!1709318 res!2257060) b!5321270))

(declare-fun m!6356262 () Bool)

(assert (=> b!5321268 m!6356262))

(declare-fun m!6356264 () Bool)

(assert (=> b!5321268 m!6356264))

(assert (=> b!5321268 m!6356262))

(declare-fun m!6356266 () Bool)

(assert (=> b!5321268 m!6356266))

(assert (=> b!5321268 m!6356262))

(declare-fun m!6356268 () Bool)

(assert (=> b!5321268 m!6356268))

(declare-fun m!6356270 () Bool)

(assert (=> b!5321268 m!6356270))

(assert (=> b!5321268 m!6356266))

(declare-fun m!6356272 () Bool)

(assert (=> b!5321270 m!6356272))

(assert (=> b!5320157 d!1709318))

(declare-fun d!1709340 () Bool)

(assert (=> d!1709340 (= (maxBigInt!0 (contextDepth!50 (h!67555 lt!2171723)) (zipperDepth!86 (t!374442 lt!2171723))) (ite (>= (contextDepth!50 (h!67555 lt!2171723)) (zipperDepth!86 (t!374442 lt!2171723))) (contextDepth!50 (h!67555 lt!2171723)) (zipperDepth!86 (t!374442 lt!2171723))))))

(assert (=> b!5320157 d!1709340))

(declare-fun d!1709342 () Bool)

(assert (=> d!1709342 (= (isEmptyExpr!879 lt!2171867) ((_ is EmptyExpr!14977) lt!2171867))))

(assert (=> b!5320467 d!1709342))

(declare-fun b!5321274 () Bool)

(declare-fun e!3305907 () Bool)

(declare-fun e!3305908 () Bool)

(assert (=> b!5321274 (= e!3305907 e!3305908)))

(declare-fun res!2257064 () Bool)

(assert (=> b!5321274 (= res!2257064 (not (nullable!5146 (reg!15306 (ite c!924641 (reg!15306 r!7292) (ite c!924640 (regTwo!30467 r!7292) (regTwo!30466 r!7292)))))))))

(assert (=> b!5321274 (=> (not res!2257064) (not e!3305908))))

(declare-fun call!379947 () Bool)

(declare-fun bm!379942 () Bool)

(declare-fun c!924880 () Bool)

(declare-fun c!924881 () Bool)

(assert (=> bm!379942 (= call!379947 (validRegex!6713 (ite c!924881 (reg!15306 (ite c!924641 (reg!15306 r!7292) (ite c!924640 (regTwo!30467 r!7292) (regTwo!30466 r!7292)))) (ite c!924880 (regTwo!30467 (ite c!924641 (reg!15306 r!7292) (ite c!924640 (regTwo!30467 r!7292) (regTwo!30466 r!7292)))) (regTwo!30466 (ite c!924641 (reg!15306 r!7292) (ite c!924640 (regTwo!30467 r!7292) (regTwo!30466 r!7292))))))))))

(declare-fun b!5321275 () Bool)

(assert (=> b!5321275 (= e!3305908 call!379947)))

(declare-fun bm!379943 () Bool)

(declare-fun call!379948 () Bool)

(assert (=> bm!379943 (= call!379948 call!379947)))

(declare-fun call!379949 () Bool)

(declare-fun bm!379944 () Bool)

(assert (=> bm!379944 (= call!379949 (validRegex!6713 (ite c!924880 (regOne!30467 (ite c!924641 (reg!15306 r!7292) (ite c!924640 (regTwo!30467 r!7292) (regTwo!30466 r!7292)))) (regOne!30466 (ite c!924641 (reg!15306 r!7292) (ite c!924640 (regTwo!30467 r!7292) (regTwo!30466 r!7292)))))))))

(declare-fun b!5321277 () Bool)

(declare-fun res!2257062 () Bool)

(declare-fun e!3305909 () Bool)

(assert (=> b!5321277 (=> (not res!2257062) (not e!3305909))))

(assert (=> b!5321277 (= res!2257062 call!379949)))

(declare-fun e!3305911 () Bool)

(assert (=> b!5321277 (= e!3305911 e!3305909)))

(declare-fun b!5321278 () Bool)

(assert (=> b!5321278 (= e!3305909 call!379948)))

(declare-fun b!5321279 () Bool)

(assert (=> b!5321279 (= e!3305907 e!3305911)))

(assert (=> b!5321279 (= c!924880 ((_ is Union!14977) (ite c!924641 (reg!15306 r!7292) (ite c!924640 (regTwo!30467 r!7292) (regTwo!30466 r!7292)))))))

(declare-fun b!5321280 () Bool)

(declare-fun e!3305910 () Bool)

(declare-fun e!3305906 () Bool)

(assert (=> b!5321280 (= e!3305910 e!3305906)))

(declare-fun res!2257063 () Bool)

(assert (=> b!5321280 (=> (not res!2257063) (not e!3305906))))

(assert (=> b!5321280 (= res!2257063 call!379949)))

(declare-fun b!5321276 () Bool)

(declare-fun e!3305905 () Bool)

(assert (=> b!5321276 (= e!3305905 e!3305907)))

(assert (=> b!5321276 (= c!924881 ((_ is Star!14977) (ite c!924641 (reg!15306 r!7292) (ite c!924640 (regTwo!30467 r!7292) (regTwo!30466 r!7292)))))))

(declare-fun d!1709344 () Bool)

(declare-fun res!2257061 () Bool)

(assert (=> d!1709344 (=> res!2257061 e!3305905)))

(assert (=> d!1709344 (= res!2257061 ((_ is ElementMatch!14977) (ite c!924641 (reg!15306 r!7292) (ite c!924640 (regTwo!30467 r!7292) (regTwo!30466 r!7292)))))))

(assert (=> d!1709344 (= (validRegex!6713 (ite c!924641 (reg!15306 r!7292) (ite c!924640 (regTwo!30467 r!7292) (regTwo!30466 r!7292)))) e!3305905)))

(declare-fun b!5321281 () Bool)

(assert (=> b!5321281 (= e!3305906 call!379948)))

(declare-fun b!5321282 () Bool)

(declare-fun res!2257065 () Bool)

(assert (=> b!5321282 (=> res!2257065 e!3305910)))

(assert (=> b!5321282 (= res!2257065 (not ((_ is Concat!23822) (ite c!924641 (reg!15306 r!7292) (ite c!924640 (regTwo!30467 r!7292) (regTwo!30466 r!7292))))))))

(assert (=> b!5321282 (= e!3305911 e!3305910)))

(assert (= (and d!1709344 (not res!2257061)) b!5321276))

(assert (= (and b!5321276 c!924881) b!5321274))

(assert (= (and b!5321276 (not c!924881)) b!5321279))

(assert (= (and b!5321274 res!2257064) b!5321275))

(assert (= (and b!5321279 c!924880) b!5321277))

(assert (= (and b!5321279 (not c!924880)) b!5321282))

(assert (= (and b!5321277 res!2257062) b!5321278))

(assert (= (and b!5321282 (not res!2257065)) b!5321280))

(assert (= (and b!5321280 res!2257063) b!5321281))

(assert (= (or b!5321278 b!5321281) bm!379943))

(assert (= (or b!5321277 b!5321280) bm!379944))

(assert (= (or b!5321275 bm!379943) bm!379942))

(declare-fun m!6356274 () Bool)

(assert (=> b!5321274 m!6356274))

(declare-fun m!6356276 () Bool)

(assert (=> bm!379942 m!6356276))

(declare-fun m!6356278 () Bool)

(assert (=> bm!379944 m!6356278))

(assert (=> bm!379804 d!1709344))

(declare-fun b!5321283 () Bool)

(declare-fun res!2257069 () Bool)

(declare-fun e!3305916 () Bool)

(assert (=> b!5321283 (=> (not res!2257069) (not e!3305916))))

(assert (=> b!5321283 (= res!2257069 (isEmpty!33079 (tail!10503 s!2326)))))

(declare-fun d!1709346 () Bool)

(declare-fun e!3305912 () Bool)

(assert (=> d!1709346 e!3305912))

(declare-fun c!924883 () Bool)

(assert (=> d!1709346 (= c!924883 ((_ is EmptyExpr!14977) (regTwo!30466 r!7292)))))

(declare-fun lt!2171957 () Bool)

(declare-fun e!3305918 () Bool)

(assert (=> d!1709346 (= lt!2171957 e!3305918)))

(declare-fun c!924882 () Bool)

(assert (=> d!1709346 (= c!924882 (isEmpty!33079 s!2326))))

(assert (=> d!1709346 (validRegex!6713 (regTwo!30466 r!7292))))

(assert (=> d!1709346 (= (matchR!7162 (regTwo!30466 r!7292) s!2326) lt!2171957)))

(declare-fun bm!379945 () Bool)

(declare-fun call!379950 () Bool)

(assert (=> bm!379945 (= call!379950 (isEmpty!33079 s!2326))))

(declare-fun b!5321284 () Bool)

(declare-fun res!2257073 () Bool)

(declare-fun e!3305915 () Bool)

(assert (=> b!5321284 (=> res!2257073 e!3305915)))

(assert (=> b!5321284 (= res!2257073 (not ((_ is ElementMatch!14977) (regTwo!30466 r!7292))))))

(declare-fun e!3305917 () Bool)

(assert (=> b!5321284 (= e!3305917 e!3305915)))

(declare-fun b!5321285 () Bool)

(assert (=> b!5321285 (= e!3305912 e!3305917)))

(declare-fun c!924884 () Bool)

(assert (=> b!5321285 (= c!924884 ((_ is EmptyLang!14977) (regTwo!30466 r!7292)))))

(declare-fun b!5321286 () Bool)

(declare-fun e!3305913 () Bool)

(declare-fun e!3305914 () Bool)

(assert (=> b!5321286 (= e!3305913 e!3305914)))

(declare-fun res!2257068 () Bool)

(assert (=> b!5321286 (=> res!2257068 e!3305914)))

(assert (=> b!5321286 (= res!2257068 call!379950)))

(declare-fun b!5321287 () Bool)

(assert (=> b!5321287 (= e!3305912 (= lt!2171957 call!379950))))

(declare-fun b!5321288 () Bool)

(assert (=> b!5321288 (= e!3305918 (nullable!5146 (regTwo!30466 r!7292)))))

(declare-fun b!5321289 () Bool)

(assert (=> b!5321289 (= e!3305918 (matchR!7162 (derivativeStep!4165 (regTwo!30466 r!7292) (head!11406 s!2326)) (tail!10503 s!2326)))))

(declare-fun b!5321290 () Bool)

(declare-fun res!2257071 () Bool)

(assert (=> b!5321290 (=> (not res!2257071) (not e!3305916))))

(assert (=> b!5321290 (= res!2257071 (not call!379950))))

(declare-fun b!5321291 () Bool)

(assert (=> b!5321291 (= e!3305915 e!3305913)))

(declare-fun res!2257067 () Bool)

(assert (=> b!5321291 (=> (not res!2257067) (not e!3305913))))

(assert (=> b!5321291 (= res!2257067 (not lt!2171957))))

(declare-fun b!5321292 () Bool)

(assert (=> b!5321292 (= e!3305916 (= (head!11406 s!2326) (c!924467 (regTwo!30466 r!7292))))))

(declare-fun b!5321293 () Bool)

(assert (=> b!5321293 (= e!3305914 (not (= (head!11406 s!2326) (c!924467 (regTwo!30466 r!7292)))))))

(declare-fun b!5321294 () Bool)

(declare-fun res!2257072 () Bool)

(assert (=> b!5321294 (=> res!2257072 e!3305914)))

(assert (=> b!5321294 (= res!2257072 (not (isEmpty!33079 (tail!10503 s!2326))))))

(declare-fun b!5321295 () Bool)

(assert (=> b!5321295 (= e!3305917 (not lt!2171957))))

(declare-fun b!5321296 () Bool)

(declare-fun res!2257070 () Bool)

(assert (=> b!5321296 (=> res!2257070 e!3305915)))

(assert (=> b!5321296 (= res!2257070 e!3305916)))

(declare-fun res!2257066 () Bool)

(assert (=> b!5321296 (=> (not res!2257066) (not e!3305916))))

(assert (=> b!5321296 (= res!2257066 lt!2171957)))

(assert (= (and d!1709346 c!924882) b!5321288))

(assert (= (and d!1709346 (not c!924882)) b!5321289))

(assert (= (and d!1709346 c!924883) b!5321287))

(assert (= (and d!1709346 (not c!924883)) b!5321285))

(assert (= (and b!5321285 c!924884) b!5321295))

(assert (= (and b!5321285 (not c!924884)) b!5321284))

(assert (= (and b!5321284 (not res!2257073)) b!5321296))

(assert (= (and b!5321296 res!2257066) b!5321290))

(assert (= (and b!5321290 res!2257071) b!5321283))

(assert (= (and b!5321283 res!2257069) b!5321292))

(assert (= (and b!5321296 (not res!2257070)) b!5321291))

(assert (= (and b!5321291 res!2257067) b!5321286))

(assert (= (and b!5321286 (not res!2257068)) b!5321294))

(assert (= (and b!5321294 (not res!2257072)) b!5321293))

(assert (= (or b!5321287 b!5321290 b!5321286) bm!379945))

(assert (=> b!5321292 m!6355600))

(assert (=> b!5321294 m!6355602))

(assert (=> b!5321294 m!6355602))

(assert (=> b!5321294 m!6355604))

(assert (=> b!5321283 m!6355602))

(assert (=> b!5321283 m!6355602))

(assert (=> b!5321283 m!6355604))

(declare-fun m!6356280 () Bool)

(assert (=> b!5321288 m!6356280))

(assert (=> d!1709346 m!6355596))

(declare-fun m!6356282 () Bool)

(assert (=> d!1709346 m!6356282))

(assert (=> bm!379945 m!6355596))

(assert (=> b!5321293 m!6355600))

(assert (=> b!5321289 m!6355600))

(assert (=> b!5321289 m!6355600))

(declare-fun m!6356284 () Bool)

(assert (=> b!5321289 m!6356284))

(assert (=> b!5321289 m!6355602))

(assert (=> b!5321289 m!6356284))

(assert (=> b!5321289 m!6355602))

(declare-fun m!6356286 () Bool)

(assert (=> b!5321289 m!6356286))

(assert (=> b!5320379 d!1709346))

(declare-fun b!5321297 () Bool)

(declare-fun e!3305922 () (InoxSet Context!8722))

(assert (=> b!5321297 (= e!3305922 (store ((as const (Array Context!8722 Bool)) false) (Context!8723 (t!374441 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))) true))))

(declare-fun b!5321298 () Bool)

(declare-fun c!924886 () Bool)

(declare-fun e!3305923 () Bool)

(assert (=> b!5321298 (= c!924886 e!3305923)))

(declare-fun res!2257074 () Bool)

(assert (=> b!5321298 (=> (not res!2257074) (not e!3305923))))

(assert (=> b!5321298 (= res!2257074 ((_ is Concat!23822) (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))))))

(declare-fun e!3305924 () (InoxSet Context!8722))

(declare-fun e!3305921 () (InoxSet Context!8722))

(assert (=> b!5321298 (= e!3305924 e!3305921)))

(declare-fun bm!379946 () Bool)

(declare-fun call!379954 () List!61230)

(declare-fun call!379955 () List!61230)

(assert (=> bm!379946 (= call!379954 call!379955)))

(declare-fun b!5321299 () Bool)

(declare-fun e!3305920 () (InoxSet Context!8722))

(assert (=> b!5321299 (= e!3305920 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5321300 () Bool)

(declare-fun call!379956 () (InoxSet Context!8722))

(declare-fun call!379952 () (InoxSet Context!8722))

(assert (=> b!5321300 (= e!3305924 ((_ map or) call!379956 call!379952))))

(declare-fun b!5321301 () Bool)

(declare-fun c!924887 () Bool)

(assert (=> b!5321301 (= c!924887 ((_ is Star!14977) (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))))))

(declare-fun e!3305919 () (InoxSet Context!8722))

(assert (=> b!5321301 (= e!3305919 e!3305920)))

(declare-fun d!1709348 () Bool)

(declare-fun c!924885 () Bool)

(assert (=> d!1709348 (= c!924885 (and ((_ is ElementMatch!14977) (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))) (= (c!924467 (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))) (h!67556 s!2326))))))

(assert (=> d!1709348 (= (derivationStepZipperDown!425 (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343))))))) (Context!8723 (t!374441 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))) (h!67556 s!2326)) e!3305922)))

(declare-fun c!924888 () Bool)

(declare-fun bm!379947 () Bool)

(assert (=> bm!379947 (= call!379955 ($colon$colon!1394 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343))))))))) (ite (or c!924886 c!924888) (regTwo!30466 (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))) (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343))))))))))))

(declare-fun bm!379948 () Bool)

(declare-fun call!379953 () (InoxSet Context!8722))

(assert (=> bm!379948 (= call!379953 call!379952)))

(declare-fun b!5321302 () Bool)

(declare-fun call!379951 () (InoxSet Context!8722))

(assert (=> b!5321302 (= e!3305919 call!379951)))

(declare-fun b!5321303 () Bool)

(assert (=> b!5321303 (= e!3305922 e!3305924)))

(declare-fun c!924889 () Bool)

(assert (=> b!5321303 (= c!924889 ((_ is Union!14977) (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))))))

(declare-fun bm!379949 () Bool)

(assert (=> bm!379949 (= call!379951 call!379953)))

(declare-fun b!5321304 () Bool)

(assert (=> b!5321304 (= e!3305920 call!379951)))

(declare-fun b!5321305 () Bool)

(assert (=> b!5321305 (= e!3305923 (nullable!5146 (regOne!30466 (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343))))))))))))

(declare-fun b!5321306 () Bool)

(assert (=> b!5321306 (= e!3305921 ((_ map or) call!379956 call!379953))))

(declare-fun bm!379950 () Bool)

(assert (=> bm!379950 (= call!379956 (derivationStepZipperDown!425 (ite c!924889 (regOne!30467 (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))) (regOne!30466 (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343))))))))) (ite c!924889 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))) (Context!8723 call!379955)) (h!67556 s!2326)))))

(declare-fun b!5321307 () Bool)

(assert (=> b!5321307 (= e!3305921 e!3305919)))

(assert (=> b!5321307 (= c!924888 ((_ is Concat!23822) (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))))))

(declare-fun bm!379951 () Bool)

(assert (=> bm!379951 (= call!379952 (derivationStepZipperDown!425 (ite c!924889 (regTwo!30467 (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))) (ite c!924886 (regTwo!30466 (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))) (ite c!924888 (regOne!30466 (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))) (reg!15306 (h!67554 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343))))))))))) (ite (or c!924889 c!924886) (Context!8723 (t!374441 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))) (Context!8723 call!379954)) (h!67556 s!2326)))))

(assert (= (and d!1709348 c!924885) b!5321297))

(assert (= (and d!1709348 (not c!924885)) b!5321303))

(assert (= (and b!5321303 c!924889) b!5321300))

(assert (= (and b!5321303 (not c!924889)) b!5321298))

(assert (= (and b!5321298 res!2257074) b!5321305))

(assert (= (and b!5321298 c!924886) b!5321306))

(assert (= (and b!5321298 (not c!924886)) b!5321307))

(assert (= (and b!5321307 c!924888) b!5321302))

(assert (= (and b!5321307 (not c!924888)) b!5321301))

(assert (= (and b!5321301 c!924887) b!5321304))

(assert (= (and b!5321301 (not c!924887)) b!5321299))

(assert (= (or b!5321302 b!5321304) bm!379946))

(assert (= (or b!5321302 b!5321304) bm!379949))

(assert (= (or b!5321306 bm!379946) bm!379947))

(assert (= (or b!5321306 bm!379949) bm!379948))

(assert (= (or b!5321300 bm!379948) bm!379951))

(assert (= (or b!5321300 b!5321306) bm!379950))

(declare-fun m!6356288 () Bool)

(assert (=> bm!379951 m!6356288))

(declare-fun m!6356290 () Bool)

(assert (=> bm!379947 m!6356290))

(declare-fun m!6356292 () Bool)

(assert (=> b!5321305 m!6356292))

(declare-fun m!6356294 () Bool)

(assert (=> bm!379950 m!6356294))

(declare-fun m!6356296 () Bool)

(assert (=> b!5321297 m!6356296))

(assert (=> bm!379816 d!1709348))

(declare-fun b!5321308 () Bool)

(declare-fun e!3305928 () (InoxSet Context!8722))

(assert (=> b!5321308 (= e!3305928 (store ((as const (Array Context!8722 Bool)) false) (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343)))) true))))

(declare-fun b!5321309 () Bool)

(declare-fun c!924891 () Bool)

(declare-fun e!3305929 () Bool)

(assert (=> b!5321309 (= c!924891 e!3305929)))

(declare-fun res!2257075 () Bool)

(assert (=> b!5321309 (=> (not res!2257075) (not e!3305929))))

(assert (=> b!5321309 (= res!2257075 ((_ is Concat!23822) (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun e!3305930 () (InoxSet Context!8722))

(declare-fun e!3305927 () (InoxSet Context!8722))

(assert (=> b!5321309 (= e!3305930 e!3305927)))

(declare-fun bm!379952 () Bool)

(declare-fun call!379960 () List!61230)

(declare-fun call!379961 () List!61230)

(assert (=> bm!379952 (= call!379960 call!379961)))

(declare-fun b!5321310 () Bool)

(declare-fun e!3305926 () (InoxSet Context!8722))

(assert (=> b!5321310 (= e!3305926 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5321311 () Bool)

(declare-fun call!379962 () (InoxSet Context!8722))

(declare-fun call!379958 () (InoxSet Context!8722))

(assert (=> b!5321311 (= e!3305930 ((_ map or) call!379962 call!379958))))

(declare-fun b!5321312 () Bool)

(declare-fun c!924892 () Bool)

(assert (=> b!5321312 (= c!924892 ((_ is Star!14977) (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun e!3305925 () (InoxSet Context!8722))

(assert (=> b!5321312 (= e!3305925 e!3305926)))

(declare-fun d!1709350 () Bool)

(declare-fun c!924890 () Bool)

(assert (=> d!1709350 (= c!924890 (and ((_ is ElementMatch!14977) (h!67554 (exprs!4861 (h!67555 zl!343)))) (= (c!924467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (h!67556 s!2326))))))

(assert (=> d!1709350 (= (derivationStepZipperDown!425 (h!67554 (exprs!4861 (h!67555 zl!343))) (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343)))) (h!67556 s!2326)) e!3305928)))

(declare-fun bm!379953 () Bool)

(declare-fun c!924893 () Bool)

(assert (=> bm!379953 (= call!379961 ($colon$colon!1394 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343))))) (ite (or c!924891 c!924893) (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (h!67554 (exprs!4861 (h!67555 zl!343))))))))

(declare-fun bm!379954 () Bool)

(declare-fun call!379959 () (InoxSet Context!8722))

(assert (=> bm!379954 (= call!379959 call!379958)))

(declare-fun b!5321313 () Bool)

(declare-fun call!379957 () (InoxSet Context!8722))

(assert (=> b!5321313 (= e!3305925 call!379957)))

(declare-fun b!5321314 () Bool)

(assert (=> b!5321314 (= e!3305928 e!3305930)))

(declare-fun c!924894 () Bool)

(assert (=> b!5321314 (= c!924894 ((_ is Union!14977) (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun bm!379955 () Bool)

(assert (=> bm!379955 (= call!379957 call!379959)))

(declare-fun b!5321315 () Bool)

(assert (=> b!5321315 (= e!3305926 call!379957)))

(declare-fun b!5321316 () Bool)

(assert (=> b!5321316 (= e!3305929 (nullable!5146 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343))))))))

(declare-fun b!5321317 () Bool)

(assert (=> b!5321317 (= e!3305927 ((_ map or) call!379962 call!379959))))

(declare-fun bm!379956 () Bool)

(assert (=> bm!379956 (= call!379962 (derivationStepZipperDown!425 (ite c!924894 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343))))) (ite c!924894 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343)))) (Context!8723 call!379961)) (h!67556 s!2326)))))

(declare-fun b!5321318 () Bool)

(assert (=> b!5321318 (= e!3305927 e!3305925)))

(assert (=> b!5321318 (= c!924893 ((_ is Concat!23822) (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun bm!379957 () Bool)

(assert (=> bm!379957 (= call!379958 (derivationStepZipperDown!425 (ite c!924894 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924891 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924893 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343))))))) (ite (or c!924894 c!924891) (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343)))) (Context!8723 call!379960)) (h!67556 s!2326)))))

(assert (= (and d!1709350 c!924890) b!5321308))

(assert (= (and d!1709350 (not c!924890)) b!5321314))

(assert (= (and b!5321314 c!924894) b!5321311))

(assert (= (and b!5321314 (not c!924894)) b!5321309))

(assert (= (and b!5321309 res!2257075) b!5321316))

(assert (= (and b!5321309 c!924891) b!5321317))

(assert (= (and b!5321309 (not c!924891)) b!5321318))

(assert (= (and b!5321318 c!924893) b!5321313))

(assert (= (and b!5321318 (not c!924893)) b!5321312))

(assert (= (and b!5321312 c!924892) b!5321315))

(assert (= (and b!5321312 (not c!924892)) b!5321310))

(assert (= (or b!5321313 b!5321315) bm!379952))

(assert (= (or b!5321313 b!5321315) bm!379955))

(assert (= (or b!5321317 bm!379952) bm!379953))

(assert (= (or b!5321317 bm!379955) bm!379954))

(assert (= (or b!5321311 bm!379954) bm!379957))

(assert (= (or b!5321311 b!5321317) bm!379956))

(declare-fun m!6356298 () Bool)

(assert (=> bm!379957 m!6356298))

(declare-fun m!6356300 () Bool)

(assert (=> bm!379953 m!6356300))

(assert (=> b!5321316 m!6355536))

(declare-fun m!6356302 () Bool)

(assert (=> bm!379956 m!6356302))

(declare-fun m!6356304 () Bool)

(assert (=> b!5321308 m!6356304))

(assert (=> bm!379817 d!1709350))

(declare-fun d!1709352 () Bool)

(assert (=> d!1709352 (= (isEmpty!33080 (findConcatSeparation!1502 (regOne!30466 r!7292) (regTwo!30466 r!7292) Nil!61108 s!2326 s!2326)) (not ((_ is Some!15087) (findConcatSeparation!1502 (regOne!30466 r!7292) (regTwo!30466 r!7292) Nil!61108 s!2326 s!2326))))))

(assert (=> d!1708974 d!1709352))

(declare-fun bs!1233322 () Bool)

(declare-fun d!1709354 () Bool)

(assert (= bs!1233322 (and d!1709354 b!5320159)))

(declare-fun lambda!271439 () Int)

(assert (=> bs!1233322 (not (= lambda!271439 lambda!271339))))

(declare-fun bs!1233323 () Bool)

(assert (= bs!1233323 (and d!1709354 b!5321224)))

(assert (=> bs!1233323 (not (= lambda!271439 lambda!271432))))

(declare-fun bs!1233324 () Bool)

(assert (= bs!1233324 (and d!1709354 b!5321221)))

(assert (=> bs!1233324 (not (= lambda!271439 lambda!271431))))

(declare-fun bs!1233325 () Bool)

(assert (= bs!1233325 (and d!1709354 b!5320178)))

(assert (=> bs!1233325 (not (= lambda!271439 lambda!271342))))

(declare-fun bs!1233326 () Bool)

(assert (= bs!1233326 (and d!1709354 d!1709314)))

(assert (=> bs!1233326 (not (= lambda!271439 lambda!271429))))

(declare-fun bs!1233327 () Bool)

(assert (= bs!1233327 (and d!1709354 b!5320157)))

(assert (=> bs!1233327 (not (= lambda!271439 lambda!271338))))

(declare-fun bs!1233328 () Bool)

(assert (= bs!1233328 (and d!1709354 b!5320176)))

(assert (=> bs!1233328 (not (= lambda!271439 lambda!271341))))

(declare-fun bs!1233329 () Bool)

(assert (= bs!1233329 (and d!1709354 d!1709286)))

(assert (=> bs!1233329 (= lambda!271439 lambda!271421)))

(assert (=> d!1709354 (= (nullableZipper!1344 lt!2171730) (exists!2011 lt!2171730 lambda!271439))))

(declare-fun bs!1233330 () Bool)

(assert (= bs!1233330 d!1709354))

(declare-fun m!6356306 () Bool)

(assert (=> bs!1233330 m!6356306))

(assert (=> b!5320342 d!1709354))

(declare-fun d!1709356 () Bool)

(assert (=> d!1709356 (= (isEmpty!33075 (t!374441 (unfocusZipperList!419 zl!343))) ((_ is Nil!61106) (t!374441 (unfocusZipperList!419 zl!343))))))

(assert (=> b!5320302 d!1709356))

(declare-fun b!5321319 () Bool)

(declare-fun e!3305934 () (InoxSet Context!8722))

(assert (=> b!5321319 (= e!3305934 (store ((as const (Array Context!8722 Bool)) false) (Context!8723 (t!374441 (exprs!4861 lt!2171733))) true))))

(declare-fun b!5321320 () Bool)

(declare-fun c!924896 () Bool)

(declare-fun e!3305935 () Bool)

(assert (=> b!5321320 (= c!924896 e!3305935)))

(declare-fun res!2257076 () Bool)

(assert (=> b!5321320 (=> (not res!2257076) (not e!3305935))))

(assert (=> b!5321320 (= res!2257076 ((_ is Concat!23822) (h!67554 (exprs!4861 lt!2171733))))))

(declare-fun e!3305936 () (InoxSet Context!8722))

(declare-fun e!3305933 () (InoxSet Context!8722))

(assert (=> b!5321320 (= e!3305936 e!3305933)))

(declare-fun bm!379958 () Bool)

(declare-fun call!379966 () List!61230)

(declare-fun call!379967 () List!61230)

(assert (=> bm!379958 (= call!379966 call!379967)))

(declare-fun b!5321321 () Bool)

(declare-fun e!3305932 () (InoxSet Context!8722))

(assert (=> b!5321321 (= e!3305932 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5321322 () Bool)

(declare-fun call!379968 () (InoxSet Context!8722))

(declare-fun call!379964 () (InoxSet Context!8722))

(assert (=> b!5321322 (= e!3305936 ((_ map or) call!379968 call!379964))))

(declare-fun b!5321323 () Bool)

(declare-fun c!924897 () Bool)

(assert (=> b!5321323 (= c!924897 ((_ is Star!14977) (h!67554 (exprs!4861 lt!2171733))))))

(declare-fun e!3305931 () (InoxSet Context!8722))

(assert (=> b!5321323 (= e!3305931 e!3305932)))

(declare-fun d!1709358 () Bool)

(declare-fun c!924895 () Bool)

(assert (=> d!1709358 (= c!924895 (and ((_ is ElementMatch!14977) (h!67554 (exprs!4861 lt!2171733))) (= (c!924467 (h!67554 (exprs!4861 lt!2171733))) (h!67556 s!2326))))))

(assert (=> d!1709358 (= (derivationStepZipperDown!425 (h!67554 (exprs!4861 lt!2171733)) (Context!8723 (t!374441 (exprs!4861 lt!2171733))) (h!67556 s!2326)) e!3305934)))

(declare-fun c!924898 () Bool)

(declare-fun bm!379959 () Bool)

(assert (=> bm!379959 (= call!379967 ($colon$colon!1394 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171733)))) (ite (or c!924896 c!924898) (regTwo!30466 (h!67554 (exprs!4861 lt!2171733))) (h!67554 (exprs!4861 lt!2171733)))))))

(declare-fun bm!379960 () Bool)

(declare-fun call!379965 () (InoxSet Context!8722))

(assert (=> bm!379960 (= call!379965 call!379964)))

(declare-fun b!5321324 () Bool)

(declare-fun call!379963 () (InoxSet Context!8722))

(assert (=> b!5321324 (= e!3305931 call!379963)))

(declare-fun b!5321325 () Bool)

(assert (=> b!5321325 (= e!3305934 e!3305936)))

(declare-fun c!924899 () Bool)

(assert (=> b!5321325 (= c!924899 ((_ is Union!14977) (h!67554 (exprs!4861 lt!2171733))))))

(declare-fun bm!379961 () Bool)

(assert (=> bm!379961 (= call!379963 call!379965)))

(declare-fun b!5321326 () Bool)

(assert (=> b!5321326 (= e!3305932 call!379963)))

(declare-fun b!5321327 () Bool)

(assert (=> b!5321327 (= e!3305935 (nullable!5146 (regOne!30466 (h!67554 (exprs!4861 lt!2171733)))))))

(declare-fun b!5321328 () Bool)

(assert (=> b!5321328 (= e!3305933 ((_ map or) call!379968 call!379965))))

(declare-fun bm!379962 () Bool)

(assert (=> bm!379962 (= call!379968 (derivationStepZipperDown!425 (ite c!924899 (regOne!30467 (h!67554 (exprs!4861 lt!2171733))) (regOne!30466 (h!67554 (exprs!4861 lt!2171733)))) (ite c!924899 (Context!8723 (t!374441 (exprs!4861 lt!2171733))) (Context!8723 call!379967)) (h!67556 s!2326)))))

(declare-fun b!5321329 () Bool)

(assert (=> b!5321329 (= e!3305933 e!3305931)))

(assert (=> b!5321329 (= c!924898 ((_ is Concat!23822) (h!67554 (exprs!4861 lt!2171733))))))

(declare-fun bm!379963 () Bool)

(assert (=> bm!379963 (= call!379964 (derivationStepZipperDown!425 (ite c!924899 (regTwo!30467 (h!67554 (exprs!4861 lt!2171733))) (ite c!924896 (regTwo!30466 (h!67554 (exprs!4861 lt!2171733))) (ite c!924898 (regOne!30466 (h!67554 (exprs!4861 lt!2171733))) (reg!15306 (h!67554 (exprs!4861 lt!2171733)))))) (ite (or c!924899 c!924896) (Context!8723 (t!374441 (exprs!4861 lt!2171733))) (Context!8723 call!379966)) (h!67556 s!2326)))))

(assert (= (and d!1709358 c!924895) b!5321319))

(assert (= (and d!1709358 (not c!924895)) b!5321325))

(assert (= (and b!5321325 c!924899) b!5321322))

(assert (= (and b!5321325 (not c!924899)) b!5321320))

(assert (= (and b!5321320 res!2257076) b!5321327))

(assert (= (and b!5321320 c!924896) b!5321328))

(assert (= (and b!5321320 (not c!924896)) b!5321329))

(assert (= (and b!5321329 c!924898) b!5321324))

(assert (= (and b!5321329 (not c!924898)) b!5321323))

(assert (= (and b!5321323 c!924897) b!5321326))

(assert (= (and b!5321323 (not c!924897)) b!5321321))

(assert (= (or b!5321324 b!5321326) bm!379958))

(assert (= (or b!5321324 b!5321326) bm!379961))

(assert (= (or b!5321328 bm!379958) bm!379959))

(assert (= (or b!5321328 bm!379961) bm!379960))

(assert (= (or b!5321322 bm!379960) bm!379963))

(assert (= (or b!5321322 b!5321328) bm!379962))

(declare-fun m!6356308 () Bool)

(assert (=> bm!379963 m!6356308))

(declare-fun m!6356310 () Bool)

(assert (=> bm!379959 m!6356310))

(declare-fun m!6356312 () Bool)

(assert (=> b!5321327 m!6356312))

(declare-fun m!6356314 () Bool)

(assert (=> bm!379962 m!6356314))

(declare-fun m!6356316 () Bool)

(assert (=> b!5321319 m!6356316))

(assert (=> bm!379809 d!1709358))

(declare-fun d!1709360 () Bool)

(declare-fun res!2257077 () Bool)

(declare-fun e!3305937 () Bool)

(assert (=> d!1709360 (=> res!2257077 e!3305937)))

(assert (=> d!1709360 (= res!2257077 ((_ is Nil!61106) (exprs!4861 (h!67555 zl!343))))))

(assert (=> d!1709360 (= (forall!14395 (exprs!4861 (h!67555 zl!343)) lambda!271346) e!3305937)))

(declare-fun b!5321330 () Bool)

(declare-fun e!3305938 () Bool)

(assert (=> b!5321330 (= e!3305937 e!3305938)))

(declare-fun res!2257078 () Bool)

(assert (=> b!5321330 (=> (not res!2257078) (not e!3305938))))

(assert (=> b!5321330 (= res!2257078 (dynLambda!24155 lambda!271346 (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun b!5321331 () Bool)

(assert (=> b!5321331 (= e!3305938 (forall!14395 (t!374441 (exprs!4861 (h!67555 zl!343))) lambda!271346))))

(assert (= (and d!1709360 (not res!2257077)) b!5321330))

(assert (= (and b!5321330 res!2257078) b!5321331))

(declare-fun b_lambda!204715 () Bool)

(assert (=> (not b_lambda!204715) (not b!5321330)))

(declare-fun m!6356318 () Bool)

(assert (=> b!5321330 m!6356318))

(declare-fun m!6356320 () Bool)

(assert (=> b!5321331 m!6356320))

(assert (=> d!1708948 d!1709360))

(declare-fun b!5321332 () Bool)

(declare-fun e!3305941 () Bool)

(declare-fun e!3305942 () Bool)

(assert (=> b!5321332 (= e!3305941 e!3305942)))

(declare-fun res!2257082 () Bool)

(assert (=> b!5321332 (= res!2257082 (not (nullable!5146 (reg!15306 (ite c!924640 (regOne!30467 r!7292) (regOne!30466 r!7292))))))))

(assert (=> b!5321332 (=> (not res!2257082) (not e!3305942))))

(declare-fun c!924901 () Bool)

(declare-fun c!924900 () Bool)

(declare-fun call!379969 () Bool)

(declare-fun bm!379964 () Bool)

(assert (=> bm!379964 (= call!379969 (validRegex!6713 (ite c!924901 (reg!15306 (ite c!924640 (regOne!30467 r!7292) (regOne!30466 r!7292))) (ite c!924900 (regTwo!30467 (ite c!924640 (regOne!30467 r!7292) (regOne!30466 r!7292))) (regTwo!30466 (ite c!924640 (regOne!30467 r!7292) (regOne!30466 r!7292)))))))))

(declare-fun b!5321333 () Bool)

(assert (=> b!5321333 (= e!3305942 call!379969)))

(declare-fun bm!379965 () Bool)

(declare-fun call!379970 () Bool)

(assert (=> bm!379965 (= call!379970 call!379969)))

(declare-fun bm!379966 () Bool)

(declare-fun call!379971 () Bool)

(assert (=> bm!379966 (= call!379971 (validRegex!6713 (ite c!924900 (regOne!30467 (ite c!924640 (regOne!30467 r!7292) (regOne!30466 r!7292))) (regOne!30466 (ite c!924640 (regOne!30467 r!7292) (regOne!30466 r!7292))))))))

(declare-fun b!5321335 () Bool)

(declare-fun res!2257080 () Bool)

(declare-fun e!3305943 () Bool)

(assert (=> b!5321335 (=> (not res!2257080) (not e!3305943))))

(assert (=> b!5321335 (= res!2257080 call!379971)))

(declare-fun e!3305945 () Bool)

(assert (=> b!5321335 (= e!3305945 e!3305943)))

(declare-fun b!5321336 () Bool)

(assert (=> b!5321336 (= e!3305943 call!379970)))

(declare-fun b!5321337 () Bool)

(assert (=> b!5321337 (= e!3305941 e!3305945)))

(assert (=> b!5321337 (= c!924900 ((_ is Union!14977) (ite c!924640 (regOne!30467 r!7292) (regOne!30466 r!7292))))))

(declare-fun b!5321338 () Bool)

(declare-fun e!3305944 () Bool)

(declare-fun e!3305940 () Bool)

(assert (=> b!5321338 (= e!3305944 e!3305940)))

(declare-fun res!2257081 () Bool)

(assert (=> b!5321338 (=> (not res!2257081) (not e!3305940))))

(assert (=> b!5321338 (= res!2257081 call!379971)))

(declare-fun b!5321334 () Bool)

(declare-fun e!3305939 () Bool)

(assert (=> b!5321334 (= e!3305939 e!3305941)))

(assert (=> b!5321334 (= c!924901 ((_ is Star!14977) (ite c!924640 (regOne!30467 r!7292) (regOne!30466 r!7292))))))

(declare-fun d!1709362 () Bool)

(declare-fun res!2257079 () Bool)

(assert (=> d!1709362 (=> res!2257079 e!3305939)))

(assert (=> d!1709362 (= res!2257079 ((_ is ElementMatch!14977) (ite c!924640 (regOne!30467 r!7292) (regOne!30466 r!7292))))))

(assert (=> d!1709362 (= (validRegex!6713 (ite c!924640 (regOne!30467 r!7292) (regOne!30466 r!7292))) e!3305939)))

(declare-fun b!5321339 () Bool)

(assert (=> b!5321339 (= e!3305940 call!379970)))

(declare-fun b!5321340 () Bool)

(declare-fun res!2257083 () Bool)

(assert (=> b!5321340 (=> res!2257083 e!3305944)))

(assert (=> b!5321340 (= res!2257083 (not ((_ is Concat!23822) (ite c!924640 (regOne!30467 r!7292) (regOne!30466 r!7292)))))))

(assert (=> b!5321340 (= e!3305945 e!3305944)))

(assert (= (and d!1709362 (not res!2257079)) b!5321334))

(assert (= (and b!5321334 c!924901) b!5321332))

(assert (= (and b!5321334 (not c!924901)) b!5321337))

(assert (= (and b!5321332 res!2257082) b!5321333))

(assert (= (and b!5321337 c!924900) b!5321335))

(assert (= (and b!5321337 (not c!924900)) b!5321340))

(assert (= (and b!5321335 res!2257080) b!5321336))

(assert (= (and b!5321340 (not res!2257083)) b!5321338))

(assert (= (and b!5321338 res!2257081) b!5321339))

(assert (= (or b!5321336 b!5321339) bm!379965))

(assert (= (or b!5321335 b!5321338) bm!379966))

(assert (= (or b!5321333 bm!379965) bm!379964))

(declare-fun m!6356322 () Bool)

(assert (=> b!5321332 m!6356322))

(declare-fun m!6356324 () Bool)

(assert (=> bm!379964 m!6356324))

(declare-fun m!6356326 () Bool)

(assert (=> bm!379966 m!6356326))

(assert (=> bm!379806 d!1709362))

(declare-fun e!3305949 () (InoxSet Context!8722))

(declare-fun b!5321341 () Bool)

(assert (=> b!5321341 (= e!3305949 (store ((as const (Array Context!8722 Bool)) false) (ite (or c!924667 c!924664) lt!2171724 (Context!8723 call!379818)) true))))

(declare-fun b!5321342 () Bool)

(declare-fun c!924903 () Bool)

(declare-fun e!3305950 () Bool)

(assert (=> b!5321342 (= c!924903 e!3305950)))

(declare-fun res!2257084 () Bool)

(assert (=> b!5321342 (=> (not res!2257084) (not e!3305950))))

(assert (=> b!5321342 (= res!2257084 ((_ is Concat!23822) (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343)))))))))))

(declare-fun e!3305951 () (InoxSet Context!8722))

(declare-fun e!3305948 () (InoxSet Context!8722))

(assert (=> b!5321342 (= e!3305951 e!3305948)))

(declare-fun bm!379967 () Bool)

(declare-fun call!379975 () List!61230)

(declare-fun call!379976 () List!61230)

(assert (=> bm!379967 (= call!379975 call!379976)))

(declare-fun b!5321343 () Bool)

(declare-fun e!3305947 () (InoxSet Context!8722))

(assert (=> b!5321343 (= e!3305947 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5321344 () Bool)

(declare-fun call!379977 () (InoxSet Context!8722))

(declare-fun call!379973 () (InoxSet Context!8722))

(assert (=> b!5321344 (= e!3305951 ((_ map or) call!379977 call!379973))))

(declare-fun c!924904 () Bool)

(declare-fun b!5321345 () Bool)

(assert (=> b!5321345 (= c!924904 ((_ is Star!14977) (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343)))))))))))

(declare-fun e!3305946 () (InoxSet Context!8722))

(assert (=> b!5321345 (= e!3305946 e!3305947)))

(declare-fun d!1709364 () Bool)

(declare-fun c!924902 () Bool)

(assert (=> d!1709364 (= c!924902 (and ((_ is ElementMatch!14977) (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343)))))))) (= (c!924467 (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343)))))))) (h!67556 s!2326))))))

(assert (=> d!1709364 (= (derivationStepZipperDown!425 (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343))))))) (ite (or c!924667 c!924664) lt!2171724 (Context!8723 call!379818)) (h!67556 s!2326)) e!3305949)))

(declare-fun bm!379968 () Bool)

(declare-fun c!924905 () Bool)

(assert (=> bm!379968 (= call!379976 ($colon$colon!1394 (exprs!4861 (ite (or c!924667 c!924664) lt!2171724 (Context!8723 call!379818))) (ite (or c!924903 c!924905) (regTwo!30466 (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343)))))))) (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343))))))))))))

(declare-fun bm!379969 () Bool)

(declare-fun call!379974 () (InoxSet Context!8722))

(assert (=> bm!379969 (= call!379974 call!379973)))

(declare-fun b!5321346 () Bool)

(declare-fun call!379972 () (InoxSet Context!8722))

(assert (=> b!5321346 (= e!3305946 call!379972)))

(declare-fun b!5321347 () Bool)

(assert (=> b!5321347 (= e!3305949 e!3305951)))

(declare-fun c!924906 () Bool)

(assert (=> b!5321347 (= c!924906 ((_ is Union!14977) (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343)))))))))))

(declare-fun bm!379970 () Bool)

(assert (=> bm!379970 (= call!379972 call!379974)))

(declare-fun b!5321348 () Bool)

(assert (=> b!5321348 (= e!3305947 call!379972)))

(declare-fun b!5321349 () Bool)

(assert (=> b!5321349 (= e!3305950 (nullable!5146 (regOne!30466 (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343))))))))))))

(declare-fun b!5321350 () Bool)

(assert (=> b!5321350 (= e!3305948 ((_ map or) call!379977 call!379974))))

(declare-fun bm!379971 () Bool)

(assert (=> bm!379971 (= call!379977 (derivationStepZipperDown!425 (ite c!924906 (regOne!30467 (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343)))))))) (regOne!30466 (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343))))))))) (ite c!924906 (ite (or c!924667 c!924664) lt!2171724 (Context!8723 call!379818)) (Context!8723 call!379976)) (h!67556 s!2326)))))

(declare-fun b!5321351 () Bool)

(assert (=> b!5321351 (= e!3305948 e!3305946)))

(assert (=> b!5321351 (= c!924905 ((_ is Concat!23822) (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343)))))))))))

(declare-fun bm!379972 () Bool)

(assert (=> bm!379972 (= call!379973 (derivationStepZipperDown!425 (ite c!924906 (regTwo!30467 (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343)))))))) (ite c!924903 (regTwo!30466 (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343)))))))) (ite c!924905 (regOne!30466 (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343)))))))) (reg!15306 (ite c!924667 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924664 (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924666 (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343))))))))))) (ite (or c!924906 c!924903) (ite (or c!924667 c!924664) lt!2171724 (Context!8723 call!379818)) (Context!8723 call!379975)) (h!67556 s!2326)))))

(assert (= (and d!1709364 c!924902) b!5321341))

(assert (= (and d!1709364 (not c!924902)) b!5321347))

(assert (= (and b!5321347 c!924906) b!5321344))

(assert (= (and b!5321347 (not c!924906)) b!5321342))

(assert (= (and b!5321342 res!2257084) b!5321349))

(assert (= (and b!5321342 c!924903) b!5321350))

(assert (= (and b!5321342 (not c!924903)) b!5321351))

(assert (= (and b!5321351 c!924905) b!5321346))

(assert (= (and b!5321351 (not c!924905)) b!5321345))

(assert (= (and b!5321345 c!924904) b!5321348))

(assert (= (and b!5321345 (not c!924904)) b!5321343))

(assert (= (or b!5321346 b!5321348) bm!379967))

(assert (= (or b!5321346 b!5321348) bm!379970))

(assert (= (or b!5321350 bm!379967) bm!379968))

(assert (= (or b!5321350 bm!379970) bm!379969))

(assert (= (or b!5321344 bm!379969) bm!379972))

(assert (= (or b!5321344 b!5321350) bm!379971))

(declare-fun m!6356328 () Bool)

(assert (=> bm!379972 m!6356328))

(declare-fun m!6356330 () Bool)

(assert (=> bm!379968 m!6356330))

(declare-fun m!6356332 () Bool)

(assert (=> b!5321349 m!6356332))

(declare-fun m!6356334 () Bool)

(assert (=> bm!379971 m!6356334))

(declare-fun m!6356336 () Bool)

(assert (=> b!5321341 m!6356336))

(assert (=> bm!379815 d!1709364))

(declare-fun d!1709366 () Bool)

(assert (=> d!1709366 (= (isEmpty!33079 s!2326) ((_ is Nil!61108) s!2326))))

(assert (=> bm!379827 d!1709366))

(declare-fun b!5321368 () Bool)

(declare-fun e!3305961 () Int)

(assert (=> b!5321368 (= e!3305961 1)))

(declare-fun c!924918 () Bool)

(declare-fun bm!379979 () Bool)

(declare-fun call!379984 () Int)

(declare-fun c!924917 () Bool)

(assert (=> bm!379979 (= call!379984 (regexDepthTotal!49 (ite c!924918 (reg!15306 (h!67554 (exprs!4861 (h!67555 zl!343)))) (ite c!924917 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343))))))))))

(declare-fun b!5321369 () Bool)

(declare-fun e!3305960 () Int)

(declare-fun call!379986 () Int)

(declare-fun call!379985 () Int)

(assert (=> b!5321369 (= e!3305960 (+ 1 call!379986 call!379985))))

(declare-fun b!5321370 () Bool)

(declare-fun e!3305962 () Int)

(assert (=> b!5321370 (= e!3305961 e!3305962)))

(assert (=> b!5321370 (= c!924918 ((_ is Star!14977) (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun b!5321371 () Bool)

(declare-fun e!3305963 () Int)

(assert (=> b!5321371 (= e!3305963 (+ 1 call!379986 call!379985))))

(declare-fun b!5321372 () Bool)

(assert (=> b!5321372 (= e!3305962 (+ 1 call!379984))))

(declare-fun b!5321373 () Bool)

(assert (=> b!5321373 (= c!924917 ((_ is Union!14977) (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(assert (=> b!5321373 (= e!3305962 e!3305963)))

(declare-fun bm!379981 () Bool)

(assert (=> bm!379981 (= call!379986 (regexDepthTotal!49 (ite c!924917 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))))))))

(declare-fun b!5321374 () Bool)

(assert (=> b!5321374 (= e!3305963 e!3305960)))

(declare-fun c!924915 () Bool)

(assert (=> b!5321374 (= c!924915 ((_ is Concat!23822) (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun b!5321375 () Bool)

(assert (=> b!5321375 (= e!3305960 1)))

(declare-fun d!1709368 () Bool)

(declare-fun lt!2171960 () Int)

(assert (=> d!1709368 (> lt!2171960 0)))

(assert (=> d!1709368 (= lt!2171960 e!3305961)))

(declare-fun c!924916 () Bool)

(assert (=> d!1709368 (= c!924916 ((_ is ElementMatch!14977) (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(assert (=> d!1709368 (= (regexDepthTotal!49 (h!67554 (exprs!4861 (h!67555 zl!343)))) lt!2171960)))

(declare-fun bm!379980 () Bool)

(assert (=> bm!379980 (= call!379985 call!379984)))

(assert (= (and d!1709368 c!924916) b!5321368))

(assert (= (and d!1709368 (not c!924916)) b!5321370))

(assert (= (and b!5321370 c!924918) b!5321372))

(assert (= (and b!5321370 (not c!924918)) b!5321373))

(assert (= (and b!5321373 c!924917) b!5321371))

(assert (= (and b!5321373 (not c!924917)) b!5321374))

(assert (= (and b!5321374 c!924915) b!5321369))

(assert (= (and b!5321374 (not c!924915)) b!5321375))

(assert (= (or b!5321371 b!5321369) bm!379980))

(assert (= (or b!5321371 b!5321369) bm!379981))

(assert (= (or b!5321372 bm!379980) bm!379979))

(declare-fun m!6356338 () Bool)

(assert (=> bm!379979 m!6356338))

(declare-fun m!6356340 () Bool)

(assert (=> bm!379981 m!6356340))

(assert (=> b!5320350 d!1709368))

(declare-fun d!1709370 () Bool)

(declare-fun lt!2171961 () Int)

(assert (=> d!1709370 (>= lt!2171961 0)))

(declare-fun e!3305964 () Int)

(assert (=> d!1709370 (= lt!2171961 e!3305964)))

(declare-fun c!924919 () Bool)

(assert (=> d!1709370 (= c!924919 ((_ is Cons!61106) (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343)))))))))

(assert (=> d!1709370 (= (contextDepthTotal!110 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343))))) lt!2171961)))

(declare-fun b!5321376 () Bool)

(assert (=> b!5321376 (= e!3305964 (+ (regexDepthTotal!49 (h!67554 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343))))))) (contextDepthTotal!110 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343))))))))))))

(declare-fun b!5321377 () Bool)

(assert (=> b!5321377 (= e!3305964 1)))

(assert (= (and d!1709370 c!924919) b!5321376))

(assert (= (and d!1709370 (not c!924919)) b!5321377))

(declare-fun m!6356342 () Bool)

(assert (=> b!5321376 m!6356342))

(declare-fun m!6356344 () Bool)

(assert (=> b!5321376 m!6356344))

(assert (=> b!5320350 d!1709370))

(declare-fun d!1709372 () Bool)

(declare-fun res!2257085 () Bool)

(declare-fun e!3305965 () Bool)

(assert (=> d!1709372 (=> res!2257085 e!3305965)))

(assert (=> d!1709372 (= res!2257085 ((_ is Nil!61107) zl!343))))

(assert (=> d!1709372 (= (forall!14397 zl!343 lambda!271342) e!3305965)))

(declare-fun b!5321378 () Bool)

(declare-fun e!3305966 () Bool)

(assert (=> b!5321378 (= e!3305965 e!3305966)))

(declare-fun res!2257086 () Bool)

(assert (=> b!5321378 (=> (not res!2257086) (not e!3305966))))

(assert (=> b!5321378 (= res!2257086 (dynLambda!24156 lambda!271342 (h!67555 zl!343)))))

(declare-fun b!5321379 () Bool)

(assert (=> b!5321379 (= e!3305966 (forall!14397 (t!374442 zl!343) lambda!271342))))

(assert (= (and d!1709372 (not res!2257085)) b!5321378))

(assert (= (and b!5321378 res!2257086) b!5321379))

(declare-fun b_lambda!204717 () Bool)

(assert (=> (not b_lambda!204717) (not b!5321378)))

(declare-fun m!6356346 () Bool)

(assert (=> b!5321378 m!6356346))

(declare-fun m!6356348 () Bool)

(assert (=> b!5321379 m!6356348))

(assert (=> b!5320178 d!1709372))

(declare-fun d!1709374 () Bool)

(assert (=> d!1709374 (= (nullable!5146 (regOne!30466 (regOne!30466 (regOne!30466 r!7292)))) (nullableFct!1496 (regOne!30466 (regOne!30466 (regOne!30466 r!7292)))))))

(declare-fun bs!1233331 () Bool)

(assert (= bs!1233331 d!1709374))

(declare-fun m!6356350 () Bool)

(assert (=> bs!1233331 m!6356350))

(assert (=> b!5320274 d!1709374))

(declare-fun d!1709376 () Bool)

(declare-fun res!2257087 () Bool)

(declare-fun e!3305967 () Bool)

(assert (=> d!1709376 (=> res!2257087 e!3305967)))

(assert (=> d!1709376 (= res!2257087 ((_ is Nil!61106) lt!2171838))))

(assert (=> d!1709376 (= (forall!14395 lt!2171838 lambda!271352) e!3305967)))

(declare-fun b!5321380 () Bool)

(declare-fun e!3305968 () Bool)

(assert (=> b!5321380 (= e!3305967 e!3305968)))

(declare-fun res!2257088 () Bool)

(assert (=> b!5321380 (=> (not res!2257088) (not e!3305968))))

(assert (=> b!5321380 (= res!2257088 (dynLambda!24155 lambda!271352 (h!67554 lt!2171838)))))

(declare-fun b!5321381 () Bool)

(assert (=> b!5321381 (= e!3305968 (forall!14395 (t!374441 lt!2171838) lambda!271352))))

(assert (= (and d!1709376 (not res!2257087)) b!5321380))

(assert (= (and b!5321380 res!2257088) b!5321381))

(declare-fun b_lambda!204719 () Bool)

(assert (=> (not b_lambda!204719) (not b!5321380)))

(declare-fun m!6356352 () Bool)

(assert (=> b!5321380 m!6356352))

(declare-fun m!6356354 () Bool)

(assert (=> b!5321381 m!6356354))

(assert (=> d!1708952 d!1709376))

(assert (=> d!1708900 d!1709260))

(declare-fun b!5321382 () Bool)

(declare-fun e!3305971 () Bool)

(declare-fun e!3305972 () Bool)

(assert (=> b!5321382 (= e!3305971 e!3305972)))

(declare-fun res!2257092 () Bool)

(assert (=> b!5321382 (= res!2257092 (not (nullable!5146 (reg!15306 lt!2171835))))))

(assert (=> b!5321382 (=> (not res!2257092) (not e!3305972))))

(declare-fun bm!379982 () Bool)

(declare-fun call!379987 () Bool)

(declare-fun c!924920 () Bool)

(declare-fun c!924921 () Bool)

(assert (=> bm!379982 (= call!379987 (validRegex!6713 (ite c!924921 (reg!15306 lt!2171835) (ite c!924920 (regTwo!30467 lt!2171835) (regTwo!30466 lt!2171835)))))))

(declare-fun b!5321383 () Bool)

(assert (=> b!5321383 (= e!3305972 call!379987)))

(declare-fun bm!379983 () Bool)

(declare-fun call!379988 () Bool)

(assert (=> bm!379983 (= call!379988 call!379987)))

(declare-fun bm!379984 () Bool)

(declare-fun call!379989 () Bool)

(assert (=> bm!379984 (= call!379989 (validRegex!6713 (ite c!924920 (regOne!30467 lt!2171835) (regOne!30466 lt!2171835))))))

(declare-fun b!5321385 () Bool)

(declare-fun res!2257090 () Bool)

(declare-fun e!3305973 () Bool)

(assert (=> b!5321385 (=> (not res!2257090) (not e!3305973))))

(assert (=> b!5321385 (= res!2257090 call!379989)))

(declare-fun e!3305975 () Bool)

(assert (=> b!5321385 (= e!3305975 e!3305973)))

(declare-fun b!5321386 () Bool)

(assert (=> b!5321386 (= e!3305973 call!379988)))

(declare-fun b!5321387 () Bool)

(assert (=> b!5321387 (= e!3305971 e!3305975)))

(assert (=> b!5321387 (= c!924920 ((_ is Union!14977) lt!2171835))))

(declare-fun b!5321388 () Bool)

(declare-fun e!3305974 () Bool)

(declare-fun e!3305970 () Bool)

(assert (=> b!5321388 (= e!3305974 e!3305970)))

(declare-fun res!2257091 () Bool)

(assert (=> b!5321388 (=> (not res!2257091) (not e!3305970))))

(assert (=> b!5321388 (= res!2257091 call!379989)))

(declare-fun b!5321384 () Bool)

(declare-fun e!3305969 () Bool)

(assert (=> b!5321384 (= e!3305969 e!3305971)))

(assert (=> b!5321384 (= c!924921 ((_ is Star!14977) lt!2171835))))

(declare-fun d!1709378 () Bool)

(declare-fun res!2257089 () Bool)

(assert (=> d!1709378 (=> res!2257089 e!3305969)))

(assert (=> d!1709378 (= res!2257089 ((_ is ElementMatch!14977) lt!2171835))))

(assert (=> d!1709378 (= (validRegex!6713 lt!2171835) e!3305969)))

(declare-fun b!5321389 () Bool)

(assert (=> b!5321389 (= e!3305970 call!379988)))

(declare-fun b!5321390 () Bool)

(declare-fun res!2257093 () Bool)

(assert (=> b!5321390 (=> res!2257093 e!3305974)))

(assert (=> b!5321390 (= res!2257093 (not ((_ is Concat!23822) lt!2171835)))))

(assert (=> b!5321390 (= e!3305975 e!3305974)))

(assert (= (and d!1709378 (not res!2257089)) b!5321384))

(assert (= (and b!5321384 c!924921) b!5321382))

(assert (= (and b!5321384 (not c!924921)) b!5321387))

(assert (= (and b!5321382 res!2257092) b!5321383))

(assert (= (and b!5321387 c!924920) b!5321385))

(assert (= (and b!5321387 (not c!924920)) b!5321390))

(assert (= (and b!5321385 res!2257090) b!5321386))

(assert (= (and b!5321390 (not res!2257093)) b!5321388))

(assert (= (and b!5321388 res!2257091) b!5321389))

(assert (= (or b!5321386 b!5321389) bm!379983))

(assert (= (or b!5321385 b!5321388) bm!379984))

(assert (= (or b!5321383 bm!379983) bm!379982))

(declare-fun m!6356356 () Bool)

(assert (=> b!5321382 m!6356356))

(declare-fun m!6356358 () Bool)

(assert (=> bm!379982 m!6356358))

(declare-fun m!6356360 () Bool)

(assert (=> bm!379984 m!6356360))

(assert (=> d!1708950 d!1709378))

(declare-fun d!1709380 () Bool)

(declare-fun res!2257094 () Bool)

(declare-fun e!3305976 () Bool)

(assert (=> d!1709380 (=> res!2257094 e!3305976)))

(assert (=> d!1709380 (= res!2257094 ((_ is Nil!61106) (unfocusZipperList!419 zl!343)))))

(assert (=> d!1709380 (= (forall!14395 (unfocusZipperList!419 zl!343) lambda!271349) e!3305976)))

(declare-fun b!5321391 () Bool)

(declare-fun e!3305977 () Bool)

(assert (=> b!5321391 (= e!3305976 e!3305977)))

(declare-fun res!2257095 () Bool)

(assert (=> b!5321391 (=> (not res!2257095) (not e!3305977))))

(assert (=> b!5321391 (= res!2257095 (dynLambda!24155 lambda!271349 (h!67554 (unfocusZipperList!419 zl!343))))))

(declare-fun b!5321392 () Bool)

(assert (=> b!5321392 (= e!3305977 (forall!14395 (t!374441 (unfocusZipperList!419 zl!343)) lambda!271349))))

(assert (= (and d!1709380 (not res!2257094)) b!5321391))

(assert (= (and b!5321391 res!2257095) b!5321392))

(declare-fun b_lambda!204721 () Bool)

(assert (=> (not b_lambda!204721) (not b!5321391)))

(declare-fun m!6356362 () Bool)

(assert (=> b!5321391 m!6356362))

(declare-fun m!6356364 () Bool)

(assert (=> b!5321392 m!6356364))

(assert (=> d!1708950 d!1709380))

(declare-fun b!5321393 () Bool)

(declare-fun e!3305981 () (InoxSet Context!8722))

(assert (=> b!5321393 (= e!3305981 (store ((as const (Array Context!8722 Bool)) false) (ite (or c!924620 c!924617) (Context!8723 lt!2171729) (Context!8723 call!379800)) true))))

(declare-fun b!5321394 () Bool)

(declare-fun c!924923 () Bool)

(declare-fun e!3305982 () Bool)

(assert (=> b!5321394 (= c!924923 e!3305982)))

(declare-fun res!2257096 () Bool)

(assert (=> b!5321394 (=> (not res!2257096) (not e!3305982))))

(assert (=> b!5321394 (= res!2257096 ((_ is Concat!23822) (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292))))))))))

(declare-fun e!3305983 () (InoxSet Context!8722))

(declare-fun e!3305980 () (InoxSet Context!8722))

(assert (=> b!5321394 (= e!3305983 e!3305980)))

(declare-fun bm!379985 () Bool)

(declare-fun call!379993 () List!61230)

(declare-fun call!379994 () List!61230)

(assert (=> bm!379985 (= call!379993 call!379994)))

(declare-fun b!5321395 () Bool)

(declare-fun e!3305979 () (InoxSet Context!8722))

(assert (=> b!5321395 (= e!3305979 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5321396 () Bool)

(declare-fun call!379995 () (InoxSet Context!8722))

(declare-fun call!379991 () (InoxSet Context!8722))

(assert (=> b!5321396 (= e!3305983 ((_ map or) call!379995 call!379991))))

(declare-fun c!924924 () Bool)

(declare-fun b!5321397 () Bool)

(assert (=> b!5321397 (= c!924924 ((_ is Star!14977) (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292))))))))))

(declare-fun e!3305978 () (InoxSet Context!8722))

(assert (=> b!5321397 (= e!3305978 e!3305979)))

(declare-fun c!924922 () Bool)

(declare-fun d!1709382 () Bool)

(assert (=> d!1709382 (= c!924922 (and ((_ is ElementMatch!14977) (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292))))))) (= (c!924467 (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292))))))) (h!67556 s!2326))))))

(assert (=> d!1709382 (= (derivationStepZipperDown!425 (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292)))))) (ite (or c!924620 c!924617) (Context!8723 lt!2171729) (Context!8723 call!379800)) (h!67556 s!2326)) e!3305981)))

(declare-fun bm!379986 () Bool)

(declare-fun c!924925 () Bool)

(assert (=> bm!379986 (= call!379994 ($colon$colon!1394 (exprs!4861 (ite (or c!924620 c!924617) (Context!8723 lt!2171729) (Context!8723 call!379800))) (ite (or c!924923 c!924925) (regTwo!30466 (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292))))))) (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292)))))))))))

(declare-fun bm!379987 () Bool)

(declare-fun call!379992 () (InoxSet Context!8722))

(assert (=> bm!379987 (= call!379992 call!379991)))

(declare-fun b!5321398 () Bool)

(declare-fun call!379990 () (InoxSet Context!8722))

(assert (=> b!5321398 (= e!3305978 call!379990)))

(declare-fun b!5321399 () Bool)

(assert (=> b!5321399 (= e!3305981 e!3305983)))

(declare-fun c!924926 () Bool)

(assert (=> b!5321399 (= c!924926 ((_ is Union!14977) (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292))))))))))

(declare-fun bm!379988 () Bool)

(assert (=> bm!379988 (= call!379990 call!379992)))

(declare-fun b!5321400 () Bool)

(assert (=> b!5321400 (= e!3305979 call!379990)))

(declare-fun b!5321401 () Bool)

(assert (=> b!5321401 (= e!3305982 (nullable!5146 (regOne!30466 (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292)))))))))))

(declare-fun b!5321402 () Bool)

(assert (=> b!5321402 (= e!3305980 ((_ map or) call!379995 call!379992))))

(declare-fun bm!379989 () Bool)

(assert (=> bm!379989 (= call!379995 (derivationStepZipperDown!425 (ite c!924926 (regOne!30467 (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292))))))) (regOne!30466 (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292)))))))) (ite c!924926 (ite (or c!924620 c!924617) (Context!8723 lt!2171729) (Context!8723 call!379800)) (Context!8723 call!379994)) (h!67556 s!2326)))))

(declare-fun b!5321403 () Bool)

(assert (=> b!5321403 (= e!3305980 e!3305978)))

(assert (=> b!5321403 (= c!924925 ((_ is Concat!23822) (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292))))))))))

(declare-fun bm!379990 () Bool)

(assert (=> bm!379990 (= call!379991 (derivationStepZipperDown!425 (ite c!924926 (regTwo!30467 (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292))))))) (ite c!924923 (regTwo!30466 (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292))))))) (ite c!924925 (regOne!30466 (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292))))))) (reg!15306 (ite c!924620 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (ite c!924617 (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (ite c!924619 (regOne!30466 (regOne!30466 (regOne!30466 r!7292))) (reg!15306 (regOne!30466 (regOne!30466 r!7292)))))))))) (ite (or c!924926 c!924923) (ite (or c!924620 c!924617) (Context!8723 lt!2171729) (Context!8723 call!379800)) (Context!8723 call!379993)) (h!67556 s!2326)))))

(assert (= (and d!1709382 c!924922) b!5321393))

(assert (= (and d!1709382 (not c!924922)) b!5321399))

(assert (= (and b!5321399 c!924926) b!5321396))

(assert (= (and b!5321399 (not c!924926)) b!5321394))

(assert (= (and b!5321394 res!2257096) b!5321401))

(assert (= (and b!5321394 c!924923) b!5321402))

(assert (= (and b!5321394 (not c!924923)) b!5321403))

(assert (= (and b!5321403 c!924925) b!5321398))

(assert (= (and b!5321403 (not c!924925)) b!5321397))

(assert (= (and b!5321397 c!924924) b!5321400))

(assert (= (and b!5321397 (not c!924924)) b!5321395))

(assert (= (or b!5321398 b!5321400) bm!379985))

(assert (= (or b!5321398 b!5321400) bm!379988))

(assert (= (or b!5321402 bm!379985) bm!379986))

(assert (= (or b!5321402 bm!379988) bm!379987))

(assert (= (or b!5321396 bm!379987) bm!379990))

(assert (= (or b!5321396 b!5321402) bm!379989))

(declare-fun m!6356366 () Bool)

(assert (=> bm!379990 m!6356366))

(declare-fun m!6356368 () Bool)

(assert (=> bm!379986 m!6356368))

(declare-fun m!6356370 () Bool)

(assert (=> b!5321401 m!6356370))

(declare-fun m!6356372 () Bool)

(assert (=> bm!379989 m!6356372))

(declare-fun m!6356374 () Bool)

(assert (=> b!5321393 m!6356374))

(assert (=> bm!379797 d!1709382))

(declare-fun d!1709384 () Bool)

(declare-fun c!924927 () Bool)

(assert (=> d!1709384 (= c!924927 (isEmpty!33079 (tail!10503 (t!374443 s!2326))))))

(declare-fun e!3305984 () Bool)

(assert (=> d!1709384 (= (matchZipper!1221 (derivationStepZipper!1218 lt!2171740 (head!11406 (t!374443 s!2326))) (tail!10503 (t!374443 s!2326))) e!3305984)))

(declare-fun b!5321404 () Bool)

(assert (=> b!5321404 (= e!3305984 (nullableZipper!1344 (derivationStepZipper!1218 lt!2171740 (head!11406 (t!374443 s!2326)))))))

(declare-fun b!5321405 () Bool)

(assert (=> b!5321405 (= e!3305984 (matchZipper!1221 (derivationStepZipper!1218 (derivationStepZipper!1218 lt!2171740 (head!11406 (t!374443 s!2326))) (head!11406 (tail!10503 (t!374443 s!2326)))) (tail!10503 (tail!10503 (t!374443 s!2326)))))))

(assert (= (and d!1709384 c!924927) b!5321404))

(assert (= (and d!1709384 (not c!924927)) b!5321405))

(assert (=> d!1709384 m!6355330))

(assert (=> d!1709384 m!6356162))

(assert (=> b!5321404 m!6355450))

(declare-fun m!6356376 () Bool)

(assert (=> b!5321404 m!6356376))

(assert (=> b!5321405 m!6355330))

(assert (=> b!5321405 m!6356166))

(assert (=> b!5321405 m!6355450))

(assert (=> b!5321405 m!6356166))

(declare-fun m!6356378 () Bool)

(assert (=> b!5321405 m!6356378))

(assert (=> b!5321405 m!6355330))

(assert (=> b!5321405 m!6356170))

(assert (=> b!5321405 m!6356378))

(assert (=> b!5321405 m!6356170))

(declare-fun m!6356380 () Bool)

(assert (=> b!5321405 m!6356380))

(assert (=> b!5320341 d!1709384))

(declare-fun bs!1233332 () Bool)

(declare-fun d!1709386 () Bool)

(assert (= bs!1233332 (and d!1709386 b!5319771)))

(declare-fun lambda!271440 () Int)

(assert (=> bs!1233332 (= (= (head!11406 (t!374443 s!2326)) (h!67556 s!2326)) (= lambda!271440 lambda!271286))))

(declare-fun bs!1233333 () Bool)

(assert (= bs!1233333 (and d!1709386 d!1708984)))

(assert (=> bs!1233333 (= (= (head!11406 (t!374443 s!2326)) (h!67556 s!2326)) (= lambda!271440 lambda!271364))))

(declare-fun bs!1233334 () Bool)

(assert (= bs!1233334 (and d!1709386 d!1709278)))

(assert (=> bs!1233334 (= lambda!271440 lambda!271416)))

(assert (=> d!1709386 true))

(assert (=> d!1709386 (= (derivationStepZipper!1218 lt!2171740 (head!11406 (t!374443 s!2326))) (flatMap!704 lt!2171740 lambda!271440))))

(declare-fun bs!1233335 () Bool)

(assert (= bs!1233335 d!1709386))

(declare-fun m!6356382 () Bool)

(assert (=> bs!1233335 m!6356382))

(assert (=> b!5320341 d!1709386))

(assert (=> b!5320341 d!1709280))

(assert (=> b!5320341 d!1709282))

(declare-fun d!1709388 () Bool)

(assert (=> d!1709388 (= (flatMap!704 lt!2171735 lambda!271364) (choose!39824 lt!2171735 lambda!271364))))

(declare-fun bs!1233336 () Bool)

(assert (= bs!1233336 d!1709388))

(declare-fun m!6356384 () Bool)

(assert (=> bs!1233336 m!6356384))

(assert (=> d!1708984 d!1709388))

(declare-fun d!1709390 () Bool)

(assert (=> d!1709390 (= (isDefined!11791 lt!2171854) (not (isEmpty!33080 lt!2171854)))))

(declare-fun bs!1233337 () Bool)

(assert (= bs!1233337 d!1709390))

(declare-fun m!6356386 () Bool)

(assert (=> bs!1233337 m!6356386))

(assert (=> d!1708970 d!1709390))

(declare-fun b!5321406 () Bool)

(declare-fun res!2257100 () Bool)

(declare-fun e!3305989 () Bool)

(assert (=> b!5321406 (=> (not res!2257100) (not e!3305989))))

(assert (=> b!5321406 (= res!2257100 (isEmpty!33079 (tail!10503 Nil!61108)))))

(declare-fun d!1709392 () Bool)

(declare-fun e!3305985 () Bool)

(assert (=> d!1709392 e!3305985))

(declare-fun c!924929 () Bool)

(assert (=> d!1709392 (= c!924929 ((_ is EmptyExpr!14977) (regOne!30466 r!7292)))))

(declare-fun lt!2171962 () Bool)

(declare-fun e!3305991 () Bool)

(assert (=> d!1709392 (= lt!2171962 e!3305991)))

(declare-fun c!924928 () Bool)

(assert (=> d!1709392 (= c!924928 (isEmpty!33079 Nil!61108))))

(assert (=> d!1709392 (validRegex!6713 (regOne!30466 r!7292))))

(assert (=> d!1709392 (= (matchR!7162 (regOne!30466 r!7292) Nil!61108) lt!2171962)))

(declare-fun bm!379991 () Bool)

(declare-fun call!379996 () Bool)

(assert (=> bm!379991 (= call!379996 (isEmpty!33079 Nil!61108))))

(declare-fun b!5321407 () Bool)

(declare-fun res!2257104 () Bool)

(declare-fun e!3305988 () Bool)

(assert (=> b!5321407 (=> res!2257104 e!3305988)))

(assert (=> b!5321407 (= res!2257104 (not ((_ is ElementMatch!14977) (regOne!30466 r!7292))))))

(declare-fun e!3305990 () Bool)

(assert (=> b!5321407 (= e!3305990 e!3305988)))

(declare-fun b!5321408 () Bool)

(assert (=> b!5321408 (= e!3305985 e!3305990)))

(declare-fun c!924930 () Bool)

(assert (=> b!5321408 (= c!924930 ((_ is EmptyLang!14977) (regOne!30466 r!7292)))))

(declare-fun b!5321409 () Bool)

(declare-fun e!3305986 () Bool)

(declare-fun e!3305987 () Bool)

(assert (=> b!5321409 (= e!3305986 e!3305987)))

(declare-fun res!2257099 () Bool)

(assert (=> b!5321409 (=> res!2257099 e!3305987)))

(assert (=> b!5321409 (= res!2257099 call!379996)))

(declare-fun b!5321410 () Bool)

(assert (=> b!5321410 (= e!3305985 (= lt!2171962 call!379996))))

(declare-fun b!5321411 () Bool)

(assert (=> b!5321411 (= e!3305991 (nullable!5146 (regOne!30466 r!7292)))))

(declare-fun b!5321412 () Bool)

(assert (=> b!5321412 (= e!3305991 (matchR!7162 (derivativeStep!4165 (regOne!30466 r!7292) (head!11406 Nil!61108)) (tail!10503 Nil!61108)))))

(declare-fun b!5321413 () Bool)

(declare-fun res!2257102 () Bool)

(assert (=> b!5321413 (=> (not res!2257102) (not e!3305989))))

(assert (=> b!5321413 (= res!2257102 (not call!379996))))

(declare-fun b!5321414 () Bool)

(assert (=> b!5321414 (= e!3305988 e!3305986)))

(declare-fun res!2257098 () Bool)

(assert (=> b!5321414 (=> (not res!2257098) (not e!3305986))))

(assert (=> b!5321414 (= res!2257098 (not lt!2171962))))

(declare-fun b!5321415 () Bool)

(assert (=> b!5321415 (= e!3305989 (= (head!11406 Nil!61108) (c!924467 (regOne!30466 r!7292))))))

(declare-fun b!5321416 () Bool)

(assert (=> b!5321416 (= e!3305987 (not (= (head!11406 Nil!61108) (c!924467 (regOne!30466 r!7292)))))))

(declare-fun b!5321417 () Bool)

(declare-fun res!2257103 () Bool)

(assert (=> b!5321417 (=> res!2257103 e!3305987)))

(assert (=> b!5321417 (= res!2257103 (not (isEmpty!33079 (tail!10503 Nil!61108))))))

(declare-fun b!5321418 () Bool)

(assert (=> b!5321418 (= e!3305990 (not lt!2171962))))

(declare-fun b!5321419 () Bool)

(declare-fun res!2257101 () Bool)

(assert (=> b!5321419 (=> res!2257101 e!3305988)))

(assert (=> b!5321419 (= res!2257101 e!3305989)))

(declare-fun res!2257097 () Bool)

(assert (=> b!5321419 (=> (not res!2257097) (not e!3305989))))

(assert (=> b!5321419 (= res!2257097 lt!2171962)))

(assert (= (and d!1709392 c!924928) b!5321411))

(assert (= (and d!1709392 (not c!924928)) b!5321412))

(assert (= (and d!1709392 c!924929) b!5321410))

(assert (= (and d!1709392 (not c!924929)) b!5321408))

(assert (= (and b!5321408 c!924930) b!5321418))

(assert (= (and b!5321408 (not c!924930)) b!5321407))

(assert (= (and b!5321407 (not res!2257104)) b!5321419))

(assert (= (and b!5321419 res!2257097) b!5321413))

(assert (= (and b!5321413 res!2257102) b!5321406))

(assert (= (and b!5321406 res!2257100) b!5321415))

(assert (= (and b!5321419 (not res!2257101)) b!5321414))

(assert (= (and b!5321414 res!2257098) b!5321409))

(assert (= (and b!5321409 (not res!2257099)) b!5321417))

(assert (= (and b!5321417 (not res!2257103)) b!5321416))

(assert (= (or b!5321410 b!5321413 b!5321409) bm!379991))

(declare-fun m!6356388 () Bool)

(assert (=> b!5321415 m!6356388))

(declare-fun m!6356390 () Bool)

(assert (=> b!5321417 m!6356390))

(assert (=> b!5321417 m!6356390))

(declare-fun m!6356392 () Bool)

(assert (=> b!5321417 m!6356392))

(assert (=> b!5321406 m!6356390))

(assert (=> b!5321406 m!6356390))

(assert (=> b!5321406 m!6356392))

(declare-fun m!6356394 () Bool)

(assert (=> b!5321411 m!6356394))

(declare-fun m!6356396 () Bool)

(assert (=> d!1709392 m!6356396))

(assert (=> d!1709392 m!6355472))

(assert (=> bm!379991 m!6356396))

(assert (=> b!5321416 m!6356388))

(assert (=> b!5321412 m!6356388))

(assert (=> b!5321412 m!6356388))

(declare-fun m!6356398 () Bool)

(assert (=> b!5321412 m!6356398))

(assert (=> b!5321412 m!6356390))

(assert (=> b!5321412 m!6356398))

(assert (=> b!5321412 m!6356390))

(declare-fun m!6356400 () Bool)

(assert (=> b!5321412 m!6356400))

(assert (=> d!1708970 d!1709392))

(declare-fun b!5321420 () Bool)

(declare-fun e!3305994 () Bool)

(declare-fun e!3305995 () Bool)

(assert (=> b!5321420 (= e!3305994 e!3305995)))

(declare-fun res!2257108 () Bool)

(assert (=> b!5321420 (= res!2257108 (not (nullable!5146 (reg!15306 (regOne!30466 r!7292)))))))

(assert (=> b!5321420 (=> (not res!2257108) (not e!3305995))))

(declare-fun c!924932 () Bool)

(declare-fun bm!379992 () Bool)

(declare-fun call!379997 () Bool)

(declare-fun c!924931 () Bool)

(assert (=> bm!379992 (= call!379997 (validRegex!6713 (ite c!924932 (reg!15306 (regOne!30466 r!7292)) (ite c!924931 (regTwo!30467 (regOne!30466 r!7292)) (regTwo!30466 (regOne!30466 r!7292))))))))

(declare-fun b!5321421 () Bool)

(assert (=> b!5321421 (= e!3305995 call!379997)))

(declare-fun bm!379993 () Bool)

(declare-fun call!379998 () Bool)

(assert (=> bm!379993 (= call!379998 call!379997)))

(declare-fun bm!379994 () Bool)

(declare-fun call!379999 () Bool)

(assert (=> bm!379994 (= call!379999 (validRegex!6713 (ite c!924931 (regOne!30467 (regOne!30466 r!7292)) (regOne!30466 (regOne!30466 r!7292)))))))

(declare-fun b!5321423 () Bool)

(declare-fun res!2257106 () Bool)

(declare-fun e!3305996 () Bool)

(assert (=> b!5321423 (=> (not res!2257106) (not e!3305996))))

(assert (=> b!5321423 (= res!2257106 call!379999)))

(declare-fun e!3305998 () Bool)

(assert (=> b!5321423 (= e!3305998 e!3305996)))

(declare-fun b!5321424 () Bool)

(assert (=> b!5321424 (= e!3305996 call!379998)))

(declare-fun b!5321425 () Bool)

(assert (=> b!5321425 (= e!3305994 e!3305998)))

(assert (=> b!5321425 (= c!924931 ((_ is Union!14977) (regOne!30466 r!7292)))))

(declare-fun b!5321426 () Bool)

(declare-fun e!3305997 () Bool)

(declare-fun e!3305993 () Bool)

(assert (=> b!5321426 (= e!3305997 e!3305993)))

(declare-fun res!2257107 () Bool)

(assert (=> b!5321426 (=> (not res!2257107) (not e!3305993))))

(assert (=> b!5321426 (= res!2257107 call!379999)))

(declare-fun b!5321422 () Bool)

(declare-fun e!3305992 () Bool)

(assert (=> b!5321422 (= e!3305992 e!3305994)))

(assert (=> b!5321422 (= c!924932 ((_ is Star!14977) (regOne!30466 r!7292)))))

(declare-fun d!1709394 () Bool)

(declare-fun res!2257105 () Bool)

(assert (=> d!1709394 (=> res!2257105 e!3305992)))

(assert (=> d!1709394 (= res!2257105 ((_ is ElementMatch!14977) (regOne!30466 r!7292)))))

(assert (=> d!1709394 (= (validRegex!6713 (regOne!30466 r!7292)) e!3305992)))

(declare-fun b!5321427 () Bool)

(assert (=> b!5321427 (= e!3305993 call!379998)))

(declare-fun b!5321428 () Bool)

(declare-fun res!2257109 () Bool)

(assert (=> b!5321428 (=> res!2257109 e!3305997)))

(assert (=> b!5321428 (= res!2257109 (not ((_ is Concat!23822) (regOne!30466 r!7292))))))

(assert (=> b!5321428 (= e!3305998 e!3305997)))

(assert (= (and d!1709394 (not res!2257105)) b!5321422))

(assert (= (and b!5321422 c!924932) b!5321420))

(assert (= (and b!5321422 (not c!924932)) b!5321425))

(assert (= (and b!5321420 res!2257108) b!5321421))

(assert (= (and b!5321425 c!924931) b!5321423))

(assert (= (and b!5321425 (not c!924931)) b!5321428))

(assert (= (and b!5321423 res!2257106) b!5321424))

(assert (= (and b!5321428 (not res!2257109)) b!5321426))

(assert (= (and b!5321426 res!2257107) b!5321427))

(assert (= (or b!5321424 b!5321427) bm!379993))

(assert (= (or b!5321423 b!5321426) bm!379994))

(assert (= (or b!5321421 bm!379993) bm!379992))

(declare-fun m!6356402 () Bool)

(assert (=> b!5321420 m!6356402))

(declare-fun m!6356404 () Bool)

(assert (=> bm!379992 m!6356404))

(declare-fun m!6356406 () Bool)

(assert (=> bm!379994 m!6356406))

(assert (=> d!1708970 d!1709394))

(assert (=> b!5320556 d!1709296))

(assert (=> b!5320428 d!1708992))

(assert (=> d!1708956 d!1709260))

(declare-fun b!5321429 () Bool)

(declare-fun e!3306000 () Int)

(assert (=> b!5321429 (= e!3306000 1)))

(declare-fun bm!379995 () Bool)

(declare-fun call!380000 () Int)

(declare-fun c!924936 () Bool)

(declare-fun c!924935 () Bool)

(assert (=> bm!379995 (= call!380000 (regexDepthTotal!49 (ite c!924936 (reg!15306 (h!67554 (exprs!4861 lt!2171733))) (ite c!924935 (regTwo!30467 (h!67554 (exprs!4861 lt!2171733))) (regTwo!30466 (h!67554 (exprs!4861 lt!2171733)))))))))

(declare-fun b!5321430 () Bool)

(declare-fun e!3305999 () Int)

(declare-fun call!380002 () Int)

(declare-fun call!380001 () Int)

(assert (=> b!5321430 (= e!3305999 (+ 1 call!380002 call!380001))))

(declare-fun b!5321431 () Bool)

(declare-fun e!3306001 () Int)

(assert (=> b!5321431 (= e!3306000 e!3306001)))

(assert (=> b!5321431 (= c!924936 ((_ is Star!14977) (h!67554 (exprs!4861 lt!2171733))))))

(declare-fun b!5321432 () Bool)

(declare-fun e!3306002 () Int)

(assert (=> b!5321432 (= e!3306002 (+ 1 call!380002 call!380001))))

(declare-fun b!5321433 () Bool)

(assert (=> b!5321433 (= e!3306001 (+ 1 call!380000))))

(declare-fun b!5321434 () Bool)

(assert (=> b!5321434 (= c!924935 ((_ is Union!14977) (h!67554 (exprs!4861 lt!2171733))))))

(assert (=> b!5321434 (= e!3306001 e!3306002)))

(declare-fun bm!379997 () Bool)

(assert (=> bm!379997 (= call!380002 (regexDepthTotal!49 (ite c!924935 (regOne!30467 (h!67554 (exprs!4861 lt!2171733))) (regOne!30466 (h!67554 (exprs!4861 lt!2171733))))))))

(declare-fun b!5321435 () Bool)

(assert (=> b!5321435 (= e!3306002 e!3305999)))

(declare-fun c!924933 () Bool)

(assert (=> b!5321435 (= c!924933 ((_ is Concat!23822) (h!67554 (exprs!4861 lt!2171733))))))

(declare-fun b!5321436 () Bool)

(assert (=> b!5321436 (= e!3305999 1)))

(declare-fun d!1709396 () Bool)

(declare-fun lt!2171963 () Int)

(assert (=> d!1709396 (> lt!2171963 0)))

(assert (=> d!1709396 (= lt!2171963 e!3306000)))

(declare-fun c!924934 () Bool)

(assert (=> d!1709396 (= c!924934 ((_ is ElementMatch!14977) (h!67554 (exprs!4861 lt!2171733))))))

(assert (=> d!1709396 (= (regexDepthTotal!49 (h!67554 (exprs!4861 lt!2171733))) lt!2171963)))

(declare-fun bm!379996 () Bool)

(assert (=> bm!379996 (= call!380001 call!380000)))

(assert (= (and d!1709396 c!924934) b!5321429))

(assert (= (and d!1709396 (not c!924934)) b!5321431))

(assert (= (and b!5321431 c!924936) b!5321433))

(assert (= (and b!5321431 (not c!924936)) b!5321434))

(assert (= (and b!5321434 c!924935) b!5321432))

(assert (= (and b!5321434 (not c!924935)) b!5321435))

(assert (= (and b!5321435 c!924933) b!5321430))

(assert (= (and b!5321435 (not c!924933)) b!5321436))

(assert (= (or b!5321432 b!5321430) bm!379996))

(assert (= (or b!5321432 b!5321430) bm!379997))

(assert (= (or b!5321433 bm!379996) bm!379995))

(declare-fun m!6356408 () Bool)

(assert (=> bm!379995 m!6356408))

(declare-fun m!6356410 () Bool)

(assert (=> bm!379997 m!6356410))

(assert (=> b!5320348 d!1709396))

(declare-fun d!1709398 () Bool)

(declare-fun lt!2171964 () Int)

(assert (=> d!1709398 (>= lt!2171964 0)))

(declare-fun e!3306003 () Int)

(assert (=> d!1709398 (= lt!2171964 e!3306003)))

(declare-fun c!924937 () Bool)

(assert (=> d!1709398 (= c!924937 ((_ is Cons!61106) (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171733))))))))

(assert (=> d!1709398 (= (contextDepthTotal!110 (Context!8723 (t!374441 (exprs!4861 lt!2171733)))) lt!2171964)))

(declare-fun b!5321437 () Bool)

(assert (=> b!5321437 (= e!3306003 (+ (regexDepthTotal!49 (h!67554 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171733)))))) (contextDepthTotal!110 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171733)))))))))))

(declare-fun b!5321438 () Bool)

(assert (=> b!5321438 (= e!3306003 1)))

(assert (= (and d!1709398 c!924937) b!5321437))

(assert (= (and d!1709398 (not c!924937)) b!5321438))

(declare-fun m!6356412 () Bool)

(assert (=> b!5321437 m!6356412))

(declare-fun m!6356414 () Bool)

(assert (=> b!5321437 m!6356414))

(assert (=> b!5320348 d!1709398))

(declare-fun bs!1233338 () Bool)

(declare-fun b!5321442 () Bool)

(assert (= bs!1233338 (and b!5321442 b!5320516)))

(declare-fun lambda!271441 () Int)

(assert (=> bs!1233338 (not (= lambda!271441 lambda!271373))))

(declare-fun bs!1233339 () Bool)

(assert (= bs!1233339 (and b!5321442 d!1708972)))

(assert (=> bs!1233339 (not (= lambda!271441 lambda!271361))))

(declare-fun bs!1233340 () Bool)

(assert (= bs!1233340 (and b!5321442 b!5320510)))

(assert (=> bs!1233340 (= (and (= (reg!15306 (regTwo!30467 r!7292)) (reg!15306 r!7292)) (= (regTwo!30467 r!7292) r!7292)) (= lambda!271441 lambda!271372))))

(declare-fun bs!1233341 () Bool)

(assert (= bs!1233341 (and b!5321442 d!1708966)))

(assert (=> bs!1233341 (not (= lambda!271441 lambda!271355))))

(declare-fun bs!1233342 () Bool)

(assert (= bs!1233342 (and b!5321442 b!5319790)))

(assert (=> bs!1233342 (not (= lambda!271441 lambda!271284))))

(assert (=> bs!1233339 (not (= lambda!271441 lambda!271360))))

(assert (=> bs!1233342 (not (= lambda!271441 lambda!271285))))

(assert (=> b!5321442 true))

(assert (=> b!5321442 true))

(declare-fun bs!1233343 () Bool)

(declare-fun b!5321448 () Bool)

(assert (= bs!1233343 (and b!5321448 b!5320516)))

(declare-fun lambda!271442 () Int)

(assert (=> bs!1233343 (= (and (= (regOne!30466 (regTwo!30467 r!7292)) (regOne!30466 r!7292)) (= (regTwo!30466 (regTwo!30467 r!7292)) (regTwo!30466 r!7292))) (= lambda!271442 lambda!271373))))

(declare-fun bs!1233344 () Bool)

(assert (= bs!1233344 (and b!5321448 d!1708972)))

(assert (=> bs!1233344 (= (and (= (regOne!30466 (regTwo!30467 r!7292)) (regOne!30466 r!7292)) (= (regTwo!30466 (regTwo!30467 r!7292)) (regTwo!30466 r!7292))) (= lambda!271442 lambda!271361))))

(declare-fun bs!1233345 () Bool)

(assert (= bs!1233345 (and b!5321448 b!5320510)))

(assert (=> bs!1233345 (not (= lambda!271442 lambda!271372))))

(declare-fun bs!1233346 () Bool)

(assert (= bs!1233346 (and b!5321448 d!1708966)))

(assert (=> bs!1233346 (not (= lambda!271442 lambda!271355))))

(declare-fun bs!1233347 () Bool)

(assert (= bs!1233347 (and b!5321448 b!5321442)))

(assert (=> bs!1233347 (not (= lambda!271442 lambda!271441))))

(declare-fun bs!1233348 () Bool)

(assert (= bs!1233348 (and b!5321448 b!5319790)))

(assert (=> bs!1233348 (not (= lambda!271442 lambda!271284))))

(assert (=> bs!1233344 (not (= lambda!271442 lambda!271360))))

(assert (=> bs!1233348 (= (and (= (regOne!30466 (regTwo!30467 r!7292)) (regOne!30466 r!7292)) (= (regTwo!30466 (regTwo!30467 r!7292)) (regTwo!30466 r!7292))) (= lambda!271442 lambda!271285))))

(assert (=> b!5321448 true))

(assert (=> b!5321448 true))

(declare-fun b!5321439 () Bool)

(declare-fun c!924939 () Bool)

(assert (=> b!5321439 (= c!924939 ((_ is Union!14977) (regTwo!30467 r!7292)))))

(declare-fun e!3306008 () Bool)

(declare-fun e!3306010 () Bool)

(assert (=> b!5321439 (= e!3306008 e!3306010)))

(declare-fun b!5321440 () Bool)

(declare-fun e!3306009 () Bool)

(declare-fun call!380003 () Bool)

(assert (=> b!5321440 (= e!3306009 call!380003)))

(declare-fun b!5321441 () Bool)

(declare-fun e!3306007 () Bool)

(assert (=> b!5321441 (= e!3306010 e!3306007)))

(declare-fun c!924941 () Bool)

(assert (=> b!5321441 (= c!924941 ((_ is Star!14977) (regTwo!30467 r!7292)))))

(declare-fun e!3306005 () Bool)

(declare-fun call!380004 () Bool)

(assert (=> b!5321442 (= e!3306005 call!380004)))

(declare-fun b!5321443 () Bool)

(assert (=> b!5321443 (= e!3306008 (= s!2326 (Cons!61108 (c!924467 (regTwo!30467 r!7292)) Nil!61108)))))

(declare-fun bm!379998 () Bool)

(assert (=> bm!379998 (= call!380004 (Exists!2158 (ite c!924941 lambda!271441 lambda!271442)))))

(declare-fun b!5321444 () Bool)

(declare-fun e!3306004 () Bool)

(assert (=> b!5321444 (= e!3306009 e!3306004)))

(declare-fun res!2257112 () Bool)

(assert (=> b!5321444 (= res!2257112 (not ((_ is EmptyLang!14977) (regTwo!30467 r!7292))))))

(assert (=> b!5321444 (=> (not res!2257112) (not e!3306004))))

(declare-fun b!5321445 () Bool)

(declare-fun res!2257111 () Bool)

(assert (=> b!5321445 (=> res!2257111 e!3306005)))

(assert (=> b!5321445 (= res!2257111 call!380003)))

(assert (=> b!5321445 (= e!3306007 e!3306005)))

(declare-fun b!5321446 () Bool)

(declare-fun c!924940 () Bool)

(assert (=> b!5321446 (= c!924940 ((_ is ElementMatch!14977) (regTwo!30467 r!7292)))))

(assert (=> b!5321446 (= e!3306004 e!3306008)))

(declare-fun b!5321447 () Bool)

(declare-fun e!3306006 () Bool)

(assert (=> b!5321447 (= e!3306006 (matchRSpec!2080 (regTwo!30467 (regTwo!30467 r!7292)) s!2326))))

(declare-fun d!1709400 () Bool)

(declare-fun c!924938 () Bool)

(assert (=> d!1709400 (= c!924938 ((_ is EmptyExpr!14977) (regTwo!30467 r!7292)))))

(assert (=> d!1709400 (= (matchRSpec!2080 (regTwo!30467 r!7292) s!2326) e!3306009)))

(assert (=> b!5321448 (= e!3306007 call!380004)))

(declare-fun bm!379999 () Bool)

(assert (=> bm!379999 (= call!380003 (isEmpty!33079 s!2326))))

(declare-fun b!5321449 () Bool)

(assert (=> b!5321449 (= e!3306010 e!3306006)))

(declare-fun res!2257110 () Bool)

(assert (=> b!5321449 (= res!2257110 (matchRSpec!2080 (regOne!30467 (regTwo!30467 r!7292)) s!2326))))

(assert (=> b!5321449 (=> res!2257110 e!3306006)))

(assert (= (and d!1709400 c!924938) b!5321440))

(assert (= (and d!1709400 (not c!924938)) b!5321444))

(assert (= (and b!5321444 res!2257112) b!5321446))

(assert (= (and b!5321446 c!924940) b!5321443))

(assert (= (and b!5321446 (not c!924940)) b!5321439))

(assert (= (and b!5321439 c!924939) b!5321449))

(assert (= (and b!5321439 (not c!924939)) b!5321441))

(assert (= (and b!5321449 (not res!2257110)) b!5321447))

(assert (= (and b!5321441 c!924941) b!5321445))

(assert (= (and b!5321441 (not c!924941)) b!5321448))

(assert (= (and b!5321445 (not res!2257111)) b!5321442))

(assert (= (or b!5321442 b!5321448) bm!379998))

(assert (= (or b!5321440 b!5321445) bm!379999))

(declare-fun m!6356416 () Bool)

(assert (=> bm!379998 m!6356416))

(declare-fun m!6356418 () Bool)

(assert (=> b!5321447 m!6356418))

(assert (=> bm!379999 m!6355596))

(declare-fun m!6356420 () Bool)

(assert (=> b!5321449 m!6356420))

(assert (=> b!5320515 d!1709400))

(declare-fun d!1709402 () Bool)

(assert (=> d!1709402 (= (nullable!5146 (h!67554 (exprs!4861 lt!2171733))) (nullableFct!1496 (h!67554 (exprs!4861 lt!2171733))))))

(declare-fun bs!1233349 () Bool)

(assert (= bs!1233349 d!1709402))

(declare-fun m!6356422 () Bool)

(assert (=> bs!1233349 m!6356422))

(assert (=> b!5320405 d!1709402))

(declare-fun d!1709404 () Bool)

(assert (=> d!1709404 true))

(assert (=> d!1709404 true))

(declare-fun res!2257115 () Bool)

(assert (=> d!1709404 (= (choose!39821 lambda!271284) res!2257115)))

(assert (=> d!1708968 d!1709404))

(declare-fun d!1709406 () Bool)

(assert (=> d!1709406 (= (isEmpty!33075 (tail!10504 (exprs!4861 (h!67555 zl!343)))) ((_ is Nil!61106) (tail!10504 (exprs!4861 (h!67555 zl!343)))))))

(assert (=> b!5320468 d!1709406))

(declare-fun d!1709408 () Bool)

(assert (=> d!1709408 (= (tail!10504 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343))))))

(assert (=> b!5320468 d!1709408))

(declare-fun d!1709410 () Bool)

(assert (=> d!1709410 (= (isEmptyLang!887 lt!2171835) ((_ is EmptyLang!14977) lt!2171835))))

(assert (=> b!5320299 d!1709410))

(assert (=> b!5320380 d!1709390))

(declare-fun d!1709412 () Bool)

(assert (=> d!1709412 (= (nullable!5146 r!7292) (nullableFct!1496 r!7292))))

(declare-fun bs!1233350 () Bool)

(assert (= bs!1233350 d!1709412))

(declare-fun m!6356424 () Bool)

(assert (=> bs!1233350 m!6356424))

(assert (=> b!5320551 d!1709412))

(declare-fun bm!380000 () Bool)

(declare-fun call!380005 () (InoxSet Context!8722))

(assert (=> bm!380000 (= call!380005 (derivationStepZipperDown!425 (h!67554 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171724))))) (Context!8723 (t!374441 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171724)))))) (h!67556 s!2326)))))

(declare-fun b!5321450 () Bool)

(declare-fun e!3306011 () (InoxSet Context!8722))

(declare-fun e!3306012 () (InoxSet Context!8722))

(assert (=> b!5321450 (= e!3306011 e!3306012)))

(declare-fun c!924943 () Bool)

(assert (=> b!5321450 (= c!924943 ((_ is Cons!61106) (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171724))))))))

(declare-fun b!5321451 () Bool)

(assert (=> b!5321451 (= e!3306012 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5321452 () Bool)

(assert (=> b!5321452 (= e!3306011 ((_ map or) call!380005 (derivationStepZipperUp!349 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171724)))))) (h!67556 s!2326))))))

(declare-fun b!5321453 () Bool)

(assert (=> b!5321453 (= e!3306012 call!380005)))

(declare-fun b!5321454 () Bool)

(declare-fun e!3306013 () Bool)

(assert (=> b!5321454 (= e!3306013 (nullable!5146 (h!67554 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171724)))))))))

(declare-fun d!1709414 () Bool)

(declare-fun c!924942 () Bool)

(assert (=> d!1709414 (= c!924942 e!3306013)))

(declare-fun res!2257116 () Bool)

(assert (=> d!1709414 (=> (not res!2257116) (not e!3306013))))

(assert (=> d!1709414 (= res!2257116 ((_ is Cons!61106) (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171724))))))))

(assert (=> d!1709414 (= (derivationStepZipperUp!349 (Context!8723 (t!374441 (exprs!4861 lt!2171724))) (h!67556 s!2326)) e!3306011)))

(assert (= (and d!1709414 res!2257116) b!5321454))

(assert (= (and d!1709414 c!924942) b!5321452))

(assert (= (and d!1709414 (not c!924942)) b!5321450))

(assert (= (and b!5321450 c!924943) b!5321453))

(assert (= (and b!5321450 (not c!924943)) b!5321451))

(assert (= (or b!5321452 b!5321453) bm!380000))

(declare-fun m!6356426 () Bool)

(assert (=> bm!380000 m!6356426))

(declare-fun m!6356428 () Bool)

(assert (=> b!5321452 m!6356428))

(declare-fun m!6356430 () Bool)

(assert (=> b!5321454 m!6356430))

(assert (=> b!5320431 d!1709414))

(declare-fun d!1709416 () Bool)

(declare-fun c!924944 () Bool)

(assert (=> d!1709416 (= c!924944 (isEmpty!33079 (tail!10503 (t!374443 s!2326))))))

(declare-fun e!3306014 () Bool)

(assert (=> d!1709416 (= (matchZipper!1221 (derivationStepZipper!1218 lt!2171730 (head!11406 (t!374443 s!2326))) (tail!10503 (t!374443 s!2326))) e!3306014)))

(declare-fun b!5321455 () Bool)

(assert (=> b!5321455 (= e!3306014 (nullableZipper!1344 (derivationStepZipper!1218 lt!2171730 (head!11406 (t!374443 s!2326)))))))

(declare-fun b!5321456 () Bool)

(assert (=> b!5321456 (= e!3306014 (matchZipper!1221 (derivationStepZipper!1218 (derivationStepZipper!1218 lt!2171730 (head!11406 (t!374443 s!2326))) (head!11406 (tail!10503 (t!374443 s!2326)))) (tail!10503 (tail!10503 (t!374443 s!2326)))))))

(assert (= (and d!1709416 c!924944) b!5321455))

(assert (= (and d!1709416 (not c!924944)) b!5321456))

(assert (=> d!1709416 m!6355330))

(assert (=> d!1709416 m!6356162))

(assert (=> b!5321455 m!6355456))

(declare-fun m!6356432 () Bool)

(assert (=> b!5321455 m!6356432))

(assert (=> b!5321456 m!6355330))

(assert (=> b!5321456 m!6356166))

(assert (=> b!5321456 m!6355456))

(assert (=> b!5321456 m!6356166))

(declare-fun m!6356434 () Bool)

(assert (=> b!5321456 m!6356434))

(assert (=> b!5321456 m!6355330))

(assert (=> b!5321456 m!6356170))

(assert (=> b!5321456 m!6356434))

(assert (=> b!5321456 m!6356170))

(declare-fun m!6356436 () Bool)

(assert (=> b!5321456 m!6356436))

(assert (=> b!5320343 d!1709416))

(declare-fun bs!1233351 () Bool)

(declare-fun d!1709418 () Bool)

(assert (= bs!1233351 (and d!1709418 b!5319771)))

(declare-fun lambda!271443 () Int)

(assert (=> bs!1233351 (= (= (head!11406 (t!374443 s!2326)) (h!67556 s!2326)) (= lambda!271443 lambda!271286))))

(declare-fun bs!1233352 () Bool)

(assert (= bs!1233352 (and d!1709418 d!1708984)))

(assert (=> bs!1233352 (= (= (head!11406 (t!374443 s!2326)) (h!67556 s!2326)) (= lambda!271443 lambda!271364))))

(declare-fun bs!1233353 () Bool)

(assert (= bs!1233353 (and d!1709418 d!1709278)))

(assert (=> bs!1233353 (= lambda!271443 lambda!271416)))

(declare-fun bs!1233354 () Bool)

(assert (= bs!1233354 (and d!1709418 d!1709386)))

(assert (=> bs!1233354 (= lambda!271443 lambda!271440)))

(assert (=> d!1709418 true))

(assert (=> d!1709418 (= (derivationStepZipper!1218 lt!2171730 (head!11406 (t!374443 s!2326))) (flatMap!704 lt!2171730 lambda!271443))))

(declare-fun bs!1233355 () Bool)

(assert (= bs!1233355 d!1709418))

(declare-fun m!6356438 () Bool)

(assert (=> bs!1233355 m!6356438))

(assert (=> b!5320343 d!1709418))

(assert (=> b!5320343 d!1709280))

(assert (=> b!5320343 d!1709282))

(declare-fun d!1709420 () Bool)

(declare-fun c!924947 () Bool)

(assert (=> d!1709420 (= c!924947 ((_ is Nil!61107) lt!2171828))))

(declare-fun e!3306017 () (InoxSet Context!8722))

(assert (=> d!1709420 (= (content!10895 lt!2171828) e!3306017)))

(declare-fun b!5321461 () Bool)

(assert (=> b!5321461 (= e!3306017 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5321462 () Bool)

(assert (=> b!5321462 (= e!3306017 ((_ map or) (store ((as const (Array Context!8722 Bool)) false) (h!67555 lt!2171828) true) (content!10895 (t!374442 lt!2171828))))))

(assert (= (and d!1709420 c!924947) b!5321461))

(assert (= (and d!1709420 (not c!924947)) b!5321462))

(declare-fun m!6356440 () Bool)

(assert (=> b!5321462 m!6356440))

(declare-fun m!6356442 () Bool)

(assert (=> b!5321462 m!6356442))

(assert (=> b!5320201 d!1709420))

(declare-fun d!1709422 () Bool)

(assert (=> d!1709422 (= (Exists!2158 (ite c!924698 lambda!271372 lambda!271373)) (choose!39821 (ite c!924698 lambda!271372 lambda!271373)))))

(declare-fun bs!1233356 () Bool)

(assert (= bs!1233356 d!1709422))

(declare-fun m!6356444 () Bool)

(assert (=> bs!1233356 m!6356444))

(assert (=> bm!379823 d!1709422))

(declare-fun bs!1233357 () Bool)

(declare-fun d!1709424 () Bool)

(assert (= bs!1233357 (and d!1709424 d!1709004)))

(declare-fun lambda!271444 () Int)

(assert (=> bs!1233357 (= lambda!271444 lambda!271367)))

(declare-fun bs!1233358 () Bool)

(assert (= bs!1233358 (and d!1709424 d!1708952)))

(assert (=> bs!1233358 (= lambda!271444 lambda!271352)))

(declare-fun bs!1233359 () Bool)

(assert (= bs!1233359 (and d!1709424 d!1708950)))

(assert (=> bs!1233359 (= lambda!271444 lambda!271349)))

(declare-fun bs!1233360 () Bool)

(assert (= bs!1233360 (and d!1709424 d!1708944)))

(assert (=> bs!1233360 (= lambda!271444 lambda!271345)))

(declare-fun bs!1233361 () Bool)

(assert (= bs!1233361 (and d!1709424 d!1709306)))

(assert (=> bs!1233361 (= lambda!271444 lambda!271425)))

(declare-fun bs!1233362 () Bool)

(assert (= bs!1233362 (and d!1709424 b!5321270)))

(assert (=> bs!1233362 (not (= lambda!271444 lambda!271438))))

(declare-fun bs!1233363 () Bool)

(assert (= bs!1233363 (and d!1709424 b!5319791)))

(assert (=> bs!1233363 (= lambda!271444 lambda!271287)))

(declare-fun bs!1233364 () Bool)

(assert (= bs!1233364 (and d!1709424 d!1708948)))

(assert (=> bs!1233364 (= lambda!271444 lambda!271346)))

(declare-fun bs!1233365 () Bool)

(assert (= bs!1233365 (and d!1709424 b!5321268)))

(assert (=> bs!1233365 (not (= lambda!271444 lambda!271437))))

(declare-fun b!5321463 () Bool)

(declare-fun e!3306021 () Bool)

(declare-fun e!3306018 () Bool)

(assert (=> b!5321463 (= e!3306021 e!3306018)))

(declare-fun c!924949 () Bool)

(assert (=> b!5321463 (= c!924949 (isEmpty!33075 (t!374441 (unfocusZipperList!419 zl!343))))))

(declare-fun b!5321464 () Bool)

(declare-fun e!3306019 () Bool)

(declare-fun lt!2171965 () Regex!14977)

(assert (=> b!5321464 (= e!3306019 (isUnion!319 lt!2171965))))

(declare-fun b!5321465 () Bool)

(assert (=> b!5321465 (= e!3306018 (isEmptyLang!887 lt!2171965))))

(assert (=> d!1709424 e!3306021))

(declare-fun res!2257118 () Bool)

(assert (=> d!1709424 (=> (not res!2257118) (not e!3306021))))

(assert (=> d!1709424 (= res!2257118 (validRegex!6713 lt!2171965))))

(declare-fun e!3306020 () Regex!14977)

(assert (=> d!1709424 (= lt!2171965 e!3306020)))

(declare-fun c!924948 () Bool)

(declare-fun e!3306022 () Bool)

(assert (=> d!1709424 (= c!924948 e!3306022)))

(declare-fun res!2257117 () Bool)

(assert (=> d!1709424 (=> (not res!2257117) (not e!3306022))))

(assert (=> d!1709424 (= res!2257117 ((_ is Cons!61106) (t!374441 (unfocusZipperList!419 zl!343))))))

(assert (=> d!1709424 (forall!14395 (t!374441 (unfocusZipperList!419 zl!343)) lambda!271444)))

(assert (=> d!1709424 (= (generalisedUnion!906 (t!374441 (unfocusZipperList!419 zl!343))) lt!2171965)))

(declare-fun b!5321466 () Bool)

(assert (=> b!5321466 (= e!3306019 (= lt!2171965 (head!11407 (t!374441 (unfocusZipperList!419 zl!343)))))))

(declare-fun b!5321467 () Bool)

(declare-fun e!3306023 () Regex!14977)

(assert (=> b!5321467 (= e!3306023 EmptyLang!14977)))

(declare-fun b!5321468 () Bool)

(assert (=> b!5321468 (= e!3306022 (isEmpty!33075 (t!374441 (t!374441 (unfocusZipperList!419 zl!343)))))))

(declare-fun b!5321469 () Bool)

(assert (=> b!5321469 (= e!3306023 (Union!14977 (h!67554 (t!374441 (unfocusZipperList!419 zl!343))) (generalisedUnion!906 (t!374441 (t!374441 (unfocusZipperList!419 zl!343))))))))

(declare-fun b!5321470 () Bool)

(assert (=> b!5321470 (= e!3306018 e!3306019)))

(declare-fun c!924950 () Bool)

(assert (=> b!5321470 (= c!924950 (isEmpty!33075 (tail!10504 (t!374441 (unfocusZipperList!419 zl!343)))))))

(declare-fun b!5321471 () Bool)

(assert (=> b!5321471 (= e!3306020 (h!67554 (t!374441 (unfocusZipperList!419 zl!343))))))

(declare-fun b!5321472 () Bool)

(assert (=> b!5321472 (= e!3306020 e!3306023)))

(declare-fun c!924951 () Bool)

(assert (=> b!5321472 (= c!924951 ((_ is Cons!61106) (t!374441 (unfocusZipperList!419 zl!343))))))

(assert (= (and d!1709424 res!2257117) b!5321468))

(assert (= (and d!1709424 c!924948) b!5321471))

(assert (= (and d!1709424 (not c!924948)) b!5321472))

(assert (= (and b!5321472 c!924951) b!5321469))

(assert (= (and b!5321472 (not c!924951)) b!5321467))

(assert (= (and d!1709424 res!2257118) b!5321463))

(assert (= (and b!5321463 c!924949) b!5321465))

(assert (= (and b!5321463 (not c!924949)) b!5321470))

(assert (= (and b!5321470 c!924950) b!5321466))

(assert (= (and b!5321470 (not c!924950)) b!5321464))

(declare-fun m!6356446 () Bool)

(assert (=> d!1709424 m!6356446))

(declare-fun m!6356448 () Bool)

(assert (=> d!1709424 m!6356448))

(declare-fun m!6356450 () Bool)

(assert (=> b!5321464 m!6356450))

(declare-fun m!6356452 () Bool)

(assert (=> b!5321470 m!6356452))

(assert (=> b!5321470 m!6356452))

(declare-fun m!6356454 () Bool)

(assert (=> b!5321470 m!6356454))

(declare-fun m!6356456 () Bool)

(assert (=> b!5321469 m!6356456))

(assert (=> b!5321463 m!6355436))

(declare-fun m!6356458 () Bool)

(assert (=> b!5321465 m!6356458))

(declare-fun m!6356460 () Bool)

(assert (=> b!5321466 m!6356460))

(declare-fun m!6356462 () Bool)

(assert (=> b!5321468 m!6356462))

(assert (=> b!5320303 d!1709424))

(assert (=> d!1708958 d!1709260))

(declare-fun d!1709426 () Bool)

(assert (=> d!1709426 (= (isEmpty!33075 (exprs!4861 (h!67555 zl!343))) ((_ is Nil!61106) (exprs!4861 (h!67555 zl!343))))))

(assert (=> b!5320460 d!1709426))

(declare-fun b!5321473 () Bool)

(declare-fun e!3306026 () Bool)

(declare-fun e!3306027 () Bool)

(assert (=> b!5321473 (= e!3306026 e!3306027)))

(declare-fun res!2257122 () Bool)

(assert (=> b!5321473 (= res!2257122 (not (nullable!5146 (reg!15306 (h!67554 lt!2171737)))))))

(assert (=> b!5321473 (=> (not res!2257122) (not e!3306027))))

(declare-fun bm!380001 () Bool)

(declare-fun call!380006 () Bool)

(declare-fun c!924953 () Bool)

(declare-fun c!924952 () Bool)

(assert (=> bm!380001 (= call!380006 (validRegex!6713 (ite c!924953 (reg!15306 (h!67554 lt!2171737)) (ite c!924952 (regTwo!30467 (h!67554 lt!2171737)) (regTwo!30466 (h!67554 lt!2171737))))))))

(declare-fun b!5321474 () Bool)

(assert (=> b!5321474 (= e!3306027 call!380006)))

(declare-fun bm!380002 () Bool)

(declare-fun call!380007 () Bool)

(assert (=> bm!380002 (= call!380007 call!380006)))

(declare-fun bm!380003 () Bool)

(declare-fun call!380008 () Bool)

(assert (=> bm!380003 (= call!380008 (validRegex!6713 (ite c!924952 (regOne!30467 (h!67554 lt!2171737)) (regOne!30466 (h!67554 lt!2171737)))))))

(declare-fun b!5321476 () Bool)

(declare-fun res!2257120 () Bool)

(declare-fun e!3306028 () Bool)

(assert (=> b!5321476 (=> (not res!2257120) (not e!3306028))))

(assert (=> b!5321476 (= res!2257120 call!380008)))

(declare-fun e!3306030 () Bool)

(assert (=> b!5321476 (= e!3306030 e!3306028)))

(declare-fun b!5321477 () Bool)

(assert (=> b!5321477 (= e!3306028 call!380007)))

(declare-fun b!5321478 () Bool)

(assert (=> b!5321478 (= e!3306026 e!3306030)))

(assert (=> b!5321478 (= c!924952 ((_ is Union!14977) (h!67554 lt!2171737)))))

(declare-fun b!5321479 () Bool)

(declare-fun e!3306029 () Bool)

(declare-fun e!3306025 () Bool)

(assert (=> b!5321479 (= e!3306029 e!3306025)))

(declare-fun res!2257121 () Bool)

(assert (=> b!5321479 (=> (not res!2257121) (not e!3306025))))

(assert (=> b!5321479 (= res!2257121 call!380008)))

(declare-fun b!5321475 () Bool)

(declare-fun e!3306024 () Bool)

(assert (=> b!5321475 (= e!3306024 e!3306026)))

(assert (=> b!5321475 (= c!924953 ((_ is Star!14977) (h!67554 lt!2171737)))))

(declare-fun d!1709428 () Bool)

(declare-fun res!2257119 () Bool)

(assert (=> d!1709428 (=> res!2257119 e!3306024)))

(assert (=> d!1709428 (= res!2257119 ((_ is ElementMatch!14977) (h!67554 lt!2171737)))))

(assert (=> d!1709428 (= (validRegex!6713 (h!67554 lt!2171737)) e!3306024)))

(declare-fun b!5321480 () Bool)

(assert (=> b!5321480 (= e!3306025 call!380007)))

(declare-fun b!5321481 () Bool)

(declare-fun res!2257123 () Bool)

(assert (=> b!5321481 (=> res!2257123 e!3306029)))

(assert (=> b!5321481 (= res!2257123 (not ((_ is Concat!23822) (h!67554 lt!2171737))))))

(assert (=> b!5321481 (= e!3306030 e!3306029)))

(assert (= (and d!1709428 (not res!2257119)) b!5321475))

(assert (= (and b!5321475 c!924953) b!5321473))

(assert (= (and b!5321475 (not c!924953)) b!5321478))

(assert (= (and b!5321473 res!2257122) b!5321474))

(assert (= (and b!5321478 c!924952) b!5321476))

(assert (= (and b!5321478 (not c!924952)) b!5321481))

(assert (= (and b!5321476 res!2257120) b!5321477))

(assert (= (and b!5321481 (not res!2257123)) b!5321479))

(assert (= (and b!5321479 res!2257121) b!5321480))

(assert (= (or b!5321477 b!5321480) bm!380002))

(assert (= (or b!5321476 b!5321479) bm!380003))

(assert (= (or b!5321474 bm!380002) bm!380001))

(declare-fun m!6356464 () Bool)

(assert (=> b!5321473 m!6356464))

(declare-fun m!6356466 () Bool)

(assert (=> bm!380001 m!6356466))

(declare-fun m!6356468 () Bool)

(assert (=> bm!380003 m!6356468))

(assert (=> bs!1232972 d!1709428))

(declare-fun b!5321482 () Bool)

(declare-fun e!3306033 () Bool)

(declare-fun e!3306034 () Bool)

(assert (=> b!5321482 (= e!3306033 e!3306034)))

(declare-fun res!2257127 () Bool)

(assert (=> b!5321482 (= res!2257127 (not (nullable!5146 (reg!15306 lt!2171864))))))

(assert (=> b!5321482 (=> (not res!2257127) (not e!3306034))))

(declare-fun bm!380004 () Bool)

(declare-fun c!924955 () Bool)

(declare-fun call!380009 () Bool)

(declare-fun c!924954 () Bool)

(assert (=> bm!380004 (= call!380009 (validRegex!6713 (ite c!924955 (reg!15306 lt!2171864) (ite c!924954 (regTwo!30467 lt!2171864) (regTwo!30466 lt!2171864)))))))

(declare-fun b!5321483 () Bool)

(assert (=> b!5321483 (= e!3306034 call!380009)))

(declare-fun bm!380005 () Bool)

(declare-fun call!380010 () Bool)

(assert (=> bm!380005 (= call!380010 call!380009)))

(declare-fun bm!380006 () Bool)

(declare-fun call!380011 () Bool)

(assert (=> bm!380006 (= call!380011 (validRegex!6713 (ite c!924954 (regOne!30467 lt!2171864) (regOne!30466 lt!2171864))))))

(declare-fun b!5321485 () Bool)

(declare-fun res!2257125 () Bool)

(declare-fun e!3306035 () Bool)

(assert (=> b!5321485 (=> (not res!2257125) (not e!3306035))))

(assert (=> b!5321485 (= res!2257125 call!380011)))

(declare-fun e!3306037 () Bool)

(assert (=> b!5321485 (= e!3306037 e!3306035)))

(declare-fun b!5321486 () Bool)

(assert (=> b!5321486 (= e!3306035 call!380010)))

(declare-fun b!5321487 () Bool)

(assert (=> b!5321487 (= e!3306033 e!3306037)))

(assert (=> b!5321487 (= c!924954 ((_ is Union!14977) lt!2171864))))

(declare-fun b!5321488 () Bool)

(declare-fun e!3306036 () Bool)

(declare-fun e!3306032 () Bool)

(assert (=> b!5321488 (= e!3306036 e!3306032)))

(declare-fun res!2257126 () Bool)

(assert (=> b!5321488 (=> (not res!2257126) (not e!3306032))))

(assert (=> b!5321488 (= res!2257126 call!380011)))

(declare-fun b!5321484 () Bool)

(declare-fun e!3306031 () Bool)

(assert (=> b!5321484 (= e!3306031 e!3306033)))

(assert (=> b!5321484 (= c!924955 ((_ is Star!14977) lt!2171864))))

(declare-fun d!1709430 () Bool)

(declare-fun res!2257124 () Bool)

(assert (=> d!1709430 (=> res!2257124 e!3306031)))

(assert (=> d!1709430 (= res!2257124 ((_ is ElementMatch!14977) lt!2171864))))

(assert (=> d!1709430 (= (validRegex!6713 lt!2171864) e!3306031)))

(declare-fun b!5321489 () Bool)

(assert (=> b!5321489 (= e!3306032 call!380010)))

(declare-fun b!5321490 () Bool)

(declare-fun res!2257128 () Bool)

(assert (=> b!5321490 (=> res!2257128 e!3306036)))

(assert (=> b!5321490 (= res!2257128 (not ((_ is Concat!23822) lt!2171864)))))

(assert (=> b!5321490 (= e!3306037 e!3306036)))

(assert (= (and d!1709430 (not res!2257124)) b!5321484))

(assert (= (and b!5321484 c!924955) b!5321482))

(assert (= (and b!5321484 (not c!924955)) b!5321487))

(assert (= (and b!5321482 res!2257127) b!5321483))

(assert (= (and b!5321487 c!924954) b!5321485))

(assert (= (and b!5321487 (not c!924954)) b!5321490))

(assert (= (and b!5321485 res!2257125) b!5321486))

(assert (= (and b!5321490 (not res!2257128)) b!5321488))

(assert (= (and b!5321488 res!2257126) b!5321489))

(assert (= (or b!5321486 b!5321489) bm!380005))

(assert (= (or b!5321485 b!5321488) bm!380006))

(assert (= (or b!5321483 bm!380005) bm!380004))

(declare-fun m!6356470 () Bool)

(assert (=> b!5321482 m!6356470))

(declare-fun m!6356472 () Bool)

(assert (=> bm!380004 m!6356472))

(declare-fun m!6356474 () Bool)

(assert (=> bm!380006 m!6356474))

(assert (=> d!1709000 d!1709430))

(assert (=> d!1709000 d!1708950))

(assert (=> d!1709000 d!1708952))

(declare-fun d!1709432 () Bool)

(assert (=> d!1709432 (= (Exists!2158 lambda!271355) (choose!39821 lambda!271355))))

(declare-fun bs!1233366 () Bool)

(assert (= bs!1233366 d!1709432))

(declare-fun m!6356476 () Bool)

(assert (=> bs!1233366 m!6356476))

(assert (=> d!1708966 d!1709432))

(assert (=> d!1708966 d!1708970))

(assert (=> d!1708966 d!1709394))

(assert (=> d!1708966 d!1708974))

(declare-fun bs!1233367 () Bool)

(declare-fun d!1709434 () Bool)

(assert (= bs!1233367 (and d!1709434 b!5320516)))

(declare-fun lambda!271447 () Int)

(assert (=> bs!1233367 (not (= lambda!271447 lambda!271373))))

(declare-fun bs!1233368 () Bool)

(assert (= bs!1233368 (and d!1709434 b!5321448)))

(assert (=> bs!1233368 (not (= lambda!271447 lambda!271442))))

(declare-fun bs!1233369 () Bool)

(assert (= bs!1233369 (and d!1709434 d!1708972)))

(assert (=> bs!1233369 (not (= lambda!271447 lambda!271361))))

(declare-fun bs!1233370 () Bool)

(assert (= bs!1233370 (and d!1709434 b!5320510)))

(assert (=> bs!1233370 (not (= lambda!271447 lambda!271372))))

(declare-fun bs!1233371 () Bool)

(assert (= bs!1233371 (and d!1709434 d!1708966)))

(assert (=> bs!1233371 (= lambda!271447 lambda!271355)))

(declare-fun bs!1233372 () Bool)

(assert (= bs!1233372 (and d!1709434 b!5321442)))

(assert (=> bs!1233372 (not (= lambda!271447 lambda!271441))))

(declare-fun bs!1233373 () Bool)

(assert (= bs!1233373 (and d!1709434 b!5319790)))

(assert (=> bs!1233373 (= lambda!271447 lambda!271284)))

(assert (=> bs!1233369 (= lambda!271447 lambda!271360)))

(assert (=> bs!1233373 (not (= lambda!271447 lambda!271285))))

(assert (=> d!1709434 true))

(assert (=> d!1709434 true))

(assert (=> d!1709434 true))

(assert (=> d!1709434 (= (isDefined!11791 (findConcatSeparation!1502 (regOne!30466 r!7292) (regTwo!30466 r!7292) Nil!61108 s!2326 s!2326)) (Exists!2158 lambda!271447))))

(assert (=> d!1709434 true))

(declare-fun _$89!1522 () Unit!153426)

(assert (=> d!1709434 (= (choose!39822 (regOne!30466 r!7292) (regTwo!30466 r!7292) s!2326) _$89!1522)))

(declare-fun bs!1233374 () Bool)

(assert (= bs!1233374 d!1709434))

(assert (=> bs!1233374 m!6354988))

(assert (=> bs!1233374 m!6354988))

(assert (=> bs!1233374 m!6354990))

(declare-fun m!6356478 () Bool)

(assert (=> bs!1233374 m!6356478))

(assert (=> d!1708966 d!1709434))

(assert (=> d!1708986 d!1708988))

(declare-fun d!1709436 () Bool)

(assert (=> d!1709436 (= (flatMap!704 z!1189 lambda!271286) (dynLambda!24154 lambda!271286 (h!67555 zl!343)))))

(assert (=> d!1709436 true))

(declare-fun _$13!1898 () Unit!153426)

(assert (=> d!1709436 (= (choose!39825 z!1189 (h!67555 zl!343) lambda!271286) _$13!1898)))

(declare-fun b_lambda!204723 () Bool)

(assert (=> (not b_lambda!204723) (not d!1709436)))

(declare-fun bs!1233375 () Bool)

(assert (= bs!1233375 d!1709436))

(assert (=> bs!1233375 m!6355044))

(assert (=> bs!1233375 m!6355524))

(assert (=> d!1708986 d!1709436))

(declare-fun bs!1233376 () Bool)

(declare-fun d!1709438 () Bool)

(assert (= bs!1233376 (and d!1709438 b!5320159)))

(declare-fun lambda!271448 () Int)

(assert (=> bs!1233376 (not (= lambda!271448 lambda!271339))))

(declare-fun bs!1233377 () Bool)

(assert (= bs!1233377 (and d!1709438 b!5321224)))

(assert (=> bs!1233377 (not (= lambda!271448 lambda!271432))))

(declare-fun bs!1233378 () Bool)

(assert (= bs!1233378 (and d!1709438 b!5321221)))

(assert (=> bs!1233378 (not (= lambda!271448 lambda!271431))))

(declare-fun bs!1233379 () Bool)

(assert (= bs!1233379 (and d!1709438 b!5320178)))

(assert (=> bs!1233379 (not (= lambda!271448 lambda!271342))))

(declare-fun bs!1233380 () Bool)

(assert (= bs!1233380 (and d!1709438 d!1709314)))

(assert (=> bs!1233380 (not (= lambda!271448 lambda!271429))))

(declare-fun bs!1233381 () Bool)

(assert (= bs!1233381 (and d!1709438 b!5320157)))

(assert (=> bs!1233381 (not (= lambda!271448 lambda!271338))))

(declare-fun bs!1233382 () Bool)

(assert (= bs!1233382 (and d!1709438 b!5320176)))

(assert (=> bs!1233382 (not (= lambda!271448 lambda!271341))))

(declare-fun bs!1233383 () Bool)

(assert (= bs!1233383 (and d!1709438 d!1709286)))

(assert (=> bs!1233383 (= lambda!271448 lambda!271421)))

(declare-fun bs!1233384 () Bool)

(assert (= bs!1233384 (and d!1709438 d!1709354)))

(assert (=> bs!1233384 (= lambda!271448 lambda!271439)))

(assert (=> d!1709438 (= (nullableZipper!1344 lt!2171739) (exists!2011 lt!2171739 lambda!271448))))

(declare-fun bs!1233385 () Bool)

(assert (= bs!1233385 d!1709438))

(declare-fun m!6356480 () Bool)

(assert (=> bs!1233385 m!6356480))

(assert (=> b!5320076 d!1709438))

(declare-fun d!1709440 () Bool)

(assert (=> d!1709440 (= ($colon$colon!1394 (exprs!4861 lt!2171724) (ite (or c!924664 c!924666) (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (h!67554 (exprs!4861 (h!67555 zl!343))))) (Cons!61106 (ite (or c!924664 c!924666) (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))) (h!67554 (exprs!4861 (h!67555 zl!343)))) (exprs!4861 lt!2171724)))))

(assert (=> bm!379811 d!1709440))

(declare-fun d!1709442 () Bool)

(assert (=> d!1709442 (= (isEmpty!33079 (tail!10503 s!2326)) ((_ is Nil!61108) (tail!10503 s!2326)))))

(assert (=> b!5320557 d!1709442))

(declare-fun d!1709444 () Bool)

(assert (=> d!1709444 (= (tail!10503 s!2326) (t!374443 s!2326))))

(assert (=> b!5320557 d!1709444))

(assert (=> bm!379824 d!1709366))

(assert (=> b!5320469 d!1709006))

(declare-fun b!5321505 () Bool)

(declare-fun res!2257137 () Bool)

(declare-fun e!3306045 () Bool)

(assert (=> b!5321505 (=> (not res!2257137) (not e!3306045))))

(declare-fun lt!2171968 () List!61232)

(declare-fun size!39767 (List!61232) Int)

(assert (=> b!5321505 (= res!2257137 (= (size!39767 lt!2171968) (+ (size!39767 (_1!35479 (get!21018 lt!2171854))) (size!39767 (_2!35479 (get!21018 lt!2171854))))))))

(declare-fun d!1709446 () Bool)

(assert (=> d!1709446 e!3306045))

(declare-fun res!2257138 () Bool)

(assert (=> d!1709446 (=> (not res!2257138) (not e!3306045))))

(declare-fun content!10897 (List!61232) (InoxSet C!30224))

(assert (=> d!1709446 (= res!2257138 (= (content!10897 lt!2171968) ((_ map or) (content!10897 (_1!35479 (get!21018 lt!2171854))) (content!10897 (_2!35479 (get!21018 lt!2171854))))))))

(declare-fun e!3306044 () List!61232)

(assert (=> d!1709446 (= lt!2171968 e!3306044)))

(declare-fun c!924958 () Bool)

(assert (=> d!1709446 (= c!924958 ((_ is Nil!61108) (_1!35479 (get!21018 lt!2171854))))))

(assert (=> d!1709446 (= (++!13324 (_1!35479 (get!21018 lt!2171854)) (_2!35479 (get!21018 lt!2171854))) lt!2171968)))

(declare-fun b!5321504 () Bool)

(assert (=> b!5321504 (= e!3306044 (Cons!61108 (h!67556 (_1!35479 (get!21018 lt!2171854))) (++!13324 (t!374443 (_1!35479 (get!21018 lt!2171854))) (_2!35479 (get!21018 lt!2171854)))))))

(declare-fun b!5321506 () Bool)

(assert (=> b!5321506 (= e!3306045 (or (not (= (_2!35479 (get!21018 lt!2171854)) Nil!61108)) (= lt!2171968 (_1!35479 (get!21018 lt!2171854)))))))

(declare-fun b!5321503 () Bool)

(assert (=> b!5321503 (= e!3306044 (_2!35479 (get!21018 lt!2171854)))))

(assert (= (and d!1709446 c!924958) b!5321503))

(assert (= (and d!1709446 (not c!924958)) b!5321504))

(assert (= (and d!1709446 res!2257138) b!5321505))

(assert (= (and b!5321505 res!2257137) b!5321506))

(declare-fun m!6356482 () Bool)

(assert (=> b!5321505 m!6356482))

(declare-fun m!6356484 () Bool)

(assert (=> b!5321505 m!6356484))

(declare-fun m!6356486 () Bool)

(assert (=> b!5321505 m!6356486))

(declare-fun m!6356488 () Bool)

(assert (=> d!1709446 m!6356488))

(declare-fun m!6356490 () Bool)

(assert (=> d!1709446 m!6356490))

(declare-fun m!6356492 () Bool)

(assert (=> d!1709446 m!6356492))

(declare-fun m!6356494 () Bool)

(assert (=> b!5321504 m!6356494))

(assert (=> b!5320381 d!1709446))

(declare-fun d!1709448 () Bool)

(assert (=> d!1709448 (= (get!21018 lt!2171854) (v!51116 lt!2171854))))

(assert (=> b!5320381 d!1709448))

(declare-fun b!5321507 () Bool)

(declare-fun res!2257142 () Bool)

(declare-fun e!3306050 () Bool)

(assert (=> b!5321507 (=> (not res!2257142) (not e!3306050))))

(assert (=> b!5321507 (= res!2257142 (isEmpty!33079 (tail!10503 (tail!10503 s!2326))))))

(declare-fun d!1709450 () Bool)

(declare-fun e!3306046 () Bool)

(assert (=> d!1709450 e!3306046))

(declare-fun c!924960 () Bool)

(assert (=> d!1709450 (= c!924960 ((_ is EmptyExpr!14977) (derivativeStep!4165 r!7292 (head!11406 s!2326))))))

(declare-fun lt!2171969 () Bool)

(declare-fun e!3306052 () Bool)

(assert (=> d!1709450 (= lt!2171969 e!3306052)))

(declare-fun c!924959 () Bool)

(assert (=> d!1709450 (= c!924959 (isEmpty!33079 (tail!10503 s!2326)))))

(assert (=> d!1709450 (validRegex!6713 (derivativeStep!4165 r!7292 (head!11406 s!2326)))))

(assert (=> d!1709450 (= (matchR!7162 (derivativeStep!4165 r!7292 (head!11406 s!2326)) (tail!10503 s!2326)) lt!2171969)))

(declare-fun bm!380007 () Bool)

(declare-fun call!380012 () Bool)

(assert (=> bm!380007 (= call!380012 (isEmpty!33079 (tail!10503 s!2326)))))

(declare-fun b!5321508 () Bool)

(declare-fun res!2257146 () Bool)

(declare-fun e!3306049 () Bool)

(assert (=> b!5321508 (=> res!2257146 e!3306049)))

(assert (=> b!5321508 (= res!2257146 (not ((_ is ElementMatch!14977) (derivativeStep!4165 r!7292 (head!11406 s!2326)))))))

(declare-fun e!3306051 () Bool)

(assert (=> b!5321508 (= e!3306051 e!3306049)))

(declare-fun b!5321509 () Bool)

(assert (=> b!5321509 (= e!3306046 e!3306051)))

(declare-fun c!924961 () Bool)

(assert (=> b!5321509 (= c!924961 ((_ is EmptyLang!14977) (derivativeStep!4165 r!7292 (head!11406 s!2326))))))

(declare-fun b!5321510 () Bool)

(declare-fun e!3306047 () Bool)

(declare-fun e!3306048 () Bool)

(assert (=> b!5321510 (= e!3306047 e!3306048)))

(declare-fun res!2257141 () Bool)

(assert (=> b!5321510 (=> res!2257141 e!3306048)))

(assert (=> b!5321510 (= res!2257141 call!380012)))

(declare-fun b!5321511 () Bool)

(assert (=> b!5321511 (= e!3306046 (= lt!2171969 call!380012))))

(declare-fun b!5321512 () Bool)

(assert (=> b!5321512 (= e!3306052 (nullable!5146 (derivativeStep!4165 r!7292 (head!11406 s!2326))))))

(declare-fun b!5321513 () Bool)

(assert (=> b!5321513 (= e!3306052 (matchR!7162 (derivativeStep!4165 (derivativeStep!4165 r!7292 (head!11406 s!2326)) (head!11406 (tail!10503 s!2326))) (tail!10503 (tail!10503 s!2326))))))

(declare-fun b!5321514 () Bool)

(declare-fun res!2257144 () Bool)

(assert (=> b!5321514 (=> (not res!2257144) (not e!3306050))))

(assert (=> b!5321514 (= res!2257144 (not call!380012))))

(declare-fun b!5321515 () Bool)

(assert (=> b!5321515 (= e!3306049 e!3306047)))

(declare-fun res!2257140 () Bool)

(assert (=> b!5321515 (=> (not res!2257140) (not e!3306047))))

(assert (=> b!5321515 (= res!2257140 (not lt!2171969))))

(declare-fun b!5321516 () Bool)

(assert (=> b!5321516 (= e!3306050 (= (head!11406 (tail!10503 s!2326)) (c!924467 (derivativeStep!4165 r!7292 (head!11406 s!2326)))))))

(declare-fun b!5321517 () Bool)

(assert (=> b!5321517 (= e!3306048 (not (= (head!11406 (tail!10503 s!2326)) (c!924467 (derivativeStep!4165 r!7292 (head!11406 s!2326))))))))

(declare-fun b!5321518 () Bool)

(declare-fun res!2257145 () Bool)

(assert (=> b!5321518 (=> res!2257145 e!3306048)))

(assert (=> b!5321518 (= res!2257145 (not (isEmpty!33079 (tail!10503 (tail!10503 s!2326)))))))

(declare-fun b!5321519 () Bool)

(assert (=> b!5321519 (= e!3306051 (not lt!2171969))))

(declare-fun b!5321520 () Bool)

(declare-fun res!2257143 () Bool)

(assert (=> b!5321520 (=> res!2257143 e!3306049)))

(assert (=> b!5321520 (= res!2257143 e!3306050)))

(declare-fun res!2257139 () Bool)

(assert (=> b!5321520 (=> (not res!2257139) (not e!3306050))))

(assert (=> b!5321520 (= res!2257139 lt!2171969)))

(assert (= (and d!1709450 c!924959) b!5321512))

(assert (= (and d!1709450 (not c!924959)) b!5321513))

(assert (= (and d!1709450 c!924960) b!5321511))

(assert (= (and d!1709450 (not c!924960)) b!5321509))

(assert (= (and b!5321509 c!924961) b!5321519))

(assert (= (and b!5321509 (not c!924961)) b!5321508))

(assert (= (and b!5321508 (not res!2257146)) b!5321520))

(assert (= (and b!5321520 res!2257139) b!5321514))

(assert (= (and b!5321514 res!2257144) b!5321507))

(assert (= (and b!5321507 res!2257142) b!5321516))

(assert (= (and b!5321520 (not res!2257143)) b!5321515))

(assert (= (and b!5321515 res!2257140) b!5321510))

(assert (= (and b!5321510 (not res!2257141)) b!5321518))

(assert (= (and b!5321518 (not res!2257145)) b!5321517))

(assert (= (or b!5321511 b!5321514 b!5321510) bm!380007))

(assert (=> b!5321516 m!6355602))

(declare-fun m!6356496 () Bool)

(assert (=> b!5321516 m!6356496))

(assert (=> b!5321518 m!6355602))

(declare-fun m!6356498 () Bool)

(assert (=> b!5321518 m!6356498))

(assert (=> b!5321518 m!6356498))

(declare-fun m!6356500 () Bool)

(assert (=> b!5321518 m!6356500))

(assert (=> b!5321507 m!6355602))

(assert (=> b!5321507 m!6356498))

(assert (=> b!5321507 m!6356498))

(assert (=> b!5321507 m!6356500))

(assert (=> b!5321512 m!6355608))

(declare-fun m!6356502 () Bool)

(assert (=> b!5321512 m!6356502))

(assert (=> d!1709450 m!6355602))

(assert (=> d!1709450 m!6355604))

(assert (=> d!1709450 m!6355608))

(declare-fun m!6356504 () Bool)

(assert (=> d!1709450 m!6356504))

(assert (=> bm!380007 m!6355602))

(assert (=> bm!380007 m!6355604))

(assert (=> b!5321517 m!6355602))

(assert (=> b!5321517 m!6356496))

(assert (=> b!5321513 m!6355602))

(assert (=> b!5321513 m!6356496))

(assert (=> b!5321513 m!6355608))

(assert (=> b!5321513 m!6356496))

(declare-fun m!6356506 () Bool)

(assert (=> b!5321513 m!6356506))

(assert (=> b!5321513 m!6355602))

(assert (=> b!5321513 m!6356498))

(assert (=> b!5321513 m!6356506))

(assert (=> b!5321513 m!6356498))

(declare-fun m!6356508 () Bool)

(assert (=> b!5321513 m!6356508))

(assert (=> b!5320552 d!1709450))

(declare-fun b!5321541 () Bool)

(declare-fun e!3306064 () Regex!14977)

(assert (=> b!5321541 (= e!3306064 (ite (= (head!11406 s!2326) (c!924467 r!7292)) EmptyExpr!14977 EmptyLang!14977))))

(declare-fun b!5321543 () Bool)

(declare-fun e!3306063 () Regex!14977)

(declare-fun call!380021 () Regex!14977)

(declare-fun call!380023 () Regex!14977)

(assert (=> b!5321543 (= e!3306063 (Union!14977 call!380021 call!380023))))

(declare-fun bm!380016 () Bool)

(declare-fun call!380022 () Regex!14977)

(assert (=> bm!380016 (= call!380022 call!380023)))

(declare-fun b!5321544 () Bool)

(declare-fun c!924974 () Bool)

(assert (=> b!5321544 (= c!924974 (nullable!5146 (regOne!30466 r!7292)))))

(declare-fun e!3306065 () Regex!14977)

(declare-fun e!3306066 () Regex!14977)

(assert (=> b!5321544 (= e!3306065 e!3306066)))

(declare-fun b!5321545 () Bool)

(declare-fun e!3306067 () Regex!14977)

(assert (=> b!5321545 (= e!3306067 EmptyLang!14977)))

(declare-fun c!924976 () Bool)

(declare-fun c!924972 () Bool)

(declare-fun bm!380017 () Bool)

(assert (=> bm!380017 (= call!380023 (derivativeStep!4165 (ite c!924972 (regTwo!30467 r!7292) (ite c!924976 (reg!15306 r!7292) (ite c!924974 (regTwo!30466 r!7292) (regOne!30466 r!7292)))) (head!11406 s!2326)))))

(declare-fun bm!380018 () Bool)

(declare-fun call!380024 () Regex!14977)

(assert (=> bm!380018 (= call!380024 call!380022)))

(declare-fun b!5321546 () Bool)

(assert (=> b!5321546 (= e!3306066 (Union!14977 (Concat!23822 call!380024 (regTwo!30466 r!7292)) EmptyLang!14977))))

(declare-fun b!5321547 () Bool)

(assert (=> b!5321547 (= e!3306067 e!3306064)))

(declare-fun c!924975 () Bool)

(assert (=> b!5321547 (= c!924975 ((_ is ElementMatch!14977) r!7292))))

(declare-fun b!5321542 () Bool)

(assert (=> b!5321542 (= e!3306066 (Union!14977 (Concat!23822 call!380021 (regTwo!30466 r!7292)) call!380024))))

(declare-fun d!1709452 () Bool)

(declare-fun lt!2171972 () Regex!14977)

(assert (=> d!1709452 (validRegex!6713 lt!2171972)))

(assert (=> d!1709452 (= lt!2171972 e!3306067)))

(declare-fun c!924973 () Bool)

(assert (=> d!1709452 (= c!924973 (or ((_ is EmptyExpr!14977) r!7292) ((_ is EmptyLang!14977) r!7292)))))

(assert (=> d!1709452 (validRegex!6713 r!7292)))

(assert (=> d!1709452 (= (derivativeStep!4165 r!7292 (head!11406 s!2326)) lt!2171972)))

(declare-fun b!5321548 () Bool)

(assert (=> b!5321548 (= e!3306065 (Concat!23822 call!380022 r!7292))))

(declare-fun b!5321549 () Bool)

(assert (=> b!5321549 (= c!924972 ((_ is Union!14977) r!7292))))

(assert (=> b!5321549 (= e!3306064 e!3306063)))

(declare-fun b!5321550 () Bool)

(assert (=> b!5321550 (= e!3306063 e!3306065)))

(assert (=> b!5321550 (= c!924976 ((_ is Star!14977) r!7292))))

(declare-fun bm!380019 () Bool)

(assert (=> bm!380019 (= call!380021 (derivativeStep!4165 (ite c!924972 (regOne!30467 r!7292) (regOne!30466 r!7292)) (head!11406 s!2326)))))

(assert (= (and d!1709452 c!924973) b!5321545))

(assert (= (and d!1709452 (not c!924973)) b!5321547))

(assert (= (and b!5321547 c!924975) b!5321541))

(assert (= (and b!5321547 (not c!924975)) b!5321549))

(assert (= (and b!5321549 c!924972) b!5321543))

(assert (= (and b!5321549 (not c!924972)) b!5321550))

(assert (= (and b!5321550 c!924976) b!5321548))

(assert (= (and b!5321550 (not c!924976)) b!5321544))

(assert (= (and b!5321544 c!924974) b!5321542))

(assert (= (and b!5321544 (not c!924974)) b!5321546))

(assert (= (or b!5321542 b!5321546) bm!380018))

(assert (= (or b!5321548 bm!380018) bm!380016))

(assert (= (or b!5321543 bm!380016) bm!380017))

(assert (= (or b!5321543 b!5321542) bm!380019))

(assert (=> b!5321544 m!6356394))

(assert (=> bm!380017 m!6355600))

(declare-fun m!6356510 () Bool)

(assert (=> bm!380017 m!6356510))

(declare-fun m!6356512 () Bool)

(assert (=> d!1709452 m!6356512))

(assert (=> d!1709452 m!6355068))

(assert (=> bm!380019 m!6355600))

(declare-fun m!6356514 () Bool)

(assert (=> bm!380019 m!6356514))

(assert (=> b!5320552 d!1709452))

(assert (=> b!5320552 d!1709296))

(assert (=> b!5320552 d!1709444))

(assert (=> d!1709016 d!1709014))

(assert (=> d!1709016 d!1709012))

(declare-fun d!1709454 () Bool)

(assert (=> d!1709454 (= (matchR!7162 r!7292 s!2326) (matchRSpec!2080 r!7292 s!2326))))

(assert (=> d!1709454 true))

(declare-fun _$88!3620 () Unit!153426)

(assert (=> d!1709454 (= (choose!39827 r!7292 s!2326) _$88!3620)))

(declare-fun bs!1233386 () Bool)

(assert (= bs!1233386 d!1709454))

(assert (=> bs!1233386 m!6355014))

(assert (=> bs!1233386 m!6355012))

(assert (=> d!1709016 d!1709454))

(assert (=> d!1709016 d!1708954))

(declare-fun d!1709456 () Bool)

(assert (=> d!1709456 (= (head!11407 (unfocusZipperList!419 zl!343)) (h!67554 (unfocusZipperList!419 zl!343)))))

(assert (=> b!5320300 d!1709456))

(declare-fun d!1709458 () Bool)

(declare-fun res!2257147 () Bool)

(declare-fun e!3306068 () Bool)

(assert (=> d!1709458 (=> res!2257147 e!3306068)))

(assert (=> d!1709458 (= res!2257147 ((_ is Nil!61107) lt!2171723))))

(assert (=> d!1709458 (= (forall!14397 lt!2171723 lambda!271339) e!3306068)))

(declare-fun b!5321551 () Bool)

(declare-fun e!3306069 () Bool)

(assert (=> b!5321551 (= e!3306068 e!3306069)))

(declare-fun res!2257148 () Bool)

(assert (=> b!5321551 (=> (not res!2257148) (not e!3306069))))

(assert (=> b!5321551 (= res!2257148 (dynLambda!24156 lambda!271339 (h!67555 lt!2171723)))))

(declare-fun b!5321552 () Bool)

(assert (=> b!5321552 (= e!3306069 (forall!14397 (t!374442 lt!2171723) lambda!271339))))

(assert (= (and d!1709458 (not res!2257147)) b!5321551))

(assert (= (and b!5321551 res!2257148) b!5321552))

(declare-fun b_lambda!204725 () Bool)

(assert (=> (not b_lambda!204725) (not b!5321551)))

(declare-fun m!6356516 () Bool)

(assert (=> b!5321551 m!6356516))

(declare-fun m!6356518 () Bool)

(assert (=> b!5321552 m!6356518))

(assert (=> b!5320159 d!1709458))

(declare-fun d!1709460 () Bool)

(assert (=> d!1709460 true))

(declare-fun setRes!34257 () Bool)

(assert (=> d!1709460 setRes!34257))

(declare-fun condSetEmpty!34257 () Bool)

(declare-fun res!2257151 () (InoxSet Context!8722))

(assert (=> d!1709460 (= condSetEmpty!34257 (= res!2257151 ((as const (Array Context!8722 Bool)) false)))))

(assert (=> d!1709460 (= (choose!39824 z!1189 lambda!271286) res!2257151)))

(declare-fun setIsEmpty!34257 () Bool)

(assert (=> setIsEmpty!34257 setRes!34257))

(declare-fun setNonEmpty!34257 () Bool)

(declare-fun e!3306072 () Bool)

(declare-fun setElem!34257 () Context!8722)

(declare-fun tp!1481765 () Bool)

(assert (=> setNonEmpty!34257 (= setRes!34257 (and tp!1481765 (inv!80689 setElem!34257) e!3306072))))

(declare-fun setRest!34257 () (InoxSet Context!8722))

(assert (=> setNonEmpty!34257 (= res!2257151 ((_ map or) (store ((as const (Array Context!8722 Bool)) false) setElem!34257 true) setRest!34257))))

(declare-fun b!5321555 () Bool)

(declare-fun tp!1481764 () Bool)

(assert (=> b!5321555 (= e!3306072 tp!1481764)))

(assert (= (and d!1709460 condSetEmpty!34257) setIsEmpty!34257))

(assert (= (and d!1709460 (not condSetEmpty!34257)) setNonEmpty!34257))

(assert (= setNonEmpty!34257 b!5321555))

(declare-fun m!6356520 () Bool)

(assert (=> setNonEmpty!34257 m!6356520))

(assert (=> d!1708988 d!1709460))

(declare-fun b!5321556 () Bool)

(declare-fun res!2257155 () Bool)

(declare-fun e!3306077 () Bool)

(assert (=> b!5321556 (=> (not res!2257155) (not e!3306077))))

(assert (=> b!5321556 (= res!2257155 (isEmpty!33079 (tail!10503 (_2!35479 (get!21018 lt!2171854)))))))

(declare-fun d!1709462 () Bool)

(declare-fun e!3306073 () Bool)

(assert (=> d!1709462 e!3306073))

(declare-fun c!924978 () Bool)

(assert (=> d!1709462 (= c!924978 ((_ is EmptyExpr!14977) (regTwo!30466 r!7292)))))

(declare-fun lt!2171973 () Bool)

(declare-fun e!3306079 () Bool)

(assert (=> d!1709462 (= lt!2171973 e!3306079)))

(declare-fun c!924977 () Bool)

(assert (=> d!1709462 (= c!924977 (isEmpty!33079 (_2!35479 (get!21018 lt!2171854))))))

(assert (=> d!1709462 (validRegex!6713 (regTwo!30466 r!7292))))

(assert (=> d!1709462 (= (matchR!7162 (regTwo!30466 r!7292) (_2!35479 (get!21018 lt!2171854))) lt!2171973)))

(declare-fun bm!380020 () Bool)

(declare-fun call!380025 () Bool)

(assert (=> bm!380020 (= call!380025 (isEmpty!33079 (_2!35479 (get!21018 lt!2171854))))))

(declare-fun b!5321557 () Bool)

(declare-fun res!2257159 () Bool)

(declare-fun e!3306076 () Bool)

(assert (=> b!5321557 (=> res!2257159 e!3306076)))

(assert (=> b!5321557 (= res!2257159 (not ((_ is ElementMatch!14977) (regTwo!30466 r!7292))))))

(declare-fun e!3306078 () Bool)

(assert (=> b!5321557 (= e!3306078 e!3306076)))

(declare-fun b!5321558 () Bool)

(assert (=> b!5321558 (= e!3306073 e!3306078)))

(declare-fun c!924979 () Bool)

(assert (=> b!5321558 (= c!924979 ((_ is EmptyLang!14977) (regTwo!30466 r!7292)))))

(declare-fun b!5321559 () Bool)

(declare-fun e!3306074 () Bool)

(declare-fun e!3306075 () Bool)

(assert (=> b!5321559 (= e!3306074 e!3306075)))

(declare-fun res!2257154 () Bool)

(assert (=> b!5321559 (=> res!2257154 e!3306075)))

(assert (=> b!5321559 (= res!2257154 call!380025)))

(declare-fun b!5321560 () Bool)

(assert (=> b!5321560 (= e!3306073 (= lt!2171973 call!380025))))

(declare-fun b!5321561 () Bool)

(assert (=> b!5321561 (= e!3306079 (nullable!5146 (regTwo!30466 r!7292)))))

(declare-fun b!5321562 () Bool)

(assert (=> b!5321562 (= e!3306079 (matchR!7162 (derivativeStep!4165 (regTwo!30466 r!7292) (head!11406 (_2!35479 (get!21018 lt!2171854)))) (tail!10503 (_2!35479 (get!21018 lt!2171854)))))))

(declare-fun b!5321563 () Bool)

(declare-fun res!2257157 () Bool)

(assert (=> b!5321563 (=> (not res!2257157) (not e!3306077))))

(assert (=> b!5321563 (= res!2257157 (not call!380025))))

(declare-fun b!5321564 () Bool)

(assert (=> b!5321564 (= e!3306076 e!3306074)))

(declare-fun res!2257153 () Bool)

(assert (=> b!5321564 (=> (not res!2257153) (not e!3306074))))

(assert (=> b!5321564 (= res!2257153 (not lt!2171973))))

(declare-fun b!5321565 () Bool)

(assert (=> b!5321565 (= e!3306077 (= (head!11406 (_2!35479 (get!21018 lt!2171854))) (c!924467 (regTwo!30466 r!7292))))))

(declare-fun b!5321566 () Bool)

(assert (=> b!5321566 (= e!3306075 (not (= (head!11406 (_2!35479 (get!21018 lt!2171854))) (c!924467 (regTwo!30466 r!7292)))))))

(declare-fun b!5321567 () Bool)

(declare-fun res!2257158 () Bool)

(assert (=> b!5321567 (=> res!2257158 e!3306075)))

(assert (=> b!5321567 (= res!2257158 (not (isEmpty!33079 (tail!10503 (_2!35479 (get!21018 lt!2171854))))))))

(declare-fun b!5321568 () Bool)

(assert (=> b!5321568 (= e!3306078 (not lt!2171973))))

(declare-fun b!5321569 () Bool)

(declare-fun res!2257156 () Bool)

(assert (=> b!5321569 (=> res!2257156 e!3306076)))

(assert (=> b!5321569 (= res!2257156 e!3306077)))

(declare-fun res!2257152 () Bool)

(assert (=> b!5321569 (=> (not res!2257152) (not e!3306077))))

(assert (=> b!5321569 (= res!2257152 lt!2171973)))

(assert (= (and d!1709462 c!924977) b!5321561))

(assert (= (and d!1709462 (not c!924977)) b!5321562))

(assert (= (and d!1709462 c!924978) b!5321560))

(assert (= (and d!1709462 (not c!924978)) b!5321558))

(assert (= (and b!5321558 c!924979) b!5321568))

(assert (= (and b!5321558 (not c!924979)) b!5321557))

(assert (= (and b!5321557 (not res!2257159)) b!5321569))

(assert (= (and b!5321569 res!2257152) b!5321563))

(assert (= (and b!5321563 res!2257157) b!5321556))

(assert (= (and b!5321556 res!2257155) b!5321565))

(assert (= (and b!5321569 (not res!2257156)) b!5321564))

(assert (= (and b!5321564 res!2257153) b!5321559))

(assert (= (and b!5321559 (not res!2257154)) b!5321567))

(assert (= (and b!5321567 (not res!2257158)) b!5321566))

(assert (= (or b!5321560 b!5321563 b!5321559) bm!380020))

(declare-fun m!6356522 () Bool)

(assert (=> b!5321565 m!6356522))

(declare-fun m!6356524 () Bool)

(assert (=> b!5321567 m!6356524))

(assert (=> b!5321567 m!6356524))

(declare-fun m!6356526 () Bool)

(assert (=> b!5321567 m!6356526))

(assert (=> b!5321556 m!6356524))

(assert (=> b!5321556 m!6356524))

(assert (=> b!5321556 m!6356526))

(assert (=> b!5321561 m!6356280))

(declare-fun m!6356528 () Bool)

(assert (=> d!1709462 m!6356528))

(assert (=> d!1709462 m!6356282))

(assert (=> bm!380020 m!6356528))

(assert (=> b!5321566 m!6356522))

(assert (=> b!5321562 m!6356522))

(assert (=> b!5321562 m!6356522))

(declare-fun m!6356530 () Bool)

(assert (=> b!5321562 m!6356530))

(assert (=> b!5321562 m!6356524))

(assert (=> b!5321562 m!6356530))

(assert (=> b!5321562 m!6356524))

(declare-fun m!6356532 () Bool)

(assert (=> b!5321562 m!6356532))

(assert (=> b!5320377 d!1709462))

(assert (=> b!5320377 d!1709448))

(declare-fun b!5321570 () Bool)

(declare-fun e!3306083 () (InoxSet Context!8722))

(assert (=> b!5321570 (= e!3306083 (store ((as const (Array Context!8722 Bool)) false) (Context!8723 (t!374441 (exprs!4861 lt!2171724))) true))))

(declare-fun b!5321571 () Bool)

(declare-fun c!924981 () Bool)

(declare-fun e!3306084 () Bool)

(assert (=> b!5321571 (= c!924981 e!3306084)))

(declare-fun res!2257160 () Bool)

(assert (=> b!5321571 (=> (not res!2257160) (not e!3306084))))

(assert (=> b!5321571 (= res!2257160 ((_ is Concat!23822) (h!67554 (exprs!4861 lt!2171724))))))

(declare-fun e!3306085 () (InoxSet Context!8722))

(declare-fun e!3306082 () (InoxSet Context!8722))

(assert (=> b!5321571 (= e!3306085 e!3306082)))

(declare-fun bm!380021 () Bool)

(declare-fun call!380029 () List!61230)

(declare-fun call!380030 () List!61230)

(assert (=> bm!380021 (= call!380029 call!380030)))

(declare-fun b!5321572 () Bool)

(declare-fun e!3306081 () (InoxSet Context!8722))

(assert (=> b!5321572 (= e!3306081 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5321573 () Bool)

(declare-fun call!380031 () (InoxSet Context!8722))

(declare-fun call!380027 () (InoxSet Context!8722))

(assert (=> b!5321573 (= e!3306085 ((_ map or) call!380031 call!380027))))

(declare-fun b!5321574 () Bool)

(declare-fun c!924982 () Bool)

(assert (=> b!5321574 (= c!924982 ((_ is Star!14977) (h!67554 (exprs!4861 lt!2171724))))))

(declare-fun e!3306080 () (InoxSet Context!8722))

(assert (=> b!5321574 (= e!3306080 e!3306081)))

(declare-fun d!1709464 () Bool)

(declare-fun c!924980 () Bool)

(assert (=> d!1709464 (= c!924980 (and ((_ is ElementMatch!14977) (h!67554 (exprs!4861 lt!2171724))) (= (c!924467 (h!67554 (exprs!4861 lt!2171724))) (h!67556 s!2326))))))

(assert (=> d!1709464 (= (derivationStepZipperDown!425 (h!67554 (exprs!4861 lt!2171724)) (Context!8723 (t!374441 (exprs!4861 lt!2171724))) (h!67556 s!2326)) e!3306083)))

(declare-fun bm!380022 () Bool)

(declare-fun c!924983 () Bool)

(assert (=> bm!380022 (= call!380030 ($colon$colon!1394 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171724)))) (ite (or c!924981 c!924983) (regTwo!30466 (h!67554 (exprs!4861 lt!2171724))) (h!67554 (exprs!4861 lt!2171724)))))))

(declare-fun bm!380023 () Bool)

(declare-fun call!380028 () (InoxSet Context!8722))

(assert (=> bm!380023 (= call!380028 call!380027)))

(declare-fun b!5321575 () Bool)

(declare-fun call!380026 () (InoxSet Context!8722))

(assert (=> b!5321575 (= e!3306080 call!380026)))

(declare-fun b!5321576 () Bool)

(assert (=> b!5321576 (= e!3306083 e!3306085)))

(declare-fun c!924984 () Bool)

(assert (=> b!5321576 (= c!924984 ((_ is Union!14977) (h!67554 (exprs!4861 lt!2171724))))))

(declare-fun bm!380024 () Bool)

(assert (=> bm!380024 (= call!380026 call!380028)))

(declare-fun b!5321577 () Bool)

(assert (=> b!5321577 (= e!3306081 call!380026)))

(declare-fun b!5321578 () Bool)

(assert (=> b!5321578 (= e!3306084 (nullable!5146 (regOne!30466 (h!67554 (exprs!4861 lt!2171724)))))))

(declare-fun b!5321579 () Bool)

(assert (=> b!5321579 (= e!3306082 ((_ map or) call!380031 call!380028))))

(declare-fun bm!380025 () Bool)

(assert (=> bm!380025 (= call!380031 (derivationStepZipperDown!425 (ite c!924984 (regOne!30467 (h!67554 (exprs!4861 lt!2171724))) (regOne!30466 (h!67554 (exprs!4861 lt!2171724)))) (ite c!924984 (Context!8723 (t!374441 (exprs!4861 lt!2171724))) (Context!8723 call!380030)) (h!67556 s!2326)))))

(declare-fun b!5321580 () Bool)

(assert (=> b!5321580 (= e!3306082 e!3306080)))

(assert (=> b!5321580 (= c!924983 ((_ is Concat!23822) (h!67554 (exprs!4861 lt!2171724))))))

(declare-fun bm!380026 () Bool)

(assert (=> bm!380026 (= call!380027 (derivationStepZipperDown!425 (ite c!924984 (regTwo!30467 (h!67554 (exprs!4861 lt!2171724))) (ite c!924981 (regTwo!30466 (h!67554 (exprs!4861 lt!2171724))) (ite c!924983 (regOne!30466 (h!67554 (exprs!4861 lt!2171724))) (reg!15306 (h!67554 (exprs!4861 lt!2171724)))))) (ite (or c!924984 c!924981) (Context!8723 (t!374441 (exprs!4861 lt!2171724))) (Context!8723 call!380029)) (h!67556 s!2326)))))

(assert (= (and d!1709464 c!924980) b!5321570))

(assert (= (and d!1709464 (not c!924980)) b!5321576))

(assert (= (and b!5321576 c!924984) b!5321573))

(assert (= (and b!5321576 (not c!924984)) b!5321571))

(assert (= (and b!5321571 res!2257160) b!5321578))

(assert (= (and b!5321571 c!924981) b!5321579))

(assert (= (and b!5321571 (not c!924981)) b!5321580))

(assert (= (and b!5321580 c!924983) b!5321575))

(assert (= (and b!5321580 (not c!924983)) b!5321574))

(assert (= (and b!5321574 c!924982) b!5321577))

(assert (= (and b!5321574 (not c!924982)) b!5321572))

(assert (= (or b!5321575 b!5321577) bm!380021))

(assert (= (or b!5321575 b!5321577) bm!380024))

(assert (= (or b!5321579 bm!380021) bm!380022))

(assert (= (or b!5321579 bm!380024) bm!380023))

(assert (= (or b!5321573 bm!380023) bm!380026))

(assert (= (or b!5321573 b!5321579) bm!380025))

(declare-fun m!6356534 () Bool)

(assert (=> bm!380026 m!6356534))

(declare-fun m!6356536 () Bool)

(assert (=> bm!380022 m!6356536))

(declare-fun m!6356538 () Bool)

(assert (=> b!5321578 m!6356538))

(declare-fun m!6356540 () Bool)

(assert (=> bm!380025 m!6356540))

(declare-fun m!6356542 () Bool)

(assert (=> b!5321570 m!6356542))

(assert (=> bm!379818 d!1709464))

(declare-fun d!1709466 () Bool)

(assert (=> d!1709466 (= (isEmpty!33075 (tail!10504 (unfocusZipperList!419 zl!343))) ((_ is Nil!61106) (tail!10504 (unfocusZipperList!419 zl!343))))))

(assert (=> b!5320304 d!1709466))

(declare-fun d!1709468 () Bool)

(assert (=> d!1709468 (= (tail!10504 (unfocusZipperList!419 zl!343)) (t!374441 (unfocusZipperList!419 zl!343)))))

(assert (=> b!5320304 d!1709468))

(declare-fun d!1709470 () Bool)

(assert (=> d!1709470 (= (isConcat!402 lt!2171867) ((_ is Concat!23822) lt!2171867))))

(assert (=> b!5320461 d!1709470))

(declare-fun b!5321581 () Bool)

(declare-fun e!3306089 () (InoxSet Context!8722))

(assert (=> b!5321581 (= e!3306089 (store ((as const (Array Context!8722 Bool)) false) (ite c!924667 lt!2171724 (Context!8723 call!379819)) true))))

(declare-fun b!5321582 () Bool)

(declare-fun c!924986 () Bool)

(declare-fun e!3306090 () Bool)

(assert (=> b!5321582 (= c!924986 e!3306090)))

(declare-fun res!2257161 () Bool)

(assert (=> b!5321582 (=> (not res!2257161) (not e!3306090))))

(assert (=> b!5321582 (= res!2257161 ((_ is Concat!23822) (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))))))))

(declare-fun e!3306091 () (InoxSet Context!8722))

(declare-fun e!3306088 () (InoxSet Context!8722))

(assert (=> b!5321582 (= e!3306091 e!3306088)))

(declare-fun bm!380027 () Bool)

(declare-fun call!380035 () List!61230)

(declare-fun call!380036 () List!61230)

(assert (=> bm!380027 (= call!380035 call!380036)))

(declare-fun b!5321583 () Bool)

(declare-fun e!3306087 () (InoxSet Context!8722))

(assert (=> b!5321583 (= e!3306087 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5321584 () Bool)

(declare-fun call!380037 () (InoxSet Context!8722))

(declare-fun call!380033 () (InoxSet Context!8722))

(assert (=> b!5321584 (= e!3306091 ((_ map or) call!380037 call!380033))))

(declare-fun b!5321585 () Bool)

(declare-fun c!924987 () Bool)

(assert (=> b!5321585 (= c!924987 ((_ is Star!14977) (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))))))))

(declare-fun e!3306086 () (InoxSet Context!8722))

(assert (=> b!5321585 (= e!3306086 e!3306087)))

(declare-fun d!1709472 () Bool)

(declare-fun c!924985 () Bool)

(assert (=> d!1709472 (= c!924985 (and ((_ is ElementMatch!14977) (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))))) (= (c!924467 (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))))) (h!67556 s!2326))))))

(assert (=> d!1709472 (= (derivationStepZipperDown!425 (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343))))) (ite c!924667 lt!2171724 (Context!8723 call!379819)) (h!67556 s!2326)) e!3306089)))

(declare-fun bm!380028 () Bool)

(declare-fun c!924988 () Bool)

(assert (=> bm!380028 (= call!380036 ($colon$colon!1394 (exprs!4861 (ite c!924667 lt!2171724 (Context!8723 call!379819))) (ite (or c!924986 c!924988) (regTwo!30466 (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))))) (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343))))))))))

(declare-fun bm!380029 () Bool)

(declare-fun call!380034 () (InoxSet Context!8722))

(assert (=> bm!380029 (= call!380034 call!380033)))

(declare-fun b!5321586 () Bool)

(declare-fun call!380032 () (InoxSet Context!8722))

(assert (=> b!5321586 (= e!3306086 call!380032)))

(declare-fun b!5321587 () Bool)

(assert (=> b!5321587 (= e!3306089 e!3306091)))

(declare-fun c!924989 () Bool)

(assert (=> b!5321587 (= c!924989 ((_ is Union!14977) (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))))))))

(declare-fun bm!380030 () Bool)

(assert (=> bm!380030 (= call!380032 call!380034)))

(declare-fun b!5321588 () Bool)

(assert (=> b!5321588 (= e!3306087 call!380032)))

(declare-fun b!5321589 () Bool)

(assert (=> b!5321589 (= e!3306090 (nullable!5146 (regOne!30466 (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343))))))))))

(declare-fun b!5321590 () Bool)

(assert (=> b!5321590 (= e!3306088 ((_ map or) call!380037 call!380034))))

(declare-fun bm!380031 () Bool)

(assert (=> bm!380031 (= call!380037 (derivationStepZipperDown!425 (ite c!924989 (regOne!30467 (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))))) (regOne!30466 (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343))))))) (ite c!924989 (ite c!924667 lt!2171724 (Context!8723 call!379819)) (Context!8723 call!380036)) (h!67556 s!2326)))))

(declare-fun b!5321591 () Bool)

(assert (=> b!5321591 (= e!3306088 e!3306086)))

(assert (=> b!5321591 (= c!924988 ((_ is Concat!23822) (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))))))))

(declare-fun bm!380032 () Bool)

(assert (=> bm!380032 (= call!380033 (derivationStepZipperDown!425 (ite c!924989 (regTwo!30467 (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))))) (ite c!924986 (regTwo!30466 (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))))) (ite c!924988 (regOne!30466 (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))))) (reg!15306 (ite c!924667 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343))))))))) (ite (or c!924989 c!924986) (ite c!924667 lt!2171724 (Context!8723 call!379819)) (Context!8723 call!380035)) (h!67556 s!2326)))))

(assert (= (and d!1709472 c!924985) b!5321581))

(assert (= (and d!1709472 (not c!924985)) b!5321587))

(assert (= (and b!5321587 c!924989) b!5321584))

(assert (= (and b!5321587 (not c!924989)) b!5321582))

(assert (= (and b!5321582 res!2257161) b!5321589))

(assert (= (and b!5321582 c!924986) b!5321590))

(assert (= (and b!5321582 (not c!924986)) b!5321591))

(assert (= (and b!5321591 c!924988) b!5321586))

(assert (= (and b!5321591 (not c!924988)) b!5321585))

(assert (= (and b!5321585 c!924987) b!5321588))

(assert (= (and b!5321585 (not c!924987)) b!5321583))

(assert (= (or b!5321586 b!5321588) bm!380027))

(assert (= (or b!5321586 b!5321588) bm!380030))

(assert (= (or b!5321590 bm!380027) bm!380028))

(assert (= (or b!5321590 bm!380030) bm!380029))

(assert (= (or b!5321584 bm!380029) bm!380032))

(assert (= (or b!5321584 b!5321590) bm!380031))

(declare-fun m!6356544 () Bool)

(assert (=> bm!380032 m!6356544))

(declare-fun m!6356546 () Bool)

(assert (=> bm!380028 m!6356546))

(declare-fun m!6356548 () Bool)

(assert (=> b!5321589 m!6356548))

(declare-fun m!6356550 () Bool)

(assert (=> bm!380031 m!6356550))

(declare-fun m!6356552 () Bool)

(assert (=> b!5321581 m!6356552))

(assert (=> bm!379814 d!1709472))

(declare-fun bs!1233387 () Bool)

(declare-fun d!1709474 () Bool)

(assert (= bs!1233387 (and d!1709474 b!5320159)))

(declare-fun lambda!271449 () Int)

(assert (=> bs!1233387 (not (= lambda!271449 lambda!271339))))

(declare-fun bs!1233388 () Bool)

(assert (= bs!1233388 (and d!1709474 b!5321224)))

(assert (=> bs!1233388 (not (= lambda!271449 lambda!271432))))

(declare-fun bs!1233389 () Bool)

(assert (= bs!1233389 (and d!1709474 b!5321221)))

(assert (=> bs!1233389 (not (= lambda!271449 lambda!271431))))

(declare-fun bs!1233390 () Bool)

(assert (= bs!1233390 (and d!1709474 b!5320178)))

(assert (=> bs!1233390 (not (= lambda!271449 lambda!271342))))

(declare-fun bs!1233391 () Bool)

(assert (= bs!1233391 (and d!1709474 d!1709314)))

(assert (=> bs!1233391 (not (= lambda!271449 lambda!271429))))

(declare-fun bs!1233392 () Bool)

(assert (= bs!1233392 (and d!1709474 b!5320157)))

(assert (=> bs!1233392 (not (= lambda!271449 lambda!271338))))

(declare-fun bs!1233393 () Bool)

(assert (= bs!1233393 (and d!1709474 b!5320176)))

(assert (=> bs!1233393 (not (= lambda!271449 lambda!271341))))

(declare-fun bs!1233394 () Bool)

(assert (= bs!1233394 (and d!1709474 d!1709286)))

(assert (=> bs!1233394 (= lambda!271449 lambda!271421)))

(declare-fun bs!1233395 () Bool)

(assert (= bs!1233395 (and d!1709474 d!1709354)))

(assert (=> bs!1233395 (= lambda!271449 lambda!271439)))

(declare-fun bs!1233396 () Bool)

(assert (= bs!1233396 (and d!1709474 d!1709438)))

(assert (=> bs!1233396 (= lambda!271449 lambda!271448)))

(assert (=> d!1709474 (= (nullableZipper!1344 ((_ map or) lt!2171730 lt!2171739)) (exists!2011 ((_ map or) lt!2171730 lt!2171739) lambda!271449))))

(declare-fun bs!1233397 () Bool)

(assert (= bs!1233397 d!1709474))

(declare-fun m!6356554 () Bool)

(assert (=> bs!1233397 m!6356554))

(assert (=> b!5320473 d!1709474))

(declare-fun d!1709476 () Bool)

(assert (=> d!1709476 true))

(declare-fun setRes!34258 () Bool)

(assert (=> d!1709476 setRes!34258))

(declare-fun condSetEmpty!34258 () Bool)

(declare-fun res!2257162 () (InoxSet Context!8722))

(assert (=> d!1709476 (= condSetEmpty!34258 (= res!2257162 ((as const (Array Context!8722 Bool)) false)))))

(assert (=> d!1709476 (= (choose!39824 lt!2171735 lambda!271286) res!2257162)))

(declare-fun setIsEmpty!34258 () Bool)

(assert (=> setIsEmpty!34258 setRes!34258))

(declare-fun e!3306092 () Bool)

(declare-fun setNonEmpty!34258 () Bool)

(declare-fun setElem!34258 () Context!8722)

(declare-fun tp!1481767 () Bool)

(assert (=> setNonEmpty!34258 (= setRes!34258 (and tp!1481767 (inv!80689 setElem!34258) e!3306092))))

(declare-fun setRest!34258 () (InoxSet Context!8722))

(assert (=> setNonEmpty!34258 (= res!2257162 ((_ map or) (store ((as const (Array Context!8722 Bool)) false) setElem!34258 true) setRest!34258))))

(declare-fun b!5321592 () Bool)

(declare-fun tp!1481766 () Bool)

(assert (=> b!5321592 (= e!3306092 tp!1481766)))

(assert (= (and d!1709476 condSetEmpty!34258) setIsEmpty!34258))

(assert (= (and d!1709476 (not condSetEmpty!34258)) setNonEmpty!34258))

(assert (= setNonEmpty!34258 b!5321592))

(declare-fun m!6356556 () Bool)

(assert (=> setNonEmpty!34258 m!6356556))

(assert (=> d!1708978 d!1709476))

(assert (=> b!5320242 d!1708962))

(declare-fun d!1709478 () Bool)

(declare-fun lt!2171974 () Int)

(assert (=> d!1709478 (>= lt!2171974 0)))

(declare-fun e!3306093 () Int)

(assert (=> d!1709478 (= lt!2171974 e!3306093)))

(declare-fun c!924990 () Bool)

(assert (=> d!1709478 (= c!924990 ((_ is Cons!61107) (t!374442 zl!343)))))

(assert (=> d!1709478 (= (zipperDepthTotal!130 (t!374442 zl!343)) lt!2171974)))

(declare-fun b!5321593 () Bool)

(assert (=> b!5321593 (= e!3306093 (+ (contextDepthTotal!110 (h!67555 (t!374442 zl!343))) (zipperDepthTotal!130 (t!374442 (t!374442 zl!343)))))))

(declare-fun b!5321594 () Bool)

(assert (=> b!5321594 (= e!3306093 0)))

(assert (= (and d!1709478 c!924990) b!5321593))

(assert (= (and d!1709478 (not c!924990)) b!5321594))

(declare-fun m!6356558 () Bool)

(assert (=> b!5321593 m!6356558))

(declare-fun m!6356560 () Bool)

(assert (=> b!5321593 m!6356560))

(assert (=> b!5320242 d!1709478))

(assert (=> d!1709008 d!1709010))

(assert (=> d!1709008 d!1708958))

(declare-fun e!3306096 () Bool)

(declare-fun d!1709480 () Bool)

(assert (=> d!1709480 (= (matchZipper!1221 ((_ map or) lt!2171730 lt!2171739) (t!374443 s!2326)) e!3306096)))

(declare-fun res!2257165 () Bool)

(assert (=> d!1709480 (=> res!2257165 e!3306096)))

(assert (=> d!1709480 (= res!2257165 (matchZipper!1221 lt!2171730 (t!374443 s!2326)))))

(assert (=> d!1709480 true))

(declare-fun _$48!1000 () Unit!153426)

(assert (=> d!1709480 (= (choose!39826 lt!2171730 lt!2171739 (t!374443 s!2326)) _$48!1000)))

(declare-fun b!5321597 () Bool)

(assert (=> b!5321597 (= e!3306096 (matchZipper!1221 lt!2171739 (t!374443 s!2326)))))

(assert (= (and d!1709480 (not res!2257165)) b!5321597))

(assert (=> d!1709480 m!6355022))

(assert (=> d!1709480 m!6355020))

(assert (=> b!5321597 m!6355060))

(assert (=> d!1709008 d!1709480))

(assert (=> d!1709010 d!1709260))

(declare-fun e!3306100 () (InoxSet Context!8722))

(declare-fun b!5321598 () Bool)

(assert (=> b!5321598 (= e!3306100 (store ((as const (Array Context!8722 Bool)) false) (ite c!924620 (Context!8723 lt!2171729) (Context!8723 call!379801)) true))))

(declare-fun b!5321599 () Bool)

(declare-fun c!924992 () Bool)

(declare-fun e!3306101 () Bool)

(assert (=> b!5321599 (= c!924992 e!3306101)))

(declare-fun res!2257166 () Bool)

(assert (=> b!5321599 (=> (not res!2257166) (not e!3306101))))

(assert (=> b!5321599 (= res!2257166 ((_ is Concat!23822) (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292))))))))

(declare-fun e!3306102 () (InoxSet Context!8722))

(declare-fun e!3306099 () (InoxSet Context!8722))

(assert (=> b!5321599 (= e!3306102 e!3306099)))

(declare-fun bm!380033 () Bool)

(declare-fun call!380041 () List!61230)

(declare-fun call!380042 () List!61230)

(assert (=> bm!380033 (= call!380041 call!380042)))

(declare-fun b!5321600 () Bool)

(declare-fun e!3306098 () (InoxSet Context!8722))

(assert (=> b!5321600 (= e!3306098 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5321601 () Bool)

(declare-fun call!380043 () (InoxSet Context!8722))

(declare-fun call!380039 () (InoxSet Context!8722))

(assert (=> b!5321601 (= e!3306102 ((_ map or) call!380043 call!380039))))

(declare-fun b!5321602 () Bool)

(declare-fun c!924993 () Bool)

(assert (=> b!5321602 (= c!924993 ((_ is Star!14977) (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292))))))))

(declare-fun e!3306097 () (InoxSet Context!8722))

(assert (=> b!5321602 (= e!3306097 e!3306098)))

(declare-fun c!924991 () Bool)

(declare-fun d!1709482 () Bool)

(assert (=> d!1709482 (= c!924991 (and ((_ is ElementMatch!14977) (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292))))) (= (c!924467 (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292))))) (h!67556 s!2326))))))

(assert (=> d!1709482 (= (derivationStepZipperDown!425 (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292)))) (ite c!924620 (Context!8723 lt!2171729) (Context!8723 call!379801)) (h!67556 s!2326)) e!3306100)))

(declare-fun c!924994 () Bool)

(declare-fun bm!380034 () Bool)

(assert (=> bm!380034 (= call!380042 ($colon$colon!1394 (exprs!4861 (ite c!924620 (Context!8723 lt!2171729) (Context!8723 call!379801))) (ite (or c!924992 c!924994) (regTwo!30466 (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292))))) (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292)))))))))

(declare-fun bm!380035 () Bool)

(declare-fun call!380040 () (InoxSet Context!8722))

(assert (=> bm!380035 (= call!380040 call!380039)))

(declare-fun b!5321603 () Bool)

(declare-fun call!380038 () (InoxSet Context!8722))

(assert (=> b!5321603 (= e!3306097 call!380038)))

(declare-fun b!5321604 () Bool)

(assert (=> b!5321604 (= e!3306100 e!3306102)))

(declare-fun c!924995 () Bool)

(assert (=> b!5321604 (= c!924995 ((_ is Union!14977) (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292))))))))

(declare-fun bm!380036 () Bool)

(assert (=> bm!380036 (= call!380038 call!380040)))

(declare-fun b!5321605 () Bool)

(assert (=> b!5321605 (= e!3306098 call!380038)))

(declare-fun b!5321606 () Bool)

(assert (=> b!5321606 (= e!3306101 (nullable!5146 (regOne!30466 (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292)))))))))

(declare-fun b!5321607 () Bool)

(assert (=> b!5321607 (= e!3306099 ((_ map or) call!380043 call!380040))))

(declare-fun bm!380037 () Bool)

(assert (=> bm!380037 (= call!380043 (derivationStepZipperDown!425 (ite c!924995 (regOne!30467 (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292))))) (regOne!30466 (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292)))))) (ite c!924995 (ite c!924620 (Context!8723 lt!2171729) (Context!8723 call!379801)) (Context!8723 call!380042)) (h!67556 s!2326)))))

(declare-fun b!5321608 () Bool)

(assert (=> b!5321608 (= e!3306099 e!3306097)))

(assert (=> b!5321608 (= c!924994 ((_ is Concat!23822) (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292))))))))

(declare-fun bm!380038 () Bool)

(assert (=> bm!380038 (= call!380039 (derivationStepZipperDown!425 (ite c!924995 (regTwo!30467 (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292))))) (ite c!924992 (regTwo!30466 (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292))))) (ite c!924994 (regOne!30466 (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292))))) (reg!15306 (ite c!924620 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292)))))))) (ite (or c!924995 c!924992) (ite c!924620 (Context!8723 lt!2171729) (Context!8723 call!379801)) (Context!8723 call!380041)) (h!67556 s!2326)))))

(assert (= (and d!1709482 c!924991) b!5321598))

(assert (= (and d!1709482 (not c!924991)) b!5321604))

(assert (= (and b!5321604 c!924995) b!5321601))

(assert (= (and b!5321604 (not c!924995)) b!5321599))

(assert (= (and b!5321599 res!2257166) b!5321606))

(assert (= (and b!5321599 c!924992) b!5321607))

(assert (= (and b!5321599 (not c!924992)) b!5321608))

(assert (= (and b!5321608 c!924994) b!5321603))

(assert (= (and b!5321608 (not c!924994)) b!5321602))

(assert (= (and b!5321602 c!924993) b!5321605))

(assert (= (and b!5321602 (not c!924993)) b!5321600))

(assert (= (or b!5321603 b!5321605) bm!380033))

(assert (= (or b!5321603 b!5321605) bm!380036))

(assert (= (or b!5321607 bm!380033) bm!380034))

(assert (= (or b!5321607 bm!380036) bm!380035))

(assert (= (or b!5321601 bm!380035) bm!380038))

(assert (= (or b!5321601 b!5321607) bm!380037))

(declare-fun m!6356562 () Bool)

(assert (=> bm!380038 m!6356562))

(declare-fun m!6356564 () Bool)

(assert (=> bm!380034 m!6356564))

(declare-fun m!6356566 () Bool)

(assert (=> b!5321606 m!6356566))

(declare-fun m!6356568 () Bool)

(assert (=> bm!380037 m!6356568))

(declare-fun m!6356570 () Bool)

(assert (=> b!5321598 m!6356570))

(assert (=> bm!379796 d!1709482))

(declare-fun bs!1233398 () Bool)

(declare-fun d!1709484 () Bool)

(assert (= bs!1233398 (and d!1709484 b!5320159)))

(declare-fun lambda!271450 () Int)

(assert (=> bs!1233398 (not (= lambda!271450 lambda!271339))))

(declare-fun bs!1233399 () Bool)

(assert (= bs!1233399 (and d!1709484 b!5321224)))

(assert (=> bs!1233399 (not (= lambda!271450 lambda!271432))))

(declare-fun bs!1233400 () Bool)

(assert (= bs!1233400 (and d!1709484 b!5321221)))

(assert (=> bs!1233400 (not (= lambda!271450 lambda!271431))))

(declare-fun bs!1233401 () Bool)

(assert (= bs!1233401 (and d!1709484 b!5320178)))

(assert (=> bs!1233401 (not (= lambda!271450 lambda!271342))))

(declare-fun bs!1233402 () Bool)

(assert (= bs!1233402 (and d!1709484 d!1709474)))

(assert (=> bs!1233402 (= lambda!271450 lambda!271449)))

(declare-fun bs!1233403 () Bool)

(assert (= bs!1233403 (and d!1709484 d!1709314)))

(assert (=> bs!1233403 (not (= lambda!271450 lambda!271429))))

(declare-fun bs!1233404 () Bool)

(assert (= bs!1233404 (and d!1709484 b!5320157)))

(assert (=> bs!1233404 (not (= lambda!271450 lambda!271338))))

(declare-fun bs!1233405 () Bool)

(assert (= bs!1233405 (and d!1709484 b!5320176)))

(assert (=> bs!1233405 (not (= lambda!271450 lambda!271341))))

(declare-fun bs!1233406 () Bool)

(assert (= bs!1233406 (and d!1709484 d!1709286)))

(assert (=> bs!1233406 (= lambda!271450 lambda!271421)))

(declare-fun bs!1233407 () Bool)

(assert (= bs!1233407 (and d!1709484 d!1709354)))

(assert (=> bs!1233407 (= lambda!271450 lambda!271439)))

(declare-fun bs!1233408 () Bool)

(assert (= bs!1233408 (and d!1709484 d!1709438)))

(assert (=> bs!1233408 (= lambda!271450 lambda!271448)))

(assert (=> d!1709484 (= (nullableZipper!1344 lt!2171742) (exists!2011 lt!2171742 lambda!271450))))

(declare-fun bs!1233409 () Bool)

(assert (= bs!1233409 d!1709484))

(declare-fun m!6356572 () Bool)

(assert (=> bs!1233409 m!6356572))

(assert (=> b!5320078 d!1709484))

(declare-fun b!5321609 () Bool)

(declare-fun e!3306105 () Bool)

(declare-fun e!3306106 () Bool)

(assert (=> b!5321609 (= e!3306105 e!3306106)))

(declare-fun res!2257170 () Bool)

(assert (=> b!5321609 (= res!2257170 (not (nullable!5146 (reg!15306 lt!2171867))))))

(assert (=> b!5321609 (=> (not res!2257170) (not e!3306106))))

(declare-fun bm!380039 () Bool)

(declare-fun c!924996 () Bool)

(declare-fun c!924997 () Bool)

(declare-fun call!380044 () Bool)

(assert (=> bm!380039 (= call!380044 (validRegex!6713 (ite c!924997 (reg!15306 lt!2171867) (ite c!924996 (regTwo!30467 lt!2171867) (regTwo!30466 lt!2171867)))))))

(declare-fun b!5321610 () Bool)

(assert (=> b!5321610 (= e!3306106 call!380044)))

(declare-fun bm!380040 () Bool)

(declare-fun call!380045 () Bool)

(assert (=> bm!380040 (= call!380045 call!380044)))

(declare-fun bm!380041 () Bool)

(declare-fun call!380046 () Bool)

(assert (=> bm!380041 (= call!380046 (validRegex!6713 (ite c!924996 (regOne!30467 lt!2171867) (regOne!30466 lt!2171867))))))

(declare-fun b!5321612 () Bool)

(declare-fun res!2257168 () Bool)

(declare-fun e!3306107 () Bool)

(assert (=> b!5321612 (=> (not res!2257168) (not e!3306107))))

(assert (=> b!5321612 (= res!2257168 call!380046)))

(declare-fun e!3306109 () Bool)

(assert (=> b!5321612 (= e!3306109 e!3306107)))

(declare-fun b!5321613 () Bool)

(assert (=> b!5321613 (= e!3306107 call!380045)))

(declare-fun b!5321614 () Bool)

(assert (=> b!5321614 (= e!3306105 e!3306109)))

(assert (=> b!5321614 (= c!924996 ((_ is Union!14977) lt!2171867))))

(declare-fun b!5321615 () Bool)

(declare-fun e!3306108 () Bool)

(declare-fun e!3306104 () Bool)

(assert (=> b!5321615 (= e!3306108 e!3306104)))

(declare-fun res!2257169 () Bool)

(assert (=> b!5321615 (=> (not res!2257169) (not e!3306104))))

(assert (=> b!5321615 (= res!2257169 call!380046)))

(declare-fun b!5321611 () Bool)

(declare-fun e!3306103 () Bool)

(assert (=> b!5321611 (= e!3306103 e!3306105)))

(assert (=> b!5321611 (= c!924997 ((_ is Star!14977) lt!2171867))))

(declare-fun d!1709486 () Bool)

(declare-fun res!2257167 () Bool)

(assert (=> d!1709486 (=> res!2257167 e!3306103)))

(assert (=> d!1709486 (= res!2257167 ((_ is ElementMatch!14977) lt!2171867))))

(assert (=> d!1709486 (= (validRegex!6713 lt!2171867) e!3306103)))

(declare-fun b!5321616 () Bool)

(assert (=> b!5321616 (= e!3306104 call!380045)))

(declare-fun b!5321617 () Bool)

(declare-fun res!2257171 () Bool)

(assert (=> b!5321617 (=> res!2257171 e!3306108)))

(assert (=> b!5321617 (= res!2257171 (not ((_ is Concat!23822) lt!2171867)))))

(assert (=> b!5321617 (= e!3306109 e!3306108)))

(assert (= (and d!1709486 (not res!2257167)) b!5321611))

(assert (= (and b!5321611 c!924997) b!5321609))

(assert (= (and b!5321611 (not c!924997)) b!5321614))

(assert (= (and b!5321609 res!2257170) b!5321610))

(assert (= (and b!5321614 c!924996) b!5321612))

(assert (= (and b!5321614 (not c!924996)) b!5321617))

(assert (= (and b!5321612 res!2257168) b!5321613))

(assert (= (and b!5321617 (not res!2257171)) b!5321615))

(assert (= (and b!5321615 res!2257169) b!5321616))

(assert (= (or b!5321613 b!5321616) bm!380040))

(assert (= (or b!5321612 b!5321615) bm!380041))

(assert (= (or b!5321610 bm!380040) bm!380039))

(declare-fun m!6356574 () Bool)

(assert (=> b!5321609 m!6356574))

(declare-fun m!6356576 () Bool)

(assert (=> bm!380039 m!6356576))

(declare-fun m!6356578 () Bool)

(assert (=> bm!380041 m!6356578))

(assert (=> d!1709004 d!1709486))

(declare-fun d!1709488 () Bool)

(declare-fun res!2257172 () Bool)

(declare-fun e!3306110 () Bool)

(assert (=> d!1709488 (=> res!2257172 e!3306110)))

(assert (=> d!1709488 (= res!2257172 ((_ is Nil!61106) (exprs!4861 (h!67555 zl!343))))))

(assert (=> d!1709488 (= (forall!14395 (exprs!4861 (h!67555 zl!343)) lambda!271367) e!3306110)))

(declare-fun b!5321618 () Bool)

(declare-fun e!3306111 () Bool)

(assert (=> b!5321618 (= e!3306110 e!3306111)))

(declare-fun res!2257173 () Bool)

(assert (=> b!5321618 (=> (not res!2257173) (not e!3306111))))

(assert (=> b!5321618 (= res!2257173 (dynLambda!24155 lambda!271367 (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun b!5321619 () Bool)

(assert (=> b!5321619 (= e!3306111 (forall!14395 (t!374441 (exprs!4861 (h!67555 zl!343))) lambda!271367))))

(assert (= (and d!1709488 (not res!2257172)) b!5321618))

(assert (= (and b!5321618 res!2257173) b!5321619))

(declare-fun b_lambda!204727 () Bool)

(assert (=> (not b_lambda!204727) (not b!5321618)))

(declare-fun m!6356580 () Bool)

(assert (=> b!5321618 m!6356580))

(declare-fun m!6356582 () Bool)

(assert (=> b!5321619 m!6356582))

(assert (=> d!1709004 d!1709488))

(assert (=> b!5320311 d!1709004))

(declare-fun bs!1233410 () Bool)

(declare-fun d!1709490 () Bool)

(assert (= bs!1233410 (and d!1709490 d!1708952)))

(declare-fun lambda!271451 () Int)

(assert (=> bs!1233410 (= lambda!271451 lambda!271352)))

(declare-fun bs!1233411 () Bool)

(assert (= bs!1233411 (and d!1709490 d!1708950)))

(assert (=> bs!1233411 (= lambda!271451 lambda!271349)))

(declare-fun bs!1233412 () Bool)

(assert (= bs!1233412 (and d!1709490 d!1708944)))

(assert (=> bs!1233412 (= lambda!271451 lambda!271345)))

(declare-fun bs!1233413 () Bool)

(assert (= bs!1233413 (and d!1709490 d!1709306)))

(assert (=> bs!1233413 (= lambda!271451 lambda!271425)))

(declare-fun bs!1233414 () Bool)

(assert (= bs!1233414 (and d!1709490 b!5321270)))

(assert (=> bs!1233414 (not (= lambda!271451 lambda!271438))))

(declare-fun bs!1233415 () Bool)

(assert (= bs!1233415 (and d!1709490 b!5319791)))

(assert (=> bs!1233415 (= lambda!271451 lambda!271287)))

(declare-fun bs!1233416 () Bool)

(assert (= bs!1233416 (and d!1709490 d!1709004)))

(assert (=> bs!1233416 (= lambda!271451 lambda!271367)))

(declare-fun bs!1233417 () Bool)

(assert (= bs!1233417 (and d!1709490 d!1709424)))

(assert (=> bs!1233417 (= lambda!271451 lambda!271444)))

(declare-fun bs!1233418 () Bool)

(assert (= bs!1233418 (and d!1709490 d!1708948)))

(assert (=> bs!1233418 (= lambda!271451 lambda!271346)))

(declare-fun bs!1233419 () Bool)

(assert (= bs!1233419 (and d!1709490 b!5321268)))

(assert (=> bs!1233419 (not (= lambda!271451 lambda!271437))))

(declare-fun lt!2171975 () List!61230)

(assert (=> d!1709490 (forall!14395 lt!2171975 lambda!271451)))

(declare-fun e!3306112 () List!61230)

(assert (=> d!1709490 (= lt!2171975 e!3306112)))

(declare-fun c!924998 () Bool)

(assert (=> d!1709490 (= c!924998 ((_ is Cons!61107) (t!374442 zl!343)))))

(assert (=> d!1709490 (= (unfocusZipperList!419 (t!374442 zl!343)) lt!2171975)))

(declare-fun b!5321620 () Bool)

(assert (=> b!5321620 (= e!3306112 (Cons!61106 (generalisedConcat!646 (exprs!4861 (h!67555 (t!374442 zl!343)))) (unfocusZipperList!419 (t!374442 (t!374442 zl!343)))))))

(declare-fun b!5321621 () Bool)

(assert (=> b!5321621 (= e!3306112 Nil!61106)))

(assert (= (and d!1709490 c!924998) b!5321620))

(assert (= (and d!1709490 (not c!924998)) b!5321621))

(declare-fun m!6356584 () Bool)

(assert (=> d!1709490 m!6356584))

(declare-fun m!6356586 () Bool)

(assert (=> b!5321620 m!6356586))

(declare-fun m!6356588 () Bool)

(assert (=> b!5321620 m!6356588))

(assert (=> b!5320311 d!1709490))

(assert (=> bs!1232971 d!1708996))

(assert (=> b!5320472 d!1708900))

(declare-fun bm!380046 () Bool)

(declare-fun call!380052 () Bool)

(declare-fun c!925001 () Bool)

(assert (=> bm!380046 (= call!380052 (nullable!5146 (ite c!925001 (regOne!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regOne!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))))))))

(declare-fun b!5321636 () Bool)

(declare-fun e!3306129 () Bool)

(declare-fun e!3306130 () Bool)

(assert (=> b!5321636 (= e!3306129 e!3306130)))

(declare-fun res!2257187 () Bool)

(assert (=> b!5321636 (= res!2257187 call!380052)))

(assert (=> b!5321636 (=> res!2257187 e!3306130)))

(declare-fun d!1709492 () Bool)

(declare-fun res!2257185 () Bool)

(declare-fun e!3306126 () Bool)

(assert (=> d!1709492 (=> res!2257185 e!3306126)))

(assert (=> d!1709492 (= res!2257185 ((_ is EmptyExpr!14977) (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(assert (=> d!1709492 (= (nullableFct!1496 (h!67554 (exprs!4861 (h!67555 zl!343)))) e!3306126)))

(declare-fun b!5321637 () Bool)

(declare-fun e!3306127 () Bool)

(assert (=> b!5321637 (= e!3306129 e!3306127)))

(declare-fun res!2257184 () Bool)

(assert (=> b!5321637 (= res!2257184 call!380052)))

(assert (=> b!5321637 (=> (not res!2257184) (not e!3306127))))

(declare-fun b!5321638 () Bool)

(declare-fun e!3306128 () Bool)

(assert (=> b!5321638 (= e!3306128 e!3306129)))

(assert (=> b!5321638 (= c!925001 ((_ is Union!14977) (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun b!5321639 () Bool)

(declare-fun call!380051 () Bool)

(assert (=> b!5321639 (= e!3306130 call!380051)))

(declare-fun b!5321640 () Bool)

(assert (=> b!5321640 (= e!3306127 call!380051)))

(declare-fun bm!380047 () Bool)

(assert (=> bm!380047 (= call!380051 (nullable!5146 (ite c!925001 (regTwo!30467 (h!67554 (exprs!4861 (h!67555 zl!343)))) (regTwo!30466 (h!67554 (exprs!4861 (h!67555 zl!343)))))))))

(declare-fun b!5321641 () Bool)

(declare-fun e!3306125 () Bool)

(assert (=> b!5321641 (= e!3306126 e!3306125)))

(declare-fun res!2257186 () Bool)

(assert (=> b!5321641 (=> (not res!2257186) (not e!3306125))))

(assert (=> b!5321641 (= res!2257186 (and (not ((_ is EmptyLang!14977) (h!67554 (exprs!4861 (h!67555 zl!343))))) (not ((_ is ElementMatch!14977) (h!67554 (exprs!4861 (h!67555 zl!343)))))))))

(declare-fun b!5321642 () Bool)

(assert (=> b!5321642 (= e!3306125 e!3306128)))

(declare-fun res!2257188 () Bool)

(assert (=> b!5321642 (=> res!2257188 e!3306128)))

(assert (=> b!5321642 (= res!2257188 ((_ is Star!14977) (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(assert (= (and d!1709492 (not res!2257185)) b!5321641))

(assert (= (and b!5321641 res!2257186) b!5321642))

(assert (= (and b!5321642 (not res!2257188)) b!5321638))

(assert (= (and b!5321638 c!925001) b!5321636))

(assert (= (and b!5321638 (not c!925001)) b!5321637))

(assert (= (and b!5321636 (not res!2257187)) b!5321639))

(assert (= (and b!5321637 res!2257184) b!5321640))

(assert (= (or b!5321639 b!5321640) bm!380047))

(assert (= (or b!5321636 b!5321637) bm!380046))

(declare-fun m!6356590 () Bool)

(assert (=> bm!380046 m!6356590))

(declare-fun m!6356592 () Bool)

(assert (=> bm!380047 m!6356592))

(assert (=> d!1708992 d!1709492))

(declare-fun d!1709494 () Bool)

(assert (=> d!1709494 (= (Exists!2158 lambda!271360) (choose!39821 lambda!271360))))

(declare-fun bs!1233420 () Bool)

(assert (= bs!1233420 d!1709494))

(declare-fun m!6356594 () Bool)

(assert (=> bs!1233420 m!6356594))

(assert (=> d!1708972 d!1709494))

(declare-fun d!1709496 () Bool)

(assert (=> d!1709496 (= (Exists!2158 lambda!271361) (choose!39821 lambda!271361))))

(declare-fun bs!1233421 () Bool)

(assert (= bs!1233421 d!1709496))

(declare-fun m!6356596 () Bool)

(assert (=> bs!1233421 m!6356596))

(assert (=> d!1708972 d!1709496))

(declare-fun bs!1233422 () Bool)

(declare-fun d!1709498 () Bool)

(assert (= bs!1233422 (and d!1709498 b!5320516)))

(declare-fun lambda!271456 () Int)

(assert (=> bs!1233422 (not (= lambda!271456 lambda!271373))))

(declare-fun bs!1233423 () Bool)

(assert (= bs!1233423 (and d!1709498 b!5321448)))

(assert (=> bs!1233423 (not (= lambda!271456 lambda!271442))))

(declare-fun bs!1233424 () Bool)

(assert (= bs!1233424 (and d!1709498 d!1708972)))

(assert (=> bs!1233424 (not (= lambda!271456 lambda!271361))))

(declare-fun bs!1233425 () Bool)

(assert (= bs!1233425 (and d!1709498 b!5320510)))

(assert (=> bs!1233425 (not (= lambda!271456 lambda!271372))))

(declare-fun bs!1233426 () Bool)

(assert (= bs!1233426 (and d!1709498 d!1708966)))

(assert (=> bs!1233426 (= lambda!271456 lambda!271355)))

(declare-fun bs!1233427 () Bool)

(assert (= bs!1233427 (and d!1709498 b!5321442)))

(assert (=> bs!1233427 (not (= lambda!271456 lambda!271441))))

(declare-fun bs!1233428 () Bool)

(assert (= bs!1233428 (and d!1709498 b!5319790)))

(assert (=> bs!1233428 (= lambda!271456 lambda!271284)))

(assert (=> bs!1233424 (= lambda!271456 lambda!271360)))

(declare-fun bs!1233429 () Bool)

(assert (= bs!1233429 (and d!1709498 d!1709434)))

(assert (=> bs!1233429 (= lambda!271456 lambda!271447)))

(assert (=> bs!1233428 (not (= lambda!271456 lambda!271285))))

(assert (=> d!1709498 true))

(assert (=> d!1709498 true))

(assert (=> d!1709498 true))

(declare-fun lambda!271457 () Int)

(assert (=> bs!1233422 (= lambda!271457 lambda!271373)))

(assert (=> bs!1233423 (= (and (= (regOne!30466 r!7292) (regOne!30466 (regTwo!30467 r!7292))) (= (regTwo!30466 r!7292) (regTwo!30466 (regTwo!30467 r!7292)))) (= lambda!271457 lambda!271442))))

(assert (=> bs!1233424 (= lambda!271457 lambda!271361)))

(assert (=> bs!1233426 (not (= lambda!271457 lambda!271355))))

(assert (=> bs!1233427 (not (= lambda!271457 lambda!271441))))

(assert (=> bs!1233428 (not (= lambda!271457 lambda!271284))))

(assert (=> bs!1233424 (not (= lambda!271457 lambda!271360))))

(assert (=> bs!1233429 (not (= lambda!271457 lambda!271447))))

(assert (=> bs!1233428 (= lambda!271457 lambda!271285)))

(declare-fun bs!1233430 () Bool)

(assert (= bs!1233430 d!1709498))

(assert (=> bs!1233430 (not (= lambda!271457 lambda!271456))))

(assert (=> bs!1233425 (not (= lambda!271457 lambda!271372))))

(assert (=> d!1709498 true))

(assert (=> d!1709498 true))

(assert (=> d!1709498 true))

(assert (=> d!1709498 (= (Exists!2158 lambda!271456) (Exists!2158 lambda!271457))))

(assert (=> d!1709498 true))

(declare-fun _$90!1146 () Unit!153426)

(assert (=> d!1709498 (= (choose!39823 (regOne!30466 r!7292) (regTwo!30466 r!7292) s!2326) _$90!1146)))

(declare-fun m!6356598 () Bool)

(assert (=> bs!1233430 m!6356598))

(declare-fun m!6356600 () Bool)

(assert (=> bs!1233430 m!6356600))

(assert (=> d!1708972 d!1709498))

(assert (=> d!1708972 d!1709394))

(declare-fun bm!380048 () Bool)

(declare-fun call!380054 () Bool)

(declare-fun c!925002 () Bool)

(assert (=> bm!380048 (= call!380054 (nullable!5146 (ite c!925002 (regOne!30467 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 (regOne!30466 r!7292))))))))

(declare-fun b!5321651 () Bool)

(declare-fun e!3306139 () Bool)

(declare-fun e!3306140 () Bool)

(assert (=> b!5321651 (= e!3306139 e!3306140)))

(declare-fun res!2257200 () Bool)

(assert (=> b!5321651 (= res!2257200 call!380054)))

(assert (=> b!5321651 (=> res!2257200 e!3306140)))

(declare-fun d!1709500 () Bool)

(declare-fun res!2257198 () Bool)

(declare-fun e!3306136 () Bool)

(assert (=> d!1709500 (=> res!2257198 e!3306136)))

(assert (=> d!1709500 (= res!2257198 ((_ is EmptyExpr!14977) (regOne!30466 (regOne!30466 r!7292))))))

(assert (=> d!1709500 (= (nullableFct!1496 (regOne!30466 (regOne!30466 r!7292))) e!3306136)))

(declare-fun b!5321652 () Bool)

(declare-fun e!3306137 () Bool)

(assert (=> b!5321652 (= e!3306139 e!3306137)))

(declare-fun res!2257197 () Bool)

(assert (=> b!5321652 (= res!2257197 call!380054)))

(assert (=> b!5321652 (=> (not res!2257197) (not e!3306137))))

(declare-fun b!5321653 () Bool)

(declare-fun e!3306138 () Bool)

(assert (=> b!5321653 (= e!3306138 e!3306139)))

(assert (=> b!5321653 (= c!925002 ((_ is Union!14977) (regOne!30466 (regOne!30466 r!7292))))))

(declare-fun b!5321654 () Bool)

(declare-fun call!380053 () Bool)

(assert (=> b!5321654 (= e!3306140 call!380053)))

(declare-fun b!5321655 () Bool)

(assert (=> b!5321655 (= e!3306137 call!380053)))

(declare-fun bm!380049 () Bool)

(assert (=> bm!380049 (= call!380053 (nullable!5146 (ite c!925002 (regTwo!30467 (regOne!30466 (regOne!30466 r!7292))) (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))))))))

(declare-fun b!5321656 () Bool)

(declare-fun e!3306135 () Bool)

(assert (=> b!5321656 (= e!3306136 e!3306135)))

(declare-fun res!2257199 () Bool)

(assert (=> b!5321656 (=> (not res!2257199) (not e!3306135))))

(assert (=> b!5321656 (= res!2257199 (and (not ((_ is EmptyLang!14977) (regOne!30466 (regOne!30466 r!7292)))) (not ((_ is ElementMatch!14977) (regOne!30466 (regOne!30466 r!7292))))))))

(declare-fun b!5321657 () Bool)

(assert (=> b!5321657 (= e!3306135 e!3306138)))

(declare-fun res!2257201 () Bool)

(assert (=> b!5321657 (=> res!2257201 e!3306138)))

(assert (=> b!5321657 (= res!2257201 ((_ is Star!14977) (regOne!30466 (regOne!30466 r!7292))))))

(assert (= (and d!1709500 (not res!2257198)) b!5321656))

(assert (= (and b!5321656 res!2257199) b!5321657))

(assert (= (and b!5321657 (not res!2257201)) b!5321653))

(assert (= (and b!5321653 c!925002) b!5321651))

(assert (= (and b!5321653 (not c!925002)) b!5321652))

(assert (= (and b!5321651 (not res!2257200)) b!5321654))

(assert (= (and b!5321652 res!2257197) b!5321655))

(assert (= (or b!5321654 b!5321655) bm!380049))

(assert (= (or b!5321651 b!5321652) bm!380048))

(declare-fun m!6356602 () Bool)

(assert (=> bm!380048 m!6356602))

(declare-fun m!6356604 () Bool)

(assert (=> bm!380049 m!6356604))

(assert (=> d!1708976 d!1709500))

(declare-fun d!1709502 () Bool)

(declare-fun c!925003 () Bool)

(assert (=> d!1709502 (= c!925003 (isEmpty!33079 (tail!10503 (t!374443 s!2326))))))

(declare-fun e!3306141 () Bool)

(assert (=> d!1709502 (= (matchZipper!1221 (derivationStepZipper!1218 lt!2171739 (head!11406 (t!374443 s!2326))) (tail!10503 (t!374443 s!2326))) e!3306141)))

(declare-fun b!5321658 () Bool)

(assert (=> b!5321658 (= e!3306141 (nullableZipper!1344 (derivationStepZipper!1218 lt!2171739 (head!11406 (t!374443 s!2326)))))))

(declare-fun b!5321659 () Bool)

(assert (=> b!5321659 (= e!3306141 (matchZipper!1221 (derivationStepZipper!1218 (derivationStepZipper!1218 lt!2171739 (head!11406 (t!374443 s!2326))) (head!11406 (tail!10503 (t!374443 s!2326)))) (tail!10503 (tail!10503 (t!374443 s!2326)))))))

(assert (= (and d!1709502 c!925003) b!5321658))

(assert (= (and d!1709502 (not c!925003)) b!5321659))

(assert (=> d!1709502 m!6355330))

(assert (=> d!1709502 m!6356162))

(assert (=> b!5321658 m!6355328))

(declare-fun m!6356606 () Bool)

(assert (=> b!5321658 m!6356606))

(assert (=> b!5321659 m!6355330))

(assert (=> b!5321659 m!6356166))

(assert (=> b!5321659 m!6355328))

(assert (=> b!5321659 m!6356166))

(declare-fun m!6356608 () Bool)

(assert (=> b!5321659 m!6356608))

(assert (=> b!5321659 m!6355330))

(assert (=> b!5321659 m!6356170))

(assert (=> b!5321659 m!6356608))

(assert (=> b!5321659 m!6356170))

(declare-fun m!6356610 () Bool)

(assert (=> b!5321659 m!6356610))

(assert (=> b!5320077 d!1709502))

(declare-fun bs!1233431 () Bool)

(declare-fun d!1709504 () Bool)

(assert (= bs!1233431 (and d!1709504 d!1709386)))

(declare-fun lambda!271458 () Int)

(assert (=> bs!1233431 (= lambda!271458 lambda!271440)))

(declare-fun bs!1233432 () Bool)

(assert (= bs!1233432 (and d!1709504 d!1709418)))

(assert (=> bs!1233432 (= lambda!271458 lambda!271443)))

(declare-fun bs!1233433 () Bool)

(assert (= bs!1233433 (and d!1709504 d!1709278)))

(assert (=> bs!1233433 (= lambda!271458 lambda!271416)))

(declare-fun bs!1233434 () Bool)

(assert (= bs!1233434 (and d!1709504 d!1708984)))

(assert (=> bs!1233434 (= (= (head!11406 (t!374443 s!2326)) (h!67556 s!2326)) (= lambda!271458 lambda!271364))))

(declare-fun bs!1233435 () Bool)

(assert (= bs!1233435 (and d!1709504 b!5319771)))

(assert (=> bs!1233435 (= (= (head!11406 (t!374443 s!2326)) (h!67556 s!2326)) (= lambda!271458 lambda!271286))))

(assert (=> d!1709504 true))

(assert (=> d!1709504 (= (derivationStepZipper!1218 lt!2171739 (head!11406 (t!374443 s!2326))) (flatMap!704 lt!2171739 lambda!271458))))

(declare-fun bs!1233436 () Bool)

(assert (= bs!1233436 d!1709504))

(declare-fun m!6356612 () Bool)

(assert (=> bs!1233436 m!6356612))

(assert (=> b!5320077 d!1709504))

(assert (=> b!5320077 d!1709280))

(assert (=> b!5320077 d!1709282))

(declare-fun bs!1233437 () Bool)

(declare-fun b!5321663 () Bool)

(assert (= bs!1233437 (and b!5321663 b!5320516)))

(declare-fun lambda!271459 () Int)

(assert (=> bs!1233437 (not (= lambda!271459 lambda!271373))))

(declare-fun bs!1233438 () Bool)

(assert (= bs!1233438 (and b!5321663 b!5321448)))

(assert (=> bs!1233438 (not (= lambda!271459 lambda!271442))))

(declare-fun bs!1233439 () Bool)

(assert (= bs!1233439 (and b!5321663 d!1708972)))

(assert (=> bs!1233439 (not (= lambda!271459 lambda!271361))))

(declare-fun bs!1233440 () Bool)

(assert (= bs!1233440 (and b!5321663 d!1708966)))

(assert (=> bs!1233440 (not (= lambda!271459 lambda!271355))))

(declare-fun bs!1233441 () Bool)

(assert (= bs!1233441 (and b!5321663 b!5321442)))

(assert (=> bs!1233441 (= (and (= (reg!15306 (regOne!30467 r!7292)) (reg!15306 (regTwo!30467 r!7292))) (= (regOne!30467 r!7292) (regTwo!30467 r!7292))) (= lambda!271459 lambda!271441))))

(declare-fun bs!1233442 () Bool)

(assert (= bs!1233442 (and b!5321663 b!5319790)))

(assert (=> bs!1233442 (not (= lambda!271459 lambda!271284))))

(assert (=> bs!1233439 (not (= lambda!271459 lambda!271360))))

(declare-fun bs!1233443 () Bool)

(assert (= bs!1233443 (and b!5321663 d!1709498)))

(assert (=> bs!1233443 (not (= lambda!271459 lambda!271457))))

(declare-fun bs!1233444 () Bool)

(assert (= bs!1233444 (and b!5321663 d!1709434)))

(assert (=> bs!1233444 (not (= lambda!271459 lambda!271447))))

(assert (=> bs!1233442 (not (= lambda!271459 lambda!271285))))

(assert (=> bs!1233443 (not (= lambda!271459 lambda!271456))))

(declare-fun bs!1233445 () Bool)

(assert (= bs!1233445 (and b!5321663 b!5320510)))

(assert (=> bs!1233445 (= (and (= (reg!15306 (regOne!30467 r!7292)) (reg!15306 r!7292)) (= (regOne!30467 r!7292) r!7292)) (= lambda!271459 lambda!271372))))

(assert (=> b!5321663 true))

(assert (=> b!5321663 true))

(declare-fun bs!1233446 () Bool)

(declare-fun b!5321669 () Bool)

(assert (= bs!1233446 (and b!5321669 b!5320516)))

(declare-fun lambda!271460 () Int)

(assert (=> bs!1233446 (= (and (= (regOne!30466 (regOne!30467 r!7292)) (regOne!30466 r!7292)) (= (regTwo!30466 (regOne!30467 r!7292)) (regTwo!30466 r!7292))) (= lambda!271460 lambda!271373))))

(declare-fun bs!1233447 () Bool)

(assert (= bs!1233447 (and b!5321669 b!5321448)))

(assert (=> bs!1233447 (= (and (= (regOne!30466 (regOne!30467 r!7292)) (regOne!30466 (regTwo!30467 r!7292))) (= (regTwo!30466 (regOne!30467 r!7292)) (regTwo!30466 (regTwo!30467 r!7292)))) (= lambda!271460 lambda!271442))))

(declare-fun bs!1233448 () Bool)

(assert (= bs!1233448 (and b!5321669 d!1708966)))

(assert (=> bs!1233448 (not (= lambda!271460 lambda!271355))))

(declare-fun bs!1233449 () Bool)

(assert (= bs!1233449 (and b!5321669 b!5321442)))

(assert (=> bs!1233449 (not (= lambda!271460 lambda!271441))))

(declare-fun bs!1233450 () Bool)

(assert (= bs!1233450 (and b!5321669 b!5319790)))

(assert (=> bs!1233450 (not (= lambda!271460 lambda!271284))))

(declare-fun bs!1233451 () Bool)

(assert (= bs!1233451 (and b!5321669 d!1708972)))

(assert (=> bs!1233451 (not (= lambda!271460 lambda!271360))))

(declare-fun bs!1233452 () Bool)

(assert (= bs!1233452 (and b!5321669 d!1709498)))

(assert (=> bs!1233452 (= (and (= (regOne!30466 (regOne!30467 r!7292)) (regOne!30466 r!7292)) (= (regTwo!30466 (regOne!30467 r!7292)) (regTwo!30466 r!7292))) (= lambda!271460 lambda!271457))))

(declare-fun bs!1233453 () Bool)

(assert (= bs!1233453 (and b!5321669 d!1709434)))

(assert (=> bs!1233453 (not (= lambda!271460 lambda!271447))))

(assert (=> bs!1233450 (= (and (= (regOne!30466 (regOne!30467 r!7292)) (regOne!30466 r!7292)) (= (regTwo!30466 (regOne!30467 r!7292)) (regTwo!30466 r!7292))) (= lambda!271460 lambda!271285))))

(assert (=> bs!1233451 (= (and (= (regOne!30466 (regOne!30467 r!7292)) (regOne!30466 r!7292)) (= (regTwo!30466 (regOne!30467 r!7292)) (regTwo!30466 r!7292))) (= lambda!271460 lambda!271361))))

(declare-fun bs!1233454 () Bool)

(assert (= bs!1233454 (and b!5321669 b!5321663)))

(assert (=> bs!1233454 (not (= lambda!271460 lambda!271459))))

(assert (=> bs!1233452 (not (= lambda!271460 lambda!271456))))

(declare-fun bs!1233455 () Bool)

(assert (= bs!1233455 (and b!5321669 b!5320510)))

(assert (=> bs!1233455 (not (= lambda!271460 lambda!271372))))

(assert (=> b!5321669 true))

(assert (=> b!5321669 true))

(declare-fun b!5321660 () Bool)

(declare-fun c!925005 () Bool)

(assert (=> b!5321660 (= c!925005 ((_ is Union!14977) (regOne!30467 r!7292)))))

(declare-fun e!3306146 () Bool)

(declare-fun e!3306148 () Bool)

(assert (=> b!5321660 (= e!3306146 e!3306148)))

(declare-fun b!5321661 () Bool)

(declare-fun e!3306147 () Bool)

(declare-fun call!380055 () Bool)

(assert (=> b!5321661 (= e!3306147 call!380055)))

(declare-fun b!5321662 () Bool)

(declare-fun e!3306145 () Bool)

(assert (=> b!5321662 (= e!3306148 e!3306145)))

(declare-fun c!925007 () Bool)

(assert (=> b!5321662 (= c!925007 ((_ is Star!14977) (regOne!30467 r!7292)))))

(declare-fun e!3306143 () Bool)

(declare-fun call!380056 () Bool)

(assert (=> b!5321663 (= e!3306143 call!380056)))

(declare-fun b!5321664 () Bool)

(assert (=> b!5321664 (= e!3306146 (= s!2326 (Cons!61108 (c!924467 (regOne!30467 r!7292)) Nil!61108)))))

(declare-fun bm!380050 () Bool)

(assert (=> bm!380050 (= call!380056 (Exists!2158 (ite c!925007 lambda!271459 lambda!271460)))))

(declare-fun b!5321665 () Bool)

(declare-fun e!3306142 () Bool)

(assert (=> b!5321665 (= e!3306147 e!3306142)))

(declare-fun res!2257204 () Bool)

(assert (=> b!5321665 (= res!2257204 (not ((_ is EmptyLang!14977) (regOne!30467 r!7292))))))

(assert (=> b!5321665 (=> (not res!2257204) (not e!3306142))))

(declare-fun b!5321666 () Bool)

(declare-fun res!2257203 () Bool)

(assert (=> b!5321666 (=> res!2257203 e!3306143)))

(assert (=> b!5321666 (= res!2257203 call!380055)))

(assert (=> b!5321666 (= e!3306145 e!3306143)))

(declare-fun b!5321667 () Bool)

(declare-fun c!925006 () Bool)

(assert (=> b!5321667 (= c!925006 ((_ is ElementMatch!14977) (regOne!30467 r!7292)))))

(assert (=> b!5321667 (= e!3306142 e!3306146)))

(declare-fun b!5321668 () Bool)

(declare-fun e!3306144 () Bool)

(assert (=> b!5321668 (= e!3306144 (matchRSpec!2080 (regTwo!30467 (regOne!30467 r!7292)) s!2326))))

(declare-fun d!1709506 () Bool)

(declare-fun c!925004 () Bool)

(assert (=> d!1709506 (= c!925004 ((_ is EmptyExpr!14977) (regOne!30467 r!7292)))))

(assert (=> d!1709506 (= (matchRSpec!2080 (regOne!30467 r!7292) s!2326) e!3306147)))

(assert (=> b!5321669 (= e!3306145 call!380056)))

(declare-fun bm!380051 () Bool)

(assert (=> bm!380051 (= call!380055 (isEmpty!33079 s!2326))))

(declare-fun b!5321670 () Bool)

(assert (=> b!5321670 (= e!3306148 e!3306144)))

(declare-fun res!2257202 () Bool)

(assert (=> b!5321670 (= res!2257202 (matchRSpec!2080 (regOne!30467 (regOne!30467 r!7292)) s!2326))))

(assert (=> b!5321670 (=> res!2257202 e!3306144)))

(assert (= (and d!1709506 c!925004) b!5321661))

(assert (= (and d!1709506 (not c!925004)) b!5321665))

(assert (= (and b!5321665 res!2257204) b!5321667))

(assert (= (and b!5321667 c!925006) b!5321664))

(assert (= (and b!5321667 (not c!925006)) b!5321660))

(assert (= (and b!5321660 c!925005) b!5321670))

(assert (= (and b!5321660 (not c!925005)) b!5321662))

(assert (= (and b!5321670 (not res!2257202)) b!5321668))

(assert (= (and b!5321662 c!925007) b!5321666))

(assert (= (and b!5321662 (not c!925007)) b!5321669))

(assert (= (and b!5321666 (not res!2257203)) b!5321663))

(assert (= (or b!5321663 b!5321669) bm!380050))

(assert (= (or b!5321661 b!5321666) bm!380051))

(declare-fun m!6356614 () Bool)

(assert (=> bm!380050 m!6356614))

(declare-fun m!6356616 () Bool)

(assert (=> b!5321668 m!6356616))

(assert (=> bm!380051 m!6355596))

(declare-fun m!6356618 () Bool)

(assert (=> b!5321670 m!6356618))

(assert (=> b!5320517 d!1709506))

(assert (=> d!1709014 d!1709366))

(assert (=> d!1709014 d!1708954))

(declare-fun d!1709508 () Bool)

(assert (=> d!1709508 (= (isEmpty!33075 (unfocusZipperList!419 zl!343)) ((_ is Nil!61106) (unfocusZipperList!419 zl!343)))))

(assert (=> b!5320297 d!1709508))

(declare-fun b!5321671 () Bool)

(declare-fun res!2257208 () Bool)

(declare-fun e!3306153 () Bool)

(assert (=> b!5321671 (=> (not res!2257208) (not e!3306153))))

(assert (=> b!5321671 (= res!2257208 (isEmpty!33079 (tail!10503 (_1!35479 (get!21018 lt!2171854)))))))

(declare-fun d!1709510 () Bool)

(declare-fun e!3306149 () Bool)

(assert (=> d!1709510 e!3306149))

(declare-fun c!925009 () Bool)

(assert (=> d!1709510 (= c!925009 ((_ is EmptyExpr!14977) (regOne!30466 r!7292)))))

(declare-fun lt!2171976 () Bool)

(declare-fun e!3306155 () Bool)

(assert (=> d!1709510 (= lt!2171976 e!3306155)))

(declare-fun c!925008 () Bool)

(assert (=> d!1709510 (= c!925008 (isEmpty!33079 (_1!35479 (get!21018 lt!2171854))))))

(assert (=> d!1709510 (validRegex!6713 (regOne!30466 r!7292))))

(assert (=> d!1709510 (= (matchR!7162 (regOne!30466 r!7292) (_1!35479 (get!21018 lt!2171854))) lt!2171976)))

(declare-fun bm!380052 () Bool)

(declare-fun call!380057 () Bool)

(assert (=> bm!380052 (= call!380057 (isEmpty!33079 (_1!35479 (get!21018 lt!2171854))))))

(declare-fun b!5321672 () Bool)

(declare-fun res!2257212 () Bool)

(declare-fun e!3306152 () Bool)

(assert (=> b!5321672 (=> res!2257212 e!3306152)))

(assert (=> b!5321672 (= res!2257212 (not ((_ is ElementMatch!14977) (regOne!30466 r!7292))))))

(declare-fun e!3306154 () Bool)

(assert (=> b!5321672 (= e!3306154 e!3306152)))

(declare-fun b!5321673 () Bool)

(assert (=> b!5321673 (= e!3306149 e!3306154)))

(declare-fun c!925010 () Bool)

(assert (=> b!5321673 (= c!925010 ((_ is EmptyLang!14977) (regOne!30466 r!7292)))))

(declare-fun b!5321674 () Bool)

(declare-fun e!3306150 () Bool)

(declare-fun e!3306151 () Bool)

(assert (=> b!5321674 (= e!3306150 e!3306151)))

(declare-fun res!2257207 () Bool)

(assert (=> b!5321674 (=> res!2257207 e!3306151)))

(assert (=> b!5321674 (= res!2257207 call!380057)))

(declare-fun b!5321675 () Bool)

(assert (=> b!5321675 (= e!3306149 (= lt!2171976 call!380057))))

(declare-fun b!5321676 () Bool)

(assert (=> b!5321676 (= e!3306155 (nullable!5146 (regOne!30466 r!7292)))))

(declare-fun b!5321677 () Bool)

(assert (=> b!5321677 (= e!3306155 (matchR!7162 (derivativeStep!4165 (regOne!30466 r!7292) (head!11406 (_1!35479 (get!21018 lt!2171854)))) (tail!10503 (_1!35479 (get!21018 lt!2171854)))))))

(declare-fun b!5321678 () Bool)

(declare-fun res!2257210 () Bool)

(assert (=> b!5321678 (=> (not res!2257210) (not e!3306153))))

(assert (=> b!5321678 (= res!2257210 (not call!380057))))

(declare-fun b!5321679 () Bool)

(assert (=> b!5321679 (= e!3306152 e!3306150)))

(declare-fun res!2257206 () Bool)

(assert (=> b!5321679 (=> (not res!2257206) (not e!3306150))))

(assert (=> b!5321679 (= res!2257206 (not lt!2171976))))

(declare-fun b!5321680 () Bool)

(assert (=> b!5321680 (= e!3306153 (= (head!11406 (_1!35479 (get!21018 lt!2171854))) (c!924467 (regOne!30466 r!7292))))))

(declare-fun b!5321681 () Bool)

(assert (=> b!5321681 (= e!3306151 (not (= (head!11406 (_1!35479 (get!21018 lt!2171854))) (c!924467 (regOne!30466 r!7292)))))))

(declare-fun b!5321682 () Bool)

(declare-fun res!2257211 () Bool)

(assert (=> b!5321682 (=> res!2257211 e!3306151)))

(assert (=> b!5321682 (= res!2257211 (not (isEmpty!33079 (tail!10503 (_1!35479 (get!21018 lt!2171854))))))))

(declare-fun b!5321683 () Bool)

(assert (=> b!5321683 (= e!3306154 (not lt!2171976))))

(declare-fun b!5321684 () Bool)

(declare-fun res!2257209 () Bool)

(assert (=> b!5321684 (=> res!2257209 e!3306152)))

(assert (=> b!5321684 (= res!2257209 e!3306153)))

(declare-fun res!2257205 () Bool)

(assert (=> b!5321684 (=> (not res!2257205) (not e!3306153))))

(assert (=> b!5321684 (= res!2257205 lt!2171976)))

(assert (= (and d!1709510 c!925008) b!5321676))

(assert (= (and d!1709510 (not c!925008)) b!5321677))

(assert (= (and d!1709510 c!925009) b!5321675))

(assert (= (and d!1709510 (not c!925009)) b!5321673))

(assert (= (and b!5321673 c!925010) b!5321683))

(assert (= (and b!5321673 (not c!925010)) b!5321672))

(assert (= (and b!5321672 (not res!2257212)) b!5321684))

(assert (= (and b!5321684 res!2257205) b!5321678))

(assert (= (and b!5321678 res!2257210) b!5321671))

(assert (= (and b!5321671 res!2257208) b!5321680))

(assert (= (and b!5321684 (not res!2257209)) b!5321679))

(assert (= (and b!5321679 res!2257206) b!5321674))

(assert (= (and b!5321674 (not res!2257207)) b!5321682))

(assert (= (and b!5321682 (not res!2257211)) b!5321681))

(assert (= (or b!5321675 b!5321678 b!5321674) bm!380052))

(declare-fun m!6356620 () Bool)

(assert (=> b!5321680 m!6356620))

(declare-fun m!6356622 () Bool)

(assert (=> b!5321682 m!6356622))

(assert (=> b!5321682 m!6356622))

(declare-fun m!6356624 () Bool)

(assert (=> b!5321682 m!6356624))

(assert (=> b!5321671 m!6356622))

(assert (=> b!5321671 m!6356622))

(assert (=> b!5321671 m!6356624))

(assert (=> b!5321676 m!6356394))

(declare-fun m!6356626 () Bool)

(assert (=> d!1709510 m!6356626))

(assert (=> d!1709510 m!6355472))

(assert (=> bm!380052 m!6356626))

(assert (=> b!5321681 m!6356620))

(assert (=> b!5321677 m!6356620))

(assert (=> b!5321677 m!6356620))

(declare-fun m!6356628 () Bool)

(assert (=> b!5321677 m!6356628))

(assert (=> b!5321677 m!6356622))

(assert (=> b!5321677 m!6356628))

(assert (=> b!5321677 m!6356622))

(declare-fun m!6356630 () Bool)

(assert (=> b!5321677 m!6356630))

(assert (=> b!5320382 d!1709510))

(assert (=> b!5320382 d!1709448))

(declare-fun bm!380053 () Bool)

(declare-fun call!380058 () (InoxSet Context!8722))

(assert (=> bm!380053 (= call!380058 (derivationStepZipperDown!425 (h!67554 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))))) (Context!8723 (t!374441 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343))))))))))) (h!67556 s!2326)))))

(declare-fun b!5321685 () Bool)

(declare-fun e!3306156 () (InoxSet Context!8722))

(declare-fun e!3306157 () (InoxSet Context!8722))

(assert (=> b!5321685 (= e!3306156 e!3306157)))

(declare-fun c!925012 () Bool)

(assert (=> b!5321685 (= c!925012 ((_ is Cons!61106) (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))))))))

(declare-fun b!5321686 () Bool)

(assert (=> b!5321686 (= e!3306157 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5321687 () Bool)

(assert (=> b!5321687 (= e!3306156 ((_ map or) call!380058 (derivationStepZipperUp!349 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343))))))))))) (h!67556 s!2326))))))

(declare-fun b!5321688 () Bool)

(assert (=> b!5321688 (= e!3306157 call!380058)))

(declare-fun b!5321689 () Bool)

(declare-fun e!3306158 () Bool)

(assert (=> b!5321689 (= e!3306158 (nullable!5146 (h!67554 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343))))))))))))))

(declare-fun d!1709512 () Bool)

(declare-fun c!925011 () Bool)

(assert (=> d!1709512 (= c!925011 e!3306158)))

(declare-fun res!2257213 () Bool)

(assert (=> d!1709512 (=> (not res!2257213) (not e!3306158))))

(assert (=> d!1709512 (= res!2257213 ((_ is Cons!61106) (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))))))))

(assert (=> d!1709512 (= (derivationStepZipperUp!349 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (Cons!61106 (h!67554 (exprs!4861 (h!67555 zl!343))) (t!374441 (exprs!4861 (h!67555 zl!343)))))))) (h!67556 s!2326)) e!3306156)))

(assert (= (and d!1709512 res!2257213) b!5321689))

(assert (= (and d!1709512 c!925011) b!5321687))

(assert (= (and d!1709512 (not c!925011)) b!5321685))

(assert (= (and b!5321685 c!925012) b!5321688))

(assert (= (and b!5321685 (not c!925012)) b!5321686))

(assert (= (or b!5321687 b!5321688) bm!380053))

(declare-fun m!6356632 () Bool)

(assert (=> bm!380053 m!6356632))

(declare-fun m!6356634 () Bool)

(assert (=> b!5321687 m!6356634))

(declare-fun m!6356636 () Bool)

(assert (=> b!5321689 m!6356636))

(assert (=> b!5320421 d!1709512))

(declare-fun bm!380054 () Bool)

(declare-fun call!380059 () (InoxSet Context!8722))

(assert (=> bm!380054 (= call!380059 (derivationStepZipperDown!425 (h!67554 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343)))))) (Context!8723 (t!374441 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343))))))) (h!67556 s!2326)))))

(declare-fun b!5321690 () Bool)

(declare-fun e!3306159 () (InoxSet Context!8722))

(declare-fun e!3306160 () (InoxSet Context!8722))

(assert (=> b!5321690 (= e!3306159 e!3306160)))

(declare-fun c!925014 () Bool)

(assert (=> b!5321690 (= c!925014 ((_ is Cons!61106) (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343)))))))))

(declare-fun b!5321691 () Bool)

(assert (=> b!5321691 (= e!3306160 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5321692 () Bool)

(assert (=> b!5321692 (= e!3306159 ((_ map or) call!380059 (derivationStepZipperUp!349 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343))))))) (h!67556 s!2326))))))

(declare-fun b!5321693 () Bool)

(assert (=> b!5321693 (= e!3306160 call!380059)))

(declare-fun b!5321694 () Bool)

(declare-fun e!3306161 () Bool)

(assert (=> b!5321694 (= e!3306161 (nullable!5146 (h!67554 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343))))))))))

(declare-fun d!1709514 () Bool)

(declare-fun c!925013 () Bool)

(assert (=> d!1709514 (= c!925013 e!3306161)))

(declare-fun res!2257214 () Bool)

(assert (=> d!1709514 (=> (not res!2257214) (not e!3306161))))

(assert (=> d!1709514 (= res!2257214 ((_ is Cons!61106) (exprs!4861 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343)))))))))

(assert (=> d!1709514 (= (derivationStepZipperUp!349 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343)))) (h!67556 s!2326)) e!3306159)))

(assert (= (and d!1709514 res!2257214) b!5321694))

(assert (= (and d!1709514 c!925013) b!5321692))

(assert (= (and d!1709514 (not c!925013)) b!5321690))

(assert (= (and b!5321690 c!925014) b!5321693))

(assert (= (and b!5321690 (not c!925014)) b!5321691))

(assert (= (or b!5321692 b!5321693) bm!380054))

(declare-fun m!6356638 () Bool)

(assert (=> bm!380054 m!6356638))

(declare-fun m!6356640 () Bool)

(assert (=> b!5321692 m!6356640))

(declare-fun m!6356642 () Bool)

(assert (=> b!5321694 m!6356642))

(assert (=> b!5320426 d!1709514))

(declare-fun d!1709516 () Bool)

(assert (=> d!1709516 (= (nullable!5146 (h!67554 (exprs!4861 lt!2171724))) (nullableFct!1496 (h!67554 (exprs!4861 lt!2171724))))))

(declare-fun bs!1233456 () Bool)

(assert (= bs!1233456 d!1709516))

(declare-fun m!6356644 () Bool)

(assert (=> bs!1233456 m!6356644))

(assert (=> b!5320433 d!1709516))

(declare-fun d!1709518 () Bool)

(assert (=> d!1709518 (= (nullable!5146 (reg!15306 r!7292)) (nullableFct!1496 (reg!15306 r!7292)))))

(declare-fun bs!1233457 () Bool)

(assert (= bs!1233457 d!1709518))

(declare-fun m!6356646 () Bool)

(assert (=> bs!1233457 m!6356646))

(assert (=> b!5320331 d!1709518))

(declare-fun d!1709520 () Bool)

(declare-fun res!2257215 () Bool)

(declare-fun e!3306162 () Bool)

(assert (=> d!1709520 (=> res!2257215 e!3306162)))

(assert (=> d!1709520 (= res!2257215 ((_ is Nil!61106) (t!374441 lt!2171737)))))

(assert (=> d!1709520 (= (forall!14395 (t!374441 lt!2171737) lambda!271287) e!3306162)))

(declare-fun b!5321695 () Bool)

(declare-fun e!3306163 () Bool)

(assert (=> b!5321695 (= e!3306162 e!3306163)))

(declare-fun res!2257216 () Bool)

(assert (=> b!5321695 (=> (not res!2257216) (not e!3306163))))

(assert (=> b!5321695 (= res!2257216 (dynLambda!24155 lambda!271287 (h!67554 (t!374441 lt!2171737))))))

(declare-fun b!5321696 () Bool)

(assert (=> b!5321696 (= e!3306163 (forall!14395 (t!374441 (t!374441 lt!2171737)) lambda!271287))))

(assert (= (and d!1709520 (not res!2257215)) b!5321695))

(assert (= (and b!5321695 res!2257216) b!5321696))

(declare-fun b_lambda!204729 () Bool)

(assert (=> (not b_lambda!204729) (not b!5321695)))

(declare-fun m!6356648 () Bool)

(assert (=> b!5321695 m!6356648))

(declare-fun m!6356650 () Bool)

(assert (=> b!5321696 m!6356650))

(assert (=> b!5320439 d!1709520))

(declare-fun d!1709522 () Bool)

(assert (=> d!1709522 true))

(assert (=> d!1709522 true))

(declare-fun res!2257217 () Bool)

(assert (=> d!1709522 (= (choose!39821 lambda!271285) res!2257217)))

(assert (=> d!1708964 d!1709522))

(declare-fun bm!380055 () Bool)

(declare-fun call!380060 () (InoxSet Context!8722))

(assert (=> bm!380055 (= call!380060 (derivationStepZipperDown!425 (h!67554 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171733))))) (Context!8723 (t!374441 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171733)))))) (h!67556 s!2326)))))

(declare-fun b!5321697 () Bool)

(declare-fun e!3306164 () (InoxSet Context!8722))

(declare-fun e!3306165 () (InoxSet Context!8722))

(assert (=> b!5321697 (= e!3306164 e!3306165)))

(declare-fun c!925016 () Bool)

(assert (=> b!5321697 (= c!925016 ((_ is Cons!61106) (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171733))))))))

(declare-fun b!5321698 () Bool)

(assert (=> b!5321698 (= e!3306165 ((as const (Array Context!8722 Bool)) false))))

(declare-fun b!5321699 () Bool)

(assert (=> b!5321699 (= e!3306164 ((_ map or) call!380060 (derivationStepZipperUp!349 (Context!8723 (t!374441 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171733)))))) (h!67556 s!2326))))))

(declare-fun b!5321700 () Bool)

(assert (=> b!5321700 (= e!3306165 call!380060)))

(declare-fun b!5321701 () Bool)

(declare-fun e!3306166 () Bool)

(assert (=> b!5321701 (= e!3306166 (nullable!5146 (h!67554 (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171733)))))))))

(declare-fun d!1709524 () Bool)

(declare-fun c!925015 () Bool)

(assert (=> d!1709524 (= c!925015 e!3306166)))

(declare-fun res!2257218 () Bool)

(assert (=> d!1709524 (=> (not res!2257218) (not e!3306166))))

(assert (=> d!1709524 (= res!2257218 ((_ is Cons!61106) (exprs!4861 (Context!8723 (t!374441 (exprs!4861 lt!2171733))))))))

(assert (=> d!1709524 (= (derivationStepZipperUp!349 (Context!8723 (t!374441 (exprs!4861 lt!2171733))) (h!67556 s!2326)) e!3306164)))

(assert (= (and d!1709524 res!2257218) b!5321701))

(assert (= (and d!1709524 c!925015) b!5321699))

(assert (= (and d!1709524 (not c!925015)) b!5321697))

(assert (= (and b!5321697 c!925016) b!5321700))

(assert (= (and b!5321697 (not c!925016)) b!5321698))

(assert (= (or b!5321699 b!5321700) bm!380055))

(declare-fun m!6356652 () Bool)

(assert (=> bm!380055 m!6356652))

(declare-fun m!6356654 () Bool)

(assert (=> b!5321699 m!6356654))

(declare-fun m!6356656 () Bool)

(assert (=> b!5321701 m!6356656))

(assert (=> b!5320403 d!1709524))

(declare-fun bs!1233458 () Bool)

(declare-fun d!1709526 () Bool)

(assert (= bs!1233458 (and d!1709526 d!1708952)))

(declare-fun lambda!271461 () Int)

(assert (=> bs!1233458 (= lambda!271461 lambda!271352)))

(declare-fun bs!1233459 () Bool)

(assert (= bs!1233459 (and d!1709526 d!1709490)))

(assert (=> bs!1233459 (= lambda!271461 lambda!271451)))

(declare-fun bs!1233460 () Bool)

(assert (= bs!1233460 (and d!1709526 d!1708950)))

(assert (=> bs!1233460 (= lambda!271461 lambda!271349)))

(declare-fun bs!1233461 () Bool)

(assert (= bs!1233461 (and d!1709526 d!1708944)))

(assert (=> bs!1233461 (= lambda!271461 lambda!271345)))

(declare-fun bs!1233462 () Bool)

(assert (= bs!1233462 (and d!1709526 d!1709306)))

(assert (=> bs!1233462 (= lambda!271461 lambda!271425)))

(declare-fun bs!1233463 () Bool)

(assert (= bs!1233463 (and d!1709526 b!5321270)))

(assert (=> bs!1233463 (not (= lambda!271461 lambda!271438))))

(declare-fun bs!1233464 () Bool)

(assert (= bs!1233464 (and d!1709526 b!5319791)))

(assert (=> bs!1233464 (= lambda!271461 lambda!271287)))

(declare-fun bs!1233465 () Bool)

(assert (= bs!1233465 (and d!1709526 d!1709004)))

(assert (=> bs!1233465 (= lambda!271461 lambda!271367)))

(declare-fun bs!1233466 () Bool)

(assert (= bs!1233466 (and d!1709526 d!1709424)))

(assert (=> bs!1233466 (= lambda!271461 lambda!271444)))

(declare-fun bs!1233467 () Bool)

(assert (= bs!1233467 (and d!1709526 d!1708948)))

(assert (=> bs!1233467 (= lambda!271461 lambda!271346)))

(declare-fun bs!1233468 () Bool)

(assert (= bs!1233468 (and d!1709526 b!5321268)))

(assert (=> bs!1233468 (not (= lambda!271461 lambda!271437))))

(declare-fun b!5321702 () Bool)

(declare-fun e!3306171 () Bool)

(declare-fun e!3306172 () Bool)

(assert (=> b!5321702 (= e!3306171 e!3306172)))

(declare-fun c!925019 () Bool)

(assert (=> b!5321702 (= c!925019 (isEmpty!33075 (t!374441 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun b!5321703 () Bool)

(declare-fun e!3306170 () Bool)

(declare-fun lt!2171977 () Regex!14977)

(assert (=> b!5321703 (= e!3306170 (isConcat!402 lt!2171977))))

(declare-fun b!5321704 () Bool)

(assert (=> b!5321704 (= e!3306170 (= lt!2171977 (head!11407 (t!374441 (exprs!4861 (h!67555 zl!343))))))))

(declare-fun b!5321705 () Bool)

(declare-fun e!3306168 () Regex!14977)

(declare-fun e!3306167 () Regex!14977)

(assert (=> b!5321705 (= e!3306168 e!3306167)))

(declare-fun c!925017 () Bool)

(assert (=> b!5321705 (= c!925017 ((_ is Cons!61106) (t!374441 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun b!5321706 () Bool)

(assert (=> b!5321706 (= e!3306167 EmptyExpr!14977)))

(declare-fun b!5321707 () Bool)

(assert (=> b!5321707 (= e!3306168 (h!67554 (t!374441 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun b!5321708 () Bool)

(assert (=> b!5321708 (= e!3306167 (Concat!23822 (h!67554 (t!374441 (exprs!4861 (h!67555 zl!343)))) (generalisedConcat!646 (t!374441 (t!374441 (exprs!4861 (h!67555 zl!343)))))))))

(declare-fun b!5321709 () Bool)

(assert (=> b!5321709 (= e!3306172 (isEmptyExpr!879 lt!2171977))))

(assert (=> d!1709526 e!3306171))

(declare-fun res!2257219 () Bool)

(assert (=> d!1709526 (=> (not res!2257219) (not e!3306171))))

(assert (=> d!1709526 (= res!2257219 (validRegex!6713 lt!2171977))))

(assert (=> d!1709526 (= lt!2171977 e!3306168)))

(declare-fun c!925020 () Bool)

(declare-fun e!3306169 () Bool)

(assert (=> d!1709526 (= c!925020 e!3306169)))

(declare-fun res!2257220 () Bool)

(assert (=> d!1709526 (=> (not res!2257220) (not e!3306169))))

(assert (=> d!1709526 (= res!2257220 ((_ is Cons!61106) (t!374441 (exprs!4861 (h!67555 zl!343)))))))

(assert (=> d!1709526 (forall!14395 (t!374441 (exprs!4861 (h!67555 zl!343))) lambda!271461)))

(assert (=> d!1709526 (= (generalisedConcat!646 (t!374441 (exprs!4861 (h!67555 zl!343)))) lt!2171977)))

(declare-fun b!5321710 () Bool)

(assert (=> b!5321710 (= e!3306172 e!3306170)))

(declare-fun c!925018 () Bool)

(assert (=> b!5321710 (= c!925018 (isEmpty!33075 (tail!10504 (t!374441 (exprs!4861 (h!67555 zl!343))))))))

(declare-fun b!5321711 () Bool)

(assert (=> b!5321711 (= e!3306169 (isEmpty!33075 (t!374441 (t!374441 (exprs!4861 (h!67555 zl!343))))))))

(assert (= (and d!1709526 res!2257220) b!5321711))

(assert (= (and d!1709526 c!925020) b!5321707))

(assert (= (and d!1709526 (not c!925020)) b!5321705))

(assert (= (and b!5321705 c!925017) b!5321708))

(assert (= (and b!5321705 (not c!925017)) b!5321706))

(assert (= (and d!1709526 res!2257219) b!5321702))

(assert (= (and b!5321702 c!925019) b!5321709))

(assert (= (and b!5321702 (not c!925019)) b!5321710))

(assert (= (and b!5321710 c!925018) b!5321704))

(assert (= (and b!5321710 (not c!925018)) b!5321703))

(declare-fun m!6356658 () Bool)

(assert (=> b!5321709 m!6356658))

(declare-fun m!6356660 () Bool)

(assert (=> b!5321703 m!6356660))

(declare-fun m!6356662 () Bool)

(assert (=> b!5321710 m!6356662))

(assert (=> b!5321710 m!6356662))

(declare-fun m!6356664 () Bool)

(assert (=> b!5321710 m!6356664))

(declare-fun m!6356666 () Bool)

(assert (=> b!5321708 m!6356666))

(declare-fun m!6356668 () Bool)

(assert (=> b!5321711 m!6356668))

(declare-fun m!6356670 () Bool)

(assert (=> d!1709526 m!6356670))

(declare-fun m!6356672 () Bool)

(assert (=> d!1709526 m!6356672))

(assert (=> b!5321702 m!6355010))

(declare-fun m!6356674 () Bool)

(assert (=> b!5321704 m!6356674))

(assert (=> b!5320466 d!1709526))

(declare-fun d!1709528 () Bool)

(declare-fun res!2257225 () Bool)

(declare-fun e!3306177 () Bool)

(assert (=> d!1709528 (=> res!2257225 e!3306177)))

(assert (=> d!1709528 (= res!2257225 ((_ is Nil!61107) lt!2171828))))

(assert (=> d!1709528 (= (noDuplicate!1299 lt!2171828) e!3306177)))

(declare-fun b!5321716 () Bool)

(declare-fun e!3306178 () Bool)

(assert (=> b!5321716 (= e!3306177 e!3306178)))

(declare-fun res!2257226 () Bool)

(assert (=> b!5321716 (=> (not res!2257226) (not e!3306178))))

(declare-fun contains!19710 (List!61231 Context!8722) Bool)

(assert (=> b!5321716 (= res!2257226 (not (contains!19710 (t!374442 lt!2171828) (h!67555 lt!2171828))))))

(declare-fun b!5321717 () Bool)

(assert (=> b!5321717 (= e!3306178 (noDuplicate!1299 (t!374442 lt!2171828)))))

(assert (= (and d!1709528 (not res!2257225)) b!5321716))

(assert (= (and b!5321716 res!2257226) b!5321717))

(declare-fun m!6356676 () Bool)

(assert (=> b!5321716 m!6356676))

(declare-fun m!6356678 () Bool)

(assert (=> b!5321717 m!6356678))

(assert (=> d!1708930 d!1709528))

(declare-fun d!1709530 () Bool)

(declare-fun e!3306186 () Bool)

(assert (=> d!1709530 e!3306186))

(declare-fun res!2257231 () Bool)

(assert (=> d!1709530 (=> (not res!2257231) (not e!3306186))))

(declare-fun res!2257232 () List!61231)

(assert (=> d!1709530 (= res!2257231 (noDuplicate!1299 res!2257232))))

(declare-fun e!3306187 () Bool)

(assert (=> d!1709530 e!3306187))

(assert (=> d!1709530 (= (choose!39819 z!1189) res!2257232)))

(declare-fun b!5321725 () Bool)

(declare-fun e!3306185 () Bool)

(declare-fun tp!1481772 () Bool)

(assert (=> b!5321725 (= e!3306185 tp!1481772)))

(declare-fun b!5321724 () Bool)

(declare-fun tp!1481773 () Bool)

(assert (=> b!5321724 (= e!3306187 (and (inv!80689 (h!67555 res!2257232)) e!3306185 tp!1481773))))

(declare-fun b!5321726 () Bool)

(assert (=> b!5321726 (= e!3306186 (= (content!10895 res!2257232) z!1189))))

(assert (= b!5321724 b!5321725))

(assert (= (and d!1709530 ((_ is Cons!61107) res!2257232)) b!5321724))

(assert (= (and d!1709530 res!2257231) b!5321726))

(declare-fun m!6356680 () Bool)

(assert (=> d!1709530 m!6356680))

(declare-fun m!6356682 () Bool)

(assert (=> b!5321724 m!6356682))

(declare-fun m!6356684 () Bool)

(assert (=> b!5321726 m!6356684))

(assert (=> d!1708930 d!1709530))

(declare-fun b!5321729 () Bool)

(declare-fun res!2257233 () Bool)

(declare-fun e!3306189 () Bool)

(assert (=> b!5321729 (=> (not res!2257233) (not e!3306189))))

(declare-fun lt!2171978 () List!61232)

(assert (=> b!5321729 (= res!2257233 (= (size!39767 lt!2171978) (+ (size!39767 (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108))) (size!39767 (t!374443 s!2326)))))))

(declare-fun d!1709532 () Bool)

(assert (=> d!1709532 e!3306189))

(declare-fun res!2257234 () Bool)

(assert (=> d!1709532 (=> (not res!2257234) (not e!3306189))))

(assert (=> d!1709532 (= res!2257234 (= (content!10897 lt!2171978) ((_ map or) (content!10897 (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108))) (content!10897 (t!374443 s!2326)))))))

(declare-fun e!3306188 () List!61232)

(assert (=> d!1709532 (= lt!2171978 e!3306188)))

(declare-fun c!925021 () Bool)

(assert (=> d!1709532 (= c!925021 ((_ is Nil!61108) (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108))))))

(assert (=> d!1709532 (= (++!13324 (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108)) (t!374443 s!2326)) lt!2171978)))

(declare-fun b!5321728 () Bool)

(assert (=> b!5321728 (= e!3306188 (Cons!61108 (h!67556 (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108))) (++!13324 (t!374443 (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108))) (t!374443 s!2326))))))

(declare-fun b!5321730 () Bool)

(assert (=> b!5321730 (= e!3306189 (or (not (= (t!374443 s!2326) Nil!61108)) (= lt!2171978 (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108)))))))

(declare-fun b!5321727 () Bool)

(assert (=> b!5321727 (= e!3306188 (t!374443 s!2326))))

(assert (= (and d!1709532 c!925021) b!5321727))

(assert (= (and d!1709532 (not c!925021)) b!5321728))

(assert (= (and d!1709532 res!2257234) b!5321729))

(assert (= (and b!5321729 res!2257233) b!5321730))

(declare-fun m!6356686 () Bool)

(assert (=> b!5321729 m!6356686))

(assert (=> b!5321729 m!6355484))

(declare-fun m!6356688 () Bool)

(assert (=> b!5321729 m!6356688))

(declare-fun m!6356690 () Bool)

(assert (=> b!5321729 m!6356690))

(declare-fun m!6356692 () Bool)

(assert (=> d!1709532 m!6356692))

(assert (=> d!1709532 m!6355484))

(declare-fun m!6356694 () Bool)

(assert (=> d!1709532 m!6356694))

(declare-fun m!6356696 () Bool)

(assert (=> d!1709532 m!6356696))

(declare-fun m!6356698 () Bool)

(assert (=> b!5321728 m!6356698))

(assert (=> b!5320378 d!1709532))

(declare-fun b!5321733 () Bool)

(declare-fun res!2257235 () Bool)

(declare-fun e!3306191 () Bool)

(assert (=> b!5321733 (=> (not res!2257235) (not e!3306191))))

(declare-fun lt!2171979 () List!61232)

(assert (=> b!5321733 (= res!2257235 (= (size!39767 lt!2171979) (+ (size!39767 Nil!61108) (size!39767 (Cons!61108 (h!67556 s!2326) Nil!61108)))))))

(declare-fun d!1709534 () Bool)

(assert (=> d!1709534 e!3306191))

(declare-fun res!2257236 () Bool)

(assert (=> d!1709534 (=> (not res!2257236) (not e!3306191))))

(assert (=> d!1709534 (= res!2257236 (= (content!10897 lt!2171979) ((_ map or) (content!10897 Nil!61108) (content!10897 (Cons!61108 (h!67556 s!2326) Nil!61108)))))))

(declare-fun e!3306190 () List!61232)

(assert (=> d!1709534 (= lt!2171979 e!3306190)))

(declare-fun c!925022 () Bool)

(assert (=> d!1709534 (= c!925022 ((_ is Nil!61108) Nil!61108))))

(assert (=> d!1709534 (= (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108)) lt!2171979)))

(declare-fun b!5321732 () Bool)

(assert (=> b!5321732 (= e!3306190 (Cons!61108 (h!67556 Nil!61108) (++!13324 (t!374443 Nil!61108) (Cons!61108 (h!67556 s!2326) Nil!61108))))))

(declare-fun b!5321734 () Bool)

(assert (=> b!5321734 (= e!3306191 (or (not (= (Cons!61108 (h!67556 s!2326) Nil!61108) Nil!61108)) (= lt!2171979 Nil!61108)))))

(declare-fun b!5321731 () Bool)

(assert (=> b!5321731 (= e!3306190 (Cons!61108 (h!67556 s!2326) Nil!61108))))

(assert (= (and d!1709534 c!925022) b!5321731))

(assert (= (and d!1709534 (not c!925022)) b!5321732))

(assert (= (and d!1709534 res!2257236) b!5321733))

(assert (= (and b!5321733 res!2257235) b!5321734))

(declare-fun m!6356700 () Bool)

(assert (=> b!5321733 m!6356700))

(declare-fun m!6356702 () Bool)

(assert (=> b!5321733 m!6356702))

(declare-fun m!6356704 () Bool)

(assert (=> b!5321733 m!6356704))

(declare-fun m!6356706 () Bool)

(assert (=> d!1709534 m!6356706))

(declare-fun m!6356708 () Bool)

(assert (=> d!1709534 m!6356708))

(declare-fun m!6356710 () Bool)

(assert (=> d!1709534 m!6356710))

(declare-fun m!6356712 () Bool)

(assert (=> b!5321732 m!6356712))

(assert (=> b!5320378 d!1709534))

(declare-fun d!1709536 () Bool)

(assert (=> d!1709536 (= (++!13324 (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108)) (t!374443 s!2326)) s!2326)))

(declare-fun lt!2171982 () Unit!153426)

(declare-fun choose!39831 (List!61232 C!30224 List!61232 List!61232) Unit!153426)

(assert (=> d!1709536 (= lt!2171982 (choose!39831 Nil!61108 (h!67556 s!2326) (t!374443 s!2326) s!2326))))

(assert (=> d!1709536 (= (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) (t!374443 s!2326))) s!2326)))

(assert (=> d!1709536 (= (lemmaMoveElementToOtherListKeepsConcatEq!1739 Nil!61108 (h!67556 s!2326) (t!374443 s!2326) s!2326) lt!2171982)))

(declare-fun bs!1233469 () Bool)

(assert (= bs!1233469 d!1709536))

(assert (=> bs!1233469 m!6355484))

(assert (=> bs!1233469 m!6355484))

(assert (=> bs!1233469 m!6355486))

(declare-fun m!6356714 () Bool)

(assert (=> bs!1233469 m!6356714))

(declare-fun m!6356716 () Bool)

(assert (=> bs!1233469 m!6356716))

(assert (=> b!5320378 d!1709536))

(declare-fun b!5321735 () Bool)

(declare-fun e!3306196 () Option!15088)

(declare-fun e!3306193 () Option!15088)

(assert (=> b!5321735 (= e!3306196 e!3306193)))

(declare-fun c!925024 () Bool)

(assert (=> b!5321735 (= c!925024 ((_ is Nil!61108) (t!374443 s!2326)))))

(declare-fun d!1709538 () Bool)

(declare-fun e!3306195 () Bool)

(assert (=> d!1709538 e!3306195))

(declare-fun res!2257240 () Bool)

(assert (=> d!1709538 (=> res!2257240 e!3306195)))

(declare-fun e!3306192 () Bool)

(assert (=> d!1709538 (= res!2257240 e!3306192)))

(declare-fun res!2257237 () Bool)

(assert (=> d!1709538 (=> (not res!2257237) (not e!3306192))))

(declare-fun lt!2171985 () Option!15088)

(assert (=> d!1709538 (= res!2257237 (isDefined!11791 lt!2171985))))

(assert (=> d!1709538 (= lt!2171985 e!3306196)))

(declare-fun c!925023 () Bool)

(declare-fun e!3306194 () Bool)

(assert (=> d!1709538 (= c!925023 e!3306194)))

(declare-fun res!2257238 () Bool)

(assert (=> d!1709538 (=> (not res!2257238) (not e!3306194))))

(assert (=> d!1709538 (= res!2257238 (matchR!7162 (regOne!30466 r!7292) (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108))))))

(assert (=> d!1709538 (validRegex!6713 (regOne!30466 r!7292))))

(assert (=> d!1709538 (= (findConcatSeparation!1502 (regOne!30466 r!7292) (regTwo!30466 r!7292) (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108)) (t!374443 s!2326) s!2326) lt!2171985)))

(declare-fun b!5321736 () Bool)

(assert (=> b!5321736 (= e!3306193 None!15087)))

(declare-fun b!5321737 () Bool)

(assert (=> b!5321737 (= e!3306196 (Some!15087 (tuple2!64353 (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108)) (t!374443 s!2326))))))

(declare-fun b!5321738 () Bool)

(declare-fun res!2257239 () Bool)

(assert (=> b!5321738 (=> (not res!2257239) (not e!3306192))))

(assert (=> b!5321738 (= res!2257239 (matchR!7162 (regTwo!30466 r!7292) (_2!35479 (get!21018 lt!2171985))))))

(declare-fun b!5321739 () Bool)

(declare-fun lt!2171984 () Unit!153426)

(declare-fun lt!2171983 () Unit!153426)

(assert (=> b!5321739 (= lt!2171984 lt!2171983)))

(assert (=> b!5321739 (= (++!13324 (++!13324 (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108)) (Cons!61108 (h!67556 (t!374443 s!2326)) Nil!61108)) (t!374443 (t!374443 s!2326))) s!2326)))

(assert (=> b!5321739 (= lt!2171983 (lemmaMoveElementToOtherListKeepsConcatEq!1739 (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108)) (h!67556 (t!374443 s!2326)) (t!374443 (t!374443 s!2326)) s!2326))))

(assert (=> b!5321739 (= e!3306193 (findConcatSeparation!1502 (regOne!30466 r!7292) (regTwo!30466 r!7292) (++!13324 (++!13324 Nil!61108 (Cons!61108 (h!67556 s!2326) Nil!61108)) (Cons!61108 (h!67556 (t!374443 s!2326)) Nil!61108)) (t!374443 (t!374443 s!2326)) s!2326))))

(declare-fun b!5321740 () Bool)

(assert (=> b!5321740 (= e!3306194 (matchR!7162 (regTwo!30466 r!7292) (t!374443 s!2326)))))

(declare-fun b!5321741 () Bool)

(assert (=> b!5321741 (= e!3306195 (not (isDefined!11791 lt!2171985)))))

(declare-fun b!5321742 () Bool)

(assert (=> b!5321742 (= e!3306192 (= (++!13324 (_1!35479 (get!21018 lt!2171985)) (_2!35479 (get!21018 lt!2171985))) s!2326))))

(declare-fun b!5321743 () Bool)

(declare-fun res!2257241 () Bool)

(assert (=> b!5321743 (=> (not res!2257241) (not e!3306192))))

(assert (=> b!5321743 (= res!2257241 (matchR!7162 (regOne!30466 r!7292) (_1!35479 (get!21018 lt!2171985))))))

(assert (= (and d!1709538 res!2257238) b!5321740))

(assert (= (and d!1709538 c!925023) b!5321737))

(assert (= (and d!1709538 (not c!925023)) b!5321735))

(assert (= (and b!5321735 c!925024) b!5321736))

(assert (= (and b!5321735 (not c!925024)) b!5321739))

(assert (= (and d!1709538 res!2257237) b!5321743))

(assert (= (and b!5321743 res!2257241) b!5321738))

(assert (= (and b!5321738 res!2257239) b!5321742))

(assert (= (and d!1709538 (not res!2257240)) b!5321741))

(declare-fun m!6356718 () Bool)

(assert (=> b!5321742 m!6356718))

(declare-fun m!6356720 () Bool)

(assert (=> b!5321742 m!6356720))

(declare-fun m!6356722 () Bool)

(assert (=> b!5321741 m!6356722))

(assert (=> b!5321739 m!6355484))

(declare-fun m!6356724 () Bool)

(assert (=> b!5321739 m!6356724))

(assert (=> b!5321739 m!6356724))

(declare-fun m!6356726 () Bool)

(assert (=> b!5321739 m!6356726))

(assert (=> b!5321739 m!6355484))

(declare-fun m!6356728 () Bool)

(assert (=> b!5321739 m!6356728))

(assert (=> b!5321739 m!6356724))

(declare-fun m!6356730 () Bool)

(assert (=> b!5321739 m!6356730))

(assert (=> b!5321743 m!6356718))

(declare-fun m!6356732 () Bool)

(assert (=> b!5321743 m!6356732))

(declare-fun m!6356734 () Bool)

(assert (=> b!5321740 m!6356734))

(assert (=> b!5321738 m!6356718))

(declare-fun m!6356736 () Bool)

(assert (=> b!5321738 m!6356736))

(assert (=> d!1709538 m!6356722))

(assert (=> d!1709538 m!6355484))

(declare-fun m!6356738 () Bool)

(assert (=> d!1709538 m!6356738))

(assert (=> d!1709538 m!6355472))

(assert (=> b!5320378 d!1709538))

(declare-fun d!1709540 () Bool)

(assert (=> d!1709540 (= ($colon$colon!1394 (exprs!4861 (Context!8723 lt!2171729)) (ite (or c!924617 c!924619) (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 r!7292)))) (Cons!61106 (ite (or c!924617 c!924619) (regTwo!30466 (regOne!30466 (regOne!30466 r!7292))) (regOne!30466 (regOne!30466 r!7292))) (exprs!4861 (Context!8723 lt!2171729))))))

(assert (=> bm!379793 d!1709540))

(declare-fun bs!1233470 () Bool)

(declare-fun d!1709542 () Bool)

(assert (= bs!1233470 (and d!1709542 d!1708952)))

(declare-fun lambda!271462 () Int)

(assert (=> bs!1233470 (= lambda!271462 lambda!271352)))

(declare-fun bs!1233471 () Bool)

(assert (= bs!1233471 (and d!1709542 d!1709490)))

(assert (=> bs!1233471 (= lambda!271462 lambda!271451)))

(declare-fun bs!1233472 () Bool)

(assert (= bs!1233472 (and d!1709542 d!1708950)))

(assert (=> bs!1233472 (= lambda!271462 lambda!271349)))

(declare-fun bs!1233473 () Bool)

(assert (= bs!1233473 (and d!1709542 d!1708944)))

(assert (=> bs!1233473 (= lambda!271462 lambda!271345)))

(declare-fun bs!1233474 () Bool)

(assert (= bs!1233474 (and d!1709542 d!1709306)))

(assert (=> bs!1233474 (= lambda!271462 lambda!271425)))

(declare-fun bs!1233475 () Bool)

(assert (= bs!1233475 (and d!1709542 b!5321270)))

(assert (=> bs!1233475 (not (= lambda!271462 lambda!271438))))

(declare-fun bs!1233476 () Bool)

(assert (= bs!1233476 (and d!1709542 d!1709526)))

(assert (=> bs!1233476 (= lambda!271462 lambda!271461)))

(declare-fun bs!1233477 () Bool)

(assert (= bs!1233477 (and d!1709542 b!5319791)))

(assert (=> bs!1233477 (= lambda!271462 lambda!271287)))

(declare-fun bs!1233478 () Bool)

(assert (= bs!1233478 (and d!1709542 d!1709004)))

(assert (=> bs!1233478 (= lambda!271462 lambda!271367)))

(declare-fun bs!1233479 () Bool)

(assert (= bs!1233479 (and d!1709542 d!1709424)))

(assert (=> bs!1233479 (= lambda!271462 lambda!271444)))

(declare-fun bs!1233480 () Bool)

(assert (= bs!1233480 (and d!1709542 d!1708948)))

(assert (=> bs!1233480 (= lambda!271462 lambda!271346)))

(declare-fun bs!1233481 () Bool)

(assert (= bs!1233481 (and d!1709542 b!5321268)))

(assert (=> bs!1233481 (not (= lambda!271462 lambda!271437))))

(assert (=> d!1709542 (= (inv!80689 setElem!34249) (forall!14395 (exprs!4861 setElem!34249) lambda!271462))))

(declare-fun bs!1233482 () Bool)

(assert (= bs!1233482 d!1709542))

(declare-fun m!6356740 () Bool)

(assert (=> bs!1233482 m!6356740))

(assert (=> setNonEmpty!34249 d!1709542))

(declare-fun d!1709544 () Bool)

(assert (=> d!1709544 (= (head!11407 (exprs!4861 (h!67555 zl!343))) (h!67554 (exprs!4861 (h!67555 zl!343))))))

(assert (=> b!5320462 d!1709544))

(declare-fun bs!1233483 () Bool)

(declare-fun b!5321744 () Bool)

(assert (= bs!1233483 (and b!5321744 d!1708952)))

(declare-fun lambda!271463 () Int)

(assert (=> bs!1233483 (not (= lambda!271463 lambda!271352))))

(declare-fun bs!1233484 () Bool)

(assert (= bs!1233484 (and b!5321744 d!1709542)))

(assert (=> bs!1233484 (not (= lambda!271463 lambda!271462))))

(declare-fun bs!1233485 () Bool)

(assert (= bs!1233485 (and b!5321744 d!1709490)))

(assert (=> bs!1233485 (not (= lambda!271463 lambda!271451))))

(declare-fun bs!1233486 () Bool)

(assert (= bs!1233486 (and b!5321744 d!1708950)))

(assert (=> bs!1233486 (not (= lambda!271463 lambda!271349))))

(declare-fun bs!1233487 () Bool)

(assert (= bs!1233487 (and b!5321744 d!1708944)))

(assert (=> bs!1233487 (not (= lambda!271463 lambda!271345))))

(declare-fun bs!1233488 () Bool)

(assert (= bs!1233488 (and b!5321744 d!1709306)))

(assert (=> bs!1233488 (not (= lambda!271463 lambda!271425))))

(declare-fun bs!1233489 () Bool)

(assert (= bs!1233489 (and b!5321744 b!5321270)))

(declare-fun lt!2171988 () Int)

(assert (=> bs!1233489 (= (= lt!2171988 lt!2171956) (= lambda!271463 lambda!271438))))

(declare-fun bs!1233490 () Bool)

(assert (= bs!1233490 (and b!5321744 d!1709526)))

(assert (=> bs!1233490 (not (= lambda!271463 lambda!271461))))

(declare-fun bs!1233491 () Bool)

(assert (= bs!1233491 (and b!5321744 b!5319791)))

(assert (=> bs!1233491 (not (= lambda!271463 lambda!271287))))

(declare-fun bs!1233492 () Bool)

(assert (= bs!1233492 (and b!5321744 d!1709004)))

(assert (=> bs!1233492 (not (= lambda!271463 lambda!271367))))

(declare-fun bs!1233493 () Bool)

(assert (= bs!1233493 (and b!5321744 d!1709424)))

(assert (=> bs!1233493 (not (= lambda!271463 lambda!271444))))

(declare-fun bs!1233494 () Bool)

(assert (= bs!1233494 (and b!5321744 d!1708948)))

(assert (=> bs!1233494 (not (= lambda!271463 lambda!271346))))

(declare-fun bs!1233495 () Bool)

(assert (= bs!1233495 (and b!5321744 b!5321268)))

(assert (=> bs!1233495 (= (= lt!2171988 lt!2171955) (= lambda!271463 lambda!271437))))

(assert (=> b!5321744 true))

(declare-fun bs!1233496 () Bool)

(declare-fun b!5321746 () Bool)

(assert (= bs!1233496 (and b!5321746 d!1708952)))

(declare-fun lambda!271464 () Int)

(assert (=> bs!1233496 (not (= lambda!271464 lambda!271352))))

(declare-fun bs!1233497 () Bool)

(assert (= bs!1233497 (and b!5321746 d!1709542)))

(assert (=> bs!1233497 (not (= lambda!271464 lambda!271462))))

(declare-fun bs!1233498 () Bool)

(assert (= bs!1233498 (and b!5321746 b!5321744)))

(declare-fun lt!2171989 () Int)

(assert (=> bs!1233498 (= (= lt!2171989 lt!2171988) (= lambda!271464 lambda!271463))))

(declare-fun bs!1233499 () Bool)

(assert (= bs!1233499 (and b!5321746 d!1709490)))

(assert (=> bs!1233499 (not (= lambda!271464 lambda!271451))))

(declare-fun bs!1233500 () Bool)

(assert (= bs!1233500 (and b!5321746 d!1708950)))

(assert (=> bs!1233500 (not (= lambda!271464 lambda!271349))))

(declare-fun bs!1233501 () Bool)

(assert (= bs!1233501 (and b!5321746 d!1708944)))

(assert (=> bs!1233501 (not (= lambda!271464 lambda!271345))))

(declare-fun bs!1233502 () Bool)

(assert (= bs!1233502 (and b!5321746 d!1709306)))

(assert (=> bs!1233502 (not (= lambda!271464 lambda!271425))))

(declare-fun bs!1233503 () Bool)

(assert (= bs!1233503 (and b!5321746 b!5321270)))

(assert (=> bs!1233503 (= (= lt!2171989 lt!2171956) (= lambda!271464 lambda!271438))))

(declare-fun bs!1233504 () Bool)

(assert (= bs!1233504 (and b!5321746 d!1709526)))

(assert (=> bs!1233504 (not (= lambda!271464 lambda!271461))))

(declare-fun bs!1233505 () Bool)

(assert (= bs!1233505 (and b!5321746 b!5319791)))

(assert (=> bs!1233505 (not (= lambda!271464 lambda!271287))))

(declare-fun bs!1233506 () Bool)

(assert (= bs!1233506 (and b!5321746 d!1709004)))

(assert (=> bs!1233506 (not (= lambda!271464 lambda!271367))))

(declare-fun bs!1233507 () Bool)

(assert (= bs!1233507 (and b!5321746 d!1709424)))

(assert (=> bs!1233507 (not (= lambda!271464 lambda!271444))))

(declare-fun bs!1233508 () Bool)

(assert (= bs!1233508 (and b!5321746 d!1708948)))

(assert (=> bs!1233508 (not (= lambda!271464 lambda!271346))))

(declare-fun bs!1233509 () Bool)

(assert (= bs!1233509 (and b!5321746 b!5321268)))

(assert (=> bs!1233509 (= (= lt!2171989 lt!2171955) (= lambda!271464 lambda!271437))))

(assert (=> b!5321746 true))

(declare-fun d!1709546 () Bool)

(declare-fun e!3306198 () Bool)

(assert (=> d!1709546 e!3306198))

(declare-fun res!2257242 () Bool)

(assert (=> d!1709546 (=> (not res!2257242) (not e!3306198))))

(assert (=> d!1709546 (= res!2257242 (>= lt!2171989 0))))

(declare-fun e!3306197 () Int)

(assert (=> d!1709546 (= lt!2171989 e!3306197)))

(declare-fun c!925025 () Bool)

(assert (=> d!1709546 (= c!925025 ((_ is Cons!61106) (exprs!4861 (h!67555 zl!343))))))

(assert (=> d!1709546 (= (contextDepth!50 (h!67555 zl!343)) lt!2171989)))

(assert (=> b!5321744 (= e!3306197 lt!2171988)))

(assert (=> b!5321744 (= lt!2171988 (maxBigInt!0 (regexDepth!159 (h!67554 (exprs!4861 (h!67555 zl!343)))) (contextDepth!50 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343)))))))))

(declare-fun lt!2171987 () Unit!153426)

(assert (=> b!5321744 (= lt!2171987 (lemmaForallRegexDepthBiggerThanTransitive!8 (t!374441 (exprs!4861 (h!67555 zl!343))) lt!2171988 (contextDepth!50 (Context!8723 (t!374441 (exprs!4861 (h!67555 zl!343)))))))))

(assert (=> b!5321744 (forall!14395 (t!374441 (exprs!4861 (h!67555 zl!343))) lambda!271463)))

(declare-fun lt!2171986 () Unit!153426)

(assert (=> b!5321744 (= lt!2171986 lt!2171987)))

(declare-fun b!5321745 () Bool)

(assert (=> b!5321745 (= e!3306197 0)))

(assert (=> b!5321746 (= e!3306198 (forall!14395 (exprs!4861 (h!67555 zl!343)) lambda!271464))))

(assert (= (and d!1709546 c!925025) b!5321744))

(assert (= (and d!1709546 (not c!925025)) b!5321745))

(assert (= (and d!1709546 res!2257242) b!5321746))

(declare-fun m!6356742 () Bool)

(assert (=> b!5321744 m!6356742))

(declare-fun m!6356744 () Bool)

(assert (=> b!5321744 m!6356744))

(assert (=> b!5321744 m!6356742))

(declare-fun m!6356746 () Bool)

(assert (=> b!5321744 m!6356746))

(assert (=> b!5321744 m!6356742))

(declare-fun m!6356748 () Bool)

(assert (=> b!5321744 m!6356748))

(declare-fun m!6356750 () Bool)

(assert (=> b!5321744 m!6356750))

(assert (=> b!5321744 m!6356746))

(declare-fun m!6356752 () Bool)

(assert (=> b!5321746 m!6356752))

(assert (=> b!5320176 d!1709546))

(declare-fun bs!1233510 () Bool)

(declare-fun d!1709548 () Bool)

(assert (= bs!1233510 (and d!1709548 b!5320159)))

(declare-fun lambda!271465 () Int)

(assert (=> bs!1233510 (not (= lambda!271465 lambda!271339))))

(declare-fun bs!1233511 () Bool)

(assert (= bs!1233511 (and d!1709548 b!5321224)))

(assert (=> bs!1233511 (not (= lambda!271465 lambda!271432))))

(declare-fun bs!1233512 () Bool)

(assert (= bs!1233512 (and d!1709548 b!5321221)))

(assert (=> bs!1233512 (not (= lambda!271465 lambda!271431))))

(declare-fun bs!1233513 () Bool)

(assert (= bs!1233513 (and d!1709548 b!5320178)))

(assert (=> bs!1233513 (not (= lambda!271465 lambda!271342))))

(declare-fun bs!1233514 () Bool)

(assert (= bs!1233514 (and d!1709548 d!1709474)))

(assert (=> bs!1233514 (not (= lambda!271465 lambda!271449))))

(declare-fun bs!1233515 () Bool)

(assert (= bs!1233515 (and d!1709548 d!1709314)))

(assert (=> bs!1233515 (= (and (= lt!2171821 lt!2171816) (= lambda!271340 lambda!271337)) (= lambda!271465 lambda!271429))))

(declare-fun bs!1233516 () Bool)

(assert (= bs!1233516 (and d!1709548 b!5320157)))

(assert (=> bs!1233516 (not (= lambda!271465 lambda!271338))))

(declare-fun bs!1233517 () Bool)

(assert (= bs!1233517 (and d!1709548 b!5320176)))

(assert (=> bs!1233517 (not (= lambda!271465 lambda!271341))))

(declare-fun bs!1233518 () Bool)

(assert (= bs!1233518 (and d!1709548 d!1709286)))

(assert (=> bs!1233518 (not (= lambda!271465 lambda!271421))))

(declare-fun bs!1233519 () Bool)

(assert (= bs!1233519 (and d!1709548 d!1709484)))

(assert (=> bs!1233519 (not (= lambda!271465 lambda!271450))))

(declare-fun bs!1233520 () Bool)

(assert (= bs!1233520 (and d!1709548 d!1709354)))

(assert (=> bs!1233520 (not (= lambda!271465 lambda!271439))))

(declare-fun bs!1233521 () Bool)

(assert (= bs!1233521 (and d!1709548 d!1709438)))

(assert (=> bs!1233521 (not (= lambda!271465 lambda!271448))))

(assert (=> d!1709548 true))

(assert (=> d!1709548 true))

(assert (=> d!1709548 (< (dynLambda!24157 order!27079 lambda!271340) (dynLambda!24158 order!27081 lambda!271465))))

(assert (=> d!1709548 (forall!14397 (t!374442 zl!343) lambda!271465)))

(declare-fun lt!2171990 () Unit!153426)

(assert (=> d!1709548 (= lt!2171990 (choose!39828 (t!374442 zl!343) lt!2171821 (zipperDepth!86 (t!374442 zl!343)) lambda!271340))))

(assert (=> d!1709548 (>= lt!2171821 (zipperDepth!86 (t!374442 zl!343)))))

(assert (=> d!1709548 (= (lemmaForallContextDepthBiggerThanTransitive!44 (t!374442 zl!343) lt!2171821 (zipperDepth!86 (t!374442 zl!343)) lambda!271340) lt!2171990)))

(declare-fun bs!1233522 () Bool)

(assert (= bs!1233522 d!1709548))

(declare-fun m!6356754 () Bool)

(assert (=> bs!1233522 m!6356754))

(assert (=> bs!1233522 m!6355372))

(declare-fun m!6356756 () Bool)

(assert (=> bs!1233522 m!6356756))

(assert (=> b!5320176 d!1709548))

(declare-fun d!1709550 () Bool)

(assert (=> d!1709550 (= (maxBigInt!0 (contextDepth!50 (h!67555 zl!343)) (zipperDepth!86 (t!374442 zl!343))) (ite (>= (contextDepth!50 (h!67555 zl!343)) (zipperDepth!86 (t!374442 zl!343))) (contextDepth!50 (h!67555 zl!343)) (zipperDepth!86 (t!374442 zl!343))))))

(assert (=> b!5320176 d!1709550))

(declare-fun bs!1233523 () Bool)

(declare-fun b!5321747 () Bool)

(assert (= bs!1233523 (and b!5321747 b!5320157)))

(declare-fun lambda!271466 () Int)

(assert (=> bs!1233523 (= lambda!271466 lambda!271337)))

(declare-fun bs!1233524 () Bool)

(assert (= bs!1233524 (and b!5321747 b!5320176)))

(assert (=> bs!1233524 (= lambda!271466 lambda!271340)))

(declare-fun bs!1233525 () Bool)

(assert (= bs!1233525 (and b!5321747 b!5321221)))

(assert (=> bs!1233525 (= lambda!271466 lambda!271430)))

(declare-fun bs!1233526 () Bool)

(assert (= bs!1233526 (and b!5321747 b!5320159)))

(declare-fun lt!2171993 () Int)

(declare-fun lambda!271467 () Int)

(assert (=> bs!1233526 (= (= lt!2171993 lt!2171817) (= lambda!271467 lambda!271339))))

(declare-fun bs!1233527 () Bool)

(assert (= bs!1233527 (and b!5321747 b!5321224)))

(assert (=> bs!1233527 (= (= lt!2171993 lt!2171944) (= lambda!271467 lambda!271432))))

(assert (=> bs!1233525 (= (= lt!2171993 lt!2171943) (= lambda!271467 lambda!271431))))

(declare-fun bs!1233528 () Bool)

(assert (= bs!1233528 (and b!5321747 b!5320178)))

(assert (=> bs!1233528 (= (= lt!2171993 lt!2171822) (= lambda!271467 lambda!271342))))

(declare-fun bs!1233529 () Bool)

(assert (= bs!1233529 (and b!5321747 d!1709474)))

(assert (=> bs!1233529 (not (= lambda!271467 lambda!271449))))

(declare-fun bs!1233530 () Bool)

(assert (= bs!1233530 (and b!5321747 d!1709548)))

(assert (=> bs!1233530 (not (= lambda!271467 lambda!271465))))

(declare-fun bs!1233531 () Bool)

(assert (= bs!1233531 (and b!5321747 d!1709314)))

(assert (=> bs!1233531 (not (= lambda!271467 lambda!271429))))

(assert (=> bs!1233523 (= (= lt!2171993 lt!2171816) (= lambda!271467 lambda!271338))))

(assert (=> bs!1233524 (= (= lt!2171993 lt!2171821) (= lambda!271467 lambda!271341))))

(declare-fun bs!1233532 () Bool)

(assert (= bs!1233532 (and b!5321747 d!1709286)))

(assert (=> bs!1233532 (not (= lambda!271467 lambda!271421))))

(declare-fun bs!1233533 () Bool)

(assert (= bs!1233533 (and b!5321747 d!1709484)))

(assert (=> bs!1233533 (not (= lambda!271467 lambda!271450))))

(declare-fun bs!1233534 () Bool)

(assert (= bs!1233534 (and b!5321747 d!1709354)))

(assert (=> bs!1233534 (not (= lambda!271467 lambda!271439))))

(declare-fun bs!1233535 () Bool)

(assert (= bs!1233535 (and b!5321747 d!1709438)))

(assert (=> bs!1233535 (not (= lambda!271467 lambda!271448))))

(assert (=> b!5321747 true))

(declare-fun bs!1233536 () Bool)

(declare-fun b!5321749 () Bool)

(assert (= bs!1233536 (and b!5321749 b!5320159)))

(declare-fun lt!2171994 () Int)

(declare-fun lambda!271468 () Int)

(assert (=> bs!1233536 (= (= lt!2171994 lt!2171817) (= lambda!271468 lambda!271339))))

(declare-fun bs!1233537 () Bool)

(assert (= bs!1233537 (and b!5321749 b!5321224)))

(assert (=> bs!1233537 (= (= lt!2171994 lt!2171944) (= lambda!271468 lambda!271432))))

(declare-fun bs!1233538 () Bool)

(assert (= bs!1233538 (and b!5321749 b!5321221)))

(assert (=> bs!1233538 (= (= lt!2171994 lt!2171943) (= lambda!271468 lambda!271431))))

(declare-fun bs!1233539 () Bool)

(assert (= bs!1233539 (and b!5321749 b!5320178)))

(assert (=> bs!1233539 (= (= lt!2171994 lt!2171822) (= lambda!271468 lambda!271342))))

(declare-fun bs!1233540 () Bool)

(assert (= bs!1233540 (and b!5321749 d!1709474)))

(assert (=> bs!1233540 (not (= lambda!271468 lambda!271449))))

(declare-fun bs!1233541 () Bool)

(assert (= bs!1233541 (and b!5321749 d!1709548)))

(assert (=> bs!1233541 (not (= lambda!271468 lambda!271465))))

(declare-fun bs!1233542 () Bool)

(assert (= bs!1233542 (and b!5321749 d!1709314)))

(assert (=> bs!1233542 (not (= lambda!271468 lambda!271429))))

(declare-fun bs!1233543 () Bool)

(assert (= bs!1233543 (and b!5321749 b!5320157)))

(assert (=> bs!1233543 (= (= lt!2171994 lt!2171816) (= lambda!271468 lambda!271338))))

(declare-fun bs!1233544 () Bool)

(assert (= bs!1233544 (and b!5321749 d!1709286)))

(assert (=> bs!1233544 (not (= lambda!271468 lambda!271421))))

(declare-fun bs!1233545 () Bool)

(assert (= bs!1233545 (and b!5321749 d!1709484)))

(assert (=> bs!1233545 (not (= lambda!271468 lambda!271450))))

(declare-fun bs!1233546 () Bool)

(assert (= bs!1233546 (and b!5321749 b!5321747)))

(assert (=> bs!1233546 (= (= lt!2171994 lt!2171993) (= lambda!271468 lambda!271467))))

(declare-fun bs!1233547 () Bool)

(assert (= bs!1233547 (and b!5321749 b!5320176)))

(assert (=> bs!1233547 (= (= lt!2171994 lt!2171821) (= lambda!271468 lambda!271341))))

(declare-fun bs!1233548 () Bool)

(assert (= bs!1233548 (and b!5321749 d!1709354)))

(assert (=> bs!1233548 (not (= lambda!271468 lambda!271439))))

(declare-fun bs!1233549 () Bool)

(assert (= bs!1233549 (and b!5321749 d!1709438)))

(assert (=> bs!1233549 (not (= lambda!271468 lambda!271448))))

(assert (=> b!5321749 true))

(declare-fun d!1709552 () Bool)

(declare-fun e!3306199 () Bool)

(assert (=> d!1709552 e!3306199))

(declare-fun res!2257243 () Bool)

(assert (=> d!1709552 (=> (not res!2257243) (not e!3306199))))

(assert (=> d!1709552 (= res!2257243 (>= lt!2171994 0))))

(declare-fun e!3306200 () Int)

(assert (=> d!1709552 (= lt!2171994 e!3306200)))

(declare-fun c!925026 () Bool)

(assert (=> d!1709552 (= c!925026 ((_ is Cons!61107) (t!374442 zl!343)))))

(assert (=> d!1709552 (= (zipperDepth!86 (t!374442 zl!343)) lt!2171994)))

(assert (=> b!5321747 (= e!3306200 lt!2171993)))

(assert (=> b!5321747 (= lt!2171993 (maxBigInt!0 (contextDepth!50 (h!67555 (t!374442 zl!343))) (zipperDepth!86 (t!374442 (t!374442 zl!343)))))))

(declare-fun lt!2171991 () Unit!153426)

(assert (=> b!5321747 (= lt!2171991 (lemmaForallContextDepthBiggerThanTransitive!44 (t!374442 (t!374442 zl!343)) lt!2171993 (zipperDepth!86 (t!374442 (t!374442 zl!343))) lambda!271466))))

(assert (=> b!5321747 (forall!14397 (t!374442 (t!374442 zl!343)) lambda!271467)))

(declare-fun lt!2171992 () Unit!153426)

(assert (=> b!5321747 (= lt!2171992 lt!2171991)))

(declare-fun b!5321748 () Bool)

(assert (=> b!5321748 (= e!3306200 0)))

(assert (=> b!5321749 (= e!3306199 (forall!14397 (t!374442 zl!343) lambda!271468))))

(assert (= (and d!1709552 c!925026) b!5321747))

(assert (= (and d!1709552 (not c!925026)) b!5321748))

(assert (= (and d!1709552 res!2257243) b!5321749))

(declare-fun m!6356758 () Bool)

(assert (=> b!5321747 m!6356758))

(declare-fun m!6356760 () Bool)

(assert (=> b!5321747 m!6356760))

(assert (=> b!5321747 m!6356758))

(declare-fun m!6356762 () Bool)

(assert (=> b!5321747 m!6356762))

(assert (=> b!5321747 m!6356758))

(declare-fun m!6356764 () Bool)

(assert (=> b!5321747 m!6356764))

(declare-fun m!6356766 () Bool)

(assert (=> b!5321747 m!6356766))

(assert (=> b!5321747 m!6356762))

(declare-fun m!6356768 () Bool)

(assert (=> b!5321749 m!6356768))

(assert (=> b!5320176 d!1709552))

(declare-fun d!1709554 () Bool)

(declare-fun res!2257244 () Bool)

(declare-fun e!3306201 () Bool)

(assert (=> d!1709554 (=> res!2257244 e!3306201)))

(assert (=> d!1709554 (= res!2257244 ((_ is Nil!61107) (t!374442 zl!343)))))

(assert (=> d!1709554 (= (forall!14397 (t!374442 zl!343) lambda!271341) e!3306201)))

(declare-fun b!5321750 () Bool)

(declare-fun e!3306202 () Bool)

(assert (=> b!5321750 (= e!3306201 e!3306202)))

(declare-fun res!2257245 () Bool)

(assert (=> b!5321750 (=> (not res!2257245) (not e!3306202))))

(assert (=> b!5321750 (= res!2257245 (dynLambda!24156 lambda!271341 (h!67555 (t!374442 zl!343))))))

(declare-fun b!5321751 () Bool)

(assert (=> b!5321751 (= e!3306202 (forall!14397 (t!374442 (t!374442 zl!343)) lambda!271341))))

(assert (= (and d!1709554 (not res!2257244)) b!5321750))

(assert (= (and b!5321750 res!2257245) b!5321751))

(declare-fun b_lambda!204731 () Bool)

(assert (=> (not b_lambda!204731) (not b!5321750)))

(declare-fun m!6356770 () Bool)

(assert (=> b!5321750 m!6356770))

(declare-fun m!6356772 () Bool)

(assert (=> b!5321751 m!6356772))

(assert (=> b!5320176 d!1709554))

(assert (=> b!5320546 d!1709442))

(assert (=> b!5320546 d!1709444))

(declare-fun d!1709556 () Bool)

(declare-fun c!925027 () Bool)

(assert (=> d!1709556 (= c!925027 (isEmpty!33079 (tail!10503 (t!374443 s!2326))))))

(declare-fun e!3306203 () Bool)

(assert (=> d!1709556 (= (matchZipper!1221 (derivationStepZipper!1218 ((_ map or) lt!2171730 lt!2171739) (head!11406 (t!374443 s!2326))) (tail!10503 (t!374443 s!2326))) e!3306203)))

(declare-fun b!5321752 () Bool)

(assert (=> b!5321752 (= e!3306203 (nullableZipper!1344 (derivationStepZipper!1218 ((_ map or) lt!2171730 lt!2171739) (head!11406 (t!374443 s!2326)))))))

(declare-fun b!5321753 () Bool)

(assert (=> b!5321753 (= e!3306203 (matchZipper!1221 (derivationStepZipper!1218 (derivationStepZipper!1218 ((_ map or) lt!2171730 lt!2171739) (head!11406 (t!374443 s!2326))) (head!11406 (tail!10503 (t!374443 s!2326)))) (tail!10503 (tail!10503 (t!374443 s!2326)))))))

(assert (= (and d!1709556 c!925027) b!5321752))

(assert (= (and d!1709556 (not c!925027)) b!5321753))

(assert (=> d!1709556 m!6355330))

(assert (=> d!1709556 m!6356162))

(assert (=> b!5321752 m!6355588))

(declare-fun m!6356774 () Bool)

(assert (=> b!5321752 m!6356774))

(assert (=> b!5321753 m!6355330))

(assert (=> b!5321753 m!6356166))

(assert (=> b!5321753 m!6355588))

(assert (=> b!5321753 m!6356166))

(declare-fun m!6356776 () Bool)

(assert (=> b!5321753 m!6356776))

(assert (=> b!5321753 m!6355330))

(assert (=> b!5321753 m!6356170))

(assert (=> b!5321753 m!6356776))

(assert (=> b!5321753 m!6356170))

(declare-fun m!6356778 () Bool)

(assert (=> b!5321753 m!6356778))

(assert (=> b!5320474 d!1709556))

(declare-fun bs!1233550 () Bool)

(declare-fun d!1709558 () Bool)

(assert (= bs!1233550 (and d!1709558 d!1709504)))

(declare-fun lambda!271469 () Int)

(assert (=> bs!1233550 (= lambda!271469 lambda!271458)))

(declare-fun bs!1233551 () Bool)

(assert (= bs!1233551 (and d!1709558 d!1709386)))

(assert (=> bs!1233551 (= lambda!271469 lambda!271440)))

(declare-fun bs!1233552 () Bool)

(assert (= bs!1233552 (and d!1709558 d!1709418)))

(assert (=> bs!1233552 (= lambda!271469 lambda!271443)))

(declare-fun bs!1233553 () Bool)

(assert (= bs!1233553 (and d!1709558 d!1709278)))

(assert (=> bs!1233553 (= lambda!271469 lambda!271416)))

(declare-fun bs!1233554 () Bool)

(assert (= bs!1233554 (and d!1709558 d!1708984)))

(assert (=> bs!1233554 (= (= (head!11406 (t!374443 s!2326)) (h!67556 s!2326)) (= lambda!271469 lambda!271364))))

(declare-fun bs!1233555 () Bool)

(assert (= bs!1233555 (and d!1709558 b!5319771)))

(assert (=> bs!1233555 (= (= (head!11406 (t!374443 s!2326)) (h!67556 s!2326)) (= lambda!271469 lambda!271286))))

(assert (=> d!1709558 true))

(assert (=> d!1709558 (= (derivationStepZipper!1218 ((_ map or) lt!2171730 lt!2171739) (head!11406 (t!374443 s!2326))) (flatMap!704 ((_ map or) lt!2171730 lt!2171739) lambda!271469))))

(declare-fun bs!1233556 () Bool)

(assert (= bs!1233556 d!1709558))

(declare-fun m!6356780 () Bool)

(assert (=> bs!1233556 m!6356780))

(assert (=> b!5320474 d!1709558))

(assert (=> b!5320474 d!1709280))

(assert (=> b!5320474 d!1709282))

(declare-fun b!5321755 () Bool)

(declare-fun e!3306204 () Bool)

(declare-fun tp!1481776 () Bool)

(declare-fun tp!1481774 () Bool)

(assert (=> b!5321755 (= e!3306204 (and tp!1481776 tp!1481774))))

(declare-fun b!5321756 () Bool)

(declare-fun tp!1481778 () Bool)

(assert (=> b!5321756 (= e!3306204 tp!1481778)))

(assert (=> b!5320582 (= tp!1481567 e!3306204)))

(declare-fun b!5321754 () Bool)

(assert (=> b!5321754 (= e!3306204 tp_is_empty!39207)))

(declare-fun b!5321757 () Bool)

(declare-fun tp!1481777 () Bool)

(declare-fun tp!1481775 () Bool)

(assert (=> b!5321757 (= e!3306204 (and tp!1481777 tp!1481775))))

(assert (= (and b!5320582 ((_ is ElementMatch!14977) (reg!15306 (regOne!30466 r!7292)))) b!5321754))

(assert (= (and b!5320582 ((_ is Concat!23822) (reg!15306 (regOne!30466 r!7292)))) b!5321755))

(assert (= (and b!5320582 ((_ is Star!14977) (reg!15306 (regOne!30466 r!7292)))) b!5321756))

(assert (= (and b!5320582 ((_ is Union!14977) (reg!15306 (regOne!30466 r!7292)))) b!5321757))

(declare-fun b!5321759 () Bool)

(declare-fun e!3306205 () Bool)

(declare-fun tp!1481781 () Bool)

(declare-fun tp!1481779 () Bool)

(assert (=> b!5321759 (= e!3306205 (and tp!1481781 tp!1481779))))

(declare-fun b!5321760 () Bool)

(declare-fun tp!1481783 () Bool)

(assert (=> b!5321760 (= e!3306205 tp!1481783)))

(assert (=> b!5320581 (= tp!1481565 e!3306205)))

(declare-fun b!5321758 () Bool)

(assert (=> b!5321758 (= e!3306205 tp_is_empty!39207)))

(declare-fun b!5321761 () Bool)

(declare-fun tp!1481782 () Bool)

(declare-fun tp!1481780 () Bool)

(assert (=> b!5321761 (= e!3306205 (and tp!1481782 tp!1481780))))

(assert (= (and b!5320581 ((_ is ElementMatch!14977) (regOne!30466 (regOne!30466 r!7292)))) b!5321758))

(assert (= (and b!5320581 ((_ is Concat!23822) (regOne!30466 (regOne!30466 r!7292)))) b!5321759))

(assert (= (and b!5320581 ((_ is Star!14977) (regOne!30466 (regOne!30466 r!7292)))) b!5321760))

(assert (= (and b!5320581 ((_ is Union!14977) (regOne!30466 (regOne!30466 r!7292)))) b!5321761))

(declare-fun b!5321763 () Bool)

(declare-fun e!3306206 () Bool)

(declare-fun tp!1481786 () Bool)

(declare-fun tp!1481784 () Bool)

(assert (=> b!5321763 (= e!3306206 (and tp!1481786 tp!1481784))))

(declare-fun b!5321764 () Bool)

(declare-fun tp!1481788 () Bool)

(assert (=> b!5321764 (= e!3306206 tp!1481788)))

(assert (=> b!5320581 (= tp!1481563 e!3306206)))

(declare-fun b!5321762 () Bool)

(assert (=> b!5321762 (= e!3306206 tp_is_empty!39207)))

(declare-fun b!5321765 () Bool)

(declare-fun tp!1481787 () Bool)

(declare-fun tp!1481785 () Bool)

(assert (=> b!5321765 (= e!3306206 (and tp!1481787 tp!1481785))))

(assert (= (and b!5320581 ((_ is ElementMatch!14977) (regTwo!30466 (regOne!30466 r!7292)))) b!5321762))

(assert (= (and b!5320581 ((_ is Concat!23822) (regTwo!30466 (regOne!30466 r!7292)))) b!5321763))

(assert (= (and b!5320581 ((_ is Star!14977) (regTwo!30466 (regOne!30466 r!7292)))) b!5321764))

(assert (= (and b!5320581 ((_ is Union!14977) (regTwo!30466 (regOne!30466 r!7292)))) b!5321765))

(declare-fun b!5321767 () Bool)

(declare-fun e!3306207 () Bool)

(declare-fun tp!1481791 () Bool)

(declare-fun tp!1481789 () Bool)

(assert (=> b!5321767 (= e!3306207 (and tp!1481791 tp!1481789))))

(declare-fun b!5321768 () Bool)

(declare-fun tp!1481793 () Bool)

(assert (=> b!5321768 (= e!3306207 tp!1481793)))

(assert (=> b!5320609 (= tp!1481591 e!3306207)))

(declare-fun b!5321766 () Bool)

(assert (=> b!5321766 (= e!3306207 tp_is_empty!39207)))

(declare-fun b!5321769 () Bool)

(declare-fun tp!1481792 () Bool)

(declare-fun tp!1481790 () Bool)

(assert (=> b!5321769 (= e!3306207 (and tp!1481792 tp!1481790))))

(assert (= (and b!5320609 ((_ is ElementMatch!14977) (regOne!30467 (regOne!30467 r!7292)))) b!5321766))

(assert (= (and b!5320609 ((_ is Concat!23822) (regOne!30467 (regOne!30467 r!7292)))) b!5321767))

(assert (= (and b!5320609 ((_ is Star!14977) (regOne!30467 (regOne!30467 r!7292)))) b!5321768))

(assert (= (and b!5320609 ((_ is Union!14977) (regOne!30467 (regOne!30467 r!7292)))) b!5321769))

(declare-fun b!5321771 () Bool)

(declare-fun e!3306208 () Bool)

(declare-fun tp!1481796 () Bool)

(declare-fun tp!1481794 () Bool)

(assert (=> b!5321771 (= e!3306208 (and tp!1481796 tp!1481794))))

(declare-fun b!5321772 () Bool)

(declare-fun tp!1481798 () Bool)

(assert (=> b!5321772 (= e!3306208 tp!1481798)))

(assert (=> b!5320609 (= tp!1481589 e!3306208)))

(declare-fun b!5321770 () Bool)

(assert (=> b!5321770 (= e!3306208 tp_is_empty!39207)))

(declare-fun b!5321773 () Bool)

(declare-fun tp!1481797 () Bool)

(declare-fun tp!1481795 () Bool)

(assert (=> b!5321773 (= e!3306208 (and tp!1481797 tp!1481795))))

(assert (= (and b!5320609 ((_ is ElementMatch!14977) (regTwo!30467 (regOne!30467 r!7292)))) b!5321770))

(assert (= (and b!5320609 ((_ is Concat!23822) (regTwo!30467 (regOne!30467 r!7292)))) b!5321771))

(assert (= (and b!5320609 ((_ is Star!14977) (regTwo!30467 (regOne!30467 r!7292)))) b!5321772))

(assert (= (and b!5320609 ((_ is Union!14977) (regTwo!30467 (regOne!30467 r!7292)))) b!5321773))

(declare-fun b!5321775 () Bool)

(declare-fun e!3306209 () Bool)

(declare-fun tp!1481801 () Bool)

(declare-fun tp!1481799 () Bool)

(assert (=> b!5321775 (= e!3306209 (and tp!1481801 tp!1481799))))

(declare-fun b!5321776 () Bool)

(declare-fun tp!1481803 () Bool)

(assert (=> b!5321776 (= e!3306209 tp!1481803)))

(assert (=> b!5320608 (= tp!1481592 e!3306209)))

(declare-fun b!5321774 () Bool)

(assert (=> b!5321774 (= e!3306209 tp_is_empty!39207)))

(declare-fun b!5321777 () Bool)

(declare-fun tp!1481802 () Bool)

(declare-fun tp!1481800 () Bool)

(assert (=> b!5321777 (= e!3306209 (and tp!1481802 tp!1481800))))

(assert (= (and b!5320608 ((_ is ElementMatch!14977) (reg!15306 (regOne!30467 r!7292)))) b!5321774))

(assert (= (and b!5320608 ((_ is Concat!23822) (reg!15306 (regOne!30467 r!7292)))) b!5321775))

(assert (= (and b!5320608 ((_ is Star!14977) (reg!15306 (regOne!30467 r!7292)))) b!5321776))

(assert (= (and b!5320608 ((_ is Union!14977) (reg!15306 (regOne!30467 r!7292)))) b!5321777))

(declare-fun b!5321779 () Bool)

(declare-fun e!3306210 () Bool)

(declare-fun tp!1481806 () Bool)

(declare-fun tp!1481804 () Bool)

(assert (=> b!5321779 (= e!3306210 (and tp!1481806 tp!1481804))))

(declare-fun b!5321780 () Bool)

(declare-fun tp!1481808 () Bool)

(assert (=> b!5321780 (= e!3306210 tp!1481808)))

(assert (=> b!5320607 (= tp!1481590 e!3306210)))

(declare-fun b!5321778 () Bool)

(assert (=> b!5321778 (= e!3306210 tp_is_empty!39207)))

(declare-fun b!5321781 () Bool)

(declare-fun tp!1481807 () Bool)

(declare-fun tp!1481805 () Bool)

(assert (=> b!5321781 (= e!3306210 (and tp!1481807 tp!1481805))))

(assert (= (and b!5320607 ((_ is ElementMatch!14977) (regOne!30466 (regOne!30467 r!7292)))) b!5321778))

(assert (= (and b!5320607 ((_ is Concat!23822) (regOne!30466 (regOne!30467 r!7292)))) b!5321779))

(assert (= (and b!5320607 ((_ is Star!14977) (regOne!30466 (regOne!30467 r!7292)))) b!5321780))

(assert (= (and b!5320607 ((_ is Union!14977) (regOne!30466 (regOne!30467 r!7292)))) b!5321781))

(declare-fun b!5321783 () Bool)

(declare-fun e!3306211 () Bool)

(declare-fun tp!1481811 () Bool)

(declare-fun tp!1481809 () Bool)

(assert (=> b!5321783 (= e!3306211 (and tp!1481811 tp!1481809))))

(declare-fun b!5321784 () Bool)

(declare-fun tp!1481813 () Bool)

(assert (=> b!5321784 (= e!3306211 tp!1481813)))

(assert (=> b!5320607 (= tp!1481588 e!3306211)))

(declare-fun b!5321782 () Bool)

(assert (=> b!5321782 (= e!3306211 tp_is_empty!39207)))

(declare-fun b!5321785 () Bool)

(declare-fun tp!1481812 () Bool)

(declare-fun tp!1481810 () Bool)

(assert (=> b!5321785 (= e!3306211 (and tp!1481812 tp!1481810))))

(assert (= (and b!5320607 ((_ is ElementMatch!14977) (regTwo!30466 (regOne!30467 r!7292)))) b!5321782))

(assert (= (and b!5320607 ((_ is Concat!23822) (regTwo!30466 (regOne!30467 r!7292)))) b!5321783))

(assert (= (and b!5320607 ((_ is Star!14977) (regTwo!30466 (regOne!30467 r!7292)))) b!5321784))

(assert (= (and b!5320607 ((_ is Union!14977) (regTwo!30466 (regOne!30467 r!7292)))) b!5321785))

(declare-fun b!5321787 () Bool)

(declare-fun e!3306212 () Bool)

(declare-fun tp!1481816 () Bool)

(declare-fun tp!1481814 () Bool)

(assert (=> b!5321787 (= e!3306212 (and tp!1481816 tp!1481814))))

(declare-fun b!5321788 () Bool)

(declare-fun tp!1481818 () Bool)

(assert (=> b!5321788 (= e!3306212 tp!1481818)))

(assert (=> b!5320579 (= tp!1481561 e!3306212)))

(declare-fun b!5321786 () Bool)

(assert (=> b!5321786 (= e!3306212 tp_is_empty!39207)))

(declare-fun b!5321789 () Bool)

(declare-fun tp!1481817 () Bool)

(declare-fun tp!1481815 () Bool)

(assert (=> b!5321789 (= e!3306212 (and tp!1481817 tp!1481815))))

(assert (= (and b!5320579 ((_ is ElementMatch!14977) (h!67554 (exprs!4861 (h!67555 zl!343))))) b!5321786))

(assert (= (and b!5320579 ((_ is Concat!23822) (h!67554 (exprs!4861 (h!67555 zl!343))))) b!5321787))

(assert (= (and b!5320579 ((_ is Star!14977) (h!67554 (exprs!4861 (h!67555 zl!343))))) b!5321788))

(assert (= (and b!5320579 ((_ is Union!14977) (h!67554 (exprs!4861 (h!67555 zl!343))))) b!5321789))

(declare-fun b!5321790 () Bool)

(declare-fun e!3306213 () Bool)

(declare-fun tp!1481819 () Bool)

(declare-fun tp!1481820 () Bool)

(assert (=> b!5321790 (= e!3306213 (and tp!1481819 tp!1481820))))

(assert (=> b!5320579 (= tp!1481562 e!3306213)))

(assert (= (and b!5320579 ((_ is Cons!61106) (t!374441 (exprs!4861 (h!67555 zl!343))))) b!5321790))

(declare-fun b!5321792 () Bool)

(declare-fun e!3306214 () Bool)

(declare-fun tp!1481823 () Bool)

(declare-fun tp!1481821 () Bool)

(assert (=> b!5321792 (= e!3306214 (and tp!1481823 tp!1481821))))

(declare-fun b!5321793 () Bool)

(declare-fun tp!1481825 () Bool)

(assert (=> b!5321793 (= e!3306214 tp!1481825)))

(assert (=> b!5320573 (= tp!1481553 e!3306214)))

(declare-fun b!5321791 () Bool)

(assert (=> b!5321791 (= e!3306214 tp_is_empty!39207)))

(declare-fun b!5321794 () Bool)

(declare-fun tp!1481824 () Bool)

(declare-fun tp!1481822 () Bool)

(assert (=> b!5321794 (= e!3306214 (and tp!1481824 tp!1481822))))

(assert (= (and b!5320573 ((_ is ElementMatch!14977) (regOne!30467 (reg!15306 r!7292)))) b!5321791))

(assert (= (and b!5320573 ((_ is Concat!23822) (regOne!30467 (reg!15306 r!7292)))) b!5321792))

(assert (= (and b!5320573 ((_ is Star!14977) (regOne!30467 (reg!15306 r!7292)))) b!5321793))

(assert (= (and b!5320573 ((_ is Union!14977) (regOne!30467 (reg!15306 r!7292)))) b!5321794))

(declare-fun b!5321796 () Bool)

(declare-fun e!3306215 () Bool)

(declare-fun tp!1481828 () Bool)

(declare-fun tp!1481826 () Bool)

(assert (=> b!5321796 (= e!3306215 (and tp!1481828 tp!1481826))))

(declare-fun b!5321797 () Bool)

(declare-fun tp!1481830 () Bool)

(assert (=> b!5321797 (= e!3306215 tp!1481830)))

(assert (=> b!5320573 (= tp!1481551 e!3306215)))

(declare-fun b!5321795 () Bool)

(assert (=> b!5321795 (= e!3306215 tp_is_empty!39207)))

(declare-fun b!5321798 () Bool)

(declare-fun tp!1481829 () Bool)

(declare-fun tp!1481827 () Bool)

(assert (=> b!5321798 (= e!3306215 (and tp!1481829 tp!1481827))))

(assert (= (and b!5320573 ((_ is ElementMatch!14977) (regTwo!30467 (reg!15306 r!7292)))) b!5321795))

(assert (= (and b!5320573 ((_ is Concat!23822) (regTwo!30467 (reg!15306 r!7292)))) b!5321796))

(assert (= (and b!5320573 ((_ is Star!14977) (regTwo!30467 (reg!15306 r!7292)))) b!5321797))

(assert (= (and b!5320573 ((_ is Union!14977) (regTwo!30467 (reg!15306 r!7292)))) b!5321798))

(declare-fun b!5321800 () Bool)

(declare-fun e!3306216 () Bool)

(declare-fun tp!1481833 () Bool)

(declare-fun tp!1481831 () Bool)

(assert (=> b!5321800 (= e!3306216 (and tp!1481833 tp!1481831))))

(declare-fun b!5321801 () Bool)

(declare-fun tp!1481835 () Bool)

(assert (=> b!5321801 (= e!3306216 tp!1481835)))

(assert (=> b!5320587 (= tp!1481571 e!3306216)))

(declare-fun b!5321799 () Bool)

(assert (=> b!5321799 (= e!3306216 tp_is_empty!39207)))

(declare-fun b!5321802 () Bool)

(declare-fun tp!1481834 () Bool)

(declare-fun tp!1481832 () Bool)

(assert (=> b!5321802 (= e!3306216 (and tp!1481834 tp!1481832))))

(assert (= (and b!5320587 ((_ is ElementMatch!14977) (regOne!30467 (regTwo!30466 r!7292)))) b!5321799))

(assert (= (and b!5320587 ((_ is Concat!23822) (regOne!30467 (regTwo!30466 r!7292)))) b!5321800))

(assert (= (and b!5320587 ((_ is Star!14977) (regOne!30467 (regTwo!30466 r!7292)))) b!5321801))

(assert (= (and b!5320587 ((_ is Union!14977) (regOne!30467 (regTwo!30466 r!7292)))) b!5321802))

(declare-fun b!5321804 () Bool)

(declare-fun e!3306217 () Bool)

(declare-fun tp!1481838 () Bool)

(declare-fun tp!1481836 () Bool)

(assert (=> b!5321804 (= e!3306217 (and tp!1481838 tp!1481836))))

(declare-fun b!5321805 () Bool)

(declare-fun tp!1481840 () Bool)

(assert (=> b!5321805 (= e!3306217 tp!1481840)))

(assert (=> b!5320587 (= tp!1481569 e!3306217)))

(declare-fun b!5321803 () Bool)

(assert (=> b!5321803 (= e!3306217 tp_is_empty!39207)))

(declare-fun b!5321806 () Bool)

(declare-fun tp!1481839 () Bool)

(declare-fun tp!1481837 () Bool)

(assert (=> b!5321806 (= e!3306217 (and tp!1481839 tp!1481837))))

(assert (= (and b!5320587 ((_ is ElementMatch!14977) (regTwo!30467 (regTwo!30466 r!7292)))) b!5321803))

(assert (= (and b!5320587 ((_ is Concat!23822) (regTwo!30467 (regTwo!30466 r!7292)))) b!5321804))

(assert (= (and b!5320587 ((_ is Star!14977) (regTwo!30467 (regTwo!30466 r!7292)))) b!5321805))

(assert (= (and b!5320587 ((_ is Union!14977) (regTwo!30467 (regTwo!30466 r!7292)))) b!5321806))

(declare-fun b!5321808 () Bool)

(declare-fun e!3306218 () Bool)

(declare-fun tp!1481843 () Bool)

(declare-fun tp!1481841 () Bool)

(assert (=> b!5321808 (= e!3306218 (and tp!1481843 tp!1481841))))

(declare-fun b!5321809 () Bool)

(declare-fun tp!1481845 () Bool)

(assert (=> b!5321809 (= e!3306218 tp!1481845)))

(assert (=> b!5320572 (= tp!1481554 e!3306218)))

(declare-fun b!5321807 () Bool)

(assert (=> b!5321807 (= e!3306218 tp_is_empty!39207)))

(declare-fun b!5321810 () Bool)

(declare-fun tp!1481844 () Bool)

(declare-fun tp!1481842 () Bool)

(assert (=> b!5321810 (= e!3306218 (and tp!1481844 tp!1481842))))

(assert (= (and b!5320572 ((_ is ElementMatch!14977) (reg!15306 (reg!15306 r!7292)))) b!5321807))

(assert (= (and b!5320572 ((_ is Concat!23822) (reg!15306 (reg!15306 r!7292)))) b!5321808))

(assert (= (and b!5320572 ((_ is Star!14977) (reg!15306 (reg!15306 r!7292)))) b!5321809))

(assert (= (and b!5320572 ((_ is Union!14977) (reg!15306 (reg!15306 r!7292)))) b!5321810))

(declare-fun b!5321812 () Bool)

(declare-fun e!3306219 () Bool)

(declare-fun tp!1481848 () Bool)

(declare-fun tp!1481846 () Bool)

(assert (=> b!5321812 (= e!3306219 (and tp!1481848 tp!1481846))))

(declare-fun b!5321813 () Bool)

(declare-fun tp!1481850 () Bool)

(assert (=> b!5321813 (= e!3306219 tp!1481850)))

(assert (=> b!5320586 (= tp!1481572 e!3306219)))

(declare-fun b!5321811 () Bool)

(assert (=> b!5321811 (= e!3306219 tp_is_empty!39207)))

(declare-fun b!5321814 () Bool)

(declare-fun tp!1481849 () Bool)

(declare-fun tp!1481847 () Bool)

(assert (=> b!5321814 (= e!3306219 (and tp!1481849 tp!1481847))))

(assert (= (and b!5320586 ((_ is ElementMatch!14977) (reg!15306 (regTwo!30466 r!7292)))) b!5321811))

(assert (= (and b!5320586 ((_ is Concat!23822) (reg!15306 (regTwo!30466 r!7292)))) b!5321812))

(assert (= (and b!5320586 ((_ is Star!14977) (reg!15306 (regTwo!30466 r!7292)))) b!5321813))

(assert (= (and b!5320586 ((_ is Union!14977) (reg!15306 (regTwo!30466 r!7292)))) b!5321814))

(declare-fun b!5321816 () Bool)

(declare-fun e!3306220 () Bool)

(declare-fun tp!1481853 () Bool)

(declare-fun tp!1481851 () Bool)

(assert (=> b!5321816 (= e!3306220 (and tp!1481853 tp!1481851))))

(declare-fun b!5321817 () Bool)

(declare-fun tp!1481855 () Bool)

(assert (=> b!5321817 (= e!3306220 tp!1481855)))

(assert (=> b!5320571 (= tp!1481552 e!3306220)))

(declare-fun b!5321815 () Bool)

(assert (=> b!5321815 (= e!3306220 tp_is_empty!39207)))

(declare-fun b!5321818 () Bool)

(declare-fun tp!1481854 () Bool)

(declare-fun tp!1481852 () Bool)

(assert (=> b!5321818 (= e!3306220 (and tp!1481854 tp!1481852))))

(assert (= (and b!5320571 ((_ is ElementMatch!14977) (regOne!30466 (reg!15306 r!7292)))) b!5321815))

(assert (= (and b!5320571 ((_ is Concat!23822) (regOne!30466 (reg!15306 r!7292)))) b!5321816))

(assert (= (and b!5320571 ((_ is Star!14977) (regOne!30466 (reg!15306 r!7292)))) b!5321817))

(assert (= (and b!5320571 ((_ is Union!14977) (regOne!30466 (reg!15306 r!7292)))) b!5321818))

(declare-fun b!5321820 () Bool)

(declare-fun e!3306221 () Bool)

(declare-fun tp!1481858 () Bool)

(declare-fun tp!1481856 () Bool)

(assert (=> b!5321820 (= e!3306221 (and tp!1481858 tp!1481856))))

(declare-fun b!5321821 () Bool)

(declare-fun tp!1481860 () Bool)

(assert (=> b!5321821 (= e!3306221 tp!1481860)))

(assert (=> b!5320571 (= tp!1481550 e!3306221)))

(declare-fun b!5321819 () Bool)

(assert (=> b!5321819 (= e!3306221 tp_is_empty!39207)))

(declare-fun b!5321822 () Bool)

(declare-fun tp!1481859 () Bool)

(declare-fun tp!1481857 () Bool)

(assert (=> b!5321822 (= e!3306221 (and tp!1481859 tp!1481857))))

(assert (= (and b!5320571 ((_ is ElementMatch!14977) (regTwo!30466 (reg!15306 r!7292)))) b!5321819))

(assert (= (and b!5320571 ((_ is Concat!23822) (regTwo!30466 (reg!15306 r!7292)))) b!5321820))

(assert (= (and b!5320571 ((_ is Star!14977) (regTwo!30466 (reg!15306 r!7292)))) b!5321821))

(assert (= (and b!5320571 ((_ is Union!14977) (regTwo!30466 (reg!15306 r!7292)))) b!5321822))

(declare-fun b!5321824 () Bool)

(declare-fun e!3306222 () Bool)

(declare-fun tp!1481863 () Bool)

(declare-fun tp!1481861 () Bool)

(assert (=> b!5321824 (= e!3306222 (and tp!1481863 tp!1481861))))

(declare-fun b!5321825 () Bool)

(declare-fun tp!1481865 () Bool)

(assert (=> b!5321825 (= e!3306222 tp!1481865)))

(assert (=> b!5320585 (= tp!1481570 e!3306222)))

(declare-fun b!5321823 () Bool)

(assert (=> b!5321823 (= e!3306222 tp_is_empty!39207)))

(declare-fun b!5321826 () Bool)

(declare-fun tp!1481864 () Bool)

(declare-fun tp!1481862 () Bool)

(assert (=> b!5321826 (= e!3306222 (and tp!1481864 tp!1481862))))

(assert (= (and b!5320585 ((_ is ElementMatch!14977) (regOne!30466 (regTwo!30466 r!7292)))) b!5321823))

(assert (= (and b!5320585 ((_ is Concat!23822) (regOne!30466 (regTwo!30466 r!7292)))) b!5321824))

(assert (= (and b!5320585 ((_ is Star!14977) (regOne!30466 (regTwo!30466 r!7292)))) b!5321825))

(assert (= (and b!5320585 ((_ is Union!14977) (regOne!30466 (regTwo!30466 r!7292)))) b!5321826))

(declare-fun b!5321828 () Bool)

(declare-fun e!3306223 () Bool)

(declare-fun tp!1481868 () Bool)

(declare-fun tp!1481866 () Bool)

(assert (=> b!5321828 (= e!3306223 (and tp!1481868 tp!1481866))))

(declare-fun b!5321829 () Bool)

(declare-fun tp!1481870 () Bool)

(assert (=> b!5321829 (= e!3306223 tp!1481870)))

(assert (=> b!5320585 (= tp!1481568 e!3306223)))

(declare-fun b!5321827 () Bool)

(assert (=> b!5321827 (= e!3306223 tp_is_empty!39207)))

(declare-fun b!5321830 () Bool)

(declare-fun tp!1481869 () Bool)

(declare-fun tp!1481867 () Bool)

(assert (=> b!5321830 (= e!3306223 (and tp!1481869 tp!1481867))))

(assert (= (and b!5320585 ((_ is ElementMatch!14977) (regTwo!30466 (regTwo!30466 r!7292)))) b!5321827))

(assert (= (and b!5320585 ((_ is Concat!23822) (regTwo!30466 (regTwo!30466 r!7292)))) b!5321828))

(assert (= (and b!5320585 ((_ is Star!14977) (regTwo!30466 (regTwo!30466 r!7292)))) b!5321829))

(assert (= (and b!5320585 ((_ is Union!14977) (regTwo!30466 (regTwo!30466 r!7292)))) b!5321830))

(declare-fun b!5321831 () Bool)

(declare-fun e!3306224 () Bool)

(declare-fun tp!1481871 () Bool)

(declare-fun tp!1481872 () Bool)

(assert (=> b!5321831 (= e!3306224 (and tp!1481871 tp!1481872))))

(assert (=> b!5320600 (= tp!1481583 e!3306224)))

(assert (= (and b!5320600 ((_ is Cons!61106) (exprs!4861 (h!67555 (t!374442 zl!343))))) b!5321831))

(declare-fun b!5321833 () Bool)

(declare-fun e!3306225 () Bool)

(declare-fun tp!1481875 () Bool)

(declare-fun tp!1481873 () Bool)

(assert (=> b!5321833 (= e!3306225 (and tp!1481875 tp!1481873))))

(declare-fun b!5321834 () Bool)

(declare-fun tp!1481877 () Bool)

(assert (=> b!5321834 (= e!3306225 tp!1481877)))

(assert (=> b!5320578 (= tp!1481559 e!3306225)))

(declare-fun b!5321832 () Bool)

(assert (=> b!5321832 (= e!3306225 tp_is_empty!39207)))

(declare-fun b!5321835 () Bool)

(declare-fun tp!1481876 () Bool)

(declare-fun tp!1481874 () Bool)

(assert (=> b!5321835 (= e!3306225 (and tp!1481876 tp!1481874))))

(assert (= (and b!5320578 ((_ is ElementMatch!14977) (h!67554 (exprs!4861 setElem!34243)))) b!5321832))

(assert (= (and b!5320578 ((_ is Concat!23822) (h!67554 (exprs!4861 setElem!34243)))) b!5321833))

(assert (= (and b!5320578 ((_ is Star!14977) (h!67554 (exprs!4861 setElem!34243)))) b!5321834))

(assert (= (and b!5320578 ((_ is Union!14977) (h!67554 (exprs!4861 setElem!34243)))) b!5321835))

(declare-fun b!5321836 () Bool)

(declare-fun e!3306226 () Bool)

(declare-fun tp!1481878 () Bool)

(declare-fun tp!1481879 () Bool)

(assert (=> b!5321836 (= e!3306226 (and tp!1481878 tp!1481879))))

(assert (=> b!5320578 (= tp!1481560 e!3306226)))

(assert (= (and b!5320578 ((_ is Cons!61106) (t!374441 (exprs!4861 setElem!34243)))) b!5321836))

(declare-fun b!5321838 () Bool)

(declare-fun e!3306228 () Bool)

(declare-fun tp!1481880 () Bool)

(assert (=> b!5321838 (= e!3306228 tp!1481880)))

(declare-fun tp!1481881 () Bool)

(declare-fun e!3306227 () Bool)

(declare-fun b!5321837 () Bool)

(assert (=> b!5321837 (= e!3306227 (and (inv!80689 (h!67555 (t!374442 (t!374442 zl!343)))) e!3306228 tp!1481881))))

(assert (=> b!5320599 (= tp!1481584 e!3306227)))

(assert (= b!5321837 b!5321838))

(assert (= (and b!5320599 ((_ is Cons!61107) (t!374442 (t!374442 zl!343)))) b!5321837))

(declare-fun m!6356782 () Bool)

(assert (=> b!5321837 m!6356782))

(declare-fun b!5321839 () Bool)

(declare-fun e!3306229 () Bool)

(declare-fun tp!1481882 () Bool)

(assert (=> b!5321839 (= e!3306229 (and tp_is_empty!39207 tp!1481882))))

(assert (=> b!5320605 (= tp!1481587 e!3306229)))

(assert (= (and b!5320605 ((_ is Cons!61108) (t!374443 (t!374443 s!2326)))) b!5321839))

(declare-fun b!5321840 () Bool)

(declare-fun e!3306230 () Bool)

(declare-fun tp!1481883 () Bool)

(declare-fun tp!1481884 () Bool)

(assert (=> b!5321840 (= e!3306230 (and tp!1481883 tp!1481884))))

(assert (=> b!5320592 (= tp!1481577 e!3306230)))

(assert (= (and b!5320592 ((_ is Cons!61106) (exprs!4861 setElem!34249))) b!5321840))

(declare-fun condSetEmpty!34259 () Bool)

(assert (=> setNonEmpty!34249 (= condSetEmpty!34259 (= setRest!34249 ((as const (Array Context!8722 Bool)) false)))))

(declare-fun setRes!34259 () Bool)

(assert (=> setNonEmpty!34249 (= tp!1481578 setRes!34259)))

(declare-fun setIsEmpty!34259 () Bool)

(assert (=> setIsEmpty!34259 setRes!34259))

(declare-fun e!3306231 () Bool)

(declare-fun setNonEmpty!34259 () Bool)

(declare-fun setElem!34259 () Context!8722)

(declare-fun tp!1481886 () Bool)

(assert (=> setNonEmpty!34259 (= setRes!34259 (and tp!1481886 (inv!80689 setElem!34259) e!3306231))))

(declare-fun setRest!34259 () (InoxSet Context!8722))

(assert (=> setNonEmpty!34259 (= setRest!34249 ((_ map or) (store ((as const (Array Context!8722 Bool)) false) setElem!34259 true) setRest!34259))))

(declare-fun b!5321841 () Bool)

(declare-fun tp!1481885 () Bool)

(assert (=> b!5321841 (= e!3306231 tp!1481885)))

(assert (= (and setNonEmpty!34249 condSetEmpty!34259) setIsEmpty!34259))

(assert (= (and setNonEmpty!34249 (not condSetEmpty!34259)) setNonEmpty!34259))

(assert (= setNonEmpty!34259 b!5321841))

(declare-fun m!6356784 () Bool)

(assert (=> setNonEmpty!34259 m!6356784))

(declare-fun b!5321843 () Bool)

(declare-fun e!3306232 () Bool)

(declare-fun tp!1481889 () Bool)

(declare-fun tp!1481887 () Bool)

(assert (=> b!5321843 (= e!3306232 (and tp!1481889 tp!1481887))))

(declare-fun b!5321844 () Bool)

(declare-fun tp!1481891 () Bool)

(assert (=> b!5321844 (= e!3306232 tp!1481891)))

(assert (=> b!5320613 (= tp!1481596 e!3306232)))

(declare-fun b!5321842 () Bool)

(assert (=> b!5321842 (= e!3306232 tp_is_empty!39207)))

(declare-fun b!5321845 () Bool)

(declare-fun tp!1481890 () Bool)

(declare-fun tp!1481888 () Bool)

(assert (=> b!5321845 (= e!3306232 (and tp!1481890 tp!1481888))))

(assert (= (and b!5320613 ((_ is ElementMatch!14977) (regOne!30467 (regTwo!30467 r!7292)))) b!5321842))

(assert (= (and b!5320613 ((_ is Concat!23822) (regOne!30467 (regTwo!30467 r!7292)))) b!5321843))

(assert (= (and b!5320613 ((_ is Star!14977) (regOne!30467 (regTwo!30467 r!7292)))) b!5321844))

(assert (= (and b!5320613 ((_ is Union!14977) (regOne!30467 (regTwo!30467 r!7292)))) b!5321845))

(declare-fun b!5321847 () Bool)

(declare-fun e!3306233 () Bool)

(declare-fun tp!1481894 () Bool)

(declare-fun tp!1481892 () Bool)

(assert (=> b!5321847 (= e!3306233 (and tp!1481894 tp!1481892))))

(declare-fun b!5321848 () Bool)

(declare-fun tp!1481896 () Bool)

(assert (=> b!5321848 (= e!3306233 tp!1481896)))

(assert (=> b!5320613 (= tp!1481594 e!3306233)))

(declare-fun b!5321846 () Bool)

(assert (=> b!5321846 (= e!3306233 tp_is_empty!39207)))

(declare-fun b!5321849 () Bool)

(declare-fun tp!1481895 () Bool)

(declare-fun tp!1481893 () Bool)

(assert (=> b!5321849 (= e!3306233 (and tp!1481895 tp!1481893))))

(assert (= (and b!5320613 ((_ is ElementMatch!14977) (regTwo!30467 (regTwo!30467 r!7292)))) b!5321846))

(assert (= (and b!5320613 ((_ is Concat!23822) (regTwo!30467 (regTwo!30467 r!7292)))) b!5321847))

(assert (= (and b!5320613 ((_ is Star!14977) (regTwo!30467 (regTwo!30467 r!7292)))) b!5321848))

(assert (= (and b!5320613 ((_ is Union!14977) (regTwo!30467 (regTwo!30467 r!7292)))) b!5321849))

(declare-fun b!5321851 () Bool)

(declare-fun e!3306234 () Bool)

(declare-fun tp!1481899 () Bool)

(declare-fun tp!1481897 () Bool)

(assert (=> b!5321851 (= e!3306234 (and tp!1481899 tp!1481897))))

(declare-fun b!5321852 () Bool)

(declare-fun tp!1481901 () Bool)

(assert (=> b!5321852 (= e!3306234 tp!1481901)))

(assert (=> b!5320612 (= tp!1481597 e!3306234)))

(declare-fun b!5321850 () Bool)

(assert (=> b!5321850 (= e!3306234 tp_is_empty!39207)))

(declare-fun b!5321853 () Bool)

(declare-fun tp!1481900 () Bool)

(declare-fun tp!1481898 () Bool)

(assert (=> b!5321853 (= e!3306234 (and tp!1481900 tp!1481898))))

(assert (= (and b!5320612 ((_ is ElementMatch!14977) (reg!15306 (regTwo!30467 r!7292)))) b!5321850))

(assert (= (and b!5320612 ((_ is Concat!23822) (reg!15306 (regTwo!30467 r!7292)))) b!5321851))

(assert (= (and b!5320612 ((_ is Star!14977) (reg!15306 (regTwo!30467 r!7292)))) b!5321852))

(assert (= (and b!5320612 ((_ is Union!14977) (reg!15306 (regTwo!30467 r!7292)))) b!5321853))

(declare-fun b!5321855 () Bool)

(declare-fun e!3306235 () Bool)

(declare-fun tp!1481904 () Bool)

(declare-fun tp!1481902 () Bool)

(assert (=> b!5321855 (= e!3306235 (and tp!1481904 tp!1481902))))

(declare-fun b!5321856 () Bool)

(declare-fun tp!1481906 () Bool)

(assert (=> b!5321856 (= e!3306235 tp!1481906)))

(assert (=> b!5320611 (= tp!1481595 e!3306235)))

(declare-fun b!5321854 () Bool)

(assert (=> b!5321854 (= e!3306235 tp_is_empty!39207)))

(declare-fun b!5321857 () Bool)

(declare-fun tp!1481905 () Bool)

(declare-fun tp!1481903 () Bool)

(assert (=> b!5321857 (= e!3306235 (and tp!1481905 tp!1481903))))

(assert (= (and b!5320611 ((_ is ElementMatch!14977) (regOne!30466 (regTwo!30467 r!7292)))) b!5321854))

(assert (= (and b!5320611 ((_ is Concat!23822) (regOne!30466 (regTwo!30467 r!7292)))) b!5321855))

(assert (= (and b!5320611 ((_ is Star!14977) (regOne!30466 (regTwo!30467 r!7292)))) b!5321856))

(assert (= (and b!5320611 ((_ is Union!14977) (regOne!30466 (regTwo!30467 r!7292)))) b!5321857))

(declare-fun b!5321859 () Bool)

(declare-fun e!3306236 () Bool)

(declare-fun tp!1481909 () Bool)

(declare-fun tp!1481907 () Bool)

(assert (=> b!5321859 (= e!3306236 (and tp!1481909 tp!1481907))))

(declare-fun b!5321860 () Bool)

(declare-fun tp!1481911 () Bool)

(assert (=> b!5321860 (= e!3306236 tp!1481911)))

(assert (=> b!5320611 (= tp!1481593 e!3306236)))

(declare-fun b!5321858 () Bool)

(assert (=> b!5321858 (= e!3306236 tp_is_empty!39207)))

(declare-fun b!5321861 () Bool)

(declare-fun tp!1481910 () Bool)

(declare-fun tp!1481908 () Bool)

(assert (=> b!5321861 (= e!3306236 (and tp!1481910 tp!1481908))))

(assert (= (and b!5320611 ((_ is ElementMatch!14977) (regTwo!30466 (regTwo!30467 r!7292)))) b!5321858))

(assert (= (and b!5320611 ((_ is Concat!23822) (regTwo!30466 (regTwo!30467 r!7292)))) b!5321859))

(assert (= (and b!5320611 ((_ is Star!14977) (regTwo!30466 (regTwo!30467 r!7292)))) b!5321860))

(assert (= (and b!5320611 ((_ is Union!14977) (regTwo!30466 (regTwo!30467 r!7292)))) b!5321861))

(declare-fun b!5321863 () Bool)

(declare-fun e!3306237 () Bool)

(declare-fun tp!1481914 () Bool)

(declare-fun tp!1481912 () Bool)

(assert (=> b!5321863 (= e!3306237 (and tp!1481914 tp!1481912))))

(declare-fun b!5321864 () Bool)

(declare-fun tp!1481916 () Bool)

(assert (=> b!5321864 (= e!3306237 tp!1481916)))

(assert (=> b!5320583 (= tp!1481566 e!3306237)))

(declare-fun b!5321862 () Bool)

(assert (=> b!5321862 (= e!3306237 tp_is_empty!39207)))

(declare-fun b!5321865 () Bool)

(declare-fun tp!1481915 () Bool)

(declare-fun tp!1481913 () Bool)

(assert (=> b!5321865 (= e!3306237 (and tp!1481915 tp!1481913))))

(assert (= (and b!5320583 ((_ is ElementMatch!14977) (regOne!30467 (regOne!30466 r!7292)))) b!5321862))

(assert (= (and b!5320583 ((_ is Concat!23822) (regOne!30467 (regOne!30466 r!7292)))) b!5321863))

(assert (= (and b!5320583 ((_ is Star!14977) (regOne!30467 (regOne!30466 r!7292)))) b!5321864))

(assert (= (and b!5320583 ((_ is Union!14977) (regOne!30467 (regOne!30466 r!7292)))) b!5321865))

(declare-fun b!5321867 () Bool)

(declare-fun e!3306238 () Bool)

(declare-fun tp!1481919 () Bool)

(declare-fun tp!1481917 () Bool)

(assert (=> b!5321867 (= e!3306238 (and tp!1481919 tp!1481917))))

(declare-fun b!5321868 () Bool)

(declare-fun tp!1481921 () Bool)

(assert (=> b!5321868 (= e!3306238 tp!1481921)))

(assert (=> b!5320583 (= tp!1481564 e!3306238)))

(declare-fun b!5321866 () Bool)

(assert (=> b!5321866 (= e!3306238 tp_is_empty!39207)))

(declare-fun b!5321869 () Bool)

(declare-fun tp!1481920 () Bool)

(declare-fun tp!1481918 () Bool)

(assert (=> b!5321869 (= e!3306238 (and tp!1481920 tp!1481918))))

(assert (= (and b!5320583 ((_ is ElementMatch!14977) (regTwo!30467 (regOne!30466 r!7292)))) b!5321866))

(assert (= (and b!5320583 ((_ is Concat!23822) (regTwo!30467 (regOne!30466 r!7292)))) b!5321867))

(assert (= (and b!5320583 ((_ is Star!14977) (regTwo!30467 (regOne!30466 r!7292)))) b!5321868))

(assert (= (and b!5320583 ((_ is Union!14977) (regTwo!30467 (regOne!30466 r!7292)))) b!5321869))

(declare-fun b_lambda!204733 () Bool)

(assert (= b_lambda!204717 (or b!5320178 b_lambda!204733)))

(declare-fun bs!1233557 () Bool)

(declare-fun d!1709560 () Bool)

(assert (= bs!1233557 (and d!1709560 b!5320178)))

(assert (=> bs!1233557 (= (dynLambda!24156 lambda!271342 (h!67555 zl!343)) (>= lt!2171822 (contextDepth!50 (h!67555 zl!343))))))

(assert (=> bs!1233557 m!6355376))

(assert (=> b!5321378 d!1709560))

(declare-fun b_lambda!204735 () Bool)

(assert (= b_lambda!204727 (or d!1709004 b_lambda!204735)))

(declare-fun bs!1233558 () Bool)

(declare-fun d!1709562 () Bool)

(assert (= bs!1233558 (and d!1709562 d!1709004)))

(assert (=> bs!1233558 (= (dynLambda!24155 lambda!271367 (h!67554 (exprs!4861 (h!67555 zl!343)))) (validRegex!6713 (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(declare-fun m!6356786 () Bool)

(assert (=> bs!1233558 m!6356786))

(assert (=> b!5321618 d!1709562))

(declare-fun b_lambda!204737 () Bool)

(assert (= b_lambda!204725 (or b!5320159 b_lambda!204737)))

(declare-fun bs!1233559 () Bool)

(declare-fun d!1709564 () Bool)

(assert (= bs!1233559 (and d!1709564 b!5320159)))

(assert (=> bs!1233559 (= (dynLambda!24156 lambda!271339 (h!67555 lt!2171723)) (>= lt!2171817 (contextDepth!50 (h!67555 lt!2171723))))))

(assert (=> bs!1233559 m!6355352))

(assert (=> b!5321551 d!1709564))

(declare-fun b_lambda!204739 () Bool)

(assert (= b_lambda!204715 (or d!1708948 b_lambda!204739)))

(declare-fun bs!1233560 () Bool)

(declare-fun d!1709566 () Bool)

(assert (= bs!1233560 (and d!1709566 d!1708948)))

(assert (=> bs!1233560 (= (dynLambda!24155 lambda!271346 (h!67554 (exprs!4861 (h!67555 zl!343)))) (validRegex!6713 (h!67554 (exprs!4861 (h!67555 zl!343)))))))

(assert (=> bs!1233560 m!6356786))

(assert (=> b!5321330 d!1709566))

(declare-fun b_lambda!204741 () Bool)

(assert (= b_lambda!204685 (or d!1708944 b_lambda!204741)))

(declare-fun bs!1233561 () Bool)

(declare-fun d!1709568 () Bool)

(assert (= bs!1233561 (and d!1709568 d!1708944)))

(assert (=> bs!1233561 (= (dynLambda!24155 lambda!271345 (h!67554 (exprs!4861 setElem!34243))) (validRegex!6713 (h!67554 (exprs!4861 setElem!34243))))))

(declare-fun m!6356788 () Bool)

(assert (=> bs!1233561 m!6356788))

(assert (=> b!5321123 d!1709568))

(declare-fun b_lambda!204743 () Bool)

(assert (= b_lambda!204731 (or b!5320176 b_lambda!204743)))

(declare-fun bs!1233562 () Bool)

(declare-fun d!1709570 () Bool)

(assert (= bs!1233562 (and d!1709570 b!5320176)))

(assert (=> bs!1233562 (= (dynLambda!24156 lambda!271341 (h!67555 (t!374442 zl!343))) (>= lt!2171821 (contextDepth!50 (h!67555 (t!374442 zl!343)))))))

(assert (=> bs!1233562 m!6356762))

(assert (=> b!5321750 d!1709570))

(declare-fun b_lambda!204745 () Bool)

(assert (= b_lambda!204689 (or b!5320157 b_lambda!204745)))

(declare-fun bs!1233563 () Bool)

(declare-fun d!1709572 () Bool)

(assert (= bs!1233563 (and d!1709572 b!5320157)))

(assert (=> bs!1233563 (= (dynLambda!24156 lambda!271338 (h!67555 (t!374442 lt!2171723))) (>= lt!2171816 (contextDepth!50 (h!67555 (t!374442 lt!2171723)))))))

(assert (=> bs!1233563 m!6356244))

(assert (=> b!5321138 d!1709572))

(declare-fun b_lambda!204747 () Bool)

(assert (= b_lambda!204723 (or b!5319771 b_lambda!204747)))

(assert (=> d!1709436 d!1709020))

(declare-fun b_lambda!204749 () Bool)

(assert (= b_lambda!204719 (or d!1708952 b_lambda!204749)))

(declare-fun bs!1233564 () Bool)

(declare-fun d!1709574 () Bool)

(assert (= bs!1233564 (and d!1709574 d!1708952)))

(assert (=> bs!1233564 (= (dynLambda!24155 lambda!271352 (h!67554 lt!2171838)) (validRegex!6713 (h!67554 lt!2171838)))))

(declare-fun m!6356790 () Bool)

(assert (=> bs!1233564 m!6356790))

(assert (=> b!5321380 d!1709574))

(declare-fun b_lambda!204751 () Bool)

(assert (= b_lambda!204729 (or b!5319791 b_lambda!204751)))

(declare-fun bs!1233565 () Bool)

(declare-fun d!1709576 () Bool)

(assert (= bs!1233565 (and d!1709576 b!5319791)))

(assert (=> bs!1233565 (= (dynLambda!24155 lambda!271287 (h!67554 (t!374441 lt!2171737))) (validRegex!6713 (h!67554 (t!374441 lt!2171737))))))

(declare-fun m!6356792 () Bool)

(assert (=> bs!1233565 m!6356792))

(assert (=> b!5321695 d!1709576))

(declare-fun b_lambda!204753 () Bool)

(assert (= b_lambda!204721 (or d!1708950 b_lambda!204753)))

(declare-fun bs!1233566 () Bool)

(declare-fun d!1709578 () Bool)

(assert (= bs!1233566 (and d!1709578 d!1708950)))

(assert (=> bs!1233566 (= (dynLambda!24155 lambda!271349 (h!67554 (unfocusZipperList!419 zl!343))) (validRegex!6713 (h!67554 (unfocusZipperList!419 zl!343))))))

(declare-fun m!6356794 () Bool)

(assert (=> bs!1233566 m!6356794))

(assert (=> b!5321391 d!1709578))

(declare-fun b_lambda!204755 () Bool)

(assert (= b_lambda!204683 (or b!5319771 b_lambda!204755)))

(assert (=> d!1709266 d!1709018))

(check-sat (not d!1709556) (not bm!379991) (not b_lambda!204741) (not bm!379997) (not b!5321761) (not b!5321848) (not b!5321776) (not b!5321417) (not bm!380025) tp_is_empty!39207 (not b!5321800) (not b!5321752) (not b!5321420) (not b!5321516) (not bs!1233564) (not b_lambda!204745) (not bm!380050) (not bs!1233562) (not b!5321620) (not bm!380022) (not b!5321789) (not b!5321775) (not b!5321668) (not b!5321868) (not bm!379995) (not b!5321316) (not b!5321810) (not b_lambda!204743) (not b!5321869) (not b!5321468) (not d!1709436) (not bs!1233563) (not d!1709496) (not bm!379999) (not b!5321379) (not b!5321844) (not b!5321749) (not d!1709536) (not bm!380054) (not bm!380032) (not b!5321331) (not b!5321562) (not bm!380046) (not d!1709494) (not b!5321597) (not b!5321834) (not d!1709454) (not b!5321456) (not b!5321838) (not b!5321841) (not b!5321808) (not d!1709424) (not b!5321826) (not b!5321121) (not b!5321288) (not bm!379966) (not bm!380007) (not b!5321768) (not d!1709484) (not b!5321825) (not b!5321794) (not b!5321780) (not b!5321406) (not b!5321741) (not d!1709276) (not b!5321466) (not b!5321843) (not b!5321797) (not d!1709504) (not b!5321845) (not b!5321293) (not d!1709526) (not b!5321701) (not d!1709416) (not b!5321449) (not b!5321687) (not b!5321505) (not b_lambda!204657) (not bm!379971) (not bm!379968) (not b_lambda!204747) (not b!5321860) (not b!5321729) (not d!1709434) (not bm!380003) (not b!5321694) (not b!5321760) (not bs!1233560) (not b!5321455) (not b!5321818) (not b!5321742) (not b!5321743) (not b!5321717) (not b!5321517) (not d!1709298) (not bm!379959) (not bm!380041) (not bm!379984) (not b!5321747) (not b!5321751) (not b!5321765) (not b!5321829) (not b!5321566) (not b!5321464) (not b!5321696) (not b!5321769) (not b!5321465) (not b!5321470) (not bm!380049) (not b_lambda!204749) (not b!5321659) (not b!5321552) (not b!5321699) (not b!5321851) (not d!1709314) (not b!5321801) (not b!5321710) (not b!5321805) (not b!5321759) (not d!1709386) (not d!1709510) (not b!5321689) (not d!1709480) (not bm!380047) (not b!5321831) (not d!1709452) (not bm!380051) (not b!5321671) (not b!5321849) (not bm!379950) (not setNonEmpty!34258) (not b!5321840) (not b!5321738) (not b!5321867) (not b!5321783) (not bm!379982) (not bm!380031) (not d!1709490) (not b!5321518) (not b!5321784) (not b_lambda!204655) (not b!5321463) (not b!5321863) (not b!5321853) (not b!5321837) (not b!5321767) (not d!1709432) (not d!1709542) (not bm!379963) (not b!5321708) (not b!5321567) (not b!5321682) (not d!1709286) (not b!5321381) (not b!5321592) (not b!5321763) (not b!5321274) (not b!5321787) (not b!5321824) (not bm!379981) (not bm!380004) (not b!5321744) (not b!5321836) (not b!5321781) (not bm!380038) (not b!5321865) (not b!5321619) (not b!5321392) (not bm!379990) (not bm!379942) (not b!5321454) (not bm!379979) (not b!5321821) (not b!5321806) (not bs!1233557) (not b!5321779) (not b!5321292) (not b!5321709) (not bm!380048) (not d!1709446) (not b!5321681) (not d!1709518) (not bm!379953) (not bm!379956) (not setNonEmpty!34257) (not b!5321658) (not b!5321412) (not b!5321469) (not d!1709462) (not bm!379994) (not b!5321462) (not b!5321804) (not b!5321122) (not b!5321864) (not b!5321785) (not bm!379989) (not b!5321327) (not b!5321753) (not d!1709534) (not b!5321221) (not b!5321728) (not b!5321777) (not b!5321447) (not d!1709374) (not b!5321513) (not bm!380037) (not b!5321332) (not b!5321817) (not b!5321852) (not b!5321349) (not b!5321416) (not b!5321544) (not b!5321268) (not b_lambda!204751) (not d!1709264) (not b!5321130) (not b_lambda!204737) (not bm!379951) (not bm!379947) (not bm!379944) (not d!1709388) (not b!5321606) (not b!5321376) (not d!1709354) (not b!5321861) (not b!5321711) (not bs!1233565) (not b!5321855) (not bm!379986) (not b!5321704) (not d!1709498) (not b!5321702) (not b!5321828) (not bm!380001) (not b!5321473) (not bs!1233559) (not b!5321589) (not d!1709412) (not d!1709384) (not bm!379964) (not b!5321703) (not d!1709548) (not bm!380055) (not bm!380052) (not b!5321716) (not bs!1233566) (not b!5321556) (not b!5321757) (not b!5321305) (not d!1709418) (not b!5321739) (not b!5321764) (not b!5321289) (not b!5321859) (not b!5321724) (not b!5321452) (not b!5321756) (not b!5321833) (not bs!1233558) (not b!5321740) (not b!5321856) (not b!5321609) (not d!1709558) (not b!5321676) (not b!5321504) (not bm!379992) (not b!5321382) (not d!1709516) (not b!5321415) (not b!5321692) (not b!5321792) (not b_lambda!204735) (not b!5321788) (not b!5321822) (not bs!1233561) (not d!1709306) (not b!5321132) (not b!5321847) (not b!5321746) (not d!1709530) (not bm!380053) (not b!5321677) (not b!5321437) (not bm!379972) (not b!5321124) (not d!1709502) (not bm!379945) (not b_lambda!204755) (not b_lambda!204659) (not b!5321814) (not b!5321482) (not b!5321139) (not b!5321512) (not b!5321772) (not d!1709390) (not d!1709474) (not d!1709402) (not b!5321830) (not b!5321555) (not b_lambda!204753) (not d!1709532) (not b!5321839) (not bm!379998) (not b!5321565) (not bm!379962) (not bm!380006) (not b!5321812) (not b!5321680) (not bm!380026) (not b!5321224) (not b_lambda!204733) (not b!5321725) (not bm!380017) (not b!5321813) (not b!5321798) (not b!5321578) (not b!5321755) (not bm!380039) (not bm!380028) (not bm!380000) (not b!5321411) (not bm!380020) (not bm!380034) (not bm!380019) (not setNonEmpty!34259) (not b!5321294) (not b!5321404) (not b!5321670) (not b!5321732) (not d!1709392) (not b!5321561) (not b!5321835) (not b!5321802) (not b!5321773) (not b!5321790) (not b!5321405) (not b!5321793) (not b!5321401) (not b!5321816) (not b!5321733) (not b!5321283) (not d!1709422) (not b!5321820) (not d!1709438) (not bm!379957) (not b!5321857) (not d!1709538) (not b!5321726) (not b_lambda!204739) (not d!1709346) (not b!5321796) (not d!1709278) (not d!1709266) (not d!1709450) (not b!5321809) (not b!5321507) (not b!5321593) (not b!5321270) (not b!5321771))
(check-sat)
