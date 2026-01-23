; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546996 () Bool)

(assert start!546996)

(declare-fun res!2196984 () Bool)

(declare-fun e!3220568 () Bool)

(assert (=> start!546996 (=> (not res!2196984) (not e!3220568))))

(declare-datatypes ((C!29468 0))(
  ( (C!29469 (val!24436 Int)) )
))
(declare-datatypes ((List!60159 0))(
  ( (Nil!60035) (Cons!60035 (h!66483 C!29468) (t!373312 List!60159)) )
))
(declare-fun testedP!294 () List!60159)

(declare-fun input!5817 () List!60159)

(declare-fun isPrefix!5732 (List!60159 List!60159) Bool)

(assert (=> start!546996 (= res!2196984 (isPrefix!5732 testedP!294 input!5817))))

(assert (=> start!546996 e!3220568))

(declare-fun e!3220569 () Bool)

(assert (=> start!546996 e!3220569))

(declare-fun e!3220565 () Bool)

(assert (=> start!546996 e!3220565))

(declare-fun condSetEmpty!31855 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14599 0))(
  ( (ElementMatch!14599 (c!889546 C!29468)) (Concat!23444 (regOne!29710 Regex!14599) (regTwo!29710 Regex!14599)) (EmptyExpr!14599) (Star!14599 (reg!14928 Regex!14599)) (EmptyLang!14599) (Union!14599 (regOne!29711 Regex!14599) (regTwo!29711 Regex!14599)) )
))
(declare-datatypes ((List!60160 0))(
  ( (Nil!60036) (Cons!60036 (h!66484 Regex!14599) (t!373313 List!60160)) )
))
(declare-datatypes ((Context!7966 0))(
  ( (Context!7967 (exprs!4483 List!60160)) )
))
(declare-fun baseZ!62 () (InoxSet Context!7966))

(assert (=> start!546996 (= condSetEmpty!31855 (= baseZ!62 ((as const (Array Context!7966 Bool)) false)))))

(declare-fun setRes!31856 () Bool)

(assert (=> start!546996 setRes!31856))

(declare-fun condSetEmpty!31856 () Bool)

(declare-fun z!4581 () (InoxSet Context!7966))

(assert (=> start!546996 (= condSetEmpty!31856 (= z!4581 ((as const (Array Context!7966 Bool)) false)))))

(declare-fun setRes!31855 () Bool)

(assert (=> start!546996 setRes!31855))

(declare-fun e!3220562 () Bool)

(declare-fun setElem!31855 () Context!7966)

(declare-fun setNonEmpty!31855 () Bool)

(declare-fun tp!1450078 () Bool)

(declare-fun inv!79744 (Context!7966) Bool)

(assert (=> setNonEmpty!31855 (= setRes!31856 (and tp!1450078 (inv!79744 setElem!31855) e!3220562))))

(declare-fun setRest!31855 () (InoxSet Context!7966))

(assert (=> setNonEmpty!31855 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7966 Bool)) false) setElem!31855 true) setRest!31855))))

(declare-fun b!5168737 () Bool)

(declare-fun e!3220566 () Bool)

(assert (=> b!5168737 (= e!3220568 e!3220566)))

(declare-fun res!2196989 () Bool)

(assert (=> b!5168737 (=> (not res!2196989) (not e!3220566))))

(declare-fun lt!2126585 () List!60159)

(declare-fun lt!2126587 () Int)

(declare-fun lt!2126589 () Int)

(declare-fun isEmpty!32143 (List!60159) Bool)

(declare-datatypes ((tuple2!63752 0))(
  ( (tuple2!63753 (_1!35179 List!60159) (_2!35179 List!60159)) )
))
(declare-fun findLongestMatchInnerZipper!257 ((InoxSet Context!7966) List!60159 Int List!60159 List!60159 Int) tuple2!63752)

(assert (=> b!5168737 (= res!2196989 (not (isEmpty!32143 (_1!35179 (findLongestMatchInnerZipper!257 z!4581 testedP!294 lt!2126589 lt!2126585 input!5817 lt!2126587)))))))

(declare-fun size!39635 (List!60159) Int)

(assert (=> b!5168737 (= lt!2126587 (size!39635 input!5817))))

(declare-fun getSuffix!3382 (List!60159 List!60159) List!60159)

(assert (=> b!5168737 (= lt!2126585 (getSuffix!3382 input!5817 testedP!294))))

(assert (=> b!5168737 (= lt!2126589 (size!39635 testedP!294))))

(declare-fun b!5168738 () Bool)

(declare-datatypes ((Unit!151566 0))(
  ( (Unit!151567) )
))
(declare-fun e!3220563 () Unit!151566)

(declare-fun Unit!151568 () Unit!151566)

(assert (=> b!5168738 (= e!3220563 Unit!151568)))

(declare-fun b!5168739 () Bool)

(declare-fun tp_is_empty!38451 () Bool)

(declare-fun tp!1450076 () Bool)

(assert (=> b!5168739 (= e!3220565 (and tp_is_empty!38451 tp!1450076))))

(declare-fun b!5168740 () Bool)

(declare-fun e!3220567 () Bool)

(declare-fun e!3220564 () Bool)

(assert (=> b!5168740 (= e!3220567 e!3220564)))

(declare-fun res!2196986 () Bool)

(assert (=> b!5168740 (=> res!2196986 e!3220564)))

(declare-fun nullableZipper!1145 ((InoxSet Context!7966)) Bool)

(assert (=> b!5168740 (= res!2196986 (not (nullableZipper!1145 z!4581)))))

(declare-fun lt!2126583 () List!60159)

(assert (=> b!5168740 (isPrefix!5732 lt!2126583 input!5817)))

(declare-fun lt!2126592 () Unit!151566)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1045 (List!60159 List!60159) Unit!151566)

(assert (=> b!5168740 (= lt!2126592 (lemmaAddHeadSuffixToPrefixStillPrefix!1045 testedP!294 input!5817))))

(declare-fun ++!13123 (List!60159 List!60159) List!60159)

(declare-fun head!11023 (List!60159) C!29468)

(assert (=> b!5168740 (= lt!2126583 (++!13123 testedP!294 (Cons!60035 (head!11023 lt!2126585) Nil!60035)))))

(declare-fun b!5168741 () Bool)

(declare-fun res!2196988 () Bool)

(assert (=> b!5168741 (=> (not res!2196988) (not e!3220566))))

(assert (=> b!5168741 (= res!2196988 (not (= testedP!294 input!5817)))))

(declare-fun setIsEmpty!31855 () Bool)

(assert (=> setIsEmpty!31855 setRes!31856))

(declare-fun b!5168742 () Bool)

(declare-fun e!3220570 () Bool)

(declare-fun tp!1450074 () Bool)

(assert (=> b!5168742 (= e!3220570 tp!1450074)))

(declare-fun b!5168743 () Bool)

(assert (=> b!5168743 (= e!3220564 true)))

(declare-fun lt!2126588 () Int)

(assert (=> b!5168743 (= lt!2126588 (size!39635 lt!2126583))))

(declare-fun b!5168744 () Bool)

(declare-fun res!2196987 () Bool)

(assert (=> b!5168744 (=> res!2196987 e!3220564)))

(declare-fun tail!10132 (List!60159) List!60159)

(assert (=> b!5168744 (= res!2196987 (not (= (++!13123 lt!2126583 (tail!10132 lt!2126585)) input!5817)))))

(declare-fun setIsEmpty!31856 () Bool)

(assert (=> setIsEmpty!31856 setRes!31855))

(declare-fun b!5168745 () Bool)

(declare-fun tp!1450075 () Bool)

(assert (=> b!5168745 (= e!3220569 (and tp_is_empty!38451 tp!1450075))))

(declare-fun b!5168746 () Bool)

(declare-fun Unit!151569 () Unit!151566)

(assert (=> b!5168746 (= e!3220563 Unit!151569)))

(declare-fun lt!2126590 () Unit!151566)

(declare-fun lemmaIsPrefixRefl!3739 (List!60159 List!60159) Unit!151566)

(assert (=> b!5168746 (= lt!2126590 (lemmaIsPrefixRefl!3739 input!5817 input!5817))))

(assert (=> b!5168746 (isPrefix!5732 input!5817 input!5817)))

(declare-fun lt!2126586 () Unit!151566)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1381 (List!60159 List!60159 List!60159) Unit!151566)

(assert (=> b!5168746 (= lt!2126586 (lemmaIsPrefixSameLengthThenSameList!1381 input!5817 testedP!294 input!5817))))

(assert (=> b!5168746 false))

(declare-fun setElem!31856 () Context!7966)

(declare-fun setNonEmpty!31856 () Bool)

(declare-fun tp!1450077 () Bool)

(assert (=> setNonEmpty!31856 (= setRes!31855 (and tp!1450077 (inv!79744 setElem!31856) e!3220570))))

(declare-fun setRest!31856 () (InoxSet Context!7966))

(assert (=> setNonEmpty!31856 (= z!4581 ((_ map or) (store ((as const (Array Context!7966 Bool)) false) setElem!31856 true) setRest!31856))))

(declare-fun b!5168747 () Bool)

(assert (=> b!5168747 (= e!3220566 (not e!3220567))))

(declare-fun res!2196990 () Bool)

(assert (=> b!5168747 (=> res!2196990 e!3220567)))

(assert (=> b!5168747 (= res!2196990 (>= lt!2126589 lt!2126587))))

(declare-fun lt!2126591 () Unit!151566)

(assert (=> b!5168747 (= lt!2126591 e!3220563)))

(declare-fun c!889545 () Bool)

(assert (=> b!5168747 (= c!889545 (= lt!2126589 lt!2126587))))

(assert (=> b!5168747 (<= lt!2126589 lt!2126587)))

(declare-fun lt!2126584 () Unit!151566)

(declare-fun lemmaIsPrefixThenSmallerEqSize!895 (List!60159 List!60159) Unit!151566)

(assert (=> b!5168747 (= lt!2126584 (lemmaIsPrefixThenSmallerEqSize!895 testedP!294 input!5817))))

(declare-fun b!5168748 () Bool)

(declare-fun res!2196985 () Bool)

(assert (=> b!5168748 (=> (not res!2196985) (not e!3220568))))

(declare-fun derivationZipper!222 ((InoxSet Context!7966) List!60159) (InoxSet Context!7966))

(assert (=> b!5168748 (= res!2196985 (= (derivationZipper!222 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5168749 () Bool)

(declare-fun tp!1450079 () Bool)

(assert (=> b!5168749 (= e!3220562 tp!1450079)))

(assert (= (and start!546996 res!2196984) b!5168748))

(assert (= (and b!5168748 res!2196985) b!5168737))

(assert (= (and b!5168737 res!2196989) b!5168741))

(assert (= (and b!5168741 res!2196988) b!5168747))

(assert (= (and b!5168747 c!889545) b!5168746))

(assert (= (and b!5168747 (not c!889545)) b!5168738))

(assert (= (and b!5168747 (not res!2196990)) b!5168740))

(assert (= (and b!5168740 (not res!2196986)) b!5168744))

(assert (= (and b!5168744 (not res!2196987)) b!5168743))

(get-info :version)

(assert (= (and start!546996 ((_ is Cons!60035) testedP!294)) b!5168745))

(assert (= (and start!546996 ((_ is Cons!60035) input!5817)) b!5168739))

(assert (= (and start!546996 condSetEmpty!31855) setIsEmpty!31855))

(assert (= (and start!546996 (not condSetEmpty!31855)) setNonEmpty!31855))

(assert (= setNonEmpty!31855 b!5168749))

(assert (= (and start!546996 condSetEmpty!31856) setIsEmpty!31856))

(assert (= (and start!546996 (not condSetEmpty!31856)) setNonEmpty!31856))

(assert (= setNonEmpty!31856 b!5168742))

(declare-fun m!6220122 () Bool)

(assert (=> start!546996 m!6220122))

(declare-fun m!6220124 () Bool)

(assert (=> b!5168737 m!6220124))

(declare-fun m!6220126 () Bool)

(assert (=> b!5168737 m!6220126))

(declare-fun m!6220128 () Bool)

(assert (=> b!5168737 m!6220128))

(declare-fun m!6220130 () Bool)

(assert (=> b!5168737 m!6220130))

(declare-fun m!6220132 () Bool)

(assert (=> b!5168737 m!6220132))

(declare-fun m!6220134 () Bool)

(assert (=> b!5168740 m!6220134))

(declare-fun m!6220136 () Bool)

(assert (=> b!5168740 m!6220136))

(declare-fun m!6220138 () Bool)

(assert (=> b!5168740 m!6220138))

(declare-fun m!6220140 () Bool)

(assert (=> b!5168740 m!6220140))

(declare-fun m!6220142 () Bool)

(assert (=> b!5168740 m!6220142))

(declare-fun m!6220144 () Bool)

(assert (=> b!5168744 m!6220144))

(assert (=> b!5168744 m!6220144))

(declare-fun m!6220146 () Bool)

(assert (=> b!5168744 m!6220146))

(declare-fun m!6220148 () Bool)

(assert (=> b!5168748 m!6220148))

(declare-fun m!6220150 () Bool)

(assert (=> setNonEmpty!31856 m!6220150))

(declare-fun m!6220152 () Bool)

(assert (=> b!5168747 m!6220152))

(declare-fun m!6220154 () Bool)

(assert (=> setNonEmpty!31855 m!6220154))

(declare-fun m!6220156 () Bool)

(assert (=> b!5168743 m!6220156))

(declare-fun m!6220158 () Bool)

(assert (=> b!5168746 m!6220158))

(declare-fun m!6220160 () Bool)

(assert (=> b!5168746 m!6220160))

(declare-fun m!6220162 () Bool)

(assert (=> b!5168746 m!6220162))

(check-sat (not start!546996) (not b!5168747) (not b!5168748) (not setNonEmpty!31856) (not b!5168749) (not b!5168737) tp_is_empty!38451 (not b!5168746) (not b!5168740) (not b!5168743) (not b!5168739) (not b!5168744) (not b!5168745) (not setNonEmpty!31855) (not b!5168742))
(check-sat)
