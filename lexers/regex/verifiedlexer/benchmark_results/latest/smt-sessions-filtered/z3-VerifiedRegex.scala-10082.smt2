; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527454 () Bool)

(assert start!527454)

(declare-fun e!3118963 () Bool)

(declare-datatypes ((C!27748 0))(
  ( (C!27749 (val!23240 Int)) )
))
(declare-datatypes ((List!57851 0))(
  ( (Nil!57727) (Cons!57727 (h!64175 C!27748) (t!370177 List!57851)) )
))
(declare-fun lt!2063767 () List!57851)

(declare-fun lt!2063785 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13749 0))(
  ( (ElementMatch!13749 (c!851363 C!27748)) (Concat!22542 (regOne!28010 Regex!13749) (regTwo!28010 Regex!13749)) (EmptyExpr!13749) (Star!13749 (reg!14078 Regex!13749)) (EmptyLang!13749) (Union!13749 (regOne!28011 Regex!13749) (regTwo!28011 Regex!13749)) )
))
(declare-datatypes ((List!57852 0))(
  ( (Nil!57728) (Cons!57728 (h!64176 Regex!13749) (t!370178 List!57852)) )
))
(declare-datatypes ((Context!6348 0))(
  ( (Context!6349 (exprs!3674 List!57852)) )
))
(declare-fun z!4183 () (InoxSet Context!6348))

(declare-fun b!4990310 () Bool)

(declare-fun lt!2063786 () Int)

(declare-fun matchZipper!525 ((InoxSet Context!6348) List!57851) Bool)

(declare-fun take!614 (List!57851 Int) List!57851)

(declare-fun drop!2412 (List!57851 Int) List!57851)

(assert (=> b!4990310 (= e!3118963 (matchZipper!525 z!4183 (take!614 (drop!2412 lt!2063767 lt!2063786) lt!2063785)))))

(declare-fun b!4990311 () Bool)

(declare-fun e!3118957 () Bool)

(declare-fun tp!1398911 () Bool)

(declare-fun tp!1398908 () Bool)

(assert (=> b!4990311 (= e!3118957 (and tp!1398911 tp!1398908))))

(declare-fun b!4990312 () Bool)

(declare-fun e!3118961 () Bool)

(declare-fun e!3118962 () Bool)

(assert (=> b!4990312 (= e!3118961 e!3118962)))

(declare-fun res!2130445 () Bool)

(assert (=> b!4990312 (=> res!2130445 e!3118962)))

(declare-fun lt!2063784 () List!57851)

(declare-fun lt!2063758 () List!57851)

(assert (=> b!4990312 (= res!2130445 (not (= lt!2063784 lt!2063758)))))

(declare-fun lt!2063765 () List!57851)

(declare-fun lt!2063761 () Int)

(assert (=> b!4990312 (= lt!2063765 (take!614 lt!2063784 lt!2063761))))

(assert (=> b!4990312 (= lt!2063784 (drop!2412 lt!2063767 lt!2063786))))

(declare-fun b!4990313 () Bool)

(declare-fun e!3118952 () Bool)

(declare-fun e!3118959 () Bool)

(assert (=> b!4990313 (= e!3118952 e!3118959)))

(declare-fun res!2130455 () Bool)

(assert (=> b!4990313 (=> (not res!2130455) (not e!3118959))))

(declare-fun isSuffix!1315 (List!57851 List!57851) Bool)

(assert (=> b!4990313 (= res!2130455 (isSuffix!1315 lt!2063758 lt!2063767))))

(declare-datatypes ((IArray!30597 0))(
  ( (IArray!30598 (innerList!15356 List!57851)) )
))
(declare-datatypes ((Conc!15268 0))(
  ( (Node!15268 (left!42232 Conc!15268) (right!42562 Conc!15268) (csize!30766 Int) (cheight!15479 Int)) (Leaf!25351 (xs!18594 IArray!30597) (csize!30767 Int)) (Empty!15268) )
))
(declare-datatypes ((BalanceConc!29966 0))(
  ( (BalanceConc!29967 (c!851364 Conc!15268)) )
))
(declare-fun totalInput!1012 () BalanceConc!29966)

(declare-fun list!18552 (BalanceConc!29966) List!57851)

(assert (=> b!4990313 (= lt!2063767 (list!18552 totalInput!1012))))

(declare-fun input!5597 () BalanceConc!29966)

(assert (=> b!4990313 (= lt!2063758 (list!18552 input!5597))))

(declare-fun b!4990314 () Bool)

(declare-fun e!3118958 () Bool)

(assert (=> b!4990314 (= e!3118958 e!3118961)))

(declare-fun res!2130453 () Bool)

(assert (=> b!4990314 (=> res!2130453 e!3118961)))

(declare-datatypes ((tuple2!62824 0))(
  ( (tuple2!62825 (_1!34715 BalanceConc!29966) (_2!34715 BalanceConc!29966)) )
))
(declare-fun lt!2063759 () tuple2!62824)

(declare-fun size!38350 (BalanceConc!29966) Int)

(assert (=> b!4990314 (= res!2130453 (<= lt!2063761 (size!38350 (_1!34715 lt!2063759))))))

(declare-datatypes ((tuple2!62826 0))(
  ( (tuple2!62827 (_1!34716 List!57851) (_2!34716 List!57851)) )
))
(declare-fun lt!2063769 () tuple2!62826)

(declare-fun size!38351 (List!57851) Int)

(assert (=> b!4990314 (= lt!2063761 (size!38351 (_1!34716 lt!2063769)))))

(declare-fun r!12727 () Regex!13749)

(declare-fun lt!2063772 () List!57851)

(declare-fun lt!2063775 () Bool)

(declare-fun matchR!6721 (Regex!13749 List!57851) Bool)

(assert (=> b!4990314 (= (matchR!6721 r!12727 lt!2063772) lt!2063775)))

(declare-datatypes ((List!57853 0))(
  ( (Nil!57729) (Cons!57729 (h!64177 Context!6348) (t!370179 List!57853)) )
))
(declare-fun lt!2063779 () List!57853)

(declare-datatypes ((Unit!148863 0))(
  ( (Unit!148864) )
))
(declare-fun lt!2063762 () Unit!148863)

(declare-fun theoremZipperRegexEquiv!135 ((InoxSet Context!6348) List!57853 Regex!13749 List!57851) Unit!148863)

(assert (=> b!4990314 (= lt!2063762 (theoremZipperRegexEquiv!135 z!4183 lt!2063779 r!12727 lt!2063772))))

(declare-fun lt!2063773 () Bool)

(assert (=> b!4990314 (= lt!2063773 (matchZipper!525 z!4183 (_1!34716 lt!2063769)))))

(declare-fun lt!2063781 () Unit!148863)

(assert (=> b!4990314 (= lt!2063781 (theoremZipperRegexEquiv!135 z!4183 lt!2063779 r!12727 (_1!34716 lt!2063769)))))

(declare-fun b!4990315 () Bool)

(declare-fun e!3118960 () Bool)

(declare-fun e!3118954 () Bool)

(assert (=> b!4990315 (= e!3118960 (not e!3118954))))

(declare-fun res!2130454 () Bool)

(assert (=> b!4990315 (=> res!2130454 e!3118954)))

(declare-fun e!3118966 () Bool)

(assert (=> b!4990315 (= res!2130454 e!3118966)))

(declare-fun res!2130451 () Bool)

(assert (=> b!4990315 (=> (not res!2130451) (not e!3118966))))

(assert (=> b!4990315 (= res!2130451 (not lt!2063775))))

(assert (=> b!4990315 (= lt!2063775 (matchZipper!525 z!4183 lt!2063772))))

(declare-fun e!3118956 () Bool)

(assert (=> b!4990315 e!3118956))

(declare-fun res!2130449 () Bool)

(assert (=> b!4990315 (=> res!2130449 e!3118956)))

(declare-fun lt!2063774 () tuple2!62826)

(declare-fun isEmpty!31232 (List!57851) Bool)

(assert (=> b!4990315 (= res!2130449 (isEmpty!31232 (_1!34716 lt!2063774)))))

(declare-fun findLongestMatchInner!1938 (Regex!13749 List!57851 Int List!57851 List!57851 Int) tuple2!62826)

(assert (=> b!4990315 (= lt!2063774 (findLongestMatchInner!1938 r!12727 Nil!57727 (size!38351 Nil!57727) lt!2063758 lt!2063758 (size!38351 lt!2063758)))))

(declare-fun lt!2063776 () Unit!148863)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1899 (Regex!13749 List!57851) Unit!148863)

(assert (=> b!4990315 (= lt!2063776 (longestMatchIsAcceptedByMatchOrIsEmpty!1899 r!12727 lt!2063758))))

(assert (=> b!4990315 e!3118963))

(declare-fun res!2130452 () Bool)

(assert (=> b!4990315 (=> res!2130452 e!3118963)))

(assert (=> b!4990315 (= res!2130452 (= lt!2063785 0))))

(declare-fun lt!2063766 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!89 ((InoxSet Context!6348) Int BalanceConc!29966 Int) Int)

(assert (=> b!4990315 (= lt!2063785 (findLongestMatchInnerZipperFastV2!89 z!4183 lt!2063786 totalInput!1012 lt!2063766))))

(declare-fun lt!2063780 () Unit!148863)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!16 ((InoxSet Context!6348) Int BalanceConc!29966) Unit!148863)

(assert (=> b!4990315 (= lt!2063780 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!16 z!4183 lt!2063786 totalInput!1012))))

(declare-fun isPrefix!5306 (List!57851 List!57851) Bool)

(assert (=> b!4990315 (isPrefix!5306 (take!614 lt!2063767 lt!2063786) lt!2063767)))

(declare-fun lt!2063770 () Unit!148863)

(declare-fun lemmaTakeIsPrefix!108 (List!57851 Int) Unit!148863)

(assert (=> b!4990315 (= lt!2063770 (lemmaTakeIsPrefix!108 lt!2063767 lt!2063786))))

(declare-fun lt!2063783 () List!57851)

(assert (=> b!4990315 (isPrefix!5306 (_1!34716 lt!2063769) lt!2063783)))

(declare-fun lt!2063763 () Unit!148863)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3404 (List!57851 List!57851) Unit!148863)

(assert (=> b!4990315 (= lt!2063763 (lemmaConcatTwoListThenFirstIsPrefix!3404 (_1!34716 lt!2063769) (_2!34716 lt!2063769)))))

(declare-fun lt!2063782 () List!57851)

(assert (=> b!4990315 (isPrefix!5306 lt!2063772 lt!2063782)))

(declare-fun lt!2063771 () Unit!148863)

(declare-fun lt!2063778 () List!57851)

(assert (=> b!4990315 (= lt!2063771 (lemmaConcatTwoListThenFirstIsPrefix!3404 lt!2063772 lt!2063778))))

(declare-fun b!4990316 () Bool)

(declare-fun e!3118964 () Bool)

(declare-fun tp!1398912 () Bool)

(declare-fun inv!75758 (Conc!15268) Bool)

(assert (=> b!4990316 (= e!3118964 (and (inv!75758 (c!851364 input!5597)) tp!1398912))))

(declare-fun b!4990317 () Bool)

(declare-fun e!3118965 () Bool)

(assert (=> b!4990317 (= e!3118962 e!3118965)))

(declare-fun res!2130442 () Bool)

(assert (=> b!4990317 (=> res!2130442 e!3118965)))

(declare-fun lt!2063764 () List!57851)

(assert (=> b!4990317 (= res!2130442 (not (= lt!2063764 (_1!34716 lt!2063769))))))

(assert (=> b!4990317 (= lt!2063765 (_1!34716 lt!2063769))))

(declare-fun lt!2063768 () Unit!148863)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1249 (List!57851 List!57851 List!57851) Unit!148863)

(assert (=> b!4990317 (= lt!2063768 (lemmaIsPrefixSameLengthThenSameList!1249 lt!2063765 (_1!34716 lt!2063769) lt!2063758))))

(assert (=> b!4990317 (isPrefix!5306 lt!2063764 lt!2063758)))

(assert (=> b!4990317 (= lt!2063764 (take!614 lt!2063758 lt!2063761))))

(declare-fun lt!2063777 () Unit!148863)

(assert (=> b!4990317 (= lt!2063777 (lemmaTakeIsPrefix!108 lt!2063758 lt!2063761))))

(declare-fun b!4990318 () Bool)

(assert (=> b!4990318 (= e!3118965 true)))

(assert (=> b!4990318 (>= lt!2063785 lt!2063761)))

(declare-fun lt!2063760 () Unit!148863)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV2!2 ((InoxSet Context!6348) Int BalanceConc!29966 Int) Unit!148863)

(assert (=> b!4990318 (= lt!2063760 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV2!2 z!4183 lt!2063786 totalInput!1012 lt!2063761))))

(declare-fun b!4990319 () Bool)

(declare-fun e!3118967 () Bool)

(assert (=> b!4990319 (= e!3118967 e!3118952)))

(declare-fun res!2130447 () Bool)

(assert (=> b!4990319 (=> (not res!2130447) (not e!3118952))))

(declare-fun unfocusZipper!276 (List!57853) Regex!13749)

(assert (=> b!4990319 (= res!2130447 (= (unfocusZipper!276 lt!2063779) r!12727))))

(declare-fun toList!8034 ((InoxSet Context!6348)) List!57853)

(assert (=> b!4990319 (= lt!2063779 (toList!8034 z!4183))))

(declare-fun b!4990320 () Bool)

(declare-fun e!3118953 () Bool)

(declare-fun tp!1398904 () Bool)

(assert (=> b!4990320 (= e!3118953 (and (inv!75758 (c!851364 totalInput!1012)) tp!1398904))))

(declare-fun b!4990321 () Bool)

(assert (=> b!4990321 (= e!3118954 e!3118958)))

(declare-fun res!2130443 () Bool)

(assert (=> b!4990321 (=> res!2130443 e!3118958)))

(declare-fun e!3118950 () Bool)

(assert (=> b!4990321 (= res!2130443 e!3118950)))

(declare-fun res!2130446 () Bool)

(assert (=> b!4990321 (=> (not res!2130446) (not e!3118950))))

(assert (=> b!4990321 (= res!2130446 (not lt!2063773))))

(assert (=> b!4990321 (= lt!2063773 (matchR!6721 r!12727 (_1!34716 lt!2063769)))))

(declare-fun b!4990322 () Bool)

(declare-fun tp_is_empty!36495 () Bool)

(assert (=> b!4990322 (= e!3118957 tp_is_empty!36495)))

(declare-fun b!4990323 () Bool)

(declare-fun e!3118951 () Bool)

(assert (=> b!4990323 (= e!3118959 e!3118951)))

(declare-fun res!2130444 () Bool)

(assert (=> b!4990323 (=> (not res!2130444) (not e!3118951))))

(assert (=> b!4990323 (= res!2130444 (= lt!2063782 lt!2063758))))

(declare-fun ++!12593 (List!57851 List!57851) List!57851)

(assert (=> b!4990323 (= lt!2063782 (++!12593 lt!2063772 lt!2063778))))

(assert (=> b!4990323 (= lt!2063778 (list!18552 (_2!34715 lt!2063759)))))

(assert (=> b!4990323 (= lt!2063772 (list!18552 (_1!34715 lt!2063759)))))

(declare-fun findLongestMatch!1762 (Regex!13749 List!57851) tuple2!62826)

(assert (=> b!4990323 (= lt!2063769 (findLongestMatch!1762 r!12727 lt!2063758))))

(assert (=> b!4990323 (= lt!2063786 (- lt!2063766 (size!38350 input!5597)))))

(assert (=> b!4990323 (= lt!2063766 (size!38350 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!51 ((InoxSet Context!6348) BalanceConc!29966 BalanceConc!29966) tuple2!62824)

(assert (=> b!4990323 (= lt!2063759 (findLongestMatchZipperFastV2!51 z!4183 input!5597 totalInput!1012))))

(declare-fun b!4990324 () Bool)

(declare-fun isEmpty!31233 (BalanceConc!29966) Bool)

(assert (=> b!4990324 (= e!3118966 (not (isEmpty!31233 (_1!34715 lt!2063759))))))

(declare-fun e!3118955 () Bool)

(declare-fun tp!1398910 () Bool)

(declare-fun setElem!28202 () Context!6348)

(declare-fun setNonEmpty!28202 () Bool)

(declare-fun setRes!28202 () Bool)

(declare-fun inv!75759 (Context!6348) Bool)

(assert (=> setNonEmpty!28202 (= setRes!28202 (and tp!1398910 (inv!75759 setElem!28202) e!3118955))))

(declare-fun setRest!28202 () (InoxSet Context!6348))

(assert (=> setNonEmpty!28202 (= z!4183 ((_ map or) (store ((as const (Array Context!6348 Bool)) false) setElem!28202 true) setRest!28202))))

(declare-fun res!2130448 () Bool)

(assert (=> start!527454 (=> (not res!2130448) (not e!3118967))))

(declare-fun validRegex!6046 (Regex!13749) Bool)

(assert (=> start!527454 (= res!2130448 (validRegex!6046 r!12727))))

(assert (=> start!527454 e!3118967))

(assert (=> start!527454 e!3118957))

(declare-fun inv!75760 (BalanceConc!29966) Bool)

(assert (=> start!527454 (and (inv!75760 input!5597) e!3118964)))

(declare-fun condSetEmpty!28202 () Bool)

(assert (=> start!527454 (= condSetEmpty!28202 (= z!4183 ((as const (Array Context!6348 Bool)) false)))))

(assert (=> start!527454 setRes!28202))

(assert (=> start!527454 (and (inv!75760 totalInput!1012) e!3118953)))

(declare-fun setIsEmpty!28202 () Bool)

(assert (=> setIsEmpty!28202 setRes!28202))

(declare-fun b!4990325 () Bool)

(declare-fun tp!1398907 () Bool)

(assert (=> b!4990325 (= e!3118957 tp!1398907)))

(declare-fun b!4990326 () Bool)

(declare-fun tp!1398906 () Bool)

(declare-fun tp!1398905 () Bool)

(assert (=> b!4990326 (= e!3118957 (and tp!1398906 tp!1398905))))

(declare-fun b!4990327 () Bool)

(assert (=> b!4990327 (= e!3118956 (matchR!6721 r!12727 (_1!34716 lt!2063774)))))

(declare-fun b!4990328 () Bool)

(assert (=> b!4990328 (= e!3118950 (not (isEmpty!31232 (_1!34716 lt!2063769))))))

(declare-fun b!4990329 () Bool)

(declare-fun tp!1398909 () Bool)

(assert (=> b!4990329 (= e!3118955 tp!1398909)))

(declare-fun b!4990330 () Bool)

(assert (=> b!4990330 (= e!3118951 e!3118960)))

(declare-fun res!2130450 () Bool)

(assert (=> b!4990330 (=> (not res!2130450) (not e!3118960))))

(assert (=> b!4990330 (= res!2130450 (= lt!2063783 lt!2063758))))

(assert (=> b!4990330 (= lt!2063783 (++!12593 (_1!34716 lt!2063769) (_2!34716 lt!2063769)))))

(assert (= (and start!527454 res!2130448) b!4990319))

(assert (= (and b!4990319 res!2130447) b!4990313))

(assert (= (and b!4990313 res!2130455) b!4990323))

(assert (= (and b!4990323 res!2130444) b!4990330))

(assert (= (and b!4990330 res!2130450) b!4990315))

(assert (= (and b!4990315 (not res!2130452)) b!4990310))

(assert (= (and b!4990315 (not res!2130449)) b!4990327))

(assert (= (and b!4990315 res!2130451) b!4990324))

(assert (= (and b!4990315 (not res!2130454)) b!4990321))

(assert (= (and b!4990321 res!2130446) b!4990328))

(assert (= (and b!4990321 (not res!2130443)) b!4990314))

(assert (= (and b!4990314 (not res!2130453)) b!4990312))

(assert (= (and b!4990312 (not res!2130445)) b!4990317))

(assert (= (and b!4990317 (not res!2130442)) b!4990318))

(get-info :version)

(assert (= (and start!527454 ((_ is ElementMatch!13749) r!12727)) b!4990322))

(assert (= (and start!527454 ((_ is Concat!22542) r!12727)) b!4990311))

(assert (= (and start!527454 ((_ is Star!13749) r!12727)) b!4990325))

(assert (= (and start!527454 ((_ is Union!13749) r!12727)) b!4990326))

(assert (= start!527454 b!4990316))

(assert (= (and start!527454 condSetEmpty!28202) setIsEmpty!28202))

(assert (= (and start!527454 (not condSetEmpty!28202)) setNonEmpty!28202))

(assert (= setNonEmpty!28202 b!4990329))

(assert (= start!527454 b!4990320))

(declare-fun m!6022768 () Bool)

(assert (=> b!4990323 m!6022768))

(declare-fun m!6022770 () Bool)

(assert (=> b!4990323 m!6022770))

(declare-fun m!6022772 () Bool)

(assert (=> b!4990323 m!6022772))

(declare-fun m!6022774 () Bool)

(assert (=> b!4990323 m!6022774))

(declare-fun m!6022776 () Bool)

(assert (=> b!4990323 m!6022776))

(declare-fun m!6022778 () Bool)

(assert (=> b!4990323 m!6022778))

(declare-fun m!6022780 () Bool)

(assert (=> b!4990323 m!6022780))

(declare-fun m!6022782 () Bool)

(assert (=> setNonEmpty!28202 m!6022782))

(declare-fun m!6022784 () Bool)

(assert (=> b!4990321 m!6022784))

(declare-fun m!6022786 () Bool)

(assert (=> start!527454 m!6022786))

(declare-fun m!6022788 () Bool)

(assert (=> start!527454 m!6022788))

(declare-fun m!6022790 () Bool)

(assert (=> start!527454 m!6022790))

(declare-fun m!6022792 () Bool)

(assert (=> b!4990318 m!6022792))

(declare-fun m!6022794 () Bool)

(assert (=> b!4990327 m!6022794))

(declare-fun m!6022796 () Bool)

(assert (=> b!4990320 m!6022796))

(declare-fun m!6022798 () Bool)

(assert (=> b!4990317 m!6022798))

(declare-fun m!6022800 () Bool)

(assert (=> b!4990317 m!6022800))

(declare-fun m!6022802 () Bool)

(assert (=> b!4990317 m!6022802))

(declare-fun m!6022804 () Bool)

(assert (=> b!4990317 m!6022804))

(declare-fun m!6022806 () Bool)

(assert (=> b!4990310 m!6022806))

(assert (=> b!4990310 m!6022806))

(declare-fun m!6022808 () Bool)

(assert (=> b!4990310 m!6022808))

(assert (=> b!4990310 m!6022808))

(declare-fun m!6022810 () Bool)

(assert (=> b!4990310 m!6022810))

(declare-fun m!6022812 () Bool)

(assert (=> b!4990313 m!6022812))

(declare-fun m!6022814 () Bool)

(assert (=> b!4990313 m!6022814))

(declare-fun m!6022816 () Bool)

(assert (=> b!4990313 m!6022816))

(declare-fun m!6022818 () Bool)

(assert (=> b!4990314 m!6022818))

(declare-fun m!6022820 () Bool)

(assert (=> b!4990314 m!6022820))

(declare-fun m!6022822 () Bool)

(assert (=> b!4990314 m!6022822))

(declare-fun m!6022824 () Bool)

(assert (=> b!4990314 m!6022824))

(declare-fun m!6022826 () Bool)

(assert (=> b!4990314 m!6022826))

(declare-fun m!6022828 () Bool)

(assert (=> b!4990314 m!6022828))

(declare-fun m!6022830 () Bool)

(assert (=> b!4990316 m!6022830))

(declare-fun m!6022832 () Bool)

(assert (=> b!4990324 m!6022832))

(declare-fun m!6022834 () Bool)

(assert (=> b!4990330 m!6022834))

(declare-fun m!6022836 () Bool)

(assert (=> b!4990328 m!6022836))

(declare-fun m!6022838 () Bool)

(assert (=> b!4990319 m!6022838))

(declare-fun m!6022840 () Bool)

(assert (=> b!4990319 m!6022840))

(declare-fun m!6022842 () Bool)

(assert (=> b!4990315 m!6022842))

(declare-fun m!6022844 () Bool)

(assert (=> b!4990315 m!6022844))

(declare-fun m!6022846 () Bool)

(assert (=> b!4990315 m!6022846))

(declare-fun m!6022848 () Bool)

(assert (=> b!4990315 m!6022848))

(declare-fun m!6022850 () Bool)

(assert (=> b!4990315 m!6022850))

(declare-fun m!6022852 () Bool)

(assert (=> b!4990315 m!6022852))

(declare-fun m!6022854 () Bool)

(assert (=> b!4990315 m!6022854))

(declare-fun m!6022856 () Bool)

(assert (=> b!4990315 m!6022856))

(assert (=> b!4990315 m!6022852))

(declare-fun m!6022858 () Bool)

(assert (=> b!4990315 m!6022858))

(assert (=> b!4990315 m!6022850))

(declare-fun m!6022860 () Bool)

(assert (=> b!4990315 m!6022860))

(declare-fun m!6022862 () Bool)

(assert (=> b!4990315 m!6022862))

(declare-fun m!6022864 () Bool)

(assert (=> b!4990315 m!6022864))

(declare-fun m!6022866 () Bool)

(assert (=> b!4990315 m!6022866))

(assert (=> b!4990315 m!6022842))

(declare-fun m!6022868 () Bool)

(assert (=> b!4990315 m!6022868))

(declare-fun m!6022870 () Bool)

(assert (=> b!4990315 m!6022870))

(declare-fun m!6022872 () Bool)

(assert (=> b!4990312 m!6022872))

(assert (=> b!4990312 m!6022806))

(check-sat (not b!4990323) (not b!4990311) (not b!4990328) (not b!4990321) (not b!4990319) (not b!4990326) (not b!4990324) (not b!4990312) (not b!4990330) (not b!4990313) (not b!4990314) (not b!4990318) tp_is_empty!36495 (not b!4990327) (not b!4990325) (not b!4990329) (not b!4990316) (not b!4990317) (not start!527454) (not setNonEmpty!28202) (not b!4990310) (not b!4990315) (not b!4990320))
(check-sat)
