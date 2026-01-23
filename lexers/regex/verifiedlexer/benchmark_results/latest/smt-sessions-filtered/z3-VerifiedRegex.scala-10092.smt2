; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!528070 () Bool)

(assert start!528070)

(declare-fun b!4997628 () Bool)

(declare-fun e!3122994 () Bool)

(declare-fun e!3122983 () Bool)

(assert (=> b!4997628 (= e!3122994 e!3122983)))

(declare-fun res!2132643 () Bool)

(assert (=> b!4997628 (=> (not res!2132643) (not e!3122983))))

(declare-datatypes ((C!27788 0))(
  ( (C!27789 (val!23260 Int)) )
))
(declare-datatypes ((List!57911 0))(
  ( (Nil!57787) (Cons!57787 (h!64235 C!27788) (t!370251 List!57911)) )
))
(declare-fun lt!2066798 () List!57911)

(declare-fun lt!2066782 () List!57911)

(assert (=> b!4997628 (= res!2132643 (= lt!2066798 lt!2066782))))

(declare-datatypes ((tuple2!62908 0))(
  ( (tuple2!62909 (_1!34757 List!57911) (_2!34757 List!57911)) )
))
(declare-fun lt!2066786 () tuple2!62908)

(declare-fun ++!12615 (List!57911 List!57911) List!57911)

(assert (=> b!4997628 (= lt!2066798 (++!12615 (_1!34757 lt!2066786) (_2!34757 lt!2066786)))))

(declare-fun b!4997629 () Bool)

(declare-fun e!3122992 () Bool)

(declare-fun tp_is_empty!36535 () Bool)

(assert (=> b!4997629 (= e!3122992 tp_is_empty!36535)))

(declare-fun b!4997630 () Bool)

(declare-fun e!3122989 () Bool)

(declare-datatypes ((IArray!30637 0))(
  ( (IArray!30638 (innerList!15376 List!57911)) )
))
(declare-datatypes ((Conc!15288 0))(
  ( (Node!15288 (left!42266 Conc!15288) (right!42596 Conc!15288) (csize!30806 Int) (cheight!15499 Int)) (Leaf!25381 (xs!18614 IArray!30637) (csize!30807 Int)) (Empty!15288) )
))
(declare-datatypes ((BalanceConc!30006 0))(
  ( (BalanceConc!30007 (c!852873 Conc!15288)) )
))
(declare-fun totalInput!1012 () BalanceConc!30006)

(declare-fun tp!1401652 () Bool)

(declare-fun inv!75871 (Conc!15288) Bool)

(assert (=> b!4997630 (= e!3122989 (and (inv!75871 (c!852873 totalInput!1012)) tp!1401652))))

(declare-fun res!2132634 () Bool)

(declare-fun e!3122997 () Bool)

(assert (=> start!528070 (=> (not res!2132634) (not e!3122997))))

(declare-datatypes ((Regex!13769 0))(
  ( (ElementMatch!13769 (c!852874 C!27788)) (Concat!22562 (regOne!28050 Regex!13769) (regTwo!28050 Regex!13769)) (EmptyExpr!13769) (Star!13769 (reg!14098 Regex!13769)) (EmptyLang!13769) (Union!13769 (regOne!28051 Regex!13769) (regTwo!28051 Regex!13769)) )
))
(declare-fun r!12727 () Regex!13769)

(declare-fun validRegex!6066 (Regex!13769) Bool)

(assert (=> start!528070 (= res!2132634 (validRegex!6066 r!12727))))

(assert (=> start!528070 e!3122997))

(assert (=> start!528070 e!3122992))

(declare-fun input!5597 () BalanceConc!30006)

(declare-fun e!3122984 () Bool)

(declare-fun inv!75872 (BalanceConc!30006) Bool)

(assert (=> start!528070 (and (inv!75872 input!5597) e!3122984)))

(declare-fun condSetEmpty!28290 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!57912 0))(
  ( (Nil!57788) (Cons!57788 (h!64236 Regex!13769) (t!370252 List!57912)) )
))
(declare-datatypes ((Context!6388 0))(
  ( (Context!6389 (exprs!3694 List!57912)) )
))
(declare-fun z!4183 () (InoxSet Context!6388))

(assert (=> start!528070 (= condSetEmpty!28290 (= z!4183 ((as const (Array Context!6388 Bool)) false)))))

(declare-fun setRes!28290 () Bool)

(assert (=> start!528070 setRes!28290))

(assert (=> start!528070 (and (inv!75872 totalInput!1012) e!3122989)))

(declare-fun b!4997631 () Bool)

(declare-fun e!3122988 () Bool)

(assert (=> b!4997631 (= e!3122997 e!3122988)))

(declare-fun res!2132641 () Bool)

(assert (=> b!4997631 (=> (not res!2132641) (not e!3122988))))

(declare-datatypes ((List!57913 0))(
  ( (Nil!57789) (Cons!57789 (h!64237 Context!6388) (t!370253 List!57913)) )
))
(declare-fun lt!2066793 () List!57913)

(declare-fun unfocusZipper!296 (List!57913) Regex!13769)

(assert (=> b!4997631 (= res!2132641 (= (unfocusZipper!296 lt!2066793) r!12727))))

(declare-fun toList!8054 ((InoxSet Context!6388)) List!57913)

(assert (=> b!4997631 (= lt!2066793 (toList!8054 z!4183))))

(declare-fun b!4997632 () Bool)

(declare-fun e!3122990 () Bool)

(declare-fun isEmpty!31272 (List!57911) Bool)

(assert (=> b!4997632 (= e!3122990 (not (isEmpty!31272 (_1!34757 lt!2066786))))))

(declare-fun b!4997633 () Bool)

(declare-fun e!3122982 () Bool)

(declare-fun tp!1401647 () Bool)

(assert (=> b!4997633 (= e!3122982 tp!1401647)))

(declare-fun b!4997634 () Bool)

(declare-fun tp!1401651 () Bool)

(assert (=> b!4997634 (= e!3122992 tp!1401651)))

(declare-fun lt!2066796 () Int)

(declare-fun b!4997635 () Bool)

(declare-fun lt!2066801 () Int)

(declare-fun lt!2066789 () List!57911)

(declare-fun e!3122991 () Bool)

(declare-fun matchZipper!541 ((InoxSet Context!6388) List!57911) Bool)

(declare-fun take!630 (List!57911 Int) List!57911)

(declare-fun drop!2432 (List!57911 Int) List!57911)

(assert (=> b!4997635 (= e!3122991 (matchZipper!541 z!4183 (take!630 (drop!2432 lt!2066789 lt!2066801) lt!2066796)))))

(declare-fun b!4997636 () Bool)

(declare-fun e!3122986 () Bool)

(declare-fun e!3122985 () Bool)

(assert (=> b!4997636 (= e!3122986 e!3122985)))

(declare-fun res!2132637 () Bool)

(assert (=> b!4997636 (=> res!2132637 e!3122985)))

(declare-fun lt!2066788 () Int)

(declare-datatypes ((tuple2!62910 0))(
  ( (tuple2!62911 (_1!34758 BalanceConc!30006) (_2!34758 BalanceConc!30006)) )
))
(declare-fun lt!2066781 () tuple2!62910)

(declare-fun size!38398 (BalanceConc!30006) Int)

(assert (=> b!4997636 (= res!2132637 (<= lt!2066788 (size!38398 (_1!34758 lt!2066781))))))

(declare-fun size!38399 (List!57911) Int)

(assert (=> b!4997636 (= lt!2066788 (size!38399 (_1!34757 lt!2066786)))))

(declare-fun lt!2066790 () List!57911)

(declare-fun lt!2066797 () Bool)

(declare-fun matchR!6737 (Regex!13769 List!57911) Bool)

(assert (=> b!4997636 (= (matchR!6737 r!12727 lt!2066790) lt!2066797)))

(declare-datatypes ((Unit!148947 0))(
  ( (Unit!148948) )
))
(declare-fun lt!2066802 () Unit!148947)

(declare-fun theoremZipperRegexEquiv!147 ((InoxSet Context!6388) List!57913 Regex!13769 List!57911) Unit!148947)

(assert (=> b!4997636 (= lt!2066802 (theoremZipperRegexEquiv!147 z!4183 lt!2066793 r!12727 lt!2066790))))

(declare-fun lt!2066804 () Bool)

(assert (=> b!4997636 (= lt!2066804 (matchZipper!541 z!4183 (_1!34757 lt!2066786)))))

(declare-fun lt!2066795 () Unit!148947)

(assert (=> b!4997636 (= lt!2066795 (theoremZipperRegexEquiv!147 z!4183 lt!2066793 r!12727 (_1!34757 lt!2066786)))))

(declare-fun b!4997637 () Bool)

(declare-fun tp!1401646 () Bool)

(declare-fun tp!1401650 () Bool)

(assert (=> b!4997637 (= e!3122992 (and tp!1401646 tp!1401650))))

(declare-fun setNonEmpty!28290 () Bool)

(declare-fun tp!1401649 () Bool)

(declare-fun setElem!28290 () Context!6388)

(declare-fun inv!75873 (Context!6388) Bool)

(assert (=> setNonEmpty!28290 (= setRes!28290 (and tp!1401649 (inv!75873 setElem!28290) e!3122982))))

(declare-fun setRest!28290 () (InoxSet Context!6388))

(assert (=> setNonEmpty!28290 (= z!4183 ((_ map or) (store ((as const (Array Context!6388 Bool)) false) setElem!28290 true) setRest!28290))))

(declare-fun b!4997638 () Bool)

(declare-fun tp!1401644 () Bool)

(assert (=> b!4997638 (= e!3122984 (and (inv!75871 (c!852873 input!5597)) tp!1401644))))

(declare-fun b!4997639 () Bool)

(declare-fun lt!2066785 () List!57911)

(assert (=> b!4997639 (= e!3122985 (= lt!2066785 lt!2066782))))

(declare-fun lt!2066792 () List!57911)

(assert (=> b!4997639 (= lt!2066792 (take!630 lt!2066785 lt!2066788))))

(assert (=> b!4997639 (= lt!2066785 (drop!2432 lt!2066789 lt!2066801))))

(declare-fun b!4997640 () Bool)

(declare-fun tp!1401648 () Bool)

(declare-fun tp!1401645 () Bool)

(assert (=> b!4997640 (= e!3122992 (and tp!1401648 tp!1401645))))

(declare-fun b!4997641 () Bool)

(declare-fun e!3122995 () Bool)

(declare-fun lt!2066803 () tuple2!62908)

(assert (=> b!4997641 (= e!3122995 (matchR!6737 r!12727 (_1!34757 lt!2066803)))))

(declare-fun b!4997642 () Bool)

(declare-fun e!3122993 () Bool)

(declare-fun isEmpty!31273 (BalanceConc!30006) Bool)

(assert (=> b!4997642 (= e!3122993 (not (isEmpty!31273 (_1!34758 lt!2066781))))))

(declare-fun b!4997643 () Bool)

(declare-fun e!3122996 () Bool)

(assert (=> b!4997643 (= e!3122988 e!3122996)))

(declare-fun res!2132636 () Bool)

(assert (=> b!4997643 (=> (not res!2132636) (not e!3122996))))

(declare-fun isSuffix!1335 (List!57911 List!57911) Bool)

(assert (=> b!4997643 (= res!2132636 (isSuffix!1335 lt!2066782 lt!2066789))))

(declare-fun list!18582 (BalanceConc!30006) List!57911)

(assert (=> b!4997643 (= lt!2066789 (list!18582 totalInput!1012))))

(assert (=> b!4997643 (= lt!2066782 (list!18582 input!5597))))

(declare-fun b!4997644 () Bool)

(declare-fun e!3122987 () Bool)

(assert (=> b!4997644 (= e!3122987 e!3122986)))

(declare-fun res!2132645 () Bool)

(assert (=> b!4997644 (=> res!2132645 e!3122986)))

(assert (=> b!4997644 (= res!2132645 e!3122990)))

(declare-fun res!2132635 () Bool)

(assert (=> b!4997644 (=> (not res!2132635) (not e!3122990))))

(assert (=> b!4997644 (= res!2132635 (not lt!2066804))))

(assert (=> b!4997644 (= lt!2066804 (matchR!6737 r!12727 (_1!34757 lt!2066786)))))

(declare-fun b!4997645 () Bool)

(assert (=> b!4997645 (= e!3122983 (not e!3122987))))

(declare-fun res!2132644 () Bool)

(assert (=> b!4997645 (=> res!2132644 e!3122987)))

(assert (=> b!4997645 (= res!2132644 e!3122993)))

(declare-fun res!2132639 () Bool)

(assert (=> b!4997645 (=> (not res!2132639) (not e!3122993))))

(assert (=> b!4997645 (= res!2132639 (not lt!2066797))))

(assert (=> b!4997645 (= lt!2066797 (matchZipper!541 z!4183 lt!2066790))))

(assert (=> b!4997645 e!3122995))

(declare-fun res!2132642 () Bool)

(assert (=> b!4997645 (=> res!2132642 e!3122995)))

(assert (=> b!4997645 (= res!2132642 (isEmpty!31272 (_1!34757 lt!2066803)))))

(declare-fun findLongestMatchInner!1958 (Regex!13769 List!57911 Int List!57911 List!57911 Int) tuple2!62908)

(assert (=> b!4997645 (= lt!2066803 (findLongestMatchInner!1958 r!12727 Nil!57787 (size!38399 Nil!57787) lt!2066782 lt!2066782 (size!38399 lt!2066782)))))

(declare-fun lt!2066780 () Unit!148947)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1915 (Regex!13769 List!57911) Unit!148947)

(assert (=> b!4997645 (= lt!2066780 (longestMatchIsAcceptedByMatchOrIsEmpty!1915 r!12727 lt!2066782))))

(assert (=> b!4997645 e!3122991))

(declare-fun res!2132638 () Bool)

(assert (=> b!4997645 (=> res!2132638 e!3122991)))

(assert (=> b!4997645 (= res!2132638 (= lt!2066796 0))))

(declare-fun lt!2066783 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!109 ((InoxSet Context!6388) Int BalanceConc!30006 Int) Int)

(assert (=> b!4997645 (= lt!2066796 (findLongestMatchInnerZipperFastV2!109 z!4183 lt!2066801 totalInput!1012 lt!2066783))))

(declare-fun lt!2066794 () Unit!148947)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!32 ((InoxSet Context!6388) Int BalanceConc!30006) Unit!148947)

(assert (=> b!4997645 (= lt!2066794 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!32 z!4183 lt!2066801 totalInput!1012))))

(declare-fun isPrefix!5322 (List!57911 List!57911) Bool)

(assert (=> b!4997645 (isPrefix!5322 (take!630 lt!2066789 lt!2066801) lt!2066789)))

(declare-fun lt!2066787 () Unit!148947)

(declare-fun lemmaTakeIsPrefix!124 (List!57911 Int) Unit!148947)

(assert (=> b!4997645 (= lt!2066787 (lemmaTakeIsPrefix!124 lt!2066789 lt!2066801))))

(assert (=> b!4997645 (isPrefix!5322 (_1!34757 lt!2066786) lt!2066798)))

(declare-fun lt!2066784 () Unit!148947)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3420 (List!57911 List!57911) Unit!148947)

(assert (=> b!4997645 (= lt!2066784 (lemmaConcatTwoListThenFirstIsPrefix!3420 (_1!34757 lt!2066786) (_2!34757 lt!2066786)))))

(declare-fun lt!2066791 () List!57911)

(assert (=> b!4997645 (isPrefix!5322 lt!2066790 lt!2066791)))

(declare-fun lt!2066799 () Unit!148947)

(declare-fun lt!2066800 () List!57911)

(assert (=> b!4997645 (= lt!2066799 (lemmaConcatTwoListThenFirstIsPrefix!3420 lt!2066790 lt!2066800))))

(declare-fun b!4997646 () Bool)

(assert (=> b!4997646 (= e!3122996 e!3122994)))

(declare-fun res!2132640 () Bool)

(assert (=> b!4997646 (=> (not res!2132640) (not e!3122994))))

(assert (=> b!4997646 (= res!2132640 (= lt!2066791 lt!2066782))))

(assert (=> b!4997646 (= lt!2066791 (++!12615 lt!2066790 lt!2066800))))

(assert (=> b!4997646 (= lt!2066800 (list!18582 (_2!34758 lt!2066781)))))

(assert (=> b!4997646 (= lt!2066790 (list!18582 (_1!34758 lt!2066781)))))

(declare-fun findLongestMatch!1782 (Regex!13769 List!57911) tuple2!62908)

(assert (=> b!4997646 (= lt!2066786 (findLongestMatch!1782 r!12727 lt!2066782))))

(assert (=> b!4997646 (= lt!2066801 (- lt!2066783 (size!38398 input!5597)))))

(assert (=> b!4997646 (= lt!2066783 (size!38398 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!71 ((InoxSet Context!6388) BalanceConc!30006 BalanceConc!30006) tuple2!62910)

(assert (=> b!4997646 (= lt!2066781 (findLongestMatchZipperFastV2!71 z!4183 input!5597 totalInput!1012))))

(declare-fun setIsEmpty!28290 () Bool)

(assert (=> setIsEmpty!28290 setRes!28290))

(assert (= (and start!528070 res!2132634) b!4997631))

(assert (= (and b!4997631 res!2132641) b!4997643))

(assert (= (and b!4997643 res!2132636) b!4997646))

(assert (= (and b!4997646 res!2132640) b!4997628))

(assert (= (and b!4997628 res!2132643) b!4997645))

(assert (= (and b!4997645 (not res!2132638)) b!4997635))

(assert (= (and b!4997645 (not res!2132642)) b!4997641))

(assert (= (and b!4997645 res!2132639) b!4997642))

(assert (= (and b!4997645 (not res!2132644)) b!4997644))

(assert (= (and b!4997644 res!2132635) b!4997632))

(assert (= (and b!4997644 (not res!2132645)) b!4997636))

(assert (= (and b!4997636 (not res!2132637)) b!4997639))

(get-info :version)

(assert (= (and start!528070 ((_ is ElementMatch!13769) r!12727)) b!4997629))

(assert (= (and start!528070 ((_ is Concat!22562) r!12727)) b!4997640))

(assert (= (and start!528070 ((_ is Star!13769) r!12727)) b!4997634))

(assert (= (and start!528070 ((_ is Union!13769) r!12727)) b!4997637))

(assert (= start!528070 b!4997638))

(assert (= (and start!528070 condSetEmpty!28290) setIsEmpty!28290))

(assert (= (and start!528070 (not condSetEmpty!28290)) setNonEmpty!28290))

(assert (= setNonEmpty!28290 b!4997633))

(assert (= start!528070 b!4997630))

(declare-fun m!6030766 () Bool)

(assert (=> setNonEmpty!28290 m!6030766))

(declare-fun m!6030768 () Bool)

(assert (=> b!4997642 m!6030768))

(declare-fun m!6030770 () Bool)

(assert (=> b!4997641 m!6030770))

(declare-fun m!6030772 () Bool)

(assert (=> b!4997635 m!6030772))

(assert (=> b!4997635 m!6030772))

(declare-fun m!6030774 () Bool)

(assert (=> b!4997635 m!6030774))

(assert (=> b!4997635 m!6030774))

(declare-fun m!6030776 () Bool)

(assert (=> b!4997635 m!6030776))

(declare-fun m!6030778 () Bool)

(assert (=> b!4997646 m!6030778))

(declare-fun m!6030780 () Bool)

(assert (=> b!4997646 m!6030780))

(declare-fun m!6030782 () Bool)

(assert (=> b!4997646 m!6030782))

(declare-fun m!6030784 () Bool)

(assert (=> b!4997646 m!6030784))

(declare-fun m!6030786 () Bool)

(assert (=> b!4997646 m!6030786))

(declare-fun m!6030788 () Bool)

(assert (=> b!4997646 m!6030788))

(declare-fun m!6030790 () Bool)

(assert (=> b!4997646 m!6030790))

(declare-fun m!6030792 () Bool)

(assert (=> b!4997644 m!6030792))

(declare-fun m!6030794 () Bool)

(assert (=> start!528070 m!6030794))

(declare-fun m!6030796 () Bool)

(assert (=> start!528070 m!6030796))

(declare-fun m!6030798 () Bool)

(assert (=> start!528070 m!6030798))

(declare-fun m!6030800 () Bool)

(assert (=> b!4997639 m!6030800))

(assert (=> b!4997639 m!6030772))

(declare-fun m!6030802 () Bool)

(assert (=> b!4997630 m!6030802))

(declare-fun m!6030804 () Bool)

(assert (=> b!4997632 m!6030804))

(declare-fun m!6030806 () Bool)

(assert (=> b!4997638 m!6030806))

(declare-fun m!6030808 () Bool)

(assert (=> b!4997631 m!6030808))

(declare-fun m!6030810 () Bool)

(assert (=> b!4997631 m!6030810))

(declare-fun m!6030812 () Bool)

(assert (=> b!4997628 m!6030812))

(declare-fun m!6030814 () Bool)

(assert (=> b!4997636 m!6030814))

(declare-fun m!6030816 () Bool)

(assert (=> b!4997636 m!6030816))

(declare-fun m!6030818 () Bool)

(assert (=> b!4997636 m!6030818))

(declare-fun m!6030820 () Bool)

(assert (=> b!4997636 m!6030820))

(declare-fun m!6030822 () Bool)

(assert (=> b!4997636 m!6030822))

(declare-fun m!6030824 () Bool)

(assert (=> b!4997636 m!6030824))

(declare-fun m!6030826 () Bool)

(assert (=> b!4997645 m!6030826))

(declare-fun m!6030828 () Bool)

(assert (=> b!4997645 m!6030828))

(declare-fun m!6030830 () Bool)

(assert (=> b!4997645 m!6030830))

(declare-fun m!6030832 () Bool)

(assert (=> b!4997645 m!6030832))

(declare-fun m!6030834 () Bool)

(assert (=> b!4997645 m!6030834))

(declare-fun m!6030836 () Bool)

(assert (=> b!4997645 m!6030836))

(declare-fun m!6030838 () Bool)

(assert (=> b!4997645 m!6030838))

(declare-fun m!6030840 () Bool)

(assert (=> b!4997645 m!6030840))

(declare-fun m!6030842 () Bool)

(assert (=> b!4997645 m!6030842))

(assert (=> b!4997645 m!6030828))

(declare-fun m!6030844 () Bool)

(assert (=> b!4997645 m!6030844))

(declare-fun m!6030846 () Bool)

(assert (=> b!4997645 m!6030846))

(declare-fun m!6030848 () Bool)

(assert (=> b!4997645 m!6030848))

(declare-fun m!6030850 () Bool)

(assert (=> b!4997645 m!6030850))

(declare-fun m!6030852 () Bool)

(assert (=> b!4997645 m!6030852))

(assert (=> b!4997645 m!6030826))

(assert (=> b!4997645 m!6030834))

(declare-fun m!6030854 () Bool)

(assert (=> b!4997645 m!6030854))

(declare-fun m!6030856 () Bool)

(assert (=> b!4997643 m!6030856))

(declare-fun m!6030858 () Bool)

(assert (=> b!4997643 m!6030858))

(declare-fun m!6030860 () Bool)

(assert (=> b!4997643 m!6030860))

(check-sat (not b!4997632) (not b!4997638) (not b!4997637) (not b!4997634) (not start!528070) (not b!4997646) (not b!4997630) (not b!4997641) (not b!4997635) (not b!4997640) (not b!4997636) (not b!4997628) (not b!4997639) (not setNonEmpty!28290) (not b!4997642) (not b!4997644) tp_is_empty!36535 (not b!4997631) (not b!4997633) (not b!4997645) (not b!4997643))
(check-sat)
(get-model)

(declare-fun b!4997661 () Bool)

(declare-fun e!3123006 () List!57911)

(assert (=> b!4997661 (= e!3123006 (Cons!57787 (h!64235 lt!2066785) (take!630 (t!370251 lt!2066785) (- lt!2066788 1))))))

(declare-fun b!4997662 () Bool)

(declare-fun e!3123008 () Int)

(assert (=> b!4997662 (= e!3123008 0)))

(declare-fun b!4997663 () Bool)

(declare-fun e!3123007 () Int)

(assert (=> b!4997663 (= e!3123008 e!3123007)))

(declare-fun c!852883 () Bool)

(assert (=> b!4997663 (= c!852883 (>= lt!2066788 (size!38399 lt!2066785)))))

(declare-fun b!4997664 () Bool)

(assert (=> b!4997664 (= e!3123006 Nil!57787)))

(declare-fun b!4997665 () Bool)

(assert (=> b!4997665 (= e!3123007 lt!2066788)))

(declare-fun b!4997666 () Bool)

(assert (=> b!4997666 (= e!3123007 (size!38399 lt!2066785))))

(declare-fun d!1609037 () Bool)

(declare-fun e!3123009 () Bool)

(assert (=> d!1609037 e!3123009))

(declare-fun res!2132648 () Bool)

(assert (=> d!1609037 (=> (not res!2132648) (not e!3123009))))

(declare-fun lt!2066807 () List!57911)

(declare-fun content!10224 (List!57911) (InoxSet C!27788))

(assert (=> d!1609037 (= res!2132648 (= ((_ map implies) (content!10224 lt!2066807) (content!10224 lt!2066785)) ((as const (InoxSet C!27788)) true)))))

(assert (=> d!1609037 (= lt!2066807 e!3123006)))

(declare-fun c!852881 () Bool)

(assert (=> d!1609037 (= c!852881 (or ((_ is Nil!57787) lt!2066785) (<= lt!2066788 0)))))

(assert (=> d!1609037 (= (take!630 lt!2066785 lt!2066788) lt!2066807)))

(declare-fun b!4997667 () Bool)

(assert (=> b!4997667 (= e!3123009 (= (size!38399 lt!2066807) e!3123008))))

(declare-fun c!852882 () Bool)

(assert (=> b!4997667 (= c!852882 (<= lt!2066788 0))))

(assert (= (and d!1609037 c!852881) b!4997664))

(assert (= (and d!1609037 (not c!852881)) b!4997661))

(assert (= (and d!1609037 res!2132648) b!4997667))

(assert (= (and b!4997667 c!852882) b!4997662))

(assert (= (and b!4997667 (not c!852882)) b!4997663))

(assert (= (and b!4997663 c!852883) b!4997666))

(assert (= (and b!4997663 (not c!852883)) b!4997665))

(declare-fun m!6030864 () Bool)

(assert (=> b!4997661 m!6030864))

(declare-fun m!6030866 () Bool)

(assert (=> b!4997667 m!6030866))

(declare-fun m!6030868 () Bool)

(assert (=> b!4997666 m!6030868))

(declare-fun m!6030870 () Bool)

(assert (=> d!1609037 m!6030870))

(declare-fun m!6030872 () Bool)

(assert (=> d!1609037 m!6030872))

(assert (=> b!4997663 m!6030868))

(assert (=> b!4997639 d!1609037))

(declare-fun b!4997698 () Bool)

(declare-fun e!3123030 () List!57911)

(assert (=> b!4997698 (= e!3123030 lt!2066789)))

(declare-fun b!4997699 () Bool)

(declare-fun e!3123028 () Bool)

(declare-fun lt!2066840 () List!57911)

(declare-fun e!3123026 () Int)

(assert (=> b!4997699 (= e!3123028 (= (size!38399 lt!2066840) e!3123026))))

(declare-fun c!852898 () Bool)

(assert (=> b!4997699 (= c!852898 (<= lt!2066801 0))))

(declare-fun b!4997700 () Bool)

(declare-fun e!3123027 () Int)

(assert (=> b!4997700 (= e!3123027 0)))

(declare-fun b!4997701 () Bool)

(declare-fun e!3123029 () List!57911)

(assert (=> b!4997701 (= e!3123029 Nil!57787)))

(declare-fun bm!348793 () Bool)

(declare-fun call!348798 () Int)

(assert (=> bm!348793 (= call!348798 (size!38399 lt!2066789))))

(declare-fun b!4997702 () Bool)

(assert (=> b!4997702 (= e!3123026 call!348798)))

(declare-fun d!1609043 () Bool)

(assert (=> d!1609043 e!3123028))

(declare-fun res!2132657 () Bool)

(assert (=> d!1609043 (=> (not res!2132657) (not e!3123028))))

(assert (=> d!1609043 (= res!2132657 (= ((_ map implies) (content!10224 lt!2066840) (content!10224 lt!2066789)) ((as const (InoxSet C!27788)) true)))))

(assert (=> d!1609043 (= lt!2066840 e!3123029)))

(declare-fun c!852897 () Bool)

(assert (=> d!1609043 (= c!852897 ((_ is Nil!57787) lt!2066789))))

(assert (=> d!1609043 (= (drop!2432 lt!2066789 lt!2066801) lt!2066840)))

(declare-fun b!4997703 () Bool)

(assert (=> b!4997703 (= e!3123026 e!3123027)))

(declare-fun c!852896 () Bool)

(assert (=> b!4997703 (= c!852896 (>= lt!2066801 call!348798))))

(declare-fun b!4997704 () Bool)

(assert (=> b!4997704 (= e!3123029 e!3123030)))

(declare-fun c!852895 () Bool)

(assert (=> b!4997704 (= c!852895 (<= lt!2066801 0))))

(declare-fun b!4997705 () Bool)

(assert (=> b!4997705 (= e!3123027 (- call!348798 lt!2066801))))

(declare-fun b!4997706 () Bool)

(assert (=> b!4997706 (= e!3123030 (drop!2432 (t!370251 lt!2066789) (- lt!2066801 1)))))

(assert (= (and d!1609043 c!852897) b!4997701))

(assert (= (and d!1609043 (not c!852897)) b!4997704))

(assert (= (and b!4997704 c!852895) b!4997698))

(assert (= (and b!4997704 (not c!852895)) b!4997706))

(assert (= (and d!1609043 res!2132657) b!4997699))

(assert (= (and b!4997699 c!852898) b!4997702))

(assert (= (and b!4997699 (not c!852898)) b!4997703))

(assert (= (and b!4997703 c!852896) b!4997700))

(assert (= (and b!4997703 (not c!852896)) b!4997705))

(assert (= (or b!4997702 b!4997703 b!4997705) bm!348793))

(declare-fun m!6030908 () Bool)

(assert (=> b!4997699 m!6030908))

(declare-fun m!6030910 () Bool)

(assert (=> bm!348793 m!6030910))

(declare-fun m!6030912 () Bool)

(assert (=> d!1609043 m!6030912))

(declare-fun m!6030914 () Bool)

(assert (=> d!1609043 m!6030914))

(declare-fun m!6030916 () Bool)

(assert (=> b!4997706 m!6030916))

(assert (=> b!4997639 d!1609043))

(declare-fun d!1609051 () Bool)

(declare-fun c!852901 () Bool)

(assert (=> d!1609051 (= c!852901 ((_ is Node!15288) (c!852873 input!5597)))))

(declare-fun e!3123035 () Bool)

(assert (=> d!1609051 (= (inv!75871 (c!852873 input!5597)) e!3123035)))

(declare-fun b!4997713 () Bool)

(declare-fun inv!75876 (Conc!15288) Bool)

(assert (=> b!4997713 (= e!3123035 (inv!75876 (c!852873 input!5597)))))

(declare-fun b!4997714 () Bool)

(declare-fun e!3123036 () Bool)

(assert (=> b!4997714 (= e!3123035 e!3123036)))

(declare-fun res!2132660 () Bool)

(assert (=> b!4997714 (= res!2132660 (not ((_ is Leaf!25381) (c!852873 input!5597))))))

(assert (=> b!4997714 (=> res!2132660 e!3123036)))

(declare-fun b!4997715 () Bool)

(declare-fun inv!75877 (Conc!15288) Bool)

(assert (=> b!4997715 (= e!3123036 (inv!75877 (c!852873 input!5597)))))

(assert (= (and d!1609051 c!852901) b!4997713))

(assert (= (and d!1609051 (not c!852901)) b!4997714))

(assert (= (and b!4997714 (not res!2132660)) b!4997715))

(declare-fun m!6030918 () Bool)

(assert (=> b!4997713 m!6030918))

(declare-fun m!6030920 () Bool)

(assert (=> b!4997715 m!6030920))

(assert (=> b!4997638 d!1609051))

(declare-fun b!4997761 () Bool)

(declare-fun res!2132686 () Bool)

(declare-fun e!3123078 () Bool)

(assert (=> b!4997761 (=> (not res!2132686) (not e!3123078))))

(declare-fun call!348815 () Bool)

(assert (=> b!4997761 (= res!2132686 call!348815)))

(declare-fun e!3123077 () Bool)

(assert (=> b!4997761 (= e!3123077 e!3123078)))

(declare-fun d!1609053 () Bool)

(declare-fun res!2132690 () Bool)

(declare-fun e!3123072 () Bool)

(assert (=> d!1609053 (=> res!2132690 e!3123072)))

(assert (=> d!1609053 (= res!2132690 ((_ is ElementMatch!13769) r!12727))))

(assert (=> d!1609053 (= (validRegex!6066 r!12727) e!3123072)))

(declare-fun b!4997762 () Bool)

(declare-fun res!2132689 () Bool)

(declare-fun e!3123075 () Bool)

(assert (=> b!4997762 (=> res!2132689 e!3123075)))

(assert (=> b!4997762 (= res!2132689 (not ((_ is Concat!22562) r!12727)))))

(assert (=> b!4997762 (= e!3123077 e!3123075)))

(declare-fun b!4997763 () Bool)

(declare-fun e!3123076 () Bool)

(declare-fun call!348814 () Bool)

(assert (=> b!4997763 (= e!3123076 call!348814)))

(declare-fun c!852913 () Bool)

(declare-fun c!852912 () Bool)

(declare-fun bm!348809 () Bool)

(assert (=> bm!348809 (= call!348814 (validRegex!6066 (ite c!852913 (reg!14098 r!12727) (ite c!852912 (regOne!28051 r!12727) (regTwo!28050 r!12727)))))))

(declare-fun b!4997764 () Bool)

(declare-fun e!3123074 () Bool)

(assert (=> b!4997764 (= e!3123074 call!348815)))

(declare-fun bm!348810 () Bool)

(assert (=> bm!348810 (= call!348815 call!348814)))

(declare-fun b!4997765 () Bool)

(assert (=> b!4997765 (= e!3123075 e!3123074)))

(declare-fun res!2132687 () Bool)

(assert (=> b!4997765 (=> (not res!2132687) (not e!3123074))))

(declare-fun call!348816 () Bool)

(assert (=> b!4997765 (= res!2132687 call!348816)))

(declare-fun b!4997766 () Bool)

(assert (=> b!4997766 (= e!3123078 call!348816)))

(declare-fun b!4997767 () Bool)

(declare-fun e!3123073 () Bool)

(assert (=> b!4997767 (= e!3123073 e!3123077)))

(assert (=> b!4997767 (= c!852912 ((_ is Union!13769) r!12727))))

(declare-fun b!4997768 () Bool)

(assert (=> b!4997768 (= e!3123072 e!3123073)))

(assert (=> b!4997768 (= c!852913 ((_ is Star!13769) r!12727))))

(declare-fun bm!348811 () Bool)

(assert (=> bm!348811 (= call!348816 (validRegex!6066 (ite c!852912 (regTwo!28051 r!12727) (regOne!28050 r!12727))))))

(declare-fun b!4997769 () Bool)

(assert (=> b!4997769 (= e!3123073 e!3123076)))

(declare-fun res!2132688 () Bool)

(declare-fun nullable!4675 (Regex!13769) Bool)

(assert (=> b!4997769 (= res!2132688 (not (nullable!4675 (reg!14098 r!12727))))))

(assert (=> b!4997769 (=> (not res!2132688) (not e!3123076))))

(assert (= (and d!1609053 (not res!2132690)) b!4997768))

(assert (= (and b!4997768 c!852913) b!4997769))

(assert (= (and b!4997768 (not c!852913)) b!4997767))

(assert (= (and b!4997769 res!2132688) b!4997763))

(assert (= (and b!4997767 c!852912) b!4997761))

(assert (= (and b!4997767 (not c!852912)) b!4997762))

(assert (= (and b!4997761 res!2132686) b!4997766))

(assert (= (and b!4997762 (not res!2132689)) b!4997765))

(assert (= (and b!4997765 res!2132687) b!4997764))

(assert (= (or b!4997766 b!4997765) bm!348811))

(assert (= (or b!4997761 b!4997764) bm!348810))

(assert (= (or b!4997763 bm!348810) bm!348809))

(declare-fun m!6030950 () Bool)

(assert (=> bm!348809 m!6030950))

(declare-fun m!6030952 () Bool)

(assert (=> bm!348811 m!6030952))

(declare-fun m!6030954 () Bool)

(assert (=> b!4997769 m!6030954))

(assert (=> start!528070 d!1609053))

(declare-fun d!1609069 () Bool)

(declare-fun isBalanced!4258 (Conc!15288) Bool)

(assert (=> d!1609069 (= (inv!75872 input!5597) (isBalanced!4258 (c!852873 input!5597)))))

(declare-fun bs!1185595 () Bool)

(assert (= bs!1185595 d!1609069))

(declare-fun m!6030966 () Bool)

(assert (=> bs!1185595 m!6030966))

(assert (=> start!528070 d!1609069))

(declare-fun d!1609073 () Bool)

(assert (=> d!1609073 (= (inv!75872 totalInput!1012) (isBalanced!4258 (c!852873 totalInput!1012)))))

(declare-fun bs!1185596 () Bool)

(assert (= bs!1185596 d!1609073))

(declare-fun m!6030968 () Bool)

(assert (=> bs!1185596 m!6030968))

(assert (=> start!528070 d!1609073))

(declare-fun d!1609075 () Bool)

(declare-fun c!852923 () Bool)

(assert (=> d!1609075 (= c!852923 ((_ is Node!15288) (c!852873 totalInput!1012)))))

(declare-fun e!3123091 () Bool)

(assert (=> d!1609075 (= (inv!75871 (c!852873 totalInput!1012)) e!3123091)))

(declare-fun b!4997791 () Bool)

(assert (=> b!4997791 (= e!3123091 (inv!75876 (c!852873 totalInput!1012)))))

(declare-fun b!4997792 () Bool)

(declare-fun e!3123092 () Bool)

(assert (=> b!4997792 (= e!3123091 e!3123092)))

(declare-fun res!2132694 () Bool)

(assert (=> b!4997792 (= res!2132694 (not ((_ is Leaf!25381) (c!852873 totalInput!1012))))))

(assert (=> b!4997792 (=> res!2132694 e!3123092)))

(declare-fun b!4997793 () Bool)

(assert (=> b!4997793 (= e!3123092 (inv!75877 (c!852873 totalInput!1012)))))

(assert (= (and d!1609075 c!852923) b!4997791))

(assert (= (and d!1609075 (not c!852923)) b!4997792))

(assert (= (and b!4997792 (not res!2132694)) b!4997793))

(declare-fun m!6030970 () Bool)

(assert (=> b!4997791 m!6030970))

(declare-fun m!6030972 () Bool)

(assert (=> b!4997793 m!6030972))

(assert (=> b!4997630 d!1609075))

(declare-fun b!4997840 () Bool)

(declare-fun res!2132705 () Bool)

(declare-fun e!3123119 () Bool)

(assert (=> b!4997840 (=> (not res!2132705) (not e!3123119))))

(declare-fun lt!2066856 () List!57911)

(assert (=> b!4997840 (= res!2132705 (= (size!38399 lt!2066856) (+ (size!38399 lt!2066790) (size!38399 lt!2066800))))))

(declare-fun b!4997841 () Bool)

(assert (=> b!4997841 (= e!3123119 (or (not (= lt!2066800 Nil!57787)) (= lt!2066856 lt!2066790)))))

(declare-fun d!1609077 () Bool)

(assert (=> d!1609077 e!3123119))

(declare-fun res!2132706 () Bool)

(assert (=> d!1609077 (=> (not res!2132706) (not e!3123119))))

(assert (=> d!1609077 (= res!2132706 (= (content!10224 lt!2066856) ((_ map or) (content!10224 lt!2066790) (content!10224 lt!2066800))))))

(declare-fun e!3123118 () List!57911)

(assert (=> d!1609077 (= lt!2066856 e!3123118)))

(declare-fun c!852941 () Bool)

(assert (=> d!1609077 (= c!852941 ((_ is Nil!57787) lt!2066790))))

(assert (=> d!1609077 (= (++!12615 lt!2066790 lt!2066800) lt!2066856)))

(declare-fun b!4997838 () Bool)

(assert (=> b!4997838 (= e!3123118 lt!2066800)))

(declare-fun b!4997839 () Bool)

(assert (=> b!4997839 (= e!3123118 (Cons!57787 (h!64235 lt!2066790) (++!12615 (t!370251 lt!2066790) lt!2066800)))))

(assert (= (and d!1609077 c!852941) b!4997838))

(assert (= (and d!1609077 (not c!852941)) b!4997839))

(assert (= (and d!1609077 res!2132706) b!4997840))

(assert (= (and b!4997840 res!2132705) b!4997841))

(declare-fun m!6030988 () Bool)

(assert (=> b!4997840 m!6030988))

(declare-fun m!6030990 () Bool)

(assert (=> b!4997840 m!6030990))

(declare-fun m!6030992 () Bool)

(assert (=> b!4997840 m!6030992))

(declare-fun m!6030994 () Bool)

(assert (=> d!1609077 m!6030994))

(declare-fun m!6030996 () Bool)

(assert (=> d!1609077 m!6030996))

(declare-fun m!6030998 () Bool)

(assert (=> d!1609077 m!6030998))

(declare-fun m!6031000 () Bool)

(assert (=> b!4997839 m!6031000))

(assert (=> b!4997646 d!1609077))

(declare-fun d!1609083 () Bool)

(declare-fun list!18584 (Conc!15288) List!57911)

(assert (=> d!1609083 (= (list!18582 (_1!34758 lt!2066781)) (list!18584 (c!852873 (_1!34758 lt!2066781))))))

(declare-fun bs!1185597 () Bool)

(assert (= bs!1185597 d!1609083))

(declare-fun m!6031002 () Bool)

(assert (=> bs!1185597 m!6031002))

(assert (=> b!4997646 d!1609083))

(declare-fun d!1609085 () Bool)

(assert (=> d!1609085 (= (list!18582 (_2!34758 lt!2066781)) (list!18584 (c!852873 (_2!34758 lt!2066781))))))

(declare-fun bs!1185598 () Bool)

(assert (= bs!1185598 d!1609085))

(declare-fun m!6031004 () Bool)

(assert (=> bs!1185598 m!6031004))

(assert (=> b!4997646 d!1609085))

(declare-fun d!1609087 () Bool)

(declare-fun lt!2066861 () Int)

(assert (=> d!1609087 (= lt!2066861 (size!38399 (list!18582 totalInput!1012)))))

(declare-fun size!38401 (Conc!15288) Int)

(assert (=> d!1609087 (= lt!2066861 (size!38401 (c!852873 totalInput!1012)))))

(assert (=> d!1609087 (= (size!38398 totalInput!1012) lt!2066861)))

(declare-fun bs!1185599 () Bool)

(assert (= bs!1185599 d!1609087))

(assert (=> bs!1185599 m!6030858))

(assert (=> bs!1185599 m!6030858))

(declare-fun m!6031006 () Bool)

(assert (=> bs!1185599 m!6031006))

(declare-fun m!6031008 () Bool)

(assert (=> bs!1185599 m!6031008))

(assert (=> b!4997646 d!1609087))

(declare-fun d!1609089 () Bool)

(declare-fun lt!2066881 () tuple2!62910)

(assert (=> d!1609089 (= (++!12615 (list!18582 (_1!34758 lt!2066881)) (list!18582 (_2!34758 lt!2066881))) (list!18582 input!5597))))

(declare-fun lt!2066882 () Int)

(declare-fun splitAt!433 (BalanceConc!30006 Int) tuple2!62910)

(assert (=> d!1609089 (= lt!2066881 (splitAt!433 input!5597 (findLongestMatchInnerZipperFastV2!109 z!4183 (- lt!2066882 (size!38398 input!5597)) totalInput!1012 lt!2066882)))))

(assert (=> d!1609089 (= lt!2066882 (size!38398 totalInput!1012))))

(assert (=> d!1609089 (isSuffix!1335 (list!18582 input!5597) (list!18582 totalInput!1012))))

(assert (=> d!1609089 (= (findLongestMatchZipperFastV2!71 z!4183 input!5597 totalInput!1012) lt!2066881)))

(declare-fun bs!1185604 () Bool)

(assert (= bs!1185604 d!1609089))

(declare-fun m!6031084 () Bool)

(assert (=> bs!1185604 m!6031084))

(declare-fun m!6031086 () Bool)

(assert (=> bs!1185604 m!6031086))

(assert (=> bs!1185604 m!6030860))

(declare-fun m!6031088 () Bool)

(assert (=> bs!1185604 m!6031088))

(assert (=> bs!1185604 m!6030860))

(assert (=> bs!1185604 m!6030858))

(declare-fun m!6031090 () Bool)

(assert (=> bs!1185604 m!6031090))

(assert (=> bs!1185604 m!6031084))

(declare-fun m!6031092 () Bool)

(assert (=> bs!1185604 m!6031092))

(assert (=> bs!1185604 m!6030858))

(assert (=> bs!1185604 m!6031088))

(assert (=> bs!1185604 m!6031092))

(declare-fun m!6031094 () Bool)

(assert (=> bs!1185604 m!6031094))

(assert (=> bs!1185604 m!6030782))

(assert (=> bs!1185604 m!6030786))

(assert (=> b!4997646 d!1609089))

(declare-fun d!1609113 () Bool)

(declare-fun lt!2066920 () tuple2!62908)

(assert (=> d!1609113 (= (++!12615 (_1!34757 lt!2066920) (_2!34757 lt!2066920)) lt!2066782)))

(declare-fun sizeTr!386 (List!57911 Int) Int)

(assert (=> d!1609113 (= lt!2066920 (findLongestMatchInner!1958 r!12727 Nil!57787 0 lt!2066782 lt!2066782 (sizeTr!386 lt!2066782 0)))))

(declare-fun lt!2066917 () Unit!148947)

(declare-fun lt!2066922 () Unit!148947)

(assert (=> d!1609113 (= lt!2066917 lt!2066922)))

(declare-fun lt!2066921 () List!57911)

(declare-fun lt!2066923 () Int)

(assert (=> d!1609113 (= (sizeTr!386 lt!2066921 lt!2066923) (+ (size!38399 lt!2066921) lt!2066923))))

(declare-fun lemmaSizeTrEqualsSize!385 (List!57911 Int) Unit!148947)

(assert (=> d!1609113 (= lt!2066922 (lemmaSizeTrEqualsSize!385 lt!2066921 lt!2066923))))

(assert (=> d!1609113 (= lt!2066923 0)))

(assert (=> d!1609113 (= lt!2066921 Nil!57787)))

(declare-fun lt!2066916 () Unit!148947)

(declare-fun lt!2066919 () Unit!148947)

(assert (=> d!1609113 (= lt!2066916 lt!2066919)))

(declare-fun lt!2066918 () Int)

(assert (=> d!1609113 (= (sizeTr!386 lt!2066782 lt!2066918) (+ (size!38399 lt!2066782) lt!2066918))))

(assert (=> d!1609113 (= lt!2066919 (lemmaSizeTrEqualsSize!385 lt!2066782 lt!2066918))))

(assert (=> d!1609113 (= lt!2066918 0)))

(assert (=> d!1609113 (validRegex!6066 r!12727)))

(assert (=> d!1609113 (= (findLongestMatch!1782 r!12727 lt!2066782) lt!2066920)))

(declare-fun bs!1185607 () Bool)

(assert (= bs!1185607 d!1609113))

(declare-fun m!6031134 () Bool)

(assert (=> bs!1185607 m!6031134))

(declare-fun m!6031136 () Bool)

(assert (=> bs!1185607 m!6031136))

(assert (=> bs!1185607 m!6030794))

(declare-fun m!6031138 () Bool)

(assert (=> bs!1185607 m!6031138))

(declare-fun m!6031140 () Bool)

(assert (=> bs!1185607 m!6031140))

(declare-fun m!6031142 () Bool)

(assert (=> bs!1185607 m!6031142))

(assert (=> bs!1185607 m!6030834))

(declare-fun m!6031144 () Bool)

(assert (=> bs!1185607 m!6031144))

(declare-fun m!6031146 () Bool)

(assert (=> bs!1185607 m!6031146))

(declare-fun m!6031148 () Bool)

(assert (=> bs!1185607 m!6031148))

(assert (=> bs!1185607 m!6031134))

(assert (=> b!4997646 d!1609113))

(declare-fun d!1609127 () Bool)

(declare-fun lt!2066924 () Int)

(assert (=> d!1609127 (= lt!2066924 (size!38399 (list!18582 input!5597)))))

(assert (=> d!1609127 (= lt!2066924 (size!38401 (c!852873 input!5597)))))

(assert (=> d!1609127 (= (size!38398 input!5597) lt!2066924)))

(declare-fun bs!1185608 () Bool)

(assert (= bs!1185608 d!1609127))

(assert (=> bs!1185608 m!6030860))

(assert (=> bs!1185608 m!6030860))

(declare-fun m!6031150 () Bool)

(assert (=> bs!1185608 m!6031150))

(declare-fun m!6031152 () Bool)

(assert (=> bs!1185608 m!6031152))

(assert (=> b!4997646 d!1609127))

(declare-fun b!4997980 () Bool)

(declare-fun res!2132767 () Bool)

(declare-fun e!3123196 () Bool)

(assert (=> b!4997980 (=> (not res!2132767) (not e!3123196))))

(declare-fun lt!2066925 () List!57911)

(assert (=> b!4997980 (= res!2132767 (= (size!38399 lt!2066925) (+ (size!38399 (_1!34757 lt!2066786)) (size!38399 (_2!34757 lt!2066786)))))))

(declare-fun b!4997981 () Bool)

(assert (=> b!4997981 (= e!3123196 (or (not (= (_2!34757 lt!2066786) Nil!57787)) (= lt!2066925 (_1!34757 lt!2066786))))))

(declare-fun d!1609129 () Bool)

(assert (=> d!1609129 e!3123196))

(declare-fun res!2132768 () Bool)

(assert (=> d!1609129 (=> (not res!2132768) (not e!3123196))))

(assert (=> d!1609129 (= res!2132768 (= (content!10224 lt!2066925) ((_ map or) (content!10224 (_1!34757 lt!2066786)) (content!10224 (_2!34757 lt!2066786)))))))

(declare-fun e!3123195 () List!57911)

(assert (=> d!1609129 (= lt!2066925 e!3123195)))

(declare-fun c!852980 () Bool)

(assert (=> d!1609129 (= c!852980 ((_ is Nil!57787) (_1!34757 lt!2066786)))))

(assert (=> d!1609129 (= (++!12615 (_1!34757 lt!2066786) (_2!34757 lt!2066786)) lt!2066925)))

(declare-fun b!4997978 () Bool)

(assert (=> b!4997978 (= e!3123195 (_2!34757 lt!2066786))))

(declare-fun b!4997979 () Bool)

(assert (=> b!4997979 (= e!3123195 (Cons!57787 (h!64235 (_1!34757 lt!2066786)) (++!12615 (t!370251 (_1!34757 lt!2066786)) (_2!34757 lt!2066786))))))

(assert (= (and d!1609129 c!852980) b!4997978))

(assert (= (and d!1609129 (not c!852980)) b!4997979))

(assert (= (and d!1609129 res!2132768) b!4997980))

(assert (= (and b!4997980 res!2132767) b!4997981))

(declare-fun m!6031154 () Bool)

(assert (=> b!4997980 m!6031154))

(assert (=> b!4997980 m!6030814))

(declare-fun m!6031156 () Bool)

(assert (=> b!4997980 m!6031156))

(declare-fun m!6031158 () Bool)

(assert (=> d!1609129 m!6031158))

(declare-fun m!6031160 () Bool)

(assert (=> d!1609129 m!6031160))

(declare-fun m!6031162 () Bool)

(assert (=> d!1609129 m!6031162))

(declare-fun m!6031164 () Bool)

(assert (=> b!4997979 m!6031164))

(assert (=> b!4997628 d!1609129))

(declare-fun d!1609131 () Bool)

(declare-fun lambda!248313 () Int)

(declare-fun forall!13351 (List!57912 Int) Bool)

(assert (=> d!1609131 (= (inv!75873 setElem!28290) (forall!13351 (exprs!3694 setElem!28290) lambda!248313))))

(declare-fun bs!1185610 () Bool)

(assert (= bs!1185610 d!1609131))

(declare-fun m!6031278 () Bool)

(assert (=> bs!1185610 m!6031278))

(assert (=> setNonEmpty!28290 d!1609131))

(declare-fun b!4998081 () Bool)

(declare-fun e!3123262 () Bool)

(declare-fun e!3123260 () Bool)

(assert (=> b!4998081 (= e!3123262 e!3123260)))

(declare-fun c!853008 () Bool)

(assert (=> b!4998081 (= c!853008 ((_ is EmptyLang!13769) r!12727))))

(declare-fun b!4998082 () Bool)

(declare-fun e!3123257 () Bool)

(assert (=> b!4998082 (= e!3123257 (nullable!4675 r!12727))))

(declare-fun b!4998083 () Bool)

(declare-fun res!2132820 () Bool)

(declare-fun e!3123263 () Bool)

(assert (=> b!4998083 (=> res!2132820 e!3123263)))

(declare-fun e!3123259 () Bool)

(assert (=> b!4998083 (= res!2132820 e!3123259)))

(declare-fun res!2132813 () Bool)

(assert (=> b!4998083 (=> (not res!2132813) (not e!3123259))))

(declare-fun lt!2067029 () Bool)

(assert (=> b!4998083 (= res!2132813 lt!2067029)))

(declare-fun bm!348846 () Bool)

(declare-fun call!348851 () Bool)

(assert (=> bm!348846 (= call!348851 (isEmpty!31272 (_1!34757 lt!2066786)))))

(declare-fun b!4998084 () Bool)

(declare-fun res!2132814 () Bool)

(assert (=> b!4998084 (=> (not res!2132814) (not e!3123259))))

(assert (=> b!4998084 (= res!2132814 (not call!348851))))

(declare-fun b!4998085 () Bool)

(declare-fun res!2132819 () Bool)

(declare-fun e!3123261 () Bool)

(assert (=> b!4998085 (=> res!2132819 e!3123261)))

(declare-fun tail!9850 (List!57911) List!57911)

(assert (=> b!4998085 (= res!2132819 (not (isEmpty!31272 (tail!9850 (_1!34757 lt!2066786)))))))

(declare-fun b!4998086 () Bool)

(assert (=> b!4998086 (= e!3123260 (not lt!2067029))))

(declare-fun b!4998087 () Bool)

(declare-fun res!2132817 () Bool)

(assert (=> b!4998087 (=> res!2132817 e!3123263)))

(assert (=> b!4998087 (= res!2132817 (not ((_ is ElementMatch!13769) r!12727)))))

(assert (=> b!4998087 (= e!3123260 e!3123263)))

(declare-fun b!4998088 () Bool)

(declare-fun e!3123258 () Bool)

(assert (=> b!4998088 (= e!3123258 e!3123261)))

(declare-fun res!2132816 () Bool)

(assert (=> b!4998088 (=> res!2132816 e!3123261)))

(assert (=> b!4998088 (= res!2132816 call!348851)))

(declare-fun b!4998089 () Bool)

(declare-fun derivativeStep!3967 (Regex!13769 C!27788) Regex!13769)

(declare-fun head!10717 (List!57911) C!27788)

(assert (=> b!4998089 (= e!3123257 (matchR!6737 (derivativeStep!3967 r!12727 (head!10717 (_1!34757 lt!2066786))) (tail!9850 (_1!34757 lt!2066786))))))

(declare-fun b!4998090 () Bool)

(declare-fun res!2132818 () Bool)

(assert (=> b!4998090 (=> (not res!2132818) (not e!3123259))))

(assert (=> b!4998090 (= res!2132818 (isEmpty!31272 (tail!9850 (_1!34757 lt!2066786))))))

(declare-fun b!4998091 () Bool)

(assert (=> b!4998091 (= e!3123261 (not (= (head!10717 (_1!34757 lt!2066786)) (c!852874 r!12727))))))

(declare-fun d!1609155 () Bool)

(assert (=> d!1609155 e!3123262))

(declare-fun c!853010 () Bool)

(assert (=> d!1609155 (= c!853010 ((_ is EmptyExpr!13769) r!12727))))

(assert (=> d!1609155 (= lt!2067029 e!3123257)))

(declare-fun c!853009 () Bool)

(assert (=> d!1609155 (= c!853009 (isEmpty!31272 (_1!34757 lt!2066786)))))

(assert (=> d!1609155 (validRegex!6066 r!12727)))

(assert (=> d!1609155 (= (matchR!6737 r!12727 (_1!34757 lt!2066786)) lt!2067029)))

(declare-fun b!4998080 () Bool)

(assert (=> b!4998080 (= e!3123259 (= (head!10717 (_1!34757 lt!2066786)) (c!852874 r!12727)))))

(declare-fun b!4998092 () Bool)

(assert (=> b!4998092 (= e!3123262 (= lt!2067029 call!348851))))

(declare-fun b!4998093 () Bool)

(assert (=> b!4998093 (= e!3123263 e!3123258)))

(declare-fun res!2132815 () Bool)

(assert (=> b!4998093 (=> (not res!2132815) (not e!3123258))))

(assert (=> b!4998093 (= res!2132815 (not lt!2067029))))

(assert (= (and d!1609155 c!853009) b!4998082))

(assert (= (and d!1609155 (not c!853009)) b!4998089))

(assert (= (and d!1609155 c!853010) b!4998092))

(assert (= (and d!1609155 (not c!853010)) b!4998081))

(assert (= (and b!4998081 c!853008) b!4998086))

(assert (= (and b!4998081 (not c!853008)) b!4998087))

(assert (= (and b!4998087 (not res!2132817)) b!4998083))

(assert (= (and b!4998083 res!2132813) b!4998084))

(assert (= (and b!4998084 res!2132814) b!4998090))

(assert (= (and b!4998090 res!2132818) b!4998080))

(assert (= (and b!4998083 (not res!2132820)) b!4998093))

(assert (= (and b!4998093 res!2132815) b!4998088))

(assert (= (and b!4998088 (not res!2132816)) b!4998085))

(assert (= (and b!4998085 (not res!2132819)) b!4998091))

(assert (= (or b!4998092 b!4998084 b!4998088) bm!348846))

(assert (=> bm!348846 m!6030804))

(assert (=> d!1609155 m!6030804))

(assert (=> d!1609155 m!6030794))

(declare-fun m!6031280 () Bool)

(assert (=> b!4998090 m!6031280))

(assert (=> b!4998090 m!6031280))

(declare-fun m!6031282 () Bool)

(assert (=> b!4998090 m!6031282))

(assert (=> b!4998085 m!6031280))

(assert (=> b!4998085 m!6031280))

(assert (=> b!4998085 m!6031282))

(declare-fun m!6031284 () Bool)

(assert (=> b!4998082 m!6031284))

(declare-fun m!6031286 () Bool)

(assert (=> b!4998080 m!6031286))

(assert (=> b!4998091 m!6031286))

(assert (=> b!4998089 m!6031286))

(assert (=> b!4998089 m!6031286))

(declare-fun m!6031288 () Bool)

(assert (=> b!4998089 m!6031288))

(assert (=> b!4998089 m!6031280))

(assert (=> b!4998089 m!6031288))

(assert (=> b!4998089 m!6031280))

(declare-fun m!6031290 () Bool)

(assert (=> b!4998089 m!6031290))

(assert (=> b!4997644 d!1609155))

(declare-fun d!1609157 () Bool)

(assert (=> d!1609157 (= (matchR!6737 r!12727 (_1!34757 lt!2066786)) (matchZipper!541 z!4183 (_1!34757 lt!2066786)))))

(declare-fun lt!2067032 () Unit!148947)

(declare-fun choose!36940 ((InoxSet Context!6388) List!57913 Regex!13769 List!57911) Unit!148947)

(assert (=> d!1609157 (= lt!2067032 (choose!36940 z!4183 lt!2066793 r!12727 (_1!34757 lt!2066786)))))

(assert (=> d!1609157 (validRegex!6066 r!12727)))

(assert (=> d!1609157 (= (theoremZipperRegexEquiv!147 z!4183 lt!2066793 r!12727 (_1!34757 lt!2066786)) lt!2067032)))

(declare-fun bs!1185611 () Bool)

(assert (= bs!1185611 d!1609157))

(assert (=> bs!1185611 m!6030792))

(assert (=> bs!1185611 m!6030824))

(declare-fun m!6031292 () Bool)

(assert (=> bs!1185611 m!6031292))

(assert (=> bs!1185611 m!6030794))

(assert (=> b!4997636 d!1609157))

(declare-fun b!4998095 () Bool)

(declare-fun e!3123269 () Bool)

(declare-fun e!3123267 () Bool)

(assert (=> b!4998095 (= e!3123269 e!3123267)))

(declare-fun c!853011 () Bool)

(assert (=> b!4998095 (= c!853011 ((_ is EmptyLang!13769) r!12727))))

(declare-fun b!4998096 () Bool)

(declare-fun e!3123264 () Bool)

(assert (=> b!4998096 (= e!3123264 (nullable!4675 r!12727))))

(declare-fun b!4998097 () Bool)

(declare-fun res!2132828 () Bool)

(declare-fun e!3123270 () Bool)

(assert (=> b!4998097 (=> res!2132828 e!3123270)))

(declare-fun e!3123266 () Bool)

(assert (=> b!4998097 (= res!2132828 e!3123266)))

(declare-fun res!2132821 () Bool)

(assert (=> b!4998097 (=> (not res!2132821) (not e!3123266))))

(declare-fun lt!2067033 () Bool)

(assert (=> b!4998097 (= res!2132821 lt!2067033)))

(declare-fun bm!348847 () Bool)

(declare-fun call!348852 () Bool)

(assert (=> bm!348847 (= call!348852 (isEmpty!31272 lt!2066790))))

(declare-fun b!4998098 () Bool)

(declare-fun res!2132822 () Bool)

(assert (=> b!4998098 (=> (not res!2132822) (not e!3123266))))

(assert (=> b!4998098 (= res!2132822 (not call!348852))))

(declare-fun b!4998099 () Bool)

(declare-fun res!2132827 () Bool)

(declare-fun e!3123268 () Bool)

(assert (=> b!4998099 (=> res!2132827 e!3123268)))

(assert (=> b!4998099 (= res!2132827 (not (isEmpty!31272 (tail!9850 lt!2066790))))))

(declare-fun b!4998100 () Bool)

(assert (=> b!4998100 (= e!3123267 (not lt!2067033))))

(declare-fun b!4998101 () Bool)

(declare-fun res!2132825 () Bool)

(assert (=> b!4998101 (=> res!2132825 e!3123270)))

(assert (=> b!4998101 (= res!2132825 (not ((_ is ElementMatch!13769) r!12727)))))

(assert (=> b!4998101 (= e!3123267 e!3123270)))

(declare-fun b!4998102 () Bool)

(declare-fun e!3123265 () Bool)

(assert (=> b!4998102 (= e!3123265 e!3123268)))

(declare-fun res!2132824 () Bool)

(assert (=> b!4998102 (=> res!2132824 e!3123268)))

(assert (=> b!4998102 (= res!2132824 call!348852)))

(declare-fun b!4998103 () Bool)

(assert (=> b!4998103 (= e!3123264 (matchR!6737 (derivativeStep!3967 r!12727 (head!10717 lt!2066790)) (tail!9850 lt!2066790)))))

(declare-fun b!4998104 () Bool)

(declare-fun res!2132826 () Bool)

(assert (=> b!4998104 (=> (not res!2132826) (not e!3123266))))

(assert (=> b!4998104 (= res!2132826 (isEmpty!31272 (tail!9850 lt!2066790)))))

(declare-fun b!4998105 () Bool)

(assert (=> b!4998105 (= e!3123268 (not (= (head!10717 lt!2066790) (c!852874 r!12727))))))

(declare-fun d!1609159 () Bool)

(assert (=> d!1609159 e!3123269))

(declare-fun c!853013 () Bool)

(assert (=> d!1609159 (= c!853013 ((_ is EmptyExpr!13769) r!12727))))

(assert (=> d!1609159 (= lt!2067033 e!3123264)))

(declare-fun c!853012 () Bool)

(assert (=> d!1609159 (= c!853012 (isEmpty!31272 lt!2066790))))

(assert (=> d!1609159 (validRegex!6066 r!12727)))

(assert (=> d!1609159 (= (matchR!6737 r!12727 lt!2066790) lt!2067033)))

(declare-fun b!4998094 () Bool)

(assert (=> b!4998094 (= e!3123266 (= (head!10717 lt!2066790) (c!852874 r!12727)))))

(declare-fun b!4998106 () Bool)

(assert (=> b!4998106 (= e!3123269 (= lt!2067033 call!348852))))

(declare-fun b!4998107 () Bool)

(assert (=> b!4998107 (= e!3123270 e!3123265)))

(declare-fun res!2132823 () Bool)

(assert (=> b!4998107 (=> (not res!2132823) (not e!3123265))))

(assert (=> b!4998107 (= res!2132823 (not lt!2067033))))

(assert (= (and d!1609159 c!853012) b!4998096))

(assert (= (and d!1609159 (not c!853012)) b!4998103))

(assert (= (and d!1609159 c!853013) b!4998106))

(assert (= (and d!1609159 (not c!853013)) b!4998095))

(assert (= (and b!4998095 c!853011) b!4998100))

(assert (= (and b!4998095 (not c!853011)) b!4998101))

(assert (= (and b!4998101 (not res!2132825)) b!4998097))

(assert (= (and b!4998097 res!2132821) b!4998098))

(assert (= (and b!4998098 res!2132822) b!4998104))

(assert (= (and b!4998104 res!2132826) b!4998094))

(assert (= (and b!4998097 (not res!2132828)) b!4998107))

(assert (= (and b!4998107 res!2132823) b!4998102))

(assert (= (and b!4998102 (not res!2132824)) b!4998099))

(assert (= (and b!4998099 (not res!2132827)) b!4998105))

(assert (= (or b!4998106 b!4998098 b!4998102) bm!348847))

(declare-fun m!6031294 () Bool)

(assert (=> bm!348847 m!6031294))

(assert (=> d!1609159 m!6031294))

(assert (=> d!1609159 m!6030794))

(declare-fun m!6031296 () Bool)

(assert (=> b!4998104 m!6031296))

(assert (=> b!4998104 m!6031296))

(declare-fun m!6031298 () Bool)

(assert (=> b!4998104 m!6031298))

(assert (=> b!4998099 m!6031296))

(assert (=> b!4998099 m!6031296))

(assert (=> b!4998099 m!6031298))

(assert (=> b!4998096 m!6031284))

(declare-fun m!6031300 () Bool)

(assert (=> b!4998094 m!6031300))

(assert (=> b!4998105 m!6031300))

(assert (=> b!4998103 m!6031300))

(assert (=> b!4998103 m!6031300))

(declare-fun m!6031302 () Bool)

(assert (=> b!4998103 m!6031302))

(assert (=> b!4998103 m!6031296))

(assert (=> b!4998103 m!6031302))

(assert (=> b!4998103 m!6031296))

(declare-fun m!6031304 () Bool)

(assert (=> b!4998103 m!6031304))

(assert (=> b!4997636 d!1609159))

(declare-fun d!1609161 () Bool)

(declare-fun lt!2067036 () Int)

(assert (=> d!1609161 (>= lt!2067036 0)))

(declare-fun e!3123273 () Int)

(assert (=> d!1609161 (= lt!2067036 e!3123273)))

(declare-fun c!853016 () Bool)

(assert (=> d!1609161 (= c!853016 ((_ is Nil!57787) (_1!34757 lt!2066786)))))

(assert (=> d!1609161 (= (size!38399 (_1!34757 lt!2066786)) lt!2067036)))

(declare-fun b!4998112 () Bool)

(assert (=> b!4998112 (= e!3123273 0)))

(declare-fun b!4998113 () Bool)

(assert (=> b!4998113 (= e!3123273 (+ 1 (size!38399 (t!370251 (_1!34757 lt!2066786)))))))

(assert (= (and d!1609161 c!853016) b!4998112))

(assert (= (and d!1609161 (not c!853016)) b!4998113))

(declare-fun m!6031306 () Bool)

(assert (=> b!4998113 m!6031306))

(assert (=> b!4997636 d!1609161))

(declare-fun d!1609163 () Bool)

(assert (=> d!1609163 (= (matchR!6737 r!12727 lt!2066790) (matchZipper!541 z!4183 lt!2066790))))

(declare-fun lt!2067037 () Unit!148947)

(assert (=> d!1609163 (= lt!2067037 (choose!36940 z!4183 lt!2066793 r!12727 lt!2066790))))

(assert (=> d!1609163 (validRegex!6066 r!12727)))

(assert (=> d!1609163 (= (theoremZipperRegexEquiv!147 z!4183 lt!2066793 r!12727 lt!2066790) lt!2067037)))

(declare-fun bs!1185612 () Bool)

(assert (= bs!1185612 d!1609163))

(assert (=> bs!1185612 m!6030816))

(assert (=> bs!1185612 m!6030848))

(declare-fun m!6031308 () Bool)

(assert (=> bs!1185612 m!6031308))

(assert (=> bs!1185612 m!6030794))

(assert (=> b!4997636 d!1609163))

(declare-fun d!1609165 () Bool)

(declare-fun lt!2067038 () Int)

(assert (=> d!1609165 (= lt!2067038 (size!38399 (list!18582 (_1!34758 lt!2066781))))))

(assert (=> d!1609165 (= lt!2067038 (size!38401 (c!852873 (_1!34758 lt!2066781))))))

(assert (=> d!1609165 (= (size!38398 (_1!34758 lt!2066781)) lt!2067038)))

(declare-fun bs!1185613 () Bool)

(assert (= bs!1185613 d!1609165))

(assert (=> bs!1185613 m!6030790))

(assert (=> bs!1185613 m!6030790))

(declare-fun m!6031310 () Bool)

(assert (=> bs!1185613 m!6031310))

(declare-fun m!6031312 () Bool)

(assert (=> bs!1185613 m!6031312))

(assert (=> b!4997636 d!1609165))

(declare-fun d!1609167 () Bool)

(declare-fun c!853019 () Bool)

(assert (=> d!1609167 (= c!853019 (isEmpty!31272 (_1!34757 lt!2066786)))))

(declare-fun e!3123276 () Bool)

(assert (=> d!1609167 (= (matchZipper!541 z!4183 (_1!34757 lt!2066786)) e!3123276)))

(declare-fun b!4998118 () Bool)

(declare-fun nullableZipper!872 ((InoxSet Context!6388)) Bool)

(assert (=> b!4998118 (= e!3123276 (nullableZipper!872 z!4183))))

(declare-fun b!4998119 () Bool)

(declare-fun derivationStepZipper!621 ((InoxSet Context!6388) C!27788) (InoxSet Context!6388))

(assert (=> b!4998119 (= e!3123276 (matchZipper!541 (derivationStepZipper!621 z!4183 (head!10717 (_1!34757 lt!2066786))) (tail!9850 (_1!34757 lt!2066786))))))

(assert (= (and d!1609167 c!853019) b!4998118))

(assert (= (and d!1609167 (not c!853019)) b!4998119))

(assert (=> d!1609167 m!6030804))

(declare-fun m!6031314 () Bool)

(assert (=> b!4998118 m!6031314))

(assert (=> b!4998119 m!6031286))

(assert (=> b!4998119 m!6031286))

(declare-fun m!6031316 () Bool)

(assert (=> b!4998119 m!6031316))

(assert (=> b!4998119 m!6031280))

(assert (=> b!4998119 m!6031316))

(assert (=> b!4998119 m!6031280))

(declare-fun m!6031318 () Bool)

(assert (=> b!4998119 m!6031318))

(assert (=> b!4997636 d!1609167))

(declare-fun d!1609169 () Bool)

(assert (=> d!1609169 (isPrefix!5322 lt!2066790 (++!12615 lt!2066790 lt!2066800))))

(declare-fun lt!2067041 () Unit!148947)

(declare-fun choose!36941 (List!57911 List!57911) Unit!148947)

(assert (=> d!1609169 (= lt!2067041 (choose!36941 lt!2066790 lt!2066800))))

(assert (=> d!1609169 (= (lemmaConcatTwoListThenFirstIsPrefix!3420 lt!2066790 lt!2066800) lt!2067041)))

(declare-fun bs!1185614 () Bool)

(assert (= bs!1185614 d!1609169))

(assert (=> bs!1185614 m!6030784))

(assert (=> bs!1185614 m!6030784))

(declare-fun m!6031320 () Bool)

(assert (=> bs!1185614 m!6031320))

(declare-fun m!6031322 () Bool)

(assert (=> bs!1185614 m!6031322))

(assert (=> b!4997645 d!1609169))

(declare-fun d!1609171 () Bool)

(assert (=> d!1609171 (= (isEmpty!31272 (_1!34757 lt!2066803)) ((_ is Nil!57787) (_1!34757 lt!2066803)))))

(assert (=> b!4997645 d!1609171))

(declare-fun b!4998208 () Bool)

(declare-fun e!3123321 () tuple2!62908)

(declare-fun call!348871 () tuple2!62908)

(assert (=> b!4998208 (= e!3123321 call!348871)))

(declare-fun b!4998209 () Bool)

(declare-fun e!3123324 () tuple2!62908)

(assert (=> b!4998209 (= e!3123324 (tuple2!62909 Nil!57787 lt!2066782))))

(declare-fun b!4998210 () Bool)

(declare-fun e!3123325 () Bool)

(declare-fun e!3123322 () Bool)

(assert (=> b!4998210 (= e!3123325 e!3123322)))

(declare-fun res!2132838 () Bool)

(assert (=> b!4998210 (=> res!2132838 e!3123322)))

(declare-fun lt!2067131 () tuple2!62908)

(assert (=> b!4998210 (= res!2132838 (isEmpty!31272 (_1!34757 lt!2067131)))))

(declare-fun bm!348865 () Bool)

(declare-fun call!348870 () C!27788)

(assert (=> bm!348865 (= call!348870 (head!10717 lt!2066782))))

(declare-fun b!4998211 () Bool)

(declare-fun c!853038 () Bool)

(declare-fun call!348875 () Bool)

(assert (=> b!4998211 (= c!853038 call!348875)))

(declare-fun lt!2067128 () Unit!148947)

(declare-fun lt!2067112 () Unit!148947)

(assert (=> b!4998211 (= lt!2067128 lt!2067112)))

(declare-fun lt!2067121 () C!27788)

(declare-fun lt!2067105 () List!57911)

(assert (=> b!4998211 (= (++!12615 (++!12615 Nil!57787 (Cons!57787 lt!2067121 Nil!57787)) lt!2067105) lt!2066782)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1488 (List!57911 C!27788 List!57911 List!57911) Unit!148947)

(assert (=> b!4998211 (= lt!2067112 (lemmaMoveElementToOtherListKeepsConcatEq!1488 Nil!57787 lt!2067121 lt!2067105 lt!2066782))))

(assert (=> b!4998211 (= lt!2067105 (tail!9850 lt!2066782))))

(assert (=> b!4998211 (= lt!2067121 (head!10717 lt!2066782))))

(declare-fun lt!2067111 () Unit!148947)

(declare-fun lt!2067122 () Unit!148947)

(assert (=> b!4998211 (= lt!2067111 lt!2067122)))

(declare-fun getSuffix!3132 (List!57911 List!57911) List!57911)

(assert (=> b!4998211 (isPrefix!5322 (++!12615 Nil!57787 (Cons!57787 (head!10717 (getSuffix!3132 lt!2066782 Nil!57787)) Nil!57787)) lt!2066782)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!877 (List!57911 List!57911) Unit!148947)

(assert (=> b!4998211 (= lt!2067122 (lemmaAddHeadSuffixToPrefixStillPrefix!877 Nil!57787 lt!2066782))))

(declare-fun lt!2067119 () Unit!148947)

(declare-fun lt!2067115 () Unit!148947)

(assert (=> b!4998211 (= lt!2067119 lt!2067115)))

(assert (=> b!4998211 (= lt!2067115 (lemmaAddHeadSuffixToPrefixStillPrefix!877 Nil!57787 lt!2066782))))

(declare-fun lt!2067114 () List!57911)

(assert (=> b!4998211 (= lt!2067114 (++!12615 Nil!57787 (Cons!57787 (head!10717 lt!2066782) Nil!57787)))))

(declare-fun lt!2067116 () Unit!148947)

(declare-fun e!3123323 () Unit!148947)

(assert (=> b!4998211 (= lt!2067116 e!3123323)))

(declare-fun c!853035 () Bool)

(assert (=> b!4998211 (= c!853035 (= (size!38399 Nil!57787) (size!38399 lt!2066782)))))

(declare-fun lt!2067124 () Unit!148947)

(declare-fun lt!2067113 () Unit!148947)

(assert (=> b!4998211 (= lt!2067124 lt!2067113)))

(assert (=> b!4998211 (<= (size!38399 Nil!57787) (size!38399 lt!2066782))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!803 (List!57911 List!57911) Unit!148947)

(assert (=> b!4998211 (= lt!2067113 (lemmaIsPrefixThenSmallerEqSize!803 Nil!57787 lt!2066782))))

(declare-fun e!3123319 () tuple2!62908)

(assert (=> b!4998211 (= e!3123319 e!3123321)))

(declare-fun bm!348866 () Bool)

(declare-fun call!348872 () Bool)

(assert (=> bm!348866 (= call!348872 (isPrefix!5322 lt!2066782 lt!2066782))))

(declare-fun b!4998212 () Bool)

(declare-fun e!3123326 () tuple2!62908)

(declare-fun lt!2067118 () tuple2!62908)

(assert (=> b!4998212 (= e!3123326 lt!2067118)))

(declare-fun b!4998213 () Bool)

(assert (=> b!4998213 (= e!3123321 e!3123326)))

(assert (=> b!4998213 (= lt!2067118 call!348871)))

(declare-fun c!853037 () Bool)

(assert (=> b!4998213 (= c!853037 (isEmpty!31272 (_1!34757 lt!2067118)))))

(declare-fun b!4998214 () Bool)

(declare-fun Unit!148952 () Unit!148947)

(assert (=> b!4998214 (= e!3123323 Unit!148952)))

(declare-fun lt!2067129 () Unit!148947)

(declare-fun call!348874 () Unit!148947)

(assert (=> b!4998214 (= lt!2067129 call!348874)))

(assert (=> b!4998214 call!348872))

(declare-fun lt!2067123 () Unit!148947)

(assert (=> b!4998214 (= lt!2067123 lt!2067129)))

(declare-fun lt!2067110 () Unit!148947)

(declare-fun call!348869 () Unit!148947)

(assert (=> b!4998214 (= lt!2067110 call!348869)))

(assert (=> b!4998214 (= lt!2066782 Nil!57787)))

(declare-fun lt!2067108 () Unit!148947)

(assert (=> b!4998214 (= lt!2067108 lt!2067110)))

(assert (=> b!4998214 false))

(declare-fun b!4998215 () Bool)

(declare-fun Unit!148953 () Unit!148947)

(assert (=> b!4998215 (= e!3123323 Unit!148953)))

(declare-fun bm!348867 () Bool)

(declare-fun call!348876 () List!57911)

(assert (=> bm!348867 (= call!348876 (tail!9850 lt!2066782))))

(declare-fun bm!348864 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1259 (List!57911 List!57911 List!57911) Unit!148947)

(assert (=> bm!348864 (= call!348869 (lemmaIsPrefixSameLengthThenSameList!1259 lt!2066782 Nil!57787 lt!2066782))))

(declare-fun d!1609173 () Bool)

(assert (=> d!1609173 e!3123325))

(declare-fun res!2132837 () Bool)

(assert (=> d!1609173 (=> (not res!2132837) (not e!3123325))))

(assert (=> d!1609173 (= res!2132837 (= (++!12615 (_1!34757 lt!2067131) (_2!34757 lt!2067131)) lt!2066782))))

(declare-fun e!3123320 () tuple2!62908)

(assert (=> d!1609173 (= lt!2067131 e!3123320)))

(declare-fun c!853034 () Bool)

(declare-fun lostCause!1176 (Regex!13769) Bool)

(assert (=> d!1609173 (= c!853034 (lostCause!1176 r!12727))))

(declare-fun lt!2067120 () Unit!148947)

(declare-fun Unit!148954 () Unit!148947)

(assert (=> d!1609173 (= lt!2067120 Unit!148954)))

(assert (=> d!1609173 (= (getSuffix!3132 lt!2066782 Nil!57787) lt!2066782)))

(declare-fun lt!2067106 () Unit!148947)

(declare-fun lt!2067130 () Unit!148947)

(assert (=> d!1609173 (= lt!2067106 lt!2067130)))

(declare-fun lt!2067107 () List!57911)

(assert (=> d!1609173 (= lt!2066782 lt!2067107)))

(declare-fun lemmaSamePrefixThenSameSuffix!2546 (List!57911 List!57911 List!57911 List!57911 List!57911) Unit!148947)

(assert (=> d!1609173 (= lt!2067130 (lemmaSamePrefixThenSameSuffix!2546 Nil!57787 lt!2066782 Nil!57787 lt!2067107 lt!2066782))))

(assert (=> d!1609173 (= lt!2067107 (getSuffix!3132 lt!2066782 Nil!57787))))

(declare-fun lt!2067109 () Unit!148947)

(declare-fun lt!2067117 () Unit!148947)

(assert (=> d!1609173 (= lt!2067109 lt!2067117)))

(assert (=> d!1609173 (isPrefix!5322 Nil!57787 (++!12615 Nil!57787 lt!2066782))))

(assert (=> d!1609173 (= lt!2067117 (lemmaConcatTwoListThenFirstIsPrefix!3420 Nil!57787 lt!2066782))))

(assert (=> d!1609173 (validRegex!6066 r!12727)))

(assert (=> d!1609173 (= (findLongestMatchInner!1958 r!12727 Nil!57787 (size!38399 Nil!57787) lt!2066782 lt!2066782 (size!38399 lt!2066782)) lt!2067131)))

(declare-fun bm!348868 () Bool)

(declare-fun call!348873 () Regex!13769)

(assert (=> bm!348868 (= call!348873 (derivativeStep!3967 r!12727 call!348870))))

(declare-fun b!4998216 () Bool)

(assert (=> b!4998216 (= e!3123322 (>= (size!38399 (_1!34757 lt!2067131)) (size!38399 Nil!57787)))))

(declare-fun bm!348869 () Bool)

(assert (=> bm!348869 (= call!348875 (nullable!4675 r!12727))))

(declare-fun bm!348870 () Bool)

(declare-fun lemmaIsPrefixRefl!3615 (List!57911 List!57911) Unit!148947)

(assert (=> bm!348870 (= call!348874 (lemmaIsPrefixRefl!3615 lt!2066782 lt!2066782))))

(declare-fun b!4998217 () Bool)

(declare-fun c!853033 () Bool)

(assert (=> b!4998217 (= c!853033 call!348875)))

(declare-fun lt!2067126 () Unit!148947)

(declare-fun lt!2067125 () Unit!148947)

(assert (=> b!4998217 (= lt!2067126 lt!2067125)))

(assert (=> b!4998217 (= lt!2066782 Nil!57787)))

(assert (=> b!4998217 (= lt!2067125 call!348869)))

(declare-fun lt!2067104 () Unit!148947)

(declare-fun lt!2067127 () Unit!148947)

(assert (=> b!4998217 (= lt!2067104 lt!2067127)))

(assert (=> b!4998217 call!348872))

(assert (=> b!4998217 (= lt!2067127 call!348874)))

(assert (=> b!4998217 (= e!3123319 e!3123324)))

(declare-fun bm!348871 () Bool)

(assert (=> bm!348871 (= call!348871 (findLongestMatchInner!1958 call!348873 lt!2067114 (+ (size!38399 Nil!57787) 1) call!348876 lt!2066782 (size!38399 lt!2066782)))))

(declare-fun b!4998218 () Bool)

(assert (=> b!4998218 (= e!3123320 e!3123319)))

(declare-fun c!853036 () Bool)

(assert (=> b!4998218 (= c!853036 (= (size!38399 Nil!57787) (size!38399 lt!2066782)))))

(declare-fun b!4998219 () Bool)

(assert (=> b!4998219 (= e!3123326 (tuple2!62909 Nil!57787 lt!2066782))))

(declare-fun b!4998220 () Bool)

(assert (=> b!4998220 (= e!3123324 (tuple2!62909 Nil!57787 Nil!57787))))

(declare-fun b!4998221 () Bool)

(assert (=> b!4998221 (= e!3123320 (tuple2!62909 Nil!57787 lt!2066782))))

(assert (= (and d!1609173 c!853034) b!4998221))

(assert (= (and d!1609173 (not c!853034)) b!4998218))

(assert (= (and b!4998218 c!853036) b!4998217))

(assert (= (and b!4998218 (not c!853036)) b!4998211))

(assert (= (and b!4998217 c!853033) b!4998220))

(assert (= (and b!4998217 (not c!853033)) b!4998209))

(assert (= (and b!4998211 c!853035) b!4998214))

(assert (= (and b!4998211 (not c!853035)) b!4998215))

(assert (= (and b!4998211 c!853038) b!4998213))

(assert (= (and b!4998211 (not c!853038)) b!4998208))

(assert (= (and b!4998213 c!853037) b!4998219))

(assert (= (and b!4998213 (not c!853037)) b!4998212))

(assert (= (or b!4998213 b!4998208) bm!348865))

(assert (= (or b!4998213 b!4998208) bm!348867))

(assert (= (or b!4998213 b!4998208) bm!348868))

(assert (= (or b!4998213 b!4998208) bm!348871))

(assert (= (or b!4998217 b!4998211) bm!348869))

(assert (= (or b!4998217 b!4998214) bm!348866))

(assert (= (or b!4998217 b!4998214) bm!348864))

(assert (= (or b!4998217 b!4998214) bm!348870))

(assert (= (and d!1609173 res!2132837) b!4998210))

(assert (= (and b!4998210 (not res!2132838)) b!4998216))

(declare-fun m!6031354 () Bool)

(assert (=> b!4998210 m!6031354))

(declare-fun m!6031356 () Bool)

(assert (=> d!1609173 m!6031356))

(declare-fun m!6031358 () Bool)

(assert (=> d!1609173 m!6031358))

(declare-fun m!6031360 () Bool)

(assert (=> d!1609173 m!6031360))

(declare-fun m!6031362 () Bool)

(assert (=> d!1609173 m!6031362))

(declare-fun m!6031364 () Bool)

(assert (=> d!1609173 m!6031364))

(assert (=> d!1609173 m!6030794))

(declare-fun m!6031366 () Bool)

(assert (=> d!1609173 m!6031366))

(assert (=> d!1609173 m!6031356))

(declare-fun m!6031368 () Bool)

(assert (=> d!1609173 m!6031368))

(declare-fun m!6031370 () Bool)

(assert (=> bm!348868 m!6031370))

(assert (=> b!4998211 m!6031368))

(declare-fun m!6031372 () Bool)

(assert (=> b!4998211 m!6031372))

(declare-fun m!6031374 () Bool)

(assert (=> b!4998211 m!6031374))

(declare-fun m!6031376 () Bool)

(assert (=> b!4998211 m!6031376))

(declare-fun m!6031378 () Bool)

(assert (=> b!4998211 m!6031378))

(declare-fun m!6031380 () Bool)

(assert (=> b!4998211 m!6031380))

(declare-fun m!6031382 () Bool)

(assert (=> b!4998211 m!6031382))

(declare-fun m!6031384 () Bool)

(assert (=> b!4998211 m!6031384))

(declare-fun m!6031386 () Bool)

(assert (=> b!4998211 m!6031386))

(assert (=> b!4998211 m!6030834))

(declare-fun m!6031388 () Bool)

(assert (=> b!4998211 m!6031388))

(assert (=> b!4998211 m!6031384))

(declare-fun m!6031390 () Bool)

(assert (=> b!4998211 m!6031390))

(assert (=> b!4998211 m!6030826))

(assert (=> b!4998211 m!6031368))

(assert (=> b!4998211 m!6031378))

(declare-fun m!6031392 () Bool)

(assert (=> b!4998211 m!6031392))

(assert (=> bm!348871 m!6030834))

(declare-fun m!6031394 () Bool)

(assert (=> bm!348871 m!6031394))

(declare-fun m!6031396 () Bool)

(assert (=> bm!348864 m!6031396))

(declare-fun m!6031398 () Bool)

(assert (=> bm!348870 m!6031398))

(declare-fun m!6031400 () Bool)

(assert (=> b!4998216 m!6031400))

(assert (=> b!4998216 m!6030826))

(assert (=> bm!348869 m!6031284))

(assert (=> bm!348865 m!6031376))

(declare-fun m!6031402 () Bool)

(assert (=> bm!348866 m!6031402))

(declare-fun m!6031404 () Bool)

(assert (=> b!4998213 m!6031404))

(assert (=> bm!348867 m!6031380))

(assert (=> b!4997645 d!1609173))

(declare-fun d!1609185 () Bool)

(assert (=> d!1609185 (isPrefix!5322 (take!630 lt!2066789 lt!2066801) lt!2066789)))

(declare-fun lt!2067134 () Unit!148947)

(declare-fun choose!36944 (List!57911 Int) Unit!148947)

(assert (=> d!1609185 (= lt!2067134 (choose!36944 lt!2066789 lt!2066801))))

(assert (=> d!1609185 (>= lt!2066801 0)))

(assert (=> d!1609185 (= (lemmaTakeIsPrefix!124 lt!2066789 lt!2066801) lt!2067134)))

(declare-fun bs!1185619 () Bool)

(assert (= bs!1185619 d!1609185))

(assert (=> bs!1185619 m!6030828))

(assert (=> bs!1185619 m!6030828))

(assert (=> bs!1185619 m!6030830))

(declare-fun m!6031406 () Bool)

(assert (=> bs!1185619 m!6031406))

(assert (=> b!4997645 d!1609185))

(declare-fun d!1609187 () Bool)

(declare-fun c!853039 () Bool)

(assert (=> d!1609187 (= c!853039 (isEmpty!31272 lt!2066790))))

(declare-fun e!3123327 () Bool)

(assert (=> d!1609187 (= (matchZipper!541 z!4183 lt!2066790) e!3123327)))

(declare-fun b!4998222 () Bool)

(assert (=> b!4998222 (= e!3123327 (nullableZipper!872 z!4183))))

(declare-fun b!4998223 () Bool)

(assert (=> b!4998223 (= e!3123327 (matchZipper!541 (derivationStepZipper!621 z!4183 (head!10717 lt!2066790)) (tail!9850 lt!2066790)))))

(assert (= (and d!1609187 c!853039) b!4998222))

(assert (= (and d!1609187 (not c!853039)) b!4998223))

(assert (=> d!1609187 m!6031294))

(assert (=> b!4998222 m!6031314))

(assert (=> b!4998223 m!6031300))

(assert (=> b!4998223 m!6031300))

(declare-fun m!6031408 () Bool)

(assert (=> b!4998223 m!6031408))

(assert (=> b!4998223 m!6031296))

(assert (=> b!4998223 m!6031408))

(assert (=> b!4998223 m!6031296))

(declare-fun m!6031410 () Bool)

(assert (=> b!4998223 m!6031410))

(assert (=> b!4997645 d!1609187))

(declare-fun d!1609189 () Bool)

(declare-fun lt!2067135 () Int)

(assert (=> d!1609189 (>= lt!2067135 0)))

(declare-fun e!3123328 () Int)

(assert (=> d!1609189 (= lt!2067135 e!3123328)))

(declare-fun c!853040 () Bool)

(assert (=> d!1609189 (= c!853040 ((_ is Nil!57787) lt!2066782))))

(assert (=> d!1609189 (= (size!38399 lt!2066782) lt!2067135)))

(declare-fun b!4998224 () Bool)

(assert (=> b!4998224 (= e!3123328 0)))

(declare-fun b!4998225 () Bool)

(assert (=> b!4998225 (= e!3123328 (+ 1 (size!38399 (t!370251 lt!2066782))))))

(assert (= (and d!1609189 c!853040) b!4998224))

(assert (= (and d!1609189 (not c!853040)) b!4998225))

(declare-fun m!6031412 () Bool)

(assert (=> b!4998225 m!6031412))

(assert (=> b!4997645 d!1609189))

(declare-fun b!4998235 () Bool)

(declare-fun res!2132849 () Bool)

(declare-fun e!3123336 () Bool)

(assert (=> b!4998235 (=> (not res!2132849) (not e!3123336))))

(assert (=> b!4998235 (= res!2132849 (= (head!10717 (_1!34757 lt!2066786)) (head!10717 lt!2066798)))))

(declare-fun b!4998236 () Bool)

(assert (=> b!4998236 (= e!3123336 (isPrefix!5322 (tail!9850 (_1!34757 lt!2066786)) (tail!9850 lt!2066798)))))

(declare-fun b!4998234 () Bool)

(declare-fun e!3123337 () Bool)

(assert (=> b!4998234 (= e!3123337 e!3123336)))

(declare-fun res!2132850 () Bool)

(assert (=> b!4998234 (=> (not res!2132850) (not e!3123336))))

(assert (=> b!4998234 (= res!2132850 (not ((_ is Nil!57787) lt!2066798)))))

(declare-fun d!1609191 () Bool)

(declare-fun e!3123335 () Bool)

(assert (=> d!1609191 e!3123335))

(declare-fun res!2132848 () Bool)

(assert (=> d!1609191 (=> res!2132848 e!3123335)))

(declare-fun lt!2067138 () Bool)

(assert (=> d!1609191 (= res!2132848 (not lt!2067138))))

(assert (=> d!1609191 (= lt!2067138 e!3123337)))

(declare-fun res!2132847 () Bool)

(assert (=> d!1609191 (=> res!2132847 e!3123337)))

(assert (=> d!1609191 (= res!2132847 ((_ is Nil!57787) (_1!34757 lt!2066786)))))

(assert (=> d!1609191 (= (isPrefix!5322 (_1!34757 lt!2066786) lt!2066798) lt!2067138)))

(declare-fun b!4998237 () Bool)

(assert (=> b!4998237 (= e!3123335 (>= (size!38399 lt!2066798) (size!38399 (_1!34757 lt!2066786))))))

(assert (= (and d!1609191 (not res!2132847)) b!4998234))

(assert (= (and b!4998234 res!2132850) b!4998235))

(assert (= (and b!4998235 res!2132849) b!4998236))

(assert (= (and d!1609191 (not res!2132848)) b!4998237))

(assert (=> b!4998235 m!6031286))

(declare-fun m!6031414 () Bool)

(assert (=> b!4998235 m!6031414))

(assert (=> b!4998236 m!6031280))

(declare-fun m!6031416 () Bool)

(assert (=> b!4998236 m!6031416))

(assert (=> b!4998236 m!6031280))

(assert (=> b!4998236 m!6031416))

(declare-fun m!6031418 () Bool)

(assert (=> b!4998236 m!6031418))

(declare-fun m!6031420 () Bool)

(assert (=> b!4998237 m!6031420))

(assert (=> b!4998237 m!6030814))

(assert (=> b!4997645 d!1609191))

(declare-fun d!1609193 () Bool)

(declare-fun e!3123340 () Bool)

(assert (=> d!1609193 e!3123340))

(declare-fun res!2132853 () Bool)

(assert (=> d!1609193 (=> res!2132853 e!3123340)))

(assert (=> d!1609193 (= res!2132853 (isEmpty!31272 (_1!34757 (findLongestMatchInner!1958 r!12727 Nil!57787 (size!38399 Nil!57787) lt!2066782 lt!2066782 (size!38399 lt!2066782)))))))

(declare-fun lt!2067141 () Unit!148947)

(declare-fun choose!36946 (Regex!13769 List!57911) Unit!148947)

(assert (=> d!1609193 (= lt!2067141 (choose!36946 r!12727 lt!2066782))))

(assert (=> d!1609193 (validRegex!6066 r!12727)))

(assert (=> d!1609193 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1915 r!12727 lt!2066782) lt!2067141)))

(declare-fun b!4998240 () Bool)

(assert (=> b!4998240 (= e!3123340 (matchR!6737 r!12727 (_1!34757 (findLongestMatchInner!1958 r!12727 Nil!57787 (size!38399 Nil!57787) lt!2066782 lt!2066782 (size!38399 lt!2066782)))))))

(assert (= (and d!1609193 (not res!2132853)) b!4998240))

(assert (=> d!1609193 m!6030826))

(declare-fun m!6031422 () Bool)

(assert (=> d!1609193 m!6031422))

(declare-fun m!6031424 () Bool)

(assert (=> d!1609193 m!6031424))

(assert (=> d!1609193 m!6030794))

(assert (=> d!1609193 m!6030826))

(assert (=> d!1609193 m!6030834))

(assert (=> d!1609193 m!6030854))

(assert (=> d!1609193 m!6030834))

(assert (=> b!4998240 m!6030826))

(assert (=> b!4998240 m!6030834))

(assert (=> b!4998240 m!6030826))

(assert (=> b!4998240 m!6030834))

(assert (=> b!4998240 m!6030854))

(declare-fun m!6031426 () Bool)

(assert (=> b!4998240 m!6031426))

(assert (=> b!4997645 d!1609193))

(declare-fun d!1609195 () Bool)

(declare-fun lt!2067142 () Int)

(assert (=> d!1609195 (>= lt!2067142 0)))

(declare-fun e!3123341 () Int)

(assert (=> d!1609195 (= lt!2067142 e!3123341)))

(declare-fun c!853041 () Bool)

(assert (=> d!1609195 (= c!853041 ((_ is Nil!57787) Nil!57787))))

(assert (=> d!1609195 (= (size!38399 Nil!57787) lt!2067142)))

(declare-fun b!4998241 () Bool)

(assert (=> b!4998241 (= e!3123341 0)))

(declare-fun b!4998242 () Bool)

(assert (=> b!4998242 (= e!3123341 (+ 1 (size!38399 (t!370251 Nil!57787))))))

(assert (= (and d!1609195 c!853041) b!4998241))

(assert (= (and d!1609195 (not c!853041)) b!4998242))

(declare-fun m!6031428 () Bool)

(assert (=> b!4998242 m!6031428))

(assert (=> b!4997645 d!1609195))

(declare-fun b!4998244 () Bool)

(declare-fun res!2132856 () Bool)

(declare-fun e!3123343 () Bool)

(assert (=> b!4998244 (=> (not res!2132856) (not e!3123343))))

(assert (=> b!4998244 (= res!2132856 (= (head!10717 (take!630 lt!2066789 lt!2066801)) (head!10717 lt!2066789)))))

(declare-fun b!4998245 () Bool)

(assert (=> b!4998245 (= e!3123343 (isPrefix!5322 (tail!9850 (take!630 lt!2066789 lt!2066801)) (tail!9850 lt!2066789)))))

(declare-fun b!4998243 () Bool)

(declare-fun e!3123344 () Bool)

(assert (=> b!4998243 (= e!3123344 e!3123343)))

(declare-fun res!2132857 () Bool)

(assert (=> b!4998243 (=> (not res!2132857) (not e!3123343))))

(assert (=> b!4998243 (= res!2132857 (not ((_ is Nil!57787) lt!2066789)))))

(declare-fun d!1609197 () Bool)

(declare-fun e!3123342 () Bool)

(assert (=> d!1609197 e!3123342))

(declare-fun res!2132855 () Bool)

(assert (=> d!1609197 (=> res!2132855 e!3123342)))

(declare-fun lt!2067143 () Bool)

(assert (=> d!1609197 (= res!2132855 (not lt!2067143))))

(assert (=> d!1609197 (= lt!2067143 e!3123344)))

(declare-fun res!2132854 () Bool)

(assert (=> d!1609197 (=> res!2132854 e!3123344)))

(assert (=> d!1609197 (= res!2132854 ((_ is Nil!57787) (take!630 lt!2066789 lt!2066801)))))

(assert (=> d!1609197 (= (isPrefix!5322 (take!630 lt!2066789 lt!2066801) lt!2066789) lt!2067143)))

(declare-fun b!4998246 () Bool)

(assert (=> b!4998246 (= e!3123342 (>= (size!38399 lt!2066789) (size!38399 (take!630 lt!2066789 lt!2066801))))))

(assert (= (and d!1609197 (not res!2132854)) b!4998243))

(assert (= (and b!4998243 res!2132857) b!4998244))

(assert (= (and b!4998244 res!2132856) b!4998245))

(assert (= (and d!1609197 (not res!2132855)) b!4998246))

(assert (=> b!4998244 m!6030828))

(declare-fun m!6031430 () Bool)

(assert (=> b!4998244 m!6031430))

(declare-fun m!6031432 () Bool)

(assert (=> b!4998244 m!6031432))

(assert (=> b!4998245 m!6030828))

(declare-fun m!6031434 () Bool)

(assert (=> b!4998245 m!6031434))

(declare-fun m!6031436 () Bool)

(assert (=> b!4998245 m!6031436))

(assert (=> b!4998245 m!6031434))

(assert (=> b!4998245 m!6031436))

(declare-fun m!6031438 () Bool)

(assert (=> b!4998245 m!6031438))

(assert (=> b!4998246 m!6030910))

(assert (=> b!4998246 m!6030828))

(declare-fun m!6031440 () Bool)

(assert (=> b!4998246 m!6031440))

(assert (=> b!4997645 d!1609197))

(declare-fun b!4998263 () Bool)

(declare-fun e!3123355 () Bool)

(declare-fun lostCauseZipper!819 ((InoxSet Context!6388)) Bool)

(assert (=> b!4998263 (= e!3123355 (lostCauseZipper!819 z!4183))))

(declare-fun b!4998264 () Bool)

(declare-fun e!3123359 () Int)

(assert (=> b!4998264 (= e!3123359 1)))

(declare-fun b!4998265 () Bool)

(declare-fun e!3123356 () Bool)

(assert (=> b!4998265 (= e!3123356 (<= lt!2066801 (size!38398 totalInput!1012)))))

(declare-fun b!4998266 () Bool)

(declare-fun e!3123357 () Int)

(declare-fun lt!2067151 () Int)

(assert (=> b!4998266 (= e!3123357 (+ 1 lt!2067151))))

(declare-fun d!1609199 () Bool)

(declare-fun lt!2067152 () Int)

(assert (=> d!1609199 (and (>= lt!2067152 0) (<= lt!2067152 (- lt!2066783 lt!2066801)))))

(declare-fun e!3123358 () Int)

(assert (=> d!1609199 (= lt!2067152 e!3123358)))

(declare-fun c!853049 () Bool)

(assert (=> d!1609199 (= c!853049 e!3123355)))

(declare-fun res!2132863 () Bool)

(assert (=> d!1609199 (=> res!2132863 e!3123355)))

(assert (=> d!1609199 (= res!2132863 (= lt!2066801 lt!2066783))))

(assert (=> d!1609199 e!3123356))

(declare-fun res!2132862 () Bool)

(assert (=> d!1609199 (=> (not res!2132862) (not e!3123356))))

(assert (=> d!1609199 (= res!2132862 (>= lt!2066801 0))))

(assert (=> d!1609199 (= (findLongestMatchInnerZipperFastV2!109 z!4183 lt!2066801 totalInput!1012 lt!2066783) lt!2067152)))

(declare-fun b!4998267 () Bool)

(assert (=> b!4998267 (= e!3123359 0)))

(declare-fun b!4998268 () Bool)

(assert (=> b!4998268 (= e!3123358 e!3123357)))

(declare-fun lt!2067150 () (InoxSet Context!6388))

(declare-fun apply!13979 (BalanceConc!30006 Int) C!27788)

(assert (=> b!4998268 (= lt!2067150 (derivationStepZipper!621 z!4183 (apply!13979 totalInput!1012 lt!2066801)))))

(assert (=> b!4998268 (= lt!2067151 (findLongestMatchInnerZipperFastV2!109 lt!2067150 (+ lt!2066801 1) totalInput!1012 lt!2066783))))

(declare-fun c!853048 () Bool)

(assert (=> b!4998268 (= c!853048 (> lt!2067151 0))))

(declare-fun b!4998269 () Bool)

(declare-fun c!853050 () Bool)

(assert (=> b!4998269 (= c!853050 (nullableZipper!872 lt!2067150))))

(assert (=> b!4998269 (= e!3123357 e!3123359)))

(declare-fun b!4998270 () Bool)

(assert (=> b!4998270 (= e!3123358 0)))

(assert (= (and d!1609199 res!2132862) b!4998265))

(assert (= (and d!1609199 (not res!2132863)) b!4998263))

(assert (= (and d!1609199 c!853049) b!4998270))

(assert (= (and d!1609199 (not c!853049)) b!4998268))

(assert (= (and b!4998268 c!853048) b!4998266))

(assert (= (and b!4998268 (not c!853048)) b!4998269))

(assert (= (and b!4998269 c!853050) b!4998264))

(assert (= (and b!4998269 (not c!853050)) b!4998267))

(declare-fun m!6031442 () Bool)

(assert (=> b!4998263 m!6031442))

(assert (=> b!4998265 m!6030786))

(declare-fun m!6031444 () Bool)

(assert (=> b!4998268 m!6031444))

(assert (=> b!4998268 m!6031444))

(declare-fun m!6031446 () Bool)

(assert (=> b!4998268 m!6031446))

(declare-fun m!6031448 () Bool)

(assert (=> b!4998268 m!6031448))

(declare-fun m!6031450 () Bool)

(assert (=> b!4998269 m!6031450))

(assert (=> b!4997645 d!1609199))

(declare-fun d!1609201 () Bool)

(assert (=> d!1609201 (isPrefix!5322 (_1!34757 lt!2066786) (++!12615 (_1!34757 lt!2066786) (_2!34757 lt!2066786)))))

(declare-fun lt!2067153 () Unit!148947)

(assert (=> d!1609201 (= lt!2067153 (choose!36941 (_1!34757 lt!2066786) (_2!34757 lt!2066786)))))

(assert (=> d!1609201 (= (lemmaConcatTwoListThenFirstIsPrefix!3420 (_1!34757 lt!2066786) (_2!34757 lt!2066786)) lt!2067153)))

(declare-fun bs!1185620 () Bool)

(assert (= bs!1185620 d!1609201))

(assert (=> bs!1185620 m!6030812))

(assert (=> bs!1185620 m!6030812))

(declare-fun m!6031452 () Bool)

(assert (=> bs!1185620 m!6031452))

(declare-fun m!6031454 () Bool)

(assert (=> bs!1185620 m!6031454))

(assert (=> b!4997645 d!1609201))

(declare-fun d!1609203 () Bool)

(declare-fun e!3123365 () Bool)

(assert (=> d!1609203 e!3123365))

(declare-fun res!2132869 () Bool)

(assert (=> d!1609203 (=> res!2132869 e!3123365)))

(assert (=> d!1609203 (= res!2132869 (= (findLongestMatchInnerZipperFastV2!109 z!4183 lt!2066801 totalInput!1012 (size!38398 totalInput!1012)) 0))))

(declare-fun lt!2067156 () Unit!148947)

(declare-fun choose!36947 ((InoxSet Context!6388) Int BalanceConc!30006) Unit!148947)

(assert (=> d!1609203 (= lt!2067156 (choose!36947 z!4183 lt!2066801 totalInput!1012))))

(declare-fun e!3123364 () Bool)

(assert (=> d!1609203 e!3123364))

(declare-fun res!2132868 () Bool)

(assert (=> d!1609203 (=> (not res!2132868) (not e!3123364))))

(assert (=> d!1609203 (= res!2132868 (>= lt!2066801 0))))

(assert (=> d!1609203 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!32 z!4183 lt!2066801 totalInput!1012) lt!2067156)))

(declare-fun b!4998275 () Bool)

(assert (=> b!4998275 (= e!3123364 (<= lt!2066801 (size!38398 totalInput!1012)))))

(declare-fun b!4998276 () Bool)

(assert (=> b!4998276 (= e!3123365 (matchZipper!541 z!4183 (take!630 (drop!2432 (list!18582 totalInput!1012) lt!2066801) (findLongestMatchInnerZipperFastV2!109 z!4183 lt!2066801 totalInput!1012 (size!38398 totalInput!1012)))))))

(assert (= (and d!1609203 res!2132868) b!4998275))

(assert (= (and d!1609203 (not res!2132869)) b!4998276))

(assert (=> d!1609203 m!6030786))

(assert (=> d!1609203 m!6030786))

(declare-fun m!6031456 () Bool)

(assert (=> d!1609203 m!6031456))

(declare-fun m!6031458 () Bool)

(assert (=> d!1609203 m!6031458))

(assert (=> b!4998275 m!6030786))

(declare-fun m!6031460 () Bool)

(assert (=> b!4998276 m!6031460))

(assert (=> b!4998276 m!6031456))

(declare-fun m!6031462 () Bool)

(assert (=> b!4998276 m!6031462))

(assert (=> b!4998276 m!6030858))

(assert (=> b!4998276 m!6030786))

(assert (=> b!4998276 m!6030786))

(assert (=> b!4998276 m!6031456))

(assert (=> b!4998276 m!6030858))

(assert (=> b!4998276 m!6031460))

(assert (=> b!4998276 m!6031462))

(declare-fun m!6031464 () Bool)

(assert (=> b!4998276 m!6031464))

(assert (=> b!4997645 d!1609203))

(declare-fun b!4998277 () Bool)

(declare-fun e!3123366 () List!57911)

(assert (=> b!4998277 (= e!3123366 (Cons!57787 (h!64235 lt!2066789) (take!630 (t!370251 lt!2066789) (- lt!2066801 1))))))

(declare-fun b!4998278 () Bool)

(declare-fun e!3123368 () Int)

(assert (=> b!4998278 (= e!3123368 0)))

(declare-fun b!4998279 () Bool)

(declare-fun e!3123367 () Int)

(assert (=> b!4998279 (= e!3123368 e!3123367)))

(declare-fun c!853053 () Bool)

(assert (=> b!4998279 (= c!853053 (>= lt!2066801 (size!38399 lt!2066789)))))

(declare-fun b!4998280 () Bool)

(assert (=> b!4998280 (= e!3123366 Nil!57787)))

(declare-fun b!4998281 () Bool)

(assert (=> b!4998281 (= e!3123367 lt!2066801)))

(declare-fun b!4998282 () Bool)

(assert (=> b!4998282 (= e!3123367 (size!38399 lt!2066789))))

(declare-fun d!1609205 () Bool)

(declare-fun e!3123369 () Bool)

(assert (=> d!1609205 e!3123369))

(declare-fun res!2132870 () Bool)

(assert (=> d!1609205 (=> (not res!2132870) (not e!3123369))))

(declare-fun lt!2067157 () List!57911)

(assert (=> d!1609205 (= res!2132870 (= ((_ map implies) (content!10224 lt!2067157) (content!10224 lt!2066789)) ((as const (InoxSet C!27788)) true)))))

(assert (=> d!1609205 (= lt!2067157 e!3123366)))

(declare-fun c!853051 () Bool)

(assert (=> d!1609205 (= c!853051 (or ((_ is Nil!57787) lt!2066789) (<= lt!2066801 0)))))

(assert (=> d!1609205 (= (take!630 lt!2066789 lt!2066801) lt!2067157)))

(declare-fun b!4998283 () Bool)

(assert (=> b!4998283 (= e!3123369 (= (size!38399 lt!2067157) e!3123368))))

(declare-fun c!853052 () Bool)

(assert (=> b!4998283 (= c!853052 (<= lt!2066801 0))))

(assert (= (and d!1609205 c!853051) b!4998280))

(assert (= (and d!1609205 (not c!853051)) b!4998277))

(assert (= (and d!1609205 res!2132870) b!4998283))

(assert (= (and b!4998283 c!853052) b!4998278))

(assert (= (and b!4998283 (not c!853052)) b!4998279))

(assert (= (and b!4998279 c!853053) b!4998282))

(assert (= (and b!4998279 (not c!853053)) b!4998281))

(declare-fun m!6031466 () Bool)

(assert (=> b!4998277 m!6031466))

(declare-fun m!6031468 () Bool)

(assert (=> b!4998283 m!6031468))

(assert (=> b!4998282 m!6030910))

(declare-fun m!6031470 () Bool)

(assert (=> d!1609205 m!6031470))

(assert (=> d!1609205 m!6030914))

(assert (=> b!4998279 m!6030910))

(assert (=> b!4997645 d!1609205))

(declare-fun b!4998285 () Bool)

(declare-fun res!2132873 () Bool)

(declare-fun e!3123371 () Bool)

(assert (=> b!4998285 (=> (not res!2132873) (not e!3123371))))

(assert (=> b!4998285 (= res!2132873 (= (head!10717 lt!2066790) (head!10717 lt!2066791)))))

(declare-fun b!4998286 () Bool)

(assert (=> b!4998286 (= e!3123371 (isPrefix!5322 (tail!9850 lt!2066790) (tail!9850 lt!2066791)))))

(declare-fun b!4998284 () Bool)

(declare-fun e!3123372 () Bool)

(assert (=> b!4998284 (= e!3123372 e!3123371)))

(declare-fun res!2132874 () Bool)

(assert (=> b!4998284 (=> (not res!2132874) (not e!3123371))))

(assert (=> b!4998284 (= res!2132874 (not ((_ is Nil!57787) lt!2066791)))))

(declare-fun d!1609207 () Bool)

(declare-fun e!3123370 () Bool)

(assert (=> d!1609207 e!3123370))

(declare-fun res!2132872 () Bool)

(assert (=> d!1609207 (=> res!2132872 e!3123370)))

(declare-fun lt!2067158 () Bool)

(assert (=> d!1609207 (= res!2132872 (not lt!2067158))))

(assert (=> d!1609207 (= lt!2067158 e!3123372)))

(declare-fun res!2132871 () Bool)

(assert (=> d!1609207 (=> res!2132871 e!3123372)))

(assert (=> d!1609207 (= res!2132871 ((_ is Nil!57787) lt!2066790))))

(assert (=> d!1609207 (= (isPrefix!5322 lt!2066790 lt!2066791) lt!2067158)))

(declare-fun b!4998287 () Bool)

(assert (=> b!4998287 (= e!3123370 (>= (size!38399 lt!2066791) (size!38399 lt!2066790)))))

(assert (= (and d!1609207 (not res!2132871)) b!4998284))

(assert (= (and b!4998284 res!2132874) b!4998285))

(assert (= (and b!4998285 res!2132873) b!4998286))

(assert (= (and d!1609207 (not res!2132872)) b!4998287))

(assert (=> b!4998285 m!6031300))

(declare-fun m!6031472 () Bool)

(assert (=> b!4998285 m!6031472))

(assert (=> b!4998286 m!6031296))

(declare-fun m!6031474 () Bool)

(assert (=> b!4998286 m!6031474))

(assert (=> b!4998286 m!6031296))

(assert (=> b!4998286 m!6031474))

(declare-fun m!6031476 () Bool)

(assert (=> b!4998286 m!6031476))

(declare-fun m!6031478 () Bool)

(assert (=> b!4998287 m!6031478))

(assert (=> b!4998287 m!6030990))

(assert (=> b!4997645 d!1609207))

(declare-fun d!1609209 () Bool)

(declare-fun c!853054 () Bool)

(assert (=> d!1609209 (= c!853054 (isEmpty!31272 (take!630 (drop!2432 lt!2066789 lt!2066801) lt!2066796)))))

(declare-fun e!3123373 () Bool)

(assert (=> d!1609209 (= (matchZipper!541 z!4183 (take!630 (drop!2432 lt!2066789 lt!2066801) lt!2066796)) e!3123373)))

(declare-fun b!4998288 () Bool)

(assert (=> b!4998288 (= e!3123373 (nullableZipper!872 z!4183))))

(declare-fun b!4998289 () Bool)

(assert (=> b!4998289 (= e!3123373 (matchZipper!541 (derivationStepZipper!621 z!4183 (head!10717 (take!630 (drop!2432 lt!2066789 lt!2066801) lt!2066796))) (tail!9850 (take!630 (drop!2432 lt!2066789 lt!2066801) lt!2066796))))))

(assert (= (and d!1609209 c!853054) b!4998288))

(assert (= (and d!1609209 (not c!853054)) b!4998289))

(assert (=> d!1609209 m!6030774))

(declare-fun m!6031480 () Bool)

(assert (=> d!1609209 m!6031480))

(assert (=> b!4998288 m!6031314))

(assert (=> b!4998289 m!6030774))

(declare-fun m!6031482 () Bool)

(assert (=> b!4998289 m!6031482))

(assert (=> b!4998289 m!6031482))

(declare-fun m!6031484 () Bool)

(assert (=> b!4998289 m!6031484))

(assert (=> b!4998289 m!6030774))

(declare-fun m!6031486 () Bool)

(assert (=> b!4998289 m!6031486))

(assert (=> b!4998289 m!6031484))

(assert (=> b!4998289 m!6031486))

(declare-fun m!6031488 () Bool)

(assert (=> b!4998289 m!6031488))

(assert (=> b!4997635 d!1609209))

(declare-fun e!3123374 () List!57911)

(declare-fun b!4998290 () Bool)

(assert (=> b!4998290 (= e!3123374 (Cons!57787 (h!64235 (drop!2432 lt!2066789 lt!2066801)) (take!630 (t!370251 (drop!2432 lt!2066789 lt!2066801)) (- lt!2066796 1))))))

(declare-fun b!4998291 () Bool)

(declare-fun e!3123376 () Int)

(assert (=> b!4998291 (= e!3123376 0)))

(declare-fun b!4998292 () Bool)

(declare-fun e!3123375 () Int)

(assert (=> b!4998292 (= e!3123376 e!3123375)))

(declare-fun c!853057 () Bool)

(assert (=> b!4998292 (= c!853057 (>= lt!2066796 (size!38399 (drop!2432 lt!2066789 lt!2066801))))))

(declare-fun b!4998293 () Bool)

(assert (=> b!4998293 (= e!3123374 Nil!57787)))

(declare-fun b!4998294 () Bool)

(assert (=> b!4998294 (= e!3123375 lt!2066796)))

(declare-fun b!4998295 () Bool)

(assert (=> b!4998295 (= e!3123375 (size!38399 (drop!2432 lt!2066789 lt!2066801)))))

(declare-fun d!1609211 () Bool)

(declare-fun e!3123377 () Bool)

(assert (=> d!1609211 e!3123377))

(declare-fun res!2132875 () Bool)

(assert (=> d!1609211 (=> (not res!2132875) (not e!3123377))))

(declare-fun lt!2067159 () List!57911)

(assert (=> d!1609211 (= res!2132875 (= ((_ map implies) (content!10224 lt!2067159) (content!10224 (drop!2432 lt!2066789 lt!2066801))) ((as const (InoxSet C!27788)) true)))))

(assert (=> d!1609211 (= lt!2067159 e!3123374)))

(declare-fun c!853055 () Bool)

(assert (=> d!1609211 (= c!853055 (or ((_ is Nil!57787) (drop!2432 lt!2066789 lt!2066801)) (<= lt!2066796 0)))))

(assert (=> d!1609211 (= (take!630 (drop!2432 lt!2066789 lt!2066801) lt!2066796) lt!2067159)))

(declare-fun b!4998296 () Bool)

(assert (=> b!4998296 (= e!3123377 (= (size!38399 lt!2067159) e!3123376))))

(declare-fun c!853056 () Bool)

(assert (=> b!4998296 (= c!853056 (<= lt!2066796 0))))

(assert (= (and d!1609211 c!853055) b!4998293))

(assert (= (and d!1609211 (not c!853055)) b!4998290))

(assert (= (and d!1609211 res!2132875) b!4998296))

(assert (= (and b!4998296 c!853056) b!4998291))

(assert (= (and b!4998296 (not c!853056)) b!4998292))

(assert (= (and b!4998292 c!853057) b!4998295))

(assert (= (and b!4998292 (not c!853057)) b!4998294))

(declare-fun m!6031490 () Bool)

(assert (=> b!4998290 m!6031490))

(declare-fun m!6031492 () Bool)

(assert (=> b!4998296 m!6031492))

(assert (=> b!4998295 m!6030772))

(declare-fun m!6031494 () Bool)

(assert (=> b!4998295 m!6031494))

(declare-fun m!6031496 () Bool)

(assert (=> d!1609211 m!6031496))

(assert (=> d!1609211 m!6030772))

(declare-fun m!6031498 () Bool)

(assert (=> d!1609211 m!6031498))

(assert (=> b!4998292 m!6030772))

(assert (=> b!4998292 m!6031494))

(assert (=> b!4997635 d!1609211))

(assert (=> b!4997635 d!1609043))

(declare-fun d!1609213 () Bool)

(assert (=> d!1609213 (= (isEmpty!31272 (_1!34757 lt!2066786)) ((_ is Nil!57787) (_1!34757 lt!2066786)))))

(assert (=> b!4997632 d!1609213))

(declare-fun b!4998298 () Bool)

(declare-fun e!3123383 () Bool)

(declare-fun e!3123381 () Bool)

(assert (=> b!4998298 (= e!3123383 e!3123381)))

(declare-fun c!853058 () Bool)

(assert (=> b!4998298 (= c!853058 ((_ is EmptyLang!13769) r!12727))))

(declare-fun b!4998299 () Bool)

(declare-fun e!3123378 () Bool)

(assert (=> b!4998299 (= e!3123378 (nullable!4675 r!12727))))

(declare-fun b!4998300 () Bool)

(declare-fun res!2132883 () Bool)

(declare-fun e!3123384 () Bool)

(assert (=> b!4998300 (=> res!2132883 e!3123384)))

(declare-fun e!3123380 () Bool)

(assert (=> b!4998300 (= res!2132883 e!3123380)))

(declare-fun res!2132876 () Bool)

(assert (=> b!4998300 (=> (not res!2132876) (not e!3123380))))

(declare-fun lt!2067160 () Bool)

(assert (=> b!4998300 (= res!2132876 lt!2067160)))

(declare-fun bm!348872 () Bool)

(declare-fun call!348877 () Bool)

(assert (=> bm!348872 (= call!348877 (isEmpty!31272 (_1!34757 lt!2066803)))))

(declare-fun b!4998301 () Bool)

(declare-fun res!2132877 () Bool)

(assert (=> b!4998301 (=> (not res!2132877) (not e!3123380))))

(assert (=> b!4998301 (= res!2132877 (not call!348877))))

(declare-fun b!4998302 () Bool)

(declare-fun res!2132882 () Bool)

(declare-fun e!3123382 () Bool)

(assert (=> b!4998302 (=> res!2132882 e!3123382)))

(assert (=> b!4998302 (= res!2132882 (not (isEmpty!31272 (tail!9850 (_1!34757 lt!2066803)))))))

(declare-fun b!4998303 () Bool)

(assert (=> b!4998303 (= e!3123381 (not lt!2067160))))

(declare-fun b!4998304 () Bool)

(declare-fun res!2132880 () Bool)

(assert (=> b!4998304 (=> res!2132880 e!3123384)))

(assert (=> b!4998304 (= res!2132880 (not ((_ is ElementMatch!13769) r!12727)))))

(assert (=> b!4998304 (= e!3123381 e!3123384)))

(declare-fun b!4998305 () Bool)

(declare-fun e!3123379 () Bool)

(assert (=> b!4998305 (= e!3123379 e!3123382)))

(declare-fun res!2132879 () Bool)

(assert (=> b!4998305 (=> res!2132879 e!3123382)))

(assert (=> b!4998305 (= res!2132879 call!348877)))

(declare-fun b!4998306 () Bool)

(assert (=> b!4998306 (= e!3123378 (matchR!6737 (derivativeStep!3967 r!12727 (head!10717 (_1!34757 lt!2066803))) (tail!9850 (_1!34757 lt!2066803))))))

(declare-fun b!4998307 () Bool)

(declare-fun res!2132881 () Bool)

(assert (=> b!4998307 (=> (not res!2132881) (not e!3123380))))

(assert (=> b!4998307 (= res!2132881 (isEmpty!31272 (tail!9850 (_1!34757 lt!2066803))))))

(declare-fun b!4998308 () Bool)

(assert (=> b!4998308 (= e!3123382 (not (= (head!10717 (_1!34757 lt!2066803)) (c!852874 r!12727))))))

(declare-fun d!1609215 () Bool)

(assert (=> d!1609215 e!3123383))

(declare-fun c!853060 () Bool)

(assert (=> d!1609215 (= c!853060 ((_ is EmptyExpr!13769) r!12727))))

(assert (=> d!1609215 (= lt!2067160 e!3123378)))

(declare-fun c!853059 () Bool)

(assert (=> d!1609215 (= c!853059 (isEmpty!31272 (_1!34757 lt!2066803)))))

(assert (=> d!1609215 (validRegex!6066 r!12727)))

(assert (=> d!1609215 (= (matchR!6737 r!12727 (_1!34757 lt!2066803)) lt!2067160)))

(declare-fun b!4998297 () Bool)

(assert (=> b!4998297 (= e!3123380 (= (head!10717 (_1!34757 lt!2066803)) (c!852874 r!12727)))))

(declare-fun b!4998309 () Bool)

(assert (=> b!4998309 (= e!3123383 (= lt!2067160 call!348877))))

(declare-fun b!4998310 () Bool)

(assert (=> b!4998310 (= e!3123384 e!3123379)))

(declare-fun res!2132878 () Bool)

(assert (=> b!4998310 (=> (not res!2132878) (not e!3123379))))

(assert (=> b!4998310 (= res!2132878 (not lt!2067160))))

(assert (= (and d!1609215 c!853059) b!4998299))

(assert (= (and d!1609215 (not c!853059)) b!4998306))

(assert (= (and d!1609215 c!853060) b!4998309))

(assert (= (and d!1609215 (not c!853060)) b!4998298))

(assert (= (and b!4998298 c!853058) b!4998303))

(assert (= (and b!4998298 (not c!853058)) b!4998304))

(assert (= (and b!4998304 (not res!2132880)) b!4998300))

(assert (= (and b!4998300 res!2132876) b!4998301))

(assert (= (and b!4998301 res!2132877) b!4998307))

(assert (= (and b!4998307 res!2132881) b!4998297))

(assert (= (and b!4998300 (not res!2132883)) b!4998310))

(assert (= (and b!4998310 res!2132878) b!4998305))

(assert (= (and b!4998305 (not res!2132879)) b!4998302))

(assert (= (and b!4998302 (not res!2132882)) b!4998308))

(assert (= (or b!4998309 b!4998301 b!4998305) bm!348872))

(assert (=> bm!348872 m!6030850))

(assert (=> d!1609215 m!6030850))

(assert (=> d!1609215 m!6030794))

(declare-fun m!6031500 () Bool)

(assert (=> b!4998307 m!6031500))

(assert (=> b!4998307 m!6031500))

(declare-fun m!6031502 () Bool)

(assert (=> b!4998307 m!6031502))

(assert (=> b!4998302 m!6031500))

(assert (=> b!4998302 m!6031500))

(assert (=> b!4998302 m!6031502))

(assert (=> b!4998299 m!6031284))

(declare-fun m!6031504 () Bool)

(assert (=> b!4998297 m!6031504))

(assert (=> b!4998308 m!6031504))

(assert (=> b!4998306 m!6031504))

(assert (=> b!4998306 m!6031504))

(declare-fun m!6031506 () Bool)

(assert (=> b!4998306 m!6031506))

(assert (=> b!4998306 m!6031500))

(assert (=> b!4998306 m!6031506))

(assert (=> b!4998306 m!6031500))

(declare-fun m!6031508 () Bool)

(assert (=> b!4998306 m!6031508))

(assert (=> b!4997641 d!1609215))

(declare-fun d!1609217 () Bool)

(declare-fun lt!2067163 () Regex!13769)

(assert (=> d!1609217 (validRegex!6066 lt!2067163)))

(declare-fun generalisedUnion!569 (List!57912) Regex!13769)

(declare-fun unfocusZipperList!82 (List!57913) List!57912)

(assert (=> d!1609217 (= lt!2067163 (generalisedUnion!569 (unfocusZipperList!82 lt!2066793)))))

(assert (=> d!1609217 (= (unfocusZipper!296 lt!2066793) lt!2067163)))

(declare-fun bs!1185621 () Bool)

(assert (= bs!1185621 d!1609217))

(declare-fun m!6031510 () Bool)

(assert (=> bs!1185621 m!6031510))

(declare-fun m!6031512 () Bool)

(assert (=> bs!1185621 m!6031512))

(assert (=> bs!1185621 m!6031512))

(declare-fun m!6031514 () Bool)

(assert (=> bs!1185621 m!6031514))

(assert (=> b!4997631 d!1609217))

(declare-fun d!1609219 () Bool)

(declare-fun e!3123387 () Bool)

(assert (=> d!1609219 e!3123387))

(declare-fun res!2132886 () Bool)

(assert (=> d!1609219 (=> (not res!2132886) (not e!3123387))))

(declare-fun lt!2067166 () List!57913)

(declare-fun noDuplicate!1018 (List!57913) Bool)

(assert (=> d!1609219 (= res!2132886 (noDuplicate!1018 lt!2067166))))

(declare-fun choose!36948 ((InoxSet Context!6388)) List!57913)

(assert (=> d!1609219 (= lt!2067166 (choose!36948 z!4183))))

(assert (=> d!1609219 (= (toList!8054 z!4183) lt!2067166)))

(declare-fun b!4998313 () Bool)

(declare-fun content!10226 (List!57913) (InoxSet Context!6388))

(assert (=> b!4998313 (= e!3123387 (= (content!10226 lt!2067166) z!4183))))

(assert (= (and d!1609219 res!2132886) b!4998313))

(declare-fun m!6031516 () Bool)

(assert (=> d!1609219 m!6031516))

(declare-fun m!6031518 () Bool)

(assert (=> d!1609219 m!6031518))

(declare-fun m!6031520 () Bool)

(assert (=> b!4998313 m!6031520))

(assert (=> b!4997631 d!1609219))

(declare-fun d!1609221 () Bool)

(declare-fun e!3123390 () Bool)

(assert (=> d!1609221 e!3123390))

(declare-fun res!2132889 () Bool)

(assert (=> d!1609221 (=> res!2132889 e!3123390)))

(declare-fun lt!2067169 () Bool)

(assert (=> d!1609221 (= res!2132889 (not lt!2067169))))

(assert (=> d!1609221 (= lt!2067169 (= lt!2066782 (drop!2432 lt!2066789 (- (size!38399 lt!2066789) (size!38399 lt!2066782)))))))

(assert (=> d!1609221 (= (isSuffix!1335 lt!2066782 lt!2066789) lt!2067169)))

(declare-fun b!4998316 () Bool)

(assert (=> b!4998316 (= e!3123390 (>= (size!38399 lt!2066789) (size!38399 lt!2066782)))))

(assert (= (and d!1609221 (not res!2132889)) b!4998316))

(assert (=> d!1609221 m!6030910))

(assert (=> d!1609221 m!6030834))

(declare-fun m!6031522 () Bool)

(assert (=> d!1609221 m!6031522))

(assert (=> b!4998316 m!6030910))

(assert (=> b!4998316 m!6030834))

(assert (=> b!4997643 d!1609221))

(declare-fun d!1609223 () Bool)

(assert (=> d!1609223 (= (list!18582 totalInput!1012) (list!18584 (c!852873 totalInput!1012)))))

(declare-fun bs!1185622 () Bool)

(assert (= bs!1185622 d!1609223))

(declare-fun m!6031524 () Bool)

(assert (=> bs!1185622 m!6031524))

(assert (=> b!4997643 d!1609223))

(declare-fun d!1609225 () Bool)

(assert (=> d!1609225 (= (list!18582 input!5597) (list!18584 (c!852873 input!5597)))))

(declare-fun bs!1185623 () Bool)

(assert (= bs!1185623 d!1609225))

(declare-fun m!6031526 () Bool)

(assert (=> bs!1185623 m!6031526))

(assert (=> b!4997643 d!1609225))

(declare-fun d!1609227 () Bool)

(declare-fun lt!2067172 () Bool)

(assert (=> d!1609227 (= lt!2067172 (isEmpty!31272 (list!18582 (_1!34758 lt!2066781))))))

(declare-fun isEmpty!31275 (Conc!15288) Bool)

(assert (=> d!1609227 (= lt!2067172 (isEmpty!31275 (c!852873 (_1!34758 lt!2066781))))))

(assert (=> d!1609227 (= (isEmpty!31273 (_1!34758 lt!2066781)) lt!2067172)))

(declare-fun bs!1185624 () Bool)

(assert (= bs!1185624 d!1609227))

(assert (=> bs!1185624 m!6030790))

(assert (=> bs!1185624 m!6030790))

(declare-fun m!6031528 () Bool)

(assert (=> bs!1185624 m!6031528))

(declare-fun m!6031530 () Bool)

(assert (=> bs!1185624 m!6031530))

(assert (=> b!4997642 d!1609227))

(declare-fun b!4998329 () Bool)

(declare-fun e!3123393 () Bool)

(declare-fun tp!1401726 () Bool)

(assert (=> b!4998329 (= e!3123393 tp!1401726)))

(assert (=> b!4997634 (= tp!1401651 e!3123393)))

(declare-fun b!4998327 () Bool)

(assert (=> b!4998327 (= e!3123393 tp_is_empty!36535)))

(declare-fun b!4998328 () Bool)

(declare-fun tp!1401723 () Bool)

(declare-fun tp!1401725 () Bool)

(assert (=> b!4998328 (= e!3123393 (and tp!1401723 tp!1401725))))

(declare-fun b!4998330 () Bool)

(declare-fun tp!1401722 () Bool)

(declare-fun tp!1401724 () Bool)

(assert (=> b!4998330 (= e!3123393 (and tp!1401722 tp!1401724))))

(assert (= (and b!4997634 ((_ is ElementMatch!13769) (reg!14098 r!12727))) b!4998327))

(assert (= (and b!4997634 ((_ is Concat!22562) (reg!14098 r!12727))) b!4998328))

(assert (= (and b!4997634 ((_ is Star!13769) (reg!14098 r!12727))) b!4998329))

(assert (= (and b!4997634 ((_ is Union!13769) (reg!14098 r!12727))) b!4998330))

(declare-fun tp!1401733 () Bool)

(declare-fun tp!1401734 () Bool)

(declare-fun b!4998339 () Bool)

(declare-fun e!3123398 () Bool)

(assert (=> b!4998339 (= e!3123398 (and (inv!75871 (left!42266 (c!852873 input!5597))) tp!1401734 (inv!75871 (right!42596 (c!852873 input!5597))) tp!1401733))))

(declare-fun b!4998341 () Bool)

(declare-fun e!3123399 () Bool)

(declare-fun tp!1401735 () Bool)

(assert (=> b!4998341 (= e!3123399 tp!1401735)))

(declare-fun b!4998340 () Bool)

(declare-fun inv!75879 (IArray!30637) Bool)

(assert (=> b!4998340 (= e!3123398 (and (inv!75879 (xs!18614 (c!852873 input!5597))) e!3123399))))

(assert (=> b!4997638 (= tp!1401644 (and (inv!75871 (c!852873 input!5597)) e!3123398))))

(assert (= (and b!4997638 ((_ is Node!15288) (c!852873 input!5597))) b!4998339))

(assert (= b!4998340 b!4998341))

(assert (= (and b!4997638 ((_ is Leaf!25381) (c!852873 input!5597))) b!4998340))

(declare-fun m!6031532 () Bool)

(assert (=> b!4998339 m!6031532))

(declare-fun m!6031534 () Bool)

(assert (=> b!4998339 m!6031534))

(declare-fun m!6031536 () Bool)

(assert (=> b!4998340 m!6031536))

(assert (=> b!4997638 m!6030806))

(declare-fun b!4998344 () Bool)

(declare-fun e!3123400 () Bool)

(declare-fun tp!1401740 () Bool)

(assert (=> b!4998344 (= e!3123400 tp!1401740)))

(assert (=> b!4997640 (= tp!1401648 e!3123400)))

(declare-fun b!4998342 () Bool)

(assert (=> b!4998342 (= e!3123400 tp_is_empty!36535)))

(declare-fun b!4998343 () Bool)

(declare-fun tp!1401737 () Bool)

(declare-fun tp!1401739 () Bool)

(assert (=> b!4998343 (= e!3123400 (and tp!1401737 tp!1401739))))

(declare-fun b!4998345 () Bool)

(declare-fun tp!1401736 () Bool)

(declare-fun tp!1401738 () Bool)

(assert (=> b!4998345 (= e!3123400 (and tp!1401736 tp!1401738))))

(assert (= (and b!4997640 ((_ is ElementMatch!13769) (regOne!28050 r!12727))) b!4998342))

(assert (= (and b!4997640 ((_ is Concat!22562) (regOne!28050 r!12727))) b!4998343))

(assert (= (and b!4997640 ((_ is Star!13769) (regOne!28050 r!12727))) b!4998344))

(assert (= (and b!4997640 ((_ is Union!13769) (regOne!28050 r!12727))) b!4998345))

(declare-fun b!4998348 () Bool)

(declare-fun e!3123401 () Bool)

(declare-fun tp!1401745 () Bool)

(assert (=> b!4998348 (= e!3123401 tp!1401745)))

(assert (=> b!4997640 (= tp!1401645 e!3123401)))

(declare-fun b!4998346 () Bool)

(assert (=> b!4998346 (= e!3123401 tp_is_empty!36535)))

(declare-fun b!4998347 () Bool)

(declare-fun tp!1401742 () Bool)

(declare-fun tp!1401744 () Bool)

(assert (=> b!4998347 (= e!3123401 (and tp!1401742 tp!1401744))))

(declare-fun b!4998349 () Bool)

(declare-fun tp!1401741 () Bool)

(declare-fun tp!1401743 () Bool)

(assert (=> b!4998349 (= e!3123401 (and tp!1401741 tp!1401743))))

(assert (= (and b!4997640 ((_ is ElementMatch!13769) (regTwo!28050 r!12727))) b!4998346))

(assert (= (and b!4997640 ((_ is Concat!22562) (regTwo!28050 r!12727))) b!4998347))

(assert (= (and b!4997640 ((_ is Star!13769) (regTwo!28050 r!12727))) b!4998348))

(assert (= (and b!4997640 ((_ is Union!13769) (regTwo!28050 r!12727))) b!4998349))

(declare-fun tp!1401747 () Bool)

(declare-fun b!4998350 () Bool)

(declare-fun tp!1401746 () Bool)

(declare-fun e!3123402 () Bool)

(assert (=> b!4998350 (= e!3123402 (and (inv!75871 (left!42266 (c!852873 totalInput!1012))) tp!1401747 (inv!75871 (right!42596 (c!852873 totalInput!1012))) tp!1401746))))

(declare-fun b!4998352 () Bool)

(declare-fun e!3123403 () Bool)

(declare-fun tp!1401748 () Bool)

(assert (=> b!4998352 (= e!3123403 tp!1401748)))

(declare-fun b!4998351 () Bool)

(assert (=> b!4998351 (= e!3123402 (and (inv!75879 (xs!18614 (c!852873 totalInput!1012))) e!3123403))))

(assert (=> b!4997630 (= tp!1401652 (and (inv!75871 (c!852873 totalInput!1012)) e!3123402))))

(assert (= (and b!4997630 ((_ is Node!15288) (c!852873 totalInput!1012))) b!4998350))

(assert (= b!4998351 b!4998352))

(assert (= (and b!4997630 ((_ is Leaf!25381) (c!852873 totalInput!1012))) b!4998351))

(declare-fun m!6031538 () Bool)

(assert (=> b!4998350 m!6031538))

(declare-fun m!6031540 () Bool)

(assert (=> b!4998350 m!6031540))

(declare-fun m!6031542 () Bool)

(assert (=> b!4998351 m!6031542))

(assert (=> b!4997630 m!6030802))

(declare-fun b!4998355 () Bool)

(declare-fun e!3123404 () Bool)

(declare-fun tp!1401753 () Bool)

(assert (=> b!4998355 (= e!3123404 tp!1401753)))

(assert (=> b!4997637 (= tp!1401646 e!3123404)))

(declare-fun b!4998353 () Bool)

(assert (=> b!4998353 (= e!3123404 tp_is_empty!36535)))

(declare-fun b!4998354 () Bool)

(declare-fun tp!1401750 () Bool)

(declare-fun tp!1401752 () Bool)

(assert (=> b!4998354 (= e!3123404 (and tp!1401750 tp!1401752))))

(declare-fun b!4998356 () Bool)

(declare-fun tp!1401749 () Bool)

(declare-fun tp!1401751 () Bool)

(assert (=> b!4998356 (= e!3123404 (and tp!1401749 tp!1401751))))

(assert (= (and b!4997637 ((_ is ElementMatch!13769) (regOne!28051 r!12727))) b!4998353))

(assert (= (and b!4997637 ((_ is Concat!22562) (regOne!28051 r!12727))) b!4998354))

(assert (= (and b!4997637 ((_ is Star!13769) (regOne!28051 r!12727))) b!4998355))

(assert (= (and b!4997637 ((_ is Union!13769) (regOne!28051 r!12727))) b!4998356))

(declare-fun b!4998359 () Bool)

(declare-fun e!3123405 () Bool)

(declare-fun tp!1401758 () Bool)

(assert (=> b!4998359 (= e!3123405 tp!1401758)))

(assert (=> b!4997637 (= tp!1401650 e!3123405)))

(declare-fun b!4998357 () Bool)

(assert (=> b!4998357 (= e!3123405 tp_is_empty!36535)))

(declare-fun b!4998358 () Bool)

(declare-fun tp!1401755 () Bool)

(declare-fun tp!1401757 () Bool)

(assert (=> b!4998358 (= e!3123405 (and tp!1401755 tp!1401757))))

(declare-fun b!4998360 () Bool)

(declare-fun tp!1401754 () Bool)

(declare-fun tp!1401756 () Bool)

(assert (=> b!4998360 (= e!3123405 (and tp!1401754 tp!1401756))))

(assert (= (and b!4997637 ((_ is ElementMatch!13769) (regTwo!28051 r!12727))) b!4998357))

(assert (= (and b!4997637 ((_ is Concat!22562) (regTwo!28051 r!12727))) b!4998358))

(assert (= (and b!4997637 ((_ is Star!13769) (regTwo!28051 r!12727))) b!4998359))

(assert (= (and b!4997637 ((_ is Union!13769) (regTwo!28051 r!12727))) b!4998360))

(declare-fun b!4998365 () Bool)

(declare-fun e!3123408 () Bool)

(declare-fun tp!1401763 () Bool)

(declare-fun tp!1401764 () Bool)

(assert (=> b!4998365 (= e!3123408 (and tp!1401763 tp!1401764))))

(assert (=> b!4997633 (= tp!1401647 e!3123408)))

(assert (= (and b!4997633 ((_ is Cons!57788) (exprs!3694 setElem!28290))) b!4998365))

(declare-fun condSetEmpty!28296 () Bool)

(assert (=> setNonEmpty!28290 (= condSetEmpty!28296 (= setRest!28290 ((as const (Array Context!6388 Bool)) false)))))

(declare-fun setRes!28296 () Bool)

(assert (=> setNonEmpty!28290 (= tp!1401649 setRes!28296)))

(declare-fun setIsEmpty!28296 () Bool)

(assert (=> setIsEmpty!28296 setRes!28296))

(declare-fun setElem!28296 () Context!6388)

(declare-fun e!3123411 () Bool)

(declare-fun tp!1401769 () Bool)

(declare-fun setNonEmpty!28296 () Bool)

(assert (=> setNonEmpty!28296 (= setRes!28296 (and tp!1401769 (inv!75873 setElem!28296) e!3123411))))

(declare-fun setRest!28296 () (InoxSet Context!6388))

(assert (=> setNonEmpty!28296 (= setRest!28290 ((_ map or) (store ((as const (Array Context!6388 Bool)) false) setElem!28296 true) setRest!28296))))

(declare-fun b!4998370 () Bool)

(declare-fun tp!1401770 () Bool)

(assert (=> b!4998370 (= e!3123411 tp!1401770)))

(assert (= (and setNonEmpty!28290 condSetEmpty!28296) setIsEmpty!28296))

(assert (= (and setNonEmpty!28290 (not condSetEmpty!28296)) setNonEmpty!28296))

(assert (= setNonEmpty!28296 b!4998370))

(declare-fun m!6031544 () Bool)

(assert (=> setNonEmpty!28296 m!6031544))

(check-sat (not b!4998094) (not b!4998351) (not d!1609113) (not b!4998282) (not d!1609163) (not b!4997661) (not b!4998283) (not d!1609185) (not b!4998235) (not d!1609073) (not b!4998216) (not b!4998313) (not bm!348793) (not b!4998308) (not b!4998360) (not b!4998330) (not d!1609223) (not b!4998242) (not b!4998080) (not d!1609221) (not b!4998240) (not bm!348868) (not b!4998307) (not b!4997663) (not d!1609205) (not b!4998096) (not d!1609087) (not b!4997638) (not b!4998356) (not b!4998089) (not bm!348867) (not d!1609159) (not b!4997840) (not b!4998352) (not bm!348809) (not d!1609211) (not b!4998210) (not b!4998295) (not b!4998350) (not b!4997667) (not bm!348871) (not b!4998316) (not b!4998286) (not b!4997979) (not b!4998339) (not b!4998246) (not d!1609203) (not b!4998302) (not b!4997713) (not b!4998223) (not d!1609201) (not d!1609089) (not b!4997839) (not b!4998211) (not b!4998328) (not b!4998344) (not b!4998355) (not b!4998225) (not b!4998297) (not d!1609225) (not b!4998290) (not b!4998365) (not b!4998279) (not bm!348869) (not d!1609219) (not b!4998222) (not b!4998104) (not b!4998085) (not d!1609131) (not d!1609037) (not b!4998296) (not b!4998287) (not bm!348847) (not d!1609169) (not b!4998277) (not b!4998103) (not b!4997630) (not b!4998329) (not b!4998370) (not b!4998306) (not bm!348870) (not b!4998349) (not b!4998268) (not b!4997791) (not b!4998276) (not b!4998275) (not b!4998118) (not setNonEmpty!28296) (not b!4997980) (not b!4997769) (not d!1609155) (not b!4998341) (not b!4998090) (not b!4998348) (not b!4998119) (not b!4998245) (not d!1609165) (not b!4998105) (not b!4998263) (not bm!348811) (not b!4998289) (not bm!348846) (not b!4998269) (not b!4998288) (not d!1609129) (not b!4998265) (not bm!348872) (not b!4998236) (not d!1609215) (not b!4998359) (not d!1609193) (not b!4997706) (not d!1609167) (not d!1609217) (not b!4998343) (not d!1609077) (not b!4998237) (not b!4997666) (not bm!348866) (not b!4997793) (not b!4998299) (not d!1609085) (not b!4998213) (not d!1609209) (not d!1609187) (not b!4998340) (not d!1609173) (not b!4998082) (not d!1609227) (not d!1609083) (not b!4998358) (not bm!348865) (not b!4998345) (not b!4998099) (not d!1609043) (not b!4998354) (not b!4998091) (not b!4998285) (not d!1609157) (not b!4997715) (not b!4998292) (not b!4998244) (not b!4998113) (not b!4997699) (not d!1609127) (not bm!348864) tp_is_empty!36535 (not d!1609069) (not b!4998347))
(check-sat)
