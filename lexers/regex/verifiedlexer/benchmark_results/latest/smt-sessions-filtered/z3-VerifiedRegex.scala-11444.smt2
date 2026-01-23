; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!617930 () Bool)

(assert start!617930)

(declare-fun b!6196689 () Bool)

(assert (=> b!6196689 true))

(assert (=> b!6196689 true))

(declare-fun lambda!338500 () Int)

(declare-fun lambda!338499 () Int)

(assert (=> b!6196689 (not (= lambda!338500 lambda!338499))))

(assert (=> b!6196689 true))

(assert (=> b!6196689 true))

(declare-fun b!6196663 () Bool)

(assert (=> b!6196663 true))

(declare-fun b!6196660 () Bool)

(declare-fun e!3773699 () Bool)

(declare-fun e!3773693 () Bool)

(assert (=> b!6196660 (= e!3773699 e!3773693)))

(declare-fun res!2563262 () Bool)

(assert (=> b!6196660 (=> res!2563262 e!3773693)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32540 0))(
  ( (C!32541 (val!25972 Int)) )
))
(declare-datatypes ((Regex!16135 0))(
  ( (ElementMatch!16135 (c!1118416 C!32540)) (Concat!24980 (regOne!32782 Regex!16135) (regTwo!32782 Regex!16135)) (EmptyExpr!16135) (Star!16135 (reg!16464 Regex!16135)) (EmptyLang!16135) (Union!16135 (regOne!32783 Regex!16135) (regTwo!32783 Regex!16135)) )
))
(declare-datatypes ((List!64704 0))(
  ( (Nil!64580) (Cons!64580 (h!71028 Regex!16135) (t!378218 List!64704)) )
))
(declare-datatypes ((Context!11038 0))(
  ( (Context!11039 (exprs!6019 List!64704)) )
))
(declare-fun lt!2342127 () (InoxSet Context!11038))

(declare-fun lt!2342088 () (InoxSet Context!11038))

(assert (=> b!6196660 (= res!2563262 (not (= lt!2342127 lt!2342088)))))

(declare-fun lt!2342128 () (InoxSet Context!11038))

(declare-fun lt!2342093 () (InoxSet Context!11038))

(assert (=> b!6196660 (= lt!2342088 ((_ map or) lt!2342128 lt!2342093))))

(declare-fun r!7292 () Regex!16135)

(declare-datatypes ((List!64705 0))(
  ( (Nil!64581) (Cons!64581 (h!71029 C!32540) (t!378219 List!64705)) )
))
(declare-fun s!2326 () List!64705)

(declare-fun lt!2342096 () Context!11038)

(declare-fun derivationStepZipperDown!1383 (Regex!16135 Context!11038 C!32540) (InoxSet Context!11038))

(assert (=> b!6196660 (= lt!2342093 (derivationStepZipperDown!1383 (regTwo!32783 (regOne!32782 r!7292)) lt!2342096 (h!71029 s!2326)))))

(assert (=> b!6196660 (= lt!2342128 (derivationStepZipperDown!1383 (regOne!32783 (regOne!32782 r!7292)) lt!2342096 (h!71029 s!2326)))))

(declare-fun b!6196661 () Bool)

(declare-fun e!3773697 () Bool)

(declare-fun e!3773690 () Bool)

(assert (=> b!6196661 (= e!3773697 (not e!3773690))))

(declare-fun res!2563266 () Bool)

(assert (=> b!6196661 (=> res!2563266 e!3773690)))

(declare-datatypes ((List!64706 0))(
  ( (Nil!64582) (Cons!64582 (h!71030 Context!11038) (t!378220 List!64706)) )
))
(declare-fun zl!343 () List!64706)

(get-info :version)

(assert (=> b!6196661 (= res!2563266 (not ((_ is Cons!64582) zl!343)))))

(declare-fun lt!2342115 () Bool)

(declare-fun matchRSpec!3236 (Regex!16135 List!64705) Bool)

(assert (=> b!6196661 (= lt!2342115 (matchRSpec!3236 r!7292 s!2326))))

(declare-fun matchR!8318 (Regex!16135 List!64705) Bool)

(assert (=> b!6196661 (= lt!2342115 (matchR!8318 r!7292 s!2326))))

(declare-datatypes ((Unit!157859 0))(
  ( (Unit!157860) )
))
(declare-fun lt!2342118 () Unit!157859)

(declare-fun mainMatchTheorem!3236 (Regex!16135 List!64705) Unit!157859)

(assert (=> b!6196661 (= lt!2342118 (mainMatchTheorem!3236 r!7292 s!2326))))

(declare-fun b!6196662 () Bool)

(declare-fun e!3773687 () Bool)

(declare-fun lt!2342101 () (InoxSet Context!11038))

(declare-fun matchZipper!2147 ((InoxSet Context!11038) List!64705) Bool)

(assert (=> b!6196662 (= e!3773687 (matchZipper!2147 lt!2342101 (t!378219 s!2326)))))

(declare-fun e!3773704 () Bool)

(assert (=> b!6196663 (= e!3773704 e!3773699)))

(declare-fun res!2563259 () Bool)

(assert (=> b!6196663 (=> res!2563259 e!3773699)))

(assert (=> b!6196663 (= res!2563259 (or (and ((_ is ElementMatch!16135) (regOne!32782 r!7292)) (= (c!1118416 (regOne!32782 r!7292)) (h!71029 s!2326))) (not ((_ is Union!16135) (regOne!32782 r!7292)))))))

(declare-fun lt!2342121 () Unit!157859)

(declare-fun e!3773700 () Unit!157859)

(assert (=> b!6196663 (= lt!2342121 e!3773700)))

(declare-fun c!1118413 () Bool)

(declare-fun nullable!6128 (Regex!16135) Bool)

(assert (=> b!6196663 (= c!1118413 (nullable!6128 (h!71028 (exprs!6019 (h!71030 zl!343)))))))

(declare-fun lambda!338501 () Int)

(declare-fun z!1189 () (InoxSet Context!11038))

(declare-fun flatMap!1640 ((InoxSet Context!11038) Int) (InoxSet Context!11038))

(declare-fun derivationStepZipperUp!1309 (Context!11038 C!32540) (InoxSet Context!11038))

(assert (=> b!6196663 (= (flatMap!1640 z!1189 lambda!338501) (derivationStepZipperUp!1309 (h!71030 zl!343) (h!71029 s!2326)))))

(declare-fun lt!2342082 () Unit!157859)

(declare-fun lemmaFlatMapOnSingletonSet!1166 ((InoxSet Context!11038) Context!11038 Int) Unit!157859)

(assert (=> b!6196663 (= lt!2342082 (lemmaFlatMapOnSingletonSet!1166 z!1189 (h!71030 zl!343) lambda!338501))))

(assert (=> b!6196663 (= lt!2342101 (derivationStepZipperUp!1309 lt!2342096 (h!71029 s!2326)))))

(assert (=> b!6196663 (= lt!2342127 (derivationStepZipperDown!1383 (h!71028 (exprs!6019 (h!71030 zl!343))) lt!2342096 (h!71029 s!2326)))))

(assert (=> b!6196663 (= lt!2342096 (Context!11039 (t!378218 (exprs!6019 (h!71030 zl!343)))))))

(declare-fun lt!2342109 () (InoxSet Context!11038))

(assert (=> b!6196663 (= lt!2342109 (derivationStepZipperUp!1309 (Context!11039 (Cons!64580 (h!71028 (exprs!6019 (h!71030 zl!343))) (t!378218 (exprs!6019 (h!71030 zl!343))))) (h!71029 s!2326)))))

(declare-fun b!6196664 () Bool)

(declare-fun e!3773688 () Bool)

(assert (=> b!6196664 (= e!3773688 (matchZipper!2147 lt!2342101 (t!378219 s!2326)))))

(declare-fun b!6196665 () Bool)

(declare-fun e!3773706 () Unit!157859)

(declare-fun Unit!157861 () Unit!157859)

(assert (=> b!6196665 (= e!3773706 Unit!157861)))

(declare-fun res!2563258 () Bool)

(declare-fun e!3773701 () Bool)

(assert (=> start!617930 (=> (not res!2563258) (not e!3773701))))

(declare-fun validRegex!7871 (Regex!16135) Bool)

(assert (=> start!617930 (= res!2563258 (validRegex!7871 r!7292))))

(assert (=> start!617930 e!3773701))

(declare-fun e!3773703 () Bool)

(assert (=> start!617930 e!3773703))

(declare-fun condSetEmpty!42046 () Bool)

(assert (=> start!617930 (= condSetEmpty!42046 (= z!1189 ((as const (Array Context!11038 Bool)) false)))))

(declare-fun setRes!42046 () Bool)

(assert (=> start!617930 setRes!42046))

(declare-fun e!3773683 () Bool)

(assert (=> start!617930 e!3773683))

(declare-fun e!3773702 () Bool)

(assert (=> start!617930 e!3773702))

(declare-fun b!6196666 () Bool)

(declare-fun res!2563261 () Bool)

(assert (=> b!6196666 (=> res!2563261 e!3773690)))

(declare-fun generalisedConcat!1732 (List!64704) Regex!16135)

(assert (=> b!6196666 (= res!2563261 (not (= r!7292 (generalisedConcat!1732 (exprs!6019 (h!71030 zl!343))))))))

(declare-fun b!6196667 () Bool)

(declare-fun e!3773682 () Bool)

(declare-fun e!3773689 () Bool)

(assert (=> b!6196667 (= e!3773682 e!3773689)))

(declare-fun res!2563255 () Bool)

(assert (=> b!6196667 (=> res!2563255 e!3773689)))

(declare-fun lt!2342126 () Int)

(declare-fun lt!2342104 () Int)

(assert (=> b!6196667 (= res!2563255 (>= lt!2342126 lt!2342104))))

(declare-fun zipperDepthTotal!318 (List!64706) Int)

(assert (=> b!6196667 (= lt!2342104 (zipperDepthTotal!318 zl!343))))

(declare-fun lt!2342085 () List!64706)

(assert (=> b!6196667 (= lt!2342126 (zipperDepthTotal!318 lt!2342085))))

(declare-fun lt!2342102 () Context!11038)

(assert (=> b!6196667 (= lt!2342085 (Cons!64582 lt!2342102 Nil!64582))))

(declare-fun b!6196668 () Bool)

(declare-fun e!3773684 () Bool)

(assert (=> b!6196668 (= e!3773689 e!3773684)))

(declare-fun res!2563270 () Bool)

(assert (=> b!6196668 (=> res!2563270 e!3773684)))

(declare-fun lt!2342130 () List!64706)

(assert (=> b!6196668 (= res!2563270 (>= (zipperDepthTotal!318 lt!2342130) lt!2342104))))

(declare-fun lt!2342100 () Context!11038)

(assert (=> b!6196668 (= lt!2342130 (Cons!64582 lt!2342100 Nil!64582))))

(declare-fun b!6196669 () Bool)

(declare-fun res!2563265 () Bool)

(assert (=> b!6196669 (=> res!2563265 e!3773690)))

(declare-fun generalisedUnion!1979 (List!64704) Regex!16135)

(declare-fun unfocusZipperList!1556 (List!64706) List!64704)

(assert (=> b!6196669 (= res!2563265 (not (= r!7292 (generalisedUnion!1979 (unfocusZipperList!1556 zl!343)))))))

(declare-fun setElem!42046 () Context!11038)

(declare-fun e!3773686 () Bool)

(declare-fun tp!1728574 () Bool)

(declare-fun setNonEmpty!42046 () Bool)

(declare-fun inv!83584 (Context!11038) Bool)

(assert (=> setNonEmpty!42046 (= setRes!42046 (and tp!1728574 (inv!83584 setElem!42046) e!3773686))))

(declare-fun setRest!42046 () (InoxSet Context!11038))

(assert (=> setNonEmpty!42046 (= z!1189 ((_ map or) (store ((as const (Array Context!11038 Bool)) false) setElem!42046 true) setRest!42046))))

(declare-fun b!6196670 () Bool)

(declare-fun e!3773681 () Bool)

(declare-fun e!3773698 () Bool)

(assert (=> b!6196670 (= e!3773681 e!3773698)))

(declare-fun res!2563274 () Bool)

(assert (=> b!6196670 (=> res!2563274 e!3773698)))

(declare-fun lt!2342099 () Regex!16135)

(assert (=> b!6196670 (= res!2563274 (not (= r!7292 lt!2342099)))))

(assert (=> b!6196670 (= lt!2342099 (Concat!24980 (Union!16135 (regOne!32783 (regOne!32782 r!7292)) (regTwo!32783 (regOne!32782 r!7292))) (regTwo!32782 r!7292)))))

(declare-fun e!3773692 () Bool)

(declare-fun tp!1728573 () Bool)

(declare-fun b!6196671 () Bool)

(assert (=> b!6196671 (= e!3773683 (and (inv!83584 (h!71030 zl!343)) e!3773692 tp!1728573))))

(declare-fun b!6196672 () Bool)

(declare-fun e!3773685 () Bool)

(assert (=> b!6196672 (= e!3773693 e!3773685)))

(declare-fun res!2563271 () Bool)

(assert (=> b!6196672 (=> res!2563271 e!3773685)))

(declare-fun e!3773707 () Bool)

(assert (=> b!6196672 (= res!2563271 e!3773707)))

(declare-fun res!2563256 () Bool)

(assert (=> b!6196672 (=> (not res!2563256) (not e!3773707))))

(declare-fun lt!2342089 () Bool)

(assert (=> b!6196672 (= res!2563256 (not (= (matchZipper!2147 lt!2342127 (t!378219 s!2326)) lt!2342089)))))

(declare-fun e!3773695 () Bool)

(assert (=> b!6196672 (= (matchZipper!2147 lt!2342088 (t!378219 s!2326)) e!3773695)))

(declare-fun res!2563276 () Bool)

(assert (=> b!6196672 (=> res!2563276 e!3773695)))

(assert (=> b!6196672 (= res!2563276 lt!2342089)))

(assert (=> b!6196672 (= lt!2342089 (matchZipper!2147 lt!2342128 (t!378219 s!2326)))))

(declare-fun lt!2342095 () Unit!157859)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!966 ((InoxSet Context!11038) (InoxSet Context!11038) List!64705) Unit!157859)

(assert (=> b!6196672 (= lt!2342095 (lemmaZipperConcatMatchesSameAsBothZippers!966 lt!2342128 lt!2342093 (t!378219 s!2326)))))

(declare-fun b!6196673 () Bool)

(assert (=> b!6196673 (= e!3773695 (matchZipper!2147 lt!2342093 (t!378219 s!2326)))))

(declare-fun b!6196674 () Bool)

(declare-fun tp!1728571 () Bool)

(declare-fun tp!1728572 () Bool)

(assert (=> b!6196674 (= e!3773703 (and tp!1728571 tp!1728572))))

(declare-fun b!6196675 () Bool)

(declare-fun tp!1728567 () Bool)

(assert (=> b!6196675 (= e!3773692 tp!1728567)))

(declare-fun b!6196676 () Bool)

(declare-fun tp!1728565 () Bool)

(assert (=> b!6196676 (= e!3773686 tp!1728565)))

(declare-fun b!6196677 () Bool)

(declare-fun res!2563272 () Bool)

(assert (=> b!6196677 (=> (not res!2563272) (not e!3773701))))

(declare-fun toList!9919 ((InoxSet Context!11038)) List!64706)

(assert (=> b!6196677 (= res!2563272 (= (toList!9919 z!1189) zl!343))))

(declare-fun b!6196678 () Bool)

(declare-fun e!3773694 () Unit!157859)

(declare-fun Unit!157862 () Unit!157859)

(assert (=> b!6196678 (= e!3773694 Unit!157862)))

(declare-fun lt!2342108 () Unit!157859)

(assert (=> b!6196678 (= lt!2342108 (lemmaZipperConcatMatchesSameAsBothZippers!966 lt!2342128 lt!2342101 (t!378219 s!2326)))))

(declare-fun res!2563275 () Bool)

(assert (=> b!6196678 (= res!2563275 lt!2342089)))

(declare-fun e!3773696 () Bool)

(assert (=> b!6196678 (=> res!2563275 e!3773696)))

(assert (=> b!6196678 (= (matchZipper!2147 ((_ map or) lt!2342128 lt!2342101) (t!378219 s!2326)) e!3773696)))

(declare-fun b!6196679 () Bool)

(declare-fun tp_is_empty!41523 () Bool)

(declare-fun tp!1728570 () Bool)

(assert (=> b!6196679 (= e!3773702 (and tp_is_empty!41523 tp!1728570))))

(declare-fun b!6196680 () Bool)

(declare-fun e!3773691 () Bool)

(assert (=> b!6196680 (= e!3773698 e!3773691)))

(declare-fun res!2563264 () Bool)

(assert (=> b!6196680 (=> res!2563264 e!3773691)))

(declare-fun lt!2342097 () Regex!16135)

(declare-fun lt!2342122 () Regex!16135)

(declare-fun lt!2342087 () Regex!16135)

(assert (=> b!6196680 (= res!2563264 (or (not (= lt!2342087 (Concat!24980 (regOne!32783 (regOne!32782 r!7292)) lt!2342097))) (not (= lt!2342122 (Concat!24980 (regTwo!32783 (regOne!32782 r!7292)) lt!2342097))) (not (= (regTwo!32782 r!7292) lt!2342097))))))

(assert (=> b!6196680 (= lt!2342097 (generalisedConcat!1732 (t!378218 (exprs!6019 (h!71030 zl!343)))))))

(declare-fun b!6196681 () Bool)

(assert (=> b!6196681 (= e!3773691 (validRegex!7871 lt!2342099))))

(declare-fun lt!2342133 () Bool)

(declare-fun lt!2342116 () Regex!16135)

(assert (=> b!6196681 (= lt!2342133 (matchRSpec!3236 lt!2342116 s!2326))))

(declare-fun lt!2342111 () Unit!157859)

(assert (=> b!6196681 (= lt!2342111 (mainMatchTheorem!3236 lt!2342116 s!2326))))

(declare-fun lt!2342125 () Bool)

(assert (=> b!6196681 (= lt!2342125 lt!2342133)))

(assert (=> b!6196681 (= lt!2342133 (matchR!8318 lt!2342116 s!2326))))

(assert (=> b!6196681 (= lt!2342125 (matchR!8318 lt!2342099 s!2326))))

(assert (=> b!6196681 (= lt!2342116 (Union!16135 (Concat!24980 (regOne!32783 (regOne!32782 r!7292)) (regTwo!32782 r!7292)) (Concat!24980 (regTwo!32783 (regOne!32782 r!7292)) (regTwo!32782 r!7292))))))

(declare-fun lt!2342119 () Unit!157859)

(declare-fun lemmaConcatDistributesInUnion!52 (Regex!16135 Regex!16135 Regex!16135 List!64705) Unit!157859)

(assert (=> b!6196681 (= lt!2342119 (lemmaConcatDistributesInUnion!52 (regOne!32783 (regOne!32782 r!7292)) (regTwo!32783 (regOne!32782 r!7292)) (regTwo!32782 r!7292) s!2326))))

(declare-fun b!6196682 () Bool)

(assert (=> b!6196682 (= e!3773696 (matchZipper!2147 lt!2342101 (t!378219 s!2326)))))

(declare-fun setIsEmpty!42046 () Bool)

(assert (=> setIsEmpty!42046 setRes!42046))

(declare-fun b!6196683 () Bool)

(declare-fun res!2563281 () Bool)

(assert (=> b!6196683 (=> res!2563281 e!3773690)))

(assert (=> b!6196683 (= res!2563281 (or ((_ is EmptyExpr!16135) r!7292) ((_ is EmptyLang!16135) r!7292) ((_ is ElementMatch!16135) r!7292) ((_ is Union!16135) r!7292) (not ((_ is Concat!24980) r!7292))))))

(declare-fun b!6196684 () Bool)

(assert (=> b!6196684 (= e!3773685 e!3773682)))

(declare-fun res!2563267 () Bool)

(assert (=> b!6196684 (=> res!2563267 e!3773682)))

(declare-fun lt!2342083 () Bool)

(declare-fun e!3773705 () Bool)

(assert (=> b!6196684 (= res!2563267 (not (= lt!2342083 e!3773705)))))

(declare-fun res!2563273 () Bool)

(assert (=> b!6196684 (=> res!2563273 e!3773705)))

(declare-fun lt!2342092 () Bool)

(assert (=> b!6196684 (= res!2563273 lt!2342092)))

(assert (=> b!6196684 (= lt!2342083 (matchZipper!2147 z!1189 s!2326))))

(declare-fun lt!2342090 () (InoxSet Context!11038))

(assert (=> b!6196684 (= lt!2342092 (matchZipper!2147 lt!2342090 s!2326))))

(declare-fun lt!2342117 () Unit!157859)

(assert (=> b!6196684 (= lt!2342117 e!3773706)))

(declare-fun c!1118415 () Bool)

(assert (=> b!6196684 (= c!1118415 (nullable!6128 (regTwo!32783 (regOne!32782 r!7292))))))

(declare-fun lt!2342105 () (InoxSet Context!11038))

(assert (=> b!6196684 (= (flatMap!1640 lt!2342105 lambda!338501) (derivationStepZipperUp!1309 lt!2342100 (h!71029 s!2326)))))

(declare-fun lt!2342094 () Unit!157859)

(assert (=> b!6196684 (= lt!2342094 (lemmaFlatMapOnSingletonSet!1166 lt!2342105 lt!2342100 lambda!338501))))

(declare-fun lt!2342124 () (InoxSet Context!11038))

(assert (=> b!6196684 (= lt!2342124 (derivationStepZipperUp!1309 lt!2342100 (h!71029 s!2326)))))

(declare-fun lt!2342132 () Unit!157859)

(assert (=> b!6196684 (= lt!2342132 e!3773694)))

(declare-fun c!1118414 () Bool)

(assert (=> b!6196684 (= c!1118414 (nullable!6128 (regOne!32783 (regOne!32782 r!7292))))))

(assert (=> b!6196684 (= (flatMap!1640 lt!2342090 lambda!338501) (derivationStepZipperUp!1309 lt!2342102 (h!71029 s!2326)))))

(declare-fun lt!2342134 () Unit!157859)

(assert (=> b!6196684 (= lt!2342134 (lemmaFlatMapOnSingletonSet!1166 lt!2342090 lt!2342102 lambda!338501))))

(declare-fun lt!2342098 () (InoxSet Context!11038))

(assert (=> b!6196684 (= lt!2342098 (derivationStepZipperUp!1309 lt!2342102 (h!71029 s!2326)))))

(assert (=> b!6196684 (= lt!2342105 (store ((as const (Array Context!11038 Bool)) false) lt!2342100 true))))

(declare-fun lt!2342110 () List!64704)

(assert (=> b!6196684 (= lt!2342100 (Context!11039 lt!2342110))))

(assert (=> b!6196684 (= lt!2342110 (Cons!64580 (regTwo!32783 (regOne!32782 r!7292)) (t!378218 (exprs!6019 (h!71030 zl!343)))))))

(assert (=> b!6196684 (= lt!2342090 (store ((as const (Array Context!11038 Bool)) false) lt!2342102 true))))

(declare-fun lt!2342112 () List!64704)

(assert (=> b!6196684 (= lt!2342102 (Context!11039 lt!2342112))))

(assert (=> b!6196684 (= lt!2342112 (Cons!64580 (regOne!32783 (regOne!32782 r!7292)) (t!378218 (exprs!6019 (h!71030 zl!343)))))))

(declare-fun b!6196685 () Bool)

(assert (=> b!6196685 (= e!3773701 e!3773697)))

(declare-fun res!2563278 () Bool)

(assert (=> b!6196685 (=> (not res!2563278) (not e!3773697))))

(declare-fun lt!2342086 () Regex!16135)

(assert (=> b!6196685 (= res!2563278 (= r!7292 lt!2342086))))

(declare-fun unfocusZipper!1877 (List!64706) Regex!16135)

(assert (=> b!6196685 (= lt!2342086 (unfocusZipper!1877 zl!343))))

(declare-fun b!6196686 () Bool)

(declare-fun tp!1728568 () Bool)

(declare-fun tp!1728569 () Bool)

(assert (=> b!6196686 (= e!3773703 (and tp!1728568 tp!1728569))))

(declare-fun b!6196687 () Bool)

(assert (=> b!6196687 (= e!3773684 e!3773681)))

(declare-fun res!2563263 () Bool)

(assert (=> b!6196687 (=> res!2563263 e!3773681)))

(declare-fun lt!2342120 () Bool)

(declare-fun lt!2342091 () Bool)

(assert (=> b!6196687 (= res!2563263 (and (not (= lt!2342083 lt!2342120)) (not lt!2342091)))))

(assert (=> b!6196687 (= lt!2342091 (matchRSpec!3236 lt!2342122 s!2326))))

(declare-fun lt!2342106 () Unit!157859)

(assert (=> b!6196687 (= lt!2342106 (mainMatchTheorem!3236 lt!2342122 s!2326))))

(assert (=> b!6196687 (= lt!2342120 (matchRSpec!3236 lt!2342087 s!2326))))

(declare-fun lt!2342103 () Unit!157859)

(assert (=> b!6196687 (= lt!2342103 (mainMatchTheorem!3236 lt!2342087 s!2326))))

(assert (=> b!6196687 (= lt!2342091 (matchZipper!2147 lt!2342105 s!2326))))

(assert (=> b!6196687 (= lt!2342091 (matchR!8318 lt!2342122 s!2326))))

(declare-fun lt!2342114 () Unit!157859)

(declare-fun theoremZipperRegexEquiv!747 ((InoxSet Context!11038) List!64706 Regex!16135 List!64705) Unit!157859)

(assert (=> b!6196687 (= lt!2342114 (theoremZipperRegexEquiv!747 lt!2342105 lt!2342130 lt!2342122 s!2326))))

(assert (=> b!6196687 (= lt!2342122 (generalisedConcat!1732 lt!2342110))))

(assert (=> b!6196687 (= lt!2342120 lt!2342092)))

(assert (=> b!6196687 (= lt!2342120 (matchR!8318 lt!2342087 s!2326))))

(declare-fun lt!2342123 () Unit!157859)

(assert (=> b!6196687 (= lt!2342123 (theoremZipperRegexEquiv!747 lt!2342090 lt!2342085 lt!2342087 s!2326))))

(assert (=> b!6196687 (= lt!2342087 (generalisedConcat!1732 lt!2342112))))

(declare-fun b!6196688 () Bool)

(declare-fun tp!1728566 () Bool)

(assert (=> b!6196688 (= e!3773703 tp!1728566)))

(assert (=> b!6196689 (= e!3773690 e!3773704)))

(declare-fun res!2563277 () Bool)

(assert (=> b!6196689 (=> res!2563277 e!3773704)))

(declare-fun lt!2342129 () Bool)

(assert (=> b!6196689 (= res!2563277 (or (not (= lt!2342115 lt!2342129)) ((_ is Nil!64581) s!2326)))))

(declare-fun Exists!3205 (Int) Bool)

(assert (=> b!6196689 (= (Exists!3205 lambda!338499) (Exists!3205 lambda!338500))))

(declare-fun lt!2342131 () Unit!157859)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1742 (Regex!16135 Regex!16135 List!64705) Unit!157859)

(assert (=> b!6196689 (= lt!2342131 (lemmaExistCutMatchRandMatchRSpecEquivalent!1742 (regOne!32782 r!7292) (regTwo!32782 r!7292) s!2326))))

(assert (=> b!6196689 (= lt!2342129 (Exists!3205 lambda!338499))))

(declare-datatypes ((tuple2!66228 0))(
  ( (tuple2!66229 (_1!36417 List!64705) (_2!36417 List!64705)) )
))
(declare-datatypes ((Option!16026 0))(
  ( (None!16025) (Some!16025 (v!52168 tuple2!66228)) )
))
(declare-fun isDefined!12729 (Option!16026) Bool)

(declare-fun findConcatSeparation!2440 (Regex!16135 Regex!16135 List!64705 List!64705 List!64705) Option!16026)

(assert (=> b!6196689 (= lt!2342129 (isDefined!12729 (findConcatSeparation!2440 (regOne!32782 r!7292) (regTwo!32782 r!7292) Nil!64581 s!2326 s!2326)))))

(declare-fun lt!2342107 () Unit!157859)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2204 (Regex!16135 Regex!16135 List!64705) Unit!157859)

(assert (=> b!6196689 (= lt!2342107 (lemmaFindConcatSeparationEquivalentToExists!2204 (regOne!32782 r!7292) (regTwo!32782 r!7292) s!2326))))

(declare-fun b!6196690 () Bool)

(assert (=> b!6196690 (= e!3773703 tp_is_empty!41523)))

(declare-fun b!6196691 () Bool)

(assert (=> b!6196691 (= e!3773705 (matchZipper!2147 lt!2342105 s!2326))))

(declare-fun b!6196692 () Bool)

(declare-fun res!2563279 () Bool)

(assert (=> b!6196692 (=> res!2563279 e!3773690)))

(declare-fun isEmpty!36570 (List!64706) Bool)

(assert (=> b!6196692 (= res!2563279 (not (isEmpty!36570 (t!378220 zl!343))))))

(declare-fun b!6196693 () Bool)

(declare-fun res!2563257 () Bool)

(assert (=> b!6196693 (=> res!2563257 e!3773682)))

(assert (=> b!6196693 (= res!2563257 (or (not (= lt!2342086 r!7292)) (not (= (exprs!6019 (h!71030 zl!343)) (Cons!64580 (regOne!32782 r!7292) (t!378218 (exprs!6019 (h!71030 zl!343))))))))))

(declare-fun b!6196694 () Bool)

(declare-fun res!2563280 () Bool)

(assert (=> b!6196694 (=> res!2563280 e!3773704)))

(declare-fun isEmpty!36571 (List!64704) Bool)

(assert (=> b!6196694 (= res!2563280 (isEmpty!36571 (t!378218 (exprs!6019 (h!71030 zl!343)))))))

(declare-fun b!6196695 () Bool)

(declare-fun res!2563260 () Bool)

(assert (=> b!6196695 (=> res!2563260 e!3773690)))

(assert (=> b!6196695 (= res!2563260 (not ((_ is Cons!64580) (exprs!6019 (h!71030 zl!343)))))))

(declare-fun b!6196696 () Bool)

(declare-fun Unit!157863 () Unit!157859)

(assert (=> b!6196696 (= e!3773694 Unit!157863)))

(declare-fun b!6196697 () Bool)

(assert (=> b!6196697 (= e!3773707 (not (matchZipper!2147 lt!2342093 (t!378219 s!2326))))))

(declare-fun b!6196698 () Bool)

(declare-fun Unit!157864 () Unit!157859)

(assert (=> b!6196698 (= e!3773700 Unit!157864)))

(declare-fun lt!2342113 () Unit!157859)

(assert (=> b!6196698 (= lt!2342113 (lemmaZipperConcatMatchesSameAsBothZippers!966 lt!2342127 lt!2342101 (t!378219 s!2326)))))

(declare-fun res!2563269 () Bool)

(assert (=> b!6196698 (= res!2563269 (matchZipper!2147 lt!2342127 (t!378219 s!2326)))))

(assert (=> b!6196698 (=> res!2563269 e!3773687)))

(assert (=> b!6196698 (= (matchZipper!2147 ((_ map or) lt!2342127 lt!2342101) (t!378219 s!2326)) e!3773687)))

(declare-fun b!6196699 () Bool)

(declare-fun Unit!157865 () Unit!157859)

(assert (=> b!6196699 (= e!3773700 Unit!157865)))

(declare-fun b!6196700 () Bool)

(declare-fun Unit!157866 () Unit!157859)

(assert (=> b!6196700 (= e!3773706 Unit!157866)))

(declare-fun lt!2342084 () Unit!157859)

(assert (=> b!6196700 (= lt!2342084 (lemmaZipperConcatMatchesSameAsBothZippers!966 lt!2342093 lt!2342101 (t!378219 s!2326)))))

(declare-fun res!2563268 () Bool)

(assert (=> b!6196700 (= res!2563268 (matchZipper!2147 lt!2342093 (t!378219 s!2326)))))

(assert (=> b!6196700 (=> res!2563268 e!3773688)))

(assert (=> b!6196700 (= (matchZipper!2147 ((_ map or) lt!2342093 lt!2342101) (t!378219 s!2326)) e!3773688)))

(assert (= (and start!617930 res!2563258) b!6196677))

(assert (= (and b!6196677 res!2563272) b!6196685))

(assert (= (and b!6196685 res!2563278) b!6196661))

(assert (= (and b!6196661 (not res!2563266)) b!6196692))

(assert (= (and b!6196692 (not res!2563279)) b!6196666))

(assert (= (and b!6196666 (not res!2563261)) b!6196695))

(assert (= (and b!6196695 (not res!2563260)) b!6196669))

(assert (= (and b!6196669 (not res!2563265)) b!6196683))

(assert (= (and b!6196683 (not res!2563281)) b!6196689))

(assert (= (and b!6196689 (not res!2563277)) b!6196694))

(assert (= (and b!6196694 (not res!2563280)) b!6196663))

(assert (= (and b!6196663 c!1118413) b!6196698))

(assert (= (and b!6196663 (not c!1118413)) b!6196699))

(assert (= (and b!6196698 (not res!2563269)) b!6196662))

(assert (= (and b!6196663 (not res!2563259)) b!6196660))

(assert (= (and b!6196660 (not res!2563262)) b!6196672))

(assert (= (and b!6196672 (not res!2563276)) b!6196673))

(assert (= (and b!6196672 res!2563256) b!6196697))

(assert (= (and b!6196672 (not res!2563271)) b!6196684))

(assert (= (and b!6196684 c!1118414) b!6196678))

(assert (= (and b!6196684 (not c!1118414)) b!6196696))

(assert (= (and b!6196678 (not res!2563275)) b!6196682))

(assert (= (and b!6196684 c!1118415) b!6196700))

(assert (= (and b!6196684 (not c!1118415)) b!6196665))

(assert (= (and b!6196700 (not res!2563268)) b!6196664))

(assert (= (and b!6196684 (not res!2563273)) b!6196691))

(assert (= (and b!6196684 (not res!2563267)) b!6196693))

(assert (= (and b!6196693 (not res!2563257)) b!6196667))

(assert (= (and b!6196667 (not res!2563255)) b!6196668))

(assert (= (and b!6196668 (not res!2563270)) b!6196687))

(assert (= (and b!6196687 (not res!2563263)) b!6196670))

(assert (= (and b!6196670 (not res!2563274)) b!6196680))

(assert (= (and b!6196680 (not res!2563264)) b!6196681))

(assert (= (and start!617930 ((_ is ElementMatch!16135) r!7292)) b!6196690))

(assert (= (and start!617930 ((_ is Concat!24980) r!7292)) b!6196686))

(assert (= (and start!617930 ((_ is Star!16135) r!7292)) b!6196688))

(assert (= (and start!617930 ((_ is Union!16135) r!7292)) b!6196674))

(assert (= (and start!617930 condSetEmpty!42046) setIsEmpty!42046))

(assert (= (and start!617930 (not condSetEmpty!42046)) setNonEmpty!42046))

(assert (= setNonEmpty!42046 b!6196676))

(assert (= b!6196671 b!6196675))

(assert (= (and start!617930 ((_ is Cons!64582) zl!343)) b!6196671))

(assert (= (and start!617930 ((_ is Cons!64581) s!2326)) b!6196679))

(declare-fun m!7030216 () Bool)

(assert (=> b!6196694 m!7030216))

(declare-fun m!7030218 () Bool)

(assert (=> b!6196662 m!7030218))

(declare-fun m!7030220 () Bool)

(assert (=> b!6196668 m!7030220))

(declare-fun m!7030222 () Bool)

(assert (=> b!6196667 m!7030222))

(declare-fun m!7030224 () Bool)

(assert (=> b!6196667 m!7030224))

(declare-fun m!7030226 () Bool)

(assert (=> b!6196663 m!7030226))

(declare-fun m!7030228 () Bool)

(assert (=> b!6196663 m!7030228))

(declare-fun m!7030230 () Bool)

(assert (=> b!6196663 m!7030230))

(declare-fun m!7030232 () Bool)

(assert (=> b!6196663 m!7030232))

(declare-fun m!7030234 () Bool)

(assert (=> b!6196663 m!7030234))

(declare-fun m!7030236 () Bool)

(assert (=> b!6196663 m!7030236))

(declare-fun m!7030238 () Bool)

(assert (=> b!6196663 m!7030238))

(declare-fun m!7030240 () Bool)

(assert (=> b!6196666 m!7030240))

(declare-fun m!7030242 () Bool)

(assert (=> b!6196673 m!7030242))

(declare-fun m!7030244 () Bool)

(assert (=> b!6196687 m!7030244))

(declare-fun m!7030246 () Bool)

(assert (=> b!6196687 m!7030246))

(declare-fun m!7030248 () Bool)

(assert (=> b!6196687 m!7030248))

(declare-fun m!7030250 () Bool)

(assert (=> b!6196687 m!7030250))

(declare-fun m!7030252 () Bool)

(assert (=> b!6196687 m!7030252))

(declare-fun m!7030254 () Bool)

(assert (=> b!6196687 m!7030254))

(declare-fun m!7030256 () Bool)

(assert (=> b!6196687 m!7030256))

(declare-fun m!7030258 () Bool)

(assert (=> b!6196687 m!7030258))

(declare-fun m!7030260 () Bool)

(assert (=> b!6196687 m!7030260))

(declare-fun m!7030262 () Bool)

(assert (=> b!6196687 m!7030262))

(declare-fun m!7030264 () Bool)

(assert (=> b!6196687 m!7030264))

(declare-fun m!7030266 () Bool)

(assert (=> b!6196669 m!7030266))

(assert (=> b!6196669 m!7030266))

(declare-fun m!7030268 () Bool)

(assert (=> b!6196669 m!7030268))

(declare-fun m!7030270 () Bool)

(assert (=> b!6196689 m!7030270))

(declare-fun m!7030272 () Bool)

(assert (=> b!6196689 m!7030272))

(declare-fun m!7030274 () Bool)

(assert (=> b!6196689 m!7030274))

(declare-fun m!7030276 () Bool)

(assert (=> b!6196689 m!7030276))

(assert (=> b!6196689 m!7030270))

(declare-fun m!7030278 () Bool)

(assert (=> b!6196689 m!7030278))

(assert (=> b!6196689 m!7030272))

(declare-fun m!7030280 () Bool)

(assert (=> b!6196689 m!7030280))

(assert (=> b!6196664 m!7030218))

(declare-fun m!7030282 () Bool)

(assert (=> b!6196681 m!7030282))

(declare-fun m!7030284 () Bool)

(assert (=> b!6196681 m!7030284))

(declare-fun m!7030286 () Bool)

(assert (=> b!6196681 m!7030286))

(declare-fun m!7030288 () Bool)

(assert (=> b!6196681 m!7030288))

(declare-fun m!7030290 () Bool)

(assert (=> b!6196681 m!7030290))

(declare-fun m!7030292 () Bool)

(assert (=> b!6196681 m!7030292))

(declare-fun m!7030294 () Bool)

(assert (=> b!6196684 m!7030294))

(declare-fun m!7030296 () Bool)

(assert (=> b!6196684 m!7030296))

(declare-fun m!7030298 () Bool)

(assert (=> b!6196684 m!7030298))

(declare-fun m!7030300 () Bool)

(assert (=> b!6196684 m!7030300))

(declare-fun m!7030302 () Bool)

(assert (=> b!6196684 m!7030302))

(declare-fun m!7030304 () Bool)

(assert (=> b!6196684 m!7030304))

(declare-fun m!7030306 () Bool)

(assert (=> b!6196684 m!7030306))

(declare-fun m!7030308 () Bool)

(assert (=> b!6196684 m!7030308))

(declare-fun m!7030310 () Bool)

(assert (=> b!6196684 m!7030310))

(declare-fun m!7030312 () Bool)

(assert (=> b!6196684 m!7030312))

(declare-fun m!7030314 () Bool)

(assert (=> b!6196684 m!7030314))

(declare-fun m!7030316 () Bool)

(assert (=> b!6196684 m!7030316))

(declare-fun m!7030318 () Bool)

(assert (=> b!6196680 m!7030318))

(declare-fun m!7030320 () Bool)

(assert (=> b!6196660 m!7030320))

(declare-fun m!7030322 () Bool)

(assert (=> b!6196660 m!7030322))

(declare-fun m!7030324 () Bool)

(assert (=> b!6196672 m!7030324))

(declare-fun m!7030326 () Bool)

(assert (=> b!6196672 m!7030326))

(declare-fun m!7030328 () Bool)

(assert (=> b!6196672 m!7030328))

(declare-fun m!7030330 () Bool)

(assert (=> b!6196672 m!7030330))

(assert (=> b!6196682 m!7030218))

(declare-fun m!7030332 () Bool)

(assert (=> b!6196685 m!7030332))

(assert (=> b!6196697 m!7030242))

(declare-fun m!7030334 () Bool)

(assert (=> b!6196698 m!7030334))

(assert (=> b!6196698 m!7030324))

(declare-fun m!7030336 () Bool)

(assert (=> b!6196698 m!7030336))

(declare-fun m!7030338 () Bool)

(assert (=> b!6196671 m!7030338))

(assert (=> b!6196691 m!7030260))

(declare-fun m!7030340 () Bool)

(assert (=> b!6196661 m!7030340))

(declare-fun m!7030342 () Bool)

(assert (=> b!6196661 m!7030342))

(declare-fun m!7030344 () Bool)

(assert (=> b!6196661 m!7030344))

(declare-fun m!7030346 () Bool)

(assert (=> b!6196678 m!7030346))

(declare-fun m!7030348 () Bool)

(assert (=> b!6196678 m!7030348))

(declare-fun m!7030350 () Bool)

(assert (=> setNonEmpty!42046 m!7030350))

(declare-fun m!7030352 () Bool)

(assert (=> b!6196677 m!7030352))

(declare-fun m!7030354 () Bool)

(assert (=> b!6196692 m!7030354))

(declare-fun m!7030356 () Bool)

(assert (=> start!617930 m!7030356))

(declare-fun m!7030358 () Bool)

(assert (=> b!6196700 m!7030358))

(assert (=> b!6196700 m!7030242))

(declare-fun m!7030360 () Bool)

(assert (=> b!6196700 m!7030360))

(check-sat (not b!6196685) (not b!6196662) (not b!6196688) (not b!6196668) (not b!6196684) (not b!6196686) (not b!6196692) tp_is_empty!41523 (not b!6196697) (not b!6196676) (not b!6196687) (not b!6196660) (not setNonEmpty!42046) (not b!6196669) (not b!6196691) (not b!6196694) (not b!6196680) (not b!6196663) (not b!6196682) (not b!6196661) (not b!6196689) (not b!6196672) (not b!6196673) (not b!6196678) (not b!6196681) (not b!6196698) (not b!6196700) (not b!6196667) (not b!6196671) (not b!6196679) (not b!6196674) (not b!6196675) (not b!6196664) (not b!6196677) (not b!6196666) (not start!617930))
(check-sat)
