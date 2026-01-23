; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!551878 () Bool)

(assert start!551878)

(declare-fun b!5217507 () Bool)

(assert (=> b!5217507 true))

(assert (=> b!5217507 true))

(declare-fun lambda!261768 () Int)

(declare-fun lambda!261767 () Int)

(assert (=> b!5217507 (not (= lambda!261768 lambda!261767))))

(assert (=> b!5217507 true))

(assert (=> b!5217507 true))

(declare-fun b!5217508 () Bool)

(assert (=> b!5217508 true))

(declare-fun b!5217492 () Bool)

(declare-fun e!3247750 () Bool)

(declare-datatypes ((C!29884 0))(
  ( (C!29885 (val!24644 Int)) )
))
(declare-datatypes ((Regex!14807 0))(
  ( (ElementMatch!14807 (c!900134 C!29884)) (Concat!23652 (regOne!30126 Regex!14807) (regTwo!30126 Regex!14807)) (EmptyExpr!14807) (Star!14807 (reg!15136 Regex!14807)) (EmptyLang!14807) (Union!14807 (regOne!30127 Regex!14807) (regTwo!30127 Regex!14807)) )
))
(declare-fun r!7292 () Regex!14807)

(declare-fun validRegex!6543 (Regex!14807) Bool)

(assert (=> b!5217492 (= e!3247750 (validRegex!6543 (regOne!30127 (regOne!30126 r!7292))))))

(declare-fun b!5217493 () Bool)

(declare-fun e!3247743 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!60720 0))(
  ( (Nil!60596) (Cons!60596 (h!67044 Regex!14807) (t!373888 List!60720)) )
))
(declare-datatypes ((Context!8382 0))(
  ( (Context!8383 (exprs!4691 List!60720)) )
))
(declare-fun lt!2143061 () (InoxSet Context!8382))

(declare-datatypes ((List!60721 0))(
  ( (Nil!60597) (Cons!60597 (h!67045 C!29884) (t!373889 List!60721)) )
))
(declare-fun s!2326 () List!60721)

(declare-fun matchZipper!1051 ((InoxSet Context!8382) List!60721) Bool)

(assert (=> b!5217493 (= e!3247743 (matchZipper!1051 lt!2143061 (t!373889 s!2326)))))

(declare-fun setElem!33171 () Context!8382)

(declare-fun setNonEmpty!33171 () Bool)

(declare-fun tp!1462901 () Bool)

(declare-fun setRes!33171 () Bool)

(declare-fun e!3247745 () Bool)

(declare-fun inv!80264 (Context!8382) Bool)

(assert (=> setNonEmpty!33171 (= setRes!33171 (and tp!1462901 (inv!80264 setElem!33171) e!3247745))))

(declare-fun z!1189 () (InoxSet Context!8382))

(declare-fun setRest!33171 () (InoxSet Context!8382))

(assert (=> setNonEmpty!33171 (= z!1189 ((_ map or) (store ((as const (Array Context!8382 Bool)) false) setElem!33171 true) setRest!33171))))

(declare-fun b!5217494 () Bool)

(declare-fun e!3247755 () Bool)

(declare-fun e!3247757 () Bool)

(assert (=> b!5217494 (= e!3247755 e!3247757)))

(declare-fun res!2215673 () Bool)

(assert (=> b!5217494 (=> res!2215673 e!3247757)))

(declare-fun e!3247752 () Bool)

(assert (=> b!5217494 (= res!2215673 e!3247752)))

(declare-fun res!2215664 () Bool)

(assert (=> b!5217494 (=> (not res!2215664) (not e!3247752))))

(declare-fun lt!2143051 () (InoxSet Context!8382))

(declare-fun lt!2143057 () Bool)

(assert (=> b!5217494 (= res!2215664 (not (= (matchZipper!1051 lt!2143051 (t!373889 s!2326)) lt!2143057)))))

(declare-fun lt!2143052 () (InoxSet Context!8382))

(assert (=> b!5217494 (= (matchZipper!1051 lt!2143052 (t!373889 s!2326)) e!3247743)))

(declare-fun res!2215672 () Bool)

(assert (=> b!5217494 (=> res!2215672 e!3247743)))

(assert (=> b!5217494 (= res!2215672 lt!2143057)))

(declare-fun lt!2143053 () (InoxSet Context!8382))

(assert (=> b!5217494 (= lt!2143057 (matchZipper!1051 lt!2143053 (t!373889 s!2326)))))

(declare-datatypes ((Unit!152494 0))(
  ( (Unit!152495) )
))
(declare-fun lt!2143054 () Unit!152494)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!44 ((InoxSet Context!8382) (InoxSet Context!8382) List!60721) Unit!152494)

(assert (=> b!5217494 (= lt!2143054 (lemmaZipperConcatMatchesSameAsBothZippers!44 lt!2143053 lt!2143061 (t!373889 s!2326)))))

(declare-fun setIsEmpty!33171 () Bool)

(assert (=> setIsEmpty!33171 setRes!33171))

(declare-fun b!5217496 () Bool)

(declare-fun e!3247756 () Bool)

(declare-fun e!3247749 () Bool)

(assert (=> b!5217496 (= e!3247756 (not e!3247749))))

(declare-fun res!2215667 () Bool)

(assert (=> b!5217496 (=> res!2215667 e!3247749)))

(declare-datatypes ((List!60722 0))(
  ( (Nil!60598) (Cons!60598 (h!67046 Context!8382) (t!373890 List!60722)) )
))
(declare-fun zl!343 () List!60722)

(get-info :version)

(assert (=> b!5217496 (= res!2215667 (not ((_ is Cons!60598) zl!343)))))

(declare-fun lt!2143063 () Bool)

(declare-fun matchRSpec!1910 (Regex!14807 List!60721) Bool)

(assert (=> b!5217496 (= lt!2143063 (matchRSpec!1910 r!7292 s!2326))))

(declare-fun matchR!6992 (Regex!14807 List!60721) Bool)

(assert (=> b!5217496 (= lt!2143063 (matchR!6992 r!7292 s!2326))))

(declare-fun lt!2143055 () Unit!152494)

(declare-fun mainMatchTheorem!1910 (Regex!14807 List!60721) Unit!152494)

(assert (=> b!5217496 (= lt!2143055 (mainMatchTheorem!1910 r!7292 s!2326))))

(declare-fun b!5217497 () Bool)

(declare-fun e!3247748 () Bool)

(declare-fun tp!1462897 () Bool)

(declare-fun tp!1462894 () Bool)

(assert (=> b!5217497 (= e!3247748 (and tp!1462897 tp!1462894))))

(declare-fun b!5217498 () Bool)

(declare-fun e!3247746 () Unit!152494)

(declare-fun Unit!152496 () Unit!152494)

(assert (=> b!5217498 (= e!3247746 Unit!152496)))

(declare-fun lt!2143067 () (InoxSet Context!8382))

(declare-fun lt!2143056 () Unit!152494)

(assert (=> b!5217498 (= lt!2143056 (lemmaZipperConcatMatchesSameAsBothZippers!44 lt!2143051 lt!2143067 (t!373889 s!2326)))))

(declare-fun res!2215668 () Bool)

(assert (=> b!5217498 (= res!2215668 (matchZipper!1051 lt!2143051 (t!373889 s!2326)))))

(declare-fun e!3247754 () Bool)

(assert (=> b!5217498 (=> res!2215668 e!3247754)))

(assert (=> b!5217498 (= (matchZipper!1051 ((_ map or) lt!2143051 lt!2143067) (t!373889 s!2326)) e!3247754)))

(declare-fun b!5217499 () Bool)

(declare-fun e!3247753 () Bool)

(declare-fun tp_is_empty!38867 () Bool)

(declare-fun tp!1462902 () Bool)

(assert (=> b!5217499 (= e!3247753 (and tp_is_empty!38867 tp!1462902))))

(declare-fun b!5217500 () Bool)

(declare-fun res!2215677 () Bool)

(assert (=> b!5217500 (=> res!2215677 e!3247749)))

(assert (=> b!5217500 (= res!2215677 (not ((_ is Cons!60596) (exprs!4691 (h!67046 zl!343)))))))

(declare-fun b!5217501 () Bool)

(assert (=> b!5217501 (= e!3247752 (not (matchZipper!1051 lt!2143061 (t!373889 s!2326))))))

(declare-fun b!5217502 () Bool)

(declare-fun res!2215662 () Bool)

(assert (=> b!5217502 (=> (not res!2215662) (not e!3247756))))

(declare-fun toList!8591 ((InoxSet Context!8382)) List!60722)

(assert (=> b!5217502 (= res!2215662 (= (toList!8591 z!1189) zl!343))))

(declare-fun b!5217503 () Bool)

(declare-fun tp!1462899 () Bool)

(declare-fun tp!1462900 () Bool)

(assert (=> b!5217503 (= e!3247748 (and tp!1462899 tp!1462900))))

(declare-fun b!5217504 () Bool)

(assert (=> b!5217504 (= e!3247757 e!3247750)))

(declare-fun res!2215675 () Bool)

(assert (=> b!5217504 (=> res!2215675 e!3247750)))

(declare-fun nullable!4976 (Regex!14807) Bool)

(assert (=> b!5217504 (= res!2215675 (nullable!4976 (regOne!30127 (regOne!30126 r!7292))))))

(declare-fun lt!2143059 () Context!8382)

(declare-fun lt!2143058 () (InoxSet Context!8382))

(declare-fun lambda!261769 () Int)

(declare-fun flatMap!534 ((InoxSet Context!8382) Int) (InoxSet Context!8382))

(declare-fun derivationStepZipperUp!179 (Context!8382 C!29884) (InoxSet Context!8382))

(assert (=> b!5217504 (= (flatMap!534 lt!2143058 lambda!261769) (derivationStepZipperUp!179 lt!2143059 (h!67045 s!2326)))))

(declare-fun lt!2143069 () Unit!152494)

(declare-fun lemmaFlatMapOnSingletonSet!66 ((InoxSet Context!8382) Context!8382 Int) Unit!152494)

(assert (=> b!5217504 (= lt!2143069 (lemmaFlatMapOnSingletonSet!66 lt!2143058 lt!2143059 lambda!261769))))

(declare-fun lt!2143064 () (InoxSet Context!8382))

(assert (=> b!5217504 (= lt!2143064 (derivationStepZipperUp!179 lt!2143059 (h!67045 s!2326)))))

(assert (=> b!5217504 (= lt!2143058 (store ((as const (Array Context!8382 Bool)) false) lt!2143059 true))))

(assert (=> b!5217504 (= lt!2143059 (Context!8383 (Cons!60596 (regOne!30127 (regOne!30126 r!7292)) (t!373888 (exprs!4691 (h!67046 zl!343))))))))

(declare-fun b!5217505 () Bool)

(declare-fun Unit!152497 () Unit!152494)

(assert (=> b!5217505 (= e!3247746 Unit!152497)))

(declare-fun b!5217506 () Bool)

(assert (=> b!5217506 (= e!3247748 tp_is_empty!38867)))

(declare-fun e!3247747 () Bool)

(assert (=> b!5217507 (= e!3247749 e!3247747)))

(declare-fun res!2215666 () Bool)

(assert (=> b!5217507 (=> res!2215666 e!3247747)))

(declare-fun lt!2143049 () Bool)

(assert (=> b!5217507 (= res!2215666 (or (not (= lt!2143063 lt!2143049)) ((_ is Nil!60597) s!2326)))))

(declare-fun Exists!1988 (Int) Bool)

(assert (=> b!5217507 (= (Exists!1988 lambda!261767) (Exists!1988 lambda!261768))))

(declare-fun lt!2143062 () Unit!152494)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!642 (Regex!14807 Regex!14807 List!60721) Unit!152494)

(assert (=> b!5217507 (= lt!2143062 (lemmaExistCutMatchRandMatchRSpecEquivalent!642 (regOne!30126 r!7292) (regTwo!30126 r!7292) s!2326))))

(assert (=> b!5217507 (= lt!2143049 (Exists!1988 lambda!261767))))

(declare-datatypes ((tuple2!64012 0))(
  ( (tuple2!64013 (_1!35309 List!60721) (_2!35309 List!60721)) )
))
(declare-datatypes ((Option!14918 0))(
  ( (None!14917) (Some!14917 (v!50946 tuple2!64012)) )
))
(declare-fun isDefined!11621 (Option!14918) Bool)

(declare-fun findConcatSeparation!1332 (Regex!14807 Regex!14807 List!60721 List!60721 List!60721) Option!14918)

(assert (=> b!5217507 (= lt!2143049 (isDefined!11621 (findConcatSeparation!1332 (regOne!30126 r!7292) (regTwo!30126 r!7292) Nil!60597 s!2326 s!2326)))))

(declare-fun lt!2143068 () Unit!152494)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1096 (Regex!14807 Regex!14807 List!60721) Unit!152494)

(assert (=> b!5217507 (= lt!2143068 (lemmaFindConcatSeparationEquivalentToExists!1096 (regOne!30126 r!7292) (regTwo!30126 r!7292) s!2326))))

(declare-fun e!3247742 () Bool)

(assert (=> b!5217508 (= e!3247747 e!3247742)))

(declare-fun res!2215665 () Bool)

(assert (=> b!5217508 (=> res!2215665 e!3247742)))

(assert (=> b!5217508 (= res!2215665 (or (and ((_ is ElementMatch!14807) (regOne!30126 r!7292)) (= (c!900134 (regOne!30126 r!7292)) (h!67045 s!2326))) (not ((_ is Union!14807) (regOne!30126 r!7292)))))))

(declare-fun lt!2143050 () Unit!152494)

(assert (=> b!5217508 (= lt!2143050 e!3247746)))

(declare-fun c!900133 () Bool)

(assert (=> b!5217508 (= c!900133 (nullable!4976 (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(assert (=> b!5217508 (= (flatMap!534 z!1189 lambda!261769) (derivationStepZipperUp!179 (h!67046 zl!343) (h!67045 s!2326)))))

(declare-fun lt!2143060 () Unit!152494)

(assert (=> b!5217508 (= lt!2143060 (lemmaFlatMapOnSingletonSet!66 z!1189 (h!67046 zl!343) lambda!261769))))

(declare-fun lt!2143066 () Context!8382)

(assert (=> b!5217508 (= lt!2143067 (derivationStepZipperUp!179 lt!2143066 (h!67045 s!2326)))))

(declare-fun derivationStepZipperDown!255 (Regex!14807 Context!8382 C!29884) (InoxSet Context!8382))

(assert (=> b!5217508 (= lt!2143051 (derivationStepZipperDown!255 (h!67044 (exprs!4691 (h!67046 zl!343))) lt!2143066 (h!67045 s!2326)))))

(assert (=> b!5217508 (= lt!2143066 (Context!8383 (t!373888 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun lt!2143065 () (InoxSet Context!8382))

(assert (=> b!5217508 (= lt!2143065 (derivationStepZipperUp!179 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343))))) (h!67045 s!2326)))))

(declare-fun b!5217509 () Bool)

(declare-fun res!2215669 () Bool)

(assert (=> b!5217509 (=> (not res!2215669) (not e!3247756))))

(declare-fun unfocusZipper!549 (List!60722) Regex!14807)

(assert (=> b!5217509 (= res!2215669 (= r!7292 (unfocusZipper!549 zl!343)))))

(declare-fun res!2215671 () Bool)

(assert (=> start!551878 (=> (not res!2215671) (not e!3247756))))

(assert (=> start!551878 (= res!2215671 (validRegex!6543 r!7292))))

(assert (=> start!551878 e!3247756))

(assert (=> start!551878 e!3247748))

(declare-fun condSetEmpty!33171 () Bool)

(assert (=> start!551878 (= condSetEmpty!33171 (= z!1189 ((as const (Array Context!8382 Bool)) false)))))

(assert (=> start!551878 setRes!33171))

(declare-fun e!3247751 () Bool)

(assert (=> start!551878 e!3247751))

(assert (=> start!551878 e!3247753))

(declare-fun e!3247744 () Bool)

(declare-fun tp!1462903 () Bool)

(declare-fun b!5217495 () Bool)

(assert (=> b!5217495 (= e!3247751 (and (inv!80264 (h!67046 zl!343)) e!3247744 tp!1462903))))

(declare-fun b!5217510 () Bool)

(declare-fun res!2215670 () Bool)

(assert (=> b!5217510 (=> res!2215670 e!3247749)))

(declare-fun generalisedConcat!476 (List!60720) Regex!14807)

(assert (=> b!5217510 (= res!2215670 (not (= r!7292 (generalisedConcat!476 (exprs!4691 (h!67046 zl!343))))))))

(declare-fun b!5217511 () Bool)

(declare-fun res!2215663 () Bool)

(assert (=> b!5217511 (=> res!2215663 e!3247749)))

(declare-fun isEmpty!32513 (List!60722) Bool)

(assert (=> b!5217511 (= res!2215663 (not (isEmpty!32513 (t!373890 zl!343))))))

(declare-fun b!5217512 () Bool)

(declare-fun tp!1462896 () Bool)

(assert (=> b!5217512 (= e!3247748 tp!1462896)))

(declare-fun b!5217513 () Bool)

(declare-fun res!2215660 () Bool)

(assert (=> b!5217513 (=> res!2215660 e!3247749)))

(declare-fun generalisedUnion!736 (List!60720) Regex!14807)

(declare-fun unfocusZipperList!249 (List!60722) List!60720)

(assert (=> b!5217513 (= res!2215660 (not (= r!7292 (generalisedUnion!736 (unfocusZipperList!249 zl!343)))))))

(declare-fun b!5217514 () Bool)

(declare-fun res!2215674 () Bool)

(assert (=> b!5217514 (=> res!2215674 e!3247749)))

(assert (=> b!5217514 (= res!2215674 (or ((_ is EmptyExpr!14807) r!7292) ((_ is EmptyLang!14807) r!7292) ((_ is ElementMatch!14807) r!7292) ((_ is Union!14807) r!7292) (not ((_ is Concat!23652) r!7292))))))

(declare-fun b!5217515 () Bool)

(assert (=> b!5217515 (= e!3247754 (matchZipper!1051 lt!2143067 (t!373889 s!2326)))))

(declare-fun b!5217516 () Bool)

(declare-fun tp!1462898 () Bool)

(assert (=> b!5217516 (= e!3247744 tp!1462898)))

(declare-fun b!5217517 () Bool)

(declare-fun res!2215661 () Bool)

(assert (=> b!5217517 (=> res!2215661 e!3247747)))

(declare-fun isEmpty!32514 (List!60720) Bool)

(assert (=> b!5217517 (= res!2215661 (isEmpty!32514 (t!373888 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun b!5217518 () Bool)

(declare-fun tp!1462895 () Bool)

(assert (=> b!5217518 (= e!3247745 tp!1462895)))

(declare-fun b!5217519 () Bool)

(assert (=> b!5217519 (= e!3247742 e!3247755)))

(declare-fun res!2215676 () Bool)

(assert (=> b!5217519 (=> res!2215676 e!3247755)))

(assert (=> b!5217519 (= res!2215676 (not (= lt!2143051 lt!2143052)))))

(assert (=> b!5217519 (= lt!2143052 ((_ map or) lt!2143053 lt!2143061))))

(assert (=> b!5217519 (= lt!2143061 (derivationStepZipperDown!255 (regTwo!30127 (regOne!30126 r!7292)) lt!2143066 (h!67045 s!2326)))))

(assert (=> b!5217519 (= lt!2143053 (derivationStepZipperDown!255 (regOne!30127 (regOne!30126 r!7292)) lt!2143066 (h!67045 s!2326)))))

(assert (= (and start!551878 res!2215671) b!5217502))

(assert (= (and b!5217502 res!2215662) b!5217509))

(assert (= (and b!5217509 res!2215669) b!5217496))

(assert (= (and b!5217496 (not res!2215667)) b!5217511))

(assert (= (and b!5217511 (not res!2215663)) b!5217510))

(assert (= (and b!5217510 (not res!2215670)) b!5217500))

(assert (= (and b!5217500 (not res!2215677)) b!5217513))

(assert (= (and b!5217513 (not res!2215660)) b!5217514))

(assert (= (and b!5217514 (not res!2215674)) b!5217507))

(assert (= (and b!5217507 (not res!2215666)) b!5217517))

(assert (= (and b!5217517 (not res!2215661)) b!5217508))

(assert (= (and b!5217508 c!900133) b!5217498))

(assert (= (and b!5217508 (not c!900133)) b!5217505))

(assert (= (and b!5217498 (not res!2215668)) b!5217515))

(assert (= (and b!5217508 (not res!2215665)) b!5217519))

(assert (= (and b!5217519 (not res!2215676)) b!5217494))

(assert (= (and b!5217494 (not res!2215672)) b!5217493))

(assert (= (and b!5217494 res!2215664) b!5217501))

(assert (= (and b!5217494 (not res!2215673)) b!5217504))

(assert (= (and b!5217504 (not res!2215675)) b!5217492))

(assert (= (and start!551878 ((_ is ElementMatch!14807) r!7292)) b!5217506))

(assert (= (and start!551878 ((_ is Concat!23652) r!7292)) b!5217497))

(assert (= (and start!551878 ((_ is Star!14807) r!7292)) b!5217512))

(assert (= (and start!551878 ((_ is Union!14807) r!7292)) b!5217503))

(assert (= (and start!551878 condSetEmpty!33171) setIsEmpty!33171))

(assert (= (and start!551878 (not condSetEmpty!33171)) setNonEmpty!33171))

(assert (= setNonEmpty!33171 b!5217518))

(assert (= b!5217495 b!5217516))

(assert (= (and start!551878 ((_ is Cons!60598) zl!343)) b!5217495))

(assert (= (and start!551878 ((_ is Cons!60597) s!2326)) b!5217499))

(declare-fun m!6265770 () Bool)

(assert (=> b!5217513 m!6265770))

(assert (=> b!5217513 m!6265770))

(declare-fun m!6265772 () Bool)

(assert (=> b!5217513 m!6265772))

(declare-fun m!6265774 () Bool)

(assert (=> b!5217504 m!6265774))

(declare-fun m!6265776 () Bool)

(assert (=> b!5217504 m!6265776))

(declare-fun m!6265778 () Bool)

(assert (=> b!5217504 m!6265778))

(declare-fun m!6265780 () Bool)

(assert (=> b!5217504 m!6265780))

(declare-fun m!6265782 () Bool)

(assert (=> b!5217504 m!6265782))

(declare-fun m!6265784 () Bool)

(assert (=> b!5217515 m!6265784))

(declare-fun m!6265786 () Bool)

(assert (=> b!5217508 m!6265786))

(declare-fun m!6265788 () Bool)

(assert (=> b!5217508 m!6265788))

(declare-fun m!6265790 () Bool)

(assert (=> b!5217508 m!6265790))

(declare-fun m!6265792 () Bool)

(assert (=> b!5217508 m!6265792))

(declare-fun m!6265794 () Bool)

(assert (=> b!5217508 m!6265794))

(declare-fun m!6265796 () Bool)

(assert (=> b!5217508 m!6265796))

(declare-fun m!6265798 () Bool)

(assert (=> b!5217508 m!6265798))

(declare-fun m!6265800 () Bool)

(assert (=> b!5217502 m!6265800))

(declare-fun m!6265802 () Bool)

(assert (=> b!5217492 m!6265802))

(declare-fun m!6265804 () Bool)

(assert (=> b!5217494 m!6265804))

(declare-fun m!6265806 () Bool)

(assert (=> b!5217494 m!6265806))

(declare-fun m!6265808 () Bool)

(assert (=> b!5217494 m!6265808))

(declare-fun m!6265810 () Bool)

(assert (=> b!5217494 m!6265810))

(declare-fun m!6265812 () Bool)

(assert (=> start!551878 m!6265812))

(declare-fun m!6265814 () Bool)

(assert (=> b!5217511 m!6265814))

(declare-fun m!6265816 () Bool)

(assert (=> b!5217501 m!6265816))

(declare-fun m!6265818 () Bool)

(assert (=> b!5217507 m!6265818))

(declare-fun m!6265820 () Bool)

(assert (=> b!5217507 m!6265820))

(declare-fun m!6265822 () Bool)

(assert (=> b!5217507 m!6265822))

(assert (=> b!5217507 m!6265818))

(declare-fun m!6265824 () Bool)

(assert (=> b!5217507 m!6265824))

(declare-fun m!6265826 () Bool)

(assert (=> b!5217507 m!6265826))

(assert (=> b!5217507 m!6265824))

(declare-fun m!6265828 () Bool)

(assert (=> b!5217507 m!6265828))

(assert (=> b!5217493 m!6265816))

(declare-fun m!6265830 () Bool)

(assert (=> b!5217517 m!6265830))

(declare-fun m!6265832 () Bool)

(assert (=> b!5217496 m!6265832))

(declare-fun m!6265834 () Bool)

(assert (=> b!5217496 m!6265834))

(declare-fun m!6265836 () Bool)

(assert (=> b!5217496 m!6265836))

(declare-fun m!6265838 () Bool)

(assert (=> setNonEmpty!33171 m!6265838))

(declare-fun m!6265840 () Bool)

(assert (=> b!5217495 m!6265840))

(declare-fun m!6265842 () Bool)

(assert (=> b!5217510 m!6265842))

(declare-fun m!6265844 () Bool)

(assert (=> b!5217498 m!6265844))

(assert (=> b!5217498 m!6265804))

(declare-fun m!6265846 () Bool)

(assert (=> b!5217498 m!6265846))

(declare-fun m!6265848 () Bool)

(assert (=> b!5217509 m!6265848))

(declare-fun m!6265850 () Bool)

(assert (=> b!5217519 m!6265850))

(declare-fun m!6265852 () Bool)

(assert (=> b!5217519 m!6265852))

(check-sat (not b!5217496) (not b!5217518) tp_is_empty!38867 (not b!5217499) (not b!5217495) (not setNonEmpty!33171) (not b!5217511) (not b!5217513) (not b!5217501) (not b!5217508) (not b!5217492) (not b!5217504) (not b!5217497) (not b!5217493) (not b!5217519) (not b!5217516) (not b!5217517) (not b!5217507) (not b!5217509) (not b!5217494) (not start!551878) (not b!5217498) (not b!5217510) (not b!5217512) (not b!5217503) (not b!5217502) (not b!5217515))
(check-sat)
(get-model)

(declare-fun d!1682247 () Bool)

(assert (=> d!1682247 (= (isEmpty!32514 (t!373888 (exprs!4691 (h!67046 zl!343)))) ((_ is Nil!60596) (t!373888 (exprs!4691 (h!67046 zl!343)))))))

(assert (=> b!5217517 d!1682247))

(declare-fun bs!1211889 () Bool)

(declare-fun b!5217799 () Bool)

(assert (= bs!1211889 (and b!5217799 b!5217507)))

(declare-fun lambda!261802 () Int)

(assert (=> bs!1211889 (not (= lambda!261802 lambda!261767))))

(assert (=> bs!1211889 (not (= lambda!261802 lambda!261768))))

(assert (=> b!5217799 true))

(assert (=> b!5217799 true))

(declare-fun bs!1211890 () Bool)

(declare-fun b!5217803 () Bool)

(assert (= bs!1211890 (and b!5217803 b!5217507)))

(declare-fun lambda!261803 () Int)

(assert (=> bs!1211890 (not (= lambda!261803 lambda!261767))))

(assert (=> bs!1211890 (= lambda!261803 lambda!261768)))

(declare-fun bs!1211891 () Bool)

(assert (= bs!1211891 (and b!5217803 b!5217799)))

(assert (=> bs!1211891 (not (= lambda!261803 lambda!261802))))

(assert (=> b!5217803 true))

(assert (=> b!5217803 true))

(declare-fun e!3247916 () Bool)

(declare-fun call!367961 () Bool)

(assert (=> b!5217799 (= e!3247916 call!367961)))

(declare-fun b!5217800 () Bool)

(declare-fun c!900221 () Bool)

(assert (=> b!5217800 (= c!900221 ((_ is ElementMatch!14807) r!7292))))

(declare-fun e!3247914 () Bool)

(declare-fun e!3247917 () Bool)

(assert (=> b!5217800 (= e!3247914 e!3247917)))

(declare-fun bm!367956 () Bool)

(declare-fun call!367962 () Bool)

(declare-fun isEmpty!32517 (List!60721) Bool)

(assert (=> bm!367956 (= call!367962 (isEmpty!32517 s!2326))))

(declare-fun d!1682257 () Bool)

(declare-fun c!900224 () Bool)

(assert (=> d!1682257 (= c!900224 ((_ is EmptyExpr!14807) r!7292))))

(declare-fun e!3247915 () Bool)

(assert (=> d!1682257 (= (matchRSpec!1910 r!7292 s!2326) e!3247915)))

(declare-fun c!900223 () Bool)

(declare-fun bm!367957 () Bool)

(assert (=> bm!367957 (= call!367961 (Exists!1988 (ite c!900223 lambda!261802 lambda!261803)))))

(declare-fun b!5217801 () Bool)

(declare-fun e!3247913 () Bool)

(declare-fun e!3247919 () Bool)

(assert (=> b!5217801 (= e!3247913 e!3247919)))

(declare-fun res!2215780 () Bool)

(assert (=> b!5217801 (= res!2215780 (matchRSpec!1910 (regOne!30127 r!7292) s!2326))))

(assert (=> b!5217801 (=> res!2215780 e!3247919)))

(declare-fun b!5217802 () Bool)

(assert (=> b!5217802 (= e!3247919 (matchRSpec!1910 (regTwo!30127 r!7292) s!2326))))

(declare-fun e!3247918 () Bool)

(assert (=> b!5217803 (= e!3247918 call!367961)))

(declare-fun b!5217804 () Bool)

(assert (=> b!5217804 (= e!3247915 e!3247914)))

(declare-fun res!2215779 () Bool)

(assert (=> b!5217804 (= res!2215779 (not ((_ is EmptyLang!14807) r!7292)))))

(assert (=> b!5217804 (=> (not res!2215779) (not e!3247914))))

(declare-fun b!5217805 () Bool)

(assert (=> b!5217805 (= e!3247917 (= s!2326 (Cons!60597 (c!900134 r!7292) Nil!60597)))))

(declare-fun b!5217806 () Bool)

(declare-fun c!900222 () Bool)

(assert (=> b!5217806 (= c!900222 ((_ is Union!14807) r!7292))))

(assert (=> b!5217806 (= e!3247917 e!3247913)))

(declare-fun b!5217807 () Bool)

(declare-fun res!2215781 () Bool)

(assert (=> b!5217807 (=> res!2215781 e!3247916)))

(assert (=> b!5217807 (= res!2215781 call!367962)))

(assert (=> b!5217807 (= e!3247918 e!3247916)))

(declare-fun b!5217808 () Bool)

(assert (=> b!5217808 (= e!3247913 e!3247918)))

(assert (=> b!5217808 (= c!900223 ((_ is Star!14807) r!7292))))

(declare-fun b!5217809 () Bool)

(assert (=> b!5217809 (= e!3247915 call!367962)))

(assert (= (and d!1682257 c!900224) b!5217809))

(assert (= (and d!1682257 (not c!900224)) b!5217804))

(assert (= (and b!5217804 res!2215779) b!5217800))

(assert (= (and b!5217800 c!900221) b!5217805))

(assert (= (and b!5217800 (not c!900221)) b!5217806))

(assert (= (and b!5217806 c!900222) b!5217801))

(assert (= (and b!5217806 (not c!900222)) b!5217808))

(assert (= (and b!5217801 (not res!2215780)) b!5217802))

(assert (= (and b!5217808 c!900223) b!5217807))

(assert (= (and b!5217808 (not c!900223)) b!5217803))

(assert (= (and b!5217807 (not res!2215781)) b!5217799))

(assert (= (or b!5217799 b!5217803) bm!367957))

(assert (= (or b!5217809 b!5217807) bm!367956))

(declare-fun m!6266026 () Bool)

(assert (=> bm!367956 m!6266026))

(declare-fun m!6266028 () Bool)

(assert (=> bm!367957 m!6266028))

(declare-fun m!6266030 () Bool)

(assert (=> b!5217801 m!6266030))

(declare-fun m!6266032 () Bool)

(assert (=> b!5217802 m!6266032))

(assert (=> b!5217496 d!1682257))

(declare-fun b!5217905 () Bool)

(declare-fun e!3247980 () Bool)

(declare-fun e!3247982 () Bool)

(assert (=> b!5217905 (= e!3247980 e!3247982)))

(declare-fun res!2215829 () Bool)

(assert (=> b!5217905 (=> res!2215829 e!3247982)))

(declare-fun call!367981 () Bool)

(assert (=> b!5217905 (= res!2215829 call!367981)))

(declare-fun b!5217906 () Bool)

(declare-fun res!2215832 () Bool)

(declare-fun e!3247985 () Bool)

(assert (=> b!5217906 (=> res!2215832 e!3247985)))

(assert (=> b!5217906 (= res!2215832 (not ((_ is ElementMatch!14807) r!7292)))))

(declare-fun e!3247983 () Bool)

(assert (=> b!5217906 (= e!3247983 e!3247985)))

(declare-fun b!5217907 () Bool)

(declare-fun res!2215831 () Bool)

(assert (=> b!5217907 (=> res!2215831 e!3247982)))

(declare-fun tail!10282 (List!60721) List!60721)

(assert (=> b!5217907 (= res!2215831 (not (isEmpty!32517 (tail!10282 s!2326))))))

(declare-fun b!5217908 () Bool)

(declare-fun res!2215833 () Bool)

(declare-fun e!3247984 () Bool)

(assert (=> b!5217908 (=> (not res!2215833) (not e!3247984))))

(assert (=> b!5217908 (= res!2215833 (not call!367981))))

(declare-fun bm!367976 () Bool)

(assert (=> bm!367976 (= call!367981 (isEmpty!32517 s!2326))))

(declare-fun b!5217909 () Bool)

(declare-fun e!3247981 () Bool)

(declare-fun lt!2143112 () Bool)

(assert (=> b!5217909 (= e!3247981 (= lt!2143112 call!367981))))

(declare-fun b!5217910 () Bool)

(declare-fun e!3247979 () Bool)

(declare-fun derivativeStep!4055 (Regex!14807 C!29884) Regex!14807)

(declare-fun head!11185 (List!60721) C!29884)

(assert (=> b!5217910 (= e!3247979 (matchR!6992 (derivativeStep!4055 r!7292 (head!11185 s!2326)) (tail!10282 s!2326)))))

(declare-fun d!1682263 () Bool)

(assert (=> d!1682263 e!3247981))

(declare-fun c!900250 () Bool)

(assert (=> d!1682263 (= c!900250 ((_ is EmptyExpr!14807) r!7292))))

(assert (=> d!1682263 (= lt!2143112 e!3247979)))

(declare-fun c!900251 () Bool)

(assert (=> d!1682263 (= c!900251 (isEmpty!32517 s!2326))))

(assert (=> d!1682263 (validRegex!6543 r!7292)))

(assert (=> d!1682263 (= (matchR!6992 r!7292 s!2326) lt!2143112)))

(declare-fun b!5217911 () Bool)

(assert (=> b!5217911 (= e!3247984 (= (head!11185 s!2326) (c!900134 r!7292)))))

(declare-fun b!5217912 () Bool)

(assert (=> b!5217912 (= e!3247985 e!3247980)))

(declare-fun res!2215830 () Bool)

(assert (=> b!5217912 (=> (not res!2215830) (not e!3247980))))

(assert (=> b!5217912 (= res!2215830 (not lt!2143112))))

(declare-fun b!5217913 () Bool)

(assert (=> b!5217913 (= e!3247981 e!3247983)))

(declare-fun c!900249 () Bool)

(assert (=> b!5217913 (= c!900249 ((_ is EmptyLang!14807) r!7292))))

(declare-fun b!5217914 () Bool)

(declare-fun res!2215834 () Bool)

(assert (=> b!5217914 (=> res!2215834 e!3247985)))

(assert (=> b!5217914 (= res!2215834 e!3247984)))

(declare-fun res!2215835 () Bool)

(assert (=> b!5217914 (=> (not res!2215835) (not e!3247984))))

(assert (=> b!5217914 (= res!2215835 lt!2143112)))

(declare-fun b!5217915 () Bool)

(assert (=> b!5217915 (= e!3247982 (not (= (head!11185 s!2326) (c!900134 r!7292))))))

(declare-fun b!5217916 () Bool)

(assert (=> b!5217916 (= e!3247979 (nullable!4976 r!7292))))

(declare-fun b!5217917 () Bool)

(declare-fun res!2215836 () Bool)

(assert (=> b!5217917 (=> (not res!2215836) (not e!3247984))))

(assert (=> b!5217917 (= res!2215836 (isEmpty!32517 (tail!10282 s!2326)))))

(declare-fun b!5217918 () Bool)

(assert (=> b!5217918 (= e!3247983 (not lt!2143112))))

(assert (= (and d!1682263 c!900251) b!5217916))

(assert (= (and d!1682263 (not c!900251)) b!5217910))

(assert (= (and d!1682263 c!900250) b!5217909))

(assert (= (and d!1682263 (not c!900250)) b!5217913))

(assert (= (and b!5217913 c!900249) b!5217918))

(assert (= (and b!5217913 (not c!900249)) b!5217906))

(assert (= (and b!5217906 (not res!2215832)) b!5217914))

(assert (= (and b!5217914 res!2215835) b!5217908))

(assert (= (and b!5217908 res!2215833) b!5217917))

(assert (= (and b!5217917 res!2215836) b!5217911))

(assert (= (and b!5217914 (not res!2215834)) b!5217912))

(assert (= (and b!5217912 res!2215830) b!5217905))

(assert (= (and b!5217905 (not res!2215829)) b!5217907))

(assert (= (and b!5217907 (not res!2215831)) b!5217915))

(assert (= (or b!5217909 b!5217905 b!5217908) bm!367976))

(declare-fun m!6266076 () Bool)

(assert (=> b!5217911 m!6266076))

(declare-fun m!6266078 () Bool)

(assert (=> b!5217916 m!6266078))

(assert (=> b!5217915 m!6266076))

(assert (=> b!5217910 m!6266076))

(assert (=> b!5217910 m!6266076))

(declare-fun m!6266080 () Bool)

(assert (=> b!5217910 m!6266080))

(declare-fun m!6266082 () Bool)

(assert (=> b!5217910 m!6266082))

(assert (=> b!5217910 m!6266080))

(assert (=> b!5217910 m!6266082))

(declare-fun m!6266084 () Bool)

(assert (=> b!5217910 m!6266084))

(assert (=> b!5217917 m!6266082))

(assert (=> b!5217917 m!6266082))

(declare-fun m!6266086 () Bool)

(assert (=> b!5217917 m!6266086))

(assert (=> b!5217907 m!6266082))

(assert (=> b!5217907 m!6266082))

(assert (=> b!5217907 m!6266086))

(assert (=> d!1682263 m!6266026))

(assert (=> d!1682263 m!6265812))

(assert (=> bm!367976 m!6266026))

(assert (=> b!5217496 d!1682263))

(declare-fun d!1682289 () Bool)

(assert (=> d!1682289 (= (matchR!6992 r!7292 s!2326) (matchRSpec!1910 r!7292 s!2326))))

(declare-fun lt!2143119 () Unit!152494)

(declare-fun choose!38800 (Regex!14807 List!60721) Unit!152494)

(assert (=> d!1682289 (= lt!2143119 (choose!38800 r!7292 s!2326))))

(assert (=> d!1682289 (validRegex!6543 r!7292)))

(assert (=> d!1682289 (= (mainMatchTheorem!1910 r!7292 s!2326) lt!2143119)))

(declare-fun bs!1211900 () Bool)

(assert (= bs!1211900 d!1682289))

(assert (=> bs!1211900 m!6265834))

(assert (=> bs!1211900 m!6265832))

(declare-fun m!6266120 () Bool)

(assert (=> bs!1211900 m!6266120))

(assert (=> bs!1211900 m!6265812))

(assert (=> b!5217496 d!1682289))

(declare-fun b!5218017 () Bool)

(declare-fun e!3248038 () Bool)

(declare-fun lt!2143127 () Option!14918)

(assert (=> b!5218017 (= e!3248038 (not (isDefined!11621 lt!2143127)))))

(declare-fun d!1682299 () Bool)

(assert (=> d!1682299 e!3248038))

(declare-fun res!2215851 () Bool)

(assert (=> d!1682299 (=> res!2215851 e!3248038)))

(declare-fun e!3248036 () Bool)

(assert (=> d!1682299 (= res!2215851 e!3248036)))

(declare-fun res!2215854 () Bool)

(assert (=> d!1682299 (=> (not res!2215854) (not e!3248036))))

(assert (=> d!1682299 (= res!2215854 (isDefined!11621 lt!2143127))))

(declare-fun e!3248037 () Option!14918)

(assert (=> d!1682299 (= lt!2143127 e!3248037)))

(declare-fun c!900268 () Bool)

(declare-fun e!3248034 () Bool)

(assert (=> d!1682299 (= c!900268 e!3248034)))

(declare-fun res!2215855 () Bool)

(assert (=> d!1682299 (=> (not res!2215855) (not e!3248034))))

(assert (=> d!1682299 (= res!2215855 (matchR!6992 (regOne!30126 r!7292) Nil!60597))))

(assert (=> d!1682299 (validRegex!6543 (regOne!30126 r!7292))))

(assert (=> d!1682299 (= (findConcatSeparation!1332 (regOne!30126 r!7292) (regTwo!30126 r!7292) Nil!60597 s!2326 s!2326) lt!2143127)))

(declare-fun b!5218018 () Bool)

(declare-fun res!2215852 () Bool)

(assert (=> b!5218018 (=> (not res!2215852) (not e!3248036))))

(declare-fun get!20822 (Option!14918) tuple2!64012)

(assert (=> b!5218018 (= res!2215852 (matchR!6992 (regTwo!30126 r!7292) (_2!35309 (get!20822 lt!2143127))))))

(declare-fun b!5218019 () Bool)

(assert (=> b!5218019 (= e!3248037 (Some!14917 (tuple2!64013 Nil!60597 s!2326)))))

(declare-fun b!5218020 () Bool)

(declare-fun ++!13213 (List!60721 List!60721) List!60721)

(assert (=> b!5218020 (= e!3248036 (= (++!13213 (_1!35309 (get!20822 lt!2143127)) (_2!35309 (get!20822 lt!2143127))) s!2326))))

(declare-fun b!5218021 () Bool)

(declare-fun res!2215853 () Bool)

(assert (=> b!5218021 (=> (not res!2215853) (not e!3248036))))

(assert (=> b!5218021 (= res!2215853 (matchR!6992 (regOne!30126 r!7292) (_1!35309 (get!20822 lt!2143127))))))

(declare-fun b!5218022 () Bool)

(declare-fun lt!2143128 () Unit!152494)

(declare-fun lt!2143126 () Unit!152494)

(assert (=> b!5218022 (= lt!2143128 lt!2143126)))

(assert (=> b!5218022 (= (++!13213 (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597)) (t!373889 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1628 (List!60721 C!29884 List!60721 List!60721) Unit!152494)

(assert (=> b!5218022 (= lt!2143126 (lemmaMoveElementToOtherListKeepsConcatEq!1628 Nil!60597 (h!67045 s!2326) (t!373889 s!2326) s!2326))))

(declare-fun e!3248035 () Option!14918)

(assert (=> b!5218022 (= e!3248035 (findConcatSeparation!1332 (regOne!30126 r!7292) (regTwo!30126 r!7292) (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597)) (t!373889 s!2326) s!2326))))

(declare-fun b!5218023 () Bool)

(assert (=> b!5218023 (= e!3248035 None!14917)))

(declare-fun b!5218024 () Bool)

(assert (=> b!5218024 (= e!3248037 e!3248035)))

(declare-fun c!900267 () Bool)

(assert (=> b!5218024 (= c!900267 ((_ is Nil!60597) s!2326))))

(declare-fun b!5218025 () Bool)

(assert (=> b!5218025 (= e!3248034 (matchR!6992 (regTwo!30126 r!7292) s!2326))))

(assert (= (and d!1682299 res!2215855) b!5218025))

(assert (= (and d!1682299 c!900268) b!5218019))

(assert (= (and d!1682299 (not c!900268)) b!5218024))

(assert (= (and b!5218024 c!900267) b!5218023))

(assert (= (and b!5218024 (not c!900267)) b!5218022))

(assert (= (and d!1682299 res!2215854) b!5218021))

(assert (= (and b!5218021 res!2215853) b!5218018))

(assert (= (and b!5218018 res!2215852) b!5218020))

(assert (= (and d!1682299 (not res!2215851)) b!5218017))

(declare-fun m!6266122 () Bool)

(assert (=> b!5218025 m!6266122))

(declare-fun m!6266124 () Bool)

(assert (=> b!5218022 m!6266124))

(assert (=> b!5218022 m!6266124))

(declare-fun m!6266126 () Bool)

(assert (=> b!5218022 m!6266126))

(declare-fun m!6266128 () Bool)

(assert (=> b!5218022 m!6266128))

(assert (=> b!5218022 m!6266124))

(declare-fun m!6266130 () Bool)

(assert (=> b!5218022 m!6266130))

(declare-fun m!6266132 () Bool)

(assert (=> b!5218020 m!6266132))

(declare-fun m!6266134 () Bool)

(assert (=> b!5218020 m!6266134))

(declare-fun m!6266136 () Bool)

(assert (=> b!5218017 m!6266136))

(assert (=> b!5218018 m!6266132))

(declare-fun m!6266138 () Bool)

(assert (=> b!5218018 m!6266138))

(assert (=> d!1682299 m!6266136))

(declare-fun m!6266140 () Bool)

(assert (=> d!1682299 m!6266140))

(declare-fun m!6266142 () Bool)

(assert (=> d!1682299 m!6266142))

(assert (=> b!5218021 m!6266132))

(declare-fun m!6266144 () Bool)

(assert (=> b!5218021 m!6266144))

(assert (=> b!5217507 d!1682299))

(declare-fun d!1682305 () Bool)

(declare-fun choose!38803 (Int) Bool)

(assert (=> d!1682305 (= (Exists!1988 lambda!261768) (choose!38803 lambda!261768))))

(declare-fun bs!1211903 () Bool)

(assert (= bs!1211903 d!1682305))

(declare-fun m!6266146 () Bool)

(assert (=> bs!1211903 m!6266146))

(assert (=> b!5217507 d!1682305))

(declare-fun d!1682307 () Bool)

(assert (=> d!1682307 (= (Exists!1988 lambda!261767) (choose!38803 lambda!261767))))

(declare-fun bs!1211904 () Bool)

(assert (= bs!1211904 d!1682307))

(declare-fun m!6266148 () Bool)

(assert (=> bs!1211904 m!6266148))

(assert (=> b!5217507 d!1682307))

(declare-fun bs!1211905 () Bool)

(declare-fun d!1682309 () Bool)

(assert (= bs!1211905 (and d!1682309 b!5217507)))

(declare-fun lambda!261806 () Int)

(assert (=> bs!1211905 (= lambda!261806 lambda!261767)))

(assert (=> bs!1211905 (not (= lambda!261806 lambda!261768))))

(declare-fun bs!1211906 () Bool)

(assert (= bs!1211906 (and d!1682309 b!5217799)))

(assert (=> bs!1211906 (not (= lambda!261806 lambda!261802))))

(declare-fun bs!1211907 () Bool)

(assert (= bs!1211907 (and d!1682309 b!5217803)))

(assert (=> bs!1211907 (not (= lambda!261806 lambda!261803))))

(assert (=> d!1682309 true))

(assert (=> d!1682309 true))

(assert (=> d!1682309 true))

(assert (=> d!1682309 (= (isDefined!11621 (findConcatSeparation!1332 (regOne!30126 r!7292) (regTwo!30126 r!7292) Nil!60597 s!2326 s!2326)) (Exists!1988 lambda!261806))))

(declare-fun lt!2143131 () Unit!152494)

(declare-fun choose!38804 (Regex!14807 Regex!14807 List!60721) Unit!152494)

(assert (=> d!1682309 (= lt!2143131 (choose!38804 (regOne!30126 r!7292) (regTwo!30126 r!7292) s!2326))))

(assert (=> d!1682309 (validRegex!6543 (regOne!30126 r!7292))))

(assert (=> d!1682309 (= (lemmaFindConcatSeparationEquivalentToExists!1096 (regOne!30126 r!7292) (regTwo!30126 r!7292) s!2326) lt!2143131)))

(declare-fun bs!1211908 () Bool)

(assert (= bs!1211908 d!1682309))

(assert (=> bs!1211908 m!6265824))

(assert (=> bs!1211908 m!6266142))

(declare-fun m!6266150 () Bool)

(assert (=> bs!1211908 m!6266150))

(declare-fun m!6266152 () Bool)

(assert (=> bs!1211908 m!6266152))

(assert (=> bs!1211908 m!6265824))

(assert (=> bs!1211908 m!6265826))

(assert (=> b!5217507 d!1682309))

(declare-fun bs!1211909 () Bool)

(declare-fun d!1682311 () Bool)

(assert (= bs!1211909 (and d!1682311 d!1682309)))

(declare-fun lambda!261811 () Int)

(assert (=> bs!1211909 (= lambda!261811 lambda!261806)))

(declare-fun bs!1211910 () Bool)

(assert (= bs!1211910 (and d!1682311 b!5217507)))

(assert (=> bs!1211910 (= lambda!261811 lambda!261767)))

(declare-fun bs!1211911 () Bool)

(assert (= bs!1211911 (and d!1682311 b!5217799)))

(assert (=> bs!1211911 (not (= lambda!261811 lambda!261802))))

(assert (=> bs!1211910 (not (= lambda!261811 lambda!261768))))

(declare-fun bs!1211912 () Bool)

(assert (= bs!1211912 (and d!1682311 b!5217803)))

(assert (=> bs!1211912 (not (= lambda!261811 lambda!261803))))

(assert (=> d!1682311 true))

(assert (=> d!1682311 true))

(assert (=> d!1682311 true))

(declare-fun lambda!261812 () Int)

(assert (=> bs!1211909 (not (= lambda!261812 lambda!261806))))

(declare-fun bs!1211913 () Bool)

(assert (= bs!1211913 d!1682311))

(assert (=> bs!1211913 (not (= lambda!261812 lambda!261811))))

(assert (=> bs!1211910 (not (= lambda!261812 lambda!261767))))

(assert (=> bs!1211911 (not (= lambda!261812 lambda!261802))))

(assert (=> bs!1211910 (= lambda!261812 lambda!261768)))

(assert (=> bs!1211912 (= lambda!261812 lambda!261803)))

(assert (=> d!1682311 true))

(assert (=> d!1682311 true))

(assert (=> d!1682311 true))

(assert (=> d!1682311 (= (Exists!1988 lambda!261811) (Exists!1988 lambda!261812))))

(declare-fun lt!2143134 () Unit!152494)

(declare-fun choose!38805 (Regex!14807 Regex!14807 List!60721) Unit!152494)

(assert (=> d!1682311 (= lt!2143134 (choose!38805 (regOne!30126 r!7292) (regTwo!30126 r!7292) s!2326))))

(assert (=> d!1682311 (validRegex!6543 (regOne!30126 r!7292))))

(assert (=> d!1682311 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!642 (regOne!30126 r!7292) (regTwo!30126 r!7292) s!2326) lt!2143134)))

(declare-fun m!6266154 () Bool)

(assert (=> bs!1211913 m!6266154))

(declare-fun m!6266156 () Bool)

(assert (=> bs!1211913 m!6266156))

(declare-fun m!6266158 () Bool)

(assert (=> bs!1211913 m!6266158))

(assert (=> bs!1211913 m!6266142))

(assert (=> b!5217507 d!1682311))

(declare-fun d!1682313 () Bool)

(declare-fun isEmpty!32518 (Option!14918) Bool)

(assert (=> d!1682313 (= (isDefined!11621 (findConcatSeparation!1332 (regOne!30126 r!7292) (regTwo!30126 r!7292) Nil!60597 s!2326 s!2326)) (not (isEmpty!32518 (findConcatSeparation!1332 (regOne!30126 r!7292) (regTwo!30126 r!7292) Nil!60597 s!2326 s!2326))))))

(declare-fun bs!1211914 () Bool)

(assert (= bs!1211914 d!1682313))

(assert (=> bs!1211914 m!6265824))

(declare-fun m!6266160 () Bool)

(assert (=> bs!1211914 m!6266160))

(assert (=> b!5217507 d!1682313))

(declare-fun d!1682315 () Bool)

(declare-fun lt!2143137 () Regex!14807)

(assert (=> d!1682315 (validRegex!6543 lt!2143137)))

(assert (=> d!1682315 (= lt!2143137 (generalisedUnion!736 (unfocusZipperList!249 zl!343)))))

(assert (=> d!1682315 (= (unfocusZipper!549 zl!343) lt!2143137)))

(declare-fun bs!1211915 () Bool)

(assert (= bs!1211915 d!1682315))

(declare-fun m!6266162 () Bool)

(assert (=> bs!1211915 m!6266162))

(assert (=> bs!1211915 m!6265770))

(assert (=> bs!1211915 m!6265770))

(assert (=> bs!1211915 m!6265772))

(assert (=> b!5217509 d!1682315))

(declare-fun b!5218056 () Bool)

(declare-fun e!3248060 () Bool)

(declare-fun e!3248061 () Bool)

(assert (=> b!5218056 (= e!3248060 e!3248061)))

(declare-fun res!2215881 () Bool)

(assert (=> b!5218056 (=> (not res!2215881) (not e!3248061))))

(declare-fun call!367999 () Bool)

(assert (=> b!5218056 (= res!2215881 call!367999)))

(declare-fun b!5218057 () Bool)

(declare-fun e!3248059 () Bool)

(declare-fun call!367997 () Bool)

(assert (=> b!5218057 (= e!3248059 call!367997)))

(declare-fun bm!367992 () Bool)

(declare-fun c!900273 () Bool)

(declare-fun c!900274 () Bool)

(assert (=> bm!367992 (= call!367997 (validRegex!6543 (ite c!900274 (reg!15136 r!7292) (ite c!900273 (regTwo!30127 r!7292) (regTwo!30126 r!7292)))))))

(declare-fun b!5218058 () Bool)

(declare-fun e!3248064 () Bool)

(declare-fun e!3248063 () Bool)

(assert (=> b!5218058 (= e!3248064 e!3248063)))

(assert (=> b!5218058 (= c!900274 ((_ is Star!14807) r!7292))))

(declare-fun bm!367993 () Bool)

(assert (=> bm!367993 (= call!367999 (validRegex!6543 (ite c!900273 (regOne!30127 r!7292) (regOne!30126 r!7292))))))

(declare-fun bm!367994 () Bool)

(declare-fun call!367998 () Bool)

(assert (=> bm!367994 (= call!367998 call!367997)))

(declare-fun b!5218059 () Bool)

(assert (=> b!5218059 (= e!3248061 call!367998)))

(declare-fun b!5218060 () Bool)

(declare-fun res!2215882 () Bool)

(assert (=> b!5218060 (=> res!2215882 e!3248060)))

(assert (=> b!5218060 (= res!2215882 (not ((_ is Concat!23652) r!7292)))))

(declare-fun e!3248065 () Bool)

(assert (=> b!5218060 (= e!3248065 e!3248060)))

(declare-fun d!1682317 () Bool)

(declare-fun res!2215878 () Bool)

(assert (=> d!1682317 (=> res!2215878 e!3248064)))

(assert (=> d!1682317 (= res!2215878 ((_ is ElementMatch!14807) r!7292))))

(assert (=> d!1682317 (= (validRegex!6543 r!7292) e!3248064)))

(declare-fun b!5218061 () Bool)

(declare-fun e!3248062 () Bool)

(assert (=> b!5218061 (= e!3248062 call!367998)))

(declare-fun b!5218062 () Bool)

(assert (=> b!5218062 (= e!3248063 e!3248059)))

(declare-fun res!2215880 () Bool)

(assert (=> b!5218062 (= res!2215880 (not (nullable!4976 (reg!15136 r!7292))))))

(assert (=> b!5218062 (=> (not res!2215880) (not e!3248059))))

(declare-fun b!5218063 () Bool)

(assert (=> b!5218063 (= e!3248063 e!3248065)))

(assert (=> b!5218063 (= c!900273 ((_ is Union!14807) r!7292))))

(declare-fun b!5218064 () Bool)

(declare-fun res!2215879 () Bool)

(assert (=> b!5218064 (=> (not res!2215879) (not e!3248062))))

(assert (=> b!5218064 (= res!2215879 call!367999)))

(assert (=> b!5218064 (= e!3248065 e!3248062)))

(assert (= (and d!1682317 (not res!2215878)) b!5218058))

(assert (= (and b!5218058 c!900274) b!5218062))

(assert (= (and b!5218058 (not c!900274)) b!5218063))

(assert (= (and b!5218062 res!2215880) b!5218057))

(assert (= (and b!5218063 c!900273) b!5218064))

(assert (= (and b!5218063 (not c!900273)) b!5218060))

(assert (= (and b!5218064 res!2215879) b!5218061))

(assert (= (and b!5218060 (not res!2215882)) b!5218056))

(assert (= (and b!5218056 res!2215881) b!5218059))

(assert (= (or b!5218061 b!5218059) bm!367994))

(assert (= (or b!5218064 b!5218056) bm!367993))

(assert (= (or b!5218057 bm!367994) bm!367992))

(declare-fun m!6266164 () Bool)

(assert (=> bm!367992 m!6266164))

(declare-fun m!6266166 () Bool)

(assert (=> bm!367993 m!6266166))

(declare-fun m!6266168 () Bool)

(assert (=> b!5218062 m!6266168))

(assert (=> start!551878 d!1682317))

(declare-fun b!5218085 () Bool)

(declare-fun e!3248080 () Regex!14807)

(declare-fun e!3248079 () Regex!14807)

(assert (=> b!5218085 (= e!3248080 e!3248079)))

(declare-fun c!900286 () Bool)

(assert (=> b!5218085 (= c!900286 ((_ is Cons!60596) (exprs!4691 (h!67046 zl!343))))))

(declare-fun b!5218086 () Bool)

(declare-fun e!3248082 () Bool)

(declare-fun lt!2143140 () Regex!14807)

(declare-fun head!11186 (List!60720) Regex!14807)

(assert (=> b!5218086 (= e!3248082 (= lt!2143140 (head!11186 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun b!5218087 () Bool)

(declare-fun e!3248083 () Bool)

(assert (=> b!5218087 (= e!3248083 e!3248082)))

(declare-fun c!900284 () Bool)

(declare-fun tail!10283 (List!60720) List!60720)

(assert (=> b!5218087 (= c!900284 (isEmpty!32514 (tail!10283 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun b!5218088 () Bool)

(assert (=> b!5218088 (= e!3248079 EmptyExpr!14807)))

(declare-fun b!5218090 () Bool)

(declare-fun isConcat!292 (Regex!14807) Bool)

(assert (=> b!5218090 (= e!3248082 (isConcat!292 lt!2143140))))

(declare-fun b!5218091 () Bool)

(assert (=> b!5218091 (= e!3248079 (Concat!23652 (h!67044 (exprs!4691 (h!67046 zl!343))) (generalisedConcat!476 (t!373888 (exprs!4691 (h!67046 zl!343))))))))

(declare-fun b!5218092 () Bool)

(declare-fun e!3248081 () Bool)

(assert (=> b!5218092 (= e!3248081 e!3248083)))

(declare-fun c!900283 () Bool)

(assert (=> b!5218092 (= c!900283 (isEmpty!32514 (exprs!4691 (h!67046 zl!343))))))

(declare-fun b!5218093 () Bool)

(declare-fun isEmptyExpr!769 (Regex!14807) Bool)

(assert (=> b!5218093 (= e!3248083 (isEmptyExpr!769 lt!2143140))))

(declare-fun b!5218094 () Bool)

(assert (=> b!5218094 (= e!3248080 (h!67044 (exprs!4691 (h!67046 zl!343))))))

(declare-fun d!1682319 () Bool)

(assert (=> d!1682319 e!3248081))

(declare-fun res!2215887 () Bool)

(assert (=> d!1682319 (=> (not res!2215887) (not e!3248081))))

(assert (=> d!1682319 (= res!2215887 (validRegex!6543 lt!2143140))))

(assert (=> d!1682319 (= lt!2143140 e!3248080)))

(declare-fun c!900285 () Bool)

(declare-fun e!3248078 () Bool)

(assert (=> d!1682319 (= c!900285 e!3248078)))

(declare-fun res!2215888 () Bool)

(assert (=> d!1682319 (=> (not res!2215888) (not e!3248078))))

(assert (=> d!1682319 (= res!2215888 ((_ is Cons!60596) (exprs!4691 (h!67046 zl!343))))))

(declare-fun lambda!261815 () Int)

(declare-fun forall!14241 (List!60720 Int) Bool)

(assert (=> d!1682319 (forall!14241 (exprs!4691 (h!67046 zl!343)) lambda!261815)))

(assert (=> d!1682319 (= (generalisedConcat!476 (exprs!4691 (h!67046 zl!343))) lt!2143140)))

(declare-fun b!5218089 () Bool)

(assert (=> b!5218089 (= e!3248078 (isEmpty!32514 (t!373888 (exprs!4691 (h!67046 zl!343)))))))

(assert (= (and d!1682319 res!2215888) b!5218089))

(assert (= (and d!1682319 c!900285) b!5218094))

(assert (= (and d!1682319 (not c!900285)) b!5218085))

(assert (= (and b!5218085 c!900286) b!5218091))

(assert (= (and b!5218085 (not c!900286)) b!5218088))

(assert (= (and d!1682319 res!2215887) b!5218092))

(assert (= (and b!5218092 c!900283) b!5218093))

(assert (= (and b!5218092 (not c!900283)) b!5218087))

(assert (= (and b!5218087 c!900284) b!5218086))

(assert (= (and b!5218087 (not c!900284)) b!5218090))

(declare-fun m!6266170 () Bool)

(assert (=> b!5218086 m!6266170))

(declare-fun m!6266172 () Bool)

(assert (=> b!5218091 m!6266172))

(declare-fun m!6266174 () Bool)

(assert (=> d!1682319 m!6266174))

(declare-fun m!6266176 () Bool)

(assert (=> d!1682319 m!6266176))

(declare-fun m!6266178 () Bool)

(assert (=> b!5218092 m!6266178))

(declare-fun m!6266180 () Bool)

(assert (=> b!5218087 m!6266180))

(assert (=> b!5218087 m!6266180))

(declare-fun m!6266182 () Bool)

(assert (=> b!5218087 m!6266182))

(assert (=> b!5218089 m!6265830))

(declare-fun m!6266184 () Bool)

(assert (=> b!5218090 m!6266184))

(declare-fun m!6266186 () Bool)

(assert (=> b!5218093 m!6266186))

(assert (=> b!5217510 d!1682319))

(declare-fun d!1682321 () Bool)

(declare-fun dynLambda!23942 (Int Context!8382) (InoxSet Context!8382))

(assert (=> d!1682321 (= (flatMap!534 z!1189 lambda!261769) (dynLambda!23942 lambda!261769 (h!67046 zl!343)))))

(declare-fun lt!2143143 () Unit!152494)

(declare-fun choose!38806 ((InoxSet Context!8382) Context!8382 Int) Unit!152494)

(assert (=> d!1682321 (= lt!2143143 (choose!38806 z!1189 (h!67046 zl!343) lambda!261769))))

(assert (=> d!1682321 (= z!1189 (store ((as const (Array Context!8382 Bool)) false) (h!67046 zl!343) true))))

(assert (=> d!1682321 (= (lemmaFlatMapOnSingletonSet!66 z!1189 (h!67046 zl!343) lambda!261769) lt!2143143)))

(declare-fun b_lambda!201777 () Bool)

(assert (=> (not b_lambda!201777) (not d!1682321)))

(declare-fun bs!1211916 () Bool)

(assert (= bs!1211916 d!1682321))

(assert (=> bs!1211916 m!6265794))

(declare-fun m!6266188 () Bool)

(assert (=> bs!1211916 m!6266188))

(declare-fun m!6266190 () Bool)

(assert (=> bs!1211916 m!6266190))

(declare-fun m!6266192 () Bool)

(assert (=> bs!1211916 m!6266192))

(assert (=> b!5217508 d!1682321))

(declare-fun b!5218117 () Bool)

(declare-fun e!3248099 () (InoxSet Context!8382))

(declare-fun call!368014 () (InoxSet Context!8382))

(declare-fun call!368013 () (InoxSet Context!8382))

(assert (=> b!5218117 (= e!3248099 ((_ map or) call!368014 call!368013))))

(declare-fun bm!368007 () Bool)

(declare-fun call!368012 () List!60720)

(declare-fun call!368017 () List!60720)

(assert (=> bm!368007 (= call!368012 call!368017)))

(declare-fun b!5218118 () Bool)

(declare-fun e!3248097 () (InoxSet Context!8382))

(assert (=> b!5218118 (= e!3248097 ((as const (Array Context!8382 Bool)) false))))

(declare-fun bm!368008 () Bool)

(declare-fun call!368016 () (InoxSet Context!8382))

(assert (=> bm!368008 (= call!368013 call!368016)))

(declare-fun b!5218119 () Bool)

(declare-fun e!3248098 () (InoxSet Context!8382))

(declare-fun call!368015 () (InoxSet Context!8382))

(assert (=> b!5218119 (= e!3248098 call!368015)))

(declare-fun c!900298 () Bool)

(declare-fun bm!368009 () Bool)

(declare-fun c!900299 () Bool)

(declare-fun $colon$colon!1283 (List!60720 Regex!14807) List!60720)

(assert (=> bm!368009 (= call!368017 ($colon$colon!1283 (exprs!4691 lt!2143066) (ite (or c!900299 c!900298) (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (h!67044 (exprs!4691 (h!67046 zl!343))))))))

(declare-fun bm!368010 () Bool)

(assert (=> bm!368010 (= call!368015 call!368013)))

(declare-fun b!5218120 () Bool)

(declare-fun e!3248096 () (InoxSet Context!8382))

(assert (=> b!5218120 (= e!3248096 ((_ map or) call!368016 call!368014))))

(declare-fun d!1682323 () Bool)

(declare-fun c!900297 () Bool)

(assert (=> d!1682323 (= c!900297 (and ((_ is ElementMatch!14807) (h!67044 (exprs!4691 (h!67046 zl!343)))) (= (c!900134 (h!67044 (exprs!4691 (h!67046 zl!343)))) (h!67045 s!2326))))))

(declare-fun e!3248101 () (InoxSet Context!8382))

(assert (=> d!1682323 (= (derivationStepZipperDown!255 (h!67044 (exprs!4691 (h!67046 zl!343))) lt!2143066 (h!67045 s!2326)) e!3248101)))

(declare-fun b!5218121 () Bool)

(assert (=> b!5218121 (= e!3248099 e!3248098)))

(assert (=> b!5218121 (= c!900298 ((_ is Concat!23652) (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun bm!368011 () Bool)

(declare-fun c!900300 () Bool)

(assert (=> bm!368011 (= call!368014 (derivationStepZipperDown!255 (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343))))) (ite c!900300 lt!2143066 (Context!8383 call!368017)) (h!67045 s!2326)))))

(declare-fun b!5218122 () Bool)

(assert (=> b!5218122 (= e!3248097 call!368015)))

(declare-fun b!5218123 () Bool)

(assert (=> b!5218123 (= e!3248101 (store ((as const (Array Context!8382 Bool)) false) lt!2143066 true))))

(declare-fun bm!368012 () Bool)

(assert (=> bm!368012 (= call!368016 (derivationStepZipperDown!255 (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343))))))) (ite (or c!900300 c!900299) lt!2143066 (Context!8383 call!368012)) (h!67045 s!2326)))))

(declare-fun b!5218124 () Bool)

(declare-fun e!3248100 () Bool)

(assert (=> b!5218124 (= c!900299 e!3248100)))

(declare-fun res!2215891 () Bool)

(assert (=> b!5218124 (=> (not res!2215891) (not e!3248100))))

(assert (=> b!5218124 (= res!2215891 ((_ is Concat!23652) (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(assert (=> b!5218124 (= e!3248096 e!3248099)))

(declare-fun b!5218125 () Bool)

(declare-fun c!900301 () Bool)

(assert (=> b!5218125 (= c!900301 ((_ is Star!14807) (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(assert (=> b!5218125 (= e!3248098 e!3248097)))

(declare-fun b!5218126 () Bool)

(assert (=> b!5218126 (= e!3248101 e!3248096)))

(assert (=> b!5218126 (= c!900300 ((_ is Union!14807) (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun b!5218127 () Bool)

(assert (=> b!5218127 (= e!3248100 (nullable!4976 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343))))))))

(assert (= (and d!1682323 c!900297) b!5218123))

(assert (= (and d!1682323 (not c!900297)) b!5218126))

(assert (= (and b!5218126 c!900300) b!5218120))

(assert (= (and b!5218126 (not c!900300)) b!5218124))

(assert (= (and b!5218124 res!2215891) b!5218127))

(assert (= (and b!5218124 c!900299) b!5218117))

(assert (= (and b!5218124 (not c!900299)) b!5218121))

(assert (= (and b!5218121 c!900298) b!5218119))

(assert (= (and b!5218121 (not c!900298)) b!5218125))

(assert (= (and b!5218125 c!900301) b!5218122))

(assert (= (and b!5218125 (not c!900301)) b!5218118))

(assert (= (or b!5218119 b!5218122) bm!368007))

(assert (= (or b!5218119 b!5218122) bm!368010))

(assert (= (or b!5218117 bm!368007) bm!368009))

(assert (= (or b!5218117 bm!368010) bm!368008))

(assert (= (or b!5218120 b!5218117) bm!368011))

(assert (= (or b!5218120 bm!368008) bm!368012))

(declare-fun m!6266194 () Bool)

(assert (=> b!5218127 m!6266194))

(declare-fun m!6266196 () Bool)

(assert (=> b!5218123 m!6266196))

(declare-fun m!6266198 () Bool)

(assert (=> bm!368011 m!6266198))

(declare-fun m!6266200 () Bool)

(assert (=> bm!368012 m!6266200))

(declare-fun m!6266202 () Bool)

(assert (=> bm!368009 m!6266202))

(assert (=> b!5217508 d!1682323))

(declare-fun d!1682325 () Bool)

(declare-fun choose!38807 ((InoxSet Context!8382) Int) (InoxSet Context!8382))

(assert (=> d!1682325 (= (flatMap!534 z!1189 lambda!261769) (choose!38807 z!1189 lambda!261769))))

(declare-fun bs!1211917 () Bool)

(assert (= bs!1211917 d!1682325))

(declare-fun m!6266204 () Bool)

(assert (=> bs!1211917 m!6266204))

(assert (=> b!5217508 d!1682325))

(declare-fun d!1682327 () Bool)

(declare-fun nullableFct!1385 (Regex!14807) Bool)

(assert (=> d!1682327 (= (nullable!4976 (h!67044 (exprs!4691 (h!67046 zl!343)))) (nullableFct!1385 (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun bs!1211918 () Bool)

(assert (= bs!1211918 d!1682327))

(declare-fun m!6266206 () Bool)

(assert (=> bs!1211918 m!6266206))

(assert (=> b!5217508 d!1682327))

(declare-fun b!5218138 () Bool)

(declare-fun e!3248108 () (InoxSet Context!8382))

(declare-fun e!3248109 () (InoxSet Context!8382))

(assert (=> b!5218138 (= e!3248108 e!3248109)))

(declare-fun c!900307 () Bool)

(assert (=> b!5218138 (= c!900307 ((_ is Cons!60596) (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343))))))))))

(declare-fun bm!368015 () Bool)

(declare-fun call!368020 () (InoxSet Context!8382))

(assert (=> bm!368015 (= call!368020 (derivationStepZipperDown!255 (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343))))))) (Context!8383 (t!373888 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))) (h!67045 s!2326)))))

(declare-fun b!5218139 () Bool)

(assert (=> b!5218139 (= e!3248109 ((as const (Array Context!8382 Bool)) false))))

(declare-fun b!5218140 () Bool)

(assert (=> b!5218140 (= e!3248108 ((_ map or) call!368020 (derivationStepZipperUp!179 (Context!8383 (t!373888 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))) (h!67045 s!2326))))))

(declare-fun b!5218141 () Bool)

(declare-fun e!3248110 () Bool)

(assert (=> b!5218141 (= e!3248110 (nullable!4976 (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))))))

(declare-fun d!1682329 () Bool)

(declare-fun c!900306 () Bool)

(assert (=> d!1682329 (= c!900306 e!3248110)))

(declare-fun res!2215894 () Bool)

(assert (=> d!1682329 (=> (not res!2215894) (not e!3248110))))

(assert (=> d!1682329 (= res!2215894 ((_ is Cons!60596) (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343))))))))))

(assert (=> d!1682329 (= (derivationStepZipperUp!179 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343))))) (h!67045 s!2326)) e!3248108)))

(declare-fun b!5218142 () Bool)

(assert (=> b!5218142 (= e!3248109 call!368020)))

(assert (= (and d!1682329 res!2215894) b!5218141))

(assert (= (and d!1682329 c!900306) b!5218140))

(assert (= (and d!1682329 (not c!900306)) b!5218138))

(assert (= (and b!5218138 c!900307) b!5218142))

(assert (= (and b!5218138 (not c!900307)) b!5218139))

(assert (= (or b!5218140 b!5218142) bm!368015))

(declare-fun m!6266208 () Bool)

(assert (=> bm!368015 m!6266208))

(declare-fun m!6266210 () Bool)

(assert (=> b!5218140 m!6266210))

(declare-fun m!6266212 () Bool)

(assert (=> b!5218141 m!6266212))

(assert (=> b!5217508 d!1682329))

(declare-fun b!5218143 () Bool)

(declare-fun e!3248111 () (InoxSet Context!8382))

(declare-fun e!3248112 () (InoxSet Context!8382))

(assert (=> b!5218143 (= e!3248111 e!3248112)))

(declare-fun c!900309 () Bool)

(assert (=> b!5218143 (= c!900309 ((_ is Cons!60596) (exprs!4691 lt!2143066)))))

(declare-fun bm!368016 () Bool)

(declare-fun call!368021 () (InoxSet Context!8382))

(assert (=> bm!368016 (= call!368021 (derivationStepZipperDown!255 (h!67044 (exprs!4691 lt!2143066)) (Context!8383 (t!373888 (exprs!4691 lt!2143066))) (h!67045 s!2326)))))

(declare-fun b!5218144 () Bool)

(assert (=> b!5218144 (= e!3248112 ((as const (Array Context!8382 Bool)) false))))

(declare-fun b!5218145 () Bool)

(assert (=> b!5218145 (= e!3248111 ((_ map or) call!368021 (derivationStepZipperUp!179 (Context!8383 (t!373888 (exprs!4691 lt!2143066))) (h!67045 s!2326))))))

(declare-fun b!5218146 () Bool)

(declare-fun e!3248113 () Bool)

(assert (=> b!5218146 (= e!3248113 (nullable!4976 (h!67044 (exprs!4691 lt!2143066))))))

(declare-fun d!1682331 () Bool)

(declare-fun c!900308 () Bool)

(assert (=> d!1682331 (= c!900308 e!3248113)))

(declare-fun res!2215895 () Bool)

(assert (=> d!1682331 (=> (not res!2215895) (not e!3248113))))

(assert (=> d!1682331 (= res!2215895 ((_ is Cons!60596) (exprs!4691 lt!2143066)))))

(assert (=> d!1682331 (= (derivationStepZipperUp!179 lt!2143066 (h!67045 s!2326)) e!3248111)))

(declare-fun b!5218147 () Bool)

(assert (=> b!5218147 (= e!3248112 call!368021)))

(assert (= (and d!1682331 res!2215895) b!5218146))

(assert (= (and d!1682331 c!900308) b!5218145))

(assert (= (and d!1682331 (not c!900308)) b!5218143))

(assert (= (and b!5218143 c!900309) b!5218147))

(assert (= (and b!5218143 (not c!900309)) b!5218144))

(assert (= (or b!5218145 b!5218147) bm!368016))

(declare-fun m!6266214 () Bool)

(assert (=> bm!368016 m!6266214))

(declare-fun m!6266216 () Bool)

(assert (=> b!5218145 m!6266216))

(declare-fun m!6266218 () Bool)

(assert (=> b!5218146 m!6266218))

(assert (=> b!5217508 d!1682331))

(declare-fun b!5218148 () Bool)

(declare-fun e!3248114 () (InoxSet Context!8382))

(declare-fun e!3248115 () (InoxSet Context!8382))

(assert (=> b!5218148 (= e!3248114 e!3248115)))

(declare-fun c!900311 () Bool)

(assert (=> b!5218148 (= c!900311 ((_ is Cons!60596) (exprs!4691 (h!67046 zl!343))))))

(declare-fun bm!368017 () Bool)

(declare-fun call!368022 () (InoxSet Context!8382))

(assert (=> bm!368017 (= call!368022 (derivationStepZipperDown!255 (h!67044 (exprs!4691 (h!67046 zl!343))) (Context!8383 (t!373888 (exprs!4691 (h!67046 zl!343)))) (h!67045 s!2326)))))

(declare-fun b!5218149 () Bool)

(assert (=> b!5218149 (= e!3248115 ((as const (Array Context!8382 Bool)) false))))

(declare-fun b!5218150 () Bool)

(assert (=> b!5218150 (= e!3248114 ((_ map or) call!368022 (derivationStepZipperUp!179 (Context!8383 (t!373888 (exprs!4691 (h!67046 zl!343)))) (h!67045 s!2326))))))

(declare-fun b!5218151 () Bool)

(declare-fun e!3248116 () Bool)

(assert (=> b!5218151 (= e!3248116 (nullable!4976 (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun d!1682333 () Bool)

(declare-fun c!900310 () Bool)

(assert (=> d!1682333 (= c!900310 e!3248116)))

(declare-fun res!2215896 () Bool)

(assert (=> d!1682333 (=> (not res!2215896) (not e!3248116))))

(assert (=> d!1682333 (= res!2215896 ((_ is Cons!60596) (exprs!4691 (h!67046 zl!343))))))

(assert (=> d!1682333 (= (derivationStepZipperUp!179 (h!67046 zl!343) (h!67045 s!2326)) e!3248114)))

(declare-fun b!5218152 () Bool)

(assert (=> b!5218152 (= e!3248115 call!368022)))

(assert (= (and d!1682333 res!2215896) b!5218151))

(assert (= (and d!1682333 c!900310) b!5218150))

(assert (= (and d!1682333 (not c!900310)) b!5218148))

(assert (= (and b!5218148 c!900311) b!5218152))

(assert (= (and b!5218148 (not c!900311)) b!5218149))

(assert (= (or b!5218150 b!5218152) bm!368017))

(declare-fun m!6266220 () Bool)

(assert (=> bm!368017 m!6266220))

(declare-fun m!6266222 () Bool)

(assert (=> b!5218150 m!6266222))

(assert (=> b!5218151 m!6265798))

(assert (=> b!5217508 d!1682333))

(declare-fun b!5218153 () Bool)

(declare-fun e!3248120 () (InoxSet Context!8382))

(declare-fun call!368025 () (InoxSet Context!8382))

(declare-fun call!368024 () (InoxSet Context!8382))

(assert (=> b!5218153 (= e!3248120 ((_ map or) call!368025 call!368024))))

(declare-fun bm!368018 () Bool)

(declare-fun call!368023 () List!60720)

(declare-fun call!368028 () List!60720)

(assert (=> bm!368018 (= call!368023 call!368028)))

(declare-fun b!5218154 () Bool)

(declare-fun e!3248118 () (InoxSet Context!8382))

(assert (=> b!5218154 (= e!3248118 ((as const (Array Context!8382 Bool)) false))))

(declare-fun bm!368019 () Bool)

(declare-fun call!368027 () (InoxSet Context!8382))

(assert (=> bm!368019 (= call!368024 call!368027)))

(declare-fun b!5218155 () Bool)

(declare-fun e!3248119 () (InoxSet Context!8382))

(declare-fun call!368026 () (InoxSet Context!8382))

(assert (=> b!5218155 (= e!3248119 call!368026)))

(declare-fun c!900313 () Bool)

(declare-fun c!900314 () Bool)

(declare-fun bm!368020 () Bool)

(assert (=> bm!368020 (= call!368028 ($colon$colon!1283 (exprs!4691 lt!2143066) (ite (or c!900314 c!900313) (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (regTwo!30127 (regOne!30126 r!7292)))))))

(declare-fun bm!368021 () Bool)

(assert (=> bm!368021 (= call!368026 call!368024)))

(declare-fun b!5218156 () Bool)

(declare-fun e!3248117 () (InoxSet Context!8382))

(assert (=> b!5218156 (= e!3248117 ((_ map or) call!368027 call!368025))))

(declare-fun d!1682335 () Bool)

(declare-fun c!900312 () Bool)

(assert (=> d!1682335 (= c!900312 (and ((_ is ElementMatch!14807) (regTwo!30127 (regOne!30126 r!7292))) (= (c!900134 (regTwo!30127 (regOne!30126 r!7292))) (h!67045 s!2326))))))

(declare-fun e!3248122 () (InoxSet Context!8382))

(assert (=> d!1682335 (= (derivationStepZipperDown!255 (regTwo!30127 (regOne!30126 r!7292)) lt!2143066 (h!67045 s!2326)) e!3248122)))

(declare-fun b!5218157 () Bool)

(assert (=> b!5218157 (= e!3248120 e!3248119)))

(assert (=> b!5218157 (= c!900313 ((_ is Concat!23652) (regTwo!30127 (regOne!30126 r!7292))))))

(declare-fun bm!368022 () Bool)

(declare-fun c!900315 () Bool)

(assert (=> bm!368022 (= call!368025 (derivationStepZipperDown!255 (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292)))) (ite c!900315 lt!2143066 (Context!8383 call!368028)) (h!67045 s!2326)))))

(declare-fun b!5218158 () Bool)

(assert (=> b!5218158 (= e!3248118 call!368026)))

(declare-fun b!5218159 () Bool)

(assert (=> b!5218159 (= e!3248122 (store ((as const (Array Context!8382 Bool)) false) lt!2143066 true))))

(declare-fun bm!368023 () Bool)

(assert (=> bm!368023 (= call!368027 (derivationStepZipperDown!255 (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292)))))) (ite (or c!900315 c!900314) lt!2143066 (Context!8383 call!368023)) (h!67045 s!2326)))))

(declare-fun b!5218160 () Bool)

(declare-fun e!3248121 () Bool)

(assert (=> b!5218160 (= c!900314 e!3248121)))

(declare-fun res!2215897 () Bool)

(assert (=> b!5218160 (=> (not res!2215897) (not e!3248121))))

(assert (=> b!5218160 (= res!2215897 ((_ is Concat!23652) (regTwo!30127 (regOne!30126 r!7292))))))

(assert (=> b!5218160 (= e!3248117 e!3248120)))

(declare-fun b!5218161 () Bool)

(declare-fun c!900316 () Bool)

(assert (=> b!5218161 (= c!900316 ((_ is Star!14807) (regTwo!30127 (regOne!30126 r!7292))))))

(assert (=> b!5218161 (= e!3248119 e!3248118)))

(declare-fun b!5218162 () Bool)

(assert (=> b!5218162 (= e!3248122 e!3248117)))

(assert (=> b!5218162 (= c!900315 ((_ is Union!14807) (regTwo!30127 (regOne!30126 r!7292))))))

(declare-fun b!5218163 () Bool)

(assert (=> b!5218163 (= e!3248121 (nullable!4976 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292)))))))

(assert (= (and d!1682335 c!900312) b!5218159))

(assert (= (and d!1682335 (not c!900312)) b!5218162))

(assert (= (and b!5218162 c!900315) b!5218156))

(assert (= (and b!5218162 (not c!900315)) b!5218160))

(assert (= (and b!5218160 res!2215897) b!5218163))

(assert (= (and b!5218160 c!900314) b!5218153))

(assert (= (and b!5218160 (not c!900314)) b!5218157))

(assert (= (and b!5218157 c!900313) b!5218155))

(assert (= (and b!5218157 (not c!900313)) b!5218161))

(assert (= (and b!5218161 c!900316) b!5218158))

(assert (= (and b!5218161 (not c!900316)) b!5218154))

(assert (= (or b!5218155 b!5218158) bm!368018))

(assert (= (or b!5218155 b!5218158) bm!368021))

(assert (= (or b!5218153 bm!368018) bm!368020))

(assert (= (or b!5218153 bm!368021) bm!368019))

(assert (= (or b!5218156 b!5218153) bm!368022))

(assert (= (or b!5218156 bm!368019) bm!368023))

(declare-fun m!6266224 () Bool)

(assert (=> b!5218163 m!6266224))

(assert (=> b!5218159 m!6266196))

(declare-fun m!6266226 () Bool)

(assert (=> bm!368022 m!6266226))

(declare-fun m!6266228 () Bool)

(assert (=> bm!368023 m!6266228))

(declare-fun m!6266230 () Bool)

(assert (=> bm!368020 m!6266230))

(assert (=> b!5217519 d!1682335))

(declare-fun b!5218164 () Bool)

(declare-fun e!3248126 () (InoxSet Context!8382))

(declare-fun call!368031 () (InoxSet Context!8382))

(declare-fun call!368030 () (InoxSet Context!8382))

(assert (=> b!5218164 (= e!3248126 ((_ map or) call!368031 call!368030))))

(declare-fun bm!368024 () Bool)

(declare-fun call!368029 () List!60720)

(declare-fun call!368034 () List!60720)

(assert (=> bm!368024 (= call!368029 call!368034)))

(declare-fun b!5218165 () Bool)

(declare-fun e!3248124 () (InoxSet Context!8382))

(assert (=> b!5218165 (= e!3248124 ((as const (Array Context!8382 Bool)) false))))

(declare-fun bm!368025 () Bool)

(declare-fun call!368033 () (InoxSet Context!8382))

(assert (=> bm!368025 (= call!368030 call!368033)))

(declare-fun b!5218166 () Bool)

(declare-fun e!3248125 () (InoxSet Context!8382))

(declare-fun call!368032 () (InoxSet Context!8382))

(assert (=> b!5218166 (= e!3248125 call!368032)))

(declare-fun bm!368026 () Bool)

(declare-fun c!900318 () Bool)

(declare-fun c!900319 () Bool)

(assert (=> bm!368026 (= call!368034 ($colon$colon!1283 (exprs!4691 lt!2143066) (ite (or c!900319 c!900318) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (regOne!30127 (regOne!30126 r!7292)))))))

(declare-fun bm!368027 () Bool)

(assert (=> bm!368027 (= call!368032 call!368030)))

(declare-fun b!5218167 () Bool)

(declare-fun e!3248123 () (InoxSet Context!8382))

(assert (=> b!5218167 (= e!3248123 ((_ map or) call!368033 call!368031))))

(declare-fun d!1682337 () Bool)

(declare-fun c!900317 () Bool)

(assert (=> d!1682337 (= c!900317 (and ((_ is ElementMatch!14807) (regOne!30127 (regOne!30126 r!7292))) (= (c!900134 (regOne!30127 (regOne!30126 r!7292))) (h!67045 s!2326))))))

(declare-fun e!3248128 () (InoxSet Context!8382))

(assert (=> d!1682337 (= (derivationStepZipperDown!255 (regOne!30127 (regOne!30126 r!7292)) lt!2143066 (h!67045 s!2326)) e!3248128)))

(declare-fun b!5218168 () Bool)

(assert (=> b!5218168 (= e!3248126 e!3248125)))

(assert (=> b!5218168 (= c!900318 ((_ is Concat!23652) (regOne!30127 (regOne!30126 r!7292))))))

(declare-fun bm!368028 () Bool)

(declare-fun c!900320 () Bool)

(assert (=> bm!368028 (= call!368031 (derivationStepZipperDown!255 (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292)))) (ite c!900320 lt!2143066 (Context!8383 call!368034)) (h!67045 s!2326)))))

(declare-fun b!5218169 () Bool)

(assert (=> b!5218169 (= e!3248124 call!368032)))

(declare-fun b!5218170 () Bool)

(assert (=> b!5218170 (= e!3248128 (store ((as const (Array Context!8382 Bool)) false) lt!2143066 true))))

(declare-fun bm!368029 () Bool)

(assert (=> bm!368029 (= call!368033 (derivationStepZipperDown!255 (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292)))))) (ite (or c!900320 c!900319) lt!2143066 (Context!8383 call!368029)) (h!67045 s!2326)))))

(declare-fun b!5218171 () Bool)

(declare-fun e!3248127 () Bool)

(assert (=> b!5218171 (= c!900319 e!3248127)))

(declare-fun res!2215898 () Bool)

(assert (=> b!5218171 (=> (not res!2215898) (not e!3248127))))

(assert (=> b!5218171 (= res!2215898 ((_ is Concat!23652) (regOne!30127 (regOne!30126 r!7292))))))

(assert (=> b!5218171 (= e!3248123 e!3248126)))

(declare-fun b!5218172 () Bool)

(declare-fun c!900321 () Bool)

(assert (=> b!5218172 (= c!900321 ((_ is Star!14807) (regOne!30127 (regOne!30126 r!7292))))))

(assert (=> b!5218172 (= e!3248125 e!3248124)))

(declare-fun b!5218173 () Bool)

(assert (=> b!5218173 (= e!3248128 e!3248123)))

(assert (=> b!5218173 (= c!900320 ((_ is Union!14807) (regOne!30127 (regOne!30126 r!7292))))))

(declare-fun b!5218174 () Bool)

(assert (=> b!5218174 (= e!3248127 (nullable!4976 (regOne!30126 (regOne!30127 (regOne!30126 r!7292)))))))

(assert (= (and d!1682337 c!900317) b!5218170))

(assert (= (and d!1682337 (not c!900317)) b!5218173))

(assert (= (and b!5218173 c!900320) b!5218167))

(assert (= (and b!5218173 (not c!900320)) b!5218171))

(assert (= (and b!5218171 res!2215898) b!5218174))

(assert (= (and b!5218171 c!900319) b!5218164))

(assert (= (and b!5218171 (not c!900319)) b!5218168))

(assert (= (and b!5218168 c!900318) b!5218166))

(assert (= (and b!5218168 (not c!900318)) b!5218172))

(assert (= (and b!5218172 c!900321) b!5218169))

(assert (= (and b!5218172 (not c!900321)) b!5218165))

(assert (= (or b!5218166 b!5218169) bm!368024))

(assert (= (or b!5218166 b!5218169) bm!368027))

(assert (= (or b!5218164 bm!368024) bm!368026))

(assert (= (or b!5218164 bm!368027) bm!368025))

(assert (= (or b!5218167 b!5218164) bm!368028))

(assert (= (or b!5218167 bm!368025) bm!368029))

(declare-fun m!6266232 () Bool)

(assert (=> b!5218174 m!6266232))

(assert (=> b!5218170 m!6266196))

(declare-fun m!6266234 () Bool)

(assert (=> bm!368028 m!6266234))

(declare-fun m!6266236 () Bool)

(assert (=> bm!368029 m!6266236))

(declare-fun m!6266238 () Bool)

(assert (=> bm!368026 m!6266238))

(assert (=> b!5217519 d!1682337))

(declare-fun e!3248131 () Bool)

(declare-fun d!1682339 () Bool)

(assert (=> d!1682339 (= (matchZipper!1051 ((_ map or) lt!2143051 lt!2143067) (t!373889 s!2326)) e!3248131)))

(declare-fun res!2215901 () Bool)

(assert (=> d!1682339 (=> res!2215901 e!3248131)))

(assert (=> d!1682339 (= res!2215901 (matchZipper!1051 lt!2143051 (t!373889 s!2326)))))

(declare-fun lt!2143146 () Unit!152494)

(declare-fun choose!38808 ((InoxSet Context!8382) (InoxSet Context!8382) List!60721) Unit!152494)

(assert (=> d!1682339 (= lt!2143146 (choose!38808 lt!2143051 lt!2143067 (t!373889 s!2326)))))

(assert (=> d!1682339 (= (lemmaZipperConcatMatchesSameAsBothZippers!44 lt!2143051 lt!2143067 (t!373889 s!2326)) lt!2143146)))

(declare-fun b!5218177 () Bool)

(assert (=> b!5218177 (= e!3248131 (matchZipper!1051 lt!2143067 (t!373889 s!2326)))))

(assert (= (and d!1682339 (not res!2215901)) b!5218177))

(assert (=> d!1682339 m!6265846))

(assert (=> d!1682339 m!6265804))

(declare-fun m!6266240 () Bool)

(assert (=> d!1682339 m!6266240))

(assert (=> b!5218177 m!6265784))

(assert (=> b!5217498 d!1682339))

(declare-fun d!1682341 () Bool)

(declare-fun c!900324 () Bool)

(assert (=> d!1682341 (= c!900324 (isEmpty!32517 (t!373889 s!2326)))))

(declare-fun e!3248134 () Bool)

(assert (=> d!1682341 (= (matchZipper!1051 lt!2143051 (t!373889 s!2326)) e!3248134)))

(declare-fun b!5218182 () Bool)

(declare-fun nullableZipper!1233 ((InoxSet Context!8382)) Bool)

(assert (=> b!5218182 (= e!3248134 (nullableZipper!1233 lt!2143051))))

(declare-fun b!5218183 () Bool)

(declare-fun derivationStepZipper!1077 ((InoxSet Context!8382) C!29884) (InoxSet Context!8382))

(assert (=> b!5218183 (= e!3248134 (matchZipper!1051 (derivationStepZipper!1077 lt!2143051 (head!11185 (t!373889 s!2326))) (tail!10282 (t!373889 s!2326))))))

(assert (= (and d!1682341 c!900324) b!5218182))

(assert (= (and d!1682341 (not c!900324)) b!5218183))

(declare-fun m!6266242 () Bool)

(assert (=> d!1682341 m!6266242))

(declare-fun m!6266244 () Bool)

(assert (=> b!5218182 m!6266244))

(declare-fun m!6266246 () Bool)

(assert (=> b!5218183 m!6266246))

(assert (=> b!5218183 m!6266246))

(declare-fun m!6266248 () Bool)

(assert (=> b!5218183 m!6266248))

(declare-fun m!6266250 () Bool)

(assert (=> b!5218183 m!6266250))

(assert (=> b!5218183 m!6266248))

(assert (=> b!5218183 m!6266250))

(declare-fun m!6266252 () Bool)

(assert (=> b!5218183 m!6266252))

(assert (=> b!5217498 d!1682341))

(declare-fun d!1682343 () Bool)

(declare-fun c!900325 () Bool)

(assert (=> d!1682343 (= c!900325 (isEmpty!32517 (t!373889 s!2326)))))

(declare-fun e!3248135 () Bool)

(assert (=> d!1682343 (= (matchZipper!1051 ((_ map or) lt!2143051 lt!2143067) (t!373889 s!2326)) e!3248135)))

(declare-fun b!5218184 () Bool)

(assert (=> b!5218184 (= e!3248135 (nullableZipper!1233 ((_ map or) lt!2143051 lt!2143067)))))

(declare-fun b!5218185 () Bool)

(assert (=> b!5218185 (= e!3248135 (matchZipper!1051 (derivationStepZipper!1077 ((_ map or) lt!2143051 lt!2143067) (head!11185 (t!373889 s!2326))) (tail!10282 (t!373889 s!2326))))))

(assert (= (and d!1682343 c!900325) b!5218184))

(assert (= (and d!1682343 (not c!900325)) b!5218185))

(assert (=> d!1682343 m!6266242))

(declare-fun m!6266254 () Bool)

(assert (=> b!5218184 m!6266254))

(assert (=> b!5218185 m!6266246))

(assert (=> b!5218185 m!6266246))

(declare-fun m!6266256 () Bool)

(assert (=> b!5218185 m!6266256))

(assert (=> b!5218185 m!6266250))

(assert (=> b!5218185 m!6266256))

(assert (=> b!5218185 m!6266250))

(declare-fun m!6266258 () Bool)

(assert (=> b!5218185 m!6266258))

(assert (=> b!5217498 d!1682343))

(declare-fun d!1682345 () Bool)

(declare-fun c!900326 () Bool)

(assert (=> d!1682345 (= c!900326 (isEmpty!32517 (t!373889 s!2326)))))

(declare-fun e!3248136 () Bool)

(assert (=> d!1682345 (= (matchZipper!1051 lt!2143061 (t!373889 s!2326)) e!3248136)))

(declare-fun b!5218186 () Bool)

(assert (=> b!5218186 (= e!3248136 (nullableZipper!1233 lt!2143061))))

(declare-fun b!5218187 () Bool)

(assert (=> b!5218187 (= e!3248136 (matchZipper!1051 (derivationStepZipper!1077 lt!2143061 (head!11185 (t!373889 s!2326))) (tail!10282 (t!373889 s!2326))))))

(assert (= (and d!1682345 c!900326) b!5218186))

(assert (= (and d!1682345 (not c!900326)) b!5218187))

(assert (=> d!1682345 m!6266242))

(declare-fun m!6266260 () Bool)

(assert (=> b!5218186 m!6266260))

(assert (=> b!5218187 m!6266246))

(assert (=> b!5218187 m!6266246))

(declare-fun m!6266262 () Bool)

(assert (=> b!5218187 m!6266262))

(assert (=> b!5218187 m!6266250))

(assert (=> b!5218187 m!6266262))

(assert (=> b!5218187 m!6266250))

(declare-fun m!6266264 () Bool)

(assert (=> b!5218187 m!6266264))

(assert (=> b!5217501 d!1682345))

(assert (=> b!5217493 d!1682345))

(declare-fun d!1682347 () Bool)

(declare-fun e!3248139 () Bool)

(assert (=> d!1682347 e!3248139))

(declare-fun res!2215904 () Bool)

(assert (=> d!1682347 (=> (not res!2215904) (not e!3248139))))

(declare-fun lt!2143149 () List!60722)

(declare-fun noDuplicate!1189 (List!60722) Bool)

(assert (=> d!1682347 (= res!2215904 (noDuplicate!1189 lt!2143149))))

(declare-fun choose!38809 ((InoxSet Context!8382)) List!60722)

(assert (=> d!1682347 (= lt!2143149 (choose!38809 z!1189))))

(assert (=> d!1682347 (= (toList!8591 z!1189) lt!2143149)))

(declare-fun b!5218190 () Bool)

(declare-fun content!10742 (List!60722) (InoxSet Context!8382))

(assert (=> b!5218190 (= e!3248139 (= (content!10742 lt!2143149) z!1189))))

(assert (= (and d!1682347 res!2215904) b!5218190))

(declare-fun m!6266266 () Bool)

(assert (=> d!1682347 m!6266266))

(declare-fun m!6266268 () Bool)

(assert (=> d!1682347 m!6266268))

(declare-fun m!6266270 () Bool)

(assert (=> b!5218190 m!6266270))

(assert (=> b!5217502 d!1682347))

(declare-fun d!1682349 () Bool)

(assert (=> d!1682349 (= (isEmpty!32513 (t!373890 zl!343)) ((_ is Nil!60598) (t!373890 zl!343)))))

(assert (=> b!5217511 d!1682349))

(declare-fun b!5218191 () Bool)

(declare-fun e!3248141 () Bool)

(declare-fun e!3248142 () Bool)

(assert (=> b!5218191 (= e!3248141 e!3248142)))

(declare-fun res!2215908 () Bool)

(assert (=> b!5218191 (=> (not res!2215908) (not e!3248142))))

(declare-fun call!368037 () Bool)

(assert (=> b!5218191 (= res!2215908 call!368037)))

(declare-fun b!5218192 () Bool)

(declare-fun e!3248140 () Bool)

(declare-fun call!368035 () Bool)

(assert (=> b!5218192 (= e!3248140 call!368035)))

(declare-fun c!900328 () Bool)

(declare-fun bm!368030 () Bool)

(declare-fun c!900327 () Bool)

(assert (=> bm!368030 (= call!368035 (validRegex!6543 (ite c!900328 (reg!15136 (regOne!30127 (regOne!30126 r!7292))) (ite c!900327 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292)))))))))

(declare-fun b!5218193 () Bool)

(declare-fun e!3248145 () Bool)

(declare-fun e!3248144 () Bool)

(assert (=> b!5218193 (= e!3248145 e!3248144)))

(assert (=> b!5218193 (= c!900328 ((_ is Star!14807) (regOne!30127 (regOne!30126 r!7292))))))

(declare-fun bm!368031 () Bool)

(assert (=> bm!368031 (= call!368037 (validRegex!6543 (ite c!900327 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))))))

(declare-fun bm!368032 () Bool)

(declare-fun call!368036 () Bool)

(assert (=> bm!368032 (= call!368036 call!368035)))

(declare-fun b!5218194 () Bool)

(assert (=> b!5218194 (= e!3248142 call!368036)))

(declare-fun b!5218195 () Bool)

(declare-fun res!2215909 () Bool)

(assert (=> b!5218195 (=> res!2215909 e!3248141)))

(assert (=> b!5218195 (= res!2215909 (not ((_ is Concat!23652) (regOne!30127 (regOne!30126 r!7292)))))))

(declare-fun e!3248146 () Bool)

(assert (=> b!5218195 (= e!3248146 e!3248141)))

(declare-fun d!1682351 () Bool)

(declare-fun res!2215905 () Bool)

(assert (=> d!1682351 (=> res!2215905 e!3248145)))

(assert (=> d!1682351 (= res!2215905 ((_ is ElementMatch!14807) (regOne!30127 (regOne!30126 r!7292))))))

(assert (=> d!1682351 (= (validRegex!6543 (regOne!30127 (regOne!30126 r!7292))) e!3248145)))

(declare-fun b!5218196 () Bool)

(declare-fun e!3248143 () Bool)

(assert (=> b!5218196 (= e!3248143 call!368036)))

(declare-fun b!5218197 () Bool)

(assert (=> b!5218197 (= e!3248144 e!3248140)))

(declare-fun res!2215907 () Bool)

(assert (=> b!5218197 (= res!2215907 (not (nullable!4976 (reg!15136 (regOne!30127 (regOne!30126 r!7292))))))))

(assert (=> b!5218197 (=> (not res!2215907) (not e!3248140))))

(declare-fun b!5218198 () Bool)

(assert (=> b!5218198 (= e!3248144 e!3248146)))

(assert (=> b!5218198 (= c!900327 ((_ is Union!14807) (regOne!30127 (regOne!30126 r!7292))))))

(declare-fun b!5218199 () Bool)

(declare-fun res!2215906 () Bool)

(assert (=> b!5218199 (=> (not res!2215906) (not e!3248143))))

(assert (=> b!5218199 (= res!2215906 call!368037)))

(assert (=> b!5218199 (= e!3248146 e!3248143)))

(assert (= (and d!1682351 (not res!2215905)) b!5218193))

(assert (= (and b!5218193 c!900328) b!5218197))

(assert (= (and b!5218193 (not c!900328)) b!5218198))

(assert (= (and b!5218197 res!2215907) b!5218192))

(assert (= (and b!5218198 c!900327) b!5218199))

(assert (= (and b!5218198 (not c!900327)) b!5218195))

(assert (= (and b!5218199 res!2215906) b!5218196))

(assert (= (and b!5218195 (not res!2215909)) b!5218191))

(assert (= (and b!5218191 res!2215908) b!5218194))

(assert (= (or b!5218196 b!5218194) bm!368032))

(assert (= (or b!5218199 b!5218191) bm!368031))

(assert (= (or b!5218192 bm!368032) bm!368030))

(declare-fun m!6266272 () Bool)

(assert (=> bm!368030 m!6266272))

(declare-fun m!6266274 () Bool)

(assert (=> bm!368031 m!6266274))

(declare-fun m!6266276 () Bool)

(assert (=> b!5218197 m!6266276))

(assert (=> b!5217492 d!1682351))

(assert (=> b!5217494 d!1682341))

(declare-fun d!1682353 () Bool)

(declare-fun c!900329 () Bool)

(assert (=> d!1682353 (= c!900329 (isEmpty!32517 (t!373889 s!2326)))))

(declare-fun e!3248147 () Bool)

(assert (=> d!1682353 (= (matchZipper!1051 lt!2143052 (t!373889 s!2326)) e!3248147)))

(declare-fun b!5218200 () Bool)

(assert (=> b!5218200 (= e!3248147 (nullableZipper!1233 lt!2143052))))

(declare-fun b!5218201 () Bool)

(assert (=> b!5218201 (= e!3248147 (matchZipper!1051 (derivationStepZipper!1077 lt!2143052 (head!11185 (t!373889 s!2326))) (tail!10282 (t!373889 s!2326))))))

(assert (= (and d!1682353 c!900329) b!5218200))

(assert (= (and d!1682353 (not c!900329)) b!5218201))

(assert (=> d!1682353 m!6266242))

(declare-fun m!6266278 () Bool)

(assert (=> b!5218200 m!6266278))

(assert (=> b!5218201 m!6266246))

(assert (=> b!5218201 m!6266246))

(declare-fun m!6266280 () Bool)

(assert (=> b!5218201 m!6266280))

(assert (=> b!5218201 m!6266250))

(assert (=> b!5218201 m!6266280))

(assert (=> b!5218201 m!6266250))

(declare-fun m!6266282 () Bool)

(assert (=> b!5218201 m!6266282))

(assert (=> b!5217494 d!1682353))

(declare-fun d!1682355 () Bool)

(declare-fun c!900330 () Bool)

(assert (=> d!1682355 (= c!900330 (isEmpty!32517 (t!373889 s!2326)))))

(declare-fun e!3248148 () Bool)

(assert (=> d!1682355 (= (matchZipper!1051 lt!2143053 (t!373889 s!2326)) e!3248148)))

(declare-fun b!5218202 () Bool)

(assert (=> b!5218202 (= e!3248148 (nullableZipper!1233 lt!2143053))))

(declare-fun b!5218203 () Bool)

(assert (=> b!5218203 (= e!3248148 (matchZipper!1051 (derivationStepZipper!1077 lt!2143053 (head!11185 (t!373889 s!2326))) (tail!10282 (t!373889 s!2326))))))

(assert (= (and d!1682355 c!900330) b!5218202))

(assert (= (and d!1682355 (not c!900330)) b!5218203))

(assert (=> d!1682355 m!6266242))

(declare-fun m!6266284 () Bool)

(assert (=> b!5218202 m!6266284))

(assert (=> b!5218203 m!6266246))

(assert (=> b!5218203 m!6266246))

(declare-fun m!6266286 () Bool)

(assert (=> b!5218203 m!6266286))

(assert (=> b!5218203 m!6266250))

(assert (=> b!5218203 m!6266286))

(assert (=> b!5218203 m!6266250))

(declare-fun m!6266288 () Bool)

(assert (=> b!5218203 m!6266288))

(assert (=> b!5217494 d!1682355))

(declare-fun d!1682357 () Bool)

(declare-fun e!3248149 () Bool)

(assert (=> d!1682357 (= (matchZipper!1051 ((_ map or) lt!2143053 lt!2143061) (t!373889 s!2326)) e!3248149)))

(declare-fun res!2215910 () Bool)

(assert (=> d!1682357 (=> res!2215910 e!3248149)))

(assert (=> d!1682357 (= res!2215910 (matchZipper!1051 lt!2143053 (t!373889 s!2326)))))

(declare-fun lt!2143150 () Unit!152494)

(assert (=> d!1682357 (= lt!2143150 (choose!38808 lt!2143053 lt!2143061 (t!373889 s!2326)))))

(assert (=> d!1682357 (= (lemmaZipperConcatMatchesSameAsBothZippers!44 lt!2143053 lt!2143061 (t!373889 s!2326)) lt!2143150)))

(declare-fun b!5218204 () Bool)

(assert (=> b!5218204 (= e!3248149 (matchZipper!1051 lt!2143061 (t!373889 s!2326)))))

(assert (= (and d!1682357 (not res!2215910)) b!5218204))

(declare-fun m!6266290 () Bool)

(assert (=> d!1682357 m!6266290))

(assert (=> d!1682357 m!6265808))

(declare-fun m!6266292 () Bool)

(assert (=> d!1682357 m!6266292))

(assert (=> b!5218204 m!6265816))

(assert (=> b!5217494 d!1682357))

(declare-fun d!1682359 () Bool)

(assert (=> d!1682359 (= (nullable!4976 (regOne!30127 (regOne!30126 r!7292))) (nullableFct!1385 (regOne!30127 (regOne!30126 r!7292))))))

(declare-fun bs!1211919 () Bool)

(assert (= bs!1211919 d!1682359))

(declare-fun m!6266294 () Bool)

(assert (=> bs!1211919 m!6266294))

(assert (=> b!5217504 d!1682359))

(declare-fun d!1682361 () Bool)

(assert (=> d!1682361 (= (flatMap!534 lt!2143058 lambda!261769) (choose!38807 lt!2143058 lambda!261769))))

(declare-fun bs!1211920 () Bool)

(assert (= bs!1211920 d!1682361))

(declare-fun m!6266296 () Bool)

(assert (=> bs!1211920 m!6266296))

(assert (=> b!5217504 d!1682361))

(declare-fun b!5218205 () Bool)

(declare-fun e!3248150 () (InoxSet Context!8382))

(declare-fun e!3248151 () (InoxSet Context!8382))

(assert (=> b!5218205 (= e!3248150 e!3248151)))

(declare-fun c!900332 () Bool)

(assert (=> b!5218205 (= c!900332 ((_ is Cons!60596) (exprs!4691 lt!2143059)))))

(declare-fun bm!368033 () Bool)

(declare-fun call!368038 () (InoxSet Context!8382))

(assert (=> bm!368033 (= call!368038 (derivationStepZipperDown!255 (h!67044 (exprs!4691 lt!2143059)) (Context!8383 (t!373888 (exprs!4691 lt!2143059))) (h!67045 s!2326)))))

(declare-fun b!5218206 () Bool)

(assert (=> b!5218206 (= e!3248151 ((as const (Array Context!8382 Bool)) false))))

(declare-fun b!5218207 () Bool)

(assert (=> b!5218207 (= e!3248150 ((_ map or) call!368038 (derivationStepZipperUp!179 (Context!8383 (t!373888 (exprs!4691 lt!2143059))) (h!67045 s!2326))))))

(declare-fun b!5218208 () Bool)

(declare-fun e!3248152 () Bool)

(assert (=> b!5218208 (= e!3248152 (nullable!4976 (h!67044 (exprs!4691 lt!2143059))))))

(declare-fun d!1682363 () Bool)

(declare-fun c!900331 () Bool)

(assert (=> d!1682363 (= c!900331 e!3248152)))

(declare-fun res!2215911 () Bool)

(assert (=> d!1682363 (=> (not res!2215911) (not e!3248152))))

(assert (=> d!1682363 (= res!2215911 ((_ is Cons!60596) (exprs!4691 lt!2143059)))))

(assert (=> d!1682363 (= (derivationStepZipperUp!179 lt!2143059 (h!67045 s!2326)) e!3248150)))

(declare-fun b!5218209 () Bool)

(assert (=> b!5218209 (= e!3248151 call!368038)))

(assert (= (and d!1682363 res!2215911) b!5218208))

(assert (= (and d!1682363 c!900331) b!5218207))

(assert (= (and d!1682363 (not c!900331)) b!5218205))

(assert (= (and b!5218205 c!900332) b!5218209))

(assert (= (and b!5218205 (not c!900332)) b!5218206))

(assert (= (or b!5218207 b!5218209) bm!368033))

(declare-fun m!6266298 () Bool)

(assert (=> bm!368033 m!6266298))

(declare-fun m!6266300 () Bool)

(assert (=> b!5218207 m!6266300))

(declare-fun m!6266302 () Bool)

(assert (=> b!5218208 m!6266302))

(assert (=> b!5217504 d!1682363))

(declare-fun d!1682365 () Bool)

(assert (=> d!1682365 (= (flatMap!534 lt!2143058 lambda!261769) (dynLambda!23942 lambda!261769 lt!2143059))))

(declare-fun lt!2143151 () Unit!152494)

(assert (=> d!1682365 (= lt!2143151 (choose!38806 lt!2143058 lt!2143059 lambda!261769))))

(assert (=> d!1682365 (= lt!2143058 (store ((as const (Array Context!8382 Bool)) false) lt!2143059 true))))

(assert (=> d!1682365 (= (lemmaFlatMapOnSingletonSet!66 lt!2143058 lt!2143059 lambda!261769) lt!2143151)))

(declare-fun b_lambda!201779 () Bool)

(assert (=> (not b_lambda!201779) (not d!1682365)))

(declare-fun bs!1211921 () Bool)

(assert (= bs!1211921 d!1682365))

(assert (=> bs!1211921 m!6265782))

(declare-fun m!6266304 () Bool)

(assert (=> bs!1211921 m!6266304))

(declare-fun m!6266306 () Bool)

(assert (=> bs!1211921 m!6266306))

(assert (=> bs!1211921 m!6265778))

(assert (=> b!5217504 d!1682365))

(declare-fun d!1682367 () Bool)

(declare-fun c!900333 () Bool)

(assert (=> d!1682367 (= c!900333 (isEmpty!32517 (t!373889 s!2326)))))

(declare-fun e!3248153 () Bool)

(assert (=> d!1682367 (= (matchZipper!1051 lt!2143067 (t!373889 s!2326)) e!3248153)))

(declare-fun b!5218210 () Bool)

(assert (=> b!5218210 (= e!3248153 (nullableZipper!1233 lt!2143067))))

(declare-fun b!5218211 () Bool)

(assert (=> b!5218211 (= e!3248153 (matchZipper!1051 (derivationStepZipper!1077 lt!2143067 (head!11185 (t!373889 s!2326))) (tail!10282 (t!373889 s!2326))))))

(assert (= (and d!1682367 c!900333) b!5218210))

(assert (= (and d!1682367 (not c!900333)) b!5218211))

(assert (=> d!1682367 m!6266242))

(declare-fun m!6266308 () Bool)

(assert (=> b!5218210 m!6266308))

(assert (=> b!5218211 m!6266246))

(assert (=> b!5218211 m!6266246))

(declare-fun m!6266310 () Bool)

(assert (=> b!5218211 m!6266310))

(assert (=> b!5218211 m!6266250))

(assert (=> b!5218211 m!6266310))

(assert (=> b!5218211 m!6266250))

(declare-fun m!6266312 () Bool)

(assert (=> b!5218211 m!6266312))

(assert (=> b!5217515 d!1682367))

(declare-fun bs!1211922 () Bool)

(declare-fun d!1682369 () Bool)

(assert (= bs!1211922 (and d!1682369 d!1682319)))

(declare-fun lambda!261818 () Int)

(assert (=> bs!1211922 (= lambda!261818 lambda!261815)))

(assert (=> d!1682369 (= (inv!80264 (h!67046 zl!343)) (forall!14241 (exprs!4691 (h!67046 zl!343)) lambda!261818))))

(declare-fun bs!1211923 () Bool)

(assert (= bs!1211923 d!1682369))

(declare-fun m!6266314 () Bool)

(assert (=> bs!1211923 m!6266314))

(assert (=> b!5217495 d!1682369))

(declare-fun bs!1211924 () Bool)

(declare-fun d!1682371 () Bool)

(assert (= bs!1211924 (and d!1682371 d!1682319)))

(declare-fun lambda!261821 () Int)

(assert (=> bs!1211924 (= lambda!261821 lambda!261815)))

(declare-fun bs!1211925 () Bool)

(assert (= bs!1211925 (and d!1682371 d!1682369)))

(assert (=> bs!1211925 (= lambda!261821 lambda!261818)))

(declare-fun b!5218232 () Bool)

(declare-fun e!3248170 () Regex!14807)

(assert (=> b!5218232 (= e!3248170 (Union!14807 (h!67044 (unfocusZipperList!249 zl!343)) (generalisedUnion!736 (t!373888 (unfocusZipperList!249 zl!343)))))))

(declare-fun e!3248167 () Bool)

(assert (=> d!1682371 e!3248167))

(declare-fun res!2215916 () Bool)

(assert (=> d!1682371 (=> (not res!2215916) (not e!3248167))))

(declare-fun lt!2143154 () Regex!14807)

(assert (=> d!1682371 (= res!2215916 (validRegex!6543 lt!2143154))))

(declare-fun e!3248166 () Regex!14807)

(assert (=> d!1682371 (= lt!2143154 e!3248166)))

(declare-fun c!900342 () Bool)

(declare-fun e!3248168 () Bool)

(assert (=> d!1682371 (= c!900342 e!3248168)))

(declare-fun res!2215917 () Bool)

(assert (=> d!1682371 (=> (not res!2215917) (not e!3248168))))

(assert (=> d!1682371 (= res!2215917 ((_ is Cons!60596) (unfocusZipperList!249 zl!343)))))

(assert (=> d!1682371 (forall!14241 (unfocusZipperList!249 zl!343) lambda!261821)))

(assert (=> d!1682371 (= (generalisedUnion!736 (unfocusZipperList!249 zl!343)) lt!2143154)))

(declare-fun b!5218233 () Bool)

(declare-fun e!3248171 () Bool)

(declare-fun isUnion!210 (Regex!14807) Bool)

(assert (=> b!5218233 (= e!3248171 (isUnion!210 lt!2143154))))

(declare-fun b!5218234 () Bool)

(declare-fun e!3248169 () Bool)

(declare-fun isEmptyLang!778 (Regex!14807) Bool)

(assert (=> b!5218234 (= e!3248169 (isEmptyLang!778 lt!2143154))))

(declare-fun b!5218235 () Bool)

(assert (=> b!5218235 (= e!3248168 (isEmpty!32514 (t!373888 (unfocusZipperList!249 zl!343))))))

(declare-fun b!5218236 () Bool)

(assert (=> b!5218236 (= e!3248166 (h!67044 (unfocusZipperList!249 zl!343)))))

(declare-fun b!5218237 () Bool)

(assert (=> b!5218237 (= e!3248166 e!3248170)))

(declare-fun c!900345 () Bool)

(assert (=> b!5218237 (= c!900345 ((_ is Cons!60596) (unfocusZipperList!249 zl!343)))))

(declare-fun b!5218238 () Bool)

(assert (=> b!5218238 (= e!3248169 e!3248171)))

(declare-fun c!900343 () Bool)

(assert (=> b!5218238 (= c!900343 (isEmpty!32514 (tail!10283 (unfocusZipperList!249 zl!343))))))

(declare-fun b!5218239 () Bool)

(assert (=> b!5218239 (= e!3248171 (= lt!2143154 (head!11186 (unfocusZipperList!249 zl!343))))))

(declare-fun b!5218240 () Bool)

(assert (=> b!5218240 (= e!3248170 EmptyLang!14807)))

(declare-fun b!5218241 () Bool)

(assert (=> b!5218241 (= e!3248167 e!3248169)))

(declare-fun c!900344 () Bool)

(assert (=> b!5218241 (= c!900344 (isEmpty!32514 (unfocusZipperList!249 zl!343)))))

(assert (= (and d!1682371 res!2215917) b!5218235))

(assert (= (and d!1682371 c!900342) b!5218236))

(assert (= (and d!1682371 (not c!900342)) b!5218237))

(assert (= (and b!5218237 c!900345) b!5218232))

(assert (= (and b!5218237 (not c!900345)) b!5218240))

(assert (= (and d!1682371 res!2215916) b!5218241))

(assert (= (and b!5218241 c!900344) b!5218234))

(assert (= (and b!5218241 (not c!900344)) b!5218238))

(assert (= (and b!5218238 c!900343) b!5218239))

(assert (= (and b!5218238 (not c!900343)) b!5218233))

(assert (=> b!5218241 m!6265770))

(declare-fun m!6266316 () Bool)

(assert (=> b!5218241 m!6266316))

(declare-fun m!6266318 () Bool)

(assert (=> b!5218234 m!6266318))

(declare-fun m!6266320 () Bool)

(assert (=> d!1682371 m!6266320))

(assert (=> d!1682371 m!6265770))

(declare-fun m!6266322 () Bool)

(assert (=> d!1682371 m!6266322))

(declare-fun m!6266324 () Bool)

(assert (=> b!5218233 m!6266324))

(declare-fun m!6266326 () Bool)

(assert (=> b!5218232 m!6266326))

(assert (=> b!5218238 m!6265770))

(declare-fun m!6266328 () Bool)

(assert (=> b!5218238 m!6266328))

(assert (=> b!5218238 m!6266328))

(declare-fun m!6266330 () Bool)

(assert (=> b!5218238 m!6266330))

(declare-fun m!6266332 () Bool)

(assert (=> b!5218235 m!6266332))

(assert (=> b!5218239 m!6265770))

(declare-fun m!6266334 () Bool)

(assert (=> b!5218239 m!6266334))

(assert (=> b!5217513 d!1682371))

(declare-fun bs!1211926 () Bool)

(declare-fun d!1682373 () Bool)

(assert (= bs!1211926 (and d!1682373 d!1682319)))

(declare-fun lambda!261824 () Int)

(assert (=> bs!1211926 (= lambda!261824 lambda!261815)))

(declare-fun bs!1211927 () Bool)

(assert (= bs!1211927 (and d!1682373 d!1682369)))

(assert (=> bs!1211927 (= lambda!261824 lambda!261818)))

(declare-fun bs!1211928 () Bool)

(assert (= bs!1211928 (and d!1682373 d!1682371)))

(assert (=> bs!1211928 (= lambda!261824 lambda!261821)))

(declare-fun lt!2143157 () List!60720)

(assert (=> d!1682373 (forall!14241 lt!2143157 lambda!261824)))

(declare-fun e!3248174 () List!60720)

(assert (=> d!1682373 (= lt!2143157 e!3248174)))

(declare-fun c!900348 () Bool)

(assert (=> d!1682373 (= c!900348 ((_ is Cons!60598) zl!343))))

(assert (=> d!1682373 (= (unfocusZipperList!249 zl!343) lt!2143157)))

(declare-fun b!5218246 () Bool)

(assert (=> b!5218246 (= e!3248174 (Cons!60596 (generalisedConcat!476 (exprs!4691 (h!67046 zl!343))) (unfocusZipperList!249 (t!373890 zl!343))))))

(declare-fun b!5218247 () Bool)

(assert (=> b!5218247 (= e!3248174 Nil!60596)))

(assert (= (and d!1682373 c!900348) b!5218246))

(assert (= (and d!1682373 (not c!900348)) b!5218247))

(declare-fun m!6266336 () Bool)

(assert (=> d!1682373 m!6266336))

(assert (=> b!5218246 m!6265842))

(declare-fun m!6266338 () Bool)

(assert (=> b!5218246 m!6266338))

(assert (=> b!5217513 d!1682373))

(declare-fun bs!1211929 () Bool)

(declare-fun d!1682375 () Bool)

(assert (= bs!1211929 (and d!1682375 d!1682319)))

(declare-fun lambda!261825 () Int)

(assert (=> bs!1211929 (= lambda!261825 lambda!261815)))

(declare-fun bs!1211930 () Bool)

(assert (= bs!1211930 (and d!1682375 d!1682369)))

(assert (=> bs!1211930 (= lambda!261825 lambda!261818)))

(declare-fun bs!1211931 () Bool)

(assert (= bs!1211931 (and d!1682375 d!1682371)))

(assert (=> bs!1211931 (= lambda!261825 lambda!261821)))

(declare-fun bs!1211932 () Bool)

(assert (= bs!1211932 (and d!1682375 d!1682373)))

(assert (=> bs!1211932 (= lambda!261825 lambda!261824)))

(assert (=> d!1682375 (= (inv!80264 setElem!33171) (forall!14241 (exprs!4691 setElem!33171) lambda!261825))))

(declare-fun bs!1211933 () Bool)

(assert (= bs!1211933 d!1682375))

(declare-fun m!6266340 () Bool)

(assert (=> bs!1211933 m!6266340))

(assert (=> setNonEmpty!33171 d!1682375))

(declare-fun b!5218260 () Bool)

(declare-fun e!3248177 () Bool)

(declare-fun tp!1462974 () Bool)

(assert (=> b!5218260 (= e!3248177 tp!1462974)))

(declare-fun b!5218261 () Bool)

(declare-fun tp!1462976 () Bool)

(declare-fun tp!1462973 () Bool)

(assert (=> b!5218261 (= e!3248177 (and tp!1462976 tp!1462973))))

(declare-fun b!5218258 () Bool)

(assert (=> b!5218258 (= e!3248177 tp_is_empty!38867)))

(declare-fun b!5218259 () Bool)

(declare-fun tp!1462975 () Bool)

(declare-fun tp!1462972 () Bool)

(assert (=> b!5218259 (= e!3248177 (and tp!1462975 tp!1462972))))

(assert (=> b!5217512 (= tp!1462896 e!3248177)))

(assert (= (and b!5217512 ((_ is ElementMatch!14807) (reg!15136 r!7292))) b!5218258))

(assert (= (and b!5217512 ((_ is Concat!23652) (reg!15136 r!7292))) b!5218259))

(assert (= (and b!5217512 ((_ is Star!14807) (reg!15136 r!7292))) b!5218260))

(assert (= (and b!5217512 ((_ is Union!14807) (reg!15136 r!7292))) b!5218261))

(declare-fun b!5218266 () Bool)

(declare-fun e!3248180 () Bool)

(declare-fun tp!1462981 () Bool)

(declare-fun tp!1462982 () Bool)

(assert (=> b!5218266 (= e!3248180 (and tp!1462981 tp!1462982))))

(assert (=> b!5217518 (= tp!1462895 e!3248180)))

(assert (= (and b!5217518 ((_ is Cons!60596) (exprs!4691 setElem!33171))) b!5218266))

(declare-fun b!5218267 () Bool)

(declare-fun e!3248181 () Bool)

(declare-fun tp!1462983 () Bool)

(declare-fun tp!1462984 () Bool)

(assert (=> b!5218267 (= e!3248181 (and tp!1462983 tp!1462984))))

(assert (=> b!5217516 (= tp!1462898 e!3248181)))

(assert (= (and b!5217516 ((_ is Cons!60596) (exprs!4691 (h!67046 zl!343)))) b!5218267))

(declare-fun b!5218272 () Bool)

(declare-fun e!3248184 () Bool)

(declare-fun tp!1462987 () Bool)

(assert (=> b!5218272 (= e!3248184 (and tp_is_empty!38867 tp!1462987))))

(assert (=> b!5217499 (= tp!1462902 e!3248184)))

(assert (= (and b!5217499 ((_ is Cons!60597) (t!373889 s!2326))) b!5218272))

(declare-fun b!5218280 () Bool)

(declare-fun e!3248190 () Bool)

(declare-fun tp!1462992 () Bool)

(assert (=> b!5218280 (= e!3248190 tp!1462992)))

(declare-fun e!3248189 () Bool)

(declare-fun b!5218279 () Bool)

(declare-fun tp!1462993 () Bool)

(assert (=> b!5218279 (= e!3248189 (and (inv!80264 (h!67046 (t!373890 zl!343))) e!3248190 tp!1462993))))

(assert (=> b!5217495 (= tp!1462903 e!3248189)))

(assert (= b!5218279 b!5218280))

(assert (= (and b!5217495 ((_ is Cons!60598) (t!373890 zl!343))) b!5218279))

(declare-fun m!6266342 () Bool)

(assert (=> b!5218279 m!6266342))

(declare-fun b!5218283 () Bool)

(declare-fun e!3248191 () Bool)

(declare-fun tp!1462996 () Bool)

(assert (=> b!5218283 (= e!3248191 tp!1462996)))

(declare-fun b!5218284 () Bool)

(declare-fun tp!1462998 () Bool)

(declare-fun tp!1462995 () Bool)

(assert (=> b!5218284 (= e!3248191 (and tp!1462998 tp!1462995))))

(declare-fun b!5218281 () Bool)

(assert (=> b!5218281 (= e!3248191 tp_is_empty!38867)))

(declare-fun b!5218282 () Bool)

(declare-fun tp!1462997 () Bool)

(declare-fun tp!1462994 () Bool)

(assert (=> b!5218282 (= e!3248191 (and tp!1462997 tp!1462994))))

(assert (=> b!5217497 (= tp!1462897 e!3248191)))

(assert (= (and b!5217497 ((_ is ElementMatch!14807) (regOne!30126 r!7292))) b!5218281))

(assert (= (and b!5217497 ((_ is Concat!23652) (regOne!30126 r!7292))) b!5218282))

(assert (= (and b!5217497 ((_ is Star!14807) (regOne!30126 r!7292))) b!5218283))

(assert (= (and b!5217497 ((_ is Union!14807) (regOne!30126 r!7292))) b!5218284))

(declare-fun b!5218287 () Bool)

(declare-fun e!3248192 () Bool)

(declare-fun tp!1463001 () Bool)

(assert (=> b!5218287 (= e!3248192 tp!1463001)))

(declare-fun b!5218288 () Bool)

(declare-fun tp!1463003 () Bool)

(declare-fun tp!1463000 () Bool)

(assert (=> b!5218288 (= e!3248192 (and tp!1463003 tp!1463000))))

(declare-fun b!5218285 () Bool)

(assert (=> b!5218285 (= e!3248192 tp_is_empty!38867)))

(declare-fun b!5218286 () Bool)

(declare-fun tp!1463002 () Bool)

(declare-fun tp!1462999 () Bool)

(assert (=> b!5218286 (= e!3248192 (and tp!1463002 tp!1462999))))

(assert (=> b!5217497 (= tp!1462894 e!3248192)))

(assert (= (and b!5217497 ((_ is ElementMatch!14807) (regTwo!30126 r!7292))) b!5218285))

(assert (= (and b!5217497 ((_ is Concat!23652) (regTwo!30126 r!7292))) b!5218286))

(assert (= (and b!5217497 ((_ is Star!14807) (regTwo!30126 r!7292))) b!5218287))

(assert (= (and b!5217497 ((_ is Union!14807) (regTwo!30126 r!7292))) b!5218288))

(declare-fun condSetEmpty!33177 () Bool)

(assert (=> setNonEmpty!33171 (= condSetEmpty!33177 (= setRest!33171 ((as const (Array Context!8382 Bool)) false)))))

(declare-fun setRes!33177 () Bool)

(assert (=> setNonEmpty!33171 (= tp!1462901 setRes!33177)))

(declare-fun setIsEmpty!33177 () Bool)

(assert (=> setIsEmpty!33177 setRes!33177))

(declare-fun setElem!33177 () Context!8382)

(declare-fun setNonEmpty!33177 () Bool)

(declare-fun e!3248195 () Bool)

(declare-fun tp!1463008 () Bool)

(assert (=> setNonEmpty!33177 (= setRes!33177 (and tp!1463008 (inv!80264 setElem!33177) e!3248195))))

(declare-fun setRest!33177 () (InoxSet Context!8382))

(assert (=> setNonEmpty!33177 (= setRest!33171 ((_ map or) (store ((as const (Array Context!8382 Bool)) false) setElem!33177 true) setRest!33177))))

(declare-fun b!5218293 () Bool)

(declare-fun tp!1463009 () Bool)

(assert (=> b!5218293 (= e!3248195 tp!1463009)))

(assert (= (and setNonEmpty!33171 condSetEmpty!33177) setIsEmpty!33177))

(assert (= (and setNonEmpty!33171 (not condSetEmpty!33177)) setNonEmpty!33177))

(assert (= setNonEmpty!33177 b!5218293))

(declare-fun m!6266344 () Bool)

(assert (=> setNonEmpty!33177 m!6266344))

(declare-fun b!5218296 () Bool)

(declare-fun e!3248196 () Bool)

(declare-fun tp!1463012 () Bool)

(assert (=> b!5218296 (= e!3248196 tp!1463012)))

(declare-fun b!5218297 () Bool)

(declare-fun tp!1463014 () Bool)

(declare-fun tp!1463011 () Bool)

(assert (=> b!5218297 (= e!3248196 (and tp!1463014 tp!1463011))))

(declare-fun b!5218294 () Bool)

(assert (=> b!5218294 (= e!3248196 tp_is_empty!38867)))

(declare-fun b!5218295 () Bool)

(declare-fun tp!1463013 () Bool)

(declare-fun tp!1463010 () Bool)

(assert (=> b!5218295 (= e!3248196 (and tp!1463013 tp!1463010))))

(assert (=> b!5217503 (= tp!1462899 e!3248196)))

(assert (= (and b!5217503 ((_ is ElementMatch!14807) (regOne!30127 r!7292))) b!5218294))

(assert (= (and b!5217503 ((_ is Concat!23652) (regOne!30127 r!7292))) b!5218295))

(assert (= (and b!5217503 ((_ is Star!14807) (regOne!30127 r!7292))) b!5218296))

(assert (= (and b!5217503 ((_ is Union!14807) (regOne!30127 r!7292))) b!5218297))

(declare-fun b!5218300 () Bool)

(declare-fun e!3248197 () Bool)

(declare-fun tp!1463017 () Bool)

(assert (=> b!5218300 (= e!3248197 tp!1463017)))

(declare-fun b!5218301 () Bool)

(declare-fun tp!1463019 () Bool)

(declare-fun tp!1463016 () Bool)

(assert (=> b!5218301 (= e!3248197 (and tp!1463019 tp!1463016))))

(declare-fun b!5218298 () Bool)

(assert (=> b!5218298 (= e!3248197 tp_is_empty!38867)))

(declare-fun b!5218299 () Bool)

(declare-fun tp!1463018 () Bool)

(declare-fun tp!1463015 () Bool)

(assert (=> b!5218299 (= e!3248197 (and tp!1463018 tp!1463015))))

(assert (=> b!5217503 (= tp!1462900 e!3248197)))

(assert (= (and b!5217503 ((_ is ElementMatch!14807) (regTwo!30127 r!7292))) b!5218298))

(assert (= (and b!5217503 ((_ is Concat!23652) (regTwo!30127 r!7292))) b!5218299))

(assert (= (and b!5217503 ((_ is Star!14807) (regTwo!30127 r!7292))) b!5218300))

(assert (= (and b!5217503 ((_ is Union!14807) (regTwo!30127 r!7292))) b!5218301))

(declare-fun b_lambda!201781 () Bool)

(assert (= b_lambda!201779 (or b!5217508 b_lambda!201781)))

(declare-fun bs!1211934 () Bool)

(declare-fun d!1682377 () Bool)

(assert (= bs!1211934 (and d!1682377 b!5217508)))

(assert (=> bs!1211934 (= (dynLambda!23942 lambda!261769 lt!2143059) (derivationStepZipperUp!179 lt!2143059 (h!67045 s!2326)))))

(assert (=> bs!1211934 m!6265776))

(assert (=> d!1682365 d!1682377))

(declare-fun b_lambda!201783 () Bool)

(assert (= b_lambda!201777 (or b!5217508 b_lambda!201783)))

(declare-fun bs!1211935 () Bool)

(declare-fun d!1682379 () Bool)

(assert (= bs!1211935 (and d!1682379 b!5217508)))

(assert (=> bs!1211935 (= (dynLambda!23942 lambda!261769 (h!67046 zl!343)) (derivationStepZipperUp!179 (h!67046 zl!343) (h!67045 s!2326)))))

(assert (=> bs!1211935 m!6265790))

(assert (=> d!1682321 d!1682379))

(check-sat (not bm!367993) (not b!5218201) (not b!5218293) (not d!1682365) (not d!1682355) (not bm!368031) (not d!1682319) (not b!5218091) (not d!1682313) (not b_lambda!201781) (not bm!367976) (not b!5218146) (not d!1682305) (not b!5218086) (not b!5217916) (not b!5217801) (not b!5218282) (not bm!368028) (not bm!368016) (not bm!367957) (not b!5218202) (not b!5218184) (not d!1682327) (not b!5218241) (not b!5218235) (not d!1682325) (not b!5218140) tp_is_empty!38867 (not b!5218295) (not b!5217911) (not d!1682343) (not b!5217907) (not b!5218151) (not b!5218093) (not b!5218092) (not b!5218234) (not bm!368017) (not d!1682361) (not b!5217915) (not b!5218089) (not d!1682347) (not bm!368009) (not b!5218025) (not bm!368023) (not bm!368015) (not b!5218182) (not b!5218297) (not d!1682357) (not b!5218261) (not d!1682299) (not b!5218090) (not b!5218239) (not b!5218272) (not b!5218187) (not d!1682359) (not b!5218208) (not b!5218141) (not b!5218207) (not b!5218232) (not b!5218296) (not b!5218284) (not b!5218233) (not d!1682369) (not bm!368012) (not d!1682311) (not b!5218210) (not bm!368026) (not d!1682341) (not b!5218062) (not b!5218020) (not b!5218211) (not b!5218197) (not bs!1211934) (not b!5218021) (not bm!367956) (not b!5218287) (not b!5218238) (not d!1682315) (not d!1682263) (not b!5218145) (not b!5218186) (not bs!1211935) (not b!5218183) (not bm!367992) (not b!5218288) (not b!5218279) (not b!5218190) (not b!5218286) (not b!5218260) (not d!1682339) (not setNonEmpty!33177) (not b!5218300) (not b!5218177) (not b!5217917) (not b!5218266) (not b!5218200) (not b!5218259) (not b!5218283) (not d!1682375) (not b!5218087) (not b!5218203) (not d!1682309) (not b!5218163) (not b!5218022) (not d!1682321) (not bm!368011) (not b!5218127) (not d!1682367) (not b!5218174) (not b!5218280) (not b!5217802) (not bm!368030) (not d!1682373) (not b!5218017) (not b!5218018) (not b!5218299) (not b!5218150) (not d!1682289) (not d!1682307) (not bm!368029) (not b_lambda!201783) (not d!1682353) (not b!5218267) (not b!5217910) (not d!1682345) (not d!1682371) (not b!5218204) (not b!5218185) (not bm!368020) (not bm!368022) (not b!5218246) (not bm!368033) (not b!5218301))
(check-sat)
(get-model)

(declare-fun d!1682629 () Bool)

(assert (=> d!1682629 (= (isEmpty!32514 (tail!10283 (exprs!4691 (h!67046 zl!343)))) ((_ is Nil!60596) (tail!10283 (exprs!4691 (h!67046 zl!343)))))))

(assert (=> b!5218087 d!1682629))

(declare-fun d!1682631 () Bool)

(assert (=> d!1682631 (= (tail!10283 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343))))))

(assert (=> b!5218087 d!1682631))

(declare-fun d!1682633 () Bool)

(declare-fun c!900495 () Bool)

(assert (=> d!1682633 (= c!900495 (isEmpty!32517 (tail!10282 (t!373889 s!2326))))))

(declare-fun e!3248530 () Bool)

(assert (=> d!1682633 (= (matchZipper!1051 (derivationStepZipper!1077 lt!2143051 (head!11185 (t!373889 s!2326))) (tail!10282 (t!373889 s!2326))) e!3248530)))

(declare-fun b!5218892 () Bool)

(assert (=> b!5218892 (= e!3248530 (nullableZipper!1233 (derivationStepZipper!1077 lt!2143051 (head!11185 (t!373889 s!2326)))))))

(declare-fun b!5218893 () Bool)

(assert (=> b!5218893 (= e!3248530 (matchZipper!1051 (derivationStepZipper!1077 (derivationStepZipper!1077 lt!2143051 (head!11185 (t!373889 s!2326))) (head!11185 (tail!10282 (t!373889 s!2326)))) (tail!10282 (tail!10282 (t!373889 s!2326)))))))

(assert (= (and d!1682633 c!900495) b!5218892))

(assert (= (and d!1682633 (not c!900495)) b!5218893))

(assert (=> d!1682633 m!6266250))

(declare-fun m!6266872 () Bool)

(assert (=> d!1682633 m!6266872))

(assert (=> b!5218892 m!6266248))

(declare-fun m!6266874 () Bool)

(assert (=> b!5218892 m!6266874))

(assert (=> b!5218893 m!6266250))

(declare-fun m!6266876 () Bool)

(assert (=> b!5218893 m!6266876))

(assert (=> b!5218893 m!6266248))

(assert (=> b!5218893 m!6266876))

(declare-fun m!6266878 () Bool)

(assert (=> b!5218893 m!6266878))

(assert (=> b!5218893 m!6266250))

(declare-fun m!6266880 () Bool)

(assert (=> b!5218893 m!6266880))

(assert (=> b!5218893 m!6266878))

(assert (=> b!5218893 m!6266880))

(declare-fun m!6266882 () Bool)

(assert (=> b!5218893 m!6266882))

(assert (=> b!5218183 d!1682633))

(declare-fun bs!1212091 () Bool)

(declare-fun d!1682635 () Bool)

(assert (= bs!1212091 (and d!1682635 b!5217508)))

(declare-fun lambda!261862 () Int)

(assert (=> bs!1212091 (= (= (head!11185 (t!373889 s!2326)) (h!67045 s!2326)) (= lambda!261862 lambda!261769))))

(assert (=> d!1682635 true))

(assert (=> d!1682635 (= (derivationStepZipper!1077 lt!2143051 (head!11185 (t!373889 s!2326))) (flatMap!534 lt!2143051 lambda!261862))))

(declare-fun bs!1212092 () Bool)

(assert (= bs!1212092 d!1682635))

(declare-fun m!6266884 () Bool)

(assert (=> bs!1212092 m!6266884))

(assert (=> b!5218183 d!1682635))

(declare-fun d!1682637 () Bool)

(assert (=> d!1682637 (= (head!11185 (t!373889 s!2326)) (h!67045 (t!373889 s!2326)))))

(assert (=> b!5218183 d!1682637))

(declare-fun d!1682639 () Bool)

(assert (=> d!1682639 (= (tail!10282 (t!373889 s!2326)) (t!373889 (t!373889 s!2326)))))

(assert (=> b!5218183 d!1682639))

(declare-fun d!1682641 () Bool)

(assert (=> d!1682641 (= (isEmpty!32514 (tail!10283 (unfocusZipperList!249 zl!343))) ((_ is Nil!60596) (tail!10283 (unfocusZipperList!249 zl!343))))))

(assert (=> b!5218238 d!1682641))

(declare-fun d!1682643 () Bool)

(assert (=> d!1682643 (= (tail!10283 (unfocusZipperList!249 zl!343)) (t!373888 (unfocusZipperList!249 zl!343)))))

(assert (=> b!5218238 d!1682643))

(assert (=> bs!1211935 d!1682333))

(declare-fun d!1682645 () Bool)

(assert (=> d!1682645 (= (isDefined!11621 lt!2143127) (not (isEmpty!32518 lt!2143127)))))

(declare-fun bs!1212093 () Bool)

(assert (= bs!1212093 d!1682645))

(declare-fun m!6266886 () Bool)

(assert (=> bs!1212093 m!6266886))

(assert (=> b!5218017 d!1682645))

(declare-fun b!5218896 () Bool)

(declare-fun e!3248534 () (InoxSet Context!8382))

(declare-fun call!368158 () (InoxSet Context!8382))

(declare-fun call!368157 () (InoxSet Context!8382))

(assert (=> b!5218896 (= e!3248534 ((_ map or) call!368158 call!368157))))

(declare-fun bm!368151 () Bool)

(declare-fun call!368156 () List!60720)

(declare-fun call!368161 () List!60720)

(assert (=> bm!368151 (= call!368156 call!368161)))

(declare-fun b!5218897 () Bool)

(declare-fun e!3248532 () (InoxSet Context!8382))

(assert (=> b!5218897 (= e!3248532 ((as const (Array Context!8382 Bool)) false))))

(declare-fun bm!368152 () Bool)

(declare-fun call!368160 () (InoxSet Context!8382))

(assert (=> bm!368152 (= call!368157 call!368160)))

(declare-fun b!5218898 () Bool)

(declare-fun e!3248533 () (InoxSet Context!8382))

(declare-fun call!368159 () (InoxSet Context!8382))

(assert (=> b!5218898 (= e!3248533 call!368159)))

(declare-fun bm!368153 () Bool)

(declare-fun c!900499 () Bool)

(declare-fun c!900500 () Bool)

(assert (=> bm!368153 (= call!368161 ($colon$colon!1283 (exprs!4691 (ite c!900300 lt!2143066 (Context!8383 call!368017))) (ite (or c!900500 c!900499) (regTwo!30126 (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))))) (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343))))))))))

(declare-fun bm!368154 () Bool)

(assert (=> bm!368154 (= call!368159 call!368157)))

(declare-fun b!5218899 () Bool)

(declare-fun e!3248531 () (InoxSet Context!8382))

(assert (=> b!5218899 (= e!3248531 ((_ map or) call!368160 call!368158))))

(declare-fun d!1682647 () Bool)

(declare-fun c!900498 () Bool)

(assert (=> d!1682647 (= c!900498 (and ((_ is ElementMatch!14807) (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))))) (= (c!900134 (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))))) (h!67045 s!2326))))))

(declare-fun e!3248536 () (InoxSet Context!8382))

(assert (=> d!1682647 (= (derivationStepZipperDown!255 (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343))))) (ite c!900300 lt!2143066 (Context!8383 call!368017)) (h!67045 s!2326)) e!3248536)))

(declare-fun b!5218900 () Bool)

(assert (=> b!5218900 (= e!3248534 e!3248533)))

(assert (=> b!5218900 (= c!900499 ((_ is Concat!23652) (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))))))))

(declare-fun bm!368155 () Bool)

(declare-fun c!900501 () Bool)

(assert (=> bm!368155 (= call!368158 (derivationStepZipperDown!255 (ite c!900501 (regTwo!30127 (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))))) (regOne!30126 (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343))))))) (ite c!900501 (ite c!900300 lt!2143066 (Context!8383 call!368017)) (Context!8383 call!368161)) (h!67045 s!2326)))))

(declare-fun b!5218901 () Bool)

(assert (=> b!5218901 (= e!3248532 call!368159)))

(declare-fun b!5218902 () Bool)

(assert (=> b!5218902 (= e!3248536 (store ((as const (Array Context!8382 Bool)) false) (ite c!900300 lt!2143066 (Context!8383 call!368017)) true))))

(declare-fun bm!368156 () Bool)

(assert (=> bm!368156 (= call!368160 (derivationStepZipperDown!255 (ite c!900501 (regOne!30127 (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))))) (ite c!900500 (regTwo!30126 (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))))) (ite c!900499 (regOne!30126 (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))))) (reg!15136 (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343))))))))) (ite (or c!900501 c!900500) (ite c!900300 lt!2143066 (Context!8383 call!368017)) (Context!8383 call!368156)) (h!67045 s!2326)))))

(declare-fun b!5218903 () Bool)

(declare-fun e!3248535 () Bool)

(assert (=> b!5218903 (= c!900500 e!3248535)))

(declare-fun res!2216107 () Bool)

(assert (=> b!5218903 (=> (not res!2216107) (not e!3248535))))

(assert (=> b!5218903 (= res!2216107 ((_ is Concat!23652) (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))))))))

(assert (=> b!5218903 (= e!3248531 e!3248534)))

(declare-fun b!5218904 () Bool)

(declare-fun c!900502 () Bool)

(assert (=> b!5218904 (= c!900502 ((_ is Star!14807) (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))))))))

(assert (=> b!5218904 (= e!3248533 e!3248532)))

(declare-fun b!5218905 () Bool)

(assert (=> b!5218905 (= e!3248536 e!3248531)))

(assert (=> b!5218905 (= c!900501 ((_ is Union!14807) (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))))))))

(declare-fun b!5218906 () Bool)

(assert (=> b!5218906 (= e!3248535 (nullable!4976 (regOne!30126 (ite c!900300 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343))))))))))

(assert (= (and d!1682647 c!900498) b!5218902))

(assert (= (and d!1682647 (not c!900498)) b!5218905))

(assert (= (and b!5218905 c!900501) b!5218899))

(assert (= (and b!5218905 (not c!900501)) b!5218903))

(assert (= (and b!5218903 res!2216107) b!5218906))

(assert (= (and b!5218903 c!900500) b!5218896))

(assert (= (and b!5218903 (not c!900500)) b!5218900))

(assert (= (and b!5218900 c!900499) b!5218898))

(assert (= (and b!5218900 (not c!900499)) b!5218904))

(assert (= (and b!5218904 c!900502) b!5218901))

(assert (= (and b!5218904 (not c!900502)) b!5218897))

(assert (= (or b!5218898 b!5218901) bm!368151))

(assert (= (or b!5218898 b!5218901) bm!368154))

(assert (= (or b!5218896 bm!368151) bm!368153))

(assert (= (or b!5218896 bm!368154) bm!368152))

(assert (= (or b!5218899 b!5218896) bm!368155))

(assert (= (or b!5218899 bm!368152) bm!368156))

(declare-fun m!6266888 () Bool)

(assert (=> b!5218906 m!6266888))

(declare-fun m!6266890 () Bool)

(assert (=> b!5218902 m!6266890))

(declare-fun m!6266892 () Bool)

(assert (=> bm!368155 m!6266892))

(declare-fun m!6266894 () Bool)

(assert (=> bm!368156 m!6266894))

(declare-fun m!6266896 () Bool)

(assert (=> bm!368153 m!6266896))

(assert (=> bm!368011 d!1682647))

(declare-fun d!1682649 () Bool)

(assert (=> d!1682649 (= ($colon$colon!1283 (exprs!4691 lt!2143066) (ite (or c!900314 c!900313) (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (regTwo!30127 (regOne!30126 r!7292)))) (Cons!60596 (ite (or c!900314 c!900313) (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (regTwo!30127 (regOne!30126 r!7292))) (exprs!4691 lt!2143066)))))

(assert (=> bm!368020 d!1682649))

(declare-fun b!5218907 () Bool)

(declare-fun e!3248538 () Bool)

(declare-fun e!3248539 () Bool)

(assert (=> b!5218907 (= e!3248538 e!3248539)))

(declare-fun res!2216111 () Bool)

(assert (=> b!5218907 (=> (not res!2216111) (not e!3248539))))

(declare-fun call!368164 () Bool)

(assert (=> b!5218907 (= res!2216111 call!368164)))

(declare-fun b!5218908 () Bool)

(declare-fun e!3248537 () Bool)

(declare-fun call!368162 () Bool)

(assert (=> b!5218908 (= e!3248537 call!368162)))

(declare-fun bm!368157 () Bool)

(declare-fun c!900504 () Bool)

(declare-fun c!900503 () Bool)

(assert (=> bm!368157 (= call!368162 (validRegex!6543 (ite c!900504 (reg!15136 (ite c!900327 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))) (ite c!900503 (regTwo!30127 (ite c!900327 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))) (regTwo!30126 (ite c!900327 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292)))))))))))

(declare-fun b!5218909 () Bool)

(declare-fun e!3248542 () Bool)

(declare-fun e!3248541 () Bool)

(assert (=> b!5218909 (= e!3248542 e!3248541)))

(assert (=> b!5218909 (= c!900504 ((_ is Star!14807) (ite c!900327 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))))))

(declare-fun bm!368158 () Bool)

(assert (=> bm!368158 (= call!368164 (validRegex!6543 (ite c!900503 (regOne!30127 (ite c!900327 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))) (regOne!30126 (ite c!900327 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))))))))

(declare-fun bm!368159 () Bool)

(declare-fun call!368163 () Bool)

(assert (=> bm!368159 (= call!368163 call!368162)))

(declare-fun b!5218910 () Bool)

(assert (=> b!5218910 (= e!3248539 call!368163)))

(declare-fun b!5218911 () Bool)

(declare-fun res!2216112 () Bool)

(assert (=> b!5218911 (=> res!2216112 e!3248538)))

(assert (=> b!5218911 (= res!2216112 (not ((_ is Concat!23652) (ite c!900327 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292)))))))))

(declare-fun e!3248543 () Bool)

(assert (=> b!5218911 (= e!3248543 e!3248538)))

(declare-fun d!1682651 () Bool)

(declare-fun res!2216108 () Bool)

(assert (=> d!1682651 (=> res!2216108 e!3248542)))

(assert (=> d!1682651 (= res!2216108 ((_ is ElementMatch!14807) (ite c!900327 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))))))

(assert (=> d!1682651 (= (validRegex!6543 (ite c!900327 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))) e!3248542)))

(declare-fun b!5218912 () Bool)

(declare-fun e!3248540 () Bool)

(assert (=> b!5218912 (= e!3248540 call!368163)))

(declare-fun b!5218913 () Bool)

(assert (=> b!5218913 (= e!3248541 e!3248537)))

(declare-fun res!2216110 () Bool)

(assert (=> b!5218913 (= res!2216110 (not (nullable!4976 (reg!15136 (ite c!900327 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))))))))

(assert (=> b!5218913 (=> (not res!2216110) (not e!3248537))))

(declare-fun b!5218914 () Bool)

(assert (=> b!5218914 (= e!3248541 e!3248543)))

(assert (=> b!5218914 (= c!900503 ((_ is Union!14807) (ite c!900327 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))))))

(declare-fun b!5218915 () Bool)

(declare-fun res!2216109 () Bool)

(assert (=> b!5218915 (=> (not res!2216109) (not e!3248540))))

(assert (=> b!5218915 (= res!2216109 call!368164)))

(assert (=> b!5218915 (= e!3248543 e!3248540)))

(assert (= (and d!1682651 (not res!2216108)) b!5218909))

(assert (= (and b!5218909 c!900504) b!5218913))

(assert (= (and b!5218909 (not c!900504)) b!5218914))

(assert (= (and b!5218913 res!2216110) b!5218908))

(assert (= (and b!5218914 c!900503) b!5218915))

(assert (= (and b!5218914 (not c!900503)) b!5218911))

(assert (= (and b!5218915 res!2216109) b!5218912))

(assert (= (and b!5218911 (not res!2216112)) b!5218907))

(assert (= (and b!5218907 res!2216111) b!5218910))

(assert (= (or b!5218912 b!5218910) bm!368159))

(assert (= (or b!5218915 b!5218907) bm!368158))

(assert (= (or b!5218908 bm!368159) bm!368157))

(declare-fun m!6266898 () Bool)

(assert (=> bm!368157 m!6266898))

(declare-fun m!6266900 () Bool)

(assert (=> bm!368158 m!6266900))

(declare-fun m!6266902 () Bool)

(assert (=> b!5218913 m!6266902))

(assert (=> bm!368031 d!1682651))

(declare-fun bs!1212094 () Bool)

(declare-fun d!1682653 () Bool)

(assert (= bs!1212094 (and d!1682653 d!1682371)))

(declare-fun lambda!261863 () Int)

(assert (=> bs!1212094 (= lambda!261863 lambda!261821)))

(declare-fun bs!1212095 () Bool)

(assert (= bs!1212095 (and d!1682653 d!1682373)))

(assert (=> bs!1212095 (= lambda!261863 lambda!261824)))

(declare-fun bs!1212096 () Bool)

(assert (= bs!1212096 (and d!1682653 d!1682375)))

(assert (=> bs!1212096 (= lambda!261863 lambda!261825)))

(declare-fun bs!1212097 () Bool)

(assert (= bs!1212097 (and d!1682653 d!1682319)))

(assert (=> bs!1212097 (= lambda!261863 lambda!261815)))

(declare-fun bs!1212098 () Bool)

(assert (= bs!1212098 (and d!1682653 d!1682369)))

(assert (=> bs!1212098 (= lambda!261863 lambda!261818)))

(declare-fun b!5218916 () Bool)

(declare-fun e!3248546 () Regex!14807)

(declare-fun e!3248545 () Regex!14807)

(assert (=> b!5218916 (= e!3248546 e!3248545)))

(declare-fun c!900508 () Bool)

(assert (=> b!5218916 (= c!900508 ((_ is Cons!60596) (t!373888 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun b!5218917 () Bool)

(declare-fun e!3248548 () Bool)

(declare-fun lt!2143180 () Regex!14807)

(assert (=> b!5218917 (= e!3248548 (= lt!2143180 (head!11186 (t!373888 (exprs!4691 (h!67046 zl!343))))))))

(declare-fun b!5218918 () Bool)

(declare-fun e!3248549 () Bool)

(assert (=> b!5218918 (= e!3248549 e!3248548)))

(declare-fun c!900506 () Bool)

(assert (=> b!5218918 (= c!900506 (isEmpty!32514 (tail!10283 (t!373888 (exprs!4691 (h!67046 zl!343))))))))

(declare-fun b!5218919 () Bool)

(assert (=> b!5218919 (= e!3248545 EmptyExpr!14807)))

(declare-fun b!5218921 () Bool)

(assert (=> b!5218921 (= e!3248548 (isConcat!292 lt!2143180))))

(declare-fun b!5218922 () Bool)

(assert (=> b!5218922 (= e!3248545 (Concat!23652 (h!67044 (t!373888 (exprs!4691 (h!67046 zl!343)))) (generalisedConcat!476 (t!373888 (t!373888 (exprs!4691 (h!67046 zl!343)))))))))

(declare-fun b!5218923 () Bool)

(declare-fun e!3248547 () Bool)

(assert (=> b!5218923 (= e!3248547 e!3248549)))

(declare-fun c!900505 () Bool)

(assert (=> b!5218923 (= c!900505 (isEmpty!32514 (t!373888 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun b!5218924 () Bool)

(assert (=> b!5218924 (= e!3248549 (isEmptyExpr!769 lt!2143180))))

(declare-fun b!5218925 () Bool)

(assert (=> b!5218925 (= e!3248546 (h!67044 (t!373888 (exprs!4691 (h!67046 zl!343)))))))

(assert (=> d!1682653 e!3248547))

(declare-fun res!2216113 () Bool)

(assert (=> d!1682653 (=> (not res!2216113) (not e!3248547))))

(assert (=> d!1682653 (= res!2216113 (validRegex!6543 lt!2143180))))

(assert (=> d!1682653 (= lt!2143180 e!3248546)))

(declare-fun c!900507 () Bool)

(declare-fun e!3248544 () Bool)

(assert (=> d!1682653 (= c!900507 e!3248544)))

(declare-fun res!2216114 () Bool)

(assert (=> d!1682653 (=> (not res!2216114) (not e!3248544))))

(assert (=> d!1682653 (= res!2216114 ((_ is Cons!60596) (t!373888 (exprs!4691 (h!67046 zl!343)))))))

(assert (=> d!1682653 (forall!14241 (t!373888 (exprs!4691 (h!67046 zl!343))) lambda!261863)))

(assert (=> d!1682653 (= (generalisedConcat!476 (t!373888 (exprs!4691 (h!67046 zl!343)))) lt!2143180)))

(declare-fun b!5218920 () Bool)

(assert (=> b!5218920 (= e!3248544 (isEmpty!32514 (t!373888 (t!373888 (exprs!4691 (h!67046 zl!343))))))))

(assert (= (and d!1682653 res!2216114) b!5218920))

(assert (= (and d!1682653 c!900507) b!5218925))

(assert (= (and d!1682653 (not c!900507)) b!5218916))

(assert (= (and b!5218916 c!900508) b!5218922))

(assert (= (and b!5218916 (not c!900508)) b!5218919))

(assert (= (and d!1682653 res!2216113) b!5218923))

(assert (= (and b!5218923 c!900505) b!5218924))

(assert (= (and b!5218923 (not c!900505)) b!5218918))

(assert (= (and b!5218918 c!900506) b!5218917))

(assert (= (and b!5218918 (not c!900506)) b!5218921))

(declare-fun m!6266904 () Bool)

(assert (=> b!5218917 m!6266904))

(declare-fun m!6266906 () Bool)

(assert (=> b!5218922 m!6266906))

(declare-fun m!6266908 () Bool)

(assert (=> d!1682653 m!6266908))

(declare-fun m!6266910 () Bool)

(assert (=> d!1682653 m!6266910))

(assert (=> b!5218923 m!6265830))

(declare-fun m!6266912 () Bool)

(assert (=> b!5218918 m!6266912))

(assert (=> b!5218918 m!6266912))

(declare-fun m!6266914 () Bool)

(assert (=> b!5218918 m!6266914))

(declare-fun m!6266916 () Bool)

(assert (=> b!5218920 m!6266916))

(declare-fun m!6266918 () Bool)

(assert (=> b!5218921 m!6266918))

(declare-fun m!6266920 () Bool)

(assert (=> b!5218924 m!6266920))

(assert (=> b!5218091 d!1682653))

(declare-fun b!5218926 () Bool)

(declare-fun e!3248551 () Bool)

(declare-fun e!3248553 () Bool)

(assert (=> b!5218926 (= e!3248551 e!3248553)))

(declare-fun res!2216115 () Bool)

(assert (=> b!5218926 (=> res!2216115 e!3248553)))

(declare-fun call!368165 () Bool)

(assert (=> b!5218926 (= res!2216115 call!368165)))

(declare-fun b!5218927 () Bool)

(declare-fun res!2216118 () Bool)

(declare-fun e!3248556 () Bool)

(assert (=> b!5218927 (=> res!2216118 e!3248556)))

(assert (=> b!5218927 (= res!2216118 (not ((_ is ElementMatch!14807) (regOne!30126 r!7292))))))

(declare-fun e!3248554 () Bool)

(assert (=> b!5218927 (= e!3248554 e!3248556)))

(declare-fun b!5218928 () Bool)

(declare-fun res!2216117 () Bool)

(assert (=> b!5218928 (=> res!2216117 e!3248553)))

(assert (=> b!5218928 (= res!2216117 (not (isEmpty!32517 (tail!10282 (_1!35309 (get!20822 lt!2143127))))))))

(declare-fun b!5218929 () Bool)

(declare-fun res!2216119 () Bool)

(declare-fun e!3248555 () Bool)

(assert (=> b!5218929 (=> (not res!2216119) (not e!3248555))))

(assert (=> b!5218929 (= res!2216119 (not call!368165))))

(declare-fun bm!368160 () Bool)

(assert (=> bm!368160 (= call!368165 (isEmpty!32517 (_1!35309 (get!20822 lt!2143127))))))

(declare-fun b!5218930 () Bool)

(declare-fun e!3248552 () Bool)

(declare-fun lt!2143181 () Bool)

(assert (=> b!5218930 (= e!3248552 (= lt!2143181 call!368165))))

(declare-fun b!5218931 () Bool)

(declare-fun e!3248550 () Bool)

(assert (=> b!5218931 (= e!3248550 (matchR!6992 (derivativeStep!4055 (regOne!30126 r!7292) (head!11185 (_1!35309 (get!20822 lt!2143127)))) (tail!10282 (_1!35309 (get!20822 lt!2143127)))))))

(declare-fun d!1682655 () Bool)

(assert (=> d!1682655 e!3248552))

(declare-fun c!900510 () Bool)

(assert (=> d!1682655 (= c!900510 ((_ is EmptyExpr!14807) (regOne!30126 r!7292)))))

(assert (=> d!1682655 (= lt!2143181 e!3248550)))

(declare-fun c!900511 () Bool)

(assert (=> d!1682655 (= c!900511 (isEmpty!32517 (_1!35309 (get!20822 lt!2143127))))))

(assert (=> d!1682655 (validRegex!6543 (regOne!30126 r!7292))))

(assert (=> d!1682655 (= (matchR!6992 (regOne!30126 r!7292) (_1!35309 (get!20822 lt!2143127))) lt!2143181)))

(declare-fun b!5218932 () Bool)

(assert (=> b!5218932 (= e!3248555 (= (head!11185 (_1!35309 (get!20822 lt!2143127))) (c!900134 (regOne!30126 r!7292))))))

(declare-fun b!5218933 () Bool)

(assert (=> b!5218933 (= e!3248556 e!3248551)))

(declare-fun res!2216116 () Bool)

(assert (=> b!5218933 (=> (not res!2216116) (not e!3248551))))

(assert (=> b!5218933 (= res!2216116 (not lt!2143181))))

(declare-fun b!5218934 () Bool)

(assert (=> b!5218934 (= e!3248552 e!3248554)))

(declare-fun c!900509 () Bool)

(assert (=> b!5218934 (= c!900509 ((_ is EmptyLang!14807) (regOne!30126 r!7292)))))

(declare-fun b!5218935 () Bool)

(declare-fun res!2216120 () Bool)

(assert (=> b!5218935 (=> res!2216120 e!3248556)))

(assert (=> b!5218935 (= res!2216120 e!3248555)))

(declare-fun res!2216121 () Bool)

(assert (=> b!5218935 (=> (not res!2216121) (not e!3248555))))

(assert (=> b!5218935 (= res!2216121 lt!2143181)))

(declare-fun b!5218936 () Bool)

(assert (=> b!5218936 (= e!3248553 (not (= (head!11185 (_1!35309 (get!20822 lt!2143127))) (c!900134 (regOne!30126 r!7292)))))))

(declare-fun b!5218937 () Bool)

(assert (=> b!5218937 (= e!3248550 (nullable!4976 (regOne!30126 r!7292)))))

(declare-fun b!5218938 () Bool)

(declare-fun res!2216122 () Bool)

(assert (=> b!5218938 (=> (not res!2216122) (not e!3248555))))

(assert (=> b!5218938 (= res!2216122 (isEmpty!32517 (tail!10282 (_1!35309 (get!20822 lt!2143127)))))))

(declare-fun b!5218939 () Bool)

(assert (=> b!5218939 (= e!3248554 (not lt!2143181))))

(assert (= (and d!1682655 c!900511) b!5218937))

(assert (= (and d!1682655 (not c!900511)) b!5218931))

(assert (= (and d!1682655 c!900510) b!5218930))

(assert (= (and d!1682655 (not c!900510)) b!5218934))

(assert (= (and b!5218934 c!900509) b!5218939))

(assert (= (and b!5218934 (not c!900509)) b!5218927))

(assert (= (and b!5218927 (not res!2216118)) b!5218935))

(assert (= (and b!5218935 res!2216121) b!5218929))

(assert (= (and b!5218929 res!2216119) b!5218938))

(assert (= (and b!5218938 res!2216122) b!5218932))

(assert (= (and b!5218935 (not res!2216120)) b!5218933))

(assert (= (and b!5218933 res!2216116) b!5218926))

(assert (= (and b!5218926 (not res!2216115)) b!5218928))

(assert (= (and b!5218928 (not res!2216117)) b!5218936))

(assert (= (or b!5218930 b!5218926 b!5218929) bm!368160))

(declare-fun m!6266922 () Bool)

(assert (=> b!5218932 m!6266922))

(declare-fun m!6266924 () Bool)

(assert (=> b!5218937 m!6266924))

(assert (=> b!5218936 m!6266922))

(assert (=> b!5218931 m!6266922))

(assert (=> b!5218931 m!6266922))

(declare-fun m!6266926 () Bool)

(assert (=> b!5218931 m!6266926))

(declare-fun m!6266928 () Bool)

(assert (=> b!5218931 m!6266928))

(assert (=> b!5218931 m!6266926))

(assert (=> b!5218931 m!6266928))

(declare-fun m!6266930 () Bool)

(assert (=> b!5218931 m!6266930))

(assert (=> b!5218938 m!6266928))

(assert (=> b!5218938 m!6266928))

(declare-fun m!6266932 () Bool)

(assert (=> b!5218938 m!6266932))

(assert (=> b!5218928 m!6266928))

(assert (=> b!5218928 m!6266928))

(assert (=> b!5218928 m!6266932))

(declare-fun m!6266934 () Bool)

(assert (=> d!1682655 m!6266934))

(assert (=> d!1682655 m!6266142))

(assert (=> bm!368160 m!6266934))

(assert (=> b!5218021 d!1682655))

(declare-fun d!1682657 () Bool)

(assert (=> d!1682657 (= (get!20822 lt!2143127) (v!50946 lt!2143127))))

(assert (=> b!5218021 d!1682657))

(assert (=> d!1682339 d!1682343))

(assert (=> d!1682339 d!1682341))

(declare-fun e!3248559 () Bool)

(declare-fun d!1682659 () Bool)

(assert (=> d!1682659 (= (matchZipper!1051 ((_ map or) lt!2143051 lt!2143067) (t!373889 s!2326)) e!3248559)))

(declare-fun res!2216125 () Bool)

(assert (=> d!1682659 (=> res!2216125 e!3248559)))

(assert (=> d!1682659 (= res!2216125 (matchZipper!1051 lt!2143051 (t!373889 s!2326)))))

(assert (=> d!1682659 true))

(declare-fun _$48!823 () Unit!152494)

(assert (=> d!1682659 (= (choose!38808 lt!2143051 lt!2143067 (t!373889 s!2326)) _$48!823)))

(declare-fun b!5218942 () Bool)

(assert (=> b!5218942 (= e!3248559 (matchZipper!1051 lt!2143067 (t!373889 s!2326)))))

(assert (= (and d!1682659 (not res!2216125)) b!5218942))

(assert (=> d!1682659 m!6265846))

(assert (=> d!1682659 m!6265804))

(assert (=> b!5218942 m!6265784))

(assert (=> d!1682339 d!1682659))

(declare-fun b!5218943 () Bool)

(declare-fun e!3248563 () (InoxSet Context!8382))

(declare-fun call!368168 () (InoxSet Context!8382))

(declare-fun call!368167 () (InoxSet Context!8382))

(assert (=> b!5218943 (= e!3248563 ((_ map or) call!368168 call!368167))))

(declare-fun bm!368161 () Bool)

(declare-fun call!368166 () List!60720)

(declare-fun call!368171 () List!60720)

(assert (=> bm!368161 (= call!368166 call!368171)))

(declare-fun b!5218944 () Bool)

(declare-fun e!3248561 () (InoxSet Context!8382))

(assert (=> b!5218944 (= e!3248561 ((as const (Array Context!8382 Bool)) false))))

(declare-fun bm!368162 () Bool)

(declare-fun call!368170 () (InoxSet Context!8382))

(assert (=> bm!368162 (= call!368167 call!368170)))

(declare-fun b!5218945 () Bool)

(declare-fun e!3248562 () (InoxSet Context!8382))

(declare-fun call!368169 () (InoxSet Context!8382))

(assert (=> b!5218945 (= e!3248562 call!368169)))

(declare-fun c!900514 () Bool)

(declare-fun bm!368163 () Bool)

(declare-fun c!900513 () Bool)

(assert (=> bm!368163 (= call!368171 ($colon$colon!1283 (exprs!4691 (ite c!900315 lt!2143066 (Context!8383 call!368028))) (ite (or c!900514 c!900513) (regTwo!30126 (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))))) (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292)))))))))

(declare-fun bm!368164 () Bool)

(assert (=> bm!368164 (= call!368169 call!368167)))

(declare-fun b!5218946 () Bool)

(declare-fun e!3248560 () (InoxSet Context!8382))

(assert (=> b!5218946 (= e!3248560 ((_ map or) call!368170 call!368168))))

(declare-fun d!1682661 () Bool)

(declare-fun c!900512 () Bool)

(assert (=> d!1682661 (= c!900512 (and ((_ is ElementMatch!14807) (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))))) (= (c!900134 (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))))) (h!67045 s!2326))))))

(declare-fun e!3248565 () (InoxSet Context!8382))

(assert (=> d!1682661 (= (derivationStepZipperDown!255 (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292)))) (ite c!900315 lt!2143066 (Context!8383 call!368028)) (h!67045 s!2326)) e!3248565)))

(declare-fun b!5218947 () Bool)

(assert (=> b!5218947 (= e!3248563 e!3248562)))

(assert (=> b!5218947 (= c!900513 ((_ is Concat!23652) (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))))))))

(declare-fun bm!368165 () Bool)

(declare-fun c!900515 () Bool)

(assert (=> bm!368165 (= call!368168 (derivationStepZipperDown!255 (ite c!900515 (regTwo!30127 (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))))) (regOne!30126 (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292)))))) (ite c!900515 (ite c!900315 lt!2143066 (Context!8383 call!368028)) (Context!8383 call!368171)) (h!67045 s!2326)))))

(declare-fun b!5218948 () Bool)

(assert (=> b!5218948 (= e!3248561 call!368169)))

(declare-fun b!5218949 () Bool)

(assert (=> b!5218949 (= e!3248565 (store ((as const (Array Context!8382 Bool)) false) (ite c!900315 lt!2143066 (Context!8383 call!368028)) true))))

(declare-fun bm!368166 () Bool)

(assert (=> bm!368166 (= call!368170 (derivationStepZipperDown!255 (ite c!900515 (regOne!30127 (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))))) (ite c!900514 (regTwo!30126 (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))))) (ite c!900513 (regOne!30126 (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))))) (reg!15136 (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292)))))))) (ite (or c!900515 c!900514) (ite c!900315 lt!2143066 (Context!8383 call!368028)) (Context!8383 call!368166)) (h!67045 s!2326)))))

(declare-fun b!5218950 () Bool)

(declare-fun e!3248564 () Bool)

(assert (=> b!5218950 (= c!900514 e!3248564)))

(declare-fun res!2216126 () Bool)

(assert (=> b!5218950 (=> (not res!2216126) (not e!3248564))))

(assert (=> b!5218950 (= res!2216126 ((_ is Concat!23652) (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))))))))

(assert (=> b!5218950 (= e!3248560 e!3248563)))

(declare-fun b!5218951 () Bool)

(declare-fun c!900516 () Bool)

(assert (=> b!5218951 (= c!900516 ((_ is Star!14807) (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))))))))

(assert (=> b!5218951 (= e!3248562 e!3248561)))

(declare-fun b!5218952 () Bool)

(assert (=> b!5218952 (= e!3248565 e!3248560)))

(assert (=> b!5218952 (= c!900515 ((_ is Union!14807) (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))))))))

(declare-fun b!5218953 () Bool)

(assert (=> b!5218953 (= e!3248564 (nullable!4976 (regOne!30126 (ite c!900315 (regTwo!30127 (regTwo!30127 (regOne!30126 r!7292))) (regOne!30126 (regTwo!30127 (regOne!30126 r!7292)))))))))

(assert (= (and d!1682661 c!900512) b!5218949))

(assert (= (and d!1682661 (not c!900512)) b!5218952))

(assert (= (and b!5218952 c!900515) b!5218946))

(assert (= (and b!5218952 (not c!900515)) b!5218950))

(assert (= (and b!5218950 res!2216126) b!5218953))

(assert (= (and b!5218950 c!900514) b!5218943))

(assert (= (and b!5218950 (not c!900514)) b!5218947))

(assert (= (and b!5218947 c!900513) b!5218945))

(assert (= (and b!5218947 (not c!900513)) b!5218951))

(assert (= (and b!5218951 c!900516) b!5218948))

(assert (= (and b!5218951 (not c!900516)) b!5218944))

(assert (= (or b!5218945 b!5218948) bm!368161))

(assert (= (or b!5218945 b!5218948) bm!368164))

(assert (= (or b!5218943 bm!368161) bm!368163))

(assert (= (or b!5218943 bm!368164) bm!368162))

(assert (= (or b!5218946 b!5218943) bm!368165))

(assert (= (or b!5218946 bm!368162) bm!368166))

(declare-fun m!6266936 () Bool)

(assert (=> b!5218953 m!6266936))

(declare-fun m!6266938 () Bool)

(assert (=> b!5218949 m!6266938))

(declare-fun m!6266940 () Bool)

(assert (=> bm!368165 m!6266940))

(declare-fun m!6266942 () Bool)

(assert (=> bm!368166 m!6266942))

(declare-fun m!6266944 () Bool)

(assert (=> bm!368163 m!6266944))

(assert (=> bm!368022 d!1682661))

(declare-fun d!1682663 () Bool)

(assert (=> d!1682663 (= ($colon$colon!1283 (exprs!4691 lt!2143066) (ite (or c!900319 c!900318) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (regOne!30127 (regOne!30126 r!7292)))) (Cons!60596 (ite (or c!900319 c!900318) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (regOne!30127 (regOne!30126 r!7292))) (exprs!4691 lt!2143066)))))

(assert (=> bm!368026 d!1682663))

(declare-fun d!1682665 () Bool)

(declare-fun lambda!261866 () Int)

(declare-fun exists!1969 ((InoxSet Context!8382) Int) Bool)

(assert (=> d!1682665 (= (nullableZipper!1233 lt!2143061) (exists!1969 lt!2143061 lambda!261866))))

(declare-fun bs!1212099 () Bool)

(assert (= bs!1212099 d!1682665))

(declare-fun m!6266946 () Bool)

(assert (=> bs!1212099 m!6266946))

(assert (=> b!5218186 d!1682665))

(declare-fun b!5218954 () Bool)

(declare-fun e!3248567 () Bool)

(declare-fun e!3248569 () Bool)

(assert (=> b!5218954 (= e!3248567 e!3248569)))

(declare-fun res!2216127 () Bool)

(assert (=> b!5218954 (=> res!2216127 e!3248569)))

(declare-fun call!368172 () Bool)

(assert (=> b!5218954 (= res!2216127 call!368172)))

(declare-fun b!5218955 () Bool)

(declare-fun res!2216130 () Bool)

(declare-fun e!3248572 () Bool)

(assert (=> b!5218955 (=> res!2216130 e!3248572)))

(assert (=> b!5218955 (= res!2216130 (not ((_ is ElementMatch!14807) (regTwo!30126 r!7292))))))

(declare-fun e!3248570 () Bool)

(assert (=> b!5218955 (= e!3248570 e!3248572)))

(declare-fun b!5218956 () Bool)

(declare-fun res!2216129 () Bool)

(assert (=> b!5218956 (=> res!2216129 e!3248569)))

(assert (=> b!5218956 (= res!2216129 (not (isEmpty!32517 (tail!10282 s!2326))))))

(declare-fun b!5218957 () Bool)

(declare-fun res!2216131 () Bool)

(declare-fun e!3248571 () Bool)

(assert (=> b!5218957 (=> (not res!2216131) (not e!3248571))))

(assert (=> b!5218957 (= res!2216131 (not call!368172))))

(declare-fun bm!368167 () Bool)

(assert (=> bm!368167 (= call!368172 (isEmpty!32517 s!2326))))

(declare-fun b!5218958 () Bool)

(declare-fun e!3248568 () Bool)

(declare-fun lt!2143182 () Bool)

(assert (=> b!5218958 (= e!3248568 (= lt!2143182 call!368172))))

(declare-fun b!5218959 () Bool)

(declare-fun e!3248566 () Bool)

(assert (=> b!5218959 (= e!3248566 (matchR!6992 (derivativeStep!4055 (regTwo!30126 r!7292) (head!11185 s!2326)) (tail!10282 s!2326)))))

(declare-fun d!1682667 () Bool)

(assert (=> d!1682667 e!3248568))

(declare-fun c!900520 () Bool)

(assert (=> d!1682667 (= c!900520 ((_ is EmptyExpr!14807) (regTwo!30126 r!7292)))))

(assert (=> d!1682667 (= lt!2143182 e!3248566)))

(declare-fun c!900521 () Bool)

(assert (=> d!1682667 (= c!900521 (isEmpty!32517 s!2326))))

(assert (=> d!1682667 (validRegex!6543 (regTwo!30126 r!7292))))

(assert (=> d!1682667 (= (matchR!6992 (regTwo!30126 r!7292) s!2326) lt!2143182)))

(declare-fun b!5218960 () Bool)

(assert (=> b!5218960 (= e!3248571 (= (head!11185 s!2326) (c!900134 (regTwo!30126 r!7292))))))

(declare-fun b!5218961 () Bool)

(assert (=> b!5218961 (= e!3248572 e!3248567)))

(declare-fun res!2216128 () Bool)

(assert (=> b!5218961 (=> (not res!2216128) (not e!3248567))))

(assert (=> b!5218961 (= res!2216128 (not lt!2143182))))

(declare-fun b!5218962 () Bool)

(assert (=> b!5218962 (= e!3248568 e!3248570)))

(declare-fun c!900519 () Bool)

(assert (=> b!5218962 (= c!900519 ((_ is EmptyLang!14807) (regTwo!30126 r!7292)))))

(declare-fun b!5218963 () Bool)

(declare-fun res!2216132 () Bool)

(assert (=> b!5218963 (=> res!2216132 e!3248572)))

(assert (=> b!5218963 (= res!2216132 e!3248571)))

(declare-fun res!2216133 () Bool)

(assert (=> b!5218963 (=> (not res!2216133) (not e!3248571))))

(assert (=> b!5218963 (= res!2216133 lt!2143182)))

(declare-fun b!5218964 () Bool)

(assert (=> b!5218964 (= e!3248569 (not (= (head!11185 s!2326) (c!900134 (regTwo!30126 r!7292)))))))

(declare-fun b!5218965 () Bool)

(assert (=> b!5218965 (= e!3248566 (nullable!4976 (regTwo!30126 r!7292)))))

(declare-fun b!5218966 () Bool)

(declare-fun res!2216134 () Bool)

(assert (=> b!5218966 (=> (not res!2216134) (not e!3248571))))

(assert (=> b!5218966 (= res!2216134 (isEmpty!32517 (tail!10282 s!2326)))))

(declare-fun b!5218967 () Bool)

(assert (=> b!5218967 (= e!3248570 (not lt!2143182))))

(assert (= (and d!1682667 c!900521) b!5218965))

(assert (= (and d!1682667 (not c!900521)) b!5218959))

(assert (= (and d!1682667 c!900520) b!5218958))

(assert (= (and d!1682667 (not c!900520)) b!5218962))

(assert (= (and b!5218962 c!900519) b!5218967))

(assert (= (and b!5218962 (not c!900519)) b!5218955))

(assert (= (and b!5218955 (not res!2216130)) b!5218963))

(assert (= (and b!5218963 res!2216133) b!5218957))

(assert (= (and b!5218957 res!2216131) b!5218966))

(assert (= (and b!5218966 res!2216134) b!5218960))

(assert (= (and b!5218963 (not res!2216132)) b!5218961))

(assert (= (and b!5218961 res!2216128) b!5218954))

(assert (= (and b!5218954 (not res!2216127)) b!5218956))

(assert (= (and b!5218956 (not res!2216129)) b!5218964))

(assert (= (or b!5218958 b!5218954 b!5218957) bm!368167))

(assert (=> b!5218960 m!6266076))

(declare-fun m!6266948 () Bool)

(assert (=> b!5218965 m!6266948))

(assert (=> b!5218964 m!6266076))

(assert (=> b!5218959 m!6266076))

(assert (=> b!5218959 m!6266076))

(declare-fun m!6266950 () Bool)

(assert (=> b!5218959 m!6266950))

(assert (=> b!5218959 m!6266082))

(assert (=> b!5218959 m!6266950))

(assert (=> b!5218959 m!6266082))

(declare-fun m!6266952 () Bool)

(assert (=> b!5218959 m!6266952))

(assert (=> b!5218966 m!6266082))

(assert (=> b!5218966 m!6266082))

(assert (=> b!5218966 m!6266086))

(assert (=> b!5218956 m!6266082))

(assert (=> b!5218956 m!6266082))

(assert (=> b!5218956 m!6266086))

(assert (=> d!1682667 m!6266026))

(declare-fun m!6266954 () Bool)

(assert (=> d!1682667 m!6266954))

(assert (=> bm!368167 m!6266026))

(assert (=> b!5218025 d!1682667))

(assert (=> d!1682289 d!1682263))

(assert (=> d!1682289 d!1682257))

(declare-fun d!1682669 () Bool)

(assert (=> d!1682669 (= (matchR!6992 r!7292 s!2326) (matchRSpec!1910 r!7292 s!2326))))

(assert (=> d!1682669 true))

(declare-fun _$88!3483 () Unit!152494)

(assert (=> d!1682669 (= (choose!38800 r!7292 s!2326) _$88!3483)))

(declare-fun bs!1212100 () Bool)

(assert (= bs!1212100 d!1682669))

(assert (=> bs!1212100 m!6265834))

(assert (=> bs!1212100 m!6265832))

(assert (=> d!1682289 d!1682669))

(assert (=> d!1682289 d!1682317))

(declare-fun b!5218968 () Bool)

(declare-fun e!3248576 () (InoxSet Context!8382))

(declare-fun call!368175 () (InoxSet Context!8382))

(declare-fun call!368174 () (InoxSet Context!8382))

(assert (=> b!5218968 (= e!3248576 ((_ map or) call!368175 call!368174))))

(declare-fun bm!368168 () Bool)

(declare-fun call!368173 () List!60720)

(declare-fun call!368178 () List!60720)

(assert (=> bm!368168 (= call!368173 call!368178)))

(declare-fun b!5218969 () Bool)

(declare-fun e!3248574 () (InoxSet Context!8382))

(assert (=> b!5218969 (= e!3248574 ((as const (Array Context!8382 Bool)) false))))

(declare-fun bm!368169 () Bool)

(declare-fun call!368177 () (InoxSet Context!8382))

(assert (=> bm!368169 (= call!368174 call!368177)))

(declare-fun b!5218970 () Bool)

(declare-fun e!3248575 () (InoxSet Context!8382))

(declare-fun call!368176 () (InoxSet Context!8382))

(assert (=> b!5218970 (= e!3248575 call!368176)))

(declare-fun bm!368170 () Bool)

(declare-fun c!900524 () Bool)

(declare-fun c!900523 () Bool)

(assert (=> bm!368170 (= call!368178 ($colon$colon!1283 (exprs!4691 (ite c!900320 lt!2143066 (Context!8383 call!368034))) (ite (or c!900524 c!900523) (regTwo!30126 (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))) (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292)))))))))

(declare-fun bm!368171 () Bool)

(assert (=> bm!368171 (= call!368176 call!368174)))

(declare-fun b!5218971 () Bool)

(declare-fun e!3248573 () (InoxSet Context!8382))

(assert (=> b!5218971 (= e!3248573 ((_ map or) call!368177 call!368175))))

(declare-fun c!900522 () Bool)

(declare-fun d!1682671 () Bool)

(assert (=> d!1682671 (= c!900522 (and ((_ is ElementMatch!14807) (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))) (= (c!900134 (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))) (h!67045 s!2326))))))

(declare-fun e!3248578 () (InoxSet Context!8382))

(assert (=> d!1682671 (= (derivationStepZipperDown!255 (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292)))) (ite c!900320 lt!2143066 (Context!8383 call!368034)) (h!67045 s!2326)) e!3248578)))

(declare-fun b!5218972 () Bool)

(assert (=> b!5218972 (= e!3248576 e!3248575)))

(assert (=> b!5218972 (= c!900523 ((_ is Concat!23652) (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))))))

(declare-fun c!900525 () Bool)

(declare-fun bm!368172 () Bool)

(assert (=> bm!368172 (= call!368175 (derivationStepZipperDown!255 (ite c!900525 (regTwo!30127 (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))) (regOne!30126 (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292)))))) (ite c!900525 (ite c!900320 lt!2143066 (Context!8383 call!368034)) (Context!8383 call!368178)) (h!67045 s!2326)))))

(declare-fun b!5218973 () Bool)

(assert (=> b!5218973 (= e!3248574 call!368176)))

(declare-fun b!5218974 () Bool)

(assert (=> b!5218974 (= e!3248578 (store ((as const (Array Context!8382 Bool)) false) (ite c!900320 lt!2143066 (Context!8383 call!368034)) true))))

(declare-fun bm!368173 () Bool)

(assert (=> bm!368173 (= call!368177 (derivationStepZipperDown!255 (ite c!900525 (regOne!30127 (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))) (ite c!900524 (regTwo!30126 (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))) (ite c!900523 (regOne!30126 (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))) (reg!15136 (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292)))))))) (ite (or c!900525 c!900524) (ite c!900320 lt!2143066 (Context!8383 call!368034)) (Context!8383 call!368173)) (h!67045 s!2326)))))

(declare-fun b!5218975 () Bool)

(declare-fun e!3248577 () Bool)

(assert (=> b!5218975 (= c!900524 e!3248577)))

(declare-fun res!2216135 () Bool)

(assert (=> b!5218975 (=> (not res!2216135) (not e!3248577))))

(assert (=> b!5218975 (= res!2216135 ((_ is Concat!23652) (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))))))

(assert (=> b!5218975 (= e!3248573 e!3248576)))

(declare-fun b!5218976 () Bool)

(declare-fun c!900526 () Bool)

(assert (=> b!5218976 (= c!900526 ((_ is Star!14807) (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))))))

(assert (=> b!5218976 (= e!3248575 e!3248574)))

(declare-fun b!5218977 () Bool)

(assert (=> b!5218977 (= e!3248578 e!3248573)))

(assert (=> b!5218977 (= c!900525 ((_ is Union!14807) (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))))))

(declare-fun b!5218978 () Bool)

(assert (=> b!5218978 (= e!3248577 (nullable!4976 (regOne!30126 (ite c!900320 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292)))))))))

(assert (= (and d!1682671 c!900522) b!5218974))

(assert (= (and d!1682671 (not c!900522)) b!5218977))

(assert (= (and b!5218977 c!900525) b!5218971))

(assert (= (and b!5218977 (not c!900525)) b!5218975))

(assert (= (and b!5218975 res!2216135) b!5218978))

(assert (= (and b!5218975 c!900524) b!5218968))

(assert (= (and b!5218975 (not c!900524)) b!5218972))

(assert (= (and b!5218972 c!900523) b!5218970))

(assert (= (and b!5218972 (not c!900523)) b!5218976))

(assert (= (and b!5218976 c!900526) b!5218973))

(assert (= (and b!5218976 (not c!900526)) b!5218969))

(assert (= (or b!5218970 b!5218973) bm!368168))

(assert (= (or b!5218970 b!5218973) bm!368171))

(assert (= (or b!5218968 bm!368168) bm!368170))

(assert (= (or b!5218968 bm!368171) bm!368169))

(assert (= (or b!5218971 b!5218968) bm!368172))

(assert (= (or b!5218971 bm!368169) bm!368173))

(declare-fun m!6266956 () Bool)

(assert (=> b!5218978 m!6266956))

(declare-fun m!6266958 () Bool)

(assert (=> b!5218974 m!6266958))

(declare-fun m!6266960 () Bool)

(assert (=> bm!368172 m!6266960))

(declare-fun m!6266962 () Bool)

(assert (=> bm!368173 m!6266962))

(declare-fun m!6266964 () Bool)

(assert (=> bm!368170 m!6266964))

(assert (=> bm!368028 d!1682671))

(declare-fun d!1682673 () Bool)

(assert (=> d!1682673 (= (nullable!4976 (h!67044 (exprs!4691 lt!2143059))) (nullableFct!1385 (h!67044 (exprs!4691 lt!2143059))))))

(declare-fun bs!1212101 () Bool)

(assert (= bs!1212101 d!1682673))

(declare-fun m!6266966 () Bool)

(assert (=> bs!1212101 m!6266966))

(assert (=> b!5218208 d!1682673))

(declare-fun b!5218979 () Bool)

(declare-fun e!3248582 () (InoxSet Context!8382))

(declare-fun call!368181 () (InoxSet Context!8382))

(declare-fun call!368180 () (InoxSet Context!8382))

(assert (=> b!5218979 (= e!3248582 ((_ map or) call!368181 call!368180))))

(declare-fun bm!368174 () Bool)

(declare-fun call!368179 () List!60720)

(declare-fun call!368184 () List!60720)

(assert (=> bm!368174 (= call!368179 call!368184)))

(declare-fun b!5218980 () Bool)

(declare-fun e!3248580 () (InoxSet Context!8382))

(assert (=> b!5218980 (= e!3248580 ((as const (Array Context!8382 Bool)) false))))

(declare-fun bm!368175 () Bool)

(declare-fun call!368183 () (InoxSet Context!8382))

(assert (=> bm!368175 (= call!368180 call!368183)))

(declare-fun b!5218981 () Bool)

(declare-fun e!3248581 () (InoxSet Context!8382))

(declare-fun call!368182 () (InoxSet Context!8382))

(assert (=> b!5218981 (= e!3248581 call!368182)))

(declare-fun c!900528 () Bool)

(declare-fun bm!368176 () Bool)

(declare-fun c!900529 () Bool)

(assert (=> bm!368176 (= call!368184 ($colon$colon!1283 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343))))))))) (ite (or c!900529 c!900528) (regTwo!30126 (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))) (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343))))))))))))

(declare-fun bm!368177 () Bool)

(assert (=> bm!368177 (= call!368182 call!368180)))

(declare-fun b!5218982 () Bool)

(declare-fun e!3248579 () (InoxSet Context!8382))

(assert (=> b!5218982 (= e!3248579 ((_ map or) call!368183 call!368181))))

(declare-fun d!1682675 () Bool)

(declare-fun c!900527 () Bool)

(assert (=> d!1682675 (= c!900527 (and ((_ is ElementMatch!14807) (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))) (= (c!900134 (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))) (h!67045 s!2326))))))

(declare-fun e!3248584 () (InoxSet Context!8382))

(assert (=> d!1682675 (= (derivationStepZipperDown!255 (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343))))))) (Context!8383 (t!373888 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))) (h!67045 s!2326)) e!3248584)))

(declare-fun b!5218983 () Bool)

(assert (=> b!5218983 (= e!3248582 e!3248581)))

(assert (=> b!5218983 (= c!900528 ((_ is Concat!23652) (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))))))

(declare-fun c!900530 () Bool)

(declare-fun bm!368178 () Bool)

(assert (=> bm!368178 (= call!368181 (derivationStepZipperDown!255 (ite c!900530 (regTwo!30127 (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))) (regOne!30126 (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343))))))))) (ite c!900530 (Context!8383 (t!373888 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))) (Context!8383 call!368184)) (h!67045 s!2326)))))

(declare-fun b!5218984 () Bool)

(assert (=> b!5218984 (= e!3248580 call!368182)))

(declare-fun b!5218985 () Bool)

(assert (=> b!5218985 (= e!3248584 (store ((as const (Array Context!8382 Bool)) false) (Context!8383 (t!373888 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))) true))))

(declare-fun bm!368179 () Bool)

(assert (=> bm!368179 (= call!368183 (derivationStepZipperDown!255 (ite c!900530 (regOne!30127 (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))) (ite c!900529 (regTwo!30126 (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))) (ite c!900528 (regOne!30126 (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))) (reg!15136 (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343))))))))))) (ite (or c!900530 c!900529) (Context!8383 (t!373888 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))) (Context!8383 call!368179)) (h!67045 s!2326)))))

(declare-fun b!5218986 () Bool)

(declare-fun e!3248583 () Bool)

(assert (=> b!5218986 (= c!900529 e!3248583)))

(declare-fun res!2216136 () Bool)

(assert (=> b!5218986 (=> (not res!2216136) (not e!3248583))))

(assert (=> b!5218986 (= res!2216136 ((_ is Concat!23652) (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))))))

(assert (=> b!5218986 (= e!3248579 e!3248582)))

(declare-fun b!5218987 () Bool)

(declare-fun c!900531 () Bool)

(assert (=> b!5218987 (= c!900531 ((_ is Star!14807) (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))))))

(assert (=> b!5218987 (= e!3248581 e!3248580)))

(declare-fun b!5218988 () Bool)

(assert (=> b!5218988 (= e!3248584 e!3248579)))

(assert (=> b!5218988 (= c!900530 ((_ is Union!14807) (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))))))

(declare-fun b!5218989 () Bool)

(assert (=> b!5218989 (= e!3248583 (nullable!4976 (regOne!30126 (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343))))))))))))

(assert (= (and d!1682675 c!900527) b!5218985))

(assert (= (and d!1682675 (not c!900527)) b!5218988))

(assert (= (and b!5218988 c!900530) b!5218982))

(assert (= (and b!5218988 (not c!900530)) b!5218986))

(assert (= (and b!5218986 res!2216136) b!5218989))

(assert (= (and b!5218986 c!900529) b!5218979))

(assert (= (and b!5218986 (not c!900529)) b!5218983))

(assert (= (and b!5218983 c!900528) b!5218981))

(assert (= (and b!5218983 (not c!900528)) b!5218987))

(assert (= (and b!5218987 c!900531) b!5218984))

(assert (= (and b!5218987 (not c!900531)) b!5218980))

(assert (= (or b!5218981 b!5218984) bm!368174))

(assert (= (or b!5218981 b!5218984) bm!368177))

(assert (= (or b!5218979 bm!368174) bm!368176))

(assert (= (or b!5218979 bm!368177) bm!368175))

(assert (= (or b!5218982 b!5218979) bm!368178))

(assert (= (or b!5218982 bm!368175) bm!368179))

(declare-fun m!6266968 () Bool)

(assert (=> b!5218989 m!6266968))

(declare-fun m!6266970 () Bool)

(assert (=> b!5218985 m!6266970))

(declare-fun m!6266972 () Bool)

(assert (=> bm!368178 m!6266972))

(declare-fun m!6266974 () Bool)

(assert (=> bm!368179 m!6266974))

(declare-fun m!6266976 () Bool)

(assert (=> bm!368176 m!6266976))

(assert (=> bm!368015 d!1682675))

(declare-fun b!5218990 () Bool)

(declare-fun e!3248588 () (InoxSet Context!8382))

(declare-fun call!368187 () (InoxSet Context!8382))

(declare-fun call!368186 () (InoxSet Context!8382))

(assert (=> b!5218990 (= e!3248588 ((_ map or) call!368187 call!368186))))

(declare-fun bm!368180 () Bool)

(declare-fun call!368185 () List!60720)

(declare-fun call!368190 () List!60720)

(assert (=> bm!368180 (= call!368185 call!368190)))

(declare-fun b!5218991 () Bool)

(declare-fun e!3248586 () (InoxSet Context!8382))

(assert (=> b!5218991 (= e!3248586 ((as const (Array Context!8382 Bool)) false))))

(declare-fun bm!368181 () Bool)

(declare-fun call!368189 () (InoxSet Context!8382))

(assert (=> bm!368181 (= call!368186 call!368189)))

(declare-fun b!5218992 () Bool)

(declare-fun e!3248587 () (InoxSet Context!8382))

(declare-fun call!368188 () (InoxSet Context!8382))

(assert (=> b!5218992 (= e!3248587 call!368188)))

(declare-fun c!900534 () Bool)

(declare-fun c!900533 () Bool)

(declare-fun bm!368182 () Bool)

(assert (=> bm!368182 (= call!368190 ($colon$colon!1283 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 (h!67046 zl!343))))) (ite (or c!900534 c!900533) (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (h!67044 (exprs!4691 (h!67046 zl!343))))))))

(declare-fun bm!368183 () Bool)

(assert (=> bm!368183 (= call!368188 call!368186)))

(declare-fun b!5218993 () Bool)

(declare-fun e!3248585 () (InoxSet Context!8382))

(assert (=> b!5218993 (= e!3248585 ((_ map or) call!368189 call!368187))))

(declare-fun d!1682677 () Bool)

(declare-fun c!900532 () Bool)

(assert (=> d!1682677 (= c!900532 (and ((_ is ElementMatch!14807) (h!67044 (exprs!4691 (h!67046 zl!343)))) (= (c!900134 (h!67044 (exprs!4691 (h!67046 zl!343)))) (h!67045 s!2326))))))

(declare-fun e!3248590 () (InoxSet Context!8382))

(assert (=> d!1682677 (= (derivationStepZipperDown!255 (h!67044 (exprs!4691 (h!67046 zl!343))) (Context!8383 (t!373888 (exprs!4691 (h!67046 zl!343)))) (h!67045 s!2326)) e!3248590)))

(declare-fun b!5218994 () Bool)

(assert (=> b!5218994 (= e!3248588 e!3248587)))

(assert (=> b!5218994 (= c!900533 ((_ is Concat!23652) (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun bm!368184 () Bool)

(declare-fun c!900535 () Bool)

(assert (=> bm!368184 (= call!368187 (derivationStepZipperDown!255 (ite c!900535 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343))))) (ite c!900535 (Context!8383 (t!373888 (exprs!4691 (h!67046 zl!343)))) (Context!8383 call!368190)) (h!67045 s!2326)))))

(declare-fun b!5218995 () Bool)

(assert (=> b!5218995 (= e!3248586 call!368188)))

(declare-fun b!5218996 () Bool)

(assert (=> b!5218996 (= e!3248590 (store ((as const (Array Context!8382 Bool)) false) (Context!8383 (t!373888 (exprs!4691 (h!67046 zl!343)))) true))))

(declare-fun bm!368185 () Bool)

(assert (=> bm!368185 (= call!368189 (derivationStepZipperDown!255 (ite c!900535 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900534 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900533 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343))))))) (ite (or c!900535 c!900534) (Context!8383 (t!373888 (exprs!4691 (h!67046 zl!343)))) (Context!8383 call!368185)) (h!67045 s!2326)))))

(declare-fun b!5218997 () Bool)

(declare-fun e!3248589 () Bool)

(assert (=> b!5218997 (= c!900534 e!3248589)))

(declare-fun res!2216137 () Bool)

(assert (=> b!5218997 (=> (not res!2216137) (not e!3248589))))

(assert (=> b!5218997 (= res!2216137 ((_ is Concat!23652) (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(assert (=> b!5218997 (= e!3248585 e!3248588)))

(declare-fun b!5218998 () Bool)

(declare-fun c!900536 () Bool)

(assert (=> b!5218998 (= c!900536 ((_ is Star!14807) (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(assert (=> b!5218998 (= e!3248587 e!3248586)))

(declare-fun b!5218999 () Bool)

(assert (=> b!5218999 (= e!3248590 e!3248585)))

(assert (=> b!5218999 (= c!900535 ((_ is Union!14807) (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun b!5219000 () Bool)

(assert (=> b!5219000 (= e!3248589 (nullable!4976 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343))))))))

(assert (= (and d!1682677 c!900532) b!5218996))

(assert (= (and d!1682677 (not c!900532)) b!5218999))

(assert (= (and b!5218999 c!900535) b!5218993))

(assert (= (and b!5218999 (not c!900535)) b!5218997))

(assert (= (and b!5218997 res!2216137) b!5219000))

(assert (= (and b!5218997 c!900534) b!5218990))

(assert (= (and b!5218997 (not c!900534)) b!5218994))

(assert (= (and b!5218994 c!900533) b!5218992))

(assert (= (and b!5218994 (not c!900533)) b!5218998))

(assert (= (and b!5218998 c!900536) b!5218995))

(assert (= (and b!5218998 (not c!900536)) b!5218991))

(assert (= (or b!5218992 b!5218995) bm!368180))

(assert (= (or b!5218992 b!5218995) bm!368183))

(assert (= (or b!5218990 bm!368180) bm!368182))

(assert (= (or b!5218990 bm!368183) bm!368181))

(assert (= (or b!5218993 b!5218990) bm!368184))

(assert (= (or b!5218993 bm!368181) bm!368185))

(assert (=> b!5219000 m!6266194))

(declare-fun m!6266978 () Bool)

(assert (=> b!5218996 m!6266978))

(declare-fun m!6266980 () Bool)

(assert (=> bm!368184 m!6266980))

(declare-fun m!6266982 () Bool)

(assert (=> bm!368185 m!6266982))

(declare-fun m!6266984 () Bool)

(assert (=> bm!368182 m!6266984))

(assert (=> bm!368017 d!1682677))

(declare-fun b!5219001 () Bool)

(declare-fun e!3248594 () (InoxSet Context!8382))

(declare-fun call!368193 () (InoxSet Context!8382))

(declare-fun call!368192 () (InoxSet Context!8382))

(assert (=> b!5219001 (= e!3248594 ((_ map or) call!368193 call!368192))))

(declare-fun bm!368186 () Bool)

(declare-fun call!368191 () List!60720)

(declare-fun call!368196 () List!60720)

(assert (=> bm!368186 (= call!368191 call!368196)))

(declare-fun b!5219002 () Bool)

(declare-fun e!3248592 () (InoxSet Context!8382))

(assert (=> b!5219002 (= e!3248592 ((as const (Array Context!8382 Bool)) false))))

(declare-fun bm!368187 () Bool)

(declare-fun call!368195 () (InoxSet Context!8382))

(assert (=> bm!368187 (= call!368192 call!368195)))

(declare-fun b!5219003 () Bool)

(declare-fun e!3248593 () (InoxSet Context!8382))

(declare-fun call!368194 () (InoxSet Context!8382))

(assert (=> b!5219003 (= e!3248593 call!368194)))

(declare-fun bm!368188 () Bool)

(declare-fun c!900538 () Bool)

(declare-fun c!900539 () Bool)

(assert (=> bm!368188 (= call!368196 ($colon$colon!1283 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 lt!2143066)))) (ite (or c!900539 c!900538) (regTwo!30126 (h!67044 (exprs!4691 lt!2143066))) (h!67044 (exprs!4691 lt!2143066)))))))

(declare-fun bm!368189 () Bool)

(assert (=> bm!368189 (= call!368194 call!368192)))

(declare-fun b!5219004 () Bool)

(declare-fun e!3248591 () (InoxSet Context!8382))

(assert (=> b!5219004 (= e!3248591 ((_ map or) call!368195 call!368193))))

(declare-fun d!1682679 () Bool)

(declare-fun c!900537 () Bool)

(assert (=> d!1682679 (= c!900537 (and ((_ is ElementMatch!14807) (h!67044 (exprs!4691 lt!2143066))) (= (c!900134 (h!67044 (exprs!4691 lt!2143066))) (h!67045 s!2326))))))

(declare-fun e!3248596 () (InoxSet Context!8382))

(assert (=> d!1682679 (= (derivationStepZipperDown!255 (h!67044 (exprs!4691 lt!2143066)) (Context!8383 (t!373888 (exprs!4691 lt!2143066))) (h!67045 s!2326)) e!3248596)))

(declare-fun b!5219005 () Bool)

(assert (=> b!5219005 (= e!3248594 e!3248593)))

(assert (=> b!5219005 (= c!900538 ((_ is Concat!23652) (h!67044 (exprs!4691 lt!2143066))))))

(declare-fun c!900540 () Bool)

(declare-fun bm!368190 () Bool)

(assert (=> bm!368190 (= call!368193 (derivationStepZipperDown!255 (ite c!900540 (regTwo!30127 (h!67044 (exprs!4691 lt!2143066))) (regOne!30126 (h!67044 (exprs!4691 lt!2143066)))) (ite c!900540 (Context!8383 (t!373888 (exprs!4691 lt!2143066))) (Context!8383 call!368196)) (h!67045 s!2326)))))

(declare-fun b!5219006 () Bool)

(assert (=> b!5219006 (= e!3248592 call!368194)))

(declare-fun b!5219007 () Bool)

(assert (=> b!5219007 (= e!3248596 (store ((as const (Array Context!8382 Bool)) false) (Context!8383 (t!373888 (exprs!4691 lt!2143066))) true))))

(declare-fun bm!368191 () Bool)

(assert (=> bm!368191 (= call!368195 (derivationStepZipperDown!255 (ite c!900540 (regOne!30127 (h!67044 (exprs!4691 lt!2143066))) (ite c!900539 (regTwo!30126 (h!67044 (exprs!4691 lt!2143066))) (ite c!900538 (regOne!30126 (h!67044 (exprs!4691 lt!2143066))) (reg!15136 (h!67044 (exprs!4691 lt!2143066)))))) (ite (or c!900540 c!900539) (Context!8383 (t!373888 (exprs!4691 lt!2143066))) (Context!8383 call!368191)) (h!67045 s!2326)))))

(declare-fun b!5219008 () Bool)

(declare-fun e!3248595 () Bool)

(assert (=> b!5219008 (= c!900539 e!3248595)))

(declare-fun res!2216138 () Bool)

(assert (=> b!5219008 (=> (not res!2216138) (not e!3248595))))

(assert (=> b!5219008 (= res!2216138 ((_ is Concat!23652) (h!67044 (exprs!4691 lt!2143066))))))

(assert (=> b!5219008 (= e!3248591 e!3248594)))

(declare-fun b!5219009 () Bool)

(declare-fun c!900541 () Bool)

(assert (=> b!5219009 (= c!900541 ((_ is Star!14807) (h!67044 (exprs!4691 lt!2143066))))))

(assert (=> b!5219009 (= e!3248593 e!3248592)))

(declare-fun b!5219010 () Bool)

(assert (=> b!5219010 (= e!3248596 e!3248591)))

(assert (=> b!5219010 (= c!900540 ((_ is Union!14807) (h!67044 (exprs!4691 lt!2143066))))))

(declare-fun b!5219011 () Bool)

(assert (=> b!5219011 (= e!3248595 (nullable!4976 (regOne!30126 (h!67044 (exprs!4691 lt!2143066)))))))

(assert (= (and d!1682679 c!900537) b!5219007))

(assert (= (and d!1682679 (not c!900537)) b!5219010))

(assert (= (and b!5219010 c!900540) b!5219004))

(assert (= (and b!5219010 (not c!900540)) b!5219008))

(assert (= (and b!5219008 res!2216138) b!5219011))

(assert (= (and b!5219008 c!900539) b!5219001))

(assert (= (and b!5219008 (not c!900539)) b!5219005))

(assert (= (and b!5219005 c!900538) b!5219003))

(assert (= (and b!5219005 (not c!900538)) b!5219009))

(assert (= (and b!5219009 c!900541) b!5219006))

(assert (= (and b!5219009 (not c!900541)) b!5219002))

(assert (= (or b!5219003 b!5219006) bm!368186))

(assert (= (or b!5219003 b!5219006) bm!368189))

(assert (= (or b!5219001 bm!368186) bm!368188))

(assert (= (or b!5219001 bm!368189) bm!368187))

(assert (= (or b!5219004 b!5219001) bm!368190))

(assert (= (or b!5219004 bm!368187) bm!368191))

(declare-fun m!6266986 () Bool)

(assert (=> b!5219011 m!6266986))

(declare-fun m!6266988 () Bool)

(assert (=> b!5219007 m!6266988))

(declare-fun m!6266990 () Bool)

(assert (=> bm!368190 m!6266990))

(declare-fun m!6266992 () Bool)

(assert (=> bm!368191 m!6266992))

(declare-fun m!6266994 () Bool)

(assert (=> bm!368188 m!6266994))

(assert (=> bm!368016 d!1682679))

(declare-fun bs!1212102 () Bool)

(declare-fun b!5219012 () Bool)

(assert (= bs!1212102 (and b!5219012 d!1682309)))

(declare-fun lambda!261867 () Int)

(assert (=> bs!1212102 (not (= lambda!261867 lambda!261806))))

(declare-fun bs!1212103 () Bool)

(assert (= bs!1212103 (and b!5219012 d!1682311)))

(assert (=> bs!1212103 (not (= lambda!261867 lambda!261811))))

(declare-fun bs!1212104 () Bool)

(assert (= bs!1212104 (and b!5219012 b!5217507)))

(assert (=> bs!1212104 (not (= lambda!261867 lambda!261767))))

(declare-fun bs!1212105 () Bool)

(assert (= bs!1212105 (and b!5219012 b!5217799)))

(assert (=> bs!1212105 (= (and (= (reg!15136 (regTwo!30127 r!7292)) (reg!15136 r!7292)) (= (regTwo!30127 r!7292) r!7292)) (= lambda!261867 lambda!261802))))

(assert (=> bs!1212103 (not (= lambda!261867 lambda!261812))))

(assert (=> bs!1212104 (not (= lambda!261867 lambda!261768))))

(declare-fun bs!1212106 () Bool)

(assert (= bs!1212106 (and b!5219012 b!5217803)))

(assert (=> bs!1212106 (not (= lambda!261867 lambda!261803))))

(assert (=> b!5219012 true))

(assert (=> b!5219012 true))

(declare-fun bs!1212107 () Bool)

(declare-fun b!5219016 () Bool)

(assert (= bs!1212107 (and b!5219016 d!1682309)))

(declare-fun lambda!261868 () Int)

(assert (=> bs!1212107 (not (= lambda!261868 lambda!261806))))

(declare-fun bs!1212108 () Bool)

(assert (= bs!1212108 (and b!5219016 d!1682311)))

(assert (=> bs!1212108 (not (= lambda!261868 lambda!261811))))

(declare-fun bs!1212109 () Bool)

(assert (= bs!1212109 (and b!5219016 b!5217507)))

(assert (=> bs!1212109 (not (= lambda!261868 lambda!261767))))

(declare-fun bs!1212110 () Bool)

(assert (= bs!1212110 (and b!5219016 b!5217799)))

(assert (=> bs!1212110 (not (= lambda!261868 lambda!261802))))

(assert (=> bs!1212108 (= (and (= (regOne!30126 (regTwo!30127 r!7292)) (regOne!30126 r!7292)) (= (regTwo!30126 (regTwo!30127 r!7292)) (regTwo!30126 r!7292))) (= lambda!261868 lambda!261812))))

(assert (=> bs!1212109 (= (and (= (regOne!30126 (regTwo!30127 r!7292)) (regOne!30126 r!7292)) (= (regTwo!30126 (regTwo!30127 r!7292)) (regTwo!30126 r!7292))) (= lambda!261868 lambda!261768))))

(declare-fun bs!1212111 () Bool)

(assert (= bs!1212111 (and b!5219016 b!5217803)))

(assert (=> bs!1212111 (= (and (= (regOne!30126 (regTwo!30127 r!7292)) (regOne!30126 r!7292)) (= (regTwo!30126 (regTwo!30127 r!7292)) (regTwo!30126 r!7292))) (= lambda!261868 lambda!261803))))

(declare-fun bs!1212112 () Bool)

(assert (= bs!1212112 (and b!5219016 b!5219012)))

(assert (=> bs!1212112 (not (= lambda!261868 lambda!261867))))

(assert (=> b!5219016 true))

(assert (=> b!5219016 true))

(declare-fun e!3248600 () Bool)

(declare-fun call!368197 () Bool)

(assert (=> b!5219012 (= e!3248600 call!368197)))

(declare-fun b!5219013 () Bool)

(declare-fun c!900542 () Bool)

(assert (=> b!5219013 (= c!900542 ((_ is ElementMatch!14807) (regTwo!30127 r!7292)))))

(declare-fun e!3248598 () Bool)

(declare-fun e!3248601 () Bool)

(assert (=> b!5219013 (= e!3248598 e!3248601)))

(declare-fun bm!368192 () Bool)

(declare-fun call!368198 () Bool)

(assert (=> bm!368192 (= call!368198 (isEmpty!32517 s!2326))))

(declare-fun d!1682681 () Bool)

(declare-fun c!900545 () Bool)

(assert (=> d!1682681 (= c!900545 ((_ is EmptyExpr!14807) (regTwo!30127 r!7292)))))

(declare-fun e!3248599 () Bool)

(assert (=> d!1682681 (= (matchRSpec!1910 (regTwo!30127 r!7292) s!2326) e!3248599)))

(declare-fun c!900544 () Bool)

(declare-fun bm!368193 () Bool)

(assert (=> bm!368193 (= call!368197 (Exists!1988 (ite c!900544 lambda!261867 lambda!261868)))))

(declare-fun b!5219014 () Bool)

(declare-fun e!3248597 () Bool)

(declare-fun e!3248603 () Bool)

(assert (=> b!5219014 (= e!3248597 e!3248603)))

(declare-fun res!2216140 () Bool)

(assert (=> b!5219014 (= res!2216140 (matchRSpec!1910 (regOne!30127 (regTwo!30127 r!7292)) s!2326))))

(assert (=> b!5219014 (=> res!2216140 e!3248603)))

(declare-fun b!5219015 () Bool)

(assert (=> b!5219015 (= e!3248603 (matchRSpec!1910 (regTwo!30127 (regTwo!30127 r!7292)) s!2326))))

(declare-fun e!3248602 () Bool)

(assert (=> b!5219016 (= e!3248602 call!368197)))

(declare-fun b!5219017 () Bool)

(assert (=> b!5219017 (= e!3248599 e!3248598)))

(declare-fun res!2216139 () Bool)

(assert (=> b!5219017 (= res!2216139 (not ((_ is EmptyLang!14807) (regTwo!30127 r!7292))))))

(assert (=> b!5219017 (=> (not res!2216139) (not e!3248598))))

(declare-fun b!5219018 () Bool)

(assert (=> b!5219018 (= e!3248601 (= s!2326 (Cons!60597 (c!900134 (regTwo!30127 r!7292)) Nil!60597)))))

(declare-fun b!5219019 () Bool)

(declare-fun c!900543 () Bool)

(assert (=> b!5219019 (= c!900543 ((_ is Union!14807) (regTwo!30127 r!7292)))))

(assert (=> b!5219019 (= e!3248601 e!3248597)))

(declare-fun b!5219020 () Bool)

(declare-fun res!2216141 () Bool)

(assert (=> b!5219020 (=> res!2216141 e!3248600)))

(assert (=> b!5219020 (= res!2216141 call!368198)))

(assert (=> b!5219020 (= e!3248602 e!3248600)))

(declare-fun b!5219021 () Bool)

(assert (=> b!5219021 (= e!3248597 e!3248602)))

(assert (=> b!5219021 (= c!900544 ((_ is Star!14807) (regTwo!30127 r!7292)))))

(declare-fun b!5219022 () Bool)

(assert (=> b!5219022 (= e!3248599 call!368198)))

(assert (= (and d!1682681 c!900545) b!5219022))

(assert (= (and d!1682681 (not c!900545)) b!5219017))

(assert (= (and b!5219017 res!2216139) b!5219013))

(assert (= (and b!5219013 c!900542) b!5219018))

(assert (= (and b!5219013 (not c!900542)) b!5219019))

(assert (= (and b!5219019 c!900543) b!5219014))

(assert (= (and b!5219019 (not c!900543)) b!5219021))

(assert (= (and b!5219014 (not res!2216140)) b!5219015))

(assert (= (and b!5219021 c!900544) b!5219020))

(assert (= (and b!5219021 (not c!900544)) b!5219016))

(assert (= (and b!5219020 (not res!2216141)) b!5219012))

(assert (= (or b!5219012 b!5219016) bm!368193))

(assert (= (or b!5219022 b!5219020) bm!368192))

(assert (=> bm!368192 m!6266026))

(declare-fun m!6266996 () Bool)

(assert (=> bm!368193 m!6266996))

(declare-fun m!6266998 () Bool)

(assert (=> b!5219014 m!6266998))

(declare-fun m!6267000 () Bool)

(assert (=> b!5219015 m!6267000))

(assert (=> b!5217802 d!1682681))

(declare-fun d!1682683 () Bool)

(assert (=> d!1682683 true))

(declare-fun setRes!33185 () Bool)

(assert (=> d!1682683 setRes!33185))

(declare-fun condSetEmpty!33185 () Bool)

(declare-fun res!2216144 () (InoxSet Context!8382))

(assert (=> d!1682683 (= condSetEmpty!33185 (= res!2216144 ((as const (Array Context!8382 Bool)) false)))))

(assert (=> d!1682683 (= (choose!38807 lt!2143058 lambda!261769) res!2216144)))

(declare-fun setIsEmpty!33185 () Bool)

(assert (=> setIsEmpty!33185 setRes!33185))

(declare-fun setElem!33185 () Context!8382)

(declare-fun tp!1463186 () Bool)

(declare-fun setNonEmpty!33185 () Bool)

(declare-fun e!3248606 () Bool)

(assert (=> setNonEmpty!33185 (= setRes!33185 (and tp!1463186 (inv!80264 setElem!33185) e!3248606))))

(declare-fun setRest!33185 () (InoxSet Context!8382))

(assert (=> setNonEmpty!33185 (= res!2216144 ((_ map or) (store ((as const (Array Context!8382 Bool)) false) setElem!33185 true) setRest!33185))))

(declare-fun b!5219025 () Bool)

(declare-fun tp!1463187 () Bool)

(assert (=> b!5219025 (= e!3248606 tp!1463187)))

(assert (= (and d!1682683 condSetEmpty!33185) setIsEmpty!33185))

(assert (= (and d!1682683 (not condSetEmpty!33185)) setNonEmpty!33185))

(assert (= setNonEmpty!33185 b!5219025))

(declare-fun m!6267002 () Bool)

(assert (=> setNonEmpty!33185 m!6267002))

(assert (=> d!1682361 d!1682683))

(declare-fun d!1682685 () Bool)

(assert (=> d!1682685 (= (isEmpty!32517 (tail!10282 s!2326)) ((_ is Nil!60597) (tail!10282 s!2326)))))

(assert (=> b!5217917 d!1682685))

(declare-fun d!1682687 () Bool)

(assert (=> d!1682687 (= (tail!10282 s!2326) (t!373889 s!2326))))

(assert (=> b!5217917 d!1682687))

(declare-fun d!1682689 () Bool)

(assert (=> d!1682689 (= (isUnion!210 lt!2143154) ((_ is Union!14807) lt!2143154))))

(assert (=> b!5218233 d!1682689))

(declare-fun d!1682691 () Bool)

(assert (=> d!1682691 (= (head!11186 (exprs!4691 (h!67046 zl!343))) (h!67044 (exprs!4691 (h!67046 zl!343))))))

(assert (=> b!5218086 d!1682691))

(declare-fun bs!1212113 () Bool)

(declare-fun d!1682693 () Bool)

(assert (= bs!1212113 (and d!1682693 d!1682665)))

(declare-fun lambda!261869 () Int)

(assert (=> bs!1212113 (= lambda!261869 lambda!261866)))

(assert (=> d!1682693 (= (nullableZipper!1233 lt!2143052) (exists!1969 lt!2143052 lambda!261869))))

(declare-fun bs!1212114 () Bool)

(assert (= bs!1212114 d!1682693))

(declare-fun m!6267004 () Bool)

(assert (=> bs!1212114 m!6267004))

(assert (=> b!5218200 d!1682693))

(declare-fun d!1682695 () Bool)

(declare-fun c!900546 () Bool)

(assert (=> d!1682695 (= c!900546 (isEmpty!32517 (t!373889 s!2326)))))

(declare-fun e!3248607 () Bool)

(assert (=> d!1682695 (= (matchZipper!1051 ((_ map or) lt!2143053 lt!2143061) (t!373889 s!2326)) e!3248607)))

(declare-fun b!5219026 () Bool)

(assert (=> b!5219026 (= e!3248607 (nullableZipper!1233 ((_ map or) lt!2143053 lt!2143061)))))

(declare-fun b!5219027 () Bool)

(assert (=> b!5219027 (= e!3248607 (matchZipper!1051 (derivationStepZipper!1077 ((_ map or) lt!2143053 lt!2143061) (head!11185 (t!373889 s!2326))) (tail!10282 (t!373889 s!2326))))))

(assert (= (and d!1682695 c!900546) b!5219026))

(assert (= (and d!1682695 (not c!900546)) b!5219027))

(assert (=> d!1682695 m!6266242))

(declare-fun m!6267006 () Bool)

(assert (=> b!5219026 m!6267006))

(assert (=> b!5219027 m!6266246))

(assert (=> b!5219027 m!6266246))

(declare-fun m!6267008 () Bool)

(assert (=> b!5219027 m!6267008))

(assert (=> b!5219027 m!6266250))

(assert (=> b!5219027 m!6267008))

(assert (=> b!5219027 m!6266250))

(declare-fun m!6267010 () Bool)

(assert (=> b!5219027 m!6267010))

(assert (=> d!1682357 d!1682695))

(assert (=> d!1682357 d!1682355))

(declare-fun e!3248608 () Bool)

(declare-fun d!1682697 () Bool)

(assert (=> d!1682697 (= (matchZipper!1051 ((_ map or) lt!2143053 lt!2143061) (t!373889 s!2326)) e!3248608)))

(declare-fun res!2216145 () Bool)

(assert (=> d!1682697 (=> res!2216145 e!3248608)))

(assert (=> d!1682697 (= res!2216145 (matchZipper!1051 lt!2143053 (t!373889 s!2326)))))

(assert (=> d!1682697 true))

(declare-fun _$48!824 () Unit!152494)

(assert (=> d!1682697 (= (choose!38808 lt!2143053 lt!2143061 (t!373889 s!2326)) _$48!824)))

(declare-fun b!5219028 () Bool)

(assert (=> b!5219028 (= e!3248608 (matchZipper!1051 lt!2143061 (t!373889 s!2326)))))

(assert (= (and d!1682697 (not res!2216145)) b!5219028))

(assert (=> d!1682697 m!6266290))

(assert (=> d!1682697 m!6265808))

(assert (=> b!5219028 m!6265816))

(assert (=> d!1682357 d!1682697))

(declare-fun b!5219029 () Bool)

(declare-fun e!3248610 () Bool)

(declare-fun e!3248612 () Bool)

(assert (=> b!5219029 (= e!3248610 e!3248612)))

(declare-fun res!2216146 () Bool)

(assert (=> b!5219029 (=> res!2216146 e!3248612)))

(declare-fun call!368199 () Bool)

(assert (=> b!5219029 (= res!2216146 call!368199)))

(declare-fun b!5219030 () Bool)

(declare-fun res!2216149 () Bool)

(declare-fun e!3248615 () Bool)

(assert (=> b!5219030 (=> res!2216149 e!3248615)))

(assert (=> b!5219030 (= res!2216149 (not ((_ is ElementMatch!14807) (regTwo!30126 r!7292))))))

(declare-fun e!3248613 () Bool)

(assert (=> b!5219030 (= e!3248613 e!3248615)))

(declare-fun b!5219031 () Bool)

(declare-fun res!2216148 () Bool)

(assert (=> b!5219031 (=> res!2216148 e!3248612)))

(assert (=> b!5219031 (= res!2216148 (not (isEmpty!32517 (tail!10282 (_2!35309 (get!20822 lt!2143127))))))))

(declare-fun b!5219032 () Bool)

(declare-fun res!2216150 () Bool)

(declare-fun e!3248614 () Bool)

(assert (=> b!5219032 (=> (not res!2216150) (not e!3248614))))

(assert (=> b!5219032 (= res!2216150 (not call!368199))))

(declare-fun bm!368194 () Bool)

(assert (=> bm!368194 (= call!368199 (isEmpty!32517 (_2!35309 (get!20822 lt!2143127))))))

(declare-fun b!5219033 () Bool)

(declare-fun e!3248611 () Bool)

(declare-fun lt!2143183 () Bool)

(assert (=> b!5219033 (= e!3248611 (= lt!2143183 call!368199))))

(declare-fun b!5219034 () Bool)

(declare-fun e!3248609 () Bool)

(assert (=> b!5219034 (= e!3248609 (matchR!6992 (derivativeStep!4055 (regTwo!30126 r!7292) (head!11185 (_2!35309 (get!20822 lt!2143127)))) (tail!10282 (_2!35309 (get!20822 lt!2143127)))))))

(declare-fun d!1682699 () Bool)

(assert (=> d!1682699 e!3248611))

(declare-fun c!900548 () Bool)

(assert (=> d!1682699 (= c!900548 ((_ is EmptyExpr!14807) (regTwo!30126 r!7292)))))

(assert (=> d!1682699 (= lt!2143183 e!3248609)))

(declare-fun c!900549 () Bool)

(assert (=> d!1682699 (= c!900549 (isEmpty!32517 (_2!35309 (get!20822 lt!2143127))))))

(assert (=> d!1682699 (validRegex!6543 (regTwo!30126 r!7292))))

(assert (=> d!1682699 (= (matchR!6992 (regTwo!30126 r!7292) (_2!35309 (get!20822 lt!2143127))) lt!2143183)))

(declare-fun b!5219035 () Bool)

(assert (=> b!5219035 (= e!3248614 (= (head!11185 (_2!35309 (get!20822 lt!2143127))) (c!900134 (regTwo!30126 r!7292))))))

(declare-fun b!5219036 () Bool)

(assert (=> b!5219036 (= e!3248615 e!3248610)))

(declare-fun res!2216147 () Bool)

(assert (=> b!5219036 (=> (not res!2216147) (not e!3248610))))

(assert (=> b!5219036 (= res!2216147 (not lt!2143183))))

(declare-fun b!5219037 () Bool)

(assert (=> b!5219037 (= e!3248611 e!3248613)))

(declare-fun c!900547 () Bool)

(assert (=> b!5219037 (= c!900547 ((_ is EmptyLang!14807) (regTwo!30126 r!7292)))))

(declare-fun b!5219038 () Bool)

(declare-fun res!2216151 () Bool)

(assert (=> b!5219038 (=> res!2216151 e!3248615)))

(assert (=> b!5219038 (= res!2216151 e!3248614)))

(declare-fun res!2216152 () Bool)

(assert (=> b!5219038 (=> (not res!2216152) (not e!3248614))))

(assert (=> b!5219038 (= res!2216152 lt!2143183)))

(declare-fun b!5219039 () Bool)

(assert (=> b!5219039 (= e!3248612 (not (= (head!11185 (_2!35309 (get!20822 lt!2143127))) (c!900134 (regTwo!30126 r!7292)))))))

(declare-fun b!5219040 () Bool)

(assert (=> b!5219040 (= e!3248609 (nullable!4976 (regTwo!30126 r!7292)))))

(declare-fun b!5219041 () Bool)

(declare-fun res!2216153 () Bool)

(assert (=> b!5219041 (=> (not res!2216153) (not e!3248614))))

(assert (=> b!5219041 (= res!2216153 (isEmpty!32517 (tail!10282 (_2!35309 (get!20822 lt!2143127)))))))

(declare-fun b!5219042 () Bool)

(assert (=> b!5219042 (= e!3248613 (not lt!2143183))))

(assert (= (and d!1682699 c!900549) b!5219040))

(assert (= (and d!1682699 (not c!900549)) b!5219034))

(assert (= (and d!1682699 c!900548) b!5219033))

(assert (= (and d!1682699 (not c!900548)) b!5219037))

(assert (= (and b!5219037 c!900547) b!5219042))

(assert (= (and b!5219037 (not c!900547)) b!5219030))

(assert (= (and b!5219030 (not res!2216149)) b!5219038))

(assert (= (and b!5219038 res!2216152) b!5219032))

(assert (= (and b!5219032 res!2216150) b!5219041))

(assert (= (and b!5219041 res!2216153) b!5219035))

(assert (= (and b!5219038 (not res!2216151)) b!5219036))

(assert (= (and b!5219036 res!2216147) b!5219029))

(assert (= (and b!5219029 (not res!2216146)) b!5219031))

(assert (= (and b!5219031 (not res!2216148)) b!5219039))

(assert (= (or b!5219033 b!5219029 b!5219032) bm!368194))

(declare-fun m!6267012 () Bool)

(assert (=> b!5219035 m!6267012))

(assert (=> b!5219040 m!6266948))

(assert (=> b!5219039 m!6267012))

(assert (=> b!5219034 m!6267012))

(assert (=> b!5219034 m!6267012))

(declare-fun m!6267014 () Bool)

(assert (=> b!5219034 m!6267014))

(declare-fun m!6267016 () Bool)

(assert (=> b!5219034 m!6267016))

(assert (=> b!5219034 m!6267014))

(assert (=> b!5219034 m!6267016))

(declare-fun m!6267018 () Bool)

(assert (=> b!5219034 m!6267018))

(assert (=> b!5219041 m!6267016))

(assert (=> b!5219041 m!6267016))

(declare-fun m!6267020 () Bool)

(assert (=> b!5219041 m!6267020))

(assert (=> b!5219031 m!6267016))

(assert (=> b!5219031 m!6267016))

(assert (=> b!5219031 m!6267020))

(declare-fun m!6267022 () Bool)

(assert (=> d!1682699 m!6267022))

(assert (=> d!1682699 m!6266954))

(assert (=> bm!368194 m!6267022))

(assert (=> b!5218018 d!1682699))

(assert (=> b!5218018 d!1682657))

(declare-fun d!1682701 () Bool)

(assert (=> d!1682701 (= (nullable!4976 (reg!15136 r!7292)) (nullableFct!1385 (reg!15136 r!7292)))))

(declare-fun bs!1212115 () Bool)

(assert (= bs!1212115 d!1682701))

(declare-fun m!6267024 () Bool)

(assert (=> bs!1212115 m!6267024))

(assert (=> b!5218062 d!1682701))

(declare-fun d!1682703 () Bool)

(assert (=> d!1682703 (= (head!11186 (unfocusZipperList!249 zl!343)) (h!67044 (unfocusZipperList!249 zl!343)))))

(assert (=> b!5218239 d!1682703))

(assert (=> b!5218177 d!1682367))

(assert (=> d!1682299 d!1682645))

(declare-fun b!5219043 () Bool)

(declare-fun e!3248617 () Bool)

(declare-fun e!3248619 () Bool)

(assert (=> b!5219043 (= e!3248617 e!3248619)))

(declare-fun res!2216154 () Bool)

(assert (=> b!5219043 (=> res!2216154 e!3248619)))

(declare-fun call!368200 () Bool)

(assert (=> b!5219043 (= res!2216154 call!368200)))

(declare-fun b!5219044 () Bool)

(declare-fun res!2216157 () Bool)

(declare-fun e!3248622 () Bool)

(assert (=> b!5219044 (=> res!2216157 e!3248622)))

(assert (=> b!5219044 (= res!2216157 (not ((_ is ElementMatch!14807) (regOne!30126 r!7292))))))

(declare-fun e!3248620 () Bool)

(assert (=> b!5219044 (= e!3248620 e!3248622)))

(declare-fun b!5219045 () Bool)

(declare-fun res!2216156 () Bool)

(assert (=> b!5219045 (=> res!2216156 e!3248619)))

(assert (=> b!5219045 (= res!2216156 (not (isEmpty!32517 (tail!10282 Nil!60597))))))

(declare-fun b!5219046 () Bool)

(declare-fun res!2216158 () Bool)

(declare-fun e!3248621 () Bool)

(assert (=> b!5219046 (=> (not res!2216158) (not e!3248621))))

(assert (=> b!5219046 (= res!2216158 (not call!368200))))

(declare-fun bm!368195 () Bool)

(assert (=> bm!368195 (= call!368200 (isEmpty!32517 Nil!60597))))

(declare-fun b!5219047 () Bool)

(declare-fun e!3248618 () Bool)

(declare-fun lt!2143184 () Bool)

(assert (=> b!5219047 (= e!3248618 (= lt!2143184 call!368200))))

(declare-fun b!5219048 () Bool)

(declare-fun e!3248616 () Bool)

(assert (=> b!5219048 (= e!3248616 (matchR!6992 (derivativeStep!4055 (regOne!30126 r!7292) (head!11185 Nil!60597)) (tail!10282 Nil!60597)))))

(declare-fun d!1682705 () Bool)

(assert (=> d!1682705 e!3248618))

(declare-fun c!900551 () Bool)

(assert (=> d!1682705 (= c!900551 ((_ is EmptyExpr!14807) (regOne!30126 r!7292)))))

(assert (=> d!1682705 (= lt!2143184 e!3248616)))

(declare-fun c!900552 () Bool)

(assert (=> d!1682705 (= c!900552 (isEmpty!32517 Nil!60597))))

(assert (=> d!1682705 (validRegex!6543 (regOne!30126 r!7292))))

(assert (=> d!1682705 (= (matchR!6992 (regOne!30126 r!7292) Nil!60597) lt!2143184)))

(declare-fun b!5219049 () Bool)

(assert (=> b!5219049 (= e!3248621 (= (head!11185 Nil!60597) (c!900134 (regOne!30126 r!7292))))))

(declare-fun b!5219050 () Bool)

(assert (=> b!5219050 (= e!3248622 e!3248617)))

(declare-fun res!2216155 () Bool)

(assert (=> b!5219050 (=> (not res!2216155) (not e!3248617))))

(assert (=> b!5219050 (= res!2216155 (not lt!2143184))))

(declare-fun b!5219051 () Bool)

(assert (=> b!5219051 (= e!3248618 e!3248620)))

(declare-fun c!900550 () Bool)

(assert (=> b!5219051 (= c!900550 ((_ is EmptyLang!14807) (regOne!30126 r!7292)))))

(declare-fun b!5219052 () Bool)

(declare-fun res!2216159 () Bool)

(assert (=> b!5219052 (=> res!2216159 e!3248622)))

(assert (=> b!5219052 (= res!2216159 e!3248621)))

(declare-fun res!2216160 () Bool)

(assert (=> b!5219052 (=> (not res!2216160) (not e!3248621))))

(assert (=> b!5219052 (= res!2216160 lt!2143184)))

(declare-fun b!5219053 () Bool)

(assert (=> b!5219053 (= e!3248619 (not (= (head!11185 Nil!60597) (c!900134 (regOne!30126 r!7292)))))))

(declare-fun b!5219054 () Bool)

(assert (=> b!5219054 (= e!3248616 (nullable!4976 (regOne!30126 r!7292)))))

(declare-fun b!5219055 () Bool)

(declare-fun res!2216161 () Bool)

(assert (=> b!5219055 (=> (not res!2216161) (not e!3248621))))

(assert (=> b!5219055 (= res!2216161 (isEmpty!32517 (tail!10282 Nil!60597)))))

(declare-fun b!5219056 () Bool)

(assert (=> b!5219056 (= e!3248620 (not lt!2143184))))

(assert (= (and d!1682705 c!900552) b!5219054))

(assert (= (and d!1682705 (not c!900552)) b!5219048))

(assert (= (and d!1682705 c!900551) b!5219047))

(assert (= (and d!1682705 (not c!900551)) b!5219051))

(assert (= (and b!5219051 c!900550) b!5219056))

(assert (= (and b!5219051 (not c!900550)) b!5219044))

(assert (= (and b!5219044 (not res!2216157)) b!5219052))

(assert (= (and b!5219052 res!2216160) b!5219046))

(assert (= (and b!5219046 res!2216158) b!5219055))

(assert (= (and b!5219055 res!2216161) b!5219049))

(assert (= (and b!5219052 (not res!2216159)) b!5219050))

(assert (= (and b!5219050 res!2216155) b!5219043))

(assert (= (and b!5219043 (not res!2216154)) b!5219045))

(assert (= (and b!5219045 (not res!2216156)) b!5219053))

(assert (= (or b!5219047 b!5219043 b!5219046) bm!368195))

(declare-fun m!6267026 () Bool)

(assert (=> b!5219049 m!6267026))

(assert (=> b!5219054 m!6266924))

(assert (=> b!5219053 m!6267026))

(assert (=> b!5219048 m!6267026))

(assert (=> b!5219048 m!6267026))

(declare-fun m!6267028 () Bool)

(assert (=> b!5219048 m!6267028))

(declare-fun m!6267030 () Bool)

(assert (=> b!5219048 m!6267030))

(assert (=> b!5219048 m!6267028))

(assert (=> b!5219048 m!6267030))

(declare-fun m!6267032 () Bool)

(assert (=> b!5219048 m!6267032))

(assert (=> b!5219055 m!6267030))

(assert (=> b!5219055 m!6267030))

(declare-fun m!6267034 () Bool)

(assert (=> b!5219055 m!6267034))

(assert (=> b!5219045 m!6267030))

(assert (=> b!5219045 m!6267030))

(assert (=> b!5219045 m!6267034))

(declare-fun m!6267036 () Bool)

(assert (=> d!1682705 m!6267036))

(assert (=> d!1682705 m!6266142))

(assert (=> bm!368195 m!6267036))

(assert (=> d!1682299 d!1682705))

(declare-fun b!5219057 () Bool)

(declare-fun e!3248624 () Bool)

(declare-fun e!3248625 () Bool)

(assert (=> b!5219057 (= e!3248624 e!3248625)))

(declare-fun res!2216165 () Bool)

(assert (=> b!5219057 (=> (not res!2216165) (not e!3248625))))

(declare-fun call!368203 () Bool)

(assert (=> b!5219057 (= res!2216165 call!368203)))

(declare-fun b!5219058 () Bool)

(declare-fun e!3248623 () Bool)

(declare-fun call!368201 () Bool)

(assert (=> b!5219058 (= e!3248623 call!368201)))

(declare-fun bm!368196 () Bool)

(declare-fun c!900553 () Bool)

(declare-fun c!900554 () Bool)

(assert (=> bm!368196 (= call!368201 (validRegex!6543 (ite c!900554 (reg!15136 (regOne!30126 r!7292)) (ite c!900553 (regTwo!30127 (regOne!30126 r!7292)) (regTwo!30126 (regOne!30126 r!7292))))))))

(declare-fun b!5219059 () Bool)

(declare-fun e!3248628 () Bool)

(declare-fun e!3248627 () Bool)

(assert (=> b!5219059 (= e!3248628 e!3248627)))

(assert (=> b!5219059 (= c!900554 ((_ is Star!14807) (regOne!30126 r!7292)))))

(declare-fun bm!368197 () Bool)

(assert (=> bm!368197 (= call!368203 (validRegex!6543 (ite c!900553 (regOne!30127 (regOne!30126 r!7292)) (regOne!30126 (regOne!30126 r!7292)))))))

(declare-fun bm!368198 () Bool)

(declare-fun call!368202 () Bool)

(assert (=> bm!368198 (= call!368202 call!368201)))

(declare-fun b!5219060 () Bool)

(assert (=> b!5219060 (= e!3248625 call!368202)))

(declare-fun b!5219061 () Bool)

(declare-fun res!2216166 () Bool)

(assert (=> b!5219061 (=> res!2216166 e!3248624)))

(assert (=> b!5219061 (= res!2216166 (not ((_ is Concat!23652) (regOne!30126 r!7292))))))

(declare-fun e!3248629 () Bool)

(assert (=> b!5219061 (= e!3248629 e!3248624)))

(declare-fun d!1682707 () Bool)

(declare-fun res!2216162 () Bool)

(assert (=> d!1682707 (=> res!2216162 e!3248628)))

(assert (=> d!1682707 (= res!2216162 ((_ is ElementMatch!14807) (regOne!30126 r!7292)))))

(assert (=> d!1682707 (= (validRegex!6543 (regOne!30126 r!7292)) e!3248628)))

(declare-fun b!5219062 () Bool)

(declare-fun e!3248626 () Bool)

(assert (=> b!5219062 (= e!3248626 call!368202)))

(declare-fun b!5219063 () Bool)

(assert (=> b!5219063 (= e!3248627 e!3248623)))

(declare-fun res!2216164 () Bool)

(assert (=> b!5219063 (= res!2216164 (not (nullable!4976 (reg!15136 (regOne!30126 r!7292)))))))

(assert (=> b!5219063 (=> (not res!2216164) (not e!3248623))))

(declare-fun b!5219064 () Bool)

(assert (=> b!5219064 (= e!3248627 e!3248629)))

(assert (=> b!5219064 (= c!900553 ((_ is Union!14807) (regOne!30126 r!7292)))))

(declare-fun b!5219065 () Bool)

(declare-fun res!2216163 () Bool)

(assert (=> b!5219065 (=> (not res!2216163) (not e!3248626))))

(assert (=> b!5219065 (= res!2216163 call!368203)))

(assert (=> b!5219065 (= e!3248629 e!3248626)))

(assert (= (and d!1682707 (not res!2216162)) b!5219059))

(assert (= (and b!5219059 c!900554) b!5219063))

(assert (= (and b!5219059 (not c!900554)) b!5219064))

(assert (= (and b!5219063 res!2216164) b!5219058))

(assert (= (and b!5219064 c!900553) b!5219065))

(assert (= (and b!5219064 (not c!900553)) b!5219061))

(assert (= (and b!5219065 res!2216163) b!5219062))

(assert (= (and b!5219061 (not res!2216166)) b!5219057))

(assert (= (and b!5219057 res!2216165) b!5219060))

(assert (= (or b!5219062 b!5219060) bm!368198))

(assert (= (or b!5219065 b!5219057) bm!368197))

(assert (= (or b!5219058 bm!368198) bm!368196))

(declare-fun m!6267038 () Bool)

(assert (=> bm!368196 m!6267038))

(declare-fun m!6267040 () Bool)

(assert (=> bm!368197 m!6267040))

(declare-fun m!6267042 () Bool)

(assert (=> b!5219063 m!6267042))

(assert (=> d!1682299 d!1682707))

(declare-fun d!1682709 () Bool)

(assert (=> d!1682709 (= (isEmpty!32514 (exprs!4691 (h!67046 zl!343))) ((_ is Nil!60596) (exprs!4691 (h!67046 zl!343))))))

(assert (=> b!5218092 d!1682709))

(assert (=> b!5218204 d!1682345))

(declare-fun d!1682711 () Bool)

(declare-fun e!3248634 () Bool)

(assert (=> d!1682711 e!3248634))

(declare-fun res!2216172 () Bool)

(assert (=> d!1682711 (=> (not res!2216172) (not e!3248634))))

(declare-fun lt!2143187 () List!60721)

(declare-fun content!10744 (List!60721) (InoxSet C!29884))

(assert (=> d!1682711 (= res!2216172 (= (content!10744 lt!2143187) ((_ map or) (content!10744 (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597))) (content!10744 (t!373889 s!2326)))))))

(declare-fun e!3248635 () List!60721)

(assert (=> d!1682711 (= lt!2143187 e!3248635)))

(declare-fun c!900557 () Bool)

(assert (=> d!1682711 (= c!900557 ((_ is Nil!60597) (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597))))))

(assert (=> d!1682711 (= (++!13213 (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597)) (t!373889 s!2326)) lt!2143187)))

(declare-fun b!5219076 () Bool)

(declare-fun res!2216171 () Bool)

(assert (=> b!5219076 (=> (not res!2216171) (not e!3248634))))

(declare-fun size!39724 (List!60721) Int)

(assert (=> b!5219076 (= res!2216171 (= (size!39724 lt!2143187) (+ (size!39724 (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597))) (size!39724 (t!373889 s!2326)))))))

(declare-fun b!5219077 () Bool)

(assert (=> b!5219077 (= e!3248634 (or (not (= (t!373889 s!2326) Nil!60597)) (= lt!2143187 (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597)))))))

(declare-fun b!5219075 () Bool)

(assert (=> b!5219075 (= e!3248635 (Cons!60597 (h!67045 (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597))) (++!13213 (t!373889 (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597))) (t!373889 s!2326))))))

(declare-fun b!5219074 () Bool)

(assert (=> b!5219074 (= e!3248635 (t!373889 s!2326))))

(assert (= (and d!1682711 c!900557) b!5219074))

(assert (= (and d!1682711 (not c!900557)) b!5219075))

(assert (= (and d!1682711 res!2216172) b!5219076))

(assert (= (and b!5219076 res!2216171) b!5219077))

(declare-fun m!6267044 () Bool)

(assert (=> d!1682711 m!6267044))

(assert (=> d!1682711 m!6266124))

(declare-fun m!6267046 () Bool)

(assert (=> d!1682711 m!6267046))

(declare-fun m!6267048 () Bool)

(assert (=> d!1682711 m!6267048))

(declare-fun m!6267050 () Bool)

(assert (=> b!5219076 m!6267050))

(assert (=> b!5219076 m!6266124))

(declare-fun m!6267052 () Bool)

(assert (=> b!5219076 m!6267052))

(declare-fun m!6267054 () Bool)

(assert (=> b!5219076 m!6267054))

(declare-fun m!6267056 () Bool)

(assert (=> b!5219075 m!6267056))

(assert (=> b!5218022 d!1682711))

(declare-fun d!1682713 () Bool)

(declare-fun e!3248636 () Bool)

(assert (=> d!1682713 e!3248636))

(declare-fun res!2216174 () Bool)

(assert (=> d!1682713 (=> (not res!2216174) (not e!3248636))))

(declare-fun lt!2143188 () List!60721)

(assert (=> d!1682713 (= res!2216174 (= (content!10744 lt!2143188) ((_ map or) (content!10744 Nil!60597) (content!10744 (Cons!60597 (h!67045 s!2326) Nil!60597)))))))

(declare-fun e!3248637 () List!60721)

(assert (=> d!1682713 (= lt!2143188 e!3248637)))

(declare-fun c!900558 () Bool)

(assert (=> d!1682713 (= c!900558 ((_ is Nil!60597) Nil!60597))))

(assert (=> d!1682713 (= (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597)) lt!2143188)))

(declare-fun b!5219080 () Bool)

(declare-fun res!2216173 () Bool)

(assert (=> b!5219080 (=> (not res!2216173) (not e!3248636))))

(assert (=> b!5219080 (= res!2216173 (= (size!39724 lt!2143188) (+ (size!39724 Nil!60597) (size!39724 (Cons!60597 (h!67045 s!2326) Nil!60597)))))))

(declare-fun b!5219081 () Bool)

(assert (=> b!5219081 (= e!3248636 (or (not (= (Cons!60597 (h!67045 s!2326) Nil!60597) Nil!60597)) (= lt!2143188 Nil!60597)))))

(declare-fun b!5219079 () Bool)

(assert (=> b!5219079 (= e!3248637 (Cons!60597 (h!67045 Nil!60597) (++!13213 (t!373889 Nil!60597) (Cons!60597 (h!67045 s!2326) Nil!60597))))))

(declare-fun b!5219078 () Bool)

(assert (=> b!5219078 (= e!3248637 (Cons!60597 (h!67045 s!2326) Nil!60597))))

(assert (= (and d!1682713 c!900558) b!5219078))

(assert (= (and d!1682713 (not c!900558)) b!5219079))

(assert (= (and d!1682713 res!2216174) b!5219080))

(assert (= (and b!5219080 res!2216173) b!5219081))

(declare-fun m!6267058 () Bool)

(assert (=> d!1682713 m!6267058))

(declare-fun m!6267060 () Bool)

(assert (=> d!1682713 m!6267060))

(declare-fun m!6267062 () Bool)

(assert (=> d!1682713 m!6267062))

(declare-fun m!6267064 () Bool)

(assert (=> b!5219080 m!6267064))

(declare-fun m!6267066 () Bool)

(assert (=> b!5219080 m!6267066))

(declare-fun m!6267068 () Bool)

(assert (=> b!5219080 m!6267068))

(declare-fun m!6267070 () Bool)

(assert (=> b!5219079 m!6267070))

(assert (=> b!5218022 d!1682713))

(declare-fun d!1682715 () Bool)

(assert (=> d!1682715 (= (++!13213 (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597)) (t!373889 s!2326)) s!2326)))

(declare-fun lt!2143191 () Unit!152494)

(declare-fun choose!38810 (List!60721 C!29884 List!60721 List!60721) Unit!152494)

(assert (=> d!1682715 (= lt!2143191 (choose!38810 Nil!60597 (h!67045 s!2326) (t!373889 s!2326) s!2326))))

(assert (=> d!1682715 (= (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) (t!373889 s!2326))) s!2326)))

(assert (=> d!1682715 (= (lemmaMoveElementToOtherListKeepsConcatEq!1628 Nil!60597 (h!67045 s!2326) (t!373889 s!2326) s!2326) lt!2143191)))

(declare-fun bs!1212116 () Bool)

(assert (= bs!1212116 d!1682715))

(assert (=> bs!1212116 m!6266124))

(assert (=> bs!1212116 m!6266124))

(assert (=> bs!1212116 m!6266126))

(declare-fun m!6267072 () Bool)

(assert (=> bs!1212116 m!6267072))

(declare-fun m!6267074 () Bool)

(assert (=> bs!1212116 m!6267074))

(assert (=> b!5218022 d!1682715))

(declare-fun b!5219082 () Bool)

(declare-fun e!3248642 () Bool)

(declare-fun lt!2143193 () Option!14918)

(assert (=> b!5219082 (= e!3248642 (not (isDefined!11621 lt!2143193)))))

(declare-fun d!1682717 () Bool)

(assert (=> d!1682717 e!3248642))

(declare-fun res!2216175 () Bool)

(assert (=> d!1682717 (=> res!2216175 e!3248642)))

(declare-fun e!3248640 () Bool)

(assert (=> d!1682717 (= res!2216175 e!3248640)))

(declare-fun res!2216178 () Bool)

(assert (=> d!1682717 (=> (not res!2216178) (not e!3248640))))

(assert (=> d!1682717 (= res!2216178 (isDefined!11621 lt!2143193))))

(declare-fun e!3248641 () Option!14918)

(assert (=> d!1682717 (= lt!2143193 e!3248641)))

(declare-fun c!900560 () Bool)

(declare-fun e!3248638 () Bool)

(assert (=> d!1682717 (= c!900560 e!3248638)))

(declare-fun res!2216179 () Bool)

(assert (=> d!1682717 (=> (not res!2216179) (not e!3248638))))

(assert (=> d!1682717 (= res!2216179 (matchR!6992 (regOne!30126 r!7292) (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597))))))

(assert (=> d!1682717 (validRegex!6543 (regOne!30126 r!7292))))

(assert (=> d!1682717 (= (findConcatSeparation!1332 (regOne!30126 r!7292) (regTwo!30126 r!7292) (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597)) (t!373889 s!2326) s!2326) lt!2143193)))

(declare-fun b!5219083 () Bool)

(declare-fun res!2216176 () Bool)

(assert (=> b!5219083 (=> (not res!2216176) (not e!3248640))))

(assert (=> b!5219083 (= res!2216176 (matchR!6992 (regTwo!30126 r!7292) (_2!35309 (get!20822 lt!2143193))))))

(declare-fun b!5219084 () Bool)

(assert (=> b!5219084 (= e!3248641 (Some!14917 (tuple2!64013 (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597)) (t!373889 s!2326))))))

(declare-fun b!5219085 () Bool)

(assert (=> b!5219085 (= e!3248640 (= (++!13213 (_1!35309 (get!20822 lt!2143193)) (_2!35309 (get!20822 lt!2143193))) s!2326))))

(declare-fun b!5219086 () Bool)

(declare-fun res!2216177 () Bool)

(assert (=> b!5219086 (=> (not res!2216177) (not e!3248640))))

(assert (=> b!5219086 (= res!2216177 (matchR!6992 (regOne!30126 r!7292) (_1!35309 (get!20822 lt!2143193))))))

(declare-fun b!5219087 () Bool)

(declare-fun lt!2143194 () Unit!152494)

(declare-fun lt!2143192 () Unit!152494)

(assert (=> b!5219087 (= lt!2143194 lt!2143192)))

(assert (=> b!5219087 (= (++!13213 (++!13213 (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597)) (Cons!60597 (h!67045 (t!373889 s!2326)) Nil!60597)) (t!373889 (t!373889 s!2326))) s!2326)))

(assert (=> b!5219087 (= lt!2143192 (lemmaMoveElementToOtherListKeepsConcatEq!1628 (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597)) (h!67045 (t!373889 s!2326)) (t!373889 (t!373889 s!2326)) s!2326))))

(declare-fun e!3248639 () Option!14918)

(assert (=> b!5219087 (= e!3248639 (findConcatSeparation!1332 (regOne!30126 r!7292) (regTwo!30126 r!7292) (++!13213 (++!13213 Nil!60597 (Cons!60597 (h!67045 s!2326) Nil!60597)) (Cons!60597 (h!67045 (t!373889 s!2326)) Nil!60597)) (t!373889 (t!373889 s!2326)) s!2326))))

(declare-fun b!5219088 () Bool)

(assert (=> b!5219088 (= e!3248639 None!14917)))

(declare-fun b!5219089 () Bool)

(assert (=> b!5219089 (= e!3248641 e!3248639)))

(declare-fun c!900559 () Bool)

(assert (=> b!5219089 (= c!900559 ((_ is Nil!60597) (t!373889 s!2326)))))

(declare-fun b!5219090 () Bool)

(assert (=> b!5219090 (= e!3248638 (matchR!6992 (regTwo!30126 r!7292) (t!373889 s!2326)))))

(assert (= (and d!1682717 res!2216179) b!5219090))

(assert (= (and d!1682717 c!900560) b!5219084))

(assert (= (and d!1682717 (not c!900560)) b!5219089))

(assert (= (and b!5219089 c!900559) b!5219088))

(assert (= (and b!5219089 (not c!900559)) b!5219087))

(assert (= (and d!1682717 res!2216178) b!5219086))

(assert (= (and b!5219086 res!2216177) b!5219083))

(assert (= (and b!5219083 res!2216176) b!5219085))

(assert (= (and d!1682717 (not res!2216175)) b!5219082))

(declare-fun m!6267076 () Bool)

(assert (=> b!5219090 m!6267076))

(assert (=> b!5219087 m!6266124))

(declare-fun m!6267078 () Bool)

(assert (=> b!5219087 m!6267078))

(assert (=> b!5219087 m!6267078))

(declare-fun m!6267080 () Bool)

(assert (=> b!5219087 m!6267080))

(assert (=> b!5219087 m!6266124))

(declare-fun m!6267082 () Bool)

(assert (=> b!5219087 m!6267082))

(assert (=> b!5219087 m!6267078))

(declare-fun m!6267084 () Bool)

(assert (=> b!5219087 m!6267084))

(declare-fun m!6267086 () Bool)

(assert (=> b!5219085 m!6267086))

(declare-fun m!6267088 () Bool)

(assert (=> b!5219085 m!6267088))

(declare-fun m!6267090 () Bool)

(assert (=> b!5219082 m!6267090))

(assert (=> b!5219083 m!6267086))

(declare-fun m!6267092 () Bool)

(assert (=> b!5219083 m!6267092))

(assert (=> d!1682717 m!6267090))

(assert (=> d!1682717 m!6266124))

(declare-fun m!6267094 () Bool)

(assert (=> d!1682717 m!6267094))

(assert (=> d!1682717 m!6266142))

(assert (=> b!5219086 m!6267086))

(declare-fun m!6267096 () Bool)

(assert (=> b!5219086 m!6267096))

(assert (=> b!5218022 d!1682717))

(declare-fun d!1682719 () Bool)

(assert (=> d!1682719 (= (isEmpty!32517 (t!373889 s!2326)) ((_ is Nil!60597) (t!373889 s!2326)))))

(assert (=> d!1682345 d!1682719))

(assert (=> b!5217907 d!1682685))

(assert (=> b!5217907 d!1682687))

(assert (=> d!1682341 d!1682719))

(declare-fun d!1682721 () Bool)

(assert (=> d!1682721 (= (isEmpty!32517 s!2326) ((_ is Nil!60597) s!2326))))

(assert (=> d!1682263 d!1682721))

(assert (=> d!1682263 d!1682317))

(declare-fun b!5219091 () Bool)

(declare-fun e!3248646 () (InoxSet Context!8382))

(declare-fun call!368206 () (InoxSet Context!8382))

(declare-fun call!368205 () (InoxSet Context!8382))

(assert (=> b!5219091 (= e!3248646 ((_ map or) call!368206 call!368205))))

(declare-fun bm!368199 () Bool)

(declare-fun call!368204 () List!60720)

(declare-fun call!368209 () List!60720)

(assert (=> bm!368199 (= call!368204 call!368209)))

(declare-fun b!5219092 () Bool)

(declare-fun e!3248644 () (InoxSet Context!8382))

(assert (=> b!5219092 (= e!3248644 ((as const (Array Context!8382 Bool)) false))))

(declare-fun bm!368200 () Bool)

(declare-fun call!368208 () (InoxSet Context!8382))

(assert (=> bm!368200 (= call!368205 call!368208)))

(declare-fun b!5219093 () Bool)

(declare-fun e!3248645 () (InoxSet Context!8382))

(declare-fun call!368207 () (InoxSet Context!8382))

(assert (=> b!5219093 (= e!3248645 call!368207)))

(declare-fun c!900562 () Bool)

(declare-fun c!900563 () Bool)

(declare-fun bm!368201 () Bool)

(assert (=> bm!368201 (= call!368209 ($colon$colon!1283 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 lt!2143059)))) (ite (or c!900563 c!900562) (regTwo!30126 (h!67044 (exprs!4691 lt!2143059))) (h!67044 (exprs!4691 lt!2143059)))))))

(declare-fun bm!368202 () Bool)

(assert (=> bm!368202 (= call!368207 call!368205)))

(declare-fun b!5219094 () Bool)

(declare-fun e!3248643 () (InoxSet Context!8382))

(assert (=> b!5219094 (= e!3248643 ((_ map or) call!368208 call!368206))))

(declare-fun d!1682723 () Bool)

(declare-fun c!900561 () Bool)

(assert (=> d!1682723 (= c!900561 (and ((_ is ElementMatch!14807) (h!67044 (exprs!4691 lt!2143059))) (= (c!900134 (h!67044 (exprs!4691 lt!2143059))) (h!67045 s!2326))))))

(declare-fun e!3248648 () (InoxSet Context!8382))

(assert (=> d!1682723 (= (derivationStepZipperDown!255 (h!67044 (exprs!4691 lt!2143059)) (Context!8383 (t!373888 (exprs!4691 lt!2143059))) (h!67045 s!2326)) e!3248648)))

(declare-fun b!5219095 () Bool)

(assert (=> b!5219095 (= e!3248646 e!3248645)))

(assert (=> b!5219095 (= c!900562 ((_ is Concat!23652) (h!67044 (exprs!4691 lt!2143059))))))

(declare-fun c!900564 () Bool)

(declare-fun bm!368203 () Bool)

(assert (=> bm!368203 (= call!368206 (derivationStepZipperDown!255 (ite c!900564 (regTwo!30127 (h!67044 (exprs!4691 lt!2143059))) (regOne!30126 (h!67044 (exprs!4691 lt!2143059)))) (ite c!900564 (Context!8383 (t!373888 (exprs!4691 lt!2143059))) (Context!8383 call!368209)) (h!67045 s!2326)))))

(declare-fun b!5219096 () Bool)

(assert (=> b!5219096 (= e!3248644 call!368207)))

(declare-fun b!5219097 () Bool)

(assert (=> b!5219097 (= e!3248648 (store ((as const (Array Context!8382 Bool)) false) (Context!8383 (t!373888 (exprs!4691 lt!2143059))) true))))

(declare-fun bm!368204 () Bool)

(assert (=> bm!368204 (= call!368208 (derivationStepZipperDown!255 (ite c!900564 (regOne!30127 (h!67044 (exprs!4691 lt!2143059))) (ite c!900563 (regTwo!30126 (h!67044 (exprs!4691 lt!2143059))) (ite c!900562 (regOne!30126 (h!67044 (exprs!4691 lt!2143059))) (reg!15136 (h!67044 (exprs!4691 lt!2143059)))))) (ite (or c!900564 c!900563) (Context!8383 (t!373888 (exprs!4691 lt!2143059))) (Context!8383 call!368204)) (h!67045 s!2326)))))

(declare-fun b!5219098 () Bool)

(declare-fun e!3248647 () Bool)

(assert (=> b!5219098 (= c!900563 e!3248647)))

(declare-fun res!2216180 () Bool)

(assert (=> b!5219098 (=> (not res!2216180) (not e!3248647))))

(assert (=> b!5219098 (= res!2216180 ((_ is Concat!23652) (h!67044 (exprs!4691 lt!2143059))))))

(assert (=> b!5219098 (= e!3248643 e!3248646)))

(declare-fun b!5219099 () Bool)

(declare-fun c!900565 () Bool)

(assert (=> b!5219099 (= c!900565 ((_ is Star!14807) (h!67044 (exprs!4691 lt!2143059))))))

(assert (=> b!5219099 (= e!3248645 e!3248644)))

(declare-fun b!5219100 () Bool)

(assert (=> b!5219100 (= e!3248648 e!3248643)))

(assert (=> b!5219100 (= c!900564 ((_ is Union!14807) (h!67044 (exprs!4691 lt!2143059))))))

(declare-fun b!5219101 () Bool)

(assert (=> b!5219101 (= e!3248647 (nullable!4976 (regOne!30126 (h!67044 (exprs!4691 lt!2143059)))))))

(assert (= (and d!1682723 c!900561) b!5219097))

(assert (= (and d!1682723 (not c!900561)) b!5219100))

(assert (= (and b!5219100 c!900564) b!5219094))

(assert (= (and b!5219100 (not c!900564)) b!5219098))

(assert (= (and b!5219098 res!2216180) b!5219101))

(assert (= (and b!5219098 c!900563) b!5219091))

(assert (= (and b!5219098 (not c!900563)) b!5219095))

(assert (= (and b!5219095 c!900562) b!5219093))

(assert (= (and b!5219095 (not c!900562)) b!5219099))

(assert (= (and b!5219099 c!900565) b!5219096))

(assert (= (and b!5219099 (not c!900565)) b!5219092))

(assert (= (or b!5219093 b!5219096) bm!368199))

(assert (= (or b!5219093 b!5219096) bm!368202))

(assert (= (or b!5219091 bm!368199) bm!368201))

(assert (= (or b!5219091 bm!368202) bm!368200))

(assert (= (or b!5219094 b!5219091) bm!368203))

(assert (= (or b!5219094 bm!368200) bm!368204))

(declare-fun m!6267098 () Bool)

(assert (=> b!5219101 m!6267098))

(declare-fun m!6267100 () Bool)

(assert (=> b!5219097 m!6267100))

(declare-fun m!6267102 () Bool)

(assert (=> bm!368203 m!6267102))

(declare-fun m!6267104 () Bool)

(assert (=> bm!368204 m!6267104))

(declare-fun m!6267106 () Bool)

(assert (=> bm!368201 m!6267106))

(assert (=> bm!368033 d!1682723))

(declare-fun d!1682725 () Bool)

(assert (=> d!1682725 (= (nullable!4976 (reg!15136 (regOne!30127 (regOne!30126 r!7292)))) (nullableFct!1385 (reg!15136 (regOne!30127 (regOne!30126 r!7292)))))))

(declare-fun bs!1212117 () Bool)

(assert (= bs!1212117 d!1682725))

(declare-fun m!6267108 () Bool)

(assert (=> bs!1212117 m!6267108))

(assert (=> b!5218197 d!1682725))

(declare-fun d!1682727 () Bool)

(declare-fun c!900566 () Bool)

(assert (=> d!1682727 (= c!900566 (isEmpty!32517 (tail!10282 (t!373889 s!2326))))))

(declare-fun e!3248649 () Bool)

(assert (=> d!1682727 (= (matchZipper!1051 (derivationStepZipper!1077 lt!2143061 (head!11185 (t!373889 s!2326))) (tail!10282 (t!373889 s!2326))) e!3248649)))

(declare-fun b!5219102 () Bool)

(assert (=> b!5219102 (= e!3248649 (nullableZipper!1233 (derivationStepZipper!1077 lt!2143061 (head!11185 (t!373889 s!2326)))))))

(declare-fun b!5219103 () Bool)

(assert (=> b!5219103 (= e!3248649 (matchZipper!1051 (derivationStepZipper!1077 (derivationStepZipper!1077 lt!2143061 (head!11185 (t!373889 s!2326))) (head!11185 (tail!10282 (t!373889 s!2326)))) (tail!10282 (tail!10282 (t!373889 s!2326)))))))

(assert (= (and d!1682727 c!900566) b!5219102))

(assert (= (and d!1682727 (not c!900566)) b!5219103))

(assert (=> d!1682727 m!6266250))

(assert (=> d!1682727 m!6266872))

(assert (=> b!5219102 m!6266262))

(declare-fun m!6267110 () Bool)

(assert (=> b!5219102 m!6267110))

(assert (=> b!5219103 m!6266250))

(assert (=> b!5219103 m!6266876))

(assert (=> b!5219103 m!6266262))

(assert (=> b!5219103 m!6266876))

(declare-fun m!6267112 () Bool)

(assert (=> b!5219103 m!6267112))

(assert (=> b!5219103 m!6266250))

(assert (=> b!5219103 m!6266880))

(assert (=> b!5219103 m!6267112))

(assert (=> b!5219103 m!6266880))

(declare-fun m!6267114 () Bool)

(assert (=> b!5219103 m!6267114))

(assert (=> b!5218187 d!1682727))

(declare-fun bs!1212118 () Bool)

(declare-fun d!1682729 () Bool)

(assert (= bs!1212118 (and d!1682729 b!5217508)))

(declare-fun lambda!261870 () Int)

(assert (=> bs!1212118 (= (= (head!11185 (t!373889 s!2326)) (h!67045 s!2326)) (= lambda!261870 lambda!261769))))

(declare-fun bs!1212119 () Bool)

(assert (= bs!1212119 (and d!1682729 d!1682635)))

(assert (=> bs!1212119 (= lambda!261870 lambda!261862)))

(assert (=> d!1682729 true))

(assert (=> d!1682729 (= (derivationStepZipper!1077 lt!2143061 (head!11185 (t!373889 s!2326))) (flatMap!534 lt!2143061 lambda!261870))))

(declare-fun bs!1212120 () Bool)

(assert (= bs!1212120 d!1682729))

(declare-fun m!6267116 () Bool)

(assert (=> bs!1212120 m!6267116))

(assert (=> b!5218187 d!1682729))

(assert (=> b!5218187 d!1682637))

(assert (=> b!5218187 d!1682639))

(declare-fun b!5219104 () Bool)

(declare-fun e!3248651 () Bool)

(declare-fun e!3248653 () Bool)

(assert (=> b!5219104 (= e!3248651 e!3248653)))

(declare-fun res!2216181 () Bool)

(assert (=> b!5219104 (=> res!2216181 e!3248653)))

(declare-fun call!368210 () Bool)

(assert (=> b!5219104 (= res!2216181 call!368210)))

(declare-fun b!5219105 () Bool)

(declare-fun res!2216184 () Bool)

(declare-fun e!3248656 () Bool)

(assert (=> b!5219105 (=> res!2216184 e!3248656)))

(assert (=> b!5219105 (= res!2216184 (not ((_ is ElementMatch!14807) (derivativeStep!4055 r!7292 (head!11185 s!2326)))))))

(declare-fun e!3248654 () Bool)

(assert (=> b!5219105 (= e!3248654 e!3248656)))

(declare-fun b!5219106 () Bool)

(declare-fun res!2216183 () Bool)

(assert (=> b!5219106 (=> res!2216183 e!3248653)))

(assert (=> b!5219106 (= res!2216183 (not (isEmpty!32517 (tail!10282 (tail!10282 s!2326)))))))

(declare-fun b!5219107 () Bool)

(declare-fun res!2216185 () Bool)

(declare-fun e!3248655 () Bool)

(assert (=> b!5219107 (=> (not res!2216185) (not e!3248655))))

(assert (=> b!5219107 (= res!2216185 (not call!368210))))

(declare-fun bm!368205 () Bool)

(assert (=> bm!368205 (= call!368210 (isEmpty!32517 (tail!10282 s!2326)))))

(declare-fun b!5219108 () Bool)

(declare-fun e!3248652 () Bool)

(declare-fun lt!2143195 () Bool)

(assert (=> b!5219108 (= e!3248652 (= lt!2143195 call!368210))))

(declare-fun b!5219109 () Bool)

(declare-fun e!3248650 () Bool)

(assert (=> b!5219109 (= e!3248650 (matchR!6992 (derivativeStep!4055 (derivativeStep!4055 r!7292 (head!11185 s!2326)) (head!11185 (tail!10282 s!2326))) (tail!10282 (tail!10282 s!2326))))))

(declare-fun d!1682731 () Bool)

(assert (=> d!1682731 e!3248652))

(declare-fun c!900568 () Bool)

(assert (=> d!1682731 (= c!900568 ((_ is EmptyExpr!14807) (derivativeStep!4055 r!7292 (head!11185 s!2326))))))

(assert (=> d!1682731 (= lt!2143195 e!3248650)))

(declare-fun c!900569 () Bool)

(assert (=> d!1682731 (= c!900569 (isEmpty!32517 (tail!10282 s!2326)))))

(assert (=> d!1682731 (validRegex!6543 (derivativeStep!4055 r!7292 (head!11185 s!2326)))))

(assert (=> d!1682731 (= (matchR!6992 (derivativeStep!4055 r!7292 (head!11185 s!2326)) (tail!10282 s!2326)) lt!2143195)))

(declare-fun b!5219110 () Bool)

(assert (=> b!5219110 (= e!3248655 (= (head!11185 (tail!10282 s!2326)) (c!900134 (derivativeStep!4055 r!7292 (head!11185 s!2326)))))))

(declare-fun b!5219111 () Bool)

(assert (=> b!5219111 (= e!3248656 e!3248651)))

(declare-fun res!2216182 () Bool)

(assert (=> b!5219111 (=> (not res!2216182) (not e!3248651))))

(assert (=> b!5219111 (= res!2216182 (not lt!2143195))))

(declare-fun b!5219112 () Bool)

(assert (=> b!5219112 (= e!3248652 e!3248654)))

(declare-fun c!900567 () Bool)

(assert (=> b!5219112 (= c!900567 ((_ is EmptyLang!14807) (derivativeStep!4055 r!7292 (head!11185 s!2326))))))

(declare-fun b!5219113 () Bool)

(declare-fun res!2216186 () Bool)

(assert (=> b!5219113 (=> res!2216186 e!3248656)))

(assert (=> b!5219113 (= res!2216186 e!3248655)))

(declare-fun res!2216187 () Bool)

(assert (=> b!5219113 (=> (not res!2216187) (not e!3248655))))

(assert (=> b!5219113 (= res!2216187 lt!2143195)))

(declare-fun b!5219114 () Bool)

(assert (=> b!5219114 (= e!3248653 (not (= (head!11185 (tail!10282 s!2326)) (c!900134 (derivativeStep!4055 r!7292 (head!11185 s!2326))))))))

(declare-fun b!5219115 () Bool)

(assert (=> b!5219115 (= e!3248650 (nullable!4976 (derivativeStep!4055 r!7292 (head!11185 s!2326))))))

(declare-fun b!5219116 () Bool)

(declare-fun res!2216188 () Bool)

(assert (=> b!5219116 (=> (not res!2216188) (not e!3248655))))

(assert (=> b!5219116 (= res!2216188 (isEmpty!32517 (tail!10282 (tail!10282 s!2326))))))

(declare-fun b!5219117 () Bool)

(assert (=> b!5219117 (= e!3248654 (not lt!2143195))))

(assert (= (and d!1682731 c!900569) b!5219115))

(assert (= (and d!1682731 (not c!900569)) b!5219109))

(assert (= (and d!1682731 c!900568) b!5219108))

(assert (= (and d!1682731 (not c!900568)) b!5219112))

(assert (= (and b!5219112 c!900567) b!5219117))

(assert (= (and b!5219112 (not c!900567)) b!5219105))

(assert (= (and b!5219105 (not res!2216184)) b!5219113))

(assert (= (and b!5219113 res!2216187) b!5219107))

(assert (= (and b!5219107 res!2216185) b!5219116))

(assert (= (and b!5219116 res!2216188) b!5219110))

(assert (= (and b!5219113 (not res!2216186)) b!5219111))

(assert (= (and b!5219111 res!2216182) b!5219104))

(assert (= (and b!5219104 (not res!2216181)) b!5219106))

(assert (= (and b!5219106 (not res!2216183)) b!5219114))

(assert (= (or b!5219108 b!5219104 b!5219107) bm!368205))

(assert (=> b!5219110 m!6266082))

(declare-fun m!6267118 () Bool)

(assert (=> b!5219110 m!6267118))

(assert (=> b!5219115 m!6266080))

(declare-fun m!6267120 () Bool)

(assert (=> b!5219115 m!6267120))

(assert (=> b!5219114 m!6266082))

(assert (=> b!5219114 m!6267118))

(assert (=> b!5219109 m!6266082))

(assert (=> b!5219109 m!6267118))

(assert (=> b!5219109 m!6266080))

(assert (=> b!5219109 m!6267118))

(declare-fun m!6267122 () Bool)

(assert (=> b!5219109 m!6267122))

(assert (=> b!5219109 m!6266082))

(declare-fun m!6267124 () Bool)

(assert (=> b!5219109 m!6267124))

(assert (=> b!5219109 m!6267122))

(assert (=> b!5219109 m!6267124))

(declare-fun m!6267126 () Bool)

(assert (=> b!5219109 m!6267126))

(assert (=> b!5219116 m!6266082))

(assert (=> b!5219116 m!6267124))

(assert (=> b!5219116 m!6267124))

(declare-fun m!6267128 () Bool)

(assert (=> b!5219116 m!6267128))

(assert (=> b!5219106 m!6266082))

(assert (=> b!5219106 m!6267124))

(assert (=> b!5219106 m!6267124))

(assert (=> b!5219106 m!6267128))

(assert (=> d!1682731 m!6266082))

(assert (=> d!1682731 m!6266086))

(assert (=> d!1682731 m!6266080))

(declare-fun m!6267130 () Bool)

(assert (=> d!1682731 m!6267130))

(assert (=> bm!368205 m!6266082))

(assert (=> bm!368205 m!6266086))

(assert (=> b!5217910 d!1682731))

(declare-fun b!5219138 () Bool)

(declare-fun e!3248671 () Regex!14807)

(assert (=> b!5219138 (= e!3248671 (ite (= (head!11185 s!2326) (c!900134 r!7292)) EmptyExpr!14807 EmptyLang!14807))))

(declare-fun call!368219 () Regex!14807)

(declare-fun c!900582 () Bool)

(declare-fun bm!368214 () Bool)

(declare-fun c!900580 () Bool)

(assert (=> bm!368214 (= call!368219 (derivativeStep!4055 (ite c!900580 (regOne!30127 r!7292) (ite c!900582 (regTwo!30126 r!7292) (regOne!30126 r!7292))) (head!11185 s!2326)))))

(declare-fun b!5219139 () Bool)

(declare-fun e!3248668 () Regex!14807)

(declare-fun call!368222 () Regex!14807)

(declare-fun call!368221 () Regex!14807)

(assert (=> b!5219139 (= e!3248668 (Union!14807 (Concat!23652 call!368221 (regTwo!30126 r!7292)) call!368222))))

(declare-fun bm!368215 () Bool)

(declare-fun call!368220 () Regex!14807)

(declare-fun c!900584 () Bool)

(assert (=> bm!368215 (= call!368220 (derivativeStep!4055 (ite c!900580 (regTwo!30127 r!7292) (ite c!900584 (reg!15136 r!7292) (regOne!30126 r!7292))) (head!11185 s!2326)))))

(declare-fun b!5219140 () Bool)

(declare-fun e!3248669 () Regex!14807)

(assert (=> b!5219140 (= e!3248669 (Concat!23652 call!368221 r!7292))))

(declare-fun b!5219141 () Bool)

(assert (=> b!5219141 (= c!900580 ((_ is Union!14807) r!7292))))

(declare-fun e!3248667 () Regex!14807)

(assert (=> b!5219141 (= e!3248671 e!3248667)))

(declare-fun b!5219142 () Bool)

(assert (=> b!5219142 (= e!3248668 (Union!14807 (Concat!23652 call!368222 (regTwo!30126 r!7292)) EmptyLang!14807))))

(declare-fun b!5219143 () Bool)

(declare-fun e!3248670 () Regex!14807)

(assert (=> b!5219143 (= e!3248670 EmptyLang!14807)))

(declare-fun b!5219144 () Bool)

(assert (=> b!5219144 (= e!3248667 (Union!14807 call!368219 call!368220))))

(declare-fun b!5219145 () Bool)

(assert (=> b!5219145 (= c!900582 (nullable!4976 (regOne!30126 r!7292)))))

(assert (=> b!5219145 (= e!3248669 e!3248668)))

(declare-fun bm!368217 () Bool)

(assert (=> bm!368217 (= call!368222 call!368219)))

(declare-fun d!1682733 () Bool)

(declare-fun lt!2143198 () Regex!14807)

(assert (=> d!1682733 (validRegex!6543 lt!2143198)))

(assert (=> d!1682733 (= lt!2143198 e!3248670)))

(declare-fun c!900581 () Bool)

(assert (=> d!1682733 (= c!900581 (or ((_ is EmptyExpr!14807) r!7292) ((_ is EmptyLang!14807) r!7292)))))

(assert (=> d!1682733 (validRegex!6543 r!7292)))

(assert (=> d!1682733 (= (derivativeStep!4055 r!7292 (head!11185 s!2326)) lt!2143198)))

(declare-fun bm!368216 () Bool)

(assert (=> bm!368216 (= call!368221 call!368220)))

(declare-fun b!5219146 () Bool)

(assert (=> b!5219146 (= e!3248667 e!3248669)))

(assert (=> b!5219146 (= c!900584 ((_ is Star!14807) r!7292))))

(declare-fun b!5219147 () Bool)

(assert (=> b!5219147 (= e!3248670 e!3248671)))

(declare-fun c!900583 () Bool)

(assert (=> b!5219147 (= c!900583 ((_ is ElementMatch!14807) r!7292))))

(assert (= (and d!1682733 c!900581) b!5219143))

(assert (= (and d!1682733 (not c!900581)) b!5219147))

(assert (= (and b!5219147 c!900583) b!5219138))

(assert (= (and b!5219147 (not c!900583)) b!5219141))

(assert (= (and b!5219141 c!900580) b!5219144))

(assert (= (and b!5219141 (not c!900580)) b!5219146))

(assert (= (and b!5219146 c!900584) b!5219140))

(assert (= (and b!5219146 (not c!900584)) b!5219145))

(assert (= (and b!5219145 c!900582) b!5219139))

(assert (= (and b!5219145 (not c!900582)) b!5219142))

(assert (= (or b!5219139 b!5219142) bm!368217))

(assert (= (or b!5219140 b!5219139) bm!368216))

(assert (= (or b!5219144 bm!368216) bm!368215))

(assert (= (or b!5219144 bm!368217) bm!368214))

(assert (=> bm!368214 m!6266076))

(declare-fun m!6267132 () Bool)

(assert (=> bm!368214 m!6267132))

(assert (=> bm!368215 m!6266076))

(declare-fun m!6267134 () Bool)

(assert (=> bm!368215 m!6267134))

(assert (=> b!5219145 m!6266924))

(declare-fun m!6267136 () Bool)

(assert (=> d!1682733 m!6267136))

(assert (=> d!1682733 m!6265812))

(assert (=> b!5217910 d!1682733))

(declare-fun d!1682735 () Bool)

(assert (=> d!1682735 (= (head!11185 s!2326) (h!67045 s!2326))))

(assert (=> b!5217910 d!1682735))

(assert (=> b!5217910 d!1682687))

(declare-fun bs!1212121 () Bool)

(declare-fun d!1682737 () Bool)

(assert (= bs!1212121 (and d!1682737 d!1682371)))

(declare-fun lambda!261871 () Int)

(assert (=> bs!1212121 (= lambda!261871 lambda!261821)))

(declare-fun bs!1212122 () Bool)

(assert (= bs!1212122 (and d!1682737 d!1682373)))

(assert (=> bs!1212122 (= lambda!261871 lambda!261824)))

(declare-fun bs!1212123 () Bool)

(assert (= bs!1212123 (and d!1682737 d!1682375)))

(assert (=> bs!1212123 (= lambda!261871 lambda!261825)))

(declare-fun bs!1212124 () Bool)

(assert (= bs!1212124 (and d!1682737 d!1682653)))

(assert (=> bs!1212124 (= lambda!261871 lambda!261863)))

(declare-fun bs!1212125 () Bool)

(assert (= bs!1212125 (and d!1682737 d!1682319)))

(assert (=> bs!1212125 (= lambda!261871 lambda!261815)))

(declare-fun bs!1212126 () Bool)

(assert (= bs!1212126 (and d!1682737 d!1682369)))

(assert (=> bs!1212126 (= lambda!261871 lambda!261818)))

(assert (=> d!1682737 (= (inv!80264 setElem!33177) (forall!14241 (exprs!4691 setElem!33177) lambda!261871))))

(declare-fun bs!1212127 () Bool)

(assert (= bs!1212127 d!1682737))

(declare-fun m!6267138 () Bool)

(assert (=> bs!1212127 m!6267138))

(assert (=> setNonEmpty!33177 d!1682737))

(declare-fun bs!1212128 () Bool)

(declare-fun d!1682739 () Bool)

(assert (= bs!1212128 (and d!1682739 d!1682665)))

(declare-fun lambda!261872 () Int)

(assert (=> bs!1212128 (= lambda!261872 lambda!261866)))

(declare-fun bs!1212129 () Bool)

(assert (= bs!1212129 (and d!1682739 d!1682693)))

(assert (=> bs!1212129 (= lambda!261872 lambda!261869)))

(assert (=> d!1682739 (= (nullableZipper!1233 lt!2143067) (exists!1969 lt!2143067 lambda!261872))))

(declare-fun bs!1212130 () Bool)

(assert (= bs!1212130 d!1682739))

(declare-fun m!6267140 () Bool)

(assert (=> bs!1212130 m!6267140))

(assert (=> b!5218210 d!1682739))

(declare-fun bs!1212131 () Bool)

(declare-fun d!1682741 () Bool)

(assert (= bs!1212131 (and d!1682741 d!1682665)))

(declare-fun lambda!261873 () Int)

(assert (=> bs!1212131 (= lambda!261873 lambda!261866)))

(declare-fun bs!1212132 () Bool)

(assert (= bs!1212132 (and d!1682741 d!1682693)))

(assert (=> bs!1212132 (= lambda!261873 lambda!261869)))

(declare-fun bs!1212133 () Bool)

(assert (= bs!1212133 (and d!1682741 d!1682739)))

(assert (=> bs!1212133 (= lambda!261873 lambda!261872)))

(assert (=> d!1682741 (= (nullableZipper!1233 lt!2143053) (exists!1969 lt!2143053 lambda!261873))))

(declare-fun bs!1212134 () Bool)

(assert (= bs!1212134 d!1682741))

(declare-fun m!6267142 () Bool)

(assert (=> bs!1212134 m!6267142))

(assert (=> b!5218202 d!1682741))

(assert (=> bm!367956 d!1682721))

(declare-fun d!1682743 () Bool)

(declare-fun res!2216193 () Bool)

(declare-fun e!3248676 () Bool)

(assert (=> d!1682743 (=> res!2216193 e!3248676)))

(assert (=> d!1682743 (= res!2216193 ((_ is Nil!60598) lt!2143149))))

(assert (=> d!1682743 (= (noDuplicate!1189 lt!2143149) e!3248676)))

(declare-fun b!5219152 () Bool)

(declare-fun e!3248677 () Bool)

(assert (=> b!5219152 (= e!3248676 e!3248677)))

(declare-fun res!2216194 () Bool)

(assert (=> b!5219152 (=> (not res!2216194) (not e!3248677))))

(declare-fun contains!19671 (List!60722 Context!8382) Bool)

(assert (=> b!5219152 (= res!2216194 (not (contains!19671 (t!373890 lt!2143149) (h!67046 lt!2143149))))))

(declare-fun b!5219153 () Bool)

(assert (=> b!5219153 (= e!3248677 (noDuplicate!1189 (t!373890 lt!2143149)))))

(assert (= (and d!1682743 (not res!2216193)) b!5219152))

(assert (= (and b!5219152 res!2216194) b!5219153))

(declare-fun m!6267144 () Bool)

(assert (=> b!5219152 m!6267144))

(declare-fun m!6267146 () Bool)

(assert (=> b!5219153 m!6267146))

(assert (=> d!1682347 d!1682743))

(declare-fun d!1682745 () Bool)

(declare-fun e!3248685 () Bool)

(assert (=> d!1682745 e!3248685))

(declare-fun res!2216199 () Bool)

(assert (=> d!1682745 (=> (not res!2216199) (not e!3248685))))

(declare-fun res!2216200 () List!60722)

(assert (=> d!1682745 (= res!2216199 (noDuplicate!1189 res!2216200))))

(declare-fun e!3248684 () Bool)

(assert (=> d!1682745 e!3248684))

(assert (=> d!1682745 (= (choose!38809 z!1189) res!2216200)))

(declare-fun b!5219161 () Bool)

(declare-fun e!3248686 () Bool)

(declare-fun tp!1463192 () Bool)

(assert (=> b!5219161 (= e!3248686 tp!1463192)))

(declare-fun b!5219160 () Bool)

(declare-fun tp!1463193 () Bool)

(assert (=> b!5219160 (= e!3248684 (and (inv!80264 (h!67046 res!2216200)) e!3248686 tp!1463193))))

(declare-fun b!5219162 () Bool)

(assert (=> b!5219162 (= e!3248685 (= (content!10742 res!2216200) z!1189))))

(assert (= b!5219160 b!5219161))

(assert (= (and d!1682745 ((_ is Cons!60598) res!2216200)) b!5219160))

(assert (= (and d!1682745 res!2216199) b!5219162))

(declare-fun m!6267148 () Bool)

(assert (=> d!1682745 m!6267148))

(declare-fun m!6267150 () Bool)

(assert (=> b!5219160 m!6267150))

(declare-fun m!6267152 () Bool)

(assert (=> b!5219162 m!6267152))

(assert (=> d!1682347 d!1682745))

(declare-fun d!1682747 () Bool)

(assert (=> d!1682747 (= (isEmptyLang!778 lt!2143154) ((_ is EmptyLang!14807) lt!2143154))))

(assert (=> b!5218234 d!1682747))

(declare-fun bs!1212135 () Bool)

(declare-fun d!1682749 () Bool)

(assert (= bs!1212135 (and d!1682749 d!1682665)))

(declare-fun lambda!261874 () Int)

(assert (=> bs!1212135 (= lambda!261874 lambda!261866)))

(declare-fun bs!1212136 () Bool)

(assert (= bs!1212136 (and d!1682749 d!1682693)))

(assert (=> bs!1212136 (= lambda!261874 lambda!261869)))

(declare-fun bs!1212137 () Bool)

(assert (= bs!1212137 (and d!1682749 d!1682739)))

(assert (=> bs!1212137 (= lambda!261874 lambda!261872)))

(declare-fun bs!1212138 () Bool)

(assert (= bs!1212138 (and d!1682749 d!1682741)))

(assert (=> bs!1212138 (= lambda!261874 lambda!261873)))

(assert (=> d!1682749 (= (nullableZipper!1233 ((_ map or) lt!2143051 lt!2143067)) (exists!1969 ((_ map or) lt!2143051 lt!2143067) lambda!261874))))

(declare-fun bs!1212139 () Bool)

(assert (= bs!1212139 d!1682749))

(declare-fun m!6267154 () Bool)

(assert (=> bs!1212139 m!6267154))

(assert (=> b!5218184 d!1682749))

(declare-fun b!5219163 () Bool)

(declare-fun e!3248688 () Bool)

(declare-fun e!3248689 () Bool)

(assert (=> b!5219163 (= e!3248688 e!3248689)))

(declare-fun res!2216204 () Bool)

(assert (=> b!5219163 (=> (not res!2216204) (not e!3248689))))

(declare-fun call!368225 () Bool)

(assert (=> b!5219163 (= res!2216204 call!368225)))

(declare-fun b!5219164 () Bool)

(declare-fun e!3248687 () Bool)

(declare-fun call!368223 () Bool)

(assert (=> b!5219164 (= e!3248687 call!368223)))

(declare-fun c!900586 () Bool)

(declare-fun c!900585 () Bool)

(declare-fun bm!368218 () Bool)

(assert (=> bm!368218 (= call!368223 (validRegex!6543 (ite c!900586 (reg!15136 (ite c!900273 (regOne!30127 r!7292) (regOne!30126 r!7292))) (ite c!900585 (regTwo!30127 (ite c!900273 (regOne!30127 r!7292) (regOne!30126 r!7292))) (regTwo!30126 (ite c!900273 (regOne!30127 r!7292) (regOne!30126 r!7292)))))))))

(declare-fun b!5219165 () Bool)

(declare-fun e!3248692 () Bool)

(declare-fun e!3248691 () Bool)

(assert (=> b!5219165 (= e!3248692 e!3248691)))

(assert (=> b!5219165 (= c!900586 ((_ is Star!14807) (ite c!900273 (regOne!30127 r!7292) (regOne!30126 r!7292))))))

(declare-fun bm!368219 () Bool)

(assert (=> bm!368219 (= call!368225 (validRegex!6543 (ite c!900585 (regOne!30127 (ite c!900273 (regOne!30127 r!7292) (regOne!30126 r!7292))) (regOne!30126 (ite c!900273 (regOne!30127 r!7292) (regOne!30126 r!7292))))))))

(declare-fun bm!368220 () Bool)

(declare-fun call!368224 () Bool)

(assert (=> bm!368220 (= call!368224 call!368223)))

(declare-fun b!5219166 () Bool)

(assert (=> b!5219166 (= e!3248689 call!368224)))

(declare-fun b!5219167 () Bool)

(declare-fun res!2216205 () Bool)

(assert (=> b!5219167 (=> res!2216205 e!3248688)))

(assert (=> b!5219167 (= res!2216205 (not ((_ is Concat!23652) (ite c!900273 (regOne!30127 r!7292) (regOne!30126 r!7292)))))))

(declare-fun e!3248693 () Bool)

(assert (=> b!5219167 (= e!3248693 e!3248688)))

(declare-fun d!1682751 () Bool)

(declare-fun res!2216201 () Bool)

(assert (=> d!1682751 (=> res!2216201 e!3248692)))

(assert (=> d!1682751 (= res!2216201 ((_ is ElementMatch!14807) (ite c!900273 (regOne!30127 r!7292) (regOne!30126 r!7292))))))

(assert (=> d!1682751 (= (validRegex!6543 (ite c!900273 (regOne!30127 r!7292) (regOne!30126 r!7292))) e!3248692)))

(declare-fun b!5219168 () Bool)

(declare-fun e!3248690 () Bool)

(assert (=> b!5219168 (= e!3248690 call!368224)))

(declare-fun b!5219169 () Bool)

(assert (=> b!5219169 (= e!3248691 e!3248687)))

(declare-fun res!2216203 () Bool)

(assert (=> b!5219169 (= res!2216203 (not (nullable!4976 (reg!15136 (ite c!900273 (regOne!30127 r!7292) (regOne!30126 r!7292))))))))

(assert (=> b!5219169 (=> (not res!2216203) (not e!3248687))))

(declare-fun b!5219170 () Bool)

(assert (=> b!5219170 (= e!3248691 e!3248693)))

(assert (=> b!5219170 (= c!900585 ((_ is Union!14807) (ite c!900273 (regOne!30127 r!7292) (regOne!30126 r!7292))))))

(declare-fun b!5219171 () Bool)

(declare-fun res!2216202 () Bool)

(assert (=> b!5219171 (=> (not res!2216202) (not e!3248690))))

(assert (=> b!5219171 (= res!2216202 call!368225)))

(assert (=> b!5219171 (= e!3248693 e!3248690)))

(assert (= (and d!1682751 (not res!2216201)) b!5219165))

(assert (= (and b!5219165 c!900586) b!5219169))

(assert (= (and b!5219165 (not c!900586)) b!5219170))

(assert (= (and b!5219169 res!2216203) b!5219164))

(assert (= (and b!5219170 c!900585) b!5219171))

(assert (= (and b!5219170 (not c!900585)) b!5219167))

(assert (= (and b!5219171 res!2216202) b!5219168))

(assert (= (and b!5219167 (not res!2216205)) b!5219163))

(assert (= (and b!5219163 res!2216204) b!5219166))

(assert (= (or b!5219168 b!5219166) bm!368220))

(assert (= (or b!5219171 b!5219163) bm!368219))

(assert (= (or b!5219164 bm!368220) bm!368218))

(declare-fun m!6267156 () Bool)

(assert (=> bm!368218 m!6267156))

(declare-fun m!6267158 () Bool)

(assert (=> bm!368219 m!6267158))

(declare-fun m!6267160 () Bool)

(assert (=> b!5219169 m!6267160))

(assert (=> bm!367993 d!1682751))

(declare-fun d!1682753 () Bool)

(assert (=> d!1682753 (= ($colon$colon!1283 (exprs!4691 lt!2143066) (ite (or c!900299 c!900298) (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (h!67044 (exprs!4691 (h!67046 zl!343))))) (Cons!60596 (ite (or c!900299 c!900298) (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (h!67044 (exprs!4691 (h!67046 zl!343)))) (exprs!4691 lt!2143066)))))

(assert (=> bm!368009 d!1682753))

(assert (=> d!1682365 d!1682361))

(declare-fun d!1682755 () Bool)

(assert (=> d!1682755 (= (flatMap!534 lt!2143058 lambda!261769) (dynLambda!23942 lambda!261769 lt!2143059))))

(assert (=> d!1682755 true))

(declare-fun _$13!1714 () Unit!152494)

(assert (=> d!1682755 (= (choose!38806 lt!2143058 lt!2143059 lambda!261769) _$13!1714)))

(declare-fun b_lambda!201813 () Bool)

(assert (=> (not b_lambda!201813) (not d!1682755)))

(declare-fun bs!1212140 () Bool)

(assert (= bs!1212140 d!1682755))

(assert (=> bs!1212140 m!6265782))

(assert (=> bs!1212140 m!6266304))

(assert (=> d!1682365 d!1682755))

(declare-fun d!1682757 () Bool)

(assert (=> d!1682757 (= (isEmpty!32518 (findConcatSeparation!1332 (regOne!30126 r!7292) (regTwo!30126 r!7292) Nil!60597 s!2326 s!2326)) (not ((_ is Some!14917) (findConcatSeparation!1332 (regOne!30126 r!7292) (regTwo!30126 r!7292) Nil!60597 s!2326 s!2326))))))

(assert (=> d!1682313 d!1682757))

(assert (=> b!5218089 d!1682247))

(declare-fun b!5219172 () Bool)

(declare-fun e!3248695 () Bool)

(declare-fun e!3248696 () Bool)

(assert (=> b!5219172 (= e!3248695 e!3248696)))

(declare-fun res!2216209 () Bool)

(assert (=> b!5219172 (=> (not res!2216209) (not e!3248696))))

(declare-fun call!368228 () Bool)

(assert (=> b!5219172 (= res!2216209 call!368228)))

(declare-fun b!5219173 () Bool)

(declare-fun e!3248694 () Bool)

(declare-fun call!368226 () Bool)

(assert (=> b!5219173 (= e!3248694 call!368226)))

(declare-fun c!900588 () Bool)

(declare-fun bm!368221 () Bool)

(declare-fun c!900587 () Bool)

(assert (=> bm!368221 (= call!368226 (validRegex!6543 (ite c!900588 (reg!15136 (ite c!900328 (reg!15136 (regOne!30127 (regOne!30126 r!7292))) (ite c!900327 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292)))))) (ite c!900587 (regTwo!30127 (ite c!900328 (reg!15136 (regOne!30127 (regOne!30126 r!7292))) (ite c!900327 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292)))))) (regTwo!30126 (ite c!900328 (reg!15136 (regOne!30127 (regOne!30126 r!7292))) (ite c!900327 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))))))))))))

(declare-fun b!5219174 () Bool)

(declare-fun e!3248699 () Bool)

(declare-fun e!3248698 () Bool)

(assert (=> b!5219174 (= e!3248699 e!3248698)))

(assert (=> b!5219174 (= c!900588 ((_ is Star!14807) (ite c!900328 (reg!15136 (regOne!30127 (regOne!30126 r!7292))) (ite c!900327 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292)))))))))

(declare-fun bm!368222 () Bool)

(assert (=> bm!368222 (= call!368228 (validRegex!6543 (ite c!900587 (regOne!30127 (ite c!900328 (reg!15136 (regOne!30127 (regOne!30126 r!7292))) (ite c!900327 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292)))))) (regOne!30126 (ite c!900328 (reg!15136 (regOne!30127 (regOne!30126 r!7292))) (ite c!900327 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292)))))))))))

(declare-fun bm!368223 () Bool)

(declare-fun call!368227 () Bool)

(assert (=> bm!368223 (= call!368227 call!368226)))

(declare-fun b!5219175 () Bool)

(assert (=> b!5219175 (= e!3248696 call!368227)))

(declare-fun b!5219176 () Bool)

(declare-fun res!2216210 () Bool)

(assert (=> b!5219176 (=> res!2216210 e!3248695)))

(assert (=> b!5219176 (= res!2216210 (not ((_ is Concat!23652) (ite c!900328 (reg!15136 (regOne!30127 (regOne!30126 r!7292))) (ite c!900327 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))))))))))

(declare-fun e!3248700 () Bool)

(assert (=> b!5219176 (= e!3248700 e!3248695)))

(declare-fun d!1682759 () Bool)

(declare-fun res!2216206 () Bool)

(assert (=> d!1682759 (=> res!2216206 e!3248699)))

(assert (=> d!1682759 (= res!2216206 ((_ is ElementMatch!14807) (ite c!900328 (reg!15136 (regOne!30127 (regOne!30126 r!7292))) (ite c!900327 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292)))))))))

(assert (=> d!1682759 (= (validRegex!6543 (ite c!900328 (reg!15136 (regOne!30127 (regOne!30126 r!7292))) (ite c!900327 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292)))))) e!3248699)))

(declare-fun b!5219177 () Bool)

(declare-fun e!3248697 () Bool)

(assert (=> b!5219177 (= e!3248697 call!368227)))

(declare-fun b!5219178 () Bool)

(assert (=> b!5219178 (= e!3248698 e!3248694)))

(declare-fun res!2216208 () Bool)

(assert (=> b!5219178 (= res!2216208 (not (nullable!4976 (reg!15136 (ite c!900328 (reg!15136 (regOne!30127 (regOne!30126 r!7292))) (ite c!900327 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292)))))))))))

(assert (=> b!5219178 (=> (not res!2216208) (not e!3248694))))

(declare-fun b!5219179 () Bool)

(assert (=> b!5219179 (= e!3248698 e!3248700)))

(assert (=> b!5219179 (= c!900587 ((_ is Union!14807) (ite c!900328 (reg!15136 (regOne!30127 (regOne!30126 r!7292))) (ite c!900327 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292)))))))))

(declare-fun b!5219180 () Bool)

(declare-fun res!2216207 () Bool)

(assert (=> b!5219180 (=> (not res!2216207) (not e!3248697))))

(assert (=> b!5219180 (= res!2216207 call!368228)))

(assert (=> b!5219180 (= e!3248700 e!3248697)))

(assert (= (and d!1682759 (not res!2216206)) b!5219174))

(assert (= (and b!5219174 c!900588) b!5219178))

(assert (= (and b!5219174 (not c!900588)) b!5219179))

(assert (= (and b!5219178 res!2216208) b!5219173))

(assert (= (and b!5219179 c!900587) b!5219180))

(assert (= (and b!5219179 (not c!900587)) b!5219176))

(assert (= (and b!5219180 res!2216207) b!5219177))

(assert (= (and b!5219176 (not res!2216210)) b!5219172))

(assert (= (and b!5219172 res!2216209) b!5219175))

(assert (= (or b!5219177 b!5219175) bm!368223))

(assert (= (or b!5219180 b!5219172) bm!368222))

(assert (= (or b!5219173 bm!368223) bm!368221))

(declare-fun m!6267162 () Bool)

(assert (=> bm!368221 m!6267162))

(declare-fun m!6267164 () Bool)

(assert (=> bm!368222 m!6267164))

(declare-fun m!6267166 () Bool)

(assert (=> b!5219178 m!6267166))

(assert (=> bm!368030 d!1682759))

(declare-fun d!1682761 () Bool)

(declare-fun c!900589 () Bool)

(assert (=> d!1682761 (= c!900589 (isEmpty!32517 (tail!10282 (t!373889 s!2326))))))

(declare-fun e!3248701 () Bool)

(assert (=> d!1682761 (= (matchZipper!1051 (derivationStepZipper!1077 lt!2143052 (head!11185 (t!373889 s!2326))) (tail!10282 (t!373889 s!2326))) e!3248701)))

(declare-fun b!5219181 () Bool)

(assert (=> b!5219181 (= e!3248701 (nullableZipper!1233 (derivationStepZipper!1077 lt!2143052 (head!11185 (t!373889 s!2326)))))))

(declare-fun b!5219182 () Bool)

(assert (=> b!5219182 (= e!3248701 (matchZipper!1051 (derivationStepZipper!1077 (derivationStepZipper!1077 lt!2143052 (head!11185 (t!373889 s!2326))) (head!11185 (tail!10282 (t!373889 s!2326)))) (tail!10282 (tail!10282 (t!373889 s!2326)))))))

(assert (= (and d!1682761 c!900589) b!5219181))

(assert (= (and d!1682761 (not c!900589)) b!5219182))

(assert (=> d!1682761 m!6266250))

(assert (=> d!1682761 m!6266872))

(assert (=> b!5219181 m!6266280))

(declare-fun m!6267168 () Bool)

(assert (=> b!5219181 m!6267168))

(assert (=> b!5219182 m!6266250))

(assert (=> b!5219182 m!6266876))

(assert (=> b!5219182 m!6266280))

(assert (=> b!5219182 m!6266876))

(declare-fun m!6267170 () Bool)

(assert (=> b!5219182 m!6267170))

(assert (=> b!5219182 m!6266250))

(assert (=> b!5219182 m!6266880))

(assert (=> b!5219182 m!6267170))

(assert (=> b!5219182 m!6266880))

(declare-fun m!6267172 () Bool)

(assert (=> b!5219182 m!6267172))

(assert (=> b!5218201 d!1682761))

(declare-fun bs!1212141 () Bool)

(declare-fun d!1682763 () Bool)

(assert (= bs!1212141 (and d!1682763 b!5217508)))

(declare-fun lambda!261875 () Int)

(assert (=> bs!1212141 (= (= (head!11185 (t!373889 s!2326)) (h!67045 s!2326)) (= lambda!261875 lambda!261769))))

(declare-fun bs!1212142 () Bool)

(assert (= bs!1212142 (and d!1682763 d!1682635)))

(assert (=> bs!1212142 (= lambda!261875 lambda!261862)))

(declare-fun bs!1212143 () Bool)

(assert (= bs!1212143 (and d!1682763 d!1682729)))

(assert (=> bs!1212143 (= lambda!261875 lambda!261870)))

(assert (=> d!1682763 true))

(assert (=> d!1682763 (= (derivationStepZipper!1077 lt!2143052 (head!11185 (t!373889 s!2326))) (flatMap!534 lt!2143052 lambda!261875))))

(declare-fun bs!1212144 () Bool)

(assert (= bs!1212144 d!1682763))

(declare-fun m!6267174 () Bool)

(assert (=> bs!1212144 m!6267174))

(assert (=> b!5218201 d!1682763))

(assert (=> b!5218201 d!1682637))

(assert (=> b!5218201 d!1682639))

(declare-fun d!1682765 () Bool)

(assert (=> d!1682765 true))

(assert (=> d!1682765 true))

(declare-fun res!2216213 () Bool)

(assert (=> d!1682765 (= (choose!38803 lambda!261767) res!2216213)))

(assert (=> d!1682307 d!1682765))

(declare-fun d!1682767 () Bool)

(assert (=> d!1682767 (= (isEmptyExpr!769 lt!2143140) ((_ is EmptyExpr!14807) lt!2143140))))

(assert (=> b!5218093 d!1682767))

(declare-fun b!5219183 () Bool)

(declare-fun e!3248703 () Bool)

(declare-fun e!3248704 () Bool)

(assert (=> b!5219183 (= e!3248703 e!3248704)))

(declare-fun res!2216217 () Bool)

(assert (=> b!5219183 (=> (not res!2216217) (not e!3248704))))

(declare-fun call!368231 () Bool)

(assert (=> b!5219183 (= res!2216217 call!368231)))

(declare-fun b!5219184 () Bool)

(declare-fun e!3248702 () Bool)

(declare-fun call!368229 () Bool)

(assert (=> b!5219184 (= e!3248702 call!368229)))

(declare-fun c!900591 () Bool)

(declare-fun bm!368224 () Bool)

(declare-fun c!900590 () Bool)

(assert (=> bm!368224 (= call!368229 (validRegex!6543 (ite c!900591 (reg!15136 lt!2143137) (ite c!900590 (regTwo!30127 lt!2143137) (regTwo!30126 lt!2143137)))))))

(declare-fun b!5219185 () Bool)

(declare-fun e!3248707 () Bool)

(declare-fun e!3248706 () Bool)

(assert (=> b!5219185 (= e!3248707 e!3248706)))

(assert (=> b!5219185 (= c!900591 ((_ is Star!14807) lt!2143137))))

(declare-fun bm!368225 () Bool)

(assert (=> bm!368225 (= call!368231 (validRegex!6543 (ite c!900590 (regOne!30127 lt!2143137) (regOne!30126 lt!2143137))))))

(declare-fun bm!368226 () Bool)

(declare-fun call!368230 () Bool)

(assert (=> bm!368226 (= call!368230 call!368229)))

(declare-fun b!5219186 () Bool)

(assert (=> b!5219186 (= e!3248704 call!368230)))

(declare-fun b!5219187 () Bool)

(declare-fun res!2216218 () Bool)

(assert (=> b!5219187 (=> res!2216218 e!3248703)))

(assert (=> b!5219187 (= res!2216218 (not ((_ is Concat!23652) lt!2143137)))))

(declare-fun e!3248708 () Bool)

(assert (=> b!5219187 (= e!3248708 e!3248703)))

(declare-fun d!1682769 () Bool)

(declare-fun res!2216214 () Bool)

(assert (=> d!1682769 (=> res!2216214 e!3248707)))

(assert (=> d!1682769 (= res!2216214 ((_ is ElementMatch!14807) lt!2143137))))

(assert (=> d!1682769 (= (validRegex!6543 lt!2143137) e!3248707)))

(declare-fun b!5219188 () Bool)

(declare-fun e!3248705 () Bool)

(assert (=> b!5219188 (= e!3248705 call!368230)))

(declare-fun b!5219189 () Bool)

(assert (=> b!5219189 (= e!3248706 e!3248702)))

(declare-fun res!2216216 () Bool)

(assert (=> b!5219189 (= res!2216216 (not (nullable!4976 (reg!15136 lt!2143137))))))

(assert (=> b!5219189 (=> (not res!2216216) (not e!3248702))))

(declare-fun b!5219190 () Bool)

(assert (=> b!5219190 (= e!3248706 e!3248708)))

(assert (=> b!5219190 (= c!900590 ((_ is Union!14807) lt!2143137))))

(declare-fun b!5219191 () Bool)

(declare-fun res!2216215 () Bool)

(assert (=> b!5219191 (=> (not res!2216215) (not e!3248705))))

(assert (=> b!5219191 (= res!2216215 call!368231)))

(assert (=> b!5219191 (= e!3248708 e!3248705)))

(assert (= (and d!1682769 (not res!2216214)) b!5219185))

(assert (= (and b!5219185 c!900591) b!5219189))

(assert (= (and b!5219185 (not c!900591)) b!5219190))

(assert (= (and b!5219189 res!2216216) b!5219184))

(assert (= (and b!5219190 c!900590) b!5219191))

(assert (= (and b!5219190 (not c!900590)) b!5219187))

(assert (= (and b!5219191 res!2216215) b!5219188))

(assert (= (and b!5219187 (not res!2216218)) b!5219183))

(assert (= (and b!5219183 res!2216217) b!5219186))

(assert (= (or b!5219188 b!5219186) bm!368226))

(assert (= (or b!5219191 b!5219183) bm!368225))

(assert (= (or b!5219184 bm!368226) bm!368224))

(declare-fun m!6267176 () Bool)

(assert (=> bm!368224 m!6267176))

(declare-fun m!6267178 () Bool)

(assert (=> bm!368225 m!6267178))

(declare-fun m!6267180 () Bool)

(assert (=> b!5219189 m!6267180))

(assert (=> d!1682315 d!1682769))

(assert (=> d!1682315 d!1682371))

(assert (=> d!1682315 d!1682373))

(assert (=> d!1682367 d!1682719))

(assert (=> b!5217911 d!1682735))

(assert (=> d!1682355 d!1682719))

(declare-fun d!1682771 () Bool)

(assert (=> d!1682771 (= (Exists!1988 (ite c!900223 lambda!261802 lambda!261803)) (choose!38803 (ite c!900223 lambda!261802 lambda!261803)))))

(declare-fun bs!1212145 () Bool)

(assert (= bs!1212145 d!1682771))

(declare-fun m!6267182 () Bool)

(assert (=> bs!1212145 m!6267182))

(assert (=> bm!367957 d!1682771))

(declare-fun d!1682773 () Bool)

(declare-fun c!900592 () Bool)

(assert (=> d!1682773 (= c!900592 (isEmpty!32517 (tail!10282 (t!373889 s!2326))))))

(declare-fun e!3248709 () Bool)

(assert (=> d!1682773 (= (matchZipper!1051 (derivationStepZipper!1077 lt!2143067 (head!11185 (t!373889 s!2326))) (tail!10282 (t!373889 s!2326))) e!3248709)))

(declare-fun b!5219192 () Bool)

(assert (=> b!5219192 (= e!3248709 (nullableZipper!1233 (derivationStepZipper!1077 lt!2143067 (head!11185 (t!373889 s!2326)))))))

(declare-fun b!5219193 () Bool)

(assert (=> b!5219193 (= e!3248709 (matchZipper!1051 (derivationStepZipper!1077 (derivationStepZipper!1077 lt!2143067 (head!11185 (t!373889 s!2326))) (head!11185 (tail!10282 (t!373889 s!2326)))) (tail!10282 (tail!10282 (t!373889 s!2326)))))))

(assert (= (and d!1682773 c!900592) b!5219192))

(assert (= (and d!1682773 (not c!900592)) b!5219193))

(assert (=> d!1682773 m!6266250))

(assert (=> d!1682773 m!6266872))

(assert (=> b!5219192 m!6266310))

(declare-fun m!6267184 () Bool)

(assert (=> b!5219192 m!6267184))

(assert (=> b!5219193 m!6266250))

(assert (=> b!5219193 m!6266876))

(assert (=> b!5219193 m!6266310))

(assert (=> b!5219193 m!6266876))

(declare-fun m!6267186 () Bool)

(assert (=> b!5219193 m!6267186))

(assert (=> b!5219193 m!6266250))

(assert (=> b!5219193 m!6266880))

(assert (=> b!5219193 m!6267186))

(assert (=> b!5219193 m!6266880))

(declare-fun m!6267188 () Bool)

(assert (=> b!5219193 m!6267188))

(assert (=> b!5218211 d!1682773))

(declare-fun bs!1212146 () Bool)

(declare-fun d!1682775 () Bool)

(assert (= bs!1212146 (and d!1682775 b!5217508)))

(declare-fun lambda!261876 () Int)

(assert (=> bs!1212146 (= (= (head!11185 (t!373889 s!2326)) (h!67045 s!2326)) (= lambda!261876 lambda!261769))))

(declare-fun bs!1212147 () Bool)

(assert (= bs!1212147 (and d!1682775 d!1682635)))

(assert (=> bs!1212147 (= lambda!261876 lambda!261862)))

(declare-fun bs!1212148 () Bool)

(assert (= bs!1212148 (and d!1682775 d!1682729)))

(assert (=> bs!1212148 (= lambda!261876 lambda!261870)))

(declare-fun bs!1212149 () Bool)

(assert (= bs!1212149 (and d!1682775 d!1682763)))

(assert (=> bs!1212149 (= lambda!261876 lambda!261875)))

(assert (=> d!1682775 true))

(assert (=> d!1682775 (= (derivationStepZipper!1077 lt!2143067 (head!11185 (t!373889 s!2326))) (flatMap!534 lt!2143067 lambda!261876))))

(declare-fun bs!1212150 () Bool)

(assert (= bs!1212150 d!1682775))

(declare-fun m!6267190 () Bool)

(assert (=> bs!1212150 m!6267190))

(assert (=> b!5218211 d!1682775))

(assert (=> b!5218211 d!1682637))

(assert (=> b!5218211 d!1682639))

(assert (=> b!5217915 d!1682735))

(declare-fun b!5219194 () Bool)

(declare-fun e!3248710 () (InoxSet Context!8382))

(declare-fun e!3248711 () (InoxSet Context!8382))

(assert (=> b!5219194 (= e!3248710 e!3248711)))

(declare-fun c!900594 () Bool)

(assert (=> b!5219194 (= c!900594 ((_ is Cons!60596) (exprs!4691 (Context!8383 (t!373888 (exprs!4691 (h!67046 zl!343)))))))))

(declare-fun bm!368227 () Bool)

(declare-fun call!368232 () (InoxSet Context!8382))

(assert (=> bm!368227 (= call!368232 (derivationStepZipperDown!255 (h!67044 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 (h!67046 zl!343)))))) (Context!8383 (t!373888 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 (h!67046 zl!343))))))) (h!67045 s!2326)))))

(declare-fun b!5219195 () Bool)

(assert (=> b!5219195 (= e!3248711 ((as const (Array Context!8382 Bool)) false))))

(declare-fun b!5219196 () Bool)

(assert (=> b!5219196 (= e!3248710 ((_ map or) call!368232 (derivationStepZipperUp!179 (Context!8383 (t!373888 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 (h!67046 zl!343))))))) (h!67045 s!2326))))))

(declare-fun b!5219197 () Bool)

(declare-fun e!3248712 () Bool)

(assert (=> b!5219197 (= e!3248712 (nullable!4976 (h!67044 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 (h!67046 zl!343))))))))))

(declare-fun d!1682777 () Bool)

(declare-fun c!900593 () Bool)

(assert (=> d!1682777 (= c!900593 e!3248712)))

(declare-fun res!2216219 () Bool)

(assert (=> d!1682777 (=> (not res!2216219) (not e!3248712))))

(assert (=> d!1682777 (= res!2216219 ((_ is Cons!60596) (exprs!4691 (Context!8383 (t!373888 (exprs!4691 (h!67046 zl!343)))))))))

(assert (=> d!1682777 (= (derivationStepZipperUp!179 (Context!8383 (t!373888 (exprs!4691 (h!67046 zl!343)))) (h!67045 s!2326)) e!3248710)))

(declare-fun b!5219198 () Bool)

(assert (=> b!5219198 (= e!3248711 call!368232)))

(assert (= (and d!1682777 res!2216219) b!5219197))

(assert (= (and d!1682777 c!900593) b!5219196))

(assert (= (and d!1682777 (not c!900593)) b!5219194))

(assert (= (and b!5219194 c!900594) b!5219198))

(assert (= (and b!5219194 (not c!900594)) b!5219195))

(assert (= (or b!5219196 b!5219198) bm!368227))

(declare-fun m!6267192 () Bool)

(assert (=> bm!368227 m!6267192))

(declare-fun m!6267194 () Bool)

(assert (=> b!5219196 m!6267194))

(declare-fun m!6267196 () Bool)

(assert (=> b!5219197 m!6267196))

(assert (=> b!5218150 d!1682777))

(declare-fun b!5219199 () Bool)

(declare-fun e!3248713 () (InoxSet Context!8382))

(declare-fun e!3248714 () (InoxSet Context!8382))

(assert (=> b!5219199 (= e!3248713 e!3248714)))

(declare-fun c!900596 () Bool)

(assert (=> b!5219199 (= c!900596 ((_ is Cons!60596) (exprs!4691 (Context!8383 (t!373888 (exprs!4691 lt!2143066))))))))

(declare-fun bm!368228 () Bool)

(declare-fun call!368233 () (InoxSet Context!8382))

(assert (=> bm!368228 (= call!368233 (derivationStepZipperDown!255 (h!67044 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 lt!2143066))))) (Context!8383 (t!373888 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 lt!2143066)))))) (h!67045 s!2326)))))

(declare-fun b!5219200 () Bool)

(assert (=> b!5219200 (= e!3248714 ((as const (Array Context!8382 Bool)) false))))

(declare-fun b!5219201 () Bool)

(assert (=> b!5219201 (= e!3248713 ((_ map or) call!368233 (derivationStepZipperUp!179 (Context!8383 (t!373888 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 lt!2143066)))))) (h!67045 s!2326))))))

(declare-fun b!5219202 () Bool)

(declare-fun e!3248715 () Bool)

(assert (=> b!5219202 (= e!3248715 (nullable!4976 (h!67044 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 lt!2143066)))))))))

(declare-fun d!1682779 () Bool)

(declare-fun c!900595 () Bool)

(assert (=> d!1682779 (= c!900595 e!3248715)))

(declare-fun res!2216220 () Bool)

(assert (=> d!1682779 (=> (not res!2216220) (not e!3248715))))

(assert (=> d!1682779 (= res!2216220 ((_ is Cons!60596) (exprs!4691 (Context!8383 (t!373888 (exprs!4691 lt!2143066))))))))

(assert (=> d!1682779 (= (derivationStepZipperUp!179 (Context!8383 (t!373888 (exprs!4691 lt!2143066))) (h!67045 s!2326)) e!3248713)))

(declare-fun b!5219203 () Bool)

(assert (=> b!5219203 (= e!3248714 call!368233)))

(assert (= (and d!1682779 res!2216220) b!5219202))

(assert (= (and d!1682779 c!900595) b!5219201))

(assert (= (and d!1682779 (not c!900595)) b!5219199))

(assert (= (and b!5219199 c!900596) b!5219203))

(assert (= (and b!5219199 (not c!900596)) b!5219200))

(assert (= (or b!5219201 b!5219203) bm!368228))

(declare-fun m!6267198 () Bool)

(assert (=> bm!368228 m!6267198))

(declare-fun m!6267200 () Bool)

(assert (=> b!5219201 m!6267200))

(declare-fun m!6267202 () Bool)

(assert (=> b!5219202 m!6267202))

(assert (=> b!5218145 d!1682779))

(declare-fun d!1682781 () Bool)

(declare-fun c!900597 () Bool)

(assert (=> d!1682781 (= c!900597 (isEmpty!32517 (tail!10282 (t!373889 s!2326))))))

(declare-fun e!3248716 () Bool)

(assert (=> d!1682781 (= (matchZipper!1051 (derivationStepZipper!1077 lt!2143053 (head!11185 (t!373889 s!2326))) (tail!10282 (t!373889 s!2326))) e!3248716)))

(declare-fun b!5219204 () Bool)

(assert (=> b!5219204 (= e!3248716 (nullableZipper!1233 (derivationStepZipper!1077 lt!2143053 (head!11185 (t!373889 s!2326)))))))

(declare-fun b!5219205 () Bool)

(assert (=> b!5219205 (= e!3248716 (matchZipper!1051 (derivationStepZipper!1077 (derivationStepZipper!1077 lt!2143053 (head!11185 (t!373889 s!2326))) (head!11185 (tail!10282 (t!373889 s!2326)))) (tail!10282 (tail!10282 (t!373889 s!2326)))))))

(assert (= (and d!1682781 c!900597) b!5219204))

(assert (= (and d!1682781 (not c!900597)) b!5219205))

(assert (=> d!1682781 m!6266250))

(assert (=> d!1682781 m!6266872))

(assert (=> b!5219204 m!6266286))

(declare-fun m!6267204 () Bool)

(assert (=> b!5219204 m!6267204))

(assert (=> b!5219205 m!6266250))

(assert (=> b!5219205 m!6266876))

(assert (=> b!5219205 m!6266286))

(assert (=> b!5219205 m!6266876))

(declare-fun m!6267206 () Bool)

(assert (=> b!5219205 m!6267206))

(assert (=> b!5219205 m!6266250))

(assert (=> b!5219205 m!6266880))

(assert (=> b!5219205 m!6267206))

(assert (=> b!5219205 m!6266880))

(declare-fun m!6267208 () Bool)

(assert (=> b!5219205 m!6267208))

(assert (=> b!5218203 d!1682781))

(declare-fun bs!1212151 () Bool)

(declare-fun d!1682783 () Bool)

(assert (= bs!1212151 (and d!1682783 d!1682635)))

(declare-fun lambda!261877 () Int)

(assert (=> bs!1212151 (= lambda!261877 lambda!261862)))

(declare-fun bs!1212152 () Bool)

(assert (= bs!1212152 (and d!1682783 b!5217508)))

(assert (=> bs!1212152 (= (= (head!11185 (t!373889 s!2326)) (h!67045 s!2326)) (= lambda!261877 lambda!261769))))

(declare-fun bs!1212153 () Bool)

(assert (= bs!1212153 (and d!1682783 d!1682775)))

(assert (=> bs!1212153 (= lambda!261877 lambda!261876)))

(declare-fun bs!1212154 () Bool)

(assert (= bs!1212154 (and d!1682783 d!1682729)))

(assert (=> bs!1212154 (= lambda!261877 lambda!261870)))

(declare-fun bs!1212155 () Bool)

(assert (= bs!1212155 (and d!1682783 d!1682763)))

(assert (=> bs!1212155 (= lambda!261877 lambda!261875)))

(assert (=> d!1682783 true))

(assert (=> d!1682783 (= (derivationStepZipper!1077 lt!2143053 (head!11185 (t!373889 s!2326))) (flatMap!534 lt!2143053 lambda!261877))))

(declare-fun bs!1212156 () Bool)

(assert (= bs!1212156 d!1682783))

(declare-fun m!6267210 () Bool)

(assert (=> bs!1212156 m!6267210))

(assert (=> b!5218203 d!1682783))

(assert (=> b!5218203 d!1682637))

(assert (=> b!5218203 d!1682639))

(declare-fun b!5219206 () Bool)

(declare-fun e!3248717 () (InoxSet Context!8382))

(declare-fun e!3248718 () (InoxSet Context!8382))

(assert (=> b!5219206 (= e!3248717 e!3248718)))

(declare-fun c!900599 () Bool)

(assert (=> b!5219206 (= c!900599 ((_ is Cons!60596) (exprs!4691 (Context!8383 (t!373888 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))))))))

(declare-fun bm!368229 () Bool)

(declare-fun call!368234 () (InoxSet Context!8382))

(assert (=> bm!368229 (= call!368234 (derivationStepZipperDown!255 (h!67044 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))))) (Context!8383 (t!373888 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343))))))))))) (h!67045 s!2326)))))

(declare-fun b!5219207 () Bool)

(assert (=> b!5219207 (= e!3248718 ((as const (Array Context!8382 Bool)) false))))

(declare-fun b!5219208 () Bool)

(assert (=> b!5219208 (= e!3248717 ((_ map or) call!368234 (derivationStepZipperUp!179 (Context!8383 (t!373888 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343))))))))))) (h!67045 s!2326))))))

(declare-fun b!5219209 () Bool)

(declare-fun e!3248719 () Bool)

(assert (=> b!5219209 (= e!3248719 (nullable!4976 (h!67044 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343))))))))))))))

(declare-fun d!1682785 () Bool)

(declare-fun c!900598 () Bool)

(assert (=> d!1682785 (= c!900598 e!3248719)))

(declare-fun res!2216221 () Bool)

(assert (=> d!1682785 (=> (not res!2216221) (not e!3248719))))

(assert (=> d!1682785 (= res!2216221 ((_ is Cons!60596) (exprs!4691 (Context!8383 (t!373888 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))))))))

(assert (=> d!1682785 (= (derivationStepZipperUp!179 (Context!8383 (t!373888 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))) (h!67045 s!2326)) e!3248717)))

(declare-fun b!5219210 () Bool)

(assert (=> b!5219210 (= e!3248718 call!368234)))

(assert (= (and d!1682785 res!2216221) b!5219209))

(assert (= (and d!1682785 c!900598) b!5219208))

(assert (= (and d!1682785 (not c!900598)) b!5219206))

(assert (= (and b!5219206 c!900599) b!5219210))

(assert (= (and b!5219206 (not c!900599)) b!5219207))

(assert (= (or b!5219208 b!5219210) bm!368229))

(declare-fun m!6267212 () Bool)

(assert (=> bm!368229 m!6267212))

(declare-fun m!6267214 () Bool)

(assert (=> b!5219208 m!6267214))

(declare-fun m!6267216 () Bool)

(assert (=> b!5219209 m!6267216))

(assert (=> b!5218140 d!1682785))

(assert (=> d!1682343 d!1682719))

(declare-fun bs!1212157 () Bool)

(declare-fun d!1682787 () Bool)

(assert (= bs!1212157 (and d!1682787 d!1682371)))

(declare-fun lambda!261878 () Int)

(assert (=> bs!1212157 (= lambda!261878 lambda!261821)))

(declare-fun bs!1212158 () Bool)

(assert (= bs!1212158 (and d!1682787 d!1682373)))

(assert (=> bs!1212158 (= lambda!261878 lambda!261824)))

(declare-fun bs!1212159 () Bool)

(assert (= bs!1212159 (and d!1682787 d!1682375)))

(assert (=> bs!1212159 (= lambda!261878 lambda!261825)))

(declare-fun bs!1212160 () Bool)

(assert (= bs!1212160 (and d!1682787 d!1682737)))

(assert (=> bs!1212160 (= lambda!261878 lambda!261871)))

(declare-fun bs!1212161 () Bool)

(assert (= bs!1212161 (and d!1682787 d!1682653)))

(assert (=> bs!1212161 (= lambda!261878 lambda!261863)))

(declare-fun bs!1212162 () Bool)

(assert (= bs!1212162 (and d!1682787 d!1682319)))

(assert (=> bs!1212162 (= lambda!261878 lambda!261815)))

(declare-fun bs!1212163 () Bool)

(assert (= bs!1212163 (and d!1682787 d!1682369)))

(assert (=> bs!1212163 (= lambda!261878 lambda!261818)))

(assert (=> d!1682787 (= (inv!80264 (h!67046 (t!373890 zl!343))) (forall!14241 (exprs!4691 (h!67046 (t!373890 zl!343))) lambda!261878))))

(declare-fun bs!1212164 () Bool)

(assert (= bs!1212164 d!1682787))

(declare-fun m!6267218 () Bool)

(assert (=> bs!1212164 m!6267218))

(assert (=> b!5218279 d!1682787))

(declare-fun d!1682789 () Bool)

(declare-fun res!2216226 () Bool)

(declare-fun e!3248724 () Bool)

(assert (=> d!1682789 (=> res!2216226 e!3248724)))

(assert (=> d!1682789 (= res!2216226 ((_ is Nil!60596) (exprs!4691 setElem!33171)))))

(assert (=> d!1682789 (= (forall!14241 (exprs!4691 setElem!33171) lambda!261825) e!3248724)))

(declare-fun b!5219215 () Bool)

(declare-fun e!3248725 () Bool)

(assert (=> b!5219215 (= e!3248724 e!3248725)))

(declare-fun res!2216227 () Bool)

(assert (=> b!5219215 (=> (not res!2216227) (not e!3248725))))

(declare-fun dynLambda!23944 (Int Regex!14807) Bool)

(assert (=> b!5219215 (= res!2216227 (dynLambda!23944 lambda!261825 (h!67044 (exprs!4691 setElem!33171))))))

(declare-fun b!5219216 () Bool)

(assert (=> b!5219216 (= e!3248725 (forall!14241 (t!373888 (exprs!4691 setElem!33171)) lambda!261825))))

(assert (= (and d!1682789 (not res!2216226)) b!5219215))

(assert (= (and b!5219215 res!2216227) b!5219216))

(declare-fun b_lambda!201815 () Bool)

(assert (=> (not b_lambda!201815) (not b!5219215)))

(declare-fun m!6267220 () Bool)

(assert (=> b!5219215 m!6267220))

(declare-fun m!6267222 () Bool)

(assert (=> b!5219216 m!6267222))

(assert (=> d!1682375 d!1682789))

(declare-fun d!1682791 () Bool)

(assert (=> d!1682791 (= (isEmpty!32514 (t!373888 (unfocusZipperList!249 zl!343))) ((_ is Nil!60596) (t!373888 (unfocusZipperList!249 zl!343))))))

(assert (=> b!5218235 d!1682791))

(declare-fun d!1682793 () Bool)

(declare-fun c!900600 () Bool)

(assert (=> d!1682793 (= c!900600 (isEmpty!32517 (tail!10282 (t!373889 s!2326))))))

(declare-fun e!3248726 () Bool)

(assert (=> d!1682793 (= (matchZipper!1051 (derivationStepZipper!1077 ((_ map or) lt!2143051 lt!2143067) (head!11185 (t!373889 s!2326))) (tail!10282 (t!373889 s!2326))) e!3248726)))

(declare-fun b!5219217 () Bool)

(assert (=> b!5219217 (= e!3248726 (nullableZipper!1233 (derivationStepZipper!1077 ((_ map or) lt!2143051 lt!2143067) (head!11185 (t!373889 s!2326)))))))

(declare-fun b!5219218 () Bool)

(assert (=> b!5219218 (= e!3248726 (matchZipper!1051 (derivationStepZipper!1077 (derivationStepZipper!1077 ((_ map or) lt!2143051 lt!2143067) (head!11185 (t!373889 s!2326))) (head!11185 (tail!10282 (t!373889 s!2326)))) (tail!10282 (tail!10282 (t!373889 s!2326)))))))

(assert (= (and d!1682793 c!900600) b!5219217))

(assert (= (and d!1682793 (not c!900600)) b!5219218))

(assert (=> d!1682793 m!6266250))

(assert (=> d!1682793 m!6266872))

(assert (=> b!5219217 m!6266256))

(declare-fun m!6267224 () Bool)

(assert (=> b!5219217 m!6267224))

(assert (=> b!5219218 m!6266250))

(assert (=> b!5219218 m!6266876))

(assert (=> b!5219218 m!6266256))

(assert (=> b!5219218 m!6266876))

(declare-fun m!6267226 () Bool)

(assert (=> b!5219218 m!6267226))

(assert (=> b!5219218 m!6266250))

(assert (=> b!5219218 m!6266880))

(assert (=> b!5219218 m!6267226))

(assert (=> b!5219218 m!6266880))

(declare-fun m!6267228 () Bool)

(assert (=> b!5219218 m!6267228))

(assert (=> b!5218185 d!1682793))

(declare-fun bs!1212165 () Bool)

(declare-fun d!1682795 () Bool)

(assert (= bs!1212165 (and d!1682795 d!1682783)))

(declare-fun lambda!261879 () Int)

(assert (=> bs!1212165 (= lambda!261879 lambda!261877)))

(declare-fun bs!1212166 () Bool)

(assert (= bs!1212166 (and d!1682795 d!1682635)))

(assert (=> bs!1212166 (= lambda!261879 lambda!261862)))

(declare-fun bs!1212167 () Bool)

(assert (= bs!1212167 (and d!1682795 b!5217508)))

(assert (=> bs!1212167 (= (= (head!11185 (t!373889 s!2326)) (h!67045 s!2326)) (= lambda!261879 lambda!261769))))

(declare-fun bs!1212168 () Bool)

(assert (= bs!1212168 (and d!1682795 d!1682775)))

(assert (=> bs!1212168 (= lambda!261879 lambda!261876)))

(declare-fun bs!1212169 () Bool)

(assert (= bs!1212169 (and d!1682795 d!1682729)))

(assert (=> bs!1212169 (= lambda!261879 lambda!261870)))

(declare-fun bs!1212170 () Bool)

(assert (= bs!1212170 (and d!1682795 d!1682763)))

(assert (=> bs!1212170 (= lambda!261879 lambda!261875)))

(assert (=> d!1682795 true))

(assert (=> d!1682795 (= (derivationStepZipper!1077 ((_ map or) lt!2143051 lt!2143067) (head!11185 (t!373889 s!2326))) (flatMap!534 ((_ map or) lt!2143051 lt!2143067) lambda!261879))))

(declare-fun bs!1212171 () Bool)

(assert (= bs!1212171 d!1682795))

(declare-fun m!6267230 () Bool)

(assert (=> bs!1212171 m!6267230))

(assert (=> b!5218185 d!1682795))

(assert (=> b!5218185 d!1682637))

(assert (=> b!5218185 d!1682639))

(assert (=> bs!1211934 d!1682363))

(declare-fun d!1682797 () Bool)

(declare-fun res!2216228 () Bool)

(declare-fun e!3248727 () Bool)

(assert (=> d!1682797 (=> res!2216228 e!3248727)))

(assert (=> d!1682797 (= res!2216228 ((_ is Nil!60596) (exprs!4691 (h!67046 zl!343))))))

(assert (=> d!1682797 (= (forall!14241 (exprs!4691 (h!67046 zl!343)) lambda!261818) e!3248727)))

(declare-fun b!5219219 () Bool)

(declare-fun e!3248728 () Bool)

(assert (=> b!5219219 (= e!3248727 e!3248728)))

(declare-fun res!2216229 () Bool)

(assert (=> b!5219219 (=> (not res!2216229) (not e!3248728))))

(assert (=> b!5219219 (= res!2216229 (dynLambda!23944 lambda!261818 (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun b!5219220 () Bool)

(assert (=> b!5219220 (= e!3248728 (forall!14241 (t!373888 (exprs!4691 (h!67046 zl!343))) lambda!261818))))

(assert (= (and d!1682797 (not res!2216228)) b!5219219))

(assert (= (and b!5219219 res!2216229) b!5219220))

(declare-fun b_lambda!201817 () Bool)

(assert (=> (not b_lambda!201817) (not b!5219219)))

(declare-fun m!6267232 () Bool)

(assert (=> b!5219219 m!6267232))

(declare-fun m!6267234 () Bool)

(assert (=> b!5219220 m!6267234))

(assert (=> d!1682369 d!1682797))

(declare-fun bs!1212172 () Bool)

(declare-fun d!1682799 () Bool)

(assert (= bs!1212172 (and d!1682799 d!1682665)))

(declare-fun lambda!261880 () Int)

(assert (=> bs!1212172 (= lambda!261880 lambda!261866)))

(declare-fun bs!1212173 () Bool)

(assert (= bs!1212173 (and d!1682799 d!1682739)))

(assert (=> bs!1212173 (= lambda!261880 lambda!261872)))

(declare-fun bs!1212174 () Bool)

(assert (= bs!1212174 (and d!1682799 d!1682749)))

(assert (=> bs!1212174 (= lambda!261880 lambda!261874)))

(declare-fun bs!1212175 () Bool)

(assert (= bs!1212175 (and d!1682799 d!1682741)))

(assert (=> bs!1212175 (= lambda!261880 lambda!261873)))

(declare-fun bs!1212176 () Bool)

(assert (= bs!1212176 (and d!1682799 d!1682693)))

(assert (=> bs!1212176 (= lambda!261880 lambda!261869)))

(assert (=> d!1682799 (= (nullableZipper!1233 lt!2143051) (exists!1969 lt!2143051 lambda!261880))))

(declare-fun bs!1212177 () Bool)

(assert (= bs!1212177 d!1682799))

(declare-fun m!6267236 () Bool)

(assert (=> bs!1212177 m!6267236))

(assert (=> b!5218182 d!1682799))

(declare-fun d!1682801 () Bool)

(assert (=> d!1682801 (= (Exists!1988 lambda!261811) (choose!38803 lambda!261811))))

(declare-fun bs!1212178 () Bool)

(assert (= bs!1212178 d!1682801))

(declare-fun m!6267238 () Bool)

(assert (=> bs!1212178 m!6267238))

(assert (=> d!1682311 d!1682801))

(declare-fun d!1682803 () Bool)

(assert (=> d!1682803 (= (Exists!1988 lambda!261812) (choose!38803 lambda!261812))))

(declare-fun bs!1212179 () Bool)

(assert (= bs!1212179 d!1682803))

(declare-fun m!6267240 () Bool)

(assert (=> bs!1212179 m!6267240))

(assert (=> d!1682311 d!1682803))

(declare-fun bs!1212180 () Bool)

(declare-fun d!1682805 () Bool)

(assert (= bs!1212180 (and d!1682805 d!1682309)))

(declare-fun lambda!261885 () Int)

(assert (=> bs!1212180 (= lambda!261885 lambda!261806)))

(declare-fun bs!1212181 () Bool)

(assert (= bs!1212181 (and d!1682805 d!1682311)))

(assert (=> bs!1212181 (= lambda!261885 lambda!261811)))

(declare-fun bs!1212182 () Bool)

(assert (= bs!1212182 (and d!1682805 b!5217507)))

(assert (=> bs!1212182 (= lambda!261885 lambda!261767)))

(assert (=> bs!1212181 (not (= lambda!261885 lambda!261812))))

(assert (=> bs!1212182 (not (= lambda!261885 lambda!261768))))

(declare-fun bs!1212183 () Bool)

(assert (= bs!1212183 (and d!1682805 b!5217803)))

(assert (=> bs!1212183 (not (= lambda!261885 lambda!261803))))

(declare-fun bs!1212184 () Bool)

(assert (= bs!1212184 (and d!1682805 b!5219012)))

(assert (=> bs!1212184 (not (= lambda!261885 lambda!261867))))

(declare-fun bs!1212185 () Bool)

(assert (= bs!1212185 (and d!1682805 b!5219016)))

(assert (=> bs!1212185 (not (= lambda!261885 lambda!261868))))

(declare-fun bs!1212186 () Bool)

(assert (= bs!1212186 (and d!1682805 b!5217799)))

(assert (=> bs!1212186 (not (= lambda!261885 lambda!261802))))

(assert (=> d!1682805 true))

(assert (=> d!1682805 true))

(assert (=> d!1682805 true))

(declare-fun lambda!261886 () Int)

(assert (=> bs!1212180 (not (= lambda!261886 lambda!261806))))

(assert (=> bs!1212181 (not (= lambda!261886 lambda!261811))))

(assert (=> bs!1212182 (not (= lambda!261886 lambda!261767))))

(assert (=> bs!1212181 (= lambda!261886 lambda!261812)))

(assert (=> bs!1212182 (= lambda!261886 lambda!261768)))

(assert (=> bs!1212183 (= lambda!261886 lambda!261803)))

(assert (=> bs!1212184 (not (= lambda!261886 lambda!261867))))

(declare-fun bs!1212187 () Bool)

(assert (= bs!1212187 d!1682805))

(assert (=> bs!1212187 (not (= lambda!261886 lambda!261885))))

(assert (=> bs!1212185 (= (and (= (regOne!30126 r!7292) (regOne!30126 (regTwo!30127 r!7292))) (= (regTwo!30126 r!7292) (regTwo!30126 (regTwo!30127 r!7292)))) (= lambda!261886 lambda!261868))))

(assert (=> bs!1212186 (not (= lambda!261886 lambda!261802))))

(assert (=> d!1682805 true))

(assert (=> d!1682805 true))

(assert (=> d!1682805 true))

(assert (=> d!1682805 (= (Exists!1988 lambda!261885) (Exists!1988 lambda!261886))))

(assert (=> d!1682805 true))

(declare-fun _$90!1015 () Unit!152494)

(assert (=> d!1682805 (= (choose!38805 (regOne!30126 r!7292) (regTwo!30126 r!7292) s!2326) _$90!1015)))

(declare-fun m!6267242 () Bool)

(assert (=> bs!1212187 m!6267242))

(declare-fun m!6267244 () Bool)

(assert (=> bs!1212187 m!6267244))

(assert (=> d!1682311 d!1682805))

(assert (=> d!1682311 d!1682707))

(declare-fun d!1682807 () Bool)

(assert (=> d!1682807 (= (isConcat!292 lt!2143140) ((_ is Concat!23652) lt!2143140))))

(assert (=> b!5218090 d!1682807))

(declare-fun b!5219229 () Bool)

(declare-fun e!3248736 () (InoxSet Context!8382))

(declare-fun call!368237 () (InoxSet Context!8382))

(declare-fun call!368236 () (InoxSet Context!8382))

(assert (=> b!5219229 (= e!3248736 ((_ map or) call!368237 call!368236))))

(declare-fun bm!368230 () Bool)

(declare-fun call!368235 () List!60720)

(declare-fun call!368240 () List!60720)

(assert (=> bm!368230 (= call!368235 call!368240)))

(declare-fun b!5219230 () Bool)

(declare-fun e!3248734 () (InoxSet Context!8382))

(assert (=> b!5219230 (= e!3248734 ((as const (Array Context!8382 Bool)) false))))

(declare-fun bm!368231 () Bool)

(declare-fun call!368239 () (InoxSet Context!8382))

(assert (=> bm!368231 (= call!368236 call!368239)))

(declare-fun b!5219231 () Bool)

(declare-fun e!3248735 () (InoxSet Context!8382))

(declare-fun call!368238 () (InoxSet Context!8382))

(assert (=> b!5219231 (= e!3248735 call!368238)))

(declare-fun bm!368232 () Bool)

(declare-fun c!900602 () Bool)

(declare-fun c!900603 () Bool)

(assert (=> bm!368232 (= call!368240 ($colon$colon!1283 (exprs!4691 (ite (or c!900300 c!900299) lt!2143066 (Context!8383 call!368012))) (ite (or c!900603 c!900602) (regTwo!30126 (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343)))))))) (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343))))))))))))

(declare-fun bm!368233 () Bool)

(assert (=> bm!368233 (= call!368238 call!368236)))

(declare-fun b!5219232 () Bool)

(declare-fun e!3248733 () (InoxSet Context!8382))

(assert (=> b!5219232 (= e!3248733 ((_ map or) call!368239 call!368237))))

(declare-fun c!900601 () Bool)

(declare-fun d!1682809 () Bool)

(assert (=> d!1682809 (= c!900601 (and ((_ is ElementMatch!14807) (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343)))))))) (= (c!900134 (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343)))))))) (h!67045 s!2326))))))

(declare-fun e!3248738 () (InoxSet Context!8382))

(assert (=> d!1682809 (= (derivationStepZipperDown!255 (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343))))))) (ite (or c!900300 c!900299) lt!2143066 (Context!8383 call!368012)) (h!67045 s!2326)) e!3248738)))

(declare-fun b!5219233 () Bool)

(assert (=> b!5219233 (= e!3248736 e!3248735)))

(assert (=> b!5219233 (= c!900602 ((_ is Concat!23652) (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343)))))))))))

(declare-fun c!900604 () Bool)

(declare-fun bm!368234 () Bool)

(assert (=> bm!368234 (= call!368237 (derivationStepZipperDown!255 (ite c!900604 (regTwo!30127 (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343)))))))) (regOne!30126 (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343))))))))) (ite c!900604 (ite (or c!900300 c!900299) lt!2143066 (Context!8383 call!368012)) (Context!8383 call!368240)) (h!67045 s!2326)))))

(declare-fun b!5219234 () Bool)

(assert (=> b!5219234 (= e!3248734 call!368238)))

(declare-fun b!5219235 () Bool)

(assert (=> b!5219235 (= e!3248738 (store ((as const (Array Context!8382 Bool)) false) (ite (or c!900300 c!900299) lt!2143066 (Context!8383 call!368012)) true))))

(declare-fun bm!368235 () Bool)

(assert (=> bm!368235 (= call!368239 (derivationStepZipperDown!255 (ite c!900604 (regOne!30127 (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343)))))))) (ite c!900603 (regTwo!30126 (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343)))))))) (ite c!900602 (regOne!30126 (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343)))))))) (reg!15136 (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343))))))))))) (ite (or c!900604 c!900603) (ite (or c!900300 c!900299) lt!2143066 (Context!8383 call!368012)) (Context!8383 call!368235)) (h!67045 s!2326)))))

(declare-fun b!5219236 () Bool)

(declare-fun e!3248737 () Bool)

(assert (=> b!5219236 (= c!900603 e!3248737)))

(declare-fun res!2216238 () Bool)

(assert (=> b!5219236 (=> (not res!2216238) (not e!3248737))))

(assert (=> b!5219236 (= res!2216238 ((_ is Concat!23652) (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343)))))))))))

(assert (=> b!5219236 (= e!3248733 e!3248736)))

(declare-fun c!900605 () Bool)

(declare-fun b!5219237 () Bool)

(assert (=> b!5219237 (= c!900605 ((_ is Star!14807) (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343)))))))))))

(assert (=> b!5219237 (= e!3248735 e!3248734)))

(declare-fun b!5219238 () Bool)

(assert (=> b!5219238 (= e!3248738 e!3248733)))

(assert (=> b!5219238 (= c!900604 ((_ is Union!14807) (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343)))))))))))

(declare-fun b!5219239 () Bool)

(assert (=> b!5219239 (= e!3248737 (nullable!4976 (regOne!30126 (ite c!900300 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900299 (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (ite c!900298 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))) (reg!15136 (h!67044 (exprs!4691 (h!67046 zl!343))))))))))))

(assert (= (and d!1682809 c!900601) b!5219235))

(assert (= (and d!1682809 (not c!900601)) b!5219238))

(assert (= (and b!5219238 c!900604) b!5219232))

(assert (= (and b!5219238 (not c!900604)) b!5219236))

(assert (= (and b!5219236 res!2216238) b!5219239))

(assert (= (and b!5219236 c!900603) b!5219229))

(assert (= (and b!5219236 (not c!900603)) b!5219233))

(assert (= (and b!5219233 c!900602) b!5219231))

(assert (= (and b!5219233 (not c!900602)) b!5219237))

(assert (= (and b!5219237 c!900605) b!5219234))

(assert (= (and b!5219237 (not c!900605)) b!5219230))

(assert (= (or b!5219231 b!5219234) bm!368230))

(assert (= (or b!5219231 b!5219234) bm!368233))

(assert (= (or b!5219229 bm!368230) bm!368232))

(assert (= (or b!5219229 bm!368233) bm!368231))

(assert (= (or b!5219232 b!5219229) bm!368234))

(assert (= (or b!5219232 bm!368231) bm!368235))

(declare-fun m!6267246 () Bool)

(assert (=> b!5219239 m!6267246))

(declare-fun m!6267248 () Bool)

(assert (=> b!5219235 m!6267248))

(declare-fun m!6267250 () Bool)

(assert (=> bm!368234 m!6267250))

(declare-fun m!6267252 () Bool)

(assert (=> bm!368235 m!6267252))

(declare-fun m!6267254 () Bool)

(assert (=> bm!368232 m!6267254))

(assert (=> bm!368012 d!1682809))

(declare-fun d!1682811 () Bool)

(assert (=> d!1682811 (= (isEmpty!32514 (unfocusZipperList!249 zl!343)) ((_ is Nil!60596) (unfocusZipperList!249 zl!343)))))

(assert (=> b!5218241 d!1682811))

(declare-fun d!1682813 () Bool)

(declare-fun e!3248739 () Bool)

(assert (=> d!1682813 e!3248739))

(declare-fun res!2216240 () Bool)

(assert (=> d!1682813 (=> (not res!2216240) (not e!3248739))))

(declare-fun lt!2143199 () List!60721)

(assert (=> d!1682813 (= res!2216240 (= (content!10744 lt!2143199) ((_ map or) (content!10744 (_1!35309 (get!20822 lt!2143127))) (content!10744 (_2!35309 (get!20822 lt!2143127))))))))

(declare-fun e!3248740 () List!60721)

(assert (=> d!1682813 (= lt!2143199 e!3248740)))

(declare-fun c!900606 () Bool)

(assert (=> d!1682813 (= c!900606 ((_ is Nil!60597) (_1!35309 (get!20822 lt!2143127))))))

(assert (=> d!1682813 (= (++!13213 (_1!35309 (get!20822 lt!2143127)) (_2!35309 (get!20822 lt!2143127))) lt!2143199)))

(declare-fun b!5219242 () Bool)

(declare-fun res!2216239 () Bool)

(assert (=> b!5219242 (=> (not res!2216239) (not e!3248739))))

(assert (=> b!5219242 (= res!2216239 (= (size!39724 lt!2143199) (+ (size!39724 (_1!35309 (get!20822 lt!2143127))) (size!39724 (_2!35309 (get!20822 lt!2143127))))))))

(declare-fun b!5219243 () Bool)

(assert (=> b!5219243 (= e!3248739 (or (not (= (_2!35309 (get!20822 lt!2143127)) Nil!60597)) (= lt!2143199 (_1!35309 (get!20822 lt!2143127)))))))

(declare-fun b!5219241 () Bool)

(assert (=> b!5219241 (= e!3248740 (Cons!60597 (h!67045 (_1!35309 (get!20822 lt!2143127))) (++!13213 (t!373889 (_1!35309 (get!20822 lt!2143127))) (_2!35309 (get!20822 lt!2143127)))))))

(declare-fun b!5219240 () Bool)

(assert (=> b!5219240 (= e!3248740 (_2!35309 (get!20822 lt!2143127)))))

(assert (= (and d!1682813 c!900606) b!5219240))

(assert (= (and d!1682813 (not c!900606)) b!5219241))

(assert (= (and d!1682813 res!2216240) b!5219242))

(assert (= (and b!5219242 res!2216239) b!5219243))

(declare-fun m!6267256 () Bool)

(assert (=> d!1682813 m!6267256))

(declare-fun m!6267258 () Bool)

(assert (=> d!1682813 m!6267258))

(declare-fun m!6267260 () Bool)

(assert (=> d!1682813 m!6267260))

(declare-fun m!6267262 () Bool)

(assert (=> b!5219242 m!6267262))

(declare-fun m!6267264 () Bool)

(assert (=> b!5219242 m!6267264))

(declare-fun m!6267266 () Bool)

(assert (=> b!5219242 m!6267266))

(declare-fun m!6267268 () Bool)

(assert (=> b!5219241 m!6267268))

(assert (=> b!5218020 d!1682813))

(assert (=> b!5218020 d!1682657))

(assert (=> bm!367976 d!1682721))

(assert (=> d!1682309 d!1682299))

(declare-fun d!1682815 () Bool)

(assert (=> d!1682815 (= (Exists!1988 lambda!261806) (choose!38803 lambda!261806))))

(declare-fun bs!1212188 () Bool)

(assert (= bs!1212188 d!1682815))

(declare-fun m!6267270 () Bool)

(assert (=> bs!1212188 m!6267270))

(assert (=> d!1682309 d!1682815))

(assert (=> d!1682309 d!1682707))

(assert (=> d!1682309 d!1682313))

(declare-fun bs!1212189 () Bool)

(declare-fun d!1682817 () Bool)

(assert (= bs!1212189 (and d!1682817 d!1682309)))

(declare-fun lambda!261889 () Int)

(assert (=> bs!1212189 (= lambda!261889 lambda!261806)))

(declare-fun bs!1212190 () Bool)

(assert (= bs!1212190 (and d!1682817 d!1682311)))

(assert (=> bs!1212190 (= lambda!261889 lambda!261811)))

(declare-fun bs!1212191 () Bool)

(assert (= bs!1212191 (and d!1682817 b!5217507)))

(assert (=> bs!1212191 (= lambda!261889 lambda!261767)))

(assert (=> bs!1212190 (not (= lambda!261889 lambda!261812))))

(declare-fun bs!1212192 () Bool)

(assert (= bs!1212192 (and d!1682817 d!1682805)))

(assert (=> bs!1212192 (not (= lambda!261889 lambda!261886))))

(assert (=> bs!1212191 (not (= lambda!261889 lambda!261768))))

(declare-fun bs!1212193 () Bool)

(assert (= bs!1212193 (and d!1682817 b!5217803)))

(assert (=> bs!1212193 (not (= lambda!261889 lambda!261803))))

(declare-fun bs!1212194 () Bool)

(assert (= bs!1212194 (and d!1682817 b!5219012)))

(assert (=> bs!1212194 (not (= lambda!261889 lambda!261867))))

(assert (=> bs!1212192 (= lambda!261889 lambda!261885)))

(declare-fun bs!1212195 () Bool)

(assert (= bs!1212195 (and d!1682817 b!5219016)))

(assert (=> bs!1212195 (not (= lambda!261889 lambda!261868))))

(declare-fun bs!1212196 () Bool)

(assert (= bs!1212196 (and d!1682817 b!5217799)))

(assert (=> bs!1212196 (not (= lambda!261889 lambda!261802))))

(assert (=> d!1682817 true))

(assert (=> d!1682817 true))

(assert (=> d!1682817 true))

(assert (=> d!1682817 (= (isDefined!11621 (findConcatSeparation!1332 (regOne!30126 r!7292) (regTwo!30126 r!7292) Nil!60597 s!2326 s!2326)) (Exists!1988 lambda!261889))))

(assert (=> d!1682817 true))

(declare-fun _$89!1391 () Unit!152494)

(assert (=> d!1682817 (= (choose!38804 (regOne!30126 r!7292) (regTwo!30126 r!7292) s!2326) _$89!1391)))

(declare-fun bs!1212197 () Bool)

(assert (= bs!1212197 d!1682817))

(assert (=> bs!1212197 m!6265824))

(assert (=> bs!1212197 m!6265824))

(assert (=> bs!1212197 m!6265826))

(declare-fun m!6267272 () Bool)

(assert (=> bs!1212197 m!6267272))

(assert (=> d!1682309 d!1682817))

(assert (=> d!1682321 d!1682325))

(declare-fun d!1682819 () Bool)

(assert (=> d!1682819 (= (flatMap!534 z!1189 lambda!261769) (dynLambda!23942 lambda!261769 (h!67046 zl!343)))))

(assert (=> d!1682819 true))

(declare-fun _$13!1715 () Unit!152494)

(assert (=> d!1682819 (= (choose!38806 z!1189 (h!67046 zl!343) lambda!261769) _$13!1715)))

(declare-fun b_lambda!201819 () Bool)

(assert (=> (not b_lambda!201819) (not d!1682819)))

(declare-fun bs!1212198 () Bool)

(assert (= bs!1212198 d!1682819))

(assert (=> bs!1212198 m!6265794))

(assert (=> bs!1212198 m!6266188))

(assert (=> d!1682321 d!1682819))

(assert (=> b!5218246 d!1682319))

(declare-fun bs!1212199 () Bool)

(declare-fun d!1682821 () Bool)

(assert (= bs!1212199 (and d!1682821 d!1682371)))

(declare-fun lambda!261890 () Int)

(assert (=> bs!1212199 (= lambda!261890 lambda!261821)))

(declare-fun bs!1212200 () Bool)

(assert (= bs!1212200 (and d!1682821 d!1682373)))

(assert (=> bs!1212200 (= lambda!261890 lambda!261824)))

(declare-fun bs!1212201 () Bool)

(assert (= bs!1212201 (and d!1682821 d!1682375)))

(assert (=> bs!1212201 (= lambda!261890 lambda!261825)))

(declare-fun bs!1212202 () Bool)

(assert (= bs!1212202 (and d!1682821 d!1682737)))

(assert (=> bs!1212202 (= lambda!261890 lambda!261871)))

(declare-fun bs!1212203 () Bool)

(assert (= bs!1212203 (and d!1682821 d!1682787)))

(assert (=> bs!1212203 (= lambda!261890 lambda!261878)))

(declare-fun bs!1212204 () Bool)

(assert (= bs!1212204 (and d!1682821 d!1682653)))

(assert (=> bs!1212204 (= lambda!261890 lambda!261863)))

(declare-fun bs!1212205 () Bool)

(assert (= bs!1212205 (and d!1682821 d!1682319)))

(assert (=> bs!1212205 (= lambda!261890 lambda!261815)))

(declare-fun bs!1212206 () Bool)

(assert (= bs!1212206 (and d!1682821 d!1682369)))

(assert (=> bs!1212206 (= lambda!261890 lambda!261818)))

(declare-fun lt!2143200 () List!60720)

(assert (=> d!1682821 (forall!14241 lt!2143200 lambda!261890)))

(declare-fun e!3248743 () List!60720)

(assert (=> d!1682821 (= lt!2143200 e!3248743)))

(declare-fun c!900607 () Bool)

(assert (=> d!1682821 (= c!900607 ((_ is Cons!60598) (t!373890 zl!343)))))

(assert (=> d!1682821 (= (unfocusZipperList!249 (t!373890 zl!343)) lt!2143200)))

(declare-fun b!5219248 () Bool)

(assert (=> b!5219248 (= e!3248743 (Cons!60596 (generalisedConcat!476 (exprs!4691 (h!67046 (t!373890 zl!343)))) (unfocusZipperList!249 (t!373890 (t!373890 zl!343)))))))

(declare-fun b!5219249 () Bool)

(assert (=> b!5219249 (= e!3248743 Nil!60596)))

(assert (= (and d!1682821 c!900607) b!5219248))

(assert (= (and d!1682821 (not c!900607)) b!5219249))

(declare-fun m!6267274 () Bool)

(assert (=> d!1682821 m!6267274))

(declare-fun m!6267276 () Bool)

(assert (=> b!5219248 m!6267276))

(declare-fun m!6267278 () Bool)

(assert (=> b!5219248 m!6267278))

(assert (=> b!5218246 d!1682821))

(declare-fun d!1682823 () Bool)

(assert (=> d!1682823 (= (nullable!4976 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343))))) (nullableFct!1385 (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343))))))))

(declare-fun bs!1212207 () Bool)

(assert (= bs!1212207 d!1682823))

(declare-fun m!6267280 () Bool)

(assert (=> bs!1212207 m!6267280))

(assert (=> b!5218127 d!1682823))

(declare-fun d!1682825 () Bool)

(declare-fun res!2216245 () Bool)

(declare-fun e!3248744 () Bool)

(assert (=> d!1682825 (=> res!2216245 e!3248744)))

(assert (=> d!1682825 (= res!2216245 ((_ is Nil!60596) lt!2143157))))

(assert (=> d!1682825 (= (forall!14241 lt!2143157 lambda!261824) e!3248744)))

(declare-fun b!5219250 () Bool)

(declare-fun e!3248745 () Bool)

(assert (=> b!5219250 (= e!3248744 e!3248745)))

(declare-fun res!2216246 () Bool)

(assert (=> b!5219250 (=> (not res!2216246) (not e!3248745))))

(assert (=> b!5219250 (= res!2216246 (dynLambda!23944 lambda!261824 (h!67044 lt!2143157)))))

(declare-fun b!5219251 () Bool)

(assert (=> b!5219251 (= e!3248745 (forall!14241 (t!373888 lt!2143157) lambda!261824))))

(assert (= (and d!1682825 (not res!2216245)) b!5219250))

(assert (= (and b!5219250 res!2216246) b!5219251))

(declare-fun b_lambda!201821 () Bool)

(assert (=> (not b_lambda!201821) (not b!5219250)))

(declare-fun m!6267282 () Bool)

(assert (=> b!5219250 m!6267282))

(declare-fun m!6267284 () Bool)

(assert (=> b!5219251 m!6267284))

(assert (=> d!1682373 d!1682825))

(declare-fun b!5219266 () Bool)

(declare-fun e!3248762 () Bool)

(declare-fun e!3248758 () Bool)

(assert (=> b!5219266 (= e!3248762 e!3248758)))

(declare-fun c!900610 () Bool)

(assert (=> b!5219266 (= c!900610 ((_ is Union!14807) (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun b!5219267 () Bool)

(declare-fun e!3248759 () Bool)

(assert (=> b!5219267 (= e!3248758 e!3248759)))

(declare-fun res!2216258 () Bool)

(declare-fun call!368245 () Bool)

(assert (=> b!5219267 (= res!2216258 call!368245)))

(assert (=> b!5219267 (=> (not res!2216258) (not e!3248759))))

(declare-fun b!5219268 () Bool)

(declare-fun e!3248760 () Bool)

(assert (=> b!5219268 (= e!3248760 e!3248762)))

(declare-fun res!2216260 () Bool)

(assert (=> b!5219268 (=> res!2216260 e!3248762)))

(assert (=> b!5219268 (= res!2216260 ((_ is Star!14807) (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun d!1682827 () Bool)

(declare-fun res!2216257 () Bool)

(declare-fun e!3248763 () Bool)

(assert (=> d!1682827 (=> res!2216257 e!3248763)))

(assert (=> d!1682827 (= res!2216257 ((_ is EmptyExpr!14807) (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(assert (=> d!1682827 (= (nullableFct!1385 (h!67044 (exprs!4691 (h!67046 zl!343)))) e!3248763)))

(declare-fun b!5219269 () Bool)

(declare-fun call!368246 () Bool)

(assert (=> b!5219269 (= e!3248759 call!368246)))

(declare-fun bm!368240 () Bool)

(assert (=> bm!368240 (= call!368246 (nullable!4976 (ite c!900610 (regTwo!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regTwo!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))))))))

(declare-fun bm!368241 () Bool)

(assert (=> bm!368241 (= call!368245 (nullable!4976 (ite c!900610 (regOne!30127 (h!67044 (exprs!4691 (h!67046 zl!343)))) (regOne!30126 (h!67044 (exprs!4691 (h!67046 zl!343)))))))))

(declare-fun b!5219270 () Bool)

(declare-fun e!3248761 () Bool)

(assert (=> b!5219270 (= e!3248761 call!368246)))

(declare-fun b!5219271 () Bool)

(assert (=> b!5219271 (= e!3248758 e!3248761)))

(declare-fun res!2216259 () Bool)

(assert (=> b!5219271 (= res!2216259 call!368245)))

(assert (=> b!5219271 (=> res!2216259 e!3248761)))

(declare-fun b!5219272 () Bool)

(assert (=> b!5219272 (= e!3248763 e!3248760)))

(declare-fun res!2216261 () Bool)

(assert (=> b!5219272 (=> (not res!2216261) (not e!3248760))))

(assert (=> b!5219272 (= res!2216261 (and (not ((_ is EmptyLang!14807) (h!67044 (exprs!4691 (h!67046 zl!343))))) (not ((_ is ElementMatch!14807) (h!67044 (exprs!4691 (h!67046 zl!343)))))))))

(assert (= (and d!1682827 (not res!2216257)) b!5219272))

(assert (= (and b!5219272 res!2216261) b!5219268))

(assert (= (and b!5219268 (not res!2216260)) b!5219266))

(assert (= (and b!5219266 c!900610) b!5219271))

(assert (= (and b!5219266 (not c!900610)) b!5219267))

(assert (= (and b!5219271 (not res!2216259)) b!5219270))

(assert (= (and b!5219267 res!2216258) b!5219269))

(assert (= (or b!5219270 b!5219269) bm!368240))

(assert (= (or b!5219271 b!5219267) bm!368241))

(declare-fun m!6267286 () Bool)

(assert (=> bm!368240 m!6267286))

(declare-fun m!6267288 () Bool)

(assert (=> bm!368241 m!6267288))

(assert (=> d!1682327 d!1682827))

(declare-fun b!5219273 () Bool)

(declare-fun e!3248767 () (InoxSet Context!8382))

(declare-fun call!368249 () (InoxSet Context!8382))

(declare-fun call!368248 () (InoxSet Context!8382))

(assert (=> b!5219273 (= e!3248767 ((_ map or) call!368249 call!368248))))

(declare-fun bm!368242 () Bool)

(declare-fun call!368247 () List!60720)

(declare-fun call!368252 () List!60720)

(assert (=> bm!368242 (= call!368247 call!368252)))

(declare-fun b!5219274 () Bool)

(declare-fun e!3248765 () (InoxSet Context!8382))

(assert (=> b!5219274 (= e!3248765 ((as const (Array Context!8382 Bool)) false))))

(declare-fun bm!368243 () Bool)

(declare-fun call!368251 () (InoxSet Context!8382))

(assert (=> bm!368243 (= call!368248 call!368251)))

(declare-fun b!5219275 () Bool)

(declare-fun e!3248766 () (InoxSet Context!8382))

(declare-fun call!368250 () (InoxSet Context!8382))

(assert (=> b!5219275 (= e!3248766 call!368250)))

(declare-fun bm!368244 () Bool)

(declare-fun c!900612 () Bool)

(declare-fun c!900613 () Bool)

(assert (=> bm!368244 (= call!368252 ($colon$colon!1283 (exprs!4691 (ite (or c!900315 c!900314) lt!2143066 (Context!8383 call!368023))) (ite (or c!900613 c!900612) (regTwo!30126 (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292))))))) (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292)))))))))))

(declare-fun bm!368245 () Bool)

(assert (=> bm!368245 (= call!368250 call!368248)))

(declare-fun b!5219276 () Bool)

(declare-fun e!3248764 () (InoxSet Context!8382))

(assert (=> b!5219276 (= e!3248764 ((_ map or) call!368251 call!368249))))

(declare-fun c!900611 () Bool)

(declare-fun d!1682829 () Bool)

(assert (=> d!1682829 (= c!900611 (and ((_ is ElementMatch!14807) (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292))))))) (= (c!900134 (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292))))))) (h!67045 s!2326))))))

(declare-fun e!3248769 () (InoxSet Context!8382))

(assert (=> d!1682829 (= (derivationStepZipperDown!255 (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292)))))) (ite (or c!900315 c!900314) lt!2143066 (Context!8383 call!368023)) (h!67045 s!2326)) e!3248769)))

(declare-fun b!5219277 () Bool)

(assert (=> b!5219277 (= e!3248767 e!3248766)))

(assert (=> b!5219277 (= c!900612 ((_ is Concat!23652) (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292))))))))))

(declare-fun bm!368246 () Bool)

(declare-fun c!900614 () Bool)

(assert (=> bm!368246 (= call!368249 (derivationStepZipperDown!255 (ite c!900614 (regTwo!30127 (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292))))))) (regOne!30126 (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292)))))))) (ite c!900614 (ite (or c!900315 c!900314) lt!2143066 (Context!8383 call!368023)) (Context!8383 call!368252)) (h!67045 s!2326)))))

(declare-fun b!5219278 () Bool)

(assert (=> b!5219278 (= e!3248765 call!368250)))

(declare-fun b!5219279 () Bool)

(assert (=> b!5219279 (= e!3248769 (store ((as const (Array Context!8382 Bool)) false) (ite (or c!900315 c!900314) lt!2143066 (Context!8383 call!368023)) true))))

(declare-fun bm!368247 () Bool)

(assert (=> bm!368247 (= call!368251 (derivationStepZipperDown!255 (ite c!900614 (regOne!30127 (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292))))))) (ite c!900613 (regTwo!30126 (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292))))))) (ite c!900612 (regOne!30126 (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292))))))) (reg!15136 (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292)))))))))) (ite (or c!900614 c!900613) (ite (or c!900315 c!900314) lt!2143066 (Context!8383 call!368023)) (Context!8383 call!368247)) (h!67045 s!2326)))))

(declare-fun b!5219280 () Bool)

(declare-fun e!3248768 () Bool)

(assert (=> b!5219280 (= c!900613 e!3248768)))

(declare-fun res!2216262 () Bool)

(assert (=> b!5219280 (=> (not res!2216262) (not e!3248768))))

(assert (=> b!5219280 (= res!2216262 ((_ is Concat!23652) (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292))))))))))

(assert (=> b!5219280 (= e!3248764 e!3248767)))

(declare-fun b!5219281 () Bool)

(declare-fun c!900615 () Bool)

(assert (=> b!5219281 (= c!900615 ((_ is Star!14807) (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292))))))))))

(assert (=> b!5219281 (= e!3248766 e!3248765)))

(declare-fun b!5219282 () Bool)

(assert (=> b!5219282 (= e!3248769 e!3248764)))

(assert (=> b!5219282 (= c!900614 ((_ is Union!14807) (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292))))))))))

(declare-fun b!5219283 () Bool)

(assert (=> b!5219283 (= e!3248768 (nullable!4976 (regOne!30126 (ite c!900315 (regOne!30127 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900314 (regTwo!30126 (regTwo!30127 (regOne!30126 r!7292))) (ite c!900313 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292))) (reg!15136 (regTwo!30127 (regOne!30126 r!7292)))))))))))

(assert (= (and d!1682829 c!900611) b!5219279))

(assert (= (and d!1682829 (not c!900611)) b!5219282))

(assert (= (and b!5219282 c!900614) b!5219276))

(assert (= (and b!5219282 (not c!900614)) b!5219280))

(assert (= (and b!5219280 res!2216262) b!5219283))

(assert (= (and b!5219280 c!900613) b!5219273))

(assert (= (and b!5219280 (not c!900613)) b!5219277))

(assert (= (and b!5219277 c!900612) b!5219275))

(assert (= (and b!5219277 (not c!900612)) b!5219281))

(assert (= (and b!5219281 c!900615) b!5219278))

(assert (= (and b!5219281 (not c!900615)) b!5219274))

(assert (= (or b!5219275 b!5219278) bm!368242))

(assert (= (or b!5219275 b!5219278) bm!368245))

(assert (= (or b!5219273 bm!368242) bm!368244))

(assert (= (or b!5219273 bm!368245) bm!368243))

(assert (= (or b!5219276 b!5219273) bm!368246))

(assert (= (or b!5219276 bm!368243) bm!368247))

(declare-fun m!6267290 () Bool)

(assert (=> b!5219283 m!6267290))

(declare-fun m!6267292 () Bool)

(assert (=> b!5219279 m!6267292))

(declare-fun m!6267294 () Bool)

(assert (=> bm!368246 m!6267294))

(declare-fun m!6267296 () Bool)

(assert (=> bm!368247 m!6267296))

(declare-fun m!6267298 () Bool)

(assert (=> bm!368244 m!6267298))

(assert (=> bm!368023 d!1682829))

(declare-fun b!5219284 () Bool)

(declare-fun e!3248770 () (InoxSet Context!8382))

(declare-fun e!3248771 () (InoxSet Context!8382))

(assert (=> b!5219284 (= e!3248770 e!3248771)))

(declare-fun c!900617 () Bool)

(assert (=> b!5219284 (= c!900617 ((_ is Cons!60596) (exprs!4691 (Context!8383 (t!373888 (exprs!4691 lt!2143059))))))))

(declare-fun bm!368248 () Bool)

(declare-fun call!368253 () (InoxSet Context!8382))

(assert (=> bm!368248 (= call!368253 (derivationStepZipperDown!255 (h!67044 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 lt!2143059))))) (Context!8383 (t!373888 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 lt!2143059)))))) (h!67045 s!2326)))))

(declare-fun b!5219285 () Bool)

(assert (=> b!5219285 (= e!3248771 ((as const (Array Context!8382 Bool)) false))))

(declare-fun b!5219286 () Bool)

(assert (=> b!5219286 (= e!3248770 ((_ map or) call!368253 (derivationStepZipperUp!179 (Context!8383 (t!373888 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 lt!2143059)))))) (h!67045 s!2326))))))

(declare-fun b!5219287 () Bool)

(declare-fun e!3248772 () Bool)

(assert (=> b!5219287 (= e!3248772 (nullable!4976 (h!67044 (exprs!4691 (Context!8383 (t!373888 (exprs!4691 lt!2143059)))))))))

(declare-fun d!1682831 () Bool)

(declare-fun c!900616 () Bool)

(assert (=> d!1682831 (= c!900616 e!3248772)))

(declare-fun res!2216263 () Bool)

(assert (=> d!1682831 (=> (not res!2216263) (not e!3248772))))

(assert (=> d!1682831 (= res!2216263 ((_ is Cons!60596) (exprs!4691 (Context!8383 (t!373888 (exprs!4691 lt!2143059))))))))

(assert (=> d!1682831 (= (derivationStepZipperUp!179 (Context!8383 (t!373888 (exprs!4691 lt!2143059))) (h!67045 s!2326)) e!3248770)))

(declare-fun b!5219288 () Bool)

(assert (=> b!5219288 (= e!3248771 call!368253)))

(assert (= (and d!1682831 res!2216263) b!5219287))

(assert (= (and d!1682831 c!900616) b!5219286))

(assert (= (and d!1682831 (not c!900616)) b!5219284))

(assert (= (and b!5219284 c!900617) b!5219288))

(assert (= (and b!5219284 (not c!900617)) b!5219285))

(assert (= (or b!5219286 b!5219288) bm!368248))

(declare-fun m!6267300 () Bool)

(assert (=> bm!368248 m!6267300))

(declare-fun m!6267302 () Bool)

(assert (=> b!5219286 m!6267302))

(declare-fun m!6267304 () Bool)

(assert (=> b!5219287 m!6267304))

(assert (=> b!5218207 d!1682831))

(declare-fun b!5219289 () Bool)

(declare-fun e!3248777 () Bool)

(declare-fun e!3248773 () Bool)

(assert (=> b!5219289 (= e!3248777 e!3248773)))

(declare-fun c!900618 () Bool)

(assert (=> b!5219289 (= c!900618 ((_ is Union!14807) (regOne!30127 (regOne!30126 r!7292))))))

(declare-fun b!5219290 () Bool)

(declare-fun e!3248774 () Bool)

(assert (=> b!5219290 (= e!3248773 e!3248774)))

(declare-fun res!2216265 () Bool)

(declare-fun call!368254 () Bool)

(assert (=> b!5219290 (= res!2216265 call!368254)))

(assert (=> b!5219290 (=> (not res!2216265) (not e!3248774))))

(declare-fun b!5219291 () Bool)

(declare-fun e!3248775 () Bool)

(assert (=> b!5219291 (= e!3248775 e!3248777)))

(declare-fun res!2216267 () Bool)

(assert (=> b!5219291 (=> res!2216267 e!3248777)))

(assert (=> b!5219291 (= res!2216267 ((_ is Star!14807) (regOne!30127 (regOne!30126 r!7292))))))

(declare-fun d!1682833 () Bool)

(declare-fun res!2216264 () Bool)

(declare-fun e!3248778 () Bool)

(assert (=> d!1682833 (=> res!2216264 e!3248778)))

(assert (=> d!1682833 (= res!2216264 ((_ is EmptyExpr!14807) (regOne!30127 (regOne!30126 r!7292))))))

(assert (=> d!1682833 (= (nullableFct!1385 (regOne!30127 (regOne!30126 r!7292))) e!3248778)))

(declare-fun b!5219292 () Bool)

(declare-fun call!368255 () Bool)

(assert (=> b!5219292 (= e!3248774 call!368255)))

(declare-fun bm!368249 () Bool)

(assert (=> bm!368249 (= call!368255 (nullable!4976 (ite c!900618 (regTwo!30127 (regOne!30127 (regOne!30126 r!7292))) (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))))))))

(declare-fun bm!368250 () Bool)

(assert (=> bm!368250 (= call!368254 (nullable!4976 (ite c!900618 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (regOne!30126 (regOne!30127 (regOne!30126 r!7292))))))))

(declare-fun b!5219293 () Bool)

(declare-fun e!3248776 () Bool)

(assert (=> b!5219293 (= e!3248776 call!368255)))

(declare-fun b!5219294 () Bool)

(assert (=> b!5219294 (= e!3248773 e!3248776)))

(declare-fun res!2216266 () Bool)

(assert (=> b!5219294 (= res!2216266 call!368254)))

(assert (=> b!5219294 (=> res!2216266 e!3248776)))

(declare-fun b!5219295 () Bool)

(assert (=> b!5219295 (= e!3248778 e!3248775)))

(declare-fun res!2216268 () Bool)

(assert (=> b!5219295 (=> (not res!2216268) (not e!3248775))))

(assert (=> b!5219295 (= res!2216268 (and (not ((_ is EmptyLang!14807) (regOne!30127 (regOne!30126 r!7292)))) (not ((_ is ElementMatch!14807) (regOne!30127 (regOne!30126 r!7292))))))))

(assert (= (and d!1682833 (not res!2216264)) b!5219295))

(assert (= (and b!5219295 res!2216268) b!5219291))

(assert (= (and b!5219291 (not res!2216267)) b!5219289))

(assert (= (and b!5219289 c!900618) b!5219294))

(assert (= (and b!5219289 (not c!900618)) b!5219290))

(assert (= (and b!5219294 (not res!2216266)) b!5219293))

(assert (= (and b!5219290 res!2216265) b!5219292))

(assert (= (or b!5219293 b!5219292) bm!368249))

(assert (= (or b!5219294 b!5219290) bm!368250))

(declare-fun m!6267306 () Bool)

(assert (=> bm!368249 m!6267306))

(declare-fun m!6267308 () Bool)

(assert (=> bm!368250 m!6267308))

(assert (=> d!1682359 d!1682833))

(declare-fun d!1682835 () Bool)

(declare-fun c!900621 () Bool)

(assert (=> d!1682835 (= c!900621 ((_ is Nil!60598) lt!2143149))))

(declare-fun e!3248781 () (InoxSet Context!8382))

(assert (=> d!1682835 (= (content!10742 lt!2143149) e!3248781)))

(declare-fun b!5219300 () Bool)

(assert (=> b!5219300 (= e!3248781 ((as const (Array Context!8382 Bool)) false))))

(declare-fun b!5219301 () Bool)

(assert (=> b!5219301 (= e!3248781 ((_ map or) (store ((as const (Array Context!8382 Bool)) false) (h!67046 lt!2143149) true) (content!10742 (t!373890 lt!2143149))))))

(assert (= (and d!1682835 c!900621) b!5219300))

(assert (= (and d!1682835 (not c!900621)) b!5219301))

(declare-fun m!6267310 () Bool)

(assert (=> b!5219301 m!6267310))

(declare-fun m!6267312 () Bool)

(assert (=> b!5219301 m!6267312))

(assert (=> b!5218190 d!1682835))

(declare-fun b!5219302 () Bool)

(declare-fun e!3248783 () Bool)

(declare-fun e!3248784 () Bool)

(assert (=> b!5219302 (= e!3248783 e!3248784)))

(declare-fun res!2216272 () Bool)

(assert (=> b!5219302 (=> (not res!2216272) (not e!3248784))))

(declare-fun call!368258 () Bool)

(assert (=> b!5219302 (= res!2216272 call!368258)))

(declare-fun b!5219303 () Bool)

(declare-fun e!3248782 () Bool)

(declare-fun call!368256 () Bool)

(assert (=> b!5219303 (= e!3248782 call!368256)))

(declare-fun c!900622 () Bool)

(declare-fun c!900623 () Bool)

(declare-fun bm!368251 () Bool)

(assert (=> bm!368251 (= call!368256 (validRegex!6543 (ite c!900623 (reg!15136 lt!2143140) (ite c!900622 (regTwo!30127 lt!2143140) (regTwo!30126 lt!2143140)))))))

(declare-fun b!5219304 () Bool)

(declare-fun e!3248787 () Bool)

(declare-fun e!3248786 () Bool)

(assert (=> b!5219304 (= e!3248787 e!3248786)))

(assert (=> b!5219304 (= c!900623 ((_ is Star!14807) lt!2143140))))

(declare-fun bm!368252 () Bool)

(assert (=> bm!368252 (= call!368258 (validRegex!6543 (ite c!900622 (regOne!30127 lt!2143140) (regOne!30126 lt!2143140))))))

(declare-fun bm!368253 () Bool)

(declare-fun call!368257 () Bool)

(assert (=> bm!368253 (= call!368257 call!368256)))

(declare-fun b!5219305 () Bool)

(assert (=> b!5219305 (= e!3248784 call!368257)))

(declare-fun b!5219306 () Bool)

(declare-fun res!2216273 () Bool)

(assert (=> b!5219306 (=> res!2216273 e!3248783)))

(assert (=> b!5219306 (= res!2216273 (not ((_ is Concat!23652) lt!2143140)))))

(declare-fun e!3248788 () Bool)

(assert (=> b!5219306 (= e!3248788 e!3248783)))

(declare-fun d!1682837 () Bool)

(declare-fun res!2216269 () Bool)

(assert (=> d!1682837 (=> res!2216269 e!3248787)))

(assert (=> d!1682837 (= res!2216269 ((_ is ElementMatch!14807) lt!2143140))))

(assert (=> d!1682837 (= (validRegex!6543 lt!2143140) e!3248787)))

(declare-fun b!5219307 () Bool)

(declare-fun e!3248785 () Bool)

(assert (=> b!5219307 (= e!3248785 call!368257)))

(declare-fun b!5219308 () Bool)

(assert (=> b!5219308 (= e!3248786 e!3248782)))

(declare-fun res!2216271 () Bool)

(assert (=> b!5219308 (= res!2216271 (not (nullable!4976 (reg!15136 lt!2143140))))))

(assert (=> b!5219308 (=> (not res!2216271) (not e!3248782))))

(declare-fun b!5219309 () Bool)

(assert (=> b!5219309 (= e!3248786 e!3248788)))

(assert (=> b!5219309 (= c!900622 ((_ is Union!14807) lt!2143140))))

(declare-fun b!5219310 () Bool)

(declare-fun res!2216270 () Bool)

(assert (=> b!5219310 (=> (not res!2216270) (not e!3248785))))

(assert (=> b!5219310 (= res!2216270 call!368258)))

(assert (=> b!5219310 (= e!3248788 e!3248785)))

(assert (= (and d!1682837 (not res!2216269)) b!5219304))

(assert (= (and b!5219304 c!900623) b!5219308))

(assert (= (and b!5219304 (not c!900623)) b!5219309))

(assert (= (and b!5219308 res!2216271) b!5219303))

(assert (= (and b!5219309 c!900622) b!5219310))

(assert (= (and b!5219309 (not c!900622)) b!5219306))

(assert (= (and b!5219310 res!2216270) b!5219307))

(assert (= (and b!5219306 (not res!2216273)) b!5219302))

(assert (= (and b!5219302 res!2216272) b!5219305))

(assert (= (or b!5219307 b!5219305) bm!368253))

(assert (= (or b!5219310 b!5219302) bm!368252))

(assert (= (or b!5219303 bm!368253) bm!368251))

(declare-fun m!6267314 () Bool)

(assert (=> bm!368251 m!6267314))

(declare-fun m!6267316 () Bool)

(assert (=> bm!368252 m!6267316))

(declare-fun m!6267318 () Bool)

(assert (=> b!5219308 m!6267318))

(assert (=> d!1682319 d!1682837))

(declare-fun d!1682839 () Bool)

(declare-fun res!2216274 () Bool)

(declare-fun e!3248789 () Bool)

(assert (=> d!1682839 (=> res!2216274 e!3248789)))

(assert (=> d!1682839 (= res!2216274 ((_ is Nil!60596) (exprs!4691 (h!67046 zl!343))))))

(assert (=> d!1682839 (= (forall!14241 (exprs!4691 (h!67046 zl!343)) lambda!261815) e!3248789)))

(declare-fun b!5219311 () Bool)

(declare-fun e!3248790 () Bool)

(assert (=> b!5219311 (= e!3248789 e!3248790)))

(declare-fun res!2216275 () Bool)

(assert (=> b!5219311 (=> (not res!2216275) (not e!3248790))))

(assert (=> b!5219311 (= res!2216275 (dynLambda!23944 lambda!261815 (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun b!5219312 () Bool)

(assert (=> b!5219312 (= e!3248790 (forall!14241 (t!373888 (exprs!4691 (h!67046 zl!343))) lambda!261815))))

(assert (= (and d!1682839 (not res!2216274)) b!5219311))

(assert (= (and b!5219311 res!2216275) b!5219312))

(declare-fun b_lambda!201823 () Bool)

(assert (=> (not b_lambda!201823) (not b!5219311)))

(declare-fun m!6267320 () Bool)

(assert (=> b!5219311 m!6267320))

(declare-fun m!6267322 () Bool)

(assert (=> b!5219312 m!6267322))

(assert (=> d!1682319 d!1682839))

(declare-fun b!5219313 () Bool)

(declare-fun e!3248792 () Bool)

(declare-fun e!3248793 () Bool)

(assert (=> b!5219313 (= e!3248792 e!3248793)))

(declare-fun res!2216279 () Bool)

(assert (=> b!5219313 (=> (not res!2216279) (not e!3248793))))

(declare-fun call!368261 () Bool)

(assert (=> b!5219313 (= res!2216279 call!368261)))

(declare-fun b!5219314 () Bool)

(declare-fun e!3248791 () Bool)

(declare-fun call!368259 () Bool)

(assert (=> b!5219314 (= e!3248791 call!368259)))

(declare-fun bm!368254 () Bool)

(declare-fun c!900625 () Bool)

(declare-fun c!900624 () Bool)

(assert (=> bm!368254 (= call!368259 (validRegex!6543 (ite c!900625 (reg!15136 lt!2143154) (ite c!900624 (regTwo!30127 lt!2143154) (regTwo!30126 lt!2143154)))))))

(declare-fun b!5219315 () Bool)

(declare-fun e!3248796 () Bool)

(declare-fun e!3248795 () Bool)

(assert (=> b!5219315 (= e!3248796 e!3248795)))

(assert (=> b!5219315 (= c!900625 ((_ is Star!14807) lt!2143154))))

(declare-fun bm!368255 () Bool)

(assert (=> bm!368255 (= call!368261 (validRegex!6543 (ite c!900624 (regOne!30127 lt!2143154) (regOne!30126 lt!2143154))))))

(declare-fun bm!368256 () Bool)

(declare-fun call!368260 () Bool)

(assert (=> bm!368256 (= call!368260 call!368259)))

(declare-fun b!5219316 () Bool)

(assert (=> b!5219316 (= e!3248793 call!368260)))

(declare-fun b!5219317 () Bool)

(declare-fun res!2216280 () Bool)

(assert (=> b!5219317 (=> res!2216280 e!3248792)))

(assert (=> b!5219317 (= res!2216280 (not ((_ is Concat!23652) lt!2143154)))))

(declare-fun e!3248797 () Bool)

(assert (=> b!5219317 (= e!3248797 e!3248792)))

(declare-fun d!1682841 () Bool)

(declare-fun res!2216276 () Bool)

(assert (=> d!1682841 (=> res!2216276 e!3248796)))

(assert (=> d!1682841 (= res!2216276 ((_ is ElementMatch!14807) lt!2143154))))

(assert (=> d!1682841 (= (validRegex!6543 lt!2143154) e!3248796)))

(declare-fun b!5219318 () Bool)

(declare-fun e!3248794 () Bool)

(assert (=> b!5219318 (= e!3248794 call!368260)))

(declare-fun b!5219319 () Bool)

(assert (=> b!5219319 (= e!3248795 e!3248791)))

(declare-fun res!2216278 () Bool)

(assert (=> b!5219319 (= res!2216278 (not (nullable!4976 (reg!15136 lt!2143154))))))

(assert (=> b!5219319 (=> (not res!2216278) (not e!3248791))))

(declare-fun b!5219320 () Bool)

(assert (=> b!5219320 (= e!3248795 e!3248797)))

(assert (=> b!5219320 (= c!900624 ((_ is Union!14807) lt!2143154))))

(declare-fun b!5219321 () Bool)

(declare-fun res!2216277 () Bool)

(assert (=> b!5219321 (=> (not res!2216277) (not e!3248794))))

(assert (=> b!5219321 (= res!2216277 call!368261)))

(assert (=> b!5219321 (= e!3248797 e!3248794)))

(assert (= (and d!1682841 (not res!2216276)) b!5219315))

(assert (= (and b!5219315 c!900625) b!5219319))

(assert (= (and b!5219315 (not c!900625)) b!5219320))

(assert (= (and b!5219319 res!2216278) b!5219314))

(assert (= (and b!5219320 c!900624) b!5219321))

(assert (= (and b!5219320 (not c!900624)) b!5219317))

(assert (= (and b!5219321 res!2216277) b!5219318))

(assert (= (and b!5219317 (not res!2216280)) b!5219313))

(assert (= (and b!5219313 res!2216279) b!5219316))

(assert (= (or b!5219318 b!5219316) bm!368256))

(assert (= (or b!5219321 b!5219313) bm!368255))

(assert (= (or b!5219314 bm!368256) bm!368254))

(declare-fun m!6267324 () Bool)

(assert (=> bm!368254 m!6267324))

(declare-fun m!6267326 () Bool)

(assert (=> bm!368255 m!6267326))

(declare-fun m!6267328 () Bool)

(assert (=> b!5219319 m!6267328))

(assert (=> d!1682371 d!1682841))

(declare-fun d!1682843 () Bool)

(declare-fun res!2216281 () Bool)

(declare-fun e!3248798 () Bool)

(assert (=> d!1682843 (=> res!2216281 e!3248798)))

(assert (=> d!1682843 (= res!2216281 ((_ is Nil!60596) (unfocusZipperList!249 zl!343)))))

(assert (=> d!1682843 (= (forall!14241 (unfocusZipperList!249 zl!343) lambda!261821) e!3248798)))

(declare-fun b!5219322 () Bool)

(declare-fun e!3248799 () Bool)

(assert (=> b!5219322 (= e!3248798 e!3248799)))

(declare-fun res!2216282 () Bool)

(assert (=> b!5219322 (=> (not res!2216282) (not e!3248799))))

(assert (=> b!5219322 (= res!2216282 (dynLambda!23944 lambda!261821 (h!67044 (unfocusZipperList!249 zl!343))))))

(declare-fun b!5219323 () Bool)

(assert (=> b!5219323 (= e!3248799 (forall!14241 (t!373888 (unfocusZipperList!249 zl!343)) lambda!261821))))

(assert (= (and d!1682843 (not res!2216281)) b!5219322))

(assert (= (and b!5219322 res!2216282) b!5219323))

(declare-fun b_lambda!201825 () Bool)

(assert (=> (not b_lambda!201825) (not b!5219322)))

(declare-fun m!6267330 () Bool)

(assert (=> b!5219322 m!6267330))

(declare-fun m!6267332 () Bool)

(assert (=> b!5219323 m!6267332))

(assert (=> d!1682371 d!1682843))

(declare-fun b!5219324 () Bool)

(declare-fun e!3248803 () (InoxSet Context!8382))

(declare-fun call!368264 () (InoxSet Context!8382))

(declare-fun call!368263 () (InoxSet Context!8382))

(assert (=> b!5219324 (= e!3248803 ((_ map or) call!368264 call!368263))))

(declare-fun bm!368257 () Bool)

(declare-fun call!368262 () List!60720)

(declare-fun call!368267 () List!60720)

(assert (=> bm!368257 (= call!368262 call!368267)))

(declare-fun b!5219325 () Bool)

(declare-fun e!3248801 () (InoxSet Context!8382))

(assert (=> b!5219325 (= e!3248801 ((as const (Array Context!8382 Bool)) false))))

(declare-fun bm!368258 () Bool)

(declare-fun call!368266 () (InoxSet Context!8382))

(assert (=> bm!368258 (= call!368263 call!368266)))

(declare-fun b!5219326 () Bool)

(declare-fun e!3248802 () (InoxSet Context!8382))

(declare-fun call!368265 () (InoxSet Context!8382))

(assert (=> b!5219326 (= e!3248802 call!368265)))

(declare-fun c!900627 () Bool)

(declare-fun bm!368259 () Bool)

(declare-fun c!900628 () Bool)

(assert (=> bm!368259 (= call!368267 ($colon$colon!1283 (exprs!4691 (ite (or c!900320 c!900319) lt!2143066 (Context!8383 call!368029))) (ite (or c!900628 c!900627) (regTwo!30126 (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292))))))) (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292)))))))))))

(declare-fun bm!368260 () Bool)

(assert (=> bm!368260 (= call!368265 call!368263)))

(declare-fun b!5219327 () Bool)

(declare-fun e!3248800 () (InoxSet Context!8382))

(assert (=> b!5219327 (= e!3248800 ((_ map or) call!368266 call!368264))))

(declare-fun c!900626 () Bool)

(declare-fun d!1682845 () Bool)

(assert (=> d!1682845 (= c!900626 (and ((_ is ElementMatch!14807) (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292))))))) (= (c!900134 (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292))))))) (h!67045 s!2326))))))

(declare-fun e!3248805 () (InoxSet Context!8382))

(assert (=> d!1682845 (= (derivationStepZipperDown!255 (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292)))))) (ite (or c!900320 c!900319) lt!2143066 (Context!8383 call!368029)) (h!67045 s!2326)) e!3248805)))

(declare-fun b!5219328 () Bool)

(assert (=> b!5219328 (= e!3248803 e!3248802)))

(assert (=> b!5219328 (= c!900627 ((_ is Concat!23652) (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292))))))))))

(declare-fun c!900629 () Bool)

(declare-fun bm!368261 () Bool)

(assert (=> bm!368261 (= call!368264 (derivationStepZipperDown!255 (ite c!900629 (regTwo!30127 (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292))))))) (regOne!30126 (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292)))))))) (ite c!900629 (ite (or c!900320 c!900319) lt!2143066 (Context!8383 call!368029)) (Context!8383 call!368267)) (h!67045 s!2326)))))

(declare-fun b!5219329 () Bool)

(assert (=> b!5219329 (= e!3248801 call!368265)))

(declare-fun b!5219330 () Bool)

(assert (=> b!5219330 (= e!3248805 (store ((as const (Array Context!8382 Bool)) false) (ite (or c!900320 c!900319) lt!2143066 (Context!8383 call!368029)) true))))

(declare-fun bm!368262 () Bool)

(assert (=> bm!368262 (= call!368266 (derivationStepZipperDown!255 (ite c!900629 (regOne!30127 (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292))))))) (ite c!900628 (regTwo!30126 (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292))))))) (ite c!900627 (regOne!30126 (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292))))))) (reg!15136 (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292)))))))))) (ite (or c!900629 c!900628) (ite (or c!900320 c!900319) lt!2143066 (Context!8383 call!368029)) (Context!8383 call!368262)) (h!67045 s!2326)))))

(declare-fun b!5219331 () Bool)

(declare-fun e!3248804 () Bool)

(assert (=> b!5219331 (= c!900628 e!3248804)))

(declare-fun res!2216283 () Bool)

(assert (=> b!5219331 (=> (not res!2216283) (not e!3248804))))

(assert (=> b!5219331 (= res!2216283 ((_ is Concat!23652) (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292))))))))))

(assert (=> b!5219331 (= e!3248800 e!3248803)))

(declare-fun b!5219332 () Bool)

(declare-fun c!900630 () Bool)

(assert (=> b!5219332 (= c!900630 ((_ is Star!14807) (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292))))))))))

(assert (=> b!5219332 (= e!3248802 e!3248801)))

(declare-fun b!5219333 () Bool)

(assert (=> b!5219333 (= e!3248805 e!3248800)))

(assert (=> b!5219333 (= c!900629 ((_ is Union!14807) (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292))))))))))

(declare-fun b!5219334 () Bool)

(assert (=> b!5219334 (= e!3248804 (nullable!4976 (regOne!30126 (ite c!900320 (regOne!30127 (regOne!30127 (regOne!30126 r!7292))) (ite c!900319 (regTwo!30126 (regOne!30127 (regOne!30126 r!7292))) (ite c!900318 (regOne!30126 (regOne!30127 (regOne!30126 r!7292))) (reg!15136 (regOne!30127 (regOne!30126 r!7292)))))))))))

(assert (= (and d!1682845 c!900626) b!5219330))

(assert (= (and d!1682845 (not c!900626)) b!5219333))

(assert (= (and b!5219333 c!900629) b!5219327))

(assert (= (and b!5219333 (not c!900629)) b!5219331))

(assert (= (and b!5219331 res!2216283) b!5219334))

(assert (= (and b!5219331 c!900628) b!5219324))

(assert (= (and b!5219331 (not c!900628)) b!5219328))

(assert (= (and b!5219328 c!900627) b!5219326))

(assert (= (and b!5219328 (not c!900627)) b!5219332))

(assert (= (and b!5219332 c!900630) b!5219329))

(assert (= (and b!5219332 (not c!900630)) b!5219325))

(assert (= (or b!5219326 b!5219329) bm!368257))

(assert (= (or b!5219326 b!5219329) bm!368260))

(assert (= (or b!5219324 bm!368257) bm!368259))

(assert (= (or b!5219324 bm!368260) bm!368258))

(assert (= (or b!5219327 b!5219324) bm!368261))

(assert (= (or b!5219327 bm!368258) bm!368262))

(declare-fun m!6267334 () Bool)

(assert (=> b!5219334 m!6267334))

(declare-fun m!6267336 () Bool)

(assert (=> b!5219330 m!6267336))

(declare-fun m!6267338 () Bool)

(assert (=> bm!368261 m!6267338))

(declare-fun m!6267340 () Bool)

(assert (=> bm!368262 m!6267340))

(declare-fun m!6267342 () Bool)

(assert (=> bm!368259 m!6267342))

(assert (=> bm!368029 d!1682845))

(declare-fun bs!1212208 () Bool)

(declare-fun b!5219335 () Bool)

(assert (= bs!1212208 (and b!5219335 d!1682309)))

(declare-fun lambda!261891 () Int)

(assert (=> bs!1212208 (not (= lambda!261891 lambda!261806))))

(declare-fun bs!1212209 () Bool)

(assert (= bs!1212209 (and b!5219335 d!1682311)))

(assert (=> bs!1212209 (not (= lambda!261891 lambda!261811))))

(declare-fun bs!1212210 () Bool)

(assert (= bs!1212210 (and b!5219335 b!5217507)))

(assert (=> bs!1212210 (not (= lambda!261891 lambda!261767))))

(assert (=> bs!1212209 (not (= lambda!261891 lambda!261812))))

(declare-fun bs!1212211 () Bool)

(assert (= bs!1212211 (and b!5219335 d!1682805)))

(assert (=> bs!1212211 (not (= lambda!261891 lambda!261886))))

(assert (=> bs!1212210 (not (= lambda!261891 lambda!261768))))

(declare-fun bs!1212212 () Bool)

(assert (= bs!1212212 (and b!5219335 b!5217803)))

(assert (=> bs!1212212 (not (= lambda!261891 lambda!261803))))

(assert (=> bs!1212211 (not (= lambda!261891 lambda!261885))))

(declare-fun bs!1212213 () Bool)

(assert (= bs!1212213 (and b!5219335 b!5219016)))

(assert (=> bs!1212213 (not (= lambda!261891 lambda!261868))))

(declare-fun bs!1212214 () Bool)

(assert (= bs!1212214 (and b!5219335 b!5217799)))

(assert (=> bs!1212214 (= (and (= (reg!15136 (regOne!30127 r!7292)) (reg!15136 r!7292)) (= (regOne!30127 r!7292) r!7292)) (= lambda!261891 lambda!261802))))

(declare-fun bs!1212215 () Bool)

(assert (= bs!1212215 (and b!5219335 d!1682817)))

(assert (=> bs!1212215 (not (= lambda!261891 lambda!261889))))

(declare-fun bs!1212216 () Bool)

(assert (= bs!1212216 (and b!5219335 b!5219012)))

(assert (=> bs!1212216 (= (and (= (reg!15136 (regOne!30127 r!7292)) (reg!15136 (regTwo!30127 r!7292))) (= (regOne!30127 r!7292) (regTwo!30127 r!7292))) (= lambda!261891 lambda!261867))))

(assert (=> b!5219335 true))

(assert (=> b!5219335 true))

(declare-fun bs!1212217 () Bool)

(declare-fun b!5219339 () Bool)

(assert (= bs!1212217 (and b!5219339 d!1682309)))

(declare-fun lambda!261892 () Int)

(assert (=> bs!1212217 (not (= lambda!261892 lambda!261806))))

(declare-fun bs!1212218 () Bool)

(assert (= bs!1212218 (and b!5219339 d!1682311)))

(assert (=> bs!1212218 (not (= lambda!261892 lambda!261811))))

(declare-fun bs!1212219 () Bool)

(assert (= bs!1212219 (and b!5219339 b!5217507)))

(assert (=> bs!1212219 (not (= lambda!261892 lambda!261767))))

(assert (=> bs!1212218 (= (and (= (regOne!30126 (regOne!30127 r!7292)) (regOne!30126 r!7292)) (= (regTwo!30126 (regOne!30127 r!7292)) (regTwo!30126 r!7292))) (= lambda!261892 lambda!261812))))

(declare-fun bs!1212220 () Bool)

(assert (= bs!1212220 (and b!5219339 b!5219335)))

(assert (=> bs!1212220 (not (= lambda!261892 lambda!261891))))

(declare-fun bs!1212221 () Bool)

(assert (= bs!1212221 (and b!5219339 d!1682805)))

(assert (=> bs!1212221 (= (and (= (regOne!30126 (regOne!30127 r!7292)) (regOne!30126 r!7292)) (= (regTwo!30126 (regOne!30127 r!7292)) (regTwo!30126 r!7292))) (= lambda!261892 lambda!261886))))

(assert (=> bs!1212219 (= (and (= (regOne!30126 (regOne!30127 r!7292)) (regOne!30126 r!7292)) (= (regTwo!30126 (regOne!30127 r!7292)) (regTwo!30126 r!7292))) (= lambda!261892 lambda!261768))))

(declare-fun bs!1212222 () Bool)

(assert (= bs!1212222 (and b!5219339 b!5217803)))

(assert (=> bs!1212222 (= (and (= (regOne!30126 (regOne!30127 r!7292)) (regOne!30126 r!7292)) (= (regTwo!30126 (regOne!30127 r!7292)) (regTwo!30126 r!7292))) (= lambda!261892 lambda!261803))))

(assert (=> bs!1212221 (not (= lambda!261892 lambda!261885))))

(declare-fun bs!1212223 () Bool)

(assert (= bs!1212223 (and b!5219339 b!5219016)))

(assert (=> bs!1212223 (= (and (= (regOne!30126 (regOne!30127 r!7292)) (regOne!30126 (regTwo!30127 r!7292))) (= (regTwo!30126 (regOne!30127 r!7292)) (regTwo!30126 (regTwo!30127 r!7292)))) (= lambda!261892 lambda!261868))))

(declare-fun bs!1212224 () Bool)

(assert (= bs!1212224 (and b!5219339 b!5217799)))

(assert (=> bs!1212224 (not (= lambda!261892 lambda!261802))))

(declare-fun bs!1212225 () Bool)

(assert (= bs!1212225 (and b!5219339 d!1682817)))

(assert (=> bs!1212225 (not (= lambda!261892 lambda!261889))))

(declare-fun bs!1212226 () Bool)

(assert (= bs!1212226 (and b!5219339 b!5219012)))

(assert (=> bs!1212226 (not (= lambda!261892 lambda!261867))))

(assert (=> b!5219339 true))

(assert (=> b!5219339 true))

(declare-fun e!3248809 () Bool)

(declare-fun call!368268 () Bool)

(assert (=> b!5219335 (= e!3248809 call!368268)))

(declare-fun b!5219336 () Bool)

(declare-fun c!900631 () Bool)

(assert (=> b!5219336 (= c!900631 ((_ is ElementMatch!14807) (regOne!30127 r!7292)))))

(declare-fun e!3248807 () Bool)

(declare-fun e!3248810 () Bool)

(assert (=> b!5219336 (= e!3248807 e!3248810)))

(declare-fun bm!368263 () Bool)

(declare-fun call!368269 () Bool)

(assert (=> bm!368263 (= call!368269 (isEmpty!32517 s!2326))))

(declare-fun d!1682847 () Bool)

(declare-fun c!900634 () Bool)

(assert (=> d!1682847 (= c!900634 ((_ is EmptyExpr!14807) (regOne!30127 r!7292)))))

(declare-fun e!3248808 () Bool)

(assert (=> d!1682847 (= (matchRSpec!1910 (regOne!30127 r!7292) s!2326) e!3248808)))

(declare-fun c!900633 () Bool)

(declare-fun bm!368264 () Bool)

(assert (=> bm!368264 (= call!368268 (Exists!1988 (ite c!900633 lambda!261891 lambda!261892)))))

(declare-fun b!5219337 () Bool)

(declare-fun e!3248806 () Bool)

(declare-fun e!3248812 () Bool)

(assert (=> b!5219337 (= e!3248806 e!3248812)))

(declare-fun res!2216285 () Bool)

(assert (=> b!5219337 (= res!2216285 (matchRSpec!1910 (regOne!30127 (regOne!30127 r!7292)) s!2326))))

(assert (=> b!5219337 (=> res!2216285 e!3248812)))

(declare-fun b!5219338 () Bool)

(assert (=> b!5219338 (= e!3248812 (matchRSpec!1910 (regTwo!30127 (regOne!30127 r!7292)) s!2326))))

(declare-fun e!3248811 () Bool)

(assert (=> b!5219339 (= e!3248811 call!368268)))

(declare-fun b!5219340 () Bool)

(assert (=> b!5219340 (= e!3248808 e!3248807)))

(declare-fun res!2216284 () Bool)

(assert (=> b!5219340 (= res!2216284 (not ((_ is EmptyLang!14807) (regOne!30127 r!7292))))))

(assert (=> b!5219340 (=> (not res!2216284) (not e!3248807))))

(declare-fun b!5219341 () Bool)

(assert (=> b!5219341 (= e!3248810 (= s!2326 (Cons!60597 (c!900134 (regOne!30127 r!7292)) Nil!60597)))))

(declare-fun b!5219342 () Bool)

(declare-fun c!900632 () Bool)

(assert (=> b!5219342 (= c!900632 ((_ is Union!14807) (regOne!30127 r!7292)))))

(assert (=> b!5219342 (= e!3248810 e!3248806)))

(declare-fun b!5219343 () Bool)

(declare-fun res!2216286 () Bool)

(assert (=> b!5219343 (=> res!2216286 e!3248809)))

(assert (=> b!5219343 (= res!2216286 call!368269)))

(assert (=> b!5219343 (= e!3248811 e!3248809)))

(declare-fun b!5219344 () Bool)

(assert (=> b!5219344 (= e!3248806 e!3248811)))

(assert (=> b!5219344 (= c!900633 ((_ is Star!14807) (regOne!30127 r!7292)))))

(declare-fun b!5219345 () Bool)

(assert (=> b!5219345 (= e!3248808 call!368269)))

(assert (= (and d!1682847 c!900634) b!5219345))

(assert (= (and d!1682847 (not c!900634)) b!5219340))

(assert (= (and b!5219340 res!2216284) b!5219336))

(assert (= (and b!5219336 c!900631) b!5219341))

(assert (= (and b!5219336 (not c!900631)) b!5219342))

(assert (= (and b!5219342 c!900632) b!5219337))

(assert (= (and b!5219342 (not c!900632)) b!5219344))

(assert (= (and b!5219337 (not res!2216285)) b!5219338))

(assert (= (and b!5219344 c!900633) b!5219343))

(assert (= (and b!5219344 (not c!900633)) b!5219339))

(assert (= (and b!5219343 (not res!2216286)) b!5219335))

(assert (= (or b!5219335 b!5219339) bm!368264))

(assert (= (or b!5219345 b!5219343) bm!368263))

(assert (=> bm!368263 m!6266026))

(declare-fun m!6267344 () Bool)

(assert (=> bm!368264 m!6267344))

(declare-fun m!6267346 () Bool)

(assert (=> b!5219337 m!6267346))

(declare-fun m!6267348 () Bool)

(assert (=> b!5219338 m!6267348))

(assert (=> b!5217801 d!1682847))

(declare-fun d!1682849 () Bool)

(assert (=> d!1682849 (= (nullable!4976 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292)))) (nullableFct!1385 (regOne!30126 (regTwo!30127 (regOne!30126 r!7292)))))))

(declare-fun bs!1212227 () Bool)

(assert (= bs!1212227 d!1682849))

(declare-fun m!6267350 () Bool)

(assert (=> bs!1212227 m!6267350))

(assert (=> b!5218163 d!1682849))

(declare-fun d!1682851 () Bool)

(assert (=> d!1682851 (= (nullable!4976 (h!67044 (exprs!4691 lt!2143066))) (nullableFct!1385 (h!67044 (exprs!4691 lt!2143066))))))

(declare-fun bs!1212228 () Bool)

(assert (= bs!1212228 d!1682851))

(declare-fun m!6267352 () Bool)

(assert (=> bs!1212228 m!6267352))

(assert (=> b!5218146 d!1682851))

(declare-fun d!1682853 () Bool)

(assert (=> d!1682853 (= (nullable!4976 r!7292) (nullableFct!1385 r!7292))))

(declare-fun bs!1212229 () Bool)

(assert (= bs!1212229 d!1682853))

(declare-fun m!6267354 () Bool)

(assert (=> bs!1212229 m!6267354))

(assert (=> b!5217916 d!1682853))

(declare-fun d!1682855 () Bool)

(assert (=> d!1682855 (= (nullable!4976 (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))) (nullableFct!1385 (h!67044 (exprs!4691 (Context!8383 (Cons!60596 (h!67044 (exprs!4691 (h!67046 zl!343))) (t!373888 (exprs!4691 (h!67046 zl!343)))))))))))

(declare-fun bs!1212230 () Bool)

(assert (= bs!1212230 d!1682855))

(declare-fun m!6267356 () Bool)

(assert (=> bs!1212230 m!6267356))

(assert (=> b!5218141 d!1682855))

(assert (=> b!5218151 d!1682327))

(declare-fun b!5219346 () Bool)

(declare-fun e!3248814 () Bool)

(declare-fun e!3248815 () Bool)

(assert (=> b!5219346 (= e!3248814 e!3248815)))

(declare-fun res!2216290 () Bool)

(assert (=> b!5219346 (=> (not res!2216290) (not e!3248815))))

(declare-fun call!368272 () Bool)

(assert (=> b!5219346 (= res!2216290 call!368272)))

(declare-fun b!5219347 () Bool)

(declare-fun e!3248813 () Bool)

(declare-fun call!368270 () Bool)

(assert (=> b!5219347 (= e!3248813 call!368270)))

(declare-fun c!900636 () Bool)

(declare-fun c!900635 () Bool)

(declare-fun bm!368265 () Bool)

(assert (=> bm!368265 (= call!368270 (validRegex!6543 (ite c!900636 (reg!15136 (ite c!900274 (reg!15136 r!7292) (ite c!900273 (regTwo!30127 r!7292) (regTwo!30126 r!7292)))) (ite c!900635 (regTwo!30127 (ite c!900274 (reg!15136 r!7292) (ite c!900273 (regTwo!30127 r!7292) (regTwo!30126 r!7292)))) (regTwo!30126 (ite c!900274 (reg!15136 r!7292) (ite c!900273 (regTwo!30127 r!7292) (regTwo!30126 r!7292))))))))))

(declare-fun b!5219348 () Bool)

(declare-fun e!3248818 () Bool)

(declare-fun e!3248817 () Bool)

(assert (=> b!5219348 (= e!3248818 e!3248817)))

(assert (=> b!5219348 (= c!900636 ((_ is Star!14807) (ite c!900274 (reg!15136 r!7292) (ite c!900273 (regTwo!30127 r!7292) (regTwo!30126 r!7292)))))))

(declare-fun bm!368266 () Bool)

(assert (=> bm!368266 (= call!368272 (validRegex!6543 (ite c!900635 (regOne!30127 (ite c!900274 (reg!15136 r!7292) (ite c!900273 (regTwo!30127 r!7292) (regTwo!30126 r!7292)))) (regOne!30126 (ite c!900274 (reg!15136 r!7292) (ite c!900273 (regTwo!30127 r!7292) (regTwo!30126 r!7292)))))))))

(declare-fun bm!368267 () Bool)

(declare-fun call!368271 () Bool)

(assert (=> bm!368267 (= call!368271 call!368270)))

(declare-fun b!5219349 () Bool)

(assert (=> b!5219349 (= e!3248815 call!368271)))

(declare-fun b!5219350 () Bool)

(declare-fun res!2216291 () Bool)

(assert (=> b!5219350 (=> res!2216291 e!3248814)))

(assert (=> b!5219350 (= res!2216291 (not ((_ is Concat!23652) (ite c!900274 (reg!15136 r!7292) (ite c!900273 (regTwo!30127 r!7292) (regTwo!30126 r!7292))))))))

(declare-fun e!3248819 () Bool)

(assert (=> b!5219350 (= e!3248819 e!3248814)))

(declare-fun d!1682857 () Bool)

(declare-fun res!2216287 () Bool)

(assert (=> d!1682857 (=> res!2216287 e!3248818)))

(assert (=> d!1682857 (= res!2216287 ((_ is ElementMatch!14807) (ite c!900274 (reg!15136 r!7292) (ite c!900273 (regTwo!30127 r!7292) (regTwo!30126 r!7292)))))))

(assert (=> d!1682857 (= (validRegex!6543 (ite c!900274 (reg!15136 r!7292) (ite c!900273 (regTwo!30127 r!7292) (regTwo!30126 r!7292)))) e!3248818)))

(declare-fun b!5219351 () Bool)

(declare-fun e!3248816 () Bool)

(assert (=> b!5219351 (= e!3248816 call!368271)))

(declare-fun b!5219352 () Bool)

(assert (=> b!5219352 (= e!3248817 e!3248813)))

(declare-fun res!2216289 () Bool)

(assert (=> b!5219352 (= res!2216289 (not (nullable!4976 (reg!15136 (ite c!900274 (reg!15136 r!7292) (ite c!900273 (regTwo!30127 r!7292) (regTwo!30126 r!7292)))))))))

(assert (=> b!5219352 (=> (not res!2216289) (not e!3248813))))

(declare-fun b!5219353 () Bool)

(assert (=> b!5219353 (= e!3248817 e!3248819)))

(assert (=> b!5219353 (= c!900635 ((_ is Union!14807) (ite c!900274 (reg!15136 r!7292) (ite c!900273 (regTwo!30127 r!7292) (regTwo!30126 r!7292)))))))

(declare-fun b!5219354 () Bool)

(declare-fun res!2216288 () Bool)

(assert (=> b!5219354 (=> (not res!2216288) (not e!3248816))))

(assert (=> b!5219354 (= res!2216288 call!368272)))

(assert (=> b!5219354 (= e!3248819 e!3248816)))

(assert (= (and d!1682857 (not res!2216287)) b!5219348))

(assert (= (and b!5219348 c!900636) b!5219352))

(assert (= (and b!5219348 (not c!900636)) b!5219353))

(assert (= (and b!5219352 res!2216289) b!5219347))

(assert (= (and b!5219353 c!900635) b!5219354))

(assert (= (and b!5219353 (not c!900635)) b!5219350))

(assert (= (and b!5219354 res!2216288) b!5219351))

(assert (= (and b!5219350 (not res!2216291)) b!5219346))

(assert (= (and b!5219346 res!2216290) b!5219349))

(assert (= (or b!5219351 b!5219349) bm!368267))

(assert (= (or b!5219354 b!5219346) bm!368266))

(assert (= (or b!5219347 bm!368267) bm!368265))

(declare-fun m!6267358 () Bool)

(assert (=> bm!368265 m!6267358))

(declare-fun m!6267360 () Bool)

(assert (=> bm!368266 m!6267360))

(declare-fun m!6267362 () Bool)

(assert (=> b!5219352 m!6267362))

(assert (=> bm!367992 d!1682857))

(declare-fun d!1682859 () Bool)

(assert (=> d!1682859 true))

(assert (=> d!1682859 true))

(declare-fun res!2216292 () Bool)

(assert (=> d!1682859 (= (choose!38803 lambda!261768) res!2216292)))

(assert (=> d!1682305 d!1682859))

(declare-fun bs!1212231 () Bool)

(declare-fun d!1682861 () Bool)

(assert (= bs!1212231 (and d!1682861 d!1682371)))

(declare-fun lambda!261893 () Int)

(assert (=> bs!1212231 (= lambda!261893 lambda!261821)))

(declare-fun bs!1212232 () Bool)

(assert (= bs!1212232 (and d!1682861 d!1682373)))

(assert (=> bs!1212232 (= lambda!261893 lambda!261824)))

(declare-fun bs!1212233 () Bool)

(assert (= bs!1212233 (and d!1682861 d!1682375)))

(assert (=> bs!1212233 (= lambda!261893 lambda!261825)))

(declare-fun bs!1212234 () Bool)

(assert (= bs!1212234 (and d!1682861 d!1682737)))

(assert (=> bs!1212234 (= lambda!261893 lambda!261871)))

(declare-fun bs!1212235 () Bool)

(assert (= bs!1212235 (and d!1682861 d!1682787)))

(assert (=> bs!1212235 (= lambda!261893 lambda!261878)))

(declare-fun bs!1212236 () Bool)

(assert (= bs!1212236 (and d!1682861 d!1682821)))

(assert (=> bs!1212236 (= lambda!261893 lambda!261890)))

(declare-fun bs!1212237 () Bool)

(assert (= bs!1212237 (and d!1682861 d!1682653)))

(assert (=> bs!1212237 (= lambda!261893 lambda!261863)))

(declare-fun bs!1212238 () Bool)

(assert (= bs!1212238 (and d!1682861 d!1682319)))

(assert (=> bs!1212238 (= lambda!261893 lambda!261815)))

(declare-fun bs!1212239 () Bool)

(assert (= bs!1212239 (and d!1682861 d!1682369)))

(assert (=> bs!1212239 (= lambda!261893 lambda!261818)))

(declare-fun b!5219355 () Bool)

(declare-fun e!3248824 () Regex!14807)

(assert (=> b!5219355 (= e!3248824 (Union!14807 (h!67044 (t!373888 (unfocusZipperList!249 zl!343))) (generalisedUnion!736 (t!373888 (t!373888 (unfocusZipperList!249 zl!343))))))))

(declare-fun e!3248821 () Bool)

(assert (=> d!1682861 e!3248821))

(declare-fun res!2216293 () Bool)

(assert (=> d!1682861 (=> (not res!2216293) (not e!3248821))))

(declare-fun lt!2143201 () Regex!14807)

(assert (=> d!1682861 (= res!2216293 (validRegex!6543 lt!2143201))))

(declare-fun e!3248820 () Regex!14807)

(assert (=> d!1682861 (= lt!2143201 e!3248820)))

(declare-fun c!900637 () Bool)

(declare-fun e!3248822 () Bool)

(assert (=> d!1682861 (= c!900637 e!3248822)))

(declare-fun res!2216294 () Bool)

(assert (=> d!1682861 (=> (not res!2216294) (not e!3248822))))

(assert (=> d!1682861 (= res!2216294 ((_ is Cons!60596) (t!373888 (unfocusZipperList!249 zl!343))))))

(assert (=> d!1682861 (forall!14241 (t!373888 (unfocusZipperList!249 zl!343)) lambda!261893)))

(assert (=> d!1682861 (= (generalisedUnion!736 (t!373888 (unfocusZipperList!249 zl!343))) lt!2143201)))

(declare-fun b!5219356 () Bool)

(declare-fun e!3248825 () Bool)

(assert (=> b!5219356 (= e!3248825 (isUnion!210 lt!2143201))))

(declare-fun b!5219357 () Bool)

(declare-fun e!3248823 () Bool)

(assert (=> b!5219357 (= e!3248823 (isEmptyLang!778 lt!2143201))))

(declare-fun b!5219358 () Bool)

(assert (=> b!5219358 (= e!3248822 (isEmpty!32514 (t!373888 (t!373888 (unfocusZipperList!249 zl!343)))))))

(declare-fun b!5219359 () Bool)

(assert (=> b!5219359 (= e!3248820 (h!67044 (t!373888 (unfocusZipperList!249 zl!343))))))

(declare-fun b!5219360 () Bool)

(assert (=> b!5219360 (= e!3248820 e!3248824)))

(declare-fun c!900640 () Bool)

(assert (=> b!5219360 (= c!900640 ((_ is Cons!60596) (t!373888 (unfocusZipperList!249 zl!343))))))

(declare-fun b!5219361 () Bool)

(assert (=> b!5219361 (= e!3248823 e!3248825)))

(declare-fun c!900638 () Bool)

(assert (=> b!5219361 (= c!900638 (isEmpty!32514 (tail!10283 (t!373888 (unfocusZipperList!249 zl!343)))))))

(declare-fun b!5219362 () Bool)

(assert (=> b!5219362 (= e!3248825 (= lt!2143201 (head!11186 (t!373888 (unfocusZipperList!249 zl!343)))))))

(declare-fun b!5219363 () Bool)

(assert (=> b!5219363 (= e!3248824 EmptyLang!14807)))

(declare-fun b!5219364 () Bool)

(assert (=> b!5219364 (= e!3248821 e!3248823)))

(declare-fun c!900639 () Bool)

(assert (=> b!5219364 (= c!900639 (isEmpty!32514 (t!373888 (unfocusZipperList!249 zl!343))))))

(assert (= (and d!1682861 res!2216294) b!5219358))

(assert (= (and d!1682861 c!900637) b!5219359))

(assert (= (and d!1682861 (not c!900637)) b!5219360))

(assert (= (and b!5219360 c!900640) b!5219355))

(assert (= (and b!5219360 (not c!900640)) b!5219363))

(assert (= (and d!1682861 res!2216293) b!5219364))

(assert (= (and b!5219364 c!900639) b!5219357))

(assert (= (and b!5219364 (not c!900639)) b!5219361))

(assert (= (and b!5219361 c!900638) b!5219362))

(assert (= (and b!5219361 (not c!900638)) b!5219356))

(assert (=> b!5219364 m!6266332))

(declare-fun m!6267364 () Bool)

(assert (=> b!5219357 m!6267364))

(declare-fun m!6267366 () Bool)

(assert (=> d!1682861 m!6267366))

(declare-fun m!6267368 () Bool)

(assert (=> d!1682861 m!6267368))

(declare-fun m!6267370 () Bool)

(assert (=> b!5219356 m!6267370))

(declare-fun m!6267372 () Bool)

(assert (=> b!5219355 m!6267372))

(declare-fun m!6267374 () Bool)

(assert (=> b!5219361 m!6267374))

(assert (=> b!5219361 m!6267374))

(declare-fun m!6267376 () Bool)

(assert (=> b!5219361 m!6267376))

(declare-fun m!6267378 () Bool)

(assert (=> b!5219358 m!6267378))

(declare-fun m!6267380 () Bool)

(assert (=> b!5219362 m!6267380))

(assert (=> b!5218232 d!1682861))

(declare-fun d!1682863 () Bool)

(assert (=> d!1682863 (= (nullable!4976 (regOne!30126 (regOne!30127 (regOne!30126 r!7292)))) (nullableFct!1385 (regOne!30126 (regOne!30127 (regOne!30126 r!7292)))))))

(declare-fun bs!1212240 () Bool)

(assert (= bs!1212240 d!1682863))

(declare-fun m!6267382 () Bool)

(assert (=> bs!1212240 m!6267382))

(assert (=> b!5218174 d!1682863))

(assert (=> d!1682353 d!1682719))

(declare-fun d!1682865 () Bool)

(assert (=> d!1682865 true))

(declare-fun setRes!33186 () Bool)

(assert (=> d!1682865 setRes!33186))

(declare-fun condSetEmpty!33186 () Bool)

(declare-fun res!2216295 () (InoxSet Context!8382))

(assert (=> d!1682865 (= condSetEmpty!33186 (= res!2216295 ((as const (Array Context!8382 Bool)) false)))))

(assert (=> d!1682865 (= (choose!38807 z!1189 lambda!261769) res!2216295)))

(declare-fun setIsEmpty!33186 () Bool)

(assert (=> setIsEmpty!33186 setRes!33186))

(declare-fun e!3248826 () Bool)

(declare-fun setElem!33186 () Context!8382)

(declare-fun setNonEmpty!33186 () Bool)

(declare-fun tp!1463194 () Bool)

(assert (=> setNonEmpty!33186 (= setRes!33186 (and tp!1463194 (inv!80264 setElem!33186) e!3248826))))

(declare-fun setRest!33186 () (InoxSet Context!8382))

(assert (=> setNonEmpty!33186 (= res!2216295 ((_ map or) (store ((as const (Array Context!8382 Bool)) false) setElem!33186 true) setRest!33186))))

(declare-fun b!5219365 () Bool)

(declare-fun tp!1463195 () Bool)

(assert (=> b!5219365 (= e!3248826 tp!1463195)))

(assert (= (and d!1682865 condSetEmpty!33186) setIsEmpty!33186))

(assert (= (and d!1682865 (not condSetEmpty!33186)) setNonEmpty!33186))

(assert (= setNonEmpty!33186 b!5219365))

(declare-fun m!6267384 () Bool)

(assert (=> setNonEmpty!33186 m!6267384))

(assert (=> d!1682325 d!1682865))

(declare-fun b!5219368 () Bool)

(declare-fun e!3248827 () Bool)

(declare-fun tp!1463198 () Bool)

(assert (=> b!5219368 (= e!3248827 tp!1463198)))

(declare-fun b!5219369 () Bool)

(declare-fun tp!1463200 () Bool)

(declare-fun tp!1463197 () Bool)

(assert (=> b!5219369 (= e!3248827 (and tp!1463200 tp!1463197))))

(declare-fun b!5219366 () Bool)

(assert (=> b!5219366 (= e!3248827 tp_is_empty!38867)))

(declare-fun b!5219367 () Bool)

(declare-fun tp!1463199 () Bool)

(declare-fun tp!1463196 () Bool)

(assert (=> b!5219367 (= e!3248827 (and tp!1463199 tp!1463196))))

(assert (=> b!5218295 (= tp!1463013 e!3248827)))

(assert (= (and b!5218295 ((_ is ElementMatch!14807) (regOne!30126 (regOne!30127 r!7292)))) b!5219366))

(assert (= (and b!5218295 ((_ is Concat!23652) (regOne!30126 (regOne!30127 r!7292)))) b!5219367))

(assert (= (and b!5218295 ((_ is Star!14807) (regOne!30126 (regOne!30127 r!7292)))) b!5219368))

(assert (= (and b!5218295 ((_ is Union!14807) (regOne!30126 (regOne!30127 r!7292)))) b!5219369))

(declare-fun b!5219372 () Bool)

(declare-fun e!3248828 () Bool)

(declare-fun tp!1463203 () Bool)

(assert (=> b!5219372 (= e!3248828 tp!1463203)))

(declare-fun b!5219373 () Bool)

(declare-fun tp!1463205 () Bool)

(declare-fun tp!1463202 () Bool)

(assert (=> b!5219373 (= e!3248828 (and tp!1463205 tp!1463202))))

(declare-fun b!5219370 () Bool)

(assert (=> b!5219370 (= e!3248828 tp_is_empty!38867)))

(declare-fun b!5219371 () Bool)

(declare-fun tp!1463204 () Bool)

(declare-fun tp!1463201 () Bool)

(assert (=> b!5219371 (= e!3248828 (and tp!1463204 tp!1463201))))

(assert (=> b!5218295 (= tp!1463010 e!3248828)))

(assert (= (and b!5218295 ((_ is ElementMatch!14807) (regTwo!30126 (regOne!30127 r!7292)))) b!5219370))

(assert (= (and b!5218295 ((_ is Concat!23652) (regTwo!30126 (regOne!30127 r!7292)))) b!5219371))

(assert (= (and b!5218295 ((_ is Star!14807) (regTwo!30126 (regOne!30127 r!7292)))) b!5219372))

(assert (= (and b!5218295 ((_ is Union!14807) (regTwo!30126 (regOne!30127 r!7292)))) b!5219373))

(declare-fun b!5219376 () Bool)

(declare-fun e!3248829 () Bool)

(declare-fun tp!1463208 () Bool)

(assert (=> b!5219376 (= e!3248829 tp!1463208)))

(declare-fun b!5219377 () Bool)

(declare-fun tp!1463210 () Bool)

(declare-fun tp!1463207 () Bool)

(assert (=> b!5219377 (= e!3248829 (and tp!1463210 tp!1463207))))

(declare-fun b!5219374 () Bool)

(assert (=> b!5219374 (= e!3248829 tp_is_empty!38867)))

(declare-fun b!5219375 () Bool)

(declare-fun tp!1463209 () Bool)

(declare-fun tp!1463206 () Bool)

(assert (=> b!5219375 (= e!3248829 (and tp!1463209 tp!1463206))))

(assert (=> b!5218296 (= tp!1463012 e!3248829)))

(assert (= (and b!5218296 ((_ is ElementMatch!14807) (reg!15136 (regOne!30127 r!7292)))) b!5219374))

(assert (= (and b!5218296 ((_ is Concat!23652) (reg!15136 (regOne!30127 r!7292)))) b!5219375))

(assert (= (and b!5218296 ((_ is Star!14807) (reg!15136 (regOne!30127 r!7292)))) b!5219376))

(assert (= (and b!5218296 ((_ is Union!14807) (reg!15136 (regOne!30127 r!7292)))) b!5219377))

(declare-fun b!5219380 () Bool)

(declare-fun e!3248830 () Bool)

(declare-fun tp!1463213 () Bool)

(assert (=> b!5219380 (= e!3248830 tp!1463213)))

(declare-fun b!5219381 () Bool)

(declare-fun tp!1463215 () Bool)

(declare-fun tp!1463212 () Bool)

(assert (=> b!5219381 (= e!3248830 (and tp!1463215 tp!1463212))))

(declare-fun b!5219378 () Bool)

(assert (=> b!5219378 (= e!3248830 tp_is_empty!38867)))

(declare-fun b!5219379 () Bool)

(declare-fun tp!1463214 () Bool)

(declare-fun tp!1463211 () Bool)

(assert (=> b!5219379 (= e!3248830 (and tp!1463214 tp!1463211))))

(assert (=> b!5218297 (= tp!1463014 e!3248830)))

(assert (= (and b!5218297 ((_ is ElementMatch!14807) (regOne!30127 (regOne!30127 r!7292)))) b!5219378))

(assert (= (and b!5218297 ((_ is Concat!23652) (regOne!30127 (regOne!30127 r!7292)))) b!5219379))

(assert (= (and b!5218297 ((_ is Star!14807) (regOne!30127 (regOne!30127 r!7292)))) b!5219380))

(assert (= (and b!5218297 ((_ is Union!14807) (regOne!30127 (regOne!30127 r!7292)))) b!5219381))

(declare-fun b!5219384 () Bool)

(declare-fun e!3248831 () Bool)

(declare-fun tp!1463218 () Bool)

(assert (=> b!5219384 (= e!3248831 tp!1463218)))

(declare-fun b!5219385 () Bool)

(declare-fun tp!1463220 () Bool)

(declare-fun tp!1463217 () Bool)

(assert (=> b!5219385 (= e!3248831 (and tp!1463220 tp!1463217))))

(declare-fun b!5219382 () Bool)

(assert (=> b!5219382 (= e!3248831 tp_is_empty!38867)))

(declare-fun b!5219383 () Bool)

(declare-fun tp!1463219 () Bool)

(declare-fun tp!1463216 () Bool)

(assert (=> b!5219383 (= e!3248831 (and tp!1463219 tp!1463216))))

(assert (=> b!5218297 (= tp!1463011 e!3248831)))

(assert (= (and b!5218297 ((_ is ElementMatch!14807) (regTwo!30127 (regOne!30127 r!7292)))) b!5219382))

(assert (= (and b!5218297 ((_ is Concat!23652) (regTwo!30127 (regOne!30127 r!7292)))) b!5219383))

(assert (= (and b!5218297 ((_ is Star!14807) (regTwo!30127 (regOne!30127 r!7292)))) b!5219384))

(assert (= (and b!5218297 ((_ is Union!14807) (regTwo!30127 (regOne!30127 r!7292)))) b!5219385))

(declare-fun b!5219388 () Bool)

(declare-fun e!3248832 () Bool)

(declare-fun tp!1463223 () Bool)

(assert (=> b!5219388 (= e!3248832 tp!1463223)))

(declare-fun b!5219389 () Bool)

(declare-fun tp!1463225 () Bool)

(declare-fun tp!1463222 () Bool)

(assert (=> b!5219389 (= e!3248832 (and tp!1463225 tp!1463222))))

(declare-fun b!5219386 () Bool)

(assert (=> b!5219386 (= e!3248832 tp_is_empty!38867)))

(declare-fun b!5219387 () Bool)

(declare-fun tp!1463224 () Bool)

(declare-fun tp!1463221 () Bool)

(assert (=> b!5219387 (= e!3248832 (and tp!1463224 tp!1463221))))

(assert (=> b!5218282 (= tp!1462997 e!3248832)))

(assert (= (and b!5218282 ((_ is ElementMatch!14807) (regOne!30126 (regOne!30126 r!7292)))) b!5219386))

(assert (= (and b!5218282 ((_ is Concat!23652) (regOne!30126 (regOne!30126 r!7292)))) b!5219387))

(assert (= (and b!5218282 ((_ is Star!14807) (regOne!30126 (regOne!30126 r!7292)))) b!5219388))

(assert (= (and b!5218282 ((_ is Union!14807) (regOne!30126 (regOne!30126 r!7292)))) b!5219389))

(declare-fun b!5219392 () Bool)

(declare-fun e!3248833 () Bool)

(declare-fun tp!1463228 () Bool)

(assert (=> b!5219392 (= e!3248833 tp!1463228)))

(declare-fun b!5219393 () Bool)

(declare-fun tp!1463230 () Bool)

(declare-fun tp!1463227 () Bool)

(assert (=> b!5219393 (= e!3248833 (and tp!1463230 tp!1463227))))

(declare-fun b!5219390 () Bool)

(assert (=> b!5219390 (= e!3248833 tp_is_empty!38867)))

(declare-fun b!5219391 () Bool)

(declare-fun tp!1463229 () Bool)

(declare-fun tp!1463226 () Bool)

(assert (=> b!5219391 (= e!3248833 (and tp!1463229 tp!1463226))))

(assert (=> b!5218282 (= tp!1462994 e!3248833)))

(assert (= (and b!5218282 ((_ is ElementMatch!14807) (regTwo!30126 (regOne!30126 r!7292)))) b!5219390))

(assert (= (and b!5218282 ((_ is Concat!23652) (regTwo!30126 (regOne!30126 r!7292)))) b!5219391))

(assert (= (and b!5218282 ((_ is Star!14807) (regTwo!30126 (regOne!30126 r!7292)))) b!5219392))

(assert (= (and b!5218282 ((_ is Union!14807) (regTwo!30126 (regOne!30126 r!7292)))) b!5219393))

(declare-fun b!5219396 () Bool)

(declare-fun e!3248834 () Bool)

(declare-fun tp!1463233 () Bool)

(assert (=> b!5219396 (= e!3248834 tp!1463233)))

(declare-fun b!5219397 () Bool)

(declare-fun tp!1463235 () Bool)

(declare-fun tp!1463232 () Bool)

(assert (=> b!5219397 (= e!3248834 (and tp!1463235 tp!1463232))))

(declare-fun b!5219394 () Bool)

(assert (=> b!5219394 (= e!3248834 tp_is_empty!38867)))

(declare-fun b!5219395 () Bool)

(declare-fun tp!1463234 () Bool)

(declare-fun tp!1463231 () Bool)

(assert (=> b!5219395 (= e!3248834 (and tp!1463234 tp!1463231))))

(assert (=> b!5218283 (= tp!1462996 e!3248834)))

(assert (= (and b!5218283 ((_ is ElementMatch!14807) (reg!15136 (regOne!30126 r!7292)))) b!5219394))

(assert (= (and b!5218283 ((_ is Concat!23652) (reg!15136 (regOne!30126 r!7292)))) b!5219395))

(assert (= (and b!5218283 ((_ is Star!14807) (reg!15136 (regOne!30126 r!7292)))) b!5219396))

(assert (= (and b!5218283 ((_ is Union!14807) (reg!15136 (regOne!30126 r!7292)))) b!5219397))

(declare-fun b!5219400 () Bool)

(declare-fun e!3248835 () Bool)

(declare-fun tp!1463238 () Bool)

(assert (=> b!5219400 (= e!3248835 tp!1463238)))

(declare-fun b!5219401 () Bool)

(declare-fun tp!1463240 () Bool)

(declare-fun tp!1463237 () Bool)

(assert (=> b!5219401 (= e!3248835 (and tp!1463240 tp!1463237))))

(declare-fun b!5219398 () Bool)

(assert (=> b!5219398 (= e!3248835 tp_is_empty!38867)))

(declare-fun b!5219399 () Bool)

(declare-fun tp!1463239 () Bool)

(declare-fun tp!1463236 () Bool)

(assert (=> b!5219399 (= e!3248835 (and tp!1463239 tp!1463236))))

(assert (=> b!5218284 (= tp!1462998 e!3248835)))

(assert (= (and b!5218284 ((_ is ElementMatch!14807) (regOne!30127 (regOne!30126 r!7292)))) b!5219398))

(assert (= (and b!5218284 ((_ is Concat!23652) (regOne!30127 (regOne!30126 r!7292)))) b!5219399))

(assert (= (and b!5218284 ((_ is Star!14807) (regOne!30127 (regOne!30126 r!7292)))) b!5219400))

(assert (= (and b!5218284 ((_ is Union!14807) (regOne!30127 (regOne!30126 r!7292)))) b!5219401))

(declare-fun b!5219404 () Bool)

(declare-fun e!3248836 () Bool)

(declare-fun tp!1463243 () Bool)

(assert (=> b!5219404 (= e!3248836 tp!1463243)))

(declare-fun b!5219405 () Bool)

(declare-fun tp!1463245 () Bool)

(declare-fun tp!1463242 () Bool)

(assert (=> b!5219405 (= e!3248836 (and tp!1463245 tp!1463242))))

(declare-fun b!5219402 () Bool)

(assert (=> b!5219402 (= e!3248836 tp_is_empty!38867)))

(declare-fun b!5219403 () Bool)

(declare-fun tp!1463244 () Bool)

(declare-fun tp!1463241 () Bool)

(assert (=> b!5219403 (= e!3248836 (and tp!1463244 tp!1463241))))

(assert (=> b!5218284 (= tp!1462995 e!3248836)))

(assert (= (and b!5218284 ((_ is ElementMatch!14807) (regTwo!30127 (regOne!30126 r!7292)))) b!5219402))

(assert (= (and b!5218284 ((_ is Concat!23652) (regTwo!30127 (regOne!30126 r!7292)))) b!5219403))

(assert (= (and b!5218284 ((_ is Star!14807) (regTwo!30127 (regOne!30126 r!7292)))) b!5219404))

(assert (= (and b!5218284 ((_ is Union!14807) (regTwo!30127 (regOne!30126 r!7292)))) b!5219405))

(declare-fun condSetEmpty!33187 () Bool)

(assert (=> setNonEmpty!33177 (= condSetEmpty!33187 (= setRest!33177 ((as const (Array Context!8382 Bool)) false)))))

(declare-fun setRes!33187 () Bool)

(assert (=> setNonEmpty!33177 (= tp!1463008 setRes!33187)))

(declare-fun setIsEmpty!33187 () Bool)

(assert (=> setIsEmpty!33187 setRes!33187))

(declare-fun tp!1463246 () Bool)

(declare-fun setNonEmpty!33187 () Bool)

(declare-fun e!3248837 () Bool)

(declare-fun setElem!33187 () Context!8382)

(assert (=> setNonEmpty!33187 (= setRes!33187 (and tp!1463246 (inv!80264 setElem!33187) e!3248837))))

(declare-fun setRest!33187 () (InoxSet Context!8382))

(assert (=> setNonEmpty!33187 (= setRest!33177 ((_ map or) (store ((as const (Array Context!8382 Bool)) false) setElem!33187 true) setRest!33187))))

(declare-fun b!5219406 () Bool)

(declare-fun tp!1463247 () Bool)

(assert (=> b!5219406 (= e!3248837 tp!1463247)))

(assert (= (and setNonEmpty!33177 condSetEmpty!33187) setIsEmpty!33187))

(assert (= (and setNonEmpty!33177 (not condSetEmpty!33187)) setNonEmpty!33187))

(assert (= setNonEmpty!33187 b!5219406))

(declare-fun m!6267386 () Bool)

(assert (=> setNonEmpty!33187 m!6267386))

(declare-fun b!5219409 () Bool)

(declare-fun e!3248838 () Bool)

(declare-fun tp!1463250 () Bool)

(assert (=> b!5219409 (= e!3248838 tp!1463250)))

(declare-fun b!5219410 () Bool)

(declare-fun tp!1463252 () Bool)

(declare-fun tp!1463249 () Bool)

(assert (=> b!5219410 (= e!3248838 (and tp!1463252 tp!1463249))))

(declare-fun b!5219407 () Bool)

(assert (=> b!5219407 (= e!3248838 tp_is_empty!38867)))

(declare-fun b!5219408 () Bool)

(declare-fun tp!1463251 () Bool)

(declare-fun tp!1463248 () Bool)

(assert (=> b!5219408 (= e!3248838 (and tp!1463251 tp!1463248))))

(assert (=> b!5218299 (= tp!1463018 e!3248838)))

(assert (= (and b!5218299 ((_ is ElementMatch!14807) (regOne!30126 (regTwo!30127 r!7292)))) b!5219407))

(assert (= (and b!5218299 ((_ is Concat!23652) (regOne!30126 (regTwo!30127 r!7292)))) b!5219408))

(assert (= (and b!5218299 ((_ is Star!14807) (regOne!30126 (regTwo!30127 r!7292)))) b!5219409))

(assert (= (and b!5218299 ((_ is Union!14807) (regOne!30126 (regTwo!30127 r!7292)))) b!5219410))

(declare-fun b!5219413 () Bool)

(declare-fun e!3248839 () Bool)

(declare-fun tp!1463255 () Bool)

(assert (=> b!5219413 (= e!3248839 tp!1463255)))

(declare-fun b!5219414 () Bool)

(declare-fun tp!1463257 () Bool)

(declare-fun tp!1463254 () Bool)

(assert (=> b!5219414 (= e!3248839 (and tp!1463257 tp!1463254))))

(declare-fun b!5219411 () Bool)

(assert (=> b!5219411 (= e!3248839 tp_is_empty!38867)))

(declare-fun b!5219412 () Bool)

(declare-fun tp!1463256 () Bool)

(declare-fun tp!1463253 () Bool)

(assert (=> b!5219412 (= e!3248839 (and tp!1463256 tp!1463253))))

(assert (=> b!5218299 (= tp!1463015 e!3248839)))

(assert (= (and b!5218299 ((_ is ElementMatch!14807) (regTwo!30126 (regTwo!30127 r!7292)))) b!5219411))

(assert (= (and b!5218299 ((_ is Concat!23652) (regTwo!30126 (regTwo!30127 r!7292)))) b!5219412))

(assert (= (and b!5218299 ((_ is Star!14807) (regTwo!30126 (regTwo!30127 r!7292)))) b!5219413))

(assert (= (and b!5218299 ((_ is Union!14807) (regTwo!30126 (regTwo!30127 r!7292)))) b!5219414))

(declare-fun b!5219417 () Bool)

(declare-fun e!3248840 () Bool)

(declare-fun tp!1463260 () Bool)

(assert (=> b!5219417 (= e!3248840 tp!1463260)))

(declare-fun b!5219418 () Bool)

(declare-fun tp!1463262 () Bool)

(declare-fun tp!1463259 () Bool)

(assert (=> b!5219418 (= e!3248840 (and tp!1463262 tp!1463259))))

(declare-fun b!5219415 () Bool)

(assert (=> b!5219415 (= e!3248840 tp_is_empty!38867)))

(declare-fun b!5219416 () Bool)

(declare-fun tp!1463261 () Bool)

(declare-fun tp!1463258 () Bool)

(assert (=> b!5219416 (= e!3248840 (and tp!1463261 tp!1463258))))

(assert (=> b!5218300 (= tp!1463017 e!3248840)))

(assert (= (and b!5218300 ((_ is ElementMatch!14807) (reg!15136 (regTwo!30127 r!7292)))) b!5219415))

(assert (= (and b!5218300 ((_ is Concat!23652) (reg!15136 (regTwo!30127 r!7292)))) b!5219416))

(assert (= (and b!5218300 ((_ is Star!14807) (reg!15136 (regTwo!30127 r!7292)))) b!5219417))

(assert (= (and b!5218300 ((_ is Union!14807) (reg!15136 (regTwo!30127 r!7292)))) b!5219418))

(declare-fun b!5219419 () Bool)

(declare-fun e!3248841 () Bool)

(declare-fun tp!1463263 () Bool)

(declare-fun tp!1463264 () Bool)

(assert (=> b!5219419 (= e!3248841 (and tp!1463263 tp!1463264))))

(assert (=> b!5218293 (= tp!1463009 e!3248841)))

(assert (= (and b!5218293 ((_ is Cons!60596) (exprs!4691 setElem!33177))) b!5219419))

(declare-fun b!5219422 () Bool)

(declare-fun e!3248842 () Bool)

(declare-fun tp!1463267 () Bool)

(assert (=> b!5219422 (= e!3248842 tp!1463267)))

(declare-fun b!5219423 () Bool)

(declare-fun tp!1463269 () Bool)

(declare-fun tp!1463266 () Bool)

(assert (=> b!5219423 (= e!3248842 (and tp!1463269 tp!1463266))))

(declare-fun b!5219420 () Bool)

(assert (=> b!5219420 (= e!3248842 tp_is_empty!38867)))

(declare-fun b!5219421 () Bool)

(declare-fun tp!1463268 () Bool)

(declare-fun tp!1463265 () Bool)

(assert (=> b!5219421 (= e!3248842 (and tp!1463268 tp!1463265))))

(assert (=> b!5218301 (= tp!1463019 e!3248842)))

(assert (= (and b!5218301 ((_ is ElementMatch!14807) (regOne!30127 (regTwo!30127 r!7292)))) b!5219420))

(assert (= (and b!5218301 ((_ is Concat!23652) (regOne!30127 (regTwo!30127 r!7292)))) b!5219421))

(assert (= (and b!5218301 ((_ is Star!14807) (regOne!30127 (regTwo!30127 r!7292)))) b!5219422))

(assert (= (and b!5218301 ((_ is Union!14807) (regOne!30127 (regTwo!30127 r!7292)))) b!5219423))

(declare-fun b!5219426 () Bool)

(declare-fun e!3248843 () Bool)

(declare-fun tp!1463272 () Bool)

(assert (=> b!5219426 (= e!3248843 tp!1463272)))

(declare-fun b!5219427 () Bool)

(declare-fun tp!1463274 () Bool)

(declare-fun tp!1463271 () Bool)

(assert (=> b!5219427 (= e!3248843 (and tp!1463274 tp!1463271))))

(declare-fun b!5219424 () Bool)

(assert (=> b!5219424 (= e!3248843 tp_is_empty!38867)))

(declare-fun b!5219425 () Bool)

(declare-fun tp!1463273 () Bool)

(declare-fun tp!1463270 () Bool)

(assert (=> b!5219425 (= e!3248843 (and tp!1463273 tp!1463270))))

(assert (=> b!5218301 (= tp!1463016 e!3248843)))

(assert (= (and b!5218301 ((_ is ElementMatch!14807) (regTwo!30127 (regTwo!30127 r!7292)))) b!5219424))

(assert (= (and b!5218301 ((_ is Concat!23652) (regTwo!30127 (regTwo!30127 r!7292)))) b!5219425))

(assert (= (and b!5218301 ((_ is Star!14807) (regTwo!30127 (regTwo!30127 r!7292)))) b!5219426))

(assert (= (and b!5218301 ((_ is Union!14807) (regTwo!30127 (regTwo!30127 r!7292)))) b!5219427))

(declare-fun b!5219428 () Bool)

(declare-fun e!3248844 () Bool)

(declare-fun tp!1463275 () Bool)

(assert (=> b!5219428 (= e!3248844 (and tp_is_empty!38867 tp!1463275))))

(assert (=> b!5218272 (= tp!1462987 e!3248844)))

(assert (= (and b!5218272 ((_ is Cons!60597) (t!373889 (t!373889 s!2326)))) b!5219428))

(declare-fun b!5219430 () Bool)

(declare-fun e!3248846 () Bool)

(declare-fun tp!1463276 () Bool)

(assert (=> b!5219430 (= e!3248846 tp!1463276)))

(declare-fun e!3248845 () Bool)

(declare-fun tp!1463277 () Bool)

(declare-fun b!5219429 () Bool)

(assert (=> b!5219429 (= e!3248845 (and (inv!80264 (h!67046 (t!373890 (t!373890 zl!343)))) e!3248846 tp!1463277))))

(assert (=> b!5218279 (= tp!1462993 e!3248845)))

(assert (= b!5219429 b!5219430))

(assert (= (and b!5218279 ((_ is Cons!60598) (t!373890 (t!373890 zl!343)))) b!5219429))

(declare-fun m!6267388 () Bool)

(assert (=> b!5219429 m!6267388))

(declare-fun b!5219433 () Bool)

(declare-fun e!3248847 () Bool)

(declare-fun tp!1463280 () Bool)

(assert (=> b!5219433 (= e!3248847 tp!1463280)))

(declare-fun b!5219434 () Bool)

(declare-fun tp!1463282 () Bool)

(declare-fun tp!1463279 () Bool)

(assert (=> b!5219434 (= e!3248847 (and tp!1463282 tp!1463279))))

(declare-fun b!5219431 () Bool)

(assert (=> b!5219431 (= e!3248847 tp_is_empty!38867)))

(declare-fun b!5219432 () Bool)

(declare-fun tp!1463281 () Bool)

(declare-fun tp!1463278 () Bool)

(assert (=> b!5219432 (= e!3248847 (and tp!1463281 tp!1463278))))

(assert (=> b!5218266 (= tp!1462981 e!3248847)))

(assert (= (and b!5218266 ((_ is ElementMatch!14807) (h!67044 (exprs!4691 setElem!33171)))) b!5219431))

(assert (= (and b!5218266 ((_ is Concat!23652) (h!67044 (exprs!4691 setElem!33171)))) b!5219432))

(assert (= (and b!5218266 ((_ is Star!14807) (h!67044 (exprs!4691 setElem!33171)))) b!5219433))

(assert (= (and b!5218266 ((_ is Union!14807) (h!67044 (exprs!4691 setElem!33171)))) b!5219434))

(declare-fun b!5219435 () Bool)

(declare-fun e!3248848 () Bool)

(declare-fun tp!1463283 () Bool)

(declare-fun tp!1463284 () Bool)

(assert (=> b!5219435 (= e!3248848 (and tp!1463283 tp!1463284))))

(assert (=> b!5218266 (= tp!1462982 e!3248848)))

(assert (= (and b!5218266 ((_ is Cons!60596) (t!373888 (exprs!4691 setElem!33171)))) b!5219435))

(declare-fun b!5219438 () Bool)

(declare-fun e!3248849 () Bool)

(declare-fun tp!1463287 () Bool)

(assert (=> b!5219438 (= e!3248849 tp!1463287)))

(declare-fun b!5219439 () Bool)

(declare-fun tp!1463289 () Bool)

(declare-fun tp!1463286 () Bool)

(assert (=> b!5219439 (= e!3248849 (and tp!1463289 tp!1463286))))

(declare-fun b!5219436 () Bool)

(assert (=> b!5219436 (= e!3248849 tp_is_empty!38867)))

(declare-fun b!5219437 () Bool)

(declare-fun tp!1463288 () Bool)

(declare-fun tp!1463285 () Bool)

(assert (=> b!5219437 (= e!3248849 (and tp!1463288 tp!1463285))))

(assert (=> b!5218286 (= tp!1463002 e!3248849)))

(assert (= (and b!5218286 ((_ is ElementMatch!14807) (regOne!30126 (regTwo!30126 r!7292)))) b!5219436))

(assert (= (and b!5218286 ((_ is Concat!23652) (regOne!30126 (regTwo!30126 r!7292)))) b!5219437))

(assert (= (and b!5218286 ((_ is Star!14807) (regOne!30126 (regTwo!30126 r!7292)))) b!5219438))

(assert (= (and b!5218286 ((_ is Union!14807) (regOne!30126 (regTwo!30126 r!7292)))) b!5219439))

(declare-fun b!5219442 () Bool)

(declare-fun e!3248850 () Bool)

(declare-fun tp!1463292 () Bool)

(assert (=> b!5219442 (= e!3248850 tp!1463292)))

(declare-fun b!5219443 () Bool)

(declare-fun tp!1463294 () Bool)

(declare-fun tp!1463291 () Bool)

(assert (=> b!5219443 (= e!3248850 (and tp!1463294 tp!1463291))))

(declare-fun b!5219440 () Bool)

(assert (=> b!5219440 (= e!3248850 tp_is_empty!38867)))

(declare-fun b!5219441 () Bool)

(declare-fun tp!1463293 () Bool)

(declare-fun tp!1463290 () Bool)

(assert (=> b!5219441 (= e!3248850 (and tp!1463293 tp!1463290))))

(assert (=> b!5218286 (= tp!1462999 e!3248850)))

(assert (= (and b!5218286 ((_ is ElementMatch!14807) (regTwo!30126 (regTwo!30126 r!7292)))) b!5219440))

(assert (= (and b!5218286 ((_ is Concat!23652) (regTwo!30126 (regTwo!30126 r!7292)))) b!5219441))

(assert (= (and b!5218286 ((_ is Star!14807) (regTwo!30126 (regTwo!30126 r!7292)))) b!5219442))

(assert (= (and b!5218286 ((_ is Union!14807) (regTwo!30126 (regTwo!30126 r!7292)))) b!5219443))

(declare-fun b!5219446 () Bool)

(declare-fun e!3248851 () Bool)

(declare-fun tp!1463297 () Bool)

(assert (=> b!5219446 (= e!3248851 tp!1463297)))

(declare-fun b!5219447 () Bool)

(declare-fun tp!1463299 () Bool)

(declare-fun tp!1463296 () Bool)

(assert (=> b!5219447 (= e!3248851 (and tp!1463299 tp!1463296))))

(declare-fun b!5219444 () Bool)

(assert (=> b!5219444 (= e!3248851 tp_is_empty!38867)))

(declare-fun b!5219445 () Bool)

(declare-fun tp!1463298 () Bool)

(declare-fun tp!1463295 () Bool)

(assert (=> b!5219445 (= e!3248851 (and tp!1463298 tp!1463295))))

(assert (=> b!5218287 (= tp!1463001 e!3248851)))

(assert (= (and b!5218287 ((_ is ElementMatch!14807) (reg!15136 (regTwo!30126 r!7292)))) b!5219444))

(assert (= (and b!5218287 ((_ is Concat!23652) (reg!15136 (regTwo!30126 r!7292)))) b!5219445))

(assert (= (and b!5218287 ((_ is Star!14807) (reg!15136 (regTwo!30126 r!7292)))) b!5219446))

(assert (= (and b!5218287 ((_ is Union!14807) (reg!15136 (regTwo!30126 r!7292)))) b!5219447))

(declare-fun b!5219450 () Bool)

(declare-fun e!3248852 () Bool)

(declare-fun tp!1463302 () Bool)

(assert (=> b!5219450 (= e!3248852 tp!1463302)))

(declare-fun b!5219451 () Bool)

(declare-fun tp!1463304 () Bool)

(declare-fun tp!1463301 () Bool)

(assert (=> b!5219451 (= e!3248852 (and tp!1463304 tp!1463301))))

(declare-fun b!5219448 () Bool)

(assert (=> b!5219448 (= e!3248852 tp_is_empty!38867)))

(declare-fun b!5219449 () Bool)

(declare-fun tp!1463303 () Bool)

(declare-fun tp!1463300 () Bool)

(assert (=> b!5219449 (= e!3248852 (and tp!1463303 tp!1463300))))

(assert (=> b!5218259 (= tp!1462975 e!3248852)))

(assert (= (and b!5218259 ((_ is ElementMatch!14807) (regOne!30126 (reg!15136 r!7292)))) b!5219448))

(assert (= (and b!5218259 ((_ is Concat!23652) (regOne!30126 (reg!15136 r!7292)))) b!5219449))

(assert (= (and b!5218259 ((_ is Star!14807) (regOne!30126 (reg!15136 r!7292)))) b!5219450))

(assert (= (and b!5218259 ((_ is Union!14807) (regOne!30126 (reg!15136 r!7292)))) b!5219451))

(declare-fun b!5219454 () Bool)

(declare-fun e!3248853 () Bool)

(declare-fun tp!1463307 () Bool)

(assert (=> b!5219454 (= e!3248853 tp!1463307)))

(declare-fun b!5219455 () Bool)

(declare-fun tp!1463309 () Bool)

(declare-fun tp!1463306 () Bool)

(assert (=> b!5219455 (= e!3248853 (and tp!1463309 tp!1463306))))

(declare-fun b!5219452 () Bool)

(assert (=> b!5219452 (= e!3248853 tp_is_empty!38867)))

(declare-fun b!5219453 () Bool)

(declare-fun tp!1463308 () Bool)

(declare-fun tp!1463305 () Bool)

(assert (=> b!5219453 (= e!3248853 (and tp!1463308 tp!1463305))))

(assert (=> b!5218259 (= tp!1462972 e!3248853)))

(assert (= (and b!5218259 ((_ is ElementMatch!14807) (regTwo!30126 (reg!15136 r!7292)))) b!5219452))

(assert (= (and b!5218259 ((_ is Concat!23652) (regTwo!30126 (reg!15136 r!7292)))) b!5219453))

(assert (= (and b!5218259 ((_ is Star!14807) (regTwo!30126 (reg!15136 r!7292)))) b!5219454))

(assert (= (and b!5218259 ((_ is Union!14807) (regTwo!30126 (reg!15136 r!7292)))) b!5219455))

(declare-fun b!5219456 () Bool)

(declare-fun e!3248854 () Bool)

(declare-fun tp!1463310 () Bool)

(declare-fun tp!1463311 () Bool)

(assert (=> b!5219456 (= e!3248854 (and tp!1463310 tp!1463311))))

(assert (=> b!5218280 (= tp!1462992 e!3248854)))

(assert (= (and b!5218280 ((_ is Cons!60596) (exprs!4691 (h!67046 (t!373890 zl!343))))) b!5219456))

(declare-fun b!5219459 () Bool)

(declare-fun e!3248855 () Bool)

(declare-fun tp!1463314 () Bool)

(assert (=> b!5219459 (= e!3248855 tp!1463314)))

(declare-fun b!5219460 () Bool)

(declare-fun tp!1463316 () Bool)

(declare-fun tp!1463313 () Bool)

(assert (=> b!5219460 (= e!3248855 (and tp!1463316 tp!1463313))))

(declare-fun b!5219457 () Bool)

(assert (=> b!5219457 (= e!3248855 tp_is_empty!38867)))

(declare-fun b!5219458 () Bool)

(declare-fun tp!1463315 () Bool)

(declare-fun tp!1463312 () Bool)

(assert (=> b!5219458 (= e!3248855 (and tp!1463315 tp!1463312))))

(assert (=> b!5218260 (= tp!1462974 e!3248855)))

(assert (= (and b!5218260 ((_ is ElementMatch!14807) (reg!15136 (reg!15136 r!7292)))) b!5219457))

(assert (= (and b!5218260 ((_ is Concat!23652) (reg!15136 (reg!15136 r!7292)))) b!5219458))

(assert (= (and b!5218260 ((_ is Star!14807) (reg!15136 (reg!15136 r!7292)))) b!5219459))

(assert (= (and b!5218260 ((_ is Union!14807) (reg!15136 (reg!15136 r!7292)))) b!5219460))

(declare-fun b!5219463 () Bool)

(declare-fun e!3248856 () Bool)

(declare-fun tp!1463319 () Bool)

(assert (=> b!5219463 (= e!3248856 tp!1463319)))

(declare-fun b!5219464 () Bool)

(declare-fun tp!1463321 () Bool)

(declare-fun tp!1463318 () Bool)

(assert (=> b!5219464 (= e!3248856 (and tp!1463321 tp!1463318))))

(declare-fun b!5219461 () Bool)

(assert (=> b!5219461 (= e!3248856 tp_is_empty!38867)))

(declare-fun b!5219462 () Bool)

(declare-fun tp!1463320 () Bool)

(declare-fun tp!1463317 () Bool)

(assert (=> b!5219462 (= e!3248856 (and tp!1463320 tp!1463317))))

(assert (=> b!5218288 (= tp!1463003 e!3248856)))

(assert (= (and b!5218288 ((_ is ElementMatch!14807) (regOne!30127 (regTwo!30126 r!7292)))) b!5219461))

(assert (= (and b!5218288 ((_ is Concat!23652) (regOne!30127 (regTwo!30126 r!7292)))) b!5219462))

(assert (= (and b!5218288 ((_ is Star!14807) (regOne!30127 (regTwo!30126 r!7292)))) b!5219463))

(assert (= (and b!5218288 ((_ is Union!14807) (regOne!30127 (regTwo!30126 r!7292)))) b!5219464))

(declare-fun b!5219467 () Bool)

(declare-fun e!3248857 () Bool)

(declare-fun tp!1463324 () Bool)

(assert (=> b!5219467 (= e!3248857 tp!1463324)))

(declare-fun b!5219468 () Bool)

(declare-fun tp!1463326 () Bool)

(declare-fun tp!1463323 () Bool)

(assert (=> b!5219468 (= e!3248857 (and tp!1463326 tp!1463323))))

(declare-fun b!5219465 () Bool)

(assert (=> b!5219465 (= e!3248857 tp_is_empty!38867)))

(declare-fun b!5219466 () Bool)

(declare-fun tp!1463325 () Bool)

(declare-fun tp!1463322 () Bool)

(assert (=> b!5219466 (= e!3248857 (and tp!1463325 tp!1463322))))

(assert (=> b!5218288 (= tp!1463000 e!3248857)))

(assert (= (and b!5218288 ((_ is ElementMatch!14807) (regTwo!30127 (regTwo!30126 r!7292)))) b!5219465))

(assert (= (and b!5218288 ((_ is Concat!23652) (regTwo!30127 (regTwo!30126 r!7292)))) b!5219466))

(assert (= (and b!5218288 ((_ is Star!14807) (regTwo!30127 (regTwo!30126 r!7292)))) b!5219467))

(assert (= (and b!5218288 ((_ is Union!14807) (regTwo!30127 (regTwo!30126 r!7292)))) b!5219468))

(declare-fun b!5219471 () Bool)

(declare-fun e!3248858 () Bool)

(declare-fun tp!1463329 () Bool)

(assert (=> b!5219471 (= e!3248858 tp!1463329)))

(declare-fun b!5219472 () Bool)

(declare-fun tp!1463331 () Bool)

(declare-fun tp!1463328 () Bool)

(assert (=> b!5219472 (= e!3248858 (and tp!1463331 tp!1463328))))

(declare-fun b!5219469 () Bool)

(assert (=> b!5219469 (= e!3248858 tp_is_empty!38867)))

(declare-fun b!5219470 () Bool)

(declare-fun tp!1463330 () Bool)

(declare-fun tp!1463327 () Bool)

(assert (=> b!5219470 (= e!3248858 (and tp!1463330 tp!1463327))))

(assert (=> b!5218261 (= tp!1462976 e!3248858)))

(assert (= (and b!5218261 ((_ is ElementMatch!14807) (regOne!30127 (reg!15136 r!7292)))) b!5219469))

(assert (= (and b!5218261 ((_ is Concat!23652) (regOne!30127 (reg!15136 r!7292)))) b!5219470))

(assert (= (and b!5218261 ((_ is Star!14807) (regOne!30127 (reg!15136 r!7292)))) b!5219471))

(assert (= (and b!5218261 ((_ is Union!14807) (regOne!30127 (reg!15136 r!7292)))) b!5219472))

(declare-fun b!5219475 () Bool)

(declare-fun e!3248859 () Bool)

(declare-fun tp!1463334 () Bool)

(assert (=> b!5219475 (= e!3248859 tp!1463334)))

(declare-fun b!5219476 () Bool)

(declare-fun tp!1463336 () Bool)

(declare-fun tp!1463333 () Bool)

(assert (=> b!5219476 (= e!3248859 (and tp!1463336 tp!1463333))))

(declare-fun b!5219473 () Bool)

(assert (=> b!5219473 (= e!3248859 tp_is_empty!38867)))

(declare-fun b!5219474 () Bool)

(declare-fun tp!1463335 () Bool)

(declare-fun tp!1463332 () Bool)

(assert (=> b!5219474 (= e!3248859 (and tp!1463335 tp!1463332))))

(assert (=> b!5218261 (= tp!1462973 e!3248859)))

(assert (= (and b!5218261 ((_ is ElementMatch!14807) (regTwo!30127 (reg!15136 r!7292)))) b!5219473))

(assert (= (and b!5218261 ((_ is Concat!23652) (regTwo!30127 (reg!15136 r!7292)))) b!5219474))

(assert (= (and b!5218261 ((_ is Star!14807) (regTwo!30127 (reg!15136 r!7292)))) b!5219475))

(assert (= (and b!5218261 ((_ is Union!14807) (regTwo!30127 (reg!15136 r!7292)))) b!5219476))

(declare-fun b!5219479 () Bool)

(declare-fun e!3248860 () Bool)

(declare-fun tp!1463339 () Bool)

(assert (=> b!5219479 (= e!3248860 tp!1463339)))

(declare-fun b!5219480 () Bool)

(declare-fun tp!1463341 () Bool)

(declare-fun tp!1463338 () Bool)

(assert (=> b!5219480 (= e!3248860 (and tp!1463341 tp!1463338))))

(declare-fun b!5219477 () Bool)

(assert (=> b!5219477 (= e!3248860 tp_is_empty!38867)))

(declare-fun b!5219478 () Bool)

(declare-fun tp!1463340 () Bool)

(declare-fun tp!1463337 () Bool)

(assert (=> b!5219478 (= e!3248860 (and tp!1463340 tp!1463337))))

(assert (=> b!5218267 (= tp!1462983 e!3248860)))

(assert (= (and b!5218267 ((_ is ElementMatch!14807) (h!67044 (exprs!4691 (h!67046 zl!343))))) b!5219477))

(assert (= (and b!5218267 ((_ is Concat!23652) (h!67044 (exprs!4691 (h!67046 zl!343))))) b!5219478))

(assert (= (and b!5218267 ((_ is Star!14807) (h!67044 (exprs!4691 (h!67046 zl!343))))) b!5219479))

(assert (= (and b!5218267 ((_ is Union!14807) (h!67044 (exprs!4691 (h!67046 zl!343))))) b!5219480))

(declare-fun b!5219481 () Bool)

(declare-fun e!3248861 () Bool)

(declare-fun tp!1463342 () Bool)

(declare-fun tp!1463343 () Bool)

(assert (=> b!5219481 (= e!3248861 (and tp!1463342 tp!1463343))))

(assert (=> b!5218267 (= tp!1462984 e!3248861)))

(assert (= (and b!5218267 ((_ is Cons!60596) (t!373888 (exprs!4691 (h!67046 zl!343))))) b!5219481))

(declare-fun b_lambda!201827 () Bool)

(assert (= b_lambda!201819 (or b!5217508 b_lambda!201827)))

(assert (=> d!1682819 d!1682379))

(declare-fun b_lambda!201829 () Bool)

(assert (= b_lambda!201821 (or d!1682373 b_lambda!201829)))

(declare-fun bs!1212241 () Bool)

(declare-fun d!1682867 () Bool)

(assert (= bs!1212241 (and d!1682867 d!1682373)))

(assert (=> bs!1212241 (= (dynLambda!23944 lambda!261824 (h!67044 lt!2143157)) (validRegex!6543 (h!67044 lt!2143157)))))

(declare-fun m!6267390 () Bool)

(assert (=> bs!1212241 m!6267390))

(assert (=> b!5219250 d!1682867))

(declare-fun b_lambda!201831 () Bool)

(assert (= b_lambda!201815 (or d!1682375 b_lambda!201831)))

(declare-fun bs!1212242 () Bool)

(declare-fun d!1682869 () Bool)

(assert (= bs!1212242 (and d!1682869 d!1682375)))

(assert (=> bs!1212242 (= (dynLambda!23944 lambda!261825 (h!67044 (exprs!4691 setElem!33171))) (validRegex!6543 (h!67044 (exprs!4691 setElem!33171))))))

(declare-fun m!6267392 () Bool)

(assert (=> bs!1212242 m!6267392))

(assert (=> b!5219215 d!1682869))

(declare-fun b_lambda!201833 () Bool)

(assert (= b_lambda!201825 (or d!1682371 b_lambda!201833)))

(declare-fun bs!1212243 () Bool)

(declare-fun d!1682871 () Bool)

(assert (= bs!1212243 (and d!1682871 d!1682371)))

(assert (=> bs!1212243 (= (dynLambda!23944 lambda!261821 (h!67044 (unfocusZipperList!249 zl!343))) (validRegex!6543 (h!67044 (unfocusZipperList!249 zl!343))))))

(declare-fun m!6267394 () Bool)

(assert (=> bs!1212243 m!6267394))

(assert (=> b!5219322 d!1682871))

(declare-fun b_lambda!201835 () Bool)

(assert (= b_lambda!201813 (or b!5217508 b_lambda!201835)))

(assert (=> d!1682755 d!1682377))

(declare-fun b_lambda!201837 () Bool)

(assert (= b_lambda!201817 (or d!1682369 b_lambda!201837)))

(declare-fun bs!1212244 () Bool)

(declare-fun d!1682873 () Bool)

(assert (= bs!1212244 (and d!1682873 d!1682369)))

(assert (=> bs!1212244 (= (dynLambda!23944 lambda!261818 (h!67044 (exprs!4691 (h!67046 zl!343)))) (validRegex!6543 (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(declare-fun m!6267396 () Bool)

(assert (=> bs!1212244 m!6267396))

(assert (=> b!5219219 d!1682873))

(declare-fun b_lambda!201839 () Bool)

(assert (= b_lambda!201823 (or d!1682319 b_lambda!201839)))

(declare-fun bs!1212245 () Bool)

(declare-fun d!1682875 () Bool)

(assert (= bs!1212245 (and d!1682875 d!1682319)))

(assert (=> bs!1212245 (= (dynLambda!23944 lambda!261815 (h!67044 (exprs!4691 (h!67046 zl!343)))) (validRegex!6543 (h!67044 (exprs!4691 (h!67046 zl!343)))))))

(assert (=> bs!1212245 m!6267396))

(assert (=> b!5219311 d!1682875))

(check-sat (not d!1682659) (not d!1682821) (not bm!368234) (not d!1682745) (not b!5219076) (not b!5219087) (not d!1682705) (not b!5219048) (not b!5219035) (not b!5219460) (not b!5219381) (not b!5219412) (not bm!368196) (not bm!368255) (not b!5219145) (not b!5218964) (not b!5219082) (not b!5219045) (not b!5219433) (not b!5219161) (not b!5219083) (not b!5219319) (not b_lambda!201781) (not d!1682665) (not b!5219308) (not b!5219334) (not b!5219371) (not d!1682819) (not b!5218937) (not bs!1212245) (not b!5219387) (not b!5218959) (not b_lambda!201835) (not b!5219453) (not b!5218920) (not b!5219358) (not d!1682805) (not d!1682849) (not bm!368227) (not b!5219462) (not b!5219395) (not bm!368214) (not d!1682793) (not b!5219432) (not b!5218923) (not d!1682645) (not b!5219391) (not b!5219283) (not b!5219027) (not b!5219034) (not b!5218931) (not b!5219463) (not b!5218913) (not b!5219063) (not b!5219011) (not b!5219367) (not b!5219389) (not b!5219101) (not bm!368158) (not b!5219400) (not b!5219379) (not d!1682653) (not d!1682783) tp_is_empty!38867 (not b!5219421) (not bm!368165) (not b!5219356) (not bm!368170) (not bm!368263) (not b!5219205) (not d!1682667) (not b!5219479) (not bm!368192) (not d!1682813) (not b!5219106) (not bm!368241) (not bm!368163) (not b!5219364) (not b_lambda!201837) (not b!5219025) (not d!1682731) (not d!1682695) (not b!5219102) (not b!5219414) (not b!5219445) (not b!5218966) (not b!5219218) (not b!5219446) (not b!5219418) (not b!5219026) (not b!5219468) (not bm!368266) (not b!5218978) (not b!5219372) (not b!5219438) (not b!5219458) (not b!5218893) (not bm!368229) (not b!5218989) (not setNonEmpty!33186) (not b!5219312) (not b_lambda!201827) (not b!5219182) (not bs!1212241) (not b!5219481) (not b!5219338) (not d!1682711) (not b!5219471) (not b!5219208) (not b!5219217) (not b!5219355) (not d!1682803) (not d!1682741) (not b!5219406) (not bm!368232) (not b!5219220) (not bm!368225) (not bm!368153) (not d!1682781) (not b!5218965) (not d!1682693) (not bm!368178) (not bm!368184) (not b!5219248) (not b!5219031) (not b!5219410) (not d!1682669) (not b!5219181) (not bm!368251) (not bm!368188) (not b!5219152) (not d!1682673) (not b!5219426) (not bm!368185) (not b!5219368) (not b!5219423) (not b!5219196) (not b!5218921) (not b!5219434) (not d!1682863) (not b!5219435) (not b!5219403) (not bm!368262) (not b!5218953) (not d!1682697) (not b!5219464) (not b!5219178) (not bm!368179) (not b_lambda!201831) (not b!5219110) (not d!1682799) (not bm!368157) (not b!5219204) (not b!5219040) (not b!5219369) (not bm!368261) (not b!5219455) (not d!1682727) (not b!5219447) (not bm!368167) (not b!5219466) (not bm!368190) (not b!5219380) (not d!1682635) (not b!5219456) (not b!5219416) (not b!5219430) (not b!5219079) (not b!5219053) (not d!1682715) (not b!5219114) (not b_lambda!201829) (not d!1682861) (not bm!368160) (not b!5219000) (not bm!368156) (not b!5218892) (not b!5219373) (not d!1682729) (not b!5219425) (not b!5219189) (not b!5219393) (not b!5219451) (not b!5219357) (not b!5218918) (not setNonEmpty!33185) (not b!5219242) (not bm!368246) (not b!5219362) (not b!5219216) (not bm!368197) (not b!5219427) (not b!5219377) (not b!5219408) (not b!5219392) (not d!1682749) (not b!5219109) (not b!5219399) (not d!1682855) (not b!5219014) (not d!1682733) (not b_lambda!201833) (not b!5219153) (not b!5218924) (not bm!368240) (not b!5218936) (not b!5219286) (not b!5219049) (not b!5219467) (not b!5219041) (not b!5219470) (not b!5219450) (not d!1682795) (not b!5219090) (not b!5218938) (not bs!1212244) (not b!5219383) (not b!5219397) (not bm!368176) (not b!5219197) (not b!5219375) (not bm!368204) (not bm!368235) (not bm!368222) (not b!5219241) (not b!5219472) (not d!1682851) (not d!1682699) (not bm!368195) (not b!5219429) (not bm!368172) (not d!1682771) (not b!5219404) (not b!5219396) (not d!1682763) (not b!5219116) (not d!1682815) (not b!5219169) (not b!5219441) (not b!5219442) (not bs!1212243) (not b!5219201) (not b!5219337) (not bm!368248) (not b!5219287) (not b!5219086) (not b!5219419) (not b!5219103) (not bm!368166) (not bm!368259) (not bm!368221) (not b!5219115) (not d!1682755) (not bm!368247) (not b!5219475) (not b!5219384) (not b!5219361) (not b!5218917) (not b!5219365) (not d!1682655) (not b!5219054) (not d!1682701) (not b!5219401) (not b!5219239) (not b!5219480) (not b!5219459) (not b!5219474) (not d!1682823) (not bm!368252) (not d!1682773) (not b!5219413) (not bm!368173) (not bm!368218) (not b!5219209) (not b!5219015) (not bm!368182) (not b!5219080) (not b!5219075) (not d!1682713) (not b!5219055) (not b!5218922) (not bm!368193) (not b!5219162) (not b!5219202) (not bs!1212242) (not b!5219028) (not b!5219417) (not d!1682739) (not d!1682817) (not d!1682717) (not b!5219476) (not d!1682853) (not bm!368205) (not b!5219160) (not d!1682725) (not b!5219478) (not bm!368219) (not d!1682801) (not b!5219323) (not bm!368228) (not b!5219443) (not b!5219385) (not b_lambda!201839) (not d!1682737) (not b!5219352) (not b!5219039) (not b!5219251) (not b!5219449) (not b!5219439) (not bm!368250) (not b!5219192) (not bm!368265) (not bm!368264) (not bm!368244) (not bm!368224) (not bm!368203) (not b_lambda!201783) (not d!1682775) (not bm!368249) (not bm!368191) (not bm!368155) (not b!5218928) (not b!5219428) (not bm!368201) (not b!5218932) (not bm!368254) (not b!5218942) (not setNonEmpty!33187) (not b!5218956) (not d!1682761) (not d!1682787) (not b!5219301) (not b!5219409) (not b!5219437) (not b!5219405) (not b!5219376) (not bm!368194) (not b!5218906) (not b!5218960) (not d!1682633) (not b!5219085) (not bm!368215) (not b!5219388) (not b!5219422) (not b!5219454) (not b!5219193))
(check-sat)
