; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547340 () Bool)

(assert start!547340)

(declare-fun b!5171062 () Bool)

(declare-fun e!3222069 () Bool)

(declare-fun e!3222070 () Bool)

(assert (=> b!5171062 (= e!3222069 e!3222070)))

(declare-fun res!2197895 () Bool)

(assert (=> b!5171062 (=> res!2197895 e!3222070)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29508 0))(
  ( (C!29509 (val!24456 Int)) )
))
(declare-datatypes ((Regex!14619 0))(
  ( (ElementMatch!14619 (c!890104 C!29508)) (Concat!23464 (regOne!29750 Regex!14619) (regTwo!29750 Regex!14619)) (EmptyExpr!14619) (Star!14619 (reg!14948 Regex!14619)) (EmptyLang!14619) (Union!14619 (regOne!29751 Regex!14619) (regTwo!29751 Regex!14619)) )
))
(declare-datatypes ((List!60203 0))(
  ( (Nil!60079) (Cons!60079 (h!66527 Regex!14619) (t!373356 List!60203)) )
))
(declare-datatypes ((Context!8006 0))(
  ( (Context!8007 (exprs!4503 List!60203)) )
))
(declare-fun z!4581 () (InoxSet Context!8006))

(declare-fun nullableZipper!1165 ((InoxSet Context!8006)) Bool)

(assert (=> b!5171062 (= res!2197895 (not (nullableZipper!1165 z!4581)))))

(declare-datatypes ((List!60204 0))(
  ( (Nil!60080) (Cons!60080 (h!66528 C!29508) (t!373357 List!60204)) )
))
(declare-fun lt!2128646 () List!60204)

(declare-fun input!5817 () List!60204)

(declare-fun isPrefix!5752 (List!60204 List!60204) Bool)

(assert (=> b!5171062 (isPrefix!5752 lt!2128646 input!5817)))

(declare-datatypes ((Unit!151722 0))(
  ( (Unit!151723) )
))
(declare-fun lt!2128640 () Unit!151722)

(declare-fun testedP!294 () List!60204)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1065 (List!60204 List!60204) Unit!151722)

(assert (=> b!5171062 (= lt!2128640 (lemmaAddHeadSuffixToPrefixStillPrefix!1065 testedP!294 input!5817))))

(declare-fun lt!2128645 () C!29508)

(declare-fun ++!13143 (List!60204 List!60204) List!60204)

(assert (=> b!5171062 (= lt!2128646 (++!13143 testedP!294 (Cons!60080 lt!2128645 Nil!60080)))))

(declare-fun lt!2128647 () List!60204)

(declare-fun head!11043 (List!60204) C!29508)

(assert (=> b!5171062 (= lt!2128645 (head!11043 lt!2128647))))

(declare-fun b!5171063 () Bool)

(declare-fun e!3222062 () Bool)

(declare-fun tp!1450693 () Bool)

(assert (=> b!5171063 (= e!3222062 tp!1450693)))

(declare-fun b!5171064 () Bool)

(declare-fun res!2197891 () Bool)

(declare-fun e!3222065 () Bool)

(assert (=> b!5171064 (=> (not res!2197891) (not e!3222065))))

(assert (=> b!5171064 (= res!2197891 (not (= testedP!294 input!5817)))))

(declare-fun setRes!32008 () Bool)

(declare-fun setNonEmpty!32007 () Bool)

(declare-fun e!3222067 () Bool)

(declare-fun setElem!32008 () Context!8006)

(declare-fun tp!1450692 () Bool)

(declare-fun inv!79794 (Context!8006) Bool)

(assert (=> setNonEmpty!32007 (= setRes!32008 (and tp!1450692 (inv!79794 setElem!32008) e!3222067))))

(declare-fun baseZ!62 () (InoxSet Context!8006))

(declare-fun setRest!32007 () (InoxSet Context!8006))

(assert (=> setNonEmpty!32007 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8006 Bool)) false) setElem!32008 true) setRest!32007))))

(declare-fun b!5171065 () Bool)

(declare-fun res!2197894 () Bool)

(declare-fun e!3222061 () Bool)

(assert (=> b!5171065 (=> (not res!2197894) (not e!3222061))))

(declare-fun derivationZipper!242 ((InoxSet Context!8006) List!60204) (InoxSet Context!8006))

(assert (=> b!5171065 (= res!2197894 (= (derivationZipper!242 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5171066 () Bool)

(assert (=> b!5171066 (= e!3222061 e!3222065)))

(declare-fun res!2197890 () Bool)

(assert (=> b!5171066 (=> (not res!2197890) (not e!3222065))))

(declare-fun lt!2128641 () Int)

(declare-fun lt!2128642 () Int)

(declare-fun isEmpty!32167 (List!60204) Bool)

(declare-datatypes ((tuple2!63792 0))(
  ( (tuple2!63793 (_1!35199 List!60204) (_2!35199 List!60204)) )
))
(declare-fun findLongestMatchInnerZipper!277 ((InoxSet Context!8006) List!60204 Int List!60204 List!60204 Int) tuple2!63792)

(assert (=> b!5171066 (= res!2197890 (not (isEmpty!32167 (_1!35199 (findLongestMatchInnerZipper!277 z!4581 testedP!294 lt!2128641 lt!2128647 input!5817 lt!2128642)))))))

(declare-fun size!39655 (List!60204) Int)

(assert (=> b!5171066 (= lt!2128642 (size!39655 input!5817))))

(declare-fun getSuffix!3402 (List!60204 List!60204) List!60204)

(assert (=> b!5171066 (= lt!2128647 (getSuffix!3402 input!5817 testedP!294))))

(assert (=> b!5171066 (= lt!2128641 (size!39655 testedP!294))))

(declare-fun b!5171067 () Bool)

(declare-fun e!3222063 () Bool)

(assert (=> b!5171067 (= e!3222063 true)))

(declare-fun e!3222068 () Bool)

(assert (=> b!5171067 e!3222068))

(declare-fun res!2197892 () Bool)

(assert (=> b!5171067 (=> res!2197892 e!3222068)))

(declare-fun lt!2128650 () tuple2!63792)

(assert (=> b!5171067 (= res!2197892 (isEmpty!32167 (_1!35199 lt!2128650)))))

(declare-fun lt!2128651 () (InoxSet Context!8006))

(assert (=> b!5171067 (= lt!2128650 (findLongestMatchInnerZipper!277 lt!2128651 lt!2128646 (size!39655 lt!2128646) (getSuffix!3402 input!5817 lt!2128646) input!5817 lt!2128642))))

(declare-fun lt!2128643 () Unit!151722)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!15 ((InoxSet Context!8006) (InoxSet Context!8006) List!60204 List!60204) Unit!151722)

(assert (=> b!5171067 (= lt!2128643 (longestMatchIsAcceptedByMatchOrIsEmptyRec!15 baseZ!62 lt!2128651 lt!2128646 input!5817))))

(assert (=> b!5171067 (= (derivationZipper!242 baseZ!62 lt!2128646) lt!2128651)))

(declare-fun lt!2128639 () Unit!151722)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!93 ((InoxSet Context!8006) (InoxSet Context!8006) List!60204 C!29508) Unit!151722)

(assert (=> b!5171067 (= lt!2128639 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!93 baseZ!62 z!4581 testedP!294 lt!2128645))))

(declare-fun res!2197893 () Bool)

(assert (=> start!547340 (=> (not res!2197893) (not e!3222061))))

(assert (=> start!547340 (= res!2197893 (isPrefix!5752 testedP!294 input!5817))))

(assert (=> start!547340 e!3222061))

(declare-fun e!3222060 () Bool)

(assert (=> start!547340 e!3222060))

(declare-fun e!3222064 () Bool)

(assert (=> start!547340 e!3222064))

(declare-fun condSetEmpty!32008 () Bool)

(assert (=> start!547340 (= condSetEmpty!32008 (= baseZ!62 ((as const (Array Context!8006 Bool)) false)))))

(assert (=> start!547340 setRes!32008))

(declare-fun condSetEmpty!32007 () Bool)

(assert (=> start!547340 (= condSetEmpty!32007 (= z!4581 ((as const (Array Context!8006 Bool)) false)))))

(declare-fun setRes!32007 () Bool)

(assert (=> start!547340 setRes!32007))

(declare-fun b!5171068 () Bool)

(assert (=> b!5171068 (= e!3222065 (not e!3222069))))

(declare-fun res!2197896 () Bool)

(assert (=> b!5171068 (=> res!2197896 e!3222069)))

(assert (=> b!5171068 (= res!2197896 (>= lt!2128641 lt!2128642))))

(declare-fun lt!2128649 () Unit!151722)

(declare-fun e!3222066 () Unit!151722)

(assert (=> b!5171068 (= lt!2128649 e!3222066)))

(declare-fun c!890103 () Bool)

(assert (=> b!5171068 (= c!890103 (= lt!2128641 lt!2128642))))

(assert (=> b!5171068 (<= lt!2128641 lt!2128642)))

(declare-fun lt!2128648 () Unit!151722)

(declare-fun lemmaIsPrefixThenSmallerEqSize!915 (List!60204 List!60204) Unit!151722)

(assert (=> b!5171068 (= lt!2128648 (lemmaIsPrefixThenSmallerEqSize!915 testedP!294 input!5817))))

(declare-fun b!5171069 () Bool)

(declare-fun tp_is_empty!38491 () Bool)

(declare-fun tp!1450694 () Bool)

(assert (=> b!5171069 (= e!3222060 (and tp_is_empty!38491 tp!1450694))))

(declare-fun tp!1450695 () Bool)

(declare-fun setElem!32007 () Context!8006)

(declare-fun setNonEmpty!32008 () Bool)

(assert (=> setNonEmpty!32008 (= setRes!32007 (and tp!1450695 (inv!79794 setElem!32007) e!3222062))))

(declare-fun setRest!32008 () (InoxSet Context!8006))

(assert (=> setNonEmpty!32008 (= z!4581 ((_ map or) (store ((as const (Array Context!8006 Bool)) false) setElem!32007 true) setRest!32008))))

(declare-fun b!5171070 () Bool)

(assert (=> b!5171070 (= e!3222070 e!3222063)))

(declare-fun res!2197889 () Bool)

(assert (=> b!5171070 (=> res!2197889 e!3222063)))

(declare-fun tail!10152 (List!60204) List!60204)

(assert (=> b!5171070 (= res!2197889 (isEmpty!32167 (_1!35199 (findLongestMatchInnerZipper!277 lt!2128651 lt!2128646 (+ 1 lt!2128641) (tail!10152 lt!2128647) input!5817 lt!2128642))))))

(declare-fun derivationStepZipper!973 ((InoxSet Context!8006) C!29508) (InoxSet Context!8006))

(assert (=> b!5171070 (= lt!2128651 (derivationStepZipper!973 z!4581 lt!2128645))))

(declare-fun setIsEmpty!32007 () Bool)

(assert (=> setIsEmpty!32007 setRes!32008))

(declare-fun b!5171071 () Bool)

(declare-fun Unit!151724 () Unit!151722)

(assert (=> b!5171071 (= e!3222066 Unit!151724)))

(declare-fun setIsEmpty!32008 () Bool)

(assert (=> setIsEmpty!32008 setRes!32007))

(declare-fun b!5171072 () Bool)

(declare-fun tp!1450691 () Bool)

(assert (=> b!5171072 (= e!3222067 tp!1450691)))

(declare-fun b!5171073 () Bool)

(declare-fun Unit!151725 () Unit!151722)

(assert (=> b!5171073 (= e!3222066 Unit!151725)))

(declare-fun lt!2128644 () Unit!151722)

(declare-fun lemmaIsPrefixRefl!3759 (List!60204 List!60204) Unit!151722)

(assert (=> b!5171073 (= lt!2128644 (lemmaIsPrefixRefl!3759 input!5817 input!5817))))

(assert (=> b!5171073 (isPrefix!5752 input!5817 input!5817)))

(declare-fun lt!2128652 () Unit!151722)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1401 (List!60204 List!60204 List!60204) Unit!151722)

(assert (=> b!5171073 (= lt!2128652 (lemmaIsPrefixSameLengthThenSameList!1401 input!5817 testedP!294 input!5817))))

(assert (=> b!5171073 false))

(declare-fun b!5171074 () Bool)

(declare-fun tp!1450690 () Bool)

(assert (=> b!5171074 (= e!3222064 (and tp_is_empty!38491 tp!1450690))))

(declare-fun b!5171075 () Bool)

(declare-fun matchZipper!967 ((InoxSet Context!8006) List!60204) Bool)

(assert (=> b!5171075 (= e!3222068 (matchZipper!967 baseZ!62 (_1!35199 lt!2128650)))))

(assert (= (and start!547340 res!2197893) b!5171065))

(assert (= (and b!5171065 res!2197894) b!5171066))

(assert (= (and b!5171066 res!2197890) b!5171064))

(assert (= (and b!5171064 res!2197891) b!5171068))

(assert (= (and b!5171068 c!890103) b!5171073))

(assert (= (and b!5171068 (not c!890103)) b!5171071))

(assert (= (and b!5171068 (not res!2197896)) b!5171062))

(assert (= (and b!5171062 (not res!2197895)) b!5171070))

(assert (= (and b!5171070 (not res!2197889)) b!5171067))

(assert (= (and b!5171067 (not res!2197892)) b!5171075))

(get-info :version)

(assert (= (and start!547340 ((_ is Cons!60080) testedP!294)) b!5171069))

(assert (= (and start!547340 ((_ is Cons!60080) input!5817)) b!5171074))

(assert (= (and start!547340 condSetEmpty!32008) setIsEmpty!32007))

(assert (= (and start!547340 (not condSetEmpty!32008)) setNonEmpty!32007))

(assert (= setNonEmpty!32007 b!5171072))

(assert (= (and start!547340 condSetEmpty!32007) setIsEmpty!32008))

(assert (= (and start!547340 (not condSetEmpty!32007)) setNonEmpty!32008))

(assert (= setNonEmpty!32008 b!5171063))

(declare-fun m!6223844 () Bool)

(assert (=> b!5171065 m!6223844))

(declare-fun m!6223846 () Bool)

(assert (=> b!5171068 m!6223846))

(declare-fun m!6223848 () Bool)

(assert (=> b!5171075 m!6223848))

(declare-fun m!6223850 () Bool)

(assert (=> setNonEmpty!32008 m!6223850))

(declare-fun m!6223852 () Bool)

(assert (=> b!5171073 m!6223852))

(declare-fun m!6223854 () Bool)

(assert (=> b!5171073 m!6223854))

(declare-fun m!6223856 () Bool)

(assert (=> b!5171073 m!6223856))

(declare-fun m!6223858 () Bool)

(assert (=> setNonEmpty!32007 m!6223858))

(declare-fun m!6223860 () Bool)

(assert (=> b!5171062 m!6223860))

(declare-fun m!6223862 () Bool)

(assert (=> b!5171062 m!6223862))

(declare-fun m!6223864 () Bool)

(assert (=> b!5171062 m!6223864))

(declare-fun m!6223866 () Bool)

(assert (=> b!5171062 m!6223866))

(declare-fun m!6223868 () Bool)

(assert (=> b!5171062 m!6223868))

(declare-fun m!6223870 () Bool)

(assert (=> b!5171066 m!6223870))

(declare-fun m!6223872 () Bool)

(assert (=> b!5171066 m!6223872))

(declare-fun m!6223874 () Bool)

(assert (=> b!5171066 m!6223874))

(declare-fun m!6223876 () Bool)

(assert (=> b!5171066 m!6223876))

(declare-fun m!6223878 () Bool)

(assert (=> b!5171066 m!6223878))

(declare-fun m!6223880 () Bool)

(assert (=> b!5171070 m!6223880))

(assert (=> b!5171070 m!6223880))

(declare-fun m!6223882 () Bool)

(assert (=> b!5171070 m!6223882))

(declare-fun m!6223884 () Bool)

(assert (=> b!5171070 m!6223884))

(declare-fun m!6223886 () Bool)

(assert (=> b!5171070 m!6223886))

(declare-fun m!6223888 () Bool)

(assert (=> b!5171067 m!6223888))

(declare-fun m!6223890 () Bool)

(assert (=> b!5171067 m!6223890))

(declare-fun m!6223892 () Bool)

(assert (=> b!5171067 m!6223892))

(declare-fun m!6223894 () Bool)

(assert (=> b!5171067 m!6223894))

(declare-fun m!6223896 () Bool)

(assert (=> b!5171067 m!6223896))

(declare-fun m!6223898 () Bool)

(assert (=> b!5171067 m!6223898))

(assert (=> b!5171067 m!6223892))

(declare-fun m!6223900 () Bool)

(assert (=> b!5171067 m!6223900))

(assert (=> b!5171067 m!6223890))

(declare-fun m!6223902 () Bool)

(assert (=> start!547340 m!6223902))

(check-sat (not b!5171070) (not b!5171074) (not b!5171068) (not b!5171065) (not b!5171075) tp_is_empty!38491 (not b!5171063) (not b!5171062) (not b!5171069) (not start!547340) (not setNonEmpty!32007) (not b!5171066) (not b!5171067) (not b!5171072) (not setNonEmpty!32008) (not b!5171073))
(check-sat)
