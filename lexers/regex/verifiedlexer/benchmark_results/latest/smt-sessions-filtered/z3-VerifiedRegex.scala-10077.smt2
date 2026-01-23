; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527434 () Bool)

(assert start!527434)

(declare-fun b!4989709 () Bool)

(declare-fun e!3118446 () Bool)

(declare-fun e!3118450 () Bool)

(assert (=> b!4989709 (= e!3118446 e!3118450)))

(declare-fun res!2130054 () Bool)

(assert (=> b!4989709 (=> (not res!2130054) (not e!3118450))))

(declare-datatypes ((C!27728 0))(
  ( (C!27729 (val!23230 Int)) )
))
(declare-datatypes ((List!57821 0))(
  ( (Nil!57697) (Cons!57697 (h!64145 C!27728) (t!370147 List!57821)) )
))
(declare-fun lt!2063002 () List!57821)

(declare-fun lt!2063000 () List!57821)

(assert (=> b!4989709 (= res!2130054 (= lt!2063002 lt!2063000))))

(declare-fun lt!2062996 () List!57821)

(declare-fun lt!2063010 () List!57821)

(declare-fun ++!12583 (List!57821 List!57821) List!57821)

(assert (=> b!4989709 (= lt!2063002 (++!12583 lt!2062996 lt!2063010))))

(declare-datatypes ((IArray!30577 0))(
  ( (IArray!30578 (innerList!15346 List!57821)) )
))
(declare-datatypes ((Conc!15258 0))(
  ( (Node!15258 (left!42217 Conc!15258) (right!42547 Conc!15258) (csize!30746 Int) (cheight!15469 Int)) (Leaf!25336 (xs!18584 IArray!30577) (csize!30747 Int)) (Empty!15258) )
))
(declare-datatypes ((BalanceConc!29946 0))(
  ( (BalanceConc!29947 (c!851343 Conc!15258)) )
))
(declare-datatypes ((tuple2!62784 0))(
  ( (tuple2!62785 (_1!34695 BalanceConc!29946) (_2!34695 BalanceConc!29946)) )
))
(declare-fun lt!2063003 () tuple2!62784)

(declare-fun list!18542 (BalanceConc!29946) List!57821)

(assert (=> b!4989709 (= lt!2063010 (list!18542 (_2!34695 lt!2063003)))))

(assert (=> b!4989709 (= lt!2062996 (list!18542 (_1!34695 lt!2063003)))))

(declare-datatypes ((tuple2!62786 0))(
  ( (tuple2!62787 (_1!34696 List!57821) (_2!34696 List!57821)) )
))
(declare-fun lt!2063007 () tuple2!62786)

(declare-datatypes ((Regex!13739 0))(
  ( (ElementMatch!13739 (c!851344 C!27728)) (Concat!22532 (regOne!27990 Regex!13739) (regTwo!27990 Regex!13739)) (EmptyExpr!13739) (Star!13739 (reg!14068 Regex!13739)) (EmptyLang!13739) (Union!13739 (regOne!27991 Regex!13739) (regTwo!27991 Regex!13739)) )
))
(declare-fun r!12727 () Regex!13739)

(declare-fun findLongestMatch!1752 (Regex!13739 List!57821) tuple2!62786)

(assert (=> b!4989709 (= lt!2063007 (findLongestMatch!1752 r!12727 lt!2063000))))

(declare-fun lt!2063008 () Int)

(declare-fun lt!2062997 () Int)

(declare-fun input!5597 () BalanceConc!29946)

(declare-fun size!38330 (BalanceConc!29946) Int)

(assert (=> b!4989709 (= lt!2063008 (- lt!2062997 (size!38330 input!5597)))))

(declare-fun totalInput!1012 () BalanceConc!29946)

(assert (=> b!4989709 (= lt!2062997 (size!38330 totalInput!1012))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!57822 0))(
  ( (Nil!57698) (Cons!57698 (h!64146 Regex!13739) (t!370148 List!57822)) )
))
(declare-datatypes ((Context!6328 0))(
  ( (Context!6329 (exprs!3664 List!57822)) )
))
(declare-fun z!4183 () (InoxSet Context!6328))

(declare-fun findLongestMatchZipperFastV2!41 ((InoxSet Context!6328) BalanceConc!29946 BalanceConc!29946) tuple2!62784)

(assert (=> b!4989709 (= lt!2063003 (findLongestMatchZipperFastV2!41 z!4183 input!5597 totalInput!1012))))

(declare-fun b!4989710 () Bool)

(declare-fun e!3118453 () Bool)

(declare-fun tp!1398638 () Bool)

(assert (=> b!4989710 (= e!3118453 tp!1398638)))

(declare-fun setIsEmpty!28172 () Bool)

(declare-fun setRes!28172 () Bool)

(assert (=> setIsEmpty!28172 setRes!28172))

(declare-fun b!4989711 () Bool)

(declare-fun e!3118447 () Bool)

(declare-fun tp_is_empty!36475 () Bool)

(assert (=> b!4989711 (= e!3118447 tp_is_empty!36475)))

(declare-fun b!4989713 () Bool)

(declare-fun e!3118457 () Bool)

(declare-fun tp!1398640 () Bool)

(declare-fun inv!75713 (Conc!15258) Bool)

(assert (=> b!4989713 (= e!3118457 (and (inv!75713 (c!851343 input!5597)) tp!1398640))))

(declare-fun b!4989714 () Bool)

(declare-fun e!3118456 () Bool)

(declare-fun lt!2063009 () tuple2!62786)

(declare-fun matchR!6711 (Regex!13739 List!57821) Bool)

(assert (=> b!4989714 (= e!3118456 (matchR!6711 r!12727 (_1!34696 lt!2063009)))))

(declare-fun tp!1398636 () Bool)

(declare-fun setNonEmpty!28172 () Bool)

(declare-fun setElem!28172 () Context!6328)

(declare-fun inv!75714 (Context!6328) Bool)

(assert (=> setNonEmpty!28172 (= setRes!28172 (and tp!1398636 (inv!75714 setElem!28172) e!3118453))))

(declare-fun setRest!28172 () (InoxSet Context!6328))

(assert (=> setNonEmpty!28172 (= z!4183 ((_ map or) (store ((as const (Array Context!6328 Bool)) false) setElem!28172 true) setRest!28172))))

(declare-fun b!4989715 () Bool)

(declare-fun e!3118448 () Bool)

(declare-fun e!3118451 () Bool)

(assert (=> b!4989715 (= e!3118448 (not e!3118451))))

(declare-fun res!2130052 () Bool)

(assert (=> b!4989715 (=> res!2130052 e!3118451)))

(declare-fun e!3118449 () Bool)

(assert (=> b!4989715 (= res!2130052 e!3118449)))

(declare-fun res!2130051 () Bool)

(assert (=> b!4989715 (=> (not res!2130051) (not e!3118449))))

(declare-fun matchZipper!515 ((InoxSet Context!6328) List!57821) Bool)

(assert (=> b!4989715 (= res!2130051 (not (matchZipper!515 z!4183 lt!2062996)))))

(assert (=> b!4989715 e!3118456))

(declare-fun res!2130059 () Bool)

(assert (=> b!4989715 (=> res!2130059 e!3118456)))

(declare-fun isEmpty!31212 (List!57821) Bool)

(assert (=> b!4989715 (= res!2130059 (isEmpty!31212 (_1!34696 lt!2063009)))))

(declare-fun findLongestMatchInner!1928 (Regex!13739 List!57821 Int List!57821 List!57821 Int) tuple2!62786)

(declare-fun size!38331 (List!57821) Int)

(assert (=> b!4989715 (= lt!2063009 (findLongestMatchInner!1928 r!12727 Nil!57697 (size!38331 Nil!57697) lt!2063000 lt!2063000 (size!38331 lt!2063000)))))

(declare-datatypes ((Unit!148843 0))(
  ( (Unit!148844) )
))
(declare-fun lt!2062998 () Unit!148843)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1889 (Regex!13739 List!57821) Unit!148843)

(assert (=> b!4989715 (= lt!2062998 (longestMatchIsAcceptedByMatchOrIsEmpty!1889 r!12727 lt!2063000))))

(declare-fun e!3118452 () Bool)

(assert (=> b!4989715 e!3118452))

(declare-fun res!2130057 () Bool)

(assert (=> b!4989715 (=> res!2130057 e!3118452)))

(declare-fun lt!2063012 () Int)

(assert (=> b!4989715 (= res!2130057 (= lt!2063012 0))))

(declare-fun findLongestMatchInnerZipperFastV2!79 ((InoxSet Context!6328) Int BalanceConc!29946 Int) Int)

(assert (=> b!4989715 (= lt!2063012 (findLongestMatchInnerZipperFastV2!79 z!4183 lt!2063008 totalInput!1012 lt!2062997))))

(declare-fun lt!2063005 () Unit!148843)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!6 ((InoxSet Context!6328) Int BalanceConc!29946) Unit!148843)

(assert (=> b!4989715 (= lt!2063005 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!6 z!4183 lt!2063008 totalInput!1012))))

(declare-fun lt!2063004 () List!57821)

(declare-fun isPrefix!5296 (List!57821 List!57821) Bool)

(declare-fun take!604 (List!57821 Int) List!57821)

(assert (=> b!4989715 (isPrefix!5296 (take!604 lt!2063004 lt!2063008) lt!2063004)))

(declare-fun lt!2063011 () Unit!148843)

(declare-fun lemmaTakeIsPrefix!98 (List!57821 Int) Unit!148843)

(assert (=> b!4989715 (= lt!2063011 (lemmaTakeIsPrefix!98 lt!2063004 lt!2063008))))

(declare-fun lt!2062999 () List!57821)

(assert (=> b!4989715 (isPrefix!5296 (_1!34696 lt!2063007) lt!2062999)))

(declare-fun lt!2063006 () Unit!148843)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3394 (List!57821 List!57821) Unit!148843)

(assert (=> b!4989715 (= lt!2063006 (lemmaConcatTwoListThenFirstIsPrefix!3394 (_1!34696 lt!2063007) (_2!34696 lt!2063007)))))

(assert (=> b!4989715 (isPrefix!5296 lt!2062996 lt!2063002)))

(declare-fun lt!2063001 () Unit!148843)

(assert (=> b!4989715 (= lt!2063001 (lemmaConcatTwoListThenFirstIsPrefix!3394 lt!2062996 lt!2063010))))

(declare-fun b!4989716 () Bool)

(declare-fun tp!1398635 () Bool)

(assert (=> b!4989716 (= e!3118447 tp!1398635)))

(declare-fun b!4989717 () Bool)

(assert (=> b!4989717 (= e!3118451 true)))

(declare-fun lt!2062995 () Bool)

(assert (=> b!4989717 (= lt!2062995 (matchR!6711 r!12727 (_1!34696 lt!2063007)))))

(declare-fun b!4989718 () Bool)

(declare-fun e!3118455 () Bool)

(assert (=> b!4989718 (= e!3118455 e!3118446)))

(declare-fun res!2130055 () Bool)

(assert (=> b!4989718 (=> (not res!2130055) (not e!3118446))))

(declare-fun isSuffix!1305 (List!57821 List!57821) Bool)

(assert (=> b!4989718 (= res!2130055 (isSuffix!1305 lt!2063000 lt!2063004))))

(assert (=> b!4989718 (= lt!2063004 (list!18542 totalInput!1012))))

(assert (=> b!4989718 (= lt!2063000 (list!18542 input!5597))))

(declare-fun b!4989719 () Bool)

(declare-fun tp!1398642 () Bool)

(declare-fun tp!1398641 () Bool)

(assert (=> b!4989719 (= e!3118447 (and tp!1398642 tp!1398641))))

(declare-fun b!4989712 () Bool)

(declare-fun tp!1398634 () Bool)

(declare-fun tp!1398639 () Bool)

(assert (=> b!4989712 (= e!3118447 (and tp!1398634 tp!1398639))))

(declare-fun res!2130056 () Bool)

(assert (=> start!527434 (=> (not res!2130056) (not e!3118455))))

(declare-fun validRegex!6036 (Regex!13739) Bool)

(assert (=> start!527434 (= res!2130056 (validRegex!6036 r!12727))))

(assert (=> start!527434 e!3118455))

(assert (=> start!527434 e!3118447))

(declare-fun condSetEmpty!28172 () Bool)

(assert (=> start!527434 (= condSetEmpty!28172 (= z!4183 ((as const (Array Context!6328 Bool)) false)))))

(assert (=> start!527434 setRes!28172))

(declare-fun inv!75715 (BalanceConc!29946) Bool)

(assert (=> start!527434 (and (inv!75715 input!5597) e!3118457)))

(declare-fun e!3118454 () Bool)

(assert (=> start!527434 (and (inv!75715 totalInput!1012) e!3118454)))

(declare-fun b!4989720 () Bool)

(assert (=> b!4989720 (= e!3118450 e!3118448)))

(declare-fun res!2130053 () Bool)

(assert (=> b!4989720 (=> (not res!2130053) (not e!3118448))))

(assert (=> b!4989720 (= res!2130053 (= lt!2062999 lt!2063000))))

(assert (=> b!4989720 (= lt!2062999 (++!12583 (_1!34696 lt!2063007) (_2!34696 lt!2063007)))))

(declare-fun b!4989721 () Bool)

(declare-fun drop!2402 (List!57821 Int) List!57821)

(assert (=> b!4989721 (= e!3118452 (matchZipper!515 z!4183 (take!604 (drop!2402 lt!2063004 lt!2063008) lt!2063012)))))

(declare-fun b!4989722 () Bool)

(declare-fun res!2130058 () Bool)

(assert (=> b!4989722 (=> (not res!2130058) (not e!3118455))))

(declare-datatypes ((List!57823 0))(
  ( (Nil!57699) (Cons!57699 (h!64147 Context!6328) (t!370149 List!57823)) )
))
(declare-fun unfocusZipper!266 (List!57823) Regex!13739)

(declare-fun toList!8024 ((InoxSet Context!6328)) List!57823)

(assert (=> b!4989722 (= res!2130058 (= (unfocusZipper!266 (toList!8024 z!4183)) r!12727))))

(declare-fun b!4989723 () Bool)

(declare-fun tp!1398637 () Bool)

(assert (=> b!4989723 (= e!3118454 (and (inv!75713 (c!851343 totalInput!1012)) tp!1398637))))

(declare-fun b!4989724 () Bool)

(declare-fun isEmpty!31213 (BalanceConc!29946) Bool)

(assert (=> b!4989724 (= e!3118449 (not (isEmpty!31213 (_1!34695 lt!2063003))))))

(assert (= (and start!527434 res!2130056) b!4989722))

(assert (= (and b!4989722 res!2130058) b!4989718))

(assert (= (and b!4989718 res!2130055) b!4989709))

(assert (= (and b!4989709 res!2130054) b!4989720))

(assert (= (and b!4989720 res!2130053) b!4989715))

(assert (= (and b!4989715 (not res!2130057)) b!4989721))

(assert (= (and b!4989715 (not res!2130059)) b!4989714))

(assert (= (and b!4989715 res!2130051) b!4989724))

(assert (= (and b!4989715 (not res!2130052)) b!4989717))

(get-info :version)

(assert (= (and start!527434 ((_ is ElementMatch!13739) r!12727)) b!4989711))

(assert (= (and start!527434 ((_ is Concat!22532) r!12727)) b!4989712))

(assert (= (and start!527434 ((_ is Star!13739) r!12727)) b!4989716))

(assert (= (and start!527434 ((_ is Union!13739) r!12727)) b!4989719))

(assert (= (and start!527434 condSetEmpty!28172) setIsEmpty!28172))

(assert (= (and start!527434 (not condSetEmpty!28172)) setNonEmpty!28172))

(assert (= setNonEmpty!28172 b!4989710))

(assert (= start!527434 b!4989713))

(assert (= start!527434 b!4989723))

(declare-fun m!6021790 () Bool)

(assert (=> b!4989722 m!6021790))

(assert (=> b!4989722 m!6021790))

(declare-fun m!6021792 () Bool)

(assert (=> b!4989722 m!6021792))

(declare-fun m!6021794 () Bool)

(assert (=> b!4989709 m!6021794))

(declare-fun m!6021796 () Bool)

(assert (=> b!4989709 m!6021796))

(declare-fun m!6021798 () Bool)

(assert (=> b!4989709 m!6021798))

(declare-fun m!6021800 () Bool)

(assert (=> b!4989709 m!6021800))

(declare-fun m!6021802 () Bool)

(assert (=> b!4989709 m!6021802))

(declare-fun m!6021804 () Bool)

(assert (=> b!4989709 m!6021804))

(declare-fun m!6021806 () Bool)

(assert (=> b!4989709 m!6021806))

(declare-fun m!6021808 () Bool)

(assert (=> b!4989717 m!6021808))

(declare-fun m!6021810 () Bool)

(assert (=> start!527434 m!6021810))

(declare-fun m!6021812 () Bool)

(assert (=> start!527434 m!6021812))

(declare-fun m!6021814 () Bool)

(assert (=> start!527434 m!6021814))

(declare-fun m!6021816 () Bool)

(assert (=> b!4989724 m!6021816))

(declare-fun m!6021818 () Bool)

(assert (=> b!4989723 m!6021818))

(declare-fun m!6021820 () Bool)

(assert (=> b!4989713 m!6021820))

(declare-fun m!6021822 () Bool)

(assert (=> b!4989718 m!6021822))

(declare-fun m!6021824 () Bool)

(assert (=> b!4989718 m!6021824))

(declare-fun m!6021826 () Bool)

(assert (=> b!4989718 m!6021826))

(declare-fun m!6021828 () Bool)

(assert (=> b!4989720 m!6021828))

(declare-fun m!6021830 () Bool)

(assert (=> b!4989715 m!6021830))

(declare-fun m!6021832 () Bool)

(assert (=> b!4989715 m!6021832))

(declare-fun m!6021834 () Bool)

(assert (=> b!4989715 m!6021834))

(declare-fun m!6021836 () Bool)

(assert (=> b!4989715 m!6021836))

(declare-fun m!6021838 () Bool)

(assert (=> b!4989715 m!6021838))

(declare-fun m!6021840 () Bool)

(assert (=> b!4989715 m!6021840))

(declare-fun m!6021842 () Bool)

(assert (=> b!4989715 m!6021842))

(assert (=> b!4989715 m!6021836))

(declare-fun m!6021844 () Bool)

(assert (=> b!4989715 m!6021844))

(declare-fun m!6021846 () Bool)

(assert (=> b!4989715 m!6021846))

(declare-fun m!6021848 () Bool)

(assert (=> b!4989715 m!6021848))

(assert (=> b!4989715 m!6021846))

(declare-fun m!6021850 () Bool)

(assert (=> b!4989715 m!6021850))

(declare-fun m!6021852 () Bool)

(assert (=> b!4989715 m!6021852))

(declare-fun m!6021854 () Bool)

(assert (=> b!4989715 m!6021854))

(declare-fun m!6021856 () Bool)

(assert (=> b!4989715 m!6021856))

(assert (=> b!4989715 m!6021834))

(declare-fun m!6021858 () Bool)

(assert (=> b!4989715 m!6021858))

(declare-fun m!6021860 () Bool)

(assert (=> b!4989714 m!6021860))

(declare-fun m!6021862 () Bool)

(assert (=> setNonEmpty!28172 m!6021862))

(declare-fun m!6021864 () Bool)

(assert (=> b!4989721 m!6021864))

(assert (=> b!4989721 m!6021864))

(declare-fun m!6021866 () Bool)

(assert (=> b!4989721 m!6021866))

(assert (=> b!4989721 m!6021866))

(declare-fun m!6021868 () Bool)

(assert (=> b!4989721 m!6021868))

(check-sat (not b!4989720) (not b!4989717) (not setNonEmpty!28172) (not b!4989718) tp_is_empty!36475 (not b!4989724) (not b!4989723) (not b!4989716) (not b!4989722) (not b!4989709) (not b!4989715) (not b!4989719) (not b!4989712) (not b!4989713) (not b!4989710) (not b!4989721) (not start!527434) (not b!4989714))
(check-sat)
