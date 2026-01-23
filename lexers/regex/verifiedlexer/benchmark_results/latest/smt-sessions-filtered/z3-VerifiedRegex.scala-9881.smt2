; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!517820 () Bool)

(assert start!517820)

(declare-fun b!4930584 () Bool)

(declare-fun res!2104092 () Bool)

(declare-fun e!3080514 () Bool)

(assert (=> b!4930584 (=> res!2104092 e!3080514)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27008 0))(
  ( (C!27009 (val!22838 Int)) )
))
(declare-datatypes ((Regex!13389 0))(
  ( (ElementMatch!13389 (c!840247 C!27008)) (Concat!21962 (regOne!27290 Regex!13389) (regTwo!27290 Regex!13389)) (EmptyExpr!13389) (Star!13389 (reg!13718 Regex!13389)) (EmptyLang!13389) (Union!13389 (regOne!27291 Regex!13389) (regTwo!27291 Regex!13389)) )
))
(declare-datatypes ((List!56859 0))(
  ( (Nil!56735) (Cons!56735 (h!63183 Regex!13389) (t!367335 List!56859)) )
))
(declare-datatypes ((Context!6062 0))(
  ( (Context!6063 (exprs!3531 List!56859)) )
))
(declare-fun z!3568 () (InoxSet Context!6062))

(declare-fun nullableZipper!820 ((InoxSet Context!6062)) Bool)

(assert (=> b!4930584 (= res!2104092 (not (nullableZipper!820 z!3568)))))

(declare-fun b!4930585 () Bool)

(declare-fun e!3080518 () Bool)

(declare-fun tp_is_empty!35955 () Bool)

(declare-fun tp!1384212 () Bool)

(assert (=> b!4930585 (= e!3080518 (and tp_is_empty!35955 tp!1384212))))

(declare-fun b!4930586 () Bool)

(declare-fun e!3080517 () Bool)

(declare-fun e!3080511 () Bool)

(assert (=> b!4930586 (= e!3080517 (not e!3080511))))

(declare-fun res!2104097 () Bool)

(assert (=> b!4930586 (=> res!2104097 e!3080511)))

(declare-datatypes ((List!56860 0))(
  ( (Nil!56736) (Cons!56736 (h!63184 C!27008) (t!367336 List!56860)) )
))
(declare-fun testedP!110 () List!56860)

(declare-fun lt!2029697 () List!56860)

(declare-fun isPrefix!4987 (List!56860 List!56860) Bool)

(assert (=> b!4930586 (= res!2104097 (not (isPrefix!4987 testedP!110 lt!2029697)))))

(declare-fun lt!2029698 () List!56860)

(assert (=> b!4930586 (isPrefix!4987 testedP!110 lt!2029698)))

(declare-datatypes ((Unit!147365 0))(
  ( (Unit!147366) )
))
(declare-fun lt!2029695 () Unit!147365)

(declare-fun testedSuffix!70 () List!56860)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3211 (List!56860 List!56860) Unit!147365)

(assert (=> b!4930586 (= lt!2029695 (lemmaConcatTwoListThenFirstIsPrefix!3211 testedP!110 testedSuffix!70))))

(declare-fun b!4930587 () Bool)

(declare-fun e!3080512 () Bool)

(declare-datatypes ((IArray!29857 0))(
  ( (IArray!29858 (innerList!14986 List!56860)) )
))
(declare-datatypes ((Conc!14898 0))(
  ( (Node!14898 (left!41381 Conc!14898) (right!41711 Conc!14898) (csize!30026 Int) (cheight!15109 Int)) (Leaf!24780 (xs!18222 IArray!29857) (csize!30027 Int)) (Empty!14898) )
))
(declare-datatypes ((BalanceConc!29226 0))(
  ( (BalanceConc!29227 (c!840248 Conc!14898)) )
))
(declare-fun totalInput!685 () BalanceConc!29226)

(declare-fun tp!1384209 () Bool)

(declare-fun inv!73611 (Conc!14898) Bool)

(assert (=> b!4930587 (= e!3080512 (and (inv!73611 (c!840248 totalInput!685)) tp!1384209))))

(declare-fun b!4930588 () Bool)

(declare-fun res!2104091 () Bool)

(assert (=> b!4930588 (=> (not res!2104091) (not e!3080517))))

(declare-fun totalInputSize!132 () Int)

(declare-fun size!37545 (BalanceConc!29226) Int)

(assert (=> b!4930588 (= res!2104091 (= totalInputSize!132 (size!37545 totalInput!685)))))

(declare-fun e!3080515 () Bool)

(declare-fun tp!1384210 () Bool)

(declare-fun setNonEmpty!27608 () Bool)

(declare-fun setElem!27608 () Context!6062)

(declare-fun setRes!27608 () Bool)

(declare-fun inv!73612 (Context!6062) Bool)

(assert (=> setNonEmpty!27608 (= setRes!27608 (and tp!1384210 (inv!73612 setElem!27608) e!3080515))))

(declare-fun setRest!27608 () (InoxSet Context!6062))

(assert (=> setNonEmpty!27608 (= z!3568 ((_ map or) (store ((as const (Array Context!6062 Bool)) false) setElem!27608 true) setRest!27608))))

(declare-fun res!2104095 () Bool)

(assert (=> start!517820 (=> (not res!2104095) (not e!3080517))))

(assert (=> start!517820 (= res!2104095 (= lt!2029698 lt!2029697))))

(declare-fun list!17993 (BalanceConc!29226) List!56860)

(assert (=> start!517820 (= lt!2029697 (list!17993 totalInput!685))))

(declare-fun ++!12354 (List!56860 List!56860) List!56860)

(assert (=> start!517820 (= lt!2029698 (++!12354 testedP!110 testedSuffix!70))))

(assert (=> start!517820 e!3080517))

(declare-fun e!3080513 () Bool)

(assert (=> start!517820 e!3080513))

(declare-fun condSetEmpty!27608 () Bool)

(assert (=> start!517820 (= condSetEmpty!27608 (= z!3568 ((as const (Array Context!6062 Bool)) false)))))

(assert (=> start!517820 setRes!27608))

(assert (=> start!517820 true))

(declare-fun inv!73613 (BalanceConc!29226) Bool)

(assert (=> start!517820 (and (inv!73613 totalInput!685) e!3080512)))

(assert (=> start!517820 e!3080518))

(declare-fun setIsEmpty!27608 () Bool)

(assert (=> setIsEmpty!27608 setRes!27608))

(declare-fun b!4930589 () Bool)

(declare-fun size!37546 (List!56860) Int)

(assert (=> b!4930589 (= e!3080514 (= totalInputSize!132 (size!37546 lt!2029697)))))

(declare-fun b!4930590 () Bool)

(declare-fun tp!1384213 () Bool)

(assert (=> b!4930590 (= e!3080513 (and tp_is_empty!35955 tp!1384213))))

(declare-fun b!4930591 () Bool)

(declare-fun res!2104093 () Bool)

(declare-fun e!3080516 () Bool)

(assert (=> b!4930591 (=> res!2104093 e!3080516)))

(declare-fun testedPSize!70 () Int)

(assert (=> b!4930591 (= res!2104093 (not (= testedPSize!70 totalInputSize!132)))))

(declare-fun b!4930592 () Bool)

(declare-fun tp!1384211 () Bool)

(assert (=> b!4930592 (= e!3080515 tp!1384211)))

(declare-fun b!4930593 () Bool)

(declare-fun res!2104098 () Bool)

(assert (=> b!4930593 (=> (not res!2104098) (not e!3080517))))

(assert (=> b!4930593 (= res!2104098 (= testedPSize!70 (size!37546 testedP!110)))))

(declare-fun b!4930594 () Bool)

(assert (=> b!4930594 (= e!3080511 e!3080516)))

(declare-fun res!2104094 () Bool)

(assert (=> b!4930594 (=> res!2104094 e!3080516)))

(declare-fun lostCauseZipper!707 ((InoxSet Context!6062)) Bool)

(assert (=> b!4930594 (= res!2104094 (lostCauseZipper!707 z!3568))))

(declare-fun lt!2029701 () List!56860)

(assert (=> b!4930594 (and (= testedSuffix!70 lt!2029701) (= lt!2029701 testedSuffix!70))))

(declare-fun lt!2029699 () Unit!147365)

(declare-fun lemmaSamePrefixThenSameSuffix!2385 (List!56860 List!56860 List!56860 List!56860 List!56860) Unit!147365)

(assert (=> b!4930594 (= lt!2029699 (lemmaSamePrefixThenSameSuffix!2385 testedP!110 testedSuffix!70 testedP!110 lt!2029701 lt!2029697))))

(declare-fun getSuffix!2971 (List!56860 List!56860) List!56860)

(assert (=> b!4930594 (= lt!2029701 (getSuffix!2971 lt!2029697 testedP!110))))

(declare-fun b!4930595 () Bool)

(assert (=> b!4930595 (= e!3080516 e!3080514)))

(declare-fun res!2104096 () Bool)

(assert (=> b!4930595 (=> res!2104096 e!3080514)))

(assert (=> b!4930595 (= res!2104096 (not (= testedP!110 lt!2029697)))))

(assert (=> b!4930595 (= lt!2029697 testedP!110)))

(declare-fun lt!2029700 () Unit!147365)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1129 (List!56860 List!56860 List!56860) Unit!147365)

(assert (=> b!4930595 (= lt!2029700 (lemmaIsPrefixSameLengthThenSameList!1129 lt!2029697 testedP!110 lt!2029697))))

(assert (=> b!4930595 (isPrefix!4987 lt!2029697 lt!2029697)))

(declare-fun lt!2029696 () Unit!147365)

(declare-fun lemmaIsPrefixRefl!3369 (List!56860 List!56860) Unit!147365)

(assert (=> b!4930595 (= lt!2029696 (lemmaIsPrefixRefl!3369 lt!2029697 lt!2029697))))

(assert (= (and start!517820 res!2104095) b!4930593))

(assert (= (and b!4930593 res!2104098) b!4930588))

(assert (= (and b!4930588 res!2104091) b!4930586))

(assert (= (and b!4930586 (not res!2104097)) b!4930594))

(assert (= (and b!4930594 (not res!2104094)) b!4930591))

(assert (= (and b!4930591 (not res!2104093)) b!4930595))

(assert (= (and b!4930595 (not res!2104096)) b!4930584))

(assert (= (and b!4930584 (not res!2104092)) b!4930589))

(get-info :version)

(assert (= (and start!517820 ((_ is Cons!56736) testedP!110)) b!4930590))

(assert (= (and start!517820 condSetEmpty!27608) setIsEmpty!27608))

(assert (= (and start!517820 (not condSetEmpty!27608)) setNonEmpty!27608))

(assert (= setNonEmpty!27608 b!4930592))

(assert (= start!517820 b!4930587))

(assert (= (and start!517820 ((_ is Cons!56736) testedSuffix!70)) b!4930585))

(declare-fun m!5950696 () Bool)

(assert (=> b!4930587 m!5950696))

(declare-fun m!5950698 () Bool)

(assert (=> b!4930586 m!5950698))

(declare-fun m!5950700 () Bool)

(assert (=> b!4930586 m!5950700))

(declare-fun m!5950702 () Bool)

(assert (=> b!4930586 m!5950702))

(declare-fun m!5950704 () Bool)

(assert (=> b!4930589 m!5950704))

(declare-fun m!5950706 () Bool)

(assert (=> start!517820 m!5950706))

(declare-fun m!5950708 () Bool)

(assert (=> start!517820 m!5950708))

(declare-fun m!5950710 () Bool)

(assert (=> start!517820 m!5950710))

(declare-fun m!5950712 () Bool)

(assert (=> b!4930593 m!5950712))

(declare-fun m!5950714 () Bool)

(assert (=> b!4930584 m!5950714))

(declare-fun m!5950716 () Bool)

(assert (=> b!4930595 m!5950716))

(declare-fun m!5950718 () Bool)

(assert (=> b!4930595 m!5950718))

(declare-fun m!5950720 () Bool)

(assert (=> b!4930595 m!5950720))

(declare-fun m!5950722 () Bool)

(assert (=> b!4930588 m!5950722))

(declare-fun m!5950724 () Bool)

(assert (=> b!4930594 m!5950724))

(declare-fun m!5950726 () Bool)

(assert (=> b!4930594 m!5950726))

(declare-fun m!5950728 () Bool)

(assert (=> b!4930594 m!5950728))

(declare-fun m!5950730 () Bool)

(assert (=> setNonEmpty!27608 m!5950730))

(check-sat (not start!517820) (not b!4930585) (not setNonEmpty!27608) (not b!4930589) (not b!4930592) (not b!4930586) (not b!4930584) (not b!4930587) (not b!4930588) tp_is_empty!35955 (not b!4930594) (not b!4930590) (not b!4930595) (not b!4930593))
(check-sat)
