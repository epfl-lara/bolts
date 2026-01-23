; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547000 () Bool)

(assert start!547000)

(declare-fun b!5168815 () Bool)

(declare-fun e!3220623 () Bool)

(declare-fun tp_is_empty!38455 () Bool)

(declare-fun tp!1450115 () Bool)

(assert (=> b!5168815 (= e!3220623 (and tp_is_empty!38455 tp!1450115))))

(declare-fun setIsEmpty!31867 () Bool)

(declare-fun setRes!31867 () Bool)

(assert (=> setIsEmpty!31867 setRes!31867))

(declare-fun b!5168816 () Bool)

(declare-fun e!3220626 () Bool)

(declare-fun e!3220630 () Bool)

(assert (=> b!5168816 (= e!3220626 e!3220630)))

(declare-fun res!2197032 () Bool)

(assert (=> b!5168816 (=> (not res!2197032) (not e!3220630))))

(declare-datatypes ((C!29472 0))(
  ( (C!29473 (val!24438 Int)) )
))
(declare-datatypes ((List!60163 0))(
  ( (Nil!60039) (Cons!60039 (h!66487 C!29472) (t!373316 List!60163)) )
))
(declare-fun input!5817 () List!60163)

(declare-fun lt!2126655 () Int)

(declare-fun lt!2126664 () List!60163)

(declare-fun testedP!294 () List!60163)

(declare-fun lt!2126654 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14601 0))(
  ( (ElementMatch!14601 (c!889554 C!29472)) (Concat!23446 (regOne!29714 Regex!14601) (regTwo!29714 Regex!14601)) (EmptyExpr!14601) (Star!14601 (reg!14930 Regex!14601)) (EmptyLang!14601) (Union!14601 (regOne!29715 Regex!14601) (regTwo!29715 Regex!14601)) )
))
(declare-datatypes ((List!60164 0))(
  ( (Nil!60040) (Cons!60040 (h!66488 Regex!14601) (t!373317 List!60164)) )
))
(declare-datatypes ((Context!7970 0))(
  ( (Context!7971 (exprs!4485 List!60164)) )
))
(declare-fun z!4581 () (InoxSet Context!7970))

(declare-fun isEmpty!32145 (List!60163) Bool)

(declare-datatypes ((tuple2!63756 0))(
  ( (tuple2!63757 (_1!35181 List!60163) (_2!35181 List!60163)) )
))
(declare-fun findLongestMatchInnerZipper!259 ((InoxSet Context!7970) List!60163 Int List!60163 List!60163 Int) tuple2!63756)

(assert (=> b!5168816 (= res!2197032 (not (isEmpty!32145 (_1!35181 (findLongestMatchInnerZipper!259 z!4581 testedP!294 lt!2126655 lt!2126664 input!5817 lt!2126654)))))))

(declare-fun size!39637 (List!60163) Int)

(assert (=> b!5168816 (= lt!2126654 (size!39637 input!5817))))

(declare-fun getSuffix!3384 (List!60163 List!60163) List!60163)

(assert (=> b!5168816 (= lt!2126664 (getSuffix!3384 input!5817 testedP!294))))

(assert (=> b!5168816 (= lt!2126655 (size!39637 testedP!294))))

(declare-fun b!5168817 () Bool)

(declare-fun e!3220625 () Bool)

(declare-fun tp!1450111 () Bool)

(assert (=> b!5168817 (= e!3220625 (and tp_is_empty!38455 tp!1450111))))

(declare-fun b!5168818 () Bool)

(declare-fun res!2197029 () Bool)

(assert (=> b!5168818 (=> (not res!2197029) (not e!3220630))))

(assert (=> b!5168818 (= res!2197029 (not (= testedP!294 input!5817)))))

(declare-fun res!2197030 () Bool)

(declare-fun e!3220621 () Bool)

(assert (=> start!547000 (=> (not res!2197030) (not e!3220621))))

(declare-fun isPrefix!5734 (List!60163 List!60163) Bool)

(assert (=> start!547000 (= res!2197030 (isPrefix!5734 testedP!294 input!5817))))

(assert (=> start!547000 e!3220621))

(assert (=> start!547000 e!3220623))

(assert (=> start!547000 e!3220625))

(declare-fun condSetEmpty!31868 () Bool)

(assert (=> start!547000 (= condSetEmpty!31868 (= z!4581 ((as const (Array Context!7970 Bool)) false)))))

(assert (=> start!547000 setRes!31867))

(declare-fun condSetEmpty!31867 () Bool)

(declare-fun baseZ!62 () (InoxSet Context!7970))

(assert (=> start!547000 (= condSetEmpty!31867 (= baseZ!62 ((as const (Array Context!7970 Bool)) false)))))

(declare-fun setRes!31868 () Bool)

(assert (=> start!547000 setRes!31868))

(declare-fun b!5168819 () Bool)

(declare-fun e!3220627 () Bool)

(declare-fun tp!1450110 () Bool)

(assert (=> b!5168819 (= e!3220627 tp!1450110)))

(declare-fun b!5168820 () Bool)

(declare-fun e!3220624 () Bool)

(assert (=> b!5168820 (= e!3220630 (not e!3220624))))

(declare-fun res!2197031 () Bool)

(assert (=> b!5168820 (=> res!2197031 e!3220624)))

(assert (=> b!5168820 (= res!2197031 (>= lt!2126655 lt!2126654))))

(declare-datatypes ((Unit!151574 0))(
  ( (Unit!151575) )
))
(declare-fun lt!2126663 () Unit!151574)

(declare-fun e!3220629 () Unit!151574)

(assert (=> b!5168820 (= lt!2126663 e!3220629)))

(declare-fun c!889553 () Bool)

(assert (=> b!5168820 (= c!889553 (= lt!2126655 lt!2126654))))

(assert (=> b!5168820 (<= lt!2126655 lt!2126654)))

(declare-fun lt!2126662 () Unit!151574)

(declare-fun lemmaIsPrefixThenSmallerEqSize!897 (List!60163 List!60163) Unit!151574)

(assert (=> b!5168820 (= lt!2126662 (lemmaIsPrefixThenSmallerEqSize!897 testedP!294 input!5817))))

(declare-fun b!5168821 () Bool)

(declare-fun res!2197027 () Bool)

(declare-fun e!3220622 () Bool)

(assert (=> b!5168821 (=> res!2197027 e!3220622)))

(declare-fun lt!2126657 () List!60163)

(declare-fun lt!2126653 () C!29472)

(declare-fun derivationStepZipper!955 ((InoxSet Context!7970) C!29472) (InoxSet Context!7970))

(declare-fun tail!10134 (List!60163) List!60163)

(assert (=> b!5168821 (= res!2197027 (not (isEmpty!32145 (_1!35181 (findLongestMatchInnerZipper!259 (derivationStepZipper!955 z!4581 lt!2126653) lt!2126657 (+ 1 lt!2126655) (tail!10134 lt!2126664) input!5817 lt!2126654)))))))

(declare-fun b!5168822 () Bool)

(declare-fun Unit!151576 () Unit!151574)

(assert (=> b!5168822 (= e!3220629 Unit!151576)))

(declare-fun lt!2126659 () Unit!151574)

(declare-fun lemmaIsPrefixRefl!3741 (List!60163 List!60163) Unit!151574)

(assert (=> b!5168822 (= lt!2126659 (lemmaIsPrefixRefl!3741 input!5817 input!5817))))

(assert (=> b!5168822 (isPrefix!5734 input!5817 input!5817)))

(declare-fun lt!2126656 () Unit!151574)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1383 (List!60163 List!60163 List!60163) Unit!151574)

(assert (=> b!5168822 (= lt!2126656 (lemmaIsPrefixSameLengthThenSameList!1383 input!5817 testedP!294 input!5817))))

(assert (=> b!5168822 false))

(declare-fun b!5168823 () Bool)

(assert (=> b!5168823 (= e!3220621 e!3220626)))

(declare-fun res!2197026 () Bool)

(assert (=> b!5168823 (=> (not res!2197026) (not e!3220626))))

(declare-fun lt!2126658 () (InoxSet Context!7970))

(assert (=> b!5168823 (= res!2197026 (= lt!2126658 z!4581))))

(declare-fun derivationZipper!224 ((InoxSet Context!7970) List!60163) (InoxSet Context!7970))

(assert (=> b!5168823 (= lt!2126658 (derivationZipper!224 baseZ!62 testedP!294))))

(declare-fun b!5168824 () Bool)

(assert (=> b!5168824 (= e!3220622 (>= lt!2126654 lt!2126655))))

(declare-fun matchZipper!957 ((InoxSet Context!7970) List!60163) Bool)

(assert (=> b!5168824 (= (matchZipper!957 baseZ!62 testedP!294) (matchZipper!957 lt!2126658 Nil!60039))))

(declare-fun lt!2126661 () Unit!151574)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!38 ((InoxSet Context!7970) List!60163) Unit!151574)

(assert (=> b!5168824 (= lt!2126661 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!38 baseZ!62 testedP!294))))

(declare-fun b!5168825 () Bool)

(assert (=> b!5168825 (= e!3220624 e!3220622)))

(declare-fun res!2197028 () Bool)

(assert (=> b!5168825 (=> res!2197028 e!3220622)))

(declare-fun nullableZipper!1147 ((InoxSet Context!7970)) Bool)

(assert (=> b!5168825 (= res!2197028 (not (nullableZipper!1147 z!4581)))))

(assert (=> b!5168825 (isPrefix!5734 lt!2126657 input!5817)))

(declare-fun lt!2126660 () Unit!151574)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1047 (List!60163 List!60163) Unit!151574)

(assert (=> b!5168825 (= lt!2126660 (lemmaAddHeadSuffixToPrefixStillPrefix!1047 testedP!294 input!5817))))

(declare-fun ++!13125 (List!60163 List!60163) List!60163)

(assert (=> b!5168825 (= lt!2126657 (++!13125 testedP!294 (Cons!60039 lt!2126653 Nil!60039)))))

(declare-fun head!11025 (List!60163) C!29472)

(assert (=> b!5168825 (= lt!2126653 (head!11025 lt!2126664))))

(declare-fun b!5168826 () Bool)

(declare-fun e!3220628 () Bool)

(declare-fun tp!1450112 () Bool)

(assert (=> b!5168826 (= e!3220628 tp!1450112)))

(declare-fun setElem!31867 () Context!7970)

(declare-fun setNonEmpty!31867 () Bool)

(declare-fun tp!1450114 () Bool)

(declare-fun inv!79749 (Context!7970) Bool)

(assert (=> setNonEmpty!31867 (= setRes!31868 (and tp!1450114 (inv!79749 setElem!31867) e!3220628))))

(declare-fun setRest!31867 () (InoxSet Context!7970))

(assert (=> setNonEmpty!31867 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7970 Bool)) false) setElem!31867 true) setRest!31867))))

(declare-fun b!5168827 () Bool)

(declare-fun Unit!151577 () Unit!151574)

(assert (=> b!5168827 (= e!3220629 Unit!151577)))

(declare-fun setIsEmpty!31868 () Bool)

(assert (=> setIsEmpty!31868 setRes!31868))

(declare-fun tp!1450113 () Bool)

(declare-fun setElem!31868 () Context!7970)

(declare-fun setNonEmpty!31868 () Bool)

(assert (=> setNonEmpty!31868 (= setRes!31867 (and tp!1450113 (inv!79749 setElem!31868) e!3220627))))

(declare-fun setRest!31868 () (InoxSet Context!7970))

(assert (=> setNonEmpty!31868 (= z!4581 ((_ map or) (store ((as const (Array Context!7970 Bool)) false) setElem!31868 true) setRest!31868))))

(assert (= (and start!547000 res!2197030) b!5168823))

(assert (= (and b!5168823 res!2197026) b!5168816))

(assert (= (and b!5168816 res!2197032) b!5168818))

(assert (= (and b!5168818 res!2197029) b!5168820))

(assert (= (and b!5168820 c!889553) b!5168822))

(assert (= (and b!5168820 (not c!889553)) b!5168827))

(assert (= (and b!5168820 (not res!2197031)) b!5168825))

(assert (= (and b!5168825 (not res!2197028)) b!5168821))

(assert (= (and b!5168821 (not res!2197027)) b!5168824))

(get-info :version)

(assert (= (and start!547000 ((_ is Cons!60039) testedP!294)) b!5168815))

(assert (= (and start!547000 ((_ is Cons!60039) input!5817)) b!5168817))

(assert (= (and start!547000 condSetEmpty!31868) setIsEmpty!31867))

(assert (= (and start!547000 (not condSetEmpty!31868)) setNonEmpty!31868))

(assert (= setNonEmpty!31868 b!5168819))

(assert (= (and start!547000 condSetEmpty!31867) setIsEmpty!31868))

(assert (= (and start!547000 (not condSetEmpty!31867)) setNonEmpty!31867))

(assert (= setNonEmpty!31867 b!5168826))

(declare-fun m!6220214 () Bool)

(assert (=> b!5168816 m!6220214))

(declare-fun m!6220216 () Bool)

(assert (=> b!5168816 m!6220216))

(declare-fun m!6220218 () Bool)

(assert (=> b!5168816 m!6220218))

(declare-fun m!6220220 () Bool)

(assert (=> b!5168816 m!6220220))

(declare-fun m!6220222 () Bool)

(assert (=> b!5168816 m!6220222))

(declare-fun m!6220224 () Bool)

(assert (=> b!5168821 m!6220224))

(declare-fun m!6220226 () Bool)

(assert (=> b!5168821 m!6220226))

(assert (=> b!5168821 m!6220224))

(assert (=> b!5168821 m!6220226))

(declare-fun m!6220228 () Bool)

(assert (=> b!5168821 m!6220228))

(declare-fun m!6220230 () Bool)

(assert (=> b!5168821 m!6220230))

(declare-fun m!6220232 () Bool)

(assert (=> setNonEmpty!31868 m!6220232))

(declare-fun m!6220234 () Bool)

(assert (=> start!547000 m!6220234))

(declare-fun m!6220236 () Bool)

(assert (=> b!5168822 m!6220236))

(declare-fun m!6220238 () Bool)

(assert (=> b!5168822 m!6220238))

(declare-fun m!6220240 () Bool)

(assert (=> b!5168822 m!6220240))

(declare-fun m!6220242 () Bool)

(assert (=> b!5168823 m!6220242))

(declare-fun m!6220244 () Bool)

(assert (=> b!5168825 m!6220244))

(declare-fun m!6220246 () Bool)

(assert (=> b!5168825 m!6220246))

(declare-fun m!6220248 () Bool)

(assert (=> b!5168825 m!6220248))

(declare-fun m!6220250 () Bool)

(assert (=> b!5168825 m!6220250))

(declare-fun m!6220252 () Bool)

(assert (=> b!5168825 m!6220252))

(declare-fun m!6220254 () Bool)

(assert (=> b!5168820 m!6220254))

(declare-fun m!6220256 () Bool)

(assert (=> b!5168824 m!6220256))

(declare-fun m!6220258 () Bool)

(assert (=> b!5168824 m!6220258))

(declare-fun m!6220260 () Bool)

(assert (=> b!5168824 m!6220260))

(declare-fun m!6220262 () Bool)

(assert (=> setNonEmpty!31867 m!6220262))

(check-sat (not start!547000) (not b!5168820) (not b!5168822) tp_is_empty!38455 (not b!5168815) (not b!5168824) (not b!5168819) (not b!5168821) (not b!5168817) (not b!5168825) (not b!5168816) (not b!5168826) (not setNonEmpty!31867) (not setNonEmpty!31868) (not b!5168823))
(check-sat)
