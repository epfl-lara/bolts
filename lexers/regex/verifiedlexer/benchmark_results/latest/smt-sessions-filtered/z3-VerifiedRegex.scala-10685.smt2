; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547336 () Bool)

(assert start!547336)

(declare-fun b!5170978 () Bool)

(declare-fun e!3221995 () Bool)

(declare-fun tp!1450656 () Bool)

(assert (=> b!5170978 (= e!3221995 tp!1450656)))

(declare-fun setIsEmpty!31995 () Bool)

(declare-fun setRes!31995 () Bool)

(assert (=> setIsEmpty!31995 setRes!31995))

(declare-fun b!5170979 () Bool)

(declare-fun res!2197842 () Bool)

(declare-fun e!3222000 () Bool)

(assert (=> b!5170979 (=> (not res!2197842) (not e!3222000))))

(declare-datatypes ((C!29504 0))(
  ( (C!29505 (val!24454 Int)) )
))
(declare-datatypes ((List!60199 0))(
  ( (Nil!60075) (Cons!60075 (h!66523 C!29504) (t!373352 List!60199)) )
))
(declare-fun testedP!294 () List!60199)

(declare-fun input!5817 () List!60199)

(assert (=> b!5170979 (= res!2197842 (not (= testedP!294 input!5817)))))

(declare-fun b!5170980 () Bool)

(declare-fun e!3222004 () Bool)

(declare-fun tp!1450659 () Bool)

(assert (=> b!5170980 (= e!3222004 tp!1450659)))

(declare-datatypes ((Regex!14617 0))(
  ( (ElementMatch!14617 (c!890096 C!29504)) (Concat!23462 (regOne!29746 Regex!14617) (regTwo!29746 Regex!14617)) (EmptyExpr!14617) (Star!14617 (reg!14946 Regex!14617)) (EmptyLang!14617) (Union!14617 (regOne!29747 Regex!14617) (regTwo!29747 Regex!14617)) )
))
(declare-datatypes ((List!60200 0))(
  ( (Nil!60076) (Cons!60076 (h!66524 Regex!14617) (t!373353 List!60200)) )
))
(declare-datatypes ((Context!8002 0))(
  ( (Context!8003 (exprs!4501 List!60200)) )
))
(declare-fun setElem!31995 () Context!8002)

(declare-fun tp!1450655 () Bool)

(declare-fun setNonEmpty!31995 () Bool)

(declare-fun inv!79789 (Context!8002) Bool)

(assert (=> setNonEmpty!31995 (= setRes!31995 (and tp!1450655 (inv!79789 setElem!31995) e!3222004))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4581 () (InoxSet Context!8002))

(declare-fun setRest!31996 () (InoxSet Context!8002))

(assert (=> setNonEmpty!31995 (= z!4581 ((_ map or) (store ((as const (Array Context!8002 Bool)) false) setElem!31995 true) setRest!31996))))

(declare-fun res!2197846 () Bool)

(declare-fun e!3222003 () Bool)

(assert (=> start!547336 (=> (not res!2197846) (not e!3222003))))

(declare-fun isPrefix!5750 (List!60199 List!60199) Bool)

(assert (=> start!547336 (= res!2197846 (isPrefix!5750 testedP!294 input!5817))))

(assert (=> start!547336 e!3222003))

(declare-fun e!3222002 () Bool)

(assert (=> start!547336 e!3222002))

(declare-fun e!3221994 () Bool)

(assert (=> start!547336 e!3221994))

(declare-fun condSetEmpty!31995 () Bool)

(declare-fun baseZ!62 () (InoxSet Context!8002))

(assert (=> start!547336 (= condSetEmpty!31995 (= baseZ!62 ((as const (Array Context!8002 Bool)) false)))))

(declare-fun setRes!31996 () Bool)

(assert (=> start!547336 setRes!31996))

(declare-fun condSetEmpty!31996 () Bool)

(assert (=> start!547336 (= condSetEmpty!31996 (= z!4581 ((as const (Array Context!8002 Bool)) false)))))

(assert (=> start!547336 setRes!31995))

(declare-fun b!5170981 () Bool)

(declare-fun e!3221999 () Bool)

(declare-datatypes ((tuple2!63788 0))(
  ( (tuple2!63789 (_1!35197 List!60199) (_2!35197 List!60199)) )
))
(declare-fun lt!2128564 () tuple2!63788)

(declare-fun matchZipper!965 ((InoxSet Context!8002) List!60199) Bool)

(assert (=> b!5170981 (= e!3221999 (matchZipper!965 baseZ!62 (_1!35197 lt!2128564)))))

(declare-fun b!5170982 () Bool)

(declare-fun e!3222001 () Bool)

(declare-fun e!3221996 () Bool)

(assert (=> b!5170982 (= e!3222001 e!3221996)))

(declare-fun res!2197844 () Bool)

(assert (=> b!5170982 (=> res!2197844 e!3221996)))

(declare-fun nullableZipper!1163 ((InoxSet Context!8002)) Bool)

(assert (=> b!5170982 (= res!2197844 (not (nullableZipper!1163 z!4581)))))

(declare-fun lt!2128561 () List!60199)

(assert (=> b!5170982 (isPrefix!5750 lt!2128561 input!5817)))

(declare-datatypes ((Unit!151714 0))(
  ( (Unit!151715) )
))
(declare-fun lt!2128565 () Unit!151714)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1063 (List!60199 List!60199) Unit!151714)

(assert (=> b!5170982 (= lt!2128565 (lemmaAddHeadSuffixToPrefixStillPrefix!1063 testedP!294 input!5817))))

(declare-fun lt!2128557 () C!29504)

(declare-fun ++!13141 (List!60199 List!60199) List!60199)

(assert (=> b!5170982 (= lt!2128561 (++!13141 testedP!294 (Cons!60075 lt!2128557 Nil!60075)))))

(declare-fun lt!2128562 () List!60199)

(declare-fun head!11041 (List!60199) C!29504)

(assert (=> b!5170982 (= lt!2128557 (head!11041 lt!2128562))))

(declare-fun b!5170983 () Bool)

(declare-fun tp_is_empty!38487 () Bool)

(declare-fun tp!1450657 () Bool)

(assert (=> b!5170983 (= e!3221994 (and tp_is_empty!38487 tp!1450657))))

(declare-fun setIsEmpty!31996 () Bool)

(assert (=> setIsEmpty!31996 setRes!31996))

(declare-fun b!5170984 () Bool)

(declare-fun e!3221998 () Bool)

(assert (=> b!5170984 (= e!3221996 e!3221998)))

(declare-fun res!2197847 () Bool)

(assert (=> b!5170984 (=> res!2197847 e!3221998)))

(declare-fun lt!2128556 () (InoxSet Context!8002))

(declare-fun lt!2128563 () Int)

(declare-fun lt!2128555 () Int)

(declare-fun isEmpty!32165 (List!60199) Bool)

(declare-fun findLongestMatchInnerZipper!275 ((InoxSet Context!8002) List!60199 Int List!60199 List!60199 Int) tuple2!63788)

(declare-fun tail!10150 (List!60199) List!60199)

(assert (=> b!5170984 (= res!2197847 (isEmpty!32165 (_1!35197 (findLongestMatchInnerZipper!275 lt!2128556 lt!2128561 (+ 1 lt!2128563) (tail!10150 lt!2128562) input!5817 lt!2128555))))))

(declare-fun derivationStepZipper!971 ((InoxSet Context!8002) C!29504) (InoxSet Context!8002))

(assert (=> b!5170984 (= lt!2128556 (derivationStepZipper!971 z!4581 lt!2128557))))

(declare-fun b!5170985 () Bool)

(assert (=> b!5170985 (= e!3222000 (not e!3222001))))

(declare-fun res!2197845 () Bool)

(assert (=> b!5170985 (=> res!2197845 e!3222001)))

(assert (=> b!5170985 (= res!2197845 (>= lt!2128563 lt!2128555))))

(declare-fun lt!2128560 () Unit!151714)

(declare-fun e!3221997 () Unit!151714)

(assert (=> b!5170985 (= lt!2128560 e!3221997)))

(declare-fun c!890095 () Bool)

(assert (=> b!5170985 (= c!890095 (= lt!2128563 lt!2128555))))

(assert (=> b!5170985 (<= lt!2128563 lt!2128555)))

(declare-fun lt!2128558 () Unit!151714)

(declare-fun lemmaIsPrefixThenSmallerEqSize!913 (List!60199 List!60199) Unit!151714)

(assert (=> b!5170985 (= lt!2128558 (lemmaIsPrefixThenSmallerEqSize!913 testedP!294 input!5817))))

(declare-fun b!5170986 () Bool)

(assert (=> b!5170986 (= e!3221998 (>= lt!2128555 lt!2128563))))

(assert (=> b!5170986 e!3221999))

(declare-fun res!2197843 () Bool)

(assert (=> b!5170986 (=> res!2197843 e!3221999)))

(assert (=> b!5170986 (= res!2197843 (isEmpty!32165 (_1!35197 lt!2128564)))))

(declare-fun size!39653 (List!60199) Int)

(declare-fun getSuffix!3400 (List!60199 List!60199) List!60199)

(assert (=> b!5170986 (= lt!2128564 (findLongestMatchInnerZipper!275 lt!2128556 lt!2128561 (size!39653 lt!2128561) (getSuffix!3400 input!5817 lt!2128561) input!5817 lt!2128555))))

(declare-fun lt!2128568 () Unit!151714)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!13 ((InoxSet Context!8002) (InoxSet Context!8002) List!60199 List!60199) Unit!151714)

(assert (=> b!5170986 (= lt!2128568 (longestMatchIsAcceptedByMatchOrIsEmptyRec!13 baseZ!62 lt!2128556 lt!2128561 input!5817))))

(declare-fun derivationZipper!240 ((InoxSet Context!8002) List!60199) (InoxSet Context!8002))

(assert (=> b!5170986 (= (derivationZipper!240 baseZ!62 lt!2128561) lt!2128556)))

(declare-fun lt!2128567 () Unit!151714)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!91 ((InoxSet Context!8002) (InoxSet Context!8002) List!60199 C!29504) Unit!151714)

(assert (=> b!5170986 (= lt!2128567 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!91 baseZ!62 z!4581 testedP!294 lt!2128557))))

(declare-fun b!5170987 () Bool)

(declare-fun res!2197848 () Bool)

(assert (=> b!5170987 (=> (not res!2197848) (not e!3222003))))

(assert (=> b!5170987 (= res!2197848 (= (derivationZipper!240 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5170988 () Bool)

(declare-fun Unit!151716 () Unit!151714)

(assert (=> b!5170988 (= e!3221997 Unit!151716)))

(declare-fun b!5170989 () Bool)

(declare-fun Unit!151717 () Unit!151714)

(assert (=> b!5170989 (= e!3221997 Unit!151717)))

(declare-fun lt!2128566 () Unit!151714)

(declare-fun lemmaIsPrefixRefl!3757 (List!60199 List!60199) Unit!151714)

(assert (=> b!5170989 (= lt!2128566 (lemmaIsPrefixRefl!3757 input!5817 input!5817))))

(assert (=> b!5170989 (isPrefix!5750 input!5817 input!5817)))

(declare-fun lt!2128559 () Unit!151714)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1399 (List!60199 List!60199 List!60199) Unit!151714)

(assert (=> b!5170989 (= lt!2128559 (lemmaIsPrefixSameLengthThenSameList!1399 input!5817 testedP!294 input!5817))))

(assert (=> b!5170989 false))

(declare-fun b!5170990 () Bool)

(assert (=> b!5170990 (= e!3222003 e!3222000)))

(declare-fun res!2197841 () Bool)

(assert (=> b!5170990 (=> (not res!2197841) (not e!3222000))))

(assert (=> b!5170990 (= res!2197841 (not (isEmpty!32165 (_1!35197 (findLongestMatchInnerZipper!275 z!4581 testedP!294 lt!2128563 lt!2128562 input!5817 lt!2128555)))))))

(assert (=> b!5170990 (= lt!2128555 (size!39653 input!5817))))

(assert (=> b!5170990 (= lt!2128562 (getSuffix!3400 input!5817 testedP!294))))

(assert (=> b!5170990 (= lt!2128563 (size!39653 testedP!294))))

(declare-fun b!5170991 () Bool)

(declare-fun tp!1450654 () Bool)

(assert (=> b!5170991 (= e!3222002 (and tp_is_empty!38487 tp!1450654))))

(declare-fun setElem!31996 () Context!8002)

(declare-fun tp!1450658 () Bool)

(declare-fun setNonEmpty!31996 () Bool)

(assert (=> setNonEmpty!31996 (= setRes!31996 (and tp!1450658 (inv!79789 setElem!31996) e!3221995))))

(declare-fun setRest!31995 () (InoxSet Context!8002))

(assert (=> setNonEmpty!31996 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8002 Bool)) false) setElem!31996 true) setRest!31995))))

(assert (= (and start!547336 res!2197846) b!5170987))

(assert (= (and b!5170987 res!2197848) b!5170990))

(assert (= (and b!5170990 res!2197841) b!5170979))

(assert (= (and b!5170979 res!2197842) b!5170985))

(assert (= (and b!5170985 c!890095) b!5170989))

(assert (= (and b!5170985 (not c!890095)) b!5170988))

(assert (= (and b!5170985 (not res!2197845)) b!5170982))

(assert (= (and b!5170982 (not res!2197844)) b!5170984))

(assert (= (and b!5170984 (not res!2197847)) b!5170986))

(assert (= (and b!5170986 (not res!2197843)) b!5170981))

(get-info :version)

(assert (= (and start!547336 ((_ is Cons!60075) testedP!294)) b!5170991))

(assert (= (and start!547336 ((_ is Cons!60075) input!5817)) b!5170983))

(assert (= (and start!547336 condSetEmpty!31995) setIsEmpty!31996))

(assert (= (and start!547336 (not condSetEmpty!31995)) setNonEmpty!31996))

(assert (= setNonEmpty!31996 b!5170978))

(assert (= (and start!547336 condSetEmpty!31996) setIsEmpty!31995))

(assert (= (and start!547336 (not condSetEmpty!31996)) setNonEmpty!31995))

(assert (= setNonEmpty!31995 b!5170980))

(declare-fun m!6223724 () Bool)

(assert (=> b!5170982 m!6223724))

(declare-fun m!6223726 () Bool)

(assert (=> b!5170982 m!6223726))

(declare-fun m!6223728 () Bool)

(assert (=> b!5170982 m!6223728))

(declare-fun m!6223730 () Bool)

(assert (=> b!5170982 m!6223730))

(declare-fun m!6223732 () Bool)

(assert (=> b!5170982 m!6223732))

(declare-fun m!6223734 () Bool)

(assert (=> b!5170990 m!6223734))

(declare-fun m!6223736 () Bool)

(assert (=> b!5170990 m!6223736))

(declare-fun m!6223738 () Bool)

(assert (=> b!5170990 m!6223738))

(declare-fun m!6223740 () Bool)

(assert (=> b!5170990 m!6223740))

(declare-fun m!6223742 () Bool)

(assert (=> b!5170990 m!6223742))

(declare-fun m!6223744 () Bool)

(assert (=> b!5170986 m!6223744))

(declare-fun m!6223746 () Bool)

(assert (=> b!5170986 m!6223746))

(declare-fun m!6223748 () Bool)

(assert (=> b!5170986 m!6223748))

(declare-fun m!6223750 () Bool)

(assert (=> b!5170986 m!6223750))

(declare-fun m!6223752 () Bool)

(assert (=> b!5170986 m!6223752))

(assert (=> b!5170986 m!6223746))

(assert (=> b!5170986 m!6223744))

(declare-fun m!6223754 () Bool)

(assert (=> b!5170986 m!6223754))

(declare-fun m!6223756 () Bool)

(assert (=> b!5170986 m!6223756))

(declare-fun m!6223758 () Bool)

(assert (=> start!547336 m!6223758))

(declare-fun m!6223760 () Bool)

(assert (=> setNonEmpty!31996 m!6223760))

(declare-fun m!6223762 () Bool)

(assert (=> b!5170981 m!6223762))

(declare-fun m!6223764 () Bool)

(assert (=> b!5170984 m!6223764))

(assert (=> b!5170984 m!6223764))

(declare-fun m!6223766 () Bool)

(assert (=> b!5170984 m!6223766))

(declare-fun m!6223768 () Bool)

(assert (=> b!5170984 m!6223768))

(declare-fun m!6223770 () Bool)

(assert (=> b!5170984 m!6223770))

(declare-fun m!6223772 () Bool)

(assert (=> b!5170985 m!6223772))

(declare-fun m!6223774 () Bool)

(assert (=> setNonEmpty!31995 m!6223774))

(declare-fun m!6223776 () Bool)

(assert (=> b!5170989 m!6223776))

(declare-fun m!6223778 () Bool)

(assert (=> b!5170989 m!6223778))

(declare-fun m!6223780 () Bool)

(assert (=> b!5170989 m!6223780))

(declare-fun m!6223782 () Bool)

(assert (=> b!5170987 m!6223782))

(check-sat (not b!5170986) (not b!5170980) (not b!5170982) (not setNonEmpty!31995) (not b!5170978) (not b!5170990) (not b!5170981) (not start!547336) (not b!5170984) (not b!5170991) (not b!5170987) (not b!5170985) tp_is_empty!38487 (not b!5170989) (not setNonEmpty!31996) (not b!5170983))
(check-sat)
