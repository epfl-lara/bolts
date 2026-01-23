; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527474 () Bool)

(assert start!527474)

(declare-fun b!4990912 () Bool)

(declare-fun e!3119452 () Bool)

(declare-datatypes ((C!27768 0))(
  ( (C!27769 (val!23250 Int)) )
))
(declare-datatypes ((List!57881 0))(
  ( (Nil!57757) (Cons!57757 (h!64205 C!27768) (t!370207 List!57881)) )
))
(declare-datatypes ((IArray!30617 0))(
  ( (IArray!30618 (innerList!15366 List!57881)) )
))
(declare-datatypes ((Conc!15278 0))(
  ( (Node!15278 (left!42247 Conc!15278) (right!42577 Conc!15278) (csize!30786 Int) (cheight!15489 Int)) (Leaf!25366 (xs!18604 IArray!30617) (csize!30787 Int)) (Empty!15278) )
))
(declare-datatypes ((BalanceConc!29986 0))(
  ( (BalanceConc!29987 (c!851383 Conc!15278)) )
))
(declare-datatypes ((tuple2!62864 0))(
  ( (tuple2!62865 (_1!34735 BalanceConc!29986) (_2!34735 BalanceConc!29986)) )
))
(declare-fun lt!2064536 () tuple2!62864)

(declare-fun isEmpty!31252 (BalanceConc!29986) Bool)

(assert (=> b!4990912 (= e!3119452 (not (isEmpty!31252 (_1!34735 lt!2064536))))))

(declare-fun b!4990914 () Bool)

(declare-fun e!3119453 () Bool)

(declare-datatypes ((tuple2!62866 0))(
  ( (tuple2!62867 (_1!34736 List!57881) (_2!34736 List!57881)) )
))
(declare-fun lt!2064546 () tuple2!62866)

(declare-fun isEmpty!31253 (List!57881) Bool)

(assert (=> b!4990914 (= e!3119453 (not (isEmpty!31253 (_1!34736 lt!2064546))))))

(declare-fun b!4990915 () Bool)

(declare-fun e!3119448 () Bool)

(declare-fun e!3119446 () Bool)

(assert (=> b!4990915 (= e!3119448 e!3119446)))

(declare-fun res!2130841 () Bool)

(assert (=> b!4990915 (=> (not res!2130841) (not e!3119446))))

(declare-fun lt!2064530 () List!57881)

(declare-fun lt!2064543 () List!57881)

(assert (=> b!4990915 (= res!2130841 (= lt!2064530 lt!2064543))))

(declare-fun lt!2064553 () List!57881)

(declare-fun lt!2064550 () List!57881)

(declare-fun ++!12603 (List!57881 List!57881) List!57881)

(assert (=> b!4990915 (= lt!2064530 (++!12603 lt!2064553 lt!2064550))))

(declare-fun list!18562 (BalanceConc!29986) List!57881)

(assert (=> b!4990915 (= lt!2064550 (list!18562 (_2!34735 lt!2064536)))))

(assert (=> b!4990915 (= lt!2064553 (list!18562 (_1!34735 lt!2064536)))))

(declare-datatypes ((Regex!13759 0))(
  ( (ElementMatch!13759 (c!851384 C!27768)) (Concat!22552 (regOne!28030 Regex!13759) (regTwo!28030 Regex!13759)) (EmptyExpr!13759) (Star!13759 (reg!14088 Regex!13759)) (EmptyLang!13759) (Union!13759 (regOne!28031 Regex!13759) (regTwo!28031 Regex!13759)) )
))
(declare-fun r!12727 () Regex!13759)

(declare-fun findLongestMatch!1772 (Regex!13759 List!57881) tuple2!62866)

(assert (=> b!4990915 (= lt!2064546 (findLongestMatch!1772 r!12727 lt!2064543))))

(declare-fun lt!2064537 () Int)

(declare-fun lt!2064549 () Int)

(declare-fun input!5597 () BalanceConc!29986)

(declare-fun size!38370 (BalanceConc!29986) Int)

(assert (=> b!4990915 (= lt!2064537 (- lt!2064549 (size!38370 input!5597)))))

(declare-fun totalInput!1012 () BalanceConc!29986)

(assert (=> b!4990915 (= lt!2064549 (size!38370 totalInput!1012))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!57882 0))(
  ( (Nil!57758) (Cons!57758 (h!64206 Regex!13759) (t!370208 List!57882)) )
))
(declare-datatypes ((Context!6368 0))(
  ( (Context!6369 (exprs!3684 List!57882)) )
))
(declare-fun z!4183 () (InoxSet Context!6368))

(declare-fun findLongestMatchZipperFastV2!61 ((InoxSet Context!6368) BalanceConc!29986 BalanceConc!29986) tuple2!62864)

(assert (=> b!4990915 (= lt!2064536 (findLongestMatchZipperFastV2!61 z!4183 input!5597 totalInput!1012))))

(declare-fun b!4990916 () Bool)

(declare-fun e!3119441 () Bool)

(declare-fun e!3119443 () Bool)

(assert (=> b!4990916 (= e!3119441 (not e!3119443))))

(declare-fun res!2130835 () Bool)

(assert (=> b!4990916 (=> res!2130835 e!3119443)))

(assert (=> b!4990916 (= res!2130835 e!3119452)))

(declare-fun res!2130837 () Bool)

(assert (=> b!4990916 (=> (not res!2130837) (not e!3119452))))

(declare-fun lt!2064541 () Bool)

(assert (=> b!4990916 (= res!2130837 (not lt!2064541))))

(declare-fun matchZipper!535 ((InoxSet Context!6368) List!57881) Bool)

(assert (=> b!4990916 (= lt!2064541 (matchZipper!535 z!4183 lt!2064553))))

(declare-fun e!3119444 () Bool)

(assert (=> b!4990916 e!3119444))

(declare-fun res!2130843 () Bool)

(assert (=> b!4990916 (=> res!2130843 e!3119444)))

(declare-fun lt!2064540 () tuple2!62866)

(assert (=> b!4990916 (= res!2130843 (isEmpty!31253 (_1!34736 lt!2064540)))))

(declare-fun findLongestMatchInner!1948 (Regex!13759 List!57881 Int List!57881 List!57881 Int) tuple2!62866)

(declare-fun size!38371 (List!57881) Int)

(assert (=> b!4990916 (= lt!2064540 (findLongestMatchInner!1948 r!12727 Nil!57757 (size!38371 Nil!57757) lt!2064543 lt!2064543 (size!38371 lt!2064543)))))

(declare-datatypes ((Unit!148883 0))(
  ( (Unit!148884) )
))
(declare-fun lt!2064532 () Unit!148883)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1909 (Regex!13759 List!57881) Unit!148883)

(assert (=> b!4990916 (= lt!2064532 (longestMatchIsAcceptedByMatchOrIsEmpty!1909 r!12727 lt!2064543))))

(declare-fun e!3119450 () Bool)

(assert (=> b!4990916 e!3119450))

(declare-fun res!2130845 () Bool)

(assert (=> b!4990916 (=> res!2130845 e!3119450)))

(declare-fun lt!2064548 () Int)

(assert (=> b!4990916 (= res!2130845 (= lt!2064548 0))))

(declare-fun findLongestMatchInnerZipperFastV2!99 ((InoxSet Context!6368) Int BalanceConc!29986 Int) Int)

(assert (=> b!4990916 (= lt!2064548 (findLongestMatchInnerZipperFastV2!99 z!4183 lt!2064537 totalInput!1012 lt!2064549))))

(declare-fun lt!2064534 () Unit!148883)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!26 ((InoxSet Context!6368) Int BalanceConc!29986) Unit!148883)

(assert (=> b!4990916 (= lt!2064534 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!26 z!4183 lt!2064537 totalInput!1012))))

(declare-fun lt!2064531 () List!57881)

(declare-fun isPrefix!5316 (List!57881 List!57881) Bool)

(declare-fun take!624 (List!57881 Int) List!57881)

(assert (=> b!4990916 (isPrefix!5316 (take!624 lt!2064531 lt!2064537) lt!2064531)))

(declare-fun lt!2064544 () Unit!148883)

(declare-fun lemmaTakeIsPrefix!118 (List!57881 Int) Unit!148883)

(assert (=> b!4990916 (= lt!2064544 (lemmaTakeIsPrefix!118 lt!2064531 lt!2064537))))

(declare-fun lt!2064538 () List!57881)

(assert (=> b!4990916 (isPrefix!5316 (_1!34736 lt!2064546) lt!2064538)))

(declare-fun lt!2064551 () Unit!148883)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3414 (List!57881 List!57881) Unit!148883)

(assert (=> b!4990916 (= lt!2064551 (lemmaConcatTwoListThenFirstIsPrefix!3414 (_1!34736 lt!2064546) (_2!34736 lt!2064546)))))

(assert (=> b!4990916 (isPrefix!5316 lt!2064553 lt!2064530)))

(declare-fun lt!2064554 () Unit!148883)

(assert (=> b!4990916 (= lt!2064554 (lemmaConcatTwoListThenFirstIsPrefix!3414 lt!2064553 lt!2064550))))

(declare-fun b!4990917 () Bool)

(declare-fun e!3119440 () Bool)

(declare-fun e!3119447 () Bool)

(assert (=> b!4990917 (= e!3119440 e!3119447)))

(declare-fun res!2130838 () Bool)

(assert (=> b!4990917 (=> (not res!2130838) (not e!3119447))))

(declare-datatypes ((List!57883 0))(
  ( (Nil!57759) (Cons!57759 (h!64207 Context!6368) (t!370209 List!57883)) )
))
(declare-fun lt!2064535 () List!57883)

(declare-fun unfocusZipper!286 (List!57883) Regex!13759)

(assert (=> b!4990917 (= res!2130838 (= (unfocusZipper!286 lt!2064535) r!12727))))

(declare-fun toList!8044 ((InoxSet Context!6368)) List!57883)

(assert (=> b!4990917 (= lt!2064535 (toList!8044 z!4183))))

(declare-fun b!4990918 () Bool)

(declare-fun drop!2422 (List!57881 Int) List!57881)

(assert (=> b!4990918 (= e!3119450 (matchZipper!535 z!4183 (take!624 (drop!2422 lt!2064531 lt!2064537) lt!2064548)))))

(declare-fun b!4990919 () Bool)

(declare-fun e!3119442 () Bool)

(declare-fun tp_is_empty!36515 () Bool)

(assert (=> b!4990919 (= e!3119442 tp_is_empty!36515)))

(declare-fun b!4990920 () Bool)

(declare-fun e!3119449 () Bool)

(declare-fun tp!1399175 () Bool)

(declare-fun inv!75803 (Conc!15278) Bool)

(assert (=> b!4990920 (= e!3119449 (and (inv!75803 (c!851383 input!5597)) tp!1399175))))

(declare-fun b!4990921 () Bool)

(declare-fun matchR!6731 (Regex!13759 List!57881) Bool)

(assert (=> b!4990921 (= e!3119444 (matchR!6731 r!12727 (_1!34736 lt!2064540)))))

(declare-fun b!4990922 () Bool)

(declare-fun tp!1399174 () Bool)

(declare-fun tp!1399182 () Bool)

(assert (=> b!4990922 (= e!3119442 (and tp!1399174 tp!1399182))))

(declare-fun b!4990923 () Bool)

(declare-fun e!3119451 () Bool)

(declare-fun e!3119438 () Bool)

(assert (=> b!4990923 (= e!3119451 e!3119438)))

(declare-fun res!2130839 () Bool)

(assert (=> b!4990923 (=> res!2130839 e!3119438)))

(declare-fun lt!2064545 () Int)

(declare-fun lt!2064529 () Int)

(assert (=> b!4990923 (= res!2130839 (or (> lt!2064545 lt!2064529) (> lt!2064529 lt!2064545)))))

(assert (=> b!4990923 (= lt!2064529 (size!38370 (_1!34735 lt!2064536)))))

(assert (=> b!4990923 (= lt!2064545 (size!38371 (_1!34736 lt!2064546)))))

(assert (=> b!4990923 (= (matchR!6731 r!12727 lt!2064553) lt!2064541)))

(declare-fun lt!2064547 () Unit!148883)

(declare-fun theoremZipperRegexEquiv!145 ((InoxSet Context!6368) List!57883 Regex!13759 List!57881) Unit!148883)

(assert (=> b!4990923 (= lt!2064547 (theoremZipperRegexEquiv!145 z!4183 lt!2064535 r!12727 lt!2064553))))

(declare-fun lt!2064552 () Bool)

(assert (=> b!4990923 (= lt!2064552 (matchZipper!535 z!4183 (_1!34736 lt!2064546)))))

(declare-fun lt!2064533 () Unit!148883)

(assert (=> b!4990923 (= lt!2064533 (theoremZipperRegexEquiv!145 z!4183 lt!2064535 r!12727 (_1!34736 lt!2064546)))))

(declare-fun b!4990924 () Bool)

(declare-fun e!3119445 () Bool)

(declare-fun tp!1399180 () Bool)

(assert (=> b!4990924 (= e!3119445 tp!1399180)))

(declare-fun b!4990925 () Bool)

(assert (=> b!4990925 (= e!3119447 e!3119448)))

(declare-fun res!2130834 () Bool)

(assert (=> b!4990925 (=> (not res!2130834) (not e!3119448))))

(declare-fun isSuffix!1325 (List!57881 List!57881) Bool)

(assert (=> b!4990925 (= res!2130834 (isSuffix!1325 lt!2064543 lt!2064531))))

(assert (=> b!4990925 (= lt!2064531 (list!18562 totalInput!1012))))

(assert (=> b!4990925 (= lt!2064543 (list!18562 input!5597))))

(declare-fun b!4990926 () Bool)

(declare-fun tp!1399177 () Bool)

(assert (=> b!4990926 (= e!3119442 tp!1399177)))

(declare-fun b!4990913 () Bool)

(assert (=> b!4990913 (= e!3119438 true)))

(assert (=> b!4990913 (= lt!2064550 (_2!34736 lt!2064546))))

(declare-fun lt!2064539 () Unit!148883)

(declare-fun lemmaSamePrefixThenSameSuffix!2540 (List!57881 List!57881 List!57881 List!57881 List!57881) Unit!148883)

(assert (=> b!4990913 (= lt!2064539 (lemmaSamePrefixThenSameSuffix!2540 lt!2064553 lt!2064550 (_1!34736 lt!2064546) (_2!34736 lt!2064546) lt!2064543))))

(assert (=> b!4990913 (= lt!2064553 (_1!34736 lt!2064546))))

(declare-fun lt!2064542 () Unit!148883)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1253 (List!57881 List!57881 List!57881) Unit!148883)

(assert (=> b!4990913 (= lt!2064542 (lemmaIsPrefixSameLengthThenSameList!1253 lt!2064553 (_1!34736 lt!2064546) lt!2064543))))

(declare-fun res!2130836 () Bool)

(assert (=> start!527474 (=> (not res!2130836) (not e!3119440))))

(declare-fun validRegex!6056 (Regex!13759) Bool)

(assert (=> start!527474 (= res!2130836 (validRegex!6056 r!12727))))

(assert (=> start!527474 e!3119440))

(assert (=> start!527474 e!3119442))

(declare-fun inv!75804 (BalanceConc!29986) Bool)

(assert (=> start!527474 (and (inv!75804 input!5597) e!3119449)))

(declare-fun condSetEmpty!28232 () Bool)

(assert (=> start!527474 (= condSetEmpty!28232 (= z!4183 ((as const (Array Context!6368 Bool)) false)))))

(declare-fun setRes!28232 () Bool)

(assert (=> start!527474 setRes!28232))

(declare-fun e!3119439 () Bool)

(assert (=> start!527474 (and (inv!75804 totalInput!1012) e!3119439)))

(declare-fun b!4990927 () Bool)

(assert (=> b!4990927 (= e!3119446 e!3119441)))

(declare-fun res!2130844 () Bool)

(assert (=> b!4990927 (=> (not res!2130844) (not e!3119441))))

(assert (=> b!4990927 (= res!2130844 (= lt!2064538 lt!2064543))))

(assert (=> b!4990927 (= lt!2064538 (++!12603 (_1!34736 lt!2064546) (_2!34736 lt!2064546)))))

(declare-fun b!4990928 () Bool)

(assert (=> b!4990928 (= e!3119443 e!3119451)))

(declare-fun res!2130840 () Bool)

(assert (=> b!4990928 (=> res!2130840 e!3119451)))

(assert (=> b!4990928 (= res!2130840 e!3119453)))

(declare-fun res!2130842 () Bool)

(assert (=> b!4990928 (=> (not res!2130842) (not e!3119453))))

(assert (=> b!4990928 (= res!2130842 (not lt!2064552))))

(assert (=> b!4990928 (= lt!2064552 (matchR!6731 r!12727 (_1!34736 lt!2064546)))))

(declare-fun setIsEmpty!28232 () Bool)

(assert (=> setIsEmpty!28232 setRes!28232))

(declare-fun b!4990929 () Bool)

(declare-fun tp!1399178 () Bool)

(assert (=> b!4990929 (= e!3119439 (and (inv!75803 (c!851383 totalInput!1012)) tp!1399178))))

(declare-fun setElem!28232 () Context!6368)

(declare-fun setNonEmpty!28232 () Bool)

(declare-fun tp!1399176 () Bool)

(declare-fun inv!75805 (Context!6368) Bool)

(assert (=> setNonEmpty!28232 (= setRes!28232 (and tp!1399176 (inv!75805 setElem!28232) e!3119445))))

(declare-fun setRest!28232 () (InoxSet Context!6368))

(assert (=> setNonEmpty!28232 (= z!4183 ((_ map or) (store ((as const (Array Context!6368 Bool)) false) setElem!28232 true) setRest!28232))))

(declare-fun b!4990930 () Bool)

(declare-fun tp!1399179 () Bool)

(declare-fun tp!1399181 () Bool)

(assert (=> b!4990930 (= e!3119442 (and tp!1399179 tp!1399181))))

(assert (= (and start!527474 res!2130836) b!4990917))

(assert (= (and b!4990917 res!2130838) b!4990925))

(assert (= (and b!4990925 res!2130834) b!4990915))

(assert (= (and b!4990915 res!2130841) b!4990927))

(assert (= (and b!4990927 res!2130844) b!4990916))

(assert (= (and b!4990916 (not res!2130845)) b!4990918))

(assert (= (and b!4990916 (not res!2130843)) b!4990921))

(assert (= (and b!4990916 res!2130837) b!4990912))

(assert (= (and b!4990916 (not res!2130835)) b!4990928))

(assert (= (and b!4990928 res!2130842) b!4990914))

(assert (= (and b!4990928 (not res!2130840)) b!4990923))

(assert (= (and b!4990923 (not res!2130839)) b!4990913))

(get-info :version)

(assert (= (and start!527474 ((_ is ElementMatch!13759) r!12727)) b!4990919))

(assert (= (and start!527474 ((_ is Concat!22552) r!12727)) b!4990922))

(assert (= (and start!527474 ((_ is Star!13759) r!12727)) b!4990926))

(assert (= (and start!527474 ((_ is Union!13759) r!12727)) b!4990930))

(assert (= start!527474 b!4990920))

(assert (= (and start!527474 condSetEmpty!28232) setIsEmpty!28232))

(assert (= (and start!527474 (not condSetEmpty!28232)) setNonEmpty!28232))

(assert (= setNonEmpty!28232 b!4990924))

(assert (= start!527474 b!4990929))

(declare-fun m!6023764 () Bool)

(assert (=> setNonEmpty!28232 m!6023764))

(declare-fun m!6023766 () Bool)

(assert (=> b!4990912 m!6023766))

(declare-fun m!6023768 () Bool)

(assert (=> b!4990916 m!6023768))

(declare-fun m!6023770 () Bool)

(assert (=> b!4990916 m!6023770))

(declare-fun m!6023772 () Bool)

(assert (=> b!4990916 m!6023772))

(declare-fun m!6023774 () Bool)

(assert (=> b!4990916 m!6023774))

(declare-fun m!6023776 () Bool)

(assert (=> b!4990916 m!6023776))

(declare-fun m!6023778 () Bool)

(assert (=> b!4990916 m!6023778))

(declare-fun m!6023780 () Bool)

(assert (=> b!4990916 m!6023780))

(declare-fun m!6023782 () Bool)

(assert (=> b!4990916 m!6023782))

(declare-fun m!6023784 () Bool)

(assert (=> b!4990916 m!6023784))

(declare-fun m!6023786 () Bool)

(assert (=> b!4990916 m!6023786))

(declare-fun m!6023788 () Bool)

(assert (=> b!4990916 m!6023788))

(assert (=> b!4990916 m!6023770))

(assert (=> b!4990916 m!6023768))

(declare-fun m!6023790 () Bool)

(assert (=> b!4990916 m!6023790))

(assert (=> b!4990916 m!6023772))

(declare-fun m!6023792 () Bool)

(assert (=> b!4990916 m!6023792))

(declare-fun m!6023794 () Bool)

(assert (=> b!4990916 m!6023794))

(declare-fun m!6023796 () Bool)

(assert (=> b!4990916 m!6023796))

(declare-fun m!6023798 () Bool)

(assert (=> b!4990923 m!6023798))

(declare-fun m!6023800 () Bool)

(assert (=> b!4990923 m!6023800))

(declare-fun m!6023802 () Bool)

(assert (=> b!4990923 m!6023802))

(declare-fun m!6023804 () Bool)

(assert (=> b!4990923 m!6023804))

(declare-fun m!6023806 () Bool)

(assert (=> b!4990923 m!6023806))

(declare-fun m!6023808 () Bool)

(assert (=> b!4990923 m!6023808))

(declare-fun m!6023810 () Bool)

(assert (=> b!4990913 m!6023810))

(declare-fun m!6023812 () Bool)

(assert (=> b!4990913 m!6023812))

(declare-fun m!6023814 () Bool)

(assert (=> b!4990928 m!6023814))

(declare-fun m!6023816 () Bool)

(assert (=> b!4990918 m!6023816))

(assert (=> b!4990918 m!6023816))

(declare-fun m!6023818 () Bool)

(assert (=> b!4990918 m!6023818))

(assert (=> b!4990918 m!6023818))

(declare-fun m!6023820 () Bool)

(assert (=> b!4990918 m!6023820))

(declare-fun m!6023822 () Bool)

(assert (=> start!527474 m!6023822))

(declare-fun m!6023824 () Bool)

(assert (=> start!527474 m!6023824))

(declare-fun m!6023826 () Bool)

(assert (=> start!527474 m!6023826))

(declare-fun m!6023828 () Bool)

(assert (=> b!4990915 m!6023828))

(declare-fun m!6023830 () Bool)

(assert (=> b!4990915 m!6023830))

(declare-fun m!6023832 () Bool)

(assert (=> b!4990915 m!6023832))

(declare-fun m!6023834 () Bool)

(assert (=> b!4990915 m!6023834))

(declare-fun m!6023836 () Bool)

(assert (=> b!4990915 m!6023836))

(declare-fun m!6023838 () Bool)

(assert (=> b!4990915 m!6023838))

(declare-fun m!6023840 () Bool)

(assert (=> b!4990915 m!6023840))

(declare-fun m!6023842 () Bool)

(assert (=> b!4990927 m!6023842))

(declare-fun m!6023844 () Bool)

(assert (=> b!4990917 m!6023844))

(declare-fun m!6023846 () Bool)

(assert (=> b!4990917 m!6023846))

(declare-fun m!6023848 () Bool)

(assert (=> b!4990920 m!6023848))

(declare-fun m!6023850 () Bool)

(assert (=> b!4990914 m!6023850))

(declare-fun m!6023852 () Bool)

(assert (=> b!4990929 m!6023852))

(declare-fun m!6023854 () Bool)

(assert (=> b!4990921 m!6023854))

(declare-fun m!6023856 () Bool)

(assert (=> b!4990925 m!6023856))

(declare-fun m!6023858 () Bool)

(assert (=> b!4990925 m!6023858))

(declare-fun m!6023860 () Bool)

(assert (=> b!4990925 m!6023860))

(check-sat (not b!4990912) (not b!4990917) (not start!527474) (not b!4990924) (not b!4990920) (not b!4990922) (not b!4990929) (not b!4990925) (not b!4990918) (not b!4990930) (not b!4990923) (not b!4990927) (not b!4990915) (not b!4990928) (not b!4990913) (not b!4990921) (not b!4990914) tp_is_empty!36515 (not b!4990916) (not b!4990926) (not setNonEmpty!28232))
(check-sat)
