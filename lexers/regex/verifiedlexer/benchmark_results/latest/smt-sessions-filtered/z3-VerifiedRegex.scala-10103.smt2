; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!528658 () Bool)

(assert start!528658)

(declare-fun b!5002631 () Bool)

(declare-fun e!3126103 () Bool)

(declare-fun tp!1403144 () Bool)

(declare-fun tp!1403146 () Bool)

(assert (=> b!5002631 (= e!3126103 (and tp!1403144 tp!1403146))))

(declare-fun b!5002632 () Bool)

(declare-fun e!3126099 () Bool)

(declare-fun e!3126101 () Bool)

(assert (=> b!5002632 (= e!3126099 e!3126101)))

(declare-fun res!2134627 () Bool)

(assert (=> b!5002632 (=> (not res!2134627) (not e!3126101))))

(declare-datatypes ((C!27832 0))(
  ( (C!27833 (val!23282 Int)) )
))
(declare-datatypes ((Regex!13791 0))(
  ( (ElementMatch!13791 (c!853793 C!27832)) (Concat!22584 (regOne!28094 Regex!13791) (regTwo!28094 Regex!13791)) (EmptyExpr!13791) (Star!13791 (reg!14120 Regex!13791)) (EmptyLang!13791) (Union!13791 (regOne!28095 Regex!13791) (regTwo!28095 Regex!13791)) )
))
(declare-datatypes ((List!57977 0))(
  ( (Nil!57853) (Cons!57853 (h!64301 Regex!13791) (t!370323 List!57977)) )
))
(declare-datatypes ((Context!6432 0))(
  ( (Context!6433 (exprs!3716 List!57977)) )
))
(declare-datatypes ((List!57978 0))(
  ( (Nil!57854) (Cons!57854 (h!64302 Context!6432) (t!370324 List!57978)) )
))
(declare-fun lt!2069911 () List!57978)

(declare-fun r!12727 () Regex!13791)

(declare-fun unfocusZipper!318 (List!57978) Regex!13791)

(assert (=> b!5002632 (= res!2134627 (= (unfocusZipper!318 lt!2069911) r!12727))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4183 () (InoxSet Context!6432))

(declare-fun toList!8076 ((InoxSet Context!6432)) List!57978)

(assert (=> b!5002632 (= lt!2069911 (toList!8076 z!4183))))

(declare-fun b!5002633 () Bool)

(declare-fun e!3126111 () Bool)

(assert (=> b!5002633 (= e!3126101 e!3126111)))

(declare-fun res!2134634 () Bool)

(assert (=> b!5002633 (=> (not res!2134634) (not e!3126111))))

(declare-datatypes ((List!57979 0))(
  ( (Nil!57855) (Cons!57855 (h!64303 C!27832) (t!370325 List!57979)) )
))
(declare-fun lt!2069926 () List!57979)

(declare-fun lt!2069923 () List!57979)

(declare-fun isSuffix!1357 (List!57979 List!57979) Bool)

(assert (=> b!5002633 (= res!2134634 (isSuffix!1357 lt!2069926 lt!2069923))))

(declare-datatypes ((IArray!30681 0))(
  ( (IArray!30682 (innerList!15398 List!57979)) )
))
(declare-datatypes ((Conc!15310 0))(
  ( (Node!15310 (left!42299 Conc!15310) (right!42629 Conc!15310) (csize!30850 Int) (cheight!15521 Int)) (Leaf!25414 (xs!18636 IArray!30681) (csize!30851 Int)) (Empty!15310) )
))
(declare-datatypes ((BalanceConc!30050 0))(
  ( (BalanceConc!30051 (c!853794 Conc!15310)) )
))
(declare-fun totalInput!1012 () BalanceConc!30050)

(declare-fun list!18616 (BalanceConc!30050) List!57979)

(assert (=> b!5002633 (= lt!2069923 (list!18616 totalInput!1012))))

(declare-fun input!5597 () BalanceConc!30050)

(assert (=> b!5002633 (= lt!2069926 (list!18616 input!5597))))

(declare-fun b!5002634 () Bool)

(declare-fun tp!1403151 () Bool)

(assert (=> b!5002634 (= e!3126103 tp!1403151)))

(declare-fun res!2134637 () Bool)

(assert (=> start!528658 (=> (not res!2134637) (not e!3126099))))

(declare-fun validRegex!6088 (Regex!13791) Bool)

(assert (=> start!528658 (= res!2134637 (validRegex!6088 r!12727))))

(assert (=> start!528658 e!3126099))

(assert (=> start!528658 e!3126103))

(declare-fun e!3126106 () Bool)

(declare-fun inv!75999 (BalanceConc!30050) Bool)

(assert (=> start!528658 (and (inv!75999 input!5597) e!3126106)))

(declare-fun condSetEmpty!28388 () Bool)

(assert (=> start!528658 (= condSetEmpty!28388 (= z!4183 ((as const (Array Context!6432 Bool)) false)))))

(declare-fun setRes!28388 () Bool)

(assert (=> start!528658 setRes!28388))

(declare-fun e!3126095 () Bool)

(assert (=> start!528658 (and (inv!75999 totalInput!1012) e!3126095)))

(declare-fun b!5002635 () Bool)

(declare-fun tp!1403145 () Bool)

(declare-fun inv!76000 (Conc!15310) Bool)

(assert (=> b!5002635 (= e!3126095 (and (inv!76000 (c!853794 totalInput!1012)) tp!1403145))))

(declare-fun b!5002636 () Bool)

(declare-fun e!3126109 () Bool)

(declare-fun e!3126110 () Bool)

(assert (=> b!5002636 (= e!3126109 e!3126110)))

(declare-fun res!2134638 () Bool)

(assert (=> b!5002636 (=> res!2134638 e!3126110)))

(declare-fun lt!2069910 () Int)

(declare-datatypes ((tuple2!63000 0))(
  ( (tuple2!63001 (_1!34803 BalanceConc!30050) (_2!34803 BalanceConc!30050)) )
))
(declare-fun lt!2069915 () tuple2!63000)

(declare-fun size!38452 (BalanceConc!30050) Int)

(assert (=> b!5002636 (= res!2134638 (<= lt!2069910 (size!38452 (_1!34803 lt!2069915))))))

(declare-datatypes ((tuple2!63002 0))(
  ( (tuple2!63003 (_1!34804 List!57979) (_2!34804 List!57979)) )
))
(declare-fun lt!2069928 () tuple2!63002)

(declare-fun size!38453 (List!57979) Int)

(assert (=> b!5002636 (= lt!2069910 (size!38453 (_1!34804 lt!2069928)))))

(declare-fun lt!2069916 () List!57979)

(declare-fun lt!2069914 () Bool)

(declare-fun matchR!6755 (Regex!13791 List!57979) Bool)

(assert (=> b!5002636 (= (matchR!6755 r!12727 lt!2069916) lt!2069914)))

(declare-datatypes ((Unit!149015 0))(
  ( (Unit!149016) )
))
(declare-fun lt!2069921 () Unit!149015)

(declare-fun theoremZipperRegexEquiv!163 ((InoxSet Context!6432) List!57978 Regex!13791 List!57979) Unit!149015)

(assert (=> b!5002636 (= lt!2069921 (theoremZipperRegexEquiv!163 z!4183 lt!2069911 r!12727 lt!2069916))))

(declare-fun lt!2069927 () Bool)

(declare-fun matchZipper!559 ((InoxSet Context!6432) List!57979) Bool)

(assert (=> b!5002636 (= lt!2069927 (matchZipper!559 z!4183 (_1!34804 lt!2069928)))))

(declare-fun lt!2069920 () Unit!149015)

(assert (=> b!5002636 (= lt!2069920 (theoremZipperRegexEquiv!163 z!4183 lt!2069911 r!12727 (_1!34804 lt!2069928)))))

(declare-fun b!5002637 () Bool)

(declare-fun e!3126107 () Bool)

(declare-fun e!3126104 () Bool)

(assert (=> b!5002637 (= e!3126107 (not e!3126104))))

(declare-fun res!2134639 () Bool)

(assert (=> b!5002637 (=> res!2134639 e!3126104)))

(declare-fun e!3126100 () Bool)

(assert (=> b!5002637 (= res!2134639 e!3126100)))

(declare-fun res!2134629 () Bool)

(assert (=> b!5002637 (=> (not res!2134629) (not e!3126100))))

(assert (=> b!5002637 (= res!2134629 (not lt!2069914))))

(assert (=> b!5002637 (= lt!2069914 (matchZipper!559 z!4183 lt!2069916))))

(declare-fun e!3126096 () Bool)

(assert (=> b!5002637 e!3126096))

(declare-fun res!2134631 () Bool)

(assert (=> b!5002637 (=> res!2134631 e!3126096)))

(declare-fun lt!2069925 () tuple2!63002)

(declare-fun isEmpty!31320 (List!57979) Bool)

(assert (=> b!5002637 (= res!2134631 (isEmpty!31320 (_1!34804 lt!2069925)))))

(declare-fun findLongestMatchInner!1980 (Regex!13791 List!57979 Int List!57979 List!57979 Int) tuple2!63002)

(assert (=> b!5002637 (= lt!2069925 (findLongestMatchInner!1980 r!12727 Nil!57855 (size!38453 Nil!57855) lt!2069926 lt!2069926 (size!38453 lt!2069926)))))

(declare-fun lt!2069919 () Unit!149015)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1933 (Regex!13791 List!57979) Unit!149015)

(assert (=> b!5002637 (= lt!2069919 (longestMatchIsAcceptedByMatchOrIsEmpty!1933 r!12727 lt!2069926))))

(declare-fun e!3126098 () Bool)

(assert (=> b!5002637 e!3126098))

(declare-fun res!2134628 () Bool)

(assert (=> b!5002637 (=> res!2134628 e!3126098)))

(declare-fun lt!2069932 () Int)

(assert (=> b!5002637 (= res!2134628 (= lt!2069932 0))))

(declare-fun lt!2069931 () Int)

(declare-fun lt!2069913 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!131 ((InoxSet Context!6432) Int BalanceConc!30050 Int) Int)

(assert (=> b!5002637 (= lt!2069932 (findLongestMatchInnerZipperFastV2!131 z!4183 lt!2069913 totalInput!1012 lt!2069931))))

(declare-fun lt!2069934 () Unit!149015)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!50 ((InoxSet Context!6432) Int BalanceConc!30050) Unit!149015)

(assert (=> b!5002637 (= lt!2069934 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!50 z!4183 lt!2069913 totalInput!1012))))

(declare-fun isPrefix!5344 (List!57979 List!57979) Bool)

(declare-fun take!650 (List!57979 Int) List!57979)

(assert (=> b!5002637 (isPrefix!5344 (take!650 lt!2069923 lt!2069913) lt!2069923)))

(declare-fun lt!2069922 () Unit!149015)

(declare-fun lemmaTakeIsPrefix!144 (List!57979 Int) Unit!149015)

(assert (=> b!5002637 (= lt!2069922 (lemmaTakeIsPrefix!144 lt!2069923 lt!2069913))))

(declare-fun lt!2069917 () List!57979)

(assert (=> b!5002637 (isPrefix!5344 (_1!34804 lt!2069928) lt!2069917)))

(declare-fun lt!2069936 () Unit!149015)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3442 (List!57979 List!57979) Unit!149015)

(assert (=> b!5002637 (= lt!2069936 (lemmaConcatTwoListThenFirstIsPrefix!3442 (_1!34804 lt!2069928) (_2!34804 lt!2069928)))))

(declare-fun lt!2069924 () List!57979)

(assert (=> b!5002637 (isPrefix!5344 lt!2069916 lt!2069924)))

(declare-fun lt!2069909 () Unit!149015)

(declare-fun lt!2069933 () List!57979)

(assert (=> b!5002637 (= lt!2069909 (lemmaConcatTwoListThenFirstIsPrefix!3442 lt!2069916 lt!2069933))))

(declare-fun b!5002638 () Bool)

(assert (=> b!5002638 (= e!3126104 e!3126109)))

(declare-fun res!2134635 () Bool)

(assert (=> b!5002638 (=> res!2134635 e!3126109)))

(declare-fun e!3126097 () Bool)

(assert (=> b!5002638 (= res!2134635 e!3126097)))

(declare-fun res!2134633 () Bool)

(assert (=> b!5002638 (=> (not res!2134633) (not e!3126097))))

(assert (=> b!5002638 (= res!2134633 (not lt!2069927))))

(assert (=> b!5002638 (= lt!2069927 (matchR!6755 r!12727 (_1!34804 lt!2069928)))))

(declare-fun b!5002639 () Bool)

(declare-fun e!3126108 () Bool)

(assert (=> b!5002639 (= e!3126108 e!3126107)))

(declare-fun res!2134632 () Bool)

(assert (=> b!5002639 (=> (not res!2134632) (not e!3126107))))

(assert (=> b!5002639 (= res!2134632 (= lt!2069917 lt!2069926))))

(declare-fun ++!12637 (List!57979 List!57979) List!57979)

(assert (=> b!5002639 (= lt!2069917 (++!12637 (_1!34804 lt!2069928) (_2!34804 lt!2069928)))))

(declare-fun b!5002640 () Bool)

(declare-fun isEmpty!31321 (BalanceConc!30050) Bool)

(assert (=> b!5002640 (= e!3126100 (not (isEmpty!31321 (_1!34803 lt!2069915))))))

(declare-fun b!5002641 () Bool)

(declare-fun e!3126102 () Bool)

(declare-fun tp!1403152 () Bool)

(assert (=> b!5002641 (= e!3126102 tp!1403152)))

(declare-fun b!5002642 () Bool)

(assert (=> b!5002642 (= e!3126097 (not (isEmpty!31320 (_1!34804 lt!2069928))))))

(declare-fun tp!1403149 () Bool)

(declare-fun setElem!28388 () Context!6432)

(declare-fun setNonEmpty!28388 () Bool)

(declare-fun inv!76001 (Context!6432) Bool)

(assert (=> setNonEmpty!28388 (= setRes!28388 (and tp!1403149 (inv!76001 setElem!28388) e!3126102))))

(declare-fun setRest!28388 () (InoxSet Context!6432))

(assert (=> setNonEmpty!28388 (= z!4183 ((_ map or) (store ((as const (Array Context!6432 Bool)) false) setElem!28388 true) setRest!28388))))

(declare-fun b!5002643 () Bool)

(assert (=> b!5002643 (= e!3126096 (matchR!6755 r!12727 (_1!34804 lt!2069925)))))

(declare-fun b!5002644 () Bool)

(declare-fun tp!1403150 () Bool)

(assert (=> b!5002644 (= e!3126106 (and (inv!76000 (c!853794 input!5597)) tp!1403150))))

(declare-fun b!5002645 () Bool)

(declare-fun tp_is_empty!36579 () Bool)

(assert (=> b!5002645 (= e!3126103 tp_is_empty!36579)))

(declare-fun b!5002646 () Bool)

(assert (=> b!5002646 (= e!3126111 e!3126108)))

(declare-fun res!2134630 () Bool)

(assert (=> b!5002646 (=> (not res!2134630) (not e!3126108))))

(assert (=> b!5002646 (= res!2134630 (= lt!2069924 lt!2069926))))

(assert (=> b!5002646 (= lt!2069924 (++!12637 lt!2069916 lt!2069933))))

(assert (=> b!5002646 (= lt!2069933 (list!18616 (_2!34803 lt!2069915)))))

(assert (=> b!5002646 (= lt!2069916 (list!18616 (_1!34803 lt!2069915)))))

(declare-fun findLongestMatch!1804 (Regex!13791 List!57979) tuple2!63002)

(assert (=> b!5002646 (= lt!2069928 (findLongestMatch!1804 r!12727 lt!2069926))))

(assert (=> b!5002646 (= lt!2069913 (- lt!2069931 (size!38452 input!5597)))))

(assert (=> b!5002646 (= lt!2069931 (size!38452 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!93 ((InoxSet Context!6432) BalanceConc!30050 BalanceConc!30050) tuple2!63000)

(assert (=> b!5002646 (= lt!2069915 (findLongestMatchZipperFastV2!93 z!4183 input!5597 totalInput!1012))))

(declare-fun lt!2069912 () List!57979)

(declare-fun b!5002647 () Bool)

(declare-fun e!3126105 () Bool)

(assert (=> b!5002647 (= e!3126105 (or (not (= lt!2069912 (_1!34804 lt!2069928))) (and (>= lt!2069913 0) (<= lt!2069913 lt!2069931))))))

(declare-fun lt!2069929 () List!57979)

(assert (=> b!5002647 (= lt!2069929 (_1!34804 lt!2069928))))

(declare-fun lt!2069930 () Unit!149015)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1271 (List!57979 List!57979 List!57979) Unit!149015)

(assert (=> b!5002647 (= lt!2069930 (lemmaIsPrefixSameLengthThenSameList!1271 lt!2069929 (_1!34804 lt!2069928) lt!2069926))))

(assert (=> b!5002647 (isPrefix!5344 lt!2069912 lt!2069926)))

(assert (=> b!5002647 (= lt!2069912 (take!650 lt!2069926 lt!2069910))))

(declare-fun lt!2069935 () Unit!149015)

(assert (=> b!5002647 (= lt!2069935 (lemmaTakeIsPrefix!144 lt!2069926 lt!2069910))))

(declare-fun b!5002648 () Bool)

(declare-fun drop!2454 (List!57979 Int) List!57979)

(assert (=> b!5002648 (= e!3126098 (matchZipper!559 z!4183 (take!650 (drop!2454 lt!2069923 lt!2069913) lt!2069932)))))

(declare-fun b!5002649 () Bool)

(declare-fun tp!1403148 () Bool)

(declare-fun tp!1403147 () Bool)

(assert (=> b!5002649 (= e!3126103 (and tp!1403148 tp!1403147))))

(declare-fun b!5002650 () Bool)

(assert (=> b!5002650 (= e!3126110 e!3126105)))

(declare-fun res!2134636 () Bool)

(assert (=> b!5002650 (=> res!2134636 e!3126105)))

(declare-fun lt!2069918 () List!57979)

(assert (=> b!5002650 (= res!2134636 (not (= lt!2069918 lt!2069926)))))

(assert (=> b!5002650 (= lt!2069929 (take!650 lt!2069918 lt!2069910))))

(assert (=> b!5002650 (= lt!2069918 (drop!2454 lt!2069923 lt!2069913))))

(declare-fun setIsEmpty!28388 () Bool)

(assert (=> setIsEmpty!28388 setRes!28388))

(assert (= (and start!528658 res!2134637) b!5002632))

(assert (= (and b!5002632 res!2134627) b!5002633))

(assert (= (and b!5002633 res!2134634) b!5002646))

(assert (= (and b!5002646 res!2134630) b!5002639))

(assert (= (and b!5002639 res!2134632) b!5002637))

(assert (= (and b!5002637 (not res!2134628)) b!5002648))

(assert (= (and b!5002637 (not res!2134631)) b!5002643))

(assert (= (and b!5002637 res!2134629) b!5002640))

(assert (= (and b!5002637 (not res!2134639)) b!5002638))

(assert (= (and b!5002638 res!2134633) b!5002642))

(assert (= (and b!5002638 (not res!2134635)) b!5002636))

(assert (= (and b!5002636 (not res!2134638)) b!5002650))

(assert (= (and b!5002650 (not res!2134636)) b!5002647))

(get-info :version)

(assert (= (and start!528658 ((_ is ElementMatch!13791) r!12727)) b!5002645))

(assert (= (and start!528658 ((_ is Concat!22584) r!12727)) b!5002649))

(assert (= (and start!528658 ((_ is Star!13791) r!12727)) b!5002634))

(assert (= (and start!528658 ((_ is Union!13791) r!12727)) b!5002631))

(assert (= start!528658 b!5002644))

(assert (= (and start!528658 condSetEmpty!28388) setIsEmpty!28388))

(assert (= (and start!528658 (not condSetEmpty!28388)) setNonEmpty!28388))

(assert (= setNonEmpty!28388 b!5002641))

(assert (= start!528658 b!5002635))

(declare-fun m!6036426 () Bool)

(assert (=> b!5002640 m!6036426))

(declare-fun m!6036428 () Bool)

(assert (=> b!5002632 m!6036428))

(declare-fun m!6036430 () Bool)

(assert (=> b!5002632 m!6036430))

(declare-fun m!6036432 () Bool)

(assert (=> setNonEmpty!28388 m!6036432))

(declare-fun m!6036434 () Bool)

(assert (=> b!5002639 m!6036434))

(declare-fun m!6036436 () Bool)

(assert (=> b!5002633 m!6036436))

(declare-fun m!6036438 () Bool)

(assert (=> b!5002633 m!6036438))

(declare-fun m!6036440 () Bool)

(assert (=> b!5002633 m!6036440))

(declare-fun m!6036442 () Bool)

(assert (=> b!5002643 m!6036442))

(declare-fun m!6036444 () Bool)

(assert (=> b!5002637 m!6036444))

(declare-fun m!6036446 () Bool)

(assert (=> b!5002637 m!6036446))

(declare-fun m!6036448 () Bool)

(assert (=> b!5002637 m!6036448))

(declare-fun m!6036450 () Bool)

(assert (=> b!5002637 m!6036450))

(assert (=> b!5002637 m!6036446))

(declare-fun m!6036452 () Bool)

(assert (=> b!5002637 m!6036452))

(declare-fun m!6036454 () Bool)

(assert (=> b!5002637 m!6036454))

(declare-fun m!6036456 () Bool)

(assert (=> b!5002637 m!6036456))

(declare-fun m!6036458 () Bool)

(assert (=> b!5002637 m!6036458))

(declare-fun m!6036460 () Bool)

(assert (=> b!5002637 m!6036460))

(declare-fun m!6036462 () Bool)

(assert (=> b!5002637 m!6036462))

(declare-fun m!6036464 () Bool)

(assert (=> b!5002637 m!6036464))

(declare-fun m!6036466 () Bool)

(assert (=> b!5002637 m!6036466))

(declare-fun m!6036468 () Bool)

(assert (=> b!5002637 m!6036468))

(assert (=> b!5002637 m!6036462))

(declare-fun m!6036470 () Bool)

(assert (=> b!5002637 m!6036470))

(assert (=> b!5002637 m!6036448))

(declare-fun m!6036472 () Bool)

(assert (=> b!5002637 m!6036472))

(declare-fun m!6036474 () Bool)

(assert (=> b!5002650 m!6036474))

(declare-fun m!6036476 () Bool)

(assert (=> b!5002650 m!6036476))

(assert (=> b!5002648 m!6036476))

(assert (=> b!5002648 m!6036476))

(declare-fun m!6036478 () Bool)

(assert (=> b!5002648 m!6036478))

(assert (=> b!5002648 m!6036478))

(declare-fun m!6036480 () Bool)

(assert (=> b!5002648 m!6036480))

(declare-fun m!6036482 () Bool)

(assert (=> start!528658 m!6036482))

(declare-fun m!6036484 () Bool)

(assert (=> start!528658 m!6036484))

(declare-fun m!6036486 () Bool)

(assert (=> start!528658 m!6036486))

(declare-fun m!6036488 () Bool)

(assert (=> b!5002638 m!6036488))

(declare-fun m!6036490 () Bool)

(assert (=> b!5002644 m!6036490))

(declare-fun m!6036492 () Bool)

(assert (=> b!5002646 m!6036492))

(declare-fun m!6036494 () Bool)

(assert (=> b!5002646 m!6036494))

(declare-fun m!6036496 () Bool)

(assert (=> b!5002646 m!6036496))

(declare-fun m!6036498 () Bool)

(assert (=> b!5002646 m!6036498))

(declare-fun m!6036500 () Bool)

(assert (=> b!5002646 m!6036500))

(declare-fun m!6036502 () Bool)

(assert (=> b!5002646 m!6036502))

(declare-fun m!6036504 () Bool)

(assert (=> b!5002646 m!6036504))

(declare-fun m!6036506 () Bool)

(assert (=> b!5002642 m!6036506))

(declare-fun m!6036508 () Bool)

(assert (=> b!5002636 m!6036508))

(declare-fun m!6036510 () Bool)

(assert (=> b!5002636 m!6036510))

(declare-fun m!6036512 () Bool)

(assert (=> b!5002636 m!6036512))

(declare-fun m!6036514 () Bool)

(assert (=> b!5002636 m!6036514))

(declare-fun m!6036516 () Bool)

(assert (=> b!5002636 m!6036516))

(declare-fun m!6036518 () Bool)

(assert (=> b!5002636 m!6036518))

(declare-fun m!6036520 () Bool)

(assert (=> b!5002647 m!6036520))

(declare-fun m!6036522 () Bool)

(assert (=> b!5002647 m!6036522))

(declare-fun m!6036524 () Bool)

(assert (=> b!5002647 m!6036524))

(declare-fun m!6036526 () Bool)

(assert (=> b!5002647 m!6036526))

(declare-fun m!6036528 () Bool)

(assert (=> b!5002635 m!6036528))

(check-sat (not b!5002643) (not b!5002632) (not b!5002636) (not b!5002640) (not b!5002635) (not b!5002647) (not b!5002639) (not b!5002638) tp_is_empty!36579 (not b!5002646) (not b!5002641) (not b!5002631) (not b!5002642) (not setNonEmpty!28388) (not b!5002644) (not b!5002634) (not start!528658) (not b!5002633) (not b!5002650) (not b!5002648) (not b!5002637) (not b!5002649))
(check-sat)
(get-model)

(declare-fun d!1610222 () Bool)

(assert (=> d!1610222 (= (isEmpty!31320 (_1!34804 lt!2069928)) ((_ is Nil!57855) (_1!34804 lt!2069928)))))

(assert (=> b!5002642 d!1610222))

(declare-fun d!1610224 () Bool)

(declare-fun lt!2069945 () Regex!13791)

(assert (=> d!1610224 (validRegex!6088 lt!2069945)))

(declare-fun generalisedUnion!577 (List!57977) Regex!13791)

(declare-fun unfocusZipperList!90 (List!57978) List!57977)

(assert (=> d!1610224 (= lt!2069945 (generalisedUnion!577 (unfocusZipperList!90 lt!2069911)))))

(assert (=> d!1610224 (= (unfocusZipper!318 lt!2069911) lt!2069945)))

(declare-fun bs!1185827 () Bool)

(assert (= bs!1185827 d!1610224))

(declare-fun m!6036568 () Bool)

(assert (=> bs!1185827 m!6036568))

(declare-fun m!6036570 () Bool)

(assert (=> bs!1185827 m!6036570))

(assert (=> bs!1185827 m!6036570))

(declare-fun m!6036572 () Bool)

(assert (=> bs!1185827 m!6036572))

(assert (=> b!5002632 d!1610224))

(declare-fun d!1610228 () Bool)

(declare-fun e!3126173 () Bool)

(assert (=> d!1610228 e!3126173))

(declare-fun res!2134696 () Bool)

(assert (=> d!1610228 (=> (not res!2134696) (not e!3126173))))

(declare-fun lt!2069953 () List!57978)

(declare-fun noDuplicate!1026 (List!57978) Bool)

(assert (=> d!1610228 (= res!2134696 (noDuplicate!1026 lt!2069953))))

(declare-fun choose!36985 ((InoxSet Context!6432)) List!57978)

(assert (=> d!1610228 (= lt!2069953 (choose!36985 z!4183))))

(assert (=> d!1610228 (= (toList!8076 z!4183) lt!2069953)))

(declare-fun b!5002745 () Bool)

(declare-fun content!10243 (List!57978) (InoxSet Context!6432))

(assert (=> b!5002745 (= e!3126173 (= (content!10243 lt!2069953) z!4183))))

(assert (= (and d!1610228 res!2134696) b!5002745))

(declare-fun m!6036578 () Bool)

(assert (=> d!1610228 m!6036578))

(declare-fun m!6036580 () Bool)

(assert (=> d!1610228 m!6036580))

(declare-fun m!6036582 () Bool)

(assert (=> b!5002745 m!6036582))

(assert (=> b!5002632 d!1610228))

(declare-fun d!1610232 () Bool)

(declare-fun lambda!248360 () Int)

(declare-fun forall!13361 (List!57977 Int) Bool)

(assert (=> d!1610232 (= (inv!76001 setElem!28388) (forall!13361 (exprs!3716 setElem!28388) lambda!248360))))

(declare-fun bs!1185834 () Bool)

(assert (= bs!1185834 d!1610232))

(declare-fun m!6036708 () Bool)

(assert (=> bs!1185834 m!6036708))

(assert (=> setNonEmpty!28388 d!1610232))

(declare-fun d!1610270 () Bool)

(declare-fun e!3126241 () Bool)

(assert (=> d!1610270 e!3126241))

(declare-fun res!2134742 () Bool)

(assert (=> d!1610270 (=> res!2134742 e!3126241)))

(declare-fun lt!2069991 () Bool)

(assert (=> d!1610270 (= res!2134742 (not lt!2069991))))

(assert (=> d!1610270 (= lt!2069991 (= lt!2069926 (drop!2454 lt!2069923 (- (size!38453 lt!2069923) (size!38453 lt!2069926)))))))

(assert (=> d!1610270 (= (isSuffix!1357 lt!2069926 lt!2069923) lt!2069991)))

(declare-fun b!5002851 () Bool)

(assert (=> b!5002851 (= e!3126241 (>= (size!38453 lt!2069923) (size!38453 lt!2069926)))))

(assert (= (and d!1610270 (not res!2134742)) b!5002851))

(declare-fun m!6036710 () Bool)

(assert (=> d!1610270 m!6036710))

(assert (=> d!1610270 m!6036448))

(declare-fun m!6036712 () Bool)

(assert (=> d!1610270 m!6036712))

(assert (=> b!5002851 m!6036710))

(assert (=> b!5002851 m!6036448))

(assert (=> b!5002633 d!1610270))

(declare-fun d!1610272 () Bool)

(declare-fun list!18618 (Conc!15310) List!57979)

(assert (=> d!1610272 (= (list!18616 totalInput!1012) (list!18618 (c!853794 totalInput!1012)))))

(declare-fun bs!1185835 () Bool)

(assert (= bs!1185835 d!1610272))

(declare-fun m!6036714 () Bool)

(assert (=> bs!1185835 m!6036714))

(assert (=> b!5002633 d!1610272))

(declare-fun d!1610274 () Bool)

(assert (=> d!1610274 (= (list!18616 input!5597) (list!18618 (c!853794 input!5597)))))

(declare-fun bs!1185836 () Bool)

(assert (= bs!1185836 d!1610274))

(declare-fun m!6036716 () Bool)

(assert (=> bs!1185836 m!6036716))

(assert (=> b!5002633 d!1610274))

(declare-fun b!5002880 () Bool)

(declare-fun res!2134766 () Bool)

(declare-fun e!3126257 () Bool)

(assert (=> b!5002880 (=> res!2134766 e!3126257)))

(declare-fun e!3126258 () Bool)

(assert (=> b!5002880 (= res!2134766 e!3126258)))

(declare-fun res!2134759 () Bool)

(assert (=> b!5002880 (=> (not res!2134759) (not e!3126258))))

(declare-fun lt!2069994 () Bool)

(assert (=> b!5002880 (= res!2134759 lt!2069994)))

(declare-fun b!5002881 () Bool)

(declare-fun e!3126261 () Bool)

(declare-fun e!3126262 () Bool)

(assert (=> b!5002881 (= e!3126261 e!3126262)))

(declare-fun c!853851 () Bool)

(assert (=> b!5002881 (= c!853851 ((_ is EmptyLang!13791) r!12727))))

(declare-fun b!5002882 () Bool)

(declare-fun res!2134764 () Bool)

(assert (=> b!5002882 (=> (not res!2134764) (not e!3126258))))

(declare-fun call!349165 () Bool)

(assert (=> b!5002882 (= res!2134764 (not call!349165))))

(declare-fun b!5002883 () Bool)

(declare-fun res!2134765 () Bool)

(declare-fun e!3126259 () Bool)

(assert (=> b!5002883 (=> res!2134765 e!3126259)))

(declare-fun tail!9862 (List!57979) List!57979)

(assert (=> b!5002883 (= res!2134765 (not (isEmpty!31320 (tail!9862 (_1!34804 lt!2069925)))))))

(declare-fun d!1610276 () Bool)

(assert (=> d!1610276 e!3126261))

(declare-fun c!853850 () Bool)

(assert (=> d!1610276 (= c!853850 ((_ is EmptyExpr!13791) r!12727))))

(declare-fun e!3126260 () Bool)

(assert (=> d!1610276 (= lt!2069994 e!3126260)))

(declare-fun c!853852 () Bool)

(assert (=> d!1610276 (= c!853852 (isEmpty!31320 (_1!34804 lt!2069925)))))

(assert (=> d!1610276 (validRegex!6088 r!12727)))

(assert (=> d!1610276 (= (matchR!6755 r!12727 (_1!34804 lt!2069925)) lt!2069994)))

(declare-fun b!5002884 () Bool)

(assert (=> b!5002884 (= e!3126261 (= lt!2069994 call!349165))))

(declare-fun b!5002885 () Bool)

(declare-fun res!2134762 () Bool)

(assert (=> b!5002885 (=> (not res!2134762) (not e!3126258))))

(assert (=> b!5002885 (= res!2134762 (isEmpty!31320 (tail!9862 (_1!34804 lt!2069925))))))

(declare-fun b!5002886 () Bool)

(declare-fun head!10729 (List!57979) C!27832)

(assert (=> b!5002886 (= e!3126259 (not (= (head!10729 (_1!34804 lt!2069925)) (c!853793 r!12727))))))

(declare-fun b!5002887 () Bool)

(declare-fun derivativeStep!3975 (Regex!13791 C!27832) Regex!13791)

(assert (=> b!5002887 (= e!3126260 (matchR!6755 (derivativeStep!3975 r!12727 (head!10729 (_1!34804 lt!2069925))) (tail!9862 (_1!34804 lt!2069925))))))

(declare-fun b!5002888 () Bool)

(declare-fun e!3126256 () Bool)

(assert (=> b!5002888 (= e!3126257 e!3126256)))

(declare-fun res!2134761 () Bool)

(assert (=> b!5002888 (=> (not res!2134761) (not e!3126256))))

(assert (=> b!5002888 (= res!2134761 (not lt!2069994))))

(declare-fun b!5002889 () Bool)

(declare-fun res!2134763 () Bool)

(assert (=> b!5002889 (=> res!2134763 e!3126257)))

(assert (=> b!5002889 (= res!2134763 (not ((_ is ElementMatch!13791) r!12727)))))

(assert (=> b!5002889 (= e!3126262 e!3126257)))

(declare-fun bm!349160 () Bool)

(assert (=> bm!349160 (= call!349165 (isEmpty!31320 (_1!34804 lt!2069925)))))

(declare-fun b!5002890 () Bool)

(assert (=> b!5002890 (= e!3126258 (= (head!10729 (_1!34804 lt!2069925)) (c!853793 r!12727)))))

(declare-fun b!5002891 () Bool)

(declare-fun nullable!4685 (Regex!13791) Bool)

(assert (=> b!5002891 (= e!3126260 (nullable!4685 r!12727))))

(declare-fun b!5002892 () Bool)

(assert (=> b!5002892 (= e!3126262 (not lt!2069994))))

(declare-fun b!5002893 () Bool)

(assert (=> b!5002893 (= e!3126256 e!3126259)))

(declare-fun res!2134760 () Bool)

(assert (=> b!5002893 (=> res!2134760 e!3126259)))

(assert (=> b!5002893 (= res!2134760 call!349165)))

(assert (= (and d!1610276 c!853852) b!5002891))

(assert (= (and d!1610276 (not c!853852)) b!5002887))

(assert (= (and d!1610276 c!853850) b!5002884))

(assert (= (and d!1610276 (not c!853850)) b!5002881))

(assert (= (and b!5002881 c!853851) b!5002892))

(assert (= (and b!5002881 (not c!853851)) b!5002889))

(assert (= (and b!5002889 (not res!2134763)) b!5002880))

(assert (= (and b!5002880 res!2134759) b!5002882))

(assert (= (and b!5002882 res!2134764) b!5002885))

(assert (= (and b!5002885 res!2134762) b!5002890))

(assert (= (and b!5002880 (not res!2134766)) b!5002888))

(assert (= (and b!5002888 res!2134761) b!5002893))

(assert (= (and b!5002893 (not res!2134760)) b!5002883))

(assert (= (and b!5002883 (not res!2134765)) b!5002886))

(assert (= (or b!5002884 b!5002882 b!5002893) bm!349160))

(assert (=> bm!349160 m!6036466))

(declare-fun m!6036718 () Bool)

(assert (=> b!5002885 m!6036718))

(assert (=> b!5002885 m!6036718))

(declare-fun m!6036720 () Bool)

(assert (=> b!5002885 m!6036720))

(assert (=> b!5002883 m!6036718))

(assert (=> b!5002883 m!6036718))

(assert (=> b!5002883 m!6036720))

(declare-fun m!6036722 () Bool)

(assert (=> b!5002887 m!6036722))

(assert (=> b!5002887 m!6036722))

(declare-fun m!6036724 () Bool)

(assert (=> b!5002887 m!6036724))

(assert (=> b!5002887 m!6036718))

(assert (=> b!5002887 m!6036724))

(assert (=> b!5002887 m!6036718))

(declare-fun m!6036726 () Bool)

(assert (=> b!5002887 m!6036726))

(declare-fun m!6036728 () Bool)

(assert (=> b!5002891 m!6036728))

(assert (=> b!5002886 m!6036722))

(assert (=> d!1610276 m!6036466))

(assert (=> d!1610276 m!6036482))

(assert (=> b!5002890 m!6036722))

(assert (=> b!5002643 d!1610276))

(declare-fun d!1610278 () Bool)

(declare-fun c!853855 () Bool)

(assert (=> d!1610278 (= c!853855 ((_ is Node!15310) (c!853794 input!5597)))))

(declare-fun e!3126267 () Bool)

(assert (=> d!1610278 (= (inv!76000 (c!853794 input!5597)) e!3126267)))

(declare-fun b!5002900 () Bool)

(declare-fun inv!76004 (Conc!15310) Bool)

(assert (=> b!5002900 (= e!3126267 (inv!76004 (c!853794 input!5597)))))

(declare-fun b!5002901 () Bool)

(declare-fun e!3126268 () Bool)

(assert (=> b!5002901 (= e!3126267 e!3126268)))

(declare-fun res!2134769 () Bool)

(assert (=> b!5002901 (= res!2134769 (not ((_ is Leaf!25414) (c!853794 input!5597))))))

(assert (=> b!5002901 (=> res!2134769 e!3126268)))

(declare-fun b!5002902 () Bool)

(declare-fun inv!76005 (Conc!15310) Bool)

(assert (=> b!5002902 (= e!3126268 (inv!76005 (c!853794 input!5597)))))

(assert (= (and d!1610278 c!853855) b!5002900))

(assert (= (and d!1610278 (not c!853855)) b!5002901))

(assert (= (and b!5002901 (not res!2134769)) b!5002902))

(declare-fun m!6036730 () Bool)

(assert (=> b!5002900 m!6036730))

(declare-fun m!6036732 () Bool)

(assert (=> b!5002902 m!6036732))

(assert (=> b!5002644 d!1610278))

(declare-fun d!1610280 () Bool)

(declare-fun c!853856 () Bool)

(assert (=> d!1610280 (= c!853856 ((_ is Node!15310) (c!853794 totalInput!1012)))))

(declare-fun e!3126269 () Bool)

(assert (=> d!1610280 (= (inv!76000 (c!853794 totalInput!1012)) e!3126269)))

(declare-fun b!5002903 () Bool)

(assert (=> b!5002903 (= e!3126269 (inv!76004 (c!853794 totalInput!1012)))))

(declare-fun b!5002904 () Bool)

(declare-fun e!3126270 () Bool)

(assert (=> b!5002904 (= e!3126269 e!3126270)))

(declare-fun res!2134770 () Bool)

(assert (=> b!5002904 (= res!2134770 (not ((_ is Leaf!25414) (c!853794 totalInput!1012))))))

(assert (=> b!5002904 (=> res!2134770 e!3126270)))

(declare-fun b!5002905 () Bool)

(assert (=> b!5002905 (= e!3126270 (inv!76005 (c!853794 totalInput!1012)))))

(assert (= (and d!1610280 c!853856) b!5002903))

(assert (= (and d!1610280 (not c!853856)) b!5002904))

(assert (= (and b!5002904 (not res!2134770)) b!5002905))

(declare-fun m!6036734 () Bool)

(assert (=> b!5002903 m!6036734))

(declare-fun m!6036736 () Bool)

(assert (=> b!5002905 m!6036736))

(assert (=> b!5002635 d!1610280))

(declare-fun d!1610282 () Bool)

(declare-fun lt!2069997 () Int)

(assert (=> d!1610282 (= lt!2069997 (size!38453 (list!18616 (_1!34803 lt!2069915))))))

(declare-fun size!38454 (Conc!15310) Int)

(assert (=> d!1610282 (= lt!2069997 (size!38454 (c!853794 (_1!34803 lt!2069915))))))

(assert (=> d!1610282 (= (size!38452 (_1!34803 lt!2069915)) lt!2069997)))

(declare-fun bs!1185837 () Bool)

(assert (= bs!1185837 d!1610282))

(assert (=> bs!1185837 m!6036492))

(assert (=> bs!1185837 m!6036492))

(declare-fun m!6036738 () Bool)

(assert (=> bs!1185837 m!6036738))

(declare-fun m!6036740 () Bool)

(assert (=> bs!1185837 m!6036740))

(assert (=> b!5002636 d!1610282))

(declare-fun d!1610284 () Bool)

(declare-fun lt!2070000 () Int)

(assert (=> d!1610284 (>= lt!2070000 0)))

(declare-fun e!3126273 () Int)

(assert (=> d!1610284 (= lt!2070000 e!3126273)))

(declare-fun c!853859 () Bool)

(assert (=> d!1610284 (= c!853859 ((_ is Nil!57855) (_1!34804 lt!2069928)))))

(assert (=> d!1610284 (= (size!38453 (_1!34804 lt!2069928)) lt!2070000)))

(declare-fun b!5002910 () Bool)

(assert (=> b!5002910 (= e!3126273 0)))

(declare-fun b!5002911 () Bool)

(assert (=> b!5002911 (= e!3126273 (+ 1 (size!38453 (t!370325 (_1!34804 lt!2069928)))))))

(assert (= (and d!1610284 c!853859) b!5002910))

(assert (= (and d!1610284 (not c!853859)) b!5002911))

(declare-fun m!6036742 () Bool)

(assert (=> b!5002911 m!6036742))

(assert (=> b!5002636 d!1610284))

(declare-fun d!1610286 () Bool)

(assert (=> d!1610286 (= (matchR!6755 r!12727 (_1!34804 lt!2069928)) (matchZipper!559 z!4183 (_1!34804 lt!2069928)))))

(declare-fun lt!2070059 () Unit!149015)

(declare-fun choose!36987 ((InoxSet Context!6432) List!57978 Regex!13791 List!57979) Unit!149015)

(assert (=> d!1610286 (= lt!2070059 (choose!36987 z!4183 lt!2069911 r!12727 (_1!34804 lt!2069928)))))

(assert (=> d!1610286 (validRegex!6088 r!12727)))

(assert (=> d!1610286 (= (theoremZipperRegexEquiv!163 z!4183 lt!2069911 r!12727 (_1!34804 lt!2069928)) lt!2070059)))

(declare-fun bs!1185838 () Bool)

(assert (= bs!1185838 d!1610286))

(assert (=> bs!1185838 m!6036488))

(assert (=> bs!1185838 m!6036514))

(declare-fun m!6036744 () Bool)

(assert (=> bs!1185838 m!6036744))

(assert (=> bs!1185838 m!6036482))

(assert (=> b!5002636 d!1610286))

(declare-fun d!1610288 () Bool)

(declare-fun c!853874 () Bool)

(assert (=> d!1610288 (= c!853874 (isEmpty!31320 (_1!34804 lt!2069928)))))

(declare-fun e!3126288 () Bool)

(assert (=> d!1610288 (= (matchZipper!559 z!4183 (_1!34804 lt!2069928)) e!3126288)))

(declare-fun b!5002940 () Bool)

(declare-fun nullableZipper!880 ((InoxSet Context!6432)) Bool)

(assert (=> b!5002940 (= e!3126288 (nullableZipper!880 z!4183))))

(declare-fun b!5002941 () Bool)

(declare-fun derivationStepZipper!629 ((InoxSet Context!6432) C!27832) (InoxSet Context!6432))

(assert (=> b!5002941 (= e!3126288 (matchZipper!559 (derivationStepZipper!629 z!4183 (head!10729 (_1!34804 lt!2069928))) (tail!9862 (_1!34804 lt!2069928))))))

(assert (= (and d!1610288 c!853874) b!5002940))

(assert (= (and d!1610288 (not c!853874)) b!5002941))

(assert (=> d!1610288 m!6036506))

(declare-fun m!6036746 () Bool)

(assert (=> b!5002940 m!6036746))

(declare-fun m!6036748 () Bool)

(assert (=> b!5002941 m!6036748))

(assert (=> b!5002941 m!6036748))

(declare-fun m!6036750 () Bool)

(assert (=> b!5002941 m!6036750))

(declare-fun m!6036752 () Bool)

(assert (=> b!5002941 m!6036752))

(assert (=> b!5002941 m!6036750))

(assert (=> b!5002941 m!6036752))

(declare-fun m!6036754 () Bool)

(assert (=> b!5002941 m!6036754))

(assert (=> b!5002636 d!1610288))

(declare-fun b!5002942 () Bool)

(declare-fun res!2134780 () Bool)

(declare-fun e!3126290 () Bool)

(assert (=> b!5002942 (=> res!2134780 e!3126290)))

(declare-fun e!3126291 () Bool)

(assert (=> b!5002942 (= res!2134780 e!3126291)))

(declare-fun res!2134771 () Bool)

(assert (=> b!5002942 (=> (not res!2134771) (not e!3126291))))

(declare-fun lt!2070060 () Bool)

(assert (=> b!5002942 (= res!2134771 lt!2070060)))

(declare-fun b!5002943 () Bool)

(declare-fun e!3126296 () Bool)

(declare-fun e!3126297 () Bool)

(assert (=> b!5002943 (= e!3126296 e!3126297)))

(declare-fun c!853876 () Bool)

(assert (=> b!5002943 (= c!853876 ((_ is EmptyLang!13791) r!12727))))

(declare-fun b!5002944 () Bool)

(declare-fun res!2134778 () Bool)

(assert (=> b!5002944 (=> (not res!2134778) (not e!3126291))))

(declare-fun call!349182 () Bool)

(assert (=> b!5002944 (= res!2134778 (not call!349182))))

(declare-fun b!5002945 () Bool)

(declare-fun res!2134779 () Bool)

(declare-fun e!3126292 () Bool)

(assert (=> b!5002945 (=> res!2134779 e!3126292)))

(assert (=> b!5002945 (= res!2134779 (not (isEmpty!31320 (tail!9862 lt!2069916))))))

(declare-fun d!1610290 () Bool)

(assert (=> d!1610290 e!3126296))

(declare-fun c!853875 () Bool)

(assert (=> d!1610290 (= c!853875 ((_ is EmptyExpr!13791) r!12727))))

(declare-fun e!3126295 () Bool)

(assert (=> d!1610290 (= lt!2070060 e!3126295)))

(declare-fun c!853877 () Bool)

(assert (=> d!1610290 (= c!853877 (isEmpty!31320 lt!2069916))))

(assert (=> d!1610290 (validRegex!6088 r!12727)))

(assert (=> d!1610290 (= (matchR!6755 r!12727 lt!2069916) lt!2070060)))

(declare-fun b!5002946 () Bool)

(assert (=> b!5002946 (= e!3126296 (= lt!2070060 call!349182))))

(declare-fun b!5002949 () Bool)

(declare-fun res!2134776 () Bool)

(assert (=> b!5002949 (=> (not res!2134776) (not e!3126291))))

(assert (=> b!5002949 (= res!2134776 (isEmpty!31320 (tail!9862 lt!2069916)))))

(declare-fun b!5002950 () Bool)

(assert (=> b!5002950 (= e!3126292 (not (= (head!10729 lt!2069916) (c!853793 r!12727))))))

(declare-fun b!5002951 () Bool)

(assert (=> b!5002951 (= e!3126295 (matchR!6755 (derivativeStep!3975 r!12727 (head!10729 lt!2069916)) (tail!9862 lt!2069916)))))

(declare-fun b!5002952 () Bool)

(declare-fun e!3126289 () Bool)

(assert (=> b!5002952 (= e!3126290 e!3126289)))

(declare-fun res!2134773 () Bool)

(assert (=> b!5002952 (=> (not res!2134773) (not e!3126289))))

(assert (=> b!5002952 (= res!2134773 (not lt!2070060))))

(declare-fun b!5002953 () Bool)

(declare-fun res!2134777 () Bool)

(assert (=> b!5002953 (=> res!2134777 e!3126290)))

(assert (=> b!5002953 (= res!2134777 (not ((_ is ElementMatch!13791) r!12727)))))

(assert (=> b!5002953 (= e!3126297 e!3126290)))

(declare-fun bm!349177 () Bool)

(assert (=> bm!349177 (= call!349182 (isEmpty!31320 lt!2069916))))

(declare-fun b!5002954 () Bool)

(assert (=> b!5002954 (= e!3126291 (= (head!10729 lt!2069916) (c!853793 r!12727)))))

(declare-fun b!5002955 () Bool)

(assert (=> b!5002955 (= e!3126295 (nullable!4685 r!12727))))

(declare-fun b!5002956 () Bool)

(assert (=> b!5002956 (= e!3126297 (not lt!2070060))))

(declare-fun b!5002957 () Bool)

(assert (=> b!5002957 (= e!3126289 e!3126292)))

(declare-fun res!2134772 () Bool)

(assert (=> b!5002957 (=> res!2134772 e!3126292)))

(assert (=> b!5002957 (= res!2134772 call!349182)))

(assert (= (and d!1610290 c!853877) b!5002955))

(assert (= (and d!1610290 (not c!853877)) b!5002951))

(assert (= (and d!1610290 c!853875) b!5002946))

(assert (= (and d!1610290 (not c!853875)) b!5002943))

(assert (= (and b!5002943 c!853876) b!5002956))

(assert (= (and b!5002943 (not c!853876)) b!5002953))

(assert (= (and b!5002953 (not res!2134777)) b!5002942))

(assert (= (and b!5002942 res!2134771) b!5002944))

(assert (= (and b!5002944 res!2134778) b!5002949))

(assert (= (and b!5002949 res!2134776) b!5002954))

(assert (= (and b!5002942 (not res!2134780)) b!5002952))

(assert (= (and b!5002952 res!2134773) b!5002957))

(assert (= (and b!5002957 (not res!2134772)) b!5002945))

(assert (= (and b!5002945 (not res!2134779)) b!5002950))

(assert (= (or b!5002946 b!5002944 b!5002957) bm!349177))

(declare-fun m!6036756 () Bool)

(assert (=> bm!349177 m!6036756))

(declare-fun m!6036758 () Bool)

(assert (=> b!5002949 m!6036758))

(assert (=> b!5002949 m!6036758))

(declare-fun m!6036760 () Bool)

(assert (=> b!5002949 m!6036760))

(assert (=> b!5002945 m!6036758))

(assert (=> b!5002945 m!6036758))

(assert (=> b!5002945 m!6036760))

(declare-fun m!6036762 () Bool)

(assert (=> b!5002951 m!6036762))

(assert (=> b!5002951 m!6036762))

(declare-fun m!6036764 () Bool)

(assert (=> b!5002951 m!6036764))

(assert (=> b!5002951 m!6036758))

(assert (=> b!5002951 m!6036764))

(assert (=> b!5002951 m!6036758))

(declare-fun m!6036766 () Bool)

(assert (=> b!5002951 m!6036766))

(assert (=> b!5002955 m!6036728))

(assert (=> b!5002950 m!6036762))

(assert (=> d!1610290 m!6036756))

(assert (=> d!1610290 m!6036482))

(assert (=> b!5002954 m!6036762))

(assert (=> b!5002636 d!1610290))

(declare-fun d!1610292 () Bool)

(assert (=> d!1610292 (= (matchR!6755 r!12727 lt!2069916) (matchZipper!559 z!4183 lt!2069916))))

(declare-fun lt!2070061 () Unit!149015)

(assert (=> d!1610292 (= lt!2070061 (choose!36987 z!4183 lt!2069911 r!12727 lt!2069916))))

(assert (=> d!1610292 (validRegex!6088 r!12727)))

(assert (=> d!1610292 (= (theoremZipperRegexEquiv!163 z!4183 lt!2069911 r!12727 lt!2069916) lt!2070061)))

(declare-fun bs!1185839 () Bool)

(assert (= bs!1185839 d!1610292))

(assert (=> bs!1185839 m!6036518))

(assert (=> bs!1185839 m!6036464))

(declare-fun m!6036768 () Bool)

(assert (=> bs!1185839 m!6036768))

(assert (=> bs!1185839 m!6036482))

(assert (=> b!5002636 d!1610292))

(declare-fun d!1610294 () Bool)

(declare-fun lt!2070107 () tuple2!63002)

(assert (=> d!1610294 (= (++!12637 (_1!34804 lt!2070107) (_2!34804 lt!2070107)) lt!2069926)))

(declare-fun sizeTr!395 (List!57979 Int) Int)

(assert (=> d!1610294 (= lt!2070107 (findLongestMatchInner!1980 r!12727 Nil!57855 0 lt!2069926 lt!2069926 (sizeTr!395 lt!2069926 0)))))

(declare-fun lt!2070108 () Unit!149015)

(declare-fun lt!2070111 () Unit!149015)

(assert (=> d!1610294 (= lt!2070108 lt!2070111)))

(declare-fun lt!2070112 () List!57979)

(declare-fun lt!2070113 () Int)

(assert (=> d!1610294 (= (sizeTr!395 lt!2070112 lt!2070113) (+ (size!38453 lt!2070112) lt!2070113))))

(declare-fun lemmaSizeTrEqualsSize!394 (List!57979 Int) Unit!149015)

(assert (=> d!1610294 (= lt!2070111 (lemmaSizeTrEqualsSize!394 lt!2070112 lt!2070113))))

(assert (=> d!1610294 (= lt!2070113 0)))

(assert (=> d!1610294 (= lt!2070112 Nil!57855)))

(declare-fun lt!2070114 () Unit!149015)

(declare-fun lt!2070109 () Unit!149015)

(assert (=> d!1610294 (= lt!2070114 lt!2070109)))

(declare-fun lt!2070110 () Int)

(assert (=> d!1610294 (= (sizeTr!395 lt!2069926 lt!2070110) (+ (size!38453 lt!2069926) lt!2070110))))

(assert (=> d!1610294 (= lt!2070109 (lemmaSizeTrEqualsSize!394 lt!2069926 lt!2070110))))

(assert (=> d!1610294 (= lt!2070110 0)))

(assert (=> d!1610294 (validRegex!6088 r!12727)))

(assert (=> d!1610294 (= (findLongestMatch!1804 r!12727 lt!2069926) lt!2070107)))

(declare-fun bs!1185840 () Bool)

(assert (= bs!1185840 d!1610294))

(declare-fun m!6036820 () Bool)

(assert (=> bs!1185840 m!6036820))

(declare-fun m!6036822 () Bool)

(assert (=> bs!1185840 m!6036822))

(declare-fun m!6036824 () Bool)

(assert (=> bs!1185840 m!6036824))

(declare-fun m!6036826 () Bool)

(assert (=> bs!1185840 m!6036826))

(assert (=> bs!1185840 m!6036820))

(declare-fun m!6036828 () Bool)

(assert (=> bs!1185840 m!6036828))

(declare-fun m!6036830 () Bool)

(assert (=> bs!1185840 m!6036830))

(assert (=> bs!1185840 m!6036482))

(assert (=> bs!1185840 m!6036448))

(declare-fun m!6036832 () Bool)

(assert (=> bs!1185840 m!6036832))

(declare-fun m!6036834 () Bool)

(assert (=> bs!1185840 m!6036834))

(assert (=> b!5002646 d!1610294))

(declare-fun d!1610300 () Bool)

(assert (=> d!1610300 (= (list!18616 (_1!34803 lt!2069915)) (list!18618 (c!853794 (_1!34803 lt!2069915))))))

(declare-fun bs!1185841 () Bool)

(assert (= bs!1185841 d!1610300))

(declare-fun m!6036836 () Bool)

(assert (=> bs!1185841 m!6036836))

(assert (=> b!5002646 d!1610300))

(declare-fun d!1610302 () Bool)

(declare-fun lt!2070115 () Int)

(assert (=> d!1610302 (= lt!2070115 (size!38453 (list!18616 input!5597)))))

(assert (=> d!1610302 (= lt!2070115 (size!38454 (c!853794 input!5597)))))

(assert (=> d!1610302 (= (size!38452 input!5597) lt!2070115)))

(declare-fun bs!1185842 () Bool)

(assert (= bs!1185842 d!1610302))

(assert (=> bs!1185842 m!6036440))

(assert (=> bs!1185842 m!6036440))

(declare-fun m!6036838 () Bool)

(assert (=> bs!1185842 m!6036838))

(declare-fun m!6036840 () Bool)

(assert (=> bs!1185842 m!6036840))

(assert (=> b!5002646 d!1610302))

(declare-fun d!1610304 () Bool)

(declare-fun lt!2070116 () Int)

(assert (=> d!1610304 (= lt!2070116 (size!38453 (list!18616 totalInput!1012)))))

(assert (=> d!1610304 (= lt!2070116 (size!38454 (c!853794 totalInput!1012)))))

(assert (=> d!1610304 (= (size!38452 totalInput!1012) lt!2070116)))

(declare-fun bs!1185843 () Bool)

(assert (= bs!1185843 d!1610304))

(assert (=> bs!1185843 m!6036438))

(assert (=> bs!1185843 m!6036438))

(declare-fun m!6036842 () Bool)

(assert (=> bs!1185843 m!6036842))

(declare-fun m!6036844 () Bool)

(assert (=> bs!1185843 m!6036844))

(assert (=> b!5002646 d!1610304))

(declare-fun e!3126321 () Bool)

(declare-fun lt!2070123 () List!57979)

(declare-fun b!5003003 () Bool)

(assert (=> b!5003003 (= e!3126321 (or (not (= lt!2069933 Nil!57855)) (= lt!2070123 lt!2069916)))))

(declare-fun b!5003002 () Bool)

(declare-fun res!2134798 () Bool)

(assert (=> b!5003002 (=> (not res!2134798) (not e!3126321))))

(assert (=> b!5003002 (= res!2134798 (= (size!38453 lt!2070123) (+ (size!38453 lt!2069916) (size!38453 lt!2069933))))))

(declare-fun b!5003000 () Bool)

(declare-fun e!3126322 () List!57979)

(assert (=> b!5003000 (= e!3126322 lt!2069933)))

(declare-fun b!5003001 () Bool)

(assert (=> b!5003001 (= e!3126322 (Cons!57855 (h!64303 lt!2069916) (++!12637 (t!370325 lt!2069916) lt!2069933)))))

(declare-fun d!1610306 () Bool)

(assert (=> d!1610306 e!3126321))

(declare-fun res!2134797 () Bool)

(assert (=> d!1610306 (=> (not res!2134797) (not e!3126321))))

(declare-fun content!10244 (List!57979) (InoxSet C!27832))

(assert (=> d!1610306 (= res!2134797 (= (content!10244 lt!2070123) ((_ map or) (content!10244 lt!2069916) (content!10244 lt!2069933))))))

(assert (=> d!1610306 (= lt!2070123 e!3126322)))

(declare-fun c!853891 () Bool)

(assert (=> d!1610306 (= c!853891 ((_ is Nil!57855) lt!2069916))))

(assert (=> d!1610306 (= (++!12637 lt!2069916 lt!2069933) lt!2070123)))

(assert (= (and d!1610306 c!853891) b!5003000))

(assert (= (and d!1610306 (not c!853891)) b!5003001))

(assert (= (and d!1610306 res!2134797) b!5003002))

(assert (= (and b!5003002 res!2134798) b!5003003))

(declare-fun m!6036856 () Bool)

(assert (=> b!5003002 m!6036856))

(declare-fun m!6036858 () Bool)

(assert (=> b!5003002 m!6036858))

(declare-fun m!6036862 () Bool)

(assert (=> b!5003002 m!6036862))

(declare-fun m!6036864 () Bool)

(assert (=> b!5003001 m!6036864))

(declare-fun m!6036866 () Bool)

(assert (=> d!1610306 m!6036866))

(declare-fun m!6036868 () Bool)

(assert (=> d!1610306 m!6036868))

(declare-fun m!6036870 () Bool)

(assert (=> d!1610306 m!6036870))

(assert (=> b!5002646 d!1610306))

(declare-fun d!1610314 () Bool)

(declare-fun lt!2070142 () tuple2!63000)

(assert (=> d!1610314 (= (++!12637 (list!18616 (_1!34803 lt!2070142)) (list!18616 (_2!34803 lt!2070142))) (list!18616 input!5597))))

(declare-fun lt!2070143 () Int)

(declare-fun splitAt!444 (BalanceConc!30050 Int) tuple2!63000)

(assert (=> d!1610314 (= lt!2070142 (splitAt!444 input!5597 (findLongestMatchInnerZipperFastV2!131 z!4183 (- lt!2070143 (size!38452 input!5597)) totalInput!1012 lt!2070143)))))

(assert (=> d!1610314 (= lt!2070143 (size!38452 totalInput!1012))))

(assert (=> d!1610314 (isSuffix!1357 (list!18616 input!5597) (list!18616 totalInput!1012))))

(assert (=> d!1610314 (= (findLongestMatchZipperFastV2!93 z!4183 input!5597 totalInput!1012) lt!2070142)))

(declare-fun bs!1185849 () Bool)

(assert (= bs!1185849 d!1610314))

(declare-fun m!6036896 () Bool)

(assert (=> bs!1185849 m!6036896))

(assert (=> bs!1185849 m!6036502))

(assert (=> bs!1185849 m!6036438))

(assert (=> bs!1185849 m!6036896))

(declare-fun m!6036898 () Bool)

(assert (=> bs!1185849 m!6036898))

(assert (=> bs!1185849 m!6036440))

(assert (=> bs!1185849 m!6036438))

(declare-fun m!6036900 () Bool)

(assert (=> bs!1185849 m!6036900))

(declare-fun m!6036902 () Bool)

(assert (=> bs!1185849 m!6036902))

(declare-fun m!6036904 () Bool)

(assert (=> bs!1185849 m!6036904))

(assert (=> bs!1185849 m!6036902))

(declare-fun m!6036906 () Bool)

(assert (=> bs!1185849 m!6036906))

(assert (=> bs!1185849 m!6036904))

(assert (=> bs!1185849 m!6036440))

(assert (=> bs!1185849 m!6036498))

(assert (=> b!5002646 d!1610314))

(declare-fun d!1610328 () Bool)

(assert (=> d!1610328 (= (list!18616 (_2!34803 lt!2069915)) (list!18618 (c!853794 (_2!34803 lt!2069915))))))

(declare-fun bs!1185850 () Bool)

(assert (= bs!1185850 d!1610328))

(declare-fun m!6036908 () Bool)

(assert (=> bs!1185850 m!6036908))

(assert (=> b!5002646 d!1610328))

(declare-fun b!5003020 () Bool)

(declare-fun e!3126335 () Bool)

(assert (=> b!5003020 (= e!3126335 (>= (size!38453 lt!2069923) (size!38453 (take!650 lt!2069923 lt!2069913))))))

(declare-fun b!5003019 () Bool)

(declare-fun e!3126333 () Bool)

(assert (=> b!5003019 (= e!3126333 (isPrefix!5344 (tail!9862 (take!650 lt!2069923 lt!2069913)) (tail!9862 lt!2069923)))))

(declare-fun d!1610330 () Bool)

(assert (=> d!1610330 e!3126335))

(declare-fun res!2134813 () Bool)

(assert (=> d!1610330 (=> res!2134813 e!3126335)))

(declare-fun lt!2070170 () Bool)

(assert (=> d!1610330 (= res!2134813 (not lt!2070170))))

(declare-fun e!3126334 () Bool)

(assert (=> d!1610330 (= lt!2070170 e!3126334)))

(declare-fun res!2134812 () Bool)

(assert (=> d!1610330 (=> res!2134812 e!3126334)))

(assert (=> d!1610330 (= res!2134812 ((_ is Nil!57855) (take!650 lt!2069923 lt!2069913)))))

(assert (=> d!1610330 (= (isPrefix!5344 (take!650 lt!2069923 lt!2069913) lt!2069923) lt!2070170)))

(declare-fun b!5003018 () Bool)

(declare-fun res!2134810 () Bool)

(assert (=> b!5003018 (=> (not res!2134810) (not e!3126333))))

(assert (=> b!5003018 (= res!2134810 (= (head!10729 (take!650 lt!2069923 lt!2069913)) (head!10729 lt!2069923)))))

(declare-fun b!5003017 () Bool)

(assert (=> b!5003017 (= e!3126334 e!3126333)))

(declare-fun res!2134811 () Bool)

(assert (=> b!5003017 (=> (not res!2134811) (not e!3126333))))

(assert (=> b!5003017 (= res!2134811 (not ((_ is Nil!57855) lt!2069923)))))

(assert (= (and d!1610330 (not res!2134812)) b!5003017))

(assert (= (and b!5003017 res!2134811) b!5003018))

(assert (= (and b!5003018 res!2134810) b!5003019))

(assert (= (and d!1610330 (not res!2134813)) b!5003020))

(assert (=> b!5003020 m!6036710))

(assert (=> b!5003020 m!6036462))

(declare-fun m!6036926 () Bool)

(assert (=> b!5003020 m!6036926))

(assert (=> b!5003019 m!6036462))

(declare-fun m!6036930 () Bool)

(assert (=> b!5003019 m!6036930))

(declare-fun m!6036932 () Bool)

(assert (=> b!5003019 m!6036932))

(assert (=> b!5003019 m!6036930))

(assert (=> b!5003019 m!6036932))

(declare-fun m!6036934 () Bool)

(assert (=> b!5003019 m!6036934))

(assert (=> b!5003018 m!6036462))

(declare-fun m!6036936 () Bool)

(assert (=> b!5003018 m!6036936))

(declare-fun m!6036938 () Bool)

(assert (=> b!5003018 m!6036938))

(assert (=> b!5002637 d!1610330))

(declare-fun d!1610336 () Bool)

(declare-fun lt!2070171 () Int)

(assert (=> d!1610336 (>= lt!2070171 0)))

(declare-fun e!3126336 () Int)

(assert (=> d!1610336 (= lt!2070171 e!3126336)))

(declare-fun c!853893 () Bool)

(assert (=> d!1610336 (= c!853893 ((_ is Nil!57855) lt!2069926))))

(assert (=> d!1610336 (= (size!38453 lt!2069926) lt!2070171)))

(declare-fun b!5003021 () Bool)

(assert (=> b!5003021 (= e!3126336 0)))

(declare-fun b!5003022 () Bool)

(assert (=> b!5003022 (= e!3126336 (+ 1 (size!38453 (t!370325 lt!2069926))))))

(assert (= (and d!1610336 c!853893) b!5003021))

(assert (= (and d!1610336 (not c!853893)) b!5003022))

(declare-fun m!6036940 () Bool)

(assert (=> b!5003022 m!6036940))

(assert (=> b!5002637 d!1610336))

(declare-fun bm!349206 () Bool)

(declare-fun call!349213 () Unit!149015)

(assert (=> bm!349206 (= call!349213 (lemmaIsPrefixSameLengthThenSameList!1271 lt!2069926 Nil!57855 lt!2069926))))

(declare-fun call!349215 () Regex!13791)

(declare-fun call!349212 () tuple2!63002)

(declare-fun call!349218 () List!57979)

(declare-fun lt!2070263 () List!57979)

(declare-fun bm!349207 () Bool)

(assert (=> bm!349207 (= call!349212 (findLongestMatchInner!1980 call!349215 lt!2070263 (+ (size!38453 Nil!57855) 1) call!349218 lt!2069926 (size!38453 lt!2069926)))))

(declare-fun b!5003164 () Bool)

(declare-fun e!3126411 () Bool)

(declare-fun e!3126407 () Bool)

(assert (=> b!5003164 (= e!3126411 e!3126407)))

(declare-fun res!2134831 () Bool)

(assert (=> b!5003164 (=> res!2134831 e!3126407)))

(declare-fun lt!2070257 () tuple2!63002)

(assert (=> b!5003164 (= res!2134831 (isEmpty!31320 (_1!34804 lt!2070257)))))

(declare-fun b!5003165 () Bool)

(assert (=> b!5003165 (= e!3126407 (>= (size!38453 (_1!34804 lt!2070257)) (size!38453 Nil!57855)))))

(declare-fun b!5003166 () Bool)

(declare-fun e!3126408 () Unit!149015)

(declare-fun Unit!149020 () Unit!149015)

(assert (=> b!5003166 (= e!3126408 Unit!149020)))

(declare-fun b!5003167 () Bool)

(declare-fun e!3126406 () tuple2!63002)

(declare-fun lt!2070266 () tuple2!63002)

(assert (=> b!5003167 (= e!3126406 lt!2070266)))

(declare-fun b!5003168 () Bool)

(declare-fun e!3126412 () tuple2!63002)

(assert (=> b!5003168 (= e!3126412 e!3126406)))

(assert (=> b!5003168 (= lt!2070266 call!349212)))

(declare-fun c!853930 () Bool)

(assert (=> b!5003168 (= c!853930 (isEmpty!31320 (_1!34804 lt!2070266)))))

(declare-fun b!5003169 () Bool)

(declare-fun e!3126410 () tuple2!63002)

(declare-fun e!3126409 () tuple2!63002)

(assert (=> b!5003169 (= e!3126410 e!3126409)))

(declare-fun c!853931 () Bool)

(assert (=> b!5003169 (= c!853931 (= (size!38453 Nil!57855) (size!38453 lt!2069926)))))

(declare-fun b!5003171 () Bool)

(declare-fun Unit!149021 () Unit!149015)

(assert (=> b!5003171 (= e!3126408 Unit!149021)))

(declare-fun lt!2070267 () Unit!149015)

(declare-fun call!349216 () Unit!149015)

(assert (=> b!5003171 (= lt!2070267 call!349216)))

(declare-fun call!349211 () Bool)

(assert (=> b!5003171 call!349211))

(declare-fun lt!2070271 () Unit!149015)

(assert (=> b!5003171 (= lt!2070271 lt!2070267)))

(declare-fun lt!2070256 () Unit!149015)

(assert (=> b!5003171 (= lt!2070256 call!349213)))

(assert (=> b!5003171 (= lt!2069926 Nil!57855)))

(declare-fun lt!2070272 () Unit!149015)

(assert (=> b!5003171 (= lt!2070272 lt!2070256)))

(assert (=> b!5003171 false))

(declare-fun bm!349208 () Bool)

(declare-fun call!349214 () Bool)

(assert (=> bm!349208 (= call!349214 (nullable!4685 r!12727))))

(declare-fun bm!349209 () Bool)

(declare-fun call!349217 () C!27832)

(assert (=> bm!349209 (= call!349217 (head!10729 lt!2069926))))

(declare-fun b!5003172 () Bool)

(declare-fun e!3126413 () tuple2!63002)

(assert (=> b!5003172 (= e!3126413 (tuple2!63003 Nil!57855 Nil!57855))))

(declare-fun b!5003173 () Bool)

(assert (=> b!5003173 (= e!3126413 (tuple2!63003 Nil!57855 lt!2069926))))

(declare-fun bm!349210 () Bool)

(assert (=> bm!349210 (= call!349211 (isPrefix!5344 lt!2069926 lt!2069926))))

(declare-fun b!5003174 () Bool)

(declare-fun c!853933 () Bool)

(assert (=> b!5003174 (= c!853933 call!349214)))

(declare-fun lt!2070250 () Unit!149015)

(declare-fun lt!2070253 () Unit!149015)

(assert (=> b!5003174 (= lt!2070250 lt!2070253)))

(assert (=> b!5003174 (= lt!2069926 Nil!57855)))

(assert (=> b!5003174 (= lt!2070253 call!349213)))

(declare-fun lt!2070245 () Unit!149015)

(declare-fun lt!2070259 () Unit!149015)

(assert (=> b!5003174 (= lt!2070245 lt!2070259)))

(assert (=> b!5003174 call!349211))

(assert (=> b!5003174 (= lt!2070259 call!349216)))

(assert (=> b!5003174 (= e!3126409 e!3126413)))

(declare-fun bm!349211 () Bool)

(declare-fun lemmaIsPrefixRefl!3623 (List!57979 List!57979) Unit!149015)

(assert (=> bm!349211 (= call!349216 (lemmaIsPrefixRefl!3623 lt!2069926 lt!2069926))))

(declare-fun b!5003175 () Bool)

(assert (=> b!5003175 (= e!3126410 (tuple2!63003 Nil!57855 lt!2069926))))

(declare-fun d!1610338 () Bool)

(assert (=> d!1610338 e!3126411))

(declare-fun res!2134832 () Bool)

(assert (=> d!1610338 (=> (not res!2134832) (not e!3126411))))

(assert (=> d!1610338 (= res!2134832 (= (++!12637 (_1!34804 lt!2070257) (_2!34804 lt!2070257)) lt!2069926))))

(assert (=> d!1610338 (= lt!2070257 e!3126410)))

(declare-fun c!853929 () Bool)

(declare-fun lostCause!1184 (Regex!13791) Bool)

(assert (=> d!1610338 (= c!853929 (lostCause!1184 r!12727))))

(declare-fun lt!2070246 () Unit!149015)

(declare-fun Unit!149022 () Unit!149015)

(assert (=> d!1610338 (= lt!2070246 Unit!149022)))

(declare-fun getSuffix!3140 (List!57979 List!57979) List!57979)

(assert (=> d!1610338 (= (getSuffix!3140 lt!2069926 Nil!57855) lt!2069926)))

(declare-fun lt!2070249 () Unit!149015)

(declare-fun lt!2070254 () Unit!149015)

(assert (=> d!1610338 (= lt!2070249 lt!2070254)))

(declare-fun lt!2070265 () List!57979)

(assert (=> d!1610338 (= lt!2069926 lt!2070265)))

(declare-fun lemmaSamePrefixThenSameSuffix!2554 (List!57979 List!57979 List!57979 List!57979 List!57979) Unit!149015)

(assert (=> d!1610338 (= lt!2070254 (lemmaSamePrefixThenSameSuffix!2554 Nil!57855 lt!2069926 Nil!57855 lt!2070265 lt!2069926))))

(assert (=> d!1610338 (= lt!2070265 (getSuffix!3140 lt!2069926 Nil!57855))))

(declare-fun lt!2070252 () Unit!149015)

(declare-fun lt!2070260 () Unit!149015)

(assert (=> d!1610338 (= lt!2070252 lt!2070260)))

(assert (=> d!1610338 (isPrefix!5344 Nil!57855 (++!12637 Nil!57855 lt!2069926))))

(assert (=> d!1610338 (= lt!2070260 (lemmaConcatTwoListThenFirstIsPrefix!3442 Nil!57855 lt!2069926))))

(assert (=> d!1610338 (validRegex!6088 r!12727)))

(assert (=> d!1610338 (= (findLongestMatchInner!1980 r!12727 Nil!57855 (size!38453 Nil!57855) lt!2069926 lt!2069926 (size!38453 lt!2069926)) lt!2070257)))

(declare-fun b!5003170 () Bool)

(assert (=> b!5003170 (= e!3126412 call!349212)))

(declare-fun b!5003176 () Bool)

(assert (=> b!5003176 (= e!3126406 (tuple2!63003 Nil!57855 lt!2069926))))

(declare-fun bm!349212 () Bool)

(assert (=> bm!349212 (= call!349218 (tail!9862 lt!2069926))))

(declare-fun b!5003177 () Bool)

(declare-fun c!853934 () Bool)

(assert (=> b!5003177 (= c!853934 call!349214)))

(declare-fun lt!2070248 () Unit!149015)

(declare-fun lt!2070247 () Unit!149015)

(assert (=> b!5003177 (= lt!2070248 lt!2070247)))

(declare-fun lt!2070261 () C!27832)

(declare-fun lt!2070258 () List!57979)

(assert (=> b!5003177 (= (++!12637 (++!12637 Nil!57855 (Cons!57855 lt!2070261 Nil!57855)) lt!2070258) lt!2069926)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1496 (List!57979 C!27832 List!57979 List!57979) Unit!149015)

(assert (=> b!5003177 (= lt!2070247 (lemmaMoveElementToOtherListKeepsConcatEq!1496 Nil!57855 lt!2070261 lt!2070258 lt!2069926))))

(assert (=> b!5003177 (= lt!2070258 (tail!9862 lt!2069926))))

(assert (=> b!5003177 (= lt!2070261 (head!10729 lt!2069926))))

(declare-fun lt!2070255 () Unit!149015)

(declare-fun lt!2070269 () Unit!149015)

(assert (=> b!5003177 (= lt!2070255 lt!2070269)))

(assert (=> b!5003177 (isPrefix!5344 (++!12637 Nil!57855 (Cons!57855 (head!10729 (getSuffix!3140 lt!2069926 Nil!57855)) Nil!57855)) lt!2069926)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!885 (List!57979 List!57979) Unit!149015)

(assert (=> b!5003177 (= lt!2070269 (lemmaAddHeadSuffixToPrefixStillPrefix!885 Nil!57855 lt!2069926))))

(declare-fun lt!2070262 () Unit!149015)

(declare-fun lt!2070251 () Unit!149015)

(assert (=> b!5003177 (= lt!2070262 lt!2070251)))

(assert (=> b!5003177 (= lt!2070251 (lemmaAddHeadSuffixToPrefixStillPrefix!885 Nil!57855 lt!2069926))))

(assert (=> b!5003177 (= lt!2070263 (++!12637 Nil!57855 (Cons!57855 (head!10729 lt!2069926) Nil!57855)))))

(declare-fun lt!2070264 () Unit!149015)

(assert (=> b!5003177 (= lt!2070264 e!3126408)))

(declare-fun c!853932 () Bool)

(assert (=> b!5003177 (= c!853932 (= (size!38453 Nil!57855) (size!38453 lt!2069926)))))

(declare-fun lt!2070270 () Unit!149015)

(declare-fun lt!2070268 () Unit!149015)

(assert (=> b!5003177 (= lt!2070270 lt!2070268)))

(assert (=> b!5003177 (<= (size!38453 Nil!57855) (size!38453 lt!2069926))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!811 (List!57979 List!57979) Unit!149015)

(assert (=> b!5003177 (= lt!2070268 (lemmaIsPrefixThenSmallerEqSize!811 Nil!57855 lt!2069926))))

(assert (=> b!5003177 (= e!3126409 e!3126412)))

(declare-fun bm!349213 () Bool)

(assert (=> bm!349213 (= call!349215 (derivativeStep!3975 r!12727 call!349217))))

(assert (= (and d!1610338 c!853929) b!5003175))

(assert (= (and d!1610338 (not c!853929)) b!5003169))

(assert (= (and b!5003169 c!853931) b!5003174))

(assert (= (and b!5003169 (not c!853931)) b!5003177))

(assert (= (and b!5003174 c!853933) b!5003172))

(assert (= (and b!5003174 (not c!853933)) b!5003173))

(assert (= (and b!5003177 c!853932) b!5003171))

(assert (= (and b!5003177 (not c!853932)) b!5003166))

(assert (= (and b!5003177 c!853934) b!5003168))

(assert (= (and b!5003177 (not c!853934)) b!5003170))

(assert (= (and b!5003168 c!853930) b!5003176))

(assert (= (and b!5003168 (not c!853930)) b!5003167))

(assert (= (or b!5003168 b!5003170) bm!349209))

(assert (= (or b!5003168 b!5003170) bm!349212))

(assert (= (or b!5003168 b!5003170) bm!349213))

(assert (= (or b!5003168 b!5003170) bm!349207))

(assert (= (or b!5003174 b!5003177) bm!349208))

(assert (= (or b!5003174 b!5003171) bm!349210))

(assert (= (or b!5003174 b!5003171) bm!349206))

(assert (= (or b!5003174 b!5003171) bm!349211))

(assert (= (and d!1610338 res!2134832) b!5003164))

(assert (= (and b!5003164 (not res!2134831)) b!5003165))

(declare-fun m!6037038 () Bool)

(assert (=> b!5003164 m!6037038))

(declare-fun m!6037040 () Bool)

(assert (=> b!5003177 m!6037040))

(declare-fun m!6037042 () Bool)

(assert (=> b!5003177 m!6037042))

(declare-fun m!6037044 () Bool)

(assert (=> b!5003177 m!6037044))

(assert (=> b!5003177 m!6037044))

(declare-fun m!6037046 () Bool)

(assert (=> b!5003177 m!6037046))

(declare-fun m!6037048 () Bool)

(assert (=> b!5003177 m!6037048))

(assert (=> b!5003177 m!6036448))

(declare-fun m!6037050 () Bool)

(assert (=> b!5003177 m!6037050))

(declare-fun m!6037052 () Bool)

(assert (=> b!5003177 m!6037052))

(assert (=> b!5003177 m!6037052))

(declare-fun m!6037054 () Bool)

(assert (=> b!5003177 m!6037054))

(declare-fun m!6037056 () Bool)

(assert (=> b!5003177 m!6037056))

(assert (=> b!5003177 m!6037040))

(assert (=> b!5003177 m!6036446))

(declare-fun m!6037058 () Bool)

(assert (=> b!5003177 m!6037058))

(declare-fun m!6037060 () Bool)

(assert (=> b!5003177 m!6037060))

(declare-fun m!6037062 () Bool)

(assert (=> b!5003177 m!6037062))

(declare-fun m!6037064 () Bool)

(assert (=> bm!349211 m!6037064))

(assert (=> bm!349209 m!6037050))

(assert (=> bm!349208 m!6036728))

(declare-fun m!6037066 () Bool)

(assert (=> b!5003168 m!6037066))

(declare-fun m!6037068 () Bool)

(assert (=> bm!349206 m!6037068))

(assert (=> bm!349212 m!6037056))

(declare-fun m!6037070 () Bool)

(assert (=> b!5003165 m!6037070))

(assert (=> b!5003165 m!6036446))

(declare-fun m!6037072 () Bool)

(assert (=> d!1610338 m!6037072))

(assert (=> d!1610338 m!6036482))

(declare-fun m!6037074 () Bool)

(assert (=> d!1610338 m!6037074))

(assert (=> d!1610338 m!6037052))

(declare-fun m!6037076 () Bool)

(assert (=> d!1610338 m!6037076))

(declare-fun m!6037078 () Bool)

(assert (=> d!1610338 m!6037078))

(declare-fun m!6037080 () Bool)

(assert (=> d!1610338 m!6037080))

(declare-fun m!6037082 () Bool)

(assert (=> d!1610338 m!6037082))

(assert (=> d!1610338 m!6037078))

(declare-fun m!6037084 () Bool)

(assert (=> bm!349210 m!6037084))

(assert (=> bm!349207 m!6036448))

(declare-fun m!6037086 () Bool)

(assert (=> bm!349207 m!6037086))

(declare-fun m!6037088 () Bool)

(assert (=> bm!349213 m!6037088))

(assert (=> b!5002637 d!1610338))

(declare-fun d!1610360 () Bool)

(assert (=> d!1610360 (isPrefix!5344 (_1!34804 lt!2069928) (++!12637 (_1!34804 lt!2069928) (_2!34804 lt!2069928)))))

(declare-fun lt!2070275 () Unit!149015)

(declare-fun choose!36990 (List!57979 List!57979) Unit!149015)

(assert (=> d!1610360 (= lt!2070275 (choose!36990 (_1!34804 lt!2069928) (_2!34804 lt!2069928)))))

(assert (=> d!1610360 (= (lemmaConcatTwoListThenFirstIsPrefix!3442 (_1!34804 lt!2069928) (_2!34804 lt!2069928)) lt!2070275)))

(declare-fun bs!1185857 () Bool)

(assert (= bs!1185857 d!1610360))

(assert (=> bs!1185857 m!6036434))

(assert (=> bs!1185857 m!6036434))

(declare-fun m!6037090 () Bool)

(assert (=> bs!1185857 m!6037090))

(declare-fun m!6037092 () Bool)

(assert (=> bs!1185857 m!6037092))

(assert (=> b!5002637 d!1610360))

(declare-fun d!1610362 () Bool)

(assert (=> d!1610362 (isPrefix!5344 lt!2069916 (++!12637 lt!2069916 lt!2069933))))

(declare-fun lt!2070276 () Unit!149015)

(assert (=> d!1610362 (= lt!2070276 (choose!36990 lt!2069916 lt!2069933))))

(assert (=> d!1610362 (= (lemmaConcatTwoListThenFirstIsPrefix!3442 lt!2069916 lt!2069933) lt!2070276)))

(declare-fun bs!1185858 () Bool)

(assert (= bs!1185858 d!1610362))

(assert (=> bs!1185858 m!6036496))

(assert (=> bs!1185858 m!6036496))

(declare-fun m!6037094 () Bool)

(assert (=> bs!1185858 m!6037094))

(declare-fun m!6037096 () Bool)

(assert (=> bs!1185858 m!6037096))

(assert (=> b!5002637 d!1610362))

(declare-fun b!5003192 () Bool)

(declare-fun e!3126424 () List!57979)

(assert (=> b!5003192 (= e!3126424 (Cons!57855 (h!64303 lt!2069923) (take!650 (t!370325 lt!2069923) (- lt!2069913 1))))))

(declare-fun b!5003193 () Bool)

(declare-fun e!3126425 () Int)

(declare-fun e!3126423 () Int)

(assert (=> b!5003193 (= e!3126425 e!3126423)))

(declare-fun c!853943 () Bool)

(assert (=> b!5003193 (= c!853943 (>= lt!2069913 (size!38453 lt!2069923)))))

(declare-fun b!5003194 () Bool)

(declare-fun e!3126422 () Bool)

(declare-fun lt!2070279 () List!57979)

(assert (=> b!5003194 (= e!3126422 (= (size!38453 lt!2070279) e!3126425))))

(declare-fun c!853941 () Bool)

(assert (=> b!5003194 (= c!853941 (<= lt!2069913 0))))

(declare-fun b!5003195 () Bool)

(assert (=> b!5003195 (= e!3126424 Nil!57855)))

(declare-fun b!5003196 () Bool)

(assert (=> b!5003196 (= e!3126423 (size!38453 lt!2069923))))

(declare-fun d!1610364 () Bool)

(assert (=> d!1610364 e!3126422))

(declare-fun res!2134835 () Bool)

(assert (=> d!1610364 (=> (not res!2134835) (not e!3126422))))

(assert (=> d!1610364 (= res!2134835 (= ((_ map implies) (content!10244 lt!2070279) (content!10244 lt!2069923)) ((as const (InoxSet C!27832)) true)))))

(assert (=> d!1610364 (= lt!2070279 e!3126424)))

(declare-fun c!853942 () Bool)

(assert (=> d!1610364 (= c!853942 (or ((_ is Nil!57855) lt!2069923) (<= lt!2069913 0)))))

(assert (=> d!1610364 (= (take!650 lt!2069923 lt!2069913) lt!2070279)))

(declare-fun b!5003197 () Bool)

(assert (=> b!5003197 (= e!3126423 lt!2069913)))

(declare-fun b!5003198 () Bool)

(assert (=> b!5003198 (= e!3126425 0)))

(assert (= (and d!1610364 c!853942) b!5003195))

(assert (= (and d!1610364 (not c!853942)) b!5003192))

(assert (= (and d!1610364 res!2134835) b!5003194))

(assert (= (and b!5003194 c!853941) b!5003198))

(assert (= (and b!5003194 (not c!853941)) b!5003193))

(assert (= (and b!5003193 c!853943) b!5003196))

(assert (= (and b!5003193 (not c!853943)) b!5003197))

(declare-fun m!6037098 () Bool)

(assert (=> b!5003194 m!6037098))

(assert (=> b!5003196 m!6036710))

(declare-fun m!6037100 () Bool)

(assert (=> b!5003192 m!6037100))

(assert (=> b!5003193 m!6036710))

(declare-fun m!6037102 () Bool)

(assert (=> d!1610364 m!6037102))

(declare-fun m!6037104 () Bool)

(assert (=> d!1610364 m!6037104))

(assert (=> b!5002637 d!1610364))

(declare-fun d!1610366 () Bool)

(declare-fun lt!2070288 () Int)

(assert (=> d!1610366 (and (>= lt!2070288 0) (<= lt!2070288 (- lt!2069931 lt!2069913)))))

(declare-fun e!3126436 () Int)

(assert (=> d!1610366 (= lt!2070288 e!3126436)))

(declare-fun c!853951 () Bool)

(declare-fun e!3126438 () Bool)

(assert (=> d!1610366 (= c!853951 e!3126438)))

(declare-fun res!2134841 () Bool)

(assert (=> d!1610366 (=> res!2134841 e!3126438)))

(assert (=> d!1610366 (= res!2134841 (= lt!2069913 lt!2069931))))

(declare-fun e!3126437 () Bool)

(assert (=> d!1610366 e!3126437))

(declare-fun res!2134840 () Bool)

(assert (=> d!1610366 (=> (not res!2134840) (not e!3126437))))

(assert (=> d!1610366 (= res!2134840 (>= lt!2069913 0))))

(assert (=> d!1610366 (= (findLongestMatchInnerZipperFastV2!131 z!4183 lt!2069913 totalInput!1012 lt!2069931) lt!2070288)))

(declare-fun b!5003215 () Bool)

(declare-fun lostCauseZipper!826 ((InoxSet Context!6432)) Bool)

(assert (=> b!5003215 (= e!3126438 (lostCauseZipper!826 z!4183))))

(declare-fun b!5003216 () Bool)

(declare-fun e!3126440 () Int)

(declare-fun lt!2070287 () Int)

(assert (=> b!5003216 (= e!3126440 (+ 1 lt!2070287))))

(declare-fun b!5003217 () Bool)

(assert (=> b!5003217 (= e!3126436 e!3126440)))

(declare-fun lt!2070286 () (InoxSet Context!6432))

(declare-fun apply!13986 (BalanceConc!30050 Int) C!27832)

(assert (=> b!5003217 (= lt!2070286 (derivationStepZipper!629 z!4183 (apply!13986 totalInput!1012 lt!2069913)))))

(assert (=> b!5003217 (= lt!2070287 (findLongestMatchInnerZipperFastV2!131 lt!2070286 (+ lt!2069913 1) totalInput!1012 lt!2069931))))

(declare-fun c!853950 () Bool)

(assert (=> b!5003217 (= c!853950 (> lt!2070287 0))))

(declare-fun b!5003218 () Bool)

(declare-fun e!3126439 () Int)

(assert (=> b!5003218 (= e!3126439 0)))

(declare-fun b!5003219 () Bool)

(assert (=> b!5003219 (= e!3126436 0)))

(declare-fun b!5003220 () Bool)

(assert (=> b!5003220 (= e!3126439 1)))

(declare-fun b!5003221 () Bool)

(assert (=> b!5003221 (= e!3126437 (<= lt!2069913 (size!38452 totalInput!1012)))))

(declare-fun b!5003222 () Bool)

(declare-fun c!853952 () Bool)

(assert (=> b!5003222 (= c!853952 (nullableZipper!880 lt!2070286))))

(assert (=> b!5003222 (= e!3126440 e!3126439)))

(assert (= (and d!1610366 res!2134840) b!5003221))

(assert (= (and d!1610366 (not res!2134841)) b!5003215))

(assert (= (and d!1610366 c!853951) b!5003219))

(assert (= (and d!1610366 (not c!853951)) b!5003217))

(assert (= (and b!5003217 c!853950) b!5003216))

(assert (= (and b!5003217 (not c!853950)) b!5003222))

(assert (= (and b!5003222 c!853952) b!5003220))

(assert (= (and b!5003222 (not c!853952)) b!5003218))

(declare-fun m!6037106 () Bool)

(assert (=> b!5003215 m!6037106))

(declare-fun m!6037108 () Bool)

(assert (=> b!5003217 m!6037108))

(assert (=> b!5003217 m!6037108))

(declare-fun m!6037110 () Bool)

(assert (=> b!5003217 m!6037110))

(declare-fun m!6037112 () Bool)

(assert (=> b!5003217 m!6037112))

(assert (=> b!5003221 m!6036502))

(declare-fun m!6037114 () Bool)

(assert (=> b!5003222 m!6037114))

(assert (=> b!5002637 d!1610366))

(declare-fun d!1610368 () Bool)

(assert (=> d!1610368 (= (isEmpty!31320 (_1!34804 lt!2069925)) ((_ is Nil!57855) (_1!34804 lt!2069925)))))

(assert (=> b!5002637 d!1610368))

(declare-fun d!1610370 () Bool)

(declare-fun e!3126443 () Bool)

(assert (=> d!1610370 e!3126443))

(declare-fun res!2134844 () Bool)

(assert (=> d!1610370 (=> res!2134844 e!3126443)))

(assert (=> d!1610370 (= res!2134844 (isEmpty!31320 (_1!34804 (findLongestMatchInner!1980 r!12727 Nil!57855 (size!38453 Nil!57855) lt!2069926 lt!2069926 (size!38453 lt!2069926)))))))

(declare-fun lt!2070291 () Unit!149015)

(declare-fun choose!36991 (Regex!13791 List!57979) Unit!149015)

(assert (=> d!1610370 (= lt!2070291 (choose!36991 r!12727 lt!2069926))))

(assert (=> d!1610370 (validRegex!6088 r!12727)))

(assert (=> d!1610370 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1933 r!12727 lt!2069926) lt!2070291)))

(declare-fun b!5003225 () Bool)

(assert (=> b!5003225 (= e!3126443 (matchR!6755 r!12727 (_1!34804 (findLongestMatchInner!1980 r!12727 Nil!57855 (size!38453 Nil!57855) lt!2069926 lt!2069926 (size!38453 lt!2069926)))))))

(assert (= (and d!1610370 (not res!2134844)) b!5003225))

(assert (=> d!1610370 m!6036448))

(assert (=> d!1610370 m!6036446))

(assert (=> d!1610370 m!6036482))

(assert (=> d!1610370 m!6036446))

(assert (=> d!1610370 m!6036448))

(assert (=> d!1610370 m!6036450))

(declare-fun m!6037116 () Bool)

(assert (=> d!1610370 m!6037116))

(declare-fun m!6037118 () Bool)

(assert (=> d!1610370 m!6037118))

(assert (=> b!5003225 m!6036446))

(assert (=> b!5003225 m!6036448))

(assert (=> b!5003225 m!6036446))

(assert (=> b!5003225 m!6036448))

(assert (=> b!5003225 m!6036450))

(declare-fun m!6037120 () Bool)

(assert (=> b!5003225 m!6037120))

(assert (=> b!5002637 d!1610370))

(declare-fun d!1610372 () Bool)

(declare-fun e!3126449 () Bool)

(assert (=> d!1610372 e!3126449))

(declare-fun res!2134849 () Bool)

(assert (=> d!1610372 (=> res!2134849 e!3126449)))

(assert (=> d!1610372 (= res!2134849 (= (findLongestMatchInnerZipperFastV2!131 z!4183 lt!2069913 totalInput!1012 (size!38452 totalInput!1012)) 0))))

(declare-fun lt!2070294 () Unit!149015)

(declare-fun choose!36992 ((InoxSet Context!6432) Int BalanceConc!30050) Unit!149015)

(assert (=> d!1610372 (= lt!2070294 (choose!36992 z!4183 lt!2069913 totalInput!1012))))

(declare-fun e!3126448 () Bool)

(assert (=> d!1610372 e!3126448))

(declare-fun res!2134850 () Bool)

(assert (=> d!1610372 (=> (not res!2134850) (not e!3126448))))

(assert (=> d!1610372 (= res!2134850 (>= lt!2069913 0))))

(assert (=> d!1610372 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!50 z!4183 lt!2069913 totalInput!1012) lt!2070294)))

(declare-fun b!5003230 () Bool)

(assert (=> b!5003230 (= e!3126448 (<= lt!2069913 (size!38452 totalInput!1012)))))

(declare-fun b!5003231 () Bool)

(assert (=> b!5003231 (= e!3126449 (matchZipper!559 z!4183 (take!650 (drop!2454 (list!18616 totalInput!1012) lt!2069913) (findLongestMatchInnerZipperFastV2!131 z!4183 lt!2069913 totalInput!1012 (size!38452 totalInput!1012)))))))

(assert (= (and d!1610372 res!2134850) b!5003230))

(assert (= (and d!1610372 (not res!2134849)) b!5003231))

(assert (=> d!1610372 m!6036502))

(assert (=> d!1610372 m!6036502))

(declare-fun m!6037122 () Bool)

(assert (=> d!1610372 m!6037122))

(declare-fun m!6037124 () Bool)

(assert (=> d!1610372 m!6037124))

(assert (=> b!5003230 m!6036502))

(assert (=> b!5003231 m!6036438))

(declare-fun m!6037126 () Bool)

(assert (=> b!5003231 m!6037126))

(assert (=> b!5003231 m!6036438))

(declare-fun m!6037128 () Bool)

(assert (=> b!5003231 m!6037128))

(declare-fun m!6037130 () Bool)

(assert (=> b!5003231 m!6037130))

(assert (=> b!5003231 m!6037126))

(assert (=> b!5003231 m!6037122))

(assert (=> b!5003231 m!6037128))

(assert (=> b!5003231 m!6036502))

(assert (=> b!5003231 m!6036502))

(assert (=> b!5003231 m!6037122))

(assert (=> b!5002637 d!1610372))

(declare-fun d!1610374 () Bool)

(assert (=> d!1610374 (isPrefix!5344 (take!650 lt!2069923 lt!2069913) lt!2069923)))

(declare-fun lt!2070297 () Unit!149015)

(declare-fun choose!36993 (List!57979 Int) Unit!149015)

(assert (=> d!1610374 (= lt!2070297 (choose!36993 lt!2069923 lt!2069913))))

(assert (=> d!1610374 (>= lt!2069913 0)))

(assert (=> d!1610374 (= (lemmaTakeIsPrefix!144 lt!2069923 lt!2069913) lt!2070297)))

(declare-fun bs!1185859 () Bool)

(assert (= bs!1185859 d!1610374))

(assert (=> bs!1185859 m!6036462))

(assert (=> bs!1185859 m!6036462))

(assert (=> bs!1185859 m!6036470))

(declare-fun m!6037132 () Bool)

(assert (=> bs!1185859 m!6037132))

(assert (=> b!5002637 d!1610374))

(declare-fun b!5003235 () Bool)

(declare-fun e!3126452 () Bool)

(assert (=> b!5003235 (= e!3126452 (>= (size!38453 lt!2069917) (size!38453 (_1!34804 lt!2069928))))))

(declare-fun b!5003234 () Bool)

(declare-fun e!3126450 () Bool)

(assert (=> b!5003234 (= e!3126450 (isPrefix!5344 (tail!9862 (_1!34804 lt!2069928)) (tail!9862 lt!2069917)))))

(declare-fun d!1610376 () Bool)

(assert (=> d!1610376 e!3126452))

(declare-fun res!2134854 () Bool)

(assert (=> d!1610376 (=> res!2134854 e!3126452)))

(declare-fun lt!2070298 () Bool)

(assert (=> d!1610376 (= res!2134854 (not lt!2070298))))

(declare-fun e!3126451 () Bool)

(assert (=> d!1610376 (= lt!2070298 e!3126451)))

(declare-fun res!2134853 () Bool)

(assert (=> d!1610376 (=> res!2134853 e!3126451)))

(assert (=> d!1610376 (= res!2134853 ((_ is Nil!57855) (_1!34804 lt!2069928)))))

(assert (=> d!1610376 (= (isPrefix!5344 (_1!34804 lt!2069928) lt!2069917) lt!2070298)))

(declare-fun b!5003233 () Bool)

(declare-fun res!2134851 () Bool)

(assert (=> b!5003233 (=> (not res!2134851) (not e!3126450))))

(assert (=> b!5003233 (= res!2134851 (= (head!10729 (_1!34804 lt!2069928)) (head!10729 lt!2069917)))))

(declare-fun b!5003232 () Bool)

(assert (=> b!5003232 (= e!3126451 e!3126450)))

(declare-fun res!2134852 () Bool)

(assert (=> b!5003232 (=> (not res!2134852) (not e!3126450))))

(assert (=> b!5003232 (= res!2134852 (not ((_ is Nil!57855) lt!2069917)))))

(assert (= (and d!1610376 (not res!2134853)) b!5003232))

(assert (= (and b!5003232 res!2134852) b!5003233))

(assert (= (and b!5003233 res!2134851) b!5003234))

(assert (= (and d!1610376 (not res!2134854)) b!5003235))

(declare-fun m!6037134 () Bool)

(assert (=> b!5003235 m!6037134))

(assert (=> b!5003235 m!6036510))

(assert (=> b!5003234 m!6036752))

(declare-fun m!6037136 () Bool)

(assert (=> b!5003234 m!6037136))

(assert (=> b!5003234 m!6036752))

(assert (=> b!5003234 m!6037136))

(declare-fun m!6037138 () Bool)

(assert (=> b!5003234 m!6037138))

(assert (=> b!5003233 m!6036748))

(declare-fun m!6037140 () Bool)

(assert (=> b!5003233 m!6037140))

(assert (=> b!5002637 d!1610376))

(declare-fun d!1610378 () Bool)

(declare-fun c!853953 () Bool)

(assert (=> d!1610378 (= c!853953 (isEmpty!31320 lt!2069916))))

(declare-fun e!3126453 () Bool)

(assert (=> d!1610378 (= (matchZipper!559 z!4183 lt!2069916) e!3126453)))

(declare-fun b!5003236 () Bool)

(assert (=> b!5003236 (= e!3126453 (nullableZipper!880 z!4183))))

(declare-fun b!5003237 () Bool)

(assert (=> b!5003237 (= e!3126453 (matchZipper!559 (derivationStepZipper!629 z!4183 (head!10729 lt!2069916)) (tail!9862 lt!2069916)))))

(assert (= (and d!1610378 c!853953) b!5003236))

(assert (= (and d!1610378 (not c!853953)) b!5003237))

(assert (=> d!1610378 m!6036756))

(assert (=> b!5003236 m!6036746))

(assert (=> b!5003237 m!6036762))

(assert (=> b!5003237 m!6036762))

(declare-fun m!6037142 () Bool)

(assert (=> b!5003237 m!6037142))

(assert (=> b!5003237 m!6036758))

(assert (=> b!5003237 m!6037142))

(assert (=> b!5003237 m!6036758))

(declare-fun m!6037144 () Bool)

(assert (=> b!5003237 m!6037144))

(assert (=> b!5002637 d!1610378))

(declare-fun d!1610380 () Bool)

(declare-fun lt!2070299 () Int)

(assert (=> d!1610380 (>= lt!2070299 0)))

(declare-fun e!3126454 () Int)

(assert (=> d!1610380 (= lt!2070299 e!3126454)))

(declare-fun c!853954 () Bool)

(assert (=> d!1610380 (= c!853954 ((_ is Nil!57855) Nil!57855))))

(assert (=> d!1610380 (= (size!38453 Nil!57855) lt!2070299)))

(declare-fun b!5003238 () Bool)

(assert (=> b!5003238 (= e!3126454 0)))

(declare-fun b!5003239 () Bool)

(assert (=> b!5003239 (= e!3126454 (+ 1 (size!38453 (t!370325 Nil!57855))))))

(assert (= (and d!1610380 c!853954) b!5003238))

(assert (= (and d!1610380 (not c!853954)) b!5003239))

(declare-fun m!6037146 () Bool)

(assert (=> b!5003239 m!6037146))

(assert (=> b!5002637 d!1610380))

(declare-fun b!5003243 () Bool)

(declare-fun e!3126457 () Bool)

(assert (=> b!5003243 (= e!3126457 (>= (size!38453 lt!2069924) (size!38453 lt!2069916)))))

(declare-fun b!5003242 () Bool)

(declare-fun e!3126455 () Bool)

(assert (=> b!5003242 (= e!3126455 (isPrefix!5344 (tail!9862 lt!2069916) (tail!9862 lt!2069924)))))

(declare-fun d!1610382 () Bool)

(assert (=> d!1610382 e!3126457))

(declare-fun res!2134858 () Bool)

(assert (=> d!1610382 (=> res!2134858 e!3126457)))

(declare-fun lt!2070300 () Bool)

(assert (=> d!1610382 (= res!2134858 (not lt!2070300))))

(declare-fun e!3126456 () Bool)

(assert (=> d!1610382 (= lt!2070300 e!3126456)))

(declare-fun res!2134857 () Bool)

(assert (=> d!1610382 (=> res!2134857 e!3126456)))

(assert (=> d!1610382 (= res!2134857 ((_ is Nil!57855) lt!2069916))))

(assert (=> d!1610382 (= (isPrefix!5344 lt!2069916 lt!2069924) lt!2070300)))

(declare-fun b!5003241 () Bool)

(declare-fun res!2134855 () Bool)

(assert (=> b!5003241 (=> (not res!2134855) (not e!3126455))))

(assert (=> b!5003241 (= res!2134855 (= (head!10729 lt!2069916) (head!10729 lt!2069924)))))

(declare-fun b!5003240 () Bool)

(assert (=> b!5003240 (= e!3126456 e!3126455)))

(declare-fun res!2134856 () Bool)

(assert (=> b!5003240 (=> (not res!2134856) (not e!3126455))))

(assert (=> b!5003240 (= res!2134856 (not ((_ is Nil!57855) lt!2069924)))))

(assert (= (and d!1610382 (not res!2134857)) b!5003240))

(assert (= (and b!5003240 res!2134856) b!5003241))

(assert (= (and b!5003241 res!2134855) b!5003242))

(assert (= (and d!1610382 (not res!2134858)) b!5003243))

(declare-fun m!6037148 () Bool)

(assert (=> b!5003243 m!6037148))

(assert (=> b!5003243 m!6036858))

(assert (=> b!5003242 m!6036758))

(declare-fun m!6037150 () Bool)

(assert (=> b!5003242 m!6037150))

(assert (=> b!5003242 m!6036758))

(assert (=> b!5003242 m!6037150))

(declare-fun m!6037152 () Bool)

(assert (=> b!5003242 m!6037152))

(assert (=> b!5003241 m!6036762))

(declare-fun m!6037154 () Bool)

(assert (=> b!5003241 m!6037154))

(assert (=> b!5002637 d!1610382))

(declare-fun bm!349220 () Bool)

(declare-fun call!349225 () Bool)

(declare-fun c!853959 () Bool)

(assert (=> bm!349220 (= call!349225 (validRegex!6088 (ite c!853959 (regOne!28095 r!12727) (regTwo!28094 r!12727))))))

(declare-fun b!5003262 () Bool)

(declare-fun res!2134870 () Bool)

(declare-fun e!3126477 () Bool)

(assert (=> b!5003262 (=> res!2134870 e!3126477)))

(assert (=> b!5003262 (= res!2134870 (not ((_ is Concat!22584) r!12727)))))

(declare-fun e!3126474 () Bool)

(assert (=> b!5003262 (= e!3126474 e!3126477)))

(declare-fun b!5003263 () Bool)

(declare-fun e!3126472 () Bool)

(declare-fun e!3126476 () Bool)

(assert (=> b!5003263 (= e!3126472 e!3126476)))

(declare-fun c!853960 () Bool)

(assert (=> b!5003263 (= c!853960 ((_ is Star!13791) r!12727))))

(declare-fun b!5003264 () Bool)

(declare-fun e!3126478 () Bool)

(assert (=> b!5003264 (= e!3126478 call!349225)))

(declare-fun b!5003265 () Bool)

(declare-fun res!2134871 () Bool)

(declare-fun e!3126475 () Bool)

(assert (=> b!5003265 (=> (not res!2134871) (not e!3126475))))

(assert (=> b!5003265 (= res!2134871 call!349225)))

(assert (=> b!5003265 (= e!3126474 e!3126475)))

(declare-fun b!5003266 () Bool)

(assert (=> b!5003266 (= e!3126477 e!3126478)))

(declare-fun res!2134872 () Bool)

(assert (=> b!5003266 (=> (not res!2134872) (not e!3126478))))

(declare-fun call!349226 () Bool)

(assert (=> b!5003266 (= res!2134872 call!349226)))

(declare-fun b!5003268 () Bool)

(assert (=> b!5003268 (= e!3126476 e!3126474)))

(assert (=> b!5003268 (= c!853959 ((_ is Union!13791) r!12727))))

(declare-fun bm!349221 () Bool)

(declare-fun call!349227 () Bool)

(assert (=> bm!349221 (= call!349227 (validRegex!6088 (ite c!853960 (reg!14120 r!12727) (ite c!853959 (regTwo!28095 r!12727) (regOne!28094 r!12727)))))))

(declare-fun bm!349222 () Bool)

(assert (=> bm!349222 (= call!349226 call!349227)))

(declare-fun b!5003269 () Bool)

(declare-fun e!3126473 () Bool)

(assert (=> b!5003269 (= e!3126476 e!3126473)))

(declare-fun res!2134869 () Bool)

(assert (=> b!5003269 (= res!2134869 (not (nullable!4685 (reg!14120 r!12727))))))

(assert (=> b!5003269 (=> (not res!2134869) (not e!3126473))))

(declare-fun b!5003270 () Bool)

(assert (=> b!5003270 (= e!3126473 call!349227)))

(declare-fun b!5003267 () Bool)

(assert (=> b!5003267 (= e!3126475 call!349226)))

(declare-fun d!1610384 () Bool)

(declare-fun res!2134873 () Bool)

(assert (=> d!1610384 (=> res!2134873 e!3126472)))

(assert (=> d!1610384 (= res!2134873 ((_ is ElementMatch!13791) r!12727))))

(assert (=> d!1610384 (= (validRegex!6088 r!12727) e!3126472)))

(assert (= (and d!1610384 (not res!2134873)) b!5003263))

(assert (= (and b!5003263 c!853960) b!5003269))

(assert (= (and b!5003263 (not c!853960)) b!5003268))

(assert (= (and b!5003269 res!2134869) b!5003270))

(assert (= (and b!5003268 c!853959) b!5003265))

(assert (= (and b!5003268 (not c!853959)) b!5003262))

(assert (= (and b!5003265 res!2134871) b!5003267))

(assert (= (and b!5003262 (not res!2134870)) b!5003266))

(assert (= (and b!5003266 res!2134872) b!5003264))

(assert (= (or b!5003267 b!5003266) bm!349222))

(assert (= (or b!5003265 b!5003264) bm!349220))

(assert (= (or b!5003270 bm!349222) bm!349221))

(declare-fun m!6037156 () Bool)

(assert (=> bm!349220 m!6037156))

(declare-fun m!6037158 () Bool)

(assert (=> bm!349221 m!6037158))

(declare-fun m!6037160 () Bool)

(assert (=> b!5003269 m!6037160))

(assert (=> start!528658 d!1610384))

(declare-fun d!1610386 () Bool)

(declare-fun isBalanced!4268 (Conc!15310) Bool)

(assert (=> d!1610386 (= (inv!75999 input!5597) (isBalanced!4268 (c!853794 input!5597)))))

(declare-fun bs!1185860 () Bool)

(assert (= bs!1185860 d!1610386))

(declare-fun m!6037162 () Bool)

(assert (=> bs!1185860 m!6037162))

(assert (=> start!528658 d!1610386))

(declare-fun d!1610388 () Bool)

(assert (=> d!1610388 (= (inv!75999 totalInput!1012) (isBalanced!4268 (c!853794 totalInput!1012)))))

(declare-fun bs!1185861 () Bool)

(assert (= bs!1185861 d!1610388))

(declare-fun m!6037164 () Bool)

(assert (=> bs!1185861 m!6037164))

(assert (=> start!528658 d!1610388))

(declare-fun d!1610390 () Bool)

(assert (=> d!1610390 (= lt!2069929 (_1!34804 lt!2069928))))

(declare-fun lt!2070303 () Unit!149015)

(declare-fun choose!36994 (List!57979 List!57979 List!57979) Unit!149015)

(assert (=> d!1610390 (= lt!2070303 (choose!36994 lt!2069929 (_1!34804 lt!2069928) lt!2069926))))

(assert (=> d!1610390 (isPrefix!5344 lt!2069929 lt!2069926)))

(assert (=> d!1610390 (= (lemmaIsPrefixSameLengthThenSameList!1271 lt!2069929 (_1!34804 lt!2069928) lt!2069926) lt!2070303)))

(declare-fun bs!1185862 () Bool)

(assert (= bs!1185862 d!1610390))

(declare-fun m!6037166 () Bool)

(assert (=> bs!1185862 m!6037166))

(declare-fun m!6037168 () Bool)

(assert (=> bs!1185862 m!6037168))

(assert (=> b!5002647 d!1610390))

(declare-fun b!5003274 () Bool)

(declare-fun e!3126481 () Bool)

(assert (=> b!5003274 (= e!3126481 (>= (size!38453 lt!2069926) (size!38453 lt!2069912)))))

(declare-fun b!5003273 () Bool)

(declare-fun e!3126479 () Bool)

(assert (=> b!5003273 (= e!3126479 (isPrefix!5344 (tail!9862 lt!2069912) (tail!9862 lt!2069926)))))

(declare-fun d!1610392 () Bool)

(assert (=> d!1610392 e!3126481))

(declare-fun res!2134877 () Bool)

(assert (=> d!1610392 (=> res!2134877 e!3126481)))

(declare-fun lt!2070304 () Bool)

(assert (=> d!1610392 (= res!2134877 (not lt!2070304))))

(declare-fun e!3126480 () Bool)

(assert (=> d!1610392 (= lt!2070304 e!3126480)))

(declare-fun res!2134876 () Bool)

(assert (=> d!1610392 (=> res!2134876 e!3126480)))

(assert (=> d!1610392 (= res!2134876 ((_ is Nil!57855) lt!2069912))))

(assert (=> d!1610392 (= (isPrefix!5344 lt!2069912 lt!2069926) lt!2070304)))

(declare-fun b!5003272 () Bool)

(declare-fun res!2134874 () Bool)

(assert (=> b!5003272 (=> (not res!2134874) (not e!3126479))))

(assert (=> b!5003272 (= res!2134874 (= (head!10729 lt!2069912) (head!10729 lt!2069926)))))

(declare-fun b!5003271 () Bool)

(assert (=> b!5003271 (= e!3126480 e!3126479)))

(declare-fun res!2134875 () Bool)

(assert (=> b!5003271 (=> (not res!2134875) (not e!3126479))))

(assert (=> b!5003271 (= res!2134875 (not ((_ is Nil!57855) lt!2069926)))))

(assert (= (and d!1610392 (not res!2134876)) b!5003271))

(assert (= (and b!5003271 res!2134875) b!5003272))

(assert (= (and b!5003272 res!2134874) b!5003273))

(assert (= (and d!1610392 (not res!2134877)) b!5003274))

(assert (=> b!5003274 m!6036448))

(declare-fun m!6037170 () Bool)

(assert (=> b!5003274 m!6037170))

(declare-fun m!6037172 () Bool)

(assert (=> b!5003273 m!6037172))

(assert (=> b!5003273 m!6037056))

(assert (=> b!5003273 m!6037172))

(assert (=> b!5003273 m!6037056))

(declare-fun m!6037174 () Bool)

(assert (=> b!5003273 m!6037174))

(declare-fun m!6037176 () Bool)

(assert (=> b!5003272 m!6037176))

(assert (=> b!5003272 m!6037050))

(assert (=> b!5002647 d!1610392))

(declare-fun b!5003275 () Bool)

(declare-fun e!3126484 () List!57979)

(assert (=> b!5003275 (= e!3126484 (Cons!57855 (h!64303 lt!2069926) (take!650 (t!370325 lt!2069926) (- lt!2069910 1))))))

(declare-fun b!5003276 () Bool)

(declare-fun e!3126485 () Int)

(declare-fun e!3126483 () Int)

(assert (=> b!5003276 (= e!3126485 e!3126483)))

(declare-fun c!853963 () Bool)

(assert (=> b!5003276 (= c!853963 (>= lt!2069910 (size!38453 lt!2069926)))))

(declare-fun b!5003277 () Bool)

(declare-fun e!3126482 () Bool)

(declare-fun lt!2070305 () List!57979)

(assert (=> b!5003277 (= e!3126482 (= (size!38453 lt!2070305) e!3126485))))

(declare-fun c!853961 () Bool)

(assert (=> b!5003277 (= c!853961 (<= lt!2069910 0))))

(declare-fun b!5003278 () Bool)

(assert (=> b!5003278 (= e!3126484 Nil!57855)))

(declare-fun b!5003279 () Bool)

(assert (=> b!5003279 (= e!3126483 (size!38453 lt!2069926))))

(declare-fun d!1610394 () Bool)

(assert (=> d!1610394 e!3126482))

(declare-fun res!2134878 () Bool)

(assert (=> d!1610394 (=> (not res!2134878) (not e!3126482))))

(assert (=> d!1610394 (= res!2134878 (= ((_ map implies) (content!10244 lt!2070305) (content!10244 lt!2069926)) ((as const (InoxSet C!27832)) true)))))

(assert (=> d!1610394 (= lt!2070305 e!3126484)))

(declare-fun c!853962 () Bool)

(assert (=> d!1610394 (= c!853962 (or ((_ is Nil!57855) lt!2069926) (<= lt!2069910 0)))))

(assert (=> d!1610394 (= (take!650 lt!2069926 lt!2069910) lt!2070305)))

(declare-fun b!5003280 () Bool)

(assert (=> b!5003280 (= e!3126483 lt!2069910)))

(declare-fun b!5003281 () Bool)

(assert (=> b!5003281 (= e!3126485 0)))

(assert (= (and d!1610394 c!853962) b!5003278))

(assert (= (and d!1610394 (not c!853962)) b!5003275))

(assert (= (and d!1610394 res!2134878) b!5003277))

(assert (= (and b!5003277 c!853961) b!5003281))

(assert (= (and b!5003277 (not c!853961)) b!5003276))

(assert (= (and b!5003276 c!853963) b!5003279))

(assert (= (and b!5003276 (not c!853963)) b!5003280))

(declare-fun m!6037178 () Bool)

(assert (=> b!5003277 m!6037178))

(assert (=> b!5003279 m!6036448))

(declare-fun m!6037180 () Bool)

(assert (=> b!5003275 m!6037180))

(assert (=> b!5003276 m!6036448))

(declare-fun m!6037182 () Bool)

(assert (=> d!1610394 m!6037182))

(declare-fun m!6037184 () Bool)

(assert (=> d!1610394 m!6037184))

(assert (=> b!5002647 d!1610394))

(declare-fun d!1610396 () Bool)

(assert (=> d!1610396 (isPrefix!5344 (take!650 lt!2069926 lt!2069910) lt!2069926)))

(declare-fun lt!2070306 () Unit!149015)

(assert (=> d!1610396 (= lt!2070306 (choose!36993 lt!2069926 lt!2069910))))

(assert (=> d!1610396 (>= lt!2069910 0)))

(assert (=> d!1610396 (= (lemmaTakeIsPrefix!144 lt!2069926 lt!2069910) lt!2070306)))

(declare-fun bs!1185863 () Bool)

(assert (= bs!1185863 d!1610396))

(assert (=> bs!1185863 m!6036524))

(assert (=> bs!1185863 m!6036524))

(declare-fun m!6037186 () Bool)

(assert (=> bs!1185863 m!6037186))

(declare-fun m!6037188 () Bool)

(assert (=> bs!1185863 m!6037188))

(assert (=> b!5002647 d!1610396))

(declare-fun b!5003282 () Bool)

(declare-fun res!2134886 () Bool)

(declare-fun e!3126487 () Bool)

(assert (=> b!5003282 (=> res!2134886 e!3126487)))

(declare-fun e!3126488 () Bool)

(assert (=> b!5003282 (= res!2134886 e!3126488)))

(declare-fun res!2134879 () Bool)

(assert (=> b!5003282 (=> (not res!2134879) (not e!3126488))))

(declare-fun lt!2070307 () Bool)

(assert (=> b!5003282 (= res!2134879 lt!2070307)))

(declare-fun b!5003283 () Bool)

(declare-fun e!3126491 () Bool)

(declare-fun e!3126492 () Bool)

(assert (=> b!5003283 (= e!3126491 e!3126492)))

(declare-fun c!853965 () Bool)

(assert (=> b!5003283 (= c!853965 ((_ is EmptyLang!13791) r!12727))))

(declare-fun b!5003284 () Bool)

(declare-fun res!2134884 () Bool)

(assert (=> b!5003284 (=> (not res!2134884) (not e!3126488))))

(declare-fun call!349228 () Bool)

(assert (=> b!5003284 (= res!2134884 (not call!349228))))

(declare-fun b!5003285 () Bool)

(declare-fun res!2134885 () Bool)

(declare-fun e!3126489 () Bool)

(assert (=> b!5003285 (=> res!2134885 e!3126489)))

(assert (=> b!5003285 (= res!2134885 (not (isEmpty!31320 (tail!9862 (_1!34804 lt!2069928)))))))

(declare-fun d!1610398 () Bool)

(assert (=> d!1610398 e!3126491))

(declare-fun c!853964 () Bool)

(assert (=> d!1610398 (= c!853964 ((_ is EmptyExpr!13791) r!12727))))

(declare-fun e!3126490 () Bool)

(assert (=> d!1610398 (= lt!2070307 e!3126490)))

(declare-fun c!853966 () Bool)

(assert (=> d!1610398 (= c!853966 (isEmpty!31320 (_1!34804 lt!2069928)))))

(assert (=> d!1610398 (validRegex!6088 r!12727)))

(assert (=> d!1610398 (= (matchR!6755 r!12727 (_1!34804 lt!2069928)) lt!2070307)))

(declare-fun b!5003286 () Bool)

(assert (=> b!5003286 (= e!3126491 (= lt!2070307 call!349228))))

(declare-fun b!5003287 () Bool)

(declare-fun res!2134882 () Bool)

(assert (=> b!5003287 (=> (not res!2134882) (not e!3126488))))

(assert (=> b!5003287 (= res!2134882 (isEmpty!31320 (tail!9862 (_1!34804 lt!2069928))))))

(declare-fun b!5003288 () Bool)

(assert (=> b!5003288 (= e!3126489 (not (= (head!10729 (_1!34804 lt!2069928)) (c!853793 r!12727))))))

(declare-fun b!5003289 () Bool)

(assert (=> b!5003289 (= e!3126490 (matchR!6755 (derivativeStep!3975 r!12727 (head!10729 (_1!34804 lt!2069928))) (tail!9862 (_1!34804 lt!2069928))))))

(declare-fun b!5003290 () Bool)

(declare-fun e!3126486 () Bool)

(assert (=> b!5003290 (= e!3126487 e!3126486)))

(declare-fun res!2134881 () Bool)

(assert (=> b!5003290 (=> (not res!2134881) (not e!3126486))))

(assert (=> b!5003290 (= res!2134881 (not lt!2070307))))

(declare-fun b!5003291 () Bool)

(declare-fun res!2134883 () Bool)

(assert (=> b!5003291 (=> res!2134883 e!3126487)))

(assert (=> b!5003291 (= res!2134883 (not ((_ is ElementMatch!13791) r!12727)))))

(assert (=> b!5003291 (= e!3126492 e!3126487)))

(declare-fun bm!349223 () Bool)

(assert (=> bm!349223 (= call!349228 (isEmpty!31320 (_1!34804 lt!2069928)))))

(declare-fun b!5003292 () Bool)

(assert (=> b!5003292 (= e!3126488 (= (head!10729 (_1!34804 lt!2069928)) (c!853793 r!12727)))))

(declare-fun b!5003293 () Bool)

(assert (=> b!5003293 (= e!3126490 (nullable!4685 r!12727))))

(declare-fun b!5003294 () Bool)

(assert (=> b!5003294 (= e!3126492 (not lt!2070307))))

(declare-fun b!5003295 () Bool)

(assert (=> b!5003295 (= e!3126486 e!3126489)))

(declare-fun res!2134880 () Bool)

(assert (=> b!5003295 (=> res!2134880 e!3126489)))

(assert (=> b!5003295 (= res!2134880 call!349228)))

(assert (= (and d!1610398 c!853966) b!5003293))

(assert (= (and d!1610398 (not c!853966)) b!5003289))

(assert (= (and d!1610398 c!853964) b!5003286))

(assert (= (and d!1610398 (not c!853964)) b!5003283))

(assert (= (and b!5003283 c!853965) b!5003294))

(assert (= (and b!5003283 (not c!853965)) b!5003291))

(assert (= (and b!5003291 (not res!2134883)) b!5003282))

(assert (= (and b!5003282 res!2134879) b!5003284))

(assert (= (and b!5003284 res!2134884) b!5003287))

(assert (= (and b!5003287 res!2134882) b!5003292))

(assert (= (and b!5003282 (not res!2134886)) b!5003290))

(assert (= (and b!5003290 res!2134881) b!5003295))

(assert (= (and b!5003295 (not res!2134880)) b!5003285))

(assert (= (and b!5003285 (not res!2134885)) b!5003288))

(assert (= (or b!5003286 b!5003284 b!5003295) bm!349223))

(assert (=> bm!349223 m!6036506))

(assert (=> b!5003287 m!6036752))

(assert (=> b!5003287 m!6036752))

(declare-fun m!6037190 () Bool)

(assert (=> b!5003287 m!6037190))

(assert (=> b!5003285 m!6036752))

(assert (=> b!5003285 m!6036752))

(assert (=> b!5003285 m!6037190))

(assert (=> b!5003289 m!6036748))

(assert (=> b!5003289 m!6036748))

(declare-fun m!6037192 () Bool)

(assert (=> b!5003289 m!6037192))

(assert (=> b!5003289 m!6036752))

(assert (=> b!5003289 m!6037192))

(assert (=> b!5003289 m!6036752))

(declare-fun m!6037194 () Bool)

(assert (=> b!5003289 m!6037194))

(assert (=> b!5003293 m!6036728))

(assert (=> b!5003288 m!6036748))

(assert (=> d!1610398 m!6036506))

(assert (=> d!1610398 m!6036482))

(assert (=> b!5003292 m!6036748))

(assert (=> b!5002638 d!1610398))

(declare-fun d!1610400 () Bool)

(declare-fun c!853967 () Bool)

(assert (=> d!1610400 (= c!853967 (isEmpty!31320 (take!650 (drop!2454 lt!2069923 lt!2069913) lt!2069932)))))

(declare-fun e!3126493 () Bool)

(assert (=> d!1610400 (= (matchZipper!559 z!4183 (take!650 (drop!2454 lt!2069923 lt!2069913) lt!2069932)) e!3126493)))

(declare-fun b!5003296 () Bool)

(assert (=> b!5003296 (= e!3126493 (nullableZipper!880 z!4183))))

(declare-fun b!5003297 () Bool)

(assert (=> b!5003297 (= e!3126493 (matchZipper!559 (derivationStepZipper!629 z!4183 (head!10729 (take!650 (drop!2454 lt!2069923 lt!2069913) lt!2069932))) (tail!9862 (take!650 (drop!2454 lt!2069923 lt!2069913) lt!2069932))))))

(assert (= (and d!1610400 c!853967) b!5003296))

(assert (= (and d!1610400 (not c!853967)) b!5003297))

(assert (=> d!1610400 m!6036478))

(declare-fun m!6037196 () Bool)

(assert (=> d!1610400 m!6037196))

(assert (=> b!5003296 m!6036746))

(assert (=> b!5003297 m!6036478))

(declare-fun m!6037198 () Bool)

(assert (=> b!5003297 m!6037198))

(assert (=> b!5003297 m!6037198))

(declare-fun m!6037200 () Bool)

(assert (=> b!5003297 m!6037200))

(assert (=> b!5003297 m!6036478))

(declare-fun m!6037202 () Bool)

(assert (=> b!5003297 m!6037202))

(assert (=> b!5003297 m!6037200))

(assert (=> b!5003297 m!6037202))

(declare-fun m!6037204 () Bool)

(assert (=> b!5003297 m!6037204))

(assert (=> b!5002648 d!1610400))

(declare-fun e!3126496 () List!57979)

(declare-fun b!5003298 () Bool)

(assert (=> b!5003298 (= e!3126496 (Cons!57855 (h!64303 (drop!2454 lt!2069923 lt!2069913)) (take!650 (t!370325 (drop!2454 lt!2069923 lt!2069913)) (- lt!2069932 1))))))

(declare-fun b!5003299 () Bool)

(declare-fun e!3126497 () Int)

(declare-fun e!3126495 () Int)

(assert (=> b!5003299 (= e!3126497 e!3126495)))

(declare-fun c!853970 () Bool)

(assert (=> b!5003299 (= c!853970 (>= lt!2069932 (size!38453 (drop!2454 lt!2069923 lt!2069913))))))

(declare-fun b!5003300 () Bool)

(declare-fun e!3126494 () Bool)

(declare-fun lt!2070308 () List!57979)

(assert (=> b!5003300 (= e!3126494 (= (size!38453 lt!2070308) e!3126497))))

(declare-fun c!853968 () Bool)

(assert (=> b!5003300 (= c!853968 (<= lt!2069932 0))))

(declare-fun b!5003301 () Bool)

(assert (=> b!5003301 (= e!3126496 Nil!57855)))

(declare-fun b!5003302 () Bool)

(assert (=> b!5003302 (= e!3126495 (size!38453 (drop!2454 lt!2069923 lt!2069913)))))

(declare-fun d!1610402 () Bool)

(assert (=> d!1610402 e!3126494))

(declare-fun res!2134887 () Bool)

(assert (=> d!1610402 (=> (not res!2134887) (not e!3126494))))

(assert (=> d!1610402 (= res!2134887 (= ((_ map implies) (content!10244 lt!2070308) (content!10244 (drop!2454 lt!2069923 lt!2069913))) ((as const (InoxSet C!27832)) true)))))

(assert (=> d!1610402 (= lt!2070308 e!3126496)))

(declare-fun c!853969 () Bool)

(assert (=> d!1610402 (= c!853969 (or ((_ is Nil!57855) (drop!2454 lt!2069923 lt!2069913)) (<= lt!2069932 0)))))

(assert (=> d!1610402 (= (take!650 (drop!2454 lt!2069923 lt!2069913) lt!2069932) lt!2070308)))

(declare-fun b!5003303 () Bool)

(assert (=> b!5003303 (= e!3126495 lt!2069932)))

(declare-fun b!5003304 () Bool)

(assert (=> b!5003304 (= e!3126497 0)))

(assert (= (and d!1610402 c!853969) b!5003301))

(assert (= (and d!1610402 (not c!853969)) b!5003298))

(assert (= (and d!1610402 res!2134887) b!5003300))

(assert (= (and b!5003300 c!853968) b!5003304))

(assert (= (and b!5003300 (not c!853968)) b!5003299))

(assert (= (and b!5003299 c!853970) b!5003302))

(assert (= (and b!5003299 (not c!853970)) b!5003303))

(declare-fun m!6037206 () Bool)

(assert (=> b!5003300 m!6037206))

(assert (=> b!5003302 m!6036476))

(declare-fun m!6037208 () Bool)

(assert (=> b!5003302 m!6037208))

(declare-fun m!6037210 () Bool)

(assert (=> b!5003298 m!6037210))

(assert (=> b!5003299 m!6036476))

(assert (=> b!5003299 m!6037208))

(declare-fun m!6037212 () Bool)

(assert (=> d!1610402 m!6037212))

(assert (=> d!1610402 m!6036476))

(declare-fun m!6037214 () Bool)

(assert (=> d!1610402 m!6037214))

(assert (=> b!5002648 d!1610402))

(declare-fun d!1610404 () Bool)

(declare-fun e!3126509 () Bool)

(assert (=> d!1610404 e!3126509))

(declare-fun res!2134890 () Bool)

(assert (=> d!1610404 (=> (not res!2134890) (not e!3126509))))

(declare-fun lt!2070311 () List!57979)

(assert (=> d!1610404 (= res!2134890 (= ((_ map implies) (content!10244 lt!2070311) (content!10244 lt!2069923)) ((as const (InoxSet C!27832)) true)))))

(declare-fun e!3126510 () List!57979)

(assert (=> d!1610404 (= lt!2070311 e!3126510)))

(declare-fun c!853981 () Bool)

(assert (=> d!1610404 (= c!853981 ((_ is Nil!57855) lt!2069923))))

(assert (=> d!1610404 (= (drop!2454 lt!2069923 lt!2069913) lt!2070311)))

(declare-fun bm!349226 () Bool)

(declare-fun call!349231 () Int)

(assert (=> bm!349226 (= call!349231 (size!38453 lt!2069923))))

(declare-fun b!5003323 () Bool)

(declare-fun e!3126508 () List!57979)

(assert (=> b!5003323 (= e!3126510 e!3126508)))

(declare-fun c!853980 () Bool)

(assert (=> b!5003323 (= c!853980 (<= lt!2069913 0))))

(declare-fun b!5003324 () Bool)

(declare-fun e!3126511 () Int)

(assert (=> b!5003324 (= e!3126511 (- call!349231 lt!2069913))))

(declare-fun b!5003325 () Bool)

(declare-fun e!3126512 () Int)

(assert (=> b!5003325 (= e!3126512 e!3126511)))

(declare-fun c!853982 () Bool)

(assert (=> b!5003325 (= c!853982 (>= lt!2069913 call!349231))))

(declare-fun b!5003326 () Bool)

(assert (=> b!5003326 (= e!3126511 0)))

(declare-fun b!5003327 () Bool)

(assert (=> b!5003327 (= e!3126508 (drop!2454 (t!370325 lt!2069923) (- lt!2069913 1)))))

(declare-fun b!5003328 () Bool)

(assert (=> b!5003328 (= e!3126509 (= (size!38453 lt!2070311) e!3126512))))

(declare-fun c!853979 () Bool)

(assert (=> b!5003328 (= c!853979 (<= lt!2069913 0))))

(declare-fun b!5003329 () Bool)

(assert (=> b!5003329 (= e!3126508 lt!2069923)))

(declare-fun b!5003330 () Bool)

(assert (=> b!5003330 (= e!3126510 Nil!57855)))

(declare-fun b!5003331 () Bool)

(assert (=> b!5003331 (= e!3126512 call!349231)))

(assert (= (and d!1610404 c!853981) b!5003330))

(assert (= (and d!1610404 (not c!853981)) b!5003323))

(assert (= (and b!5003323 c!853980) b!5003329))

(assert (= (and b!5003323 (not c!853980)) b!5003327))

(assert (= (and d!1610404 res!2134890) b!5003328))

(assert (= (and b!5003328 c!853979) b!5003331))

(assert (= (and b!5003328 (not c!853979)) b!5003325))

(assert (= (and b!5003325 c!853982) b!5003326))

(assert (= (and b!5003325 (not c!853982)) b!5003324))

(assert (= (or b!5003331 b!5003325 b!5003324) bm!349226))

(declare-fun m!6037216 () Bool)

(assert (=> d!1610404 m!6037216))

(assert (=> d!1610404 m!6037104))

(assert (=> bm!349226 m!6036710))

(declare-fun m!6037218 () Bool)

(assert (=> b!5003327 m!6037218))

(declare-fun m!6037220 () Bool)

(assert (=> b!5003328 m!6037220))

(assert (=> b!5002648 d!1610404))

(declare-fun b!5003335 () Bool)

(declare-fun e!3126513 () Bool)

(declare-fun lt!2070312 () List!57979)

(assert (=> b!5003335 (= e!3126513 (or (not (= (_2!34804 lt!2069928) Nil!57855)) (= lt!2070312 (_1!34804 lt!2069928))))))

(declare-fun b!5003334 () Bool)

(declare-fun res!2134892 () Bool)

(assert (=> b!5003334 (=> (not res!2134892) (not e!3126513))))

(assert (=> b!5003334 (= res!2134892 (= (size!38453 lt!2070312) (+ (size!38453 (_1!34804 lt!2069928)) (size!38453 (_2!34804 lt!2069928)))))))

(declare-fun b!5003332 () Bool)

(declare-fun e!3126514 () List!57979)

(assert (=> b!5003332 (= e!3126514 (_2!34804 lt!2069928))))

(declare-fun b!5003333 () Bool)

(assert (=> b!5003333 (= e!3126514 (Cons!57855 (h!64303 (_1!34804 lt!2069928)) (++!12637 (t!370325 (_1!34804 lt!2069928)) (_2!34804 lt!2069928))))))

(declare-fun d!1610406 () Bool)

(assert (=> d!1610406 e!3126513))

(declare-fun res!2134891 () Bool)

(assert (=> d!1610406 (=> (not res!2134891) (not e!3126513))))

(assert (=> d!1610406 (= res!2134891 (= (content!10244 lt!2070312) ((_ map or) (content!10244 (_1!34804 lt!2069928)) (content!10244 (_2!34804 lt!2069928)))))))

(assert (=> d!1610406 (= lt!2070312 e!3126514)))

(declare-fun c!853983 () Bool)

(assert (=> d!1610406 (= c!853983 ((_ is Nil!57855) (_1!34804 lt!2069928)))))

(assert (=> d!1610406 (= (++!12637 (_1!34804 lt!2069928) (_2!34804 lt!2069928)) lt!2070312)))

(assert (= (and d!1610406 c!853983) b!5003332))

(assert (= (and d!1610406 (not c!853983)) b!5003333))

(assert (= (and d!1610406 res!2134891) b!5003334))

(assert (= (and b!5003334 res!2134892) b!5003335))

(declare-fun m!6037222 () Bool)

(assert (=> b!5003334 m!6037222))

(assert (=> b!5003334 m!6036510))

(declare-fun m!6037224 () Bool)

(assert (=> b!5003334 m!6037224))

(declare-fun m!6037226 () Bool)

(assert (=> b!5003333 m!6037226))

(declare-fun m!6037228 () Bool)

(assert (=> d!1610406 m!6037228))

(declare-fun m!6037230 () Bool)

(assert (=> d!1610406 m!6037230))

(declare-fun m!6037232 () Bool)

(assert (=> d!1610406 m!6037232))

(assert (=> b!5002639 d!1610406))

(declare-fun d!1610408 () Bool)

(declare-fun lt!2070315 () Bool)

(assert (=> d!1610408 (= lt!2070315 (isEmpty!31320 (list!18616 (_1!34803 lt!2069915))))))

(declare-fun isEmpty!31323 (Conc!15310) Bool)

(assert (=> d!1610408 (= lt!2070315 (isEmpty!31323 (c!853794 (_1!34803 lt!2069915))))))

(assert (=> d!1610408 (= (isEmpty!31321 (_1!34803 lt!2069915)) lt!2070315)))

(declare-fun bs!1185864 () Bool)

(assert (= bs!1185864 d!1610408))

(assert (=> bs!1185864 m!6036492))

(assert (=> bs!1185864 m!6036492))

(declare-fun m!6037234 () Bool)

(assert (=> bs!1185864 m!6037234))

(declare-fun m!6037236 () Bool)

(assert (=> bs!1185864 m!6037236))

(assert (=> b!5002640 d!1610408))

(declare-fun b!5003336 () Bool)

(declare-fun e!3126517 () List!57979)

(assert (=> b!5003336 (= e!3126517 (Cons!57855 (h!64303 lt!2069918) (take!650 (t!370325 lt!2069918) (- lt!2069910 1))))))

(declare-fun b!5003337 () Bool)

(declare-fun e!3126518 () Int)

(declare-fun e!3126516 () Int)

(assert (=> b!5003337 (= e!3126518 e!3126516)))

(declare-fun c!853986 () Bool)

(assert (=> b!5003337 (= c!853986 (>= lt!2069910 (size!38453 lt!2069918)))))

(declare-fun b!5003338 () Bool)

(declare-fun e!3126515 () Bool)

(declare-fun lt!2070316 () List!57979)

(assert (=> b!5003338 (= e!3126515 (= (size!38453 lt!2070316) e!3126518))))

(declare-fun c!853984 () Bool)

(assert (=> b!5003338 (= c!853984 (<= lt!2069910 0))))

(declare-fun b!5003339 () Bool)

(assert (=> b!5003339 (= e!3126517 Nil!57855)))

(declare-fun b!5003340 () Bool)

(assert (=> b!5003340 (= e!3126516 (size!38453 lt!2069918))))

(declare-fun d!1610410 () Bool)

(assert (=> d!1610410 e!3126515))

(declare-fun res!2134893 () Bool)

(assert (=> d!1610410 (=> (not res!2134893) (not e!3126515))))

(assert (=> d!1610410 (= res!2134893 (= ((_ map implies) (content!10244 lt!2070316) (content!10244 lt!2069918)) ((as const (InoxSet C!27832)) true)))))

(assert (=> d!1610410 (= lt!2070316 e!3126517)))

(declare-fun c!853985 () Bool)

(assert (=> d!1610410 (= c!853985 (or ((_ is Nil!57855) lt!2069918) (<= lt!2069910 0)))))

(assert (=> d!1610410 (= (take!650 lt!2069918 lt!2069910) lt!2070316)))

(declare-fun b!5003341 () Bool)

(assert (=> b!5003341 (= e!3126516 lt!2069910)))

(declare-fun b!5003342 () Bool)

(assert (=> b!5003342 (= e!3126518 0)))

(assert (= (and d!1610410 c!853985) b!5003339))

(assert (= (and d!1610410 (not c!853985)) b!5003336))

(assert (= (and d!1610410 res!2134893) b!5003338))

(assert (= (and b!5003338 c!853984) b!5003342))

(assert (= (and b!5003338 (not c!853984)) b!5003337))

(assert (= (and b!5003337 c!853986) b!5003340))

(assert (= (and b!5003337 (not c!853986)) b!5003341))

(declare-fun m!6037238 () Bool)

(assert (=> b!5003338 m!6037238))

(declare-fun m!6037240 () Bool)

(assert (=> b!5003340 m!6037240))

(declare-fun m!6037242 () Bool)

(assert (=> b!5003336 m!6037242))

(assert (=> b!5003337 m!6037240))

(declare-fun m!6037244 () Bool)

(assert (=> d!1610410 m!6037244))

(declare-fun m!6037246 () Bool)

(assert (=> d!1610410 m!6037246))

(assert (=> b!5002650 d!1610410))

(assert (=> b!5002650 d!1610404))

(declare-fun condSetEmpty!28394 () Bool)

(assert (=> setNonEmpty!28388 (= condSetEmpty!28394 (= setRest!28388 ((as const (Array Context!6432 Bool)) false)))))

(declare-fun setRes!28394 () Bool)

(assert (=> setNonEmpty!28388 (= tp!1403149 setRes!28394)))

(declare-fun setIsEmpty!28394 () Bool)

(assert (=> setIsEmpty!28394 setRes!28394))

(declare-fun tp!1403217 () Bool)

(declare-fun setNonEmpty!28394 () Bool)

(declare-fun e!3126521 () Bool)

(declare-fun setElem!28394 () Context!6432)

(assert (=> setNonEmpty!28394 (= setRes!28394 (and tp!1403217 (inv!76001 setElem!28394) e!3126521))))

(declare-fun setRest!28394 () (InoxSet Context!6432))

(assert (=> setNonEmpty!28394 (= setRest!28388 ((_ map or) (store ((as const (Array Context!6432 Bool)) false) setElem!28394 true) setRest!28394))))

(declare-fun b!5003347 () Bool)

(declare-fun tp!1403216 () Bool)

(assert (=> b!5003347 (= e!3126521 tp!1403216)))

(assert (= (and setNonEmpty!28388 condSetEmpty!28394) setIsEmpty!28394))

(assert (= (and setNonEmpty!28388 (not condSetEmpty!28394)) setNonEmpty!28394))

(assert (= setNonEmpty!28394 b!5003347))

(declare-fun m!6037248 () Bool)

(assert (=> setNonEmpty!28394 m!6037248))

(declare-fun b!5003360 () Bool)

(declare-fun e!3126524 () Bool)

(declare-fun tp!1403230 () Bool)

(assert (=> b!5003360 (= e!3126524 tp!1403230)))

(assert (=> b!5002634 (= tp!1403151 e!3126524)))

(declare-fun b!5003358 () Bool)

(assert (=> b!5003358 (= e!3126524 tp_is_empty!36579)))

(declare-fun b!5003361 () Bool)

(declare-fun tp!1403231 () Bool)

(declare-fun tp!1403229 () Bool)

(assert (=> b!5003361 (= e!3126524 (and tp!1403231 tp!1403229))))

(declare-fun b!5003359 () Bool)

(declare-fun tp!1403228 () Bool)

(declare-fun tp!1403232 () Bool)

(assert (=> b!5003359 (= e!3126524 (and tp!1403228 tp!1403232))))

(assert (= (and b!5002634 ((_ is ElementMatch!13791) (reg!14120 r!12727))) b!5003358))

(assert (= (and b!5002634 ((_ is Concat!22584) (reg!14120 r!12727))) b!5003359))

(assert (= (and b!5002634 ((_ is Star!13791) (reg!14120 r!12727))) b!5003360))

(assert (= (and b!5002634 ((_ is Union!13791) (reg!14120 r!12727))) b!5003361))

(declare-fun b!5003364 () Bool)

(declare-fun e!3126525 () Bool)

(declare-fun tp!1403235 () Bool)

(assert (=> b!5003364 (= e!3126525 tp!1403235)))

(assert (=> b!5002649 (= tp!1403148 e!3126525)))

(declare-fun b!5003362 () Bool)

(assert (=> b!5003362 (= e!3126525 tp_is_empty!36579)))

(declare-fun b!5003365 () Bool)

(declare-fun tp!1403236 () Bool)

(declare-fun tp!1403234 () Bool)

(assert (=> b!5003365 (= e!3126525 (and tp!1403236 tp!1403234))))

(declare-fun b!5003363 () Bool)

(declare-fun tp!1403233 () Bool)

(declare-fun tp!1403237 () Bool)

(assert (=> b!5003363 (= e!3126525 (and tp!1403233 tp!1403237))))

(assert (= (and b!5002649 ((_ is ElementMatch!13791) (regOne!28094 r!12727))) b!5003362))

(assert (= (and b!5002649 ((_ is Concat!22584) (regOne!28094 r!12727))) b!5003363))

(assert (= (and b!5002649 ((_ is Star!13791) (regOne!28094 r!12727))) b!5003364))

(assert (= (and b!5002649 ((_ is Union!13791) (regOne!28094 r!12727))) b!5003365))

(declare-fun b!5003368 () Bool)

(declare-fun e!3126526 () Bool)

(declare-fun tp!1403240 () Bool)

(assert (=> b!5003368 (= e!3126526 tp!1403240)))

(assert (=> b!5002649 (= tp!1403147 e!3126526)))

(declare-fun b!5003366 () Bool)

(assert (=> b!5003366 (= e!3126526 tp_is_empty!36579)))

(declare-fun b!5003369 () Bool)

(declare-fun tp!1403241 () Bool)

(declare-fun tp!1403239 () Bool)

(assert (=> b!5003369 (= e!3126526 (and tp!1403241 tp!1403239))))

(declare-fun b!5003367 () Bool)

(declare-fun tp!1403238 () Bool)

(declare-fun tp!1403242 () Bool)

(assert (=> b!5003367 (= e!3126526 (and tp!1403238 tp!1403242))))

(assert (= (and b!5002649 ((_ is ElementMatch!13791) (regTwo!28094 r!12727))) b!5003366))

(assert (= (and b!5002649 ((_ is Concat!22584) (regTwo!28094 r!12727))) b!5003367))

(assert (= (and b!5002649 ((_ is Star!13791) (regTwo!28094 r!12727))) b!5003368))

(assert (= (and b!5002649 ((_ is Union!13791) (regTwo!28094 r!12727))) b!5003369))

(declare-fun tp!1403251 () Bool)

(declare-fun e!3126531 () Bool)

(declare-fun tp!1403250 () Bool)

(declare-fun b!5003378 () Bool)

(assert (=> b!5003378 (= e!3126531 (and (inv!76000 (left!42299 (c!853794 input!5597))) tp!1403250 (inv!76000 (right!42629 (c!853794 input!5597))) tp!1403251))))

(declare-fun b!5003380 () Bool)

(declare-fun e!3126532 () Bool)

(declare-fun tp!1403249 () Bool)

(assert (=> b!5003380 (= e!3126532 tp!1403249)))

(declare-fun b!5003379 () Bool)

(declare-fun inv!76007 (IArray!30681) Bool)

(assert (=> b!5003379 (= e!3126531 (and (inv!76007 (xs!18636 (c!853794 input!5597))) e!3126532))))

(assert (=> b!5002644 (= tp!1403150 (and (inv!76000 (c!853794 input!5597)) e!3126531))))

(assert (= (and b!5002644 ((_ is Node!15310) (c!853794 input!5597))) b!5003378))

(assert (= b!5003379 b!5003380))

(assert (= (and b!5002644 ((_ is Leaf!25414) (c!853794 input!5597))) b!5003379))

(declare-fun m!6037250 () Bool)

(assert (=> b!5003378 m!6037250))

(declare-fun m!6037252 () Bool)

(assert (=> b!5003378 m!6037252))

(declare-fun m!6037254 () Bool)

(assert (=> b!5003379 m!6037254))

(assert (=> b!5002644 m!6036490))

(declare-fun tp!1403253 () Bool)

(declare-fun tp!1403254 () Bool)

(declare-fun b!5003381 () Bool)

(declare-fun e!3126533 () Bool)

(assert (=> b!5003381 (= e!3126533 (and (inv!76000 (left!42299 (c!853794 totalInput!1012))) tp!1403253 (inv!76000 (right!42629 (c!853794 totalInput!1012))) tp!1403254))))

(declare-fun b!5003383 () Bool)

(declare-fun e!3126534 () Bool)

(declare-fun tp!1403252 () Bool)

(assert (=> b!5003383 (= e!3126534 tp!1403252)))

(declare-fun b!5003382 () Bool)

(assert (=> b!5003382 (= e!3126533 (and (inv!76007 (xs!18636 (c!853794 totalInput!1012))) e!3126534))))

(assert (=> b!5002635 (= tp!1403145 (and (inv!76000 (c!853794 totalInput!1012)) e!3126533))))

(assert (= (and b!5002635 ((_ is Node!15310) (c!853794 totalInput!1012))) b!5003381))

(assert (= b!5003382 b!5003383))

(assert (= (and b!5002635 ((_ is Leaf!25414) (c!853794 totalInput!1012))) b!5003382))

(declare-fun m!6037256 () Bool)

(assert (=> b!5003381 m!6037256))

(declare-fun m!6037258 () Bool)

(assert (=> b!5003381 m!6037258))

(declare-fun m!6037260 () Bool)

(assert (=> b!5003382 m!6037260))

(assert (=> b!5002635 m!6036528))

(declare-fun b!5003388 () Bool)

(declare-fun e!3126537 () Bool)

(declare-fun tp!1403259 () Bool)

(declare-fun tp!1403260 () Bool)

(assert (=> b!5003388 (= e!3126537 (and tp!1403259 tp!1403260))))

(assert (=> b!5002641 (= tp!1403152 e!3126537)))

(assert (= (and b!5002641 ((_ is Cons!57853) (exprs!3716 setElem!28388))) b!5003388))

(declare-fun b!5003391 () Bool)

(declare-fun e!3126538 () Bool)

(declare-fun tp!1403263 () Bool)

(assert (=> b!5003391 (= e!3126538 tp!1403263)))

(assert (=> b!5002631 (= tp!1403144 e!3126538)))

(declare-fun b!5003389 () Bool)

(assert (=> b!5003389 (= e!3126538 tp_is_empty!36579)))

(declare-fun b!5003392 () Bool)

(declare-fun tp!1403264 () Bool)

(declare-fun tp!1403262 () Bool)

(assert (=> b!5003392 (= e!3126538 (and tp!1403264 tp!1403262))))

(declare-fun b!5003390 () Bool)

(declare-fun tp!1403261 () Bool)

(declare-fun tp!1403265 () Bool)

(assert (=> b!5003390 (= e!3126538 (and tp!1403261 tp!1403265))))

(assert (= (and b!5002631 ((_ is ElementMatch!13791) (regOne!28095 r!12727))) b!5003389))

(assert (= (and b!5002631 ((_ is Concat!22584) (regOne!28095 r!12727))) b!5003390))

(assert (= (and b!5002631 ((_ is Star!13791) (regOne!28095 r!12727))) b!5003391))

(assert (= (and b!5002631 ((_ is Union!13791) (regOne!28095 r!12727))) b!5003392))

(declare-fun b!5003395 () Bool)

(declare-fun e!3126539 () Bool)

(declare-fun tp!1403268 () Bool)

(assert (=> b!5003395 (= e!3126539 tp!1403268)))

(assert (=> b!5002631 (= tp!1403146 e!3126539)))

(declare-fun b!5003393 () Bool)

(assert (=> b!5003393 (= e!3126539 tp_is_empty!36579)))

(declare-fun b!5003396 () Bool)

(declare-fun tp!1403269 () Bool)

(declare-fun tp!1403267 () Bool)

(assert (=> b!5003396 (= e!3126539 (and tp!1403269 tp!1403267))))

(declare-fun b!5003394 () Bool)

(declare-fun tp!1403266 () Bool)

(declare-fun tp!1403270 () Bool)

(assert (=> b!5003394 (= e!3126539 (and tp!1403266 tp!1403270))))

(assert (= (and b!5002631 ((_ is ElementMatch!13791) (regTwo!28095 r!12727))) b!5003393))

(assert (= (and b!5002631 ((_ is Concat!22584) (regTwo!28095 r!12727))) b!5003394))

(assert (= (and b!5002631 ((_ is Star!13791) (regTwo!28095 r!12727))) b!5003395))

(assert (= (and b!5002631 ((_ is Union!13791) (regTwo!28095 r!12727))) b!5003396))

(check-sat (not b!5003327) (not b!5003272) (not bm!349213) (not b!5003237) (not d!1610224) (not b!5003379) (not b!5003300) (not b!5003297) (not b!5003234) (not b!5003233) (not d!1610362) (not d!1610390) (not d!1610370) (not bm!349177) (not b!5003365) (not d!1610290) (not b!5003001) (not b!5002951) (not d!1610410) (not d!1610302) (not b!5003361) (not b!5003302) (not d!1610314) (not b!5003279) (not bm!349223) (not b!5002851) (not b!5003378) (not d!1610276) (not b!5003337) (not b!5003299) (not b!5003381) (not b!5003168) (not b!5002950) (not d!1610286) (not d!1610232) (not b!5002635) (not d!1610398) (not b!5003396) (not b!5003369) (not b!5003215) (not b!5003293) (not b!5003230) (not b!5003277) (not b!5002945) (not b!5003382) (not d!1610328) (not d!1610338) (not d!1610406) (not b!5003363) (not bm!349206) (not b!5002885) (not b!5003239) (not d!1610388) (not d!1610228) (not b!5003298) (not b!5003019) (not b!5003192) (not d!1610292) (not b!5003225) (not b!5002886) (not b!5003328) (not b!5003285) (not b!5003292) (not b!5002949) (not d!1610404) (not b!5003022) (not b!5003275) (not b!5003177) (not b!5003243) (not b!5003193) (not bm!349220) (not b!5003165) (not b!5003269) (not d!1610306) (not b!5003391) (not b!5003333) (not setNonEmpty!28394) (not b!5002902) (not b!5003289) (not d!1610408) (not b!5003364) (not d!1610386) (not b!5002903) (not bm!349207) (not bm!349221) (not b!5003287) (not b!5003383) (not d!1610394) (not b!5003273) (not b!5002745) (not b!5003334) (not d!1610360) (not b!5003164) (not bm!349211) (not b!5003395) (not b!5002887) (not b!5003360) (not b!5002940) (not b!5003235) (not b!5003367) (not b!5002890) (not b!5003242) (not b!5003276) (not d!1610378) (not b!5003347) (not b!5002911) (not b!5003359) (not b!5003338) (not b!5003368) tp_is_empty!36579 (not b!5003394) (not d!1610294) (not b!5003388) (not bm!349226) (not b!5002900) (not d!1610282) (not d!1610372) (not b!5003296) (not b!5003217) (not d!1610274) (not b!5002905) (not d!1610364) (not b!5003018) (not d!1610288) (not b!5002954) (not bm!349208) (not bm!349160) (not b!5003336) (not b!5002883) (not b!5003340) (not b!5003020) (not bm!349210) (not b!5003274) (not b!5003231) (not b!5003222) (not b!5003002) (not d!1610402) (not b!5003390) (not d!1610270) (not b!5002955) (not b!5003288) (not bm!349209) (not b!5003241) (not d!1610304) (not bm!349212) (not b!5003236) (not d!1610272) (not d!1610396) (not b!5002891) (not b!5003221) (not d!1610300) (not d!1610400) (not d!1610374) (not b!5002941) (not b!5003194) (not b!5003380) (not b!5003196) (not b!5002644) (not b!5003392))
(check-sat)
